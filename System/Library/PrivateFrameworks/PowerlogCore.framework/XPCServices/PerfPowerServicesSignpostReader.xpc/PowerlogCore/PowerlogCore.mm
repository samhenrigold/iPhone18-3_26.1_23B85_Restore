void sub_1000012E8(id a1)
{
  v1 = PLLogSignpostReader(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    sub_10000A9E8(v1, v2, v3, v4, v5, v6, v7, v8);
  }

  v9 = dispatch_time(0, 60000000000);
  dispatch_after(v9, &_dispatch_main_q, &stru_100014408);
}

void sub_100001354(id a1)
{
  v1 = PLLogSignpostReader(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "Requesting exit in invalidation handler...", v2, 2u);
  }

  xpc_transaction_exit_clean();
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = getpid();
  v4 = PLLogSignpostReader(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_10000AA5C(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  proc_disable_cpumon();
  NSLog(@"In the main of the XPCSignpostReader Service");
  v11 = objc_opt_new();
  v12 = +[NSXPCListener serviceListener];
  [v12 setDelegate:v11];
  [v12 resume];

  return 5000;
}

void sub_100001464(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 8u);
}

double sub_100001790(uint64_t a1, void *a2)
{
  [a2 durationSeconds];
  v4 = *(a1 + 32);
  result = *(v4 + 48) + (v3 * 1000.0);
  *(v4 + 48) = result;
  return result;
}

double sub_100001ABC(uint64_t a1, void *a2)
{
  [a2 durationSeconds];
  v4 = *(a1 + 32);
  result = *(v4 + 48) + (v3 * 1000.0);
  *(v4 + 48) = result;
  return result;
}

void sub_100001EF8(id a1)
{
  v1 = PLLogSignpostReader(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "SIGTERM handler invoked!", v2, 2u);
  }

  exit(0);
}

id PLLogSignpostReader(uint64_t a1)
{
  if (qword_100019450 != -1)
  {
    sub_10000AAC8();
  }

  v2 = qword_100019448;

  return v2;
}

void sub_100001F9C(id a1)
{
  qword_100019448 = os_log_create("com.apple.PerfPowerServicesSignpostReader", "");

  _objc_release_x1();
}

void sub_100003354(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

float sub_100003370(uint64_t a1, void *a2)
{
  [a2 durationSeconds];
  result = v3 * 1000.0;
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

void sub_100004744(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = +[NSMutableDictionary dictionary];
  v8 = [*(*(a1 + 32) + 72) objectForKeyedSubscript:v6];
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_1000048AC;
  v14 = &unk_100014538;
  v15 = v7;
  v9 = v7;
  [v8 enumerateKeysAndObjectsUsingBlock:&v11];

  v16[0] = @"appSignpostDurations";
  v16[1] = @"appSignpostMetrics";
  v17[0] = v5;
  v17[1] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:2, v11, v12, v13, v14];
  [*(a1 + 40) setObject:v10 forKey:v6];
}

void sub_1000048AC(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [a3 getMetricDictionary];
  [v4 setObject:v6 forKey:v5];
}

void sub_100004E78(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v5;
      v8 = v6;
      if ([v8 count])
      {
        v21 = 0u;
        v22 = 0u;
        v19 = 0u;
        v20 = 0u;
        v9 = v8;
        v10 = [v9 countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v10)
        {
          v11 = v10;
          v16 = v8;
          v17 = v6;
          v18 = v5;
          v12 = *v20;
          do
          {
            for (i = 0; i != v11; i = i + 1)
            {
              if (*v20 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v19 + 1) + 8 * i);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v15 = PLLogSignpostReader([*(a1 + 32) addSubsystem:v7 category:v14]);
                if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412546;
                  v24 = v7;
                  v25 = 2112;
                  v26 = v14;
                  _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "adding %@,%@ to signpost allowlist", buf, 0x16u);
                }
              }
            }

            v11 = [v9 countByEnumeratingWithState:&v19 objects:v27 count:16];
          }

          while (v11);
          v6 = v17;
          v5 = v18;
          v8 = v16;
        }
      }

      else
      {
        v9 = PLLogSignpostReader([*(a1 + 32) addSubsystem:v7 category:0]);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          sub_10000B074();
        }
      }
    }
  }
}

void sub_100005378(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000053A4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000053BC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 argument];
  v5 = [v4 type];

  if (v5 == 3)
  {
    v6 = [v3 placeholderTokens];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10000549C;
    v9[3] = &unk_1000145B0;
    v11 = *(a1 + 32);
    v7 = v3;
    v8 = *(a1 + 40);
    v10 = v7;
    v12 = v8;
    [v6 enumerateObjectsUsingBlock:v9];
  }
}

uint64_t sub_10000549C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v12 = a2;
  if ([v12 containsString:@"name="])
  {
    if ([v12 isEqualToString:@"name=sx"])
    {
      v6 = 40;
    }

    else
    {
      if (![v12 isEqualToString:@"name=sy"])
      {
LABEL_7:
        *a4 = 1;
        goto LABEL_8;
      }

      v6 = 48;
    }

    v7 = [*(a1 + 32) argument];
    v8 = [v7 argumentObject];
    v9 = *(*(a1 + v6) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    goto LABEL_7;
  }

LABEL_8:

  return _objc_release_x1();
}

uint64_t sub_1000058D8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 category];
  v5 = [v3 name];
  v6 = [v3 beginEvent];
  v7 = [v6 processName];

  v8 = [v3 endEvent];
  v9 = [v8 processName];
  v10 = [v9 isEqualToString:v7];

  if ((v10 & 1) == 0)
  {
    v12 = PLLogSignpostReader(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_10000B2C4(v7, v3);
    }
  }

  [v3 durationSeconds];
  v14 = 0;
  if (v4 && v5 && v7)
  {
    v15 = v13;
    v16 = [*(a1 + 32) objectForKey:v4];

    if (!v16)
    {
      v17 = objc_alloc_init(NSMutableDictionary);
      [*(a1 + 32) setObject:v17 forKeyedSubscript:v4];
    }

    v18 = [*(a1 + 32) objectForKeyedSubscript:v4];
    v19 = [v18 objectForKey:v5];

    if (!v19)
    {
      v20 = objc_alloc_init(NSMutableDictionary);
      v21 = [*(a1 + 32) objectForKeyedSubscript:v4];
      [v21 setObject:v20 forKeyedSubscript:v5];
    }

    v22 = v15;
    if ([v4 isEqualToString:@"ScrollView"])
    {
      v23 = [v5 isEqualToString:@"Scroll_Dragging"];
      if (v23 & 1) != 0 || (v23 = [v5 isEqualToString:@"Scroll_Deceleration"], (v23) || (v23 = objc_msgSend(v5, "isEqualToString:", @"Scroll_Animating"), v23))
      {
        v24 = PLLogSignpostReader(v23);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          sub_10000B37C();
        }

        v23 = [v3 number2Name];
        v25 = v23;
        if (v23)
        {
          v26 = [v3 number2Value];
          [v26 doubleValue];
          v28 = v27;

          v29 = [*(a1 + 32) objectForKeyedSubscript:v4];
          v30 = [v29 objectForKeyedSubscript:v5];
          v31 = [v30 objectForKey:v7];

          if (!v31)
          {
            v32 = objc_alloc_init(NSMutableDictionary);
            v33 = [*(a1 + 32) objectForKeyedSubscript:v4];
            v34 = [v33 objectForKeyedSubscript:v5];
            [v34 setObject:v32 forKeyedSubscript:v7];
          }

          v35 = [*(a1 + 40) getScrollDirectionForSignpostInterval:v3];
          if (!v35)
          {
            v55 = 0;
            v14 = 0;
LABEL_34:

            goto LABEL_35;
          }

          v90 = v25;
          v36 = [*(a1 + 32) objectForKeyedSubscript:v4];
          v37 = [v36 objectForKeyedSubscript:v5];
          v38 = [v37 objectForKeyedSubscript:v7];
          v39 = [v38 objectForKey:v35];

          if (!v39)
          {
            v40 = objc_alloc_init(NSMutableDictionary);
            v41 = [*(a1 + 32) objectForKeyedSubscript:v4];
            v42 = [v41 objectForKeyedSubscript:v5];
            v43 = [v42 objectForKeyedSubscript:v7];
            [v43 setObject:v40 forKeyedSubscript:v35];

            v44 = [*(a1 + 32) objectForKeyedSubscript:v4];
            v45 = [v44 objectForKeyedSubscript:v5];
            v46 = [v45 objectForKeyedSubscript:v7];
            v47 = [v46 objectForKeyedSubscript:v35];
            [v47 setObject:&off_100015A58 forKeyedSubscript:v90];

            v48 = [*(a1 + 32) objectForKeyedSubscript:v4];
            v49 = [v48 objectForKeyedSubscript:v5];
            v50 = [v49 objectForKeyedSubscript:v7];
            v51 = [v50 objectForKeyedSubscript:v35];
            [v51 setObject:&off_100015A10 forKeyedSubscript:@"Count"];
          }

          v88 = a1;
          v52 = [*(a1 + 32) objectForKeyedSubscript:v4];
          v53 = [v52 objectForKeyedSubscript:v5];
          v54 = [v53 objectForKeyedSubscript:v7];
          v55 = [v54 objectForKeyedSubscript:v35];

          v56 = [v55 objectForKeyedSubscript:v90];
          [v56 doubleValue];
          v58 = [NSNumber numberWithDouble:v28 + v57];
          [v55 setObject:v58 forKeyedSubscript:v90];
          goto LABEL_28;
        }
      }

      else
      {
        v25 = 0;
      }

      v35 = 0;
      v55 = 0;
      goto LABEL_32;
    }

    v59 = [*(a1 + 32) objectForKeyedSubscript:v4];
    v60 = [v59 objectForKeyedSubscript:v5];
    v61 = [v60 objectForKey:v7];

    if (!v61)
    {
      v62 = objc_alloc_init(NSMutableDictionary);
      v63 = [*(a1 + 32) objectForKeyedSubscript:v4];
      v64 = [v63 objectForKeyedSubscript:v5];
      [v64 setObject:v62 forKeyedSubscript:v7];

      v65 = [*(a1 + 32) objectForKeyedSubscript:v4];
      v66 = [v65 objectForKeyedSubscript:v5];
      v67 = [v66 objectForKeyedSubscript:v7];
      [v67 setObject:&off_100015A58 forKeyedSubscript:@"Duration"];

      v68 = [*(a1 + 32) objectForKeyedSubscript:v4];
      v69 = [v68 objectForKeyedSubscript:v5];
      v70 = [v69 objectForKeyedSubscript:v7];
      [v70 setObject:&off_100015A10 forKeyedSubscript:@"Count"];
    }

    v88 = a1;
    v71 = [*(a1 + 32) objectForKeyedSubscript:v4];
    v72 = [v71 objectForKeyedSubscript:v5];
    v55 = [v72 objectForKeyedSubscript:v7];

    v56 = [v55 objectForKeyedSubscript:@"Duration"];
    [v56 doubleValue];
    v58 = [NSNumber numberWithDouble:v73 + v22];
    [v55 setObject:v58 forKeyedSubscript:@"Duration"];
    v90 = 0;
    v35 = 0;
LABEL_28:

    v74 = [v55 objectForKeyedSubscript:@"Count"];
    v75 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v74 intValue] + 1);
    [v55 setObject:v75 forKeyedSubscript:@"Count"];

    a1 = v88;
    v25 = v90;
LABEL_32:
    v76 = PLLogSignpostReader(v23);
    if (os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG))
    {
      v78 = &stru_1000149D0;
      if (v35)
      {
        v78 = v35;
      }

      v83 = v78;
      v89 = [*(a1 + 32) objectForKeyedSubscript:v4];
      v86 = [v89 objectForKeyedSubscript:v5];
      v85 = [v86 objectForKeyedSubscript:v7];
      v79 = [v85 objectForKeyedSubscript:@"Duration"];
      v84 = [*(a1 + 32) objectForKeyedSubscript:v4];
      [v84 objectForKeyedSubscript:v5];
      v87 = v35;
      v80 = v91 = v25;
      v81 = [v80 objectForKeyedSubscript:v7];
      v82 = [v81 objectForKeyedSubscript:@"Count"];
      *buf = 138413826;
      v93 = v4;
      v94 = 2112;
      v95 = v5;
      v96 = 2112;
      v97 = v7;
      v98 = 2112;
      v99 = v83;
      v100 = 2048;
      v101 = v22;
      v102 = 2112;
      v103 = v79;
      v104 = 2112;
      v105 = v82;
      _os_log_debug_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEBUG, "Got signpostInterval %@,%@,%@,%@: %.3f (total = %@) (count = %@)", buf, 0x48u);

      v25 = v91;
      v35 = v87;
    }

    v14 = 1;
    goto LABEL_34;
  }

LABEL_35:

  return v14;
}

uint64_t sub_100007124(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 subsystem];
  v6 = [v3 category];
  LOBYTE(v4) = [v4 passesSubsystem:v5 category:v6];

  if (v4)
  {
    if (*(a1 + 80) == 1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v8 = [*(a1 + 40) signpostAnimationIntervalData:v3 forTaskingConfig:*(a1 + 48)];
    }

    else
    {
      v8 = [*(a1 + 40) signpostIntervalData:v3 forTaskingConfig:*(a1 + 48)];
    }

    v13 = v8;
    [*(a1 + 56) addObject:v8];

    if ([*(a1 + 56) count] >= 0xC8)
    {
      *(*(*(a1 + 72) + 8) + 24) = [*(a1 + 40) writeSignpostFile:*(a1 + 64) withOrder:*(*(*(a1 + 72) + 8) + 24) withData:*(a1 + 56)];
    }
  }

  else
  {
    v9 = PLLogSignpostReader(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [v3 subsystem];
      v11 = [v3 category];
      v12 = [v3 name];
      v15 = 138412802;
      v16 = v10;
      v17 = 2112;
      v18 = v11;
      v19 = 2112;
      v20 = v12;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Skipping parsing-only signpost '%@::%@::%@'", &v15, 0x20u);
    }
  }

  return 1;
}

void sub_100007310(id *a1, void *a2)
{
  v3 = a2;
  v4 = PLLogSignpostReader(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [a1[4] name];
    *buf = 138412290;
    v69 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[WR] Completing workflow event tracker for workflow '%@'...", buf, 0xCu);
  }

  v46 = [a1[5] workflowDataForEventTracker:v3];
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v43 = v3;
  obj = [v3 allSignpostTrackers];
  v47 = [obj countByEnumeratingWithState:&v62 objects:v73 count:16];
  if (v47)
  {
    v45 = *v63;
    do
    {
      v6 = 0;
      do
      {
        if (*v63 != v45)
        {
          objc_enumerationMutation(obj);
        }

        v48 = v6;
        v7 = *(*(&v62 + 1) + 8 * v6);
        v8 = [v46 mutableCopy];
        v9 = [a1[5] workflowDataForSignpostTracker:v7];
        [v8 addEntriesFromDictionary:v9];

        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        v49 = v7;
        v10 = [v7 emits];
        v11 = [v10 countByEnumeratingWithState:&v58 objects:v72 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v59;
          do
          {
            for (i = 0; i != v12; i = i + 1)
            {
              if (*v59 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v58 + 1) + 8 * i);
              v16 = [v8 mutableCopy];
              v17 = [a1[5] workflowDataForWREvent:v15];
              [v16 addEntriesFromDictionary:v17];

              v19 = PLLogSignpostReader(v18);
              if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
              {
                v20 = [a1[4] name];
                *buf = 138412546;
                v69 = v20;
                v70 = 2112;
                v71 = v16;
                _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[WR] Event processed for workflow '%@': %@", buf, 0x16u);
              }

              [a1[6] addObject:v16];
            }

            v12 = [v10 countByEnumeratingWithState:&v58 objects:v72 count:16];
          }

          while (v12);
        }

        v56 = 0u;
        v57 = 0u;
        v54 = 0u;
        v55 = 0u;
        v21 = [v49 intervals];
        v22 = [v21 countByEnumeratingWithState:&v54 objects:v67 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v55;
          do
          {
            for (j = 0; j != v23; j = j + 1)
            {
              if (*v55 != v24)
              {
                objc_enumerationMutation(v21);
              }

              v26 = *(*(&v54 + 1) + 8 * j);
              v27 = [v8 mutableCopy];
              v28 = [a1[5] workflowDataForWRInterval:v26];
              [v27 addEntriesFromDictionary:v28];

              v30 = PLLogSignpostReader(v29);
              if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
              {
                v31 = [a1[4] name];
                *buf = 138412546;
                v69 = v31;
                v70 = 2112;
                v71 = v27;
                _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "[WR] Interval processed for workflow '%@': %@", buf, 0x16u);
              }

              [a1[6] addObject:v27];
            }

            v23 = [v21 countByEnumeratingWithState:&v54 objects:v67 count:16];
          }

          while (v23);
        }

        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        v32 = [v49 incompleteIntervalStarts];
        v33 = [v32 countByEnumeratingWithState:&v50 objects:v66 count:16];
        if (v33)
        {
          v34 = v33;
          v35 = *v51;
          do
          {
            for (k = 0; k != v34; k = k + 1)
            {
              if (*v51 != v35)
              {
                objc_enumerationMutation(v32);
              }

              v37 = *(*(&v50 + 1) + 8 * k);
              v38 = [v8 mutableCopy];
              v39 = [a1[5] workflowDataForWRIncompleteInterval:v37];
              [v38 addEntriesFromDictionary:v39];

              v41 = PLLogSignpostReader(v40);
              if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
              {
                v42 = [a1[4] name];
                *buf = 138412546;
                v69 = v42;
                v70 = 2112;
                v71 = v38;
                _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "[WR] Incomplete Interval processed for workflow '%@': %@", buf, 0x16u);
              }

              [a1[6] addObject:v38];
            }

            v34 = [v32 countByEnumeratingWithState:&v50 objects:v66 count:16];
          }

          while (v34);
        }

        v6 = v48 + 1;
      }

      while ((v48 + 1) != v47);
      v47 = [obj countByEnumeratingWithState:&v62 objects:v73 count:16];
    }

    while (v47);
  }
}

uint64_t sub_1000078A8(uint64_t a1, void *a2)
{
  v3 = a2;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v21 = a1;
  obj = *(a1 + 32);
  v4 = [obj countByEnumeratingWithState:&v24 objects:v36 count:16];
  if (v4)
  {
    v5 = v4;
    v23 = *v25;
    do
    {
      v6 = 0;
      do
      {
        if (*v25 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v24 + 1) + 8 * v6);
        v8 = objc_autoreleasePoolPush();
        v9 = [v7 workflow];
        v10 = [v9 allowListForAllSignposts];
        v11 = [v3 subsystem];
        v12 = [v3 category];
        v13 = [v10 passesSubsystem:v11 category:v12];

        if (v13)
        {
          v15 = PLLogSignpostReader(v14);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            v16 = [v3 subsystem];
            v17 = [v3 category];
            v18 = [v7 workflow];
            v19 = [v18 name];
            *buf = 138413058;
            v29 = v16;
            v30 = 2112;
            v31 = v17;
            v32 = 2112;
            v33 = v19;
            v34 = 2112;
            v35 = v3;
            _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "[WR] Processing signpost object (%@:%@) for workflow '%@': %@", buf, 0x2Au);
          }

          [v7 handleSignpost:v3];
        }

        objc_autoreleasePoolPop(v8);
        v6 = v6 + 1;
      }

      while (v5 != v6);
      v5 = [obj countByEnumeratingWithState:&v24 objects:v36 count:16];
    }

    while (v5);
  }

  if ([*(v21 + 40) count] >= 0xC8)
  {
    *(*(*(v21 + 64) + 8) + 24) = [*(v21 + 48) writeSignpostFile:*(v21 + 56) withOrder:*(*(*(v21 + 64) + 8) + 24) withData:*(v21 + 40)];
  }

  return 1;
}

uint64_t sub_100007B40(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = [v3 subsystem];
  v6 = [v3 category];
  LODWORD(v4) = [v4 passesSubsystem:v5 category:v6];

  if (v4)
  {
    (*(a1[6] + 16))();
  }

  v7 = a1[5];
  v8 = [v3 subsystem];
  v9 = [v3 category];
  LODWORD(v7) = [v7 passesSubsystem:v8 category:v9];

  if (v7)
  {
    (*(a1[7] + 16))();
  }

  return 1;
}

uint64_t sub_100007C2C(uint64_t a1)
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v9 objects:v15 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v10;
    do
    {
      v5 = 0;
      do
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v9 + 1) + 8 * v5);
        v7 = PLLogSignpostReader(v2);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          sub_10000B6BC(v13, v6, &v14, v7);
        }

        v2 = [v6 reset];
        v5 = v5 + 1;
      }

      while (v3 != v5);
      v2 = [v1 countByEnumeratingWithState:&v9 objects:v15 count:16];
      v3 = v2;
    }

    while (v2);
  }

  return 1;
}

void sub_1000095D4(id a1)
{
  v1 = MGCopyAnswerWithError();
  byte_100019460 = [v1 isEqual:@"iPad"];
}

BOOL sub_1000098AC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 beginEvent];
  v5 = [v4 name];
  v6 = [v5 isEqualToString:@"HangInterval"];

  if (v6)
  {
    v7 = *(a1 + 32);
    v8 = [*(a1 + 40) objectForKeyedSubscript:@"hangDurations"];
    [v7 updateHangsData:v8 withInterval:v3];
  }

  v9 = [*(a1 + 40) objectForKeyedSubscript:@"hangDurations"];
  v10 = [v9 count];
  v11 = v10;
  if (v10 >= 0x5DD)
  {
    v12 = PLLogSignpostReader(v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[RAPID] Exceeded max hang signpost count", v14, 2u);
    }
  }

  return v11 < 0x5DD;
}

void sub_10000A2D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000A31C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    xdata = v4;
    length = xpc_data_get_length(v4);
    v4 = xdata;
    if (length >= 5)
    {
      bytes_ptr = xpc_data_get_bytes_ptr(xdata);
      v4 = xdata;
      if (*bytes_ptr != 835010577 || (++*(*(*(a1 + 40) + 8) + 24), (*(a1 + 64) & 1) != 0) || (HIDWORD(v7) = -858993459 * *(*(*(a1 + 40) + 8) + 24), LODWORD(v7) = HIDWORD(v7), (v7 >> 1) <= 0x19999999))
      {
        ++*(*(*(a1 + 48) + 8) + 24);
        v8 = *(a1 + 56) - kCFAbsoluteTimeIntervalSince1970;
        v9 = *(a1 + 32);
        v10 = [[NSData alloc] initWithBytes:bytes_ptr length:length];
        [v9 addMicrostackshotsFromData:v10 ofTypes:17 inTimeRangeStart:0xFFFFFFFFLL end:0 onlyPid:0.0 onlyTid:v8];

        v4 = xdata;
      }
    }
  }
}

void sub_10000A578(id a1)
{
  info = 0;
  if (mach_timebase_info(&info))
  {
    _os_assumes_log();
    v1 = 1.0;
  }

  else
  {
    v1 = (info.numer / info.denom);
  }

  qword_100019478 = *&v1;
}

void sub_10000A7F0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 0xCu);
}

void sub_10000A80C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void sub_10000A838(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%{public}@: Connection attempt from %{public}@", &v3, 0x16u);
}

void sub_10000A8C0(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Process %d does not have read entitlement!", v2, 8u);
}

void sub_10000A938(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 67109120;
  HIDWORD(v8) = a1;
  sub_100001464(&_mh_execute_header, a2, a3, "Process %d has read entitlement!", a5, a6, a7, a8, v8);
}

void sub_10000AA5C(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 67109120;
  HIDWORD(v8) = a1;
  sub_100001464(&_mh_execute_header, a2, a3, "Disabling CPU exceptions for PID %d", a5, a6, a7, a8, v8);
}

void sub_10000AB44(void *a1)
{
  v2 = [a1 endEvent];
  v3 = [v2 processName];
  v4 = [a1 number1Value];
  sub_10000A82C();
  sub_10000A7D4();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_10000AC0C(void *a1, NSObject *a2)
{
  v4 = [a1 endEvent];
  v5 = [v4 processName];
  v6 = [a1 string2Value];
  v7 = [v6 isEqualToString:@"YES"];
  v8 = @"Background";
  if (v7)
  {
    v8 = @"Foreground";
  }

  v9 = 138412546;
  v10 = v5;
  v11 = 2112;
  v12 = v8;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Process: %@ is a %@ Extended Launch", &v9, 0x16u);
}

void sub_10000AD04(void *a1)
{
  v2 = [a1 endEvent];
  v3 = [v2 processName];
  v4 = [a1 number1Value];
  sub_10000A82C();
  sub_10000A7D4();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_10000ADCC(void *a1)
{
  v1 = [a1 endEvent];
  v2 = [v1 processName];
  sub_10000A7E4();
  sub_10000A7D4();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_10000AE70(void *a1)
{
  v1 = [a1 endEvent];
  v2 = [v1 processName];
  sub_10000A7E4();
  sub_10000A7D4();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_10000AF14(void *a1)
{
  v1 = [a1 beginEvent];
  v2 = [v1 name];
  sub_10000A7E4();
  sub_10000A82C();
  sub_10000A7D4();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_10000AFC4(void *a1)
{
  if (a1)
  {
    v1 = [a1 localizedDescription];
    [v1 UTF8String];
  }

  sub_10000A7E4();
  sub_10000A80C(&_mh_execute_header, v3, v4, "## Unable to serialize to %s", v5, v6, v7, v8);
  if (a1)
  {
  }
}

void sub_10000B214(void *a1)
{
  if (a1)
  {
    v1 = [a1 localizedDescription];
    [v1 UTF8String];
  }

  sub_10000A7E4();
  sub_10000A80C(&_mh_execute_header, v3, v4, "Unable to process signpost: %s", v5, v6, v7, v8);
  if (a1)
  {
  }
}

void sub_10000B2C4(uint64_t a1, void *a2)
{
  v2 = [a2 endEvent];
  v3 = [v2 processName];
  sub_10000A82C();
  sub_10000A7D4();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_10000B4B4(void *a1, uint8_t *buf, void *a3, os_log_t log)
{
  *buf = 138412290;
  *a3 = a1;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "[WR] Setting up tracker for workflow '%@'...", buf, 0xCu);
}

void sub_10000B6BC(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 workflow];
  v8 = [v7 name];
  *a1 = 138412290;
  *a3 = v8;
  _os_log_debug_impl(&_mh_execute_header, a4, OS_LOG_TYPE_DEBUG, "[WR] Resetting event tracker for workflow '%@' due to device reboot", a1, 0xCu);
}

void sub_10000B74C(void *a1, NSObject *a2)
{
  v4 = [a1 objectForKeyedSubscript:@"Category"];
  v5 = [a1 objectForKeyedSubscript:@"Name"];
  v6 = [a1 objectForKeyedSubscript:@"EndProcessName"];
  if (v6)
  {
    v7 = @"EndProcessName";
  }

  else
  {
    v7 = @"BeginProcessName";
  }

  v8 = [a1 objectForKeyedSubscript:v7];
  v11 = 138412802;
  v12 = v4;
  sub_10000A82C();
  v13 = v5;
  v14 = v9;
  v15 = v10;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Got signpostInterval %@_%@: %@", &v11, 0x20u);
}

void sub_10000B8B4(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = [a1 localizedDescription];
  sub_10000A7E4();
  sub_10000A82C();
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Failed to create tag file: %@ (%@)", v6, 0x16u);
}

void sub_10000B95C(uint64_t a1, void *a2, NSObject *a3)
{
  v5 = 138412802;
  v6 = a1;
  v7 = 2048;
  v8 = [a2 code];
  v9 = 2112;
  v10 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Could not remove %@.Error [%ld] %@ ", &v5, 0x20u);
}

void sub_10000BA90(void *a1)
{
  if (a1)
  {
    v1 = [a1 localizedDescription];
    [v1 UTF8String];
  }

  sub_10000A7E4();
  sub_10000A80C(&_mh_execute_header, v3, v4, "[RAPID] Unable to serialize signpost: %s", v5, v6, v7, v8);
  if (a1)
  {
  }
}