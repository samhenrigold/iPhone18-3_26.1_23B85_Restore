void sub_100002F98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_100002FE0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = WeakRetained;
  if (WeakRetained)
  {
    v12 = [WeakRetained currentSnapshot];
    v13 = [v12 sectionIdentifiers];
    v14 = [v13 objectAtIndexedSubscript:{objc_msgSend(v8, "section")}];

    if ([v14 isEqualToString:@"OtherSection"])
    {
      v15 = [v7 dequeueReusableCellWithReuseIdentifier:@"OtherCellID" forIndexPath:v8];
      v16 = +[UIColor clearColor];
      v17 = [v15 contentView];
      [v17 setBackgroundColor:v16];
    }

    else
    {
      v15 = [v7 dequeueReusableCellWithReuseIdentifier:@"PersonCellID" forIndexPath:v8];
      v18 = [v11 view];
      [v18 frame];
      [v15 setActivitySheetWidth:v19];

      [v15 setDarkStyleOnLegacyApp:0];
      [v15 setStateBeingRestored:1];
      [v15 setDelegate:v11];
      [v15 setSessionID:v11[12]];
      v20 = [v11[3] nodeIDToNode];
      v16 = [v20 objectForKeyedSubscript:v9];

      [v15 setPerson:v16];
      v21 = v11[9];
      v22 = [v16 realName];
      v17 = [v21 objectForKeyedSubscript:v22];

      if (v17)
      {
        [v15 restoreCellStateFromFinalTransferState:{objc_msgSend(v17, "integerValue")}];
      }

      v23 = v11[8];
      v24 = [v16 realName];
      v25 = [v23 objectForKeyedSubscript:v24];

      [v15 setProgress:v25];
      if (v25)
      {
        [v7 selectItemAtIndexPath:v8 animated:0 scrollPosition:0];
      }

      else
      {
        [v7 deselectItemAtIndexPath:v8 animated:0];
      }

      [v15 setSelected:v25 != 0];
      [v15 setStateBeingRestored:0];
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

id sub_1000032A4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if ([v8 isEqualToString:UICollectionElementKindSectionHeader])
    {
      v11 = [v7 dequeueReusableSupplementaryViewOfKind:v8 withReuseIdentifier:@"HeaderID" forIndexPath:v9];
      v12 = [WeakRetained currentSnapshot];
      v13 = [WeakRetained dataSource];
      v14 = [v13 itemIdentifierForIndexPath:v9];
      v15 = [v12 sectionIdentifierForSectionContainingItemIdentifier:v14];

      v16 = +[NSBundle mainBundle];
      v17 = [v16 localizedStringForKey:v15 value:&stru_10002D8A8 table:0];
      v18 = [v11 titleLabel];
      [v18 setText:v17];

      goto LABEL_8;
    }

    v19 = airdrop_ui_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      sub_10001D830();
    }
  }

  v11 = 0;
LABEL_8:

  return v11;
}

void sub_100003510(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

id sub_100003534(uint64_t a1, uint64_t a2, void *a3)
{
  v64 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [WeakRetained traitCollection];
  v7 = [v6 preferredContentSizeCategory];
  v8 = UIContentSizeCategoryCompareToCategory(UIContentSizeCategoryExtraExtraLarge, v7);

  v9 = +[UIDevice currentDevice];
  v10 = [v9 userInterfaceIdiom];

  v11 = objc_loadWeakRetained((a1 + 32));
  v12 = [v11 currentSnapshot];
  v13 = [v12 sectionIdentifiers];

  v63 = v13;
  v62 = [v13 objectAtIndexedSubscript:a2];
  if ([v62 isEqualToString:@"OtherSection"])
  {
    v14 = [NSCollectionLayoutDimension fractionalWidthDimension:1.0];
    v15 = [NSCollectionLayoutDimension absoluteDimension:234.0];
    v16 = [NSCollectionLayoutSize sizeWithWidthDimension:v14 heightDimension:v15];
    v17 = [NSCollectionLayoutItem itemWithLayoutSize:v16];
    v18 = [NSCollectionLayoutSize sizeWithWidthDimension:v14 heightDimension:v15];
    v66 = v17;
    v19 = [NSArray arrayWithObjects:&v66 count:1];
    v20 = [NSCollectionLayoutGroup horizontalGroupWithLayoutSize:v18 subitems:v19];

    v21 = [NSCollectionLayoutSection sectionWithGroup:v20];
  }

  else
  {
    v14 = [NSCollectionLayoutDimension estimatedDimension:100.0];
    v61 = v8;
    if (v8 == NSOrderedAscending)
    {
      v23 = [NSCollectionLayoutDimension fractionalWidthDimension:1.0];
    }

    else
    {
      v22 = 62.0;
      if (v10 == 6)
      {
        v22 = 72.0;
      }

      v23 = [NSCollectionLayoutDimension estimatedDimension:v22];
    }

    v15 = v23;
    v16 = [NSCollectionLayoutSize sizeWithWidthDimension:v23 heightDimension:v14];
    v17 = [NSCollectionLayoutItem itemWithLayoutSize:v16];
    v24 = +[UIScreen mainScreen];
    [v24 _referenceBounds];
    v26 = v25;
    v28 = v27;

    v29 = objc_loadWeakRetained((a1 + 32));
    v30 = [v29 view];
    [v30 directionalLayoutMargins];
    v32 = v31;

    v33 = [UIApp activeInterfaceOrientation] - 3;
    LODWORD(v29) = SFDeviceModelCodeGet();
    v34 = +[UIDevice currentDevice];
    v35 = [v34 userInterfaceIdiom];

    v36 = v35 & 0xFFFFFFFFFFFFFFFBLL;
    v37 = 3;
    if (v29 != 2)
    {
      v37 = 4;
    }

    if (v33 >= 2)
    {
      v38 = v37;
    }

    else
    {
      v38 = 6;
    }

    if (v26 == 414.0)
    {
      v39 = 20.0;
    }

    else
    {
      v39 = 16.0;
    }

    v40 = v36 == 1 || v26 < 414.0;
    if (v36 == 1)
    {
      v41 = [v64 container];
      [v41 contentSize];
      if (v42 <= 414.0)
      {
        v38 = 4;
      }

      else
      {
        v38 = 6;
      }

      v43 = 24.0;
    }

    else if (v28 == 568.0 && v26 == 320.0)
    {
      v43 = 33.0;
    }

    else
    {
      v43 = 26.0;
      if (v28 != 667.0 || v26 != 375.0)
      {
        if (v28 == 736.0 && v26 == 414.0)
        {
          v43 = 30.0;
        }

        else if (v28 != 812.0 || v26 != 375.0)
        {
          v44 = v26 == 414.0 && v28 == 896.0;
          v43 = 30.0;
          if (!v44)
          {
            v43 = v32;
          }
        }
      }
    }

    v45 = 12.0;
    if (!v40)
    {
      v45 = 8.0;
    }

    v46 = v43 - v45;
    if (v10 == 6)
    {
      v47 = 32.0;
    }

    else
    {
      v47 = 0.0;
    }

    if (v10 == 6)
    {
      v48 = 8.0;
    }

    else
    {
      v48 = 0.0;
    }

    if (v10 == 6)
    {
      v49 = 8.0;
    }

    else
    {
      v49 = v39;
    }

    if (v10 == 6)
    {
      v50 = 4;
    }

    else
    {
      v50 = v38;
    }

    if (v10 == 6)
    {
      v51 = 16.0;
    }

    else
    {
      v51 = v46;
    }

    v52 = [NSCollectionLayoutDimension fractionalWidthDimension:1.0];
    v18 = [NSCollectionLayoutSize sizeWithWidthDimension:v52 heightDimension:v14];

    if (v61 == NSOrderedAscending)
    {
      v53 = 1;
    }

    else
    {
      v53 = v50;
    }

    v20 = [NSCollectionLayoutGroup horizontalGroupWithLayoutSize:v18 subitem:v17 count:v53];
    if (v10 == 6)
    {
      v54 = [NSCollectionLayoutSpacing fixedSpacing:4.0];
      [v20 setInterItemSpacing:v54];
    }

    v21 = [NSCollectionLayoutSection sectionWithGroup:v20];
    [v21 setContentInsets:{v48, v51, v47, v51}];
    [v21 setInterGroupSpacing:v49];
    v55 = [NSCollectionLayoutDimension fractionalWidthDimension:1.0];
    v56 = [NSCollectionLayoutDimension estimatedDimension:60.0];
    v57 = [NSCollectionLayoutSize sizeWithWidthDimension:v55 heightDimension:v56];

    v58 = [NSCollectionLayoutBoundarySupplementaryItem boundarySupplementaryItemWithLayoutSize:v57 elementKind:UICollectionElementKindSectionHeader alignment:1];
    v65 = v58;
    v59 = [NSArray arrayWithObjects:&v65 count:1];
    [v21 setBoundarySupplementaryItems:v59];

    [v21 setSupplementariesFollowContentInsets:1];
  }

  return v21;
}

void sub_1000043EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000440C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained collectionView];
  [v3 setAlpha:1.0];

  v5 = objc_loadWeakRetained((a1 + 32));
  v4 = [v5 airDropNoContentView];
  [v4 setAlpha:0.0];
}

void sub_10000475C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100004784(uint64_t a1)
{
  if (*(a1 + 40) == 1 && *(a1 + 41) == 1 && *(a1 + 42) != 1 || (v2 = objc_loadWeakRetained((a1 + 32)), v3 = [v2 canShowNoContentView], v2, !v3))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v9 = [WeakRetained collectionView];
    [v9 setAlpha:1.0];

    v11 = objc_loadWeakRetained((a1 + 32));
    v10 = [v11 airDropNoContentView];
    [v10 setAlpha:0.0];
  }

  else
  {
    v4 = objc_loadWeakRetained((a1 + 32));
    v5 = [v4 collectionView];
    [v5 setAlpha:0.0];

    v6 = objc_loadWeakRetained((a1 + 32));
    v7 = [v6 airDropNoContentView];
    [v7 setAlpha:1.0];

    v11 = objc_loadWeakRetained((a1 + 32));
    [v11 setCanShowNoContentView:0];
  }
}

void sub_100005048(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000508C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained collectionView];
  [v3 setAlpha:0.0];

  v5 = objc_loadWeakRetained((a1 + 32));
  v4 = [v5 airDropNoContentView];
  [v4 setAlpha:1.0];
}

void sub_10000511C(uint64_t a1)
{
  if ((*(a1 + 40) & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v3 = [WeakRetained airDropNoContentView];
    v4 = [v3 viewType];

    if (!v4)
    {
      v5[0] = _NSConcreteStackBlock;
      v5[1] = 3221225472;
      v5[2] = sub_100005204;
      v5[3] = &unk_10002CFF0;
      objc_copyWeak(&v6, (a1 + 32));
      [UIView animateWithDuration:v5 animations:0.25];
      objc_destroyWeak(&v6);
    }
  }
}

void sub_100005204(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained airDropNoContentView];
  [v3 setAlpha:0.0];

  v5 = objc_loadWeakRetained((a1 + 32));
  v4 = [v5 collectionView];
  [v4 setAlpha:1.0];
}

void *sub_100006260(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 sf_personRealName];
  [v3 setSf_initiator:1];
  v5 = [*(a1 + 32) realNamesWithTransfersStartedFromMagicHead];
  v6 = [v5 containsObject:v4];

  if (v6)
  {
    [v3 setSf_initiator:2];
  }

  [*(a1 + 32) subscribedProgress:v3 forPersonWithRealName:v4];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000637C;
  v10[3] = &unk_10002D068;
  v10[4] = *(a1 + 32);
  v11 = v4;
  v7 = v4;
  v8 = objc_retainBlock(v10);

  return v8;
}

void sub_1000074C8(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = dispatch_get_global_queue(0, 0);
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100007564;
    v5[3] = &unk_10002D120;
    v4 = *(a1 + 40);
    v5[4] = *(a1 + 32);
    v5[5] = v4;
    dispatch_async(v3, v5);
  }
}

void sub_100007564(uint64_t a1)
{
  [*(*(a1 + 32) + 136) waitUntilAllOperationsAreFinished];
  v2 = *(a1 + 32);
  if (*(v2 + 152) >= 1)
  {
    v3 = 0;
    do
    {
      v4 = *(v2 + 112);
      v5 = *(v2 + 160);
      v6 = [NSNumber numberWithInt:v3];
      v7 = [v5 objectForKeyedSubscript:v6];
      [v4 addObject:v7];

      v3 = (v3 + 1);
      v2 = *(a1 + 32);
    }

    while (v3 < *(v2 + 152));
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000076A4;
  v9[3] = &unk_10002D120;
  v8 = *(a1 + 40);
  v9[4] = *(a1 + 32);
  v9[5] = v8;
  dispatch_async(&_dispatch_main_q, v9);
}

void sub_1000076A4(uint64_t a1)
{
  [*(a1 + 32) generateSpecialPreviewPhotoForRequestID:*(a1 + 40)];
  *(*(a1 + 32) + 129) = 1;
  v2 = *(a1 + 32);
  v3 = [v2[4] allObjects];
  [v2 startTransferForPeople:v3];
}

id sub_100007B68(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) prepareWithActivityExtensionItemData:a2];
  v3 = *(a1 + 32);

  return [v3 performActivity];
}

void sub_100008368(uint64_t a1)
{
  if ([*(a1 + 32) isFileURL])
  {
    v2 = [*(a1 + 32) path];
    v3 = v2;
    if (v2)
    {
      v4 = [v2 pathExtension];
      PreferredIdentifierForTag = UTTypeCreatePreferredIdentifierForTag(kUTTagClassFilenameExtension, v4, 0);
      if (PreferredIdentifierForTag)
      {
        v6 = PreferredIdentifierForTag;
        if (UTTypeConformsTo(PreferredIdentifierForTag, kUTTypeImage))
        {
          [*(a1 + 40) suggestedThumbnailSize];
          v7 = +[UIScreen mainScreen];
          [v7 scale];
          v8 = SFCreateThumbnailImage();
        }

        else
        {
          v8 = 0;
        }

        CFRelease(v6);
      }

      else
      {
        v9 = airdrop_ui_log();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          sub_10001DA08();
        }

        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v10 = [SFAirDropPayload newPayloadWithURL:*(a1 + 32) description:*(a1 + 48) previewImage:v8 identifier:*(*(a1 + 40) + 104)];
  v11 = *(*(a1 + 40) + 160);
  objc_sync_enter(v11);
  v12 = *(*(a1 + 40) + 160);
  v13 = [NSNumber numberWithInt:*(a1 + 56)];
  [v12 setObject:v10 forKeyedSubscript:v13];

  objc_sync_exit(v11);
}

void sub_100008544(uint64_t a1)
{
  v5 = [SFAirDropPayload newPayloadWithURL:*(a1 + 32) description:*(a1 + 40) previewImage:*(a1 + 48) identifier:*(*(a1 + 56) + 104)];
  v2 = *(*(a1 + 56) + 160);
  objc_sync_enter(v2);
  v3 = *(*(a1 + 56) + 160);
  v4 = [NSNumber numberWithInt:*(a1 + 64)];
  [v3 setObject:v5 forKeyedSubscript:v4];

  objc_sync_exit(v2);
}

void sub_1000088D0(uint64_t a1)
{
  v7 = UIImageJPEGRepresentation(*(a1 + 32), 1.0);
  [v7 writeToFile:*(a1 + 40) atomically:1];
  v2 = [NSURL fileURLWithPath:*(a1 + 40)];
  v3 = [SFAirDropPayload newPayloadWithURL:v2 description:*(a1 + 48) previewImage:*(a1 + 56) identifier:*(*(a1 + 64) + 104)];

  v4 = *(*(a1 + 64) + 160);
  objc_sync_enter(v4);
  v5 = *(*(a1 + 64) + 160);
  v6 = [NSNumber numberWithInt:*(a1 + 72)];
  [v5 setObject:v3 forKeyedSubscript:v6];

  objc_sync_exit(v4);
}

void sub_100008F50(uint64_t a1)
{
  [*(a1 + 32) writeToFile:*(a1 + 40) atomically:1];
  v2 = [NSURL fileURLWithPath:*(a1 + 40)];
  v7 = [SFAirDropPayload newPayloadWithURL:v2 description:*(a1 + 48) previewImage:*(a1 + 56) identifier:*(*(a1 + 64) + 104)];

  v3 = *(*(a1 + 64) + 160);
  objc_sync_enter(v3);
  v4 = *(*(a1 + 64) + 160);
  v5 = [NSNumber numberWithInt:*(a1 + 80)];
  [v4 setObject:v7 forKeyedSubscript:v5];

  objc_sync_exit(v3);
  v6 = *(a1 + 72);
  if (v6)
  {
    (*(v6 + 16))(v6, v7);
  }
}

void sub_1000097E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100009804(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000981C(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100009884(uint64_t a1)
{
  v2 = +[PLPhotoLibrary photoOutboundSharingTmpDirectoryURL];
  v3 = [*(*(*(a1 + 56) + 8) + 40) videoURL];
  v4 = [*(*(*(a1 + 56) + 8) + 40) imageURL];
  v5 = [*(*(*(a1 + 56) + 8) + 40) uniqueIdentifier];
  v10 = SFCreateLivePhotoBundle();

  v6 = [SFAirDropPayload newPayloadWithURL:v10 description:*(a1 + 32) previewImage:*(a1 + 40) identifier:*(*(a1 + 48) + 104)];
  v7 = *(*(a1 + 48) + 160);
  objc_sync_enter(v7);
  v8 = *(*(a1 + 48) + 160);
  v9 = [NSNumber numberWithInt:*(a1 + 64)];
  [v8 setObject:v6 forKeyedSubscript:v9];

  objc_sync_exit(v7);
}

void sub_100009C08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100009C28(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10000A264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000A290(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    v8 = airdrop_ui_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10001DAFC(v7, v8);
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10000B524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000B53C(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = [v3 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      v8 = 0;
      do
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v19 + 1) + 8 * v8);
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v10 = [v9 attachments];
        v11 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v16;
          do
          {
            v14 = 0;
            do
            {
              if (*v16 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v4[2](v4, *(*(&v15 + 1) + 8 * v14));
              v14 = v14 + 1;
            }

            while (v12 != v14);
            v12 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
          }

          while (v12);
        }

        v8 = v8 + 1;
      }

      while (v8 != v6);
      v6 = [v3 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v6);
  }
}

void sub_10000B6DC(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = [*(a1 + 32) attachmentNameForItem:v12];
  v4 = [*(a1 + 32) subjectForItem:v12];
  if ([*(a1 + 40) maxPreviews] >= 1)
  {
    v5 = *(*(*(a1 + 56) + 8) + 24);
    if (v5 >= [*(a1 + 40) maxPreviews])
    {
      goto LABEL_9;
    }
  }

  v6 = [*(a1 + 32) previewImageForItem:v12];
  if (v6)
  {
    v7 = v6;
LABEL_5:
    v8 = v12;
    ++*(*(*(a1 + 56) + 8) + 24);
    goto LABEL_11;
  }

  v9 = [*(a1 + 32) previewImageDataForItem:v12];
  if (v9)
  {
    v10 = v9;
    v7 = [UIImage imageWithData:v9];

    if (v7)
    {
      goto LABEL_5;
    }
  }

  else
  {
LABEL_9:
    v7 = 0;
  }

  v8 = v12;
LABEL_11:
  v11 = [*(a1 + 32) dataTypeForItem:v8];
  [*(a1 + 48) addItemProvider:v12 withDataType:v11 attachmentName:v3 description:v4 previewImage:v7];
}

void sub_10000B99C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000B9C8(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 hasItemConformingToTypeIdentifier:@"com.apple.ShareUI.airdrop.supplementalSecurityContext"])
  {
    dispatch_group_enter(*(a1 + 32));
    v4 = *(a1 + 40);
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10000BAB8;
    v5[3] = &unk_10002D368;
    objc_copyWeak(&v7, (a1 + 48));
    v6 = *(a1 + 32);
    [v3 loadItemForTypeIdentifier:@"com.apple.ShareUI.airdrop.supplementalSecurityContext" options:v4 completionHandler:v5];

    objc_destroyWeak(&v7);
  }
}

void sub_10000BAB8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained startAccessingSecurityScopedResourcesInContext:v3];

  v5 = *(a1 + 32);

  dispatch_group_leave(v5);
}

uint64_t sub_10000CA78()
{
  v0 = sub_10001DDC0();
  sub_100018454(v0, qword_100033438);
  v1 = sub_100018370(v0, qword_100033438);
  if (qword_100033460 != -1)
  {
    swift_once();
  }

  v2 = sub_100018370(v0, qword_100033B28);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t variable initialization expression of AirDropDiscoveryViewController.securityContexts()
{
  type metadata accessor for AirDropUtilities.SecurityContexts();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 112) = &_swiftEmptyArrayStorage;
  return v0;
}

uint64_t AirDropDiscoveryViewController.delegate.setter(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*AirDropDiscoveryViewController.delegate.modify(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC7AirDrop30AirDropDiscoveryViewController_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_10000CCD0;
}

void sub_10000CCD0(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t variable initialization expression of AirDropDiscoveryViewController.pendingTransferID()
{
  v0 = sub_10001DC60();
  __chkstk_darwin(v0 - 8);
  sub_10001DC50();
  return sub_10001DFD0();
}

id AirDropDiscoveryViewController.init(hostAppBundleID:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v16[1] = a1;
  v16[2] = a2;
  ObjectType = swift_getObjectType();
  v4 = sub_10001DD00();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10001DF00();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10001DC60();
  __chkstk_darwin(v12 - 8);
  v13 = OBJC_IVAR____TtC7AirDrop30AirDropDiscoveryViewController_securityContexts;
  type metadata accessor for AirDropUtilities.SecurityContexts();
  v14 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v14 + 112) = &_swiftEmptyArrayStorage;
  *&v3[v13] = v14;
  *&v3[OBJC_IVAR____TtC7AirDrop30AirDropDiscoveryViewController_activityExtensionItemData] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC7AirDrop30AirDropDiscoveryViewController_tapHandleTask] = 0;
  *&v3[OBJC_IVAR____TtC7AirDrop30AirDropDiscoveryViewController_existingItemDataTask] = 0;
  sub_10001DC50();
  sub_10001DFD0();
  *&v3[OBJC_IVAR____TtC7AirDrop30AirDropDiscoveryViewController_currentTransfersByEndpointID] = &_swiftEmptyDictionarySingleton;
  sub_10001DF40();
  (*(v9 + 104))(v11, enum case for SFAirDropClient.Identifier.shareSheet(_:), v8);
  *&v3[OBJC_IVAR____TtC7AirDrop30AirDropDiscoveryViewController_airDropClient] = sub_10001DF10();

  sub_10001DC90();
  (*(v5 + 32))(&v3[OBJC_IVAR____TtC7AirDrop30AirDropDiscoveryViewController_airDropDiscoveryView], v7, v4);
  v18.receiver = v3;
  v18.super_class = ObjectType;
  return objc_msgSendSuper2(&v18, "initWithNibName:bundle:", 0, 0);
}

Swift::Void __swiftcall AirDropDiscoveryViewController.viewDidLoad()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10001DD00();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v85 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v81 - v7;
  v9 = sub_10001DC80();
  __chkstk_darwin(v9 - 8);
  v10 = sub_10001E110();
  __chkstk_darwin(v10 - 8);
  v11 = sub_10001DE30();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86.receiver = v1;
  v86.super_class = ObjectType;
  objc_msgSendSuper2(&v86, "viewDidLoad");
  sub_10001DE20();
  LOBYTE(ObjectType) = sub_10001DE10();
  v15 = *(v12 + 8);
  v83 = v12 + 8;
  v84 = v11;
  v82 = v15;
  v15(v14, v11);
  if ((ObjectType & 1) == 0 || (sub_10001DFB0(), v16 = sub_10001DFA0(), v17 = sub_10001DF80(), v16, (v17 & 1) == 0))
  {
    sub_10001E100();
    sub_10001DC70();
    sub_10001E140();
    v18 = sub_10001E120();

    [v1 setTitle:v18];

    v19 = [objc_allocWithZone(UINavigationBarAppearance) init];
    [v19 configureWithTransparentBackground];
    v20 = objc_opt_self();
    v21 = [v20 separatorColor];
    [v19 setShadowColor:v21];

    v22 = [v1 navigationItem];
    [v22 setScrollEdgeAppearance:v19];

    v23 = [objc_allocWithZone(UINavigationBarAppearance) init];
    [v23 configureWithDefaultBackground];
    v24 = [v20 separatorColor];
    [v23 setShadowColor:v24];

    v25 = [v1 navigationItem];
    [v25 setStandardAppearance:v23];
  }

  v26 = *(v4 + 16);
  v26(v8, &v1[OBJC_IVAR____TtC7AirDrop30AirDropDiscoveryViewController_airDropDiscoveryView], v3);
  v27 = objc_allocWithZone(type metadata accessor for AirDropHostingController(0));
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v26(v85, v8, v3);
  v28 = sub_10001DFE0();
  (*(v4 + 8))(v8, v3);
  v29 = v28;
  [v1 addChildViewController:v29];
  v30 = [v1 view];
  if (!v30)
  {
    __break(1u);
    goto LABEL_23;
  }

  v31 = v30;
  v32 = [v29 view];
  if (!v32)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v33 = v32;
  [v31 addSubview:v32];

  [v29 didMoveToParentViewController:v1];
  v34 = [v29 view];

  if (!v34)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  [v34 setTranslatesAutoresizingMaskIntoConstraints:0];

  v35 = [v1 navigationController];
  v36 = 0.0;
  Height = 0.0;
  if (v35)
  {
    v38 = v35;
    v39 = [v35 navigationBar];

    [v39 frame];
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v47 = v46;

    v87.origin.x = v41;
    v87.origin.y = v43;
    v87.size.width = v45;
    v87.size.height = v47;
    Height = CGRectGetHeight(v87);
  }

  sub_10001DE20();
  v48 = sub_10001DE10();
  v82(v14, v84);
  if (v48)
  {
    sub_10001DFB0();
    v49 = sub_10001DFA0();
    v50 = sub_10001DF80();

    if (v50)
    {
      v36 = -Height;
    }

    else
    {
      v36 = 0.0;
    }
  }

  sub_10000DB68(&qword_1000334B0, &unk_100022C20);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_100022C00;
  v52 = [v29 view];

  if (!v52)
  {
    goto LABEL_25;
  }

  v53 = [v52 topAnchor];

  v54 = [v1 view];
  if (!v54)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v55 = v54;
  v56 = [v54 topAnchor];

  v57 = [v53 constraintEqualToAnchor:v56 constant:v36];
  *(v51 + 32) = v57;
  v58 = [v29 view];

  if (!v58)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v59 = [v58 bottomAnchor];

  v60 = [v1 view];
  if (!v60)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v61 = v60;
  v62 = [v60 bottomAnchor];

  v63 = [v59 constraintEqualToAnchor:v62];
  *(v51 + 40) = v63;
  v64 = [v29 view];

  if (!v64)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v65 = [v64 leadingAnchor];

  v66 = [v1 view];
  if (!v66)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v67 = v66;
  v68 = [v66 leadingAnchor];

  v69 = [v65 constraintEqualToAnchor:v68];
  *(v51 + 48) = v69;
  v70 = [v29 view];

  if (!v70)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v71 = [v70 trailingAnchor];

  v72 = [v1 view];
  if (v72)
  {
    v73 = v72;
    v74 = objc_opt_self();
    v75 = [v73 trailingAnchor];

    v76 = [v71 constraintEqualToAnchor:v75];
    *(v51 + 56) = v76;
    sub_100018968(0, &qword_1000334B8, NSLayoutConstraint_ptr);
    isa = sub_10001E190().super.isa;

    [v74 activateConstraints:isa];

    v78 = objc_opt_self();
    v79 = [v78 defaultCenter];
    [v79 addObserver:v1 selector:"willEnterForegroundWithNotification:" name:UIApplicationWillEnterForegroundNotification object:0];

    v80 = [v78 defaultCenter];
    [v80 addObserver:v1 selector:"didEnterBackgroundWithNotification:" name:UIApplicationDidEnterBackgroundNotification object:0];

    return;
  }

LABEL_32:
  __break(1u);
}

uint64_t sub_10000DB68(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

Swift::Void __swiftcall AirDropDiscoveryViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_10000DB68(&qword_1000334C0, &qword_100022F00);
  __chkstk_darwin(v5 - 8);
  v25 = &v24 - v6;
  v7 = sub_10001DE30();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26.receiver = v2;
  v26.super_class = ObjectType;
  objc_msgSendSuper2(&v26, "viewWillAppear:", a1);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100018968(0, &qword_1000334C8, UIBarButtonItem_ptr);
  sub_100018968(0, &qword_1000334D0, UIAction_ptr);

  v27.value.super.super.isa = sub_10001E2F0();
  v27.is_nil = 0;
  v11.super.super.isa = sub_10001E2E0(UIBarButtonSystemItemDone, v27, v29).super.super.isa;

  v28.value.super.super.isa = sub_10001E2F0();
  v28.is_nil = 0;
  v12.super.super.isa = sub_10001E2E0(UIBarButtonSystemItemClose, v28, v30).super.super.isa;
  v13 = [v2 navigationItem];
  sub_10001DE20();
  v14 = sub_10001DE10();
  (*(v8 + 8))(v10, v7);
  isa = v11.super.super.isa;
  if (v14)
  {
    sub_10001DFB0();
    v16 = sub_10001DFA0();
    v17 = sub_10001DF80();

    if (v17)
    {
      isa = v12.super.super.isa;
    }

    else
    {
      isa = v11.super.super.isa;
    }
  }

  [v13 setRightBarButtonItem:isa];

  v18 = sub_10001E230();
  v19 = v25;
  (*(*(v18 - 8) + 56))(v25, 1, 1, v18);
  sub_10001E210();
  v20 = v2;
  v21 = sub_10001E200();
  v22 = swift_allocObject();
  v22[2] = v21;
  v22[3] = &protocol witness table for MainActor;
  v22[4] = v20;
  v23 = sub_10000F3EC(0, 0, v19, &unk_100022C38, v22);

  *&v20[OBJC_IVAR____TtC7AirDrop30AirDropDiscoveryViewController_tapHandleTask] = v23;
}

uint64_t sub_10000DFB0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void *sub_10000DFE8(uint64_t a1, uint64_t a2)
{
  v2 = sub_10001DD00();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = result;
    (*(v3 + 16))(v5, result + OBJC_IVAR____TtC7AirDrop30AirDropDiscoveryViewController_airDropDiscoveryView, v2);

    sub_10001DCC0();
    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

uint64_t sub_10000E104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  v5 = sub_10001DC60();
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  sub_10000DB68(&qword_1000335E0, &qword_100022D40);
  v4[13] = swift_task_alloc();
  v6 = sub_10000DB68(&qword_1000335E8, &qword_100022D48);
  v4[14] = v6;
  v4[15] = *(v6 - 8);
  v4[16] = swift_task_alloc();
  v7 = sub_10000DB68(&qword_1000335F0, &unk_100022D50);
  v4[17] = v7;
  v4[18] = *(v7 - 8);
  v4[19] = swift_task_alloc();
  v4[20] = sub_10001E210();
  v4[21] = sub_10001E200();
  v9 = sub_10001E1E0();
  v4[22] = v9;
  v4[23] = v8;

  return _swift_task_switch(sub_10000E304, v9, v8);
}

uint64_t sub_10000E304()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  sub_10001DCE0();
  sub_10001DDD0();
  (*(v2 + 8))(v1, v3);
  v0[24] = sub_10001E200();
  v4 = sub_100018B20(&qword_1000335F8, &qword_1000335F0, &unk_100022D50, &protocol conformance descriptor for AsyncThrowingPublisher<A>.Iterator);
  v5 = swift_task_alloc();
  v0[25] = v5;
  *v5 = v0;
  v5[1] = sub_10000E444;
  v6 = v0[17];
  v7 = v0[13];

  return dispatch thunk of AsyncIteratorProtocol.next()(v7, v6, v4);
}

uint64_t sub_10000E444()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  v3 = *(v2 + 192);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_10001E1E0();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_10000E7F0;
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_10001E1E0();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_10000E5DC;
  }

  return _swift_task_switch(v7, v4, v6);
}

uint64_t sub_10000E5DC()
{

  v1 = *(v0 + 176);
  v2 = *(v0 + 184);

  return _swift_task_switch(sub_10000E640, v1, v2);
}

uint64_t sub_10000E640()
{
  v1 = v0[13];
  v2 = v0[10];
  v3 = v0[11];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[18] + 8))(v0[19], v0[17]);

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong airDropViewServiceDidRequestDismissal];
      swift_unknownObjectRelease();
    }

    v5 = v0[1];

    return v5();
  }

  else
  {
    (*(v3 + 32))(v0[12], v1, v2);
    v7 = swift_task_alloc();
    v0[27] = v7;
    *v7 = v0;
    v7[1] = sub_10000E98C;
    v8 = v0[12];

    return sub_10000ED90(v8);
  }
}

uint64_t sub_10000E7F0()
{
  v0[8] = v0[26];
  sub_10000DB68(&qword_100033600, qword_100022F60);
  swift_willThrowTypedImpl();

  v1 = v0[22];
  v2 = v0[23];

  return _swift_task_switch(sub_10000E88C, v1, v2);
}

uint64_t sub_10000E88C()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];

  (*(v2 + 8))(v1, v3);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong airDropViewServiceDidRequestDismissal];
    swift_unknownObjectRelease();
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_10000E98C()
{
  v1 = *v0;

  v2 = *(v1 + 184);
  v3 = *(v1 + 176);

  return _swift_task_switch(sub_10000EAAC, v3, v2);
}

uint64_t sub_10000EAAC()
{
  (*(v0[11] + 8))(v0[12], v0[10]);
  v0[24] = sub_10001E200();
  v1 = sub_100018B20(&qword_1000335F8, &qword_1000335F0, &unk_100022D50, &protocol conformance descriptor for AsyncThrowingPublisher<A>.Iterator);
  v2 = swift_task_alloc();
  v0[25] = v2;
  *v2 = v0;
  v2[1] = sub_10000E444;
  v3 = v0[17];
  v4 = v0[13];

  return dispatch thunk of AsyncIteratorProtocol.next()(v4, v3, v1);
}

uint64_t sub_10000EBA8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000EBE8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000EC9C;

  return sub_10000E104(a1, v4, v5, v6);
}

uint64_t sub_10000EC9C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10000ED90(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = sub_10001DFC0();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v4 = sub_10001DC60();
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  sub_10001E210();
  v2[13] = sub_10001E200();
  v6 = sub_10001E1E0();
  v2[14] = v6;
  v2[15] = v5;

  return _swift_task_switch(sub_10000EEE0, v6, v5);
}

uint64_t sub_10000EEE0()
{
  v30 = v0;
  if (qword_100033430 != -1)
  {
    swift_once();
  }

  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v4 = v0[5];
  v5 = sub_10001DDC0();
  sub_100018370(v5, qword_100033438);
  (*(v2 + 16))(v1, v4, v3);
  v6 = sub_10001DDA0();
  v7 = sub_10001E2C0();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[11];
  v9 = v0[12];
  v11 = v0[10];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v29 = v13;
    *v12 = 136315138;
    sub_100018718(&qword_100033608, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v14 = sub_10001E3E0();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_100016BAC(v14, v16, &v29);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "User selected endpoint with UUID: %s", v12, 0xCu);
    sub_1000183A8(v13);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = v0[6];
  v19 = OBJC_IVAR____TtC7AirDrop30AirDropDiscoveryViewController_currentTransfersByEndpointID;
  swift_beginAccess();
  v20 = *(v18 + v19);
  if (*(v20 + 16) && (v21 = sub_10001A1FC(v0[5]), (v22 & 1) != 0))
  {
    (*(v0[8] + 16))(v0[9], *(v20 + 56) + *(v0[8] + 72) * v21, v0[7]);
    swift_endAccess();
    v23 = swift_task_alloc();
    v0[16] = v23;
    *v23 = v0;
    v23[1] = sub_10000F230;
    v24 = v0[9];
    v25 = v0[5];

    return sub_100014F94(v24, v25);
  }

  else
  {
    v27 = v0[5];
    swift_endAccess();

    sub_1000101B4(v27);

    v28 = v0[1];

    return v28();
  }
}

uint64_t sub_10000F230()
{
  v1 = *v0;

  v2 = *(v1 + 120);
  v3 = *(v1 + 112);

  return _swift_task_switch(sub_10000F350, v3, v2);
}

uint64_t sub_10000F350()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10000F3EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000DB68(&qword_1000334C0, &qword_100022F00);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_1000184B8(a3, v25 - v10);
  v12 = sub_10001E230();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100018760(v11, &qword_1000334C0, &qword_100022F00);
  }

  else
  {
    sub_10001E220();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_10001E1E0();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_10001E150() + 32;
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

      sub_100018760(a3, &qword_1000334C0, &qword_100022F00);

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

  sub_100018760(a3, &qword_1000334C0, &qword_100022F00);
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

Swift::Void __swiftcall AirDropDiscoveryViewController.viewDidDisappear(_:)(Swift::Bool a1)
{
  v4.receiver = v1;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, "viewDidDisappear:", a1);
  v3 = OBJC_IVAR____TtC7AirDrop30AirDropDiscoveryViewController_tapHandleTask;
  if (*&v1[OBJC_IVAR____TtC7AirDrop30AirDropDiscoveryViewController_tapHandleTask])
  {

    sub_10001E240();
  }

  *&v1[v3] = 0;

  *&v1[OBJC_IVAR____TtC7AirDrop30AirDropDiscoveryViewController_existingItemDataTask] = 0;

  sub_10000F7EC();
}

void sub_10000F7EC()
{
  v1 = sub_10001DC20();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v47 - v6;
  v8 = OBJC_IVAR____TtC7AirDrop30AirDropDiscoveryViewController_currentTransfersByEndpointID;
  swift_beginAccess();
  if (*(*(v0 + v8) + 16))
  {
    if (qword_100033430 != -1)
    {
      swift_once();
    }

    v9 = sub_10001DDC0();
    sub_100018370(v9, qword_100033438);
    v10 = sub_10001DDA0();
    v11 = sub_10001E280();
    if (!os_log_type_enabled(v10, v11))
    {
      goto LABEL_12;
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = "Could not clear temporary files, transfer in progress";
LABEL_11:
    _os_log_impl(&_mh_execute_header, v10, v11, v13, v12, 2u);

LABEL_12:

    return;
  }

  v52 = v7;
  if (*(v0 + OBJC_IVAR____TtC7AirDrop30AirDropDiscoveryViewController_existingItemDataTask))
  {
    if (qword_100033430 != -1)
    {
      swift_once();
    }

    v14 = sub_10001DDC0();
    sub_100018370(v14, qword_100033438);
    v10 = sub_10001DDA0();
    v11 = sub_10001E280();
    if (!os_log_type_enabled(v10, v11))
    {
      goto LABEL_12;
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = "Could not clear temporary files, picker is still showing";
    goto LABEL_11;
  }

  v15 = NSTemporaryDirectory();
  sub_10001E130();

  v16 = v52;
  sub_10001DBD0();

  v50 = objc_opt_self();
  v17 = [v50 defaultManager];
  sub_10001DBC0();
  v18 = sub_10001E120();

  v19 = [v17 enumeratorAtPath:v18];

  v51 = v19;
  if (v19)
  {
    v21 = (v2 + 8);
    *&v20 = 136315138;
    v48 = v20;
    *&v20 = 136315394;
    v47 = v20;
    v49 = v1;
    while (1)
    {
      if ([v51 nextObject])
      {
        sub_10001E300();
        swift_unknownObjectRelease();
      }

      else
      {
        v55 = 0u;
        v56 = 0u;
      }

      v57[0] = v55;
      v57[1] = v56;
      if (!*(&v56 + 1))
      {
        (*v21)(v52, v1);

        sub_100018760(v57, &qword_100033720, &qword_100022D10);
        return;
      }

      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v23 = v53;
      v24 = v54;
      if (qword_100033430 != -1)
      {
        swift_once();
      }

      v25 = sub_10001DDC0();
      sub_100018370(v25, qword_100033438);

      v26 = sub_10001DDA0();
      v27 = sub_10001E2C0();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        *&v57[0] = v29;
        *v28 = v48;
        *(v28 + 4) = sub_100016BAC(v23, v24, v57);
        _os_log_impl(&_mh_execute_header, v26, v27, "Removing stale AirDrop download %s", v28, 0xCu);
        sub_1000183A8(v29);
        v1 = v49;
      }

      v30 = [v50 defaultManager];
      sub_10001DC10();
      sub_10001DC00(v31);
      v33 = v32;
      (*v21)(v5, v1);
      *&v57[0] = 0;
      v34 = [v30 removeItemAtURL:v33 error:v57];

      if (v34)
      {
        v22 = *&v57[0];
      }

      else
      {
        v35 = *&v57[0];
        sub_10001DBB0();

        swift_willThrow();

        swift_errorRetain();
        v36 = sub_10001DDA0();
        v37 = sub_10001E2A0();

        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          v39 = swift_slowAlloc();
          v40 = swift_slowAlloc();
          *&v57[0] = v40;
          *v38 = v47;
          v41 = sub_100016BAC(v23, v24, v57);

          *(v38 + 4) = v41;
          *(v38 + 12) = 2112;
          swift_errorRetain();
          v42 = _swift_stdlib_bridgeErrorToNSError();
          *(v38 + 14) = v42;
          *v39 = v42;
          _os_log_impl(&_mh_execute_header, v36, v37, "Failed to delete file %s %@", v38, 0x16u);
          sub_100018760(v39, &qword_1000335D0, &qword_100022D18);
          v1 = v49;

          sub_1000183A8(v40);
        }

        else
        {
        }
      }
    }

    (*v21)(v52, v1);
  }

  else
  {
    if (qword_100033430 != -1)
    {
      swift_once();
    }

    v43 = sub_10001DDC0();
    sub_100018370(v43, qword_100033438);
    v44 = sub_10001DDA0();
    v45 = sub_10001E2A0();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&_mh_execute_header, v44, v45, "Failed to create enumerator for AirDropHashDB directory", v46, 2u);
    }

    (*(v2 + 8))(v16, v1);
  }
}

uint64_t sub_1000100B4(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v6 = sub_10001DBA0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001DB90();
  v10 = a1;
  a4();

  return (*(v7 + 8))(v9, v6);
}

void sub_1000101B4(uint64_t a1)
{
  v3 = sub_10000DB68(&qword_1000334C0, &qword_100022F00);
  __chkstk_darwin(v3 - 8);
  v123 = &v107 - v4;
  v5 = sub_10001DFC0();
  v6 = *(v5 - 8);
  v130 = v5;
  v131 = v6;
  __chkstk_darwin(v5);
  v119 = &v107 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_10001DD10();
  v115 = *(v116 - 8);
  __chkstk_darwin(v116);
  v117 = (&v107 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_10001DD20();
  v121 = *(v9 - 8);
  v122 = v9;
  __chkstk_darwin(v9);
  v120 = &v107 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10001DC60();
  v128 = *(v11 - 8);
  v129 = v11;
  v12 = __chkstk_darwin(v11);
  v14 = &v107 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v107 - v16;
  v18 = __chkstk_darwin(v15);
  v125 = &v107 - v19;
  v118 = v20;
  __chkstk_darwin(v18);
  v22 = &v107 - v21;
  v23 = sub_10000DB68(&qword_100033630, &qword_100022D80);
  __chkstk_darwin(v23 - 8);
  v25 = &v107 - v24;
  v26 = sub_10001DE00();
  v124 = *(v26 - 8);
  __chkstk_darwin(v26);
  v28 = &v107 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_10000DB68(&qword_100033618, &qword_100022D70);
  v30 = __chkstk_darwin(v29 - 8);
  v113 = &v107 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v33 = &v107 - v32;
  v34 = OBJC_IVAR____TtC7AirDrop30AirDropDiscoveryViewController_currentTransfersByEndpointID;
  swift_beginAccess();
  v126 = v1;
  v112 = v34;
  v35 = *&v1[v34];
  v36 = *(v35 + 16);
  v127 = a1;
  v114 = v17;
  if (v36 && (v37 = sub_10001A1FC(a1), (v38 & 1) != 0))
  {
    (*(v131 + 16))(v33, *(v35 + 56) + *(v131 + 72) * v37, v130);
    v39 = 0;
  }

  else
  {
    v39 = 1;
  }

  v41 = v130;
  v40 = v131;
  v42 = *(v131 + 56);
  v42(v33, v39, 1, v130);
  swift_endAccess();
  LODWORD(v41) = (*(v40 + 48))(v33, 1, v41);
  sub_100018760(v33, &qword_100033618, &qword_100022D70);
  if (v41 == 1)
  {
    v43 = v126;
    v111 = OBJC_IVAR____TtC7AirDrop30AirDropDiscoveryViewController_airDropDiscoveryView;
    sub_10001DCD0();
    v44 = v124;
    v45 = v124[6](v25, 1, v26);
    v110 = v42;
    if (v45 == 1)
    {
      sub_100018760(v25, &qword_100033630, &qword_100022D80);
      v46 = v128;
      if (qword_100033430 != -1)
      {
        swift_once();
      }

      v47 = sub_10001DDC0();
      sub_100018370(v47, qword_100033438);
      v48 = v129;
      v124 = *(v46 + 16);
      (v124)(v22, v127, v129);
      v49 = sub_10001DDA0();
      v50 = sub_10001E2A0();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v132[0] = v52;
        *v51 = 136315138;
        sub_100018718(&qword_100033608, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v53 = sub_10001E3E0();
        v55 = v54;
        (*(v128 + 8))(v22, v129);
        v56 = sub_100016BAC(v53, v55, v132);
        v48 = v129;

        *(v51 + 4) = v56;
        _os_log_impl(&_mh_execute_header, v49, v50, "Could not resolve endpoint UUID: %s", v51, 0xCu);
        sub_1000183A8(v52);
        v46 = v128;
      }

      else
      {

        (*(v46 + 8))(v22, v48);
      }

      v77 = v124;
      goto LABEL_30;
    }

    v44[4](v28, v25, v26);
    sub_10001D420(v28);
    v70 = v69;
    sub_10001D420(v28);
    v72 = v71;
    v109 = sub_10001D438(v28);
    v74 = v73;
    if (v70)
    {
      v75 = sub_10001E120();

      if (v72)
      {
LABEL_17:
        v76 = sub_10001E120();

LABEL_23:
        v78.super.isa = sub_10001E270().super.isa;
        if (v74)
        {
          v79 = sub_10001E120();
        }

        else
        {
          v79 = 0;
        }

        v80 = [objc_allocWithZone(SFShareSheetRecipient) initWithRealName:v75 displayName:v76 formattedHandles:v78.super.isa contactIdentifier:v79];

        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          [Strong airDropViewServiceWillStartTransferToRecipient:v80];

          swift_unknownObjectRelease();
        }

        else
        {
        }

        v48 = v129;
        (v124[1])(v28, v26);
        v46 = v128;
        v77 = *(v128 + 16);
LABEL_30:
        v82 = v125;
        v83 = v127;
        (v77)(v125, v127, v48);
        v84 = *(v131 + 16);
        v108 = OBJC_IVAR____TtC7AirDrop30AirDropDiscoveryViewController_pendingTransferID;
        v85 = v113;
        v86 = v130;
        v131 += 16;
        v109 = v84;
        v84(v113, &v43[OBJC_IVAR____TtC7AirDrop30AirDropDiscoveryViewController_pendingTransferID], v130);
        v110(v85, 0, 1, v86);
        swift_beginAccess();
        sub_1000110A0(v85, v82);
        swift_endAccess();
        if (qword_100033430 != -1)
        {
          swift_once();
        }

        v87 = sub_10001DDC0();
        sub_100018370(v87, qword_100033438);
        v88 = v114;
        v124 = v77;
        (v77)(v114, v83, v48);
        v89 = sub_10001DDA0();
        v90 = sub_10001E2C0();
        v91 = v83;
        if (os_log_type_enabled(v89, v90))
        {
          v92 = swift_slowAlloc();
          v93 = swift_slowAlloc();
          v132[0] = v93;
          *v92 = 136315138;
          sub_100018718(&qword_100033608, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v94 = sub_10001E3E0();
          v96 = v95;
          (*(v128 + 8))(v88, v129);
          v97 = sub_100016BAC(v94, v96, v132);
          v48 = v129;

          *(v92 + 4) = v97;
          _os_log_impl(&_mh_execute_header, v89, v90, "Starting send to endpoint %s", v92, 0xCu);
          sub_1000183A8(v93);
          v46 = v128;
        }

        else
        {

          (*(v46 + 8))(v88, v48);
        }

        v98 = v117;
        *v117 = nullsub_2;
        v98[1] = 0;
        (*(v115 + 104))(v98, enum case for _DDNodeDecoration.Kind.waiting(_:), v116);
        sub_10001DFF0();
        v99 = v126;
        v109(v119, &v126[v108], v130);
        v100 = v120;
        sub_10001DD30();
        sub_10001DCA0();
        v101 = sub_10001E230();
        v102 = v123;
        (*(*(v101 - 8) + 56))(v123, 1, 1, v101);
        v103 = v125;
        (v124)(v125, v91, v48);
        v104 = (*(v46 + 80) + 24) & ~*(v46 + 80);
        v105 = swift_allocObject();
        *(v105 + 16) = v99;
        (*(v46 + 32))(v105 + v104, v103, v48);
        v106 = v99;
        sub_10001E250();

        sub_100018760(v102, &qword_1000334C0, &qword_100022F00);
        (*(v121 + 8))(v100, v122);
        return;
      }
    }

    else
    {
      v75 = 0;
      if (v72)
      {
        goto LABEL_17;
      }
    }

    v76 = 0;
    goto LABEL_23;
  }

  v57 = v128;
  if (qword_100033430 != -1)
  {
    swift_once();
  }

  v58 = sub_10001DDC0();
  sub_100018370(v58, qword_100033438);
  v59 = v129;
  (*(v57 + 16))(v14, v127, v129);
  v60 = sub_10001DDA0();
  v61 = sub_10001E290();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = v57;
    v64 = swift_slowAlloc();
    v132[0] = v64;
    *v62 = 136315138;
    sub_100018718(&qword_100033608, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v65 = sub_10001E3E0();
    v67 = v66;
    (*(v63 + 8))(v14, v59);
    v68 = sub_100016BAC(v65, v67, v132);

    *(v62 + 4) = v68;
    _os_log_impl(&_mh_execute_header, v60, v61, "Ongoing send already present for %s", v62, 0xCu);
    sub_1000183A8(v64);
  }

  else
  {

    (*(v57 + 8))(v14, v59);
  }
}

uint64_t sub_1000110A0(uint64_t a1, uint64_t a2)
{
  v5 = sub_10000DB68(&qword_100033618, &qword_100022D70);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  v8 = sub_10001DFC0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v9 + 48))(a1, 1, v8) == 1)
  {
    sub_100018760(a1, &qword_100033618, &qword_100022D70);
    sub_100017228(a2, v7);
    v12 = sub_10001DC60();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_100018760(v7, &qword_100033618, &qword_100022D70);
  }

  else
  {
    (*(v9 + 32))(v11, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_100017BB4(v11, a2, isUniquelyReferenced_nonNull_native);
    v15 = sub_10001DC60();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_1000112D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[14] = a2;
  v3[15] = a3;
  sub_10000DB68(&qword_100033618, &qword_100022D70);
  v3[16] = swift_task_alloc();
  v4 = sub_10001DEF0();
  v3[17] = v4;
  v3[18] = *(v4 - 8);
  v3[19] = swift_task_alloc();
  v5 = sub_10001DFC0();
  v3[20] = v5;
  v3[21] = *(v5 - 8);
  v3[22] = swift_task_alloc();
  v6 = sub_10001DC60();
  v3[23] = v6;
  v3[24] = *(v6 - 8);
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v7 = sub_10000DB68(&qword_100033638, &qword_100022D98);
  v3[28] = v7;
  v3[29] = *(v7 - 8);
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v8 = sub_10001DE80();
  v3[32] = v8;
  v3[33] = *(v8 - 8);
  v3[34] = swift_task_alloc();
  v9 = sub_10001DF70();
  v3[35] = v9;
  v3[36] = *(v9 - 8);
  v3[37] = swift_task_alloc();
  v10 = sub_10001DC20();
  v3[38] = v10;
  v3[39] = *(v10 - 8);
  v3[40] = swift_task_alloc();
  v11 = sub_10001DED0();
  v3[41] = v11;
  v3[42] = *(v11 - 8);
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();
  v3[45] = sub_10001E210();
  v3[46] = sub_10001E200();
  v12 = swift_task_alloc();
  v3[47] = v12;
  *v12 = v3;
  v12[1] = sub_1000116D4;

  return sub_100013AA0();
}

uint64_t sub_1000116D4(uint64_t a1)
{
  v2 = *v1;
  v2[48] = a1;

  v4 = sub_10001E1E0();
  v2[49] = v4;
  v2[50] = v3;

  return _swift_task_switch(sub_100011820, v4, v3);
}

uint64_t sub_100011820()
{
  v22 = v0;
  if (v0[48])
  {
    v1 = swift_task_alloc();
    v0[51] = v1;
    *v1 = v0;
    v1[1] = sub_100011B7C;

    return sub_1000140CC();
  }

  else
  {

    if (qword_100033430 != -1)
    {
      swift_once();
    }

    v4 = v0[24];
    v3 = v0[25];
    v5 = v0[23];
    v6 = v0[15];
    v7 = sub_10001DDC0();
    sub_100018370(v7, qword_100033438);
    (*(v4 + 16))(v3, v6, v5);
    v8 = sub_10001DDA0();
    v9 = sub_10001E2A0();
    v10 = os_log_type_enabled(v8, v9);
    v12 = v0[24];
    v11 = v0[25];
    v13 = v0[23];
    if (v10)
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v21 = v15;
      *v14 = 136315138;
      sub_100018718(&qword_100033608, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v16 = sub_10001E3E0();
      v18 = v17;
      (*(v12 + 8))(v11, v13);
      v19 = sub_100016BAC(v16, v18, &v21);

      *(v14 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v8, v9, "Could not send items to endpoint %s due to lack of extension item data or sending app bundle ID", v14, 0xCu);
      sub_1000183A8(v15);
    }

    else
    {

      (*(v12 + 8))(v11, v13);
    }

    sub_100014B08(v0[15], 0);

    v20 = v0[1];

    return v20();
  }
}

uint64_t sub_100011B7C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 416) = a1;
  *(v4 + 424) = a2;

  v5 = *(v3 + 400);
  v6 = *(v3 + 392);

  return _swift_task_switch(sub_100011CA4, v6, v5);
}

uint64_t sub_100011CA4()
{
  v39 = v0;
  v1 = v0[48];
  if (v0[53])
  {
    v2 = [v1 extensionItems];
    sub_100018968(0, &qword_100033640, NSExtensionItem_ptr);
    v3 = sub_10001E1A0();

    if (v3 >> 62)
    {
LABEL_30:
      v4 = sub_10001E3B0();
      if (v4)
      {
LABEL_4:
        v5 = 0;
        v6 = &_swiftEmptyArrayStorage;
        do
        {
          v7 = v5;
          while (1)
          {
            if ((v3 & 0xC000000000000001) != 0)
            {
              v8 = sub_10001E360();
            }

            else
            {
              if (v7 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_29;
              }

              v8 = *(v3 + 8 * v7 + 32);
            }

            v9 = v8;
            v5 = v7 + 1;
            if (__OFADD__(v7, 1))
            {
              __break(1u);
LABEL_29:
              __break(1u);
              goto LABEL_30;
            }

            v10 = [v8 attachments];
            if (v10)
            {
              break;
            }

            ++v7;
            if (v5 == v4)
            {
              goto LABEL_32;
            }
          }

          v11 = v6;
          v12 = v10;
          sub_100018968(0, &qword_100033648, NSItemProvider_ptr);
          v37 = sub_10001E1A0();

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v11 = sub_1000169F4(0, v11[2] + 1, 1, v11);
          }

          v14 = v11[2];
          v13 = v11[3];
          v15 = v11;
          if (v14 >= v13 >> 1)
          {
            v15 = sub_1000169F4((v13 > 1), v14 + 1, 1, v11);
          }

          v15[2] = v14 + 1;
          v16 = &v15[v14];
          v6 = v15;
          v16[4] = v37;
        }

        while (v5 != v4);
        goto LABEL_32;
      }
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v4)
      {
        goto LABEL_4;
      }
    }

    v6 = &_swiftEmptyArrayStorage;
LABEL_32:
    v36 = v0[14];

    v0[54] = sub_100014478(v6);

    v0[55] = *(v36 + OBJC_IVAR____TtC7AirDrop30AirDropDiscoveryViewController_securityContexts);

    return _swift_task_switch(sub_1000121B8, 0, 0);
  }

  if (qword_100033430 != -1)
  {
    swift_once();
  }

  v18 = v0[24];
  v17 = v0[25];
  v19 = v0[23];
  v20 = v0[15];
  v21 = sub_10001DDC0();
  sub_100018370(v21, qword_100033438);
  (*(v18 + 16))(v17, v20, v19);
  v22 = sub_10001DDA0();
  v23 = sub_10001E2A0();
  v24 = os_log_type_enabled(v22, v23);
  v26 = v0[24];
  v25 = v0[25];
  v27 = v0[23];
  if (v24)
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v38 = v29;
    *v28 = 136315138;
    sub_100018718(&qword_100033608, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v30 = sub_10001E3E0();
    v32 = v31;
    (*(v26 + 8))(v25, v27);
    v33 = sub_100016BAC(v30, v32, &v38);

    *(v28 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v22, v23, "Could not send items to endpoint %s due to lack of extension item data or sending app bundle ID", v28, 0xCu);
    sub_1000183A8(v29);
  }

  else
  {

    (*(v26 + 8))(v25, v27);
  }

  sub_100014B08(v0[15], 0);

  v34 = v0[1];

  return v34();
}

uint64_t sub_1000121B8()
{
  v1 = swift_task_alloc();
  *(v0 + 448) = v1;
  *(v1 + 16) = *(v0 + 432);
  v2 = swift_task_alloc();
  *(v0 + 456) = v2;
  *v2 = v0;
  v2[1] = sub_10001229C;

  return withTaskGroup<A, B>(of:returning:isolation:body:)();
}

uint64_t sub_10001229C()
{

  return _swift_task_switch(sub_1000123B4, 0, 0);
}

uint64_t sub_1000123CC()
{
  v1 = v0[54];
  v2 = v0[48];
  sub_10001E0C0();
  v3 = sub_10001E090();
  v0[58] = OBJC_IVAR____TtC7AirDrop30AirDropDiscoveryViewController_airDropDiscoveryView;
  v4 = sub_10001DCF0();
  v6 = sub_10001C270(v2, v1, v3, v4, v5);
  v0[59] = v6;

  v7 = swift_task_alloc();
  v0[60] = v7;
  *v7 = v0;
  v7[1] = sub_1000124E8;

  return static SFAirDropSend.loadItemPromises(_:customPayload:)(v6, 0, 0xF000000000000000);
}

uint64_t sub_1000124E8(uint64_t a1)
{
  v3 = *v2;
  v3[61] = a1;
  v3[62] = v1;

  if (v1)
  {

    v4 = v3[49];
    v5 = v3[50];
    v6 = sub_1000135B0;
  }

  else
  {
    v4 = v3[49];
    v5 = v3[50];
    v6 = sub_100012634;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_100012634()
{
  v61 = v0;
  v1 = v0;
  v2 = v0[61];
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v0[42];
    v57 = *(v4 + 16);
    v5 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v52 = (v0[36] + 8);
    v53 = v0[39];
    v55 = (v4 + 8);
    v56 = *(v4 + 72);
    v6 = &_swiftEmptyArrayStorage;
    v7 = v5;
    v58 = *(v2 + 16);
    do
    {
      v8 = v1[44];
      v9 = v1[41];
      v10 = v1[37];
      v11 = v1[35];
      v57(v8, v7, v9);
      sub_10001DEB0();
      sub_10001DF60();
      (*v52)(v10, v11);
      v54 = *v55;
      (*v55)(v8, v9);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_100016818(0, v6[2] + 1, 1, v6, &qword_100033658, &unk_100022DC0, &type metadata accessor for URL);
      }

      v13 = v6[2];
      v12 = v6[3];
      v1 = v59;
      if (v13 >= v12 >> 1)
      {
        v6 = sub_100016818((v12 > 1), v13 + 1, 1, v6, &qword_100033658, &unk_100022DC0, &type metadata accessor for URL);
      }

      v14 = v59[40];
      v15 = v59[38];
      v6[2] = v13 + 1;
      (*(v53 + 32))(v6 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v13, v14, v15);
      v7 += v56;
      --v3;
    }

    while (v3);
    v16 = (v59[33] + 8);
    v17 = &_swiftEmptyArrayStorage;
    do
    {
      v18 = v1[43];
      v19 = v1[41];
      v20 = v1[34];
      v21 = v1[32];
      v57(v18, v5, v19);
      sub_10001DEC0();
      v22 = sub_10001DE60();
      v24 = v23;
      (*v16)(v20, v21);
      v54(v18, v19);
      if (v24 >> 60 == 15)
      {
        v1 = v59;
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_10001670C(0, *(v17 + 2) + 1, 1, v17);
        }

        v1 = v59;
        v26 = *(v17 + 2);
        v25 = *(v17 + 3);
        if (v26 >= v25 >> 1)
        {
          v17 = sub_10001670C((v25 > 1), v26 + 1, 1, v17);
        }

        *(v17 + 2) = v26 + 1;
        v27 = &v17[16 * v26];
        *(v27 + 4) = v22;
        *(v27 + 5) = v24;
      }

      v5 += v56;
      --v58;
    }

    while (v58);
  }

  else
  {

    v6 = &_swiftEmptyArrayStorage;
    v17 = &_swiftEmptyArrayStorage;
  }

  v1[63] = v6;
  if (qword_100033430 != -1)
  {
    swift_once();
  }

  v28 = sub_10001DDC0();
  v1[64] = sub_100018370(v28, qword_100033438);

  v29 = sub_10001DDA0();
  v30 = sub_10001E2C0();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v60 = v32;
    *v31 = 134218499;
    *(v31 + 4) = v6[2];

    *(v31 + 12) = 2160;
    *(v31 + 14) = 1752392040;
    *(v31 + 22) = 2081;
    v33 = v6;
    v34 = sub_10001E1B0();
    v36 = sub_100016BAC(v34, v35, &v60);

    *(v31 + 24) = v36;
    v1 = v59;
    _os_log_impl(&_mh_execute_header, v29, v30, "Loaded items (count=%ld): %{private,mask.hash}s", v31, 0x20u);
    sub_1000183A8(v32);
  }

  else
  {
    v33 = v6;
  }

  v37 = sub_10001DDA0();
  v38 = sub_10001E2C0();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v60 = v40;
    *v39 = 136315138;
    v41 = sub_10001E1B0();
    v43 = sub_100016BAC(v41, v42, &v60);

    *(v39 + 4) = v43;
    _os_log_impl(&_mh_execute_header, v37, v38, "Item preview data %s", v39, 0xCu);
    sub_1000183A8(v40);
  }

  if (*(v17 + 2))
  {
    v44 = *(v17 + 4);
    v45 = *(v17 + 5);
    sub_100018A64(v44, v45);
  }

  else
  {
    v44 = 0;
    v45 = 0xF000000000000000;
  }

  v1[66] = v45;
  v1[65] = v44;

  v46 = swift_task_alloc();
  v1[67] = v46;
  *v46 = v1;
  v46[1] = sub_100012CAC;
  v47 = v1[52];
  v48 = v1[53];
  v49 = v1[31];
  v50 = v1[15];

  return SFAirDropClient.send(_:to:itemPreviewData:requestSource:onlyExchange:)(v49, v33, v50, v44, v45, v47, v48, 0);
}

uint64_t sub_100012CAC()
{
  v2 = *v1;
  v2[68] = v0;

  v3 = v2[66];
  v4 = v2[65];

  if (v0)
  {
    sub_100018AB8(v4, v3);

    v5 = v2[49];
    v6 = v2[50];
    v7 = sub_100013828;
  }

  else
  {

    sub_100018AB8(v4, v3);
    v5 = v2[49];
    v6 = v2[50];
    v7 = sub_100012E60;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_100012E60()
{
  v49 = v0;
  v0[69] = OBJC_IVAR____TtC7AirDrop30AirDropDiscoveryViewController_delegate;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong airDropViewServiceDidStartTransfer];
    swift_unknownObjectRelease();
  }

  v2 = v0[27];
  v3 = v0[23];
  v4 = v0[24];
  v5 = v0[15];
  (*(v0[29] + 16))(v0[30], v0[31], v0[28]);
  v47 = *(v4 + 16);
  v47(v2, v5, v3);
  v6 = sub_10001DDA0();
  v7 = sub_10001E280();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[29];
  v9 = v0[30];
  v11 = v0[27];
  v12 = v0[28];
  v13 = v0[23];
  v14 = v0[24];
  if (v8)
  {
    v15 = v0[22];
    v43 = v0[27];
    v40 = v0[20];
    v41 = v0[21];
    v46 = v7;
    v39 = v0[28];
    v17 = v0[18];
    v16 = v0[19];
    v38 = v0[17];
    v42 = v0[23];
    v18 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    *v18 = 136315394;
    log = v6;
    sub_10001DF50();
    sub_10001DEE0();
    (*(v17 + 8))(v16, v38);
    sub_100018718(&qword_100033610, &type metadata accessor for SFAirDrop.TransferIdentifier, &protocol conformance descriptor for SFAirDrop.TransferIdentifier);
    v19 = sub_10001E3E0();
    v21 = v20;
    (*(v41 + 8))(v15, v40);
    v22 = *(v10 + 8);
    v22(v9, v39);
    v23 = sub_100016BAC(v19, v21, &v48);

    *(v18 + 4) = v23;
    *(v18 + 12) = 2080;
    sub_100018718(&qword_100033608, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v24 = sub_10001E3E0();
    v26 = v25;
    (*(v14 + 8))(v43, v42);
    v27 = sub_100016BAC(v24, v26, &v48);

    *(v18 + 14) = v27;
    _os_log_impl(&_mh_execute_header, log, v46, "Adding current transfer %s for endpoint %s", v18, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v14 + 8))(v11, v13);
    v22 = *(v10 + 8);
    v22(v9, v12);
  }

  v0[70] = v22;
  v28 = v0[26];
  v29 = v0[21];
  v45 = v0[20];
  v30 = v0[18];
  v31 = v0[19];
  v33 = v0[16];
  v32 = v0[17];
  v47(v28, v0[15], v0[23]);
  sub_10001DF50();
  sub_10001DEE0();
  (*(v30 + 8))(v31, v32);
  (*(v29 + 56))(v33, 0, 1, v45);
  swift_beginAccess();
  sub_1000110A0(v33, v28);
  swift_endAccess();
  v34 = swift_task_alloc();
  v0[71] = v34;
  *v34 = v0;
  v34[1] = sub_100013310;
  v35 = v0[31];
  v36 = v0[15];

  return AirDropDiscoveryView.handleTransferUpdates(transferUpdates:endpointUUID:)(v35, v36);
}

uint64_t sub_100013310(char a1)
{
  v2 = *v1;
  v3 = *v1;
  *(v3 + 96) = a1;
  *(v3 + 88) = v1;

  v4 = *(v2 + 400);
  v5 = *(v2 + 392);

  return _swift_task_switch(sub_100013438, v5, v4);
}

uint64_t sub_100013438()
{

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong airDropViewServiceDidFinishTransferWithSuccess:*(v0 + 96)];
    swift_unknownObjectRelease();
  }

  v2 = *(v0 + 560);
  v3 = *(v0 + 384);
  v4 = *(v0 + 248);
  v5 = *(v0 + 224);
  sub_100014770(*(v0 + 120));

  v2(v4, v5);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1000135B0()
{
  v15 = v0;
  v1 = v0[62];

  if (qword_100033430 != -1)
  {
    swift_once();
  }

  v2 = sub_10001DDC0();
  sub_100018370(v2, qword_100033438);
  swift_errorRetain();
  v3 = sub_10001DDA0();
  v4 = sub_10001E2A0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = sub_10001E400();
    v9 = sub_100016BAC(v7, v8, &v14);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "send failed %s", v5, 0xCu);
    sub_1000183A8(v6);
  }

  v10 = v0[48];
  v11 = v0[15];
  swift_errorRetain();
  sub_100014B08(v11, v1);

  v12 = v0[1];

  return v12();
}

uint64_t sub_100013828()
{
  v15 = v0;
  v1 = v0[68];

  if (qword_100033430 != -1)
  {
    swift_once();
  }

  v2 = sub_10001DDC0();
  sub_100018370(v2, qword_100033438);
  swift_errorRetain();
  v3 = sub_10001DDA0();
  v4 = sub_10001E2A0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = sub_10001E400();
    v9 = sub_100016BAC(v7, v8, &v14);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "send failed %s", v5, 0xCu);
    sub_1000183A8(v6);
  }

  v10 = v0[48];
  v11 = v0[15];
  swift_errorRetain();
  sub_100014B08(v11, v1);

  v12 = v0[1];

  return v12();
}

uint64_t sub_100013AA0()
{
  v1[4] = v0;
  sub_10000DB68(&qword_1000334C0, &qword_100022F00);
  v1[5] = swift_task_alloc();
  sub_10001E210();
  v1[6] = sub_10001E200();
  v3 = sub_10001E1E0();
  v1[7] = v3;
  v1[8] = v2;

  return _swift_task_switch(sub_100013B70, v3, v2);
}

uint64_t sub_100013B70()
{
  v1 = v0[4];
  v2 = OBJC_IVAR____TtC7AirDrop30AirDropDiscoveryViewController_existingItemDataTask;
  v3 = *&v1[OBJC_IVAR____TtC7AirDrop30AirDropDiscoveryViewController_existingItemDataTask];
  v0[9] = v3;
  if (v3)
  {

    v4 = swift_task_alloc();
    v0[10] = v4;
    v5 = sub_10000DB68(&qword_100033690, &qword_100022E00);
    *v4 = v0;
    v4[1] = sub_100013D94;
    v6 = v0 + 3;
    v7 = v3;
  }

  else
  {
    v8 = v0[5];
    v9 = sub_10001E230();
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
    *(swift_allocObject() + 16) = v1;
    v10 = v1;
    v11 = sub_10000DB68(&qword_100033690, &qword_100022E00);
    v12 = sub_10001E250();
    v0[11] = v12;

    sub_100018760(v8, &qword_1000334C0, &qword_100022F00);
    *&v1[v2] = v12;

    v13 = swift_task_alloc();
    v0[12] = v13;
    *v13 = v0;
    v13[1] = sub_100013F30;
    v6 = v0 + 2;
    v7 = v12;
    v5 = v11;
  }

  return Task<>.value.getter(v6, v7, v5);
}

uint64_t sub_100013D94()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return _swift_task_switch(sub_100013EB4, v3, v2);
}

uint64_t sub_100013EB4()
{

  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100013F30()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return _swift_task_switch(sub_100014050, v3, v2);
}

uint64_t sub_100014050()
{

  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1000140CC()
{
  v1[23] = v0;
  sub_10001E210();
  v1[24] = sub_10001E200();
  v3 = sub_10001E1E0();
  v1[25] = v3;
  v1[26] = v2;

  return _swift_task_switch(sub_100014164, v3, v2);
}

uint64_t sub_100014164()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[27] = Strong;
  if (Strong)
  {
    v2 = Strong;
    v0[2] = v0;
    v0[7] = v0 + 21;
    v0[3] = sub_1000142F0;
    v3 = swift_continuation_init();
    v0[17] = sub_10000DB68(&qword_100033688, &qword_100022DE8);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_100015CE8;
    v0[13] = &unk_10002D650;
    v0[14] = v3;
    [v2 airDropViewServiceRequestingSendingAppBundleIdentifierWithCompletionHandler:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {

    v4 = v0[1];

    return v4(0, 0);
  }
}

uint64_t sub_1000142F0()
{
  v1 = *(*v0 + 208);
  v2 = *(*v0 + 200);

  return _swift_task_switch(sub_1000143F8, v2, v1);
}

uint64_t sub_1000143F8()
{

  v1 = v0[21];
  v2 = v0[22];
  swift_unknownObjectRelease();
  v3 = v0[1];

  return v3(v1, v2);
}

uint64_t sub_100014478(uint64_t a1)
{
  v28 = *(a1 + 16);
  if (!v28)
  {
    return &_swiftEmptyArrayStorage;
  }

  v1 = 0;
  v2 = &_swiftEmptyArrayStorage;
  v27 = a1 + 32;
  v3 = &qword_100033670;
  while (1)
  {
    v5 = *(v27 + 8 * v1);
    v6 = v5 >> 62;
    if (v5 >> 62)
    {
      v7 = sub_10001E3B0();
    }

    else
    {
      v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v8 = v2 >> 62;
    if (v2 >> 62)
    {
      v25 = sub_10001E3B0();
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
      sub_10001E3B0();
      goto LABEL_15;
    }

    if (v8)
    {
      goto LABEL_14;
    }

LABEL_15:
    result = sub_10001E370();
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

      sub_100018B20(&qword_100033678, v3, &qword_100022DD8, &protocol conformance descriptor for [A]);
      for (i = 0; i != v14; ++i)
      {
        sub_10000DB68(v3, &qword_100022DD8);
        v18 = v3;
        v19 = sub_10001C1E8(v31, i, v5);
        v21 = *v20;
        (v19)(v31, 0);
        v3 = v18;
        *(v16 + 8 * i) = v21;
      }
    }

    else
    {
      sub_100018968(0, &qword_100033648, NSItemProvider_ptr);
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
  result = sub_10001E3B0();
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

void sub_100014770(uint64_t a1)
{
  v3 = sub_10000DB68(&qword_100033618, &qword_100022D70);
  __chkstk_darwin(v3 - 8);
  v5 = &v25 - v4;
  v6 = sub_10001DC60();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v29 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v25 - v10;
  if (qword_100033430 != -1)
  {
    swift_once();
  }

  v12 = sub_10001DDC0();
  sub_100018370(v12, qword_100033438);
  v28 = *(v7 + 16);
  v28(v11, a1, v6);
  v13 = sub_10001DDA0();
  v14 = sub_10001E280();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v26 = v5;
    v16 = v15;
    v17 = swift_slowAlloc();
    v27 = v1;
    v25 = v17;
    v30[0] = v17;
    *v16 = 136315138;
    sub_100018718(&qword_100033608, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v18 = sub_10001E3E0();
    v19 = a1;
    v21 = v20;
    (*(v7 + 8))(v11, v6);
    v22 = sub_100016BAC(v18, v21, v30);
    a1 = v19;

    *(v16 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v13, v14, "Removing current transfer for endpoint %s", v16, 0xCu);
    sub_1000183A8(v25);

    v5 = v26;
  }

  else
  {

    (*(v7 + 8))(v11, v6);
  }

  v23 = v29;
  v28(v29, a1, v6);
  v24 = sub_10001DFC0();
  (*(*(v24 - 8) + 56))(v5, 1, 1, v24);
  swift_beginAccess();
  sub_1000110A0(v5, v23);
  swift_endAccess();
  sub_10000F7EC();
}

uint64_t sub_100014B08(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v29 = a2;
  v36 = a1;
  v4 = sub_10001DFC0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v34 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10001DD10();
  v30 = *(v7 - 8);
  v31 = v7;
  __chkstk_darwin(v7);
  v9 = (&v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_10001DD20();
  v32 = *(v10 - 8);
  v33 = v10;
  __chkstk_darwin(v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10001DD00();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10000DB68(&qword_100033618, &qword_100022D70);
  __chkstk_darwin(v17 - 8);
  v19 = &v28 - v18;
  v20 = sub_10001DC60();
  __chkstk_darwin(v20);
  v22 = &v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 16))(v22, v36);
  v24 = *(v5 + 56);
  v35 = v4;
  v24(v19, 1, 1, v4);
  swift_beginAccess();
  sub_1000110A0(v19, v22);
  swift_endAccess();
  (*(v14 + 16))(v16, v3 + OBJC_IVAR____TtC7AirDrop30AirDropDiscoveryViewController_airDropDiscoveryView, v13);
  if (v29)
  {
    swift_getErrorValue();
    v25 = sub_10001E400();
  }

  else
  {
    v26 = 0xED0000726F727265;
    v25 = 0x206E776F6E6B6E75;
  }

  *v9 = v25;
  v9[1] = v26;
  (*(v30 + 104))(v9, enum case for _DDNodeDecoration.Kind.failed(_:), v31);
  sub_10001DFF0();
  (*(v5 + 16))(v34, v3 + OBJC_IVAR____TtC7AirDrop30AirDropDiscoveryViewController_pendingTransferID, v35);
  sub_10001DD30();
  sub_10001DCA0();
  (*(v32 + 8))(v12, v33);
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_100014F94(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_10001DC60();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_10001DFC0();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  sub_10001E210();
  v3[12] = sub_10001E200();
  v7 = sub_10001E1E0();
  v3[13] = v7;
  v3[14] = v6;

  return _swift_task_switch(sub_1000150F4, v7, v6);
}

uint64_t sub_1000150F4()
{
  v24 = v0;
  if (qword_100033430 != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[2];
  v5 = sub_10001DDC0();
  v0[15] = sub_100018370(v5, qword_100033438);
  v6 = *(v3 + 16);
  v0[16] = v6;
  v0[17] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = sub_10001DDA0();
  v8 = sub_10001E2C0();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[11];
  v11 = v0[8];
  v12 = v0[9];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = v22;
    *v13 = 136315138;
    sub_100018718(&qword_100033610, &type metadata accessor for SFAirDrop.TransferIdentifier, &protocol conformance descriptor for SFAirDrop.TransferIdentifier);
    v14 = sub_10001E3E0();
    v16 = v15;
    v17 = *(v12 + 8);
    v17(v10, v11);
    v18 = sub_100016BAC(v14, v16, &v23);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "Attempting to cancel transferID %s", v13, 0xCu);
    sub_1000183A8(v22);
  }

  else
  {

    v17 = *(v12 + 8);
    v17(v10, v11);
  }

  v0[18] = v17;
  v19 = swift_task_alloc();
  v0[19] = v19;
  *v19 = v0;
  v19[1] = sub_10001538C;
  v20 = v0[2];

  return SFAirDropClient.cancelTransfer(_:)(v20);
}

uint64_t sub_10001538C()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = *(v2 + 112);
  v4 = *(v2 + 104);
  if (v0)
  {
    v5 = sub_100015544;
  }

  else
  {
    v5 = sub_1000154C8;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1000154C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100015544()
{
  v32 = v0;
  v1 = v0[16];
  v2 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[5];
  v6 = v0[6];
  v8 = v0[2];
  v7 = v0[3];

  (*(v6 + 16))(v4, v7, v5);
  v1(v2, v8, v3);
  v9 = sub_10001DDA0();
  v10 = sub_10001E2A0();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[18];
  v13 = v0[10];
  v14 = v0[7];
  v15 = v0[8];
  v17 = v0[5];
  v16 = v0[6];
  if (v11)
  {
    v30 = v10;
    v18 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v18 = 136315394;
    sub_100018718(&qword_100033608, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v29 = v12;
    v19 = sub_10001E3E0();
    v21 = v20;
    (*(v16 + 8))(v14, v17);
    v22 = sub_100016BAC(v19, v21, &v31);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2080;
    sub_100018718(&qword_100033610, &type metadata accessor for SFAirDrop.TransferIdentifier, &protocol conformance descriptor for SFAirDrop.TransferIdentifier);
    v23 = sub_10001E3E0();
    v25 = v24;
    v29(v13, v15);
    v26 = sub_100016BAC(v23, v25, &v31);

    *(v18 + 14) = v26;
    _os_log_impl(&_mh_execute_header, v9, v30, "Cancel failed for endpoint %s, removing transferID %s", v18, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v12(v13, v15);
    (*(v16 + 8))(v14, v17);
  }

  sub_100014770(v0[3]);

  v27 = v0[1];

  return v27();
}

uint64_t sub_100015854(uint64_t a1, uint64_t a2)
{
  v2[22] = a1;
  v2[23] = a2;
  sub_10001E210();
  v2[24] = sub_10001E200();
  v4 = sub_10001E1E0();
  v2[25] = v4;
  v2[26] = v3;

  return _swift_task_switch(sub_1000158EC, v4, v3);
}

uint64_t sub_1000158EC()
{
  v1 = [objc_allocWithZone(AirDropExtensionActivity) init];
  *(v0 + 216) = v1;
  [v1 setMaxPreviews:3];
  v2 = [v1 itemDataRequest];
  *(v0 + 224) = v2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 232) = Strong;
  if (Strong)
  {
    v4 = Strong;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 168;
    *(v0 + 24) = sub_100015AE8;
    v5 = swift_continuation_init();
    *(v0 + 136) = sub_10000DB68(&qword_100033698, &qword_100022E08);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_100015C84;
    *(v0 + 104) = &unk_10002D6A0;
    *(v0 + 112) = v5;
    [v4 airDropViewServiceRequestingSharedItemsWithDataRequest:v2 completionHandler:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }

  else
  {

    **(v0 + 176) = 0;
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_100015AE8()
{
  v1 = *(*v0 + 208);
  v2 = *(*v0 + 200);

  return _swift_task_switch(sub_100015BF0, v2, v1);
}

uint64_t sub_100015BF0()
{
  v1 = *(v0 + 224);

  v2 = *(v0 + 168);
  swift_unknownObjectRelease();

  **(v0 + 176) = v2;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100015C84(uint64_t a1, void *a2)
{
  v3 = sub_100018B80((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return _swift_continuation_resume(v4);
}

uint64_t sub_100015CE8(uint64_t a1, uint64_t a2)
{
  v3 = *sub_100018B80((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v4 = sub_10001E130();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = *(*(v3 + 64) + 40);
  *v6 = v4;
  v6[1] = v5;

  return _swift_continuation_resume(v3);
}

id AirDropDiscoveryViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_10001E120();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id AirDropDiscoveryViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100015F8C(uint64_t a1)
{
  swift_unknownObjectWeakInit();
  sub_10001E3A0();
  __break(1u);
}

void sub_100015FFC(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v9.receiver = a1;
  v9.super_class = type metadata accessor for AirDropHostingController(0);
  v6 = a3;
  v7 = v9.receiver;
  objc_msgSendSuper2(&v9, "setContentScrollView:forEdge:", v6, a4);
  Strong = swift_unknownObjectWeakLoadStrong();
  [Strong setContentScrollView:v6 forEdge:{a4, v9.receiver, v9.super_class}];
}

id sub_100016114()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AirDropHostingController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000161A0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000161D8(uint64_t a1)
{
  result = sub_10001DD00();
  if (v2 <= 0x3F)
  {
    result = sub_10001DFC0();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_10001633C(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_100016388(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100016480;

  return v6(a1);
}

uint64_t sub_100016480()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100016578(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

char *sub_100016600(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000DB68(&qword_100033660, &unk_100022F20);
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

char *sub_10001670C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000DB68(&qword_100033650, &qword_100022DB8);
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

void *sub_100016818(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10000DB68(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_1000169F4(void *result, int64_t a2, char a3, void *a4)
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
    sub_10000DB68(&qword_100033680, &qword_100022DE0);
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
    v10 = &_swiftEmptyArrayStorage;
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
    sub_10000DB68(&qword_100033670, &qword_100022DD8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_100016B50(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_100016BAC(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_100016BAC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100016C78(v11, 0, 0, 1, a1, a2);
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
    sub_1000183F4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1000183A8(v11);
  return v7;
}

unint64_t sub_100016C78(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100016D84(a5, a6);
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
    result = sub_10001E380();
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

char *sub_100016D84(uint64_t a1, unint64_t a2)
{
  v3 = sub_100016DD0(a1, a2);
  sub_100016F00(&off_10002D530);
  return v3;
}

char *sub_100016DD0(uint64_t a1, unint64_t a2)
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

  v6 = sub_100016FEC(v5, 0);
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

  result = sub_10001E380();
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
        v10 = sub_10001E170();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100016FEC(v10, 0);
        result = sub_10001E350();
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

uint64_t sub_100016F00(uint64_t result)
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

  result = sub_100017060(result, v11, 1, v3);
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

void *sub_100016FEC(uint64_t a1, uint64_t a2)
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

  sub_10000DB68(&qword_1000335D8, &qword_100022D20);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100017060(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000DB68(&qword_1000335D8, &qword_100022D20);
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

_BYTE **sub_100017154(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void *sub_100017164(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

void sub_100017184(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_1000171F8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_100017228@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_10001A1FC(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100017EAC();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = sub_10001DC60();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = sub_10001DFC0();
    v20 = *(v13 - 8);
    (*(v20 + 32))(a2, v12 + *(v20 + 72) * v7, v13);
    sub_100017870(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = sub_10001DFC0();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_1000173C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v52 = sub_10001DFC0();
  v5 = *(v52 - 8);
  __chkstk_darwin(v52);
  v51 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10001DC60();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v53 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_10000DB68(&unk_100033620, &qword_100022D78);
  v47 = v4;
  result = sub_10001E3D0();
  v12 = result;
  if (*(v10 + 16))
  {
    v13 = 0;
    v14 = v8;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v43 = (v14 + 16);
    v44 = v14;
    v41 = v2;
    v42 = v5 + 16;
    v45 = v10;
    v46 = v5;
    v48 = (v5 + 32);
    v49 = (v14 + 32);
    v20 = result + 64;
    v21 = v14;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v26 = v23 | (v13 << 6);
      v27 = *(v10 + 48);
      v50 = *(v21 + 72);
      v28 = v27 + v50 * v26;
      if (v47)
      {
        (*v49)(v53, v28, v7);
        v29 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 32))(v51, v29 + v30 * v26, v52);
      }

      else
      {
        (*v43)(v53, v28, v7);
        v31 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 16))(v51, v31 + v30 * v26, v52);
      }

      sub_100018718(&qword_100033820, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      result = sub_10001E0E0();
      v32 = -1 << *(v12 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v20 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v20 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v20 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v49)((*(v12 + 48) + v50 * v22), v53, v7);
      result = (*v48)(*(v12 + 56) + v30 * v22, v51, v52);
      ++*(v12 + 16);
      v21 = v44;
      v10 = v45;
    }

    v24 = v13;
    while (1)
    {
      v13 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v19)
      {
        break;
      }

      v25 = v15[v13];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_34;
    }

    v39 = 1 << *(v10 + 32);
    v3 = v41;
    if (v39 >= 64)
    {
      bzero(v15, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v39;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

unint64_t sub_100017870(int64_t a1, uint64_t a2)
{
  v4 = sub_10001DC60();
  v5 = *(v4 - 8);
  result = __chkstk_darwin(v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v41 = a2;
    v12 = ~v10;
    v13 = sub_10001E310();
    v14 = v12;
    a2 = v41;
    v40 = (v13 + 1) & v14;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v38 = v9;
    v39 = v16;
    v17 = *(v15 + 56);
    v37 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v11;
      v20 = v14;
      v21 = v15;
      v39(v8, *(a2 + 48) + v17 * v11, v4);
      sub_100018718(&qword_100033820, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v22 = sub_10001E0E0();
      result = (*v37)(v8, v4);
      v14 = v20;
      v23 = v22 & v20;
      if (a1 >= v40)
      {
        if (v23 >= v40 && a1 >= v23)
        {
LABEL_15:
          v15 = v21;
          if (v18 * a1 < v19 || *(v41 + 48) + v18 * a1 >= (*(v41 + 48) + v19 + v18))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v18 * a1 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v41;
          v26 = *(v41 + 56);
          v27 = *(*(sub_10001DFC0() - 8) + 72);
          v28 = v27 * a1;
          result = v26 + v27 * a1;
          v29 = v27 * v11;
          v30 = v26 + v27 * v11 + v27;
          if (v28 < v29 || result >= v30)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v11;
            v9 = v38;
            v14 = v20;
          }

          else
          {
            a1 = v11;
            v32 = v28 == v29;
            v9 = v38;
            v14 = v20;
            if (!v32)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v20;
              a1 = v11;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v40 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v15 = v21;
      v9 = v38;
      a2 = v41;
LABEL_4:
      v11 = (v11 + 1) & v14;
      v17 = v18;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_100017BB4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_10001DC60();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_10001A1FC(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_100017EAC();
      goto LABEL_7;
    }

    sub_1000173C8(v17, a3 & 1);
    v28 = sub_10001A1FC(a2);
    if ((v18 & 1) == (v29 & 1))
    {
      v14 = v28;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_100017DB8(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_10001E3F0();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = sub_10001DFC0();
  v23 = *(v22 - 8);
  v24 = *(v23 + 40);
  v25 = v22;
  v26 = v21 + *(v23 + 72) * v14;

  return v24(v26, a1, v25);
}

uint64_t sub_100017DB8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_10001DC60();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = sub_10001DFC0();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

char *sub_100017EAC()
{
  v1 = v0;
  v41 = sub_10001DFC0();
  v44 = *(v41 - 8);
  __chkstk_darwin(v41);
  v40 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_10001DC60();
  v43 = *(v39 - 8);
  __chkstk_darwin(v39);
  v38 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000DB68(&unk_100033620, &qword_100022D78);
  v4 = *v0;
  v5 = sub_10001E3C0();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v42 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v35 = v43 + 16;
    v36 = v15;
    v33 = v43 + 32;
    v34 = v44 + 16;
    v32 = v44 + 32;
    v37 = v4;
    v17 = v38;
    v16 = v39;
    if (v14)
    {
      do
      {
        v18 = __clz(__rbit64(v14));
        v45 = (v14 - 1) & v14;
LABEL_14:
        v21 = v18 | (v10 << 6);
        v22 = v43;
        v23 = *(v43 + 72) * v21;
        (*(v43 + 16))(v17, *(v4 + 48) + v23, v16);
        v24 = v44;
        v25 = *(v44 + 72) * v21;
        v26 = v40;
        v27 = v41;
        (*(v44 + 16))(v40, *(v4 + 56) + v25, v41);
        v28 = v42;
        (*(v22 + 32))(*(v42 + 48) + v23, v17, v16);
        v29 = *(v28 + 56);
        v4 = v37;
        result = (*(v24 + 32))(v29 + v25, v26, v27);
        v15 = v36;
        v14 = v45;
      }

      while (v45);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v30;
        v6 = v42;
        goto LABEL_18;
      }

      v20 = *(v31 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v45 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void sub_100018200()
{
  v1 = sub_10001DC60();
  __chkstk_darwin(v1 - 8);
  v2 = OBJC_IVAR____TtC7AirDrop30AirDropDiscoveryViewController_securityContexts;
  type metadata accessor for AirDropUtilities.SecurityContexts();
  v3 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v3 + 112) = &_swiftEmptyArrayStorage;
  *(v0 + v2) = v3;
  *(v0 + OBJC_IVAR____TtC7AirDrop30AirDropDiscoveryViewController_activityExtensionItemData) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC7AirDrop30AirDropDiscoveryViewController_tapHandleTask) = 0;
  *(v0 + OBJC_IVAR____TtC7AirDrop30AirDropDiscoveryViewController_existingItemDataTask) = 0;
  sub_10001DC50();
  sub_10001DFD0();
  *(v0 + OBJC_IVAR____TtC7AirDrop30AirDropDiscoveryViewController_currentTransfersByEndpointID) = &_swiftEmptyDictionarySingleton;
  sub_10001E3A0();
  __break(1u);
}

uint64_t sub_100018370(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1000183A8(void *a1)
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

uint64_t sub_1000183F4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *sub_100018454(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_1000184B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000DB68(&qword_1000334C0, &qword_100022F00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100018528(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100018D60;

  return sub_100016388(a1, v4);
}

uint64_t sub_1000185E0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100018618(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000EC9C;

  return sub_100016388(a1, v4);
}

uint64_t sub_1000186D0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100018718(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100018760(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10000DB68(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1000187C0()
{
  v1 = sub_10001DC60();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100018884(uint64_t a1)
{
  v4 = *(sub_10001DC60() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100018D60;

  return sub_1000112D0(a1, v6, v1 + v5);
}

uint64_t sub_100018968(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_1000189B0(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100018D60;

  return sub_10001A89C(a1, a2, v7, v6);
}

uint64_t sub_100018A64(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_100018AB8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100018ACC(a1, a2);
  }

  return a1;
}

uint64_t sub_100018ACC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_100018B20(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000186D0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_100018B80(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100018BC4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100018BFC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100018D60;

  return sub_100015854(a1, v4);
}

__n128 sub_100018C9C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100018CAC(uint64_t a1, int a2)
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

uint64_t sub_100018CCC(uint64_t result, int a2, int a3)
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

void sub_100018D08(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_100018D64()
{
  if ([v0 _remoteViewControllerProxy])
  {
    sub_10001E300();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    sub_10000DB68(&qword_100033818, &qword_100022E68);
    if (swift_dynamicCast())
    {
      return v2;
    }
  }

  else
  {
    sub_1000191C0(v5);
  }

  return 0;
}

Swift::Void __swiftcall AirDropNavigationController.beginRequest(with:)(NSExtensionContext with)
{
  v2 = v1;
  v4 = [v1 view];
  if (v4)
  {
    v5 = v4;
    v6 = sub_10001E120();
    [v5 setAccessibilityIdentifier:v6];

    sub_100018968(0, &unk_100033710, NSUserDefaults_ptr);
    v7 = sub_10001E2D0();
    LOBYTE(v6) = sub_10001DF90();

    if (v6)
    {
      v8 = [v2 sheetPresentationController];
      if (v8)
      {
        v9 = v8;
        v10 = [objc_allocWithZone(_UIViewGlass) initWithVariant:0];
        [v9 _setLargeBackground:v10];
      }

      v11 = sub_10001A58C(with.super.isa);
      v13 = v12;
      v14 = objc_allocWithZone(type metadata accessor for AirDropDiscoveryViewController(0));
      v15 = AirDropDiscoveryViewController.init(hostAppBundleID:)(v11, v13);
      swift_beginAccess();
      swift_unknownObjectWeakAssign();
      [v2 pushViewController:v15 animated:0];
      goto LABEL_21;
    }

    v16 = [(objc_class *)with.super.isa inputItems];
    v17 = sub_10001E1A0();

    if (*(v17 + 16))
    {
      sub_1000183F4(v17 + 32, v25);

      sub_100018968(0, &qword_100033640, NSExtensionItem_ptr);
      if (swift_dynamicCast())
      {
        v18 = v26[0];
        if (v26[0])
        {
          v19 = [v26[0] userInfo];
          if (v19)
          {
            v20 = v19;
            v21 = sub_10001E0D0();

            sub_10001E340();
            if (*(v21 + 16))
            {
              v22 = sub_10001A280(v25);
              if (v23)
              {
                sub_1000183F4(*(v21 + 56) + 32 * v22, v26);
                sub_10001A2C4(v25);

                if (*(&v27 + 1))
                {
                  if (swift_dynamicCast())
                  {
                    v24 = v25[0];
LABEL_20:
                    v15 = [objc_allocWithZone(AirDropBrowserViewController) init];
                    [v15 setAirDropDelegate:v2];
                    [v15 setShowNoContentView:v24];
                    [v2 pushViewController:v15 animated:0];

LABEL_21:
                    return;
                  }

LABEL_19:
                  v24 = 0;
                  goto LABEL_20;
                }

LABEL_18:
                sub_1000191C0(v26);
                goto LABEL_19;
              }
            }

            sub_10001A2C4(v25);
          }
        }

LABEL_17:
        *v26 = 0u;
        v27 = 0u;
        goto LABEL_18;
      }
    }

    else
    {
    }

    v18 = 0;
    goto LABEL_17;
  }

  __break(1u);
}

uint64_t sub_1000191C0(uint64_t a1)
{
  v2 = sub_10000DB68(&qword_100033720, &qword_100022D10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1000192B4(void *a1)
{
  v1 = [objc_opt_self() interfaceWithProtocol:*a1];

  return v1;
}

id sub_100019310(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = [objc_opt_self() interfaceWithProtocol:*a3];

  return v3;
}

id AirDropNavigationController.__allocating_init(navigationBarClass:toolbarClass:)(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (a1)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    if (!v3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  ObjCClassFromMetadata = 0;
  if (a2)
  {
LABEL_3:
    v3 = swift_getObjCClassFromMetadata();
  }

LABEL_4:
  v5 = objc_allocWithZone(v2);

  return [v5 initWithNavigationBarClass:ObjCClassFromMetadata toolbarClass:v3];
}

id AirDropNavigationController.init(navigationBarClass:toolbarClass:)(uint64_t ObjCClassFromMetadata, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = &v2[OBJC_IVAR____TtC7AirDrop27AirDropNavigationController_AirDropNoContentViewKey];
  *v6 = 0xD000000000000011;
  *(v6 + 1) = 0x8000000100027AB0;
  if (ObjCClassFromMetadata)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  }

  if (a2)
  {
    v7 = swift_getObjCClassFromMetadata();
  }

  else
  {
    v7 = 0;
  }

  v9.receiver = v2;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, "initWithNavigationBarClass:toolbarClass:", ObjCClassFromMetadata, v7);
}

id AirDropNavigationController.__allocating_init(rootViewController:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithRootViewController:a1];

  return v3;
}

id AirDropNavigationController.init(rootViewController:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC7AirDrop27AirDropNavigationController_AirDropNoContentViewKey];
  *v4 = 0xD000000000000011;
  *(v4 + 1) = 0x8000000100027AB0;
  v7.receiver = v1;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, "initWithRootViewController:", a1);

  return v5;
}

id AirDropNavigationController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v7 = &v3[OBJC_IVAR____TtC7AirDrop27AirDropNavigationController_AirDropNoContentViewKey];
  *v7 = 0xD000000000000011;
  *(v7 + 1) = 0x8000000100027AB0;
  if (a2)
  {
    v8 = sub_10001E120();
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v3;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, "initWithNibName:bundle:", v8, a3);

  return v9;
}

id AirDropNavigationController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder:a1];

  return v3;
}

id AirDropNavigationController.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC7AirDrop27AirDropNavigationController_AirDropNoContentViewKey];
  *v4 = 0xD000000000000011;
  *(v4 + 1) = 0x8000000100027AB0;
  v7.receiver = v1;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, "initWithCoder:", a1);

  if (v5)
  {
  }

  return v5;
}

void AirDropNavigationController.airDropViewServiceWillStartTransfer(to:)(uint64_t a1)
{
  [v1 _hostAuditToken];
  v3 = SecTaskCreateWithAuditToken(kCFAllocatorDefault, &v11);
  if (v3)
  {
    v4 = v3;
    v5 = sub_10001E120();
    v6 = SecTaskCopyValueForEntitlement(v4, v5, 0);

    if (v6)
    {
      v7 = CFGetTypeID(v6);
      if (v7 == CFBooleanGetTypeID() && (type metadata accessor for CFBoolean(0), swift_unknownObjectRetain(), v8 = swift_dynamicCastUnknownClassUnconditional(), Value = CFBooleanGetValue(v8), v8, Value) && (v10 = sub_100018D64()) != 0)
      {
        [v10 airDropViewServiceWillStartTransferToRecipient:a1];

        swift_unknownObjectRelease();
      }

      else
      {
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

Swift::Void __swiftcall AirDropNavigationController.airDropViewServiceDidFinishTransfer(withSuccess:)(Swift::Bool withSuccess)
{
  v2 = sub_100018D64();
  if (v2)
  {
    [v2 airDropViewServiceDidFinishTransferWithSuccess:withSuccess];

    swift_unknownObjectRelease();
  }
}

void AirDropNavigationController.airDropViewServiceRequestingSharedItems(with:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100018D64();
  if (v6)
  {
    v7 = v6;
    if (a2)
    {
      v9[4] = a2;
      v9[5] = a3;
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 1107296256;
      v9[2] = sub_100019CDC;
      v9[3] = &unk_10002D748;
      v8 = _Block_copy(v9);
    }

    else
    {
      v8 = 0;
    }

    [v7 airDropViewServiceRequestingSharedItemsWithDataRequest:a1 completionHandler:v8];
    swift_unknownObjectRelease();
    _Block_release(v8);
  }
}

void sub_100019CDC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void AirDropNavigationController.airDropViewServiceRequestingSendingAppBundleIdentifier(completionHandler:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_100018D64();
  if (v4)
  {
    v5 = v4;
    if (a1)
    {
      v7[4] = a1;
      v7[5] = a2;
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 1107296256;
      v7[2] = sub_100019EF0;
      v7[3] = &unk_10002D770;
      v6 = _Block_copy(v7);
    }

    else
    {
      v6 = 0;
    }

    [v5 airDropViewServiceRequestingSendingAppBundleIdentifierWithCompletionHandler:v6];
    swift_unknownObjectRelease();
    _Block_release(v6);
  }
}

uint64_t sub_100019EF0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = sub_10001E130();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v2(v3, v5);
}

void sub_10001A024(uint64_t a1, NSString a2, uint64_t a3)
{
  if (a2)
  {
    a2 = sub_10001E120();
  }

  v4 = a2;
  (*(a3 + 16))(a3);
}

void *sub_10001A08C(const char **a1)
{
  result = sub_100018D64();
  if (result)
  {
    [result *a1];

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_10001A0EC(void *a1, uint64_t a2, const char **a3)
{
  v5 = a1;
  v4 = sub_100018D64();
  if (v4)
  {
    [v4 *a3];
    swift_unknownObjectRelease();
  }
}

uint64_t NWEndpoint.endpointUUID()()
{
  swift_slowAlloc();
  result = sub_10001DDF0();
  if (result)
  {
    nw_endpoint_get_service_identifier();
    swift_unknownObjectRelease();
    sub_10001DC40();
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_10001A1FC(uint64_t a1)
{
  sub_10001DC60();
  sub_10001A73C(&qword_100033820, &protocol conformance descriptor for UUID);
  v2 = sub_10001E0E0();

  return sub_10001A318(a1, v2);
}

unint64_t sub_10001A280(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10001E320(*(v2 + 40));

  return sub_10001A4C4(a1, v4);
}

unint64_t sub_10001A318(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_10001DC60();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_10001A73C(&qword_100033828, &protocol conformance descriptor for UUID);
      v15 = sub_10001E0F0();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_10001A4C4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10001A6E0(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_10001E330();
      sub_10001A2C4(v8);
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

uint64_t sub_10001A58C(void *a1)
{
  [a1 _extensionHostAuditToken];
  CPCopyBundleIdentifierAndTeamFromAuditToken();
  return 0;
}

uint64_t sub_10001A640(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001A67C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10001A68C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001A73C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_10001DC60();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10001A790()
{
  v0 = sub_10001DDC0();
  sub_100018454(v0, qword_100033830);
  v1 = sub_100018370(v0, qword_100033830);
  if (qword_100033460 != -1)
  {
    swift_once();
  }

  v2 = sub_100018370(v0, qword_100033B28);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10001A858()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10001A89C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[9] = a2;
  sub_10000DB68(&qword_1000334C0, &qword_100022F00);
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();

  return _swift_task_switch(sub_10001A948, 0, 0);
}

void sub_10001A948()
{
  v1 = *(v0 + 80);
  if (v1 >> 62)
  {
    v2 = sub_10001E3B0();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_21:

    v25 = *(v0 + 8);

    v25();
    return;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_21;
  }

LABEL_3:
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = v1 & 0xC000000000000001;
    v26 = *(v0 + 80) + 32;
    v5 = &selRef_boundarySupplementaryItemWithLayoutSize_elementKind_alignment_;
    v27 = v1 & 0xC000000000000001;
    v28 = v2;
    while (1)
    {
      v6 = v4 ? sub_10001E360() : *(v26 + 8 * v3);
      v7 = v6;
      v8 = sub_10001E120();
      v9 = [v7 v5[61]];

      if (v9)
      {
        break;
      }

LABEL_6:
      if (v2 == ++v3)
      {
        goto LABEL_21;
      }
    }

    v11 = *(v0 + 96);
    v10 = *(v0 + 104);
    v12 = *(v0 + 88);
    v13 = sub_10001E230();
    v14 = *(v13 - 8);
    (*(v14 + 56))(v10, 1, 1, v13);
    v15 = swift_allocObject();
    v15[2] = 0;
    v16 = v15 + 2;
    v15[3] = 0;
    v15[4] = v7;
    v15[5] = v12;
    sub_1000184B8(v10, v11);
    LODWORD(v10) = (*(v14 + 48))(v11, 1, v13);
    v29 = v7;

    v17 = *(v0 + 96);
    if (v10 == 1)
    {
      sub_100018760(*(v0 + 96), &qword_1000334C0, &qword_100022F00);
      if (*v16)
      {
LABEL_13:
        swift_getObjectType();
        swift_unknownObjectRetain();
        v18 = sub_10001E1E0();
        v20 = v19;
        swift_unknownObjectRelease();
LABEL_16:
        v21 = **(v0 + 72);
        v22 = swift_allocObject();
        *(v22 + 16) = &unk_100022F40;
        *(v22 + 24) = v15;

        if (v20 | v18)
        {
          v23 = v0 + 16;
          *(v0 + 16) = 0;
          *(v0 + 24) = 0;
          *(v0 + 32) = v18;
          *(v0 + 40) = v20;
        }

        else
        {
          v23 = 0;
        }

        v24 = *(v0 + 104);
        *(v0 + 48) = 1;
        *(v0 + 56) = v23;
        *(v0 + 64) = v21;
        swift_task_create();

        sub_100018760(v24, &qword_1000334C0, &qword_100022F00);
        v4 = v27;
        v2 = v28;
        v5 = &selRef_boundarySupplementaryItemWithLayoutSize_elementKind_alignment_;
        goto LABEL_6;
      }
    }

    else
    {
      sub_10001E220();
      (*(v14 + 8))(v17, v13);
      if (*v16)
      {
        goto LABEL_13;
      }
    }

    v18 = 0;
    v20 = 0;
    goto LABEL_16;
  }

  __break(1u);
}

uint64_t sub_10001ACE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 152) = a4;
  *(v5 + 160) = a5;
  return _swift_task_switch(sub_10001AD08, 0, 0);
}

uint64_t sub_10001AD08()
{
  v1 = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_10001AE24;
  v2 = swift_continuation_init();
  v0[17] = sub_10000DB68(&qword_1000339C0, &qword_100022F58);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10001B290;
  v0[13] = &unk_10002D860;
  v0[14] = v2;
  [v1 sf_loadSecurityContextWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10001AE24()
{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = sub_10001B0A8;
  }

  else
  {
    v2 = sub_10001AF34;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10001AF34()
{
  v1 = v0[20];
  v0[22] = v0[18];
  return _swift_task_switch(sub_10001AF58, v1, 0);
}

uint64_t sub_10001AF58()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 160);
  [v1 activate];
  swift_beginAccess();
  v3 = v1;
  sub_10001E180();
  if (*((*(v2 + 112) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 112) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_10001E1C0();
  }

  sub_10001E1D0();
  swift_endAccess();

  return _swift_task_switch(sub_10001B048, 0, 0);
}

uint64_t sub_10001B048()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10001B0A8()
{
  swift_willThrow();
  if (qword_100033450 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 152);
  v2 = sub_10001DDC0();
  sub_100018370(v2, qword_100033830);
  v3 = v1;
  swift_errorRetain();
  v4 = sub_10001DDA0();
  v5 = sub_10001E2A0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 152);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412546;
    *(v7 + 4) = v6;
    *v8 = v6;
    *(v7 + 12) = 2112;
    v9 = v6;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    v8[1] = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Could not load security context for item provider %@: %@", v7, 0x16u);
    sub_10000DB68(&qword_1000335D0, &qword_100022D18);
    swift_arrayDestroy();
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_10001B290(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_100018B80((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    sub_10000DB68(&qword_100033600, qword_100022F60);
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

uint64_t sub_10001B368(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, uint64_t a11, uint64_t a12, __int128 a13, uint64_t a14, uint64_t a15)
{
  *(v15 + 72) = a14;
  *(v15 + 80) = a15;
  *(v15 + 56) = a13;
  *(v15 + 40) = a11;
  *(v15 + 48) = a12;
  *(v15 + 24) = a6;
  *(v15 + 32) = v34;
  *(v15 + 16) = a1;
  v19 = sub_10001DE80();
  *(v15 + 88) = v19;
  *(v15 + 96) = *(v19 - 8);
  *(v15 + 104) = swift_task_alloc();
  *(v15 + 112) = swift_task_alloc();
  v20 = sub_10001DF70();
  *(v15 + 120) = v20;
  *(v15 + 128) = *(v20 - 8);
  *(v15 + 136) = swift_task_alloc();
  *(v15 + 144) = swift_task_alloc();
  v21 = sub_10001DC20();
  *(v15 + 152) = v21;
  *(v15 + 160) = *(v21 - 8);
  *(v15 + 168) = swift_task_alloc();
  *(v15 + 176) = swift_task_alloc();
  v22 = sub_10001E050();
  *(v15 + 184) = v22;
  *(v15 + 192) = *(v22 - 8);
  *(v15 + 200) = swift_task_alloc();
  *(v15 + 208) = swift_task_alloc();
  *(v15 + 216) = swift_task_alloc();
  v23 = swift_task_alloc();
  *(v15 + 224) = v23;
  *(v15 + 232) = sub_10001E0C0();
  v24 = swift_task_alloc();
  *(v15 + 240) = v24;
  *v24 = v15;
  v24[1] = sub_10001B670;
  v35 = a11;
  LOBYTE(a11) = 0;
  v25.n128_f64[0] = a2;
  v26.n128_f64[0] = a3;

  return (static SFAirDropUtilities.loadFile(from:dataTypesToTry:customDataType:acceptOtherFileRepresentations:ignoreStrings:generatePreviewImage:renameURLs:suggestedThumbnailSize:filename:sessionID:fileIndex:))(v23, a6, a7, a8, a9, 0, a10, v33, v25, v26, a11);
}

uint64_t sub_10001B670()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_10001BE1C;
  }

  else
  {
    v2 = sub_10001B784;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10001B784()
{
  v68 = v0;
  if (v0[8] >> 60 == 15)
  {
    v1 = sub_10001E010();
    if (v1)
    {
      v2 = v1;
      v63 = sub_10001E0B0();
      v64 = v3;
    }

    else
    {
      v63 = 0;
      v64 = 0xF000000000000000;
    }
  }

  else
  {
    v63 = v0[7];
    v64 = v0[8];
  }

  sub_10001CF60(v0[7], v0[8]);
  if (qword_100033450 != -1)
  {
    swift_once();
  }

  v4 = v0[27];
  v5 = v0[28];
  v7 = v0[25];
  v6 = v0[26];
  v8 = v0[23];
  v9 = v0[24];
  v10 = v0[3];
  v11 = sub_10001DDC0();
  sub_100018370(v11, qword_100033830);
  v12 = *(v9 + 16);
  v12(v4, v5, v8);
  v12(v6, v5, v8);
  v12(v7, v5, v8);
  v13 = v10;
  v14 = sub_10001DDA0();
  v15 = sub_10001E2C0();

  v16 = os_log_type_enabled(v14, v15);
  v18 = v0[26];
  v17 = v0[27];
  v19 = v0[24];
  v20 = v0[23];
  if (v16)
  {
    v21 = v0[22];
    v22 = v0[20];
    v60 = v0[19];
    v65 = v14;
    v23 = v0[18];
    v24 = v0[16];
    v54 = v0[15];
    v59 = v0[3];
    v61 = v0[25];
    v55 = v0[26];
    v25 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v67[0] = swift_slowAlloc();
    *v25 = 136315906;
    v56 = v15;
    sub_10001E020();
    sub_10001DF60();
    (*(v24 + 8))(v23, v54);
    sub_10001D13C();
    v26 = sub_10001E3E0();
    v28 = v27;
    (*(v22 + 8))(v21, v60);
    v29 = *(v19 + 8);
    v29(v17, v20);
    v30 = sub_100016BAC(v26, v28, v67);

    *(v25 + 4) = v30;
    *(v25 + 12) = 2080;
    v31 = sub_10001E030();
    v33 = v32;
    v29(v55, v20);
    v34 = sub_100016BAC(v31, v33, v67);

    *(v25 + 14) = v34;
    *(v25 + 22) = 1024;
    v35 = v61;
    LODWORD(v34) = sub_10001E040() & 1;
    v62 = v29;
    v29(v35, v20);
    *(v25 + 24) = v34;
    *(v25 + 28) = 2112;
    *(v25 + 30) = v59;
    *v58 = v59;
    v36 = v59;
    _os_log_impl(&_mh_execute_header, v65, v56, "Loaded item %s with data type %s (was string = %{BOOL}d) from item provider %@", v25, 0x26u);
    sub_100018760(v58, &qword_1000335D0, &qword_100022D18);

    swift_arrayDestroy();
  }

  else
  {
    v37 = *(v19 + 8);
    v37(v0[25], v20);

    v37(v18, v20);
    v62 = v37;
    v37(v17, v20);
  }

  v38 = v0[28];
  v39 = v0[22];
  v57 = v0[23];
  v40 = v0[20];
  v49 = v0[21];
  v41 = v0[19];
  v42 = v0[18];
  v43 = v0[16];
  v66 = v0[17];
  v44 = v0[15];
  v50 = v0[14];
  v51 = v0[12];
  v52 = v0[13];
  v53 = v0[11];
  sub_10001E020();
  sub_10001DF60();
  v45 = *(v43 + 8);
  v45(v42, v44);
  sub_10001DBF0();
  v46 = *(v40 + 8);
  v46(v39, v41);
  sub_10001E030();
  sub_10001E020();
  sub_10001DF60();
  v45(v66, v44);
  sub_10001DBE0();
  v46(v49, v41);

  sub_10001CF60(v63, v64);
  sub_10001E040();
  sub_10001DE70();
  sub_10001E020();
  (*(v51 + 16))(v52, v50, v53);
  sub_10001DEA0();
  sub_100018AB8(v63, v64);
  (*(v51 + 8))(v50, v53);
  v62(v38, v57);

  v47 = v0[1];

  return v47();
}

uint64_t sub_10001BE1C()
{
  v14 = v0;
  if (qword_100033450 != -1)
  {
    swift_once();
  }

  v1 = sub_10001DDC0();
  sub_100018370(v1, qword_100033830);

  swift_errorRetain();
  v2 = sub_10001DDA0();
  v3 = sub_10001E2A0();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[5];
    v5 = v0[6];
    v6 = v0[4];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13 = v9;
    *v7 = 134218498;
    *(v7 + 4) = v5;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_100016BAC(v6, v4, &v13);
    *(v7 + 22) = 2112;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 24) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to load item %ld for session %s: %@", v7, 0x20u);
    sub_100018760(v8, &qword_1000335D0, &qword_100022D18);

    sub_1000183A8(v9);
  }

  swift_willThrow();

  v11 = v0[1];

  return v11();
}

char *sub_10001C0F4(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
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
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_100016600(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void (*sub_10001C1E8(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_10001E360();
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
    return sub_10001C268;
  }

  __break(1u);
  return result;
}

void *sub_10001C270(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v95 = a5;
  v94 = a4;
  v108 = a3;
  v93 = sub_10001DE50();
  v96 = *(v93 - 8);
  __chkstk_darwin(v93);
  v8 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000DB68(&qword_1000334C0, &qword_100022F00);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v98 = &v85 - v13;
  v97 = sub_10001DE80();
  v14 = *(v97 - 8);
  v15 = __chkstk_darwin(v97);
  v92 = &v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v99 = &v85 - v17;
  v121 = sub_10001DD80();
  v18 = *(v121 - 8);
  __chkstk_darwin(v121);
  v117 = &v85 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10000DB68(&qword_1000339B0, &qword_100022F08);
  __chkstk_darwin(v20 - 8);
  v115 = &v85 - v21;
  v107 = sub_10001E0C0();
  v110 = sub_10001E070();
  if (!(a2 >> 62))
  {
    v109 = a2 & 0xFFFFFFFFFFFFFF8;
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v22)
    {
      goto LABEL_3;
    }

    return &_swiftEmptyArrayStorage;
  }

LABEL_55:
  v109 = a2 & 0xFFFFFFFFFFFFFF8;
  v22 = sub_10001E3B0();
  if (!v22)
  {
    return &_swiftEmptyArrayStorage;
  }

LABEL_3:
  v23 = 0;
  v106 = a2 & 0xC000000000000001;
  v102 = (v18 + 48);
  v116 = (v18 + 8);
  v90 = v110 & 1;
  v89 = (v14 + 16);
  v88 = (v14 + 8);
  v87 = v96 + 32;
  v100 = &_swiftEmptyArrayStorage;
  v101 = xmmword_100022E80;
  v104 = a2;
  v105 = a1;
  v18 = v121;
  v86 = v8;
  v91 = v12;
  v103 = v22;
  do
  {
    v12 = v23;
    v8 = v115;
    while (1)
    {
      if (v106)
      {
        v24 = sub_10001E360();
      }

      else
      {
        if (v12 >= *(v109 + 16))
        {
          goto LABEL_54;
        }

        v24 = *(a2 + 8 * v12 + 32);
      }

      v25 = v24;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

      v120 = v12 + 1;
      v26 = [a1 attachmentNameForItem:v24];
      if (v26)
      {
        v27 = v26;
        v28 = sub_10001E130();
        v30 = v29;
      }

      else
      {
        v28 = 0;
        v30 = 0xE000000000000000;
      }

      v31 = [a1 subjectForItem:v25];
      if (v31)
      {
        v32 = v31;
        v114 = sub_10001E130();
        v122 = v33;
      }

      else
      {
        v114 = 0;
        v122 = 0;
      }

      v34 = [a1 dataTypeForItem:v25];
      if (v34)
      {
        v35 = v34;
        v36 = sub_10001E130();
        v38 = v37;

        sub_10000DB68(&qword_100033660, &unk_100022F20);
        inited = swift_initStackObject();
        *(inited + 16) = v101;
        v112 = v36;
        *(inited + 32) = v36;
        *(inited + 40) = v38;
        v125 = v108;
        v118 = v38;

        sub_10001C0F4(inited);
        v40 = v125;
      }

      else
      {
        v40 = v108;

        v112 = 0;
        v118 = 0;
      }

      v41 = [a1 previewImageForItem:v25];
      v119 = v30;
      v113 = v28;
      if (v41)
      {
        v42 = v41;
        v123 = sub_10001E0B0();
        v44 = v43;

        v124 = v44;
        if (v12)
        {
          v45 = 0;
        }

        else
        {
          v45 = v44 >> 60 == 15;
        }

        v46 = v45;
        v111 = v46;
      }

      else
      {
        v47 = [a1 previewImageDataForItem:v25];
        if (v47)
        {
          v48 = v47;
          v123 = sub_10001DC30();
          v124 = v49;

          v111 = 0;
        }

        else
        {
          v123 = 0;
          v111 = v12 == 0;
          v124 = 0xF000000000000000;
        }
      }

      sub_10001E000();
      v51 = v50;
      v53 = v52;
      sub_10001E080();
      if (!v54)
      {
        sub_10001E060();
      }

      sub_10001DD90();
      if ((*v102)(v8, 1, v18) == 1)
      {
        sub_100018760(v8, &qword_1000339B0, &qword_100022F08);
        v14 = 0;
      }

      else
      {
        v55 = v117;
        sub_10001DD60();
        v14 = sub_10001DD50();
        v56 = *v116;
        v57 = v55;
        v8 = v115;
        (*v116)(v57, v18);
        v56(v8, v18);
      }

      v58 = sub_10001E120();
      v59 = [objc_opt_self() _typeWithIdentifier:v58 allowUndeclared:1];

      if (!v59)
      {
        break;
      }

      v60 = v117;
      sub_10001DD70();
      isa = sub_10001DD40().super.isa;
      (*v116)(v60, v121);
      LODWORD(v60) = [v59 conformsToType:isa];

      if ((v110 & v60 & 1) == 0)
      {
        break;
      }

      sub_100018AB8(v123, v124);

      ++v12;
      v18 = v121;
      a2 = v104;
      a1 = v105;
      if (v120 == v103)
      {
        return v100;
      }
    }

    v62 = v119;

    sub_10001CF60(v123, v124);
    v63 = v123;
    v64 = v113;
    sub_10001DE70();
    v65 = sub_10001E230();
    v14 = *(v65 - 8);
    v66 = v98;
    (*(v14 + 56))(v98, 1, 1, v65);
    v67 = swift_allocObject();
    *(v67 + 16) = 0;
    *(v67 + 24) = 0;
    *(v67 + 32) = v25;
    *(v67 + 40) = v40;
    v68 = v118;
    *(v67 + 48) = v112;
    *(v67 + 56) = v68;
    *(v67 + 64) = v90;
    *(v67 + 65) = v111;
    *(v67 + 72) = v51;
    *(v67 + 80) = v53;
    *(v67 + 88) = v64;
    *(v67 + 96) = v62;
    v69 = v95;
    *(v67 + 104) = v94;
    *(v67 + 112) = v69;
    *(v67 + 120) = v12;
    *(v67 + 128) = v63;
    v70 = v124;
    v71 = v114;
    *(v67 + 136) = v124;
    *(v67 + 144) = v71;
    *(v67 + 152) = v122;
    v72 = v91;
    sub_1000184B8(v66, v91);
    LODWORD(v66) = (*(v14 + 48))(v72, 1, v65);
    sub_10001CF60(v63, v70);
    v73 = v25;

    v122 = v73;
    if (v66 == 1)
    {
      sub_100018760(v72, &qword_1000334C0, &qword_100022F00);
    }

    else
    {
      sub_10001E220();
      v74 = *(v14 + 8);
      v14 += 8;
      v74(v72, v65);
    }

    v75 = v86;
    v76 = v103;
    v77 = *(v67 + 16);
    swift_unknownObjectRetain();

    v18 = v121;
    if (v77)
    {
      swift_getObjectType();
      v78 = sub_10001E1E0();
      v80 = v79;
      swift_unknownObjectRelease();
    }

    else
    {
      v78 = 0;
      v80 = 0;
    }

    a1 = v105;
    sub_100018760(v98, &qword_1000334C0, &qword_100022F00);
    sub_10001DED0();
    if (v80 | v78)
    {
      v126 = 0;
      v127 = 0;
      v128 = v78;
      v129 = v80;
    }

    swift_task_create();
    (*v89)(v92, v99, v97);

    sub_10001DE40();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v100 = sub_1000165D8(0, v100[2] + 1, 1, v100);
    }

    a2 = v104;
    v82 = v100[2];
    v81 = v100[3];
    if (v82 >= v81 >> 1)
    {
      v100 = sub_1000165D8((v81 > 1), v82 + 1, 1, v100);
    }

    sub_100018AB8(v123, v124);
    (*v88)(v99, v97);
    v83 = v100;
    v100[2] = v82 + 1;
    (*(v96 + 32))(v83 + ((*(v96 + 80) + 32) & ~*(v96 + 80)) + *(v96 + 72) * v82, v75, v93);
    v23 = v120;
  }

  while (v120 != v76);
  return v100;
}

uint64_t sub_10001CF60(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100018A64(result, a2);
  }

  return result;
}

uint64_t sub_10001CF74()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 136);
  if (v1 >> 60 != 15)
  {
    sub_100018ACC(*(v0 + 128), v1);
  }

  return _swift_deallocObject(v0, 160, 7);
}

uint64_t sub_10001CFF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13)
{
  v16 = *(v13 + 24);
  v26 = *(v13 + 16);
  v17 = *(v13 + 32);
  v18 = *(v13 + 40);
  v19 = *(v13 + 48);
  v20 = *(v13 + 56);
  v21 = *(v13 + 64);
  v22 = *(v13 + 72);
  v23 = *(v13 + 80);
  v24 = swift_task_alloc();
  *(v14 + 16) = v24;
  *v24 = v14;
  v24[1] = sub_10000EC9C;

  return sub_10001B368(a1, v22, v23, v26, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12, a13);
}

unint64_t sub_10001D13C()
{
  result = qword_1000339B8;
  if (!qword_1000339B8)
  {
    sub_10001DC20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000339B8);
  }

  return result;
}

uint64_t sub_10001D194()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10001D1DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000EC9C;

  return sub_10001ACE8(a1, v4, v5, v7, v6);
}

uint64_t sub_10001D29C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001D2D4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100018D60;

  return sub_100016388(a1, v4);
}

uint64_t sub_10001D3A4()
{
  v0 = sub_10001DDC0();
  sub_100018454(v0, qword_1000339C8);
  sub_100018370(v0, qword_1000339C8);
  return sub_10001DDB0();
}

uint64_t sub_10001D450(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = sub_10001DE00();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_10001DDF0())
  {
    if (a2())
    {
      v8 = sub_10001E160();
      v10 = v9;
      swift_unknownObjectRelease();
      v11 = HIBYTE(v10) & 0xF;
      if ((v10 & 0x2000000000000000) == 0)
      {
        v11 = v8 & 0xFFFFFFFFFFFFLL;
      }

      if (v11)
      {
        return v8;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    if (qword_100033458 != -1)
    {
      swift_once();
    }

    v13 = sub_10001DDC0();
    sub_100018370(v13, qword_1000339C8);
    (*(v5 + 16))(v7, a1, v4);
    v14 = sub_10001DDA0();
    v15 = sub_10001E2B0();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v23 = v17;
      *v16 = 136315138;
      v18 = sub_10001DDE0();
      v20 = v19;
      (*(v5 + 8))(v7, v4);
      v21 = sub_100016BAC(v18, v20, &v23);

      *(v16 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v14, v15, "Could not convert endpoint to nw_endpoint %s", v16, 0xCu);
      sub_1000183A8(v17);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
    }
  }

  return 0;
}

uint64_t sub_10001D6F4()
{
  v0 = sub_10001DDC0();
  sub_100018454(v0, qword_100033B28);
  sub_100018370(v0, qword_100033B28);
  return sub_10001DDB0();
}

void sub_10001D794(char a1, NSObject *a2)
{
  v2 = "yes";
  if ((a1 & 1) == 0)
  {
    v2 = "no";
  }

  v3 = 136315394;
  v4 = "no";
  v5 = 2080;
  v6 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Should show magic head: isR1Device: %s, defaultEnabled: %s", &v3, 0x16u);
}

void sub_10001D998()
{
  sub_10000B0B4();
  sub_10000B0C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10001DA08()
{
  sub_10000B0B4();
  sub_10000B0C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10001DA78()
{
  sub_10000B0B4();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Failed to convert NSAttributedString [%@] to HTML due to: %@", v2, 0x16u);
}

void sub_10001DAFC(void *a1, NSObject *a2)
{
  v3 = [a1 localizedDescription];
  sub_10000B0B4();
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to load item for type identifier with error %@", v4, 0xCu);
}