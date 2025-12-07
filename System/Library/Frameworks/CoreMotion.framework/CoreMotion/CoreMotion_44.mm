uint64_t sub_19B655098(uint64_t a1, void *a2, uint64_t a3)
{
  v30 = *MEMORY[0x1E69E9840];
  if (!objc_msgSend_cppObjectPtr(a2, a2, a3))
  {
    v6 = objc_msgSend_compatibilityInfo(a2, v4, v5);
    if (objc_msgSend_isEqual_(v6, v7, &unk_1F0E6A4F8))
    {
      v8 = objc_msgSend_serialized(a2, v4, v5);
      if (objc_msgSend_length(v8, v9, v10) != 1)
      {
        if (qword_1EAFE2958 != -1)
        {
          dispatch_once(&qword_1EAFE2958, &unk_1F0E28900);
        }

        v19 = qword_1EAFE2960;
        if (os_log_type_enabled(qword_1EAFE2960, OS_LOG_TYPE_FAULT))
        {
          *buf = 68289539;
          v23 = 0;
          v24 = 2082;
          v25 = "";
          v26 = 2082;
          v27 = "assert";
          v28 = 2081;
          v29 = "sizeof(Object_T) == podContainer.serialized.length";
          _os_log_impl(&dword_19B41C000, v19, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:The total size of the POD types on the 2 architectures is expected to be the same., event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
          if (qword_1EAFE2958 != -1)
          {
            dispatch_once(&qword_1EAFE2958, &unk_1F0E28900);
          }
        }

        v20 = qword_1EAFE2960;
        if (os_signpost_enabled(qword_1EAFE2960))
        {
          *buf = 68289539;
          v23 = 0;
          v24 = 2082;
          v25 = "";
          v26 = 2082;
          v27 = "assert";
          v28 = 2081;
          v29 = "sizeof(Object_T) == podContainer.serialized.length";
          _os_signpost_emit_with_name_impl(&dword_19B41C000, v20, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "The total size of the POD types on the 2 architectures is expected to be the same.", "{msg%{public}.0s:The total size of the POD types on the 2 architectures is expected to be the same., event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
          if (qword_1EAFE2958 != -1)
          {
            dispatch_once(&qword_1EAFE2958, &unk_1F0E28900);
          }
        }

        v21 = qword_1EAFE2960;
        if (os_log_type_enabled(qword_1EAFE2960, OS_LOG_TYPE_INFO))
        {
          *buf = 68289539;
          v23 = 0;
          v24 = 2082;
          v25 = "";
          v26 = 2082;
          v27 = "assert";
          v28 = 2081;
          v29 = "sizeof(Object_T) == podContainer.serialized.length";
          _os_log_impl(&dword_19B41C000, v21, OS_LOG_TYPE_INFO, "{msg%{public}.0s:The total size of the POD types on the 2 architectures is expected to be the same., event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        }

        abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Shared/Intersilo/CLCppContainer.h", 244, "operator()");
      }

      v13 = objc_msgSend_serialized(a2, v11, v12);
      v16 = objc_msgSend_bytes(v13, v14, v15);
      objc_msgSend_setCppObjectPtr_(a2, v17, v16);
    }
  }

  return objc_msgSend_cppObjectPtr(a2, v4, v5);
}

os_log_t sub_19B65535C()
{
  result = os_log_create("com.apple.locationd.Support", "Support");
  qword_1EAFE2960 = result;
  return result;
}

_BYTE *sub_19B655440(_BYTE *result, uint64_t a2, uint64_t *a3, void *a4)
{
  if ((result[108] & 1) == 0)
  {
    v7 = result;
    v8 = *(*a2 + 32);
    LODWORD(v13) = *(*a3 + 32);
    v9 = sub_19B655800(a4, a2);
    v10 = *a3;
    v14 = (*a2 + 32);
    v11 = sub_19B65570C((v10 + 40), v14, &unk_19B7BA202, &v14);
    result = (*(*v7 + 192))(v7, v8, &v13, v9, v10 + 80, v11 + 4);
    if (result)
    {
      return objc_msgSend_onNotification_withData_(*(*a2 + 64), v12, *(*a3 + 32), a4, v13);
    }
  }

  return result;
}

uint64_t **sub_19B655538(uint64_t **a1, int *a2, uint64_t a3, _DWORD **a4)
{
  v4 = a1[1];
  if (!v4)
  {
LABEL_8:
    operator new();
  }

  v5 = *a2;
  while (1)
  {
    while (1)
    {
      v6 = v4;
      v7 = *(v4 + 8);
      if (v5 >= v7)
      {
        break;
      }

      v4 = *v6;
      if (!*v6)
      {
        goto LABEL_8;
      }
    }

    if (v7 >= v5)
    {
      return v6;
    }

    v4 = v6[1];
    if (!v4)
    {
      goto LABEL_8;
    }
  }
}

char **sub_19B655640(char **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_19B65568C(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void sub_19B65568C(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    sub_19B41FFEC(v2);
  }

  v3 = *(a1 + 16);

  sub_19B654634(a1 + 8, v3);
}

uint64_t sub_19B6556D0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_19B41FFEC(v2);
  }

  sub_19B654634(a1, *(a1 + 8));
  return a1;
}

uint64_t **sub_19B65570C(uint64_t **a1, int *a2, uint64_t a3, _DWORD **a4)
{
  v4 = a1[1];
  if (!v4)
  {
LABEL_8:
    operator new();
  }

  v5 = *a2;
  while (1)
  {
    while (1)
    {
      v6 = v4;
      v7 = *(v4 + 7);
      if (v5 >= v7)
      {
        break;
      }

      v4 = *v6;
      if (!*v6)
      {
        goto LABEL_8;
      }
    }

    if (v7 >= v5)
    {
      return v6;
    }

    v4 = v6[1];
    if (!v4)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_19B6557E0(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    JUMPOUT(0x19EAE76F0);
  }

  return result;
}

uint64_t sub_19B655800(void *a1, uint64_t a2)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    return sub_19B65589C(a1, v3, v4);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

      return sub_19B655C30(a1, v6, v7);
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_19B65589C(void *a1, const char *a2, uint64_t a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_binaryVersion(a1, a2, a3);
  objc_msgSend_sizeOfType(a1, v5, v6);
  if (!v4)
  {
    return sub_19B655FFC(&v15 + 7, a1, v7);
  }

  if (getenv("_INTERSILO_UNIT_TEST"))
  {
    if (qword_1EAFE2958 != -1)
    {
      dispatch_once(&qword_1EAFE2958, &unk_1F0E28900);
    }

    v8 = qword_1EAFE2960;
    if (os_log_type_enabled(qword_1EAFE2960, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218498;
      v18 = v4;
      v19 = 2048;
      v20 = 0;
      v21 = 2080;
      v22 = "N30CLGyroCalibrationDatabase_Type16NotificationDataE" & 0x7FFFFFFFFFFFFFFFLL;
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_ERROR, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", buf, 0x20u);
    }

    v9 = sub_19B420058();
    if ((*(v9 + 160) & 0x80000000) != 0 && (*(v9 + 164) & 0x80000000) != 0 && (*(v9 + 168) & 0x80000000) != 0 && !*(v9 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2958 != -1)
    {
      dispatch_once(&qword_1EAFE2958, &unk_1F0E28900);
    }

    LODWORD(v16) = 134218498;
    HIDWORD(v16) = v4;
    LODWORD(v15) = 32;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2960, 16, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v16, v15, v16);
  }

  else
  {
    if (qword_1EAFE2958 != -1)
    {
      dispatch_once(&qword_1EAFE2958, &unk_1F0E28900);
    }

    v12 = qword_1EAFE2960;
    if (os_log_type_enabled(qword_1EAFE2960, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218498;
      v18 = v4;
      v19 = 2048;
      v20 = 0;
      v21 = 2080;
      v22 = "N30CLGyroCalibrationDatabase_Type16NotificationDataE" & 0x7FFFFFFFFFFFFFFFLL;
      _os_log_impl(&dword_19B41C000, v12, OS_LOG_TYPE_FAULT, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", buf, 0x20u);
    }

    v13 = sub_19B420058();
    if ((*(v13 + 160) & 0x80000000) != 0 && (*(v13 + 164) & 0x80000000) != 0 && (*(v13 + 168) & 0x80000000) != 0 && !*(v13 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2958 != -1)
    {
      dispatch_once(&qword_1EAFE2958, &unk_1F0E28900);
    }

    LODWORD(v16) = 134218498;
    HIDWORD(v16) = v4;
    LODWORD(v15) = 32;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2960, 17, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v16, v15, v16);
  }

  v14 = v10;
  sub_19B6BB7CC("Generic", 1, 0, 0, "const Object_T *safeDecoder(CLCppContainer *, Callback) [Object_T = CLGyroCalibrationDatabase_Type::NotificationData, Callback = (lambda at /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Shared/Intersilo/CLCppContainer.h:241:46)]", "CoreLocation: %s\n", v10);
  if (v14 != buf)
  {
    free(v14);
  }

  return 0;
}

uint64_t sub_19B655C30(void *a1, const char *a2, uint64_t a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_binaryVersion(a1, a2, a3);
  objc_msgSend_sizeOfType(a1, v5, v6);
  if (v4)
  {
    if (getenv("_INTERSILO_UNIT_TEST"))
    {
      if (qword_1EAFE2958 != -1)
      {
        dispatch_once(&qword_1EAFE2958, &unk_1F0E28900);
      }

      v9 = qword_1EAFE2960;
      if (os_log_type_enabled(qword_1EAFE2960, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218498;
        v18 = v4;
        v19 = 2048;
        v20 = 0;
        v21 = 2080;
        v22 = "N30CLGyroCalibrationDatabase_Type16NotificationDataE" & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_ERROR, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", buf, 0x20u);
      }

      v10 = sub_19B420058();
      if ((*(v10 + 160) & 0x80000000) != 0 && (*(v10 + 164) & 0x80000000) != 0 && (*(v10 + 168) & 0x80000000) != 0 && !*(v10 + 152))
      {
        return 0;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2958 != -1)
      {
        dispatch_once(&qword_1EAFE2958, &unk_1F0E28900);
      }

      LODWORD(v16) = 134218498;
      HIDWORD(v16) = v4;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2960, 16, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v16, 32, v16);
    }

    else
    {
      if (qword_1EAFE2958 != -1)
      {
        dispatch_once(&qword_1EAFE2958, &unk_1F0E28900);
      }

      v13 = qword_1EAFE2960;
      if (os_log_type_enabled(qword_1EAFE2960, OS_LOG_TYPE_FAULT))
      {
        *buf = 134218498;
        v18 = v4;
        v19 = 2048;
        v20 = 0;
        v21 = 2080;
        v22 = "N30CLGyroCalibrationDatabase_Type16NotificationDataE" & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(&dword_19B41C000, v13, OS_LOG_TYPE_FAULT, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", buf, 0x20u);
      }

      v14 = sub_19B420058();
      if ((*(v14 + 160) & 0x80000000) != 0 && (*(v14 + 164) & 0x80000000) != 0 && (*(v14 + 168) & 0x80000000) != 0 && !*(v14 + 152))
      {
        return 0;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2958 != -1)
      {
        dispatch_once(&qword_1EAFE2958, &unk_1F0E28900);
      }

      LODWORD(v16) = 134218498;
      HIDWORD(v16) = v4;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2960, 17, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v16, 32, v16);
    }

    v15 = v11;
    sub_19B6BB7CC("Generic", 1, 0, 0, "const Object_T *safeDecoder(CLCppContainer *, Callback) [Object_T = CLGyroCalibrationDatabase_Type::NotificationData, Callback = (lambda at /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Shared/Intersilo/CLCppContainer.h:250:46)]", "CoreLocation: %s\n", v11);
    if (v15 != buf)
    {
      free(v15);
    }

    return 0;
  }

  return objc_msgSend_cppObjectPtr(a1, v7, v8);
}

uint64_t sub_19B655FFC(uint64_t a1, void *a2, uint64_t a3)
{
  v30 = *MEMORY[0x1E69E9840];
  if (!objc_msgSend_cppObjectPtr(a2, a2, a3))
  {
    v6 = objc_msgSend_compatibilityInfo(a2, v4, v5);
    if (objc_msgSend_isEqual_(v6, v7, &unk_1F0E6A4F8))
    {
      v8 = objc_msgSend_serialized(a2, v4, v5);
      if (objc_msgSend_length(v8, v9, v10) != 320)
      {
        if (qword_1EAFE2958 != -1)
        {
          dispatch_once(&qword_1EAFE2958, &unk_1F0E28900);
        }

        v19 = qword_1EAFE2960;
        if (os_log_type_enabled(qword_1EAFE2960, OS_LOG_TYPE_FAULT))
        {
          *buf = 68289539;
          v23 = 0;
          v24 = 2082;
          v25 = "";
          v26 = 2082;
          v27 = "assert";
          v28 = 2081;
          v29 = "sizeof(Object_T) == podContainer.serialized.length";
          _os_log_impl(&dword_19B41C000, v19, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:The total size of the POD types on the 2 architectures is expected to be the same., event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
          if (qword_1EAFE2958 != -1)
          {
            dispatch_once(&qword_1EAFE2958, &unk_1F0E28900);
          }
        }

        v20 = qword_1EAFE2960;
        if (os_signpost_enabled(qword_1EAFE2960))
        {
          *buf = 68289539;
          v23 = 0;
          v24 = 2082;
          v25 = "";
          v26 = 2082;
          v27 = "assert";
          v28 = 2081;
          v29 = "sizeof(Object_T) == podContainer.serialized.length";
          _os_signpost_emit_with_name_impl(&dword_19B41C000, v20, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "The total size of the POD types on the 2 architectures is expected to be the same.", "{msg%{public}.0s:The total size of the POD types on the 2 architectures is expected to be the same., event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
          if (qword_1EAFE2958 != -1)
          {
            dispatch_once(&qword_1EAFE2958, &unk_1F0E28900);
          }
        }

        v21 = qword_1EAFE2960;
        if (os_log_type_enabled(qword_1EAFE2960, OS_LOG_TYPE_INFO))
        {
          *buf = 68289539;
          v23 = 0;
          v24 = 2082;
          v25 = "";
          v26 = 2082;
          v27 = "assert";
          v28 = 2081;
          v29 = "sizeof(Object_T) == podContainer.serialized.length";
          _os_log_impl(&dword_19B41C000, v21, OS_LOG_TYPE_INFO, "{msg%{public}.0s:The total size of the POD types on the 2 architectures is expected to be the same., event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        }

        abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Shared/Intersilo/CLCppContainer.h", 244, "operator()");
      }

      v13 = objc_msgSend_serialized(a2, v11, v12);
      v16 = objc_msgSend_bytes(v13, v14, v15);
      objc_msgSend_setCppObjectPtr_(a2, v17, v16);
    }
  }

  return objc_msgSend_cppObjectPtr(a2, v4, v5);
}

uint64_t **sub_19B6562C0(uint64_t **a1, int *a2, _DWORD *a3)
{
  v3 = a1[1];
  if (!v3)
  {
LABEL_8:
    operator new();
  }

  v4 = *a2;
  while (1)
  {
    while (1)
    {
      v5 = v3;
      v6 = *(v3 + 7);
      if (v4 >= v6)
      {
        break;
      }

      v3 = *v5;
      if (!*v5)
      {
        goto LABEL_8;
      }
    }

    if (v6 >= v4)
    {
      return v5;
    }

    v3 = v5[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_19B65638C(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a1 + 8;
  do
  {
    if (*(v2 + 28) >= v3)
    {
      v4 = v2;
    }

    v2 = *(v2 + 8 * (*(v2 + 28) < v3));
  }

  while (v2);
  if (v4 == a1 + 8 || v3 < *(v4 + 28))
  {
    return 0;
  }

  sub_19B654808(a1, v4);
  operator delete(v4);
  return 1;
}

void sub_19B656430(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F0E2AC98;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x19EAE76F0);
}

void sub_19B656540(void *a1, int *a2, void *a3)
{
  v49 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 108) & 1) == 0)
  {
    v5 = a1 + 8;
    v4 = a1[8];
    if (v4)
    {
      v8 = *a2;
      v9 = a1 + 8;
      do
      {
        if (*(v4 + 32) >= v8)
        {
          v9 = v4;
        }

        v4 = *(v4 + 8 * (*(v4 + 32) < v8));
      }

      while (v4);
      if (v9 != v5 && v8 >= *(v9 + 8))
      {
        v40 = v9;
        v10 = sub_19B655800(a3, a2);
        (*(*a1 + 184))(a1, a2, v10, v9 + 10);
        v11 = v9[5];
        if (v11 != v9 + 6)
        {
          v12 = a1 + 11;
          v13 = a1 + 1;
          do
          {
            v14 = *v12;
            if (!*v12)
            {
              goto LABEL_18;
            }

            v15 = *(v11 + 7);
            v16 = a1 + 11;
            do
            {
              if (*(v14 + 32) >= v15)
              {
                v16 = v14;
              }

              v14 = *(v14 + 8 * (*(v14 + 32) < v15));
            }

            while (v14);
            if (v16 != v12 && (v17 = *(v16 + 8), v15 >= v17))
            {
              v39 = v16;
              sub_19B655440(a1, &v39, &v40, a3);
              v26 = a1[8];
              if (!v26)
              {
                return;
              }

              v27 = *a2;
              v28 = v5;
              do
              {
                if (*(v26 + 32) >= v27)
                {
                  v28 = v26;
                }

                v26 = *(v26 + 8 * (*(v26 + 32) < v27));
              }

              while (v26);
              if (v28 == v5 || v27 < *(v28 + 32))
              {
                return;
              }

              v40 = v28;
              v30 = *(v28 + 48);
              v11 = (v28 + 48);
              v29 = v30;
              if (v30)
              {
                v31 = v11;
                v32 = v29;
                do
                {
                  if (*(v32 + 28) >= v17)
                  {
                    v31 = v32;
                  }

                  v32 = *(v32 + 8 * (*(v32 + 28) < v17));
                }

                while (v32);
                if (v31 == v11 || v17 < *(v31 + 7))
                {
                  do
                  {
                    v33 = *(v29 + 28);
                    v34 = v17 < v33;
                    v35 = v17 >= v33;
                    if (v34)
                    {
                      v11 = v29;
                    }

                    v29 = *(v29 + 8 * v35);
                  }

                  while (v29);
                }

                else
                {
                  v36 = v31[1];
                  if (v36)
                  {
                    do
                    {
                      v11 = v36;
                      v36 = *v36;
                    }

                    while (v36);
                  }

                  else
                  {
                    do
                    {
                      v11 = v31[2];
                      v37 = *v11 == v31;
                      v31 = v11;
                    }

                    while (!v37);
                  }
                }
              }
            }

            else
            {
LABEL_18:
              v39 = a1 + 11;
              if (qword_1EAFE27F8 != -1)
              {
                dispatch_once(&qword_1EAFE27F8, &unk_1F0E292C0);
              }

              v18 = qword_1EAFE2820;
              if (os_log_type_enabled(qword_1EAFE2820, OS_LOG_TYPE_FAULT))
              {
                v19 = a1 + 1;
                if (*(a1 + 31) < 0)
                {
                  v19 = *v13;
                }

                v20 = *(v11 + 7);
                *buf = 136446466;
                v46 = v19;
                v47 = 1026;
                v48 = v20;
                _os_log_impl(&dword_19B41C000, v18, OS_LOG_TYPE_FAULT, "%{public}s; unknown client %{public}d", buf, 0x12u);
              }

              v21 = sub_19B420058();
              if ((*(v21 + 160) & 0x80000000) == 0 || (*(v21 + 164) & 0x80000000) == 0 || (*(v21 + 168) & 0x80000000) == 0 || *(v21 + 152))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1EAFE27F8 != -1)
                {
                  dispatch_once(&qword_1EAFE27F8, &unk_1F0E292C0);
                }

                v22 = a1 + 1;
                if (*(a1 + 31) < 0)
                {
                  v22 = *v13;
                }

                v23 = *(v11 + 7);
                v41 = 136446466;
                v42 = v22;
                v43 = 1026;
                v44 = v23;
                LODWORD(v38) = 18;
                _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2820, 17, "%{public}s; unknown client %{public}d", &v41, v38);
                v25 = v24;
                sub_19B6BB7CC("Generic", 1, 0, 0, "void CLNotifier<CLGyroCalibrationDatabase_Type::Notification, CLGyroCalibrationDatabase_Type::NotificationData, char, char>::invokeClientsWithData(const Notification_T &, CLCppContainer *) [Notification_T = CLGyroCalibrationDatabase_Type::Notification, NotificationData_T = CLGyroCalibrationDatabase_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "CoreLocation: %s\n", v24);
                if (v25 != buf)
                {
                  free(v25);
                }
              }
            }
          }

          while (v11 != v40 + 6);
        }
      }
    }
  }
}

__n128 sub_19B656A18(__n128 *a1, __n128 *a2)
{
  v2 = a2->n128_u32[0];
  a1->n128_u64[1] = a2->n128_u64[1];
  v3 = a2 + 1;
  v4 = a2[1].n128_u64[0];
  a1->n128_u32[0] = v2;
  a1[1].n128_u64[0] = v4;
  v5 = a1 + 1;
  v6 = a2[1].n128_u64[1];
  a1[1].n128_u64[1] = v6;
  if (v6)
  {
    *(v4 + 16) = v5;
    a2->n128_u64[1] = v3;
    v3->n128_u64[0] = 0;
    a2[1].n128_u64[1] = 0;
  }

  else
  {
    a1->n128_u64[1] = v5;
  }

  result = a2[2];
  a1[2] = result;
  a2[2] = 0uLL;
  a1[3].n128_u8[0] = a2[3].n128_u8[0];
  return result;
}

uint64_t sub_19B656A70(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  sub_19B656AC8((a1 + 8), a3);
  v5 = *(a3 + 32);
  *(a1 + 32) = *(a3 + 24);
  *(a1 + 40) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 48) = *(a3 + 40);
  return a1;
}

uint64_t *sub_19B656AC8(uint64_t *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = (a1 + 1);
  sub_19B656B20(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t *sub_19B656B20(uint64_t *result, int *a2, int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_19B656BA8(v5, (v5 + 8), v4 + 7, (v4 + 7));
      v6 = *(v4 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t *sub_19B656BA8(uint64_t **a1, uint64_t *a2, int *a3, uint64_t *a4)
{
  v4 = *sub_19B656C40(a1, a2, &v7, &v6, a3);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

uint64_t *sub_19B656C40(uint64_t **a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, int *a5)
{
  v5 = (a1 + 1);
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 7), *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = *(v9 + 8);
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 7) < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 28);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = (a1 + 1);
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 7))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 28);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = (a1 + 1);
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

uint64_t sub_19B656DE8(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    sub_19B41FFEC(v2);
  }

  sub_19B654634(a1 + 8, *(a1 + 16));
  return a1;
}

uint64_t sub_19B656E24(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    JUMPOUT(0x19EAE76F0);
  }

  return result;
}

intptr_t sub_19B656E44(void *a1, const char *a2, uint64_t a3)
{
  *(*(a1[5] + 8) + 24) = sub_19B707210(*(a1[6] + 8) + 48, a2, a3);
  v4 = a1[4];

  return dispatch_semaphore_signal(v4);
}

void sub_19B6572EC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x19EAE76F0](v20, v19, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void sub_19B65731C(uint64_t a1, CLConnectionMessage **a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v7 = objc_msgSend_setWithObjects_(v3, v6, v4, v5, 0);
  if (*a2 && (DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v7)) != 0 && (v10 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v9, @"CMErrorMessage")) != 0)
  {
    v13 = objc_msgSend_intValue(v10, v11, v12);
  }

  else
  {
    v13 = 103;
  }

  if (qword_1EAFE2B08 != -1)
  {
    dispatch_once(&qword_1EAFE2B08, &unk_1F0E3A928);
  }

  v14 = qword_1EAFE2B10;
  if (os_log_type_enabled(qword_1EAFE2B10, OS_LOG_TYPE_FAULT))
  {
    *buf = 67240192;
    v21 = v13;
    _os_log_impl(&dword_19B41C000, v14, OS_LOG_TYPE_FAULT, "Failed with error, %{public}d", buf, 8u);
  }

  v15 = sub_19B420058();
  if ((*(v15 + 160) & 0x80000000) == 0 || (*(v15 + 164) & 0x80000000) == 0 || (*(v15 + 168) & 0x80000000) == 0 || *(v15 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2B08 != -1)
    {
      dispatch_once(&qword_1EAFE2B08, &unk_1F0E3A928);
    }

    v19[0] = 67240192;
    v19[1] = v13;
    LODWORD(v18) = 8;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2B10, 17, "Failed with error, %{public}d", v19, v18);
    v17 = v16;
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CMSpringTrackerInternal init]_block_invoke", "CoreLocation: %s\n", v16);
    if (v17 != buf)
    {
      free(v17);
    }
  }
}

void sub_19B657544(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = getpid();
  ExecutablePathFromPid = objc_msgSend_getExecutablePathFromPid_(CMMotionUtils, v3, v2);
  if (ExecutablePathFromPid)
  {
    v7 = ExecutablePathFromPid;
    if (qword_1EAFE2B08 != -1)
    {
      dispatch_once(&qword_1EAFE2B08, &unk_1F0E3A928);
    }

    v8 = qword_1EAFE2B10;
    if (os_log_type_enabled(qword_1EAFE2B10, OS_LOG_TYPE_INFO))
    {
      v9 = getpid();
      v10 = *(a1 + 32);
      *buf = 138412802;
      v27 = v7;
      v28 = 1024;
      v29 = v9;
      v30 = 2048;
      v31 = v10;
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_INFO, "Client connection interrupt, %@, %d, %p", buf, 0x1Cu);
    }

    v11 = sub_19B420058();
    if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2B08 != -1)
      {
        dispatch_once(&qword_1EAFE2B08, &unk_1F0E3A928);
      }

      v12 = qword_1EAFE2B10;
      v13 = getpid();
      v14 = *(a1 + 32);
      v20 = 138412802;
      v21 = v7;
      v22 = 1024;
      v23 = v13;
      v24 = 2048;
      v25 = v14;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v12, 1, "Client connection interrupt, %@, %d, %p", &v20, 28);
      v16 = v15;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMSpringTrackerInternal init]_block_invoke", "CoreLocation: %s\n", v15);
      if (v16 != buf)
      {
        free(v16);
      }
    }
  }

  v17 = *(a1 + 32);
  if (*(v17 + 24) == 1)
  {
    v18 = objc_msgSend_copy(*(v17 + 32), v5, v6);
    objc_msgSend__startWithHandler_(*(a1 + 32), v19, v18);
  }
}

void sub_19B657A3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a13)
  {
    sub_19B41FFEC(a13);
  }

  sub_19B41FFEC(v19);
  _Unwind_Resume(a1);
}

void sub_19B657B08(uint64_t a1)
{
  *(*(a1 + 32) + 32) = 0;
  *(*(a1 + 32) + 32) = *(a1 + 40);
  operator new();
}

void sub_19B657C4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    sub_19B41FFEC(a17);
  }

  sub_19B41FFEC(v17);
  _Unwind_Resume(a1);
}

void sub_19B657C98(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a2 + 1);
  v5 = *a2;
  v6 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  objc_msgSend__handleStartStopResponse_handler_(v3, a2, &v5, *(a1 + 40));
  if (v6)
  {
    sub_19B41FFEC(v6);
  }

  *(*(a1 + 32) + 24) = 1;
}

void sub_19B657D00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_19B41FFEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B657EAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    sub_19B41FFEC(a17);
  }

  sub_19B41FFEC(v17);
  _Unwind_Resume(a1);
}

void sub_19B657EF8(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a2 + 1);
  v5 = *a2;
  v6 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  objc_msgSend__handleStartStopResponse_handler_(v3, a2, &v5, *(a1 + 40));
  if (v6)
  {
    sub_19B41FFEC(v6);
  }

  *(*(a1 + 32) + 24) = 0;
}

void sub_19B657F5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_19B41FFEC(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B6583DC(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  v3 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], a2, @"CMErrorDomain", 103, 0);
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

uint64_t sub_19B65843C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_intValue(*(a1 + 32), a2, a3);
  v7 = *(a1 + 40);
  if (v4 == 100)
  {
    v8 = 0;
  }

  else
  {
    v9 = MEMORY[0x1E696ABC0];
    v10 = objc_msgSend_intValue(*(a1 + 32), v5, v6);
    v8 = objc_msgSend_errorWithDomain_code_userInfo_(v9, v11, @"CMErrorDomain", v10, 0);
  }

  v12 = *(v7 + 16);

  return v12(v7, v8);
}

uint64_t sub_19B6584D0(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  v3 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], a2, @"CMErrorDomain", 103, 0);
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

void sub_19B6585A8(void *a1, const char *a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  if (v2)
  {
    v12 = @"CMSpringKeyDataRecord";
    v13[0] = v2;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v13, &v12, 1);
  }

  else
  {
    v3 = objc_alloc(MEMORY[0x1E696AFB0]);
    v5 = objc_msgSend_initWithUUIDString_(v3, v4, @"00000000-0000-0000-0000-000000000000");
    v6 = [CMSleepData alloc];
    v8 = objc_msgSend_initWithSessionId_(v6, v7, v5);
    v10 = @"CMSpringKeyDataRecord";
    v11 = v8;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v9, &v11, &v10, 1);
  }

  sub_19B659120();
}

void sub_19B65874C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a15)
  {
    sub_19B41FFEC(a15);
  }

  if (a17)
  {
    sub_19B41FFEC(a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B658778(uint64_t a1, CLConnectionMessage **a2, uint64_t a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_copy(*(a1 + 32), a2, a3);
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v11 = objc_msgSend_setWithObjects_(v5, v10, v6, v7, v8, v9, 0);
  if (*a2 && (DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v11)) != 0)
  {
    v14 = DictionaryOfClasses;
    v15 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v13, @"CMErrorMessage");
    v17 = objc_msgSend_objectForKeyedSubscript_(v14, v16, @"CMSpringKeyDataArray");
    if (v15)
    {
      v18 = v27;
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = sub_19B658B78;
      v27[3] = &unk_1E7532B90;
      v27[5] = v4;
      v4 = v15;
    }

    else if (v17)
    {
      v18 = v26;
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = sub_19B658BF0;
      v26[3] = &unk_1E7532B90;
      v26[5] = v4;
      v4 = v17;
    }

    else
    {
      if (qword_1EAFE2B08 != -1)
      {
        dispatch_once(&qword_1EAFE2B08, &unk_1F0E3A928);
      }

      v19 = qword_1EAFE2B10;
      if (os_log_type_enabled(qword_1EAFE2B10, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v19, OS_LOG_TYPE_FAULT, "Error parsing query response.", buf, 2u);
      }

      v20 = sub_19B420058();
      if ((*(v20 + 160) & 0x80000000) == 0 || (*(v20 + 164) & 0x80000000) == 0 || (*(v20 + 168) & 0x80000000) == 0 || *(v20 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2B08 != -1)
        {
          dispatch_once(&qword_1EAFE2B08, &unk_1F0E3A928);
        }

        v25 = 0;
        LODWORD(v23) = 2;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2B10, 17, "Error parsing query response.", &v25, v23);
        v22 = v21;
        sub_19B6BB7CC("Generic", 1, 0, 0, "[CMSpringTrackerInternal _querySpringDataFromRecord:handler:]_block_invoke", "CoreLocation: %s\n", v21);
        if (v22 != buf)
        {
          free(v22);
        }
      }

      v18 = v24;
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = sub_19B658C08;
      v24[3] = &unk_1E7532B40;
    }
  }

  else
  {
    v18 = block;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_19B658B14;
    block[3] = &unk_1E7532B40;
  }

  v18[4] = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v18);
}

uint64_t sub_19B658B14(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  v3 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], a2, @"CMErrorDomain", 103, 0);
  v4 = *(v2 + 16);

  return v4(v2, 0, v3);
}

uint64_t sub_19B658B78(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = MEMORY[0x1E696ABC0];
  v4 = *(a1 + 40);
  v5 = objc_msgSend_intValue(*(a1 + 32), a2, a3);
  v7 = objc_msgSend_errorWithDomain_code_userInfo_(v3, v6, @"CMErrorDomain", v5, 0);
  v8 = *(v4 + 16);

  return v8(v4, 0, v7);
}

uint64_t sub_19B658C08(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  v3 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], a2, @"CMErrorDomain", 103, 0);
  v4 = *(v2 + 16);

  return v4(v2, 0, v3);
}

uint64_t sub_19B658E8C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend__internal(*(a1 + 32), a2, a3);
  v6 = *(a1 + 40);

  return objc_msgSend__startWithHandler_(v4, v5, v6);
}

uint64_t sub_19B658F98(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend__internal(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);

  return MEMORY[0x1EEE66B58](v4, sel__stopWithHandler_, v5);
}

uint64_t sub_19B6590AC(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend__internal(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);

  return MEMORY[0x1EEE66B58](v4, sel__querySpringDataFromRecord_handler_, v5);
}

os_log_t sub_19B6590F0()
{
  result = os_log_create("com.apple.locationd.Position", "Spring");
  qword_1EAFE2B10 = result;
  return result;
}

void *sub_19B659194(void *a1, char *a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F0E2AD08;
  sub_19B6591F0((a1 + 3), a2, a3);
  return a1;
}

uint64_t sub_19B6591F0(uint64_t a1, char *a2, void *a3)
{
  sub_19B428B50(__p, a2);
  MEMORY[0x19EAE71F0](a1, __p, *a3);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_19B659248(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B659264(uint64_t a1, const char *a2)
{
  v38 = *MEMORY[0x1E69E9840];
  *(a1 + 1560) = 0;
  *(a1 + 1552) = 0;
  *(a1 + 1564) = 0;
  *a1 = 0;
  *(a1 + 8) = 0;
  context = espresso_create_context();
  *a1 = context;
  if (context)
  {
    plan = espresso_create_plan();
    *(a1 + 8) = plan;
    if (plan)
    {
      v6 = strlen(a2);
      if (v6 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_19B4C51DC();
      }

      v7 = v6;
      if (v6 >= 0x17)
      {
        operator new();
      }

      *(&buf[0].__r_.__value_.__s + 23) = v6;
      if (v6)
      {
        memcpy(buf, a2, v6);
      }

      buf[0].__r_.__value_.__s.__data_[v7] = 0;
      v15 = std::string::append(buf, "/model.espresso.net", 0x13uLL);
      v16 = *&v15->__r_.__value_.__l.__data_;
      v36 = v15->__r_.__value_.__r.__words[2];
      *__p = v16;
      v15->__r_.__value_.__l.__size_ = 0;
      v15->__r_.__value_.__r.__words[2] = 0;
      v15->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf[0].__r_.__value_.__l.__data_);
      }

      if (espresso_plan_add_network())
      {
        if (qword_1ED71C830 != -1)
        {
          dispatch_once(&qword_1ED71C830, &unk_1F0E29300);
        }

        v17 = off_1ED71C838;
        if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_ERROR))
        {
          LOWORD(buf[0].__r_.__value_.__l.__data_) = 0;
          _os_log_impl(&dword_19B41C000, v17, OS_LOG_TYPE_ERROR, "Failed to add network to Espresso plan", buf, 2u);
        }

        v18 = sub_19B420058();
        if ((*(v18 + 160) & 0x80000000) != 0 && (*(v18 + 164) & 0x80000000) != 0 && (*(v18 + 168) & 0x80000000) != 0 && !*(v18 + 152))
        {
          goto LABEL_96;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1ED71C830 != -1)
        {
          dispatch_once(&qword_1ED71C830, &unk_1F0E29300);
        }

        v34[0] = 0;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C838, 16, "Failed to add network to Espresso plan", v34, 2);
        v20 = v19;
        sub_19B6BB7CC("Generic", 1, 0, 0, "CMPdrMLModel::CMPdrMLModel(const char *)", "CoreLocation: %s\n", v19);
      }

      else if (espresso_plan_build())
      {
        if (qword_1ED71C830 != -1)
        {
          dispatch_once(&qword_1ED71C830, &unk_1F0E29300);
        }

        v21 = off_1ED71C838;
        if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_ERROR))
        {
          LOWORD(buf[0].__r_.__value_.__l.__data_) = 0;
          _os_log_impl(&dword_19B41C000, v21, OS_LOG_TYPE_ERROR, "Failed to build Espresso plan", buf, 2u);
        }

        v22 = sub_19B420058();
        if ((*(v22 + 160) & 0x80000000) != 0 && (*(v22 + 164) & 0x80000000) != 0 && (*(v22 + 168) & 0x80000000) != 0 && !*(v22 + 152))
        {
          goto LABEL_96;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1ED71C830 != -1)
        {
          dispatch_once(&qword_1ED71C830, &unk_1F0E29300);
        }

        v34[0] = 0;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C838, 16, "Failed to build Espresso plan", v34, 2);
        v20 = v23;
        sub_19B6BB7CC("Generic", 1, 0, 0, "CMPdrMLModel::CMPdrMLModel(const char *)", "CoreLocation: %s\n", v23);
      }

      else if (espresso_network_bind_buffer())
      {
        if (qword_1ED71C830 != -1)
        {
          dispatch_once(&qword_1ED71C830, &unk_1F0E29300);
        }

        v24 = off_1ED71C838;
        if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_ERROR))
        {
          LOWORD(buf[0].__r_.__value_.__l.__data_) = 0;
          _os_log_impl(&dword_19B41C000, v24, OS_LOG_TYPE_ERROR, "Failed to bind input buffer", buf, 2u);
        }

        v25 = sub_19B420058();
        if ((*(v25 + 160) & 0x80000000) != 0 && (*(v25 + 164) & 0x80000000) != 0 && (*(v25 + 168) & 0x80000000) != 0 && !*(v25 + 152))
        {
          goto LABEL_96;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1ED71C830 != -1)
        {
          dispatch_once(&qword_1ED71C830, &unk_1F0E29300);
        }

        v34[0] = 0;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C838, 16, "Failed to bind input buffer", v34, 2);
        v20 = v26;
        sub_19B6BB7CC("Generic", 1, 0, 0, "CMPdrMLModel::CMPdrMLModel(const char *)", "CoreLocation: %s\n", v26);
      }

      else if (espresso_network_bind_buffer())
      {
        if (qword_1ED71C830 != -1)
        {
          dispatch_once(&qword_1ED71C830, &unk_1F0E29300);
        }

        v27 = off_1ED71C838;
        if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_ERROR))
        {
          LOWORD(buf[0].__r_.__value_.__l.__data_) = 0;
          _os_log_impl(&dword_19B41C000, v27, OS_LOG_TYPE_ERROR, "Failed to bind output buffer", buf, 2u);
        }

        v28 = sub_19B420058();
        if ((*(v28 + 160) & 0x80000000) != 0 && (*(v28 + 164) & 0x80000000) != 0 && (*(v28 + 168) & 0x80000000) != 0 && !*(v28 + 152))
        {
          goto LABEL_96;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1ED71C830 != -1)
        {
          dispatch_once(&qword_1ED71C830, &unk_1F0E29300);
        }

        v34[0] = 0;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C838, 16, "Failed to bind output buffer", v34, 2);
        v20 = v29;
        sub_19B6BB7CC("Generic", 1, 0, 0, "CMPdrMLModel::CMPdrMLModel(const char *)", "CoreLocation: %s\n", v29);
      }

      else
      {
        *(a1 + 1564) = 1;
        if (qword_1ED71C830 != -1)
        {
          dispatch_once(&qword_1ED71C830, &unk_1F0E29300);
        }

        v30 = off_1ED71C838;
        if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf[0].__r_.__value_.__l.__data_) = 0;
          _os_log_impl(&dword_19B41C000, v30, OS_LOG_TYPE_DEFAULT, "The Espresso Network is ready", buf, 2u);
        }

        v31 = sub_19B420058();
        if (*(v31 + 160) <= 1 && *(v31 + 164) <= 1 && *(v31 + 168) <= 1 && !*(v31 + 152))
        {
          goto LABEL_96;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1ED71C830 != -1)
        {
          dispatch_once(&qword_1ED71C830, &unk_1F0E29300);
        }

        v34[0] = 0;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C838, 0, "The Espresso Network is ready", v34, 2);
        v20 = v32;
        sub_19B6BB7CC("Generic", 1, 0, 2, "CMPdrMLModel::CMPdrMLModel(const char *)", "CoreLocation: %s\n", v32);
      }

      if (v20 != buf)
      {
        free(v20);
      }

LABEL_96:
      if (SHIBYTE(v36) < 0)
      {
        operator delete(__p[0]);
      }

      return a1;
    }

    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E29300);
    }

    v12 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf[0].__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&dword_19B41C000, v12, OS_LOG_TYPE_ERROR, "Failed to create Espresso plan", buf, 2u);
    }

    v13 = sub_19B420058();
    if ((*(v13 + 160) & 0x80000000) == 0 || (*(v13 + 164) & 0x80000000) == 0 || (*(v13 + 168) & 0x80000000) == 0 || *(v13 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E29300);
      }

      LOWORD(__p[0]) = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C838, 16, "Failed to create Espresso plan", __p, 2);
      v11 = v14;
      sub_19B6BB7CC("Generic", 1, 0, 0, "CMPdrMLModel::CMPdrMLModel(const char *)", "CoreLocation: %s\n", v14);
LABEL_27:
      if (v11 != buf)
      {
        free(v11);
      }
    }
  }

  else
  {
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E29300);
    }

    v8 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf[0].__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_ERROR, "Failed to create Espresso context", buf, 2u);
    }

    v9 = sub_19B420058();
    if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E29300);
      }

      LOWORD(__p[0]) = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C838, 16, "Failed to create Espresso context", __p, 2);
      v11 = v10;
      sub_19B6BB7CC("Generic", 1, 0, 0, "CMPdrMLModel::CMPdrMLModel(const char *)", "CoreLocation: %s\n", v10);
      goto LABEL_27;
    }
  }

  return a1;
}

void sub_19B659CFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_19B659D48(void *a1)
{
  if (a1[1])
  {
    espresso_plan_destroy();
  }

  if (*a1)
  {
    espresso_context_destroy();
  }

  return a1;
}

uint64_t sub_19B659D88(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v3 = a1 + 24 * *(a1 + 1556);
  v4 = *a2;
  *(v3 + 368) = *(a2 + 2);
  *(v3 + 352) = v4;
  v5 = *(a1 + 1556);
  if ((v5 + 1) <= 0x31)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = 0;
  }

  *(a1 + 1556) = v6;
  if (*(a1 + 1560))
  {
    *(a1 + 1552) = v6;
    v7 = v6;
  }

  else
  {
    v7 = *(a1 + 1552);
  }

  *(a1 + 1560) = v7 == v6;
  return sub_19B659DE4(a1, a3);
}

uint64_t sub_19B659DE4(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (*(a1 + 1564) != 1)
  {
    return 0;
  }

  if (*(a1 + 1560) != 1)
  {
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E29300);
    }

    v11 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_ERROR, "ImuData Buffer not ready", buf, 2u);
    }

    v12 = sub_19B420058();
    if ((*(v12 + 160) & 0x80000000) != 0 && (*(v12 + 164) & 0x80000000) != 0 && (*(v12 + 168) & 0x80000000) != 0 && !*(v12 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E29300);
    }

    LOWORD(v17[0]) = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C838, 16, "ImuData Buffer not ready", v17, 2, v17[0]);
LABEL_26:
    v13 = v10;
    sub_19B6BB7CC("Generic", 1, 0, 0, "BOOL CMPdrMLModel::predict(Velocity &, double)", "CoreLocation: %s\n", v10);
    if (v13 != buf)
    {
      free(v13);
    }

    return 0;
  }

  v4 = *(a1 + 16);
  v5 = *(a1 + 1552);
  v6 = 24 * (50 - v5);
  memcpy(v4, (a1 + 352 + 24 * v5), v6);
  v7 = *(a1 + 1552);
  if (v7 >= 1)
  {
    memcpy(&v4[v6], (a1 + 352), 24 * v7);
  }

  if (espresso_plan_execute_sync())
  {
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E29300);
    }

    v8 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_ERROR, "Failed to execute Espresso plan", buf, 2u);
    }

    v9 = sub_19B420058();
    if ((*(v9 + 160) & 0x80000000) != 0 && (*(v9 + 164) & 0x80000000) != 0 && (*(v9 + 168) & 0x80000000) != 0 && !*(v9 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E29300);
    }

    LOWORD(v17[0]) = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C838, 16, "Failed to execute Espresso plan", v17, 2, v17[0]);
    goto LABEL_26;
  }

  v15 = *(a1 + 184);
  v16 = *(v15 + 8);
  *a2 = *v15;
  *(a2 + 8) = v16;
  return 1;
}

void sub_19B65A23C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x19EAE76F0](v20, v19, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void sub_19B65A26C(uint64_t a1, CLConnectionMessage **a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v7 = objc_msgSend_setWithObjects_(v3, v6, v4, v5, 0);
  if (*a2 && (DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v7)) != 0 && (v10 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v9, @"CMErrorMessage")) != 0)
  {
    v13 = objc_msgSend_intValue(v10, v11, v12);
  }

  else
  {
    v13 = 103;
  }

  if (qword_1EAFE2A78 != -1)
  {
    dispatch_once(&qword_1EAFE2A78, &unk_1F0E27E20);
  }

  v14 = qword_1EAFE2A80;
  if (os_log_type_enabled(qword_1EAFE2A80, OS_LOG_TYPE_FAULT))
  {
    *buf = 67240192;
    v21 = v13;
    _os_log_impl(&dword_19B41C000, v14, OS_LOG_TYPE_FAULT, "CMIndoorOutdoor, Failed with CMError code %{public}d", buf, 8u);
  }

  v15 = sub_19B420058();
  if ((*(v15 + 160) & 0x80000000) == 0 || (*(v15 + 164) & 0x80000000) == 0 || (*(v15 + 168) & 0x80000000) == 0 || *(v15 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2A78 != -1)
    {
      dispatch_once(&qword_1EAFE2A78, &unk_1F0E27E20);
    }

    v19[0] = 67240192;
    v19[1] = v13;
    LODWORD(v18) = 8;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2A80, 17, "CMIndoorOutdoor, Failed with CMError code %{public}d", v19, v18);
    v17 = v16;
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CMIndoorOutdoorManagerInternal init]_block_invoke", "CoreLocation: %s\n", v16);
    if (v17 != buf)
    {
      free(v17);
    }
  }
}

_BYTE *sub_19B65A494(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = getpid();
  ExecutablePathFromPid = objc_msgSend_getExecutablePathFromPid_(CMMotionUtils, v3, v2);
  if (ExecutablePathFromPid)
  {
    v7 = ExecutablePathFromPid;
    if (qword_1EAFE2A78 != -1)
    {
      dispatch_once(&qword_1EAFE2A78, &unk_1F0E27E20);
    }

    v8 = qword_1EAFE2A80;
    if (os_log_type_enabled(qword_1EAFE2A80, OS_LOG_TYPE_DEFAULT))
    {
      v9 = getpid();
      v10 = *(a1 + 32);
      *buf = 138412802;
      v25 = v7;
      v26 = 1024;
      v27 = v9;
      v28 = 2048;
      v29 = v10;
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_DEFAULT, "CMIndoorOutdoor, client connection interrupt, %@, %d, %p", buf, 0x1Cu);
    }

    v11 = sub_19B420058();
    if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2A78 != -1)
      {
        dispatch_once(&qword_1EAFE2A78, &unk_1F0E27E20);
      }

      v12 = qword_1EAFE2A80;
      v13 = getpid();
      v14 = *(a1 + 32);
      v18 = 138412802;
      v19 = v7;
      v20 = 1024;
      v21 = v13;
      v22 = 2048;
      v23 = v14;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v12, 0, "CMIndoorOutdoor, client connection interrupt, %@, %d, %p", &v18, 28);
      v16 = v15;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMIndoorOutdoorManagerInternal init]_block_invoke", "CoreLocation: %s\n", v15);
      if (v16 != buf)
      {
        free(v16);
      }
    }
  }

  result = *(a1 + 32);
  if (result[40] == 1)
  {
    return objc_msgSend__startIndoorOutdoorUpdates(result, v5, v6);
  }

  return result;
}

void sub_19B65A7A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B65A838(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 32))
  {
    sub_19B428B50(&__p, "kCLConnectionMessageIndoorOutdoorUpdate");
    CLConnectionClient::setHandlerForMessage();
    if (v3 < 0)
    {
      operator delete(__p);
    }

    v4 = @"kCLConnectionMessageSubscribeKey";
    v5[0] = MEMORY[0x1E695E118];
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v1, v5, &v4, 1);
    sub_19B5D12C8();
  }
}

void sub_19B65A9B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, std::__shared_weak_count *a19, int a20, __int16 a21, char a22, char a23)
{
  if (a11)
  {
    sub_19B41FFEC(a11);
  }

  if (a19)
  {
    sub_19B41FFEC(a19);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B65A9F4(uint64_t a1, CLConnectionMessage **a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v7 = objc_msgSend_setWithObjects_(v4, v6, v5, 0);
  DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v7);
  if (*a2)
  {
    v10 = DictionaryOfClasses == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    result = objc_opt_respondsToSelector();
    if ((result & 1) == 0)
    {
      return result;
    }

    v13 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v12, @"CMErrorDomain", 103, 0);
LABEL_11:
    v24 = v13;
    v25 = *(a1 + 32);
    v26 = *(v25 + 16);
    v27 = *(v25 + 24);

    return objc_msgSend_indoorOutdoorManager_updateFailedWithError_(v26, v14, v27, v24);
  }

  v15 = DictionaryOfClasses;
  v16 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v9, @"CMErrorMessage");
  v18 = objc_msgSend_objectForKeyedSubscript_(v15, v17, @"CMIndoorOutdoorStateKey");
  if (v16)
  {
    result = objc_opt_respondsToSelector();
    if ((result & 1) == 0)
    {
      return result;
    }

    v21 = MEMORY[0x1E696ABC0];
    v22 = objc_msgSend_intValue(v16, v19, v20);
    v13 = objc_msgSend_errorWithDomain_code_userInfo_(v21, v23, @"CMErrorDomain", v22, 0);
    goto LABEL_11;
  }

  if (v18)
  {
    result = objc_opt_respondsToSelector();
    if (result)
    {
      v28 = *(a1 + 32);
      v29 = *(v28 + 16);
      v30 = *(v28 + 24);

      return MEMORY[0x1EEE66B58](v29, sel_indoorOutdoorManager_didChangeTo_, v30);
    }
  }

  else
  {
    if (qword_1EAFE2A78 != -1)
    {
      dispatch_once(&qword_1EAFE2A78, &unk_1F0E27E20);
    }

    v31 = qword_1EAFE2A80;
    if (os_log_type_enabled(qword_1EAFE2A80, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v31, OS_LOG_TYPE_FAULT, "IndoorOutdoor, unable to parse kCLConnectionMessageIndoorOutdoorUpdate message", buf, 2u);
    }

    v32 = sub_19B420058();
    if ((*(v32 + 160) & 0x80000000) == 0 || (*(v32 + 164) & 0x80000000) == 0 || (*(v32 + 168) & 0x80000000) == 0 || *(v32 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2A78 != -1)
      {
        dispatch_once(&qword_1EAFE2A78, &unk_1F0E27E20);
      }

      v38[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2A80, 17, "IndoorOutdoor, unable to parse kCLConnectionMessageIndoorOutdoorUpdate message", v38, 2);
      v34 = v33;
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMIndoorOutdoorManagerInternal _startIndoorOutdoorUpdates]_block_invoke", "CoreLocation: %s\n", v33);
      if (v34 != buf)
      {
        free(v34);
      }
    }

    result = objc_opt_respondsToSelector();
    if (result)
    {
      v36 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v35, @"CMErrorDomain", 103, 0);
      return objc_msgSend_indoorOutdoorManager_updateFailedWithError_(*(*(a1 + 32) + 16), v37, *(*(a1 + 32) + 24), v36);
    }
  }

  return result;
}

void sub_19B65AE00(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  sub_19B428B50(&__p, "kCLConnectionMessageIndoorOutdoorUpdate");
  CLConnectionClient::setHandlerForMessage();
  if (v11 < 0)
  {
    operator delete(__p);
  }

  if (*(*(a1 + 32) + 40))
  {
    v8 = @"kCLConnectionMessageSubscribeKey";
    v9 = MEMORY[0x1E695E110];
    v7 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v2, &v9, &v8, 1);
    sub_19B5D12C8();
  }

  if (qword_1EAFE2A78 != -1)
  {
    dispatch_once(&qword_1EAFE2A78, &unk_1F0E27E20);
  }

  v3 = qword_1EAFE2A80;
  if (os_log_type_enabled(qword_1EAFE2A80, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__p) = 0;
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEFAULT, "IndoorOutdoor, Error stopping updates, no active clients", &__p, 2u);
  }

  v4 = sub_19B420058();
  if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
  {
    bzero(&__p, 0x65CuLL);
    if (qword_1EAFE2A78 != -1)
    {
      dispatch_once(&qword_1EAFE2A78, &unk_1F0E27E20);
    }

    LOWORD(v7) = 0;
    _os_log_send_and_compose_impl(2, 0, &__p, 1628, &dword_19B41C000, qword_1EAFE2A80, 0, "IndoorOutdoor, Error stopping updates, no active clients", &v7, 2);
    v6 = v5;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMIndoorOutdoorManagerInternal _stopIndoorOutdoorUpdates]_block_invoke", "CoreLocation: %s\n", v5);
    if (v6 != &__p)
    {
      free(v6);
    }
  }
}

void sub_19B65B088(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, std::__shared_weak_count *a18, int a19, __int16 a20, char a21, char a22)
{
  if (a12)
  {
    sub_19B41FFEC(a12);
  }

  if (a18)
  {
    sub_19B41FFEC(a18);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B65B140(uint64_t a1)
{
  if (*(*(a1 + 32) + 32))
  {
    if (*(a1 + 40))
    {
      sub_19B65BD10();
    }
  }
}

void sub_19B65B220(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_19B41FFEC(a15);
  }

  v17 = *(v15 - 32);
  if (v17)
  {
    sub_19B41FFEC(v17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B65B244(uint64_t a1, CLConnectionMessage **a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v7 = objc_msgSend_setWithObjects_(v4, v6, v5, 0);
  DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v7);
  if (*a2)
  {
    v10 = DictionaryOfClasses == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    v11 = *(a1 + 32);
    v12 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v9, @"CMErrorDomain", 103, 0);
LABEL_9:
    v22 = *(v11 + 16);
    v23 = v12;
    v24 = v11;
    v25 = 0;
LABEL_10:

    return v22(v24, v25, v23);
  }

  v13 = DictionaryOfClasses;
  v14 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v9, @"CMErrorMessage");
  v16 = objc_msgSend_objectForKeyedSubscript_(v13, v15, @"CMIndoorOutdoorStateKey");
  if (v14)
  {
    v11 = *(a1 + 32);
    v19 = MEMORY[0x1E696ABC0];
    v20 = objc_msgSend_intValue(v14, v17, v18);
    v12 = objc_msgSend_errorWithDomain_code_userInfo_(v19, v21, @"CMErrorDomain", v20, 0);
    goto LABEL_9;
  }

  v25 = v16;
  if (v16)
  {
    v24 = *(a1 + 32);
    v22 = *(v24 + 16);
    v23 = 0;
    goto LABEL_10;
  }

  if (qword_1EAFE2A78 != -1)
  {
    dispatch_once(&qword_1EAFE2A78, &unk_1F0E27E20);
  }

  v27 = qword_1EAFE2A80;
  if (os_log_type_enabled(qword_1EAFE2A80, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v27, OS_LOG_TYPE_FAULT, "IndoorOutdoor, Unable to parse query.", buf, 2u);
  }

  v28 = sub_19B420058();
  if ((*(v28 + 160) & 0x80000000) == 0 || (*(v28 + 164) & 0x80000000) == 0 || (*(v28 + 168) & 0x80000000) == 0 || *(v28 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2A78 != -1)
    {
      dispatch_once(&qword_1EAFE2A78, &unk_1F0E27E20);
    }

    v34[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2A80, 17, "IndoorOutdoor, Unable to parse query.", v34, 2);
    v31 = v30;
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CMIndoorOutdoorManagerInternal _lastKnownIndoorOutdoorStateWithHandler:]_block_invoke", "CoreLocation: %s\n", v30);
    if (v31 != buf)
    {
      free(v31);
    }
  }

  v32 = *(a1 + 32);
  v33 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v29, @"CMErrorDomain", 103, 0);
  return (*(v32 + 16))(v32, 0, v33);
}

os_log_t sub_19B65BCE0()
{
  result = os_log_create("com.apple.locationd.Motion", "IndoorOutdoor");
  qword_1EAFE2A80 = result;
  return result;
}

void *sub_19B65BD7C(void *a1, char *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F0E2AD08;
  sub_19B65BDD8((a1 + 3), a2);
  return a1;
}

uint64_t sub_19B65BDD8(uint64_t a1, char *a2)
{
  sub_19B428B50(__p, a2);
  MEMORY[0x19EAE71E0](a1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_19B65BE28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B65BE44()
{
  result = sub_19B421620();
  if ((result & 0x400) != 0)
  {
    operator new();
  }

  return result;
}

void sub_19B65BEEC(_Unwind_Exception *a1)
{
  sub_19B674784(v1);
  MEMORY[0x19EAE76F0](v1, v2);
  _Unwind_Resume(a1);
}

void sub_19B65BF14(uint64_t a1, int a2, uint64_t a3)
{
  v23 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2988 != -1)
  {
    dispatch_once(&qword_1EAFE2988, &unk_1F0E27CE0);
  }

  v6 = qword_1EAFE2990;
  if (os_log_type_enabled(qword_1EAFE2990, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67240448;
    v20 = a2;
    v21 = 2050;
    v22 = a3;
    _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_DEBUG, "NumberOfSpectatorsChanged,notification,%{public}d,num,%{public}zu", buf, 0x12u);
  }

  v7 = sub_19B420058();
  if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2988 != -1)
    {
      dispatch_once(&qword_1EAFE2988, &unk_1F0E27CE0);
    }

    v15 = 67240448;
    v16 = a2;
    v17 = 2050;
    v18 = a3;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2990, 2, "NumberOfSpectatorsChanged,notification,%{public}d,num,%{public}zu", &v15, 18);
    v9 = v8;
    sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLMagicMountNotifier::numberOfSpectatorsChanged(int, size_t)", "CoreLocation: %s\n", v8);
    if (v9 != buf)
    {
      free(v9);
    }
  }

  if (a2)
  {
    if (qword_1EAFE2988 != -1)
    {
      dispatch_once(&qword_1EAFE2988, &unk_1F0E27CE0);
    }

    v10 = qword_1EAFE2990;
    if (os_log_type_enabled(qword_1EAFE2990, OS_LOG_TYPE_FAULT))
    {
      *buf = 67240192;
      v20 = a2;
      _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_FAULT, "Unrecognized notification,%{public}d", buf, 8u);
    }

    v11 = sub_19B420058();
    if ((*(v11 + 160) & 0x80000000) == 0 || (*(v11 + 164) & 0x80000000) == 0 || (*(v11 + 168) & 0x80000000) == 0 || *(v11 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2988 != -1)
      {
        dispatch_once(&qword_1EAFE2988, &unk_1F0E27CE0);
      }

      v15 = 67240192;
      v16 = a2;
      LODWORD(v14) = 8;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2990, 17, "Unrecognized notification,%{public}d", &v15, v14);
      v13 = v12;
      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual void CLMagicMountNotifier::numberOfSpectatorsChanged(int, size_t)", "CoreLocation: %s\n", v12);
      if (v13 != buf)
      {
        free(v13);
      }
    }
  }

  else if (sub_19B744690(a1 + 32))
  {
    sub_19B4238F4(*(a1 + 40), a3 != 0);
  }
}

void sub_19B65C274(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2988 != -1)
  {
    dispatch_once(&qword_1EAFE2988, &unk_1F0E27CE0);
  }

  v3 = qword_1EAFE2990;
  if (os_log_type_enabled(qword_1EAFE2990, OS_LOG_TYPE_INFO))
  {
    v4 = *(a2 + 1);
    *buf = 67240192;
    v11 = v4;
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_INFO, "pong,%{public}u", buf, 8u);
  }

  v5 = sub_19B420058();
  if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2988 != -1)
    {
      dispatch_once(&qword_1EAFE2988, &unk_1F0E27CE0);
    }

    v6 = *(a2 + 1);
    v9[0] = 67240192;
    v9[1] = v6;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2990, 1, "pong,%{public}u", v9, 8);
    v8 = v7;
    sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLMagicMountNotifier::visitPong(const CMMagicMountReport::Pong *)", "CoreLocation: %s\n", v7);
    if (v8 != buf)
    {
      free(v8);
    }
  }
}

uint64_t sub_19B65C444(uint64_t a1, unsigned __int8 *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2988 != -1)
  {
    dispatch_once(&qword_1EAFE2988, &unk_1F0E27CE0);
  }

  v4 = qword_1EAFE2990;
  if (os_log_type_enabled(qword_1EAFE2990, OS_LOG_TYPE_DEBUG))
  {
    v5 = a2[1];
    v6 = a2[2];
    v7 = a2[3];
    v8 = *(a1 + 64);
    v9 = mach_absolute_time();
    *buf = 67241216;
    *&buf[4] = v5;
    LOWORD(v30) = 1026;
    *(&v30 + 2) = v6;
    HIWORD(v30) = 1026;
    v31 = v7;
    v32 = 2050;
    v33 = v8;
    v34 = 2050;
    v35 = sub_19B41E070(v9);
    _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_DEBUG, "Report,mountStatus,%{public}u,APAwake,%{public}u,isSimulated,%{public}u,timestamp,%{public}lf,now,%{public}lf", buf, 0x28u);
  }

  v10 = sub_19B420058();
  if (*(v10 + 160) > 1 || *(v10 + 164) > 1 || *(v10 + 168) > 1 || *(v10 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2988 != -1)
    {
      dispatch_once(&qword_1EAFE2988, &unk_1F0E27CE0);
    }

    v11 = qword_1EAFE2990;
    v12 = a2[1];
    v13 = a2[2];
    v14 = a2[3];
    v15 = *(a1 + 64);
    v16 = mach_absolute_time();
    v20[0] = 67241216;
    v20[1] = v12;
    v21 = 1026;
    v22 = v13;
    v23 = 1026;
    v24 = v14;
    v25 = 2050;
    v26 = v15;
    v27 = 2050;
    v28 = sub_19B41E070(v16);
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v11, 2, "Report,mountStatus,%{public}u,APAwake,%{public}u,isSimulated,%{public}u,timestamp,%{public}lf,now,%{public}lf", v20, 40);
    v18 = v17;
    sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLMagicMountNotifier::visitMagicMountState(const CMMagicMountReport::MagicMountState *)", "CoreLocation: %s\n", v17);
    if (v18 != buf)
    {
      free(v18);
    }
  }

  v30 = 0;
  *buf = *(a1 + 64);
  LOBYTE(v30) = a2[1];
  *(&v30 + 1) = *(a2 + 1);
  return sub_19B41DF08(a1, 0, buf, 16);
}

void *sub_19B65C6DC(void *a1)
{
  sub_19B65C7D8(a1 + 4);

  return sub_19B674784(a1);
}

void sub_19B65C718(void *a1)
{
  sub_19B65C7D8(a1 + 4);
  sub_19B674784(a1);

  JUMPOUT(0x19EAE76F0);
}

void *sub_19B65C768(void *a1)
{
  v1 = a1 - 4;
  sub_19B65C7D8(a1);

  return sub_19B674784(v1);
}

os_log_t sub_19B65C7A8()
{
  result = os_log_create("com.apple.locationd.Motion", "MagicMount");
  qword_1EAFE2990 = result;
  return result;
}

void *sub_19B65C7D8(void *a1)
{
  *a1 = &unk_1F0E32238;
  v2 = a1[3];
  a1[3] = 0;
  if (v2)
  {
    v3 = sub_19B6B1B7C(v2);
    MEMORY[0x19EAE76F0](v3, 0xA0C40D4F6A234);
  }

  v4 = a1[2];
  if (v4)
  {
    sub_19B41FFEC(v4);
  }

  return a1;
}

void sub_19B65C84C(void *a1)
{
  sub_19B65C7D8(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B65C88C(void *a1)
{
  *a1 = &unk_1F0E321E8;
  sub_19B65C92C(a1);
  v2 = a1[27];
  if (v2)
  {
    sub_19B41FFEC(v2);
  }

  return sub_19B760468(a1);
}

void sub_19B65C8F4(void *a1)
{
  sub_19B65C88C(a1);

  JUMPOUT(0x19EAE76F0);
}

void sub_19B65C92C(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  *buf = 0;
  sub_19B43D7EC(a1, buf);
  if (*(a1 + 202) == 1)
  {
    *(a1 + 202) = 0;
    v2 = *(a1 + 208);
    *(v2 + 181) = 0;
    sub_19B4441E8(v2);
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E29360);
    }

    v3 = off_1ED71C808;
    if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEFAULT))
    {
      v4 = sub_19B43EE18(*(a1 + 208));
      v5 = *(*(a1 + 208) + 16);
      v6 = *(*(a1 + 208) + 20);
      *buf = 134349568;
      *&buf[4] = v4;
      v21 = 1026;
      v22 = v6;
      v23 = 1026;
      v24 = v5;
      _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEFAULT, "[CLSensorFusionServiceSPU] FastPath closed,serviceRef,%{public}p,usagePage,%{public}d,usage,%{public}d", buf, 0x18u);
    }

    v7 = sub_19B420058();
    if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E29360);
      }

      v8 = off_1ED71C808;
      v9 = sub_19B43EE18(*(a1 + 208));
      v10 = *(*(a1 + 208) + 16);
      v11 = *(*(a1 + 208) + 20);
      v14 = 134349568;
      v15 = v9;
      v16 = 1026;
      v17 = v11;
      v18 = 1026;
      v19 = v10;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v8, 0, "[CLSensorFusionServiceSPU] FastPath closed,serviceRef,%{public}p,usagePage,%{public}d,usage,%{public}d", &v14, 24);
      v13 = v12;
      sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLSensorFusionServiceSPU::stop()", "CoreLocation: %s\n", v12);
      if (v13 != buf)
      {
        free(v13);
      }
    }
  }
}

double sub_19B65CB64(uint64_t a1, uint64_t a2, float32x4_t a3)
{
  v5 = *(a1 + 208);
  if (v5)
  {
    if (*(a1 + 202) == 1 && (v6 = (*(*v5 + 32))(v5, a3)) != 0)
    {
      v8 = v6;
      sub_19B41E194(v6, a2, v7);

      CFRelease(v8);
    }

    else
    {
      os_unfair_lock_lock((a1 + 88));
      v10 = *(a1 + 96);
      v11 = *(a1 + 128);
      *(a2 + 16) = *(a1 + 112);
      *(a2 + 32) = v11;
      *a2 = v10;
      v12 = *(a1 + 144);
      v13 = *(a1 + 160);
      v14 = *(a1 + 176);
      *(a2 + 96) = *(a1 + 192);
      *(a2 + 64) = v13;
      *(a2 + 80) = v14;
      *(a2 + 48) = v12;

      os_unfair_lock_unlock((a1 + 88));
    }
  }

  else
  {
    *a2 = 0xBFF0000000000000;
    v15 = 0uLL;
    sub_19B41E130(&v15, a3);
    result = *v15.i64;
    *(a2 + 8) = v15;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 96) = 0;
    *(a2 + 36) = 0;
    *(a2 + 52) = 0;
    *(a2 + 44) = 0;
    *(a2 + 80) = 0;
    *(a2 + 88) = 0;
  }

  return result;
}

os_log_t sub_19B65CC9C()
{
  result = os_log_create("com.apple.locationd.Motion", "AOP");
  qword_1EAFE2838 = result;
  return result;
}

void sub_19B65CCEC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F0E2AD40;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x19EAE76F0);
}

CFTypeRef sub_19B65DB98(const char *a1, uint64_t a2)
{
  v3 = IOServiceNameMatching(a1);
  if (!v3)
  {
    return 0;
  }

  MatchingService = IOServiceGetMatchingService(*MEMORY[0x1E696CD60], v3);
  if (!MatchingService)
  {
    return 0;
  }

  v6 = MatchingService;
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v5, a2);
  CFProperty = IORegistryEntryCreateCFProperty(v6, v7, *MEMORY[0x1E695E480], 0);
  IOObjectRelease(v6);
  return CFProperty;
}

const void *sub_19B65DC20()
{
  v14 = *MEMORY[0x1E69E9840];
  v0 = sub_19B65DB98("compass", "compass-calibration");
  if (!v0)
  {
    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E29380);
    }

    v7 = qword_1EAFE2888;
    if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_INFO, "Invalid cpas data.", buf, 2u);
    }

    v8 = sub_19B420058();
    if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2880 != -1)
      {
        dispatch_once(&qword_1EAFE2880, &unk_1F0E29380);
      }

      v12[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2888, 1, "Invalid cpas data.", v12, 2);
      v10 = v9;
      sub_19B6BB7CC("Generic", 1, 0, 2, "CFDataRef CLMagnetometerCoexistenceLocal::copyCompassCalibrationData()", "CoreLocation: %s\n", v9);
      if (v10 != buf)
      {
        free(v10);
      }
    }

    return 0;
  }

  v1 = v0;
  v2 = CFGetTypeID(v0);
  if (v2 != CFDataGetTypeID())
  {
    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E29380);
    }

    v3 = qword_1EAFE2888;
    if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_INFO, "The cpas data is not a CFData type.", buf, 2u);
    }

    v4 = sub_19B420058();
    if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2880 != -1)
      {
        dispatch_once(&qword_1EAFE2880, &unk_1F0E29380);
      }

      v12[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2888, 1, "The cpas data is not a CFData type.", v12, 2);
      v6 = v5;
      sub_19B6BB7CC("Generic", 1, 0, 2, "CFDataRef CLMagnetometerCoexistenceLocal::copyCompassCalibrationData()", "CoreLocation: %s\n", v5);
      if (v6 != buf)
      {
        free(v6);
      }
    }

    CFRelease(v1);
    return 0;
  }

  return v1;
}

BOOL sub_19B65DF5C()
{
  v60 = *MEMORY[0x1E69E9840];
  v0 = sub_19B65DC20();
  if (v0)
  {
    v1 = v0;
    BytePtr = CFDataGetBytePtr(v0);
    if (!BytePtr)
    {
      if (qword_1EAFE2880 != -1)
      {
        dispatch_once(&qword_1EAFE2880, &unk_1F0E29380);
      }

      v12 = qword_1EAFE2888;
      if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v12, OS_LOG_TYPE_DEFAULT, "#Warning Cpas pointer is NULL.", buf, 2u);
      }

      v13 = sub_19B420058();
      if (*(v13 + 160) <= 1 && *(v13 + 164) <= 1 && *(v13 + 168) <= 1 && !*(v13 + 152))
      {
        goto LABEL_58;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2880 != -1)
      {
        dispatch_once(&qword_1EAFE2880, &unk_1F0E29380);
      }

      LOWORD(v52) = 0;
      v14 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2888, 0, "#Warning Cpas pointer is NULL.", &v52, 2);
      v16 = v15;
      sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CLMagnetometerCoexistenceLocal::deviceStillHasOriginalCamera()", "CoreLocation: %s\n", v14);
      goto LABEL_56;
    }

    v3 = BytePtr;
    Length = CFDataGetLength(v1);
    if (Length >= 2)
    {
      v5 = *v3;
      if (Length == 76 && v5 == 5)
      {
        v6 = 5;
      }

      else
      {
        if (Length != 76 || v5 != 6)
        {
          if (qword_1EAFE2880 != -1)
          {
            dispatch_once(&qword_1EAFE2880, &unk_1F0E29380);
          }

          v34 = qword_1EAFE2888;
          if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_FAULT))
          {
            *buf = 67109120;
            LODWORD(v57) = v5;
            _os_log_impl(&dword_19B41C000, v34, OS_LOG_TYPE_FAULT, "Unexpected cpas version: %u.", buf, 8u);
          }

          v35 = sub_19B420058();
          if ((*(v35 + 160) & 0x80000000) != 0 && (*(v35 + 164) & 0x80000000) != 0 && (*(v35 + 168) & 0x80000000) != 0 && !*(v35 + 152))
          {
            goto LABEL_58;
          }

          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2880 != -1)
          {
            dispatch_once(&qword_1EAFE2880, &unk_1F0E29380);
          }

          v32 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2888, 17, "Unexpected cpas version: %u.", &v52);
LABEL_55:
          v16 = v31;
          sub_19B6BB7CC("Generic", 1, 0, 0, "BOOL CLMagnetometerCoexistenceLocal::deviceStillHasOriginalCamera()", "CoreLocation: %s\n", v32);
LABEL_56:
          if (v16 != buf)
          {
            free(v16);
          }

LABEL_58:
          v18 = 0;
          goto LABEL_59;
        }

        v6 = 8;
      }

      v17 = CFDataCreate(*MEMORY[0x1E695E480], v3 + 2, v6);
      if (v17)
      {
        v18 = v17;
        v19 = CFDataGetBytePtr(v17);
        if (v19)
        {
          v20 = v19;
          v21 = sub_19B65DB98("AppleH4CamIn", "BackCameraSerialNumber");
          v22 = v21;
          if (!v21 || (v23 = CFGetTypeID(v21), v23 != CFDataGetTypeID()))
          {
            if (qword_1EAFE2880 != -1)
            {
              dispatch_once(&qword_1EAFE2880, &unk_1F0E29380);
            }

            v36 = qword_1EAFE2888;
            if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_FAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_19B41C000, v36, OS_LOG_TYPE_FAULT, "Invalid back camera serial number data.", buf, 2u);
            }

            v37 = sub_19B420058();
            if ((*(v37 + 160) & 0x80000000) == 0 || (*(v37 + 164) & 0x80000000) == 0 || (*(v37 + 168) & 0x80000000) == 0 || *(v37 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1EAFE2880 != -1)
              {
                dispatch_once(&qword_1EAFE2880, &unk_1F0E29380);
              }

              LOWORD(v52) = 0;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2888, 17, "Invalid back camera serial number data.", &v52, 2);
              v39 = v38;
              sub_19B6BB7CC("Generic", 1, 0, 0, "BOOL CLMagnetometerCoexistenceLocal::deviceStillHasOriginalCamera()", "CoreLocation: %s\n", v38);
              if (v39 != buf)
              {
                free(v39);
              }
            }

            v11 = 0;
LABEL_86:
            CFRelease(v1);
            if (!v22)
            {
LABEL_61:
              if (v18)
              {
                CFRelease(v18);
              }

              return v11;
            }

LABEL_60:
            CFRelease(v22);
            goto LABEL_61;
          }

          if (CFDataGetLength(v22) == v6)
          {
            v24 = CFDataGetBytePtr(v22);
            if (v24)
            {
              if (*v20 == *v24)
              {
                v25 = 1;
                do
                {
                  v26 = v25;
                  if (v6 == v25)
                  {
                    break;
                  }

                  v27 = v20[v25];
                  v28 = v24[v25++];
                }

                while (v27 == v28);
                v11 = v26 >= v6;
                goto LABEL_86;
              }

LABEL_123:
              CFRelease(v1);
              v11 = 0;
              goto LABEL_60;
            }

            if (qword_1EAFE2880 != -1)
            {
              dispatch_once(&qword_1EAFE2880, &unk_1F0E29380);
            }

            v49 = qword_1EAFE2888;
            if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_FAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_19B41C000, v49, OS_LOG_TYPE_FAULT, "Current serial number data is NULL.", buf, 2u);
            }

            v50 = sub_19B420058();
            if ((*(v50 + 160) & 0x80000000) != 0 && (*(v50 + 164) & 0x80000000) != 0 && (*(v50 + 168) & 0x80000000) != 0 && !*(v50 + 152))
            {
              goto LABEL_123;
            }

            bzero(buf, 0x65CuLL);
            if (qword_1EAFE2880 != -1)
            {
              dispatch_once(&qword_1EAFE2880, &unk_1F0E29380);
            }

            LOWORD(v52) = 0;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2888, 17, "Current serial number data is NULL.", &v52, 2);
            v48 = v51;
            sub_19B6BB7CC("Generic", 1, 0, 0, "BOOL CLMagnetometerCoexistenceLocal::deviceStillHasOriginalCamera()", "CoreLocation: %s\n", v51);
            if (v48 == buf)
            {
              goto LABEL_123;
            }
          }

          else
          {
            if (qword_1EAFE2880 != -1)
            {
              dispatch_once(&qword_1EAFE2880, &unk_1F0E29380);
            }

            v44 = qword_1EAFE2888;
            if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_FAULT))
            {
              *buf = 134218240;
              v57 = CFDataGetLength(v22);
              v58 = 2048;
              v59 = v6;
              _os_log_impl(&dword_19B41C000, v44, OS_LOG_TYPE_FAULT, "Incorrect back camera serial number length. Actual length %ld. Expected length %lu.", buf, 0x16u);
            }

            v45 = sub_19B420058();
            if ((*(v45 + 160) & 0x80000000) != 0 && (*(v45 + 164) & 0x80000000) != 0 && (*(v45 + 168) & 0x80000000) != 0 && !*(v45 + 152))
            {
              goto LABEL_123;
            }

            bzero(buf, 0x65CuLL);
            if (qword_1EAFE2880 != -1)
            {
              dispatch_once(&qword_1EAFE2880, &unk_1F0E29380);
            }

            v46 = qword_1EAFE2888;
            v52 = 134218240;
            v53 = CFDataGetLength(v22);
            v54 = 2048;
            v55 = v6;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v46, 17, "Incorrect back camera serial number length. Actual length %ld. Expected length %lu.", &v52, 22);
            v48 = v47;
            sub_19B6BB7CC("Generic", 1, 0, 0, "BOOL CLMagnetometerCoexistenceLocal::deviceStillHasOriginalCamera()", "CoreLocation: %s\n", v47);
            if (v48 == buf)
            {
              goto LABEL_123;
            }
          }

          free(v48);
          goto LABEL_123;
        }

        if (qword_1EAFE2880 != -1)
        {
          dispatch_once(&qword_1EAFE2880, &unk_1F0E29380);
        }

        v40 = qword_1EAFE2888;
        if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v40, OS_LOG_TYPE_FAULT, "Original serial number pointer is NULL.", buf, 2u);
        }

        v41 = sub_19B420058();
        if ((*(v41 + 160) & 0x80000000) == 0 || (*(v41 + 164) & 0x80000000) == 0 || (*(v41 + 168) & 0x80000000) == 0 || *(v41 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2880 != -1)
          {
            dispatch_once(&qword_1EAFE2880, &unk_1F0E29380);
          }

          LOWORD(v52) = 0;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2888, 17, "Original serial number pointer is NULL.", &v52, 2);
          v43 = v42;
          sub_19B6BB7CC("Generic", 1, 0, 0, "BOOL CLMagnetometerCoexistenceLocal::deviceStillHasOriginalCamera()", "CoreLocation: %s\n", v42);
          if (v43 != buf)
          {
            free(v43);
          }
        }

LABEL_59:
        v11 = 0;
        v22 = v1;
        goto LABEL_60;
      }
    }

    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E29380);
    }

    v29 = qword_1EAFE2888;
    if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v29, OS_LOG_TYPE_FAULT, "Original serial number data is NULL.", buf, 2u);
    }

    v30 = sub_19B420058();
    if ((*(v30 + 160) & 0x80000000) != 0 && (*(v30 + 164) & 0x80000000) != 0 && (*(v30 + 168) & 0x80000000) != 0 && !*(v30 + 152))
    {
      goto LABEL_58;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E29380);
    }

    v32 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2888, 17, "Original serial number data is NULL.");
    goto LABEL_55;
  }

  if (qword_1EAFE2880 != -1)
  {
    dispatch_once(&qword_1EAFE2880, &unk_1F0E29380);
  }

  v7 = qword_1EAFE2888;
  if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_DEFAULT, "#Warning Cpas data is NULL.", buf, 2u);
  }

  v8 = sub_19B420058();
  if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E29380);
    }

    LOWORD(v52) = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2888, 0, "#Warning Cpas data is NULL.", &v52, 2);
    v10 = v9;
    sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CLMagnetometerCoexistenceLocal::deviceStillHasOriginalCamera()", "CoreLocation: %s\n", v9);
    if (v10 != buf)
    {
      free(v10);
    }
  }

  return 0;
}

uint64_t sub_19B65EB4C()
{
  v22 = *MEMORY[0x1E69E9840];
  v0 = sub_19B65DB98("AppleH4CamIn", "BackCameraModuleFocusActuatorID");
  v1 = v0;
  HIDWORD(v14) = -1;
  if (v0 && (v2 = CFGetTypeID(v0), v2 == CFNumberGetTypeID()))
  {
    if (CFNumberGetType(v1) == kCFNumberSInt32Type)
    {
      if (!CFNumberGetValue(v1, kCFNumberSInt32Type, &v14 + 4))
      {
        HIDWORD(v14) = -1;
      }
    }

    else
    {
      if (qword_1EAFE2880 != -1)
      {
        dispatch_once(&qword_1EAFE2880, &unk_1F0E29380);
      }

      v9 = qword_1EAFE2888;
      if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_INFO))
      {
        *buf = 67109376;
        Type = CFNumberGetType(v1);
        v20 = 1024;
        v21 = 3;
        _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_INFO, "VCM actuator ID data type %d does not match expected type %d", buf, 0xEu);
      }

      v10 = sub_19B420058();
      if (*(v10 + 160) > 1 || *(v10 + 164) > 1 || *(v10 + 168) > 1 || *(v10 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2880 != -1)
        {
          dispatch_once(&qword_1EAFE2880, &unk_1F0E29380);
        }

        v11 = qword_1EAFE2888;
        v15[0] = 67109376;
        v15[1] = CFNumberGetType(v1);
        v16 = 1024;
        v17 = 3;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v11, 1, "VCM actuator ID data type %d does not match expected type %d", v15, 14);
        v13 = v12;
        sub_19B6BB7CC("Generic", 1, 0, 2, "NSNumber *CLMagnetometerCoexistenceLocal::cameraVcmId()", "CoreLocation: %s\n", v12);
        if (v13 != buf)
        {
          free(v13);
        }
      }
    }
  }

  else
  {
    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E29380);
    }

    v3 = qword_1EAFE2888;
    if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_INFO, "Bailing while checking VCM actuator ID.", buf, 2u);
    }

    v4 = sub_19B420058();
    if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2880 != -1)
      {
        dispatch_once(&qword_1EAFE2880, &unk_1F0E29380);
      }

      LOWORD(v15[0]) = 0;
      LODWORD(v14) = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2888, 1, "Bailing while checking VCM actuator ID.", v15, v14);
      v6 = v5;
      sub_19B6BB7CC("Generic", 1, 0, 2, "NSNumber *CLMagnetometerCoexistenceLocal::cameraVcmId()", "CoreLocation: %s\n", v5);
      if (v6 != buf)
      {
        free(v6);
      }
    }

    if (!v1)
    {
      return 0;
    }
  }

  CFRelease(v1);
  if (HIDWORD(v14) != -1)
  {
    return objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v7, HIDWORD(v14));
  }

  return 0;
}

id sub_19B65EF28()
{
  v23 = *MEMORY[0x1E69E9840];
  v0 = sub_19B65DC20();
  if (v0)
  {
    v1 = v0;
    BytePtr = CFDataGetBytePtr(v0);
    if (BytePtr)
    {
      v3 = BytePtr;
      Length = CFDataGetLength(v1);
      if (Length >= 2)
      {
        v7 = Length;
        v8 = *v3;
        v9 = objc_msgSend_mutableCopy(v1, v5, v6);
        v11 = v9;
        if (v9)
        {
          if (v7 == 76 && v8 == 5)
          {
            objc_msgSend_resetBytesInRange_(v9, v10, 2, 5);
          }

          else if (v7 == 76 && v8 == 6)
          {
            objc_msgSend_resetBytesInRange_(v9, v10, 2, 8);
          }
        }

        goto LABEL_34;
      }
    }

    else
    {
      if (qword_1EAFE2880 != -1)
      {
        dispatch_once(&qword_1EAFE2880, &unk_1F0E29380);
      }

      v16 = qword_1EAFE2888;
      if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v16, OS_LOG_TYPE_DEFAULT, "#Warning CPAS pointer is NULL.", buf, 2u);
      }

      v17 = sub_19B420058();
      if (*(v17 + 160) > 1 || *(v17 + 164) > 1 || *(v17 + 168) > 1 || *(v17 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2880 != -1)
        {
          dispatch_once(&qword_1EAFE2880, &unk_1F0E29380);
        }

        v21[0] = 0;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2888, 0, "#Warning CPAS pointer is NULL.", v21, 2);
        v19 = v18;
        sub_19B6BB7CC("Generic", 1, 0, 2, "NSData *CLMagnetometerCoexistenceLocal::sanitizedCompassCalibrationData()", "CoreLocation: %s\n", v18);
        if (v19 != buf)
        {
          free(v19);
        }
      }
    }

    v11 = 0;
LABEL_34:
    CFRelease(v1);
    return v11;
  }

  if (qword_1EAFE2880 != -1)
  {
    dispatch_once(&qword_1EAFE2880, &unk_1F0E29380);
  }

  v12 = qword_1EAFE2888;
  if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v12, OS_LOG_TYPE_DEFAULT, "#Warning CPAS data is NULL.", buf, 2u);
  }

  v13 = sub_19B420058();
  if (*(v13 + 160) > 1 || *(v13 + 164) > 1 || *(v13 + 168) > 1 || *(v13 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E29380);
    }

    v21[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2888, 0, "#Warning CPAS data is NULL.", v21, 2);
    v15 = v14;
    sub_19B6BB7CC("Generic", 1, 0, 2, "NSData *CLMagnetometerCoexistenceLocal::sanitizedCompassCalibrationData()", "CoreLocation: %s\n", v14);
    if (v15 != buf)
    {
      free(v15);
    }
  }

  return 0;
}

void sub_19B65F380(void *a1)
{
  sub_19B74FAE8(a1);

  JUMPOUT(0x19EAE76F0);
}

double sub_19B65F3B8(uint64_t a1, int a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a2 == 1)
  {
    *(a1 + 96) = *a3;
    sub_19B65F5BC(a1);
    return *(a1 + 96);
  }

  else if (a2)
  {
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E28100);
    }

    v6 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_FAULT))
    {
      *buf = 67240192;
      v12 = a2;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_FAULT, "[AccessoryActivity] Unrecognized update interval notification %{public}d", buf, 8u);
    }

    v7 = sub_19B420058();
    if ((*(v7 + 160) & 0x80000000) == 0 || (*(v7 + 164) & 0x80000000) == 0 || (*(v7 + 168) & 0x80000000) == 0 || (result = 0.0, *(v7 + 152)))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E28100);
      }

      v10[0] = 67240192;
      v10[1] = a2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7C8, 17, "[AccessoryActivity] Unrecognized update interval notification %{public}d", v10, 8);
      v9 = v8;
      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual CFTimeInterval CLAccessoryActivity::minimumUpdateIntervalChanged(int, const CFTimeInterval &)", "CoreLocation: %s\n", v8);
      if (v9 != buf)
      {
        free(v9);
      }

      return 0.0;
    }
  }

  else
  {
    *(a1 + 88) = *a3;
    sub_19B65F5BC(a1);
    return *(a1 + 88);
  }

  return result;
}

uint64_t sub_19B65F5BC(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  sub_19B750AC4(a1);
  v3 = *(a1 + 88);
  v2 = *(a1 + 96);
  if (v3 + v2 > 0.0)
  {
    *(a1 + 29) = 0;
  }

  if (v3 <= 0.0)
  {
    v4 = 0.0;
    if (v2 <= 0.0)
    {
      goto LABEL_14;
    }
  }

  else if (v2 <= 0.0)
  {
    v2 = v3;
  }

  else if (v3 < v2)
  {
    v2 = v3;
  }

  if (v2 > 0.0)
  {
    v4 = fmax(v2, 1.0);
    goto LABEL_15;
  }

  v4 = v2;
LABEL_14:
  *(a1 + 104) = 514;
LABEL_15:
  if (qword_1ED71C7B8 != -1)
  {
    dispatch_once(&qword_1ED71C7B8, &unk_1F0E28100);
  }

  v5 = qword_1ED71C7C8;
  if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    v15 = v4;
    _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_INFO, "[AccessoryActivity] Setting update interval to %{public}f", buf, 0xCu);
  }

  v6 = sub_19B420058();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E28100);
    }

    v12 = 134349056;
    v13 = v4;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7C8, 1, "[AccessoryActivity] Setting update interval to %{public}f", &v12, 12);
    v8 = v7;
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLAccessoryActivity::updateReportInterval()", "CoreLocation: %s\n", v7);
    if (v8 != buf)
    {
      free(v8);
    }
  }

  v9 = rint(v4 * 1000000.0);
  if (v4 < 0.0)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  return sub_19B4238F4(*(a1 + 32), v10);
}

void sub_19B65F814(uint64_t a1, int a2)
{
  sub_19B750848(a1, a2);
  if ((a2 | 2) == 2)
  {
    v4 = *(*a1 + 48);

    v4(a1);
  }
}

uint64_t sub_19B65F888(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = sub_19B74FBF4(a1);
  HIDWORD(v10) = v2;
  if (qword_1ED71C7B8 != -1)
  {
    dispatch_once(&qword_1ED71C7B8, &unk_1F0E28100);
  }

  v3 = qword_1ED71C7C8;
  if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v14 = sub_19B74FBA4(v2);
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEFAULT, "[AccessoryActivity] sending accessory status to clients: %{public}@", buf, 0xCu);
  }

  v4 = sub_19B420058();
  if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E28100);
    }

    v5 = qword_1ED71C7C8;
    v11 = 138543362;
    v12 = sub_19B74FBA4(v2);
    LODWORD(v10) = 12;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v5, 0, "[AccessoryActivity] sending accessory status to clients: %{public}@", &v11, v10);
    v7 = v6;
    sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLAccessoryActivity::sendAccessoryStatus()", "CoreLocation: %s\n", v6);
    if (v7 != buf)
    {
      free(v7);
    }
  }

  v8 = mach_absolute_time();
  sub_19B41E070(v8);
  return sub_19B41DF08(a1, 2, &v10 + 4, 4);
}

void sub_19B65FA94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v76 = *MEMORY[0x1E69E9840];
  DataValue = IOHIDEventGetDataValue();
  if (DataValue)
  {
    v6 = DataValue;
    IntegerValue = IOHIDEventGetIntegerValue();
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E28100);
    }

    v8 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68157955;
      *v69 = IntegerValue;
      *&v69[4] = 2097;
      *&v69[6] = v6;
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_DEBUG, "[AccessoryActivity] payload,{%{private}.*P}", buf, 0x12u);
    }

    v9 = sub_19B420058();
    if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E28100);
      }

      *v61 = 68157955;
      *&v61[4] = IntegerValue;
      *&v61[8] = 2097;
      *&v61[10] = v6;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7C8, 2, "[AccessoryActivity] payload,{%{private}.*P}", v61, 18);
      v11 = v10;
      sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLAccessoryActivity::onEventData(void *, void *, IOHIDEventRef)", "CoreLocation: %s\n", v10);
      if (v11 != buf)
      {
        free(v11);
      }
    }

    v12 = *v6;
    if (!*v6 && IntegerValue == 12)
    {
      v13 = *(v6 + 1);
      *&v59[7] = *(v6 + 2);
      *v59 = v13;
      TimeStamp = IOHIDEventGetTimeStamp();
      *&v59[11] = sub_19B41E070(TimeStamp);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E28100);
      }

      v15 = qword_1ED71C7C8;
      if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_INFO))
      {
        if (v59[0] > 4uLL)
        {
          v16 = @"?";
        }

        else
        {
          v16 = off_1E7533BA0[v59[0]];
        }

        *buf = 138543874;
        *v69 = v16;
        *&v69[8] = 1026;
        *&v69[10] = *&v59[1];
        *&v69[14] = 2050;
        *&v69[16] = *&v59[3];
        _os_log_impl(&dword_19B41C000, v15, OS_LOG_TYPE_INFO, "[AccessoryActivity] Activity,%{public}@,seq,%{public}u,sensorTime,%{public}llu", buf, 0x1Cu);
      }

      v34 = sub_19B420058();
      if (*(v34 + 160) > 1 || *(v34 + 164) > 1 || *(v34 + 168) > 1 || *(v34 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C7B8 != -1)
        {
          dispatch_once(&qword_1ED71C7B8, &unk_1F0E28100);
        }

        if (v59[0] > 4uLL)
        {
          v35 = @"?";
        }

        else
        {
          v35 = off_1E7533BA0[v59[0]];
        }

        *v61 = 138543874;
        *&v61[4] = v35;
        *&v61[12] = 1026;
        *&v61[14] = *&v59[1];
        *&v61[18] = 2050;
        *&v61[20] = *&v59[3];
        LODWORD(v57) = 28;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7C8, 1, "[AccessoryActivity] Activity,%{public}@,seq,%{public}u,sensorTime,%{public}llu", v61, v57);
        v37 = v36;
        sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLAccessoryActivity::onEventData(void *, void *, IOHIDEventRef)", "CoreLocation: %s\n", v36);
        if (v37 != buf)
        {
          free(v37);
        }
      }

      v38 = a1;
      v39 = 0;
      v40 = 19;
LABEL_91:
      sub_19B41DF08(v38, v39, v59, v40);
      return;
    }

    if (v12 == 1 && IntegerValue == 21)
    {
      v21 = *(v6 + 1);
      *&v59[16] = *(v6 + 17);
      *v59 = v21;
      v22 = IOHIDEventGetTimeStamp();
      v60 = sub_19B41E070(v22);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E28100);
      }

      v23 = qword_1ED71C7C8;
      if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_INFO))
      {
        if (v59[0] > 2uLL)
        {
          v24 = @"?";
        }

        else
        {
          v24 = off_1E7533BC8[v59[0]];
        }

        if (v59[1] > 2uLL)
        {
          v41 = @"?";
        }

        else
        {
          v41 = off_1E7533BE0[v59[1]];
        }

        *buf = 138544130;
        *v69 = v24;
        *&v69[8] = 2114;
        *&v69[10] = v41;
        *&v69[18] = 1026;
        *&v69[20] = *&v59[2];
        v70 = 2050;
        v71 = *&v59[12];
        _os_log_impl(&dword_19B41C000, v23, OS_LOG_TYPE_INFO, "[AccessoryActivity] SitStand,transition,%{public}@,state,%{public}@,seq,%{public}u,sensorTime,%{public}llu", buf, 0x26u);
      }

      v42 = sub_19B420058();
      if (*(v42 + 160) > 1 || *(v42 + 164) > 1 || *(v42 + 168) > 1 || *(v42 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C7B8 != -1)
        {
          dispatch_once(&qword_1ED71C7B8, &unk_1F0E28100);
        }

        if (v59[0] > 2uLL)
        {
          v43 = @"?";
        }

        else
        {
          v43 = off_1E7533BC8[v59[0]];
        }

        if (v59[1] > 2uLL)
        {
          v44 = @"?";
        }

        else
        {
          v44 = off_1E7533BE0[v59[1]];
        }

        *v61 = 138544130;
        *&v61[4] = v43;
        *&v61[12] = 2114;
        *&v61[14] = v44;
        *&v61[22] = 1026;
        *&v61[24] = *&v59[2];
        v62 = 2050;
        v63 = *&v59[12];
        LODWORD(v57) = 38;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7C8, 1, "[AccessoryActivity] SitStand,transition,%{public}@,state,%{public}@,seq,%{public}u,sensorTime,%{public}llu", v61, v57);
        v46 = v45;
        sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLAccessoryActivity::onEventData(void *, void *, IOHIDEventRef)", "CoreLocation: %s\n", v45);
        if (v46 != buf)
        {
          free(v46);
        }
      }

      v38 = a1;
      v39 = 1;
      v40 = 28;
      goto LABEL_91;
    }

    if (v12 == 2 && IntegerValue == 22)
    {
      v58 = *(v6 + 1);
      v25 = *(v6 + 9);
      v26 = v6[11];
      v27 = v6[12];
      v28 = v6[13];
      v29 = *(v6 + 14);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E28100);
      }

      v30 = qword_1ED71C7C8;
      if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_INFO))
      {
        if (v26 > 4)
        {
          v31 = @"?";
        }

        else
        {
          v31 = off_1E7533BA0[v26];
        }

        if (v27 > 2)
        {
          v47 = @"?";
        }

        else
        {
          v47 = off_1E7533BC8[v27];
        }

        if (v28 > 2)
        {
          v48 = @"?";
        }

        else
        {
          v48 = off_1E7533BE0[v28];
        }

        *buf = 67241474;
        *v69 = v25;
        *&v69[4] = 2050;
        *&v69[6] = v58;
        *&v69[14] = 2114;
        *&v69[16] = v31;
        v70 = 2114;
        v71 = v47;
        v72 = 2114;
        v73 = v48;
        v74 = 2050;
        v75 = v29;
        _os_log_impl(&dword_19B41C000, v30, OS_LOG_TYPE_INFO, "[AccessoryActivity] seq,%{public}u,sensorTime,%{public}llu,activity,%{public}@,transition,%{public}@,state,%{public}@,transitionTime,%{public}llu", buf, 0x3Au);
      }

      v49 = sub_19B420058();
      if (*(v49 + 160) > 1 || *(v49 + 164) > 1 || *(v49 + 168) > 1 || *(v49 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C7B8 != -1)
        {
          dispatch_once(&qword_1ED71C7B8, &unk_1F0E28100);
        }

        if (v26 > 4)
        {
          v50 = @"?";
        }

        else
        {
          v50 = off_1E7533BA0[v26];
        }

        if (v27 > 2)
        {
          v51 = @"?";
        }

        else
        {
          v51 = off_1E7533BC8[v27];
        }

        if (v28 > 2)
        {
          v52 = @"?";
        }

        else
        {
          v52 = off_1E7533BE0[v28];
        }

        *v61 = 67241474;
        *&v61[4] = v25;
        *&v61[8] = 2050;
        *&v61[10] = v58;
        *&v61[18] = 2114;
        *&v61[20] = v50;
        v62 = 2114;
        v63 = v51;
        v64 = 2114;
        v65 = v52;
        v66 = 2050;
        v67 = v29;
        LODWORD(v57) = 58;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7C8, 1, "[AccessoryActivity] seq,%{public}u,sensorTime,%{public}llu,activity,%{public}@,transition,%{public}@,state,%{public}@,transitionTime,%{public}llu", v61, v57);
        v54 = v53;
        sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLAccessoryActivity::onEventData(void *, void *, IOHIDEventRef)", "CoreLocation: %s\n", v53);
        if (v54 != buf)
        {
          free(v54);
        }
      }

      v61[0] = v26;
      *&v61[1] = v25;
      *&v61[3] = v58;
      v55 = IOHIDEventGetTimeStamp();
      *&v61[11] = sub_19B41E070(v55);
      sub_19B41DF08(a1, 0, v61, 19);
      if (*(a1 + 105) != v28 || *(a1 + 104) != v27)
      {
        buf[0] = v27;
        buf[1] = v28;
        *&buf[2] = v25;
        *v69 = v29;
        *&v69[8] = v58;
        v56 = IOHIDEventGetTimeStamp();
        *&v69[16] = sub_19B41E070(v56);
        sub_19B41DF08(a1, 1, buf, 28);
        *(a1 + 105) = v28;
        *(a1 + 104) = v27;
      }

      return;
    }

    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E28100);
    }

    v32 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_ERROR))
    {
      *buf = 67240448;
      *v69 = v12;
      *&v69[4] = 2050;
      *&v69[6] = IntegerValue;
      _os_log_impl(&dword_19B41C000, v32, OS_LOG_TYPE_ERROR, "[AccessoryActivity] Unexpected payload type %{public}u or length %{public}zu", buf, 0x12u);
    }

    v33 = sub_19B420058();
    if ((*(v33 + 160) & 0x80000000) == 0 || (*(v33 + 164) & 0x80000000) == 0 || (*(v33 + 168) & 0x80000000) == 0 || *(v33 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E28100);
      }

      *v61 = 67240448;
      *&v61[4] = v12;
      *&v61[8] = 2050;
      *&v61[10] = IntegerValue;
      LODWORD(v57) = 18;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7C8, 16, "[AccessoryActivity] Unexpected payload type %{public}u or length %{public}zu", v61, v57);
LABEL_31:
      v20 = v19;
      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual void CLAccessoryActivity::onEventData(void *, void *, IOHIDEventRef)", "CoreLocation: %s\n", v19);
      if (v20 != buf)
      {
        free(v20);
      }
    }
  }

  else
  {
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E28100);
    }

    v17 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v17, OS_LOG_TYPE_ERROR, "[AccessoryActivity] Invalid payload", buf, 2u);
    }

    v18 = sub_19B420058();
    if ((*(v18 + 160) & 0x80000000) == 0 || (*(v18 + 164) & 0x80000000) == 0 || (*(v18 + 168) & 0x80000000) == 0 || *(v18 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E28100);
      }

      *v61 = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7C8, 16, "[AccessoryActivity] Invalid payload", v61, 2);
      goto LABEL_31;
    }
  }
}

os_log_t sub_19B660714()
{
  result = os_log_create("com.apple.locationd.Motion", "Accessory");
  qword_1ED71C7C8 = result;
  return result;
}

void sub_19B660C90(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (!*(*(a1 + 32) + 16))
  {
    operator new();
  }

  if (qword_1EAFE27A8 != -1)
  {
    dispatch_once(&qword_1EAFE27A8, &unk_1F0E293C0);
  }

  v1 = qword_1EAFE27E0;
  if (os_log_type_enabled(qword_1EAFE27E0, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v1, OS_LOG_TYPE_ERROR, "CallHandedness service already started!", buf, 2u);
  }

  v2 = sub_19B420058();
  if ((*(v2 + 160) & 0x80000000) == 0 || (*(v2 + 164) & 0x80000000) == 0 || (*(v2 + 168) & 0x80000000) == 0 || *(v2 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE27A8 != -1)
    {
      dispatch_once(&qword_1EAFE27A8, &unk_1F0E293C0);
    }

    LOWORD(v5) = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE27E0, 16, "CallHandedness service already started!", &v5, 2);
    v4 = v3;
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CMCallHandednessManager startCallHandednessUpdates]_block_invoke", "CoreLocation: %s\n", v3);
    if (v4 != buf)
    {
      free(v4);
    }
  }
}

void sub_19B661128(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 16))
  {
    if (qword_1EAFE3A30 != -1)
    {
      dispatch_once(&qword_1EAFE3A30, &unk_1F0E29D60);
    }

    sub_19B426A14(qword_1EAFE3A40, 0, *(*(a1 + 32) + 16));
    v2 = *(a1 + 32);
    v3 = *(v2 + 16);
    if (v3)
    {
      (*(*v3 + 8))(v3);
      v2 = *(a1 + 32);
    }

    *(v2 + 16) = 0;
    if (qword_1EAFE27A8 != -1)
    {
      dispatch_once(&qword_1EAFE27A8, &unk_1F0E293C0);
    }

    v4 = qword_1EAFE27E0;
    if (os_log_type_enabled(qword_1EAFE27E0, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      *buf = 134217984;
      v18 = v5;
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_DEFAULT, "Stopped CallHandedness updates. Current Time: %f", buf, 0xCu);
    }

    v6 = sub_19B420058();
    if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE27A8 != -1)
      {
        dispatch_once(&qword_1EAFE27A8, &unk_1F0E293C0);
      }

      v7 = *(a1 + 40);
      v15 = 134217984;
      v16 = v7;
      v8 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE27E0, 0, "Stopped CallHandedness updates. Current Time: %f", COERCE_DOUBLE(&v15));
      v10 = v9;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMCallHandednessManager stopCallHandednessUpdates]_block_invoke", "CoreLocation: %s\n", v8);
LABEL_27:
      if (v10 != buf)
      {
        free(v10);
      }
    }
  }

  else
  {
    if (qword_1EAFE27A8 != -1)
    {
      dispatch_once(&qword_1EAFE27A8, &unk_1F0E293C0);
    }

    v11 = qword_1EAFE27E0;
    if (os_log_type_enabled(qword_1EAFE27E0, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_ERROR, "CallHandedness service already stopped!", buf, 2u);
    }

    v12 = sub_19B420058();
    if ((*(v12 + 160) & 0x80000000) == 0 || (*(v12 + 164) & 0x80000000) == 0 || (*(v12 + 168) & 0x80000000) == 0 || *(v12 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE27A8 != -1)
      {
        dispatch_once(&qword_1EAFE27A8, &unk_1F0E293C0);
      }

      LOWORD(v15) = 0;
      v13 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE27E0, 16, "CallHandedness service already stopped!", &v15, 2);
      v10 = v14;
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMCallHandednessManager stopCallHandednessUpdates]_block_invoke", "CoreLocation: %s\n", v13);
      goto LABEL_27;
    }
  }
}

uint64_t sub_19B661630(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C7F8 != -1)
  {
    dispatch_once(&qword_1ED71C7F8, &unk_1F0E28120);
  }

  v2 = qword_1ED71C7F0;
  if (os_log_type_enabled(qword_1ED71C7F0, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    *buf = 134217984;
    v16 = v3;
    _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_DEFAULT, "CallHandedness Detection: %ld", buf, 0xCu);
  }

  v4 = sub_19B420058();
  if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7F8 != -1)
    {
      dispatch_once(&qword_1ED71C7F8, &unk_1F0E28120);
    }

    v7 = *(a1 + 40);
    v13 = 134217984;
    v14 = v7;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7F0, 0, "CallHandedness Detection: %ld", &v13);
    v9 = v8;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMCallHandednessManager onCallHandednessStateUpdated:]_block_invoke", "CoreLocation: %s\n", v8);
    if (v9 != buf)
    {
      free(v9);
    }
  }

  v10 = objc_msgSend_delegate(*(a1 + 32), v5, v6);
  return objc_msgSend_callHandednessManager_didUpdateState_(v10, v11, *(a1 + 32), *(a1 + 40));
}

os_log_t sub_19B66181C()
{
  result = os_log_create("com.apple.locationd.Motion", "Gesture");
  qword_1EAFE27E0 = result;
  return result;
}

os_log_t sub_19B66184C()
{
  result = os_log_create("com.apple.locationd.Core", "Core");
  qword_1ED71C7F0 = result;
  return result;
}

void sub_19B661880(uint64_t a1)
{
  sub_19B42A51C(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B661C80()
{
  result = sub_19B421620();
  if ((result & 0x400000000) != 0)
  {
    if (sub_19B5F972C())
    {
      operator new();
    }

    operator new();
  }

  return result;
}

void *sub_19B661DD8(void *a1)
{
  *a1 = &unk_1F0E33458;
  sub_19B661E40(a1, 0, 0);

  return sub_19B674784(a1);
}

void sub_19B661E40(uint64_t a1, int a2, uint64_t a3)
{
  v17 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    if (a3 == 1)
    {
      (*(*a1 + 48))(a1);
      if (qword_1EAFE27A8 != -1)
      {
        dispatch_once(&qword_1EAFE27A8, &unk_1F0E27D00);
      }

      v7 = qword_1EAFE27E0;
      if (os_log_type_enabled(qword_1EAFE27E0, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        v16 = 1;
        _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_DEBUG, "CMPickupService started, %zd", buf, 0xCu);
      }

      v8 = sub_19B420058();
      if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE27A8 != -1)
        {
          dispatch_once(&qword_1EAFE27A8, &unk_1F0E27D00);
        }

        v6 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE27E0, 2, "CMPickupService started, %zd", &v14);
        goto LABEL_26;
      }
    }

    else if (a3)
    {
      if (qword_1EAFE27A8 != -1)
      {
        dispatch_once(&qword_1EAFE27A8, &unk_1F0E27D00);
      }

      v10 = qword_1EAFE27E0;
      if (os_log_type_enabled(qword_1EAFE27E0, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_ERROR, "CMPickupService expects only 1 client", buf, 2u);
      }

      v11 = sub_19B420058();
      if ((*(v11 + 160) & 0x80000000) == 0 || (*(v11 + 164) & 0x80000000) == 0 || (*(v11 + 168) & 0x80000000) == 0 || *(v11 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE27A8 != -1)
        {
          dispatch_once(&qword_1EAFE27A8, &unk_1F0E27D00);
        }

        LOWORD(v14) = 0;
        v12 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE27E0, 16, "CMPickupService expects only 1 client", &v14, 2);
        v9 = v13;
        sub_19B6BB7CC("Generic", 1, 0, 0, "virtual void CMPickupService::numberOfSpectatorsChanged(int, size_t)", "CoreLocation: %s\n", v12);
        goto LABEL_37;
      }
    }

    else
    {
      (*(*a1 + 56))(a1);
      if (qword_1EAFE27A8 != -1)
      {
        dispatch_once(&qword_1EAFE27A8, &unk_1F0E27D00);
      }

      v3 = qword_1EAFE27E0;
      if (os_log_type_enabled(qword_1EAFE27E0, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        v16 = 0;
        _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEBUG, "CMPickupService stopped, %zd", buf, 0xCu);
      }

      v4 = sub_19B420058();
      if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE27A8 != -1)
        {
          dispatch_once(&qword_1EAFE27A8, &unk_1F0E27D00);
        }

        v6 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE27E0, 2, "CMPickupService stopped, %zd", &v14);
LABEL_26:
        v9 = v5;
        sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CMPickupService::numberOfSpectatorsChanged(int, size_t)", "CoreLocation: %s\n", v6);
LABEL_37:
        if (v9 != buf)
        {
          free(v9);
        }
      }
    }
  }
}

os_log_t sub_19B6622A0()
{
  result = os_log_create("com.apple.locationd.Motion", "Gesture");
  qword_1EAFE27E0 = result;
  return result;
}

void sub_19B66296C(void *a1)
{
  sub_19B74FAE8(a1);

  JUMPOUT(0x19EAE76F0);
}

double sub_19B6629A4(uint64_t a1, int a2, double *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E28B00);
    }

    v4 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_FAULT))
    {
      *buf = 67240192;
      LODWORD(v22) = a2;
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_FAULT, "[AccessoryMagnetometer] Unrecognized update interval notification %{public}d", buf, 8u);
    }

    v5 = sub_19B420058();
    if ((*(v5 + 160) & 0x80000000) == 0 || (*(v5 + 164) & 0x80000000) == 0 || (*(v5 + 168) & 0x80000000) == 0 || (result = 0.0, *(v5 + 152)))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E28B00);
      }

      v19 = 67240192;
      LODWORD(v20) = a2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7C8, 17, "[AccessoryMagnetometer] Unrecognized update interval notification %{public}d", &v19, 8);
      v7 = v6;
      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual CFTimeInterval CLAccessoryMagnetometer::minimumUpdateIntervalChanged(int, const CFTimeInterval &)", "CoreLocation: %s\n", v6);
      if (v7 != buf)
      {
        free(v7);
      }

      return 0.0;
    }
  }

  else
  {
    sub_19B750AC4(a1);
    if (*a3 > 0.0)
    {
      *(a1 + 29) = 0;
    }

    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E28B00);
    }

    v11 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_INFO))
    {
      v12 = *a3;
      *buf = 134349056;
      v22 = v12;
      _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_INFO, "[AccessoryMagnetometer] Setting update interval to %{public}f", buf, 0xCu);
    }

    v13 = sub_19B420058();
    if (*(v13 + 160) > 1 || *(v13 + 164) > 1 || *(v13 + 168) > 1 || *(v13 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E28B00);
      }

      v14 = *a3;
      v19 = 134349056;
      v20 = v14;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7C8, 1, "[AccessoryMagnetometer] Setting update interval to %{public}f", &v19, 12);
      v16 = v15;
      sub_19B6BB7CC("Generic", 1, 0, 2, "virtual CFTimeInterval CLAccessoryMagnetometer::minimumUpdateIntervalChanged(int, const CFTimeInterval &)", "CoreLocation: %s\n", v15);
      if (v16 != buf)
      {
        free(v16);
      }
    }

    v17 = rint(*a3 * 1000000.0);
    if (*a3 < 0.0)
    {
      v18 = 0;
    }

    else
    {
      v18 = v17;
    }

    sub_19B4238F4(*(a1 + 32), v18);
    return *a3;
  }

  return result;
}

double sub_19B662D28(uint64_t a1, int a2, double *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E28B00);
    }

    v4 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_FAULT))
    {
      *buf = 67240192;
      LODWORD(v20) = a2;
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_FAULT, "[AccessoryMagnetometer] Unrecognized batch interval notification %{public}d", buf, 8u);
    }

    v5 = sub_19B420058();
    if ((*(v5 + 160) & 0x80000000) == 0 || (*(v5 + 164) & 0x80000000) == 0 || (*(v5 + 168) & 0x80000000) == 0 || (result = 0.0, *(v5 + 152)))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E28B00);
      }

      v17 = 67240192;
      LODWORD(v18) = a2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7C8, 17, "[AccessoryMagnetometer] Unrecognized batch interval notification %{public}d", &v17, 8);
      v7 = v6;
      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual CFTimeInterval CLAccessoryMagnetometer::minimumBatchIntervalChanged(int, const CFTimeInterval &)", "CoreLocation: %s\n", v6);
      if (v7 != buf)
      {
        free(v7);
      }

      return 0.0;
    }
  }

  else
  {
    sub_19B750AC4(a1);
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E28B00);
    }

    v11 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_INFO))
    {
      v12 = *a3;
      *buf = 134349056;
      v20 = v12;
      _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_INFO, "[AccessoryMagnetometer] Setting batch interval to %{public}f", buf, 0xCu);
    }

    v13 = sub_19B420058();
    if (*(v13 + 160) > 1 || *(v13 + 164) > 1 || *(v13 + 168) > 1 || *(v13 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E28B00);
      }

      v14 = *a3;
      v17 = 134349056;
      v18 = v14;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7C8, 1, "[AccessoryMagnetometer] Setting batch interval to %{public}f", &v17, 12);
      v16 = v15;
      sub_19B6BB7CC("Generic", 1, 0, 2, "virtual CFTimeInterval CLAccessoryMagnetometer::minimumBatchIntervalChanged(int, const CFTimeInterval &)", "CoreLocation: %s\n", v15);
      if (v16 != buf)
      {
        free(v16);
      }
    }

    sub_19B424A2C(*(a1 + 32), *a3);
    return *a3;
  }

  return result;
}

void sub_19B663080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v62 = *MEMORY[0x1E69E9840];
  if (IOHIDEventGetType() == 21)
  {
    IOHIDEventGetFloatValue();
    v7 = v6;
    v32 = v7;
    IOHIDEventGetFloatValue();
    v9 = v8;
    v33 = v9;
    IOHIDEventGetFloatValue();
    v11 = v10;
    v34 = v11;
    TimeStamp = IOHIDEventGetTimeStamp();
    v13 = sub_19B41E070(TimeStamp);
    v31 = v13;
    IntegerValue = IOHIDEventGetIntegerValue();
    v36 = IntegerValue;
    v15 = sub_19B794CA4(a4);
    v35 = v15;
    v16 = *(a1 + 84);
    v37 = v16;
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E28B00);
    }

    v17 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67241728;
      v44 = IntegerValue;
      v45 = 2050;
      v46 = v7;
      v47 = 2050;
      v48 = v9;
      v49 = 2050;
      v50 = v11;
      v51 = 2050;
      v52 = v16;
      v53 = 2050;
      v54 = v15;
      v55 = 2050;
      v56 = v13;
      _os_log_impl(&dword_19B41C000, v17, OS_LOG_TYPE_DEBUG, "[AccessoryMagnetometer] seq,%{public}d,x,%{public}20.20f,y,%{public}20.20f,z,%{public}20.20f,temp,%{public}20.20f,sensorTime,%{public}llu,timestamp,%{public}20.20f", buf, 0x44u);
    }

    v18 = sub_19B420058();
    if (*(v18 + 160) > 1 || *(v18 + 164) > 1 || *(v18 + 168) > 1 || *(v18 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E28B00);
      }

      v57 = 67241728;
      LODWORD(v58[0]) = IntegerValue;
      WORD2(v58[0]) = 2050;
      *(v58 + 6) = v7;
      HIWORD(v58[0]) = 2050;
      *&v58[1] = v9;
      WORD4(v58[1]) = 2050;
      *(&v58[1] + 10) = v11;
      WORD1(v58[2]) = 2050;
      *(&v58[2] + 4) = v16;
      WORD6(v58[2]) = 2050;
      *(&v58[2] + 14) = v15;
      WORD3(v58[3]) = 2050;
      *(&v58[3] + 1) = v13;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7C8, 2, "[AccessoryMagnetometer] seq,%{public}d,x,%{public}20.20f,y,%{public}20.20f,z,%{public}20.20f,temp,%{public}20.20f,sensorTime,%{public}llu,timestamp,%{public}20.20f", &v57, 68);
      v20 = v19;
      sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLAccessoryMagnetometer::onEventData(void *, void *, IOHIDEventRef)", "CoreLocation: %s\n", v19);
      if (v20 != buf)
      {
        free(v20);
      }
    }

    sub_19B41DF08(a1, 0, &v31, 40);
    if ((*(a1 + 29) & 1) == 0)
    {
      v58[0] = xmmword_19B7BA472;
      memset(&v58[1], 0, 48);
      v59[0] = xmmword_19B7BA4B2;
      *(a1 + 29) = 1;
      v59[1] = unk_19B7BA4C2;
      v57 = 0;
      v60 = 0;
      v61 = 0;
      if (sub_19B74FCD0(a1, &v57))
      {
        if (qword_1ED71C7B8 != -1)
        {
          dispatch_once(&qword_1ED71C7B8, &unk_1F0E28B00);
        }

        v21 = qword_1ED71C7C8;
        if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67240707;
          v44 = v57;
          v45 = 2081;
          v46 = COERCE_DOUBLE(v58);
          v47 = 2081;
          v48 = COERCE_DOUBLE(v59);
          _os_log_impl(&dword_19B41C000, v21, OS_LOG_TYPE_DEBUG, "[AccessoryMagnetometer] config,side,%{public}d,configuration,%{private}s,serialNumber,%{private}s", buf, 0x1Cu);
        }

        v22 = sub_19B420058();
        if (*(v22 + 160) > 1 || *(v22 + 164) > 1 || *(v22 + 168) > 1 || *(v22 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1ED71C7B8 != -1)
          {
            dispatch_once(&qword_1ED71C7B8, &unk_1F0E28B00);
          }

          v38[0] = 67240707;
          v38[1] = v57;
          v39 = 2081;
          v40 = v58;
          v41 = 2081;
          v42 = v59;
          LODWORD(v30) = 28;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7C8, 2, "[AccessoryMagnetometer] config,side,%{public}d,configuration,%{private}s,serialNumber,%{private}s", v38, v30);
          v24 = v23;
          sub_19B6BB7CC("Generic", 1, 0, 2, "void CLAccessoryMagnetometer::onMagnetometerData(const Sample &)", "CoreLocation: %s\n", v23);
          if (v24 != buf)
          {
            free(v24);
          }
        }

        sub_19B41DF08(a1, 1, &v57, 108);
      }

      else
      {
        if (qword_1ED71C7B8 != -1)
        {
          dispatch_once(&qword_1ED71C7B8, &unk_1F0E28B00);
        }

        v26 = qword_1ED71C7C8;
        if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v26, OS_LOG_TYPE_FAULT, "[AccessoryMagnetometer] Service not found!", buf, 2u);
        }

        v27 = sub_19B420058();
        if ((*(v27 + 160) & 0x80000000) == 0 || (*(v27 + 164) & 0x80000000) == 0 || (*(v27 + 168) & 0x80000000) == 0 || *(v27 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1ED71C7B8 != -1)
          {
            dispatch_once(&qword_1ED71C7B8, &unk_1F0E28B00);
          }

          LOWORD(v38[0]) = 0;
          LODWORD(v30) = 2;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7C8, 17, "[AccessoryMagnetometer] Service not found!", v38, v30);
          v29 = v28;
          sub_19B6BB7CC("Generic", 1, 0, 0, "void CLAccessoryMagnetometer::onMagnetometerData(const Sample &)", "CoreLocation: %s\n", v28);
          if (v29 != buf)
          {
            free(v29);
          }
        }
      }
    }
  }

  else if (IOHIDEventGetType() == 15)
  {
    IOHIDEventGetFloatValue();
    *&v25 = v25;
    *(a1 + 84) = LODWORD(v25);
  }
}

os_log_t sub_19B663714()
{
  result = os_log_create("com.apple.locationd.Motion", "Accessory");
  qword_1ED71C7C8 = result;
  return result;
}

void *sub_19B663744(void *a1)
{
  *a1 = &unk_1F0E32728;
  sub_19B42A568(a1 + 3);
  return a1;
}

void sub_19B66378C(void *a1)
{
  *a1 = &unk_1F0E32728;
  sub_19B42A568(a1 + 3);

  JUMPOUT(0x19EAE76F0);
}

void sub_19B6637F0(const void **a1, void *a2)
{
  v4 = a1[1];
  if (v4 == *a1)
  {
    v6 = a1[2];
    v7 = a1[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_19B446FB8(a1, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = a1[2];
    }

    a1[1] = v5;
    a1[2] = (v6 + 8 * v8);
  }

  else
  {
    v5 = a1[1];
  }

  *(v5 - 8) = *a2;
  a1[1] = a1[1] - 8;
}

void sub_19B6638FC(const void **a1, void *a2)
{
  v4 = a1[1];
  if (v4 == *a1)
  {
    v6 = a1[2];
    v7 = a1[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_19B446FB8(a1[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = a1[2];
    }

    a1[1] = v5;
    a1[2] = &v6[8 * v8];
  }

  else
  {
    v5 = a1[1];
  }

  *(v5 - 1) = *a2;
  a1[1] = a1[1] - 8;
}

void sub_19B663F70(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x19EAE76F0](v16, v15, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void sub_19B6640B4(uint64_t a1, const char *a2)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v3 = @"CMIMUCalTestCommandMessage";
  v4[0] = objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], a2, a1 + 40, 104);
  objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v2, v4, &v3, 1);
  sub_19B66451C();
}

void sub_19B6641A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a11)
  {
    sub_19B41FFEC(a11);
  }

  if (a13)
  {
    sub_19B41FFEC(a13);
  }

  _Unwind_Resume(exception_object);
}

void *sub_19B664590(void *a1, char *a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F0E2AD08;
  sub_19B6645EC((a1 + 3), a2, a3);
  return a1;
}

uint64_t sub_19B6645EC(uint64_t a1, char *a2, void *a3)
{
  sub_19B428B50(__p, a2);
  MEMORY[0x19EAE71F0](a1, __p, *a3);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_19B664644(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B664668(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  *(a1 + 56) = xmmword_19B7BA520;
  if (qword_1EAFE2998 != -1)
  {
    dispatch_once(&qword_1EAFE2998, &unk_1F0E29420);
  }

  v1 = off_1EAFE29A0;
  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v1, OS_LOG_TYPE_DEBUG, "[SitStandDetector] Set linkModel initial angles from LyingDown state", buf, 2u);
  }

  v2 = sub_19B420058();
  if (*(v2 + 160) > 1 || *(v2 + 164) > 1 || *(v2 + 168) > 1 || *(v2 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E29420);
    }

    v5[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[SitStandDetector] Set linkModel initial angles from LyingDown state", v5, 2);
    v4 = v3;
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CMSitStandDetector::setLinkModelJointAngles(const EventT *) [T = CMSitStandDetector::ELyingDown]", "CoreLocation: %s\n", v3);
    if (v4 != buf)
    {
      free(v4);
    }
  }
}

void sub_19B664818()
{
  v6 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2998 != -1)
  {
    dispatch_once(&qword_1EAFE2998, &unk_1F0E29420);
  }

  v0 = off_1EAFE29A0;
  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v0, OS_LOG_TYPE_INFO, "[SitStandDetector] resetFSM forced FSM to init state.", buf, 2u);
  }

  v1 = sub_19B420058();
  if (*(v1 + 160) > 1 || *(v1 + 164) > 1 || *(v1 + 168) > 1 || *(v1 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E29420);
    }

    v4[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 1, "[SitStandDetector] resetFSM forced FSM to init state.", v4, 2);
    v3 = v2;
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CMSitStandDetector::logReset(const EventT *) [T = CMSitStandDetector::EReset]", "CoreLocation: %s\n", v2);
    if (v3 != buf)
    {
      free(v3);
    }
  }
}

void sub_19B6649BC(uint64_t a1, float a2)
{
  v5 = *MEMORY[0x1E69E9840];
  *a1 = &unk_1F0E38160;
  *(a1 + 8) = 9;
  *(a1 + 16) = 512;
  v3 = a2;
  *(a1 + 24) = v3;
  *(a1 + 32) = vmulq_n_f64(xmmword_19B7BA530, v3);
  *(a1 + 48) = v3 * 0.3;
  v4.i64[1] = 0x3FF921FB54442D18;
  *(a1 + 56) = xmmword_19B7BA540;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 1065353216;
  *(a1 + 92) = 0;
  *(a1 + 96) = 1;
  *(a1 + 108) = 0u;
  *(a1 + 124) = 0x6400000000;
  *(a1 + 532) = 1;
  *(a1 + 544) = 0u;
  *(a1 + 560) = 0x6400000000;
  *(a1 + 968) = 0x6400000000;
  *(a1 + 1776) = 0x6400000000;
  *(a1 + 4984) = 0x6400000000;
  *(a1 + 10592) = 1;
  *(a1 + 10604) = 0u;
  *(a1 + 10620) = 0x200000000;
  *(a1 + 10636) = 1;
  *(a1 + 10648) = 0u;
  v4.i64[0] = 0x200000000;
  *(a1 + 10664) = 0x200000000;
  *(a1 + 10680) = 1;
  *(a1 + 10692) = 0u;
  *(a1 + 10708) = 0x700000000;
  *(a1 + 10744) = 1;
  *(a1 + 10756) = 0u;
  *(a1 + 10772) = 0x700000000;
  *(a1 + 10808) = 0;
  *(a1 + 10816) = 0;
  *(a1 + 10824) = 0u;
  *(a1 + 10840) = 0u;
  *(a1 + 10856) = 0u;
  *(a1 + 10872) = 0x3F80000000000000;
  sub_19B41E130((a1 + 10864), v4);
  *(a1 + 10912) = 0u;
  *(a1 + 10896) = 0u;
  *(a1 + 10880) = 0u;
  sub_19B664E00(a1);
}

void sub_19B664DB0(_Unwind_Exception *exception_object)
{
  v3 = 0;
  v4 = v1 + 10904;
  while (1)
  {
    v5 = *(v4 + v3);
    *(v4 + v3) = 0;
    if (v5)
    {
      MEMORY[0x19EAE76F0](v5, 0x1000C40FF89C88ELL);
    }

    v3 -= 8;
    if (v3 == -24)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

void sub_19B664EF4(uint64_t a1, char a2, uint64_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  if (*(a1 + 16) == 2)
  {
    *(a1 + 92) = 0;
    return;
  }

  if (a2)
  {
    v5 = 1;
  }

  else
  {
    if (!*(a1 + 92))
    {
      return;
    }

    v5 = -1;
  }

  v6 = v5 + *(a1 + 92);
  *(a1 + 92) = v6;
  if (v6 >= 2u)
  {
    sub_19B79A0E8(a1, 2, &v13);
    v7 = *(a1 + 10912);
    if (v7 && *(a1 + 10920))
    {
      v7(1, a3);
    }

    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E29420);
    }

    v8 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_DEBUG, "[SitStandDetector] Walking detection forced FSM to standing state.", buf, 2u);
    }

    v9 = sub_19B420058();
    if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E29420);
      }

      v12[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[SitStandDetector] Walking detection forced FSM to standing state.", v12, 2);
      v11 = v10;
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CMSitStandDetector::walkingDetectorCallback(BOOL, uint64_t)", "CoreLocation: %s\n", v10);
      if (v11 != buf)
      {
        free(v11);
      }
    }
  }
}

void sub_19B66510C(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 16) | 2) == 2)
  {
    sub_19B79A0E8(a1, 1, &v10);
    v4 = *(a1 + 10912);
    if (v4 && *(a1 + 10920))
    {
      v4(2, a2);
    }

    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E29420);
    }

    v5 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_DEBUG, "[SitStandDetector] Strict period of head static forced FSM from standing/init state to sitting state.", buf, 2u);
    }

    v6 = sub_19B420058();
    if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E29420);
      }

      v9[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[SitStandDetector] Strict period of head static forced FSM from standing/init state to sitting state.", v9, 2);
      v8 = v7;
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CMSitStandDetector::auxSustainedStaticEventCallback(uint64_t)", "CoreLocation: %s\n", v7);
      if (v8 != buf)
      {
        free(v8);
      }
    }
  }
}

uint64_t sub_19B6652F0(uint64_t a1, float *a2)
{
  if ((atomic_load_explicit(qword_1ED71CB60, memory_order_acquire) & 1) == 0)
  {
    v13 = a2;
    v14 = __cxa_guard_acquire(qword_1ED71CB60);
    a2 = v13;
    if (v14)
    {
      xmmword_1ED71CD08 = xmmword_19B7BA618;
      unk_1ED71CD18 = unk_19B7BA628;
      xmmword_1ED71CD28 = xmmword_19B7BA638;
      unk_1ED71CD38 = unk_19B7BA648;
      xmmword_1ED71CCC8 = xmmword_19B7BA5D8;
      unk_1ED71CCD8 = unk_19B7BA5E8;
      xmmword_1ED71CCE8 = xmmword_19B7BA5F8;
      unk_1ED71CCF8 = unk_19B7BA608;
      xmmword_1ED71CC88 = xmmword_19B7BA598;
      unk_1ED71CC98 = unk_19B7BA5A8;
      xmmword_1ED71CCA8 = xmmword_19B7BA5B8;
      unk_1ED71CCB8 = unk_19B7BA5C8;
      __cxa_guard_release(qword_1ED71CB60);
      a2 = v13;
    }
  }

  if ((atomic_load_explicit(&qword_1ED71CB68, memory_order_acquire) & 1) == 0)
  {
    v15 = a2;
    v16 = __cxa_guard_acquire(&qword_1ED71CB68);
    a2 = v15;
    if (v16)
    {
      memcpy(&unk_1ED71D0B8, &unk_19B7BA658, 0x110uLL);
      __cxa_guard_release(&qword_1ED71CB68);
      a2 = v15;
    }
  }

  if ((atomic_load_explicit(&qword_1ED71CB70, memory_order_acquire) & 1) == 0)
  {
    v17 = a2;
    v18 = __cxa_guard_acquire(&qword_1ED71CB70);
    a2 = v17;
    if (v18)
    {
      xmmword_1ED71CEA8 = xmmword_19B7BA808;
      unk_1ED71CEB8 = unk_19B7BA818;
      xmmword_1ED71CEC8 = xmmword_19B7BA828;
      xmmword_1ED71CE68 = xmmword_19B7BA7C8;
      unk_1ED71CE78 = unk_19B7BA7D8;
      xmmword_1ED71CE88 = xmmword_19B7BA7E8;
      unk_1ED71CE98 = unk_19B7BA7F8;
      xmmword_1ED71CE28 = xmmword_19B7BA788;
      unk_1ED71CE38 = unk_19B7BA798;
      xmmword_1ED71CE48 = xmmword_19B7BA7A8;
      unk_1ED71CE58 = unk_19B7BA7B8;
      xmmword_1ED71CE08 = xmmword_19B7BA768;
      unk_1ED71CE18 = unk_19B7BA778;
      __cxa_guard_release(&qword_1ED71CB70);
      a2 = v17;
    }
  }

  if ((atomic_load_explicit(&qword_1ED71CB78, memory_order_acquire) & 1) == 0)
  {
    v20 = a2;
    v19 = __cxa_guard_acquire(&qword_1ED71CB78);
    a2 = v20;
    if (v19)
    {
      xmmword_1ED71D078 = xmmword_19B7BA8F8;
      xmmword_1ED71D088 = unk_19B7BA908;
      xmmword_1ED71D098 = xmmword_19B7BA918;
      xmmword_1ED71D0A8 = unk_19B7BA928;
      xmmword_1ED71D038 = xmmword_19B7BA8B8;
      xmmword_1ED71D048 = unk_19B7BA8C8;
      xmmword_1ED71D058 = xmmword_19B7BA8D8;
      xmmword_1ED71D068 = unk_19B7BA8E8;
      xmmword_1ED71CFF8 = xmmword_19B7BA878;
      xmmword_1ED71D008 = unk_19B7BA888;
      xmmword_1ED71D018 = xmmword_19B7BA898;
      xmmword_1ED71D028 = unk_19B7BA8A8;
      xmmword_1ED71CFB8 = xmmword_19B7BA838;
      xmmword_1ED71CFC8 = unk_19B7BA848;
      xmmword_1ED71CFD8 = xmmword_19B7BA858;
      xmmword_1ED71CFE8 = unk_19B7BA868;
      __cxa_guard_release(&qword_1ED71CB78);
      a2 = v20;
    }
  }

  for (i = 0; i != 24; i += 2)
  {
    if (*&qword_1ED71CB60[i + 37] >= a2[2])
    {
      break;
    }
  }

  v4 = 0;
  v5 = *&qword_1ED71CB60[i + 38];
  do
  {
    if (*&qword_1ED71CB60[v4 + 171] >= a2[3])
    {
      break;
    }

    v4 += 2;
  }

  while (v4 != 34);
  v6 = 0;
  v7 = v5 * *&qword_1ED71CB60[v4 + 172];
  do
  {
    if (*&qword_1ED71CB60[v6 + 85] >= a2[6])
    {
      break;
    }

    v6 += 2;
  }

  while (v6 != 26);
  v8 = 0;
  v9 = v7 * *&qword_1ED71CB60[v6 + 86];
  do
  {
    if (*&qword_1ED71CB60[v8 + 139] >= a2[8])
    {
      break;
    }

    v8 += 2;
  }

  while (v8 != 32);
  v10 = v9 * *&qword_1ED71CB60[v8 + 140];
  if (a2[4] < 0.05)
  {
    v10 = 0.0;
  }

  v11 = v10;
  v22 = v11;
  sub_19B5BC034(a1 + 10592, &v22);
  if (*(a1 + 10624) != *(a1 + 10622))
  {
    return 0;
  }

  if (*(a1 + 10592) == 1)
  {
    sub_19B5BE7E0(a1 + 10592);
  }

  if (((v21 = *(a1 + 10596), v21 >= 40.0) || *(a1 + 10710)) && (sub_19B5BC034(a1 + 10680, &v21), *(a1 + 10604) = 0u, *(a1 + 10620) = 0, *(a1 + 10592) = 1, *(a1 + 10712) == *(a1 + 10710)) && sub_19B5C0034((a1 + 10708), sub_19B5C0258, 0) >= 20.0 && sub_19B5C0034((a1 + 10708), sub_19B5C024C, 0) >= 40.0)
  {
    return 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_19B665720(uint64_t a1, float *a2)
{
  if ((atomic_load_explicit(&qword_1ED71CB80, memory_order_acquire) & 1) == 0)
  {
    v13 = a2;
    v14 = __cxa_guard_acquire(&qword_1ED71CB80);
    a2 = v13;
    if (v14)
    {
      unk_1ED71CBD8 = xmmword_19B7BA958;
      unk_1ED71CBE8 = unk_19B7BA968;
      unk_1ED71CBF8 = xmmword_19B7BA978;
      unk_1ED71CC08 = unk_19B7BA988;
      unk_1ED71CBB8 = xmmword_19B7BA938;
      unk_1ED71CBC8 = unk_19B7BA948;
      __cxa_guard_release(&qword_1ED71CB80);
      a2 = v13;
    }
  }

  if ((atomic_load_explicit(&qword_1ED71CB88, memory_order_acquire) & 1) == 0)
  {
    v15 = a2;
    v16 = __cxa_guard_acquire(&qword_1ED71CB88);
    a2 = v15;
    if (v16)
    {
      xmmword_1ED71CC58 = xmmword_19B7BA9D8;
      unk_1ED71CC68 = unk_19B7BA9E8;
      xmmword_1ED71CC78 = xmmword_19B7BA9F8;
      xmmword_1ED71CC18 = xmmword_19B7BA998;
      unk_1ED71CC28 = unk_19B7BA9A8;
      xmmword_1ED71CC38 = xmmword_19B7BA9B8;
      unk_1ED71CC48 = unk_19B7BA9C8;
      __cxa_guard_release(&qword_1ED71CB88);
      a2 = v15;
    }
  }

  if ((atomic_load_explicit(&qword_1ED71CB90, memory_order_acquire) & 1) == 0)
  {
    v17 = a2;
    v18 = __cxa_guard_acquire(&qword_1ED71CB90);
    a2 = v17;
    if (v18)
    {
      xmmword_1ED71CF78 = xmmword_19B7BAAA8;
      unk_1ED71CF88 = unk_19B7BAAB8;
      xmmword_1ED71CF98 = xmmword_19B7BAAC8;
      unk_1ED71CFA8 = unk_19B7BAAD8;
      xmmword_1ED71CF38 = xmmword_19B7BAA68;
      unk_1ED71CF48 = unk_19B7BAA78;
      xmmword_1ED71CF58 = xmmword_19B7BAA88;
      unk_1ED71CF68 = unk_19B7BAA98;
      xmmword_1ED71CEF8 = xmmword_19B7BAA28;
      unk_1ED71CF08 = unk_19B7BAA38;
      xmmword_1ED71CF18 = xmmword_19B7BAA48;
      unk_1ED71CF28 = unk_19B7BAA58;
      xmmword_1ED71CED8 = xmmword_19B7BAA08;
      unk_1ED71CEE8 = unk_19B7BAA18;
      __cxa_guard_release(&qword_1ED71CB90);
      a2 = v17;
    }
  }

  if ((atomic_load_explicit(&qword_1ED71CB98, memory_order_acquire) & 1) == 0)
  {
    v20 = a2;
    v19 = __cxa_guard_acquire(&qword_1ED71CB98);
    a2 = v20;
    if (v19)
    {
      xmmword_1ED71CDC8 = xmmword_19B7BAB68;
      unk_1ED71CDD8 = unk_19B7BAB78;
      xmmword_1ED71CDE8 = xmmword_19B7BAB88;
      unk_1ED71CDF8 = unk_19B7BAB98;
      xmmword_1ED71CD88 = xmmword_19B7BAB28;
      unk_1ED71CD98 = unk_19B7BAB38;
      xmmword_1ED71CDA8 = xmmword_19B7BAB48;
      unk_1ED71CDB8 = unk_19B7BAB58;
      xmmword_1ED71CD48 = xmmword_19B7BAAE8;
      unk_1ED71CD58 = unk_19B7BAAF8;
      xmmword_1ED71CD68 = xmmword_19B7BAB08;
      unk_1ED71CD78 = unk_19B7BAB18;
      __cxa_guard_release(&qword_1ED71CB98);
      a2 = v20;
    }
  }

  for (i = 0; i != 12; i += 2)
  {
    if (*&qword_1ED71CB60[i + 11] >= a2[2])
    {
      break;
    }
  }

  v4 = 0;
  v5 = *&qword_1ED71CB60[i + 12];
  do
  {
    if (*&qword_1ED71CB60[v4 + 23] >= a2[3])
    {
      break;
    }

    v4 += 2;
  }

  while (v4 != 14);
  v6 = 0;
  v7 = v5 * *&qword_1ED71CB60[v4 + 24];
  do
  {
    if (*&qword_1ED71CB60[v6 + 111] >= a2[5])
    {
      break;
    }

    v6 += 2;
  }

  while (v6 != 28);
  v8 = 0;
  v9 = v7 * *&qword_1ED71CB60[v6 + 112];
  do
  {
    if (*&qword_1ED71CB60[v8 + 61] >= a2[7])
    {
      break;
    }

    v8 += 2;
  }

  while (v8 != 24);
  v10 = v9 * *&qword_1ED71CB60[v8 + 62];
  if (a2[4] < 0.05)
  {
    v10 = 0.0;
  }

  v11 = v10;
  v22 = v11;
  sub_19B5BC034(a1 + 10636, &v22);
  if (*(a1 + 10668) != *(a1 + 10666))
  {
    return 0;
  }

  if (*(a1 + 10636) == 1)
  {
    sub_19B5BE7E0(a1 + 10636);
  }

  if (((v21 = *(a1 + 10640), v21 >= 25.0) || *(a1 + 10774)) && (sub_19B5BC034(a1 + 10744, &v21), *(a1 + 10648) = 0u, *(a1 + 10664) = 0, *(a1 + 10636) = 1, *(a1 + 10776) == *(a1 + 10774)) && sub_19B5C0034((a1 + 10772), sub_19B5C0258, 0) >= 15.0 && sub_19B5C0034((a1 + 10772), sub_19B5C024C, 0) >= 25.0)
  {
    return 1;
  }

  else
  {
    return 0;
  }
}

double sub_19B665AF0(float **a1, float32x2_t *a2, float32x4_t a3)
{
  if ((atomic_load_explicit(&qword_1ED71CBA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED71CBA0))
  {
    qword_1ED71CBA8 = 0;
    dword_1ED71CBB0 = -1082130432;
    __cxa_guard_release(&qword_1ED71CBA0);
  }

  v36 = sub_19B66BFF4(a2 + 4, a3);
  v37 = v5;
  v38 = v6;
  v39 = v7;
  v8 = sub_19B66C1A4(&v36, -a2[2].f32[1], -a2[3].f32[0], -a2[3].f32[1]);
  v10 = v9;
  v12 = v11;
  v13 = 0.0;
  for (i = 5; i != 8; ++i)
  {
    v13 = v13 + (a2->f32[i] * a2->f32[i]);
  }

  v36 = sqrtf(v13);
  sub_19B5BC034((a1 + 12), &v36);
  v16.f32[0] = sub_19B66BFF4((a1 + 76), v15);
  v35[0] = v16.f32[0];
  v35[1] = v17;
  v35[2] = v18;
  v35[3] = v19;
  v36 = sub_19B66BF70(v35, &a2[4], v16);
  v37 = v20;
  v38 = v21;
  v39 = v22;
  v23 = sub_19B66C1A4(&v36, v8, v10, 0.0);
  v25 = v24;
  v27 = v26;
  sub_19B66C1A4(&v36, *&qword_1ED71CBA8, *(&qword_1ED71CBA8 + 1), *&dword_1ED71CBB0);
  v28 = sqrtf((v27 * v27) + (v25 * v25));
  if (v30 >= -v29)
  {
    v31 = v25;
  }

  else
  {
    v31 = v27;
  }

  v32 = v28 * ((__PAIR64__(v31 > 0.0, LODWORD(v31)) - COERCE_UNSIGNED_INT(0.0)) >> 32);
  v33 = *a2;
  v35[0] = v12;
  sub_19B5BC034(a1 + 532, v35);
  sub_19B5BE1A8(a1[1361], v32);
  sub_19B5BE1A8(a1[1362], v23);
  sub_19B5BE1A8(a1[1363], v12);
  return v33;
}

void sub_19B665D04(uint64_t a1)
{
  v2 = *(a1 + 64);
  v3 = 3.14159265 - *(a1 + 56);
  v41 = *(a1 + 32);
  v4 = __sincos_stret(v3);
  v38 = *(a1 + 40);
  v6 = __sincos_stret(v3 + v2);
  v5.f64[0] = v6.__cosval;
  if (*(a1 + 1778))
  {
    v7 = 0;
    v8.f64[0] = -v38;
    v5.f64[1] = v38;
    v8.f64[1] = v6.__sinval;
    v9.f64[0] = -v41;
    v10 = vmulq_f64(v5, v8);
    v9.f64[1] = v41;
    v8.f64[0] = v4.__cosval;
    v8.f64[1] = v4.__sinval;
    v37 = vcvt_f32_f64(vmlaq_f64(v10, v8, v9));
    do
    {
      if (v7)
      {
        v11 = sub_19B6680A0((a1 + 4984), v7 - 1);
        v12 = vadd_f32(v11[1], *sub_19B6196CC((a1 + 968), v7));
        v13 = vsub_f32(v12, *sub_19B6196CC((a1 + 968), v7 - 1));
      }

      else
      {
        v13 = vadd_f32(*sub_19B6196CC((a1 + 968), 0), v37);
      }

      v40 = v13;
      v14 = *(a1 + 32);
      v15 = __sincos_stret(v3);
      v42 = v3;
      v16 = -(v14 * v15.__cosval);
      v17 = v15.__sinval * v14;
      v18 = *(a1 + 40);
      v19 = __sincos_stret(v3 + v2);
      v20 = -(v18 * v19.__cosval) - v14 * v15.__cosval;
      v21 = v19.__sinval * v18 + v14 * v15.__sinval;
      v22 = *sub_19B6682BC((a1 + 1776), v7);
      v23 = sub_19B6680A0((a1 + 4984), v7);
      *v23 = v22;
      *(v23 + 2) = v20;
      *(v23 + 3) = v21;
      *(v23 + 4) = v16;
      *(v23 + 5) = v17;
      *(v23 + 3) = 0;
      *(v23 + 4) = 3.14159265 - v42;
      *(v23 + 5) = v2;
      *(v23 + 6) = v42 + 1.57079633;
      v24 = *(a1 + 32);
      v25 = pow(v24, 4.0);
      v39 = v24 * v24;
      v26 = *(a1 + 40);
      v27 = vmul_f32(v40, v40).f32[0];
      v28 = v27;
      *&v22 = vmuls_lane_f32(v40.f32[1], v40, 1);
      v29 = *&v22;
      v30 = (v39 + v39) * v27 - (v25 - (v39 + v39) * (v26 * v26)) + (v39 + v39) * *&v22 - pow(v26, 4.0) - (*&v22 * (v27 + v27)) + (v26 * v26 + v26 * v26) * v27 + (v26 * v26 + v26 * v26) * *&v22;
      v31 = v30 - pow(v40.f32[0], 4.0);
      v32 = sqrt(v31 - pow(v40.f32[1], 4.0));
      v33 = atan(-(v32 - (v24 + v24) * v40.f32[1]) / (v24 * v24 + v24 * -2.0 * v40.f32[0] - v26 * v26 + v28 + *&v22));
      v34 = v33 + v33;
      v35 = (v24 + v24) * v26 - v24 * v24 - v26 * v26 + v28 + v29;
      v36 = atan(sqrt(v35 * (v24 * v24 + (v24 + v24) * v26 + v26 * v26 - v28 - v29)) / v35);
      v3 = v34;
      v2 = v36 + v36;
      ++v7;
    }

    while (v7 < *(a1 + 1778));
  }
}

void sub_19B666024(uint64_t a1, uint64_t a2)
{
  v48 = *MEMORY[0x1E69E9840];
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  __asm { FMOV            V0.2S, #-1.0 }

  *(a1 + 28) = _D0;
  if (*(a2 + 1778))
  {
    v9 = 0;
    v10 = 0.0;
    v11 = 0.0;
    do
    {
      v12 = sub_19B6682BC((a2 + 1776), v9);
      v10 = v10 + *(v12 + 1) * *(v12 + 1);
      v13 = sub_19B6682BC((a2 + 1776), v9);
      v11 = v11 + *(v13 + 2) * *(v13 + 2);
      ++v9;
    }

    while (v9 < *(a2 + 1778));
    v14 = sub_19B6664A8((a2 + 1776), sub_19B666708);
    v16 = v15;
    v17 = sub_19B6664A8((a2 + 1776), sub_19B666714);
    v19 = *(a2 + 1776) + *(a2 + 1778) - 1;
    v20 = *(a2 + 1780);
    if (v19 < v20)
    {
      v20 = 0;
    }

    *a1 = *(a2 + 32 * (v19 - v20) + 1784);
    v21 = v11;
    v22 = v10 + 0.000000999999997;
    v23 = (v18 - v16) * ((v17 - v14 > 0.0) - (v17 - v14 < 0.0));
    *(a1 + 8) = sqrtf(v21) / sqrtf(v22);
    *(a1 + 12) = v23;
    if (*(a2 + 96) == 1)
    {
      sub_19B5BE7E0(a2 + 96);
    }

    *(a1 + 16) = *(a2 + 100);
    sub_19B666720(buf, (a2 + 4984), sub_19B6669AC);
    v41 = v47;
    sub_19B666720(v43, (a2 + 4984), sub_19B6669C0);
    v24.f64[0] = v41;
    v42 = v44;
    v24.f64[1] = v44;
    *(a1 + 20) = vcvt_f32_f64(vmulq_f64(v24, vdupq_n_s64(0x404CA5DC20000000uLL)));
    if (v41 >= 1.74532926)
    {
      v25 = v41;
    }

    else
    {
      v25 = 1.74532926;
    }

    v26 = *sub_19B6680A0((a2 + 4984), 0);
    v27 = 0.0;
    v28 = 0.0;
    if (*(a2 + 4986))
    {
      v29 = 0;
      while (*(sub_19B6680A0((a2 + 4984), v29) + 6) > v25)
      {
        if (++v29 >= *(a2 + 4986))
        {
          v28 = 0.0;
          goto LABEL_28;
        }
      }

      v28 = *sub_19B6680A0((a2 + 4984), v29);
    }

LABEL_28:
    if (v28 == 0.0)
    {
      v34 = 0.0;
    }

    else
    {
      v34 = v28 - v26;
    }

    v35 = v34;
    *(a1 + 28) = v35;
    if (v42 <= 2.53072739)
    {
      v36 = v42;
    }

    else
    {
      v36 = 2.53072739;
    }

    v37 = *sub_19B6680A0((a2 + 4984), 0);
    if (*(a2 + 4986))
    {
      v38 = 0;
      while (*(sub_19B6680A0((a2 + 4984), v38) + 6) < v36)
      {
        if (++v38 >= *(a2 + 4986))
        {
          goto LABEL_40;
        }
      }

      v27 = *sub_19B6680A0((a2 + 4984), v38);
    }

LABEL_40:
    v39 = v27 - v37;
    if (v27 == 0.0)
    {
      v39 = 0.0;
    }

    v40 = v39;
    *(a1 + 32) = v40;
  }

  else
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E29420);
    }

    v30 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v46 = 0;
      _os_log_impl(&dword_19B41C000, v30, OS_LOG_TYPE_ERROR, "[SitStandDetector] startIdx out of range. =%d", buf, 8u);
    }

    v31 = sub_19B420058();
    if ((*(v31 + 160) & 0x80000000) == 0 || (*(v31 + 164) & 0x80000000) == 0 || (*(v31 + 168) & 0x80000000) == 0 || *(v31 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E29420);
      }

      v43[0] = 67109120;
      v43[1] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 16, "[SitStandDetector] startIdx out of range. =%d", v43);
      v33 = v32;
      sub_19B6BB7CC("Generic", 1, 0, 0, "SitStandDetectorFeatures CMSitStandDetector::calcEpochFeatures(int)", "CoreLocation: %s\n", v32);
      if (v33 != buf)
      {
        free(v33);
      }
    }
  }
}

double sub_19B6664A8(unsigned __int16 *a1, unsigned int (*a2)(double, double, double, double, double, double, double, double))
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a1[1];
  if (!a1[1])
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E282E0);
    }

    v17 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v17, OS_LOG_TYPE_FAULT, "Assertion failed: n > 0, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMQueue.h, line 179,.", buf, 2u);
    }

    v18 = sub_19B420058();
    if ((*(v18 + 160) & 0x80000000) == 0 || (*(v18 + 164) & 0x80000000) == 0 || (*(v18 + 168) & 0x80000000) == 0 || *(v18 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E282E0);
      }

      v21[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 17, "Assertion failed: n > 0, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMQueue.h, line 179,.", v21, 2);
      v20 = v19;
      sub_19B6BB7CC("Generic", 1, 0, 0, "T CMQueue<SitStandDetector::DecomposedUserAccel>::getComparison(int (*)(const T, const T), size_t) const [T = SitStandDetector::DecomposedUserAccel]", "CoreLocation: %s\n", v19);
      if (v20 != buf)
      {
        free(v20);
      }
    }
  }

  v5 = sub_19B6682BC(a1, 0);
  v6 = *v5;
  v7 = *(v5 + 3);
  if (v4)
  {
    v8 = 0;
    v9 = *(v5 + 1);
    v10 = *(v5 + 2);
    do
    {
      v11 = sub_19B6682BC(a1, v8);
      v12 = *v11;
      v13 = *(v11 + 1);
      v14 = *(v11 + 2);
      v15 = *(v11 + 3);
      if (a2(*v11, v13, v14, v15, v6, v9, v10, v7))
      {
        v6 = v12;
        v9 = v13;
        v10 = v14;
        v7 = v15;
      }

      ++v8;
    }

    while (v4 != v8);
  }

  return v6;
}

__n128 sub_19B666720(uint64_t a1, unsigned __int16 *a2, unsigned int (*a3)(_OWORD *, _OWORD *))
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a2[1];
  if (a2[1])
  {
    v7 = sub_19B6680A0(a2, 0);
    v8 = 0;
    v9 = *(v7 + 1);
    *a1 = *v7;
    *(a1 + 16) = v9;
    *(a1 + 32) = *(v7 + 2);
    *(a1 + 48) = *(v7 + 6);
    do
    {
      v10 = sub_19B6680A0(a2, v8);
      v27 = *(v10 + 6);
      v26 = *(v10 + 2);
      v25 = *(v10 + 1);
      *buf = *v10;
      v22[0] = *buf;
      v22[1] = v25;
      v22[2] = v26;
      v23 = v27;
      v11 = *(a1 + 16);
      v20[0] = *a1;
      v20[1] = v11;
      v20[2] = *(a1 + 32);
      v21 = *(a1 + 48);
      if (a3(v22, v20))
      {
        v13 = v25;
        *a1 = *buf;
        *(a1 + 16) = v13;
        result.n128_u64[0] = v26;
        *(a1 + 32) = v26;
        *(a1 + 48) = v27;
      }

      ++v8;
    }

    while (v5 != v8);
  }

  else
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E282E0);
    }

    v14 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v14, OS_LOG_TYPE_FAULT, "Assertion failed: n > 0, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMQueue.h, line 179,.", buf, 2u);
    }

    v15 = sub_19B420058();
    if ((*(v15 + 160) & 0x80000000) == 0 || (*(v15 + 164) & 0x80000000) == 0 || (*(v15 + 168) & 0x80000000) == 0 || *(v15 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E282E0);
      }

      LOWORD(v22[0]) = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 17, "Assertion failed: n > 0, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMQueue.h, line 179,.", v22, 2);
      v17 = v16;
      sub_19B6BB7CC("Generic", 1, 0, 0, "T CMQueue<SitStandDetector::TwoLinkPositionSample>::getComparison(int (*)(const T, const T), size_t) const [T = SitStandDetector::TwoLinkPositionSample]", "CoreLocation: %s\n", v16);
      if (v17 != buf)
      {
        free(v17);
      }
    }

    v18 = sub_19B6680A0(a2, 0);
    v19 = *(v18 + 1);
    *a1 = *v18;
    *(a1 + 16) = v19;
    result = *(v18 + 2);
    *(a1 + 32) = result;
    *(a1 + 48) = *(v18 + 6);
  }

  return result;
}

void sub_19B6669D4(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  *(a1 + 56) = xmmword_19B7BA540;
  if (qword_1EAFE2998 != -1)
  {
    dispatch_once(&qword_1EAFE2998, &unk_1F0E29420);
  }

  v1 = off_1EAFE29A0;
  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v1, OS_LOG_TYPE_DEBUG, "[SitStandDetector] Set linkModel initial angles from Sitting state", buf, 2u);
  }

  v2 = sub_19B420058();
  if (*(v2 + 160) > 1 || *(v2 + 164) > 1 || *(v2 + 168) > 1 || *(v2 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E29420);
    }

    v5[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[SitStandDetector] Set linkModel initial angles from Sitting state", v5, 2);
    v4 = v3;
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CMSitStandDetector::setLinkModelJointAngles(const EventT *) [T = CMSitStandDetector::ESitting]", "CoreLocation: %s\n", v3);
    if (v4 != buf)
    {
      free(v4);
    }
  }
}

void sub_19B666B84(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  *(a1 + 56) = xmmword_19B7BA550;
  if (qword_1EAFE2998 != -1)
  {
    dispatch_once(&qword_1EAFE2998, &unk_1F0E29420);
  }

  v1 = off_1EAFE29A0;
  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v1, OS_LOG_TYPE_DEBUG, "[SitStandDetector] Set linkModel initial angles from Standing state", buf, 2u);
  }

  v2 = sub_19B420058();
  if (*(v2 + 160) > 1 || *(v2 + 164) > 1 || *(v2 + 168) > 1 || *(v2 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E29420);
    }

    v5[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[SitStandDetector] Set linkModel initial angles from Standing state", v5, 2);
    v4 = v3;
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CMSitStandDetector::setLinkModelJointAngles(const EventT *) [T = CMSitStandDetector::EStanding]", "CoreLocation: %s\n", v3);
    if (v4 != buf)
    {
      free(v4);
    }
  }
}

void sub_19B666D34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  sub_19B79A0E8(a1, 2, a2);
  *(a1 + 72) = 1;
  v5 = *(a1 + 10912);
  if (v5 && *(a1 + 10920))
  {
    v5(1, a3);
  }

  *(a1 + 10824) = a3 + 500000;
  if (qword_1EAFE2998 != -1)
  {
    dispatch_once(&qword_1EAFE2998, &unk_1F0E29420);
  }

  v6 = off_1EAFE29A0;
  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_DEFAULT, "[SitStandDetector] Detected Sit->Stand", buf, 2u);
  }

  v7 = sub_19B420058();
  if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E29420);
    }

    v10[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[SitStandDetector] Detected Sit->Stand", v10, 2);
    v9 = v8;
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CMSitStandDetector::notifyWithDetection(const EventT *, uint64_t) [EventT = CMSitStandDetector::EStanding]", "CoreLocation: %s\n", v8);
    if (v9 != buf)
    {
      free(v9);
    }
  }

  *(a1 + 1776) = 0;
  *(a1 + 968) = 0;
  *(a1 + 10604) = 0u;
  *(a1 + 10620) = 0;
  *(a1 + 10592) = 1;
  *(a1 + 10648) = 0u;
  *(a1 + 10664) = 0;
  *(a1 + 10636) = 1;
  *(a1 + 10692) = 0u;
  *(a1 + 10708) = 0;
  *(a1 + 10680) = 1;
  *(a1 + 10756) = 0u;
  *(a1 + 10772) = 0;
  *(a1 + 10744) = 1;
  sub_19B664E00(a1);
}

void sub_19B666F80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  sub_19B79A0E8(a1, 1, a2);
  *(a1 + 72) = 2;
  v5 = *(a1 + 10912);
  if (v5 && *(a1 + 10920))
  {
    v5(2, a3);
  }

  *(a1 + 10824) = a3 + 2000000;
  if (qword_1EAFE2998 != -1)
  {
    dispatch_once(&qword_1EAFE2998, &unk_1F0E29420);
  }

  v6 = off_1EAFE29A0;
  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_DEFAULT, "[SitStandDetector] Detected Stand->Sit", buf, 2u);
  }

  v7 = sub_19B420058();
  if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E29420);
    }

    v10[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[SitStandDetector] Detected Stand->Sit", v10, 2);
    v9 = v8;
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CMSitStandDetector::notifyWithDetection(const EventT *, uint64_t) [EventT = CMSitStandDetector::ESitting]", "CoreLocation: %s\n", v8);
    if (v9 != buf)
    {
      free(v9);
    }
  }

  *(a1 + 1776) = 0;
  *(a1 + 968) = 0;
  *(a1 + 10604) = 0u;
  *(a1 + 10620) = 0;
  *(a1 + 10592) = 1;
  *(a1 + 10648) = 0u;
  *(a1 + 10664) = 0;
  *(a1 + 10636) = 1;
  *(a1 + 10692) = 0u;
  *(a1 + 10708) = 0;
  *(a1 + 10680) = 1;
  *(a1 + 10756) = 0u;
  *(a1 + 10772) = 0;
  *(a1 + 10744) = 1;
  sub_19B664E00(a1);
}

unsigned __int16 *sub_19B6671CC(unsigned __int16 *result, __int128 *a2)
{
  v2 = *(result + 1);
  v3 = *result + result[1];
  if (v3 < v2)
  {
    v2 = 0;
  }

  v4 = &result[16 * (v3 - v2)];
  v5 = *a2;
  *(v4 + 12) = a2[1];
  *(v4 + 4) = v5;
  v6 = result[1];
  v7 = *(result + 1);
  if (v7 <= v6)
  {
    v8 = *result + 1;
    if (v8 < v7)
    {
      LOWORD(v7) = 0;
    }

    *result = v8 - v7;
  }

  else
  {
    result[1] = v6 + 1;
  }

  return result;
}

uint64_t sub_19B667230(uint64_t a1, uint64_t a2)
{
  v84 = *MEMORY[0x1E69E9840];
  if (*(a1 + 10824) <= (*a2 * 1000000.0))
  {
    v70 = (*a2 * 1000000.0);
    v4 = a1 + 0x2000;
    if (*(a1 + 1778))
    {
      v5 = *a2 - *(a1 + 10832);
      if (v5 > 0.5)
      {
        *(a1 + 1776) = 0;
        *(a1 + 968) = 0;
        *(a1 + 10604) = 0u;
        *(a1 + 10620) = 0;
        *(a1 + 10592) = 1;
        *(a1 + 10648) = 0u;
        *(a1 + 10664) = 0;
        *(a1 + 10636) = 1;
        *(a1 + 10692) = 0u;
        *(a1 + 10708) = 0;
        *(a1 + 10680) = 1;
        *(a1 + 10756) = 0u;
        *(a1 + 10772) = 0;
        *(a1 + 10744) = 1;
        sub_19B664E00(a1);
      }

      if (v5 > 0.04)
      {
        v6 = rintf(v5 * 50.0);
        v7 = v6;
        v8 = (a1 + 10840);
        v71 = *(a1 + 10840);
        v72 = *(a2 + 8);
        v9 = *(a2 + 24);
        v10 = *(a1 + 10856);
        v11 = a1 + 0x2000;
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E29420);
        }

        v12 = off_1EAFE29A0;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134218240;
          *&buf[4] = v5;
          *&buf[12] = 1024;
          *&buf[14] = v7 - 1;
          _os_log_impl(&dword_19B41C000, v12, OS_LOG_TYPE_DEBUG, "[SitStandDetector] data gap of %.3f seconds, interpolating to %d samples.", buf, 0x12u);
        }

        v13 = sub_19B420058();
        if (*(v13 + 160) > 1 || *(v13 + 164) > 1 || *(v13 + 168) > 1 || *(v13 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E29420);
          }

          *v82 = 134218240;
          *&v82[4] = v5;
          *&v82[12] = 1024;
          *&v82[14] = v7 - 1;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[SitStandDetector] data gap of %.3f seconds, interpolating to %d samples.", COERCE_DOUBLE(v82), 18);
          v16 = v15;
          sub_19B6BB7CC("Generic", 1, 0, 2, "void CMSitStandDetector::insertInterpolatedSamplesIfDataGap(const ImuData &)", "CoreLocation: %s\n", v15);
          if (v16 != buf)
          {
            free(v16);
          }
        }

        v4 = v11;
        if (v7 >= 2)
        {
          v17 = v6;
          *v14.i32 = 1.0 / v17;
          v18 = ((1.0 / v17) * v5);
          v73 = vmulq_n_f32(vsubq_f32(v72, v71), 1.0 / v17);
          v19 = vmul_f32(*&vdupq_lane_s32(v14, 0), vsub_f32(v9, v10));
          for (i = 1; i != v7; ++i)
          {
            memset(buf, 0, sizeof(buf));
            v81 = 1065353216;
            sub_19B41E130(&buf[32], 0);
            v21 = i;
            *&v21 = i;
            *buf = *(a1 + 10832) + i * v18;
            *&buf[8] = vaddq_f32(vmulq_n_f32(v73, i), *v8);
            *&buf[24] = vadd_f32(vmul_f32(v19, *&vdupq_lane_s32(*&v21, 0)), *(a1 + 10856));
            sub_19B66D5F4((a1 + 10864), (a2 + 32), i / v17);
            *&buf[32] = v22.i32[0];
            *&buf[36] = v23;
            *&buf[40] = v24;
            v81 = v25;
            *v82 = sub_19B665AF0(a1, buf, v22);
            *&v82[8] = v26;
            *&v82[16] = v27;
            *&v82[24] = v28;
            sub_19B6671CC((a1 + 1776), v82);
          }
        }
      }
    }

    v29 = *a2;
    v30 = *(a2 + 16);
    *(a1 + 10864) = *(a2 + 32);
    *(a1 + 10848) = v30;
    *(a1 + 10832) = v29;
    *&v74 = sub_19B665AF0(a1, a2, v29);
    *(&v74 + 1) = v31;
    v75 = v32;
    v76 = v33;
    sub_19B6671CC((a1 + 1776), &v74);
    if (*(a1 + 1780) == *(a1 + 1778))
    {
      v69 = v4;
      v34 = *(sub_19B6682BC((a1 + 1776), 0) + 1);
      v35 = *(sub_19B6682BC((a1 + 1776), 0) + 3);
      *buf = 0;
      sub_19B61966C((a1 + 968), buf);
      if (*(a1 + 1778) >= 2u)
      {
        v36 = 1;
        v37 = v35 * 0.02;
        v38 = v34 * 0.02;
        v39 = 0.0;
        v40 = 0.0;
        do
        {
          v41 = *sub_19B6682BC((a1 + 1776), v36);
          v42 = v36 - 1;
          v43 = v41 - *sub_19B6682BC((a1 + 1776), v42);
          if (v43 < 0.0)
          {
            if (qword_1EAFE2998 != -1)
            {
              dispatch_once(&qword_1EAFE2998, &unk_1F0E29420);
            }

            v44 = off_1EAFE29A0;
            if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
            {
              *buf = 134217984;
              *&buf[4] = 0;
              _os_log_impl(&dword_19B41C000, v44, OS_LOG_TYPE_ERROR, "[SitStandDetector] Timestamp went backwards. dt = %f", buf, 0xCu);
            }

            v45 = sub_19B420058();
            if ((*(v45 + 160) & 0x80000000) == 0 || (*(v45 + 164) & 0x80000000) == 0 || (*(v45 + 168) & 0x80000000) == 0 || (v43 = 0.0, *(v45 + 152)))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1EAFE2998 != -1)
              {
                dispatch_once(&qword_1EAFE2998, &unk_1F0E29420);
              }

              *v82 = 134217984;
              *&v82[4] = 0;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 16, "[SitStandDetector] Timestamp went backwards. dt = %f", COERCE_DOUBLE(v82));
              v47 = v46;
              sub_19B6BB7CC("Generic", 1, 0, 0, "void CMSitStandDetector::integrateUserAccel()", "CoreLocation: %s\n", v46);
              if (v47 != buf)
              {
                free(v47);
              }

              v43 = 0.0;
            }
          }

          v48 = *(sub_19B6682BC((a1 + 1776), v42) + 1);
          v49 = (v48 + *(sub_19B6682BC((a1 + 1776), v42 + 1) + 1)) * 0.5;
          v50 = *(sub_19B6682BC((a1 + 1776), v42) + 3);
          v51 = (v50 + *(sub_19B6682BC((a1 + 1776), v42 + 1) + 3)) * 0.5;
          v38 = v38 + v49 * 9.80665016 * v43;
          v37 = v37 + v51 * 9.80665016 * v43;
          v39 = v39 + v43 * v43 * (v49 * 4.90332508) + v38 * v43;
          v40 = v40 + v43 * v43 * (v51 * 4.90332508) + v37 * v43;
          *&v51 = v39;
          v52 = v40;
          *buf = LODWORD(v51);
          *&buf[4] = v52;
          sub_19B61966C((a1 + 968), buf);
          v36 = v42 + 2;
        }

        while (v36 < *(a1 + 1778));
      }

      if (*(a1 + 16))
      {
        sub_19B665D04(a1);
        sub_19B666024(v82, a1);
        v53 = *(a1 + 16);
        if (v53 == 2)
        {
          if (sub_19B665720(a1, v82))
          {
            sub_19B666F80(a1, buf, v70);
          }
        }

        else if (v53 == 1)
        {
          if (sub_19B6652F0(a1, v82))
          {
            sub_19B666D34(a1, buf, v70);
          }
        }

        else
        {
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E29420);
          }

          v60 = off_1EAFE29A0;
          if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
          {
            v61 = *(a1 + 16);
            if (v61 > 3)
            {
              v62 = "Unknown";
            }

            else
            {
              v62 = off_1E7533C20[v61];
            }

            *buf = 136315138;
            *&buf[4] = v62;
            _os_log_impl(&dword_19B41C000, v60, OS_LOG_TYPE_INFO, "[SitStandDetector] Wrong FSM state, %s", buf, 0xCu);
          }

          v63 = sub_19B420058();
          if (*(v63 + 160) > 1 || *(v63 + 164) > 1 || *(v63 + 168) > 1 || *(v63 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE2998 != -1)
            {
              dispatch_once(&qword_1EAFE2998, &unk_1F0E29420);
            }

            v64 = *(a1 + 16);
            if (v64 > 3)
            {
              v65 = "Unknown";
            }

            else
            {
              v65 = off_1E7533C20[v64];
            }

            v78 = 136315138;
            v79 = v65;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 1, "[SitStandDetector] Wrong FSM state, %s", &v78);
            v67 = v66;
            sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CMSitStandDetector::detectStateTransitions(uint64_t)", "CoreLocation: %s\n", v66);
            if (v67 != buf)
            {
              free(v67);
            }
          }
        }
      }

      else
      {
        sub_19B6669D4(a1);
        sub_19B665D04(a1);
        sub_19B666024(buf, a1);
        v54 = sub_19B6652F0(a1, buf);
        sub_19B666B84(a1);
        sub_19B665D04(a1);
        sub_19B666024(v82, a1);
        *buf = *v82;
        *&buf[16] = *&v82[16];
        *&buf[32] = v83;
        v55 = sub_19B665720(a1, buf);
        v56 = v55;
        if ((v54 & 1) != 0 || (v55 & 1) != 0 || *(a1 + 10880))
        {
          if (v54)
          {
            if (*(v69 + 2488) == 1)
            {
              sub_19B5BE7E0(v69 + 2488);
            }

            v57 = *(a1 + 10684) / 40.0;
            if (v57 > *(a1 + 10808))
            {
              *(a1 + 10808) = v57;
            }
          }

          if (v56)
          {
            if (*(v69 + 2552) == 1)
            {
              sub_19B5BE7E0(v69 + 2552);
            }

            v58 = *(a1 + 10748) / 25.0;
            if (v58 > *(a1 + 10812))
            {
              *(a1 + 10812) = v58;
            }
          }

          v59 = *(a1 + 10880);
          if (v59)
          {
            if (v59 <= v70)
            {
              if (*(a1 + 10808) > *(a1 + 10812))
              {
                sub_19B666D34(a1, &v77, v70);
              }

              sub_19B666F80(a1, &v78, v70);
            }
          }

          else
          {
            *(a1 + 10880) = v70 + 800000;
          }
        }
      }
    }
  }

  result = 0;
  *(a1 + 72) = 0;
  return result;
}

os_log_t sub_19B668070()
{
  result = os_log_create("com.apple.locationd.Motion", "RelativeDeviceMotion");
  off_1EAFE29A0 = result;
  return result;
}

unsigned __int16 *sub_19B6680A0(unsigned __int16 *a1, unint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if (*(a1 + 1) <= a2)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E282E0);
    }

    v7 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      v8 = *(a1 + 1);
      *buf = 134218240;
      v18 = a2;
      v19 = 1024;
      v20 = v8;
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_FAULT, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", buf, 0x12u);
    }

    v9 = sub_19B420058();
    if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E282E0);
      }

      v10 = *(a1 + 1);
      v13 = 134218240;
      v14 = a2;
      v15 = 1024;
      v16 = v10;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 17, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", &v13, 18);
      v12 = v11;
      sub_19B6BB7CC("Generic", 1, 0, 0, "const T &CMQueue<SitStandDetector::TwoLinkPositionSample>::operator[](const size_t) const [T = SitStandDetector::TwoLinkPositionSample]", "CoreLocation: %s\n", v11);
      if (v12 != buf)
      {
        free(v12);
      }
    }
  }

  v4 = *a1 + a2;
  v5 = *(a1 + 1);
  if (v4 < v5)
  {
    v5 = 0;
  }

  return &a1[28 * (v4 - v5) + 4];
}

unsigned __int16 *sub_19B6682BC(unsigned __int16 *a1, unint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if (*(a1 + 1) <= a2)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E282E0);
    }

    v7 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      v8 = *(a1 + 1);
      *buf = 134218240;
      v18 = a2;
      v19 = 1024;
      v20 = v8;
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_FAULT, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", buf, 0x12u);
    }

    v9 = sub_19B420058();
    if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E282E0);
      }

      v10 = *(a1 + 1);
      v13 = 134218240;
      v14 = a2;
      v15 = 1024;
      v16 = v10;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 17, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", &v13, 18);
      v12 = v11;
      sub_19B6BB7CC("Generic", 1, 0, 0, "const T &CMQueue<SitStandDetector::DecomposedUserAccel>::operator[](const size_t) const [T = SitStandDetector::DecomposedUserAccel]", "CoreLocation: %s\n", v11);
      if (v12 != buf)
      {
        free(v12);
      }
    }
  }

  v4 = *a1 + a2;
  v5 = *(a1 + 1);
  if (v4 < v5)
  {
    v5 = 0;
  }

  return &a1[16 * (v4 - v5) + 4];
}

uint64_t sub_19B66882C(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2840 != -1)
  {
    dispatch_once(&qword_1EAFE2840, &unk_1F0E29440);
  }

  v2 = qword_1EAFE2860;
  if (os_log_type_enabled(qword_1EAFE2860, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_INFO, "Closing PressureSample", buf, 2u);
  }

  v3 = sub_19B420058();
  if (*(v3 + 160) > 1 || *(v3 + 164) > 1 || *(v3 + 168) > 1 || *(v3 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2840 != -1)
    {
      dispatch_once(&qword_1EAFE2840, &unk_1F0E29440);
    }

    v7[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2860, 1, "Closing PressureSample", v7, 2);
    v5 = v4;
    sub_19B6BB7CC("Generic", 1, 0, 2, "CLPressureSampleDatabase::~CLPressureSampleDatabase()", "CoreLocation: %s\n", v4);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  sqlite3_reset(*(a1 + 16));
  sqlite3_close(*(a1 + 8));
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

void sub_19B668A10(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_19B45E110(a1);
}

uint64_t sub_19B668A1C(uint64_t a1, const char *a2, __int128 *a3, __int128 *a4)
{
  v95 = *MEMORY[0x1E69E9840];
  *(a1 + 16) = 0;
  v8 = (a1 + 16);
  if (*(a3 + 23) < 0)
  {
    sub_19B4C5138((a1 + 24), *a3, *(a3 + 1));
  }

  else
  {
    v9 = *a3;
    *(a1 + 40) = *(a3 + 2);
    *(a1 + 24) = v9;
  }

  if (*(a4 + 23) < 0)
  {
    sub_19B4C5138((a1 + 48), *a4, *(a4 + 1));
  }

  else
  {
    v10 = *a4;
    *(a1 + 64) = *(a4 + 2);
    *(a1 + 48) = v10;
  }

  pStmt = 0;
  if (a2[23] >= 0)
  {
    v11 = a2;
  }

  else
  {
    v11 = *a2;
  }

  v12 = *(a3 + 23);
  if ((v12 & 0x80u) != 0)
  {
    v12 = *(a3 + 1);
  }

  if (v12)
  {
    v13 = 6;
  }

  else
  {
    v13 = 1;
  }

  if (!sqlite3_open_v2(v11, (a1 + 8), v13, 0))
  {
    if (sqlite3_prepare_v2(*(a1 + 8), "SELECT COUNT(*) FROM PressureSample", -1, &pStmt, 0) || sqlite3_step(pStmt) != 100)
    {
      v48 = *(a3 + 23);
      if ((v48 & 0x80u) != 0)
      {
        v48 = *(a3 + 1);
      }

      if (!v48)
      {
        if (qword_1EAFE2840 != -1)
        {
          dispatch_once(&qword_1EAFE2840, &unk_1F0E29440);
        }

        v69 = qword_1EAFE2860;
        if (os_log_type_enabled(qword_1EAFE2860, OS_LOG_TYPE_FAULT))
        {
          if (a2[23] >= 0)
          {
            v70 = a2;
          }

          else
          {
            v70 = *a2;
          }

          *buf = 136315138;
          v92 = v70;
          _os_log_impl(&dword_19B41C000, v69, OS_LOG_TYPE_FAULT, "No PressureSample table in %s", buf, 0xCu);
        }

        v71 = sub_19B420058();
        if ((*(v71 + 160) & 0x80000000) != 0 && (*(v71 + 164) & 0x80000000) != 0 && (*(v71 + 168) & 0x80000000) != 0 && !*(v71 + 152))
        {
          goto LABEL_34;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2840 != -1)
        {
          dispatch_once(&qword_1EAFE2840, &unk_1F0E29440);
        }

        v72 = a2[23] >= 0 ? a2 : *a2;
        v87 = 136315138;
        v88 = v72;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2860, 17, "No PressureSample table in %s", &v87);
        v26 = v73;
        sub_19B6BB7CC("Generic", 1, 0, 0, "CLPressureSampleDatabase::CLPressureSampleDatabase(const std::string &, const std::string &, const std::string &)", "CoreLocation: %s\n", v73);
        if (v26 == buf)
        {
          goto LABEL_34;
        }

        goto LABEL_33;
      }

      if (sqlite3_prepare_v2(*(a1 + 8), "CREATE TABLE PressureSample (CFTime FLOAT, Timestamp FLOAT, Run TEXT, Tag TEXT, degC FLOAT, kPa FLOAT)", -1, &pStmt, 0) || sqlite3_step(pStmt) != 101)
      {
        if (qword_1EAFE2840 != -1)
        {
          dispatch_once(&qword_1EAFE2840, &unk_1F0E29440);
        }

        v57 = qword_1EAFE2860;
        if (os_log_type_enabled(qword_1EAFE2860, OS_LOG_TYPE_FAULT))
        {
          v58 = a2[23];
          v59 = *a2;
          v60 = sqlite3_errmsg(*(a1 + 8));
          if (v58 >= 0)
          {
            v61 = a2;
          }

          else
          {
            v61 = v59;
          }

          *buf = 136315394;
          v92 = v61;
          v93 = 2080;
          v94 = v60;
          _os_log_impl(&dword_19B41C000, v57, OS_LOG_TYPE_FAULT, "Can't create table in %s: %s", buf, 0x16u);
        }

        v62 = sub_19B420058();
        if ((*(v62 + 160) & 0x80000000) != 0 && (*(v62 + 164) & 0x80000000) != 0 && (*(v62 + 168) & 0x80000000) != 0 && !*(v62 + 152))
        {
          goto LABEL_34;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2840 != -1)
        {
          dispatch_once(&qword_1EAFE2840, &unk_1F0E29440);
        }

        v63 = qword_1EAFE2860;
        v64 = a2[23];
        v65 = *a2;
        v66 = sqlite3_errmsg(*(a1 + 8));
        if (v64 >= 0)
        {
          v67 = a2;
        }

        else
        {
          v67 = v65;
        }

        v87 = 136315394;
        v88 = v67;
        v89 = 2080;
        v90 = v66;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v63, 17, "Can't create table in %s: %s", &v87, 22);
        v26 = v68;
        sub_19B6BB7CC("Generic", 1, 0, 0, "CLPressureSampleDatabase::CLPressureSampleDatabase(const std::string &, const std::string &, const std::string &)", "CoreLocation: %s\n", v68);
        goto LABEL_32;
      }

      sqlite3_finalize(pStmt);
      pStmt = 0;
      if (sqlite3_prepare_v2(*(a1 + 8), "CREATE INDEX TheIdx ON PressureSample (Run, Tag, CFTime)", -1, &pStmt, 0) || sqlite3_step(pStmt) != 101)
      {
        if (qword_1EAFE2840 != -1)
        {
          dispatch_once(&qword_1EAFE2840, &unk_1F0E29440);
        }

        v74 = qword_1EAFE2860;
        if (os_log_type_enabled(qword_1EAFE2860, OS_LOG_TYPE_FAULT))
        {
          v75 = a2[23];
          v76 = *a2;
          v77 = sqlite3_errmsg(*(a1 + 8));
          if (v75 >= 0)
          {
            v78 = a2;
          }

          else
          {
            v78 = v76;
          }

          *buf = 136315394;
          v92 = v78;
          v93 = 2080;
          v94 = v77;
          _os_log_impl(&dword_19B41C000, v74, OS_LOG_TYPE_FAULT, "Can't create index in %s: %s", buf, 0x16u);
        }

        v79 = sub_19B420058();
        if ((*(v79 + 160) & 0x80000000) != 0 && (*(v79 + 164) & 0x80000000) != 0 && (*(v79 + 168) & 0x80000000) != 0 && !*(v79 + 152))
        {
          goto LABEL_34;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2840 != -1)
        {
          dispatch_once(&qword_1EAFE2840, &unk_1F0E29440);
        }

        v80 = qword_1EAFE2860;
        v81 = a2[23];
        v82 = *a2;
        v83 = sqlite3_errmsg(*(a1 + 8));
        if (v81 >= 0)
        {
          v84 = a2;
        }

        else
        {
          v84 = v82;
        }

        v87 = 136315394;
        v88 = v84;
        v89 = 2080;
        v90 = v83;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v80, 17, "Can't create index in %s: %s", &v87, 22);
        v26 = v85;
        sub_19B6BB7CC("Generic", 1, 0, 0, "CLPressureSampleDatabase::CLPressureSampleDatabase(const std::string &, const std::string &, const std::string &)", "CoreLocation: %s\n", v85);
        goto LABEL_32;
      }

      if (!sqlite3_prepare_v2(*(a1 + 8), "INSERT INTO PressureSample VALUES (?,?,?,?,?,?)", -1, v8, 0) && *v8)
      {
LABEL_151:
        sqlite3_finalize(pStmt);
        v27 = 1;
        goto LABEL_35;
      }

      if (qword_1EAFE2840 != -1)
      {
        dispatch_once(&qword_1EAFE2840, &unk_1F0E29440);
      }

      v49 = qword_1EAFE2860;
      if (os_log_type_enabled(qword_1EAFE2860, OS_LOG_TYPE_FAULT))
      {
        v50 = a2[23];
        v51 = *a2;
        v52 = sqlite3_errmsg(*(a1 + 8));
        if (v50 >= 0)
        {
          v53 = a2;
        }

        else
        {
          v53 = v51;
        }

        *buf = 136315394;
        v92 = v53;
        v93 = 2080;
        v94 = v52;
        _os_log_impl(&dword_19B41C000, v49, OS_LOG_TYPE_FAULT, "Can't create insert statment in %s: %s", buf, 0x16u);
      }

      v54 = sub_19B420058();
      if ((*(v54 + 160) & 0x80000000) != 0 && (*(v54 + 164) & 0x80000000) != 0 && (*(v54 + 168) & 0x80000000) != 0 && !*(v54 + 152))
      {
        goto LABEL_34;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2840 != -1)
      {
        dispatch_once(&qword_1EAFE2840, &unk_1F0E29440);
      }

      v42 = qword_1EAFE2860;
      v55 = a2[23];
      v56 = *a2;
      v45 = sqlite3_errmsg(*(a1 + 8));
      if (v55 >= 0)
      {
        v46 = a2;
      }

      else
      {
        v46 = v56;
      }
    }

    else
    {
      if (qword_1EAFE2840 != -1)
      {
        dispatch_once(&qword_1EAFE2840, &unk_1F0E29440);
      }

      v29 = qword_1EAFE2860;
      if (os_log_type_enabled(qword_1EAFE2860, OS_LOG_TYPE_INFO))
      {
        if (a2[23] >= 0)
        {
          v30 = a2;
        }

        else
        {
          v30 = *a2;
        }

        *buf = 136315138;
        v92 = v30;
        _os_log_impl(&dword_19B41C000, v29, OS_LOG_TYPE_INFO, "Found PressureSample table already in %s", buf, 0xCu);
      }

      v31 = sub_19B420058();
      if (*(v31 + 160) > 1 || *(v31 + 164) > 1 || *(v31 + 168) > 1 || *(v31 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2840 != -1)
        {
          dispatch_once(&qword_1EAFE2840, &unk_1F0E29440);
        }

        if (a2[23] >= 0)
        {
          v32 = a2;
        }

        else
        {
          v32 = *a2;
        }

        v87 = 136315138;
        v88 = v32;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2860, 1, "Found PressureSample table already in %s", &v87);
        v34 = v33;
        sub_19B6BB7CC("Generic", 1, 0, 2, "CLPressureSampleDatabase::CLPressureSampleDatabase(const std::string &, const std::string &, const std::string &)", "CoreLocation: %s\n", v33);
        if (v34 != buf)
        {
          free(v34);
        }
      }

      v35 = *(a3 + 23);
      if ((v35 & 0x80u) != 0)
      {
        v35 = *(a3 + 1);
      }

      if (!v35 || !sqlite3_prepare_v2(*(a1 + 8), "INSERT INTO PressureSample VALUES (?,?,?,?,?,?)", -1, v8, 0) && *v8)
      {
        goto LABEL_151;
      }

      if (qword_1EAFE2840 != -1)
      {
        dispatch_once(&qword_1EAFE2840, &unk_1F0E29440);
      }

      v36 = qword_1EAFE2860;
      if (os_log_type_enabled(qword_1EAFE2860, OS_LOG_TYPE_FAULT))
      {
        v37 = a2[23];
        v38 = *a2;
        v39 = sqlite3_errmsg(*(a1 + 8));
        if (v37 >= 0)
        {
          v40 = a2;
        }

        else
        {
          v40 = v38;
        }

        *buf = 136315394;
        v92 = v40;
        v93 = 2080;
        v94 = v39;
        _os_log_impl(&dword_19B41C000, v36, OS_LOG_TYPE_FAULT, "Can't create insert statment in %s: %s", buf, 0x16u);
      }

      v41 = sub_19B420058();
      if ((*(v41 + 160) & 0x80000000) != 0 && (*(v41 + 164) & 0x80000000) != 0 && (*(v41 + 168) & 0x80000000) != 0 && !*(v41 + 152))
      {
        goto LABEL_34;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2840 != -1)
      {
        dispatch_once(&qword_1EAFE2840, &unk_1F0E29440);
      }

      v42 = qword_1EAFE2860;
      v43 = a2[23];
      v44 = *a2;
      v45 = sqlite3_errmsg(*(a1 + 8));
      if (v43 >= 0)
      {
        v46 = a2;
      }

      else
      {
        v46 = v44;
      }
    }

    v87 = 136315394;
    v88 = v46;
    v89 = 2080;
    v90 = v45;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v42, 17, "Can't create insert statment in %s: %s", &v87, 22);
    v26 = v47;
    sub_19B6BB7CC("Generic", 1, 0, 0, "CLPressureSampleDatabase::CLPressureSampleDatabase(const std::string &, const std::string &, const std::string &)", "CoreLocation: %s\n", v47);
    goto LABEL_32;
  }

  if (qword_1EAFE2840 != -1)
  {
    dispatch_once(&qword_1EAFE2840, &unk_1F0E29440);
  }

  v14 = qword_1EAFE2860;
  if (os_log_type_enabled(qword_1EAFE2860, OS_LOG_TYPE_FAULT))
  {
    v15 = a2[23];
    v16 = *a2;
    v17 = sqlite3_errmsg(*(a1 + 8));
    if (v15 >= 0)
    {
      v18 = a2;
    }

    else
    {
      v18 = v16;
    }

    *buf = 136315394;
    v92 = v18;
    v93 = 2080;
    v94 = v17;
    _os_log_impl(&dword_19B41C000, v14, OS_LOG_TYPE_FAULT, "Can't open %s: %s", buf, 0x16u);
  }

  v19 = sub_19B420058();
  if ((*(v19 + 160) & 0x80000000) != 0 && (*(v19 + 164) & 0x80000000) != 0 && (*(v19 + 168) & 0x80000000) != 0 && !*(v19 + 152))
  {
    goto LABEL_34;
  }

  bzero(buf, 0x65CuLL);
  if (qword_1EAFE2840 != -1)
  {
    dispatch_once(&qword_1EAFE2840, &unk_1F0E29440);
  }

  v20 = qword_1EAFE2860;
  v21 = a2[23];
  v22 = *a2;
  v23 = sqlite3_errmsg(*(a1 + 8));
  if (v21 >= 0)
  {
    v24 = a2;
  }

  else
  {
    v24 = v22;
  }

  v87 = 136315394;
  v88 = v24;
  v89 = 2080;
  v90 = v23;
  _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v20, 17, "Can't open %s: %s", &v87, 22);
  v26 = v25;
  sub_19B6BB7CC("Generic", 1, 0, 0, "CLPressureSampleDatabase::CLPressureSampleDatabase(const std::string &, const std::string &, const std::string &)", "CoreLocation: %s\n", v25);
LABEL_32:
  if (v26 != buf)
  {
LABEL_33:
    free(v26);
  }

LABEL_34:
  sqlite3_finalize(pStmt);
  v27 = 0;
  *v8 = 0;
LABEL_35:
  *a1 = v27;
  return a1;
}

void sub_19B669784(_Unwind_Exception *exception_object)
{
  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  if (*(v1 + 47) < 0)
  {
    operator delete(*(v2 + 8));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B6697FC(uint64_t a1, const void **a2, uint64_t a3)
{
  v32 = *MEMORY[0x1E69E9840];
  ppStmt = 0;
  sub_19B428B50(&v26, "SELECT Timestamp, degC, kPa FROM PressureSample WHERE ");
  if ((*a1 & 1) == 0)
  {
    if (qword_1EAFE2840 != -1)
    {
      dispatch_once(&qword_1EAFE2840, &unk_1F0E29440);
    }

    v19 = qword_1EAFE2860;
    if (os_log_type_enabled(qword_1EAFE2860, OS_LOG_TYPE_FAULT))
    {
      LOWORD(__p) = 0;
      _os_log_impl(&dword_19B41C000, v19, OS_LOG_TYPE_FAULT, "Table PressureSample invalid", &__p, 2u);
    }

    v20 = sub_19B420058();
    if ((*(v20 + 160) & 0x80000000) != 0 && (*(v20 + 164) & 0x80000000) != 0 && (*(v20 + 168) & 0x80000000) != 0 && !*(v20 + 152))
    {
      goto LABEL_46;
    }

    bzero(&__p, 0x65CuLL);
    if (qword_1EAFE2840 != -1)
    {
      dispatch_once(&qword_1EAFE2840, &unk_1F0E29440);
    }

    LOWORD(v28) = 0;
    _os_log_send_and_compose_impl(2, 0, &__p, 1628, &dword_19B41C000, qword_1EAFE2860, 17, "Table PressureSample invalid", &v28, 2);
    v18 = v21;
    sub_19B6BB7CC("Generic", 1, 0, 0, "BOOL CLPressureSampleDatabase::iterate(const std::string &, CLPressureSampleDatabase::OnSample)", "CoreLocation: %s\n", v21);
    if (v18 == &__p)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  p_p = &__p;
  sub_19B50FF5C(&__p, v6 + 20);
  if ((v31 & 0x80u) != 0)
  {
    p_p = __p;
  }

  if (v6)
  {
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    memmove(p_p, v8, v6);
  }

  strcpy(p_p + v6, " ORDER BY CFTime ASC");
  if ((v31 & 0x80u) == 0)
  {
    v9 = &__p;
  }

  else
  {
    v9 = __p;
  }

  if ((v31 & 0x80u) == 0)
  {
    v10 = v31;
  }

  else
  {
    v10 = *(&__p + 1);
  }

  std::string::append(&v26, v9, v10);
  if (v31 < 0)
  {
    operator delete(__p);
  }

  if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = &v26;
  }

  else
  {
    v11 = v26.__r_.__value_.__r.__words[0];
  }

  if (!sqlite3_prepare_v2(*(a1 + 8), v11, -1, &ppStmt, 0))
  {
    while (sqlite3_step(ppStmt) == 100)
    {
      *&__p = sqlite3_column_double(ppStmt, 0);
      v24 = sqlite3_column_double(ppStmt, 1);
      *(&__p + 3) = v24;
      v25 = sqlite3_column_double(ppStmt, 2);
      *(&__p + 2) = v25;
      (*(a3 + 16))(a3, &__p);
    }

    v22 = 1;
    goto LABEL_47;
  }

  if (qword_1EAFE2840 != -1)
  {
    dispatch_once(&qword_1EAFE2840, &unk_1F0E29440);
  }

  v12 = qword_1EAFE2860;
  if (os_log_type_enabled(qword_1EAFE2860, OS_LOG_TYPE_FAULT))
  {
    v13 = sqlite3_errmsg(*(a1 + 8));
    LODWORD(__p) = 136315138;
    *(&__p + 4) = v13;
    _os_log_impl(&dword_19B41C000, v12, OS_LOG_TYPE_FAULT, "Can't create query %s", &__p, 0xCu);
  }

  v14 = sub_19B420058();
  if ((*(v14 + 160) & 0x80000000) == 0 || (*(v14 + 164) & 0x80000000) == 0 || (*(v14 + 168) & 0x80000000) == 0 || *(v14 + 152))
  {
    bzero(&__p, 0x65CuLL);
    if (qword_1EAFE2840 != -1)
    {
      dispatch_once(&qword_1EAFE2840, &unk_1F0E29440);
    }

    v15 = qword_1EAFE2860;
    v16 = sqlite3_errmsg(*(a1 + 8));
    v28 = 136315138;
    v29 = v16;
    _os_log_send_and_compose_impl(2, 0, &__p, 1628, &dword_19B41C000, v15, 17, "Can't create query %s", &v28);
    v18 = v17;
    sub_19B6BB7CC("Generic", 1, 0, 0, "BOOL CLPressureSampleDatabase::iterate(const std::string &, CLPressureSampleDatabase::OnSample)", "CoreLocation: %s\n", v17);
    if (v18 != &__p)
    {
LABEL_45:
      free(v18);
    }
  }

LABEL_46:
  v22 = 0;
LABEL_47:
  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  return v22;
}

void sub_19B669C8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ***sub_19B669CE4(void ***a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v4 = v2;
    sub_19B50FEB8(&v4);
    MEMORY[0x19EAE76F0](v2, 0x20C40960023A9);
  }

  return a1;
}

uint64_t sub_19B669D40(const char *a1, std::string::size_type a2, _WORD *a3)
{
  v140 = *MEMORY[0x1E69E9840];
  memset(buf, 0, sizeof(buf));
  memset(__p, 0, 24);
  sub_19B668A1C(v119, a1, buf, __p);
  if ((v119[0] & 1) == 0)
  {
    if (qword_1EAFE2840 != -1)
    {
      dispatch_once(&qword_1EAFE2840, &unk_1F0E29440);
    }

    v14 = qword_1EAFE2860;
    if (os_log_type_enabled(qword_1EAFE2860, OS_LOG_TYPE_FAULT))
    {
      if (a1[23] >= 0)
      {
        v15 = a1;
      }

      else
      {
        v15 = *a1;
      }

      *buf = 136315138;
      *&buf[4] = v15;
      _os_log_impl(&dword_19B41C000, v14, OS_LOG_TYPE_FAULT, "%s is invalid", buf, 0xCu);
    }

    v16 = sub_19B420058();
    if ((*(v16 + 160) & 0x80000000) == 0 || (*(v16 + 164) & 0x80000000) == 0 || (*(v16 + 168) & 0x80000000) == 0 || *(v16 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2840 != -1)
      {
        dispatch_once(&qword_1EAFE2840, &unk_1F0E29440);
      }

      if (a1[23] >= 0)
      {
        v17 = a1;
      }

      else
      {
        v17 = *a1;
      }

      LODWORD(__p[0]) = 136315138;
      *(__p + 4) = v17;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2860, 17, "%s is invalid", __p);
      v19 = v18;
      sub_19B6BB7CC("Generic", 1, 0, 0, "static BOOL CLPressureSampleDatabase::getPRTT(const std::string &, const std::string &, struct CLNonlinearPrtt::Syscfg &)", "CoreLocation: %s\n", v18);
      if (v19 != buf)
      {
        free(v19);
      }
    }

    v20 = 0;
    goto LABEL_282;
  }

  ppStmt = 0;
  sub_19B428B50(__p, "SELECT Run, MAX(degC) + MIN(degC) AS Midx2, MAX(degC) - MIN(degC) AS Range FROM PressureSample GROUP BY Run HAVING Range > 5 ORDER BY Midx2");
  v111 = a3;
  if (v119[0])
  {
    if (SHIBYTE(__p[2]) >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    if (!sqlite3_prepare_v2(db, v6, -1, &ppStmt, 0))
    {
      operator new();
    }

    if (qword_1EAFE2840 != -1)
    {
      dispatch_once(&qword_1EAFE2840, &unk_1F0E29440);
    }

    v7 = qword_1EAFE2860;
    if (os_log_type_enabled(qword_1EAFE2860, OS_LOG_TYPE_FAULT))
    {
      v8 = sqlite3_errmsg(db);
      *buf = 136315138;
      *&buf[4] = v8;
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_FAULT, "Can't create query %s", buf, 0xCu);
    }

    v9 = sub_19B420058();
    if ((*(v9 + 160) & 0x80000000) != 0 && (*(v9 + 164) & 0x80000000) != 0 && (*(v9 + 168) & 0x80000000) != 0 && !*(v9 + 152))
    {
      goto LABEL_47;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2840 != -1)
    {
      dispatch_once(&qword_1EAFE2840, &unk_1F0E29440);
    }

    v10 = qword_1EAFE2860;
    v11 = sqlite3_errmsg(db);
    v132 = 136315138;
    *v133 = v11;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v10, 17, "Can't create query %s", &v132);
    v13 = v12;
    sub_19B6BB7CC("Generic", 1, 0, 0, "std::unique_ptr<std::vector<std::string>> CLPressureSampleDatabase::findRuns()", "CoreLocation: %s\n", v12);
  }

  else
  {
    if (qword_1EAFE2840 != -1)
    {
      dispatch_once(&qword_1EAFE2840, &unk_1F0E29440);
    }

    v21 = qword_1EAFE2860;
    if (os_log_type_enabled(qword_1EAFE2860, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      *&buf[4] = "PressureSample";
      _os_log_impl(&dword_19B41C000, v21, OS_LOG_TYPE_FAULT, "Table %s invalid", buf, 0xCu);
    }

    v22 = sub_19B420058();
    if ((*(v22 + 160) & 0x80000000) != 0 && (*(v22 + 164) & 0x80000000) != 0 && (*(v22 + 168) & 0x80000000) != 0 && !*(v22 + 152))
    {
      goto LABEL_47;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2840 != -1)
    {
      dispatch_once(&qword_1EAFE2840, &unk_1F0E29440);
    }

    v132 = 136315138;
    *v133 = "PressureSample";
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2860, 17, "Table %s invalid", &v132);
    v13 = v23;
    sub_19B6BB7CC("Generic", 1, 0, 0, "std::unique_ptr<std::vector<std::string>> CLPressureSampleDatabase::findRuns()", "CoreLocation: %s\n", v23);
  }

  if (v13 != buf)
  {
    free(v13);
  }

LABEL_47:
  v118 = 0;
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  v24 = v118;
  v25 = a3;
  if (v118)
  {
    v117[0] = 0;
    v117[1] = 0;
    ppStmt = v117;
    *a3 = xmmword_19B7BABD0;
    *(a3 + 4) = -1;
    v110 = a3 + 8;
    v112 = a3 + 10;
    memset_pattern16(a3 + 10, &unk_19B7BD3F0, 0xCAuLL);
    v132 = 0;
    *&v133[4] = 0u;
    v134 = 0u;
    v135 = 0u;
    v137[0] = 0;
    v136 = v137;
    v138[1] = 0;
    v138[0] = 0;
    v137[1] = 0;
    v137[2] = v138;
    v138[2] = 0x6400000000;
    v26 = *v24;
    v114 = v24[1];
    if (*v24 != v114)
    {
      v113 = 0;
      while (1)
      {
        sub_19B428B50(&v131, "RUN=");
        if (*(v26 + 23) >= 0)
        {
          v27 = *(v26 + 23);
        }

        else
        {
          v27 = v26[1];
        }

        sub_19B50FF5C(buf, v27 + 1);
        if ((buf[23] & 0x80u) == 0)
        {
          v28 = buf;
        }

        else
        {
          v28 = *buf;
        }

        if (v27)
        {
          if (*(v26 + 23) >= 0)
          {
            v29 = v26;
          }

          else
          {
            v29 = *v26;
          }

          memmove(v28, v29, v27);
        }

        *&v28[v27] = 34;
        if ((buf[23] & 0x80u) == 0)
        {
          v30 = buf;
        }

        else
        {
          v30 = *buf;
        }

        if ((buf[23] & 0x80u) == 0)
        {
          v31 = buf[23];
        }

        else
        {
          v31 = *&buf[8];
        }

        std::string::append(&v131, v30, v31);
        if (buf[23] < 0)
        {
          operator delete(*buf);
        }

        if (qword_1EAFE2840 != -1)
        {
          dispatch_once(&qword_1EAFE2840, &unk_1F0E29440);
        }

        v32 = qword_1EAFE2860;
        if (os_log_type_enabled(qword_1EAFE2860, OS_LOG_TYPE_DEBUG))
        {
          v33 = &v131;
          if ((v131.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v33 = v131.__r_.__value_.__r.__words[0];
          }

          *buf = 136315138;
          *&buf[4] = v33;
          _os_log_impl(&dword_19B41C000, v32, OS_LOG_TYPE_DEBUG, "Calculating PRTT median for %s", buf, 0xCu);
        }

        v34 = sub_19B420058();
        if (*(v34 + 160) > 1 || *(v34 + 164) > 1 || *(v34 + 168) > 1 || *(v34 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2840 != -1)
          {
            dispatch_once(&qword_1EAFE2840, &unk_1F0E29440);
          }

          v35 = &v131;
          if ((v131.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v35 = v131.__r_.__value_.__r.__words[0];
          }

          LODWORD(__p[0]) = 136315138;
          *(__p + 4) = v35;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2860, 2, "Calculating PRTT median for %s", __p);
          v37 = v36;
          sub_19B6BB7CC("Generic", 1, 0, 2, "static BOOL CLPressureSampleDatabase::getPRTT(const std::string &, const std::string &, struct CLNonlinearPrtt::Syscfg &)", "CoreLocation: %s\n", v36);
          if (v37 != buf)
          {
            free(v37);
          }
        }

        sub_19B6C31F4(&v132);
        v115[0] = MEMORY[0x1E69E9820];
        v115[1] = 3221225472;
        v115[2] = sub_19B66B6DC;
        v115[3] = &unk_1E7533C78;
        v115[4] = &v132;
        if ((sub_19B6697FC(v119, &v131.__r_.__value_.__l.__data_, v115) & 1) == 0)
        {
          if (qword_1EAFE2840 != -1)
          {
            dispatch_once(&qword_1EAFE2840, &unk_1F0E29440);
          }

          v41 = qword_1EAFE2860;
          if (os_log_type_enabled(qword_1EAFE2860, OS_LOG_TYPE_FAULT))
          {
            if (a1[23] >= 0)
            {
              v42 = a1;
            }

            else
            {
              v42 = *a1;
            }

            v43 = &v131;
            if ((v131.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v43 = v131.__r_.__value_.__r.__words[0];
            }

            *buf = 136315394;
            *&buf[4] = v42;
            *&buf[12] = 2080;
            *&buf[14] = v43;
            _os_log_impl(&dword_19B41C000, v41, OS_LOG_TYPE_FAULT, "Problem running through %s for %s", buf, 0x16u);
          }

          v44 = sub_19B420058();
          if ((*(v44 + 160) & 0x80000000) == 0 || (*(v44 + 164) & 0x80000000) == 0 || (*(v44 + 168) & 0x80000000) == 0 || *(v44 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE2840 != -1)
            {
              dispatch_once(&qword_1EAFE2840, &unk_1F0E29440);
            }

            if (a1[23] >= 0)
            {
              v45 = a1;
            }

            else
            {
              v45 = *a1;
            }

            v46 = &v131;
            if ((v131.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v46 = v131.__r_.__value_.__r.__words[0];
            }

            LODWORD(__p[0]) = 136315394;
            *(__p + 4) = v45;
            WORD2(__p[1]) = 2080;
            *(&__p[1] + 6) = v46;
            LODWORD(v109) = 22;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2860, 17, "Problem running through %s for %s", __p, v109);
            v48 = v47;
            sub_19B6BB7CC("Generic", 1, 0, 0, "static BOOL CLPressureSampleDatabase::getPRTT(const std::string &, const std::string &, struct CLNonlinearPrtt::Syscfg &)", "CoreLocation: %s\n", v47);
            if (v48 != buf)
            {
              free(v48);
            }
          }

          v49 = 0;
          goto LABEL_179;
        }

        sub_19B6C10B8(&v132, 4, __p);
        if ((v125 & 1) == 0)
        {
          if (qword_1EAFE2840 != -1)
          {
            dispatch_once(&qword_1EAFE2840, &unk_1F0E29440);
          }

          v50 = qword_1EAFE2860;
          if (os_log_type_enabled(qword_1EAFE2860, OS_LOG_TYPE_FAULT))
          {
            v51 = &v131;
            if ((v131.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v51 = v131.__r_.__value_.__r.__words[0];
            }

            *buf = 136315138;
            *&buf[4] = v51;
            _os_log_impl(&dword_19B41C000, v50, OS_LOG_TYPE_FAULT, "Invalid stat for run %s", buf, 0xCu);
          }

          v52 = sub_19B420058();
          if ((*(v52 + 160) & 0x80000000) == 0 || (*(v52 + 164) & 0x80000000) == 0 || (*(v52 + 168) & 0x80000000) == 0 || *(v52 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE2840 != -1)
            {
              dispatch_once(&qword_1EAFE2840, &unk_1F0E29440);
            }

            v53 = &v131;
            if ((v131.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v53 = v131.__r_.__value_.__r.__words[0];
            }

            LODWORD(v123[0]) = 136315138;
            *(v123 + 4) = v53;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2860, 17, "Invalid stat for run %s", v123);
            v55 = v54;
            sub_19B6BB7CC("Generic", 1, 0, 0, "static BOOL CLPressureSampleDatabase::getPRTT(const std::string &, const std::string &, struct CLNonlinearPrtt::Syscfg &)", "CoreLocation: %s\n", v54);
            if (v55 != buf)
            {
              free(v55);
            }
          }

          v49 = 0;
          goto LABEL_178;
        }

        v38 = *(__p + 1);
        v40 = v111 + 7;
        v39 = v111 + 4;
        if (!v113)
        {
          goto LABEL_132;
        }

        if (v113 == 2)
        {
          break;
        }

        v39 = v111 + 5;
        v40 = v110;
        if (v113 == 1)
        {
          goto LABEL_132;
        }

LABEL_133:
        memset(v123, 0, 24);
        v56 = v127;
        v57 = v128;
        v58 = (v127 + 8 * (v129 >> 9));
        if (v128 == v127)
        {
          v59 = 0;
        }

        else
        {
          v59 = (*v58 + 8 * (v129 & 0x1FF));
        }

        while (1)
        {
          v63 = v57 == v56 ? 0 : *(v56 + (((v130 + v129) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v130 + v129) & 0x1FF);
          if (v59 == v63)
          {
            break;
          }

          v121 = v59[1];
          *buf = &v121;
          v60 = sub_19B66BA20(&ppStmt, v121, buf);
          for (i = v60[5]; i != v60[6]; ++i)
          {
            *buf = *v59 - *i;
            sub_19B5C706C(v123, buf);
          }

          v59 += 2;
          if ((v59 - *v58) == 4096)
          {
            v62 = v58[1];
            ++v58;
            v59 = v62;
          }

          v56 = v127;
          v57 = v128;
        }

        if (v123[1] == v123[0])
        {
          if (v113)
          {
            if (qword_1EAFE2840 != -1)
            {
              dispatch_once(&qword_1EAFE2840, &unk_1F0E29440);
            }

            v67 = qword_1EAFE2860;
            if (os_log_type_enabled(qword_1EAFE2860, OS_LOG_TYPE_FAULT))
            {
              v68 = &v131;
              if ((v131.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v68 = v131.__r_.__value_.__r.__words[0];
              }

              *buf = 136315138;
              *&buf[4] = v68;
              _os_log_impl(&dword_19B41C000, v67, OS_LOG_TYPE_FAULT, "Cannot align run %s to previous runs", buf, 0xCu);
            }

            v69 = sub_19B420058();
            if ((*(v69 + 160) & 0x80000000) == 0 || (*(v69 + 164) & 0x80000000) == 0 || (*(v69 + 168) & 0x80000000) == 0 || *(v69 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1EAFE2840 != -1)
              {
                dispatch_once(&qword_1EAFE2840, &unk_1F0E29440);
              }

              v70 = &v131;
              if ((v131.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v70 = v131.__r_.__value_.__r.__words[0];
              }

              v121 = 136315138;
              v122 = v70;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2860, 17, "Cannot align run %s to previous runs", &v121);
              v72 = v71;
              sub_19B6BB7CC("Generic", 1, 0, 0, "static BOOL CLPressureSampleDatabase::getPRTT(const std::string &, const std::string &, struct CLNonlinearPrtt::Syscfg &)", "CoreLocation: %s\n", v71);
              if (v72 != buf)
              {
                free(v72);
              }
            }

            v49 = 0;
            goto LABEL_176;
          }

          v64 = 0.0;
        }

        else
        {
          v64 = sub_19B66BB08(v123[0], v123[1]);
          v56 = v127;
          v57 = v128;
        }

        v65 = (v56 + 8 * (v129 >> 9));
        if (v57 == v56)
        {
          v66 = 0;
        }

        else
        {
          v66 = (*v65 + 8 * (v129 & 0x1FF));
        }

        while (1)
        {
          v75 = v57 == v56 ? 0 : *(v56 + (((v130 + v129) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v130 + v129) & 0x1FF);
          if (v66 == v75)
          {
            break;
          }

          v121 = v66[1];
          *buf = &v121;
          v73 = sub_19B66BA20(&ppStmt, v121, buf);
          *buf = *v66 - v64;
          sub_19B5C706C(v73 + 5, buf);
          v66 += 2;
          if ((v66 - *v65) == 4096)
          {
            v74 = v65[1];
            ++v65;
            v66 = v74;
          }

          v56 = v127;
          v57 = v128;
        }

        ++v113;
        v49 = 1;
LABEL_176:
        if (v123[0])
        {
          v123[1] = v123[0];
          operator delete(v123[0]);
        }

LABEL_178:
        sub_19B66B918(&v126);
LABEL_179:
        if (SHIBYTE(v131.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v131.__r_.__value_.__l.__data_);
        }

        if ((v49 & 1) == 0)
        {
          v20 = 0;
          goto LABEL_280;
        }

        v26 += 3;
        if (v26 == v114)
        {
          v85 = ppStmt;
          __p[1] = 0;
          __p[2] = 0;
          __p[0] = &__p[1];
          v84 = 3.4028e38;
          if (ppStmt == v117)
          {
            v25 = v111;
          }

          else
          {
            v25 = v111;
            do
            {
              v86 = sub_19B66BB08(*(v85 + 5), *(v85 + 6));
              v87 = __p[1];
              if (!__p[1])
              {
LABEL_226:
                operator new();
              }

              v88 = *(v85 + 8);
              while (1)
              {
                while (1)
                {
                  v89 = v87;
                  v90 = v87[7];
                  if (v90 <= v88)
                  {
                    break;
                  }

                  v87 = *v89;
                  if (!*v89)
                  {
                    goto LABEL_226;
                  }
                }

                if (v90 >= v88)
                {
                  break;
                }

                v87 = *(v89 + 1);
                if (!v87)
                {
                  goto LABEL_226;
                }
              }

              *(v89 + 8) = v86;
              if (v86 < v84)
              {
                v84 = v86;
              }

              v91 = *(v85 + 1);
              if (v91)
              {
                do
                {
                  v92 = v91;
                  v91 = *v91;
                }

                while (v91);
              }

              else
              {
                do
                {
                  v92 = *(v85 + 2);
                  v93 = *v92 == v85;
                  v85 = v92;
                }

                while (!v93);
              }

              v85 = v92;
            }

            while (v92 != v117);
          }

          goto LABEL_238;
        }
      }

      v40 = v111 + 9;
      v39 = v111 + 6;
LABEL_132:
      *v39 = vcvts_n_s32_f32(*__p * 1000.0, 8uLL);
      *v40 = vcvts_n_s32_f32(v38 * 1000.0, 8uLL);
      goto LABEL_133;
    }

    __p[1] = 0;
    __p[2] = 0;
    __p[0] = &__p[1];
    v84 = 3.4028e38;
LABEL_238:
    if (qword_1EAFE2840 != -1)
    {
      dispatch_once(&qword_1EAFE2840, &unk_1F0E29440);
    }

    v94 = qword_1EAFE2860;
    if (os_log_type_enabled(qword_1EAFE2860, OS_LOG_TYPE_DEBUG))
    {
      if (*(a2 + 23) >= 0)
      {
        v95 = a2;
      }

      else
      {
        v95 = *a2;
      }

      *buf = 134218242;
      *&buf[4] = v84;
      *&buf[12] = 2080;
      *&buf[14] = v95;
      _os_log_impl(&dword_19B41C000, v94, OS_LOG_TYPE_DEBUG, "min kPa = %f for %s", buf, 0x16u);
    }

    v96 = sub_19B420058();
    if (*(v96 + 160) > 1 || *(v96 + 164) > 1 || *(v96 + 168) > 1 || *(v96 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2840 != -1)
      {
        dispatch_once(&qword_1EAFE2840, &unk_1F0E29440);
      }

      if (*(a2 + 23) >= 0)
      {
        v97 = a2;
      }

      else
      {
        v97 = *a2;
      }

      LODWORD(v131.__r_.__value_.__l.__data_) = 134218242;
      *(v131.__r_.__value_.__r.__words + 4) = v84;
      WORD2(v131.__r_.__value_.__r.__words[1]) = 2080;
      *(&v131.__r_.__value_.__r.__words[1] + 6) = v97;
      LODWORD(v109) = 22;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2860, 2, "min kPa = %f for %s", COERCE_DOUBLE(&v131), v109);
      v99 = v98;
      sub_19B6BB7CC("Generic", 1, 0, 2, "static BOOL CLPressureSampleDatabase::getPRTT(const std::string &, const std::string &, struct CLNonlinearPrtt::Syscfg &)", "CoreLocation: %s\n", v98);
      if (v99 != buf)
      {
        free(v99);
      }
    }

    v25[1] = vcvts_n_s32_f32(v84, 8uLL);
    v100 = __p[0];
    if (__p[0] != &__p[1])
    {
      do
      {
        v101 = *(v100 + 7);
        if (v101 < 0x64)
        {
          v112[v101] = vcvts_n_s32_f32((*(v100 + 8) - v84) * 1000.0, 6uLL);
        }

        else
        {
          if (qword_1EAFE2840 != -1)
          {
            dispatch_once(&qword_1EAFE2840, &unk_1F0E29440);
          }

          v102 = qword_1EAFE2860;
          if (os_log_type_enabled(qword_1EAFE2860, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            *&buf[4] = v101;
            _os_log_impl(&dword_19B41C000, v102, OS_LOG_TYPE_ERROR, "No bin for %d; dropping", buf, 8u);
          }

          v103 = sub_19B420058();
          if ((*(v103 + 160) & 0x80000000) == 0 || (*(v103 + 164) & 0x80000000) == 0 || (*(v103 + 168) & 0x80000000) == 0 || *(v103 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE2840 != -1)
            {
              dispatch_once(&qword_1EAFE2840, &unk_1F0E29440);
            }

            LODWORD(v131.__r_.__value_.__l.__data_) = 67109120;
            HIDWORD(v131.__r_.__value_.__r.__words[0]) = v101;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2860, 16, "No bin for %d; dropping", &v131);
            v105 = v104;
            sub_19B6BB7CC("Generic", 1, 0, 0, "static BOOL CLPressureSampleDatabase::getPRTT(const std::string &, const std::string &, struct CLNonlinearPrtt::Syscfg &)", "CoreLocation: %s\n", v104);
            if (v105 != buf)
            {
              free(v105);
            }
          }
        }

        v106 = v100[1];
        if (v106)
        {
          do
          {
            v107 = v106;
            v106 = *v106;
          }

          while (v106);
        }

        else
        {
          do
          {
            v107 = v100[2];
            v93 = *v107 == v100;
            v100 = v107;
          }

          while (!v93);
        }

        v100 = v107;
      }

      while (v107 != &__p[1]);
    }

    sub_19B66BF24(__p[1]);
    v20 = 1;
LABEL_280:
    sub_19B6C1074(&v132);
    sub_19B66B9C4(v117[0]);
  }

  else
  {
    if (qword_1EAFE2840 != -1)
    {
      dispatch_once(&qword_1EAFE2840, &unk_1F0E29440);
    }

    v76 = qword_1EAFE2860;
    if (os_log_type_enabled(qword_1EAFE2860, OS_LOG_TYPE_FAULT))
    {
      if (a1[23] >= 0)
      {
        v77 = a1;
      }

      else
      {
        v77 = *a1;
      }

      if (*(a2 + 23) >= 0)
      {
        v78 = a2;
      }

      else
      {
        v78 = *a2;
      }

      *buf = 136315394;
      *&buf[4] = v77;
      *&buf[12] = 2080;
      *&buf[14] = v78;
      _os_log_impl(&dword_19B41C000, v76, OS_LOG_TYPE_FAULT, "%s has no runs for clause %s", buf, 0x16u);
    }

    v79 = sub_19B420058();
    if ((*(v79 + 160) & 0x80000000) == 0 || (*(v79 + 164) & 0x80000000) == 0 || (*(v79 + 168) & 0x80000000) == 0 || *(v79 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2840 != -1)
      {
        dispatch_once(&qword_1EAFE2840, &unk_1F0E29440);
      }

      if (a1[23] >= 0)
      {
        v80 = a1;
      }

      else
      {
        v80 = *a1;
      }

      if (*(a2 + 23) >= 0)
      {
        v81 = a2;
      }

      else
      {
        v81 = *a2;
      }

      LODWORD(__p[0]) = 136315394;
      *(__p + 4) = v80;
      WORD2(__p[1]) = 2080;
      *(&__p[1] + 6) = v81;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2860, 17, "%s has no runs for clause %s", __p, 22);
      v83 = v82;
      sub_19B6BB7CC("Generic", 1, 0, 0, "static BOOL CLPressureSampleDatabase::getPRTT(const std::string &, const std::string &, struct CLNonlinearPrtt::Syscfg &)", "CoreLocation: %s\n", v82);
      if (v83 != buf)
      {
        free(v83);
      }
    }

    v20 = 0;
  }

  sub_19B669CE4(&v118);
LABEL_282:
  sub_19B66882C(v119);
  return v20;
}

void sub_19B66B590(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, __int16 a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, uint64_t a52, void *__p, uint64_t a54, int a55, __int16 a56, char a57, char a58)
{
  if (a58 < 0)
  {
    operator delete(__p);
  }

  sub_19B66882C(&a38);
  _Unwind_Resume(a1);
}

void sub_19B66B6DC(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2840 != -1)
  {
    dispatch_once(&qword_1EAFE2840, &unk_1F0E29440);
  }

  v4 = qword_1EAFE2860;
  if (os_log_type_enabled(qword_1EAFE2860, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a2 + 12);
    v6 = *(a2 + 8);
    *buf = 134218240;
    v18 = v5;
    v19 = 2048;
    v20 = v6;
    _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_DEBUG, "Feeding %f %f to median estimator", buf, 0x16u);
  }

  v7 = sub_19B420058();
  if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2840 != -1)
    {
      dispatch_once(&qword_1EAFE2840, &unk_1F0E29440);
    }

    v8 = *(a2 + 12);
    v9 = *(a2 + 8);
    v13 = 134218240;
    v14 = v8;
    v15 = 2048;
    v16 = v9;
    LODWORD(v12) = 22;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2860, 2, "Feeding %f %f to median estimator", COERCE_DOUBLE(&v13), v12);
    v11 = v10;
    sub_19B6BB7CC("Generic", 1, 0, 2, "static BOOL CLPressureSampleDatabase::getPRTT(const std::string &, const std::string &, struct CLNonlinearPrtt::Syscfg &)_block_invoke", "CoreLocation: %s\n", v10);
    if (v11 != buf)
    {
      free(v11);
    }
  }

  sub_19B6C23F4(*(a1 + 32), a2);
}

os_log_t sub_19B66B8E8()
{
  result = os_log_create("com.apple.locationd.Motion", "Pressure");
  qword_1EAFE2860 = result;
  return result;
}

uint64_t sub_19B66B918(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 256;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 512;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return sub_19B42AD10(a1);
}

void sub_19B66B9C4(void *a1)
{
  if (a1)
  {
    sub_19B66B9C4(*a1);
    sub_19B66B9C4(a1[1]);
    v2 = a1[5];
    if (v2)
    {
      a1[6] = v2;
      operator delete(v2);
    }

    operator delete(a1);
  }
}

uint64_t *sub_19B66BA20(uint64_t **a1, int a2, _DWORD **a3)
{
  v3 = a1[1];
  if (!v3)
  {
LABEL_8:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v3;
      v5 = *(v3 + 8);
      if (v5 <= a2)
      {
        break;
      }

      v3 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= a2)
    {
      return v4;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }
}

float sub_19B66BB08(float *a1, float *a2)
{
  v2 = a2 - a1;
  if (a2 - a1 <= 3)
  {
    __assert_rtn("getMedianInPlace", "CMPressureUtilities.h", 172, "size > 0");
  }

  v3 = a1;
  v4 = (v2 >> 1) & 0x3FFFFFFFFFFFFFFCLL;
  v5 = (a1 + v4);
  if ((a1 + v4) != a2)
  {
    sub_19B66BBE4(a1, (a1 + v4), a2);
  }

  if ((v2 & 4) != 0)
  {
    return *v5;
  }

  if (v4)
  {
    v6 = v3 + 1;
    if (v3 + 1 != v5)
    {
      v7 = *v3;
      v8 = v3 + 1;
      do
      {
        v9 = *v8++;
        v10 = v9;
        if (v7 < v9)
        {
          v7 = v10;
          v3 = v6;
        }

        v6 = v8;
      }

      while (v8 != v5);
    }
  }

  return *v3 + ((*v5 - *v3) * 0.5);
}

float *sub_19B66BBE4(float *result, float *a2, float *a3)
{
  while (a3 != a2)
  {
    v3 = a3 - result;
    if (v3 < 2)
    {
      break;
    }

    if (v3 == 3)
    {
      v41 = result[1];
      v42 = *(a3 - 1);
      if (v41 < v42)
      {
        v43 = *(result + 1);
      }

      else
      {
        v43 = *(a3 - 1);
      }

      if (v41 < v42)
      {
        v41 = *(a3 - 1);
      }

      *(a3 - 1) = v41;
      *(result + 1) = v43;
      v44 = *(a3 - 1);
      if (v44 < *result)
      {
        v45 = *(a3 - 1);
      }

      else
      {
        v45 = *result;
      }

      if (v44 < *result)
      {
        v44 = *result;
      }

      *(a3 - 1) = v44;
      v46 = result[1];
      if (v45 < v46)
      {
        v45 = result[1];
      }

      else
      {
        *result = v46;
      }

      result[1] = v45;
      return result;
    }

    if (v3 == 2)
    {
      v47 = *(a3 - 1);
      v48 = *result;
      if (v47 < *result)
      {
        *result = v47;
        *(a3 - 1) = v48;
      }

      return result;
    }

    if (v3 <= 7)
    {
      return sub_19B66BEB0(result, a3);
    }

    v4 = &result[(a3 - result) >> 3];
    v5 = a3 - 1;
    v6 = *(a3 - 1);
    v7 = *v4;
    if (*v4 < v6)
    {
      v8 = *v4;
    }

    else
    {
      v8 = *(a3 - 1);
    }

    if (*v4 < v6)
    {
      v9 = *(a3 - 1);
    }

    else
    {
      v9 = *v4;
    }

    *v5 = v9;
    *v4 = v8;
    v10 = *v5;
    v11 = *result;
    if (*v5 < *result)
    {
      v12 = *v5;
    }

    else
    {
      v12 = *result;
    }

    if (*v5 < *result)
    {
      v13 = *result;
    }

    else
    {
      v13 = *v5;
    }

    *v5 = v13;
    v14 = *v4;
    v15 = *v4;
    if (v12 >= *v4)
    {
      *result = v14;
      v15 = v12;
    }

    v16 = v10 >= v11;
    if (v12 >= v14)
    {
      v16 = 1;
    }

    *v4 = v15;
    if (v7 >= v6)
    {
      v16 = 1;
    }

    v17 = *result;
    if (*result >= v15)
    {
      v18 = a3 - 1;
      while (--v18 != result)
      {
        if (*v18 < v15)
        {
          *result = *v18;
          *v18 = v17;
          if (v16)
          {
            v16 = 2;
          }

          else
          {
            v16 = 1;
          }

          goto LABEL_33;
        }
      }

      v30 = result + 1;
      if (v17 >= *v5)
      {
        while (v30 != v5)
        {
          v31 = *v30;
          if (v17 < *v30)
          {
            *v30++ = *v5;
            *v5 = v31;
            goto LABEL_65;
          }

          ++v30;
        }

        return result;
      }

LABEL_65:
      if (v30 == v5)
      {
        return result;
      }

      while (1)
      {
        v35 = *result;
        do
        {
          v36 = *v30++;
          v37 = v36;
        }

        while (v35 >= v36);
        v38 = v30 - 1;
        do
        {
          v39 = *--v5;
          v40 = v39;
        }

        while (v35 < v39);
        if (v38 >= v5)
        {
          break;
        }

        *v38 = v40;
        *v5 = v37;
      }

      result = v30 - 1;
      if (v38 > a2)
      {
        return result;
      }
    }

    else
    {
      v18 = a3 - 1;
LABEL_33:
      v19 = result + 1;
      if (result + 1 >= v18)
      {
        v24 = result + 1;
      }

      else
      {
        v20 = result + 1;
        while (1)
        {
          v21 = *v4;
          do
          {
            v22 = *v20++;
            v23 = v22;
          }

          while (v22 < v21);
          v24 = v20 - 1;
          do
          {
            v25 = *--v18;
            v26 = v25;
          }

          while (v25 >= v21);
          if (v24 >= v18)
          {
            break;
          }

          *v24 = v26;
          *v18 = v23;
          ++v16;
          if (v24 == v4)
          {
            v4 = v18;
          }
        }
      }

      if (v24 != v4)
      {
        v27 = *v24;
        if (*v4 < *v24)
        {
          *v24 = *v4;
          *v4 = v27;
          ++v16;
        }
      }

      if (v24 == a2)
      {
        return result;
      }

      if (!v16)
      {
        if (v24 <= a2)
        {
          v32 = v24 + 1;
          while (v32 != a3)
          {
            v34 = *(v32 - 1);
            v33 = *v32++;
            if (v33 < v34)
            {
              goto LABEL_49;
            }
          }
        }

        else
        {
          while (v19 != v24)
          {
            v29 = *(v19 - 1);
            v28 = *v19++;
            if (v28 < v29)
            {
              goto LABEL_49;
            }
          }
        }

        return result;
      }

LABEL_49:
      if (v24 <= a2)
      {
        result = v24 + 1;
      }

      else
      {
        a3 = v24;
      }
    }
  }

  return result;
}

float *sub_19B66BEB0(float *result, float *a2)
{
  while (result != a2 - 1)
  {
    v2 = result++;
    if (v2 != a2 && result != a2)
    {
      v3 = *v2;
      v4 = *v2;
      v5 = result;
      v6 = v2;
      v7 = result;
      do
      {
        v8 = *v7++;
        v9 = v8;
        if (v8 < v4)
        {
          v4 = v9;
          v6 = v5;
        }

        v5 = v7;
      }

      while (v7 != a2);
      if (v6 != v2)
      {
        *v2 = *v6;
        *v6 = v3;
      }
    }
  }

  return result;
}

void sub_19B66BF24(void *a1)
{
  if (a1)
  {
    sub_19B66BF24(*a1);
    sub_19B66BF24(a1[1]);

    operator delete(a1);
  }
}

float32_t sub_19B66BF70(uint64_t a1, float *a2, float32x4_t a3)
{
  v3 = *(a1 + 8);
  a3.i32[0] = *(a1 + 12);
  v4 = a2[1];
  v5 = *(a1 + 4);
  v6 = a2[2];
  v7 = a2[3];
  *&v8 = (((v3 * v4) + (a3.f32[0] * *a2)) - (v5 * v6)) + (*a1 * v7);
  *&v9 = (((a3.f32[0] * v4) - (v3 * *a2)) + (*a1 * v6)) + (v5 * v7);
  *&v10 = (((v5 * *a2) - (*a1 * v4)) + (a3.f32[0] * v6)) + (v3 * v7);
  v11 = (-(v5 * v4) - (*a1 * *a2)) - (v3 * v6);
  v13.i64[0] = __PAIR64__(v9, v8);
  a3.f32[0] = v11 + (a3.f32[0] * v7);
  v13.i64[1] = __PAIR64__(a3.u32[0], v10);
  sub_19B41E130(&v13, a3);
  return v13.f32[0];
}

float32_t sub_19B66BFF4(float32x2_t *a1, float32x4_t a2)
{
  v2 = a1[1].i32[1];
  a2.f32[0] = -a1[1].f32[0];
  *v4.f32 = vneg_f32(*a1);
  v4.i64[1] = __PAIR64__(v2, a2.u32[0]);
  sub_19B41E130(&v4, a2);
  return v4.f32[0];
}

float32_t sub_19B66C038(float32x4_t *a1)
{
  v2 = vnegq_f32(*a1);
  sub_19B41E130(&v2, v2);
  return v2.f32[0];
}

float32_t sub_19B66C070(float32x4_t *a1)
{
  if (a1->f32[3] >= 0.0)
  {
    return a1->f32[0];
  }

  else
  {
    return sub_19B66C038(a1);
  }
}

float32_t sub_19B66C0A4(float32x2_t *a1, uint64_t a2, float32x4_t a3)
{
  v4.f32[0] = sub_19B66BFF4(a1, a3);
  v12[0] = v4.f32[0];
  v12[1] = v5;
  v12[2] = v6;
  v12[3] = v7;
  v13.i32[0] = sub_19B66BF70(a2, v12, v4);
  *(v13.i64 + 4) = __PAIR64__(v9, v8);
  v13.i32[3] = v10;
  return sub_19B66C070(&v13);
}

float sub_19B66C0F4(float *a1)
{
  v1 = 0;
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  result = (((*a1 * *a1) + (v3 * v3)) * 2.0) + -1.0;
  v6 = ((*a1 * v2) - (v3 * v4)) + ((*a1 * v2) - (v3 * v4));
  v7 = ((v3 * v2) + (*a1 * v4)) + ((v3 * v2) + (*a1 * v4));
  v11[0] = result;
  v11[1] = v6;
  v11[2] = v7;
  v8 = 0.0;
  do
  {
    v8 = v8 + (v11[v1] * v11[v1]);
    ++v1;
  }

  while (v1 != 3);
  if (sqrtf(v8) > 0.00000011921)
  {
    v9 = 0;
    v10 = 0.0;
    do
    {
      v10 = v10 + (v11[v9] * v11[v9]);
      ++v9;
    }

    while (v9 != 3);
    return result / sqrtf(v10);
  }

  return result;
}

float sub_19B66C1A4(float *a1, float a2, float a3, float a4)
{
  v5[0] = a2;
  v5[1] = a3;
  v5[2] = a4;
  sub_19B66D368(a1, v6, 1.0);
  return sub_19B61AD14(v6, v5);
}

void sub_19B66C1E0(float *a1, uint64_t a2)
{
  sub_19B66D368(a1, v5, -1.0);
  *a2 = sub_19B61AD14(v5, a2);
  *(a2 + 4) = v3;
  *(a2 + 8) = v4;
}

float sub_19B66C228(float *a1, float a2, float a3, float a4)
{
  v5[0] = a2;
  v5[1] = a3;
  v5[2] = a4;
  sub_19B66D368(a1, v6, -1.0);
  return sub_19B61AD14(v6, v5);
}

double sub_19B66C264(float32x4_t *a1, float *a2)
{
  v4 = 0;
  v5 = 0.0;
  do
  {
    v5 = v5 + (a2[v4] * a2[v4]);
    ++v4;
  }

  while (v4 != 3);
  v6 = sqrtf(v5);
  v7 = 0.5;
  v8 = v6 * 0.5;
  if ((v6 * 0.5) > 0.0)
  {
    v7 = (sinf(v6 * 0.5) / v8) * 0.5;
  }

  a1->f32[0] = v7 * *a2;
  a1->f32[1] = v7 * a2[1];
  a1->f32[2] = v7 * a2[2];
  v9.f32[0] = cosf(v8);
  a1->i32[3] = v9.i32[0];

  *&result = sub_19B41E130(a1, v9).u64[0];
  return result;
}

float sub_19B66C31C(float32x4_t *a1)
{
  v11 = *a1;
  v2 = sub_19B66C070(&v11);
  v3 = 0;
  *v10 = v2;
  v10[1] = v4;
  v10[2] = v5;
  v6 = 0.0;
  do
  {
    v6 = v6 + (*&v10[v3] * *&v10[v3]);
    ++v3;
  }

  while (v3 != 3);
  v7 = sqrtf(v6);
  if (v7 >= 0.00000011921)
  {
    v8 = atan2f(v7, v1);
    return v2 * ((v8 + v8) / v7);
  }

  return v2;
}

BOOL sub_19B66C3CC(float *a1, float32x4_t *a2, uint64_t a3, float a4, float a5, float a6, float a7, float a8, float a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16)
{
  v163 = *MEMORY[0x1E69E9840];
  v155 = a4;
  v156 = __PAIR64__(LODWORD(a6), LODWORD(a5));
  v153 = a7;
  v154 = __PAIR64__(LODWORD(a9), LODWORD(a8));
  *v152 = a15;
  *&v152[8] = a16;
  if ((atomic_load_explicit(&qword_1ED71D1D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED71D1D0))
  {
    dword_1ED71D1C8 = 1043452116;
    __cxa_guard_release(&qword_1ED71D1D0);
  }

  v19 = 0;
  v20 = 0.0;
  do
  {
    v20 = v20 + (*(&v155 + v19) * *(&v155 + v19));
    v19 += 4;
  }

  while (v19 != 12);
  if (sqrtf(v20) == 0.0)
  {
    return 0;
  }

  v21 = 0;
  v22 = 0.0;
  do
  {
    v22 = v22 + (*(&v153 + v21) * *(&v153 + v21));
    v21 += 4;
  }

  while (v21 != 12);
  if (sqrtf(v22) == 0.0)
  {
    return 0;
  }

  v25 = 0;
  v26 = v155;
  v28 = v156.f32[1];
  v27 = v156.f32[0];
  *buf = v155;
  *&buf[4] = v156;
  v29 = 0.0;
  do
  {
    v29 = v29 + (*&buf[v25] * *&buf[v25]);
    v25 += 4;
  }

  while (v25 != 12);
  if (sqrtf(v29) > 0.00000011921)
  {
    v30 = 0;
    v31 = 0.0;
    do
    {
      v31 = v31 + (*&buf[v30] * *&buf[v30]);
      v30 += 4;
    }

    while (v30 != 12);
    v32 = sqrtf(v31);
    v26 = v155 / v32;
    v27 = v156.f32[0] / v32;
    v28 = v156.f32[1] / v32;
  }

  v33 = 0;
  v155 = v26;
  v156 = __PAIR64__(LODWORD(v28), LODWORD(v27));
  v34 = v153;
  v36 = v154.f32[1];
  v35 = v154.f32[0];
  *buf = v153;
  *&buf[4] = v154;
  v37 = 0.0;
  do
  {
    v37 = v37 + (*&buf[v33] * *&buf[v33]);
    v33 += 4;
  }

  while (v33 != 12);
  if (sqrtf(v37) > 0.00000011921)
  {
    v38 = 0;
    v39 = 0.0;
    do
    {
      v39 = v39 + (*&buf[v38] * *&buf[v38]);
      v38 += 4;
    }

    while (v38 != 12);
    v40 = sqrtf(v39);
    v34 = v153 / v40;
    v35 = v154.f32[0] / v40;
    v36 = v154.f32[1] / v40;
  }

  v41 = 0;
  v153 = v34;
  v154 = __PAIR64__(LODWORD(v36), LODWORD(v35));
  v42 = (v27 * v36) - (v28 * v35);
  v43 = (v28 * v34) - (v26 * v36);
  v44 = (v26 * v35) - (v27 * v34);
  v149 = v42;
  v150 = v43;
  v151 = v44;
  v45 = 0.0;
  do
  {
    v45 = v45 + (*(&v149 + v41) * *(&v149 + v41));
    v41 += 4;
  }

  while (v41 != 12);
  v46 = sqrtf(v45);
  if (v46 < *&dword_1ED71D1C8)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E29460);
    }

    v47 = off_1ED71C828;
    v48 = v46;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      *&buf[4] = v48;
      _os_log_impl(&dword_19B41C000, v47, OS_LOG_TYPE_DEBUG, "n and g are too close %f", buf, 0xCu);
    }

    v49 = sub_19B420058();
    if (*(v49 + 160) > 1 || *(v49 + 164) > 1 || *(v49 + 168) > 1 || *(v49 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E29460);
      }

      LODWORD(v157) = 134217984;
      *(&v157 + 4) = v48;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 2, "n and g are too close %f", COERCE_DOUBLE(&v157));
      v51 = v50;
      sub_19B6BB7CC("Generic", 1, 0, 2, "static BOOL CMOQuaternion::northAndGravity(CMVector<float, 3>, CMVector<float, 3>, CMVector<float, 3>, const float *, CMOQuaternion &, CMMatrix<float, 3> &)", "CoreLocation: %s\n", v50);
      if (v51 != buf)
      {
        free(v51);
      }
    }

    return 0;
  }

  v52 = 0;
  v53 = v42 / v46;
  v54 = v43 / v46;
  v149 = v42 / v46;
  v150 = v43 / v46;
  v55 = v44 / v46;
  v151 = v55;
  v57 = *&v152[4];
  v56 = *v152;
  v58 = *&v152[8];
  *buf = *v152;
  *&buf[8] = *&v152[8];
  v59 = 0.0;
  do
  {
    v59 = v59 + (*&buf[v52] * *&buf[v52]);
    v52 += 4;
  }

  while (v52 != 12);
  if (sqrtf(v59) > 0.00000011921)
  {
    v60 = 0;
    v61 = 0.0;
    do
    {
      v61 = v61 + (*&buf[v60] * *&buf[v60]);
      v60 += 4;
    }

    while (v60 != 12);
    v62 = sqrtf(v61);
    v56 = *v152 / v62;
    v57 = *&v152[4] / v62;
    v58 = *&v152[8] / v62;
  }

  v63 = 0;
  *v152 = v56;
  *&v152[4] = v57;
  *&v152[8] = v58;
  *v148 = 0;
  *&v148[8] = -1082130432;
  v64 = (v58 * -0.0) - v57;
  v65 = 0.0;
  v66 = v56 + (v58 * 0.0);
  v67 = (v57 * -0.0) + (v56 * 0.0);
  *buf = v64;
  *&buf[4] = v66;
  *&buf[8] = v67;
  do
  {
    v65 = v65 + (*&buf[v63] * *&buf[v63]);
    v63 += 4;
  }

  while (v63 != 12);
  if (sqrtf(v65) > 0.00000011921)
  {
    v68 = 0;
    v69 = 0.0;
    do
    {
      v69 = v69 + (*&buf[v68] * *&buf[v68]);
      v68 += 4;
    }

    while (v68 != 12);
    v70 = sqrtf(v69);
    v64 = v64 / v70;
    v66 = v66 / v70;
    v67 = v67 / v70;
  }

  v71 = 0;
  *v147 = v64;
  *&v147[1] = v66;
  *&v147[2] = v67;
  v72 = (v35 * v55) - (v36 * v54);
  v73 = (v36 * v53) - (v34 * v55);
  v74 = (v34 * v54) - (v35 * v53);
  *buf = v72;
  *&buf[4] = v73;
  *&buf[8] = v74;
  v75 = 0.0;
  do
  {
    v75 = v75 + (*&buf[v71] * *&buf[v71]);
    v71 += 4;
  }

  while (v71 != 12);
  if (sqrtf(v75) > 0.00000011921)
  {
    v76 = 0;
    v77 = 0.0;
    do
    {
      v77 = v77 + (*&buf[v76] * *&buf[v76]);
      v76 += 4;
    }

    while (v76 != 12);
    v78 = sqrtf(v77);
    v72 = v72 / v78;
    v73 = v73 / v78;
    v74 = v74 / v78;
  }

  v155 = v72;
  v156 = __PAIR64__(LODWORD(v74), LODWORD(v73));
  sub_19B66D118(&v157, &v155, v152);
  sub_19B66D118(&v144, &v153, v148);
  sub_19B66D118(v142, &v149, v147);
  v79 = ((a1[1] * a1[1]) + (*a1 * *a1)) + ((*a1 + *a1) * a1[1]);
  if (v79 == 0.0)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E29460);
    }

    v112 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v112, OS_LOG_TYPE_FAULT, "Assertion failed: lambda2 != 0, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMOQuaternion.cpp, line 208,invalid weights.", buf, 2u);
    }

    v113 = sub_19B420058();
    if ((*(v113 + 160) & 0x80000000) == 0 || (*(v113 + 164) & 0x80000000) == 0 || (*(v113 + 168) & 0x80000000) == 0 || *(v113 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E29460);
      }

      LOWORD(v140[0]) = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 17, "Assertion failed: lambda2 != 0, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMOQuaternion.cpp, line 208,invalid weights.", v140, 2);
      v115 = v114;
      sub_19B6BB7CC("Generic", 1, 0, 0, "static BOOL CMOQuaternion::northAndGravity(CMVector<float, 3>, CMVector<float, 3>, CMVector<float, 3>, const float *, CMOQuaternion &, CMMatrix<float, 3> &)", "CoreLocation: %s\n", v114);
      if (v115 != buf)
      {
        free(v115);
      }
    }
  }

  v140[0] = v142[0];
  v140[1] = v142[1];
  v141 = v143;
  v80 = *a1;
  *buf = v157;
  v161 = v158;
  v162 = v159;
  v127 = 0;
  v128 = v156.i32[1];
  v129 = vneg_f32(v156);
  v130 = 0;
  v131 = v155;
  v132 = v156.i32[0];
  v133 = -v155;
  v134 = 0;
  sub_19B604B68(&v127, v142, v135);
  v120 = 0;
  v121 = *&v152[8];
  v122 = vneg_f32(*&v152[4]);
  v123 = 0;
  v124 = *v152;
  v125 = -*v152;
  v126 = 0;
  sub_19B604B68(v135, &v120, v136);
  for (i = 0; i != 9; ++i)
  {
    *&buf[4 * i] = *&buf[4 * i] - sub_19B5DB794(v136, i);
  }

  v82 = 0;
  v83 = 1.0 / sqrtf(v79);
  v137 = *buf;
  v138 = v161;
  v139 = v162;
  do
  {
    *(&v137 + v82) = (v83 * v80) * *(&v137 + v82);
    v82 += 4;
  }

  while (v82 != 36);
  v84 = 0;
  *buf = v137;
  v161 = v138;
  v162 = v139;
  do
  {
    *(v140 + v84) = sub_19B5DB794(buf, v84) + *(v140 + v84);
    ++v84;
  }

  while (v84 != 9);
  v85 = a1[1];
  *buf = v144;
  v161 = v145;
  v162 = v146;
  v127 = 0;
  v128 = v154.i32[1];
  v129 = vneg_f32(v154);
  v130 = 0;
  v131 = v153;
  v132 = v154.i32[0];
  v133 = -v153;
  v134 = 0;
  sub_19B604B68(&v127, v142, v135);
  v120 = 0;
  v121 = *&v148[8];
  v122 = vneg_f32(*&v148[4]);
  v123 = 0;
  v124 = *v148;
  v125 = -*v148;
  v126 = 0;
  sub_19B604B68(v135, &v120, v136);
  for (j = 0; j != 9; ++j)
  {
    *&buf[4 * j] = *&buf[4 * j] - sub_19B5DB794(v136, j);
  }

  v87 = 0;
  v137 = *buf;
  v138 = v161;
  v139 = v162;
  do
  {
    *(&v137 + v87) = (v83 * v85) * *(&v137 + v87);
    v87 += 4;
  }

  while (v87 != 36);
  v88 = 0;
  *buf = v137;
  v161 = v138;
  v162 = v139;
  do
  {
    v89.f32[0] = sub_19B5DB794(buf, v88) + *(v140 + v88);
    *(v140 + v88++) = v89.i32[0];
  }

  while (v88 != 9);
  sub_19B66D1AC(a2, v140, v89);
  v90 = 0;
  v91 = *a1;
  v117 = v157;
  v118 = v158;
  v119 = v159;
  do
  {
    *(&v117 + v90) = v91 * *(&v117 + v90);
    v90 += 4;
  }

  while (v90 != 36);
  v92 = 0;
  v93 = a1[1];
  v137 = v144;
  v138 = v145;
  v139 = v146;
  do
  {
    *(&v137 + v92) = v93 * *(&v137 + v92);
    v92 += 4;
  }

  while (v92 != 36);
  v94 = 0;
  *buf = v137;
  v161 = v138;
  v162 = v139;
  do
  {
    *(&v117 + v94) = sub_19B5DB794(buf, v94) + *(&v117 + v94);
    ++v94;
  }

  while (v94 != 9);
  v95 = 0;
  v137 = v117;
  v138 = v118;
  v139 = v119;
  v96 = 0.0;
  do
  {
    v96 = v96 + (*(&v137 + v95) * *(&v137 + v95));
    v95 += 4;
  }

  while (v95 != 36);
  v97 = sqrtf(v96);
  v98 = (v79 - (v97 * v97)) * 0.5;
  v23 = v98 != 0.0;
  if (v98 == 0.0)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E29460);
    }

    v108 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v108, OS_LOG_TYPE_DEBUG, "kappa zero!", buf, 2u);
    }

    v109 = sub_19B420058();
    if (*(v109 + 160) > 1 || *(v109 + 164) > 1 || *(v109 + 168) > 1 || *(v109 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E29460);
      }

      v136[0] = 0;
      LODWORD(v116) = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 2, "kappa zero!", v136, v116);
      v111 = v110;
      sub_19B6BB7CC("Generic", 1, 0, 2, "static BOOL CMOQuaternion::northAndGravity(CMVector<float, 3>, CMVector<float, 3>, CMVector<float, 3>, const float *, CMOQuaternion &, CMMatrix<float, 3> &)", "CoreLocation: %s\n", v110);
      if (v111 != buf)
      {
        free(v111);
      }
    }
  }

  else
  {
    v99 = 0;
    v100 = v83 * (1.0 / v98);
    do
    {
      for (k = 0; k != 3; ++k)
      {
        v102 = 0;
        *sub_19B5D68B8(a3, v99, k) = 0;
        do
        {
          v103 = sub_19B601068(&v137, v99, v102);
          v104 = sub_19B601068(&v137, k, v102);
          v105 = sub_19B5D68B8(a3, v99, k);
          *v105 = *v105 + (v103 * v104);
          ++v102;
        }

        while (v102 != 3);
        v106 = sub_19B5D68B8(a3, v99, k);
        *v106 = v100 * *v106;
      }

      v107 = sub_19B5D68B8(a3, v99, v99);
      *v107 = v83 + *v107;
      ++v99;
    }

    while (v99 != 3);
  }

  return v23;
}