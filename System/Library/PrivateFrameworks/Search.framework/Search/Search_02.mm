void sub_10005D244(uint64_t a1)
{
  memset(&enumerator, 0, sizeof(enumerator));
  NSEnumerateMapTable(&enumerator, *(a1 + 32));
  key = 0;
  value = 0;
  if (NSNextMapEnumeratorPair(&enumerator, &key, &value))
  {
    v47 = 0;
    while (1)
    {
      Count = CFBinaryHeapGetCount(value);
      v3 = [NSString alloc];
      v48 = [v3 initWithCString:key encoding:4];
      v42 = &v42;
      __chkstk_darwin(v48);
      v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v5, v4);
      CFBinaryHeapGetValues(value, v5);
      v6 = SPL1Threshold();
      v43 = v7;
      v44 = v6;
      if (Count >= 1)
      {
        break;
      }

LABEL_62:

      if (!NSNextMapEnumeratorPair(&enumerator, &key, &value))
      {
        goto LABEL_65;
      }
    }

    v8 = 0;
    v45 = v5;
    v46 = Count;
    while (1)
    {
      v9 = *&v5[8 * v8];
      v11 = *(v9 + 16);
      v10 = *(v9 + 24);
      v12 = *(v9 + 32);
      v13 = sub_10004BAE0(v9 + 64, 0);
      objc_opt_class();
      v50 = v13;
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v17 = v50;
LABEL_61:

      if (++v8 == Count)
      {
        goto LABEL_62;
      }
    }

    v49 = v12;
    if (*(a1 + 80))
    {
      v14 = 0;
      v15 = 0;
      do
      {
        if ([*(a1 + 40) containsIndex:v15])
        {
          if (v15 > 63)
          {
            if (v15 > 0x7F)
            {
              if (v15 > 0xBF)
              {
                if (v15 > 0xFF)
                {
                  v16 = v15 > 0x13F ? *(v9 + 104) : *(v9 + 96);
                }

                else
                {
                  v16 = *(v9 + 88);
                }
              }

              else
              {
                v16 = *(v9 + 80);
              }
            }

            else
            {
              v16 = *(v9 + 72);
            }
          }

          else
          {
            v16 = *(v9 + 64);
          }

          if ((v16 & (1 << v15)) != 0)
          {
            ++v14;
          }
        }

        ++v15;
      }

      while (v15 < *(a1 + 80));
    }

    v18 = SSCompactRankingAttrsAlloc();
    if (*(a1 + 80))
    {
      v19 = 0;
      do
      {
        if ([*(a1 + 40) containsIndex:v19])
        {
          if (v19 > 0x3F)
          {
            if (v19 > 0x7F)
            {
              if (v19 > 0xBF)
              {
                if (v19 > 0xFF)
                {
                  v20 = v19 > 0x13F ? *(v9 + 104) : *(v9 + 96);
                }

                else
                {
                  v20 = *(v9 + 88);
                }
              }

              else
              {
                v20 = *(v9 + 80);
              }
            }

            else
            {
              v20 = *(v9 + 72);
            }
          }

          else
          {
            v20 = *(v9 + 64);
          }

          if ((v20 & (1 << v19)) != 0)
          {
            sub_10004C718(v9 + 64, v19);
            v21 = sub_10004CED8(v9 + 64, v19);
            if (v21)
            {
              SSCompactRankingAttrsInsertValue();
            }
          }
        }

        ++v19;
      }

      while (*(a1 + 80) > v19);
    }

    v22 = [[PRSRankingItem alloc] initWithAttrs:v18 isServerAlternativeResult:1];
    v23 = v48;
    if (([v48 isEqualToString:@"com.apple.application"] & 1) == 0)
    {
      goto LABEL_48;
    }

    v24 = *(a1 + 48);
    v25 = [v22 identifier];
    if ([v24 containsObject:v25])
    {
      v26 = *(a1 + 56);
      v27 = [v22 identifier];
      LOBYTE(v26) = [v26 containsObject:v27];

      if ((v26 & 1) == 0)
      {
        v28 = *(a1 + 56);
        v29 = [v22 identifier];
        [v28 addObject:v29];

        v23 = v48;
LABEL_48:
        *buf = 0;
        sub_10004BFD4(v9 + 64, 0x58uLL, buf);
        v30 = sub_10004BAE0(v9 + 64, 0xAuLL);
        sub_10004BFD4(v9 + 64, 0x59uLL, buf);
        v31 = [[SPSearchTopHitResult alloc] initWithRankingItem:v22 clientData:v9];
        [(SPTopHitResult *)v31 setScore:v11, v10];
        v32 = [NSDate dateWithTimeIntervalSinceReferenceDate:*(v9 + 40)];
        [(SPTopHitResult *)v31 setInterestingDate:v32];

        [(SPTopHitResult *)v31 setBundleID:v23];
        [(SPTopHitResult *)v31 setDataclass:v49];
        if (__PAIR128__(v10, v11) < __PAIR128__(v43, v44))
        {
          [v22 setEligibleForDemotion:1];
        }

        v17 = v50;
        if ([v50 hasPrefix:@"com.apple.siri."])
        {
          v33 = [(SPTopHitResult *)v31 rankingItem];
          v34 = [v33 L2FeatureVector];
          [v34 setIsSiriAction:1];

          v23 = v48;
        }

        v35 = [*(a1 + 64) objectForKey:v23];
        if (!v35)
        {
          v35 = objc_opt_new();
          [v35 setDomain:1];
          v36 = v48;
          [v35 setBundleIdentifier:v48];
          if ([v36 isEqualToString:@"com.apple.application"])
          {
            v37 = [NSBundle bundleForClass:objc_opt_class()];
            v38 = [v37 localizedStringForKey:@"DOMAIN_APPLICATION" value:&stru_100094040 table:@"Search"];
            [v35 setTitle:v38];

            v17 = v50;
          }

          else
          {
            v37 = [SDLocUtilities displayNameForBundleIdentifer:v36];
            [v35 setTitle:v37];
          }

          [*(a1 + 64) setObject:v35 forKey:v36];
        }

        [v35 addResults:v31];
        ++v47;

        v5 = v45;
        goto LABEL_60;
      }
    }

    else
    {
    }

    v5 = v45;
    v17 = v50;
LABEL_60:

    Count = v46;
    v12 = v49;
    goto LABEL_61;
  }

  v47 = 0;
LABEL_65:
  dispatch_group_leave(*(a1 + 72));
  v39 = CFAbsoluteTimeGetCurrent() - *(a1 + 88);
  v40 = SPLogForSPLogCategoryDefault();
  v41 = v40;
  if (v39 * 1000000000.0 <= 500000000.0)
  {
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = v39;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Local copy query took %lf seconds", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
  {
    sub_100063BB0(v47, v41, v39);
  }
}

void sub_10005E608(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableArray);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v9 = [v8 bundleIdentifier];
        if (!v9 || ([*(a1 + 40) containsObject:v9] & 1) == 0)
        {
          [v2 addObject:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  v10 = *(a1 + 48);
  if ((*(v10 + 121) & 1) == 0)
  {
    if (*(a1 + 56) == *(v10 + 200))
    {
      v11 = PRSLogCategoryDefault();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        sub_100063CC8(v2);
      }

      v12 = [*(a1 + 56) feedbackQueryIdentifier];
      v13 = *(a1 + 48);
      v14 = *(v13 + 152);
      *(v13 + 152) = v12;

      objc_storeStrong((*(a1 + 48) + 208), v2);
      v10 = *(a1 + 48);
    }

    if (*(v10 + 208) || !*(v10 + 200))
    {
      [v10 finished];
    }
  }
}

void sub_10005FC50(uint64_t a1, void *a2, void *a3, void *a4, void *a5, int a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = SPLogForSPLogCategoryDefault();
  v16 = v15;
  if (gSPLogDebugAsDefault)
  {
    v17 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v17 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v15, v17))
  {
    v20 = 138412546;
    v21 = v11;
    v22 = 2112;
    v23 = v12;
    _os_log_impl(&_mh_execute_header, v16, v17, "Got FTE reply - fteString %@, learnMore %@", &v20, 0x16u);
  }

  if (a6)
  {
    v18 = *(a1 + 32);
    v19 = *(v18 + 72);
    *(v18 + 72) = 0;

    [*(a1 + 32) setupSearchSession];
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10005FFA4(uint64_t a1)
{
  v2 = objc_alloc_init(SPParsecFeedbackProxy);
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;

  v5 = [*(*(a1 + 32) + 72) listener];
  [*(*(a1 + 32) + 8) setListener:v5];
}

id sub_100060020(char *a1, void *a2)
{
  keys = a1;
  v4 = a2;
  v2 = xpc_dictionary_create(&keys, &v4, 1uLL);

  return v2;
}

void sub_100061130(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000066D4(va);
  _Unwind_Resume(a1);
}

void sub_100061280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000066D4(va);
  _Unwind_Resume(a1);
}

void sub_1000612A4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, v8, OS_LOG_TYPE_DEBUG, a4, va, 0xCu);
}

unsigned int *sub_1000612C4(unsigned int a1)
{
  v2 = malloc_type_calloc(1uLL, (16 * a1) | 8, 0x1000040D9BFD5C6uLL);
  v3 = v2;
  v7[1] = 0;
  *v2 = a1;
  if (a1)
  {
    v4 = 0;
    v5 = v2 + 2;
    do
    {
      sub_10006166C(v5, v7);
      ++v4;
      v5 += 2;
    }

    while (v4 < *v3);
  }

  return v3;
}

void sub_100061354(unsigned int *a1)
{
  if (a1)
  {
    v1 = sub_1000615F8(a1);

    free(v1);
  }
}

uint64_t sub_100061384(unsigned int *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11[0] = a2;
  v11[1] = a3;
  v9 = 0;
  v10 = 0;
  v4 = *a1;
  if (!v4)
  {
    return 0;
  }

  v6 = &a1[4 * ((a2 - 1) % v4)];
  v7 = *(v6 + 2);
  if (v7)
  {
    if (sub_10004D574(v7, a3) != -1 && *(v6 + 1))
    {
      return 0;
    }
  }

  sub_10006166C(&v9, v6 + 1);
  sub_10006166C(v6 + 1, v11);
  *a4 = v10;
  return 1;
}

uint64_t sub_10006141C(unsigned int *a1, uint64_t a2, uint64_t a3)
{
  v7[0] = a2;
  v7[1] = a3;
  v3 = *a1;
  if (!v3)
  {
    return 0;
  }

  v4 = &a1[4 * ((a2 - 1) % v3)];
  v5 = *(v4 + 2);
  if (v5)
  {
    if (sub_10004D5E4(v5, a3) != -1 && *(v4 + 1))
    {
      return 0;
    }
  }

  sub_10006166C(v4 + 1, v7);
  return 1;
}

unint64_t sub_100061498(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *result;
    if (v2)
    {
      LODWORD(result) = 0;
      v3 = (v1 + 8);
      do
      {
        v4 = *v3;
        v3 += 2;
        if (v4)
        {
          result = (result + 1);
        }

        else
        {
          result = result;
        }

        --v2;
      }

      while (v2);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_1000614D0(unsigned int *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v10 = sub_1000615E4;
    v11 = &unk_100093CD0;
    v12 = v3;
    v5 = v9;
    v6 = *a1;
    if (v6)
    {
      v7 = 0;
      v8 = a1 + 4;
      do
      {
        if (*(v8 - 1))
        {
          v14 = *v8;
          (v10)(v5, v13);
          v6 = *a1;
        }

        ++v7;
        v8 += 4;
      }

      while (v7 < v6);
    }
  }
}

unsigned int *sub_1000615F8(unsigned int *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = 0;
    v4 = (a1 + 4);
    do
    {
      if (*(v4 - 1) && *v4)
      {
        sub_10004BFA8(kCFAllocatorDefault, *v4);
        v2 = *a1;
      }

      ++v3;
      v4 += 2;
    }

    while (v3 < v2);
  }

  return a1;
}

void *sub_10006166C(void *a1, void *a2)
{
  if (a1 != a2)
  {
    v4 = a2[1];
    if (v4)
    {
      sub_10004BFC4(kCFAllocatorDefault, v4);
    }

    v5 = a1[1];
    if (v5)
    {
      sub_10004BFA8(kCFAllocatorDefault, v5);
    }

    v6 = a2[1];
    *a1 = *a2;
    a1[1] = v6;
  }

  return a1;
}

void sub_100061A54(uint64_t a1, void *a2)
{
  v3 = a2;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v4 = [v3 results];
  v5 = [v4 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v27;
    do
    {
      v8 = 0;
      do
      {
        if (*v27 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v26 + 1) + 8 * v8) setQueryId:{objc_msgSend(*(a1 + 32), "queryIdent")}];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v6);
  }

  v9 = +[SDController workQueue];
  v10 = qos_class_self();
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100061C4C;
  v17[3] = &unk_100093CF8;
  v11 = *(a1 + 72);
  v22 = *(a1 + 56);
  v23 = v11;
  v24 = *(a1 + 88);
  v25 = *(a1 + 96);
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v18 = v12;
  v19 = v13;
  v20 = v3;
  v21 = v14;
  v15 = v3;
  v16 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v10, 0, v17);
  dispatch_async(v9, v16);
}

double sub_100061C4C(uint64_t a1)
{
  v2 = si_tracing_current_span();
  v3 = *(v2 + 16);
  v27 = *v2;
  v28 = v3;
  v29 = *(v2 + 32);
  v4 = *(a1 + 80);
  *v2 = *(a1 + 64);
  *(v2 + 16) = v4;
  *(v2 + 32) = *(a1 + 96);
  v5 = *(a1 + 80);
  v24 = *(a1 + 64);
  v25 = v5;
  v26 = *(a1 + 96);
  v6 = *v2;
  spanid = si_tracing_calc_next_spanid();
  v8 = *(v2 + 8);
  *v2 = v6;
  *(v2 + 8) = spanid;
  *(v2 + 16) = v8;
  *(v2 + 28) = 102;
  *(v2 + 32) = "SPWorldClockDataStore completion";
  si_tracing_log_span_begin();
  v9 = SPLogForSPLogCategoryTelemetry();
  v10 = v9;
  v11 = *(a1 + 104);
  if (v11 && os_signpost_enabled(v9))
  {
    *v23 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_END, v11, "worldClockLatency", " enableTelemetry=YES ", v23, 2u);
  }

  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  if (v14)
  {
    v30 = *(a1 + 48);
    v15 = [NSArray arrayWithObjects:&v30 count:1];
  }

  else
  {
    v15 = &__NSArray0__struct;
  }

  [v12 storeCompletedSearch:v13 withSections:v15];
  if (v14)
  {
  }

  v16 = [[SFEndLocalSearchFeedback alloc] initWithStartSearch:*(a1 + 56)];
  v17 = +[SPFeedbackProxy sharedProxy];
  v18 = [*(a1 + 32) queryIdent];
  v19 = [*(a1 + 32) connection];
  v20 = [v19 bundleID];
  [v17 sendFeedbackType:6 feedback:v16 queryId:v18 clientID:v20];

  si_tracing_log_span_end();
  result = *&v27;
  v22 = v28;
  *v2 = v27;
  *(v2 + 16) = v22;
  *(v2 + 32) = v29;
  return result;
}

void sub_100061E7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, __int128 a18, uint64_t a19)
{
  *v19 = a17;
  *(v19 + 16) = a18;
  *(v19 + 32) = a19;
  _Unwind_Resume(exception_object);
}

void sub_10006201C(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138412546;
  *&v3[4] = *(a1 + 8);
  *&v3[12] = 2112;
  *&v3[14] = a2;
  sub_100003E50(&_mh_execute_header, a2, a3, "Error serializing property list for %@ %@", *v3, *&v3[8], *&v3[16]);
}

void sub_100062098(uint64_t a1, NSObject *a2)
{
  v4 = 138412290;
  v5 = objc_opt_class();
  v3 = v5;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error, property list is not expected class NSDictionary, instead %@", &v4, 0xCu);
}

void sub_100062130(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138412546;
  *&v3[4] = a1;
  *&v3[12] = 2112;
  *&v3[14] = a2;
  sub_100003E50(&_mh_execute_header, a2, a3, "Error, can't load property list for %@ %@", *v3, *&v3[8], *&v3[16]);
}

void sub_100062414()
{
  v0 = +[SPBackupRankingMetadataHandler sharedInstance];
  if (qword_1000A82B0 != -1)
  {
    dispatch_once(&qword_1000A82B0, &stru_100092550);
  }
}

void sub_100062464(void *a1)
{
  if (qword_1000A82C8 && [a1 isEqualToString:PRSRankingContactsBundleString] && qword_1000A82D0 != -1)
  {
    dispatch_once(&qword_1000A82D0, &stru_100092570);
  }
}

void sub_10006250C(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:*(a1 + 48) object:*(a1 + 32) file:@"SDController.m" lineNumber:1114 description:{@"count: %d size: %d", a2, 41}];
}

void sub_100062668(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  sub_1000260EC(&_mh_execute_header, a2, a3, "[TopHitAppShortcuts] shortcut query error %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1000626D4(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  sub_1000260EC(&_mh_execute_header, a2, a3, "[TopHitAppShortcuts] app query error %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_100062740(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  sub_1000260EC(&_mh_execute_header, a2, a3, "[TopHitAppShortcuts] updateShortcuts error %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1000629F8(void *a1, uint64_t a2, NSObject *a3)
{
  v4 = 134218240;
  v5 = a2;
  v6 = 2048;
  v7 = [a1 length];
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "bad app metadata offset:%lld dataLen:%lu", &v4, 0x16u);
}

void sub_100062C78()
{
  LODWORD(v6) = 67109120;
  HIDWORD(v6) = *__error();
  sub_10002CC20(&_mh_execute_header, v0, v1, "Serious error in writing temporary file. %d\n", v2, v3, v4, v5, v6);
}

void sub_100062D60()
{
  LODWORD(v6) = 67109120;
  HIDWORD(v6) = *__error();
  sub_10002CC20(&_mh_execute_header, v0, v1, "Serious error in truncateMapping %d\n", v2, v3, v4, v5, v6);
}

void sub_100062E7C(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to open backup file, err:%d", v2, 8u);
}

void sub_100062FD8(void *a1)
{
  [a1 code];
  sub_10004B2E4();
  sub_10004B2F0();
  sub_10004B2FC(v1, v2, v3, v4, v5);
}

void sub_100063054(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_10004B2E4();
  sub_10004B2F0();
  sub_10004B2FC(v2, v3, v4, v5, v6);
}

void sub_100063330(NSObject *a1)
{
  if (gSPLogDebugAsDefault)
  {
    v1 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v1 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(a1, v1))
  {
    sub_10004B2F0();
    _os_log_impl(v2, v3, v1, v4, v5, 2u);
  }
}

void sub_1000633A0(NSObject *a1)
{
  if (gSPLogDebugAsDefault)
  {
    v1 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v1 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(a1, v1))
  {
    sub_10004B2F0();
    _os_log_impl(v2, v3, v1, v4, v5, 2u);
  }
}

void sub_100063410(uint64_t a1, uint8_t *buf, uint64_t a3, os_log_t log)
{
  *buf = 134218242;
  *(buf + 4) = a3;
  *(buf + 6) = 2112;
  *(buf + 14) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "[qid=%ld][rewrite] Fetching Spotlight rewrite candidates failed: %@", buf, 0x16u);
}

void sub_1000636D8(uint64_t a1, void *a2)
{
  v2 = [a2 description];
  sub_100059620();
  sub_100059650(&_mh_execute_header, v3, v4, "*** invalid feedback class for (%s) %@", v5, v6, v7, v8);
}

void sub_100063810()
{
  sub_100059638();
  sub_100059610();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100063880(uint64_t a1, void *a2)
{
  v2 = [a2 description];
  sub_100059620();
  sub_100059650(&_mh_execute_header, v3, v4, "*** invalid feedback class for (%s) %@", v5, v6, v7, v8);
}

void sub_10006391C()
{
  sub_100059638();
  sub_100059610();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100063BB0(int a1, NSObject *a2, double a3)
{
  v3[0] = 67109632;
  v3[1] = a1;
  v4 = 2048;
  v5 = a3;
  v6 = 2048;
  v7 = 0x3FE0000000000000;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Local copy query took longer than allowed timeout and missed %d results: took %lf seconds but was allowed %lf", v3, 0x1Cu);
}

void sub_100063C40(void *a1)
{
  v1 = [a1 category_stats];
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = v1;
  sub_1000612A4(&_mh_execute_header, v2, v3, "Category stats: %@", v4, v5, v6, v7, v8, DWORD2(v8));
}

void sub_100063CC8(void *a1)
{
  v1 = [a1 valueForKey:@"title"];
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = v1;
  sub_1000612A4(&_mh_execute_header, v2, v3, "Got Parsec results: %@", v4, v5, v6, v7, v8, DWORD2(v8));
}

void sub_100063D58(uint64_t a1, NSObject *a2)
{
  if (*(a1 + 48))
  {
    v2 = "enabled";
  }

  else
  {
    v2 = "disabled";
  }

  v3 = 136315138;
  v4 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "activate parsec datastore (%s)", &v3, 0xCu);
}