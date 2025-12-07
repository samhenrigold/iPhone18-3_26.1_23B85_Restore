void *sub_1688(uint64_t a1)
{
  result = [*(a1 + 32) handler];
  if (result)
  {
    v2 = result[2];

    return v2();
  }

  return result;
}

id sub_1858(uint64_t a1)
{
  v2 = +[HSAccountStore defaultStore];
  v3 = [*(a1 + 32) objectForKey:@"email"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  [v2 setAppleID:v4];
  v5 = [*(a1 + 32) objectForKey:@"password"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  [v2 setPassword:v6];
  if ([v2 canDetermineGroupID])
  {
    v7 = +[SSLogConfig sharedConfig];
    v8 = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      LODWORD(v9) = v8 | 2;
    }

    else
    {
      LODWORD(v9) = v8;
    }

    v10 = [v7 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v9 = v9;
    }

    else
    {
      v9 &= 2u;
    }

    if (v9)
    {
      v18 = 138412290;
      v19 = objc_opt_class();
      v11 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &dword_0, v10, 16, "%@: Determining HS group ID", &v18, 12);
      if (v11)
      {
        v12 = v11;
        v13 = [NSString stringWithCString:v11 encoding:4];
        free(v12);
        v16 = v13;
        SSFileLog();
      }
    }

    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1AC4;
    v17[3] = &unk_4208;
    v17[4] = *(a1 + 40);
    return [v2 determineGroupIDWithCompletionHandler:{v17, v16}];
  }

  else
  {
    v15 = *(a1 + 40);

    return dispatch_semaphore_signal(v15);
  }
}

void sub_1FB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

intptr_t sub_2000(uint64_t a1, void *a2)
{
  if (HSCloudClientIsSagaEnabledInURLBag())
  {
    v4 = [a2 objectForKey:@"library-daap"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = +[SSLogConfig sharedConfig];
      v6 = [v5 shouldLog];
      if ([v5 shouldLogToDisk])
      {
        LODWORD(v7) = v6 | 2;
      }

      else
      {
        LODWORD(v7) = v6;
      }

      v8 = [v5 OSLogObject];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v7 = v7;
      }

      else
      {
        v7 &= 2u;
      }

      if (v7)
      {
        v14 = 138412546;
        v15 = objc_opt_class();
        v16 = 2112;
        v17 = v4;
        v9 = _os_log_send_and_compose_impl(v7, 0, 0, 0, &dword_0, v8, 16, "%@: library-daap dictionary: %@", &v14, 22);
        if (v9)
        {
          v10 = v9;
          v11 = [NSString stringWithCString:v9 encoding:4];
          free(v10);
          v13 = v11;
          SSFileLog();
        }
      }

      *(*(*(a1 + 48) + 8) + 24) = [v4 objectForKey:{@"base-url", v13}] != 0;
    }
  }

  return dispatch_semaphore_signal(*(a1 + 40));
}