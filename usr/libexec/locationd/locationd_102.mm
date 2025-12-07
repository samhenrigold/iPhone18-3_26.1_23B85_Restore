void sub_100752D50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  *(v38 - 144) = v37;
  if (*(v38 - 113) < 0)
  {
    operator delete(*(v38 - 136));
  }

  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id **sub_100752E18(id **result, int a2)
{
  if (a2)
  {
    v2 = result;
    v3 = result[4];
    v8[0] = 2;
    (*(*v3 + 19))(v3, v8, result + 5, 0, 0xFFFFFFFFLL, 0);
    if (qword_1025D4610 != -1)
    {
      sub_101929410();
    }

    v4 = qword_1025D4618;
    if (os_log_type_enabled(qword_1025D4618, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v2 + 10;
      if (*(v2 + 103) < 0)
      {
        v5 = *v5;
      }

      v8[0] = 68289283;
      v8[1] = 0;
      v9 = 2082;
      v10 = "";
      v11 = 2081;
      v12 = v5;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:@iB: Launching application for notification (if necessary), bundle:%{private, location:escape_only}s}", v8, 0x1Cu);
    }

    v6 = [objc_msgSend(v3[4] "vendor")];
    v7 = v2 + 10;
    if (*(v2 + 103) < 0)
    {
      v7 = *v7;
    }

    return [v6 launchApplication:+[NSString stringWithUTF8String:](NSString requiringAuthForServiceMask:{"stringWithUTF8String:", v7), 1}];
  }

  return result;
}

uint64_t sub_100752F98(uint64_t a1, uint64_t a2)
{
  result = sub_1004C04F8(a1 + 40, a2 + 40);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = off_102457740;
  if (*(a2 + 199) < 0)
  {
    result = sub_100007244((a1 + 176), *(a2 + 176), *(a2 + 184));
  }

  else
  {
    v5 = *(a2 + 176);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 176) = v5;
  }

  *(a1 + 200) = *(a2 + 200);
  v6 = *(a2 + 208);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 208) = v6;
  return result;
}

uint64_t sub_100753044(uint64_t a1)
{
  *(a1 + 168) = off_102457740;
  if (*(a1 + 199) < 0)
  {
    operator delete(*(a1 + 176));
  }

  return sub_10005DB2C(a1 + 40);
}

void sub_1007530A8(uint64_t result, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  if (*a3 == 4 && *(a4 + 188) == 0)
  {
    v6 = *(result + 328);
    if (v6)
    {

      sub_10073AE10(v6);
    }

    else
    {
      if (qword_1025D4610 != -1)
      {
        sub_1019294B8();
      }

      v7 = qword_1025D4618;
      if (os_log_type_enabled(qword_1025D4618, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "iB: Warning data can't be cleared yet", v8, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1019295BC();
      }

      *(result + 298) = 1;
    }
  }
}

size_t sub_10075318C@<X0>(int a1@<W1>, void *a2@<X8>)
{
  snprintf(__str, 0x20uLL, "%d", a1);
  result = strlen(__str);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100061080();
  }

  v4 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(a2 + 23) = result;
  if (result)
  {
    result = memcpy(a2, __str, result);
  }

  *(a2 + v4) = 0;
  return result;
}

BOOL sub_10075327C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const void **a6)
{
  v6 = *(a6 + 23);
  if (v6 >= 0)
  {
    v7 = *(a6 + 23);
  }

  else
  {
    v7 = a6[1];
  }

  v8 = *(a4 + 63);
  v9 = v8;
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a4 + 48);
  }

  if (v7 == v8 && (v6 >= 0 ? (v10 = a6) : (v10 = *a6), (v13 = *(a4 + 40), v11 = (a4 + 40), v12 = v13, v9 >= 0) ? (v14 = v11) : (v14 = v12), !memcmp(v10, v14, v7)))
  {
    return 1;
  }

  else
  {
    return v7 == 0;
  }
}

void sub_10075330C(uint64_t result, uint64_t a2, _DWORD *a3, unsigned __int8 *a4)
{
  if (*a3 == 1)
  {
    if (qword_1025D4610 != -1)
    {
      sub_1019294B8();
    }

    v6 = qword_1025D4618;
    if (os_log_type_enabled(qword_1025D4618, OS_LOG_TYPE_DEBUG))
    {
      v7 = *(result + 297);
      v8 = a4[4];
      v9 = *(result + 328) == 0;
      *buf = 67240704;
      *&buf[4] = v7;
      LOWORD(v21) = 1026;
      *(&v21 + 2) = v8;
      HIWORD(v21) = 1026;
      LODWORD(v22) = v9;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "iB: state kNotificationDeviceUnlockedSinceBoot, from, %{public}d, to, %{public}d, start, %{public}d", buf, 0x14u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019297BC(result, a4);
    }

    v10 = a4[4];
    *(result + 297) = v10;
    if (v10 == 1)
    {
      [*(*(result + 136) + 16) unregister:*(*(result + 136) + 8) forNotification:1];
      sub_100753584(result, "kNotificationDeviceUnlockedSinceBoot");
      if (*(result + 176))
      {
        *buf = 0;
        v21 = 0;
        v22 = 0;
        v11 = *(result + 160);
        if (v11 != (result + 168))
        {
          v12 = 0;
          do
          {
            v13 = v11[9];
            if (v13 != v11 + 10)
            {
              do
              {
                if (v12 >= v22)
                {
                  v12 = sub_10075470C(buf, (v13 + 4));
                }

                else
                {
                  sub_1004C04F8(v12, (v13 + 4));
                  v12 += 120;
                }

                v21 = v12;
                v14 = v13[1];
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
                    v15 = v13[2];
                    v16 = *v15 == v13;
                    v13 = v15;
                  }

                  while (!v16);
                }

                v13 = v15;
              }

              while (v15 != v11 + 10);
            }

            v17 = v11[1];
            if (v17)
            {
              do
              {
                v18 = v17;
                v17 = *v17;
              }

              while (v17);
            }

            else
            {
              do
              {
                v18 = v11[2];
                v16 = *v18 == v11;
                v11 = v18;
              }

              while (!v16);
            }

            v11 = v18;
          }

          while (v18 != (result + 168));
        }

        sub_10073C4E0(*(result + 328), buf);
        v19 = buf;
        sub_1007549C8(&v19);
      }
    }
  }
}

void sub_100753550(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, char a11)
{
  a10 = &a11;
  sub_1007549C8(&a10);
  _Unwind_Resume(a1);
}

void sub_100753584(uint64_t a1, uint64_t a2)
{
  if (qword_1025D4610 != -1)
  {
    sub_1019294B8();
  }

  v4 = qword_1025D4618;
  if (os_log_type_enabled(qword_1025D4618, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 328);
    v6 = *(a1 + 297);
    v7 = 134284035;
    v8 = v5;
    v9 = 1026;
    v10 = v6;
    v11 = 2082;
    v12 = a2;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "iB: createStateDatabase, fStateDatabase, %{private}p, fDeviceUnlockedSinceBoot, %{public}d, reason, %{public}s", &v7, 0x1Cu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019298F4(a1, a2);
  }

  if (!*(a1 + 328) && *(a1 + 297) == 1)
  {
    operator new();
  }
}

uint64_t sub_1007537DC(uint64_t a1)
{
  if ((atomic_load_explicit(byte_1025D8320, memory_order_acquire) & 1) == 0)
  {
    v3 = a1;
    sub_101929B2C();
    a1 = v3;
  }

  v1 = *(*a1 + 96);

  return v1();
}

BOOL sub_100753860(uint64_t a1, void *a2, int *a3)
{
  v5 = *(a1 + 88);
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = a1 + 88;
  do
  {
    if (*(v5 + 32) >= a2)
    {
      v6 = v5;
    }

    v5 = *(v5 + 8 * (*(v5 + 32) < a2));
  }

  while (v5);
  if (v6 != a1 + 88 && *(v6 + 32) <= a2)
  {
    v13 = *(v6 + 48);
    v11 = v6 + 48;
    v12 = v13;
    if (!v13)
    {
      goto LABEL_24;
    }

    v14 = *a3;
    v15 = v11;
    do
    {
      if (*(v12 + 28) >= v14)
      {
        v15 = v12;
      }

      v12 = *(v12 + 8 * (*(v12 + 28) < v14));
    }

    while (v12);
    if (v15 == v11 || v14 < *(v15 + 28))
    {
LABEL_24:
      v15 = v11;
    }

    return v15 != v11;
  }

  else
  {
LABEL_8:
    if (qword_1025D47F0 != -1)
    {
      sub_10192947C();
    }

    v7 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
    {
      v8 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v8 = *v8;
      }

      v16 = 136446466;
      v17 = v8;
      v18 = 1026;
      v19 = a2;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "%{public}s; client %{public}d does not exist", &v16, 0x12u);
    }

    v9 = sub_10000A100(121, 0);
    result = 0;
    if (v9)
    {
      sub_101929B94(a1, a2);
      return 0;
    }
  }

  return result;
}

void sub_100753A88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100008080(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100753AA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = 0u;
  v7 = 0u;
  v5 = &off_1024576F0;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0;
  v13 = 0;
  v14 = off_102457740;
  v16 = 0u;
  __p = 0u;
  v17 = 1;
  (*(*a1 + 152))(a1, a2, &v5, a3, a4, 0);
  v14 = off_102457740;
  if (SBYTE7(v16) < 0)
  {
    operator delete(__p);
  }

  return sub_10005DB2C(&v5);
}

void sub_100753B80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100754570(va);
  _Unwind_Resume(a1);
}

void sub_100753B94(uint64_t a1, int *a2, uint64_t a3, int a4, int a5)
{
  if ((*(a1 + 108) & 1) == 0)
  {
    v7 = a1 + 64;
    v6 = *(a1 + 64);
    if (!v6)
    {
      goto LABEL_9;
    }

    v8 = *a2;
    v9 = a1 + 64;
    do
    {
      if (*(v6 + 32) >= v8)
      {
        v9 = v6;
      }

      v6 = *(v6 + 8 * (*(v6 + 32) < v8));
    }

    while (v6);
    if (v9 == v7 || v8 < *(v9 + 32))
    {
LABEL_9:
      v12 = v13;
      memset(v13, 0, 32);
      sub_1007554EC(buf, a2, &v12);
      sub_100755374(v7 - 8, buf);
    }

    if (a4)
    {
      sub_100755818();
    }

    v10 = *(v9 + 72);
    *(v9 + 64) = 0;
    *(v9 + 72) = 0;
    if (v10)
    {
      sub_100008080(v10);
    }

    if (*(v9 + 56))
    {
      sub_100754D7C(a3);
    }
  }
}

void sub_100754040(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_1007557A0(va);
  sub_1007557DC(v16 - 144);
  _Unwind_Resume(a1);
}

void sub_10075406C(uint64_t a1)
{
  if (*(a1 + 108) == 1)
  {
    if (qword_1025D47F0 != -1)
    {
      sub_10192947C();
    }

    v2 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      v3 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v3 = *v3;
      }

      *buf = 136315138;
      v32 = v3;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "%s; already shutdown; not listing clients", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101929DC0(a1);
    }
  }

  else
  {
    if (qword_1025D47F0 != -1)
    {
      sub_10192947C();
    }

    v4 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      v5 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v5 = *v5;
      }

      v6 = *(a1 + 96);
      *buf = 136315394;
      v32 = v5;
      v33 = 2048;
      v34[0] = v6;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "%s; listing clients, num clients: %zu", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101929C9C(a1);
    }

    v7 = *(a1 + 80);
    if (v7 != (a1 + 88))
    {
      v8 = (a1 + 8);
      do
      {
        v9 = v7[5];
        if (v9 != v7 + 6)
        {
          do
          {
            if (qword_1025D47F0 != -1)
            {
              sub_101929490();
            }

            v10 = qword_1025D47F8;
            if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
            {
              v11 = (a1 + 8);
              if (*(a1 + 31) < 0)
              {
                v11 = *v8;
              }

              v12 = *(v7 + 8);
              v13 = *(v9 + 7);
              *buf = 136315650;
              v32 = v11;
              v33 = 1024;
              LODWORD(v34[0]) = v12;
              WORD2(v34[0]) = 1024;
              *(v34 + 6) = v13;
              _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "%s; clients, id: %d, notification: %d", buf, 0x18u);
            }

            if (sub_10000A100(121, 2))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1025D47F0 != -1)
              {
                sub_101929490();
              }

              v17 = (a1 + 8);
              if (*(a1 + 31) < 0)
              {
                v17 = *v8;
              }

              v18 = *(v7 + 8);
              v19 = *(v9 + 7);
              v25 = 136315650;
              v26 = v17;
              v27 = 1024;
              v28 = v18;
              v29 = 1024;
              v30 = v19;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D47F8, 2, "%s; clients, id: %d, notification: %d", &v25, 24, v24);
              v21 = v20;
              sub_100152C7C("Generic", 1, 0, 2, "virtual void CLNotifier<CLBTLEFenceManager_Type::Notification, CLBTLEFenceManager_Type::NotificationData, char, std::string>::listClients() [Notification_T = CLBTLEFenceManager_Type::Notification, NotificationData_T = CLBTLEFenceManager_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = std::string]", "%s\n", v20);
              if (v21 != buf)
              {
                free(v21);
              }
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

          while (v15 != v7 + 6);
        }

        v22 = v7[1];
        if (v22)
        {
          do
          {
            v23 = v22;
            v22 = *v22;
          }

          while (v22);
        }

        else
        {
          do
          {
            v23 = v7[2];
            v16 = *v23 == v7;
            v7 = v23;
          }

          while (!v16);
        }

        v7 = v23;
      }

      while (v23 != (a1 + 88));
    }
  }
}

uint64_t sub_100754570(uint64_t a1)
{
  *(a1 + 128) = off_102457740;
  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  return sub_10005DB2C(a1);
}

void sub_1007545D4(char *a1)
{
  if (*(a1 + 2))
  {
    v2 = *(a1 + 1);
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    *(a1 + 2) = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = *(v2 + 1);
        *(v2 + 6) = off_102457740;
        if (v2[79] < 0)
        {
          operator delete(*(v2 + 7));
        }

        if (v2[39] < 0)
        {
          operator delete(*(v2 + 2));
        }

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

uint64_t sub_100754680(uint64_t a1)
{
  *(a1 + 64) = off_102457740;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 24) = off_102457740;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  sub_1007545D4(a1);
  return a1;
}

uint64_t sub_10075470C(unint64_t *a1, uint64_t a2)
{
  v2 = 0xEEEEEEEEEEEEEEEFLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x222222222222222)
  {
    sub_10028C64C();
  }

  if (0xDDDDDDDDDDDDDDDELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDDDDDDDDDDDDDDDELL * ((a1[2] - *a1) >> 3);
  }

  if (0xEEEEEEEEEEEEEEEFLL * ((a1[2] - *a1) >> 3) >= 0x111111111111111)
  {
    v6 = 0x222222222222222;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_10075483C(a1, v6);
  }

  v13 = 0;
  v14 = 120 * v2;
  sub_1004C04F8(120 * v2, a2);
  v15 = 120 * v2 + 120;
  v7 = a1[1];
  v8 = 120 * v2 + *a1 - v7;
  sub_100754894(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_10075495C(&v13);
  return v12;
}

void sub_100754828(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10075495C(va);
  _Unwind_Resume(a1);
}

void sub_10075483C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x222222222222223)
  {
    operator new();
  }

  sub_1001D0818();
}

uint64_t sub_100754894(uint64_t a1, uint64_t (***a2)(void), uint64_t (***a3)(void), uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    v8 = a2;
    do
    {
      result = sub_1004C04F8(a4 + v7, v8);
      v8 += 15;
      v7 += 120;
    }

    while (v8 != a3);
    if (v6 != a3)
    {
      v10 = v6;
      v11 = v6;
      do
      {
        v12 = *v11;
        v11 += 15;
        result = (*v12)(v6);
        v10 += 15;
        v6 = v11;
      }

      while (v11 != a3);
    }
  }

  return result;
}

void sub_100754940(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    sub_101929ED4(v1 + v2, v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10075495C(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 120);
    *(a1 + 16) = i - 120;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1007549C8(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 15;
      v7 = v4 - 15;
      v8 = v4 - 15;
      do
      {
        v9 = *v8;
        v8 -= 15;
        (*v9)(v7);
        v6 -= 15;
        v10 = v7 == v2;
        v7 = v8;
      }

      while (!v10);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_100754A88(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_100754A88(a1, *a2);
    sub_100754A88(a1, a2[1]);
    sub_100754AF4(a1, (a2 + 4));

    operator delete(a2);
  }
}

void sub_100754AF4(uint64_t a1, uint64_t a2)
{
  sub_100754B64(a2 + 40, *(a2 + 48));
  *a2 = off_102457740;
  if (*(a2 + 31) < 0)
  {
    v3 = *(a2 + 8);

    operator delete(v3);
  }
}

void sub_100754B64(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_100754B64(a1, *a2);
    sub_100754B64(a1, a2[1]);
    (*a2[4])();

    operator delete(a2);
  }
}

void sub_100754BF4(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_100754BF4(a1, *a2);
    sub_100754BF4(a1, a2[1]);
    sub_100754C58(a2 + 19);
    sub_10005DB2C((a2 + 4));

    operator delete(a2);
  }
}

void sub_100754C58(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        sub_100754CCC((v2 + 2));
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

uint64_t sub_100754CCC(uint64_t a1)
{
  *(a1 + 72) = 0;
  *(a1 + 8) = off_102457740;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

int *sub_100754D30(int **a1, int *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_1006241D0(result);

    operator delete();
  }

  return result;
}

void sub_100754EC0(void *a1, int *a2, void *a3)
{
  if ((*(a1 + 108) & 1) == 0)
  {
    v5 = a1 + 8;
    v4 = a1[8];
    if (v4)
    {
      v8 = *a2;
      v9 = (a1 + 8);
      do
      {
        if (*(v4 + 32) >= v8)
        {
          v9 = v4;
        }

        v4 = *(v4 + 8 * (*(v4 + 32) < v8));
      }

      while (v4);
      if (v9 != v5 && v8 >= *(v9 + 32))
      {
        v39 = v9;
        v10 = sub_100755A64(a3);
        (*(*a1 + 184))(a1, a2, v10, v9 + 80);
        v11 = *(v9 + 40);
        if (v11 != (v9 + 48))
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

            v15 = *(v11 + 8);
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
              v38 = v16;
              sub_10075527C(a1, &v38, &v39, a3);
              v21 = a1[8];
              if (!v21)
              {
                return;
              }

              v22 = *a2;
              v23 = v5;
              do
              {
                if (*(v21 + 32) >= v22)
                {
                  v23 = v21;
                }

                v21 = *(v21 + 8 * (*(v21 + 32) < v22));
              }

              while (v21);
              if (v23 == v5 || v22 < *(v23 + 32))
              {
                return;
              }

              v39 = v23;
              v25 = *(v23 + 48);
              v11 = (v23 + 48);
              v24 = v25;
              if (v25)
              {
                v26 = v11;
                v27 = v24;
                do
                {
                  if (*(v27 + 32) >= v17)
                  {
                    v26 = v27;
                  }

                  v27 = *(v27 + 8 * (*(v27 + 32) < v17));
                }

                while (v27);
                if (v26 == v11 || v17 < *(v26 + 8))
                {
                  do
                  {
                    v28 = *(v24 + 32);
                    v29 = v17 < v28;
                    v30 = v17 >= v28;
                    if (v29)
                    {
                      v11 = v24;
                    }

                    v24 = *(v24 + 8 * v30);
                  }

                  while (v24);
                }

                else
                {
                  v31 = v26[1];
                  if (v31)
                  {
                    do
                    {
                      v11 = v31;
                      v31 = *v31;
                    }

                    while (v31);
                  }

                  else
                  {
                    do
                    {
                      v11 = v26[2];
                      v32 = *v11 == v26;
                      v26 = v11;
                    }

                    while (!v32);
                  }
                }
              }
            }

            else
            {
LABEL_18:
              v38 = a1 + 11;
              if (qword_1025D47F0 != -1)
              {
                sub_101929490();
              }

              v18 = qword_1025D47F8;
              if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
              {
                v19 = a1 + 1;
                if (*(a1 + 31) < 0)
                {
                  v19 = *v13;
                }

                v20 = *(v11 + 8);
                *buf = 136446466;
                v45 = v19;
                v46 = 1026;
                v47 = v20;
                _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_FAULT, "%{public}s; unknown client %{public}d", buf, 0x12u);
              }

              if (sub_10000A100(121, 0))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1025D47F0 != -1)
                {
                  sub_101929490();
                }

                v33 = a1 + 1;
                if (*(a1 + 31) < 0)
                {
                  v33 = *v13;
                }

                v34 = *(v11 + 8);
                v40 = 136446466;
                v41 = v33;
                v42 = 1026;
                v43 = v34;
                LODWORD(v37) = 18;
                _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D47F8, 17, "%{public}s; unknown client %{public}d", &v40, v37);
                v36 = v35;
                sub_100152C7C("Generic", 1, 0, 0, "void CLNotifier<CLBTLEFenceManager_Type::Notification, CLBTLEFenceManager_Type::NotificationData, char, std::string>::invokeClientsWithData(const Notification_T &, CLCppContainer *) [Notification_T = CLBTLEFenceManager_Type::Notification, NotificationData_T = CLBTLEFenceManager_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = std::string]", "%s\n", v35);
                if (v36 != buf)
                {
                  free(v36);
                }
              }
            }
          }

          while (v11 != (v39 + 48));
        }
      }
    }
  }
}

_BYTE *sub_10075527C(_BYTE *result, uint64_t a2, uint64_t *a3, void *a4)
{
  if ((result[108] & 1) == 0)
  {
    v7 = result;
    v8 = *(*a2 + 32);
    LODWORD(v12) = *(*a3 + 32);
    v9 = sub_100755A64(a4);
    v10 = *a3;
    v13 = (*a2 + 32);
    v11 = sub_100036120(v10 + 40, v13, &unk_101C66300, &v13);
    result = (*(*v7 + 192))(v7, v8, &v12, v9, v10 + 80, v11 + 5);
    if (result)
    {
      return [*(*a2 + 64) onNotification:*(*a3 + 32) withData:{a4, v12}];
    }
  }

  return result;
}

char **sub_10075545C(char **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_1007554A8(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void sub_1007554A8(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    sub_100008080(v2);
  }

  v3 = *(a1 + 16);

  sub_10075573C(a1 + 8, v3);
}

uint64_t sub_1007554EC(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  sub_100755544((a1 + 8), a3);
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

void *sub_100755544(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_1002E96E8(a1, *a2, (a2 + 8));
  return a1;
}

void *sub_10075559C(uint64_t **a1, uint64_t *a2, int *a3, uint64_t a4)
{
  result = *sub_1005A4918(a1, a2, &v6, &v5, a3);
  if (!result)
  {
    sub_100755620();
  }

  return result;
}

void sub_1007556BC(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1007556D8(v3, v2);
  _Unwind_Resume(a1);
}

void sub_1007556D8(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 63) < 0)
    {
      operator delete(__p[5]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void sub_10075573C(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_10075573C(a1, *a2);
    sub_10075573C(a1, *(a2 + 1));
    if (a2[63] < 0)
    {
      operator delete(*(a2 + 5));
    }

    operator delete(a2);
  }
}

uint64_t sub_1007557A0(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    sub_100008080(v2);
  }

  sub_10075573C(a1 + 8, *(a1 + 16));
  return a1;
}

uint64_t sub_1007557DC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_100008080(v2);
  }

  sub_10075573C(a1, *(a1 + 8));
  return a1;
}

uint64_t sub_100755884(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_10246EDB8;
  sub_1004C04F8(a1 + 24, a2);
  *(a1 + 144) = *(a2 + 120);
  *(a1 + 152) = off_102457740;
  if (*(a2 + 159) < 0)
  {
    sub_100007244((a1 + 160), *(a2 + 136), *(a2 + 144));
  }

  else
  {
    v4 = *(a2 + 136);
    *(a1 + 176) = *(a2 + 152);
    *(a1 + 160) = v4;
  }

  *(a1 + 184) = *(a2 + 160);
  v5 = *(a2 + 168);
  *(a1 + 200) = *(a2 + 176);
  *(a1 + 192) = v5;
  return a1;
}

void sub_100755938(_Unwind_Exception *a1)
{
  sub_10005DB2C(&v1[1]);
  std::__shared_weak_count::~__shared_weak_count(v1);
  _Unwind_Resume(a1);
}

void sub_10075597C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10246EDB8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1007559DC(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    *(v1 + 128) = off_102457740;
    if (*(v1 + 159) < 0)
    {
      operator delete(*(v1 + 136));
    }

    sub_10005DB2C(v1);

    operator delete();
  }

  return result;
}

id sub_100755A64(void *a1)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return sub_100755AC4(a1);
}

id sub_100755AC4(void *a1)
{
  v2 = [a1 binaryVersion];
  [a1 sizeOfType];
  if (v2)
  {
    if (getenv("_INTERSILO_UNIT_TEST"))
    {
      if (qword_1025D41A0 != -1)
      {
        sub_101929F40();
      }

      v3 = qword_1025D41A8;
      if (!os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_ERROR))
      {
        return 0;
      }

      v8 = 134218498;
      v9 = v2;
      v10 = 2048;
      v11 = 0;
      v12 = 2080;
      v13 = 0x8000000101C8C88ALL & 0x7FFFFFFFFFFFFFFFLL;
      v4 = v3;
      v5 = OS_LOG_TYPE_ERROR;
    }

    else
    {
      if (qword_1025D41A0 != -1)
      {
        sub_101929F40();
      }

      v7 = qword_1025D41A8;
      if (!os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_FAULT))
      {
        return 0;
      }

      v8 = 134218498;
      v9 = v2;
      v10 = 2048;
      v11 = 0;
      v12 = 2080;
      v13 = 0x8000000101C8C88ALL & 0x7FFFFFFFFFFFFFFFLL;
      v4 = v7;
      v5 = OS_LOG_TYPE_FAULT;
    }

    _os_log_impl(dword_100000000, v4, v5, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v8, 0x20u);
    return 0;
  }

  return [a1 cppObjectPtr];
}

uint64_t sub_100755CBC(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = sub_100755D40(v3 + 32, a2);
    if (v6)
    {
      v7 = 8;
    }

    else
    {
      v7 = 0;
    }

    if (!v6)
    {
      v5 = v3;
    }

    v3 = *(v3 + v7);
  }

  while (v3);
  if (v5 == v2 || sub_100755D40(a2, v5 + 32))
  {
    return v2;
  }

  return v5;
}

BOOL sub_100755D40(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 36);
  v3 = *(a2 + 36);
  v4 = v2 < v3;
  if (v2 != v3)
  {
    return v4;
  }

  if (v2)
  {
    v11 = *(a1 + 31);
    if (v11 >= 0)
    {
      v12 = *(a1 + 31);
    }

    else
    {
      v12 = *(a1 + 16);
    }

    v13 = *(a2 + 31);
    v14 = v13;
    if ((v13 & 0x80u) != 0)
    {
      v13 = *(a2 + 16);
    }

    if (v12 != v13)
    {
      return (sub_100019438((a1 + 8), (a2 + 8)) & 0x80u) != 0;
    }

    v15 = v11 >= 0 ? (a1 + 8) : *(a1 + 8);
    v16 = v14 >= 0 ? (a2 + 8) : *(a2 + 8);
    if (memcmp(v15, v16, v12))
    {
      return (sub_100019438((a1 + 8), (a2 + 8)) & 0x80u) != 0;
    }
  }

  if ((v2 & 2) == 0 || (v7 = *(a1 + 32), v8 = *(a2 + 32), v9 = v7 >= v8, v7 == v8))
  {
    if ((v2 & 4) == 0)
    {
      return 0;
    }

    v9 = *(a1 + 34) >= *(a2 + 34);
  }

  return !v9;
}

uint64_t sub_100755E2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v4 = 1;
    do
    {
      if ((sub_100755E94(a2, (v2 + 4)) & 1) == 0)
      {
        if (!sub_100755E94((v2 + 4), a2))
        {
          return v4;
        }

        ++v2;
      }

      v2 = *v2;
    }

    while (v2);
  }

  return 0;
}

uint64_t sub_100755E94(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + 64);
  v3 = (a2 + 64);
  v4 = *(a1 + 87);
  if (v4 >= 0)
  {
    v5 = *(a1 + 87);
  }

  else
  {
    v5 = *(a1 + 72);
  }

  v6 = *(a2 + 87);
  v7 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a2 + 72);
  }

  if (v5 != v6)
  {
    return (sub_100019438(v2, v3) & 0x80u) != 0;
  }

  v10 = v4 >= 0 ? (a1 + 64) : *v2;
  v11 = v7 >= 0 ? (a2 + 64) : *v3;
  if (memcmp(v10, v11, v5))
  {
    return (sub_100019438(v2, v3) & 0x80u) != 0;
  }

  v2 = (a1 + 40);
  v3 = (a2 + 40);
  v12 = *(a1 + 63);
  if (v12 >= 0)
  {
    v13 = *(a1 + 63);
  }

  else
  {
    v13 = *(a1 + 48);
  }

  v14 = *(a2 + 63);
  v15 = v14;
  if ((v14 & 0x80u) != 0)
  {
    v14 = *(a2 + 48);
  }

  if (v13 != v14)
  {
    return (sub_100019438(v2, v3) & 0x80u) != 0;
  }

  v16 = v12 >= 0 ? (a1 + 40) : *v2;
  v17 = v15 >= 0 ? (a2 + 40) : *v3;
  if (memcmp(v16, v17, v13))
  {
    return (sub_100019438(v2, v3) & 0x80u) != 0;
  }

  v2 = (a1 + 88);
  v3 = (a2 + 88);
  v18 = *(a1 + 111);
  if (v18 >= 0)
  {
    v19 = *(a1 + 111);
  }

  else
  {
    v19 = *(a1 + 96);
  }

  v20 = *(a2 + 111);
  v21 = v20;
  if ((v20 & 0x80u) != 0)
  {
    v20 = *(a2 + 96);
  }

  if (v19 != v20)
  {
    return (sub_100019438(v2, v3) & 0x80u) != 0;
  }

  v22 = v18 >= 0 ? (a1 + 88) : *v2;
  v23 = v21 >= 0 ? (a2 + 88) : *v3;
  result = memcmp(v22, v23, v19);
  if (result)
  {
    return (sub_100019438(v2, v3) & 0x80u) != 0;
  }

  return result;
}

void *sub_100755FE0(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = *sub_100756078(a1, &v6, a2);
  if (!result)
  {
    sub_100756100();
  }

  return result;
}

void *sub_100756078(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if (!sub_100755D40(a3, (v4 + 4)))
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (!sub_100755D40((v7 + 4), a3))
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

void sub_10075618C(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_10075622C(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1007561A8(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = off_102457740;
  v4 = a1 + 8;
  if (*(v3 + 31) < 0)
  {
    sub_100007244(v4, *(v3 + 8), *(v3 + 16));
  }

  else
  {
    v5 = *(v3 + 8);
    *(v4 + 16) = *(v3 + 24);
    *v4 = v5;
  }

  v6 = *(v3 + 32);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 32) = v6;
  *(a1 + 40) = a1 + 48;
  *(a1 + 64) = 1;
  return a1;
}

void sub_10075622C(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    sub_100754AF4(*a1, __p + 32);
  }

  if (__p)
  {

    operator delete(__p);
  }
}

void *sub_10075628C(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v3 = *sub_10075631C(a1, &v5, a2);
  if (!v3)
  {
    sub_1007563A4();
  }

  return v3;
}

void *sub_10075631C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if (!sub_100755E94(a3, (v4 + 4)))
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (!sub_100755E94((v7 + 4), a3))
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

uint64_t sub_10075641C(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      (*v2[4])();
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_100756488(uint64_t **a1, uint64_t a2)
{
  v3 = sub_100756504(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  v4 = v3;
  sub_10045E8A0(a1, v3);
  (*v4[4])();
  operator delete(v4);
  return 1;
}

uint64_t sub_100756504(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = sub_100755E94(v3 + 32, a2);
    if (v6)
    {
      v7 = 8;
    }

    else
    {
      v7 = 0;
    }

    if (!v6)
    {
      v5 = v3;
    }

    v3 = *(v3 + v7);
  }

  while (v3);
  if (v5 == v2 || sub_100755E94(a2, v5 + 32))
  {
    return v2;
  }

  return v5;
}

uint64_t sub_100756588(uint64_t **a1, uint64_t a2)
{
  v3 = sub_100755CBC(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  sub_1007565D0(a1, v3);
  return 1;
}

uint64_t *sub_1007565D0(uint64_t **a1, uint64_t *a2)
{
  v4 = sub_10045E8A0(a1, a2);
  sub_100754AF4(a1, (a2 + 4));
  operator delete(a2);
  return v4;
}

void *sub_10075661C(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = *sub_10075631C(a1, &v6, a2);
  if (!result)
  {
    sub_1007566B4();
  }

  return result;
}

void sub_100756738(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_100756754(v3, v2);
  _Unwind_Resume(a1);
}

void sub_100756754(uint64_t a1, uint64_t *__p)
{
  if (*(a1 + 8) == 1)
  {
    sub_100754C58(__p + 19);
    sub_10005DB2C((__p + 4));
  }

  if (__p)
  {

    operator delete(__p);
  }
}

uint64_t sub_100756864(uint64_t a1, int a2, uint64_t a3, int a4, int a5, int a6, double a7)
{
  *a1 = a2;
  *(a1 + 8) = off_102457740;
  if (*(a3 + 31) < 0)
  {
    sub_100007244((a1 + 16), *(a3 + 8), *(a3 + 16));
  }

  else
  {
    v13 = *(a3 + 8);
    *(a1 + 32) = *(a3 + 24);
    *(a1 + 16) = v13;
  }

  *(a1 + 40) = *(a3 + 32);
  *(a1 + 48) = a4;
  *(a1 + 52) = a5;
  *(a1 + 56) = a7;
  *(a1 + 64) = a6;
  *(a1 + 72) = [[CLOSTransaction alloc] initWithDescription:"Pending iBeacon notification"];
  return a1;
}

void sub_100756934(_Unwind_Exception *exception_object)
{
  *(v1 + 8) = v2;
  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100756A98(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    *(v1 + 128) = off_102457740;
    if (*(v1 + 159) < 0)
    {
      operator delete(*(v1 + 136));
    }

    sub_10005DB2C(v1);

    operator delete();
  }

  return result;
}

uint64_t *sub_100756B20(uint64_t **a1, uint64_t *a2)
{
  v3 = sub_10045E8A0(a1, a2);
  sub_100754C58(a2 + 19);
  sub_10005DB2C((a2 + 4));
  operator delete(a2);
  return v3;
}

void sub_100756BBC(uint64_t a1, uint64_t a2)
{
  if (qword_1025D45B0 != -1)
  {
    sub_101929F54();
  }

  v4 = qword_1025D45B8;
  if (os_log_type_enabled(qword_1025D45B8, OS_LOG_TYPE_DEFAULT))
  {
    CLConnection::getName(*(a1 + 8));
    RemotePid = CLConnection::getRemotePid(*(a1 + 8));
    v6 = __p;
    buf[0] = 134349826;
    if (v19 < 0)
    {
      v6 = *__p;
    }

    *&buf[1] = a1;
    v24 = 2114;
    v25 = a2;
    v26 = 2082;
    v27 = v6;
    v28 = 1026;
    v29 = RemotePid;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "[CLDeviceImpactClient:%{public}p] onDeviceImpactUpdate: %{public}@, %{public}s (%{public}d)", buf, 0x26u);
    if (SHIBYTE(v19) < 0)
    {
      operator delete(*__p);
    }
  }

  if (sub_10000A100(121, 2))
  {
    sub_101929F68(buf);
    v7 = qword_1025D45B8;
    CLConnection::getName(*(a1 + 8));
    v8 = CLConnection::getRemotePid(*(a1 + 8));
    v9 = &v12;
    *__p = 134349826;
    if (v13 < 0)
    {
      v9 = v12;
    }

    *&__p[4] = a1;
    v17 = 2114;
    v18 = a2;
    v19 = 2082;
    v20 = v9;
    v21 = 1026;
    v22 = v8;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v7, 0, "[CLDeviceImpactClient:%{public}p] onDeviceImpactUpdate: %{public}@, %{public}s (%{public}d)", __p, 38);
    v11 = v10;
    if (v13 < 0)
    {
      operator delete(v12);
    }

    sub_100152C7C("Generic", 1, 0, 2, "void CLDeviceImpactClient::onDeviceImpactUpdate(CMDeviceImpact *)", "%s\n", v11);
    if (v11 != buf)
    {
      free(v11);
    }
  }

  v14 = CMDeviceImpactData;
  v15 = a2;
  *__p = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  sub_100757DC8();
}

void sub_100756E80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100756EF8(uint64_t a1, uint64_t a2, void *a3)
{
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *a1 = off_10246EE28;
  v5 = [[CLDeviceImpactClientAdapter alloc] initWithClient:a1];
  *(a1 + 24) = v5;
  [(CLDeviceImpactClientAdapter *)v5 setValid:1];
  v6 = [objc_msgSend(a3 "vendor")];
  *(a1 + 32) = v6;
  [v6 registerDelegate:*(a1 + 24) inSilo:{objc_msgSend(a3, "silo")}];
  [*(a1 + 32) setDelegateEntityName:"CLDeviceImpactClient"];
  CLConnection::setDefaultMessageHandler();
  return a1;
}

void sub_100757024(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 32);
  v3 = a2[1];
  v4 = *a2;
  v5 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v2 + 16))(v2, &v4);
  if (v5)
  {
    sub_100008080(v5);
  }
}

void sub_100757098(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1007570B4(uint64_t a1)
{
  *a1 = off_10246EE28;

  [*(a1 + 24) setValid:0];

  return sub_100143A80(a1);
}

void sub_100757128(uint64_t a1)
{
  sub_1007570B4(a1);

  operator delete();
}

void sub_1007573FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100757448(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = CLConnectionMessage::name(*a2);
  if (*(v4 + 23) < 0 && *(v4 + 8) == 38 && !memcmp(*v4, "DeviceImpact/kCLConnectionMessageQuery", 0x26uLL))
  {
    sub_100757160(a1);
  }

  v5 = CLConnectionMessage::name(*a2);
  if (*(v5 + 23) < 0 && *(v5 + 8) == 39 && !memcmp(*v5, "DeviceImpact/kCLConnectionMessageUpdate", 0x27uLL))
  {
    sub_100757160(a1);
  }

  v6 = CLConnectionMessage::name(*a2);
  if (*(v6 + 23) < 0 && *(v6 + 8) == 43 && !memcmp(*v6, "DeviceImpact/kCLConnectionMessageClearCache", 0x2BuLL))
  {
    sub_100757160(a1);
  }

  v7 = CLConnectionMessage::name(*a2);
  if (*(v7 + 23) < 0 && *(v7 + 8) == 41 && !memcmp(*v7, "DeviceImpact/kCLConnectionMessageSimulate", 0x29uLL))
  {
    sub_100757160(a1);
  }

  if (qword_1025D45B0 != -1)
  {
    sub_101929F54();
  }

  v8 = qword_1025D45B8;
  if (os_log_type_enabled(qword_1025D45B8, OS_LOG_TYPE_FAULT))
  {
    v9 = CLConnectionMessage::name(*a2);
    v10 = *(v9 + 23);
    v11 = *v9;
    CLConnection::getName(*(a1 + 8));
    RemotePid = CLConnection::getRemotePid(*(a1 + 8));
    v13 = __p;
    *buf = 134349826;
    if (v29 < 0)
    {
      v13 = *__p;
    }

    v34 = a1;
    if (v10 >= 0)
    {
      v14 = v9;
    }

    else
    {
      v14 = v11;
    }

    v35 = 2082;
    v36 = v14;
    v37 = 2082;
    v38 = v13;
    v39 = 1026;
    v40 = RemotePid;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_FAULT, "[CLDeviceImpactClient:%{public}p] Got unhandled mesage of type %{public}s, %{public}s (%{public}d)", buf, 0x26u);
    if (SHIBYTE(v29) < 0)
    {
      operator delete(*__p);
    }
  }

  if (sub_10000A100(121, 0))
  {
    sub_101929F68(buf);
    v15 = qword_1025D45B8;
    v16 = CLConnectionMessage::name(*a2);
    v17 = *(v16 + 23);
    v18 = *v16;
    CLConnection::getName(*(a1 + 8));
    v19 = CLConnection::getRemotePid(*(a1 + 8));
    v20 = &v24;
    *__p = 134349826;
    if (v25 < 0)
    {
      v20 = v24;
    }

    *&__p[4] = a1;
    if (v17 >= 0)
    {
      v21 = v16;
    }

    else
    {
      v21 = v18;
    }

    v27 = 2082;
    v28 = v21;
    v29 = 2082;
    v30 = v20;
    v31 = 1026;
    v32 = v19;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v15, 17, "[CLDeviceImpactClient:%{public}p] Got unhandled mesage of type %{public}s, %{public}s (%{public}d)", __p, 38);
    v23 = v22;
    if (v25 < 0)
    {
      operator delete(v24);
    }

    sub_100152C7C("Generic", 1, 0, 0, "virtual void CLDeviceImpactClient::handleMessage(std::shared_ptr<CLConnectionMessage>)", "%s\n", v23);
    if (v23 != buf)
    {
      free(v23);
    }
  }
}

void sub_100757C50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100757CC4(uint64_t a1, uint64_t a2)
{
  v3 = CMDeviceImpactArray;
  v4 = a2;
  [NSDictionary dictionaryWithObjects:&v4 forKeys:&v3 count:1];
  return CLConnectionMessage::sendReply();
}

uint64_t sub_100757D4C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_100757D68(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    sub_100008080(v1);
  }
}

void *sub_100757E3C(void *a1, char *a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_102451BF8;
  sub_100757E98((a1 + 3), a2, a3);
  return a1;
}

uint64_t sub_100757E98(uint64_t a1, char *__s, void *a3)
{
  v5 = strlen(__s);
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100061080();
  }

  v6 = v5;
  if (v5 >= 0x17)
  {
    operator new();
  }

  v9 = v5;
  if (v5)
  {
    memcpy(&__dst, __s, v5);
  }

  *(&__dst + v6) = 0;
  CLConnectionMessage::CLConnectionMessage();
  if (v9 < 0)
  {
    operator delete(__dst);
  }

  return a1;
}

void sub_100757F7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100757F98(char *a1, uint64_t a2)
{
  v10 = *a1;
  if (sub_10001CB4C(a2, "EnableLCFusionForCarPlayV2", &v10, 0xFFFFFFFFLL))
  {
    if (qword_1025D45E0 != -1)
    {
      sub_101929FD4();
    }

    v3 = qword_1025D45E8;
    if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *a1;
      *buf = 67240448;
      *&buf[4] = v4;
      LOWORD(v12) = 1026;
      *(&v12 + 2) = v10;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "LCFusionCarPlay mobile assets read,EnableLCFusionForCarPlay,prev,%{public}d,read,%{public}d", buf, 0xEu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101929FFC(a1);
    }

    v5 = v10;
    *a1 = v10;
  }

  else
  {
    v5 = *a1;
  }

  v9 = v5;
  sub_10001CAF4(buf);
  v6 = sub_10001CB4C(*buf, "EnableLCFusionForCarPlayV2", &v9, 0xFFFFFFFFLL);
  if (v12)
  {
    sub_100008080(v12);
  }

  if (v6)
  {
    if (qword_1025D45E0 != -1)
    {
      sub_101929FD4();
    }

    v7 = qword_1025D45E8;
    if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *a1;
      *buf = 67240448;
      *&buf[4] = v8;
      LOWORD(v12) = 1026;
      *(&v12 + 2) = v9;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "LCFusionCarPlay defaults write read,EnableLCFusionForCarPlay,prev,%{public}d,read,%{public}d", buf, 0xEu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10192A10C(a1);
    }

    *a1 = v9;
  }
}

void sub_100758194(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100008080(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007581B4(_DWORD *a1, uint64_t a2)
{
  sub_10004FD18();
  if (sub_100185ADC(a2, "LCFusionCarPlayConfig", v18, 0xFFFFFFFFLL))
  {
    if (!off_1025D53B8)
    {
      operator new();
    }

    sub_100757F98(off_1025D53B8, v18);
    v17 = a1[10];
    if (sub_10005BBE4(v18, "LCFusionForCarPlayToggleHysteresis", &v17))
    {
      a1[10] = v17;
      if (qword_1025D45E0 != -1)
      {
        sub_101929FD4();
      }

      v4 = qword_1025D45E8;
      if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_INFO))
      {
        *buf = 67240192;
        v22 = v17;
        _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "LCFusionCarPlay mobile assets read, ConditionSwitchHysteresisTime,%{public}d", buf, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10192A21C(buf);
        v19 = 67240192;
        v20 = v17;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D45E8, 1, "LCFusionCarPlay mobile assets read, ConditionSwitchHysteresisTime,%{public}d", &v19, 8);
        v9 = v8;
        sub_100152C7C("Generic", 1, 0, 2, "void CLLCFusionCarPlayConditions::readMobileAssetConfiguration(const CLNameValuePair &)", "%s\n", v8);
        if (v9 != buf)
        {
          free(v9);
        }
      }
    }

    v16 = a1[11];
    if (sub_10005BBE4(v18, "LowBatteryThreshold", &v16))
    {
      a1[11] = v16;
      if (qword_1025D45E0 != -1)
      {
        sub_101929FD4();
      }

      v5 = qword_1025D45E8;
      if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_INFO))
      {
        *buf = 67240192;
        v22 = v16;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "LCFusionCarPlay mobile assets read, LowBatteryThreshold,%{public}d", buf, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10192A21C(buf);
        v19 = 67240192;
        v20 = v16;
        LODWORD(v14) = 8;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D45E8, 1, "LCFusionCarPlay mobile assets read, LowBatteryThreshold,%{public}d", &v19, v14);
        v11 = v10;
        sub_100152C7C("Generic", 1, 0, 2, "void CLLCFusionCarPlayConditions::readMobileAssetConfiguration(const CLNameValuePair &)", "%s\n", v10);
        if (v11 != buf)
        {
          free(v11);
        }
      }
    }

    v15 = a1[12];
    if (sub_10005BBE4(v18, "ProactiveMinSessionIntervalRecoveryMode", &v15))
    {
      a1[12] = v15;
      if (qword_1025D45E0 != -1)
      {
        sub_101929FD4();
      }

      v6 = qword_1025D45E8;
      if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_INFO))
      {
        *buf = 67240192;
        v22 = v15;
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "LCFusionCarPlay mobile assets read, ProactiveMinSessionIntervalRecoveryMode,%{public}d", buf, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10192A21C(buf);
        v19 = 67240192;
        v20 = v15;
        LODWORD(v14) = 8;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D45E8, 1, "LCFusionCarPlay mobile assets read, ProactiveMinSessionIntervalRecoveryMode,%{public}d", &v19, v14);
        v13 = v12;
        sub_100152C7C("Generic", 1, 0, 2, "void CLLCFusionCarPlayConditions::readMobileAssetConfiguration(const CLNameValuePair &)", "%s\n", v12);
        if (v13 != buf)
        {
          free(v13);
        }
      }
    }
  }

  return sub_100005DA4();
}

double sub_100758698(_OWORD *a1)
{
  result = 0.0;
  a1[4] = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 36) = 0u;
  *(a1 + 20) = 0u;
  *(a1 + 4) = 0u;
  return result;
}

void sub_100758710(uint64_t a1, int a2)
{
  v2 = (a1 + 8);
  v3 = *(a1 + 8);
  v4 = v3 * 0.75 + 0.2;
  v5 = v3 * 0.75 + 0.125;
  if (a2 == 2)
  {
    v5 = v4;
  }

  *v2 = v5;
  if (qword_1025D4600 != -1)
  {
    sub_10192A260();
  }

  v6 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    v7 = *v2;
    v15 = 134349056;
    v16 = v7;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "DeviceProximityProcessor,fGnssLowAvailableProb,%{public}0.2f", &v15, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10192A488(v2, v8, v9, v10, v11, v12, v13, v14);
  }
}

void sub_100758810(uint64_t a1, int a2, double a3)
{
  v6 = (a1 + 16);
  if (vabdd_f64(a3, *(a1 + 16)) > 6.0)
  {
    if (qword_1025D4600 != -1)
    {
      sub_10192A260();
    }

    v7 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v8 = *v6;
      v16 = 134349312;
      v17 = a3;
      v18 = 2050;
      v19 = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "DeviceProximityProcessor,FilterReset,timestamp,%{public}.2f,lastTimestamp,%{public}.2f", &v16, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10192A584(v6, v9, v10, v11, v12, v13, v14, v15);
    }

    *(a1 + 8) = 0;
    *a1 = 0;
  }

  *(a1 + 16) = a3;
  sub_100758710(a1, a2);
}

_OWORD *sub_100758940(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0u;
  a1[1] = 0u;
  v4 = sub_100758D3C((a1 + 2), a3);
  v6 = sub_10001A3E8(v4, v5);
  v8 = sub_10001CF04(v6, v7);
  if (v8)
  {
    operator new();
  }

  v10 = sub_10001A3E8(v8, v9);
  if (sub_10071CC78(v10))
  {
    operator new();
  }

  return a1;
}

void sub_100758B14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100759110(va);
  operator delete();
}

uint64_t *sub_100758BDC(uint64_t *a1)
{
  sub_100759190((a1 + 4));
  sub_10067A09C((a1 + 4));
  sub_100758E20(a1 + 3, 0);
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    operator delete();
  }

  sub_100758DD4(a1 + 1, 0);
  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete();
  }

  return a1;
}

double sub_100758C70(uint64_t *a1, _DWORD *a2, double *a3)
{
  v3 = *a1;
  if (*a1)
  {
    *a2 = *(v3 + 24);
    result = *(v3 + 16);
    *a3 = result;
  }

  return result;
}

uint64_t sub_100758CBC(uint64_t a1, int *a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  *a1 = a1 + 8;
  if (a3)
  {
    v6 = 16 * a3;
    do
    {
      sub_1005F7838(a1, v4, a2, a2);
      a2 += 4;
      v6 -= 16;
    }

    while (v6);
  }

  return a1;
}

uint64_t sub_100758D3C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_100758DD4(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_100BB430C(result);

    operator delete();
  }

  return result;
}

id *sub_100758E20(id **a1, id *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_100920A10(result);

    operator delete();
  }

  return result;
}

uint64_t sub_100758EDC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10246EF48;
  a2[1] = v2;
  return result;
}

uint64_t sub_100758F08(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100758F54(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_100759044(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10246EFD8;
  a2[1] = v2;
  return result;
}

uint64_t sub_100759070(uint64_t a1, int *a2, double *a3)
{
  v3 = *a3;
  v4 = *(a1 + 8);
  sub_100758810(v4[2], *a2, *a3);

  return sub_10001123C(v4, v3);
}

uint64_t sub_1007590C4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100759110(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_100759190(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_100759214()
{
  v1[4] = xmmword_101C8C930;
  v1[5] = unk_101C8C940;
  v1[6] = xmmword_101C8C950;
  v1[0] = xmmword_101C8C8F0;
  v1[1] = unk_101C8C900;
  v1[2] = xmmword_101C8C910;
  v1[3] = unk_101C8C920;
  sub_100758CBC(&unk_102637288, v1, 7);
  return __cxa_atexit(sub_1007586E4, &unk_102637288, dword_100000000);
}

void sub_1007592C8(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  if (sub_100196D1C())
  {
    if (sub_10019C22C(a2) && sub_100027FB4(a3) && sub_10019A2D4(a1) && (*(a1 + 88) & 1) == 0)
    {
      v8 = *(a1 + 40);
      if (v8 >= *(sub_1000F7F38() + 34))
      {
        v9 = *(a1 + 64);
        if (v9 <= a4)
        {
          v16 = a4 - v9;
          if (a4 - v9 < sub_100759B38())
          {
            return;
          }

          sub_100759B80(a3, a1);
          v18 = v17;
          v19 = sub_100759C20();
          if (v18 <= v19)
          {
            *__p = *a1;
            if (sub_100CE194C(a2, __p, a4))
            {
              if (qword_1025D4620 != -1)
              {
                sub_10192A6A4();
              }

              v28 = qword_1025D4628;
              if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
              {
                CFAbsoluteTimeGetCurrent();
                sub_100EFF768(a1, buf);
                v29 = v44 >= 0 ? buf : *buf;
                *__p = 134349571;
                *&__p[4] = v16;
                v53 = 2050;
                v54 = a4;
                v55 = 2085;
                v56 = v29;
                _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_DEBUG, "@AlsDB, successfully increased cache age by %{public}.1fs via updating timestamp to %{public}.1f for centroid %{sensitive}s", __p, 0x20u);
                if (SHIBYTE(v44) < 0)
                {
                  operator delete(*buf);
                }
              }

              if (sub_10000A100(121, 2))
              {
                bzero(__p, 0x65CuLL);
                if (qword_1025D4620 != -1)
                {
                  sub_10192A6A4();
                }

                v32 = qword_1025D4628;
                CFAbsoluteTimeGetCurrent();
                sub_100EFF768(a1, v48);
                if (v51 >= 0)
                {
                  v33 = v48;
                }

                else
                {
                  v33 = *v48;
                }

                *buf = 134349571;
                *&buf[4] = v16;
                v42 = 2050;
                v43 = a4;
                v44 = 2085;
                v45 = v33;
                _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, v32, 2, "@AlsDB, successfully increased cache age by %{public}.1fs via updating timestamp to %{public}.1f for centroid %{sensitive}s", buf, 32);
                v35 = v34;
                if (v51 < 0)
                {
                  operator delete(*v48);
                }

                sub_100152C7C("Generic", 1, 0, 2, "static void CLAlsDatabaseCacheAgeManager::incrementQueryTimestampIfNecessary(const CLWifiAPLocation &, CLWifiAccessPointLocationRepository &, const CLDaemonLocation &, const CFAbsoluteTime)", "%s\n", v35);
                if (v35 != __p)
                {
                  free(v35);
                }
              }

              sub_100759C68();
            }

            else
            {
              if (qword_1025D4620 != -1)
              {
                sub_10192A6A4();
              }

              v30 = qword_1025D4628;
              if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
              {
                CFAbsoluteTimeGetCurrent();
                sub_100EFF768(a1, __p);
                v31 = v55 >= 0 ? COERCE_DOUBLE(__p) : *__p;
                *buf = 134349315;
                *&buf[4] = a4;
                v42 = 2085;
                v43 = v31;
                _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_ERROR, "@AlsDB, could not update timestamp to %{public}.1f for centroid %{sensitive}s", buf, 0x16u);
                if (SHIBYTE(v55) < 0)
                {
                  operator delete(*__p);
                }
              }

              if (sub_10000A100(121, 0))
              {
                bzero(__p, 0x65CuLL);
                if (qword_1025D4620 != -1)
                {
                  sub_10192A6A4();
                }

                v36 = qword_1025D4628;
                CFAbsoluteTimeGetCurrent();
                sub_100EFF768(a1, buf);
                if (v44 >= 0)
                {
                  v37 = buf;
                }

                else
                {
                  v37 = *buf;
                }

                *v48 = 134349315;
                *&v48[4] = a4;
                v49 = 2085;
                v50 = v37;
                _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, v36, 16, "@AlsDB, could not update timestamp to %{public}.1f for centroid %{sensitive}s", v48, 22);
                v15 = v38;
                if (SHIBYTE(v44) < 0)
                {
                  operator delete(*buf);
                }

                sub_100152C7C("Generic", 1, 0, 0, "static void CLAlsDatabaseCacheAgeManager::incrementQueryTimestampIfNecessary(const CLWifiAPLocation &, CLWifiAccessPointLocationRepository &, const CLDaemonLocation &, const CFAbsoluteTime)", "%s\n", v15);
                goto LABEL_25;
              }
            }
          }

          else
          {
            v20 = v19;
            if (qword_1025D4620 != -1)
            {
              sub_10192A6CC();
            }

            v21 = qword_1025D4628;
            if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
            {
              v22 = buf;
              sub_100B1AA60(buf);
              if (v44 < 0)
              {
                v22 = *buf;
              }

              CFAbsoluteTimeGetCurrent();
              sub_100EFF768(a1, v48);
              if (v51 >= 0)
              {
                v23 = v48;
              }

              else
              {
                v23 = *v48;
              }

              *__p = 134349827;
              *&__p[4] = v18;
              v53 = 2050;
              v54 = v20;
              v55 = 2085;
              v56 = v22;
              v57 = 2085;
              v58 = v23;
              _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEBUG, "@AlsDB, skip cache age update as distance %{public}.1f greater than %{public}.0f, GPS %{sensitive}s, centroid %{sensitive}s", __p, 0x2Au);
              if (v51 < 0)
              {
                operator delete(*v48);
              }

              if (SHIBYTE(v44) < 0)
              {
                operator delete(*buf);
              }
            }

            if (sub_10000A100(121, 2))
            {
              sub_10192A6E0(__p);
              v24 = qword_1025D4628;
              sub_100B1AA60(v48);
              if (v51 >= 0)
              {
                v25 = v48;
              }

              else
              {
                v25 = *v48;
              }

              CFAbsoluteTimeGetCurrent();
              sub_100EFF768(a1, v39);
              if (v40 >= 0)
              {
                v26 = v39;
              }

              else
              {
                v26 = v39[0];
              }

              *buf = 134349827;
              *&buf[4] = v18;
              v42 = 2050;
              v43 = v20;
              v44 = 2085;
              v45 = v25;
              v46 = 2085;
              v47 = v26;
              _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, v24, 2, "@AlsDB, skip cache age update as distance %{public}.1f greater than %{public}.0f, GPS %{sensitive}s, centroid %{sensitive}s", buf, 42);
              v15 = v27;
              if (v40 < 0)
              {
                operator delete(v39[0]);
              }

              if (v51 < 0)
              {
                operator delete(*v48);
              }

              sub_100152C7C("Generic", 1, 0, 2, "static void CLAlsDatabaseCacheAgeManager::incrementQueryTimestampIfNecessary(const CLWifiAPLocation &, CLWifiAccessPointLocationRepository &, const CLDaemonLocation &, const CFAbsoluteTime)", "%s\n", v15);
              goto LABEL_25;
            }
          }
        }

        else
        {
          if (qword_1025D4620 != -1)
          {
            sub_10192A6CC();
          }

          v10 = qword_1025D4628;
          if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
          {
            CFAbsoluteTimeGetCurrent();
            sub_100EFF768(a1, __p);
            v11 = v55 >= 0 ? COERCE_DOUBLE(__p) : *__p;
            *buf = 134349315;
            *&buf[4] = a4;
            v42 = 2085;
            v43 = v11;
            _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "@AlsDB, warning, current timestamp %{public}.1f less than query timestamp of centroid %{sensitive}s", buf, 0x16u);
            if (SHIBYTE(v55) < 0)
            {
              operator delete(*__p);
            }
          }

          if (sub_10000A100(121, 2))
          {
            bzero(__p, 0x65CuLL);
            if (qword_1025D4620 != -1)
            {
              sub_10192A6A4();
            }

            v12 = qword_1025D4628;
            CFAbsoluteTimeGetCurrent();
            sub_100EFF768(a1, buf);
            if (v44 >= 0)
            {
              v13 = buf;
            }

            else
            {
              v13 = *buf;
            }

            *v48 = 134349315;
            *&v48[4] = a4;
            v49 = 2085;
            v50 = v13;
            _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, v12, 2, "@AlsDB, warning, current timestamp %{public}.1f less than query timestamp of centroid %{sensitive}s", v48, 22);
            v15 = v14;
            if (SHIBYTE(v44) < 0)
            {
              operator delete(*buf);
            }

            sub_100152C7C("Generic", 1, 0, 2, "static void CLAlsDatabaseCacheAgeManager::incrementQueryTimestampIfNecessary(const CLWifiAPLocation &, CLWifiAccessPointLocationRepository &, const CLDaemonLocation &, const CFAbsoluteTime)", "%s\n", v15);
LABEL_25:
            if (v15 != __p)
            {
              free(v15);
            }
          }
        }
      }
    }
  }
}

void sub_100759B00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_100759B38()
{
  if (qword_102659A20 != -1)
  {
    sub_10192A724();
  }

  v0 = &qword_102659A10;
  if ((dword_102659A18 & 1) == 0)
  {
    v0 = sub_1001CCA30() + 48;
  }

  return *v0;
}

void sub_100759B80(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_102659A50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_102659A50))
  {
    sub_10018D404(xmmword_102659A28);
    __cxa_guard_release(&qword_102659A50);
  }

  v4 = *(a1 + 4);
  v5 = *(a1 + 12);
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);

  sub_100109D18(xmmword_102659A28, v4, v5, v6, v7, 0.0);
}

double sub_100759C20()
{
  if (qword_102659A68 != -1)
  {
    sub_10192A738();
  }

  v0 = &qword_102659A58;
  if ((dword_102659A60 & 1) == 0)
  {
    v0 = sub_1001CCA30() + 56;
  }

  return *v0;
}

void sub_100759CE8(id a1)
{
  v4 = 0;
  sub_10001CAF4(&buf);
  v1 = sub_10001CB4C(buf, "isAlsDatabaseCacheAgeManagerEnabled", &v4, 0xFFFFFFFFLL);
  if (*(&buf + 1))
  {
    sub_100008080(*(&buf + 1));
  }

  if (v1)
  {
    if (qword_1025D4620 != -1)
    {
      sub_10192A6A4();
    }

    v2 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      if (v4)
      {
        v3 = "true";
      }

      else
      {
        v3 = "false";
      }

      LODWORD(buf) = 136446210;
      *(&buf + 4) = v3;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "#Warning defaults write isAlsDatabaseCacheAgeManagerEnabled to %{public}s", &buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10192A74C();
    }

    word_1026599E8 = v4 | 0x100;
  }
}

void sub_100759E1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100008080(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_100759E3C(id a1)
{
  v3 = 0;
  sub_10001CAF4(&buf);
  v1 = sub_1000B9370(buf, "maxAllowedRefLocationAgeToIncrementAlsDatabaseCacheAge", &v3);
  if (*(&buf + 1))
  {
    sub_100008080(*(&buf + 1));
  }

  if (v1)
  {
    if (qword_1025D4620 != -1)
    {
      sub_10192A6A4();
    }

    v2 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 134349056;
      *(&buf + 4) = v3;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "#Warning defaults write maxAllowedRefLocationAgeToIncrementAlsDatabaseCacheAge to %{public}.1f", &buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10192A850();
    }

    qword_1026599F8 = v3;
    LOBYTE(dword_102659A00) = 1;
  }
}

void sub_100759F60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100008080(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_100759FB0(id a1)
{
  v3 = 0;
  sub_10001CAF4(&buf);
  v1 = sub_1000B9370(buf, "minAllowedAlsCacheAgeToIncrementAlsDatabaseCacheAge", &v3);
  if (*(&buf + 1))
  {
    sub_100008080(*(&buf + 1));
  }

  if (v1)
  {
    if (qword_1025D4620 != -1)
    {
      sub_10192A6A4();
    }

    v2 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 134349056;
      *(&buf + 4) = v3;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "#Warning defaults write minAllowedAlsCacheAgeToIncrementAlsDatabaseCacheAge to %{public}.1f", &buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10192A93C();
    }

    qword_102659A10 = v3;
    LOBYTE(dword_102659A18) = 1;
  }
}

void sub_10075A0D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100008080(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_10075A0F4(id a1)
{
  v3 = 0;
  sub_10001CAF4(&buf);
  v1 = sub_1000B9370(buf, "maxAllowedDistanceToIncrementAlsDatabaseCacheAge", &v3);
  if (*(&buf + 1))
  {
    sub_100008080(*(&buf + 1));
  }

  if (v1)
  {
    if (qword_1025D4620 != -1)
    {
      sub_10192A6A4();
    }

    v2 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 134349056;
      *(&buf + 4) = v3;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "#Warning defaults write maxAllowedDistanceToIncrementAlsDatabaseCacheAge to %{public}.1f", &buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10192AA28();
    }

    qword_102659A58 = v3;
    LOBYTE(dword_102659A60) = 1;
  }
}

void sub_10075A218(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100008080(a12);
  }

  _Unwind_Resume(exception_object);
}

NSDictionary *sub_10075A238(uint64_t a1)
{
  v2 = @"alsDatabaseCacheAgeExtendedInDays";
  v3 = [NSNumber numberWithDouble:*(a1 + 32)];
  return [NSDictionary dictionaryWithObjects:&v3 forKeys:&v2 count:1];
}

void sub_10075A2BC()
{
  if ((atomic_load_explicit(&qword_1025D4918, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D4918))
    {
      v0 = 256;
      qword_1025D4908 = 0;
      unk_1025D4910 = 0;
      qword_1025D4900 = 0;
      sub_10015D8A0(&qword_1025D4900, &v0, &v1, 2);
      __cxa_atexit(sub_10037DED4, &qword_1025D4900, dword_100000000);
      __cxa_guard_release(&qword_1025D4918);
    }
  }
}

uint64_t sub_10075C184(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v52) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v52 & 0x7F) << v5;
        if ((v52 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v10 = v6++ >= 9;
        if (v10)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v12 = v11 >> 3;
      if ((v11 >> 3) <= 4)
      {
        if (v12 > 2)
        {
          if (v12 == 3)
          {
            v52 = 0;
            v34 = [a2 position] + 8;
            if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 8, v35 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            v47 = v52;
            v48 = 16;
          }

          else
          {
            if (v12 != 4)
            {
              goto LABEL_80;
            }

            v52 = 0;
            v21 = [a2 position] + 8;
            if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 8, v22 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            v47 = v52;
            v48 = 8;
          }

          *(a1 + v48) = v47;
        }

        else
        {
          if (v12 == 1)
          {
            v29 = 0;
            v30 = 0;
            v31 = 0;
            while (1)
            {
              LOBYTE(v52) = 0;
              v32 = [a2 position] + 1;
              if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v31 |= (v52 & 0x7F) << v29;
              if ((v52 & 0x80) == 0)
              {
                break;
              }

              v29 += 7;
              v10 = v30++ >= 9;
              if (v10)
              {
                v28 = 0;
                goto LABEL_91;
              }
            }

            if ([a2 hasError])
            {
              v28 = 0;
            }

            else
            {
              v28 = v31;
            }

LABEL_91:
            v46 = 24;
LABEL_96:
            *(a1 + v46) = v28;
            goto LABEL_109;
          }

          if (v12 != 2)
          {
            goto LABEL_80;
          }

          v15 = 0;
          v16 = 0;
          v17 = 0;
          while (1)
          {
            LOBYTE(v52) = 0;
            v18 = [a2 position] + 1;
            if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v17 |= (v52 & 0x7F) << v15;
            if ((v52 & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v10 = v16++ >= 9;
            if (v10)
            {
              LOBYTE(v20) = 0;
              goto LABEL_83;
            }
          }

          v20 = (v17 != 0) & ~[a2 hasError];
LABEL_83:
          *(a1 + 48) = v20;
        }
      }

      else
      {
        if (v12 <= 6)
        {
          if (v12 == 5)
          {
            v38 = 0;
            v39 = 0;
            v40 = 0;
            *(a1 + 52) |= 0x10u;
            while (1)
            {
              LOBYTE(v52) = 0;
              v41 = [a2 position] + 1;
              if (v41 >= [a2 position] && (v42 = objc_msgSend(a2, "position") + 1, v42 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v40 |= (v52 & 0x7F) << v38;
              if ((v52 & 0x80) == 0)
              {
                break;
              }

              v38 += 7;
              v10 = v39++ >= 9;
              if (v10)
              {
                v28 = 0;
                goto LABEL_95;
              }
            }

            if ([a2 hasError])
            {
              v28 = 0;
            }

            else
            {
              v28 = v40;
            }

LABEL_95:
            v46 = 44;
          }

          else
          {
            if (v12 != 6)
            {
LABEL_80:
              result = PBReaderSkipValueWithTag();
              if (!result)
              {
                return result;
              }

              goto LABEL_109;
            }

            v23 = 0;
            v24 = 0;
            v25 = 0;
            *(a1 + 52) |= 8u;
            while (1)
            {
              LOBYTE(v52) = 0;
              v26 = [a2 position] + 1;
              if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v25 |= (v52 & 0x7F) << v23;
              if ((v52 & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              v10 = v24++ >= 9;
              if (v10)
              {
                v28 = 0;
                goto LABEL_87;
              }
            }

            if ([a2 hasError])
            {
              v28 = 0;
            }

            else
            {
              v28 = v25;
            }

LABEL_87:
            v46 = 40;
          }

          goto LABEL_96;
        }

        switch(v12)
        {
          case 7:
            *(a1 + 52) |= 2u;
            LODWORD(v52) = 0;
            v36 = [a2 position] + 4;
            if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 4, v37 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
            }

            else
            {
              [a2 _setError];
            }

            v49 = v52;
            v50 = 32;
            break;
          case 8:
            *(a1 + 52) |= 4u;
            LODWORD(v52) = 0;
            v43 = [a2 position] + 4;
            if (v43 >= [a2 position] && (v44 = objc_msgSend(a2, "position") + 4, v44 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
            }

            else
            {
              [a2 _setError];
            }

            v49 = v52;
            v50 = 36;
            break;
          case 9:
            *(a1 + 52) |= 1u;
            LODWORD(v52) = 0;
            v13 = [a2 position] + 4;
            if (v13 >= [a2 position] && (v14 = objc_msgSend(a2, "position") + 4, v14 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
            }

            else
            {
              [a2 _setError];
            }

            v49 = v52;
            v50 = 28;
            break;
          default:
            goto LABEL_80;
        }

        *(a1 + v50) = v49;
      }

LABEL_109:
      v51 = [a2 position];
    }

    while (v51 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void *sub_10075D45C(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1004582A8(v6, a3);
  sub_1006E94E4(a1, a2, v6);
  sub_100458228(v6);
  *a1 = off_10246F130;
  return a1;
}

void sub_10075D4F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100458228(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10075D518(uint64_t result, double a2)
{
  if (*(result + 40) > a2)
  {
    a2 = *(result + 40);
  }

  *(result + 40) = a2;
  return result;
}

void sub_10075D52C(uint64_t a1)
{
  v3 = 0;
  v1 = 0;
  v2 = 0;
  operator new();
}

__n128 sub_10075D740(uint64_t a1, uint64_t a2)
{
  *a2 = off_10246F180;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

double sub_10075D778(uint64_t a1, uint64_t a2, double *a3)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  result = *v3 + *(a2 + 16) * *a3;
  *v3 = result;
  *v4 = (*v4 | *(a2 + 28)) & 1;
  **(a1 + 24) = (**(a1 + 24) | *(a2 + 29)) & 1;
  return result;
}

uint64_t sub_10075D7C0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10075D80C(uint64_t a1, uint64_t a2)
{
  v2 = sub_10001A3E8(a1, a2);
  result = (**v2)(v2);
  if (result)
  {
    operator new();
  }

  return result;
}

uint64_t sub_10075D89C(uint64_t a1, uint64_t a2)
{
  if (qword_102659A70 != -1)
  {
    sub_10192AB14();
  }

  return qword_1026372A0;
}

const void *sub_10075D8D8(const void *a1)
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, a1, sub_10075D954, @"com.apple.locationd.FlickGesturePrefsChanged", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v3 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v3, a1, sub_10075D9D0, @"CLFlickGestureMaxGestureLengthSyncNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  return a1;
}

void sub_10075D954(uint64_t a1, uint64_t a2)
{
  v3 = sub_100011660(a1, a2);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10075DD78;
  v4[3] = &unk_102449A78;
  v4[4] = a2;
  sub_100042800(v3, v4);
}

void sub_10075D9D4()
{
  *buf = 0;
  sub_1004861C8(v5, "FlickMaxGestureLength", buf, 0);
  v0 = v6;
  CFPreferencesSetValue(@"FlickMaxGestureLength", [NSNumber numberWithInt:v6], @"com.apple.locationd", @"mobile", kCFPreferencesCurrentHost);
  v1 = CFPreferencesSynchronize(@"com.apple.locationd", @"mobile", kCFPreferencesCurrentHost);
  v2 = objc_alloc_init(NPSManager);
  v9 = @"FlickMaxGestureLength";
  [v2 synchronizeUserDefaultsDomain:@"com.apple.locationd" keys:{+[NSSet setWithArray:](NSSet, "setWithArray:", +[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v9, 1))}];

  if (v1)
  {
    if (qword_1025D41F0 != -1)
    {
      sub_10192AB28();
    }

    v3 = qword_1025D41F8;
    if (os_log_type_enabled(qword_1025D41F8, OS_LOG_TYPE_INFO))
    {
      *buf = 67240192;
      v8 = v0;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_INFO, "[CLFlickGestureControlCompanion] FlickMaxGestureLength preferences synchronized: %{public}d.", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10192AB50(v0);
    }
  }

  else
  {
    if (qword_1025D41F0 != -1)
    {
      sub_10192AB28();
    }

    v4 = qword_1025D41F8;
    if (os_log_type_enabled(qword_1025D41F8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "[CLFlickGestureControlCompanion] FlickMaxGestureLength preferences failed to sync.", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10192AC64();
    }
  }
}

void sub_10075DBF0()
{
  if (CFPreferencesSynchronize(@"com.apple.locationd", @"mobile", kCFPreferencesCurrentHost))
  {
    *buf = 0;
    sub_1004861C8(v2, "FlickMaxGestureLength", buf, 0);
    if (qword_1025D41F0 != -1)
    {
      sub_10192AB28();
    }

    v0 = qword_1025D41F8;
    if (os_log_type_enabled(qword_1025D41F8, OS_LOG_TYPE_INFO))
    {
      *buf = 67240192;
      v5 = v3;
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_INFO, "[CLFlickGestureControlCompanion] Received PreferenceChangedNotification: %{public}d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10192AD5C(v2);
    }
  }

  else
  {
    if (qword_1025D41F0 != -1)
    {
      sub_10192AE74();
    }

    v1 = qword_1025D41F8;
    if (os_log_type_enabled(qword_1025D41F8, OS_LOG_TYPE_ERROR))
    {
      *v2 = 0;
      _os_log_impl(dword_100000000, v1, OS_LOG_TYPE_ERROR, "[CLFlickGestureControlCompanion] Failed to received PreferenceChangedNotification", v2, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10192AE88();
    }
  }
}

uint64_t sub_10075DDAC(uint64_t a1)
{
  v2 = *(a1 + 104);
  *(a1 + 104) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  sub_10075DE38((a1 + 96));
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t *sub_10075DE38(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_1008F5A20(v2);
    operator delete();
  }

  return a1;
}

void sub_10075DE84(char *__dst, __int128 *a2, __int128 *a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_100007244(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v5;
  }

  if (*(a3 + 23) < 0)
  {
    sub_100007244(__dst + 24, *a3, *(a3 + 1));
  }

  else
  {
    v6 = *a3;
    *(__dst + 5) = *(a3 + 2);
    *(__dst + 24) = v6;
  }

  *(__dst + 6) = 0x100000002;
  *(__dst + 28) = 0;
  if (*(a3 + 23) < 0)
  {
    sub_100007244(__dst + 64, *a3, *(a3 + 1));
  }

  else
  {
    v7 = *a3;
    *(__dst + 10) = *(a3 + 2);
    *(__dst + 4) = v7;
  }

  *(__dst + 11) = 0;
  operator new();
}

void sub_10075E0DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  v20 = *(v18 + 104);
  *(v18 + 104) = 0;
  if (v20)
  {
    (*(*v20 + 8))(v20, a2, a3, a4, a5, a6, a7, a8);
  }

  sub_10075DE38((v18 + 96));
  if (*(v18 + 87) < 0)
  {
    operator delete(*(v18 + 64));
  }

  if (*(v18 + 47) < 0)
  {
    operator delete(*(v18 + 24));
  }

  if (*(v18 + 23) < 0)
  {
    operator delete(*v18);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10075E1AC(uint64_t a1)
{
  v2 = *(a1 + 104);
  if (!v2 || !sub_100023B68(v2))
  {
    sub_100760430();
  }

  result = sub_1008F60FC(*(a1 + 96));
  if ((result & 1) == 0)
  {
    v4 = *(a1 + 96);

    return sub_1008F6078(v4);
  }

  return result;
}

uint64_t sub_10075E260(uint64_t a1)
{
  result = *(a1 + 104);
  if (result)
  {
    return sub_100023B68(result);
  }

  return result;
}

uint64_t sub_10075E274(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 104);
  if (v4 && sub_100023B68(v4))
  {
    operator new();
  }

  if (qword_1025D4630 != -1)
  {
    sub_10192AFEC();
  }

  v5 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_INFO))
  {
    LOWORD(v7.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "not connected to wifi #tile header table", &v7, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10192B000();
  }

  return 0;
}

void sub_10075E8C0(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (v47)
  {
    (*(*v47 + 8))(v47, a2, a3, a4, a5, a6, a7, a8);
  }

  if (a40 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10075E9B0(uint64_t a1, int *a2)
{
  v3 = *(a1 + 104);
  if (v3 && sub_100023B68(v3))
  {
    *(&v22.__r_.__value_.__s + 23) = 12;
    strcpy(&v22, "DELETE FROM ");
    v4 = *(a1 + 23);
    if (v4 >= 0)
    {
      v5 = a1;
    }

    else
    {
      v5 = *a1;
    }

    if (v4 >= 0)
    {
      v6 = *(a1 + 23);
    }

    else
    {
      v6 = *(a1 + 8);
    }

    v7 = std::string::append(&v22, v5, v6);
    v8 = *&v7->__r_.__value_.__l.__data_;
    v23.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
    *&v23.__r_.__value_.__l.__data_ = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    v9 = std::string::append(&v23, " WHERE ", 7uLL);
    v10 = *&v9->__r_.__value_.__l.__data_;
    v24.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
    *&v24.__r_.__value_.__l.__data_ = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    v11 = std::string::append(&v24, "TileX", 5uLL);
    v12 = *&v11->__r_.__value_.__l.__data_;
    v25.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
    *&v25.__r_.__value_.__l.__data_ = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    v13 = std::string::append(&v25, " = ? AND ", 9uLL);
    v14 = *&v13->__r_.__value_.__l.__data_;
    v26.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
    *&v26.__r_.__value_.__l.__data_ = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    v15 = std::string::append(&v26, "TileY", 5uLL);
    v16 = *&v15->__r_.__value_.__l.__data_;
    v29.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
    *&v29.__r_.__value_.__l.__data_ = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    v17 = std::string::append(&v29, " = ? ", 5uLL);
    v18 = *&v17->__r_.__value_.__l.__data_;
    v28 = v17->__r_.__value_.__r.__words[2];
    v27 = v18;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v29.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v26.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__r_.__value_.__l.__data_);
    }

    if (v28 >= 0)
    {
      v19 = &v27;
    }

    else
    {
      v19 = v27;
    }

    sub_1000388D8(*(a1 + 104), v19);
  }

  if (qword_1025D4630 != -1)
  {
    sub_10192AFEC();
  }

  v20 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_INFO))
  {
    LOWORD(v29.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_INFO, "not connected to wifi #tile header table", &v29, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10192B0E4();
  }

  return 0;
}

void sub_10075EE28(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (v42)
  {
    (*(*v42 + 8))(v42, a2, a3, a4, a5, a6, a7, a8);
  }

  if (*(v43 - 121) < 0)
  {
    operator delete(*(v43 - 144));
  }

  _Unwind_Resume(exception_object);
}

void sub_10075EF10(uint64_t a1@<X0>, _BYTE *a3@<X8>)
{
  *a3 = 0;
  a3[144] = 0;
  v4 = *(a1 + 104);
  if (v4 && sub_100023B68(v4))
  {
    *(&v39.__r_.__value_.__s + 23) = 7;
    strcpy(&v39, "SELECT ");
    sub_1002365D8(__p);
    if ((v38 & 0x80u) == 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    if ((v38 & 0x80u) == 0)
    {
      v6 = v38;
    }

    else
    {
      v6 = __p[1];
    }

    v7 = std::string::append(&v39, v5, v6);
    v8 = *&v7->__r_.__value_.__l.__data_;
    v40.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
    *&v40.__r_.__value_.__l.__data_ = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    v36 = 6;
    strcpy(__s, " FROM ");
    v9 = std::string::append(&v40, __s, 6uLL);
    v10 = *&v9->__r_.__value_.__l.__data_;
    v41.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
    *&v41.__r_.__value_.__l.__data_ = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    v11 = *(a1 + 23);
    if (v11 >= 0)
    {
      v12 = a1;
    }

    else
    {
      v12 = *a1;
    }

    if (v11 >= 0)
    {
      v13 = *(a1 + 23);
    }

    else
    {
      v13 = *(a1 + 8);
    }

    v14 = std::string::append(&v41, v12, v13);
    v15 = *&v14->__r_.__value_.__l.__data_;
    v42.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
    *&v42.__r_.__value_.__l.__data_ = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    v34 = 7;
    strcpy(v33, " WHERE ");
    v16 = std::string::append(&v42, v33, 7uLL);
    v17 = *&v16->__r_.__value_.__l.__data_;
    v43.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
    *&v43.__r_.__value_.__l.__data_ = v17;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    v18 = std::string::append(&v43, "TileX", 5uLL);
    v19 = *&v18->__r_.__value_.__l.__data_;
    v44.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
    *&v44.__r_.__value_.__l.__data_ = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    v32 = 7;
    strcpy(v31, "=? AND ");
    v20 = std::string::append(&v44, v31, 7uLL);
    v21 = *&v20->__r_.__value_.__l.__data_;
    v45.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
    *&v45.__r_.__value_.__l.__data_ = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    v22 = std::string::append(&v45, "TileY", 5uLL);
    v23 = *&v22->__r_.__value_.__l.__data_;
    *&v28[16] = *(&v22->__r_.__value_.__l + 2);
    *v28 = v23;
    v22->__r_.__value_.__l.__size_ = 0;
    v22->__r_.__value_.__r.__words[2] = 0;
    v22->__r_.__value_.__r.__words[0] = 0;
    v30 = 2;
    strcpy(v29, "=?");
    v24 = std::string::append(v28, v29, 2uLL);
    v25 = *&v24->__r_.__value_.__l.__data_;
    v47 = v24->__r_.__value_.__r.__words[2];
    v46 = v25;
    v24->__r_.__value_.__l.__size_ = 0;
    v24->__r_.__value_.__r.__words[2] = 0;
    v24->__r_.__value_.__r.__words[0] = 0;
    if (v30 < 0)
    {
      operator delete(*v29);
    }

    if ((v28[23] & 0x80000000) != 0)
    {
      operator delete(*v28);
    }

    if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v45.__r_.__value_.__l.__data_);
    }

    if (v32 < 0)
    {
      operator delete(*v31);
    }

    if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v44.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v43.__r_.__value_.__l.__data_);
    }

    if (v34 < 0)
    {
      operator delete(*v33);
    }

    if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v42.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v41.__r_.__value_.__l.__data_);
    }

    if (v36 < 0)
    {
      operator delete(*__s);
    }

    if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v40.__r_.__value_.__l.__data_);
    }

    if (v38 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v39.__r_.__value_.__l.__data_);
    }

    if (v47 >= 0)
    {
      v26 = &v46;
    }

    else
    {
      v26 = v46;
    }

    sub_1000388D8(*(a1 + 104), v26);
  }

  if (qword_1025D4630 != -1)
  {
    sub_10192AFEC();
  }

  v27 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_INFO))
  {
    *v28 = 0;
    _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_INFO, "not connected to wifi #tile header table", v28, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10192B1C8();
  }
}

void sub_10075F544(_Unwind_Exception *a1)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  if (*(v2 - 169) < 0)
  {
    operator delete(*(v2 - 192));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10075F6F8(uint64_t a1)
{
  v2 = *(a1 + 104);
  if (v2 && sub_100023B68(v2))
  {
    *(&v13.__r_.__value_.__s + 23) = 21;
    strcpy(&v13, "SELECT COUNT(*) FROM ");
    v3 = *(a1 + 23);
    if (v3 >= 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = *a1;
    }

    if (v3 >= 0)
    {
      v5 = *(a1 + 23);
    }

    else
    {
      v5 = *(a1 + 8);
    }

    v6 = std::string::append(&v13, v4, v5);
    v7 = *&v6->__r_.__value_.__l.__data_;
    v16.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
    *&v16.__r_.__value_.__l.__data_ = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    v8 = std::string::append(&v16, ";", 1uLL);
    v9 = *&v8->__r_.__value_.__l.__data_;
    v15 = v8->__r_.__value_.__r.__words[2];
    *__p = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v13.__r_.__value_.__l.__data_);
    }

    if (v15 >= 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    sub_1000388D8(*(a1 + 104), v10);
  }

  if (qword_1025D4630 != -1)
  {
    sub_10192AFEC();
  }

  v11 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_INFO))
  {
    LOWORD(v16.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_INFO, "not connected to wifi #tile header table", &v16, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10192B2AC();
  }

  return 0;
}

void sub_10075FA14(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (v30)
  {
    (*(*v30 + 8))(v30, a2, a3, a4, a5, a6, a7, a8);
  }

  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10075FAA0(uint64_t a1, int *a2, double a3)
{
  sub_10000EC00(&__p, "AccessTimestamp");
  v6 = sub_10075FB30(a1, a2, &__p, a3);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v6;
}

void sub_10075FB14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10075FB30(uint64_t a1, int *a2, std::string *this, double a4)
{
  if (std::string::compare(this, "AccessTimestamp") && std::string::compare(this, "GizmoSyncTimestamp"))
  {
    sub_10192B390();
  }

  v6 = *(a1 + 104);
  if (v6 && sub_100023B68(v6))
  {
    *(&v32.__r_.__value_.__s + 23) = 7;
    strcpy(&v32, "UPDATE ");
    v7 = *(a1 + 23);
    if (v7 >= 0)
    {
      v8 = a1;
    }

    else
    {
      v8 = *a1;
    }

    if (v7 >= 0)
    {
      v9 = *(a1 + 23);
    }

    else
    {
      v9 = *(a1 + 8);
    }

    v10 = std::string::append(&v32, v8, v9);
    v11 = *&v10->__r_.__value_.__l.__data_;
    v33.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
    *&v33.__r_.__value_.__l.__data_ = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    v12 = std::string::append(&v33, " SET ", 5uLL);
    v13 = *&v12->__r_.__value_.__l.__data_;
    v34.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
    *&v34.__r_.__value_.__l.__data_ = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    v14 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
    if (v14 >= 0)
    {
      v15 = this;
    }

    else
    {
      v15 = this->__r_.__value_.__r.__words[0];
    }

    if (v14 >= 0)
    {
      size = HIBYTE(this->__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = this->__r_.__value_.__l.__size_;
    }

    v17 = std::string::append(&v34, v15, size);
    v18 = *&v17->__r_.__value_.__l.__data_;
    v35.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
    *&v35.__r_.__value_.__l.__data_ = v18;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    v19 = std::string::append(&v35, " = ? WHERE ", 0xBuLL);
    v20 = *&v19->__r_.__value_.__l.__data_;
    v36.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
    *&v36.__r_.__value_.__l.__data_ = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    v21 = std::string::append(&v36, "TileX", 5uLL);
    v22 = *&v21->__r_.__value_.__l.__data_;
    v37.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
    *&v37.__r_.__value_.__l.__data_ = v22;
    v21->__r_.__value_.__l.__size_ = 0;
    v21->__r_.__value_.__r.__words[2] = 0;
    v21->__r_.__value_.__r.__words[0] = 0;
    v23 = std::string::append(&v37, " = ? AND ", 9uLL);
    v24 = *&v23->__r_.__value_.__l.__data_;
    v38.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
    *&v38.__r_.__value_.__l.__data_ = v24;
    v23->__r_.__value_.__l.__size_ = 0;
    v23->__r_.__value_.__r.__words[2] = 0;
    v23->__r_.__value_.__r.__words[0] = 0;
    v25 = std::string::append(&v38, "TileY", 5uLL);
    v26 = *&v25->__r_.__value_.__l.__data_;
    *&v41[16] = *(&v25->__r_.__value_.__l + 2);
    *v41 = v26;
    v25->__r_.__value_.__l.__size_ = 0;
    v25->__r_.__value_.__r.__words[2] = 0;
    v25->__r_.__value_.__r.__words[0] = 0;
    v27 = std::string::append(v41, " = ?", 4uLL);
    v28 = *&v27->__r_.__value_.__l.__data_;
    v40 = v27->__r_.__value_.__r.__words[2];
    __p = v28;
    v27->__r_.__value_.__l.__size_ = 0;
    v27->__r_.__value_.__r.__words[2] = 0;
    v27->__r_.__value_.__r.__words[0] = 0;
    if ((v41[23] & 0x80000000) != 0)
    {
      operator delete(*v41);
    }

    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v38.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v37.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v36.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v35.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v34.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v33.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v32.__r_.__value_.__l.__data_);
    }

    if (v40 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    sub_1000388D8(*(a1 + 104), p_p);
  }

  if (qword_1025D4630 != -1)
  {
    sub_10192AFEC();
  }

  v30 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_INFO))
  {
    *v41 = 0;
    _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_INFO, "not connected to wifi #tile header table", v41, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10192B59C();
  }

  return 0;
}

void sub_100760280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (v44)
  {
    (*(*v44 + 8))(v44, a2, a3, a4, a5, a6, a7, a8);
  }

  if (a44 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1007603A0(uint64_t a1, int *a2, double a3)
{
  sub_10000EC00(&__p, "GizmoSyncTimestamp");
  v6 = sub_10075FB30(a1, a2, &__p, a3);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v6;
}

void sub_100760414(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100760828(_Unwind_Exception *a1)
{
  *v2 = 0;
  (*(*v1 + 8))(v1);
  _Unwind_Resume(a1);
}

void sub_1007608BC(uint64_t a1)
{
  v3 = 0;
  v4 = 0;
  v5 = 0;
  sub_10000EC00(buf, "SELECT NAME FROM sqlite_master WHERE type='table' AND name LIKE 'wifi_tile_%'");
  if (v7 >= 0)
  {
    v2 = buf;
  }

  else
  {
    v2 = *buf;
  }

  sub_1000388D8(*(a1 + 104), v2);
}

void sub_100760BC4()
{
  qword_102659A78 = "TileX";
  dword_102659A80 = 1;
  word_102659A84 = 1;
  byte_102659A88 = 0;
  byte_102659AA0 = 0;
  qword_102659AA8 = "TileY";
  dword_102659AB0 = 1;
  word_102659AB4 = 1;
  byte_102659AB8 = 0;
  byte_102659AD0 = 0;
  qword_102659AD8 = "SouthwestLatitude";
  dword_102659AE0 = 2;
  word_102659AE4 = 0;
  byte_102659AE8 = 0;
  byte_102659B00 = 0;
  qword_102659B08 = "SouthwestLongitude";
  dword_102659B10 = 2;
  word_102659B14 = 0;
  byte_102659B18 = 0;
  byte_102659B30 = 0;
  qword_102659B38 = "DeltaLatitude";
  dword_102659B40 = 2;
  word_102659B44 = 0;
  byte_102659B48 = 0;
  byte_102659B60 = 0;
  qword_102659B68 = "DeltaLongitude";
  dword_102659B70 = 2;
  word_102659B74 = 0;
  byte_102659B78 = 0;
  byte_102659B90 = 0;
  qword_102659B98 = "Altitude";
  dword_102659BA0 = 2;
  word_102659BA4 = 0;
  byte_102659BA8 = 0;
  byte_102659BC0 = 0;
  qword_102659BC8 = "MinimumAltitude";
  dword_102659BD0 = 2;
  word_102659BD4 = 0;
  byte_102659BD8 = 0;
  byte_102659BF0 = 0;
  qword_102659BF8 = "MaximumAltitude";
  dword_102659C00 = 2;
  word_102659C04 = 0;
  byte_102659C08 = 0;
  byte_102659C20 = 0;
  qword_102659C28 = "GenerationTimestamp";
  dword_102659C30 = 1;
  word_102659C34 = 0;
  byte_102659C38 = 0;
  byte_102659C50 = 0;
  qword_102659C58 = "ExpirationAge";
  dword_102659C60 = 1;
  word_102659C64 = 0;
  byte_102659C68 = 0;
  byte_102659C80 = 0;
  qword_102659C88 = "Version";
  dword_102659C90 = 1;
  word_102659C94 = 0;
  byte_102659C98 = 0;
  byte_102659CB0 = 0;
  qword_102659CB8 = "Flags";
  dword_102659CC0 = 1;
  word_102659CC4 = 0;
  byte_102659CC8 = 0;
  byte_102659CE0 = 0;
  qword_102659CE8 = "NumberOfIndexEntries";
  dword_102659CF0 = 1;
  word_102659CF4 = 0;
  byte_102659CF8 = 0;
  byte_102659D10 = 0;
  qword_102659D18 = "AccessTimestamp";
  dword_102659D20 = 1;
  word_102659D24 = 0;
  byte_102659D28 = 0;
  byte_102659D40 = 0;
  qword_102659D48 = "GizmoSyncTimestamp";
  dword_102659D50 = 1;
  word_102659D54 = 0;
  byte_102659D58 = 0;
  byte_102659D70 = 0;
  qword_102659D78 = "NumberOfInputPoints";
  dword_102659D80 = 1;
  word_102659D84 = 0;
  byte_102659D88 = 0;
  byte_102659DA0 = 0;
  qword_102659DA8 = 0;
  dword_102659DB0 = 5;
  word_102659DB4 = 0;
  byte_102659DB8 = 0;
  byte_102659DD0 = 0;
}

void sub_100760E4C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_100008080(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100760E80(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    sub_100008080(v2);
  }

  return a1;
}

uint64_t sub_100760EB0@<X0>(uint64_t **a1@<X0>, uint64_t a2@<X1>, const void **a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  return sub_100F0B8C4(*a1, a2, a3);
}

void sub_100760EE4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

double sub_100760F00(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 88) + *(a2 + 56);
  v4 = *(a2 + 80);
  v5 = *(a1 + 120) + *(a2 + 88);
  *v12 = 0;
  v10 = 0u;
  v11 = 0u;
  *&v12[8] = *(a2 + 40);
  *&v12[24] = v3;
  v13 = *(a2 + 64);
  *&v14 = v4;
  *(&v14 + 1) = v5;
  uuid_copy(&v11 + 8, (a1 + 16));
  sub_100F0C790(*a1, &v10);
  v6 = *&v12[16];
  *(a1 + 64) = *v12;
  *(a1 + 80) = v6;
  v7 = v14;
  *(a1 + 96) = v13;
  *(a1 + 112) = v7;
  result = *&v10;
  v9 = v11;
  *(a1 + 32) = v10;
  *(a1 + 48) = v9;
  return result;
}

void sub_100760FC4(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == 1)
  {

    uuid_parse("00000000-0000-0000-0000-000000000000", (result + 16));
  }

  else if (!v3)
  {
    uuid_copy((result + 16), (a2 + 64));

    sub_100761048(result);
  }
}

void sub_100761048(uint64_t a1)
{
  __p = 0;
  v13 = 0;
  v14 = 0;
  Current = CFAbsoluteTimeGetCurrent();
  if (sub_100F0D184(*a1, 1, &__p) != 100 || __p == v13)
  {
    v24 = 0;
    v22 = 0u;
    v23 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0;
  }

  else
  {
    v3 = *(v13 - 5);
    v22 = *(v13 - 6);
    v23 = v3;
    v24 = *(v13 - 8);
    v4 = *(v13 - 24);
    v15 = *(v13 - 40);
    v16 = v4;
    v17 = *(v13 - 1);
  }

  *buf = v22;
  v19 = v23;
  *&v20 = v24;
  *(&v20 + 1) = Current;
  *v21 = Current;
  *&v21[8] = v15;
  *&v21[24] = v16;
  *&v21[40] = v17;
  uuid_copy(&v19 + 8, (a1 + 16));
  sub_100F0C790(*a1, buf);
  v5 = *v21;
  *(a1 + 64) = v20;
  *(a1 + 80) = v5;
  v6 = *&v21[32];
  *(a1 + 96) = *&v21[16];
  *(a1 + 112) = v6;
  v7 = v19;
  *(a1 + 32) = *buf;
  *(a1 + 48) = v7;
  if (qword_1025D43C0 != -1)
  {
    sub_10192B764();
  }

  v8 = qword_1025D43C8;
  if (os_log_type_enabled(qword_1025D43C8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "Setting up first session entry", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10192B78C(buf);
    v11 = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D43C8, 1, "Setting up first session entry", &v11, 2);
    v10 = v9;
    sub_100152C7C("Generic", 1, 0, 2, "void CLSkiDataStore::setupFirstEntry()", "%s\n", v9);
    if (v10 != buf)
    {
      free(v10);
    }
  }

  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }
}

void sub_100761284(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100761344(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_10189B1B8(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10076135C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

uint64_t sub_10076138C(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_1007613CC(void *result, uint64_t a2)
{
  *result = off_10246F2F8;
  result[1] = a2;
  return result;
}

id sub_1007613EC(uint64_t a1)
{
  v1 = [objc_msgSend(*(a1 + 8) "vendor")];

  return [v1 syncgetCellTransmitStatus];
}

id sub_100761424(uint64_t a1)
{
  v1 = [objc_msgSend(*(a1 + 8) "vendor")];

  return [v1 syncgetRegistrationStatus];
}

id sub_10076145C(uint64_t a1, uint64_t a2)
{
  v3 = [objc_msgSend(*(a1 + 8) "vendor")];

  return [v3 syncgetRegistrationStatusForSim:a2];
}

id sub_1007614A4(uint64_t a1)
{
  v1 = [objc_msgSend(*(a1 + 8) "vendor")];

  return [v1 syncgetIsRegisteredOnCell];
}

id sub_1007614DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_msgSend(*(a1 + 8) "vendor")];

  return [v5 syncgetServingCells:a2 addNeighborCells:a3];
}

id sub_10076152C(uint64_t a1)
{
  v1 = [objc_msgSend(*(a1 + 8) "vendor")];

  return [v1 syncgetRadioAccessTechnology];
}

id sub_100761564(uint64_t a1, uint64_t a2)
{
  v3 = [objc_msgSend(*(a1 + 8) "vendor")];

  return [v3 syncgetRadioAccessTechnologyForSim:a2];
}

id sub_1007615AC(uint64_t a1)
{
  v1 = [objc_msgSend(*(a1 + 8) "vendor")];

  return [v1 syncgetRefreshCellMonitor];
}

id sub_1007615E4(uint64_t a1, uint64_t a2)
{
  v3 = [objc_msgSend(*(a1 + 8) "vendor")];

  return [v3 syncgetRefreshCellMonitorForSim:a2];
}

id sub_10076162C(uint64_t a1, uint64_t a2)
{
  v3 = [objc_msgSend(*(a1 + 8) "vendor")];

  return [v3 syncgetServingGsmCell:a2];
}

id sub_100761674(uint64_t a1, uint64_t a2)
{
  v3 = [objc_msgSend(*(a1 + 8) "vendor")];

  return [v3 syncgetSignalStrength:a2];
}

id sub_1007616BC(uint64_t a1, uint64_t a2)
{
  v3 = [objc_msgSend(*(a1 + 8) "vendor")];

  return [v3 syncgetSignalStrengthForSim:a2];
}

id sub_100761704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_msgSend(*(a1 + 8) "vendor")];

  return [v5 fetchSignalStrengthMeasurementForSim:a2 withReply:a3];
}

id sub_10076175C(uint64_t a1, uint64_t a2)
{
  v3 = [objc_msgSend(*(a1 + 8) "vendor")];

  return [v3 fetchIratStreamingInfoWithReply:a2];
}

double sub_1007617AC(uint64_t a1, uint64_t a2)
{
  v3 = [objc_msgSend(objc_msgSend(*(a1 + 8) "vendor")];
  if (v3)
  {
    sub_10000EC00(&v5, [v3 UTF8String]);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    result = *&v5;
    *a2 = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

void sub_100761820(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  [objc_msgSend(objc_msgSend(*(a1 + 8) "vendor")];
  if (v5)
  {
    sub_10000EC00(&v3, [v5 UTF8String]);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = v3;
    *(a2 + 16) = v4;
  }

  else if (*(a2 + 23) < 0)
  {
    **a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 23) = 0;
  }
}

id sub_1007618CC(uint64_t a1, uint64_t a2)
{
  v3 = [objc_msgSend(*(a1 + 8) "vendor")];

  return [v3 syncgetCopyServingOperatorForSim:a2];
}

void sub_100761914(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  [objc_msgSend(objc_msgSend(*(a1 + 8) "vendor")];
  if (v5)
  {
    sub_10000EC00(&v3, [v5 UTF8String]);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = v3;
    *(a2 + 16) = v4;
  }

  else if (*(a2 + 23) < 0)
  {
    **a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 23) = 0;
  }
}

id sub_1007619C0(uint64_t a1, uint64_t a2)
{
  v3 = [objc_msgSend(*(a1 + 8) "vendor")];

  return [v3 syncgetCopyServingProviderFromCarrierBundleForSim:a2];
}

id sub_100761A08(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v6 = [CLLocation alloc];
  v7 = a3[7];
  v21 = a3[6];
  v22 = v7;
  v23[0] = a3[8];
  *(v23 + 12) = *(a3 + 140);
  v8 = a3[3];
  v17 = a3[2];
  v18 = v8;
  v9 = a3[5];
  v19 = a3[4];
  v20 = v9;
  v10 = a3[1];
  v15 = *a3;
  v16 = v10;
  v11 = [v6 initWithClientLocation:&v15];
  v12 = [objc_msgSend(*(a1 + 8) "vendor")];
  v13 = a2[1];
  v17 = *a2;
  v18 = v13;
  *&v15 = _NSConcreteStackBlock;
  *(&v15 + 1) = 3221225472;
  *&v16 = sub_1007621D8;
  *(&v16 + 1) = &unk_10246F3F8;
  return [v12 setLocation_GSM:v11 forCell:{objc_msgSend(&v15, "copy")}];
}

id sub_100761B0C(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v6 = [CLLocation alloc];
  v7 = a3[7];
  v21 = a3[6];
  v22 = v7;
  v23[0] = a3[8];
  *(v23 + 12) = *(a3 + 140);
  v8 = a3[3];
  v17 = a3[2];
  v18 = v8;
  v9 = a3[5];
  v19 = a3[4];
  v20 = v9;
  v10 = a3[1];
  v15 = *a3;
  v16 = v10;
  v11 = [v6 initWithClientLocation:&v15];
  v12 = [objc_msgSend(*(a1 + 8) "vendor")];
  v13 = a2[1];
  v17 = *a2;
  v18 = v13;
  *&v15 = _NSConcreteStackBlock;
  *(&v15 + 1) = 3221225472;
  *&v16 = sub_1007621E4;
  *(&v16 + 1) = &unk_10246F418;
  return [v12 setLocation_SCDMA:v11 forCell:{objc_msgSend(&v15, "copy")}];
}

id sub_100761C10(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v6 = [CLLocation alloc];
  v7 = a3[7];
  v22 = a3[6];
  v23 = v7;
  v24[0] = a3[8];
  *(v24 + 12) = *(a3 + 140);
  v8 = a3[3];
  v18 = a3[2];
  v19 = v8;
  v9 = a3[5];
  v20 = a3[4];
  v21 = v9;
  v10 = a3[1];
  v16 = *a3;
  v17 = v10;
  v11 = [v6 initWithClientLocation:&v16];
  v12 = [objc_msgSend(*(a1 + 8) "vendor")];
  v13 = a2[3];
  v20 = a2[2];
  v21 = v13;
  v22 = a2[4];
  *&v23 = *(a2 + 10);
  v14 = a2[1];
  v18 = *a2;
  v19 = v14;
  *&v16 = _NSConcreteStackBlock;
  *(&v16 + 1) = 3221225472;
  *&v17 = sub_1007621F0;
  *(&v17 + 1) = &unk_10246F438;
  return [v12 setLocation_LTE:v11 forCell:{objc_msgSend(&v16, "copy")}];
}

void sub_100761D2C(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v6 = [CLLocation alloc];
  v7 = a3[7];
  v54[6] = a3[6];
  v54[7] = v7;
  v55[0] = a3[8];
  *(v55 + 12) = *(a3 + 140);
  v8 = a3[3];
  v54[2] = a3[2];
  v54[3] = v8;
  v9 = a3[5];
  v54[4] = a3[4];
  v54[5] = v9;
  v10 = a3[1];
  v54[0] = *a3;
  v54[1] = v10;
  v11 = [v6 initWithClientLocation:v54];
  v12 = [objc_msgSend(*(a1 + 8) "vendor")];
  LODWORD(v25) = *a2;
  v27 = 0;
  v28 = 0;
  v26 = 0;
  sub_10038EB38(&v26, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 2);
  v13 = *(a2 + 208);
  v39 = *(a2 + 192);
  v40[0] = v13;
  *(v40 + 12) = *(a2 + 220);
  v14 = *(a2 + 144);
  v35 = *(a2 + 128);
  v36 = v14;
  v15 = *(a2 + 176);
  v37 = *(a2 + 160);
  v38 = v15;
  v16 = *(a2 + 80);
  v31 = *(a2 + 64);
  v32 = v16;
  v17 = *(a2 + 112);
  v33 = *(a2 + 96);
  v34 = v17;
  v18 = *(a2 + 48);
  v29 = *(a2 + 32);
  v30 = v18;
  if (*(a2 + 263) < 0)
  {
    sub_100007244(__p, *(a2 + 240), *(a2 + 248));
  }

  else
  {
    *__p = *(a2 + 240);
    v42 = *(a2 + 256);
  }

  v19 = *(a2 + 408);
  v51 = *(a2 + 392);
  v52 = v19;
  v20 = *(a2 + 344);
  v47 = *(a2 + 328);
  v48 = v20;
  v21 = *(a2 + 376);
  v49 = *(a2 + 360);
  v50 = v21;
  v22 = *(a2 + 280);
  v43 = *(a2 + 264);
  v44 = v22;
  v23 = *(a2 + 312);
  v45 = *(a2 + 296);
  v46 = v23;
  v53 = *(a2 + 424);
  v24 = sub_100761EF8(&v25);
  [v12 setLocation_CDMA:v11 forCell:{v24, v25}];
  if (SHIBYTE(v42) < 0)
  {
    operator delete(__p[0]);
  }

  if (v26)
  {
    v27 = v26;
    operator delete(v26);
  }
}

void sub_100761ECC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id sub_100761EF8(int *a1)
{
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3321888768;
  v15[2] = sub_100762214;
  v15[3] = &unk_10246F458;
  v16 = *a1;
  v18 = 0;
  v19 = 0;
  v17 = 0;
  sub_10038EB38(&v17, *(a1 + 1), *(a1 + 2), (*(a1 + 2) - *(a1 + 1)) >> 2);
  v2 = *(a1 + 13);
  v30 = *(a1 + 12);
  v31[0] = v2;
  *(v31 + 12) = *(a1 + 55);
  v3 = *(a1 + 9);
  v26 = *(a1 + 8);
  v27 = v3;
  v4 = *(a1 + 11);
  v28 = *(a1 + 10);
  v29 = v4;
  v5 = *(a1 + 5);
  v22 = *(a1 + 4);
  v23 = v5;
  v6 = *(a1 + 7);
  v24 = *(a1 + 6);
  v25 = v6;
  v7 = *(a1 + 3);
  v20 = *(a1 + 2);
  v21 = v7;
  if (*(a1 + 263) < 0)
  {
    sub_100007244(__p, *(a1 + 30), *(a1 + 31));
  }

  else
  {
    *__p = *(a1 + 15);
    v33 = *(a1 + 32);
  }

  v8 = *(a1 + 102);
  v42 = *(a1 + 98);
  v43 = v8;
  v9 = *(a1 + 86);
  v38 = *(a1 + 82);
  v39 = v9;
  v10 = *(a1 + 94);
  v40 = *(a1 + 90);
  v41 = v10;
  v11 = *(a1 + 70);
  v34 = *(a1 + 66);
  v35 = v11;
  v12 = *(a1 + 78);
  v36 = *(a1 + 74);
  v37 = v12;
  v44 = a1[106];
  v13 = [v15 copy];
  if (SHIBYTE(v33) < 0)
  {
    operator delete(__p[0]);
  }

  if (v17)
  {
    v18 = v17;
    operator delete(v17);
  }

  return v13;
}

void sub_100762060(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id sub_10076208C(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v6 = [CLLocation alloc];
  v7 = a3[7];
  v23 = a3[6];
  v24 = v7;
  v25[0] = a3[8];
  *(v25 + 12) = *(a3 + 140);
  v8 = a3[3];
  v19 = a3[2];
  v20 = v8;
  v9 = a3[5];
  v21 = a3[4];
  v22 = v9;
  v10 = a3[1];
  v17 = *a3;
  v18 = v10;
  v11 = [v6 initWithClientLocation:&v17];
  v12 = [objc_msgSend(*(a1 + 8) "vendor")];
  v13 = a2[3];
  v21 = a2[2];
  v22 = v13;
  v14 = a2[5];
  v23 = a2[4];
  v24 = v14;
  v15 = a2[1];
  v19 = *a2;
  v20 = v15;
  *&v17 = _NSConcreteStackBlock;
  *(&v17 + 1) = 3221225472;
  *&v18 = sub_1007624A4;
  *(&v18 + 1) = &unk_10246F488;
  return [v12 setLocation_NR:v11 forCell:{objc_msgSend(&v17, "copy")}];
}

id sub_1007621A0(uint64_t a1)
{
  v1 = [objc_msgSend(*(a1 + 8) "vendor")];

  return [v1 syncgetIsAssociated];
}

__n128 sub_1007621D8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 32);
  v3 = *(a1 + 48);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

__n128 sub_1007621E4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 32);
  v3 = *(a1 + 48);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

__n128 sub_1007621F0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 80);
  *(a2 + 32) = *(a1 + 64);
  *(a2 + 48) = v2;
  *(a2 + 64) = *(a1 + 96);
  *(a2 + 80) = *(a1 + 112);
  result = *(a1 + 32);
  v4 = *(a1 + 48);
  *a2 = result;
  *(a2 + 16) = v4;
  return result;
}

__n128 sub_100762214@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *(a1 + 32);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  sub_10038EB38((a2 + 8), *(a1 + 40), *(a1 + 48), (*(a1 + 48) - *(a1 + 40)) >> 2);
  v4 = *(a1 + 240);
  *(a2 + 192) = *(a1 + 224);
  *(a2 + 208) = v4;
  *(a2 + 220) = *(a1 + 252);
  v5 = *(a1 + 176);
  *(a2 + 128) = *(a1 + 160);
  *(a2 + 144) = v5;
  v6 = *(a1 + 208);
  *(a2 + 160) = *(a1 + 192);
  *(a2 + 176) = v6;
  v7 = *(a1 + 112);
  *(a2 + 64) = *(a1 + 96);
  *(a2 + 80) = v7;
  v8 = *(a1 + 144);
  *(a2 + 96) = *(a1 + 128);
  *(a2 + 112) = v8;
  v9 = *(a1 + 80);
  *(a2 + 32) = *(a1 + 64);
  *(a2 + 48) = v9;
  if (*(a1 + 295) < 0)
  {
    sub_100007244((a2 + 240), *(a1 + 272), *(a1 + 280));
  }

  else
  {
    *(a2 + 240) = *(a1 + 272);
    *(a2 + 256) = *(a1 + 288);
  }

  *(a2 + 424) = *(a1 + 456);
  v10 = *(a1 + 440);
  *(a2 + 392) = *(a1 + 424);
  *(a2 + 408) = v10;
  v11 = *(a1 + 376);
  *(a2 + 328) = *(a1 + 360);
  *(a2 + 344) = v11;
  v12 = *(a1 + 408);
  *(a2 + 360) = *(a1 + 392);
  *(a2 + 376) = v12;
  v13 = *(a1 + 312);
  *(a2 + 264) = *(a1 + 296);
  *(a2 + 280) = v13;
  result = *(a1 + 344);
  *(a2 + 296) = *(a1 + 328);
  *(a2 + 312) = result;
  return result;
}

void sub_100762300(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_10076231C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  *(a1 + 40) = 0;
  v5 = a1 + 40;
  *(a1 + 32) = v4;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  sub_10038EB38((a1 + 40), *(a2 + 40), *(a2 + 48), (*(a2 + 48) - *(a2 + 40)) >> 2);
  *(v5 + 24) = *(a2 + 64);
  v6 = *(a2 + 80);
  v7 = *(a2 + 96);
  v8 = *(a2 + 112);
  *(v5 + 88) = *(a2 + 128);
  *(v5 + 72) = v8;
  *(v5 + 56) = v7;
  *(v5 + 40) = v6;
  v9 = *(a2 + 144);
  v10 = *(a2 + 160);
  v11 = *(a2 + 176);
  *(v5 + 152) = *(a2 + 192);
  *(v5 + 136) = v11;
  *(v5 + 120) = v10;
  *(v5 + 104) = v9;
  v12 = *(a2 + 208);
  v13 = *(a2 + 224);
  v14 = *(a2 + 240);
  *(v5 + 212) = *(a2 + 252);
  *(v5 + 200) = v14;
  *(v5 + 184) = v13;
  *(v5 + 168) = v12;
  if (*(a2 + 295) < 0)
  {
    sub_100007244((v5 + 232), *(a2 + 272), *(a2 + 280));
  }

  else
  {
    v15 = *(a2 + 272);
    *(v5 + 248) = *(a2 + 288);
    *(v5 + 232) = v15;
  }

  v16 = *(a2 + 296);
  v17 = *(a2 + 328);
  *(a1 + 312) = *(a2 + 312);
  *(a1 + 328) = v17;
  *(a1 + 296) = v16;
  v18 = *(a2 + 344);
  v19 = *(a2 + 360);
  v20 = *(a2 + 392);
  *(a1 + 376) = *(a2 + 376);
  *(a1 + 392) = v20;
  *(a1 + 344) = v18;
  *(a1 + 360) = v19;
  result = *(a2 + 408);
  v22 = *(a2 + 424);
  v23 = *(a2 + 440);
  *(a1 + 456) = *(a2 + 456);
  *(a1 + 424) = v22;
  *(a1 + 440) = v23;
  *(a1 + 408) = result;
  return result;
}

void sub_100762430(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 48) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_10076244C(uint64_t a1)
{
  if (*(a1 + 295) < 0)
  {
    operator delete(*(a1 + 272));
  }

  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;

    operator delete(v2);
  }
}

__n128 sub_1007624A4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 80);
  *(a2 + 32) = *(a1 + 64);
  *(a2 + 48) = v2;
  v3 = *(a1 + 112);
  *(a2 + 64) = *(a1 + 96);
  *(a2 + 80) = v3;
  result = *(a1 + 32);
  v5 = *(a1 + 48);
  *a2 = result;
  *(a2 + 16) = v5;
  return result;
}

void sub_100762E60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  if (a40 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id sub_100762F00(uint64_t a1)
{
  if (qword_1025D4750 != -1)
  {
    sub_10192B7E4();
  }

  v2 = qword_1025D4758;
  if (os_log_type_enabled(qword_1025D4758, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 68289026;
    v4[1] = 0;
    v5 = 2082;
    v6 = "";
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:reverting to cheap location only}", v4, 0x12u);
  }

  return [*(a1 + 32) requestLocationWithDesiredAccuracy:kCLLocationAccuracyBystander];
}

void sub_100762FE0(id a1, NSString *a2, NSDictionary *a3)
{
  if (a3 && [(NSDictionary *)a3 count])
  {
    v32 = 0;
    p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
    if ([(NSDictionary *)a3 objectForKeyedSubscript:@"com.apple.RegulatoryDomain.peer_status.countryCodes"])
    {
      obj = [NSJSONSerialization JSONObjectWithData:[(NSDictionary *)a3 objectForKeyedSubscript:@"com.apple.RegulatoryDomain.peer_status.countryCodes"] options:0 error:&v32];
      if (v32)
      {
        if (qword_1025D4750 != -1)
        {
          sub_100260318();
        }

        v5 = qword_1025D4758;
        if (os_log_type_enabled(qword_1025D4758, OS_LOG_TYPE_ERROR))
        {
          *buf = 68289282;
          v34 = 0;
          v35 = 2082;
          v36 = "";
          v37 = 2114;
          v38 = v32;
          _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Failed to deserialize list of countries. Will attempt to fall back to single entry, error:%{public, location:escape_only}@}", buf, 0x1Cu);
          if (qword_1025D4750 != -1)
          {
            sub_100260318();
          }
        }

        v6 = qword_1025D4758;
        v7 = os_signpost_enabled(qword_1025D4758);
        v8 = v32;
        if (v7)
        {
          *buf = 68289282;
          v34 = 0;
          v35 = 2082;
          v36 = "";
          v37 = 2114;
          v38 = v32;
          _os_signpost_emit_with_name_impl(dword_100000000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Failed to deserialize list of countries. Will attempt to fall back to single entry", "{msg%{public}.0s:Failed to deserialize list of countries. Will attempt to fall back to single entry, error:%{public, location:escape_only}@}", buf, 0x1Cu);
          v8 = v32;
        }

        if (v8)
        {
          v49 = [[NSString alloc] initWithData:-[NSDictionary objectForKeyedSubscript:](a3 encoding:{"objectForKeyedSubscript:", @"com.apple.RegulatoryDomain.peer_status.countryCode", 4}];
          obj = [NSArray arrayWithObjects:&v49 count:1];
        }
      }
    }

    else
    {
      obj = 0;
    }

    v31 = 0;
    [-[NSDictionary objectForKeyedSubscript:](a3 objectForKeyedSubscript:{@"com.apple.RegulatoryDomain.peer_status.priority", "getBytes:length:", &v31, 4}];
    v30 = 0.0;
    [-[NSDictionary objectForKeyedSubscript:](a3 objectForKeyedSubscript:{@"com.apple.RegulatoryDomain.peer_status.timestamp", "getBytes:length:", &v30, 8}];
    v9 = [NSDate dateWithTimeIntervalSinceReferenceDate:v30];
    v29 = 0;
    [-[NSDictionary objectForKeyedSubscript:](a3 objectForKeyedSubscript:{@"com.apple.RegulatoryDomain.peer_status.isDisputed", "getBytes:length:", &v29, 1}];
    v10 = +[NSMutableArray array];
    v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj);
    if (v11)
    {
      v13 = v11;
      v14 = MEMORY[0];
      *&v12 = 68290562;
      v24 = v12;
      do
      {
        v15 = 0;
        v26 = v13;
        do
        {
          if (MEMORY[0] != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(8 * v15);
          v17 = +[NSMutableDictionary dictionary];
          [v17 setObject:v16 forKeyedSubscript:@"com.apple.RegulatoryDomain.peer_status.countryCode"];
          [v17 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber forKeyedSubscript:{"numberWithUnsignedInt:", v31), @"com.apple.RegulatoryDomain.peer_status.priority"}];
          [v17 setObject:v9 forKeyedSubscript:@"com.apple.RegulatoryDomain.peer_status.timestamp"];
          [v17 setObject:+[NSNumber numberWithBool:](NSNumber forKeyedSubscript:{"numberWithBool:", v29), @"com.apple.RegulatoryDomain.peer_status.isDisputed"}];
          [v10 addObject:v17];
          if (qword_1025D4750 != -1)
          {
            sub_100260318();
          }

          v18 = p_info[235];
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v19 = v9;
            v20 = [(NSString *)a2 UTF8String];
            v21 = [v16 UTF8String];
            v22 = v30;
            v28 = v31;
            v23 = [NSNumber numberWithBool:v29];
            *buf = v24;
            v34 = 0;
            v35 = 2082;
            v36 = "";
            v37 = 2082;
            v38 = v20;
            v9 = v19;
            v13 = v26;
            v39 = 2082;
            v40 = v21;
            v41 = 2114;
            v42 = v9;
            v43 = 2050;
            v44 = v22;
            p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
            v45 = 2050;
            v46 = v28;
            v47 = 2114;
            v48 = v23;
            _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:received a peer update, forwarding..., deviceID:%{public, location:escape_only}s, country:%{public, location:escape_only}s, timestamp:%{public, location:escape_only}@, timestampVal:%{public}f, priority:%{public}lu, disputed?:%{public, location:escape_only}@}", buf, 0x4Eu);
          }

          v15 = v15 + 1;
        }

        while (v13 != v15);
        v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj);
      }

      while (v13);
    }

    RDUpdateCountryCodeFromPeerInfo();
  }

  else
  {

    _RDUpdateCountryCodeFromPeer(a2, 0);
  }
}

id sub_100763514(uint64_t a1)
{
  if (qword_1025D4750 != -1)
  {
    sub_10192B7E4();
  }

  v2 = qword_1025D4758;
  if (os_log_type_enabled(qword_1025D4758, OS_LOG_TYPE_DEFAULT))
  {
    [*(a1 + 32) timeToActiveGiveup];
    v7[0] = 68289282;
    v7[1] = 0;
    v8 = 2082;
    v9 = "";
    v10 = 1026;
    v11 = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:timeout elapsed with no locations for current country, requesting low-cost active update, duration:%{public}d}", v7, 0x18u);
  }

  [*(a1 + 32) requestLocationWithDesiredAccuracy:kCLLocationAccuracyKilometer];
  v4 = *(a1 + 32);
  v5 = v4[4];
  [v4 timeToActiveGiveup];
  return [v5 setNextFireDelay:?];
}

void sub_100764DB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(a1 + 32) handleResponseFromPossibleTerritoriesFetch:a2 withError:a3];

  *(*(*(a1 + 48) + 8) + 40) = 0;
  obj = [*(a1 + 32) previousCountries];
  v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj);
  if (v4)
  {
    v5 = MEMORY[0];
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (MEMORY[0] != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(a1 + 32);
        v8 = [*(8 * i) UTF8String];
        v9 = strlen(v8);
        if (v9 >= 0x7FFFFFFFFFFFFFF8)
        {
          sub_100061080();
        }

        v10 = v9;
        if (v9 >= 0x17)
        {
          operator new();
        }

        v16 = v9;
        if (v9)
        {
          memmove(&__dst, v8, v9);
        }

        *(&v15[-4] + v10) = 0;
        v11 = sub_10001A2EC((v7 + 96), &__dst);
        if (v16 < 0)
        {
          operator delete(__dst);
        }

        if (v11)
        {
          if (*(a1 + 56) == 1)
          {
            [*(a1 + 32) revGeoForAdminArea:*(a1 + 40)];
          }

          return;
        }
      }

      v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj);
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  if (qword_1025D4750 != -1)
  {
    sub_100260318();
  }

  v12 = qword_1025D4758;
  if (os_log_type_enabled(qword_1025D4758, OS_LOG_TYPE_INFO))
  {
    __dst = 68289026;
    v15[0] = 2082;
    *&v15[1] = "";
    _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_INFO, "{msg%{public}.0s:no reason to expensively check territories right now}", &__dst, 0x12u);
  }
}

void sub_1007666B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1007666C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(a1 + 32) handleRevGeocodeCompletionForPlacemarks:a2 withError:a3];
  [+[NSDate now](NSDate timeIntervalSince1970];
  *(*(a1 + 32) + 296) = v4;

  *(*(*(a1 + 40) + 8) + 40) = 0;
}

const void **sub_100767180(void *a1, uint64_t *a2, uint64_t a3)
{
  v5 = sub_100007070(a1, a2);
  v6 = v5;
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_18;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v5;
    if (v5 >= *&v7)
    {
      v10 = v5 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v5;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v6)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v13 >= *&v7)
      {
        v13 %= *&v7;
      }
    }

    else
    {
      v13 &= *&v7 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_18;
    }

LABEL_17:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_18;
    }
  }

  if (!sub_100019DF4(a1, v12 + 2, a2))
  {
    goto LABEL_17;
  }

  return v12;
}

void *sub_1007673F8(uint64_t a1, uint64_t a2)
{
  result = sub_10132F5EC(a1, a2);
  *result = off_10246F5B0;
  return result;
}

void sub_100767BC4(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_10192BA9C();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLOdometerNotifierWatch::onCompanionNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_10192BAB0();
    }

    v9 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = "activity";
      v18 = 2050;
      v19 = a4;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLOdometerNotifierWatch::onCompanionNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_100769604(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_100767D90(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 32);
  v4 = [*(v3 + 32) silo];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3321888768;
  v7[2] = sub_100767E50;
  v7[3] = &unk_10246F7B8;
  v6 = *a2;
  v5 = a2[1];
  v7[4] = v3;
  v7[5] = v6;
  v8 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  [v4 async:v7];
  if (v8)
  {
    sub_100008080(v8);
  }
}

void sub_100767E38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_100008080(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_100767E50(__int128 ***a1)
{
  v2 = a1[4];
  v3 = a1[6];
  v4[0] = a1[5];
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(v3 + 1, 1uLL, memory_order_relaxed);
  }

  sub_100767EDC(v2, v4);
  if (v3)
  {

    sub_100008080(v3);
  }
}

void sub_100767EC4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100008080(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100767EDC(uint64_t result, __int128 ***a2)
{
  v2 = **a2;
  if (v2 != (*a2)[1])
  {
    v4 = result;
    do
    {
      v5 = *(v2 + 16);
      v22 = *v2;
      v23 = v5;
      v24 = *(v2 + 32);
      v20 = *(v2 + 44);
      v21 = *(v2 + 60);
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v7[0] = v22;
      v7[1] = v5;
      v8 = v24;
      v9 = 1;
      v11 = v21;
      v10 = v20;
      v6 = 8;
      result = (*(*v4 + 152))(v4, &v6, v7, 0, 0xFFFFFFFFLL, 0);
      v2 += 64;
    }

    while (v2 != (*a2)[1]);
  }

  return result;
}

void sub_100767FEC(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 32);
  v4 = [*(v3 + 32) silo];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3321888768;
  v7[2] = sub_1007680AC;
  v7[3] = &unk_10246F808;
  v6 = *a2;
  v5 = a2[1];
  v7[4] = v3;
  v7[5] = v6;
  v8 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  [v4 async:v7];
  if (v8)
  {
    sub_100008080(v8);
  }
}

void sub_100768094(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_100008080(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007680AC(uint64_t **a1)
{
  v2 = a1[4];
  v3 = a1[6];
  v4[0] = a1[5];
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100768138(v2, v4);
  if (v3)
  {

    sub_100008080(v3);
  }
}

void sub_100768120(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100008080(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100768138(uint64_t a1, uint64_t **a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = *v2;
    v4 = v2[1];
    if (*v2 != v4)
    {
      do
      {
        v6 = *(v3 + 8);
        v11 = *v3;
        v7 = v11;
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        v18 = 0u;
        v19 = 0u;
        v16 = 0u;
        v17 = 0u;
        v15 = 0u;
        v12 = v6;
        v13 = 1;
        v14[0] = sub_1007697FC(a1 + 1472, &v11);
        v14[1] = v8;
        LODWORD(v11) = 5;
        (*(*a1 + 152))(a1, &v11, v14, 0, 0xFFFFFFFFLL, 0);
        v9 = objc_autoreleasePoolPush();
        v10 = objc_alloc_init(ALActivityLog);
        [(ALActivityLog *)v10 setTimestamp:v7];
        [(ALActivityLog *)v10 setCoarseElevation:objc_alloc_init(ALCMCoarseElevation)];
        [(ALCMCoarseElevation *)[(ALActivityLog *)v10 coarseElevation] setElevationAscended:v6];
        [(ALCMCoarseElevation *)[(ALActivityLog *)v10 coarseElevation] setSource:1];
        [-[CLServiceVendor proxyForService:](+[CLServiceVendor sharedInstance](CLServiceVendor "sharedInstance")];
        objc_autoreleasePoolPop(v9);
        v3 += 16;
      }

      while (v3 != v4);
    }
  }
}

uint64_t sub_1007682C4(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1007682E0(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_100008080(v1);
  }
}

void sub_1007682F0(unsigned __int8 *a1, uint64_t a2)
{
  v2 = a2;
  if (qword_1025D4390 != -1)
  {
    sub_10192BAD8();
  }

  v4 = qword_1025D4398;
  if (os_log_type_enabled(qword_1025D4398, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[945];
    v6[0] = 67240448;
    v6[1] = v5;
    v7 = 1026;
    v8 = v2;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "Update location authorization, current, %{public}d, new, %{public}d", v6, 0xEu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10192BAEC();
  }

  if (a1[945] != v2)
  {
    sub_100768820(a1);
    sub_1007679B0(a1);
    a1[945] = v2;
    (*(*a1 + 216))(a1);
  }
}

void sub_10076842C(float *a1, uint64_t a2)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a2 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_10192BA9C();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v7 = 1;
    v4 = _os_activity_create(dword_100000000, "CL: CLOdometerNotifierWatch::onFlightSegment", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v4, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_10192BAB0();
    }

    v5 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2082;
      v13 = "activity";
      v14 = 2050;
      v15 = a2;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLOdometerNotifierWatch::onFlightSegment, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v7 = 0;
  }

  sub_10076AE54(a2, a1);
  if (v7 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

uint64_t sub_1007685F4(uint64_t a1)
{
  *a1 = off_10246F678;
  *(a1 + 112) = off_10246F798;
  sub_100768820(a1);
  if (sub_100023ED4(0, v2))
  {
    v4 = sub_100023ED4(0, v3);
    sub_10095D9F8(v4, 28, *(a1 + 1552));
    v5 = *(a1 + 1552);
    *(a1 + 1552) = 0;
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }
  }

  v6 = *(a1 + 1272);
  *(a1 + 1272) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  *(a1 + 1616) = 0;
  v7 = *(a1 + 1552);
  *(a1 + 1552) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(a1 + 1544);
  *(a1 + 1544) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = *(a1 + 1536);
  *(a1 + 1536) = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = *(a1 + 1528);
  *(a1 + 1528) = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  v11 = *(a1 + 1520);
  *(a1 + 1520) = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  sub_100B55830(a1 + 1280);
  v12 = *(a1 + 1272);
  *(a1 + 1272) = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  return sub_1004D2C5C(a1);
}

uint64_t sub_100768820(uint64_t a1)
{
  sub_1004D3510(a1);
  v2 = *(a1 + 1520);
  *(a1 + 1520) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 1536);
  *(a1 + 1536) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  [*(a1 + 1248) releaseAccuracyEnablementAssertionForClient:CLISP_ME_TOKEN];

  *(a1 + 1248) = 0;
  result = *(a1 + 1544);
  if (result)
  {
    *(a1 + 1544) = 0;
    v5 = *(*result + 8);

    return v5();
  }

  return result;
}

void sub_100768918(uint64_t a1)
{
  sub_1007685F4(a1);

  operator delete();
}

void sub_100768950(uint64_t a1)
{
  sub_1007685F4(a1 - 112);

  operator delete();
}

id sub_10076898C(uint64_t a1, char a2)
{
  v2 = *(a1 + 40);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100768A04;
  v4[3] = &unk_102460CC8;
  v4[4] = a1;
  v5 = a2;
  return [v2 async:v4];
}

id sub_100768A04(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(a1 + 40) == 1)
  {
    if (qword_1025D4310 != -1)
    {
      sub_10192BC00();
    }

    v2 = qword_1025D4318;
    if (os_log_type_enabled(qword_1025D4318, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "Enabling kNotificationOdometerUpdateElevation from companion", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10192BCF8();
    }

    v7 = 3;
    return [*(*(v1 + 1272) + 16) register:*(*(v1 + 1272) + 8) forNotification:sub_1005F585C(&v7) registrationInfo:0];
  }

  else
  {
    if (qword_1025D4310 != -1)
    {
      sub_10192BC00();
    }

    v4 = qword_1025D4318;
    if (os_log_type_enabled(qword_1025D4318, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "Disabling kNotificationOdometerUpdateElevation from companion", v6, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10192BC14();
    }

    v5 = 3;
    return [*(*(v1 + 1272) + 16) unregister:*(*(v1 + 1272) + 8) forNotification:sub_1005F585C(&v5)];
  }
}

void sub_100768B58(uint64_t a1, uint64_t a2)
{
  v3 = sub_100023ED4(0, a2);
  v14[0] = 5;
  if (sub_10000608C(a1, v14, 1))
  {
    if (*(a1 + 1609) == 1)
    {
      if (v3)
      {
        v5 = *(v3 + 72);
        v4 = v3 + 72;
        v6 = (*(v5 + 16))(v4);
        if (v6)
        {
          if ((sub_100023B30(v6, v7) & 0x2000000000) != 0)
          {
            (*(*v4 + 40))(v4, 1);
          }
        }
      }

      v14[0] = 5;
      [*(*(a1 + 1272) + 16) register:*(*(a1 + 1272) + 8) forNotification:sub_1005F585C(v14) registrationInfo:0];
      if (qword_1025D4310 != -1)
      {
        sub_10192BDDC();
      }

      v8 = qword_1025D4318;
      if (os_log_type_enabled(qword_1025D4318, OS_LOG_TYPE_INFO))
      {
        LOWORD(v14[0]) = 0;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "CoarseElevation,phone,1,watch,1", v14, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10192BFCC();
      }

      return;
    }

    if ((*(a1 + 1241) & 1) != 0 || !v3)
    {
      if (!v3)
      {
LABEL_33:
        v14[0] = 5;
        [*(*(a1 + 1272) + 16) register:*(*(a1 + 1272) + 8) forNotification:sub_1005F585C(v14) registrationInfo:0];
        if (qword_1025D4310 != -1)
        {
          sub_10192BDDC();
        }

        v13 = qword_1025D4318;
        if (os_log_type_enabled(qword_1025D4318, OS_LOG_TYPE_INFO))
        {
          LOWORD(v14[0]) = 0;
          _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_INFO, "CoarseElevation,src,phone,1,watch,0", v14, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_10192BEE8();
        }

        return;
      }
    }

    else
    {
      v10 = (*(*(v3 + 72) + 16))(v3 + 72);
      if (v10 && (sub_100023B30(v10, v11) & 0x2000000000) != 0)
      {
        (*(*(v3 + 72) + 40))(v3 + 72, 1);
        v14[0] = 5;
        [*(*(a1 + 1272) + 16) unregister:*(*(a1 + 1272) + 8) forNotification:sub_1005F585C(v14)];
        if (qword_1025D4310 != -1)
        {
          sub_10192BDDC();
        }

        v12 = qword_1025D4318;
        if (os_log_type_enabled(qword_1025D4318, OS_LOG_TYPE_INFO))
        {
          LOWORD(v14[0]) = 0;
          _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_INFO, "CoarseElevation,src,phone,0,watch,1", v14, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_10192BE04();
        }

        return;
      }
    }

    (*(*(v3 + 72) + 40))(v3 + 72, 0);
    goto LABEL_33;
  }

  if (v3)
  {
    (*(*(v3 + 72) + 40))(v3 + 72, 0);
  }

  v14[0] = 5;
  [*(*(a1 + 1272) + 16) unregister:*(*(a1 + 1272) + 8) forNotification:sub_1005F585C(v14)];
  if (qword_1025D4310 != -1)
  {
    sub_10192BDDC();
  }

  v9 = qword_1025D4318;
  if (os_log_type_enabled(qword_1025D4318, OS_LOG_TYPE_INFO))
  {
    LOWORD(v14[0]) = 0;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_INFO, "CoarseElevation,src,phone,0,watch,0", v14, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10192C0B0();
  }
}

void sub_100768F38(unsigned __int8 *a1)
{
  sub_100186FE0(a1);

  sub_100768B58(a1, v2);
}

void sub_100768F70(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_10192BA9C();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLOdometerNotifierWatch::onLocationNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_10192BAB0();
    }

    v9 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = "activity";
      v18 = 2050;
      v19 = a4;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLOdometerNotifierWatch::onLocationNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_100769AF8(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_10076913C(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_10192BA9C();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLOdometerNotifierWatch::onRhythmicGnssModeOfOperationStatusNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_10192BAB0();
    }

    v9 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = "activity";
      v18 = 2050;
      v19 = a4;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLOdometerNotifierWatch::onRhythmicGnssModeOfOperationStatusNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_10076B174(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_100769308(uint64_t a1)
{
  if (qword_1025D4390 != -1)
  {
    sub_10192BAD8();
  }

  v2 = qword_1025D4398;
  if (os_log_type_enabled(qword_1025D4398, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "Enable GPS; Start GPS subscription", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10192C194();
  }

  v3 = *(a1 + 1544);
  if (v3)
  {
    [*(v3 + 16) register:*(v3 + 8) forNotification:41 registrationInfo:0];
  }

  if (*(a1 + 1256) == 1)
  {
    if (qword_1025D4390 != -1)
    {
      sub_10192C278();
    }

    v4 = qword_1025D4398;
    if (os_log_type_enabled(qword_1025D4398, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "Switching to GPS leech, rhythmic waking mode", v5, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10192C2A0();
    }

    [*(a1 + 1248) releaseAccuracyEnablementAssertionForClient:CLISP_ME_TOKEN];
    [*(*(a1 + 1520) + 16) unregister:*(*(a1 + 1520) + 8) forNotification:0];
    [*(*(a1 + 1520) + 16) register:*(*(a1 + 1520) + 8) forNotification:5 registrationInfo:0];
    [*(*(a1 + 1536) + 16) register:*(*(a1 + 1536) + 8) forNotification:23 registrationInfo:0];
    sub_100B55994(a1 + 1280, 1);
  }

  else
  {
    [*(*(a1 + 1520) + 16) unregister:*(*(a1 + 1520) + 8) forNotification:5];
    [*(*(a1 + 1536) + 16) unregister:*(*(a1 + 1536) + 8) forNotification:23];
    [*(*(a1 + 1520) + 16) register:*(*(a1 + 1520) + 8) forNotification:0 registrationInfo:0];
    sub_100B55994(a1 + 1280, -1);
    [*(a1 + 1248) takeAccuracyEnablementAssertionForClient:CLISP_ME_TOKEN withDesiredAccuracy:-1.0];
  }

  *(a1 + 1240) = 1;
}

_BYTE *sub_1007694F0(_BYTE *result)
{
  if (result[1240] == 1)
  {
    v7 = v1;
    v8 = v2;
    v3 = result;
    if (qword_1025D4390 != -1)
    {
      sub_10192BAD8();
    }

    v4 = qword_1025D4398;
    if (os_log_type_enabled(qword_1025D4398, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "Disable GPS; Stop GPS subscription", v6, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10192C384();
    }

    [*(*(v3 + 190) + 16) unregister:*(*(v3 + 190) + 8) forNotification:0];
    [*(*(v3 + 190) + 16) unregister:*(*(v3 + 190) + 8) forNotification:5];
    [*(*(v3 + 192) + 16) unregister:*(*(v3 + 192) + 8) forNotification:23];
    sub_100B55994((v3 + 1280), -1);
    result = [*(v3 + 156) releaseAccuracyEnablementAssertionForClient:CLISP_ME_TOKEN];
    v5 = *(v3 + 193);
    if (v5)
    {
      result = [*(v5 + 16) unregister:*(v5 + 8) forNotification:41];
    }

    v3[1240] = 0;
    v3[1257] = 0;
  }

  return result;
}

void sub_100769604(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  if (*a3 == 6)
  {
    v11 = (*a4 & *(a4 + 1)) & *(a4 + 16) & 1;
    if (*(a1 + 1241) != v11)
    {
      *(a1 + 1241) = v11;

      sub_100768B58(a1, a2);
    }
  }

  else if (*a3 == 8)
  {
    LODWORD(v13[0]) = 5;
    v6 = sub_10000608C(a1, v13, 1);
    if (!v6 || *(a1 + 1609) == 1 && (sub_100023B30(v6, v7) & 0x2000000000) != 0)
    {
      LODWORD(v13[0]) = 5;
      [*(*(a1 + 1272) + 16) unregister:*(*(a1 + 1272) + 8) forNotification:sub_1005F585C(v13)];
    }

    else
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v14 = 0u;
      v13[0] = sub_1007697FC(a1 + 1472, a4);
      v13[1] = v8;
      v12 = 5;
      (*(*a1 + 152))(a1, &v12, v13, 0, 0xFFFFFFFFLL, 0);
      v9 = objc_autoreleasePoolPush();
      v10 = objc_alloc_init(ALActivityLog);
      [(ALActivityLog *)v10 setTimestamp:*a4];
      [(ALActivityLog *)v10 setCoarseElevation:objc_alloc_init(ALCMCoarseElevation)];
      [(ALCMCoarseElevation *)[(ALActivityLog *)v10 coarseElevation] setElevationAscended:*(a4 + 8)];
      [(ALCMCoarseElevation *)[(ALActivityLog *)v10 coarseElevation] setSource:*(a4 + 12)];
      [-[CLServiceVendor proxyForService:](+[CLServiceVendor sharedInstance](CLServiceVendor "sharedInstance")];
      objc_autoreleasePoolPop(v9);
    }
  }
}

uint64_t sub_1007697FC(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a1 + 32);
  if (*a2 > v5)
  {
    v6 = *(a2 + 12);
    v7 = a1 + 16 * (v6 != 0);
    v8 = *(a2 + 8) - *(v7 + 8);
    if ((v8 & 0x80000000) != 0)
    {
      v8 = *(v7 + 8) - *(a2 + 8);
    }

    if (v6 == *(a1 + 44))
    {
      v9 = *(a1 + 40);
      if (v8 >= 0x12C)
      {
        v8 = 300;
      }

      *(a1 + 32) = v4;
      *(a1 + 40) = v9 + v8;
    }

    else
    {
      if (v4 - *v7 <= 200.0)
      {
        if (v8 >= 0x12C)
        {
          v8 = 300;
        }

        v12 = fmin(v4 - v5, 180.0) * v8 / 180.0;
        v13 = *(a1 + 40);
        *(a1 + 32) = v4;
        v11 = v13 + v12;
      }

      else
      {
        v10 = *(a1 + 40);
        if (v8 >= 0xC8)
        {
          v8 = 200;
        }

        *(a1 + 32) = v4;
        v11 = v10 + v8;
      }

      *(a1 + 40) = v11;
      *(a1 + 44) = v6;
    }
  }

  *(a1 + 16 * (*(a2 + 12) != 0)) = *a2;
  v14 = sub_10001A3E8(a1, a2);
  if (sub_100328630(v14, v15))
  {
    if (qword_1025D4310 != -1)
    {
      sub_10192BC00();
    }

    v16 = qword_1025D4318;
    if (os_log_type_enabled(qword_1025D4318, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *a2;
      v18 = *(a2 + 8);
      v19 = *(a2 + 12);
      v20 = *(a1 + 32);
      v21 = *(a1 + 40);
      v22 = *(a1 + 44);
      *buf = 134219264;
      v45 = v17;
      v46 = 1024;
      v47 = v18;
      v48 = 1024;
      v49 = v19;
      v50 = 2048;
      v51 = v20;
      v52 = 1024;
      v53 = v21;
      v54 = 1024;
      v55 = v22;
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEFAULT, "onCoarseElevation,startTime,%.3f,ascended,%d,source,%d,fused,startTime,%.3f,ascended,%d,source,%d", buf, 0x2Eu);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4310 != -1)
      {
        sub_10192BDDC();
      }

      v24 = *a2;
      v25 = *(a2 + 8);
      v26 = *(a2 + 12);
      v27 = *(a1 + 32);
      v28 = *(a1 + 40);
      v29 = *(a1 + 44);
      v32 = 134219264;
      v33 = v24;
      v34 = 1024;
      v35 = v25;
      v36 = 1024;
      v37 = v26;
      v38 = 2048;
      v39 = v27;
      v40 = 1024;
      v41 = v28;
      v42 = 1024;
      v43 = v29;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4318, 0, "onCoarseElevation,startTime,%.3f,ascended,%d,source,%d,fused,startTime,%.3f,ascended,%d,source,%d", COERCE_DOUBLE(&v32), 46);
      v31 = v30;
      sub_100152C7C("Generic", 1, 0, 2, "CLCoarseElevationChangeEntry CLCoarseElevationFusion::feedSample(const CLCoarseElevationChangeEntry &)", "%s\n", v30);
      if (v31 != buf)
      {
        free(v31);
      }
    }
  }

  return *(a1 + 32);
}

void sub_100769AF8(unsigned __int8 *a1, uint64_t a2, int *a3, uint64_t a4)
{
  v7 = *a3;
  if (*a3 <= 12)
  {
    if (v7)
    {
      if (v7 == 5)
      {

        sub_100769DF8(a1, 1);
        return;
      }

      goto LABEL_10;
    }

    v8 = 1;
LABEL_17:
    v11 = *(a4 + 808);
    if (v11 && sub_10030D934(v11) >= 2)
    {
      if (qword_1025D4390 != -1)
      {
        sub_10192BAD8();
      }

      v12 = (a4 + 808);
      v13 = qword_1025D4398;
      if (os_log_type_enabled(qword_1025D4398, OS_LOG_TYPE_DEBUG))
      {
        v14 = sub_10030D934(*v12);
        *buf = 134349056;
        v19 = v14;
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "Location batch notification size %{public}ld", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10192C468(v12);
      }

      if (sub_10030D934(*v12))
      {
        v15 = 0;
        do
        {
          sub_10030E2C0(*v12, v15, v17);
          sub_10030D6E4(*v12, v15, buf);
          sub_100769E84(a1, v17, buf);
          if (v20)
          {
            sub_100008080(v20);
          }

          ++v15;
        }

        while (v15 < sub_10030D934(*v12));
      }
    }

    else
    {
      sub_100769E84(a1, a4, a4 + 160);
    }

    sub_100769DF8(a1, v8);
    return;
  }

  if (v7 != 13)
  {
    if (v7 != 23)
    {
LABEL_10:
      if (qword_1025D4390 != -1)
      {
        sub_10192BAD8();
      }

      v9 = qword_1025D4398;
      if (os_log_type_enabled(qword_1025D4398, OS_LOG_TYPE_ERROR))
      {
        v10 = *a3;
        *buf = 67240192;
        LODWORD(v19) = v10;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_ERROR, "#Warning Received unhandled location provider notification, %{public}d", buf, 8u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_10192C57C(a3);
      }

      return;
    }

    v8 = 2;
    goto LABEL_17;
  }

  v16 = sub_1004D2FB8(a1);

  sub_1007682F0(a1, v16);
}

void sub_100769DD8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 528);
  if (v3)
  {
    sub_100008080(v3);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_100769DF8(_BYTE *result, int a2)
{
  if (result[1259] == 1)
  {
    v6 = v2;
    v7 = v3;
    memset(v5, 0, sizeof(v5));
    v4 = 9;
    LODWORD(v5[0]) = a2;
    return (*(*result + 152))(result, &v4, v5, 0, 0xFFFFFFFFLL, 0);
  }

  return result;
}

void sub_100769E84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (a3 + 360);
  v7 = sub_100ACCA54(a1, a2);
  if (v7)
  {
    v9 = sub_100ACCA54(v7, v8);
    Current = CFAbsoluteTimeGetCurrent();
    v11 = *(a3 + 24);
    *buf = Current;
    *&buf[8] = v11;
    *&buf[16] = *(a2 + 4);
    *v97 = *(a2 + 20);
    v12 = *v6;
    *&v97[8] = v6[1];
    v97[24] = 0;
    *v99 = v12;
    v99[16] = 0;
    sub_100ACCB2C(v9, buf);
  }

  if (qword_1025D4310 != -1)
  {
    sub_10192BDDC();
  }

  v13 = qword_1025D4318;
  v14 = os_log_type_enabled(qword_1025D4318, OS_LOG_TYPE_DEBUG);
  if (v14)
  {
    v16 = *(a3 + 352);
    *buf = 68289283;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 1025;
    *&buf[20] = v16;
    _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLElevationAWDAggregator, Origin Device:%{private}d}", buf, 0x18u);
  }

  v17 = sub_1000DA93C(v14, v15);
  if (v17)
  {
    v19 = sub_1000DA93C(v17, v18);
    sub_101243018(v19, *(a2 + 4), *(a2 + 12), *(a3 + 376), *(a3 + 384));
  }

  v20 = *a3;
  if ((*(a2 + 96) | 2) != 3 || !sub_10164CEAC(*(a3 + 616)) || v20 < 0.0)
  {
    goto LABEL_15;
  }

  if (*(a1 + 1257))
  {
    v21 = *(a3 + 8);
    if (*&v21 < 0.0 || *(&v21 + 1) < 0.0)
    {
LABEL_15:
      if (v20 < 0.0)
      {
        *(a1 + 1040) = 0xFFEFFFFFFFFFFFFFLL;
        *(a1 + 1080) = 0;
        *(a1 + 1048) = 0u;
        *(a1 + 1064) = 0u;
        *(a1 + 1088) = xmmword_101C8CF30;
        *(a1 + 1104) = 0xFFEFFFFFFFFFFFFFLL;
        *(a1 + 1224) = 0;
        *(a1 + 1112) = 0u;
        *(a1 + 1128) = 0u;
        *(a1 + 1144) = 0u;
        *(a1 + 1160) = 0u;
        *(a1 + 1176) = 0u;
        *(a1 + 1192) = 0u;
        *(a1 + 1208) = 0u;
        *(a1 + 1257) = 0;
        if (qword_1025D4390 != -1)
        {
          sub_10192C278();
        }

        v22 = qword_1025D4398;
        if (os_log_type_enabled(qword_1025D4398, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEFAULT, "Invalid odometer detected, clearing cached odometer entry", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_10192C688();
        }
      }

      if (qword_1025D4390 != -1)
      {
        sub_10192C278();
      }

      v23 = qword_1025D4398;
      if (os_log_type_enabled(qword_1025D4398, OS_LOG_TYPE_DEFAULT))
      {
        v24 = *(a2 + 76);
        v25 = *(a2 + 28);
        v27 = *a3;
        v26 = *(a3 + 8);
        v28 = *(a2 + 44);
        v29 = *(a2 + 52);
        v30 = *(a3 + 16);
        v31 = *(a3 + 24);
        v32 = *(a3 + 352);
        v33 = *(a2 + 96);
        v34 = *(a3 + 616);
        *buf = 134286337;
        *&buf[4] = v26;
        *&buf[12] = 2050;
        *&buf[14] = v24;
        *&buf[22] = 2049;
        *&buf[24] = v25;
        *v97 = 2049;
        *&v97[2] = v27;
        *&v97[10] = 2050;
        *&v97[12] = v30;
        *&v97[20] = 2049;
        *&v97[22] = v28;
        v98 = 2050;
        *v99 = v29;
        *&v99[8] = 2050;
        *&v99[10] = v31;
        v100 = 2049;
        v101 = v28;
        v102 = 1026;
        v103 = v32;
        v104 = 1026;
        v105 = v33;
        v106 = 1026;
        v107 = v34;
        _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEFAULT, "Drop entry! distance, %{private}.8f, startTime, %{public}.8f, gps altitude, %{private}.8f, odometer, %{private}.8f, accuracy, %{public}.8f, gpsSpeed, %{private}.8f, gpsSpeedAccuracy, %{public}.8f, timestampGps, %{public}.8f, rawSpeed, %{private}.8f, originDevice, %{public}d, locationType, %{public}d, batchedLocationFixType, %{public}d", buf, 0x6Eu);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4390 != -1)
        {
          sub_10192C278();
        }

        v44 = *(a2 + 76);
        v45 = *(a2 + 28);
        v47 = *a3;
        v46 = *(a3 + 8);
        v48 = *(a2 + 44);
        v49 = *(a2 + 52);
        v50 = *(a3 + 16);
        v51 = *(a3 + 24);
        v52 = *(a3 + 352);
        v53 = *(a2 + 96);
        v54 = *(a3 + 616);
        v72 = 134286337;
        v73 = v46;
        v74 = 2050;
        v75 = v44;
        v76 = 2049;
        v77 = v45;
        v78 = 2049;
        v79 = v47;
        v80 = 2050;
        v81 = v50;
        v82 = 2049;
        v83 = v48;
        v84 = 2050;
        v85 = v49;
        v86 = 2050;
        v87 = v51;
        v88 = 2049;
        v89 = v48;
        v90 = 1026;
        v91 = v52;
        v92 = 1026;
        v93 = v53;
        v94 = 1026;
        v95 = v54;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4398, 0, "Drop entry! distance, %{private}.8f, startTime, %{public}.8f, gps altitude, %{private}.8f, odometer, %{private}.8f, accuracy, %{public}.8f, gpsSpeed, %{private}.8f, gpsSpeedAccuracy, %{public}.8f, timestampGps, %{public}.8f, rawSpeed, %{private}.8f, originDevice, %{public}d, locationType, %{public}d, batchedLocationFixType, %{public}d", &v72, 110);
        v56 = v55;
        sub_100152C7C("Generic", 1, 0, 2, "void CLOdometerNotifierWatch::notifyLocation(const CLDaemonLocation &, const CLDaemonLocationPrivate &)", "%s\n", v55);
        if (v56 != buf)
        {
          free(v56);
        }
      }

      return;
    }
  }

  else
  {
    *(a1 + 1257) = 1;
    v21 = *(a3 + 8);
  }

  v70 = 0u;
  *&v69[16] = 0u;
  *v69 = 0u;
  *&v68[32] = 0u;
  *&v68[16] = 0u;
  *v68 = 0u;
  v57 = *(a2 + 76);
  v58 = v21;
  v35 = *(a2 + 44);
  v59 = *(a2 + 28);
  v60 = v35;
  v36 = *a3;
  v61 = v35;
  v62 = v36;
  v37 = *(a3 + 24);
  v63 = *(a2 + 52);
  v64 = v37;
  v65 = *(a3 + 344);
  v38 = *(a3 + 352);
  v66 = 0;
  v67 = v38;
  *v68 = *(a2 + 96);
  v39 = *(a3 + 496);
  v40 = *v6;
  *&v68[8] = v6[1];
  *&v68[24] = v39;
  v41 = *(a2 + 68);
  *&v68[40] = *(a2 + 60) * 0.0174532924;
  *v69 = v41;
  *&v69[8] = v40;
  v42 = *(a1 + 948);
  *&v69[24] = *(a3 + 616);
  *&v69[28] = v42;
  LOBYTE(v70) = *(a3 + 288);
  DWORD2(v70) = *(a3 + 276);
  v71 = *(a3 + 280);
  v43 = CFAbsoluteTimeGetCurrent();
  if (sub_10076A7BC(a1 + 1040, (a1 + 1232), &v57, v43))
  {
    sub_1002A2FA4(a1, &v57);
  }
}

uint64_t sub_10076A7BC(uint64_t a1, double *a2, __int128 *a3, double a4)
{
  if (qword_1025D4390 != -1)
  {
    sub_10192BAD8();
  }

  v8 = qword_1025D4398;
  if (os_log_type_enabled(qword_1025D4398, OS_LOG_TYPE_INFO))
  {
    v9 = *(a3 + 6);
    *buf = 134283521;
    v74 = v9;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "Incoming odometer, %{private}.8f", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10192C76C(a3);
  }

  v10 = *(a1 + 64);
  if (v10 <= 0.0 || (v11 = *(a3 + 8), v11 <= 0.0))
  {
    v12 = *a3 - *a1;
  }

  else
  {
    v12 = v11 - v10;
  }

  if (v12 > 0.0 && *a3 + 15.0 >= a4)
  {
    if (*(a3 + 21) == *(a1 + 84) && *(a3 + 22) == *(a1 + 88))
    {
      v29 = *(a3 + 6);
      v30 = *(a1 + 48);
      if (v29 >= v30)
      {
        v38 = v29 - v30;
      }

      else
      {
        if (qword_1025D4390 != -1)
        {
          sub_10192C278();
        }

        v31 = qword_1025D4398;
        if (os_log_type_enabled(qword_1025D4398, OS_LOG_TYPE_DEFAULT))
        {
          v32 = *(a1 + 64);
          v33 = *(a3 + 8);
          v34 = *a1;
          v35 = *a3;
          v36 = *(a1 + 48);
          v37 = *(a3 + 6);
          *buf = 134350337;
          v74 = v32;
          v75 = 2050;
          v76 = v33;
          v77 = 2050;
          *v78 = v34;
          *&v78[8] = 2050;
          v79 = v35;
          v80 = 2049;
          v81 = v36;
          v82 = 2049;
          v83 = v37;
          _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_DEFAULT, "Source may have reset. Gps,%{public}.2lf,%{public}.2lf,startTime,%{public}.2lf,%{public}.2lf,odometer,%{private}.2lf,%{private}.2lf", buf, 0x3Eu);
        }

        v38 = 0.0;
        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D4390 != -1)
          {
            sub_10192C278();
          }

          v39 = *(a1 + 64);
          v40 = *(a3 + 8);
          v41 = *a1;
          v42 = *a3;
          v43 = *(a1 + 48);
          v44 = *(a3 + 6);
          v61 = 134350337;
          v62 = v39;
          v63 = 2050;
          v64 = v40;
          v65 = 2050;
          v66 = v41;
          v67 = 2050;
          v68 = v42;
          v69 = 2049;
          v70 = v43;
          v71 = 2049;
          v72 = v44;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4398, 0, "Source may have reset. Gps,%{public}.2lf,%{public}.2lf,startTime,%{public}.2lf,%{public}.2lf,odometer,%{private}.2lf,%{private}.2lf", &v61, 62);
          v46 = v45;
          sub_100152C7C("Generic", 1, 0, 2, "static BOOL CLOdometerNotifierWatch::updateOdometerWithEntry(CLOdometerEntry &, double &, CLOdometerEntry &, CFAbsoluteTime)", "%s\n", v45);
          if (v46 != buf)
          {
            free(v46);
          }
        }
      }
    }

    else
    {
      if (qword_1025D4390 != -1)
      {
        sub_10192C278();
      }

      v47 = qword_1025D4398;
      if (os_log_type_enabled(qword_1025D4398, OS_LOG_TYPE_DEFAULT))
      {
        v48 = *(a1 + 48);
        v49 = *(a3 + 6);
        v50 = *(a1 + 88);
        v51 = *(a3 + 22);
        *buf = 134284289;
        v74 = v48;
        v75 = 2049;
        v76 = v49;
        v77 = 1026;
        *v78 = v50;
        *&v78[4] = 1026;
        *&v78[6] = v51;
        _os_log_impl(dword_100000000, v47, OS_LOG_TYPE_DEFAULT, "Odometer source change,previous,%{private}lf,current,%{private}lf,previousType,%{public}d,type,%{public}d", buf, 0x22u);
      }

      v38 = 0.0;
      if (sub_10000A100(121, 2))
      {
        sub_10192C870(a1, a3);
      }
    }

    v52 = *a3;
    v53 = a3[1];
    v54 = a3[3];
    *(a1 + 32) = a3[2];
    *(a1 + 48) = v54;
    *a1 = v52;
    *(a1 + 16) = v53;
    v55 = a3[4];
    v56 = a3[5];
    v57 = a3[7];
    *(a1 + 96) = a3[6];
    *(a1 + 112) = v57;
    *(a1 + 64) = v55;
    *(a1 + 80) = v56;
    v58 = a3[8];
    v59 = a3[9];
    v60 = a3[11];
    *(a1 + 160) = a3[10];
    *(a1 + 176) = v60;
    *(a1 + 128) = v58;
    *(a1 + 144) = v59;
    *a2 = v38 + *a2;
    *(a3 + 1) = v38;
    *(a3 + 6) = *a2;
    return 1;
  }

  else
  {
    if (qword_1025D4390 != -1)
    {
      sub_10192C278();
    }

    v13 = qword_1025D4398;
    if (os_log_type_enabled(qword_1025D4398, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 64);
      v15 = *(a3 + 8);
      v16 = *a1;
      v17 = *a3;
      v18 = *(a1 + 48);
      v19 = *(a3 + 6);
      *buf = 134350337;
      v74 = v14;
      v75 = 2050;
      v76 = v15;
      v77 = 2050;
      *v78 = v16;
      *&v78[8] = 2050;
      v79 = v17;
      v80 = 2049;
      v81 = v18;
      v82 = 2049;
      v83 = v19;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "#Warning Current odometer sample fails time check. Gps,%{public}.2lf,%{public}.2lf,startTime,%{public}.2lf,%{public}.2lf,odometer,%{private}.2lf,%{private}.2lf", buf, 0x3Eu);
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4390 != -1)
      {
        sub_10192C278();
      }

      v21 = *(a1 + 64);
      v22 = *(a3 + 8);
      v23 = *a1;
      v24 = *a3;
      v25 = *(a1 + 48);
      v26 = *(a3 + 6);
      v61 = 134350337;
      v62 = v21;
      v63 = 2050;
      v64 = v22;
      v65 = 2050;
      v66 = v23;
      v67 = 2050;
      v68 = v24;
      v69 = 2049;
      v70 = v25;
      v71 = 2049;
      v72 = v26;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4398, 0, "#Warning Current odometer sample fails time check. Gps,%{public}.2lf,%{public}.2lf,startTime,%{public}.2lf,%{public}.2lf,odometer,%{private}.2lf,%{private}.2lf", &v61, 62);
      v28 = v27;
      sub_100152C7C("Generic", 1, 0, 2, "static BOOL CLOdometerNotifierWatch::updateOdometerWithEntry(CLOdometerEntry &, double &, CLOdometerEntry &, CFAbsoluteTime)", "%s\n", v27);
      if (v28 != buf)
      {
        free(v28);
      }

      return 0;
    }
  }

  return result;
}

void sub_10076ADA4(uint64_t a1, unsigned int *a2)
{
  v3 = sub_100ACCA54(a1, a2);
  if (v3)
  {
    v5 = sub_100ACCA54(v3, v4);
    v6 = *a2;

    sub_100ACCA90(v5, v6);
  }
}

_BYTE *sub_10076ADF0(_BYTE *result, _DWORD *a2, uint64_t a3)
{
  if (*a2 == 2)
  {
    v3 = *(a3 + 16);
    if ((v3 - 13) >= 2)
    {
      if (v3 == 15)
      {
        result[1256] = 0;
      }
    }

    else
    {
      result[1256] = *(a3 + 208) == 1;
    }

    return (*(*result + 216))();
  }

  return result;
}

id sub_10076AE54(uint64_t a1, float *a2)
{
  if (qword_1025D4390 != -1)
  {
    sub_10192BAD8();
  }

  v4 = qword_1025D4398;
  if (os_log_type_enabled(qword_1025D4398, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *a2;
    v6 = *(a2 + 1);
    v7 = a2[8];
    *buf = 134349568;
    v14 = v5;
    v15 = 2050;
    v16 = v6;
    v17 = 2050;
    v18 = v7;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "Received flight segment,start,%{public}f,end,%{public}f,rate,%{public}f", buf, 0x20u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10192C9A8();
  }

  v8 = &HKQuantityTypeIdentifierStairDescentSpeed;
  if (a2[8] > 0.0)
  {
    v8 = &HKQuantityTypeIdentifierStairAscentSpeed;
  }

  v9 = [HKQuantitySample quantitySampleWithType:[HKQuantityType quantityTypeForIdentifier:*v8] quantity:[HKQuantity quantityWithUnit:[HKUnit unitFromString:@"m/s"] doubleValue:fabsf(a2[8])] startDate:[NSDate dateWithTimeIntervalSinceReferenceDate:*a2] endDate:[NSDate dateWithTimeIntervalSinceReferenceDate:*(a2 + 1)] metadata:0];
  v10 = *(a1 + 1616);
  v12 = v9;
  return [v10 saveObjects:+[NSArray arrayWithObjects:count:](NSArray withCompletion:{"arrayWithObjects:count:", &v12, 1), &stru_10246F858}];
}

void sub_10076B034(id a1, BOOL a2, NSError *a3)
{
  if (a2)
  {
    if (qword_1025D4230 != -1)
    {
      sub_10192CAC8();
    }

    v3 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_INFO))
    {
      LOWORD(v6) = 0;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_INFO, "AscentDescentRate successfully pushed to HKHealthStore", &v6, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10192CBDC();
    }
  }

  else
  {
    if (qword_1025D4230 != -1)
    {
      sub_10192CAC8();
    }

    v5 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_ERROR))
    {
      v6 = 138543362;
      v7 = a3;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_ERROR, "HKHealthStore, AscentDescentRate, saveObjects failed on, %{public}@", &v6, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10192CADC(a3);
    }
  }
}

void sub_10076B174(_BYTE *a1, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  if (*a3 == 41)
  {
    v14 = *(a4 + 1464);
    v5 = a1[1258];
    *buf = *(a4 + 1448);
    v13 = *buf;
    v21 = v14;
    v6 = sub_10164CEC4(v5, buf);
    *buf = v13;
    v21 = v14;
    v7 = sub_10164CEE4(buf);
    v8 = sub_10164CEF0(v6, v7);
    if (qword_1025D4390 != -1)
    {
      sub_10192C278();
    }

    v9 = qword_1025D4398;
    if (os_log_type_enabled(qword_1025D4398, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67240704;
      *&buf[4] = v6;
      *&buf[8] = 1026;
      *&buf[10] = v7;
      *&buf[14] = 1026;
      LODWORD(v21) = v8;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "Received operation status, isRhythmicActive, %{public}d, is1HzGnssActive, %{public}d, inRhythmicMode, %{public}d", buf, 0x14u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4390 != -1)
      {
        sub_10192C278();
      }

      v15[0] = 67240704;
      v15[1] = v6;
      v16 = 1026;
      v17 = v7;
      v18 = 1026;
      v19 = v8;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4398, 0, "Received operation status, isRhythmicActive, %{public}d, is1HzGnssActive, %{public}d, inRhythmicMode, %{public}d", v15, 20);
      v12 = v11;
      sub_100152C7C("Generic", 1, 0, 2, "void CLOdometerNotifierWatch::onRhythmicGnssModeOfOperationStatusNotification(int, const CLLocationProvider_Type::Notification &, const CLLocationProvider_Type::NotificationData &)", "%s\n", v11);
      if (v12 != buf)
      {
        free(v12);
      }
    }

    v10 = a1[1259];
    a1[1259] = v8;
    if ((v10 & 1) == 0)
    {
      if (v8)
      {
        sub_100769DF8(a1, 3);
      }
    }

    a1[1258] = v6;
  }
}

double sub_10076B4EC(uint64_t a1, double **a2)
{
  v2 = *a2;
  result = **a2;
  v4 = 0.0;
  while (v2 != a2[1])
  {
    v4 = v4 + v2[2];
    v2 += 3;
  }

  return result;
}

uint64_t sub_10076B518(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double sub_10076B5EC(uint64_t a1, double **a2)
{
  v2 = a2[1];
  result = **a2;
  v4 = 0.0;
  if (*a2 != v2)
  {
    v5 = *a2;
    do
    {
      v4 = v4 + v5[2];
      v5 += 3;
    }

    while (v5 != v2);
  }

  return result;
}

uint64_t sub_10076B63C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10076B720(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10076B80C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_10076B858(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  *a1 = off_1025019A0;
  v9 = a5;
  *a1 = off_10246FB40;
  a1[1] = v9;
  a1[2] = a3;
  a1[3] = a4;
  v10 = a2;
  a1[5] = 0;
  a1[4] = v10;
  a1[6] = 0;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v15 = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 3221225472;
  aBlock[2] = sub_10076B9E0;
  aBlock[3] = &unk_10245AE50;
  aBlock[4] = v14;
  a1[5] = _Block_copy(aBlock);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10076B9F4;
  v12[3] = &unk_10245AE78;
  v12[4] = v14;
  a1[6] = _Block_copy(v12);
  _Block_object_dispose(v14, 8);
  return a1;
}

void sub_10076BA10(uint64_t a1)
{
  sub_10076BC14(a1);

  operator delete();
}

id sub_10076BA48(void *a1, uint64_t a2, void *__src, size_t a4)
{
  v6 = a2;
  if (a4 >= 0x38)
  {
    v8 = 56;
  }

  else
  {
    v8 = a4;
  }

  memcpy(__dst, __src, v8);
  if (a4 >= 0x39)
  {
    if (qword_1025D4200 != -1)
    {
      sub_10192CCC0();
    }

    v9 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      v24 = 0x8000000101C8D326 & 0x7FFFFFFFFFFFFFFFLL;
      v25 = 2048;
      v26 = 56;
      v27 = 2048;
      v28 = a4;
      v29 = 1024;
      v30 = v6;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "SIZE MISMATCH: %s=%lu vs sz=%zu notification=%d", buf, 0x26u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10192CCD4();
    }
  }

  v11 = a1[2];
  v10 = a1[3];
  v12 = a1[6];
  v13 = a1[4];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10076BC90;
  v15[3] = &unk_10246FB88;
  v15[4] = v12;
  v15[5] = v11;
  v16 = __dst[0];
  v17 = __dst[1];
  v18 = __dst[2];
  v19 = v22;
  v20 = v10;
  return [v13 async:v15];
}

uint64_t sub_10076BC14(uint64_t a1)
{
  *a1 = off_10246FB40;
  (*(*(a1 + 40) + 16))();
  _Block_release(*(a1 + 40));
  _Block_release(*(a1 + 48));

  return sub_1017E7D44(a1);
}

uint64_t sub_10076BC90(void *a1)
{
  result = (*(a1[4] + 16))();
  if (result)
  {
    v3 = a1[5];
    v4 = a1[13];

    return v3(a1 + 6, v4);
  }

  return result;
}

void sub_10076BCEC()
{
  if ((atomic_load_explicit(&qword_1025D53B0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D53B0))
    {
      v1 = 0x7FFFFFFF00000000;
      v0[2] = xmmword_101C8CF60;
      v0[3] = unk_101C8CF70;
      v0[4] = xmmword_101C8CF80;
      v0[0] = xmmword_101C8CF40;
      v0[1] = unk_101C8CF50;
      sub_1003DFE00(&qword_1025D5398, v0, 11);
      __cxa_atexit(sub_1003DD2C4, &qword_1025D5398, dword_100000000);
      __cxa_guard_release(&qword_1025D53B0);
    }
  }
}

uint64_t sub_10076BDE4()
{
  qword_102659DE8 = off_10246F940;
  qword_102659E00 = &qword_102659DE8;
  __cxa_atexit(sub_1003EE78C, &qword_102659DE8, dword_100000000);
  qword_102659E08 = off_10246F9C0;
  qword_102659E20 = &qword_102659E08;
  __cxa_atexit(sub_1003EE78C, &qword_102659E08, dword_100000000);
  qword_102659E28 = off_10246FA40;
  qword_102659E40 = &qword_102659E28;
  __cxa_atexit(sub_1003EE790, &qword_102659E28, dword_100000000);
  qword_102659E48 = off_10246FAC0;
  qword_102659E60 = &qword_102659E48;

  return __cxa_atexit(sub_1003EE790, &qword_102659E48, dword_100000000);
}

uint64_t sub_10076BF04(uint64_t a1, void *a2)
{
  *a1 = *a2;
  *(a1 + 8) = 0;
  sub_1010D0E00(a1 + 16);
  *(a1 + 61680) = 16;
  return a1;
}

uint64_t sub_10076BF40(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_10076C6CC(a1, a2);
  v7 = v5;
  if (!v5)
  {
    return v7;
  }

  v8 = *(a1 + 61680);
  if (v8)
  {
    *v77 = off_102450818;
    v9 = sub_1003FBD2C();
    if (qword_1025D43F0 != -1)
    {
      sub_10192CE04();
    }

    v10 = qword_1025D43F8;
    if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      *v58 = v9;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "CNNWorkoutClass,%d", buf, 8u);
    }

    v5 = sub_10000A100(121, 2);
    if (v5)
    {
      sub_10192CE2C(v9);
    }

    v8 = *(a1 + 61680);
  }

  if ((v8 & 0x10) != 0)
  {
    *v77 = off_1024865D0;
    memset(&v77[8], 0, 320);
    v78 = 0;
    v11 = sub_100A2A70C(v77, a1 + 16);
    if (qword_1025D43F0 != -1)
    {
      sub_10192CE04();
    }

    v12 = qword_1025D43F8;
    if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      *v58 = v11;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "GBTWorkoutClass,%d", buf, 8u);
    }

    v5 = sub_10000A100(121, 2);
    if (v5)
    {
      sub_10192CF24(v11);
    }

    if ((*(a1 + 61680) & 0x100) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_20;
  }

  LODWORD(v11) = 5;
  if ((v8 & 0x100) != 0)
  {
LABEL_20:
    sub_10120C0E8(v77);
    v13 = sub_10120C130(v77, (a1 + 16));
    if (qword_1025D43F0 != -1)
    {
      sub_10192CE04();
    }

    v14 = qword_1025D43F8;
    if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      *v58 = v13;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "LRWorkoutClass,%d", buf, 8u);
    }

    v5 = sub_10000A100(121, 2);
    if (v5)
    {
      sub_10192D01C(v13);
    }
  }

LABEL_26:
  if (v11 == 1)
  {
    if (*(a1 + 64) >= -48.0 && *(a1 + 276) <= 30.0 && *(a1 + 260) <= 0.5 && *(a1 + 124) <= 10.0)
    {
      LODWORD(v11) = 1;
    }

    else
    {
      LODWORD(v11) = 5;
    }
  }

  else if (!v11)
  {
    LODWORD(v11) = ~(sub_100023B30(v5, v6) >> 31) & 5;
  }

  a3[1] = sub_1003FBD0C(v11);
  *a3 = *(a1 + 8);
  if (qword_1025D43F0 != -1)
  {
    sub_10192CE04();
  }

  v15 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
  {
    v16 = sub_1003FBD0C(v11);
    v18 = *a3;
    v17 = a3[1];
    *v77 = 67109888;
    *&v77[4] = v11;
    *&v77[8] = 2048;
    *&v77[10] = v16;
    *&v77[18] = 2048;
    *&v77[20] = v17;
    *&v77[28] = 2048;
    *&v77[30] = v18;
    _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEFAULT, "Tier2WorkoutClass,%d,CMWorkoutType,%ld,SmoothedCMWorkoutType,%ld,startTime,%f", v77, 0x26u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(v77, 0x65CuLL);
    if (qword_1025D43F0 != -1)
    {
      sub_10192CE04();
    }

    v35 = qword_1025D43F8;
    v36 = sub_1003FBD0C(v11);
    v38 = *a3;
    v37 = a3[1];
    *&v58[4] = 2048;
    *&v58[6] = v36;
    *&v58[14] = 2048;
    *&v58[16] = v37;
    *&v58[24] = 2048;
    *&v58[26] = v38;
    LODWORD(v56) = 38;
    _os_log_send_and_compose_impl(2, 0, v77, 1628, dword_100000000, v35, 0, "Tier2WorkoutClass,%d,CMWorkoutType,%ld,SmoothedCMWorkoutType,%ld,startTime,%f", buf, *&v56, __PAIR64__(v11, 67109888), *&v58[4]);
    v40 = v39;
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWorkoutPredictorTier2Classifier::update(const CLWorkoutPredictorDMInput &, CLWorkoutClassifier_Type::WorkoutClassifierResult &)", "%s\n", v39);
    if (v40 != v77)
    {
      free(v40);
    }
  }

  sub_101221EEC(a1 + 16, v77);
  v19 = *&v77[16];
  *(a3 + 1) = *v77;
  *(a3 + 2) = v19;
  *(a3 + 3) = *&v77[32];
  *(a3 + 16) = *(a1 + 696);
  *(a3 + 17) = *(a1 + 700);
  if (qword_1025D43F0 != -1)
  {
    sub_10192CE04();
  }

  v20 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
  {
    v21 = *(a3 + 7);
    v22 = *(a3 + 8);
    v23 = *(a3 + 9);
    v24 = *(a3 + 10);
    v25 = *(a3 + 11);
    v26 = *(a3 + 12);
    v27 = *(a3 + 13);
    v28 = *(a3 + 14);
    v29 = a3[2];
    v30 = *(a3 + 6);
    v31 = *(a3 + 16);
    v32 = *(a3 + 17);
    v33 = *a3;
    *v77 = 134221056;
    *&v77[4] = v21;
    *&v77[12] = 2048;
    *&v77[14] = v22;
    *&v77[22] = 2048;
    *&v77[24] = v23;
    *&v77[32] = 2048;
    *&v77[34] = v24;
    *&v77[42] = 2048;
    *&v77[44] = v25;
    *&v77[52] = 2048;
    *&v77[54] = v26;
    *&v77[62] = 2048;
    *&v77[64] = v27;
    *&v77[72] = 2048;
    *&v77[74] = v28;
    *&v77[82] = 2048;
    *&v77[84] = v29;
    *&v77[92] = 2048;
    *&v77[94] = v30;
    *&v77[102] = 2048;
    *&v77[104] = v31;
    *&v77[112] = 2048;
    *&v77[114] = v32;
    *&v77[122] = 2048;
    *&v77[124] = v33;
    _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEFAULT, "XGBoostWorkoutPrediction,otherProb,%f,indoorCyclingProb,%f,outdoorCyclingProb,%f,swimmingProb,%f,runningProb,%f,walkingProb,%f,rowingProb,%f,ellipticalProb,%f,type,%ld,conf,%f,yawRange,%f,yawRangeStd,%f,startTime,%f", v77, 0x84u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(v77, 0x65CuLL);
    if (qword_1025D43F0 != -1)
    {
      sub_10192CE04();
    }

    v41 = *(a3 + 7);
    v42 = *(a3 + 8);
    v43 = *(a3 + 9);
    v44 = *(a3 + 10);
    v45 = *(a3 + 11);
    v46 = *(a3 + 12);
    v47 = *(a3 + 13);
    v48 = *(a3 + 14);
    v49 = a3[2];
    v50 = *(a3 + 6);
    v51 = *(a3 + 16);
    v52 = *(a3 + 17);
    v53 = *a3;
    *buf = 134221056;
    *v58 = v41;
    *&v58[8] = 2048;
    *&v58[10] = v42;
    *&v58[18] = 2048;
    *&v58[20] = v43;
    *&v58[28] = 2048;
    *&v58[30] = v44;
    v59 = 2048;
    v60 = v45;
    v61 = 2048;
    v62 = v46;
    v63 = 2048;
    v64 = v47;
    v65 = 2048;
    v66 = v48;
    v67 = 2048;
    v68 = v49;
    v69 = 2048;
    v70 = v50;
    v71 = 2048;
    v72 = v51;
    v73 = 2048;
    v74 = v52;
    v75 = 2048;
    v76 = v53;
    LODWORD(v56) = 132;
    _os_log_send_and_compose_impl(2, 0, v77, 1628, dword_100000000, qword_1025D43F8, 0, "XGBoostWorkoutPrediction,otherProb,%f,indoorCyclingProb,%f,outdoorCyclingProb,%f,swimmingProb,%f,runningProb,%f,walkingProb,%f,rowingProb,%f,ellipticalProb,%f,type,%ld,conf,%f,yawRange,%f,yawRangeStd,%f,startTime,%f", COERCE_DOUBLE(buf), v56);
    v55 = v54;
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWorkoutPredictorTier2Classifier::update(const CLWorkoutPredictorDMInput &, CLWorkoutClassifier_Type::WorkoutClassifierResult &)", "%s\n", v54);
    if (v55 != v77)
    {
      free(v55);
    }
  }

  *(a1 + 8) = 0;
  return v7;
}

uint64_t sub_10076C6CC(int *a1, uint64_t a2)
{
  if (*(a1 + 1) == 0.0)
  {
    *(a1 + 1) = *(a2 + 48);
  }

  v26.i32[0] = sub_10011E6AC(a2);
  v26.i32[1] = v4;
  v27 = v5;
  v24 = *(a2 + 16);
  v25 = *(a2 + 24);
  v22 = *(a2 + 28);
  v23 = *(a2 + 36);
  v20 = 1065353216;
  v21 = 0;
  sub_100AEA854(a2, v18);
  v19[0] = sub_10011FB70(v18, &v24);
  v19[1] = v6;
  v19[2] = v7;
  sub_100AEA854(a2, v18);
  v17[0] = sub_10011FB70(v18, &v22);
  v17[1] = v8;
  v17[2] = v9;
  v10 = a1[1];
  if (!v10)
  {
    sub_10011E6AC(a2);
    v26.f32[1] = -v11;
    v24.f32[1] = -v24.f32[1];
    *&v22 = -*&v22;
    v10 = a1[1];
  }

  v12 = *a1;
  if (*a1 == v10)
  {
    v26.f32[0] = -sub_10011E6AC(a2);
    v24.f32[0] = -v24.f32[0];
    *(&v22 + 1) = -*(&v22 + 1);
    LODWORD(v20) = -1082130432;
    v12 = *a1;
  }

  if (v12 == 1)
  {
    v23 = -v23;
  }

  sub_100AEA854(a2, v18);
  v16[0] = sub_10011FB70(v18, &v20);
  v16[1] = v13;
  v16[2] = v14;
  return sub_1010D0FB8((a1 + 4), &v24, &v22, &v26, v19, v17, v16);
}

void sub_10076C854(char *a1, void *a2)
{
  *a1 = *a2;
  if (qword_1025D43F0 != -1)
  {
    sub_10192D114();
  }

  v3 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEBUG))
  {
    v4 = *a1;
    v5 = *(a1 + 1);
    v6[0] = 67109376;
    v6[1] = v4;
    v7 = 1024;
    v8 = v5;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "DeviceOrientation,%d,%d", v6, 0xEu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10192D128(a1);
  }
}

void sub_10076C970(uint64_t *a1)
{
  if (qword_1025D4240 != -1)
  {
    sub_10192D244();
  }

  v2 = qword_1025D4248;
  if (os_log_type_enabled(qword_1025D4248, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *a1;
    v4 = a1[1];
    v5 = *(a1 + 4);
    v6 = *(a1 + 5);
    v7 = *(a1 + 6);
    v8 = *(a1 + 7);
    v10 = *(a1 + 8);
    v9 = *(a1 + 9);
    v11 = *(a1 + 10);
    v12 = *(a1 + 11);
    v14 = *(a1 + 12);
    v13 = *(a1 + 13);
    v15 = 136321026;
    v16 = "startTime";
    v17 = 2048;
    v18 = v3;
    v19 = 2080;
    v20 = "endTime";
    v21 = 2048;
    v22 = v4;
    v23 = 2080;
    v24 = "avgInterCalibrationTime";
    v25 = 1024;
    v26 = v5;
    v27 = 2080;
    v28 = "pctTurnsRejected";
    v29 = 1024;
    v30 = v6;
    v31 = 2080;
    v32 = "poolLength";
    v33 = 1024;
    v34 = v7;
    v35 = 2080;
    v36 = "avgLapCorrection";
    v37 = 2048;
    v38 = v8;
    v39 = 2080;
    v40 = "numLaps";
    v41 = 1024;
    v42 = v10;
    v43 = 2080;
    v44 = "numLapInsertions";
    v45 = 1024;
    v46 = v9;
    v47 = 2080;
    v48 = "numLapsForConvergence";
    v49 = 1024;
    v50 = v11;
    v51 = 2080;
    v52 = "pctStrokesFailCurvature";
    v53 = 1024;
    v54 = v12;
    v55 = 2080;
    v56 = "pctStrokesFailMA";
    v57 = 1024;
    v58 = v14;
    v59 = 2080;
    v60 = "pctStrokesFailAccel";
    v61 = 1024;
    v62 = v13;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "SessionStats,%s,%f,%s,%f,%s,%u,%s,%u,%s,%u,%s,%f,%s,%u,%s,%u,%s,%u,%s,%u,%s,%u,%s,%u", &v15, 0xCEu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10192D258(a1);
  }
}

uint64_t sub_10076CBC8(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

CLClientManagerAuthorizationContext *sub_10076CBFC(uint64_t a1)
{
  LOBYTE(v3) = 0;
  qword_102659EB0 = [[CLClientManagerAuthorizationContext alloc] initWithInUseLevel:0 registrationResult:5 transientAwareRegistrationResult:5 serviceMaskTuple:*(a1 + 32) diagnosticMask:*(a1 + 40) authorizedForWidgetUpdates:0, v3];
  LOBYTE(v4) = 0;
  result = [[CLClientManagerAuthorizationContext alloc] initWithInUseLevel:0 registrationResult:4 transientAwareRegistrationResult:4 serviceMaskTuple:*(a1 + 32) diagnosticMask:*(a1 + 40) authorizedForWidgetUpdates:0, v4];
  qword_102659EB8 = result;
  return result;
}

BOOL sub_10076CC80(void *a1)
{
  if ((atomic_load_explicit(&qword_102659EF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_102659EF8))
  {
    sub_10000EC00(&qword_102659EC8, "com.apple.NanoUniverse.AegirProxyApp");
    sub_10000EC00(qword_102659EE0, "com.apple.weather");
    __cxa_atexit(sub_10076CDFC, &qword_102659EC8, dword_100000000);
    __cxa_guard_release(&qword_102659EF8);
  }

  v2 = [objc_msgSend(a1 "clientAnchor")];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = "";
  }

  v4 = strlen(v3);
  v5 = &qword_102659EC8;
  v6 = 48;
  do
  {
    v7 = *(v5 + 23);
    if (v7 < 0)
    {
      if (v4 != v5[1])
      {
        goto LABEL_13;
      }

      if (v4 == -1)
      {
        sub_1003CC9DC();
      }

      v8 = *v5;
    }

    else
    {
      v8 = v5;
      if (v4 != v7)
      {
        goto LABEL_13;
      }
    }

    if (!memcmp(v8, v3, v4))
    {
      return v5 != &qword_102659EF8;
    }

LABEL_13:
    v5 += 3;
    v6 -= 24;
  }

  while (v6);
  v5 = &qword_102659EF8;
  return v5 != &qword_102659EF8;
}

void sub_10076CDC8(_Unwind_Exception *a1)
{
  if (byte_102659EDF < 0)
  {
    sub_10192D4C4();
  }

  __cxa_guard_abort(&qword_102659EF8);
  _Unwind_Resume(a1);
}

uint64_t sub_10076CDFC(uint64_t a1)
{
  for (i = 0; i != -48; i -= 24)
  {
    if (*(a1 + i + 47) < 0)
    {
      operator delete(*(a1 + i + 24));
    }
  }

  return a1;
}

void *sub_10076D880(void *a1)
{
  *a1 = off_10246FBF8;
  sub_1007ABE00((a1 + 2), a1[3]);
  return a1;
}

void sub_10076D8CC(void *a1)
{
  *a1 = off_10246FBF8;
  sub_1007ABE00((a1 + 2), a1[3]);

  operator delete();
}

id sub_10076D938(uint64_t a1, void *a2, NSMutableDictionary *a3)
{
  v4 = a2;
  v6 = [a2 isValidCKP];
  if (a3 && v6)
  {
    v4 = sub_1000184F4(a1, v4);
    v7 = sub_10001971C(a1, v4);
    v8 = sub_1000199AC(*(a1 + 400), v4);
    a3 = [NSMutableDictionary dictionaryWithDictionary:a3];
    [(NSMutableDictionary *)a3 setObject:[NSNumber forKeyedSubscript:"numberWithBool:" numberWithBool:v7], @"BigSwitchState"];
    [(NSMutableDictionary *)a3 setObject:[NSNumber forKeyedSubscript:"numberWithUnsignedInt:" numberWithUnsignedInt:v8], @"InUseLevel"];
  }

  v9 = *(a1 + 1096);
  v10 = [v4 legacyClientKey];

  return [v9 setPersistentStoreDictionary:a3 forClient:v10];
}

void sub_10076DA34(uint64_t a1, unint64_t *a2)
{
  v2 = a2[1];
  v3 = *a2;
  v4 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100061098((a1 + 16), &v3);
  if (v4)
  {
    sub_100008080(v4);
  }
}

void sub_10076DA88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

id sub_10076DAA0(void *a1)
{
  v2 = a1 + 3;
  sub_1007ABE00((a1 + 2), a1[3]);
  a1[2] = v2;
  a1[4] = 0;
  *v2 = 0;
  v3 = *(a1[1] + 136);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10076DB3C;
  v5[3] = &unk_10246FC30;
  v5[4] = a1;
  return [v3 iterateAllAnchorKeyPathsWithBlock:v5];
}

void sub_10076DB3C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  sub_10076DB98(v3, a2);
  sub_10076DC58(v3, a2);
  sub_10076DD18(v3, a2);

  sub_10076DDD8(v3, a2);
}

void sub_10076DB98(uint64_t a1, uint64_t a2)
{
  if (sub_1007ABEA0(a1, a2))
  {
    sub_10005A71C(*(a1 + 8), a2, &v6);
    if (sub_1007ABEA0(a1, a2))
    {
      v4 = v6;
      v5 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_1000E5AB0(a1 + 16, &v4, &v4);
      if (v5)
      {
        sub_100008080(v5);
      }
    }

    if (v7)
    {
      sub_100008080(v7);
    }
  }
}

void sub_10076DC2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  if (a12)
  {
    sub_100008080(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_10076DC58(uint64_t a1, uint64_t a2)
{
  if (sub_1007AC13C(a1, a2))
  {
    sub_1007A8814(*(a1 + 8), a2, &v6);
    if (sub_1007AC13C(a1, a2))
    {
      v4 = v6;
      v5 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_1000E5AB0(a1 + 16, &v4, &v4);
      if (v5)
      {
        sub_100008080(v5);
      }
    }

    if (v7)
    {
      sub_100008080(v7);
    }
  }
}

void sub_10076DCEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  if (a12)
  {
    sub_100008080(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_10076DD18(uint64_t a1, uint64_t a2)
{
  if (sub_1001D2A1C(a1, a2))
  {
    sub_1007AC208(*(a1 + 8), a2, &v6);
    if (sub_1001D2A1C(a1, a2))
    {
      v4 = v6;
      v5 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_1000E5AB0(a1 + 16, &v4, &v4);
      if (v5)
      {
        sub_100008080(v5);
      }
    }

    if (v7)
    {
      sub_100008080(v7);
    }
  }
}

void sub_10076DDAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  if (a12)
  {
    sub_100008080(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_10076DDD8(uint64_t a1, uint64_t a2)
{
  if (sub_1007ACAC0(a1, a2))
  {
    sub_1000EA1BC(*(a1 + 8), a2, &v6);
    if (sub_1007ACAC0(a1, a2))
    {
      v4 = v6;
      v5 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_1000E5AB0(a1 + 16, &v4, &v4);
      if (v5)
      {
        sub_100008080(v5);
      }
    }

    if (v7)
    {
      sub_100008080(v7);
    }
  }
}

void sub_10076DE6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  if (a12)
  {
    sub_100008080(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10076DE98(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10076DF28;
  block[3] = &unk_102447418;
  block[4] = a1;
  if (qword_102659F00 != -1)
  {
    dispatch_once(&qword_102659F00, block);
  }

  return qword_1026372A8;
}

void sub_10076DF98(uint64_t a1, CLConnection *a2, CLConnectionMessage **a3, uint64_t a4)
{
  v8 = [NSSet setWithObjects:objc_opt_class(), 0];
  v9 = [CLConnectionMessage::getDictionaryOfClasses(*a3 v8)];
  v10 = sub_1000184F4(a1, [CLClientKeyPath clientKeyPathWithClientKey:v9]);
  UniqueRemotePid = CLConnection::getUniqueRemotePid(a2);
  if (sub_1007731C0(a1, v10, UniqueRemotePid))
  {
    v12 = *(a4 + 23);
    if (*(a4 + 23) < 0)
    {
      if (*(a4 + 8) != 19)
      {
        goto LABEL_20;
      }

      v14 = *a4;
    }

    else
    {
      v13 = a4;
      if (v12 == 14)
      {
        goto LABEL_70;
      }

      if (v12 == 17)
      {
LABEL_49:
        if (*a4 != 0x5064657469736956 || *(a4 + 8) != 0x76694C736563616CLL || *(a4 + 16) != 101)
        {
          goto LABEL_74;
        }

LABEL_57:
        operator new();
      }

      v14 = a4;
      if (v12 != 19)
      {
        goto LABEL_74;
      }
    }

    v16 = *v14;
    v17 = v14[1];
    v18 = *(v14 + 11);
    if (v16 == 0x6E6F697461636F4CLL && v17 == 0x4C72657461647055 && v18 == 0x6576694C72657461)
    {
      operator new();
    }

LABEL_20:
    v21 = *(a4 + 8);
    if ((v12 & 0x80) != 0 && v21 == 25)
    {
      if (**a4 == 0x6E6F697461636F4CLL && *(*a4 + 8) == 0x4872657461647055 && *(*a4 + 16) == 0x616369726F747369 && *(*a4 + 24) == 108)
      {
        operator new();
      }

      goto LABEL_74;
    }

    if ((v12 & 0x80) != 0 && v21 == 23)
    {
      if (**a4 == 0x5064657469736956 && *(*a4 + 8) == 0x736948736563616CLL && *(*a4 + 15) == 0x6C616369726F7473)
      {
        operator new();
      }

      goto LABEL_74;
    }

    if ((v12 & 0x80) != 0)
    {
      if (v21 != 14)
      {
        if (v21 != 17)
        {
          goto LABEL_74;
        }

        v29 = **a4 == 0x5064657469736956 && *(*a4 + 8) == 0x76694C736563616CLL;
        if (!v29 || *(*a4 + 16) != 101)
        {
          goto LABEL_74;
        }

        goto LABEL_57;
      }

      v13 = *a4;
    }

    else
    {
      v13 = a4;
      if (v12 != 14)
      {
        if (v12 != 17)
        {
LABEL_74:
          if (sub_100030AF8(a4, "BackgroundActivitySession"))
          {
            operator new();
          }

          if (sub_100030AF8(a4, "FullAccuracySession"))
          {
            operator new();
          }

          if (qword_1025D47A0 != -1)
          {
            sub_10028840C();
          }

          v34 = off_1025D47A8;
          if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
          {
            v35 = [v9 UTF8String];
            v36 = *(a4 + 23) >= 0 ? a4 : *a4;
            *buf = 68289538;
            *&buf[4] = 0;
            v41[0] = 2082;
            *&v41[1] = "";
            v42 = 2082;
            v43 = v35;
            v44 = 2082;
            v45 = v36;
            _os_log_impl(dword_100000000, v34, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#locationUpdater unknnown DaemonIdentifiable client type, Client:%{public, location:escape_only}s, ClientType:%{public, location:escape_only}s}", buf, 0x26u);
            if (qword_1025D47A0 != -1)
            {
              sub_10192D4D0();
            }
          }

          v37 = off_1025D47A8;
          if (os_signpost_enabled(off_1025D47A8))
          {
            v38 = [v9 UTF8String];
            if (*(a4 + 23) >= 0)
            {
              v39 = a4;
            }

            else
            {
              v39 = *a4;
            }

            *buf = 68289538;
            *&buf[4] = 0;
            v41[0] = 2082;
            *&v41[1] = "";
            v42 = 2082;
            v43 = v38;
            v44 = 2082;
            v45 = v39;
            _os_signpost_emit_with_name_impl(dword_100000000, v37, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#locationUpdater unknnown DaemonIdentifiable client type", "{msg%{public}.0s:#locationUpdater unknnown DaemonIdentifiable client type, Client:%{public, location:escape_only}s, ClientType:%{public, location:escape_only}s}", buf, 0x26u);
          }

          return;
        }

        goto LABEL_49;
      }
    }

LABEL_70:
    v31 = *v13;
    v32 = *(v13 + 6);
    if (v31 == 0x5365636976726553 && v32 == 0x6E6F697373655365)
    {
      operator new();
    }

    goto LABEL_74;
  }

  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v15 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289794;
    *&buf[4] = 0;
    v41[0] = 2082;
    *&v41[1] = "";
    v42 = 2082;
    v43 = [v9 UTF8String];
    v44 = 2050;
    v45 = UniqueRemotePid;
    v46 = 1026;
    v47 = UniqueRemotePid;
    _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#warning Cannot create DaemonIdentifiableClient, IdentityToBeValidated:%{public, location:escape_only}s, ConnectedClientUniquePid:%{public}lld, ConnectedClientPid:%{public}d}", buf, 0x2Cu);
  }
}

void sub_10076E784(uint64_t a1, CLConnection *a2, CLConnectionMessage **a3)
{
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = [NSSet setWithObjects:v4, v5, v6, v7, v8, v9, v10, v11, v12, objc_opt_class(), 0];
  v14 = [CLConnectionMessage::getDictionaryOfClasses(*a3 v13)];
  v15 = sub_1000184F4(a1, [CLClientKeyPath clientKeyPathWithClientKey:v14]);
  UniqueRemotePid = CLConnection::getUniqueRemotePid(a2);
  if (sub_1007731C0(a1, v15, UniqueRemotePid))
  {
    operator new();
  }

  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v17 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    __p = 68289794;
    v21[0] = 2082;
    *&v21[1] = "";
    v21[5] = 2082;
    v22 = [v14 UTF8String];
    v23 = 2050;
    v24 = UniqueRemotePid;
    v25 = 1026;
    v26 = UniqueRemotePid;
    _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#warning Cannot create DaemonIdentifiableMonitor, IdentityToBeValidated:%{public, location:escape_only}s, ConnectedClientUniquePid:%{public}lld, ConnectedClientPid:%{public}d}", &__p, 0x2Cu);
  }
}

void sub_10076EE38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    sub_100008080(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_10076F1A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    sub_100008080(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_10076F508(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    sub_100008080(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_10076F870(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    sub_100008080(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_10076FBD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    sub_100008080(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_10076FF40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    sub_100008080(a13);
  }

  _Unwind_Resume(exception_object);
}