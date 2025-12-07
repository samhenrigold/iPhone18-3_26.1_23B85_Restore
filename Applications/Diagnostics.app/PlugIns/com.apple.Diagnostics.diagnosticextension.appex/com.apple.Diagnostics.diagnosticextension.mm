void sub_100001968(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void sub_100001BC4(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 134217984;
  *(&v8 + 4) = *a1;
  sub_100001968(&_mh_execute_header, a2, a3, "could not find powerlog container (%llu)...", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_100001C34(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  sub_100001968(&_mh_execute_header, a2, a3, "Unable to delete stale ELS file = %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_100001CA0(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  sub_100001968(&_mh_execute_header, a2, a3, "Unable to write ELS file = %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_100001D50(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Field Diagnostics Logs did not collect properly: [%@]", &v2, 0xCu);
}