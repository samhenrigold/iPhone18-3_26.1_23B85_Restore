void sub_100001CA4(uint64_t a1)
{
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v2 = [*(a1 + 32) stackView];
  v3 = [v2 arrangedSubviews];

  v4 = [v3 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v25;
    do
    {
      v7 = 0;
      do
      {
        if (*v25 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v24 + 1) + 8 * v7);
        v9 = [*(a1 + 32) stackView];
        [v9 removeArrangedSubview:v8];

        [v8 removeFromSuperview];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v5);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = objc_opt_class();
  v11 = [*(a1 + 40) userInfo];
  v12 = [v11 objectForKeyedSubscript:@"HIDRMUINotificationPairingCodeDigits"];
  v13 = [v10 createDigitViewArrayFromPairingCodeDigitArray:v12];

  v14 = [v13 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v21;
    do
    {
      v17 = 0;
      do
      {
        if (*v21 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v20 + 1) + 8 * v17);
        v19 = [*(a1 + 32) stackView];
        [v19 addArrangedSubview:v18];

        v17 = v17 + 1;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v15);
  }
}

void sub_100001F14(uint64_t a1)
{
  v1 = 134217984;
  v2 = a1;
  _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "Waiting %lldms for animation to finish...", &v1, 0xCu);
}