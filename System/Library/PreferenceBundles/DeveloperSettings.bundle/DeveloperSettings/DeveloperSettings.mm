void sub_2D74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2DA0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = objc_alloc_init(PSConfirmationSpecifier);
  v2 = +[NSMutableDictionary dictionary];
  v3 = sub_19C60(@"CONFIRMATION_PROMPT");
  [v2 setObject:v3 forKey:PSConfirmationPromptKey];

  v4 = sub_19C60(@"CONFIRMATION_CANCEL");
  [v2 setObject:v4 forKey:PSConfirmationCancelKey];

  v5 = +[DBSDisplayZoomConfigurationController defaultController];
  v6 = [v5 currentDisplayZoomMode];
  [v6 displayZoomOption];

  v7 = [WeakRetained specifierForID:@"DISPLAY_ZOOM"];
  v8 = [v7 objectForKeyedSubscript:PSRadioGroupCheckedSpecifierKey];

  v9 = [v8 objectForKeyedSubscript:@"displayZoomMode"];
  v10 = [v9 displayZoomOption];
  if (v10 <= 3)
  {
    v11 = off_3D010[v10];
    v12 = sub_19C60(v11);
    [v2 setObject:v12 forKey:PSConfirmationOKKey];

    v13 = sub_19C60(v11);
    [v2 setObject:v13 forKey:PSConfirmationTitleKey];
  }

  [v1 setupWithDictionary:v2];
  [v1 setTarget:WeakRetained];
  [v1 setConfirmationAction:"_userDidConfirmDisplayZoomModeWithSpecifier:"];
  v14 = +[UIDevice currentDevice];
  [WeakRetained showConfirmationViewForSpecifier:v1 useAlert:{objc_msgSend(v14, "sf_isiPad")}];
}

void sub_2FC4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained navigationController];
  [v1 dismissViewControllerAnimated:1 completion:0];
}

id sub_3448(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [v5 localizedName];
  v8 = [PSSpecifier preferenceSpecifierNamed:v7 target:*(a1 + 32) set:0 get:0 detail:0 cell:3 edit:0];

  [v8 setIdentifier:v6];
  [v8 setButtonAction:"_userDidSelectSpecifier:"];
  [v8 setObject:v5 forKeyedSubscript:@"displayZoomMode"];

  return v8;
}

void sub_3C44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  objc_destroyWeak((v28 + 32));
  objc_destroyWeak((v29 + 32));
  objc_destroyWeak(&a23);
  objc_destroyWeak(&a28);
  objc_destroyWeak((v30 - 128));
  _Unwind_Resume(a1);
}

void sub_3CB4(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_3D50;
  v2[3] = &unk_3D038;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = WeakRetained;
  [v1 updateHangEventsWithCompletion:v2];
  [v1 updateProcessingHangEventsWithCompletion:0];
}

void sub_3D50(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v5 = HTUIFetchingHangsErrorTitle();
    v3 = HTUIFetchingHangsErrorMessage();
    [v2 presentErrorWithTitle:v5 message:v3];
  }

  else
  {
    v4 = *(a1 + 32);

    [v4 handlePendingURL];
  }
}

void sub_3DE0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateProcessingHangEventsWithCompletion:0];
}

void sub_3E24(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 sender];

  [WeakRetained shareSelectedHangs:v4];
}

void sub_3E98(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setEditing:1 animated:1];
}

void sub_4218(uint64_t a1)
{
  v5 = [*(a1 + 32) specifierForID:*(a1 + 40)];
  v2 = [v5 objectForKeyedSubscript:PSHeaderViewKey];
  v3 = v2;
  if (*(a1 + 48) == 1)
  {
    [v2 startAnimating];
  }

  else
  {
    [v2 stopAnimating];
  }

  if ([*(a1 + 40) isEqualToString:@"HANGTRACER_EXTERNAL_DEVELOPER_APPS"])
  {
    if (*(a1 + 48) == 1)
    {
      [v5 setObject:&stru_3E0D8 forKeyedSubscript:PSFooterTextGroupKey];
    }

    else
    {
      v4 = HTUIAppsSectionFooter();
      [v5 setObject:v4 forKeyedSubscript:PSFooterTextGroupKey];
    }

    [*(a1 + 32) reloadSpecifier:v5];
  }
}

void sub_4450(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_4474(uint64_t a1, void *a2, void *a3)
{
  v11 = a3;
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = &__NSDictionary0__struct;
  }

  v9 = [WeakRetained processingHangsEvents];
  [v7 updateSpecifiersWithHangEvents:v8 processingHangEvents:v9];

  v10 = *(a1 + 32);
  if (v10)
  {
    (*(v10 + 16))(v10, v11);
  }
}

void sub_4664(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_4688(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    [*(a1 + 32) markGroup:@"HANGTRACER_EXTERNAL_DEVELOPER_APPS" asLoading:0];
    [WeakRetained goToNextAppsState];
    if (v5)
    {
      v8 = +[NSMutableSet set];
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v9 = [WeakRetained developerApps];
      v10 = [v9 countByEnumeratingWithState:&v34 objects:v40 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v35;
        do
        {
          v13 = 0;
          do
          {
            if (*v35 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = [*(*(&v34 + 1) + 8 * v13) bundleID];
            [v8 addObject:v14];

            v13 = v13 + 1;
          }

          while (v11 != v13);
          v11 = [v9 countByEnumeratingWithState:&v34 objects:v40 count:16];
        }

        while (v11);
      }

      v29 = v6;

      v15 = +[NSMutableSet set];
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v16 = v5;
      v17 = [v16 countByEnumeratingWithState:&v30 objects:v39 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v31;
        do
        {
          v20 = 0;
          do
          {
            if (*v31 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = [*(*(&v30 + 1) + 8 * v20) bundleID];
            [v15 addObject:v21];

            v20 = v20 + 1;
          }

          while (v18 != v20);
          v18 = [v16 countByEnumeratingWithState:&v30 objects:v39 count:16];
        }

        while (v18);
      }

      v22 = [v8 isEqualToSet:v15];
      NSLog(@"Apps list have changed, we need to reload");
      [WeakRetained setDeveloperApps:v16];
      if ([v16 count])
      {
        v23 = [WeakRetained developerAppsSpecifiersFromList:v16];
      }

      else
      {
        v24 = HTUIPlaceholderNoApps();
        v25 = [PSSpecifier preferenceSpecifierNamed:v24 target:0 set:0 get:0 detail:0 cell:-1 edit:0];

        [v25 setIdentifier:@"HANGTRACER_EXTERNAL_NO_DEVELOPER_APPS"];
        v38 = v25;
        v23 = [NSArray arrayWithObjects:&v38 count:1];
      }

      v6 = v29;
      v26 = [WeakRetained cachedDeveloperAppsSpecifiers];
      [WeakRetained removeContiguousSpecifiers:v26 animated:v22 ^ 1];

      [WeakRetained setCachedDeveloperAppsSpecifiers:v23];
      v27 = [WeakRetained cachedDeveloperAppsSpecifiers];
      [WeakRetained insertContiguousSpecifiers:v27 afterSpecifierID:@"HANGTRACER_EXTERNAL_DEVELOPER_APPS" animated:v22 ^ 1];
    }
  }

  v28 = *(a1 + 40);
  if (v28)
  {
    (*(v28 + 16))(v28, v6);
  }
}

void sub_4B28(uint64_t a1, void *a2, void *a3)
{
  v10 = a3;
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = [WeakRetained hangsEvents];
  if (v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = &__NSDictionary0__struct;
  }

  [WeakRetained updateSpecifiersWithHangEvents:v7 processingHangEvents:v8];

  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, v10);
  }
}

BOOL sub_5214(id a1, PSSpecifier *a2, PSSpecifier *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [(PSSpecifier *)v4 identifier];
  v7 = [(PSSpecifier *)v5 identifier];
  v8 = [v6 isEqual:v7];

  if (v8 && (-[PSSpecifier objectForKeyedSubscript:](v4, "objectForKeyedSubscript:", @"HangsDataControllerIsProcessing"), v9 = objc_claimAutoreleasedReturnValue(), -[PSSpecifier objectForKeyedSubscript:](v5, "objectForKeyedSubscript:", @"HangsDataControllerIsProcessing"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v9 isEqual:v10], v10, v9, v11))
  {
    v12 = [(PSSpecifier *)v4 objectForKeyedSubscript:@"HangsDataControllerDuration"];
    v13 = [(PSSpecifier *)v5 objectForKeyedSubscript:@"HangsDataControllerDuration"];
    v14 = [v12 isEqual:v13];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void sub_5514(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v20 + 40));
  _Unwind_Resume(a1);
}

void sub_5548(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(*(a1 + 32) + 8) + 40));
  [WeakRetained dismissViewControllerAnimated:1 completion:0];
}

void sub_57EC(_Unwind_Exception *a1)
{
  _Block_object_dispose((v2 - 112), 8);
  objc_destroyWeak((v1 + 40));
  _Unwind_Resume(a1);
}

void sub_580C(uint64_t a1, uint64_t a2)
{
  dispatch_group_leave(*(a1 + 32));
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((*(*(a1 + 40) + 8) + 40));
    v4 = HTUIFetchingAppsErrorTitle();
    v5 = HTUIFetchingAppsErrorMessage();
    [WeakRetained presentErrorWithTitle:v4 message:v5];
  }
}

void sub_58AC(uint64_t a1, uint64_t a2)
{
  dispatch_group_leave(*(a1 + 32));
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((*(*(a1 + 40) + 8) + 40));
    v4 = HTUIFetchingHangsErrorTitle();
    v5 = HTUIFetchingHangsErrorMessage();
    [WeakRetained presentErrorWithTitle:v4 message:v5];
  }
}

uint64_t sub_5954(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_5B18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_5B44(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setEditing:0 animated:1];
}

void sub_6628(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_6654(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = HTUIShareButton();
  v5 = [UIImage systemImageNamed:@"square.and.arrow.up"];
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_6804;
  v13 = &unk_3D220;
  objc_copyWeak(&v15, (a1 + 40));
  v14 = *(a1 + 32);
  v6 = [UIAction actionWithTitle:v4 image:v5 identifier:0 handler:&v10];
  v16 = v6;
  v7 = [NSArray arrayWithObjects:&v16 count:1, v10, v11, v12, v13];
  v8 = [UIMenu menuWithChildren:v7];

  objc_destroyWeak(&v15);

  return v8;
}

void sub_6804(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained shareLogs:*(a1 + 32) sender:v3];
}

void sub_693C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(*(a1 + 32) + 8) + 40));
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_69D0;
  v3[3] = &unk_3D270;
  v3[4] = *(a1 + 32);
  [WeakRetained updateDeveloperAppsWithCompletion:v3];
}

void sub_69D0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((*(*(a1 + 32) + 8) + 40));
    v2 = HTUIFetchingAppsErrorTitle();
    v3 = HTUIFetchingAppsErrorMessage();
    [WeakRetained presentErrorWithTitle:v2 message:v3];
  }
}

void sub_7A24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v16 + 40));
  _Unwind_Resume(a1);
}

void sub_7A44(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(*(a1 + 32) + 8) + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [WeakRetained developerApps];
    v4 = [v3 count];

    [HTHangsAnalytics sendActivationEvent:*(a1 + 40) developerAppCount:v4];
    WeakRetained = v5;
  }
}

void sub_7C2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v13 + 40));
  _Unwind_Resume(a1);
}

uint64_t sub_7C4C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(*(a1 + 40) + 8) + 40));
  [WeakRetained handlePendingURL];

  result = *(a1 + 32);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void sub_8570(uint64_t a1)
{
  v1 = [*(a1 + 32) presentingViewController];
  [v1 dismissViewControllerAnimated:1 completion:0];
}

void sub_8E1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id location)
{
  objc_destroyWeak((v29 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_8E48(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = [v7 traitCollection];
    v5 = [v4 preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v5);

    [WeakRetained[4] setActive:(*(a1 + 40) & 1) == 0];
    [WeakRetained[5] setActive:(*(a1 + 40) & 1) == 0];
    [WeakRetained[6] setActive:(*(a1 + 40) & 1) == 0];
    [WeakRetained[3] setAxis:IsAccessibilityCategory];
    [WeakRetained setNeedsLayout];
    [WeakRetained layoutIfNeeded];
  }
}

void sub_AF5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v13 + 40));
  _Unwind_Resume(a1);
}

void sub_AF94(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (!a3)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_B044;
    v7[3] = &unk_3D3A8;
    v9 = *(a1 + 32);
    v8 = v5;
    dispatch_async(&_dispatch_main_q, v7);
  }
}

void sub_B044(uint64_t a1)
{
  v4 = [*(a1 + 32) UIImage];
  WeakRetained = objc_loadWeakRetained((*(*(a1 + 40) + 8) + 40));
  v3 = [WeakRetained iconView];
  [v3 setImage:v4];
}

void sub_C0B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_C0D4(id *a1, void *a2)
{
  v3 = a2;
  v4 = HTUIShareButton();
  v5 = [UIImage systemImageNamed:@"square.and.arrow.up"];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_C298;
  v10[3] = &unk_3D418;
  objc_copyWeak(&v13, a1 + 6);
  v11 = a1[4];
  v12 = a1[5];
  v6 = [UIAction actionWithTitle:v4 image:v5 identifier:0 handler:v10];
  v14 = v6;
  v7 = [NSArray arrayWithObjects:&v14 count:1];
  v8 = [UIMenu menuWithChildren:v7];

  objc_destroyWeak(&v13);

  return v8;
}

void sub_C298(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained shareEntry:*(a1 + 32) forRowAtIndexPath:*(a1 + 40)];
}

void sub_CAAC(id a1)
{
  v1 = objc_alloc_init(MetalHUDPreferences);
  v2 = qword_49E30;
  qword_49E30 = v1;

  v3 = qword_49E30;

  [v3 readPreferences];
}

void sub_CD80(id a1)
{
  v1 = qword_49E40;
  qword_49E40 = &off_41540;
}

void sub_D0C4(id a1)
{
  v1 = qword_49E50;
  qword_49E50 = &off_41558;
}

uint64_t sub_F0EC(uint64_t a1, unsigned __int8 a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, (*(a1 + 40) | a2) & 1);
  }

  return result;
}

void sub_F674(uint64_t a1)
{
  v2 = [*(a1 + 32) symptomsFeed];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_F720;
  v4[3] = &unk_3D538;
  v3 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 getPreferCellOverWiFiWithOptions:v3 reply:v4];
}

void sub_F720(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  NSLog(@"NCO Prefer5G (get) returned %@ err: %@", v7, a3);
  v5 = &__kCFBooleanFalse;
  if (v7 && !a3)
  {
    v5 = [v7 objectForKey:kSymptomForcePreferCellOverWiFiEnableKey];
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, [v5 BOOLValue]);
  }
}

void sub_F960(uint64_t a1)
{
  v2 = [*(a1 + 32) symptomsFeed];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_FA0C;
  v4[3] = &unk_3D538;
  v3 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 setPreferCellOverWiFiWithOptions:v3 reply:v4];
}

uint64_t sub_FA0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  NSLog(@"NCO Prefer5G (set) returned %@ err: %@", a2, a3);
  result = *(a1 + 32);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

void sub_FBE4(uint64_t a1)
{
  for (i = *(a1 + 40); !SCPreferencesLock(i, 1u); i = *(a1 + 40))
  {
    v3 = SCError();
    if (v3 != 3005)
    {
      v6 = SCErrorString(v3);
      NSLog(@"NCO WiFi: Could not acquire prefs lock: %s", v6);
      v7 = *(a1 + 32);
      if (v7)
      {
        (*(v7 + 16))(v7, 0);
      }

      v8 = *(a1 + 40);

      CFRelease(v8);
      return;
    }

    SCPreferencesSynchronize(*(a1 + 40));
  }

  if (SCNetworkInterfaceTypeSetTemporaryOverrideCost())
  {
    NSLog(@"NCO WiFi: Persisted override %d", *(a1 + 48));
    SCPreferencesCommitChanges(*(a1 + 40));
    SCPreferencesApplyChanges(*(a1 + 40));
  }

  else
  {
    NSLog(@"NCO WiFi: Error persisting override %d", *(a1 + 48));
  }

  SCPreferencesUnlock(*(a1 + 40));
  CFRelease(*(a1 + 40));
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 16);

    v5();
  }
}

void sub_10530(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setCachedPrefer5GValue:a2];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_105C0;
  block[3] = &unk_3D5B0;
  block[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

id sub_10C94(uint64_t a1)
{
  v2 = [*(a1 + 32) ncoData];
  [v2 setCellularInexpensive:0];

  v3 = [*(a1 + 32) ncoData];
  [v3 setCellularInexpensive:1];

  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) BOOLValue];
  v6 = *(a1 + 48);

  return [v4 enablePrefer5G:v5 specifier:v6];
}

id sub_10D1C(uint64_t a1)
{
  v2 = [*(a1 + 32) ncoData];
  [v2 setCellularInexpensive:1];

  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) BOOLValue];
  v5 = *(a1 + 48);

  return [v3 enablePrefer5G:v4 specifier:v5];
}

void sub_10E98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v13 + 40));
  _Unwind_Resume(a1);
}

void sub_10ECC(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10F5C;
  block[3] = &unk_3D3A8;
  v2 = *(a1 + 32);
  v1 = v2;
  v4 = v2;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_10F5C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(*(a1 + 40) + 8) + 40));
  [WeakRetained reloadPrefer5GSpecifier:*(a1 + 32)];
}

uint64_t sub_112C0(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_112D8(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_119C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_119EC(uint64_t a1, int a2)
{
  if (a2)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_11A84;
    block[3] = &unk_3D060;
    objc_copyWeak(&v3, (a1 + 32));
    dispatch_async(&_dispatch_main_q, block);
    objc_destroyWeak(&v3);
  }
}

void sub_11A84(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifiers];
}

id sub_1377C(uint64_t a1, void *a2)
{
  if (dword_49FB0)
  {
    v3 = [a2 title];
    NSLog(@"Delete profile clicked %@", v3);
  }

  v4 = *(a1 + 32);

  return [v4 deleteNLCProfile:0];
}

void sub_1783C(void *a1, void *a2)
{
  v11 = a1;
  v3 = a2;
  v4 = v3;
  if (dword_49FB0)
  {
    NSLog(@"%@", v3);
  }

  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"DEVELOPER_SETTINGS_ERROR" value:&stru_3E0D8 table:@"NLCSettings"];
  v7 = [UIAlertController alertControllerWithTitle:v6 message:v4 preferredStyle:1];

  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"ERROR_OK" value:&stru_3E0D8 table:@"NLCSettings"];
  v10 = [UIAlertAction actionWithTitle:v9 style:0 handler:0];
  [v7 addAction:v10];

  [v11 presentViewController:v7 animated:1 completion:0];
}

void sub_19140(id a1)
{
  qword_49E78 = objc_alloc_init(DTProcessorTraceConfigurationState);

  _objc_release_x1();
}

void sub_19414(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = DTProcessorTraceConfigurationState;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_19868(uint64_t a1)
{
  v2 = [*(a1 + 32) state];
  [v2 setBufferEnabled:*(a1 + 40)];
}

void sub_19B74(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    (*(v1 + 16))();
  }

  v3 = [[FBSShutdownOptions alloc] initWithReason:@"com.apple.processor.trace.enablement"];
  [v3 setRebootType:1];
  [v3 setSource:1];
  v2 = +[FBSSystemService sharedService];
  [v2 shutdownWithOptions:v3];
}

uint64_t sub_19C10(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

id sub_19C60(void *a1)
{
  v1 = a1;
  v2 = sub_19CD0(v1);
  v3 = [v2 localizedStringForKey:v1 value:0 table:@"DTDisplayZoom"];

  return v3;
}

id sub_19CD0(uint64_t a1)
{
  if (qword_49E90 != -1)
  {
    sub_26BAC();
  }

  v2 = qword_49E88;

  return v2;
}

id sub_19D14(void *a1)
{
  v1 = a1;
  v2 = sub_19CD0(v1);
  v3 = [v2 localizedStringForKey:v1 value:0 table:@"ResetMediaServices"];

  return v3;
}

void sub_19D84(id a1)
{
  qword_49E88 = [NSBundle bundleForClass:objc_opt_class()];

  _objc_release_x1();
}

id sub_19E14()
{
  v0 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 8uLL, 0);
  v1 = [v0 firstObject];

  v2 = [v1 stringByAppendingPathComponent:@"PreferenceBundles"];
  v3 = [v2 stringByAppendingPathComponent:@"AppClipDeveloperSettings.bundle"];
  v4 = [NSBundle bundleWithPath:v3];

  return v4;
}

id sub_19F4C()
{
  v0 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 8uLL, 0);
  v1 = [v0 firstObject];

  v2 = [v1 stringByAppendingPathComponent:@"PreferenceBundles"];
  v3 = [v2 stringByAppendingPathComponent:@"DeviceManagementClientDeveloperSettings.bundle"];
  v4 = [NSBundle bundleWithPath:v3];

  return v4;
}

void sub_1AFC0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 downlinkResponsiveness];
  v8 = [v7 value];

  if (v8)
  {
    v9 = [v5 downlinkResponsiveness];
    v10 = [v9 value];
    v11 = *(a1 + 32);
    v12 = *(v11 + 144);
    *(v11 + 144) = v10;

    v13 = [v5 downlinkResponsiveness];
    v14 = [v13 rating];
    *(*(a1 + 32) + 160) = [v14 intValue];

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v5 downlinkResponsiveness];
      v16 = [v15 value];
      v34 = 136315394;
      v35 = "[DTNetQualSettingsCell runNetworkQualityWithCompletionHandler:]_block_invoke";
      v36 = 2048;
      v37 = [v16 unsignedLongValue];
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "NetQuality: %s: Got responsiveness %lu", &v34, 0x16u);
    }
  }

  else
  {
    v17 = *(a1 + 32);
    v18 = *(v17 + 144);
    *(v17 + 144) = 0;

    *(*(a1 + 32) + 160) = 0;
  }

  v19 = [v5 uplinkResponsiveness];
  v20 = [v19 value];

  if (v20)
  {
    v21 = [v5 uplinkResponsiveness];
    v22 = [v21 value];
    v23 = *(a1 + 32);
    v24 = *(v23 + 152);
    *(v23 + 152) = v22;

    v25 = [v5 uplinkResponsiveness];
    v26 = [v25 rating];
    *(*(a1 + 32) + 168) = [v26 intValue];

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v27 = [v5 uplinkResponsiveness];
      v28 = [v27 value];
      v29 = [v28 unsignedLongValue];
      v34 = 136315394;
      v35 = "[DTNetQualSettingsCell runNetworkQualityWithCompletionHandler:]_block_invoke";
      v36 = 2048;
      v37 = v29;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "NetQuality: %s: Got uplink responsiveness %lu", &v34, 0x16u);
    }
  }

  else
  {
    v30 = *(a1 + 32);
    v31 = *(v30 + 152);
    *(v30 + 152) = 0;

    *(*(a1 + 32) + 168) = 0;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v34 = 136315394;
    v35 = "[DTNetQualSettingsCell runNetworkQualityWithCompletionHandler:]_block_invoke";
    v36 = 2112;
    v37 = v6;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "NetQuality: %s: Completed! Error: %@", &v34, 0x16u);
  }

  v32 = *(a1 + 32);
  v33 = *(v32 + 176);
  *(v32 + 176) = 0;

  (*(*(a1 + 40) + 16))(*(a1 + 40), v6 == 0);
}

void sub_1B66C(id a1, UIAlertAction *a2)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v2 = 136315138;
    v3 = "[DTNetQualSettingsCell _runNetworkQuality]_block_invoke";
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "NetQuality: %s: User canceled test-run", &v2, 0xCu);
  }
}

id sub_1B708(uint64_t a1)
{
  *(*(a1 + 32) + 136) = 1;
  [*(a1 + 32) _fillNetworkQualityCell];
  v2 = *(a1 + 32);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1B7A0;
  v4[3] = &unk_3D5D8;
  v4[4] = v2;
  return [v2 runNetworkQualityWithCompletionHandler:v4];
}

void sub_1B7A0(uint64_t a1, char a2)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1B81C;
  v2[3] = &unk_3D6C8;
  v3 = a2;
  v2[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, v2);
}

id sub_1B81C(uint64_t a1)
{
  if (*(a1 + 40) != 1 && *(*(a1 + 32) + 136) == 1)
  {
    v2 = [NSBundle bundleForClass:objc_opt_class()];
    v3 = [v2 localizedStringForKey:@"FAILURE_TITLE" value:&stru_3E0D8 table:@"DTNetQualSettings"];

    v4 = [NSBundle bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:@"FAILURE_TEXT" value:&stru_3E0D8 table:@"DTNetQualSettings"];

    v6 = [NSBundle bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"FAILURE_OK" value:&stru_3E0D8 table:@"DTNetQualSettings"];

    v8 = [UIAlertController alertControllerWithTitle:v3 message:v5 preferredStyle:1];
    v9 = [UIAlertAction actionWithTitle:v7 style:0 handler:0];
    [v8 addAction:v9];
    v10 = [*(*(a1 + 32) + 128) target];
    [v10 presentViewController:v8 animated:1 completion:0];
  }

  *(*(a1 + 32) + 136) = 0;
  v11 = *(a1 + 32);

  return [v11 _fillNetworkQualityCell];
}

BOOL sub_1CC9C(id a1, PSSpecifier *a2, unint64_t a3, BOOL *a4)
{
  v4 = [(PSSpecifier *)a2 identifier:a3];
  v5 = [v4 isEqualToString:@"PERFORMANCE_TRACE"];

  return v5;
}

void sub_1D0CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v13 + 40));
  _Unwind_Resume(a1);
}

void sub_1D100(uint64_t a1, char a2)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1D17C;
  v2[3] = &unk_3D2C0;
  v2[4] = *(a1 + 32);
  v3 = a2;
  dispatch_async(&_dispatch_main_q, v2);
}

void sub_1D17C(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = v3;
  if (v2)
  {
    v5 = @"ON";
  }

  else
  {
    v5 = @"OFF";
  }

  v6 = [v3 localizedStringForKey:v5 value:&stru_3E0D8 table:@"DTSettings"];
  WeakRetained = objc_loadWeakRetained((*(*(a1 + 32) + 8) + 40));
  [WeakRetained setCachedNCOStatus:v6];

  v8 = objc_loadWeakRetained((*(*(a1 + 32) + 8) + 40));
  [v8 reloadSpecifierID:@"NCO"];
}

void sub_1D420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v13 + 40));
  _Unwind_Resume(a1);
}

void sub_1D448(uint64_t a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[AdAttributionKit] Developer mode set", buf, 2u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1D50C;
  block[3] = &unk_3D298;
  block[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_1D50C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(*(a1 + 32) + 8) + 40));
  [WeakRetained refreshAdAttributionKitDeveloperModeEnabled];
}

void sub_1D648(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v13 + 40));
  _Unwind_Resume(a1);
}

void sub_1D668(uint64_t a1, int a2)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v7 = a2;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[AdAttributionKit] Got developer mode enabled: %d", buf, 8u);
  }

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1D76C;
  v4[3] = &unk_3D2C0;
  v4[4] = *(a1 + 32);
  v5 = a2;
  dispatch_async(&_dispatch_main_q, v4);
}

void sub_1D76C(uint64_t a1)
{
  v2 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((*(*(a1 + 32) + 8) + 40));
  [WeakRetained setCachedAdAttributionKitDeveloperModeEnabled:v2];

  v4 = objc_loadWeakRetained((*(*(a1 + 32) + 8) + 40));
  [v4 reloadSpecifierID:@"ADATTRIBUTIONKIT_DEVELOPER_MODE_ENABLED"];
}

uint64_t sub_1DC78(uint64_t a1)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v2 = off_49E98;
  v10 = off_49E98;
  if (!off_49E98)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1FD20;
    v6[3] = &unk_3D298;
    v6[4] = &v7;
    sub_1FD20(v6);
    v2 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v2)
  {
    sub_26BC0();
    v5 = v4;
    _Block_object_dispose(&v7, 8);
    _Unwind_Resume(v5);
  }

  return v2(a1);
}

void sub_1E1A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E1B8(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 bundleIdentifier];
  if ([v5 hasPrefix:@"com.apple."] && objc_msgSend(v5, "hasSuffix:", @".ClassKitApp"))
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }
}

void sub_1E684(id a1, BOOL a2, NSError *a3)
{
  if (a3)
  {
    NSLog(@"Error when try to clear ABR data: %@", a2, a3);
  }
}

void sub_1ECC8(uint64_t a1)
{
  v2 = +[AMSProcessInfo currentProcess];
  [v2 setAccountMediaType:AMSAccountMediaTypeAppStoreSandbox];
  v3 = [ACAccountStore ams_sharedAccountStoreForMediaType:AMSAccountMediaTypeAppStoreSandbox];
  v4 = [v3 ams_activeiTunesAccount];
  v5 = [AMSBag bagForProfile:@"Accounts" profileVersion:@"1" processInfo:v2];
  v6 = [[AMSUIWebViewController alloc] initWithBag:v5 account:v4 clientInfo:v2];
  [v6 setDelegate:*(a1 + 32)];
  v7 = [[UINavigationController alloc] initWithRootViewController:v6];
  v8 = *(a1 + 32);
  v9 = *(v8 + 152);
  *(v8 + 152) = v7;

  v10 = *(a1 + 32);
  v11 = v10[19];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1EEC0;
  v16[3] = &unk_3D5B0;
  v16[4] = v10;
  [v10 presentViewController:v11 animated:1 completion:v16];
  v12 = [v5 URLForKey:@"manage-sandbox-account-url"];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1EECC;
  v14[3] = &unk_3D868;
  v14[4] = *(a1 + 32);
  v15 = v6;
  v13 = v6;
  [v12 valueWithCompletion:v14];
}

void sub_1EECC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  if (a2)
  {
    v7 = [*(a1 + 40) loadURL:a2];
  }

  else
  {
    v8 = +[AMSLogConfig sharedAccountsConfig];
    if (!v8)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      v11 = AMSLogKey();
      v12 = AMSHashIfNeeded();
      v16 = 138543874;
      v17 = v10;
      v18 = 2114;
      v19 = v11;
      v20 = 2114;
      v21 = v12;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to load the manage account URL. error = %{public}@", &v16, 0x20u);
    }

    [*(a1 + 40) dismissAnimated:1];
    v13 = [[AMSDialogRequest alloc] initWithError:v6];
    v14 = [[AMSUIAlertDialogTask alloc] initWithRequest:v13 presentingViewController:*(a1 + 32)];
    v15 = [v14 present];
  }
}

void sub_1F07C(uint64_t a1)
{
  v2 = [ACAccountStore ams_sharedAccountStoreForMediaType:AMSAccountMediaTypeAppStoreSandbox];
  v3 = [v2 ams_activeiTunesAccount];
  [v3 setActive:0];
  v4 = [v2 ams_saveAccount:v3 verifyCredentials:0];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1F164;
  v5[3] = &unk_3D890;
  v5[4] = *(a1 + 32);
  [v4 addFinishBlock:v5];
  [*(a1 + 32) _updateSandboxSpecifier:0];
}

void sub_1F164(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1F1DC;
  block[3] = &unk_3D5B0;
  block[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_1F344(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1F364(uint64_t a1)
{
  *(*(a1 + 32) + 136) = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1F404;
  block[3] = &unk_3D060;
  objc_copyWeak(&v2, (a1 + 40));
  dispatch_async(&_dispatch_main_q, block);
  objc_destroyWeak(&v2);
}

void sub_1F404(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateSandboxSpecifier:0];
}

void *sub_1FD20(uint64_t a1)
{
  v5[0] = 0;
  if (!qword_49EA0)
  {
    v5[1] = _NSConcreteStackBlock;
    v5[2] = 3221225472;
    v5[3] = sub_1FE60;
    v5[4] = &unk_3D940;
    v5[5] = v5;
    v6 = off_3D928;
    v7 = 0;
    qword_49EA0 = _sl_dlopen();
    v3 = v5[0];
    v2 = qword_49EA0;
    if (qword_49EA0)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np("%s", v5[0]);
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = qword_49EA0;
LABEL_5:
  result = dlsym(v2, "MX_MediaServicesUtilitiesResetMediaServices");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_49E98 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1FE60(uint64_t a1)
{
  result = _sl_dlopen();
  qword_49EA0 = result;
  return result;
}

void sub_20A3C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained testStatus];

  if (v3 == &dword_0 + 2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_26BE4();
    }

    [*(a1 + 32) setTestObject:0];
    [*(a1 + 32) updateTestStatus:0];
  }
}

id sub_20D3C(uint64_t a1)
{
  [*(a1 + 32) updateTestStatus:1];
  v2 = *(a1 + 32);

  return [v2 startSpeedTest];
}

void sub_20F50(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_20F74(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = [WeakRetained testObject];

  if (v8)
  {
    if (v5)
    {
      v9 = objc_loadWeakRetained((a1 + 40));
      [v9 setTestResults:v5];
    }

    if (v6)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_26C2C(v6);
      }

      v10 = [v6 lastObject];
      v11 = [v10 localizedDescription];
      v12 = [v11 lowercaseString];
      v13 = [v12 isEqualToString:@"cancelled"];

      if (!v13)
      {
        goto LABEL_10;
      }

      v14 = objc_loadWeakRetained((a1 + 40));
      [v14 setTestResults:0];
    }

    v10 = 0;
LABEL_10:
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_2113C;
    block[3] = &unk_3D9B0;
    objc_copyWeak(&v20, (a1 + 40));
    v15 = *(a1 + 32);
    v18 = v10;
    v19 = v15;
    v16 = v10;
    dispatch_async(&_dispatch_main_q, block);

    objc_destroyWeak(&v20);
    goto LABEL_13;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_26CAC();
  }

LABEL_13:
}

void sub_2113C(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  [WeakRetained setTestObject:0];

  v3 = objc_loadWeakRetained(a1 + 6);
  [v3 updateTestStatus:0];

  if (a1[4])
  {
    v4 = [NSBundle bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:@"THROUGHPUT_ERROR" value:&stru_3E0D8 table:@"DTSettings"];
    v6 = [a1[4] localizedDescription];
    v10 = [UIAlertController alertControllerWithTitle:v5 message:v6 preferredStyle:1];

    v7 = [NSBundle bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"OK" value:&stru_3E0D8 table:@"DTSettings"];
    v9 = [UIAlertAction actionWithTitle:v8 style:0 handler:0];

    [v10 addAction:v9];
    [a1[5] presentViewController:v10 animated:1 completion:0];
  }
}

uint64_t static AdAttributionKitBridge.getDeveloperModeEnabled(completion:)(uint64_t a1, uint64_t a2)
{
  sub_214DC(&qword_49BF8, &qword_2EB50);
  __chkstk_darwin();
  v5 = &v9 - v4;
  v6 = sub_26F74();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = a1;
  v7[5] = a2;

  sub_21964(0, 0, v5, &unk_2EB60, v7);
}

uint64_t sub_214DC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_21524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = swift_task_alloc();
  v5[4] = v6;
  *v6 = v5;
  v6[1] = sub_215B8;

  return static DeveloperMode.isDeveloperModeEnabled.getter();
}

uint64_t sub_215B8(char a1)
{
  v4 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v5 = sub_2174C;
  }

  else
  {
    *(v4 + 48) = a1 & 1;
    v5 = sub_216E4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_216E4()
{
  (*(v0 + 16))(*(v0 + 48));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2174C()
{
  v1 = sub_26F84();
  sub_229C8();
  v2 = sub_26FB4();
  if (os_log_type_enabled(v2, v1))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&dword_0, v2, v1, "[AdAttributionKit] Failed to get developer enabled with error: %@", v3, 0xCu);
    sub_22A84(v4, &qword_49C30, &qword_2EBC8);
  }

  v6 = *(v0 + 16);

  v6(0);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_218A4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22C9C;

  return sub_21524(a1, v4, v5, v7, v6);
}

uint64_t sub_21964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_214DC(&qword_49BF8, &qword_2EB50);
  __chkstk_darwin();
  v10 = v24 - v9;
  sub_22A14(a3, v24 - v9);
  v11 = sub_26F74();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_22A84(v10, &qword_49BF8, &qword_2EB50);
  }

  else
  {
    sub_26F64();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_26F34();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_26F04() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_22A84(a3, &qword_49BF8, &qword_2EB50);

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_22A84(a3, &qword_49BF8, &qword_2EB50);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t static AdAttributionKitBridge.setDeveloperModeEnabled(_:completion:)(char a1, uint64_t a2, uint64_t a3)
{
  sub_214DC(&qword_49BF8, &qword_2EB50);
  __chkstk_darwin();
  v7 = &v11 - v6;
  v8 = sub_26F74();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;
  *(v9 + 48) = a3;

  sub_21964(0, 0, v7, &unk_2EB70, v9);
}

uint64_t sub_21EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a5;
  *(v6 + 24) = a6;
  *(v6 + 48) = a4;
  v8 = swift_task_alloc();
  *(v6 + 32) = v8;
  *v8 = v6;
  v8[1] = sub_21F4C;

  return static DeveloperMode.setDeveloperModeEnabled(_:)(a4);
}

uint64_t sub_21F4C()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_220C4;
  }

  else
  {
    v2 = sub_22060;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_22060()
{
  (*(v0 + 16))();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_220C4()
{
  v1 = sub_26F84();
  sub_229C8();
  v2 = sub_26FB4();
  if (os_log_type_enabled(v2, v1))
  {
    v3 = *(v0 + 48);
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 67109378;
    *(v4 + 4) = v3;
    *(v4 + 8) = 2112;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 10) = v6;
    *v5 = v6;
    _os_log_impl(&dword_0, v2, v1, "[AdAttributionKit] Failed to set developer enabled with value: %{BOOL}d, error: %@", v4, 0x12u);
    sub_22A84(v5, &qword_49C30, &qword_2EBC8);
  }

  else
  {
  }

  (*(v0 + 16))(v7);
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_22230(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v8 = *(v1 + 40);
  v7 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22C9C;

  return sub_21EAC(a1, v4, v5, v6, v8, v7);
}

id AdAttributionKitBridge.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AdAttributionKitBridge.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "init");
}

id AdAttributionKitBridge.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_22554()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_22594()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_225E4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_22624(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_226E4;

  return sub_21524(a1, v4, v5, v7, v6);
}

uint64_t sub_226E4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_227D8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_228D0;

  return v6(a1);
}

uint64_t sub_228D0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_229C8()
{
  result = qword_49C28;
  if (!qword_49C28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_49C28);
  }

  return result;
}

uint64_t sub_22A14(uint64_t a1, uint64_t a2)
{
  v4 = sub_214DC(&qword_49BF8, &qword_2EB50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22A84(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_214DC(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_22AE4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_22B1C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22C9C;

  return sub_227D8(a1, v4);
}

uint64_t sub_22BD4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_226E4;

  return sub_227D8(a1, v4);
}

id sub_22CD4()
{
  type metadata accessor for FindDeveloperSettingsClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_49FC0 = result;
  return result;
}

unint64_t sub_22D54()
{
  result = qword_49D68;
  if (!qword_49D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_49D68);
  }

  return result;
}

uint64_t sub_22DC4(uint64_t a1)
{
  sub_26E14();
  __chkstk_darwin();
  v2 = sub_26DB4();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25714();
  v6 = [objc_allocWithZone(PSSpecifier) init];
  [v6 setProperty:a1 forKey:PSListControllerCellHighlightingSelectionInvocationRelayKey];
  sub_26DE4();
  sub_26DA4();
  sub_26E44();
  if (qword_49BF0 != -1)
  {
    swift_once();
  }

  v7 = qword_49FC0;
  v8 = sub_26E54();
  v10 = v9;
  v12 = v11;
  sub_25600(&qword_49D80, &type metadata accessor for PreferencesControllerView, &protocol conformance descriptor for PreferencesControllerView);
  sub_26E64();
  sub_25760(v8, v10, v12 & 1);

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_2306C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[24] = a2;
  v3[25] = a3;
  v3[23] = a1;
  v4 = sub_26D14();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  sub_214DC(&qword_49D90, &qword_2ECF0);
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v5 = sub_26E14();
  v3[31] = v5;
  v3[32] = *(v5 - 8);
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v6 = sub_26E74();
  v3[37] = v6;
  v3[38] = *(v6 - 8);
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v7 = sub_26E34();
  v3[41] = v7;
  v3[42] = *(v7 - 8);
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();
  v8 = sub_26D74();
  v3[45] = v8;
  v3[46] = *(v8 - 8);
  v3[47] = swift_task_alloc();
  sub_214DC(&qword_49D98, &qword_2ECF8);
  v3[48] = swift_task_alloc();
  v9 = sub_26D64();
  v3[49] = v9;
  v3[50] = *(v9 - 8);
  v3[51] = swift_task_alloc();
  sub_26F54();
  v3[52] = sub_26F44();
  v11 = sub_26F34();

  return _swift_task_switch(sub_233E8, v11, v10);
}

uint64_t sub_233E8()
{
  v142 = v0;
  v1 = *(v0 + 392);
  v2 = *(v0 + 400);
  v4 = *(v0 + 376);
  v3 = *(v0 + 384);
  v5 = *(v0 + 360);
  v6 = *(v0 + 368);

  sub_26EA4();
  sub_26D34();
  (*(v6 + 8))(v4, v5);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v7 = *(v0 + 352);
    v8 = *(v0 + 328);
    v9 = *(v0 + 336);
    sub_22A84(*(v0 + 384), &qword_49D98, &qword_2ECF8);
    sub_26E94();
    sub_26EC4();
    (*(v9 + 8))(v7, v8);
    goto LABEL_73;
  }

  (*(*(v0 + 400) + 32))(*(v0 + 408), *(v0 + 384), *(v0 + 392));
  sub_26E94();
  *(v0 + 96) = sub_26D44();
  *(v0 + 104) = v10;
  *(v0 + 112) = 47;
  *(v0 + 120) = 0xE100000000000000;
  sub_25230();
  v11 = sub_26FC4();

  v13 = 0;
  v14 = *(v11 + 16);
  v15 = &_swiftEmptyArrayStorage;
LABEL_4:
  v16 = (v11 + 40 + 16 * v13);
  while (1)
  {
    if (v14 == v13)
    {

      v24 = v15;
      v25 = *(v15 + 2);
      if (!v25)
      {
        sub_26D54();
        if (v89)
        {
          v90 = *(v0 + 200);

          v91 = sub_26EF4();

          [v90 setSpecifierIdentifierToScrollAndHighlight:v91];

          goto LABEL_72;
        }

        v25 = *(v15 + 2);
        if (!v25)
        {

          goto LABEL_72;
        }
      }

      v26 = (*(v0 + 256) + 8);
      v126 = (*(v0 + 304) + 48);
      v27 = *(v0 + 216);
      v132 = (v27 + 8);
      v130 = 16;
      v131 = v27;
      v125 = v26;
      while (1)
      {
        v30 = *(v24 + 4);
        v29 = *(v24 + 5);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || (v25 - 1) > *(v24 + 3) >> 1)
        {
          v24 = sub_248E4(isUniquelyReferenced_nonNull_native, v25, 1, v24);
        }

        sub_25564((v24 + 32));
        v32 = *(v24 + 2);
        memmove(v24 + 32, v24 + 48, 16 * v32 - 16);
        *(v24 + 2) = v32 - 1;

        v129 = v30;
        v33 = sub_25C2C(v30, v29);
        if (v33 == 16)
        {
          v127 = v29;
          v128 = v24;
          result = sub_26D24();
          if (result)
          {
            v34 = result;
          }

          else
          {
            v34 = &_swiftEmptyArrayStorage;
          }

          v136 = v34[2];
          if (v136)
          {
            v35 = 0;
            v134 = v34 + ((*(v27 + 80) + 32) & ~*(v27 + 80));
            countAndFlagsBits = &_swiftEmptyDictionarySingleton;
            while (1)
            {
              if (v35 >= v34[2])
              {
                __break(1u);
                goto LABEL_78;
              }

              (*(v27 + 16))(*(v0 + 224), &v134[*(v27 + 72) * v35], *(v0 + 208));
              v37 = sub_26CF4();
              v39 = v38;
              v40 = sub_26D04();
              if (v41 && (*(v0 + 144) = v40, *(v0 + 152) = v41, v42 = sub_26FD4(), v44 = v43, , v44))
              {
                *(v0 + 160) = v42;
                *(v0 + 168) = v44;
                sub_27004();
                v45 = v139[1];
                *(v0 + 56) = v139[0];
                *(v0 + 72) = v45;
                *(v0 + 88) = v140;
                v46 = swift_isUniquelyReferenced_nonNull_native();
                v48 = sub_24AE4(v37, v39);
                v49 = countAndFlagsBits[2];
                v50 = (v47 & 1) == 0;
                result = v49 + v50;
                if (__OFADD__(v49, v50))
                {
                  goto LABEL_79;
                }

                v51 = v47;
                if (countAndFlagsBits[3] >= result)
                {
                  if ((v46 & 1) == 0)
                  {
                    sub_25284();
                  }
                }

                else
                {
                  sub_24C14(result, v46);
                  v52 = sub_24AE4(v37, v39);
                  if ((v51 & 1) != (v53 & 1))
                  {

                    return sub_27064();
                  }

                  v48 = v52;
                }

                v63 = *(v0 + 224);
                v64 = *(v0 + 208);
                if (v51)
                {

                  sub_25648(v0 + 56, countAndFlagsBits[7] + 40 * v48);
                  result = (*v132)(v63, v64);
                  v27 = v131;
                }

                else
                {
                  countAndFlagsBits[(v48 >> 6) + 8] |= 1 << v48;
                  v65 = (countAndFlagsBits[6] + 16 * v48);
                  *v65 = v37;
                  v65[1] = v39;
                  v66 = countAndFlagsBits[7] + 40 * v48;
                  v67 = *(v0 + 88);
                  v68 = *(v0 + 72);
                  *v66 = *(v0 + 56);
                  *(v66 + 16) = v68;
                  *(v66 + 32) = v67;
                  result = (*v132)(v63, v64);
                  v69 = countAndFlagsBits[2];
                  v70 = __OFADD__(v69, 1);
                  v71 = v69 + 1;
                  if (v70)
                  {
                    goto LABEL_80;
                  }

                  countAndFlagsBits[2] = v71;
                  v27 = v131;
                }
              }

              else
              {
                v54 = sub_24AE4(v37, v39);
                v56 = v55;

                if (v56)
                {
                  v57 = swift_isUniquelyReferenced_nonNull_native();
                  v139[0]._countAndFlagsBits = countAndFlagsBits;
                  if (!v57)
                  {
                    sub_25284();
                    countAndFlagsBits = v139[0]._countAndFlagsBits;
                  }

                  v58 = *(v0 + 224);
                  v59 = *(v0 + 208);

                  v60 = countAndFlagsBits[7] + 40 * v54;
                  v61 = *v60;
                  v62 = *(v60 + 16);
                  *(v0 + 48) = *(v60 + 32);
                  *(v0 + 16) = v61;
                  *(v0 + 32) = v62;
                  sub_24EE4(v54, countAndFlagsBits);
                  (*v132)(v58, v59);
                }

                else
                {
                  (*v132)(*(v0 + 224), *(v0 + 208));
                  *(v0 + 48) = 0;
                  *(v0 + 16) = 0u;
                  *(v0 + 32) = 0u;
                }

                result = sub_22A84(v0 + 16, &qword_49DA8, &qword_2ED00);
              }

              if (v136 == ++v35)
              {
                goto LABEL_54;
              }
            }
          }

          countAndFlagsBits = &_swiftEmptyDictionarySingleton;
LABEL_54:

          *(v0 + 424) = 1;
          sub_27004();
          v79 = swift_isUniquelyReferenced_nonNull_native();
          sub_250A0(&v139[0]._countAndFlagsBits, 0x6574616D696E61, 0xE700000000000000, v79);
          v80 = countAndFlagsBits;
          sub_214DC(&qword_49DB0, &qword_2ED08);
          v81 = swift_allocObject();
          *(v81 + 16) = xmmword_2EC10;
          v24 = v128;
          *(v81 + 32) = v129;
          *(v81 + 40) = v127;
          v139[0]._countAndFlagsBits = v81;

          sub_249F0(v82);
          *(v0 + 176) = v139[0]._countAndFlagsBits;
          sub_214DC(&qword_49DB8, &qword_2ED10);
          sub_255B8(&qword_49DC0, &qword_49DB8, &qword_2ED10, &protocol conformance descriptor for [A]);
          v83 = sub_26EE4();
          v85 = v84;

          v86._countAndFlagsBits = sub_26D54();
          if (v86._object)
          {
            v139[0]._countAndFlagsBits = 35;
            v139[0]._object = 0xE100000000000000;
            sub_26F24(v86);

            sub_26F24(v139[0]);
          }

          v26 = v125;
          v87 = HIBYTE(v85) & 0xF;
          if ((v85 & 0x2000000000000000) == 0)
          {
            v87 = v83 & 0xFFFFFFFFFFFFLL;
          }

          if (v87)
          {
            *(v0 + 128) = v83;
            *(v0 + 136) = v85;
            sub_27004();
            v88 = swift_isUniquelyReferenced_nonNull_native();
            v141 = v80;
            sub_250A0(&v139[0]._countAndFlagsBits, 1752457584, 0xE400000000000000, v88);
            v80 = v141;
          }

          else
          {
          }

          if (v130 != 16)
          {
            v107 = *(v0 + 272);
            v106 = *(v0 + 280);
            v108 = *(v0 + 248);

            sub_2581C(v130);
            sub_24254(v80);

            sub_26DC4();

            v109 = *v125;
            (*v125)(v107, v108);
            sub_25600(&qword_49DC8, &type metadata accessor for PreferencesControllerRecipe, &protocol conformance descriptor for PreferencesControllerRecipe);
            sub_26E24();
            v109(v106, v108);
LABEL_72:
            v111 = *(v0 + 400);
            v110 = *(v0 + 408);
            v112 = *(v0 + 392);
            v114 = *(v0 + 336);
            v113 = *(v0 + 344);
            v115 = *(v0 + 328);
            sub_26EC4();
            (*(v114 + 8))(v113, v115);
            (*(v111 + 8))(v110, v112);
LABEL_73:

            v116 = *(v0 + 8);

            return v116();
          }

          v28 = 16;
          v27 = v131;
        }

        else
        {
          v28 = v33;
          v73 = *(v0 + 288);
          v72 = *(v0 + 296);
          v75 = *(v0 + 240);
          v74 = *(v0 + 248);

          sub_2581C(v28);
          sub_26DD4();
          v76 = *v26;
          (*v26)(v73, v74);
          if ((*v126)(v75, 1, v72) != 1)
          {
            v99 = *(v0 + 400);
            v135 = *(v0 + 392);
            v137 = *(v0 + 408);
            v100 = *(v0 + 336);
            v101 = *(v0 + 344);
            v102 = *(v0 + 320);
            v133 = *(v0 + 328);
            v104 = *(v0 + 296);
            v103 = *(v0 + 304);
            v105 = *(v0 + 240);

            (*(v103 + 32))(v102, v105, v104);
            sub_26EB4();
            (*(v103 + 8))(v102, v104);
            (*(v100 + 8))(v101, v133);
            (*(v99 + 8))(v137, v135);
            goto LABEL_73;
          }

          sub_22A84(*(v0 + 240), &qword_49D90, &qword_2ECF0);
          if (v130 != 16)
          {
            v77 = *(v0 + 280);
            v78 = *(v0 + 248);
            sub_2581C(v130);
            sub_25600(&qword_49DC8, &type metadata accessor for PreferencesControllerRecipe, &protocol conformance descriptor for PreferencesControllerRecipe);
            sub_26E24();
            v76(v77, v78);
          }
        }

        v130 = v28;
        v25 = *(v24 + 2);
        if (!v25)
        {

          if (v28 == 16)
          {
            goto LABEL_72;
          }

          v92 = *(v0 + 296);
          v93 = *(v0 + 264);
          v94 = *(v0 + 248);
          v95 = *(v0 + 232);
          sub_2581C(v130);
          sub_26DD4();
          v96 = *v26;
          (*v26)(v93, v94);
          if ((*v126)(v95, 1, v92) == 1)
          {
            v97 = *(v0 + 280);
            v98 = *(v0 + 248);
            sub_22A84(*(v0 + 232), &qword_49D90, &qword_2ECF0);
            sub_2581C(v130);
            sub_25600(&qword_49DC8, &type metadata accessor for PreferencesControllerRecipe, &protocol conformance descriptor for PreferencesControllerRecipe);
            sub_26E24();
            v96(v97, v98);
            goto LABEL_72;
          }

          v117 = *(v0 + 400);
          v138 = *(v0 + 408);
          v118 = *(v0 + 392);
          v120 = *(v0 + 336);
          v119 = *(v0 + 344);
          v121 = *(v0 + 328);
          v122 = *(v0 + 304);
          v123 = *(v0 + 312);
          v124 = *(v0 + 296);
          (*(v122 + 32))(v123, *(v0 + 232), v124);
          sub_26EB4();
          (*(v122 + 8))(v123, v124);
          (*(v120 + 8))(v119, v121);
          (*(v117 + 8))(v138, v118);
          goto LABEL_73;
        }
      }
    }

    if (v13 >= *(v11 + 16))
    {
      break;
    }

    v18 = *(v16 - 1);
    v17 = *v16;
    v16 += 2;
    ++v13;
    v19 = HIBYTE(v17) & 0xF;
    if ((v17 & 0x2000000000000000) == 0)
    {
      v19 = v18 & 0xFFFFFFFFFFFFLL;
    }

    if (v19)
    {

      v20 = v15;
      result = swift_isUniquelyReferenced_nonNull_native();
      v139[0]._countAndFlagsBits = v15;
      if ((result & 1) == 0)
      {
        result = sub_25438(0, *(v15 + 2) + 1, 1);
        v20 = v139[0]._countAndFlagsBits;
      }

      v22 = *(v20 + 16);
      v21 = *(v20 + 24);
      if (v22 >= v21 >> 1)
      {
        result = sub_25438((v21 > 1), v22 + 1, 1);
        v20 = v139[0]._countAndFlagsBits;
      }

      *(v20 + 16) = v22 + 1;
      v15 = v20;
      v23 = v20 + 16 * v22;
      *(v23 + 32) = v18;
      *(v23 + 40) = v17;
      goto LABEL_4;
    }
  }

LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
  return result;
}

uint64_t sub_24254(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_214DC(&qword_49DD8, &qword_2ED20);
    v2 = sub_27034();
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
    sub_256A4(*(a1 + 56) + 40 * v13, v41);
    v39 = v16;
    v40 = v15;
    v36 = v41[0];
    v37 = v41[1];
    v38 = v42;
    v26 = v16;
    v27 = v15;

    swift_dynamicCast();
    v24[0] = v36;
    v24[1] = v37;
    v25 = v38;
    swift_dynamicCast();
    v32 = v28;
    v33 = v29;
    v34 = v30;
    sub_25700(&v31, v35);
    v28 = v32;
    v29 = v33;
    v30 = v34;
    sub_25700(v35, v24);
    result = sub_26FF4(v2[5]);
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
    *v11 = v28;
    *(v11 + 16) = v29;
    *(v11 + 32) = v30;
    result = sub_25700(v24, (v2[7] + 32 * v10));
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

uint64_t sub_24544()
{
  v1 = sub_214DC(&qword_49D70, &qword_2ECD0);
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = v11 - v3;
  v5 = *v0;
  *(swift_allocObject() + 16) = v5;
  v6 = v5;
  sub_214DC(&qword_49D78, &qword_2ECD8);
  v7 = sub_26DB4();
  v8 = sub_25600(&qword_49D80, &type metadata accessor for PreferencesControllerView, &protocol conformance descriptor for PreferencesControllerView);
  v11[0] = v7;
  v11[1] = v8;
  swift_getOpaqueTypeConformance2();
  sub_26ED4();
  *(swift_allocObject() + 16) = v6;
  sub_255B8(&qword_49D88, &qword_49D70, &qword_2ECD0, &protocol conformance descriptor for SettingsPane<A>);
  v9 = v6;
  sub_26E84();
  return (*(v2 + 8))(v4, v1);
}

id sub_24770@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(PSListControllerCellHighlightingSelectionInvocationRelay) init];
  *a1 = result;
  return result;
}

uint64_t sub_247AC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_247EC(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_226E4;

  return sub_2306C(a1, a2, v6);
}

uint64_t sub_2489C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

char *sub_248E4(char *result, int64_t a2, char a3, char *a4)
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
    sub_214DC(&qword_49DB0, &qword_2ED08);
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

char *sub_249F0(char *result)
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

  result = sub_248E4(result, v10, 1, v3);
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

unint64_t sub_24AE4(uint64_t a1, uint64_t a2)
{
  sub_27074();
  sub_26F14();
  v4 = sub_27084();

  return sub_24B5C(a1, a2, v4);
}

unint64_t sub_24B5C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_27054())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_24C14(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_214DC(&qword_49DD0, &qword_2ED18);
  v38 = v4;
  result = sub_27024();
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
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v23 = v20 | (v8 << 6);
      v24 = (*(v5 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v5 + 56) + 40 * v23;
      if (v38)
      {
        v28 = *v27;
        v29 = *(v27 + 16);
        v41 = *(v27 + 32);
        v39 = v28;
        v40 = v29;
      }

      else
      {
        sub_256A4(v27, &v39);
      }

      sub_27074();
      sub_26F14();
      result = sub_27084();
      v30 = -1 << *(v7 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v14 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v14 + 8 * v32);
          if (v36 != -1)
          {
            v15 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v31) & ~*(v14 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v25;
      v16[1] = v26;
      v17 = *(v7 + 56) + 40 * v15;
      v18 = v39;
      v19 = v40;
      *(v17 + 32) = v41;
      *v17 = v18;
      *(v17 + 16) = v19;
      ++*(v7 + 16);
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v12 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v2;
    if (v37 >= 64)
    {
      bzero((v5 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_24EE4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_26FE4() + 1) & ~v5;
    do
    {
      sub_27074();

      sub_26F14();
      v11 = sub_27084();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = v16 + 40 * v3;
        v18 = (v16 + 40 * v6);
        if (v3 != v6 || v17 >= v18 + 40)
        {
          v9 = *v18;
          v10 = v18[1];
          *(v17 + 32) = *(v18 + 4);
          *v17 = v9;
          *(v17 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_250A0(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_24AE4(a2, a3);
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
      sub_24C14(v16, a4 & 1);
      v11 = sub_24AE4(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_27064();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_25284();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 40 * v11;

    return sub_25648(a1, v22);
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  v25 = v21[7] + 40 * v11;
  v26 = *a1;
  v27 = a1[1];
  *(v25 + 32) = *(a1 + 4);
  *v25 = v26;
  *(v25 + 16) = v27;
  v28 = v21[2];
  v15 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v29;
}

unint64_t sub_25230()
{
  result = qword_49DA0;
  if (!qword_49DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_49DA0);
  }

  return result;
}

void *sub_25284()
{
  v1 = v0;
  sub_214DC(&qword_49DD0, &qword_2ED18);
  v2 = *v0;
  v3 = sub_27014();
  v4 = v3;
  if (*(v2 + 16))
  {
    v27 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 40 * v17;
        sub_256A4(*(v2 + 56) + 40 * v17, v28);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        v24 = *(v4 + 56) + v22;
        v25 = v29;
        v26 = v28[1];
        *v24 = v28[0];
        *(v24 + 16) = v26;
        *(v24 + 32) = v25;
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

        v1 = v27;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

char *sub_25438(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25458(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25458(char *result, int64_t a2, char a3, char *a4)
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
    sub_214DC(&qword_49DB0, &qword_2ED08);
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

uint64_t sub_255B8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_2489C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25600(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_OWORD *sub_25700(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_25714()
{
  result = qword_49DE0;
  if (!qword_49DE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_49DE0);
  }

  return result;
}

uint64_t sub_25760(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_25780()
{
  sub_2489C(&qword_49D70, &qword_2ECD0);
  sub_255B8(&qword_49D88, &qword_49D70, &qword_2ECD0, &protocol conformance descriptor for SettingsPane<A>);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2581C(char a1)
{
  sub_26FA4();
  __chkstk_darwin();
  switch(a1)
  {
    case 1:
    case 2:
    case 7:
    case 11:
    case 12:
    case 13:
    case 14:
      sub_26F94();
      return sub_26E04();
    case 3:
      v2 = &unk_49E10;
      v3 = &off_3C8F0;
      goto LABEL_10;
    case 4:
      v2 = &unk_49E08;
      v3 = off_3C8E8;
      goto LABEL_10;
    case 5:
      v2 = &unk_49E00;
      v3 = off_3C8C8;
      goto LABEL_10;
    case 6:
      v2 = &unk_49DF8;
      v3 = AUDeveloperSettingsController_ptr;
      goto LABEL_10;
    case 8:
      sub_25BE4(0, &qword_49DF0, off_3C8C0);
      v4 = 8;
      goto LABEL_15;
    case 9:
      sub_25BE4(0, &qword_49DF0, off_3C8C0);
      v4 = 9;
      goto LABEL_15;
    case 10:
      sub_25BE4(0, &qword_49DF0, off_3C8C0);
      v4 = 10;
LABEL_15:
      sub_25B18(v4);

      return sub_26DE4();
    case 15:
      v2 = &unk_49DE8;
      v3 = off_3C8E0;
      goto LABEL_10;
    default:
      v2 = &unk_49E18;
      v3 = off_3C8D0;
LABEL_10:
      v6 = sub_25BE4(0, v2, v3);

      return PreferencesControllerRecipe.init(viewControllerClass:)(v6);
  }
}

id sub_25B18(char a1)
{
  v2 = [objc_allocWithZone(PSSpecifier) init];
  if (a1 == 8 || a1 == 10 || a1 == 9)
  {
    v3 = sub_26EF4();
    [v2 setProperty:v3 forKey:PSIDKey];
  }

  return v2;
}

uint64_t sub_25BE4(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t sub_25C2C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_3DAA0;
  v6._object = a2;
  v4 = sub_27044(v3, v6);

  if (v4 >= 0x10)
  {
    return 16;
  }

  else
  {
    return v4;
  }
}

uint64_t _nlc_connect(_DWORD *a1)
{
  *sp = 0;
  bootstrap_look_up(bootstrap_port, "com.apple.NetworkLinkConditioner", sp);
  if (bootstrap_look_up(bootstrap_port, "com.apple.NetworkLinkConditioner", sp))
  {
    puts("NLCd : Bootstrap failure");
    return 100;
  }

  else
  {
    v3 = nlc_connect(sp[0], a1, a1 + 1, &sp[1]);
    if (v3)
    {
      mach_error("nlc_connect:", v3);
    }

    return sp[1];
  }
}

uint64_t _nlc_disconnect(mach_port_name_t *a1)
{
  v4 = 0;
  v2 = nlc_disconnect(*a1, a1[1], &v4);
  if (v2)
  {
    mach_error("nlc_disconnect:", v2);
  }

  mach_port_deallocate(mach_task_self_, *a1);
  return v4;
}

uint64_t _nlc_start_simulation(unsigned int *a1, __int128 *a2)
{
  v17 = 0;
  *(a2 + 1) = 0;
  v3 = a2[11];
  v28 = a2[10];
  v29 = v3;
  v30 = a2[12];
  v4 = a2[7];
  v24 = a2[6];
  v25 = v4;
  v5 = a2[9];
  v26 = a2[8];
  v27 = v5;
  v6 = a2[3];
  v20 = a2[2];
  v21 = v6;
  v7 = a2[5];
  v22 = a2[4];
  v23 = v7;
  v8 = a2[1];
  v18 = *a2;
  v19 = v8;
  v9 = nlc_simulate(*a1, &v18, 0xD0u, a1[1], &v17);
  if (v9)
  {
    mach_error("_nlc_start_simulation:", v9);
  }

  v10 = v29;
  a2[10] = v28;
  a2[11] = v10;
  a2[12] = v30;
  v11 = v25;
  a2[6] = v24;
  a2[7] = v11;
  v12 = v27;
  a2[8] = v26;
  a2[9] = v12;
  v13 = v21;
  a2[2] = v20;
  a2[3] = v13;
  v14 = v23;
  a2[4] = v22;
  a2[5] = v14;
  v15 = v19;
  *a2 = v18;
  a2[1] = v15;
  return v17;
}

uint64_t _nlc_stop_simulation(unsigned int *a1, __int128 *a2)
{
  v17 = 0;
  *(a2 + 1) = 1;
  v3 = a2[11];
  v28 = a2[10];
  v29 = v3;
  v30 = a2[12];
  v4 = a2[7];
  v24 = a2[6];
  v25 = v4;
  v5 = a2[9];
  v26 = a2[8];
  v27 = v5;
  v6 = a2[3];
  v20 = a2[2];
  v21 = v6;
  v7 = a2[5];
  v22 = a2[4];
  v23 = v7;
  v8 = a2[1];
  v18 = *a2;
  v19 = v8;
  v9 = nlc_stop_simulation(*a1, &v18, 0xD0u, a1[1], &v17);
  if (v9)
  {
    mach_error("_nlc_stop_simulation:", v9);
  }

  v10 = v29;
  a2[10] = v28;
  a2[11] = v10;
  a2[12] = v30;
  v11 = v25;
  a2[6] = v24;
  a2[7] = v11;
  v12 = v27;
  a2[8] = v26;
  a2[9] = v12;
  v13 = v21;
  a2[2] = v20;
  a2[3] = v13;
  v14 = v23;
  a2[4] = v22;
  a2[5] = v14;
  v15 = v19;
  *a2 = v18;
  a2[1] = v15;
  return v17;
}

uint64_t _nlc_get_status(unsigned int *a1, _DWORD *a2)
{
  a2[1] = 2;
  __n = 208;
  v4 = *(a2 + 11);
  v14[10] = *(a2 + 10);
  v14[11] = v4;
  v14[12] = *(a2 + 12);
  v5 = *(a2 + 7);
  v14[6] = *(a2 + 6);
  v14[7] = v5;
  v6 = *(a2 + 9);
  v14[8] = *(a2 + 8);
  v14[9] = v6;
  v7 = *(a2 + 3);
  v14[2] = *(a2 + 2);
  v14[3] = v7;
  v8 = *(a2 + 5);
  v14[4] = *(a2 + 4);
  v14[5] = v8;
  v9 = *(a2 + 1);
  v14[0] = *a2;
  v14[1] = v9;
  bzero(__src, 0x400uLL);
  status = nlc_get_status(*a1, v14, 0xD0u, __src, &__n, a1[1], &__n + 1);
  if (status)
  {
    mach_error("_nlc_get_status:", status);
  }

  memcpy(a2, __src, __n);
  return HIDWORD(__n);
}

uint64_t nlc_connect(int a1, _DWORD *a2, _DWORD *a3, _DWORD *a4)
{
  memset(v19, 0, sizeof(v19));
  *&reply_port_12[4] = 0u;
  reply_port = 0;
  v8 = mig_get_reply_port();
  reply_port_4 = a1;
  reply_port_8 = v8;
  v14 = 5395;
  *reply_port_12 = 0x9D4C00000000;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(&v14);
    v9 = reply_port_8;
  }

  else
  {
    v9 = v8;
  }

  v10 = mach_msg(&v14, 3, 0x18u, 0x40u, v9, 0, 0);
  v11 = v10;
  if ((v10 - 268435458) <= 0xE && ((1 << (v10 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(reply_port_8);
  }

  else
  {
    if (!v10)
    {
      if (*&reply_port_12[4] == 71)
      {
        v11 = 4294966988;
      }

      else if (*&reply_port_12[4] == 40368)
      {
        if (v14 < 0)
        {
          v11 = 4294966996;
          if (*&reply_port_12[8] == 1 && reply_port == 56 && !reply_port_4 && HIWORD(v19[0]) << 16 == 1114112)
          {
            v11 = 0;
            v12 = v19[3];
            *a2 = *&reply_port_12[12];
            *a3 = v12;
            *a4 = v19[4];
            return v11;
          }
        }

        else if (reply_port == 36)
        {
          v11 = 4294966996;
          if (*&reply_port_12[16])
          {
            if (reply_port_4)
            {
              v11 = 4294966996;
            }

            else
            {
              v11 = *&reply_port_12[16];
            }
          }
        }

        else
        {
          v11 = 4294966996;
        }
      }

      else
      {
        v11 = 4294966995;
      }

      mach_msg_destroy(&v14);
      return v11;
    }

    mig_dealloc_reply_port(reply_port_8);
  }

  return v11;
}

uint64_t nlc_disconnect(mach_port_t a1, int a2, _DWORD *a3)
{
  v13 = 0u;
  v11.msgh_size = 0;
  v12 = NDR_record;
  LODWORD(v13) = a2;
  reply_port = mig_get_reply_port();
  v11.msgh_remote_port = a1;
  v11.msgh_local_port = reply_port;
  v11.msgh_bits = 5395;
  *&v11.msgh_voucher_port = 0x9D4D00000000;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(&v11);
    msgh_local_port = v11.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v7 = mach_msg(&v11, 3, 0x24u, 0x30u, msgh_local_port, 0, 0);
  v8 = v7;
  if ((v7 - 268435458) > 0xE || ((1 << (v7 - 2)) & 0x4003) == 0)
  {
    if (v7)
    {
      mig_dealloc_reply_port(v11.msgh_local_port);
      return v8;
    }

    if (v11.msgh_id == 71)
    {
      v8 = 4294966988;
    }

    else if (v11.msgh_id == 40369)
    {
      if ((v11.msgh_bits & 0x80000000) == 0)
      {
        if (v11.msgh_size == 40)
        {
          if (!v11.msgh_remote_port)
          {
            v8 = v13;
            if (!v13)
            {
              *a3 = DWORD1(v13);
              return v8;
            }

            goto LABEL_24;
          }
        }

        else if (v11.msgh_size == 36)
        {
          if (v11.msgh_remote_port)
          {
            v9 = 1;
          }

          else
          {
            v9 = v13 == 0;
          }

          if (v9)
          {
            v8 = 4294966996;
          }

          else
          {
            v8 = v13;
          }

          goto LABEL_24;
        }
      }

      v8 = 4294966996;
    }

    else
    {
      v8 = 4294966995;
    }

LABEL_24:
    mach_msg_destroy(&v11);
    return v8;
  }

  mig_put_reply_port(v11.msgh_local_port);
  return v8;
}

uint64_t nlc_simulate(mach_port_t a1, uint64_t a2, unsigned int a3, int a4, _DWORD *a5)
{
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  memset(&reply_port, 0, sizeof(reply_port));
  v17 = NDR_record;
  if (a3 <= 0x400)
  {
    __memcpy_chk();
    LODWORD(v18) = a3;
    v10 = (a3 + 3) & 0xFFC;
    *(&reply_port + v10 + 36) = a4;
    v11 = mig_get_reply_port();
    reply_port.msgh_remote_port = a1;
    reply_port.msgh_local_port = v11;
    reply_port.msgh_bits = 5395;
    *&reply_port.msgh_voucher_port = 0x9D4E00000000;
    if (&_voucher_mach_msg_set)
    {
      voucher_mach_msg_set(&reply_port);
      msgh_local_port = reply_port.msgh_local_port;
    }

    else
    {
      msgh_local_port = v11;
    }

    v13 = mach_msg(&reply_port, 3, v10 + 40, 0x30u, msgh_local_port, 0, 0);
    v5 = v13;
    if ((v13 - 268435458) <= 0xE && ((1 << (v13 - 2)) & 0x4003) != 0)
    {
      mig_put_reply_port(reply_port.msgh_local_port);
      return v5;
    }

    if (v13)
    {
      mig_dealloc_reply_port(reply_port.msgh_local_port);
      return v5;
    }

    if (reply_port.msgh_id == 71)
    {
      v5 = 4294966988;
    }

    else if (reply_port.msgh_id == 40370)
    {
      if ((reply_port.msgh_bits & 0x80000000) == 0)
      {
        if (reply_port.msgh_size == 40)
        {
          if (!reply_port.msgh_remote_port)
          {
            v5 = v18;
            if (!v18)
            {
              *a5 = DWORD1(v18);
              return v5;
            }

            goto LABEL_26;
          }
        }

        else if (reply_port.msgh_size == 36)
        {
          if (reply_port.msgh_remote_port)
          {
            v14 = 1;
          }

          else
          {
            v14 = v18 == 0;
          }

          if (v14)
          {
            v5 = 4294966996;
          }

          else
          {
            v5 = v18;
          }

          goto LABEL_26;
        }
      }

      v5 = 4294966996;
    }

    else
    {
      v5 = 4294966995;
    }

LABEL_26:
    mach_msg_destroy(&reply_port);
    return v5;
  }

  return 4294966989;
}

uint64_t nlc_stop_simulation(mach_port_t a1, uint64_t a2, unsigned int a3, int a4, _DWORD *a5)
{
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  memset(&reply_port, 0, sizeof(reply_port));
  v17 = NDR_record;
  if (a3 <= 0x400)
  {
    __memcpy_chk();
    LODWORD(v18) = a3;
    v10 = (a3 + 3) & 0xFFC;
    *(&reply_port + v10 + 36) = a4;
    v11 = mig_get_reply_port();
    reply_port.msgh_remote_port = a1;
    reply_port.msgh_local_port = v11;
    reply_port.msgh_bits = 5395;
    *&reply_port.msgh_voucher_port = 0x9D4F00000000;
    if (&_voucher_mach_msg_set)
    {
      voucher_mach_msg_set(&reply_port);
      msgh_local_port = reply_port.msgh_local_port;
    }

    else
    {
      msgh_local_port = v11;
    }

    v13 = mach_msg(&reply_port, 3, v10 + 40, 0x30u, msgh_local_port, 0, 0);
    v5 = v13;
    if ((v13 - 268435458) <= 0xE && ((1 << (v13 - 2)) & 0x4003) != 0)
    {
      mig_put_reply_port(reply_port.msgh_local_port);
      return v5;
    }

    if (v13)
    {
      mig_dealloc_reply_port(reply_port.msgh_local_port);
      return v5;
    }

    if (reply_port.msgh_id == 71)
    {
      v5 = 4294966988;
    }

    else if (reply_port.msgh_id == 40371)
    {
      if ((reply_port.msgh_bits & 0x80000000) == 0)
      {
        if (reply_port.msgh_size == 40)
        {
          if (!reply_port.msgh_remote_port)
          {
            v5 = v18;
            if (!v18)
            {
              *a5 = DWORD1(v18);
              return v5;
            }

            goto LABEL_26;
          }
        }

        else if (reply_port.msgh_size == 36)
        {
          if (reply_port.msgh_remote_port)
          {
            v14 = 1;
          }

          else
          {
            v14 = v18 == 0;
          }

          if (v14)
          {
            v5 = 4294966996;
          }

          else
          {
            v5 = v18;
          }

          goto LABEL_26;
        }
      }

      v5 = 4294966996;
    }

    else
    {
      v5 = 4294966995;
    }

LABEL_26:
    mach_msg_destroy(&reply_port);
    return v5;
  }

  return 4294966989;
}

uint64_t nlc_get_status(mach_port_t a1, uint64_t a2, unsigned int a3, void *a4, _DWORD *a5, int a6, _DWORD *a7)
{
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  *__n = 0u;
  v27 = 0u;
  memset(&reply_port, 0, sizeof(reply_port));
  v25 = NDR_record;
  if (a3 <= 0x400)
  {
    __memcpy_chk();
    LODWORD(__n[0]) = a3;
    v14 = (a3 + 3) & 0xFFC;
    *(&reply_port + v14 + 36) = a6;
    v15 = mig_get_reply_port();
    reply_port.msgh_remote_port = a1;
    reply_port.msgh_local_port = v15;
    reply_port.msgh_bits = 5395;
    *&reply_port.msgh_voucher_port = 0x9D5000000000;
    if (&_voucher_mach_msg_set)
    {
      voucher_mach_msg_set(&reply_port);
      msgh_local_port = reply_port.msgh_local_port;
    }

    else
    {
      msgh_local_port = v15;
    }

    v17 = mach_msg(&reply_port, 3, v14 + 40, 0x434u, msgh_local_port, 0, 0);
    v7 = v17;
    if ((v17 - 268435458) <= 0xE && ((1 << (v17 - 2)) & 0x4003) != 0)
    {
      mig_put_reply_port(reply_port.msgh_local_port);
      return v7;
    }

    if (v17)
    {
      mig_dealloc_reply_port(reply_port.msgh_local_port);
      return v7;
    }

    if (reply_port.msgh_id == 71)
    {
      v7 = 4294966988;
    }

    else if (reply_port.msgh_id == 40372)
    {
      if ((reply_port.msgh_bits & 0x80000000) == 0)
      {
        if (reply_port.msgh_size - 1069 <= 0xFFFFFBFE)
        {
          if (LODWORD(__n[0]))
          {
            v18 = reply_port.msgh_remote_port == 0;
          }

          else
          {
            v18 = 0;
          }

          if (v18 && reply_port.msgh_size == 36)
          {
            v7 = LODWORD(__n[0]);
          }

          else
          {
            v7 = 4294966996;
          }

          goto LABEL_28;
        }

        if (!reply_port.msgh_remote_port)
        {
          v7 = LODWORD(__n[0]);
          if (LODWORD(__n[0]))
          {
            goto LABEL_28;
          }

          v21 = HIDWORD(__n[0]);
          if (HIDWORD(__n[0]) <= 0x400)
          {
            v7 = 4294966996;
            if (reply_port.msgh_size - 44 >= HIDWORD(__n[0]))
            {
              v22 = (HIDWORD(__n[0]) + 3) & 0xFFFFFFFC;
              if (reply_port.msgh_size == v22 + 44)
              {
                v23 = &reply_port + v22 - 1024;
                memcpy(a4, &__n[1], HIDWORD(__n[0]));
                v7 = 0;
                *a5 = v21;
                *a7 = *(v23 + 266);
                return v7;
              }
            }

            goto LABEL_28;
          }
        }
      }

      v7 = 4294966996;
    }

    else
    {
      v7 = 4294966995;
    }

LABEL_28:
    mach_msg_destroy(&reply_port);
    return v7;
  }

  return 4294966989;
}

void sub_26BC0()
{
  v0 = dlerror();
  abort_report_np("%s", v0);
  sub_26BE4();
}

void sub_26C2C(uint64_t a1)
{
  v1 = 138412290;
  v2 = a1;
  _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "Tput: Errors:\n%@", &v1, 0xCu);
}

Boolean CFCalendarDecomposeAbsoluteTime(CFCalendarRef calendar, CFAbsoluteTime at, const char *componentDesc, ...)
{
  va_start(va, componentDesc);
  v3 = va_arg(va, const char *);
  return _CFCalendarDecomposeAbsoluteTime(calendar, at, v3);
}