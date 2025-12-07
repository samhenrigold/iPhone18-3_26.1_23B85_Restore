void sub_129018(uint64_t a1)
{
  v2 = objc_retainBlock(*(a1 + 40));
  if (v2)
  {
    v3 = v2;
    (*(v2 + 2))(v2, *(a1 + 32));
    v2 = v3;
  }
}

void sub_129200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_129218(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_129230(uint64_t a1)
{
  v2 = [*(a1 + 32) persistentStore];
  v16 = [v2 imageSetForIdentifier:*(a1 + 40)];

  v3 = v16;
  if (v16)
  {
    [v16 widthForAspectRatio];
    if (v4 <= 0.0)
    {
      v9 = 0;
    }

    else
    {
      [v16 heightForAspectRatio];
      v6 = v5;
      [v16 widthForAspectRatio];
      *&v8 = v6 / v7;
      v9 = [NSNumber numberWithFloat:v8];
    }

    v10 = [BICImageMetadata alloc];
    v11 = *(a1 + 40);
    v12 = [v16 imageColor];
    v13 = [(BICImageMetadata *)v10 initWithIdentifier:v11 intrinsicAspectRatio:v9 imageColor:v12];
    v14 = *(*(a1 + 48) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;

    [*(a1 + 32) _saveIfNeeded];
    v3 = v16;
  }
}

void sub_129428(uint64_t a1)
{
  v2 = [*(a1 + 32) persistentStore];
  v16 = [v2 imageSetForIdentifier:*(a1 + 40)];

  if (v16)
  {
    [v16 widthForAspectRatio];
    if (v3 <= 0.0)
    {
      v8 = 0;
    }

    else
    {
      [v16 heightForAspectRatio];
      v5 = v4;
      [v16 widthForAspectRatio];
      *&v7 = v5 / v6;
      v8 = [NSNumber numberWithFloat:v7];
    }

    v10 = [BICImageMetadata alloc];
    v11 = *(a1 + 40);
    v12 = [v16 imageColor];
    v13 = [(BICImageMetadata *)v10 initWithIdentifier:v11 intrinsicAspectRatio:v8 imageColor:v12];

    [*(a1 + 32) _saveIfNeeded];
    v14 = objc_retainBlock(*(a1 + 48));
    v15 = v14;
    if (v14)
    {
      (*(v14 + 2))(v14, v13);
    }
  }

  else
  {
    v9 = objc_retainBlock(*(a1 + 48));
    v8 = v9;
    if (v9)
    {
      (*(v9 + 2))(v9, 0);
    }
  }
}

void sub_129664(uint64_t a1)
{
  v2 = [*(a1 + 32) persistentStore];
  v5 = [v2 imageSetForIdentifier:*(a1 + 40)];

  v3 = objc_retainBlock(*(a1 + 48));
  if (v3)
  {
    v4 = [v5 imageColor];
    v3[2](v3, v4);
  }
}

void sub_1297D8(uint64_t a1)
{
  v2 = [*(a1 + 32) persistentStore];
  v3 = [v2 imageSetForIdentifier:*(a1 + 40)];

  [v3 setImageColorARGBHex:{objc_msgSend(*(a1 + 48), "bc_ARGBHexValue")}];
  [*(a1 + 32) _saveIfNeeded];
}

__CFString *BCAssetUTIForContentType(uint64_t a1)
{
  if (a1 <= 2)
  {
    if (a1 == 1)
    {
      v2 = &UTTypeEPUB;
    }

    else
    {
      if (a1 != 2)
      {
        v1 = 0;
        goto LABEL_14;
      }

      v2 = &UTTypeText;
    }

LABEL_13:
    v1 = [*v2 identifier];
    goto LABEL_14;
  }

  switch(a1)
  {
    case 3:
      v2 = &UTTypePDF;
      goto LABEL_13;
    case 4:
      v1 = @"com.apple.ibooks";
      break;
    case 6:
      v1 = @"com.apple.m4a-audio";
      break;
    default:
      v1 = 0;
      break;
  }

LABEL_14:

  return v1;
}

uint64_t BCAssetContentTypeFromAssetTypeString(void *a1)
{
  v1 = a1;
  if ([v1 caseInsensitiveCompare:@"epub"] && objc_msgSend(v1, "caseInsensitiveCompare:", @"ePubPictureBook"))
  {
    if ([v1 caseInsensitiveCompare:@"ibooks"])
    {
      if ([v1 caseInsensitiveCompare:@"pdf"])
      {
        if ([v1 caseInsensitiveCompare:@"audiobook"])
        {
          v2 = 0;
        }

        else
        {
          v2 = 6;
        }
      }

      else
      {
        v2 = 3;
      }
    }

    else
    {
      v2 = 4;
    }
  }

  else
  {
    v2 = 1;
  }

  return v2;
}

void sub_12BF8C(id a1)
{
  v1 = qword_345E60;
  qword_345E60 = &off_2EBEA0;
}

uint64_t BCAssetContentTypeFromBKAssetContentType(int a1)
{
  if ((a1 - 1) < 6)
  {
    return (a1 - 1) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_12C338(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

intptr_t sub_12C350(uint64_t a1)
{
  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v2 = [*(a1 + 32) ba_analyticsTracker];

    v3 = *(a1 + 32);
    if (v2)
    {
      v4 = *(*(a1 + 48) + 8);
      v5 = v3;
      v6 = *(v4 + 40);
      *(v4 + 40) = v5;
    }

    else
    {
      v7 = [v3 parentViewController];

      v8 = *(a1 + 32);
      if (v7)
      {
        v6 = [v8 parentViewController];
        v9 = [v6 _ba_effectiveViewControllerForAnalyticsTrackingIgnoringViewController:*(a1 + 32)];
        v10 = *(*(a1 + 48) + 8);
        v11 = *(v10 + 40);
        *(v10 + 40) = v9;
      }

      else
      {
        v12 = [v8 presentingViewController];

        if (!v12)
        {
          goto LABEL_16;
        }

        v13 = [*(a1 + 32) presentingViewController];
        v14 = [v13 bc_deepestVisibleChildViewControllerIncludePresented:0];
        v15 = v14;
        if (v14)
        {
          v16 = v14;
        }

        else
        {
          v16 = [*(a1 + 32) presentingViewController];
        }

        v6 = v16;

        objc_opt_class();
        v17 = [v6 presentedViewController];
        v18 = BUDynamicCast();

        if (v18 != *(a1 + 32))
        {
          v19 = [v18 topCardSetViewController];
          v20 = [v19 currentCardViewController];
          v21 = [v20 topContentViewController];

          v22 = [v21 _ba_effectiveViewControllerForAnalyticsTrackingIgnoringViewController:*(a1 + 32)];
          v23 = *(*(a1 + 48) + 8);
          v24 = *(v23 + 40);
          *(v23 + 40) = v22;
        }

        if (!*(*(*(a1 + 48) + 8) + 40))
        {
          v25 = [v6 _ba_effectiveViewControllerForAnalyticsTrackingIgnoringViewController:*(a1 + 32)];
          v26 = *(*(a1 + 48) + 8);
          v27 = *(v26 + 40);
          *(v26 + 40) = v25;
        }
      }
    }
  }

LABEL_16:
  v28 = *(a1 + 40);

  return dispatch_semaphore_signal(v28);
}

id _BCExternalURLOpenPrompterCreateCache()
{
  v0 = objc_alloc_init(NSCache);
  [v0 setTotalCostLimit:0x100000];

  return v0;
}

void sub_12CA7C(id a1)
{
  v1 = objc_alloc_init(BCExternalURLOpenPrompterContext);
  qword_345E78 = v1;

  _objc_release_x1(v1);
}

void sub_12CFA0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_12D08C;
  v11[3] = &unk_2CDA60;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v12 = v7;
  v13 = v8;
  v14 = v9;
  v15 = *(a1 + 64);
  v16 = v3;
  v10 = v3;
  [v4 _askUserIfShouldOpenURL:v5 promptContext:v6 completion:v11];
}

void sub_12D08C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) dummyCacheValue];
    [v4 setObject:v5 forKey:*(a1 + 48)];
  }

  v6 = objc_retainBlock(*(a1 + 56));
  v7 = v6;
  if (v6)
  {
    (*(v6 + 2))(v6, a2);
  }

  v8 = objc_retainBlock(*(a1 + 64));
  if (v8)
  {
    v9 = v8;
    v8[2]();
    v8 = v9;
  }
}

void sub_12D5EC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) bc_effectiveViewControllerForNavBarVisibility];
  v5 = [v4 bc_navBarVisible];
  if (v5 == [*(a1 + 32) isNavigationBarHidden])
  {
    if (v3 || *(a1 + 40) == 0.0)
    {
      [*(a1 + 32) setNavigationBarHidden:v5 ^ 1];
    }

    else
    {
      v11[0] = 0;
      v11[1] = v11;
      v11[2] = 0x3032000000;
      v11[3] = sub_12D780;
      v11[4] = sub_12D790;
      v12 = 0;
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_12D798;
      v7[3] = &unk_2CDAB8;
      v10 = v5;
      v8 = *(a1 + 32);
      v9 = v11;
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_12D8D8;
      v6[3] = &unk_2C99D8;
      v6[4] = v8;
      [UIView animateWithDuration:v7 animations:v6 completion:?];
      _Block_object_dispose(v11, 8);
    }
  }
}

uint64_t sub_12D780(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_12D798(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  if (v2 == 1)
  {

    return [v3 setNavigationBarHidden:0];
  }

  else
  {
    v5 = [v3 bc_navBarSnapshot];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    [*(*(*(a1 + 40) + 8) + 40) frame];
    x = v18.origin.x;
    y = v18.origin.y;
    width = v18.size.width;
    height = v18.size.height;
    v12 = CGRectGetHeight(v18);
    v19.origin.x = x;
    v19.origin.y = y;
    v19.size.width = width;
    v19.size.height = height;
    v13 = CGRectGetWidth(v19);
    v14 = [*(a1 + 32) view];
    [v14 addSubview:*(*(*(a1 + 40) + 8) + 40)];

    [*(a1 + 32) setNavigationBarHidden:1];
    [*(*(*(a1 + 40) + 8) + 40) setFrame:{0.0, -v12, v13, v12}];
    v15 = *(a1 + 32);
    v16 = *(*(*(a1 + 40) + 8) + 40);

    return [v15 _bc_setActiveNavBarSnapshot:v16];
  }
}

uint64_t sub_12DC0C(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  qword_345E88 = v1;

  return _objc_release_x1(v1);
}

void sub_12E06C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = [a3 namespaceIdentifier];
  [v3 refreshNamespace:v4];
}

void sub_12E2A8(uint64_t a1)
{
  v2 = [*(a1 + 32) _readFromCacheForNamespace:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 configuration];
    [*(a1 + 48) setConfiguration:v4];

    v5 = [v3 treatmentIDs];
    [*(a1 + 48) setTreatmentIDs:v5];

    v6 = [v3 segmentIDs];
    [*(a1 + 48) setSegmentIDs:v6];

    v7 = [v3 segmentSetIDs];
    [*(a1 + 48) setSegmentSetIDs:v7];
  }

  else
  {
    v7 = BRCConfigLog(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1EA63C(v7);
    }
  }

  v8 = [NSData dataWithContentsOfURL:*(a1 + 56)];
  v28 = 0;
  v9 = [NSJSONSerialization JSONObjectWithData:v8 options:0 error:&v28];
  v10 = v28;
  v12 = *(a1 + 32);
  v11 = *(a1 + 40);
  v29 = @"namespace";
  v30 = v11;
  v13 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
  [v12 _executeMonitorWithMessage:@"system defaults loaded" data:v13];

  v27 = v9;
  if (!v9 || v10)
  {
    v16 = BRCConfigLog(v14);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_1EA680((a1 + 56), v10, v16);
    }
  }

  else
  {
    v26 = *(a1 + 32);
    v15 = *(a1 + 48);
    v16 = [v9 valueForKeyPath:@"appConfigurationWrapper.configuration"];
    v17 = [*(a1 + 48) configuration];
    v18 = [*(a1 + 48) treatmentIDs];
    v19 = [*(a1 + 48) segmentIDs];
    [*(a1 + 48) segmentSetIDs];
    v21 = v20 = v8;
    v22 = 3;
    if (!v3)
    {
      v22 = 1;
    }

    [v26 _updateNamespace:v15 systemDefaults:v16 configuration:v17 treatmentIDs:v18 segmentIDs:v19 segmentSetIDs:v21 reason:v22];

    v8 = v20;
    v10 = 0;
  }

  v23 = [*(a1 + 32) cacheLoadedCondition];
  [v23 lock];

  if (([*(a1 + 32) cacheLoaded] & 1) == 0)
  {
    [*(a1 + 32) setCacheLoaded:1];
    v24 = [*(a1 + 32) cacheLoadedCondition];
    [v24 broadcast];
  }

  v25 = [*(a1 + 32) cacheLoadedCondition];
  [v25 unlock];
}

void sub_12E7F0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = (a1 + 32);
  v4 = [WeakRetained _namespaceNamed:*(a1 + 32)];
  if (v4)
  {
    v5 = objc_alloc_init(BRCSubscriber);
    [(BRCSubscriber *)v5 setObject:*(a1 + 40)];
    [(BRCSubscriber *)v5 setCallback:*(a1 + 56)];
    [(BRCSubscriber *)v5 setKeys:*(a1 + 48)];
    v6 = [v4 subscribers];
    [v6 addObject:v5];

    v7 = [v4 systemDefaults];
    if ([v7 count])
    {
    }

    else
    {
      v15 = [WeakRetained alwaysNotifyOnSubscribe];

      if ((v15 & 1) == 0)
      {
LABEL_9:

        goto LABEL_10;
      }
    }

    v16 = [v4 systemDefaults];
    v17 = [v4 configuration];
    v18 = [v4 treatmentIDs];
    v19 = [v4 segmentIDs];
    v20 = [v4 segmentSetIDs];
    [WeakRetained _updateNamespace:v4 systemDefaults:v16 configuration:v17 treatmentIDs:v18 segmentIDs:v19 segmentSetIDs:v20 reason:0];

    goto LABEL_9;
  }

  v8 = BRCConfigLog(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_1EA730(v3, v8, v9, v10, v11, v12, v13, v14);
  }

LABEL_10:
}

void sub_12EB10(id *a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    inited = objc_initWeak(&location, a1[4]);
    v5 = BRCConfigLog(inited);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "Fetching configuration from RC framework", buf, 2u);
    }

    v6 = [a1[4] remoteConfigurationManager];
    v7 = [a1[4] workerQueue];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_12ECC8;
    v17[3] = &unk_2CDB68;
    objc_copyWeak(&v21, &location);
    v18 = a1[5];
    v8 = a1[6];
    v9 = a1[4];
    v19 = v8;
    v20 = v9;
    [v6 fetchSingleConfigurationWithSettings:v3 completionQueue:v7 completion:v17];

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  else
  {
    v10 = BRCConfigLog(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1EA7A0(a1, v10, v11, v12, v13, v14, v15, v16);
    }
  }
}

void sub_12ECA0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_12ECC8(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v14 = *(a1 + 32);
    v39 = @"namespace";
    v40 = v14;
    v15 = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];
    [WeakRetained _executeMonitorWithMessage:@"refresh completed" data:v15];

    v17 = BRCConfigLog(v16);
    v18 = v17;
    if (!v9 || v12)
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_1EA878();
      }
    }

    else
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v38 = v10;
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_INFO, "RemoteConfigInfo: Server TreatementIDs: %@", buf, 0xCu);
      }

      v20 = BRCConfigLog(v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v38 = v11;
        _os_log_impl(&dword_0, v20, OS_LOG_TYPE_INFO, "RemoteConfigInfo: Server SegmentIDs: %@", buf, 0xCu);
      }

      v22 = BRCConfigLog(v21);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = [WeakRetained[4] stringForKey:@"BRCOverrideSegmentIDs"];
        *buf = 138412290;
        v38 = v23;
        _os_log_impl(&dword_0, v22, OS_LOG_TYPE_INFO, "RemoteConfigInfo: Local Override SegmentIDs: %@", buf, 0xCu);
      }

      v25 = BRCConfigLog(v24);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = [WeakRetained[4] stringForKey:@"BRCAdditionalSegmentIDs"];
        *buf = 138412290;
        v38 = v26;
        _os_log_impl(&dword_0, v25, OS_LOG_TYPE_INFO, "RemoteConfigInfo: Local Additional SegmentIDs: %@", buf, 0xCu);
      }

      v36 = 0;
      v27 = [NSJSONSerialization JSONObjectWithData:v9 options:0 error:&v36];
      v28 = v36;
      v18 = v28;
      if (v27)
      {
        v29 = [*(a1 + 40) copy];
        [v29 setConfiguration:v27];
        [v29 setSegmentIDs:v11];
        [*(a1 + 40) segmentSetIDs];
        v31 = v30 = v10;
        [v29 setSegmentSetIDs:v31];

        [v29 setTreatmentIDs:v30];
        [*(a1 + 48) _saveToCacheNamespaceData:v29 withNamespace:*(a1 + 32)];
        v32 = *(a1 + 40);
        v33 = [v32 systemDefaults];
        v34 = [*(a1 + 40) segmentSetIDs];
        v35 = v32;
        v10 = v30;
        v12 = 0;
        [WeakRetained _updateNamespace:v35 systemDefaults:v33 configuration:v27 treatmentIDs:v10 segmentIDs:v11 segmentSetIDs:v34 reason:2];
      }

      else
      {
        v29 = BRCConfigLog(v28);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          sub_1EA810();
        }
      }
    }
  }
}

void sub_12F170(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained jsSubscribers];
  [v1 removeAllObjects];

  [WeakRetained setMonitorCallback:0];
}

void sub_12F298(uint64_t a1, uint64_t a2, void *a3)
{
  v10[0] = @"treatments";
  v4 = a3;
  v5 = [v4 treatmentsAsStrings];
  v11[0] = v5;
  v10[1] = @"segments";
  v6 = [v4 segmentsAsStrings];
  v11[1] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:2];

  v8 = *(a1 + 32);
  v9 = [v4 namespaceIdentifier];

  [v8 setObject:v7 forKey:v9];
}

void sub_12F930(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = [a3 namespaceIdentifier];
  [v3 refreshNamespace:v4];
}

void sub_12FB44(uint64_t a1)
{
  v1 = a1;
  WeakRetained = objc_loadWeakRetained((a1 + 88));
  v44 = [*(v1 + 32) copy];
  [*(v1 + 32) setSystemDefaults:*(v1 + 40)];
  [*(v1 + 32) setConfiguration:*(v1 + 48)];
  [*(v1 + 32) setSegmentIDs:*(v1 + 56)];
  [*(v1 + 32) setSegmentSetIDs:*(v1 + 64)];
  [*(v1 + 32) setTreatmentIDs:*(v1 + 72)];
  v43 = WeakRetained;
  if (WeakRetained)
  {
    if ((*(*(v1 + 80) + 40) & 1) == 0)
    {
      *(*(v1 + 80) + 40) = [*(v1 + 48) count] != 0;
    }

    v3 = [v44 isEqual:*(v1 + 32)];
    v4 = *(v1 + 96);
    if (((v4 == 2) & ~v3) != 0 || v4 == 3)
    {
      os_unfair_lock_lock((*(v1 + 80) + 8));
      v5 = [WeakRetained[2] copy];
      os_unfair_lock_unlock((*(v1 + 80) + 8));
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v6 = v5;
      v7 = [v6 countByEnumeratingWithState:&v55 objects:v65 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v56;
        do
        {
          for (i = 0; i != v8; i = i + 1)
          {
            if (*v56 != v9)
            {
              objc_enumerationMutation(v6);
            }

            [*(*(&v55 + 1) + 8 * i) configurationManager:WeakRetained namespaceDataDidUpdateFrom:v44 to:*(v1 + 32)];
          }

          v8 = [v6 countByEnumeratingWithState:&v55 objects:v65 count:16];
        }

        while (v8);
      }
    }
  }

  v11 = objc_alloc_init(NSMutableDictionary);
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = [*(v1 + 32) subscribers];
  v39 = [obj countByEnumeratingWithState:&v51 objects:v64 count:16];
  if (v39)
  {
    v34 = 0;
    v37 = *v52;
    v36 = v11;
    do
    {
      for (j = 0; j != v39; j = j + 1)
      {
        if (*v52 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v51 + 1) + 8 * j);
        v14 = [v13 object];

        if (v14)
        {
          v40 = j;
          v15 = objc_alloc_init(NSMutableDictionary);
          v41 = objc_alloc_init(NSMutableDictionary);
          v16 = objc_alloc_init(NSMutableDictionary);
          v47 = 0u;
          v48 = 0u;
          v49 = 0u;
          v50 = 0u;
          v38 = v13;
          v42 = [v13 keys];
          v17 = [v42 countByEnumeratingWithState:&v47 objects:v63 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v48;
            do
            {
              for (k = 0; k != v18; k = k + 1)
              {
                if (*v48 != v19)
                {
                  objc_enumerationMutation(v42);
                }

                v21 = *(*(&v47 + 1) + 8 * k);
                v22 = [v43 _valueForKey:v21 fromNamespaceData:v44 source:0];
                v23 = v1;
                v24 = [v43 _valueForKey:v21 fromNamespaceData:*(v1 + 32) source:0];
                v25 = v24;
                if (v24 && ([v24 isEqual:v22] & 1) == 0)
                {
                  [v41 setObject:v25 forKey:v21];
                }

                [v15 setObject:v22 forKey:v21];
                [v16 setObject:v25 forKey:v21];

                v1 = v23;
              }

              v18 = [v42 countByEnumeratingWithState:&v47 objects:v63 count:16];
            }

            while (v18);
          }

          v61[0] = @"BRCDictionaryTypePrevious";
          v61[1] = @"BRCDictionaryTypeChanged";
          v62[0] = v15;
          v62[1] = v41;
          v61[2] = @"BRCDictionaryTypeCurrent";
          v62[2] = v16;
          v26 = [NSDictionary dictionaryWithObjects:v62 forKeys:v61 count:3];
          v11 = v36;
          [v36 addEntriesFromDictionary:v41];
          v27 = [v41 allKeys];
          v28 = [v27 count];

          if (v28)
          {
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_130128;
            block[3] = &unk_2C7BE8;
            block[4] = v38;
            v46 = v26;
            dispatch_async(&_dispatch_main_q, block);
          }

          j = v40;
        }

        else
        {
          v34 = 1;
        }
      }

      v39 = [obj countByEnumeratingWithState:&v51 objects:v64 count:16];
    }

    while (v39);
  }

  else
  {
    v34 = 0;
  }

  v29 = [v11 allKeys];
  v30 = [v29 count];

  if (v30)
  {
    v31 = *(v1 + 80);
    v59[0] = @"namespace";
    v32 = [*(v1 + 32) namespaceIdentifier];
    v59[1] = @"changed";
    v60[0] = v32;
    v60[1] = v11;
    v33 = [NSDictionary dictionaryWithObjects:v60 forKeys:v59 count:2];
    [v31 _executeMonitorWithMessage:@"data change detected" data:v33];
  }

  if (v34)
  {
    [*(v1 + 32) cleanupSubscribers];
  }
}

void sub_130128(uint64_t a1)
{
  v2 = [*(a1 + 32) object];

  if (v2)
  {
    v3 = [*(a1 + 32) callback];
    if (v3)
    {
      v6 = v3;
      v4 = [*(a1 + 32) keys];
      v5 = [v4 copy];
      v6[2](v6, v5, *(a1 + 40));

      v3 = v6;
    }
  }
}

void sub_130520(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained data];
  [v1 enumerateKeysAndObjectsUsingBlock:&stru_2CDBF8];
}

void sub_130580(id a1, NSString *a2, BRCNamespaceData *a3, BOOL *a4)
{
  v4 = [(BRCNamespaceData *)a3 subscribers];
  [v4 removeAllObjects];
}

void sub_1309EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak((v16 - 88));
  _Unwind_Resume(a1);
}

void sub_130A1C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained jsSubscribers];
  [v2 addObject:*(a1 + 32)];
}

uint64_t sub_130A7C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_130A94(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 objectForKey:@"BRCDictionaryTypeCurrent"];
  v7 = [v6 mutableCopy];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        v14 = [v7 objectForKey:{v13, v21}];
        v15 = [v14 object];

        if (v15)
        {
          [v14 object];
        }

        else
        {
          +[NSNull null];
        }
        v16 = ;
        [v7 setObject:v16 forKey:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v10);
  }

  v17 = [*(a1 + 32) jsBridge];
  v18 = *(a1 + 40);
  v19 = *(*(*(a1 + 48) + 8) + 40);
  v25[0] = v18;
  v25[1] = v8;
  v25[2] = v7;
  v20 = [NSArray arrayWithObjects:v25 count:3];
  [v17 enqueueValueCall:v19 arguments:v20 file:@"/Library/Caches/com.apple.xbs/Sources/Alder/frameworks/BookCore/BookCore/RemoteConfig/BRCConfigurationManager.m" line:589];
}

void sub_130D80(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained jsSubscribers];
  [v2 removeObject:*(a1 + 32)];
}

void sub_13102C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained data];
  v3 = [v2 objectForKey:*(a1 + 32)];

  if (v3)
  {
    v4 = objc_alloc_init(NSDictionary);
    [v3 setConfiguration:v4];
  }
}

id IMCommonCoreBundle(uint64_t a1)
{
  if (qword_345E98 != -1)
  {
    sub_1EAAF0();
  }

  v2 = qword_345E90;

  return v2;
}

void sub_131A18(id a1)
{
  v1 = [NSBundle bundleForClass:objc_opt_class()];
  qword_345E90 = v1;

  _objc_release_x1(v1);
}

uint64_t IMCommonCoreCFBundle(uint64_t a1, uint64_t a2)
{
  if (qword_345EA8 != -1)
  {
    sub_1EAB04();
  }

  return qword_345EA0;
}

void sub_131AAC(id a1)
{
  v3 = IMCommonCoreBundle(a1);
  v1 = [v3 bundleURL];

  if (v1)
  {
    v2 = [v3 bundleURL];
    qword_345EA0 = CFBundleCreate(0, v2);
  }
}

void sub_1324AC(id a1)
{
  v1 = [NSDictionary dictionaryWithContentsOfFile:@"/System/Library/CoreServices/SystemVersion.plist"];
  v6 = [v1 objectForKey:@"ProductVersion"];

  v2 = [v6 componentsSeparatedByString:@"."];
  if ([v2 count])
  {
    v3 = [v2 objectAtIndexedSubscript:0];
    dword_33EFC8 = [v3 intValue];
  }

  if ([v2 count] >= 2)
  {
    v4 = [v2 objectAtIndexedSubscript:1];
    dword_33EFCC = [v4 intValue];
  }

  if ([v2 count] >= 3)
  {
    v5 = [v2 objectAtIndexedSubscript:2];
    dword_345EB0 = [v5 intValue];
  }
}

void sub_132668(uint64_t a1)
{
  v9 = 0;
  v8 = 0;
  [objc_opt_class() _getSystemVersionMajor:&v9 + 4 minor:&v9 bugfix:&v8];
  if (v8)
  {
    v1 = [NSString alloc];
    v2 = [v1 initWithFormat:@"%d.%d.%d", HIDWORD(v9), v9, v8];
  }

  else
  {
    v3 = v9;
    v4 = [NSString alloc];
    if (v3)
    {
      v2 = [v4 initWithFormat:@"%d.%d", HIDWORD(v9), v9, v7];
    }

    else
    {
      v2 = [v4 initWithFormat:@"%d", HIDWORD(v9), v6, v7];
    }
  }

  v5 = qword_345EC0;
  qword_345EC0 = v2;
}

void sub_13276C(id a1)
{
  v11 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 8uLL, 0);
  if ([v11 count])
  {
    v1 = [v11 objectAtIndex:0];
  }

  else
  {
    v1 = 0;
  }

  v2 = [v1 stringByAppendingPathComponent:@"Frameworks"];
  v3 = [v2 stringByAppendingPathComponent:@"WebKit.framework"];

  v4 = [NSBundle bundleWithPath:v3];
  v5 = [v4 objectForInfoDictionaryKey:kCFBundleVersionKey];

  v6 = +[NSCharacterSet decimalDigitCharacterSet];
  v7 = [v6 invertedSet];
  v8 = [v5 rangeOfCharacterFromSet:v7];

  if (v8 < 4 || v8 == 0x7FFFFFFFFFFFFFFFLL && [v5 length] < 4)
  {
    v9 = v5;
  }

  else
  {
    v9 = [v5 substringFromIndex:1];
  }

  v10 = qword_345ED0;
  qword_345ED0 = v9;
}

void sub_132928(id a1)
{
  v3 = [NSDictionary dictionaryWithContentsOfFile:@"/System/Library/CoreServices/SystemVersion.plist"];
  v1 = [v3 objectForKey:@"ProductBuildVersion"];
  v2 = qword_345EE0;
  qword_345EE0 = v1;
}

uint64_t sub_133AA8(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  qword_345EF8 = v1;

  return _objc_release_x1(v1);
}

void sub_133D74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_133D9C(uint64_t a1)
{
  *(*(*(a1 + 56) + 8) + 24) = (*(*(a1 + 32) + 88) & 3) == 0;
  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    v4 = objc_opt_new();
    [v4 setCommit:*(a1 + 40)];
    [v4 setRollback:*(a1 + 48)];
    v3 = [*(a1 + 32) pending];
    [v3 addObject:v4];
  }
}

void sub_133FBC(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 72);
  if (!v2)
  {
    v3 = objc_opt_new();
    v4 = *(a1 + 32);
    v5 = *(v4 + 72);
    *(v4 + 72) = v3;

    v2 = *(*(a1 + 32) + 72);
  }

  v7 = [*(a1 + 40) copy];
  v6 = objc_retainBlock(v7);
  [v2 addObject:v6];
}

void sub_1341B4(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 80);
  if (!v2)
  {
    v3 = objc_opt_new();
    v4 = *(a1 + 32);
    v5 = *(v4 + 80);
    *(v4 + 80) = v3;

    v2 = *(*(a1 + 32) + 80);
  }

  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_134298;
  v12 = &unk_2C8790;
  v6 = *(a1 + 40);
  v13 = *(a1 + 32);
  v14 = v6;
  v7 = [&v9 copy];
  v8 = objc_retainBlock(v7);
  [v2 addObject:{v8, v9, v10, v11, v12}];
}

void sub_134428(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_134450(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(v1 + 88);
  if ((v2 & 1) == 0)
  {
    *(v1 + 88) = v2 | 1;
    *(*(*(result + 40) + 8) + 24) = 1;
  }

  return result;
}

void sub_134A24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_134A54(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[88])
  {
    v3 = [v2 pending];
    *(*(*(a1 + 40) + 8) + 24) = [v3 count] == 0;
  }
}

void sub_134D14(uint64_t a1, void *a2)
{
  v5 = a2;
  [*(a1 + 32) setTargetSceneController:?];
  v3 = objc_retainBlock(*(a1 + 40));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, v5);
  }
}

void sub_1355E0(uint64_t a1)
{
  v2 = [*(a1 + 32) pendingTransactions];
  [v2 addObject:*(a1 + 40)];
}

void sub_1356CC(uint64_t a1)
{
  if ((*(*(a1 + 32) + 8) & 1) == 0)
  {
    return;
  }

  v2 = objc_opt_new();
  v3 = [*(a1 + 32) activeTransaction];
  if (v3 == *(a1 + 40))
  {
    goto LABEL_8;
  }

  v4 = [*(a1 + 32) activeTransaction];
  v5 = [v4 context];
  v6 = [*(a1 + 40) context];

  if (v5 == v6)
  {
    v3 = [*(a1 + 32) activeTransaction];
    [*(a1 + 32) setActiveTransaction:0];
    if (v3)
    {
      v7 = [v3 sq_rollbacksToProcess];
      v8 = BCTransactionLog(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [v3 debugDescription];
        *buf = 138543618;
        v48 = v9;
        v49 = 2048;
        v50 = [v7 count];
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Preparing to cancel activeTransaction: %{public}@, processing (%ld) rollbacks", buf, 0x16u);
      }

      [v2 addObject:v3];
      v10 = [*(a1 + 32) blocksToProcess];
      [v10 addObjectsFromArray:v7];
    }

LABEL_8:
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v11 = [*(a1 + 32) pendingTransactions];
  v12 = [v11 countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (v12)
  {
    v14 = v12;
    v15 = *v42;
    *&v13 = 138543362;
    v36 = v13;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v42 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v41 + 1) + 8 * i);
        if (v17 != *(a1 + 40))
        {
          v18 = [*(*(&v41 + 1) + 8 * i) context];
          v19 = [*(a1 + 40) context];

          if (v18 == v19)
          {
            v21 = BCTransactionLog(v20);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              v22 = [v17 debugDescription];
              *buf = v36;
              v48 = v22;
              _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "Preparing to cancel pending transaction: %{public}@", buf, 0xCu);
            }

            [v2 addObject:v17];
          }
        }
      }

      v14 = [v11 countByEnumeratingWithState:&v41 objects:v46 count:16];
    }

    while (v14);
  }

  v23 = [*(a1 + 32) pendingTransactions];
  [v23 removeObjectsInArray:v2];

  v24 = [v2 count];
  if (v24)
  {
    v25 = BCTransactionLog(v24);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = [v2 componentsJoinedByString:{@", "}];
      v27 = [*(a1 + 40) debugDescription];
      *buf = 138543618;
      v48 = v26;
      v49 = 2114;
      v50 = v27;
      _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEFAULT, "Cancelling transactions [%{public}@] due to conflict with transaction: %{public}@", buf, 0x16u);
    }
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v28 = v2;
  v29 = [v28 countByEnumeratingWithState:&v37 objects:v45 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v38;
    do
    {
      for (j = 0; j != v30; j = j + 1)
      {
        if (*v38 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = *(*(&v37 + 1) + 8 * j);
        [v33 sq_cancel];
        v34 = [*(a1 + 32) blocksToProcess];
        v35 = [v33 sq_whenCancelledBlocks];
        [v34 addObjectsFromArray:v35];
      }

      v30 = [v28 countByEnumeratingWithState:&v37 objects:v45 count:16];
    }

    while (v30);
  }
}

void sub_135C3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_135C54(uint64_t a1)
{
  v2 = BCTransactionLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) debugDescription];
    v9 = 138543362;
    v10 = v3;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "_processTransaction transaction: %{public}@", &v9, 0xCu);
  }

  v4 = [*(a1 + 40) activeTransaction];
  *(*(*(a1 + 48) + 8) + 24) = v4 == *(a1 + 32);

  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    v5 = [*(a1 + 32) sq_whenCancelledBlocks];
    if ([v5 count])
    {
      v6 = [*(a1 + 40) blocksToProcess];
      [v6 addObjectsFromArray:v5];

      *(*(*(a1 + 48) + 8) + 24) = 1;
    }

    v7 = [*(a1 + 32) sq_whenCompletedBlocks];
    if ([v7 count])
    {
      v8 = [*(a1 + 40) blocksToProcess];
      [v8 addObjectsFromArray:v7];

      *(*(*(a1 + 48) + 8) + 24) = 1;
    }
  }
}

void sub_136058(uint64_t a1)
{
  do
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = sub_136270;
    v18 = sub_136280;
    v19 = 0;
    v1 = *(a1 + 32);
    v2 = *(v1 + 24);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_136288;
    block[3] = &unk_2CA7A8;
    block[4] = v1;
    block[5] = &v14;
    dispatch_sync(v2, block);
    v3 = [v15[5] count];
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v4 = v15[5];
    v5 = [v4 countByEnumeratingWithState:&v9 objects:v20 count:16];
    if (v5)
    {
      v6 = *v10;
      do
      {
        v7 = 0;
        do
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(v4);
          }

          (*(*(*(&v9 + 1) + 8 * v7) + 16))();
          v7 = v7 + 1;
        }

        while (v5 != v7);
        v5 = [v4 countByEnumeratingWithState:&v9 objects:v20 count:16];
      }

      while (v5);
    }

    _Block_object_dispose(&v14, 8);
  }

  while (v3);
}

void sub_136244(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_136270(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_136288(uint64_t a1)
{
  [*(a1 + 32) sq_removeFinishedTransactions];
  [*(a1 + 32) sq_activateTransactions];
  v2 = [*(a1 + 32) blocksToProcess];
  v3 = [*(a1 + 32) activeTransaction];
  v4 = [v3 sq_commitsToProcess];
  [v2 addObjectsFromArray:v4];

  v5 = [*(a1 + 32) blocksToProcess];
  v6 = [v5 copy];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = [*(a1 + 32) blocksToProcess];
  [v9 removeAllObjects];
}

uint64_t BCReadingStatisticsProtoTOCEntryReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v26) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26 & 0x7F) << v5;
        if ((v26 & 0x80) == 0)
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
      if ((v12 >> 3) == 3)
      {
        v26 = 0;
        v18 = [a2 position] + 8;
        if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 8, v19 <= objc_msgSend(a2, "length")))
        {
          v24 = [a2 data];
          [v24 getBytes:&v26 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v22 = v26;
        v23 = 16;
      }

      else
      {
        if (v13 != 2)
        {
          if (v13 == 1)
          {
            v14 = PBReaderReadString();
            v15 = *(a1 + 24);
            *(a1 + 24) = v14;
          }

          else
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }
          }

          goto LABEL_34;
        }

        v26 = 0;
        v16 = [a2 position] + 8;
        if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 8, v17 <= objc_msgSend(a2, "length")))
        {
          v21 = [a2 data];
          [v21 getBytes:&v26 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v22 = v26;
        v23 = 8;
      }

      *(a1 + v23) = v22;
LABEL_34:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_137308(uint64_t a1)
{
  v2 = [*(a1 + 32) taskIDs];
  v3 = [*(a1 + 32) identifiersByTaskID];
  v4 = [v2 objectEnumerator];
  v5 = [v4 nextObject];
  if (v5)
  {
    v7 = v5;
    *&v6 = 134218242;
    v17 = v6;
    do
    {
      v8 = [v7 unsignedIntegerValue];
      v9 = [v3 objectForKeyedSubscript:v7];
      v10 = BCIMLog(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = v17;
        v19 = v8;
        v20 = 2112;
        v21 = v9;
        _os_log_error_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "We should have released the background task assertion %lu for identifier %@.", buf, 0x16u);
      }

      v11 = +[UIApplication jsa_sharedApplicationIfNotExtension];
      [v11 endBackgroundTask:v8];

      v12 = [v4 nextObject];

      v7 = v12;
    }

    while (v12);
  }

  v13 = *(a1 + 32);
  v14 = *(v13 + 16);
  *(v13 + 16) = 0;

  v15 = *(a1 + 32);
  v16 = *(v15 + 24);
  *(v15 + 24) = 0;
}

void sub_1374FC(id a1)
{
  v1 = [[BCBackgroundTaskAssertion alloc] _init];
  qword_345F00 = v1;

  _objc_release_x1(v1);
}

void sub_1376B8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained dq_claimAssertionForIdentifier:*(a1 + 32) description:*(a1 + 40) signalBlock:*(a1 + 48)];
}

void sub_137850(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained dq_releaseAssertionForIdentifier:*(a1 + 32) signalBlock:*(a1 + 40)];
}

void sub_13796C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dq_releaseAssertionForTaskID:*(a1 + 40)];
}

void sub_137C30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_137C58(uint64_t a1)
{
  v2 = BCIMLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1EAF9C();
  }

  return [*(a1 + 40) _releaseAssertionForTaskID:*(*(*(a1 + 48) + 8) + 24)];
}

void sub_138514(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 16);
  *(v1 + 16) = 0;
}

void sub_1385B8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 24);
  *(v1 + 24) = 0;
}

void sub_138B7C(uint64_t a1)
{
  v1 = [*(a1 + 32) highlight];
  [v1 setAlpha:0.0];
}

id sub_13960C(uint64_t a1)
{
  [*(a1 + 32) updateScrollViewContent];
  v2 = *(a1 + 32);

  return [v2 p_revealTextViewCursorAnimated:1];
}

void sub_13AF28(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = [*(a1 + 32) scrollView];
  [v6 setContentInset:{v2, v3, v4, v5}];

  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = *(a1 + 64);
  v11 = [*(a1 + 32) scrollView];
  [v11 setScrollIndicatorInsets:{v7, v8, v9, v10}];
}

void sub_13B168(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = [*(a1 + 32) scrollView];
  [v6 setContentInset:{v2, v3, v4, v5}];

  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = *(a1 + 64);
  v11 = [*(a1 + 32) scrollView];
  [v11 setScrollIndicatorInsets:{v7, v8, v9, v10}];
}

uint64_t IMAccessibilityShouldPerformValidationChecks(uint64_t a1, uint64_t a2)
{
  if (qword_345F18 != -1)
  {
    sub_1EB088();
  }

  return byte_345F10;
}

uint64_t __IMAccessibilityHandleValidationErrorWithDescription(int a1, int a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  LODWORD(v10) = a1;
  v11 = a3;
  v12 = [[NSString alloc] initWithFormat:v11 arguments:&a9];

  NSLog(@"*** IMAccessibility validation error: %@", v12);
  if (v12)
  {
    v10 = v10;
  }

  else
  {
    v10 = 0;
  }

  if (v10 == 1 && a2 != 0)
  {
    if (qword_345F40 != -1)
    {
      sub_1EB100();
    }

    v10 = 0;
  }

  return v10;
}

uint64_t IMAccessibilityShouldCrashOnValidationErrorAfterLaunch(uint64_t a1)
{
  if (qword_345F38 != -1)
  {
    sub_1EB09C();
  }

  return byte_345F30;
}

uint64_t __IMAccessibilityPerformSafeBlock(void *a1)
{
  v1 = a1;
  v1[2]();

  return 0;
}

id __IMAccessibilityCastAsSafeCategory(void *a1, void *a2, int a3, char *a4)
{
  v7 = a2;
  if (!v7)
  {
    v19 = 0;
    goto LABEL_49;
  }

  v8 = [a1 imaxTargetClassName];
  v9 = v8;
  if (!a3)
  {
    if (v8 && NSClassFromString(v8) && (objc_opt_isKindOfClass() & 1) != 0)
    {
      goto LABEL_46;
    }

LABEL_47:
    v19 = 0;
    goto LABEL_48;
  }

  if (qword_345F18 != -1)
  {
    sub_1EB088();
  }

  if (byte_345F10 != 1 || v9)
  {
    goto LABEL_17;
  }

  if (qword_345F38 != -1)
  {
    sub_1EB09C();
  }

  v10 = byte_345F30;
  v11 = NSStringFromClass(a1);
  v17 = __IMAccessibilityHandleValidationErrorWithDescription(v10, 0, @"Couldn't find target class name for safe category class %@", v12, v13, v14, v15, v16, v11);

  if (v17)
  {
    if (!a4)
    {
      goto LABEL_52;
    }

    v18 = 1;
  }

  else
  {
LABEL_17:
    if (!a4)
    {
      goto LABEL_20;
    }

    v18 = 0;
  }

  *a4 = v18;
LABEL_20:
  if (!v9)
  {
    goto LABEL_47;
  }

  v20 = NSClassFromString(v9);
  if (qword_345F18 != -1)
  {
    sub_1EB088();
  }

  if (byte_345F10 != 1 || v20)
  {
    goto LABEL_30;
  }

  if (qword_345F38 != -1)
  {
    sub_1EB09C();
  }

  v21 = byte_345F30;
  v41 = NSStringFromClass(a1);
  v27 = __IMAccessibilityHandleValidationErrorWithDescription(v21, 0, @"Couldn't find target class named %@ for safe category class %@", v22, v23, v24, v25, v26, v9);

  if (v27)
  {
    if (!a4)
    {
      goto LABEL_52;
    }

    v28 = 1;
  }

  else
  {
LABEL_30:
    if (!a4)
    {
      goto LABEL_33;
    }

    v28 = 0;
  }

  *a4 = v28;
LABEL_33:
  if (!v20)
  {
    goto LABEL_47;
  }

  isKindOfClass = objc_opt_isKindOfClass();
  if (qword_345F18 != -1)
  {
    sub_1EB088();
  }

  if (!(isKindOfClass & 1 | ((byte_345F10 & 1) == 0)))
  {
    if (qword_345F38 != -1)
    {
      sub_1EB09C();
    }

    v30 = byte_345F30;
    v31 = objc_opt_class();
    v32 = NSStringFromClass(v31);
    v42 = NSStringFromClass(a1);
    v38 = __IMAccessibilityHandleValidationErrorWithDescription(v30, 0, @"Failed to cast object <%@: %p> as safe category %@", v33, v34, v35, v36, v37, v32);

    if (v38)
    {
      if (a4)
      {
        v39 = 1;
        goto LABEL_44;
      }

LABEL_52:
      abort();
    }
  }

  if (!a4)
  {
    goto LABEL_45;
  }

  v39 = 0;
LABEL_44:
  *a4 = v39;
LABEL_45:
  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_47;
  }

LABEL_46:
  v19 = v7;
LABEL_48:

LABEL_49:

  return v19;
}

id __IMAccessibilityCastAsClass(objc_class *a1, void *a2, int a3, char *a4)
{
  v7 = a2;
  if (!v7)
  {
    goto LABEL_16;
  }

  isKindOfClass = objc_opt_isKindOfClass();
  if (a3)
  {
    if (qword_345F18 != -1)
    {
      sub_1EB088();
    }

    if (isKindOfClass & 1 | ((byte_345F10 & 1) == 0))
    {
      goto LABEL_11;
    }

    if (qword_345F38 != -1)
    {
      sub_1EB09C();
    }

    v9 = byte_345F30;
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v21 = NSStringFromClass(a1);
    v17 = __IMAccessibilityHandleValidationErrorWithDescription(v9, 0, @"Failed to cast object <%@: %p> as class %@", v12, v13, v14, v15, v16, v11);

    if (!v17)
    {
LABEL_11:
      if (!a4)
      {
        goto LABEL_14;
      }

      v18 = 0;
    }

    else
    {
      if (!a4)
      {
        abort();
      }

      v18 = 1;
    }

    *a4 = v18;
  }

LABEL_14:
  if (isKindOfClass)
  {
    v19 = v7;
    goto LABEL_17;
  }

LABEL_16:
  v19 = 0;
LABEL_17:

  return v19;
}

id __IMAccessibilityCastAsProtocol(void *a1, void *a2, int a3, char *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = v8;
  if (!v8)
  {
    goto LABEL_16;
  }

  v10 = [v8 conformsToProtocol:v7];
  if (a3)
  {
    if (qword_345F18 != -1)
    {
      sub_1EB088();
    }

    if (v10 & 1 | ((byte_345F10 & 1) == 0))
    {
      goto LABEL_11;
    }

    if (qword_345F38 != -1)
    {
      sub_1EB09C();
    }

    v11 = byte_345F30;
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v23 = NSStringFromProtocol(v7);
    v19 = __IMAccessibilityHandleValidationErrorWithDescription(v11, 0, @"Failed to cast object <%@: %p> as protocol %@", v14, v15, v16, v17, v18, v13);

    if (!v19)
    {
LABEL_11:
      if (!a4)
      {
        goto LABEL_14;
      }

      v20 = 0;
    }

    else
    {
      if (!a4)
      {
        abort();
      }

      v20 = 1;
    }

    *a4 = v20;
  }

LABEL_14:
  if (v10)
  {
    v21 = v9;
    goto LABEL_17;
  }

LABEL_16:
  v21 = 0;
LABEL_17:

  return v21;
}

void IMAccessibilityInstallSafeCategory(void *a1)
{
  v8 = a1;
  v6 = NSClassFromString(v8);
  if (qword_345F18 != -1)
  {
    sub_1EB088();
  }

  if (byte_345F10 == 1 && v6 == 0)
  {
    if (qword_345F28 != -1)
    {
      sub_1EB128();
    }

    if (__IMAccessibilityHandleValidationErrorWithDescription(byte_345F20, 1, @"Failed installing safe category: %@ does not exist in runtime.", v1, v2, v3, v4, v5, v8))
    {
      abort();
    }
  }

  else if (v6)
  {
    [(objc_class *)v6 performSelector:"_imaxInitializeSafeCategory"];
  }
}

uint64_t IMAccessibilityShouldCrashOnValidationError(uint64_t a1)
{
  if (qword_345F28 != -1)
  {
    sub_1EB128();
  }

  return byte_345F20;
}

void IMAccessibilityInstallSafeCategories(void *a1)
{
  v1 = a1;
  v2 = [v1 count];
  if (v2)
  {
    __base = malloc_type_malloc(40 * v2, 0x800402FCC0CB6uLL);
    if (__base)
    {
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v42 = v1;
      v3 = v1;
      v4 = [v3 countByEnumeratingWithState:&v49 objects:v53 count:16];
      if (v4)
      {
        v5 = v4;
        v6 = 0;
        v7 = &qword_345000;
        v8 = *v50;
        v9 = &qword_345000;
        do
        {
          v10 = 0;
          v44 = v5;
          do
          {
            if (*v50 != v8)
            {
              objc_enumerationMutation(v3);
            }

            v11 = *(*(&v49 + 1) + 8 * v10);
            v17 = NSClassFromString(v11);
            if (v7[483] != -1)
            {
              sub_1EB0B0();
            }

            if (*(v9 + 3856) == 1 && v17 == 0)
            {
              if (qword_345F28 != -1)
              {
                sub_1EB13C();
              }

              if (__IMAccessibilityHandleValidationErrorWithDescription(byte_345F20, 1, @"Failed installing safe category: %@ does not exist in runtime.", v12, v13, v14, v15, v16, v11))
              {
LABEL_39:
                abort();
              }
            }

            else if (v17)
            {
              v19 = v8;
              v20 = v9;
              v21 = [(objc_class *)v17 imaxTargetClassName];
              v27 = NSClassFromString(v21);
              if (v7[483] != -1)
              {
                sub_1EB0B0();
              }

              if (*(v20 + 3856) != 1 || v27)
              {
                if (v27)
                {
                  v28 = v3;
                  v29 = v6;
                  v30 = &__base[40 * v6];
                  *v30 = v17;
                  objc_storeStrong(v30 + 1, v11);
                  v31 = sub_13D2B8(v17, v11);
                  v32 = v30[2];
                  v30[2] = v31;

                  v30[3] = v27;
                  v33 = sub_13D2B8(v27, v21);
                  v34 = v30[4];
                  v30[4] = v33;

                  v6 = v29 + 1;
                  v3 = v28;
                  v7 = &qword_345000;
                }
              }

              else
              {
                if (qword_345F28 != -1)
                {
                  sub_1EB13C();
                }

                if (__IMAccessibilityHandleValidationErrorWithDescription(byte_345F20, 1, @"Failed installing %@ on %@. %@ does not exist in runtime.", v22, v23, v24, v25, v26, v11))
                {
                  goto LABEL_39;
                }
              }

              v9 = v20;
              v8 = v19;
              v5 = v44;
            }

            v10 = v10 + 1;
          }

          while (v5 != v10);
          v5 = [v3 countByEnumeratingWithState:&v49 objects:v53 count:16];
        }

        while (v5);
      }

      else
      {
        v6 = 0;
      }

      v35 = objc_opt_new();
      v36 = objc_opt_new();
      v37 = objc_opt_new();
      __compar[0] = _NSConcreteStackBlock;
      __compar[1] = 3221225472;
      __compar[2] = sub_13D37C;
      __compar[3] = &unk_2CDDE8;
      v38 = v35;
      v46 = v38;
      v39 = v36;
      v47 = v39;
      v40 = v37;
      v48 = v40;
      qsort_b(__base, v6, 0x28uLL, __compar);
      if (v6)
      {
        v41 = __base;
        do
        {
          [*v41 _imaxInstallSafeCategoryOnClass:*(v41 + 3)];
          v41 += 40;
          --v6;
        }

        while (v6);
      }

      free(__base);

      v1 = v42;
    }
  }
}

id sub_13D2B8(void *a1, void *a2)
{
  v3 = a2;
  v4 = [[NSMutableString alloc] initWithString:v3];
  v5 = [a1 superclass];
  if (v5)
  {
    v6 = v5;
    do
    {
      [v4 insertString:@" atIndex:{", 0}];
      v7 = NSStringFromClass(v6);
      [v4 insertString:v7 atIndex:0];

      v6 = [(objc_class *)v6 superclass];
    }

    while (v6);
  }

  return v4;
}

uint64_t sub_13D37C(void *a1, void **a2, uint64_t a3)
{
  result = [a2[4] compare:*(a3 + 32)];
  if (!result)
  {
    if (sub_13D408(a2, a3, a1[4], a1[5], a1[6]))
    {
      return 1;
    }

    else if (sub_13D408(a3, a2, a1[4], a1[5], a1[6]))
    {
      return -1;
    }

    else
    {
      return [a2[2] compare:*(a3 + 16)];
    }
  }

  return result;
}

uint64_t sub_13D408(void **a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  sub_13F86C(*a1, v9, v10, v11);
  v12 = 0;
  while ([v9 count])
  {
    v13 = [v9 objectAtIndex:0];
    [v9 removeObjectAtIndex:0];
    [v11 addObject:v13];
    if ([(NSString *)v13 isEqualToString:*(a2 + 8)])
    {
      [v9 removeAllObjects];
      v12 = 1;
    }

    else
    {
      v14 = NSClassFromString(v13);
      sub_13F86C(v14, v9, v10, v11);
    }
  }

  [v11 removeAllObjects];

  return v12 & 1;
}

void sub_13DAA8(id a1)
{
  if ((byte_345F10 & 1) == 0)
  {
    v1 = sub_13DB2C();
    byte_345F10 = CFPreferencesGetAppBooleanValue(@"ReportValidationErrors", v1, 0) != 0;

    if ((byte_345F10 & 1) == 0)
    {
      if (qword_345F28 != -1)
      {
        sub_1EB128();
      }

      byte_345F10 = byte_345F20;
    }
  }
}

id sub_13DB2C()
{
  v0 = +[IMCommonCoreAccessibility sharedInstance];
  if ([v0 _imaxRespondsToSelector:"preferencesDomain" fromExtrasProtocol:&OBJC_PROTOCOL___IMCommonCoreAccessibilityExtras skipAssertions:1])
  {
    v1 = [v0 preferencesDomain];
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

void sub_13DBA8(id a1)
{
  if ((byte_345F20 & 1) == 0)
  {
    v1 = sub_13DB2C();
    byte_345F20 = CFPreferencesGetAppBooleanValue(@"CrashOnValidationErrors", v1, 0) != 0;
  }
}

void sub_13DC28(id a1)
{
  if (qword_345F28 != -1)
  {
    sub_1EB128();
  }

  byte_345F30 = byte_345F20;
}

void __IMAccessibilityValidateMethodSignature(void *a1, uint64_t a2, void *a3, objc_method *a4, const char *a5, uint64_t *a6)
{
  v10 = a1;
  v11 = a3;
  v31 = a6;
  if (a4)
  {
    v12 = method_copyReturnType(a4);
    if (qword_345F18 != -1)
    {
      sub_1EB088();
    }

    if (byte_345F10 == 1 && (sub_13DEE4(a5, v12) & 1) == 0)
    {
      if (qword_345F28 != -1)
      {
        sub_1EB128();
      }

      if (__IMAccessibilityHandleValidationErrorWithDescription(byte_345F20, 1, @"Return type is different for method: [%@ %@]. Actual: %s, Stated: %s", v13, v14, v15, v16, v17, v10))
      {
        goto LABEL_35;
      }
    }

    if (v12)
    {
      free(v12);
    }

    NumberOfArguments = method_getNumberOfArguments(a4);
    v24 = NumberOfArguments - 2;
    if (NumberOfArguments == 2)
    {
      v30 = 0;
    }

    else
    {
      v25 = NumberOfArguments;
      v26 = 2;
      while (1)
      {
        v27 = v31++;
        v28 = *v27;
        if (!*v27)
        {
          break;
        }

        v29 = method_copyArgumentType(a4, v26);
        if (qword_345F18 != -1)
        {
          sub_1EB0B0();
        }

        if (byte_345F10 == 1 && (sub_13DEE4(v28, v29) & 1) == 0)
        {
          if (qword_345F28 != -1)
          {
            sub_1EB13C();
          }

          if (__IMAccessibilityHandleValidationErrorWithDescription(byte_345F20, 1, @"Argument type is different for method: [%@ %@]. Actual: %s, Stated: %s", v19, v20, v21, v22, v23, v10))
          {
            goto LABEL_35;
          }
        }

        if (v29)
        {
          free(v29);
        }

        if (v25 == ++v26)
        {
          v30 = v24;
          goto LABEL_27;
        }
      }

      v30 = v26 - 2;
    }

LABEL_27:
    if (qword_345F18 != -1)
    {
      sub_1EB0B0();
    }

    if (v24 != v30 && (byte_345F10 & 1) != 0)
    {
      if (qword_345F28 != -1)
      {
        sub_1EB13C();
      }

      if (__IMAccessibilityHandleValidationErrorWithDescription(byte_345F20, 1, @"Argument count is different for method: [%@ %@]. Actual: %u, Stated: %u", v19, v20, v21, v22, v23, v10))
      {
LABEL_35:
        abort();
      }
    }
  }
}

uint64_t sub_13DEE4(const char *a1, char *__s2)
{
  v2 = 0;
  if (a1 && __s2)
  {
    if (!strcmp(a1, __s2))
    {
      return 1;
    }

    else
    {
      v5 = [[NSString alloc] initWithFormat:@"@%s", a1];
      v6 = v5;
      if (v5)
      {
        v2 = strcmp([v5 UTF8String], __s2) == 0;
      }

      else
      {
        v2 = 0;
      }
    }
  }

  return v2;
}

void __IMAccessibilityValidateSymbol(char *__symbol)
{
  if (!dlsym(&dword_8, __symbol))
  {
    v7 = dlsym(0xFFFFFFFFFFFFFFFELL, __symbol);
    if (qword_345F18 != -1)
    {
      sub_1EB088();
    }

    if (byte_345F10 == 1 && v7 == 0)
    {
      if (qword_345F28 != -1)
      {
        sub_1EB128();
      }

      if (__IMAccessibilityHandleValidationErrorWithDescription(byte_345F20, 1, @"Symbol not present: %s", v2, v3, v4, v5, v6, __symbol))
      {
        abort();
      }
    }
  }
}

void __IMAccessibilityValidateClassMethod(void *a1, void *a2)
{
  aClassName = a1;
  v3 = a2;
  v4 = NSClassFromString(aClassName);
  v5 = NSSelectorFromString(v3);
  ClassMethod = class_getClassMethod(v4, v5);
  if (qword_345F18 != -1)
  {
    sub_1EB088();
  }

  if (byte_345F10 == 1 && !ClassMethod)
  {
    if (qword_345F28 != -1)
    {
      sub_1EB128();
    }

    if (__IMAccessibilityHandleValidationErrorWithDescription(byte_345F20, 1, @"%@ Class method not present: %@", v6, v7, v8, v9, v10, aClassName))
    {
      abort();
    }
  }
}

void __IMAccessibilityValidateClassMethodComplete(void *a1, void *a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = a1;
  v12 = a2;
  v18 = NSClassFromString(v11);
  if (qword_345F18 != -1)
  {
    sub_1EB088();
  }

  if (byte_345F10 == 1 && v18 == 0)
  {
    if (qword_345F28 != -1)
    {
      sub_1EB128();
    }

    if (__IMAccessibilityHandleValidationErrorWithDescription(byte_345F20, 1, @"Class missing: %@", v13, v14, v15, v16, v17, v11))
    {
      goto LABEL_19;
    }
  }

  v20 = NSSelectorFromString(v12);
  ClassMethod = class_getClassMethod(v18, v20);
  if (qword_345F18 != -1)
  {
    sub_1EB088();
  }

  if (byte_345F10 == 1 && !ClassMethod)
  {
    if (qword_345F28 != -1)
    {
      sub_1EB128();
    }

    if (__IMAccessibilityHandleValidationErrorWithDescription(byte_345F20, 1, @"Class method missing: [%@ %@]", v22, v23, v24, v25, v26, v11))
    {
LABEL_19:
      abort();
    }
  }

  __IMAccessibilityValidateMethodSignature(v11, v21, v12, ClassMethod, a3, &a9);
}

void __IMAccessibilityValidateIsKindOfClass(void *a1, void *a2)
{
  aClassName = a1;
  v3 = a2;
  v4 = NSClassFromString(aClassName);
  v5 = NSClassFromString(v3);
  v11 = 0;
  if (v4)
  {
    v12 = v5;
    if (v5)
    {
      do
      {
        Superclass = class_getSuperclass(v4);
        v11 = Superclass == v12;
        if (!Superclass)
        {
          break;
        }

        v4 = Superclass;
      }

      while (Superclass != v12);
    }
  }

  if (qword_345F18 != -1)
  {
    sub_1EB088();
  }

  if (!v11 && (byte_345F10 & 1) != 0)
  {
    if (qword_345F28 != -1)
    {
      sub_1EB128();
    }

    if (__IMAccessibilityHandleValidationErrorWithDescription(byte_345F20, 1, @"%@ is not a kind of %@", v6, v7, v8, v9, v10, aClassName))
    {
      abort();
    }
  }
}

void __IMAccessibilityValidateIvarType(void *a1, const char *a2, const char *a3)
{
  v13 = a1;
  v5 = NSClassFromString(v13);
  InstanceVariable = class_getInstanceVariable(v5, a2);
  TypeEncoding = ivar_getTypeEncoding(InstanceVariable);
  if (qword_345F18 != -1)
  {
    sub_1EB088();
  }

  if (byte_345F10 == 1 && (sub_13DEE4(a3, TypeEncoding) & 1) == 0)
  {
    if (qword_345F28 != -1)
    {
      sub_1EB128();
    }

    if (__IMAccessibilityHandleValidationErrorWithDescription(byte_345F20, 1, @"%@ : Ivar is not the right type: %s [Should be: %s was: %s]", v8, v9, v10, v11, v12, v13))
    {
      abort();
    }
  }
}

void __IMAccessibilityValidateInstanceMethod(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = NSClassFromString(v3);
  v6 = NSSelectorFromString(v4);
  InstanceMethod = class_getInstanceMethod(v5, v6);
  outCount = 0;
  v8 = class_copyMethodList(v5, &outCount);
  if (v8)
  {
    if (outCount)
    {
      v14 = 1;
      v15 = v8;
      do
      {
        v17 = *v15++;
        v16 = v17;
        v18 = v17 == InstanceMethod;
        if (v14 >= outCount)
        {
          break;
        }

        ++v14;
      }

      while (v16 != InstanceMethod);
    }

    else
    {
      v18 = 0;
    }

    free(v8);
  }

  else
  {
    v18 = 0;
  }

  if (qword_345F18 != -1)
  {
    sub_1EB0B0();
  }

  if (!v18 && (byte_345F10 & 1) != 0)
  {
    if (qword_345F28 != -1)
    {
      sub_1EB13C();
    }

    if (__IMAccessibilityHandleValidationErrorWithDescription(byte_345F20, 1, @"%@ Instance method not present: %@", v9, v10, v11, v12, v13, v3))
    {
      abort();
    }
  }
}

void __IMAccessibilityValidateInstanceMethodComplete(void *a1, void *a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = a1;
  v12 = a2;
  v18 = NSClassFromString(v11);
  if (qword_345F18 != -1)
  {
    sub_1EB088();
  }

  if (byte_345F10 == 1 && v18 == 0)
  {
    if (qword_345F28 != -1)
    {
      sub_1EB128();
    }

    if (__IMAccessibilityHandleValidationErrorWithDescription(byte_345F20, 1, @"Class missing: %@", v13, v14, v15, v16, v17, v11))
    {
      goto LABEL_19;
    }
  }

  v20 = NSSelectorFromString(v12);
  InstanceMethod = class_getInstanceMethod(v18, v20);
  if (qword_345F18 != -1)
  {
    sub_1EB088();
  }

  if (byte_345F10 == 1 && !InstanceMethod)
  {
    if (qword_345F28 != -1)
    {
      sub_1EB128();
    }

    if (__IMAccessibilityHandleValidationErrorWithDescription(byte_345F20, 1, @"Instance method missing: [%@ %@]", v22, v23, v24, v25, v26, v11))
    {
LABEL_19:
      abort();
    }
  }

  __IMAccessibilityValidateMethodSignature(v11, v21, v12, InstanceMethod, a3, &a9);
}

void __IMAccessibilityValidateProperty(void *a1, const char *a2)
{
  v16 = a1;
  v8 = NSClassFromString(v16);
  if (qword_345F18 != -1)
  {
    sub_1EB088();
  }

  if (byte_345F10 == 1 && v8 == 0)
  {
    if (qword_345F28 != -1)
    {
      sub_1EB128();
    }

    if (__IMAccessibilityHandleValidationErrorWithDescription(byte_345F20, 1, @"Class missing: %@", v3, v4, v5, v6, v7, v16))
    {
      goto LABEL_21;
    }
  }

  Property = class_getProperty(v8, a2);
  if (qword_345F18 != -1)
  {
    sub_1EB088();
  }

  if (byte_345F10 == 1 && !Property)
  {
    if (qword_345F28 != -1)
    {
      sub_1EB128();
    }

    if (__IMAccessibilityHandleValidationErrorWithDescription(byte_345F20, 1, @"Property missing: %@.%s", v10, v11, v12, v13, v14, v16))
    {
LABEL_21:
      abort();
    }
  }
}

void __IMAccessibilityValidateClass(void *a1)
{
  v8 = a1;
  v1 = NSClassFromString(v8);
  Name = class_getName(v1);
  if (qword_345F18 != -1)
  {
    sub_1EB088();
  }

  if (byte_345F10 == 1 && !strcmp(Name, "nil"))
  {
    if (qword_345F28 != -1)
    {
      sub_1EB128();
    }

    if (__IMAccessibilityHandleValidationErrorWithDescription(byte_345F20, 1, @"Class not present: %@", v3, v4, v5, v6, v7, v8))
    {
      abort();
    }
  }
}

void __IMAccessibilityValidateIvar(void *a1, const char *a2)
{
  v11 = a1;
  v3 = NSClassFromString(v11);
  InstanceVariable = class_getInstanceVariable(v3, a2);
  if (qword_345F18 != -1)
  {
    sub_1EB088();
  }

  if (byte_345F10 == 1 && InstanceVariable == 0)
  {
    if (qword_345F28 != -1)
    {
      sub_1EB128();
    }

    if (__IMAccessibilityHandleValidationErrorWithDescription(byte_345F20, 1, @"%@ : Ivar not present: %s", v4, v5, v6, v7, v8, v11))
    {
      abort();
    }
  }
}

void __IMAccessibilityValidateProtocolProperty(void *a1, const char *a2)
{
  v11 = a1;
  v3 = NSProtocolFromString(v11);
  Property = protocol_getProperty(v3, a2, 0, 1);
  if (qword_345F18 != -1)
  {
    sub_1EB088();
  }

  if (byte_345F10 == 1 && Property == 0)
  {
    if (qword_345F28 != -1)
    {
      sub_1EB128();
    }

    if (__IMAccessibilityHandleValidationErrorWithDescription(byte_345F20, 1, @"%@ Protocol property not present: %s", v4, v5, v6, v7, v8, v11))
    {
      abort();
    }
  }
}

void __IMAccessibilityValidateProtocolMethod(void *a1, void *a2, BOOL a3, BOOL a4)
{
  namestr = a1;
  v7 = a2;
  v8 = NSProtocolFromString(namestr);
  v9 = NSSelectorFromString(v7);
  name = protocol_getMethodDescription(v8, v9, a3, a4).name;
  if (qword_345F18 != -1)
  {
    sub_1EB088();
  }

  if (byte_345F10 == 1 && !name)
  {
    if (qword_345F28 != -1)
    {
      sub_1EB128();
    }

    if (__IMAccessibilityHandleValidationErrorWithDescription(byte_345F20, 1, @"%@ Protocol %@ %@ method not present: %@", v10, v11, v12, v13, v14, namestr))
    {
      abort();
    }
  }
}

uint64_t __IMAccessibilityValidateBlockSignature(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10)
{
  v12 = a1;
  v18 = a2;
  v61 = v18;
  if (qword_345F18 != -1)
  {
    sub_1EB088();
  }

  if (byte_345F10 == 1 && (v18 = v61) == 0)
  {
    if (qword_345F38 != -1)
    {
      sub_1EB09C();
    }

    v19 = __IMAccessibilityHandleValidationErrorWithDescription(byte_345F30, 0, @"Reference block is NULL.", v13, v14, v15, v16, v17, v52);
    v18 = 0;
    if (!v12)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v19 = 0;
    if (!v12)
    {
      goto LABEL_28;
    }
  }

  if (!v61)
  {
    v18 = 0;
    goto LABEL_28;
  }

  v18 = v61;
  v20 = v12[2];
  v21 = *(v61 + 2);
  if (qword_345F18 != -1)
  {
    sub_1EB088();
  }

  if (byte_345F10 == 1 && (v20 & 0x40000000) == 0)
  {
    if (qword_345F38 != -1)
    {
      sub_1EB09C();
    }

    if (__IMAccessibilityHandleValidationErrorWithDescription(byte_345F30, 0, @"block has no signature.", v13, v14, v15, v16, v17, v52))
    {
      goto LABEL_14;
    }

    if (qword_345F18 != -1)
    {
      sub_1EB088();
    }
  }

  v22 = v21 & 0x40000000;
  if (byte_345F10 == 1 && !v22)
  {
    if (qword_345F38 != -1)
    {
      sub_1EB09C();
    }

    v23 = byte_345F30;
    v24 = @"reference block has no signature.";
LABEL_27:
    v19 = __IMAccessibilityHandleValidationErrorWithDescription(v23, 0, v24, v13, v14, v15, v16, v17, v52);
    goto LABEL_28;
  }

  v19 = 0;
  if ((v20 & 0x40000000) != 0 && v22)
  {
    v26 = v12[2];
    v27 = *(v61 + 2);
    v28 = *(v12 + 3);
    v29 = *(v61 + 3);
    if ((byte_345F10 & 1) != 0 && !v28)
    {
      if (qword_345F38 != -1)
      {
        sub_1EB09C();
      }

      if (__IMAccessibilityHandleValidationErrorWithDescription(byte_345F30, 0, @"block literal has no descriptor.", v13, v14, v15, v16, v17, v52))
      {
LABEL_14:
        v19 = 1;
        goto LABEL_28;
      }

      if (qword_345F18 != -1)
      {
        sub_1EB088();
      }
    }

    if (byte_345F10 == 1 && !v29)
    {
      if (qword_345F38 != -1)
      {
        sub_1EB09C();
      }

      v23 = byte_345F30;
      v24 = @"reference block literal has no descriptor.";
      goto LABEL_27;
    }

    v19 = 0;
    if (v28 && v29)
    {
      v30 = 32;
      if ((v26 & 0x2000000) != 0)
      {
        v31 = 32;
      }

      else
      {
        v31 = 16;
      }

      v32 = *(v28 + v31);
      if ((v27 & 0x2000000) == 0)
      {
        v30 = 16;
      }

      v33 = *(v29 + v30);
      if ([a3 isEqual:objc_opt_class()])
      {
        v34 = 0;
      }

      else
      {
        v34 = objc_opt_new();
        if ([a3 isSubclassOfClass:objc_opt_class()])
        {
          [v34 addObject:a3];
        }

        v60 = &a10;
        while (([a9 isEqual:objc_opt_class()] & 1) == 0)
        {
          if ([a9 isSubclassOfClass:objc_opt_class()])
          {
            [v34 addObject:a9];
          }

          v51 = v60++;
          a9 = *v51;
        }
      }

      v54 = v34;
      if ([v34 count])
      {
        v53 = v12;
        v35 = [[NSMutableString alloc] initWithUTF8String:v33];
        v56 = 0u;
        v57 = 0u;
        v58 = 0u;
        v59 = 0u;
        obj = v34;
        v36 = [obj countByEnumeratingWithState:&v56 objects:v62 count:16];
        if (v36)
        {
          v37 = v36;
          v38 = *v57;
          do
          {
            for (i = 0; i != v37; i = i + 1)
            {
              if (*v57 != v38)
              {
                objc_enumerationMutation(obj);
              }

              v40 = *(*(&v56 + 1) + 8 * i);
              v41 = [[NSString alloc] initWithFormat:@"@%s", class_getName(v40)];
              v42 = [NSString alloc];
              v43 = [(objc_class *)v40 imaxTargetClassName];
              v44 = [v42 initWithFormat:@"@%@", v43];

              [v35 replaceOccurrencesOfString:v41 withString:v44 options:0 range:{0, objc_msgSend(v35, "length")}];
            }

            v37 = [obj countByEnumeratingWithState:&v56 objects:v62 count:16];
          }

          while (v37);
        }

        v33 = [v35 UTF8String];
        v12 = v53;
      }

      if (qword_345F18 != -1)
      {
        sub_1EB0B0();
      }

      if (byte_345F10 != 1 || !strcmp(v32, v33))
      {
        v19 = 0;
      }

      else
      {
        if (qword_345F38 != -1)
        {
          sub_1EB0D8();
        }

        v19 = __IMAccessibilityHandleValidationErrorWithDescription(byte_345F30, 0, @"Signature mismatch for block: '%s'; reference signature: '%s'", v45, v46, v47, v48, v49, v32);
      }

      v18 = v61;
    }
  }

LABEL_28:

  return v19;
}

objc_ivar *__imax_verbose_encode_with_type_encoding_group_class(objc_class *a1, const char *a2)
{
  result = class_getInstanceVariable(a1, a2);
  if (result)
  {

    return ivar_getTypeEncoding(result);
  }

  return result;
}

id __IMAccessibilityGetAssociatedBool(void *a1, const void *a2)
{
  v2 = objc_getAssociatedObject(a1, a2);
  v3 = [v2 BOOLValue];

  return v3;
}

void __IMAccessibilitySetAssociatedBool(void *a1, const void *a2, int a3)
{
  object = a1;
  if (a3)
  {
    v5 = [NSNumber numberWithBool:1];
  }

  else
  {
    v5 = 0;
  }

  objc_setAssociatedObject(object, a2, v5, &dword_0 + 1);
}

id __IMAccessibilityGetAssociatedInteger(void *a1, const void *a2)
{
  v2 = objc_getAssociatedObject(a1, a2);
  v3 = [v2 integerValue];

  return v3;
}

void __IMAccessibilitySetAssociatedInteger(void *a1, const void *a2, void *a3)
{
  object = a1;
  if (a3)
  {
    a3 = [NSNumber numberWithInteger:a3];
  }

  objc_setAssociatedObject(object, a2, a3, &dword_0 + 1);
}

id __IMAccessibilityGetAssociatedUnsignedInteger(void *a1, const void *a2)
{
  v2 = objc_getAssociatedObject(a1, a2);
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

void __IMAccessibilitySetAssociatedUnsignedInteger(void *a1, const void *a2, void *a3)
{
  object = a1;
  if (a3)
  {
    a3 = [NSNumber numberWithUnsignedInteger:a3];
  }

  objc_setAssociatedObject(object, a2, a3, &dword_0 + 1);
}

id __IMAccessibilityGetAssociatedRange(void *a1, const void *a2)
{
  v2 = objc_getAssociatedObject(a1, a2);
  v3 = v2;
  if (v2)
  {
    v4 = [v2 rangeValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __IMAccessibilitySetAssociatedRange(void *a1, const void *a2, uint64_t a3, uint64_t a4)
{
  object = a1;
  if (a3 | a4)
  {
    v7 = [NSValue valueWithRange:a3, a4];
  }

  else
  {
    v7 = 0;
  }

  objc_setAssociatedObject(object, a2, v7, &dword_0 + 1);
}

double __IMAccessibilityGetAssociatedTimeInterval(void *a1, const void *a2)
{
  v2 = objc_getAssociatedObject(a1, a2);
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

void __IMAccessibilitySetAssociatedTimeInterval(void *a1, const void *a2, double a3)
{
  object = a1;
  if (a3 == 0.0)
  {
    v5 = 0;
  }

  else
  {
    v5 = [[NSNumber alloc] initWithDouble:a3];
  }

  objc_setAssociatedObject(object, a2, v5, &dword_0 + 1);
}

double __IMAccessibilityGetAssociatedCGFloat(void *a1, const void *a2)
{
  v2 = objc_getAssociatedObject(a1, a2);
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

void __IMAccessibilitySetAssociatedCGFloat(void *a1, const void *a2, double a3)
{
  object = a1;
  if (a3 == 0.0)
  {
    v5 = 0;
  }

  else
  {
    v5 = [NSNumber numberWithDouble:a3];
  }

  objc_setAssociatedObject(object, a2, v5, &dword_0 + 1);
}

double __IMAccessibilityGetAssociatedCGPoint(void *a1, const void *a2)
{
  v2 = objc_getAssociatedObject(a1, a2);
  v3 = v2;
  if (v2)
  {
    [v2 CGPointValue];
    x = v4;
  }

  else
  {
    x = CGPointZero.x;
  }

  return x;
}

void __IMAccessibilitySetAssociatedCGPoint(void *a1, const void *a2, double a3, double a4)
{
  object = a1;
  if (a3 == CGPointZero.x && a4 == CGPointZero.y)
  {
    v8 = 0;
  }

  else
  {
    v8 = [NSValue valueWithCGPoint:a3, a4];
  }

  objc_setAssociatedObject(object, a2, v8, &dword_0 + 1);
}

double __IMAccessibilityGetAssociatedCGRect(void *a1, const void *a2)
{
  v2 = objc_getAssociatedObject(a1, a2);
  v3 = v2;
  if (v2)
  {
    [v2 CGRectValue];
    x = v4;
  }

  else
  {
    x = CGRectZero.origin.x;
  }

  return x;
}

void __IMAccessibilitySetAssociatedCGRect(void *a1, const void *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  object = a1;
  v15.origin.x = CGRectZero.origin.x;
  v15.origin.y = CGRectZero.origin.y;
  v15.size.width = CGRectZero.size.width;
  v15.size.height = CGRectZero.size.height;
  v14.origin.x = a3;
  v14.origin.y = a4;
  v14.size.width = a5;
  v14.size.height = a6;
  if (CGRectEqualToRect(v14, v15))
  {
    v11 = 0;
  }

  else
  {
    v11 = [NSValue valueWithCGRect:a3, a4, a5, a6];
  }

  objc_setAssociatedObject(object, a2, v11, &dword_0 + 1);
}

void sub_13F86C(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  [a1 imaxAddSafeCategoryDependenciesToCollection:v8];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v16 + 1) + 8 * i);
        if (([v9 containsObject:{v15, v16}] & 1) == 0 && (objc_msgSend(v7, "containsObject:", v15) & 1) == 0)
        {
          [v7 addObject:v15];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v12);
  }

  [v10 removeAllObjects];
}

void sub_140060(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 128));
  _Block_object_dispose((v2 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_1400A4(uint64_t a1)
{
  v2 = [*(a1 + 32) imagesProcessing];
  *(*(*(a1 + 48) + 8) + 24) = [v2 containsObject:*(a1 + 40)];
}

void sub_140104(uint64_t a1)
{
  v2 = [*(a1 + 32) imagesProcessing];
  [v2 addObject:*(a1 + 40)];
}

void sub_140158(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  [BICCacheStats logOperation:BICCacheStatsOperationTransformQueueEnd[0] forRequest:*(a1 + 32)];
  [BICCacheStats logOperation:BICCacheStatsOperationTransformStart[0] forRequest:*(a1 + 32)];
  kdebug_trace();
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v8 = [WeakRetained transformer];
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1402E4;
  v11[3] = &unk_2CDEB0;
  v12 = v9;
  objc_copyWeak(&v15, (a1 + 64));
  v13 = *(a1 + 32);
  v14 = *(a1 + 56);
  [v8 transformSource:v12 to:v10 completion:v11];

  objc_destroyWeak(&v15);
}

void sub_1402E4(uint64_t a1, void *a2)
{
  v3 = a2;
  [BICCacheStats logDescribedImage:*(a1 + 32) withComment:@"CacheTransformBefore"];
  [BICCacheStats logDescribedImage:v3 withComment:@"CacheTransformAfter"];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [(os_unfair_lock_s *)WeakRetained _transformCompleteSource:*(a1 + 32) to:v3 forRequest:*(a1 + 40)];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_140410;
    v6[3] = &unk_2C7BE8;
    v7 = v5;
    v8 = *(a1 + 48);
    os_unfair_lock_lock(v5 + 2);
    sub_140410(v6);
    os_unfair_lock_unlock(v5 + 2);
  }

  kdebug_trace();
}

void sub_140410(uint64_t a1)
{
  v2 = [*(a1 + 32) imagesProcessing];
  [v2 removeObject:*(a1 + 40)];
}

void BCMergeProtoAnnotationIntoAEAnnotation(void *a1, void *a2, void *a3)
{
  v57 = a1;
  v5 = a2;
  v6 = a3;
  v7 = [v57 annotationAssetID];
  if (!v7 || (v8 = v7, [v57 annotationModificationDate], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "timeIntervalSinceReferenceDate"), v11 = v10, objc_msgSend(v5, "modificationDate"), v13 = v12, v9, v8, v11 < v13))
  {
    v14 = [v5 creatorIdentifier];
    [v57 setDifferentString:v14 forKey:@"annotationCreatorIdentifier"];

    v15 = [v5 uuid];
    [v57 setDifferentString:v15 forKey:@"annotationUuid"];

    if ([v5 deleted])
    {
      [v57 setDifferentString:&stru_2D2930 forKey:@"annotationAssetID"];
      [v57 setDifferentDate:0 forKey:@"annotationCreationDate"];
      if (([v57 isAnnotationDeleted] & 1) == 0)
      {
        [v57 setAnnotationDeleted:1];
      }

      if ([v57 annotationIsUnderline])
      {
        [v57 setAnnotationIsUnderline:0];
      }

      [v57 setDifferentString:0 forKey:@"annotationLocation"];
      [v57 setDifferentString:0 forKey:@"annotationNote"];
      [v57 setDifferentString:0 forKey:@"annotationRepresentativeText"];
      [v57 setDifferentString:0 forKey:@"annotationSelectedText"];
      if ([v57 annotationStyle])
      {
        [v57 setAnnotationStyle:0];
      }

      if ([v57 annotationType])
      {
        [v57 setAnnotationType:0];
      }

      [v57 setDifferentString:0 forKey:@"physicalPageNumber"];
      [v57 setDifferentString:0 forKey:@"annotationVersion"];
      [v57 setDifferentString:0 forKey:@"assetVersion"];
      [v57 setDifferentString:0 forKey:@"attachments"];
      [v57 setDifferentString:0 forKey:@"chapterTitle"];
      [v57 setAnnotationSelectedTextRange:{0x7FFFFFFFFFFFFFFFLL, 0}];
      [v57 readingProgressHighWaterMark];
      if (v16 != 0.0)
      {
        [v57 setReadingProgressHighWaterMark:0.0];
      }

      if ([v57 spineIndexUpdated])
      {
        [v57 setSpineIndexUpdated:0];
      }

      [v57 readingProgress];
      if (v17 != 0.0)
      {
        [v57 setReadingProgress:0.0];
      }

      [v57 setDifferentString:0 forKey:@"futureProofing11"];
      [v57 setDifferentString:0 forKey:@"futureProofing12"];
      [v57 setDifferentNumber:0 forKey:@"plAbsolutePhysicalLocation"];
      [v57 setDifferentNumber:0 forKey:@"plLocationRangeEnd"];
      [v57 setDifferentNumber:0 forKey:@"plLocationRangeStart"];
      [v57 setDifferentString:0 forKey:@"plStorageUUID"];
      [v57 setDifferentObject:0 forKey:@"plUserData"];
      [v57 setDifferentDate:0 forKey:@"annotationModificationDate"];
      [v57 setDifferentDate:0 forKey:@"userModificationDate"];
      [v57 setDifferentDate:0 forKey:@"locationModificationDate"];
    }

    else
    {
      [v57 setDifferentString:v6 forKey:@"annotationAssetID"];
      [v5 creationDate];
      v18 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
      [v57 setDifferentDate:v18 forKey:@"annotationCreationDate"];

      v19 = [v5 creatorIdentifier];
      [v57 setDifferentString:v19 forKey:@"annotationCreatorIdentifier"];

      LODWORD(v19) = [v57 isAnnotationDeleted];
      if (v19 != [v5 deleted])
      {
        [v57 setAnnotationDeleted:{objc_msgSend(v5, "deleted")}];
      }

      v20 = [v57 annotationIsUnderline];
      if (v20 != [v5 isUnderline])
      {
        [v57 setAnnotationIsUnderline:{objc_msgSend(v5, "isUnderline")}];
      }

      v21 = [v5 locationCFIString];
      [v57 setDifferentString:v21 forKey:@"annotationLocation"];

      v22 = [v5 note];
      [v57 setDifferentString:v22 forKey:@"annotationNote"];

      v23 = [v5 representativeText];
      [v57 setDifferentString:v23 forKey:@"annotationRepresentativeText"];

      v24 = [v5 selectedText];
      [v57 setDifferentString:v24 forKey:@"annotationSelectedText"];

      LODWORD(v24) = [v57 annotationStyle];
      if (v24 != [v5 style])
      {
        [v57 setAnnotationStyle:{objc_msgSend(v5, "style")}];
      }

      v25 = [v57 annotationType];
      if (v25 != [v5 type])
      {
        [v57 setAnnotationType:{objc_msgSend(v5, "type")}];
      }

      v26 = [v5 uuid];
      [v57 setDifferentString:v26 forKey:@"annotationUuid"];

      v27 = [v5 physicalPageNumber];
      [v57 setDifferentString:v27 forKey:@"physicalPageNumber"];

      v28 = [v5 annotationVersion];
      [v57 setDifferentString:v28 forKey:@"annotationVersion"];

      v29 = [v5 assetVersion];
      [v57 setDifferentString:v29 forKey:@"assetVersion"];

      v30 = [v5 attachments];
      [v57 setDifferentString:v30 forKey:@"attachments"];

      v31 = [v5 chapterTitle];
      [v57 setDifferentString:v31 forKey:@"chapterTitle"];

      if ([v5 hasSelectedTextRange])
      {
        v32 = [v5 selectedTextRange];
        v33 = [v32 location];
        v34 = [v5 selectedTextRange];
        v35 = [v34 length];
      }

      else
      {
        v35 = 0;
        v33 = 0x7FFFFFFFFFFFFFFFLL;
      }

      if ([v57 annotationSelectedTextRange] != v33 || v36 != v35)
      {
        [v57 setAnnotationSelectedTextRange:{v33, v35}];
      }

      [v57 readingProgressHighWaterMark];
      v38 = v37;
      [v5 readingProgressHighWaterMark];
      if (v38 != v39 && vabdd_f64(v38, v39) >= fabs(v39 * 0.000000999999997))
      {
        [v5 readingProgressHighWaterMark];
        *&v41 = BCFloatClampedToUnitIntervalOrNegativeOne(v40);
        [v57 setReadingProgressHighWaterMark:v41];
      }

      v42 = [v57 spineIndexUpdated];
      if (v42 != [v5 spineIndexUpdated])
      {
        [v57 setSpineIndexUpdated:{objc_msgSend(v5, "spineIndexUpdated")}];
      }

      [v57 readingProgress];
      v44 = v43;
      [v5 readingProgress];
      if (v44 != v45 && vabdd_f64(v44, v45) >= fabs(v45 * 0.000000999999997))
      {
        [v5 readingProgress];
        BCFloatAssertUnitIntervalClamp(v46);
        [v57 setReadingProgress:?];
      }

      v47 = [v5 futureProofing11];
      [v57 setDifferentString:v47 forKey:@"futureProofing11"];

      v48 = [v5 futureProofing12];
      [v57 setDifferentString:v48 forKey:@"futureProofing12"];

      v49 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v5 plAbsolutePhysicalLocation]);
      [v57 setDifferentNumber:v49 forKey:@"plAbsolutePhysicalLocation"];

      v50 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v5 plLocationRangeEnd]);
      [v57 setDifferentNumber:v50 forKey:@"plLocationRangeEnd"];

      v51 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v5 plLocationRangeStart]);
      [v57 setDifferentNumber:v51 forKey:@"plLocationRangeStart"];

      v52 = [v5 plLocationStorageUUID];
      [v57 setDifferentString:v52 forKey:@"plStorageUUID"];

      v53 = [v5 plUserData];
      [v57 setDifferentObject:v53 forKey:@"plUserData"];
    }

    [v5 modificationDate];
    v54 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
    [v57 setDifferentDate:v54 forKey:@"annotationModificationDate"];

    if ([v5 hasUserModificationDate])
    {
      [v5 userModificationDate];
      v55 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
      [v57 setDifferentDate:v55 forKey:@"userModificationDate"];
    }

    if ([v5 hasLocationModificationDate])
    {
      [v5 locationModificationDate];
      v56 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
      [v57 setDifferentDate:v56 forKey:@"locationModificationDate"];
    }
  }
}

void sub_141650(uint64_t a1)
{
  v3 = +[AEAnnotationProvider sharedInstance];
  v1 = [objc_alloc(objc_opt_class()) initWithAnnotationProvider:v3];
  v2 = qword_345F50;
  qword_345F50 = v1;
}

void sub_141BC8(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v47 = a2;
  v45 = a4;
  v53 = objc_opt_new();
  v48 = objc_opt_new();
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v46 = a1;
  obj = *(a1 + 32);
  v6 = [obj countByEnumeratingWithState:&v71 objects:v83 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v72;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v72 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v71 + 1) + 8 * i);
        v11 = objc_opt_new();
        v12 = [PBDataReader alloc];
        v13 = [v10 bookAnnotations];
        v14 = [v12 initWithData:v13];

        v15 = BCAnnotationsProtoBookReadFrom();
        if (v15)
        {
          v16 = [v10 assetID];
          [v53 setObject:v11 forKeyedSubscript:v16];

          v17 = [v10 assetID];
          v18 = [v48 objectForKeyedSubscript:v17];

          if (!v18)
          {
            v18 = +[NSMutableSet set];
            v19 = [v10 assetID];
            [v48 setObject:v18 forKeyedSubscript:v19];
          }

          [v18 addObject:v10];
        }

        else
        {
          v18 = BCCloudKitLog(v15);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            sub_1EB164(v81, v10, &v82, v18);
          }
        }
      }

      v7 = [obj countByEnumeratingWithState:&v71 objects:v83 count:16];
    }

    while (v7);
  }

  [v47 setCloudVersion:{objc_msgSend(*(v46 + 40), "cloudVersion")}];
  v20 = [*(v46 + 40) historyToken];
  [v47 setHistoryToken:v20];

  [v47 setHistoryTokenOffset:{objc_msgSend(*(v46 + 40), "historyTokenOffset")}];
  v21 = +[NSMutableDictionary dictionary];
  v22 = +[NSMutableDictionary dictionary];
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v51 = v53;
  v50 = [v51 countByEnumeratingWithState:&v67 objects:v80 count:16];
  if (v50)
  {
    v49 = *v68;
    do
    {
      v23 = 0;
      do
      {
        if (*v68 != v49)
        {
          objc_enumerationMutation(v51);
        }

        v54 = v23;
        v24 = *(*(&v67 + 1) + 8 * v23);
        v25 = [v51 objectForKeyedSubscript:v24];
        v63 = 0u;
        v64 = 0u;
        v65 = 0u;
        v66 = 0u;
        v52 = v25;
        v26 = [v25 annotations];
        v27 = [v26 countByEnumeratingWithState:&v63 objects:v79 count:16];
        if (v27)
        {
          v28 = v27;
          v29 = *v64;
          do
          {
            v30 = 0;
            do
            {
              if (*v64 != v29)
              {
                objc_enumerationMutation(v26);
              }

              v31 = *(*(&v63 + 1) + 8 * v30);
              if (([v31 hasLocationCFIString] & 1) != 0 || (objc_msgSend(v31, "hasPlUserData") & 1) != 0 || (v32 = objc_msgSend(v31, "deleted"), v32))
              {
                v33 = [v31 uuid];
                [v21 setObject:v31 forKeyedSubscript:v33];

                v34 = [v31 uuid];
                [v22 setObject:v24 forKeyedSubscript:v34];
              }

              else
              {
                v34 = BCCloudKitLog(v32);
                if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
                {
                  v35 = [v31 uuid];
                  v36 = [v31 type];
                  *buf = 138412546;
                  v76 = v35;
                  v77 = 1024;
                  v78 = v36;
                  _os_log_error_impl(&dword_0, v34, OS_LOG_TYPE_ERROR, "Not merging protoAnnotation %@ of type %d with no CFI location, no user data, and not deleted.", buf, 0x12u);
                }
              }

              v30 = v30 + 1;
            }

            while (v28 != v30);
            v37 = [v26 countByEnumeratingWithState:&v63 objects:v79 count:16];
            v28 = v37;
          }

          while (v37);
        }

        v23 = v54 + 1;
      }

      while ((v54 + 1) != v50);
      v50 = [v51 countByEnumeratingWithState:&v67 objects:v80 count:16];
    }

    while (v50);
  }

  v38 = [*(v46 + 48) annotationProvider];
  v39 = [v21 allKeys];
  v56[0] = _NSConcreteStackBlock;
  v56[1] = 3221225472;
  v56[2] = sub_1421D8;
  v56[3] = &unk_2CDF00;
  v57 = v21;
  v58 = v22;
  v40 = *(v46 + 48);
  v59 = v48;
  v60 = v40;
  v61 = v45;
  v62 = *(v46 + 56);
  v41 = v45;
  v42 = v48;
  v43 = v22;
  v44 = v21;
  [v38 modifyAnnotationsWithUUIDs:v39 type:2 performBlock:v56];
}

void sub_1421D8(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v8 = [v6 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v34;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v34 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v33 + 1) + 8 * i);
        v13 = [v12 annotationUuid];
        v14 = [*(a1 + 32) objectForKeyedSubscript:v13];
        v15 = [*(a1 + 40) objectForKeyedSubscript:v13];
        BCMergeProtoAnnotationIntoAEAnnotation(v12, v14, v15);
      }

      v9 = [v6 countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v9);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v16 = *(a1 + 48);
  v17 = [v16 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v30;
    do
    {
      for (j = 0; j != v18; j = j + 1)
      {
        if (*v30 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v29 + 1) + 8 * j);
        v22 = *(a1 + 56);
        v23 = [*(a1 + 48) objectForKeyedSubscript:v21];
        [v22 _acknowledgeMergingCloudAnnotations:v23 forAssetID:v21];
      }

      v18 = [v16 countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v18);
  }

  v24 = objc_retainBlock(v7);
  v25 = v24;
  if (v24)
  {
    (*(v24 + 2))(v24);
  }

  v26 = objc_retainBlock(*(a1 + 64));
  v27 = v26;
  if (v26)
  {
    (*(v26 + 2))(v26);
  }

  if (*(a1 + 72) == 1)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_14249C;
    block[3] = &unk_2C7D40;
    block[4] = *(a1 + 56);
    dispatch_async(&_dispatch_main_q, block);
  }
}

void sub_142898(uint64_t a1, void *a2)
{
  v3 = a2;
  v48 = v3;
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = +[NSSet set];
  }

  v5 = v4;
  v6 = [*(a1 + 32) mutableCopy];
  v7 = [NSPredicate predicateWithFormat:@"self isKindOfClass: %@ AND annotationType != %d", objc_opt_class(), 3];
  [v6 filterUsingPredicate:v7];

  v8 = [v6 valueForKey:@"annotationAssetID"];
  if ([v8 count])
  {
    v9 = [*(a1 + 40) annotationProvider];
    v53[0] = _NSConcreteStackBlock;
    v53[1] = 3221225472;
    v53[2] = sub_142E90;
    v53[3] = &unk_2CDF50;
    v10 = *(a1 + 40);
    v56 = *(a1 + 48);
    v53[4] = v10;
    v54 = v8;
    v55 = v5;
    [v9 performBlockOnUserSideQueue:v53];
  }

  v47 = a1;
  v11 = [*(a1 + 32) mutableCopy];
  v12 = [NSPredicate predicateWithFormat:@"self isKindOfClass: %@ AND annotationType == %d AND annotationDeleted == 0", objc_opt_class(), 3];
  [v11 filterUsingPredicate:v12];

  v13 = +[NSMutableArray array];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v14 = v11;
  v15 = [v14 countByEnumeratingWithState:&v49 objects:v61 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v50;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v50 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v49 + 1) + 8 * i);
        v20 = [v19 annotationAssetID];
        if ([v5 containsObject:v20])
        {

LABEL_14:
          v23 = BCCloudKitLog(v21);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
          {
            v24 = [v19 annotationAssetID];
            v25 = [v19 avoidSync];
            *buf = 138412546;
            v58 = v24;
            v59 = 1024;
            LODWORD(v60) = v25;
            _os_log_impl(&dword_0, v23, OS_LOG_TYPE_INFO, "Skipping synchronizaiton of #globalAnnotation %@: avoidSync:%d", buf, 0x12u);
          }

          goto LABEL_19;
        }

        v22 = [v19 avoidSync];

        if (v22)
        {
          goto LABEL_14;
        }

        v26 = BCCloudKitLog(v21);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v27 = [v19 annotationLocation];
          [v19 annotationAssetID];
          v28 = v14;
          v30 = v29 = v13;
          *buf = 138412546;
          v58 = v27;
          v59 = 2112;
          v60 = v30;
          _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEFAULT, "Synchronizing #globalAnnotation location:%@ for assetID: %@", buf, 0x16u);

          v13 = v29;
          v14 = v28;
        }

        v23 = objc_opt_new();
        v31 = [v19 annotationAssetID];
        [v23 setAssetID:v31];

        v32 = [v19 annotationLocation];
        [v23 setReadingPositionCFIString:v32];

        [v19 readingProgress];
        BCFloatAssertUnitIntervalClamp(v33);
        [v23 setReadingProgress:?];
        [v19 readingProgressHighWaterMark];
        *&v35 = BCFloatClampedToUnitIntervalOrNegativeOne(v34);
        [v23 setReadingProgressHighWaterMark:v35];
        v36 = [v19 annotationLocation];
        [v23 setReadingPositionCFIString:v36];

        v37 = [v19 physicalPageNumber];
        [v23 setReadingPositionPhysicalPageNumber:v37];

        v38 = [v19 annotationVersion];
        [v23 setReadingPositionAnnotationVersion:v38];

        v39 = [v19 assetVersion];
        [v23 setReadingPositionAssetVersion:v39];

        v40 = [v19 plUserData];
        [v23 setReadingPositionUserData:v40];

        v41 = [v19 plLocationRangeStart];
        -[NSObject setReadingPositionLocationRangeStart:](v23, "setReadingPositionLocationRangeStart:", [v41 intValue]);

        v42 = [v19 plLocationRangeEnd];
        -[NSObject setReadingPositionLocationRangeEnd:](v23, "setReadingPositionLocationRangeEnd:", [v42 intValue]);

        v43 = [v19 plAbsolutePhysicalLocation];
        -[NSObject setReadingPositionAbsolutePhysicalLocation:](v23, "setReadingPositionAbsolutePhysicalLocation:", [v43 intValue]);

        v44 = [v19 plStorageUUID];
        [v23 setReadingPositionStorageUUID:v44];

        v45 = [v19 locationModificationDate];
        [v23 setReadingPositionUserUpdatedDate:v45];

        [v13 addObject:v23];
LABEL_19:
      }

      v16 = [v14 countByEnumeratingWithState:&v49 objects:v61 count:16];
    }

    while (v16);
  }

  if ([v13 count])
  {
    v46 = [*(v47 + 40) delegate];
    [v46 updateAssetDetailsWithGlobalAnnotations:v13 completion:0];
  }
}

void sub_142E90(id *a1, uint64_t a2)
{
  v3 = [a1[7] _cloudSyncVersionsForDataType:@"BCAssetAnnotations" inContext:a2];
  [v3 setLocalVersion:{objc_msgSend(v3, "localVersion") + 1}];
  v4 = [v3 localVersion];
  v5 = [a1[4] assetIDsOfAssetsToSyncQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_142F90;
  v8[3] = &unk_2CBC58;
  v9 = a1[5];
  v6 = a1[6];
  v7 = a1[4];
  v10 = v6;
  v11 = v7;
  v12 = v4;
  dispatch_async(v5, v8);
}

void sub_142F90(uint64_t a1)
{
  v3 = [*(a1 + 32) mutableCopy];
  [v3 minusSet:*(a1 + 40)];
  v2 = [*(a1 + 48) assetIDsOfAssetsToSync];
  [v2 unionSet:v3];

  [*(a1 + 48) _syncAssetsWithCompletionSyncVersion:*(a1 + 56)];
}

void sub_143004(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [v5 objectForKeyedSubscript:{v10, v13}];
        v12 = [v11 BOOLValue];

        if (v12)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1431FC(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 40) _cloudSyncVersionsForDataType:@"BCAssetAnnotations" inContext:a2];
  v4 = +[BCCloudAssetManager sharedManager];
  v5 = [v4 assetAnnotationManager];

  v6 = [v3 mutableCopy];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1432E0;
  v7[3] = &unk_2CDFC8;
  v7[4] = *(a1 + 32);
  [v5 getAnnotationChangesSince:v6 completion:v7];
}

void sub_1436EC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v8 = +[BCCloudAssetManager sharedManager];
    v9 = [v8 assetAnnotationManager];

    v10 = *(a1 + 32);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_143818;
    v13[3] = &unk_2CE060;
    objc_copyWeak(v14, (a1 + 40));
    v11 = *(a1 + 48);
    v12 = *(a1 + 56);
    v13[4] = *(a1 + 32);
    v14[1] = v11;
    v14[2] = v12;
    [v9 assetWithID:v10 updatedAnnotations:v5 completion:v13];
    objc_destroyWeak(v14);
  }
}

void sub_143818(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained && a2)
  {
    v6 = [WeakRetained assetIDsOfAssetsToSyncQueue];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1438D4;
    v9[3] = &unk_2CE038;
    v7 = *(a1 + 32);
    v9[4] = v5;
    v9[5] = v7;
    v8 = *(a1 + 56);
    v9[6] = *(a1 + 48);
    v9[7] = v8;
    dispatch_async(v6, v9);
  }
}

void sub_1438D4(uint64_t a1)
{
  v2 = [*(a1 + 32) assetIDsOfAssetsToSync];
  [v2 removeObject:*(a1 + 40)];

  v3 = [*(a1 + 32) annotationProvider];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_143980;
  v5[3] = &unk_2CE010;
  v4 = *(a1 + 56);
  v5[4] = *(a1 + 48);
  v5[5] = v4;
  [v3 performBlockOnUserSideQueue:v5];
}

void sub_143980(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _cloudSyncVersionsForDataType:@"BCAssetDetail" inContext:a2];
  [v3 setSyncVersion:*(a1 + 40)];
}

void sub_14424C(uint64_t a1, void *a2)
{
  v25 = a2;
  v3 = [v25 count];
  if (v3 > 1)
  {
    v49[0] = 0;
    v49[1] = v49;
    v49[2] = 0x2020000000;
    v50 = 0;
    v47[0] = 0;
    v47[1] = v47;
    v47[2] = 0x2020000000;
    v48 = 0;
    objc_initWeak(&location, *(a1 + 32));
    v7 = dispatch_time(0, 20000000000);
    v8 = *(a1 + 40);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_144748;
    block[3] = &unk_2CE0B0;
    v43 = v49;
    v44 = v47;
    objc_copyWeak(&v45, &location);
    v42 = *(a1 + 72);
    dispatch_after(v7, v8, block);
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v9 = v25;
    v10 = [v9 countByEnumeratingWithState:&v37 objects:v55 count:16];
    if (v10)
    {
      v26 = *v38;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v38 != v26)
          {
            objc_enumerationMutation(v9);
          }

          v12 = *(*(&v37 + 1) + 8 * i);
          v13 = [v12 objectForKeyedSubscript:@"assetID"];
          v14 = [v12 objectForKeyedSubscript:@"options"];
          v15 = [v14 integerValue];

          [*(a1 + 48) imageSize];
          v16 = [BICDescribedImage describedImageWithIdentifier:v13 size:v15 & 0x400 processingOptions:?];
          v17 = BCImageCacheLog([v16 setPriority:{objc_msgSend(*(a1 + 48), "priority")}]);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            v18 = *(a1 + 32);
            *buf = 138412546;
            v52 = v16;
            v53 = 2112;
            v54 = v18;
            _os_log_impl(&dword_0, v17, OS_LOG_TYPE_INFO, "BCStackRenderer: Fetching: %@ to build stack %@", buf, 0x16u);
          }

          v19 = [*(a1 + 32) copy];
          [v19 setRequestOptions:{objc_msgSend(v19, "requestOptions") | 2}];
          [v19 setPriority:5];
          [v19 setStackRequest:*(a1 + 32)];
          v20 = [*(a1 + 56) imageRepository];
          v27[0] = _NSConcreteStackBlock;
          v27[1] = 3221225472;
          v27[2] = sub_1447EC;
          v27[3] = &unk_2CE100;
          v21 = *(a1 + 32);
          v22 = *(a1 + 56);
          v23 = *(a1 + 64);
          v28 = v21;
          v29 = v22;
          v36 = v15;
          v30 = v23;
          v24 = v9;
          v31 = v24;
          v35 = v49;
          v32 = *(a1 + 40);
          v33 = *(a1 + 48);
          v34 = *(a1 + 72);
          [v20 fetchCGImageFor:v16 forRequest:v19 completion:v27];
        }

        v10 = [v24 countByEnumeratingWithState:&v37 objects:v55 count:16];
      }

      while (v10);
    }

    objc_destroyWeak(&v45);
    objc_destroyWeak(&location);
    _Block_object_dispose(v47, 8);
    _Block_object_dispose(v49, 8);
  }

  else
  {
    v4 = BCImageCacheLog(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1EB254(v25, a1, v4);
    }

    v5 = objc_retainBlock(*(a1 + 72));
    v6 = v5;
    if (v5)
    {
      (*(v5 + 2))(v5, 0);
    }
  }
}

void sub_1446EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, id location, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, ...)
{
  va_start(va, a50);
  objc_destroyWeak(&a45);
  objc_destroyWeak(&location);
  _Block_object_dispose(&a47, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_144748(uint64_t a1)
{
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0 && (*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    v2 = BCImageCacheLog(a1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_1EB2F4(a1, v2);
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
    v3 = objc_retainBlock(*(a1 + 32));
    v4 = v3;
    if (v3)
    {
      (*(v3 + 2))(v3, 0);
    }
  }
}

void sub_1447EC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = BCImageCacheLog(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    *buf = 138412546;
    *&buf[4] = v3;
    *&buf[12] = 2112;
    *&buf[14] = v5;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "BCStackRenderer: Fetched: %@ to build stack %@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v32 = 0;
  v6 = *(a1 + 40);
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v22 = sub_144B14;
  v23 = &unk_2CE0D8;
  v7 = v3;
  v24 = v7;
  v28 = *(a1 + 96);
  v25 = *(a1 + 48);
  v27 = buf;
  v26 = *(a1 + 56);
  v8 = v21;
  os_unfair_lock_lock(v6 + 2);
  v22(v8);
  os_unfair_lock_unlock(v6 + 2);

  if (*(*&buf[8] + 24) == 1)
  {
    v10 = *(*(a1 + 88) + 8);
    if ((*(v10 + 24) & 1) == 0)
    {
      *(v10 + 24) = 1;
      v11 = BCImageCacheLog(v9);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = *(a1 + 32);
        *v29 = 138412290;
        v30 = v12;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "BCStackRenderer: Building stack: %@", v29, 0xCu);
      }

      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_144B98;
      v14[3] = &unk_2C8BD8;
      v14[4] = *(a1 + 40);
      v13 = *(a1 + 64);
      v15 = *(a1 + 56);
      v16 = *(a1 + 48);
      v17 = *(a1 + 72);
      v18 = *(a1 + 32);
      v19 = *(a1 + 64);
      v20 = *(a1 + 80);
      dispatch_async(v13, v14);
    }
  }

  _Block_object_dispose(buf, 8);
}

void sub_144B14(uint64_t a1)
{
  v3 = [*(a1 + 32) copy];
  [v3 setProcessingOptions:*(a1 + 64)];
  [*(a1 + 40) addObject:v3];
  v2 = [*(a1 + 40) count];
  *(*(*(a1 + 56) + 8) + 24) = v2 == [*(a1 + 48) count];
}

void sub_144B98(uint64_t a1)
{
  v2 = +[NSMutableArray array];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_144C8C;
  v5[3] = &unk_2C89F8;
  v3 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = v2;
  v4 = v2;
  os_unfair_lock_lock(v3 + 2);
  sub_144C8C(v5);
  os_unfair_lock_unlock(v3 + 2);
  [*(a1 + 32) _renderStackFromSource:*(a1 + 56) images:v4 forRequest:*(a1 + 64) onQueue:*(a1 + 72) withCompletion:*(a1 + 80)];
}

void sub_144C8C(id *a1)
{
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = a1[4];
  v14 = [obj countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v14)
  {
    v13 = *v20;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v3 = [*(*(&v19 + 1) + 8 * i) objectForKeyedSubscript:@"assetID"];
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v4 = a1[5];
        v5 = [v4 countByEnumeratingWithState:&v15 objects:v23 count:16];
        if (v5)
        {
          v6 = v5;
          v7 = *v16;
          while (2)
          {
            for (j = 0; j != v6; j = j + 1)
            {
              if (*v16 != v7)
              {
                objc_enumerationMutation(v4);
              }

              v9 = *(*(&v15 + 1) + 8 * j);
              v10 = [v9 identifier];
              v11 = [v10 isEqualToString:v3];

              if (v11)
              {
                [BICCacheStats logDescribedImage:v9 withComment:@"StackRendererCover"];
                [a1[6] addObject:v9];
                goto LABEL_16;
              }
            }

            v6 = [v4 countByEnumeratingWithState:&v15 objects:v23 count:16];
            if (v6)
            {
              continue;
            }

            break;
          }
        }

LABEL_16:
      }

      v14 = [obj countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v14);
  }
}

void sub_145280(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_145370;
  block[3] = &unk_2CE150;
  v7 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = v5;
  v13 = v6;
  v15 = *(a1 + 56);
  v14 = *(a1 + 48);
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, block);
}

void sub_145370(uint64_t a1)
{
  v14 = [*(a1 + 32) copy];
  v2 = [*(a1 + 40) CGImage];
  [*(a1 + 48) bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if (v2)
  {
    v11 = [BICImage imageWithCGImage:v2];
    [v14 setImage:v11];
  }

  else
  {
    [v14 setImage:0];
  }

  [v14 setNonShadowArea:{v4, v6, v8, v10}];
  [v14 setStackOutline:{objc_msgSend(*(a1 + 48), "CGPath")}];
  [v14 setProcessingOptions:{*(a1 + 64) | objc_msgSend(*(a1 + 32), "processingOptions")}];
  [v14 setQuality:{+[BICDescribedImage transformedQualityFrom:](BICDescribedImage, "transformedQualityFrom:", *(a1 + 66))}];
  [BICCacheStats logDescribedImage:v14 withComment:@"StackRendererCoverStack"];
  v12 = objc_retainBlock(*(a1 + 56));
  v13 = v12;
  if (v12)
  {
    (*(v12 + 2))(v12, v14);
  }
}

id sub_145748(uint64_t a1, id a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [a2 CGImage];

  return [v3 addObject:v5];
}

void sub_145794(uint64_t a1, void *a2, void *a3, void *a4, double a5, double a6, double a7, double a8)
{
  v15 = a2;
  v16 = a3;
  v17 = v16;
  if (v16)
  {
    v18 = [v16 CGImage];
    [v17 contentsScale];
    v19 = [UIImage imageWithCGImage:v18 scale:0 orientation:?];
    v20 = [v19 imageWithAlignmentRectInsets:{a5, a6, a7, a8}];

    if (a4)
    {
      a4 = [UIBezierPath bezierPathWithCGPath:a4];
    }

    v21 = objc_retainBlock(*(a1 + 40));
    v22 = v21;
    if (v21)
    {
      (*(v21 + 2))(v21, v20, a4);
    }
  }

  else
  {
    v23 = objc_retainBlock(*(a1 + 40));
    v20 = v23;
    if (v23)
    {
      (*(v23 + 2))(v23, 0, 0);
    }
  }

  v24 = *(a1 + 32);
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_145958;
  v26[3] = &unk_2C7BE8;
  v26[4] = v24;
  v27 = v15;
  v25 = v15;
  os_unfair_lock_lock(v24 + 2);
  sub_145958(v26);
  os_unfair_lock_unlock(v24 + 2);
}

void sub_145958(uint64_t a1)
{
  v2 = [*(a1 + 32) renderOperations];
  [v2 removeObjectIdenticalTo:*(a1 + 40)];
}

void sub_1459AC(uint64_t a1)
{
  v2 = [*(a1 + 32) renderOperations];
  [v2 addObject:*(a1 + 40)];
}

uint64_t BCReadingStatisticsProtoBookReadFrom(char *a1, void *a2)
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
        LOBYTE(v19[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19[0] & 0x7F) << v5;
        if ((v19[0] & 0x80) == 0)
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
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v15 = PBReaderReadString();
          v16 = 16;
LABEL_31:
          v14 = *&a1[v16];
          *&a1[v16] = v15;
LABEL_32:

          goto LABEL_33;
        }

        if (v13 == 2)
        {
          v15 = PBReaderReadString();
          v16 = 8;
          goto LABEL_31;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v15 = PBReaderReadString();
            v16 = 24;
            goto LABEL_31;
          case 4:
            v14 = objc_alloc_init(BCReadingStatisticsProtoTOCEntry);
            [a1 addTocEntry:v14];
            v19[0] = 0;
            v19[1] = 0;
            if (!PBReaderPlaceMark() || !BCReadingStatisticsProtoTOCEntryReadFrom(v14, a2))
            {

              return 0;
            }

            PBReaderRecallMark();
            goto LABEL_32;
          case 5:
            v14 = PBReaderReadString();
            if (v14)
            {
              [a1 addReadCFI:v14];
            }

            goto LABEL_32;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_33:
      v17 = [a2 position];
    }

    while (v17 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_14A1FC(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v1 = 1.0;
  }

  else
  {
    v1 = 0.01;
  }

  v2 = [*(a1 + 32) track];
  [v2 setAlpha:v1];
}

void sub_14A264(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v1 = 1.0;
  }

  else
  {
    v1 = 0.01;
  }

  v2 = [*(a1 + 32) thumb];
  [v2 setAlpha:v1];
}

void sub_14A5B0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained sendActionsForControlEvents:64];
}

CGFloat BKScrubberFrame(void *a1, uint64_t a2, double a3, double a4, double a5, CGFloat MinX, double a7, double a8)
{
  v11 = a1;
  [v11 scrubberSafeAreaInsets];
  if (a2 == 2)
  {
    v26 = a8;
    [v11 scrubberContainerBounds];
    x = v27.origin.x;
    width = v27.size.width;
    v28.origin.y = CGRectGetHeight(v27) * 0.5;
    v28.size.height = 1.0;
    v28.origin.x = x;
    v28.size.width = width;
    v29 = CGRectIntegral(v28);
    v14 = v29.origin.x;
    y = v29.origin.y;
    v16 = v29.size.width;
    rect = v29.size.height;
    [v11 scrubberInscribedRect:?];
    v17 = v30.origin.x;
    v18 = v30.origin.y;
    v19 = v30.size.width;
    height = v30.size.height;
    MinX = CGRectGetMinX(v30);
    v31.origin.x = v14;
    v31.origin.y = y;
    v31.size.width = v16;
    v31.size.height = rect;
    MaxX = CGRectGetMaxX(v31);
    v32.origin.x = v17;
    v32.origin.y = v18;
    v32.size.width = v19;
    v32.size.height = height;
    v22 = CGRectGetMaxX(v32);
    if ([v11 scrubberLayoutDirection] != &dword_0 + 1)
    {
      [v11 scrubberContainerSize];
      MinX = v23 - v26 - (MaxX - v22);
    }
  }

  [v11 scrubberContainerSize];
  if ([v11 isScrubberDisabled])
  {
    MinX = CGRectZero.origin.x;
  }

  return MinX;
}

void sub_14AF00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_14AF18(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_14AF30(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _CFURLPromiseCopyPhysicalURL();
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v3;
  }

  v10 = v6;

  v7 = [*(a1 + 40) _ubiquityMetadataForURL:v10 options:*(a1 + 48)];
  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

void sub_14B778(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 && !v6)
  {
    v8 = [v5 UIImage];
    v9 = BCUbiquityMetadataHelperLog(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = *(a1 + 32);
      v11 = 141558786;
      v12 = 1752392040;
      v13 = 2112;
      v14 = v10;
      v15 = 2160;
      v16 = 1752392040;
      v17 = 2112;
      v18 = v5;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "[iCloudSync] url: %{mask.hash}@ generateThumbnail thumbnail: %{mask.hash}@", &v11, 0x2Au);
    }

    [*(a1 + 40) setObject:v8 forKey:*(a1 + 48)];
LABEL_9:

    goto LABEL_10;
  }

  if (v6)
  {
    v8 = BCUbiquityMetadataHelperLog(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1EB870(v7, v8);
    }

    goto LABEL_9;
  }

LABEL_10:
  dispatch_semaphore_signal(*(a1 + 56));
}

void sub_14B9BC(id a1)
{
  v1 = objc_alloc_init(NSDateFormatter);
  v2 = qword_345F58;
  qword_345F58 = v1;

  [qword_345F58 setDateStyle:4];
  [qword_345F58 setTimeStyle:0];
  v3 = qword_345F58;

  [v3 setDoesRelativeDateFormatting:1];
}

void sub_14BD90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_14BDCC(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 56) + 8) + 24) = 0;
  v4 = *(a1 + 48);
  if (v4)
  {
    v4 = v4[2](v4, v3, *(*(a1 + 64) + 8) + 24);
  }

  if (*(*(*(a1 + 64) + 8) + 24) == 1)
  {
    v4 = [*(a1 + 32) count];
    if (v4)
    {
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_14BF00;
      v7[3] = &unk_2CE2A8;
      v9 = *(a1 + 72);
      v5 = *(a1 + 32);
      v8 = *(a1 + 40);
      [v5 enumerateKeysAndObjectsUsingBlock:v7];
    }
  }

  if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
  {
    v6 = BCUbiquityMetadataHelperLog(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1EB990();
    }
  }
}

void sub_14CAA0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = objc_autoreleasePoolPush();
  v5 = a3;
  v6 = +[BKReachability sharedReachabilityForInternetConnection];

  if (v6 == v5)
  {
    +[BKReachability _updateIsOffline];
  }

  v7 = +[NSNotificationCenter defaultCenter];
  [v7 postNotificationName:@"kNetworkReachabilityChangedNotification" object:v5];

  objc_autoreleasePoolPop(v4);
}

id sub_14CFAC(uint64_t a1)
{
  v1 = [*(a1 + 32) reachabilityForInternetConnection];
  v2 = qword_345F68;
  qword_345F68 = v1;

  result = [qword_345F68 currentReachabilityStatus];
  byte_33F460 = result == 0;
  return result;
}

UIColor *__cdecl sub_14E744(id a1, UITraitCollection *a2)
{
  if ([(UITraitCollection *)a2 userInterfaceStyle]== &dword_0 + 2)
  {
    +[UIColor whiteColor];
  }

  else
  {
    +[UIColor blackColor];
  }
  v2 = ;

  return v2;
}

void sub_14F0D0(uint64_t a1)
{
  v2 = [*(a1 + 32) imageView];
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_14F1F4;
  v18 = &unk_2C7BE8;
  v3 = *(a1 + 40);
  v19 = *(a1 + 32);
  v20 = v3;
  [UIView transitionWithView:v2 duration:5242880 options:&v15 animations:0 completion:0.0];

  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  [v4 bounds];
  [v4 _frameForImage:v5 forDisplayingInContainerBounds:?];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [*(a1 + 32) imageView];
  [v14 setFrame:{v7, v9, v11, v13}];
}

void sub_14F1F4(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) imageView];
  [v2 setImage:v1];
}

void sub_14F2EC(id a1)
{
  v1 = objc_alloc_init(BCCardSetExpandedState);
  qword_345F78 = v1;

  _objc_release_x1(v1);
}

void sub_14F36C(id a1)
{
  v1 = objc_alloc_init(BCCardSetContractedState);
  qword_345F88 = v1;

  _objc_release_x1(v1);
}

void sub_14F3EC(id a1)
{
  v1 = objc_alloc_init(BCCardSetExpandingState);
  qword_345F98 = v1;

  _objc_release_x1(v1);
}

void sub_14F46C(id a1)
{
  v1 = objc_alloc_init(BCCardSetContractingState);
  qword_345FA8 = v1;

  _objc_release_x1(v1);
}

void sub_14F4EC(id a1)
{
  v1 = objc_alloc_init(BCCardSetDismissingState);
  qword_345FB8 = v1;

  _objc_release_x1(v1);
}

void sub_14F56C(id a1)
{
  v1 = objc_alloc_init(BCCardSetPushedState);
  qword_345FC8 = v1;

  _objc_release_x1(v1);
}

void sub_14F5EC(id a1)
{
  v1 = objc_alloc_init(BCCardSetPushedContractedState);
  qword_345FD8 = v1;

  _objc_release_x1(v1);
}

void sub_151FC8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_152004(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained scrollView];
  [v2 setContentOffset:*(a1 + 40) animated:{CGPointZero.x, CGPointZero.y}];
}

void sub_152070(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained scrollView];
  [v1 setScrollEnabled:1];
}

void sub_1534A0(uint64_t a1, int a2)
{
  if (a2)
  {
    [*(a1 + 32) setAnimator:0];
    if ([*(a1 + 40) itemPushedOnCard])
    {
      +[BCCardSetState pushedContractedState];
    }

    else
    {
      +[BCCardSetState contractedState];
    }
    v3 = ;
    [*(a1 + 32) setCurrentState:v3];
  }
}

void sub_154340(id a1)
{
  v1 = objc_alloc_init(AEPluginRegistry);
  qword_345FE8 = v1;

  _objc_release_x1(v1);
}

void sub_154A64(uint64_t a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v2 = [*(a1 + 32) description];
    v3 = 138543362;
    v4 = v2;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "End AEBookPlugin prewarm for %{public}@", &v3, 0xCu);
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_154B20(uint64_t a1)
{
  v1 = objc_retainBlock(*(a1 + 32));
  if (v1)
  {
    v2 = v1;
    v1[2]();
    v1 = v2;
  }
}

void sub_15520C(uint64_t a1)
{
  v2 = [*(a1 + 40) ubiquityIdentityToken];
  v3 = *(a1 + 32);
  v4 = *(v3 + 48);
  *(v3 + 48) = v2;

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  v6 = [WeakRetained containerURL];
  v7 = *(a1 + 32);
  v8 = *(v7 + 56);
  *(v7 + 56) = v6;

  v9 = *(*(a1 + 32) + 48);
  v11 = BKLibraryDataSourceUbiquityLog(v10);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (!v9)
  {
    if (v12)
    {
      LOWORD(v18) = 0;
      v17 = "No ubiquity identity";
LABEL_12:
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, v17, &v18, 2u);
    }

LABEL_13:

    return;
  }

  if (v12)
  {
    LOWORD(v18) = 0;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "Have ubiquity identity", &v18, 2u);
  }

  v13 = *(*(a1 + 32) + 56);
  v11 = BKLibraryDataSourceUbiquityLog(v14);
  v15 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (!v13)
  {
    if (v15)
    {
      LOWORD(v18) = 0;
      v17 = "No ubiquity URL";
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  if (v15)
  {
    v16 = *(*(a1 + 32) + 56);
    v18 = 141558274;
    v19 = 1752392040;
    v20 = 2112;
    v21 = v16;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "Have ubiquity URL: %{mask.hash}@", &v18, 0x16u);
  }

  [*(a1 + 32) q_createSubpathDirectories];
  [*(a1 + 32) restartQuery];
}

id sub_155500(uint64_t a1)
{
  v2 = [*(a1 + 32) ubiquityStatusMonitor];
  v3 = [v2 isICloudDriveEnabled];

  v5 = BKLibraryDataSourceUbiquityLog(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = v3;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "iCloud identity changed. {iCloudEnabled: %d}", v8, 8u);
  }

  objc_storeStrong((*(a1 + 32) + 48), *(a1 + 40));
  v6 = *(a1 + 32);
  if (v3)
  {
    return [v6 restartQuery];
  }

  else
  {
    return [v6 tearDownQuery];
  }
}

void sub_1556B0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = objc_alloc_init(NSMetadataQuery);
    v5 = objc_alloc_init(NSOperationQueue);
    [v4 setOperationQueue:v5];

    v6 = [v4 operationQueue];
    [v6 setMaxConcurrentOperationCount:1];

    v7 = [v3 path];
    v8 = [NSPredicate predicateWithFormat:@"%K BEGINSWITH %@", NSMetadataItemPathKey, v7];
    [v4 setPredicate:v8];

    v10 = BKLibraryDataSourceUbiquityLog(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_1EBC30();
    }

    v15 = NSMetadataQueryUbiquitousDocumentsScope;
    v11 = [NSArray arrayWithObjects:&v15 count:1];
    [v4 setSearchScopes:v11];

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_15589C;
    block[3] = &unk_2C7BE8;
    block[4] = *(a1 + 32);
    v14 = v4;
    v12 = v4;
    dispatch_async(&_dispatch_main_q, block);
  }
}

void sub_155A38(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) _documentsURL];
  (*(v1 + 16))(v1, v2);
}

void sub_155F84(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) _replacementObjectForResultObject:a2];
  [v2 addObject:v3];
}

void sub_156758(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_156770(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = *(a1 + 32);
    v6 = [v3 path];
    LOBYTE(v5) = [v5 fileExistsAtPath:v6];

    if ((v5 & 1) == 0)
    {
      v7 = *(a1 + 32);
      v12 = 0;
      v8 = [v7 createDirectoryAtURL:v4 withIntermediateDirectories:1 attributes:0 error:&v12];
      v9 = v12;
      v10 = v9;
      if ((v8 & 1) == 0)
      {
        v11 = BKLibraryDataSourceUbiquityLog(v9);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_1EBDF0();
        }

        *(*(*(a1 + 40) + 8) + 24) = 0;
      }
    }
  }
}

void sub_156924(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) _replacementObjectForResultObject:a2];
  [v2 addObject:v3];
}

void sub_156F60(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x20u);
}

void sub_157818(uint64_t a1)
{
  v2 = [*(a1 + 32) im_effectiveViewControllerForTabBarVisibility];
  v3 = [v2 im_tabBarVisible];

  v4 = *(a1 + 32);
  if (v3)
  {
    [v4 showBarWithTransition:0];
  }

  else
  {
    [v4 hideBarWithTransition:0];
  }

  v5 = [*(a1 + 32) tabBar];
  [v5 setHidden:v3 ^ 1];
}

void sub_158140(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, ...)
{
  va_start(va, a47);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_158198(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *NSStringFromBookReadingSessionEvent(unint64_t a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  else
  {
    return off_2CE8F8[a1];
  }
}

void sub_158560(id a1)
{
  v1 = [[BCBookReadingTimeTracker alloc] initWithPersistenStoreDirectory:0];
  qword_345FF8 = v1;

  _objc_release_x1(v1);
}

void sub_158D44(uint64_t a1)
{
  v2 = [[NSFetchRequest alloc] initWithEntityName:@"BCAssetToPurge"];
  v3 = [NSPredicate predicateWithFormat:@"%K in %@", @"assetID", *(a1 + 32)];
  [v2 setPredicate:v3];

  v4 = [[NSBatchDeleteRequest alloc] initWithFetchRequest:v2];
  v5 = [*(a1 + 40) psc];
  v6 = [*(a1 + 40) moc];
  v17 = 0;
  v7 = [v5 executeRequest:v4 withContext:v6 error:&v17];
  v8 = v17;

  v10 = BCBookPromotionLog(v9);
  v11 = v10;
  if (v8)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1EC124();
    }

LABEL_9:

    goto LABEL_10;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 32);
    *buf = 138412290;
    v19 = v12;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "Purge Tracking: stopped tracking assets to purge %@", buf, 0xCu);
  }

  v13 = [*(a1 + 40) moc];
  v16 = 0;
  v14 = [v13 save:&v16];
  v8 = v16;

  if ((v14 & 1) == 0)
  {
    v11 = BCBookPromotionLog(v15);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1EC18C();
    }

    goto LABEL_9;
  }

LABEL_10:
}

void sub_159244(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_159274(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_15928C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = BCBookPromotionLog(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1EC25C();
    }
  }

  else if ([v5 count])
  {
    [*(a1 + 32) _cleanupBooksMarkedAsFinished:v5];
  }
}

void sub_15931C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = BCBookPromotionLog(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v11 = [v3 count];
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Purge Tracking: %lu expired books: %@", buf, 0x16u);
  }

  v5 = [*(a1 + 32) moc];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_159468;
  v7[3] = &unk_2C8838;
  v8 = v3;
  v9 = *(a1 + 32);
  v6 = v3;
  [v5 performBlock:v7];
}

void sub_159468(uint64_t a1)
{
  v2 = BCBookPromotionLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) count];
    *buf = 134217984;
    v23 = v3;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Purge Tracking: update launch tracking for %lu assets", buf, 0xCu);
  }

  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v21 = 0;
  [v4 _mocq_updateLaunchTrackingForAssets:v5 error:&v21];
  v6 = v21;
  v7 = +[BCJSConfiguration sharedInstance];
  v8 = [v7 launchesRequiredToPurge];
  v9 = [v8 unsignedIntegerValue];

  v10 = *(a1 + 40);
  v19 = v6;
  v20 = 0;
  v11 = [v10 _getAssetsToPurge:v9 request:&v20 error:&v19];
  v12 = v20;
  v13 = v19;

  if (!v13 && [v11 count])
  {
    v14 = [*(a1 + 40) libraryDelegate];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_159680;
    v17[3] = &unk_2C85C0;
    v17[4] = *(a1 + 40);
    v18 = v11;
    [v14 purgeRecentBooks:v18 completion:v17];
  }

  v15 = *(*(*(a1 + 48) + 8) + 40);
  v16 = +[NSDate now];
  [v15 setObject:v16 forKey:@"BCLastScrubRecentsDate"];
}

id *sub_159680(id *result, uint64_t a2)
{
  if (!a2)
  {
    return [result[4] _stopTrackingAssetsToPurge:result[5]];
  }

  return result;
}

void sub_159B48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_159B74(uint64_t a1, void *a2, char a3, char a4, char a5, void *a6)
{
  v11 = a2;
  v12 = a6;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v14 = WeakRetained;
  if (v12)
  {
    v15 = BCBookPromotionLog(WeakRetained);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1EC32C();
    }

    v16 = objc_retainBlock(*(a1 + 48));
    v17 = v16;
    if (!v16)
    {
      goto LABEL_7;
    }

    v18 = v16[2];
    goto LABEL_6;
  }

  if (WeakRetained)
  {
    v19 = [WeakRetained moc];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_159DB4;
    v24[3] = &unk_2CE6A0;
    objc_copyWeak(&v30, (a1 + 64));
    v25 = *(a1 + 32);
    v31 = *(a1 + 72);
    v26 = v11;
    v20 = *(a1 + 40);
    v33 = a3;
    v34 = a4;
    v35 = a5;
    v21 = *(a1 + 88);
    v27 = v20;
    v32 = v21;
    v28 = *(a1 + 56);
    v29 = *(a1 + 48);
    [v19 performBlock:v24];

    objc_destroyWeak(&v30);
    goto LABEL_10;
  }

  v22 = BCBookPromotionLog(0);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    sub_1EC3B8();
  }

  v23 = objc_retainBlock(*(a1 + 48));
  v17 = v23;
  if (v23)
  {
    v18 = v23[2];
LABEL_6:
    v18();
  }

LABEL_7:

LABEL_10:
}

void sub_159DB4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  LOWORD(v2) = *(a1 + 105);
  [WeakRetained _mocqSessionID:*(a1 + 32) sessionEvent:*(a1 + 80) trackerEventType:*(a1 + 88) asset:*(a1 + 40) assetID:*(a1 + 48) isTrackedAsRecent:*(a1 + 104) canBePromoted:v2 isSample:*(a1 + 96) readingFeatureFlags:*(a1 + 56) successCompletion:*(a1 + 64) failureCompletion:?];
}

void sub_15A4D0(uint64_t a1)
{
  v2 = BCBookPromotionLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_1EC468();
  }

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_15A5B4;
  v4[3] = &unk_2CBE60;
  v3 = *(a1 + 48);
  v4[4] = *(a1 + 40);
  v5 = v3;
  v6 = *(a1 + 32);
  v8 = *(a1 + 72);
  v7 = *(a1 + 56);
  dispatch_async(&_dispatch_main_q, v4);
}

void sub_15A6FC(uint64_t a1, uint64_t a2)
{
  v3 = objc_retainBlock(*(a1 + 32));
  if (v3)
  {
    v4 = v3;
    (*(v3 + 2))(v3, 1, a2, 0);
    v3 = v4;
  }
}

void sub_15A760(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v5 = objc_retainBlock(*(a1 + 32));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, 0, a2, v7);
  }
}

void sub_15A958(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) _mocq_readingSessionWithAssetID:*(a1 + 40) sessionID:*(a1 + 48)];
  v7 = v6;
  if (v6 && ([v6 timeOpened], v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
  {
    v9 = [v7 timeClosed];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = +[NSDate date];
    }

    v12 = v11;

    v14 = [v7 timeOpened];
    [v12 timeIntervalSinceDate:v14];
    v13 = v15;

    v17 = BCBookPromotionLog(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      sub_1EC4E0();
    }
  }

  else
  {
    v12 = BCBookPromotionLog(v6);
    v13 = 0.0;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1EC560();
    }
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v18 = [*(a1 + 32) sessionObservers];
  v19 = [v18 allObjects];

  v20 = [v19 countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v34;
    do
    {
      for (i = 0; i != v21; i = i + 1)
      {
        if (*v34 != v22)
        {
          objc_enumerationMutation(v19);
        }

        [*(*(&v33 + 1) + 8 * i) timeTracker:*(a1 + 32) didEndTrackingSession:*(a1 + 48) duration:*(a1 + 64) trackerEventType:v5 asset:*(a1 + 72) readingFeatureFlags:v13];
      }

      v21 = [v19 countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v21);
  }

  if (a2)
  {
    v25 = BCBookPromotionLog(v24);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v26 = *(a1 + 40);
      v27 = *(a1 + 48);
      *buf = 138412546;
      v38 = v26;
      v39 = 2112;
      v40 = v27;
      _os_log_impl(&dword_0, v25, OS_LOG_TYPE_INFO, "Deleting session: asset %@, session %@", buf, 0x16u);
    }

    v28 = *(a1 + 32);
    v29 = *(a1 + 40);
    v30 = [v7 timeOpened];
    [v28 _mocq_deleteSessionsForAsset:v29 beforeTime:v30];
  }

  v31 = objc_retainBlock(*(a1 + 56));
  v32 = v31;
  if (v31)
  {
    (*(v31 + 2))(v31, 1, a2, 0);
  }
}

void sub_15AC58(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = BCBookPromotionLog(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1EC5D0();
    }
  }

  v7 = objc_retainBlock(*(a1 + 40));
  v8 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7, 0, 0, v5);
  }
}

void sub_15AE38(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, void *a6)
{
  v8 = a6;
  if (a3)
  {
    v9 = objc_retainBlock(*(a1 + 48));
    v10 = v9;
    if (v9)
    {
      (*(v9 + 2))(v9, 1, v8, 0.0);
    }
  }

  else
  {
    v11 = [*(a1 + 32) _fetchRequestForReadingSession:*(a1 + 40)];
    v12 = [*(a1 + 32) moc];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_15AF54;
    v13[3] = &unk_2CC630;
    v13[4] = *(a1 + 32);
    v14 = v11;
    v15 = *(a1 + 48);
    v16 = 0;
    v10 = v11;
    [v12 performBlock:v13];
  }
}

void sub_15AF54(uint64_t a1)
{
  v2 = [*(a1 + 32) moc];
  v3 = *(a1 + 40);
  v44 = 0;
  v4 = [v2 executeFetchRequest:v3 error:&v44];
  v5 = v44;

  if (v4)
  {
    v7 = 1;
  }

  else
  {
    v7 = v5 == 0;
  }

  if (!v7)
  {
    v8 = BCBookPromotionLog(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1EC678();
    }
  }

  if (![v4 count])
  {
    v13 = 0.0;
    goto LABEL_31;
  }

  v38 = v5;
  v39 = v4;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v9 = v4;
  v10 = [v9 countByEnumeratingWithState:&v40 objects:v51 count:16];
  if (!v10)
  {
    v13 = 0.0;
    goto LABEL_30;
  }

  v11 = v10;
  v12 = *v41;
  v13 = 0.0;
  do
  {
    for (i = 0; i != v11; i = i + 1)
    {
      if (*v41 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v15 = *(*(&v40 + 1) + 8 * i);
      v16 = [v15 timeClosed];
      [v16 timeIntervalSinceNow];
      v18 = -v17;

      v19 = +[BCJSConfiguration sharedInstance];
      v20 = [v19 validCollectionPeriod];
      [v20 doubleValue];
      v22 = v21;

      if (v22 < v18)
      {
        v23 = [*(a1 + 32) moc];
        [v23 deleteObject:v15];
        goto LABEL_25;
      }

      v24 = [v15 timeOpened];
      if (v24)
      {
        v25 = v24;
        v26 = [v15 timeClosed];

        if (v26)
        {
          v27 = [v15 timeClosed];
LABEL_22:
          v23 = v27;
          v31 = [v15 timeOpened];
          [v23 timeIntervalSinceDate:v31];
          v13 = v13 + v32;

          goto LABEL_25;
        }
      }

      v28 = [v15 timeOpened];
      if (v28)
      {
        v29 = v28;
        v30 = [v15 timeUpdated];

        if (v30)
        {
          v27 = [v15 timeUpdated];
          goto LABEL_22;
        }
      }

      v23 = BCBookPromotionLog(v28);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        v33 = [v15 sessionID];
        v34 = [v15 timeOpened];
        v35 = [v15 assetID];
        *buf = 138543874;
        v46 = v33;
        v47 = 2112;
        v48 = v34;
        v49 = 2112;
        v50 = v35;
        _os_log_debug_impl(&dword_0, v23, OS_LOG_TYPE_DEBUG, "Ignoring session %{public}@ from %@ for asset %@ due to incomplete information.", buf, 0x20u);
      }

LABEL_25:
    }

    v11 = [v9 countByEnumeratingWithState:&v40 objects:v51 count:16];
  }

  while (v11);
LABEL_30:

  v5 = v38;
  v4 = v39;
LABEL_31:
  v36 = objc_retainBlock(*(a1 + 48));
  v37 = v36;
  if (v36)
  {
    (*(v36 + 2))(v36, *(a1 + 56), v5, v13);
  }
}

id sub_15B37C(uint64_t a1)
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"BCPurgeRecentsOnNextStart"];

  if (v3)
  {
    v5 = BCBookPromotionLog(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Purging all recent books.", v8, 2u);
    }

    v6 = +[NSUserDefaults standardUserDefaults];
    [v6 setBool:0 forKey:@"BCPurgeRecentsOnNextStart"];
  }

  return [*(a1 + 32) _purgeRecentBooksList:v3 completion:&stru_2CE7A8];
}

void sub_15B454(id a1, BOOL a2, NSError *a3)
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = BCBookPromotionLog(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1EC6E0();
    }
  }
}

void sub_15B568(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = BUIsRunningTests();
  if (v2 == 1)
  {
    if (v3)
    {
      v4 = BCBookPromotionLog(v3);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "Purginging ALL recent books.", buf, 2u);
      }

      v5 = [[NSFetchRequest alloc] initWithEntityName:@"BCTrackedAsset"];
      v6 = [[NSBatchDeleteRequest alloc] initWithFetchRequest:v5];
      v7 = [*(a1 + 32) psc];
      v8 = [*(a1 + 32) moc];
      v52 = 0;
      v9 = [v7 executeRequest:v6 withContext:v8 error:&v52];
      v10 = v52;

      if (v10)
      {
        v12 = BCBookPromotionLog(v11);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          sub_1EC818();
        }
      }
    }

    v13 = [[NSFetchRequest alloc] initWithEntityName:@"BCAssetReadingSession"];
    v14 = [[NSBatchDeleteRequest alloc] initWithFetchRequest:v13];
    v15 = [*(a1 + 32) psc];
    v16 = [*(a1 + 32) moc];
    v51 = 0;
    v17 = [v15 executeRequest:v14 withContext:v16 error:&v51];
    v18 = v51;

    if (v18)
    {
      v20 = BCBookPromotionLog(v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_1EC880();
      }
    }

    v21 = [*(a1 + 32) moc];
    v50 = 0;
    v22 = [v21 save:&v50];
    v23 = v50;

    v25 = 0;
    if ((v22 & 1) == 0)
    {
      v26 = BCBookPromotionLog(v24);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_1EC8E8();
      }

      v25 = v23;
    }

    v27 = [*(a1 + 32) libraryDelegate];
    v28 = +[NSDate date];
    [v27 purgeRecentsListFromAllBooksOlderThanDate:v28];

    if (!v25)
    {
      goto LABEL_39;
    }

    v30 = BCBookPromotionLog(v29);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      sub_1EC6E0();
    }

LABEL_38:

LABEL_39:
LABEL_40:

    goto LABEL_42;
  }

  if (v3)
  {
    v31 = BCBookPromotionLog(v3);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v31, OS_LOG_TYPE_INFO, "Purging recent books.", buf, 2u);
    }

    v32 = +[BCJSConfiguration sharedInstance];
    v13 = [v32 oldestDateToAvoidPurgeOfBooks];

    if (!v13)
    {
      v14 = BCBookPromotionLog(v33);
      v22 = 1;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "No date to purge for testing, skipping.", buf, 2u);
      }

      v25 = 0;
      goto LABEL_40;
    }

    v14 = [[NSFetchRequest alloc] initWithEntityName:@"BCTrackedAsset"];
    v18 = [NSPredicate predicateWithFormat:@"lastOpenedDate < %@", v13];
    [v14 setPredicate:v18];
    v23 = [[NSBatchDeleteRequest alloc] initWithFetchRequest:v14];
    v34 = [*(a1 + 32) psc];
    v35 = [*(a1 + 32) moc];
    v49 = 0;
    v36 = [v34 executeRequest:v23 withContext:v35 error:&v49];
    v30 = v49;

    if (v30)
    {
      v38 = BCBookPromotionLog(v37);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        sub_1EC748();
      }
    }

    v39 = [*(a1 + 32) moc];
    v48 = 0;
    v22 = [v39 save:&v48];
    v40 = v48;

    v25 = 0;
    if ((v22 & 1) == 0)
    {
      v42 = BCBookPromotionLog(v41);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        sub_1EC7B0();
      }

      v25 = v40;
    }

    v43 = [*(a1 + 32) libraryDelegate];
    [v43 purgeRecentsListFromAllBooksOlderThanDate:v13];

    if (v25)
    {
      v45 = BCBookPromotionLog(v44);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        sub_1EC6E0();
      }
    }

    goto LABEL_38;
  }

  v25 = 0;
  v22 = 1;
LABEL_42:
  v46 = objc_retainBlock(*(a1 + 40));
  v47 = v46;
  if (v46)
  {
    (*(v46 + 2))(v46, v22, v25);
  }
}

id sub_15BBD4(uint64_t a1)
{
  [*(a1 + 32) setGlobalMetadataFetched:1];
  v2 = *(a1 + 32);

  return [v2 _seedRecentBooksList];
}

id sub_15BCA8(uint64_t a1)
{
  [*(a1 + 32) setReadyToSeedRecentBooksList:1];
  [*(a1 + 32) setLimit:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 _seedRecentBooksList];
}

void sub_15BDFC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5)
  {
    v8 = BCBookPromotionLog(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Global metadata returned a nil value for the key deviceWasSeededWithRecents", buf, 2u);
    }
  }

  if (![v5 isEqualToString:@"YES"] || (+[NSUserDefaults standardUserDefaults](NSUserDefaults, "standardUserDefaults"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "BOOLForKey:", @"BCForceRecentBooksUpgradeExperience"), v9, v10))
  {
    v11 = +[NSUserDefaults standardUserDefaults];
    v12 = [v11 BOOLForKey:@"BCForceRecentBooksUpgradeExperience"];

    v14 = BCBookPromotionLog(v13);
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    if (v12)
    {
      if (v15)
      {
        *v22 = 0;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "Forcefully seeding recents list.", v22, 2u);
      }

      v14 = +[NSUserDefaults standardUserDefaults];
      [v14 removeObjectForKey:@"BCForceRecentBooksUpgradeExperience"];
    }

    else if (v15)
    {
      *v21 = 0;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "Doing initial seeding of the recents books list.", v21, 2u);
    }

    v16 = +[BCJSConfiguration sharedInstance];
    v17 = [v16 oldestDateForUpgrade];

    [*(a1 + 32) setMetadataValue:@"YES" forKey:@"BCDeviceWasSeededWithARecentsList" completion:&stru_2CE810];
    v18 = *(a1 + 40);
    v19 = [*(a1 + 48) limit];
    if (v19)
    {
      v20 = v19;
    }

    else
    {
      v20 = 10;
    }

    [v18 seedRecentsListWithRecentlyOpenedBooksNoOlderThanDate:v17 limit:v20];
  }
}

void sub_15BFFC(id a1, NSError *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    v4 = BCBookPromotionLog(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1EC678();
    }
  }
}

void sub_15C120(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained promotionObservers];
  [v2 addObject:*(a1 + 32)];
}

void sub_15C24C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained promotionObservers];
  [v2 removeObject:*(a1 + 32)];
}

void sub_15C378(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained sessionObservers];
  [v2 addObject:*(a1 + 32)];
}

void sub_15C4A4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained sessionObservers];
  [v2 removeObject:*(a1 + 32)];
}

void sub_15C82C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = BCBookPromotionLog(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1EC25C();
    }
  }

  else if ([v5 count])
  {
    [*(a1 + 32) _cleanupBooksMarkedAsFinished:v5];
  }
}

void sub_15C970(uint64_t a1)
{
  if (BUIsRunningTests())
  {
    v2 = [[NSFetchRequest alloc] initWithEntityName:@"BCTrackedAsset"];
    [v2 setReturnsObjectsAsFaults:0];
    v3 = [NSPredicate predicateWithFormat:@"%K in %@", @"assetID", *(a1 + 32)];
    [v2 setPredicate:v3];

    v4 = [[NSBatchDeleteRequest alloc] initWithFetchRequest:v2];
    v5 = [*(a1 + 40) psc];
    v6 = [*(a1 + 40) moc];
    v31 = 0;
    v7 = [v5 executeRequest:v4 withContext:v6 error:&v31];
    v8 = v31;

    if (v8)
    {
      v10 = BCBookPromotionLog(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1EC9F4();
      }
    }
  }

  v11 = [[NSFetchRequest alloc] initWithEntityName:@"BCAssetReadingSession"];
  [v11 setReturnsObjectsAsFaults:0];
  v12 = [NSPredicate predicateWithFormat:@"%K in %@", @"assetID", *(a1 + 32)];
  [v11 setPredicate:v12];

  v13 = [[NSBatchDeleteRequest alloc] initWithFetchRequest:v11];
  v14 = BCBookPromotionLog(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = *(a1 + 32);
    *buf = 138412290;
    v33 = v15;
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "Deleting reading sessions for assetIDs: %@", buf, 0xCu);
  }

  v16 = [*(a1 + 40) psc];
  v17 = [*(a1 + 40) moc];
  v30 = 0;
  v18 = [v16 executeRequest:v13 withContext:v17 error:&v30];
  v19 = v30;

  if (v19)
  {
    v21 = BCBookPromotionLog(v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_1ECA5C();
    }
  }

  v22 = [*(a1 + 40) moc];
  v23 = [v22 hasChanges];

  if (v23)
  {
    v24 = [*(a1 + 40) moc];
    v29 = 0;
    v25 = [v24 save:&v29];
    v26 = v29;

    if ((v25 & 1) == 0)
    {
      v28 = BCBookPromotionLog(v27);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        sub_1EC8E8();
      }
    }
  }
}

void sub_15CD88(uint64_t a1, uint64_t a2)
{
  v4 = BCBookPromotionLog(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 48);
    *buf = 138412546;
    v36 = v5;
    v37 = 1024;
    LODWORD(v38) = v6;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, " promoteTrackedAsset:%@ ifNotTracked:%{BOOL}d", buf, 0x12u);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v7 = [*(a1 + 40) promotionObservers];
  v8 = [v7 allObjects];

  v9 = [v8 countByEnumeratingWithState:&v30 objects:v39 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v31;
    do
    {
      v12 = 0;
      do
      {
        if (*v31 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v30 + 1) + 8 * v12);
        v14 = BCBookPromotionLog(v9);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          v15 = *(a1 + 32);
          *buf = 138412546;
          v36 = v13;
          v37 = 2112;
          v38 = v15;
          _os_log_debug_impl(&dword_0, v14, OS_LOG_TYPE_DEBUG, " notify observer:%@ of assetID:%@", buf, 0x16u);
        }

        v9 = [v13 timeTracker:*(a1 + 40) didPromoteAsset:*(a1 + 32) deletedFromWantToRead:a2];
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v9 = [v8 countByEnumeratingWithState:&v30 objects:v39 count:16];
      v10 = v9;
    }

    while (v9);
  }

  v16 = [*(a1 + 40) moc];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_15D0CC;
  v28[3] = &unk_2C7BE8;
  v22 = *(a1 + 32);
  v17 = v22.i64[0];
  v29 = vextq_s8(v22, v22, 8uLL);
  [v16 performBlock:v28];

  if (BUIsRunningTests())
  {
    v18 = [*(a1 + 40) moc];
    v23 = _NSConcreteStackBlock;
    v24 = 3221225472;
    v25 = sub_15D0D8;
    v26 = &unk_2C7BE8;
    v22 = *(a1 + 32);
    v19 = v22.i64[0];
    v27 = vextq_s8(v22, v22, 8uLL);
    [v18 performBlock:&v23];
  }

  v20 = *(a1 + 40);
  v34 = *(a1 + 32);
  v21 = [NSArray arrayWithObjects:&v34 count:1, *&v22, v23, v24, v25, v26];
  [v20 _stopTrackingAssetsToPurge:v21];
}

void sub_15D0D8(uint64_t a1)
{
  v2 = (a1 + 40);
  v3 = [*(a1 + 32) mq_trackedAssetForAssetID:*(a1 + 40)];
  if (!v3)
  {
    v4 = BCBookPromotionLog(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *v2;
      *buf = 138412290;
      v15 = v5;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "Inserting new local copy of tracked asset for %@", buf, 0xCu);
    }

    v6 = [*(a1 + 32) moc];
    v3 = [NSEntityDescription insertNewObjectForEntityForName:@"BCTrackedAsset" inManagedObjectContext:v6];

    [v3 setAssetID:*(a1 + 40)];
  }

  v7 = +[NSDate date];
  [v3 setLastOpenedDate:v7];

  v8 = [*(a1 + 32) moc];
  v13 = 0;
  v9 = [v8 save:&v13];
  v10 = v13;

  if ((v9 & 1) == 0)
  {
    v12 = BCBookPromotionLog(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1ECAC4();
    }
  }
}

void sub_15D678(uint64_t a1)
{
  v2 = BCBookPromotionLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v73 = v3;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "runBookPromotionAlgorithmForAssetID %@", buf, 0xCu);
  }

  v4 = *(a1 + 72);
  v5 = +[BCJSConfiguration sharedInstance];
  v6 = v5;
  if (v4)
  {
    [v5 timeThresholdForSamplePromotion];
  }

  else
  {
    [v5 timeThresholdForPromotion];
  }
  v7 = ;
  [v7 doubleValue];
  v9 = v8;

  v10 = [*(a1 + 40) _fetchRequestForReadingSession:*(a1 + 32)];
  v11 = [*(a1 + 40) moc];
  v71 = 0;
  v12 = [v11 executeFetchRequest:v10 error:&v71];
  v13 = v71;

  if (!v12 && v13)
  {
    v15 = BCBookPromotionLog(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1EC678();
    }

LABEL_11:
    v16 = objc_retainBlock(*(a1 + 56));
    v17 = v16;
    if (v16)
    {
      (*(v16 + 2))(v16, 0, v13);
    }

    goto LABEL_60;
  }

  if (![v12 count])
  {
    v45 = BCBookPromotionLog(0);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      sub_1ECC00();
    }

    if (v13)
    {
      goto LABEL_11;
    }

    v46 = objc_retainBlock(*(a1 + 64));
    v13 = v46;
    if (!v46)
    {
      goto LABEL_60;
    }

    v47 = v46[2];
LABEL_59:
    v47();
    goto LABEL_60;
  }

  v62 = (a1 + 32);
  v63 = v13;
  v64 = v12;
  v65 = v10;
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v18 = v12;
  v19 = [v18 countByEnumeratingWithState:&v67 objects:v78 count:16];
  if (!v19)
  {
    v22 = 0.0;
    goto LABEL_42;
  }

  v20 = v19;
  v21 = *v68;
  v22 = 0.0;
  do
  {
    v23 = 0;
    do
    {
      if (*v68 != v21)
      {
        objc_enumerationMutation(v18);
      }

      v24 = *(*(&v67 + 1) + 8 * v23);
      v25 = [v24 timeClosed];
      [v25 timeIntervalSinceNow];
      v27 = -v26;

      v28 = +[BCJSConfiguration sharedInstance];
      v29 = [v28 validCollectionPeriod];
      [v29 doubleValue];
      v31 = v30;

      if (v31 < v27)
      {
        v32 = [*(a1 + 40) moc];
        [v32 deleteObject:v24];
        goto LABEL_31;
      }

      v33 = [v24 timeOpened];
      if (v33)
      {
        v34 = v33;
        v35 = [v24 timeClosed];

        if (v35)
        {
          v36 = [v24 timeClosed];
          goto LABEL_28;
        }
      }

      v37 = [v24 timeOpened];
      if (v37)
      {
        v38 = v37;
        v39 = [v24 timeUpdated];

        if (v39)
        {
          v36 = [v24 timeUpdated];
LABEL_28:
          v32 = v36;
          v40 = [v24 timeOpened];
          [v32 timeIntervalSinceDate:v40];
          v22 = v22 + v41;
LABEL_29:

          goto LABEL_31;
        }
      }

      v32 = BCBookPromotionLog(v37);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        v40 = [v24 sessionID];
        v42 = [v24 timeOpened];
        v43 = [v24 assetID];
        *buf = 138543874;
        v73 = v40;
        v74 = 2112;
        v75 = v42;
        v76 = 2112;
        v77 = v43;
        _os_log_debug_impl(&dword_0, v32, OS_LOG_TYPE_DEBUG, "Run promotion algorithm: Ignoring session %{public}@ from %@ for asset %@ due to incomplete information.", buf, 0x20u);

        goto LABEL_29;
      }

LABEL_31:

      v23 = v23 + 1;
    }

    while (v20 != v23);
    v44 = [v18 countByEnumeratingWithState:&v67 objects:v78 count:16];
    v20 = v44;
  }

  while (v44);
LABEL_42:

  if (v22 < v9)
  {
    v50 = BCBookPromotionLog(v48);
    v12 = v64;
    v10 = v65;
    v49 = v63;
    if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
    {
      v51 = *v62;
      *buf = 138412290;
      v73 = v51;
      _os_log_impl(&dword_0, v50, OS_LOG_TYPE_INFO, "Book %@ has not yet crossed threshold for promotion.", buf, 0xCu);
    }
  }

  else
  {
    [*(a1 + 40) _mocq_promoteAssetID:*(a1 + 32)];
    v12 = v64;
    v10 = v65;
    v49 = v63;
  }

  v52 = [*(a1 + 40) moc];
  v53 = [v52 hasChanges];

  if (!v53)
  {
    v56 = v49;
    if (v49)
    {
      goto LABEL_53;
    }

    goto LABEL_57;
  }

  v54 = [*(a1 + 40) moc];
  v66 = v49;
  v55 = [v54 save:&v66];
  v56 = v66;

  if ((v55 & 1) == 0)
  {
    v58 = BCBookPromotionLog(v57);
    if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
    {
      sub_1ECB98();
    }
  }

  if (!v56)
  {
LABEL_57:
    v61 = objc_retainBlock(*(a1 + 64));
    v13 = v61;
    if (!v61)
    {
      goto LABEL_60;
    }

    v47 = v61[2];
    goto LABEL_59;
  }

LABEL_53:
  v59 = objc_retainBlock(*(a1 + 56));
  v60 = v59;
  if (v59)
  {
    (*(v59 + 2))(v59, v22 >= v9, v56);
  }

  v13 = v56;
LABEL_60:
}

void sub_15E2CC(uint64_t a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a2)
  {
    sub_1ECE54(a1, a2, a4, a5, a6, a7, a8, a9);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_15E3A0;
  block[3] = &unk_2CE8B0;
  v17 = *(a1 + 56);
  v18 = a3;
  v14 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v15 = v11;
  v16 = v12;
  v19 = *(a1 + 64);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_15E3A0(uint64_t a1)
{
  if (*(a1 + 64) >= *(a1 + 56))
  {
    [*(a1 + 48) _handleReadingWithAssetID:*(a1 + 40) sessionID:*(a1 + 32) sessionEvent:2 trackerEventType:*(a1 + 80) readingFeatureFlags:*(a1 + 72) successCompletion:0 failureCompletion:0];
  }

  else
  {
    v6[0] = @"SessionID";
    v6[1] = @"AssetID";
    v2 = *(a1 + 40);
    v7[0] = *(a1 + 32);
    v7[1] = v2;
    v6[2] = @"ReadingFeatureFlagsKey";
    v3 = [NSNumber numberWithInteger:*(a1 + 72)];
    v7[2] = v3;
    v4 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:3];

    v5 = [NSTimer scheduledTimerWithTimeInterval:*(a1 + 48) target:"_handledUpdateReadingSessionTimer:" selector:v4 userInfo:0 repeats:*(a1 + 56) - *(a1 + 64) + 2.0];
    [*(a1 + 48) setBookPromotionTimer:v5];
  }
}

void sub_15EF10(uint64_t a1)
{
  v2 = [*(a1 + 32) mq_trackedAssetForAssetID:*(a1 + 40)];
  if (v2)
  {
    v3 = objc_retainBlock(*(a1 + 48));
    if (v3)
    {
      v4 = [v2 lastOpenedDate];
      v5 = [v4 copy];
      (v3)[2](v3, 1, v5, 9.22337204e18);
    }
  }

  else
  {
    v3 = [*(a1 + 32) _fetchRequestForReadingSession:*(a1 + 40)];
    v6 = [*(a1 + 32) moc];
    v38 = 0;
    v7 = [v6 executeFetchRequest:v3 error:&v38];
    v8 = v38;

    if (!v7)
    {
      v10 = BCBookPromotionLog(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1EC678();
      }
    }

    if ([v7 count])
    {
      v31 = v8;
      v32 = v7;
      v33 = v3;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v11 = v7;
      v12 = [v11 countByEnumeratingWithState:&v34 objects:v39 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = 0;
        v15 = *v35;
        v16 = 0.0;
        do
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v35 != v15)
            {
              objc_enumerationMutation(v11);
            }

            v18 = *(*(&v34 + 1) + 8 * i);
            v19 = [v18 timeOpened];
            v20 = 0.0;
            if (v19)
            {
              v21 = v19;
              v22 = [v18 timeClosed];

              if (v22)
              {
                v23 = [v18 timeClosed];
                v24 = [v18 timeOpened];
                [v23 timeIntervalSinceDate:v24];
                v20 = v25;

                v26 = [v18 timeClosed];
                v27 = v26;
                if (v14)
                {
                  v28 = [v26 laterDate:v14];

                  v14 = v28;
                }

                else
                {
                  v14 = v26;
                }
              }
            }

            v16 = v16 + v20;
          }

          v13 = [v11 countByEnumeratingWithState:&v34 objects:v39 count:16];
        }

        while (v13);
      }

      else
      {
        v14 = 0;
        v16 = 0.0;
      }

      v7 = v32;
      v3 = v33;
      v8 = v31;
    }

    else
    {
      v14 = 0;
      v16 = 0.0;
    }

    v29 = objc_retainBlock(*(a1 + 48));
    if (v29)
    {
      v30 = [v14 copy];
      v29[2](v29, 0, v30, v16);
    }
  }
}

void sub_15F2E4(uint64_t a1)
{
  v2 = [[NSFetchRequest alloc] initWithEntityName:@"BCTrackedAsset"];
  [v2 setReturnsObjectsAsFaults:0];
  v3 = [NSSortDescriptor sortDescriptorWithKey:@"lastOpenedDate" ascending:0];
  v25 = v3;
  v4 = [NSArray arrayWithObjects:&v25 count:1];
  [v2 setSortDescriptors:v4];

  v5 = [*(a1 + 32) moc];
  v23 = 0;
  v6 = [v5 executeFetchRequest:v2 error:&v23];
  v7 = v23;

  v8 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v6, "count")}];
  v9 = v8;
  if (!v6)
  {
    v10 = BCBookPromotionLog(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1EC678();
    }
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = v6;
  v12 = [v11 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    do
    {
      v15 = 0;
      do
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v19 + 1) + 8 * v15) assetID];
        [v9 addObject:v16];

        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v13);
  }

  v17 = objc_retainBlock(*(a1 + 40));
  v18 = v17;
  if (v17)
  {
    (*(v17 + 2))(v17, v9, v7);
  }
}

void sub_15F63C(uint64_t a1)
{
  v2 = [*(a1 + 32) _mocq_readingSessionWithAssetID:*(a1 + 40) sessionID:*(a1 + 48)];
  (*(*(a1 + 56) + 16))(*(a1 + 56), v2 != 0);
}

void sub_160380(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = a2;
  v5 = objc_retainBlock(*(*(a1 + 32) + 16));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, v9, a3);
  }

  v7 = *(a1 + 32);
  v8 = *(v7 + 16);
  *(v7 + 16) = 0;
}

void sub_160F9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_160FC0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_160FD8(uint64_t a1)
{
  v2 = dispatch_queue_create("BCLazyValue", 0);
  *(*(a1 + 32) + 16) = v2;

  return _objc_release_x1(v2);
}

id sub_161024(uint64_t a1, uint64_t a2)
{
  result = objc_retainBlock(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_161058(void *a1)
{
  v2 = a1[4];
  if (!*(v2 + 56))
  {
    v13 = *(v2 + 48);
    if (!v13)
    {
      return;
    }

    if ((*(v2 + 40) & 1) == 0)
    {
      v14 = (*(v13 + 16))();
      v15 = *(a1[5] + 8);
      v16 = *(v15 + 40);
      *(v15 + 40) = v14;

      objc_storeStrong((a1[4] + 32), *(*(a1[5] + 8) + 40));
      *(a1[4] + 40) |= 1uLL;
      return;
    }

    goto LABEL_11;
  }

  if (!*(v2 + 24))
  {
    v3 = dispatch_group_create();
    v4 = a1[4];
    v5 = *(v4 + 24);
    *(v4 + 24) = v3;

    v2 = a1[4];
  }

  v6 = *(v2 + 40);
  if (v6)
  {
LABEL_11:
    objc_storeStrong((*(a1[5] + 8) + 40), *(v2 + 32));
    return;
  }

  if ((v6 & 2) == 0)
  {
    *(v2 + 40) = v6 | 2;
    dispatch_group_enter(*(a1[4] + 24));
    v7 = a1[4];
    v8 = *(v7 + 56);
    v17[6] = _NSConcreteStackBlock;
    v17[7] = 3221225472;
    v17[8] = sub_161208;
    v17[9] = &unk_2CE940;
    v17[10] = v7;
    (*(v8 + 16))();
    v2 = a1[4];
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_161308;
  v17[3] = &unk_2CA7A8;
  v9 = a1[5];
  v17[4] = v2;
  v17[5] = v9;
  v10 = objc_retainBlock(v17);
  v11 = *(a1[6] + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;
}

void sub_161208(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1612A4;
  v7[3] = &unk_2C7BE8;
  v7[4] = v4;
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

void sub_1612A4(uint64_t a1)
{
  *(*(a1 + 32) + 40) &= ~2uLL;
  *(*(a1 + 32) + 40) |= 1uLL;
  objc_storeStrong((*(a1 + 32) + 32), *(a1 + 40));
  v2 = *(*(a1 + 32) + 24);

  dispatch_group_leave(v2);
}

void sub_161308(uint64_t a1)
{
  v2 = dispatch_semaphore_create(0);
  v3 = *(a1 + 32);
  v5 = *(v3 + 16);
  v4 = *(v3 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1613C8;
  block[3] = &unk_2C7BC0;
  v6 = *(a1 + 40);
  v9 = v2;
  v10 = v6;
  block[4] = v3;
  v7 = v2;
  dispatch_group_notify(v4, v5, block);
  dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
}

intptr_t sub_1613C8(void *a1)
{
  objc_storeStrong((*(a1[6] + 8) + 40), *(a1[4] + 32));
  v2 = a1[5];

  return dispatch_semaphore_signal(v2);
}

_DWORD *sub_1615B0(uint64_t a1)
{
  v1 = [*(a1 + 32) reportState];
  v2 = [NSPropertyListSerialization dataWithPropertyList:v1 format:200 options:0 error:0];
  v3 = [v2 length];
  v4 = malloc_type_calloc(1uLL, v3 + 200, 0x1000040BEF03554uLL);
  *v4 = 1;
  v4[1] = v3;
  __strlcpy_chk();
  memcpy(v4 + 50, [v2 bytes], v3);

  return v4;
}

void sub_161880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1618AC(uint64_t a1)
{
  v5 = [qword_346018 allObjects];
  v2 = [v5 copy];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1619AC(uint64_t a1)
{
  v2 = [*(a1 + 32) waitingBlocks];
  v3 = [v2 count];

  if (v3)
  {
    v4 = objc_opt_new();
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = [*(a1 + 32) waitingBlocks];
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        v9 = 0;
        do
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = +[NSValue valueWithPointer:](NSValue, "valueWithPointer:", [*(*(&v12 + 1) + 8 * v9) caller]);
          [v4 addObject:v10];

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }

    v11 = [NSValue valueWithPointer:*(a1 + 32)];
    [*(a1 + 40) setObject:v4 forKeyedSubscript:v11];
  }
}

void sub_161F00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_161F18(uint64_t a1)
{
  if (([*(a1 + 32) hasValue] & 1) == 0 && (objc_msgSend(*(a1 + 32), "cancelled") & 1) == 0)
  {
    [*(a1 + 32) setCancelled:1];
    v2 = [*(a1 + 32) waitingBlocks];
    v3 = [v2 copy];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v6 = [*(a1 + 32) waitingBlocks];
    [v6 removeAllObjects];
  }
}

void sub_162284(uint64_t a1)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 24));
  if (*(a1 + 48))
  {
    **(a1 + 48) = *(*(a1 + 32) + 32);
  }
}

void sub_162434(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_162454(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_162804(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v20 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v18 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_162834(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(a1[7] + 8);
  v5 = *(v4 + 40);
  v6 = a1[9];
  v7 = *(a1[8] + 8);
  v9 = *(v7 + 40);
  obj = v5;
  v8 = [v2 sq_get:v3 caller:v6 value:&obj error:&v9];
  objc_storeStrong((v4 + 40), obj);
  objc_storeStrong((v7 + 40), v9);
  *(*(a1[6] + 8) + 24) = v8 == 0;
}

void sub_162ABC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va1, a19);
  va_start(va, a19);
  v21 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v19 - 120), 8);
  _Unwind_Resume(a1);
}

void sub_162AF4(uint64_t a1)
{
  v2 = [*(a1 + 32) hasValue];
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [v3 value];
    v5 = *(*(a1 + 48) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    v7 = [*(a1 + 32) error];
LABEL_6:
    v10 = *(*(a1 + 56) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v7;

    *(*(*(a1 + 64) + 8) + 24) = 1;
    return;
  }

  if ([v3 cancelled] || *(a1 + 72) < dispatch_time(0, 0))
  {
    v8 = *(*(a1 + 48) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = 0;

    v7 = [NSError errorWithDomain:@"BCFutureErrorDomain" code:0 userInfo:0];
    goto LABEL_6;
  }

  v12 = [*(a1 + 32) sq_get:*(a1 + 40) caller:*(a1 + 80) value:0 error:0];
  v13 = v12;
  if (v12)
  {
    v14 = *(a1 + 72);
    v15 = *(a1 + 32);
    v16 = *(v15 + 16);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_162C78;
    v17[3] = &unk_2C7BE8;
    v17[4] = v15;
    v18 = v12;
    dispatch_after(v14, v16, v17);
  }
}

void sub_162C78(uint64_t a1)
{
  v2 = [*(a1 + 32) waitingBlocks];
  v3 = [v2 indexOfObjectIdenticalTo:*(a1 + 40)];

  if (v3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = [*(a1 + 32) waitingBlocks];
    [v4 removeObject:*(a1 + 40)];

    v5 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_162D6C;
    block[3] = &unk_2C7D40;
    v7 = *(a1 + 40);
    dispatch_async(v5, block);
  }
}

void sub_162D6C(uint64_t a1)
{
  v2 = [*(a1 + 32) block];
  v1 = [NSError errorWithDomain:@"BCFutureErrorDomain" code:0 userInfo:0];
  v2[2](v2, 0, v1);
}

void sub_163144(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_16315C(uint64_t a1)
{
  if (([*(a1 + 32) hasValue] & 1) == 0 && (objc_msgSend(*(a1 + 32), "cancelled") & 1) == 0)
  {
    [*(a1 + 32) setValue:*(a1 + 40)];
    [*(a1 + 32) setError:*(a1 + 48)];
    [*(a1 + 32) setHasValue:1];
    v2 = [*(a1 + 32) waitingBlocks];
    v3 = [v2 copy];
    v4 = *(*(a1 + 56) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v6 = [*(a1 + 32) waitingBlocks];
    [v6 removeAllObjects];
  }
}

void sub_163E04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_163E28(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_163EB8;
  block[3] = &unk_2C8FF8;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(&_dispatch_main_q, block);
  objc_destroyWeak(&v2);
}

void sub_163EB8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained resetButtonState];
}

void sub_163FBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_163FE0(uint64_t a1)
{
  v2 = dispatch_time(0, 1000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_164090;
  block[3] = &unk_2C8FF8;
  objc_copyWeak(&v4, (a1 + 32));
  dispatch_after(v2, &_dispatch_main_q, block);
  objc_destroyWeak(&v4);
}

void sub_164090(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained resetButtonState];
}

void sub_166064(uint64_t a1)
{
  v2 = *(a1 + 40);
  *(*(a1 + 32) + 48) = 0;
  v3 = *(a1 + 32);
  v4 = v3[5];
  if (v2 == v4)
  {
    v3[5] = 0;
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 64));
    [WeakRetained hoverInteractionDidSettle:*(a1 + 32)];
  }

  else if (v4)
  {

    [v3 _checkIfSettledWithTime:?];
  }
}

void sub_166278(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_166334;
  v7[3] = &unk_2CEA40;
  v10 = *(a1 + 40);
  v8 = *(a1 + 32);
  v9 = v5;
  v6 = v5;
  [a3 enumerateObjectsUsingBlock:v7];
}

id sub_166334(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  [a2 CGRectValue];
  result = CGRectContainsPoint(v7, *(a1 + 48));
  if (result)
  {
    result = [*(a1 + 32) addObject:*(a1 + 40)];
    *a4 = 1;
  }

  return result;
}

uint64_t ClampImageSize(uint64_t result, int a2, void *a3)
{
  if (result)
  {
    v4 = result;
    v5 = *result;
    v6 = *(result + 8);
    if (a2 && v5.f64[0] == 0.0 && v6 == 0.0)
    {
      return 0;
    }

    v7.i32[0] = vuzp1_s16(vmovn_s64(vcgtq_f64(v5, vdupq_n_s64(0x40B0000000000000uLL))), *&v5.f64[0]).u32[0];
    __asm { FMOV            V3.2D, #16.0 }

    v7.i32[1] = vuzp1_s16(*&v5, vmovn_s64(vcgtq_f64(_Q3, v5))).i32[1];
    if ((vmaxv_u16(v7) & 1) == 0)
    {
      return 0;
    }

    else
    {
      if (a3)
      {
        v20[0] = @"BICDescribedImageWidth";
        v18 = _Q3;
        v19 = v5;
        v13 = [NSNumber numberWithDouble:?];
        v20[1] = @"BICDescribedImageHeight";
        v21[0] = v13;
        v14 = [NSNumber numberWithDouble:v6];
        v21[1] = v14;
        v15 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:2];
        *a3 = [NSError errorWithDomain:@"BICDescribedImageErrorDomain" code:0 userInfo:v15];

        _Q3 = v18;
        v5 = v19;
      }

      v16 = vmaxnmq_f64(v5, _Q3);
      v17 = vdupq_n_s64(0x40B0000000000000uLL);
      *v4 = vbslq_s8(vcgtq_f64(v16, v17), v17, v16);
      return 1;
    }
  }

  return result;
}

void BCReportAssertionFailureWithMessage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = a5;
  if ([v13 length])
  {
    v14 = [[NSString alloc] initWithFormat:v13 arguments:&a9];
    if (!a1)
    {
      goto LABEL_6;
    }

LABEL_5:
    v15 = [NSString stringWithCString:a1 encoding:1];
    v16 = [v15 lastPathComponent];

    if (v16)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v14 = &stru_2D2930;
  if (a1)
  {
    goto LABEL_5;
  }

LABEL_6:
  v16 = &stru_2D2930;
LABEL_7:
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v17 = [NSNumber numberWithInt:a2];
    *buf = 136316162;
    v19 = a4;
    v20 = 2080;
    v21 = a3;
    v22 = 2112;
    v23 = v16;
    v24 = 2112;
    v25 = v17;
    v26 = 2112;
    v27 = v14;
    _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure: %s in %s - %@:%@ %@", buf, 0x34u);
  }
}

id sub_16B288(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) objectForKey:a2];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 attributeType];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_16D5C4(uint64_t a1)
{
  v1 = objc_alloc_init(objc_opt_class());
  qword_346028 = v1;

  return _objc_release_x1(v1);
}

void sub_16DD78(uint64_t a1)
{
  v2 = dispatch_group_create();
  v3 = objc_alloc_init(NSMutableArray);
  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x3032000000;
  v38[3] = sub_16E114;
  v38[4] = sub_16E124;
  v39 = 0;
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x3032000000;
  v36[3] = sub_16E114;
  v36[4] = sub_16E124;
  v37 = 0;
  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v5 = dispatch_queue_create("com.apple.iBooks.AEUserPublishing", v4);

  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_16E12C;
  v31[3] = &unk_2CEB60;
  queue = v5;
  v32 = queue;
  v34 = v38;
  v35 = v36;
  v18 = v3;
  v33 = v18;
  v20 = objc_retainBlock(v31);
  v6 = [*(a1 + 32) count];
  if (v6)
  {
    v7 = 0;
    v8 = 0;
    v9 = AMSLookupMaximumBatchSize;
    v10 = AMSLookupMaximumBatchSize;
    do
    {
      if (v6 >= v10)
      {
        v11 = v10;
      }

      else
      {
        v11 = v6;
      }

      dispatch_group_enter(v2);
      v12 = objc_alloc(*(a1 + 56));
      v13 = [*(a1 + 32) subarrayWithRange:{v8, &v11[v7]}];
      v14 = [v12 initWithAdamIDs:v13 keyProfile:*(a1 + 40)];

      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_16E2D4;
      v26[3] = &unk_2CEB88;
      v30 = v20;
      v15 = v14;
      v27 = v15;
      v28 = *(a1 + 32);
      v16 = v2;
      v29 = v16;
      [v15 startWithLookupBlock:v26];
      v8 += v9;
      dispatch_group_wait(v16, 0xFFFFFFFFFFFFFFFFLL);

      v10 += v9;
      v7 -= v9;
    }

    while (v8 < v6);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_16E4F4;
  block[3] = &unk_2CEBB0;
  v22 = v18;
  v23 = *(a1 + 48);
  v24 = v36;
  v25 = v38;
  v17 = v18;
  dispatch_async(queue, block);

  _Block_object_dispose(v36, 8);
  _Block_object_dispose(v38, 8);
}

void sub_16E0EC(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 200), 8);
  _Block_object_dispose((v1 - 152), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_16E114(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_16E12C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 32);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_16E244;
  block[3] = &unk_2CEB38;
  v11 = *(a1 + 56);
  v18 = v9;
  v19 = v8;
  v22 = v11;
  v20 = v7;
  v16 = *(a1 + 40);
  v12 = v16;
  v21 = v16;
  v13 = v7;
  v14 = v8;
  v15 = v9;
  dispatch_async(v10, block);
}

void sub_16E244(uint64_t a1)
{
  v2 = *(*(a1 + 64) + 8);
  v4 = *(v2 + 40);
  v3 = (v2 + 40);
  if (!v4)
  {
    objc_storeStrong(v3, *(a1 + 32));
  }

  if ([*(*(*(a1 + 72) + 8) + 40) compare:*(a1 + 40)] == -1)
  {
    v5 = *(*(a1 + 72) + 8);
  }

  else
  {
    v5 = a1;
  }

  objc_storeStrong((*(*(a1 + 72) + 8) + 40), *(v5 + 40));
  if (*(a1 + 48))
  {
    v6 = *(a1 + 56);

    [v6 addObject:?];
  }
}

void sub_16E2D4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v6 = [objc_opt_class() resultsDictionaryFromLookupResult:v5];
    v17 = [v5 expirationDate];
    v7 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v6, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v18 = a1;
    v8 = *(a1 + 40);
    v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v20;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v19 + 1) + 8 * i);
          v14 = [v6 objectForKeyedSubscript:v13];
          if (v14)
          {
            v15 = [[AEUserPublishingProductProfile alloc] initWithProfileDictionary:v14];
            if (v15)
            {
              [v7 setObject:v15 forKeyedSubscript:v13];
            }
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v10);
    }

    a1 = v18;
    (*(*(v18 + 56) + 16))();
  }

  dispatch_group_leave(*(a1 + 48));
  v16 = objc_opt_self();
}

void sub_16E4F4(uint64_t a1)
{
  if ([*(a1 + 32) count] > 1)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v3 = *(a1 + 32);
    v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v5 = v4;
      v2 = 0;
      v6 = *v11;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v10 + 1) + 8 * i);
          if (v2)
          {
            [v2 addEntriesFromDictionary:*(*(&v10 + 1) + 8 * i)];
          }

          else
          {
            v9 = [NSMutableDictionary alloc];
            v2 = [v9 initWithDictionary:{v8, v10}];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v5);
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = [*(a1 + 32) firstObject];
  }

  (*(*(a1 + 40) + 16))();
}

void sub_16EA94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  _Block_object_dispose(&a20, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v25 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_16EACC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v7;
  v18 = v7;
  v11 = a3;

  v12 = *(*(a1 + 48) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v8;
  v14 = v8;

  objc_opt_class();
  v15 = BUDynamicCast();

  v16 = *(*(a1 + 56) + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = v15;

  dispatch_semaphore_signal(*(a1 + 32));
}

BOOL AEAnnotationEditorTagEqualToAEAnnotationStyle(uint64_t a1, int a2)
{
  v2 = a2 == 4;
  v3 = a2 == 5;
  v4 = a2 == 6;
  if (a1 != 6)
  {
    v4 = 0;
  }

  if (a1 != 5)
  {
    v3 = v4;
  }

  if (a1 != 4)
  {
    v2 = v3;
  }

  v5 = a2 == 3;
  v6 = a2 == 1;
  v7 = a2 == 2;
  if (a1 != 3)
  {
    v7 = 0;
  }

  if (a1 != 2)
  {
    v6 = v7;
  }

  if (a1 != 1)
  {
    v5 = v6;
  }

  if (a1 <= 3)
  {
    return v5;
  }

  else
  {
    return v2;
  }
}

void sub_171844(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 annotation];
  [v1 p_removeAnnotation:v2];
}

void sub_171DC0(uint64_t a1)
{
  [*(a1 + 32) set];
  v2 = [UIBezierPath bezierPathWithOvalInRect:*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)];
  [v2 fill];
}

void sub_171F30(uint64_t a1)
{
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_172214;
  v36[3] = &unk_2CEC78;
  v36[4] = *(a1 + 32);
  v1 = objc_retainBlock(v36);
  v2 = (v1[2])(v1, 4);
  v3 = qword_346038;
  qword_346038 = v2;

  v4 = (v1[2])(v1, 0);
  v5 = qword_346040;
  qword_346040 = v4;

  v6 = (v1[2])(v1, 1);
  v7 = qword_346048;
  qword_346048 = v6;

  v8 = (v1[2])(v1, 2);
  v9 = qword_346050;
  qword_346050 = v8;

  v10 = (v1[2])(v1, 3);
  v11 = qword_346058;
  qword_346058 = v10;

  v12 = (v1[2])(v1, 5);
  v13 = qword_346060;
  qword_346060 = v12;

  v14 = (v1[2])(v1, 11);
  v15 = qword_346068;
  qword_346068 = v14;

  v16 = (v1[2])(v1, 6);
  v17 = qword_346070;
  qword_346070 = v16;

  v18 = (v1[2])(v1, 12);
  v19 = qword_346078;
  qword_346078 = v18;

  v20 = (v1[2])(v1, 7);
  v21 = qword_346080;
  qword_346080 = v20;

  v22 = (v1[2])(v1, 13);
  v23 = qword_346088;
  qword_346088 = v22;

  v24 = (v1[2])(v1, 8);
  v25 = qword_346090;
  qword_346090 = v24;

  v26 = (v1[2])(v1, 14);
  v27 = qword_346098;
  qword_346098 = v26;

  v28 = (v1[2])(v1, 9);
  v29 = qword_3460A0;
  qword_3460A0 = v28;

  v30 = (v1[2])(v1, 15);
  v31 = qword_3460A8;
  qword_3460A8 = v30;

  v32 = (v1[2])(v1, 10);
  v33 = qword_3460B0;
  qword_3460B0 = v32;

  v34 = (v1[2])(v1, 16);
  v35 = qword_3460B8;
  qword_3460B8 = v34;
}

id sub_172214(uint64_t a1, uint64_t a2)
{
  v18[0] = &off_2E6A10;
  v17 = [*(a1 + 32) p_themeForStyle:1 pageTheme:a2];
  v16 = [v17 highlightColor];
  v19[0] = v16;
  v18[1] = &off_2E6A28;
  v15 = [*(a1 + 32) p_themeForStyle:2 pageTheme:a2];
  v4 = [v15 highlightColor];
  v19[1] = v4;
  v18[2] = &off_2E6A40;
  v5 = [*(a1 + 32) p_themeForStyle:3 pageTheme:a2];
  v6 = [v5 highlightColor];
  v19[2] = v6;
  v18[3] = &off_2E6A58;
  v7 = [*(a1 + 32) p_themeForStyle:4 pageTheme:a2];
  v8 = [v7 highlightColor];
  v19[3] = v8;
  v18[4] = &off_2E6A70;
  v9 = [*(a1 + 32) p_themeForStyle:5 pageTheme:a2];
  v10 = [v9 highlightColor];
  v19[4] = v10;
  v18[5] = &off_2E6A88;
  v11 = [*(a1 + 32) p_themeForStyle:6 pageTheme:a2];
  v12 = [v11 noteFillColor];
  v19[5] = v12;
  v13 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:6];

  return v13;
}

void sub_172934(uint64_t a1)
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_172A68;
  v12[3] = &unk_2CEC78;
  v12[4] = *(a1 + 32);
  v1 = objc_retainBlock(v12);
  v2 = (v1[2])(v1, 4);
  v3 = qword_3460C8;
  qword_3460C8 = v2;

  v4 = (v1[2])(v1, 0);
  v5 = qword_3460D0;
  qword_3460D0 = v4;

  v6 = (v1[2])(v1, 1);
  v7 = qword_3460D8;
  qword_3460D8 = v6;

  v8 = (v1[2])(v1, 2);
  v9 = qword_3460E0;
  qword_3460E0 = v8;

  v10 = (v1[2])(v1, 3);
  v11 = qword_3460E8;
  qword_3460E8 = v10;
}

id sub_172A68(uint64_t a1, uint64_t a2)
{
  v22[0] = &off_2E6A10;
  v4 = *(a1 + 32);
  v21 = [v4 p_colorForTag:1 pageTheme:a2];
  v20 = [v4 p_colorControlImageForColor:v21];
  v23[0] = v20;
  v22[1] = &off_2E6A28;
  v5 = *(a1 + 32);
  v6 = [v5 p_colorForTag:2 pageTheme:a2];
  v7 = [v5 p_colorControlImageForColor:v6];
  v23[1] = v7;
  v22[2] = &off_2E6A40;
  v8 = *(a1 + 32);
  v9 = [v8 p_colorForTag:3 pageTheme:a2];
  v10 = [v8 p_colorControlImageForColor:v9];
  v23[2] = v10;
  v22[3] = &off_2E6A58;
  v11 = *(a1 + 32);
  v12 = [v11 p_colorForTag:4 pageTheme:a2];
  v13 = [v11 p_colorControlImageForColor:v12];
  v23[3] = v13;
  v22[4] = &off_2E6A70;
  v14 = *(a1 + 32);
  v15 = [v14 p_colorForTag:5 pageTheme:a2];
  v16 = [v14 p_colorControlImageForColor:v15];
  v23[4] = v16;
  v22[5] = &off_2E6A88;
  v17 = [*(a1 + 32) p_colorControlUnderlineImageForPageTheme:a2];
  v23[5] = v17;
  v18 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:6];

  return v18;
}

void sub_17326C(uint64_t a1)
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1733A0;
  v12[3] = &unk_2CEC78;
  v12[4] = *(a1 + 32);
  v1 = objc_retainBlock(v12);
  v2 = (v1[2])(v1, 4);
  v3 = qword_3460F8;
  qword_3460F8 = v2;

  v4 = (v1[2])(v1, 0);
  v5 = qword_346100;
  qword_346100 = v4;

  v6 = (v1[2])(v1, 1);
  v7 = qword_346108;
  qword_346108 = v6;

  v8 = (v1[2])(v1, 2);
  v9 = qword_346110;
  qword_346110 = v8;

  v10 = (v1[2])(v1, 3);
  v11 = qword_346118;
  qword_346118 = v10;
}

id sub_1733A0(uint64_t a1, uint64_t a2)
{
  v12[0] = &off_2E6A10;
  v4 = [*(a1 + 32) p_buildPaletteImageForFrontTag:1 middleTag:2 backTag:3 pageTheme:a2];
  v13[0] = v4;
  v12[1] = &off_2E6A28;
  v5 = [*(a1 + 32) p_buildPaletteImageForFrontTag:2 middleTag:3 backTag:5 pageTheme:a2];
  v13[1] = v5;
  v12[2] = &off_2E6A40;
  v6 = [*(a1 + 32) p_buildPaletteImageForFrontTag:3 middleTag:4 backTag:5 pageTheme:a2];
  v13[2] = v6;
  v12[3] = &off_2E6A58;
  v7 = [*(a1 + 32) p_buildPaletteImageForFrontTag:4 middleTag:5 backTag:2 pageTheme:a2];
  v13[3] = v7;
  v12[4] = &off_2E6A70;
  v8 = [*(a1 + 32) p_buildPaletteImageForFrontTag:5 middleTag:1 backTag:2 pageTheme:a2];
  v13[4] = v8;
  v12[5] = &off_2E6A88;
  v9 = [*(a1 + 32) p_buildPaletteImageForFrontTag:6 middleTag:2 backTag:3 pageTheme:a2];
  v13[5] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:6];

  return v10;
}

void sub_173794(uint64_t a1)
{
  v2 = IMCommonCoreBundle(a1);
  v3 = [UIImage imageNamed:@"ib_text_pop_icon_note" inBundle:v2];

  NSLog(@"stencil = %@", v3);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_17392C;
  v16[3] = &unk_2CECA0;
  v16[4] = *(a1 + 32);
  v17 = v3;
  v4 = v3;
  v5 = objc_retainBlock(v16);
  v6 = (v5[2])(v5, 4);
  v7 = qword_346128;
  qword_346128 = v6;

  v8 = (v5[2])(v5, 0);
  v9 = qword_346130;
  qword_346130 = v8;

  v10 = (v5[2])(v5, 1);
  v11 = qword_346138;
  qword_346138 = v10;

  v12 = (v5[2])(v5, 2);
  v13 = qword_346140;
  qword_346140 = v12;

  v14 = (v5[2])(v5, 3);
  v15 = qword_346148;
  qword_346148 = v14;
}

id sub_17392C(uint64_t a1, uint64_t a2)
{
  v30[0] = &off_2E6A10;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v29 = [v4 p_colorForTag:1 pageTheme:a2];
  v28 = [v4 p_monochromaticImageFromImage:v5 withColor:v29];
  v31[0] = v28;
  v30[1] = &off_2E6A28;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v27 = [v6 p_colorForTag:2 pageTheme:a2];
  v26 = [v6 p_monochromaticImageFromImage:v7 withColor:v27];
  v31[1] = v26;
  v30[2] = &off_2E6A40;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = [v8 p_colorForTag:3 pageTheme:a2];
  v11 = [v8 p_monochromaticImageFromImage:v9 withColor:v10];
  v31[2] = v11;
  v30[3] = &off_2E6A58;
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v14 = [v12 p_colorForTag:4 pageTheme:a2];
  v15 = [v12 p_monochromaticImageFromImage:v13 withColor:v14];
  v31[3] = v15;
  v30[4] = &off_2E6A70;
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  v18 = [v16 p_colorForTag:5 pageTheme:a2];
  v19 = [v16 p_monochromaticImageFromImage:v17 withColor:v18];
  v31[4] = v19;
  v30[5] = &off_2E6A88;
  v20 = *(a1 + 32);
  v21 = *(a1 + 40);
  v22 = [v20 p_colorForTag:6 pageTheme:a2];
  v23 = [v20 p_monochromaticImageFromImage:v21 withColor:v22];
  v31[5] = v23;
  v24 = [NSDictionary dictionaryWithObjects:v31 forKeys:v30 count:6];

  return v24;
}

void sub_1741C0(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 messageViewController:*(a1 + 32) didFailWithError:*(a1 + 40)];
}

void sub_174634(void *a1, CGColorSpace *a2, const CGFloat *a3)
{
  v5 = a1;
  v6 = CGColorCreate(a2, a3);
  [v5 setBorderColor:v6];

  CGColorRelease(v6);
}

void sub_1748B4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _setDescribedImage:*(a1 + 32)];
}

void BCNormalizedInsetsForRects(double a1, double a2, double a3, double a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  IsEmpty = CGRectIsEmpty(*&a1);
  if (IsEmpty)
  {
    v17 = BCCoverAnimationLog(IsEmpty);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_1ED200(v17, a1, a2, a3, a4);
    }
  }

  else
  {
    v18.origin.x = a5;
    v18.origin.y = a6;
    v18.size.width = a7;
    v18.size.height = a8;
    CGRectGetMinX(v18);
    v19.origin.x = a1;
    v19.origin.y = a2;
    v19.size.width = a3;
    v19.size.height = a4;
    CGRectGetMinX(v19);
    v20.origin.x = a5;
    v20.origin.y = a6;
    v20.size.width = a7;
    v20.size.height = a8;
    CGRectGetMinY(v20);
    v21.origin.x = a1;
    v21.origin.y = a2;
    v21.size.width = a3;
    v21.size.height = a4;
    CGRectGetMinY(v21);
    v22.origin.x = a1;
    v22.origin.y = a2;
    v22.size.width = a3;
    v22.size.height = a4;
    CGRectGetMaxX(v22);
    v23.origin.x = a5;
    v23.origin.y = a6;
    v23.size.width = a7;
    v23.size.height = a8;
    CGRectGetMaxX(v23);
    v24.origin.x = a1;
    v24.origin.y = a2;
    v24.size.width = a3;
    v24.size.height = a4;
    CGRectGetMaxY(v24);
    v25.origin.x = a5;
    v25.origin.y = a6;
    v25.size.width = a7;
    v25.size.height = a8;
    CGRectGetMaxY(v25);
  }
}

double BCRectByUnapplyingNormalizedInsets(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v18 = a6 + a8;
  if (a6 + a8 >= 1.0 || a5 + a7 >= 1.0)
  {
    v21 = a1;
    sub_1ED298(a9, a10, a11, a12, a13, a14, a15, a16);
    a1 = v21;
  }

  return a1 - a6 * (a3 / (1.0 - v18));
}

id sub_176D7C(uint64_t a1)
{
  [*(a1 + 32) setValue:&__kCFBooleanTrue forKey:@"bc_isPresentingCardStack"];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  v5 = *(a1 + 48);

  return [v2 presentViewController:v3 animated:v4 completion:v5];
}

void sub_176ED4(uint64_t a1)
{
  UIAccessibilityPostNotification(UIAccessibilityLayoutChangedNotification, 0);
  v2 = objc_retainBlock(*(a1 + 32));
  if (v2)
  {
    v3 = v2;
    v2[2]();
    v2 = v3;
  }
}