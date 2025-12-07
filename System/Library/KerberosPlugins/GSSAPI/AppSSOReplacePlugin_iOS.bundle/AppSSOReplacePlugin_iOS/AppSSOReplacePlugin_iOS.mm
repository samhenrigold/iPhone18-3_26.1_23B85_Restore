gss_cred_id_t sub_9E4(gss_name_t_desc_struct *a1, const gss_OID_desc *a2, uint64_t a3)
{
  v5 = sub_1170(a1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1210();
  }

  v6 = gss_oid_equal(a2, &__gss_krb5_mechanism_oid_desc);
  if (!v6)
  {
    return 0;
  }

  v7 = sub_1170(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_1250();
  }

  context = objc_autoreleasePoolPush();
  DisplayString = GSSNameCreateDisplayString(a1);
  v9 = sub_1170(DisplayString);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_12C0();
  }

  v55 = DisplayString;
  v10 = [(__CFString *)v55 componentsSeparatedByString:@"@"];
  v11 = [v10 count];
  if (v11 != &dword_0 + 3)
  {
    if (v11 == &dword_0 + 2)
    {
      v14 = [v10 objectAtIndexedSubscript:0];
      v12 = [v14 componentsSeparatedByString:@"/"];

      v15 = [v12 count];
      v16 = v12;
      if (v15 == &dword_0 + 2 || (v17 = [v10 count], v16 = v10, v17 == &dword_0 + 2))
      {
        v62 = [v16 objectAtIndexedSubscript:1];
        goto LABEL_21;
      }

LABEL_20:
      v62 = 0;
      goto LABEL_21;
    }

    if (v11 == &dword_0 + 1)
    {
      v12 = [(__CFString *)v55 componentsSeparatedByString:@"/"];
      if ([v12 count] == &dword_0 + 2)
      {
        v62 = [v12 objectAtIndexedSubscript:1];
LABEL_21:

        goto LABEL_22;
      }

      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if ([v10 count] != &dword_0 + 2)
  {
LABEL_19:
    v62 = 0;
    goto LABEL_22;
  }

  v62 = [v10 objectAtIndexedSubscript:1];
LABEL_22:

  if (!v62)
  {
    v13 = 0;
    goto LABEL_74;
  }

  v19 = sub_1170(v18);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    sub_1330();
  }

  v20 = +[SOKerberosHeimdalPluginSettings retrieveAllCurrentSettings];
  v21 = sub_1170(v20);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    sub_13A0(buf, [v20 count], v21);
  }

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  obj = v20;
  v22 = [obj countByEnumeratingWithState:&v67 objects:v74 count:16];
  if (!v22)
  {

    goto LABEL_69;
  }

  v23 = 0;
  v24 = 0;
  v58 = *v68;
  v59 = v22;
  do
  {
    v25 = 0;
    do
    {
      if (*v68 != v58)
      {
        objc_enumerationMutation(obj);
      }

      v60 = v25;
      v61 = *(*(&v67 + 1) + 8 * v25);
      v26 = sub_1170(v22);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        v27 = +[SOKerberosHeimdalPluginSettings stringWithCredentialUseMode:](SOKerberosHeimdalPluginSettings, "stringWithCredentialUseMode:", [v61 credentialUseMode]);
        sub_13E8(v27, v72, &v73, v26);
      }

      v22 = [v61 credentialUseMode];
      v28 = v60;
      if ((v22 - 1) > 1)
      {
        goto LABEL_57;
      }

      v29 = [v61 credentialUseMode];
      if (a3 && v29 == &dword_0 + 1)
      {
        v30 = 0;
        goto LABEL_56;
      }

      v31 = [v61 hosts];
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v32 = v31;
      v33 = [v32 countByEnumeratingWithState:&v63 objects:v71 count:16];
      if (!v33)
      {
        v30 = v24;
        goto LABEL_55;
      }

      v34 = *v64;
      v30 = v24;
      do
      {
        for (i = 0; i != v33; i = i + 1)
        {
          if (*v64 != v34)
          {
            objc_enumerationMutation(v32);
          }

          v36 = *(*(&v63 + 1) + 8 * i);
          if (![v36 hasPrefix:@"."])
          {
            v41 = [v62 lowercaseString];
            v42 = [v36 lowercaseString];
            v43 = [v41 isEqualToString:v42];

            if (!v43)
            {
              continue;
            }

            [v61 currentCredential];
            v30 = v37 = v30;
            goto LABEL_50;
          }

          v37 = [v62 lowercaseString];
          v38 = [v36 lowercaseString];
          if (![v37 hasSuffix:v38])
          {

LABEL_50:
            continue;
          }

          v39 = [v36 length] > v23;

          if (v39)
          {
            v40 = [v61 currentCredential];

            v23 = [v36 length];
            v30 = v40;
          }
        }

        v33 = [v32 countByEnumeratingWithState:&v63 objects:v71 count:16];
      }

      while (v33);
LABEL_55:

      v24 = v32;
LABEL_56:

      v24 = v30;
      v28 = v60;
LABEL_57:
      v25 = v28 + 1;
    }

    while (v25 != v59);
    v22 = [obj countByEnumeratingWithState:&v67 objects:v74 count:16];
    v59 = v22;
  }

  while (v22);

  if (!v24)
  {
LABEL_69:
    v46 = sub_1170(v44);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
    {
      sub_157C();
    }

    v24 = 0;
    goto LABEL_72;
  }

  v45 = sub_1170(v44);
  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
  {
    sub_1444();
  }

  v46 = [v24 UUIDString];
  if (([v46 isEqualToString:&stru_4190]& 1) != 0 || (v47 = CFUUIDCreateFromString(0, v46), (v48 = v47) == 0))
  {
LABEL_72:
    v13 = 0;
    goto LABEL_73;
  }

  v13 = GSSCreateCredentialFromUUID(v47);
  CFRelease(v48);
  v50 = sub_1170(v49);
  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
  {
    sub_150C();
  }

LABEL_73:
LABEL_74:

  v52 = sub_1170(v51);
  if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
  {
    sub_15BC();
  }

  objc_autoreleasePoolPop(context);
  return v13;
}

void sub_1090(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  if (a2)
  {
    if (a2 == 2)
    {
      v34 = objc_begin_catch(exception_object);
      v35 = sub_1170(v34);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v36 = [v34 description];
        sub_14B4(v36, va, v35);
      }

      objc_end_catch();
    }

    else
    {
      objc_begin_catch(exception_object);
    }

    JUMPOUT(0x1018);
  }

  _Unwind_Resume(exception_object);
}

id sub_1170(uint64_t a1)
{
  if (qword_80B0 != -1)
  {
    sub_15FC();
  }

  v2 = qword_80B8;

  return v2;
}

void sub_11B4(id a1)
{
  qword_80B8 = os_log_create("com.apple.AppSSO", "AppSSOReplacePlugin");

  _objc_release_x1();
}

void sub_1250()
{
  sub_1204();
  sub_11F8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_12C0()
{
  sub_1204();
  sub_11F8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1330()
{
  sub_1204();
  sub_11F8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_13A0(uint8_t *buf, uint64_t a2, os_log_t log)
{
  *buf = 134217984;
  *(buf + 4) = a2;
  _os_log_debug_impl(&dword_0, log, OS_LOG_TYPE_DEBUG, "found %lu profiles", buf, 0xCu);
}

void sub_13E8(void *a1, uint8_t *buf, void *a3, os_log_t log)
{
  *buf = 138412290;
  *a3 = a1;
  _os_log_debug_impl(&dword_0, log, OS_LOG_TYPE_DEBUG, "credentialUseMode: %@", buf, 0xCu);
}

void sub_1444()
{
  sub_1204();
  sub_11F8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_14B4(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "exception in plugin %{public}@", buf, 0xCu);
}

void sub_150C()
{
  sub_1204();
  sub_11F8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}