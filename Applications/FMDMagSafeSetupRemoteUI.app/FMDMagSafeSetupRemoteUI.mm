void sub_100001D0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100001D34(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100001D4C(void *a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = [a3 serialNumber];
  if ([v5 isEqualToString:a1[4]])
  {
    v6 = [v7 isEqualToString:a1[5]];

    if ((v6 & 1) == 0)
    {
      [*(*(a1[6] + 8) + 40) addObject:v7];
    }
  }

  else
  {
  }
}

void sub_100002158(id a1)
{
  qword_100045DF0 = objc_alloc_init(FMDAutomationHelperFactory);

  _objc_release_x1();
}

id sub_100002400(uint64_t a1)
{
  if (qword_100045E00 != -1)
  {
    sub_10001D990();
  }

  v2 = qword_100045E08;

  return v2;
}

void sub_100002444(id a1)
{
  qword_100045E08 = os_log_create("com.apple.icloud.findmydeviced", "magSafe");

  _objc_release_x1();
}

NSError *__cdecl sub_100002488(id a1, SEL a2, id a3)
{
  v9 = NSLocalizedDescriptionKey;
  v10 = a3;
  v3 = a3;
  v4 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v5 = +[NSBundle mainBundle];
  v6 = [v5 bundleIdentifier];
  v7 = [NSError errorWithDomain:v6 code:0 userInfo:v4];

  return v7;
}

void sub_1000035BC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = sub_100002400(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v50 = v7;
    v51 = 2112;
    v52 = v8;
    v53 = 2112;
    v54 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "FMDRemoteAsset: download task completed with %@ %@ %@", buf, 0x20u);
  }

  v11 = *(a1 + 32);
  v48 = 0;
  v12 = [v11 isValidReponse:v8 validationError:&v48];
  v13 = v48;
  v14 = v13;
  if (!v13)
  {
    if ((v12 & 1) == 0)
    {
      v37 = sub_100002400(0);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        sub_10001DB6C(a1, v8, v37);
      }

      v22 = *(a1 + 64);
      v23 = 0;
      goto LABEL_23;
    }

    v24 = v8;
    if (v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || [v24 statusCode] != 200)
    {
      (*(*(a1 + 64) + 16))(*(a1 + 64), 0, v9);
      goto LABEL_24;
    }

    v25 = [*(a1 + 48) stringByDeletingLastPathComponent];
    v26 = sub_100002400(v25);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v50 = v25;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "FMDRemoteAsset: dir location = %@", buf, 0xCu);
    }

    if (([*(a1 + 56) fileExistsAtPath:v25] & 1) == 0)
    {
      v27 = *(a1 + 56);
      v47 = 0;
      v28 = [v27 createDirectoryAtPath:v25 withIntermediateDirectories:1 attributes:0 error:&v47];
      v29 = v47;
      v30 = v29;
      if ((v28 & 1) == 0)
      {
        v38 = sub_100002400(v29);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          sub_10001DC44(v38, v39, v40, v41, v42, v43, v44, v45);
        }

        (*(*(a1 + 64) + 16))();
        goto LABEL_30;
      }
    }

    v31 = *(a1 + 56);
    v32 = [NSURL fileURLWithPath:*(a1 + 48)];
    v46 = 0;
    [v31 moveItemAtURL:v7 toURL:v32 error:&v46];
    v30 = v46;

    v34 = sub_100002400(v33);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v50 = v30;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "FMDRemoteAsset: copy completed with error %@", buf, 0xCu);
    }

    v35 = *(a1 + 64);
    if (v30)
    {
      v36 = +[NSError fm_genericError];
      (*(v35 + 16))(v35, 0, v36);
    }

    else
    {
      (*(v35 + 16))(*(a1 + 64), *(a1 + 48), 0);
    }

LABEL_30:

    goto LABEL_24;
  }

  v15 = sub_100002400(v13);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    sub_10001DB00(v14, v15, v16, v17, v18, v19, v20, v21);
  }

  v22 = *(a1 + 64);
  v23 = 1;
LABEL_23:
  v24 = [NSError errorWithDomain:@"com.apple.icloud.findmydevice.RemoteAsset" code:v23 userInfo:0];
  (*(v22 + 16))(v22, 0, v24);
LABEL_24:
}

void sub_100003B70(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void sub_100003CF4(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_100002400(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10001DCB4();
  }
}

void sub_100003ED8(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_100002400(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10001DCB4();
  }
}

id sub_100004168(uint64_t a1)
{
  v2 = sub_100002400(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "did not get accessory showing attach screen", v4, 2u);
  }

  return [*(a1 + 32) progressFlowWithState:1];
}

id sub_1000041E0(uint64_t a1)
{
  v2 = sub_100002400(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "did not get accessory ending setup", v4, 2u);
  }

  return [*(a1 + 32) setupEnded];
}

void sub_100004664(uint64_t a1)
{
  v2 = [*(a1 + 32) presentedCard];
  if (v2 && (v3 = v2, [*(a1 + 32) presentedCard], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isBeingPresented"), v4, v3, v5))
  {
    v6 = [*(a1 + 32) presentedCard];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100004780;
    v8[3] = &unk_100038780;
    v8[4] = *(a1 + 32);
    [v6 dismissViewControllerAnimated:1 completion:v8];
  }

  else
  {
    [*(a1 + 32) setPresentedCard:0];
    v7 = [*(a1 + 32) remoteVCProxy];
    [v7 deactivate];
  }
}

void sub_100004780(uint64_t a1)
{
  [*(a1 + 32) setPresentedCard:0];
  v2 = [*(a1 + 32) remoteVCProxy];
  [v2 deactivate];
}

void sub_100004E24(uint64_t a1)
{
  v2 = dispatch_group_create();
  v3 = +[FMDAccessoryTypeValidator sharedInstance];
  v4 = [*(a1 + 32) accessoryType];
  if ([v3 isAllowedAccessoryWithType:v4])
  {
    v5 = [*(a1 + 32) isMF4i];

    if (v5)
    {
      [*(a1 + 32) getPairingStatus];
      if ([*(a1 + 32) isNVMSetup])
      {
        if (([*(a1 + 32) keysAvailable] & 1) == 0)
        {
          dispatch_group_enter(v2);
          v6 = *(a1 + 32);
          v48[0] = _NSConcreteStackBlock;
          v48[1] = 3221225472;
          v48[2] = sub_10000538C;
          v48[3] = &unk_1000387A8;
          v49 = v6;
          v7 = v2;
          v50 = v7;
          [FMDPairingCheckHelper pairingCheckForAccessory:v49 completion:v48];
          v8 = dispatch_time(0, 10000000000);
          v9 = dispatch_group_wait(v7, v8);
          if (v9)
          {
            v10 = sub_100002400(v9);
            if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
            {
              sub_10001DD9C();
            }
          }
        }
      }
    }
  }

  else
  {
  }

  if (([*(a1 + 32) isNVMSetup] & 1) == 0)
  {
    v21 = [FMDRemoteAsset alloc];
    v22 = [*(a1 + 32) accessoryType];
    v23 = [*(a1 + 32) style];
    v14 = [(FMDRemoteAsset *)v21 initWithAccessoryType:v22 style:v23 type:0];

    dispatch_group_enter(v2);
    v46[0] = _NSConcreteStackBlock;
    v46[1] = 3221225472;
    v46[2] = sub_1000054C0;
    v46[3] = &unk_1000387D0;
    v24 = v2;
    v47 = v24;
    [(FMDRemoteAsset *)v14 fetchAssetWithCompletion:v46];
    v25 = [FMDRemoteAsset alloc];
    v26 = [*(a1 + 32) accessoryType];
    v27 = [*(a1 + 32) style];
    v28 = [(FMDRemoteAsset *)v25 initWithAccessoryType:v26 style:v27 type:1];

    dispatch_group_enter(v24);
    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_10000559C;
    v44[3] = &unk_1000387D0;
    v29 = v24;
    v45 = v29;
    [(FMDRemoteAsset *)v28 fetchAssetWithCompletion:v44];
    v30 = dispatch_time(0, 5000000000);
    v31 = dispatch_group_wait(v29, v30);
    if (v31)
    {
      v32 = sub_100002400(v31);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        sub_10001DE0C();
      }
    }

    v33 = [*(a1 + 40) isRestrictedSKU];
    v34 = [FMDRemoteAsset alloc];
    v35 = [*(a1 + 32) accessoryType];
    v36 = [*(a1 + 32) style];
    if (v33)
    {
      v37 = 3;
    }

    else
    {
      v37 = 2;
    }

    if (v33)
    {
      v38 = &stru_100038810;
    }

    else
    {
      v38 = &stru_100038830;
    }

    v39 = [(FMDRemoteAsset *)v34 initWithAccessoryType:v35 style:v36 type:v37];

    [(FMDRemoteAsset *)v39 fetchAssetWithCompletion:v38];
    v15 = v47;
    goto LABEL_31;
  }

  if ([*(a1 + 32) isNVMSetup] && (objc_msgSend(*(a1 + 32), "keysAvailable") & 1) == 0)
  {
    v11 = [FMDRemoteAsset alloc];
    v12 = [*(a1 + 32) accessoryType];
    v13 = [*(a1 + 32) style];
    v14 = [(FMDRemoteAsset *)v11 initWithAccessoryType:v12 style:v13 type:3];

    v15 = [(FMDRemoteAsset *)v14 getStoredAssetLocation];
    if (!v15)
    {
      v16 = dispatch_group_create();
      dispatch_group_enter(v16);
      v42[0] = _NSConcreteStackBlock;
      v42[1] = 3221225472;
      v42[2] = sub_100005818;
      v42[3] = &unk_1000387D0;
      v17 = v16;
      v43 = v17;
      [(FMDRemoteAsset *)v14 fetchAssetWithCompletion:v42];
      v18 = dispatch_time(0, 3000000000);
      v19 = dispatch_group_wait(v17, v18);
      if (v19)
      {
        v20 = sub_100002400(v19);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          sub_10001DE0C();
        }
      }
    }

LABEL_31:
  }

  [*(a1 + 40) setPhysicalAccessory:*(a1 + 32)];
  v40 = *(a1 + 40);
  v41 = [v40 physicalAccessory];
  [v40 prepareForSetupFlowFor:v41];
}

void sub_10000538C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100002400(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "pairingCheckForAccessory completed with error = %@ lostModeInfo = %@", &v10, 0x16u);
  }

  if (!v5 && v6)
  {
    v8 = [v6 objectForKeyedSubscript:@"ownerNumber"];
    [*(a1 + 32) setPhoneNumber:v8];

    v9 = [v6 objectForKeyedSubscript:@"email"];
    [*(a1 + 32) setEmail:v9];
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_1000054C0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100002400(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "remoteAsset pairing video fetched with path %@ error %@", &v8, 0x16u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_10000559C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100002400(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "remoteAsset pairing video adjustments fetched with path %@ error %@", &v8, 0x16u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_100005678(id a1, NSString *a2, NSError *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = sub_100002400(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    v8 = v4;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "remoteAsset fetched with path %@ error %@", &v7, 0x16u);
  }
}

void sub_100005748(id a1, NSString *a2, NSError *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = sub_100002400(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    v8 = v4;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "remoteAsset map image fetched with path %@ error %@", &v7, 0x16u);
  }
}

void sub_100005818(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100002400(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "remoteAsset fetched with path %@ error %@", &v8, 0x16u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_10000612C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100002400(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Accessory removed with error %@", &v5, 0xCu);
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_1000064BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000064E4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000064FC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100002400(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Accessory set name completed with error %@", &v8, 0xCu);
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  dispatch_group_leave(*(a1 + 32));
}

void sub_1000065D8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100002400(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Accessory added with error %@", &v8, 0xCu);
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  dispatch_group_leave(*(a1 + 32));
}

void sub_1000067BC(uint64_t a1)
{
  switch(*(a1 + 40))
  {
    case 1:
      v2 = [*(a1 + 32) proxCardAttachAccessory];
      goto LABEL_16;
    case 2:
      v2 = [*(a1 + 32) proxCardAlreadyAttached];
      goto LABEL_16;
    case 3:
      v2 = [*(a1 + 32) proxCardUnsupportedAccessory];
      goto LABEL_16;
    case 4:
      v2 = [*(a1 + 32) proxCardLockedFindMyNotPaired];
      goto LABEL_16;
    case 5:
      v2 = [*(a1 + 32) proxCardUnlockedStartFlow];
      goto LABEL_16;
    case 6:
      v2 = [*(a1 + 32) proxCardSetupFindmy];
      goto LABEL_16;
    case 7:
      v2 = [*(a1 + 32) proxCardSetupComplete];
      goto LABEL_16;
    case 8:
      v2 = [*(a1 + 32) proxCardSetupError];
      goto LABEL_16;
    case 9:
      v2 = [*(a1 + 32) proxCardNonOwnerLockedDevice];
      goto LABEL_16;
    case 0xALL:
      v2 = [*(a1 + 32) proxCardNonOwnerUnlocked];
      goto LABEL_16;
    case 0xBLL:
      v2 = [*(a1 + 32) proxCardNoAccount];
      goto LABEL_16;
    case 0xCLL:
      v2 = [*(a1 + 32) proxCardUpgradeAccountSecurity];
      goto LABEL_16;
    case 0xDLL:
      v2 = [*(a1 + 32) proxCardUpgradeAccountSecurityError];
      goto LABEL_16;
    case 0xELL:
      v2 = [*(a1 + 32) proxCardSpinner];
LABEL_16:
      v3 = v2;
      break;
    default:
      v3 = 0;
      break;
  }

  v4 = sub_100002400([*(a1 + 32) setProxCardState:*(a1 + 40)]);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) presentedCard];
    v14 = 138412546;
    v15 = v3;
    v16 = 2112;
    v17 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "FMDMagSafeSetupRemoteUIViewController: nextCard = %@ %@", &v14, 0x16u);
  }

  v6 = [*(a1 + 32) presentedCard];

  if (v6)
  {
    if (!v3)
    {
      v13 = [*(a1 + 32) presentedCard];
      [v13 dismissViewControllerAnimated:1 completion:0];

      goto LABEL_29;
    }

    v8 = sub_100002400(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v3;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "FMDMagSafeSetupRemoteUIViewController: pushing view cotroler %@", &v14, 0xCu);
    }

    v9 = [*(a1 + 32) presentedCard];
    v10 = [v9 navigationController];
    [v10 pushViewController:v3 animated:1];
  }

  else
  {
    v11 = *(a1 + 32);
    if (!v3)
    {
      [v11 setupEnded];
      goto LABEL_29;
    }

    v12 = [v11 presentProxCardFlowWithDelegate:*(a1 + 32) initialViewController:v3];
  }

  [*(a1 + 32) setPresentedCard:v3];
LABEL_29:
}

void sub_100006F00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100006F2C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = sub_10000EE80(WeakRetained);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "add to FindMy button tapped", v3, 2u);
  }

  [WeakRetained continueWithAccountValidationFlow];
}

void sub_1000070BC(uint64_t a1)
{
  v2 = [*(a1 + 32) physicalAccessory];
  v3 = objc_alloc_init(FMDPairingLockRegisterRequestInfo);
  v4 = [v2 serialNumber];
  [v3 setSerialNumber:v4];

  v5 = [v2 accessoryType];
  [v3 setAccessoryType:v5];

  v6 = dispatch_group_create();
  v7 = sub_100002400(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v3 serialNumber];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Doing register to server for accessory with serial number = %@", &buf, 0xCu);
  }

  dispatch_group_enter(v6);
  *&buf = 0;
  *(&buf + 1) = &buf;
  v120 = 0x3032000000;
  v121 = sub_1000064E4;
  v122 = sub_1000064F4;
  v123 = 0;
  v107 = 0;
  v108 = &v107;
  v109 = 0x3032000000;
  v110 = sub_1000064E4;
  v111 = sub_1000064F4;
  v112 = 0;
  v9 = +[FMDFMIPManager sharedInstance];
  v103[0] = _NSConcreteStackBlock;
  v103[1] = 3221225472;
  v103[2] = sub_100007FC8;
  v103[3] = &unk_100038920;
  v105 = &v107;
  p_buf = &buf;
  v10 = v6;
  v104 = v10;
  [v9 registerDeviceForPairingLock:v3 completion:v103];

  v11 = dispatch_time(0, 5000000000);
  v12 = dispatch_group_wait(v10, v11);
  if (!v108[5] && !v12)
  {
    v13 = *(*(&buf + 1) + 40);
    if (v13)
    {
      v14 = [v13 pairingToken];
      if (v14)
      {
        v15 = [*(*(&buf + 1) + 40) serialNumber];
        v16 = v15 == 0;

        if (!v16)
        {
          v18 = sub_100002400(v17);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v113) = 0;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "provisioning keys to mulder", &v113, 2u);
          }

          dispatch_group_enter(v10);
          v100[0] = _NSConcreteStackBlock;
          v100[1] = 3221225472;
          v100[2] = sub_1000080DC;
          v100[3] = &unk_1000388A8;
          v102 = &v107;
          v19 = v10;
          v101 = v19;
          [v2 setupKeysWithCompletion:v100];
          v20 = dispatch_time(0, 5000000000);
          v21 = dispatch_group_wait(v19, v20);
          if (v108[5] || v21)
          {
            v49 = sub_100002400(v21);
            if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
            {
              sub_10001E08C();
            }

            v50 = *(a1 + 40);
            if (v108[5])
            {
              (*(v50 + 16))(v50);
LABEL_83:
              v48 = v101;
              goto LABEL_84;
            }

            v53 = +[NSError fm_timeoutError];
            (*(v50 + 16))(v50, v53);
LABEL_82:

            goto LABEL_83;
          }

          v98 = 0;
          v99 = 0;
          [FMDCryptoUtil generatePublicPrivateKeyPair:&v99 privateKey:&v98];
          v22 = v99;
          v83 = v98;
          v23 = sub_100002400(v83);
          v82 = v22;
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
          {
            v24 = [v22 fm_hexString];
            v25 = [v83 fm_hexString];
            sub_10001DFDC(v24, v25, v118, v23);
          }

          v27 = sub_100002400(v26);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v113) = 0;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "setting up pairing data", &v113, 2u);
          }

          v28 = objc_alloc_init(FMDRemoteUnlockPairingData);
          v29 = [*(*(&buf + 1) + 40) pairingToken];
          v30 = [NSData dataWithHexString:v29];
          [(FMDRemoteUnlockPairingData *)v28 setPairingCheckToken:v30];

          v31 = sub_100002400([(FMDRemoteUnlockPairingData *)v28 setLostModePrivateKey:v83]);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            v32 = [(FMDRemoteUnlockPairingData *)v28 pairingCheckToken];
            LODWORD(v113) = 138412290;
            *(&v113 + 4) = v32;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "data size = %@", &v113, 0xCu);
          }

          dispatch_group_enter(v19);
          v95[0] = _NSConcreteStackBlock;
          v95[1] = 3221225472;
          v95[2] = sub_1000081B8;
          v95[3] = &unk_1000388A8;
          v97 = &v107;
          v33 = v19;
          v96 = v33;
          [v2 setPairingData:v28 withCompletion:v95];
          v34 = dispatch_time(0, 5000000000);
          v35 = dispatch_group_wait(v33, v34);
          if (v108[5] || v35)
          {
            v51 = sub_100002400(v35);
            if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
            {
              sub_10001E08C();
            }

            v52 = *(a1 + 40);
            if (v108[5])
            {
              (*(v52 + 16))(v52);
            }

            else
            {
              v56 = +[NSError fm_timeoutError];
              (*(v52 + 16))(v52, v56);
            }

            goto LABEL_81;
          }

          v36 = sub_100002400(0);
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v113) = 0;
            _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "getting user private key", &v113, 2u);
          }

          dispatch_group_enter(v33);
          *&v113 = 0;
          *(&v113 + 1) = &v113;
          v114 = 0x3032000000;
          v115 = sub_1000064E4;
          v116 = sub_1000064F4;
          v117 = 0;
          v91[0] = _NSConcreteStackBlock;
          v91[1] = 3221225472;
          v91[2] = sub_100008294;
          v91[3] = &unk_100038948;
          v93 = &v107;
          v94 = &v113;
          v37 = v33;
          v92 = v37;
          [v2 copyUserPrivateKeyWithCompletion:v91];
          v38 = dispatch_time(0, 5000000000);
          v39 = dispatch_group_wait(v37, v38);
          if (v108[5] || v39)
          {
            v54 = sub_100002400(v39);
            if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
            {
              sub_10001E08C();
            }

            v55 = *(a1 + 40);
            if (v108[5])
            {
              (*(v55 + 16))(v55);
LABEL_80:

              _Block_object_dispose(&v113, 8);
LABEL_81:

              v53 = v82;
              goto LABEL_82;
            }

            v57 = +[NSError fm_timeoutError];
            (*(v55 + 16))(v55, v57);
LABEL_79:

            goto LABEL_80;
          }

          if (v82 && *(*(&v113 + 1) + 40))
          {
            v40 = objc_alloc_init(FMDPairingLockUpdateRequestInfo);
            v41 = [*(*(&buf + 1) + 40) pairingToken];
            [v40 setPairingCheckToken:v41];

            v42 = [v82 fm_hexString];
            [v40 setLostModePubKey:v42];

            v43 = *(*(&v113 + 1) + 40);
            if (v43)
            {
              v44 = [*(*(&v113 + 1) + 40) fm_hexString];
            }

            else
            {
              v44 = 0;
            }

            [v40 setUserPrivateKey:v44];
            if (v43)
            {
            }

            v58 = [v2 serialNumber];
            [v40 setSerialNumber:v58];

            v59 = +[NSDate date];
            v60 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%lld", [v59 fm_epoch]);
            [v40 setTimeStamp:v60];

            v61 = +[FMDFMIPManager sharedInstance];
            [v61 updatePairingLockInfo:v40 completion:&stru_100038968];
          }

          else
          {
            v40 = sub_100002400(0);
            if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
            {
              sub_10001E050();
            }
          }

          v63 = sub_100002400(v62);
          if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
          {
            *v90 = 0;
            _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "setting the device name", v90, 2u);
          }

          v81 = [*(a1 + 32) _computeName];
          dispatch_group_enter(v37);
          v87[0] = _NSConcreteStackBlock;
          v87[1] = 3221225472;
          v87[2] = sub_100008448;
          v87[3] = &unk_1000388A8;
          v89 = &v107;
          v64 = v37;
          v88 = v64;
          [v2 setName:v81 withCompletion:v87];
          v65 = dispatch_time(0, 5000000000);
          v66 = dispatch_group_wait(v64, v65);
          if (v108[5] || v66)
          {
            v76 = sub_100002400(v66);
            if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
            {
              sub_10001E08C();
            }

            v77 = *(a1 + 40);
            if (v108[5])
            {
              (*(v77 + 16))(v77);
LABEL_78:

              v57 = v81;
              goto LABEL_79;
            }

            v70 = +[NSError fm_timeoutError];
            (*(v77 + 16))(v77, v70);
          }

          else
          {
            v67 = sub_100002400(0);
            if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
            {
              *v90 = 0;
              _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "adding device to data store", v90, 2u);
            }

            dispatch_group_enter(v64);
            v68 = [FMDMagSafeAccessory alloc];
            v69 = [*(a1 + 32) physicalAccessory];
            v70 = [(FMDMagSafeAccessory *)v68 initWithPhysicalAccessory:v69 fmEnabled:1];

            [*(a1 + 32) setMagSafeAccessory:v70];
            v71 = +[FMDMagSafeDataStore sharedInstance];
            v84[0] = _NSConcreteStackBlock;
            v84[1] = 3221225472;
            v84[2] = sub_100008520;
            v84[3] = &unk_1000388A8;
            v86 = &v107;
            v72 = v64;
            v85 = v72;
            [v71 addAccessory:v70 withCompletion:v84];

            v73 = dispatch_time(0, 5000000000);
            v74 = dispatch_group_wait(v72, v73);
            if (v108[5] || v74)
            {
              v78 = sub_100002400(v74);
              if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
              {
                sub_10001E08C();
              }

              v79 = *(a1 + 40);
              if (v108[5])
              {
                (*(v79 + 16))(v79);
              }

              else
              {
                v80 = +[NSError fm_timeoutError];
                (*(v79 + 16))(v79, v80);
              }
            }

            else
            {
              v75 = sub_100002400(0);
              if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
              {
                *v90 = 0;
                _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "Find My setup completed", v90, 2u);
              }

              (*(*(a1 + 40) + 16))();
            }
          }

          goto LABEL_78;
        }
      }
    }

    v47 = *(a1 + 40);
    v48 = [NSError errorWithMessage:@"Invalid register response"];
    (*(v47 + 16))(v47, v48);
LABEL_84:

    goto LABEL_85;
  }

  v45 = sub_100002400(v12);
  if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
  {
    sub_10001E08C();
  }

  v46 = *(a1 + 40);
  if (!v108[5])
  {
    v48 = +[NSError fm_timeoutError];
    (*(v46 + 16))(v46, v48);
    goto LABEL_84;
  }

  (*(v46 + 16))(*(a1 + 40));
LABEL_85:

  _Block_object_dispose(&v107, 8);
  _Block_object_dispose(&buf, 8);
}

void sub_100007F2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, ...)
{
  va_start(va, a54);
  _Block_object_dispose((v54 - 256), 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v54 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_100007FC8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100002400(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412546;
    v15 = v5;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "registerDeviceForPairingLock completed with error = %@ %@", &v14, 0x16u);
  }

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
  v10 = v5;

  v11 = *(*(a1 + 48) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v6;
  v13 = v6;

  dispatch_group_leave(*(a1 + 32));
}

void sub_1000080DC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100002400(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "setupKeysWithCompletion completed with error = %@", &v8, 0xCu);
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  dispatch_group_leave(*(a1 + 32));
}

void sub_1000081B8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100002400(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "setPairingData completed with error = %@", &v8, 0xCu);
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  dispatch_group_leave(*(a1 + 32));
}

void sub_100008294(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v9 = v5;

  v11 = sub_100002400(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "setName completed with error = %@", &v12, 0xCu);
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_10000839C(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_100002400(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "pairingKeyUpdated with error = %@", &v4, 0xCu);
  }
}

void sub_100008448(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v6 = sub_100002400(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "setName completed with error = %@", &v7, 0xCu);
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_100008520(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v6 = sub_100002400(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "add to data store completed with error = %@", &v7, 0xCu);
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_100008AFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100008B28(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained progressFlowWithState:0];

  v3 = sub_100002400(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "operation cancelled", v4, 2u);
  }
}

void sub_100008E24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100008E50(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained progressFlowWithState:0];

  v3 = sub_100002400(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "operation cancelled", v4, 2u);
  }
}

void sub_10000914C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100009178(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained progressFlowWithState:0];

  v3 = sub_100002400(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "operation cancelled", v4, 2u);
  }
}

void sub_100009398(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000093C0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [*(a1 + 32) accountState];
  if (v2 <= 3)
  {
    [WeakRetained progressFlowWithState:qword_100025E10[v2]];
  }
}

void sub_10000956C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000099E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100009A10(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] view];
  [v4 setUserInteractionEnabled:0];

  v5 = a1[4];
  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"MAGSAFE_PAIRING_UPSELL_PROX_CARD_ADDING" value:&stru_10003A130 table:0];
  [v5 showActivityIndicatorWithStatus:v7];

  if (([a1[5] isFindMyAppInstalled] & 1) == 0)
  {
    [a1[5] triggerFindMyAppInstallation];
  }

  v8 = a1[5];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100009B4C;
  v9[3] = &unk_100038A08;
  objc_copyWeak(&v10, a1 + 6);
  [v8 enableFindMyWithCompletion:v9];
  objc_destroyWeak(&v10);
}

void sub_100009B4C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (v3)
  {
    v6 = sub_100002400(WeakRetained);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10001E1E8();
    }

    [v5 progressFlowWithState:8];
  }

  else
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100009C50;
    v7[3] = &unk_100038A08;
    objc_copyWeak(&v8, (a1 + 32));
    [v5 setUpFindMyWithCompletion:v7];
    objc_destroyWeak(&v8);
  }
}

void sub_100009C50(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (v3)
  {
    v6 = sub_100002400(WeakRetained);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10001E258();
    }

    [v5 progressFlowWithState:8];
  }

  else
  {
    v7 = sub_100002400([WeakRetained postNotification:@"com.apple.icloud.findmydeviced.findkit.magSafe.added"]);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_10001E2C8();
    }

    v8 = dispatch_time(0, 8000000000);
    v9 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100009DA0;
    block[3] = &unk_100038780;
    block[4] = v5;
    dispatch_after(v8, v9, block);
  }
}

id sub_100009DA0(uint64_t a1)
{
  v2 = sub_100002400(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_10001E308();
  }

  return [*(a1 + 32) progressFlowWithState:7];
}

void sub_10000A80C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000A884(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained progressFlowWithState:0];

  v3 = [*(a1 + 32) physicalAccessory];
  v4 = [v3 serialNumber];
  v5 = [NSString stringWithFormat:@"fmip1://device/device?sn=%@", v4];

  v6 = +[LSApplicationWorkspace defaultWorkspace];
  v7 = [NSURL URLWithString:v5];
  v9 = FBSOpenApplicationOptionKeyPromptUnlockDevice;
  v10 = &__kCFBooleanTrue;
  v8 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  [v6 openSensitiveURL:v7 withOptions:v8];
}

void sub_10000A9C8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained progressFlowWithState:0];
}

void sub_10000AD98(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_10000ADD0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained progressFlowWithState:0];

  if (*(a1 + 48) == 1)
  {
    v3 = [NSString stringWithFormat:@"mailto:%@", *(a1 + 32)];
    v4 = [NSURLComponents componentsWithString:v3];
  }

  else
  {
    v4 = [NSURLComponents componentsWithString:@"sms://open"];
    v3 = [NSURLQueryItem queryItemWithName:@"address" value:*(a1 + 32)];
    v13 = v3;
    v5 = [NSArray arrayWithObjects:&v13 count:1];
    [v4 setQueryItems:v5];
  }

  v6 = +[NSError fm_genericError];
  v7 = +[LSApplicationWorkspace defaultWorkspace];
  v8 = [v4 URL];
  v12 = v6;
  [v7 openURL:v8 withOptions:0 error:&v12];
  v9 = v12;

  if (v9)
  {
    v11 = sub_100002400(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10001E348();
    }
  }
}

void sub_10000AFA8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained progressFlowWithState:0];

  v3 = +[LSApplicationWorkspace defaultWorkspace];
  v2 = [NSURL URLWithString:@"https://support.apple.com/kb/HT210982"];
  [v3 openURL:v2 withOptions:0];
}

void sub_10000B2B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000B2E4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained progressFlowWithState:0];
}

void sub_10000B44C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000B46C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained progressFlowWithState:0];

  v3 = sub_100002400(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "waiting to be implemented", v4, 2u);
  }
}

void sub_10000B91C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000B948(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_10000BA48;
  v10 = &unk_100038A80;
  objc_copyWeak(&v12, (a1 + 40));
  v11 = *(a1 + 32);
  v4 = SBSRequestPasscodeUnlockUI();
  v5 = sub_100002400(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "waiting for unlock", v6, 2u);
  }

  objc_destroyWeak(&v12);
}

void sub_10000BA48(uint64_t a1, int a2)
{
  v4 = sub_100002400(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109120;
    v9[1] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "SBSRequestPasscodeUnlockUI unlocked = %d", v9, 8u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (a2 && (v6 = [*(a1 + 32) isLocked], (v6 & 1) == 0))
  {
    v8 = sub_100002400(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9[0]) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "device unlocked", v9, 2u);
    }

    [WeakRetained continueWithAccountValidationFlow];
  }

  else
  {
    v7 = sub_100002400([WeakRetained progressFlowWithState:0]);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9[0]) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "device locked", v9, 2u);
    }
  }
}

void sub_10000BE1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000BE44(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_10000BF44;
  v10 = &unk_100038AA8;
  v11 = *(a1 + 32);
  objc_copyWeak(&v12, (a1 + 40));
  v4 = SBSRequestPasscodeUnlockUI();
  v5 = sub_100002400(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "waiting for unlock", v6, 2u);
  }

  objc_destroyWeak(&v12);
}

void sub_10000BF44(uint64_t a1, int a2)
{
  v4 = sub_100002400(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 67109120;
    v10[1] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "SBSRequestPasscodeUnlockUI unlocked = %d", v10, 8u);
  }

  if (a2 && (v5 = [*(a1 + 32) isLocked], (v5 & 1) == 0))
  {
    v9 = sub_100002400(v5);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10[0]) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "device unlocked", v10, 2u);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained progressFlowWithState:10];
  }

  else
  {
    v6 = objc_loadWeakRetained((a1 + 40));
    [v6 progressFlowWithState:0];

    WeakRetained = sub_100002400(v7);
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10[0]) = 0;
      _os_log_impl(&_mh_execute_header, WeakRetained, OS_LOG_TYPE_DEFAULT, "device locked", v10, 2u);
    }
  }
}

void sub_10000C618(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000C644(uint64_t a1)
{
  v2 = +[NSError fm_genericError];
  v3 = +[LSApplicationWorkspace defaultWorkspace];
  v4 = [NSURL URLWithString:@"prefs:root=APPLE_ACCOUNT&path=ICLOUD_SERVICE"];
  v14 = FBSOpenApplicationOptionKeyPromptUnlockDevice;
  v15 = &__kCFBooleanTrue;
  v5 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  v13 = v2;
  [v3 openSensitiveURL:v4 withOptions:v5 error:&v13];
  v6 = v13;

  if (v6)
  {
    v8 = sub_100002400(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10001E348();
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained progressFlowWithState:0];

  v11 = sub_100002400(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "operation cancelled", v12, 2u);
  }
}

void sub_10000CA88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000CAB4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained upgradeAccountButtonPressedOn:*(a1 + 32)];
}

void sub_10000CD4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000CD70(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained progressFlowWithState:0];

  v3 = sub_100002400(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "operation cancelled", v4, 2u);
  }
}

void sub_10000D580(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_10000D59C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = +[NSBundle mainBundle];
    v6 = [v5 localizedStringForKey:@"MAGSAFE_PAIRING_UPSELL_ALERT_SET_UP_WALLET_LATER_TITLE" value:&stru_10003A130 table:0];

    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"MAGSAFE_PAIRING_UPSELL_ALERT_SET_UP_WALLET_LATER_MESSAGE" value:&stru_10003A130 table:0];

    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"MAGSAFE_PAIRING_UPSELL_ALERT_SET_UP_WALLET_LATER_CONFIRM" value:&stru_10003A130 table:0];

    v11 = +[NSBundle mainBundle];
    v12 = [v11 localizedStringForKey:@"MAGSAFE_PAIRING_UPSELL_ALERT_SET_UP_WALLET_LATER_CANCEL" value:&stru_10003A130 table:0];

    v13 = [UIAlertController alertControllerWithTitle:v6 message:v8 preferredStyle:1];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10000D804;
    v16[3] = &unk_100038B18;
    v16[4] = *(a1 + 32);
    objc_copyWeak(&v17, (a1 + 40));
    v14 = [UIAlertAction actionWithTitle:v10 style:0 handler:v16];
    [v13 addAction:v14];
    v15 = [UIAlertAction actionWithTitle:v12 style:1 handler:0];
    [v13 addAction:v15];

    [v13 setPreferredAction:v14];
    [WeakRetained presentViewController:v13 animated:1 completion:0];

    objc_destroyWeak(&v17);
  }
}

void sub_10000D804(uint64_t a1)
{
  [*(a1 + 32) storeAccessoryAsNotFindmyEnabled:&stru_100038AF0];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained presentingViewController];
  [v2 dismissViewControllerAnimated:1 completion:0];
}

void sub_10000D878(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_100002400(v2);
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10001E3B8();
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "storeAccessoryAsNotFindmyEnabled completed with success", v5, 2u);
  }
}

void sub_10000E338(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000E354(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = sub_100002400(WeakRetained);
  v7 = v6;
  if (v4)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10001E52C(v4);
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#Installation of Find My started successfully.", buf, 2u);
    }

    v11 = 0;
    v8 = [IXAppInstallCoordinator existingCoordinatorForAppWithBundleID:@"com.apple.findmy" error:&v11];
    v9 = v11;
    v7 = v9;
    if (v9)
    {
      v10 = sub_100002400(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10001E5B0(v7);
      }
    }

    else
    {
      [WeakRetained setAppInstallCoordinator:v8];
    }
  }
}

void sub_10000E804(uint64_t a1)
{
  v2 = [*(a1 + 32) physicalAccessory];
  v3 = [v2 serialNumber];
  v4 = [FMDExtHelper deviceIDFromAddress:v3];

  [*(a1 + 32) _removeAccessoryToDataStoreWithID:v4];
  [*(a1 + 32) launchSettingsAppUpgradeFlow];
  [*(a1 + 32) progressFlowWithState:0];
}

void sub_10000EE1C(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_10000EE60(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

id sub_10000EE80(uint64_t a1)
{
  if (qword_100045E20 != -1)
  {
    sub_10001E6AC();
  }

  v2 = qword_100045E28;

  return v2;
}

void sub_10000EEC4(id a1)
{
  qword_100045E28 = os_log_create("com.apple.icloud.findmydeviced", "_");

  _objc_release_x1();
}

id sub_10000EF08(uint64_t a1)
{
  if (qword_100045E30 != -1)
  {
    sub_10001E6C0();
  }

  v2 = qword_100045E38;

  return v2;
}

void sub_10000EF4C(id a1)
{
  qword_100045E38 = os_log_create("com.apple.icloud.findmydeviced", "locations");

  _objc_release_x1();
}

id sub_10000EF90(uint64_t a1)
{
  if (qword_100045E40 != -1)
  {
    sub_10001E6D4();
  }

  v2 = qword_100045E48;

  return v2;
}

void sub_10000EFD4(id a1)
{
  qword_100045E48 = os_log_create("com.apple.icloud.findmydeviced", "accessory");

  _objc_release_x1();
}

id sub_10000F018(uint64_t a1)
{
  if (qword_100045E50 != -1)
  {
    sub_10001E6E8();
  }

  v2 = qword_100045E58;

  return v2;
}

void sub_10000F05C(id a1)
{
  qword_100045E58 = os_log_create("com.apple.icloud.findmydeviced", "traffic");

  _objc_release_x1();
}

id sub_10000F0A0(uint64_t a1)
{
  if (qword_100045E60 != -1)
  {
    sub_10001E6FC();
  }

  v2 = qword_100045E68;

  return v2;
}

void sub_10000F0E4(id a1)
{
  qword_100045E68 = os_log_create("com.apple.icloud.findmydeviced", "encoder");

  _objc_release_x1();
}

id sub_10000F128(uint64_t a1)
{
  if (qword_100045E70 != -1)
  {
    sub_10001E710();
  }

  v2 = qword_100045E78;

  return v2;
}

void sub_10000F16C(id a1)
{
  qword_100045E78 = os_log_create("com.apple.icloud.findmydeviced", "bluetoothsession");

  _objc_release_x1();
}

id sub_10000F1B0(uint64_t a1)
{
  if (qword_100045E80 != -1)
  {
    sub_10001E724();
  }

  v2 = qword_100045E88;

  return v2;
}

void sub_10000F1F4(id a1)
{
  qword_100045E88 = os_log_create("com.apple.icloud.findmydeviced", "extensions");

  _objc_release_x1();
}

id sub_10000F238(uint64_t a1)
{
  if (qword_100045E90 != -1)
  {
    sub_10001E738();
  }

  v2 = qword_100045E98;

  return v2;
}

void sub_10000F27C(id a1)
{
  qword_100045E98 = os_log_create("com.apple.icloud.findmydeviced", "extensions_playSound");

  _objc_release_x1();
}

id sub_10000F2C0(uint64_t a1)
{
  if (qword_100045EA0 != -1)
  {
    sub_10001E74C();
  }

  v2 = qword_100045EA8;

  return v2;
}

void sub_10000F304(id a1)
{
  qword_100045EA8 = os_log_create("com.apple.icloud.findmydeviced", "secureLocations");

  _objc_release_x1();
}

id sub_10000F348(uint64_t a1)
{
  if (qword_100045EB0 != -1)
  {
    sub_10001E760();
  }

  v2 = qword_100045EB8;

  return v2;
}

void sub_10000F38C(id a1)
{
  qword_100045EB8 = os_log_create("com.apple.icloud.findmydeviced", "healUCRT");

  _objc_release_x1();
}

id sub_10000F3D0(uint64_t a1)
{
  if (qword_100045EC0 != -1)
  {
    sub_10001E774();
  }

  v2 = qword_100045EC8;

  return v2;
}

void sub_10000F414(id a1)
{
  qword_100045EC8 = os_log_create("com.apple.icloud.findmydeviced", "DeviceTnL");

  _objc_release_x1();
}

id sub_10000F458(uint64_t a1)
{
  if (qword_100045ED0 != -1)
  {
    sub_10001E788();
  }

  v2 = qword_100045ED8;

  return v2;
}

void sub_10000F49C(id a1)
{
  qword_100045ED8 = os_log_create("com.apple.icloud.findmydeviced", "repairDevice");

  _objc_release_x1();
}

id sub_10000F4E0(uint64_t a1)
{
  if (qword_100045EE0 != -1)
  {
    sub_10001E79C();
  }

  v2 = qword_100045EE8;

  return v2;
}

void sub_10000F524(id a1)
{
  qword_100045EE8 = os_log_create("com.apple.icloud.findmydeviced", "ALFailureAnalytics");

  _objc_release_x1();
}

id sub_10000F568(uint64_t a1)
{
  if (qword_100045EF0 != -1)
  {
    sub_10001E7B0();
  }

  v2 = qword_100045EF8;

  return v2;
}

void sub_10000F5AC(id a1)
{
  qword_100045EF8 = os_log_create("com.apple.icloud.findmydeviced", "disableLocationDisplay");

  _objc_release_x1();
}

id sub_10000F5F0(uint64_t a1)
{
  if (qword_100045F00 != -1)
  {
    sub_10001E7C4();
  }

  v2 = qword_100045F08;

  return v2;
}

void sub_10000F634(id a1)
{
  qword_100045F08 = os_log_create("com.apple.icloud.findmydeviced", "accountRatchet");

  _objc_release_x1();
}

id sub_10000F678(uint64_t a1)
{
  if (qword_100045F10 != -1)
  {
    sub_10001E7D8();
  }

  v2 = qword_100045F18;

  return v2;
}

void sub_10000F6BC(id a1)
{
  qword_100045F18 = os_log_create("com.apple.icloud.findmydeviced", "ownerAuthentication");

  _objc_release_x1();
}

id sub_10000F700(uint64_t a1)
{
  if (qword_100045F20 != -1)
  {
    sub_10001E7EC();
  }

  v2 = qword_100045F28;

  return v2;
}

void sub_10000F744(id a1)
{
  if ([FMPreferencesUtil BOOLForKey:@"ShowAutomationLogs" inDomain:@"com.apple.icloud.findmydeviced.notbackedup"])
  {
    qword_100045F28 = os_log_create("com.apple.icloud.findmydeviced", "automation");

    _objc_release_x1();
  }
}

void sub_100010344(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10001036C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100010384(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v8 = sub_100002400(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = v7;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#CA getAccessoryUserName completed with error %@ %@", &v9, 0x16u);
  }

  if (!v7)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_10001077C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000107A8(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = sub_100002400(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(*(*(a1 + 40) + 8) + 24);
    v8 = 138412546;
    v9 = v5;
    v10 = 2048;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#CA getPairingStatus completed with error %@ %lu", &v8, 0x16u);
  }

  if (!v5)
  {
    *(*(*(a1 + 40) + 8) + 24) = a2;
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_100010C40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100010C6C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100002400(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#CA setPublicNVMKeyValues completed with error %@", &v6, 0xCu);
  }

  if (!v3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained setPairingData:*(a1 + 32)];
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100010F20(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100002400(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v30 = v6;
    v31 = 2112;
    v32 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#CA getPublicNVMKeyValues completed with error %@ %@", buf, 0x16u);
  }

  if (v6)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v8 = objc_alloc_init(NSMutableData);
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v9 = *(a1 + 32);
    v10 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v25;
      v22 = a1;
      v23 = 0;
      while (2)
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v25 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v24 + 1) + 8 * i);
          v15 = [v14 description];
          v16 = [v5 objectForKeyedSubscript:v15];

          if (!v16 || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass & 1) == 0))
          {
            v18 = sub_100002400(isKindOfClass);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              sub_10001E800(v14, v16, v18);
            }

            a1 = v22;
            v6 = v23;
            goto LABEL_18;
          }

          [v8 appendData:v16];
        }

        v11 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
        a1 = v22;
        v6 = v23;
        if (v11)
        {
          continue;
        }

        break;
      }
    }

LABEL_18:

    v19 = [[FMDRemoteUnlockPairingData alloc] initWithData:v8];
    [*(a1 + 40) setPairingData:v19];

    v20 = *(a1 + 48);
    v21 = [*(a1 + 40) pairingData];
    (*(v20 + 16))(v20, v21, 0);
  }
}

void sub_100011384(id *a1)
{
  v2 = [a1[4] connectionInfo];
  v3 = a1[5];
  v4 = [a1[4] endPointUUID];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001148C;
  v5[3] = &unk_100038E10;
  objc_copyWeak(&v8, a1 + 7);
  v6 = a1[5];
  v7 = a1[6];
  [v2 setAccessoryUserName:v3 forEndpoint:v4 withReply:v5];

  objc_destroyWeak(&v8);
}

void sub_10001148C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100002400(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#CA set name completed with error %@", &v7, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v6 = WeakRetained;
  if (!v3)
  {
    [WeakRetained setName:*(a1 + 32)];
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1000117A4(id *a1)
{
  v2 = [a1[4] connectionInfo];
  v3 = [a1[4] endPointUUID];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001188C;
  v4[3] = &unk_100038E88;
  objc_copyWeak(&v6, a1 + 6);
  v5 = a1[5];
  [v2 provisionAccessoryForFindMy:v3 withReply:v4];

  objc_destroyWeak(&v6);
}

void sub_10001188C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100002400(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#CA set keys completed with error %@", &v7, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (!v3)
  {
    [WeakRetained setIsNVMSetup:1];
    [v6 setKeysAvailable:1];
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100011B58(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 48));
  _Unwind_Resume(a1);
}

void sub_100011B84(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100002400(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "### #CA completed with error %@", &v7, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (!v3)
  {
    [WeakRetained setIsNVMSetup:0];
    [v6 setKeysAvailable:0];
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100011D8C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100002400(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#CA beginVendorKeyErase completed with accessoryNonce %@  error %@", &v8, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100011FD0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100002400(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#CA continueVendorKeyErase completed with error %@", &v5, 0xCu);
  }

  if (!v3)
  {
    [*(a1 + 32) setIsNVMSetup:0];
    [*(a1 + 32) setKeysAvailable:0];
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1000121C8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100002400(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#CA copyUserPrivateKey completed with key = %@ error %@", &v8, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1000123C4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100002400(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#CA beginUserKeyErase completed with accessoryNonce %@  error %@", &v8, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100012608(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100002400(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#CA continueUserKeyErase completed with error %@", &v5, 0xCu);
  }

  if (!v3)
  {
    [*(a1 + 32) setIsNVMSetup:0];
    [*(a1 + 32) setKeysAvailable:0];
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100012800(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100002400(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#CA cancelUserKeyErase completed with error %@", &v6, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

void sub_1000129E0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100002400(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#CA cancelVendorKeyErase completed with error %@", &v6, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

void sub_100012EB0(id a1)
{
  v2 = +[FMSystemInfo sharedInstance];
  v1 = [v2 isInternalBuild];
  if (v1)
  {
    LOBYTE(v1) = [FMPreferencesUtil BOOLForKey:@"EnableMagSafeMocking" inDomain:kFMDNotBackedUpPrefDomain];
  }

  byte_100045F30 = v1;
}

void sub_100012F90(id a1)
{
  v1 = +[FMDAutomationHelperFactory sharedFactory];
  v2 = [v1 automationHelperClassWithName:@"FMDAutomationACCConnectionInfo"];

  qword_100045F40 = objc_alloc_init(v2);

  _objc_release_x1();
}

void sub_100013370(uint64_t a1)
{
  v2 = sub_100002400(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v13 = 136315906;
    v14 = "[FMDCoreAccessoryManager accessoryConnectionAttached:type:info:properties:]_block_invoke";
    v15 = 2112;
    v16 = v3;
    v17 = 2112;
    v18 = v4;
    v19 = 2112;
    v20 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#CA %s %@ %@ %@", &v13, 0x2Au);
  }

  v6 = [*(a1 + 56) cache];
  v7 = [v6 isCachedAccessoryWithUUID:*(a1 + 32)];

  if (v7)
  {
    v8 = [*(a1 + 56) cache];
    v9 = [v8 getAccessoryWithUUID:*(a1 + 32)];
  }

  else
  {
    v10 = [FMDMagSafeRawInfo alloc];
    v8 = [*(a1 + 56) connectionInfo];
    v9 = [(FMDMagSafeRawInfo *)v10 initWithConnectionInfo:v8];
  }

  v11 = v9;

  [(FMDMagSafeRawInfo *)v11 updateWithProperties:*(a1 + 48)];
  [(FMDMagSafeRawInfo *)v11 updateWithAccessoryInfo:*(a1 + 40)];
  [(FMDMagSafeRawInfo *)v11 setConnectionUUID:*(a1 + 32)];
  v12 = [*(a1 + 56) cache];
  [v12 saveAccessory:v11 withUUID:*(a1 + 32)];
}

void sub_10001361C(uint64_t a1)
{
  v2 = sub_100002400(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    *buf = 136315650;
    *v23 = "[FMDCoreAccessoryManager accessoryEndpointAttached:transportType:protocol:properties:forConnection:]_block_invoke";
    *&v23[8] = 2112;
    *&v23[10] = v3;
    v24 = 2112;
    v25 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#CA %s %@ %@", buf, 0x20u);
  }

  v5 = [*(a1 + 48) cache];
  v6 = [v5 getAccessoryWithUUID:*(a1 + 32)];

  [v6 updateWithProperties:*(a1 + 40)];
  [v6 setEndPointUUID:*(a1 + 56)];
  [v6 setProtocol:*(a1 + 64)];
  [v6 setTransportType:*(a1 + 68)];
  v7 = [*(a1 + 48) cache];
  [v7 accessoryDidUpdateWithUUID:*(a1 + 32)];

  v9 = sub_100002400(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 64);
    v11 = @"eACCEndpoint_Protocol_MFi4Auth";
    if (v10 != 14)
    {
      v11 = @"unexpected";
    }

    *buf = 67109378;
    *v23 = v10;
    *&v23[4] = 2112;
    *&v23[6] = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#CA protocol =  %u %@", buf, 0x12u);
  }

  v13 = sub_100002400(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a1 + 68);
    v15 = @"eACCEndpoint_TransportType_NFC";
    if (v14 != 13)
    {
      v15 = @"unexpected";
    }

    *buf = 67109378;
    *v23 = v14;
    *&v23[4] = 2112;
    *&v23[6] = v15;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#CA transportType =  %u %@", buf, 0x12u);
  }

  if (![v6 isMF4i] || (v16 = objc_msgSend(v6, "authPassed"), v16))
  {
    v17 = dispatch_get_global_queue(0, 0);
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100013944;
    v20[3] = &unk_100038858;
    v20[4] = *(a1 + 48);
    v21 = v6;
    dispatch_async(v17, v20);
  }

  v18 = sub_100002400(v16);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [*(a1 + 48) accessoryRawInfo];
    *buf = 138412290;
    *v23 = v19;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "dict = %@", buf, 0xCu);
  }
}

void sub_100013944(uint64_t a1)
{
  v3 = [*(a1 + 32) delegate];
  v2 = [*(a1 + 40) serialNumber];
  [v3 accessoryDidConnect:v2];
}

void sub_100013AF4(uint64_t a1)
{
  v2 = [*(a1 + 32) cache];
  v3 = [v2 getAccessoryWithUUID:*(a1 + 40)];
  v4 = [v3 serialNumber];

  v6 = sub_100002400(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#CA current magsafe accessory disconnected  %@", buf, 0xCu);
  }

  v7 = dispatch_get_global_queue(0, 0);
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_100013C74;
  v13 = &unk_100038858;
  v14 = *(a1 + 32);
  v15 = v4;
  v8 = v4;
  dispatch_async(v7, &v10);

  v9 = [*(a1 + 32) cache];
  [v9 deleteAccessoryWithUUID:*(a1 + 40)];
}

void sub_100013C74(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryDidDisconnect:*(a1 + 40)];
}

void sub_100013FF8(uint64_t a1)
{
  v2 = [*(a1 + 32) cache];
  v3 = [v2 getAccessoryWithUUID:*(a1 + 40)];

  if (v3)
  {
    if ([v3 isMF4i])
    {
      if (([v3 authPassed] & 1) == 0)
      {
        [v3 updateWithProperties:*(a1 + 48)];
        v4 = [*(a1 + 32) cache];
        [v4 accessoryDidUpdateWithUUID:*(a1 + 40)];

        if ([v3 authPassed])
        {
          v11[0] = 0;
          v11[1] = v11;
          v11[2] = 0x3042000000;
          v11[3] = sub_1000141B8;
          v11[4] = sub_1000141C4;
          objc_initWeak(&v12, *(a1 + 32));
          v5 = [*(a1 + 32) connectionInfo];
          v6 = *(a1 + 40);
          v7[0] = _NSConcreteStackBlock;
          v7[1] = 3221225472;
          v7[2] = sub_1000141CC;
          v7[3] = &unk_100039A08;
          v8 = v3;
          v10 = v11;
          v9 = *(a1 + 40);
          [v5 accessoryInfoForConnection:v6 withReply:v7];

          _Block_object_dispose(v11, 8);
          objc_destroyWeak(&v12);
        }
      }
    }
  }
}

void sub_100014198(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v16 + 40));
  _Unwind_Resume(a1);
}

void sub_1000141CC(uint64_t a1)
{
  [*(a1 + 32) updateWithAccessoryInfo:?];
  WeakRetained = objc_loadWeakRetained((*(*(a1 + 48) + 8) + 40));
  v3 = [WeakRetained cache];
  [v3 accessoryDidUpdateWithUUID:*(a1 + 40)];

  v4 = dispatch_get_global_queue(0, 0);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000142B8;
  v5[3] = &unk_1000399E0;
  v7 = *(a1 + 48);
  v6 = *(a1 + 32);
  dispatch_async(v4, v5);
}

void sub_1000142B8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(*(a1 + 40) + 8) + 40));
  v2 = [WeakRetained delegate];
  v3 = [*(a1 + 32) serialNumber];
  [v2 accessoryDidConnect:v3];
}

uint64_t start(int a1, char **a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  objc_autoreleasePoolPop(v4);
  v7 = UIApplicationMain(a1, a2, 0, v6);

  return v7;
}

void sub_100014DE8(id a1)
{
  qword_100045F50 = objc_opt_new();

  _objc_release_x1();
}

uint64_t sub_100016458(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100017904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  _Block_object_dispose(&a49, 8);
  _Block_object_dispose((v49 - 176), 8);
  _Block_object_dispose(&STACK[0x220], 8);
  _Block_object_dispose(&STACK[0x250], 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000179CC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000179E4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100002400(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412546;
    v15 = v6;
    v16 = 2112;
    v17 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "getPairingDataWithCompletion completed with error = %@ %@", &v14, 0x16u);
  }

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
  v10 = v5;

  v11 = *(*(a1 + 48) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v6;
  v13 = v6;

  dispatch_group_leave(*(a1 + 32));
}

void sub_100017AF8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100002400(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412546;
    v15 = v5;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "beginUserKeyEraseWithCompletion return with accessoryNonce = %@ error = %@", &v14, 0x16u);
  }

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
  v10 = v5;

  v11 = *(*(a1 + 48) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v6;
  v13 = v6;

  dispatch_group_leave(*(a1 + 32));
}

void sub_100017C0C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100002400(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412546;
    v15 = v5;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "getAuthNonceWithCompletion return with accessoryNonce = %@ error = %@", &v14, 0x16u);
  }

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
  v10 = v5;

  v11 = *(*(a1 + 48) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v6;
  v13 = v6;

  dispatch_group_leave(*(a1 + 32));
}

void sub_100017D20(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  v9 = sub_100002400(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [*(*(*(a1 + 40) + 8) + 40) phoneNumber];
    v11 = [*(*(*(a1 + 40) + 8) + 40) serverNonce];
    v12 = [*(*(*(a1 + 40) + 8) + 40) signature];
    v13 = [*(*(*(a1 + 40) + 8) + 40) statusCode];
    v14 = 138413058;
    v15 = v10;
    v16 = 2112;
    v17 = v11;
    v18 = 2112;
    v19 = v12;
    v20 = 2112;
    v21 = v13;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "got pairingCheckResponseInfo %@ %@ %@ %@", &v14, 0x2Au);
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_100017EB8(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void sub_100017F18(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void sub_100017F78(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100002400(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v9 = 138412546;
    v10 = v5;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "continueUserKeyErase return with serverNounce = %@ error = %@", &v9, 0x16u);
  }

  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;
  v8 = v3;

  dispatch_group_leave(*(a1 + 40));
}

void sub_100018064(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100002400(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v9 = 138412546;
    v10 = v5;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "vendorKeyErase return with serverNonce = %@ error = %@", &v9, 0x16u);
  }

  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;
  v8 = v3;

  dispatch_group_leave(*(a1 + 40));
}

void sub_100018A10(void *a1, void *a2)
{
  v3 = a2;
  v4 = sub_100002400(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[4];
    v6 = a1[5];
    v12 = 138412802;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    v16 = 2112;
    v17 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Lost Mode key roll time updated for %@ to %@ with error = %@", &v12, 0x20u);
  }

  if (!v3)
  {
    v7 = [NSMutableArray arrayWithArray:a1[6]];
    [v7 removeObject:a1[4]];
    v8 = +[FMDMagSafeDataStore sharedInstance];
    v9 = [v8 readLostModeAccessoriesListVersion];

    v10 = +[FMDMagSafeDataStore sharedInstance];
    v11 = [v10 writeLostModeInfo:v7 version:v9];
  }
}

void sub_100018B60(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_100002400(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "pairingKeyUpdated with error = %@", &v4, 0xCu);
  }
}

void sub_100018E34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_100018E60(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v9 = v5;

  v11 = sub_100002400(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "setName completed with error = %@", &v12, 0xCu);
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_10001916C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10001918C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100002400(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "setPairingData completed with error = %@", &v8, 0xCu);
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  dispatch_group_leave(*(a1 + 32));
}

void sub_1000195E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_100019624(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100002400(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412546;
    v15 = v5;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "registerDeviceForPairingLock completed with error = %@ %@", &v14, 0x16u);
  }

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
  v10 = v5;

  v11 = *(*(a1 + 48) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v6;
  v13 = v6;

  dispatch_group_leave(*(a1 + 32));
}

void sub_100019960(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_100019988(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100002400(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412546;
    v15 = v6;
    v16 = 2112;
    v17 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "getPairingDataWithCompletion completed with error = %@ %@", &v14, 0x16u);
  }

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
  v10 = v5;

  v11 = *(*(a1 + 48) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v6;
  v13 = v6;

  dispatch_group_leave(*(a1 + 32));
}

void sub_10001A064(id a1)
{
  qword_100045F60 = objc_alloc_init(FMDMagSafeDataStore);

  _objc_release_x1();
}

void sub_10001A300(uint64_t a1)
{
  v2 = [*(a1 + 32) _writeAccessoriesToDisk:&__NSDictionary0__struct];
  v3 = [*(a1 + 32) writeLostModeInfo:&__NSArray0__struct version:&stru_10003A130];
  v4 = +[NSFileManager defaultManager];
  v5 = [objc_opt_class() deprecatedStorageLocation];
  [v4 removeItemAtURL:v5 error:0];

  v7 = +[NSFileManager defaultManager];
  v6 = [objc_opt_class() deprecatedLostModeStorageLocation];
  [v7 removeItemAtURL:v6 error:0];
}

void sub_10001A4CC(uint64_t a1)
{
  v2 = [NSMutableDictionary alloc];
  v3 = [*(a1 + 32) readAllAccessoriesFromDisk];
  v4 = [v2 initWithDictionary:v3];

  v5 = *(a1 + 40);
  v6 = [v5 accessoryIdentifier];
  [v4 setObject:v5 forKeyedSubscript:v6];

  v7 = [*(a1 + 32) _writeAccessoriesToDisk:v4];
  v8 = dispatch_get_global_queue(0, 0);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10001A600;
  v11[3] = &unk_100039BB0;
  v9 = *(a1 + 48);
  v12 = v7;
  v13 = v9;
  v10 = v7;
  dispatch_async(v8, v11);
}

void sub_10001A6EC(uint64_t a1)
{
  v2 = [NSMutableDictionary alloc];
  v3 = [*(a1 + 32) readAllAccessoriesFromDisk];
  v4 = [v2 initWithDictionary:v3];

  [v4 removeObjectForKey:*(a1 + 40)];
  v5 = [*(a1 + 32) _writeAccessoriesToDisk:v4];
  v6 = dispatch_get_global_queue(0, 0);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10001A804;
  v9[3] = &unk_100039BB0;
  v7 = *(a1 + 48);
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, v9);
}

void sub_10001A8F0(uint64_t a1)
{
  v2 = [NSMutableDictionary alloc];
  v27 = a1;
  v3 = [*(a1 + 32) readAllAccessoriesFromDisk];
  v4 = [v2 initWithDictionary:v3];

  v36 = 0u;
  v34 = 0u;
  v35 = 0u;
  v33 = 0u;
  v5 = [v4 allValues];
  v6 = [v5 countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v6)
  {
    v7 = v6;
    v26 = v4;
    v8 = 0;
    v9 = *v34;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v34 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v33 + 1) + 8 * i);
        v12 = [v11 serialNumbers];
        v13 = [v12 objectForKeyedSubscript:@"systemSerialNumber"];
        v14 = [v13 isEqualToString:*(v27 + 40)];

        if (v14)
        {
          v15 = [v11 accessoryIdentifier];

          v8 = v15;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v7);

    v4 = v26;
    if (v8)
    {
      v17 = sub_10000F1B0(v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = *(v27 + 40);
        *buf = 138412546;
        v38 = v18;
        v39 = 2112;
        v40 = v8;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "FMDMagSafeDataSource: removing accessory with serialNumber %@ accessoryId = %@", buf, 0x16u);
      }

      [v26 removeObjectForKey:v8];
      v19 = [*(v27 + 32) _writeAccessoriesToDisk:v26];
      v20 = dispatch_get_global_queue(0, 0);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10001AC9C;
      block[3] = &unk_100039BB0;
      v21 = *(v27 + 48);
      v31 = v19;
      v32 = v21;
      v22 = v19;
      dispatch_async(v20, block);

      goto LABEL_18;
    }
  }

  else
  {
  }

  v23 = sub_10000F1B0(v16);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = *(v27 + 40);
    *buf = 138412290;
    v38 = v24;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "FMDMagSafeDataSource: No magsafe accessory with serialNumber %@ found", buf, 0xCu);
  }

  v25 = dispatch_get_global_queue(0, 0);
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_10001ACB0;
  v28[3] = &unk_100039C00;
  v29 = *(v27 + 48);
  dispatch_async(v25, v28);

  v8 = v29;
LABEL_18:
}

void sub_10001B4B4(uint64_t a1)
{
  v2 = [NSMutableDictionary alloc];
  v3 = [*(a1 + 32) readAllAccessoriesFromDisk];
  v4 = [v2 initWithDictionary:v3];

  v5 = [v4 objectForKeyedSubscript:*(a1 + 40)];
  v6 = v5;
  if (v5)
  {
    [v5 setLastLostModeKeyRollTime:*(a1 + 48)];
    v7 = [*(a1 + 32) _writeAccessoriesToDisk:v4];
  }

  else
  {
    v8 = sub_10000EE80(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10001F034(v8, v9, v10, v11, v12, v13, v14, v15);
    }

    v7 = +[NSError fm_genericError];
  }

  v16 = v7;
  v17 = dispatch_get_global_queue(0, 0);
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10001B62C;
  v20[3] = &unk_100039BB0;
  v18 = *(a1 + 56);
  v21 = v16;
  v22 = v18;
  v19 = v16;
  dispatch_async(v17, v20);
}

uint64_t sub_10001B62C(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

void sub_10001B804(id a1)
{
  v1 = NSStringFromSelector("pairingCheckToken");
  v7[0] = v1;
  v2 = NSStringFromSelector("lostModePrivateKey");
  v7[1] = v2;
  v3 = NSStringFromSelector("phoneNumber");
  v7[2] = v3;
  v4 = NSStringFromSelector("keysUpdated");
  v7[3] = v4;
  v5 = [NSArray arrayWithObjects:v7 count:4];
  v6 = qword_100045F70;
  qword_100045F70 = v5;
}

void sub_10001C6D8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

void sub_10001D590(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

id *sub_10001D8A0(id *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v4 = a4;
    v5 = result;
    v6 = (a2 + a3);
    do
    {
      v7 = *v6++;
      result = [v5[4] appendFormat:@"%02lx", v7];
      --v4;
    }

    while (v4);
  }

  return result;
}

void sub_10001D918(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Could not find class %@ in the automation bundle", &v2, 0xCu);
}

void sub_10001D9A4(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#PARSING invalid or no mask in maskInfo %@", &v2, 0xCu);
}

void sub_10001DA1C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#PARSING invalid or no pattern in maskInfo %@", &v2, 0xCu);
}

void sub_10001DA94(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  sub_100003B70(&_mh_execute_header, a2, a3, "FMDRemoteAsset: Invalid cached asset removing failed with error = : %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_10001DB00(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  sub_100003B70(&_mh_execute_header, a2, a3, "FMDRemoteAsset: asset validation error %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_10001DB6C(uint64_t a1, void *a2, NSObject *a3)
{
  v5 = [*(a1 + 40) absoluteString];
  v6 = [a2 URL];
  v7 = [v6 absoluteString];
  v8 = 138412546;
  v9 = v5;
  v10 = 2112;
  v11 = v7;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "FMDRemoteAsset: asset validation failed. requestURL = %@, responseURL = %@", &v8, 0x16u);
}

void sub_10001DCB4()
{
  sub_10000EE48();
  sub_10000EE3C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10001DD24()
{
  sub_10000EE54();
  sub_10000EE3C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10001DD60()
{
  sub_10000EE54();
  sub_10000EE3C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10001DD9C()
{
  sub_10000EE48();
  sub_10000EE3C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10001DE0C()
{
  sub_10000EE54();
  sub_10000EE3C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10001DE48()
{
  sub_10000EE54();
  sub_10000EE3C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10001DE84(void *a1, NSObject *a2)
{
  [a1 magSafeState];
  sub_10000EE48();
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "not starting magSafe flow setup with state = %lu", v3, 0xCu);
}

void sub_10001DF0C()
{
  sub_10000EE0C(__stack_chk_guard);
  sub_10000EDF4();
  sub_10000EE1C(&_mh_execute_header, v0, v1, "Failed to add device with error = %@ waitError = %ld");
}

void sub_10001DF74()
{
  sub_10000EE0C(__stack_chk_guard);
  sub_10000EDF4();
  sub_10000EE1C(&_mh_execute_header, v0, v1, "Failed to set name with error = %@ waitError = %ld");
}

void sub_10001DFDC(void *a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "setting up pairing data %@ %@", buf, 0x16u);
}

void sub_10001E050()
{
  sub_10000EE54();
  sub_10000EE3C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10001E08C()
{
  sub_10000EE0C(__stack_chk_guard);
  sub_10000EDF4();
  sub_10000EE1C(&_mh_execute_header, v0, v1, "Find My setup failed with error = %@ %ld");
}

void sub_10001E0F4()
{
  sub_10000EE48();
  v3 = 2112;
  v4 = v0;
  _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "user %@! %@!", v2, 0x16u);
}

void sub_10001E178()
{
  sub_10000EE48();
  sub_10000EE3C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10001E1E8()
{
  sub_10000EE48();
  sub_10000EE3C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10001E258()
{
  sub_10000EE48();
  sub_10000EE3C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10001E348()
{
  sub_10000EE48();
  sub_10000EE3C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10001E3B8()
{
  sub_10000EE48();
  sub_10000EE3C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10001E428(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Unlock state is %i", v2, 8u);
}

void sub_10001E52C(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_10000EE48();
  sub_10000EE60(&_mh_execute_header, v2, v3, "#Installation of Find My failed. error: %@", v4, v5, v6, v7);
}

void sub_10001E5B0(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_10000EE48();
  sub_10000EE60(&_mh_execute_header, v2, v3, "#Failed to fetch install coordinator for Find My error: %@", v4, v5, v6, v7);
}

void sub_10001E634()
{
  sub_10000EE54();
  sub_10000EE3C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10001E670()
{
  sub_10000EE54();
  sub_10000EE3C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10001E800(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "no data or corrupted data found at key = %@ data = %@", &v3, 0x16u);
}

void sub_10001E908(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "got unexpected lostModeInfo = %@", &v2, 0xCu);
}

void sub_10001E980()
{
  sub_10000EE0C(__stack_chk_guard);
  sub_10000EDF4();
  sub_10000EE1C(&_mh_execute_header, v0, v1, "Find My pairing check failed with error = %@ %ld");
}

void sub_10001E9E8(uint64_t a1, NSObject *a2)
{
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "cancelErase api time out with error = %ld", &v2, 0xCu);
}

void sub_10001EA60(void *a1, NSObject *a2)
{
  v4 = [a1 pairingCheckToken];
  v5 = [v4 fm_hexString];
  v6 = [a1 phoneNumber];
  v7 = [v6 fm_hexString];
  v8 = [a1 keysUpdated];
  v9 = [v8 fm_hexString];
  v10 = [a1 lostModePrivateKey];
  v11 = [v10 fm_hexString];
  v12 = 138413058;
  v13 = v5;
  v14 = 2112;
  v15 = v7;
  v16 = 2112;
  v17 = v9;
  v18 = 2112;
  v19 = v11;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "pairingCheckToken = %@\nphoneNumber = %@\nkeysUpdated = %@\nlostModePrivateKey = %@", &v12, 0x2Au);
}

void sub_10001EBB4(void *a1, void *a2, NSObject *a3)
{
  v5 = [a1 fm_hexString];
  v6 = [a2 fm_hexString];
  v7 = 138412546;
  v8 = v5;
  v9 = 2112;
  v10 = v6;
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "setting up pairing data %@ %@", &v7, 0x16u);
}

void sub_10001EC78(void *a1, NSObject *a2)
{
  v3 = [a1 serialNumber];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "failed to update pairing data for %@", &v4, 0xCu);
}

void sub_10001ED10(void *a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Invalid registerResponse = %@ %@", buf, 0x16u);
}

void sub_10001ED80()
{
  sub_10000EE0C(__stack_chk_guard);
  sub_10000EDF4();
  sub_10000EE1C(&_mh_execute_header, v0, v1, "fetching pairingData failed with errror = %@ timeout error =  %ld");
}

void sub_10001EDE8(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Could not migrate existing file %{public}@.", &v2, 0xCu);
}

void sub_10001EE60(os_log_t log)
{
  v1 = 138543362;
  v2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Could not delete existing file after migration %{public}@.", &v1, 0xCu);
}

void sub_10001EF34(uint64_t a1, NSObject *a2)
{
  v3 = [objc_opt_class() defaultStorageLocation];
  sub_10000EE48();
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "read magSafe data store from %@", v4, 0xCu);
}

void sub_10001F0B8(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "failed to decode corrupted data = %@", &v2, 0xCu);
}

void sub_10001F130(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "encoded data = %@", &v2, 0xCu);
}

void sub_10001F2B8(void *a1)
{
  [a1 length];
  v1 = sub_10001D5E4();
  SecKeyGetBlockSize(v1);
  sub_10001D5B0();
  sub_10001D590(&_mh_execute_header, v2, v3, "### message size two big %lu >= %lu", v4, v5, v6, v7);
}

void sub_10001F344(void *a1)
{
  [a1 userInfo];
  objc_claimAutoreleasedReturnValue();
  v2 = [sub_10001D5E4() localizedDescription];
  sub_10001D5CC();
  sub_10001D590(&_mh_execute_header, v3, v4, "### error = %@, %@", v5, v6, v7, v8);
}

void sub_10001F498(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Hex strings should have an even number of digits (%@)", &v2, 0xCu);
}

void sub_10001F510(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "MAC address should be 6 bytes (%@)", &v2, 0xCu);
}