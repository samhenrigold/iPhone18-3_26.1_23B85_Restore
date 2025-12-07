void sub_BE0(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  _HKInitializeLogging();
  v6 = HKLogNotifications;
  if (os_log_type_enabled(HKLogNotifications, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v23 = 138543618;
    v24 = objc_opt_class();
    v25 = 2112;
    v26 = v4;
    v8 = v24;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] received notification: %@", &v23, 0x16u);
  }

  if (v5)
  {
    v9 = [v4 request];
    v10 = [v9 content];
    v11 = [v10 userInfo];
    v12 = kHKNotificationsSuppressNotificationForwardingKey;
    v13 = [v11 objectForKeyedSubscript:kHKNotificationsSuppressNotificationForwardingKey];
    v14 = [v13 isEqual:&__kCFBooleanTrue];

    if (v14)
    {
      _HKInitializeLogging();
      v15 = HKLogNotifications;
      if (os_log_type_enabled(HKLogNotifications, OS_LOG_TYPE_DEFAULT))
      {
        v16 = v15;
        v17 = objc_opt_class();
        v18 = v17;
        v19 = [v4 request];
        v20 = [v19 content];
        v21 = [v20 categoryIdentifier];
        v23 = 138543874;
        v24 = v17;
        v25 = 2114;
        v26 = v21;
        v27 = 2114;
        v28 = v12;
        _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "[%{public}@] Notification with identifier %{public}@ has key %{public}@, suppressing forwarding to watch", &v23, 0x20u);
      }

      v22 = 0;
    }

    else
    {
      v22 = 1;
    }

    v5[2](v5, v22);
  }
}