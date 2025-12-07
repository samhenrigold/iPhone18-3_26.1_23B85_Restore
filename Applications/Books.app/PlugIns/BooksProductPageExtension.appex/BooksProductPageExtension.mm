void sub_1000021BC(uint64_t a1)
{
  v1 = objc_retainBlock(*(a1 + 32));
  if (v1)
  {
    v2 = v1;
    (*(v1 + 2))(v1, 0);
    v1 = v2;
  }
}

void sub_100002438(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_10000245C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  if (v7)
  {
    v8 = BCProductPageExtensionLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10001F0AC(v7, v8);
    }

    v9 = 0;
  }

  else
  {
    v8 = +[NSMutableArray array];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v10 = v6;
    v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v22;
      v14 = kBKCollectionMinUserCollectionSortOrder;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v22 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v16 = *(*(&v21 + 1) + 8 * i);
          if ([v16 sortOrder] >= v14)
          {
            [v8 addObject:v16];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v12);
    }

    v9 = [v8 sortedArrayUsingComparator:&stru_1000313C8];
  }

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000026D4;
  v18[3] = &unk_1000313F0;
  objc_copyWeak(&v20, (a1 + 32));
  v19 = v9;
  v17 = v9;
  dispatch_async(&_dispatch_main_q, v18);

  objc_destroyWeak(&v20);
}

int64_t sub_10000267C(id a1, BCMutableCollectionDetail *a2, BCMutableCollectionDetail *a3)
{
  v4 = a3;
  v5 = [(BCMutableCollectionDetail *)a2 sortOrder];
  v6 = [(BCMutableCollectionDetail *)v4 sortOrder];

  if (v5 >= v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = -1;
  }

  if (v5 > v6)
  {
    return 1;
  }

  else
  {
    return v7;
  }
}

void sub_1000026D4(uint64_t a1)
{
  v2 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setCollectionDetailsCache:v2];

  objc_opt_class();
  v4 = objc_loadWeakRetained((a1 + 40));
  v5 = [v4 view];
  v6 = BUDynamicCast();

  [v6 reloadData];
}

void sub_100002A48(uint64_t a1, int a2)
{
  if (!a2)
  {
    return;
  }

  v9 = *(a1 + 32);
  if ([*(a1 + 40) isAudiobook])
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  v4 = +[BAEventReporter sharedReporter];
  v5 = [v4 seriesTypeForContentID:v9];

  v6 = *(*(a1 + 40) + 8);
  v7 = +[BAEventReporter sharedReporter];
  [v7 emitAddToCollectionEventWithTracker:*(a1 + 48) collectionID:*(a1 + 56) contentID:v9 contentAcquisitionType:v6 contentType:v3 supplementalContentCount:0 seriesType:v5 productionType:0];

  if ([*(a1 + 56) isEqualToString:kBKCollectionDefaultIDWantToRead])
  {
    v8 = +[BAEventReporter sharedReporter];
    [v8 emitWantListAddEventWithTracker:*(a1 + 48) contentID:v9 contentAcquisitionType:v6 contentType:v3 supplementalContentCount:0 seriesType:v5 productionType:0];
LABEL_10:

    goto LABEL_11;
  }

  if ([*(a1 + 56) isEqualToString:kBKCollectionDefaultIDFinished])
  {
    v8 = +[BAEventReporter sharedReporter];
    [v8 emitMarkAsFinishedEventWithTracker:*(a1 + 48) contentID:v9 contentAcquisitionType:v6 contentType:v3 supplementalContentCount:0 seriesType:v5 productionType:0];
    goto LABEL_10;
  }

LABEL_11:
}

void sub_10000377C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[JSABridge sharedInstance];
  v5 = *(a1 + 32);
  v6 = [v3 name];
  if (v6)
  {
    v7 = [v3 name];
    v9 = v7;
    v8 = [NSArray arrayWithObjects:&v9 count:1];
    [v4 enqueueValueCall:v5 arguments:v8 file:@"PPXJSALibraryManager.m" line:129];
  }

  else
  {
    [v4 enqueueValueCall:v5 arguments:0 file:@"PPXJSALibraryManager.m" line:129];
  }
}

void sub_100003D84(uint64_t a1, int a2)
{
  if (a2)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100003E30;
    v3[3] = &unk_100031528;
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    dispatch_async(&_dispatch_main_q, v3);
  }
}

id sub_100003E30(uint64_t a1)
{
  v2 = +[BAEventReporter sharedReporter];
  [v2 emitRemoveFromCollectionEventWithTracker:*(a1 + 32) collectionID:kBKCollectionDefaultIDWantToRead contentID:*(a1 + 40) contentAcquisitionType:1 contentType:0 supplementalContentCount:0 seriesType:0 productionType:0];

  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [PPXBookDataStoreServices _analyticsSubmitRemoveFromWantListEventWithTracker:v3 contentID:v4];
}

void sub_100003F8C(uint64_t a1, int a2)
{
  if (a2)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100004040;
    block[3] = &unk_100031578;
    v6 = *(a1 + 48);
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    dispatch_async(&_dispatch_main_q, block);
  }
}

void sub_100004040(uint64_t a1)
{
  v4 = [*(a1 + 48) _contentDataForContentID:*(a1 + 32) tracker:*(a1 + 40)];
  v2 = +[BAEventReporter sharedReporter];
  [v2 emitAddToCollectionEventWithTracker:*(a1 + 40) collectionID:kBKCollectionDefaultIDWantToRead contentData:v4];

  v3 = +[BAEventReporter sharedReporter];
  [v3 emitWantListAddEventWithTracker:*(a1 + 40) contentData:v4];
}

void sub_1000041A0(uint64_t a1, uint64_t a2)
{
  v3 = objc_retainBlock(*(a1 + 32));
  if (v3)
  {
    v4 = v3;
    (*(v3 + 2))(v3, a2);
    v3 = v4;
  }
}

void sub_100004330(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 56) == 1)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000043F0;
      block[3] = &unk_100031578;
      v6 = *(a1 + 48);
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      dispatch_async(&_dispatch_main_q, block);
    }
  }
}

void sub_1000043F0(uint64_t a1)
{
  v3 = [*(a1 + 48) _contentDataForContentID:*(a1 + 32) tracker:*(a1 + 40)];
  v2 = +[BAEventReporter sharedReporter];
  [v2 emitMarkAsFinishedEventWithTracker:*(a1 + 40) contentData:v3 markedData:0];
}

void sub_100004544(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if (v9)
  {
    v6 = [v9 isFinished];
  }

  else
  {
    v6 = 0;
  }

  v7 = objc_retainBlock(*(a1 + 32));
  v8 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7, v6);
  }
}

void sub_1000048C0(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_100038788;
  qword_100038788 = v1;
}

void sub_100004968(id a1)
{
  v1 = objc_alloc_init(PPXProductPageContext);
  v2 = qword_100038790;
  qword_100038790 = v1;
}

void sub_100004A08(id a1)
{
  v1 = objc_alloc_init(PPXProductPageActions);
  v2 = qword_1000387A0;
  qword_1000387A0 = v1;
}

void sub_100004FFC(id a1, NSString *a2, BLPurchaseResponse *a3, NSError *a4)
{
  v4 = BCProductPageExtensionLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Just purchased or redownloaded a book", v5, 2u);
  }
}

void sub_1000051A0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [*(a1 + 40) longLongValue]);
  v4 = [BLPurchaseRequest requestWithBuyParameters:v2 storeIdentifier:v3];

  [v4 setAudiobook:*(a1 + 56)];
  if (*(a1 + 48))
  {
    v19[0] = *(a1 + 48);
    v18[0] = @"BATracker";
    v18[1] = @"hasRacSupport";
    v5 = [NSNumber numberWithBool:*(a1 + 57)];
    v19[1] = v5;
    v6 = v19;
    v7 = v18;
    v8 = 2;
  }

  else
  {
    v9 = BCProductPageExtensionLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10001F254(v9);
    }

    v16 = @"hasRacSupport";
    v5 = [NSNumber numberWithBool:*(a1 + 57)];
    v17 = v5;
    v6 = &v17;
    v7 = &v16;
    v8 = 1;
  }

  v10 = [NSDictionary dictionaryWithObjects:v6 forKeys:v7 count:v8];
  [v4 setAnalyticsInfo:v10];

  v11 = +[JSABridge sharedInstance];
  v12 = [v11 windowManager];

  v13 = +[BLDownloadQueue sharedInstance];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000053D8;
  v14[3] = &unk_100031700;
  v15 = *(a1 + 40);
  [v13 purchaseWithRequest:v4 uiManager:v12 completion:v14];
}

void sub_1000053D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v5 = BSUIGetLibraryItemStateUpdater();
    [v5 updateStateToPurchaseFailedForIdentifier:*(a1 + 32)];
  }
}

void sub_1000057A0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x12u);
}

void sub_100005D08(id a1)
{
  v1 = objc_alloc_init(PPXBLDownloadController);
  v2 = qword_1000387B0;
  qword_1000387B0 = v1;
}

void sub_100006050(id a1, PPXBLDownloadAsset *a2)
{
  v2 = a2;
  v3 = [(PPXBLDownloadAsset *)v2 downloadStatus];
  v4 = [v3 downloadID];
  if ([v4 length])
  {
    v5 = +[BLDownloadQueue sharedInstance];
    [v5 cancelDownloadWithID:v4 withCompletion:0];

    v6 = BCBookDownloadLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(PPXBLDownloadAsset *)v2 identifier];
      v8 = 138412546;
      v9 = v7;
      v10 = 2114;
      v11 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "download canceled %@, downloadID=%{public}@", &v8, 0x16u);
    }
  }
}

void sub_1000067C0(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
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

        v7 = [*(a1 + 40) _updateDownloadingAssets:{*(*(&v8 + 1) + 8 * v6), v8}];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

void sub_1000069FC(uint64_t a1)
{
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v35 objects:v43 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v36;
    *&v4 = 138543362;
    v31 = v4;
    v32 = v2;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v36 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v35 + 1) + 8 * i);
        v9 = [v8 bk_assetIdentifier];
        if ([v9 length])
        {
          v10 = [*(a1 + 40) downloadingAssets];
          v11 = [v10 objectForKeyedSubscript:v9];

          if (v11)
          {
            [v11 setDownloadStatus:v8];
            if ([v8 downloadPhase] != 3)
            {
              if (([v11 isAudiobook]& 1) != 0)
              {
                v12 = [v11 parent];
                if (!v12)
                {
                  goto LABEL_28;
                }

                v16 = BCBookDownloadLog();
                if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
                {
                  v17 = [v11 identifier];
                  v18 = [v11 downloadID];
                  *buf = 138412546;
                  v40 = v17;
                  v41 = 2114;
                  v42 = v18;
                  _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "download completed audiobook child identifier=%@, downloadID=%{public}@", buf, 0x16u);
                }

                v19 = [*(a1 + 40) downloadingAssets];
                v20 = [v11 identifier];
                [v19 removeObjectForKey:v20];

                [v11 removeFromParent];
                v21 = [v12 children];
                v22 = [v21 count];

                if (!v22)
                {
                  v23 = BCBookDownloadLog();
                  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
                  {
                    v24 = [v12 identifier];
                    *buf = v31;
                    v40 = v24;
                    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "download completed audiobook parent identifier=%{public}@", buf, 0xCu);
                  }

                  v25 = [*(a1 + 40) downloadingAssets];
                  v26 = [v12 identifier];
                  [v25 removeObjectForKey:v26];
                }
              }

              else
              {
                v27 = BCBookDownloadLog();
                if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
                {
                  v28 = [v11 identifier];
                  v29 = [v11 downloadID];
                  *buf = 138412546;
                  v40 = v28;
                  v41 = 2114;
                  v42 = v29;
                  _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "download completed identifier=%@, downloadID=%{public}@", buf, 0x16u);
                }

                v12 = [*(a1 + 40) downloadingAssets];
                v30 = [v11 identifier];
                [v12 removeObjectForKey:v30];
              }

              v2 = v32;
              goto LABEL_28;
            }

            v12 = BCBookDownloadLog();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
            {
              v13 = [v8 downloadID];
              *buf = 138412546;
              v40 = v9;
              v41 = 2114;
              v42 = v13;
              v14 = v12;
              v15 = "completed asset was paused: %@, downloadID:%{public}@";
              goto LABEL_15;
            }
          }

          else
          {
            v12 = BCBookDownloadLog();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
            {
              v13 = [v8 downloadID];
              *buf = 138412546;
              v40 = v9;
              v41 = 2114;
              v42 = v13;
              v14 = v12;
              v15 = "download completed untracked identifier=%@, downloadID=%{public}@";
LABEL_15:
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v15, buf, 0x16u);
            }
          }

LABEL_28:

          goto LABEL_29;
        }

        v11 = BCBookDownloadLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_10001F45C(&v33, v34, v11);
        }

LABEL_29:
      }

      v5 = [v2 countByEnumeratingWithState:&v35 objects:v43 count:16];
    }

    while (v5);
  }
}

uint64_t sub_100006F2C()
{
  sub_100007FB8(v0, v0[3]);
  sub_10001F93C();
  if (v5)
  {
    sub_100007FFC(v4);
    v1 = 0;
  }

  else
  {
    sub_100008050(v4, v6);
    sub_100007FB8(v6, v7);
    v2 = sub_10001F89C();
    if (v2 == 2 || (v2 & 1) == 0)
    {
      sub_100007FB8(v6, v7);
      v1 = sub_10001F8FC();
    }

    else
    {
      v1 = 0;
    }

    sub_100007F6C(v6);
  }

  return v1 & 1;
}

uint64_t sub_10000700C()
{
  *(v1 + 104) = v0;
  sub_10001FF2C();
  *(v1 + 112) = sub_10001FF1C();
  v3 = sub_10001FF0C();

  return _swift_task_switch(sub_1000070A4, v3, v2);
}

uint64_t sub_1000070A4()
{
  v1 = *(v0 + 104);

  sub_100007FB8(v1, v1[3]);
  sub_10001F93C();
  if (*(v0 + 56))
  {
    sub_100007FFC(v0 + 16);
  }

  else
  {
    v2 = *(v0 + 104);
    sub_100008050((v0 + 16), v0 + 64);
    v3 = objc_opt_self();
    sub_100007FB8((v0 + 64), *(v0 + 88));
    sub_10001F8DC();
    v4 = sub_10001FE1C();

    [v3 addStoreIDToWantToRead:v4 tracker:*(v2 + 80)];

    v5 = *(v2 + 128);
    sub_100007FB8((v0 + 64), *(v0 + 88));
    sub_10001F8DC();
    v6 = sub_10001FE1C();

    [v5 updateWantToReadState:1 identifier:v6];

    sub_100007FB8((v0 + 64), *(v0 + 88));
    sub_10001F8DC();
    v7 = sub_10001FE1C();

    [v5 updateItemOfInterestForItemIdentifier:v7];

    sub_100007F6C((v0 + 64));
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100007268@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = sub_10001F74C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1000072F8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100007384;

  return sub_10000700C();
}

uint64_t sub_100007384()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void *sub_1000074B8()
{
  v1 = *(v0 + 80);
  v2 = v1;
  return v1;
}

uint64_t sub_100007500@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  sub_100007F08(a1, a6);
  sub_100007F08(a2, (a6 + 40));
  sub_100007F08(a4, (a6 + 88));
  v12 = BSUIGetLibraryItemStateProvider();
  sub_100007F6C(a4);
  sub_100007F6C(a2);
  sub_100007F6C(a1);
  objc_opt_self();
  v13 = swift_dynamicCastObjCClassUnconditional();
  v14 = *(a5 + 36);
  v15 = enum case for ContextActionType.addToWantToRead(_:);
  v16 = sub_10001F74C();
  result = (*(*(v16 - 8) + 104))(&a6[v14], v15, v16);
  *(a6 + 10) = a3;
  *(a6 + 16) = v13;
  *(a6 + 17) = &off_100031BC8;
  return result;
}

uint64_t variable initialization expression of PPXContextMenuProvider.swipeActionItems()
{
  sub_100007778(&qword_100037648, &qword_1000281E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1000281C0;
  v1 = type metadata accessor for PPXMarkedAsFinishedActionItem(0);
  v2 = sub_100007AB8(&qword_100037650, type metadata accessor for PPXMarkedAsFinishedActionItem, &unk_100028328);
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = type metadata accessor for PPXMarkedAsStillReadingActionItem(0);
  v4 = sub_100007AB8(&qword_100037658, type metadata accessor for PPXMarkedAsStillReadingActionItem, &unk_100028810);
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  ActionItem = type metadata accessor for PPXAddToWantToReadActionItem(0);
  v6 = sub_100007AB8(&qword_100037660, type metadata accessor for PPXAddToWantToReadActionItem, &unk_100028258);
  *(v0 + 64) = ActionItem;
  *(v0 + 72) = v6;
  v7 = type metadata accessor for PPXRemoveFromWantToReadActionItem(0);
  v8 = sub_100007AB8(&qword_100037668, type metadata accessor for PPXRemoveFromWantToReadActionItem, &unk_100028670);
  *(v0 + 80) = v7;
  *(v0 + 88) = v8;
  return v0;
}

uint64_t sub_100007778(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t type metadata accessor for PPXAddToWantToReadActionItem(uint64_t a1)
{
  result = qword_1000377B0;
  if (!qword_1000377B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t variable initialization expression of PPXContextMenuProvider.actionItems()
{
  sub_100007778(&qword_100037648, &qword_1000281E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1000281D0;
  v1 = type metadata accessor for PPXAddToCollectionActionItem(0);
  v2 = sub_100007AB8(&qword_100037670, type metadata accessor for PPXAddToCollectionActionItem, &unk_100028B58);
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  ActionItem = type metadata accessor for PPXAddToWantToReadActionItem(0);
  v4 = sub_100007AB8(&qword_100037660, type metadata accessor for PPXAddToWantToReadActionItem, &unk_100028258);
  *(v0 + 48) = ActionItem;
  *(v0 + 56) = v4;
  v5 = type metadata accessor for PPXDownloadActionItem(0);
  v6 = sub_100007AB8(&qword_100037678, type metadata accessor for PPXDownloadActionItem, &unk_100028C20);
  *(v0 + 64) = v5;
  *(v0 + 72) = v6;
  v7 = type metadata accessor for PPXDislikeActionItem(0);
  v8 = sub_100007AB8(&qword_100037680, type metadata accessor for PPXDislikeActionItem, &unk_100028A60);
  *(v0 + 80) = v7;
  *(v0 + 88) = v8;
  *(v0 + 96) = sub_10001F5CC();
  *(v0 + 104) = &protocol witness table for LikeActionItem;
  v9 = type metadata accessor for PPXMarkedAsFinishedActionItem(0);
  v10 = sub_100007AB8(&qword_100037650, type metadata accessor for PPXMarkedAsFinishedActionItem, &unk_100028328);
  *(v0 + 112) = v9;
  *(v0 + 120) = v10;
  v11 = type metadata accessor for PPXMarkedAsStillReadingActionItem(0);
  v12 = sub_100007AB8(&qword_100037658, type metadata accessor for PPXMarkedAsStillReadingActionItem, &unk_100028810);
  *(v0 + 128) = v11;
  *(v0 + 136) = v12;
  *(v0 + 144) = sub_10001F86C();
  *(v0 + 152) = &protocol witness table for RateAndReviewActionItem;
  v13 = type metadata accessor for PPXRemoveDownloadActionItem(0);
  v14 = sub_100007AB8(&qword_100037688, type metadata accessor for PPXRemoveDownloadActionItem, &unk_100028948);
  *(v0 + 160) = v13;
  *(v0 + 168) = v14;
  v15 = type metadata accessor for PPXRemoveFromWantToReadActionItem(0);
  v16 = sub_100007AB8(&qword_100037668, type metadata accessor for PPXRemoveFromWantToReadActionItem, &unk_100028670);
  *(v0 + 176) = v15;
  *(v0 + 184) = v16;
  *(v0 + 192) = sub_10001F61C();
  *(v0 + 200) = &protocol witness table for ShareActionItem;
  return v0;
}

uint64_t sub_100007AB8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 sub_100007B00(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100007B10(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100007B30(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

void type metadata accessor for CGPoint()
{
  if (!qword_100037750)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_100037750);
    }
  }
}

uint64_t sub_100007BBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10001F74C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100007C7C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_10001F74C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100007D20(uint64_t a1)
{
  sub_100007EAC(319, &qword_1000377C0, &protocol descriptor for ContextActionDataProtocol, 1);
  if (v1 <= 0x3F)
  {
    sub_100007EAC(319, &qword_1000377C8, &protocol descriptor for ContextMenuPresentationContextProtocol, 1);
    if (v2 <= 0x3F)
    {
      sub_100007E54(319);
      if (v3 <= 0x3F)
      {
        sub_100007EAC(319, &qword_1000377D8, &protocol descriptor for FigaroProviding, 1);
        if (v4 <= 0x3F)
        {
          sub_100007EAC(319, &unk_1000377E0, &protocol descriptor for PPXLibraryItemStateUpdating, 0);
          if (v5 <= 0x3F)
          {
            sub_10001F74C();
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_100007E54(uint64_t a1)
{
  if (!qword_1000377D0)
  {
    sub_10001FAAC();
    v1 = sub_10002000C();
    if (!v2)
    {
      atomic_store(v1, &qword_1000377D0);
    }
  }
}

uint64_t sub_100007EAC(uint64_t a1, unint64_t *a2, uint64_t a3, char a4)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_100007F08(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100007F6C(void *a1)
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

void *sub_100007FB8(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100008050(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t static EventReporter.setupLibraryAnalyticsDataProvider()()
{
  sub_10001FA7C();
  sub_1000080B4();
  return sub_10001FA4C();
}

unint64_t sub_1000080B4()
{
  result = qword_100037880;
  if (!qword_100037880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100037880);
  }

  return result;
}

void sub_100008108(id a1, SEL a2)
{
  sub_10001FA7C();
  sub_1000080B4();
  sub_10001FA4C();
}

uint64_t sub_100008168(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10001F74C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100008228(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_10001F74C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for PPXMarkedAsFinishedActionItem(uint64_t a1)
{
  result = qword_1000378E0;
  if (!qword_1000378E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100008318()
{
  sub_100007FB8(v0, v0[3]);
  sub_10001F93C();
  if (v6)
  {
    sub_100007FFC(v5);
    v1 = 0;
  }

  else
  {
    sub_100008050(v5, v7);
    sub_100007FB8(v7, v8);
    v2 = sub_10001F8FC();
    if (v2 == 2 || (v2 & 1) == 0)
    {
      v1 = 0;
    }

    else
    {
      sub_100007FB8(v7, v8);
      v3 = sub_10001F8AC();
      if (v3 == 2)
      {
        v1 = 0;
      }

      else
      {
        v1 = v3 ^ 1;
      }
    }

    sub_100007F6C(v7);
  }

  return v1 & 1;
}

uint64_t sub_100008404()
{
  v1[13] = v0;
  v2 = sub_10001FA8C();
  v1[14] = v2;
  v1[15] = *(v2 - 8);
  v1[16] = swift_task_alloc();
  sub_100007778(&qword_100037928, &qword_1000288B0);
  v1[17] = swift_task_alloc();
  v3 = sub_10001FA0C();
  v1[18] = v3;
  v1[19] = *(v3 - 8);
  v1[20] = swift_task_alloc();
  v4 = sub_10001FA9C();
  v1[21] = v4;
  v1[22] = *(v4 - 8);
  v1[23] = swift_task_alloc();
  sub_10001FF2C();
  v1[24] = sub_10001FF1C();
  v6 = sub_10001FF0C();

  return _swift_task_switch(sub_1000085E8, v6, v5);
}

uint64_t sub_1000085E8()
{
  v1 = *(v0 + 104);

  sub_100007FB8(v1, v1[3]);
  sub_10001F93C();
  if (*(v0 + 56))
  {
    sub_100007FFC(v0 + 16);
  }

  else
  {
    v3 = *(v0 + 176);
    v2 = *(v0 + 184);
    v5 = *(v0 + 160);
    v4 = *(v0 + 168);
    v23 = v4;
    v24 = v3;
    v22 = v5;
    v6 = *(v0 + 144);
    v7 = *(v0 + 152);
    v25 = *(v0 + 136);
    v26 = *(v0 + 128);
    v8 = *(v0 + 112);
    v28 = *(v0 + 120);
    v27 = *(v0 + 104);
    sub_100008050((v0 + 16), v0 + 64);
    (*(v3 + 104))(v2, enum case for ContentAcquisitionType.storeBought(_:), v4);
    sub_100007FB8((v0 + 64), *(v0 + 88));
    sub_10001F91C();
    v9 = sub_10001F78C();
    v10 = &enum case for ContentType.audiobook(_:);
    if ((v9 & 1) == 0)
    {
      v10 = &enum case for ContentType.book(_:);
    }

    (*(v7 + 104))(v5, *v10, v6);
    sub_100007FB8((v0 + 64), *(v0 + 88));
    sub_10001F8CC();
    sub_10001FFFC();
    sub_10001FA7C();
    v11 = sub_10001FA6C();
    sub_100007FB8((v0 + 64), *(v0 + 88));
    sub_10001F8DC();
    sub_10001FA5C();

    (*(v28 + 104))(v26, enum case for ProductionType.unknown(_:), v8);
    v21 = sub_10001FA6C();
    v12 = *(v27 + 80);
    sub_10001FE2C();
    sub_100007FB8((v0 + 64), *(v0 + 88));
    sub_10001F8DC();
    v20 = v25;
    sub_10001FA2C();

    v13 = sub_10001FA6C();
    sub_100007FB8((v0 + 64), *(v0 + 88));
    sub_10001F8DC();
    LOBYTE(v20) = 2;
    sub_10001FA1C();

    v14 = objc_opt_self();
    sub_100007FB8((v0 + 64), *(v0 + 88));
    sub_10001F8DC();
    v15 = sub_10001FE1C();

    [v14 setFinishedState:1 storeID:v15 tracker:{v12, v20, v26}];

    v16 = *(v27 + 128);
    sub_100007FB8((v0 + 64), *(v0 + 88));
    sub_10001F8DC();
    v17 = sub_10001FE1C();

    [v16 updateItemOfInterestForItemIdentifier:v17];

    (*(v28 + 8))(v26, v8);
    sub_100008C3C(v25);
    (*(v7 + 8))(v22, v6);
    (*(v24 + 8))(v2, v23);
    sub_100007F6C((v0 + 64));
  }

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_100008A98()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100007384;

  return sub_100008404();
}

uint64_t sub_100008B24@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  sub_100007F08(a1, a6);
  sub_100007F08(a2, (a6 + 40));
  sub_100007F08(a4, (a6 + 88));
  v12 = BSUIGetLibraryItemStateProvider();
  sub_100007F6C(a4);
  sub_100007F6C(a2);
  sub_100007F6C(a1);
  objc_opt_self();
  v13 = swift_dynamicCastObjCClassUnconditional();
  v14 = *(a5 + 36);
  v15 = enum case for ContextActionType.markAsFinished(_:);
  v16 = sub_10001F74C();
  result = (*(*(v16 - 8) + 104))(&a6[v14], v15, v16);
  *(a6 + 10) = a3;
  *(a6 + 16) = v13;
  *(a6 + 17) = &off_100031BC8;
  return result;
}

uint64_t sub_100008C3C(uint64_t a1)
{
  v2 = sub_100007778(&qword_100037928, &qword_1000288B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_100008D24(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController_analyticsManager] = 0;
  v6 = &v3[OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController_askToBuyApproveNotification];
  *v6 = 0u;
  *(v6 + 1) = 0u;
  v7 = &v3[OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController_askToBuyDeclineNotification];
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *&v3[OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController_initialProductPageItem] = 0;
  *&v3[OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController_jsaLibraryManager] = 0;
  *&v3[OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController__navigationItem] = 0;
  *&v3[OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController_ppxNavigationController] = 0;
  *&v3[OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController_rootFeedOptions] = 0;
  *&v3[OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController_setupData] = 0;
  *&v3[OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController__syncLayoutController] = 0;
  *&v3[OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController_windowProvider] = 0;
  *&v3[OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController_objectGraph] = sub_10000D200();
  if (a2)
  {
    v8 = sub_10001FE1C();
  }

  else
  {
    v8 = 0;
  }

  v21.receiver = v3;
  v21.super_class = type metadata accessor for ProductPageRootViewController();
  v9 = objc_msgSendSuper2(&v21, "initWithNibName:bundle:", v8, a3);

  type metadata accessor for FallbackSceneSessionProvider();
  v10 = v9;

  sub_10001FD7C();

  swift_unknownObjectWeakAssign();
  v11 = v10;

  v12 = objc_opt_self();
  v13 = [v12 defaultCenter];
  [v13 addObserver:v11 selector:"_smartInvertDidChange:" name:UIAccessibilityInvertColorsStatusDidChangeNotification object:0];

  if (UIAccessibilityIsInvertColorsEnabled())
  {
    v14 = 2;
  }

  else
  {
    v14 = 0;
  }

  [v11 setOverrideUserInterfaceStyle:v14];

  v15 = objc_allocWithZone(TUISyncLayoutController);
  v16 = v11;
  v17 = [v15 initWithDelegate:v16];
  v18 = *&v16[OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController__syncLayoutController];
  *&v16[OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController__syncLayoutController] = v17;

  v19 = [v12 defaultCenter];
  [v19 addObserver:v16 selector:"_bridgeDidReload:" name:JSABridgeDidReloadNotification object:0];

  return v16;
}

void sub_100009058()
{
  v1 = v0;
  v2 = sub_10001FBEC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ProductPageRootViewController();
  v26.receiver = v1;
  v26.super_class = v6;
  objc_msgSendSuper2(&v26, "viewDidLoad");
  v7 = [objc_opt_self() bu_groupUserDefaults];
  v8 = sub_10001FE1C();
  v9 = [v7 stringForKey:v8];

  if (v9)
  {
    v10 = sub_10001FE2C();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  if (BCProductPageExtensionLog())
  {
    sub_10001FBFC();

    v13 = sub_10001FBCC();
    v14 = sub_10001FF5C();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v24[2] = v12;
      v25 = v16;
      *v15 = 136315138;
      v24[1] = v10;
      sub_100007778(&qword_100037F38, &unk_100028600);
      v17 = sub_10001FE5C();
      v19 = sub_100012510(v17, v18, &v25);

      *(v15 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v13, v14, "viewDidLoad - bootUrl: %s", v15, 0xCu);
      sub_100007F6C(v16);
    }

    else
    {
    }

    (*(v3 + 8))(v5, v2);
    [sub_10001FA7C() setupLibraryAnalyticsDataProvider];
    v20 = objc_allocWithZone(sub_10001FCCC());
    v21 = sub_10001FC9C();
    v22 = *&v1[OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController_analyticsManager];
    *&v1[OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController_analyticsManager] = v21;
    v23 = v21;

    if (v23)
    {
      sub_10001FC8C();
    }

    sub_10000D8E4();
  }

  else
  {
    __break(1u);
  }
}

void sub_10000943C(void *a1, uint64_t a2, uint64_t a3, const char **a4, SEL *a5)
{
  v10.receiver = a1;
  v10.super_class = type metadata accessor for ProductPageRootViewController();
  v8 = *a4;
  v9 = v10.receiver;
  objc_msgSendSuper2(&v10, v8, a3);
  [v9 *a5];
}

void sub_1000094AC(char a1)
{
  v2 = v1;
  v4 = sub_10001FBEC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ProductPageRootViewController();
  v18.receiver = v2;
  v18.super_class = v8;
  objc_msgSendSuper2(&v18, "viewDidDisappear:", a1 & 1);
  if (BCProductPageExtensionLog())
  {
    sub_10001FBFC();
    v9 = sub_10001FBCC();
    v10 = sub_10001FF5C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "viewDidDisappear", v11, 2u);
    }

    (*(v5 + 8))(v7, v4);
    [v2 bc_analyticsVisibilitySubtreeDidDisappear];
    v12 = [objc_opt_self() processInfo];
    v13 = sub_10001FE1C();
    v14 = swift_allocObject();
    *(v14 + 16) = v2;
    aBlock[4] = sub_10000F2C4;
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000138F8;
    aBlock[3] = &unk_100031B68;
    v15 = _Block_copy(aBlock);
    v16 = v2;

    [v12 performExpiringActivityWithReason:v13 usingBlock:v15];
    _Block_release(v15);
  }

  else
  {
    __break(1u);
  }
}

void sub_10000972C(char a1, uint64_t a2)
{
  v4 = sub_10001FBEC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (BCProductPageExtensionLog())
    {
      sub_10001FBFC();
      v8 = sub_10001FBCC();
      v9 = sub_10001FF6C();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v8, v9, "Process is about to be suspended. Upload metrics might have failed.", v10, 2u);
      }

      (*(v5 + 8))(v7, v4);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v11 = OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController_analyticsManager;
    v12 = *(a2 + OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController_analyticsManager);
    if (v12)
    {
      v13 = v12;
      sub_10001FC6C();
    }

    [objc_opt_self() willTerminate];
    v14 = *(a2 + v11);
    if (v14)
    {
      v17 = v14;
      sub_10001FCAC();
      v15 = v17;
    }
  }
}

id sub_1000099D0()
{
  v1 = v0;
  v2 = sub_10001FBEC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = BCProductPageExtensionLog();
  if (result)
  {
    sub_10001FBFC();
    v7 = sub_10001FBCC();
    v8 = sub_10001FF5C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "dealloc", v9, 2u);
    }

    (*(v3 + 8))(v5, v2);
    v10 = OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController_askToBuyApproveNotification;
    swift_beginAccess();
    sub_10000F25C(v1 + v10, &v17, &unk_100037EE0, &qword_1000285A8);
    if (v18)
    {
      sub_10000CDF8(&v17, v19);
      v11 = [objc_opt_self() defaultCenter];
      sub_100007FB8(v19, v20);
      [v11 removeObserver:sub_10002013C()];

      swift_unknownObjectRelease();
      sub_100007F6C(v19);
    }

    else
    {
      sub_10000F1FC(&v17, &unk_100037EE0, &qword_1000285A8);
    }

    v12 = OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController_askToBuyDeclineNotification;
    swift_beginAccess();
    sub_10000F25C(v1 + v12, &v17, &unk_100037EE0, &qword_1000285A8);
    if (v18)
    {
      sub_10000CDF8(&v17, v19);
      v13 = [objc_opt_self() defaultCenter];
      sub_100007FB8(v19, v20);
      [v13 removeObserver:sub_10002013C()];

      swift_unknownObjectRelease();
      sub_100007F6C(v19);
    }

    else
    {
      sub_10000F1FC(&v17, &unk_100037EE0, &qword_1000285A8);
    }

    v14 = [objc_opt_self() defaultCenter];
    [v14 removeObserver:v1 name:JSABridgeDidReloadNotification object:0];

    v15 = type metadata accessor for ProductPageRootViewController();
    v16.receiver = v1;
    v16.super_class = v15;
    return objc_msgSendSuper2(&v16, "dealloc");
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100009E50(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10001FBEC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);

  v10 = [objc_opt_self() sharedProvider];
  if (!v10)
  {
    __break(1u);
    goto LABEL_10;
  }

  v11 = v10;
  v12 = [v3 view];
  if (!v12)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v13 = v12;
  v14 = [v12 window];

  [v11 setWindow:v14];
  v15 = *&v3[OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController_initialProductPageItem];
  *&v3[OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController_initialProductPageItem] = a1;
  v16 = a1;

  if (!BCProductPageExtensionLog())
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  sub_10001FBFC();
  v17 = sub_10001FBCC();
  v18 = sub_10001FF5C();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "Starting the javaScript", v19, 2u);
  }

  (*(v7 + 8))(v9, v6);
  v20 = [v3 view];
  if (!v20)
  {
    goto LABEL_12;
  }

  v21 = v20;
  v22 = [v20 window];

  if (v22)
  {
    sub_10000DE2C(v16, a2);

    return;
  }

LABEL_13:
  __break(1u);
}

void sub_10000A184(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a3)
  {
    sub_100007778(&qword_100037DF8, &qword_100028528);
    inited = swift_initStackObject();
    *(inited + 32) = 0x7975426F546B7361;
    *(inited + 40) = 0xE800000000000000;
    *(inited + 48) = a4 & 1;
    *(inited + 72) = &type metadata for Bool;
    strcpy((inited + 80), "promptString");
    *(inited + 16) = xmmword_1000283F0;
    *(inited + 120) = &type metadata for String;
    *(inited + 93) = 0;
    *(inited + 94) = -5120;
    *(inited + 96) = a2;
    *(inited + 104) = a3;

    v10 = sub_10000E610(inited);
    swift_setDeallocating();
    sub_100007778(&qword_100037ED0, &qword_100028598);
    swift_arrayDestroy();
  }

  else
  {
    sub_100007778(&qword_100037DF8, &qword_100028528);
    v11 = swift_initStackObject();
    *(v11 + 16) = xmmword_100028400;
    *(v11 + 32) = 0x7975426F546B7361;
    v12 = v11 + 32;
    *(v11 + 40) = 0xE800000000000000;
    *(v11 + 72) = &type metadata for Bool;
    *(v11 + 48) = a4 & 1;
    v10 = sub_10000E610(v11);
    swift_setDeallocating();
    sub_10000F1FC(v12, &qword_100037ED0, &qword_100028598);
  }

  *(v4 + OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController_setupData) = v10;

  sub_10000F0A0(0, &qword_100037DD0, UIBarButtonItem_ptr);
  v13 = [swift_getObjCClassFromMetadata() appearance];
  v14 = [objc_opt_self() bc_booksKeyColor];
  [v13 setTintColor:v14];

  v15 = *(v4 + OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController__navigationItem);
  *(v4 + OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController__navigationItem) = a1;
  v16 = a1;

  if (a4)
  {
    sub_10000A3C8();
  }
}

uint64_t sub_10000A3C8()
{
  v1 = objc_opt_self();
  v2 = [v1 defaultCenter];
  v3 = kJSAParentalApprovalApprovedRequestNotificationName;
  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 mainQueue];
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = sub_10000EFF0;
  v24 = v7;
  aBlock = _NSConcreteStackBlock;
  v20 = 1107296256;
  v21 = sub_10000C580;
  ObjectType = &unk_1000319D8;
  v8 = _Block_copy(&aBlock);

  v9 = [v2 addObserverForName:v5 object:0 queue:v6 usingBlock:v8];
  _Block_release(v8);

  ObjectType = swift_getObjectType();
  aBlock = v9;
  v10 = OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController_askToBuyApproveNotification;
  swift_beginAccess();
  sub_10000F010(&aBlock, v0 + v10);
  swift_endAccess();
  v11 = [v1 defaultCenter];
  v12 = kJSAParentalApprovalDeclinedRequestNotificationName;
  v13 = [v4 mainQueue];
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = sub_10000F080;
  v24 = v14;
  aBlock = _NSConcreteStackBlock;
  v20 = 1107296256;
  v21 = sub_10000C580;
  ObjectType = &unk_100031A00;
  v15 = _Block_copy(&aBlock);

  v16 = [v11 addObserverForName:v12 object:0 queue:v13 usingBlock:v15];
  _Block_release(v15);

  ObjectType = swift_getObjectType();
  aBlock = v16;
  v17 = OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController_askToBuyDeclineNotification;
  swift_beginAccess();
  sub_10000F010(&aBlock, v0 + v17);
  return swift_endAccess();
}

uint64_t sub_10000A798(uint64_t a1)
{
  v1 = &_swiftEmptyDictionarySingleton;
  v38 = &_swiftEmptyDictionarySingleton;
  v2 = a1 + 64;
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

  v8 = 0;
  if (v5)
  {
    goto LABEL_11;
  }

  do
  {
LABEL_7:
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_30;
    }

    if (v9 >= v6)
    {

      return v1;
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
  }

  while (!v5);
  v39 = v1;
  v8 = v9;
  while (1)
  {
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = v10 | (v8 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    sub_10000F25C(*(a1 + 56) + 32 * v11, v37, &unk_100037EE0, &qword_1000285A8);
    *&v36 = v14;
    *(&v36 + 1) = v13;
    v33 = v36;
    v34 = v37[0];
    v35 = v37[1];
    sub_10000F25C(&v34, &v27, &unk_100037EE0, &qword_1000285A8);
    if (!v28)
    {

      sub_10000F1FC(&v33, &qword_100037F20, &qword_1000285E8);
      result = sub_10000F1FC(&v27, &unk_100037EE0, &qword_1000285A8);
      v1 = v39;
      if (!v5)
      {
        goto LABEL_7;
      }

      goto LABEL_11;
    }

    sub_10000CDF8(&v27, v32);
    v30 = v33;
    v31[0] = v34;
    v31[1] = v35;
    sub_10000CDF8(v32, v29);
    v1 = v39;
    v15 = v39[2];
    if (v39[3] <= v15)
    {

      sub_10001BDA8(v15 + 1, 1);
      v1 = v38;
    }

    else
    {
    }

    v16 = v30;
    sub_10002018C();
    sub_10001FE7C();
    result = sub_10002019C();
    v17 = v1 + 64;
    v18 = -1 << v1[32];
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*&v1[8 * (v19 >> 6) + 64]) == 0)
    {
      break;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*&v1[8 * (v19 >> 6) + 64])) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *&v17[(v21 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v21;
    *(*(v1 + 6) + 16 * v21) = v16;
    sub_10000CDF8(v29, (*(v1 + 7) + 32 * v21));
    ++*(v1 + 2);
    result = sub_10000F1FC(v31, &unk_100037EE0, &qword_1000285A8);
    if (!v5)
    {
      goto LABEL_7;
    }

LABEL_11:
    v39 = v1;
  }

  v22 = 0;
  v23 = (63 - v18) >> 6;
  while (++v20 != v23 || (v22 & 1) == 0)
  {
    v24 = v20 == v23;
    if (v20 == v23)
    {
      v20 = 0;
    }

    v22 |= v24;
    v25 = *&v17[8 * v20];
    if (v25 != -1)
    {
      v21 = __clz(__rbit64(~v25)) + (v20 << 6);
      goto LABEL_26;
    }
  }

LABEL_30:
  __break(1u);
  return result;
}

id sub_10000AABC(void *a1, void *a2, void *a3)
{
  v6 = sub_10001FCDC();
  v19 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10001FD0C();
  v9 = *(v18 - 8);
  __chkstk_darwin(v18);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a2 currentPackage];
  if (result)
  {
    v13 = result;
    [a1 registerTemplateBundlesFromPackage:result];

    sub_10000F0A0(0, &qword_100037DA0, OS_dispatch_queue_ptr);
    v14 = sub_10001FF9C();
    v15 = swift_allocObject();
    *(v15 + 16) = a3;
    aBlock[4] = sub_10000F1AC;
    aBlock[5] = v15;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000F3A0;
    aBlock[3] = &unk_100031AA0;
    v16 = _Block_copy(aBlock);
    v17 = a3;

    sub_10001FCEC();
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_10000F330(&qword_100037DA8, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100007778(&qword_100037DB0, &qword_100028508);
    sub_10000EF9C(&qword_100037DB8, &qword_100037DB0, &qword_100028508);
    sub_10002001C();
    sub_10001FFAC();
    _Block_release(v16);

    (*(v19 + 8))(v8, v6);
    return (*(v9 + 8))(v11, v18);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10000ADE0(char *a1)
{
  if (*&a1[OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController_rootFeedOptions])
  {

    sub_10000B4B0(v2);

    v3.super.isa = sub_10001FDDC().super.isa;
  }

  else
  {
    v3.super.isa = 0;
  }

  v4 = [objc_allocWithZone(PPXFeedViewController) initWithOptions:v3.super.isa];

  if (!v4)
  {
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v5 = [a1 navigationItem];
  v6 = [v5 leftBarButtonItem];

  if (v6)
  {
    sub_100007778(&qword_100037DC0, &qword_100028510);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_100028410;
    *(v7 + 32) = v6;
    sub_10000F0A0(0, &qword_100037DD0, UIBarButtonItem_ptr);
    v8 = v4;
    v9 = v6;
    isa = sub_10001FECC().super.isa;

    [v8 setExtraLeftItems:isa];
  }

  v11 = [a1 navigationItem];
  v12 = [v11 rightBarButtonItem];

  if (v12)
  {
    sub_100007778(&qword_100037DC0, &qword_100028510);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_100028410;
    *(v13 + 32) = v12;
    sub_10000F0A0(0, &qword_100037DD0, UIBarButtonItem_ptr);
    v14 = v4;
    v15 = v12;
    v16 = sub_10001FECC().super.isa;

    [v14 setExtraRightItems:v16];
  }

  v17 = objc_allocWithZone(UINavigationController);
  v18 = v4;
  v19 = [v17 initWithRootViewController:v18];
  v20 = [objc_opt_self() sharedContext];
  if (!v20)
  {
    goto LABEL_25;
  }

  v21 = v20;
  v22 = v19;
  [v21 setNavigationController:v22];

  v23 = *&a1[OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController_ppxNavigationController];
  *&a1[OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController_ppxNavigationController] = v19;

  v24 = v22;
  [a1 addChildViewController:v24];
  v25 = [v18 view];
  if (!v25)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v26 = v25;
  v27 = [a1 view];
  if (!v27)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v28 = v27;
  [v27 bounds];
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;

  [v26 setFrame:{v30, v32, v34, v36}];
  v37 = [v18 view];

  if (!v37)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  [v37 setAutoresizingMask:18];

  v38 = [v24 view];
  if (!v38)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v39 = [a1 view];
  if (!v39)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v40 = v39;
  [v39 bounds];
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;

  [v38 setFrame:{v42, v44, v46, v48}];
  v49 = [a1 view];
  if (!v49)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v50 = v49;
  v51 = [v24 view];

  if (!v51)
  {
LABEL_32:
    __break(1u);
    return;
  }

  [v50 addSubview:v51];

  [v24 didMoveToParentViewController:a1];
  v52 = [objc_allocWithZone(PPXWelcomeGDPRItem) init];
  if ([v52 welcomeScreenShouldShow])
  {
    v53 = swift_allocObject();
    *(v53 + 16) = 0;
    v54 = (v53 + 16);
    v55 = swift_allocObject();
    *(v55 + 16) = v53;
    *(v55 + 24) = v52;
    v63[4] = sub_10000F1F4;
    v63[5] = v55;
    v63[0] = _NSConcreteStackBlock;
    v63[1] = 1107296256;
    v63[2] = sub_10000B7E4;
    v63[3] = &unk_100031B18;
    v56 = _Block_copy(v63);

    v57 = v52;

    v58 = [v57 welcomeScreenViewControllerWithCompletion:v56];
    _Block_release(v56);
    if (v58)
    {
      swift_beginAccess();
      v59 = *v54;
      *v54 = v58;
      v60 = v58;

      [v60 setModalPresentationStyle:2];
      [v60 setModalTransitionStyle:2];
      v61 = [v60 presentationController];
      if (v61)
      {
        v62 = v61;
        [v61 setDelegate:a1];
      }

      [v24 presentViewController:v60 animated:1 completion:0];
    }

    else
    {
    }
  }

  [a1 loadDidFinish];
}

uint64_t sub_10000B4B0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100007778(&qword_100037DD8, &qword_100028518);
    v2 = sub_10002011C();
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
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_10000CD9C(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_10000CDF8(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_10000CDF8(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_10000CDF8(v31, v32);
    result = sub_10002003C(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_10000CDF8(v32, (v2[7] + 32 * v10));
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

id sub_10000B778(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_beginAccess();
  v6 = *(a3 + 16);
  if (v6)
  {
    [v6 dismissViewControllerAnimated:1 completion:0];
  }

  return [a4 welcomeScreenViewControllerDidDismiss];
}

uint64_t sub_10000B7E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = sub_10001FE2C();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v2(v3, v5);
}

uint64_t sub_10000B864(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_10000B964()
{
  v1 = v0;
  v2 = sub_10001FCDC();
  v15 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10001FD0C();
  v5 = *(v14 - 8);
  __chkstk_darwin(v14);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() sharedInstance];
  [v8 resetForJavascript];

  sub_10000F0A0(0, &qword_100037DA0, OS_dispatch_queue_ptr);
  v9 = sub_10001FF9C();
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  aBlock[4] = sub_10000CD94;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F3A0;
  aBlock[3] = &unk_1000319B0;
  v11 = _Block_copy(aBlock);
  v12 = v1;

  sub_10001FCEC();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10000F330(&qword_100037DA8, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100007778(&qword_100037DB0, &qword_100028508);
  sub_10000EF9C(&qword_100037DB8, &qword_100037DB0, &qword_100028508);
  sub_10002001C();
  sub_10001FFAC();
  _Block_release(v11);

  (*(v15 + 8))(v4, v2);
  return (*(v5 + 8))(v7, v14);
}

void sub_10000BC78(char *a1)
{
  isa = *&a1[OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController_rootFeedOptions];
  if (isa)
  {

    sub_10000B4B0(v3);

    isa = sub_10001FDDC().super.isa;
  }

  v22 = [objc_allocWithZone(PPXFeedViewController) initWithOptions:isa];

  if (v22)
  {
    v4 = [a1 navigationItem];
    v5 = [v4 leftBarButtonItem];

    if (v5)
    {
      sub_100007778(&qword_100037DC0, &qword_100028510);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_100028410;
      *(v6 + 32) = v5;
      sub_10000F0A0(0, &qword_100037DD0, UIBarButtonItem_ptr);
      v7 = v22;
      v8 = v5;
      v9 = sub_10001FECC().super.isa;

      [v7 setExtraLeftItems:v9];
    }

    v10 = [a1 navigationItem];
    v11 = [v10 rightBarButtonItem];

    if (v11)
    {
      sub_100007778(&qword_100037DC0, &qword_100028510);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_100028410;
      *(v12 + 32) = v11;
      sub_10000F0A0(0, &qword_100037DD0, UIBarButtonItem_ptr);
      v13 = v22;
      v14 = v11;
      v15 = sub_10001FECC().super.isa;

      [v13 setExtraRightItems:v15];
    }

    v16 = *&a1[OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController_ppxNavigationController];
    v17 = v22;
    if (v16)
    {
      sub_100007778(&qword_100037DC0, &qword_100028510);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_100028410;
      *(v18 + 32) = v22;
      sub_10000F0A0(0, &qword_100037DC8, UIViewController_ptr);
      v19 = v22;
      v20 = v16;
      v21 = sub_10001FECC().super.isa;

      [v20 setViewControllers:v21];

      v17 = v22;
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_10000C0B8()
{
  v1 = v0;
  v2 = sub_10001FCDC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10001FD0C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([objc_opt_self() isMainThread])
  {
    if (UIAccessibilityIsInvertColorsEnabled())
    {
      v10 = 2;
    }

    else
    {
      v10 = 0;
    }

    return [v1 setOverrideUserInterfaceStyle:v10];
  }

  else
  {
    sub_10000F0A0(0, &qword_100037DA0, OS_dispatch_queue_ptr);
    v16 = v6;
    v15 = sub_10001FF9C();
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_10000CCF4;
    aBlock[5] = v12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000F3A0;
    aBlock[3] = &unk_100031960;
    v13 = _Block_copy(aBlock);

    sub_10001FCEC();
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_10000F330(&qword_100037DA8, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100007778(&qword_100037DB0, &qword_100028508);
    sub_10000EF9C(&qword_100037DB8, &qword_100037DB0, &qword_100028508);
    sub_10002001C();
    v14 = v15;
    sub_10001FFAC();
    _Block_release(v13);

    (*(v3 + 8))(v5, v2);
    return (*(v7 + 8))(v9, v16);
  }
}

void sub_10000C404(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (UIAccessibilityIsInvertColorsEnabled())
    {
      v3 = 2;
    }

    else
    {
      v3 = 0;
    }

    [v2 setOverrideUserInterfaceStyle:v3];
  }
}

uint64_t sub_10000C494(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v6 = sub_10001F4AC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001F49C();
  v10 = a1;
  a4();

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_10000C580(uint64_t a1, uint64_t a2)
{
  v3 = sub_10001F4AC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_10001F49C();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

void sub_10000C674(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    [Strong finishWithResult:a3 completion:0];
  }
}

id sub_10000C6DC@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(BSUIDownloadProgressCenter) init];
  *a1 = result;
  return result;
}

id sub_10000C718@<X0>(void *a2@<X8>)
{
  result = BSUIGetLibraryItemStateProvider();
  *a2 = result;
  return result;
}

uint64_t sub_10000C748@<X0>(void *a1@<X8>)
{
  sub_10001FDCC();
  sub_10001FDBC();
  type metadata accessor for PPXContextMenuProvider();
  sub_10001FD7C();

  *a1 = v3;
  return result;
}

uint64_t sub_10000C7F0@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_10001F5BC();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v13 - v7;
  sub_10001FDCC();
  v9 = sub_10001FDBC();
  sub_10001F5AC();
  v10 = objc_allocWithZone(type metadata accessor for PPXContextMenuProvider());
  (*(v3 + 16))(v6, v8, v2);
  v11 = sub_10000CE08(v6, v9, v10);
  result = (*(v3 + 8))(v8, v2);
  *a1 = v11;
  return result;
}

uint64_t sub_10000C988@<X0>(uint64_t (*a1)(void)@<X0>, unint64_t *a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  sub_10001FDCC();
  sub_10001FDBC();
  a5[3] = a1(0);
  a5[4] = sub_10000F330(a2, a3, a4);
  sub_10001FD7C();
}

void sub_10000CB78()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong view];

    if (v2)
    {
      v3 = [v2 window];

      if (v3)
      {
        v4 = [v3 windowScene];

        if (v4)
        {
          [v4 session];
        }
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_10000CC3C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t sub_10000CCBC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000CCFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000CD14(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000CD5C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000CD9C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_10000CDF8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

id sub_10000CE08(uint64_t a1, uint64_t a2, char *a3)
{
  ObjectType = swift_getObjectType();
  v5 = sub_10001F5BC();
  v32[3] = v5;
  v32[4] = &protocol witness table for FigaroProvider;
  v6 = sub_10000F2CC(v32);
  (*(*(v5 - 8) + 32))(v6, a1, v5);
  v26 = OBJC_IVAR____TtC25BooksProductPageExtension22PPXContextMenuProvider_swipeActionItems;
  sub_100007778(&qword_100037648, &qword_1000281E0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1000281C0;
  v28 = type metadata accessor for PPXMarkedAsFinishedActionItem(0);
  v8 = sub_10000F330(&qword_100037650, type metadata accessor for PPXMarkedAsFinishedActionItem, &unk_100028328);
  *(v7 + 32) = v28;
  *(v7 + 40) = v8;
  v9 = type metadata accessor for PPXMarkedAsStillReadingActionItem(0);
  v10 = sub_10000F330(&qword_100037658, type metadata accessor for PPXMarkedAsStillReadingActionItem, &unk_100028810);
  *(v7 + 48) = v9;
  *(v7 + 56) = v10;
  ActionItem = type metadata accessor for PPXAddToWantToReadActionItem(0);
  v12 = sub_10000F330(&qword_100037660, type metadata accessor for PPXAddToWantToReadActionItem, &unk_100028258);
  *(v7 + 64) = ActionItem;
  *(v7 + 72) = v12;
  v13 = type metadata accessor for PPXRemoveFromWantToReadActionItem(0);
  v14 = sub_10000F330(&qword_100037668, type metadata accessor for PPXRemoveFromWantToReadActionItem, &unk_100028670);
  *(v7 + 80) = v13;
  *(v7 + 88) = v14;
  *&a3[v26] = v7;
  v27 = OBJC_IVAR____TtC25BooksProductPageExtension22PPXContextMenuProvider_actionItems;
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1000281D0;
  v16 = type metadata accessor for PPXAddToCollectionActionItem(0);
  v17 = sub_10000F330(&qword_100037670, type metadata accessor for PPXAddToCollectionActionItem, &unk_100028B58);
  *(v15 + 32) = v16;
  *(v15 + 40) = v17;
  *(v15 + 48) = ActionItem;
  *(v15 + 56) = v12;
  v18 = type metadata accessor for PPXDownloadActionItem(0);
  v19 = sub_10000F330(&qword_100037678, type metadata accessor for PPXDownloadActionItem, &unk_100028C20);
  *(v15 + 64) = v18;
  *(v15 + 72) = v19;
  v20 = type metadata accessor for PPXDislikeActionItem(0);
  v21 = sub_10000F330(&qword_100037680, type metadata accessor for PPXDislikeActionItem, &unk_100028A60);
  *(v15 + 80) = v20;
  *(v15 + 88) = v21;
  *(v15 + 96) = sub_10001F5CC();
  *(v15 + 104) = &protocol witness table for LikeActionItem;
  *(v15 + 112) = v28;
  *(v15 + 120) = v8;
  *(v15 + 128) = v9;
  *(v15 + 136) = v10;
  *(v15 + 144) = sub_10001F86C();
  *(v15 + 152) = &protocol witness table for RateAndReviewActionItem;
  v22 = type metadata accessor for PPXRemoveDownloadActionItem(0);
  v23 = sub_10000F330(&qword_100037688, type metadata accessor for PPXRemoveDownloadActionItem, &unk_100028948);
  *(v15 + 160) = v22;
  *(v15 + 168) = v23;
  *(v15 + 176) = v13;
  *(v15 + 184) = v14;
  *(v15 + 192) = sub_10001F61C();
  *(v15 + 200) = &protocol witness table for ShareActionItem;
  *&a3[v27] = v15;
  sub_100007F08(v32, &a3[OBJC_IVAR____TtC25BooksProductPageExtension22PPXContextMenuProvider_figaroProvider]);
  *&a3[OBJC_IVAR____TtC25BooksProductPageExtension22PPXContextMenuProvider_objectGraph] = a2;
  v31.receiver = a3;
  v31.super_class = ObjectType;
  v24 = objc_msgSendSuper2(&v31, "init");
  sub_100007F6C(v32);
  return v24;
}

uint64_t sub_10000D200()
{
  v35 = sub_10001FD6C();
  v33 = *(v35 - 8);
  v0 = __chkstk_darwin(v35);
  v34 = &v27 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __chkstk_darwin(v0);
  v37 = &v27 - v3;
  v4 = __chkstk_darwin(v2);
  v36 = &v27 - v5;
  v6 = __chkstk_darwin(v4);
  v8 = &v27 - v7;
  v9 = __chkstk_darwin(v6);
  v11 = &v27 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v27 - v13;
  v15 = __chkstk_darwin(v12);
  v38 = &v27 - v16;
  __chkstk_darwin(v15);
  v18 = &v27 - v17;
  sub_10001FDCC();
  v19 = sub_10001FD8C();

  v39 = sub_10001F97C();
  sub_10000F0A0(0, &qword_100037EF8, BSUIDownloadProgressCenter_ptr);
  v32 = v18;
  sub_10001FD4C();
  sub_100007778(&qword_100037EF0, &qword_1000285C0);
  sub_10001FD4C();
  sub_100007778(&qword_100037F40, &qword_100028610);
  v30 = v14;
  sub_10001FD4C();
  type metadata accessor for FallbackSceneSessionProvider();
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v40 = v20;
  v29 = v11;
  sub_10001FD5C();
  sub_100007778(&qword_100037F48, &unk_100028618);
  v28 = v8;
  sub_10001FD4C();
  sub_100007778(&qword_100037F50, &qword_100028628);
  type metadata accessor for FigaroPageContextProvider();
  v40 = swift_allocObject();
  sub_10001FD5C();
  type metadata accessor for PPXContextMenuProvider();
  sub_10001FD4C();
  sub_100007778(&qword_100037F58, &unk_100028630);
  v21 = v34;
  sub_10001FD4C();
  v31 = v19;

  sub_10001FDAC();

  sub_10001FD9C();

  sub_10001FD9C();

  sub_10001FD9C();

  sub_10001FD9C();

  sub_10001FD9C();

  sub_10001FD9C();

  v22 = v37;
  sub_10001FD9C();

  v27 = sub_10001FD9C();

  v23 = *(v33 + 8);
  v24 = v21;
  v25 = v35;
  v23(v24, v35);
  v23(v22, v25);
  v23(v36, v25);
  v23(v28, v25);
  v23(v29, v25);
  v23(v30, v25);
  v23(v38, v25);
  v23(v32, v25);
  return v27;
}

void sub_10000D7F8()
{
  *(v0 + OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController_analyticsManager) = 0;
  v1 = (v0 + OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController_askToBuyApproveNotification);
  *v1 = 0u;
  v1[1] = 0u;
  v2 = (v0 + OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController_askToBuyDeclineNotification);
  *v2 = 0u;
  v2[1] = 0u;
  *(v0 + OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController_initialProductPageItem) = 0;
  *(v0 + OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController_jsaLibraryManager) = 0;
  *(v0 + OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController__navigationItem) = 0;
  *(v0 + OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController_ppxNavigationController) = 0;
  *(v0 + OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController_rootFeedOptions) = 0;
  *(v0 + OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController_setupData) = 0;
  *(v0 + OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController__syncLayoutController) = 0;
  *(v0 + OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController_windowProvider) = 0;
  sub_1000200CC();
  __break(1u);
}

void sub_10000D8E4()
{
  v0 = sub_10001F4EC();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v23 - v5;
  v7 = objc_opt_self();
  v8 = [v7 sharedInstance];
  v9 = objc_opt_self();
  v10 = [v9 sharedInstance];
  [v8 setJsBridge:v10];

  sub_10001FC5C();
  v11 = sub_10001FC4C();
  v12 = [v9 sharedInstance];
  sub_10001FC3C();

  sub_10000F0A0(0, &qword_100037E98, BRCConfigurationManager_ptr);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v15 = sub_10001FE1C();
  v16 = sub_10001FE1C();
  v17 = [v14 URLForResource:v15 withExtension:v16];

  if (v17)
  {
    sub_10001F4DC();

    (*(v1 + 32))(v6, v4, v0);
    v18 = [v7 sharedInstance];
    v19 = BRCBooksDefaultsNamespace;
    sub_10001F4CC(v20);
    v22 = v21;
    [v18 registerNamespace:v19 withDefaults:v21 forBundleID:BRCBundleID];

    (*(v1 + 8))(v6, v0);
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_10000DBC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100007778(&qword_100037DD8, &qword_100028518);
    v3 = sub_10002011C();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000F25C(v4, v13, &qword_100037F30, &qword_1000285F8);
      result = sub_10001BBE4(v13);
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
      result = sub_10000CDF8(&v15, (v3[7] + 32 * result));
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

unint64_t sub_10000DCFC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100007778(&qword_100037F28, &qword_1000285F0);
    v3 = sub_10002011C();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000F25C(v4, &v15, &qword_100037F18, &qword_1000285E0);
      v5 = v15;
      v6 = v16;
      result = sub_10001BB6C(v15, v16);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = (v3[7] + 32 * result);
      v11 = v18;
      *v10 = v17;
      v10[1] = v11;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      v4 += 48;
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

void sub_10000DE2C(void *a1, uint64_t a2)
{
  v3 = v2;
  v60 = a2;
  v58 = a1;
  v4 = sub_100007778(&unk_100038630, &unk_1000285B0);
  v5 = __chkstk_darwin(v4 - 8);
  v59 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v52 - v7;
  v9 = [objc_opt_self() sharedInstance];
  if (!v9)
  {
    __break(1u);
    goto LABEL_21;
  }

  v10 = v9;
  [v9 setDelegate:v3];

  v11 = *&v3[OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController_objectGraph];
  sub_100007778(&qword_100037EF0, &qword_1000285C0);
  sub_10001FD7C();
  v12 = v62[0];
  sub_10000F0A0(0, &qword_100037EF8, BSUIDownloadProgressCenter_ptr);
  v57 = v11;
  sub_10001FD7C();
  v13 = v62[0];
  v14 = [objc_opt_self() manager];
  v15 = [v14 dynamicRegistry];
  v16 = [v12 stateCenter];
  v17 = sub_10001FE1C();
  [v15 registerStateProvider:v16 forKind:v17];

  v18 = [v14 dynamicRegistry];
  v19 = v13;
  v20 = sub_10001FE1C();
  [v18 registerProgressProvider:v19 forKind:v20];

  v21 = [objc_opt_self() sharedController];
  if (!v21)
  {
LABEL_21:
    __break(1u);
    return;
  }

  v22 = v21;
  [v21 startObserving];

  v23 = [objc_opt_self() sharedProvider];
  v24 = *&v3[OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController_windowProvider];
  *&v3[OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController_windowProvider] = v23;

  v25 = [objc_allocWithZone(PPXJSALibraryManager) init];
  v26 = *&v3[OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController_jsaLibraryManager];
  *&v3[OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController_jsaLibraryManager] = v25;

  v54 = OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController_setupData;
  v55 = v19;
  v27 = *&v3[OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController_setupData];
  v28 = v59;
  if (!v27 || !*(v27 + 16))
  {
    goto LABEL_10;
  }

  v29 = sub_10001BB6C(0x7975426F546B7361, 0xE800000000000000);
  if ((v30 & 1) == 0)
  {

LABEL_10:
    v53 = sub_10000DBC0(&_swiftEmptyArrayStorage);
    goto LABEL_11;
  }

  sub_10000CD9C(*(v27 + 56) + 32 * v29, v62);

  if ((swift_dynamicCast() & 1) == 0 || (v61 & 1) == 0)
  {
    goto LABEL_10;
  }

  v31 = [objc_opt_self() metadataDictionary:0 variationWithNavigationBarVisibile:0];
  v53 = sub_10001FDEC();

LABEL_11:
  v56 = v14;
  sub_100007778(&qword_100037F00, &qword_1000285C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100028420;
  *(inited + 32) = 7107189;
  *(inited + 40) = 0xE300000000000000;
  v33 = [v58 productPageURL];
  if (v33)
  {
    v34 = v33;
    sub_10001F4DC();

    v35 = 0;
  }

  else
  {
    v35 = 1;
  }

  v36 = sub_10001F4EC();
  v37 = *(v36 - 8);
  (*(v37 + 56))(v28, v35, 1, v36);
  sub_10000F0E8(v28, v8);
  if ((*(v37 + 48))(v8, 1, v36) == 1)
  {
    sub_10000F1FC(v8, &unk_100038630, &unk_1000285B0);
    *(inited + 48) = 0u;
    *(inited + 64) = 0u;
  }

  else
  {
    v38 = sub_10001F4BC();
    *(inited + 72) = &type metadata for String;
    *(inited + 48) = v38;
    *(inited + 56) = v39;
    (*(v37 + 8))(v8, v36);
  }

  *(inited + 80) = 0x6574656D61726170;
  *(inited + 88) = 0xEA00000000007372;
  v40 = sub_100007778(&qword_100037F08, &qword_1000285D0);
  *(inited + 96) = v60;
  *(inited + 120) = v40;
  strcpy((inited + 128), "extensionInfo");
  *(inited + 142) = -4864;
  v41 = *&v3[v54];
  if (!v41)
  {
    v40 = 0;
    *(inited + 152) = 0;
    *(inited + 160) = 0;
  }

  *(inited + 144) = v41;
  *(inited + 168) = v40;
  *(inited + 176) = 0x617461646174656DLL;
  *(inited + 184) = 0xE800000000000000;
  *(inited + 216) = sub_100007778(&qword_100037F10, &qword_1000285D8);
  *(inited + 192) = v53;
  *(inited + 224) = sub_10001FE2C();
  *(inited + 232) = v42;
  *(inited + 264) = type metadata accessor for PPXContextMenuProvider();

  sub_10001FD7C();
  v43 = sub_10000DCFC(inited);
  swift_setDeallocating();
  sub_100007778(&qword_100037F18, &qword_1000285E0);
  swift_arrayDestroy();
  v44 = sub_10000A798(v43);

  *&v3[OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController_rootFeedOptions] = v44;

  v45 = [objc_opt_self() sharedInstance];
  v46 = swift_allocObject();
  v47 = v56;
  v46[2] = v56;
  v46[3] = v45;
  v46[4] = v3;
  v62[4] = sub_10000F1A0;
  v62[5] = v46;
  v62[0] = _NSConcreteStackBlock;
  v62[1] = 1107296256;
  v62[2] = sub_10000F3A0;
  v62[3] = &unk_100031A50;
  v48 = _Block_copy(v62);
  v49 = v47;
  v50 = v45;
  v51 = v3;

  [v50 initializeEnvironmentWithDataSource:v51 completion:v48];
  swift_unknownObjectRelease();

  _Block_release(v48);
}

unint64_t sub_10000E610(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100007778(&qword_100037ED8, &qword_1000285A0);
    v3 = sub_10002011C();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000F25C(v4, &v13, &qword_100037ED0, &qword_100028598);
      v5 = v13;
      v6 = v14;
      result = sub_10001BB6C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10000CDF8(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

unint64_t sub_10000E740()
{
  v53 = sub_10001FF8C();
  v0 = *(v53 - 8);
  __chkstk_darwin(v53);
  v2 = v52 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10001FF7C();
  __chkstk_darwin(v3);
  v4 = sub_10001FD0C();
  __chkstk_darwin(v4 - 8);
  v5 = sub_10000F0A0(0, &qword_100037DA0, OS_dispatch_queue_ptr);
  v52[0] = "r";
  v52[1] = v5;
  sub_10001FCFC();
  v55 = &_swiftEmptyArrayStorage;
  sub_10000F330(&qword_100037DE0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100007778(&qword_100037DE8, &qword_100028520);
  sub_10000EF9C(&qword_100037DF0, &qword_100037DE8, &qword_100028520);
  sub_10002001C();
  (*(v0 + 104))(v2, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v53);
  v6 = v54;
  v7 = sub_10001FFBC();
  v8 = [objc_allocWithZone(TUITransactionController) initWithQueue:v7];
  sub_100007778(&qword_100037DF8, &qword_100028528);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100028430;
  result = sub_10001FE2C();
  *(inited + 32) = result;
  *(inited + 40) = v11;
  v12 = *(v6 + OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController_analyticsManager);
  if (v12)
  {
    v13 = v12;
    v14 = sub_10001FCBC();

    *(inited + 72) = sub_10001F9EC();
    *(inited + 48) = v14;
    *(inited + 80) = sub_10001FE2C();
    *(inited + 88) = v15;
    *(inited + 120) = &type metadata for String;
    *(inited + 96) = 0x6F69736E65747865;
    *(inited + 104) = 0xE90000000000006ELL;
    result = sub_10001FE2C();
    *(inited + 128) = result;
    *(inited + 136) = v16;
    v17 = *(v6 + OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController_jsaLibraryManager);
    if (v17)
    {
      *(inited + 168) = sub_10000F0A0(0, &qword_100037E00, &off_100030AE0);
      *(inited + 144) = v17;
      *(inited + 176) = sub_10001FE2C();
      *(inited + 184) = v18;
      v19 = sub_10001FC5C();
      v20 = v17;
      v21 = sub_10001FC4C();
      *(inited + 216) = v19;
      *(inited + 192) = v21;
      *(inited + 224) = sub_10001FE2C();
      *(inited + 232) = v22;
      *(inited + 264) = sub_10000F0A0(0, &qword_100037E08, TUITransactionController_ptr);
      *(inited + 240) = v8;
      *(inited + 272) = sub_10001FE2C();
      *(inited + 280) = v23;
      v24 = sub_10000F0A0(0, &qword_100037E10, BSUIAlertController_ptr);
      *(inited + 312) = sub_100007778(&qword_100037E18, &qword_100028530);
      *(inited + 288) = v24;
      *(inited + 320) = sub_10001FE2C();
      *(inited + 328) = v25;
      v26 = sub_10000F0A0(0, &qword_100037E20, BSUIDynamicArray_ptr);
      *(inited + 360) = sub_100007778(&qword_100037E28, &qword_100028538);
      *(inited + 336) = v26;
      *(inited + 368) = sub_10001FE2C();
      *(inited + 376) = v27;
      v28 = sub_10000F0A0(0, &qword_100037E30, BSUIDynamicValue_ptr);
      *(inited + 408) = sub_100007778(&qword_100037E38, &qword_100028540);
      *(inited + 384) = v28;
      *(inited + 416) = sub_10001FE2C();
      *(inited + 424) = v29;
      v30 = sub_10000F0A0(0, &qword_100037E40, BSUICloudAssetRatingsManager_ptr);
      *(inited + 456) = sub_100007778(&qword_100037E48, &qword_100028548);
      *(inited + 432) = v30;
      *(inited + 464) = sub_10001FE2C();
      *(inited + 472) = v31;
      *(inited + 504) = type metadata accessor for PPXContextMenuProvider();
      v32 = v8;
      sub_10001FD7C();
      *(inited + 512) = sub_10001FE2C();
      *(inited + 520) = v33;
      v34 = sub_10000F0A0(0, &qword_100037E50, BSUIFeedDataRequest_ptr);
      *(inited + 552) = sub_100007778(&qword_100037E58, &qword_100028550);
      *(inited + 528) = v34;
      *(inited + 560) = sub_10001FE2C();
      *(inited + 568) = v35;
      v36 = sub_10000F0A0(0, &qword_100037E60, off_100030AD8);
      *(inited + 600) = sub_100007778(&qword_100037E68, &qword_100028558);
      *(inited + 576) = v36;
      *(inited + 608) = sub_10001FE2C();
      *(inited + 616) = v37;
      v38 = sub_10000F0A0(0, &qword_100037E70, BSUINoticeViewController_ptr);
      *(inited + 648) = sub_100007778(&qword_100037E78, &qword_100028560);
      *(inited + 624) = v38;
      *(inited + 656) = sub_10001FE2C();
      *(inited + 664) = v39;
      v40 = sub_10001FC2C();
      *(inited + 696) = sub_100007778(&qword_100037E80, &qword_100028568);
      *(inited + 672) = v40;
      *(inited + 704) = sub_10001FE2C();
      *(inited + 712) = v41;
      v42 = sub_10000F0A0(0, &qword_100037E88, BSUIPurchaseManager_ptr);
      *(inited + 744) = sub_100007778(&qword_100037E90, &qword_100028570);
      *(inited + 720) = v42;
      *(inited + 752) = sub_10001FE2C();
      *(inited + 760) = v43;
      v44 = sub_10000F0A0(0, &qword_100037E98, BRCConfigurationManager_ptr);
      *(inited + 792) = sub_100007778(&qword_100037EA0, &qword_100028578);
      *(inited + 768) = v44;
      *(inited + 800) = sub_10001FE2C();
      *(inited + 808) = v45;
      v46 = sub_10000F0A0(0, &qword_100037EA8, BSUIScreenshotViewController_ptr);
      *(inited + 840) = sub_100007778(&qword_100037EB0, &qword_100028580);
      *(inited + 816) = v46;
      *(inited + 848) = sub_10001FE2C();
      *(inited + 856) = v47;
      v48 = sub_10000F0A0(0, &qword_100037EB8, TUITransaction_ptr);
      *(inited + 888) = sub_100007778(&qword_100037EC0, &qword_100028588);
      *(inited + 864) = v48;
      *(inited + 896) = sub_10001FE2C();
      *(inited + 904) = v49;
      v50 = sub_10001F5DC();
      *(inited + 936) = sub_100007778(&qword_100037EC8, &qword_100028590);
      *(inited + 912) = v50;
      v51 = sub_10000E610(inited);
      swift_setDeallocating();
      sub_100007778(&qword_100037ED0, &qword_100028598);
      swift_arrayDestroy();

      return v51;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10000EF9C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000CD14(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000F010(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007778(&unk_100037EE0, &qword_1000285A8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000F0A0(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_10000F0E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007778(&unk_100038630, &unk_1000285B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000F158()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000F1B4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000F1FC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100007778(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000F25C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100007778(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t *sub_10000F2CC(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_10000F330(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000F3D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10001F74C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10000F494(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_10001F74C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for PPXRemoveFromWantToReadActionItem(uint64_t a1)
{
  result = qword_100037FD8;
  if (!qword_100037FD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000F584()
{
  sub_100007FB8(v0, v0[3]);
  sub_10001F93C();
  if (v4)
  {
    sub_100007FFC(v3);
    v1 = 0;
  }

  else
  {
    sub_100008050(v3, v5);
    sub_100007FB8(v5, v5[3]);
    v1 = sub_10001F89C();
    sub_100007F6C(v5);
  }

  return v1 & 1;
}

uint64_t sub_10000F62C()
{
  *(v1 + 104) = v0;
  sub_10001FF2C();
  *(v1 + 112) = sub_10001FF1C();
  v3 = sub_10001FF0C();

  return _swift_task_switch(sub_10000F6C4, v3, v2);
}

uint64_t sub_10000F6C4()
{
  v1 = *(v0 + 104);

  sub_100007FB8(v1, v1[3]);
  sub_10001F93C();
  if (*(v0 + 56))
  {
    sub_100007FFC(v0 + 16);
  }

  else
  {
    v2 = *(v0 + 104);
    sub_100008050((v0 + 16), v0 + 64);
    v3 = objc_opt_self();
    sub_100007FB8((v0 + 64), *(v0 + 88));
    sub_10001F8DC();
    v4 = sub_10001FE1C();

    [v3 removeAssetFromWantToRead:v4 tracker:*(v2 + 80)];

    v5 = *(v2 + 128);
    sub_100007FB8((v0 + 64), *(v0 + 88));
    sub_10001F8DC();
    v6 = sub_10001FE1C();

    [v5 updateWantToReadState:0 identifier:v6];

    sub_100007FB8((v0 + 64), *(v0 + 88));
    sub_10001F8DC();
    v7 = sub_10001FE1C();

    [v5 updateItemOfInterestForItemIdentifier:v7];

    sub_100007F6C((v0 + 64));
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_10000F888()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100007384;

  return sub_10000F62C();
}

uint64_t sub_10000F914@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  sub_100007F08(a1, a6);
  sub_100007F08(a2, (a6 + 40));
  sub_100007F08(a4, (a6 + 88));
  v12 = BSUIGetLibraryItemStateProvider();
  sub_100007F6C(a4);
  sub_100007F6C(a2);
  sub_100007F6C(a1);
  objc_opt_self();
  v13 = swift_dynamicCastObjCClassUnconditional();
  v14 = *(a5 + 36);
  v15 = enum case for ContextActionType.removeFromWantToRead(_:);
  v16 = sub_10001F74C();
  result = (*(*(v16 - 8) + 104))(&a6[v14], v15, v16);
  *(a6 + 10) = a3;
  *(a6 + 16) = v13;
  *(a6 + 17) = &off_100031BC8;
  return result;
}

uint64_t sub_10000FA40(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_10001F75C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_10000FB00(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_10001F75C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for PPXContextActionData(uint64_t a1)
{
  result = qword_100038078;
  if (!qword_100038078)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000FBF0(uint64_t a1)
{
  sub_10000FD9C(319, &qword_100038088, &qword_100038090, &qword_1000290D0, &type metadata accessor for Array);
  if (v1 <= 0x3F)
  {
    sub_10001F75C();
    if (v2 <= 0x3F)
    {
      sub_10000FD44(319);
      if (v3 <= 0x3F)
      {
        sub_10000FD9C(319, &qword_1000380A0, &qword_1000380A8, &unk_100028738, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          sub_10001F80C();
          if (v5 <= 0x3F)
          {
            sub_10000FE00();
            if (v6 <= 0x3F)
            {
              sub_10000FE64();
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_10000FD44(uint64_t a1)
{
  if (!qword_100038098)
  {
    type metadata accessor for CGPoint();
    v1 = sub_10002000C();
    if (!v2)
    {
      atomic_store(v1, &qword_100038098);
    }
  }
}

void sub_10000FD9C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_10000CD14(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_10000FE00()
{
  result = qword_1000380B0;
  if (!qword_1000380B0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1000380B0);
  }

  return result;
}

unint64_t sub_10000FE64()
{
  result = qword_1000380B8;
  if (!qword_1000380B8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1000380B8);
  }

  return result;
}

id sub_10000FF00()
{
  v0 = [objc_msgSend(objc_opt_self() "sharedInstance")];
  swift_unknownObjectRelease();
  return v0;
}

id sub_10000FF5C()
{
  v0 = [objc_opt_self() sharedProvider];
  v1 = [v0 isStoreAccountManagedAppleID];

  return v1;
}

uint64_t sub_100010038@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_10001F75C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

void *sub_1000100E8()
{
  v0 = sub_10001F7FC();
  if (v2)
  {
    sub_10001016C(v0, v1, 1);
    return 0;
  }

  else
  {
    v4 = v1;

    return v4;
  }
}

void sub_10001016C(void *a1, void *a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1000101CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10001F74C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10001028C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_10001F74C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for PPXMarkedAsStillReadingActionItem(uint64_t a1)
{
  result = qword_100038158;
  if (!qword_100038158)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001037C()
{
  sub_100007FB8(v0, v0[3]);
  sub_10001F93C();
  if (v5)
  {
    sub_100007FFC(v4);
    v1 = 0;
  }

  else
  {
    sub_100008050(v4, v6);
    sub_100007FB8(v6, v7);
    v2 = sub_10001F8FC();
    if (v2 == 2 || (v2 & 1) == 0)
    {
      v1 = 0;
    }

    else
    {
      sub_100007FB8(v6, v7);
      v1 = sub_10001F8AC();
    }

    sub_100007F6C(v6);
  }

  return v1 & 1;
}

uint64_t sub_10001045C()
{
  v1[13] = v0;
  v2 = sub_10001FA8C();
  v1[14] = v2;
  v1[15] = *(v2 - 8);
  v1[16] = swift_task_alloc();
  v3 = sub_10001FA0C();
  v1[17] = v3;
  v1[18] = *(v3 - 8);
  v1[19] = swift_task_alloc();
  v4 = sub_10001FA9C();
  v1[20] = v4;
  v1[21] = *(v4 - 8);
  v1[22] = swift_task_alloc();
  sub_100007778(&qword_100037928, &qword_1000288B0);
  v1[23] = swift_task_alloc();
  sub_10001FF2C();
  v1[24] = sub_10001FF1C();
  v6 = sub_10001FF0C();

  return _swift_task_switch(sub_100010640, v6, v5);
}

uint64_t sub_100010640()
{
  v1 = *(v0 + 104);

  sub_100007FB8(v1, v1[3]);
  sub_10001F93C();
  if (*(v0 + 56))
  {
    sub_100007FFC(v0 + 16);
  }

  else
  {
    v22 = *(v0 + 176);
    v23 = *(v0 + 184);
    v3 = *(v0 + 160);
    v2 = *(v0 + 168);
    v16 = *(v0 + 152);
    v21 = *(v0 + 144);
    v15 = *(v0 + 136);
    v17 = *(v0 + 120);
    v18 = *(v0 + 112);
    v19 = *(v0 + 128);
    v4 = *(v0 + 104);
    sub_100008050((v0 + 16), v0 + 64);
    sub_10001FA7C();
    v5 = sub_10001FA6C();
    sub_100007FB8((v0 + 64), *(v0 + 88));
    sub_10001F8DC();
    sub_10001FA5C();

    v14 = sub_10001FA6C();
    v20 = *(v4 + 80);
    sub_10001FE2C();
    sub_100007FB8((v0 + 64), *(v0 + 88));
    sub_10001F8DC();
    (*(v2 + 104))(v22, enum case for ContentAcquisitionType.storeBought(_:), v3);
    sub_100007FB8((v0 + 64), *(v0 + 88));
    sub_10001F91C();
    v6 = sub_10001F78C();
    v7 = &enum case for ContentType.audiobook(_:);
    if ((v6 & 1) == 0)
    {
      v7 = &enum case for ContentType.book(_:);
    }

    (*(v21 + 104))(v16, *v7, v15);
    sub_100007FB8((v0 + 64), *(v0 + 88));
    sub_10001F8CC();
    sub_10001FFFC();
    (*(v17 + 104))(v19, enum case for ProductionType.unknown(_:), v18);
    sub_10001FA3C();

    (*(v17 + 8))(v19, v18);
    (*(v21 + 8))(v16, v15);
    (*(v2 + 8))(v22, v3);
    v8 = objc_opt_self();
    sub_100007FB8((v0 + 64), *(v0 + 88));
    sub_10001F8DC();
    v9 = sub_10001FE1C();

    [v8 setFinishedState:0 storeID:v9 tracker:{v20, v23, v19}];

    v10 = *(v4 + 128);
    sub_100007FB8((v0 + 64), *(v0 + 88));
    sub_10001F8DC();
    v11 = sub_10001FE1C();

    [v10 updateItemOfInterestForItemIdentifier:v11];

    sub_100008C3C(v23);
    sub_100007F6C((v0 + 64));
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_100010A5C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100007384;

  return sub_10001045C();
}

uint64_t sub_100010AE8@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  sub_100007F08(a1, a6);
  sub_100007F08(a2, (a6 + 40));
  sub_100007F08(a4, (a6 + 88));
  v12 = BSUIGetLibraryItemStateProvider();
  sub_100007F6C(a4);
  sub_100007F6C(a2);
  sub_100007F6C(a1);
  objc_opt_self();
  v13 = swift_dynamicCastObjCClassUnconditional();
  v14 = *(a5 + 36);
  v15 = enum case for ContextActionType.markAsStillReading(_:);
  v16 = sub_10001F74C();
  result = (*(*(v16 - 8) + 104))(&a6[v14], v15, v16);
  *(a6 + 10) = a3;
  *(a6 + 16) = v13;
  *(a6 + 17) = &off_100031BC8;
  return result;
}

uint64_t LibraryAnalyticsDataProvider.seriesType(for:)@<X0>(uint64_t a2@<X8>)
{
  v3 = BSUIGetLibraryItemStateProvider();
  v4 = sub_10001FE1C();
  v5 = [v3 itemStateWithIdentifier:v4];

  swift_unknownObjectRelease();
  v6 = [v5 seriesType];
  swift_unknownObjectRelease();
  if (v6 > 1)
  {
    if (v6 == 2)
    {
      v7 = &enum case for SeriesType.ordered(_:);
      goto LABEL_9;
    }

    if (v6 == 3)
    {
      v7 = &enum case for SeriesType.unOrdered(_:);
      goto LABEL_9;
    }

LABEL_7:
    v8 = sub_10001F9FC();
    v9 = *(*(v8 - 8) + 56);
    v10 = v8;
    v11 = a2;
    v12 = 1;
    goto LABEL_10;
  }

  if (v6 != 1)
  {
    goto LABEL_7;
  }

  v7 = &enum case for SeriesType.nonSeries(_:);
LABEL_9:
  v13 = *v7;
  v14 = sub_10001F9FC();
  v16 = *(v14 - 8);
  (*(v16 + 104))(a2, v13, v14);
  v9 = *(v16 + 56);
  v11 = a2;
  v12 = 0;
  v10 = v14;
LABEL_10:

  return v9(v11, v12, 1, v10);
}

uint64_t sub_100010E08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10001F74C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100010EC8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_10001F74C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for PPXRemoveDownloadActionItem(uint64_t a1)
{
  result = qword_100038290;
  if (!qword_100038290)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100010FB8(uint64_t a1)
{
  sub_1000110DC(319, &qword_1000377C0, &protocol descriptor for ContextActionDataProtocol);
  if (v1 <= 0x3F)
  {
    sub_1000110DC(319, &qword_1000377C8, &protocol descriptor for ContextMenuPresentationContextProtocol);
    if (v2 <= 0x3F)
    {
      sub_100007E54(319);
      if (v3 <= 0x3F)
      {
        sub_1000110DC(319, &qword_1000377D8, &protocol descriptor for FigaroProviding);
        if (v4 <= 0x3F)
        {
          sub_1000110DC(319, &unk_1000382A0, &protocol descriptor for ProductPageActionable);
          if (v5 <= 0x3F)
          {
            sub_10001F74C();
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1000110DC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

id sub_100011138@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  sub_100007F08(a1, v20);
  sub_100007F08(a2, v19);
  sub_100007F08(a4, v18);
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v11 = result;
    v16 = sub_10001160C();
    v17 = &off_100031BB0;
    *&v15 = v11;
    sub_100007F6C(a4);
    sub_100007F6C(a2);
    sub_100007F6C(a1);
    v12 = *(type metadata accessor for PPXRemoveDownloadActionItem(0) + 36);
    v13 = enum case for ContextActionType.removeDownload(_:);
    v14 = sub_10001F74C();
    (*(*(v14 - 8) + 104))(a5 + v12, v13, v14);
    sub_100008050(v20, a5);
    sub_100008050(v19, a5 + 40);
    *(a5 + 80) = a3;
    sub_100008050(v18, a5 + 88);
    return sub_100008050(&v15, a5 + 128);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100011284()
{
  sub_100007FB8(v0, v0[3]);
  sub_10001F93C();
  if (v5)
  {
    sub_100007FFC(v4);
    return 0;
  }

  else
  {
    sub_100008050(v4, v6);
    sub_100007FB8(v6, v7);
    v2 = sub_10001F8EC();
    if (v2 == 2 || (v2 & 1) == 0 || (sub_100007FB8(v6, v7), (sub_10001F88C() & 1) != 0))
    {
      v1 = 0;
    }

    else
    {
      v1 = [objc_opt_self() isRunningInStoreDemoMode] ^ 1;
    }

    sub_100007F6C(v6);
  }

  return v1;
}

uint64_t sub_100011380()
{
  *(v1 + 104) = v0;
  sub_10001FF2C();
  *(v1 + 112) = sub_10001FF1C();
  v3 = sub_10001FF0C();

  return _swift_task_switch(sub_100011418, v3, v2);
}

uint64_t sub_100011418()
{
  v1 = *(v0 + 104);

  sub_100007FB8(v1, v1[3]);
  sub_10001F93C();
  if (*(v0 + 56))
  {
    sub_100007FFC(v0 + 16);
  }

  else
  {
    v2 = *(v0 + 104);
    sub_100008050((v0 + 16), v0 + 64);
    v3 = v2[19];
    v4 = v2[20];
    sub_100007FB8(v2 + 16, v3);
    sub_100007FB8((v0 + 64), *(v0 + 88));
    v5 = sub_10001F8DC();
    v7 = v6;
    sub_100007FB8((v0 + 64), *(v0 + 88));
    sub_10001F91C();
    v8 = sub_10001F78C();
    (*(v4 + 16))(v5, v7, v8 & 1, v3, v4);

    sub_100007F6C((v0 + 64));
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_10001157C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100007384;

  return sub_100011380();
}

unint64_t sub_10001160C()
{
  result = qword_1000382E0;
  if (!qword_1000382E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000382E0);
  }

  return result;
}

void sub_100011658(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() sharedInstance];
  if (v4)
  {
    v5 = v4;
    sub_100007778(&qword_1000382E8, &qword_1000290C0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_100028400;
    *(v6 + 32) = a1;
    *(v6 + 40) = a2;

    isa = sub_10001FECC().super.isa;

    [v5 downloadBooks:isa];
  }

  else
  {
    __break(1u);
  }
}

void sub_10001173C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = [objc_opt_self() sharedInstance];
  if (v4)
  {
    v5 = v4;
    v6 = sub_10001FE1C();
    [v5 removeDownload:v6 isAudiobook:a3 & 1];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000117F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10001F74C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000118B4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_10001F74C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for PPXDislikeActionItem(uint64_t a1)
{
  result = qword_100038348;
  if (!qword_100038348)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000119A4(uint64_t a1)
{
  sub_1000110DC(319, &qword_1000377C0, &protocol descriptor for ContextActionDataProtocol);
  if (v1 <= 0x3F)
  {
    sub_1000110DC(319, &qword_1000377C8, &protocol descriptor for ContextMenuPresentationContextProtocol);
    if (v2 <= 0x3F)
    {
      sub_100007E54(319);
      if (v3 <= 0x3F)
      {
        sub_1000110DC(319, &qword_1000377D8, &protocol descriptor for FigaroProviding);
        if (v4 <= 0x3F)
        {
          sub_1000110DC(319, &unk_100038358, &protocol descriptor for LikeStateController);
          if (v5 <= 0x3F)
          {
            sub_10001F74C();
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

id sub_100011AC8@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  sub_100007F08(a1, v19);
  sub_100007F08(a2, v18);
  sub_100007F08(a4, v17);
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    sub_1000124C4();
    sub_10001FC1C();
    sub_10001FC0C();
    v15 = sub_10001F85C();
    v16 = &protocol witness table for MenuLikeStateController;
    sub_10000F2CC(&v14);
    sub_10001F84C();
    sub_100007F6C(a4);
    sub_100007F6C(a2);
    sub_100007F6C(a1);
    v11 = *(type metadata accessor for PPXDislikeActionItem(0) + 36);
    v12 = enum case for ContextActionType.dislike(_:);
    v13 = sub_10001F74C();
    (*(*(v13 - 8) + 104))(a5 + v11, v12, v13);
    sub_100008050(v19, a5);
    sub_100008050(v18, a5 + 40);
    *(a5 + 80) = a3;
    sub_100008050(v17, a5 + 88);
    return sub_100008050(&v14, a5 + 128);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100011C68()
{
  v1 = v0;
  sub_100007FB8(v0, v0[3]);
  sub_10001F93C();
  if (v10 == 1)
  {
    sub_100007FFC(v9);
LABEL_11:
    v7 = 0;
    return v7 & 1;
  }

  sub_100008050(v9, v11);
  sub_100007FB8(v11, v12);
  sub_10001F91C();
  if (sub_10001F78C())
  {
    goto LABEL_10;
  }

  sub_100007FB8(v11, v12);
  sub_10001F91C();
  if (sub_10001F78C())
  {
    goto LABEL_10;
  }

  sub_100007FB8(v11, v12);
  v2 = sub_10001F90C();
  if (!v3)
  {
    goto LABEL_10;
  }

  v4 = v2;
  v5 = v3;

  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {
LABEL_10:
    sub_100007F6C(v11);
    goto LABEL_11;
  }

  sub_100007FB8(v1, v1[3]);
  v7 = sub_10001F92C();
  sub_100007F6C(v11);
  return v7 & 1;
}

uint64_t sub_100011DC4()
{
  v1[17] = v0;
  v2 = sub_10001FBEC();
  v1[18] = v2;
  v1[19] = *(v2 - 8);
  v1[20] = swift_task_alloc();
  sub_10001FF2C();
  v1[21] = sub_10001FF1C();
  v4 = sub_10001FF0C();
  v1[22] = v4;
  v1[23] = v3;

  return _swift_task_switch(sub_100011EB8, v4, v3);
}

uint64_t sub_100011EB8()
{
  sub_100007FB8(*(v0 + 136), *(*(v0 + 136) + 24));
  sub_10001F93C();
  if (*(v0 + 56))
  {

    sub_100007FFC(v0 + 16);

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v3 = *(v0 + 136);
    sub_100008050((v0 + 16), v0 + 64);
    v4 = v3[19];
    v5 = v3[20];
    sub_100007FB8(v3 + 16, v4);
    v6 = v3[10];
    v7 = swift_task_alloc();
    *(v0 + 192) = v7;
    *v7 = v0;
    v7[1] = sub_10001201C;
    v8 = *(v0 + 136);

    return dispatch thunk of LikeStateController.authAndsubmitLikeState(liked:context:data:assetInfo:tracker:)(0, v3 + 5, v8, v0 + 64, v6, v4, v5);
  }
}

uint64_t sub_10001201C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 200) = v1;

  if (v1)
  {
    v5 = v4[22];
    v6 = v4[23];
    v7 = sub_100012248;
  }

  else
  {
    v4[26] = a1;
    v5 = v4[22];
    v6 = v4[23];
    v7 = sub_100012144;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_100012144()
{
  v1 = v0[26];

  if (v1)
  {
    v2 = v0[17];
    v3 = objc_opt_self();
    sub_100007FB8((v2 + 40), *(v2 + 64));
    sub_10001F59C();
    isa = sub_10001FDDC().super.isa;

    [v3 presentNoticeForBookLoved:0 options:isa];
  }

  sub_100007F6C(v0 + 8);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100012248()
{
  v17 = v0;

  sub_10001FBBC();
  swift_errorRetain();
  v1 = sub_10001FBCC();
  v2 = sub_10001FF6C();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[19];
    v15 = v0[20];
    v4 = v0[18];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = sub_10002017C();
    v9 = sub_100012510(v7, v8, &v16);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v1, v2, "error while trying to submide dislike preference with : %s", v5, 0xCu);
    sub_100007F6C(v6);

    (*(v3 + 8))(v15, v4);
  }

  else
  {
    v11 = v0[19];
    v10 = v0[20];
    v12 = v0[18];

    (*(v11 + 8))(v10, v12);
  }

  sub_100007F6C(v0 + 8);

  v13 = v0[1];

  return v13();
}

uint64_t sub_100012434()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100007384;

  return sub_100011DC4();
}

unint64_t sub_1000124C4()
{
  result = qword_100038398;
  if (!qword_100038398)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100038398);
  }

  return result;
}

unint64_t sub_100012510(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000125DC(v11, 0, 0, 1, a1, a2);
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
    sub_10000CD9C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100007F6C(v11);
  return v7;
}

unint64_t sub_1000125DC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1000126E8(a5, a6);
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
    result = sub_1000200AC();
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

char *sub_1000126E8(uint64_t a1, unint64_t a2)
{
  v3 = sub_100012734(a1, a2);
  sub_100012864(&off_100031890);
  return v3;
}

char *sub_100012734(uint64_t a1, unint64_t a2)
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

  v6 = sub_100012950(v5, 0);
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

  result = sub_1000200AC();
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
        v10 = sub_10001FE9C();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100012950(v10, 0);
        result = sub_10002006C();
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

uint64_t sub_100012864(uint64_t result)
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

  result = sub_1000129C4(result, v11, 1, v3);
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

void *sub_100012950(uint64_t a1, uint64_t a2)
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

  sub_100007778(&qword_1000383A0, &unk_100028B00);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000129C4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100007778(&qword_1000383A0, &unk_100028B00);
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

uint64_t sub_100012ABC()
{
  *(v1 + 104) = v0;
  sub_10001FF2C();
  *(v1 + 112) = sub_10001FF1C();
  v3 = sub_10001FF0C();

  return _swift_task_switch(sub_100012B54, v3, v2);
}

uint64_t sub_100012B54()
{
  v1 = *(v0 + 104);

  sub_100007FB8(v1, v1[3]);
  sub_10001F93C();
  v2 = (v0 + 16);
  if (*(v0 + 56) == 1)
  {
    sub_100007FFC(v2);
  }

  else
  {
    sub_100008050(v2, v0 + 64);
    sub_100007FB8((v0 + 64), *(v0 + 88));
    sub_10001F8DC();
    sub_100007FB8((v0 + 64), *(v0 + 88));
    v3 = sub_10001F8FC();
    sub_100007FB8((v0 + 64), *(v0 + 88));
    sub_10001F91C();
    v4 = sub_10001F78C();
    v5 = objc_allocWithZone(PPXCollectionListViewController);
    v6 = sub_10001FE1C();

    v7 = [v5 initWithAssetID:v6 isPurchased:v3 & 1 isAudiobook:v4 & 1];

    if (v7)
    {
      v8 = *(v0 + 104);
      v9 = objc_allocWithZone(UIBarButtonItem);
      v10 = v7;
      v11 = [v9 initWithBarButtonSystemItem:24 target:v10 action:"doneButtonPressed"];
      v12 = [v10 navigationItem];
      [v12 setRightBarButtonItem:v11 animated:0];

      v13 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v10];
      sub_100007FB8((v8 + 40), *(v8 + 64));
      sub_10001F58C();
    }

    sub_100007F6C((v0 + 64));
  }

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_100012DA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_10001F74C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

BOOL sub_100012E1C()
{
  sub_100007FB8(v0, v0[3]);
  sub_10001F93C();
  v1 = v3[40];
  sub_100007FFC(v3);
  return (v1 & 1) == 0;
}

uint64_t sub_100012E7C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100007384;

  return sub_100012ABC();
}

uint64_t sub_100012F08@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_100008050(a1, a6);
  sub_100008050(a2, a6 + 40);
  *(a6 + 80) = a3;
  sub_100008050(a4, a6 + 88);
  v11 = *(a5 + 32);
  v12 = enum case for ContextActionType.addToCollection(_:);
  v13 = sub_10001F74C();
  v14 = *(*(v13 - 8) + 104);

  return v14(a6 + v11, v12, v13);
}

uint64_t sub_100012FEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10001F74C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000130AC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_10001F74C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for PPXAddToCollectionActionItem(uint64_t a1)
{
  result = qword_100038400;
  if (!qword_100038400)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10001319C(uint64_t a1)
{
  sub_1000110DC(319, &qword_1000377C0, &protocol descriptor for ContextActionDataProtocol);
  if (v1 <= 0x3F)
  {
    sub_1000110DC(319, &qword_1000377C8, &protocol descriptor for ContextMenuPresentationContextProtocol);
    if (v2 <= 0x3F)
    {
      sub_100007E54(319);
      if (v3 <= 0x3F)
      {
        sub_1000110DC(319, &qword_1000377D8, &protocol descriptor for FigaroProviding);
        if (v4 <= 0x3F)
        {
          sub_10001F74C();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1000132AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10001F74C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10001336C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_10001F74C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for PPXDownloadActionItem(uint64_t a1)
{
  result = qword_1000384A0;
  if (!qword_1000384A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_10001345C@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  sub_100007F08(a1, v20);
  sub_100007F08(a2, v19);
  sub_100007F08(a4, v18);
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v11 = result;
    v16 = sub_10001160C();
    v17 = &off_100031BB0;
    *&v15 = v11;
    sub_100007F6C(a4);
    sub_100007F6C(a2);
    sub_100007F6C(a1);
    v12 = *(type metadata accessor for PPXDownloadActionItem(0) + 36);
    v13 = enum case for ContextActionType.download(_:);
    v14 = sub_10001F74C();
    (*(*(v14 - 8) + 104))(a5 + v12, v13, v14);
    sub_100008050(v20, a5);
    sub_100008050(v19, a5 + 40);
    *(a5 + 80) = a3;
    sub_100008050(v18, a5 + 88);
    return sub_100008050(&v15, a5 + 128);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000135A8()
{
  sub_100007FB8(v0, v0[3]);
  sub_10001F93C();
  if (v5)
  {
    sub_100007FFC(v4);
    v1 = 0;
  }

  else
  {
    sub_100008050(v4, v6);
    sub_100007FB8(v6, v7);
    v2 = sub_10001F8EC();
    if (v2 == 2 || (v2 & 1) != 0 || (sub_100007FB8(v6, v7), (sub_10001F88C() & 1) != 0))
    {
      v1 = 0;
    }

    else
    {
      sub_100007FB8(v6, v7);
      v1 = sub_10001F8FC();
    }

    sub_100007F6C(v6);
  }

  return v1 & 1;
}

uint64_t sub_1000136AC()
{
  *(v1 + 104) = v0;
  sub_10001FF2C();
  *(v1 + 112) = sub_10001FF1C();
  v3 = sub_10001FF0C();

  return _swift_task_switch(sub_100013744, v3, v2);
}

uint64_t sub_100013744()
{
  v1 = *(v0 + 104);

  sub_100007FB8(v1, v1[3]);
  sub_10001F93C();
  if (*(v0 + 56))
  {
    sub_100007FFC(v0 + 16);
  }

  else
  {
    v2 = *(v0 + 104);
    sub_100008050((v0 + 16), v0 + 64);
    v3 = v2[20];
    sub_100007FB8(v2 + 16, v2[19]);
    sub_100007FB8((v0 + 64), *(v0 + 88));
    v4 = sub_10001F8DC();
    (*(v3 + 8))(v4);

    sub_100007F6C((v0 + 64));
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100013868()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100007384;

  return sub_1000136AC();
}

uint64_t sub_1000138F8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_10001394C()
{
  v0 = sub_10001FABC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  sub_10001FBAC();
  v4 = (*(v1 + 88))(v3, v0);
  if (v4 == enum case for MResourceType.audiobooks(_:))
  {
    return 0x6F6F626F69647561;
  }

  if (v4 == enum case for MResourceType.audiobookSeries(_:) || v4 == enum case for MResourceType.authors(_:))
  {
    return 0;
  }

  if (v4 != enum case for MResourceType.books(_:))
  {
    if (v4 != enum case for MResourceType.bookSeries(_:) && v4 != enum case for MResourceType.genres(_:))
    {
      (*(v1 + 8))(v3, v0);
    }

    return 0;
  }

  if (sub_10001FB5C())
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_100013B1C()
{
  v1 = sub_10001F53C();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v20[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v20[-v6];
  v8 = sub_10001FE0C();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v20[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v14 = &v20[-v13];
  v15 = [*(v0 + 24) editionKind];
  if (v15)
  {
    v16 = v15;
    v17 = sub_10001FE2C();
  }

  else
  {
    sub_10001FADC();
    sub_10001FDFC();
    sub_10001F52C();
    (*(v9 + 16))(v12, v14, v8);
    type metadata accessor for BundleFinder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    (*(v2 + 16))(v5, v7, v1);
    v17 = sub_10001FE4C();
    (*(v2 + 8))(v7, v1);
    (*(v9 + 8))(v14, v8);
  }

  return v17;
}

uint64_t sub_100013E90()
{
  v18 = sub_10001FD2C();
  v0 = *(v18 - 8);
  v1 = __chkstk_darwin(v18);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v5 = &v17 - v4;
  v6 = dispatch_semaphore_create(0);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  v8 = objc_opt_self();
  v9 = sub_10001FE1C();
  v10 = swift_allocObject();
  *(v10 + 16) = v7;
  *(v10 + 24) = v6;
  aBlock[4] = sub_100015754;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000138F8;
  aBlock[3] = &unk_100031C20;
  v11 = _Block_copy(aBlock);

  v12 = v6;

  [v8 fetchIsAssetID:v9 inFinishedCollectionWithCompletion:v11];
  _Block_release(v11);

  sub_10001FD1C();
  sub_10001FD3C();
  v13 = *(v0 + 8);
  v14 = v18;
  v13(v3, v18);
  sub_10001FFCC();

  v13(v5, v14);
  swift_beginAccess();
  v15 = *(v7 + 16);

  return v15;
}

uint64_t sub_1000140F4()
{
  v0 = sub_10001F53C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_10001FB4C();
  if (v5)
  {
    sub_10001F52C();
    v6.super.isa = sub_10001F51C().super.isa;
    (*(v1 + 8))(v3, v0);
    v7 = sub_10001FE1C();

    v8 = [(objc_class *)v6.super.isa displayNameForKey:NSLocaleLanguageCode value:v7];

    if (v8)
    {
      v9 = sub_10001FE2C();

      return v9;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_100014264@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v23 = sub_10001F55C();
  v2 = *(v23 - 8);
  __chkstk_darwin(v23);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10001F57C();
  v5 = *(v22 - 8);
  __chkstk_darwin(v22);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10001F50C();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v22 - v13;
  v15 = [*(v1 + 24) releaseDate];
  if (v15)
  {
    v16 = v15;
    sub_10001F4FC();

    (*(v9 + 32))(v14, v12, v8);
    sub_10001F54C();
    v17 = v23;
    (*(v2 + 104))(v4, enum case for Calendar.Component.year(_:), v23);
    v18 = sub_10001F56C();
    (*(v2 + 8))(v4, v17);
    (*(v5 + 8))(v7, v22);
    v25 = v18;
    sub_10002012C();
    (*(v9 + 8))(v14, v8);
  }

  sub_10001FB0C();
  v19 = v24;
  sub_10001F95C();
  v20 = sub_10001F96C();
  return (*(*(v20 - 8) + 56))(v19, 0, 1, v20);
}

uint64_t sub_1000145A0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100007778(&unk_100038630, &unk_1000285B0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v25 - v8;
  __chkstk_darwin(v7);
  v11 = &v25 - v10;
  v12 = *(v1 + 24);
  if (sub_10001FADC())
  {
    v13 = [v12 bookSampleDownloadURL];
    if (v13)
    {
      v14 = v13;
      sub_10001F4DC();

      v15 = sub_10001F4EC();
      (*(*(v15 - 8) + 56))(v9, 0, 1, v15);
    }

    else
    {
      v19 = sub_10001F4EC();
      (*(*(v19 - 8) + 56))(v9, 1, 1, v19);
    }
  }

  else
  {
    v16 = [v12 previewURL];
    if (v16)
    {
      v17 = v16;
      sub_10001F4DC();

      v18 = sub_10001F4EC();
      (*(*(v18 - 8) + 56))(v6, 0, 1, v18);
    }

    else
    {
      v20 = sub_10001F4EC();
      (*(*(v20 - 8) + 56))(v6, 1, 1, v20);
    }

    v9 = v6;
  }

  sub_10000F0E8(v9, v11);
  v21 = sub_10001F4EC();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v11, 1, v21) == 1)
  {
    sub_10001569C(v11);
    v23 = 1;
  }

  else
  {
    (*(v22 + 32))(a1, v11, v21);
    v23 = 0;
  }

  return (*(v22 + 56))(a1, v23, 1, v21);
}

uint64_t sub_100014868()
{
  result = sub_10001FB1C();
  if (result)
  {
    if (*(result + 16))
    {
      v1 = *(result + 32);

      strcpy(v4, "versionString");
      HIWORD(v4[1]) = -4864;
      sub_10002005C();
      if (*(v1 + 16) && (v2 = sub_10001BBE4(v5), (v3 & 1) != 0))
      {
        sub_10000CD9C(*(v1 + 56) + 32 * v2, v6);
        sub_100015648(v5);

        if (swift_dynamicCast())
        {
          return v4[0];
        }
      }

      else
      {

        sub_100015648(v5);
      }
    }

    else
    {
    }

    return 0;
  }

  return result;
}

uint64_t sub_10001497C()
{
  swift_unknownObjectRelease();

  sub_100007F6C((v0 + 32));

  return v0;
}

uint64_t sub_1000149D4()
{
  sub_10001497C();

  return _swift_deallocClassInstance(v0, 144, 7);
}

uint64_t sub_100014A2C()
{
  v1 = *(*v0 + 72);

  return v1;
}

uint64_t sub_100014A60(uint64_t a1)
{
  if (sub_10001FADC())
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

uint64_t sub_100014AE0()
{
  v2 = sub_10001F77C();
  v1[2] = v2;
  v1[3] = *(v2 - 8);
  v3 = swift_task_alloc();
  v4 = *v0;
  v1[4] = v3;
  v1[5] = v4;

  return _swift_task_switch(sub_100014BA0, 0, 0);
}

uint64_t sub_100014BA0()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v2[7];
  v6 = v2[8];
  sub_100007FB8(v2 + 4, v5);
  v7 = v2[3];
  (*(v4 + 104))(v1, enum case for MenuCoverImageSource.network(_:), v3);
  v8 = kAEAssetActivityItemProviderDefaultCoverSize[0];
  v9 = kAEAssetActivityItemProviderDefaultCoverSize[1];
  v10 = swift_task_alloc();
  v0[6] = v10;
  *v10 = v0;
  v10[1] = sub_100014CC0;
  v11 = v0[4];
  v12.n128_u64[0] = v8;
  v13.n128_u64[0] = v9;

  return dispatch thunk of MenuCoverImageProviding.image(for:from:size:includeSpine:)(v7, v11, 1, v5, v6, v12, v13);
}

uint64_t sub_100014CC0(uint64_t a1)
{
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v8 = *v1;

  (*(v4 + 8))(v3, v5);

  v6 = *(v8 + 8);

  return v6(a1);
}

void *sub_100014E20()
{
  v1 = *(*v0 + 88);
  v2 = v1;
  return v1;
}

uint64_t sub_100014E70()
{
  v1 = *(*v0 + 96);

  return v1;
}

BOOL sub_100014EC4()
{
  v1 = *(*v0 + 16);
  sub_10001FB9C();
  v2 = sub_10001FE1C();

  v3 = [v1 itemStateWithIdentifier:v2];

  v4 = [v3 download];
  swift_unknownObjectRelease();
  return v4 == 1;
}

id sub_100014F78()
{
  v1 = *(*v0 + 16);
  sub_10001FB9C();
  v2 = sub_10001FE1C();

  v3 = [v1 itemStateWithIdentifier:v2];

  v4 = [v3 wantToRead];
  swift_unknownObjectRelease();
  return v4;
}

BOOL sub_100015000()
{
  v1 = *(*v0 + 16);
  sub_10001FB9C();
  v2 = sub_10001FE1C();

  v3 = [v1 itemStateWithIdentifier:v2];

  v4 = [v3 download];
  swift_unknownObjectRelease();
  return v4 == 2;
}

BOOL sub_1000150BC()
{
  v1 = *(*v0 + 16);
  sub_10001FB9C();
  v2 = sub_10001FE1C();

  v3 = [v1 itemStateWithIdentifier:v2];

  v4 = [v3 library];
  swift_unknownObjectRelease();
  return v4 == 4;
}

uint64_t sub_100015174()
{
  v1 = [*(*v0 + 24) offer];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_10001FDEC();

  return v3;
}

uint64_t sub_100015210()
{
  v1 = *(*v0 + 128);

  return v1;
}

uint64_t sub_100015298(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [*(*v3 + 24) *a3];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = sub_10001FE2C();

  return v6;
}

void (*sub_10001530C(uint64_t *a1))(uint64_t a1)
{
  v2 = sub_10001F4EC();
  v3 = *(v2 - 8);
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(*(v2 - 8) + 64));
  }

  v5 = v4;
  a1[2] = v4;
  sub_10001FB2C();
  v6 = sub_10001F4BC();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  *a1 = v6;
  a1[1] = v8;
  return sub_100015408;
}

void sub_100015408(uint64_t a1)
{
  v1 = *(a1 + 16);

  free(v1);
}

uint64_t sub_100015440()
{
  v0 = sub_10001F4EC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001FB2C();
  v4 = sub_10001F4BC();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_10001569C(uint64_t a1)
{
  v2 = sub_100007778(&unk_100038630, &unk_1000285B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100015714()
{

  return _swift_deallocObject(v0, 32, 7);
}

Swift::Int sub_100015754(char a1)
{
  v3 = *(v1 + 16);
  swift_beginAccess();
  *(v3 + 16) = a1;
  return sub_10001FFDC();
}

uint64_t sub_1000157A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000157C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_100015808(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void sub_100015870(uint64_t a1, char a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    [Strong presentViewController:a1 animated:a2 & 1 completion:0];
  }
}

unint64_t *sub_1000158F0(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1000200EC();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = &_swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v16 = &_swiftEmptyArrayStorage;
  result = sub_10001CB10(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v16;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = sub_10002008C();
        v16 = v3;
        v8 = v3[2];
        v7 = v3[3];
        if (v8 >= v7 >> 1)
        {
          sub_10001CB10((v7 > 1), v8 + 1, 1);
          v3 = v16;
        }

        ++v5;
        v14 = type metadata accessor for PPXContextAssetInfo();
        v15 = sub_10001EFE4(&qword_100038680, type metadata accessor for PPXContextAssetInfo, &unk_100028D90);
        *&v13 = v6;
        v3[2] = v8 + 1;
        sub_100008050(&v13, &v3[5 * v8 + 4]);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v16 = v3;
        v11 = v3[2];
        v12 = v3[3];

        if (v11 >= v12 >> 1)
        {
          sub_10001CB10((v12 > 1), v11 + 1, 1);
          v3 = v16;
        }

        v14 = type metadata accessor for PPXContextAssetInfo();
        v15 = sub_10001EFE4(&qword_100038680, type metadata accessor for PPXContextAssetInfo, &unk_100028D90);
        *&v13 = v10;
        v3[2] = v11 + 1;
        sub_100008050(&v13, &v3[5 * v11 + 4]);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_100015B10()
{
  v0 = sub_10001FBEC();
  sub_10001EE38(v0, qword_100038640);
  sub_10001E640(v0, qword_100038640);
  return sub_10001FBDC();
}

void *sub_100015BAC(void (**a1)(char *, void, uint64_t), void (**a2)(char *, uint64_t))
{
  v153 = a2;
  v154 = a1;
  v156 = sub_10001F74C();
  v150 = *(v156 - 8);
  v2 = __chkstk_darwin(v156);
  v146 = &v138 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v152 = &v138 - v4;
  v5 = sub_10001F82C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v138 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100007778(&qword_100038658, &qword_100028FB8);
  __chkstk_darwin(v9 - 8);
  v157 = &v138 - v10;
  i = type metadata accessor for PPXContextActionData(0);
  v155 = *(i - 8);
  v12 = __chkstk_darwin(i);
  isUniquelyReferenced_nonNull_native = &v138 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v143 = &v138 - v15;
  v16 = BSUIGetLibraryItemStateProvider();
  v161 = v5;
  v162 = &protocol witness table for MenuCoverImageProvider;
  v17 = sub_10000F2CC(&v160);
  sub_10001F81C();
  v18 = sub_1000158F0(&_swiftEmptyArrayStorage);
  *isUniquelyReferenced_nonNull_native = v18;
  v19 = *(i + 20);
  v20 = enum case for ContextActionSource.unknown(_:);
  v21 = sub_10001F75C();
  (*(*(v21 - 8) + 104))(isUniquelyReferenced_nonNull_native + v19, v20, v21);
  v22 = isUniquelyReferenced_nonNull_native + *(i + 24);
  *v22 = 0;
  *(v22 + 8) = 0;
  *(v22 + 16) = 1;
  *(isUniquelyReferenced_nonNull_native + *(i + 28)) = 0;
  v23 = v154;
  *(isUniquelyReferenced_nonNull_native + *(i + 32)) = v154;
  *(isUniquelyReferenced_nonNull_native + *(i + 36)) = v16;
  sub_100007F08(&v160, isUniquelyReferenced_nonNull_native + *(i + 40));
  v151 = type metadata accessor for PPXContextAssetInfo();
  v24 = swift_allocObject();
  (*(v6 + 16))(v8, v17, v5);
  v25 = v23;
  swift_unknownObjectRetain();
  v26 = sub_10001DC54(v25, v16, v8, v24);
  if (v26)
  {
    v27 = v26;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_3;
    }

    goto LABEL_130;
  }

  sub_100007F6C(&v160);
  sub_10001E5E4(isUniquelyReferenced_nonNull_native);
  v32 = 1;
  v31 = v157;
  v28 = v155;
LABEL_7:
  (*(v28 + 56))(v31, v32, 1, i);
  if ((*(v28 + 48))(v31, 1, i) == 1)
  {
    sub_10000F1FC(v31, &qword_100038658, &qword_100028FB8);
    if (qword_100037640 != -1)
    {
      swift_once();
    }

    v33 = sub_10001FBEC();
    sub_10001E640(v33, qword_100038640);
    v34 = sub_10001FBCC();
    v35 = sub_10001FF6C();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "Unable to instantiate PPXContextActionData", v36, 2u);
    }

    return &_swiftEmptyArrayStorage;
  }

  v38 = v143;
  sub_10001E678(v31, v143);
  v39 = v142;
  v40 = *&v142[OBJC_IVAR____TtC25BooksProductPageExtension22PPXContextMenuProvider_objectGraph];
  v41 = v153;
  swift_unknownObjectWeakInit();
  v168 = v25;
  v169 = v40;
  v42 = v25;

  v43 = __chkstk_darwin([v41 ba_analyticsTracker]);
  *(&v138 - 4) = v38;
  *(&v138 - 3) = v167;
  v140 = v43;
  v136 = v43;
  v137._rawValue = v39;
  v45 = sub_100017838(sub_10001EEF0, (&v138 - 6), v44);
  v155 = 0;
  sub_10001EFE4(&qword_100038718, type metadata accessor for PPXContextActionData, &unk_100028748);
  sub_10001F93C();
  if (v163 == 1)
  {
    sub_100007FFC(&v160);
  }

  else
  {
    sub_100008050(&v160, &v164);
    sub_100007FB8(&v164, v165);
    if (sub_10001F87C())
    {
      v46 = [objc_msgSend(objc_opt_self() "sharedInstance")];
      swift_unknownObjectRelease();
      if ((v46 & 1) == 0)
      {

        sub_100007F6C(&v164);
        sub_10001EF2C(v167);
        sub_10001E5E4(v143);
        return &_swiftEmptyArrayStorage;
      }
    }

    sub_100007F6C(&v164);
  }

  *&v164 = &_swiftEmptyArrayStorage;
  v159 = &_swiftEmptyDictionarySingleton;
  v47 = v45[2];
  if (v47)
  {
    v157 = v45;
    v27 = (v45 + 4);
    isUniquelyReferenced_nonNull_native = &_swiftEmptyDictionarySingleton;
    v144 = &_swiftEmptyArrayStorage;
    while (2)
    {
      sub_100007F08(v27, &v160);
      sub_100007FB8(&v160, v161);
      v50 = sub_10001F66C();
      sub_100007F6C(&v160);
      if (!v50)
      {
        goto LABEL_23;
      }

      v25 = v50;
      sub_10001FEBC();
      if (*((v164 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v164 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_10001FEEC();
      }

      sub_10001FEFC();
      v144 = v164;
      v51 = [v25 identifier];
      v52 = sub_10001FE2C();
      v54 = v53;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      i = v159;
      v158 = v159;
      v18 = sub_10001BB6C(v52, v54);
      v56 = *(i + 16);
      v57 = (v55 & 1) == 0;
      v58 = v56 + v57;
      if (__OFADD__(v56, v57))
      {
        goto LABEL_128;
      }

      v59 = v55;
      if (*(i + 24) >= v58)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          isUniquelyReferenced_nonNull_native = v158;
          if ((v55 & 1) == 0)
          {
            goto LABEL_34;
          }
        }

        else
        {
          i = &v158;
          sub_10001D1BC();
          isUniquelyReferenced_nonNull_native = v158;
          if ((v59 & 1) == 0)
          {
            goto LABEL_34;
          }
        }
      }

      else
      {
        sub_10001C300(v58, isUniquelyReferenced_nonNull_native);
        i = v158;
        v60 = sub_10001BB6C(v52, v54);
        if ((v59 & 1) != (v61 & 1))
        {
LABEL_133:
          sub_10002016C();
          __break(1u);
LABEL_134:
          result = swift_unexpectedError();
          __break(1u);
          return result;
        }

        v18 = v60;
        isUniquelyReferenced_nonNull_native = v158;
        if ((v59 & 1) == 0)
        {
LABEL_34:
          *(isUniquelyReferenced_nonNull_native + 8 * (v18 >> 6) + 64) |= 1 << v18;
          v62 = (*(isUniquelyReferenced_nonNull_native + 48) + 16 * v18);
          *v62 = v52;
          v62[1] = v54;
          *(*(isUniquelyReferenced_nonNull_native + 56) + 8 * v18) = v25;
          v63 = *(isUniquelyReferenced_nonNull_native + 16);
          v64 = __OFADD__(v63, 1);
          v65 = v63 + 1;
          if (v64)
          {
            goto LABEL_129;
          }

          *(isUniquelyReferenced_nonNull_native + 16) = v65;
LABEL_22:
          v159 = isUniquelyReferenced_nonNull_native;
LABEL_23:
          v27 += 40;
          if (!--v47)
          {

            goto LABEL_40;
          }

          continue;
        }
      }

      break;
    }

    v48 = *(isUniquelyReferenced_nonNull_native + 56);
    v49 = *(v48 + 8 * v18);
    *(v48 + 8 * v18) = v25;

    goto LABEL_22;
  }

  isUniquelyReferenced_nonNull_native = &_swiftEmptyDictionarySingleton;
  v144 = &_swiftEmptyArrayStorage;
LABEL_40:
  v66 = sub_1000183A0();
  v157 = sub_10001DE88(v66, v67, v153);

  v68 = 1 << *(isUniquelyReferenced_nonNull_native + 32);
  v69 = -1;
  if (v68 < 64)
  {
    v69 = ~(-1 << v68);
  }

  v70 = v69 & *(isUniquelyReferenced_nonNull_native + 64);
  v25 = ((v68 + 63) >> 6);

  v27 = 0;
  for (i = &_swiftEmptyArrayStorage; v70; *(v76 + 40) = v73)
  {
LABEL_47:
    v72 = (*(isUniquelyReferenced_nonNull_native + 48) + ((v27 << 10) | (16 * __clz(__rbit64(v70)))));
    v74 = *v72;
    v73 = v72[1];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      i = sub_10001B728(0, *(i + 16) + 1, 1, i);
    }

    v18 = *(i + 16);
    v75 = *(i + 24);
    if (v18 >= v75 >> 1)
    {
      i = sub_10001B728((v75 > 1), v18 + 1, 1, i);
    }

    v70 &= v70 - 1;
    *(i + 16) = v18 + 1;
    v76 = i + 16 * v18;
    *(v76 + 32) = v74;
  }

  while (1)
  {
    v71 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
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
LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
LABEL_129:
      __break(1u);
LABEL_130:
      v18 = sub_10001B834(0, *(v18 + 16) + 1, 1, v18, &qword_100038728, &qword_1000290C8, &qword_100038090, &qword_1000290D0);
LABEL_3:
      v28 = v155;
      v30 = *(v18 + 16);
      v29 = *(v18 + 24);
      if (v30 >= v29 >> 1)
      {
        v18 = sub_10001B834((v29 > 1), v30 + 1, 1, v18, &qword_100038728, &qword_1000290C8, &qword_100038090, &qword_1000290D0);
      }

      sub_100007F6C(&v160);
      v165 = v151;
      v166 = sub_10001EFE4(&qword_100038680, type metadata accessor for PPXContextAssetInfo, &unk_100028D90);
      *&v164 = v27;
      *(v18 + 16) = v30 + 1;
      sub_100008050(&v164, v18 + 40 * v30 + 32);
      *isUniquelyReferenced_nonNull_native = v18;
      v31 = v157;
      sub_10001E678(isUniquelyReferenced_nonNull_native, v157);
      v32 = 0;
      goto LABEL_7;
    }

    if (v71 >= v25)
    {
      break;
    }

    v70 = *(isUniquelyReferenced_nonNull_native + 64 + 8 * v71);
    ++v27;
    if (v70)
    {
      v27 = v71;
      goto LABEL_47;
    }
  }

  v77 = sub_10001F6FC();

  i = &v138;
  __chkstk_darwin(v78);
  v136 = v143;
  v137._rawValue = &v159;
  v79 = v155;
  v80 = sub_1000179DC(sub_10001EF10, (&v138 - 4), v77);
  v145 = v80;

  v81 = sub_100018864(v80);
  v82 = v81;
  v139 = v79;
  v149 = v81 & 0xFFFFFFFFFFFFFF8;
  if (v81 >> 62)
  {
    v151 = sub_1000200EC();
  }

  else
  {
    v151 = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v83 = v150;
  v84 = 0;
  v25 = 0;
  v150 = v82 & 0xC000000000000001;
  LODWORD(v155) = enum case for ContextActionType.sharedWithYou(_:);
  v154 = (v83 + 104);
  v153 = (v83 + 8);
  v85 = v157 & 0xFFFFFFFFFFFFFF8;
  v147 = v157 & 0xFFFFFFFFFFFFFF8;
  if ((v157 & 0x8000000000000000) != 0)
  {
    v85 = v157;
  }

  v138 = v85;
  v148 = v157 >> 62;
  v141 = &_swiftEmptyArrayStorage;
  while (v151 != v84)
  {
    if (v150)
    {
      v86 = sub_10002008C();
    }

    else
    {
      if (v84 >= *(v149 + 16))
      {
        goto LABEL_123;
      }

      v86 = *(v82 + 8 * v84 + 32);
    }

    v87 = v86;
    isUniquelyReferenced_nonNull_native = v84 + 1;
    if (__OFADD__(v84, 1))
    {
      goto LABEL_122;
    }

    v88 = [v86 identifier];
    v18 = sub_10001FE2C();
    v90 = v89;

    v91 = v152;
    v92 = v156;
    (*v154)(v152, v155, v156);
    v27 = sub_10001F73C();
    (*v153)(v91, v92);
    v93 = sub_10001FE2C();
    i = v94;

    if (v18 == v93 && v90 == i)
    {

      if (!v157)
      {
        goto LABEL_76;
      }

LABEL_69:
      if (v148)
      {
        v97 = sub_1000200EC();
      }

      else
      {
        v97 = *(v147 + 16);
      }

      v98 = v97 - 1;
      if (__OFSUB__(v97, 1))
      {
        goto LABEL_124;
      }

      ++v84;
      v64 = __OFADD__(v25, v98);
      v25 += v98;
      if (v64)
      {
        goto LABEL_125;
      }
    }

    else
    {
      v96 = sub_10002014C();

      if ((v96 & 1) != 0 && v157)
      {
        goto LABEL_69;
      }

LABEL_76:
      v99 = [v87 identifier];
      i = sub_10001FE2C();
      v101 = v100;

      v102 = &v25[v84];
      if (__OFADD__(v84, v25))
      {
        __break(1u);
        goto LABEL_133;
      }

      v103 = v141;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v103 = sub_10001B498(0, v103[2] + 1, 1, v103);
      }

      v27 = v103[2];
      v104 = v103[3];
      if (v27 >= v104 >> 1)
      {
        v103 = sub_10001B498((v104 > 1), v27 + 1, 1, v103);
      }

      v103[2] = v27 + 1;
      v141 = v103;
      v105 = &v103[3 * v27];
      v105[4] = i;
      v105[5] = v101;
      v105[6] = v102;
      v84 = isUniquelyReferenced_nonNull_native;
    }
  }

  if (v141[2])
  {
    sub_100007778(&qword_100038670, &qword_100028FC0);
    v106 = sub_10002011C();
  }

  else
  {
    v106 = &_swiftEmptyDictionarySingleton;
  }

  v27 = v145;
  v107 = v139;
  *&v160 = v106;

  sub_10001CCD8(v108, 1, &v160);
  if (v107)
  {
    goto LABEL_134;
  }

  v109 = &v142[OBJC_IVAR____TtC25BooksProductPageExtension22PPXContextMenuProvider_figaroProvider];
  swift_beginAccess();
  i = sub_10001E6FC(v109, *(v109 + 24));
  sub_10001F60C();
  swift_endAccess();
  *&v160 = &_swiftEmptyArrayStorage;
  v110 = *(v27 + 16);
  if (v110)
  {
    v111 = 0;
    v149 = v27 + 48;
    v37 = &_swiftEmptyArrayStorage;
    v150 = v110;
    v147 = v110 - 1;
LABEL_90:
    v148 = v37;
    isUniquelyReferenced_nonNull_native = v149 + 24 * v111;
    v25 = v111;
    while (1)
    {
      if (v25 >= *(v27 + 16))
      {
        goto LABEL_126;
      }

      v113 = *(isUniquelyReferenced_nonNull_native - 16);
      v112 = *(isUniquelyReferenced_nonNull_native - 8);
      v114 = *isUniquelyReferenced_nonNull_native;
      v115 = *isUniquelyReferenced_nonNull_native >> 62;
      if (v115)
      {
        if (!sub_1000200EC())
        {
LABEL_107:

          if (!v115)
          {
            goto LABEL_108;
          }

LABEL_111:
          sub_10000F0A0(0, &qword_100038740, UIMenuElement_ptr);

          v127 = sub_1000200DC();

LABEL_112:
          sub_10000F0A0(0, &qword_1000386E0, UIMenu_ptr);
          v173._countAndFlagsBits = v113;
          v173._object = v112;
          v175.value._countAndFlagsBits = 0;
          v175.value._object = 0;
          v171.value.super.isa = 0;
          v171.is_nil = 0;
          v134.value = 1;
          sub_10001FFEC(v173, v175, v171, v134, 0xFFFFFFFFFFFFFFFFLL, v127, v137);

LABEL_113:
          i = &v160;
          sub_10001FEBC();
          if (*((v160 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v160 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_10001FEEC();
          }

          v111 = v25 + 1;
          sub_10001FEFC();
          v37 = v160;
          if (v147 != v25)
          {
            goto LABEL_90;
          }

          goto LABEL_118;
        }
      }

      else if (!*((*isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_107;
      }

      v152 = v112;
      v151 = v113;
      if ((v114 & 0xC000000000000001) != 0)
      {

        v117 = sub_10002008C();
      }

      else
      {
        if (!*((v114 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_127;
        }

        v116 = *(v114 + 32);

        v117 = v116;
      }

      v118 = v117;
      v119 = [v117 identifier];
      v120 = sub_10001FE2C();
      v122 = v121;

      v123 = v146;
      v124 = v156;
      (*v154)(v146, v155, v156);
      v18 = sub_10001F73C();
      (*v153)(v123, v124);
      i = sub_10001FE2C();
      v126 = v125;

      if (v120 == i && v122 == v126)
      {
      }

      else
      {
        i = sub_10002014C();

        if ((i & 1) == 0)
        {

          v27 = v145;
          v112 = v152;
          v113 = v151;
          if (v115)
          {
            goto LABEL_111;
          }

LABEL_108:

          sub_10002015C();
          sub_10000F0A0(0, &qword_100038740, UIMenuElement_ptr);
          v127 = v114;
          goto LABEL_112;
        }
      }

      if (v157)
      {
        sub_10000F0A0(0, &qword_1000386E0, UIMenu_ptr);
        v128 = v157;

        v129 = [v118 title];
        v130 = sub_10001FE2C();
        v132 = v131;

        v170.value.super.isa = [v118 image];
        v172._countAndFlagsBits = v130;
        v172._object = v132;
        v174.value._countAndFlagsBits = 0;
        v174.value._object = 0;
        v170.is_nil = 0;
        v133.value = 0;
        sub_10001FFEC(v172, v174, v170, v133, 0xFFFFFFFFFFFFFFFFLL, v128, v137);

        v27 = v145;
        goto LABEL_113;
      }

      ++v25;

      isUniquelyReferenced_nonNull_native += 24;
      v27 = v145;
      if (v150 == v25)
      {
        v37 = v148;
        goto LABEL_118;
      }
    }
  }

  v37 = &_swiftEmptyArrayStorage;
LABEL_118:

  sub_10001EF2C(v167);
  sub_10001E5E4(v143);
  return v37;
}

void *sub_100017190(void *a1, uint64_t a2)
{
  v42 = a2;
  v44 = a1;
  v2 = sub_10001F82C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100007778(&qword_100038658, &qword_100028FB8);
  __chkstk_darwin(v6 - 8);
  v46 = &v42 - v7;
  v8 = type metadata accessor for PPXContextActionData(0);
  v45 = *(v8 - 1);
  v9 = __chkstk_darwin(v8);
  v11 = (&v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v47 = &v42 - v12;
  v13 = BSUIGetLibraryItemStateProvider();
  v49 = v2;
  v50 = &protocol witness table for MenuCoverImageProvider;
  v14 = sub_10000F2CC(&v48);
  sub_10001F81C();
  v15 = sub_1000158F0(&_swiftEmptyArrayStorage);
  *v11 = v15;
  v16 = v8[5];
  v17 = enum case for ContextActionSource.unknown(_:);
  v18 = sub_10001F75C();
  (*(*(v18 - 8) + 104))(v11 + v16, v17, v18);
  v19 = v11 + v8[6];
  *v19 = 0;
  *(v19 + 1) = 0;
  v19[16] = 1;
  *(v11 + v8[7]) = 0;
  v20 = v44;
  *(v11 + v8[8]) = v44;
  *(v11 + v8[9]) = v13;
  sub_100007F08(&v48, v11 + v8[10]);
  v43 = type metadata accessor for PPXContextAssetInfo();
  v21 = swift_allocObject();
  (*(v3 + 16))(v5, v14, v2);
  v22 = v20;
  swift_unknownObjectRetain();
  v23 = sub_10001DC54(v22, v13, v5, v21);
  if (v23)
  {
    v24 = v23;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_10001B834(0, v15[2] + 1, 1, v15, &qword_100038728, &qword_1000290C8, &qword_100038090, &qword_1000290D0);
    }

    v26 = v15[2];
    v25 = v15[3];
    if (v26 >= v25 >> 1)
    {
      v15 = sub_10001B834((v25 > 1), v26 + 1, 1, v15, &qword_100038728, &qword_1000290C8, &qword_100038090, &qword_1000290D0);
    }

    sub_100007F6C(&v48);
    v53 = v43;
    v54 = sub_10001EFE4(&qword_100038680, type metadata accessor for PPXContextAssetInfo, &unk_100028D90);
    *&v52 = v24;
    v15[2] = v26 + 1;
    sub_100008050(&v52, &v15[5 * v26 + 4]);
    *v11 = v15;
    v27 = v46;
    sub_10001E678(v11, v46);
    v28 = 0;
  }

  else
  {
    sub_100007F6C(&v48);
    sub_10001E5E4(v11);
    v28 = 1;
    v27 = v46;
  }

  v29 = v45;
  (*(v45 + 56))(v27, v28, 1, v8);
  if ((*(v29 + 48))(v27, 1, v8) == 1)
  {
    sub_10000F1FC(v27, &qword_100038658, &qword_100028FB8);
    if (qword_100037640 != -1)
    {
      swift_once();
    }

    v30 = sub_10001FBEC();
    sub_10001E640(v30, qword_100038640);
    v31 = sub_10001FBCC();
    v32 = sub_10001FF6C();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "Unable to instantiate ContextActionData", v33, 2u);
    }

    return &_swiftEmptyArrayStorage;
  }

  sub_10001E678(v27, v47);
  sub_10001EFE4(&qword_100038718, type metadata accessor for PPXContextActionData, &unk_100028748);
  sub_10001F93C();
  if (v51 == 1)
  {
    v35 = sub_100007FFC(&v48);
  }

  else
  {
    sub_100008050(&v48, &v52);
    sub_100007FB8(&v52, v53);
    if (sub_10001F87C())
    {
      v36 = [objc_msgSend(objc_opt_self() "sharedInstance")];
      swift_unknownObjectRelease();
      if ((v36 & 1) == 0)
      {
        sub_100007F6C(&v52);
        sub_10001E5E4(v47);
        return &_swiftEmptyArrayStorage;
      }
    }

    v35 = sub_100007F6C(&v52);
  }

  __chkstk_darwin(v35);
  v37 = v47;
  v38 = v42;
  *(&v42 - 4) = v47;
  *(&v42 - 3) = v38;
  *(&v42 - 2) = v22;
  *(&v42 - 1) = v39;
  v41 = sub_100017838(sub_10001ECC4, (&v42 - 6), v40);
  sub_10001E5E4(v37);
  return v41;
}

void *sub_100017838(void (*a1)(__int128 *__return_ptr, __int128 *, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = &_swiftEmptyArrayStorage;
  for (i = (a3 + 32); ; ++i)
  {
    v14 = *i;
    a1(&v11, &v14, a2);
    if (v3)
    {
      break;
    }

    if (v12)
    {
      sub_100008050(&v11, v13);
      sub_100008050(v13, &v11);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_10001B834(0, v6[2] + 1, 1, v6, &qword_100038700, &qword_1000290A8, &qword_100038690, &qword_100028FD8);
      }

      v9 = v6[2];
      v8 = v6[3];
      if (v9 >= v8 >> 1)
      {
        v6 = sub_10001B834((v8 > 1), v9 + 1, 1, v6, &qword_100038700, &qword_1000290A8, &qword_100038690, &qword_100028FD8);
      }

      v6[2] = v9 + 1;
      sub_100008050(&v11, &v6[5 * v9 + 4]);
    }

    else
    {
      sub_10000F1FC(&v11, &qword_100038738, &qword_1000290E0);
    }

    if (!--v4)
    {
      return v6;
    }
  }

  return v6;
}

void *sub_1000179DC(void *(*a1)(uint64_t *__return_ptr, unint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return &_swiftEmptyArrayStorage;
  }

  v7 = 0;
  result = &_swiftEmptyArrayStorage;
  do
  {
    v27 = result;
    for (i = v7; ; ++i)
    {
      if (i >= v4)
      {
        __break(1u);
LABEL_19:
        __break(1u);
        return result;
      }

      v10 = sub_100007778(&qword_100038708, &qword_1000290B0);
      v12 = *(v10 - 8);
      result = (v10 - 8);
      v11 = v12;
      v7 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_19;
      }

      result = a1(&v25, a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * i);
      if (v3)
      {
        v22 = v27;

        return v22;
      }

      if (v26)
      {
        break;
      }

      if (v7 == v4)
      {
        return v27;
      }
    }

    v24 = v26;
    v23 = v25;
    v13 = v27;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_10001B5E0(0, v13[2] + 1, 1, v13);
    }

    v14 = v13;
    v15 = v13[2];
    v16 = v14;
    v17 = v14[3];
    v18 = (v15 + 1);
    v19 = v24;
    if (v15 >= v17 >> 1)
    {
      v27 = (v15 + 1);
      v21 = sub_10001B5E0((v17 > 1), v15 + 1, 1, v16);
      v19 = v24;
      v18 = v27;
      v16 = v21;
    }

    v16[2] = v18;
    v20 = &v16[3 * v15];
    result = v16;
    v20[4] = v23;
    *(v20 + 5) = v19;
  }

  while (v7 != v4);
  return result;
}

void *sub_100017BC4(uint64_t a1, uint64_t *a2)
{
  result = &_swiftEmptyArrayStorage;
  v4 = *(a1 + 16);
  if (!v4)
  {
    return result;
  }

  v6 = 0;
  do
  {
    for (i = v6; ; ++i)
    {
      if (i >= v4)
      {
        __break(1u);
LABEL_17:
        __break(1u);
        return result;
      }

      result = (sub_10001F74C() - 8);
      v6 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_17;
      }

      v8 = sub_10001F72C();
      v10 = *a2;
      if (*(*a2 + 16))
      {
        break;
      }

LABEL_5:
      if (v6 == v4)
      {
        return &_swiftEmptyArrayStorage;
      }
    }

    v11 = sub_10001BB6C(v8, v9);
    v13 = v12;

    if ((v13 & 1) == 0)
    {
      goto LABEL_5;
    }

    v14 = *(*(v10 + 56) + 8 * v11);
    sub_10001FEBC();
    if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_10001FEEC();
    }

    sub_10001FEFC();
    result = &_swiftEmptyArrayStorage;
  }

  while (v6 != v4);
  return result;
}

void *sub_100017D4C(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v33 = a2;
  v32 = sub_100007778(&qword_100038708, &qword_1000290B0);
  v5 = *(v32 - 8);
  __chkstk_darwin(v32);
  v7 = &v27 - v6;
  v8 = sub_100007778(&qword_100038688, &qword_100028FD0);
  v30 = *(v8 - 8);
  v31 = v8;
  v9 = __chkstk_darwin(v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v27 - v13;
  __chkstk_darwin(v12);
  v29 = &v27 - v15;
  v16 = *(a1 + 16);
  if (!v16)
  {
    return &_swiftEmptyArrayStorage;
  }

  v17 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v28 = *(v5 + 72);
  v18 = &_swiftEmptyArrayStorage;
  do
  {
    v19 = *(v31 + 48);
    sub_10000F25C(v17, v7, &qword_100038708, &qword_1000290B0);
    v20 = v32;

    v21 = sub_10001F71C();
    (*(*(v21 - 8) + 32))(v14, v7, v21);
    *&v14[v19] = sub_100018060(*(v17 + *(v20 + 48)), v33);
    v22 = v29;
    sub_10001E74C(v14, v29);
    sub_10001E74C(v22, v11);
    v23 = v3;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = sub_10001B97C(0, v18[2] + 1, 1, v18);
    }

    v25 = v18[2];
    v24 = v18[3];
    if (v25 >= v24 >> 1)
    {
      v18 = sub_10001B97C((v24 > 1), v25 + 1, 1, v18);
    }

    v18[2] = v25 + 1;
    sub_10001E74C(v11, v18 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v25);
    v17 += v28;
    --v16;
    v3 = v23;
  }

  while (v16);
  return v18;
}

void *sub_100018060(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  v5 = *(sub_10001F74C() - 8);
  v6 = &_swiftEmptyArrayStorage;
  v7 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v8 = *(v5 + 72);
  do
  {
    v9 = sub_10001F72C();
    v11 = *a2;
    if (*(*a2 + 16))
    {
      v12 = sub_10001BB6C(v9, v10);
      v14 = v13;

      if (v14)
      {
        sub_100007F08(*(v11 + 56) + 40 * v12, v18);
        sub_100008050(v18, v19);
        sub_100008050(v19, v18);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_10001B834(0, v6[2] + 1, 1, v6, &qword_100038700, &qword_1000290A8, &qword_100038690, &qword_100028FD8);
        }

        v16 = v6[2];
        v15 = v6[3];
        if (v16 >= v15 >> 1)
        {
          v6 = sub_10001B834((v15 > 1), v16 + 1, 1, v6, &qword_100038700, &qword_1000290A8, &qword_100038690, &qword_100028FD8);
        }

        v6[2] = v16 + 1;
        sub_100008050(v18, &v6[5 * v16 + 4]);
      }
    }

    else
    {
    }

    v7 += v8;
    --v2;
  }

  while (v2);
  return v6;
}

uint64_t sub_100018254@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v11 = *a1;
  v12 = a1[1];
  v21[3] = type metadata accessor for PPXContextActionData(0);
  v21[4] = sub_10001EFE4(&qword_100038718, type metadata accessor for PPXContextActionData, &unk_100028748);
  v13 = sub_10000F2CC(v21);
  sub_10001ECE4(a2, v13);
  v19 = &type metadata for PPXContextMenuPresentationContext;
  v20 = sub_10001ED48();
  v18 = swift_allocObject();
  sub_10001F02C(a3, v18 + 16);
  v14 = OBJC_IVAR____TtC25BooksProductPageExtension22PPXContextMenuProvider_figaroProvider;
  swift_beginAccess();
  sub_100007F08(a5 + v14, &v17);
  a6[3] = v11;
  a6[4] = v12;
  sub_10000F2CC(a6);
  v15 = a4;
  return sub_10001F63C();
}

uint64_t sub_1000183A0()
{
  type metadata accessor for PPXContextActionData(0);
  sub_10001EFE4(&qword_100038718, type metadata accessor for PPXContextActionData, &unk_100028748);
  sub_10001F93C();
  if (v6 == 1)
  {
    sub_100007FFC(v5);
    return 0;
  }

  else
  {
    sub_100008050(v5, v7);
    sub_100007FB8(v7, v8);
    v1 = sub_10001F8BC();
    if (v2)
    {
      v3 = v1;
    }

    else
    {
      sub_10001F9BC();
      v4 = sub_10001F9AC();
      sub_100007FB8(v7, v8);
      sub_10001F8DC();
      v3 = sub_10001F98C();
    }

    sub_100007F6C(v7);
    return v3;
  }
}

void *sub_1000184DC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t *a3@<X8>)
{
  v30 = a2;
  v6 = sub_10001F53C();
  __chkstk_darwin(v6 - 8);
  v27 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_10001FE0C();
  v26 = *(v28 - 8);
  v8 = __chkstk_darwin(v28);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v25 - v11;
  v13 = sub_10001F71C();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PPXContextActionData(0);
  v17 = sub_10001F79C();
  v29 = a1;
  if (v17)
  {
    v25 = v3;
    (*(v14 + 104))(v16, enum case for ContextActionType.ContextActionGroup.improveSuggestions(_:), v13);
    sub_10001EFE4(&qword_100038778, &type metadata accessor for ContextActionType.ContextActionGroup, &protocol conformance descriptor for ContextActionType.ContextActionGroup);
    sub_10001FEAC();
    sub_10001FEAC();
    (*(v14 + 8))(v16, v13);
    if (v32 == v31)
    {
      sub_10001FDFC();
      v18 = v26;
      v19 = v28;
      (*(v26 + 16))(v10, v12, v28);
      sub_10001F52C();
      v20 = sub_10001FE3C();
      v22 = v21;
      (*(v18 + 8))(v12, v19);
    }

    else
    {
      v20 = 0;
      v22 = 0xE000000000000000;
    }
  }

  else
  {
    v20 = 0;
    v22 = 0xE000000000000000;
  }

  v23 = sub_100007778(&qword_100038708, &qword_1000290B0);
  result = sub_100017BC4(*(v29 + *(v23 + 48)), v30);
  *a3 = v20;
  a3[1] = v22;
  a3[2] = result;
  return result;
}

uint64_t sub_100018864(uint64_t a1)
{
  v28 = *(a1 + 16);
  if (!v28)
  {
    return &_swiftEmptyArrayStorage;
  }

  v1 = 0;
  v27 = a1 + 32;
  v2 = &_swiftEmptyArrayStorage;
  v3 = &qword_100038758;
  while (1)
  {
    v5 = *(v27 + 24 * v1 + 16);
    v6 = v5 >> 62;
    if (v5 >> 62)
    {
      v7 = sub_1000200EC();
    }

    else
    {
      v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v8 = v2 >> 62;
    if (v2 >> 62)
    {
      v25 = sub_1000200EC();
      v10 = v25 + v7;
      if (__OFADD__(v25, v7))
      {
LABEL_32:
        __break(1u);
        return &_swiftEmptyArrayStorage;
      }
    }

    else
    {
      v9 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v10 = v9 + v7;
      if (__OFADD__(v9, v7))
      {
        goto LABEL_32;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v32 = v7;
    if (result)
    {
      if (!v8)
      {
        v11 = v2 & 0xFFFFFFFFFFFFFF8;
        if (v10 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      sub_1000200EC();
      goto LABEL_15;
    }

    if (v8)
    {
      goto LABEL_14;
    }

LABEL_15:
    result = sub_10002009C();
    v2 = result;
    v11 = result & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v12 = *(v11 + 16);
    v13 = *(v11 + 24);
    if (v6)
    {
      break;
    }

    v14 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v13 >> 1) - v12) < v32)
    {
      goto LABEL_36;
    }

    v29 = v1;
    v30 = v2;
    v16 = v11 + 8 * v12 + 32;
    v26 = v11;
    if (v6)
    {
      if (v14 < 1)
      {
        goto LABEL_38;
      }

      sub_10001EF80();
      for (i = 0; i != v14; ++i)
      {
        sub_100007778(v3, &qword_1000290F0);
        v18 = sub_10001DBCC(v31, i, v5);
        v20 = v3;
        v21 = *v19;
        (v18)(v31, 0);
        *(v16 + 8 * i) = v21;
        v3 = v20;
      }
    }

    else
    {
      sub_10000F0A0(0, &qword_100038750, UIAction_ptr);
      swift_arrayInitWithCopy();
    }

    v1 = v29;
    v2 = v30;
    if (v32 >= 1)
    {
      v22 = *(v26 + 16);
      v23 = __OFADD__(v22, v32);
      v24 = v22 + v32;
      if (v23)
      {
        goto LABEL_37;
      }

      *(v26 + 16) = v24;
    }

LABEL_4:
    if (++v1 == v28)
    {
      return v2;
    }
  }

  v15 = v11;
  result = sub_1000200EC();
  v11 = v15;
  v14 = result;
  if (result)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v32 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t PPXContextMenuProvider.showShareSheet(with:for:)()
{
  sub_10001FF2C();
  *(v0 + 16) = sub_10001FF1C();
  v2 = sub_10001FF0C();

  return _swift_task_switch(sub_100018BD4, v2, v1);
}

uint64_t sub_100018BD4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100018DC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = sub_10001FF2C();
  v3[4] = sub_10001FF1C();
  v5 = sub_10001FF0C();

  return _swift_task_switch(sub_100018E60, v5, v4);
}

uint64_t sub_100018E60()
{
  v1 = v0[2];

  v0[5] = _Block_copy(v1);
  v0[6] = sub_10001FF1C();
  v3 = sub_10001FF0C();

  return _swift_task_switch(sub_100018F00, v3, v2);
}

uint64_t sub_100018F00()
{
  v1 = *(v0 + 40);

  v1[2](v1);
  _Block_release(v1);
  v2 = *(v0 + 8);

  return v2();
}

id PPXContextMenuProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PPXContextMenuProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *PPXContextMenuProvider.computeSwipeActionItems(with:for:swipeActionType:assetID:)(void (**a1)(char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v109 = a5;
  v117 = a4;
  v105 = a2;
  v106 = a3;
  v115 = a1;
  v116 = sub_10001F74C();
  v110 = *(v116 - 8);
  v5 = __chkstk_darwin(v116);
  v108 = &v105 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v113 = &v105 - v7;
  v8 = sub_10001F82C();
  v114 = v8;
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v105 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100007778(&qword_100038658, &qword_100028FB8);
  __chkstk_darwin(v12 - 8);
  *&v119 = &v105 - v13;
  v14 = type metadata accessor for PPXContextActionData(0);
  v118 = *(v14 - 8);
  v15 = __chkstk_darwin(v14);
  v17 = &v105 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v107 = &v105 - v18;
  v19 = BSUIGetLibraryItemStateProvider();
  *(&v131 + 1) = v8;
  *&v132 = &protocol witness table for MenuCoverImageProvider;
  v20 = sub_10000F2CC(&v130);
  sub_10001F81C();
  v21 = sub_1000158F0(&_swiftEmptyArrayStorage);
  *v17 = v21;
  v22 = *(v14 + 20);
  v23 = enum case for ContextActionSource.unknown(_:);
  v24 = sub_10001F75C();
  (*(*(v24 - 8) + 104))(v17 + v22, v23, v24);
  v25 = v17 + *(v14 + 24);
  *v25 = 0;
  *(v25 + 8) = 0;
  *(v25 + 16) = 1;
  *(v17 + *(v14 + 28)) = 0;
  v26 = v115;
  *(v17 + *(v14 + 32)) = v115;
  *(v17 + *(v14 + 36)) = v19;
  sub_100007F08(&v130, v17 + *(v14 + 40));
  v112 = type metadata accessor for PPXContextAssetInfo();
  v27 = swift_allocObject();
  (*(v9 + 16))(v11, v20, v114);
  v28 = v26;
  swift_unknownObjectRetain();
  v29 = sub_10001DC54(v28, v19, v11, v27);
  if (v29)
  {
    v30 = v29;
    v115 = v28;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_58:
      v21 = sub_10001B834(0, *(v21 + 16) + 1, 1, v21, &qword_100038728, &qword_1000290C8, &qword_100038090, &qword_1000290D0);
    }

    v31 = v109;
    v33 = v118;
    v32 = v119;
    v35 = *(v21 + 16);
    v34 = *(v21 + 24);
    if (v35 >= v34 >> 1)
    {
      v21 = sub_10001B834((v34 > 1), v35 + 1, 1, v21, &qword_100038728, &qword_1000290C8, &qword_100038090, &qword_1000290D0);
    }

    sub_100007F6C(&v130);
    *(&v128 + 1) = v112;
    *&v129 = sub_10001EFE4(&qword_100038680, type metadata accessor for PPXContextAssetInfo, &unk_100028D90);
    *&v127 = v30;
    *(v21 + 16) = v35 + 1;
    sub_100008050(&v127, v21 + 40 * v35 + 32);
    *v17 = v21;
    sub_10001E678(v17, v32);
    v36 = 0;
    v21 = v31;
    v28 = v115;
  }

  else
  {
    sub_100007F6C(&v130);
    sub_10001E5E4(v17);
    v36 = 1;
    v21 = v109;
    v33 = v118;
    v32 = v119;
  }

  (*(v33 + 56))(v32, v36, 1, v14);
  v37 = (*(v33 + 48))(v32, 1, v14);
  v38 = v117;
  if (v37 != 1)
  {
    v44 = v107;
    v45 = sub_10001E678(v32, v107);
    v30 = v111;
    __chkstk_darwin(v45);
    v46 = v105;
    *(&v105 - 4) = v44;
    *(&v105 - 3) = v46;
    *(&v105 - 2) = v28;
    *(&v105 - 1) = v30;
    v17 = 0;
    v48 = sub_100017838(sub_10001F094, (&v105 - 6), v47);
    __chkstk_darwin(v48);
    *(&v105 - 2) = v106;
    v50 = sub_10001A10C(sub_10001E6DC, (&v105 - 4), v49);
    v51 = 0;
    v52 = (v30 + OBJC_IVAR____TtC25BooksProductPageExtension22PPXContextMenuProvider_figaroProvider);
    v111 = (v50 + 32);
    v112 = v50;
    v118 = *(v50 + 2);
    v114 = (v30 + OBJC_IVAR____TtC25BooksProductPageExtension22PPXContextMenuProvider_figaroProvider);
    v115 = (v110 + 8);
    while (1)
    {
      v54 = 0uLL;
      v55 = v118;
      v56 = 0uLL;
      v57 = 0uLL;
      if (v51 != v118)
      {
        if (v51 >= *(v112 + 16))
        {
          goto LABEL_54;
        }

        v55 = v51 + 1;
        *&v127 = v51;
        sub_100007F08(&v111[5 * v51], &v127 + 8);
        v54 = v127;
        v56 = v128;
        v57 = v129;
      }

      v130 = v54;
      v131 = v56;
      v132 = v57;
      if (!v57)
      {
        sub_10001E5E4(v107);
        return v112;
      }

      v119 = v54;
      sub_100008050((&v130 + 8), &v127);
      swift_beginAccess();
      sub_100007FB8(v52, v52[3]);
      if (!*(sub_10001F5FC() + 16))
      {
        break;
      }

      sub_10001BB6C(v38, v21);
      if ((v58 & 1) == 0)
      {
        break;
      }

      swift_endAccess();

      swift_beginAccess();
      sub_10001E6FC(v52, v52[3]);
      v17 = sub_10001F5EC();
      v30 = v59;
      v14 = sub_10001A284(v121, v38, v21);
      if (*v60)
      {
        v61 = v60;
        v62 = v17;
        v110 = v55;
        sub_100007FB8(&v127, *(&v128 + 1));
        v63 = v108;
        sub_10001F64C();
        v64 = sub_10001F72C();
        v17 = v65;
        (*v115)(v63, v116);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v120 = *v61;
        v30 = v120;
        *v61 = 0x8000000000000000;
        v68 = sub_10001BB6C(v64, v17);
        v69 = v30[2];
        v70 = (v67 & 1) == 0;
        v71 = v69 + v70;
        if (__OFADD__(v69, v70))
        {
          goto LABEL_56;
        }

        v21 = v67;
        if (v30[3] >= v71)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if ((v67 & 1) == 0)
            {
              goto LABEL_29;
            }
          }

          else
          {
            v30 = &v120;
            sub_10001D054();
            if ((v21 & 1) == 0)
            {
              goto LABEL_29;
            }
          }
        }

        else
        {
          sub_10001C060(v71, isUniquelyReferenced_nonNull_native);
          v30 = v120;
          v72 = sub_10001BB6C(v64, v17);
          if ((v21 & 1) != (v73 & 1))
          {
            goto LABEL_59;
          }

          v68 = v72;
          if ((v21 & 1) == 0)
          {
LABEL_29:
            v74 = v120;
            v120[(v68 >> 6) + 8] |= 1 << v68;
            v75 = (v74[6] + 16 * v68);
            *v75 = v64;
            v75[1] = v17;
            *(v74[7] + 8 * v68) = v119;
            v76 = v74[2];
            v77 = __OFADD__(v76, 1);
            v78 = v76 + 1;
            if (v77)
            {
              goto LABEL_57;
            }

            v74[2] = v78;
LABEL_45:
            *v61 = v74;

            (v14)(v121, 0);
            v62(v123, 0);
            swift_endAccess();
            v21 = v109;
            v55 = v110;
            v38 = v117;
LABEL_16:
            v52 = v114;
            goto LABEL_17;
          }
        }

        v74 = v120;
        *(v120[7] + 8 * v68) = v119;
        goto LABEL_45;
      }

      (v14)(v121, 0);
      (v17)(v123, 0);
      swift_endAccess();
LABEL_17:
      sub_100007F6C(&v127);
      v51 = v55;
    }

    swift_endAccess();

    sub_100007FB8(&v127, *(&v128 + 1));
    v14 = v21;

    v79 = v113;
    sub_10001F64C();
    v80 = sub_10001F72C();
    v82 = v81;
    (*v115)(v79, v116);
    v124 = v80;
    v125 = v82;
    v126 = v119;
    sub_100007778(&qword_100038670, &qword_100028FC0);
    v21 = sub_10002011C();

    v17 = v124;
    v83 = v125;
    v84 = v126;

    v30 = v21;
    v85 = sub_10001BB6C(v17, v83);
    if (v86)
    {
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    *(v21 + 8 * (v85 >> 6) + 64) |= 1 << v85;
    v87 = (*(v21 + 48) + 16 * v85);
    *v87 = v17;
    v87[1] = v83;
    *(*(v21 + 56) + 8 * v85) = v84;
    v88 = *(v21 + 16);
    v77 = __OFADD__(v88, 1);
    v89 = v88 + 1;
    if (v77)
    {
      goto LABEL_52;
    }

    *(v21 + 16) = v89;

    sub_10000F1FC(&v124, &qword_100038678, &qword_100028FC8);
    swift_beginAccess();
    v17 = v52[3];
    sub_10001E6FC(v52, v17);
    v90 = sub_10001F5EC();
    v92 = v91;
    v93 = swift_isUniquelyReferenced_nonNull_native();
    v122 = *v92;
    v30 = v122;
    *v92 = 0x8000000000000000;
    v38 = v117;
    v94 = sub_10001BB6C(v117, v14);
    v96 = v30[2];
    v97 = (v95 & 1) == 0;
    v77 = __OFADD__(v96, v97);
    v98 = v96 + v97;
    if (v77)
    {
      goto LABEL_53;
    }

    v17 = v95;
    if (v30[3] >= v98)
    {
      if ((v93 & 1) == 0)
      {
        v30 = &v122;
        v104 = v94;
        sub_10001D328();
        v94 = v104;
        v100 = v122;
        if ((v17 & 1) == 0)
        {
          goto LABEL_39;
        }

        goto LABEL_14;
      }
    }

    else
    {
      sub_10001C5A4(v98, v93);
      v30 = v122;
      v94 = sub_10001BB6C(v38, v14);
      if ((v17 & 1) != (v99 & 1))
      {
LABEL_59:
        result = sub_10002016C();
        __break(1u);
        return result;
      }
    }

    v100 = v122;
    if ((v17 & 1) == 0)
    {
LABEL_39:
      v100[(v94 >> 6) + 8] |= 1 << v94;
      v101 = (v100[6] + 16 * v94);
      *v101 = v38;
      v101[1] = v14;
      *(v100[7] + 8 * v94) = v21;
      v102 = v100[2];
      v77 = __OFADD__(v102, 1);
      v103 = v102 + 1;
      if (v77)
      {
        goto LABEL_55;
      }

      v100[2] = v103;
      v21 = v14;
      goto LABEL_15;
    }

LABEL_14:
    v53 = v100[7];
    v30 = *(v53 + 8 * v94);
    *(v53 + 8 * v94) = v21;
    v21 = v14;

LABEL_15:
    *v92 = v100;
    v90(v123, 0);
    swift_endAccess();
    goto LABEL_16;
  }

  sub_10000F1FC(v32, &qword_100038658, &qword_100028FB8);
  if (qword_100037640 != -1)
  {
    swift_once();
  }

  v39 = sub_10001FBEC();
  sub_10001E640(v39, qword_100038640);
  v40 = sub_10001FBCC();
  v41 = sub_10001FF6C();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&_mh_execute_header, v40, v41, "Unable to instantiate ContextActionData", v42, 2u);
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_100019DAC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v11 = *a1;
  v12 = a1[1];
  v21[3] = type metadata accessor for PPXContextActionData(0);
  v21[4] = sub_10001EFE4(&qword_100038718, type metadata accessor for PPXContextActionData, &unk_100028748);
  v13 = sub_10000F2CC(v21);
  sub_10001ECE4(a2, v13);
  v14 = *(a5 + OBJC_IVAR____TtC25BooksProductPageExtension22PPXContextMenuProvider_objectGraph);
  v20[11] = &type metadata for PPXContextMenuPresentationContext;
  v20[12] = sub_10001ED48();
  v15 = swift_allocObject();
  v20[8] = v15;
  swift_unknownObjectWeakInit();
  *(v15 + 24) = a4;
  *(v15 + 32) = v14;

  v16 = a4;
  v17 = [a3 ba_effectiveAnalyticsTracker];
  v18 = OBJC_IVAR____TtC25BooksProductPageExtension22PPXContextMenuProvider_figaroProvider;
  swift_beginAccess();
  sub_100007F08(a5 + v18, v20);
  a6[3] = v11;
  a6[4] = v12;
  sub_10000F2CC(a6);
  return sub_10001F63C();
}

uint64_t sub_100019F28(void *a1, uint64_t a2)
{
  v13[1] = a2;
  v13[0] = sub_10001F6EC();
  v3 = *(v13[0] - 8);
  __chkstk_darwin(v13[0]);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10001F74C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100007FB8(a1, a1[3]);
  sub_10001F64C();
  sub_10001F70C();
  (*(v7 + 8))(v9, v6);
  v10 = sub_10001F6DC();
  (*(v3 + 8))(v5, v13[0]);
  if (v10)
  {
    sub_100007FB8(a1, a1[3]);
    v11 = sub_10001F62C();
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t (*sub_10001A10C(uint64_t (*result)(__int128 *), uint64_t a2, uint64_t a3))(__int128 *)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = a3 + 32;
    v9 = &_swiftEmptyArrayStorage;
    v14 = result;
    while (v7 < *(a3 + 16))
    {
      sub_100007F08(v8, v16);
      v10 = v6(v16);
      if (v3)
      {
        sub_100007F6C(v16);

        goto LABEL_15;
      }

      if (v10)
      {
        sub_100008050(v16, v15);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v17 = v9;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10001CB50(0, v9[2] + 1, 1);
          v9 = v17;
        }

        v13 = v9[2];
        v12 = v9[3];
        if (v13 >= v12 >> 1)
        {
          sub_10001CB50((v12 > 1), v13 + 1, 1);
          v9 = v17;
        }

        v9[2] = v13 + 1;
        result = sub_100008050(v15, &v9[5 * v13 + 4]);
        v6 = v14;
      }

      else
      {
        result = sub_100007F6C(v16);
      }

      ++v7;
      v8 += 40;
      if (v5 == v7)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = &_swiftEmptyArrayStorage;
LABEL_15:

    return v9;
  }

  return result;
}

uint64_t (*sub_10001A284(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_10001D7F0(v6, a2, a3);
  return sub_10001A30C;
}

void sub_10001A30C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

void *PPXContextMenuProvider.contextMenuActionItems(with:for:)(void *a1, uint64_t a2)
{
  v99 = sub_100007778(&qword_100038688, &qword_100028FD0);
  v92 = *(v99 - 8);
  v5 = __chkstk_darwin(v99);
  v98 = &v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v97 = &v92 - v7;
  v102 = sub_10001F74C();
  v96 = *(v102 - 8);
  v8 = __chkstk_darwin(v102);
  v100 = &v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v92 - v10;
  v95 = v2;
  v12 = sub_100017190(a1, a2);
  v13 = v12;
  v14 = v12[2];
  if (v14)
  {
    v15 = 0;
    v16 = (v12 + 4);
    v17 = &_swiftEmptyArrayStorage;
    while (v15 < v13[2])
    {
      sub_100007F08(v16, &v106);
      sub_100007FB8(&v106, *(&v107 + 1));
      if (sub_10001F62C())
      {
        sub_100008050(&v106, &v103);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v111 = v17;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10001CB50(0, v17[2] + 1, 1);
          v17 = v111;
        }

        v20 = v17[2];
        v19 = v17[3];
        if (v20 >= v19 >> 1)
        {
          sub_10001CB50((v19 > 1), v20 + 1, 1);
          v17 = v111;
        }

        v17[2] = v20 + 1;
        sub_100008050(&v103, &v17[5 * v20 + 4]);
      }

      else
      {
        sub_100007F6C(&v106);
      }

      ++v15;
      v16 += 40;
      if (v14 == v15)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_75;
  }

  v17 = &_swiftEmptyArrayStorage;
LABEL_13:

  v21 = &_swiftEmptyDictionarySingleton;
  v111 = &_swiftEmptyDictionarySingleton;
  v101 = v17[2];
  if (v101)
  {
    v22 = 0;
    v23 = (v17 + 4);
    v24 = (v96 + 8);
    while (1)
    {
      if (v22 >= v17[2])
      {
        goto LABEL_76;
      }

      sub_100007F08(v23, &v106);
      sub_100007FB8(&v106, *(&v107 + 1));
      sub_10001F64C();
      v27 = sub_10001F72C();
      v29 = v28;
      (*v24)(v11, v102);
      sub_100008050(&v106, &v103);
      v30 = v111;
      v31 = swift_isUniquelyReferenced_nonNull_native();
      v110 = v30;
      v32 = sub_10001BB6C(v27, v29);
      v34 = v30[2];
      v35 = (v33 & 1) == 0;
      v36 = __OFADD__(v34, v35);
      v37 = v34 + v35;
      if (v36)
      {
        goto LABEL_77;
      }

      v38 = v33;
      if (v30[3] < v37)
      {
        break;
      }

      if (v31)
      {
        goto LABEL_23;
      }

      v43 = v32;
      sub_10001D498();
      v32 = v43;
      if (v38)
      {
LABEL_15:
        v25 = v32;

        v21 = v110;
        v26 = (v110[7] + 40 * v25);
        sub_100007F6C(v26);
        sub_100008050(&v103, v26);
        goto LABEL_16;
      }

LABEL_24:
      v21 = v110;
      v110[(v32 >> 6) + 8] |= 1 << v32;
      v40 = (v21[6] + 16 * v32);
      *v40 = v27;
      v40[1] = v29;
      sub_100008050(&v103, v21[7] + 40 * v32);
      v41 = v21[2];
      v36 = __OFADD__(v41, 1);
      v42 = v41 + 1;
      if (v36)
      {
        goto LABEL_82;
      }

      v21[2] = v42;
LABEL_16:
      ++v22;
      v111 = v21;
      v23 += 40;
      if (v101 == v22)
      {
        goto LABEL_28;
      }
    }

    sub_10001C84C(v37, v31);
    v32 = sub_10001BB6C(v27, v29);
    if ((v38 & 1) != (v39 & 1))
    {
      goto LABEL_84;
    }

LABEL_23:
    if (v38)
    {
      goto LABEL_15;
    }

    goto LABEL_24;
  }

LABEL_28:

  v44 = 1 << *(v21 + 32);
  v45 = -1;
  if (v44 < 64)
  {
    v45 = ~(-1 << v44);
  }

  v46 = v45 & v21[8];
  v47 = (v44 + 63) >> 6;

  v48 = 0;
  v49 = &_swiftEmptyArrayStorage;
  if (v46)
  {
    goto LABEL_35;
  }

  while (1)
  {
    v50 = v48 + 1;
    if (__OFADD__(v48, 1))
    {
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
      goto LABEL_78;
    }

    if (v50 >= v47)
    {
      break;
    }

    v46 = v21[v50 + 8];
    ++v48;
    if (v46)
    {
      v48 = v50;
      do
      {
LABEL_35:
        v51 = __clz(__rbit64(v46)) | (v48 << 6);
        v52 = (v21[6] + 16 * v51);
        v54 = *v52;
        v53 = v52[1];
        sub_100007F08(v21[7] + 40 * v51, &v107);
        *&v106 = v54;
        *(&v106 + 1) = v53;
        v103 = v106;
        v104[0] = v107;
        v104[1] = v108;
        v105 = v109;
        v55 = v106;

        sub_100007F6C(v104);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v49 = sub_10001B728(0, *(v49 + 2) + 1, 1, v49);
        }

        v57 = *(v49 + 2);
        v56 = *(v49 + 3);
        if (v57 >= v56 >> 1)
        {
          v49 = sub_10001B728((v56 > 1), v57 + 1, 1, v49);
        }

        v46 &= v46 - 1;
        *(v49 + 2) = v57 + 1;
        *&v49[16 * v57 + 32] = v55;
      }

      while (v46);
    }
  }

  v58 = sub_10001F6FC();

  v59 = sub_100017D4C(v58, &v111);
  v93 = 0;

  v60 = v59[2];
  v94 = v59;
  if (v60)
  {
    v61 = v59 + ((*(v92 + 80) + 32) & ~*(v92 + 80));
    v62 = &_swiftEmptyArrayStorage;
    v63 = *(v92 + 72);
    while (1)
    {
      v64 = v97;
      sub_10000F25C(v61, v97, &qword_100038688, &qword_100028FD0);
      v65 = v64;
      v66 = v98;
      sub_10001E74C(v65, v98);
      v67 = *(v66 + *(v99 + 48));
      v68 = sub_10001F71C();
      (*(*(v68 - 8) + 8))(v66, v68);
      v69 = *(v67 + 16);
      v70 = v62[2];
      v71 = v70 + v69;
      if (__OFADD__(v70, v69))
      {
        goto LABEL_79;
      }

      v72 = swift_isUniquelyReferenced_nonNull_native();
      if (v72 && v71 <= v62[3] >> 1)
      {
        if (!*(v67 + 16))
        {
          goto LABEL_43;
        }
      }

      else
      {
        if (v70 <= v71)
        {
          v73 = v70 + v69;
        }

        else
        {
          v73 = v70;
        }

        v62 = sub_10001B834(v72, v73, 1, v62, &qword_100038700, &qword_1000290A8, &qword_100038690, &qword_100028FD8);
        if (!*(v67 + 16))
        {
LABEL_43:

          if (v69)
          {
            goto LABEL_80;
          }

          goto LABEL_44;
        }
      }

      if ((v62[3] >> 1) - v62[2] < v69)
      {
        goto LABEL_81;
      }

      sub_100007778(&qword_100038690, &qword_100028FD8);
      swift_arrayInitWithCopy();

      if (v69)
      {
        v74 = v62[2];
        v36 = __OFADD__(v74, v69);
        v75 = v74 + v69;
        if (v36)
        {
          goto LABEL_83;
        }

        v62[2] = v75;
      }

LABEL_44:
      v61 += v63;
      if (!--v60)
      {
        goto LABEL_59;
      }
    }
  }

  v62 = &_swiftEmptyArrayStorage;
LABEL_59:
  v101 = v62[2];
  if (v101)
  {
    v76 = 0;
    v77 = (v62 + 4);
    v78 = &_swiftEmptyArrayStorage;
    v79 = (v96 + 8);
    while (v76 < v62[2])
    {
      *&v106 = v76;
      sub_100007F08(v77, &v106 + 8);
      sub_100007FB8(&v106 + 1, v108);
      v80 = v100;
      sub_10001F64C();
      v81 = sub_10001F72C();
      v83 = v82;
      (*v79)(v80, v102);
      sub_10000F1FC(&v106, &qword_100038698, &qword_100028FE0);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v78 = sub_10001B498(0, v78[2] + 1, 1, v78);
      }

      v85 = v78[2];
      v84 = v78[3];
      if (v85 >= v84 >> 1)
      {
        v78 = sub_10001B498((v84 > 1), v85 + 1, 1, v78);
      }

      v78[2] = v85 + 1;
      v86 = &v78[3 * v85];
      v86[5] = v83;
      v86[6] = v76;
      v86[4] = v81;
      v77 += 40;
      if (v101 == ++v76)
      {
        goto LABEL_69;
      }
    }

LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    sub_10002016C();
    __break(1u);
    goto LABEL_85;
  }

  v78 = &_swiftEmptyArrayStorage;
LABEL_69:

  if (v78[2])
  {
    sub_100007778(&qword_100038670, &qword_100028FC0);
    v87 = sub_10002011C();
  }

  else
  {
    v87 = &_swiftEmptyDictionarySingleton;
  }

  v88 = v93;
  *&v106 = v87;

  sub_10001CCD8(v89, 1, &v106);
  if (!v88)
  {

    v90 = v95 + OBJC_IVAR____TtC25BooksProductPageExtension22PPXContextMenuProvider_figaroProvider;
    swift_beginAccess();
    sub_10001E6FC(v90, *(v90 + 24));
    sub_10001F60C();
    swift_endAccess();

    return v94;
  }

LABEL_85:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_10001ADDC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_10001F090;

  return v6();
}

uint64_t sub_10001AEC4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_100007384;

  return v7();
}

uint64_t sub_10001AFAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100007778(&qword_1000386D8, &qword_100029038);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  sub_10000F25C(a3, v23 - v10, &qword_1000386D8, &qword_100029038);
  v12 = sub_10001FF4C();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_10000F1FC(v11, &qword_1000386D8, &qword_100029038);
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

  sub_10001FF3C();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_10001FF0C();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_10001FE6C() + 32;
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

    sub_10000F1FC(a3, &qword_1000386D8, &qword_100029038);

    return v21;
  }

LABEL_8:
  sub_10000F1FC(a3, &qword_1000386D8, &qword_100029038);
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

uint64_t sub_10001B2A8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10001B3A0;

  return v6(a1);
}

uint64_t sub_10001B3A0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void *sub_10001B498(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_100007778(&qword_1000386F8, &qword_1000290A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100007778(&qword_100038678, &qword_100028FC8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10001B5E0(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_100007778(&qword_100038768, &qword_1000290F8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100007778(&qword_100038770, &unk_100029100);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10001B728(char *result, int64_t a2, char a3, char *a4)
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
    sub_100007778(&qword_1000382E8, &qword_1000290C0);
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

void *sub_10001B834(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    sub_100007778(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = &_swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100007778(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_10001B97C(void *result, int64_t a2, char a3, void *a4)
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

  sub_100007778(&qword_100038710, &qword_1000290B8);
  v10 = *(sub_100007778(&qword_100038688, &qword_100028FD0) - 8);
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
  v15 = *(sub_100007778(&qword_100038688, &qword_100028FD0) - 8);
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

unint64_t sub_10001BB6C(uint64_t a1, uint64_t a2)
{
  sub_10002018C();
  sub_10001FE7C();
  v4 = sub_10002019C();

  return sub_10001BC28(a1, a2, v4);
}

unint64_t sub_10001BBE4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10002003C(*(v2 + 40));

  return sub_10001BCE0(a1, v4);
}

unint64_t sub_10001BC28(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_10002014C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_10001BCE0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10001E7E0(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_10002004C();
      sub_100015648(v8);
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

uint64_t sub_10001BDA8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100007778(&qword_100037ED8, &qword_1000285A0);
  v33 = v4;
  result = sub_10002010C();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_10000CDF8(v24, v34);
      }

      else
      {
        sub_10000CD9C(v24, v34);
      }

      sub_10002018C();
      sub_10001FE7C();
      result = sub_10002019C();
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

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_10000CDF8(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_10001C060(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100007778(&qword_100038670, &qword_100028FC0);
  v34 = v4;
  result = sub_10002010C();
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

      sub_10002018C();
      sub_10001FE7C();
      result = sub_10002019C();
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