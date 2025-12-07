void sub_100001408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100001438(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100001450(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) isCancelled] & 1) == 0)
  {
    v4 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[Powerlog] Adding powerlog archive file: %@", buf, 0xCu);
    }

    v5 = *(a1 + 40);
    v6 = *(*(a1 + 48) + 8);
    obj = *(v6 + 40);
    v7 = [v5 addURL:v3 prefix:@"PLArchive" error:&obj];
    objc_storeStrong((v6 + 40), obj);
    if ((v7 & 1) == 0)
    {
      *(*(*(a1 + 56) + 8) + 24) = 0;
      v8 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_100002198();
      }

      v9 = [DASharedTestStatusHelper statusCodeForArchiveError:*(*(*(a1 + 48) + 8) + 40)];
      v10 = [*(a1 + 32) result];
      [v10 setStatusCode:v9];
    }
  }
}