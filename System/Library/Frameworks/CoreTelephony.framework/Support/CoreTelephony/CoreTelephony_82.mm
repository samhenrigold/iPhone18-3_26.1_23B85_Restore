BOOL sub_100536CE0(uint64_t a1, void *a2)
{
  if (![a2 count])
  {
    return 1;
  }

  v4 = sub_10053572C(a1, 7);
  if (v4)
  {
    v5 = v4;
    if (![v4 info])
    {
      return 0;
    }

    v6 = [objc_msgSend(v5 "info")];
    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = 0;
        ctu::ns::AutoPool::AutoPool(&v10);
        v7 = [NSMutableSet setWithArray:v6];
        v8 = v7;
        v6 = v7 != 0;
        if (v7)
        {
          [(NSMutableSet *)v7 addObjectsFromArray:a2];
          [objc_msgSend(v5 "info")];
        }

        ctu::ns::AutoPool::~AutoPool(&v10);
        return v6;
      }

      return 0;
    }

    return v6;
  }

  return sub_1005375C4(a1, a2);
}

void sub_100536E1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::ns::AutoPool::~AutoPool(va);
  _Unwind_Resume(a1);
}

void *sub_100536E30(uint64_t a1, void *a2)
{
  v6 = 0;
  sub_10053562C(a1, 5, &v6);
  v4 = sub_100537F90(a1, a2, v6, @"notifications", @"notification-name");
  sub_100005978(&v6);
  return v4;
}

void sub_100536E9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100536EB0(uint64_t a1, int a2)
{
  v2 = (*(a1 + 96) + 16 * a2);
  v3 = *v2;
  v4 = v2[1];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = (*(*v3 + 40))(v3);
  if (v4)
  {
    sub_100004A34(v4);
  }

  return v5;
}

void sub_100536F20(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

id sub_100536F38(uint64_t a1, void *a2)
{
  v24 = 0;
  sub_10053562C(a1, 21, &v24);
  v4 = v24;
  v5 = [a2 objectForKey:@"token-scopes"];
  v6 = [a2 objectForKey:@"mp-tokens-scopes"];
  if (v5)
  {
    v5 = sub_1005378F8(a1, v5, v4, @"token-scopes");
  }

  if (v6)
  {
    theDict = 0;
    sub_100534380([v5 info], &theDict);
    v22 = 0;
    sub_100534380(a2, &v22);
    if (!theDict || !v22)
    {
      goto LABEL_24;
    }

    Value = CFDictionaryGetValue(theDict, off_101FB24C0);
    if (Value)
    {
      v8 = CFGetTypeID(Value);
      v9 = v8 != CFStringGetTypeID();
    }

    else
    {
      v9 = 1;
    }

    v10 = CFDictionaryGetValue(v22, off_101FB24C0);
    if (v10)
    {
      v11 = CFGetTypeID(v10);
      if (v11 == CFStringGetTypeID() || v9)
      {
        goto LABEL_24;
      }
    }

    else if (v9)
    {
LABEL_24:
      v5 = sub_100537F90(a1, v6, v4, @"mp-tokens-scopes", @"scope");
      sub_10001021C(&v22);
      sub_10001021C(&theDict);
      goto LABEL_25;
    }

    v12 = objc_opt_new();
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v13 = [v6 countByEnumeratingWithState:&v18 objects:v25 count:16];
    if (v13)
    {
      v14 = *v19;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v19 != v14)
          {
            objc_enumerationMutation(v6);
          }

          v16 = *(*(&v18 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && ([objc_msgSend(v16 objectForKey:{@"scope", "isEqual:", @"rcs-config"}] & 1) == 0)
          {
            [v12 addObject:v16];
          }
        }

        v13 = [v6 countByEnumeratingWithState:&v18 objects:v25 count:16];
      }

      while (v13);
    }

    v6 = v12;
    goto LABEL_24;
  }

LABEL_25:
  sub_100005978(&v24);
  return v5;
}

void sub_1005371D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va2, a19);
  va_start(va1, a19);
  va_start(va, a19);
  v20 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v22 = va_arg(va2, const void *);
  sub_10001021C(va);
  sub_10001021C(va1);
  sub_100005978(va2);
  _Unwind_Resume(a1);
}

void sub_10053722C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = **(a1 + 56);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = PersonalityInfo::logPrefix(**(a1 + 16));
    v5 = *(a1 + 64);
    v6 = *(a1 + 72);
    sub_100535024(a1, __p);
    if (v18 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    *buf = 136316162;
    v20 = v4;
    v21 = 2080;
    v22 = " ";
    v23 = 2080;
    v24 = v5;
    v25 = 2080;
    v26 = v6;
    v27 = 2082;
    *v28 = v7;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%s | Query has %{public}s", buf, 0x34u);
    if (v18 < 0)
    {
      operator delete(__p[0]);
    }

    v3 = **(a1 + 56);
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = PersonalityInfo::logPrefix(**(a1 + 16));
    v9 = *(a1 + 64);
    v10 = *(a1 + 72);
    v11 = [objc_msgSend(*(a1 + 40) "description")];
    *buf = 136316162;
    v20 = v8;
    v21 = 2080;
    v22 = " ";
    v23 = 2080;
    v24 = v9;
    v25 = 2080;
    v26 = v10;
    v27 = 2080;
    *v28 = v11;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%s | Requests: %s", buf, 0x34u);
    v3 = **(a1 + 56);
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v12 = PersonalityInfo::logPrefix(**(a1 + 16));
    v13 = *(a1 + 64);
    v14 = *(a1 + 72);
    v15 = *(a1 + 32);
    v16 = *(a1 + 48);
    *buf = 136316418;
    v20 = v12;
    v21 = 2080;
    v22 = " ";
    v23 = 2080;
    v24 = v13;
    v25 = 2080;
    v26 = v14;
    v27 = 1024;
    *v28 = v15;
    *&v28[4] = 1024;
    *&v28[6] = v16;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%s | Current Transaction ID: %d, generation: %u", buf, 0x36u);
  }

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_100537494(uint64_t a1, _BYTE *a2)
{
  if ((*a2 & 0x20) == 0 || sub_100534DF0(a1, @"authenticate"))
  {
    return 0;
  }

  v4 = [SubscriberRequestTransactionElement requestWithAction:@"authenticate" andAnnotation:0];
  v5 = **(a1 + 56);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = PersonalityInfo::logPrefix(**(a1 + 16));
    v7 = *(a1 + 64);
    v8 = *(a1 + 72);
    v9 = 136315906;
    v10 = v6;
    v11 = 2080;
    v12 = " ";
    v13 = 2080;
    v14 = v7;
    v15 = 2080;
    v16 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sadding AuthOnly action", &v9, 0x2Au);
  }

  sub_100534920(a1, @"authenticate", v4);
  return 1;
}

BOOL sub_1005375C4(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v9 = 0;
  ctu::ns::AutoPool::AutoPool(&v9);
  v8 = 0;
  sub_10053562C(a1, 7, &v8);
  v4 = [SubscriberRequestTransactionElement requestWithAction:v8 andAnnotation:0];
  v5 = v4;
  v6 = v4 != 0;
  if (v4)
  {
    [objc_msgSend(v4 "info")];
    sub_100534920(a1, v8, v5);
  }

  sub_100005978(&v8);
  ctu::ns::AutoPool::~AutoPool(&v9);
  return v6;
}

void sub_100537684(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::ns::AutoPool::~AutoPool(va);
  _Unwind_Resume(a1);
}

id sub_1005376A8(uint64_t a1)
{
  result = sub_10053572C(a1, 1);
  if (result)
  {
    v2 = [result info];

    return [v2 objectForKey:@"entitlement-names"];
  }

  return result;
}

id sub_1005376EC(uint64_t a1)
{
  result = sub_10053572C(a1, 0);
  if (result)
  {
    v2 = [result info];

    return [v2 objectForKey:@"entitlement-names"];
  }

  return result;
}

id sub_100537730(uint64_t a1, void *a2)
{
  if (!*(a1 + 40))
  {
    return 0;
  }

  v4 = sub_100534DF0(a1, a2);
  if (!v4)
  {
    v5 = **(a1 + 56);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = PersonalityInfo::logPrefix(**(a1 + 16));
      v7 = *(a1 + 64);
      v8 = *(a1 + 72);
      v15 = 136316162;
      v16 = v6;
      v17 = 2080;
      v18 = " ";
      v19 = 2080;
      v20 = v7;
      v21 = 2080;
      v22 = v8;
      v23 = 2080;
      v24 = [a2 cStringUsingEncoding:4];
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sNo existing %s action to append - adding", &v15, 0x34u);
    }

    v4 = [SubscriberRequestTransactionElement requestWithAction:a2 andAnnotation:0];
    if (!v4)
    {
      v10 = **(a1 + 56);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = PersonalityInfo::logPrefix(**(a1 + 16));
        v12 = *(a1 + 64);
        v13 = *(a1 + 72);
        v15 = 136315906;
        v16 = v11;
        v17 = 2080;
        v18 = " ";
        v19 = 2080;
        v20 = v12;
        v21 = 2080;
        v22 = v13;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sUnable to allocate entitlement request", &v15, 0x2Au);
      }

      return 0;
    }
  }

  v9 = v4;
  sub_100534920(a1, a2, v4);
  return v9;
}

void *sub_1005378F8(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v4 = 0;
  if (!a2 || !*(a1 + 40))
  {
    return v4;
  }

  if (![a2 count])
  {
    return 0;
  }

  v9 = sub_100534DF0(a1, a3);
  if (!v9)
  {
    v10 = **(a1 + 56);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = PersonalityInfo::logPrefix(**(a1 + 16));
      v12 = *(a1 + 64);
      v13 = *(a1 + 72);
      *buf = 136316162;
      v48 = v11;
      v49 = 2080;
      v50 = " ";
      v51 = 2080;
      v52 = v12;
      v53 = 2080;
      v54 = v13;
      v55 = 2080;
      v56 = [a3 cStringUsingEncoding:4];
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sNo existing %s action to append - adding", buf, 0x34u);
    }

    v9 = [SubscriberRequestTransactionElement requestWithAction:a3 andAnnotation:0];
    if (!v9)
    {
      v33 = **(a1 + 56);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v34 = PersonalityInfo::logPrefix(**(a1 + 16));
        v35 = *(a1 + 64);
        v36 = *(a1 + 72);
        *buf = 136315906;
        v48 = v34;
        v49 = 2080;
        v50 = " ";
        v51 = 2080;
        v52 = v35;
        v53 = 2080;
        v54 = v36;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sUnable to allocate entitlement request", buf, 0x2Au);
      }

      return 0;
    }
  }

  v4 = v9;
  v14 = [objc_msgSend(v9 "info")];
  if (!v14)
  {
    [objc_msgSend(v4 "info")];
LABEL_25:
    sub_100534920(a1, a3, v4);
    return v4;
  }

  v15 = v14;
  if (![v14 isEqual:a2])
  {
    v38 = a4;
    v39 = v4;
    v40 = a3;
    v21 = [v15 mutableCopy];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v22 = [a2 countByEnumeratingWithState:&v42 objects:v46 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v43;
      v41 = v21;
      do
      {
        for (i = 0; i != v23; i = i + 1)
        {
          if (*v43 != v24)
          {
            objc_enumerationMutation(a2);
          }

          v26 = *(*(&v42 + 1) + 8 * i);
          if (([v21 containsObject:v26] & 1) == 0)
          {
            v27 = **(a1 + 56);
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              v28 = PersonalityInfo::logPrefix(**(a1 + 16));
              v29 = v23;
              v30 = *(a1 + 64);
              v31 = *(a1 + 72);
              v32 = [v26 cStringUsingEncoding:4];
              *buf = 136316162;
              v48 = v28;
              v49 = 2080;
              v50 = " ";
              v51 = 2080;
              v52 = v30;
              v23 = v29;
              v21 = v41;
              v53 = 2080;
              v54 = v31;
              v55 = 2080;
              v56 = v32;
              _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sAdding %s", buf, 0x34u);
            }

            [v21 addObject:v26];
          }
        }

        v23 = [a2 countByEnumeratingWithState:&v42 objects:v46 count:16];
      }

      while (v23);
    }

    v4 = v39;
    [objc_msgSend(v39 "info")];
    a3 = v40;
    goto LABEL_25;
  }

  v16 = **(a1 + 56);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = PersonalityInfo::logPrefix(**(a1 + 16));
    v19 = *(a1 + 64);
    v18 = *(a1 + 72);
    v20 = [a3 cStringUsingEncoding:4];
    *buf = 136316162;
    v48 = v17;
    v49 = 2080;
    v50 = " ";
    v51 = 2080;
    v52 = v19;
    v53 = 2080;
    v54 = v18;
    v55 = 2080;
    v56 = v20;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sEntitlement arrays %s are the same, nothing to be done", buf, 0x34u);
  }

  return v4;
}

id sub_100537D54(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  obj = a2;
  if (a2)
  {
    if (*(a1 + 40))
    {
      if ([a2 count])
      {
        v6 = sub_100534DF0(a1, a3);
        if (v6)
        {
          v7 = [objc_msgSend(v6 "info")];
          if (v7)
          {
            v8 = v7;
            v9 = objc_opt_new();
            v28 = 0u;
            v29 = 0u;
            v30 = 0u;
            v31 = 0u;
            v10 = [obj countByEnumeratingWithState:&v28 objects:v44 count:16];
            if (v10)
            {
              v12 = v10;
              v13 = *v29;
              *&v11 = 136316418;
              v24 = v11;
              v25 = v8;
              do
              {
                for (i = 0; i != v12; i = i + 1)
                {
                  if (*v29 != v13)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v15 = *(*(&v28 + 1) + 8 * i);
                  if ([v8 containsObject:{v15, v24}])
                  {
                    v16 = **(a1 + 56);
                    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
                    {
                      v17 = PersonalityInfo::logPrefix(**(a1 + 16));
                      v18 = v9;
                      v20 = *(a1 + 64);
                      v19 = *(a1 + 72);
                      v21 = [v15 cStringUsingEncoding:4];
                      v22 = [a3 cStringUsingEncoding:4];
                      *buf = v24;
                      v33 = v17;
                      v34 = 2080;
                      v35 = " ";
                      v36 = 2080;
                      v37 = v20;
                      v9 = v18;
                      v38 = 2080;
                      v39 = v19;
                      v8 = v25;
                      v40 = 2080;
                      v41 = v21;
                      v42 = 2080;
                      v43 = v22;
                      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%staking out %s from %s - already queried", buf, 0x3Eu);
                    }
                  }

                  else
                  {
                    [v9 addObject:v15];
                  }
                }

                v12 = [obj countByEnumeratingWithState:&v28 objects:v44 count:16];
              }

              while (v12);
            }

            return v9;
          }
        }
      }
    }
  }

  return obj;
}

void *sub_100537F90(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v5 = 0;
  if (!a2)
  {
    return v5;
  }

  v6 = a1;
  if (!*(a1 + 40))
  {
    return v5;
  }

  if (![a2 count])
  {
    return 0;
  }

  v11 = sub_100534DF0(v6, a3);
  if (!v11)
  {
    v12 = **(v6 + 56);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = PersonalityInfo::logPrefix(**(v6 + 16));
      v14 = a4;
      v15 = *(v6 + 64);
      v16 = *(v6 + 72);
      *buf = 136316162;
      v48 = v13;
      v49 = 2080;
      v50 = " ";
      v51 = 2080;
      v52 = v15;
      a4 = v14;
      v53 = 2080;
      v54 = v16;
      v55 = 2080;
      v56 = [a3 cStringUsingEncoding:4];
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sNo existing %s action to append - adding", buf, 0x34u);
    }

    v11 = [SubscriberRequestTransactionElement requestWithAction:a3 andAnnotation:0];
    if (!v11)
    {
      v34 = **(v6 + 56);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v35 = PersonalityInfo::logPrefix(**(v6 + 16));
        v36 = *(v6 + 64);
        v37 = *(v6 + 72);
        *buf = 136315906;
        v48 = v35;
        v49 = 2080;
        v50 = " ";
        v51 = 2080;
        v52 = v36;
        v53 = 2080;
        v54 = v37;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sUnable to allocate entitlement request", buf, 0x2Au);
      }

      return 0;
    }
  }

  v5 = v11;
  v17 = [objc_msgSend(v11 "info")];
  if (!v17)
  {
    [objc_msgSend(v5 "info")];
LABEL_30:
    sub_100534920(v6, a3, v5);
    return v5;
  }

  v18 = v17;
  if (![v17 isEqual:a2])
  {
    v39 = a4;
    v40 = a3;
    v41 = v6;
    v24 = [v18 mutableCopy];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v25 = [a2 countByEnumeratingWithState:&v42 objects:v46 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v43;
      do
      {
        for (i = 0; i != v26; i = i + 1)
        {
          if (*v43 != v27)
          {
            objc_enumerationMutation(a2);
          }

          v29 = *(*(&v42 + 1) + 8 * i);
          v30 = [v29 objectForKey:a5];
          if (v30)
          {
            v31 = v30;
            v32 = 0;
            if ([v24 count])
            {
              while (1)
              {
                v33 = [objc_msgSend(v24 objectAtIndex:{v32), "objectForKey:", a5}];
                if (v33)
                {
                  if ([v33 isEqual:v31])
                  {
                    break;
                  }
                }

                if (++v32 >= [v24 count])
                {
                  goto LABEL_25;
                }
              }

              [v24 replaceObjectAtIndex:v32 withObject:v29];
            }

LABEL_25:
            if (v32 == [v24 count])
            {
              [v24 addObject:v29];
            }
          }
        }

        v26 = [a2 countByEnumeratingWithState:&v42 objects:v46 count:16];
      }

      while (v26);
    }

    [objc_msgSend(v5 "info")];
    a3 = v40;
    v6 = v41;
    goto LABEL_30;
  }

  v19 = **(v6 + 56);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = PersonalityInfo::logPrefix(**(v6 + 16));
    v21 = *(v6 + 64);
    v22 = *(v6 + 72);
    v23 = [a3 cStringUsingEncoding:4];
    *buf = 136316162;
    v48 = v20;
    v49 = 2080;
    v50 = " ";
    v51 = 2080;
    v52 = v21;
    v53 = 2080;
    v54 = v22;
    v55 = 2080;
    v56 = v23;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sEntitlement arrays %s are the same, nothing to be done", buf, 0x34u);
  }

  return v5;
}

id sub_1005383A8(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  if (a2)
  {
    if (*(a1 + 40))
    {
      if ([a2 count])
      {
        v9 = sub_100534DF0(a1, a3);
        if (v9)
        {
          v10 = [objc_msgSend(v9 "info")];
          if (v10)
          {
            v11 = v10;
            v12 = objc_opt_new();
            v34 = 0u;
            v35 = 0u;
            v36 = 0u;
            v37 = 0u;
            v33 = [v5 countByEnumeratingWithState:&v34 objects:v50 count:16];
            if (v33)
            {
              v32 = *v35;
              *&v13 = 136316418;
              v28 = v13;
              v29 = v12;
              do
              {
                for (i = 0; i != v33; i = i + 1)
                {
                  if (*v35 != v32)
                  {
                    objc_enumerationMutation(v5);
                  }

                  v15 = *(*(&v34 + 1) + 8 * i);
                  v16 = [v15 objectForKey:{a5, v28}];
                  if (v16)
                  {
                    v17 = v16;
                    for (j = 0; j < [v11 count]; ++j)
                    {
                      v19 = [v11 objectAtIndex:j];
                      v20 = [v19 objectForKey:a5];
                      if (v20 && [v20 isEqual:v17] && (objc_msgSend(v19, "isEqual:", v15) & 1) != 0)
                      {
                        break;
                      }
                    }

                    if (j == [v11 count])
                    {
                      [v12 addObject:v15];
                    }

                    else
                    {
                      v21 = **(a1 + 56);
                      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
                      {
                        v22 = PersonalityInfo::logPrefix(**(a1 + 16));
                        v23 = v5;
                        v24 = *(a1 + 64);
                        v31 = *(a1 + 72);
                        v25 = [v17 cStringUsingEncoding:4];
                        v26 = [a3 cStringUsingEncoding:4];
                        *buf = v28;
                        v39 = v22;
                        v40 = 2080;
                        v41 = " ";
                        v42 = 2080;
                        v43 = v24;
                        v5 = v23;
                        v12 = v29;
                        v44 = 2080;
                        v45 = v31;
                        v46 = 2080;
                        v47 = v25;
                        v48 = 2080;
                        v49 = v26;
                        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%staking out %s from %s - already queried", buf, 0x3Eu);
                      }
                    }
                  }
                }

                v33 = [v5 countByEnumeratingWithState:&v34 objects:v50 count:16];
              }

              while (v33);
            }

            return v12;
          }
        }
      }
    }
  }

  return v5;
}

id sub_10053866C(uint64_t a1, void *a2)
{
  v2 = 0;
  if (a2 && *(a1 + 40))
  {
    v5 = [a2 action];
    v6 = sub_100534DF0(a1, v5);
    if (!v6)
    {
LABEL_8:
      v2 = a2;
      sub_100534920(a1, v5, v2);
      return v2;
    }

    v2 = v6;
    if (([v6 matchContent:{objc_msgSend(a2, "info")}] & 1) == 0)
    {
      v7 = **(a1 + 56);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = PersonalityInfo::logPrefix(**(a1 + 16));
        v9 = *(a1 + 64);
        v10 = *(a1 + 72);
        v12 = 136316162;
        v13 = v8;
        v14 = 2080;
        v15 = " ";
        v16 = 2080;
        v17 = v9;
        v18 = 2080;
        v19 = v10;
        v20 = 2112;
        v21 = v5;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sRemoving the existing %@", &v12, 0x34u);
      }

      sub_1005353B8(a1, v2);
      goto LABEL_8;
    }
  }

  return v2;
}

void *sub_1005387D4(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v4 = 0;
  if (a2 && *(a1 + 40))
  {
    if (![a2 count])
    {
      return 0;
    }

    v9 = sub_100534DF0(a1, a3);
    if (!v9)
    {
LABEL_9:
      v14 = [SubscriberRequestTransactionElement requestWithAction:a3 andAnnotation:a4];
      if (v14)
      {
        v4 = v14;
        [objc_msgSend(v14 "info")];
        sub_100534920(a1, a3, v4);
        return v4;
      }

      v15 = **(a1 + 56);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = PersonalityInfo::logPrefix(**(a1 + 16));
        v17 = *(a1 + 64);
        v18 = *(a1 + 72);
        v20 = 136315906;
        v21 = v16;
        v22 = 2080;
        v23 = " ";
        v24 = 2080;
        v25 = v17;
        v26 = 2080;
        v27 = v18;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sUnable to allocate entitlement request", &v20, 0x2Au);
      }

      return 0;
    }

    v4 = v9;
    if (([v9 matchContent:a2] & 1) == 0)
    {
      v10 = **(a1 + 56);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = PersonalityInfo::logPrefix(**(a1 + 16));
        v12 = *(a1 + 64);
        v13 = *(a1 + 72);
        v20 = 136316162;
        v21 = v11;
        v22 = 2080;
        v23 = " ";
        v24 = 2080;
        v25 = v12;
        v26 = 2080;
        v27 = v13;
        v28 = 2080;
        v29 = [a3 cStringUsingEncoding:4];
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sRemoving the existing %s", &v20, 0x34u);
      }

      sub_1005353B8(a1, v4);
      goto LABEL_9;
    }
  }

  return v4;
}

void *sub_1005389F8(uint64_t a1, void *a2, void *a3)
{
  v3 = a2;
  if (a2)
  {
    if (*(a1 + 40))
    {
      if ([a2 count])
      {
        v6 = sub_100534DF0(a1, a3);
        if (v6)
        {
          if ([v6 matchContent:v3])
          {
            v7 = **(a1 + 56);
            if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
            {
              v8 = PersonalityInfo::logPrefix(**(a1 + 16));
              v10 = *(a1 + 64);
              v9 = *(a1 + 72);
              v12 = 136316162;
              v13 = v8;
              v14 = 2080;
              v15 = " ";
              v16 = 2080;
              v17 = v10;
              v18 = 2080;
              v19 = v9;
              v20 = 2080;
              v21 = [a3 cStringUsingEncoding:4];
              _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%staking out %s - already queried", &v12, 0x34u);
            }

            return 0;
          }
        }
      }
    }
  }

  return v3;
}

void *sub_100538B38(uint64_t a1, void *a2)
{
  v6 = 0;
  sub_10053562C(a1, 24, &v6);
  v4 = sub_1005387D4(a1, a2, v6, 0);
  sub_100005978(&v6);
  return v4;
}

void sub_100538B98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

void *sub_100538BAC(uint64_t a1, void *a2)
{
  v6 = 0;
  sub_10053562C(a1, 24, &v6);
  v4 = sub_1005389F8(a1, a2, v6);
  sub_100005978(&v6);
  return v4;
}

void sub_100538C08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

void *sub_100538C1C(uint64_t a1, void *a2)
{
  v6 = 0;
  sub_10053562C(a1, 25, &v6);
  v4 = sub_1005387D4(a1, a2, v6, 0);
  sub_100005978(&v6);
  return v4;
}

void sub_100538C7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

void *sub_100538C90(uint64_t a1, void *a2)
{
  v6 = 0;
  sub_10053562C(a1, 25, &v6);
  v4 = sub_1005389F8(a1, a2, v6);
  sub_100005978(&v6);
  return v4;
}

void sub_100538CEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

void *sub_100538D00(uint64_t a1, void *a2)
{
  v6 = 0;
  sub_10053562C(a1, 26, &v6);
  v4 = sub_1005387D4(a1, a2, v6, 0);
  sub_100005978(&v6);
  return v4;
}

void sub_100538D60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

void *sub_100538D74(uint64_t a1, void *a2)
{
  v6 = 0;
  sub_10053562C(a1, 26, &v6);
  v4 = sub_1005389F8(a1, a2, v6);
  sub_100005978(&v6);
  return v4;
}

void sub_100538DD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

void *sub_100538DE4(uint64_t a1, void *a2)
{
  v6 = 0;
  sub_10053562C(a1, 27, &v6);
  v4 = sub_1005387D4(a1, a2, v6, 0);
  sub_100005978(&v6);
  return v4;
}

void sub_100538E44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

void *sub_100538E58(uint64_t a1, void *a2)
{
  v6 = 0;
  sub_10053562C(a1, 27, &v6);
  v4 = sub_1005389F8(a1, a2, v6);
  sub_100005978(&v6);
  return v4;
}

void sub_100538EB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

id sub_100538EC8(uint64_t a1, void *a2)
{
  v6 = 0;
  sub_10053562C(a1, 0, &v6);
  v4 = sub_100537D54(a1, a2, v6, @"entitlement-names");
  sub_100005978(&v6);
  return v4;
}

void sub_100538F2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

id sub_100538F40(uint64_t a1, void *a2)
{
  v6 = 0;
  sub_10053562C(a1, 1, &v6);
  v4 = sub_100537D54(a1, a2, v6, @"entitlement-names");
  sub_100005978(&v6);
  return v4;
}

void sub_100538FA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

id sub_100538FB8(uint64_t a1, void *a2)
{
  v6 = 0;
  sub_10053562C(a1, 2, &v6);
  v4 = sub_100537D54(a1, a2, v6, @"provisioning-names");
  sub_100005978(&v6);
  return v4;
}

void sub_10053901C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

void *sub_100539030(uint64_t a1, void *a2)
{
  v3 = a1;
  v71 = 0;
  sub_10053562C(a1, 3, &v71);
  if (a2)
  {
    if (*(v3 + 40))
    {
      v53 = v71;
      if ([a2 count])
      {
        v4 = sub_100534DF0(v3, v53);
        if (v4)
        {
          v5 = [objc_msgSend(v4 "info")];
          if (v5)
          {
            v56 = objc_opt_new();
            v69 = 0u;
            v70 = 0u;
            v67 = 0u;
            v68 = 0u;
            v58 = [a2 countByEnumeratingWithState:&v67 objects:v85 count:16];
            if (v58)
            {
              v57 = *v68;
              v7 = @"state";
              v8 = @"data";
              *&v6 = 136316418;
              v52 = v6;
              v54 = v3;
              v55 = a2;
              do
              {
                for (i = 0; i != v58; i = i + 1)
                {
                  if (*v68 != v57)
                  {
                    objc_enumerationMutation(a2);
                  }

                  v62 = *(*(&v67 + 1) + 8 * i);
                  v9 = [v62 objectForKey:{@"name", v52}];
                  if (v9)
                  {
                    for (j = 0; ; ++j)
                    {
                      v11 = v8;
                      v12 = v7;
                      if (j >= [v5 count])
                      {
                        goto LABEL_43;
                      }

                      v13 = [v5 objectAtIndex:j];
                      v14 = [v13 objectForKey:@"name"];
                      if (v14)
                      {
                        if ([v14 isEqual:v9] && objc_msgSend(v13, "isEqual:", v62))
                        {
                          break;
                        }
                      }
                    }

                    v15 = [v13 objectForKey:v7];
                    v16 = [v62 objectForKey:v12];
                    if (v16 && v15 && [v16 isEqual:v15])
                    {
                      v17 = [v13 objectForKey:v8];
                      v18 = [v62 objectForKey:v8];
                      if (!v17)
                      {
                        v34 = **(v3 + 56);
                        if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
                        {
                          goto LABEL_43;
                        }

                        v35 = PersonalityInfo::logPrefix(**(v3 + 16));
                        v37 = *(v54 + 64);
                        v36 = *(v54 + 72);
                        v38 = [v9 cStringUsingEncoding:4];
                        v39 = [v53 cStringUsingEncoding:4];
                        *buf = v52;
                        v74 = v35;
                        v75 = 2080;
                        v76 = " ";
                        v77 = 2080;
                        v78 = v37;
                        v79 = 2080;
                        v80 = v36;
                        v81 = 2080;
                        v82 = v38;
                        v83 = 2080;
                        v84 = v39;
                        v26 = v34;
                        v27 = "#I %s%s%s%staking out %s from %s - wide one already queried";
                        goto LABEL_42;
                      }

                      v19 = v18;
                      if (!v18)
                      {
                        [v56 addObject:v62];
                        goto LABEL_43;
                      }

                      if ([v17 isEqual:v18])
                      {
                        v20 = **(v3 + 56);
                        if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
                        {
                          goto LABEL_43;
                        }

                        v21 = PersonalityInfo::logPrefix(**(v3 + 16));
                        v23 = *(v54 + 64);
                        v22 = *(v54 + 72);
                        v24 = [v9 cStringUsingEncoding:4];
                        v25 = [v53 cStringUsingEncoding:4];
                        *buf = v52;
                        v74 = v21;
                        v75 = 2080;
                        v76 = " ";
                        v77 = 2080;
                        v78 = v23;
                        v79 = 2080;
                        v80 = v22;
                        v81 = 2080;
                        v82 = v24;
                        v83 = 2080;
                        v84 = v25;
                        v26 = v20;
                        v27 = "#I %s%s%s%staking out %s from %s - already queried";
                        goto LABEL_42;
                      }

                      v59 = objc_opt_new();
                      v65 = 0u;
                      v66 = 0u;
                      v63 = 0u;
                      v64 = 0u;
                      obj = v19;
                      v40 = [v19 countByEnumeratingWithState:&v63 objects:v72 count:16];
                      if (v40)
                      {
                        v41 = *v64;
                        do
                        {
                          for (k = 0; k != v40; k = k + 1)
                          {
                            if (*v64 != v41)
                            {
                              objc_enumerationMutation(obj);
                            }

                            v43 = *(*(&v63 + 1) + 8 * k);
                            if (([v17 containsObject:v43] & 1) == 0)
                            {
                              [v59 addObject:v43];
                            }
                          }

                          v40 = [obj countByEnumeratingWithState:&v63 objects:v72 count:16];
                        }

                        while (v40);
                      }

                      v44 = [v62 mutableCopy];
                      [v44 setValue:v59 forKey:v11];
                      [v56 addObject:v44];
                      v3 = v54;
                      v45 = **(v54 + 56);
                      a2 = v55;
                      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
                      {
                        v46 = PersonalityInfo::logPrefix(**(v54 + 16));
                        v48 = *(v54 + 64);
                        v47 = *(v54 + 72);
                        v49 = [v9 cStringUsingEncoding:4];
                        v50 = [v53 cStringUsingEncoding:4];
                        *buf = v52;
                        v74 = v46;
                        v75 = 2080;
                        v76 = " ";
                        v77 = 2080;
                        v78 = v48;
                        v79 = 2080;
                        v80 = v47;
                        v81 = 2080;
                        v82 = v49;
                        v83 = 2080;
                        v84 = v50;
                        v26 = v45;
                        v27 = "#I %s%s%s%sreplace %s in %s with wide one";
LABEL_42:
                        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, v27, buf, 0x3Eu);
                        v3 = v54;
                      }
                    }

                    else
                    {
                      v28 = **(v3 + 56);
                      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
                      {
                        v29 = PersonalityInfo::logPrefix(**(v3 + 16));
                        v30 = v3;
                        v32 = *(v3 + 64);
                        v31 = *(v3 + 72);
                        v33 = [v9 cStringUsingEncoding:4];
                        *buf = 136316162;
                        v74 = v29;
                        v75 = 2080;
                        v76 = " ";
                        v77 = 2080;
                        v78 = v32;
                        v79 = 2080;
                        v80 = v31;
                        v81 = 2080;
                        v82 = v33;
                        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%ssetProvisioning '%s' state is missing or mismatch. Ignore", buf, 0x34u);
                        v3 = v30;
                        a2 = v55;
                      }
                    }

LABEL_43:
                    v7 = v12;
                    v8 = v11;
                    if ([v5 count] == j)
                    {
                      [v56 addObject:v62];
                    }
                  }
                }

                v58 = [a2 countByEnumeratingWithState:&v67 objects:v85 count:16];
              }

              while (v58);
            }

            a2 = v56;
          }
        }
      }
    }
  }

  sub_100005978(&v71);
  return a2;
}

void *sub_100539720(uint64_t a1, void *a2)
{
  v6 = 0;
  sub_10053562C(a1, 4, &v6);
  v4 = sub_1005387D4(a1, a2, v6, 0);
  sub_100005978(&v6);
  return v4;
}

void sub_100539780(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

void *sub_100539794(uint64_t a1, void *a2)
{
  v6 = 0;
  sub_10053562C(a1, 4, &v6);
  v4 = sub_1005389F8(a1, a2, v6);
  sub_100005978(&v6);
  return v4;
}

void sub_1005397F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

id sub_100539804(uint64_t a1, void *a2)
{
  v6 = 0;
  sub_10053562C(a1, 5, &v6);
  v4 = sub_1005383A8(a1, a2, v6, @"notifications", @"notification-name");
  sub_100005978(&v6);
  return v4;
}

void sub_100539870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

void *sub_100539884(uint64_t a1, void *a2)
{
  v6 = 0;
  sub_10053562C(a1, 6, &v6);
  v4 = sub_100537F90(a1, a2, v6, @"notifications", @"notification-name");
  sub_100005978(&v6);
  return v4;
}

void sub_1005398F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

id sub_100539904(uint64_t a1, void *a2)
{
  v6 = 0;
  sub_10053562C(a1, 6, &v6);
  v4 = sub_1005383A8(a1, a2, v6, @"notifications", @"notification-name");
  sub_100005978(&v6);
  return v4;
}

void sub_100539970(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

BOOL sub_100539984(uint64_t a1, void *a2)
{
  v6 = 0;
  sub_10053562C(a1, 13, &v6);
  v4 = sub_1005387D4(a1, a2, v6, 0) != 0;
  sub_100005978(&v6);
  return v4;
}

void sub_1005399E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

void *sub_1005399FC(uint64_t a1, void *a2)
{
  v6 = 0;
  sub_10053562C(a1, 13, &v6);
  v4 = sub_1005389F8(a1, a2, v6);
  sub_100005978(&v6);
  return v4;
}

void sub_100539A58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

BOOL sub_100539A6C(uint64_t a1, void *a2)
{
  v6 = 0;
  sub_10053562C(a1, 12, &v6);
  v4 = sub_1005387D4(a1, a2, v6, 0) != 0;
  sub_100005978(&v6);
  return v4;
}

void sub_100539AD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

void *sub_100539AE4(uint64_t a1, void *a2)
{
  v6 = 0;
  sub_10053562C(a1, 12, &v6);
  v4 = sub_1005389F8(a1, a2, v6);
  sub_100005978(&v6);
  return v4;
}

void sub_100539B40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

void *sub_100539B54(uint64_t a1, void *a2)
{
  v6 = 0;
  sub_10053562C(a1, 14, &v6);
  v4 = sub_1005387D4(a1, a2, v6, 0);
  sub_100005978(&v6);
  return v4;
}

void sub_100539BB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

void *sub_100539BC8(uint64_t a1, void *a2)
{
  v6 = 0;
  sub_10053562C(a1, 14, &v6);
  v4 = sub_1005389F8(a1, a2, v6);
  sub_100005978(&v6);
  return v4;
}

void sub_100539C24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

void *sub_100539C38(uint64_t a1, void *a2)
{
  v6 = 0;
  sub_10053562C(a1, 15, &v6);
  v4 = sub_1005387D4(a1, a2, v6, 0);
  sub_100005978(&v6);
  return v4;
}

void sub_100539C98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

void *sub_100539CAC(uint64_t a1, void *a2)
{
  v6 = 0;
  sub_10053562C(a1, 15, &v6);
  v4 = sub_1005389F8(a1, a2, v6);
  sub_100005978(&v6);
  return v4;
}

void sub_100539D08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

id sub_100539D1C(uint64_t a1)
{
  v4 = 0;
  sub_10053562C(a1, 16, &v4);
  v2 = sub_100537730(a1, v4);
  sub_100005978(&v4);
  return v2;
}

void sub_100539D70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

void *sub_100539D84(uint64_t a1, void *a2)
{
  v6 = 0;
  sub_10053562C(a1, 17, &v6);
  v4 = sub_1005387D4(a1, a2, v6, 0);
  sub_100005978(&v6);
  return v4;
}

void sub_100539DE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

void *sub_100539DF8(uint64_t a1, void *a2)
{
  v6 = 0;
  sub_10053562C(a1, 17, &v6);
  v4 = sub_1005389F8(a1, a2, v6);
  sub_100005978(&v6);
  return v4;
}

void sub_100539E54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

void *sub_100539E68(uint64_t a1, void *a2)
{
  v6 = 0;
  sub_10053562C(a1, 18, &v6);
  v4 = sub_1005387D4(a1, a2, v6, 0);
  sub_100005978(&v6);
  return v4;
}

void sub_100539EC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

void *sub_100539EDC(uint64_t a1, void *a2)
{
  v6 = 0;
  sub_10053562C(a1, 20, &v6);
  v4 = sub_1005387D4(a1, a2, v6, 0);
  sub_100005978(&v6);
  return v4;
}

void sub_100539F3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

void *sub_100539F50(uint64_t a1, void *a2)
{
  v6 = 0;
  sub_10053562C(a1, 18, &v6);
  v4 = sub_1005389F8(a1, a2, v6);
  sub_100005978(&v6);
  return v4;
}

void sub_100539FAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

void *sub_100539FC0(uint64_t a1, void *a2)
{
  v6 = 0;
  sub_10053562C(a1, 20, &v6);
  v4 = sub_1005389F8(a1, a2, v6);
  sub_100005978(&v6);
  return v4;
}

void sub_10053A01C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

BOOL sub_10053A030(uint64_t a1)
{
  v4 = 0;
  sub_10053562C(a1, 19, &v4);
  v2 = sub_100537730(a1, v4) != 0;
  sub_100005978(&v4);
  return v2;
}

void sub_10053A088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

BOOL sub_10053A09C(uint64_t a1)
{
  v4 = 0;
  sub_10053562C(a1, 8, &v4);
  v2 = sub_100537730(a1, v4) != 0;
  sub_100005978(&v4);
  return v2;
}

void sub_10053A0F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

BOOL sub_10053A108(uint64_t a1, int a2, void *a3, uint64_t a4)
{
  v9 = 0;
  sub_10053562C(a1, a2, &v9);
  v7 = sub_1005387D4(a1, a3, v9, a4) != 0;
  sub_100005978(&v9);
  return v7;
}

void sub_10053A174(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

void *sub_10053A188(uint64_t a1, int a2, void *a3)
{
  v7 = 0;
  sub_10053562C(a1, a2, &v7);
  v5 = sub_1005389F8(a1, a3, v7);
  sub_100005978(&v7);
  return v5;
}

void sub_10053A1E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

BOOL sub_10053A1F4(uint64_t a1, int a2, void *a3, uint64_t a4)
{
  v9 = 0;
  sub_10053562C(a1, a2, &v9);
  v7 = sub_1005387D4(a1, a3, v9, a4) != 0;
  sub_100005978(&v9);
  return v7;
}

void sub_10053A260(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

id sub_10053A274(uint64_t a1, int a2, int a3)
{
  v16 = 0;
  ctu::ns::AutoPool::AutoPool(&v16);
  if (*(a1 + 40))
  {
    v6 = sub_10053572C(a1, 11);
    v15 = 0;
    sub_10053562C(a1, 11, &v15);
    v7 = v6;
    if (v6 || (v7 = [SubscriberRequestTransactionElement requestWithAction:v15 andAnnotation:0]) != 0)
    {
      if (a3)
      {
        v8 = [v7 info];
        [v8 setObject:sub_10053452C(v8) forKey:@"usage-types"];
      }

      if (a2)
      {
        v9 = [v7 info];
        [v9 setObject:sub_1005344B8(v9) forKey:@"subscription-types"];
      }

      if (!v6)
      {
        sub_100534920(a1, v15, v7);
      }
    }

    else
    {
      v10 = **(a1 + 56);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = PersonalityInfo::logPrefix(**(a1 + 16));
        v12 = *(a1 + 64);
        v13 = *(a1 + 72);
        *buf = 136315906;
        v18 = v11;
        v19 = 2080;
        v20 = " ";
        v21 = 2080;
        v22 = v12;
        v23 = 2080;
        v24 = v13;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sUnable to allocate subscription and usage status request", buf, 0x2Au);
      }

      v7 = 0;
    }

    sub_100005978(&v15);
  }

  else
  {
    v7 = 0;
  }

  ctu::ns::AutoPool::~AutoPool(&v16);
  return v7;
}

void sub_10053A444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, ...)
{
  va_start(va, a9);
  sub_100005978(&a9);
  ctu::ns::AutoPool::~AutoPool(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10053A478(uint64_t a1, unsigned int *a2)
{
  v109 = 0;
  ctu::ns::AutoPool::AutoPool(&v109);
  if (*(a1 + 40))
  {
    if (*a2)
    {
      v108 = 0;
      sub_10053562C(a1, 28, &v108);
      v4 = [SubscriberRequestTransactionElement requestWithAction:v108 andAnnotation:0];
      v5 = v4;
      if (!v4)
      {
        v21 = **(a1 + 56);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = PersonalityInfo::logPrefix(**(a1 + 16));
          v23 = *(a1 + 64);
          v24 = *(a1 + 72);
          *buf = 136315906;
          *&buf[4] = v22;
          *&buf[12] = 2080;
          *&buf[14] = " ";
          *&buf[22] = 2080;
          v116 = v23;
          v117 = 2080;
          v118 = v24;
          v15 = "#W %s%s%s%sUnable to allocation authentication request";
          v25 = v21;
          v26 = 42;
LABEL_103:
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, v15, buf, v26);
          goto LABEL_119;
        }

        goto LABEL_119;
      }

      [objc_msgSend(v4 "info")];
      v6 = *a2;
      if (*a2 - 3 > 2)
      {
LABEL_66:
        if (v6 - 1 <= 1)
        {
          if (sub_10053B684(a1))
          {
            [objc_msgSend(v5 "info")];
          }

          else
          {
            v42 = *(a2 + 127);
            if ((v42 & 0x80u) != 0)
            {
              v42 = *(a2 + 14);
            }

            if (v42 && (sub_10053B7A0(a1) & 1) == 0)
            {
              v114 = 0;
              *&__dst = 0;
              if ((ctu::cf::convert_copy() & 1) == 0)
              {
                v74 = **(a1 + 56);
                if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
                {
                  v75 = PersonalityInfo::logPrefix(**(a1 + 16));
                  v76 = *(a1 + 64);
                  v77 = *(a1 + 72);
                  *buf = 136315906;
                  *&buf[4] = v75;
                  *&buf[12] = 2080;
                  *&buf[14] = " ";
                  *&buf[22] = 2080;
                  v116 = v76;
                  v117 = 2080;
                  v118 = v77;
                  _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sError converting token", buf, 0x2Au);
                }

                p_value = &v114;
                goto LABEL_118;
              }

              v43 = v114;
              v114 = __dst;
              *buf = v43;
              sub_100005978(buf);
              v44 = [v5 info];
              sub_10005C7A4(&v97, &v114);
              [v44 setValue:v97 forKey:@"token"];
              sub_100005978(&v97);
              sub_100005978(&v114);
            }
          }

          v6 = *a2;
        }

        if (v6 == 5)
        {
LABEL_77:
          sub_100534920(a1, v108, v5);
          v17 = 1;
LABEL_120:
          sub_100005978(&v108);
          goto LABEL_121;
        }

        v45 = *(a2 + 31);
        if ((v45 & 0x80u) != 0)
        {
          v45 = *(a2 + 2);
        }

        if (!v45)
        {
          v10 = **(a1 + 56);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            v58 = PersonalityInfo::logPrefix(**(a1 + 16));
            v60 = *(a1 + 64);
            v59 = *(a1 + 72);
            v61 = sub_100A7F778(*a2);
            *buf = 136316162;
            *&buf[4] = v58;
            *&buf[12] = 2080;
            *&buf[14] = " ";
            *&buf[22] = 2080;
            v116 = v60;
            v117 = 2080;
            v118 = v59;
            v119 = 2080;
            v120 = v61;
            v15 = "#W %s%s%s%sAuthType is '%s' but SubscriberID is missing";
            goto LABEL_102;
          }

          goto LABEL_119;
        }

        value = 0;
        *&__dst = 0;
        if ((ctu::cf::convert_copy() & 1) == 0)
        {
          v62 = **(a1 + 56);
          if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
          {
            v63 = PersonalityInfo::logPrefix(**(a1 + 16));
            v64 = *(a1 + 64);
            v65 = *(a1 + 72);
            *buf = 136315906;
            *&buf[4] = v63;
            *&buf[12] = 2080;
            *&buf[14] = " ";
            *&buf[22] = 2080;
            v116 = v64;
            v117 = 2080;
            v118 = v65;
            _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sError converting subscriber string", buf, 0x2Au);
          }

          goto LABEL_117;
        }

        v46 = value;
        value = __dst;
        *buf = v46;
        sub_100005978(buf);
        v47 = [v5 info];
        sub_10005C7A4(&v96, &value);
        [v47 setValue:v96 forKey:@"subscriber-id"];
        sub_100005978(&v96);
        v48 = *(a2 + 55);
        if ((v48 & 0x80u) != 0)
        {
          v48 = *(a2 + 5);
        }

        if (v48)
        {
          v114 = 0;
          *&__dst = 0;
          if ((ctu::cf::convert_copy() & 1) == 0)
          {
            v66 = **(a1 + 56);
            if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
            {
              v67 = PersonalityInfo::logPrefix(**(a1 + 16));
              v68 = *(a1 + 64);
              v69 = *(a1 + 72);
              *buf = 136315906;
              *&buf[4] = v67;
              *&buf[12] = 2080;
              *&buf[14] = " ";
              *&buf[22] = 2080;
              v116 = v68;
              v117 = 2080;
              v118 = v69;
              v70 = "#W %s%s%s%sError converting uniqueId";
LABEL_115:
              _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, v70, buf, 0x2Au);
            }

LABEL_116:
            sub_100005978(&v114);
LABEL_117:
            p_value = &value;
LABEL_118:
            sub_100005978(p_value);
            goto LABEL_119;
          }

          v49 = v114;
          v114 = __dst;
          *buf = v49;
          sub_100005978(buf);
          v50 = [v5 info];
          sub_10005C7A4(&v95, &v114);
          [v50 setValue:v95 forKey:@"unique-id"];
          sub_100005978(&v95);
          sub_100005978(&v114);
        }

        v51 = *(a2 + 79);
        if ((v51 & 0x80u) != 0)
        {
          v51 = *(a2 + 8);
        }

        if (!v51)
        {
          goto LABEL_92;
        }

        v114 = 0;
        *&__dst = 0;
        if (ctu::cf::convert_copy())
        {
          v52 = v114;
          v114 = __dst;
          *buf = v52;
          sub_100005978(buf);
          v53 = [v5 info];
          sub_10005C7A4(&v94, &v114);
          [v53 setValue:v94 forKey:@"alias-id"];
          sub_100005978(&v94);
          sub_100005978(&v114);
LABEL_92:
          v54 = *(a2 + 103);
          if ((v54 & 0x80u) != 0)
          {
            v54 = *(a2 + 11);
          }

          if (!v54)
          {
            goto LABEL_97;
          }

          v114 = 0;
          *&__dst = 0;
          if (ctu::cf::convert_copy())
          {
            v55 = v114;
            v114 = __dst;
            *buf = v55;
            sub_100005978(buf);
            v56 = [v5 info];
            sub_10005C7A4(&v93, &v114);
            [v56 setValue:v93 forKey:@"device-account-identifier"];
            sub_100005978(&v93);
            sub_100005978(&v114);
LABEL_97:
            if (*(a2 + 200) == 1)
            {
              v57 = [v5 info];
              if (*(a2 + 199) < 0)
              {
                sub_100005F2C(v90, *(a2 + 22), *(a2 + 23));
              }

              else
              {
                *v90 = *(a2 + 11);
                v91 = *(a2 + 24);
              }

              if (SHIBYTE(v91) < 0)
              {
                sub_100005F2C(&__dst, v90[0], v90[1]);
              }

              else
              {
                __dst = *v90;
                v112 = v91;
              }

              v110 = 0;
              if (SHIBYTE(v112) < 0)
              {
                sub_100005F2C(buf, __dst, *(&__dst + 1));
              }

              else
              {
                *buf = __dst;
                *&buf[16] = v112;
              }

              v113 = 0;
              if (ctu::cf::convert_copy())
              {
                v83 = v110;
                v110 = v113;
                v114 = v83;
                sub_100005978(&v114);
              }

              if ((buf[23] & 0x80000000) != 0)
              {
                operator delete(*buf);
              }

              v92 = v110;
              v110 = 0;
              sub_100005978(&v110);
              if (SHIBYTE(v112) < 0)
              {
                operator delete(__dst);
              }

              [v57 setValue:v92 forKey:@"gid1"];
              sub_100005978(&v92);
              if (SHIBYTE(v91) < 0)
              {
                operator delete(v90[0]);
              }
            }

            if (*(a2 + 232) == 1)
            {
              v84 = [v5 info];
              if (*(a2 + 231) < 0)
              {
                sub_100005F2C(v87, *(a2 + 26), *(a2 + 27));
              }

              else
              {
                *v87 = *(a2 + 13);
                v88 = *(a2 + 28);
              }

              if (SHIBYTE(v88) < 0)
              {
                sub_100005F2C(&__dst, v87[0], v87[1]);
              }

              else
              {
                __dst = *v87;
                v112 = v88;
              }

              v110 = 0;
              if (SHIBYTE(v112) < 0)
              {
                sub_100005F2C(buf, __dst, *(&__dst + 1));
              }

              else
              {
                *buf = __dst;
                *&buf[16] = v112;
              }

              v113 = 0;
              if (ctu::cf::convert_copy())
              {
                v85 = v110;
                v110 = v113;
                v114 = v85;
                sub_100005978(&v114);
              }

              if ((buf[23] & 0x80000000) != 0)
              {
                operator delete(*buf);
              }

              v86 = v110;
              v89 = v110;
              v110 = 0;
              sub_100005978(&v110);
              if (SHIBYTE(v112) < 0)
              {
                operator delete(__dst);
              }

              [v84 setValue:v86 forKey:{@"gid2", v87[0]}];
              sub_100005978(&v89);
              if (SHIBYTE(v88) < 0)
              {
                operator delete(v87[0]);
              }
            }

            sub_100005978(&value);
            goto LABEL_77;
          }

          v66 = **(a1 + 56);
          if (!os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_116;
          }

          v79 = PersonalityInfo::logPrefix(**(a1 + 16));
          v80 = *(a1 + 64);
          v81 = *(a1 + 72);
          *buf = 136315906;
          *&buf[4] = v79;
          *&buf[12] = 2080;
          *&buf[14] = " ";
          *&buf[22] = 2080;
          v116 = v80;
          v117 = 2080;
          v118 = v81;
          v70 = "#W %s%s%s%sError converting deviceAccountId";
          goto LABEL_115;
        }

        v66 = **(a1 + 56);
        if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
        {
          v71 = PersonalityInfo::logPrefix(**(a1 + 16));
          v72 = *(a1 + 64);
          v73 = *(a1 + 72);
          *buf = 136315906;
          *&buf[4] = v71;
          *&buf[12] = 2080;
          *&buf[14] = " ";
          *&buf[22] = 2080;
          v116 = v72;
          v117 = 2080;
          v118 = v73;
          v70 = "#W %s%s%s%sError converting aliasId";
          goto LABEL_115;
        }

        goto LABEL_116;
      }

      v7 = *(a2 + 127);
      v8 = v7;
      v9 = *(a2 + 14);
      if ((v7 & 0x80u) != 0)
      {
        v7 = *(a2 + 14);
      }

      if (!v7)
      {
        v10 = **(a1 + 56);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v27 = PersonalityInfo::logPrefix(**(a1 + 16));
          v29 = *(a1 + 64);
          v28 = *(a1 + 72);
          v30 = sub_100A7F778(*a2);
          *buf = 136316162;
          *&buf[4] = v27;
          *&buf[12] = 2080;
          *&buf[14] = " ";
          *&buf[22] = 2080;
          v116 = v29;
          v117 = 2080;
          v118 = v28;
          v119 = 2080;
          v120 = v30;
          v15 = "#I %s%s%s%sAuthType is '%s' but token-element is missing";
          goto LABEL_102;
        }

LABEL_119:
        v17 = 0;
        goto LABEL_120;
      }

      if (v6 == 5 && (a2[38] & 1) == 0)
      {
        v10 = **(a1 + 56);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = PersonalityInfo::logPrefix(**(a1 + 16));
          v13 = *(a1 + 64);
          v12 = *(a1 + 72);
          v14 = sub_100A7F778(*a2);
          *buf = 136316162;
          *&buf[4] = v11;
          *&buf[12] = 2080;
          *&buf[14] = " ";
          *&buf[22] = 2080;
          v116 = v13;
          v117 = 2080;
          v118 = v12;
          v119 = 2080;
          v120 = v14;
          v15 = "#I %s%s%s%sAuthType is '%s' but token-element association is missing";
LABEL_102:
          v25 = v10;
          v26 = 52;
          goto LABEL_103;
        }

        goto LABEL_119;
      }

      value = 0;
      if (v8 < 0)
      {
        sub_100005F2C(__p, *(a2 + 13), v9);
      }

      else
      {
        *__p = *(a2 + 26);
        v106 = *(a2 + 15);
      }

      if (SHIBYTE(v106) < 0)
      {
        sub_100005F2C(&__dst, __p[0], __p[1]);
      }

      else
      {
        __dst = *__p;
        v112 = v106;
      }

      v110 = 0;
      if (SHIBYTE(v112) < 0)
      {
        sub_100005F2C(buf, __dst, *(&__dst + 1));
      }

      else
      {
        *buf = __dst;
        *&buf[16] = v112;
      }

      v113 = 0;
      if (ctu::cf::convert_copy())
      {
        v31 = v110;
        v110 = v113;
        v114 = v31;
        sub_100005978(&v114);
      }

      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      value = v110;
      v110 = 0;
      sub_100005978(&v110);
      if (SHIBYTE(v112) < 0)
      {
        operator delete(__dst);
      }

      if (SHIBYTE(v106) < 0)
      {
        operator delete(__p[0]);
      }

      v32 = *a2;
      if (*a2 == 3)
      {
        v39 = [v5 info];
        sub_10005C7A4(&v104, &value);
        [v39 setValue:v104 forKey:@"service-token"];
        v38 = &v104;
      }

      else
      {
        if (v32 != 4)
        {
          if (v32 == 5)
          {
            theDict = 0;
            Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
            if (Mutable)
            {
              v34 = theDict;
              theDict = Mutable;
              *buf = v34;
              sub_1000296E0(buf);
            }

            CFDictionarySetValue(theDict, @"unblinded-sig", value);
            v35 = theDict;
            if (*(a2 + 151) < 0)
            {
              sub_100005F2C(v99, *(a2 + 16), *(a2 + 17));
            }

            else
            {
              *v99 = *(a2 + 8);
              v100 = *(a2 + 18);
            }

            if (SHIBYTE(v100) < 0)
            {
              sub_100005F2C(&__dst, v99[0], v99[1]);
            }

            else
            {
              __dst = *v99;
              v112 = v100;
            }

            v110 = 0;
            if (SHIBYTE(v112) < 0)
            {
              sub_100005F2C(buf, __dst, *(&__dst + 1));
            }

            else
            {
              *buf = __dst;
              *&buf[16] = v112;
            }

            v113 = 0;
            if (ctu::cf::convert_copy())
            {
              v40 = v110;
              v110 = v113;
              v114 = v40;
              sub_100005978(&v114);
            }

            if ((buf[23] & 0x80000000) != 0)
            {
              operator delete(*buf);
            }

            v101 = v110;
            v110 = 0;
            sub_100005978(&v110);
            if (SHIBYTE(v112) < 0)
            {
              operator delete(__dst);
            }

            CFDictionarySetValue(v35, @"unblinded-token", v101);
            sub_100005978(&v101);
            if (SHIBYTE(v100) < 0)
            {
              operator delete(v99[0]);
            }

            v41 = [v5 info];
            sub_100029714(&v98, &theDict);
            [v41 setValue:v98 forKey:@"unblinded-data"];
            sub_1000296E0(&v98);
            sub_1000296E0(&theDict);
          }

          goto LABEL_65;
        }

        if (*(a2 + 168) == 1)
        {
          v36 = [v5 info];
          if ((a2[42] & 1) == 0)
          {
            sub_1000D1644();
          }

          [v36 setValue:+[NSNumber numberWithLongLong:](NSNumber forKey:{"numberWithLongLong:", *(a2 + 20)), @"token-type"}];
        }

        v37 = [v5 info];
        sub_10005C7A4(&v103, &value);
        [v37 setValue:v103 forKey:@"transfer-token"];
        v38 = &v103;
      }

      sub_100005978(v38);
LABEL_65:
      sub_100005978(&value);
      v6 = *a2;
      goto LABEL_66;
    }

    v17 = 1;
  }

  else
  {
    v16 = **(a1 + 56);
    v17 = 0;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v18 = PersonalityInfo::logPrefix(**(a1 + 16));
      v19 = *(a1 + 64);
      v20 = *(a1 + 72);
      *buf = 136315906;
      *&buf[4] = v18;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      *&buf[22] = 2080;
      v116 = v19;
      v117 = 2080;
      v118 = v20;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%s'fRequests' empty - nothing to add Authentication to - bail-out", buf, 0x2Au);
      v17 = 0;
    }
  }

LABEL_121:
  ctu::ns::AutoPool::~AutoPool(&v109);
  return v17;
}

void sub_10053B404(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, const void *a38)
{
  sub_100005978((v38 - 184));
  if (*(v38 - 153) < 0)
  {
    operator delete(*(v38 - 176));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_100005978(&a38);
  sub_100005978((v38 - 200));
  ctu::ns::AutoPool::~AutoPool((v38 - 192));
  _Unwind_Resume(a1);
}

uint64_t sub_10053B684(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 40) objectEnumerator];
  if (v3 && (v4 = v3, v13 = 0u, v14 = 0u, v11 = 0u, v12 = 0u, (v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16]) != 0))
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if ([*(*(&v11 + 1) + 8 * i) requiresSecureIntent])
        {
          v9 = 1;
          goto LABEL_13;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      v9 = 0;
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v9 = 0;
  }

LABEL_13:
  objc_autoreleasePoolPop(v2);
  return v9;
}

uint64_t sub_10053B7A0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 40) objectEnumerator];
  if (v3 && (v4 = v3, v13 = 0u, v14 = 0u, v11 = 0u, v12 = 0u, (v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16]) != 0))
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if ([*(*(&v11 + 1) + 8 * i) requiresFullAuthentication])
        {
          v9 = 1;
          goto LABEL_13;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      v9 = 0;
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v9 = 0;
  }

LABEL_13:
  objc_autoreleasePoolPop(v2);
  return v9;
}

void sub_10053B8BC(uint64_t a1)
{
  v3 = 0;
  ctu::ns::AutoPool::AutoPool(&v3);
  v2 = 0;
  sub_10053562C(a1, 28, &v2);
  sub_100535354(a1, v2);
  sub_100005978(&v2);
  ctu::ns::AutoPool::~AutoPool(&v3);
}

void sub_10053B920(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, ...)
{
  va_start(va, a9);
  sub_100005978(&a9);
  ctu::ns::AutoPool::~AutoPool(va);
  _Unwind_Resume(a1);
}

BOOL sub_10053B944(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v25 = 0;
  ctu::ns::AutoPool::AutoPool(&v25);
  v6 = *(a2 + 23);
  if ((v6 & 0x80u) != 0)
  {
    v6 = a2[1];
  }

  if (v6)
  {
    v24 = 0;
    sub_10053562C(a1, 29, &v24);
    v7 = [SubscriberRequestTransactionElement requestWithAction:v24 andAnnotation:0];
    v8 = v7;
    v9 = v7 != 0;
    if (v7)
    {
      v10 = [v7 info];
      if (*(a2 + 23) >= 0)
      {
        v11 = a2;
      }

      else
      {
        v11 = *a2;
      }

      [v10 setObject:+[NSString stringWithUTF8String:](NSString forKey:{"stringWithUTF8String:", v11), @"payload"}];
      v12 = *(a3 + 23);
      if ((v12 & 0x80u) != 0)
      {
        v12 = a3[1];
      }

      if (v12)
      {
        v13 = [v8 info];
        if (*(a3 + 23) >= 0)
        {
          v14 = a3;
        }

        else
        {
          v14 = *a3;
        }

        [v13 setObject:+[NSString stringWithUTF8String:](NSString forKey:{"stringWithUTF8String:", v14), @"euicc-signature"}];
      }

      sub_100534920(a1, v24, v8);
    }

    else
    {
      v19 = **(a1 + 56);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = PersonalityInfo::logPrefix(**(a1 + 16));
        v21 = *(a1 + 64);
        v22 = *(a1 + 72);
        *buf = 136315906;
        v27 = v20;
        v28 = 2080;
        v29 = " ";
        v30 = 2080;
        v31 = v21;
        v32 = 2080;
        v33 = v22;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sUnable to allocate challenge request", buf, 0x2Au);
      }
    }

    sub_100005978(&v24);
  }

  else
  {
    v15 = **(a1 + 56);
    v9 = 0;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = PersonalityInfo::logPrefix(**(a1 + 16));
      v17 = *(a1 + 64);
      v18 = *(a1 + 72);
      *buf = 136315906;
      v27 = v16;
      v28 = 2080;
      v29 = " ";
      v30 = 2080;
      v31 = v17;
      v32 = 2080;
      v33 = v18;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sChallenge Payload is invalid", buf, 0x2Au);
      v9 = 0;
    }
  }

  ctu::ns::AutoPool::~AutoPool(&v25);
  return v9;
}

void sub_10053BBD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, ...)
{
  va_start(va, a9);
  sub_100005978(&a9);
  ctu::ns::AutoPool::~AutoPool(va);
  _Unwind_Resume(a1);
}

void sub_10053BC08(uint64_t a1)
{
  v3 = 0;
  ctu::ns::AutoPool::AutoPool(&v3);
  sub_10053562C(a1, 29, &v2);
  sub_100535354(a1, v2);
  sub_100005978(&v2);
  ctu::ns::AutoPool::~AutoPool(&v3);
}

void sub_10053BC68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, ...)
{
  va_start(va, a9);
  sub_100005978(&a9);
  ctu::ns::AutoPool::~AutoPool(va);
  _Unwind_Resume(a1);
}

BOOL sub_10053BC8C(uint64_t a1, void *a2)
{
  v26 = 0;
  ctu::ns::AutoPool::AutoPool(&v26);
  if (!a2[2])
  {
    v14 = **(a1 + 56);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_27;
    }

    v15 = PersonalityInfo::logPrefix(**(a1 + 16));
    v16 = *(a1 + 64);
    v17 = *(a1 + 72);
    LODWORD(__p[0]) = 136315906;
    *(__p + 4) = v15;
    WORD2(__p[1]) = 2080;
    *(&__p[1] + 6) = " ";
    HIWORD(__p[2]) = 2080;
    v28 = v16;
    v29 = 2080;
    v30 = v17;
    v18 = "#W %s%s%s%sVVM command is invalid";
LABEL_26:
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v18, __p, 0x2Au);
    goto LABEL_27;
  }

  v4 = [NSMutableArray arrayWithCapacity:?];
  if (!v4)
  {
    v14 = **(a1 + 56);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_27;
    }

    v19 = PersonalityInfo::logPrefix(**(a1 + 16));
    v20 = *(a1 + 64);
    v21 = *(a1 + 72);
    LODWORD(__p[0]) = 136315906;
    *(__p + 4) = v19;
    WORD2(__p[1]) = 2080;
    *(&__p[1] + 6) = " ";
    HIWORD(__p[2]) = 2080;
    v28 = v20;
    v29 = 2080;
    v30 = v21;
    v18 = "#W %s%s%s%sUnable to allocate VVM command array";
    goto LABEL_26;
  }

  v7 = *a2;
  v5 = a2 + 1;
  v6 = v7;
  if (v7 != v5)
  {
    do
    {
      v8 = *(v6 + 25);
      if (v8 != 4)
      {
        memset(__p, 0, sizeof(__p));
        sub_100A3E530(v8, __p);
        if (SHIBYTE(__p[2]) < 0)
        {
          if (!__p[1])
          {
            goto LABEL_11;
          }

          v9 = __p[0];
        }

        else
        {
          if (!HIBYTE(__p[2]))
          {
            goto LABEL_12;
          }

          v9 = __p;
        }

        [(NSMutableArray *)v4 addObject:[NSString stringWithCString:v9 encoding:1]];
        if (SHIBYTE(__p[2]) < 0)
        {
LABEL_11:
          operator delete(__p[0]);
        }
      }

LABEL_12:
      v10 = v6[1];
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = v6[2];
          v12 = *v11 == v6;
          v6 = v11;
        }

        while (!v12);
      }

      v6 = v11;
    }

    while (v11 != v5);
  }

  if (![(NSMutableArray *)v4 count])
  {
    v14 = **(a1 + 56);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v22 = PersonalityInfo::logPrefix(**(a1 + 16));
      v23 = *(a1 + 64);
      v24 = *(a1 + 72);
      LODWORD(__p[0]) = 136315906;
      *(__p + 4) = v22;
      WORD2(__p[1]) = 2080;
      *(&__p[1] + 6) = " ";
      HIWORD(__p[2]) = 2080;
      v28 = v23;
      v29 = 2080;
      v30 = v24;
      v18 = "#W %s%s%s%sVVM command array contained no commands";
      goto LABEL_26;
    }

LABEL_27:
    v13 = 0;
    goto LABEL_28;
  }

  v13 = sub_1005375C4(a1, v4);
LABEL_28:
  ctu::ns::AutoPool::~AutoPool(&v26);
  return v13;
}

void sub_10053BF9C(uint64_t a1@<X0>, char **a2@<X8>)
{
  v11 = 0;
  ctu::ns::AutoPool::AutoPool(&v11);
  v5 = sub_10053C0EC(a1, v4);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (!sub_10053C6DC(a1, v6, v5, a2))
  {
    v7 = **(a1 + 56);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = PersonalityInfo::logPrefix(**(a1 + 16));
      v9 = *(a1 + 64);
      v10 = *(a1 + 72);
      *buf = 136315906;
      v13 = v8;
      v14 = 2080;
      v15 = " ";
      v16 = 2080;
      v17 = v9;
      v18 = 2080;
      v19 = v10;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sUnable to generate JSON request", buf, 0x2Au);
    }
  }

  ctu::ns::AutoPool::~AutoPool(&v11);
}

void sub_10053C0B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  v5 = *v3;
  if (*v3)
  {
    *(v3 + 8) = v5;
    operator delete(v5);
  }

  ctu::ns::AutoPool::~AutoPool(va);
  _Unwind_Resume(a1);
}

id sub_10053C0EC(uint64_t a1, uint64_t a2)
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v6 = [*(a1 + 40) allValues];
  v7 = [v6 countByEnumeratingWithState:&v50 objects:v66 count:16];
  if (!v7)
  {
    v34 = 0;
    goto LABEL_20;
  }

  v34 = 0;
  v8 = *v51;
  do
  {
    v9 = 0;
    do
    {
      if (*v51 != v8)
      {
        objc_enumerationMutation(v6);
      }

      v10 = *(*(&v50 + 1) + 8 * v9);
      v11 = [v10 action];
      sub_10053562C(a1, 28, buf);
      if ([v11 isEqualToString:*buf])
      {
        sub_100005978(buf);
LABEL_9:
        [v3 addObject:v10];
        goto LABEL_10;
      }

      v12 = [v10 action];
      sub_10053562C(a1, 29, __p);
      LODWORD(v12) = [v12 isEqualToString:__p[0]];
      sub_100005978(__p);
      sub_100005978(buf);
      if (v12)
      {
        goto LABEL_9;
      }

      v13 = [v10 action];
      sub_10053562C(a1, 4, buf);
      LODWORD(v13) = [v13 isEqualToString:*buf];
      sub_100005978(buf);
      if (v13)
      {
        v34 = v10;
      }

      else if ([objc_msgSend(v10 "action")])
      {
        [v5 addObject:v10];
      }

      else
      {
        [v4 addObject:v10];
      }

LABEL_10:
      v9 = v9 + 1;
    }

    while (v7 != v9);
    v14 = [v6 countByEnumeratingWithState:&v50 objects:v66 count:16];
    v7 = v14;
  }

  while (v14);
LABEL_20:
  [*(a1 + 40) removeAllObjects];
  v15 = objc_opt_new();
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v16 = [v3 countByEnumeratingWithState:&v46 objects:v65 count:16];
  if (v16)
  {
    v17 = *v47;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v47 != v17)
        {
          objc_enumerationMutation(v3);
        }

        v19 = *(*(&v46 + 1) + 8 * i);
        ++*(a1 + 32);
        [v19 setIdentifier:?];
        [*(a1 + 40) setObject:v19 forKey:{objc_msgSend(v19, "identifier")}];
        [v15 addObject:{objc_msgSend(v19, "info")}];
      }

      v16 = [v3 countByEnumeratingWithState:&v46 objects:v65 count:16];
    }

    while (v16);
  }

  v45 = 0u;
  v43 = 0u;
  v44 = 0u;
  v42 = 0u;
  v20 = [v4 countByEnumeratingWithState:&v42 objects:v64 count:16];
  if (v20)
  {
    v21 = *v43;
    do
    {
      for (j = 0; j != v20; j = j + 1)
      {
        if (*v43 != v21)
        {
          objc_enumerationMutation(v4);
        }

        v23 = *(*(&v42 + 1) + 8 * j);
        ++*(a1 + 32);
        [v23 setIdentifier:?];
        [*(a1 + 40) setObject:v23 forKey:{objc_msgSend(v23, "identifier")}];
        [v15 addObject:{objc_msgSend(v23, "info")}];
      }

      v20 = [v4 countByEnumeratingWithState:&v42 objects:v64 count:16];
    }

    while (v20);
  }

  if (v35)
  {
    ++*(a1 + 32);
    [v35 setIdentifier:?];
    [*(a1 + 40) setObject:v35 forKey:{objc_msgSend(v35, "identifier")}];
    [v15 addObject:{objc_msgSend(v35, "info")}];
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v24 = [v5 countByEnumeratingWithState:&v38 objects:v63 count:16];
  if (v24)
  {
    v25 = *v39;
    do
    {
      for (k = 0; k != v24; k = k + 1)
      {
        if (*v39 != v25)
        {
          objc_enumerationMutation(v5);
        }

        v27 = *(*(&v38 + 1) + 8 * k);
        ++*(a1 + 32);
        [v27 setIdentifier:?];
        [*(a1 + 40) setObject:v27 forKey:{objc_msgSend(v27, "identifier")}];
        [v15 addObject:{objc_msgSend(v27, "info")}];
      }

      v24 = [v5 countByEnumeratingWithState:&v38 objects:v63 count:16];
    }

    while (v24);
  }

  v28 = **(a1 + 56);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = PersonalityInfo::logPrefix(**(a1 + 16));
    v31 = *(a1 + 64);
    v30 = *(a1 + 72);
    sub_100535024(a1, __p);
    if (v37 >= 0)
    {
      v32 = __p;
    }

    else
    {
      v32 = __p[0];
    }

    *buf = 136316162;
    *&buf[4] = v29;
    v55 = 2080;
    v56 = " ";
    v57 = 2080;
    v58 = v31;
    v59 = 2080;
    v60 = v30;
    v61 = 2082;
    v62 = v32;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sFinal request includes %{public}s", buf, 0x34u);
    if (v37 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return v15;
}

BOOL sub_10053C6DC(uint64_t a1, uint64_t a2, void *a3, char **a4)
{
  if (!a3 || ![a3 count] || !+[NSJSONSerialization isValidJSONObject:](NSJSONSerialization, "isValidJSONObject:", a3))
  {
    v17 = **(a1 + 56);
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (!v18)
    {
      return result;
    }

    v19 = PersonalityInfo::logPrefix(**(a1 + 16));
    v20 = *(a1 + 64);
    v21 = *(a1 + 72);
    *buf = 136315906;
    *&buf[4] = v19;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v28 = 2080;
    v29 = v20;
    v30 = 2080;
    v31 = v21;
    v22 = "#W %s%s%s%sInvalid JSON Object";
LABEL_12:
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, v22, buf, 0x2Au);
    return 0;
  }

  v26 = 0;
  v7 = [NSJSONSerialization dataWithJSONObject:a3 options:1 error:&v26];
  v8 = v7;
  if (!v7 || ![(NSData *)v7 length])
  {
    v17 = **(a1 + 56);
    result = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    v23 = PersonalityInfo::logPrefix(**(a1 + 16));
    v24 = *(a1 + 64);
    v25 = *(a1 + 72);
    *buf = 136315906;
    *&buf[4] = v23;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v28 = 2080;
    v29 = v24;
    v30 = 2080;
    v31 = v25;
    v22 = "#W %s%s%s%sUnable to serialize properly";
    goto LABEL_12;
  }

  a4[1] = *a4;
  v9 = [(NSData *)v8 bytes];
  if (!v9)
  {
    return 0;
  }

  v10 = *a4;
  v11 = [(NSData *)v8 length];
  sub_100553C7C(a4, v10, v9, &v11[v9], v11);
  v12 = **(a1 + 56);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = PersonalityInfo::logPrefix(**(a1 + 16));
    v14 = *(a1 + 64);
    v15 = *(a1 + 72);
    *buf = 136315906;
    *&buf[4] = v13;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v28 = 2080;
    v29 = v14;
    v30 = 2080;
    v31 = v15;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sGenerated Request:", buf, 0x2Au);
  }

  *buf = off_101E55860;
  *&buf[8] = a1;
  v29 = buf;
  logger::CFTypeRefLogger();
  sub_100007E44(buf);
  return 1;
}

void sub_10053C990(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100007E44(va);
  _Unwind_Resume(a1);
}

BOOL sub_10053C9AC(uint64_t a1, const __CFData *a2, uint64_t *a3)
{
  v146 = 0;
  ctu::ns::AutoPool::AutoPool(&v146);
  if (a2)
  {
    Length = CFDataGetLength(a2);
  }

  else
  {
    Length = 0;
  }

  v6 = **(a1 + 56);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = PersonalityInfo::logPrefix(**(a1 + 16));
    sub_101774178(v7, v157, Length, v6);
  }

  v8 = **(a1 + 56);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (!Length)
  {
    if (v9)
    {
      v99 = PersonalityInfo::logPrefix(**(a1 + 16));
      v100 = *(a1 + 64);
      v101 = *(a1 + 72);
      *buf = 136315906;
      *&buf[4] = v99;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      v148 = 2080;
      v149 = v100;
      v150 = 2080;
      v151 = v101;
      v102 = "#W %s%s%s%sError with input data";
LABEL_93:
      v103 = v8;
LABEL_98:
      v108 = 42;
      goto LABEL_99;
    }

LABEL_100:
    v18 = 0;
    goto LABEL_101;
  }

  if (v9)
  {
    v10 = PersonalityInfo::logPrefix(**(a1 + 16));
    v11 = *(a1 + 64);
    v12 = *(a1 + 72);
    *buf = 136315906;
    *&buf[4] = v10;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v148 = 2080;
    v149 = v11;
    v150 = 2080;
    v151 = v12;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sRAW JSON Response:", buf, 0x2Au);
  }

  *buf = off_101E558E0;
  *&buf[8] = a1;
  v149 = buf;
  logger::CFTypeRefLogger();
  sub_100007E44(buf);
  v145 = 0;
  v13 = [NSJSONSerialization JSONObjectWithData:a2 options:0 error:&v145];
  if (!v13)
  {
    v104 = **(a1 + 56);
    if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
    {
      v105 = PersonalityInfo::logPrefix(**(a1 + 16));
      v106 = *(a1 + 64);
      v107 = *(a1 + 72);
      *buf = 136316162;
      *&buf[4] = v105;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      v148 = 2080;
      v149 = v106;
      v150 = 2080;
      v151 = v107;
      v152 = 2112;
      v153 = v145;
      v102 = "#W %s%s%s%sInvalid JSON response, error: %@";
      v103 = v104;
      v108 = 52;
LABEL_99:
      _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_DEFAULT, v102, buf, v108);
      goto LABEL_100;
    }

    goto LABEL_100;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v109 = **(a1 + 56);
    if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
    {
      v110 = PersonalityInfo::logPrefix(**(a1 + 16));
      v111 = *(a1 + 64);
      v112 = *(a1 + 72);
      *buf = 136315906;
      *&buf[4] = v110;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      v148 = 2080;
      v149 = v111;
      v150 = 2080;
      v151 = v112;
      v102 = "#W %s%s%s%sUnexpected JSON format, should be Array";
      v103 = v109;
      goto LABEL_98;
    }

    goto LABEL_100;
  }

  v14 = [v13 count];
  v15 = v14;
  v16 = v14 << 32;
  v8 = **(a1 + 56);
  v17 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (!v16)
  {
    if (!v17)
    {
      goto LABEL_100;
    }

    v119 = PersonalityInfo::logPrefix(**(a1 + 16));
    v120 = *(a1 + 64);
    v121 = *(a1 + 72);
    *buf = 136315906;
    *&buf[4] = v119;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v148 = 2080;
    v149 = v120;
    v150 = 2080;
    v151 = v121;
    v102 = "#W %s%s%s%sEmpty JSON response";
    goto LABEL_93;
  }

  v18 = v15;
  if (v17)
  {
    v19 = PersonalityInfo::logPrefix(**(a1 + 16));
    v20 = *(a1 + 64);
    v21 = *(a1 + 72);
    v22 = "";
    if (v15 > 1)
    {
      v22 = "s";
    }

    *buf = 136316418;
    *&buf[4] = v19;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v148 = 2080;
    v149 = v20;
    v150 = 2080;
    v151 = v21;
    v152 = 2048;
    v153 = v15;
    v154 = 2080;
    *v155 = v22;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sReceived %lu Response%s", buf, 0x3Eu);
  }

  v143 = 0u;
  v144 = 0u;
  v141 = 0u;
  v142 = 0u;
  v23 = [v13 countByEnumeratingWithState:&v141 objects:v156 count:16];
  if (v23)
  {
    obj = v13;
    v129 = v15;
    v130 = 0;
    v137 = *v142;
    while (1)
    {
      v24 = 0;
      v136 = v23;
      do
      {
        if (*v142 != v137)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v141 + 1) + 8 * v24);
        v26 = objc_autoreleasePoolPush();
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v39 = **(a1 + 56);
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            v40 = PersonalityInfo::logPrefix(**(a1 + 16));
            v41 = *(a1 + 64);
            v42 = *(a1 + 72);
            *buf = 136315906;
            *&buf[4] = v40;
            *&buf[12] = 2080;
            *&buf[14] = " ";
            v148 = 2080;
            v149 = v41;
            v150 = 2080;
            v151 = v42;
            v36 = v39;
            v37 = "#W %s%s%s%sInvalid action response, skipping";
            goto LABEL_31;
          }

LABEL_33:
          LOBYTE(v47) = 0;
          goto LABEL_34;
        }

        v27 = [SubscriberResponseTransactionElement responseWithInfo:v25];
        [v27 identifier];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v43 = **(a1 + 56);
          if (!os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_33;
          }

          v44 = PersonalityInfo::logPrefix(**(a1 + 16));
          v45 = *(a1 + 64);
          v46 = *(a1 + 72);
          *buf = 136315906;
          *&buf[4] = v44;
          *&buf[12] = 2080;
          *&buf[14] = " ";
          v148 = 2080;
          v149 = v45;
          v150 = 2080;
          v151 = v46;
          v36 = v43;
          v37 = "#W %s%s%s%sResponse identifier is not a number";
LABEL_31:
          v38 = 42;
          goto LABEL_32;
        }

        v28 = [*(a1 + 40) objectForKey:{objc_msgSend(v27, "identifier")}];
        v29 = v28;
        if (v28)
        {
          [v27 setAction:{objc_msgSend(v28, "action")}];
          [v27 action];
          v30 = sub_10053DA28(a1);
          if (v30 == 30)
          {
            v31 = **(a1 + 56);
            if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_33;
            }

            v32 = PersonalityInfo::logPrefix(**(a1 + 16));
            v34 = *(a1 + 64);
            v33 = *(a1 + 72);
            v35 = [objc_msgSend(v27 "action")];
            *buf = 136316162;
            *&buf[4] = v32;
            *&buf[12] = 2080;
            *&buf[14] = " ";
            v148 = 2080;
            v149 = v34;
            v150 = 2080;
            v151 = v33;
            v152 = 2080;
            v153 = v35;
            v36 = v31;
            v37 = "#I %s%s%s%sSkipping unknown action '%s'";
            v38 = 52;
LABEL_32:
            _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, v37, buf, v38);
            goto LABEL_33;
          }

          v53 = objc_autoreleasePoolPush();
          if ([objc_msgSend(v29 "description")])
          {
            v54 = **(a1 + 56);
            if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
            {
              log = v54;
              v55 = PersonalityInfo::logPrefix(**(a1 + 16));
              v131 = v53;
              v122 = *(a1 + 64);
              v123 = *(a1 + 72);
              v56 = (*(a1 + 96) + 16 * v30);
              v57 = *v56;
              v58 = v56[1];
              if (v58)
              {
                atomic_fetch_add_explicit(&v58->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v59 = (*(*v57 + 40))(v57);
              if (v58)
              {
                sub_100004A34(v58);
              }

              *buf = 136316162;
              *&buf[4] = v55;
              *&buf[12] = 2080;
              *&buf[14] = " ";
              v148 = 2080;
              v149 = v122;
              v150 = 2080;
              v151 = v123;
              v152 = 2080;
              v153 = v59;
              _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%s%s request:", buf, 0x34u);
              v53 = v131;
            }

            *buf = off_101E55960;
            *&buf[8] = a1;
            v149 = buf;
            logger::CFTypeRefLogger();
            sub_100007E44(buf);
          }

          v60 = **(a1 + 56);
          v61 = os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT);
          if (v30 == 19)
          {
            if (v61)
            {
              v62 = PersonalityInfo::logPrefix(**(a1 + 16));
              v132 = v53;
              v124 = *(a1 + 64);
              loga = *(a1 + 72);
              v63 = *(a1 + 96);
              v64 = *(v63 + 304);
              v65 = *(v63 + 312);
              if (v65)
              {
                atomic_fetch_add_explicit(&v65->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v66 = (*(*v64 + 40))(v64);
              if (v65)
              {
                sub_100004A34(v65);
              }

              *buf = 136316162;
              *&buf[4] = v62;
              *&buf[12] = 2080;
              *&buf[14] = " ";
              v148 = 2080;
              v149 = v124;
              v150 = 2080;
              v151 = loga;
              v152 = 2080;
              v153 = v66;
              _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%s%s response: received", buf, 0x34u);
              v53 = v132;
            }
          }

          else
          {
            if (v61)
            {
              v67 = PersonalityInfo::logPrefix(**(a1 + 16));
              v133 = v53;
              v125 = *(a1 + 64);
              logb = *(a1 + 72);
              v68 = (*(a1 + 96) + 16 * v30);
              v69 = *v68;
              v70 = v68[1];
              if (v70)
              {
                atomic_fetch_add_explicit(&v70->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v71 = (*(*v69 + 40))(v69);
              if (v70)
              {
                sub_100004A34(v70);
              }

              *buf = 136316162;
              *&buf[4] = v67;
              *&buf[12] = 2080;
              *&buf[14] = " ";
              v148 = 2080;
              v149 = v125;
              v150 = 2080;
              v151 = logb;
              v152 = 2080;
              v153 = v71;
              _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%s%s response:", buf, 0x34u);
              v53 = v133;
            }

            [v27 description];
            *buf = off_101E559E0;
            *&buf[8] = a1;
            v149 = buf;
            logger::CFTypeRefLogger();
            sub_100007E44(buf);
          }

          objc_autoreleasePoolPop(v53);
          v140 = 0;
          sub_10053562C(a1, v30, buf);
          v72 = sub_10053DBBC(a1, *buf, [v27 info], &v140);
          sub_100005978(buf);
          if (v72)
          {
            v73 = (*(a1 + 96) + 16 * v30);
            v74 = *v73;
            v75 = v73[1];
            if (v75)
            {
              atomic_fetch_add_explicit(&v75->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (v74)
            {
              v138 = 0;
              v139 = 0;
              (*(*v74 + 16))(&v138, v74, v140, [v27 info], objc_msgSend(v29, "info"), a3);
              v76 = v138;
              if (v138)
              {
                v77 = v139;
                if (v139)
                {
                  atomic_fetch_add_explicit(&v139->__shared_owners_, 1uLL, memory_order_relaxed);
                  v78 = *a3;
                  atomic_fetch_add_explicit(&v77->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                else
                {
                  v78 = *a3;
                }

                v89 = (v78 + 16 * v30);
                v90 = v89[1];
                *v89 = v76;
                v89[1] = v77;
                if (v90)
                {
                  sub_100004A34(v90);
                }

                if (v77)
                {
                  sub_100004A34(v77);
                }

                ++v130;
              }

              else
              {
                v84 = **(a1 + 56);
                if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
                {
                  v85 = PersonalityInfo::logPrefix(**(a1 + 16));
                  v87 = *(a1 + 64);
                  v86 = *(a1 + 72);
                  v88 = sub_100536EB0(a1, v30);
                  *buf = 136316162;
                  *&buf[4] = v85;
                  *&buf[12] = 2080;
                  *&buf[14] = " ";
                  v148 = 2080;
                  v149 = v87;
                  v150 = 2080;
                  v151 = v86;
                  v152 = 2080;
                  v153 = v88;
                  _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%saction %s response parsed to DevNull", buf, 0x34u);
                }
              }

              if (v139)
              {
                sub_100004A34(v139);
              }
            }

            else
            {
              v79 = **(a1 + 56);
              if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
              {
                v80 = PersonalityInfo::logPrefix(**(a1 + 16));
                v82 = *(a1 + 64);
                v81 = *(a1 + 72);
                v83 = sub_100536EB0(a1, v30);
                *buf = 136316162;
                *&buf[4] = v80;
                *&buf[12] = 2080;
                *&buf[14] = " ";
                v148 = 2080;
                v149 = v82;
                v150 = 2080;
                v151 = v81;
                v152 = 2080;
                v153 = v83;
                _os_log_error_impl(&_mh_execute_header, v79, OS_LOG_TYPE_ERROR, "#E %s%s%s%sprocessor not found for action %s", buf, 0x34u);
              }
            }

            if (v75)
            {
              sub_100004A34(v75);
            }
          }

          LOBYTE(v47) = !v72;
        }

        else
        {
          v48 = **(a1 + 56);
          if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
          {
            v91 = PersonalityInfo::logPrefix(**(a1 + 16));
            v93 = *(a1 + 64);
            v92 = *(a1 + 72);
            v94 = [v27 identifier];
            v95 = v94;
            LODWORD(v138) = 0;
            if (v94)
            {
              v96 = CFGetTypeID(v94);
              if (v96 == CFNumberGetTypeID())
              {
                ctu::cf::assign(&v138, v95, v97);
              }
            }

            *buf = 136316162;
            *&buf[4] = v91;
            *&buf[12] = 2080;
            *&buf[14] = " ";
            v148 = 2080;
            v149 = v93;
            v150 = 2080;
            v151 = v92;
            v152 = 1024;
            LODWORD(v153) = v138;
            _os_log_error_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "#E %s%s%s%sUnable to find matching request for response %d", buf, 0x30u);
          }

          v47 = [objc_msgSend(v27 description];
          if (v47)
          {
            v49 = **(a1 + 56);
            if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
            {
              v50 = PersonalityInfo::logPrefix(**(a1 + 16));
              v51 = *(a1 + 64);
              v52 = *(a1 + 72);
              *buf = 136316162;
              *&buf[4] = v50;
              *&buf[12] = 2080;
              *&buf[14] = " ";
              v148 = 2080;
              v149 = v51;
              v150 = 2080;
              v151 = v52;
              v152 = 2080;
              v153 = v47;
              _os_log_error_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "#E %s%s%s%sresponse: %s", buf, 0x34u);
            }

            goto LABEL_33;
          }
        }

LABEL_34:
        objc_autoreleasePoolPop(v26);
        if (v47)
        {
          goto LABEL_90;
        }

        v24 = v24 + 1;
      }

      while (v136 != v24);
      v23 = [obj countByEnumeratingWithState:&v141 objects:v156 count:16];
      if (!v23)
      {
LABEL_90:
        v18 = v129;
        v98 = v130;
        goto LABEL_102;
      }
    }
  }

LABEL_101:
  v98 = 0;
LABEL_102:
  v113 = **(a1 + 56);
  if (os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
  {
    v114 = PersonalityInfo::logPrefix(**(a1 + 16));
    v115 = *(a1 + 64);
    v116 = *(a1 + 72);
    v117 = "";
    if (!v98)
    {
      v117 = " not";
    }

    *buf = 136316674;
    *&buf[4] = v114;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v148 = 2080;
    v149 = v115;
    v150 = 2080;
    v151 = v116;
    v152 = 2080;
    v153 = v117;
    v154 = 1024;
    *v155 = v98;
    *&v155[4] = 2048;
    *&v155[6] = v18;
    _os_log_impl(&_mh_execute_header, v113, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sEntitlement Response was%s successfully parsed %d responses out of %lu", buf, 0x44u);
  }

  ctu::ns::AutoPool::~AutoPool(&v146);
  return v98 != 0;
}

void sub_10053D938(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, std::__shared_weak_count *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, ...)
{
  va_start(va, a35);
  if (a25)
  {
    sub_100004A34(a25);
  }

  if (v35)
  {
    sub_100004A34(v35);
  }

  ctu::ns::AutoPool::~AutoPool(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10053DA28(uint64_t a1)
{
  v14 = 0uLL;
  v15 = 0;
  ctu::cf::assign();
  v2 = 0;
  v3 = 0;
  v4 = 0;
  v13 = 0;
  v12 = 0uLL;
  while (1)
  {
    v5 = (*(a1 + 96) + v2);
    v6 = *v5;
    v7 = v5[1];
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v8 = (*(*v6 + 40))(v6);
    if (v7)
    {
      sub_100004A34(v7);
    }

    v9 = strlen(v8);
    if (!v9 && !memcmp(&v12, v8, 0))
    {
      break;
    }

    v4 = v3 > 0x1C;
    v2 += 16;
    if (++v3 == 30)
    {
      return 30;
    }
  }

  if (v4)
  {
    return 30;
  }

  else
  {
    return v3;
  }
}

void sub_10053DB80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10053DBBC(uint64_t a1, void *a2, void *a3, int *a4)
{
  v7 = [a3 objectForKey:@"status"];
  if (!v7)
  {
    v20 = **(a1 + 56);
    result = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    v21 = PersonalityInfo::logPrefix(**(a1 + 16));
    v23 = *(a1 + 64);
    v22 = *(a1 + 72);
    v35 = 136316162;
    v36 = v21;
    v37 = 2080;
    v38 = " ";
    v39 = 2080;
    v40 = v23;
    v41 = 2080;
    v42 = v22;
    v43 = 2080;
    v44 = [a2 UTF8String];
    v24 = "#W %s%s%s%s%s, no action atatus in response";
LABEL_21:
    v28 = v20;
    v29 = 52;
LABEL_22:
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, v24, &v35, v29);
    return 0;
  }

  v8 = v7;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v20 = **(a1 + 56);
    result = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    v25 = PersonalityInfo::logPrefix(**(a1 + 16));
    v27 = *(a1 + 64);
    v26 = *(a1 + 72);
    v35 = 136316162;
    v36 = v25;
    v37 = 2080;
    v38 = " ";
    v39 = 2080;
    v40 = v27;
    v41 = 2080;
    v42 = v26;
    v43 = 2080;
    v44 = [a2 UTF8String];
    v24 = "#W %s%s%s%s%s, invalid action status format, expected number";
    goto LABEL_21;
  }

  v9 = [v8 intValue];
  v10 = v9;
  if (v9 - 6000 <= 0x14 && ((1 << (v9 - 112)) & 0x103F7F) != 0 || v9 - 6300 < 3 || v9 == 6201)
  {
    *a4 = v9;
    v14 = **(a1 + 56);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = PersonalityInfo::logPrefix(**(a1 + 16));
      v17 = *(a1 + 64);
      v16 = *(a1 + 72);
      v18 = [a2 UTF8String];
      v19 = sub_100531604(*a4);
      v35 = 136316418;
      v36 = v15;
      v37 = 2080;
      v38 = " ";
      v39 = 2080;
      v40 = v17;
      v41 = 2080;
      v42 = v16;
      v43 = 2080;
      v44 = v18;
      v45 = 2080;
      v46 = v19;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%s%s, action status: %s", &v35, 0x3Eu);
    }

    return 1;
  }

  else
  {
    v30 = **(a1 + 56);
    result = os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
    if (result)
    {
      v32 = PersonalityInfo::logPrefix(**(a1 + 16));
      v34 = *(a1 + 64);
      v33 = *(a1 + 72);
      v35 = 136316418;
      v36 = v32;
      v37 = 2080;
      v38 = " ";
      v39 = 2080;
      v40 = v34;
      v41 = 2080;
      v42 = v33;
      v43 = 2080;
      v44 = [a2 UTF8String];
      v45 = 1024;
      LODWORD(v46) = v10;
      v24 = "#W %s%s%s%s%s, unknown action status: %d";
      v28 = v30;
      v29 = 58;
      goto LABEL_22;
    }
  }

  return result;
}

uint64_t sub_10053DF18@<X0>(uint64_t result@<X0>, int a2@<W1>, _OWORD *a3@<X8>)
{
  v3 = *(*(result + 96) + 16 * a2);
  *a3 = v3;
  if (*(&v3 + 1))
  {
    atomic_fetch_add_explicit((*(&v3 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void *sub_10053DF3C(void *a1)
{
  *a1 = off_101E554B8;
  v2 = a1[4];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    sub_100004A34(v3);
  }

  return a1;
}

uint64_t sub_10053DF9C(uint64_t a1, CFDictionaryRef theDict, void *key)
{
  *__p = 0u;
  v17 = 0u;
  Value = CFDictionaryGetValue(theDict, key);
  sub_10053E1F4(__p, Value, a1, key, 0);
  if (BYTE8(v17) == 1)
  {
    if ((SBYTE7(v17) & 0x80u) == 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    v18 = 0;
    v19 = 0;
    if (ctu::cf::convert_copy(&v19, v7, 0x8000100, kCFAllocatorDefault, v6))
    {
      v18 = v19;
      *buf = 0;
      sub_100005978(buf);
      v8 = v18;
    }

    else
    {
      v8 = 0;
    }

    v15 = v8;
    v18 = 0;
    sub_100005978(&v18);
    v9 = sub_100531868(v8);
    sub_100005978(&v15);
    if (v9 != -1)
    {
      goto LABEL_14;
    }

    v10 = **(a1 + 40);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = PersonalityInfo::logPrefix(**(a1 + 24));
      v12 = (*(*a1 + 40))(a1);
      v13 = __p;
      if (SBYTE7(v17) < 0)
      {
        v13 = __p[0];
      }

      *buf = 136316162;
      *&buf[4] = v11;
      v21 = 2080;
      v22 = " ";
      v23 = 2080;
      v24 = v12;
      v25 = 2080;
      v26 = ", ";
      v27 = 2080;
      v28 = v13;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sUnsupported EntitlementType value: %s", buf, 0x34u);
    }
  }

  v9 = 0xFFFFFFFFLL;
LABEL_14:
  if (BYTE8(v17) == 1 && SBYTE7(v17) < 0)
  {
    operator delete(__p[0]);
  }

  return v9;
}

void sub_10053E1A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, int a18, __int16 a19, char a20, char a21)
{
  if (a17 == 1 && a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10053E1F4(uint64_t *__return_ptr a1@<X8>, CFTypeRef cf@<X1>, uint64_t a3@<X0>, void *a4@<X2>, int a5@<W3>)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;
  if (cf)
  {
    v8 = CFGetTypeID(cf);
    if (v8 == CFStringGetTypeID())
    {
      *&v15[2] = 0;
      ctu::cf::assign();
      *a1 = 0;
      a1[1] = 0;
      *(a1 + 15) = 0;
      *(a1 + 23) = 0;
      *(a1 + 24) = 1;
    }

    else if (os_log_type_enabled(**(a3 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_1017741E4();
    }
  }

  else if (a5)
  {
    v9 = **(a3 + 40);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = PersonalityInfo::logPrefix(**(a3 + 24));
      v11 = (*(*a3 + 40))(a3);
      buf = 136316162;
      *buf_4 = v10;
      v14 = 2080;
      *v15 = " ";
      *&v15[8] = 2080;
      v16 = v11;
      v17 = 2080;
      v18 = ", ";
      v19 = 2080;
      v20 = [a4 UTF8String];
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sMissing element %s", &buf, 0x34u);
    }
  }
}

unint64_t sub_10053E3E8(uint64_t a1, CFDictionaryRef theDict, void *key)
{
  Value = CFDictionaryGetValue(theDict, key);
  v6 = sub_10053E54C(a1, Value, key, 0);
  if ((v6 & 0x100000000) != 0)
  {
    v7 = v6;
    if ((v6 - 6100) < 7)
    {
      return v7;
    }

    v9 = **(a1 + 40);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = PersonalityInfo::logPrefix(**(a1 + 24));
      v11 = (*(*a1 + 40))(a1);
      v12 = 136316162;
      v13 = v10;
      v14 = 2080;
      v15 = " ";
      v16 = 2080;
      v17 = v11;
      v18 = 2080;
      v19 = ", ";
      v20 = 1024;
      v21 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sInvalid EntitlementStatus value: %d", &v12, 0x30u);
    }
  }

  return 0xFFFFFFFFLL;
}

unint64_t sub_10053E54C(uint64_t a1, void *cf, void *a3, int a4)
{
  if (!cf)
  {
    if (a4)
    {
      v15 = **(a1 + 40);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = PersonalityInfo::logPrefix(**(a1 + 24));
        v17 = (*(*a1 + 40))(a1);
        v19 = 136316162;
        v20 = v16;
        v21 = 2080;
        v22 = " ";
        v23 = 2080;
        v24 = v17;
        v25 = 2080;
        v26 = ", ";
        v27 = 2080;
        v28 = [a3 UTF8String];
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sMissing element %s", &v19, 0x34u);
      }
    }

    goto LABEL_11;
  }

  v7 = CFGetTypeID(cf);
  if (v7 != CFNumberGetTypeID())
  {
    if (os_log_type_enabled(**(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_1017742A0();
    }

LABEL_11:
    v14 = 0;
    v13 = 0;
    v12 = 0;
    return v14 | v12 | v13;
  }

  v19 = 0;
  v8 = CFGetTypeID(cf);
  TypeID = CFNumberGetTypeID();
  v11 = 0;
  if (v8 == TypeID)
  {
    ctu::cf::assign(&v19, cf, v10);
    v11 = v19;
  }

  v12 = v11 & 0xFFFFFF00;
  v13 = v11;
  v14 = &_mh_execute_header;
  return v14 | v12 | v13;
}

void sub_10053E718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  v5 = a2;
  v7 = sub_10053E9A8(a3);
  v8 = **(a1 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = PersonalityInfo::logPrefix(**(a1 + 24));
    v10 = (*(*a1 + 40))(a1);
    *buf = 136316418;
    *&buf[4] = v9;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v13 = 2080;
    v14 = v10;
    v15 = 2080;
    v16 = ", ";
    v17 = 2080;
    v18 = sub_10006EE44(v5);
    v19 = 2080;
    v20 = sub_100A38E08(v7);
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sUpdate entitlement %s with %s", buf, 0x3Eu);
  }

  v11 = (*a4)[1];
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  *buf = 0;
  *&buf[8] = 0;
  sub_10055AD48();
}

void sub_10053E978(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_100004A34(a14);
  }

  if (v14)
  {
    sub_100004A34(v14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10053E9A8(int a1)
{
  if ((a1 - 6100) > 6)
  {
    return 3;
  }

  else
  {
    return dword_1018196B0[a1 - 6100];
  }
}

void sub_10053E9D0(void **a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *a1;
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v4 = *a1;
  }

  v5 = v4[1];
  *v4 = v2;
  v4[1] = v3;
  if (v5)
  {
    sub_100004A34(v5);
  }

  if (v3)
  {

    sub_100004A34(v3);
  }
}

uint64_t sub_10053EA44(uint64_t a1, CFDictionaryRef theDict, void *key)
{
  *__p = 0u;
  v17 = 0u;
  Value = CFDictionaryGetValue(theDict, key);
  sub_10053E1F4(__p, Value, a1, key, 0);
  if (BYTE8(v17) != 1)
  {
    goto LABEL_32;
  }

  if ((SBYTE7(v17) & 0x80u) == 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  v18 = 0;
  v19 = 0;
  if (ctu::cf::convert_copy(&v19, v7, 0x8000100, kCFAllocatorDefault, v6))
  {
    v8 = v18;
    v18 = v19;
    *buf = v8;
    sub_100005978(buf);
  }

  v15 = v18;
  v18 = 0;
  sub_100005978(&v18);
  if (([v15 isEqualToString:@"VoWiFi"] & 1) == 0)
  {
    if ([v15 isEqualToString:@"VVM"])
    {
      v9 = 2;
      goto LABEL_27;
    }

    if ([v15 isEqualToString:@"Multi-SIM"])
    {
      v9 = 3;
      goto LABEL_27;
    }

    if ([v15 isEqualToString:@"PreferredNetworks"])
    {
      v9 = 4;
      goto LABEL_27;
    }

    if ([v15 isEqualToString:@"CarrierSpace"])
    {
      v9 = 5;
      goto LABEL_27;
    }

    if ([v15 isEqualToString:@"sa-watch"])
    {
      v9 = 6;
      goto LABEL_27;
    }

    if ([v15 isEqualToString:@"esim-profile-released"])
    {
      v9 = 7;
      goto LABEL_27;
    }

    if ([v15 isEqualToString:@"AuthorizationTokens"])
    {
      v9 = 8;
      goto LABEL_27;
    }

    if ([v15 isEqualToString:@"geofence-data"])
    {
      v9 = 9;
      goto LABEL_27;
    }

    if ([v15 isEqualToString:@"msisdn-event"])
    {
      v9 = 10;
      goto LABEL_27;
    }

    sub_100005978(&v15);
    v10 = **(a1 + 40);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = PersonalityInfo::logPrefix(**(a1 + 24));
      v12 = (*(*a1 + 40))(a1);
      v13 = __p;
      if (SBYTE7(v17) < 0)
      {
        v13 = __p[0];
      }

      *buf = 136316162;
      *&buf[4] = v11;
      v21 = 2080;
      v22 = " ";
      v23 = 2080;
      v24 = v12;
      v25 = 2080;
      v26 = ", ";
      v27 = 2080;
      v28 = v13;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sUnsupported EntitlementTopicType value: %s", buf, 0x34u);
    }

LABEL_32:
    v9 = 0;
    goto LABEL_33;
  }

  v9 = 1;
LABEL_27:
  sub_100005978(&v15);
LABEL_33:
  if (BYTE8(v17) == 1 && SBYTE7(v17) < 0)
  {
    operator delete(__p[0]);
  }

  return v9;
}

void sub_10053ED58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, int a18, __int16 a19, char a20, char a21)
{
  if (a17 == 1 && a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10053EDA4(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 24) == 1)
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v4 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v4;
    *(a2 + 23) = 0;
    *a2 = 0;
  }

  else
  {
    v5 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v5;
    *(a2 + 8) = 0uLL;
    *a2 = 0;
    *(a1 + 24) = 1;
  }

  return a1;
}

uint64_t sub_10053EE24(uint64_t a1, void *cf, void *a3, int a4)
{
  if (!cf)
  {
    if (a4)
    {
      v12 = **(a1 + 40);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = PersonalityInfo::logPrefix(**(a1 + 24));
        v14 = (*(*a1 + 40))(a1);
        *v15 = 136316162;
        *&v15[4] = v13;
        v16 = 2080;
        v17 = " ";
        v18 = 2080;
        v19 = v14;
        v20 = 2080;
        v21 = ", ";
        v22 = 2080;
        v23 = [a3 UTF8String];
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sMissing element %s", v15, 0x34u);
      }
    }

    return 0;
  }

  v7 = CFGetTypeID(cf);
  if (v7 != CFNumberGetTypeID())
  {
    if (os_log_type_enabled(**(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_1017742A0();
    }

    return 0;
  }

  *v15 = 0;
  v8 = CFGetTypeID(cf);
  TypeID = CFNumberGetTypeID();
  result = 0;
  if (v8 == TypeID)
  {
    ctu::cf::assign(v15, cf, v9);
    return *v15;
  }

  return result;
}

unint64_t sub_10053EFE0(uint64_t a1, void *cf, void *a3, int a4)
{
  if (!cf)
  {
    if (a4)
    {
      v13 = **(a1 + 40);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = PersonalityInfo::logPrefix(**(a1 + 24));
        v15 = (*(*a1 + 40))(a1);
        *v17 = 136316162;
        *&v17[4] = v14;
        v18 = 2080;
        v19 = " ";
        v20 = 2080;
        v21 = v15;
        v22 = 2080;
        v23 = ", ";
        v24 = 2080;
        v25 = [a3 UTF8String];
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sMissing element %s", v17, 0x34u);
      }
    }

    goto LABEL_11;
  }

  v7 = CFGetTypeID(cf);
  if (v7 != CFNumberGetTypeID())
  {
    if (os_log_type_enabled(**(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_1017742A0();
    }

LABEL_11:
    v12 = 0;
    v11 = 0;
    return v11 | v12;
  }

  *v17 = 0;
  v8 = CFGetTypeID(cf);
  TypeID = CFNumberGetTypeID();
  v11 = 0;
  if (v8 == TypeID)
  {
    ctu::cf::assign(v17, cf, v10);
    v11 = *v17;
  }

  v12 = v11 & 0xFFFFFFFFFFFFFF00;
  v11 = v11;
  return v11 | v12;
}

uint64_t sub_10053F1A8(uint64_t a1, CFTypeRef cf, void *a3, int a4)
{
  if (!cf)
  {
    if (a4)
    {
      v10 = **(a1 + 40);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = PersonalityInfo::logPrefix(**(a1 + 24));
        v12 = (*(*a1 + 40))(a1);
        v14 = 136316162;
        v15 = v11;
        v16 = 2080;
        v17 = " ";
        v18 = 2080;
        v19 = v12;
        v20 = 2080;
        v21 = ", ";
        v22 = 2080;
        v23 = [a3 UTF8String];
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sMissing element %s", &v14, 0x34u);
      }
    }

    goto LABEL_9;
  }

  v7 = CFGetTypeID(cf);
  if (v7 != CFBooleanGetTypeID())
  {
    if (os_log_type_enabled(**(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_10177435C();
    }

LABEL_9:
    v8 = 0;
    v9 = 0;
    return v8 | (v9 << 8);
  }

  v8 = CFBooleanGetValue(cf) != 0;
  v9 = 1;
  return v8 | (v9 << 8);
}

void sub_10053F344(CFTypeRef cf@<X1>, uint64_t a2@<X0>, void *a3@<X2>, int a4@<W3>, void *a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  if (cf)
  {
    v10 = CFGetTypeID(cf);
    if (v10 == CFArrayGetTypeID())
    {
      *v17 = cf;
      sub_10053F5B0(a5, v17);
    }

    else if (a4)
    {
      v14 = **(a2 + 40);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = PersonalityInfo::logPrefix(**(a2 + 24));
        v16 = (*(*a2 + 40))(a2);
        *v17 = 136316162;
        *&v17[4] = v15;
        v18 = 2080;
        v19 = " ";
        v20 = 2080;
        v21 = v16;
        v22 = 2080;
        v23 = ", ";
        v24 = 2080;
        v25 = [a3 UTF8String];
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "#E %s%s%s%selement %s is of wrong format, expected array", v17, 0x34u);
      }
    }
  }

  else if (a4)
  {
    v11 = **(a2 + 40);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = PersonalityInfo::logPrefix(**(a2 + 24));
      v13 = (*(*a2 + 40))(a2);
      *v17 = 136316162;
      *&v17[4] = v12;
      v18 = 2080;
      v19 = " ";
      v20 = 2080;
      v21 = v13;
      v22 = 2080;
      v23 = ", ";
      v24 = 2080;
      v25 = [a3 UTF8String];
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sMissing element %s", v17, 0x34u);
    }
  }
}

void sub_10053F584(_Unwind_Exception *exception_object)
{
  if (*(v1 + 8) == 1)
  {
    sub_100010250(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10053F5B0(uint64_t a1, CFTypeRef *a2)
{
  if (*(a1 + 8) == 1)
  {
    v5 = 0;
    sub_1001FA5E0(&v5, a2);
    v3 = *a1;
    *a1 = v5;
    v5 = v3;
    sub_100010250(&v5);
  }

  else
  {
    sub_1001FA5E0(a1, a2);
    *(a1 + 8) = 1;
  }

  return a1;
}

void sub_10053F620(CFTypeRef cf@<X1>, uint64_t a2@<X0>, void *a3@<X2>, int a4@<W3>, void *a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  if (cf)
  {
    v9 = CFGetTypeID(cf);
    if (v9 == CFDictionaryGetTypeID())
    {
      *v16 = cf;
      sub_10053F884(a5, v16);
    }

    else
    {
      v13 = **(a2 + 40);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = PersonalityInfo::logPrefix(**(a2 + 24));
        v15 = (*(*a2 + 40))(a2);
        *v16 = 136316162;
        *&v16[4] = v14;
        v17 = 2080;
        v18 = " ";
        v19 = 2080;
        v20 = v15;
        v21 = 2080;
        v22 = ", ";
        v23 = 2080;
        v24 = [a3 UTF8String];
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "#E %s%s%s%selement %s is of wrong format, expected dictionary", v16, 0x34u);
      }
    }
  }

  else if (a4)
  {
    v10 = **(a2 + 40);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = PersonalityInfo::logPrefix(**(a2 + 24));
      v12 = (*(*a2 + 40))(a2);
      *v16 = 136316162;
      *&v16[4] = v11;
      v17 = 2080;
      v18 = " ";
      v19 = 2080;
      v20 = v12;
      v21 = 2080;
      v22 = ", ";
      v23 = 2080;
      v24 = [a3 UTF8String];
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sMissing element %s", v16, 0x34u);
    }
  }
}

void sub_10053F858(_Unwind_Exception *exception_object)
{
  if (*(v1 + 8) == 1)
  {
    sub_10001021C(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10053F884(uint64_t a1, CFTypeRef *a2)
{
  if (*(a1 + 8) == 1)
  {
    v5 = 0;
    sub_100010180(&v5, a2);
    v3 = *a1;
    *a1 = v5;
    v5 = v3;
    sub_10001021C(&v5);
  }

  else
  {
    sub_100010180(a1, a2);
    *(a1 + 8) = 1;
  }

  return a1;
}

void sub_10053F8F4(uint64_t a1, CFDictionaryRef theDict, void *key, uint64_t *a4)
{
  theArray = 0;
  v60 = 0;
  Value = CFDictionaryGetValue(theDict, key);
  sub_10053F344(Value, a1, key, 0, &theArray);
  if (v60 != 1)
  {
    return;
  }

  v55 = 0uLL;
  v56[0] = 0;
  sub_100540138(a4, &v55);
  *buf = &v55;
  sub_10013DFEC(buf);
  Count = CFArrayGetCount(theArray);
  sub_1005401B8(a4, Count);
  v9 = 0;
  v10 = @"5g-experience";
  v50 = a4;
  while (v9 < CFArrayGetCount(theArray))
  {
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    *v56 = 0u;
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v9);
    v12 = ValueAtIndex;
    if (!ValueAtIndex)
    {
      goto LABEL_70;
    }

    v13 = CFGetTypeID(ValueAtIndex);
    if (v13 != CFDictionaryGetTypeID())
    {
      goto LABEL_70;
    }

    v14 = v10;
    *__p = 0u;
    v54 = 0u;
    v15 = CFDictionaryGetValue(v12, @"plan-type");
    sub_10053E1F4(__p, v15, a1, @"plan-type", 0);
    if (BYTE8(v54) == 1)
    {
      if (SBYTE7(v54) < 0)
      {
        if (__p[1] == 7 && *__p[0] == 1702126957 && *(__p[0] + 3) == 1684370021)
        {
          goto LABEL_32;
        }

        if (__p[1] != 9)
        {
          goto LABEL_28;
        }

        v16 = __p[0];
LABEL_18:
        v18 = *v16;
        v19 = *(v16 + 8);
        if (v18 != 0x65726574656D6E75 || v19 != 100)
        {
          goto LABEL_28;
        }

        LODWORD(v55) = 1;
      }

      else
      {
        if (BYTE7(v54) != 7)
        {
          if (BYTE7(v54) != 9)
          {
            goto LABEL_28;
          }

          v16 = __p;
          goto LABEL_18;
        }

        if (LODWORD(__p[0]) != 1702126957 || *(__p + 3) != 1684370021)
        {
LABEL_28:
          v22 = **(a1 + 40);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            v23 = PersonalityInfo::logPrefix(**(a1 + 24));
            v24 = (*(*a1 + 40))(a1);
            v25 = __p;
            if (SBYTE7(v54) < 0)
            {
              v25 = __p[0];
            }

            *buf = 136316162;
            *&buf[4] = v23;
            *&buf[12] = 2080;
            *&buf[14] = " ";
            *&buf[22] = 2080;
            v62 = v24;
            v63 = 2080;
            v64 = ", ";
            v65 = 2080;
            v66 = v25;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sinvalid plan type received - %s, ignored", buf, 0x34u);
          }

          goto LABEL_34;
        }

LABEL_32:
        LODWORD(v55) = 0;
      }

      BYTE4(v55) = 1;
    }

LABEL_34:
    v10 = v14;
    v26 = CFDictionaryGetValue(v12, v14);
    v27 = sub_10053F1A8(a1, v26, v14, 0);
    if ((v27 & 0x100) != 0)
    {
      WORD4(v55) = v27 & 0x1FF;
    }

    v28 = CFDictionaryGetValue(v12, @"volume-cap");
    v29 = sub_10053E54C(a1, v28, @"volume-cap", 0);
    if ((v29 & 0x100000000) != 0)
    {
      HIDWORD(v55) = v29;
      LOBYTE(v56[0]) = 1;
    }

    v51 = 0;
    v52 = 0;
    v30 = CFDictionaryGetValue(v12, @"supported-rat");
    sub_10053F344(v30, a1, @"supported-rat", 0, &v51);
    if (v52 == 1)
    {
      memset(buf, 0, sizeof(buf));
      sub_1001E9734(&v56[1], buf);
      if (*buf)
      {
        *&buf[8] = *buf;
        operator delete(*buf);
      }

      v31 = 0;
      while (2)
      {
        if (v31 >= CFArrayGetCount(v51))
        {
          a4 = v50;
          if (v56[1] == v57 && v58 == 1)
          {
            if (v56[1])
            {
              *&v57 = v56[1];
              operator delete(v56[1]);
            }

            LOBYTE(v58) = 0;
          }

          break;
        }

        v32 = CFArrayGetValueAtIndex(v51, v31);
        v33 = v32;
        if (v32 && (v34 = CFGetTypeID(v32), v34 == CFStringGetTypeID()))
        {
          if (CFStringCompare(v33, @"mmw", 0))
          {
            if (CFStringCompare(v33, @"sub6", 0))
            {
              v35 = **(a1 + 40);
              if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
              {
                v36 = PersonalityInfo::logPrefix(**(a1 + 24));
                v37 = (*(*a1 + 40))(a1);
                *buf = 136316162;
                *&buf[4] = v36;
                *&buf[12] = 2080;
                *&buf[14] = " ";
                *&buf[22] = 2080;
                v62 = v37;
                v63 = 2080;
                v64 = ", ";
                v65 = 2112;
                v66 = v33;
                v38 = v35;
                v39 = "#W %s%s%s%sinvalid supported rat received - %@, ignored";
                v40 = 52;
                goto LABEL_51;
              }
            }

            else
            {
              *buf = 1;
              sub_1001FDFFC(&v56[1], buf);
            }
          }

          else
          {
            *buf = 0;
            sub_1001FDFFC(&v56[1], buf);
          }
        }

        else
        {
          v41 = **(a1 + 40);
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            v42 = PersonalityInfo::logPrefix(**(a1 + 24));
            v43 = (*(*a1 + 40))(a1);
            v44 = CFArrayGetValueAtIndex(v51, v31);
            *buf = 136316418;
            *&buf[4] = v42;
            *&buf[12] = 2080;
            *&buf[14] = " ";
            *&buf[22] = 2080;
            v62 = v43;
            v63 = 2080;
            v64 = ", ";
            v65 = 2112;
            v66 = @"sub6";
            v67 = 2112;
            v68 = v44;
            v38 = v41;
            v39 = "#W %s%s%s%sarray %@ has a value of incorrect type: %@";
            v40 = 62;
LABEL_51:
            _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, v39, buf, v40);
          }
        }

        ++v31;
        v10 = v14;
        continue;
      }
    }

    v45 = CFDictionaryGetValue(v12, @"sa-provisioned");
    v46 = sub_10053F1A8(a1, v45, @"sa-provisioned", 0);
    if ((v46 & 0x100) != 0)
    {
      WORD4(v58) = v46 & 0x1FF;
    }

    v47 = a4[1];
    if (v47 >= a4[2])
    {
      v49 = sub_100553FE8(a4, &v55);
    }

    else
    {
      v48 = v55;
      *(v47 + 16) = v56[0];
      *v47 = v48;
      sub_10017272C((v47 + 24), &v56[1]);
      *(v47 + 56) = WORD4(v58);
      v49 = v47 + 64;
      a4[1] = v47 + 64;
    }

    a4[1] = v49;
    if (v52 == 1)
    {
      sub_100010250(&v51);
    }

    if (BYTE8(v54) == 1 && SBYTE7(v54) < 0)
    {
      operator delete(__p[0]);
    }

LABEL_70:
    if (v58 == 1 && v56[1])
    {
      *&v57 = v56[1];
      operator delete(v56[1]);
    }

    ++v9;
  }

  if (v60)
  {
    sub_100010250(&theArray);
  }
}

void sub_100540048(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, const void *a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40)
{
  sub_10013DFEC(&a39);
  if (a36 == 1)
  {
    sub_100010250(&a35);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100540138(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == 1)
  {
    sub_1001725F0(a1);
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a1 + 24) = 1;
  }

  return a1;
}

uint64_t *sub_1005401B8(uint64_t *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 6)
  {
    if (!(a2 >> 58))
    {
      sub_100172988(result, a2);
    }

    sub_1000CE3D4();
  }

  return result;
}

void sub_100540260(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1001E9CE4(va);
  _Unwind_Resume(a1);
}

void sub_100540274(uint64_t a1, const __CFDictionary *a2, void *a3, uint64_t a4)
{
  v8 = **(a1 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = PersonalityInfo::logPrefix(**(a1 + 24));
    v10 = (*(*a1 + 40))(a1);
    *buf = 136316162;
    *&buf[4] = v9;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    *&buf[22] = 2080;
    *&buf[24] = v10;
    v25 = 2080;
    v26 = ", ";
    v27 = 2112;
    v28 = a3;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%slooking for KEY:%@", buf, 0x34u);
  }

  *buf = off_101E55B00;
  *&buf[8] = a1;
  *&buf[24] = buf;
  logger::CFTypeRefLogger();
  sub_100007E44(buf);
  theDict = 0;
  v22 = 0;
  Value = CFDictionaryGetValue(a2, a3);
  sub_10053F620(Value, a1, a3, 1, &theDict);
  if (v22 == 1)
  {
    v12 = CFDictionaryGetValue(theDict, @"alternate-server");
    if (v12)
    {
      v13 = CFGetTypeID(v12);
      if (v13 == CFStringGetTypeID())
      {
        memset(buf, 0, sizeof(buf));
        sub_100540560(a4 + 32, buf);
        if (buf[23] < 0)
        {
          operator delete(*buf);
        }

        memset(buf, 0, 24);
        ctu::cf::assign();
        v14 = *buf;
        v23[0] = *&buf[8];
        *(v23 + 7) = *&buf[15];
        v15 = buf[23];
        if (*(a4 + 55) < 0)
        {
          operator delete(*(a4 + 32));
        }

        v16 = v23[0];
        *(a4 + 32) = v14;
        *(a4 + 40) = v16;
        *(a4 + 47) = *(v23 + 7);
        *(a4 + 55) = v15;
        v17 = CFDictionaryGetValue(theDict, @"use-3gpp-rat");
        v18 = v17;
        if (v17)
        {
          v19 = CFGetTypeID(v17);
          if (v19 == CFBooleanGetTypeID())
          {
            buf[0] = 0;
            ctu::cf::assign(buf, v18, v20);
            *(a4 + 56) = buf[0];
          }
        }
      }
    }
  }

  if (v22 == 1)
  {
    sub_10001021C(&theDict);
  }
}

void sub_100540508(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a10 == 1)
  {
    sub_10001021C(&a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100540560(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 32) == 1)
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v4 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v4;
    *(a2 + 23) = 0;
    *a2 = 0;
    *(a1 + 24) = *(a2 + 24);
  }

  else
  {
    v5 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v5;
    *(a2 + 8) = 0uLL;
    *a2 = 0;
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 32) = 1;
  }

  return a1;
}

void sub_1005405F0(uint64_t a1, const __CFDictionary *a2, void *a3, uint64_t a4)
{
  v8 = **(a1 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = PersonalityInfo::logPrefix(**(a1 + 24));
    v10 = (*(*a1 + 40))(a1);
    buf[0].n128_u32[0] = 136316162;
    *(buf[0].n128_u64 + 4) = v9;
    buf[0].n128_u16[6] = 2080;
    *(&buf[0].n128_u64[1] + 6) = " ";
    buf[1].n128_u16[3] = 2080;
    buf[1].n128_u64[1] = v10;
    buf[2].n128_u16[0] = 2080;
    *(buf[2].n128_u64 + 2) = ", ";
    buf[2].n128_u16[5] = 2112;
    *(&buf[2].n128_u64[1] + 4) = a3;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%slooking for KEY:%@", buf, 0x34u);
  }

  buf[0].n128_u64[0] = off_101E55B80;
  buf[0].n128_u64[1] = a1;
  buf[1].n128_u64[1] = buf;
  logger::CFTypeRefLogger();
  sub_100007E44(buf);
  theDict = 0;
  v15 = 0;
  Value = CFDictionaryGetValue(a2, a3);
  sub_10053F620(Value, a1, a3, 1, &theDict);
  if (v15 == 1)
  {
    memset(buf, 0, sizeof(buf));
    sub_1005408F0(a4 + 80, buf);
    if (buf[3].n128_u8[8] == 1 && buf[3].n128_i8[7] < 0)
    {
      operator delete(buf[2].n128_u64[0]);
    }

    if (buf[1].n128_u8[8] == 1 && buf[1].n128_i8[7] < 0)
    {
      operator delete(buf[0].n128_u64[0]);
    }

    v12 = CFDictionaryGetValue(theDict, @"service-fqdn");
    sub_10053E1F4(buf, v12, a1, @"service-fqdn", 0);
    sub_10016A270(a4 + 80, buf);
    if (buf[1].n128_u8[8] == 1 && buf[1].n128_i8[7] < 0)
    {
      operator delete(buf[0].n128_u64[0]);
    }

    v13 = CFDictionaryGetValue(theDict, @"vendor-name");
    sub_10053E1F4(buf, v13, a1, @"vendor-name", 0);
    sub_10016A270(a4 + 112, buf);
    if (buf[1].n128_u8[8] == 1 && buf[1].n128_i8[7] < 0)
    {
      operator delete(buf[0].n128_u64[0]);
    }

    if (v15)
    {
      sub_10001021C(&theDict);
    }
  }
}

void sub_100540890(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005408F0(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 64) == 1)
  {
    sub_10016A270(a1, a2);
    sub_10016A270(a1 + 32, a2 + 2);
  }

  else
  {
    *a1 = 0;
    *(a1 + 24) = 0;
    if (a2[1].n128_u8[8] == 1)
    {
      v4 = *a2;
      *(a1 + 16) = a2[1].n128_u64[0];
      *a1 = v4;
      *(a2 + 8) = 0uLL;
      a2->n128_u64[0] = 0;
      *(a1 + 24) = 1;
    }

    *(a1 + 32) = 0;
    *(a1 + 56) = 0;
    if (a2[3].n128_u8[8] == 1)
    {
      v5 = a2[2];
      *(a1 + 48) = a2[3].n128_u64[0];
      *(a1 + 32) = v5;
      *(&a2[2] + 8) = 0uLL;
      a2[2].n128_u64[0] = 0;
      *(a1 + 56) = 1;
    }

    *(a1 + 64) = 1;
  }

  return a1;
}

void sub_1005409BC(uint64_t a1, const __CFDictionary *a2, void *a3, uint64_t a4)
{
  v8 = **(a1 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = PersonalityInfo::logPrefix(**(a1 + 24));
    v10 = (*(*a1 + 40))(a1);
    *buf = 136316162;
    *&buf[4] = v9;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    *&buf[22] = 2080;
    *&buf[24] = v10;
    *v36 = 2080;
    *&v36[2] = ", ";
    *&v36[10] = 2112;
    *&v36[12] = a3;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%slooking for KEY:%@", buf, 0x34u);
  }

  *buf = off_101E55C00;
  *&buf[8] = a1;
  *&buf[24] = buf;
  logger::CFTypeRefLogger();
  sub_100007E44(buf);
  theDict = 0;
  v34 = 0;
  Value = CFDictionaryGetValue(a2, a3);
  sub_10053F620(Value, a1, a3, 0, &theDict);
  if (v34 == 1)
  {
    *v36 = 0u;
    memset(buf, 0, sizeof(buf));
    sub_100540FB0(a4 + 152, buf);
    if (v36[0] == 1)
    {
      __p[0] = &buf[8];
      sub_1000087B4(__p);
    }

    v31 = 0;
    v32 = 0;
    v12 = CFDictionaryGetValue(theDict, @"service-tier");
    sub_10053F620(v12, a1, @"service-tier", 0, &v31);
    if (v32 != 1)
    {
      goto LABEL_24;
    }

    memset(buf, 0, sizeof(buf));
    sub_10054100C(a4 + 152, buf);
    __p[0] = &buf[8];
    sub_1000087B4(__p);
    v13 = CFDictionaryGetValue(v31, @"tier-id");
    v14 = sub_10053E54C(a1, v13, @"tier-id", 1);
    v15 = v14;
    if ((v14 & 0x100000000) != 0)
    {
      if ((v14 - 5) > 0xFFFFFFFB)
      {
        *(a4 + 152) = v14;
        v19 = CFDictionaryGetValue(v31, @"emergency");
        *(a4 + 156) = sub_10053F1A8(a1, v19, @"emergency", 0);
        v20 = CFDictionaryGetValue(v31, @"voice");
        *(a4 + 158) = sub_10053F1A8(a1, v20, @"voice", 0);
        if (*(a4 + 152) == 3)
        {
          theArray = 0;
          v30 = 0;
          v21 = CFDictionaryGetValue(v31, @"app-categories");
          sub_10053F344(v21, a1, @"app-categories", 0, &theArray);
          if (v30 == 1)
          {
            Count = CFArrayGetCount(theArray);
            if (Count)
            {
              for (i = 0; i != Count; ++i)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
                if (ValueAtIndex)
                {
                  v25 = CFGetTypeID(ValueAtIndex);
                  if (v25 == CFStringGetTypeID())
                  {
                    __p[0] = 0;
                    __p[1] = 0;
                    v28 = 0;
                    memset(buf, 0, 24);
                    ctu::cf::assign();
                    *__p = *buf;
                    v28 = *&buf[16];
                    sub_100005308((a4 + 160), __p);
                    if (SHIBYTE(v28) < 0)
                    {
                      operator delete(__p[0]);
                    }
                  }
                }
              }
            }
          }

          if (v30 == 1)
          {
            sub_100010250(&theArray);
          }
        }

        goto LABEL_24;
      }

      v16 = **(a1 + 40);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = PersonalityInfo::logPrefix(**(a1 + 24));
        v18 = (*(*a1 + 40))(a1);
        *buf = 136316418;
        *&buf[4] = v17;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        *&buf[22] = 2080;
        *&buf[24] = v18;
        *v36 = 2080;
        *&v36[2] = ", ";
        *&v36[10] = 2112;
        *&v36[12] = @"tier-id";
        v37 = 1024;
        v38 = v15;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%svalue for key %@ is out of bound: %d", buf, 0x3Au);
      }
    }

    if (*(a4 + 184) == 1)
    {
      *buf = a4 + 160;
      sub_1000087B4(buf);
      *(a4 + 184) = 0;
    }

LABEL_24:
    v26 = CFDictionaryGetValue(theDict, @"allow-carrier-app");
    *(a4 + 192) = sub_10053F1A8(a1, v26, @"allow-carrier-app", 0);
    if (v32)
    {
      sub_10001021C(&v31);
    }

    if (v34)
    {
      sub_10001021C(&theDict);
    }
  }
}

void sub_100540EB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, const void *a16, __int16 a17, char a18, char a19, int a20, const void *a21, __int16 a22, char a23, char a24, int a25, const void *a26, __int16 a27, char a28, char a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, char a40)
{
  if (a17 == 1)
  {
    sub_100010250(&a16);
  }

  if (a22 == 1)
  {
    sub_10001021C(&a21);
  }

  if (a27 == 1)
  {
    sub_10001021C(&a26);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100540FB0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48) == 1)
  {
    sub_1005541C0(a1, a2);
    *(a1 + 40) = *(a2 + 40);
  }

  else
  {
    sub_10055416C(a1, a2);
  }

  return a1;
}

uint64_t sub_10054100C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v5 = a2 + 1;
  *a1 = *a2;
  if (v4 == 1)
  {
    sub_100071A6C(a1 + 8);
    *(a1 + 8) = *(a2 + 1);
    *(a1 + 24) = a2[3];
    *v5 = 0;
    v5[1] = 0;
    v5[2] = 0;
  }

  else
  {
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 8) = *(a2 + 1);
    *(a1 + 24) = a2[3];
    *v5 = 0;
    a2[2] = 0;
    a2[3] = 0;
    *(a1 + 32) = 1;
  }

  return a1;
}

void sub_1005410A0(CFDictionaryRef theDict@<X2>, uint64_t a2@<X0>, uint64_t **a3@<X4>, void *a4@<X8>)
{
  theArray = 0;
  v14 = 0;
  Value = CFDictionaryGetValue(theDict, @"response");
  sub_10053F344(Value, a2, @"response", 0, &theArray);
  if (v14)
  {
    v7 = **(a2 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = PersonalityInfo::logPrefix(**(a2 + 24));
      v9 = (*(*a2 + 40))(a2);
      Count = CFArrayGetCount(theArray);
      buf[0] = 136316162;
      *&buf[1] = v8;
      v17 = 2080;
      v18 = " ";
      v19 = 2080;
      v20 = v9;
      v21 = 2080;
      v22 = ", ";
      v23 = 2048;
      v24 = Count;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sthere are %lu entitlement responses", buf, 0x34u);
    }

    v11 = (*a3)[1];
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    LOBYTE(v15) = 1;
    sub_10055B658();
  }

  *a4 = 0;
  a4[1] = 0;
  if (v14 == 1)
  {
    sub_100010250(&theArray);
  }
}

void sub_1005417C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::__shared_weak_count *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26, const void *a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  if (a26)
  {
    sub_100004A34(a26);
  }

  if (a9)
  {
    sub_100004A34(a9);
  }

  if (a28 == 1)
  {
    sub_100010250(&a27);
  }

  _Unwind_Resume(exception_object);
}

void sub_100541D68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, const void *a25, char a26)
{
  if (a26 == 1)
  {
    sub_100010250(&a25);
  }

  sub_100004A34(a10);
  _Unwind_Resume(a1);
}

uint64_t *sub_100541DC8(uint64_t a1, int a2, int *a3, int a4)
{
  v8 = a2;
  v9 = a2;
  v6 = *a3;
  v10 = &v9;
  *(sub_10030C46C(a1, &v9, &unk_101802C98, &v10) + 8) = v6;
  v10 = &v8;
  result = sub_10030C46C(a1 + 24, &v8, &unk_101802C98, &v10);
  *(result + 8) = a4;
  return result;
}

BOOL sub_100541E50(uint64_t a1, int a2)
{
  if (a2 == 6008)
  {
    v4 = **(a1 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = PersonalityInfo::logPrefix(**(a1 + 24));
      v6 = (*(*a1 + 40))(a1);
      v8 = 136315906;
      v9 = v5;
      v10 = 2080;
      v11 = " ";
      v12 = 2080;
      v13 = v6;
      v14 = 2080;
      v15 = ", ";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%smax number of devices reached", &v8, 0x2Au);
    }
  }

  return a2 == 6000;
}

void sub_100542EEC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100542FD4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == 1)
  {
    sub_100554274(a1);
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a1 + 24) = 1;
  }

  return a1;
}

std::string *sub_100543054(std::string *__dst, std::string *__str)
{
  if (__dst[2].__r_.__value_.__s.__data_[8] == 1)
  {
    std::string::operator=(__dst, __str);
    sub_10012BF3C(__dst + 1, __str + 1);
  }

  else
  {
    if (SHIBYTE(__str->__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(__dst, __str->__r_.__value_.__l.__data_, __str->__r_.__value_.__l.__size_);
    }

    else
    {
      v4 = *&__str->__r_.__value_.__l.__data_;
      __dst->__r_.__value_.__r.__words[2] = __str->__r_.__value_.__r.__words[2];
      *&__dst->__r_.__value_.__l.__data_ = v4;
    }

    sub_10006F264(&__dst[1], &__str[1]);
    __dst[2].__r_.__value_.__s.__data_[8] = 1;
  }

  return __dst;
}

void sub_1005430E0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1005430FC(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v7 = a2;
  sub_10055BA84(a1, a2, a3);
  v8 = &v7;
  result = sub_10030C46C(a1 + 24, &v7, &unk_101802C98, &v8);
  *(result + 8) = a4;
  return result;
}

atomic_ullong *sub_100543158@<X0>(CFDictionaryRef theDict@<X2>, uint64_t a2@<X0>, uint64_t *a3@<X1>, uint64_t *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  v5 = *a3;
  if (!*a3)
  {
    operator new();
  }

  result = a3[1];
  if (result)
  {
    atomic_fetch_add_explicit(result + 1, 1uLL, memory_order_relaxed);
  }

  *a4 = v5;
  a4[1] = result;
  if (theDict)
  {
    result = CFDictionaryGetValue(theDict, @"provisioning-elements");
    v7 = result;
    if (result)
    {
      v8 = CFGetTypeID(result);
      result = CFArrayGetTypeID();
      if (v8 == result)
      {
        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        result = [(atomic_ullong *)v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
        v9 = result;
        if (result)
        {
          v10 = *v21;
          v11 = (v5 + 8);
          do
          {
            v12 = 0;
            do
            {
              if (*v21 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v13 = *(*(&v20 + 1) + 8 * v12);
              if (v13)
              {
                v14 = CFGetTypeID(*(*(&v20 + 1) + 8 * v12));
                if (v14 == CFDictionaryGetTypeID())
                {
                  v15 = sub_10053DF9C(a2, v13, @"name");
                  if (v15 != -1)
                  {
                    v16 = *v11;
                    if (!*v11)
                    {
                      goto LABEL_23;
                    }

                    v17 = v5 + 8;
                    do
                    {
                      if (*(v16 + 32) >= v15)
                      {
                        v17 = v16;
                      }

                      v16 = *(v16 + 8 * (*(v16 + 32) < v15));
                    }

                    while (v16);
                    if (v17 == v11 || *(v17 + 32) > v15)
                    {
LABEL_23:
                      v18 = 0;
                      v19 = 0;
                      sub_1003F8470(v5, v15, &v18);
                      if (v19)
                      {
                        sub_100004A34(v19);
                      }
                    }
                  }
                }
              }

              v12 = (v12 + 1);
            }

            while (v12 != v9);
            result = [(atomic_ullong *)v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
            v9 = result;
          }

          while (result);
        }
      }
    }
  }

  return result;
}

void sub_1005433A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100543FBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, char a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, const void *a57, __int16 a58, char a59, char a60)
{
  if (a58 == 1)
  {
    sub_100010250(&a57);
  }

  sub_100004A34(a11);
  _Unwind_Resume(a1);
}

uint64_t *sub_1005440F8(uint64_t a1, int a2, uint64_t *a3, int a4)
{
  v7 = a2;
  sub_1003F8470(a1, a2, a3);
  v8 = &v7;
  result = sub_10030C46C(a1 + 24, &v7, &unk_101802C98, &v8);
  *(result + 8) = a4;
  return result;
}

void sub_100544AE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a34 < 0)
  {
    operator delete(__p);
  }

  sub_100004A34(v40);
  _Unwind_Resume(a1);
}

void sub_100544F74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, const void *a22, char a23)
{
  if (a23 == 1)
  {
    sub_100010250(&a22);
  }

  sub_100004A34(a10);
  _Unwind_Resume(a1);
}

void sub_100545384(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, const void *a22, char a23)
{
  if (a23 == 1)
  {
    sub_100010250(&a22);
  }

  sub_100004A34(a10);
  _Unwind_Resume(a1);
}

void *sub_1005453D0(uint64_t a1)
{
  *a1 = off_101E554F8;

  return sub_10053DF3C(a1);
}

const void **sub_100545434@<X0>(CFDictionaryRef theDict@<X2>, const void **a2@<X0>, void *a3@<X8>)
{
  v65 = 0;
  v64 = 0u;
  v62 = 0u;
  memset(v63, 0, sizeof(v63));
  v57 = 0u;
  v55 = 0;
  v56 = &v57;
  v58 = v59;
  v59[0] = 0;
  v60 = v61;
  memset(v61, 0, sizeof(v61));
  v59[1] = 0;
  theDicta = 0;
  Value = CFDictionaryGetValue(theDict, a2[6]);
  sub_10053F620(Value, a2, a2[6], 0, &theDicta);
  if (v55)
  {
    cf = 0;
    v53 = 0;
    v6 = CFDictionaryGetValue(theDicta, a2[7]);
    sub_10053F620(v6, a2, a2[7], 0, &cf);
    if (v53 == 1 && ((v51 = cf) == 0 ? (v7 = 0) : (CFRetain(cf), v7 = v51), (v8 = sub_1005459B8(a2, v7, &v56), sub_10001021C(&v51), (v50 = cf) == 0) ? (v9 = 0) : (CFRetain(cf), v9 = v50), (v10 = sub_100545BF8(a2, v9, &v60), sub_10001021C(&v50), (v49 = cf) == 0) ? (v11 = 0) : (CFRetain(cf), v11 = v49), v12 = v8 | v10 | sub_100545E40(a2, v11, &v58), sub_10001021C(&v49), v12 == 1))
    {
      v13 = v56;
      if (v56 == &v57)
      {
        v14 = 0.0;
      }

      else
      {
        v14 = 0.0;
        do
        {
          v15 = v13[6];
          v16 = v15 < v14 || v14 == 0.0;
          if (v16 && v15 != 0.0)
          {
            v14 = v13[6];
          }

          v18 = *(v13 + 1);
          if (v18)
          {
            do
            {
              v19 = v18;
              v18 = *v18;
            }

            while (v18);
          }

          else
          {
            do
            {
              v19 = *(v13 + 2);
              v16 = *v19 == v13;
              v13 = v19;
            }

            while (!v16);
          }

          v13 = v19;
        }

        while (v19 != &v57);
      }

      v21 = v60;
      if (v60 != v61)
      {
        do
        {
          v22 = v21[7];
          if ((v22 < v14 || v14 == 0.0) && v22 != 0.0)
          {
            v14 = v21[7];
          }

          v25 = *(v21 + 1);
          if (v25)
          {
            do
            {
              v26 = v25;
              v25 = *v25;
            }

            while (v25);
          }

          else
          {
            do
            {
              v26 = *(v21 + 2);
              v16 = *v26 == v21;
              v21 = v26;
            }

            while (!v16);
          }

          v21 = v26;
        }

        while (v26 != v61);
      }

      v27 = v58;
      if (v58 != v59)
      {
        do
        {
          v28 = v27[9];
          if ((v28 < v14 || v14 == 0.0) && v28 != 0.0)
          {
            v14 = v27[9];
          }

          v31 = *(v27 + 1);
          if (v31)
          {
            do
            {
              v32 = v31;
              v31 = *v31;
            }

            while (v31);
          }

          else
          {
            do
            {
              v32 = *(v27 + 2);
              v16 = *v32 == v27;
              v27 = v32;
            }

            while (!v16);
          }

          v27 = v32;
        }

        while (v32 != v59);
      }

      *(&v64 + 1) = v14;
      sub_10164D2D0(&v56);
      sub_10164D2C4(&v62);
      v20 = 1;
    }

    else
    {
      v20 = 0;
    }

    v47 = 0;
    v48 = 0;
    v33 = CFDictionaryGetValue(theDicta, a2[8]);
    sub_10053F620(v33, a2, a2[8], 0, &v47);
    if (v48 == 1)
    {
      v46 = v47;
      if (v47)
      {
        CFRetain(v47);
        v34 = v46;
      }

      else
      {
        v34 = 0;
      }

      v35 = sub_100546084(a2, v34, &v62);
      sub_10001021C(&v46);
      v45 = v47;
      if (v47)
      {
        CFRetain(v47);
        v36 = v45;
      }

      else
      {
        v36 = 0;
      }

      v37 = sub_100546374(a2, v36, &v62);
      sub_10001021C(&v45);
      v38 = v47;
      v44 = v47;
      if (v47)
      {
        CFRetain(v47);
      }

      v39 = sub_100546680(a2, v38, &v62);
      sub_10001021C(&v44);
      v40 = v47;
      v43 = v47;
      if (v47)
      {
        CFRetain(v47);
      }

      v41 = v35 | v37 | v39 | sub_100546970(a2, v40, &v62);
      sub_10001021C(&v43);
      if (v41 == 1)
      {
        sub_10164D2C4(&v62);
        goto LABEL_78;
      }
    }

    if (v20)
    {
LABEL_78:
      sub_10055C144();
    }

    *a3 = 0;
    a3[1] = 0;
    if (v48 == 1)
    {
      sub_10001021C(&v47);
    }

    if (v53 == 1)
    {
      sub_10001021C(&cf);
    }

    if (v55)
    {
      sub_10001021C(&theDicta);
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
  }

  sub_10006DCAC(&v60, v61[0]);
  sub_10006DCAC(&v58, v59[0]);
  sub_10006DCAC(&v56, v57);
  sub_100005978(&v63[1]);
  sub_100005978(v63);
  sub_100005978(&v62 + 1);
  return sub_100005978(&v62);
}

void sub_1005458EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va4, a3);
  va_start(va3, a3);
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, const void *);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  va_copy(va2, va1);
  v10 = va_arg(va2, const void *);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  va_copy(va3, va2);
  v16 = va_arg(va3, const void *);
  v18 = va_arg(va3, void);
  va_copy(va4, va3);
  v19 = va_arg(va4, const void *);
  v21 = va_arg(va4, void);
  sub_10001021C(va);
  if (v12 == 1)
  {
    sub_10001021C(va1);
  }

  if (v18 == 1)
  {
    sub_10001021C(va2);
  }

  if (v21 == 1)
  {
    sub_10001021C(va3);
  }

  sub_100556AA8(va4);
  sub_1003EDA14((v3 - 160));
  _Unwind_Resume(a1);
}

uint64_t sub_1005459B8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 objectForKey:@"voice"];
  if (v5 && (v6 = v5, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v20;
LABEL_5:
      v10 = 0;
      while (1)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v19 + 1) + 8 * v10);
        v18 = 0x100000001uLL;
        v17 = 0;
        result = sub_1005546AC(a1, v11, &v18, &v17);
        if (!result)
        {
          break;
        }

        *buf = v17;
        *&v25[4] = v18;
        sub_100554E28(a3, buf, buf);
        if (v8 == ++v10)
        {
          v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
          result = 1;
          if (v8)
          {
            goto LABEL_5;
          }

          return result;
        }
      }
    }

    else
    {
      return 1;
    }
  }

  else
  {
    v13 = **(a1 + 40);
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (v14)
    {
      v15 = PersonalityInfo::logPrefix(**(a1 + 24));
      v16 = (*(*a1 + 40))(a1);
      *buf = 136315906;
      *v25 = v15;
      *&v25[8] = 2080;
      *&v25[10] = " ";
      *&v25[18] = 2080;
      v26 = v16;
      v27 = 2080;
      v28 = ", ";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sReceived invalid voice usage information/array, skipping parsing", buf, 0x2Au);
      return 0;
    }
  }

  return result;
}

uint64_t sub_100545BF8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 objectForKey:@"data"];
  if (v5 && (v6 = v5, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v21;
LABEL_5:
      v10 = 0;
      while (1)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v20 + 1) + 8 * v10);
        v19 = 0;
        v18 = 0x100000001uLL;
        v17 = 0;
        result = sub_100554EFC(a1, v11, &v18, &v17);
        if (!result)
        {
          break;
        }

        *buf = v17;
        *&v26[4] = v18;
        v27 = v19;
        sub_1005555B4(a3, buf, buf);
        if (v8 == ++v10)
        {
          v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
          result = 1;
          if (v8)
          {
            goto LABEL_5;
          }

          return result;
        }
      }
    }

    else
    {
      return 1;
    }
  }

  else
  {
    v13 = **(a1 + 40);
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (v14)
    {
      v15 = PersonalityInfo::logPrefix(**(a1 + 24));
      v16 = (*(*a1 + 40))(a1);
      *buf = 136315906;
      *v26 = v15;
      *&v26[8] = 2080;
      *&v26[10] = " ";
      *&v26[18] = 2080;
      v27 = v16;
      v28 = 2080;
      v29 = ", ";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sReceived invalid data usage information/array, skipping parsing", buf, 0x2Au);
      return 0;
    }
  }

  return result;
}

uint64_t sub_100545E40(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 objectForKey:@"message"];
  if (v5 && (v6 = v5, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v22 objects:v29 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v23;
LABEL_5:
      v10 = 0;
      while (1)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v22 + 1) + 8 * v10);
        *&v12 = 0x100000001;
        *(&v12 + 1) = 0x100000001;
        v19 = v12;
        v20 = v12;
        v21 = 0;
        v18 = 0;
        result = sub_100555690(a1, v11, &v19, &v18);
        if (!result)
        {
          break;
        }

        *buf = v18;
        *&v27[4] = v19;
        *v28 = v20;
        *&v28[16] = v21;
        sub_10055617C(a3, buf, buf);
        if (v8 == ++v10)
        {
          v8 = [v6 countByEnumeratingWithState:&v22 objects:v29 count:16];
          result = 1;
          if (v8)
          {
            goto LABEL_5;
          }

          return result;
        }
      }
    }

    else
    {
      return 1;
    }
  }

  else
  {
    v14 = **(a1 + 40);
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (v15)
    {
      v16 = PersonalityInfo::logPrefix(**(a1 + 24));
      v17 = (*(*a1 + 40))(a1);
      *buf = 136315906;
      *v27 = v16;
      *&v27[8] = 2080;
      *&v27[10] = " ";
      *&v27[18] = 2080;
      *v28 = v17;
      *&v28[8] = 2080;
      *&v28[10] = ", ";
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sReceived invalid message usage information/array, skipping parsing", buf, 0x2Au);
      return 0;
    }
  }

  return result;
}

uint64_t sub_100546084(uint64_t a1, void *a2, const void **a3)
{
  v5 = [a2 objectForKey:@"voice"];
  if (!v5 || (v6 = v5, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v11 = **(a1 + 40);
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (!v12)
    {
      return result;
    }

    v13 = PersonalityInfo::logPrefix(**(a1 + 24));
    v14 = (*(*a1 + 40))(a1);
    *buf = 136315906;
    *&buf[4] = v13;
    v21 = 2080;
    v22 = " ";
    v23 = 2080;
    v24 = v14;
    v25 = 2080;
    v26 = ", ";
    v15 = "#I %s%s%s%sReceived invalid voice subscription information, skipping parsing";
    goto LABEL_10;
  }

  v7 = **(a1 + 40);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = PersonalityInfo::logPrefix(**(a1 + 24));
    v9 = (*(*a1 + 40))(a1);
    *buf = 136315906;
    *&buf[4] = v8;
    v21 = 2080;
    v22 = " ";
    v23 = 2080;
    v24 = v9;
    v25 = 2080;
    v26 = ", ";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sReceived voice subscription information", buf, 0x2Au);
  }

  v18 = 0;
  v19 = 0;
  result = sub_100556260(a1, v6, &v19, &v18);
  if (result)
  {
    if (sub_10164D174(a3, v19))
    {
      *buf = v18;
      sub_10021D11C(a3, buf);
      return 1;
    }

    v11 = **(a1 + 40);
    result = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (result)
    {
      v16 = PersonalityInfo::logPrefix(**(a1 + 24));
      v17 = (*(*a1 + 40))(a1);
      *buf = 136315906;
      *&buf[4] = v16;
      v21 = 2080;
      v22 = " ";
      v23 = 2080;
      v24 = v17;
      v25 = 2080;
      v26 = ", ";
      v15 = "#I %s%s%s%sUnable to parse voice subscription status";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v15, buf, 0x2Au);
      return 0;
    }
  }

  return result;
}

uint64_t sub_100546374(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 objectForKey:@"data"];
  if (!v5 || (v6 = v5, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v11 = **(a1 + 40);
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (!v12)
    {
      return result;
    }

    v13 = PersonalityInfo::logPrefix(**(a1 + 24));
    v14 = (*(*a1 + 40))(a1);
    *buf = 136315906;
    *&buf[4] = v13;
    v22 = 2080;
    v23 = " ";
    v24 = 2080;
    v25 = v14;
    v26 = 2080;
    v27 = ", ";
    v15 = "#I %s%s%s%sReceived invalid data subscription information, skipping parsing";
    goto LABEL_10;
  }

  v7 = **(a1 + 40);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = PersonalityInfo::logPrefix(**(a1 + 24));
    v9 = (*(*a1 + 40))(a1);
    *buf = 136315906;
    *&buf[4] = v8;
    v22 = 2080;
    v23 = " ";
    v24 = 2080;
    v25 = v9;
    v26 = 2080;
    v27 = ", ";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sReceived data subscription information", buf, 0x2Au);
  }

  v19 = 0;
  v20 = 0;
  v18 = 0;
  result = sub_10055663C(a1, v6, &v20, &v19, &v18);
  if (result)
  {
    if (sub_10164D24C(a3, v20))
    {
      *buf = v19;
      sub_10021D11C((a3 + 8), buf);
      *buf = v18;
      sub_10021D11C((a3 + 16), buf);
      return 1;
    }

    v11 = **(a1 + 40);
    result = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (result)
    {
      v16 = PersonalityInfo::logPrefix(**(a1 + 24));
      v17 = (*(*a1 + 40))(a1);
      *buf = 136315906;
      *&buf[4] = v16;
      v22 = 2080;
      v23 = " ";
      v24 = 2080;
      v25 = v17;
      v26 = 2080;
      v27 = ", ";
      v15 = "#I %s%s%s%sUnable to parse data subscription status";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v15, buf, 0x2Au);
      return 0;
    }
  }

  return result;
}

uint64_t sub_100546680(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 objectForKey:@"message"];
  if (!v5 || (v6 = v5, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v11 = **(a1 + 40);
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (!v12)
    {
      return result;
    }

    v13 = PersonalityInfo::logPrefix(**(a1 + 24));
    v14 = (*(*a1 + 40))(a1);
    *buf = 136315906;
    *&buf[4] = v13;
    v21 = 2080;
    v22 = " ";
    v23 = 2080;
    v24 = v14;
    v25 = 2080;
    v26 = ", ";
    v15 = "#I %s%s%s%sReceived invalid message subscription information, skipping parsing";
    goto LABEL_10;
  }

  v7 = **(a1 + 40);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = PersonalityInfo::logPrefix(**(a1 + 24));
    v9 = (*(*a1 + 40))(a1);
    *buf = 136315906;
    *&buf[4] = v8;
    v21 = 2080;
    v22 = " ";
    v23 = 2080;
    v24 = v9;
    v25 = 2080;
    v26 = ", ";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sReceived message subscription information", buf, 0x2Au);
  }

  v18 = 0;
  v19 = 0;
  result = sub_100556260(a1, v6, &v19, &v18);
  if (result)
  {
    if (sub_10164D288(a3, v19))
    {
      *buf = v18;
      sub_10021D11C((a3 + 24), buf);
      return 1;
    }

    v11 = **(a1 + 40);
    result = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (result)
    {
      v16 = PersonalityInfo::logPrefix(**(a1 + 24));
      v17 = (*(*a1 + 40))(a1);
      *buf = 136315906;
      *&buf[4] = v16;
      v21 = 2080;
      v22 = " ";
      v23 = 2080;
      v24 = v17;
      v25 = 2080;
      v26 = ", ";
      v15 = "#I %s%s%s%sUnable to parse message subscription status";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v15, buf, 0x2Au);
      return 0;
    }
  }

  return result;
}

uint64_t sub_100546970(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 objectForKey:@"account-info"];
  if (v5)
  {
    v6 = v5;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = **(a1 + 40);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = PersonalityInfo::logPrefix(**(a1 + 24));
        v9 = (*(*a1 + 40))(a1);
        *buf = 136315906;
        v44 = v8;
        v45 = 2080;
        v46 = " ";
        v47 = 2080;
        v48 = v9;
        v49 = 2080;
        v50 = ", ";
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sReceived account subscription information", buf, 0x2Au);
      }

      v10 = [v6 objectForKey:@"stacking"];
      if (v10)
      {
        v11 = v10;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ([v11 isEqualToString:@"yes"])
          {
            v12 = *(a3 + 36);
LABEL_13:
            v19 = v12 | 0x10;
LABEL_17:
            *(a3 + 36) = v19;
            goto LABEL_23;
          }

          if ([v11 isEqualToString:@"no"])
          {
            v12 = *(a3 + 36);
            goto LABEL_16;
          }

          v20 = **(a1 + 40);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v24 = PersonalityInfo::logPrefix(**(a1 + 24));
            v25 = (*(*a1 + 40))(a1);
            *buf = 136315906;
            v44 = v24;
            v45 = 2080;
            v46 = " ";
            v47 = 2080;
            v48 = v25;
            v49 = 2080;
            v50 = ", ";
            v23 = "#W %s%s%s%sstacking has invalid string";
            goto LABEL_22;
          }
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v18 = [v11 BOOLValue];
            v12 = *(a3 + 36);
            if (v18)
            {
              goto LABEL_13;
            }

LABEL_16:
            v19 = v12 | 0x20;
            goto LABEL_17;
          }

          v20 = **(a1 + 40);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v21 = PersonalityInfo::logPrefix(**(a1 + 24));
            v22 = (*(*a1 + 40))(a1);
            *buf = 136315906;
            v44 = v21;
            v45 = 2080;
            v46 = " ";
            v47 = 2080;
            v48 = v22;
            v49 = 2080;
            v50 = ", ";
            v23 = "#W %s%s%s%sunable to parse stacking info";
LABEL_22:
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, v23, buf, 0x2Au);
          }
        }
      }

LABEL_23:
      v26 = [v6 objectForKey:@"auto-renew"];
      if (!v26)
      {
        goto LABEL_39;
      }

      v27 = v26;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([v27 isEqualToString:@"yes"])
        {
          v28 = *(a3 + 36);
LABEL_29:
          v30 = v28 | 4;
LABEL_33:
          *(a3 + 36) = v30;
          goto LABEL_39;
        }

        if ([v27 isEqualToString:@"no"])
        {
          v28 = *(a3 + 36);
          goto LABEL_32;
        }

        v31 = **(a1 + 40);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          v35 = PersonalityInfo::logPrefix(**(a1 + 24));
          v36 = (*(*a1 + 40))(a1);
          *buf = 136315906;
          v44 = v35;
          v45 = 2080;
          v46 = " ";
          v47 = 2080;
          v48 = v36;
          v49 = 2080;
          v50 = ", ";
          v34 = "#W %s%s%s%sauto-renew has invalid string";
          goto LABEL_38;
        }
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v29 = [v27 BOOLValue];
          v28 = *(a3 + 36);
          if (v29)
          {
            goto LABEL_29;
          }

LABEL_32:
          v30 = v28 | 8;
          goto LABEL_33;
        }

        v31 = **(a1 + 40);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          v32 = PersonalityInfo::logPrefix(**(a1 + 24));
          v33 = (*(*a1 + 40))(a1);
          *buf = 136315906;
          v44 = v32;
          v45 = 2080;
          v46 = " ";
          v47 = 2080;
          v48 = v33;
          v49 = 2080;
          v50 = ", ";
          v34 = "#W %s%s%s%sunable to parse auto-renew info";
LABEL_38:
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, v34, buf, 0x2Au);
        }
      }

LABEL_39:
      sub_100556878(a1, v6, a3);
      v41 = 0;
      v42 = 0;
      if (sub_100554B98(a1, v6, @"billing-cycle-start-date", &v42) && sub_100554B98(a1, v6, @"billing-cycle-end-date", &v41))
      {
        v37 = v41;
        *(a3 + 40) = v42;
        *(a3 + 48) = v37;
        v38 = **(a1 + 40);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          v39 = PersonalityInfo::logPrefix(**(a1 + 24));
          v40 = (*(*a1 + 40))(a1);
          *buf = 136316418;
          v44 = v39;
          v45 = 2080;
          v46 = " ";
          v47 = 2080;
          v48 = v40;
          v49 = 2080;
          v50 = ", ";
          v51 = 2048;
          v52 = v42;
          v53 = 2048;
          v54 = v41;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sReceived billing start time: %f and billing end time: %f", buf, 0x3Eu);
        }
      }

      return 1;
    }
  }

  v13 = **(a1 + 40);
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (v14)
  {
    v16 = PersonalityInfo::logPrefix(**(a1 + 24));
    v17 = (*(*a1 + 40))(a1);
    *buf = 136315906;
    v44 = v16;
    v45 = 2080;
    v46 = " ";
    v47 = 2080;
    v48 = v17;
    v49 = 2080;
    v50 = ", ";
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sReceived invalid account subscription information, skipping parsing", buf, 0x2Au);
    return 0;
  }

  return result;
}

void sub_1005476AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29, int a30, __int16 a31, char a32, char a33)
{
  if (v34 && a14 < 0)
  {
    operator delete(__p);
  }

  if (a22 == 1 && a21 < 0)
  {
    operator delete(a16);
  }

  if (a29 == 1 && a28 < 0)
  {
    operator delete(a23);
  }

  sub_100004A34(v33);
  _Unwind_Resume(a1);
}

void sub_100547750(uint64_t *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  sub_1004FB0D8();
}

void sub_100548088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26)
{
  if (a19 == 1 && a18 < 0)
  {
    operator delete(__p);
  }

  if (a26 == 1 && a25 < 0)
  {
    operator delete(a20);
  }

  v28 = *(v26 + 8);
  if (v28)
  {
    sub_100004A34(v28);
  }

  _Unwind_Resume(a1);
}

void sub_1005481C8(uint64_t *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  sub_1004FB0D8();
}

void sub_100548B00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26)
{
  if (a19 == 1 && a18 < 0)
  {
    operator delete(__p);
  }

  if (a26 == 1 && a25 < 0)
  {
    operator delete(a20);
  }

  v28 = *(v26 + 8);
  if (v28)
  {
    sub_100004A34(v28);
  }

  _Unwind_Resume(a1);
}

void sub_100548F44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *__p, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, const void *a36, __int16 a37, char a38, char a39)
{
  if (a37 == 1)
  {
    sub_100010250(&a36);
  }

  sub_100004A34(a10);
  _Unwind_Resume(a1);
}

void sub_100549248(uint64_t a1@<X0>, const void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a1;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  theArray = 0;
  v44 = 0;
  sub_10053F344(a2, a1, a3, 0, &theArray);
  if (v44)
  {
    v5 = **(v4 + 40);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = PersonalityInfo::logPrefix(**(v4 + 24));
      v7 = (*(*v4 + 40))(v4);
      Count = CFArrayGetCount(theArray);
      *buf = 136316162;
      *&buf[4] = v6;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      *&buf[22] = 2080;
      *&buf[24] = v7;
      LOWORD(v47[0]) = 2080;
      *(v47 + 2) = ", ";
      WORD1(v47[1]) = 2048;
      *(&v47[1] + 4) = Count;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sNumber of paired devices: %lu", buf, 0x34u);
    }

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    obj = theArray;
    v9 = [(__CFArray *)theArray countByEnumeratingWithState:&v39 objects:v56 count:16];
    if (v9)
    {
      v10 = @"eid";
      v32 = *v40;
      v11 = @"meid";
      v12 = @"iccid";
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v40 != v32)
          {
            objc_enumerationMutation(obj);
          }

          v13 = v4;
          v14 = *(*(&v39 + 1) + 8 * i);
          v15 = v10;
          v16 = [v14 objectForKey:v10];
          v17 = [v14 objectForKey:@"imei"];
          v18 = v11;
          v19 = [v14 objectForKey:v11];
          v20 = v12;
          v21 = [v14 objectForKey:v12];
          cf = [v14 objectForKey:@"activation-status"];
          v22 = [v14 objectForKey:@"alt-smdp-fqdn"];
          *v54 = 0u;
          v55 = 0u;
          *v52 = 0u;
          v53 = 0u;
          *v50 = 0u;
          v51 = 0u;
          *v48 = 0u;
          v49 = 0u;
          memset(v47, 0, sizeof(v47));
          memset(buf, 0, sizeof(buf));
          v23 = v16;
          v10 = v15;
          sub_10053E1F4(&__p, v23, v13, v15, 0);
          sub_10016A270(buf, &__p);
          if (v38 == 1 && SHIBYTE(v37) < 0)
          {
            operator delete(__p.n128_u64[0]);
          }

          v4 = v13;
          sub_10053E1F4(&__p, v17, v13, @"imei", 0);
          sub_10016A270(v47, &__p);
          if (v38 == 1 && SHIBYTE(v37) < 0)
          {
            operator delete(__p.n128_u64[0]);
          }

          v24 = v19;
          v11 = v18;
          sub_10053E1F4(&__p, v24, v13, v18, 0);
          sub_10016A270(v48, &__p);
          if (v38 == 1 && SHIBYTE(v37) < 0)
          {
            operator delete(__p.n128_u64[0]);
          }

          v25 = v21;
          v12 = v20;
          sub_10053E1F4(&__p, v25, v13, v20, 0);
          sub_10016A270(v50, &__p);
          if (v38 == 1 && SHIBYTE(v37) < 0)
          {
            operator delete(__p.n128_u64[0]);
          }

          if (BYTE8(v51) == 1)
          {
            v26 = SBYTE7(v51);
            if ((SBYTE7(v51) & 0x8000000000000000) == 0)
            {
              if (SBYTE7(v51) > 0x12)
              {
                goto LABEL_27;
              }

LABEL_26:
              std::string::append(v50, 19 - v26, 102);
              goto LABEL_27;
            }

            v26 = v50[1];
            if (v50[1] < 0x13)
            {
              goto LABEL_26;
            }
          }

LABEL_27:
          sub_10053E1F4(&__p, cf, v13, @"activation-status", 0);
          sub_10016A270(v52, &__p);
          if (v38 == 1 && SHIBYTE(v37) < 0)
          {
            operator delete(__p.n128_u64[0]);
          }

          sub_10053E1F4(&__p, v22, v13, @"alt-smdp-fqdn", 0);
          v27 = sub_10016A270(v54, &__p);
          if (v38 == 1 && SHIBYTE(v37) < 0)
          {
            operator delete(__p.n128_u64[0]);
          }

          v28 = a4;
          if ((*(a4 + 24) & 1) == 0)
          {
            __p = 0uLL;
            v37 = 0;
            sub_100556AF0(a4, &__p);
            p_p = &__p;
            sub_100556BD0(&p_p);
            v28 = a4;
          }

          v29 = v28[1];
          if (v29 >= v28[2])
          {
            v30 = sub_100556C54(v28, buf, v27);
          }

          else
          {
            sub_100556D84(v28[1], buf);
            v30 = v29 + 192;
          }

          *(a4 + 8) = v30;
          if (BYTE8(v55) == 1 && SBYTE7(v55) < 0)
          {
            operator delete(v54[0]);
          }

          if (BYTE8(v53) == 1 && SBYTE7(v53) < 0)
          {
            operator delete(v52[0]);
          }

          if (BYTE8(v51) == 1 && SBYTE7(v51) < 0)
          {
            operator delete(v50[0]);
          }

          if (BYTE8(v49) == 1 && SBYTE7(v49) < 0)
          {
            operator delete(v48[0]);
          }

          if (LOBYTE(v47[3]) == 1 && SHIBYTE(v47[2]) < 0)
          {
            operator delete(v47[0]);
          }

          if (buf[24] == 1 && buf[23] < 0)
          {
            operator delete(*buf);
          }
        }

        v9 = [(__CFArray *)obj countByEnumeratingWithState:&v39 objects:v56 count:16];
      }

      while (v9);
    }
  }

  if (v44 == 1)
  {
    sub_100010250(&theArray);
  }
}

void sub_100549800(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, const void *a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33)
{
  if (a29 == 1)
  {
    sub_100010250(&a28);
  }

  if (*(a13 + 24) == 1)
  {
    a33 = a13;
    sub_100556BD0(&a33);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005498DC(uint64_t a1@<X0>, const void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = 0u;
  *(a4 + 16) = 0u;
  theArray = 0;
  v45 = 0;
  sub_10053F344(a2, a1, a3, 0, &theArray);
  if (v45)
  {
    v4 = **(a1 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = PersonalityInfo::logPrefix(**(a1 + 24));
      v6 = (*(*a1 + 40))(a1);
      Count = CFArrayGetCount(theArray);
      *buf = 136316162;
      *&buf[4] = v5;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      *&buf[22] = 2080;
      *&buf[24] = v6;
      LOWORD(v48[0]) = 2080;
      *(v48 + 2) = ", ";
      WORD5(v48[0]) = 2048;
      *(v48 + 12) = Count;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sNumber of subscription states: %lu", buf, 0x34u);
    }

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    obj = theArray;
    v8 = [(__CFArray *)theArray countByEnumeratingWithState:&v40 objects:v53 count:16];
    if (v8)
    {
      v31 = *v41;
      v9 = @"imei";
      v10 = @"iccid";
      do
      {
        v11 = 0;
        v32 = v8;
        do
        {
          if (*v41 != v31)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v40 + 1) + 8 * v11);
          v13 = [v12 objectForKey:@"eid"];
          v14 = v9;
          v15 = [v12 objectForKey:v9];
          v16 = v10;
          v17 = [v12 objectForKey:v10];
          v18 = [v12 objectForKey:@"activation-status"];
          v19 = [v12 objectForKey:@"associated-subscription"];
          v20 = [v12 objectForKey:@"activated-by"];
          cf = [v12 objectForKey:@"alt-smdp-fqdn"];
          v33 = [v12 objectForKey:@"manage-account-url"];
          v21 = [v12 objectForKey:@"manage-account-url-post-data"];
          v52 = 0;
          memset(v51, 0, sizeof(v51));
          v49 = 0u;
          v50 = 0u;
          memset(v48, 0, sizeof(v48));
          memset(buf, 0, sizeof(buf));
          sub_10053E1F4(&__p, v13, a1, @"eid", 0);
          sub_10016A270(buf, &__p);
          if (v39 == 1 && SHIBYTE(v38) < 0)
          {
            operator delete(__p.n128_u64[0]);
          }

          v22 = v15;
          v9 = v14;
          sub_10053E1F4(&__p, v22, a1, v14, 0);
          sub_10016A270(v48, &__p);
          if (v39 == 1 && SHIBYTE(v38) < 0)
          {
            operator delete(__p.n128_u64[0]);
          }

          v23 = v17;
          v10 = v16;
          sub_10053E1F4(&__p, v23, a1, v16, 0);
          sub_10016A270(&v49, &__p);
          if (v39 == 1 && SHIBYTE(v38) < 0)
          {
            operator delete(__p.n128_u64[0]);
          }

          if (BYTE8(v50) == 1)
          {
            v24 = SBYTE7(v50);
            if ((SBYTE7(v50) & 0x8000000000000000) == 0)
            {
              if (SBYTE7(v50) > 0x12)
              {
                goto LABEL_24;
              }

LABEL_23:
              std::string::append(&v49, 19 - v24, 102);
              goto LABEL_24;
            }

            v24 = *(&v49 + 1);
            if (*(&v49 + 1) < 0x13uLL)
            {
              goto LABEL_23;
            }
          }

LABEL_24:
          sub_10053E1F4(&__p, v18, a1, @"activation-status", 0);
          sub_10016A270(v51, &__p);
          if (v39 == 1 && SHIBYTE(v38) < 0)
          {
            operator delete(__p.n128_u64[0]);
          }

          v25 = sub_10053E54C(a1, v19, @"associated-subscription", 0);
          if (BYTE4(v51[2]) == BYTE4(v25))
          {
            if (BYTE4(v51[2]))
            {
              LODWORD(v51[2]) = v25;
            }
          }

          else if (BYTE4(v51[2]))
          {
            BYTE4(v51[2]) = 0;
          }

          else
          {
            LODWORD(v51[2]) = v25;
            BYTE4(v51[2]) = 1;
          }

          sub_10053E1F4(&__p, v20, a1, @"activated-by", 0);
          sub_10016A270(&v51[2] + 8, &__p);
          if (v39 == 1 && SHIBYTE(v38) < 0)
          {
            operator delete(__p.n128_u64[0]);
          }

          sub_10053E1F4(&__p, cf, a1, @"alt-smdp-fqdn", 0);
          sub_10016A270(&v51[4] + 8, &__p);
          if (v39 == 1 && SHIBYTE(v38) < 0)
          {
            operator delete(__p.n128_u64[0]);
          }

          sub_10053E1F4(&__p, v33, a1, @"manage-account-url", 0);
          sub_10016A270(&v51[6] + 8, &__p);
          if (v39 == 1 && SHIBYTE(v38) < 0)
          {
            operator delete(__p.n128_u64[0]);
          }

          sub_10053E1F4(&__p, v21, a1, @"manage-account-url-post-data", 0);
          v26 = sub_10016A270(&v51[8] + 8, &__p);
          if (v39 == 1 && SHIBYTE(v38) < 0)
          {
            operator delete(__p.n128_u64[0]);
          }

          v27 = a4;
          if ((*(a4 + 24) & 1) == 0)
          {
            __p = 0uLL;
            v38 = 0;
            sub_100557250(a4, &__p);
            p_p = &__p;
            sub_100557330(&p_p);
            v27 = a4;
          }

          v28 = v27[1];
          if (v28 >= v27[2])
          {
            v29 = sub_1005573B4(v27, buf, v26);
          }

          else
          {
            sub_1005574FC(v27[1], buf);
            v29 = v28 + 264;
          }

          *(a4 + 8) = v29;
          sub_100557938(buf);
          v11 = v11 + 1;
        }

        while (v32 != v11);
        v8 = [(__CFArray *)obj countByEnumeratingWithState:&v40 objects:v53 count:16];
      }

      while (v8);
    }
  }

  if (v45 == 1)
  {
    sub_100010250(&theArray);
  }
}

void sub_100549F00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, const void *a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35)
{
  if (a31 == 1)
  {
    sub_100010250(&a30);
  }

  if (*(a15 + 24) == 1)
  {
    a35 = a15;
    sub_100557330(&a35);
  }

  _Unwind_Resume(exception_object);
}

void sub_100549FFC(uint64_t a1@<X0>, const void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = 0u;
  *(a4 + 16) = 0u;
  theArray = 0;
  v54 = 0;
  sub_10053F344(a2, a1, a3, 0, &theArray);
  if (v54)
  {
    v43 = a1;
    v5 = **(a1 + 40);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = PersonalityInfo::logPrefix(*v43[3]);
      v7 = ((*v43)[5])(v43);
      Count = CFArrayGetCount(theArray);
      *buf = 136316162;
      *&buf[4] = v6;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      *&buf[22] = 2080;
      *&buf[24] = v7;
      LOWORD(v57[0]) = 2080;
      *(v57 + 2) = ", ";
      WORD1(v57[1]) = 2048;
      *(&v57[1] + 4) = Count;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sNumber of available add on data plans: %lu", buf, 0x34u);
    }

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    obj = theArray;
    v9 = [(__CFArray *)theArray countByEnumeratingWithState:&v49 objects:v64 count:16];
    if (v9)
    {
      v10 = @"plan-cost";
      v38 = *v50;
      v11 = @"plan-currency";
      v12 = @"plan-data-amount";
      v13 = @"plan-data-measure-unit";
      do
      {
        v45 = 0;
        v39 = v9;
        do
        {
          if (*v50 != v38)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v49 + 1) + 8 * v45);
          v15 = [v14 objectForKey:@"plan-carrier"];
          v16 = v10;
          v17 = [v14 objectForKey:v10];
          v18 = v11;
          v19 = [v14 objectForKey:v11];
          v20 = v12;
          v21 = [v14 objectForKey:v12];
          v22 = v13;
          v23 = [v14 objectForKey:v13];
          cf = [v14 objectForKey:@"plan-id"];
          v41 = [v14 objectForKey:@"plan-name"];
          v40 = [v14 objectForKey:@"plan-type"];
          v24 = [v14 objectForKey:@"plan-purchase-type"];
          v62 = 0u;
          v63 = 0u;
          v60 = 0u;
          *v61 = 0u;
          *v58 = 0u;
          v59 = 0u;
          memset(v57, 0, sizeof(v57));
          memset(buf, 0, sizeof(buf));
          sub_10053E1F4(&__p, v15, v43, @"plan-carrier", 0);
          sub_10016A270(&v58[1], &__p);
          if (v48 == 1 && SHIBYTE(v47) < 0)
          {
            operator delete(__p.n128_u64[0]);
          }

          v25 = v17;
          v10 = v16;
          v26 = sub_10053E54C(v43, v25, v16, 0);
          DWORD2(v60) = v26;
          BYTE12(v60) = BYTE4(v26);
          v27 = v19;
          v11 = v18;
          sub_10053E1F4(&__p, v27, v43, v18, 0);
          sub_10016A270(v61, &__p);
          if (v48 == 1 && SHIBYTE(v47) < 0)
          {
            operator delete(__p.n128_u64[0]);
          }

          v28 = v21;
          v12 = v20;
          v29 = sub_10053E54C(v43, v28, v20, 0);
          LODWORD(v63) = v29;
          BYTE4(v63) = BYTE4(v29);
          v30 = v23;
          v13 = v22;
          v31 = sub_10053E54C(v43, v30, v22, 0);
          if (BYTE9(v63) == BYTE4(v31))
          {
            if (BYTE9(v63))
            {
              BYTE8(v63) = v31;
            }
          }

          else if (BYTE9(v63))
          {
            BYTE9(v63) = 0;
          }

          else
          {
            BYTE8(v63) = v31;
            BYTE9(v63) = 1;
          }

          sub_10053E1F4(&__p, cf, v43, @"plan-id", 0);
          sub_10016A270(buf, &__p);
          if (v48 == 1 && SHIBYTE(v47) < 0)
          {
            operator delete(__p.n128_u64[0]);
          }

          sub_10053E1F4(&__p, v41, v43, @"plan-name", 0);
          sub_10016A270(v57, &__p);
          if (v48 == 1 && SHIBYTE(v47) < 0)
          {
            operator delete(__p.n128_u64[0]);
          }

          v32 = sub_10053E54C(v43, v40, @"plan-type", 0);
          if (BYTE11(v63) == BYTE4(v32))
          {
            if (BYTE11(v63))
            {
              BYTE10(v63) = v32;
            }
          }

          else if (BYTE11(v63))
          {
            BYTE11(v63) = 0;
          }

          else
          {
            BYTE10(v63) = v32;
            BYTE11(v63) = 1;
          }

          v33 = sub_10053E54C(v43, v24, @"plan-purchase-type", 0);
          if (BYTE1(v58[0]) == BYTE4(v33))
          {
            if (BYTE1(v58[0]))
            {
              LOBYTE(v58[0]) = v33;
            }
          }

          else if (BYTE1(v58[0]))
          {
            BYTE1(v58[0]) = 0;
          }

          else
          {
            LOBYTE(v58[0]) = v33;
            BYTE1(v58[0]) = 1;
          }

          v34 = a4;
          if ((*(a4 + 24) & 1) == 0)
          {
            __p = 0uLL;
            v47 = 0;
            sub_100557AE0(a4, &__p);
            p_p = &__p;
            sub_100557C9C(&p_p);
            v34 = a4;
          }

          v35 = v34[1];
          if (v35 >= v34[2])
          {
            v36 = sub_100557CF0(v34, buf);
          }

          else
          {
            sub_100557E20(v34[1], buf);
            v36 = v35 + 160;
          }

          *(a4 + 8) = v36;
          if (BYTE8(v62) == 1 && SBYTE7(v62) < 0)
          {
            operator delete(v61[0]);
          }

          if (v60 == 1 && SHIBYTE(v59) < 0)
          {
            operator delete(v58[1]);
          }

          if (LOBYTE(v57[3]) == 1 && SHIBYTE(v57[2]) < 0)
          {
            operator delete(v57[0]);
          }

          if (buf[24] == 1 && buf[23] < 0)
          {
            operator delete(*buf);
          }

          v45 = v45 + 1;
        }

        while (v39 != v45);
        v9 = [(__CFArray *)obj countByEnumeratingWithState:&v49 objects:v64 count:16];
      }

      while (v9);
    }
  }

  if (v54 == 1)
  {
    sub_100010250(&theArray);
  }
}

void sub_10054A618(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, const void *a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37)
{
  if (a33 == 1)
  {
    sub_100010250(&a32);
  }

  if (*(a17 + 24) == 1)
  {
    a37 = a17;
    sub_100557C9C(&a37);
  }

  _Unwind_Resume(exception_object);
}

void sub_10054A980(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26)
{
  if (a19 == 1 && a18 < 0)
  {
    operator delete(__p);
  }

  if (a26 == 1 && a25 < 0)
  {
    operator delete(a20);
  }

  if (*(v27 - 56) == 1 && *(v27 - 57) < 0)
  {
    operator delete(*(v27 - 80));
  }

  sub_100004A34(v26);
  _Unwind_Resume(a1);
}

void sub_10054AB40(_Unwind_Exception *a1)
{
  operator delete(v2);
  sub_100004A34(v1);
  _Unwind_Resume(a1);
}

void sub_10054AC9C(_Unwind_Exception *a1)
{
  operator delete(v2);
  sub_100004A34(v1);
  _Unwind_Resume(a1);
}

BOOL sub_10054ACC0(uint64_t a1, int a2)
{
  if (a2 != 6013)
  {
    return a2 == 6000;
  }

  v3 = **(a1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = PersonalityInfo::logPrefix(**(a1 + 24));
    v5 = (*(*a1 + 40))(a1);
    v7 = 136315906;
    v8 = v4;
    v9 = 2080;
    v10 = " ";
    v11 = 2080;
    v12 = v5;
    v13 = 2080;
    v14 = ", ";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%stransfer SIM response redirecting to websheet", &v7, 0x2Au);
  }

  return 1;
}

void sub_10054BC88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, char a35)
{
  if (*(v35 + 8))
  {
    sub_100004A34(*(v35 + 8));
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10054BD4C(uint64_t a1, int a2)
{
  if (a2 != 6013)
  {
    return a2 == 6000;
  }

  v3 = **(a1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = PersonalityInfo::logPrefix(**(a1 + 24));
    v5 = (*(*a1 + 40))(a1);
    v7 = 136315906;
    v8 = v4;
    v9 = 2080;
    v10 = " ";
    v11 = 2080;
    v12 = v5;
    v13 = 2080;
    v14 = ", ";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%stransfer authorization response redirecting to webservice", &v7, 0x2Au);
  }

  return 1;
}

void sub_10054DD4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, char a37)
{
  v38 = *(a10 + 8);
  if (v38)
  {
    sub_100004A34(v38);
  }

  _Unwind_Resume(exception_object);
}

void sub_10054E4A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, __int16 a11, char a12, char a13, int a14, __int16 a15, char a16, char a17, int a18, const void *a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, const void *a33, __int16 a34, char a35, char a36, int a37, const void *a38, __int16 a39, char a40, char a41, void *__p, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (a47 < 0)
  {
    operator delete(__p);
  }

  *(v48 - 144) = &a28;
  sub_1003EA960((v48 - 144));
  if (a11 == 1)
  {
    sub_100010250(&a10);
  }

  if (a20 == 1)
  {
    sub_100010250(&a19);
  }

  if (a34 == 1)
  {
    sub_100010250(&a33);
  }

  if (a39 == 1)
  {
    sub_10001021C(&a38);
  }

  sub_100004A34(v47);
  _Unwind_Resume(a1);
}

BOOL sub_10054E604(uint64_t a1, id *a2, unint64_t *a3)
{
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v3 = *a2;
  v4 = [*a2 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v4)
  {
    v5 = *v27;
    do
    {
      v6 = 0;
      do
      {
        if (*v27 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v26 + 1) + 8 * v6);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = [v7 objectForKey:@"plmn"];
          if (v8)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v9 = [v8 objectForKey:@"mcc"];
              if (v9)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v10 = [v8 objectForKey:@"mnc"];
                  if (v10)
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v11 = [v7 objectForKey:@"rat-mask"];
                      if (v11)
                      {
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v12 = [v7 objectForKey:@"priority"];
                          if (v12)
                          {
                            objc_opt_class();
                            if (objc_opt_isKindOfClass())
                            {
                              memset(&__str, 0, sizeof(__str));
                              sub_10000501C(&__str, [v9 cStringUsingEncoding:4]);
                              memset(&__p, 0, sizeof(__p));
                              sub_10000501C(&__p, [v10 cStringUsingEncoding:4]);
                              v13 = [v11 unsignedIntValue];
                              v14 = [v12 unsignedIntValue];
                              v23 = 0;
                              v22 = 0u;
                              memset(v21, 0, sizeof(v21));
                              std::string::operator=(v21, &__str);
                              sub_1001696A4(&v21[24], &__p);
                              v20 = 0;
                              v18 = 0u;
                              v19 = 0u;
                              memset(v17, 0, sizeof(v17));
                              std::string::operator=(v17, v21);
                              sub_10012BF3C(&v17[24], &v21[24]);
                              *(&v19 + 1) = __PAIR64__(v14, v13);
                              LOBYTE(v20) = 1;
                              sub_100558364(a3, v17);
                              if (v19 == 1 && SHIBYTE(v18) < 0)
                              {
                                operator delete(*&v17[24]);
                              }

                              if ((v17[23] & 0x80000000) != 0)
                              {
                                operator delete(*v17);
                              }

                              if (v23 == 1 && SHIBYTE(v22) < 0)
                              {
                                operator delete(*&v21[24]);
                              }

                              if ((v21[23] & 0x80000000) != 0)
                              {
                                operator delete(*v21);
                              }

                              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                              {
                                operator delete(__p.__r_.__value_.__l.__data_);
                              }

                              if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
                              {
                                operator delete(__str.__r_.__value_.__l.__data_);
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v4);
  }

  return *a3 != a3[1];
}

void sub_10054E96C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a34 < 0)
  {
    operator delete(__p);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10054E9CC(uint64_t a1, std::string **a2)
{
  if (*(a1 + 24) == 1)
  {
    if (a1 != a2)
    {
      sub_1003EC314(a1, *a2, a2[1], 0x8E38E38E38E38E39 * ((a2[1] - *a2) >> 3));
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    sub_1003EA67C(a1, *a2, a2[1], 0x8E38E38E38E38E39 * ((a2[1] - *a2) >> 3));
    *(a1 + 24) = 1;
  }

  return a1;
}

void sub_10054F0BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, const void *a30, __int16 a31, char a32, char a33, int a34, __int16 a35, char a36, char a37)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a31 == 1)
  {
    sub_100010250(&a30);
  }

  sub_100004A34(v37);
  _Unwind_Resume(a1);
}

uint64_t sub_10054F178(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == 1)
  {
    sub_1005587E0(a1);
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a1 + 24) = 1;
  }

  return a1;
}

void sub_10055099C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (LOBYTE(STACK[0x4D0]) == 1)
  {
    sub_100010250(&STACK[0x4C8]);
  }

  if (LOBYTE(STACK[0x2B8]) == 1)
  {
    sub_100010250(&STACK[0x2B0]);
  }

  v13 = *(a12 + 8);
  if (v13)
  {
    sub_100004A34(v13);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100550BFC(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_100558F08(a1, a2);
  }

  else
  {
    sub_100558E58(a1, a2);
    result = v3 + 48;
  }

  *(a1 + 8) = result;
  return result;
}

void *sub_100550C3C(void *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_100559094(a1, a2);
  }

  else
  {
    *v3 = *a2;
    v3[1] = 0;
    v3[2] = 0;
    v3[3] = 0;
    *(v3 + 1) = *(a2 + 8);
    v3[3] = *(a2 + 24);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    result = v3 + 4;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_100550CA0(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_1005593DC(a1, a2);
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v4;
    *(a2 + 8) = 0uLL;
    *a2 = 0;
    *(v3 + 24) = 0;
    *(v3 + 32) = 0;
    *(v3 + 40) = 0;
    *(v3 + 24) = *(a2 + 24);
    *(v3 + 40) = *(a2 + 5);
    *(a2 + 24) = 0uLL;
    *(a2 + 5) = 0;
    result = v3 + 48;
  }

  *(a1 + 8) = result;
  return result;
}

void sub_1005514B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::__shared_weak_count *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, const void *a57, __int16 a58)
{
  if (a58 == 1)
  {
    sub_100010250(&a57);
  }

  sub_100004A34(a9);
  _Unwind_Resume(a1);
}

void sub_1005515DC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, char a32)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a32 == 1 && a31 < 0)
  {
    operator delete(a26);
  }

  JUMPOUT(0x10055155CLL);
}

uint64_t sub_100551610(unint64_t *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_1005595A4(a1, a2);
  }

  else
  {
    sub_100559534(a1, a2);
    result = v3 + 48;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_100551650(unint64_t *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_10055994C(a1, a2);
  }

  else
  {
    sub_10055985C(a1, a2);
    result = v3 + 72;
  }

  a1[1] = result;
  return result;
}

void sub_100551AEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, const void *a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a31 == 1)
  {
    sub_100010250(&a30);
  }

  sub_100004A34(v39);
  _Unwind_Resume(a1);
}

void sub_1005523A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::__shared_weak_count *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, void *__p, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, const void *a55, __int16 a56)
{
  if (a56 == 1)
  {
    sub_100010250(&a55);
  }

  sub_100004A34(a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1005524EC(unint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_10055A0C8(a1, a2);
  }

  else
  {
    sub_100559FC4(a1, a2);
    result = v3 + 80;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_1005525EC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 40) objectEnumerator];
  if (v3 && (v4 = v3, v13 = 0u, v14 = 0u, v11 = 0u, v12 = 0u, (v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16]) != 0))
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if ([*(*(&v11 + 1) + 8 * i) bootstrapDataAllowed])
        {
          v9 = 1;
          goto LABEL_13;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      v9 = 0;
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v9 = 0;
  }

LABEL_13:
  objc_autoreleasePoolPop(v2);
  return v9;
}

unint64_t sub_100552708(uint64_t a1)
{
  result = sub_1007A3C94();
  *(a1 + 80) = result;
  return result;
}

unint64_t sub_100552730(uint64_t a1)
{
  result = sub_1007A3C94();
  *(a1 + 88) = result;
  return result;
}

uint64_t sub_100553C14(uint64_t a1, const void **a2, __int128 *a3)
{
  sub_100010024(a1, a2);
  if (*(a3 + 23) < 0)
  {
    sub_100005F2C((a1 + 8), *a3, *(a3 + 1));
  }

  else
  {
    v5 = *a3;
    *(a1 + 24) = *(a3 + 2);
    *(a1 + 8) = v5;
  }

  return a1;
}

char *sub_100553C7C(uint64_t a1, char *__dst, _BYTE *__src, char *a4, int64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if ((v9 - v10) >= a5)
  {
    v16 = v10 - __dst;
    if ((v10 - __dst) >= a5)
    {
      v21 = &__dst[a5];
      v22 = (v10 - a5);
      v23 = *(a1 + 8);
      if (v10 >= a5)
      {
        do
        {
          v24 = *v22++;
          *v23++ = v24;
        }

        while (v22 != v10);
      }

      *(a1 + 8) = v23;
      if (v10 != v21)
      {
        memmove(&__dst[a5], __dst, v10 - v21);
      }

      v25 = v5;
      v26 = __src;
      v27 = a5;
    }

    else
    {
      v17 = &__src[v16];
      if (&__src[v16] == a4)
      {
        v18 = *(a1 + 8);
        v19 = v18;
      }

      else
      {
        v18 = (&a4[__dst] - __src);
        v19 = *(a1 + 8);
        do
        {
          v20 = *v17++;
          *v19++ = v20;
        }

        while (v17 != a4);
      }

      *(a1 + 8) = v18;
      if (v16 < 1)
      {
        return v5;
      }

      v32 = &__dst[a5];
      v33 = &v18[-a5];
      v34 = v18;
      if (&v18[-a5] < v10)
      {
        do
        {
          v35 = *v33++;
          *v34++ = v35;
        }

        while (v33 != v10);
      }

      *(a1 + 8) = v34;
      if (v19 != v32)
      {
        memmove(&__dst[a5], __dst, v18 - v32);
      }

      v25 = v5;
      v26 = __src;
      v27 = v10 - v5;
    }

    memmove(v25, v26, v27);
    return v5;
  }

  v11 = *a1;
  v12 = v10 - *a1 + a5;
  if (v12 < 0)
  {
    sub_1000CE3D4();
  }

  v13 = (__dst - v11);
  v14 = v9 - v11;
  if (2 * v14 > v12)
  {
    v12 = 2 * v14;
  }

  if (v14 >= 0x3FFFFFFFFFFFFFFFLL)
  {
    v15 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v15 = v12;
  }

  if (v15)
  {
    operator new();
  }

  v28 = (__dst - v11);
  memcpy(v13, __src, a5);
  v29 = &v13[a5];
  v30 = v10 - v5;
  memcpy(v29, v5, v10 - v5);
  *(a1 + 8) = v5;
  v31 = &v13[v11 - v5];
  memcpy(v31, v11, v28);
  *a1 = v31;
  *(a1 + 8) = &v29[v30];
  *(a1 + 16) = 0;
  if (v11)
  {
    operator delete(v11);
  }

  return v13;
}

uint64_t sub_100553EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = a4;
  v13 = 0;
  v14 = a4;
  v12[0] = a1;
  v12[1] = &v14;
  v12[2] = &v15;
  if (a2 == a3)
  {
    LOBYTE(v13) = 1;
  }

  else
  {
    v5 = a2;
    v6 = 0;
    do
    {
      v7 = a2 + v6;
      v8 = a4 + v6;
      v9 = *(a2 + v6);
      *(v8 + 16) = *(a2 + v6 + 16);
      *v8 = v9;
      *(a4 + v6 + 24) = 0;
      *(v8 + 48) = 0;
      if (*(a2 + v6 + 48) == 1)
      {
        *(a4 + v6 + 24) = 0;
        *(a4 + v6 + 32) = 0;
        *(a4 + v6 + 40) = 0;
        *(v8 + 24) = *(v7 + 24);
        *(v8 + 40) = *(v7 + 40);
        *(v7 + 24) = 0;
        *(v7 + 32) = 0;
        *(v7 + 40) = 0;
        *(v8 + 48) = 1;
      }

      *(v8 + 56) = *(v7 + 56);
      v6 += 64;
    }

    while (v7 + 64 != a3);
    v15 = a4 + v6;
    LOBYTE(v13) = 1;
    while (v5 != a3)
    {
      if (*(v5 + 48) == 1)
      {
        v10 = *(v5 + 24);
        if (v10)
        {
          *(v5 + 32) = v10;
          operator delete(v10);
        }
      }

      v5 += 64;
    }
  }

  return sub_100553FB0(v12);
}

uint64_t sub_100553FB0(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_100172884(a1);
  }

  return a1;
}

uint64_t sub_100553FE8(uint64_t *a1, __int128 *a2)
{
  v2 = (a1[1] - *a1) >> 6;
  v3 = v2 + 1;
  if ((v2 + 1) >> 58)
  {
    sub_1000CE3D4();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 5 > v3)
  {
    v3 = v6 >> 5;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFC0)
  {
    v7 = 0x3FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v19 = a1;
  if (v7)
  {
    sub_100172988(a1, v7);
  }

  v8 = v2 << 6;
  v16 = 0;
  v17 = v8;
  v18 = v8;
  v9 = *a2;
  *(v8 + 16) = *(a2 + 16);
  *v8 = v9;
  sub_10017272C((v8 + 24), a2 + 24);
  *(v8 + 56) = *(a2 + 28);
  *&v18 = v18 + 64;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  sub_100553EA4(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_1001E9CE4(&v16);
  return v15;
}

void sub_1005540FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1001E9CE4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100554110(uint64_t a1)
{
  if (*(a1 + 56) == 1 && *(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 24) == 1 && *(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_10055416C(uint64_t result, uint64_t a2)
{
  *result = 0;
  *(result + 32) = 0;
  if (*(a2 + 32) == 1)
  {
    *result = *a2;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 8) = *(a2 + 8);
    *(result + 24) = *(a2 + 24);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(result + 32) = 1;
  }

  *(result + 40) = *(a2 + 40);
  *(result + 48) = 1;
  return result;
}

__n128 sub_1005541C0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32) == *(a2 + 32))
  {
    if (*(a1 + 32))
    {
      *a1 = *a2;
      sub_100071A6C(a1 + 8);
      result = *(a2 + 8);
      *(a1 + 8) = result;
      *(a1 + 24) = *(a2 + 24);
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
    }
  }

  else if (*(a1 + 32))
  {
    v5 = (a1 + 8);
    sub_1000087B4(&v5);
    *(a1 + 32) = 0;
  }

  else
  {
    *a1 = *a2;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    result = *(a2 + 8);
    *(a1 + 8) = result;
    *(a1 + 24) = *(a2 + 24);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a1 + 32) = 1;
  }

  return result;
}

void sub_100554274(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = v1;
    if (v3 != v1)
    {
      do
      {
        v3 = sub_100221F4C(v3 - 256);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t sub_1005542D4(void *a1, __int128 *a2)
{
  v2 = (a1[1] - *a1) >> 8;
  v3 = v2 + 1;
  if ((v2 + 1) >> 56)
  {
    sub_1000CE3D4();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 7 > v3)
  {
    v3 = v6 >> 7;
  }

  if (v6 >= 0x7FFFFFFFFFFFFF00)
  {
    v7 = 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v17 = a1;
  if (v7)
  {
    sub_100221D00(a1, v7);
  }

  v14 = 0;
  v15 = v2 << 8;
  sub_100221DCC((v2 << 8), a2);
  v16 = ((v2 << 8) + 256);
  v8 = a1[1];
  v9 = (v2 << 8) + *a1 - v8;
  sub_1005543E4(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_1005545E0(&v14);
  return v13;
}

void sub_1005543D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1005545E0(va);
  _Unwind_Resume(a1);
}

void sub_1005543E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a4 + 128;
    v7 = a2;
    do
    {
      *(v6 - 128) = 0;
      *(v6 - 104) = 0;
      if (*(v7 + 24) == 1)
      {
        v8 = *v7;
        *(v6 - 112) = *(v7 + 16);
        *(v6 - 128) = v8;
        *(v7 + 8) = 0;
        *(v7 + 16) = 0;
        *v7 = 0;
        *(v6 - 104) = 1;
      }

      *(v6 - 96) = 0;
      *(v6 - 72) = 0;
      if (*(v7 + 56) == 1)
      {
        v9 = *(v7 + 32);
        *(v6 - 80) = *(v7 + 48);
        *(v6 - 96) = v9;
        *(v7 + 40) = 0;
        *(v7 + 48) = 0;
        *(v7 + 32) = 0;
        *(v6 - 72) = 1;
      }

      *(v6 - 64) = 0;
      *(v6 - 40) = 0;
      if (*(v7 + 88) == 1)
      {
        v10 = *(v7 + 64);
        *(v6 - 48) = *(v7 + 80);
        *(v6 - 64) = v10;
        *(v7 + 72) = 0;
        *(v7 + 80) = 0;
        *(v7 + 64) = 0;
        *(v6 - 40) = 1;
      }

      *(v6 - 32) = 0;
      *(v6 - 8) = 0;
      if (*(v7 + 120) == 1)
      {
        v11 = *(v7 + 96);
        *(v6 - 16) = *(v7 + 112);
        *(v6 - 32) = v11;
        *(v7 + 104) = 0;
        *(v7 + 112) = 0;
        *(v7 + 96) = 0;
        *(v6 - 8) = 1;
      }

      *v6 = 0;
      *(v6 + 24) = 0;
      if (*(v7 + 152) == 1)
      {
        v12 = *(v7 + 128);
        *(v6 + 16) = *(v7 + 144);
        *v6 = v12;
        *(v7 + 136) = 0;
        *(v7 + 144) = 0;
        *(v7 + 128) = 0;
        *(v6 + 24) = 1;
      }

      *(v6 + 32) = 0;
      *(v6 + 56) = 0;
      if (*(v7 + 184) == 1)
      {
        v13 = *(v7 + 160);
        *(v6 + 48) = *(v7 + 176);
        *(v6 + 32) = v13;
        *(v7 + 168) = 0;
        *(v7 + 176) = 0;
        *(v7 + 160) = 0;
        *(v6 + 56) = 1;
      }

      *(v6 + 64) = 0;
      *(v6 + 88) = 0;
      if (*(v7 + 216) == 1)
      {
        v14 = *(v7 + 192);
        *(v6 + 80) = *(v7 + 208);
        *(v6 + 64) = v14;
        *(v7 + 200) = 0;
        *(v7 + 208) = 0;
        *(v7 + 192) = 0;
        *(v6 + 88) = 1;
      }

      *(v6 + 96) = 0;
      *(v6 + 120) = 0;
      if (*(v7 + 248) == 1)
      {
        v15 = *(v7 + 224);
        *(v6 + 112) = *(v7 + 240);
        *(v6 + 96) = v15;
        *(v7 + 232) = 0;
        *(v7 + 240) = 0;
        *(v7 + 224) = 0;
        *(v6 + 120) = 1;
      }

      v7 += 256;
      v6 += 256;
    }

    while (v7 != a3);
    while (v5 != a3)
    {
      v5 = sub_100221F4C(v5) + 256;
    }
  }
}

uint64_t sub_1005545E0(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 256;
    sub_100221F4C(i - 256);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_100554630(uint64_t a1)
{
  if (*(a1 + 88) == 1)
  {
    if (*(a1 + 80) == 1 && *(a1 + 79) < 0)
    {
      operator delete(*(a1 + 56));
    }

    if (*(a1 + 55) < 0)
    {
      operator delete(*(a1 + 32));
    }
  }

  if (*(a1 + 24) == 1)
  {
    v3 = a1;
    sub_100222050(&v3);
  }

  return a1;
}

uint64_t sub_1005546AC(uint64_t a1, void *a2, int *a3, _DWORD *a4)
{
  *a3 = 0x100000001;
  *(a3 + 1) = 0;
  v8 = sub_100554B98(a1, a2, @"timestamp", a3 + 1);
  v9 = **(a1 + 40);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (!v8)
  {
    if (v10)
    {
      v20 = PersonalityInfo::logPrefix(**(a1 + 24));
      v21 = (*(*a1 + 40))(a1);
      v34 = 136315906;
      v35 = v20;
      v36 = 2080;
      v37 = " ";
      v38 = 2080;
      v39 = v21;
      v40 = 2080;
      v41 = ", ";
      v22 = "#I %s%s%s%sInvalid voice usage information, missing timestamp, skipping parsing";
      v23 = v9;
LABEL_16:
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, v22, &v34, 0x2Au);
    }

    return 0;
  }

  if (v10)
  {
    v11 = PersonalityInfo::logPrefix(**(a1 + 24));
    v12 = (*(*a1 + 40))(a1);
    v34 = 136315906;
    v35 = v11;
    v36 = 2080;
    v37 = " ";
    v38 = 2080;
    v39 = v12;
    v40 = 2080;
    v41 = ", ";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sReceived voice usage information", &v34, 0x2Au);
  }

  v13 = [a2 objectForKey:@"category-id"];
  if (!v13 || (v14 = v13, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || [v14 integerValue] <= 0)
  {
    v24 = **(a1 + 40);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = PersonalityInfo::logPrefix(**(a1 + 24));
      v26 = (*(*a1 + 40))(a1);
      v34 = 136315906;
      v35 = v25;
      v36 = 2080;
      v37 = " ";
      v38 = 2080;
      v39 = v26;
      v40 = 2080;
      v41 = ", ";
      v22 = "#I %s%s%s%svoice usage category not present or invalid";
      v23 = v24;
      goto LABEL_16;
    }

    return 0;
  }

  *a4 = [v14 intValue];
  v15 = [a2 objectForKey:@"voice-capacity"];
  if (v15)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      *a3 = [v15 intValue];
      v16 = **(a1 + 40);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = PersonalityInfo::logPrefix(**(a1 + 24));
        v18 = (*(*a1 + 40))(a1);
        v19 = *a3;
        v34 = 136316162;
        v35 = v17;
        v36 = 2080;
        v37 = " ";
        v38 = 2080;
        v39 = v18;
        v40 = 2080;
        v41 = ", ";
        v42 = 1024;
        v43 = v19;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%svoice capacity %d", &v34, 0x30u);
      }

      v15 = 1;
    }

    else
    {
      v15 = 0;
    }
  }

  v28 = [a2 objectForKey:@"voice-used"];
  if (v28)
  {
    v29 = v28;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      a3[1] = [v29 intValue];
      v30 = **(a1 + 40);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 = PersonalityInfo::logPrefix(**(a1 + 24));
        v32 = (*(*a1 + 40))(a1);
        v33 = a3[1];
        v34 = 136316162;
        v35 = v31;
        v36 = 2080;
        v37 = " ";
        v38 = 2080;
        v39 = v32;
        v40 = 2080;
        v41 = ", ";
        v42 = 1024;
        v43 = v33;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%svoice used %d", &v34, 0x30u);
      }

      return 1;
    }
  }

  return v15;
}

BOOL sub_100554B98(uint64_t a1, void *a2, void *a3, double *a4)
{
  v7 = [a2 objectForKey:?];
  if (v7 && (v8 = v7, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v9 = [*(a1 + 72) dateFromString:v8];
    if (v9)
    {
      [v9 timeIntervalSinceReferenceDate];
      if (v10 != 0.0)
      {
        *a4 = v10;
        return 1;
      }
    }

    else
    {
      __p[0] = 0;
      __p[1] = 0;
      v20 = 0;
      sub_10000501C(__p, [a3 cStringUsingEncoding:4]);
      v15 = **(a1 + 40);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = PersonalityInfo::logPrefix(**(a1 + 24));
        v17 = (*(*a1 + 40))(a1);
        v18 = __p;
        if (v20 < 0)
        {
          v18 = __p[0];
        }

        *buf = 136316162;
        v22 = v16;
        v23 = 2080;
        v24 = " ";
        v25 = 2080;
        v26 = v17;
        v27 = 2080;
        v28 = ", ";
        v29 = 2080;
        v30 = v18;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sFailed to parse date for key %s", buf, 0x34u);
      }

      if (SHIBYTE(v20) < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  else
  {
    v12 = **(a1 + 40);
    result = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    v13 = PersonalityInfo::logPrefix(**(a1 + 24));
    v14 = (*(*a1 + 40))(a1);
    *buf = 136315906;
    v22 = v13;
    v23 = 2080;
    v24 = " ";
    v25 = 2080;
    v26 = v14;
    v27 = 2080;
    v28 = ", ";
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sUnable to parse date since it is not a string", buf, 0x2Au);
  }

  return 0;
}

void sub_100554E04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_100554E28(uint64_t a1, int *a2, uint64_t a3)
{
  v3 = *(a1 + 8);
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
      v6 = *(v3 + 32);
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

uint64_t sub_100554EFC(uint64_t a1, void *a2, int *a3, _DWORD *a4)
{
  *a3 = 0x100000001;
  *(a3 + 1) = 0;
  v5 = a3 + 2;
  *(a3 + 2) = 0;
  v6 = (a3 + 4);
  if (!a2 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v22 = **(a1 + 40);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      return 0;
    }

    v23 = PersonalityInfo::logPrefix(**(a1 + 24));
    v24 = (*(*a1 + 40))(a1);
    v43 = 136315906;
    v44 = v23;
    v45 = 2080;
    v46 = " ";
    v47 = 2080;
    v48 = v24;
    v49 = 2080;
    v50 = ", ";
    v25 = "#I %s%s%s%sOne of the data usage array's is invalid, skipping parsing";
    goto LABEL_16;
  }

  v10 = sub_100554B98(a1, a2, @"timestamp", v6);
  v11 = **(a1 + 40);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (!v10)
  {
    if (!v12)
    {
      return 0;
    }

    v28 = PersonalityInfo::logPrefix(**(a1 + 24));
    v29 = (*(*a1 + 40))(a1);
    v43 = 136315906;
    v44 = v28;
    v45 = 2080;
    v46 = " ";
    v47 = 2080;
    v48 = v29;
    v49 = 2080;
    v50 = ", ";
    v25 = "#I %s%s%s%sInvalid data usage information, missing timestamp, skipping parsing";
    v26 = v11;
    goto LABEL_17;
  }

  if (v12)
  {
    v13 = PersonalityInfo::logPrefix(**(a1 + 24));
    v14 = (*(*a1 + 40))(a1);
    v43 = 136315906;
    v44 = v13;
    v45 = 2080;
    v46 = " ";
    v47 = 2080;
    v48 = v14;
    v49 = 2080;
    v50 = ", ";
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sReceived data usage information", &v43, 0x2Au);
  }

  v15 = [a2 objectForKey:@"category-id"];
  if (!v15 || (v16 = v15, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || [v16 integerValue] <= 0)
  {
    v22 = **(a1 + 40);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      return 0;
    }

    v30 = PersonalityInfo::logPrefix(**(a1 + 24));
    v31 = (*(*a1 + 40))(a1);
    v43 = 136315906;
    v44 = v30;
    v45 = 2080;
    v46 = " ";
    v47 = 2080;
    v48 = v31;
    v49 = 2080;
    v50 = ", ";
    v25 = "#I %s%s%s%sdata usage category not present or invalid";
LABEL_16:
    v26 = v22;
LABEL_17:
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, v25, &v43, 0x2Au);
    return 0;
  }

  *a4 = [v16 intValue];
  v17 = [a2 objectForKey:@"data-capacity"];
  if (v17)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      *a3 = [v17 intValue];
      v18 = **(a1 + 40);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = PersonalityInfo::logPrefix(**(a1 + 24));
        v20 = (*(*a1 + 40))(a1);
        v21 = *a3;
        v43 = 136316162;
        v44 = v19;
        v45 = 2080;
        v46 = " ";
        v47 = 2080;
        v48 = v20;
        v49 = 2080;
        v50 = ", ";
        v51 = 1024;
        v52 = v21;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sTotal data available %d", &v43, 0x30u);
      }

      v17 = 1;
    }

    else
    {
      v17 = 0;
    }
  }

  v32 = [a2 objectForKey:@"data-used"];
  if (v32)
  {
    v33 = v32;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      a3[1] = [v33 intValue];
      v34 = **(a1 + 40);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v35 = PersonalityInfo::logPrefix(**(a1 + 24));
        v36 = (*(*a1 + 40))(a1);
        v37 = a3[1];
        v43 = 136316162;
        v44 = v35;
        v45 = 2080;
        v46 = " ";
        v47 = 2080;
        v48 = v36;
        v49 = 2080;
        v50 = ", ";
        v51 = 1024;
        v52 = v37;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sTotal data used %d", &v43, 0x30u);
      }

      v17 = 1;
    }
  }

  v38 = [a2 objectForKey:@"use-for-alert"];
  if (v38)
  {
    v39 = v38;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      *v5 = [v39 BOOLValue];
    }

    else
    {
      v40 = **(a1 + 40);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        v41 = PersonalityInfo::logPrefix(**(a1 + 24));
        v42 = (*(*a1 + 40))(a1);
        v43 = 136315906;
        v44 = v41;
        v45 = 2080;
        v46 = " ";
        v47 = 2080;
        v48 = v42;
        v49 = 2080;
        v50 = ", ";
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sunable to parse use-for-alert info", &v43, 0x2Au);
      }
    }
  }

  return v17;
}