void sub_1003AAAF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003AAB2C(uint64_t a1)
{
  if (sub_10006301C())
  {
    v2 = TCCAccessCopyBundleIdentifiersForService();
    v3 = [NSSet setWithArray:v2];
    v4 = *(a1 + 336);
    *(a1 + 336) = v3;

    v5 = TCCAccessCopyBundleIdentifiersDisabledForService();
    v6 = [NSSet setWithArray:v5];
    v7 = *(a1 + 344);
    *(a1 + 344) = v6;

    v8 = qword_100BCE988;
    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 336);
      v11 = 138543362;
      v12 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "BundleId's allowed to use BT:%{public}@", &v11, 0xCu);
      v8 = qword_100BCE988;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = *(a1 + 344);
      v11 = 138543362;
      v12 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "BundleId's disallowed to use BT:%{public}@", &v11, 0xCu);
    }
  }

  else if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
  {
    sub_100823798();
  }
}

void sub_1003AACE4(id a1, int a2)
{
  if (qword_100B512F8 != -1)
  {
    sub_1000D5C5C();
  }

  v3 = off_100B512F0;

  sub_1003AAD28(v3);
}

void sub_1003AAD28(uint64_t a1)
{
  v2 = qword_100BCE988;
  if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "TCC changed, lets figure out if one of our sessions needs to be removed", buf, 2u);
  }

  *buf = 0;
  v28 = 0;
  v29 = 0;
  v21 = [*(a1 + 336) copy];
  v3 = [*(a1 + 344) copy];
  sub_1003AAB2C(a1);
  sub_1003AB070(a1, v21, v3);
  v4 = qword_100BCE988;
  if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 344);
    *v31 = 138543362;
    v32 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "bundle ID's not allowed to use bluetooth %{public}@", v31, 0xCu);
  }

  v7 = *(a1 + 224);
  if (v7 != (a1 + 232))
  {
    *&v5 = 138543362;
    v20 = v5;
    do
    {
      v8 = v7[5];
      v26 = v7[4];
      if (!v8[15] && v8[12])
      {
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        v9 = *(a1 + 344);
        v10 = [v9 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v10)
        {
          v11 = *v23;
          while (2)
          {
            for (i = 0; i != v10; i = i + 1)
            {
              if (*v23 != v11)
              {
                objc_enumerationMutation(v9);
              }

              v13 = *(*(&v22 + 1) + 8 * i);
              if ([v13 isEqualToString:{v8[11], v20}])
              {
                v14 = qword_100BCE9E0;
                if (os_log_type_enabled(qword_100BCE9E0, OS_LOG_TYPE_DEFAULT))
                {
                  *v31 = v20;
                  v32 = v13;
                  _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Removing restorable bundle %{public}@ because user disabled TCC access to bluetooth", v31, 0xCu);
                }

                sub_1000C2484(buf, &v26);
                [*(a1 + 296) removeObject:v8[11]];
                goto LABEL_21;
              }
            }

            v10 = [v9 countByEnumeratingWithState:&v22 objects:v30 count:16];
            if (v10)
            {
              continue;
            }

            break;
          }
        }

LABEL_21:
      }

      v15 = v7[1];
      if (v15)
      {
        do
        {
          v16 = v15;
          v15 = *v15;
        }

        while (v15);
      }

      else
      {
        do
        {
          v16 = v7[2];
          v17 = *v16 == v7;
          v7 = v16;
        }

        while (!v17);
      }

      v7 = v16;
    }

    while (v16 != (a1 + 232));
  }

  v18 = *buf;
  v19 = v28;
  while (v18 != v19)
  {
    sub_100022CE4(a1, *v18++, 1);
  }

  if (*buf)
  {
    v28 = *buf;
    operator delete(*buf);
  }
}

void sub_1003AB018(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1003AB070(uint64_t a1, void *a2, void *a3)
{
  v30 = a2;
  v31 = a3;
  v27 = [*(a1 + 336) mutableCopy];
  v26 = [*(a1 + 344) mutableCopy];
  if ([v30 count])
  {
    [v27 minusSet:v30];
  }

  if ([v31 count])
  {
    [v26 minusSet:v31];
  }

  v5 = [v27 mutableCopy];
  [v5 unionSet:v26];
  v6 = [v5 anyObject];

  if (v6)
  {
    v7 = qword_100BCE988;
    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "BluetoothTCC changed", buf, 2u);
    }

    v8 = v5;
    if ([v27 count])
    {
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      obj = v27;
      v9 = [obj countByEnumeratingWithState:&v37 objects:v45 count:16];
      if (v9)
      {
        v10 = *v38;
        v11 = 0xFFFF;
        do
        {
          v12 = 0;
          do
          {
            if (*v38 != v10)
            {
              objc_enumerationMutation(obj);
            }

            v13 = *(*(&v37 + 1) + 8 * v12);
            v14 = qword_100BCE988;
            if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              *&buf[4] = v13;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "App %{public}@ bluetooth authorization changed", buf, 0xCu);
            }

            v15 = [v31 containsObject:v13];
            if (v15)
            {
              v11 = 1;
            }

            v16 = qword_100BCE988;
            if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138544130;
              *&buf[4] = v13;
              *&buf[12] = 1024;
              *&buf[14] = v15;
              *&buf[18] = 1024;
              *&buf[20] = v11;
              *&buf[24] = 1024;
              *&buf[26] = 0;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Push AWD stats for %{public}@: triggerLoc: %u, prevPermission: %u, currPermission: %u", buf, 0x1Eu);
            }

            v43 = 0u;
            v44 = 0u;
            memset(buf, 0, sizeof(buf));
            v17 = v13;
            v5 = v8;
            sub_100007E30(&__p, [v13 UTF8String]);
            sub_1003C3DDC(buf, &__p, 0, v15, v11, 0, 0, 0, 0xFFFF);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            if (qword_100B541F8 != -1)
            {
              sub_1008237D4();
            }

            sub_10000EFDC(qword_100B541F0, buf);
            if (buf[31] < 0)
            {
              operator delete(*&buf[8]);
            }

            v12 = v12 + 1;
          }

          while (v9 != v12);
          v9 = [obj countByEnumeratingWithState:&v37 objects:v45 count:16];
        }

        while (v9);
      }

      else
      {
        v11 = 0xFFFF;
      }
    }

    else
    {
      v11 = 0xFFFF;
    }

    if ([v26 count])
    {
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      obja = v26;
      v18 = [obja countByEnumeratingWithState:&v32 objects:v41 count:16];
      if (v18)
      {
        v19 = *v33;
        do
        {
          v20 = 0;
          do
          {
            if (*v33 != v19)
            {
              objc_enumerationMutation(obja);
            }

            v21 = *(*(&v32 + 1) + 8 * v20);
            v22 = qword_100BCE988;
            if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              *&buf[4] = v21;
              _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "App %{public}@ bluetooth authorization changed", buf, 0xCu);
            }

            v23 = [v30 containsObject:v21];
            if (v23)
            {
              v11 = 0;
            }

            v24 = qword_100BCE988;
            if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138544130;
              *&buf[4] = v21;
              *&buf[12] = 1024;
              *&buf[14] = v23;
              *&buf[18] = 1024;
              *&buf[20] = v11;
              *&buf[24] = 1024;
              *&buf[26] = 1;
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Push AWD stats for %{public}@: triggerLoc: %u, prevPermission: %u, currPermission: %u", buf, 0x1Eu);
            }

            v43 = 0u;
            v44 = 0u;
            memset(buf, 0, sizeof(buf));
            v25 = v21;
            v5 = v8;
            sub_100007E30(&__p, [v21 UTF8String]);
            sub_1003C3DDC(buf, &__p, 0, v23, v11, 1, 0, 0, 0xFFFF);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            if (qword_100B541F8 != -1)
            {
              sub_1008237D4();
            }

            sub_10000EFDC(qword_100B541F0, buf);
            if (buf[31] < 0)
            {
              operator delete(*&buf[8]);
            }

            v20 = v20 + 1;
          }

          while (v18 != v20);
          v18 = [obja countByEnumeratingWithState:&v32 objects:v41 count:16];
        }

        while (v18);
      }
    }
  }
}

void sub_1003AB71C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEBUG))
  {
    sub_1008238D8();
  }

  v4 = *(a1 + 224);
  if (v4 != (a1 + 232))
  {
    do
    {
      v5 = v4[5];
      sub_100018384(v4[4], __p);
      if (v15 >= 0)
      {
        v6 = __p;
      }

      else
      {
        v6 = __p[0];
      }

      v7 = [NSString stringWithUTF8String:v6];
      if (v15 < 0)
      {
        operator delete(__p[0]);
      }

      v8 = [v7 isEqualToString:v3];
      if (v5)
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }

      if (v9 == 1)
      {
        v10 = *(v5 + 120);
        if (v10)
        {
          sub_100052EE4(v10 - 144, 9, &__NSDictionary0__struct);
        }
      }

      v11 = v4[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = v4[2];
          v13 = *v12 == v4;
          v4 = v12;
        }

        while (!v13);
      }

      v4 = v12;
    }

    while (v12 != (a1 + 232));
  }
}

void sub_1003AB89C(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = sub_100007EE8(v3, v4);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1003AB968;
  v7[3] = &unk_100AE1200;
  v9 = a1;
  v6 = v3;
  v8 = v6;
  sub_10000CA94(v5, v7);
}

void sub_1003AB968(uint64_t a1)
{
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v35 = *(a1 + 40);
  obj = [*(a1 + 32) elements];
  v1 = 0;
  v2 = 0;
  v3 = [obj countByEnumeratingWithState:&v43 objects:v50 count:16];
  if (v3)
  {
    v4 = *v44;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v44 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v43 + 1) + 8 * i);
        v7 = [v6 identifier];
        v8 = [v7 isEqualToString:@"com.apple.springboard.home-screen"];

        v9 = [v6 identifier];
        LOBYTE(v7) = [v9 isEqualToString:@"com.apple.lock-screen"];

        v2 |= v8;
        v1 |= v7;
      }

      v3 = [obj countByEnumeratingWithState:&v43 objects:v50 count:16];
    }

    while (v3);
  }

  v10 = qword_100BCE988;
  if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *&buf[4] = v2 & 1;
    *&buf[8] = 1024;
    *&buf[10] = v1 & 1;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "springboardHomeScreenIsActive: %d\t deviceScreenIsLocked: %d", buf, 0xEu);
  }

  if (!(v1 & 1 | ((v2 & 1) == 0)))
  {
    v11 = qword_100BCE988;
    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "User is in SpringBoard and device is unlocked. Check TCC for backgrounded sessions", buf, 2u);
    }

    v12 = *(v35 + 360);
    if (v12)
    {
      v13 = qword_100BCE988;
      if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Deregistering FrontBoard services", buf, 2u);
        v12 = *(v35 + 360);
      }

      [v12 invalidate];
      v14 = *(v35 + 360);
      *(v35 + 360) = 0;
    }

    if ([*(v35 + 352) count])
    {
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      obja = *(v35 + 352);
      v15 = [obja countByEnumeratingWithState:&v39 objects:v49 count:16];
      if (v15)
      {
        v34 = *v40;
        v17 = (v35 + 232);
        *&v16 = 138543362;
        v33 = v16;
        do
        {
          v36 = v15;
          for (j = 0; j != v36; j = j + 1)
          {
            if (*v40 != v34)
            {
              objc_enumerationMutation(obja);
            }

            v19 = *(v35 + 224);
            if (v19 != v17)
            {
              v20 = *(*(&v39 + 1) + 8 * j);
              do
              {
                v22 = v19[4];
                v21 = v19[5];
                sub_100018384(v22, buf);
                if (v48 >= 0)
                {
                  v23 = buf;
                }

                else
                {
                  v23 = *buf;
                }

                v24 = [NSString stringWithUTF8String:v23, v33];
                if (v48 < 0)
                {
                  operator delete(*buf);
                }

                v25 = [v20 isEqualToString:v24];
                if (v25 && (*(v21 + 38) & 1) == 0 && *(v21 + 24) == 1)
                {
                  v26 = sub_10005EC28(v25, v21);
                  if (*(v21 + 120))
                  {
                    v31 = qword_100BCE988;
                    v32 = os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT);
                    if (v32)
                    {
                      *buf = v33;
                      *&buf[4] = v24;
                      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Complete TCC for %{public}@", buf, 0xCu);
                    }

                    sub_10004E450(v32, v21, v22, 5, 1);
                    sub_10005F024(v21);

                    break;
                  }

                  v27 = qword_100BCE988;
                  if (*(v21 + 96))
                  {
                    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = v33;
                      *&buf[4] = v24;
                      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Launch application %{public}@ for TCC", buf, 0xCu);
                    }

                    sub_1004F4E94(v21, v26 ^ 1u);
                  }

                  else if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
                  {
                    *buf = v33;
                    *&buf[4] = v24;
                    _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Wait for %{public}@ to check-in again", buf, 0xCu);
                  }
                }

                v28 = v19[1];
                if (v28)
                {
                  do
                  {
                    v29 = v28;
                    v28 = *v28;
                  }

                  while (v28);
                }

                else
                {
                  do
                  {
                    v29 = v19[2];
                    v30 = *v29 == v19;
                    v19 = v29;
                  }

                  while (!v30);
                }

                v19 = v29;
              }

              while (v29 != v17);
            }
          }

          v15 = [obja countByEnumeratingWithState:&v39 objects:v49 count:16];
        }

        while (v15);
      }
    }
  }
}

uint64_t sub_1003ABF1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = qword_100BCE988;
  if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
  {
    if (a2)
    {
      v7 = *(a2 + 88);
    }

    else
    {
      v7 = @"NONE";
    }

    *__p = 138412546;
    *&__p[4] = v7;
    *&__p[12] = 1024;
    v21 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "AppManager::setAppSessionPowerState bundle:%@ power:%d", __p, 0x12u);
  }

  v8 = *(a1 + 224);
  if (v8 == (a1 + 232))
  {
    return 3;
  }

  while (v8[5] != a2)
  {
    v9 = v8[1];
    if (v9)
    {
      do
      {
        v10 = v9;
        v9 = *v9;
      }

      while (v9);
    }

    else
    {
      do
      {
        v10 = v8[2];
        v11 = *v10 == v8;
        v8 = v10;
      }

      while (!v11);
    }

    v8 = v10;
    if (v10 == (a1 + 232))
    {
      return 3;
    }
  }

  v12 = v8[4];
  if (!v12)
  {
    return 3;
  }

  if ((_os_feature_enabled_impl() & 1) != 0 && !(*(*a2 + 16))(a2))
  {
    v13 = *(a2 + 480);
    if ((v13 & 1) == 0)
    {
      if (*(a2 + 472))
      {
        a3 = 0;
      }

      else
      {
        a3 = a3;
      }
    }

    v14 = qword_100BCE988;
    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
    {
      *__p = 67109376;
      *&__p[4] = v13;
      *&__p[8] = 1024;
      *&__p[10] = a3;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "AppManager::setAppSessionPowerState sessionStarted:%d power:%d", __p, 0xEu);
    }
  }

  v15 = (*(*a2 + 16))(a2);
  if (v15 == 3)
  {
    if (!a3)
    {
      v15 = (*(*a2 + 72))(a2, v12);
    }

    if (*(a2 + 192))
    {
      if (*(a2 + 39) == 1)
      {
        sub_10004E450(v15, a2, v12, 5, 1);
        (***(a2 + 192))();
        return 0;
      }

      v17 = qword_100BCE988;
      result = os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT);
      if (result)
      {
        sub_100018384(v12, __p);
        if (v22 >= 0)
        {
          v18 = __p;
        }

        else
        {
          v18 = *__p;
        }

        *buf = 136315138;
        v24 = v18;
        goto LABEL_49;
      }

      return result;
    }

    return 3;
  }

  if (!a3)
  {
    (*(*a2 + 72))(a2, v12);
    if (qword_100B512F8 != -1)
    {
      sub_100823948();
    }

    sub_1000C39CC(off_100B512F0);
  }

  if (!*(a2 + 120))
  {
    return 3;
  }

  if (*(a2 + 39) == 1)
  {
    sub_10004E450(v15, a2, v12, 5, 1);
    (*(**(a2 + 120) + 208))(*(a2 + 120), 0, a3);
    return 0;
  }

  v17 = qword_100BCE988;
  result = os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    sub_100018384(v12, __p);
    if (v22 >= 0)
    {
      v19 = __p;
    }

    else
    {
      v19 = *__p;
    }

    *buf = 136315138;
    v24 = v19;
LABEL_49:
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Session %s cannot get power state updates yet", buf, 0xCu);
    if (v22 < 0)
    {
      operator delete(*__p);
    }

    return 0;
  }

  return result;
}

uint64_t sub_1003AC374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 3;
  }

  if ((a4 & 0x100000000) != 0)
  {
    v7 = a2;
    v8 = 0;
LABEL_10:
    sub_100500C20(v7, v8);
    return 0;
  }

  if ((a4 & 0x10000) != 0)
  {
    v7 = a2;
    v8 = 1;
    goto LABEL_10;
  }

  if ((a4 & 0x1000000) != 0)
  {
    v4 = a2;
    v5 = 0;
    goto LABEL_14;
  }

  if ((a4 & 0x100) != 0)
  {
    v4 = a2;
    v5 = 1;
LABEL_14:
    sub_100500D54(v4, v5);
  }

  return 0;
}

void sub_1003AC3DC(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = [*(a1 + 304) objectForKey:v5];

  v7 = qword_100BCE9E0;
  if (v6)
  {
    if (os_log_type_enabled(qword_100BCE9E0, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v24[0] = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Death Timer Already Exists For <%{public}@> Skipping", buf, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE9E0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67240450;
      LODWORD(v24[0]) = a3;
      WORD2(v24[0]) = 2114;
      *(v24 + 6) = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Starting Resurrection Timer (%{public}d secs) for <%{public}@>", buf, 0x12u);
    }

    v17 = _NSConcreteStackBlock;
    v18 = 3221225472;
    v19 = sub_1003BD380;
    v20 = &unk_100AE1200;
    v22 = a1;
    v8 = v5;
    v21 = v8;
    v9 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, &v17);
    v10 = [*(a1 + 304) objectForKey:{v8, v17, v18, v19, v20}];
    v11 = v10;
    if (v10)
    {
      dispatch_block_cancel(v10);
    }

    v12 = *(a1 + 304);
    v13 = objc_retainBlock(v9);
    [v12 setObject:v13 forKey:v8];

    v16 = sub_100007EE8(v14, v15);
    sub_10008E008(v16, 1000 * a3, v9);
  }
}

void sub_1003AC628(void *a1)
{
  v1 = a1[4];
  v4 = *(v1 + 232);
  v2 = v1 + 232;
  v3 = v4;
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = a1[5];
  v6 = v2;
  do
  {
    v7 = *(v3 + 32);
    v8 = v7 >= v5;
    v9 = v7 < v5;
    if (v8)
    {
      v6 = v3;
    }

    v3 = *(v3 + 8 * v9);
  }

  while (v3);
  if (v6 != v2 && v5 >= *(v6 + 32))
  {
    v11 = a1[6];

    sub_1000658D0(v11);
  }

  else
  {
LABEL_9:
    v10 = qword_100BCE988;
    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Dropping enqueued messages as session has been terminated", v12, 2u);
    }
  }
}

void sub_1003AC6F4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 && v6)
  {
    v8 = [*(a1 + 320) objectForKeyedSubscript:v5];
    if (v8)
    {
      v9 = +[NSMutableSet set];

      v8 = v9;
    }

    [v8 addObject:v7];
    [*(a1 + 320) setObject:v8 forKeyedSubscript:v5];
    v10 = qword_100BCE988;
    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543618;
      v12 = v5;
      v13 = 2112;
      v14 = v7;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Application %{public}@ for user %@ is interested in FindMy devices", &v11, 0x16u);
    }
  }
}

uint64_t sub_1003AC854(uint64_t a1, uint64_t a2, unsigned int a3, void *a4, uint64_t a5, unsigned int a6, void *a7, _DWORD *a8, _BYTE *a9, uint64_t a10)
{
  obj = a4;
  v15 = a4;
  v61 = a7;
  v66 = a7;
  v64 = sub_10000EE80(v66, v16);
  v18 = *(a1 + 224);
  v65 = a1;
  v19 = (a1 + 232);
  if (v18 == v19)
  {
LABEL_23:
    v69 = 0;
    v26 = *(a5 + 23);
    if (v26 < 0)
    {
      v27 = *a5;
      v26 = *(a5 + 8);
    }

    else
    {
      v27 = a5;
    }

    if (v26 >= 20)
    {
      v28 = (v27 + v26);
      v29 = v27;
      do
      {
        v30 = memchr(v29, 99, v26 - 19);
        if (!v30)
        {
          break;
        }

        v31 = *v30 == 0x6C7070612E6D6F63 && v30[1] == 0x6F7465756C622E65;
        if (v31 && *(v30 + 4) == 1684567151)
        {
          if (v30 != v28 && (v30 - v27) != -1)
          {
            v33 = 3;
            goto LABEL_42;
          }

          break;
        }

        v29 = v30 + 1;
        v26 = v28 - v29;
      }

      while (v28 - v29 >= 20);
    }

    v33 = 4;
LABEL_42:
    if (qword_100B50B88 != -1)
    {
      sub_100823874();
    }

    if (sub_100044414(qword_100B50B80, a5, &v69, v33))
    {
      if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
      {
        sub_100823AB0();
      }

      goto LABEL_126;
    }

    if (qword_100B50B88 != -1)
    {
      sub_100823874();
    }

    v20 = sub_1000117DC(qword_100B50B80, v69);
    if (!v20)
    {
      goto LABEL_154;
    }

    if (qword_100B50B88 != -1)
    {
      sub_100823874();
    }

    if (!sub_100618524(qword_100B50B80, v20))
    {
LABEL_154:
      if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
      {
        sub_100823DA4();
      }

      goto LABEL_126;
    }

    (**v64)(v64, v20, v15, a3, 0);
    if ((a10 & 1) == 0)
    {
LABEL_99:
      if ((*(*v64 + 48))(v64, v20, a6 == 0))
      {
        v47 = 1;
        if (a6 != 1 || (a10 & 0x100) == 0)
        {
          goto LABEL_105;
        }

        if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
        {
          sub_100018384(v20, buf);
          sub_100823D4C();
        }
      }

      v47 = 0;
LABEL_105:
      v48 = qword_100BCE988;
      if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
      {
        sub_100018384(v20, v67);
        v49 = "unknonw";
        if (a6 == 3)
        {
          v49 = "classic";
        }

        if (a6 == 1)
        {
          v49 = "peripheral";
        }

        if (!a6)
        {
          v49 = "central";
        }

        if (v68 >= 0)
        {
          v50 = v67;
        }

        else
        {
          v50 = v67[0];
        }

        *__p = 136447234;
        *&__p[4] = v49;
        v51 = "on";
        v72 = 2082;
        *v73 = v50;
        if (v47)
        {
          v52 = "on";
        }

        else
        {
          v52 = "off";
        }

        *&v73[8] = 2082;
        v74 = v52;
        if (!v66)
        {
          v51 = "off";
        }

        v75 = 2082;
        v76 = v51;
        v77 = 2114;
        v78 = v66;
        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "Registering %{public}s session %{public}s with backgrounding: %{public}s, persistence: %{public}s restoreID: %{public}@", __p, 0x34u);
        if (v68 < 0)
        {
          operator delete(v67[0]);
        }
      }

      if (!sub_10005C8C0(v65, v20, v15, a6, v47))
      {
        if (qword_100B512F8 != -1)
        {
          sub_100823948();
        }

        v54 = sub_10005D040(off_100B512F0, v20, a6);
        v55 = v54;
        if (v54)
        {
          if ((*(*v54 + 16))(v54) == 3)
          {
            *(v55 + 192) = a2;
          }

          objc_storeStrong((v55 + 88), obj);
          objc_storeStrong((v55 + 96), v61);
          if (*(v55 + 96))
          {
            v65[178] = 1;
          }

          *(v55 + 28) = (*(*v64 + 56))(v64, v20) != 32;
          *(v55 + 27) = BYTE2(a10) & 1;
          *(v55 + 36) = BYTE3(a10) & 1;
          *(v55 + 37) = BYTE4(a10) & 1;
        }

        v56 = qword_100BCE988;
        if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
        {
          sub_100018384(v20, v67);
          v57 = v68 >= 0 ? v67 : v67[0];
          v58 = v65[179];
          *__p = 136446978;
          *&__p[4] = v57;
          v72 = 1024;
          *v73 = BYTE3(a10) & 1;
          *&v73[4] = 1024;
          *&v73[6] = BYTE4(a10) & 1;
          LOWORD(v74) = 1024;
          *(&v74 + 2) = v58;
          _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "Session %{public}s : needsRestrictedStateOperation = %d, powerOnInRestrictedState = %d , denylistMode = %d", __p, 0x1Eu);
          if (v68 < 0)
          {
            operator delete(v67[0]);
          }
        }

        if ((a10 & 0x1000000) != 0)
        {
          if (qword_100B512C8 != -1)
          {
            sub_100823A88();
          }

          if (sub_10000EE78(off_100B512C0) == 1)
          {
            *a9 = v65[179];
            *a8 = 1;
            goto LABEL_127;
          }
        }

        else if (v65[179])
        {
          goto LABEL_148;
        }

        if (qword_100B512C8 != -1)
        {
          sub_100823A88();
        }

        *a8 = sub_10000EE78(off_100B512C0);
        goto LABEL_127;
      }

      (*(*v64 + 8))(v64, v20, v15);
      if (qword_100B50B88 != -1)
      {
        sub_100823874();
      }

      sub_100079604(qword_100B50B80, v69);
LABEL_126:
      v20 = 0;
      goto LABEL_127;
    }

    if (qword_100B512C8 != -1)
    {
      sub_100823A88();
    }

    v34 = sub_10000EE78(off_100B512C0);
    if (v34)
    {
      if (v65[179] != 1)
      {
        goto LABEL_99;
      }

      v35 = qword_100BCE988;
      if (!os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_98;
      }

      sub_100018384(v20, __p);
      if (v73[9] >= 0)
      {
        v36 = __p;
      }

      else
      {
        v36 = *__p;
      }

      *buf = 136446210;
      *&buf[4] = v36;
      v37 = "Bluetooth is in denylist mode - show LE_DENYLIST_ENABLED alert for %{public}s";
    }

    else
    {
      v35 = qword_100BCE988;
      if (!os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
      {
LABEL_98:
        (*(*v64 + 24))(v64, v20, v34 != 0);
        goto LABEL_99;
      }

      sub_100018384(v20, __p);
      if (v73[9] >= 0)
      {
        v46 = __p;
      }

      else
      {
        v46 = *__p;
      }

      *buf = 136446210;
      *&buf[4] = v46;
      v37 = "Bluetooth is powered off - notifying session %{public}s";
    }

    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, v37, buf, 0xCu);
    if ((v73[9] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    goto LABEL_98;
  }

  *&v17 = 136446466;
  v59 = v17;
  while (1)
  {
    v20 = v18[4];
    v21 = v18[5];
    if ((*(*v21 + 16))(v21) == 3)
    {
      if (*(v21 + 192) == a2)
      {
        v22 = qword_100BCE988;
        if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_FAULT))
        {
          sub_100018384(v20, __p);
          v25 = __p;
          if (v73[9] < 0)
          {
            v25 = *__p;
          }

          *buf = v59;
          *&buf[4] = v25;
          v80 = 2114;
          v81 = v15;
          _os_log_fault_impl(&_mh_execute_header, v22, OS_LOG_TYPE_FAULT, "Duplicate check-in message from session %{public}s in application %{public}@", buf, 0x16u);
          if ((v73[9] & 0x80000000) != 0)
          {
            operator delete(*__p);
          }
        }
      }

      if ([*(v21 + 88) isEqualToString:{v15, v59, obj, v61}])
      {
        if (!*(v21 + 192) && *(v21 + 96))
        {
          sub_1003AC3DC(v65, *(v21 + 88), 15);
        }

        if ([*(v21 + 96) isEqualToString:v66] && (*(*v21 + 16))(v21) == a6)
        {
          break;
        }
      }
    }

    v23 = v18[1];
    if (v23)
    {
      do
      {
        v24 = v23;
        v23 = *v23;
      }

      while (v23);
    }

    else
    {
      do
      {
        v24 = v18[2];
        v31 = *v24 == v18;
        v18 = v24;
      }

      while (!v31);
    }

    v18 = v24;
    if (v24 == v19)
    {
      goto LABEL_23;
    }
  }

  v38 = qword_100BCE988;
  if (*(v21 + 192))
  {
    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
    {
      sub_100018384(v20, buf);
      v39 = v82 >= 0 ? buf : *buf;
      *__p = 138543874;
      *&__p[4] = v66;
      v72 = 2082;
      *v73 = v39;
      *&v73[8] = 2114;
      v74 = v15;
      _os_log_error_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "(CBSR) Duplicate restore identifier %{public}@ from session %{public}s in application %{public}@", __p, 0x20u);
      if (v82 < 0)
      {
        operator delete(*buf);
      }
    }

    goto LABEL_126;
  }

  if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
  {
    sub_100018384(v20, buf);
    v40 = "unknown";
    if (a6 == 3)
    {
      v40 = "classic";
    }

    if (a6 == 1)
    {
      v40 = "peripheral";
    }

    if (!a6)
    {
      v40 = "central";
    }

    *__p = 136446722;
    *&__p[4] = v40;
    if (v82 >= 0)
    {
      v41 = buf;
    }

    else
    {
      v41 = *buf;
    }

    v72 = 2082;
    *v73 = v41;
    *&v73[8] = 2114;
    v74 = v15;
    _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "(CBSR) Restoring zombie'd %{public}s session %{public}s for application %{public}@", __p, 0x20u);
    if (v82 < 0)
    {
      operator delete(*buf);
    }
  }

  *(v21 + 192) = a2;
  sub_100614E78(v20, a5);
  (*(*v65 + 16))(v65, v20);
  v42 = qword_100BCE988;
  if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
  {
    *__p = 0;
    _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Ignore needsRestrictedStateOperation since restorable sessions are always apps", __p, 2u);
  }

  if (v65[179] == 1)
  {
LABEL_148:
    *a8 = 0;
    goto LABEL_127;
  }

  if (qword_100B512C8 != -1)
  {
    sub_100823A88();
  }

  v43 = sub_10000EE78(off_100B512C0);
  *a8 = v43;
  if (v43)
  {
    v45 = sub_100007EE8(v43, v44);
    v70[0] = _NSConcreteStackBlock;
    v70[1] = 3221225472;
    v70[2] = sub_1003AD4C0;
    v70[3] = &unk_100AEC130;
    v70[4] = v65;
    v70[5] = v20;
    v70[6] = v21;
    sub_10000CA94(v45, v70);
  }

LABEL_127:

  return v20;
}

void sub_1003AD4C0(void *a1)
{
  v1 = a1[4];
  v4 = *(v1 + 232);
  v2 = v1 + 232;
  v3 = v4;
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = a1[5];
  v6 = v2;
  do
  {
    v7 = *(v3 + 32);
    v8 = v7 >= v5;
    v9 = v7 < v5;
    if (v8)
    {
      v6 = v3;
    }

    v3 = *(v3 + 8 * v9);
  }

  while (v3);
  if (v6 != v2 && v5 >= *(v6 + 32))
  {
    v11 = a1[6];

    sub_1000658D0(v11);
  }

  else
  {
LABEL_9:
    v10 = qword_100BCE988;
    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Dropping enqueued messages as session has been terminated", v12, 2u);
    }
  }
}

uint64_t sub_1003AD58C(uint64_t a1, void *a2)
{
  v3 = a2;
  v17 = v3;
  v6 = *(a1 + 248);
  v4 = a1 + 248;
  v5 = v6;
  v7 = (v4 + 8);
  if (v6 == (v4 + 8))
  {
    v11 = 0;
  }

  else
  {
    while (![v5[4] isEqualToString:{v3, v17}])
    {
      v8 = v5[1];
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = v5[2];
          v10 = *v9 == v5;
          v5 = v9;
        }

        while (!v10);
      }

      v5 = v9;
      if (v9 == v7)
      {
        goto LABEL_14;
      }
    }

    v11 = (*(v5 + 10) + 1);
    *(v5 + 10) = v11;
    v12 = qword_100BCE988;
    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v5[4];
      *buf = 138543618;
      *&buf[4] = v13;
      v19 = 1024;
      v20 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Existing bundleID %{public}@ check-in before TCC, checkinTimes %d ", buf, 0x12u);
    }
  }

  if (v5 == v7)
  {
LABEL_14:
    *buf = &v17;
    v11 = 1;
    *(sub_1003C4F48(v4, &v17, &unk_1008A9BD0, buf) + 10) = 1;
    v14 = qword_100BCE988;
    v15 = os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT);
    v3 = v17;
    if (v15)
    {
      *buf = 138543362;
      *&buf[4] = v17;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "New bundleID %{public}@ check-in before TCC, start tracking", buf, 0xCu);
      v3 = v17;
    }
  }

  return v11;
}

uint64_t sub_1003AD798(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = sub_10005D040(a1, a2, 0);
  if (!v5)
  {
    return 1;
  }

  v6 = v5;
  v7 = qword_100BCE988;
  if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
  {
    sub_100018384(a2, __p);
    if (v11 >= 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    *buf = 136446210;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Set session %{public}s needs private mode", buf, 0xCu);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }
  }

  (*(*v6 + 32))(v6, a3);
  return 0;
}

void sub_1003AD8C8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (qword_100B508D0 != -1)
  {
    sub_1008236BC();
  }

  v4 = sub_10078DBF8(off_100B508C8, v3);
  v5 = v4;
  v6 = *(a1 + 224);
  v7 = (a1 + 232);
  if (v6 == (a1 + 232))
  {
    if (!v4)
    {
      goto LABEL_36;
    }

    v23 = 0;
    goto LABEL_27;
  }

  v8 = 0;
  v9 = 0;
  do
  {
    v10 = v6[5];
    if (!(*(*v10 + 2))(v10))
    {
      v11 = [v10[28] objectForKey:v3];

      if (v11)
      {
        v12 = [v10[28] objectForKeyedSubscript:v3];
        v13 = [v12 enableAutoReconnect];
        v9 += v13 ^ 1;
        v8 += v13;
      }
    }

    v14 = v6[1];
    if (v14)
    {
      do
      {
        v15 = v14;
        v14 = *v14;
      }

      while (v14);
    }

    else
    {
      do
      {
        v15 = v6[2];
        v16 = *v15 == v6;
        v6 = v15;
      }

      while (!v16);
    }

    v6 = v15;
  }

  while (v15 != v7);
  v17 = v8 != 0;
  if (v9)
  {
    v17 = 0;
  }

  if (v5 != v17)
  {
    v23 = 0;
    if (v17)
    {
      if (qword_100B508B0 != -1)
      {
        sub_10082366C();
      }

      v18 = off_100B508A8;
      sub_10004DFB4(buf, v3);
      if (sub_1000C4FCC(v18, buf, &v23))
      {
        v22 = 0;
        sub_1000216B4(&v22);
        if (sub_1000BE280(v23))
        {
          v19 = qword_100BCE988;
          if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v25 = v3;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "skip FW autoReconnect for incoming connection, device  %{public}@", buf, 0xCu);
          }

          sub_10002249C(&v22);
          goto LABEL_36;
        }

        sub_10002249C(&v22);
      }

      v20 = 1;
      goto LABEL_30;
    }

LABEL_27:
    v20 = 0;
LABEL_30:
    if (qword_100B508B0 != -1)
    {
      sub_100823824();
    }

    v21 = off_100B508A8;
    sub_10004DFB4(buf, v3);
    if (!sub_100756F48(v21, buf, v20 ^ 1, v20, 255, 0, 0))
    {
      if (qword_100B508D0 != -1)
      {
        sub_100823A10();
      }

      sub_10078DAC8(off_100B508C8, v3, v20);
    }
  }

LABEL_36:
}

void sub_1003ADB9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, __int16 a10, char a11, char a12)
{
  sub_10002249C(&a12);

  _Unwind_Resume(a1);
}

uint64_t sub_1003ADBEC(uint64_t a1, void *a2)
{
  v2 = sub_1003BDD68(a1, a2);
  v3 = sub_1003BE250(v2, v2);
  v4 = qword_100BCE988;
  if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136446210;
    v7 = sub_1003BE228(v3);
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "combinedLatencyForDevice returning %{public}s", &v6, 0xCu);
  }

  return v3;
}

void sub_1003ADCD4(uint64_t a1, unint64_t a2)
{
  v4 = sub_10005D040(a1, a2, 1u);
  if (v4)
  {
    v5 = v4;
    sub_100501E18(v4, a2);
    if (*(v5 + 24) == 1 && *(v5 + 96))
    {

      sub_100078BCC(a1);
    }
  }

  else if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
  {
    sub_100823E64();
  }
}

uint64_t sub_1003ADD78(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 224);
  v8 = (a1 + 232);
  if (v7 == v8)
  {
LABEL_10:
    v13 = 0;
  }

  else
  {
    while (1)
    {
      v9 = v7[5];
      if ([*(v9 + 88) isEqualToString:v5])
      {
        if ([*(v9 + 96) isEqualToString:v6])
        {
          break;
        }
      }

      v10 = v7[1];
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
          v11 = v7[2];
          v12 = *v11 == v7;
          v7 = v11;
        }

        while (!v12);
      }

      v7 = v11;
      if (v11 == v8)
      {
        goto LABEL_10;
      }
    }

    v13 = 1;
  }

  return v13;
}

id sub_1003ADE54(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NSMutableArray array];
  v5 = *(a1 + 224);
  v6 = (a1 + 232);
  if (v5 != (a1 + 232))
  {
    do
    {
      v7 = (*(*v5[5] + 16))(v5[5]);
      v8 = v5[5];
      if (v7)
      {
        if ((*(*v8 + 16))(v5[5]) == 1)
        {
          v8 = v5[5];
          if (sub_1005048E8(v8, v3))
          {
LABEL_7:
            [v4 addObject:v8[11]];
          }
        }
      }

      else if (sub_1004F9F68(v5[5], v3))
      {
        goto LABEL_7;
      }

      v9 = v5[1];
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = v5[2];
          v11 = *v10 == v5;
          v5 = v10;
        }

        while (!v11);
      }

      v5 = v10;
    }

    while (v10 != v6);
  }

  return v4;
}

uint64_t sub_1003ADFC4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 224);
  v5 = (a1 + 232);
  if (v4 == v5)
  {
LABEL_12:
    v10 = 0;
  }

  else
  {
    while (1)
    {
      v6 = v4[5];
      if (v6[28] == 1 && !(*(*v6 + 16))(v6) && [*(v4[5] + 88) localizedStandardContainsString:v3] && *(v4[5] + 352))
      {
        break;
      }

      v7 = v4[1];
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = v4[2];
          v9 = *v8 == v4;
          v4 = v8;
        }

        while (!v9);
      }

      v4 = v8;
      if (v8 == v5)
      {
        goto LABEL_12;
      }
    }

    v10 = 1;
  }

  return v10;
}

void sub_1003AE0B8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEBUG))
  {
    sub_100823F68();
  }

  v8 = sub_10005D040(a1, a2, 0);
  if (v8)
  {
    sub_1004FBDCC(v8, v5, v4);
  }

  else if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_FAULT))
  {
    sub_100823EDC();
  }
}

void sub_1003AE164(uint64_t a1, unint64_t a2, int a3, unsigned int a4)
{
  v6 = sub_10005D040(a1, a2, 0);
  if (v6)
  {

    sub_1004FBE98(v6, a3, a4);
  }

  else if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_FAULT))
  {
    sub_100823EDC();
  }
}

void sub_1003AE1F4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v7 = sub_10005D040(a1, a2, a6 ^ 1u);
  if (v7)
  {
    v8 = *v7;
    if (a6)
    {
      v9 = *(v8 + 128);
    }

    else
    {
      v9 = *(v8 + 144);
    }

    v9();
  }

  else if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_FAULT))
  {
    sub_100823EDC();
  }
}

void sub_1003AE310(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v8 = sub_10005D040(a1, a2, a7 ^ 1u);
  if (v8)
  {
    v9 = *v8;
    if (a7)
    {
      v10 = *(v9 + 136);
    }

    else
    {
      v10 = *(v9 + 152);
    }

    v10();
  }

  else if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_FAULT))
  {
    sub_100823EDC();
  }
}

void sub_1003AE438(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v6 = a4;
  v9 = a3;
  v10 = sub_10005D040(a1, a2, 1u);
  if (v10)
  {
    sub_1005048F4(v10, v9, v6, v5);
  }

  else if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_FAULT))
  {
    sub_100018384(a2, v11);
    sub_100823FA4();
  }
}

void sub_1003AE530(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a3;
  v11 = a2;
  v5 = *(a1 + 224);
  v6 = (a1 + 232);
  if (v5 != (a1 + 232))
  {
    do
    {
      if (!(*(*v5[5] + 16))(v5[5]))
      {
        v7 = v5[5];
        if (sub_1004F9F68(v7, v11))
        {
          sub_1004FBF48(v7, v11, v3);
        }
      }

      v8 = v5[1];
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = v5[2];
          v10 = *v9 == v5;
          v5 = v9;
        }

        while (!v10);
      }

      v5 = v9;
    }

    while (v9 != v6);
  }
}

void sub_1003AE630(uint64_t a1, unint64_t a2)
{
  memset(v45, 0, sizeof(v45));
  v2 = sub_10005D040(a1, a2, 2u);
  if (!v2 && os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_FAULT))
  {
    sub_100824004();
  }

  v3 = v2;
  if ((*(*v2 + 16))(v2))
  {
    if ((*(*v2 + 16))(v2) != 3)
    {
      if ((*(*v2 + 16))(v2) == 1)
      {
        v4 = qword_100BCE9E0;
        v5 = a2;
        if (os_log_type_enabled(qword_100BCE9E0, OS_LOG_TYPE_DEFAULT))
        {
          sub_100018384(a2, &__p);
          v6 = (SBYTE7(v47) & 0x80u) == 0 ? &__p : __p;
          LODWORD(buf) = 136446210;
          *(&buf + 4) = v6;
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Resurrecting Peripheral session: %{public}s", &buf, 0xCu);
          if (SBYTE7(v47) < 0)
          {
            operator delete(__p);
          }
        }

        v53 = 0;
        v54 = 0;
        if (qword_100B512F8 != -1)
        {
          sub_100823948();
          v5 = a2;
        }

        sub_1003AF2C8(off_100B512F0, v5, &v53);
        buf = 0uLL;
        v56 = 0;
        v38 = 0;
        v39 = 0;
        v40 = 0;
        sub_1003AF364(a1, v5, &buf, &v38);
        v50 = 0;
        v48 = 0u;
        v49 = 0u;
        __p = 0u;
        v47 = 0u;
        uuid_clear(uu);
        v35 = 0;
        __dst = 0;
        v37 = 0;
        if (*(&buf + 1) != buf)
        {
          sub_1000080CC(&v35, (*(&buf + 1) - buf) >> 3);
        }

        v32 = 0;
        v33 = 0;
        v34 = 0;
        sub_1003C44B0(&v32, v38, v39, 0x8E38E38E38E38E39 * ((v39 - v38) >> 1));
        sub_1003C3E8C(&__p, uu, 0, &v35, &v32);
        if (v32)
        {
          v33 = v32;
          operator delete(v32);
        }

        v7 = v35;
        if (v35)
        {
          __dst = v35;
          operator delete(v35);
        }

        sub_10004E450(v7, v3, a2, 10, 0);
        (*(**(v3 + 120) + 264))(*(v3 + 120), &__p, &v53);
        if (v49)
        {
          *(&v49 + 1) = v49;
          operator delete(v49);
        }

        if (*(&v47 + 1))
        {
          *&v48 = *(&v47 + 1);
          operator delete(*(&v47 + 1));
        }

        if (v38)
        {
          v39 = v38;
          operator delete(v38);
        }

        if (buf)
        {
          *(&buf + 1) = buf;
          operator delete(buf);
        }

        v53 = &off_100AE0AB8;
        if (v54)
        {
          sub_10000C808(v54);
        }
      }

      else if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
      {
        sub_100018384(a2, &__p);
        sub_100824038();
      }
    }
  }

  else
  {
    v8 = qword_100BCE9E0;
    if (os_log_type_enabled(qword_100BCE9E0, OS_LOG_TYPE_DEFAULT))
    {
      sub_100018384(a2, &__p);
      v9 = (SBYTE7(v47) & 0x80u) == 0 ? &__p : __p;
      LODWORD(buf) = 136446210;
      *(&buf + 4) = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Resurrecting Central session: %{public}s", &buf, 0xCu);
      if (SBYTE7(v47) < 0)
      {
        operator delete(__p);
      }
    }

    if (qword_100B512F8 != -1)
    {
      sub_100823948();
    }

    v28 = sub_1003AF130(off_100B512F0, a2);
    __p = 0uLL;
    *&v47 = 0;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    obj = *(v2 + 312);
    v10 = [obj countByEnumeratingWithState:&v41 objects:v57 count:16];
    if (v10)
    {
      v11 = *v42;
      do
      {
        v12 = 0;
        do
        {
          if (*v42 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v41 + 1) + 8 * v12);
          if (sub_1003AF1AC(a1, a2, v13))
          {
            if (qword_100B508B0 != -1)
            {
              sub_100823824();
            }

            v14 = off_100B508A8;
            sub_10004DFB4(&buf, v13);
            sub_100050290(v14, &buf);
            buf = 0uLL;
            v56 = 0;
            if (qword_100B50900 != -1)
            {
              sub_10082384C();
            }

            sub_10070B220(qword_100B508F8, v13, &buf);
            v38 = 0;
            v39 = 0;
            v40 = 0;
            if (qword_100B50900 != -1)
            {
              sub_10082384C();
            }

            sub_10070B654(qword_100B508F8, a2, v13, &v53);
            v16 = v53;
            v15 = v54;
            if (v53 != v54)
            {
              do
              {
                v17 = *v16;
                v18 = v13;
                sub_10004DFB4(uu, v18);
                v52 = v17;
                sub_1003AF258(&v38, uu);

                v16 = (v16 + 2);
              }

              while (v16 != v15);
              v16 = v53;
            }

            if (v16)
            {
              v54 = v16;
              operator delete(v16);
            }

            operator new();
          }

          v19 = qword_100BCE988;
          if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
          {
            LODWORD(buf) = 138412290;
            *(&buf + 4) = v13;
            _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Session cannot access device %@", &buf, 0xCu);
          }

          v12 = v12 + 1;
        }

        while (v12 != v10);
        v10 = [obj countByEnumeratingWithState:&v41 objects:v57 count:16];
      }

      while (v10);
    }

    sub_10004E450(v20, v2, a2, 10, 1);
    (*(**(v2 + 120) + 256))(*(v2 + 120), &__p, v28);
    v22 = *(&__p + 1);
    for (i = __p; i != v22; i += 8)
    {
      v23 = *i;
      v24 = *(*i + 24);
      v25 = *(*i + 32);
      if (v24 != v25)
      {
        do
        {
          if (*v24)
          {
            (*(**v24 + 8))(*v24);
          }

          ++v24;
        }

        while (v24 != v25);
        v23 = *i;
        if (!*i)
        {
          continue;
        }
      }

      v26 = v23[6];
      if (v26)
      {
        v23[7] = v26;
        operator delete(v26);
      }

      v27 = v23[3];
      if (v27)
      {
        v23[4] = v27;
        operator delete(v27);
      }

      operator delete();
    }

    if (v28)
    {
      sub_100028D78(v28);
      operator delete();
    }

    if (__p)
    {
      *(&__p + 1) = __p;
      operator delete(__p);
    }
  }

  v38 = v45;
  sub_1003C5088(&v38);
}

void sub_1003AEF90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, char *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57)
{
  a43 = &a40;
  sub_1003C5088(&a43);
  _Unwind_Resume(a1);
}

uint64_t sub_1003AF130(uint64_t a1, unint64_t a2)
{
  v3 = sub_10005D040(a1, a2, 0);
  if (!v3 || *(v3 + 280) != 1)
  {
    return 0;
  }

  if (qword_100B51078 != -1)
  {
    sub_100823680();
  }

  v4 = off_100B51070;

  return sub_1007A6DEC(v4, a2);
}

uint64_t sub_1003AF1AC(uint64_t a1, unint64_t a2, void *a3)
{
  v5 = a3;
  if (!a2)
  {
    goto LABEL_13;
  }

  v8 = *(a1 + 232);
  v7 = a1 + 232;
  v6 = v8;
  if (v8)
  {
    v9 = v7;
    do
    {
      v10 = *(v6 + 32);
      v11 = v10 >= a2;
      v12 = v10 < a2;
      if (v11)
      {
        v9 = v6;
      }

      v6 = *(v6 + 8 * v12);
    }

    while (v6);
    if (v9 != v7 && *(v9 + 32) <= a2)
    {
      v14 = *(v9 + 40);
      if (v14)
      {
        v13 = sub_100050B20(v14, v5);
        goto LABEL_14;
      }

LABEL_13:
      v13 = 1;
      goto LABEL_14;
    }
  }

  v13 = 0;
LABEL_14:

  return v13;
}

uint64_t sub_1003AF258(uint64_t *a1, unsigned __int8 *src)
{
  v4 = a1[1];
  if (v4 >= a1[2])
  {
    result = sub_1003C5168(a1, src);
  }

  else
  {
    uuid_copy(a1[1], src);
    *(v4 + 16) = *(src + 8);
    result = v4 + 18;
    a1[1] = v4 + 18;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_1003AF2C8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  result = sub_10005D040(a1, a2, 1u);
  if (result && *(result + 202) == 1)
  {
    if (qword_100B50C68 != -1)
    {
      sub_1008236F8();
    }

    v6 = off_100B50C60;

    return sub_10072C488(v6, a2, a3);
  }

  else
  {
    *a3 = &off_100AE0AB8;
    a3[1] = 0;
  }

  return result;
}

void sub_1003AF364(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = sub_10005D040(a1, a2, 1u);
  if (v6)
  {
    v7 = *(v6 + 200);
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    obj = *(v6 + 192);
    v8 = [obj countByEnumeratingWithState:&v21 objects:v27 count:16];
    if (!v8)
    {
      goto LABEL_17;
    }

    v9 = v7 << 16;
    v10 = *v22;
    while (1)
    {
      v11 = 0;
      do
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v21 + 1) + 8 * v11);
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v13 = [v12 unsignedShortValue];
        if (qword_100B541E8 != -1)
        {
          sub_100823970();
        }

        *dst = v9 | v13;
        v17 = sub_1004EAD78(qword_100B541E0, dst, &v18);
        if (v17)
        {
          sub_1000C2484(a3, &v17);
          v14 = v18;
          if (v18 == v19)
          {
            goto LABEL_13;
          }

          do
          {
            v15 = *(v14 + 16);
            uuid_copy(dst, v14);
            v26 = v15 & 0x7FFF;
            sub_1003AF258(a4, dst);
            v14 += 20;
          }

          while (v14 != v19);
        }

        v14 = v18;
LABEL_13:
        if (v14)
        {
          v19 = v14;
          operator delete(v14);
        }

        v11 = v11 + 1;
      }

      while (v11 != v8);
      v8 = [obj countByEnumeratingWithState:&v21 objects:v27 count:16];
      if (!v8)
      {
LABEL_17:

        return;
      }
    }
  }

  if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
  {
    sub_100824090();
  }
}

void sub_1003AF5A4(uint64_t a1, unint64_t a2, int a3)
{
  v3 = *(a1 + 232);
  if (v3)
  {
    v7 = a1 + 232;
    do
    {
      v8 = *(v3 + 32);
      v9 = v8 >= a2;
      v10 = v8 < a2;
      if (v9)
      {
        v7 = v3;
      }

      v3 = *(v3 + 8 * v10);
    }

    while (v3);
    if (v7 != a1 + 232)
    {
      v11 = *(v7 + 32);
      if (v11 <= a2)
      {
        v12 = sub_10005D040(a1, v11, 2u);
        if (!v12 && os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_FAULT))
        {
          sub_1008240CC();
        }

        v31 = 0;
        v13 = sub_10000E92C();
        sub_100007E30(buf, "LE");
        sub_100007E30(__p, "PersistUserKilledApplications");
        (*(*v13 + 72))(v13, buf, __p, &v31);
        if (v42 < 0)
        {
          operator delete(*__p);
        }

        if (SHIBYTE(v36) < 0)
        {
          operator delete(*buf);
        }

        v14 = _os_feature_enabled_impl() && !(*(*v12 + 16))(v12) && sub_1004FFBCC(v12) && sub_1004F9F74(v12);
        if (a3 && (a3 != 1 || ((v31 | v14) & 1) == 0))
        {
          goto LABEL_60;
        }

        v15 = (*(*v12 + 40))(v12);
        v16 = v15;
        if (v15)
        {
          v17 = qword_100BCE9E0;
          if (os_log_type_enabled(qword_100BCE9E0, OS_LOG_TYPE_DEFAULT))
          {
            sub_100018384(a2, __p);
            v18 = v42 >= 0 ? __p : *__p;
            *buf = 136446978;
            *&buf[4] = v18;
            v33 = 1024;
            v34 = a3;
            v35 = 1024;
            v36 = v31;
            v37 = 1024;
            v38 = v14;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Session %{public}s will be persisted, as it was performing long-term action. Kill reason %d persistUserKilledApplications:%d persistUserKilledASKApplications:%d", buf, 0x1Eu);
            if (v42 < 0)
            {
              operator delete(*__p);
            }
          }

          if (qword_100B51078 != -1)
          {
            sub_100824100();
          }

          (**off_100B51070)(off_100B51070, a2, 2);
        }

        v19 = qword_100BCE9E0;
        v20 = os_log_type_enabled(qword_100BCE9E0, OS_LOG_TYPE_DEFAULT);
        if (v20)
        {
          v22 = *(*(v7 + 40) + 88);
          *buf = 138543362;
          *&buf[4] = v22;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "appSessionTerminated:{isAlive: false, bundleId: %{public}@}", buf, 0xCu);
        }

        v23 = sub_10000EE80(v20, v21);
        (*(*v23 + 72))(v23, *(*(v7 + 40) + 88), 0);
        if ((v16 & 1) == 0)
        {
LABEL_60:
          if ((*(*v12 + 40))(v12))
          {
            v24 = qword_100BCE9E0;
            if (os_log_type_enabled(qword_100BCE9E0, OS_LOG_TYPE_DEFAULT))
            {
              sub_100018384(a2, buf);
              v25 = v36 >= 0 ? buf : *buf;
              *__p = 136446466;
              *&__p[4] = v25;
              v40 = 1024;
              v41 = a3;
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Removing restorable session %{public}s due to termination reason %d", __p, 0x12u);
              if (SHIBYTE(v36) < 0)
              {
                operator delete(*buf);
              }
            }
          }

          v26 = v12[15];
          v27 = qword_100BCE9E0;
          v28 = os_log_type_enabled(qword_100BCE9E0, OS_LOG_TYPE_DEFAULT);
          if (v26)
          {
            if (v28)
            {
              sub_100018384(a2, buf);
              if (v36 >= 0)
              {
                v29 = buf;
              }

              else
              {
                v29 = *buf;
              }

              *__p = 136446210;
              *&__p[4] = v29;
              _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "skipping session %{public}s as it is still alive", __p, 0xCu);
              if (SHIBYTE(v36) < 0)
              {
                operator delete(*buf);
              }
            }
          }

          else
          {
            if (v28)
            {
              sub_100018384(a2, buf);
              v30 = v36 >= 0 ? buf : *buf;
              *__p = 136446210;
              *&__p[4] = v30;
              _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "unregistering session %{public}s as it is not longer alive", __p, 0xCu);
              if (SHIBYTE(v36) < 0)
              {
                operator delete(*buf);
              }
            }

            sub_100022CE4(a1, a2, 1);
          }
        }
      }
    }
  }
}

void sub_1003AFAE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003AFB24(uint64_t a1, unint64_t a2, int a3)
{
  v6 = *(a1 + 232);
  v4 = a1 + 232;
  v5 = v6;
  if (!v6)
  {
    goto LABEL_35;
  }

  v8 = v4;
  do
  {
    v9 = *(v5 + 32);
    v10 = v9 >= a2;
    v11 = v9 < a2;
    if (v10)
    {
      v8 = v5;
    }

    v5 = *(v5 + 8 * v11);
  }

  while (v5);
  if (v8 != v4 && *(v8 + 32) <= a2)
  {
    v12 = qword_100BCE988;
    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
    {
      sub_100018384(a2, __p);
      v13 = __p[0];
      v14 = "disabled";
      if (v22 >= 0)
      {
        v13 = __p;
      }

      if (a3)
      {
        v14 = "enabled";
      }

      *buf = 136446466;
      v24 = v13;
      v25 = 2082;
      v26 = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Registering pairing agent for session %{public}s with programmatic pairing %{public}s", buf, 0x16u);
      if (v22 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if ((*(**(v8 + 40) + 16))(*(v8 + 40)) == 3)
    {
      v15 = *(v8 + 40);
      if (v15)
      {
        v17 = *(v15 + 200);
        v16 = (v15 + 200);
        if (v17)
        {
          if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
          {
            sub_100824128();
          }
        }

        else
        {
          __p[0] = 0;
          if (qword_100B50F88 != -1)
          {
            sub_100824164();
          }

          v19 = off_100B50F80;
          v20 = sub_100011794(a2);
          if (sub_1006DB230(v19, v20, __p, v16) && os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
          {
            sub_10082418C();
          }
        }
      }
    }

    else
    {
      if (a3)
      {
        v18 = 2;
      }

      else
      {
        v18 = 1;
      }

      *(*(v8 + 40) + 32) = v18;
    }
  }

  else
  {
LABEL_35:
    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_FAULT))
    {
      sub_100823EDC();
    }
  }
}

void sub_1003AFD70(uint64_t a1, unint64_t a2, void *a3, uint64_t a4)
{
  v4 = a4;
  v7 = a3;
  if (sub_1003AFE18(a1, a2))
  {
    if (qword_100B508C0 != -1)
    {
      sub_1008236A8();
    }

    sub_1007C06E0(off_100B508B8, a2, v7, v4);
  }
}

BOOL sub_1003AFE18(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 232);
  v3 = a1 + 232;
  v4 = v5;
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = v3;
  do
  {
    v7 = *(v4 + 32);
    v8 = v7 >= a2;
    v9 = v7 < a2;
    if (v8)
    {
      v6 = v4;
    }

    v4 = *(v4 + 8 * v9);
  }

  while (v4);
  if (v6 == v3 || *(v6 + 32) > a2)
  {
LABEL_9:
    result = os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_FAULT);
    if (!result)
    {
      return result;
    }

    sub_100823EDC();
    return 0;
  }

  if (*(*(v6 + 40) + 32) == 2)
  {
    return 1;
  }

  v11 = qword_100BCE988;
  result = os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR);
  if (result)
  {
    sub_1008241C8(a2, v11);
    return 0;
  }

  return result;
}

_OWORD *sub_1003AFEE4(uint64_t a1, unint64_t a2, void *a3)
{
  v5 = a3;
  if (sub_1003AFE18(a1, a2))
  {
    if (qword_100B508C0 != -1)
    {
      sub_1008236A8();
    }

    v6 = sub_1007C0394(off_100B508B8, a2, v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_1003AFF78(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v6 = a4;
  v9 = a3;
  if (sub_1003AFE18(a1, a2))
  {
    if (qword_100B508C0 != -1)
    {
      sub_1008236A8();
    }

    sub_1007BFA80(off_100B508B8, v9, v6, v5);
  }
}

void sub_1003B0024(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = a4;
  v9 = a3;
  if (sub_1003AFE18(a1, a2))
  {
    if (qword_100B508C0 != -1)
    {
      sub_1008236A8();
    }

    sub_1007BFDAC(off_100B508B8, a2, v9, v6, a5);
  }
}

void sub_1003B00D4(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  if (qword_100B508C0 != -1)
  {
    sub_1008236A8();
  }

  v5 = off_100B508B8;

  sub_1007BE07C(v5, a2, a3);
}

uint64_t sub_1003B0130(uint64_t a1, uint64_t a2)
{
  if (qword_100B508C0 != -1)
  {
    sub_1008236A8();
  }

  v3 = off_100B508B8;

  return sub_1007C77C0(v3, a2);
}

uint64_t sub_1003B0184(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = v5;
  if (v5 && [v5 length] && (v7 = *(a1 + 224), v8 = (a1 + 232), v7 != (a1 + 232)))
  {
    v9 = 0;
    do
    {
      v10 = v7[5];
      if (!(*(*v10 + 16))(v10) && [*(v10 + 88) isEqualToString:v6] && (!a3 || *(v10 + 129) != 32))
      {
        v9 += [*(v10 + 224) count];
      }

      v11 = v7[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = v7[2];
          v13 = *v12 == v7;
          v7 = v12;
        }

        while (!v13);
      }

      v7 = v12;
    }

    while (v12 != v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void sub_1003B02AC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v93 = a3;
  v7 = a4;
  v90 = a1;
  v91 = a2;
  v92 = v7;
  v8 = sub_10005D040(a1, a2, 2u);
  if (!v8)
  {
    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
    {
      sub_100824394();
    }

    goto LABEL_124;
  }

  v94 = v8;
  v9 = (*(*v8 + 16))();
  if (v9)
  {
    if (v9 == 3)
    {
      v10 = qword_100BCE988;
      if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(v94 + 88);
        *buf = 138543618;
        *&buf[4] = v93;
        *&buf[12] = 2114;
        *&buf[14] = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "UN: connectDeviceForApp for classic  %{public}@ for %{public}@", buf, 0x16u);
      }

      sub_100504D78(v94, a2, v93, v7);
    }

    else if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
    {
      sub_100824324();
    }

    goto LABEL_124;
  }

  sub_100364300(17, a2, v93);
  v12 = *(a1 + 224);
  v95 = (v90 + 232);
  if (v12 == (v90 + 232))
  {
    v13 = 0;
  }

  else
  {
    v13 = 0;
    do
    {
      v14 = v12[5];
      if (!(*(*v14 + 2))(v14) && [v14[11] isEqualToString:*(v94 + 88)])
      {
        v101 = 0u;
        v102 = 0u;
        v99 = 0u;
        v100 = 0u;
        v15 = v14[28];
        v16 = [v15 countByEnumeratingWithState:&v99 objects:v114 count:16];
        if (v16)
        {
          v17 = *v100;
          do
          {
            v18 = 0;
            do
            {
              if (*v100 != v17)
              {
                objc_enumerationMutation(v15);
              }

              v19 = *(*(&v99 + 1) + 8 * v18);
              if (qword_100B508B0 != -1)
              {
                sub_100823824();
              }

              v20 = off_100B508A8;
              sub_10004DFB4(buf, v19);
              v13 = v13 + sub_10074738C(v20, buf);
              v18 = v18 + 1;
            }

            while (v16 != v18);
            v16 = [v15 countByEnumeratingWithState:&v99 objects:v114 count:16];
          }

          while (v16);
        }
      }

      v21 = v12[1];
      if (v21)
      {
        do
        {
          v22 = v21;
          v21 = *v21;
        }

        while (v21);
      }

      else
      {
        do
        {
          v22 = v12[2];
          v23 = *v22 == v12;
          v12 = v22;
        }

        while (!v23);
      }

      v12 = v22;
    }

    while (v22 != v95);
  }

  v24 = (v94 + 88);
  v25 = sub_1003B0184(v90, *(v94 + 88), 1);
  sub_100614BB8(v91, buf);
  if (v90 + 280 == sub_1000463C8(v90 + 272, buf))
  {
    v26 = 1;
  }

  else
  {
    sub_100614BB8(v91, &v113);
    v103 = &v113;
    v26 = v13 + 1 > *(sub_1003C5428((v90 + 272), &v113.__r_.__value_.__l.__data_, &unk_1008A9BD0, &v103) + 56);
    if (SHIBYTE(v113.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v113.__r_.__value_.__l.__data_);
    }
  }

  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
    if (!v26)
    {
      goto LABEL_43;
    }
  }

  else if (!v26)
  {
    goto LABEL_43;
  }

  sub_100614BB8(v91, buf);
  v113.__r_.__value_.__r.__words[0] = buf;
  *(sub_1003C5428((v90 + 272), buf, &unk_1008A9BD0, &v113) + 56) = v13 + 1;
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

LABEL_43:
  if (qword_100B54208 != -1)
  {
    sub_100823B20();
  }

  v27 = sub_1007F063C(qword_100B54200, *v24);
  if (v13 >= v27)
  {
    v29 = os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR);
    if (v29)
    {
      sub_10082425C();
    }

    if (*(v94 + 129) == 32)
    {
      v30 = 345;
LABEL_123:
      sub_1003B1434(v29, v91, v94, v93, v30, v13);
      goto LABEL_124;
    }

    memset(buf, 0, 56);
    sub_100007E30(&v113, [*v24 UTF8String]);
    sub_1005796B4(buf, &v113, *(v94 + 129), v93, v13, 345);
    if (SHIBYTE(v113.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v113.__r_.__value_.__l.__data_);
    }

    if (qword_100B541F8 != -1)
    {
      sub_1008237D4();
    }

    sub_10000EFDC(qword_100B541F0, buf);

    if ((buf[31] & 0x80000000) != 0)
    {
      operator delete(*&buf[8]);
    }
  }

  v31 = sub_10000C798(v27, v28);
  v32 = (*(*v31 + 360))(v31);
  if (v32 & 1) != 0 || (v34 = sub_10000C798(v32, v33), v32 = (*(*v34 + 368))(v34), (v32) || (v35 = sub_10000C798(v32, v33), v32 = (*(*v35 + 456))(v35), v32))
  {
    if (*(v94 + 129) != 32)
    {
      v32 = sub_1004F52D0(v94);
      if ((v32 & 1) == 0)
      {
        v36 = qword_100BCE988;
        if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
        {
          sub_100018384(v91, &v113);
          if ((v113.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v39 = &v113;
          }

          else
          {
            v39 = v113.__r_.__value_.__r.__words[0];
          }

          v40 = *v24;
          if (qword_100B54208 != -1)
          {
            sub_100823B20();
          }

          v41 = sub_1007F0570(qword_100B54200, v38);
          *buf = 136447234;
          *&buf[4] = v39;
          *&buf[12] = 2114;
          *&buf[14] = v93;
          *&buf[22] = 2114;
          *&buf[24] = v40;
          *&buf[32] = 1024;
          *&buf[34] = v25;
          *&buf[38] = 1024;
          *&buf[40] = v41;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Session %{public}s trying to connect to device %{public}@, total connections for bundleID %{public}@ = %d, max for this platform=%d", buf, 0x2Cu);
          if (SHIBYTE(v113.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v113.__r_.__value_.__l.__data_);
          }
        }

        if (qword_100B54208 != -1)
        {
          sub_100823B20();
        }

        v32 = sub_1007F0570(qword_100B54200, v37);
        if (v32 <= v25)
        {
          v78 = qword_100BCE988;
          v79 = os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT);
          if (v79)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_DEFAULT, "Exceeded MAX connection limit", buf, 2u);
          }

          sub_1003B1434(v79, v91, v94, v93, 309, 0);
          memset(buf, 0, 24);
          v80 = sub_100007E30(buf, [*v24 UTF8String]);
          v82 = sub_100432718(v80, v81);
          if (buf[23] >= 0)
          {
            v83 = buf;
          }

          else
          {
            v83 = *buf;
          }

          (*(*v82 + 48))(v82, 1, v83, v93);
          if ((buf[23] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }

          goto LABEL_124;
        }
      }
    }
  }

  v42 = sub_10000C798(v32, v33);
  if (!(*(*v42 + 360))(v42))
  {
    goto LABEL_102;
  }

  v43 = [v92 clientBundleID];
  if ([v92 connectionUseCase] == 327680)
  {
    if (!v43 || (v44 = [(__CFString *)v43 length], v45 = v43, !v44))
    {
      v46 = qword_100BCE988;
      v47 = os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT);
      if (v47)
      {
        sub_100018384(v91, &v113);
        v48 = SHIBYTE(v113.__r_.__value_.__r.__words[2]);
        v49 = v113.__r_.__value_.__r.__words[0];
        v50 = [v92 connectionUseCase];
        if (v48 >= 0)
        {
          v49 = &v113;
        }

        v51 = sub_100029CAC(v50);
        *buf = 136446722;
        *&buf[4] = v49;
        *&buf[12] = 2114;
        *&buf[14] = v93;
        *&buf[22] = 2082;
        *&buf[24] = v51;
        _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "Session %{public}s trying to connect to device %{public}@ without providing client bundleID for useCase %{public}s", buf, 0x20u);
        if (SHIBYTE(v113.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v113.__r_.__value_.__l.__data_);
        }
      }

      sub_1003B1434(v47, v91, v94, v93, 346, 0);

      goto LABEL_124;
    }

    goto LABEL_85;
  }

  if (*(v94 + 129) != 32)
  {
    v45 = *v24;
LABEL_85:
    v52 = v45;
    goto LABEL_86;
  }

  v52 = 0;
LABEL_86:
  v88 = v43;
  if (qword_100B508B0 != -1)
  {
    sub_100823824();
  }

  v89 = v52;
  v53 = sub_100756D10(off_100B508A8, v52, 327680);
  v54 = sub_1003B0184(v90, v52, 1);
  if (qword_100B54208 != -1)
  {
    sub_100823B20();
  }

  v55 = sub_1007F06B8(qword_100B54200, 327680);
  v56 = qword_100BCE988;
  if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
  {
    sub_100018384(v91, &v113);
    v57 = SHIBYTE(v113.__r_.__value_.__r.__words[2]);
    v58 = v113.__r_.__value_.__r.__words[0];
    v59 = [v92 connectionUseCase];
    if (v57 >= 0)
    {
      v60 = &v113;
    }

    else
    {
      v60 = v58;
    }

    if (v43)
    {
      v61 = v43;
    }

    else
    {
      v61 = @"none";
    }

    v62 = sub_100029CAC(v59);
    v63 = *v24;
    v64 = (v54 + v53);
    *buf = 136448514;
    *&buf[4] = v60;
    *&buf[12] = 2114;
    *&buf[14] = v93;
    *&buf[22] = 2112;
    *&buf[24] = v61;
    *&buf[32] = 2080;
    *&buf[34] = v62;
    *&buf[42] = 2112;
    *&buf[44] = v63;
    *&buf[52] = 2112;
    *&buf[54] = v89;
    v105 = 1024;
    v106 = v53;
    v107 = 1024;
    v108 = v54;
    v109 = 1024;
    v110 = v64;
    v111 = 1024;
    v112 = v55;
    _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "Session %{public}s trying to connect to device %{public}@ clientBundleID %@ useCase %s session bundleID %@ thirdPartyBundleID %@ indirect %d direct %d all %d max %d ", buf, 0x56u);
    if (SHIBYTE(v113.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v113.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v64 = (v54 + v53);
  }

  if (v55 <= (v54 + v53))
  {
    v75 = qword_100BCE988;
    v76 = os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT);
    if (v76)
    {
      sub_100018384(v91, &v113);
      v77 = (v113.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v113 : v113.__r_.__value_.__r.__words[0];
      *buf = 136447490;
      *&buf[4] = v77;
      *&buf[12] = 2114;
      *&buf[14] = v93;
      *&buf[22] = 1024;
      *&buf[24] = v64;
      *&buf[28] = 1024;
      *&buf[30] = v53;
      *&buf[34] = 1024;
      *&buf[36] = v54;
      *&buf[40] = 1024;
      *&buf[42] = v55;
      _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "Session %{public}s trying to connect to device %{public}@ max num connections %d (indirect %d direct %d max allowed %d) reached ", buf, 0x2Eu);
      if (SHIBYTE(v113.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v113.__r_.__value_.__l.__data_);
      }
    }

    sub_1003B1434(v76, v91, v94, v93, 347, 0);

    goto LABEL_124;
  }

LABEL_102:
  if ([v92 hideFromBTSettings])
  {
    if (qword_100B508D0 != -1)
    {
      sub_100823A10();
    }

    sub_10078DC84(off_100B508C8, v93, [v92 hideFromBTSettings]);
    v65 = *(v90 + 224);
    if (v65 != v95)
    {
      do
      {
        v66 = v65[4];
        v67 = v65[5];
        if (!(*(*v67 + 16))(v67))
        {
          v68 = v67[15];
          if (v68)
          {
            (*(*v68 + 56))(v68, v66, v93, 0);
          }
        }

        v69 = v65[1];
        if (v69)
        {
          do
          {
            v70 = v69;
            v69 = *v69;
          }

          while (v69);
        }

        else
        {
          do
          {
            v70 = v65[2];
            v23 = *v70 == v65;
            v65 = v70;
          }

          while (!v23);
        }

        v65 = v70;
      }

      while (v70 != v95);
    }
  }

  if (sub_1003B16D8(v90, v91))
  {
    v71 = qword_100BCE988;
    v29 = os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT);
    if (v29)
    {
      sub_100018384(v91, buf);
      v72 = buf[23] >= 0 ? buf : *buf;
      v73 = *(v90 + 372);
      LODWORD(v113.__r_.__value_.__l.__data_) = 136446466;
      *(v113.__r_.__value_.__r.__words + 4) = v72;
      WORD2(v113.__r_.__value_.__r.__words[1]) = 1024;
      *(&v113.__r_.__value_.__r.__words[1] + 6) = v73;
      _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "Rejecting the custom Connection Scan for %{public}s for list type %d", &v113, 0x12u);
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }

    v13 = 0;
    v30 = 343;
    goto LABEL_123;
  }

  if (*(v94 + 28) == 1)
  {
    v74 = [*v24 lowercaseString];
    if ([v74 hasPrefix:@"com.apple."])
    {
    }

    else
    {
      v84 = [v92 connectionUseCase] == 0;

      if (v84)
      {
        [v92 setConnectionUseCase:23];
      }
    }
  }

  if (qword_100B508D0 != -1)
  {
    sub_100823A10();
  }

  sub_100789AEC(off_100B508C8, v93, [v92 initPHYs]);
  if (qword_100B508D0 != -1)
  {
    sub_100823A10();
  }

  sub_100789C3C(off_100B508C8, v93, [v92 PHYOptions]);
  if (qword_100B508D0 != -1)
  {
    sub_100823A10();
  }

  sub_100789D88(off_100B508C8, v93, [v92 enableControllerBTClockUpdates]);
  if (qword_100B508D0 != -1)
  {
    sub_100823A10();
  }

  sub_100789ECC(off_100B508C8, v93, [v92 enableLESynchronizationEvent]);
  *(v94 + 184) = [v92 enableControllerBTClockUpdates];
  *(v94 + 185) = [v92 enableLESynchronizationEvent];
  v85 = [*(v94 + 224) objectForKey:v93];
  if (v85)
  {
    v86 = 1;
  }

  else
  {
    v87 = [*(v94 + 232) objectForKey:v93];
    v86 = v87 != 0;
  }

  sub_1004F5B74(v94, v91, v93, v92);
  if (!v86 && *(v94 + 28) == 1)
  {
    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEBUG))
    {
      sub_100018384(v91, buf);
      sub_1008242D4();
    }

    sub_1003B19E8(v90, v91, v93);
    if ([v92 ancsRequired])
    {
      if (qword_100B508D0 != -1)
      {
        sub_100823A10();
      }

      if (sub_1007868D4(off_100B508C8, v93))
      {
        goto LABEL_166;
      }

      if (qword_100B508D0 != -1)
      {
        sub_100823A10();
      }

      if (sub_10005063C(off_100B508C8, v93))
      {
LABEL_166:
        v96[0] = _NSConcreteStackBlock;
        v96[1] = 3221225472;
        v96[2] = sub_1003B1A98;
        v96[3] = &unk_100AF0560;
        v98 = v94;
        v97 = v93;
        sub_10005CCF8((v90 + 192), v96);
      }
    }
  }

  sub_1003AD8C8(v90, v93);
  if (*(v94 + 24) == 1 && *(v94 + 96))
  {
    sub_100078BCC(v90);
  }

LABEL_124:
}

void sub_1003B1434(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v6 = a6;
  v7 = a5;
  v10 = a4;
  sub_100364300(18, a2, v10);
  v11 = sub_1004F9F68(a3, v10);
  if ((v11 & 1) != 0 || (v7 - 341) <= 7 && ((1 << (v7 - 85)) & 0xF1) != 0 || v7 == 202)
  {
    sub_10004E450(v11, a3, a2, 10, 1);
    sub_1004FAB44(a3, v10, v7);
    v14 = sub_10000C798(v12, v13);
    if ((*(*v14 + 368))(v14))
    {
      v15 = qword_100BCE988;
      if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *&buf[4] = CFAbsoluteTimeGetCurrent() + 5.0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Adding grace period fLastGattAssertionGraceInit %f", buf, 0xCu);
      }

      *(a3 + 56) = CFAbsoluteTimeGetCurrent() + 5.0;
    }

    v21 = 0;
    v19 = 0u;
    v20 = 0u;
    *buf = 0u;
    sub_100007E30(__p, [*(a3 + 88) UTF8String]);
    sub_1005796B4(buf, __p, *(a3 + 129), v10, v6, v7);
    if (v17 < 0)
    {
      operator delete(__p[0]);
    }

    if (qword_100B541F8 != -1)
    {
      sub_1008237D4();
    }

    sub_10000EFDC(qword_100B541F0, buf);

    if (SHIBYTE(v19) < 0)
    {
      operator delete(*&buf[8]);
    }
  }
}

uint64_t sub_1003B169C(uint64_t a1)
{
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

BOOL sub_1003B16D8(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = *(a1 + 372);
  if (v3 == 2)
  {
    v22 = *(a1 + 376);
    v42 = *(a1 + 384);
    if (v22 == v42)
    {
      return 0;
    }

    while (1)
    {
      __p[1] = 0;
      v47 = 0;
      __p[0] = 0;
      if (*(v22 + 23) < 0)
      {
        sub_100008904(__p, *v22, *(v22 + 1));
      }

      else
      {
        v23 = *v22;
        v47 = *(v22 + 2);
        *__p = v23;
      }

      sub_100018384(v2, &v43);
      v24 = v45;
      v25 = v45;
      v26 = v43;
      if ((v45 & 0x80u) == 0)
      {
        v27 = &v43;
      }

      else
      {
        v27 = v43;
      }

      if ((v45 & 0x80u) != 0)
      {
        v24 = v44;
      }

      v28 = HIBYTE(v47);
      if (v47 >= 0)
      {
        v29 = __p;
      }

      else
      {
        v29 = __p[0];
      }

      if (v47 >= 0)
      {
        v30 = HIBYTE(v47);
      }

      else
      {
        v30 = __p[1];
      }

      if (v30)
      {
        v31 = v27 + v24;
        if (v24 >= v30)
        {
          v33 = *v29;
          v34 = v27;
          do
          {
            v35 = v24 - v30;
            if (v35 == -1)
            {
              break;
            }

            v36 = memchr(v34, v33, v35 + 1);
            if (!v36)
            {
              break;
            }

            v32 = v36;
            if (!memcmp(v36, v29, v30))
            {
              goto LABEL_71;
            }

            v34 = (v32 + 1);
            v24 = v31 - (v32 + 1);
          }

          while (v24 >= v30);
          v32 = v31;
LABEL_71:
          v2 = a2;
        }

        else
        {
          v32 = v27 + v24;
        }

        v15 = v32 != v31 && v32 - v27 != -1;
        if ((v25 & 0x80000000) == 0)
        {
LABEL_79:
          if (v28 < 0)
          {
            goto LABEL_86;
          }

          goto LABEL_80;
        }
      }

      else
      {
        v15 = 1;
        if ((v45 & 0x80000000) == 0)
        {
          goto LABEL_79;
        }
      }

      operator delete(v26);
      if (v47 < 0)
      {
LABEL_86:
        operator delete(__p[0]);
      }

LABEL_80:
      v22 = (v22 + 24);
      v38 = v22 == v42 || v15;
      if (v38)
      {
        return v15;
      }
    }
  }

  if (v3 != 1)
  {
    return 0;
  }

  v4 = *(a1 + 376);
  v41 = *(a1 + 384);
  if (v4 != v41)
  {
    while (1)
    {
      __p[1] = 0;
      v47 = 0;
      __p[0] = 0;
      if (*(v4 + 23) < 0)
      {
        sub_100008904(__p, *v4, *(v4 + 1));
      }

      else
      {
        v5 = *v4;
        v47 = *(v4 + 2);
        *__p = v5;
      }

      sub_100018384(v2, &v43);
      v6 = v45;
      v7 = v45;
      v8 = v43;
      if ((v45 & 0x80u) == 0)
      {
        v9 = &v43;
      }

      else
      {
        v9 = v43;
      }

      if ((v45 & 0x80u) != 0)
      {
        v6 = v44;
      }

      v10 = HIBYTE(v47);
      if (v47 >= 0)
      {
        v11 = __p;
      }

      else
      {
        v11 = __p[0];
      }

      if (v47 >= 0)
      {
        v12 = HIBYTE(v47);
      }

      else
      {
        v12 = __p[1];
      }

      if (v12)
      {
        v13 = v9 + v6;
        if (v6 >= v12)
        {
          v16 = *v11;
          v17 = v9;
          do
          {
            v18 = v6 - v12;
            if (v18 == -1)
            {
              break;
            }

            v19 = memchr(v17, v16, v18 + 1);
            if (!v19)
            {
              break;
            }

            v14 = v19;
            if (!memcmp(v19, v11, v12))
            {
              goto LABEL_29;
            }

            v17 = (v14 + 1);
            v6 = v13 - (v14 + 1);
          }

          while (v6 >= v12);
          v14 = v13;
LABEL_29:
          v2 = a2;
        }

        else
        {
          v14 = v9 + v6;
        }

        v15 = v14 == v13 || v14 - v9 == -1;
        if ((v7 & 0x80000000) == 0)
        {
LABEL_37:
          if (v10 < 0)
          {
            goto LABEL_44;
          }

          goto LABEL_38;
        }
      }

      else
      {
        v15 = 0;
        if ((v45 & 0x80000000) == 0)
        {
          goto LABEL_37;
        }
      }

      operator delete(v8);
      if (v47 < 0)
      {
LABEL_44:
        operator delete(__p[0]);
      }

LABEL_38:
      v4 = (v4 + 24);
      if (v4 == v41 || !v15)
      {
        return v15;
      }
    }
  }

  return 1;
}

void sub_1003B19C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003B19E8(os_unfair_lock_s *a1, uint64_t a2, void *a3)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1003B95EC;
  v6[3] = &unk_100AF0560;
  v7 = a3;
  v8 = a2;
  v5 = v7;
  sub_10005CCF8(a1 + 48, v6);
}

void sub_1003B1ACC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = sub_10005D040(a1, a2, 2u);
  if (!a2 || !v7 || (v10 = v9) == 0 || (*(*v9 + 16))(v9))
  {
    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
    {
      sub_10082443C();
    }

    goto LABEL_7;
  }

  if ([v8 connectionUseCase] || (objc_msgSend(v8, "useCaseList"), (v12 = objc_claimAutoreleasedReturnValue()) != 0) && (objc_msgSend(v8, "useCaseList"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "count"), v13, v12, v14))
  {
    if (qword_100B508B0 != -1)
    {
      sub_10082366C();
    }

    v11 = off_100B508A8;
    sub_10004DFB4(v21, v7);
    if (sub_100050290(v11, v21))
    {
      sub_1004F8C80(v10, a2, v7, v8);
      if (qword_100B508B0 != -1)
      {
        sub_100823824();
      }

      sub_10076B13C(off_100B508A8, v7, [v8 connectionUseCase]);
    }
  }

  else
  {
    v15 = [v10[28] objectForKey:v7];

    if (v15)
    {
      v16 = [v10[28] objectForKeyedSubscript:v7];
      [v16 setOpportunistic:{objc_msgSend(v8, "opportunistic")}];
      [v10[28] removeObjectForKey:v7];
      sub_1004F5B74(v10, a2, v7, v16);
      sub_1000C39CC(a1);
      goto LABEL_21;
    }

    v17 = [v10[29] objectForKey:v7];

    if (v17)
    {
      v16 = [v10[29] objectForKeyedSubscript:v7];
      [v16 setOpportunistic:{objc_msgSend(v8, "opportunistic")}];
      [v10[29] setObject:v16 forKeyedSubscript:v7];
LABEL_21:

      v18 = [v10[10] objectForKey:v7];

      if (v18)
      {
        if (qword_100B508B0 != -1)
        {
          sub_10082366C();
        }

        v19 = off_100B508A8;
        v20 = sub_1003ADBEC(a1, v7);
        sub_1007489DC(v19, v7, v20, 0);
      }

      goto LABEL_7;
    }

    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
    {
      sub_100018384(a2, v21);
      sub_1008243D0();
    }
  }

LABEL_7:
}

void sub_1003B1E48(os_unfair_lock_s *a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = a7;
  v8 = a6;
  v9 = a5;
  v13 = a4;
  v14 = v13;
  if (a3 && a2 && v13)
  {
    if ((*(*a3 + 16))(a3) == 3)
    {
      v15 = qword_100BCE988;
      if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
      {
        v16 = *(a3 + 88);
        v24 = 138543618;
        v25 = v14;
        v26 = 2114;
        v27 = v16;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "UN: disconnectDeviceForApp for classic  %{public}@ for %{public}@", &v24, 0x16u);
      }

      sub_100505674(a3, a2, v14, v9);
    }

    else if ((*(*a3 + 16))(a3))
    {
      if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
      {
        sub_100824478();
      }
    }

    else
    {
      v17 = [*(a3 + 224) objectForKey:v14];
      if (v17)
      {
        v18 = 1;
      }

      else
      {
        v19 = [*(a3 + 232) objectForKey:v14];
        v18 = v19 != 0;
      }

      sub_1004F9450(a3, a2, v14, v9, v8, v7);
      if (v18 && *(a3 + 28) == 1)
      {
        if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEBUG))
        {
          sub_100018384(a2, &v24);
          sub_1008244B4();
        }

        sub_1003B19E8(a1, a2, v14);
      }

      if (*(a3 + 24) == 1 && *(a3 + 96))
      {
        sub_100078BCC(a1);
      }

      v20 = [*(a3 + 80) objectForKey:v14];
      v21 = v20 == 0;

      if (!v21)
      {
        if (qword_100B508B0 != -1)
        {
          sub_100823824();
        }

        v22 = off_100B508A8;
        v23 = sub_1003ADBEC(a1, v14);
        sub_1007489DC(v22, v14, v23, 0);
      }

      sub_1003AD8C8(a1, v14);
    }
  }

  else if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
  {
    sub_100824504();
  }
}

void sub_1003B217C(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v17 = a3;
  if (a2)
  {
    v11 = *(a1 + 232);
    if (v11)
    {
      v12 = a1 + 232;
      do
      {
        v13 = *(v11 + 32);
        v14 = v13 >= a2;
        v15 = v13 < a2;
        if (v14)
        {
          v12 = v11;
        }

        v11 = *(v11 + 8 * v15);
      }

      while (v11);
      if (v12 != a1 + 232)
      {
        v16 = *(v12 + 32);
        if (v16 <= a2)
        {
          sub_1003B1E48(a1, v16, *(v12 + 40), v17, a4, a5, a6);
        }
      }
    }
  }
}

void sub_1003B2250(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = qword_100BCE988;
  if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Disconnecting device %@ for all apps", &v13, 0xCu);
  }

  v7 = *(a1 + 224);
  if (v7 != (a1 + 232))
  {
    do
    {
      v8 = v7[4];
      v9 = v7[5];
      if (!(*(*v9 + 16))(v9) || (*(*v9 + 16))(v9) == 3)
      {
        sub_1003B1E48(a1, v8, v9, v5, 1, 0, a3);
      }

      v10 = v7[1];
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
          v11 = v7[2];
          v12 = *v11 == v7;
          v7 = v11;
        }

        while (!v12);
      }

      v7 = v11;
    }

    while (v11 != (a1 + 232));
  }
}

void sub_1003B23FC(uint64_t a1, unint64_t a2, void *a3, void *a4)
{
  v9 = a3;
  v7 = a4;
  v8 = sub_10005D040(a1, a2, 0);
  if (v8)
  {
    sub_1004F52F4(v8, a2, v9, v7);
  }
}

uint64_t sub_1003B2498(uint64_t a1, unint64_t a2, void *a3, uint64_t a4)
{
  v7 = a3;
  v8 = sub_10005D040(a1, a2, 0);
  if (v8)
  {
    v9 = sub_1004F9F98(v8, a2, v7, a4);
  }

  else
  {
    v9 = 12;
  }

  return v9;
}

void sub_1003B2518(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  __p[0] = 0;
  __p[1] = 0;
  v14 = 0;
  sub_100007E30(__p, [v5 UTF8String]);
  v6 = *(a1 + 224);
  v7 = (a1 + 232);
  if (v6 != (a1 + 232))
  {
    do
    {
      v8 = v6[5];
      if (!(*(*v8 + 16))(v8))
      {
        v9 = v8[15];
        if (v9)
        {
          (*(*v9 + 248))(v9, __p, a3);
        }
      }

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

    while (v11 != v7);
  }

  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p[0]);
  }
}

uint64_t sub_1003B2664(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v9 = a3;
  v10 = a5;
  v11 = sub_10005D040(a1, a2, 0);
  if (v11)
  {
    v12 = *(a4 + 16);
    v15[0] = *a4;
    v15[1] = v12;
    v16 = *(a4 + 32);
    v13 = sub_1004FA0C0(v11, a2, v9, v15, v10);
  }

  else
  {
    v13 = 12;
  }

  return v13;
}

uint64_t sub_1003B271C(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, unsigned int a5, uint64_t a6)
{
  v11 = a4;
  v12 = sub_10005D040(a1, a2, 0);
  if (v12)
  {
    v13 = sub_1004FA170(v12, a2, a3, v11, a5, a6);
  }

  else
  {
    v13 = 12;
  }

  return v13;
}

uint64_t sub_1003B27B4(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5, __int128 *a6, uint64_t a7, void *a8)
{
  v15 = a4;
  v16 = a8;
  v17 = sub_10005D040(a1, a2, 0);
  if (v17)
  {
    v18 = a6[1];
    v21[0] = *a6;
    v21[1] = v18;
    v19 = sub_100075C6C(v17, a2, a3, v15, a5, v21, a7, v16);
  }

  else
  {
    v19 = 12;
  }

  return v19;
}

uint64_t sub_1003B2884(uint64_t a1, unint64_t a2)
{
  v3 = sub_10005D040(a1, a2, 0);
  if (!v3)
  {
    return 12;
  }

  return sub_1004FA208(v3, a2);
}

uint64_t sub_1003B28D4(uint64_t a1, unint64_t a2, void *a3)
{
  v5 = a3;
  v6 = sub_10005D040(a1, a2, 0);
  if (v6)
  {
    v7 = sub_1004FA25C(v6, a2, v5);
  }

  else
  {
    v7 = 12;
  }

  return v7;
}

uint64_t sub_1003B294C(uint64_t a1, unint64_t a2, void *a3, __int128 *a4)
{
  v7 = a3;
  v8 = sub_10005D040(a1, a2, 0);
  if (v8)
  {
    v9 = a4[1];
    v12 = *a4;
    v13[0] = v9;
    *(v13 + 10) = *(a4 + 26);
    v10 = sub_1004FA2CC(v8, a2, v7, &v12);
  }

  else
  {
    v10 = 12;
  }

  return v10;
}

uint64_t sub_1003B29E4(uint64_t a1, unint64_t a2, void *a3)
{
  v5 = a3;
  v6 = sub_10005D040(a1, a2, 0);
  if (v6)
  {
    v7 = sub_1004FA364(v6, a2, v5);
  }

  else
  {
    v7 = 12;
  }

  return v7;
}

uint64_t sub_1003B2A5C(uint64_t a1, unint64_t a2, void *a3)
{
  v5 = a3;
  v6 = sub_10005D040(a1, a2, 0);
  if (v6)
  {
    v7 = sub_1004FA3D4(v6, a2, v5);
  }

  else
  {
    v7 = 12;
  }

  return v7;
}

uint64_t sub_1003B2AD4(uint64_t a1, unint64_t a2, void *a3, __int128 *a4)
{
  v7 = a3;
  v8 = sub_10005D040(a1, a2, 0);
  if (v8)
  {
    v9 = a4[1];
    v12 = *a4;
    v13[0] = v9;
    *(v13 + 10) = *(a4 + 26);
    v10 = sub_1004FA444(v8, a2, v7, &v12);
  }

  else
  {
    v10 = 12;
  }

  return v10;
}

uint64_t sub_1003B2BA0(uint64_t a1, unint64_t a2, void *a3, uint64_t a4)
{
  v7 = a3;
  v8 = sub_10005D040(a1, a2, 0);
  if (v8)
  {
    v9 = sub_1004FA510(v8, a2, v7, a4);
  }

  else
  {
    v9 = 12;
  }

  return v9;
}

uint64_t sub_1003B2C20(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = a3;
  v10 = sub_10005D040(a1, a2, 0);
  if (v10)
  {
    v11 = sub_1004FA590(v10, a2, v9, a4, a5);
  }

  else
  {
    v11 = 12;
  }

  return v11;
}

uint64_t sub_1003B2CB0(uint64_t a1, unint64_t a2, void *a3, _OWORD *a4)
{
  v7 = a3;
  v8 = sub_10005D040(a1, a2, 0);
  *(v8 + 186) = 1;
  v9 = a4[1];
  v12[0] = *a4;
  v12[1] = v9;
  v10 = sub_1004FA618(v8, a2, v7, v12);

  return v10;
}

uint64_t sub_1003B2D3C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = sub_10005D040(a1, a2, 0);
  if (!v5)
  {
    return 12;
  }

  return sub_1004FA6A8(v5, a2, a3);
}

uint64_t sub_1003B2D94(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = a3;
  v12 = sub_10005D040(a1, a2, 0);
  *(v12 + 186) = 1;
  v13 = sub_1004FA704(v12, a2, v11, a4, a5, a6);

  return v13;
}

uint64_t sub_1003B2E28(uint64_t a1, unint64_t a2)
{
  v3 = sub_10005D040(a1, a2, 0);
  if (!v3)
  {
    return 12;
  }

  return sub_1004FA79C(v3, a2);
}

uint64_t sub_1003B2E78(uint64_t a1, unint64_t a2, void *a3)
{
  v5 = a3;
  v6 = sub_10005D040(a1, a2, 0);
  if (v6)
  {
    v7 = sub_1004FA7F0(v6, a2, v5);
  }

  else
  {
    v7 = 12;
  }

  return v7;
}

uint64_t sub_1003B2EF0(uint64_t a1, unint64_t a2, void *a3, uint64_t a4)
{
  v7 = a3;
  v8 = sub_10005D040(a1, a2, 0);
  if (v8)
  {
    v9 = sub_1004FA860(v8, a2, v7, a4);
  }

  else
  {
    v9 = 12;
  }

  return v9;
}

void sub_1003B2F70(uint64_t a1, unint64_t a2)
{
  v3 = sub_10005D040(a1, a2, 0);
  if (v3)
  {
    v4 = v3;
    if (*(v3 + 120))
    {
      v5 = *(a1 + 224);
      v6 = (a1 + 232);
      if (v5 != (a1 + 232))
      {
        do
        {
          v7 = v5[5];
          if (!(*(*v7 + 16))(v7) && *(v7 + 352) >= 1)
          {
            __p[0] = 0;
            __p[1] = 0;
            v12 = 0;
            sub_100007E30(__p, [*(v7 + 88) UTF8String]);
            (*(**(v4 + 120) + 248))(*(v4 + 120), __p, 1);
            if (SHIBYTE(v12) < 0)
            {
              operator delete(__p[0]);
            }
          }

          v8 = v5[1];
          if (v8)
          {
            do
            {
              v9 = v8;
              v8 = *v8;
            }

            while (v8);
          }

          else
          {
            do
            {
              v9 = v5[2];
              v10 = *v9 == v5;
              v5 = v9;
            }

            while (!v10);
          }

          v5 = v9;
        }

        while (v9 != v6);
      }
    }
  }
}

void sub_1003B30A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003B30BC(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, char a10, char a11, char a12, unsigned __int8 a13, char a14, char a15, __int16 a16, unsigned __int16 a17, unsigned __int16 a18, __int16 a19)
{
  v19 = a8;
  v20 = a7;
  v26 = a3;
  v27 = sub_10005D040(a1, a2, 0);
  if (v27)
  {
    if (*(v27 + 280) == 1)
    {
      v28 = a16;
      v29 = a15;
      v30 = a14;
      v31 = a13;
      v32 = a12;
      v33 = a11;
      v34 = a10;
      v35 = a9;
      if (qword_100B51088 != -1)
      {
        sub_100823E14();
        v35 = a9;
        v34 = a10;
        v33 = a11;
        v32 = a12;
        v31 = a13;
        v30 = a14;
        v29 = a15;
        v28 = a16;
      }

      HIBYTE(v38) = v32;
      BYTE2(v38) = v33;
      BYTE1(v38) = v34;
      LOBYTE(v38) = v35;
      v36 = sub_1006A24A0(qword_100B51080, a2, v26, a4, a5, a6, v20, v19, v38, v31, v30, v29, v28, a17, a18, a19);
    }

    else
    {
      if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
      {
        sub_100824540();
      }

      v36 = 17;
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
    {
      sub_10082457C();
    }

    v36 = 1;
  }

  return v36;
}

void sub_1003B3278(uint64_t a1, unint64_t a2, void *a3, uint64_t a4)
{
  v7 = a3;
  if (sub_10005D040(a1, a2, 0))
  {
    if (qword_100B51088 != -1)
    {
      sub_100823E14();
    }

    sub_1006A3C98(qword_100B51080, a2, v7, a4);
  }

  else if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
  {
    sub_1008245B8();
  }
}

uint64_t sub_1003B3334(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_10005D040(a1, a2, 1u);
  if (!v6)
  {
    return 12;
  }

  v7 = v6;
  result = sub_1005016B8(v6, a2, a3);
  if (!result)
  {
    if (*(v7 + 24) == 1)
    {
      if (*(v7 + 96))
      {
        sub_100078BCC(a1);
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1003B33AC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_10005D040(a1, a2, 1u);
  if (!v6)
  {
    return 12;
  }

  v7 = v6;
  result = sub_100501B2C(v6, a2, a3);
  if (!result)
  {
    if (*(v7 + 24) == 1)
    {
      if (*(v7 + 96))
      {
        sub_100078BCC(a1);
      }
    }

    return 0;
  }

  return result;
}

void *sub_1003B3424(void *result, uint64_t a2)
{
  v3 = result;
  v5 = result[13];
  v4 = result[14];
  if (v5 != v4)
  {
    v6 = result[13];
    while (*v6 != a2)
    {
      v6 += 8;
      v5 += 8;
      if (v6 == v4)
      {
        v5 = result[14];
        break;
      }
    }
  }

  if (v4 != v5)
  {
    v7 = (v4 - (v5 + 8));
    if (v4 != v5 + 8)
    {
      result = memmove(v5, v5 + 8, v4 - (v5 + 8));
    }

    v3[14] = &v7[v5];
    if (a2)
    {
      v8 = *(*a2 + 8);

      return v8(a2);
    }
  }

  return result;
}

void sub_1003B34F0(uint64_t a1, uint64_t a2, int a3)
{
  v6 = qword_100BCE988;
  if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
  {
    sub_100018384(a2, __p);
    v7 = v16 >= 0 ? __p : __p[0];
    *buf = 136446466;
    v18 = v7;
    v19 = 1024;
    v20 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "advertisingStoppedForSession session:%{public}s result:%d", buf, 0x12u);
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (a3 == 116)
  {
    v8 = *(a1 + 224);
    v9 = (a1 + 232);
    if (v8 != (a1 + 232))
    {
      while (1)
      {
        v11 = v8[4];
        v10 = v8[5];
        v12 = (*(*v10 + 16))(v10) == 1 && v11 == a2;
        if (v12)
        {
          break;
        }

        v13 = v8[1];
        if (v13)
        {
          do
          {
            v14 = v13;
            v13 = *v13;
          }

          while (v13);
        }

        else
        {
          do
          {
            v14 = v8[2];
            v12 = *v14 == v8;
            v8 = v14;
          }

          while (!v12);
        }

        v8 = v14;
        if (v14 == v9)
        {
          return;
        }
      }

      sub_100504638(v10);
    }
  }
}

uint64_t sub_1003B368C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_10005D040(a1, a2, 1u);
  if (!v6)
  {
    return 12;
  }

  v7 = v6;
  result = sub_100502134(v6, a2, a3, *(v6 + 24));
  if (!result)
  {
    if (*(v7 + 24) == 1)
    {
      if (*(v7 + 96))
      {
        sub_100078BCC(a1);
      }
    }

    return 0;
  }

  return result;
}

void sub_1003B3708(uint64_t a1, unint64_t a2)
{
  v4 = sub_10005D040(a1, a2, 1u);
  if (v4)
  {
    v5 = v4;
    sub_1005025C0(v4, a2);
    if (*(v5 + 24) == 1 && *(v5 + 96))
    {

      sub_100078BCC(a1);
    }
  }

  else if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
  {
    sub_1008245F4();
  }
}

uint64_t sub_1003B37AC(uint64_t a1, unint64_t a2, void *a3, uint64_t a4)
{
  v7 = a3;
  v8 = sub_10005D040(a1, a2, 2u);
  v9 = v8;
  if (v8)
  {
    v10 = (*(*v8 + 16))(v8) == 1;
    v11 = sub_100502E10(v9, a2, v7, a4, v10);
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
    {
      sub_100824630();
    }

    v11 = 3;
  }

  return v11;
}

uint64_t sub_1003B388C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (qword_100B508B0 != -1)
  {
    sub_10082366C();
  }

  v5 = sub_10074F0B8(off_100B508A8, a2, v4);

  return v5;
}

void sub_1003B38FC(uint64_t a1, unint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, unsigned __int16 *a6)
{
  v11 = sub_10005D040(a1, a2, 1u);
  if (v11)
  {

    sub_100503E0C(v11, a2, a3, a4, a5, a6);
  }

  else if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
  {
    sub_10082466C();
  }
}

void sub_1003B39A8(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = a4;
  v9 = a3;
  v10 = sub_10005D040(a1, a2, 1u);
  if (v10)
  {
    sub_100503E88(v10, a2, v9, v6, a5);
  }

  else if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
  {
    sub_1008246A8();
  }
}

void sub_1003B3A54(uint64_t a1)
{
  if (qword_100B508B0 != -1)
  {
    sub_10082366C();
  }

  v1 = sub_10076B770(off_100B508A8);
  v2 = qword_100BCE988;
  if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
  {
    v3[0] = 67109120;
    v3[1] = v1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "pauseLeConnectionManager returned %d", v3, 8u);
  }
}

void sub_1003B3B1C(uint64_t a1)
{
  if (qword_100B508B0 != -1)
  {
    sub_10082366C();
  }

  v1 = sub_100768CC0(off_100B508A8);
  v2 = qword_100BCE988;
  if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
  {
    v3[0] = 67109120;
    v3[1] = v1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "resumeConnectionManager returned %d", v3, 8u);
  }
}

void sub_1003B3BE4(uint64_t a1, uint64_t a2, int a3)
{
  if (a2 == 1)
  {
    v10 = v3;
    v11 = v4;
    v7 = sub_100007EE8(a1, a2);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1003B3C74;
    v8[3] = &unk_100ADF940;
    v8[4] = a1;
    v9 = a3;
    sub_10000D334(v7, v8);
  }
}

void sub_1003B3C74(uint64_t a1, __n128 a2)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 224);
  v5 = (v3 + 232);
  if (v4 != (v3 + 232))
  {
    a2.n128_u64[0] = 136315138;
    v21 = a2;
    do
    {
      v6 = v4[4];
      v7 = v4[5];
      v8 = *(a1 + 40);
      v9 = (*(*v7 + 16))(v7);
      if (v9 == 3)
      {
        if (!v8)
        {
          v9 = (*(*v7 + 72))(v7, v6);
        }

        if (!*(v7 + 192))
        {
          goto LABEL_27;
        }

        if (*(v7 + 39) == 1)
        {
          sub_10004E450(v9, v7, v6, 5, 1);
          (***(v7 + 192))(*(v7 + 192), 0, v8);
        }

        else
        {
          v11 = qword_100BCE988;
          if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
          {
            sub_100018384(v6, __p);
            if (v23 >= 0)
            {
              v12 = __p;
            }

            else
            {
              v12 = __p[0];
            }

            goto LABEL_25;
          }
        }

        goto LABEL_27;
      }

      v10 = (*(*v7 + 16))(v7);
      if (v10 || (v10 = sub_10005EDD8(v7), !v10) || (v10 = sub_1004FFBCC(v7), (v10 & 1) != 0))
      {
        if (v8)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v16 = qword_100BCE988;
        if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
        {
          sub_100018384(v6, __p);
          v17 = v23 >= 0 ? __p : __p[0];
          *buf = v21.n128_u32[0];
          v25 = v17;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Overriding power to off for session %s", buf, 0xCu);
          if (v23 < 0)
          {
            operator delete(__p[0]);
          }
        }
      }

      v10 = (*(*v7 + 72))(v7, v6);
      v8 = 0;
LABEL_14:
      if (*(v7 + 120))
      {
        if (*(v7 + 39) == 1)
        {
          sub_10004E450(v10, v7, v6, 5, 1);
          (*(**(v7 + 120) + 208))(*(v7 + 120), 0, v8);
        }

        else
        {
          v11 = qword_100BCE988;
          if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
          {
            sub_100018384(v6, __p);
            if (v23 >= 0)
            {
              v12 = __p;
            }

            else
            {
              v12 = __p[0];
            }

LABEL_25:
            *buf = v21.n128_u32[0];
            v25 = v12;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Session %s cannot get power state updates yet", buf, 0xCu);
            if (v23 < 0)
            {
              operator delete(__p[0]);
            }
          }
        }
      }

LABEL_27:
      v13 = v4[1];
      if (v13)
      {
        do
        {
          v14 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v14 = v4[2];
          v15 = *v14 == v4;
          v4 = v14;
        }

        while (!v15);
      }

      v4 = v14;
    }

    while (v14 != v5);
  }

  if (!*(a1 + 40))
  {
    if (qword_100B50910 != -1)
    {
      sub_100824720();
    }

    if ((*(off_100B50908 + 210) & 1) == 0)
    {
      v18 = qword_100BCE9E0;
      if (os_log_type_enabled(qword_100BCE9E0, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(__p[0]) = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Power toggled off, clearing state restoration data", __p, 2u);
      }

      v19 = +[NSFileManager defaultManager];
      v20 = sub_1003B40F0(v19);
      [v19 removeItemAtURL:v20 error:0];
    }
  }
}

id sub_1003B40F0(uint64_t a1)
{
  if (qword_100B6D360 != -1)
  {
    sub_100824748();
  }

  v2 = qword_100B6D358;

  return v2;
}

void sub_1003B4134(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = sub_100007EE8(a1, a2);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1003B41B8;
  v5[3] = &unk_100AE15D8;
  v5[4] = a1;
  v6 = v2;
  sub_10000CA94(v4, v5);
}

void sub_1003B41B8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = qword_100BCE988;
  if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 40);
    *buf = 67109120;
    *&buf[4] = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Setting AppManager denylist %d", buf, 8u);
  }

  *(v2 + 179) = *(a1 + 40);
  if (qword_100B512C8 != -1)
  {
    sub_100823A88();
  }

  if (sub_10000EE78(off_100B512C0) == 1)
  {
    LODWORD(v6) = *(a1 + 40) ^ 1;
    v7 = *(v2 + 224);
    if (v7 != (v2 + 232))
    {
      *&v5 = 136315138;
      v26 = v5;
      do
      {
        v8 = v7[5];
        v9 = *(v8 + 120);
        if (v9)
        {
          if (*(v8 + 36) == 1)
          {
            if (*(a1 + 40) == 1)
            {
              v10 = *(v8 + 37) ^ 1;
            }

            else
            {
              v10 = 0;
            }

            (*(*v9 + 216))(v9, v10 & 1);
          }

          else
          {
            v11 = v7[4];
            if (v6 == 1 && ((*(*v8 + 16))(v7[5]) || !sub_10005EDD8(v8) || (sub_1004FFBCC(v8) & 1) != 0))
            {
              v6 = 1;
            }

            else
            {
              (*(*v8 + 72))(v8, v11);
              v6 = 0;
            }

            v12 = qword_100BCE988;
            v13 = os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_INFO);
            if (v13)
            {
              sub_100018384(v11, __p);
              v14 = __p;
              if (v28 < 0)
              {
                v14 = *__p;
              }

              v15 = *(a1 + 40);
              *buf = 136315650;
              *&buf[4] = v14;
              v30 = 1024;
              v31 = v15;
              v32 = 1024;
              v33 = v6;
              _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "session %s denylist:%d powerState:%d", buf, 0x18u);
              if (v28 < 0)
              {
                operator delete(*__p);
              }
            }

            if (*(v8 + 39) == 1)
            {
              sub_10004E450(v13, v8, v11, 5, 1);
              (*(**(v8 + 120) + 208))(*(v8 + 120), 0, v6);
            }

            else
            {
              v19 = qword_100BCE988;
              if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
              {
                sub_100018384(v11, buf);
                v20 = buf;
                if (v33 < 0)
                {
                  v20 = *buf;
                }

                *__p = v26;
                *&__p[4] = v20;
                _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Session %s cannot get power state updates yet", __p, 0xCu);
                if (SHIBYTE(v33) < 0)
                {
                  operator delete(*buf);
                }
              }
            }
          }
        }

        v16 = v7[1];
        if (v16)
        {
          do
          {
            v17 = v16;
            v16 = *v16;
          }

          while (v16);
        }

        else
        {
          do
          {
            v17 = v7[2];
            v18 = *v17 == v7;
            v7 = v17;
          }

          while (!v18);
        }

        v7 = v17;
      }

      while (v17 != (v2 + 232));
    }

    if (!v6)
    {
      v22 = qword_100BCE9E0;
      if (os_log_type_enabled(qword_100BCE9E0, OS_LOG_TYPE_DEFAULT))
      {
        v23 = *(a1 + 40);
        *buf = 67109120;
        *&buf[4] = v23;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Denylist mode turned %d, clearing state restoration data", buf, 8u);
      }

      v24 = +[NSFileManager defaultManager];
      v25 = sub_1003B40F0(v24);
      [v24 removeItemAtURL:v25 error:0];

      sub_1000C39CC(v2);
    }
  }

  else
  {
    v21 = qword_100BCE988;
    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Ignoring denylist change while power is not ON", buf, 2u);
    }
  }
}

void sub_1003B4654(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_1003B47F4(a1, v3, 1);
  v5 = (a1 + 232);
  v6 = qword_100BCE988;
  if (v5 == v4)
  {
    v11 = os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR);
    if (v11)
    {
      sub_1008247D0();
    }

    v13 = sub_10000EE80(v11, v12);
    (*(*v13 + 128))(v13, v3);
  }

  else
  {
    v7 = os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_INFO);
    if (v7)
    {
      sub_100018384(v4[4], __p);
      if (v15 >= 0)
      {
        v9 = __p;
      }

      else
      {
        v9 = __p[0];
      }

      *buf = 138543618;
      v17 = v3;
      v18 = 2082;
      v19 = v9;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Dispatching queued pairing request for device %{public}@ to session %{public}s", buf, 0x16u);
      if (v15 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v10 = sub_10000EE80(v7, v8);
    (*(*v10 + 120))(v10);
  }
}

void *sub_1003B47F4(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  v6 = _os_feature_enabled_impl();
  v7 = (a1 + 232);
  v8 = *(a1 + 224);
  if (v8 == (a1 + 232))
  {
    v9 = 0;
  }

  else
  {
    v9 = v6;
  }

  if (v9 == 1)
  {
    while (1)
    {
      v10 = v8[5];
      if (!(*(*v10 + 2))(v10) && [v10[11] containsString:@"com.apple.deviceaccessd"] && (sub_1004F9F68(v10, v5) & 1) != 0)
      {
        break;
      }

      v11 = v8[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = v8[2];
          v13 = *v12 == v8;
          v8 = v12;
        }

        while (!v13);
      }

      v8 = v12;
      if (v12 == v7)
      {
        v8 = *(a1 + 224);
        goto LABEL_15;
      }
    }

LABEL_38:
    v17 = v8;
  }

  else
  {
LABEL_15:
    if (v8 == v7)
    {
      v17 = (a1 + 232);
    }

    else
    {
      v14 = (a1 + 232);
      do
      {
        v15 = v8[5];
        v16 = *(v15 + 129);
        if (v16 == 16)
        {
          v17 = v8;
          if (!(*(*v15 + 16))(v8[5]))
          {
            v17 = v14;
            if (sub_1004F9F68(v15, v5))
            {
              goto LABEL_38;
            }
          }
        }

        else if (v16 == 32 && (a3 & 1) == 0 && *(v15 + 32) == 2)
        {
          if (!(*(*v15 + 16))(v8[5]) && (sub_1004F9F68(v15, v5) & 1) != 0)
          {
            goto LABEL_38;
          }

          if (v14 == v7)
          {
            v17 = v8;
          }

          else
          {
            v17 = v14;
          }
        }

        else
        {
          v17 = v14;
        }

        v18 = v8[1];
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
            v19 = v8[2];
            v13 = *v19 == v8;
            v8 = v19;
          }

          while (!v13);
        }

        v14 = v17;
        v8 = v19;
      }

      while (v19 != v7);
    }
  }

  return v17;
}

void sub_1003B4A38()
{
  v0 = qword_100BCE988;
  if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "LeConnectionManager Paused now", v1, 2u);
  }
}

void sub_1003B4AA4()
{
  v0 = qword_100BCE988;
  if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "LeConnectionManager Active now", v1, 2u);
  }
}

void sub_1003B4B10(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a3;
  v5 = a2;
  if (v3)
  {
    sub_1003B4B88(a1, v5, 1u, v3, 1);
  }
}

void sub_1003B4B88(uint64_t a1, void *a2, unsigned int a3, unsigned int a4, int a5)
{
  v7 = a2;
  v72 = a5;
  v75 = a3 | a5;
  v76 = a3;
  if ((a3 | a5) == 1)
  {
    if (qword_100B508D0 != -1)
    {
      sub_1008236BC();
    }

    v8 = off_100B508C8;
    sub_100007E30(__p, "_CTKD_");
    v9 = sub_10004EB40(v8, v7, __p);
    if (v91 < 0)
    {
      operator delete(__p[0]);
    }

    if (qword_100B508D0 != -1)
    {
      sub_100823A10();
    }

    v10 = sub_100789938(off_100B508C8, v7);
    v11 = qword_100BCE9C0;
    if (os_log_type_enabled(qword_100BCE9C0, OS_LOG_TYPE_DEFAULT))
    {
      if (a3)
      {
        v13 = "ready";
      }

      else
      {
        v13 = "disconnected";
      }

      if (qword_100B508D0 != -1)
      {
        sub_100823A10();
      }

      sub_10004FFDC(off_100B508C8, v7, &v89);
      if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v14 = &v89;
      }

      else
      {
        v14 = v89.__r_.__value_.__r.__words[0];
      }

      if (qword_100B508D0 != -1)
      {
        sub_100823A10();
      }

      v15 = sub_100046458(off_100B508C8, v7, 1);
      v16 = sub_100777A3C(v15);
      if (qword_100B508D0 != -1)
      {
        sub_100823A10();
      }

      v17 = sub_1007868F4(off_100B508C8, v7);
      if (v17)
      {
        if (qword_100B508D0 != -1)
        {
          sub_100823A10();
        }

        v18 = sub_100046458(off_100B508C8, v7, 0);
        v19 = sub_100777A3C(v18);
      }

      else
      {
        v19 = &stru_100B0F9E0;
      }

      *buf = 136447746;
      *&buf[4] = v13;
      *&buf[12] = 2114;
      *&buf[14] = v7;
      *&buf[22] = 2082;
      *&buf[24] = v14;
      v98 = 1024;
      v99 = v10;
      v100 = 2114;
      v101 = v16;
      v102 = 2114;
      v103 = v19;
      v104 = 1024;
      v105 = a4;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Device %{public}s - {cbuuid: %{public}@, devicename: %{public}s, lmHandle: 0x%x, adv-addr: %{public}@, resolved-addr: %{public}@, result: %d}", buf, 0x40u);
      if (v17)
      {
      }

      if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v89.__r_.__value_.__l.__data_);
      }
    }

    if (v9)
    {
      sub_1003B5CA4(a1, v7, v76, a4);
    }

    if (v76)
    {
      sub_1003AD8C8(a1, v7);
    }

    v20 = *(a1 + 224);
    if (v20 != (a1 + 232))
    {
      v21 = "disconnection";
      if (v76)
      {
        v21 = "connection";
      }

      v68 = v21;
      if (v76)
      {
        v22 = 2;
      }

      else
      {
        v22 = 1;
      }

      v69 = v22;
      if (a4)
      {
        v23 = 0;
      }

      else
      {
        v23 = v76;
      }

      if (a4)
      {
        v24 = v76;
      }

      else
      {
        v24 = 0;
      }

      v70 = v23;
      v71 = v24;
      *&v12 = 67109634;
      v67 = v12;
      while (1)
      {
        v26 = v20[4];
        v25 = v20[5];
        memset(&v89, 0, sizeof(v89));
        sub_100614BB8(v26, &v89);
        if ((*(*v25 + 16))(v25) == 1)
        {
          if ((v76 & 1) == 0)
          {
            [*(v25 + 80) removeObjectForKey:v7];
            v87 = 0u;
            v88 = 0u;
            v85 = 0u;
            v86 = 0u;
            v27 = *(v25 + 192);
            v28 = [v27 countByEnumeratingWithState:&v85 objects:v96 count:16];
            if (v28)
            {
              v29 = *v86;
              do
              {
                for (i = 0; i != v28; i = i + 1)
                {
                  if (*v86 != v29)
                  {
                    objc_enumerationMutation(v27);
                  }

                  v31 = [*(v25 + 192) objectForKeyedSubscript:{*(*(&v85 + 1) + 8 * i), v67}];
                  [v31 removeObjectForKey:v7];
                }

                v28 = [v27 countByEnumeratingWithState:&v85 objects:v96 count:16];
              }

              while (v28);
            }

            if (!sub_100504730(v25, v7, 0) && *(v25 + 28) == 1)
            {
              v32 = qword_100BCE988;
              if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEBUG))
              {
                sub_100018384(v26, v92);
                v58 = v92;
                if (v95 < 0)
                {
                  v58 = *v92;
                }

                *buf = v67;
                *&buf[8] = 2082;
                *&buf[10] = v58;
                *&buf[18] = 2114;
                *&buf[20] = v7;
                _os_log_debug_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEBUG, "deviceConnectionChanged, isConnection=%d, Notifying listeners that %{public}s is not interested in %{public}@", buf, 0x1Cu);
                if (v95 < 0)
                {
                  operator delete(*v92);
                }
              }

              sub_1003B19E8(a1, v26, v7);
            }
          }

          goto LABEL_103;
        }

        if (!(*(*v25 + 16))(v25))
        {
          break;
        }

LABEL_103:
        if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v89.__r_.__value_.__l.__data_);
        }

        v55 = v20[1];
        if (v55)
        {
          do
          {
            v56 = v55;
            v55 = *v55;
          }

          while (v55);
        }

        else
        {
          do
          {
            v56 = v20[2];
            v57 = *v56 == v20;
            v20 = v56;
          }

          while (!v57);
        }

        v20 = v56;
        if (v56 == (a1 + 232))
        {
          goto LABEL_116;
        }
      }

      v33 = [*(v25 + 224) objectForKeyedSubscript:v7];
      if (sub_1004F55E0(v25))
      {
        *v92 = 0;
        if (qword_100B508B0 != -1)
        {
          sub_100823824();
        }

        v34 = off_100B508A8;
        sub_10004DFB4(buf, v7);
        v35 = sub_1000C4FCC(v34, buf, v92);
        if (v35)
        {
          v37 = sub_1000B4EFC(v35, v36);
          if (v76)
          {
            sub_100373C84(v37, *v92, a1 + 104);
          }

          else
          {
            sub_100373D58(v37, *v92, a1 + 104);
          }
        }
      }

      if (v33)
      {
        v38 = qword_100BCE988;
        if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
        {
          sub_100018384(v26, buf);
          v39 = buf;
          if (buf[23] < 0)
          {
            v39 = *buf;
          }

          *v92 = 138543618;
          *&v92[4] = v7;
          v93 = 2082;
          v94 = v39;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Dispatching connection status update for device %{public}@ to session %{public}s", v92, 0x16u);
          if ((buf[23] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }
        }

        if (v70)
        {
          memset(buf, 0, 24);
          if (qword_100B508D0 != -1)
          {
            sub_100823A10();
          }

          sub_100788FA0(off_100B508C8, v7, buf);
          v42 = sub_10000F034(v40, v41);
          sub_100068968(v84, buf);
          (*(*v42 + 704))(v42, v7, v84, 0);
          sub_10004B61C(v84, v84[1]);
          sub_1003B1434(v43, v26, v25, v7, 0, 0);
          sub_10004B61C(buf, *&buf[8]);
        }

        else
        {
          v48 = [*(v25 + 80) removeObjectForKey:v7];
          if (v76)
          {
            sub_1003B1434(v48, v26, v25, v7, a4, 0);
LABEL_102:

            goto LABEL_103;
          }

          v49 = [v33 enableAutoReconnect];
          sub_1003B5E7C(v49, v26, v25, v7, a4, v49);
          v50 = [v33 enableAutoReconnect];
          if (v50)
          {
            v52 = sub_100007EE8(v50, v51);
            v77[0] = _NSConcreteStackBlock;
            v77[1] = 3221225472;
            v77[2] = sub_1003B6118;
            v77[3] = &unk_100AF05A8;
            v80 = a1;
            v81 = v26;
            v82 = v25;
            v78 = v7;
            v83 = v72;
            v79 = v33;
            sub_10000CA94(v52, v77);
          }

          else
          {
            [*(v25 + 224) removeObjectForKey:v7];
          }
        }

        if ((*(v25 + 24) & 1) == 0 && *(v25 + 129) == 4)
        {
          if (v76)
          {
            v44 = [v33 connectionAlerts];
            if ((v44 & 1) == 0)
            {
              goto LABEL_83;
            }
          }

          else
          {
            v44 = [v33 disconnectionAlerts];
            if (!v44)
            {
LABEL_83:
              v46 = qword_100BCE988;
              if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_INFO))
              {
                sub_100018384(v26, v92);
                v47 = v92;
                if (v95 < 0)
                {
                  v47 = *v92;
                }

                *buf = 136446722;
                *&buf[4] = v68;
                *&buf[12] = 2082;
                *&buf[14] = v47;
                *&buf[22] = 2114;
                *&buf[24] = v7;
                _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_INFO, "Suppressing %{public}s alert on session %{public}s for device %{public}@", buf, 0x20u);
                if (v95 < 0)
                {
                  operator delete(*v92);
                }
              }

              goto LABEL_95;
            }
          }

          v53 = sub_10000EE80(v44, v45);
          (*(*v53 + 96))(v53, v26, v7, v69);
        }
      }

LABEL_95:
      if (*(v25 + 45) == 1)
      {
        if (qword_100B508C0 != -1)
        {
          sub_100823A38();
        }

        sub_1007BF8F0(off_100B508B8, v7, 1);
      }

      if ((v71 & 1) == 0)
      {
        v54 = *(v25 + 120);
        if (v54)
        {
          (*(*v54 + 24))(v54, 0, v7, v76);
        }
      }

      goto LABEL_102;
    }
  }

LABEL_116:
  v59 = *(a1 + 224);
  if (v59 != (a1 + 232))
  {
    do
    {
      v61 = v59[4];
      v60 = v59[5];
      if (!(*(*v60 + 2))(v60))
      {
        v62 = [v60[28] objectForKeyedSubscript:v7];
        if (v62)
        {
          if ((v75 & 1) == 0)
          {
            sub_1003B1434([v60[10] removeObjectForKey:v7], v61, v60, v7, a4, 0);
            [v60[28] removeObjectForKey:v7];
          }
        }

        else
        {
          v62 = [v60[29] objectForKey:v7];
          if (v62)
          {
            v63 = qword_100BCE988;
            if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
            {
              sub_100018384(v61, &v89);
              v64 = (v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v89 : v89.__r_.__value_.__r.__words[0];
              *buf = 138543874;
              *&buf[4] = v7;
              *&buf[12] = 2082;
              *&buf[14] = v64;
              *&buf[22] = 1024;
              *&buf[24] = v72;
              _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "Reconnecting device %{public}@ for session %{public}s linkReady %d", buf, 0x1Cu);
              if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v89.__r_.__value_.__l.__data_);
              }
            }

            [v60[29] removeObjectForKey:{v7, v67}];
            sub_1004F5B74(v60, v61, v7, v62);
          }
        }
      }

      v65 = v59[1];
      if (v65)
      {
        do
        {
          v66 = v65;
          v65 = *v65;
        }

        while (v65);
      }

      else
      {
        do
        {
          v66 = v59[2];
          v57 = *v66 == v59;
          v59 = v66;
        }

        while (!v57);
      }

      v59 = v66;
    }

    while (v66 != (a1 + 232));
  }
}

void sub_1003B578C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *__p, uint64_t a48, int a49, __int16 a50, char a51, char a52, uint64_t a53, uint64_t a54, int a55, __int16 a56, char a57, char a58)
{
  if (a52 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1003B589C(uint64_t a1, void *a2, char a3, int a4, char a5, int a6)
{
  v11 = a2;
  v13 = sub_100007EE8(v11, v12);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1003B5994;
  v15[3] = &unk_100AE15B8;
  v17 = a1;
  v14 = v11;
  v16 = v14;
  v20 = a3;
  v21 = a5;
  v18 = a4;
  v19 = a6;
  sub_10000CA94(v13, v15);
}

void sub_1003B5994(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = qword_100BCE988;
  if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 56);
    v6 = *(a1 + 57);
    v7 = *(a1 + 48);
    v8 = *(a1 + 52);
    *buf = 138544386;
    v18 = v4;
    v19 = 1024;
    v20 = v5;
    v21 = 1024;
    v22 = v7;
    v23 = 1024;
    v24 = v6;
    v25 = 1024;
    v26 = v8;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "PeerInfoCB device:%{public}@ peerVersion:%d peerFeatures:%x localVersoin:%d localFeatures:%x", buf, 0x24u);
  }

  v9 = *(v2 + 224);
  v10 = (v2 + 232);
  if (v9 != (v2 + 232))
  {
    do
    {
      v11 = v9[4];
      v12 = v9[5];
      v13 = (*(*v12 + 16))(v12);
      if (!v13)
      {
        sub_1003B5B1C(v13, v11, v12, *(a1 + 32), 0, *(a1 + 56), *(a1 + 48), *(a1 + 57), *(a1 + 52));
      }

      v14 = v9[1];
      if (v14)
      {
        do
        {
          v15 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v15 = v9[2];
          v16 = *v15 == v9;
          v9 = v15;
        }

        while (!v16);
      }

      v9 = v15;
    }

    while (v15 != v10);
  }
}

void sub_1003B5B1C(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  v9 = a5;
  v12 = a4;
  if (sub_1004F9F68(a3, v12))
  {
    v13 = qword_100BCE988;
    v14 = os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT);
    if (v14)
    {
      v15 = 138543362;
      v16 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Device %{public}@ ready for CL", &v15, 0xCu);
    }

    sub_10004E450(v14, a3, a2, 10, 1);
    sub_1004FA9A0(a3, v12, v9);
  }
}

void sub_1003B5CA4(uint64_t a1, void *a2, int a3, int a4)
{
  v7 = a2;
  if (a4)
  {
    goto LABEL_17;
  }

  if (!a3)
  {
    goto LABEL_17;
  }

  v8 = *(a1 + 224);
  v9 = (a1 + 232);
  if (v8 == (a1 + 232))
  {
    goto LABEL_17;
  }

  while ((*(*v8[5] + 16))(v8[5]))
  {
LABEL_11:
    v14 = v8[1];
    if (v14)
    {
      do
      {
        v15 = v14;
        v14 = *v14;
      }

      while (v14);
    }

    else
    {
      do
      {
        v15 = v8[2];
        v16 = *v15 == v8;
        v8 = v15;
      }

      while (!v16);
    }

    v8 = v15;
    if (v15 == v9)
    {
      goto LABEL_17;
    }
  }

  v10 = v8[5];
  v11 = [*(v10 + 224) objectForKeyedSubscript:v7];
  v12 = sub_1004F9F68(v10, v7);
  if (v11)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 != 1 || ![v11 enableTransportBridging])
  {

    goto LABEL_11;
  }

  v17 = qword_100BCE988;
  v18 = os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT);
  if (v18)
  {
    v19 = *(v10 + 88);
    v20 = 138543618;
    v21 = v7;
    v22 = 2114;
    v23 = v19;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Bridgable device %{public}@ connected for %{public}@", &v20, 0x16u);
  }

  sub_1003BE974(v18, v10, v7);

LABEL_17:
}

void sub_1003B5E7C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v10 = a4;
  v11 = qword_100BCE9B8;
  v12 = os_log_type_enabled(qword_100BCE9B8, OS_LOG_TYPE_DEFAULT);
  if (v12)
  {
    v13 = *(a3 + 88);
    v14 = "N";
    *buf = 138543874;
    if (a6)
    {
      v14 = "Y";
    }

    *&buf[4] = v10;
    *&buf[12] = 2114;
    *&buf[14] = v13;
    *&buf[22] = 2080;
    *&buf[24] = v14;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "App disconnected - {cbuuid: %{public}@, bundle: %{public}@, reconnecting: %s}", buf, 0x20u);
  }

  sub_10004E450(v12, a3, a2, 10, 1);
  sub_1004FC738(a3, v10, a5, a6);
  v17 = sub_10000C798(v15, v16);
  if ((*(*v17 + 368))(v17))
  {
    v18 = qword_100BCE988;
    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
    {
      Current = CFAbsoluteTimeGetCurrent();
      *buf = 134217984;
      *&buf[4] = Current + 5.0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Adding grace period fLastGattAssertionGraceInit %f", buf, 0xCu);
    }

    *(a3 + 56) = CFAbsoluteTimeGetCurrent() + 5.0;
  }

  v24 = 0;
  v23 = 0u;
  memset(buf, 0, sizeof(buf));
  sub_100007E30(__p, [*(a3 + 88) UTF8String]);
  sub_100579704(buf, __p, *(a3 + 129), v10, a5);
  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

  if (qword_100B541F8 != -1)
  {
    sub_1008237D4();
  }

  sub_10000EFDC(qword_100B541F0, buf);

  if (buf[31] < 0)
  {
    operator delete(*&buf[8]);
  }
}

void sub_1003B6118(void *result)
{
  v1 = result[6];
  v4 = *(v1 + 232);
  v2 = v1 + 232;
  v3 = v4;
  if (v4)
  {
    v6 = result[7];
    v7 = v2;
    do
    {
      v8 = *(v3 + 32);
      v9 = v8 >= v6;
      v10 = v8 < v6;
      if (v9)
      {
        v7 = v3;
      }

      v3 = *(v3 + 8 * v10);
    }

    while (v3);
    if (v7 != v2 && v6 >= *(v7 + 32))
    {
      [*(result[8] + 224) removeObjectForKey:result[4]];
      v11 = qword_100BCE988;
      if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
      {
        v12 = result[4];
        sub_100018384(result[7], __p);
        if (v16 >= 0)
        {
          v13 = __p;
        }

        else
        {
          v13 = __p[0];
        }

        v14 = *(result + 72);
        *buf = 138543874;
        v18 = v12;
        v19 = 2082;
        v20 = v13;
        v21 = 1024;
        v22 = v14;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Auto Reconnecting device %{public}@ for session %{public}s linkReady %d", buf, 0x1Cu);
        if (v16 < 0)
        {
          operator delete(__p[0]);
        }
      }

      sub_1004F5B74(result[8], result[7], result[4], result[5]);
    }
  }
}

void sub_1003B6270(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v11 = a3;
  v9 = sub_10005D040(a1, a2, 0);
  if (v9)
  {
    v10 = *(v9 + 120);
    if (v10)
    {
      (*(*v10 + 48))(v10, 0, v11, a4, a5);
    }
  }
}

void sub_1003B6334(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a2;
  v10 = qword_100BCE988;
  if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_INFO))
  {
    v17 = 138543362;
    v18 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Dispatching connection parameters update for device %{public}@", &v17, 0xCu);
  }

  v11 = *(a1 + 224);
  v12 = (a1 + 232);
  if (v11 != v12)
  {
    do
    {
      v13 = *(v11[5] + 120);
      if (v13)
      {
        (*(*v13 + 224))(v13, 0, v9, a3, a4, a5);
      }

      v14 = v11[1];
      if (v14)
      {
        do
        {
          v15 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v15 = v11[2];
          v16 = *v15 == v11;
          v11 = v15;
        }

        while (!v16);
      }

      v11 = v15;
    }

    while (v15 != v12);
  }
}

void sub_1003B64C0(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = a3;
  v18 = *(a1 + 232);
  v17 = a1 + 232;
  v16 = v18;
  if (!v18)
  {
    goto LABEL_9;
  }

  v19 = v17;
  do
  {
    v20 = *(v16 + 32);
    v21 = v20 >= a2;
    v22 = v20 < a2;
    if (v21)
    {
      v19 = v16;
    }

    v16 = *(v16 + 8 * v22);
  }

  while (v16);
  if (v19 != v17 && (v23 = *(v19 + 32), v23 <= a2))
  {
    v25 = qword_100BCE988;
    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_INFO))
    {
      sub_100018384(v23, __p);
      v26 = v29 >= 0 ? __p : __p[0];
      *buf = 138543618;
      v31 = v15;
      v32 = 2082;
      v33 = v26;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Dispatching leDeviceTimeSyncResponse for device %{public}@ to session %{public}s", buf, 0x16u);
      if (v29 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v27 = *(*(v19 + 40) + 120);
    if (v27)
    {
      (*(*v27 + 232))(v27, 0, v15, a4, a5, a6, a7, a8);
    }
  }

  else
  {
LABEL_9:
    v24 = qword_100BCE988;
    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_INFO))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "leDeviceTimeSyncResponse no session found", __p, 2u);
    }
  }
}

void sub_1003B66D4(uint64_t a1, void *a2, uint64_t a3)
{
  v11 = a2;
  v5 = *(a1 + 224);
  v6 = (a1 + 232);
  if (v5 != v6)
  {
    do
    {
      v7 = *(v5[5] + 120);
      if (v7)
      {
        (*(*v7 + 240))(v7, 0, v11, a3);
      }

      v8 = v5[1];
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = v5[2];
          v10 = *v9 == v5;
          v5 = v9;
        }

        while (!v10);
      }

      v5 = v9;
    }

    while (v9 != v6);
  }
}

void sub_1003B67C4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a8;
  v22 = a2;
  v15 = *(a1 + 224);
  v16 = (a1 + 232);
  if (v15 != (a1 + 232))
  {
    do
    {
      v17 = v15[5];
      v18 = *(v17 + 120);
      if (v18 && *(v17 + 184) == 1)
      {
        if (a3 == 138)
        {
          if (!(*(*v17 + 16))(v15[5]))
          {
            sub_100500E28(v17, v22, 138, a4, a5, a6, a7, v8);
            goto LABEL_8;
          }

          v18 = *(v17 + 120);
        }

        (*(*v18 + 80))(v18, 0, v22, a3, a4, a5, a6, a7, v8);
      }

LABEL_8:
      v19 = v15[1];
      if (v19)
      {
        do
        {
          v20 = v19;
          v19 = *v19;
        }

        while (v19);
      }

      else
      {
        do
        {
          v20 = v15[2];
          v21 = *v20 == v15;
          v15 = v20;
        }

        while (!v21);
      }

      v15 = v20;
    }

    while (v20 != v16);
  }
}

void sub_1003B6968(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, unsigned int a9, uint64_t a10)
{
  v23 = a2;
  v16 = *(a1 + 224);
  v17 = (a1 + 232);
  if (v16 != v17)
  {
    do
    {
      v18 = v16[5];
      v19 = *(v18 + 120);
      if (v19 && *(v18 + 185) == 1)
      {
        (*(*v19 + 88))(v19, 0, v23, a3, a4, a5, a6, 0, __PAIR64__(a9, a8), a10);
      }

      v20 = v16[1];
      if (v20)
      {
        do
        {
          v21 = v20;
          v20 = *v20;
        }

        while (v20);
      }

      else
      {
        do
        {
          v21 = v16[2];
          v22 = *v21 == v16;
          v16 = v21;
        }

        while (!v22);
      }

      v16 = v21;
    }

    while (v21 != v17);
  }
}

void sub_1003B6ABC(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v3 = v2;
  v4 = v1;
  v6 = v5;
  v7 = *(v4 + 224);
  v8 = (v4 + 232);
  if (v7 != (v4 + 232))
  {
    do
    {
      v9 = v7[5];
      v10 = *(v9 + 120);
      if (v10 && *(v9 + 186) == 1)
      {
        memcpy(__dst, v3, sizeof(__dst));
        (*(*v10 + 96))(v10, 0, v6, __dst);
      }

      v11 = v7[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = v7[2];
          v13 = *v12 == v7;
          v7 = v12;
        }

        while (!v13);
      }

      v7 = v12;
    }

    while (v12 != v8);
  }
}

void sub_1003B6C10(uint64_t a1, void *a2, uint64_t a3, unsigned int a4, unsigned int a5, unsigned int a6, uint64_t a7, char a8, char a9, char a10, char a11, char a12, __int16 a13, int a14, char a15)
{
  v30 = a2;
  v17 = *(a1 + 224);
  v18 = (a1 + 232);
  if (v17 != v18)
  {
    do
    {
      v19 = *(v17[5] + 120);
      if (v19)
      {
        BYTE4(v24) = a15;
        LODWORD(v24) = a14;
        HIWORD(v23) = a13;
        BYTE4(v23) = a12;
        BYTE3(v23) = a11;
        BYTE2(v23) = a10;
        BYTE1(v23) = a9;
        LOBYTE(v23) = a8;
        (*(*v19 + 104))(v19, 0, v30, a3, a4, a5, a6, a7, v23, v24);
      }

      v20 = v17[1];
      if (v20)
      {
        do
        {
          v21 = v20;
          v20 = *v20;
        }

        while (v20);
      }

      else
      {
        do
        {
          v21 = v17[2];
          v22 = *v21 == v17;
          v17 = v21;
        }

        while (!v22);
      }

      v17 = v21;
    }

    while (v21 != v18);
  }
}

void sub_1003B6DAC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v19 = a2;
  v13 = *(a1 + 224);
  v14 = (a1 + 232);
  if (v13 != v14)
  {
    do
    {
      v15 = *(v13[5] + 120);
      if (v15)
      {
        (*(*v15 + 112))(v15, 0, v19, a3, a4, a5, a6, a7);
      }

      v16 = v13[1];
      if (v16)
      {
        do
        {
          v17 = v16;
          v16 = *v16;
        }

        while (v16);
      }

      else
      {
        do
        {
          v17 = v13[2];
          v18 = *v17 == v13;
          v13 = v17;
        }

        while (!v18);
      }

      v13 = v17;
    }

    while (v17 != v14);
  }
}

void sub_1003B6ECC(uint64_t a1, void *a2, _OWORD *a3, uint64_t a4)
{
  v7 = a2;
  v8 = *(a1 + 224);
  v9 = (a1 + 232);
  if (v8 != (a1 + 232))
  {
    do
    {
      v10 = v8[5];
      if (*(v10 + 120))
      {
        v11 = v8[4];
        if (qword_100B508B0 != -1)
        {
          sub_100823824();
        }

        v12 = off_100B508A8;
        sub_10004DFB4(v18, v7);
        if (sub_100077F24(v12, v11, v18))
        {
          v13 = *(v10 + 120);
          v14 = a3[1];
          v18[0] = *a3;
          v18[1] = v14;
          (*(*v13 + 120))(v13, 0, v7, v18, a4);
        }
      }

      v15 = v8[1];
      if (v15)
      {
        do
        {
          v16 = v15;
          v15 = *v15;
        }

        while (v15);
      }

      else
      {
        do
        {
          v16 = v8[2];
          v17 = *v16 == v8;
          v8 = v16;
        }

        while (!v17);
      }

      v8 = v16;
    }

    while (v16 != v9);
  }
}

void sub_1003B7054(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a1 + 232);
  v5 = a1 + 232;
  v6 = v7;
  if (v7)
  {
    v10 = a3;
    v12 = v5;
    do
    {
      v13 = *(v6 + 32);
      v14 = v13 >= a2;
      v15 = v13 < a2;
      if (v14)
      {
        v12 = v6;
      }

      v6 = *(v6 + 8 * v15);
    }

    while (v6);
    if (v12 != v5 && *(v12 + 32) <= a2 && !(*(**(v12 + 40) + 16))(*(v12 + 40)))
    {
      v16 = *(v12 + 40);
      v17 = qword_100BCE988;
      v18 = os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT);
      if (v18)
      {
        sub_100018384(a2, __p);
        if (v21 >= 0)
        {
          v19 = __p;
        }

        else
        {
          v19 = __p[0];
        }

        *buf = 136446978;
        v23 = v19;
        v24 = 1024;
        v25 = v10;
        v26 = 2048;
        v27 = a4;
        v28 = 2048;
        v29 = a5;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "leScanComplete session %{public}s result=%d totalRXTimeMS:%llu BtMCRxTimeMS:%llu", buf, 0x26u);
        if (v21 < 0)
        {
          operator delete(__p[0]);
        }
      }

      sub_10004E450(v18, v16, a2, 10, 0);
      sub_1004FBCE0(v16, a2, v10, a4);
    }
  }
}

void *sub_1003B7204(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result[28];
  v4 = result + 29;
  if (v3 != result + 29)
  {
    do
    {
      v7 = v3[5];
      result = (*(*v7 + 16))(v7);
      if (!result)
      {
        result = v7[15];
        if (result)
        {
          result = (*(*result + 64))(result, 0, a2, a3);
        }
      }

      v8 = v3[1];
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = v3[2];
          v10 = *v9 == v3;
          v3 = v9;
        }

        while (!v10);
      }

      v3 = v9;
    }

    while (v9 != v4);
  }

  return result;
}

void sub_1003B72F0()
{
  v0 = qword_100BCE988;
  if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "LE Scans Paused", v1, 2u);
  }
}

void sub_1003B735C()
{
  v0 = qword_100BCE988;
  if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "LE Scans Resumed", v1, 2u);
  }
}

void sub_1003B73C8(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = a3;
  v10 = qword_100BCE988;
  if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138543874;
    v20 = v9;
    v21 = 1024;
    v22 = a4;
    v23 = 1024;
    v24 = a5;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "notifyLeSensorStateChanged: device: %{public}@, state: %d, type: %d", &v19, 0x18u);
  }

  v13 = *(a1 + 232);
  v12 = a1 + 232;
  v11 = v13;
  if (v13)
  {
    v14 = v12;
    do
    {
      v15 = *(v11 + 32);
      v16 = v15 >= a2;
      v17 = v15 < a2;
      if (v16)
      {
        v14 = v11;
      }

      v11 = *(v11 + 8 * v17);
    }

    while (v11);
    if (v14 != v12 && *(v14 + 32) <= a2 && !(*(**(v14 + 40) + 16))(*(v14 + 40)))
    {
      v18 = *(v14 + 40);
      if (*(v18 + 280) == 1)
      {
        (*(**(v18 + 120) + 288))(*(v18 + 120), a2, v9, a4, a5);
      }
    }
  }
}

void sub_1003B7578(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = a2;
  v14 = *(a1 + 232);
  v13 = a1 + 232;
  v12 = v14;
  if (!v14)
  {
    goto LABEL_10;
  }

  v15 = v13;
  do
  {
    v16 = *(v12 + 32);
    v17 = v16 >= a3;
    v18 = v16 < a3;
    if (v17)
    {
      v15 = v12;
    }

    v12 = *(v12 + 8 * v18);
  }

  while (v12);
  if (v15 == v13 || *(v15 + 32) > a3 || (*(**(v15 + 40) + 16))(*(v15 + 40)))
  {
LABEL_10:
    v19 = qword_100BCE988;
    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_INFO))
    {
      LOWORD(__p[0]) = 0;
      v20 = "Received GATT command complete for unregistered central session";
      v21 = __p;
      v22 = v19;
      v23 = 2;
LABEL_12:
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, v20, v21, v23);
    }
  }

  else
  {
    v24 = *(v15 + 40);
    v25 = sub_1004F9F68(v24, v11);
    if (v25)
    {
      if (*(v24 + 120))
      {
        sub_10004E450(v25, v24, a3, 10, 1);
        (*(**(v24 + 120) + 168))(*(v24 + 120), 0, v11, a4, a5, a6);
      }
    }

    else
    {
      v26 = qword_100BCE988;
      if (!os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_INFO))
      {
        goto LABEL_13;
      }

      if (!a3)
      {
        *buf = 136446210;
        v31 = "NULL";
        v20 = "Received GATT command complete for session %{public}s with unknown device";
        v21 = buf;
        v22 = v26;
        v23 = 12;
        goto LABEL_12;
      }

      sub_100018384(a3, __p);
      if (v29 >= 0)
      {
        v27 = __p;
      }

      else
      {
        v27 = __p[0];
      }

      *buf = 136446210;
      v31 = v27;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Received GATT command complete for session %{public}s with unknown device", buf, 0xCu);
      if (v29 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

LABEL_13:
}

void sub_1003B7804(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = a2;
  v14 = *(a1 + 232);
  v13 = a1 + 232;
  v12 = v14;
  if (v14)
  {
    v15 = v13;
    do
    {
      v16 = *(v12 + 32);
      v17 = v16 >= a3;
      v18 = v16 < a3;
      if (v17)
      {
        v15 = v12;
      }

      v12 = *(v12 + 8 * v18);
    }

    while (v12);
    if (v15 != v13 && *(v15 + 32) <= a3 && !(*(**(v15 + 40) + 16))(*(v15 + 40)))
    {
      v20 = *(v15 + 40);
      v21 = [*(v20 + 224) objectForKeyedSubscript:v11];
      v22 = v21;
      if (v21)
      {
        if ((*(v20 + 24) & 1) != 0 || (v23 = *(v20 + 129), (v23 & 0x30) != 0))
        {
          v24 = qword_100BCE988;
          v25 = os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_INFO);
          if (v25)
          {
            sub_100018384(a3, __p);
            v26 = v40 >= 0 ? __p : __p[0];
            *buf = 138543618;
            v42 = v11;
            v43 = 2082;
            v44 = v26;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Dispatching GATT indication for device %{public}@ to session %{public}s", buf, 0x16u);
            if (v40 < 0)
            {
              operator delete(__p[0]);
            }
          }

          if (sub_10004E450(v25, v20, a3, 10, 1))
          {
            v27 = *(v20 + 129);
            if (v27 == 8 || v27 == 4)
            {
              (*(**(v20 + 120) + 128))(*(v20 + 120), 0, v11, 1, 10, 0);
            }
          }

          sub_1004FE798(v20, v11, a4, a5, a6, 0);
          goto LABEL_45;
        }

        if (v23 != 2)
        {
          v34 = [v21 notificationAlerts];
          if (v34)
          {
            v36 = sub_10000EE80(v34, v35);
            (*(*v36 + 96))(v36, a3, v11, 3);
            goto LABEL_45;
          }

          v37 = qword_100BCE988;
          if (!os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_INFO))
          {
            goto LABEL_45;
          }

          sub_100018384(a3, __p);
          if (v40 >= 0)
          {
            v38 = __p;
          }

          else
          {
            v38 = __p[0];
          }

          *buf = 138543618;
          v42 = v11;
          v43 = 2082;
          v44 = v38;
          v31 = "Ignoring indication for device %{public}@ on suspended session %{public}s ";
          v32 = v37;
          v33 = 22;
LABEL_35:
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, v31, buf, v33);
          if (v40 < 0)
          {
            operator delete(__p[0]);
          }
        }
      }

      else
      {
        v29 = qword_100BCE988;
        if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_INFO))
        {
          sub_100018384(a3, __p);
          if (v40 >= 0)
          {
            v30 = __p;
          }

          else
          {
            v30 = __p[0];
          }

          *buf = 136446210;
          v42 = v30;
          v31 = "Received GATT indication for session %{public}s with unknown device";
          v32 = v29;
          v33 = 12;
          goto LABEL_35;
        }
      }

LABEL_45:

      goto LABEL_12;
    }
  }

  v19 = qword_100BCE988;
  if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_INFO))
  {
    LOWORD(__p[0]) = 0;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Received GATT indication for unregistered central session", __p, 2u);
  }

LABEL_12:
}

void sub_1003B7C04(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 224);
  if (v4 != (a1 + 232))
  {
    do
    {
      if (!(*(*v4[5] + 16))(v4[5]))
      {
        v8 = v4[5];
        if (*(v8 + 120))
        {
          v9 = v4[4];
          if (sub_1004F9F68(v4[5], v3))
          {
            v10 = qword_100BCE988;
            if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_INFO))
            {
              sub_100018384(v9, __p);
              v11 = __p;
              if (v13 < 0)
              {
                v11 = __p[0];
              }

              *buf = 138543618;
              v15 = v3;
              v16 = 2082;
              v17 = v11;
              _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Dispatching GAP name update for device %{public}@ to session %{public}s", buf, 0x16u);
              if (v13 < 0)
              {
                operator delete(__p[0]);
              }
            }

            (*(**(v8 + 120) + 32))(*(v8 + 120), 0, v3);
          }
        }
      }

      v5 = v4[1];
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = v4[2];
          v7 = *v6 == v4;
          v4 = v6;
        }

        while (!v7);
      }

      v4 = v6;
    }

    while (v6 != (a1 + 232));
  }
}

void sub_1003B7E14(uint64_t a1, void *a2, uint64_t *a3)
{
  v41 = a2;
  v5 = qword_100BCE988;
  if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = v41;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "GATT Device %@ services discovered", buf, 0xCu);
  }

  v6 = *(a1 + 224);
  if (v6 != (a1 + 232))
  {
    do
    {
      if (!(*(*v6[5] + 16))(v6[5]))
      {
        v8 = v6[4];
        v7 = v6[5];
        if (sub_1004F9DBC(v7, v41))
        {
          v9 = sub_1004FC1E4(v7, v41);
          if ((v9 & 1) == 0)
          {
            sub_1003B84C8(v9, v8, v7, v41, 1);
          }
        }
      }

      if ((*(*v6[5] + 16))(v6[5]) == 1 && [*(v6[5] + 208) count])
      {
        v11 = v6[4];
        v10 = v6[5];
        v44 = 0;
        v45 = 0;
        v46 = 0;
        v68 = 0;
        v66 = 0u;
        v67 = 0u;
        v64 = 0u;
        v65 = 0u;
        v62 = 0u;
        v63 = 0u;
        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        *buf = 0u;
        memset(v55, 0, sizeof(v55));
        sub_100008760(buf);
        for (i = *a3; i != a3[1]; i += 20)
        {
          v47[0] = 0;
          v47[1] = 0;
          v13 = [BTUUID UUIDWithBytes:v47 length:sub_10007A930(i, v47)];
          if ([*(v10 + 208) containsObject:v13])
          {
            v14 = v45;
            if (v45 >= v46)
            {
              v17 = 0xCCCCCCCCCCCCCCCDLL * ((v45 - v44) >> 2);
              v18 = v17 + 1;
              if (v17 + 1 > 0xCCCCCCCCCCCCCCCLL)
              {
                sub_1000C7698();
              }

              if (0x999999999999999ALL * ((v46 - v44) >> 2) > v18)
              {
                v18 = 0x999999999999999ALL * ((v46 - v44) >> 2);
              }

              if (0xCCCCCCCCCCCCCCCDLL * ((v46 - v44) >> 2) >= 0x666666666666666)
              {
                v19 = 0xCCCCCCCCCCCCCCCLL;
              }

              else
              {
                v19 = v18;
              }

              if (v19)
              {
                sub_100018404(&v44, v19);
              }

              v20 = 4 * ((v45 - v44) >> 2);
              v21 = *i;
              *(v20 + 16) = *(i + 16);
              *v20 = v21;
              v22 = v44;
              v23 = v45;
              v24 = (20 * v17 + v44 - v45);
              if (v44 != v45)
              {
                v25 = (v20 + v44 - v45);
                do
                {
                  v26 = *v22;
                  *(v25 + 4) = v22[4];
                  *v25 = v26;
                  v25 += 20;
                  v22 += 5;
                }

                while (v22 != v23);
                v22 = v44;
              }

              v16 = (v20 + 20);
              v44 = v24;
              v45 = (v20 + 20);
              v46 = 0;
              if (v22)
              {
                operator delete(v22);
              }
            }

            else
            {
              v15 = *i;
              v45[4] = *(i + 16);
              *v14 = v15;
              v16 = v14 + 5;
            }

            v45 = v16;
            sub_10003B85C(i, __p);
            if (v52 >= 0)
            {
              v27 = __p;
            }

            else
            {
              LODWORD(v27) = *__p;
            }

            if (v52 >= 0)
            {
              v28 = HIBYTE(v52);
            }

            else
            {
              v28 = *&__p[8];
            }

            v29 = sub_100007774(buf, v27, v28);
            sub_100007774(v29, " ", 1);
            if (SHIBYTE(v52) < 0)
            {
              operator delete(*__p);
            }
          }
        }

        if (v45 != v44 && *(v10 + 120))
        {
          v30 = qword_100BCE988;
          v31 = os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_INFO);
          if (v31)
          {
            std::stringbuf::str();
            v32 = v48;
            v33 = v47[0];
            sub_100018384(v11, v42);
            v34 = v47;
            if (v32 < 0)
            {
              v34 = v33;
            }

            v35 = v42;
            if (v43 < 0)
            {
              v35 = v42[0];
            }

            *__p = 136446722;
            *&__p[4] = v34;
            v50 = 2114;
            v51 = v41;
            v52 = 2082;
            v53 = v35;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "Dispatching solicited services update [%{public}s] for device %{public}@ to session %{public}s", __p, 0x20u);
            if (v43 < 0)
            {
              operator delete(v42[0]);
            }

            if (v48 < 0)
            {
              operator delete(v47[0]);
            }
          }

          sub_10004E450(v31, v10, v11, 10, 0);
          (*(**(v10 + 120) + 192))(*(v10 + 120), 0, v41, &v44);
        }

        *buf = v40;
        *&buf[*(v40 - 24)] = v39;
        if (SHIBYTE(v57) < 0)
        {
          operator delete(*(&v56 + 1));
        }

        std::locale::~locale(v55);
        std::ostream::~ostream();
        std::ios::~ios();
        if (v44)
        {
          v45 = v44;
          operator delete(v44);
        }
      }

      v36 = v6[1];
      if (v36)
      {
        do
        {
          v37 = v36;
          v36 = *v36;
        }

        while (v36);
      }

      else
      {
        do
        {
          v37 = v6[2];
          v38 = *v37 == v6;
          v6 = v37;
        }

        while (!v38);
      }

      v6 = v37;
    }

    while (v37 != (a1 + 232));
  }
}

void sub_1003B8434(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, char a37)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  sub_1003B8618(&a37);
  if (a21)
  {
    operator delete(a21);
  }

  _Unwind_Resume(a1);
}

void sub_1003B84C8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v5 = a5;
  v8 = a4;
  v9 = qword_100BCE988;
  v10 = os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    sub_100018384(a2, __p);
    if (v13 >= 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = __p[0];
    }

    *buf = 136315650;
    v15 = v11;
    v16 = 2112;
    v17 = v8;
    v18 = 1024;
    v19 = v5;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "sending connectionEvent session:%s device:%@ connected:%d", buf, 0x1Cu);
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }
  }

  sub_10004E450(v10, a3, a2, 5, 1);
  sub_1004FC1F0(a3, v8, v5);
}

uint64_t sub_1003B8618(uint64_t a1)
{
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  std::locale::~locale((a1 + 16));
  std::ostream::~ostream();
  std::ios::~ios();
  return a1;
}

void sub_1003B8740(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v13 = a2;
  v7 = *(a1 + 224);
  v8 = (a1 + 232);
  if (v7 != (a1 + 232))
  {
    do
    {
      if (!(*(*v7[5] + 16))(v7[5]))
      {
        v9 = v7[5];
        if (sub_1004F9F68(v9, v13))
        {
          sub_1004FE650(v9, v13, a3, a4);
        }
      }

      v10 = v7[1];
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
          v11 = v7[2];
          v12 = *v11 == v7;
          v7 = v11;
        }

        while (!v12);
      }

      v7 = v11;
    }

    while (v11 != v8);
  }
}

void *sub_1003B8858(void *result)
{
  v1 = result[28];
  v2 = result + 29;
  if (v1 != result + 29)
  {
    do
    {
      result = (*(*v1[5] + 16))(v1[5]);
      if (!result)
      {
        v6 = v1[5];
        result = [*(v6 + 224) count];
        if (result)
        {
          result = *(v6 + 120);
          if (result)
          {
            result = (*(*result + 200))(result, 0);
          }
        }
      }

      v3 = v1[1];
      if (v3)
      {
        do
        {
          v4 = v3;
          v3 = *v3;
        }

        while (v3);
      }

      else
      {
        do
        {
          v4 = v1[2];
          v5 = *v4 == v1;
          v1 = v4;
        }

        while (!v5);
      }

      v1 = v4;
    }

    while (v4 != v2);
  }

  return result;
}

void sub_1003B8948(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a3;
  v5 = a2;
  v11 = 0;
  v6 = sub_1003B8A48(a1, v3, &v11);
  if (v6 && v11)
  {
    v7 = *(v6 + 192);
    v8 = [NSNumber numberWithUnsignedInt:v3];
    v9 = [v7 objectForKeyedSubscript:v8];

    v10 = +[NSDate date];
    [v9 setObject:v10 forKey:v5];
  }
}

void sub_1003B8A08(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t sub_1003B8A48(uint64_t a1, unsigned int a2, void *a3)
{
  v3 = *(a1 + 224);
  v4 = (a1 + 232);
  if (v3 == (a1 + 232))
  {
    return 0;
  }

  v6 = HIWORD(a2);
  while (1)
  {
    if ((*(*v3[5] + 16))(v3[5]) == 1)
    {
      result = v3[5];
      if (v6 == *(result + 200))
      {
        break;
      }
    }

    v8 = v3[1];
    if (v8)
    {
      do
      {
        v9 = v8;
        v8 = *v8;
      }

      while (v8);
    }

    else
    {
      do
      {
        v9 = v3[2];
        v10 = *v9 == v3;
        v3 = v9;
      }

      while (!v10);
    }

    v3 = v9;
    if (v9 == v4)
    {
      return 0;
    }
  }

  if (a3)
  {
    *a3 = v3[4];
  }

  return result;
}

void *sub_1003B8B18(void *result)
{
  v1 = result[28];
  v2 = result + 29;
  if (v1 != result + 29)
  {
    do
    {
      result = (*(*v1[5] + 16))(v1[5]);
      if (result != 3)
      {
        result = *(v1[5] + 120);
        if (result)
        {
          result = (*(*result + 176))(result, 0);
        }
      }

      v3 = v1[1];
      if (v3)
      {
        do
        {
          v4 = v3;
          v3 = *v3;
        }

        while (v3);
      }

      else
      {
        do
        {
          v4 = v1[2];
          v5 = *v4 == v1;
          v1 = v4;
        }

        while (!v5);
      }

      v1 = v4;
    }

    while (v4 != v2);
  }

  return result;
}

void sub_1003B8BE8(os_unfair_lock_s *a1, void *a2, unsigned int *a3, unsigned __int16 *a4, uint64_t a5, unsigned int *a6, char a7)
{
  v13 = a2;
  v36 = 0;
  v14 = *a3;
  v15 = sub_1003B8A48(a1, *a3, &v36);
  v16 = v15;
  v17 = v36;
  if (v15)
  {
    v18 = v36 == 0;
  }

  else
  {
    v18 = 1;
  }

  if (v18)
  {
    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
    {
      sub_100824840();
    }

    if (qword_100B541E8 != -1)
    {
      sub_100823970();
    }

    v34 = &off_100AE0A78;
    v35 = 0;
    sub_1004EB290(qword_100B541E0, a6, 242, &v34, a3);
    v34 = &off_100AE0A78;
    size = v35;
    if (v35)
    {
      goto LABEL_38;
    }
  }

  else if ((*(v15 + 24) & 1) != 0 || (*(v15 + 129) & 0x30) != 0)
  {
    if (!sub_100504730(v15, v13, 1) && *(v16 + 28) == 1)
    {
      if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEBUG))
      {
        sub_100018384(v36, &v34);
        sub_10082490C();
      }

      sub_1003B19E8(a1, v36, v13);
    }

    v20 = sub_10000D26C(a5);
    if (v20)
    {
      sub_10004E450(v20, v16, v36, 10, 0);
      LODWORD(__p.__r_.__value_.__l.__data_) = v14;
      sub_100502670(v16, 0, v13, &__p, a4, a6);
      if (a7)
      {
        v23 = sub_100432718(v21, v22);
        sub_100614BB8(v36, &__p);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        v25 = *(a5 + 8);
        v31 = &off_100AE0A78;
        v32 = v25;
        if (v25)
        {
          sub_10000C69C(v25);
        }

        (*(*v23 + 40))(v23, 4, p_p, v13, &v31);
        v31 = &off_100AE0A78;
        if (v32)
        {
          sub_10000C808(v32);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      goto LABEL_39;
    }

    v26 = *a4;
    if (sub_10000C5E0(a5) >= v26)
    {
      if (qword_100B541E8 != -1)
      {
        sub_100823970();
      }

      v27 = qword_100B541E0;
      v28 = sub_10000C5F8(a5);
      v29 = *a4;
      v30 = sub_10000C5E0(a5);
      sub_10000C704(&__p, (v28 + v29), v30 - *a4);
      v33 = 0;
      sub_1004EB290(v27, a6, 0, &__p, &v33);
      __p.__r_.__value_.__r.__words[0] = &off_100AE0A78;
    }

    else
    {
      if (qword_100B541E8 != -1)
      {
        sub_100823970();
      }

      __p.__r_.__value_.__r.__words[0] = &off_100AE0A78;
      __p.__r_.__value_.__l.__size_ = 0;
      sub_1004EB290(qword_100B541E0, a6, 7, &__p, a3);
      __p.__r_.__value_.__r.__words[0] = &off_100AE0A78;
    }

    size = __p.__r_.__value_.__l.__size_;
    if (__p.__r_.__value_.__l.__size_)
    {
LABEL_38:
      sub_10000C808(size);
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
    {
      sub_100018384(v17, &v34);
      sub_1008248B0();
    }

    if (qword_100B541E8 != -1)
    {
      sub_100823970();
    }

    v38 = &off_100AE0A78;
    v39 = 0;
    sub_1004EB290(qword_100B541E0, a6, 242, &v38, a3);
    v38 = &off_100AE0A78;
    size = v39;
    if (v39)
    {
      goto LABEL_38;
    }
  }

LABEL_39:
}

void sub_1003B9128(os_unfair_lock_s *a1, void *a2, unsigned int **a3, unsigned int *a4, int a5)
{
  v9 = a2;
  v10 = *a3;
  if (*a3 == a3[1])
  {
    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_FAULT))
    {
      sub_100824A08();
    }

    if (qword_100B541E8 != -1)
    {
      sub_100823970();
    }

    v26 = &off_100AE0A78;
    v27 = 0;
    LODWORD(__p.__r_.__value_.__l.__data_) = 0;
    sub_1004EB290(qword_100B541E0, a4, 242, &v26, &__p);
LABEL_17:
    v26 = &off_100AE0A78;
    v15 = v27;
    if (!v27)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v28 = 0;
  v11 = sub_1003B8A48(a1, *v10, &v28);
  v12 = v11;
  v13 = v28;
  if (v11)
  {
    v14 = v28 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
    {
      sub_100824840();
    }

    if (qword_100B541E8 != -1)
    {
      sub_100823970();
    }

    v26 = &off_100AE0A78;
    v27 = 0;
    sub_1004EB290(qword_100B541E0, a4, 242, &v26, v10);
    goto LABEL_17;
  }

  if ((*(v11 + 24) & 1) != 0 || (*(v11 + 129) & 0x30) != 0)
  {
    v16 = sub_100504730(v11, v9, 1);
    if (!v16 && *(v12 + 28) == 1)
    {
      if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEBUG))
      {
        sub_100018384(v28, &v26);
        sub_1008249B8();
      }

      sub_1003B19E8(a1, v28, v9);
    }

    v17 = a3[1];
    while (v10 != v17)
    {
      *v10 = *v10;
      v10 += 8;
    }

    sub_10004E450(v16, v12, v28, 10, 0);
    sub_100502858(v12, 0, v9, a3, a4);
    v24 = &off_100AE0A78;
    v25 = 0;
    if (!a5)
    {
      goto LABEL_19;
    }

    v20 = sub_100432718(v18, v19);
    sub_100614BB8(v28, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v22 = &off_100AE0A78;
    v23 = v25;
    (*(*v20 + 40))(v20, 4, p_p, v9, &v22);
    v22 = &off_100AE0A78;
    if (v23)
    {
      sub_10000C808(v23);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v15 = v25;
    v24 = &off_100AE0A78;
    if (!v25)
    {
      goto LABEL_19;
    }

LABEL_18:
    sub_10000C808(v15);
    goto LABEL_19;
  }

  if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
  {
    sub_100018384(v13, &v26);
    sub_10082495C();
  }

  if (qword_100B541E8 != -1)
  {
    sub_100823970();
  }

  v30 = &off_100AE0A78;
  v31 = 0;
  sub_1004EB290(qword_100B541E0, a4, 242, &v30, v10);
  v30 = &off_100AE0A78;
  v15 = v31;
  if (v31)
  {
    goto LABEL_18;
  }

LABEL_19:
}

void sub_1003B95EC(uint64_t a1, uint64_t a2)
{
  v4 = qword_100BCE988;
  if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEBUG))
  {
    sub_100824A3C(a1, v4);
  }

  sub_100018384(*(a1 + 40), &__str);
  v5 = __p;
  sub_100018384(*(a1 + 40), __p);
  if (v14 < 0)
  {
    v5 = __p[0];
  }

  if (v14 >= 0)
  {
    v6 = v14;
  }

  else
  {
    v6 = __p[1];
  }

  v7 = v5 + v6;
  if (v6 >= 1)
  {
    v8 = v5;
    do
    {
      v9 = memchr(v8, 45, v6);
      if (!v9)
      {
        break;
      }

      if (*v9 == 45)
      {
        goto LABEL_14;
      }

      v8 = (v9 + 1);
      v6 = v7 - v8;
    }

    while (v7 - v8 > 0);
  }

  v9 = v7;
LABEL_14:
  if (v9 == v7)
  {
    v10 = -1;
  }

  else
  {
    v10 = v9 - v5;
  }

  std::string::basic_string(&v16, &__str, 0, v10, &v17);
  if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = &v16;
  }

  else
  {
    v11 = v16.__r_.__value_.__r.__words[0];
  }

  v12 = [NSString stringWithUTF8String:v11];
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  (*(*a2 + 24))(a2, v12, *(a1 + 32), 1);
}

void sub_1003B97D0(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = v2;
  if (qword_100B508D0 == -1)
  {
    v3 = v2;
  }

  else
  {
    sub_1008236BC();
    v3 = v4;
  }

  sub_100782C70(off_100B508C8, v3);
}

void sub_1003B9850(os_unfair_lock_s *a1, unsigned int *a2, void *a3, uint64_t a4)
{
  v4 = a4;
  v7 = a3;
  v15 = 0;
  v8 = *a2;
  v9 = sub_1003B8A48(a1, *a2, &v15);
  v10 = v9;
  if (v9)
  {
    v11 = v15 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
    {
      sub_100824840();
    }
  }

  else
  {
    v12 = sub_100504730(v9, v7, 1);
    if (!v12 && *(v10 + 28) == 1)
    {
      if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEBUG))
      {
        sub_100018384(v15, v14);
        sub_100824B10();
      }

      sub_1003B19E8(a1, v15, v7);
    }

    sub_10004E450(v12, v10, v15, 10, 0);
    v13 = v8;
    sub_100502B4C(v10, 0, &v13, v7, v4);
  }
}

void sub_1003B99EC(uint64_t a1, unsigned int *a2, void *a3)
{
  v5 = a3;
  v11 = 0;
  v6 = *a2;
  v7 = sub_1003B8A48(a1, *a2, &v11);
  v8 = v7;
  if (v7)
  {
    v9 = v11 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
    {
      sub_100824840();
    }
  }

  else
  {
    sub_10004E450(v7, v7, v11, 10, 0);
    v10 = v6;
    sub_100502CC4(v8, 0, &v10, v5);
  }
}

BOOL sub_1003B9ACC(uint64_t a1, void *a2, BOOL *a3)
{
  v5 = a2;
  v6 = sub_1003B47F4(a1, v5, 0);
  v7 = (a1 + 232);
  if (a3 && v7 != v6)
  {
    *a3 = *(v6[5] + 32) == 2;
  }

  v8 = v7 != v6;

  return v8;
}

void sub_1003B9B5C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v8 = sub_1003B47F4(a1, v7, 0);
  v9 = v8;
  if ((a1 + 232) == v8)
  {
    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
    {
      sub_100824C28();
    }
  }

  else
  {
    v10 = v8[5];
    if (*(v10 + 32) == 2)
    {
      v11 = qword_100BCE988;
      if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
      {
        sub_100018384(v9[4], __p);
        v12 = (SBYTE7(v20) & 0x80u) == 0 ? __p : __p[0];
        *buf = 138543618;
        v32 = v7;
        v33 = 2082;
        v34 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Dispatching programmatic pairing request for device %{public}@ to session %{public}s", buf, 0x16u);
        if (SBYTE7(v20) < 0)
        {
          operator delete(__p[0]);
        }
      }

      v13 = *(v10 + 120);
      if (v13)
      {
        (*(*v13 + 136))(v13, 0, v7, a3, a4);
      }

      else if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
      {
        sub_100018384(v9[4], __p);
        sub_100824BD0();
      }
    }

    else
    {
      v14 = qword_100BCE988;
      if (a3 == 5)
      {
        if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
        {
          sub_100824B60();
        }

        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        v21 = 0u;
        v22 = 0u;
        *__p = 0u;
        v20 = 0u;
        sub_1007B5DC4(__p, 0, 0);
        if (qword_100B508C0 != -1)
        {
          sub_100823A38();
        }

        sub_1007BFDAC(off_100B508B8, 0, v7, 0, __p);
      }

      else
      {
        v15 = os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT);
        if (v15)
        {
          sub_100018384(v9[4], __p);
          v17 = (SBYTE7(v20) & 0x80u) == 0 ? __p : __p[0];
          *buf = 138543618;
          v32 = v7;
          v33 = 2082;
          v34 = v17;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Displaying pairing request alert for device %{public}@ on behalf of session %{public}s", buf, 0x16u);
          if (SBYTE7(v20) < 0)
          {
            operator delete(__p[0]);
          }
        }

        v18 = sub_10000EE80(v15, v16);
        (*(*v18 + 112))(v18, v7, a3, a4);
        if (a3 == 1)
        {
          if (qword_100B508C0 != -1)
          {
            sub_100823A38();
          }

          sub_1007BFA80(off_100B508B8, v7, 1, a4);
        }
      }
    }
  }
}

void sub_1003B9EE4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  sub_100364300(20, 0, v5);
  v8 = sub_10000EE80(v6, v7);
  (*(*v8 + 128))(v8, v5);
  v9 = *(a1 + 224);
  v10 = (a1 + 232);
  if (v9 != (a1 + 232))
  {
    do
    {
      v11 = v9[5];
      if (*(v11 + 32))
      {
        v12 = *(v11 + 120);
        if (v12)
        {
          (*(*v12 + 144))(v12, 0, v5, a3, 0);
        }
      }

      v13 = v9[1];
      if (v13)
      {
        do
        {
          v14 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v14 = v9[2];
          v15 = *v14 == v9;
          v9 = v14;
        }

        while (!v15);
      }

      v9 = v14;
    }

    while (v14 != v10);
  }

  if (qword_100B508D0 != -1)
  {
    sub_1008236BC();
  }

  v16 = off_100B508C8;
  sub_100007E30(__p, "_CTKD_");
  v17 = sub_10004EB40(v16, v5, __p);
  if (v34 < 0)
  {
    operator delete(__p[0]);
  }

  v18 = qword_100BCE988;
  if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    *&buf[4] = v5;
    *&buf[12] = 1024;
    *&buf[14] = v17;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Pairing completed, checking if %{public}@ has tag _CTKD_ %d", buf, 0x12u);
  }

  if (v17)
  {
    if (qword_100B508B0 != -1)
    {
      sub_100823824();
    }

    v19 = off_100B508A8;
    sub_10004DFB4(buf, v5);
    v20 = sub_100050290(v19, buf);
    sub_1003B5CA4(a1, v5, v20, a3);
  }

  if (!a3)
  {
    if (qword_100B508D0 != -1)
    {
      sub_100823A10();
    }

    v21 = off_100B508C8;
    sub_100007E30(v31, "_UNPAIR_AFTER_DISCONNECTION_");
    v22 = sub_10004EB40(v21, v5, v31);
    v23 = v22;
    if (v32 < 0)
    {
      operator delete(v31[0]);
      if ((v23 & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    else if (!v22)
    {
      goto LABEL_22;
    }

    v24 = *(a1 + 224);
    if (v24 != v10)
    {
      while (1)
      {
        v25 = v24[5];
        if (!(*(*v25 + 16))(v25))
        {
          if (sub_1004F9F68(v25, v5))
          {
            break;
          }
        }

        v26 = v24[1];
        if (v26)
        {
          do
          {
            v27 = v26;
            v26 = *v26;
          }

          while (v26);
        }

        else
        {
          do
          {
            v27 = v24[2];
            v15 = *v27 == v24;
            v24 = v27;
          }

          while (!v15);
        }

        v24 = v27;
        if (v27 == v10)
        {
          goto LABEL_22;
        }
      }

      if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
      {
        sub_100018384(v24[4], v30);
        sub_100824C98(v5, v30, v38);
      }

      v37 = 0;
      v36 = 0u;
      memset(buf, 0, sizeof(buf));
      sub_100007E30(v28, [*(v25 + 88) UTF8String]);
      sub_1005796B4(buf, v28, *(v25 + 129), v5, 0, 178);
      if (v29 < 0)
      {
        operator delete(v28[0]);
      }

      if (qword_100B541F8 != -1)
      {
        sub_1008237D4();
      }

      sub_10000EFDC(qword_100B541F0, buf);

      if (buf[31] < 0)
      {
        operator delete(*&buf[8]);
      }
    }
  }

LABEL_22:
}

void sub_1003BA36C(void *a1, void *a2)
{
  v9 = a2;
  v3 = a1[28];
  if (v3 != a1 + 29)
  {
    do
    {
      v4 = v3[5];
      if (*(v4 + 32))
      {
        v5 = *(v4 + 120);
        if (v5)
        {
          (*(*v5 + 152))(v5, 0, v9);
          (*(*a1 + 64))(a1, v9, 0);
        }
      }

      v6 = v3[1];
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
          v7 = v3[2];
          v8 = *v7 == v3;
          v3 = v7;
        }

        while (!v8);
      }

      v3 = v7;
    }

    while (v7 != a1 + 29);
  }
}

void sub_1003BA48C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 224);
  v7 = (a1 + 232);
  if (v6 != (a1 + 232))
  {
    do
    {
      if (!(*(*v6[5] + 16))(v6[5]))
      {
        v11 = v6[5];
        if (*(v11 + 120))
        {
          if (sub_1004F9F68(v6[5], v5))
          {
            (*(**(v11 + 120) + 160))(*(v11 + 120), 0, v5, a3);
            if (sub_1004F9DBC(v11, v5))
            {
              v12 = sub_1004FC1E4(v11, v5);
              if ((v12 & 1) == 0)
              {
                sub_1003B84C8(v12, v6[4], v11, v5, 1);
              }
            }
          }
        }
      }

      v8 = v6[1];
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = v6[2];
          v10 = *v9 == v6;
          v6 = v9;
        }

        while (!v10);
      }

      v6 = v9;
    }

    while (v9 != v7);
  }

  if (a3)
  {
    if (qword_100B508D0 != -1)
    {
      sub_1008236BC();
    }

    v13 = sub_1000500A0(off_100B508C8, v5);

    if (v13)
    {
      v14 = qword_100BCE988;
      if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_INFO))
      {
        v15 = 138412290;
        v16 = v5;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Resetting FindMy invalid LTK's for device %@", &v15, 0xCu);
      }

      if (qword_100B508D0 != -1)
      {
        sub_100823A10();
      }

      sub_100790A24(off_100B508C8, v5);
    }
  }
}

void sub_1003BA6D4(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = mach_continuous_time() * *(a1 + 184) / *(a1 + 188) / 0x3B9ACA00;
    v4 = qword_100BCE988;
    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 134217984;
      v8 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "System Keybag was unlocked, boot time is %lld sec", &v7, 0xCu);
    }

    v5 = sub_100017E6C();
    sub_10038AB2C(v5 + 464, a1 + 80);
    if (*(a1 + 312) == 1)
    {
      v6 = qword_100BCE988;
      if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v7) = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "System Keybag was unlocked but buddyHasNotCompleted is true", &v7, 2u);
      }
    }

    else
    {
      sub_1003BA840(a1, v3);
    }
  }

  else if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
  {
    sub_100824D18();
  }
}

void sub_1003BA840(uint64_t a1, unint64_t a2)
{
  v4 = sub_1003B40F0(a1);
  v5 = qword_100BCE9E0;
  if (os_log_type_enabled(qword_100BCE9E0, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 absoluteString];
    *buf = 138412290;
    v29 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Reading state restoration data after unlock at %@", buf, 0xCu);
  }

  v7 = +[NSFileManager defaultManager];
  v8 = [v4 URLByDeletingLastPathComponent];
  v27 = 0;
  v9 = [v7 createDirectoryAtURL:v8 withIntermediateDirectories:1 attributes:0 error:&v27];
  v10 = v27;

  if ((v9 & 1) == 0 && os_log_type_enabled(qword_100BCE9E0, OS_LOG_TYPE_ERROR))
  {
    sub_100824D54();
  }

  v11 = +[NSFileManager defaultManager];
  v12 = sub_1003B40F0(v11);
  v13 = [v12 path];
  v14 = [v11 fileExistsAtPath:v13];

  if (v14)
  {
    v16 = sub_1003B40F0(v15);
    v17 = [NSDictionary dictionaryWithContentsOfURL:v16];

    if (a2 < 0x12D)
    {
      v23 = sub_100007EE8(v18, v19);
      v24 = 1000 * word_100B541DC;
      v22 = v25;
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_1003BB908;
      v25[3] = &unk_100AE1200;
      v25[5] = a1;
      v25[4] = v17;
      sub_10008E008(v23, v24, v25);
    }

    else
    {
      v20 = sub_100007EE8(v18, v19);
      v21 = 1000 * word_100B541DE;
      v22 = v26;
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_1003BABF4;
      v26[3] = &unk_100AE1200;
      v26[5] = a1;
      v26[4] = v17;
      sub_10008E008(v20, v21, v26);
    }
  }

  else if (os_log_type_enabled(qword_100BCE9E0, OS_LOG_TYPE_ERROR))
  {
    sub_100824DC4();
  }
}

void sub_1003BAC00(uint64_t a1, void *a2)
{
  v11 = a2;
  v13 = [v11 objectForKey:@"centralSessions"];
  v12 = [v11 objectForKey:@"peripheralSessions"];
  sub_10000EE80(v12, v2);
  v3 = qword_100BCE9E0;
  if (os_log_type_enabled(qword_100BCE9E0, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [v13 allKeys];
    v5 = [v12 allKeys];
    buf[0] = 138543618;
    *&buf[1] = v4;
    v19 = 2114;
    v20 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "RestoreAppSessions - Central:%{public}@ - Peripheral:%{public}@", buf, 0x16u);
  }

  memset(v16, 0, sizeof(v16));
  obj = v13;
  if ([obj countByEnumeratingWithState:v16 objects:v21 count:16])
  {
    v6 = **(&v16[0] + 1);
    v7 = qword_100BCE9E0;
    if (os_log_type_enabled(qword_100BCE9E0, OS_LOG_TYPE_DEFAULT))
    {
      buf[0] = 138543362;
      *&buf[1] = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Restoring session for %{public}@", buf, 0xCu);
    }

    operator new();
  }

  memset(v15, 0, sizeof(v15));
  v8 = v12;
  if ([v8 countByEnumeratingWithState:v15 objects:v17 count:16])
  {
    v9 = **(&v15[0] + 1);
    v10 = qword_100BCE9E0;
    if (os_log_type_enabled(qword_100BCE9E0, OS_LOG_TYPE_DEFAULT))
    {
      buf[0] = 138543362;
      *&buf[1] = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Restoring Peripheral session for %{public}@", buf, 0xCu);
    }

    operator new();
  }
}

uint64_t sub_1003BB914(uint64_t result, int a2, int a3)
{
  if (a2 > 5)
  {
    if (a2 == 6)
    {
      if (a3)
      {
        return result;
      }

      v3 = 1;
    }

    else
    {
      if (a2 != 7 || a3)
      {
        return result;
      }

      v3 = 0;
    }

    return sub_1003BBCC8(result, v3);
  }

  if (a2 == 2)
  {
    if (!a3)
    {
      return sub_1003BB968(result);
    }
  }

  else if (a2 == 3 && !a3)
  {
    return sub_1003BBB1C(result);
  }

  return result;
}