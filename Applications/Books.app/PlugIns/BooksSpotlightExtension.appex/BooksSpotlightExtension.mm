void sub_100001428(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100001440(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = objc_alloc_init(NSMutableArray);
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_1000018EC;
  v25 = sub_1000018FC;
  v26 = 0;
  v6 = [NSString stringWithFormat:@"identifier == %@", v4];
  v27[0] = @"identifier";
  v27[1] = @"title";
  v27[2] = @"contributors";
  v27[3] = @"contentType";
  v27[4] = @"thumbnailURL";
  v27[5] = @"thumbnailData";
  v27[6] = @"contentType";
  v27[7] = @"contentURL";
  v27[8] = @"fileSize";
  v27[9] = @"com_apple_iBooks_storeURL";
  v27[10] = @"com_apple_iBooks_localFileURL";
  v7 = [NSArray arrayWithObjects:v27 count:11];
  v8 = [[CSSearchQuery alloc] initWithQueryString:v6 attributes:v7];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100001904;
  v19[3] = &unk_100004270;
  v9 = v5;
  v20 = v9;
  [v8 setFoundItemsHandler:v19];
  v10 = dispatch_semaphore_create(0);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100001910;
  v15[3] = &unk_100004298;
  v11 = v9;
  v16 = v11;
  v18 = &v21;
  v12 = v10;
  v17 = v12;
  [v8 setCompletionHandler:v15];
  [v8 start];
  dispatch_semaphore_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
  v13 = [v22[5] attributeSet];

  _Block_object_dispose(&v21, 8);

  return v13;
}

void sub_10000172C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100001864(uint64_t a1)
{
  if (qword_100008248 != -1)
  {
    sub_100001E04();
  }

  v2 = qword_100008240;

  return v2;
}

void sub_1000018A8(id a1)
{
  qword_100008240 = os_log_create("com.apple.iBooks", "Spotlight Extension");

  _objc_release_x1();
}

uint64_t sub_1000018EC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

intptr_t sub_100001910(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) count];
  if (!v3 || (v3 = [*v2 count], v3 >= 2))
  {
    v4 = sub_100001864(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_100001E18(v2, v4);
    }
  }

  if (![*v2 count])
  {
    return dispatch_semaphore_signal(*(a1 + 40));
  }

  v5 = [*(a1 + 32) firstObject];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  if ([*(a1 + 32) count] < 2)
  {
    return dispatch_semaphore_signal(*(a1 + 40));
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = *v2;
  v8 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (!v8)
  {
    goto LABEL_26;
  }

  v9 = v8;
  v10 = *v24;
  while (2)
  {
    for (i = 0; i != v9; i = i + 1)
    {
      if (*v24 != v10)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v23 + 1) + 8 * i);
      v13 = [v12 attributeSet];
      v14 = [v13 contentType];
      if ([v14 length])
      {
        goto LABEL_24;
      }

      v15 = [v13 attributeForKey:@"com_apple_iBooks_storeURL"];
      if (v15)
      {
        v16 = v15;
LABEL_23:

LABEL_24:
LABEL_25:
        objc_storeStrong((*(*(a1 + 48) + 8) + 40), v12);

        goto LABEL_26;
      }

      v16 = [v13 attributeForKey:@"com_apple_iBooks_localFileURL"];
      if (v16)
      {
        goto LABEL_23;
      }

      v17 = [v13 contentURL];
      if (v17)
      {

        goto LABEL_23;
      }

      v18 = [v13 fileSize];
      [v18 doubleValue];
      v20 = v19;

      if (v20 > 0.0)
      {
        goto LABEL_25;
      }
    }

    v9 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v9)
    {
      continue;
    }

    break;
  }

LABEL_26:

  return dispatch_semaphore_signal(*(a1 + 40));
}

void sub_100001B78(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void sub_100001BF0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void sub_100001C10(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Index extension wants to reindex everything. searchableIndex: %@", &v2, 0xCu);
}

void sub_100001E18(id *a1, NSObject *a2)
{
  v3 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*a1 count]);
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "unexpected item count found for %@", &v4, 0xCu);
}