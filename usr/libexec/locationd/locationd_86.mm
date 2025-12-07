id sub_1005F7FD8(uint64_t a1, void *a2)
{
  if (![a2 cppObjectPtr] && objc_msgSend(objc_msgSend(a2, "compatibilityInfo"), "isEqual:", &off_10254ED50))
  {
    if ([objc_msgSend(a2 "serialized")] != 8)
    {
      sub_1018E5264();
    }

    [a2 setCppObjectPtr:{objc_msgSend(objc_msgSend(a2, "serialized"), "bytes")}];
  }

  return [a2 cppObjectPtr];
}

uint64_t sub_1005F8060()
{
  qword_1026582D0 = off_102463A58;
  qword_1026582E8 = &qword_1026582D0;
  __cxa_atexit(sub_1003EE78C, &qword_1026582D0, dword_100000000);
  qword_1026582F0 = off_102463AD8;
  qword_102658308 = &qword_1026582F0;
  __cxa_atexit(sub_1003EE78C, &qword_1026582F0, dword_100000000);
  qword_102658310 = off_102463B58;
  qword_102658328 = &qword_102658310;
  __cxa_atexit(sub_1003EE790, &qword_102658310, dword_100000000);
  qword_102658330 = off_102463BD8;
  qword_102658348 = &qword_102658330;
  __cxa_atexit(sub_1003EE790, &qword_102658330, dword_100000000);
  __cxa_atexit(sub_1005A704C, aAcc800fp_0, dword_100000000);

  return __cxa_atexit(sub_1005A704C, aDmfp_0, dword_100000000);
}

void sub_1005F835C()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Shared/Utilities/CLSqliteErrorHandlers.h", 159, "handleSqlErrorCode_SQLITE_ERROR");
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1005F8580()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Shared/Utilities/CLSqliteErrorHandlers.h", 159, "handleSqlErrorCode_SQLITE_INTERNAL");
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1005F87A4()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Shared/Utilities/CLSqliteErrorHandlers.h", 159, "handleSqlErrorCode_SQLITE_PERM");
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1005F89C8()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Shared/Utilities/CLSqliteErrorHandlers.h", 159, "handleSqlErrorCode_SQLITE_ABORT");
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1005F8BEC()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Shared/Utilities/CLSqliteErrorHandlers.h", 159, "handleSqlErrorCode_SQLITE_BUSY");
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1005F8E10()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Shared/Utilities/CLSqliteErrorHandlers.h", 159, "handleSqlErrorCode_SQLITE_LOCKED");
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1005F9034()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Shared/Utilities/CLSqliteErrorHandlers.h", 159, "handleSqlErrorCode_SQLITE_NOMEM");
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1005F9258()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Shared/Utilities/CLSqliteErrorHandlers.h", 159, "handleSqlErrorCode_SQLITE_READONLY");
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1005F947C()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Shared/Utilities/CLSqliteErrorHandlers.h", 159, "handleSqlErrorCode_SQLITE_INTERRUPT");
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1005F96A0()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Shared/Utilities/CLSqliteErrorHandlers.h", 159, "handleSqlErrorCode_SQLITE_IOERR");
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1005F98C4()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Shared/Utilities/CLSqliteErrorHandlers.h", 159, "handleSqlErrorCode_SQLITE_CORRUPT");
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1005F9AE8()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Shared/Utilities/CLSqliteErrorHandlers.h", 159, "handleSqlErrorCode_SQLITE_NOTFOUND");
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1005F9D0C()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Shared/Utilities/CLSqliteErrorHandlers.h", 159, "handleSqlErrorCode_SQLITE_FULL");
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1005F9F30()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Shared/Utilities/CLSqliteErrorHandlers.h", 159, "handleSqlErrorCode_SQLITE_CANTOPEN");
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1005FA154()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Shared/Utilities/CLSqliteErrorHandlers.h", 159, "handleSqlErrorCode_SQLITE_PROTOCOL");
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1005FA378()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Shared/Utilities/CLSqliteErrorHandlers.h", 159, "handleSqlErrorCode_SQLITE_EMPTY");
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1005FA59C()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Shared/Utilities/CLSqliteErrorHandlers.h", 159, "handleSqlErrorCode_SQLITE_SCHEMA");
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1005FA7C0()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Shared/Utilities/CLSqliteErrorHandlers.h", 159, "handleSqlErrorCode_SQLITE_TOOBIG");
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1005FA9E4()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Shared/Utilities/CLSqliteErrorHandlers.h", 159, "handleSqlErrorCode_SQLITE_CONSTRAINT");
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1005FAC08()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Shared/Utilities/CLSqliteErrorHandlers.h", 159, "handleSqlErrorCode_SQLITE_MISMATCH");
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1005FAE2C()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Shared/Utilities/CLSqliteErrorHandlers.h", 159, "handleSqlErrorCode_SQLITE_MISUSE");
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1005FB050()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Shared/Utilities/CLSqliteErrorHandlers.h", 159, "handleSqlErrorCode_SQLITE_NOLFS");
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1005FB274()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Shared/Utilities/CLSqliteErrorHandlers.h", 159, "handleSqlErrorCode_SQLITE_AUTH");
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1005FB498()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Shared/Utilities/CLSqliteErrorHandlers.h", 159, "handleSqlErrorCode_SQLITE_FORMAT");
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1005FB6BC()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Shared/Utilities/CLSqliteErrorHandlers.h", 159, "handleSqlErrorCode_SQLITE_RANGE");
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1005FB8E0()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Shared/Utilities/CLSqliteErrorHandlers.h", 159, "handleSqlErrorCode_SQLITE_NOTADB");
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1005FBB04()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Shared/Utilities/CLSqliteErrorHandlers.h", 159, "handleSqlErrorCode_SQLITE_NOTICE");
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1005FBD28()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Shared/Utilities/CLSqliteErrorHandlers.h", 159, "handleSqlErrorCode_SQLITE_WARNING");
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1005FBF4C()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Shared/Utilities/CLSqliteErrorHandlers.h", 159, "handleSqlErrorCode_SQLITE_ROW");
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1005FC170()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Shared/Utilities/CLSqliteErrorHandlers.h", 159, "handleSqlErrorCode_SQLITE_DONE");
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1005FC394()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Shared/Utilities/CLSqliteErrorHandlers.h", 160, "handleSqlErrorCode_SQLITE_ERROR_MISSING_COLLSEQ");
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1005FC5B8()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Shared/Utilities/CLSqliteErrorHandlers.h", 160, "handleSqlErrorCode_SQLITE_ERROR_RETRY");
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1005FC7DC()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Shared/Utilities/CLSqliteErrorHandlers.h", 160, "handleSqlErrorCode_SQLITE_ERROR_SNAPSHOT");
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1005FCA00()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Shared/Utilities/CLSqliteErrorHandlers.h", 160, "handleSqlErrorCode_SQLITE_IOERR_READ");
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1005FCC24()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Shared/Utilities/CLSqliteErrorHandlers.h", 160, "handleSqlErrorCode_SQLITE_IOERR_SHORT_READ");
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1005FCE48()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Shared/Utilities/CLSqliteErrorHandlers.h", 160, "handleSqlErrorCode_SQLITE_IOERR_WRITE");
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1005FD06C()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Shared/Utilities/CLSqliteErrorHandlers.h", 160, "handleSqlErrorCode_SQLITE_IOERR_FSYNC");
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1005FD290()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Shared/Utilities/CLSqliteErrorHandlers.h", 160, "handleSqlErrorCode_SQLITE_IOERR_DIR_FSYNC");
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1005FD4B4()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Shared/Utilities/CLSqliteErrorHandlers.h", 160, "handleSqlErrorCode_SQLITE_IOERR_TRUNCATE");
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1005FD6D8()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Shared/Utilities/CLSqliteErrorHandlers.h", 160, "handleSqlErrorCode_SQLITE_IOERR_FSTAT");
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1005FD8FC()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Shared/Utilities/CLSqliteErrorHandlers.h", 160, "handleSqlErrorCode_SQLITE_IOERR_UNLOCK");
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1005FDB20()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Shared/Utilities/CLSqliteErrorHandlers.h", 160, "handleSqlErrorCode_SQLITE_IOERR_RDLOCK");
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1005FDD44()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Shared/Utilities/CLSqliteErrorHandlers.h", 160, "handleSqlErrorCode_SQLITE_IOERR_DELETE");
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1005FDF68()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Shared/Utilities/CLSqliteErrorHandlers.h", 160, "handleSqlErrorCode_SQLITE_IOERR_BLOCKED");
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1005FE18C()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Shared/Utilities/CLSqliteErrorHandlers.h", 160, "handleSqlErrorCode_SQLITE_IOERR_NOMEM");
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1005FE3B0()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Shared/Utilities/CLSqliteErrorHandlers.h", 160, "handleSqlErrorCode_SQLITE_IOERR_ACCESS");
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1005FE5D4()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Shared/Utilities/CLSqliteErrorHandlers.h", 160, "handleSqlErrorCode_SQLITE_IOERR_CHECKRESERVEDLOCK");
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1005FE7F8()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Shared/Utilities/CLSqliteErrorHandlers.h", 160, "handleSqlErrorCode_SQLITE_IOERR_LOCK");
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1005FEA1C()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Shared/Utilities/CLSqliteErrorHandlers.h", 160, "handleSqlErrorCode_SQLITE_IOERR_CLOSE");
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1005FEC40()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Shared/Utilities/CLSqliteErrorHandlers.h", 160, "handleSqlErrorCode_SQLITE_IOERR_DIR_CLOSE");
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1005FEE64()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Shared/Utilities/CLSqliteErrorHandlers.h", 160, "handleSqlErrorCode_SQLITE_IOERR_SHMOPEN");
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1005FF088()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Shared/Utilities/CLSqliteErrorHandlers.h", 160, "handleSqlErrorCode_SQLITE_IOERR_SHMSIZE");
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1005FF2AC()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Shared/Utilities/CLSqliteErrorHandlers.h", 160, "handleSqlErrorCode_SQLITE_IOERR_SHMLOCK");
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1005FF4D0()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Shared/Utilities/CLSqliteErrorHandlers.h", 160, "handleSqlErrorCode_SQLITE_IOERR_SHMMAP");
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1005FF6F4()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Shared/Utilities/CLSqliteErrorHandlers.h", 160, "handleSqlErrorCode_SQLITE_IOERR_SEEK");
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1005FF918()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Shared/Utilities/CLSqliteErrorHandlers.h", 160, "handleSqlErrorCode_SQLITE_IOERR_DELETE_NOENT");
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1005FFB3C()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Shared/Utilities/CLSqliteErrorHandlers.h", 160, "handleSqlErrorCode_SQLITE_IOERR_MMAP");
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1005FFD60()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Shared/Utilities/CLSqliteErrorHandlers.h", 160, "handleSqlErrorCode_SQLITE_IOERR_GETTEMPPATH");
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1005FFF84()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Shared/Utilities/CLSqliteErrorHandlers.h", 160, "handleSqlErrorCode_SQLITE_IOERR_CONVPATH");
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1006001A8()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Shared/Utilities/CLSqliteErrorHandlers.h", 160, "handleSqlErrorCode_SQLITE_IOERR_VNODE");
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1006003CC()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Shared/Utilities/CLSqliteErrorHandlers.h", 160, "handleSqlErrorCode_SQLITE_IOERR_AUTH");
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1006005F0()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Shared/Utilities/CLSqliteErrorHandlers.h", 160, "handleSqlErrorCode_SQLITE_IOERR_BEGIN_ATOMIC");
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_100600814()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Shared/Utilities/CLSqliteErrorHandlers.h", 160, "handleSqlErrorCode_SQLITE_IOERR_COMMIT_ATOMIC");
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_100600A38()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Shared/Utilities/CLSqliteErrorHandlers.h", 160, "handleSqlErrorCode_SQLITE_IOERR_ROLLBACK_ATOMIC");
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_100600C5C()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Shared/Utilities/CLSqliteErrorHandlers.h", 160, "handleSqlErrorCode_SQLITE_LOCKED_SHAREDCACHE");
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_100600E80()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Shared/Utilities/CLSqliteErrorHandlers.h", 160, "handleSqlErrorCode_SQLITE_LOCKED_VTAB");
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1006010A4()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Shared/Utilities/CLSqliteErrorHandlers.h", 160, "handleSqlErrorCode_SQLITE_BUSY_RECOVERY");
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1006012C8()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Shared/Utilities/CLSqliteErrorHandlers.h", 160, "handleSqlErrorCode_SQLITE_BUSY_SNAPSHOT");
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1006014EC()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Shared/Utilities/CLSqliteErrorHandlers.h", 160, "handleSqlErrorCode_SQLITE_CANTOPEN_NOTEMPDIR");
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_100601710()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Shared/Utilities/CLSqliteErrorHandlers.h", 160, "handleSqlErrorCode_SQLITE_CANTOPEN_ISDIR");
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_100601934()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Shared/Utilities/CLSqliteErrorHandlers.h", 160, "handleSqlErrorCode_SQLITE_CANTOPEN_FULLPATH");
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_100601B58()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Shared/Utilities/CLSqliteErrorHandlers.h", 160, "handleSqlErrorCode_SQLITE_CANTOPEN_CONVPATH");
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_100601D7C()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Shared/Utilities/CLSqliteErrorHandlers.h", 160, "handleSqlErrorCode_SQLITE_CANTOPEN_DIRTYWAL");
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_100601FA0()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Shared/Utilities/CLSqliteErrorHandlers.h", 160, "handleSqlErrorCode_SQLITE_CORRUPT_VTAB");
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1006021C4()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Shared/Utilities/CLSqliteErrorHandlers.h", 160, "handleSqlErrorCode_SQLITE_CORRUPT_SEQUENCE");
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1006023E8()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Shared/Utilities/CLSqliteErrorHandlers.h", 160, "handleSqlErrorCode_SQLITE_READONLY_RECOVERY");
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_10060260C()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Shared/Utilities/CLSqliteErrorHandlers.h", 160, "handleSqlErrorCode_SQLITE_READONLY_CANTLOCK");
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_100602830()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Shared/Utilities/CLSqliteErrorHandlers.h", 160, "handleSqlErrorCode_SQLITE_READONLY_ROLLBACK");
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_100602A54()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Shared/Utilities/CLSqliteErrorHandlers.h", 160, "handleSqlErrorCode_SQLITE_READONLY_DBMOVED");
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_100602C78()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Shared/Utilities/CLSqliteErrorHandlers.h", 160, "handleSqlErrorCode_SQLITE_READONLY_CANTINIT");
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_100602E9C()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Shared/Utilities/CLSqliteErrorHandlers.h", 160, "handleSqlErrorCode_SQLITE_READONLY_DIRECTORY");
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1006030C0()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Shared/Utilities/CLSqliteErrorHandlers.h", 160, "handleSqlErrorCode_SQLITE_ABORT_ROLLBACK");
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1006032E4()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Shared/Utilities/CLSqliteErrorHandlers.h", 160, "handleSqlErrorCode_SQLITE_CONSTRAINT_CHECK");
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_100603508()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Shared/Utilities/CLSqliteErrorHandlers.h", 160, "handleSqlErrorCode_SQLITE_CONSTRAINT_COMMITHOOK");
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_10060372C()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Shared/Utilities/CLSqliteErrorHandlers.h", 160, "handleSqlErrorCode_SQLITE_CONSTRAINT_FOREIGNKEY");
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_100603950()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Shared/Utilities/CLSqliteErrorHandlers.h", 160, "handleSqlErrorCode_SQLITE_CONSTRAINT_FUNCTION");
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_100603B74()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Shared/Utilities/CLSqliteErrorHandlers.h", 160, "handleSqlErrorCode_SQLITE_CONSTRAINT_NOTNULL");
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_100603D98()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Shared/Utilities/CLSqliteErrorHandlers.h", 160, "handleSqlErrorCode_SQLITE_CONSTRAINT_PRIMARYKEY");
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_100603FBC()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Shared/Utilities/CLSqliteErrorHandlers.h", 160, "handleSqlErrorCode_SQLITE_CONSTRAINT_TRIGGER");
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1006041E0()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Shared/Utilities/CLSqliteErrorHandlers.h", 160, "handleSqlErrorCode_SQLITE_CONSTRAINT_UNIQUE");
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_100604404()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Shared/Utilities/CLSqliteErrorHandlers.h", 160, "handleSqlErrorCode_SQLITE_CONSTRAINT_VTAB");
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_100604628()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Shared/Utilities/CLSqliteErrorHandlers.h", 160, "handleSqlErrorCode_SQLITE_CONSTRAINT_ROWID");
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_10060484C()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Shared/Utilities/CLSqliteErrorHandlers.h", 160, "handleSqlErrorCode_SQLITE_NOTICE_RECOVER_WAL");
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_100604A70()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Shared/Utilities/CLSqliteErrorHandlers.h", 160, "handleSqlErrorCode_SQLITE_NOTICE_RECOVER_ROLLBACK");
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_100604C94()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Shared/Utilities/CLSqliteErrorHandlers.h", 160, "handleSqlErrorCode_SQLITE_WARNING_AUTOINDEX");
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_100604EB8()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Shared/Utilities/CLSqliteErrorHandlers.h", 160, "handleSqlErrorCode_SQLITE_AUTH_USER");
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1006050DC()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Shared/Utilities/CLSqliteErrorHandlers.h", 160, "handleSqlErrorCode_SQLITE_OK_LOAD_PERMANENTLY");
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_100605300()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Shared/Utilities/CLSqliteErrorHandlers.h", 161, "handleSqlErrorCode_UNDEFINED");
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_100605524(uint64_t a1, sqlite3_stmt *a2, int a3)
{
  v6 = sqlite3_stmt_status(a2, 1, a3);
  v7 = sqlite3_stmt_status(a2, 2, a3);
  if (qword_1025D48A0 != -1)
  {
    sub_1018E5798();
  }

  v8 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    v9 = sqlite3_sql(a2);
    v10 = (a1 + 96);
    if (*(a1 + 119) < 0)
    {
      v10 = *v10;
    }

    *buf = 136315906;
    v25 = v9;
    v26 = 1024;
    v27 = v6;
    v28 = 1024;
    v29 = v7;
    v30 = 2080;
    v31 = v10;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "Query: %s, full table scans: %d, sorts: %d, File: %s", buf, 0x22u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D48A0 != -1)
    {
      sub_1018E57AC();
    }

    v11 = qword_1025D48A8;
    v12 = sqlite3_sql(a2);
    v13 = (a1 + 96);
    if (*(a1 + 119) < 0)
    {
      v13 = *v13;
    }

    v16 = 136315906;
    v17 = v12;
    v18 = 1024;
    v19 = v6;
    v20 = 1024;
    v21 = v7;
    v22 = 2080;
    v23 = v13;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v11, 2, "Query: %s, full table scans: %d, sorts: %d, File: %s", &v16, 34);
    v15 = v14;
    sub_100152C7C("Generic", 1, 0, 2, "void CLSqliteDatabase::logStmtStatus(sqlite3_stmt *, BOOL)", "%s\n", v14);
    if (v15 != buf)
    {
      free(v15);
    }
  }
}

void sub_100605758(uint64_t a1)
{
  *(a1 + 120) = 0;
  memset(&__p, 0, sizeof(__p));
  if (qword_1025D4850 != -1)
  {
    sub_1018E57D4();
  }

  v2 = off_1025D4858;
  v3 = os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEBUG);
  if (v3)
  {
    v5 = (a1 + 64);
    if (*(a1 + 87) < 0)
    {
      v5 = *v5;
    }

    v6 = *(a1 + 48);
    v7 = *(a1 + 52);
    *buf = 68289794;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2082;
    *&buf[20] = v5;
    v60 = 1026;
    *v61 = v6;
    *&v61[4] = 1026;
    *&v61[6] = v7;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:open, path:%{public, location:escape_only}s, protection:%{public}d, persistence:%{public}d}", buf, 0x28u);
  }

  v8 = *(a1 + 87);
  if (v8 < 0)
  {
    v8 = *(a1 + 72);
  }

  v9 = (a1 + 96);
  if (!v8)
  {
    if ((*(a1 + 119) & 0x8000000000000000) != 0)
    {
      if (*(a1 + 104))
      {
LABEL_14:
        v14 = sub_1001B1CF8(v3, v4);
        v45 = *(a1 + 48);
        v46 = *(a1 + 56);
        v13 = &v47;
        if (*(a1 + 87) < 0)
        {
          sub_100007244(&v47, *(a1 + 64), *(a1 + 72));
        }

        else
        {
          v47 = *(a1 + 64);
          v48 = *(a1 + 80);
        }

        v49 = *(a1 + 88);
        v16 = sub_100DBA9A4(v14, &v45, (a1 + 96), &v56);
        v55 = v16;
        if (SHIBYTE(v48) < 0)
        {
          goto LABEL_51;
        }

        goto LABEL_18;
      }
    }

    else if (*(a1 + 119))
    {
      goto LABEL_14;
    }

    v22 = sub_1001B1CF8(v3, v4);
    v40 = *(a1 + 48);
    v41 = *(a1 + 56);
    v13 = &v42;
    if (*(a1 + 87) < 0)
    {
      sub_100007244(&v42, *(a1 + 64), *(a1 + 72));
    }

    else
    {
      v42 = *(a1 + 64);
      v43 = *(a1 + 80);
    }

    v44 = *(a1 + 88);
    v16 = sub_100DBA8AC(v22, &v40, &v56);
    v55 = v16;
    if (SHIBYTE(v43) < 0)
    {
      goto LABEL_51;
    }

LABEL_18:
    if (v16)
    {
      goto LABEL_19;
    }

    goto LABEL_52;
  }

  v10 = std::string::operator=((a1 + 96), (a1 + 64));
  v12 = sub_1001B1CF8(v10, v11);
  v50 = *(a1 + 48);
  v51 = *(a1 + 56);
  v13 = &v52;
  if (*(a1 + 87) < 0)
  {
    sub_100007244(&v52, *(a1 + 64), *(a1 + 72));
  }

  else
  {
    v52 = *(a1 + 64);
    v53 = *(a1 + 80);
  }

  v54 = *(a1 + 88);
  v16 = sub_100DBA9A4(v12, &v50, (a1 + 64), &v56);
  v55 = v16;
  if ((SHIBYTE(v53) & 0x80000000) == 0)
  {
    goto LABEL_18;
  }

LABEL_51:
  operator delete(*v13);
  if (v16)
  {
LABEL_19:
    if ((*(a1 + 119) & 0x8000000000000000) != 0)
    {
      if (!*(a1 + 104))
      {
LABEL_23:
        sub_1006083DC(a1 + 48, v15, buf);
        if (*(a1 + 119) < 0)
        {
          operator delete(*v9);
        }

        *v9 = *buf;
        *(a1 + 112) = *&buf[16];
      }
    }

    else if (!*(a1 + 119))
    {
      goto LABEL_23;
    }

    if (v16 == 23)
    {
      if (qword_1025D4850 != -1)
      {
        sub_1018E57E8();
      }

      v17 = off_1025D4858;
      if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a1 + 119) < 0)
        {
          v9 = *v9;
        }

        *buf = 68289794;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2082;
        *&buf[20] = v9;
        v60 = 1040;
        *v61 = 4;
        *&v61[4] = 2098;
        *&v61[6] = &v55;
        _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#warning Could not open database, path:%{public, location:escape_only}s, rc:%{public, location:SqliteResult}.*P}", buf, 0x2Cu);
      }
    }

    else
    {
      if (qword_1025D4850 != -1)
      {
        sub_1018E57E8();
      }

      v18 = off_1025D4858;
      if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
      {
        v19 = (a1 + 96);
        if (*(a1 + 119) < 0)
        {
          v19 = *v9;
        }

        *buf = 68289794;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2082;
        *&buf[20] = v19;
        v60 = 1040;
        *v61 = 4;
        *&v61[4] = 2098;
        *&v61[6] = &v55;
        _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Could not open database, path:%{public, location:escape_only}s, rc:%{public, location:SqliteResult}.*P}", buf, 0x2Cu);
        if (qword_1025D4850 != -1)
        {
          sub_1018E57E8();
        }
      }

      v20 = off_1025D4858;
      if (os_signpost_enabled(off_1025D4858))
      {
        v21 = (a1 + 96);
        if (*(a1 + 119) < 0)
        {
          v21 = *v9;
        }

        *buf = 68289794;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2082;
        *&buf[20] = v21;
        v60 = 1040;
        *v61 = 4;
        *&v61[4] = 2098;
        *&v61[6] = &v55;
        _os_signpost_emit_with_name_impl(dword_100000000, v20, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Could not open database", "{msg%{public}.0s:Could not open database, path:%{public, location:escape_only}s, rc:%{public, location:SqliteResult}.*P}", buf, 0x2Cu);
      }

      sub_10060AF58(*(a1 + 8), (a1 + 96), *(a1 + 56), v55);
    }

    *(a1 + 8) = 0;
    goto LABEL_105;
  }

LABEL_52:
  *(a1 + 8) = v56;
  v23 = *(a1 + 119);
  if (v23 < 0)
  {
    v24 = *(a1 + 104);
  }

  else
  {
    v24 = *(a1 + 119);
  }

  if (v24)
  {
    if (v23 >= 0)
    {
      v25 = *(a1 + 119);
    }

    else
    {
      v25 = *(a1 + 104);
    }

    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    if (v25 != size || (v23 >= 0 ? (v27 = (a1 + 96)) : (v27 = *v9), (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v28 = &__p) : (v28 = __p.__r_.__value_.__r.__words[0]), memcmp(v27, v28, v25)))
    {
      if (qword_1025D4850 != -1)
      {
        sub_1018E57E8();
      }

      v29 = off_1025D4858;
      if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
      {
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        v31 = (a1 + 96);
        if (*(a1 + 119) < 0)
        {
          v31 = *v9;
        }

        *buf = 68289538;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2082;
        *&buf[20] = p_p;
        v60 = 2082;
        *v61 = v31;
        _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Requested filename, expected:%{public, location:escape_only}s, actual:%{public, location:escape_only}s}", buf, 0x26u);
        if (qword_1025D4850 != -1)
        {
          sub_1018E57E8();
        }
      }

      v32 = off_1025D4858;
      if (os_signpost_enabled(off_1025D4858))
      {
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v33 = &__p;
        }

        else
        {
          v33 = __p.__r_.__value_.__r.__words[0];
        }

        if (*(a1 + 119) < 0)
        {
          v9 = *v9;
        }

        *buf = 68289538;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2082;
        *&buf[20] = v33;
        v60 = 2082;
        *v61 = v9;
        _os_signpost_emit_with_name_impl(dword_100000000, v32, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Requested filename", "{msg%{public}.0s:Requested filename, expected:%{public, location:escape_only}s, actual:%{public, location:escape_only}s}", buf, 0x26u);
      }
    }
  }

  else
  {
    std::string::operator=((a1 + 96), &__p);
    if (qword_1025D4850 != -1)
    {
      sub_1018E57E8();
    }

    v34 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      if (*(a1 + 119) < 0)
      {
        v9 = *v9;
      }

      *buf = 68289282;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = v9;
      _os_log_impl(dword_100000000, v34, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Returned database, path:%{public, location:escape_only}s}", buf, 0x1Cu);
    }
  }

  if ((*(a1 + 56) & 1) == 0)
  {
    v35 = *(a1 + 16);
    (*(*v35 + 16))(v35);
    if ((*v57 & 1) == 0)
    {
      *buf = "TableName";
      *&buf[8] = 3;
      *&buf[12] = 1;
      buf[16] = 0;
      v61[10] = 0;
      v62 = "SoftwareVersion";
      v63 = 3;
      v64 = 0;
      v65 = 0;
      v66 = 0;
      v67 = "SerialNumber";
      v68 = 3;
      v69 = 0;
      v70 = 0;
      v71 = 0;
      v72 = 0;
      v73 = 5;
      v74 = 0;
      v75 = 0;
      v76 = 0;
      sub_10060667C(a1, "TableInfo", buf, 0, 1);
      *v57 = 1;
    }

    sub_1006079AC(a1);
    (*(*v35 + 24))(v35);
  }

  if (!sub_1006081E8(a1, 1))
  {
    if (qword_1025D4850 != -1)
    {
      sub_1018E57E8();
    }

    v36 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      _os_log_impl(dword_100000000, v36, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Unable to turn ON foreign keys check}", buf, 0x12u);
      if (qword_1025D4850 != -1)
      {
        sub_1018E57E8();
      }
    }

    v37 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      _os_signpost_emit_with_name_impl(dword_100000000, v37, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Unable to turn ON foreign keys check", "{msg%{public}.0s:Unable to turn ON foreign keys check}", buf, 0x12u);
    }
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, a1, sub_100608370, @"com.apple.locationd.DumpDiagnostics", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterAddObserver(LocalCenter, a1, sub_100608370, @"com.apple.locationd.DumpDiagnostics", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
LABEL_105:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

uint64_t sub_1006061EC(uint64_t a1, uint64_t *a2)
{
  *a1 = off_102463DE0;
  *(a1 + 8) = 0;
  *(a1 + 24) = a1 + 24;
  *(a1 + 32) = a1 + 24;
  *(a1 + 40) = 0;
  v4 = *a2;
  *(a1 + 56) = *(a2 + 4);
  *(a1 + 48) = v4;
  if (*(a2 + 39) < 0)
  {
    sub_100007244((a1 + 64), a2[2], a2[3]);
  }

  else
  {
    v5 = *(a2 + 1);
    *(a1 + 80) = a2[4];
    *(a1 + 64) = v5;
  }

  *(a1 + 88) = a2[5];
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 128) = 0;
  sub_100605758(a1);
  return a1;
}

int *sub_1006062DC(int *a1)
{
  *a1 = off_102463DE0;
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, a1);
  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterRemoveEveryObserver(LocalCenter, a1);
  for (i = *(a1 + 4); i != a1 + 6; i = v7)
  {
    v7 = *(i + 8);
    v4 = sub_1006063E4(a1, *(i + 16));
  }

  if (*(a1 + 1))
  {
    if (a1[30] >= 1)
    {
      do
      {
        v4 = sub_1000393C8(*(a1 + 2));
        v8 = a1[30];
        v9 = __OFSUB__(v8--, 1);
        a1[30] = v8;
      }

      while (!((v8 < 0) ^ v9 | (v8 == 0)));
    }

    v10 = sub_1001B1CF8(v4, v5);
    sub_100DBAFD0(v10, *(a1 + 1));
    *(a1 + 1) = 0;
  }

  if (*(a1 + 2))
  {
    *(a1 + 2) = 0;
  }

  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 12));
  }

  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 8));
  }

  sub_1001FB750(a1 + 3);
  return a1;
}

uint64_t sub_1006063E4(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = *(a1 + 16);
  (*(*v4 + 16))(v4);
  v5 = *(a1 + 32);
  if (v5 == (a1 + 24))
  {
LABEL_4:
    if (qword_1025D4850 != -1)
    {
      sub_1018E57D4();
    }

    v7 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289282;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      v15 = 2050;
      v16 = a2;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Could not find prepared statement, statement:%{public}p}", buf, 0x1Cu);
      if (qword_1025D4850 != -1)
      {
        sub_1018E57E8();
      }
    }

    v8 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289282;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      v15 = 2050;
      v16 = a2;
      _os_signpost_emit_with_name_impl(dword_100000000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Could not find prepared statement", "{msg%{public}.0s:Could not find prepared statement, statement:%{public}p}", buf, 0x1Cu);
    }
  }

  else
  {
    while (1)
    {
      v6 = v5[1];
      if (v5[2] == a2)
      {
        break;
      }

      v5 = v5[1];
      if (v6 == (a1 + 24))
      {
        goto LABEL_4;
      }
    }

    v9 = *v5;
    *(v9 + 8) = v6;
    *v6 = v9;
    --*(a1 + 40);
    operator delete(v5);
    sub_1001B1DA0(*(a1 + 8), a2);
  }

  return (*(*v4 + 24))(v4);
}

void sub_100606644(int *a1)
{
  sub_1006062DC(a1);

  operator delete();
}

uint64_t sub_10060667C(uint64_t a1, char *a2, const char **a3, const char **a4, char a5)
{
  v147 = *(a1 + 16);
  (*(*v147 + 16))(v147);
  v149 = 256;
  if (!a3 || !*a3)
  {
    if (qword_1025D4850 != -1)
    {
      sub_1018E57D4();
    }

    v12 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289283;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2081;
      *&buf[20] = a2;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Need at least one column in table, table:%{private, location:escape_only}s}", buf, 0x1Cu);
      if (qword_1025D4850 != -1)
      {
        sub_1018E57E8();
      }
    }

    v13 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289283;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2081;
      *&buf[20] = a2;
      _os_signpost_emit_with_name_impl(dword_100000000, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Need at least one column in table", "{msg%{public}.0s:Need at least one column in table, table:%{private, location:escape_only}s}", buf, 0x1Cu);
    }

    v14 = 0;
    goto LABEL_137;
  }

  sub_10003848C(v135);
  v8 = sub_100038730(&v136, "PRAGMA table_info(", 18);
  v9 = strlen(a2);
  v10 = sub_100038730(v8, a2, v9);
  buf[0] = 41;
  sub_100038730(v10, buf, 1);
  v124 = a5;
  if ((v146 & 0x10) != 0)
  {
    v15 = v145;
    if (v145 < v142)
    {
      v145 = v142;
      v15 = v142;
    }

    v16 = __src;
    goto LABEL_18;
  }

  if ((v146 & 8) != 0)
  {
    v16 = v139;
    v15 = v140;
LABEL_18:
    v11 = v15 - v16;
    if (v15 - v16 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_100061080();
    }

    if (v11 >= 0x17)
    {
      operator new();
    }

    buf[23] = v15 - v16;
    if (v11)
    {
      memmove(buf, v16, v11);
    }

    goto LABEL_24;
  }

  v11 = 0;
  buf[23] = 0;
LABEL_24:
  buf[v11] = 0;
  if ((buf[23] & 0x80u) == 0)
  {
    v17 = buf;
  }

  else
  {
    v17 = *buf;
  }

  v18 = sub_100038DE8(a1, v17);
  v125 = a4;
  if (buf[23] < 0)
  {
    operator delete(*buf);
  }

  v19 = 0;
  v20 = 1;
  v130 = a3;
  while (sqlite3_step(v18) == 100)
  {
    v21 = &a3[6 * v19];
    v22 = *v21;
    if (!*v21)
    {
      goto LABEL_51;
    }

    v23 = sqlite3_column_text(v18, 1);
    if (strcmp(v22, v23))
    {
      goto LABEL_40;
    }

    v24 = *(v21 + 2);
    v25 = "INTEGER";
    if (v24 != 1)
    {
      v26 = &off_102463F00;
      v27 = 5;
      do
      {
        v28 = v26;
        if (!--v27)
        {
          break;
        }

        v26 += 2;
      }

      while (*(v28 - 2) != v24);
      v25 = *v28;
    }

    v29 = sqlite3_column_text(v18, 2);
    if (strcmp(v25, v29) || *(v21 + 12) != sqlite3_column_int(v18, 5) > 0)
    {
LABEL_40:
      if (qword_1025D4850 != -1)
      {
        sub_1018E57E8();
      }

      v30 = off_1025D4858;
      v20 = 0;
      if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEFAULT))
      {
        v31 = *(v21 + 2);
        v32 = "INTEGER";
        if (v31 != 1)
        {
          v33 = &off_102463F00;
          v34 = 5;
          do
          {
            v35 = v33;
            if (!--v34)
            {
              break;
            }

            v33 += 2;
          }

          while (*(v35 - 2) != v31);
          v32 = *v35;
        }

        v36 = *v21;
        v37 = *(v21 + 12);
        v38 = sqlite3_column_text(v18, 1);
        v39 = sqlite3_column_text(v18, 2);
        v40 = sqlite3_column_int(v18, 5);
        *buf = 68291075;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2081;
        *&buf[20] = a2;
        v151 = 1026;
        *v152 = v19;
        *&v152[4] = 2082;
        *&v152[6] = v36;
        *&v152[14] = 2082;
        *&v152[16] = v32;
        *&v152[24] = 1026;
        *&v152[26] = v37;
        *v153 = 2082;
        *&v153[2] = v38;
        *v154 = 2082;
        *&v154[2] = v39;
        LOWORD(v155) = 1026;
        *(&v155 + 2) = v40 > 0;
        _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:@SqliteDB, warning, schema mismatch! Existing table's column does not match expected, table:%{private, location:escape_only}s, index:%{public}d, expected name:%{public, location:escape_only}s, expected type:%{public, location:escape_only}s, expected primary key:%{public}hhd, actual name:%{public, location:escape_only}s, actual type:%{public, location:escape_only}s, actual primary key:%{public}hhd}", buf, 0x56u);
        v20 = 0;
        a3 = v130;
      }
    }

    ++v19;
  }

  if (!a3[6 * v19])
  {
    goto LABEL_56;
  }

LABEL_51:
  if (qword_1025D4850 != -1)
  {
    sub_1018E57E8();
  }

  v41 = off_1025D4858;
  if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289283;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2081;
    *&buf[20] = a2;
    _os_log_impl(dword_100000000, v41, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:@SqliteDB, warning, schema mismatch! Existing table's schema does not have the same number of columns as the requested schema, table:%{private, location:escape_only}s}", buf, 0x1Cu);
  }

  v20 = 0;
LABEL_56:
  sub_1001B1DA0(*(a1 + 8), v18);
  if ((v20 & 1) == 0)
  {
    goto LABEL_118;
  }

  v42 = 0;
  memset(v164, 0, sizeof(v164));
  v43 = v19;
  do
  {
    v44 = &a3[6 * v43];
    if (*(v44 + 40) == 1)
    {
      if (v42 >= v164[2])
      {
        v47 = v164[0];
        v48 = 0xAAAAAAAAAAAAAAABLL * ((v42 - v164[0]) >> 4);
        v49 = v48 + 1;
        if (v48 + 1 > 0x555555555555555)
        {
          sub_10028C64C();
        }

        if (0x5555555555555556 * ((v164[2] - v164[0]) >> 4) > v49)
        {
          v49 = 0x5555555555555556 * ((v164[2] - v164[0]) >> 4);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v164[2] - v164[0]) >> 4) >= 0x2AAAAAAAAAAAAAALL)
        {
          v50 = 0x555555555555555;
        }

        else
        {
          v50 = v49;
        }

        if (v50)
        {
          sub_100485BE8(v164, v50);
        }

        v51 = (16 * ((v42 - v164[0]) >> 4));
        v52 = *v44;
        v53 = *(v44 + 2);
        v51[1] = *(v44 + 1);
        v51[2] = v53;
        *v51 = v52;
        v54 = (48 * v48 + v47 - v42);
        if (v47 != v42)
        {
          v55 = v47;
          v56 = (v51 + v47 - v42);
          do
          {
            v57 = *v55;
            v58 = *(v55 + 2);
            v56[1] = *(v55 + 1);
            v56[2] = v58;
            *v56 = v57;
            v56 += 3;
            v55 += 48;
          }

          while (v55 != v42);
        }

        v42 = (v51 + 3);
        v164[0] = v54;
        v164[1] = v51 + 3;
        v164[2] = 0;
        a3 = v130;
        if (v47)
        {
          operator delete(v47);
        }
      }

      else
      {
        v45 = *v44;
        v46 = *(v44 + 2);
        *(v42 + 1) = *(v44 + 1);
        *(v42 + 2) = v46;
        *v42 = v45;
        v42 += 48;
        a3 = v130;
      }

      v164[1] = v42;
    }

    else
    {
      a3 = v130;
    }
  }

  while (v43-- > 0);
  memset(buf, 0, 24);
  sub_100619F14(&v137, buf);
  if (buf[23] < 0)
  {
    operator delete(*buf);
  }

  v60 = sub_100038730(&v136, "PRAGMA foreign_key_list(", 24);
  v61 = strlen(a2);
  v62 = sub_100038730(v60, a2, v61);
  sub_100038730(v62, ")", 1);
  if ((v146 & 0x10) != 0)
  {
    v64 = v145;
    if (v145 < v142)
    {
      v145 = v142;
      v64 = v142;
    }

    v65 = __src;
  }

  else
  {
    if ((v146 & 8) == 0)
    {
      v63 = 0;
      buf[23] = 0;
      goto LABEL_93;
    }

    v65 = v139;
    v64 = v140;
  }

  v63 = v64 - v65;
  if (v64 - v65 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_100061080();
  }

  if (v63 >= 0x17)
  {
    operator new();
  }

  buf[23] = v64 - v65;
  if (v63)
  {
    memmove(buf, v65, v63);
  }

LABEL_93:
  buf[v63] = 0;
  if ((buf[23] & 0x80u) == 0)
  {
    v66 = buf;
  }

  else
  {
    v66 = *buf;
  }

  v67 = sub_100038DE8(a1, v66);
  if (buf[23] < 0)
  {
    operator delete(*buf);
  }

  v68 = sqlite3_step(v67);
  v69 = v68;
  v70 = v164[0];
  v126 = v67;
  v120 = v19;
  if ((v164[1] != v164[0] || v68 != 100) && (v164[1] == v164[0] || v68 == 100))
  {
    if (v68 == 100)
    {
      v80 = 0;
      v81 = 0;
      v82 = 1;
      v73 = 1;
      do
      {
        v128 = v80;
        v83 = *&v70[v81];
        v84 = sqlite3_column_text(v67, 3);
        if (strcmp(v83, v84))
        {
          goto LABEL_159;
        }

        v85 = *(v164[0] + v81 + 16);
        v86 = sqlite3_column_text(v67, 2);
        if (strcmp(v85, v86))
        {
          goto LABEL_159;
        }

        v87 = *(v164[0] + v81 + 24);
        v88 = sqlite3_column_text(v67, 4);
        if (strcmp(v87, v88))
        {
          goto LABEL_159;
        }

        sub_10000EC00(buf, (&off_102463FB8)[*(v164[0] + v81 + 36)]);
        v89 = buf[23];
        v90 = *buf;
        v91 = sqlite3_column_text(v67, 5);
        v92 = (v89 >= 0 ? buf : v90);
        if (!strcmp(v92, v91))
        {
          sub_1006118F4(*(v164[0] + v81 + 32), v133);
          v94 = v134;
          v95 = v133[0];
          v96 = sqlite3_column_text(v67, 6);
          if (v94 >= 0)
          {
            v97 = v133;
          }

          else
          {
            v97 = v95;
          }

          v93 = strcmp(v97, v96) != 0;
          if (v134 < 0)
          {
            operator delete(v133[0]);
          }
        }

        else
        {
          v93 = 1;
        }

        if (buf[23] < 0)
        {
          operator delete(*buf);
        }

        if (v93)
        {
LABEL_159:
          if (qword_1025D4850 != -1)
          {
            sub_1018E57E8();
          }

          v98 = off_1025D4858;
          if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEBUG))
          {
            v99 = *(v164[0] + v81);
            v101 = *(v164[0] + v81 + 16);
            v100 = *(v164[0] + v81 + 24);
            v102 = sqlite3_column_text(v67, 3);
            v103 = sqlite3_column_text(v67, 2);
            v122 = sqlite3_column_text(v67, 4);
            v123 = v103;
            v104 = v102;
            sub_10000EC00(v133, (&off_102463FB8)[*(v164[0] + v81 + 32)]);
            v105 = v99;
            v121 = v82;
            if (v134 >= 0)
            {
              v106 = v133;
            }

            else
            {
              v106 = v133[0];
            }

            v107 = sqlite3_column_text(v126, 6);
            v108 = v100;
            v109 = v98;
            sub_10000EC00(v131, (&off_102463FB8)[*(v164[0] + v81 + 36)]);
            v110 = v132;
            v111 = v131[0];
            v112 = sqlite3_column_text(v126, 5);
            *buf = 68291843;
            v113 = v131;
            if (v110 < 0)
            {
              v113 = v111;
            }

            *&buf[4] = 0;
            *&buf[8] = 2082;
            *&buf[10] = "";
            *&buf[18] = 2081;
            *&buf[20] = a2;
            v151 = 2082;
            *v152 = v105;
            *&v152[8] = 2082;
            *&v152[10] = v101;
            *&v152[18] = 2082;
            *&v152[20] = v108;
            *&v152[28] = 2082;
            *v153 = v104;
            *&v153[8] = 2082;
            *v154 = v123;
            *&v154[8] = 2082;
            v155 = v122;
            v156 = 2082;
            v157 = v106;
            v158 = 2082;
            v159 = v107;
            v160 = 2082;
            v161 = v113;
            v162 = 2082;
            v163 = v112;
            _os_log_impl(dword_100000000, v109, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:@SqliteDB, warning, schema mismatch! Existing table's foreign key constraint does not match expected, table:%{private, location:escape_only}s, ExpectedFromCol:%{public, location:escape_only}s, ExpectedToTable:%{public, location:escape_only}s, ExpectedToCol:%{public, location:escape_only}s, ActualFromCol:%{public, location:escape_only}s, ActualToTable:%{public, location:escape_only}s, ActualToCol:%{public, location:escape_only}s, ExpectedOnDelete:%{public, location:escape_only}s, ActualOnDelete:%{public, location:escape_only}s, ExpectedOnUpdate:%{public, location:escape_only}s, ActualOnUpdate:%{public, location:escape_only}s}", buf, 0x80u);
            if (v132 < 0)
            {
              operator delete(v131[0]);
            }

            a3 = v130;
            v67 = v126;
            LODWORD(v19) = v120;
            v82 = v121;
            if (v134 < 0)
            {
              operator delete(v133[0]);
            }
          }

          v73 = 0;
        }

        v114 = sqlite3_step(v67);
        v69 = v114;
        v70 = v164[0];
        v80 = dword_100000000 + v128;
        if (v82 == 0xAAAAAAAAAAAAAAABLL * ((v164[1] - v164[0]) >> 4))
        {
          break;
        }

        v81 += 48;
        ++v82;
      }

      while (v114 == 100);
      v72 = v80 >> 32;
    }

    else
    {
      v72 = 0;
      v73 = 1;
    }
  }

  else
  {
    if (qword_1025D4850 != -1)
    {
      sub_1018E57E8();
    }

    v71 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v71, OS_LOG_TYPE_DEBUG, "@SqliteDB, warning, schema mismatch!", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018E5810(buf);
      LOWORD(v133[0]) = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D4858, 2, "@SqliteDB, warning, schema mismatch!", v133, 2);
      v118 = v117;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLSqliteDatabase::createTableIfSchemaDiffers(const char *, const ColumnInfo *, const char **, BOOL)", "%s\n", v117);
      if (v118 != buf)
      {
        free(v118);
      }

      v72 = 0;
      v73 = 0;
      a3 = v130;
    }

    else
    {
      v72 = 0;
      v73 = 0;
    }
  }

  if (0xAAAAAAAAAAAAAAABLL * ((v164[1] - v164[0]) >> 4) > v72 || v69 == 100)
  {
    if (qword_1025D4850 != -1)
    {
      sub_1018E57E8();
    }

    v74 = off_1025D4858;
    v73 = 0;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      _os_log_impl(dword_100000000, v74, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:@SqliteDB, warning, schema mismatch! Actual table has more foreign key contraints than expected}", buf, 0x12u);
      v73 = 0;
    }
  }

  sub_1001B1DA0(*(a1 + 8), v67);
  if (v164[0])
  {
    v164[1] = v164[0];
    operator delete(v164[0]);
  }

  if (v73)
  {
    v75 = 1;
    goto LABEL_125;
  }

LABEL_118:
  if (v19)
  {
    if (qword_1025D4850 != -1)
    {
      sub_1018E57E8();
    }

    v76 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289283;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2081;
      *&buf[20] = a2;
      _os_log_impl(dword_100000000, v76, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:@SqliteDB, warning, schema mismatch! Table exists but does not have matching schema, table:%{private, location:escape_only}s}", buf, 0x1Cu);
    }

    sub_10060FDC8(a1, a2);
  }

  sub_10061061C(a1, a2, a3);
  v75 = 0;
LABEL_125:
  if ((v124 & 1) == 0)
  {
    sub_10060C424(a1, a2);
  }

  if (v125)
  {
    sub_10060E3B0(a1, a2, v125);
  }

  if (qword_1025D4850 != -1)
  {
    sub_1018E57E8();
  }

  v77 = off_1025D4858;
  if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446466;
    *&buf[4] = a2;
    *&buf[12] = 1026;
    *&buf[14] = v75;
    _os_log_impl(dword_100000000, v77, OS_LOG_TYPE_DEBUG, "@SqliteDB, table %{public}s, schema match, %{public}d", buf, 0x12u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018E5810(buf);
    LODWORD(v164[0]) = 136446466;
    *(v164 + 4) = a2;
    WORD2(v164[1]) = 1026;
    *(&v164[1] + 6) = v75;
    LODWORD(v119) = 18;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D4858, 2, "@SqliteDB, table %{public}s, schema match, %{public}d", v164, v119);
    v116 = v115;
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLSqliteDatabase::createTableIfSchemaDiffers(const char *, const ColumnInfo *, const char **, BOOL)", "%s\n", v115);
    if (v116 != buf)
    {
      free(v116);
    }
  }

  v14 = v75 ^ 1u;
  v136 = v78;
  if (v144 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v138);
  std::iostream::~basic_iostream();
  std::ios::~ios();
  if ((v149 & 0x100) != 0)
  {
LABEL_137:
    if (v149)
    {
      pthread_mutex_unlock(v148);
    }

    else
    {
      (*(*v147 + 24))(v147);
    }
  }

  return v14;
}

void sub_1006078A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v67 = *(v65 - 128);
  if (v67)
  {
    *(v65 - 120) = v67;
    operator delete(v67);
  }

  sub_10026C504(&a35);
  sub_1017EC98C(&a65);
  _Unwind_Resume(a1);
}

void sub_1006079AC(uint64_t a1)
{
  v50 = "id";
  v51 = 1;
  v52 = 1;
  v53 = 0;
  v54 = 0;
  v55 = "uuid";
  v56 = 3;
  v57 = 0;
  v58 = 0;
  v59 = 0;
  v60 = 0;
  v61 = 5;
  v62 = 0;
  v63 = 0;
  v64 = 0;
  v49[0] = "uuid";
  v49[1] = 0;
  sub_100608EC8(a1, "DatabaseIdentifier", &v50, v49, 0);
  memset(&v34, 0, sizeof(v34));
  v2 = sub_100038DE8(a1, "SELECT * FROM DatabaseIdentifier;");
  v3 = v2;
  if (v2)
  {
    if (sqlite3_step(v2) == 100)
    {
      v4 = sqlite3_column_text(v3, 1);
      sub_100006044(&v34, v4);
      v5 = [NSString alloc];
      if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v6 = &v34;
      }

      else
      {
        v6 = v34.__r_.__value_.__r.__words[0];
      }

      *(a1 + 128) = [v5 initWithUTF8String:v6];
      if (qword_1025D4850 != -1)
      {
        sub_1018E57E8();
      }

      v7 = off_1025D4858;
      if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a1 + 119) < 0)
        {
          sub_100007244(__p, *(a1 + 96), *(a1 + 104));
        }

        else
        {
          *__p = *(a1 + 96);
          *&__p[16] = *(a1 + 112);
        }

        v9 = __p;
        if (__p[23] < 0)
        {
          v9 = *__p;
        }

        v10 = &v34;
        if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v10 = v34.__r_.__value_.__r.__words[0];
        }

        *buf = 68289539;
        *&buf[4] = 0;
        v39 = 2082;
        *v40 = "";
        *&v40[8] = 2082;
        *&v40[10] = v9;
        *&v40[18] = 2081;
        *&v40[20] = v10;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:initUUID, path:%{public, location:escape_only}s, uuid:%{private, location:escape_only}s}", buf, 0x26u);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }
      }
    }

    sub_1001B1DA0(*(a1 + 8), v3);
    if (!*(a1 + 128))
    {
      v11 = +[NSUUID UUID];
      sub_100006044(&v34, [(NSString *)[(NSUUID *)v11 UUIDString] UTF8String]);
      sub_10003848C(buf);
      v12 = sub_100038730(&v40[6], "INSERT INTO DatabaseIdentifier (uuid) VALUES (", 47);
      if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v13 = &v34;
      }

      else
      {
        v13 = v34.__r_.__value_.__r.__words[0];
      }

      v14 = strlen(v13);
      v15 = sub_100038730(v12, v13, v14);
      sub_100038730(v15, ");", 3);
      if ((v48 & 0x10) != 0)
      {
        v17 = v47;
        if (v47 < v44)
        {
          v47 = v44;
          v17 = v44;
        }

        v18 = __src;
      }

      else
      {
        if ((v48 & 8) == 0)
        {
          v16 = 0;
          __p[23] = 0;
          goto LABEL_39;
        }

        v18 = v41;
        v17 = v42;
      }

      v16 = v17 - v18;
      if (v17 - v18 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_100061080();
      }

      if (v16 >= 0x17)
      {
        operator new();
      }

      __p[23] = v17 - v18;
      if (v16)
      {
        memmove(__p, v18, v16);
      }

LABEL_39:
      __p[v16] = 0;
      if (__p[23] >= 0)
      {
        v19 = __p;
      }

      else
      {
        v19 = *__p;
      }

      v20 = sub_100038DE8(a1, v19);
      v21 = v20;
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
        if (v21)
        {
LABEL_44:
          if (sqlite3_step(v21) == 101)
          {
            *(a1 + 128) = [(NSUUID *)v11 UUIDString];
            if (qword_1025D4850 != -1)
            {
              sub_1018E57E8();
            }

            v22 = off_1025D4858;
            if (!os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_72;
            }

            if (*(a1 + 119) < 0)
            {
              sub_100007244(v32, *(a1 + 96), *(a1 + 104));
            }

            else
            {
              *v32 = *(a1 + 96);
              v33 = *(a1 + 112);
            }

            v29 = v32;
            if (v33 < 0)
            {
              v29 = v32[0];
            }

            v30 = &v34;
            if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v30 = v34.__r_.__value_.__r.__words[0];
            }

            *__p = 68289539;
            *&__p[8] = 2082;
            *&__p[10] = "";
            *&__p[18] = 2082;
            *&__p[20] = v29;
            v36 = 2081;
            v37 = v30;
            v26 = "{msg%{public}.0s:UUID initialized, path:%{public, location:escape_only}s, uuid:%{private, location:escape_only}s}";
            v27 = v22;
            v28 = 38;
          }

          else
          {
            if (qword_1025D4850 != -1)
            {
              sub_1018E57E8();
            }

            v24 = off_1025D4858;
            if (!os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_72;
            }

            if (*(a1 + 119) < 0)
            {
              sub_100007244(v32, *(a1 + 96), *(a1 + 104));
            }

            else
            {
              *v32 = *(a1 + 96);
              v33 = *(a1 + 112);
            }

            v25 = v32;
            if (v33 < 0)
            {
              v25 = v32[0];
            }

            *__p = 68289282;
            *&__p[8] = 2082;
            *&__p[10] = "";
            *&__p[18] = 2082;
            *&__p[20] = v25;
            v26 = "{msg%{public}.0s:Failed to initialize DB UUID, path:%{public, location:escape_only}s}";
            v27 = v24;
            v28 = 28;
          }

          _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_DEFAULT, v26, __p, v28);
          if (SHIBYTE(v33) < 0)
          {
            operator delete(v32[0]);
          }

LABEL_72:
          sub_1001B1DA0(*(a1 + 8), v21);
LABEL_73:
          *&v40[6] = v31;
          if (v46 < 0)
          {
            operator delete(v45);
          }

          std::locale::~locale(&v40[22]);
          std::iostream::~basic_iostream();
          std::ios::~ios();
          goto LABEL_76;
        }
      }

      else if (v20)
      {
        goto LABEL_44;
      }

      if (qword_1025D4850 != -1)
      {
        sub_1018E57E8();
      }

      v23 = off_1025D4858;
      if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEFAULT))
      {
        *__p = 68289026;
        *&__p[8] = 2082;
        *&__p[10] = "";
        _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#warning Failed to create UUID insert statement}", __p, 0x12u);
      }

      goto LABEL_73;
    }
  }

  else
  {
    if (qword_1025D4850 != -1)
    {
      sub_1018E57E8();
    }

    v8 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      v39 = 2082;
      *v40 = "";
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#warning Failed to create UUID select statement}", buf, 0x12u);
    }
  }

LABEL_76:
  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }
}

void sub_100608184(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  sub_10026C504(&a27);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL sub_1006081E8(uint64_t a1, int a2)
{
  v4 = *(a1 + 16);
  v14 = v4;
  (*(*v4 + 16))(v4);
  v15 = 256;
  sub_10000EC00(&v13, "pragma foreign_keys = ");
  if (a2)
  {
    v5 = "1";
  }

  else
  {
    v5 = "0";
  }

  sub_10000EC00(__p, v5);
  if ((v12 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v12 & 0x80u) == 0)
  {
    v7 = v12;
  }

  else
  {
    v7 = __p[1];
  }

  std::string::append(&v13, v6, v7);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = &v13;
  }

  else
  {
    v8 = v13.__r_.__value_.__r.__words[0];
  }

  v9 = sqlite3_exec(*(a1 + 8), v8, 0, 0, 0);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  (*(*v4 + 24))(v4);
  return v9 == 0;
}

void sub_100608328(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  sub_1017EC98C(&a22);
  _Unwind_Resume(a1);
}

uint64_t sub_100608370(uint64_t a1, uint64_t a2)
{
  sub_10003926C(*(a2 + 16));
  for (i = *(a2 + 32); i != a2 + 24; i = *(i + 8))
  {
    sub_100605524(a2, *(i + 16), 0);
  }

  v4 = *(a2 + 16);

  return sub_1000393C8(v4);
}

void sub_1006083DC(uint64_t a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  v3 = a1;
  __p[0] = 0;
  __p[1] = 0;
  v52 = 0;
  v49 = 0uLL;
  v50 = 0;
  memset(&__dst, 0, sizeof(__dst));
  v5 = *a1;
  if (*a1 > 1)
  {
    if (v5 == 2)
    {
      HIBYTE(v50) = 11;
      *(&v49 + 7) = 1113875828;
      v6 = "_encryptedB";
      goto LABEL_17;
    }

    if (v5 == 3)
    {
      HIBYTE(v50) = 11;
      *(&v49 + 7) = 1130653044;
      v6 = "_encryptedC";
      goto LABEL_17;
    }
  }

  else
  {
    if (!v5)
    {
      HIBYTE(v50) = 0;
      LOBYTE(v49) = 0;
      goto LABEL_18;
    }

    if (v5 == 1)
    {
      HIBYTE(v50) = 11;
      *(&v49 + 7) = 1097098612;
      v6 = "_encryptedA";
LABEL_17:
      *&v49 = *v6;
      BYTE11(v49) = 0;
      goto LABEL_18;
    }
  }

  if (qword_1025D4850 != -1)
  {
    sub_1018E57D4();
  }

  v7 = off_1025D4858;
  if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
  {
    v8 = *v3;
    buf.st_dev = 68289282;
    *&buf.st_mode = 0;
    LOWORD(buf.st_ino) = 2082;
    *(&buf.st_ino + 2) = "";
    HIWORD(buf.st_uid) = 1026;
    buf.st_gid = v8;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:unknown protection type, protection:%{public}d}", &buf, 0x18u);
    if (qword_1025D4850 != -1)
    {
      sub_1018E57E8();
    }
  }

  v9 = off_1025D4858;
  a1 = os_signpost_enabled(off_1025D4858);
  if (a1)
  {
    v10 = *v3;
    buf.st_dev = 68289282;
    *&buf.st_mode = 0;
    LOWORD(buf.st_ino) = 2082;
    *(&buf.st_ino + 2) = "";
    HIWORD(buf.st_uid) = 1026;
    buf.st_gid = v10;
    _os_signpost_emit_with_name_impl(dword_100000000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "unknown protection type", "{msg%{public}.0s:unknown protection type, protection:%{public}d}", &buf, 0x18u);
  }

LABEL_18:
  if (*(v3 + 8) == 1)
  {
    sub_100565860(&buf);
  }

  else
  {
    v11 = sub_1000206B4(a1, a2);
    sub_100021668(v11, &buf);
  }

  if (SHIBYTE(v52) < 0)
  {
    operator delete(__p[0]);
  }

  *__p = *&buf.st_dev;
  v52 = *&buf.st_uid;
  if (*(v3 + 4) == 7)
  {
    sub_100172FA8(2, &buf);
    if (SHIBYTE(v52) < 0)
    {
      operator delete(__p[0]);
    }

    *__p = *&buf.st_dev;
    v52 = *&buf.st_uid;
  }

  if (v52 >= 0)
  {
    v12 = __p;
  }

  else
  {
    v12 = __p[0];
  }

  v13 = getuid();
  v14 = getgid();
  if (!sub_1004E667C(v12, v13, v14))
  {
    if (qword_1025D4850 != -1)
    {
      sub_1018E57E8();
    }

    v15 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      v16 = __p;
      if (v52 < 0)
      {
        v16 = __p[0];
      }

      buf.st_dev = 68289282;
      *&buf.st_mode = 0;
      LOWORD(buf.st_ino) = 2082;
      *(&buf.st_ino + 2) = "";
      HIWORD(buf.st_uid) = 2082;
      *&buf.st_gid = v16;
      _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:could not create path, path:%{public, location:escape_only}s}", &buf, 0x1Cu);
      if (qword_1025D4850 != -1)
      {
        sub_1018E57E8();
      }
    }

    v17 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      v18 = __p;
      if (v52 < 0)
      {
        v18 = __p[0];
      }

      buf.st_dev = 68289282;
      *&buf.st_mode = 0;
      LOWORD(buf.st_ino) = 2082;
      *(&buf.st_ino + 2) = "";
      HIWORD(buf.st_uid) = 2082;
      *&buf.st_gid = v18;
      _os_signpost_emit_with_name_impl(dword_100000000, v17, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "could not create path", "{msg%{public}.0s:could not create path, path:%{public, location:escape_only}s}", &buf, 0x1Cu);
    }
  }

  v19 = *(v3 + 4);
  if (v19 > 3)
  {
    if (v19 <= 5)
    {
      if (v19 == 4)
      {
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          __dst.__r_.__value_.__l.__size_ = 7;
          p_dst = __dst.__r_.__value_.__r.__words[0];
        }

        else
        {
          *(&__dst.__r_.__value_.__s + 23) = 7;
          p_dst = &__dst;
        }

        strcpy(p_dst, "gyroCal");
      }

      else
      {
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          __dst.__r_.__value_.__l.__size_ = 8;
          v20 = __dst.__r_.__value_.__r.__words[0];
        }

        else
        {
          *(&__dst.__r_.__value_.__s + 23) = 8;
          v20 = &__dst;
        }

        strcpy(v20, "timezone");
      }

      goto LABEL_113;
    }

    if (v19 == 6)
    {
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        __dst.__r_.__value_.__l.__size_ = 14;
        v25 = __dst.__r_.__value_.__r.__words[0];
      }

      else
      {
        *(&__dst.__r_.__value_.__s + 23) = 14;
        v25 = &__dst;
      }

      strcpy(v25, "sensorRecorder");
      goto LABEL_113;
    }

    if (v19 == 7)
    {
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        __dst.__r_.__value_.__l.__size_ = 4;
        v22 = __dst.__r_.__value_.__r.__words[0];
      }

      else
      {
        *(&__dst.__r_.__value_.__s + 23) = 4;
        v22 = &__dst;
      }

      strcpy(v22, "cold");
      goto LABEL_113;
    }

    goto LABEL_66;
  }

  if (v19 <= 1)
  {
    if (!v19)
    {
      sub_100006BE0(&__dst, "file::memory:?cache=shared", 0x1AuLL);
      goto LABEL_113;
    }

    if (v19 == 1)
    {
      if (*(v3 + 8) == 1)
      {
        *(&__dst.__r_.__value_.__s + 23) = 7;
        strcpy(&__dst, "factory");
        sub_1003CCADC(__p, &__dst.__r_.__value_.__l.__data_, &buf);
        sub_10000EC00(&v44, ".db");
        if ((v46 & 0x80u) == 0)
        {
          v31 = &v44;
        }

        else
        {
          v31 = v44;
        }

        if ((v46 & 0x80u) == 0)
        {
          v32 = v46;
        }

        else
        {
          v32 = v45;
        }

        v33 = std::string::append(&buf, v31, v32);
        v34 = *&v33->__r_.__value_.__l.__data_;
        v47.__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
        *&v47.__r_.__value_.__l.__data_ = v34;
        v33->__r_.__value_.__l.__size_ = 0;
        v33->__r_.__value_.__r.__words[2] = 0;
        v33->__r_.__value_.__r.__words[0] = 0;
        if (v46 < 0)
        {
          operator delete(v44);
        }

        if (SHIBYTE(buf.st_gid) < 0)
        {
          operator delete(*&buf.st_dev);
        }

        if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v35 = &v47;
        }

        else
        {
          v35 = v47.__r_.__value_.__r.__words[0];
        }

        if (lstat(v35, &buf))
        {
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            __dst.__r_.__value_.__l.__size_ = 15;
            v36 = __dst.__r_.__value_.__r.__words[0];
          }

          else
          {
            *(&__dst.__r_.__value_.__s + 23) = 15;
            v36 = &__dst;
          }

          strcpy(v36, "factory_minimum");
        }

        if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v47.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        *(&__dst.__r_.__value_.__s + 23) = 5;
        strcpy(&__dst, "cache");
      }

      if ((*(v3 + 8) & 1) == 0 && !*v3)
      {
        if (SHIBYTE(v50) < 0)
        {
          *(&v49 + 1) = 12;
          v24 = v49;
        }

        else
        {
          HIBYTE(v50) = 12;
          v24 = &v49;
        }

        LODWORD(v24->__r_.__value_.__r.__words[1]) = 1684370544;
        v30 = "_unencrypted";
LABEL_112:
        v24->__r_.__value_.__r.__words[0] = *v30;
        v24->__r_.__value_.__s.__data_[12] = 0;
        goto LABEL_113;
      }

      goto LABEL_113;
    }

LABEL_66:
    if (qword_1025D4850 != -1)
    {
      sub_1018E57E8();
    }

    v26 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      v27 = *(v3 + 4);
      buf.st_dev = 68289282;
      *&buf.st_mode = 0;
      LOWORD(buf.st_ino) = 2082;
      *(&buf.st_ino + 2) = "";
      HIWORD(buf.st_uid) = 1026;
      buf.st_gid = v27;
      _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:unknown persistence type, persistence:%{public}d}", &buf, 0x18u);
      if (qword_1025D4850 != -1)
      {
        sub_1018E57E8();
      }
    }

    v28 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      v29 = *(v3 + 4);
      buf.st_dev = 68289282;
      *&buf.st_mode = 0;
      LOWORD(buf.st_ino) = 2082;
      *(&buf.st_ino + 2) = "";
      HIWORD(buf.st_uid) = 1026;
      buf.st_gid = v29;
      _os_signpost_emit_with_name_impl(dword_100000000, v28, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "unknown persistence type", "{msg%{public}.0s:unknown persistence type, persistence:%{public}d}", &buf, 0x18u);
    }

    goto LABEL_113;
  }

  if (v19 == 2)
  {
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      __dst.__r_.__value_.__l.__size_ = 12;
      v24 = __dst.__r_.__value_.__r.__words[0];
    }

    else
    {
      *(&__dst.__r_.__value_.__s + 23) = 12;
      v24 = &__dst;
    }

    LODWORD(v24->__r_.__value_.__r.__words[1]) = 1684370529;
    v30 = "consolidated";
    goto LABEL_112;
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    __dst.__r_.__value_.__l.__size_ = 9;
    v21 = __dst.__r_.__value_.__r.__words[0];
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = 9;
    v21 = &__dst;
  }

  strcpy(v21, "lockCache");
LABEL_113:
  if (*(v3 + 4))
  {
    sub_1003CCADC(__p, &__dst.__r_.__value_.__l.__data_, &v47);
    if (v50 >= 0)
    {
      v37 = &v49;
    }

    else
    {
      v37 = v49;
    }

    if (v50 >= 0)
    {
      v38 = HIBYTE(v50);
    }

    else
    {
      v38 = *(&v49 + 1);
    }

    v39 = std::string::append(&v47, v37, v38);
    v40 = *&v39->__r_.__value_.__l.__data_;
    *&buf.st_uid = *(&v39->__r_.__value_.__l + 2);
    *&buf.st_dev = v40;
    v39->__r_.__value_.__l.__size_ = 0;
    v39->__r_.__value_.__r.__words[2] = 0;
    v39->__r_.__value_.__r.__words[0] = 0;
    sub_10000EC00(&v44, ".db");
    if ((v46 & 0x80u) == 0)
    {
      v41 = &v44;
    }

    else
    {
      v41 = v44;
    }

    if ((v46 & 0x80u) == 0)
    {
      v42 = v46;
    }

    else
    {
      v42 = v45;
    }

    v43 = std::string::append(&buf, v41, v42);
    *a3 = *v43;
    v43->__r_.__value_.__l.__size_ = 0;
    v43->__r_.__value_.__r.__words[2] = 0;
    v43->__r_.__value_.__r.__words[0] = 0;
    if (v46 < 0)
    {
      operator delete(v44);
    }

    if (SHIBYTE(buf.st_gid) < 0)
    {
      operator delete(*&buf.st_dev);
    }

    if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v47.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *a3 = __dst;
  }

  if (SHIBYTE(v50) < 0)
  {
    operator delete(v49);
  }

  if (SHIBYTE(v52) < 0)
  {
    operator delete(__p[0]);
  }
}

uint64_t sub_100608EC8(uint64_t a1, char *a2, const char **a3, const char **a4, uint64_t a5)
{
  v5 = a5;
  if (qword_1025D4850 != -1)
  {
    sub_1018E57D4();
  }

  v10 = off_1025D4858;
  if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEFAULT))
  {
    v12[0] = 68289539;
    v12[1] = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2081;
    v16 = a2;
    v17 = 1026;
    v18 = v5;
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:@SqliteDB, createTableIfNecessary, table:%{private, location:escape_only}s, specificToSerialNumber:%{public}hhd}", v12, 0x22u);
  }

  return sub_10060D77C(a1, a2, a3, a4, v5);
}

char *sub_100608FE4@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[119] < 0)
  {
    return sub_100007244(a2, *(result + 12), *(result + 13));
  }

  *a2 = *(result + 6);
  *(a2 + 16) = *(result + 14);
  return result;
}

BOOL sub_10060900C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v23 = v4;
  (*(*v4 + 16))(v4);
  v24 = 256;
  v5 = *(a2 + 16);
  v21 = v5;
  (*(*v5 + 16))(v5);
  v22 = 256;
  if (*(a2 + 119) < 0)
  {
    sub_100007244(__dst, *(a2 + 96), *(a2 + 104));
  }

  else
  {
    *__dst = *(a2 + 96);
    v20 = *(a2 + 112);
  }

  std::operator+<char>();
  v6 = std::string::append(&v25, "' AS OTHER;", 0xBuLL);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v18 = v6->__r_.__value_.__r.__words[2];
  *__p = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  if (v18 >= 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  v9 = sub_100038DE8(a1, v8);
  v10 = v9;
  if (v9)
  {
    v11 = sqlite3_step(v9);
    if (qword_1025D4850 != -1)
    {
      sub_1018E57E8();
    }

    v12 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEFAULT))
    {
      v25.__r_.__value_.__r.__words[0] = 68289282;
      LOWORD(v25.__r_.__value_.__r.__words[1]) = 2082;
      *(&v25.__r_.__value_.__r.__words[1] + 2) = "";
      WORD1(v25.__r_.__value_.__r.__words[2]) = 1026;
      HIDWORD(v25.__r_.__value_.__r.__words[2]) = v11;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:attachToDatabaseAsOther, ret:%{public}d}", &v25, 0x18u);
    }

    sub_1001B1DA0(*(a1 + 8), v10);
    v13 = v11 == 101;
  }

  else
  {
    if (qword_1025D4850 != -1)
    {
      sub_1018E57E8();
    }

    v14 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_ERROR))
    {
      v25.__r_.__value_.__r.__words[0] = 68289026;
      LOWORD(v25.__r_.__value_.__r.__words[1]) = 2082;
      *(&v25.__r_.__value_.__r.__words[1] + 2) = "";
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Failed to create ATTACH statement}", &v25, 0x12u);
      if (qword_1025D4850 != -1)
      {
        sub_1018E57E8();
      }
    }

    v15 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      v25.__r_.__value_.__r.__words[0] = 68289026;
      LOWORD(v25.__r_.__value_.__r.__words[1]) = 2082;
      *(&v25.__r_.__value_.__r.__words[1] + 2) = "";
      _os_signpost_emit_with_name_impl(dword_100000000, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Failed to create ATTACH statement", "{msg%{public}.0s:Failed to create ATTACH statement}", &v25, 0x12u);
    }

    v13 = 0;
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v20) < 0)
  {
    operator delete(__dst[0]);
  }

  (*(*v5 + 24))(v5);
  (*(*v4 + 24))(v4);
  return v13;
}

BOOL sub_10060941C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v14 = v2;
  (*(*v2 + 16))(v2);
  v15 = 256;
  sub_10000EC00(__p, "DETACH DATABASE 'OTHER';");
  if (v13 >= 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  v4 = sub_100038DE8(a1, v3);
  v5 = v4;
  if (v4)
  {
    v6 = sqlite3_step(v4);
    if (qword_1025D4850 != -1)
    {
      sub_1018E57E8();
    }

    v7 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289282;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      v20 = 1026;
      v21 = v6;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:detachFromOther, ret:%{public}d}", buf, 0x18u);
    }

    sub_1001B1DA0(*(a1 + 8), v5);
    v8 = v6 == 101;
  }

  else
  {
    if (qword_1025D4850 != -1)
    {
      sub_1018E57E8();
    }

    v9 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Failed to create DETACH statement}", buf, 0x12u);
      if (qword_1025D4850 != -1)
      {
        sub_1018E57E8();
      }
    }

    v10 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289026;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      _os_signpost_emit_with_name_impl(dword_100000000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Failed to create DETACH statement", "{msg%{public}.0s:Failed to create DETACH statement}", buf, 0x12u);
    }

    v8 = 0;
  }

  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  (*(*v2 + 24))(v2);
  return v8;
}

uint64_t sub_100609714(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, char *a5, double a6)
{
  v117 = *(a1 + 16);
  (*(*v117 + 16))(v117);
  v119 = 256;
  v114 = *(a2 + 16);
  (*(*v114 + 16))(v114);
  v116 = 256;
  v112 = a1;
  v113 = a2;
  v10 = sub_10060900C(a1, a2);
  v111 = v10;
  if (!v10)
  {
    v21 = 1;
    goto LABEL_151;
  }

  v11 = a4[1];
  v12 = *a3;
  if (*a4 == v11)
  {
    v13 = a3[1];
  }

  else
  {
    v13 = a3[1];
    if (v11 - *a4 != v13 - v12)
    {
      if (qword_1025D4850 != -1)
      {
        sub_1018E57D4();
      }

      v14 = off_1025D4858;
      if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
      {
        v15 = 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3);
        v16 = 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3);
        *buf = 134349312;
        *&buf[4] = v15;
        *&buf[12] = 2050;
        *&buf[14] = v16;
        _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_FAULT, "Invalid input parameters, number of columnList (%{public}zu) and tableNames (%{public}zu) differ.", buf, 0x16u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018E5810(buf);
        v17 = 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3);
        v18 = 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3);
        LODWORD(__p[0]) = 134349312;
        *(__p + 4) = v17;
        WORD2(__p[1]) = 2050;
        *(&__p[1] + 6) = v18;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D4858, 17, "Invalid input parameters, number of columnList (%{public}zu) and tableNames (%{public}zu) differ.", __p, 22);
        v20 = v19;
        sub_100152C7C("Generic", 1, 0, 0, "BOOL CLSqliteDatabase::copyTablesFromOtherDatabase(CLSqliteDatabase &, const std::vector<std::string> &, const std::vector<std::string> &, const char *, CFAbsoluteTime)", "%s\n", v19);
        if (v20 != buf)
        {
          free(v20);
        }
      }

      goto LABEL_148;
    }
  }

  if (v12 == v13)
  {
LABEL_148:
    v21 = 1;
    goto LABEL_150;
  }

  v100 = v13;
  v101 = a2;
  v22 = 0;
  v23 = 0;
  LOBYTE(v21) = 1;
  do
  {
    v24 = (v12 + v22);
    v25 = (v12 + v22);
    if (*(v12 + v22 + 23) < 0)
    {
      v25 = *v24;
    }

    v26 = sub_100610D0C(a1, v25);
    v27 = (v12 + v22);
    if (v24[23] < 0)
    {
      v27 = *v24;
    }

    v28 = sub_100610D0C(v101, v27);
    if (v26 && v28)
    {
      memset(__p, 0, 24);
      if (a5)
      {
        if (*a4 == a4[1])
        {
          std::operator+<char>();
          v75 = std::string::append(&v108, " SELECT * FROM OTHER.", 0x15uLL);
          v76 = *&v75->__r_.__value_.__l.__data_;
          v122.__r_.__value_.__r.__words[2] = v75->__r_.__value_.__r.__words[2];
          *&v122.__r_.__value_.__l.__data_ = v76;
          v75->__r_.__value_.__l.__size_ = 0;
          v75->__r_.__value_.__r.__words[2] = 0;
          v75->__r_.__value_.__r.__words[0] = 0;
          v77 = v24[23];
          if (v77 >= 0)
          {
            v78 = (v12 + v22);
          }

          else
          {
            v78 = *(v12 + v22);
          }

          if (v77 >= 0)
          {
            v79 = *(v24 + 23);
          }

          else
          {
            v79 = *(v12 + v22 + 8);
          }

          v80 = std::string::append(&v122, v78, v79);
          v81 = *&v80->__r_.__value_.__l.__data_;
          v109.__r_.__value_.__r.__words[2] = v80->__r_.__value_.__r.__words[2];
          *&v109.__r_.__value_.__l.__data_ = v81;
          v80->__r_.__value_.__l.__size_ = 0;
          v80->__r_.__value_.__r.__words[2] = 0;
          v80->__r_.__value_.__r.__words[0] = 0;
          v82 = std::string::append(&v109, " WHERE ", 7uLL);
          v83 = *&v82->__r_.__value_.__l.__data_;
          v110.__r_.__value_.__r.__words[2] = v82->__r_.__value_.__r.__words[2];
          *&v110.__r_.__value_.__l.__data_ = v83;
          v82->__r_.__value_.__l.__size_ = 0;
          v82->__r_.__value_.__r.__words[2] = 0;
          v82->__r_.__value_.__r.__words[0] = 0;
          sub_10000EC00(&v107, a5);
          if ((v107.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v84 = &v107;
          }

          else
          {
            v84 = v107.__r_.__value_.__r.__words[0];
          }

          if ((v107.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v107.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v107.__r_.__value_.__l.__size_;
          }

          v86 = std::string::append(&v110, v84, size);
          v87 = *&v86->__r_.__value_.__l.__data_;
          *&buf[16] = *(&v86->__r_.__value_.__l + 2);
          *buf = v87;
          v86->__r_.__value_.__l.__size_ = 0;
          v86->__r_.__value_.__r.__words[2] = 0;
          v86->__r_.__value_.__r.__words[0] = 0;
          v88 = std::string::append(buf, " > ?;", 5uLL);
          v89 = v88->__r_.__value_.__r.__words[0];
          v120.__r_.__value_.__r.__words[0] = v88->__r_.__value_.__l.__size_;
          *(v120.__r_.__value_.__r.__words + 7) = *(&v88->__r_.__value_.__r.__words[1] + 7);
          v90 = HIBYTE(v88->__r_.__value_.__r.__words[2]);
          v88->__r_.__value_.__l.__size_ = 0;
          v88->__r_.__value_.__r.__words[2] = 0;
          v88->__r_.__value_.__r.__words[0] = 0;
          if (SHIBYTE(__p[2]) < 0)
          {
            operator delete(__p[0]);
          }

          __p[0] = v89;
          __p[1] = v120.__r_.__value_.__l.__data_;
          *(&__p[1] + 7) = *(v120.__r_.__value_.__r.__words + 7);
          HIBYTE(__p[2]) = v90;
          if ((buf[23] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }

          if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v107.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v110.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v110.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v109.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v109.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v122.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v122.__r_.__value_.__l.__data_);
          }

          if ((SHIBYTE(v108.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_123;
          }

          v61 = v108.__r_.__value_.__r.__words[0];
        }

        else
        {
          std::operator+<char>();
          v29 = std::string::append(&v105, " (", 2uLL);
          v30 = *&v29->__r_.__value_.__l.__data_;
          v106.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
          *&v106.__r_.__value_.__l.__data_ = v30;
          v29->__r_.__value_.__l.__size_ = 0;
          v29->__r_.__value_.__r.__words[2] = 0;
          v29->__r_.__value_.__r.__words[0] = 0;
          if (0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3) <= v23)
          {
            sub_10046F324();
          }

          v31 = *a4 + v22;
          v32 = *(v31 + 23);
          if (v32 >= 0)
          {
            v33 = (*a4 + v22);
          }

          else
          {
            v33 = *v31;
          }

          if (v32 >= 0)
          {
            v34 = *(v31 + 23);
          }

          else
          {
            v34 = *(v31 + 8);
          }

          v35 = std::string::append(&v106, v33, v34);
          v36 = *&v35->__r_.__value_.__l.__data_;
          v120.__r_.__value_.__r.__words[2] = v35->__r_.__value_.__r.__words[2];
          *&v120.__r_.__value_.__l.__data_ = v36;
          v35->__r_.__value_.__l.__size_ = 0;
          v35->__r_.__value_.__r.__words[2] = 0;
          v35->__r_.__value_.__r.__words[0] = 0;
          v37 = std::string::append(&v120, ") SELECT ", 9uLL);
          v38 = *&v37->__r_.__value_.__l.__data_;
          v107.__r_.__value_.__r.__words[2] = v37->__r_.__value_.__r.__words[2];
          *&v107.__r_.__value_.__l.__data_ = v38;
          v37->__r_.__value_.__l.__size_ = 0;
          v37->__r_.__value_.__r.__words[2] = 0;
          v37->__r_.__value_.__r.__words[0] = 0;
          if (0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3) <= v23)
          {
            sub_10046F324();
          }

          v39 = *a4 + v22;
          v40 = *(v39 + 23);
          if (v40 >= 0)
          {
            v41 = (*a4 + v22);
          }

          else
          {
            v41 = *v39;
          }

          if (v40 >= 0)
          {
            v42 = *(v39 + 23);
          }

          else
          {
            v42 = *(v39 + 8);
          }

          v43 = std::string::append(&v107, v41, v42);
          v44 = *&v43->__r_.__value_.__l.__data_;
          v108.__r_.__value_.__r.__words[2] = v43->__r_.__value_.__r.__words[2];
          *&v108.__r_.__value_.__l.__data_ = v44;
          v43->__r_.__value_.__l.__size_ = 0;
          v43->__r_.__value_.__r.__words[2] = 0;
          v43->__r_.__value_.__r.__words[0] = 0;
          v45 = std::string::append(&v108, " FROM OTHER.", 0xCuLL);
          v46 = *&v45->__r_.__value_.__l.__data_;
          v122.__r_.__value_.__r.__words[2] = v45->__r_.__value_.__r.__words[2];
          *&v122.__r_.__value_.__l.__data_ = v46;
          v45->__r_.__value_.__l.__size_ = 0;
          v45->__r_.__value_.__r.__words[2] = 0;
          v45->__r_.__value_.__r.__words[0] = 0;
          v47 = v24[23];
          if (v47 >= 0)
          {
            v48 = (v12 + v22);
          }

          else
          {
            v48 = *(v12 + v22);
          }

          if (v47 >= 0)
          {
            v49 = *(v24 + 23);
          }

          else
          {
            v49 = *(v12 + v22 + 8);
          }

          v50 = std::string::append(&v122, v48, v49);
          v51 = *&v50->__r_.__value_.__l.__data_;
          v109.__r_.__value_.__r.__words[2] = v50->__r_.__value_.__r.__words[2];
          *&v109.__r_.__value_.__l.__data_ = v51;
          v50->__r_.__value_.__l.__size_ = 0;
          v50->__r_.__value_.__r.__words[2] = 0;
          v50->__r_.__value_.__r.__words[0] = 0;
          v52 = std::string::append(&v109, " WHERE ", 7uLL);
          v53 = *&v52->__r_.__value_.__l.__data_;
          v110.__r_.__value_.__r.__words[2] = v52->__r_.__value_.__r.__words[2];
          *&v110.__r_.__value_.__l.__data_ = v53;
          v52->__r_.__value_.__l.__size_ = 0;
          v52->__r_.__value_.__r.__words[2] = 0;
          v52->__r_.__value_.__r.__words[0] = 0;
          sub_10000EC00(v103, a5);
          if ((v104 & 0x80u) == 0)
          {
            v54 = v103;
          }

          else
          {
            v54 = v103[0];
          }

          if ((v104 & 0x80u) == 0)
          {
            v55 = v104;
          }

          else
          {
            v55 = v103[1];
          }

          v56 = std::string::append(&v110, v54, v55);
          v57 = *&v56->__r_.__value_.__l.__data_;
          *&buf[16] = *(&v56->__r_.__value_.__l + 2);
          *buf = v57;
          v56->__r_.__value_.__l.__size_ = 0;
          v56->__r_.__value_.__r.__words[2] = 0;
          v56->__r_.__value_.__r.__words[0] = 0;
          v58 = std::string::append(buf, " > ?;", 5uLL);
          v59 = v58->__r_.__value_.__r.__words[0];
          v121[0] = v58->__r_.__value_.__l.__size_;
          *(v121 + 7) = *(&v58->__r_.__value_.__r.__words[1] + 7);
          v60 = HIBYTE(v58->__r_.__value_.__r.__words[2]);
          v58->__r_.__value_.__l.__size_ = 0;
          v58->__r_.__value_.__r.__words[2] = 0;
          v58->__r_.__value_.__r.__words[0] = 0;
          if (SHIBYTE(__p[2]) < 0)
          {
            operator delete(__p[0]);
          }

          __p[0] = v59;
          __p[1] = v121[0];
          *(&__p[1] + 7) = *(v121 + 7);
          HIBYTE(__p[2]) = v60;
          if ((buf[23] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }

          if (v104 < 0)
          {
            operator delete(v103[0]);
          }

          if (SHIBYTE(v110.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v110.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v109.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v109.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v122.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v122.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v108.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v107.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v120.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v120.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v106.__r_.__value_.__l.__data_);
          }

          if ((SHIBYTE(v105.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_123;
          }

          v61 = v105.__r_.__value_.__r.__words[0];
        }
      }

      else
      {
        std::operator+<char>();
        v65 = std::string::append(&v109, " SELECT * FROM OTHER.", 0x15uLL);
        v66 = *&v65->__r_.__value_.__l.__data_;
        v110.__r_.__value_.__r.__words[2] = v65->__r_.__value_.__r.__words[2];
        *&v110.__r_.__value_.__l.__data_ = v66;
        v65->__r_.__value_.__l.__size_ = 0;
        v65->__r_.__value_.__r.__words[2] = 0;
        v65->__r_.__value_.__r.__words[0] = 0;
        v67 = v24[23];
        if (v67 >= 0)
        {
          v68 = (v12 + v22);
        }

        else
        {
          v68 = *(v12 + v22);
        }

        if (v67 >= 0)
        {
          v69 = *(v24 + 23);
        }

        else
        {
          v69 = *(v12 + v22 + 8);
        }

        v70 = std::string::append(&v110, v68, v69);
        v71 = *&v70->__r_.__value_.__l.__data_;
        *&buf[16] = *(&v70->__r_.__value_.__l + 2);
        *buf = v71;
        v70->__r_.__value_.__l.__size_ = 0;
        v70->__r_.__value_.__r.__words[2] = 0;
        v70->__r_.__value_.__r.__words[0] = 0;
        v72 = std::string::append(buf, ";", 1uLL);
        v73 = v72->__r_.__value_.__r.__words[0];
        v122.__r_.__value_.__r.__words[0] = v72->__r_.__value_.__l.__size_;
        *(v122.__r_.__value_.__r.__words + 7) = *(&v72->__r_.__value_.__r.__words[1] + 7);
        v74 = HIBYTE(v72->__r_.__value_.__r.__words[2]);
        v72->__r_.__value_.__l.__size_ = 0;
        v72->__r_.__value_.__r.__words[2] = 0;
        v72->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(__p[2]) < 0)
        {
          operator delete(__p[0]);
        }

        __p[0] = v73;
        __p[1] = v122.__r_.__value_.__l.__data_;
        *(&__p[1] + 7) = *(v122.__r_.__value_.__r.__words + 7);
        HIBYTE(__p[2]) = v74;
        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }

        if (SHIBYTE(v110.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v110.__r_.__value_.__l.__data_);
        }

        if ((SHIBYTE(v109.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_123;
        }

        v61 = v109.__r_.__value_.__r.__words[0];
      }

      operator delete(v61);
LABEL_123:
      if (SHIBYTE(__p[2]) >= 0)
      {
        v91 = __p;
      }

      else
      {
        v91 = __p[0];
      }

      v92 = sub_100038DE8(a1, v91);
      v93 = v92;
      if (v92)
      {
        if (a5)
        {
          sub_1001A3BD4(v92, 1, a6);
        }

        v94 = sqlite3_step(v93);
        if (qword_1025D4850 != -1)
        {
          sub_1018E57E8();
        }

        v95 = off_1025D4858;
        if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEFAULT))
        {
          if (v24[23] < 0)
          {
            v24 = *v24;
          }

          *buf = 68289538;
          *&buf[4] = 0;
          *&buf[8] = 2082;
          *&buf[10] = "";
          *&buf[18] = 2082;
          *&buf[20] = v24;
          v125 = 1026;
          v126 = v94;
          _os_log_impl(dword_100000000, v95, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:copyTablesFromOtherDatabase, insert, tableName:%{public, location:escape_only}s, ret:%{public}d}", buf, 0x22u);
        }

        sub_1001B1DA0(*(a1 + 8), v93);
        v21 = v21 & (v94 == 101);
      }

      else
      {
        if (qword_1025D4850 != -1)
        {
          sub_1018E57E8();
        }

        v96 = off_1025D4858;
        if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_ERROR))
        {
          *buf = 68289026;
          *&buf[4] = 0;
          *&buf[8] = 2082;
          *&buf[10] = "";
          _os_log_impl(dword_100000000, v96, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Failed to create INSERT statement}", buf, 0x12u);
          if (qword_1025D4850 != -1)
          {
            sub_1018E57E8();
          }
        }

        v97 = off_1025D4858;
        if (os_signpost_enabled(off_1025D4858))
        {
          *buf = 68289026;
          *&buf[4] = 0;
          *&buf[8] = 2082;
          *&buf[10] = "";
          _os_signpost_emit_with_name_impl(dword_100000000, v97, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Failed to create INSERT statement", "{msg%{public}.0s:Failed to create INSERT statement}", buf, 0x12u);
        }

        v21 = 0;
      }

      if (SHIBYTE(__p[2]) < 0)
      {
        operator delete(__p[0]);
      }

      goto LABEL_146;
    }

    if (qword_1025D4850 != -1)
    {
      sub_1018E57E8();
    }

    v62 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_ERROR))
    {
      v63 = (v12 + v22);
      if (v24[23] < 0)
      {
        v63 = *v24;
      }

      *buf = 68289794;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = v63;
      v125 = 1026;
      v126 = v26;
      v127 = 1026;
      v128 = v28;
      _os_log_impl(dword_100000000, v62, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:table is missing, TableName:%{public, location:escape_only}s, ExistsInThisDB:%{public}hhd, ExistsInOtherDB:%{public}hhd}", buf, 0x28u);
      if (qword_1025D4850 != -1)
      {
        sub_1018E57E8();
      }
    }

    v64 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      if (v24[23] < 0)
      {
        v24 = *v24;
      }

      *buf = 68289794;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = v24;
      v125 = 1026;
      v126 = v26;
      v127 = 1026;
      v128 = v28;
      _os_signpost_emit_with_name_impl(dword_100000000, v64, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "table is missing", "{msg%{public}.0s:table is missing, TableName:%{public, location:escape_only}s, ExistsInThisDB:%{public}hhd, ExistsInOtherDB:%{public}hhd}", buf, 0x28u);
      v21 = 0;
    }

    else
    {
      v21 = 0;
    }

LABEL_146:
    ++v23;
    v22 += 24;
  }

  while (v12 + v22 != v100);
  if (v111)
  {
LABEL_150:
    sub_10060941C(v112);
  }

LABEL_151:
  if (HIBYTE(v116) == 1)
  {
    if (v116)
    {
      pthread_mutex_unlock(v115);
    }

    else
    {
      (*(*v114 + 24))(v114);
    }
  }

  if (HIBYTE(v119) == 1)
  {
    if (v119)
    {
      pthread_mutex_unlock(v118);
    }

    else
    {
      (*(*v117 + 24))(v117);
    }
  }

  return v21;
}