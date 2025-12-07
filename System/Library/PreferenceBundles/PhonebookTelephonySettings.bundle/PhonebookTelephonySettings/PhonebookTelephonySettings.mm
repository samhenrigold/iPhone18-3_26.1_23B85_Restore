void sub_11D8(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1284;
  v6[3] = &unk_81D0;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(&_dispatch_main_q, v6);
}

uint64_t TPSPhonebookLog(uint64_t a1, uint64_t a2)
{
  if (qword_D6D8 != -1)
  {
    sub_2674();
  }

  return qword_D6D0;
}

void sub_1BB8(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v7 = v5;
  if (!a2)
  {
    v13 = [v5 domain];

    if (v13)
    {
      v17 = TPSPhonebookLog(v15, v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = *(a1 + 32);
        *buf = 138412546;
        v21 = v18;
        v22 = 2112;
        v23 = v7;
        _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "Failed to update subscription telephone number to %@ due to error %@.", buf, 0x16u);
      }

      if (CPIsInternalDevice())
      {
        v13 = [NSString stringWithFormat:@"Apple Internal Error: %@", v7];
      }

      else
      {
        v13 = 0;
      }
    }

    v19 = [*(a1 + 40) errorAlertControllerWithMessage:v13];
    [*(a1 + 40) presentViewController:v19 animated:1 completion:0];

    goto LABEL_13;
  }

  v8 = TPSPhonebookLog(v5, v6);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    *buf = 138412290;
    v21 = v9;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Successfully updated subscription telephone number to %@.", buf, 0xCu);
  }

  v10 = *(a1 + 40);
  v11 = [v10 navigationController];
  v12 = [v11 topViewController];

  if (v10 == v12)
  {
    v13 = [*(a1 + 40) navigationController];
    v14 = [v13 popViewControllerAnimated:1];
LABEL_13:
  }
}