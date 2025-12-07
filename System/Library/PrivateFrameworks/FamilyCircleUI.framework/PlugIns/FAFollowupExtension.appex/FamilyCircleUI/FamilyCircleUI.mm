void sub_1000018BC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = _FALogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100001C7C(v4);
    }

    v6 = [*(a1 + 32) followupItem];
    v7 = [v6 uniqueIdentifier];
    [FAFollowupManager tearDownFollowupItemWithIdentifier:v7 completion:0];
  }

  [*(a1 + 32) finishProcessing];
}

void sub_100001B4C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void sub_100001BB0(void *a1)
{
  v1 = [a1 description];
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = v1;
  sub_100001B4C(&_mh_execute_header, v2, v3, "Failed to open URL with error: %@", v4, v5, v6, v7, v8, DWORD2(v8));
}

void sub_100001C7C(void *a1)
{
  v1 = [a1 description];
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = v1;
  sub_100001B4C(&_mh_execute_header, v2, v3, "Failed to load remoteUI with error: %@", v4, v5, v6, v7, v8, DWORD2(v8));
}