uint64_t sub_100001D04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  v5 = CARSetupLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"declined";
    if (v3)
    {
      v6 = @"accepted";
    }

    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Bluetooth confirmation prompt answered: %{public}@", &v8, 0xCu);
  }

  return (*(*(a1 + 32) + 16))();
}

uint64_t sub_100001EA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  v5 = CARSetupLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"declined";
    if (v3)
    {
      v6 = @"accepted";
    }

    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Bluetooth contacts sync prompt answered: %{public}@", &v8, 0xCu);
  }

  return (*(*(a1 + 32) + 16))();
}

uint64_t sub_100002054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = CARSetupLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Bluetooth failed prompt answered", v6, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

uint64_t sub_1000021F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  v5 = CARSetupLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"declined";
    if (v3)
    {
      v6 = @"accepted";
    }

    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "allow while locked prompt answered: %{public}@", &v8, 0xCu);
  }

  return (*(*(a1 + 32) + 16))();
}

uint64_t sub_1000023A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  v5 = CARSetupLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"declined";
    if (v3)
    {
      v6 = @"accepted";
    }

    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "connect prompt answered: %{public}@", &v8, 0xCu);
  }

  return (*(*(a1 + 32) + 16))();
}

uint64_t sub_10000255C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  v5 = CARSetupLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"declined";
    if (v3)
    {
      v6 = @"accepted";
    }

    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "use wireless prompt answered: %{public}@", &v8, 0xCu);
  }

  return (*(*(a1 + 32) + 16))();
}

uint64_t sub_10000275C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  v5 = CARSetupLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"declined";
    if (v3)
    {
      v6 = @"accepted";
    }

    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "enhanced integration prompt answered: %{public}@", &v8, 0xCu);
  }

  return (*(*(a1 + 32) + 16))();
}

uint64_t sub_100002910(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  v5 = CARSetupLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"declined";
    if (v3)
    {
      v6 = @"accepted";
    }

    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "connect prompt answered: %{public}@", &v8, 0xCu);
  }

  return (*(*(a1 + 32) + 16))();
}

uint64_t sub_100002AC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  v5 = CARSetupLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"declined";
    if (v3)
    {
      v6 = @"accepted";
    }

    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "use wireless prompt answered: %{public}@", &v8, 0xCu);
  }

  return (*(*(a1 + 32) + 16))();
}

id sub_100002C80(uint64_t a1, char a2)
{
  result = (*(*(a1 + 40) + 16))();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 32);

    return [v5 _dismissFromGenericFlow];
  }

  return result;
}

uint64_t sub_100002DB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = CARSetupLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (a2)
    {
      v6 = @"YES";
    }

    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "asset unavailable prompt response: %{public}@", &v8, 0xCu);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2);
  }

  return result;
}

uint64_t sub_100003044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = CARSetupLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "asset ready prompt confirmed", v6, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

uint64_t sub_100003188(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = CARSetupLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "asset ready soon prompt confirmed", v6, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

void sub_1000032FC(uint64_t a1, void *a2)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000033B0;
  block[3] = &unk_1000103F0;
  v6 = a2;
  v3 = *(a1 + 40);
  v7 = *(a1 + 32);
  v8 = v3;
  v4 = v6;
  dispatch_async(&_dispatch_main_q, block);
}

id sub_1000033B0(void *a1, uint64_t a2)
{
  if (a1[4])
  {
    v3 = a1[5];

    return [v3 _presentPromptViewController:?];
  }

  else
  {
    v5 = CARSetupLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PassKit didn't want to present car key setup", v6, 2u);
    }

    return (*(a1[6] + 16))();
  }
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

void sub_100003CAC(uint64_t a1, uint64_t a2)
{
  v3 = CARSetupLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "present Bluetooth confirmation prompt", buf, 2u);
  }

  v4 = [*(a1 + 32) director];
  v5 = [v4 presenter];

  if (v5 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v6 = [*(a1 + 32) director];
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100003DF0;
    v9[3] = &unk_100010378;
    v10 = *(a1 + 56);
    [v5 promptDirector:v6 wantsToPresentBluetoothConfirmationPromptForVehicleName:v7 numericCode:v8 responseHandler:v9];
  }
}

uint64_t sub_100003DF0(uint64_t a1, uint64_t a2)
{
  v4 = CARSetupLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"declined";
    if (a2)
    {
      v5 = @"accepted";
    }

    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Bluetooth confirmation prompt received response: %{public}@", &v7, 0xCu);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2);
  }

  return result;
}

void sub_100003F6C(uint64_t a1, uint64_t a2)
{
  v3 = CARSetupLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "present Bluetooth contacts sync prompt", buf, 2u);
  }

  v4 = [*(a1 + 32) director];
  v5 = [v4 presenter];

  if (v5 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v6 = [*(a1 + 32) director];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10000409C;
    v7[3] = &unk_100010378;
    v8 = *(a1 + 40);
    [v5 promptDirector:v6 wantsToPresentBluetoothContactsSyncPromptWithResponseHandler:v7];
  }
}

uint64_t sub_10000409C(uint64_t a1, uint64_t a2)
{
  v4 = CARSetupLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"declined";
    if (a2)
    {
      v5 = @"accepted";
    }

    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Bluetooth contacts sync prompt received response: %{public}@", &v7, 0xCu);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2);
  }

  return result;
}

void sub_10000424C(uint64_t a1, uint64_t a2)
{
  v3 = CARSetupLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "present Bluetooth failed prompt", buf, 2u);
  }

  v4 = [*(a1 + 32) director];
  v5 = [v4 presenter];

  if (v5 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v6 = [*(a1 + 32) director];
    v7 = *(a1 + 56);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100004390;
    v9[3] = &unk_1000103A0;
    v8 = *(a1 + 40);
    v10 = *(a1 + 48);
    [v5 promptDirector:v6 wantsToPresentBluetoothFailedPromptForVehicleName:v8 isTimeout:v7 responseHandler:v9];
  }
}

uint64_t sub_100004390(uint64_t a1, uint64_t a2)
{
  v3 = CARSetupLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Bluetooth failed prompt received response", v5, 2u);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100004488(uint64_t a1, uint64_t a2)
{
  v3 = CARSetupLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "present waiting on messaging prompt", v7, 2u);
  }

  v4 = [*(a1 + 32) director];
  v5 = [v4 presenter];

  if (v5 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v6 = [*(a1 + 32) director];
    [v5 promptDirectorWantsToPresentWaitingOnMessaging:v6];
  }
}

void sub_100004620(uint64_t a1, uint64_t a2)
{
  v3 = CARSetupLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "present allow while locked prompt", buf, 2u);
  }

  v4 = [*(a1 + 32) director];
  v5 = [v4 presenter];

  if (v5 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v6 = [*(a1 + 32) director];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100004754;
    v8[3] = &unk_100010378;
    v7 = *(a1 + 40);
    v9 = *(a1 + 48);
    [v5 promptDirector:v6 wantsToPresentAllowWhileLockedPromptForVehicleName:v7 responseHandler:v8];
  }
}

uint64_t sub_100004754(uint64_t a1, uint64_t a2)
{
  v4 = CARSetupLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"declined";
    if (a2)
    {
      v5 = @"accepted";
    }

    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "allow while locked prompt received response: %{public}@", &v7, 0xCu);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2);
  }

  return result;
}

void sub_1000048E8(uint64_t a1, uint64_t a2)
{
  v3 = CARSetupLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "present connect prompt", buf, 2u);
  }

  v4 = [*(a1 + 32) director];
  v5 = [v4 presenter];

  if (v5 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v6 = [*(a1 + 32) director];
    v7 = *(a1 + 56);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100004A2C;
    v9[3] = &unk_100010378;
    v8 = *(a1 + 48);
    v10 = *(a1 + 40);
    [v5 promptDirector:v6 wantsToPresentConnectPromptWithBluetoothOnlyOption:v7 wirelessEnablement:v8 responseHandler:v9];
  }
}

uint64_t sub_100004A2C(uint64_t a1, uint64_t a2)
{
  v4 = CARSetupLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"declined";
    if (a2)
    {
      v5 = @"accepted";
    }

    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "connect prompt received response: %{public}@", &v7, 0xCu);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2);
  }

  return result;
}

void sub_100004BBC(uint64_t a1, uint64_t a2)
{
  v3 = CARSetupLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "present use wireless prompt", buf, 2u);
  }

  v4 = [*(a1 + 32) director];
  v5 = [v4 presenter];

  if (v5 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v6 = [*(a1 + 32) director];
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100004D00;
    v9[3] = &unk_100010378;
    v10 = *(a1 + 40);
    [v5 promptDirector:v6 wantsToPresentUseWirelessPromptWithWirelessEnablement:v7 declineVariant:v8 responseHandler:v9];
  }
}

uint64_t sub_100004D00(uint64_t a1, uint64_t a2)
{
  v4 = CARSetupLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"declined";
    if (a2)
    {
      v5 = @"accepted";
    }

    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "use wireless prompt received response: %{public}@", &v7, 0xCu);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2);
  }

  return result;
}

void sub_100004E58(uint64_t a1, uint64_t a2)
{
  v3 = CARSetupLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "present waiting on start session prompt", v7, 2u);
  }

  v4 = [*(a1 + 32) director];
  v5 = [v4 presenter];

  if (v5 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v6 = [*(a1 + 32) director];
    [v5 promptDirectorWantsToPresentWaitingOnStartSession:v6];
  }
}

void sub_100004FF0(uint64_t a1, uint64_t a2)
{
  v3 = CARSetupLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    *buf = 138412290;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "present enhanced integration prompt for vehicle name: %@", buf, 0xCu);
  }

  v5 = [*(a1 + 40) director];
  v6 = [v5 presenter];

  if (v6 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v7 = [*(a1 + 40) director];
    v8 = *(a1 + 32);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100005164;
    v9[3] = &unk_100010378;
    v10 = *(a1 + 48);
    [v6 promptDirector:v7 wantsToPresentEnhancedIntegrationPromptForVehicleName:v8 responseHandler:v9];
  }
}

uint64_t sub_100005164(uint64_t a1, uint64_t a2)
{
  v4 = CARSetupLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"declined";
    if (a2)
    {
      v5 = @"accepted";
    }

    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "enhanced integration prompt received response: %{public}@", &v7, 0xCu);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2);
  }

  return result;
}

void sub_1000052F8(uint64_t a1, uint64_t a2)
{
  v3 = CARSetupLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "present connect prompt", buf, 2u);
  }

  v4 = [*(a1 + 32) director];
  v5 = [v4 presenter];

  if (v5 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v6 = [*(a1 + 32) director];
    v7 = *(a1 + 56);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10000543C;
    v9[3] = &unk_100010378;
    v8 = *(a1 + 48);
    v10 = *(a1 + 40);
    [v5 promptDirector:v6 wantsToPresentAssetSupportingConnectPromptWithBluetoothOnlyOption:v7 wirelessEnablement:v8 responseHandler:v9];
  }
}

uint64_t sub_10000543C(uint64_t a1, uint64_t a2)
{
  v4 = CARSetupLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"declined";
    if (a2)
    {
      v5 = @"accepted";
    }

    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "connect prompt received response: %{public}@", &v7, 0xCu);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2);
  }

  return result;
}

void sub_1000055CC(uint64_t a1, uint64_t a2)
{
  v3 = CARSetupLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "present use wireless prompt", buf, 2u);
  }

  v4 = [*(a1 + 32) director];
  v5 = [v4 presenter];

  if (v5 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v6 = [*(a1 + 32) director];
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100005710;
    v9[3] = &unk_100010378;
    v10 = *(a1 + 40);
    [v5 promptDirector:v6 wantsToPresentAssetSupportingUseWirelessPromptWithWirelessEnablement:v7 declineVariant:v8 responseHandler:v9];
  }
}

uint64_t sub_100005710(uint64_t a1, uint64_t a2)
{
  v4 = CARSetupLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"declined";
    if (a2)
    {
      v5 = @"accepted";
    }

    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "use wireless prompt received response: %{public}@", &v7, 0xCu);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2);
  }

  return result;
}

void sub_1000058B8(uint64_t a1, uint64_t a2)
{
  v3 = CARSetupLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    *buf = 138412290;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "present asset progress prompt for vehicle name: %@", buf, 0xCu);
  }

  v5 = [*(a1 + 40) director];
  v6 = [v5 _remoteAssetProgress];

  [*(a1 + 40) setProgress:v6];
  v7 = [*(a1 + 40) director];
  v8 = [v7 presenter];

  if (v8 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v9 = [*(a1 + 40) director];
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100005A68;
    v12[3] = &unk_100010378;
    v13 = *(a1 + 48);
    [v8 promptDirector:v9 wantsToPresentAssetProgressPromptForVehicleName:v10 progressReporter:v11 cancelHandler:v12];
  }
}

uint64_t sub_100005A68(uint64_t a1, uint64_t a2)
{
  v4 = CARSetupLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "asset progress prompt was canceled", v6, 2u);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2);
  }

  return result;
}

void sub_100005BC0(uint64_t a1, uint64_t a2)
{
  v3 = CARSetupLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    *buf = 138412290;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "present asset unavailable prompt, description: %@", buf, 0xCu);
  }

  v5 = [*(a1 + 40) director];
  v6 = [v5 presenter];

  if (v6 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v7 = [*(a1 + 40) director];
    v8 = *(a1 + 32);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100005D34;
    v9[3] = &unk_100010378;
    v10 = *(a1 + 48);
    [v6 promptDirector:v7 wantsToPresentAssetUnavailablePromptWithDescription:v8 responseHandler:v9];
  }
}

uint64_t sub_100005D34(uint64_t a1, uint64_t a2)
{
  v4 = CARSetupLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"NO";
    if (a2)
    {
      v5 = @"YES";
    }

    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "asset unavailable prompt received response: %{public}@", &v7, 0xCu);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2);
  }

  return result;
}

void sub_100005EFC(uint64_t a1, uint64_t a2)
{
  v3 = CARSetupLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    *buf = 138412290;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "present asset ready prompt for vehicle name: %@", buf, 0xCu);
  }

  v5 = [*(a1 + 40) director];
  v6 = [v5 presenter];

  if (v6 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v7 = [*(a1 + 40) director];
    v8 = *(a1 + 32);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100006088;
    v10[3] = &unk_1000103A0;
    v9 = *(a1 + 48);
    v11 = *(a1 + 56);
    [v6 promptDirector:v7 wantsToPresentAssetReadyPromptForVehicleName:v8 appClipIDs:v9 confirmationHandler:v10];
  }

  [*(a1 + 40) setProgress:0];
}

uint64_t sub_100006088(uint64_t a1, uint64_t a2)
{
  v3 = CARSetupLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "asset ready prompt was confirmed", v5, 2u);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1000061D0(uint64_t a1, uint64_t a2)
{
  v3 = CARSetupLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    *buf = 138412290;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "present asset ready soon prompt for vehicle name: %@", buf, 0xCu);
  }

  v5 = [*(a1 + 40) director];
  v6 = [v5 presenter];

  if (v6 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v7 = [*(a1 + 40) director];
    v8 = *(a1 + 32);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100006344;
    v9[3] = &unk_1000103A0;
    v10 = *(a1 + 48);
    [v6 promptDirector:v7 wantsToPresentAssetReadySoonPromptForVehicleName:v8 confirmationHandler:v9];
  }
}

uint64_t sub_100006344(uint64_t a1, uint64_t a2)
{
  v3 = CARSetupLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "asset ready soon prompt was confirmed", v5, 2u);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1000064AC(uint64_t a1, uint64_t a2)
{
  v3 = CARSetupLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    *buf = 138412290;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "present setup car keys prompt for vehicle name: %@", buf, 0xCu);
  }

  v5 = [*(a1 + 40) director];
  v6 = [v5 presenter];

  if (v6 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v7 = [*(a1 + 40) director];
    v8 = *(a1 + 32);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10000662C;
    v10[3] = &unk_1000103A0;
    v9 = *(a1 + 48);
    v11 = *(a1 + 56);
    [v6 promptDirector:v7 wantsToPresentSetupCarKeysPromptForVehicleName:v8 carKeyInfo:v9 cancelHandler:v10];
  }
}

uint64_t sub_10000662C(uint64_t a1, uint64_t a2)
{
  v3 = CARSetupLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "setup car keys prompt was canceled", v5, 2u);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100006748(uint64_t a1, uint64_t a2)
{
  v3 = CARSetupLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "present check for software updates", buf, 2u);
  }

  v4 = [*(a1 + 32) director];
  v5 = [v4 presenter];

  if (v5 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v6 = [*(a1 + 32) director];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100006878;
    v7[3] = &unk_1000103A0;
    v8 = *(a1 + 40);
    [v5 promptDirector:v6 wantsToCheckForSoftwareUpdatesWithCompletionHandler:v7];
  }
}

uint64_t sub_100006878(uint64_t a1, uint64_t a2)
{
  v3 = CARSetupLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "check for software updates completed presentation", v5, 2u);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100006B24(id a1, BOOL a2, NSError *a3)
{
  v3 = a2;
  v4 = a3;
  v5 = CARSetupLogForCategory();
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_100008124();
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_1000080B4();
  }
}

void sub_100006C34(id a1, BOOL a2, NSError *a3)
{
  v3 = a2;
  v4 = a3;
  v5 = CARSetupLogForCategory();
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_1000081D4();
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_100008164();
  }
}

void sub_100006E74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100006E98(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100006EB0(uint64_t a1, void *a2)
{
  *(*(*(a1 + 32) + 8) + 40) = [a2 presenterRequestsAssetProgressWithCompletion:&stru_100010628];

  return _objc_release_x1();
}

void sub_100006F04(id a1, BOOL a2, NSError *a3)
{
  v3 = a2;
  v4 = a3;
  v5 = CARSetupLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = @"NO";
    if (v3)
    {
      v6 = @"YES";
    }

    v7 = 138412546;
    v8 = v6;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "asset progress completed: success: %@ error: %@", &v7, 0x16u);
  }
}

void sub_1000071AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000071DC(uint64_t a1, uint64_t a2)
{
  v3 = CARSetupLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_100008214();
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100007298;
  block[3] = &unk_100010678;
  objc_copyWeak(&v5, (a1 + 32));
  dispatch_async(&_dispatch_main_q, block);
  objc_destroyWeak(&v5);
}

void sub_100007298(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleConnectionReset];
}

void sub_1000072D8(uint64_t a1, uint64_t a2)
{
  v3 = CARSetupLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_100008250();
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100007394;
  block[3] = &unk_100010678;
  objc_copyWeak(&v5, (a1 + 32));
  dispatch_async(&_dispatch_main_q, block);
  objc_destroyWeak(&v5);
}

void sub_100007394(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained invalidate];
}

void sub_100007458(id a1, NSError *a2)
{
  v2 = a2;
  v3 = CARSetupLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10000828C();
  }
}

void sub_100007534(id a1, NSError *a2)
{
  v2 = a2;
  v3 = CARSetupLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10000828C();
  }
}

void sub_100007D40(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = CARSetupLogForCategory();
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 32);
      *buf = 138543618;
      v15 = v9;
      v16 = 2112;
      v17 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "App Store response for %{public}@: %@", buf, 0x16u);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100007ED0;
    block[3] = &unk_100010700;
    v11 = *(a1 + 40);
    v12 = v5;
    v13 = *(a1 + 48);
    dispatch_async(&_dispatch_main_q, block);

    v8 = v11;
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_1000082FC(a1, v6, v8);
  }
}

void sub_100007ED0(uint64_t a1)
{
  v3 = objc_alloc_init(ASCLockupView);
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = [*(a1 + 32) lockupGroup];
  [v3 setGroup:v2];

  [v3 setRequest:*(a1 + 40)];
  [v3 setLockupSize:ASCLockupViewSizeSmall];
  [*(a1 + 48) addArrangedSubview:v3];
}

void sub_1000080B4()
{
  sub_100007620();
  sub_100007614();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100008164()
{
  sub_100007620();
  sub_100007614();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100008214()
{
  sub_10000762C();
  sub_100007614();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100008250()
{
  sub_10000762C();
  sub_100007614();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10000828C()
{
  sub_100007620();
  sub_100007614();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000082FC(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 32);
  v4 = 138543618;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "failed App Store response for %{public}@: %@", &v4, 0x16u);
}