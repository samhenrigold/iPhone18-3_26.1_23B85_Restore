void sub_2540(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [[NSMutableString alloc] initWithString:&stru_8468];
  v7 = 0;
  v8 = 1;
  do
  {
    v9 = v8;
    v10 = &qword_8238[2 * v7];
    if ((*v10 & a3) != 0)
    {
      v11 = v10[1];
      if ([v6 length])
      {
        [v6 appendString:{@", "}];
      }

      [v6 appendFormat:@"%s", v11];
    }

    v8 = 0;
    v7 = 1;
  }

  while ((v9 & 1) != 0);
  if (![v6 length])
  {
    [v6 appendString:@"none"];
  }

  v12 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = a1[4];
    *buf = 138543874;
    v18 = v13;
    v19 = 2114;
    v20 = v5;
    v21 = 2114;
    v22 = v6;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: Backing up %{public}@ with attributes: %{public}@.", buf, 0x20u);
  }

  (*(a1[6] + 16))();
  if (*(*(a1[7] + 8) + 24) == 1)
  {
    v14 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = a1[4];
      v16 = a1[5];
      *buf = 138543618;
      v18 = v15;
      v19 = 2114;
      v20 = v16;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: Enumeration of paths for backup of type %{public}@ was just interrupted.", buf, 0x16u);
    }
  }
}

void sub_29A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_29D4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_29EC(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  v14 = v5;
  if (a3)
  {
    v9 = *(a1 + 32);
    v7 = a1 + 32;
    v6 = v9;
  }

  else
  {
    v8 = *(a1 + 40);
    v7 = a1 + 40;
    v6 = v8;
  }

  v10 = *(*(v6 + 8) + 40);
  if (!v10)
  {
    v11 = objc_alloc_init(NSMutableArray);
    v12 = *(*v7 + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    v10 = *(*(*v7 + 8) + 40);
    v5 = v14;
  }

  [v10 addObject:v5];
}