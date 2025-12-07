void sub_100002E90(id a1)
{
  v1 = objc_alloc_init(NSOperationQueue);
  v2 = qword_1000B5198;
  qword_1000B5198 = v1;

  v3 = qword_1000B5198;

  [v3 setMaxConcurrentOperationCount:1];
}

void sub_1000058D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, id a17)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a17);
  _Unwind_Resume(a1);
}

void sub_100005924(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained contentParser];
  [v2 setDelegate:WeakRetained];

  v3 = [WeakRetained tip];
  v20 = [v3 identifier];

  v4 = [WeakRetained tip];
  v5 = [v4 fullContentAssets];
  v19 = [v5 baseURL];

  v6 = [WeakRetained tip];
  v7 = [v6 language];

  v8 = [WeakRetained tip];
  v9 = [v8 assetFileInfoManager];

  LOBYTE(v2) = [WeakRetained isSharedVariant] ^ 1;
  v10 = [WeakRetained contentParser];
  v11 = [WeakRetained tip];
  v12 = [v11 bodyContent];
  v13 = *(a1 + 32);
  v25 = 0;
  LOBYTE(v18) = v2;
  v14 = v9;
  v15 = [v10 attributedStringForConstellationContent:v12 defaultAttributes:v13 identifier:v20 language:v7 assetsBaseURL:v19 assetFileInfoManager:v9 supportsLinks:v18 error:&v25];
  v16 = v25;

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100005B54;
  block[3] = &unk_1000A2E58;
  block[4] = WeakRetained;
  objc_copyWeak(&v24, (a1 + 48));
  v23 = v15;
  v17 = v15;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v24);
}

id sub_100005B54(uint64_t a1)
{
  v2 = [*(a1 + 32) contentParser];
  [*(a1 + 32) setBodyContentProcessingCount:{objc_msgSend(v2, "numOfActiveRemoteURLSessions")}];

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = [*(a1 + 32) uniqueIdentifierForCurrentTip];
  v5 = [WeakRetained isEqualToString:v4];

  if (v5)
  {
    v6 = [*(a1 + 32) appController];
    v7 = *(a1 + 40);
    v8 = [*(a1 + 32) tip];
    v9 = [v8 identifier];
    [v6 updateAttributedString:v7 forIdentifier:v9];

    [*(a1 + 32) updateAttributedStringWithCache];
  }

  [*(a1 + 32) setContentTextOperation:0];
  [*(a1 + 32) setContentTextOperationID:0];
  v10 = *(a1 + 32);

  return [v10 updateImageReadyStatus];
}

void sub_100006868(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (v2)
  {
    v3 = v2;
    v4 = [*(a1 + 32) delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = [*(a1 + 32) delegate];
      [v6 performSelector:"tipCollectionViewCellSharedTipTapped:" withObject:*(a1 + 32)];
    }
  }
}

void sub_10000692C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) link];
  [v1 handleTipsURL:v2];
}

void sub_100007FC8(uint64_t a1)
{
  v2 = +[UIApplication sharedApplication];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100008080;
  v4[3] = &unk_1000A2EF8;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v7 = *(a1 + 56);
  v5 = v3;
  v6 = *(a1 + 48);
  [v2 installCACommitCompletionBlock:v4];
}

void sub_100008080(uint64_t a1)
{
  v2 = [*(a1 + 32) appCoordinator];
  v3 = [v2 tipsByCollectionViewController];
  v9 = [v3 collectionView];

  if (*(a1 + 56) == 1)
  {
    v4 = [[RPTDirectionalSwipeTestParameters alloc] initWithTestName:*(a1 + 40) scrollView:v9 completionHandler:0];
    RPTGetBoundsForView();
    x = v11.origin.x;
    y = v11.origin.y;
    width = v11.size.width;
    Height = CGRectGetHeight(v11);
    if (Height > 0.0)
    {
      [v4 setScrollingBounds:{x + 30.0, y + 0.0, width + -60.0, round(Height / 3.0)}];
    }

    [v4 setDirection:2];
    [v4 setSwipeSpeedFactor:&off_1000A5118];
    [v4 setShouldFlick:1];
    [RPTTestRunner runTestWithParameters:v4];
  }

  else
  {
    [v9 _performScrollTest:*(a1 + 40) iterations:*(a1 + 48) delta:*(a1 + 52) scrollAxis:1];
  }
}

void sub_100009FE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000A00C(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained networkStateDidChange:a2];
}

void sub_10000C4F0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_10000C514(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [*(a1 + 32) searchResultViewModel];
  v3 = [v2 searchQuery];
  v4 = [v3 searchTerm];

  if (![v4 length])
  {
    v5 = [WeakRetained searchResultViewModel];
    [v5 reset];
  }
}

void sub_10000DB10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [NSIndexPath indexPathForRow:a3 inSection:0];
  v4 = [*(a1 + 32) collectionView];
  v5 = [v4 cellForItemAtIndexPath:v6];

  if (v5)
  {
    [*(a1 + 40) addObject:v6];
  }
}

void sub_10000DBA4(uint64_t a1)
{
  v2 = [*(a1 + 32) collectionView];
  [v2 reconfigureItemsAtIndexPaths:*(a1 + 40)];
}

void sub_10000DDBC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 104));
  _Unwind_Resume(a1);
}

void sub_10000DDE0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained collectionViewLayout];
  [v2 invalidateLayout];

  [WeakRetained reconfigureAllCollectionViewItems];
  [WeakRetained ensureCurrentTipPositionWithViewSize:{*(a1 + 40), *(a1 + 48)}];
}

void sub_10000DE50(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setScrollingTipContent:0];
  if ((+[TPSAppearance isPhoneUI]& 1) == 0)
  {
    v2 = [WeakRetained appController];
    v3 = [v2 appInBackground];

    if ((v3 & 1) == 0)
    {
      v4 = [*(a1 + 32) delegate];
      [WeakRetained updateTipForCell:0 startVideo:{objc_msgSend(v4, "tipsViewControllerShouldStartVideo:", *(a1 + 32))}];
    }
  }

  [WeakRetained _adjustScrollViewPagingDecelerationForSize:{*(a1 + 48), *(a1 + 56)}];
  [WeakRetained resetSearchController];
  v5 = [WeakRetained view];
  [v5 setNeedsLayout];
}

void sub_10000E0EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000E110(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = [a2 identifier];
  v8 = [*(a1 + 32) currentTip];
  v9 = [v8 identifier];
  v10 = [v7 isEqualToString:v9];

  if (v10)
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
    *a4 = 1;
  }
}

id sub_10000FA28(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  [v4 cancelAssetsPrefetch];
  v6 = [*(a1 + 32) appController];
  [v6 resetAttributedStringCache];

  v7 = [*(a1 + 32) traitCollection];
  v8 = [v7 hasDifferentColorAppearanceComparedToTraitCollection:v5];

  if (v8)
  {
    v9 = *(a1 + 32);
    v10 = [v9 traitCollection];
    [v9 updateContentBackgroundWithTraitCollection:v10];

    v11 = [*(a1 + 32) traitCollection];
    v12 = [v11 userInterfaceStyle];
    v13 = [*(a1 + 32) cellAppearance];
    [v13 setUserInterfaceStyle:v12];

    [*(a1 + 32) reconfigureAllCollectionViewItems];
  }

  v14 = *(a1 + 32);

  return [v14 updateTipForCell:0 startVideo:1];
}

void sub_100010360(uint64_t a1)
{
  v1 = [*(a1 + 32) playerController];
  [v1 autoplay:0];
}

void sub_1000124C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100012500(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = [*(a1 + 32) identifier];
  v4 = [*(a1 + 32) fullContentAssets];
  v5 = [v4 baseURL];

  v6 = [*(a1 + 32) language];
  v7 = [*(a1 + 32) assetFileInfoManager];
  v8 = [WeakRetained isSharedVariant] ^ 1;
  v9 = [WeakRetained footnoteContentParser];
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v22 = 0;
  LOBYTE(v16) = v8;
  v12 = [v9 attributedStringForConstellationContent:v10 defaultAttributes:v11 identifier:v3 language:v6 assetsBaseURL:v5 assetFileInfoManager:v7 supportsLinks:v16 error:&v22];
  v13 = v22;

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000126A8;
  block[3] = &unk_1000A3088;
  v18 = *(a1 + 56);
  v19 = WeakRetained;
  v20 = v12;
  v21 = v3;
  v14 = v3;
  v15 = v12;
  dispatch_async(&_dispatch_main_q, block);
}

id sub_1000126A8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) uniqueIdentifierForCurrentTip];
  LODWORD(v2) = [v2 hasPrefix:v3];

  if (v2)
  {
    v4 = [*(a1 + 40) appController];
    v5 = *(a1 + 48);
    v6 = [*(a1 + 40) tip];
    v7 = [v6 identifier];
    [v4 updateFootnoteAttributedString:v5 forIdentifier:v7];

    v8 = *(a1 + 48);
    v9 = [*(a1 + 40) footnoteTextView];
    [v9 setAttributedText:v8];

    v10 = *(a1 + 56);
    v11 = [*(a1 + 40) footnoteTextView];
    [v11 setTipID:v10];

    v12 = [*(a1 + 40) footnoteTextView];
    [v12 setHidden:0];
  }

  [*(a1 + 40) setFootnoteContentTextOperation:0];
  v13 = *(a1 + 40);

  return [v13 setFootnoteContentTextOperationID:0];
}

void sub_100013F98(_Unwind_Exception *a1)
{
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v5 - 104));
  _Unwind_Resume(a1);
}

void sub_100013FF0(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if ([TPSCommonDefines isChecklistCollectionWithIdentifier:v5])
  {
    v4 = +[TPSAnalyticsChecklistSessionController sharedInstance];
    [v4 startSession];
  }

  else
  {
    [WeakRetained logAnalyticsEventForChecklistSession];
  }

  if (([*(a1 + 32) pendingColumnSwitching] & 1) == 0)
  {
    [WeakRetained displayCollectionID:v5 tipID:0 preferredColumn:1];
  }
}

void sub_1000140A8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = +[TPSCommonDefines checklistCollectionIdentifier];
  v5 = [v3 identifier];

  [WeakRetained displayCollectionID:v4 tipID:v5 preferredColumn:2];
  v6 = +[TPSAnalyticsChecklistSessionController sharedInstance];
  [v6 startSession];
}

void sub_100014160(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained logAnalyticsEventForChecklistSession];
  v4 = [v3 identifier];
  v5 = [v3 version];
  v6 = [v3 platformIndependent];

  [WeakRetained displayUserGuideWithIdentifier:v4 topicId:0 version:v5 platformIndependent:v6 prefersLandingPage:0 referrer:0];
}

void sub_100014214(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained displaySupportFlowWithIdentifier:v3];
}

void sub_100014364(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_10001438C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained tipListViewController];
  v5 = [v4 viewModel];
  v6 = [v5 collection];
  v7 = [v6 identifier];

  v8 = [WeakRetained tipsByCollectionViewController];
  v9 = [v3 identifier];

  [v8 updateWithCollectionID:v7 tipID:v9];
  if (([*(a1 + 32) pendingColumnSwitching] & 1) == 0)
  {
    [*(a1 + 32) showTipsView];
  }
}

void sub_100014F18(uint64_t a1)
{
  v2 = [*(a1 + 32) supportID];

  v3 = *(a1 + 40);
  if (v2)
  {
    v8 = [*(a1 + 32) identifier];
    [v3 displaySupportFlowWithIdentifier:v8];
  }

  else
  {
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);
    v6 = *(a1 + 64);
    v7 = *(a1 + 40);

    [v7 displayCollectionID:v4 tipID:v5 preferredColumn:v6];
  }
}

void sub_100015270(uint64_t a1)
{
  v2 = [*(a1 + 32) splitViewController];
  [v2 showColumn:*(a1 + 40)];
}

void sub_100015A58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100015A7C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained showCollectionsView];
}

void sub_100016A5C(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) length] || *(a1 + 40) != 1)
  {
    [v3 setSelectedHelpTopicID:*(a1 + 32)];
  }

  else
  {
    [v3 setPrefersLandingViewOnLoad:1];
  }
}

void sub_100016AD4(uint64_t a1)
{
  v2 = [*(a1 + 32) text];
  v4 = [HLPHelpViewController helpViewControllerWithTitle:v2 identifier:*(a1 + 40) version:*(a1 + 48)];

  [v4 setDelegate:*(a1 + 56)];
  [v4 setAccessType:*(a1 + 72)];
  (*(*(a1 + 64) + 16))();
  [v4 setShowTopicViewOnLoad:1];
  [v4 setPlatformIndependent:*(a1 + 80)];
  [*(a1 + 56) setUserGuideDisplayed:1];
  v3 = [[UINavigationController alloc] initWithRootViewController:v4];
  [v3 setModalPresentationStyle:1];
  [*(a1 + 56) presentViewController:v3 animated:1 completion:0];
}

uint64_t sub_100016DF4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 identifier];
  if (v4 && (v5 = v4, [v3 title], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "length"), v6, v5, v7))
  {
    v8 = objc_alloc_init(NSURLComponents);
    [v8 setScheme:@"tips"];
    [v8 setPath:@"open"];
    v9 = [v3 identifier];
    v10 = +[TPSCommonDefines sharedInstance];
    v11 = [v3 collectionIdentifiers];
    v12 = [v10 collectionIdentifierToUseForCollectionIdentifiers:v11];

    if ([v12 length])
    {
      v13 = [v9 stringByAppendingFormat:@"%@%@", @"#", v12];

      v9 = v13;
    }

    v14 = [NSURLQueryItem queryItemWithName:@"type" value:@"shortcut"];
    v15 = [NSURLQueryItem queryItemWithName:@"id" value:v9];
    v23[0] = v14;
    v23[1] = v15;
    v16 = [NSArray arrayWithObjects:v23 count:2];
    [v8 setQueryItems:v16];

    v17 = [v8 string];
    v18 = [UIApplicationShortcutItem alloc];
    v19 = [v3 title];
    v20 = [v18 initWithType:v17 localizedTitle:v19];

    [*(a1 + 32) addObject:v20];
    v21 = 1;
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

void sub_10001704C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v6 = [v9 collectionIdentifiers];
  v7 = +[TPSCommonDefines checklistCollectionIdentifier];
  v8 = [v6 containsObject:v7];

  if (v8)
  {
    if ((*(*(a1 + 48) + 16))())
    {
      [*(a1 + 32) removeObject:v9];
      if ([*(a1 + 40) count] >= 3)
      {
        *a4 = 1;
      }
    }
  }
}

BOOL sub_100017E9C(id a1, NSURLQueryItem *a2)
{
  v2 = [(NSURLQueryItem *)a2 name];
  v3 = [v2 isEqualToString:TPSTipURLSchemeParameterSearchTermKey];

  return v3;
}

void sub_1000185BC(uint64_t a1)
{
  [*(a1 + 32) showCollectionsView];
  v2 = [*(a1 + 32) collectionListViewController];
  v3 = [v2 navigationController];
  v4 = [v3 popToRootViewControllerAnimated:0];

  v5 = [*(a1 + 32) collectionListViewController];
  [v5 searchWithSearchQuery:*(a1 + 40)];
}

void sub_100018654(uint64_t a1)
{
  [*(a1 + 32) showTipsView];
  v2 = [*(a1 + 32) tipsByCollectionViewController];
  [v2 searchWithSearchQuery:*(a1 + 40)];
}

void sub_100019DE0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 0xCu);
}

id sub_10001AA30(uint64_t a1)
{
  result = [*(a1 + 32) model];
  if (result < 2)
  {
    return [*(a1 + 32) parallaxFactor];
  }

  return result;
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = static CommandLine.argc.getter();
  v4 = static CommandLine.unsafeArgv.getter();
  sub_10001AC14(0, &qword_1000B2BD0, &off_1000A1498);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v6)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = String._bridgeToObjectiveC()();
  }

  sub_10001AC14(0, &qword_1000B2BD8, off_1000A1490);
  v7 = swift_getObjCClassFromMetadata();
  v8 = NSStringFromClass(v7);
  if (!v8)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = String._bridgeToObjectiveC()();
  }

  UIApplicationMain(v3, v4, v6, v8);

  return 0;
}

uint64_t sub_10001AC14(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_10001AC5C(uint64_t *a1)
{
  if (sub_100069BAC(2, 26, 0, 0))
  {
    type metadata accessor for _TagTraitWritingModifier();

    return type metadata accessor for ModifiedContent();
  }

  else
  {
    type metadata accessor for TagValueTraitKey();
    swift_getWitnessTable();
    type metadata accessor for _TraitWritingModifier();
    type metadata accessor for ModifiedContent();
    type metadata accessor for Optional();
    swift_getWitnessTable();
    type metadata accessor for TagValueTraitKey();
    swift_getWitnessTable();
    type metadata accessor for _TraitWritingModifier();
    return type metadata accessor for ModifiedContent();
  }
}

uint64_t sub_10001ADC0(uint64_t *a1)
{
  if (sub_100069BAC(2, 26, 0, 0))
  {
    type metadata accessor for _TagTraitWritingModifier();
    type metadata accessor for ModifiedContent();
  }

  else
  {
    type metadata accessor for TagValueTraitKey();
    swift_getWitnessTable();
    type metadata accessor for _TraitWritingModifier();
    type metadata accessor for ModifiedContent();
    type metadata accessor for Optional();
    swift_getWitnessTable();
    type metadata accessor for TagValueTraitKey();
    swift_getWitnessTable();
    type metadata accessor for _TraitWritingModifier();
    type metadata accessor for ModifiedContent();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_10001AFDC(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_10001B054(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_10001B0D4@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_10001B11C@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10001B148(uint64_t a1)
{
  v2 = sub_10001B5C8(&qword_1000B2C48, type metadata accessor for ActivityType, &unk_100077AD8);
  v3 = sub_10001B5C8(&qword_1000B2C50, type metadata accessor for ActivityType, &unk_100077A80);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10001B204@<X0>(void *a2@<X8>)
{
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

uint64_t sub_10001B24C(uint64_t a1)
{
  v2 = sub_10001B5C8(&qword_1000B2C58, type metadata accessor for Key, &unk_100077B60);
  v3 = sub_10001B5C8(&qword_1000B2C60, type metadata accessor for Key, &unk_100077974);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10001B30C()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t sub_10001B34C(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_10001B3A4(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v1 = Hasher._finalize()();

  return v1;
}

uint64_t sub_10001B41C(void *a1, uint64_t *a2)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

uint64_t sub_10001B4A4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

__n128 sub_10001B4EC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_10001B5C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10001B730(uint64_t a1, int a2)
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

uint64_t sub_10001B750(uint64_t result, int a2, int a3)
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

void sub_10001B78C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_10001B860()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_1000B6E78 = result;
  unk_1000B6E80 = v3;
  return result;
}

uint64_t sub_10001BAA4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

id sub_10001BC44()
{
  [v0 cancelAnalyticsIncreaseCountViewForCollectionsViewDelay];
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0 name:UIApplicationWillEnterForegroundNotification object:0];
  [v1 removeObserver:v0 name:UIApplicationDidEnterBackgroundNotification object:0];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for CollectionListViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_10001BEBC(void *a1)
{
  v3 = OBJC_IVAR___CollectionListViewController_viewModel;
  *&v1[v3] = [objc_allocWithZone(type metadata accessor for CollectionListViewModel(0)) init];
  v1[OBJC_IVAR___CollectionListViewController_canIncreaseViewCount] = 1;
  v4 = OBJC_IVAR___CollectionListViewController_searchResultsViewModel;
  *&v1[v4] = [objc_allocWithZone(type metadata accessor for SearchResultsViewModel()) init];
  *&v1[OBJC_IVAR___CollectionListViewController_searchResultsViewController] = 0;
  *&v1[OBJC_IVAR___CollectionListViewController_searchController] = 0;
  v1[OBJC_IVAR___CollectionListViewController_searchActive] = 0;
  *&v1[OBJC_IVAR___CollectionListViewController_cancellables] = &_swiftEmptySetSingleton;
  v5 = &v1[OBJC_IVAR___CollectionListViewController_searchResultSelectedHandler];
  *v5 = 0;
  v5[1] = 0;
  v6 = &v1[OBJC_IVAR___CollectionListViewController_supportArticleURLHandler];
  *v6 = 0;
  v6[1] = 0;
  v7 = *&v1[v3];
  sub_10001E928(&qword_1000B2DC0, type metadata accessor for CollectionListViewModel, &unk_100078420);
  v8 = v7;
  v14 = ObservedObject.init(wrappedValue:)();
  v15 = v9;
  v10 = objc_allocWithZone(sub_10001B4A4(&qword_1000B2DC8, qword_100077C28));
  *&v1[OBJC_IVAR___CollectionListViewController_hostingController] = UIHostingController.init(rootView:)();
  v13.receiver = v1;
  v13.super_class = type metadata accessor for CollectionListViewController();
  v11 = objc_msgSendSuper2(&v13, "initWithCoder:", a1);

  if (v11)
  {
  }

  return v11;
}

void sub_10001C088()
{
  v30.receiver = v0;
  v30.super_class = type metadata accessor for CollectionListViewController();
  objc_msgSendSuper2(&v30, "loadView");
  v1 = *&v0[OBJC_IVAR___CollectionListViewController_hostingController];
  v2 = [v1 view];
  if (v2)
  {
    v3 = v2;
    [v0 addChildViewController:v1];
    v4 = [v0 view];
    if (v4)
    {
      v5 = v4;
      [v4 addSubview:v3];

      [v3 setBackgroundColor:0];
      [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
      v6 = [v0 view];
      if (v6)
      {
        v7 = v6;
        sub_10001B4A4(&qword_1000B2DB0, &qword_100077C20);
        v8 = swift_allocObject();
        *(v8 + 16) = xmmword_100077BC0;
        v9 = [v3 leadingAnchor];
        v10 = [v0 view];
        if (v10)
        {
          v11 = v10;
          v12 = [v10 leadingAnchor];

          v13 = [v9 constraintEqualToAnchor:v12];
          *(v8 + 32) = v13;
          v14 = [v3 topAnchor];
          v15 = [v0 view];
          if (v15)
          {
            v16 = v15;
            v17 = [v15 topAnchor];

            v18 = [v14 constraintEqualToAnchor:v17];
            *(v8 + 40) = v18;
            v19 = [v3 trailingAnchor];
            v20 = [v0 view];
            if (v20)
            {
              v21 = v20;
              v22 = [v20 trailingAnchor];

              v23 = [v19 constraintEqualToAnchor:v22];
              *(v8 + 48) = v23;
              v24 = [v3 bottomAnchor];
              v25 = [v0 view];
              if (v25)
              {
                v26 = v25;
                v27 = [v25 bottomAnchor];

                v28 = [v24 constraintEqualToAnchor:v27];
                *(v8 + 56) = v28;
                sub_10001AC14(0, &qword_1000B2DB8, NSLayoutConstraint_ptr);
                isa = Array._bridgeToObjectiveC()().super.isa;

                [v7 addConstraints:isa];

                [v1 didMoveToParentViewController:v0];
                return;
              }

LABEL_15:
              __break(1u);
              return;
            }

LABEL_14:
            __break(1u);
            goto LABEL_15;
          }

LABEL_13:
          __break(1u);
          goto LABEL_14;
        }

LABEL_12:
        __break(1u);
        goto LABEL_13;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_10001C470()
{
  v1 = v0;
  v2 = sub_10001B4A4(&qword_1000B2D68, &qword_100077C00);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23 - v4;
  v23 = sub_10001B4A4(&qword_1000B2D70, &qword_100077C08);
  v6 = *(v23 - 8);
  __chkstk_darwin(v23);
  v8 = &v23 - v7;
  v9 = sub_10001B4A4(&qword_1000B2D78, &unk_100077C10);
  v24 = *(v9 - 8);
  v25 = v9;
  __chkstk_darwin(v9);
  v11 = &v23 - v10;
  v12 = type metadata accessor for CollectionListViewController();
  v26.receiver = v0;
  v26.super_class = v12;
  objc_msgSendSuper2(&v26, "viewDidLoad");
  v13 = [v0 navigationController];
  if (v13)
  {
    v14 = v13;
    v15 = [v13 navigationBar];

    [v15 setPrefersLargeTitles:1];
  }

  v16 = [v1 view];
  if (v16)
  {
    v17 = v16;
    v18 = [objc_opt_self() clearColor];
    [v17 setBackgroundColor:v18];

    v19 = *&v1[OBJC_IVAR___CollectionListViewController_viewModel];
    swift_beginAccess();
    v20 = v19;
    sub_10001B4A4(&qword_1000B2D80, &qword_100078250);
    Published.projectedValue.getter();
    swift_endAccess();

    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_10001E8B8(&qword_1000B2D88, &qword_1000B2D68, &qword_100077C00, &protocol conformance descriptor for Published<A>.Publisher);
    Publisher.filter(_:)();

    (*(v3 + 8))(v5, v2);
    sub_10001E8B8(&qword_1000B2D90, &qword_1000B2D70, &qword_100077C08, &protocol conformance descriptor for Publishers.Filter<A>);
    v21 = v23;
    Publisher<>.removeDuplicates()();
    (*(v6 + 8))(v8, v21);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_10001E8B8(&qword_1000B2D98, &qword_1000B2D78, &unk_100077C10, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
    v22 = v25;
    Publisher<>.sink(receiveValue:)();

    (*(v24 + 8))(v11, v22);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    sub_10001D1E0();
  }

  else
  {
    __break(1u);
  }
}

BOOL sub_10001C94C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 1;
  }

  v3 = Strong;
  v4 = [Strong traitCollection];

  v5 = [v4 horizontalSizeClass];
  return v5 != 0;
}

void sub_10001C9DC(char *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_10001CA38(v2);
  }
}

void sub_10001CA38(char a1)
{
  v2 = v1;
  if (a1)
  {
    v3 = OBJC_IVAR___CollectionListViewController_searchResultsViewModel;
    v4 = *&v1[OBJC_IVAR___CollectionListViewController_searchResultsViewModel];
    dispatch thunk of SearchResultsViewModel.searchResultEligibilityFilter.setter();

    v5 = *&v2[v3];
    dispatch thunk of SearchResultsViewModel.searchResultCollectionResolver.setter();

    v6 = *&v2[v3];
    dispatch thunk of SearchResultsViewModel.searchResultUserGuideResolver.setter();

    v7 = *&v2[OBJC_IVAR___CollectionListViewController_searchResultSelectedHandler];
    v8 = *&v2[OBJC_IVAR___CollectionListViewController_searchResultSelectedHandler + 8];
    v9 = *&v2[v3];
    sub_10001E900(v7, v8);
    dispatch thunk of SearchResultsViewModel.searchResultSelected.setter();

    v10 = *&v2[OBJC_IVAR___CollectionListViewController_supportArticleURLHandler];
    v11 = *&v2[OBJC_IVAR___CollectionListViewController_supportArticleURLHandler + 8];
    v12 = *&v2[v3];
    sub_10001E900(v10, v11);
    dispatch thunk of SearchResultsViewModel.supportArticleURLHandler.setter();

    v13 = *&v2[v3];
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v14 = v13;

    dispatch thunk of SearchResultsViewModel.searchResultsSeeAllHandler.setter();

    v15 = *&v2[v3];
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v16 = v15;

    dispatch thunk of SearchResultsViewModel.searchResultScrollHandler.setter();

    v17 = *&v2[v3];
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v18 = v17;

    dispatch thunk of SearchResultsViewModel.searchResultsUpdated.setter();

    v19 = *&v2[v3];
    v20 = objc_allocWithZone(type metadata accessor for SearchResultsViewController());
    v21 = v19;
    v22 = SearchResultsViewController.init(_:)();
    v23 = *&v2[OBJC_IVAR___CollectionListViewController_searchResultsViewController];
    *&v2[OBJC_IVAR___CollectionListViewController_searchResultsViewController] = v22;
    v24 = v22;

    v25 = [objc_allocWithZone(UISearchController) initWithSearchResultsController:v24];
    v26 = OBJC_IVAR___CollectionListViewController_searchController;
    v27 = *&v2[OBJC_IVAR___CollectionListViewController_searchController];
    *&v2[OBJC_IVAR___CollectionListViewController_searchController] = v25;
    v28 = v25;

    if (v28)
    {
      [v28 setSearchResultsUpdater:v2];
    }

    v29 = *&v2[v26];
    if (v29)
    {
      [v29 setDelegate:v2];
      v30 = *&v2[v26];
      if (v30)
      {
        [v30 setHidesNavigationBarDuringPresentation:1];
        v31 = *&v2[v26];
        if (v31)
        {
          [v31 setObscuresBackgroundDuringPresentation:0];
          v32 = *&v2[v26];
          if (v32)
          {
            v33 = [v32 searchBar];
            [v33 setDelegate:v2];

            v34 = *&v2[v26];
            if (v34)
            {
              v35 = [v34 searchBar];
              [v35 setAutocorrectionType:1];

              v36 = *&v2[v26];
              if (v36)
              {
                v37 = [v36 searchBar];
                [v37 setAutocapitalizationType:0];
              }
            }
          }
        }
      }
    }

    v38 = [v2 navigationItem];
    v39 = *&v2[v26];
    [v38 setSearchController:v39];

    v40 = [v2 navigationItem];
    [v40 setHidesSearchBarWhenScrolling:0];

    [v2 setDefinesPresentationContext:1];
  }

  else
  {
    v41 = [v1 navigationController];
    if (v41)
    {
      v42 = v41;
    }

    v43 = [v2 navigationItem];
    [v43 setSearchController:0];

    v44 = *&v2[OBJC_IVAR___CollectionListViewController_searchController];
    *&v2[OBJC_IVAR___CollectionListViewController_searchController] = 0;

    v2[OBJC_IVAR___CollectionListViewController_searchActive] = 0;
    v45 = *&v2[OBJC_IVAR___CollectionListViewController_searchResultsViewModel];
    dispatch thunk of SearchResultsViewModel.reset()();

    sub_10001D1E0();
  }
}

void sub_10001D1E0()
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v2 - 8);
  if (*(v0 + OBJC_IVAR___CollectionListViewController_searchActive) == 1)
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v3 = String._bridgeToObjectiveC()();

    [v0 setTitle:v3];
  }

  else
  {
    if (qword_1000B2B40 != -1)
    {
      swift_once();
    }

    v4 = String._bridgeToObjectiveC()();
    [v0 setTitle:v4];
  }
}

id sub_10001D4B8(uint64_t a1, uint64_t a2, SEL *a3)
{
  type metadata accessor for TPSUIAppController();
  v4 = static TPSUIAppController.shared.getter();
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 *a3];

  return v6;
}

void sub_10001D534(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_10001AC14(0, &qword_1000B2DA8, UIViewController_ptr);
    v4 = *&v3[OBJC_IVAR___CollectionListViewController_searchResultsViewModel];
    v5 = static UIViewController._makeSearchResultsListViewController(for:viewModel:)();

    if (v5)
    {
      v6 = [v3 navigationController];
      if (v6)
      {
        v7 = v6;
        [v6 pushViewController:v5 animated:1];
      }

      v3 = v5;
    }
  }
}

void sub_10001D61C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong dismissSearch];
  }
}

void sub_10001D678(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR___CollectionListViewController_searchResultsViewController);
    if (!v3)
    {
LABEL_13:

      return;
    }

    v4 = *(Strong + OBJC_IVAR___CollectionListViewController_searchResultsViewModel);
    v5 = v3;
    v6 = v4;
    v7 = dispatch thunk of SearchResultsViewModel.hasStartedSearch.getter();

    v8 = objc_opt_self();
    v9 = &selRef_systemBackgroundColor;
    if ((v7 & 1) == 0)
    {
      v9 = &selRef_clearColor;
    }

    v10 = [v8 *v9];
    v11 = [v5 view];
    if (v11)
    {
      v12 = v11;
      v13 = [v11 backgroundColor];

      if (v13)
      {
        sub_10001AC14(0, &qword_1000B2DA0, UIColor_ptr);
        v14 = v10;
        v15 = static NSObject.== infix(_:_:)();

        if (v15)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v16 = v10;
      }

      v17 = [v5 view];
      if (v17)
      {
        v18 = v17;
        [v17 setBackgroundColor:v10];

        v14 = v10;
LABEL_12:

        v2 = v14;
        goto LABEL_13;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

uint64_t sub_10001D838(void *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v24 = *(v5 - 8);
  v25 = v5;
  __chkstk_darwin(v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchTime();
  v23 = v8;
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v21 - v13;
  sub_10001AC14(0, &qword_1000B2D48, OS_dispatch_queue_ptr);
  v21 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v22 = *(v9 + 8);
  v22(v12, v8);
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = a1;
  aBlock[4] = sub_10001E840;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002086C;
  aBlock[3] = &unk_1000A35D8;
  v17 = _Block_copy(aBlock);
  v18 = a1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10001E928(&qword_1000B2D50, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10001B4A4(&qword_1000B2D58, &unk_100077D40);
  sub_10001E8B8(&qword_1000B2D60, &qword_1000B2D58, &unk_100077D40, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v19 = v21;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v17);

  (*(v26 + 8))(v4, v2);
  (*(v24 + 8))(v7, v25);
  return (v22)(v14, v23);
}

void sub_10001DC3C(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + OBJC_IVAR___CollectionListViewController_searchController);
    v5 = Strong;
    v6 = v4;

    if (v4)
    {
      v7 = [v6 searchBar];

      dispatch thunk of TPSAppSearchQuery.searchTerm.getter();
      v8 = String._bridgeToObjectiveC()();

      [v7 setText:v8];
    }
  }

  swift_beginAccess();
  v9 = swift_unknownObjectWeakLoadStrong();
  if (v9)
  {
    v10 = *(v9 + OBJC_IVAR___CollectionListViewController_searchController);
    v11 = v9;
    v12 = v10;

    if (v10)
    {
      v13 = [v12 searchBar];

      [v13 becomeFirstResponder];
    }
  }

  swift_beginAccess();
  v14 = swift_unknownObjectWeakLoadStrong();
  if (v14)
  {
    v15 = v14;
    v16 = *(v14 + OBJC_IVAR___CollectionListViewController_searchResultsViewModel);

    v17 = a2;
    dispatch thunk of SearchResultsViewModel.searchQuery.setter();
  }
}

void sub_10001DE4C(char *a1, uint64_t a2, SEL *a3)
{
  v3 = *&a1[OBJC_IVAR___CollectionListViewController_searchController];
  if (v3)
  {
    v6 = a1;
    v5 = [v3 searchBar];
    [v5 *a3];
  }
}

void sub_10001DED8(void *a1)
{
  v2 = [a1 searchBar];
  v3 = [v2 text];

  if (v3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v4 = *(v1 + OBJC_IVAR___CollectionListViewController_searchResultsViewModel);
    v5 = objc_allocWithZone(type metadata accessor for TPSAppSearchQuery());
    v6 = v4;
    TPSAppSearchQuery.init(searchTerm:origin:identifier:)();
    dispatch thunk of SearchResultsViewModel.searchQuery.setter();
  }
}

void sub_10001E1F4(uint64_t a1)
{
  if (v1[OBJC_IVAR___CollectionListViewController_canIncreaseViewCount] == 1)
  {
    v2 = v1;
    v4 = *&v1[OBJC_IVAR___CollectionListViewController_viewModel];
    v5 = sub_10002FFE4();

    if (v5)
    {
      [v2 cancelAnalyticsIncreaseCountViewForCollectionsViewDelay];
      v6 = [objc_opt_self() proxyWithViewMethod:a1];
      [v2 performSelector:"analyticsIncreaseCountViewForCollectionsView:" withObject:v6 afterDelay:kTipsAnalyticsDelayedEventInterval];
    }
  }
}

void sub_10001E360(void *a1)
{
  v2 = v1;
  [v1 cancelAnalyticsIncreaseCountViewForCollectionsViewDelay];
  if (v1[OBJC_IVAR___CollectionListViewController_canIncreaseViewCount] == 1)
  {
    v4 = *&v1[OBJC_IVAR___CollectionListViewController_viewModel];
    v5 = sub_10002FFE4();

    if (v5)
    {
      v6 = TPSAnalyticsContentStyleLandingPage;
      v7 = [a1 viewMethod];
      if (!v7)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v7 = String._bridgeToObjectiveC()();
      }

      v8 = objc_opt_self();
      v9 = [v2 traitCollection];
      v10 = [v8 analyticsViewModeForTraitCollection:v9];

      v11 = [v8 eventWithContentID:v6 collectionID:v6 correlationID:0 clientConditionID:0 viewMethod:v7 viewMode:v10];
      [v11 log];
    }
  }
}

id sub_10001E56C(void *a1)
{
  v3 = OBJC_IVAR___CollectionListViewController_viewModel;
  *&v1[v3] = [objc_allocWithZone(type metadata accessor for CollectionListViewModel(0)) init];
  v1[OBJC_IVAR___CollectionListViewController_canIncreaseViewCount] = 1;
  v4 = OBJC_IVAR___CollectionListViewController_searchResultsViewModel;
  *&v1[v4] = [objc_allocWithZone(type metadata accessor for SearchResultsViewModel()) init];
  *&v1[OBJC_IVAR___CollectionListViewController_searchResultsViewController] = 0;
  *&v1[OBJC_IVAR___CollectionListViewController_searchController] = 0;
  v1[OBJC_IVAR___CollectionListViewController_searchActive] = 0;
  *&v1[OBJC_IVAR___CollectionListViewController_cancellables] = &_swiftEmptySetSingleton;
  v5 = &v1[OBJC_IVAR___CollectionListViewController_searchResultSelectedHandler];
  *v5 = 0;
  v5[1] = 0;
  v6 = &v1[OBJC_IVAR___CollectionListViewController_supportArticleURLHandler];
  *v6 = 0;
  v6[1] = 0;
  if (a1)
  {
    v7 = *&v1[v3];
    *&v1[v3] = a1;
    v8 = a1;
  }

  v9 = *&v1[v3];
  sub_10001E928(&qword_1000B2DC0, type metadata accessor for CollectionListViewModel, &unk_100078420);
  v10 = v9;
  v15 = ObservedObject.init(wrappedValue:)();
  v16 = v11;
  v12 = objc_allocWithZone(sub_10001B4A4(&qword_1000B2DC8, qword_100077C28));
  *&v1[OBJC_IVAR___CollectionListViewController_hostingController] = UIHostingController.init(rootView:)();
  v14.receiver = v1;
  v14.super_class = type metadata accessor for CollectionListViewController();
  return objc_msgSendSuper2(&v14, "initWithNibName:bundle:", 0, 0);
}

void sub_10001E70C()
{
  v1 = OBJC_IVAR___CollectionListViewController_searchActive;
  if (v0[OBJC_IVAR___CollectionListViewController_searchActive] == 1)
  {
    v2 = v0;
    v3 = OBJC_IVAR___CollectionListViewController_searchResultsViewModel;
    v4 = *&v0[OBJC_IVAR___CollectionListViewController_searchResultsViewModel];
    v5 = dispatch thunk of SearchResultsViewModel.queryCount.getter();

    if (!v5)
    {
      [v2 dismissViewControllerAnimated:1 completion:0];
      v2[v1] = 0;
      v6 = *&v2[v3];
      dispatch thunk of SearchResultsViewModel.reset()();

      sub_10001D1E0();
    }
  }
}

uint64_t sub_10001E7C8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001E800()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001E848(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001E860(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10001E8B8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_10001E860(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10001E900(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10001E928(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10001E970(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10001E980()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

void sub_10001E9B8(NSURL *a1@<X8>)
{
  v2 = *(v1 + 16);
  URL._bridgeToObjectiveC()(a1);
  v4 = v3;
  (*(v2 + 16))(v2, v3);
}

id sub_10001EA20()
{
  v1 = v0;
  v2 = [objc_allocWithZone(type metadata accessor for SearchResultsViewModel()) init];
  [v1 setSearchResultViewModel:v2];

  v3 = [v1 searchResultViewModel];
  if (v3)
  {
    v4 = v3;
    dispatch thunk of SearchResultsViewModel.supportsHighlight.setter();
  }

  v5 = [v1 searchResultViewModel];
  if (v5)
  {
    v6 = v5;
    dispatch thunk of SearchResultsViewModel.presentAsPopover.setter();
  }

  v7 = [v1 searchResultViewModel];
  if (v7)
  {
    v8 = v7;
    swift_allocObject();
    swift_unknownObjectWeakInit();

    dispatch thunk of SearchResultsViewModel.searchResultEligibilityFilter.setter();
  }

  v9 = [v1 searchResultViewModel];
  if (v9)
  {
    v10 = v9;
    swift_allocObject();
    swift_unknownObjectWeakInit();

    dispatch thunk of SearchResultsViewModel.searchResultCollectionResolver.setter();
  }

  v11 = [v1 searchResultViewModel];
  if (v11)
  {
    v12 = v11;
    swift_allocObject();
    swift_unknownObjectWeakInit();

    dispatch thunk of SearchResultsViewModel.searchResultUserGuideResolver.setter();
  }

  v13 = [v1 searchResultViewModel];
  if (v13)
  {
    v14 = v13;
    swift_allocObject();
    swift_unknownObjectWeakInit();

    dispatch thunk of SearchResultsViewModel.searchResultSelected.setter();
  }

  v15 = [v1 searchResultViewModel];
  if (v15)
  {
    v16 = v15;
    swift_allocObject();
    swift_unknownObjectWeakInit();

    dispatch thunk of SearchResultsViewModel.searchResultsSeeAllHandler.setter();
  }

  v17 = [v1 searchResultViewModel];
  if (v17)
  {
    v18 = v17;
    swift_allocObject();
    swift_unknownObjectWeakInit();

    dispatch thunk of SearchResultsViewModel.searchResultScrollHandler.setter();
  }

  v19 = [v1 searchResultViewModel];
  if (v19)
  {
    v20 = v19;
    swift_allocObject();
    swift_unknownObjectWeakInit();

    dispatch thunk of SearchResultsViewModel.searchResultsUpdated.setter();
  }

  result = [v1 searchResultViewModel];
  if (result)
  {
    v22 = result;
    swift_allocObject();
    swift_unknownObjectWeakInit();

    dispatch thunk of SearchResultsViewModel.supportArticleURLHandler.setter();
  }

  return result;
}

void sub_10001EE6C(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [Strong appController];

    if (v7)
    {
      v8 = String._bridgeToObjectiveC()();
      [v7 *a4];
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_10001EF38(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    [result dismissPresentedSearchResultsViewController:1];
    [v4 dismissSearch];
    result = [v4 delegate];
    if (result)
    {
      v5 = result;
      if ([result respondsToSelector:"tipsViewController:didSelectSearchResult:"])
      {
        v6 = type metadata accessor for SearchResult.Item.Value();
        v19[3] = v6;
        v7 = sub_10001F7A4(v19);
        (*(*(v6 - 8) + 16))(v7, a1, v6);
        sub_10001F808(v19, v17, &qword_1000B2E90, &unk_100077E50);
        v8 = v18;
        if (v18)
        {
          v9 = sub_10001F8D0(v17, v18);
          v10 = *(v8 - 8);
          __chkstk_darwin(v9);
          v12 = &v17[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v10 + 16))(v12);
          v13 = v4;
          v14 = _bridgeAnythingToObjectiveC<A>(_:)();
          (*(v10 + 8))(v12, v8);
          sub_10001F914(v17);
        }

        else
        {
          v15 = v4;
          v14 = 0;
        }

        [v5 tipsViewController:v4 didSelectSearchResult:v14];
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
        return sub_10001F870(v19, &qword_1000B2E90, &unk_100077E50);
      }

      else
      {

        return swift_unknownObjectRelease();
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_10001F19C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong searchResultViewModel];
    if (v4)
    {
      v5 = v4;
      sub_10001F758();
      v6 = static UIViewController._makeSearchResultsListViewController(for:viewModel:)();
      if (v6)
      {
        v7 = v6;
        v8 = [v3 searchResultsNavigationController];
        if (v8)
        {
          v9 = v8;
          [v8 pushViewController:v7 animated:1];

          v3 = v5;
          v5 = v7;
          v7 = v9;
        }

        v3 = v5;
        v5 = v7;
      }

      v3 = v5;
    }
  }
}

void sub_10001F290(uint64_t a1, const char **a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *a2;
    v5 = Strong;
    [Strong v4];
  }
}

id sub_10001F2EC(uint64_t a1, uint64_t a2)
{
  v3 = sub_10001B4A4(&unk_1000B3380, &qword_100079940);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v17 - v7;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = result;
    [result dismissPresentedSearchResultsViewController:1];
    [v10 dismissSearch];
    result = [v10 delegate];
    if (result)
    {
      v11 = result;
      if ([result respondsToSelector:"tipsViewControllerHandleSupportArticleURL:"])
      {
        v12 = type metadata accessor for URL();
        v13 = *(v12 - 8);
        (*(v13 + 16))(v8, a1, v12);
        (*(v13 + 56))(v8, 0, 1, v12);
        sub_10001F808(v8, v6, &unk_1000B3380, &qword_100079940);
        v15 = 0;
        if ((*(v13 + 48))(v6, 1, v12) != 1)
        {
          URL._bridgeToObjectiveC()(v14);
          v15 = v16;
          (*(v13 + 8))(v6, v12);
        }

        [v11 tipsViewControllerHandleSupportArticleURL:v15];
        swift_unknownObjectRelease();

        return sub_10001F870(v8, &unk_1000B3380, &qword_100079940);
      }

      else
      {

        return swift_unknownObjectRelease();
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_10001F5C0(void *a1, uint64_t a2, SEL *a3)
{
  v7 = a1;
  v4 = [v7 searchController];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 searchBar];

    [v6 *a3];
  }
}

uint64_t sub_10001F654()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_10001F758()
{
  result = qword_1000B2DA8;
  if (!qword_1000B2DA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000B2DA8);
  }

  return result;
}

uint64_t *sub_10001F7A4(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_10001F808(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10001B4A4(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10001F870(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10001B4A4(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void *sub_10001F8D0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10001F914(void *a1)
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

void sub_10001FCC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + OBJC_IVAR___TPSAppCoordinator_mainViewController);
  if (a2)
  {
    v7 = v6;
    v8 = String._bridgeToObjectiveC()();
    if (a4)
    {
LABEL_3:
      v9 = String._bridgeToObjectiveC()();
      goto LABEL_6;
    }
  }

  else
  {
    v10 = v6;
    v8 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v9 = 0;
LABEL_6:
  v11 = v9;
  [v6 displayCollectionID:v8 tipID:?];
}

id sub_10001FE60()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TPSAppCoordinator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100020004()
{
  v1 = OBJC_IVAR___TPSAppCoordinator_mainViewController;
  v2 = *(v0 + OBJC_IVAR___TPSAppCoordinator_mainViewController);
  v3 = String._bridgeToObjectiveC()();
  [v2 displayCollectionID:v3 tipID:0];

  [*(v0 + v1) showTOCView];
  v4 = [*(v0 + v1) tipListViewController];
  v5 = String._bridgeToObjectiveC()();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  [v4 runTest:v5 options:isa];
}

void sub_100020200()
{
  v1 = OBJC_IVAR___TPSAppCoordinator_mainViewController;
  v2 = [*(v0 + OBJC_IVAR___TPSAppCoordinator_mainViewController) appController];
  v3 = [v2 collections];

  if (!v3)
  {
    goto LABEL_10;
  }

  sub_1000203F4();
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v4 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_9:

LABEL_10:
    v8 = 0;
    goto LABEL_11;
  }

LABEL_4:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v5 = *(v4 + 32);
  }

  v8 = v5;

LABEL_11:
  v6 = [*(v0 + v1) tipsByCollectionViewController];
  if (v8)
  {
    v7 = [v8 identifier];
    if (!v7)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = String._bridgeToObjectiveC()();
    }
  }

  else
  {
    v7 = 0;
  }

  [v6 updateWithCollectionID:v7 tipID:0];

  [*(v0 + v1) showTipsView];
}

unint64_t sub_1000203F4()
{
  result = qword_1000B2EC8;
  if (!qword_1000B2EC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000B2EC8);
  }

  return result;
}

uint64_t sub_100020454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10001B4A4(&qword_1000B2ED0, &unk_100077C70);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100020534(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10001B4A4(&qword_1000B2ED0, &unk_100077C70);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for FeaturedCollectionView(uint64_t a1)
{
  result = qword_1000B2F30;
  if (!qword_1000B2F30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100020648(uint64_t a1)
{
  sub_100020714(319);
  if (v1 <= 0x3F)
  {
    sub_10002076C(319);
    if (v2 <= 0x3F)
    {
      sub_100020800();
      if (v3 <= 0x3F)
      {
        sub_10001AC14(319, &qword_1000B2EC8, TPSCollection_ptr);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100020714(uint64_t a1)
{
  if (!qword_1000B2F40)
  {
    type metadata accessor for ColorScheme();
    v1 = type metadata accessor for Environment();
    if (!v2)
    {
      atomic_store(v1, &qword_1000B2F40);
    }
  }
}

void sub_10002076C(uint64_t a1)
{
  if (!qword_1000B2F48)
  {
    type metadata accessor for CollectionListViewModel(255);
    sub_100023970(&qword_1000B2DC0, type metadata accessor for CollectionListViewModel, &unk_100078420);
    v1 = type metadata accessor for ObservedObject();
    if (!v2)
    {
      atomic_store(v1, &qword_1000B2F48);
    }
  }
}

void sub_100020800()
{
  if (!qword_1000B2F50)
  {
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_1000B2F50);
    }
  }
}

uint64_t sub_10002086C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_1000208B0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10001B4A4(&qword_1000B2FB0, &qword_100077D10);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_100023544(v2, &v14 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for ColorScheme();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

void sub_100020A98(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = swift_getKeyPath();
  sub_10001B4A4(&qword_1000B2FB0, &qword_100077D10);
  swift_storeEnumTagMultiPayload();
  v6 = type metadata accessor for FeaturedCollectionView(0);
  v7 = a3 + v6[6];
  State.init(wrappedValue:)();
  *v7 = v21;
  *(v7 + 1) = v22;
  v8 = (a3 + v6[5]);
  type metadata accessor for CollectionListViewModel(0);
  sub_100023970(&qword_1000B2DC0, type metadata accessor for CollectionListViewModel, &unk_100078420);
  v9 = a1;
  *v8 = ObservedObject.init(wrappedValue:)();
  v8[1] = v10;
  *(a3 + v6[8]) = a2;
  v11 = a2;
  v12 = [v11 identifier];
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v16 = [v11 title];
  if (v16)
  {
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;
  }

  else
  {

    v17 = 0;
    v19 = 0xE000000000000000;
  }

  v20 = (a3 + v6[7]);
  *v20 = v13;
  v20[1] = v15;
  v20[2] = v17;
  v20[3] = v19;
}

uint64_t sub_100020C48@<X0>(uint64_t a1@<X8>)
{
  v47 = a1;
  v2 = sub_10001B4A4(&qword_1000B3030, &qword_100077D50);
  __chkstk_darwin(v2 - 8);
  v4 = &v43 - v3;
  v44 = sub_10001B4A4(&qword_1000B3038, &qword_100077D58);
  v5 = *(v44 - 8);
  __chkstk_darwin(v44);
  v7 = &v43 - v6;
  v43 = sub_10001B4A4(&qword_1000B3040, &qword_100077D60);
  __chkstk_darwin(v43);
  v9 = &v43 - v8;
  v46 = sub_10001B4A4(&qword_1000B3048, &qword_100077D68);
  __chkstk_darwin(v46);
  v11 = &v43 - v10;
  v45 = *(v1 + *(type metadata accessor for FeaturedCollectionView(0) + 32));
  v12 = [v45 featuredTitle];
  if (v12)
  {
    v13 = v12;
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0xE000000000000000;
  }

  v48 = v14;
  v49 = v16;
  sub_1000235B4();
  v17 = Text.init<A>(_:)();
  v19 = v18;
  v48 = v17;
  v49 = v18;
  v21 = v20 & 1;
  v50 = v20 & 1;
  v51 = v22;
  View.avoidsOrphans(_:)();
  sub_100023608(v17, v19, v21);

  sub_10001B4A4(&qword_1000B3050, &qword_100077D70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100077C60;
  v24 = static Edge.Set.top.getter();
  *(inited + 32) = v24;
  v25 = static Edge.Set.horizontal.getter();
  *(inited + 33) = v25;
  v26 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v24)
  {
    v26 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v25)
  {
    v26 = Edge.Set.init(rawValue:)();
  }

  (*(v5 + 32))(v9, v7, v44);
  v27 = &v9[*(v43 + 36)];
  *v27 = v26;
  *(v27 + 8) = 0u;
  *(v27 + 24) = 0u;
  v27[40] = 1;
  v28 = type metadata accessor for Font.Design();
  (*(*(v28 - 8) + 56))(v4, 1, 1, v28);
  static Font.system(size:weight:design:)();
  sub_10001F870(v4, &qword_1000B3030, &qword_100077D50);
  static Font.Weight.bold.getter();
  v29 = Font.weight(_:)();

  KeyPath = swift_getKeyPath();
  sub_100023628(v9, v11, &qword_1000B3040, &qword_100077D60);
  v31 = v45;
  v32 = &v11[*(v46 + 36)];
  *v32 = KeyPath;
  v32[1] = v29;
  v33 = [v31 featuredContent];
  if (v33 && (v34 = v33, v35 = [v33 labelStyle], v34, v35 == 1))
  {
    v36 = static Color.white.getter();
  }

  else
  {
    v36 = static Color.primary.getter();
  }

  v37 = v36;
  v38 = swift_getKeyPath();
  v39 = v11;
  v40 = v47;
  sub_100023628(v39, v47, &qword_1000B3048, &qword_100077D68);
  result = sub_10001B4A4(&qword_1000B3058, &qword_100077DD8);
  v42 = (v40 + *(result + 36));
  *v42 = v38;
  v42[1] = v37;
  return result;
}

uint64_t sub_100021100@<X0>(uint64_t a1@<X8>)
{
  v80 = a1;
  v81 = type metadata accessor for AccessibilityChildBehavior();
  v79 = *(v81 - 8);
  __chkstk_darwin(v81);
  v78 = &v63 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10001B4A4(&unk_1000B3380, &qword_100079940);
  v4 = __chkstk_darwin(v3 - 8);
  v64 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v63 = &v63 - v6;
  v7 = type metadata accessor for ColorScheme();
  v8 = *(v7 - 8);
  v72 = v7;
  v73 = v8;
  __chkstk_darwin(v7);
  v67 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10001B4A4(&qword_1000B2F90, &qword_100077CF0);
  __chkstk_darwin(v10 - 8);
  v12 = &v63 - v11;
  v13 = type metadata accessor for FeaturedCollectionView(0);
  v65 = v13;
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v16 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_10001B4A4(&qword_1000B2F98, &qword_100077CF8);
  __chkstk_darwin(v66);
  v18 = &v63 - v17;
  v19 = sub_10001B4A4(&qword_1000B2FA0, &qword_100077D00);
  v74 = *(v19 - 8);
  v75 = v19;
  __chkstk_darwin(v19);
  v82 = &v63 - v20;
  v76 = sub_10001B4A4(&qword_1000B2FA8, &qword_100077D08);
  __chkstk_darwin(v76);
  v77 = &v63 - v21;
  v83 = v1;
  sub_100022DC8(v1, v16);
  v22 = *(v14 + 80);
  v23 = (v22 + 16) & ~v22;
  v24 = swift_allocObject();
  sub_100022E30(v16, v24 + v23);
  v84 = sub_100022E94;
  v85 = v24;
  v25 = v1 + *(v13 + 28);
  v26 = *v25;
  v28 = *(v25 + 16);
  v27 = *(v25 + 24);
  v86 = v26;
  *&v87 = v28;
  *(&v87 + 1) = v27;
  sub_100022F14();
  AppEntity.fullyQualifiedIdentifier.getter();
  v29 = type metadata accessor for EntityIdentifier();
  (*(*(v29 - 8) + 56))(v12, 0, 1, v29);
  sub_10001B4A4(&qword_1000B2FC0, &qword_100077D18);
  sub_10001E8B8(&qword_1000B2FC8, &qword_1000B2FC0, &qword_100077D18, &protocol conformance descriptor for GeometryReader<A>);
  View.appEntityIdentifier(_:)();
  sub_10001F870(v12, &qword_1000B2F90, &qword_100077CF0);

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v30 = &v18[*(sub_10001B4A4(&qword_1000B2FD0, &qword_100077D20) + 36)];
  v31 = v87;
  *v30 = v86;
  *(v30 + 1) = v31;
  *(v30 + 2) = v88;
  v32 = static Alignment.topLeading.getter();
  v34 = v33;
  v35 = &v18[*(sub_10001B4A4(&qword_1000B2FD8, &qword_100077D28) + 36)];
  v36 = v83;
  sub_100020C48(v35);
  v37 = (v35 + *(sub_10001B4A4(&qword_1000B2FE0, &qword_100077D30) + 36));
  v38 = v22;
  *v37 = v32;
  v37[1] = v34;
  v39 = v82;
  sub_100022DC8(v36, v16);
  v40 = swift_allocObject();
  sub_100022E30(v16, v40 + v23);
  v41 = &v18[*(sub_10001B4A4(&qword_1000B2FE8, &qword_100077D38) + 36)];
  *v41 = sub_100022F68;
  v41[1] = v40;
  v41[2] = 0;
  v41[3] = 0;
  sub_100022DC8(v36, v16);
  v42 = swift_allocObject();
  sub_100022E30(v16, v42 + v23);
  v43 = &v18[*(v66 + 36)];
  *v43 = 0;
  *(v43 + 1) = 0;
  *(v43 + 2) = sub_100022F70;
  *(v43 + 3) = v42;
  v44 = v67;
  sub_1000208B0(v67);
  sub_100022DC8(v36, v16);
  v71 = v15;
  v70 = v38;
  v45 = swift_allocObject();
  v68 = v23;
  v69 = v16;
  sub_100022E30(v16, v45 + v23);
  sub_10002308C(&qword_1000B2FF0, &qword_1000B2F98, &qword_100077CF8, sub_10002305C);
  sub_100023970(&qword_1000B3018, &type metadata accessor for ColorScheme, &protocol conformance descriptor for ColorScheme);
  v46 = v39;
  v47 = v44;
  v48 = v72;
  View.onChange<A>(of:initial:_:)();

  (*(v73 + 8))(v47, v48);
  v49 = v83;
  sub_10001F870(v18, &qword_1000B2F98, &qword_100077CF8);
  if (!*(*(v49 + *(v65 + 20) + 8) + OBJC_IVAR___CollectionListViewModel_featuredAssetViewModel))
  {
    v50 = *(v49 + *(v65 + 32));
    v51 = type metadata accessor for URL();
    v52 = *(*(v51 - 8) + 56);
    v52(v63, 1, 1, v51);
    v52(v64, 1, 1, v51);
    v53 = objc_allocWithZone(type metadata accessor for TPSAssetsInfo());
    v54 = v50;
    TPSAssetsInfo.init(videoIdentifier:videoURL:imageIdentifier:imageURL:)();
    type metadata accessor for TipsContentModel();
    static TipsContentModel.shared()();
    type metadata accessor for DocumentAssetViewModel();
    swift_allocObject();
    v46 = v82;
    DocumentAssetViewModel.init(document:assetsInfo:contentModel:)();
  }

  v55 = v76;

  v56 = v77;
  dispatch thunk of DocumentAssetViewModel.$player.getter();

  v57 = v69;
  sub_100022DC8(v49, v69);
  v58 = v68;
  v59 = swift_allocObject();
  sub_100022E30(v57, v59 + v58);
  (*(v74 + 32))(v56, v46, v75);
  v60 = (v56 + *(v55 + 56));
  *v60 = sub_1000232C4;
  v60[1] = v59;
  v61 = v78;
  static AccessibilityChildBehavior.combine.getter();
  sub_10001E8B8(&qword_1000B3020, &qword_1000B2FA8, &qword_100077D08, &protocol conformance descriptor for SubscriptionView<A, B>);
  View.accessibilityElement(children:)();
  (*(v79 + 8))(v61, v81);
  return sub_10001F870(v56, &qword_1000B2FA8, &qword_100077D08);
}

double sub_100021B1C@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for FeaturedCollectionView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  sub_100022DC8(a1, &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_100022E30(&v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v8 + v7);
  v13 = a1;
  sub_10001B4A4(&qword_1000B3060, &qword_100077DE0);
  sub_100023858();
  Button.init(action:label:)();
  GeometryProxy.size.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v9 = (a2 + *(sub_10001B4A4(&qword_1000B3088, &qword_100077DF0) + 36));
  v10 = v15;
  *v9 = v14;
  v9[1] = v10;
  result = *&v16;
  v9[2] = v16;
  return result;
}

uint64_t sub_100021CC8(uint64_t a1)
{
  result = type metadata accessor for FeaturedCollectionView(0);
  v3 = *(a1 + *(result + 20) + 8) + OBJC_IVAR___CollectionListViewModel_actionHandler;
  v4 = *v3;
  if (*v3)
  {
    v5 = *(v3 + 8);
    v6 = *(a1 + *(result + 32));

    v7 = [v6 identifier];
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    v4(v8, v10);
    sub_10001E970(v4, v5);
  }

  return result;
}

uint64_t sub_100021DAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10001B4A4(&unk_1000B3380, &qword_100079940);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v31 - v8;
  v10 = type metadata accessor for RemoteVideoView();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_10001B4A4(&qword_1000B3090, &qword_100077DF8);
  v14 = *(v34 - 8);
  __chkstk_darwin(v34);
  v16 = &v31 - v15;
  v17 = type metadata accessor for FeaturedCollectionView(0);
  if (!*(*(a1 + *(v17 + 20) + 8) + OBJC_IVAR___CollectionListViewModel_featuredAssetViewModel))
  {
    v32 = *(a1 + *(v17 + 32));
    v18 = type metadata accessor for URL();
    v19 = *(*(v18 - 8) + 56);
    v33 = a2;
    v19(v9, 1, 1, v18);
    v19(v7, 1, 1, v18);
    objc_allocWithZone(type metadata accessor for TPSAssetsInfo());
    v20 = v32;
    TPSAssetsInfo.init(videoIdentifier:videoURL:imageIdentifier:imageURL:)();
    type metadata accessor for TipsContentModel();
    static TipsContentModel.shared()();
    type metadata accessor for DocumentAssetViewModel();
    swift_allocObject();
    a2 = v33;
    DocumentAssetViewModel.init(document:assetsInfo:contentModel:)();
  }

  v35 = 0;

  static Binding.constant(_:)();
  RemoteVideoView.init(viewModel:showReplayButtonAtVideoEnd:isImageLoaded:)();
  sub_100023970(&qword_1000B3070, &type metadata accessor for RemoteVideoView, &protocol conformance descriptor for RemoteVideoView);
  View.assetContentMode(_:)();
  (*(v11 + 8))(v13, v10);
  v21 = (a2 + *(sub_10001B4A4(&qword_1000B3060, &qword_100077DE0) + 36));
  v22 = *(type metadata accessor for RoundedRectangle() + 20);
  v23 = enum case for RoundedCornerStyle.continuous(_:);
  v24 = type metadata accessor for RoundedCornerStyle();
  (*(*(v24 - 8) + 104))(&v21[v22], v23, v24);
  __asm { FMOV            V0.2D, #10.0 }

  *v21 = _Q0;
  *&v21[*(sub_10001B4A4(&qword_1000B3080, &qword_100077DE8) + 36)] = 256;
  return (*(v14 + 32))(a2, v16, v34);
}

uint64_t sub_1000221E0(char a1)
{
  v2 = v1;
  v4 = sub_10001B4A4(&unk_1000B3380, &qword_100079940);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v38[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v38[-v8];
  v10 = type metadata accessor for FeaturedCollectionView(0);
  v11 = (v2 + v10[6]);
  v13 = *(v11 + 1);
  v40 = *v11;
  v12 = v40;
  v41 = v13;
  v39 = a1;
  sub_10001B4A4(&qword_1000B3028, &qword_100078C60);
  State.wrappedValue.setter();
  v40 = v12;
  v41 = v13;
  State.wrappedValue.getter();
  v14 = *(v2 + v10[5] + 8);
  v15 = OBJC_IVAR___CollectionListViewModel_featuredAssetViewModel;
  v16 = *(v14 + OBJC_IVAR___CollectionListViewModel_featuredAssetViewModel);
  if (v39 == 1)
  {
    if (!v16)
    {
      v17 = *(v2 + v10[8]);
      v18 = type metadata accessor for URL();
      v19 = *(*(v18 - 8) + 56);
      v19(v9, 1, 1, v18);
      v19(v7, 1, 1, v18);
      v20 = objc_allocWithZone(type metadata accessor for TPSAssetsInfo());
      v21 = v17;
      TPSAssetsInfo.init(videoIdentifier:videoURL:imageIdentifier:imageURL:)();
      type metadata accessor for TipsContentModel();
      static TipsContentModel.shared()();
      type metadata accessor for DocumentAssetViewModel();
      swift_allocObject();
      DocumentAssetViewModel.init(document:assetsInfo:contentModel:)();
    }

    dispatch thunk of DocumentAssetViewModel.load()();

    if (!*(v14 + v15))
    {
      v27 = *(v2 + v10[8]);
      v28 = type metadata accessor for URL();
      v29 = *(*(v28 - 8) + 56);
      v29(v9, 1, 1, v28);
      v29(v7, 1, 1, v28);
      v30 = objc_allocWithZone(type metadata accessor for TPSAssetsInfo());
      v31 = v27;
      TPSAssetsInfo.init(videoIdentifier:videoURL:imageIdentifier:imageURL:)();
      type metadata accessor for TipsContentModel();
      static TipsContentModel.shared()();
      type metadata accessor for DocumentAssetViewModel();
      swift_allocObject();
      DocumentAssetViewModel.init(document:assetsInfo:contentModel:)();
    }

    dispatch thunk of DocumentAssetViewModel.playVideo()();
  }

  else
  {
    if (!v16)
    {
      v22 = *(v2 + v10[8]);
      v23 = type metadata accessor for URL();
      v24 = *(*(v23 - 8) + 56);
      v24(v9, 1, 1, v23);
      v24(v7, 1, 1, v23);
      v25 = objc_allocWithZone(type metadata accessor for TPSAssetsInfo());
      v26 = v22;
      TPSAssetsInfo.init(videoIdentifier:videoURL:imageIdentifier:imageURL:)();
      type metadata accessor for TipsContentModel();
      static TipsContentModel.shared()();
      type metadata accessor for DocumentAssetViewModel();
      swift_allocObject();
      DocumentAssetViewModel.init(document:assetsInfo:contentModel:)();
    }

    dispatch thunk of DocumentAssetViewModel.cancel()();

    if (!*(v14 + v15))
    {
      v32 = *(v2 + v10[8]);
      v33 = type metadata accessor for URL();
      v34 = *(*(v33 - 8) + 56);
      v34(v9, 1, 1, v33);
      v34(v7, 1, 1, v33);
      v35 = objc_allocWithZone(type metadata accessor for TPSAssetsInfo());
      v36 = v32;
      TPSAssetsInfo.init(videoIdentifier:videoURL:imageIdentifier:imageURL:)();
      type metadata accessor for TipsContentModel();
      static TipsContentModel.shared()();
      type metadata accessor for DocumentAssetViewModel();
      swift_allocObject();
      DocumentAssetViewModel.init(document:assetsInfo:contentModel:)();
    }

    dispatch thunk of DocumentAssetViewModel.resetVideo()();
  }
}

void sub_10002272C(uint64_t a1, char *a2, uint64_t a3)
{
  type metadata accessor for FeaturedCollectionView(0);
  sub_10001B4A4(&qword_1000B3028, &qword_100078C60);
  State.wrappedValue.getter();
  sub_10002D850(a2, v4);
}

uint64_t sub_1000227B8(void **a1, uint64_t a2)
{
  v39 = type metadata accessor for DispatchWorkItemFlags();
  v42 = *(v39 - 8);
  __chkstk_darwin(v39);
  v38 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v40 = *(v5 - 8);
  v41 = v5;
  __chkstk_darwin(v5);
  v37 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FeaturedCollectionView(0);
  v35 = *(v7 - 8);
  v8 = *(v35 + 64);
  __chkstk_darwin(v7);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchTime();
  v11 = *(v10 - 8);
  v43 = v10;
  v44 = v11;
  v12 = __chkstk_darwin(v10);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v34 = &v33 - v15;
  v16 = type metadata accessor for ColorScheme();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *a1;
  sub_1000208B0(v19);
  sub_10002D850(v19, 0);
  (*(v17 + 8))(v19, v16);
  sub_10001AC14(0, &qword_1000B2D48, OS_dispatch_queue_ptr);
  v20 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v21 = *(v44 + 8);
  v44 += 8;
  v36 = v21;
  v21(v14, v43);
  sub_100022DC8(a2, v9);
  v22 = (*(v35 + 80) + 16) & ~*(v35 + 80);
  v23 = (v8 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  sub_100022E30(v9, v24 + v22);
  v25 = v33;
  *(v24 + v23) = v33;
  aBlock[4] = sub_1000234A0;
  aBlock[5] = v24;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002086C;
  aBlock[3] = &unk_1000A3768;
  v26 = _Block_copy(aBlock);
  v27 = v25;

  v28 = v37;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100023970(&qword_1000B2D50, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10001B4A4(&qword_1000B2D58, &unk_100077D40);
  sub_10001E8B8(&qword_1000B2D60, &qword_1000B2D58, &unk_100077D40, &protocol conformance descriptor for [A]);
  v30 = v38;
  v29 = v39;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v31 = v34;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v26);

  (*(v42 + 8))(v30, v29);
  (*(v40 + 8))(v28, v41);
  return v36(v31, v43);
}

void *sub_100022D18(uint64_t a1, void *a2)
{
  type metadata accessor for FeaturedCollectionView(0);
  sub_10001B4A4(&qword_1000B3028, &qword_100078C60);
  result = State.wrappedValue.getter();
  if (v4 == 1)
  {
    return [a2 play];
  }

  return result;
}

uint64_t sub_100022DC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeaturedCollectionView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100022E30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeaturedCollectionView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_100022E94@<D0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FeaturedCollectionView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100021B1C(v4, a1);
}

unint64_t sub_100022F14()
{
  result = qword_1000B2FB8;
  if (!qword_1000B2FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B2FB8);
  }

  return result;
}

void sub_100022FDC(uint64_t a1, char *a2)
{
  v5 = *(type metadata accessor for FeaturedCollectionView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_10002272C(a1, a2, v6);
}

uint64_t sub_10002308C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10001E860(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100023110()
{
  result = qword_1000B3000;
  if (!qword_1000B3000)
  {
    sub_10001E860(&qword_1000B2FD8, &qword_100077D28);
    sub_1000231C8();
    sub_10001E8B8(&qword_1000B3010, &qword_1000B2FE0, &qword_100077D30, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3000);
  }

  return result;
}

unint64_t sub_1000231C8()
{
  result = qword_1000B3008;
  if (!qword_1000B3008)
  {
    sub_10001E860(&qword_1000B2FD0, &qword_100077D20);
    sub_10001E860(&qword_1000B2FC0, &qword_100077D18);
    sub_10001E8B8(&qword_1000B2FC8, &qword_1000B2FC0, &qword_100077D18, &protocol conformance descriptor for GeometryReader<A>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3008);
  }

  return result;
}

uint64_t sub_1000232C4(void **a1)
{
  v3 = *(type metadata accessor for FeaturedCollectionView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1000227B8(a1, v4);
}

uint64_t sub_100023334()
{
  v1 = type metadata accessor for FeaturedCollectionView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  sub_10001B4A4(&qword_1000B2FB0, &qword_100077D10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for ColorScheme();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  return _swift_deallocObject(v0, v7 + 8, v2 | 7);
}

void *sub_1000234A0()
{
  v1 = *(type metadata accessor for FeaturedCollectionView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100022D18(v0 + v2, v3);
}

uint64_t sub_10002352C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100023544(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001B4A4(&qword_1000B2FB0, &qword_100077D10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000235B4()
{
  result = qword_1000B4D90;
  if (!qword_1000B4D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4D90);
  }

  return result;
}

uint64_t sub_100023608(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_100023628(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10001B4A4(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_100023690()
{
  v1 = type metadata accessor for FeaturedCollectionView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  sub_10001B4A4(&qword_1000B2FB0, &qword_100077D10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for ColorScheme();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000237F0()
{
  v1 = *(type metadata accessor for FeaturedCollectionView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_100021CC8(v2);
}

unint64_t sub_100023858()
{
  result = qword_1000B3068;
  if (!qword_1000B3068)
  {
    sub_10001E860(&qword_1000B3060, &qword_100077DE0);
    type metadata accessor for RemoteVideoView();
    sub_100023970(&qword_1000B3070, &type metadata accessor for RemoteVideoView, &protocol conformance descriptor for RemoteVideoView);
    swift_getOpaqueTypeConformance2();
    sub_10001E8B8(&qword_1000B3078, &qword_1000B3080, &qword_100077DE8, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3068);
  }

  return result;
}

uint64_t sub_100023970(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000239B8()
{
  sub_10001E860(&qword_1000B2FA8, &qword_100077D08);
  sub_10001E8B8(&qword_1000B3020, &qword_1000B2FA8, &qword_100077D08, &protocol conformance descriptor for SubscriptionView<A, B>);
  return swift_getOpaqueTypeConformance2();
}

id sub_100023A6C(void *a1)
{
  v3 = type metadata accessor for Locale();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v4 - 8);
  v5 = [objc_allocWithZone(v1) init];
  sub_100024368();
  v6 = v5;
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v6 setTips:isa];

  if (!a1)
  {
LABEL_9:
    [v6 setAllowBookmarks:0];
    [v6 setAllowPaging:0];
    [v6 setShouldDisplayNavigationTitle:0];
    [v6 setIsSharedVariant:1];
    v14 = v6;
    [v14 setCurrentTip:a1];
    v15 = objc_allocWithZone(UIBarButtonItem);
    v16 = _bridgeAnythingToObjectiveC<A>(_:)();

    v17 = [v15 initWithBarButtonSystemItem:0 target:v16 action:"doneTapped:"];
    swift_unknownObjectRelease();
    v18 = [v14 navigationItem];
    [v18 setRightBarButtonItem:v17];

    v19 = [v14 navigationItem];
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v20 = String._bridgeToObjectiveC()();

    [v19 setTitle:v20];

    return v14;
  }

  v8 = a1;
  result = [v6 tips];
  if (result)
  {
    v10 = result;
    v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v12 = v8;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    if (v11)
    {
      v13.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v13.super.isa = 0;
    }

    [v6 setTips:v13.super.isa];

    goto LABEL_9;
  }

  __break(1u);
  return result;
}

id sub_1000240E0(char *a1, uint64_t a2, void *a3, const char **a4)
{
  v6 = &a1[OBJC_IVAR____TtC4Tips26TPSSharedTipViewController_onDismissed];
  *v6 = 0;
  *(v6 + 1) = 0;
  v11.receiver = a1;
  v11.super_class = type metadata accessor for TPSSharedTipViewController();
  v7 = *a4;
  v8 = a3;
  v9 = objc_msgSendSuper2(&v11, v7, v8);

  if (v9)
  {
  }

  return v9;
}

id sub_100024168(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for TPSSharedTipViewController();
  return objc_msgSendSuper2(&v4, "dealloc");
}

BOOL sub_1000241D4(_BOOL8 a1)
{
  v2 = v1;
  v4 = [v1 assetFileInfoManager];
  if (v4)
  {
    v5 = v4;
    v6 = [v2 assets];
    if (v6 && (v7 = v6, v8 = [v6 videoId], v7, v8) || (v9 = objc_msgSend(v2, "assets")) != 0 && (v10 = v9, v8 = objc_msgSend(v9, "posterId"), v10, v8))
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v11 = String._bridgeToObjectiveC()();
      v12 = [v5 fileInfoIdentifierWithMainIdentifier:v11 userInterfaceStyle:a1];

      if (v12)
      {

        v5 = v12;
      }

      else
      {
        v13 = String._bridgeToObjectiveC()();

        v14 = [v5 fileInfoIdentifierWithMainIdentifier:v13 userInterfaceStyle:!a1];

        if (v14)
        {

          a1 = !a1;
        }
      }
    }
  }

  return a1;
}

unint64_t sub_100024368()
{
  result = qword_1000B30C8;
  if (!qword_1000B30C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000B30C8);
  }

  return result;
}

uint64_t sub_1000243B4(uint64_t a1)
{
  v2 = sub_10001B4A4(&qword_1000B2E90, &unk_100077E50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_100024460()
{
  if (![objc_opt_self() isPhoneUI])
  {
    return 0;
  }

  v1 = [v0 viewControllers];
  sub_10001F758();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v2 >> 62))
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_4;
    }

    goto LABEL_17;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
LABEL_17:

    return 0;
  }

LABEL_4:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_7;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v4 = *(v2 + 32);
LABEL_7:
    v5 = v4;

    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6 && (v7 = [v6 topViewController]) != 0)
    {
      v8 = v7;
      objc_opt_self();
      v9 = swift_dynamicCastObjCClass();
      if (v9 && (v10 = [v9 topViewController]) != 0)
      {
        v11 = v10;
        type metadata accessor for TipListViewController();
        if ([v11 isKindOfClass:swift_getObjCClassFromMetadata()])
        {
          v12 = [v0 viewControllerForColumn:1];

          return v12;
        }
      }

      else
      {
      }
    }

    else
    {
    }

    return 0;
  }

  __break(1u);
  return result;
}

id sub_100024794(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for TPSSplitViewController();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_100024904()
{
  sub_100025B08();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v5)
  {
    v1 = [v5 identifier];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v5)
  {
    v2 = [v5 title];

    if (v2)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v0;
  return static Published.subscript.setter();
}

uint64_t sub_100024AB0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = a1;
  static Published.subscript.getter();

  return v7;
}

uint64_t sub_100024B40(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v3;
}

uint64_t sub_100024BC0(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v6 = a1;
  return static Published.subscript.setter();
}

uint64_t sub_100024CE4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

void sub_100024DD8(uint64_t a1, void **a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = v2;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (a2)
  {
    v6 = sub_100026408(a1, a2);

    sub_100025098(v6);
  }
}

double sub_100024EC8@<D0>(_OWORD *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = *&v4;
  *a2 = v4;
  return result;
}

void sub_100024F48(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  sub_100024DD8(v1, v2);
}

id sub_100024F9C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = a1;
  static Published.subscript.getter();

  return v7;
}

void sub_100025098(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = a1;
  v3 = a1;
  v4 = v1;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v7)
  {
    v5 = *&v4[OBJC_IVAR___TPSChecklistViewModel_actionHandler];
    if (v5)
    {
      v6 = *&v4[OBJC_IVAR___TPSChecklistViewModel_actionHandler + 8];

      v5(v7);

      sub_10001E970(v5, v6);
      v3 = v7;
    }

    else
    {
    }
  }
}

Class sub_100025200(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = a1;
  static Published.subscript.getter();

  if (v8)
  {
    sub_10001AC14(0, &qword_1000B30C8, TPSTip_ptr);
    v6.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v6.super.isa = 0;
  }

  return v6.super.isa;
}

uint64_t sub_1000252E0(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v3;
}

uint64_t sub_100025360(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    sub_10001AC14(0, &qword_1000B30C8, TPSTip_ptr);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v6 = a1;
  return static Published.subscript.setter();
}

uint64_t sub_100025410@<X0>(void *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a4 = v6;
  return result;
}

uint64_t sub_10002548C(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return static Published.subscript.setter();
}

uint64_t sub_100025504()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

void *sub_1000255F0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v1)
  {
    sub_100028994(v1);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v1)
  {
    sub_100028994(v1);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_100025978()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v1)
  {

    return 1;
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    return 0;
  }
}

void sub_100025B08()
{
  v2 = v0;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v66[0])
  {
    v3 = *(v0 + OBJC_IVAR___TPSChecklistViewModel_appController);
    v4 = [v66[0] identifier];
    if (!v4)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v1 = v5;
      v4 = String._bridgeToObjectiveC()();
    }

    v6 = [v3 tipsForCollectionIdentifier:v4];

    if (v6)
    {
      v61 = v66[0];
      v62 = v2;
      sub_10001AC14(0, &qword_1000B30C8, TPSTip_ptr);
      v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v8 = sub_100046590(_swiftEmptyArrayStorage);
      v67 = _swiftEmptyArrayStorage;
      v68 = _swiftEmptyArrayStorage;
      if (v7 >> 62)
      {
        goto LABEL_40;
      }

      v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v9)
      {
        while (v9 >= 1)
        {
          v10 = 0;
          v1 = 0;
          v64 = v7;
          v65 = v7 & 0xC000000000000001;
          v63 = v9;
          while (1)
          {
            v11 = v65 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v7 + 8 * v10 + 32);
            v12 = v11;
            v13 = [v11 checklistContent];
            if (v13)
            {
              break;
            }

LABEL_10:
            if (v9 == ++v10)
            {
              goto LABEL_41;
            }
          }

          if ([v12 contentStatus] == 1)
          {
            swift_getKeyPath();
            swift_getKeyPath();
            static Published.subscript.getter();

            v15 = v66[0];
            if (v66[0])
            {
              v66[0] = v12;
              __chkstk_darwin(v14);
              v60 = v66;
              v16 = sub_100028744(sub_100029374, v59, v15);

              if ((v16 & 1) == 0)
              {
                type metadata accessor for TPSAnalyticsChecklistSessionController();
                v7 = static TPSAnalyticsChecklistSessionController.sharedInstance.getter();
                v17 = dispatch thunk of TPSAnalyticsChecklistSessionController.sessionTipsCompleted.modify();
                if (__OFADD__(*v18, 1))
                {
                  goto LABEL_39;
                }

                ++*v18;
                v17(v66, 0);
              }
            }

            v19 = v12;
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            v20 = v67;
          }

          else
          {
            v21 = v12;
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            v20 = v68;
          }

          if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v22 = [v12 identifier];
          v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v25 = v24;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v66[0] = v8;
          v7 = v8;
          v28 = sub_1000452A8(v23, v25);
          v29 = v8[2];
          v30 = (v27 & 1) == 0;
          v31 = v29 + v30;
          if (!__OFADD__(v29, v30))
          {
            v32 = v27;
            if (v8[3] >= v31)
            {
              if (isUniquelyReferenced_nonNull_native)
              {
                v8 = v66[0];
                if ((v27 & 1) == 0)
                {
                  goto LABEL_33;
                }
              }

              else
              {
                v7 = v66;
                sub_100046100();
                v8 = v66[0];
                if ((v32 & 1) == 0)
                {
                  goto LABEL_33;
                }
              }
            }

            else
            {
              sub_100045570(v31, isUniquelyReferenced_nonNull_native);
              v7 = v66[0];
              v33 = sub_1000452A8(v23, v25);
              if ((v32 & 1) != (v34 & 1))
              {
                goto LABEL_71;
              }

              v28 = v33;
              v8 = v66[0];
              if ((v32 & 1) == 0)
              {
LABEL_33:
                v8[(v28 >> 6) + 8] |= 1 << v28;
                v37 = (v8[6] + 16 * v28);
                *v37 = v23;
                v37[1] = v25;
                *(v8[7] + 8 * v28) = v12;
                v38 = v8[2];
                v39 = __OFADD__(v38, 1);
                v40 = v38 + 1;
                if (v39)
                {
                  goto LABEL_38;
                }

                v8[2] = v40;
                goto LABEL_35;
              }
            }

            v35 = v8[7];
            v36 = *(v35 + 8 * v28);
            *(v35 + 8 * v28) = v12;

LABEL_35:
            v9 = v63;
            v7 = v64;
            goto LABEL_10;
          }

          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          v9 = _CocoaArrayWrapper.endIndex.getter();
          if (!v9)
          {
            goto LABEL_41;
          }
        }

        __break(1u);
LABEL_58:
        v45 = _CocoaArrayWrapper.endIndex.getter();
        if (!v45)
        {
          goto LABEL_59;
        }

LABEL_44:
        if (v45 >= 1)
        {
          v46 = 0;
          v43 = _swiftEmptyArrayStorage;
          while (1)
          {
            if ((v1 & 0xC000000000000001) != 0)
            {
              v47 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v47 = *(v1 + 8 * v46 + 32);
            }

            v48 = v47;
            v49 = [v47 identifier];
            v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v52 = v51;

            if (v8[2])
            {
              v53 = sub_1000452A8(v50, v52);
              v55 = v54;

              if (v55)
              {
                v56 = *(v8[7] + 8 * v53);
                specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                if (*((v66[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v66[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                }

                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

                v43 = v66[0];
                goto LABEL_48;
              }
            }

            else
            {
            }

LABEL_48:
            if (v45 == ++v46)
            {
              goto LABEL_60;
            }
          }
        }

        __break(1u);
LABEL_71:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
      }

      else
      {
LABEL_41:

        __chkstk_darwin(v41);
        v42 = v62;
        v59[0] = v62;
        v59[1] = &v68;
        v60 = &v67;
        static Animation.default.getter();
        withAnimation<A>(_:_:)();

        v43 = sub_1000255F0();
        v44 = OBJC_IVAR___TPSChecklistViewModel_currentDisplayTips;
        v1 = *(v42 + OBJC_IVAR___TPSChecklistViewModel_currentDisplayTips);
        if (v1)
        {
          v65 = OBJC_IVAR___TPSChecklistViewModel_currentDisplayTips;

          v66[0] = _swiftEmptyArrayStorage;
          if (v1 >> 62)
          {
            goto LABEL_58;
          }

          v45 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v45)
          {
            goto LABEL_44;
          }

LABEL_59:
          v43 = _swiftEmptyArrayStorage;
LABEL_60:

          v44 = v65;
        }

        *(v62 + v44) = v43;

        dispatch thunk of TPSAnalyticsChecklistSessionController.sessionStartSuggestedTipCount.getter();
        v57 = v68 >> 62;
        if (v58)
        {
          if (v57)
          {
            _CocoaArrayWrapper.endIndex.getter();
          }

          dispatch thunk of TPSAnalyticsChecklistSessionController.sessionStartSuggestedTipCount.setter();
        }

        else
        {
          if (v57)
          {
            _CocoaArrayWrapper.endIndex.getter();
          }

          dispatch thunk of TPSAnalyticsChecklistSessionController.sessionEndSuggestedTipsCount.setter();
        }

        sub_1000268CC();
      }
    }

    else
    {
    }
  }
}

uint64_t sub_100026278(void *a1, unint64_t *a2, unint64_t *a3)
{
  if (!(*a2 >> 62))
  {
    if (!*((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

    goto LABEL_3;
  }

  if (_CocoaArrayWrapper.endIndex.getter())
  {
LABEL_3:
  }

LABEL_5:
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = a1;
  static Published.subscript.setter();
  if (*a3 >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_7:
  }

LABEL_9:
  swift_getKeyPath();
  swift_getKeyPath();
  v6 = v5;
  return static Published.subscript.setter();
}

id sub_100026408(uint64_t a1, void **a2)
{
  if (!a2)
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v3 = v35;
  v4 = _swiftEmptyArrayStorage;
  if (v35)
  {
    v35 = _swiftEmptyArrayStorage;
    v5 = v3 & 0xFFFFFFFFFFFFFF8;
    if (v3 >> 62)
    {
      goto LABEL_23;
    }

    for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v7 = 0;
      v4 = (v3 & 0xC000000000000001);
      while (1)
      {
        if (v4)
        {
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v7 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_22;
          }

          v8 = *(v3 + 8 * v7 + 32);
        }

        v9 = v8;
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        v11 = [v8 identifier];
        v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v13 = v12;

        if (v2 == a1 && v13 == a2)
        {
        }

        else
        {
          v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v15 & 1) == 0)
          {

            goto LABEL_8;
          }
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
LABEL_8:
        ++v7;
        if (v10 == i)
        {
          v4 = _swiftEmptyArrayStorage;
          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      ;
    }

LABEL_24:

    if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_27;
      }
    }

    else if (_swiftEmptyArrayStorage[2])
    {
LABEL_27:
      if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
      {
        goto LABEL_54;
      }

      if (_swiftEmptyArrayStorage[2])
      {
        v16 = _swiftEmptyArrayStorage[4];
        goto LABEL_30;
      }

      __break(1u);
      goto LABEL_56;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v5 = v35;
  if (!v35)
  {
    return 0;
  }

  v35 = v4;
  v2 = v5 & 0xFFFFFFFFFFFFFF8;
  if (v5 >> 62)
  {
LABEL_56:
    v19 = _CocoaArrayWrapper.endIndex.getter();
    if (!v19)
    {
LABEL_57:
      v30 = _swiftEmptyArrayStorage;
LABEL_58:

      if ((v30 & 0x8000000000000000) != 0 || (v30 & 0x4000000000000000) != 0)
      {
        result = _CocoaArrayWrapper.endIndex.getter();
        if (result)
        {
LABEL_61:
          if ((v30 & 0xC000000000000001) != 0)
          {
            v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (!*(v30 + 16))
            {
              __break(1u);
              return result;
            }

            v31 = *(v30 + 32);
          }

          v32 = v31;

          return v32;
        }
      }

      else if (*(v30 + 16))
      {
        goto LABEL_61;
      }

      return 0;
    }

    goto LABEL_36;
  }

  v19 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v19)
  {
    goto LABEL_57;
  }

LABEL_36:
  v20 = 0;
  while (1)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v20 >= *(v2 + 16))
      {
        goto LABEL_53;
      }

      v21 = *(v5 + 8 * v20 + 32);
    }

    v22 = v21;
    v23 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    v24 = [v21 identifier];
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    if (v25 == a1 && v27 == a2)
    {
    }

    else
    {
      v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v29 & 1) == 0)
      {

        goto LABEL_39;
      }
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
LABEL_39:
    ++v20;
    if (v23 == v19)
    {
      v30 = v35;
      goto LABEL_58;
    }
  }

  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_30:
  v17 = v16;

  return v17;
}

void sub_1000268CC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v9)
  {

    return;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v8)
  {

    return;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v1 = *&v0[OBJC_IVAR___TPSChecklistViewModel_currentDisplayTips];
  if (!v1)
  {
    v4 = 0;
    goto LABEL_16;
  }

  if (v1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_9;
    }

LABEL_15:
    v4 = 0;
    v1 = 0;
    goto LABEL_16;
  }

  if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_15;
  }

LABEL_9:
  if ((v1 & 0xC000000000000001) != 0)
  {

    v2 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v2 = v1[4];
  }

  v3 = [v2 identifier];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v1 = v5;

LABEL_16:
  swift_getKeyPath();
  swift_getKeyPath();
  v6 = v0;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v1)
  {
    v7 = sub_100026408(v4, v1);

    sub_100025098(v7);
  }
}

id sub_100026BB0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v0 = v4;
  if (v4)
  {
    if (v4 >> 62)
    {
      goto LABEL_7;
    }

    if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      while ((v4 & 0xC000000000000001) == 0)
      {
        if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        __break(1u);
LABEL_7:
        if (!_CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_8;
        }
      }

      goto LABEL_16;
    }

LABEL_8:
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v0 = v4;
  if (!v4)
  {
    return 0;
  }

  if (!(v4 >> 62))
  {
    result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_12;
    }

    goto LABEL_18;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
LABEL_18:

    return 0;
  }

LABEL_12:
  if ((v4 & 0xC000000000000001) != 0)
  {
LABEL_16:
    v2 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_15;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_14:
    v2 = *(v0 + 32);
LABEL_15:
    v3 = v2;

    return v3;
  }

  __break(1u);
  return result;
}

id sub_100026DC8()
{
  v1 = v0;
  v2 = sub_10001B4A4(&qword_1000B3208, &qword_100078228);
  v48 = *(v2 - 8);
  v49 = v2;
  __chkstk_darwin(v2);
  v47 = &v38 - v3;
  v4 = sub_10001B4A4(&qword_1000B3210, &unk_100078230);
  v45 = *(v4 - 8);
  v46 = v4;
  __chkstk_darwin(v4);
  v44 = &v38 - v5;
  v6 = sub_10001B4A4(&qword_1000B3218, &qword_10007A0B0);
  v42 = *(v6 - 8);
  v43 = v6;
  __chkstk_darwin(v6);
  v41 = &v38 - v7;
  v8 = sub_10001B4A4(&qword_1000B3220, &unk_100078240);
  v39 = *(v8 - 8);
  v40 = v8;
  __chkstk_darwin(v8);
  v10 = &v38 - v9;
  v11 = sub_10001B4A4(&qword_1000B3228, &qword_100078930);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v38 - v13;
  v15 = sub_10001B4A4(&qword_1000B2D80, &qword_100078250);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v38 - v17;
  v19 = OBJC_IVAR___TPSChecklistViewModel_appController;
  type metadata accessor for TPSUIAppController();
  *&v0[v19] = static TPSUIAppController.shared.getter();
  v20 = OBJC_IVAR___TPSChecklistViewModel_checkListSessionController;
  type metadata accessor for TPSAnalyticsChecklistSessionController();
  *&v0[v20] = static TPSAnalyticsChecklistSessionController.sharedInstance.getter();
  v21 = OBJC_IVAR___TPSChecklistViewModel__appInBackground;
  LOBYTE(v51) = 0;
  Published.init(initialValue:)();
  v22 = *(v16 + 32);
  v22(&v1[v21], v18, v15);
  v23 = OBJC_IVAR___TPSChecklistViewModel__collection;
  v51 = 0;
  sub_10001B4A4(&qword_1000B3190, &unk_1000783D0);
  Published.init(initialValue:)();
  (*(v12 + 32))(&v1[v23], v14, v11);
  v24 = OBJC_IVAR___TPSChecklistViewModel__viewCollapsed;
  LOBYTE(v51) = 0;
  Published.init(initialValue:)();
  v22(&v1[v24], v18, v15);
  v25 = OBJC_IVAR___TPSChecklistViewModel__selectedTipIdentifier;
  v51 = 0;
  v52 = 0;
  sub_10001B4A4(&qword_1000B3390, &unk_100077F30);
  Published.init(initialValue:)();
  (*(v39 + 32))(&v1[v25], v10, v40);
  v26 = OBJC_IVAR___TPSChecklistViewModel__currentTip;
  v51 = 0;
  sub_10001B4A4(&qword_1000B31A8, &qword_100078BC0);
  v27 = v41;
  Published.init(initialValue:)();
  (*(v42 + 32))(&v1[v26], v27, v43);
  v28 = OBJC_IVAR___TPSChecklistViewModel__suggestedTips;
  v51 = 0;
  sub_10001B4A4(&qword_1000B31B8, &qword_100077F40);
  v29 = v44;
  Published.init(initialValue:)();
  v30 = v46;
  v31 = *(v45 + 32);
  v31(&v1[v28], v29, v46);
  v32 = OBJC_IVAR___TPSChecklistViewModel__completedTips;
  v51 = 0;
  Published.init(initialValue:)();
  v31(&v1[v32], v29, v30);
  v33 = OBJC_IVAR___TPSChecklistViewModel__collectionEntity;
  v51 = *aEmpty;
  v52 = unk_1000B4C18;
  v53 = qword_1000B4C20;
  v54 = unk_1000B4C28;

  v34 = v47;
  Published.init(initialValue:)();
  (*(v48 + 32))(&v1[v33], v34, v49);
  *&v1[OBJC_IVAR___TPSChecklistViewModel_currentDisplayTips] = 0;
  v35 = &v1[OBJC_IVAR___TPSChecklistViewModel_actionHandler];
  v36 = type metadata accessor for ChecklistViewModel(0);
  *v35 = 0;
  *(v35 + 1) = 0;
  v50.receiver = v1;
  v50.super_class = v36;
  return objc_msgSendSuper2(&v50, "init");
}

id sub_1000273E8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ChecklistViewModel(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ChecklistViewModel(uint64_t a1)
{
  result = qword_1000B3170;
  if (!qword_1000B3170)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000276FC(uint64_t a1)
{
  sub_1000279AC(319, &qword_1000B3180, &type metadata for Bool);
  if (v1 <= 0x3F)
  {
    sub_100027958(319, &qword_1000B3188, &qword_1000B3190, &unk_1000783D0);
    if (v2 <= 0x3F)
    {
      sub_100027958(319, &qword_1000B3198, &qword_1000B3390, &unk_100077F30);
      if (v3 <= 0x3F)
      {
        sub_100027958(319, &qword_1000B31A0, &qword_1000B31A8, &qword_100078BC0);
        if (v4 <= 0x3F)
        {
          sub_100027958(319, &qword_1000B31B0, &qword_1000B31B8, &qword_100077F40);
          if (v5 <= 0x3F)
          {
            sub_1000279AC(319, &qword_1000B31C0, &type metadata for TipCollection);
            if (v6 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void sub_100027958(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_10001E860(a3, a4);
    v5 = type metadata accessor for Published();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1000279AC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for Published();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1000279F8@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for ChecklistViewModel(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t sub_100027A38@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10001B4A4(&unk_1000B3380, &qword_100079940);
  __chkstk_darwin(v4 - 8);
  v6 = &v16 - v5;
  v7 = [a1 checklistContent];
  if (v7 && (v8 = v7, v9 = [v7 assets], v8, v9))
  {
    v10 = [v9 baseURL];

    if (v10)
    {
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v11 = type metadata accessor for URL();
      (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
    }

    else
    {
      v15 = type metadata accessor for URL();
      (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
    }

    return sub_10002920C(v6, a2);
  }

  else
  {
    v12 = type metadata accessor for URL();
    v13 = *(*(v12 - 8) + 56);

    return v13(a2, 1, 1, v12);
  }
}

uint64_t sub_100027E1C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = [a1 checklistContent];
  if (v6 && (v7 = v6, v8 = [v6 subtitle], v7, v8))
  {
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v9;
  }

  else
  {
    v11 = [v2 titleFor:a1];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    [v2 isCompletedFor:a1];
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    sub_10001B4A4(&qword_1000B31E8, &unk_100078060);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_100077E80;
    *(v15 + 56) = &type metadata for String;
    *(v15 + 64) = sub_1000291B8();
    *(v15 + 32) = v12;
    *(v15 + 40) = v14;
    v16 = String.init(format:_:)();

    return v16;
  }
}

unint64_t *sub_10002811C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100028B24(0, v1, 0);
    v3 = a1 + 32;
    do
    {

      sub_10001B4A4(&qword_1000B31D0, &qword_100078048);
      sub_10001B4A4(&qword_1000B31C8, &qword_100078040);
      swift_dynamicCast();
      v5 = _swiftEmptyArrayStorage[2];
      v4 = _swiftEmptyArrayStorage[3];
      if (v5 >= v4 >> 1)
      {
        sub_100028B24((v4 > 1), v5 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v5 + 1;
      _swiftEmptyArrayStorage[v5 + 4] = v7;
      v3 += 8;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

unint64_t *sub_10002824C(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_100028B24(0, v2, 0);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    for (i = a1 + 32; ; i += 8)
    {

      sub_10001B4A4(&qword_1000B31D8, &qword_100078050);
      sub_10001B4A4(&qword_1000B31C8, &qword_100078040);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v6 = _swiftEmptyArrayStorage[2];
      v5 = _swiftEmptyArrayStorage[3];
      if (v6 >= v5 >> 1)
      {
        sub_100028B24((v5 > 1), v6 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v6 + 1;
      _swiftEmptyArrayStorage[v6 + 4] = v8;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_100028528@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [a1 checklistContent];
  if (v3 && (v4 = v3, v5 = [v3 assets], v4, v5))
  {
    v6 = [v5 symbolSize];

    v7 = &enum case for Image.Scale.medium(_:);
    if (v6)
    {
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;

      v11 = v8 == 0x656772616CLL && v10 == 0xE500000000000000;
      if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v7 = &enum case for Image.Scale.large(_:);
      }

      else if (v8 == 0x6C6C616D73 && v10 == 0xE500000000000000)
      {

        v7 = &enum case for Image.Scale.small(_:);
      }

      else
      {
        v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v17)
        {
          v7 = &enum case for Image.Scale.small(_:);
        }
      }
    }
  }

  else
  {
    v7 = &enum case for Image.Scale.medium(_:);
  }

  v12 = *v7;
  v13 = type metadata accessor for Image.Scale();
  v14 = *(*(v13 - 8) + 104);

  return v14(a2, v12, v13);
}

uint64_t sub_100028744(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = _CocoaArrayWrapper.endIndex.getter();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

double sub_10002886C@<D0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_1000288F8(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return static Published.subscript.setter();
}

uint64_t sub_100028994(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
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

  v13 = _CocoaArrayWrapper.endIndex.getter();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_100028A84(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_100028E2C(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
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

uint64_t sub_100028A84(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
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

  _CocoaArrayWrapper.endIndex.getter();
LABEL_9:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v2 = result;
  return result;
}

void *sub_100028B24(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100028B64(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100028B44(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100028C98(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100028B64(void *result, int64_t a2, char a3, void *a4)
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
    sub_10001B4A4(&qword_1000B31E0, &qword_100078058);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10001B4A4(&qword_1000B31C8, &qword_100078040);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100028C98(char *result, int64_t a2, char a3, char *a4)
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
    sub_10001B4A4(&unk_1000B3230, &qword_100078258);
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
    v10 = _swiftEmptyArrayStorage;
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

void (*sub_100028DA4(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
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
    return sub_100028E24;
  }

  __break(1u);
  return result;
}

uint64_t sub_100028E2C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
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
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1000293DC();
          for (i = 0; i != v6; ++i)
          {
            sub_10001B4A4(&qword_1000B31F8, &qword_1000790F0);
            v9 = sub_100028DA4(v13, i, a3);
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
        sub_10001AC14(0, &qword_1000B30C8, TPSTip_ptr);
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

unint64_t *sub_100029020(void *a1)
{
  v2 = [a1 checklistContent];
  if (v2 && (v3 = v2, v4 = [v2 bodyContent], v3, v4))
  {
    sub_10001B4A4(&qword_1000B31D8, &qword_100078050);
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v6 = sub_10002824C(v5);

    if (!v6)
    {
      sub_10001B4A4(&qword_1000B31E0, &qword_100078058);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_100077E80;
      *(v6 + 32) = sub_100046694(_swiftEmptyArrayStorage);
    }
  }

  else
  {
    v7 = [a1 checklistContent];
    if (!v7 || (v8 = v7, v9 = [v7 bodyText], v8, !v9))
    {
      v9 = 0;
    }

    v10 = [objc_opt_self() textContentWithText:v9];

    sub_10001B4A4(&qword_1000B31D0, &qword_100078048);
    v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v6 = sub_10002811C(v11);
  }

  return v6;
}

unint64_t sub_1000291B8()
{
  result = qword_1000B31F0;
  if (!qword_1000B31F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B31F0);
  }

  return result;
}

uint64_t sub_10002920C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001B4A4(&unk_1000B3380, &qword_100079940);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1000292B4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  sub_100024DD8(v1, v2);
}

void sub_10002931C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_100025098(v1);
}

unint64_t sub_1000293DC()
{
  result = qword_1000B3200;
  if (!qword_1000B3200)
  {
    sub_10001E860(&qword_1000B31F8, &qword_1000790F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3200);
  }

  return result;
}

uint64_t sub_100029448()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100029488(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000294A0(void *a1)
{
  v2 = [a1 checklistContent];
  if (v2 && (v3 = v2, v4 = [v2 assets], v3, v4) && (v5 = objc_msgSend(v4, "symbolColor"), v4, v5))
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10001AC14(0, &qword_1000B2DA0, UIColor_ptr);
    static UIColor.colorForSystemColorString(_:)();

    return Color.init(_:)();
  }

  else
  {
    v7 = [a1 checklistContent];
    if (v7 && (v8 = v7, v9 = [v7 assets], v8, v9) && (v10 = objc_msgSend(v9, "symbolId"), v9, v10))
    {

      return static Color.black.getter();
    }

    else
    {

      return static Color.yellow.getter();
    }
  }
}

void sub_100029A80(uint64_t a1)
{
  v28 = type metadata accessor for URL();
  v2 = *(v28 - 8);
  __chkstk_darwin(v28);
  v4 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_10001AC14(0, &qword_1000B32D8, UIOpenURLContext_ptr);
    sub_10002AB3C(&qword_1000B32E0, &qword_1000B32D8, UIOpenURLContext_ptr);
    Set.Iterator.init(_cocoa:)();
    a1 = v32;
    v5 = v33;
    v7 = v34;
    v6 = v35;
    v8 = v36;
  }

  else
  {
    v9 = -1 << *(a1 + 32);
    v5 = a1 + 56;
    v7 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(a1 + 56);

    v6 = 0;
  }

  v12 = (v7 + 64) >> 6;
  v26[1] = v7;
  v27 = (v2 + 8);
  while (a1 < 0)
  {
    v18 = __CocoaSet.Iterator.next()();
    if (!v18 || (v30 = v18, sub_10001AC14(0, &qword_1000B32D8, UIOpenURLContext_ptr), swift_dynamicCast(), v17 = v31, v15 = v6, v16 = v8, !v31))
    {
LABEL_21:
      sub_100029E94(a1);
      return;
    }

LABEL_19:
    v19 = *(v29 + OBJC_IVAR____TtC4Tips13SceneDelegate_appCoordinator);
    if (v19)
    {
      v20 = v19;
      v21 = [v17 URL];
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v22 = *&v20[OBJC_IVAR___TPSAppCoordinator_mainViewController];
      URL._bridgeToObjectiveC()(v23);
      v25 = v24;
      [v22 openURL:v24];

      (*v27)(v4, v28);
    }

    else
    {
    }

    v6 = v15;
    v8 = v16;
  }

  v13 = v6;
  v14 = v8;
  v15 = v6;
  if (v8)
  {
LABEL_15:
    v16 = (v14 - 1) & v14;
    v17 = *(*(a1 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (!v17)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
      goto LABEL_21;
    }

    v14 = *(v5 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

id sub_100029DF0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100029E9C(void *a1)
{
  v2 = [a1 URLContexts];
  sub_10001AC14(0, &qword_1000B32D8, UIOpenURLContext_ptr);
  sub_10002AB3C(&qword_1000B32E0, &qword_1000B32D8, UIOpenURLContext_ptr);
  v3 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = __CocoaSet.count.getter();
  }

  else
  {
    v4 = *(v3 + 16);
  }

  if (v4)
  {
    return 0;
  }

  v5 = [a1 userActivities];
  sub_10001AC14(0, &qword_1000B32E8, NSUserActivity_ptr);
  sub_10002AB3C(&unk_1000B32F0, &qword_1000B32E8, NSUserActivity_ptr);
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = (v6 & 0xC000000000000001) != 0 ? __CocoaSet.count.getter() : *(v6 + 16);

  if (v7)
  {
    return 0;
  }

  v8 = [a1 shortcutItem];
  if (v8 || (v8 = [a1 sourceApplication]) != 0 || (v8 = objc_msgSend(a1, "handoffUserActivityType")) != 0 || (v8 = objc_msgSend(a1, "notificationResponse")) != 0 || (v8 = objc_msgSend(a1, "cloudKitShareMetadata")) != 0)
  {

    return 0;
  }

  return 1;
}

void sub_10002A09C(void *a1, void *a2)
{
  v3 = v2;
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6)
  {
    return;
  }

  v7 = v6;
  v8 = objc_allocWithZone(UIWindow);
  v50 = a1;
  v9 = [v8 initWithWindowScene:v7];
  v10 = [objc_allocWithZone(TPSMainViewController) init];
  [v9 setRootViewController:v10];
  v11 = type metadata accessor for TPSAppCoordinator();
  v12 = objc_allocWithZone(v11);
  *&v12[OBJC_IVAR___TPSAppCoordinator_mainViewController] = v10;
  v54.receiver = v12;
  v54.super_class = v11;
  v49 = v10;
  v13 = objc_msgSendSuper2(&v54, "init");
  v14 = *(v3 + OBJC_IVAR____TtC4Tips13SceneDelegate_appCoordinator);
  v52 = OBJC_IVAR____TtC4Tips13SceneDelegate_appCoordinator;
  *(v3 + OBJC_IVAR____TtC4Tips13SceneDelegate_appCoordinator) = v13;

  v15 = [objc_opt_self() sharedApplication];
  v16 = [v15 delegate];

  if (v16)
  {
    objc_opt_self();
    v17 = swift_dynamicCastObjCClass();
    if (v17)
    {
      [v17 setAppCoordinator:*(v3 + v52)];
    }

    swift_unknownObjectRelease();
  }

  v18 = *(v3 + OBJC_IVAR____TtC4Tips13SceneDelegate_window);
  *(v3 + OBJC_IVAR____TtC4Tips13SceneDelegate_window) = v9;
  v19 = v9;

  v48 = v19;
  [v19 makeKeyAndVisible];
  v51 = a2;
  v20 = [a2 userActivities];
  sub_10001AC14(0, &qword_1000B32E8, NSUserActivity_ptr);
  sub_10002AB3C(&unk_1000B32F0, &qword_1000B32E8, NSUserActivity_ptr);
  v21 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v21 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v21 = v55;
    v22 = v56;
    v23 = v57;
    v24 = v58;
    v25 = v59;
  }

  else
  {
    v24 = 0;
    v26 = -1 << *(v21 + 32);
    v22 = v21 + 56;
    v23 = ~v26;
    v27 = -v26;
    if (v27 < 64)
    {
      v28 = ~(-1 << v27);
    }

    else
    {
      v28 = -1;
    }

    v25 = v28 & *(v21 + 56);
  }

  v29 = (v23 + 64) >> 6;
  while (v21 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (swift_dynamicCast(), v34 = v53, v32 = v24, v33 = v25, !v53))
    {
LABEL_25:
      sub_100029E94(v21);
      v38 = [v51 shortcutItem];
      if (v38)
      {
        v39 = v38;
        v40 = *(v3 + v52);
        if (v40)
        {
          v41 = v40;
          v42 = [v39 type];
          if (!v42)
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v42 = String._bridgeToObjectiveC()();
          }

          v43 = *&v41[OBJC_IVAR___TPSAppCoordinator_mainViewController];
          [v43 handleTipsURL:v42];

          v39 = v42;
        }
      }

      v44 = [v51 URLContexts];
      sub_10001AC14(0, &qword_1000B32D8, UIOpenURLContext_ptr);
      sub_10002AB3C(&qword_1000B32E0, &qword_1000B32D8, UIOpenURLContext_ptr);
      v45 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100029A80(v45);

      v46 = *(v3 + v52);
      if (v46)
      {
        v47 = *(v46 + OBJC_IVAR___TPSAppCoordinator_mainViewController);
        [v47 setAccessType:sub_100029E9C(v51) & 1];
      }

      return;
    }

LABEL_23:
    v35 = *(v3 + v52);
    if (v35)
    {
      v36 = *&v35[OBJC_IVAR___TPSAppCoordinator_mainViewController];
      v37 = v35;
      [v36 handleUserActivity:v34];
    }

    v24 = v32;
    v25 = v33;
  }

  v30 = v24;
  v31 = v25;
  v32 = v24;
  if (v25)
  {
LABEL_19:
    v33 = (v31 - 1) & v31;
    v34 = *(*(v21 + 48) + ((v32 << 9) | (8 * __clz(__rbit64(v31)))));
    if (!v34)
    {
      goto LABEL_25;
    }

    goto LABEL_23;
  }

  while (1)
  {
    v32 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v32 >= v29)
    {
      goto LABEL_25;
    }

    v31 = *(v22 + 8 * v32);
    ++v30;
    if (v31)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
}

uint64_t sub_10002A5EC(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = OBJC_IVAR____TtC4Tips13SceneDelegate_appCoordinator;
  v5 = *(a2 + OBJC_IVAR____TtC4Tips13SceneDelegate_appCoordinator);
  if (v5)
  {
    v8 = v5;
    v9 = [a1 type];
    if (!v9)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = String._bridgeToObjectiveC()();
    }

    v10 = *&v8[OBJC_IVAR___TPSAppCoordinator_mainViewController];
    [v10 handleTipsURL:v9];

    v11 = *(a2 + v4);
    if (v11)
    {
      [*(v11 + OBJC_IVAR___TPSAppCoordinator_mainViewController) setAccessType:0];
    }
  }

  v12 = *(a3 + 16);

  return v12(a3, 1);
}

id sub_10002A6F0(id result)
{
  v2 = OBJC_IVAR____TtC4Tips13SceneDelegate_appCoordinator;
  v3 = *(v1 + OBJC_IVAR____TtC4Tips13SceneDelegate_appCoordinator);
  if (v3)
  {
    result = [*(v3 + OBJC_IVAR___TPSAppCoordinator_mainViewController) handleUserActivity:result];
    v4 = *(v1 + v2);
    if (v4)
    {
      v5 = *(v4 + OBJC_IVAR___TPSAppCoordinator_mainViewController);

      return [v5 setAccessType:0];
    }
  }

  return result;
}

void sub_10002A780()
{
  v1 = type metadata accessor for TipsLog();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static TipsLog.default.getter();
  logDebug(_:_:)();
  (*(v2 + 8))(v4, v1);
  v5 = [objc_opt_self() currentNotificationCenter];
  [v5 setBadgeCount:0 withCompletionHandler:0];

  v6 = OBJC_IVAR____TtC4Tips13SceneDelegate_appCoordinator;
  v7 = *(v0 + OBJC_IVAR____TtC4Tips13SceneDelegate_appCoordinator);
  if (v7)
  {
    [*(v7 + OBJC_IVAR___TPSAppCoordinator_mainViewController) applicationWillEnterForeground];
    v8 = *(v0 + v6);
    if (v8)
    {
      [*(v8 + OBJC_IVAR___TPSAppCoordinator_mainViewController) setAccessType:2];
    }
  }
}

void sub_10002A8E8()
{
  v1 = type metadata accessor for TipsLog();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static TipsLog.default.getter();
  logDebug(_:_:)();
  (*(v2 + 8))(v4, v1);
  v5 = [objc_opt_self() currentNotificationCenter];
  [v5 setBadgeCount:0 withCompletionHandler:0];

  v6 = *(v0 + OBJC_IVAR____TtC4Tips13SceneDelegate_appCoordinator);
  if (v6)
  {
    [*(v6 + OBJC_IVAR___TPSAppCoordinator_mainViewController) applicationDidEnterBackground];
  }
}

id sub_10002AA30()
{
  v1 = type metadata accessor for TipsLog();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static TipsLog.default.getter();
  logDebug(_:_:)();
  result = (*(v2 + 8))(v4, v1);
  v6 = *(v0 + OBJC_IVAR____TtC4Tips13SceneDelegate_appCoordinator);
  if (v6)
  {
    return [*(v6 + OBJC_IVAR___TPSAppCoordinator_mainViewController) applicationWillTerminate];
  }

  return result;
}

uint64_t sub_10002AB3C(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10001AC14(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10002AC9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_10001B4A4(&qword_1000B3368, &qword_100078278);
  __chkstk_darwin(v8 - 8);
  v10 = v29 - v9;
  v11 = type metadata accessor for UIButton.Configuration.Size();
  v32 = *(v11 - 8);
  v33 = v11;
  __chkstk_darwin(v11);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UIButton.Configuration();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(v15 + 16);
  v31(v17, a3, v14);
  if (([v4 isEnabled] & 1) == 0)
  {
    v29[0] = a1;
    v18 = UIButton.Configuration.baseForegroundColor.getter();
    v29[1] = a2;
    v30 = v4;
    if (v18)
    {
      v19 = v18;
      v20 = [v18 colorWithAlphaComponent:0.3];
    }

    UIButton.Configuration.baseForegroundColor.setter();
    v21 = objc_opt_self();
    v22 = [v21 systemGray6Color];
    v23 = UIButton.Configuration.background.modify();
    UIBackgroundConfiguration.strokeColor.setter();
    v23(v34, 0);
    v24 = [v21 clearColor];
    v25 = UIButton.Configuration.background.modify();
    UIBackgroundConfiguration.backgroundColor.setter();
    v25(v34, 0);
    v4 = v30;
  }

  UIButton.Configuration.title.setter();
  (*(v32 + 104))(v13, enum case for UIButton.Configuration.Size.medium(_:), v33);
  UIButton.Configuration.buttonSize.setter();
  v31(v10, v17, v14);
  (*(v15 + 56))(v10, 0, 1, v14);
  UIButton.configuration.setter();
  v26 = [v4 titleLabel];
  if (v26)
  {
    v27 = v26;
    [v26 setAdjustsFontForContentSizeCategory:1];
  }

  [v4 setNeedsUpdateConfiguration];
  return (*(v15 + 8))(v17, v14);
}

void sub_10002B164(double a1)
{
  v2 = v1;
  v3 = sub_10001B4A4(&qword_1000B3368, &qword_100078278);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v21 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v21 - v11;
  __chkstk_darwin(v10);
  v14 = &v21 - v13;
  v15 = String._bridgeToObjectiveC()();
  v16 = [objc_opt_self() systemImageNamed:v15];

  if (v16)
  {
    v22 = [objc_opt_self() configurationWithScale:1];
    UIButton.configuration.getter();
    v17 = type metadata accessor for UIButton.Configuration();
    v18 = *(*(v17 - 8) + 48);
    if (v18(v14, 1, v17))
    {
      sub_10002BB40(v14, v6);
      UIButton.configuration.setter();
      sub_10002BBB0(v14);
    }

    else
    {
      UIButton.Configuration.imagePlacement.setter();
      UIButton.configuration.setter();
    }

    UIButton.configuration.getter();
    if (v18(v12, 1, v17))
    {
      sub_10002BB40(v12, v6);
      UIButton.configuration.setter();
      sub_10002BBB0(v12);
    }

    else
    {
      UIButton.Configuration.imagePadding.setter();
      UIButton.configuration.setter();
    }

    UIButton.configuration.getter();
    if (v18(v9, 1, v17))
    {
      sub_10002BB40(v9, v6);
      UIButton.configuration.setter();
      sub_10002BBB0(v9);
      v19 = v22;
    }

    else
    {
      v19 = v22;
      v20 = [v16 imageByApplyingSymbolConfiguration:v22];
      UIButton.Configuration.image.setter();
      UIButton.configuration.setter();
    }

    [v2 setNeedsUpdateConfiguration];
  }
}

void sub_10002B4DC()
{
  v1 = v0;
  v2 = sub_10001B4A4(&qword_1000B3360, &qword_100078270);
  __chkstk_darwin(v2 - 8);
  v4 = &v18 - v3;
  v5 = sub_10001B4A4(&qword_1000B3368, &qword_100078278);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v18 - v9;
  v11 = objc_opt_self();
  [v11 buttonFontSize];
  v12 = [v11 systemFontOfSize:? weight:?];
  v13 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleBody];
  v14 = [v13 scaledFontForFont:v12];

  UIButton.configuration.getter();
  v15 = type metadata accessor for UIButton.Configuration();
  if ((*(*(v15 - 8) + 48))(v10, 1, v15))
  {
    sub_10002BB40(v10, v8);
    UIButton.configuration.setter();
    sub_10002BBB0(v10);
  }

  else
  {
    *(swift_allocObject() + 16) = v14;
    v16 = v14;
    UIConfigurationTextAttributesTransformer.init(_:)();
    v17 = type metadata accessor for UIConfigurationTextAttributesTransformer();
    (*(*(v17 - 8) + 56))(v4, 0, 1, v17);
    UIButton.Configuration.titleTextAttributesTransformer.setter();
    UIButton.configuration.setter();
  }

  [v1 onConfigurationUpdated];
}

uint64_t sub_10002B784@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for AttributeContainer();
  (*(*(v6 - 8) + 16))(a3, a1, v6);
  sub_10002BC58();
  v7 = a2;
  return AttributeContainer.subscript.setter();
}

id sub_10002B8C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = type metadata accessor for UIButton.Configuration();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Locale();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v9 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v10 = String._bridgeToObjectiveC()();

  static UIButton.Configuration.glass()();
  isa = UIButton.Configuration._bridgeToObjectiveC()().super.isa;
  (*(v5 + 8))(v7, v4);
  [v3 configureWithTitle:v10 preferredConfiguration:isa];

  v12 = String._bridgeToObjectiveC()();
  [v3 configureImageWithSymbolName:v12 padding:5.0];

  return [v3 configureMediumFontStyle];
}

uint64_t sub_10002BB40(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001B4A4(&qword_1000B3368, &qword_100078278);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002BBB0(uint64_t a1)
{
  v2 = sub_10001B4A4(&qword_1000B3368, &qword_100078278);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10002BC18()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_10002BC58()
{
  result = qword_1000B3370;
  if (!qword_1000B3370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3370);
  }

  return result;
}

void sub_10002BEE4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for TipsLog();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static TipsLog.default.getter();
  aBlock = 0;
  v15 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);

  aBlock = 0xD00000000000001CLL;
  v15 = 0x800000010008BEE0;
  v20 = a1;
  v21 = a2;

  sub_10001B4A4(&qword_1000B3390, &unk_100077F30);
  v10._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v10);

  log(_:_:)();

  (*(v7 + 8))(v9, v6);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = v11;
  v18 = sub_10002D7D8;
  v19 = v12;
  aBlock = _NSConcreteStackBlock;
  v15 = 1107296256;
  v16 = sub_10002086C;
  v17 = &unk_1000A3880;
  v13 = _Block_copy(&aBlock);

  [v3 dismissViewControllerAnimated:1 completion:v13];
  _Block_release(v13);
}

uint64_t sub_10002C130(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10001B4A4(&qword_1000B3398, &qword_100078280);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v16 - v8;
  if (a2)
  {

    SupportFlowIdentifier.init(rawValue:)();
  }

  else
  {
    v10 = type metadata accessor for SupportFlowIdentifier();
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  }

  sub_10001F808(v9, v7, &qword_1000B3398, &qword_100078280);
  v11 = objc_allocWithZone(type metadata accessor for SupportFlowViewController());
  v12 = SupportFlowViewController.init(flowIdentifier:showsSearchBar:)();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    [Strong presentViewController:v12 animated:1 completion:0];

    v12 = v14;
  }

  return sub_10001F870(v9, &qword_1000B3398, &qword_100078280);
}

void sub_10002C354(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SearchResult.Item.Value();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v4 + 16))(v6, a1, v3);
  v7 = (*(v4 + 88))(v6, v3);
  if (v7 == enum case for SearchResult.Item.Value.topic(_:))
  {
    (*(v4 + 96))(v6, v3);
    v8 = *v6;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      sub_10002C7DC();
LABEL_7:

      return;
    }

LABEL_8:

    return;
  }

  if (v7 == enum case for SearchResult.Item.Value.tip(_:))
  {
    (*(v4 + 96))(v6, v3);
    v8 = *v6;
    swift_beginAccess();
    v11 = swift_unknownObjectWeakLoadStrong();
    if (v11)
    {
      v10 = v11;
      sub_10002C660(v8);
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  if (v7 == enum case for SearchResult.Item.Value.supportArticle(_:))
  {
    (*(v4 + 96))(v6, v3);
    swift_beginAccess();
    v12 = swift_unknownObjectWeakLoadStrong();
    if (v12)
    {
      v13 = v12;
      v14 = SupportArticle.supportSiteURLString.getter();
      if (v15)
      {
        sub_10002CA5C(v14, v15);
      }
    }
  }

  else if (v7 == enum case for SearchResult.Item.Value.supportFlow(_:))
  {
    (*(v4 + 96))(v6, v3);
    v10 = *v6;
    swift_beginAccess();
    v16 = swift_unknownObjectWeakLoadStrong();
    if (v16)
    {
      v17 = v16;
      v8 = [v10 identifier];
      if (!v8)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v8 = String._bridgeToObjectiveC()();
      }

      [v17 displaySupportFlowWithIdentifier:v8];

      goto LABEL_7;
    }
  }

  else
  {
    (*(v4 + 8))(v6, v3);
  }
}

void sub_10002C660(void *a1)
{
  v3 = [v1 appController];
  v4 = [objc_allocWithZone(TPSTipsByCollectionViewController) initWithAppController:v3];

  if (v4)
  {
    v8 = v4;
    [v8 setDelegate:v1];
    [v8 setShouldDisplayNavigationTitle:1];

    v5 = [a1 identifier];
    if (!v5)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v5 = String._bridgeToObjectiveC()();
    }

    [v8 updateWithCollectionID:0 tipID:v5];

    v6 = [v1 collectionListViewController];
    v7 = [v6 navigationController];

    if (v7)
    {
      [v7 pushViewController:v8 animated:1];
    }
  }
}

void sub_10002C7DC()
{
  dispatch thunk of UserGuideTopic.productId.getter();
  v1 = String._bridgeToObjectiveC()();

  dispatch thunk of UserGuideTopic.topicId.getter();
  if (v2)
  {
    v3 = String._bridgeToObjectiveC()();

    dispatch thunk of UserGuideTopic.version.getter();
    if (v4)
    {
LABEL_3:
      v6 = String._bridgeToObjectiveC()();

      goto LABEL_6;
    }
  }

  else
  {
    v3 = 0;
    dispatch thunk of UserGuideTopic.version.getter();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_6:
  [v0 displayUserGuideWithIdentifier:v1 topicId:v3 version:v6 platformIndependent:1 prefersLandingPage:1 referrer:0];
}

void sub_10002C8F4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    URL._bridgeToObjectiveC()(v3);
    v6 = v5;
    [v4 tipsViewControllerHandleSupportArticleURL:v5];
  }
}

uint64_t sub_10002C99C(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  v8 = a1;
  v9 = [v8 collectionListViewController];
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v11 = &v9[*a3];
  v12 = *v11;
  v13 = v11[1];
  *v11 = a4;
  v11[1] = v10;

  a5(v12, v13);
}

uint64_t sub_10002CA5C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_10001B4A4(&unk_1000B3380, &qword_100079940);
  __chkstk_darwin(v4 - 8);
  v6 = &v19 - v5;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v19 - v12;
  URL.init(string:)();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_10001F870(v6, &unk_1000B3380, &qword_100079940);
  }

  URL.appendingSupportArticleQueryParam()();
  v15 = *(v8 + 8);
  v15(v6, v7);
  (*(v8 + 32))(v13, v11, v7);
  URL._bridgeToObjectiveC()(v16);
  v18 = v17;
  [v3 presentURL:v17 isModalInPresentation:1];

  return (v15)(v13, v7);
}

void TPSMainViewController.presentURL(_:isModalInPresentation:)(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = [objc_allocWithZone(SFSafariViewControllerConfiguration) init];
  v6 = v5;
  if (a2)
  {
    [v5 _setPerformingAccountSecurityUpgrade:1];
  }

  v7 = objc_allocWithZone(SFSafariViewController);
  v8 = v6;
  URL._bridgeToObjectiveC()(v9);
  v11 = v10;
  v12 = [v7 initWithURL:v10 configuration:v8];

  [v12 setModalPresentationStyle:1];
  [v3 presentViewController:v12 animated:1 completion:0];
}

void TPSMainViewController.tipsViewControllerHandleSupportArticleURL(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10001B4A4(&unk_1000B3380, &qword_100079940);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001F808(a1, v6, &unk_1000B3380, &qword_100079940);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    __break(1u);
  }

  else
  {
    URL.appendingSupportArticleQueryParam()();
    v11 = *(v8 + 8);
    v11(v6, v7);
    URL._bridgeToObjectiveC()(v12);
    v14 = v13;
    v11(v10, v7);
    [v2 presentURL:v14 isModalInPresentation:1];
  }
}

uint64_t sub_10002D2C0(uint64_t a1)
{
  v3 = sub_10001B4A4(&qword_1000B33A8, &qword_100078288);
  __chkstk_darwin(v3 - 8);
  v5 = &v29[-v4];
  v6 = type metadata accessor for SearchResult.Item.Value();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v29[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v12 = &v29[-v11];
  sub_10001F808(a1, v29, &qword_1000B2E90, &unk_100077E50);
  if (!v30)
  {
    sub_10001F870(v29, &qword_1000B2E90, &unk_100077E50);
    (*(v7 + 56))(v5, 1, 1, v6);
    return sub_10001F870(v5, &qword_1000B33A8, &qword_100078288);
  }

  v13 = swift_dynamicCast();
  (*(v7 + 56))(v5, v13 ^ 1u, 1, v6);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_10001F870(v5, &qword_1000B33A8, &qword_100078288);
  }

  (*(v7 + 32))(v12, v5, v6);
  (*(v7 + 16))(v10, v12, v6);
  v14 = (*(v7 + 88))(v10, v6);
  if (v14 == enum case for SearchResult.Item.Value.topic(_:))
  {
    v15 = v1;
    (*(v7 + 96))(v10, v6);
    v16 = *v10;
    dispatch thunk of UserGuideTopic.productId.getter();
    v17 = String._bridgeToObjectiveC()();

    dispatch thunk of UserGuideTopic.topicId.getter();
    if (v18)
    {
      v19 = String._bridgeToObjectiveC()();

      dispatch thunk of UserGuideTopic.version.getter();
      if (v20)
      {
LABEL_6:
        v21 = String._bridgeToObjectiveC()();

LABEL_18:
        [v15 displayUserGuideWithIdentifier:v17 topicId:v19 version:v21 platformIndependent:1 prefersLandingPage:1 referrer:0];

        return (*(v7 + 8))(v12, v6);
      }
    }

    else
    {
      v19 = 0;
      dispatch thunk of UserGuideTopic.version.getter();
      if (v27)
      {
        goto LABEL_6;
      }
    }

    v21 = 0;
    goto LABEL_18;
  }

  if (v14 == enum case for SearchResult.Item.Value.tip(_:))
  {
    (*(v7 + 96))(v10, v6);
    v23 = *v10;
    v24 = [v23 identifier];
    if (!v24)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = String._bridgeToObjectiveC()();
    }

    [v1 showTipWithID:v24 launchType:TPSAnalyticsLaunchTypeSearchResult];
  }

  else
  {
    if (v14 != enum case for SearchResult.Item.Value.supportArticle(_:))
    {
      v28 = *(v7 + 8);
      v28(v12, v6);
      return v28(v10, v6);
    }

    (*(v7 + 96))(v10, v6);
    v25 = SupportArticle.supportSiteURLString.getter();
    if (v26)
    {
      sub_10002CA5C(v25, v26);
    }

    else
    {
    }
  }

  return (*(v7 + 8))(v12, v6);
}

uint64_t sub_10002D750()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002D798()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10002D7E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10002D7FC()
{
  result = qword_1000B33A0;
  if (!qword_1000B33A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B33A0);
  }

  return result;
}

void sub_10002D850(char *a1, char a2)
{
  v5 = type metadata accessor for ColorScheme();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR___CollectionListViewModel_colorScheme;
  swift_beginAccess();
  v10 = *(v6 + 16);
  v10(v8, &v2[v9], v5);
  v11 = static ColorScheme.== infix(_:_:)();
  (*(v6 + 8))(v8, v5);
  if (v11 & 1) == 0 || (a2)
  {
    v10(v8, a1, v5);
    swift_beginAccess();
    (*(v6 + 40))(&v2[v9], v8, v5);
    swift_endAccess();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v12 = v14;
    if (v14)
    {
      if (*&v2[OBJC_IVAR___CollectionListViewModel_featuredAssetViewModel])
      {

        v13 = [v2 assetsInfoFor:v12];
        dispatch thunk of DocumentAssetViewModel.updateWithTipAssetInfo(_:shouldReload:)();
      }
    }
  }
}

uint64_t sub_10002DAC4(char *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = v6;
  return static Published.subscript.setter();
}

uint64_t sub_10002DB44(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return static Published.subscript.setter();
}

uint64_t sub_10002DC34@<X0>(_BYTE *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a4 = v6;
  return result;
}

uint64_t sub_10002DCB0(char *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v2;
  static Published.subscript.setter();
  return sub_10002DE6C(&unk_100078870, &unk_100078898, &unk_1000788B8, &unk_1000788E0);
}

void sub_10002DDA0(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v12 = a1;
  static Published.subscript.setter();
  sub_10002DE6C(a4, a5, a6, a7);
}

uint64_t sub_10002DE6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  return static Published.subscript.setter();
}

uint64_t sub_10002E098(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v9)
  {
    v6 = *(v2 + OBJC_IVAR___CollectionListViewModel_actionHandler);
    if (v6)
    {
      v7 = *(v2 + OBJC_IVAR___CollectionListViewModel_actionHandler + 8);

      v6();
      sub_10001E970(v6, v7);
    }

    if (a2 && (v8 == a1 && v9 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();
    }
  }

  return result;
}

uint64_t sub_10002E288(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  static Published.subscript.setter();
  sub_10002E098(v5, v6);
}

uint64_t sub_10002E43C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v15)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v14 >> 62)
    {
LABEL_24:
      v13 = v14 & 0xFFFFFFFFFFFFFF8;
      v2 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v13 = v14 & 0xFFFFFFFFFFFFFF8;
      v2 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v3 = 0;
    while (1)
    {
      if (v2 == v3)
      {
      }

      if ((v14 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v3 >= *(v13 + 16))
        {
          goto LABEL_23;
        }

        v4 = *(v14 + 8 * v3 + 32);
      }

      v5 = v4;
      if (__OFADD__(v3, 1))
      {
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v6 = [v4 identifier];
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;

      if (v7 == v14 && v15 == v9)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      ++v3;
      if (v11)
      {
        goto LABEL_19;
      }
    }

LABEL_19:

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    swift_getKeyPath();
    swift_getKeyPath();
    v12 = v0;
    static Published.subscript.setter();
    sub_10002E098(v14, v15);
  }

  return result;
}

uint64_t sub_10002E6E8(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v2;
  static Published.subscript.setter();
  return sub_10002E43C();
}

id sub_10002E788(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = a1;
  static Published.subscript.getter();

  if (v8)
  {
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t sub_10002E850(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v3;
}

double sub_10002E9FC@<D0>(_OWORD *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t sub_10002EA78(uint64_t *a1, void **a2)
{
  v2 = a1[1];
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v6 = v2;

  v4 = v3;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v6)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v4;
    static Published.subscript.setter();
    return sub_10002E43C();
  }

  return result;
}

void sub_10002ECBC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  if (v2)
  {
    v0 = v2;
    v1 = v2;
    static Published.subscript.setter();
    sub_100024904();
  }

  else
  {
    v1 = 0;
    static Published.subscript.setter();
    sub_100024904();
  }
}

void sub_10002EE30(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;
  v3;
  static Published.subscript.setter();
  sub_10002ECBC();
}

uint64_t sub_10002EF40()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_10002F028@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v4;
  return result;
}

uint64_t sub_10002F0A8(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  v5 = v2;
  return static Published.subscript.setter();
}

uint64_t sub_10002F15C(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = a3;
  v8 = a1;
  return static Published.subscript.setter();
}

uint64_t sub_10002F1F4(void **a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a1;
  v7 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v8 = v6;
  v9 = v7;
  return static Published.subscript.setter();
}

Class sub_10002F2E4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, void *a6)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v9 = a1;
  static Published.subscript.getter();

  sub_10001AC14(0, a5, a6);
  v10.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v10.super.isa;
}

uint64_t sub_10002F3E4(void *a1, uint64_t a2, uint64_t a3, unint64_t *a4, void *a5, uint64_t a6, uint64_t a7)
{
  sub_10001AC14(0, a4, a5);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  swift_getKeyPath();
  swift_getKeyPath();
  v8 = a1;
  return static Published.subscript.setter();
}

uint64_t sub_10002F614(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v7 = v6;
  return static Published.subscript.setter();
}

uint64_t sub_10002F6BC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v2)
  {

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    sub_10001AC14(0, &qword_1000B2EC8, TPSCollection_ptr);
    v0 = static NSObject.== infix(_:_:)();
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

uint64_t sub_10002F8F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v2(v3, v5);
}

void sub_10002FC50(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_10002FE2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v2(v3, v5);
}

void sub_10002FF54(uint64_t a1, NSString a2, uint64_t a3)
{
  if (a2)
  {
    a2 = String._bridgeToObjectiveC()();
  }

  v4 = a2;
  (*(a3 + 16))(a3);
}

uint64_t sub_10002FFE4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v5 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();

    if (v3)
    {
      return 1;
    }
  }

  else
  {
    v0 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v0)
    {
      return 1;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (!(v5 >> 62))
  {
    v1 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v1)
    {
      goto LABEL_5;
    }

    return 1;
  }

  v4 = _CocoaArrayWrapper.endIndex.getter();

  if (v4)
  {
    return 1;
  }

LABEL_5:
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v5)
  {

    return 1;
  }

  return 0;
}

char *sub_100030184()
{
  v1 = sub_10001B4A4(&qword_1000B3490, &qword_100078900);
  v2 = *(v1 - 8);
  v81 = v1;
  v82 = v2;
  __chkstk_darwin(v1);
  v79 = &v66 - v3;
  v4 = sub_10001B4A4(&qword_1000B3498, &qword_100078908);
  v5 = *(v4 - 8);
  v83 = v4;
  v84 = v5;
  __chkstk_darwin(v4);
  v78 = &v66 - v6;
  v7 = sub_10001B4A4(&qword_1000B34A0, &qword_100078910);
  v8 = *(v7 - 8);
  v85 = v7;
  v86 = v8;
  __chkstk_darwin(v7);
  v80 = &v66 - v9;
  v10 = sub_10001B4A4(&qword_1000B34A8, &qword_100078918);
  v76 = *(v10 - 8);
  v77 = v10;
  __chkstk_darwin(v10);
  v75 = &v66 - v11;
  v12 = sub_10001B4A4(&qword_1000B34B0, &qword_100078920);
  v73 = *(v12 - 8);
  v74 = v12;
  __chkstk_darwin(v12);
  v72 = &v66 - v13;
  v71 = sub_10001B4A4(&qword_1000B34B8, &qword_100078928);
  v70 = *(v71 - 8);
  __chkstk_darwin(v71);
  v69 = &v66 - v14;
  v68 = sub_10001B4A4(&qword_1000B3228, &qword_100078930);
  v67 = *(v68 - 8);
  __chkstk_darwin(v68);
  v16 = &v66 - v15;
  v66 = sub_10001B4A4(&qword_1000B3220, &unk_100078240);
  v17 = *(v66 - 8);
  __chkstk_darwin(v66);
  v19 = &v66 - v18;
  v20 = sub_10001B4A4(&qword_1000B2D80, &qword_100078250);
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v66 - v22;
  v24 = OBJC_IVAR___CollectionListViewModel__appInBackground;
  LOBYTE(v89) = 0;
  Published.init(initialValue:)();
  v25 = *(v21 + 32);
  v25(&v0[v24], v23, v20);
  v26 = OBJC_IVAR___CollectionListViewModel__viewCollapsed;
  LOBYTE(v89) = 0;
  Published.init(initialValue:)();
  v25(&v0[v26], v23, v20);
  v27 = OBJC_IVAR___CollectionListViewModel__currentCollectionID;
  v89 = 0;
  v90 = 0;
  sub_10001B4A4(&qword_1000B3390, &unk_100077F30);
  Published.init(initialValue:)();
  v28 = *(v17 + 32);
  v29 = v66;
  v28(&v0[v27], v19, v66);
  v30 = OBJC_IVAR___CollectionListViewModel__selectedItemID;
  v89 = 0;
  v90 = 0;
  Published.init(initialValue:)();
  v28(&v0[v30], v19, v29);
  v31 = OBJC_IVAR___CollectionListViewModel__selectedCollectionID;
  v89 = 0;
  v90 = 0;
  Published.init(initialValue:)();
  v28(&v0[v31], v19, v29);
  v32 = OBJC_IVAR___CollectionListViewModel__featuredCollection;
  v89 = 0;
  sub_10001B4A4(&qword_1000B3190, &unk_1000783D0);
  Published.init(initialValue:)();
  v33 = *(v67 + 32);
  v34 = v68;
  v33(&v0[v32], v16, v68);
  v35 = OBJC_IVAR___CollectionListViewModel__checklistCollection;
  v89 = 0;
  Published.init(initialValue:)();
  v33(&v0[v35], v16, v34);
  v36 = OBJC_IVAR___CollectionListViewModel__savedTipsCollection;
  v89 = 0;
  Published.init(initialValue:)();
  v33(&v0[v36], v16, v34);
  v37 = OBJC_IVAR___CollectionListViewModel__collections;
  v89 = _swiftEmptyArrayStorage;
  sub_10001B4A4(&qword_1000B3468, &qword_10007AF20);
  v38 = v69;
  Published.init(initialValue:)();
  (*(v70 + 32))(&v0[v37], v38, v71);
  v39 = OBJC_IVAR___CollectionListViewModel__collectionSections;
  v89 = _swiftEmptyArrayStorage;
  sub_10001B4A4(&qword_1000B3478, &unk_1000783E0);
  v40 = v72;
  Published.init(initialValue:)();
  (*(v73 + 32))(&v0[v39], v40, v74);
  v41 = OBJC_IVAR___CollectionListViewModel__userGuides;
  v89 = _swiftEmptyArrayStorage;
  sub_10001B4A4(&qword_1000B3488, &qword_10007AE70);
  v42 = v75;
  Published.init(initialValue:)();
  (*(v76 + 32))(&v0[v41], v42, v77);
  *&v0[OBJC_IVAR___CollectionListViewModel_featuredAssetViewModel] = 0;
  v43 = &v0[OBJC_IVAR___CollectionListViewModel_actionHandler];
  *v43 = 0;
  *(v43 + 1) = 0;
  v44 = &v0[OBJC_IVAR___CollectionListViewModel_checklistHandler];
  *v44 = 0;
  *(v44 + 1) = 0;
  v45 = &v0[OBJC_IVAR___CollectionListViewModel_userGuideHandler];
  *v45 = 0;
  *(v45 + 1) = 0;
  v46 = &v0[OBJC_IVAR___CollectionListViewModel_supportFlowHandler];
  *v46 = 0;
  *(v46 + 1) = 0;
  v47 = OBJC_IVAR___CollectionListViewModel_colorScheme;
  v48 = enum case for ColorScheme.light(_:);
  v49 = type metadata accessor for ColorScheme();
  (*(*(v49 - 8) + 104))(&v0[v47], v48, v49);
  *&v0[OBJC_IVAR___CollectionListViewModel_cancellables] = &_swiftEmptySetSingleton;
  v50 = [objc_allocWithZone(type metadata accessor for ChecklistViewModel(0)) init];
  swift_beginAccess();
  v88 = v50;
  Published.init(initialValue:)();
  swift_endAccess();
  v51 = type metadata accessor for CollectionListViewModel(0);
  v87.receiver = v0;
  v87.super_class = v51;
  v52 = objc_msgSendSuper2(&v87, "init");
  swift_getKeyPath();
  swift_getKeyPath();
  v53 = v52;
  static Published.subscript.getter();

  v54 = v89;
  v55 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v56 = &v54[OBJC_IVAR___TPSChecklistViewModel_actionHandler];
  v57 = *&v54[OBJC_IVAR___TPSChecklistViewModel_actionHandler];
  v58 = *&v54[OBJC_IVAR___TPSChecklistViewModel_actionHandler + 8];
  *v56 = sub_100032B2C;
  v56[1] = v55;

  sub_10001E970(v57, v58);

  swift_beginAccess();
  v59 = v79;
  Published.projectedValue.getter();
  swift_endAccess();
  sub_10001E8B8(&qword_1000B34C0, &qword_1000B3490, &qword_100078900, &protocol conformance descriptor for Published<A>.Publisher);
  sub_100032B34();
  v60 = v78;
  v61 = v81;
  Publisher<>.removeDuplicates()();
  (*(v82 + 8))(v59, v61);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10001AC14(0, &qword_1000B2EC8, TPSCollection_ptr);
  sub_10001E8B8(&qword_1000B34D8, &qword_1000B3498, &qword_100078908, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  v62 = v80;
  v63 = v83;
  Publisher.compactMap<A>(_:)();

  (*(v84 + 8))(v60, v63);
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_10001E8B8(&qword_1000B34E0, &qword_1000B34A0, &qword_100078910, &protocol conformance descriptor for Publishers.CompactMap<A, B>);
  v64 = v85;
  Publisher<>.sink(receiveValue:)();

  (*(v86 + 8))(v62, v64);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v53;
}

void sub_100030D9C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + OBJC_IVAR___CollectionListViewModel_checklistHandler);
    v4 = *(Strong + OBJC_IVAR___CollectionListViewModel_checklistHandler + 8);
    v6 = Strong;
    sub_10001E900(v5, v4);

    if (v5)
    {
      v5(a1);
      sub_10001E970(v5, v4);
    }
  }
}

id sub_100030E30@<X0>(void **a1@<X0>, void *a3@<X8>)
{
  v4 = *a1;
  if (!*a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v4 = 0;
    if (Strong)
    {
      *&Strong[OBJC_IVAR___CollectionListViewModel_featuredAssetViewModel] = 0;

      v4 = 0;
    }
  }

  *a3 = v4;

  return v4;
}

char *sub_100030EBC(void **a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = [result assetsInfoFor:v2];
    type metadata accessor for TipsContentModel();
    static TipsContentModel.shared()();
    type metadata accessor for DocumentAssetViewModel();
    swift_allocObject();
    *&v4[OBJC_IVAR___CollectionListViewModel_featuredAssetViewModel] = DocumentAssetViewModel.init(document:assetsInfo:contentModel:)();
  }

  return result;
}

id sub_100031054()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CollectionListViewModel(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CollectionListViewModel(uint64_t a1)
{
  result = qword_1000B3448;
  if (!qword_1000B3448)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100031478(uint64_t a1)
{
  sub_100031748();
  if (v1 <= 0x3F)
  {
    sub_100027958(319, &qword_1000B3198, &qword_1000B3390, &unk_100077F30);
    if (v2 <= 0x3F)
    {
      sub_100027958(319, &qword_1000B3188, &qword_1000B3190, &unk_1000783D0);
      if (v3 <= 0x3F)
      {
        sub_100031798(319);
        if (v4 <= 0x3F)
        {
          sub_100027958(319, &qword_1000B3460, &qword_1000B3468, &qword_10007AF20);
          if (v5 <= 0x3F)
          {
            sub_100027958(319, &qword_1000B3470, &qword_1000B3478, &unk_1000783E0);
            if (v6 <= 0x3F)
            {
              sub_100027958(319, &qword_1000B3480, &qword_1000B3488, &qword_10007AE70);
              if (v7 <= 0x3F)
              {
                type metadata accessor for ColorScheme();
                if (v8 <= 0x3F)
                {
                  swift_updateClassMetadata2();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_100031748()
{
  if (!qword_1000B3180)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_1000B3180);
    }
  }
}

void sub_100031798(uint64_t a1)
{
  if (!qword_1000B3458)
  {
    type metadata accessor for ChecklistViewModel(255);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &qword_1000B3458);
    }
  }
}

uint64_t sub_1000317F0@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for CollectionListViewModel(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

id sub_100031874()
{
  v1 = type metadata accessor for ColorScheme();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v14 - v6;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v8 = v15;
  if (!v15)
  {
    return 0;
  }

  v9 = OBJC_IVAR___CollectionListViewModel_colorScheme;
  swift_beginAccess();
  (*(v2 + 16))(v7, &v0[v9], v1);
  (*(v2 + 32))(v5, v7, v1);
  v10 = (*(v2 + 88))(v5, v1);
  v11 = 0;
  if (v10 != enum case for ColorScheme.light(_:))
  {
    if (v10 == enum case for ColorScheme.dark(_:))
    {
      v11 = 1;
    }

    else
    {
      (*(v2 + 8))(v5, v1);
      v11 = 0;
    }
  }

  v12 = [v0 assetsInfoFor:v8 userInterfaceStyle:v11];

  return v12;
}

id sub_100031B44(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (!v7)
  {
    return [a1 count];
  }

  sub_10001AC14(0, &qword_1000B2EC8, TPSCollection_ptr);
  v2 = a1;
  v3 = static NSObject.== infix(_:_:)();

  if ((v3 & 1) == 0)
  {
    return [a1 count];
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v7 >> 62)
  {
    v6 = _CocoaArrayWrapper.endIndex.getter();

    return v6;
  }

  else
  {
    v4 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);

    return v4;
  }
}

BOOL sub_100031D54(void *a1)
{
  v2 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v9)
  {
    sub_10001AC14(0, &qword_1000B2EC8, TPSCollection_ptr);
    v4 = a1;
    v5 = static NSObject.== infix(_:_:)();

    if (v5)
    {
      return [v2 tipCountFor:a1] > 0;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v9 && (sub_10001AC14(0, &qword_1000B2EC8, TPSCollection_ptr), v6 = a1, v7 = static NSObject.== infix(_:_:)(), v9, v6, (v7 & 1) != 0))
  {
    return [v2 tipCountFor:a1] > 0;
  }

  else
  {
    return 0;
  }
}

BOOL sub_100031F14(void *a1)
{
  v2 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = 0;
  if (v7)
  {
    sub_10001AC14(0, &qword_1000B2EC8, TPSCollection_ptr);
    v4 = a1;
    v5 = static NSObject.== infix(_:_:)();

    if ((v5 & 1) != 0 && ![v2 tipCountFor:v4])
    {
      return 1;
    }
  }

  return result;
}

id sub_100032050(uint64_t a1)
{
  v3 = type metadata accessor for ColorScheme();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v15 - v8;
  v10 = OBJC_IVAR___CollectionListViewModel_colorScheme;
  swift_beginAccess();
  (*(v4 + 16))(v9, &v1[v10], v3);
  (*(v4 + 32))(v7, v9, v3);
  v11 = (*(v4 + 88))(v7, v3);
  v12 = 0;
  if (v11 != enum case for ColorScheme.light(_:))
  {
    if (v11 == enum case for ColorScheme.dark(_:))
    {
      v12 = 1;
    }

    else
    {
      (*(v4 + 8))(v7, v3);
      v12 = 0;
    }
  }

  v13 = [v1 assetsInfoFor:a1 userInterfaceStyle:v12];

  return v13;
}

uint64_t sub_100032390(void *a1, uint64_t a2)
{
  v4 = sub_10001B4A4(&unk_1000B3380, &qword_100079940);
  v5 = __chkstk_darwin(v4 - 8);
  v36 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v9 = &v35 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v35 - v11;
  __chkstk_darwin(v10);
  v14 = &v35 - v13;
  v15 = [a1 featuredAssets];
  v16 = [a1 language];
  if (!v16)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = String._bridgeToObjectiveC()();
  }

  v17 = [a1 assetFileInfoManager];
  v18 = [objc_allocWithZone(TPSAssetsConfiguration) initWithAssets:v15 language:v16 userInterfaceStyle:a2 assetFileInfoManager:v17];

  v19 = objc_opt_self();
  v20 = v18;
  v21 = [v19 assetPathFromAssetConfiguration:v20 type:0];
  if (v21)
  {
    v22 = v21;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    URL.init(string:)();
  }

  else
  {

    v23 = type metadata accessor for URL();
    (*(*(v23 - 8) + 56))(v14, 1, 1, v23);
  }

  v24 = [v20 cacheIdentifierForType:0];
  if (v24)
  {
    v25 = v24;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v26 = v20;
  v27 = [v19 assetPathFromAssetConfiguration:v26 type:1];
  if (v27)
  {
    v28 = v27;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    URL.init(string:)();
  }

  else
  {

    v29 = type metadata accessor for URL();
    (*(*(v29 - 8) + 56))(v12, 1, 1, v29);
  }

  v30 = [v26 cacheIdentifierForType:1];
  if (v30)
  {
    v31 = v30;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  sub_10003277C(v12, v9);
  sub_10003277C(v14, v36);
  v32 = objc_allocWithZone(type metadata accessor for TPSAssetsInfo());
  v33 = TPSAssetsInfo.init(videoIdentifier:videoURL:imageIdentifier:imageURL:)();

  sub_1000327EC(v12);
  sub_1000327EC(v14);
  return v33;
}

uint64_t sub_10003277C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001B4A4(&unk_1000B3380, &qword_100079940);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000327EC(uint64_t a1)
{
  v2 = sub_10001B4A4(&unk_1000B3380, &qword_100079940);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100032AF4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_100032B34()
{
  result = qword_1000B34C8;
  if (!qword_1000B34C8)
  {
    sub_10001E860(&qword_1000B3190, &unk_1000783D0);
    sub_100032BB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B34C8);
  }

  return result;
}

unint64_t sub_100032BB8()
{
  result = qword_1000B34D0;
  if (!qword_1000B34D0)
  {
    sub_10001AC14(255, &qword_1000B2EC8, TPSCollection_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B34D0);
  }

  return result;
}

uint64_t sub_100032C30()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100032C70(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_100032C9C()
{
  v1 = *(v0 + 16);
  v2 = String._bridgeToObjectiveC()();
  (*(v1 + 16))(v1, v2);
}

uint64_t sub_100032D64@<X0>(uint64_t a2@<X8>)
{
  v3 = type metadata accessor for ElementVerticalMotion();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v18 - v8;
  *a2 = 0;
  LOBYTE(v19) = 0;
  State.init(wrappedValue:)();
  v10 = v21;
  *(a2 + 24) = v20;
  *(a2 + 32) = v10;
  v11 = type metadata accessor for TipListView(0);
  (*(v4 + 104))(v9, enum case for ElementVerticalMotion.stationary(_:), v3);
  (*(v4 + 16))(v7, v9, v3);
  State.init(wrappedValue:)();
  (*(v4 + 8))(v9, v3);
  v12 = (a2 + *(v11 + 32));
  v19 = 0;
  State.init(wrappedValue:)();
  v13 = v21;
  *v12 = v20;
  v12[1] = v13;
  v14 = (a2 + *(v11 + 36));
  v19 = 0;
  State.init(wrappedValue:)();
  v15 = v21;
  *v14 = v20;
  v14[1] = v15;
  type metadata accessor for TipListViewModel(0);
  sub_100038D98(&qword_1000B34F8, type metadata accessor for TipListViewModel, &protocol conformance descriptor for SearchResultsViewModel);
  result = ObservedObject.init(wrappedValue:)();
  *(a2 + 8) = result;
  *(a2 + 16) = v17;
  return result;
}

uint64_t type metadata accessor for TipListView(uint64_t a1)
{
  result = qword_1000B3560;
  if (!qword_1000B3560)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100033000(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10001B4A4(&qword_1000B3500, &qword_100078950);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000330D0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_10001B4A4(&qword_1000B3500, &qword_100078950);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100033180(uint64_t a1)
{
  sub_100033264(319);
  if (v1 <= 0x3F)
  {
    sub_100033350(319, &qword_1000B2F50, &type metadata for Bool);
    if (v2 <= 0x3F)
    {
      sub_1000332F8(319);
      if (v3 <= 0x3F)
      {
        sub_100033350(319, &unk_1000B3580, &type metadata for CGFloat);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100033264(uint64_t a1)
{
  if (!qword_1000B3570)
  {
    type metadata accessor for TipListViewModel(255);
    sub_100038D98(&qword_1000B34F8, type metadata accessor for TipListViewModel, &protocol conformance descriptor for SearchResultsViewModel);
    v1 = type metadata accessor for ObservedObject();
    if (!v2)
    {
      atomic_store(v1, &qword_1000B3570);
    }
  }
}

void sub_1000332F8(uint64_t a1)
{
  if (!qword_1000B3578)
  {
    type metadata accessor for ElementVerticalMotion();
    v1 = type metadata accessor for State();
    if (!v2)
    {
      atomic_store(v1, &qword_1000B3578);
    }
  }
}

void sub_100033350(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for State();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1000333B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v58 = a3;
  v5 = type metadata accessor for TipListView(0);
  v54 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v60 = v6;
  v57 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10001B4A4(&qword_1000B3640, &qword_100078AA8);
  v46 = *(v7 - 8);
  v47 = v7;
  __chkstk_darwin(v7);
  v9 = &v43 - v8;
  v50 = sub_10001B4A4(&qword_1000B3648, &qword_100078AB0);
  v48 = *(v50 - 8);
  __chkstk_darwin(v50);
  v44 = &v43 - v10;
  v43 = sub_10001B4A4(&qword_1000B3650, &qword_100078AB8);
  __chkstk_darwin(v43);
  v12 = &v43 - v11;
  v51 = sub_10001B4A4(&qword_1000B3658, &qword_100078AC0);
  __chkstk_darwin(v51);
  v14 = &v43 - v13;
  v59 = sub_10001B4A4(&qword_1000B3660, &qword_100078AC8);
  __chkstk_darwin(v59);
  v52 = &v43 - v15;
  v16 = sub_10001B4A4(&qword_1000B3668, qword_100078AD0);
  v55 = *(v16 - 8);
  v56 = v16;
  __chkstk_darwin(v16);
  v53 = &v43 - v17;
  v18 = *(a2 + 16);
  type metadata accessor for TipListViewModel(0);
  sub_100038D98(&qword_1000B34F8, type metadata accessor for TipListViewModel, &protocol conformance descriptor for SearchResultsViewModel);
  v49 = v18;
  v19 = ObservedObject.projectedValue.getter();
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  v69 = v75;
  v70 = v76;
  v61 = a2;
  v62 = a1;
  v45 = a1;
  sub_10001B4A4(&qword_1000B3670, &qword_100078B20);
  sub_10001E8B8(&qword_1000B3678, &qword_1000B3670, &qword_100078B20, &protocol conformance descriptor for TupleView<A>);
  List.init(selection:content:)();
  sub_10001B4A4(&qword_1000B3680, &qword_100078B28);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100077C60;
  LOBYTE(a1) = static Axis.Set.horizontal.getter();
  *(inited + 32) = a1;
  v21 = static Axis.Set.vertical.getter();
  *(inited + 33) = v21;
  Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != a1)
  {
    Axis.Set.init(rawValue:)();
  }

  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v21)
  {
    Axis.Set.init(rawValue:)();
  }

  static Alignment.center.getter();
  sub_10001E8B8(&qword_1000B3688, &qword_1000B3640, &qword_100078AA8, &protocol conformance descriptor for List<A, B>);
  v22 = v44;
  v23 = v47;
  View.containerRelativeFrame(_:alignment:)();
  (*(v46 + 8))(v9, v23);
  v24 = static Alignment.center.getter();
  v26 = v25;
  sub_100035224(a2, &v64);
  v71 = v66;
  v72 = v67;
  v69 = v64;
  v70 = v65;
  *&v73 = v68;
  *(&v73 + 1) = v24;
  v74 = v26;
  (*(v48 + 32))(v12, v22, v50);
  v27 = &v12[*(v43 + 36)];
  v28 = v72;
  *(v27 + 2) = v71;
  *(v27 + 3) = v28;
  *(v27 + 4) = v73;
  *(v27 + 10) = v74;
  v29 = v70;
  *v27 = v69;
  *(v27 + 1) = v29;
  v77 = v66;
  v78 = v67;
  v75 = v64;
  v76 = v65;
  v79 = v68;
  v80 = v24;
  v81 = v26;
  sub_10001F808(&v69, &v63, &qword_1000B3690, &qword_100078B30);
  sub_10001F870(&v75, &qword_1000B3690, &qword_100078B30);
  sub_100023628(v12, v14, &qword_1000B3650, &qword_100078AB8);
  v30 = &v14[*(v51 + 36)];
  *v30 = 1953720684;
  *(v30 + 1) = 0xE400000000000000;
  KeyPath = swift_getKeyPath();
  v32 = v52;
  sub_100023628(v14, v52, &qword_1000B3658, &qword_100078AC0);
  v33 = v32 + *(v59 + 36);
  *v33 = KeyPath;
  *(v33 + 8) = 0;
  *(v33 + 16) = 0;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v34 = v63;
  v35 = v57;
  sub_100038CB4(a2, v57);
  v36 = (*(v54 + 80) + 16) & ~*(v54 + 80);
  v54 = a2;
  v37 = swift_allocObject();
  sub_100038D1C(v35, v37 + v36);
  sub_10001B4A4(&qword_1000B31A8, &qword_100078BC0);
  sub_100039218();
  sub_1000394B0();
  v38 = v53;
  View.onChange<A>(of:initial:_:)();

  sub_10001F870(v32, &qword_1000B3660, &qword_100078AC8);
  sub_100038CB4(v54, v35);
  v39 = swift_allocObject();
  sub_100038D1C(v35, v39 + v36);
  v40 = v58;
  (*(v55 + 32))(v58, v38, v56);
  result = sub_10001B4A4(&qword_1000B36E8, qword_100078BD8);
  v42 = (v40 + *(result + 36));
  *v42 = sub_10003959C;
  v42[1] = v39;
  v42[2] = 0;
  v42[3] = 0;
  return result;
}

uint64_t sub_100033C5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v84 = a3;
  v5 = sub_10001B4A4(&qword_1000B38D8, &qword_100079060);
  v85 = *(v5 - 8);
  v86 = v5;
  v6 = __chkstk_darwin(v5);
  v83 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v88 = &v69 - v8;
  v9 = type metadata accessor for TipListView(0);
  v76 = *(v9 - 8);
  __chkstk_darwin(v9 - 8);
  v87 = v10;
  v82 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for CoordinateSpace();
  v77 = *(v78 - 8);
  __chkstk_darwin(v78);
  v75 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10001B4A4(&qword_1000B38E0, &qword_100079068);
  __chkstk_darwin(v12);
  v14 = &v69 - v13;
  v15 = sub_10001B4A4(&qword_1000B38E8, &qword_100079070);
  v16 = v15 - 8;
  __chkstk_darwin(v15);
  v18 = &v69 - v17;
  v72 = sub_10001B4A4(&qword_1000B38F0, &qword_100079078);
  __chkstk_darwin(v72);
  v20 = &v69 - v19;
  v73 = sub_10001B4A4(&qword_1000B38F8, &qword_100079080);
  __chkstk_darwin(v73);
  v74 = &v69 - v21;
  v81 = sub_10001B4A4(&qword_1000B3900, &qword_100079088);
  v80 = *(v81 - 8);
  v22 = __chkstk_darwin(v81);
  v79 = &v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v89 = &v69 - v24;
  sub_10003474C(v14);
  *&v70 = a2;
  GeometryProxy.size.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v25 = &v14[*(v12 + 36)];
  v26 = v94;
  *v25 = v93;
  *(v25 + 1) = v26;
  *(v25 + 2) = v95;
  static VerticalEdge.Set.all.getter();
  sub_10003A474();
  View.listRowSeparator(_:edges:)();
  sub_10001F870(v14, &qword_1000B38E0, &qword_100079068);
  v27 = &v18[*(sub_10001B4A4(&qword_1000B3918, &qword_100079090) + 52)];
  *v27 = 0x646165487473696CLL;
  *(v27 + 1) = 0xEA00000000007265;
  v28 = *(a1 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v29 = -*v91;
  v30 = &v18[*(sub_10001B4A4(&qword_1000B3920, &qword_100079098) + 36)];
  *v30 = v29;
  *(v30 + 2) = 0;
  *(v30 + 3) = 0;
  *(v30 + 1) = 0;
  v30[32] = 0;
  v31 = a1;
  v32 = Namespace.wrappedValue.getter();
  LODWORD(v14) = static MatchedGeometryProperties.frame.getter();
  static UnitPoint.center.getter();
  v33 = &v18[*(v16 + 44)];
  *v33 = 0x646165487473696CLL;
  *(v33 + 1) = 0xEA00000000007265;
  *(v33 + 2) = v32;
  *(v33 + 6) = v14;
  *(v33 + 4) = v34;
  *(v33 + 5) = v35;
  v33[48] = 1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v36 = *&v91[0];
  v37 = [*&v91[0] gradient];

  swift_getKeyPath();
  swift_getKeyPath();
  v71 = v28;
  static Published.subscript.getter();

  if (BYTE8(v91[0]) == 1)
  {
    GeometryProxy.size.getter();
  }

  else
  {
    v38 = *v91;
  }

  sub_1000383FC(a1, v91, round(v38));
  v39 = v92;
  v70 = v91[0];
  v69 = v91[1];
  v40 = static Alignment.center.getter();
  v42 = v41;
  sub_100023628(v18, v20, &qword_1000B38E8, &qword_100079070);
  v43 = &v20[*(v72 + 36)];
  v44 = v69;
  *v43 = v70;
  *(v43 + 1) = v44;
  v43[32] = v39;
  *(v43 + 5) = v40;
  *(v43 + 6) = v42;
  v45 = *(a1 + 32);
  LOBYTE(v91[0]) = *(a1 + 24);
  *(&v91[0] + 1) = v45;
  sub_10001B4A4(&qword_1000B3028, &qword_100078C60);
  State.wrappedValue.getter();
  if (v90)
  {
    v46 = 0.0;
  }

  else
  {
    v46 = 1.0;
  }

  v47 = v74;
  sub_100023628(v20, v74, &qword_1000B38F0, &qword_100079078);
  *(v47 + *(v73 + 36)) = v46;
  *&v91[0] = 1953720684;
  *(&v91[0] + 1) = 0xE400000000000000;
  v48 = v75;
  AnyHashable.init<A>(_:)();
  v49 = v77;
  v50 = v78;
  (*(v77 + 104))(v48, enum case for CoordinateSpace.named(_:), v78);
  v51 = v82;
  sub_100038CB4(v31, v82);
  v52 = (*(v76 + 80) + 16) & ~*(v76 + 80);
  v53 = swift_allocObject();
  sub_100038D1C(v51, v53 + v52);
  sub_10003A66C();
  View.readVerticalMotion(in:onChange:)();

  (*(v49 + 8))(v48, v50);
  sub_10001F870(v47, &qword_1000B38F8, &qword_100079080);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  sub_100038CB4(v31, v51);
  v54 = swift_allocObject();
  sub_100038D1C(v51, v54 + v52);
  sub_10001B4A4(&qword_1000B31F8, &qword_1000790F0);
  sub_10001B4A4(&qword_1000B3980, &qword_1000790F8);
  sub_10001E8B8(&qword_1000B3988, &qword_1000B31F8, &qword_1000790F0, &protocol conformance descriptor for [A]);
  sub_10003AB1C();
  v55 = v88;
  ForEach<>.init(_:id:content:)();
  v56 = v80;
  v57 = *(v80 + 16);
  v58 = v79;
  v59 = v81;
  v57(v79, v89, v81);
  v60 = v85;
  v87 = *(v85 + 16);
  v61 = v83;
  v62 = v55;
  v63 = v86;
  v87(v83, v62, v86);
  v64 = v84;
  v57(v84, v58, v59);
  v65 = sub_10001B4A4(&qword_1000B39A0, &qword_100079100);
  v87(&v64[*(v65 + 48)], v61, v63);
  v66 = *(v60 + 8);
  v66(v88, v63);
  v67 = *(v56 + 8);
  v67(v89, v59);
  v66(v61, v63);
  return (v67)(v58, v59);
}

uint64_t sub_10003474C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v54 = a1;
  v3 = type metadata accessor for TipListView(0);
  v53 = *(v3 - 8);
  v52 = *(v53 + 64);
  __chkstk_darwin(v3 - 8);
  v51 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10001B4A4(&qword_1000B3740, &qword_100078D70);
  __chkstk_darwin(v5 - 8);
  v7 = &v50 - v6;
  v8 = sub_10001B4A4(&qword_1000B3748, &qword_100078D78);
  v9 = v8 - 8;
  __chkstk_darwin(v8);
  v11 = &v50 - v10;
  v12 = sub_10001B4A4(&qword_1000B3750, &qword_100078D80);
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v15 = &v50 - v14;
  v16 = sub_10001B4A4(&qword_1000B3758, &qword_100078D88);
  __chkstk_darwin(v16);
  v18 = &v50 - v17;
  v50 = sub_10001B4A4(&qword_1000B3760, &qword_100078D90);
  v19 = *(v50 - 8);
  __chkstk_darwin(v50);
  v21 = &v50 - v20;
  *v7 = static HorizontalAlignment.leading.getter();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v22 = sub_10001B4A4(&qword_1000B3768, &qword_100078D98);
  sub_100036970(&v7[*(v22 + 44)]);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_100023628(v7, v11, &qword_1000B3740, &qword_100078D70);
  v23 = &v11[*(v9 + 44)];
  v24 = v60;
  *(v23 + 4) = v59;
  *(v23 + 5) = v24;
  *(v23 + 6) = v61;
  v25 = v56;
  *v23 = v55;
  *(v23 + 1) = v25;
  v26 = v58;
  *(v23 + 2) = v57;
  *(v23 + 3) = v26;
  LOBYTE(v9) = static Edge.Set.bottom.getter();
  dispatch thunk of SearchResultsViewModel.viewCollapsed.getter();
  EdgeInsets.init(_all:)();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  sub_100023628(v11, v15, &qword_1000B3748, &qword_100078D78);
  v35 = &v15[*(v13 + 44)];
  *v35 = v9;
  *(v35 + 1) = v28;
  *(v35 + 2) = v30;
  *(v35 + 3) = v32;
  *(v35 + 4) = v34;
  v35[40] = 0;
  LOBYTE(v11) = static Edge.Set.horizontal.getter();
  dispatch thunk of SearchResultsViewModel.viewCollapsed.getter();
  EdgeInsets.init(_all:)();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  sub_100023628(v15, v18, &qword_1000B3750, &qword_100078D80);
  v44 = &v18[*(v16 + 36)];
  *v44 = v11;
  *(v44 + 1) = v37;
  *(v44 + 2) = v39;
  *(v44 + 3) = v41;
  *(v44 + 4) = v43;
  v44[40] = 0;
  v45 = v51;
  sub_100038CB4(v2, v51);
  v46 = (*(v53 + 80) + 16) & ~*(v53 + 80);
  v47 = swift_allocObject();
  sub_100038D1C(v45, v47 + v46);
  sub_100039DC8(&qword_1000B3770, &qword_1000B3758, &qword_100078D88, sub_100039A6C);
  View.readScrollOffset(onChange:)();

  sub_10001F870(v18, &qword_1000B3758, &qword_100078D88);
  v48 = v54;
  (*(v19 + 32))(v54, v21, v50);
  result = sub_10001B4A4(&qword_1000B3730, qword_100078D08);
  *(v48 + *(result + 36)) = 256;
  return result;
}

uint64_t sub_100034CA0(uint64_t a1, double a2)
{
  v4 = type metadata accessor for ElementVerticalMotion();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v19 - v9;
  v11 = type metadata accessor for TipListView(0);
  v12 = (a1 + *(v11 + 32));
  v14 = v12[1];
  v20 = *v12;
  v13 = v20;
  v21 = v14;
  sub_10001B4A4(&qword_1000B39B0, &qword_100079110);
  State.wrappedValue.getter();
  static ElementVerticalMotion.fromPositionChange(previous:current:)();
  (*(v5 + 16))(v8, v10, v4);
  sub_10001B4A4(&qword_1000B3500, &qword_100078950);
  State.wrappedValue.setter();
  (*(v5 + 8))(v10, v4);
  v20 = v13;
  v21 = v14;
  State.wrappedValue.getter();
  v15 = (a1 + *(v11 + 36));
  v16 = *v15;
  v17 = v15[1];
  v20 = v16;
  v21 = v17;
  State.wrappedValue.setter();
  *&v19[1] = a2;
  v20 = v13;
  v21 = v14;
  return State.wrappedValue.setter();
}

unint64_t sub_100034E94@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ListItemDocumentView();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10001B4A4(&qword_1000B39A8, &qword_100079108);
  v32 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v30 - v11;
  v13 = *a1;
  *(a2 + 16);
  v14 = v13;
  ListItemDocumentView.init(viewModel:document:preferLineCount:)();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v15 = v33;
  if (!(v33 >> 62))
  {
    v16 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
      goto LABEL_3;
    }

LABEL_10:

    goto LABEL_11;
  }

  v16 = _CocoaArrayWrapper.endIndex.getter();
  if (!v16)
  {
    goto LABEL_10;
  }

LABEL_3:
  v17 = __OFSUB__(v16, 1);
  result = v16 - 1;
  if (v17)
  {
    __break(1u);
    goto LABEL_19;
  }

  v31 = v10;
  if ((v15 & 0xC000000000000001) != 0)
  {
LABEL_19:
    v19 = v7;
    v20 = v6;
    v21 = a3;
    v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_8;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (result >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_21:
    __break(1u);
    return result;
  }

  v19 = v7;
  v20 = v6;
  v21 = a3;
  v22 = *(v15 + 8 * result + 32);
LABEL_8:
  v23 = v22;

  sub_10001AC14(0, &qword_1000B30C8, TPSTip_ptr);
  v24 = v14;
  static NSObject.== infix(_:_:)();

  a3 = v21;
  v6 = v20;
  v7 = v19;
  v10 = v31;
LABEL_11:
  static VerticalEdge.Set.bottom.getter();
  sub_100038D98(&qword_1000B3998, &type metadata accessor for ListItemDocumentView, &protocol conformance descriptor for ListItemDocumentView);
  View.listRowSeparator(_:edges:)();
  (*(v7 + 8))(v9, v6);
  v25 = dispatch thunk of SearchResultsViewModel.viewCollapsed.getter();
  v26 = v25 & 1;
  if (v25)
  {
    v27 = 0;
  }

  else
  {
    v27 = 0x4024000000000000;
  }

  if (v25)
  {
    v28 = 0;
  }

  else
  {
    v28 = 0x4028000000000000;
  }

  (*(v32 + 32))(a3, v12, v10);
  result = sub_10001B4A4(&qword_1000B3980, &qword_1000790F8);
  v29 = a3 + *(result + 36);
  *v29 = v27;
  *(v29 + 8) = v27;
  *(v29 + 16) = v27;
  *(v29 + 24) = v28;
  *(v29 + 32) = v26;
  return result;
}

void *sub_100035224@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TipListView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = *(a1 + 32);
  LOBYTE(v21) = *(a1 + 24);
  v22 = v7;
  sub_10001B4A4(&qword_1000B3028, &qword_100078C60);
  result = State.wrappedValue.getter();
  if (v20[15] == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v22 == 1)
    {
      GeometryProxy.size.getter();
    }

    else
    {
      v9 = v21;
    }

    v16 = round(v9);
    sub_100038CB4(a1, &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
    v17 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v11 = swift_allocObject();
    sub_100038D1C(&v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v11 + v17);
    *(v11 + ((v6 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = v16;
    v12 = Namespace.wrappedValue.getter();
    v18 = static MatchedGeometryProperties.frame.getter();
    result = static UnitPoint.center.getter();
    *(&v15 + 1) = v19;
    v14 = xmmword_100078940;
    v13 = v18;
    v10 = sub_1000397C8;
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0uLL;
    v15 = 0uLL;
  }

  *a2 = v10;
  *(a2 + 8) = v11;
  *(a2 + 16) = v14;
  *(a2 + 32) = v12;
  *(a2 + 40) = v13;
  *(a2 + 48) = v15;
  *(a2 + 64) = 0;
  return result;
}

void sub_100035444(uint64_t a1, void **a2, uint64_t a3)
{
  v3 = *a2;
  if (*a2)
  {
    v4 = *(a3 + 16);
    swift_getKeyPath();
    swift_getKeyPath();
    v5 = v3;
    static Published.subscript.getter();

    v7 = v15[0];
    v15[0] = v5;
    __chkstk_darwin(v6);
    v14[2] = v15;
    v8 = sub_100028744(sub_10003AD40, v14, v7);

    if ((v8 & 1) != 0 && (dispatch thunk of SearchResultsViewModel.viewCollapsed.getter() & 1) == 0)
    {
      v9 = [v5 identifier];
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      swift_getKeyPath();
      swift_getKeyPath();
      v15[0] = v10;
      v15[1] = v12;
      v13 = v4;
      static Published.subscript.setter();
      sub_10004F6A0();
    }
  }
}

uint64_t sub_1000355B4(uint64_t a1)
{
  v25 = a1;
  v27 = type metadata accessor for DispatchWorkItemFlags();
  v30 = *(v27 - 8);
  __chkstk_darwin(v27);
  v2 = &v23 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for DispatchQoS();
  v28 = *(v3 - 8);
  v29 = v3;
  __chkstk_darwin(v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TipListView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = type metadata accessor for DispatchTime();
  v26 = v9;
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v23 - v14;
  sub_10001AC14(0, &qword_1000B2D48, OS_dispatch_queue_ptr);
  v24 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v16 = *(v10 + 8);
  v16(v13, v9);
  sub_100038CB4(v25, &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v18 = swift_allocObject();
  sub_100038D1C(&v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
  aBlock[4] = sub_1000395B4;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002086C;
  aBlock[3] = &unk_1000A3B00;
  v19 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100038D98(&qword_1000B2D50, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10001B4A4(&qword_1000B2D58, &unk_100077D40);
  sub_10001E8B8(&qword_1000B2D60, &qword_1000B2D58, &unk_100077D40, &protocol conformance descriptor for [A]);
  v20 = v27;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v21 = v24;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v19);

  (*(v30 + 8))(v2, v20);
  (*(v28 + 8))(v5, v29);
  return (v16)(v15, v26);
}

void sub_100035A20(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((v12 & 1) == 0)
  {
    if (dispatch thunk of SearchResultsViewModel.viewCollapsed.getter())
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v12 = 0;
      v13 = 0;
      v2 = v1;
      static Published.subscript.setter();
      sub_10004F6A0();
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v3 = v12;
      if (v12)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        __chkstk_darwin(v4);
        v11[2] = &v12;
        v5 = sub_100028744(sub_100039660, v11, v12);

        if (v5)
        {
          v6 = [v3 identifier];
          v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v9 = v8;

          swift_getKeyPath();
          swift_getKeyPath();
          v12 = v7;
          v13 = v9;
          v10 = v1;
          static Published.subscript.setter();
          sub_10004F6A0();
        }
      }
    }
  }
}

uint64_t sub_100035C60@<X0>(uint64_t a1@<X8>)
{
  v17[1] = a1;
  v18 = type metadata accessor for ContentMessageView();
  v17[0] = *(v18 - 8);
  __chkstk_darwin(v18);
  v3 = v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10001B4A4(&qword_1000B35C0, &unk_1000789C0);
  __chkstk_darwin(v4);
  v6 = (v17 - v5);
  v7 = type metadata accessor for TipListView(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v19 >> 62)
  {
    v10 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v10 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v10)
  {
    sub_100038CB4(v1, v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    v11 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v12 = swift_allocObject();
    sub_100038D1C(v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
    *v6 = sub_100038D80;
    v6[1] = v12;
    swift_storeEnumTagMultiPayload();
    sub_10001B4A4(&qword_1000B35C8, &unk_100078A18);
    sub_10001E8B8(&qword_1000B35D0, &qword_1000B35C8, &unk_100078A18, &protocol conformance descriptor for ScrollViewReader<A>);
    sub_100038D98(&qword_1000B35D8, &type metadata accessor for ContentMessageView, &protocol conformance descriptor for ContentMessageView);
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    if ([objc_opt_self() isPadUI])
    {
      dispatch thunk of SearchResultsViewModel.viewCollapsed.getter();
    }

    v14 = objc_allocWithZone(type metadata accessor for ContentMessageViewModel());
    ContentMessageViewModel.init(contentMessageType:additionalContext:)();
    ContentMessageView.init(with:maxWidth:)();
    v15 = v17[0];
    v16 = v18;
    (*(v17[0] + 16))(v6, v3, v18);
    swift_storeEnumTagMultiPayload();
    sub_10001B4A4(&qword_1000B35C8, &unk_100078A18);
    sub_10001E8B8(&qword_1000B35D0, &qword_1000B35C8, &unk_100078A18, &protocol conformance descriptor for ScrollViewReader<A>);
    sub_100038D98(&qword_1000B35D8, &type metadata accessor for ContentMessageView, &protocol conformance descriptor for ContentMessageView);
    _ConditionalContent<>.init(storage:)();
    return (*(v15 + 8))(v3, v16);
  }
}

uint64_t sub_1000360B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001B4A4(&qword_1000B2F90, &qword_100077CF0);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  v7 = sub_10001B4A4(&qword_1000B35E0, &qword_100078A28);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  sub_100036300(a2, &v14 - v8);
  v10 = *(v7 + 36);
  v11 = type metadata accessor for ScrollViewProxy();
  (*(*(v11 - 8) + 16))(&v9[v10], a1, v11);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  sub_100022F14();
  AppEntity.fullyQualifiedIdentifier.getter();

  v12 = type metadata accessor for EntityIdentifier();
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  sub_100038DE8();
  View.appEntityIdentifier(_:)();
  sub_10001F870(v6, &qword_1000B2F90, &qword_100077CF0);
  return sub_10001F870(v9, &qword_1000B35E0, &qword_100078A28);
}

uint64_t sub_100036300@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v38 = type metadata accessor for InsetListStyle();
  v31 = *(v38 - 8);
  __chkstk_darwin(v38);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_10001B4A4(&qword_1000B3628, &qword_100078A90);
  v33 = *(v39 - 8);
  __chkstk_darwin(v39);
  v32 = &v31 - v5;
  v35 = sub_10001B4A4(&qword_1000B3630, &qword_100078A98);
  __chkstk_darwin(v35);
  v37 = &v31 - v6;
  v34 = type metadata accessor for PlainListStyle();
  v7 = *(v34 - 8);
  __chkstk_darwin(v34);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TipListView(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_10001B4A4(&qword_1000B3638, &qword_100078AA0);
  v14 = *(v36 - 8);
  __chkstk_darwin(v36);
  v16 = &v31 - v15;
  v17 = dispatch thunk of SearchResultsViewModel.viewCollapsed.getter();
  sub_100038CB4(a1, v13);
  v18 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v19 = swift_allocObject();
  sub_100038D1C(v13, v19 + v18);
  if (v17)
  {
    v41 = sub_10003AD5C;
    v42 = v19;
    PlainListStyle.init()();
    v20 = sub_10001B4A4(&qword_1000B3610, &qword_100078A88);
    v21 = sub_10001E8B8(&qword_1000B3618, &qword_1000B3610, &qword_100078A88, &protocol conformance descriptor for GeometryReader<A>);
    v22 = v34;
    View.listStyle<A>(_:)();
    (*(v7 + 8))(v9, v22);

    v23 = v36;
    (*(v14 + 16))(v37, v16, v36);
    swift_storeEnumTagMultiPayload();
    v41 = v20;
    v42 = v22;
    v43 = v21;
    v44 = &protocol witness table for PlainListStyle;
    swift_getOpaqueTypeConformance2();
    v41 = v20;
    v42 = v38;
    v43 = v21;
    v44 = &protocol witness table for InsetListStyle;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v14 + 8))(v16, v23);
  }

  else
  {
    v41 = sub_100039070;
    v42 = v19;
    InsetListStyle.init()();
    v25 = sub_10001B4A4(&qword_1000B3610, &qword_100078A88);
    v26 = sub_10001E8B8(&qword_1000B3618, &qword_1000B3610, &qword_100078A88, &protocol conformance descriptor for GeometryReader<A>);
    v27 = v32;
    v28 = v38;
    View.listStyle<A>(_:)();
    (*(v31 + 8))(v4, v28);

    v29 = v33;
    v30 = v39;
    (*(v33 + 16))(v37, v27, v39);
    swift_storeEnumTagMultiPayload();
    v41 = v25;
    v42 = v34;
    v43 = v26;
    v44 = &protocol witness table for PlainListStyle;
    swift_getOpaqueTypeConformance2();
    v41 = v25;
    v42 = v28;
    v43 = v26;
    v44 = &protocol witness table for InsetListStyle;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v29 + 8))(v27, v30);
  }
}

uint64_t sub_100036970@<X0>(uint64_t a2@<X8>)
{
  v115 = a2;
  v2 = type metadata accessor for AccessibilityTraits();
  v108 = *(v2 - 8);
  v109 = v2;
  __chkstk_darwin(v2);
  v106 = &v106 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10001B4A4(&qword_1000B3790, &qword_100078DA0);
  v116 = *(v4 - 8);
  v117 = v4;
  __chkstk_darwin(v4);
  v107 = &v106 - v5;
  v6 = sub_10001B4A4(&qword_1000B3798, &unk_100078DA8);
  v7 = __chkstk_darwin(v6 - 8);
  v114 = &v106 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v118 = &v106 - v9;
  v10 = sub_10001B4A4(&qword_1000B3030, &qword_100077D50);
  __chkstk_darwin(v10 - 8);
  v12 = &v106 - v11;
  v13 = sub_10001B4A4(&qword_1000B37A0, &qword_100078DB8);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = &v106 - v15;
  v17 = sub_10001B4A4(&qword_1000B37A8, &qword_100078DC0);
  v18 = v17 - 8;
  __chkstk_darwin(v17);
  v110 = &v106 - v19;
  v20 = sub_10001B4A4(&qword_1000B37B0, &qword_100078DC8);
  v21 = v20 - 8;
  __chkstk_darwin(v20);
  v111 = &v106 - v22;
  v113 = sub_10001B4A4(&qword_1000B37B8, qword_100078DD0) - 8;
  v23 = __chkstk_darwin(v113);
  v119 = &v106 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v112 = &v106 - v26;
  __chkstk_darwin(v25);
  v120 = &v106 - v27;
  sub_1000374E0(v16);
  v28 = static Edge.Set.top.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  EdgeInsets.init(_all:)();
  v29 = &v16[*(v14 + 44)];
  *v29 = v28;
  *(v29 + 1) = v30;
  *(v29 + 2) = v31;
  *(v29 + 3) = v32;
  *(v29 + 4) = v33;
  v29[40] = 0;
  dispatch thunk of SearchResultsViewModel.viewCollapsed.getter();
  v34 = type metadata accessor for Font.Design();
  (*(*(v34 - 8) + 56))(v12, 1, 1, v34);
  static Font.system(size:weight:design:)();
  sub_10001F870(v12, &qword_1000B3030, &qword_100077D50);
  static Font.Weight.semibold.getter();
  v35 = Font.weight(_:)();

  KeyPath = swift_getKeyPath();
  v37 = v16;
  v38 = v110;
  sub_100023628(v37, v110, &qword_1000B37A0, &qword_100078DB8);
  v39 = (v38 + *(v18 + 44));
  *v39 = KeyPath;
  v39[1] = v35;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v40 = v111;
  sub_100023628(v38, v111, &qword_1000B37A8, &qword_100078DC0);
  v41 = (v40 + *(v21 + 44));
  v42 = v141[5];
  v41[4] = v141[4];
  v41[5] = v42;
  v41[6] = v141[6];
  v43 = v141[1];
  *v41 = v141[0];
  v41[1] = v43;
  v44 = v141[3];
  v41[2] = v141[2];
  v41[3] = v44;
  v45 = static Color.white.getter();
  v46 = swift_getKeyPath();
  v47 = v40;
  v48 = v112;
  sub_100023628(v47, v112, &qword_1000B37B0, &qword_100078DC8);
  v49 = (v48 + *(v113 + 44));
  *v49 = v46;
  v49[1] = v45;
  sub_100023628(v48, v120, &qword_1000B37B8, qword_100078DD0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v50 = v130;
  v51 = [v130 title];

  if (v51)
  {
    v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v54 = v53;

    *&v130 = v52;
    *(&v130 + 1) = v54;
    sub_1000235B4();
    v55 = Text.init<A>(_:)();
    v112 = v56;
    v113 = v55;
    v58 = v57;
    v60 = v59;
    v61 = swift_getKeyPath();
    v62 = static Edge.Set.top.getter();
    dispatch thunk of SearchResultsViewModel.viewCollapsed.getter();
    EdgeInsets.init(_all:)();
    v64 = v63;
    v66 = v65;
    v68 = v67;
    v70 = v69;
    LOBYTE(v52) = v58 & 1;
    v140 = v58 & 1;
    v139 = 0;
    static Font.title2.getter();
    static Font.Weight.bold.getter();
    v71 = Font.weight(_:)();

    v72 = swift_getKeyPath();
    v73 = static Color.white.getter();
    v74 = swift_getKeyPath();
    v75 = static HierarchicalShapeStyle.primary.getter();
    *&v121 = v113;
    *(&v121 + 1) = v112;
    LOBYTE(v122) = v52;
    *(&v122 + 1) = v60;
    *&v123 = v61;
    BYTE8(v123) = 0;
    LOBYTE(v124) = v62;
    *(&v124 + 1) = v64;
    *&v125 = v66;
    *(&v125 + 1) = v68;
    *&v126 = v70;
    BYTE8(v126) = 0;
    *&v127 = v72;
    *(&v127 + 1) = v71;
    *&v128 = v74;
    *(&v128 + 1) = v73;
    v129 = v75;
    v76 = v106;
    static AccessibilityTraits.isHeader.getter();
    sub_10001B4A4(&qword_1000B37D0, &qword_100078EE0);
    sub_100039B74();
    v77 = v107;
    View.accessibilityAddTraits(_:)();
    (*(v108 + 8))(v76, v109);
    v136 = v127;
    v137 = v128;
    v138 = v129;
    v132 = v123;
    v133 = v124;
    v134 = v125;
    v135 = v126;
    v130 = v121;
    v131 = v122;
    sub_10001F870(&v130, &qword_1000B37D0, &qword_100078EE0);
    v78 = v77;
    v79 = v118;
    sub_100023628(v78, v118, &qword_1000B3790, &qword_100078DA0);
    (*(v116 + 56))(v79, 0, 1, v117);
  }

  else
  {
    v79 = v118;
    (*(v116 + 56))(v118, 1, 1, v117);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v80 = v130;
  v81 = [v130 text];

  if (v81)
  {
    v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v84 = v83;

    *&v130 = v82;
    *(&v130 + 1) = v84;
    sub_1000235B4();
    v85 = Text.init<A>(_:)();
    v112 = v86;
    v113 = v85;
    v88 = v87;
    v111 = v89;
    v110 = swift_getKeyPath();
    static Font.title2.getter();
    static Font.Weight.regular.getter();
    v109 = Font.weight(_:)();

    v117 = swift_getKeyPath();
    LOBYTE(v130) = v88 & 1;
    v90 = v88 & 1;
    v108 = static Color.secondary.getter();
    v116 = swift_getKeyPath();
    LODWORD(v107) = static HierarchicalShapeStyle.secondary.getter();
  }

  else
  {
    v112 = 0;
    v113 = 0;
    v110 = 0;
    v111 = 0;
    v116 = 0;
    v117 = 0;
    v108 = 0;
    v109 = 0;
    LODWORD(v107) = 0;
    v90 = 0;
  }

  v91 = v119;
  sub_10001F808(v120, v119, &qword_1000B37B8, qword_100078DD0);
  v92 = v114;
  sub_10001F808(v79, v114, &qword_1000B3798, &unk_100078DA8);
  v93 = v115;
  sub_10001F808(v91, v115, &qword_1000B37B8, qword_100078DD0);
  v94 = sub_10001B4A4(&qword_1000B37C0, &qword_100078EA0);
  sub_10001F808(v92, v93 + *(v94 + 48), &qword_1000B3798, &unk_100078DA8);
  v95 = v93 + *(v94 + 64);
  v97 = v112;
  v96 = v113;
  *&v121 = v113;
  *(&v121 + 1) = v112;
  v99 = v110;
  v98 = v111;
  *&v122 = v90;
  *(&v122 + 1) = v111;
  v123 = v110;
  v100 = v108;
  v101 = v109;
  *&v124 = v117;
  *(&v124 + 1) = v109;
  *&v125 = v116;
  *(&v125 + 1) = v108;
  v102 = v107;
  LODWORD(v126) = v107;
  v103 = v124;
  *(v95 + 32) = v110;
  *(v95 + 48) = v103;
  *(v95 + 80) = v102;
  v104 = v122;
  *v95 = v121;
  *(v95 + 16) = v104;
  *(v95 + 64) = v125;
  sub_10001F808(&v121, &v130, &qword_1000B37C8, &qword_100078EA8);
  sub_10001F870(v118, &qword_1000B3798, &unk_100078DA8);
  sub_10001F870(v120, &qword_1000B37B8, qword_100078DD0);
  *&v130 = v96;
  *(&v130 + 1) = v97;
  *&v131 = v90;
  *(&v131 + 1) = v98;
  v132 = v99;
  *&v133 = v117;
  *(&v133 + 1) = v101;
  *&v134 = v116;
  *(&v134 + 1) = v100;
  LODWORD(v135) = v102;
  sub_10001F870(&v130, &qword_1000B37C8, &qword_100078EA8);
  sub_10001F870(v92, &qword_1000B3798, &unk_100078DA8);
  return sub_10001F870(v119, &qword_1000B37B8, qword_100078DD0);
}

uint64_t sub_1000374E0@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_10001B4A4(&qword_1000B3860, &qword_100078F28);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - v5;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v7 = v13;
  v8 = [v13 tocAssets];

  if (v8 && (v9 = [v8 symbolId], v8, v9))
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v13 = Image.init(_internalSystemName:)();
    View.accessibilityHidden(_:)();

    sub_100023628(v6, a2, &qword_1000B3860, &qword_100078F28);
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  return (*(v4 + 56))(a2, v10, 1, v3);
}

__n128 sub_1000376CC@<Q0>(uint64_t a1@<X2>, uint64_t a2@<X8>, uint64_t a3@<X0>, double a4@<D0>)
{
  v6 = sub_100037FF4(a3, a4);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();

  v78.origin.x = v6;
  v78.origin.y = v8;
  v78.size.width = v10;
  v78.size.height = v12;
  CGRectGetHeight(v78);
  static Alignment.center.getter();
  *&v22 = a1;
  WORD4(v22) = 256;
  v23.n128_u64[0] = 0;
  v23.n128_f64[1] = -v8;
  v28 = v63;
  v29 = v64;
  v30 = v65;
  v24 = v59;
  v25 = v60;
  v26 = v61;
  v27 = v62;
  _FrameLayout.init(width:height:alignment:)();
  v72 = v63;
  v73 = v64;
  v74 = v65;
  v68 = v59;
  v69 = v60;
  v71 = v62;
  v70 = v61;
  v67 = v23;
  v66 = v22;
  v31 = a1;
  v32 = 256;
  v33 = 0;
  v34 = -v8;
  v39 = v63;
  v40 = v64;
  v41 = v65;
  v35 = v59;
  v36 = v60;
  v37 = v61;
  v38 = v62;
  sub_10001F808(&v22, v56, &qword_1000B38A0, &qword_100078F50);
  sub_10001F870(&v31, &qword_1000B38A0, &qword_100078F50);
  v13 = static Edge.Set.leading.getter();
  v14 = static SafeAreaRegions.all.getter();
  v42[8] = v74;
  v42[9] = v75;
  v42[10] = v76;
  v42[11] = v77;
  v42[4] = v70;
  v42[5] = v71;
  v42[6] = v72;
  v42[7] = v73;
  v42[0] = v66;
  v42[1] = v67;
  v42[2] = v68;
  v42[3] = v69;
  v43[8] = v74;
  v43[9] = v75;
  v43[10] = v76;
  v43[11] = v77;
  v43[4] = v70;
  v43[5] = v71;
  v43[6] = v72;
  v43[7] = v73;
  v43[0] = v66;
  v43[1] = v67;
  v43[2] = v68;
  v43[3] = v69;
  sub_10001F808(v42, v56, &qword_1000B38A8, &qword_100078F58);
  sub_10001F870(v43, &qword_1000B38A8, &qword_100078F58);
  v52 = v74;
  v53 = v75;
  v54 = v76;
  *v55 = v77;
  v48 = v70;
  v49 = v71;
  v50 = v72;
  v51 = v73;
  v44 = v66;
  v45 = v67;
  v46 = v68;
  v47 = v69;
  v56[8] = v74;
  v56[9] = v75;
  v56[10] = v76;
  v56[11] = v77;
  v56[4] = v70;
  v56[5] = v71;
  v56[6] = v72;
  v56[7] = v73;
  v56[0] = v66;
  v56[1] = v67;
  *&v55[16] = v14;
  v55[24] = v13;
  v56[2] = v68;
  v56[3] = v69;
  v57 = v14;
  v58 = v13;
  sub_10001F808(&v44, v21, &qword_1000B38B0, &qword_100078F60);
  sub_10001F870(v56, &qword_1000B38B0, &qword_100078F60);
  v15 = *v55;
  *(a2 + 160) = v54;
  *(a2 + 176) = v15;
  *(a2 + 185) = *&v55[9];
  v16 = v51;
  *(a2 + 96) = v50;
  *(a2 + 112) = v16;
  v17 = v53;
  *(a2 + 128) = v52;
  *(a2 + 144) = v17;
  v18 = v47;
  *(a2 + 32) = v46;
  *(a2 + 48) = v18;
  v19 = v49;
  *(a2 + 64) = v48;
  *(a2 + 80) = v19;
  result = v45;
  *a2 = v44;
  *(a2 + 16) = result;
  return result;
}