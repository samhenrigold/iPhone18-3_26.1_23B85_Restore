id sub_EE0(void *a1)
{
  v1 = a1;
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:v1 value:&stru_8520 table:0];

  return v3;
}

void sub_1194(id a1)
{
  v1 = +[NSNotificationCenter defaultCenter];
  [v1 postNotificationName:off_D190 object:0];
}

void sub_12B4(id a1)
{
  v1 = +[NSNotificationCenter defaultCenter];
  [v1 postNotificationName:off_D198 object:0];
}

void sub_1364(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_3FBC(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = a3;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Received lostModeChanged distributed notification: %@", &v5, 0xCu);
  }

  _os_activity_initiate(&dword_0, "LostModeChangedLocalNotification", OS_ACTIVITY_FLAG_DEFAULT, &stru_82F0);
}

void sub_195C(id a1)
{
  v1 = +[NSNotificationCenter defaultCenter];
  [v1 postNotificationName:off_D188 object:0];
}

void sub_1D6C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_3FBC(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = v3;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "caught LostModeChangedLocalNotification: %@", &v12, 0xCu);
  }

  v6 = sub_3FBC(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [*(a1 + 32) isManagedLostmode];
    v12 = 67109120;
    LODWORD(v13) = v7;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "FMIPLockScreenController was managed %i", &v12, 8u);
  }

  v8 = +[FMDFMIPManager sharedInstance];
  v9 = [v8 lostModeInfo];

  v10 = [v9 lostModeEnabled];
  if ((v10 & 1) == 0)
  {
    v11 = sub_3FBC(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "FMIPLockScreenController disabling ourself", &v12, 2u);
    }

    [*(a1 + 32) disable];
  }

  [*(a1 + 32) updateLockScreenView];
}

void sub_1F04(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_3FBC(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "caught SimStatusChangedLocalNotification: %@", &v5, 0xCu);
  }

  [*(a1 + 32) updateLockScreenView];
}

void sub_1FC4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_3FBC(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "caught RegistrationStatusChangedNotification: %@", &v5, 0xCu);
  }

  [*(a1 + 32) updateLockScreenView];
}

void sub_26A4(uint64_t a1)
{
  v2 = +[FMDFMIPManager sharedInstance];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_2738;
  v3[3] = &unk_8368;
  v3[4] = *(a1 + 32);
  [v2 userDidAckManagedLostModeLocateWithCompletion:v3];
}

void sub_2738(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = sub_3FBC(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_4230(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_2800;
  block[3] = &unk_8340;
  block[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_2808(uint64_t a1)
{
  v2 = [*(a1 + 32) pluginAgent];
  [v2 pluginController:*(a1 + 32) sendAction:*(a1 + 40)];
}

void sub_2C0C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = dispatch_get_global_queue(2, 0);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_2CFC;
  v11[3] = &unk_8408;
  v12 = v6;
  v13 = v5;
  v8 = *(a1 + 40);
  v14 = *(a1 + 32);
  v15 = v8;
  v9 = v5;
  v10 = v6;
  dispatch_async(v7, v11);
}

void sub_2CFC(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + 32);
  v3 = *(a1 + 32) == 0;
  v4 = sub_3FBC(a1);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Got subscription Info", buf, 2u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_4324(v2, v5, v6, v7, v8, v9, v10, v11);
  }

  *buf = 0;
  v29 = buf;
  v30 = 0x2020000000;
  v31 = 0;
  v12 = dispatch_group_create();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v13 = [*(a1 + 40) subscriptions];
  v14 = [v13 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v14)
  {
    v15 = *v25;
    do
    {
      v16 = 0;
      do
      {
        if (*v25 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v24 + 1) + 8 * v16);
        dispatch_group_enter(v12);
        v18 = [*(a1 + 48) ctClient];
        v21[0] = _NSConcreteStackBlock;
        v21[1] = 3221225472;
        v21[2] = sub_2F94;
        v21[3] = &unk_83E0;
        v23 = buf;
        v22 = v12;
        [v18 copyRegistrationStatus:v17 completion:v21];

        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [v13 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v14);
  }

  dispatch_group_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
  v19 = *(a1 + 56);
  if (v19)
  {
    (*(v19 + 16))(v19, v29[24]);
  }

  _Block_object_dispose(buf, 8);
}

void sub_2F68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2F94(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = dispatch_get_global_queue(2, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_308C;
  block[3] = &unk_83B8;
  v13 = v6;
  v14 = v5;
  v11 = *(a1 + 32);
  v8 = v11;
  v15 = v11;
  v9 = v5;
  v10 = v6;
  dispatch_async(v7, block);
}

void sub_308C(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 32);
  if (*(a1 + 32))
  {
    v4 = sub_3FBC(a1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_4394(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  v11 = kCTRegistrationStatusRegisteredHome;
  v12 = [*(a1 + 40) isEqualToString:kCTRegistrationStatusRegisteredHome];

  v13 = kCTRegistrationStatusRegisteredRoaming;
  v14 = [*(a1 + 40) isEqualToString:kCTRegistrationStatusRegisteredRoaming];

  v15 = *(*(a1 + 56) + 8);
  if (*(v15 + 24) & 1) == 0 && ((v12 | v14))
  {
    *(v15 + 24) = 1;
  }

  dispatch_group_leave(*(a1 + 48));
}

void sub_3B70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_3BAC(uint64_t a1, char a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_3C44;
  v3[3] = &unk_8458;
  objc_copyWeak(&v4, (a1 + 32));
  v5 = a2;
  dispatch_async(&_dispatch_main_q, v3);
  objc_destroyWeak(&v4);
}

void sub_3C44(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (*(a1 + 40) == 1)
  {
    v6 = WeakRetained;
    v3 = [WeakRetained currentState] == &dword_0 + 2;
    WeakRetained = v6;
    if (!v3)
    {
      v4 = sub_EE0(@"EMERGENCY_BUTTON");
      v5 = [v6 lockScreenModalView];
      [v5 setSecondaryActionButtonText:v4];

      WeakRetained = v6;
    }
  }
}

void sub_3CDC(uint64_t a1, char a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_3D74;
  v3[3] = &unk_8458;
  objc_copyWeak(&v4, (a1 + 32));
  v5 = a2;
  dispatch_async(&_dispatch_main_q, v3);
  objc_destroyWeak(&v4);
}

void sub_3D74(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setCallButtonEnabled:*(a1 + 40)];
}

void sub_3FA0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

id sub_3FBC(uint64_t a1)
{
  if (qword_D500 != -1)
  {
    sub_4404();
  }

  v2 = qword_D508;

  return v2;
}

void sub_4000(id a1)
{
  qword_D508 = os_log_create("com.apple.icloud.FindMyiPhoneLockScreen", "_");

  _objc_release_x1();
}

void sub_4088(void *a1, NSObject *a2)
{
  v3 = [a1 _mainViewController];
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "viewController: %@", &v4, 0xCu);
}

void sub_4120(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "TRACE: pluginAppearance: darkBackground: %d", v2, 8u);
}

void sub_4198(void *a1, NSObject *a2)
{
  v3 = [a1 view];
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "FMIPLockScreenViewController loadView: %@", &v4, 0xCu);
}

void sub_4230(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  sub_3FA0(&dword_0, a2, a3, "userDidAckManagedLostModeLocateWithCompletion: error: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_4324(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = *a1;
  sub_3FA0(&dword_0, a2, a3, "Error: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_4394(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = *a1;
  sub_3FA0(&dword_0, a2, a3, "Copy Registration Status Error: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}