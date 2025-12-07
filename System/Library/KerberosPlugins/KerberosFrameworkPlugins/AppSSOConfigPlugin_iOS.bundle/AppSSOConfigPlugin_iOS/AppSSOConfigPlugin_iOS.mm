uint64_t sub_938(uint64_t a1)
{
  v1 = sub_11B8(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    sub_1268();
  }

  return 0;
}

void sub_980(uint64_t a1)
{
  v1 = sub_11B8(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    sub_129C();
  }
}

uint64_t sub_9C4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, void *))
{
  v7 = sub_11B8(a1);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_12D0();
  }

  v8 = objc_autoreleasePoolPush();
  v9 = 2529639161;
  v10 = +[SOKerberosHeimdalPluginSettings retrieveAllCurrentSettings];
  v11 = sub_11B8(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_1304(buf, [v10 count], v11);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v12 = v10;
  v13 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v13)
  {
    v14 = *v25;
    while (2)
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v24 + 1) + 8 * i);
        if ([v16 isDefaultRealm])
        {
          v17 = [v16 realm];

          if (v17)
          {
            v19 = sub_11B8(v18);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
            {
              sub_134C(v17, v19);
            }

            v20 = v17;
            a4(a1, a3, [v17 UTF8String]);
            v9 = 0;
          }

          goto LABEL_18;
        }
      }

      v13 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v17 = 0;
LABEL_18:

  v22 = sub_11B8(v21);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    sub_141C();
  }

  objc_autoreleasePoolPop(v8);
  return v9;
}

void sub_BFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  if (a2)
  {
    if (a2 == 2)
    {
      v16 = objc_begin_catch(exception_object);
      v17 = sub_11B8(v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = [v16 description];
        sub_13C4(v18, va, v17);
      }

      objc_end_catch();
      JUMPOUT(0xB84);
    }

    objc_begin_catch(exception_object);
    JUMPOUT(0xB88);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_CA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, void *))
{
  v5 = sub_11B8(a1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1450();
  }

  context = objc_autoreleasePoolPush();
  v32 = -1765328135;
  v6 = [NSString stringWithCString:a2 encoding:4];
  v7 = +[SOKerberosHeimdalPluginSettings retrieveAllCurrentSettings];
  v8 = sub_11B8(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_1304(buf, [v7 count], v8);
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = v7;
  v9 = [obj countByEnumeratingWithState:&v53 objects:v59 count:16];
  if (!v9)
  {

LABEL_37:
    v44 = 0;
    goto LABEL_38;
  }

  v33 = v9;
  v10 = 0;
  v44 = 0;
  v35 = *v54;
  do
  {
    for (i = 0; i != v33; i = i + 1)
    {
      if (*v54 != v35)
      {
        objc_enumerationMutation(obj);
      }

      v11 = [*(*(&v53 + 1) + 8 * i) domainRealmMapping];
      v40 = v11;
      if (v11)
      {
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v38 = [v11 allKeys];
        v41 = [v38 countByEnumeratingWithState:&v49 objects:v58 count:16];
        if (v41)
        {
          v39 = *v50;
          do
          {
            for (j = 0; j != v41; j = j + 1)
            {
              if (*v50 != v39)
              {
                objc_enumerationMutation(v38);
              }

              v43 = *(*(&v49 + 1) + 8 * j);
              v12 = [v40 objectForKeyedSubscript:?];
              v47 = 0u;
              v48 = 0u;
              v45 = 0u;
              v46 = 0u;
              v13 = v12;
              v14 = [v13 countByEnumeratingWithState:&v45 objects:v57 count:16];
              if (v14)
              {
                v15 = *v46;
                do
                {
                  for (k = 0; k != v14; k = k + 1)
                  {
                    if (*v46 != v15)
                    {
                      objc_enumerationMutation(v13);
                    }

                    v17 = *(*(&v45 + 1) + 8 * k);
                    v18 = [v6 lowercaseString];
                    v19 = [v17 lowercaseString];
                    if ([v18 hasSuffix:v19])
                    {
                      v20 = [v17 length] > v10;

                      if (v20)
                      {
                        v21 = v43;

                        v10 = [v17 length];
                        v44 = v21;
                      }
                    }

                    else
                    {
                    }
                  }

                  v14 = [v13 countByEnumeratingWithState:&v45 objects:v57 count:16];
                }

                while (v14);
              }
            }

            v41 = [v38 countByEnumeratingWithState:&v49 objects:v58 count:16];
          }

          while (v41);
        }
      }
    }

    v33 = [obj countByEnumeratingWithState:&v53 objects:v59 count:16];
  }

  while (v33);

  if (!v44)
  {
    goto LABEL_37;
  }

  v23 = sub_11B8(v22);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    sub_1484(v44, v6, v23);
  }

  v24 = v44;
  a5(a1, a4, [v44 UTF8String]);
  v32 = 0;
LABEL_38:

  v26 = sub_11B8(v25);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    sub_1574();
  }

  objc_autoreleasePoolPop(context);
  return v32;
}

id sub_11B8(uint64_t a1)
{
  if (qword_8098 != -1)
  {
    sub_15A8();
  }

  v2 = qword_80A0;

  return v2;
}

void sub_11FC(id a1)
{
  qword_80A0 = os_log_create("com.apple.AppSSO", "AppSSOConfigPlugin");

  _objc_release_x1();
}

void sub_1240(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 2u);
}

void sub_1304(uint8_t *buf, uint64_t a2, os_log_t log)
{
  *buf = 134217984;
  *(buf + 4) = a2;
  _os_log_debug_impl(&dword_0, log, OS_LOG_TYPE_DEBUG, "found %lu profiles", buf, 0xCu);
}

void sub_134C(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "returning default realm: %{public}@", &v2, 0xCu);
}

void sub_13C4(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "exception in plugin for defaault realm: %{public}@", buf, 0xCu);
}

void sub_1484(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_debug_impl(&dword_0, log, OS_LOG_TYPE_DEBUG, "returning realm: %{public}@ for host: %{public}@", &v3, 0x16u);
}

void sub_150C(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 136446466;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "exception in plugin for host: %{public}s, %{public}@", buf, 0x16u);
}