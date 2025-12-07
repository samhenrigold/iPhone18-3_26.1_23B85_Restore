void sub_100001E48(uint64_t a1)
{
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 1;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_10000207C;
  v30 = sub_10000208C;
  v31 = 0;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100002094;
  v20[3] = &unk_100008230;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v21 = v3;
  v22 = v4;
  v23 = v5;
  v24 = &v26;
  v25 = &v32;
  [v2 enumerateKeysAndObjectsUsingBlock:v20];
  [*(a1 + 48) _decrementBusyCounterForAccount:*(a1 + 40)];
  Nanoseconds = _ACSignpostGetNanoseconds();
  v7 = sub_10000328C(Nanoseconds);
  v8 = v7;
  v9 = *(a1 + 72);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *v19 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_END, v9, "PerformActions", &unk_100004FF1, v19, 2u);
  }

  v11 = sub_10000328C(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_10000390C((a1 + 72), v11, v12, v13, v14, v15, v16, v17, Nanoseconds / 1000000000.0);
  }

  v18 = *(a1 + 64);
  if (v18)
  {
    (*(v18 + 16))(v18, *(v33 + 24), v27[5]);
  }

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v32, 8);
}

void sub_10000204C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000207C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100002094(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  context = objc_autoreleasePoolPush();
  v7 = sub_10000328C(context);
  v8 = _ACSignpostCreate();

  v10 = sub_10000328C(v9);
  v11 = v10;
  v12 = v8 - 1;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 138543618;
    v43 = v5;
    v44 = 1026;
    LODWORD(v45) = [v6 type];
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_BEGIN, v8, "PerformActionOwner", " Dataclass=%{public,signpost.telemetry:string1,name=Dataclass}@  Action=%{public,signpost.telemetry:number1,name=Action}d  enableTelemetry=YES ", buf, 0x12u);
  }

  v14 = sub_10000328C(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v37 = [v6 type];
    *buf = 134218498;
    v43 = v8;
    v44 = 2114;
    v45 = v5;
    v46 = 1026;
    LODWORD(v47) = v37;
    _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "BEGIN [%lld]: PerformActionOwner  Dataclass=%{public,signpost.telemetry:string1,name=Dataclass}@  Action=%{public,signpost.telemetry:number1,name=Action}d  enableTelemetry=YES ", buf, 0x1Cu);
  }

  v15 = _ACLogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v38 = *(a1 + 32);
    *buf = 138412802;
    v43 = v5;
    v44 = 2112;
    v45 = v6;
    v46 = 2112;
    v47 = v38;
    _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "Asking owner of dataclass %@ to perform action %@ for account %@", buf, 0x20u);
  }

  v16 = [*(a1 + 40) _ownerForDataclass:v5];
  if (objc_opt_respondsToSelector())
  {
    v17 = *(a1 + 32);
    v18 = *(a1 + 48);
    v41 = 0;
    v19 = [v16 performAction:v6 forAccount:v17 withChildren:v18 forDataclass:v5 withError:&v41];
    v20 = v41;
  }

  else
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v23 = _ACLogSystem();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_100003988(v16, v23);
      }

      v19 = 0;
      v20 = 0;
      v21 = 1;
      goto LABEL_18;
    }

    v19 = [v16 performAction:v6 forAccount:*(a1 + 32) withChildren:*(a1 + 48) forDataclass:v5];
    v20 = 0;
  }

  v21 = v20 == 0;
  if (!v20 && (v19 & 1) != 0)
  {
    v20 = 0;
    v22 = 1;
    goto LABEL_24;
  }

LABEL_18:
  v39 = v19;
  v24 = v8;
  v25 = v8 - 1;
  v26 = _ACLogSystem();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    sub_100003A00();
  }

  if (v21)
  {
    v27 = [NSError errorWithDomain:ACErrorDomain code:17 userInfo:0];
    v28 = *(*(a1 + 56) + 8);
    v29 = *(v28 + 40);
    *(v28 + 40) = v27;
  }

  else
  {
    v30 = *(*(a1 + 56) + 8);
    v31 = v20;
    v29 = *(v30 + 40);
    *(v30 + 40) = v31;
  }

  v12 = v25;
  v8 = v24;
  v22 = v39;
LABEL_24:
  Nanoseconds = _ACSignpostGetNanoseconds();
  v33 = sub_10000328C(Nanoseconds);
  v34 = v33;
  if (v12 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v33))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v34, OS_SIGNPOST_INTERVAL_END, v8, "PerformActionOwner", &unk_100004FF1, buf, 2u);
  }

  v36 = sub_10000328C(v35);
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
  {
    sub_100003A78();
  }

  *(*(*(a1 + 64) + 8) + 24) &= v22;
  objc_autoreleasePoolPop(context);
}

void sub_1000029C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100003158(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void sub_100003178(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = +[NSXPCListener serviceListener];
  v4 = objc_alloc_init(ACDataclassOwnersManagerListener);
  [v3 setDelegate:v4];
  v5 = _ACLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "DOM XPC Service resuming...", buf, 2u);
  }

  [v3 resume];
  v6 = _ACLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "DOM XPC Service is returning control!", v8, 2u);
  }

  return 0;
}

id sub_10000328C(uint64_t a1)
{
  if (qword_10000C810 != -1)
  {
    sub_100003B58();
  }

  v2 = qword_10000C808;

  return v2;
}

void sub_1000032D0(id a1)
{
  qword_10000C808 = os_log_create("com.apple.accounts", "dataclass.signpost");

  _objc_release_x1();
}

void sub_1000033C8(uint64_t a1, NSObject *a2)
{
  v2 = 134217984;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "BEGIN [%lld]: DataclassPreload ", &v2, 0xCu);
}

void sub_100003894(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 134218242;
  *&v3[4] = a2;
  *&v3[12] = 2112;
  *&v3[14] = a1;
  sub_100003158(&_mh_execute_header, a2, a3, "BEGIN [%lld]: PerformActions actions: %@", *v3, *&v3[8], *&v3[16]);
}

void sub_10000390C(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9)
{
  *v9 = 134218240;
  *&v9[4] = *a1;
  *&v9[12] = 2048;
  *&v9[14] = a9;
  sub_100003178(&_mh_execute_header, a2, a3, "END [%lld] %fs: PerformActions ", a5, a6, a7, a8, *v9, *&v9[8], *&v9[16]);
}

void sub_100003988(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Dataclass owner does not implement performAction:forAccount:withChildren:forDataclass: %@", &v2, 0xCu);
}

void sub_100003AE0(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 bundlePath];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_debug_impl(&_mh_execute_header, a4, OS_LOG_TYPE_DEBUG, "Found dataclass owner at path %@", a1, 0xCu);
}