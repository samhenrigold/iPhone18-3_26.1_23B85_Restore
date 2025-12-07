uint64_t CallDirectoryLog(uint64_t a1, uint64_t a2)
{
  if (qword_8720 != -1)
  {
    sub_19BC();
  }

  return qword_8718;
}

void sub_12EC(uint64_t a1, void *a2, void *a3)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_13B4;
  block[3] = &unk_41D8;
  v8 = a2;
  v9 = a3;
  v10 = *(a1 + 32);
  v5 = v9;
  v6 = v8;
  dispatch_async(&_dispatch_main_q, block);
}

id sub_13B4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = CallDirectoryLog(a1, a2);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      *buf = 138412290;
      v27 = v6;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Received call directory extensions %@", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_19D0(a1, v5);
  }

  v7 = *(a1 + 32);
  if (!v7 || ([*(a1 + 48) extensions], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "isEqualToArray:", v8), v8, (v9 & 1) == 0))
  {
    v10 = +[NSMutableArray array];
    [*(a1 + 48) setExtensions:v10];

    v11 = +[NSMutableArray array];
    [*(a1 + 48) setLlextensions:v11];

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v12 = *(a1 + 32);
    v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v22;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v22 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v21 + 1) + 8 * i);
          if ([v17 state] - 1 <= &dword_0 + 3)
          {
            v18 = [*(a1 + 48) extensions];
            [v18 addObject:v17];

            v19 = [*(a1 + 48) llextensions];
            [v19 addObject:v17];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v14);
    }
  }

  return [*(a1 + 48) updateParentListController];
}

void sub_19D0(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 40);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Error retrieving extensions: %@", &v3, 0xCu);
}