void sub_10000284C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v30 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100002870(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100002888(uint64_t a1, void *a2)
{
  v3 = [a2 copy];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(a1 + 32);

  dispatch_group_leave(v6);
}

uint64_t sub_1000028D8(uint64_t a1, void *a2)
{
  *(*(*(a1 + 32) + 8) + 40) = [a2 copy];

  return _objc_release_x1();
}

void sub_100002920(uint64_t a1)
{
  v2 = [*(*(*(a1 + 64) + 8) + 40) derivedPersonalizationData];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [[FCDerivedPersonalizationData alloc] initWithAggregates:&__NSDictionary0__struct scoringType:0 decayRate:0.0];
  }

  v5 = v4;

  v6 = [[FCReadonlyPersonalizationAggregateStore alloc] initWithGenerator:v5];
  v7 = [*(a1 + 32) feedPersonalizerFactory];
  v8 = [v7 newFeedPersonalizerWithAggregateStore:v6 appConfigurationManager:*(a1 + 40) todayPrivateData:*(*(*(a1 + 64) + 8) + 40)];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100002A9C;
  v11[3] = &unk_100024C18;
  v12 = v8;
  v13 = *(a1 + 48);
  v14 = v6;
  v16 = vextq_s8(*(a1 + 64), *(a1 + 64), 8uLL);
  v15 = *(a1 + 56);
  v9 = v6;
  v10 = v8;
  [v10 prepareForUseWithCompletionHandler:v11];
}

void sub_100002A9C(uint64_t a1)
{
  v8 = [*(a1 + 32) sortItems:*(a1 + 40) options:1 configurationSet:18];
  v2 = [*(*(*(a1 + 64) + 8) + 40) personalizationTreatment];
  v3 = [*(a1 + 48) baselineAggregateWithConfigurableValues:v2];
  v4 = [v2 notificationScoringConfig];
  [v4 decayFactor];
  [v3 personalizationValueWithBaseline:0 decayRate:?];
  v6 = v5;

  v7 = [[FRArticleNotificationPersonalizerResult alloc] initWithItems:v8 baselineClickThroughRate:*(*(*(a1 + 72) + 8) + 40) todayData:v6];
  (*(*(a1 + 56) + 16))();
}

void sub_1000030FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100003118(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  +[NSThread isMainThread];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v10 = v6;
  v11 = *(a1 + 32);
  v8 = v5;
  v9 = v6;
  FCPerformIfNonNil();
}

void sub_100003208(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!*(a1 + 32))
  {
    v5 = [*(a1 + 40) headline];
    v46[0] = 0;
    v46[1] = v46;
    v46[2] = 0x3032000000;
    v46[3] = sub_100003684;
    v46[4] = sub_100003694;
    v47 = 0;
    v44[0] = 0;
    v44[1] = v44;
    v44[2] = 0x3032000000;
    v44[3] = sub_100003684;
    v44[4] = sub_100003694;
    v45 = 0;
    v42[0] = 0;
    v42[1] = v42;
    v42[2] = 0x3032000000;
    v42[3] = sub_100003684;
    v42[4] = sub_100003694;
    v43 = 0;
    v6 = [v5 thumbnailHQ];
    v32 = [v6 thumbnailAssetHandle];

    v7 = [v5 sourceChannel];
    v8 = [v7 theme];
    v9 = [v8 bannerImageForWhiteBackground];
    v10 = [v8 bannerImageForMask];
    v11 = [v9 assetHandle];
    v31 = v10;
    v12 = [v10 assetHandle];
    v13 = v12;
    v28 = v9;
    v29 = v7;
    v30 = v3;
    if (!v32 && !v11 && !v12)
    {
      v14 = [NSSArticleInternal alloc];
      v15 = [v5 title];
      v16 = [v5 shortExcerpt];
      v17 = [v5 publishDate];
      v18 = [v5 sourceName];
      v19 = [v14 initWithThumbnailImage:0 title:v15 shortExcerpt:v16 publishDate:v17 publisherName:v18 publisherLogoImage:0 publisherLogoMaskImage:0];

      v20 = *(a1 + 48);
      if (v20)
      {
        (*(v20 + 16))(v20, v19);
      }

      goto LABEL_17;
    }

    v19 = dispatch_group_create();
    if (v32)
    {
      v21 = [v32 downloadIfNeededWithGroup:v19];
    }

    v22 = +[UIScreen mainScreen];
    v23 = [v22 traitCollection];
    v24 = [v23 userInterfaceStyle];

    if (v24 == 2)
    {
      v25 = v11;
      if (!v11)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v25 = v13;
      if (!v13)
      {
LABEL_16:
        v27 = FCDispatchQueueForQualityOfService();
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10000369C;
        block[3] = &unk_100024C90;
        v34 = v32;
        v39 = v46;
        v35 = v11;
        v40 = v44;
        v36 = v13;
        v41 = v42;
        v37 = v5;
        v38 = *(a1 + 48);
        dispatch_group_notify(v19, v27, block);

LABEL_17:
        _Block_object_dispose(v42, 8);

        _Block_object_dispose(v44, 8);
        _Block_object_dispose(v46, 8);

        v3 = v30;
        goto LABEL_18;
      }
    }

    v26 = [v25 downloadIfNeededWithGroup:v19];
    goto LABEL_16;
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    (*(v4 + 16))(v4, 0);
  }

LABEL_18:
}

void sub_100003634(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, ...)
{
  va_start(va, a27);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v27 - 184), 8);
  _Block_object_dispose((v27 - 136), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100003684(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000369C(uint64_t a1)
{
  v2 = [*(a1 + 32) filePath];
  if ([v2 length])
  {
    v3 = [UIImage imageWithContentsOfFile:v2];
    v4 = *(*(a1 + 72) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }

  v6 = [*(a1 + 40) filePath];
  if ([v6 length])
  {
    v7 = [UIImage imageWithContentsOfFile:v6];
    v8 = *(*(a1 + 80) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  v10 = [*(a1 + 48) filePath];
  if ([v10 length])
  {
    v11 = [UIImage imageWithContentsOfFile:v10];
    v12 = [v11 imageWithRenderingMode:2];
    v13 = *(*(a1 + 88) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003838;
  block[3] = &unk_100024C68;
  v18 = *(a1 + 72);
  v16 = *(a1 + 56);
  v19 = *(a1 + 80);
  v17 = *(a1 + 64);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_100003838(uint64_t a1)
{
  v2 = [NSSArticleInternal alloc];
  v3 = *(*(*(a1 + 48) + 8) + 40);
  v4 = [*(a1 + 32) title];
  v5 = [*(a1 + 32) shortExcerpt];
  v6 = [*(a1 + 32) publishDate];
  v7 = [*(a1 + 32) sourceName];
  v9 = [v2 initWithThumbnailImage:v3 title:v4 shortExcerpt:v5 publishDate:v6 publisherName:v7 publisherLogoImage:*(*(*(a1 + 56) + 8) + 40) publisherLogoMaskImage:*(*(*(a1 + 64) + 8) + 40)];

  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, v9);
  }
}

void sub_100004560(uint64_t a1)
{
  v2 = FRArticleNotificationServiceSharedLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Aborting prefetch since kettle prefetching is disabled per the notification behavior flags", v5, 2u);
  }

  v3 = *(a1 + 32);
  v4 = [v3 bestAttemptContent];
  [v3 finalizeContent:v4];
}

void sub_1000045F0(uint64_t a1)
{
  v2 = FRArticleNotificationServiceSharedLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Aborting prefetch because notification interruption level + device settings will bypass digest", v5, 2u);
  }

  v3 = *(a1 + 32);
  v4 = [v3 bestAttemptContent];
  [v3 finalizeContent:v4];
}

void sub_100004680(uint64_t a1)
{
  v2 = FRArticleNotificationServiceSharedLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Aborting prefetch since prefetching is disabled", v5, 2u);
  }

  v3 = *(a1 + 32);
  v4 = [v3 bestAttemptContent];
  [v3 finalizeContent:v4];
}

void sub_100004710(uint64_t a1)
{
  v2 = FRArticleNotificationServiceSharedLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Aborting prefetch since device does not have watch paired", v5, 2u);
  }

  v3 = *(a1 + 32);
  v4 = [v3 bestAttemptContent];
  [v3 finalizeContent:v4];
}

void sub_1000047A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7)
{
  v13 = a6;
  v14 = a7;
  v15 = v14;
  if (v14)
  {
    v16 = FRArticleNotificationServiceSharedLog(v14);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v28 = 138412290;
      v29 = v15;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Fetch thumbnailURL and publisherLogoURL failed with error: %@", &v28, 0xCu);
    }
  }

  else
  {
    v17 = [*(a1 + 32) notificationAttachmentsWithThumbnailFileURL:a2 publisherLogoFileURL:a3 publisherLogoMaskFileURL:a4 publisherLogoCompactFileURL:a5 isKettleDigestEnabled:*(a1 + 56)];
    v18 = [*(a1 + 32) bestAttemptContent];
    [v18 setAttachments:v17];

    if (v13)
    {
      v20 = [*(a1 + 40) mutableCopy];
      v21 = [NSData dataWithContentsOfURL:v13];
      [v20 setObject:v21 forKeyedSubscript:FCNotificationPayloadFlintDocumentAssetDataKey];

      v22 = [*(a1 + 48) mutableCopy];
      [v22 setObject:v20 forKeyedSubscript:FCNotificationPayloadNewsKey];
      v23 = [*(a1 + 32) bestAttemptContent];
      [v23 setUserInfo:v22];
    }

    v16 = FRArticleNotificationServiceSharedLog(v19);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v24 = [*(a1 + 32) bestAttemptContent];
      v25 = [v24 attachments];
      v28 = 134217984;
      v29 = [v25 count];
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Attached %lu attachments to notification.", &v28, 0xCu);
    }
  }

  v26 = *(a1 + 32);
  v27 = [v26 bestAttemptContent];
  [v26 finalizeContent:v27];
}

void sub_10000529C(uint64_t a1)
{
  v2 = FRArticleNotificationServiceSharedLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Unable to create FCNotificationArticleHeadline from userInfo, skipping personalization.", v4, 2u);
  }

  v3 = [*(a1 + 32) contentHandler];
  v3[2](v3, *(a1 + 40));
}

void sub_10000532C(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000053A4;
  block[3] = &unk_100024D08;
  block[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_1000053A4(uint64_t a1)
{
  v3 = [*(a1 + 32) contentHandler];
  v2 = [*(a1 + 32) bestAttemptContent];
  v3[2](v3, v2);
}

void sub_100005418(uint64_t a1, void *a2)
{
  v3 = [a2 items];
  v4 = [v3 scoreProfiles];
  v5 = [v4 objectForKey:*(a1 + 32)];

  [v5 personalizationScore];
  v7 = v6;
  v8 = [*(a1 + 40) bestAttemptContent];
  [v8 setRelevanceScore:v7];

  v10 = FRArticleNotificationServiceSharedLog(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = [*(a1 + 40) bestAttemptContent];
    [v11 relevanceScore];
    *buf = 134217984;
    v17 = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Post processing notification with relevanceScore: %f", buf, 0xCu);
  }

  v13 = [*(a1 + 40) postProcessCoordinator];
  v14 = [*(a1 + 40) bestAttemptContent];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000055C8;
  v15[3] = &unk_100024D08;
  v15[4] = *(a1 + 40);
  [v13 notificationArrived:v14 completionHandler:v15];
}

void sub_1000055C8(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100005640;
  block[3] = &unk_100024D08;
  block[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_100005640(uint64_t a1)
{
  v3 = [*(a1 + 32) contentHandler];
  v2 = [*(a1 + 32) bestAttemptContent];
  v3[2](v3, v2);
}

id FRArticleNotificationServiceSharedLog(uint64_t a1)
{
  if (qword_10002A080 != -1)
  {
    sub_10001A7C8();
  }

  v2 = qword_10002A088;

  return v2;
}

void sub_1000057C0(id a1)
{
  qword_10002A088 = os_log_create("com.apple.news.newsnotificationserviceextension", "General");

  _objc_release_x1();
}

void sub_100006034(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a65, 8);
  _Block_object_dispose(&STACK[0x228], 8);
  _Block_object_dispose((v65 - 224), 8);
  _Block_object_dispose((v65 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000060B0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000060C8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v15 = 138412546;
    v16 = v5;
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "ArticleSource: Thumb DONE: %@ - %@", &v15, 0x16u);
  }

  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v9 = v5;

  v10 = *(*(a1 + 48) + 8);
  v13 = *(v10 + 40);
  v11 = (v10 + 40);
  v12 = v13;
  if (v13)
  {
    v14 = v12;
  }

  else
  {
    v14 = v6;
  }

  objc_storeStrong(v11, v14);
  dispatch_group_leave(*(a1 + 32));
}

void sub_1000061D4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v15 = 138412546;
    v16 = v5;
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "ArticleSource: Dark Style Logo DONE: %@ - %@", &v15, 0x16u);
  }

  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v9 = v5;

  v10 = *(*(a1 + 48) + 8);
  v13 = *(v10 + 40);
  v11 = (v10 + 40);
  v12 = v13;
  if (v13)
  {
    v14 = v12;
  }

  else
  {
    v14 = v6;
  }

  objc_storeStrong(v11, v14);
  dispatch_group_leave(*(a1 + 32));
}

void sub_1000062E0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v15 = 138412546;
    v16 = v5;
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "ArticleSource: Logo DONE: %@ - %@", &v15, 0x16u);
  }

  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v9 = v5;

  v10 = *(*(a1 + 48) + 8);
  v13 = *(v10 + 40);
  v11 = (v10 + 40);
  v12 = v13;
  if (v13)
  {
    v14 = v12;
  }

  else
  {
    v14 = v6;
  }

  objc_storeStrong(v11, v14);
  dispatch_group_leave(*(a1 + 32));
}

void sub_1000063EC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v15 = 138412546;
    v16 = v5;
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "ArticleSource: Compact logo DONE: %@ - %@", &v15, 0x16u);
  }

  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v9 = v5;

  v10 = *(*(a1 + 48) + 8);
  v13 = *(v10 + 40);
  v11 = (v10 + 40);
  v12 = v13;
  if (v13)
  {
    v14 = v12;
  }

  else
  {
    v14 = v6;
  }

  objc_storeStrong(v11, v14);
  dispatch_group_leave(*(a1 + 32));
}

void sub_1000064F8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v15 = 138412546;
    v16 = v5;
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "ArticleSource: Flint document DONE: %@ - %@", &v15, 0x16u);
  }

  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v9 = v5;

  v10 = *(*(a1 + 48) + 8);
  v13 = *(v10 + 40);
  v11 = (v10 + 40);
  v12 = v13;
  if (v13)
  {
    v14 = v12;
  }

  else
  {
    v14 = v6;
  }

  objc_storeStrong(v11, v14);
  dispatch_group_leave(*(a1 + 32));
}

void sub_100006604(uint64_t a1)
{
  [*(a1 + 32) _cleanupFilesInDirectory:*(a1 + 40)];
  v2 = *(a1 + 48);

  dispatch_group_leave(v2);
}

uint64_t sub_100006644(void *a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v2 = *(*(a1[5] + 8) + 40);
    v3 = *(*(a1[6] + 8) + 40);
    v4 = *(*(a1[7] + 8) + 40);
    v5 = *(*(a1[8] + 8) + 40);
    v6 = *(*(a1[9] + 8) + 40);
    v7 = *(*(a1[10] + 8) + 40);
    v9 = 138413570;
    v10 = v2;
    v11 = 2112;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    v15 = 2112;
    v16 = v5;
    v17 = 2112;
    v18 = v6;
    v19 = 2112;
    v20 = v7;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "ArticleSource: Group done with URLs %@, %@, %@, %@, %@ and Error: %@", &v9, 0x3Eu);
  }

  result = a1[4];
  if (result)
  {
    return (*(result + 16))(result, *(*(a1[5] + 8) + 40), *(*(a1[6] + 8) + 40), *(*(a1[7] + 8) + 40), *(*(a1[8] + 8) + 40), *(*(a1[9] + 8) + 40), *(*(a1[10] + 8) + 40));
  }

  return result;
}

void sub_100006DDC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v10 = *(a1 + 32);
    *buf = 138413058;
    v29 = v10;
    v30 = 2112;
    v31 = v7;
    v32 = 2112;
    v33 = v8;
    v34 = 2112;
    v35 = v9;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "ArticleSource: Download of %@. DONE: %@ - %@ - %@", buf, 0x2Au);
  }

  if (v7)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = *(a1 + 40);
    v13 = [v7 lastPathComponent];
    v14 = [v12 URLByAppendingPathComponent:v13];

    v15 = +[NSFileManager defaultManager];
    v27 = 0;
    v16 = [v15 copyItemAtURL:v7 toURL:v14 error:&v27];
    v17 = v27;

    v18 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO);
    if (v16)
    {
      if (v18)
      {
        v19 = *(a1 + 32);
        *buf = 138412802;
        v29 = v19;
        v30 = 2112;
        v31 = v7;
        v32 = 2112;
        v33 = v14;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "ArticleSource: COPIED download of %@ from %@ to %@", buf, 0x20u);
      }

      v20 = v14;
    }

    else
    {
      if (v18)
      {
        v21 = *(a1 + 32);
        v22 = *(a1 + 40);
        *buf = 138412802;
        v29 = v21;
        v30 = 2112;
        v31 = v22;
        v32 = 2112;
        v33 = v17;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "ArticleSource: Couldn't copy download of %@ to %@ - %@", buf, 0x20u);
      }

      v20 = 0;
    }

    objc_autoreleasePoolPop(v11);
    if (*(a1 + 48))
    {
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_1000070CC;
      v23[3] = &unk_100024E60;
      v26 = *(a1 + 48);
      v24 = v20;
      v25 = v9;
      dispatch_async(&_dispatch_main_q, v23);
    }
  }
}

uint64_t sub_100007140(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for ArticleNotificationPersonalizationConfigurationManager();
  v5 = objc_allocWithZone(v4);
  v6 = sub_10001AA54();
  objc_allocWithZone(v6);
  swift_unknownObjectRetain();
  v7 = sub_10001AA44();
  v8 = &v5[OBJC_IVAR____TtC32NewsNotificationServiceExtension54ArticleNotificationPersonalizationConfigurationManager_configurationManager];
  v8[3] = v6;
  v8[4] = &protocol witness table for NewsAppConfigurationManager;
  *v8 = v7;
  v11.receiver = v5;
  v11.super_class = v4;
  objc_msgSendSuper2(&v11, "init");
  sub_10001AA84();
  sub_100007384();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v9 = a1;
  return sub_10001AA74();
}

id sub_100007318(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v4, "dealloc");
}

unint64_t sub_100007384()
{
  result = qword_100029A70;
  if (!qword_100029A70)
  {
    type metadata accessor for ArticleNotificationPersonalizationConfigurationManager();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029A70);
  }

  return result;
}

unint64_t sub_1000073DC()
{
  result = sub_100013E7C(&_swiftEmptyArrayStorage);
  qword_10002B010 = &_swiftEmptyArrayStorage;
  *algn_10002B018 = result;
  return result;
}

__n128 sub_100007414(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100007420(uint64_t *a1, int a2)
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

uint64_t sub_100007468(uint64_t result, int a2, int a3)
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

uint64_t sub_1000074B4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = sub_100007C4C(&qword_100029B10, &qword_10001ED38);
  v30 = *(v3 - 8);
  v31 = v3;
  __chkstk_darwin(v3);
  v33 = v23 - v4;
  v29 = sub_100007C4C(&qword_100029B18, &qword_10001ED40);
  v24 = *(v29 - 8);
  __chkstk_darwin(v29);
  v32 = v23 - v5;
  v6 = sub_100007C4C(&qword_100029B20, &qword_10001ED48);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v23 - v8;
  v10 = sub_100007C4C(&qword_100029B28, qword_10001ED50);
  __chkstk_darwin(v10);
  v12 = v23 - v11;
  v13 = enum case for FeatureState.disabled<A>(_:);
  v15 = *(v14 + 104);
  v23[1] = v12;
  v15();
  if ([a1 respondsToSelector:"clientSideEngagementBoostEnabled"])
  {
    v28 = [a1 clientSideEngagementBoostEnabled];
  }

  else
  {
    v28 = 0;
  }

  if ([a1 respondsToSelector:"fallbackToReverseChronSorting"])
  {
    v27 = [a1 fallbackToReverseChronSorting];
  }

  else
  {
    v27 = 0;
  }

  v26 = [a1 personalizationTreatment];
  (*(v7 + 104))(v9, v13, v6);
  if ([a1 respondsToSelector:"publisherDampeningConfig"])
  {
    v25 = [a1 publisherDampeningConfig];
  }

  else
  {
    sub_100013F80(&_swiftEmptyArrayStorage);
    v16 = objc_allocWithZone(FCPersonalizationPublisherDampeningConfig);
    isa = sub_10001AB04().super.isa;

    v25 = [v16 initWithConfig:isa];
  }

  if ([a1 respondsToSelector:"shadowPublisherDampeningConfig"])
  {
    [a1 shadowPublisherDampeningConfig];
  }

  else
  {
    sub_100013F80(&_swiftEmptyArrayStorage);
    v18 = objc_allocWithZone(FCPersonalizationPublisherDampeningConfig);
    v19 = sub_10001AB04().super.isa;

    [v18 initWithConfig:v19];
  }

  if ([a1 respondsToSelector:"aggregatesInNotificationExtensionXavierEnabled"])
  {
    [a1 aggregatesInNotificationExtensionXavierEnabled];
  }

  if ([a1 respondsToSelector:"tabiScoringInNotificationExtensionEnabled"])
  {
    [a1 tabiScoringInNotificationExtensionEnabled];
  }

  (*(v24 + 104))(v32, v13, v29);
  (*(v30 + 104))(v33, v13, v31);
  v20 = objc_allocWithZone(FCStatelessPersonalizationPublisherFavorability);
  sub_100007C4C(&qword_100029B30, &unk_10001F420);
  v21 = sub_10001AB94().super.isa;
  [v20 initWithArray:v21];

  return sub_10001AA64();
}

void *sub_100007BBC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100007C00(void *a1)
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

uint64_t sub_100007C4C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

id sub_100007C94()
{
  v1 = v0;
  v2 = type metadata accessor for ArticleNotificationDeduper();
  v3 = swift_allocObject();
  sub_10001A9C4();
  swift_allocObject();
  *(v3 + 16) = sub_10001A9B4();
  v4 = type metadata accessor for ArticleNotificationClusterIdDeduper();
  v5 = swift_allocObject();
  v6 = type metadata accessor for UnwantedNotificationReporter(0);
  v7 = swift_allocObject();
  swift_allocObject();
  *(v7 + 16) = sub_10001A9B4();
  v8 = OBJC_IVAR____TtC32NewsNotificationServiceExtension28UnwantedNotificationReporter_logger;
  if (qword_100029970 != -1)
  {
    swift_once();
  }

  v9 = sub_10001AAF4();
  v10 = sub_10000C07C(v9, qword_10002B038);
  (*(*(v9 - 8) + 16))(v7 + v8, v10, v9);
  v11 = OBJC_IVAR____TtC32NewsNotificationServiceExtension28UnwantedNotificationReporter_sharedDefaults;
  *(v7 + v11) = NewsCoreUserDefaults();
  sub_100007C4C(&qword_100029BB0, &qword_10001EEB0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10001ED70;
  *(v12 + 56) = v2;
  *(v12 + 64) = &off_100025558;
  *(v12 + 32) = v3;
  *(v12 + 96) = v4;
  *(v12 + 104) = &off_100025548;
  *(v12 + 72) = v5;
  *(v12 + 136) = v6;
  *(v12 + 144) = &off_1000255B8;
  *(v12 + 112) = v7;
  *&v1[OBJC_IVAR___FRArticleNotificationPostProcessingCoordinator_processors] = v12;
  v14.receiver = v1;
  v14.super_class = type metadata accessor for PostProcessingCoordinator();
  return objc_msgSendSuper2(&v14, "init");
}

uint64_t sub_100007EB0(uint64_t a1)
{
  *(v2 + 296) = a1;
  *(v2 + 304) = v1;
  return _swift_task_switch(sub_100007ED0, 0, 0);
}

uint64_t sub_100007ED0()
{
  v1 = [objc_opt_self() currentNotificationCenter];
  v0[39] = v1;
  v0[2] = v0;
  v0[7] = v0 + 34;
  v0[3] = sub_100008010;
  v2 = swift_continuation_init();
  v0[25] = sub_100007C4C(&qword_100029B68, &qword_10001EDC8);
  v0[18] = _NSConcreteStackBlock;
  v0[19] = 1107296256;
  v0[20] = sub_100008974;
  v0[21] = &unk_1000250F8;
  v0[22] = v2;
  [v1 getNotificationSettingsWithCompletionHandler:v0 + 18];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100008010()
{

  return _swift_task_switch(sub_1000080F0, 0, 0);
}

uint64_t sub_1000080F0()
{
  v1 = v0[39];
  v0[40] = v0[34];
  v0[10] = v0;
  v0[15] = v0 + 35;
  v0[11] = sub_100008214;
  v2 = swift_continuation_init();
  v0[33] = sub_100007C4C(&qword_100029B70, &qword_10001EDD0);
  v0[26] = _NSConcreteStackBlock;
  v0[27] = 1107296256;
  v0[28] = sub_1000089D8;
  v0[29] = &unk_100025120;
  v0[30] = v2;
  [v1 getDeliveredNotificationsWithCompletionHandler:v0 + 26];

  return _swift_continuation_await(v0 + 10);
}

uint64_t sub_100008214()
{

  return _swift_task_switch(sub_1000082F4, 0, 0);
}

uint64_t sub_1000082F4()
{
  v1 = v0[40];
  v3 = v0[37];
  v2 = v0[38];
  v4 = v0[35];
  v0[41] = v4;
  v0[36] = &_swiftEmptyArrayStorage;
  v5 = swift_task_alloc();
  v0[42] = v5;
  v5[2] = v2;
  v5[3] = v3;
  v5[4] = v4;
  v5[5] = v1;
  v5[6] = v0 + 36;
  v6 = swift_task_alloc();
  v0[43] = v6;
  *v6 = v0;
  v6[1] = sub_100008410;

  return withTaskGroup<A, B>(of:returning:isolation:body:)();
}

uint64_t sub_100008410()
{

  return _swift_task_switch(sub_100008544, 0, 0);
}

uint64_t sub_100008544()
{
  v21 = v0;
  v19 = &_swiftEmptySetSingleton;
  v1 = v0[36];
  v0[44] = v1;
  sub_100009418(v1, &v19);
  v2 = v19;
  v3 = v19[2];
  if (v3)
  {
    v4 = sub_100011BFC(v19[2], 0);
    v5 = sub_10000B770(&v20, v4 + 4, v3, v2);
    v6 = v20;
    v18 = v5;

    sub_10000B8C8(v6);
    if (v18 != v3)
    {
LABEL_15:
      __break(1u);
      return withTaskGroup<A, B>(of:returning:isolation:body:)();
    }
  }

  else
  {

    v4 = &_swiftEmptyArrayStorage;
  }

  v0[45] = v4;
  v7 = v0[39];
  isa = sub_10001AB94().super.isa;
  [v7 removeDeliveredNotificationsWithIdentifiers:isa];

  v9 = *(v1 + 16);
  if (v9)
  {
    v10 = 0;
    v11 = (v1 + 40);
    v12 = &_swiftEmptyDictionarySingleton;
    while (v10 < *(v1 + 16))
    {
      ++v10;
      v13 = *v11;
      v20 = v12;

      sub_10000BAD8(v13, v13, &v20);

      v12 = v20;
      v11 += 2;
      if (v9 == v10)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

  v12 = &_swiftEmptyDictionarySingleton;
LABEL_11:
  v0[46] = v12;
  v14 = v0[39];
  v15 = swift_task_alloc();
  v0[47] = v15;
  *(v15 + 16) = v12;
  *(v15 + 24) = v14;
  v16 = swift_task_alloc();
  v0[48] = v16;
  *v16 = v0;
  v16[1] = sub_1000087C0;
  v23 = &type metadata for () + 8;

  return withTaskGroup<A, B>(of:returning:isolation:body:)();
}

uint64_t sub_1000087C0()
{

  return _swift_task_switch(sub_1000088D8, 0, 0);
}

uint64_t sub_1000088D8()
{
  v1 = *(v0[46] + 16);

  if (!v1)
  {

    goto LABEL_5;
  }

  v2 = *(v0[45] + 16);

  if (v2)
  {
LABEL_5:
    sleep(1u);
  }

  v3 = v0[39];
  v4 = v0[40];

  v5 = v0[1];

  return v5();
}

uint64_t sub_100008974(uint64_t a1, void *a2)
{
  v3 = sub_100007BBC((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return _swift_continuation_resume(v4);
}

uint64_t sub_1000089D8(uint64_t a1, uint64_t a2)
{
  v2 = *sub_100007BBC((a1 + 32), *(a1 + 56));
  sub_10000C374();
  **(*(v2 + 64) + 40) = sub_10001ABA4();

  return _swift_continuation_resume(v2);
}

uint64_t sub_100008A4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[25] = a6;
  v7[26] = a7;
  v7[23] = a4;
  v7[24] = a5;
  v7[21] = a2;
  v7[22] = a3;
  sub_100007C4C(&qword_100029B78, &qword_10001EDF8);
  v7[27] = swift_task_alloc();
  v7[28] = swift_task_alloc();
  v8 = sub_100007C4C(&qword_100029BA0, &qword_10001EE40);
  v7[29] = v8;
  v7[30] = *(v8 - 8);
  v7[31] = swift_task_alloc();

  return _swift_task_switch(sub_100008B64, 0, 0);
}

uint64_t sub_100008B64()
{
  v1 = *(*(v0 + 176) + OBJC_IVAR___FRArticleNotificationPostProcessingCoordinator_processors);
  v2 = *(v1 + 16);
  if (v2)
  {
    v25 = **(v0 + 168);
    v3 = v1 + 32;
    do
    {
      v26 = v3;
      v27 = v2;
      v6 = *(v0 + 216);
      v7 = *(v0 + 224);
      v8 = *(v0 + 192);
      v9 = *(v0 + 200);
      v10 = *(v0 + 184);
      sub_10000C114(v3, v0 + 16);
      v11 = sub_10001AC24();
      v12 = *(v11 - 8);
      (*(v12 + 56))(v7, 1, 1, v11);
      sub_10000C114(v0 + 16, v0 + 56);
      v13 = swift_allocObject();
      v13[2] = 0;
      v14 = v13 + 2;
      v13[3] = 0;
      sub_10000C1D0((v0 + 56), (v13 + 4));
      v13[9] = v10;
      v13[10] = v8;
      v13[11] = v9;
      sub_10000BF1C(v7, v6);
      LODWORD(v6) = (*(v12 + 48))(v6, 1, v11);
      v15 = v10;

      v16 = v9;
      v17 = *(v0 + 216);
      if (v6 == 1)
      {
        sub_10000C0B4(*(v0 + 216), &qword_100029B78, &qword_10001EDF8);
        if (*v14)
        {
          goto LABEL_9;
        }
      }

      else
      {
        sub_10001AC14();
        (*(v12 + 8))(v17, v11);
        if (*v14)
        {
LABEL_9:
          swift_getObjectType();
          swift_unknownObjectRetain();
          v18 = sub_10001ABE4();
          v19 = v20;
          swift_unknownObjectRelease();
          goto LABEL_10;
        }
      }

      v18 = 0;
      v19 = 0;
LABEL_10:
      v21 = swift_allocObject();
      *(v21 + 16) = &unk_10001EE58;
      *(v21 + 24) = v13;

      if (v19 | v18)
      {
        v4 = v0 + 96;
        *(v0 + 96) = 0;
        *(v0 + 104) = 0;
        *(v0 + 112) = v18;
        *(v0 + 120) = v19;
      }

      else
      {
        v4 = 0;
      }

      v5 = *(v0 + 224);
      *(v0 + 128) = 1;
      *(v0 + 136) = v4;
      *(v0 + 144) = v25;
      swift_task_create();

      sub_10000C0B4(v5, &qword_100029B78, &qword_10001EDF8);
      sub_100007C00((v0 + 16));
      v3 = v26 + 40;
      v2 = v27 - 1;
    }

    while (v27 != 1);
  }

  sub_10001ABF4();
  v22 = swift_task_alloc();
  *(v0 + 256) = v22;
  *v22 = v0;
  v22[1] = sub_100008EDC;
  v23 = *(v0 + 232);

  return TaskGroup.Iterator.next(isolation:)(v0 + 152, 0, 0, v23);
}

uint64_t sub_100008EDC()
{

  return _swift_task_switch(sub_100008FD8, 0, 0);
}

uint64_t sub_100008FD8()
{
  if (*(v0 + 152))
  {
    v14 = *(v0 + 152);
    v1 = *(v0 + 208);
    v2 = *v1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v1 = v2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = *(v0 + 208);
      v2 = sub_1000118E0(0, *(v2 + 2) + 1, 1, v2);
      *v10 = v2;
    }

    v5 = *(v2 + 2);
    v4 = *(v2 + 3);
    v6 = v14;
    if (v5 >= v4 >> 1)
    {
      v11 = *(v0 + 208);
      v12 = sub_1000118E0((v4 > 1), v5 + 1, 1, v2);
      v6 = v14;
      v2 = v12;
      *v11 = v12;
    }

    *(v2 + 2) = v5 + 1;
    *&v2[16 * v5 + 32] = v6;
    v7 = swift_task_alloc();
    *(v0 + 256) = v7;
    *v7 = v0;
    v7[1] = sub_100008EDC;
    v8 = *(v0 + 232);

    return TaskGroup.Iterator.next(isolation:)(v0 + 152, 0, 0, v8);
  }

  else
  {
    (*(*(v0 + 240) + 8))(*(v0 + 248), *(v0 + 232));

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_1000091A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  return _swift_task_switch(sub_1000091C8, 0, 0);
}

uint64_t sub_1000091C8()
{
  v1 = v0[3];
  v2 = v1[3];
  v3 = v1[4];
  sub_100007BBC(v1, v2);
  v9 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_1000092F8;
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[4];

  return v9(v7, v5, v6, v2, v3);
}

uint64_t sub_1000092F8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 64) = a1;
  *(v3 + 72) = a2;

  return _swift_task_switch(sub_1000093F8, 0, 0);
}

uint64_t sub_100009418(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2)
  {
    v4 = result + 40;
    do
    {
      v5 = *(v4 - 8);

      sub_1000094A0(v5, a2);

      v4 += 16;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_1000094A0(uint64_t result, uint64_t a2)
{
  v14[3] = a2;
  v2 = *(result + 16);
  if (v2)
  {
    v3 = (result + 40);
    v4 = &selRef_initWithThumbnailImage_title_shortExcerpt_publishDate_publisherName_publisherLogoImage_publisherLogoMaskImage_;
    do
    {
      v5 = *(v3 - 1);
      v6 = *v3;
      v7 = v4[302];

      if (v7 != -1)
      {
        swift_once();
      }

      v8 = sub_10001AAF4();
      sub_10000C07C(v8, qword_10002B038);

      v9 = sub_10001AAD4();
      v10 = sub_10001AC54();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = v4;
        v13 = swift_slowAlloc();
        v14[0] = v13;
        *v11 = 136315138;
        *(v11 + 4) = sub_1000150F4(v5, v6, v14);
        _os_log_impl(&_mh_execute_header, v9, v10, "Requested to remove notificationID, %s", v11, 0xCu);
        sub_100007C00(v13);
        v4 = v12;
      }

      sub_10000AEAC(v14, v5, v6);

      v3 += 2;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_100009670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[9] = a2;
  sub_100007C4C(&qword_100029B78, &qword_10001EDF8);
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();

  return _swift_task_switch(sub_10000971C, 0, 0);
}

uint64_t sub_10000971C()
{
  v1 = v0[10];
  v2 = v1 + 64;
  v33 = v0 + 2;
  v3 = -1;
  v4 = -1 << *(v1 + 32);
  if (-v4 < 64)
  {
    v3 = ~(-1 << -v4);
  }

  v5 = v3 & *(v1 + 64);
  v6 = (63 - v4) >> 6;

  v8 = 0;
  v35 = v0;
  v36 = v1;
  while (v5)
  {
    v9 = v5;
LABEL_11:
    v5 = (v9 - 1) & v9;
    if (*(v1 + 16))
    {
      v11 = (*(v1 + 48) + ((v8 << 10) | (16 * __clz(__rbit64(v9)))));
      v13 = *v11;
      v12 = v11[1];

      v14 = sub_100011D08(v13, v12);
      if (v15)
      {
        v41 = v5;
        v16 = v0[13];
        v37 = v0[11];
        v38 = *(*(v1 + 56) + 8 * v14);
        v40 = v0[12];
        v17 = sub_10001AC24();
        v18 = *(v17 - 8);
        v19 = v16;
        (*(v18 + 56))(v16, 1, 1, v17);
        v20 = swift_allocObject();
        v20[2] = 0;
        v20[3] = 0;
        v20[4] = v37;
        v20[5] = v13;
        v20[6] = v12;
        v20[7] = v38;
        sub_10000BF1C(v19, v40);
        v34 = v18;
        v21 = (*(v18 + 48))(v40, 1, v17);
        v22 = v38;

        v39 = v22;
        v23 = v37;
        v0 = v35;
        v24 = v35[12];
        if (v21 == 1)
        {
          sub_10000C0B4(v35[12], &qword_100029B78, &qword_10001EDF8);
        }

        else
        {
          sub_10001AC14();
          (*(v34 + 8))(v24, v17);
        }

        if (v20[2])
        {
          swift_getObjectType();
          swift_unknownObjectRetain();
          v25 = sub_10001ABE4();
          v27 = v26;
          swift_unknownObjectRelease();
        }

        else
        {
          v25 = 0;
          v27 = 0;
        }

        v28 = *v35[9];
        v29 = swift_allocObject();
        *(v29 + 16) = &unk_10001EE08;
        *(v29 + 24) = v20;

        if (v27 | v25)
        {
          v30 = v33;
          *v33 = 0;
          v33[1] = 0;
          v35[4] = v25;
          v35[5] = v27;
        }

        else
        {
          v30 = 0;
        }

        v31 = v35[13];
        v35[6] = 1;
        v35[7] = v30;
        v35[8] = v28;
        swift_task_create();

        result = sub_10000C0B4(v31, &qword_100029B78, &qword_10001EDF8);
        v1 = v36;
        v5 = v41;
      }

      else
      {
      }
    }
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      return result;
    }

    if (v10 >= v6)
    {
      break;
    }

    v9 = *(v2 + 8 * v10);
    ++v8;
    if (v9)
    {
      v8 = v10;
      goto LABEL_11;
    }
  }

  v32 = v0[1];

  return v32();
}

uint64_t sub_100009B14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[20] = a6;
  v7[21] = a7;
  v7[18] = a4;
  v7[19] = a5;
  return _swift_task_switch(sub_100009B38, 0, 0);
}

uint64_t sub_100009B38()
{
  v1 = v0[21];
  v2 = v0[18];
  v3 = sub_10001AB34();
  v0[22] = v3;
  v0[2] = v0;
  v0[3] = sub_100009C6C;
  v4 = swift_continuation_init();
  v0[17] = sub_100007C4C(&qword_100029B80, &unk_10001EE20);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100009FFC;
  v0[13] = &unk_100025198;
  v0[14] = v4;
  [v2 replaceContentForRequestWithIdentifier:v3 replacementContent:v1 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100009C6C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_100009DDC;
  }

  else
  {
    v2 = sub_100009D7C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100009D7C()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100009DDC()
{
  v14 = v0;
  v1 = v0[22];
  swift_willThrow();

  if (qword_100029970 != -1)
  {
    swift_once();
  }

  v2 = sub_10001AAF4();
  sub_10000C07C(v2, qword_10002B038);

  swift_errorRetain();
  v3 = sub_10001AAD4();
  v4 = sub_10001AC34();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[19];
    v5 = v0[20];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13 = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_1000150F4(v6, v5, &v13);
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error replacing content for notificationID (key: %{public}s), error: %{public}@", v7, 0x16u);
    sub_10000C0B4(v8, &qword_100029B88, &unk_10001EED0);

    sub_100007C00(v9);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_100009FFC(uint64_t a1, void *a2)
{
  v3 = sub_100007BBC((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    sub_100007C4C(&qword_100029B90, &qword_10001EE30);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    v8 = *v3;

    return _swift_continuation_throwingResume(v8);
  }
}

uint64_t sub_10000A230(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_10000A2F4;

  return sub_100007EB0(v6);
}

uint64_t sub_10000A2F4()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v4 = *(v6 + 8);

  return v4();
}

id sub_10000A44C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PostProcessingCoordinator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10000A4C4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000A53C(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_10000A614;

  return sub_100008A4C(a1, a2, v6, v7, v8, v9, v10);
}

uint64_t sub_10000A614()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10000A708(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10000A800;

  return v6(a1);
}

uint64_t sub_10000A800()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10000A8F8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_10000C764;

  return v6();
}

uint64_t sub_10000A9E0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_10000A614;

  return v7();
}

uint64_t sub_10000AAC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100007C4C(&qword_100029B78, &qword_10001EDF8);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  sub_10000BF1C(a3, v23 - v10);
  v12 = sub_10001AC24();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_10000C0B4(v11, &qword_100029B78, &qword_10001EDF8);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_10001AC14();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_10001ABE4();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_10001AB54() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_10000C0B4(a3, &qword_100029B78, &qword_10001EDF8);

    return v21;
  }

LABEL_8:
  sub_10000C0B4(a3, &qword_100029B78, &qword_10001EDF8);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_10000ADB4(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10000C768;

  return v6(a1);
}

uint64_t sub_10000AEAC(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_10001AEA4();
  sub_10001AB64();
  v8 = sub_10001AEC4();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_10001AE74() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_10000B25C(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_10000AFFC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100007C4C(&qword_100029B98, &qword_10001EE38);
  result = sub_10001ACB4();
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
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_10001AEA4();
      sub_10001AB64();
      result = sub_10001AEC4();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_10000B25C(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_10000AFFC(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_10000B3DC();
      goto LABEL_16;
    }

    sub_10000B538(v8 + 1);
  }

  v10 = *v4;
  sub_10001AEA4();
  sub_10001AB64();
  result = sub_10001AEC4();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_10001AE74();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_10001AE84();
  __break(1u);
  return result;
}

void *sub_10000B3DC()
{
  v1 = v0;
  sub_100007C4C(&qword_100029B98, &qword_10001EE38);
  v2 = *v0;
  v3 = sub_10001ACA4();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

uint64_t sub_10000B538(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100007C4C(&qword_100029B98, &qword_10001EE38);
  result = sub_10001ACB4();
  v5 = result;
  if (*(v3 + 16))
  {
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
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_10001AEA4();

      sub_10001AB64();
      result = sub_10001AEC4();
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

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

void *sub_10000B770(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_10000B8D0(uint64_t a1, int *a2)
{
  *(v2 + 32) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 40) = v3;
  *v3 = v2;
  v3[1] = sub_10000B9C4;

  return v5(v2 + 16);
}

uint64_t sub_10000B9C4()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v5 = *v0;

  *v2 = *(v1 + 16);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_10000BAD8(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a2;
  v4 = a1;
  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;
  v10 = 0;

  while (v8)
  {
    v11 = v8;
LABEL_11:
    v8 = (v11 - 1) & v11;
    if (*(v3 + 16))
    {
      v13 = (*(v4 + 48) + ((v10 << 10) | (16 * __clz(__rbit64(v11)))));
      v15 = *v13;
      v14 = v13[1];

      v16 = sub_100011D08(v15, v14);
      if (v17)
      {
        v39 = *(*(v3 + 56) + 8 * v16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v19 = *a3;
        v20 = sub_100011D08(v15, v14);
        v22 = v19[2];
        v23 = (v21 & 1) == 0;
        v24 = __OFADD__(v22, v23);
        v25 = v22 + v23;
        if (v24)
        {
          goto LABEL_26;
        }

        v26 = v21;
        if (v19[3] < v25)
        {
          sub_100011F44(v25, isUniquelyReferenced_nonNull_native);
          v20 = sub_100011D08(v15, v14);
          if ((v26 & 1) != (v27 & 1))
          {
            goto LABEL_28;
          }

LABEL_18:
          v28 = v19;
          if (v26)
          {
            goto LABEL_19;
          }

          goto LABEL_21;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_18;
        }

        v32 = v20;
        sub_100012748();
        v20 = v32;
        v28 = v19;
        if (v26)
        {
LABEL_19:
          v29 = v28[7];
          v30 = *(v29 + 8 * v20);
          v31 = v39;
          *(v29 + 8 * v20) = v39;
          goto LABEL_23;
        }

LABEL_21:
        v28[(v20 >> 6) + 8] |= 1 << v20;
        v33 = (v28[6] + 16 * v20);
        *v33 = v15;
        v33[1] = v14;
        v31 = v39;
        *(v28[7] + 8 * v20) = v39;
        v34 = v28[2];
        v24 = __OFADD__(v34, 1);
        v35 = v34 + 1;
        if (v24)
        {
          goto LABEL_27;
        }

        v28[2] = v35;

        v30 = 0;
LABEL_23:
        *a3 = v28;

        v3 = a2;
        v4 = v38;
      }

      else
      {
      }
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= v9)
    {
    }

    v11 = *(v5 + 8 * v12);
    ++v10;
    if (v11)
    {
      v10 = v12;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  result = sub_10001AE94();
  __break(1u);
  return result;
}

uint64_t sub_10000BD44(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10000C764;

  return sub_100009670(a1, a2, v7, v6);
}

uint64_t sub_10000BDF8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10000BE48(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10000C764;

  return sub_100009B14(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_10000BF1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007C4C(&qword_100029B78, &qword_10001EDF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000BF8C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000BFC4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000C764;

  return sub_10000A708(a1, v4);
}

uint64_t sub_10000C07C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_10000C0B4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100007C4C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000C114(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000C178()
{
  swift_unknownObjectRelease();
  sub_100007C00((v0 + 32));

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_10000C1D0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_10000C1E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = v1[10];
  v8 = v1[11];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000C764;

  return sub_1000091A0(a1, v4, v5, (v1 + 4), v6, v7, v8);
}

uint64_t sub_10000C2BC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000A614;

  return sub_10000B8D0(a1, v4);
}

unint64_t sub_10000C374()
{
  result = qword_100029BA8;
  if (!qword_100029BA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100029BA8);
  }

  return result;
}

uint64_t sub_10000C3C0()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000C408()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000C764;

  return sub_10000A230(v2, v3, v4);
}

uint64_t sub_10000C4C0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000C764;

  return sub_10000A8F8(v2, v3, v4);
}

uint64_t sub_10000C580()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000C5C0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000C764;

  return sub_10000A9E0(a1, v4, v5, v6);
}

uint64_t sub_10000C68C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000C764;

  return sub_10000ADB4(a1, v4);
}

Swift::Int sub_10000C784()
{
  v1 = *v0;
  sub_10001AEA4();
  sub_10001AEB4(v1);
  return sub_10001AEC4();
}

Swift::Int sub_10000C7F8(uint64_t a1)
{
  v2 = *v1;
  sub_10001AEA4();
  sub_10001AEB4(v2);
  return sub_10001AEC4();
}

uint64_t sub_10000C83C()
{
  if (*v0)
  {
    return 1937204590;
  }

  else
  {
    return 7565409;
  }
}

uint64_t sub_10000C868@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7565409 && a2 == 0xE300000000000000;
  if (v5 || (sub_10001AE74() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1937204590 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_10001AE74();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_10000C95C(uint64_t a1)
{
  v2 = sub_10000EA58();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000C998(uint64_t a1)
{
  v2 = sub_10000EA58();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10000C9D4(void *a1)
{
  v3 = v1;
  v5 = sub_100007C4C(&qword_100029BF8, &qword_10001F020);
  v32 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v15[-v6 - 8];
  sub_100007BBC(a1, a1[3]);
  sub_10000EA58();
  sub_10001AEE4();
  v8 = *(v3 + 48);
  v9 = *(v3 + 16);
  v28 = *(v3 + 32);
  v29 = v8;
  v10 = *(v3 + 48);
  v30 = *(v3 + 64);
  v11 = *(v3 + 16);
  v27[0] = *v3;
  v27[1] = v11;
  v22 = v28;
  v23 = v10;
  v24 = *(v3 + 64);
  v31 = *(v3 + 80);
  v25 = *(v3 + 80);
  v20 = v27[0];
  v21 = v9;
  v19 = 0;
  sub_10000EC10(v27, v16);
  sub_10000EC6C();
  sub_10001AE44();
  if (v2)
  {
    v16[2] = v22;
    v16[3] = v23;
    v16[4] = v24;
    *&v16[5] = v25;
    v16[0] = v20;
    v16[1] = v21;
    sub_10000EB54(v16);
    return (*(v32 + 8))(v7, v5);
  }

  else
  {
    v17[2] = v22;
    v17[3] = v23;
    v17[4] = v24;
    v18 = v25;
    v17[0] = v20;
    v17[1] = v21;
    sub_10000EB54(v17);
    memcpy(v26, (v3 + 88), 0x131uLL);
    memcpy(v16, (v3 + 88), 0x131uLL);
    v15[311] = 1;
    sub_10000ECC0(v26, v15);
    sub_10000ECF8();
    sub_10001AE44();
    v13 = (v32 + 8);
    memcpy(v15, v16, 0x131uLL);
    sub_10000ED4C(v15);
    return (*v13)(v7, v5);
  }
}

void *sub_10000CC70@<X0>(void *a1@<X8>, void *a2@<X0>)
{
  result = sub_10000E7A8(a2, v5);
  if (!v2)
  {
    return memcpy(a1, v5, 0x189uLL);
  }

  return result;
}

uint64_t sub_10000CCD4(void *a1)
{
  v3 = v1;
  v5 = sub_100007C4C(&qword_100029C58, &qword_10001F248);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_100007BBC(a1, a1[3]);
  sub_10000FE18();
  sub_10001AEE4();
  LOBYTE(v11) = 0;
  sub_10001ADE4();
  if (!v2)
  {
    LOBYTE(v11) = 1;
    sub_10001ADE4();
    LOBYTE(v11) = 2;
    sub_10001ADE4();
    LOBYTE(v11) = 3;
    sub_10001AE04();
    LOBYTE(v11) = 4;
    sub_10001AE04();
    LOBYTE(v11) = 5;
    sub_10001AE04();
    LOBYTE(v11) = 6;
    sub_10001AE04();
    LOBYTE(v11) = 7;
    sub_10001AE04();
    v11 = *(v3 + 128);
    HIBYTE(v10) = 8;
    sub_100007C4C(&qword_100029C38, &qword_10001F238);
    sub_10000FF20(&qword_100029C60, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    sub_10001AE14();
    v11 = *(v3 + 136);
    HIBYTE(v10) = 9;
    sub_100007C4C(&qword_100029C48, &qword_10001F240);
    sub_10000FEB4(&qword_100029C68, &protocol witness table for Double, &protocol conformance descriptor for <A> [A]);
    sub_10001AE14();
    LOBYTE(v11) = 10;
    sub_10001ADE4();
    LOBYTE(v11) = 11;
    sub_10001AE04();
    LOBYTE(v11) = 12;
    sub_10001ADE4();
    LOBYTE(v11) = 13;
    sub_10001ADE4();
    LOBYTE(v11) = 14;
    sub_10001ADE4();
    LOBYTE(v11) = 15;
    sub_10001ADE4();
    LOBYTE(v11) = 16;
    sub_10001ADE4();
    LOBYTE(v11) = 17;
    sub_10001ADE4();
    LOBYTE(v11) = 18;
    sub_10001ADE4();
    LOBYTE(v11) = 19;
    sub_10001ADE4();
    LOBYTE(v11) = 20;
    sub_10001ADF4();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10000D1D4(char a1)
{
  result = 0x6E4F6B6369507369;
  switch(a1)
  {
    case 20:
      return result;
    default:
      result = sub_10001AB44();
      break;
  }

  return result;
}

uint64_t sub_10000D374(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_10000D1D4(*a1);
  v5 = v4;
  if (v3 == sub_10000D1D4(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_10001AE74();
  }

  return v8 & 1;
}

Swift::Int sub_10000D3FC()
{
  v1 = *v0;
  sub_10001AEA4();
  sub_10000D1D4(v1);
  sub_10001AB64();

  return sub_10001AEC4();
}

uint64_t sub_10000D460(uint64_t a1)
{
  sub_10000D1D4(*v1);
  sub_10001AB64();
}

Swift::Int sub_10000D4B4(uint64_t a1)
{
  v2 = *v1;
  sub_10001AEA4();
  sub_10000D1D4(v2);
  sub_10001AB64();

  return sub_10001AEC4();
}

uint64_t sub_10000D514@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000101EC(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_10000D544@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10000D1D4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10000D578@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100010A50(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10000D5AC(uint64_t a1)
{
  v2 = sub_10000FE18();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000D5E8(uint64_t a1)
{
  v2 = sub_10000FE18();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_10000D624@<X0>(void *a1@<X8>, void *a2@<X0>)
{
  result = sub_10000F0EC(a2, __src);
  if (!v2)
  {
    return memcpy(a1, __src, 0x131uLL);
  }

  return result;
}

void *sub_10000D688(uint64_t a1)
{
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  v7 = &_swiftEmptyDictionarySingleton;
  v8 = &_swiftEmptyDictionarySingleton;
  v94 = v1;
  while (1)
  {
    if (!v4)
    {
      while (1)
      {
        v10 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        if (v10 >= v5)
        {

          return v8;
        }

        v4 = *(v1 + 8 * v10);
        ++v6;
        if (v4)
        {
          v6 = v10;
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
      goto LABEL_80;
    }

LABEL_12:
    v11 = __clz(__rbit64(v4)) | (v6 << 6);
    sub_10000E570(*(a1 + 48) + 40 * v11, v109);
    sub_10000A4C4(*(a1 + 56) + 32 * v11, v110);
    sub_10000A4C4(v110, v104);
    v12 = sub_100007C4C(&qword_100029B30, &unk_10001F420);
    if (!swift_dynamicCast())
    {
      break;
    }

    v13 = v99;
    sub_10000E570(v109, v104);
    v14 = sub_10000D688(v13);

    v103 = v12;
    *&v102 = v14;
    sub_10000E63C(&v102, v98);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v97 = v7;
    v16 = sub_100011D80(v104);
    v18 = v7[2];
    v19 = (v17 & 1) == 0;
    v20 = __OFADD__(v18, v19);
    v21 = v18 + v19;
    if (v20)
    {
      goto LABEL_74;
    }

    v22 = v17;
    if (v7[3] >= v21)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v88 = v16;
        sub_100007C4C(&qword_100029BC0, &qword_10001EEE0);
        v47 = sub_10001AD34();
        v9 = v47;
        if (v7[2])
        {
          v48 = (v47 + 64);
          v49 = (v7 + 8);
          v50 = ((1 << v9[32]) + 63) >> 6;
          if (v9 != v7 || v48 >= &v49[8 * v50])
          {
            memmove(v48, v49, 8 * v50);
          }

          v51 = 0;
          *(v9 + 2) = v7[2];
          v52 = 1 << *(v7 + 32);
          if (v52 < 64)
          {
            v53 = ~(-1 << v52);
          }

          else
          {
            v53 = -1;
          }

          v54 = v53 & v7[8];
          v55 = (v52 + 63) >> 6;
          v90 = v55;
          if (v54)
          {
            do
            {
              v56 = __clz(__rbit64(v54));
              v92 = (v54 - 1) & v54;
LABEL_46:
              v59 = v56 | (v51 << 6);
              v60 = 40 * v59;
              sub_10000E570(v7[6] + 40 * v59, &v99);
              v59 *= 32;
              sub_10000A4C4(v7[7] + v59, v96);
              v61 = *(v9 + 6) + v60;
              v62 = v99;
              v63 = v100;
              *(v61 + 32) = v101;
              *v61 = v62;
              *(v61 + 16) = v63;
              sub_10000E63C(v96, (*(v9 + 7) + v59));
              v55 = v90;
              v54 = v92;
            }

            while (v92);
          }

          v57 = v51;
          while (1)
          {
            v51 = v57 + 1;
            if (__OFADD__(v57, 1))
            {
              goto LABEL_79;
            }

            if (v51 >= v55)
            {
              break;
            }

            v58 = v7[v51 + 8];
            ++v57;
            if (v58)
            {
              v56 = __clz(__rbit64(v58));
              v92 = (v58 - 1) & v58;
              goto LABEL_46;
            }
          }
        }

        v16 = v88;
        if ((v22 & 1) == 0)
        {
LABEL_49:
          *&v9[8 * (v16 >> 6) + 64] |= 1 << v16;
          v64 = v16;
          sub_10000E570(v104, *(v9 + 6) + 40 * v16);
          sub_10000E63C(v98, (*(v9 + 7) + 32 * v64));
          v65 = *(v9 + 2);
          v20 = __OFADD__(v65, 1);
          v66 = v65 + 1;
          if (v20)
          {
            goto LABEL_76;
          }

          *(v9 + 2) = v66;
          goto LABEL_51;
        }

        goto LABEL_28;
      }

      v9 = v7;
    }

    else
    {
      sub_1000121E8(v21, isUniquelyReferenced_nonNull_native);
      v9 = v97;
      v16 = sub_100011D80(v104);
      if ((v22 & 1) != (v23 & 1))
      {
        goto LABEL_81;
      }
    }

    if ((v22 & 1) == 0)
    {
      goto LABEL_49;
    }

LABEL_28:
    v45 = (*(v9 + 7) + 32 * v16);
    sub_100007C00(v45);
    sub_10000E63C(v98, v45);
LABEL_51:
    sub_10000E64C(v104);
    v8 = v9;
LABEL_6:
    v4 &= v4 - 1;
    sub_10000C0B4(v109, &qword_100029BD0, &qword_10001EEF0);
    v7 = v9;
  }

  v24 = v5;
  v25 = v8;
  v26 = objc_opt_self();
  sub_10000E570(v109, v107);
  sub_10000A4C4(v110, &v108);
  sub_100007C4C(&qword_100029BC0, &qword_10001EEE0);
  v27 = sub_10001AD54();
  sub_10000E5CC(v107, v104);
  v28 = sub_100011D80(v104);
  if (v29)
  {
    goto LABEL_73;
  }

  v27[(v28 >> 6) + 8] |= 1 << v28;
  v30 = v27[6] + 40 * v28;
  v31 = v104[0];
  v32 = v104[1];
  *(v30 + 32) = v105;
  *v30 = v31;
  *(v30 + 16) = v32;
  sub_10000E63C(&v106, (v27[7] + 32 * v28));
  v33 = v27[2];
  v20 = __OFADD__(v33, 1);
  v34 = v33 + 1;
  if (v20)
  {
    goto LABEL_75;
  }

  v27[2] = v34;
  sub_10000C0B4(v107, &qword_100029BC8, &qword_10001EEE8);
  isa = sub_10001AB04().super.isa;

  v36 = [v26 isValidJSONObject:isa];

  if ((v36 & 1) == 0)
  {
    v9 = v7;
    v8 = v25;
    v5 = v24;
    v1 = v94;
    goto LABEL_6;
  }

  sub_10000E570(v109, v104);
  sub_10000A4C4(v110, &v102);
  v37 = swift_isUniquelyReferenced_nonNull_native();
  *&v96[0] = v7;
  v38 = sub_100011D80(v104);
  v40 = v7[2];
  v41 = (v39 & 1) == 0;
  v20 = __OFADD__(v40, v41);
  v42 = v40 + v41;
  if (v20)
  {
    goto LABEL_77;
  }

  v43 = v39;
  if (v7[3] < v42)
  {
    sub_1000121E8(v42, v37);
    v9 = *&v96[0];
    v38 = sub_100011D80(v104);
    if ((v43 & 1) != (v44 & 1))
    {
      goto LABEL_81;
    }

    v5 = v24;
    v1 = v94;
    if ((v43 & 1) == 0)
    {
LABEL_69:
      *&v9[8 * (v38 >> 6) + 64] |= 1 << v38;
      v84 = v38;
      sub_10000E570(v104, *(v9 + 6) + 40 * v38);
      sub_10000E63C(&v102, (*(v9 + 7) + 32 * v84));
      v85 = *(v9 + 2);
      v20 = __OFADD__(v85, 1);
      v86 = v85 + 1;
      if (v20)
      {
        goto LABEL_78;
      }

      *(v9 + 2) = v86;
      goto LABEL_51;
    }

    goto LABEL_31;
  }

  v5 = v24;
  if (v37)
  {
    v9 = v7;
    v1 = v94;
    if ((v39 & 1) == 0)
    {
      goto LABEL_69;
    }

LABEL_31:
    v46 = (*(v9 + 7) + 32 * v38);
    sub_100007C00(v46);
    sub_10000E63C(&v102, v46);
    goto LABEL_51;
  }

  v89 = v38;
  v67 = sub_10001AD34();
  v9 = v67;
  v1 = v94;
  if (!v7[2])
  {
LABEL_68:

    v38 = v89;
    if ((v43 & 1) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_31;
  }

  v68 = (v67 + 64);
  v69 = (v7 + 8);
  v70 = ((1 << v9[32]) + 63) >> 6;
  if (v9 != v7 || v68 >= &v69[8 * v70])
  {
    memmove(v68, v69, 8 * v70);
  }

  v71 = 0;
  *(v9 + 2) = v7[2];
  v72 = 1 << *(v7 + 32);
  if (v72 < 64)
  {
    v73 = ~(-1 << v72);
  }

  else
  {
    v73 = -1;
  }

  v74 = v73 & v7[8];
  v75 = (v72 + 63) >> 6;
  v91 = v75;
  if (v74)
  {
    do
    {
      v76 = __clz(__rbit64(v74));
      v93 = (v74 - 1) & v74;
LABEL_66:
      v79 = v76 | (v71 << 6);
      v80 = 40 * v79;
      sub_10000E570(v7[6] + 40 * v79, &v99);
      v79 *= 32;
      sub_10000A4C4(v7[7] + v79, v98);
      v81 = *(v9 + 6) + v80;
      v82 = v99;
      v83 = v100;
      *(v81 + 32) = v101;
      *v81 = v82;
      *(v81 + 16) = v83;
      sub_10000E63C(v98, (*(v9 + 7) + v79));
      v75 = v91;
      v74 = v93;
    }

    while (v93);
  }

  v77 = v71;
  while (1)
  {
    v71 = v77 + 1;
    if (__OFADD__(v77, 1))
    {
      break;
    }

    if (v71 >= v75)
    {
      goto LABEL_68;
    }

    v78 = v7[v71 + 8];
    ++v77;
    if (v78)
    {
      v76 = __clz(__rbit64(v78));
      v93 = (v78 - 1) & v78;
      goto LABEL_66;
    }
  }

LABEL_80:
  __break(1u);
LABEL_81:
  result = sub_10001AE94();
  __break(1u);
  return result;
}

void *sub_10000DEC8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_10000D688(a1);
  v3 = objc_opt_self();
  isa = sub_10001AB04().super.isa;
  v5 = [v3 isValidJSONObject:isa];

  if (!v5)
  {
    if (qword_100029970 != -1)
    {
      swift_once();
    }

    v12 = sub_10001AAF4();
    sub_10000C07C(v12, qword_10002B038);

    v13 = sub_10001AAD4();
    v14 = sub_10001AC34();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *&__src[0] = v16;
      *v15 = 136446210;
      v17 = sub_10001AB24();
      v19 = v18;

      v20 = sub_1000150F4(v17, v19, __src);

      *(v15 + 4) = v20;
      v21 = "Unable to create UserInfoArticle from non-serializable user info payload: %{public}s";
LABEL_12:
      _os_log_impl(&_mh_execute_header, v13, v14, v21, v15, 0xCu);
      sub_100007C00(v16);

LABEL_14:

      sub_10000E484(__src);
      return memcpy(a2, __src, 0x189uLL);
    }

LABEL_13:

    goto LABEL_14;
  }

  v6 = sub_10001AB04().super.isa;
  *&__src[0] = 0;
  v7 = [v3 dataWithJSONObject:v6 options:0 error:__src];

  v8 = *&__src[0];
  if (!v7)
  {
    v22 = v8;
    sub_10001A9D4();

    swift_willThrow();

    if (qword_100029970 != -1)
    {
      swift_once();
    }

    v23 = sub_10001AAF4();
    sub_10000C07C(v23, qword_10002B038);

    v13 = sub_10001AAD4();
    v14 = sub_10001AC34();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *&__src[0] = v16;
      *v15 = 136446210;
      v24 = sub_10001AB24();
      v26 = v25;

      v27 = sub_1000150F4(v24, v26, __src);

      *(v15 + 4) = v27;
      v21 = "Unable to create JSON data from user info payload: %{public}s";
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  v9 = sub_10001A9E4();
  v11 = v10;

  sub_10001A9C4();
  swift_allocObject();
  sub_10001A9B4();
  sub_10000E4C4();
  sub_10001A9A4();
  sub_10000E518(v9, v11);

  memcpy(__dst, v30, sizeof(__dst));
  nullsub_1();
  memcpy(__src, __dst, 0x189uLL);
  return memcpy(a2, __src, 0x189uLL);
}

double sub_10000E484(_OWORD *a1)
{
  result = 0.0;
  a1[22] = 0u;
  a1[23] = 0u;
  a1[20] = 0u;
  a1[21] = 0u;
  a1[18] = 0u;
  a1[19] = 0u;
  a1[16] = 0u;
  a1[17] = 0u;
  a1[14] = 0u;
  a1[15] = 0u;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  *(a1 + 377) = 0u;
  return result;
}

unint64_t sub_10000E4C4()
{
  result = qword_100029BB8;
  if (!qword_100029BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029BB8);
  }

  return result;
}

uint64_t sub_10000E518(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_10000E5CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007C4C(&qword_100029BC8, &qword_10001EEE8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_10000E63C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10000E6A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 393))
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

uint64_t sub_10000E6F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 392) = 0;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 393) = 1;
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

    *(result + 393) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_10000E7A8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v20 = a2;
  v4 = sub_100007C4C(&qword_100029BD8, &qword_10001F018);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10[-v6];
  sub_100007BBC(a1, a1[3]);
  sub_10000EA58();
  sub_10001AED4();
  if (v2)
  {
    return sub_100007C00(a1);
  }

  v8 = v20;
  v12[311] = 0;
  sub_10000EAAC();
  sub_10001ADD4();
  v19[2] = v15;
  v19[3] = v16;
  v19[4] = v17;
  *&v19[5] = v18;
  v19[0] = v13;
  v19[1] = v14;
  v11[399] = 1;
  sub_10000EB00();
  sub_10001ADD4();
  (*(v5 + 8))(v7, v4);
  memcpy(&v19[5] + 8, v12, 0x131uLL);
  memcpy(v10, v19, 0x189uLL);
  sub_10000EBA8(v10, v11);
  sub_100007C00(a1);
  memcpy(v11, v19, 0x189uLL);
  sub_10000EBE0(v11);
  return memcpy(v8, v10, 0x189uLL);
}

unint64_t sub_10000EA58()
{
  result = qword_100029BE0;
  if (!qword_100029BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029BE0);
  }

  return result;
}

unint64_t sub_10000EAAC()
{
  result = qword_100029BE8;
  if (!qword_100029BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029BE8);
  }

  return result;
}

unint64_t sub_10000EB00()
{
  result = qword_100029BF0;
  if (!qword_100029BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029BF0);
  }

  return result;
}

unint64_t sub_10000EC6C()
{
  result = qword_100029C00;
  if (!qword_100029C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029C00);
  }

  return result;
}

unint64_t sub_10000ECF8()
{
  result = qword_100029C08;
  if (!qword_100029C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029C08);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UserInfoArticle.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for UserInfoArticle.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_10000EEF8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 305))
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

uint64_t sub_10000EF40(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 296) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 304) = 0;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 305) = 1;
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

    *(result + 305) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10000EFE8()
{
  result = qword_100029C10;
  if (!qword_100029C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029C10);
  }

  return result;
}

unint64_t sub_10000F040()
{
  result = qword_100029C18;
  if (!qword_100029C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029C18);
  }

  return result;
}

unint64_t sub_10000F098()
{
  result = qword_100029C20;
  if (!qword_100029C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029C20);
  }

  return result;
}

void *sub_10000F0EC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_100007C4C(&qword_100029C28, &qword_10001F230);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v49 - v7;
  v9 = a1[3];
  v86 = a1;
  sub_100007BBC(a1, v9);
  sub_10000FE18();
  sub_10001AED4();
  if (v2)
  {
    v140 = v2;
    sub_100007C00(v86);
LABEL_4:
  }

  v84 = a2;
  v85 = v6;
  LOBYTE(v88[0]) = 0;
  v11 = sub_10001ADB4();
  v82 = v12;
  LOBYTE(v88[0]) = 1;
  v13 = sub_10001ADB4();
  v81 = v14;
  v15 = v13;
  LOBYTE(v88[0]) = 2;
  v16 = sub_10001AD74();
  v75 = 0;
  v80 = v17;
  LOBYTE(v88[0]) = 3;
  v18 = sub_10001AD94();
  v139 = v19 & 1;
  LOBYTE(v88[0]) = 4;
  v74 = sub_10001AD94();
  v137 = v20 & 1;
  LOBYTE(v88[0]) = 4;
  v73 = sub_10001AD94();
  v135 = v23 & 1;
  LOBYTE(v88[0]) = 6;
  v24 = sub_10001AD94();
  v25 = v85;
  v72 = v24;
  v133 = v26 & 1;
  LOBYTE(v88[0]) = 7;
  v27 = sub_10001AD94();
  v140 = 0;
  v71 = v27;
  v131 = v28 & 1;
  sub_100007C4C(&qword_100029C38, &qword_10001F238);
  LOBYTE(v87[0]) = 8;
  sub_10000FF20(&qword_100029C40, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
  v29 = v140;
  sub_10001ADA4();
  v140 = v29;
  if (v29)
  {
    (*(v25 + 8))(v8, v5);
    v21 = 0;
    v83 = 0;
LABEL_5:
    v22 = v75;
    sub_100007C00(v86);

    if (!v22)
    {
    }

    if (v21)
    {
    }

    goto LABEL_4;
  }

  v70 = v18;
  v30 = v15;
  v79 = v88[0];
  sub_100007C4C(&qword_100029C48, &qword_10001F240);
  LOBYTE(v87[0]) = 9;
  sub_10000FEB4(&qword_100029C50, &protocol witness table for Double, &protocol conformance descriptor for <A> [A]);
  v31 = v140;
  sub_10001ADA4();
  v140 = v31;
  if (v31)
  {
    (*(v85 + 8))(v8, v5);
    v83 = 0;
    v21 = 1;
    goto LABEL_5;
  }

  v78 = v88[0];
  LOBYTE(v88[0]) = 10;
  v69 = sub_10001AD74();
  v77 = v32;
  v140 = 0;
  LOBYTE(v88[0]) = 11;
  v68 = sub_10001AD94();
  v140 = 0;
  v129 = v33 & 1;
  LOBYTE(v88[0]) = 12;
  v67 = sub_10001AD74();
  v76 = v34;
  v140 = 0;
  LOBYTE(v88[0]) = 13;
  v66 = sub_10001AD74();
  v83 = v35;
  v140 = 0;
  LOBYTE(v88[0]) = 14;
  v65 = sub_10001AD74();
  v140 = 0;
  v37 = v36;
  LOBYTE(v88[0]) = 15;
  v64 = sub_10001AD74();
  v140 = 0;
  v39 = v38;
  LOBYTE(v88[0]) = 16;
  v62 = sub_10001AD74();
  v63 = v40;
  v140 = 0;
  LOBYTE(v88[0]) = 17;
  v59 = sub_10001AD74();
  v75 = v41;
  v140 = 0;
  LOBYTE(v88[0]) = 18;
  v58 = sub_10001AD74();
  v61 = v42;
  v140 = 0;
  LOBYTE(v88[0]) = 19;
  v57 = sub_10001AD74();
  v60 = v43;
  v140 = 0;
  v127 = 20;
  v56 = sub_10001AD84();
  v140 = 0;
  (*(v85 + 8))(v8, v5);
  v54 = v30;
  v55 = v11;
  v87[0] = v11;
  v87[1] = v82;
  v87[2] = v30;
  v87[3] = v81;
  v53 = v16;
  v87[4] = v16;
  v87[5] = v80;
  v87[6] = v70;
  LODWORD(v85) = v139;
  LOBYTE(v87[7]) = v139;
  *(&v87[7] + 1) = *v138;
  HIDWORD(v87[7]) = *&v138[3];
  v87[8] = v74;
  v49 = v137;
  LOBYTE(v87[9]) = v137;
  *(&v87[9] + 1) = *v136;
  HIDWORD(v87[9]) = *&v136[3];
  v87[10] = v73;
  v52 = v135;
  LOBYTE(v87[11]) = v135;
  *(&v87[11] + 1) = *v134;
  HIDWORD(v87[11]) = *&v134[3];
  v87[12] = v72;
  v51 = v133;
  LOBYTE(v87[13]) = v133;
  *(&v87[13] + 1) = *v132;
  HIDWORD(v87[13]) = *&v132[3];
  v87[14] = v71;
  v50 = v131;
  LOBYTE(v87[15]) = v131;
  HIDWORD(v87[15]) = *&v130[3];
  *(&v87[15] + 1) = *v130;
  v87[16] = v79;
  v87[17] = v78;
  v44 = v76;
  v87[18] = v69;
  v87[19] = v77;
  v87[20] = v68;
  HIDWORD(v87[21]) = *&v128[3];
  *(&v87[21] + 1) = *v128;
  v45 = v129;
  LOBYTE(v87[21]) = v129;
  v87[22] = v67;
  v87[23] = v76;
  v46 = v83;
  v87[24] = v66;
  v87[25] = v83;
  v87[26] = v65;
  v87[27] = v37;
  v87[28] = v64;
  v87[29] = v39;
  v47 = v63;
  v87[30] = v62;
  v87[31] = v63;
  v87[32] = v59;
  v48 = v75;
  v87[33] = v75;
  v87[34] = v58;
  v87[35] = v61;
  v87[36] = v57;
  v87[37] = v60;
  LOBYTE(v87[38]) = v56;
  sub_10000ECC0(v87, v88);
  sub_100007C00(v86);
  v88[0] = v55;
  v88[1] = v82;
  v88[2] = v54;
  v88[3] = v81;
  v88[4] = v53;
  v88[5] = v80;
  v88[6] = v70;
  v89 = v85;
  v91 = v74;
  v92 = v49;
  *v90 = *v138;
  *&v90[3] = *&v138[3];
  *v93 = *v136;
  *&v93[3] = *&v136[3];
  v94 = v73;
  v95 = v52;
  *v96 = *v134;
  *&v96[3] = *&v134[3];
  v97 = v72;
  v98 = v51;
  *v99 = *v132;
  *&v99[3] = *&v132[3];
  v100 = v71;
  v101 = v50;
  *v102 = *v130;
  *&v102[3] = *&v130[3];
  v103 = v79;
  v104 = v78;
  v105 = v69;
  v106 = v77;
  v107 = v68;
  v108 = v45;
  *&v109[3] = *&v128[3];
  *v109 = *v128;
  v110 = v67;
  v111 = v44;
  v112 = v66;
  v113 = v46;
  v114 = v65;
  v115 = v37;
  v116 = v64;
  v117 = v39;
  v118 = v62;
  v119 = v47;
  v120 = v59;
  v121 = v48;
  v122 = v58;
  v123 = v61;
  v124 = v57;
  v125 = v60;
  v126 = v56;
  sub_10000ED4C(v88);
  return memcpy(v84, v87, 0x131uLL);
}

unint64_t sub_10000FE18()
{
  result = qword_100029C30;
  if (!qword_100029C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029C30);
  }

  return result;
}

uint64_t sub_10000FE6C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000FEB4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000FE6C(&qword_100029C48, &qword_10001F240);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000FF20(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000FE6C(&qword_100029C38, &qword_10001F238);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NewsSingleArticle.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEC)
  {
    goto LABEL_17;
  }

  if (a2 + 20 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 20) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 20;
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

      return (*a1 | (v4 << 8)) - 20;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 20;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x15;
  v8 = v6 - 21;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NewsSingleArticle.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 20 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 20) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEC)
  {
    v4 = 0;
  }

  if (a2 > 0xEB)
  {
    v5 = ((a2 - 236) >> 8) + 1;
    *result = a2 + 20;
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
    *result = a2 + 20;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000100E8()
{
  result = qword_100029C70;
  if (!qword_100029C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029C70);
  }

  return result;
}

unint64_t sub_100010140()
{
  result = qword_100029C78;
  if (!qword_100029C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029C78);
  }

  return result;
}

unint64_t sub_100010198()
{
  result = qword_100029C80;
  if (!qword_100029C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029C80);
  }

  return result;
}

uint64_t sub_1000101EC(uint64_t a1, uint64_t a2)
{
  if (sub_10001AB44() == a1 && v4 == a2)
  {
    goto LABEL_60;
  }

  v6 = sub_10001AE74();

  if (v6)
  {
    goto LABEL_61;
  }

  if (sub_10001AB44() == a1 && v7 == a2)
  {

LABEL_14:

    return 1;
  }

  v9 = sub_10001AE74();

  if (v9)
  {
    goto LABEL_14;
  }

  if (sub_10001AB44() == a1 && v11 == a2)
  {

LABEL_22:

    return 2;
  }

  v13 = sub_10001AE74();

  if (v13)
  {
    goto LABEL_22;
  }

  if (sub_10001AB44() == a1 && v14 == a2)
  {

LABEL_27:

    return 3;
  }

  v15 = sub_10001AE74();

  if (v15)
  {
    goto LABEL_27;
  }

  if (sub_10001AB44() == a1 && v16 == a2)
  {

LABEL_32:

    return 4;
  }

  v17 = sub_10001AE74();

  if (v17)
  {
    goto LABEL_32;
  }

  if (sub_10001AB44() == a1 && v18 == a2)
  {

LABEL_37:

    return 5;
  }

  v19 = sub_10001AE74();

  if (v19)
  {
    goto LABEL_37;
  }

  if (sub_10001AB44() == a1 && v20 == a2)
  {

LABEL_42:

    return 6;
  }

  v21 = sub_10001AE74();

  if (v21)
  {
    goto LABEL_42;
  }

  if (sub_10001AB44() == a1 && v22 == a2)
  {

LABEL_47:

    return 7;
  }

  v23 = sub_10001AE74();

  if (v23)
  {
    goto LABEL_47;
  }

  if (sub_10001AB44() == a1 && v24 == a2)
  {

LABEL_52:

    return 8;
  }

  v25 = sub_10001AE74();

  if (v25)
  {
    goto LABEL_52;
  }

  if (sub_10001AB44() == a1 && v26 == a2)
  {

LABEL_57:

    return 9;
  }

  v27 = sub_10001AE74();

  if (v27)
  {
    goto LABEL_57;
  }

  if (sub_10001AB44() == a1 && v28 == a2)
  {
LABEL_60:

LABEL_61:

    return 10;
  }

  v29 = sub_10001AE74();

  if (v29)
  {
    goto LABEL_61;
  }

  if (sub_10001AB44() == a1 && v30 == a2)
  {

LABEL_67:

    return 11;
  }

  v31 = sub_10001AE74();

  if (v31)
  {
    goto LABEL_67;
  }

  if (sub_10001AB44() == a1 && v32 == a2)
  {

LABEL_72:

    return 12;
  }

  v33 = sub_10001AE74();

  if (v33)
  {
    goto LABEL_72;
  }

  if (sub_10001AB44() == a1 && v34 == a2)
  {

LABEL_77:

    return 13;
  }

  v35 = sub_10001AE74();

  if (v35)
  {
    goto LABEL_77;
  }

  if (sub_10001AB44() == a1 && v36 == a2)
  {

LABEL_82:

    return 14;
  }

  v37 = sub_10001AE74();

  if (v37)
  {
    goto LABEL_82;
  }

  if (sub_10001AB44() == a1 && v38 == a2)
  {

LABEL_87:

    return 15;
  }

  v39 = sub_10001AE74();

  if (v39)
  {
    goto LABEL_87;
  }

  if (sub_10001AB44() == a1 && v40 == a2)
  {

LABEL_92:

    return 16;
  }

  v41 = sub_10001AE74();

  if (v41)
  {
    goto LABEL_92;
  }

  if (sub_10001AB44() == a1 && v42 == a2)
  {

LABEL_97:

    return 17;
  }

  v43 = sub_10001AE74();

  if (v43)
  {
    goto LABEL_97;
  }

  if (sub_10001AB44() == a1 && v44 == a2)
  {

LABEL_102:

    return 18;
  }

  v45 = sub_10001AE74();

  if (v45)
  {
    goto LABEL_102;
  }

  if (sub_10001AB44() == a1 && v46 == a2)
  {
    goto LABEL_60;
  }

  v47 = sub_10001AE74();

  if (v47)
  {
    goto LABEL_61;
  }

  if (a1 == 0x6E4F6B6369507369 && a2 == 0xEC0000004E664F65)
  {

    return 20;
  }

  else
  {
    v48 = sub_10001AE74();

    if (v48)
    {
      return 20;
    }

    else
    {
      return 21;
    }
  }
}

uint64_t sub_100010A50(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x49656C6369747261 && a2 == 0xE900000000000044;
  if (v4 || (sub_10001AE74() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x496C656E6E616863 && a2 == 0xE900000000000044 || (sub_10001AE74() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 2036625250 && a2 == 0xE400000000000000 || (sub_10001AE74() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x446873696C627570 && a2 == 0xEB00000000657461 || (sub_10001AE74() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x646961507369 && a2 == 0xE600000000000000 || (sub_10001AE74() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656C646E75427369 && a2 == 0xEC00000064696150 || (sub_10001AE74() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000100021290 == a2 || (sub_10001AE74() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001000212B0 == a2 || (sub_10001AE74() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x73694C6369706F74 && a2 == 0xE900000000000074 || (sub_10001AE74() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001000212D0 == a2 || (sub_10001AE74() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000 || (sub_10001AE74() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x726F697661686562 && a2 == 0xED00007367616C46 || (sub_10001AE74() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x4972657473756C63 && a2 == 0xE900000000000044 || (sub_10001AE74() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x69616E626D756874 && a2 == 0xE90000000000006CLL || (sub_10001AE74() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x656873696C627570 && a2 == 0xED00006F676F4C72 || (sub_10001AE74() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001000212F0 == a2 || (sub_10001AE74() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000100021310 == a2 || (sub_10001AE74() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x656873696C627570 && a2 == 0xED0000656D614E72 || (sub_10001AE74() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_10001AE74() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0x74707265637865 && a2 == 0xE700000000000000 || (sub_10001AE74() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0x6E4F6B6369507369 && a2 == 0xEC0000004E664F65)
  {

    return 20;
  }

  else
  {
    v6 = sub_10001AE74();

    if (v6)
    {
      return 20;
    }

    else
    {
      return 21;
    }
  }
}

uint64_t sub_1000110F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_100011114, 0, 0);
}

uint64_t sub_100011114()
{
  v51 = v0;
  if ([*(v0 + 32) scheduledDeliverySetting] == 2)
  {
    v1 = *(v0 + 24);
    v2 = sub_10001409C(*(v0 + 16));
    v4 = v3;
    v48 = &_swiftEmptyArrayStorage;
    v49 = &_swiftEmptyDictionarySingleton;
    if (v1 >> 62)
    {
LABEL_56:
      v5 = sub_10001AD24();
    }

    else
    {
      v5 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v6 = *(v0 + 16);

    v7 = v6;
    v47 = v0;
    if (v5)
    {
      v8 = 0;
      v9 = *(v0 + 24);
      v10 = v1 & 0xC000000000000001;
      v11 = v1 & 0xFFFFFFFFFFFFFF8;
      v12 = v9 + 32;
      while (1)
      {
        if (v10)
        {
          v13 = sub_10001ACD4();
        }

        else
        {
          if (v8 >= *(v11 + 16))
          {
            goto LABEL_51;
          }

          v13 = *(v12 + 8 * v8);
        }

        v14 = v13;
        v15 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        v16 = v47[2];
        v50[0] = v13;
        sub_1000142FC(v50, v2, v4, v16, &v48, &v49);

        ++v8;
        if (v15 == v5)
        {
          v0 = v49;
          v7 = v47[2];
          goto LABEL_17;
        }
      }
    }

    else
    {
      v0 = &_swiftEmptyDictionarySingleton;
LABEL_17:

      v2 = v0 + 64;
      v19 = -1;
      v20 = -1 << *(v0 + 32);
      if (-v20 < 64)
      {
        v19 = ~(-1 << -v20);
      }

      v21 = v19 & *(v0 + 64);
      v1 = (63 - v20) >> 6;

      v22 = 0;
      while (v21)
      {
LABEL_25:
        v24 = *(*(v0 + 56) + ((v22 << 9) | (8 * __clz(__rbit64(v21)))));
        if (v24 >> 62)
        {
          v25 = sub_10001AD24();
        }

        else
        {
          v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v21 &= v21 - 1;
        if (v25 >= 2)
        {
          swift_bridgeObjectRetain_n();
          v50[0] = sub_100013B10(v24);
          sub_100012BA0(v50);

          v4 = v50;
          sub_100011620();

          v27 = v50[0];
          v41 = v0;
          if (v50[0] >> 62)
          {
            v28 = sub_10001AD24();
            if (v28)
            {
LABEL_30:
              v29 = 0;
              v44 = v27 & 0xFFFFFFFFFFFFFF8;
              v45 = v27 & 0xC000000000000001;
              v42 = v28;
              v43 = v27;
              while (1)
              {
                if (v45)
                {
                  v30 = sub_10001ACD4();
                }

                else
                {
                  if (v29 >= *(v44 + 16))
                  {
                    goto LABEL_55;
                  }

                  v30 = *(v27 + 8 * v29 + 32);
                }

                v0 = v30;
                v4 = (v29 + 1);
                if (__OFADD__(v29, 1))
                {
                  break;
                }

                v31 = [v30 request];
                v32 = [v31 identifier];

                v33 = sub_10001AB44();
                v35 = v34;

                v36 = v48;
                v46 = v0;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v36 = sub_100011AF0(0, *(v36 + 2) + 1, 1, v36);
                }

                v0 = *(v36 + 2);
                v37 = *(v36 + 3);
                if (v0 >= v37 >> 1)
                {
                  v36 = sub_100011AF0((v37 > 1), v0 + 1, 1, v36);
                }

                *(v36 + 2) = v0 + 1;
                v38 = &v36[16 * v0];
                *(v38 + 4) = v33;
                *(v38 + 5) = v35;

                v48 = v36;
                ++v29;
                v27 = v43;
                if (v4 == v42)
                {
                  goto LABEL_44;
                }
              }

              __break(1u);
LABEL_55:
              __break(1u);
              goto LABEL_56;
            }
          }

          else
          {
            v28 = *((v50[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v28)
            {
              goto LABEL_30;
            }
          }

LABEL_44:

          v0 = v41;
        }
      }

      while (1)
      {
        v23 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        if (v23 >= v1)
        {

          v17 = v48;

          v18 = sub_100013E7C(&_swiftEmptyArrayStorage);

          v0 = v47;
          goto LABEL_46;
        }

        v21 = *(v2 + 8 * v23);
        ++v22;
        if (v21)
        {
          v22 = v23;
          goto LABEL_25;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_51:
    __break(1u);
  }

  else
  {
    if (qword_100029960 != -1)
    {
      swift_once();
    }

    v17 = qword_10002B010;
    v18 = *algn_10002B018;

LABEL_46:
    v39 = *(v0 + 8);

    return v39(v17, v18);
  }
}

void sub_100011620()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (!v2)
  {
    if (*((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

    goto LABEL_10;
  }

  if (sub_10001AD24())
  {
    if (sub_10001AD24())
    {
LABEL_3:
      if ((v1 & 0xC000000000000001) == 0)
      {
        if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

        *(v1 + 32);
        if (!v2)
        {
          goto LABEL_6;
        }

        goto LABEL_12;
      }

LABEL_11:
      sub_10001ACD4();
      if (!v2)
      {
LABEL_6:
        v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_13;
      }

LABEL_12:
      v3 = sub_10001AD24();
LABEL_13:
      if (v3)
      {
        sub_100014828(0, 1);
        return;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

LABEL_17:
  __break(1u);
}

uint64_t sub_10001172C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1000117DC;

  return sub_1000110F0(a1, a2, a3);
}

uint64_t sub_1000117DC(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

char *sub_1000118E0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100007C4C(&qword_100029D60, &unk_10001F430);
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

char *sub_1000119EC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100007C4C(&qword_100029D48, &qword_10001F408);
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

char *sub_100011AF0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100007C4C(&qword_100029D28, &qword_10001F3F0);
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

void *sub_100011BFC(uint64_t a1, uint64_t a2)
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

  sub_100007C4C(&qword_100029D28, &qword_10001F3F0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_100011C80(uint64_t a1, uint64_t a2)
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

  sub_100007C4C(&qword_100029D40, &qword_10001F400);
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

unint64_t sub_100011D08(uint64_t a1, uint64_t a2)
{
  sub_10001AEA4();
  sub_10001AB64();
  v4 = sub_10001AEC4();

  return sub_100011DC4(a1, a2, v4);
}

unint64_t sub_100011D80(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10001AC74(*(v2 + 40));

  return sub_100011E7C(a1, v4);
}

unint64_t sub_100011DC4(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_10001AE74())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_100011E7C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10000E570(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_10001AC84();
      sub_10000E64C(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_100011F44(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100007C4C(&qword_100029D20, &qword_10001F3E8);
  v35 = v4;
  result = sub_10001AD44();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_10001AEA4();
      sub_10001AB64();
      result = sub_10001AEC4();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1000121E8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100007C4C(&qword_100029BC0, &qword_10001EEE0);
  result = sub_10001AD44();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
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
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (v4)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        sub_10000E63C((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        sub_10000E570(v23, &v36);
        sub_10000A4C4(*(v5 + 56) + 32 * v22, v35);
      }

      result = sub_10001AC74(*(v7 + 40));
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      result = sub_10000E63C(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if (v4)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1000124A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100007C4C(&qword_100029D50, &qword_10001F410);
  v34 = v4;
  result = sub_10001AD44();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_10001AEA4();
      sub_10001AB64();
      result = sub_10001AEC4();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

id sub_100012748()
{
  v1 = v0;
  sub_100007C4C(&qword_100029D20, &qword_10001F3E8);
  v2 = *v0;
  v3 = sub_10001AD34();
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

void *sub_1000128B4()
{
  v1 = v0;
  sub_100007C4C(&qword_100029D50, &qword_10001F410);
  v2 = *v0;
  v3 = sub_10001AD34();
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

uint64_t sub_100012A24(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100011D08(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1000124A0(v16, a4 & 1);
      v11 = sub_100011D08(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_10001AE94();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1000128B4();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

uint64_t sub_100012BA0(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_100013E68(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_100012C1C(v6);
  return sub_10001AD14();
}

void sub_100012C1C(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_10001AE64(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = &_swiftEmptyArrayStorage;
      }

      else
      {
        sub_10000C374();
        v6 = sub_10001ABC4();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_100012E98(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_100012D20(0, v2, 1, a1);
  }
}

void sub_100012D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v24 = *a4;
    v4 = *a4 + 8 * a3 - 8;
    v5 = a1 - a3;
LABEL_5:
    v22 = v4;
    v23 = a3;
    v6 = *(v24 + 8 * a3);
    v21 = v5;
    while (1)
    {
      v7 = *v4;
      v8 = v6;
      v9 = v7;
      v10 = [v8 request];
      v11 = [v10 content];

      [v11 relevanceScore];
      v13 = v12;

      v14 = [v9 request];
      v15 = [v14 content];

      [v15 relevanceScore];
      v17 = v16;

      if (v17 >= v13)
      {
LABEL_4:
        a3 = v23 + 1;
        v4 = v22 + 8;
        v5 = v21 - 1;
        if (v23 + 1 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v24)
      {
        break;
      }

      v18 = *v4;
      v6 = *(v4 + 8);
      *v4 = v6;
      *(v4 + 8) = v18;
      v4 -= 8;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_100012E98(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v7 = a3;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = &_swiftEmptyArrayStorage;
LABEL_86:
    v5 = v10;
    v10 = *a1;
    if (!*a1)
    {
      goto LABEL_124;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_118:
      v5 = sub_100013AFC(v5);
    }

    v107 = *(v5 + 2);
    if (v107 >= 2)
    {
      do
      {
        v108 = *v7;
        if (!*v7)
        {
          goto LABEL_122;
        }

        v7 = (v107 - 1);
        v109 = *&v5[16 * v107];
        v110 = *&v5[16 * v107 + 24];
        sub_10001367C((v108 + 8 * v109), (v108 + 8 * *&v5[16 * v107 + 16]), (v108 + 8 * v110), v10);
        if (v6)
        {
          break;
        }

        if (v110 < v109)
        {
          goto LABEL_111;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_100013AFC(v5);
        }

        if (v107 - 2 >= *(v5 + 2))
        {
          goto LABEL_112;
        }

        v111 = &v5[16 * v107];
        *v111 = v109;
        *(v111 + 1) = v110;
        sub_100013A70(v107 - 1);
        v107 = *(v5 + 2);
        v7 = a3;
      }

      while (v107 > 1);
    }

LABEL_96:

    return;
  }

  v9 = 0;
  v10 = &_swiftEmptyArrayStorage;
  while (1)
  {
    v11 = v9 + 1;
    if (v9 + 1 < v8)
    {
      v123 = v8;
      v115 = v6;
      v12 = *(*v7 + 8 * v11);
      v121 = 8 * v9;
      v13 = (*v7 + 8 * v9);
      v15 = *v13;
      v14 = v13 + 2;
      v5 = v12;
      v16 = v15;
      v17 = [v5 request];
      v18 = [v17 content];

      [v18 relevanceScore];
      v20 = v19;

      v21 = [v16 request];
      v22 = [v21 content];

      [v22 relevanceScore];
      v24 = v23;

      v114 = v9;
      v25 = v9 + 2;
      while (1)
      {
        v11 = v123;
        if (v123 == v25)
        {
          break;
        }

        v26 = v10;
        v27 = *(v14 - 1);
        v5 = *v14;
        v28 = v27;
        v10 = v26;
        v29 = v28;
        v30 = [v5 request];
        v31 = [v30 content];

        [v31 relevanceScore];
        v33 = v32;

        v34 = [v29 request];
        v35 = [v34 content];

        [v35 relevanceScore];
        v37 = v36;

        ++v25;
        ++v14;
        if (v24 < v20 == v37 >= v33)
        {
          v11 = v25 - 1;
          break;
        }
      }

      v9 = v114;
      v6 = v115;
      v7 = a3;
      v38 = v121;
      if (v24 < v20)
      {
        if (v11 < v114)
        {
          goto LABEL_115;
        }

        if (v114 < v11)
        {
          v39 = 8 * v11 - 8;
          v40 = v11;
          v41 = v114;
          do
          {
            if (v41 != --v40)
            {
              v43 = *a3;
              if (!*a3)
              {
                goto LABEL_121;
              }

              v42 = *(v43 + v38);
              *(v43 + v38) = *(v43 + v39);
              *(v43 + v39) = v42;
            }

            ++v41;
            v39 -= 8;
            v38 += 8;
          }

          while (v41 < v40);
        }
      }
    }

    v44 = v7[1];
    if (v11 < v44)
    {
      if (__OFSUB__(v11, v9))
      {
        goto LABEL_114;
      }

      if (v11 - v9 < a4)
      {
        v45 = v9 + a4;
        if (__OFADD__(v9, a4))
        {
          goto LABEL_116;
        }

        if (v45 >= v44)
        {
          v45 = v7[1];
        }

        if (v45 < v9)
        {
LABEL_117:
          __break(1u);
          goto LABEL_118;
        }

        if (v11 != v45)
        {
          break;
        }
      }
    }

LABEL_35:
    if (v11 < v9)
    {
      goto LABEL_113;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_1000119EC(0, *(v10 + 2) + 1, 1, v10);
    }

    v62 = *(v10 + 2);
    v61 = *(v10 + 3);
    v63 = v62 + 1;
    if (v62 >= v61 >> 1)
    {
      v10 = sub_1000119EC((v61 > 1), v62 + 1, 1, v10);
    }

    *(v10 + 2) = v63;
    v64 = &v10[16 * v62];
    *(v64 + 4) = v9;
    *(v64 + 5) = v11;
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_123;
    }

    v125 = v11;
    if (v62)
    {
      while (1)
      {
        v65 = v63 - 1;
        if (v63 >= 4)
        {
          break;
        }

        if (v63 == 3)
        {
          v66 = *(v10 + 4);
          v67 = *(v10 + 5);
          v76 = __OFSUB__(v67, v66);
          v68 = v67 - v66;
          v69 = v76;
LABEL_55:
          if (v69)
          {
            goto LABEL_102;
          }

          v82 = &v10[16 * v63];
          v84 = *v82;
          v83 = *(v82 + 1);
          v85 = __OFSUB__(v83, v84);
          v86 = v83 - v84;
          v87 = v85;
          if (v85)
          {
            goto LABEL_105;
          }

          v88 = &v10[16 * v65 + 32];
          v90 = *v88;
          v89 = *(v88 + 1);
          v76 = __OFSUB__(v89, v90);
          v91 = v89 - v90;
          if (v76)
          {
            goto LABEL_108;
          }

          if (__OFADD__(v86, v91))
          {
            goto LABEL_109;
          }

          if (v86 + v91 >= v68)
          {
            if (v68 < v91)
            {
              v65 = v63 - 2;
            }

            goto LABEL_76;
          }

          goto LABEL_69;
        }

        v92 = &v10[16 * v63];
        v94 = *v92;
        v93 = *(v92 + 1);
        v76 = __OFSUB__(v93, v94);
        v86 = v93 - v94;
        v87 = v76;
LABEL_69:
        if (v87)
        {
          goto LABEL_104;
        }

        v95 = &v10[16 * v65];
        v97 = *(v95 + 4);
        v96 = *(v95 + 5);
        v76 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v76)
        {
          goto LABEL_107;
        }

        if (v98 < v86)
        {
          goto LABEL_3;
        }

LABEL_76:
        v103 = v65 - 1;
        if (v65 - 1 >= v63)
        {
          __break(1u);
LABEL_98:
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
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
          goto LABEL_117;
        }

        if (!*v7)
        {
          goto LABEL_120;
        }

        v104 = *&v10[16 * v103 + 32];
        v105 = *&v10[16 * v65 + 40];
        sub_10001367C((*v7 + 8 * v104), (*v7 + 8 * *&v10[16 * v65 + 32]), (*v7 + 8 * v105), v5);
        if (v6)
        {
          goto LABEL_96;
        }

        if (v105 < v104)
        {
          goto LABEL_98;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_100013AFC(v10);
        }

        if (v103 >= *(v10 + 2))
        {
          goto LABEL_99;
        }

        v106 = &v10[16 * v103];
        *(v106 + 4) = v104;
        *(v106 + 5) = v105;
        sub_100013A70(v65);
        v63 = *(v10 + 2);
        if (v63 <= 1)
        {
          goto LABEL_3;
        }
      }

      v70 = &v10[16 * v63 + 32];
      v71 = *(v70 - 64);
      v72 = *(v70 - 56);
      v76 = __OFSUB__(v72, v71);
      v73 = v72 - v71;
      if (v76)
      {
        goto LABEL_100;
      }

      v75 = *(v70 - 48);
      v74 = *(v70 - 40);
      v76 = __OFSUB__(v74, v75);
      v68 = v74 - v75;
      v69 = v76;
      if (v76)
      {
        goto LABEL_101;
      }

      v77 = &v10[16 * v63];
      v79 = *v77;
      v78 = *(v77 + 1);
      v76 = __OFSUB__(v78, v79);
      v80 = v78 - v79;
      if (v76)
      {
        goto LABEL_103;
      }

      v76 = __OFADD__(v68, v80);
      v81 = v68 + v80;
      if (v76)
      {
        goto LABEL_106;
      }

      if (v81 >= v73)
      {
        v99 = &v10[16 * v65 + 32];
        v101 = *v99;
        v100 = *(v99 + 1);
        v76 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v76)
        {
          goto LABEL_110;
        }

        if (v68 < v102)
        {
          v65 = v63 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

LABEL_3:
    v8 = v7[1];
    v9 = v125;
    if (v125 >= v8)
    {
      goto LABEL_86;
    }
  }

  v112 = v10;
  v116 = v6;
  v126 = *v7;
  v46 = *v7 + 8 * v11 - 8;
  v47 = v9 - v11;
  v119 = v45;
LABEL_28:
  v122 = v46;
  v124 = v11;
  v48 = *(v126 + 8 * v11);
  v120 = v47;
  while (1)
  {
    v49 = *v46;
    v5 = v48;
    v50 = v49;
    v51 = [v5 request];
    v52 = [v51 content];

    [v52 relevanceScore];
    v54 = v53;

    v55 = [v50 request];
    v56 = [v55 content];

    [v56 relevanceScore];
    v58 = v57;

    if (v58 >= v54)
    {
LABEL_27:
      ++v11;
      v46 = v122 + 8;
      v47 = v120 - 1;
      if (v124 + 1 != v119)
      {
        goto LABEL_28;
      }

      v11 = v119;
      v6 = v116;
      v7 = a3;
      v10 = v112;
      goto LABEL_35;
    }

    if (!v126)
    {
      break;
    }

    v59 = *v46;
    v48 = *(v46 + 8);
    *v46 = v48;
    *(v46 + 8) = v59;
    v46 -= 8;
    if (__CFADD__(v47++, 1))
    {
      goto LABEL_27;
    }
  }

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
}

uint64_t sub_10001367C(void **__dst, void **a2, id *a3, void **__src)
{
  v4 = a3;
  v5 = __dst;
  v6 = a2 - __dst;
  v7 = a2 - __dst + 7;
  if (a2 - __dst >= 0)
  {
    v7 = a2 - __dst;
  }

  v8 = v7 >> 3;
  v9 = a3 - a2;
  v10 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v10 = a3 - a2;
  }

  v11 = v10 >> 3;
  if (v8 >= v10 >> 3)
  {
    if (__src != a2 || &a2[v11] <= __src)
    {
      v29 = a2;
      v30 = __src;
      memmove(__src, a2, 8 * v11);
      __src = v30;
      a2 = v29;
    }

    v52 = __src;
    v14 = &__src[v11];
    if (v9 < 8)
    {
      v13 = __src;
    }

    else
    {
      v13 = __src;
      if (a2 > v5)
      {
LABEL_26:
        v50 = a2;
        v31 = a2 - 1;
        v32 = v4 - 1;
        v33 = v14;
        do
        {
          v34 = v32;
          v35 = v32 + 1;
          v36 = *(v33 - 1);
          v33 -= 8;
          v37 = v31;
          v38 = *v31;
          v53 = v36;
          v39 = v38;
          v40 = [v53 request];
          v41 = [v40 content];

          [v41 relevanceScore];
          v43 = v42;

          v44 = [v39 request];
          v45 = [v44 content];

          [v45 relevanceScore];
          v47 = v46;

          if (v47 < v43)
          {
            v4 = v34;
            if (v35 != v50)
            {
              *v34 = *v37;
            }

            v13 = v52;
            if (v14 <= v52 || (a2 = v37, v37 <= v5))
            {
              a2 = v37;
              goto LABEL_39;
            }

            goto LABEL_26;
          }

          if (v35 != v14)
          {
            *v34 = *v33;
          }

          v32 = v34 - 1;
          v14 = v33;
          v13 = v52;
          v31 = v37;
        }

        while (v33 > v52);
        v14 = v33;
        a2 = v50;
      }
    }
  }

  else
  {
    v12 = a2;
    v13 = __src;
    if (__src != __dst || &__dst[v8] <= __src)
    {
      memmove(__src, __dst, 8 * v8);
    }

    v14 = &v13[v8];
    if (v6 < 8)
    {
      a2 = v5;
    }

    else
    {
      v51 = &v13[v8];
      if (v12 < v4)
      {
        v15 = v12;
        v49 = v4;
        while (1)
        {
          v16 = *v13;
          v17 = *v15;
          v18 = v16;
          v19 = [v17 request];
          v20 = [v19 content];

          [v20 relevanceScore];
          v22 = v21;

          v23 = [v18 request];
          v24 = [v23 content];

          [v24 relevanceScore];
          v26 = v25;

          if (v26 >= v22)
          {
            break;
          }

          v27 = v15;
          v28 = v5 == v15++;
          if (!v28)
          {
            goto LABEL_17;
          }

LABEL_18:
          ++v5;
          if (v13 >= v51 || v15 >= v49)
          {
            goto LABEL_20;
          }
        }

        v27 = v13;
        v28 = v5 == v13++;
        if (v28)
        {
          goto LABEL_18;
        }

LABEL_17:
        *v5 = *v27;
        goto LABEL_18;
      }

LABEL_20:
      a2 = v5;
      v14 = v51;
    }
  }

LABEL_39:
  if (a2 != v13 || a2 >= (v13 + ((v14 - v13 + (v14 - v13 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a2, v13, 8 * ((v14 - v13) / 8));
  }

  return 1;
}

uint64_t sub_100013A70(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100013AFC(v3);
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

void *sub_100013B10(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = sub_10001AD24();
  if (!v3)
  {
LABEL_7:

    return &_swiftEmptyArrayStorage;
  }

  v4 = v3;
  v5 = sub_100011C80(v3, 0);
  sub_100013BA4(v5 + 32, v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_100013BA4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_10001AD24();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
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
      result = sub_10001AD24();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100014900();
          for (i = 0; i != v6; ++i)
          {
            sub_100007C4C(&qword_100029D30, &qword_10001F3F8);
            v9 = sub_100013D24(v13, i, a3);
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
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_10000C374();
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

void (*sub_100013D24(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_10001ACD4();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_100013DA4;
  }

  __break(1u);
  return result;
}

unint64_t sub_100013DAC(uint64_t a1, char a2)
{
  v4 = *v2;
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if ((isUniquelyReferenced_nonNull_bridgeObject & 1) == 0 || (result = 0, (v4 & 0x8000000000000000) != 0) || (v4 & 0x4000000000000000) != 0 || a1 > *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    if (v4 >> 62)
    {
      sub_10001AD24();
    }

    result = sub_10001ACE4();
    *v2 = result;
  }

  return result;
}

unint64_t sub_100013E7C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100007C4C(&qword_100029D20, &qword_10001F3E8);
    v3 = sub_10001AD54();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_100011D08(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

unint64_t sub_100013F80(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100007C4C(&qword_100029BC0, &qword_10001EEE0);
    v3 = sub_10001AD54();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000E5CC(v4, v13);
      result = sub_100011D80(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_10000E63C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

uint64_t sub_10001409C(void *a1)
{
  v2 = [a1 categoryIdentifier];
  v3 = sub_10001AB44();
  v5 = v4;

  if (v3 == sub_10001AB44() && v5 == v6)
  {
  }

  else
  {
    v8 = sub_10001AE74();

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  v9 = [a1 userInfo];
  v10 = sub_10001AB14();

  v16 = sub_10001AB44();
  sub_10001AC94();
  if (!*(v10 + 16))
  {
    goto LABEL_19;
  }

  v11 = sub_100011D80(&v17);
  if ((v12 & 1) == 0)
  {
    goto LABEL_19;
  }

  sub_10000A4C4(*(v10 + 56) + 32 * v11, &v18);
  sub_10000E64C(&v17);

  sub_100007C4C(&qword_100029B30, &unk_10001F420);
  if ((swift_dynamicCast() & 1) == 0 || !v16)
  {
    goto LABEL_20;
  }

  sub_10001AB44();
  sub_10001AC94();
  if (!*(v16 + 16) || (v13 = sub_100011D80(&v17), (v14 & 1) == 0))
  {
LABEL_19:

    sub_10000E64C(&v17);
LABEL_20:
    v18 = 0u;
    v19 = 0u;
    goto LABEL_21;
  }

  sub_10000A4C4(*(v16 + 56) + 32 * v13, &v18);
  sub_10000E64C(&v17);

  if (!*(&v19 + 1))
  {
LABEL_21:
    sub_100014964(&v18);
    return 0;
  }

  if (swift_dynamicCast())
  {
    return v17;
  }

  else
  {
    return 0;
  }
}

void sub_1000142FC(id *a1, uint64_t a2, uint64_t a3, void *a4, char **a5, void *a6)
{
  v9 = *a1;
  v10 = [*a1 request];
  v11 = [v10 content];

  v12 = [v11 categoryIdentifier];
  v13 = sub_10001AB44();
  v15 = v14;

  if (v13 == sub_10001AB44() && v15 == v16)
  {
  }

  else
  {
    v18 = sub_10001AE74();

    if ((v18 & 1) == 0)
    {
      return;
    }
  }

  v19 = [v9 request];
  v20 = [v19 content];

  v49 = sub_10001409C(v20);
  v22 = v21;

  if (v22)
  {
    if (a3 && (v49 == a2 && v22 == a3 || (sub_10001AE74() & 1) != 0))
    {
      v23 = [v9 request];
      v24 = [v23 content];

      [v24 relevanceScore];
      v26 = v25;

      [a4 relevanceScore];
      if (v26 < v27)
      {
        v28 = [v9 request];
        v29 = [v28 identifier];

        v30 = sub_10001AB44();
        v32 = v31;

        v33 = *a5;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *a5 = v33;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v33 = sub_100011AF0(0, *(v33 + 2) + 1, 1, v33);
          *a5 = v33;
        }

        v36 = *(v33 + 2);
        v35 = *(v33 + 3);
        if (v36 >= v35 >> 1)
        {
          v33 = sub_100011AF0((v35 > 1), v36 + 1, 1, v33);
          *a5 = v33;
        }

        *(v33 + 2) = v36 + 1;
        v37 = &v33[16 * v36];
        *(v37 + 4) = v30;
        *(v37 + 5) = v32;
      }
    }

    v38 = *a6;
    if (*(*a6 + 16) && (v39 = sub_100011D08(v49, v22), (v40 & 1) != 0))
    {
      v51 = *(*(v38 + 56) + 8 * v39);
      v41 = v9;

      sub_10001AB84();
      if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_10001ABB4();
      }

      sub_10001ABD4();
      v42 = swift_isUniquelyReferenced_nonNull_native();
      v50 = *a6;
      *a6 = 0x8000000000000000;
      sub_100012A24(v51, v49, v22, v42);

      v43 = v50;
    }

    else
    {
      sub_100007C4C(&qword_100029D40, &qword_10001F400);
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_10001F390;
      *(v44 + 32) = v9;
      v45 = v9;
      v46 = swift_isUniquelyReferenced_nonNull_native();
      v52 = *a6;
      *a6 = 0x8000000000000000;
      sub_100012A24(v44, v49, v22, v46);

      v43 = v52;
    }

    *a6 = v43;
  }
}

uint64_t sub_100014728(uint64_t a1, uint64_t a2, uint64_t a3)
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
  sub_10000C374();
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
  result = sub_10001AD24();
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
    result = sub_10001AD24();
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

uint64_t sub_100014828(uint64_t a1, uint64_t a2)
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
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_10001AD24();
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
    v10 = sub_10001AD24();
  }

  else
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    goto LABEL_18;
  }

  sub_100013DAC(result, 1);

  return sub_100014728(v5, v3, 0);
}

unint64_t sub_100014900()
{
  result = qword_100029D38;
  if (!qword_100029D38)
  {
    sub_10000FE6C(&qword_100029D30, &qword_10001F3F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029D38);
  }

  return result;
}

uint64_t sub_100014964(uint64_t a1)
{
  v2 = sub_100007C4C(&qword_100029D58, &qword_10001F418);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1000149CC(id *a1, uint64_t a2, uint64_t a3, char **a4)
{
  v7 = *a1;
  v8 = [*a1 request];
  v9 = [v8 content];

  v10 = [v9 categoryIdentifier];
  v11 = sub_10001AB44();
  v13 = v12;

  if (v11 == sub_10001AB44() && v13 == v14)
  {
  }

  else
  {
    v16 = sub_10001AE74();

    if ((v16 & 1) == 0)
    {
      return;
    }
  }

  v55 = a3;
  v54 = a4;
  v17 = objc_opt_self();
  v18 = [v7 request];
  v19 = [v18 content];

  v20 = [v19 userInfo];
  sub_10001AB14();

  isa = sub_10001AB04().super.isa;

  v22 = [v17 isValidJSONObject:isa];

  if (v22)
  {
    v23 = [v7 request];
    v24 = [v23 content];

    v25 = [v24 userInfo];
    sub_10001AB14();

    v26 = sub_10001AB04().super.isa;

    __src[0] = 0;
    v27 = [v17 dataWithJSONObject:v26 options:0 error:__src];

    v28 = __src[0];
    if (!v27)
    {
      v32 = v28;
      sub_10001A9D4();

      swift_willThrow();

      return;
    }

    v29 = sub_10001A9E4();
    v31 = v30;

    sub_10000E4C4();
    sub_10001A9A4();
    if (v4)
    {

      sub_10000E518(v29, v31);
      return;
    }

    memcpy(__dst, __src, 0x189uLL);
    v33 = *(a3 + 88);
    v34 = *(v55 + 96);
    if (__dst[11] == v33 && __dst[12] == v34)
    {
      sub_10000EBE0(__dst);
    }

    else
    {
      v35 = sub_10001AE74();
      sub_10000EBE0(__dst);
      if ((v35 & 1) == 0)
      {
        sub_10000E518(v29, v31);
        return;
      }
    }

    if (qword_100029970 != -1)
    {
      swift_once();
    }

    v36 = sub_10001AAF4();
    sub_10000C07C(v36, qword_10002B038);
    sub_10000EBA8(v55, v56);
    v37 = sub_10001AAD4();
    v38 = sub_10001AC54();
    sub_10000EBE0(v55);
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v41 = v34;
      v42 = v40;
      v56[0] = v40;
      *v39 = 136315138;
      *(v39 + 4) = sub_1000150F4(v33, v41, v56);
      _os_log_impl(&_mh_execute_header, v37, v38, "Removing delivered notification for articleID: %s", v39, 0xCu);
      sub_100007C00(v42);
    }

    v43 = [v7 request];
    v44 = [v43 identifier];

    v45 = sub_10001AB44();
    v47 = v46;

    v48 = *v54;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v54 = v48;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v48 = sub_100011AF0(0, *(v48 + 2) + 1, 1, v48);
      *v54 = v48;
    }

    v51 = *(v48 + 2);
    v50 = *(v48 + 3);
    if (v51 >= v50 >> 1)
    {
      *v54 = sub_100011AF0((v50 > 1), v51 + 1, 1, v48);
    }

    sub_10000E518(v29, v31);
    v52 = *v54;
    *(v52 + 2) = v51 + 1;
    v53 = &v52[16 * v51];
    *(v53 + 4) = v45;
    *(v53 + 5) = v47;
  }
}

uint64_t sub_100014FDC()
{

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t sub_100015038(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000117DC;

  return sub_10001684C(a1, a2);
}

unint64_t sub_1000150F4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000151C0(v11, 0, 0, 1, a1, a2);
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
    sub_10000A4C4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100007C00(v11);
  return v7;
}

unint64_t sub_1000151C0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1000152CC(a5, a6);
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
    result = sub_10001ACF4();
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

char *sub_1000152CC(uint64_t a1, unint64_t a2)
{
  v3 = sub_100015318(a1, a2);
  sub_100015448(&off_100024FB8);
  return v3;
}

char *sub_100015318(uint64_t a1, unint64_t a2)
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

  v6 = sub_100015534(v5, 0);
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

  result = sub_10001ACF4();
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
        v10 = sub_10001AB74();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100015534(v10, 0);
        result = sub_10001ACC4();
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

uint64_t sub_100015448(uint64_t result)
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

  result = sub_1000155A8(result, v11, 1, v3);
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

void *sub_100015534(uint64_t a1, uint64_t a2)
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

  sub_100007C4C(&qword_100029E10, &qword_10001F498);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000155A8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100007C4C(&qword_100029E10, &qword_10001F498);
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

uint64_t sub_10001569C(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_100013E68(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_100015718(v6);
  return sub_10001AD14();
}

void sub_100015718(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_10001AE64(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = &_swiftEmptyArrayStorage;
      }

      else
      {
        sub_10000C374();
        v6 = sub_10001ABC4();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_100015A3C(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_10001581C(0, v2, 1, a1);
  }
}

void sub_10001581C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v35 = sub_10001AA14();
  v8 = __chkstk_darwin(v35);
  v34 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v29 - v11;
  v30 = a2;
  if (a3 != a2)
  {
    v13 = (v10 + 8);
    v36 = *a4;
    v14 = v36 + 8 * a3 - 8;
    v15 = a1 - a3;
LABEL_5:
    v32 = v14;
    v33 = a3;
    v16 = *(v36 + 8 * a3);
    v31 = v15;
    v17 = v15;
    while (1)
    {
      v18 = *v14;
      v19 = v16;
      v20 = v18;
      v21 = [v19 date];
      sub_10001AA04();

      v22 = [v20 date];
      v23 = v34;
      sub_10001AA04();

      LOBYTE(v22) = sub_10001A9F4();
      v24 = *v13;
      v25 = v23;
      v26 = v35;
      (*v13)(v25, v35);
      v24(v12, v26);

      if ((v22 & 1) == 0)
      {
LABEL_4:
        a3 = v33 + 1;
        v14 = v32 + 8;
        v15 = v31 - 1;
        if (v33 + 1 == v30)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v36)
      {
        break;
      }

      v27 = *v14;
      v16 = *(v14 + 8);
      *v14 = v16;
      *(v14 + 8) = v27;
      v14 -= 8;
      if (__CFADD__(v17++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_100015A3C(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v6 = v4;
  v116 = a1;
  v125 = sub_10001AA14();
  v9 = __chkstk_darwin(v125);
  v124 = &v110 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v123 = &v110 - v12;
  v13 = a3[1];
  if (v13 < 1)
  {
    v15 = &_swiftEmptyArrayStorage;
LABEL_88:
    v5 = *v116;
    if (!*v116)
    {
      goto LABEL_127;
    }

    a4 = v15;
    v16 = a3;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v105 = a4;
    }

    else
    {
LABEL_121:
      v105 = sub_100013AFC(a4);
    }

    v126 = v105;
    v106 = *(v105 + 2);
    if (v106 >= 2)
    {
      while (*v16)
      {
        a4 = *&v105[16 * v106];
        v107 = v105;
        v108 = *&v105[16 * v106 + 24];
        sub_1000162AC((*v16 + 8 * a4), (*v16 + 8 * *&v105[16 * v106 + 16]), (*v16 + 8 * v108), v5);
        if (v6)
        {
          goto LABEL_99;
        }

        if (v108 < a4)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v107 = sub_100013AFC(v107);
        }

        if (v106 - 2 >= *(v107 + 2))
        {
          goto LABEL_115;
        }

        v109 = &v107[16 * v106];
        *v109 = a4;
        *(v109 + 1) = v108;
        v126 = v107;
        sub_100013A70(v106 - 1);
        v105 = v126;
        v106 = *(v126 + 2);
        if (v106 <= 1)
        {
          goto LABEL_99;
        }
      }

      goto LABEL_125;
    }

LABEL_99:

    return;
  }

  v14 = 0;
  v122 = (v11 + 8);
  v15 = &_swiftEmptyArrayStorage;
  v115 = a4;
  v111 = a3;
  while (1)
  {
    v16 = v14++;
    if (v14 < v13)
    {
      v120 = v13;
      v113 = v15;
      v114 = v6;
      v17 = *a3;
      v18 = *(*a3 + 8 * v14);
      v119 = 8 * v16;
      v19 = (v17 + 8 * v16);
      v20 = *v19;
      v5 = (v19 + 2);
      v21 = v18;
      v22 = v20;
      v23 = [v21 date];
      v24 = v123;
      sub_10001AA04();

      v25 = [v22 date];
      v26 = v124;
      sub_10001AA04();

      LODWORD(v121) = sub_10001A9F4();
      v27 = *v122;
      v28 = v125;
      (*v122)(v26, v125);
      v27(v24, v28);

      v112 = v16;
      v29 = (v16 + 2);
      while (1)
      {
        v14 = v120;
        if (v120 == v29)
        {
          break;
        }

        v30 = *(v5 - 8);
        v31 = *v5;
        v32 = v30;
        v33 = [v31 date];
        v34 = v123;
        sub_10001AA04();

        v35 = [v32 date];
        v36 = v124;
        sub_10001AA04();

        LODWORD(v35) = sub_10001A9F4() & 1;
        v37 = v36;
        v38 = v125;
        v27(v37, v125);
        v27(v34, v38);

        ++v29;
        v5 += 8;
        if ((v121 & 1) != v35)
        {
          v14 = (v29 - 1);
          break;
        }
      }

      v15 = v113;
      v6 = v114;
      a4 = v115;
      v16 = v112;
      v39 = v119;
      if (v121)
      {
        if (v14 < v112)
        {
          goto LABEL_118;
        }

        a3 = v111;
        if (v112 < v14)
        {
          v40 = 8 * v14 - 8;
          v41 = v14;
          v42 = v112;
          do
          {
            if (v42 != --v41)
            {
              v44 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v43 = *(v44 + v39);
              *(v44 + v39) = *(v44 + v40);
              *(v44 + v40) = v43;
            }

            v42 = (v42 + 1);
            v40 -= 8;
            v39 += 8;
          }

          while (v42 < v41);
        }
      }

      else
      {
        a3 = v111;
      }
    }

    v45 = a3[1];
    if (v14 < v45)
    {
      if (__OFSUB__(v14, v16))
      {
        goto LABEL_117;
      }

      if (v14 - v16 < a4)
      {
        v46 = (v16 + a4);
        if (__OFADD__(v16, a4))
        {
          goto LABEL_119;
        }

        if (v46 >= v45)
        {
          v46 = a3[1];
        }

        if (v46 < v16)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v14 != v46)
        {
          break;
        }
      }
    }

LABEL_36:
    if (v14 < v16)
    {
      goto LABEL_116;
    }

    v61 = v15;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v15 = v61;
    }

    else
    {
      v15 = sub_1000119EC(0, *(v61 + 2) + 1, 1, v61);
    }

    a4 = *(v15 + 2);
    v62 = *(v15 + 3);
    v5 = a4 + 1;
    if (a4 >= v62 >> 1)
    {
      v15 = sub_1000119EC((v62 > 1), a4 + 1, 1, v15);
    }

    *(v15 + 2) = v5;
    v63 = &v15[16 * a4];
    *(v63 + 4) = v16;
    *(v63 + 5) = v14;
    v64 = *v116;
    if (!*v116)
    {
      goto LABEL_126;
    }

    if (a4)
    {
      while (1)
      {
        v65 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v66 = *(v15 + 4);
          v67 = *(v15 + 5);
          v76 = __OFSUB__(v67, v66);
          v68 = v67 - v66;
          v69 = v76;
LABEL_56:
          if (v69)
          {
            goto LABEL_105;
          }

          v82 = &v15[16 * v5];
          v84 = *v82;
          v83 = *(v82 + 1);
          v85 = __OFSUB__(v83, v84);
          v86 = v83 - v84;
          v87 = v85;
          if (v85)
          {
            goto LABEL_108;
          }

          v88 = &v15[16 * v65 + 32];
          v90 = *v88;
          v89 = *(v88 + 1);
          v76 = __OFSUB__(v89, v90);
          v91 = v89 - v90;
          if (v76)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v86, v91))
          {
            goto LABEL_112;
          }

          if (v86 + v91 >= v68)
          {
            if (v68 < v91)
            {
              v65 = v5 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v92 = &v15[16 * v5];
        v94 = *v92;
        v93 = *(v92 + 1);
        v76 = __OFSUB__(v93, v94);
        v86 = v93 - v94;
        v87 = v76;
LABEL_70:
        if (v87)
        {
          goto LABEL_107;
        }

        v95 = &v15[16 * v65];
        v97 = *(v95 + 4);
        v96 = *(v95 + 5);
        v76 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v76)
        {
          goto LABEL_110;
        }

        if (v98 < v86)
        {
          goto LABEL_3;
        }

LABEL_77:
        a4 = v65 - 1;
        if (v65 - 1 >= v5)
        {
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
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
          goto LABEL_120;
        }

        if (!*a3)
        {
          goto LABEL_123;
        }

        v103 = v15;
        v5 = *&v15[16 * a4 + 32];
        v16 = *&v15[16 * v65 + 40];
        sub_1000162AC((*a3 + 8 * v5), (*a3 + 8 * *&v15[16 * v65 + 32]), (*a3 + 8 * v16), v64);
        if (v6)
        {
          goto LABEL_99;
        }

        if (v16 < v5)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v103 = sub_100013AFC(v103);
        }

        if (a4 >= *(v103 + 2))
        {
          goto LABEL_102;
        }

        v104 = &v103[16 * a4];
        *(v104 + 4) = v5;
        *(v104 + 5) = v16;
        v126 = v103;
        a4 = &v126;
        sub_100013A70(v65);
        v15 = v126;
        v5 = *(v126 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v70 = &v15[16 * v5 + 32];
      v71 = *(v70 - 64);
      v72 = *(v70 - 56);
      v76 = __OFSUB__(v72, v71);
      v73 = v72 - v71;
      if (v76)
      {
        goto LABEL_103;
      }

      v75 = *(v70 - 48);
      v74 = *(v70 - 40);
      v76 = __OFSUB__(v74, v75);
      v68 = v74 - v75;
      v69 = v76;
      if (v76)
      {
        goto LABEL_104;
      }

      v77 = &v15[16 * v5];
      v79 = *v77;
      v78 = *(v77 + 1);
      v76 = __OFSUB__(v78, v79);
      v80 = v78 - v79;
      if (v76)
      {
        goto LABEL_106;
      }

      v76 = __OFADD__(v68, v80);
      v81 = v68 + v80;
      if (v76)
      {
        goto LABEL_109;
      }

      if (v81 >= v73)
      {
        v99 = &v15[16 * v65 + 32];
        v101 = *v99;
        v100 = *(v99 + 1);
        v76 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v76)
        {
          goto LABEL_113;
        }

        if (v68 < v102)
        {
          v65 = v5 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

LABEL_3:
    v13 = a3[1];
    a4 = v115;
    if (v14 >= v13)
    {
      goto LABEL_88;
    }
  }

  v113 = v15;
  v114 = v6;
  v121 = *a3;
  v47 = v121 + 8 * v14 - 8;
  v112 = v16;
  a4 = v16 - v14;
  v117 = v46;
LABEL_29:
  v119 = v47;
  v120 = v14;
  v48 = *(v121 + 8 * v14);
  v118 = a4;
  v49 = v47;
  while (1)
  {
    v50 = *v49;
    v5 = v48;
    v51 = v50;
    v52 = [v5 date];
    v53 = v123;
    sub_10001AA04();

    v54 = [v51 date];
    v55 = v124;
    sub_10001AA04();

    LOBYTE(v54) = sub_10001A9F4();
    v56 = *v122;
    v57 = v55;
    v58 = v125;
    (*v122)(v57, v125);
    v56(v53, v58);

    if ((v54 & 1) == 0)
    {
LABEL_28:
      v14 = v120 + 1;
      v47 = v119 + 8;
      a4 = v118 - 1;
      if ((v120 + 1) != v117)
      {
        goto LABEL_29;
      }

      v14 = v117;
      v15 = v113;
      v6 = v114;
      a3 = v111;
      v16 = v112;
      goto LABEL_36;
    }

    if (!v121)
    {
      break;
    }

    v59 = *v49;
    v48 = *(v49 + 8);
    *v49 = v48;
    *(v49 + 8) = v59;
    v49 -= 8;
    if (__CFADD__(a4++, 1))
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
}

uint64_t sub_1000162AC(id *a1, id *a2, id *a3, void **a4)
{
  v56 = sub_10001AA14();
  v8 = *(v56 - 8);
  v9 = __chkstk_darwin(v56);
  v55 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v54 = &v49 - v11;
  v12 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v12 = a2 - a1;
  }

  v13 = v12 >> 3;
  v14 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v14 = a3 - a2;
  }

  v15 = v14 >> 3;
  if (v13 >= v14 >> 3)
  {
    v57 = a1;
    a1 = a2;
    if (a4 != a2 || &a2[v15] <= a4)
    {
      memmove(a4, a2, 8 * v15);
    }

    v58 = &a4[v15];
    if (a3 - a2 >= 8 && a2 > v57)
    {
      v50 = (v8 + 8);
LABEL_27:
      v49 = a1;
      v30 = a1 - 1;
      v31 = a3 - 1;
      v32 = v58;
      v51 = a1 - 1;
      do
      {
        v33 = a4;
        v34 = v31;
        v35 = v31 + 1;
        v36 = *--v32;
        v37 = *v30;
        v38 = v36;
        v53 = v38;
        v39 = v37;
        v52 = v39;
        v40 = [v38 date];
        v41 = v54;
        sub_10001AA04();

        v42 = [v39 date];
        v43 = v55;
        sub_10001AA04();

        LOBYTE(v42) = sub_10001A9F4();
        v44 = *v50;
        v45 = v43;
        v46 = v56;
        (*v50)(v45, v56);
        v44(v41, v46);

        if (v42)
        {
          a4 = v33;
          a3 = v34;
          v47 = v51;
          if (v35 != v49)
          {
            *v34 = *v51;
          }

          if (v58 <= v33 || (a1 = v47, v47 <= v57))
          {
            a1 = v47;
            goto LABEL_39;
          }

          goto LABEL_27;
        }

        a4 = v33;
        if (v35 != v58)
        {
          *v34 = *v32;
        }

        v31 = v34 - 1;
        v58 = v32;
        v30 = v51;
      }

      while (v32 > v33);
      v58 = v32;
      a1 = v49;
    }
  }

  else
  {
    if (a4 != a1 || &a1[v13] <= a4)
    {
      memmove(a4, a1, 8 * v13);
    }

    v58 = &a4[v13];
    if (a2 - a1 >= 8 && a2 < a3)
    {
      v53 = a3;
      v16 = (v8 + 8);
      while (1)
      {
        v57 = a1;
        v17 = *a4;
        v18 = *a2;
        v19 = v17;
        v20 = [v18 date];
        v21 = v54;
        sub_10001AA04();

        v22 = [v19 date];
        v23 = v55;
        sub_10001AA04();

        LOBYTE(v22) = sub_10001A9F4();
        v24 = *v16;
        v25 = v23;
        v26 = v56;
        (*v16)(v25, v56);
        v24(v21, v26);

        if ((v22 & 1) == 0)
        {
          break;
        }

        v27 = a2;
        v28 = v57;
        v29 = v57 == a2++;
        if (!v29)
        {
          goto LABEL_17;
        }

LABEL_18:
        a1 = v28 + 1;
        if (a4 >= v58 || a2 >= v53)
        {
          goto LABEL_39;
        }
      }

      v27 = a4;
      v28 = v57;
      v29 = v57 == a4++;
      if (v29)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v28 = *v27;
      goto LABEL_18;
    }
  }

LABEL_39:
  if (a1 != a4 || a1 >= (a4 + ((v58 - a4 + (v58 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a1, a4, 8 * (v58 - a4));
  }

  return 1;
}