void sub_1000010D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, ...)
{
  va_start(va, a31);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000010FC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100001118(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    CLSInitLog();
    v8 = CLSLogDefault;
    if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_ERROR))
    {
      v10 = 138543362;
      v11 = v7;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Error getting database path: %{public}@", &v10, 0xCu);
    }
  }

  else if (v6)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  else
  {
    CLSInitLog();
    v9 = CLSLogDefault;
    if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_DEBUG))
    {
      v10 = 138543362;
      v11 = 0;
      _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Path is not a true value: %{public}@;", &v10, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();
}