uint64_t sub_988(uint64_t a1, void *a2)
{
  v4 = sub_F58(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_FF8();
  }

  v5 = malloc_type_calloc(1uLL, 0x10uLL, 0xA0040BD48D6D6uLL);
  if (!v5)
  {
    return 12;
  }

  v6 = v5;
  result = 0;
  v6[1] = a1;
  *a2 = v6;
  return result;
}

void sub_A14(void *a1)
{
  v2 = sub_F58(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_1034();
  }

  free(a1);
}

uint64_t sub_A64(id *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, void *), uint64_t a8)
{
  v10 = sub_F58(a1);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_1070();
  }

  context = objc_autoreleasePoolPush();
  v11 = sub_F58(context);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_10AC();
  }

  v45 = -1765328135;
  v12 = [NSString stringWithCString:a4 encoding:4];
  v46 = [v12 uppercaseString];

  v54 = 0;
  v13 = [SOKerberosHeimdalPluginSettings retrieveCurrentSettingsForRealm:v46 error:&v54];
  v14 = v54;
  v47 = v14;
  v48 = v13;
  if (!v13)
  {
    if (v14)
    {
      v35 = v14;
      v36 = sub_F58(v14);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        sub_11A8(v35, v36);
      }
    }

    v21 = sub_F58(v14);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      sub_1220();
    }

    goto LABEL_29;
  }

  v15 = [v13 siteCode];
  v16 = *a1;
  *a1 = v15;

  v18 = sub_F58(v17);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    sub_1130();
  }

  v19 = [v48 kdcs];
  v20 = [v19 count] == 0;

  if (!v20)
  {
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v21 = [v48 kdcs];
    v22 = [v21 countByEnumeratingWithState:&v50 objects:v57 count:16];
    v23 = v22;
    if (v22)
    {
      v24 = *v51;
      do
      {
        v25 = 0;
        do
        {
          if (*v51 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v50 + 1) + 8 * v25);
          v27 = sub_F58(v22);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v56 = v26;
            _os_log_debug_impl(&dword_0, v27, OS_LOG_TYPE_DEBUG, "adding kerberos kdc: %@", buf, 0xCu);
          }

          v28 = [SOKerberosServer serverWithString:v26];
          v29 = v28;
          if (v28 && ([v28 protocol], v30 = objc_claimAutoreleasedReturnValue(), v31 = v30 == 0, v30, v31))
          {
            v33 = [@"tcp/" stringByAppendingString:v26];
            v34 = v33;
            a7(a8, [v33 UTF8String]);
          }

          else
          {
            v32 = v26;
            a7(a8, [v26 UTF8String]);
          }

          v25 = v25 + 1;
        }

        while (v23 != v25);
        v22 = [v21 countByEnumeratingWithState:&v50 objects:v57 count:16];
        v23 = v22;
      }

      while (v22);
    }

LABEL_29:
  }

  v37 = v48;
  if (*a1)
  {
    v38 = [*a1 isEqualToString:kSOKerberosAttributeValueNoSiteCode];
    if ((v38 & 1) == 0)
    {
      v39 = sub_F58(v38);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
      {
        sub_1294();
      }

      [*a1 UTF8String];
      v37 = v48;
      krb5_krbhst_set_sitename();
      v45 = 0;
    }
  }

  v41 = sub_F58(v40);
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
  {
    sub_1374();
  }

  objc_autoreleasePoolPop(context);
  return v45;
}

void sub_E9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  if (a2)
  {
    if (a2 == 2)
    {
      v28 = objc_begin_catch(exception_object);
      v29 = sub_F58(v28);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = [v28 description];
        sub_130C(a11, v30, va, v29);
      }

      objc_end_catch();
      JUMPOUT(0xE1CLL);
    }

    objc_begin_catch(exception_object);
    JUMPOUT(0xE20);
  }

  _Unwind_Resume(exception_object);
}

id sub_F58(uint64_t a1)
{
  if (qword_8098 != -1)
  {
    sub_13B0();
  }

  v2 = qword_80A0;

  return v2;
}

void sub_F9C(id a1)
{
  qword_80A0 = os_log_create("com.apple.AppSSO", "AppSSOLocatePlugin");

  _objc_release_x1();
}

void sub_FF8()
{
  sub_FEC();
  sub_FE0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1034()
{
  sub_FEC();
  sub_FE0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1070()
{
  sub_FEC();
  sub_FE0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_11A8(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "error when retrieving plugin settings: %@", &v2, 0xCu);
}

void sub_130C(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 136446466;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "exception in plugin for realm: %{public}s, %{public}@", buf, 0x16u);
}

void sub_1374()
{
  sub_FEC();
  sub_FE0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}