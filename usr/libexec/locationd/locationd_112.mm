uint64_t sub_10082853C(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v7 = sub_100109F14(a4);
  if (v7)
  {
    v10 = a3;
    return (*(*a1 + 96))(a1, a2, &v10, v7);
  }

  else
  {
    v9 = a3;
    return (*(*a1 + 88))(a1, a2, &v9);
  }
}

uint64_t sub_1008286F4(char *a1, void *a2, int *a3, char *a4)
{
  v32 = a2;
  if (a1[108])
  {
    return 0;
  }

  v7 = *(a1 + 11);
  if (v7)
  {
    v10 = a1 + 88;
    do
    {
      if (*(v7 + 8) >= a2)
      {
        v10 = v7;
      }

      v7 = *&v7[8 * (*(v7 + 8) < a2)];
    }

    while (v7);
    if (v10 != a1 + 88 && *(v10 + 8) <= a2)
    {
      v31 = v10;
      v14 = *a3;
      v17 = *(v10 + 6);
      v16 = v10 + 48;
      v15 = v17;
      if (!v17)
      {
        goto LABEL_25;
      }

      v18 = v16;
      do
      {
        if (*(v15 + 7) >= v14)
        {
          v18 = v15;
        }

        v15 = *&v15[8 * (*(v15 + 7) < v14)];
      }

      while (v15);
      if (v18 == v16 || v14 < *(v18 + 7))
      {
LABEL_25:
        v18 = v16;
      }

      v19 = *(a1 + 8);
      if (!v19)
      {
        goto LABEL_33;
      }

      v20 = a1 + 64;
      do
      {
        if (*(v19 + 8) >= v14)
        {
          v20 = v19;
        }

        v19 = *&v19[8 * (*(v19 + 8) < v14)];
      }

      while (v19);
      if (v20 != a1 + 64 && v14 >= *(v20 + 8))
      {
        v30 = v20;
        v27 = *(v20 + 7);
        v28 = *a4;
        *buf = &v32;
        *(sub_100007FA0((v20 + 40), &v32, &unk_101C66300, buf) + 32) = v28;
        memset(buf, 0, 32);
        if (v18 == v16 && (*(*a1 + 128))(a1, a3, buf))
        {
          sub_10082A694(buf);
        }

        if (v27)
        {
          goto LABEL_37;
        }
      }

      else
      {
LABEL_33:
        v21 = (a1 + 56);
        v30 = a1 + 64;
        v22 = byte_1025D8A09;
        v29 = v14;
        *buf = &v29;
        *(sub_100024014((a1 + 56), &v29, &unk_101C66300, buf) + 80) = v22;
        v29 = *a3;
        *buf = &v29;
        v23 = sub_100024014((a1 + 56), &v29, &unk_101C66300, buf);
        v24 = v23[9];
        v23[8] = 0;
        v23[9] = 0;
        if (v24)
        {
          sub_100008080(v24);
        }

        v25 = *a4;
        v29 = *a3;
        *buf = &v29;
        v26 = sub_100024014(v21, &v29, &unk_101C66300, buf);
        *buf = &v32;
        *(sub_100007FA0((v26 + 5), &v32, &unk_101C66300, buf) + 32) = v25;
      }

      (*(*a1 + 168))(a1, a3);
LABEL_37:
      if (v18 == v16)
      {
        *buf = *a3;
        sub_1003C9410((v31 + 40), buf, buf);
      }

      return 1;
    }
  }

  if (qword_1025D47F0 != -1)
  {
    sub_10194B608();
  }

  v11 = qword_1025D47F8;
  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
  {
    v12 = a1 + 8;
    if (a1[31] < 0)
    {
      v12 = *v12;
    }

    *buf = 136446466;
    *&buf[4] = v12;
    *&buf[12] = 1026;
    *&buf[14] = a2;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "%{public}s; client %{public}d does not exist", buf, 0x12u);
  }

  v13 = sub_10000A100(121, 0);
  result = 0;
  if (v13)
  {
    sub_10194B74C(a1, a2);
    return 0;
  }

  return result;
}

BOOL sub_100828AB0(uint64_t a1, void *a2, int *a3)
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
      sub_10194B608();
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
      sub_10194B854(a1, a2);
      return 0;
    }
  }

  return result;
}

uint64_t sub_100828C44(char *a1, int a2, int *a3)
{
  HIDWORD(v25) = a2;
  v3 = a1[108];
  if ((v3 & 1) == 0)
  {
    v5 = *(a1 + 11);
    if (v5)
    {
      v7 = a1 + 88;
      do
      {
        if (*(v5 + 32) >= a2)
        {
          v7 = v5;
        }

        v5 = *(v5 + 8 * (*(v5 + 32) < a2));
      }

      while (v5);
      if (v7 != a1 + 88 && *(v7 + 8) <= a2)
      {
        v10 = *(v7 + 6);
        v8 = v7 + 48;
        v9 = v10;
        if (v10)
        {
          v11 = *a3;
          v12 = v8;
          do
          {
            if (*(v9 + 28) >= v11)
            {
              v12 = v9;
            }

            v9 = *(v9 + 8 * (*(v9 + 28) < v11));
          }

          while (v9);
          if (v12 != v8 && v11 >= *(v12 + 7))
          {
            LODWORD(__p[0]) = *a3;
            sub_10004E6E0((v8 - 8), __p);
            v13 = *(a1 + 8);
            if (!v13)
            {
              goto LABEL_23;
            }

            v14 = *a3;
            v15 = a1 + 64;
            do
            {
              if (*(v13 + 32) >= v14)
              {
                v15 = v13;
              }

              v13 = *(v13 + 8 * (*(v13 + 32) < v14));
            }

            while (v13);
            if (v15 != a1 + 64 && v14 >= *(v15 + 8))
            {
              sub_10004E6E0((v15 + 40), &v25 + 1);
              if (!*(v15 + 7))
              {
                (*(*a1 + 176))(a1, a3);
              }
            }

            else
            {
LABEL_23:
              if (qword_1025D47F0 != -1)
              {
                sub_10194B61C();
              }

              v16 = qword_1025D47F8;
              if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
              {
                v17 = a1 + 8;
                if (a1[31] < 0)
                {
                  v17 = *v17;
                }

                (*(*a1 + 160))(__p, a1, a3);
                if (v35 >= 0)
                {
                  v18 = __p;
                }

                else
                {
                  v18 = __p[0];
                }

                *buf = 136446466;
                *&buf[4] = v17;
                v27 = 2082;
                v28 = v18;
                _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_FAULT, "%{public}s; notification %{public}s not found", buf, 0x16u);
                if (v35 < 0)
                {
                  operator delete(__p[0]);
                }
              }

              if (sub_10000A100(121, 0))
              {
                bzero(__p, 0x65CuLL);
                if (qword_1025D47F0 != -1)
                {
                  sub_10194B61C();
                }

                v20 = a1 + 8;
                if (a1[31] < 0)
                {
                  v20 = *v20;
                }

                v21 = qword_1025D47F8;
                (*(*a1 + 160))(buf, a1, a3);
                if (v29 >= 0)
                {
                  v22 = buf;
                }

                else
                {
                  v22 = *buf;
                }

                v30 = 136446466;
                v31 = v20;
                v32 = 2082;
                v33 = v22;
                LODWORD(v25) = 22;
                _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, v21, 17, "%{public}s; notification %{public}s not found", &v30, v25);
                v24 = v23;
                if (v29 < 0)
                {
                  operator delete(*buf);
                }

                sub_100152C7C("Generic", 1, 0, 0, "virtual BOOL CLNotifier<CLWatchOrientationSettingsNotifier_Type::Notification, CLWatchOrientationSettingsNotifier_Type::NotificationData>::unregisterForNotification(int, const Notification_T &) [Notification_T = CLWatchOrientationSettingsNotifier_Type::Notification, NotificationData_T = CLWatchOrientationSettingsNotifier_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "%s\n", v24);
                if (v24 != __p)
                {
                  free(v24);
                }
              }
            }
          }
        }
      }
    }
  }

  return v3 ^ 1u;
}

uint64_t sub_100828FE8(uint64_t a1, int *a2, _OWORD *a3)
{
  v5 = *(a1 + 64);
  v3 = a1 + 64;
  v4 = v5;
  if (!v5)
  {
    return 0;
  }

  v6 = *a2;
  v7 = v3;
  do
  {
    if (*(v4 + 32) >= v6)
    {
      v7 = v4;
    }

    v4 = *(v4 + 8 * (*(v4 + 32) < v6));
  }

  while (v4);
  if (v7 == v3)
  {
    return 0;
  }

  if (v6 < *(v7 + 32))
  {
    return 0;
  }

  v8 = *(v7 + 64);
  if (!v8)
  {
    return 0;
  }

  v9 = v8[1];
  *a3 = *v8;
  a3[1] = v9;
  return 1;
}

void sub_100829178(uint64_t a1, int *a2, _OWORD *a3, int a4, int a5)
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
      sub_100248B84(buf, a2, &v12);
      sub_10047D8C8(v7 - 8, buf);
    }

    if (a4)
    {
      operator new();
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
      sub_100829B70(a3);
    }
  }
}

void sub_10082964C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_101865570(va);
  sub_101864718(v16 - 144);
  _Unwind_Resume(a1);
}

void sub_100829678(uint64_t a1)
{
  if (*(a1 + 108) == 1)
  {
    if (qword_1025D47F0 != -1)
    {
      sub_10194B608();
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
      sub_10194BA80(a1);
    }
  }

  else
  {
    if (qword_1025D47F0 != -1)
    {
      sub_10194B608();
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
      sub_10194B95C(a1);
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
              sub_10194B61C();
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
                sub_10194B61C();
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
              sub_100152C7C("Generic", 1, 0, 2, "virtual void CLNotifier<CLWatchOrientationSettingsNotifier_Type::Notification, CLWatchOrientationSettingsNotifier_Type::NotificationData>::listClients() [Notification_T = CLWatchOrientationSettingsNotifier_Type::Notification, NotificationData_T = CLWatchOrientationSettingsNotifier_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "%s\n", v20);
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

void sub_100829A3C(uint64_t a1)
{
  sub_10082A624(a1);

  operator delete();
}

id sub_100829A74(uint64_t a1, int a2, void *a3)
{
  result = sub_10082A16C(a3);
  if (result)
  {
    v6 = a2;
    return (*(a1 + 24))(0, &v6, result, *(a1 + 32));
  }

  return result;
}

uint64_t sub_100829AF4(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_1008275A4(v1);
  v4[0] = v1[14];
  memset(&v4[1], 0, 24);
  v3 = 0;
  return (*(*v1 + 152))(v1, &v3, v4, 1, 0xFFFFFFFFLL, 0);
}

void sub_100829C1C(void *a1, int *a2, void *a3)
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
        v10 = sub_10082A16C(a3);
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
              v38 = v16;
              sub_100829FD8(a1, &v38, &v39, a3);
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
                  if (*(v27 + 28) >= v17)
                  {
                    v26 = v27;
                  }

                  v27 = *(v27 + 8 * (*(v27 + 28) < v17));
                }

                while (v27);
                if (v26 == v11 || v17 < *(v26 + 7))
                {
                  do
                  {
                    v28 = *(v24 + 28);
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
                sub_10194B61C();
              }

              v18 = qword_1025D47F8;
              if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
              {
                v19 = a1 + 1;
                if (*(a1 + 31) < 0)
                {
                  v19 = *v13;
                }

                v20 = *(v11 + 7);
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
                  sub_10194B61C();
                }

                v33 = a1 + 1;
                if (*(a1 + 31) < 0)
                {
                  v33 = *v13;
                }

                v34 = *(v11 + 7);
                v40 = 136446466;
                v41 = v33;
                v42 = 1026;
                v43 = v34;
                LODWORD(v37) = 18;
                _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D47F8, 17, "%{public}s; unknown client %{public}d", &v40, v37);
                v36 = v35;
                sub_100152C7C("Generic", 1, 0, 0, "void CLNotifier<CLWatchOrientationSettingsNotifier_Type::Notification, CLWatchOrientationSettingsNotifier_Type::NotificationData>::invokeClientsWithData(const Notification_T &, CLCppContainer *) [Notification_T = CLWatchOrientationSettingsNotifier_Type::Notification, NotificationData_T = CLWatchOrientationSettingsNotifier_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "%s\n", v35);
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

_BYTE *sub_100829FD8(_BYTE *result, uint64_t a2, uint64_t *a3, void *a4)
{
  if ((result[108] & 1) == 0)
  {
    v7 = result;
    v8 = *(*a2 + 32);
    LODWORD(v12) = *(*a3 + 32);
    v9 = sub_10082A16C(a4);
    v10 = *a3;
    v13 = (*a2 + 32);
    v11 = sub_100007FA0(v10 + 40, v13, &unk_101C66300, &v13);
    result = (*(*v7 + 192))(v7, v8, &v12, v9, v10 + 80, v11 + 4);
    if (result)
    {
      return [*(*a2 + 64) onNotification:*(*a3 + 32) withData:{a4, v12}];
    }
  }

  return result;
}

void sub_10082A0F0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1024757A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10082A14C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    operator delete();
  }

  return result;
}

id sub_10082A16C(void *a1)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    return sub_10082A208(a1);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

      return sub_10082A3A4(a1);
    }

    else
    {
      return 0;
    }
  }
}

id sub_10082A208(void *a1)
{
  v2 = [a1 binaryVersion];
  [a1 sizeOfType];
  if (!v2)
  {
    return sub_10082A56C(&v8, a1);
  }

  if (getenv("_INTERSILO_UNIT_TEST"))
  {
    if (qword_1025D41A0 != -1)
    {
      sub_10194BB94();
    }

    v3 = qword_1025D41A8;
    if (!os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    *buf = 134218498;
    v10 = v2;
    v11 = 2048;
    v12 = 0;
    v13 = 2080;
    v14 = 0x8000000101CB0A96 & 0x7FFFFFFFFFFFFFFFLL;
    v4 = v3;
    v5 = OS_LOG_TYPE_ERROR;
  }

  else
  {
    if (qword_1025D41A0 != -1)
    {
      sub_10194BB94();
    }

    v7 = qword_1025D41A8;
    if (!os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    *buf = 134218498;
    v10 = v2;
    v11 = 2048;
    v12 = 0;
    v13 = 2080;
    v14 = 0x8000000101CB0A96 & 0x7FFFFFFFFFFFFFFFLL;
    v4 = v7;
    v5 = OS_LOG_TYPE_FAULT;
  }

  _os_log_impl(dword_100000000, v4, v5, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", buf, 0x20u);
  return 0;
}

id sub_10082A3A4(void *a1)
{
  v2 = [a1 binaryVersion];
  [a1 sizeOfType];
  if (v2)
  {
    if (getenv("_INTERSILO_UNIT_TEST"))
    {
      if (qword_1025D41A0 != -1)
      {
        sub_10194BB94();
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
      v13 = 0x8000000101CB0A96 & 0x7FFFFFFFFFFFFFFFLL;
      v4 = v3;
      v5 = OS_LOG_TYPE_ERROR;
    }

    else
    {
      if (qword_1025D41A0 != -1)
      {
        sub_10194BB94();
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
      v13 = 0x8000000101CB0A96 & 0x7FFFFFFFFFFFFFFFLL;
      v4 = v7;
      v5 = OS_LOG_TYPE_FAULT;
    }

    _os_log_impl(dword_100000000, v4, v5, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v8, 0x20u);
    return 0;
  }

  return [a1 cppObjectPtr];
}

id sub_10082A56C(uint64_t a1, void *a2)
{
  if (![a2 cppObjectPtr] && objc_msgSend(objc_msgSend(a2, "compatibilityInfo"), "isEqual:", &off_10254EFF0))
  {
    if ([objc_msgSend(a2 "serialized")] != 32)
    {
      sub_10194BBA8();
    }

    [a2 setCppObjectPtr:{objc_msgSend(objc_msgSend(a2, "serialized"), "bytes")}];
  }

  return [a2 cppObjectPtr];
}

uint64_t sub_10082A624(uint64_t a1)
{
  *a1 = off_102475810;
  v2 = (a1 + 8);
  [*(a1 + 16) forget:*(a1 + 8)];

  [*v2 invalidate];
  *v2 = 0;
  *(a1 + 16) = 0;
  return a1;
}

uint64_t sub_10082A740(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    operator delete();
  }

  return result;
}

void sub_10082A760(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 4536);
  v6 = *(a2 + 4540);
  v7 = *(a2 + 4544);
  v8 = *(a2 + 4548);
  v9 = (*(*a1 + 40))(a1);
  v10 = v9;
  v11 = v9 & dword_100000000;
  v12 = 0.0;
  if ((v9 & dword_100000000) != 0)
  {
    v13 = *&v9;
  }

  else
  {
    v13 = 0.0;
  }

  v32 = *(a2 + 24);
  v14 = (*(*a2 + 16))(a2);
  v15 = (*(*a2 + 8))(a2);
  v16 = v15;
  v17 = (fmaxf(v13, 0.0) * 4.5665) + 2.9705;
  v18 = 2.1;
  if (v13 <= 0.0)
  {
    v19 = 2.1;
  }

  else
  {
    v19 = v17;
  }

  if ((v10 & 0x100000000) != 0 || v14)
  {
    if (v15)
    {
      v21 = *(a2 + 352);
      v22 = (v8 - v21) / (v8 - v7);
      v18 = v5 * sub_100161F00(v22, v6);
      v20 = 1;
      v12 = v18;
    }

    else if (v11)
    {
      v20 = 0;
      v18 = v19;
    }

    else
    {
      v18 = sub_1010D0044(*(a2 + 48));
      v20 = 3;
    }
  }

  else
  {
    v20 = 5;
  }

  if (qword_1025D4230 != -1)
  {
    sub_10194BD2C();
  }

  v23 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEBUG))
  {
    v24 = *(a2 + 352);
    v25 = *(a2 + 392);
    *buf = 134220800;
    v58 = v24;
    v59 = 2048;
    v60 = v32;
    v61 = 2048;
    v62 = v25;
    v63 = 2048;
    v64 = v8;
    v65 = 2048;
    v66 = v7;
    v67 = 2048;
    v68 = v13;
    v69 = 2048;
    v70 = v19;
    v71 = 2048;
    v72 = v12;
    v73 = 2048;
    v74 = v18;
    v75 = 1024;
    v76 = v16;
    v77 = 1024;
    v78 = v14;
    v79 = 1024;
    v80 = HIDWORD(v11);
    _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEBUG, "Stair Climbing, hr, %f, timestamp, %f, sinceLastGood, %f, hrmax, %f, hrmin, %f, stepRate, %f, wrmets, %f, hrmets, %f, mets, %f, hrGood, %d, hrAvail, %d, stepRateAvail, %d", buf, 0x6Eu);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4230 != -1)
    {
      sub_10194BD40();
    }

    v26 = *(a2 + 352);
    v27 = *(a2 + 392);
    v33 = 134220800;
    v34 = v26;
    v35 = 2048;
    v36 = v32;
    v37 = 2048;
    v38 = v27;
    v39 = 2048;
    v40 = v8;
    v41 = 2048;
    v42 = v7;
    v43 = 2048;
    v44 = v13;
    v45 = 2048;
    v46 = v19;
    v47 = 2048;
    v48 = v12;
    v49 = 2048;
    v50 = v18;
    v51 = 1024;
    v52 = v16;
    v53 = 1024;
    v54 = v14;
    v55 = 1024;
    v56 = HIDWORD(v11);
    LODWORD(v30) = 110;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4238, 2, "Stair Climbing, hr, %f, timestamp, %f, sinceLastGood, %f, hrmax, %f, hrmin, %f, stepRate, %f, wrmets, %f, hrmets, %f, mets, %f, hrGood, %d, hrAvail, %d, stepRateAvail, %d", COERCE_DOUBLE(&v33), v30, v31, v32);
    v29 = v28;
    sub_100152C7C("Generic", 1, 0, 2, "virtual CLMetsInfo CLNatalieStairClimbingModel::computeMETS(const CLNatalieModelInput &)", "%s\n", v28);
    if (v29 != buf)
    {
      free(v29);
    }
  }

  *a3 = v12;
  *(a3 + 4) = v19;
  *(a3 + 8) = 0;
  *(a3 + 12) = v19;
  *(a3 + 16) = 0;
  *(a3 + 20) = v18;
  *(a3 + 24) = v20;
  *(a3 + 28) = 0;
  *(a3 + 32) = 0xA00000003;
}

void sub_10082ABA8(__n128 a1, uint64_t a2, uint64_t a3)
{
  v4 = a1.n128_f64[0];
  if (sub_1000CD414(a3 + 3728, a1))
  {
    sub_1004A2080(a3 + 3728, v5, v4);
    if (v5[208] == 1)
    {
      sub_1004A243C(a3 + 3296);
    }
  }
}

void sub_10082AC7C(int a1)
{
  if (a1)
  {
    operator new();
  }

  operator new();
}

void sub_10082AD64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  operator delete();
}

void *sub_10082AD8C(void *result, uint64_t a2)
{
  *result = off_1024758C8;
  result[1] = a2;
  return result;
}

id sub_10082ADBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [objc_msgSend(objc_msgSend(*(a1 + 8) vendor];
  v6 = &v5;
  sub_100072124(&v6);
  return v3;
}

void sub_10082AE24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_100072124(&a12);
  _Unwind_Resume(a1);
}

id sub_10082BB58(uint64_t a1, uint64_t a2)
{
  if (qword_1025D47A0 != -1)
  {
    sub_10194BECC();
  }

  v3 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "#diagnosticManager Interruption handler called", v5, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10194C928();
  }

  return [*(a1 + 32) setConnection:0];
}

id sub_10082BC08(uint64_t a1, uint64_t a2)
{
  if (qword_1025D47A0 != -1)
  {
    sub_10194BECC();
  }

  v3 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "#diagnosticManager Invalidation handler called", v5, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10194CA04();
  }

  return [*(a1 + 32) setConnection:0];
}

void sub_10082BEAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10082BF10(id a1)
{
  v4 = 6;
  strcpy(v3, "mobile");
  sub_10016C650(v3, __p);
  if (v6 >= 0)
  {
    v1 = __p;
  }

  else
  {
    v1 = __p[0];
  }

  v2 = [NSString stringWithUTF8String:v1];
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v4 < 0)
  {
    operator delete(v3[0]);
  }

  qword_10265A530 = [[NSURL alloc] initWithString:{-[NSString stringByAppendingPathComponent:](v2, "stringByAppendingPathComponent:", objc_msgSend(&off_102554450, "componentsJoinedByString:", @"/"}];
}

void sub_10082BFEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

void sub_10082C084(id a1)
{
  v1 = objc_opt_new();
  qword_10265A540 = v1;

  [v1 setDateFormat:@"yyyy-MM-dd_HH-mm-ss"];
}

uint64_t sub_10082C194(uint64_t a1, uint64_t a2)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 12) = 0x500000000;
  *(a1 + 40) = 0x400000000;
  if (!a2 || *(a2 + 16) >= 5u)
  {
    sub_10194CD14(a1);
  }

  *(a1 + 12) = 0;
  *(a1 + 40) = 0;
  return a1;
}

uint64_t sub_10082C1FC(uint64_t result)
{
  *(result + 12) = 0;
  *(result + 40) = 0;
  return result;
}

unsigned __int16 *sub_10082C20C(unsigned __int16 *result, float a2)
{
  v2 = result;
  v4 = result + 6;
  v3 = result[6];
  v5 = result[7];
  v6 = *(result + 4);
  if (v3 + v5 >= v6)
  {
    v7 = *(result + 4);
  }

  else
  {
    v7 = 0;
  }

  *&result[2 * (v3 + v5 - v7) + 10] = a2;
  if (v6 <= v5)
  {
    v8 = v3 + 1;
    if (v8 < v6)
    {
      LOWORD(v6) = 0;
    }

    *v4 = v8 - v6;
  }

  else
  {
    result[7] = v5 + 1;
    v5 = (v5 + 1);
  }

  v9 = *(*result + 16);
  v10 = result[21];
  if (v10 >= v9)
  {
    v14 = 0;
    *(result + 2) = 0;
    do
    {
      v15 = v14;
      v16 = v14;
      v17 = *(**v2 + 4 * v14);
      v18 = *(v2 + 2) + (v17 * *sub_100457AE8(v4, v5 + ~v14));
      *(v2 + 2) = v18;
      if (v16)
      {
        v19 = *(*(*v2 + 8) + 4 * v15);
        v18 = *(v2 + 2) - (v19 * *sub_100457AE8(v2 + 20, v10 - v15));
        *(v2 + 2) = v18;
      }

      v14 = v15 + 1;
    }

    while (v9 >= (v15 + 1));
    *(v2 + 2) = v18 / **(*v2 + 8);
    return sub_100623A2C(v2 + 20, v2 + 2);
  }

  else
  {
    v11 = *(result + 11);
    v12 = result[20];
    if (v12 + v10 >= v11)
    {
      v13 = *(result + 11);
    }

    else
    {
      v13 = 0;
    }

    *&result[2 * (v12 + v10 - v13) + 24] = a2;
    if (v11 <= v10)
    {
      v20 = v12 + 1;
      if (v20 < v11)
      {
        LOWORD(v11) = 0;
      }

      result[20] = v20 - v11;
    }

    else
    {
      result[21] = v10 + 1;
    }

    *(result + 2) = a2;
  }

  return result;
}

uint64_t sub_10082C3A0(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    sub_100008080(v2);
  }

  return a1;
}

uint64_t sub_10082C3D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_100007244(__dst, *a2, *(a2 + 8));
  }

  else
  {
    *__dst = *a2;
    v24 = *(a2 + 16);
  }

  v18 = dword_100000000 + 2;
  v19 = 256;
  if (*(a3 + 23) < 0)
  {
    sub_100007244(__p, *a3, *(a3 + 8));
  }

  else
  {
    *__p = *a3;
    v21 = *(a3 + 16);
  }

  v22 = 0;
  sub_100F7938C(a1, __dst, &v18, -1.0);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v24) < 0)
  {
    operator delete(__dst[0]);
  }

  *a1 = off_102475A10;
  sub_10000EC00(&v18, "ff:ff:ff:ff:ff:ff");
  *(a1 + 256) = sub_100196E8C(&v18);
  if (SHIBYTE(__p[0]) < 0)
  {
    operator delete(v18);
  }

  sub_10018D404(a1 + 264);
  sub_100AABCE0(a1 + 304);
  *(a1 + 368) = 0;
  *(a1 + 376) = 0;
  sub_10000EC00((a1 + 384), "UnknownHarvest");
  *(a1 + 408) = 0x10000000000000;
  v6 = *(a2 + 23);
  if (v6 >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = *(a2 + 8);
  }

  v8 = qword_10265A558;
  if (byte_10265A567 >= 0)
  {
    v8 = byte_10265A567;
  }

  if (v7 == v8)
  {
    v9 = v6 >= 0 ? a2 : *a2;
    v10 = byte_10265A567 >= 0 ? &qword_10265A550 : qword_10265A550;
    if (!memcmp(v9, v10, v7))
    {
      if (*(a1 + 407) < 0)
      {
        *(a1 + 392) = 10;
        v15 = *(a1 + 384);
      }

      else
      {
        *(a1 + 407) = 10;
        v15 = a1 + 384;
      }

      *(v15 + 8) = 29811;
      *v15 = *"GpsHarvest";
      v16 = (v15 + 10);
      goto LABEL_44;
    }
  }

  v11 = qword_10265A570;
  if (byte_10265A57F >= 0)
  {
    v11 = byte_10265A57F;
  }

  if (v7 == v11)
  {
    v12 = v6 >= 0 ? a2 : *a2;
    v13 = byte_10265A57F >= 0 ? &qword_10265A568 : qword_10265A568;
    if (!memcmp(v12, v13, v7))
    {
      if (*(a1 + 407) < 0)
      {
        *(a1 + 392) = 11;
        v14 = *(a1 + 384);
      }

      else
      {
        *(a1 + 407) = 11;
        v14 = a1 + 384;
      }

      *(v14 + 7) = 1953719670;
      *v14 = *"WifiHarvest";
      v16 = (v14 + 11);
LABEL_44:
      *v16 = 0;
    }
  }

  sub_100AABD0C(a1 + 304, (a1 + 384));
  return a1;
}

void sub_10082C670(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10082C6FC(uint64_t a1)
{
  *a1 = off_1024C2398;
  if (*(a1 + 255) < 0)
  {
    operator delete(*(a1 + 232));
  }

  return sub_1006526BC(a1);
}

void sub_10082C7BC(uint64_t a1)
{
  v2 = sub_1000081AC();
  if (v2 - *(a1 + 408) >= 14400.0)
  {
    sub_10082C810(a1);
    *(a1 + 408) = v2;
  }
}

void **sub_10082C810(uint64_t a1)
{
  v2 = sub_100100690();
  v4 = sub_1001B0A10(v2);
  sub_1001B0B4C(a1, &v4);
  sub_1001B2334(a1);
  return sub_1001B2F54(a1);
}

uint64_t sub_10082C860(uint64_t a1)
{
  *a1 = off_102475A10;
  if (*(a1 + 407) < 0)
  {
    operator delete(*(a1 + 384));
  }

  if (*(a1 + 367) < 0)
  {
    operator delete(*(a1 + 344));
  }

  *a1 = off_1024C2398;
  if (*(a1 + 255) < 0)
  {
    operator delete(*(a1 + 232));
  }

  return sub_1006526BC(a1);
}

void sub_10082C8FC(uint64_t a1)
{
  *a1 = off_102475A10;
  if (*(a1 + 407) < 0)
  {
    operator delete(*(a1 + 384));
  }

  if (*(a1 + 367) < 0)
  {
    operator delete(*(a1 + 344));
  }

  *a1 = off_1024C2398;
  if (*(a1 + 255) < 0)
  {
    operator delete(*(a1 + 232));
  }

  sub_1006526BC(a1);

  operator delete();
}

void *sub_10082CA48(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_102475A70;
  sub_10082CB40((a1 + 3), a2);
  return a1;
}

void sub_10082CAC4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_102475A70;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10082CB40(uint64_t a1, uint64_t a2)
{
  sub_10000EC00(__p, "");
  sub_10082C3D0(a1, a2, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_10082CBA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10082CC30(void *a1, uint64_t a2, uint64_t a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_102475A70;
  sub_10082C3D0((a1 + 3), a2, a3);
  return a1;
}

void sub_10082CC8C(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[3];
    if (v3)
    {
      __p[4] = v3;
      operator delete(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void sub_10082CCF0()
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

uint64_t sub_10082CDA8()
{
  sub_10000EC00(&qword_10265A550, "WifiAssociatedApHarvestTable");
  __cxa_atexit(&std::string::~string, &qword_10265A550, dword_100000000);
  sub_10000EC00(&qword_10265A568, "WifiAssociatedApWifiHarvestTable");

  return __cxa_atexit(&std::string::~string, &qword_10265A568, dword_100000000);
}

double sub_10082CE40(void *a1)
{
  v1 = sub_100C71B10(a1);
  *v1 = off_102475AC0;
  *(v1 + 1) = 0u;
  *(v1 + 2) = 0u;
  *(v1 + 3) = 0u;
  *(v1 + 4) = 0u;
  *(v1 + 76) = 0u;
  *(v1 + 92) = 1065353216;
  *(v1 + 25) = 0;
  *(v1 + 54) = 0;
  *(v1 + 110) = 0;
  *&result = 0x1E00000000;
  v1[14] = 0x1E00000000;
  *(v1 + 152) = 1;
  v1[21] = 0x1E00000000;
  *(v1 + 41) = 1031798784;
  return result;
}

void sub_10082CEC0(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 74);
  if (v3)
  {
    *(result + 16) = *a2;
    *(result + 20) = *(a2 + 4);
    *(result + 24) = *(a2 + 8);
    *(result + 28) = *(a2 + 12);
    *(result + 32) = *(a2 + 16);
    *(result + 36) = *(a2 + 20);
    *(result + 40) = *(a2 + 24);
    *(result + 48) = *(a2 + 32);
    *(result + 52) = *(a2 + 36);
    *(result + 56) = *(a2 + 40);
    *(result + 60) = *(a2 + 44);
    *(result + 64) = *(a2 + 48);
    v4 = *(a2 + 64);
    *(result + 76) = v4;
    *(result + 86) = *(a2 + 68);
    *(result + 84) = *(a2 + 72) != 0;
    v5 = *(a2 + 73);
    v6 = *(a2 + 56);
    *(result + 112) = 0;
    v7 = (result + 112);
    *(result + 85) = v5 != 0;
    *(result + 68) = v6;
    *(result + 110) = v3;
    if ((v4 - 1) <= 0x1C)
    {
      sub_10082CFB0(v7, v4);
    }

    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  *(result + 90) = v8;
}

void sub_10082CFB0(unsigned __int16 *a1, uint64_t a2)
{
  if (*a1)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_10194D1B0();
    }

    v4 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      v5 = a1[1];
      v6 = *a1;
      *buf = 67109376;
      v15 = v5;
      v16 = 1024;
      v17 = v6;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_FAULT, "Assertion failed: fHeadAndSize.fSize == 0 && fHeadAndSize.fHead == 0, file /Library/Caches/com.apple.xbs/Sources/CoreLocation/Oscar/CMQueue.h, line 78,size,%u,head,%u.", buf, 0xEu);
    }

    if (sub_10000A100(121, 0))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D48A0 != -1)
      {
        sub_10194D1C4();
      }

      v7 = a1[1];
      v8 = *a1;
      v11[0] = 67109376;
      v11[1] = v7;
      v12 = 1024;
      v13 = v8;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 17, "Assertion failed: fHeadAndSize.fSize == 0 && fHeadAndSize.fHead == 0, file /Library/Caches/com.apple.xbs/Sources/CoreLocation/Oscar/CMQueue.h, line 78,size,%u,head,%u.", v11, 14);
      v10 = v9;
      sub_100152C7C("Generic", 1, 0, 0, "void CMQueue<BOOL>::setCapacity(size_t) [T = BOOL]", "%s\n", v9);
      if (v10 != buf)
      {
        free(v10);
      }
    }
  }

  if (a2)
  {
    *(a1 + 1) = a2;
  }
}

void sub_10082D180(uint64_t a1)
{
  if (qword_1025D48A0 != -1)
  {
    sub_10194D1B0();
  }

  v2 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 52);
    v4 = *(a1 + 56);
    v5 = *(a1 + 60);
    v6 = *(a1 + 64);
    v25 = 67109888;
    *v26 = v3;
    *&v26[4] = 1024;
    *&v26[6] = v4;
    LOWORD(v27) = 1024;
    *(&v27 + 2) = v5;
    HIWORD(v27) = 1024;
    *v28 = v6;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "configuration: low band = [%d %d] high band [%d %d]", &v25, 0x1Au);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10194D1EC(a1);
  }

  if (qword_1025D48A0 != -1)
  {
    sub_10194D1C4();
  }

  v7 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    v8 = *(a1 + 40);
    v9 = *(a1 + 44);
    v10 = *(a1 + 48);
    v25 = 134218496;
    *v26 = v8;
    *&v26[8] = 2048;
    v27 = v9;
    *v28 = 2048;
    *&v28[2] = v10;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "configuration: classifierMinLowPower = %f, classifierMaxLowPower = %f, classifierMaxHighPower = %f", &v25, 0x20u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10194D300(a1);
  }

  if (qword_1025D48A0 != -1)
  {
    sub_10194D1C4();
  }

  v11 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    v12 = *(a1 + 16);
    v13 = *(a1 + 20);
    v14 = *(a1 + 24);
    v15 = *(a1 + 28);
    v16 = *(a1 + 32);
    v17 = *(a1 + 36);
    v25 = 134219264;
    *v26 = v12;
    *&v26[8] = 2048;
    v27 = v13;
    *v28 = 2048;
    *&v28[2] = v14;
    v29 = 2048;
    *v30 = v15;
    *&v30[8] = 2048;
    *v31 = v16;
    *&v31[8] = 2048;
    v32 = v17;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "configuration: theta = [%.2f %.2f %.2f %.2f %.2f %.2f]", &v25, 0x3Eu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10194D41C(a1);
  }

  if (qword_1025D48A0 != -1)
  {
    sub_10194D1C4();
  }

  v18 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    v19 = *(a1 + 68);
    v20 = *(a1 + 76);
    v21 = *(a1 + 86);
    v22 = *(a1 + 84);
    v23 = *(a1 + 85);
    v24 = *(a1 + 72);
    v25 = 134219264;
    *v26 = v19;
    *&v26[8] = 2048;
    v27 = v20;
    *v28 = 2048;
    *&v28[2] = v21;
    v29 = 1024;
    *v30 = v22;
    *&v30[4] = 1024;
    *&v30[6] = v23;
    *v31 = 2048;
    *&v31[2] = v24;
    _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEBUG, "configuration: oddsThreshold = %f, medianFilterSize = %zu, confidenceThreshold = %f, useHysteresis = %d, useAngleOverride = %d, angleMetricThreshold = %f", &v25, 0x36u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10194D560(a1);
  }
}

uint64_t sub_10082D4B0(uint64_t result)
{
  *(result + 92) = 1065353216;
  *(result + 108) = 0;
  *(result + 112) = 0;
  return result;
}

void sub_10082D4C4(uint64_t a1, float a2, float a3)
{
  v3 = a2 * 100.0;
  if ((a2 * 100.0) <= (*(a1 + 44) * 100.0) && v3 >= (*(a1 + 40) * 100.0))
  {
    v5 = a3 * 100.0;
    if (!sub_100D88B70(*(a1 + 110)) || v5 <= (*(a1 + 48) * 100.0))
    {
      expf(((((*(a1 + 16) + (*(a1 + 20) * v3)) + (*(a1 + 24) * v5)) + ((v3 * *(a1 + 28)) * v5)) + ((v3 * *(a1 + 32)) * v3)) + ((v5 * *(a1 + 36)) * v5));
    }
  }
}

uint64_t sub_10082D58C(uint64_t a1)
{
  if (*(a1 + 90) != 1)
  {
    v3 = 0;
    v4 = 3;
    return v4 | v3;
  }

  if (*(a1 + 91) == 1)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_10194D1B0();
    }

    v2 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      *v25 = 0;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "Accel saturation detected, forcing OnBody.", v25, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10194D6A4();
    }

    v3 = dword_100000000;
    v4 = 1;
    return v4 | v3;
  }

  sub_10082D4C4(a1, *(a1 + 96), *(a1 + 100));
  *(a1 + 92) = v5;
  if (*(a1 + 85) == 1)
  {
    sub_100623A2C((a1 + 168), (a1 + 104));
    *(a1 + 152) = 1;
  }

  v6 = *(a1 + 112);
  v7 = *(a1 + 114);
  v8 = *(a1 + 116);
  if (*(a1 + 114) && v8 == v7)
  {
    v9 = v6 + 1;
    if (v6 + 1 >= v7)
    {
      v10 = *(a1 + 114);
    }

    else
    {
      v10 = 0;
    }

    LOWORD(v6) = v9 - v10;
    *(a1 + 112) = v6;
    v11 = v7 - 1;
    *(a1 + 114) = v7 - 1;
    LODWORD(v7) = (v7 - 1);
  }

  else
  {
    v11 = *(a1 + 114);
  }

  v12 = v6 + v11;
  if (v12 >= v8)
  {
    v13 = v8;
  }

  else
  {
    v13 = 0;
  }

  *(a1 + v12 - v13 + 120) = *(a1 + 92) > *(a1 + 68);
  if (v8 <= v7)
  {
    if (v6 + 1 < v8)
    {
      LOWORD(v8) = 0;
    }

    *(a1 + 112) = v6 + 1 - v8;
  }

  else
  {
    *(a1 + 114) = ++v11;
  }

  v14 = *(a1 + 108);
  if (v14 < v11)
  {
    v15 = 0;
    *(a1 + 108) = v14 + 1;
    v16 = *(a1 + 92);
    v4 = 3;
    if ((*(a1 + 84) & 1) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_45;
  }

  if (!v11)
  {
    v20 = *(a1 + 84);
    if (v20)
    {
      LOWORD(v19) = 0;
      goto LABEL_42;
    }

    v19 = 0;
    v18 = 0;
    v11 = 0;
LABEL_41:
    v21 = v18 >= (v19 + 1) >> 1;
    LOWORD(v19) = v11;
    if (!v21)
    {
      goto LABEL_42;
    }

LABEL_44:
    v16 = *(a1 + 92);
    v15 = 1;
    v4 = 1;
    if (!v20)
    {
      goto LABEL_48;
    }

    goto LABEL_45;
  }

  v17 = 0;
  v18 = 0;
  do
  {
    v18 += *sub_10082DC28((a1 + 112), v17++);
    v19 = *(a1 + 114);
  }

  while (v17 < v19);
  v20 = *(a1 + 84);
  if ((v20 & 1) == 0)
  {
    v11 = *(a1 + 114);
    goto LABEL_41;
  }

  v20 = 1;
  v11 = *(a1 + 114);
  if (v18)
  {
    goto LABEL_44;
  }

LABEL_42:
  v15 = 0;
  v4 = 0;
  v16 = 1.0 - *(a1 + 92);
  v11 = v19;
  if ((v20 & 1) == 0)
  {
    goto LABEL_48;
  }

LABEL_45:
  v22 = sub_10082DC28((a1 + 112), v11 - 1);
  if (v15 && !*v22)
  {
    v23 = 0;
    goto LABEL_49;
  }

LABEL_48:
  v23 = v16 > *(a1 + 86);
LABEL_49:
  if (v15 && (*(a1 + 85) & 1) != 0)
  {
    if (*(a1 + 152) == 1)
    {
      sub_100457CE4((a1 + 152));
    }

    if (*(a1 + 156) <= *(a1 + 72))
    {
      v4 = 1;
    }

    else
    {
      v4 = 0;
      v23 = 1;
    }
  }

  v3 = v23 << 32;
  return v4 | v3;
}

float sub_10082D888(unsigned __int16 *a1)
{
  v2 = 0;
  v3 = 0;
  v4 = 0;
  v23 = 256;
  v20 = 1031798784;
  do
  {
    v5 = *sub_100457AE8(a1 + 538, v2);
    v6 = sub_100457AE8(a1 + 1062, v2);
    v7 = sqrtf((v5 * v5) + (*v6 * *v6));
    v8 = sub_100457AE8(a1 + 14, v2);
    v9 = atan2f(*v8, v7);
    v10 = v3 + v4;
    if (v10 >= 0x100)
    {
      v11 = 0x7FFFFFFFFFFFFE0CLL;
    }

    else
    {
      v11 = 12;
    }

    *&v17[2 * v10 + v11] = v9;
    if (v4 >= 0xFFu)
    {
      v12 = -256;
    }

    else
    {
      v12 = 0;
    }

    v13 = v4 + v12;
    if (v3 > 0xFF)
    {
      v4 = v13 + 1;
    }

    else
    {
      ++v3;
    }

    ++v2;
  }

  while (v2 != 256);
  v22 = v3;
  v21 = v4;
  LOBYTE(v17[0]) = 1;
  sub_100457CE4(v17);
  v14 = v19;
  if (v17[0])
  {
    sub_100457CE4(v17);
  }

  v15 = v18;
  if (v18 <= 0.0)
  {
    v15 = -v18;
  }

  return sqrtf(v14) / v15;
}

BOOL sub_10082D9FC(unsigned __int16 *a1)
{
  v2 = 0;
  v3 = 0;
  do
  {
    v4 = sub_100457AE8(a1 + 14, v2);
    v5 = *v4 * *v4;
    v6 = sub_100457AE8(a1 + 538, v2);
    v7 = v5 + (*v6 * *v6);
    v8 = sub_100457AE8(a1 + 1062, v2);
    if (sqrtf(v7 + (*v8 * *v8)) > 10.0)
    {
      ++v3;
    }

    ++v2;
  }

  while (v2 != 256);
  return v3 > 0xE6;
}

void sub_10082DA9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*(a2 + 8) == 100)
  {
    *(a1 + 91) = sub_10082D9FC(a2);
    v10 = *(a1 + 52);
    v11 = *(a1 + 56);
    v12 = *(a1 + 110);
    v13 = 0.0;
    v14 = 0.0;
    if (v10 <= v11)
    {
      v15 = (a4 + 4 * v10);
      v16 = (a6 + 4 * v10);
      do
      {
        v17 = *v16;
        if (v12 == 18)
        {
          v17 = v17 - *v15;
        }

        v14 = v14 + v17;
        ++v15;
        ++v10;
        ++v16;
      }

      while (v11 >= v10);
    }

    *(a1 + 96) = v14;
    v18 = *(a1 + 60);
    v19 = *(a1 + 64);
    if (v18 <= v19)
    {
      v20 = (a4 + 4 * v18);
      v21 = 0.0;
      v22 = (a6 + 4 * v18);
      do
      {
        v23 = *v22;
        if (v12 == 18)
        {
          v23 = v23 - *v20;
        }

        v21 = v21 + v23;
        ++v20;
        ++v18;
        ++v22;
      }

      while (v19 >= v18);
      v13 = v21 * 0.125;
    }

    *(a1 + 96) = v14 * 0.125;
    *(a1 + 100) = v13;
    *(a1 + 104) = sub_10082D888(a2);
  }
}

void sub_10082DBC8(void *a1)
{
  *a1 = off_102475AC0;
  sub_100C71B3C(a1);

  operator delete();
}

uint64_t sub_10082DC28(unsigned __int16 *a1, unint64_t a2)
{
  if (*(a1 + 1) <= a2)
  {
    if (qword_1025D48A0 != -1)
    {
      dispatch_once(&qword_1025D48A0, &stru_102475B20);
    }

    v7 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      v8 = *(a1 + 1);
      *buf = 134218240;
      v17 = a2;
      v18 = 1024;
      v19 = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreLocation/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", buf, 0x12u);
    }

    if (sub_10000A100(121, 0))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D48A0 != -1)
      {
        dispatch_once(&qword_1025D48A0, &stru_102475B20);
      }

      v9 = *(a1 + 1);
      v12 = 134218240;
      v13 = a2;
      v14 = 1024;
      v15 = v9;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 17, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreLocation/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", &v12, 18);
      v11 = v10;
      sub_100152C7C("Generic", 1, 0, 0, "const T &CMQueue<BOOL>::operator[](const size_t) const [T = BOOL]", "%s\n", v10);
      if (v11 != buf)
      {
        free(v11);
      }
    }
  }

  v4 = *a1 + a2;
  v5 = *(a1 + 1);
  if (v4 < v5)
  {
    v5 = 0;
  }

  return a1 + v4 - v5 + 8;
}

uint64_t sub_10082DE24(uint64_t a1, uint64_t a2, int a3, char a4, uint64_t a5)
{
  v5 = a5;
  v7 = a2;
  v9 = sub_10015EFE0(a1, a3);
  *v9 = off_102475B50;
  *(v9 + 200) = off_102475BB8;
  v10 = sub_100D0A5A8(v9 + 200, *(v9 + 8), v5);
  *a1 = off_102475B50;
  *(a1 + 200) = off_102475BB8;
  *(a1 + 274) = a4;
  *(a1 + 275) = 0;
  *(a1 + 280) = 0;
  v12 = sub_10098EAD4(v10, v11);
  v14 = sub_10098F674(v12, (a1 + 24));
  sub_100A61118(a1 + 288, &v14, (a1 + 16), v7);
  return a1;
}

uint64_t sub_10082DF30(void *a1, uint64_t a2)
{
  *a1 = off_102475B50;
  v3 = a1 + 25;
  a1[25] = off_102475BB8;
  sub_100D0A984((a1 + 25), a2);
  sub_100D0A640(v3, v4);
  sub_100D0A6AC(v3, v5);
  sub_100A611A8(a1 + 36);
  sub_100D0A5E8(v3, v6);

  return sub_10015AC4C(a1);
}

void sub_10082DFD8(void *a1, uint64_t a2)
{
  sub_10082DF30(a1, a2);

  operator delete();
}

void sub_10082E010(uint64_t a1, uint64_t a2)
{
  sub_10082DF30((a1 - 200), a2);

  operator delete();
}

uint64_t sub_10082E04C(uint64_t a1)
{
  sub_100A611EC(a1 + 288);
  if (*(a1 + 274) == 1)
  {
    sub_100D0A9C0(a1 + 200, *(a1 + 16));
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v5 = 0xBFF0000000000000;
    v4 = sub_1000137E0();
    sub_100A62AF4(a1 + 288, &v7, &v6, &v5, &v4);
  }

  sub_100D0A7CC(a1 + 200, *(a1 + 24));
  sub_100D0A8F4(a1 + 200, v2);
  v7 = 2;
  result = sub_10015E1D8(a1, &v7);
  *(a1 + 275) = 0;
  *(a1 + 280) = 0;
  return result;
}

void *sub_10082E0F4(uint64_t a1, uint64_t a2)
{
  sub_100D0A984(a1 + 200, a2);
  sub_100D0A640((a1 + 200), v3);

  return sub_100D0A6AC((a1 + 200), v4);
}

void sub_10082E138(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (qword_1025D42C0 != -1)
  {
    sub_10194D7A8();
  }

  v4 = qword_1025D42C8;
  if (os_log_type_enabled(qword_1025D42C8, OS_LOG_TYPE_INFO))
  {
    v5[0] = 67109120;
    v5[1] = v2;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "Application state changed, %d", v5, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10194D7BC(v2);
  }

  *(a1 + 275) = v2 ^ 1;
}

void sub_10082E220(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 304;
  v5 = *(a2 + 12);
  *v26 = *(a2 + 8);
  v24 = *(a2 + 16);
  *buf = v5;
  sub_100A61478(a1 + 288, v26, buf, &v24, a2);
  v6.f64[0] = *(a1 + 464);
  if (v6.f64[0] <= 0.0)
  {
    v7 = 0;
    v8 = 0.0;
  }

  else
  {
    sub_100A6223C(v26, v4);
    v6 = vsubq_f64(vcvtq_f64_f32(*(a1 + 472)), *v26);
    v7 = vcvt_f32_f64(v6);
    v6.f64[0] = *(a1 + 480) - *&v26[16];
    v8 = v6.f64[0];
  }

  v9 = *(a1 + 452);
  *&v26[16] = 0;
  *v26 = 0xBFF0000000000000;
  v10 = *(v4 + 140);
  sub_10011E648(&v26[8], v6);
  memset(&v26[24], 0, 36);
  __asm { FMOV            V0.2S, #-1.0 }

  *&v26[60] = _D0;
  v27 = 0;
  v28 = 0;
  v29 = 0x1FF00000000;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  *v26 = *a2;
  v16 = *(v4 + 16);
  *buf = vcvt_hight_f32_f64(vcvt_f32_f64(*v4), v16);
  sub_10011E648(buf, v16);
  *&v26[8] = *buf;
  *&v26[24] = v7;
  *&v26[32] = v8;
  *&v26[36] = v10;
  *&v26[44] = v9;
  WORD2(v29) = 511;
  *&v26[48] = xmmword_101C79550;
  *&v26[64] = -1082130432;
  v17 = HIWORD(v29) & 0xFFE7;
  if (*(a1 + 252))
  {
    v17 = HIWORD(v29) & 0xFFE7 | 0x10;
  }

  HIWORD(v29) = v17;
  if (sub_100A611E4(a1 + 288))
  {
    v18 = 256;
  }

  else
  {
    v18 = 0;
  }

  HIWORD(v29) = HIWORD(v29) & 0xFEFF | v18;
  v30 = 3;
  v32 = 0;
  v31 = *(a2 + 22);
  v19 = *a2;
  v20 = *(a1 + 280);
  if (v20 != 0.0)
  {
    v21 = v19 - v20;
    if (v19 - v20 > 0.100000001)
    {
      if (qword_1025D42C0 != -1)
      {
        sub_10194D8D0();
      }

      v22 = qword_1025D42C8;
      if (os_log_type_enabled(qword_1025D42C8, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        *&buf[4] = v21;
        _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_INFO, "Large time gap, %lf", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10194D8F8(v21);
      }

      if (*(a1 + 275) == 1)
      {
        if (qword_1025D42C0 != -1)
        {
          sub_10194D8D0();
        }

        v23 = qword_1025D42C8;
        if (os_log_type_enabled(qword_1025D42C8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEFAULT, "Reset while backgrounded", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_10194DA14();
        }

        sub_100A611EC(a1 + 288);
      }
    }
  }

  *(a1 + 280) = v19;
  sub_10015EB18(a1, v26);
}

void sub_10082E554(uint64_t a1, float *a2)
{
  v2 = a2[3];
  v5 = a2[2];
  v3 = a2[4];
  v4 = v2;
  sub_100A62AF4(a1 + 288, &v5, &v4, &v3, a2);
}

void sub_10082E5DC(uint64_t a1)
{
  if (qword_1025D4760 != -1)
  {
    sub_10194DB14();
  }

  v2 = qword_1025D4768;
  if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "Unregistering for ALS", v4, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10194DB28();
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    [v3 unregisterNotificationForKeys:&off_102554480];
    [*(a1 + 24) registerNotificationBlock:0];

    *(a1 + 24) = 0;
  }
}

void sub_10082E6A0(uint64_t a1)
{
  if (qword_1025D4760 != -1)
  {
    sub_10194DB14();
  }

  v2 = qword_1025D4768;
  if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 24) != 0;
    *buf = 67109120;
    v7 = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "Registering for ALS, hasExistingRegistration, %d", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10194DC2C(a1);
  }

  if (!*(a1 + 24))
  {
    v4 = objc_alloc_init(BrightnessSystemClient);
    *(a1 + 24) = v4;
    if (v4)
    {
      v5[0] = _NSConcreteStackBlock;
      v5[1] = 3221225472;
      v5[2] = sub_1000E681C;
      v5[3] = &unk_102468960;
      v5[4] = a1;
      [v4 registerNotificationBlock:v5 forProperties:&off_102554468];
      [*(a1 + 24) setProperty:kCFBooleanTrue forKey:@"ActivateALS"];
    }
  }
}

uint64_t *sub_10082E878(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_10082E8F4(a1, v2);
  }

  return a1;
}

void sub_10082E8F4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_10082E5DC(a2);

    operator delete();
  }
}

CFTypeRef sub_10082E954(int a1, char *name, uint64_t a3)
{
  v4 = IOServiceNameMatching(name);
  if (!v4)
  {
    return 0;
  }

  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v4);
  if (!MatchingService)
  {
    return 0;
  }

  v6 = MatchingService;
  CFProperty = IORegistryEntryCreateCFProperty(MatchingService, [NSString stringWithUTF8String:a3], kCFAllocatorDefault, 0);
  IOObjectRelease(v6);
  return CFProperty;
}

const void *sub_10082E9E0(int a1)
{
  v1 = sub_10082E954(a1, "compass", "compass-calibration");
  if (!v1)
  {
    if (qword_1025D42E0 != -1)
    {
      sub_10194DD4C();
    }

    v5 = qword_1025D42E8;
    if (os_log_type_enabled(qword_1025D42E8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "Invalid cpas data.", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10194DE44();
    }

    return 0;
  }

  v2 = v1;
  v3 = CFGetTypeID(v1);
  if (v3 != CFDataGetTypeID())
  {
    if (qword_1025D42E0 != -1)
    {
      sub_10194DD4C();
    }

    v4 = qword_1025D42E8;
    if (os_log_type_enabled(qword_1025D42E8, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "The cpas data is not a CFData type.", v7, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10194DD60();
    }

    CFRelease(v2);
    return 0;
  }

  return v2;
}

BOOL sub_10082EB28(int a1)
{
  v1 = sub_10082E9E0(a1);
  if (v1)
  {
    v2 = v1;
    BytePtr = CFDataGetBytePtr(v1);
    if (!BytePtr)
    {
      if (qword_1025D42E0 != -1)
      {
        sub_10194DD4C();
      }

      v14 = qword_1025D42E8;
      if (os_log_type_enabled(qword_1025D42E8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v34) = 0;
        _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEFAULT, "#Warning Cpas pointer is NULL.", &v34, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10194E50C();
      }

      goto LABEL_50;
    }

    v4 = BytePtr;
    Length = CFDataGetLength(v2);
    if (Length < 2)
    {
      goto LABEL_44;
    }

    v6 = Length;
    v7 = sub_1003CCBA8(v4);
    if (v7 == 5 && v6 == 76)
    {
      v15 = 5;
    }

    else
    {
      v9 = v7;
      if (v7 != 6 || v6 != 76)
      {
        if (qword_1025D42E0 != -1)
        {
          sub_10194DD4C();
        }

        v11 = qword_1025D42E8;
        if (os_log_type_enabled(qword_1025D42E8, OS_LOG_TYPE_FAULT))
        {
          v34 = 67109120;
          LODWORD(v35) = v9;
          _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "Unexpected cpas version: %u.", &v34, 8u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_10194DF28(v9);
        }

LABEL_50:
        v17 = 0;
LABEL_51:
        v13 = 0;
        v21 = v2;
        goto LABEL_52;
      }

      v15 = 8;
    }

    v16 = CFDataCreate(kCFAllocatorDefault, v4 + 2, v15);
    if (!v16)
    {
LABEL_44:
      if (qword_1025D42E0 != -1)
      {
        sub_10194DD4C();
      }

      v28 = qword_1025D42E8;
      if (os_log_type_enabled(qword_1025D42E8, OS_LOG_TYPE_FAULT))
      {
        LOWORD(v34) = 0;
        _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_FAULT, "Original serial number data is NULL.", &v34, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_10194E428();
      }

      goto LABEL_50;
    }

    v17 = v16;
    v18 = CFDataGetBytePtr(v16);
    if (!v18)
    {
      if (qword_1025D42E0 != -1)
      {
        sub_10194DD4C();
      }

      v31 = qword_1025D42E8;
      if (os_log_type_enabled(qword_1025D42E8, OS_LOG_TYPE_FAULT))
      {
        LOWORD(v34) = 0;
        _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_FAULT, "Original serial number pointer is NULL.", &v34, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_10194E344();
      }

      goto LABEL_51;
    }

    v19 = v18;
    v20 = sub_10082E954(v18, "AppleH4CamIn", "BackCameraSerialNumber");
    v21 = v20;
    if (v20)
    {
      v22 = CFGetTypeID(v20);
      if (v22 == CFDataGetTypeID())
      {
        if (CFDataGetLength(v21) == v15)
        {
          v23 = CFDataGetBytePtr(v21);
          if (v23)
          {
            if (*v19 == *v23)
            {
              v24 = 1;
              do
              {
                v25 = v24;
                if (v15 == v24)
                {
                  break;
                }

                v26 = v19[v24];
                v27 = v23[v24++];
              }

              while (v26 == v27);
              v13 = v25 >= v15;
LABEL_63:
              CFRelease(v2);
              if (!v21)
              {
LABEL_53:
                if (v17)
                {
                  CFRelease(v17);
                }

                return v13;
              }

LABEL_52:
              CFRelease(v21);
              goto LABEL_53;
            }

LABEL_62:
            v13 = 0;
            goto LABEL_63;
          }

          if (qword_1025D42E0 != -1)
          {
            sub_10194DD4C();
          }

          v33 = qword_1025D42E8;
          if (os_log_type_enabled(qword_1025D42E8, OS_LOG_TYPE_FAULT))
          {
            LOWORD(v34) = 0;
            _os_log_impl(dword_100000000, v33, OS_LOG_TYPE_FAULT, "Current serial number data is NULL.", &v34, 2u);
          }

          if (sub_10000A100(121, 0))
          {
            sub_10194E17C();
          }
        }

        else
        {
          if (qword_1025D42E0 != -1)
          {
            sub_10194DD4C();
          }

          v32 = qword_1025D42E8;
          if (os_log_type_enabled(qword_1025D42E8, OS_LOG_TYPE_FAULT))
          {
            v34 = 134218240;
            v35 = CFDataGetLength(v21);
            v36 = 2048;
            v37 = v15;
            _os_log_impl(dword_100000000, v32, OS_LOG_TYPE_FAULT, "Incorrect back camera serial number length. Actual length %ld. Expected length %lu.", &v34, 0x16u);
          }

          if (sub_10000A100(121, 0))
          {
            sub_10194E040(v21, v15);
          }
        }

        CFRelease(v2);
        v13 = 0;
        goto LABEL_52;
      }
    }

    if (qword_1025D42E0 != -1)
    {
      sub_10194DD4C();
    }

    v30 = qword_1025D42E8;
    if (os_log_type_enabled(qword_1025D42E8, OS_LOG_TYPE_FAULT))
    {
      LOWORD(v34) = 0;
      _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_FAULT, "Invalid back camera serial number data.", &v34, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10194E260();
    }

    goto LABEL_62;
  }

  if (qword_1025D42E0 != -1)
  {
    sub_10194DD4C();
  }

  v12 = qword_1025D42E8;
  if (os_log_type_enabled(qword_1025D42E8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v34) = 0;
    _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "#Warning Cpas data is NULL.", &v34, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10194E5F0();
  }

  return 0;
}

NSNumber *sub_10082F0CC(int a1)
{
  v1 = sub_10082E954(a1, "AppleH4CamIn", "BackCameraModuleFocusActuatorID");
  v2 = v1;
  valuePtr = -1;
  if (v1 && (v3 = CFGetTypeID(v1), v3 == CFNumberGetTypeID()))
  {
    if (CFNumberGetType(v2) == kCFNumberSInt32Type)
    {
      if (!CFNumberGetValue(v2, kCFNumberSInt32Type, &valuePtr))
      {
        valuePtr = -1;
      }
    }

    else
    {
      if (qword_1025D42E0 != -1)
      {
        sub_10194DD4C();
      }

      v5 = qword_1025D42E8;
      if (os_log_type_enabled(qword_1025D42E8, OS_LOG_TYPE_INFO))
      {
        *buf = 67109376;
        Type = CFNumberGetType(v2);
        v10 = 1024;
        v11 = 3;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "VCM actuator ID data type %d does not match expected type %d", buf, 0xEu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10194E6D4(v2);
      }
    }
  }

  else
  {
    if (qword_1025D42E0 != -1)
    {
      sub_10194DD4C();
    }

    v4 = qword_1025D42E8;
    if (os_log_type_enabled(qword_1025D42E8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "Bailing while checking VCM actuator ID.", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10194E808();
      if (!v2)
      {
        return 0;
      }
    }

    else if (!v2)
    {
      return 0;
    }
  }

  CFRelease(v2);
  if (valuePtr != -1)
  {
    return [NSNumber numberWithInt:?];
  }

  return 0;
}

id sub_10082F2C0(int a1)
{
  v1 = sub_10082E9E0(a1);
  if (v1)
  {
    v2 = v1;
    BytePtr = CFDataGetBytePtr(v1);
    if (BytePtr)
    {
      v4 = BytePtr;
      Length = CFDataGetLength(v2);
      if (Length >= 2)
      {
        v6 = Length;
        v7 = sub_1003CCBA8(v4);
        v8 = [(__CFData *)v2 mutableCopy];
        v9 = v8;
        if (v8)
        {
          if (v7 == 5 && v6 == 76)
          {
            v12 = 5;
          }

          else
          {
            if (v7 != 6 || v6 != 76)
            {
              goto LABEL_29;
            }

            v12 = 8;
          }

          [v8 resetBytesInRange:{2, v12}];
        }

LABEL_29:
        CFRelease(v2);
        return v9;
      }
    }

    else
    {
      if (qword_1025D42E0 != -1)
      {
        sub_10194DD4C();
      }

      v14 = qword_1025D42E8;
      if (os_log_type_enabled(qword_1025D42E8, OS_LOG_TYPE_DEFAULT))
      {
        v16[0] = 0;
        _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEFAULT, "#Warning CPAS pointer is NULL.", v16, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10194E8EC();
      }
    }

    v9 = 0;
    goto LABEL_29;
  }

  if (qword_1025D42E0 != -1)
  {
    sub_10194DD4C();
  }

  v13 = qword_1025D42E8;
  if (os_log_type_enabled(qword_1025D42E8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "#Warning CPAS data is NULL.", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10194E9D0();
  }

  return 0;
}

void sub_10082F4C0(uint64_t a1, void *a2, double a3, double a4)
{
  *a1 = off_102475C90;
  *(a1 + 8) = *a2;
  v4 = a2[1];
  *(a1 + 16) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0x4004000000000000;
  *(a1 + 64) = 0;
  if (!*a2)
  {
    if (qword_1025D4600 != -1)
    {
      sub_10194EAB4();
    }

    v5 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_ERROR, "LCOutputBuffer,invalid pointer to LCFusion", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10194EAC8(buf);
      LOWORD(v10) = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4608, 16, "LCOutputBuffer,invalid pointer to LCFusion", &v10, 2, *&a4, *&a3);
      v7 = v6;
      sub_100152C7C("Generic", 1, 0, 0, "CLLocationControllerOutputBuffer::CLLocationControllerOutputBuffer(std::shared_ptr<CLLocationControllerFusionBase>, std::shared_ptr<const CLProactiveInertialOdometryBuffer>, const double, const double)", "%s\n", v6);
      if (v7 != buf)
      {
        free(v7);
      }
    }
  }

  operator new();
}

void sub_10082FBB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v18 = v16[6];
  if (v18)
  {
    sub_100008080(v18);
  }

  v19 = v16[4];
  if (v19)
  {
    sub_100008080(v19);
  }

  v20 = v16[2];
  if (v20)
  {
    std::__shared_weak_count::__release_weak(v20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10082FC2C(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_1008313B4(a1, a2);
  }

  else
  {
    *v3 = off_1024DE5F8;
    v4 = *(a2 + 8);
    v5 = *(a2 + 24);
    v6 = *(a2 + 40);
    *(v3 + 56) = *(a2 + 56);
    *(v3 + 40) = v6;
    *(v3 + 24) = v5;
    *(v3 + 8) = v4;
    v7 = *(a2 + 72);
    v8 = *(a2 + 88);
    v9 = *(a2 + 104);
    *(v3 + 120) = *(a2 + 120);
    *(v3 + 104) = v9;
    *(v3 + 88) = v8;
    *(v3 + 72) = v7;
    *(v3 + 128) = *(a2 + 128);
    result = v3 + 144;
  }

  a1[1] = result;
  return result;
}

id sub_10082FCD0(double *a1, uint64_t a2, double a3)
{
  if (*(*(a1 + 5) + 68) <= 0)
  {
    if (qword_1025D4600 != -1)
    {
      sub_10194EAB4();
    }

    v13 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      *&buf[4] = a3;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_INFO, "LCOutputBuffer,getLocationExtendedTimestampAtCfatWithTolerance,%{public}.3f,buffer is empty", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10194F1F0();
    }

    return 0;
  }

  v5 = sub_10000B1F8(a1, a2);
  sub_10000AED4(v5, v51);
  v50 = 0.0;
  if ((sub_100125300(v51, &v50) & 1) == 0)
  {
    if (qword_1025D4600 != -1)
    {
      sub_10194EB0C();
    }

    v14 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_ERROR, "LCOutputBuffer,getLocationExtendedTimestampAtCfatWithTolerance,could not compute machContinuousToCFAbsoluteOffsetSec from local time", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10194F0EC();
    }

    return 0;
  }

  v6 = a3 - v50;
  (*(*a1 + 32))(&v40, a1, a3 - v50);
  if (!sub_100028030(&v40) || !BYTE8(v49))
  {
    sub_1008304E4(a1, buf, v6);
    v45 = *&buf[72];
    v46 = *&buf[88];
    v47 = *&buf[104];
    v48 = *&buf[120];
    v41 = *&buf[8];
    v42 = *&buf[24];
    v43 = *&buf[40];
    v44 = *&buf[56];
    v49 = *&buf[128];
    if (sub_100028030(&v40))
    {
      if (BYTE8(v49))
      {
        if (qword_1025D4600 != -1)
        {
          sub_10194EB0C();
        }

        v7 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
        {
          v8 = *(a1 + 7);
          *buf = 134350336;
          *&buf[4] = v41;
          *&buf[12] = 2050;
          *&buf[14] = a3;
          *&buf[22] = 2050;
          *&buf[24] = *(&v41 + 1);
          *&buf[32] = 2050;
          *&buf[34] = v6;
          *&buf[42] = 2050;
          *&buf[44] = vabdd_f64(*(&v41 + 1), v6);
          *&buf[52] = 2050;
          *&buf[54] = v8;
          _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_INFO, "LCOutputBuffer,getLocationExtendedTimestampAtCfatWithTolerance,found nearest CFAT %{public}.3f,requestedCfatSec,%{public}.3f,foundMctSec,%{public}.3f,anticipatedMctSec,%{public}.3f,diffMctSec,%{public}.3f,tolerance_sec,%{public}.3f", buf, 0x3Eu);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D4600 != -1)
          {
            sub_10194EB0C();
          }

          v26 = *(a1 + 7);
          *v52 = 134350336;
          *&v52[4] = v41;
          *&v52[12] = 2050;
          *&v52[14] = a3;
          *&v52[22] = 2050;
          *&v52[24] = *(&v41 + 1);
          *v53 = 2050;
          *&v53[2] = v6;
          *&v53[10] = 2050;
          *&v53[12] = vabdd_f64(*(&v41 + 1), v6);
          *&v53[20] = 2050;
          *&v53[22] = v26;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4608, 1, "LCOutputBuffer,getLocationExtendedTimestampAtCfatWithTolerance,found nearest CFAT %{public}.3f,requestedCfatSec,%{public}.3f,foundMctSec,%{public}.3f,anticipatedMctSec,%{public}.3f,diffMctSec,%{public}.3f,tolerance_sec,%{public}.3f", v52, 62);
          v28 = v27;
          sub_100152C7C("Generic", 1, 0, 2, "virtual CLLocationExtendedTimestamps *CLLocationControllerOutputBuffer::getLocationExtendedTimestampAtCfatWithTolerance(const CFAbsoluteTime) const", "%s\n", v27);
          if (v28 != buf)
          {
            free(v28);
          }
        }
      }
    }
  }

  v9 = sub_100028030(&v40);
  result = 0;
  if (v9 && BYTE8(v49))
  {
    v11 = vabdd_f64(*&v41, a3);
    if (v11 > a1[7])
    {
      if (qword_1025D4600 != -1)
      {
        sub_10194EB0C();
      }

      v12 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
      {
        *buf = 134349824;
        *&buf[4] = a3;
        *&buf[12] = 2050;
        *&buf[14] = v6;
        *&buf[22] = 2050;
        *&buf[24] = v41;
        *&buf[32] = 2050;
        *&buf[34] = v11;
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_INFO, "LCOutputBuffer,getLocationAtCfat,#Warning: the requested user CFAT %{public}.3f points to buffer MCT %{public}.3f with actual CFAT %{public}.3f,diff,%{public}.1f sec,yielding location anyway", buf, 0x2Au);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4600 != -1)
        {
          sub_10194EB0C();
        }

        *v52 = 134349824;
        *&v52[4] = a3;
        *&v52[12] = 2050;
        *&v52[14] = v6;
        *&v52[22] = 2050;
        *&v52[24] = v41;
        *v53 = 2050;
        *&v53[2] = v11;
        LODWORD(v29) = 42;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4608, 1, "LCOutputBuffer,getLocationAtCfat,#Warning: the requested user CFAT %{public}.3f points to buffer MCT %{public}.3f with actual CFAT %{public}.3f,diff,%{public}.1f sec,yielding location anyway", v52, v29);
        v25 = v24;
        sub_100152C7C("Generic", 1, 0, 2, "virtual CLLocationExtendedTimestamps *CLLocationControllerOutputBuffer::getLocationExtendedTimestampAtCfatWithTolerance(const CFAbsoluteTime) const", "%s\n", v24);
        if (v25 != buf)
        {
          free(v25);
        }
      }
    }

    if (BYTE8(v49) - 2 <= 2)
    {
      HIDWORD(v48) = 5;
    }

    v30 = off_1024DE5F8;
    v35 = v45;
    v36 = v46;
    v37 = v47;
    v38 = v48;
    v31 = v41;
    v32 = v42;
    v33 = v43;
    v34 = v44;
    v39 = v49;
    if (v6 >= *(&v41 + 1))
    {
      if (v6 <= *(&v41 + 1))
      {
LABEL_41:
        *&buf[12] = 0;
        *&buf[4] = 0;
        *&buf[20] = xmmword_101C75BF0;
        __asm { FMOV            V0.2D, #-1.0 }

        *&buf[36] = _Q0;
        *&buf[52] = _Q0;
        *&buf[68] = _Q0;
        *buf = 0xFFFF;
        *&buf[84] = 0;
        *&buf[88] = 0xBFF0000000000000;
        memset(&buf[96], 0, 20);
        *&buf[116] = 0xBFF0000000000000;
        *&buf[124] = 0x7FFFFFFF;
        memset(&buf[128], 0, 25);
        sub_10002790C(&v30, buf);
        v20 = [CLLocation alloc];
        v56 = *&buf[96];
        v57 = *&buf[112];
        v58[0] = *&buf[128];
        *(v58 + 12) = *&buf[140];
        *v53 = *&buf[32];
        *&v53[16] = *&buf[48];
        v54 = *&buf[64];
        v55 = *&buf[80];
        *v52 = *buf;
        *&v52[16] = *&buf[16];
        v21 = [v20 initWithClientLocation:v52];
        v22 = [CLLocationExtendedTimestamps alloc];
        v23 = [NSDate dateWithTimeIntervalSinceReferenceDate:*&v39];
        return [v22 initWithCLLocation:v21 systemTime:v23 machContinuousTimeSec:*(&v31 + 1)];
      }

      (*(*a1 + 32))(v52, a1, v6 + *(*(a1 + 5) + 8));
      sub_100830650(a1, &v40, v52, buf, v6);
    }

    else
    {
      (*(*a1 + 32))(v52, a1, v6 - *(*(a1 + 5) + 8));
      sub_100830650(a1, v52, &v40, buf, v6);
    }

    v35 = *&buf[72];
    v36 = *&buf[88];
    v37 = *&buf[104];
    v38 = *&buf[120];
    v31 = *&buf[8];
    v32 = *&buf[24];
    v33 = *&buf[40];
    v34 = *&buf[56];
    v39 = *&buf[128];
    goto LABEL_41;
  }

  return result;
}

uint64_t sub_1008304E4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 104) = 0u;
  *(a2 + 120) = 0u;
  *(a2 + 136) = 0;
  *(a2 + 24) = 0u;
  *a2 = off_1024DE5F8;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a2 + 40) = 0xBFF0000000000000;
  *(a2 + 56) = 0xBFF0000000000000;
  *(a2 + 72) = _Q0;
  *(a2 + 88) = _Q0;
  *(a2 + 104) = 0xBFF0000000000000;
  *(a2 + 116) = 0;
  *(a2 + 124) = 0;
  *(a2 + 140) = 7;
  *(a2 + 8) = _Q0;
  v8 = a2 + 8;
  *(a2 + 128) = 0xBFF0000000000000;
  v9 = (a2 + 128);
  v10 = *(result + 56);
  v11 = a3 - v10;
  v12 = v10 + a3;
  if (a3 - v10 <= v10 + a3)
  {
    v13 = result;
    result = *(result + 40);
    v14 = *(result + 8) * *(result + 64);
    v15 = a3 - v10;
    do
    {
      v16 = sub_1006A9A14(result, v15);
      if (sub_100028030(v16) && *(v16 + 136))
      {
        v17 = *(v16 + 16);
        v18 = v17 <= v11 || v17 > v12;
        v19 = vabdd_f64(v17, a3);
        if (!v18 && v19 < v14)
        {
          v21 = *(v16 + 8);
          v22 = *(v16 + 24);
          v23 = *(v16 + 56);
          *(v8 + 32) = *(v16 + 40);
          *(v8 + 48) = v23;
          *v8 = v21;
          *(v8 + 16) = v22;
          v24 = *(v16 + 72);
          v25 = *(v16 + 88);
          v26 = *(v16 + 104);
          *(v8 + 112) = *(v16 + 120);
          *(v8 + 80) = v25;
          *(v8 + 96) = v26;
          *(v8 + 64) = v24;
          *v9 = *(v16 + 128);
          v14 = v19;
        }
      }

      result = *(v13 + 40);
      v15 = v15 + *(result + 8);
    }

    while (v15 <= v12);
  }

  return result;
}

void sub_100830650(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v6 = a2;
  v9 = *(a1 + 56);
  *(a4 + 24) = 0u;
  v10 = (a4 + 24);
  *(a4 + 40) = 0u;
  *(a4 + 56) = 0u;
  *(a4 + 104) = 0u;
  *a4 = off_1024DE5F8;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a4 + 8) = _Q0;
  v16 = a4 + 8;
  *(a4 + 40) = 0xBFF0000000000000;
  *(a4 + 56) = 0xBFF0000000000000;
  *(a4 + 72) = _Q0;
  *(a4 + 88) = _Q0;
  *(a4 + 104) = 0xBFF0000000000000;
  *(a4 + 124) = 0;
  *(a4 + 116) = 0;
  *(a4 + 128) = 0xBFF0000000000000;
  v17 = (a4 + 128);
  *(a4 + 136) = 0;
  *(a4 + 140) = 7;
  if (sub_100028030(a2) && *(v6 + 136) || sub_100028030(a3) && *(a3 + 136))
  {
    v18 = 0;
    if (sub_100028030(v6) && *(v6 + 136))
    {
      v18 = sub_1012E9430(v6) && sub_1012E93FC(v6);
    }

    if (sub_100028030(a3) && *(a3 + 136) && sub_1012E9430(a3))
    {
      v20 = sub_1012E93FC(a3);
      if (v18 && v20)
      {
        if (a5 - *(v6 + 16) > *(a3 + 16) - a5)
        {
          v6 = a3;
        }

        goto LABEL_37;
      }

      if (v18)
      {
        v36 = v6;
      }

      else
      {
        v36 = a3;
      }

      if (v18 || v20)
      {
        v6 = v36;
        goto LABEL_37;
      }
    }

    else if (v18)
    {
LABEL_37:
      *(v16 + 112) = *(v6 + 120);
      v23 = *(v6 + 104);
      v24 = *(v6 + 72);
      *(v16 + 80) = *(v6 + 88);
      *(v16 + 96) = v23;
      v25 = *(v6 + 24);
      *v16 = *(v6 + 8);
      *(v16 + 16) = v25;
      v26 = *(v6 + 56);
      *(v16 + 32) = *(v6 + 40);
      *(v16 + 48) = v26;
      *(v16 + 64) = v24;
      *v17 = *(v6 + 128);
      v27 = a5 - *(a4 + 16);
      v28 = v27 > v9;
      if (v27 > v9)
      {
        v27 = v9;
      }

      v29 = v27 < -v9 || v28;
      if (v27 < -v9)
      {
        v27 = -v9;
      }

      *&v40 = v27;
      if (sub_1012E93FC(a4) && sub_1012E9430(a4))
      {
        v30 = *(a4 + 88);
        if (*&v40 < 0.0)
        {
          v30 = v30 + 180.0;
        }

        sub_1001D08A4(v30);
        v32 = v31;
        if ((atomic_load_explicit(&qword_10265A5D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_10265A5D8))
        {
          sub_10018D404(xmmword_10265A5B0);
          __cxa_guard_release(&qword_10265A5D8);
        }

        sub_100FE3EFC(xmmword_10265A5B0, v10, (a4 + 32), *(a4 + 24), *(a4 + 32), *(a4 + 48), fabs(*&v40), *(a4 + 72), v32);
        v33 = *(a4 + 80);
      }

      else
      {
        v33 = sub_100E621D4(*(a4 + 140));
      }

      *(a4 + 40) = sqrt(*(a4 + 40) * *(a4 + 40) + *&v40 * *&v40 * (v33 * v33));
      *(a4 + 128) = *&v40 + *(a4 + 128);
      *(a4 + 8) = vaddq_f64(vdupq_lane_s64(v40, 0), *(a4 + 8));
      if (v29)
      {
        if (qword_1025D4600 != -1)
        {
          sub_10194EAB4();
        }

        v34 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
        {
          v35 = *(a4 + 16);
          *buf = 134349568;
          v48 = a5;
          v49 = 2050;
          v50 = v9;
          v51 = 2050;
          v52 = v35;
          _os_log_impl(dword_100000000, v34, OS_LOG_TYPE_INFO, "LCOutputBuffer,propagateToMct,%{public}.3f,#Warning: propagation time exceeds max threshold of %{public}.1f sec,propagated to MCT %{public}.3f sec", buf, 0x20u);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D4600 != -1)
          {
            sub_10194EB0C();
          }

          v37 = *(a4 + 16);
          v41 = 134349568;
          v42 = a5;
          v43 = 2050;
          v44 = v9;
          v45 = 2050;
          v46 = v37;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4608, 1, "LCOutputBuffer,propagateToMct,%{public}.3f,#Warning: propagation time exceeds max threshold of %{public}.1f sec,propagated to MCT %{public}.3f sec", &v41, 32);
          v39 = v38;
          sub_100152C7C("Generic", 1, 0, 2, "CLLocationBufferBase::LCBufferLocation CLLocationControllerOutputBuffer::propagateLocationUsingNearestBin(const CLLocationBufferBase::LCBufferLocation &, const CFTimeInterval, const CLLocationBufferBase::LCBufferLocation &) const", "%s\n", v38);
          if (v39 != buf)
          {
            free(v39);
          }
        }
      }

      return;
    }

    if (sub_100028030(v6) && *(v6 + 136) && sub_100028030(a3) && *(a3 + 136))
    {
      if (*(v6 + 40) >= *(a3 + 40))
      {
        v6 = a3;
      }
    }

    else
    {
      v21 = sub_100028030(v6);
      if (*(v6 + 136))
      {
        v22 = v6;
      }

      else
      {
        v22 = a3;
      }

      if (v21)
      {
        v6 = v22;
      }

      else
      {
        v6 = a3;
      }
    }

    goto LABEL_37;
  }

  if (qword_1025D4600 != -1)
  {
    sub_10194EAB4();
  }

  v19 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_ERROR))
  {
    *buf = 134349056;
    v48 = a5;
    _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_ERROR, "LCOutputBuffer,propagateToMct,%{public}.3f,invalid input locations", buf, 0xCu);
  }

  if (sub_10000A100(121, 0))
  {
    sub_10194F2E8();
  }
}

id sub_100830BCC(void *a1, __n128 a2)
{
  v2 = a2.n128_f64[0];
  if (*(a1[5] + 68) <= 0)
  {
    if (qword_1025D4600 != -1)
    {
      sub_10194EAB4();
    }

    v8 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      *&buf[4] = v2;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "LCOutputBuffer,getLocationExtendedTimestampAtMctWithTolerance,%{public}.3f,buffer is empty", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10194F3EC();
    }

    return 0;
  }

  else
  {
    (*(*a1 + 32))(&v31, a2);
    if (!sub_100028030(&v31) || !BYTE8(v40))
    {
      sub_1008304E4(a1, buf, v2);
      v36 = *&buf[72];
      v37 = *&buf[88];
      v38 = *&buf[104];
      v39 = *&buf[120];
      v32 = *&buf[8];
      v33 = *&buf[24];
      v34 = *&buf[40];
      v35 = *&buf[56];
      v40 = *&buf[128];
      if (sub_100028030(&v31))
      {
        if (BYTE8(v40))
        {
          if (qword_1025D4600 != -1)
          {
            sub_10194EB0C();
          }

          v4 = qword_1025D4608;
          if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
          {
            v5 = a1[7];
            *buf = 134349824;
            *&buf[4] = *(&v32 + 1);
            *&buf[12] = 2050;
            *&buf[14] = v2;
            *&buf[22] = 2050;
            *&buf[24] = vabdd_f64(*(&v32 + 1), v2);
            *&buf[32] = 2050;
            *&buf[34] = v5;
            _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "LCOutputBuffer,getLocationExtendedTimestampAtMctWithTolerance,found nearest MCT %{public}.3f,requestedMctSec,%{public}.3f,diff,%{public}.3f,tolerance_sec,%{public}.3f", buf, 0x2Au);
          }

          if (sub_10000A100(121, 2))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1025D4600 != -1)
            {
              sub_10194EB0C();
            }

            v18 = a1[7];
            *v41 = 134349824;
            *&v41[4] = *(&v32 + 1);
            *&v41[12] = 2050;
            *&v41[14] = v2;
            *&v41[22] = 2050;
            *&v41[24] = vabdd_f64(*(&v32 + 1), v2);
            LOWORD(v42) = 2050;
            *(&v42 + 2) = v18;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4608, 1, "LCOutputBuffer,getLocationExtendedTimestampAtMctWithTolerance,found nearest MCT %{public}.3f,requestedMctSec,%{public}.3f,diff,%{public}.3f,tolerance_sec,%{public}.3f", v41, 42);
            v20 = v19;
            sub_100152C7C("Generic", 1, 0, 2, "virtual CLLocationExtendedTimestamps *CLLocationControllerOutputBuffer::getLocationExtendedTimestampAtMctWithTolerance(const double) const", "%s\n", v19);
            if (v20 != buf)
            {
              free(v20);
            }
          }
        }
      }
    }

    v6 = sub_100028030(&v31);
    result = 0;
    if (v6 && BYTE8(v40))
    {
      if (BYTE8(v40) - 2 <= 2)
      {
        HIDWORD(v39) = 5;
      }

      v21 = off_1024DE5F8;
      v26 = v36;
      v27 = v37;
      v28 = v38;
      v29 = v39;
      v22 = v32;
      v23 = v33;
      v24 = v34;
      v25 = v35;
      v30 = v40;
      if (*(&v32 + 1) <= v2)
      {
        if (*(&v32 + 1) >= v2)
        {
LABEL_27:
          *&buf[12] = 0;
          *&buf[4] = 0;
          *&buf[20] = xmmword_101C75BF0;
          __asm { FMOV            V0.2D, #-1.0 }

          *&buf[36] = _Q0;
          *&buf[52] = _Q0;
          *&buf[68] = _Q0;
          *buf = 0xFFFF;
          *&buf[84] = 0;
          *&buf[88] = 0xBFF0000000000000;
          memset(&buf[96], 0, 20);
          *&buf[116] = 0xBFF0000000000000;
          *&buf[124] = 0x7FFFFFFF;
          memset(&buf[128], 0, 25);
          sub_10002790C(&v21, buf);
          v14 = [CLLocation alloc];
          v46 = *&buf[96];
          v47 = *&buf[112];
          v48[0] = *&buf[128];
          *(v48 + 12) = *&buf[140];
          v42 = *&buf[32];
          v43 = *&buf[48];
          v44 = *&buf[64];
          v45 = *&buf[80];
          *v41 = *buf;
          *&v41[16] = *&buf[16];
          v15 = [v14 initWithClientLocation:v41];
          v16 = [CLLocationExtendedTimestamps alloc];
          v17 = [NSDate dateWithTimeIntervalSinceReferenceDate:*&v30];
          return [v16 initWithCLLocation:v15 systemTime:v17 machContinuousTimeSec:*(&v22 + 1)];
        }

        (*(*a1 + 32))(v41, a1, *(a1[5] + 8) + v2);
        sub_100830650(a1, &v31, v41, buf, v2);
      }

      else
      {
        (*(*a1 + 32))(v41, a1, v2 - *(a1[5] + 8));
        sub_100830650(a1, v41, &v31, buf, v2);
      }

      v26 = *&buf[72];
      v27 = *&buf[88];
      v28 = *&buf[104];
      v29 = *&buf[120];
      v22 = *&buf[8];
      v23 = *&buf[24];
      v24 = *&buf[40];
      v25 = *&buf[56];
      v30 = *&buf[128];
      goto LABEL_27;
    }
  }

  return result;
}

void sub_10083119C(uint64_t result, void *a2)
{
  if (*(result + 65) != a2)
  {
    *(result + 65) = a2;
    if (qword_1025D4600 != -1)
    {
      sub_10194EAB4();
    }

    v4 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT))
    {
      v5[0] = 67240192;
      v5[1] = a2;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "LCOutputBuffer,setting simulation mode,enabled,%{public}d", v5, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10194F7EC(a2);
      if (!a2)
      {
        return;
      }
    }

    else if (!a2)
    {
      return;
    }

    sub_1006A97E8(*(result + 40));
  }
}

void *sub_10083129C(void *a1)
{
  *a1 = off_102475C90;
  v2 = a1[6];
  if (v2)
  {
    sub_100008080(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    sub_100008080(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

void sub_100831300(void *a1)
{
  *a1 = off_102475C90;
  v2 = a1[6];
  if (v2)
  {
    sub_100008080(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    sub_100008080(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  operator delete();
}

uint64_t sub_1008313B4(uint64_t *a1, uint64_t a2)
{
  v2 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x1C71C71C71C71C7)
  {
    sub_10028C64C();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 4) >= 0xE38E38E38E38E3)
  {
    v6 = 0x1C71C71C71C71C7;
  }

  else
  {
    v6 = v3;
  }

  v20 = a1;
  if (v6)
  {
    sub_1001EBF28(a1, v6);
  }

  v7 = 144 * v2;
  __p = 0;
  v17 = v7;
  v19 = 0;
  *v7 = off_1024DE5F8;
  v8 = *(a2 + 72);
  v9 = *(a2 + 88);
  v10 = *(a2 + 104);
  *(v7 + 120) = *(a2 + 120);
  *(v7 + 104) = v10;
  *(v7 + 88) = v9;
  *(v7 + 72) = v8;
  v11 = *(a2 + 8);
  v12 = *(a2 + 24);
  v13 = *(a2 + 40);
  *(v7 + 56) = *(a2 + 56);
  *(v7 + 40) = v13;
  *(v7 + 24) = v12;
  *(v7 + 8) = v11;
  *(v7 + 128) = *(a2 + 128);
  v18 = 144 * v2 + 144;
  sub_1001EBF84(a1, &__p);
  v14 = a1[1];
  if (v18 != v17)
  {
    v18 = (v18 - v17 - 144) % 0x90uLL + v17;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v14;
}

void sub_100831554(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1008315CC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_102475D28;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_1008316AC(void *a1, double *a2, double *a3, char *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_102475D78;
  sub_100831788((a1 + 3), a2, a3, a4);
  return a1;
}

void sub_100831728(std::__shared_weak_count *a1)
{
  a1->__vftable = off_102475D78;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100831788(uint64_t a1, double *a2, double *a3, char *__s)
{
  v6 = *a2;
  v7 = *a3;
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100061080();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  v12 = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
  }

  *(&__dst + v9) = 0;
  sub_1006A997C(a1, &__dst, v6, v7);
  if (v12 < 0)
  {
    operator delete(__dst);
  }

  return a1;
}

void sub_10083187C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100831898(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }

  if (*(a1 + 39) < 0)
  {
    v3 = *(a1 + 16);

    operator delete(v3);
  }
}

uint64_t sub_100831DF0(uint64_t a1, void *a2, uint64_t a3)
{
  if (qword_1025D47A0 != -1)
  {
    sub_10194F920();
  }

  v6 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    *&buf[4] = [objc_msgSend(a2 "coarseMetadata")];
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "#compensation GeoLocation coarseMetaData: %@", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10194F934(a2);
  }

  v38 = 0;
  v7 = +[NSKeyedArchiver archivedDataWithRootObject:requiringSecureCoding:error:](NSKeyedArchiver, "archivedDataWithRootObject:requiringSecureCoding:error:", [a2 coarseMetadata], 1, &v38);
  if (v38)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10194F8F8();
    }

    v8 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *&buf[4] = v38;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_ERROR, "#compensation GeoLocation coarseMetaData encoding failed, error, %@", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10194FA60(&v38);
    }
  }

  __asm { FMOV            V0.2D, #-1.0 }

  *&buf[44] = _Q0;
  *&buf[60] = _Q0;
  *buf = 0xFFFF;
  *&buf[84] = 0;
  *&buf[88] = 0xBFF0000000000000;
  *&v47[20] = 0xBFF0000000000000;
  *v47 = 0;
  *&v47[28] = 0x7FFFFFFF;
  memset(v48, 0, 25);
  [objc_msgSend(a2 "latLng")];
  *&buf[4] = v14;
  [objc_msgSend(a2 "latLng")];
  *&buf[12] = v15;
  [objc_msgSend(a2 "latLng")];
  *&v47[4] = v16;
  [objc_msgSend(a2 "latLng")];
  *&v47[12] = v17;
  [a2 timestamp];
  *&buf[76] = v18;
  *&buf[28] = [a2 altitude];
  [a2 horizontalAccuracy];
  *&buf[20] = v19;
  [a2 verticalAccuracy];
  *&buf[36] = v20;
  v21 = [a2 referenceFrame];
  if (v21 <= 2)
  {
    *&v48[4] = v21;
  }

  [a2 speed];
  *&buf[44] = v22;
  [a2 course];
  if (v23 < 360.0)
  {
    [a2 course];
    if (v24 >= 0.0)
    {
      [a2 course];
      *&buf[60] = v25;
    }
  }

  sub_10018D404(v37);
  sub_1001097CC(v37, a1 + 48, buf);
  v27 = v26;
  if ([objc_msgSend(*(a1 + 32) "sourceInformation")])
  {
    v48[24] = 1;
  }

  if (qword_1025D47A0 != -1)
  {
    sub_10194F8F8();
  }

  v28 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    v29 = LocationLogEncryptionDataSize();
    v30 = LocationLogEncryptionEncryptData();
    v31 = LocationLogEncryptionDataSize();
    v32 = LocationLogEncryptionEncryptData();
    *v39 = 68290562;
    *&v39[4] = 0;
    *&v39[8] = 2082;
    *&v39[10] = "";
    *&v39[18] = 1040;
    *&v39[20] = v29;
    *&v39[24] = 2098;
    *&v39[26] = v30;
    *&v39[34] = 1040;
    *&v39[36] = v31;
    *&v39[40] = 2098;
    *&v39[42] = v32;
    *&v39[50] = 2050;
    *&v39[52] = v27;
    *&v39[60] = 2050;
    *&v39[62] = a3;
    _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Location #compensation Snapping, Input:%{public, location:Encrypted_CLClientLocation}.*P, Output:%{public, location:Encrypted_CLClientLocation}.*P, distance:%{public}f, GeoResultCode:%{public}ld}", v39, 0x46u);
  }

  v44[0] = @"Distance";
  v33 = [NSNumber numberWithDouble:v27];
  v44[1] = @"GeoResultCode";
  v45[0] = v33;
  v45[1] = [NSNumber numberWithInteger:a3];
  [NSDictionary dictionaryWithObjects:v45 forKeys:v44 count:2];
  AnalyticsSendEvent();
  v34 = *(a1 + 40);
  v35 = [CLLocation alloc];
  v41 = *v47;
  v42 = *&v47[16];
  v43[0] = *v48;
  *(v43 + 12) = *&v48[12];
  *&v39[32] = *&buf[32];
  *&v39[48] = *&buf[48];
  *&v39[64] = *&buf[64];
  v40 = *&buf[80];
  *v39 = *buf;
  *&v39[16] = *&buf[16];
  return (*(v34 + 16))(v34, [v35 initWithClientLocation:v39], ((a3 - 1) & 0xFFFFFFFFFFFFFFFDLL) == 0, v7);
}

uint64_t sub_1008327D8(_BYTE *a1, void *a2)
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
        LOBYTE(v26[0]) = 0;
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

        v7 |= (v26[0] & 0x7F) << v5;
        if ((v26[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
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

      v12 = (v11 >> 3);
      if (v12 <= 2)
      {
        if (v12 == 1)
        {
          a1[48] |= 1u;
          v26[0] = 0;
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

          v23 = v26[0];
          v24 = 8;
          goto LABEL_48;
        }

        if (v12 == 2)
        {
          a1[48] |= 2u;
          v26[0] = 0;
          v15 = [a2 position] + 8;
          if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 8, v16 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v23 = v26[0];
          v24 = 16;
          goto LABEL_48;
        }
      }

      else
      {
        switch(v12)
        {
          case 3u:
            a1[48] |= 4u;
            v26[0] = 0;
            v17 = [a2 position] + 8;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 8, v18 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            v23 = v26[0];
            v24 = 24;
            goto LABEL_48;
          case 4u:
            a1[48] |= 8u;
            v26[0] = 0;
            v19 = [a2 position] + 8;
            if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 8, v20 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            v23 = v26[0];
            v24 = 32;
LABEL_48:
            *&a1[v24] = v23;
            goto LABEL_49;
          case 5u:
            v13 = objc_alloc_init(TRANSITPbRegionPreloadTile);
            [a1 addTiles:v13];

            v26[0] = 0;
            v26[1] = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            result = sub_1004E5198(v13, a2);
            if (!result)
            {
              return result;
            }

            PBReaderRecallMark();
            goto LABEL_49;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_49:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

_OWORD *sub_1008336C4(_OWORD *a1, uint64_t a2)
{
  a1[1] = 0u;
  *a1 = 0u;
  sub_100833BFC((a1 + 2), a2);
  return a1;
}

void sub_100833704(_Unwind_Exception *a1)
{
  v4 = v1[3];
  v1[3] = 0;
  if (v4)
  {
    operator delete();
  }

  sub_10194FB80(v2, v1 + 1, v1);
  _Unwind_Resume(a1);
}

BOOL sub_100833744(uint64_t *a1, int a2)
{
  if (a2 > 1)
  {
    if (a2 == 3)
    {
      if (!a1[3])
      {
        operator new();
      }
    }

    else if (a2 == 2 && !a1[2])
    {
      operator new();
    }

    return *a1 || a1[1] || a1[2] || a1[3] != 0;
  }

  if (a2)
  {
    if (a2 == 1 && !a1[1])
    {
      operator new();
    }

    return *a1 || a1[1] || a1[2] || a1[3] != 0;
  }

  v2 = 1;
  if (!*a1)
  {
    operator new();
  }

  return v2;
}

BOOL sub_1008339A0(uint64_t *a1, int a2)
{
  if (a2 > 1)
  {
    if (a2 == 3)
    {
      v6 = a1[3];
      a1[3] = 0;
      if (v6)
      {
        goto LABEL_13;
      }
    }

    else if (a2 == 2)
    {
      v4 = a1[2];
      a1[2] = 0;
      if (v4)
      {
LABEL_13:
        operator delete();
      }
    }
  }

  else
  {
    if (!a2)
    {
      v5 = *a1;
      *a1 = 0;
      if (v5)
      {
        goto LABEL_13;
      }

      goto LABEL_15;
    }

    if (a2 == 1)
    {
      v3 = a1[1];
      a1[1] = 0;
      if (v3)
      {
        goto LABEL_13;
      }
    }
  }

  if (*a1)
  {
    return 1;
  }

LABEL_15:
  if (a1[1] || a1[2])
  {
    return 1;
  }

  return a1[3] != 0;
}

uint64_t sub_100833A88(int *a1, uint64_t a2)
{
  for (i = 0; ; ++i)
  {
    if (i <= 1)
    {
      if (i)
      {
        v8 = *(a1 + 1);
        if (v8 && sub_10050B0B0(v8, a2, a1 + 16, (a1 + 18), &v10))
        {
          v5 = a1 + 8;
          v6 = 1;
          goto LABEL_14;
        }
      }

      else if (*a1 && sub_100E0B5F8(*a1, a2, &v10))
      {
        v5 = a1 + 8;
        v6 = 0;
LABEL_14:
        sub_100833BA8(v5, v6);
        continue;
      }

      continue;
    }

    if (i != 2)
    {
      break;
    }

    v7 = *(a1 + 2);
    if (v7 && sub_1007EFE24(v7, a2, a1 + 16, &v10))
    {
      v5 = a1 + 8;
      v6 = 2;
      goto LABEL_14;
    }
  }

  result = *(a1 + 3);
  if (result)
  {
    result = sub_1007340BC(result, a2, &v10);
    if (result)
    {
      return sub_100833BA8((a1 + 8), 3);
    }
  }

  return result;
}

uint64_t sub_100833BA8(uint64_t a1, int a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_1000CF05C();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t sub_100833BFC(uint64_t a1, uint64_t a2)
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

void *sub_100833C94(void *a1)
{
  v1 = [a1 path];

  return sub_10023F024(v1);
}

id sub_100833CBC(void *a1)
{
  v2 = objc_alloc_init(NSMutableData);
  [v2 setLength:20];
  CC_SHA1([a1 bytes], objc_msgSend(a1, "length"), objc_msgSend(v2, "mutableBytes"));

  return v2;
}

uint64_t sub_100833D40(void *a1)
{
  v2 = open_dprotected_np([a1 UTF8String], 521, 2, 0, 416);
  if (v2 == -1)
  {
    if (qword_1025D47D0 != -1)
    {
      sub_10194FC20();
    }

    v3 = qword_1025D47D8;
    if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEFAULT))
    {
      v4 = __error();
      v5 = strerror(*v4);
      *buf = 68289539;
      v8 = 0;
      v9 = 2082;
      v10 = "";
      v11 = 2082;
      v12 = v5;
      v13 = 2113;
      v14 = a1;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Warning open failed, errno:%{public, location:escape_only}s, path:%{private, location:escape_only}@}", buf, 0x26u);
    }
  }

  return v2;
}

uint64_t sub_100833E60(void *a1)
{
  v2 = open([a1 UTF8String], 0);
  if (v2 == -1)
  {
    if (qword_1025D47D0 != -1)
    {
      sub_10194FC20();
    }

    v3 = qword_1025D47D8;
    if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEFAULT))
    {
      v4 = __error();
      v5 = strerror(*v4);
      v7[0] = 68289539;
      v7[1] = 0;
      v8 = 2082;
      v9 = "";
      v10 = 2082;
      v11 = v5;
      v12 = 2113;
      v13 = a1;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Warning open failed, errno:%{public, location:escape_only}s, path:%{private, location:escape_only}@}", v7, 0x26u);
    }
  }

  return v2;
}

BOOL sub_100833F70(void *a1, void *a2, int a3)
{
  v6 = sub_100833D40(a1);
  v7 = sub_100833E60(a2);
  if (v6 == -1 || (v8 = v7, v7 == -1))
  {
    if (qword_1025D47D0 != -1)
    {
      sub_10194FC20();
    }

    v14 = qword_1025D47D8;
    v10 = 0;
    if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289539;
      v19 = 0;
      v20 = 2082;
      v21 = "";
      v22 = 2113;
      v23 = a1;
      v24 = 2113;
      v25 = a2;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Warning failed to concatenate files, leading:%{private, location:escape_only}@, trailing:%{private, location:escape_only}@}", buf, 0x26u);
      return 0;
    }
  }

  else
  {
    v9 = [[NSData alloc] _cl_initWithFileDescriptor:v7];
    v10 = 1;
    v11 = [[NSFileHandle alloc] initWithFileDescriptor:v6 closeOnDealloc:1];
    [v11 writeData:v9];

    close(v8);
    if (a3 && [+[NSFileManager fileExistsAtPath:"fileExistsAtPath:"]
    {
      v17 = 0;
      [+[NSFileManager defaultManager](NSFileManager removeItemAtPath:"removeItemAtPath:error:" error:a2, &v17];
      if (v17)
      {
        if (qword_1025D47D0 != -1)
        {
          sub_10194FC34();
        }

        v12 = qword_1025D47D8;
        if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_ERROR))
        {
          *buf = 68289539;
          v19 = 0;
          v20 = 2082;
          v21 = "";
          v22 = 2113;
          v23 = a2;
          v24 = 2113;
          v25 = v17;
          _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:failed to remove fs item, path:%{private, location:escape_only}@, error:%{private, location:escape_only}@}", buf, 0x26u);
          if (qword_1025D47D0 != -1)
          {
            sub_10194FC34();
          }
        }

        v13 = qword_1025D47D8;
        if (os_signpost_enabled(qword_1025D47D8))
        {
          *buf = 68289539;
          v19 = 0;
          v20 = 2082;
          v21 = "";
          v22 = 2113;
          v23 = a2;
          v24 = 2113;
          v25 = v17;
          _os_signpost_emit_with_name_impl(dword_100000000, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "failed to remove fs item", "{msg%{public}.0s:failed to remove fs item, path:%{private, location:escape_only}@, error:%{private, location:escape_only}@}", buf, 0x26u);
        }
      }

      else
      {
        if (qword_1025D47D0 != -1)
        {
          sub_10194FC34();
        }

        v15 = qword_1025D47D8;
        if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 68289283;
          v19 = 0;
          v20 = 2082;
          v21 = "";
          v22 = 2113;
          v23 = a2;
          _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:removed fs item, path:%{private, location:escape_only}@}", buf, 0x1Cu);
        }
      }

      return v17 == 0;
    }
  }

  return v10;
}

uint64_t sub_100834300(uint64_t a1, uint64_t a2)
{
  if (qword_1025D4640 != -1)
  {
    sub_10194FC5C();
  }

  v3 = off_1025D4648;
  if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "Fence: CLFenceSettingsOta - Updating settings via OTA.", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10194FC70();
  }

  sub_100FBEBE8();
  sub_10004FD18();
  if (sub_100185ADC(a2, "Geofence", v27, 0xFFFFFFFFLL))
  {
    sub_10004FD18();
    if (sub_100185ADC(v27, "GeofenceClassifier", v26, 0xFFFFFFFFLL))
    {
      v24[0] = 0;
      if (sub_10001CB4C(v26, "usePreciseFencesForAll", v24, 0xFFFFFFFFLL))
      {
        byte_102630FA8 = v24[0];
      }

      if (sub_10001CB4C(v26, "usePreciseFencesForHelperFence", v24, 0xFFFFFFFFLL))
      {
        byte_102630FA9 = v24[0];
      }

      if (sub_10001CB4C(v26, "useVisitEventsForSignificationMonitoring", v24, 0xFFFFFFFFLL))
      {
        byte_102630FAA = v24[0];
      }

      *buf = 0;
      if (sub_1000B9370(v26, "fenceEffectiveMinimumRadiusHighAccuracy", buf))
      {
        qword_102630FB0 = *buf;
      }

      if (sub_1000B9370(v26, "fenceEffectiveMinimumRadiusHighAccuracyUrban", buf))
      {
        qword_102630FB8 = *buf;
      }

      if (sub_1000B9370(v26, "fenceEffectiveMinimumRadiusNormalAccuracy", buf))
      {
        qword_102630FC0 = *buf;
      }

      if (sub_1000B9370(v26, "helperFenceRadiusScaleFactor", buf))
      {
        qword_102630FC8 = *buf;
      }

      if (sub_1000B9370(v26, "maxRadiusForLocationType", buf))
      {
        qword_102630FD0 = *buf;
      }

      if (sub_1000B9370(v26, "maxRadiusForEnvironmentType", buf))
      {
        qword_102630FD8 = *buf;
      }

      if (sub_1000B9370(v26, "largeFenceExitRadiusOffset", buf))
      {
        qword_102630FE0 = *buf;
      }

      if (sub_1000B9370(v26, "largeFenceEntryRadiusOffset", buf))
      {
        qword_102630FE8 = *buf;
      }

      if (sub_1000B9370(v26, "unknownFineMediumFenceExitRadiusOffset", buf))
      {
        qword_102630FF0 = *buf;
      }

      if (sub_1000B9370(v26, "fineMediumFenceExitRadiusOffsetForCellWifiOn", buf))
      {
        qword_102630FF8 = *buf;
      }

      if (sub_1000B9370(v26, "fineMediumFenceExitRadiusOffsetForCellWifiOff", buf))
      {
        qword_102631000 = *buf;
      }

      if (sub_1000B9370(v26, "fineMediumFenceExitRadiusOffsetForLacWifiOn", buf))
      {
        qword_102631008 = *buf;
      }

      if (sub_1000B9370(v26, "fineMediumFenceExitRadiusOffsetForLacWifiOff", buf))
      {
        qword_102631010 = *buf;
      }

      if (sub_1000B9370(v26, "fineMediumFenceExitRadiusOffsetOnCoarse", buf))
      {
        qword_102631018 = *buf;
      }

      if (sub_1000B9370(v26, "fineMediumFenceEntryRadiusScaleFactorOnCoarse", buf))
      {
        qword_102631020 = *buf;
      }

      if (sub_1000B9370(v26, "fineMediumFenceExitRadiusOffsetWifi", buf))
      {
        qword_102631028 = *buf;
      }

      if (sub_1000B9370(v26, "fineMediumFenceGpsExitRadiusOffsetWifiOn", buf))
      {
        qword_102631030 = *buf;
      }

      if (sub_1000B9370(v26, "fineMediumFenceGpsExitRadiusOffsetWifiOff", buf))
      {
        qword_102631038 = *buf;
      }

      if (sub_1000B9370(v26, "fineMediumPreciseFenceGpsExitRadiusOffsetWifiOn", buf))
      {
        qword_102631040 = *buf;
      }

      if (sub_1000B9370(v26, "fineMediumPreciseFenceGpsExitRadiusOffsetWifiOff", buf))
      {
        qword_102631048 = *buf;
      }

      if (sub_1000B9370(v26, "fineMediumFenceExitAccurateLocationUncFactor", buf))
      {
        qword_102631050 = *buf;
      }

      if (sub_1000B9370(v26, "fineMediumFenceEntryAccurateLocationUncFactor", buf))
      {
        qword_102631058 = *buf;
      }

      if (sub_1000B9370(v26, "fineMediumFenceExitInaccurateLocationUncFactor", buf))
      {
        qword_102631060 = *buf;
      }

      if (sub_1000B9370(v26, "fineMediumFenceEntryInaccurateLocationUncFactor", buf))
      {
        qword_102631068 = *buf;
      }

      if (sub_1000B9370(v26, "loiFenceRadiusChangeThreshold", buf))
      {
        qword_102631070 = *buf;
      }

      if (sub_1000B9370(v26, "loiFenceDistanceChangeThreshold", buf))
      {
        qword_102631078 = *buf;
      }

      if (sub_1000B9370(v26, "locationSignificantChangeMinInterval", buf))
      {
        qword_102631080 = *buf;
      }

      if (sub_1000B9370(v26, "locationSignificantChangeMinDistance", buf))
      {
        qword_102631088 = *buf;
      }

      if (sub_1000B9370(v26, "locationSignificantChangeLowAccuracyThreshold", buf))
      {
        qword_102631090 = *buf;
      }

      if (sub_1000B9370(v26, "accurateLocationThreshold", buf))
      {
        qword_102631098 = *buf;
      }

      if (sub_1000B9370(v26, "accurateGpsLocationPaddingThreshold", buf))
      {
        qword_1026310A0 = *buf;
      }

      if (sub_1000B9370(v26, "gpsHAccMultiplicationFactor", buf))
      {
        qword_1026310A8 = *buf;
      }

      if (sub_1000B9370(v26, "pipelineHAccMultiplicationFactor", buf))
      {
        qword_1026310B0 = *buf;
      }

      if (sub_1000B9370(v26, "cellHAccMultiplicationFactor", buf))
      {
        qword_1026310B8 = *buf;
      }

      if (sub_1000B9370(v26, "locationSessionStartWindowSec", buf))
      {
        qword_1026310C0 = *buf;
      }

      if (sub_1000B9370(v26, "locationSessionIntervalFromLastLocationSec", buf))
      {
        qword_1026310C8 = *buf;
      }

      if (sub_1000B9370(v26, "minWifiUnc", buf))
      {
        qword_1026310D0 = *buf;
      }

      if (sub_1000B9370(v26, "minGpsUnc", buf))
      {
        qword_1026310D8 = *buf;
      }

      if (sub_1000B9370(v26, "maxHorizontalAccuracy", buf))
      {
        qword_1026310E0 = *buf;
      }

      if (sub_1000B9370(v26, "cellTypeMinimumHorizontalAccuracy", buf))
      {
        qword_1026310E8 = *buf;
      }

      if (sub_1000B9370(v26, "circularEmergencyFenceOffset", buf))
      {
        qword_1026310F0 = *buf;
      }

      if (sub_1000B9370(v26, "polygonalEntryLocationAccuracyThreshold", buf))
      {
        qword_102631100 = *buf;
      }

      if (sub_1000B9370(v26, "polygonalEntryLocationAccuracyScaleFactor", buf))
      {
        qword_102631108 = *buf;
      }

      if (sub_1000B9370(v26, "polygonalExitLocationAccuracyScaleFactor", buf))
      {
        qword_102631110 = *buf;
      }

      if (sub_1000B9370(v26, "polygonalExitHysteresisBuffer", buf))
      {
        qword_102631118 = *buf;
      }

      if (sub_10001CB4C(v26, "useMiLo", v24, 0xFFFFFFFFLL))
      {
        byte_102631120 = v24[0];
      }

      if (sub_10001CB4C(v26, "collectMiLoHomeLoiMetricsForInternalUsers", v24, 0xFFFFFFFFLL))
      {
        byte_102631121 = v24[0];
      }

      if (sub_10001CB4C(v26, "collectMiLoHomeLoiMetricsForAllUsers", v24, 0xFFFFFFFFLL))
      {
        byte_102631122 = v24[0];
      }

      if (sub_1000B9370(v26, "maxMiLoAge", buf))
      {
        qword_102631128 = *buf;
      }

      if (sub_1000B9370(v26, "homeLoiProbabilityThreshold", buf))
      {
        qword_102631130 = *buf;
      }

      if (sub_1000B9370(v26, "maxWaitTimeToReceiveMiLoEventUpdate", buf))
      {
        qword_102631138 = *buf;
      }

      if (sub_1000B9370(v26, "maxGpsHomeLoiExitTimeDiff", buf))
      {
        qword_102631140 = *buf;
      }

      if (sub_10001CB4C(v26, "collectGpsOpportunisticallyForMiLoMetrics", v24, 0xFFFFFFFFLL))
      {
        byte_102631148 = v24[0];
      }

      if (sub_10001CB4C(v26, "inflateGpsUncertaintyOnExitForSignalStrength", v24, 0xFFFFFFFFLL))
      {
        byte_102631149 = v24[0];
      }

      LODWORD(v25[0]) = 0;
      if (sub_10005BBE4(v26, "gnssConvergenceShortCount", v25))
      {
        dword_10263114C = v25[0];
      }

      if (sub_10005BBE4(v26, "gnssConvergenceLongCount", v25))
      {
        dword_102631150 = v25[0];
      }
    }

    else
    {
      if (qword_1025D4640 != -1)
      {
        sub_10194FD88();
      }

      v7 = off_1025D4648;
      if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "Fence: CLFenceSettingsOta - Geofence::GeofenceClassifier not available", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10194FDB0(buf);
        LOWORD(v25[0]) = 0;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D4648, 2, "Fence: CLFenceSettingsOta - Geofence::GeofenceClassifier not available", v25, 2);
        v13 = v12;
        sub_100152C7C("Generic", 1, 0, 2, "void CLFenceSettingsOta::updateSettings(const CLNameValuePair &)", "%s\n", v12);
        if (v13 != buf)
        {
          free(v13);
        }
      }
    }

    sub_10004FD18();
    if (sub_100185ADC(v27, "GeofenceEPNO", v25, 0xFFFFFFFFLL))
    {
      *v24 = 0;
      *buf = 0;
      v23[0] = 0;
      if (sub_1004FB7DC(v25, "numTiles", v24, 0xFFFFFFFFLL))
      {
        dword_102631158 = *v24;
      }

      if (sub_1000B9370(v25, "radiusFactorEntryThreshold", buf))
      {
        qword_102631160 = *buf;
      }

      if (sub_1000B9370(v25, "radiusFactor", buf))
      {
        qword_102631168 = *buf;
      }

      if (sub_1000B9370(v25, "maxRadius", buf))
      {
        qword_102631170 = *buf;
      }

      if (sub_1000B9370(v25, "minRadius", buf))
      {
        qword_102631178 = *buf;
      }

      if (sub_1000B9370(v25, "currentlySeenReachThreshold", buf))
      {
        qword_102631180 = *buf;
      }

      if (sub_10001CB4C(v25, "throttleEpnoWakes", v23, 0xFFFFFFFFLL))
      {
        byte_102631188 = v23[0];
      }
    }

    else
    {
      if (qword_1025D4640 != -1)
      {
        sub_10194FD88();
      }

      v8 = off_1025D4648;
      if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "Fence: CLFenceSettingsOta - Geofence::GeofenceEPNO not available", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10194FDB0(buf);
        *v24 = 0;
        LODWORD(v20) = 2;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D4648, 2, "Fence: CLFenceSettingsOta - Geofence::GeofenceEPNO not available", v24, v20);
        v15 = v14;
        sub_100152C7C("Generic", 1, 0, 2, "void CLFenceSettingsOta::updateSettings(const CLNameValuePair &)", "%s\n", v14);
        if (v15 != buf)
        {
          free(v15);
        }
      }
    }

    sub_10004FD18();
    if (sub_100185ADC(v27, "GeofenceGpsUncertaintyInflation", v24, 0xFFFFFFFFLL))
    {
      v21[0] = 0;
      if (sub_10001CB4C(v24, "inflateGpsLocationsIfSignalStrengthNotReported", v21, 0xFFFFFFFFLL))
      {
        byte_102631190 = v21[0];
      }

      *v23 = 0;
      if (sub_10005BBE4(v24, "minimumNumberOfTrackedSignalsStrong", v23))
      {
        dword_102631198 = *v23;
      }

      if (sub_10005BBE4(v24, "minimumNumberOfTrackedSignals", v23))
      {
        dword_102631194 = *v23;
      }

      *buf = 0;
      if (sub_1000B9370(v24, "signalStrengthStrong", buf))
      {
        qword_1026311A0 = *buf;
      }

      if (sub_1000B9370(v24, "horizontalAccuracyForWeakSignals", buf))
      {
        qword_1026311A8 = *buf;
      }
    }

    else
    {
      if (qword_1025D4640 != -1)
      {
        sub_10194FD88();
      }

      v9 = off_1025D4648;
      if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "Fence: CLFenceSettingsOta - Geofence::GeofenceGpsUncertaintyInflation not available", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10194FDB0(buf);
        *v23 = 0;
        LODWORD(v20) = 2;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D4648, 2, "Fence: CLFenceSettingsOta - Geofence::GeofenceGpsUncertaintyInflation not available", v23, v20);
        v17 = v16;
        sub_100152C7C("Generic", 1, 0, 2, "void CLFenceSettingsOta::updateSettings(const CLNameValuePair &)", "%s\n", v16);
        if (v17 != buf)
        {
          free(v17);
        }
      }
    }

    sub_10004FD18();
    if (sub_100185ADC(v27, "GeofenceFastEntry", v23, 0xFFFFFFFFLL))
    {
      v22 = 0;
      *buf = 0;
      *v21 = 0;
      if (sub_10001CB4C(v23, "enabled", &v22, 0xFFFFFFFFLL))
      {
        byte_1026311B0 = v22;
      }

      if (sub_1000B9370(v23, "convergenceTimerIntervalNearMax", buf))
      {
        qword_1026311B8 = *buf;
      }

      if (sub_1000B9370(v23, "convergenceTimerIntervalNearMin", buf))
      {
        qword_1026311C0 = *buf;
      }

      if (sub_1000B9370(v23, "convergenceTimerIntervalAdjacent", buf))
      {
        qword_1026311C8 = *buf;
      }

      if (sub_1000B9370(v23, "convergenceStateDistanceThresholdNear", buf))
      {
        qword_1026311D0 = *buf;
      }

      if (sub_1000B9370(v23, "convergenceStateDistanceThresholdAdjacent", buf))
      {
        qword_1026311D8 = *buf;
      }

      if (sub_10005BBE4(v23, "maximumLocationBufferSize", v21))
      {
        dword_1026311E0 = *v21;
      }

      if (sub_10005BBE4(v23, "converganceAttemptsPerWindow", v21))
      {
        dword_1026311E4 = *v21;
      }

      if (sub_1000B9370(v23, "convergenceBudgetWindow", buf))
      {
        qword_1026311E8 = *buf;
      }

      if (sub_1000B9370(v23, "convergenceAttemptMaxDuration", buf))
      {
        qword_1026311F0 = *buf;
      }

      if (sub_1000B9370(v23, "convergenceAttemptMaxGNSSDuration", buf))
      {
        qword_1026311F8 = *buf;
      }
    }

    else
    {
      if (qword_1025D4640 != -1)
      {
        sub_10194FD88();
      }

      v10 = off_1025D4648;
      if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "Fence: CLFenceSettingsOta - Geofence::GeofenceFastEntry not available", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10194FDB0(buf);
        *v21 = 0;
        LODWORD(v20) = 2;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D4648, 2, "Fence: CLFenceSettingsOta - Geofence::GeofenceFastEntry not available", v21, v20);
        v19 = v18;
        sub_100152C7C("Generic", 1, 0, 2, "void CLFenceSettingsOta::updateSettings(const CLNameValuePair &)", "%s\n", v18);
        if (v19 != buf)
        {
          free(v19);
        }
      }
    }

    sub_100005DA4();
    sub_100005DA4();
    sub_100005DA4();
    sub_100005DA4();
  }

  else
  {
    if (qword_1025D4640 != -1)
    {
      sub_10194FD88();
    }

    v4 = off_1025D4648;
    if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "Fence: CLFenceSettingsOta - Geofence not available", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10194FDB0(buf);
      LOWORD(v26[0]) = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D4648, 2, "Fence: CLFenceSettingsOta - Geofence not available", v26, 2);
      v6 = v5;
      sub_100152C7C("Generic", 1, 0, 2, "void CLFenceSettingsOta::updateSettings(const CLNameValuePair &)", "%s\n", v5);
      if (v6 != buf)
      {
        free(v6);
      }
    }
  }

  return sub_100005DA4();
}

void sub_1008357C4(_Unwind_Exception *a1)
{
  sub_100005DA4();
  sub_100005DA4();
  sub_100005DA4();
  sub_100005DA4();
  sub_100005DA4();
  _Unwind_Resume(a1);
}

void sub_100835A78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100835A90(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) hasChanges];
  if (result)
  {
    v3 = *(*(a1 + 32) + 8);
    v4 = *(*(a1 + 40) + 8) + 40;

    return [v3 save:v4];
  }

  return result;
}

void sub_100835BF4(void *a1)
{
  v2 = [[NSFetchRequest alloc] initWithEntityName:a1[4]];
  [v2 setPredicate:{+[NSCompoundPredicate andPredicateWithSubpredicates:](NSCompoundPredicate, "andPredicateWithSubpredicates:", a1[5])}];
  v3 = [[NSBatchDeleteRequest alloc] initWithFetchRequest:v2];
  [*(a1[6] + 8) executeRequest:v3 error:*(a1[7] + 8) + 40];
}

void sub_100835E2C(uint64_t a1)
{
  v2 = objc_alloc_init(NSFetchRequest);
  [v2 setEntity:{+[NSEntityDescription entityForName:inManagedObjectContext:](NSEntityDescription, "entityForName:inManagedObjectContext:", *(a1 + 32), *(*(a1 + 40) + 8))}];
  [v2 setPredicate:{+[NSCompoundPredicate andPredicateWithSubpredicates:](NSCompoundPredicate, "andPredicateWithSubpredicates:", *(a1 + 48))}];
  v3 = [*(*(a1 + 40) + 8) executeFetchRequest:v2 error:*(*(a1 + 56) + 8) + 40];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100835F18;
  v5[3] = &unk_102475EB8;
  v4 = *(a1 + 64);
  v6 = *(a1 + 32);
  v7 = v4;
  [v3 enumerateObjectsUsingBlock:v5];
}

id sub_100835F18(uint64_t a1, void *a2)
{
  v4 = [NSString stringWithFormat:@"managedObject of class %@ must respond to convert selector", NSClassFromString(*(a1 + 32))];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    sub_10194FE58(a1, v4);
  }

  result = [a2 performSelector:"convert"];
  if (result)
  {
    v6 = result;
    v7 = *(*(*(a1 + 48) + 8) + 40);

    return [v7 addObject:v6];
  }

  return result;
}

void sub_1008360F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 64), 8);
  _Unwind_Resume(a1);
}

id sub_10083611C(void *a1)
{
  v2 = [NSFetchRequest fetchRequestWithEntityName:a1[4]];
  [(NSFetchRequest *)v2 setPredicate:[NSCompoundPredicate andPredicateWithSubpredicates:a1[5]]];
  result = [*(a1[6] + 8) countForFetchRequest:v2 error:*(a1[8] + 8) + 40];
  *(*(a1[7] + 8) + 24) = result;
  return result;
}

void sub_1008362B4(id a1)
{
  v1 = objc_opt_class();
  if (v1)
  {
    v3 = sub_10001A3E8(v1, v2);
    v5 = sub_10071BCEC(v3, v4);
    if (v5)
    {
      v7 = sub_10001A3E8(v5, v6);
      if ((**v7)(v7))
      {
        byte_10265A600 = 1;
      }
    }
  }
}

void sub_1008369D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  operator delete();
}

id sub_100836A08(uint64_t a1)
{
  if (qword_1025D47B0 != -1)
  {
    sub_10194FF00();
  }

  v2 = qword_1025D47B8;
  if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_INFO))
  {
    v4[0] = 68289026;
    v4[1] = 0;
    v5 = 2082;
    v6 = "";
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Stop timer fired}", v4, 0x12u);
  }

  return [*(a1 + 32) stopLocation];
}

void sub_100836C04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  operator delete();
}

id sub_100836C34(uint64_t a1)
{
  if (qword_1025D47B0 != -1)
  {
    sub_10194FF00();
  }

  v2 = qword_1025D47B8;
  if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_INFO))
  {
    v4[0] = 68289026;
    v4[1] = 0;
    v5 = 2082;
    v6 = "";
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Motion alarm stop timer fired}", v4, 0x12u);
  }

  return [*(a1 + 32) stopMotionAlarm];
}

id sub_100836D18(uint64_t a1)
{
  if (qword_1025D47B0 != -1)
  {
    sub_10194FF00();
  }

  v2 = qword_1025D47B8;
  if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_INFO))
  {
    v4[0] = 68289026;
    v4[1] = 0;
    v5 = 2082;
    v6 = "";
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Repeating motion state}", v4, 0x12u);
  }

  return [*(a1 + 32) sendMotionState];
}

id sub_100836DEC(uint64_t a1)
{
  [*(a1 + 32) sendAliveAgainMessage];
  [objc_msgSend(*(a1 + 32) "aliveAgainThrottleTimer")];
  v2 = *(a1 + 32);

  return [v2 setAliveAgainThrottleTimer:0];
}

uint64_t *sub_100836F40(uint64_t **a1, uint64_t *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_100838FA4(result);

    operator delete();
  }

  return result;
}

void sub_1008384FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100008080(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100838EC8(uint64_t a1, __int128 *a2, void *a3, uint64_t a4, double a5)
{
  *a1 = 0;
  v9 = [a3 newTimer];
  *(a1 + 8) = v9;
  *(a1 + 16) = a5;
  if (*(a2 + 23) < 0)
  {
    sub_100007244((a1 + 24), *a2, *(a2 + 1));
    v9 = *(a1 + 8);
  }

  else
  {
    v10 = *a2;
    *(a1 + 40) = *(a2 + 2);
    *(a1 + 24) = v10;
  }

  [v9 setHandler:a4];
  return a1;
}

void sub_100838F50(_Unwind_Exception *exception_object)
{
  if (*(v1 + 47) < 0)
  {
    operator delete(v1[3]);
  }

  v3 = *v1;
  *v1 = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_100838FA4(uint64_t *a1)
{
  [a1[1] invalidate];

  if (*(a1 + 47) < 0)
  {
    operator delete(a1[3]);
  }

  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

double sub_10083901C()
{
  result = 30.0;
  qword_10265A610 = 0x403E000000000000;
  return result;
}

NSDictionary *sub_1008390A8(uint64_t a1)
{
  v5[0] = @"boutType";
  v6[0] = [NSNumber numberWithInt:*(*(a1 + 32) + 1)];
  v5[1] = @"duration";
  *&v2 = *(*(a1 + 32) + 2);
  v6[1] = [NSNumber numberWithFloat:v2];
  v5[2] = @"timeSinceLastBout";
  *&v3 = *(*(a1 + 32) + 10);
  v6[2] = [NSNumber numberWithFloat:v3];
  return [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:3];
}

uint64_t sub_100839180(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_100839318(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1008398E8;
  block[3] = &unk_102447418;
  block[4] = a1;
  if (qword_10265A628 != -1)
  {
    dispatch_once(&qword_10265A628, block);
  }

  return qword_1026372E8;
}

id sub_1008395B4(id *a1, uint64_t a2)
{
  *v16 = 0xFFFF;
  *&v16[4] = 0;
  *&v16[12] = 0;
  *&v16[20] = xmmword_101C75BF0;
  __asm { FMOV            V0.2D, #-1.0 }

  *&v16[36] = _Q0;
  *&v16[52] = _Q0;
  *&v16[68] = _Q0;
  v17 = 0uLL;
  *&v16[88] = 0xBFF0000000000000;
  *&v16[84] = 0;
  LODWORD(v18) = 0;
  *(&v18 + 4) = 0xBFF0000000000000;
  HIDWORD(v18) = 0x7FFFFFFF;
  memset(v19, 0, 25);
  if ((*(*a1 + 29))(a1, v16) && sub_100072814(v16) && (v9 = *&v16[20], *&v16[20] > 0.0))
  {
    if (qword_1025D47A0 != -1)
    {
      sub_1019500BC();
    }

    v10 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
    {
      v11 = LocationLogEncryptionDataSize();
      v12 = LocationLogEncryptionEncryptData();
      *buf = 68289538;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 1040;
      *&buf[20] = v11;
      *&buf[24] = 2098;
      *&buf[26] = v12;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#cclp passing cached location to reply, location:%{public, location:Encrypted_CLClientLocation}.*P}", buf, 0x22u);
    }

    v24 = v17;
    v25 = v18;
    v26[0] = *v19;
    *(v26 + 12) = *&v19[12];
    *&buf[32] = *&v16[32];
    v21 = *&v16[48];
    v22 = *&v16[64];
    v23 = *&v16[80];
    *buf = *v16;
    *&buf[16] = *&v16[16];
    return (*(a2 + 16))(a2, 1, buf);
  }

  else
  {
    v14 = [objc_msgSend(a1[4] vendor];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10083AC28;
    v15[3] = &unk_102476120;
    v15[4] = a2;
    v15[5] = a1;
    return [v14 fetchLocationWithReply:v15];
  }
}

uint64_t sub_100839824(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v3 = *(a1 + 32);
  v4 = a3[7];
  v16 = a3[6];
  v17 = v4;
  v18[0] = a3[8];
  *(v18 + 12) = *(a3 + 140);
  v5 = a3[3];
  v12 = a3[2];
  v13 = v5;
  v6 = a3[5];
  v14 = a3[4];
  v15 = v6;
  v7 = a3[1];
  v10 = *a3;
  v11 = v7;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10083BE04;
  v9[3] = &unk_10246A7A0;
  return (*(v3 + 16))(v3, a2, [v9 copy]);
}

void sub_100839958(uint64_t a1, void *a2)
{
  *sub_1006A597C(a1, "correctiveCompensated", a2) = off_102475FE0;
  v3 = [[CLSettingsMirror alloc] initInUniverse:*(a1 + 32)];
  *(a1 + 128) = 0;
  *(a1 + 120) = v3;
  *(a1 + 136) = 0;
  *(a1 + 144) = [objc_msgSend(*(a1 + 32) "silo")];
  *(a1 + 152) = [objc_msgSend(*(a1 + 32) "silo")];
  *(a1 + 160) = [objc_msgSend(*(a1 + 32) "silo")];
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 168) = _Q0;
  *(a1 + 184) = 0;
  *(a1 + 202) = 0;
  *(a1 + 208) = off_10245B020;
  operator new();
}

void sub_100839E4C(uint64_t a1)
{
  v2 = *(a1 + 168);
  [*(a1 + 120) doubleForKey:@"CCLP.CorrectiveCompensationInterval" defaultValue:900.0];
  *(a1 + 168) = v3;
  v4 = *(a1 + 176);
  [*(a1 + 120) doubleForKey:@"CCLP.ApparentCorrectiveCompensationInterval" defaultValue:1.79769313e308];
  *(a1 + 176) = v5;
  *(a1 + 184) = [*(a1 + 120) BOOLForKey:@"CCLP.CorrectiveCompensationClaimsOriginalAccuracy" defaultValue:0];
  *(a1 + 201) = [*(a1 + 120) BOOLForKey:@"CCLP.ClockAlignmentTestModeEnabled" defaultValue:0];
  *(a1 + 204) = [*(a1 + 120) BOOLForKey:@"CCLP.EnableClockAlignment" defaultValue:0];
  if (*(a1 + 201) == 1)
  {
    *(a1 + 168) = 0x405E000000000000;
  }

  if (qword_1025D47A0 != -1)
  {
    sub_1019500E4();
  }

  v6 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 168);
    v8 = *(a1 + 176);
    v9 = *(a1 + 184);
    v10 = *(a1 + 201);
    v11 = *(a1 + 204);
    v12 = 0x4088600000000000;
    if (*(a1 + 201))
    {
      v12 = 0x4059000000000000;
    }

    v13 = 0x4092C00000000000;
    if (*(a1 + 201))
    {
      v13 = 0x4064000000000000;
    }

    v20[0] = 68290818;
    v21 = 2082;
    v20[1] = 0;
    v22 = "";
    v23 = 2050;
    v24 = v7;
    v25 = 2050;
    v26 = v8;
    v27 = 1026;
    v28 = v9;
    v29 = 1026;
    v30 = v10;
    v31 = 1026;
    v32 = v11;
    v33 = 2050;
    v34 = v12;
    v35 = 2050;
    v36 = v13;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Update #compensation #settings for CCLP, CorrectiveCompensationInterval:%{public}f, ApparentCorrectiveCompensationInterval:%{public}f, CorrectiveCompensationClaimsOriginalAccuracy:%{public}hhd, ClockAlignmentTestModeEnabled:%{public}hhd, EnableClockAlignment:%{public}hhd, CorrectiveCompensationIntervalLowerBound:%{public}f, CorrectiveCompensationIntervalUpperBound:%{public}f}", v20, 0x4Cu);
  }

  if (*(a1 + 168) != v2)
  {
    [*(a1 + 144) nextFireDelay];
    if (v14 != 1.79769313e308)
    {
      if (qword_1025D47A0 != -1)
      {
        sub_1019500BC();
      }

      v15 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v20[0]) = 0;
        _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "#cclp CorrectiveCompensationInterval changed. Reset CompensationTimer.", v20, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1019500F8();
      }

      [*(a1 + 144) setNextFireDelay:0.0];
    }
  }

  v16 = *(a1 + 176);
  if (v16 != v4)
  {
    if (v16 > *(a1 + 168))
    {
      if (qword_1025D47A0 != -1)
      {
        sub_1019500BC();
      }

      v17 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v20[0]) = 0;
        _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEBUG, "#warning #cclp ApparentCorrectiveCompensationInterval greater than CorrectiveCompensationInterval", v20, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1019501DC();
      }

      *(a1 + 176) = 0x7FEFFFFFFFFFFFFFLL;
    }

    [*(a1 + 144) nextFireDelay];
    if (v18 != 1.79769313e308)
    {
      if (qword_1025D47A0 != -1)
      {
        sub_1019500BC();
      }

      v19 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v20[0]) = 0;
        _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEBUG, "#cclp ApparentCorrectiveCompensationInterval changed. Reset ApparentCompensationTimer.", v20, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1019502C0();
      }

      [*(a1 + 152) setNextFireDelay:0.0];
    }
  }
}

void sub_10083A1E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1019503A4();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLCorrectiveCompensatedLocationProvider::onSimulationNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1019503B8();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLCorrectiveCompensatedLocationProvider::onSimulationNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_10083B210(a4, v6, v7, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_10083A3B8(uint64_t a1)
{
  sub_100021AFC(v5);
  LODWORD(buf) = 0;
  if ((*(*a1 + 128))(a1, &buf, v5))
  {
    [*(a1 + 40) currentLatchedAbsoluteTimestamp];
    v6 = v2;
    v7 = *(a1 + 168) * 1.33333333;
    LODWORD(buf) = 0;
    sub_10001D7D0(a1, &buf, v5, 1, 0xFFFFFFFFLL, 0);
    v3 = *(a1 + 176);
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_1019500BC();
    }

    v4 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
    {
      buf = 68289026;
      v15 = 2082;
      v16 = "";
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#cclp ceasing apparent #compensation rate increase monitoring due to no cached message}", &buf, 0x12u);
    }

    v3 = 1.79769313e308;
  }

  [*(a1 + 152) setNextFireDelay:v3];

  if (v12)
  {
    sub_100008080(v12);
  }

  if (v11 < 0)
  {
    operator delete(__p);
  }

  if (v9)
  {
    sub_100008080(v9);
  }

  if (v8)
  {
    sub_100008080(v8);
  }
}

void sub_10083A59C(uint64_t a1)
{
  if (qword_1025D47A0 != -1)
  {
    sub_1019500E4();
  }

  v2 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289538;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 1040;
    *&buf[20] = LocationLogEncryptionDataSize();
    *&buf[24] = 2098;
    *&buf[26] = LocationLogEncryptionEncryptData();
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#cclp UpdateLastReceivedLocationTimer fired. Using location, location:%{public, location:Encrypted_CLClientLocation}.*P}", buf, 0x22u);
  }

  [*(a1 + 160) setNextFireDelay:1.79769313e308];
  if (sub_100072814(a1 + 240))
  {
    sub_100021AFC(buf);
    v3 = *(a1 + 352);
    v19 = *(a1 + 336);
    v20 = v3;
    v21[0] = *(a1 + 368);
    *(v21 + 12) = *(a1 + 380);
    v4 = *(a1 + 288);
    *&buf[32] = *(a1 + 272);
    v16 = v4;
    v5 = *(a1 + 320);
    v17 = *(a1 + 304);
    v18 = v5;
    v6 = *(a1 + 256);
    *buf = *(a1 + 240);
    *&buf[16] = v6;
    *(a1 + 240) = 0xFFFF;
    *(a1 + 244) = 0;
    *(a1 + 252) = 0;
    __asm { FMOV            V1.2D, #-1.0 }

    *(a1 + 260) = xmmword_101C75BF0;
    *(a1 + 276) = _Q1;
    *(a1 + 292) = _Q1;
    *(a1 + 308) = _Q1;
    *(a1 + 324) = 0;
    *(a1 + 352) = 0;
    *(a1 + 328) = 0xBFF0000000000000;
    *(a1 + 336) = 0;
    *(a1 + 344) = 0;
    *(a1 + 356) = 0xBFF0000000000000;
    *(a1 + 364) = 0x7FFFFFFF;
    *(a1 + 376) = 0;
    *(a1 + 384) = 0;
    *(a1 + 368) = 0;
    *(a1 + 392) = 0;
    v14 = 0;
    sub_100310748(a1, v12, &v14, buf);

    if (v26)
    {
      sub_100008080(v26);
    }

    if (v25 < 0)
    {
      operator delete(v24);
    }

    if (v23)
    {
      sub_100008080(v23);
    }

    if (v22)
    {
      sub_100008080(v22);
    }
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_1019500BC();
    }

    v13 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "#cclp #warning UpdateLastReceivedLocationTimer handler early return. LastReceivedLocation is invalid.", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019504F8();
    }
  }
}

void sub_10083A814(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    sub_10037EA9C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10083A840(uint64_t a1)
{
  [*(*(a1 + 136) + 16) unregister:*(*(a1 + 136) + 8) forNotification:12];
  [*(a1 + 160) invalidate];

  *(a1 + 160) = 0;
  [*(a1 + 152) invalidate];

  *(a1 + 152) = 0;
  [*(a1 + 144) invalidate];

  *(a1 + 144) = 0;
  [*(a1 + 120) invalidate];

  *(a1 + 120) = 0;
}

uint64_t sub_10083A8C0(uint64_t a1, unsigned int *a2)
{
  sub_1000F4588();
  [*(a1 + 144) nextFireDelay];
  if (v4 == 1.79769313e308)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_1019500E4();
    }

    v7 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      v8 = sub_100048D98(*a2);
      v10 = 68289282;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2082;
      v15 = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#cclp registering to FLC, notification:%{public, location:escape_only}s}", &v10, 0x1Cu);
    }

    [*(*(a1 + 128) + 16) register:*(*(a1 + 128) + 8) forNotification:*a2 registrationInfo:0];
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_1019500E4();
    }

    v5 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      v6 = sub_100048D98(*a2);
      v10 = 68289282;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2082;
      v15 = v6;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#cclp skip registering to FLC - timer locked(no need to source location from FLC), notification:%{public, location:escape_only}s}", &v10, 0x1Cu);
    }
  }

  return 1;
}

uint64_t sub_10083AA60(uint64_t a1, unsigned int *a2)
{
  sub_1001ECC7C(a1);
  [*(a1 + 144) nextFireDelay];
  if (v4 == 1.79769313e308)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_1019500E4();
    }

    v7 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      v8 = sub_100048D98(*a2);
      v10 = 68289282;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2082;
      v15 = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#cclp unregistering from FLC, notification:%{public, location:escape_only}s}", &v10, 0x1Cu);
    }

    (*(*a1 + 120))(a1, a2);
    [*(*(a1 + 128) + 16) unregister:*(*(a1 + 128) + 8) forNotification:*a2];
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_1019500E4();
    }

    v5 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      v6 = sub_100048D98(*a2);
      v10 = 68289282;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2082;
      v15 = v6;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#cclp skip unregistering from FLC - timer locked(will get unsubcribed after receiving snapped result), notification:%{public, location:escape_only}s}", &v10, 0x1Cu);
    }
  }

  return 1;
}

void sub_10083AC28(uint64_t a1, int a2, uint64_t a3)
{
  v5 = *(a1 + 40);
  (*(a3 + 16))(&v11, a3);
  if (a2 && sub_100072814(&v11) && *(&v12 + 4) >= 0.0)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_1019500BC();
    }

    v6 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
    {
      v7 = LocationLogEncryptionDataSize();
      v8 = LocationLogEncryptionEncryptData();
      *buf = 68289538;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 1040;
      *&buf[20] = v7;
      *&buf[24] = 2098;
      *&buf[26] = v8;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#cclp perform snapping on location by LC, location:%{public, location:Encrypted_CLClientLocation}.*P}", buf, 0x22u);
    }

    sub_100021AFC(buf);
    v24 = v17;
    v25 = v18;
    v26[0] = *v19;
    *(v26 + 12) = *&v19[12];
    *&buf[32] = v13;
    v21 = v14;
    v22 = v15;
    v23 = v16;
    *buf = v11;
    *&buf[16] = v12;
    sub_100310884(v5);

    if (v31)
    {
      sub_100008080(v31);
    }

    if (v30 < 0)
    {
      operator delete(__p);
    }

    if (v28)
    {
      sub_100008080(v28);
    }

    if (v27)
    {
      sub_100008080(v27);
    }
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_1019500BC();
    }

    v9 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_INFO, "#warning #cclp LocationController has no location", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019506E8();
    }

    v10 = *(a1 + 32);
    v24 = v17;
    v25 = v18;
    v26[0] = *v19;
    *(v26 + 12) = *&v19[12];
    *&buf[32] = v13;
    v21 = v14;
    v22 = v15;
    v23 = v16;
    *buf = v11;
    *&buf[16] = v12;
    (*(v10 + 16))();
  }
}

void sub_10083AEE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if (a2)
  {
    sub_10037EA9C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

double sub_10083AF10(uint64_t a1)
{
  v1 = *(a1 + 168);
  if (*(a1 + 204))
  {
    v3 = *(a1 + 201);
    if (v1 == 900.0 || (*(a1 + 201) & 1) != 0)
    {
      v6 = (v1 != 900.0) | v3;
      if ((v1 != 900.0) | v3 & 1)
      {
        v7 = 100.0;
      }

      else
      {
        v7 = 780.0;
      }

      [*(a1 + 40) currentLatchedAbsoluteTimestamp];
      v9 = v8;
      v10 = *(a1 + 168);
      v11 = v9 % v10;
      if (v11 <= (v1 - v7))
      {
        v14 = v10 - v11;
        if (v7 >= v14)
        {
          v1 = v7;
        }

        else
        {
          v1 = v14;
        }
      }

      else
      {
        v12 = 1200.0;
        if (v6)
        {
          v12 = 160.0;
        }

        v13 = -(v11 - v10 * 2.0);
        if (v13 >= v12)
        {
          v1 = v12;
        }

        else
        {
          v1 = v13;
        }
      }

      if (qword_1025D47A0 != -1)
      {
        sub_1019500E4();
      }

      v15 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 134217984;
        v18 = v1;
        _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEFAULT, "#cclp: next fire delay: %f", &v17, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101950FC8(v1);
      }
    }

    else
    {
      if (qword_1025D47A0 != -1)
      {
        sub_1019500E4();
      }

      v4 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
      {
        LOWORD(v17) = 0;
        _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "#cclp: Clock Alignment disabled. Either TestMode should be enabled or CompensationInterval should be 15m. Check #compensation #settings", &v17, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101950EE4();
      }
    }
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_1019500E4();
    }

    v5 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
    {
      LOWORD(v17) = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "#cclp: Clock Alignment disabled by default settings. Using default CC interval", &v17, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101950E00();
    }
  }

  return v1;
}

void sub_10083B188(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  [*(a1 + 144) nextFireDelay];
  if (v12 != 1.79769313e308)
  {
    sub_1019510E0();
  }

  sub_10001D7D0(a1, a2, a3, a4, a5, a6);
}

void sub_10083B210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_1025D47A0 != -1)
  {
    sub_1019500E4();
  }

  v6 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
  {
    if (*(a4 + 832))
    {
      v7 = "enabled";
    }

    else
    {
      v7 = "disabled";
    }

    v12 = 136315138;
    v13 = v7;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "#cclp Simulation %s", &v12, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101951274(a4);
  }

  [*(a1 + 144) nextFireDelay];
  if (v8 == 1.79769313e308 && (*(a1 + 203) & 1) == 0)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_1019500BC();
    }

    v11 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v12) = 0;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "#cclp CompensationTimer not scheduled and not subscribed to FLC", &v12, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10195138C();
    }
  }

  else
  {
    v9 = 4.0;
    if (*(a4 + 832))
    {
      v9 = 3.0;
    }

    [*(a1 + 160) setNextFireDelay:v9];
    [*(a1 + 144) nextFireDelay];
    if (v10 != 1.79769313e308)
    {
      *(a1 + 202) = *(a4 + 832);
      [*(a1 + 144) setNextFireDelay:0.0];
    }
  }
}

void sub_10083B3E8(uint64_t a1, void *a2, int a3, void *a4)
{
  v7 = *(a1 + 40);
  if (a2)
  {
    objc_msgSend_clientLocation(a2);
  }

  else
  {
    memset(v66, 0, 28);
    v65 = 0u;
    v64 = 0u;
    v63 = 0u;
    v62 = 0u;
    v61 = 0u;
    memset(buf, 0, sizeof(buf));
  }

  v55 = v64;
  v56 = v65;
  v57[0] = v66[0];
  *(v57 + 12) = *(v66 + 12);
  v52 = *&buf[32];
  v53 = v61;
  *v54 = v62;
  *&v54[16] = v63;
  v50 = *buf;
  v51 = *&buf[16];
  *(v7 + 200) = 0;
  [*(v7 + 40) currentLatchedAbsoluteTimestamp];
  v9 = v8;
  v10 = *(a1 + 124);
  v11 = *(v7 + 168);
  if (qword_1025D47A0 != -1)
  {
    sub_1019500BC();
  }

  v12 = vabdd_f64(v9, v10);
  v13 = v11 * 1.33333333;
  v14 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(a1 + 1616);
    v16 = LocationLogEncryptionDataSize();
    v17 = LocationLogEncryptionEncryptData();
    *buf = 68290562;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 1026;
    *&buf[20] = a3;
    *&buf[24] = 2050;
    *&buf[26] = v12;
    *&buf[34] = 1026;
    *&buf[36] = v12 < v13;
    *&buf[40] = 1026;
    *&buf[42] = v15;
    *&buf[46] = 1040;
    LODWORD(v61) = v16;
    WORD2(v61) = 2098;
    *(&v61 + 6) = v17;
    _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#cclp snapLocation reply, permanent:%{public}hhd, cacheAge:%{public}f, cacheAgeLessThanExtendedInterval:%{public}hhd, hasCachedLocation:%{public}hhd, location:%{public, location:Encrypted_CLClientLocation}.*P}", buf, 0x3Eu);
  }

  if ((a3 & 1) != 0 || *(a1 + 1616) != 1 || v12 >= v13)
  {
    LODWORD(v55) = 12;
    *&v54[24] = vabdd_f64(v9, *&v54[12]) + *(v7 + 168) * 1.33333333;
    if (*(v7 + 184) == 1)
    {
      *(&v51 + 4) = *(a1 + 1608);
    }

    sub_100021AFC(&v35);
    v41 = v55;
    v42 = v56;
    v43[0] = v57[0];
    *(v43 + 12) = *(v57 + 12);
    v37 = v52;
    v38 = v53;
    v39 = *v54;
    v40 = *&v54[16];
    v35 = v50;
    v36 = v51;
    if (a4)
    {
      if (qword_1025D47A0 != -1)
      {
        sub_1019500BC();
      }

      v18 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEBUG, "#cclp Encoded coarse meta data available", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1019509C4(buf);
        LOWORD(v58) = 0;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D47A8, 2, "#cclp Encoded coarse meta data available", &v58, 2, v35, v36, v37, v38, v39, v40, v41, v42, v43[0], v43[1]);
        v31 = v30;
        sub_100152C7C("Generic", 1, 0, 2, "void CLCorrectiveCompensatedLocationProvider::performLocationSnapping(const CLLocationProvider_Type::Notification &, const CLLocationProvider_Type::NotificationData &, void (^)(BOOL, CLDaemonLocation))_block_invoke", "%s\n", v30);
        if (v31 != buf)
        {
          free(v31);
        }
      }

      sub_10083BBE4(v49, a4);
    }

    if (*(a1 + 32))
    {
      if (qword_1025D47A0 != -1)
      {
        sub_1019500BC();
      }

      v19 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_INFO, "#cclp delivering compensated location to reply block", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1019509C4(buf);
        LOWORD(v58) = 0;
        LODWORD(v34) = 2;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D47A8, 1, "#cclp delivering compensated location to reply block", &v58, v34);
        v33 = v32;
        sub_100152C7C("Generic", 1, 0, 2, "void CLCorrectiveCompensatedLocationProvider::performLocationSnapping(const CLLocationProvider_Type::Notification &, const CLLocationProvider_Type::NotificationData &, void (^)(BOOL, CLDaemonLocation))_block_invoke", "%s\n", v32);
        if (v33 != buf)
        {
          free(v33);
        }
      }

      v20 = *(a1 + 32);
      v64 = v55;
      v65 = v56;
      v66[0] = v57[0];
      *(v66 + 12) = *(v57 + 12);
      *&buf[32] = v52;
      v61 = v53;
      v62 = *v54;
      v63 = *&v54[16];
      *&buf[16] = v51;
      *buf = v50;
      (*(v20 + 16))();
    }

    *buf = 0;
    (*(*v7 + 152))(v7, buf, &v35, 1, 0xFFFFFFFFLL, 0);
    [*(v7 + 152) setNextFireDelay:*(v7 + 176)];
    v21 = qword_1026372D0;
    v22 = qword_1026372D8;
    while (v21 != v22)
    {
      [*(*(v7 + 128) + 16) unregister:*(*(v7 + 128) + 8) forNotification:*v21++];
    }

    *(v7 + 203) = 0;
    if (*(v7 + 202))
    {
      *(v7 + 202) = 0;
      v23 = rand();
      v24 = *(v7 + 168);
      if (qword_1025D47A0 != -1)
      {
        sub_1019500BC();
      }

      v25 = vcvts_n_f32_s32(v23, 0x1FuLL) * v24 + 1.0;
      v26 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *&buf[4] = v25;
        _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_DEFAULT, "#cclp Simulation started. Random next fire delay: %f", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1019509C4(buf);
        v58 = 134217984;
        v59 = v25;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D47A8, 0, "#cclp Simulation started. Random next fire delay: %f", COERCE_DOUBLE(&v58));
        v28 = v27;
        sub_100152C7C("Generic", 1, 0, 2, "void CLCorrectiveCompensatedLocationProvider::performLocationSnapping(const CLLocationProvider_Type::Notification &, const CLLocationProvider_Type::NotificationData &, void (^)(BOOL, CLDaemonLocation))_block_invoke", "%s\n", v27);
        if (v28 != buf)
        {
          free(v28);
        }
      }
    }

    else
    {
      v25 = sub_10083AF10(v7);
    }

    [*(v7 + 144) setNextFireDelay:v25];

    if (v48)
    {
      sub_100008080(v48);
    }

    if (v47 < 0)
    {
      operator delete(__p);
    }

    if (v45)
    {
      sub_100008080(v45);
    }

    if (v44)
    {
      sub_100008080(v44);
    }
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_1019500BC();
    }

    v29 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_INFO, "#cclp snapLocation expecting a improved location", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101951470();
    }
  }
}

void sub_10083BB9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100311054(va);
  _Unwind_Resume(a1);
}

void sub_10083BBE4(void **a1, void *a2)
{
  v3 = a2;
  v4 = *a1;
  *a1 = v3;
}

__n128 sub_10083BE04@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 144);
  *(a2 + 96) = *(a1 + 128);
  *(a2 + 112) = v2;
  *(a2 + 128) = *(a1 + 160);
  *(a2 + 140) = *(a1 + 172);
  v3 = *(a1 + 80);
  *(a2 + 32) = *(a1 + 64);
  *(a2 + 48) = v3;
  v4 = *(a1 + 112);
  *(a2 + 64) = *(a1 + 96);
  *(a2 + 80) = v4;
  result = *(a1 + 32);
  v6 = *(a1 + 48);
  *a2 = result;
  *(a2 + 16) = v6;
  return result;
}

uint64_t sub_10083BE38()
{
  v1[0] = xmmword_101CB0DA8;
  v1[1] = unk_101CB0DB8;
  qword_1026372D8 = 0;
  unk_1026372E0 = 0;
  qword_1026372D0 = 0;
  sub_1004579D4(&qword_1026372D0, v1, &v2, 8uLL);
  return __cxa_atexit(sub_100839180, &qword_1026372D0, dword_100000000);
}

void sub_10083BF20(id a1)
{
  sub_10001A3E8(a1, v1);
  v2 = sub_10001CF3C();
  v10 = 1;
  if ((v2 & 1) == 0)
  {
    v4 = sub_10001A3E8(v2, v3);
    v6 = sub_1007194F0(v4, v5);
    if ((v6 & 1) == 0)
    {
      v8 = sub_10001A3E8(v6, v7);
      if ((sub_10003A088(v8, v9) & 2) != 0)
      {
        v10 = 0;
      }
    }
  }

  byte_10265A648 = v10;
}

uint64_t sub_10083C0D8(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10083C4CC;
  block[3] = &unk_102447418;
  block[4] = a1;
  if (qword_10265A668 != -1)
  {
    dispatch_once(&qword_10265A668, block);
  }

  return qword_1026372F0;
}

void sub_10083C3B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  operator delete();
}

uint64_t sub_10083C3E8(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t a5, uint64_t a6)
{
  *a1 = off_1024764C8;
  *(a1 + 8) = [[CLNotifierClientAdapter alloc] initWithClient:a1];
  *(a1 + 24) = a5;
  *(a1 + 32) = a6;
  if (*(a3 + 23) >= 0)
  {
    v12 = a3;
  }

  else
  {
    v12 = *a3;
  }

  v13 = [objc_msgSend(a4 "vendor")];
  *(a1 + 16) = v13;
  v14 = v13;
  if (a2)
  {
    [*(a1 + 16) setDelegateEntityName:a2];
  }

  [*(a1 + 16) registerDelegate:*(a1 + 8) inSilo:{objc_msgSend(a4, "silo")}];
  return a1;
}

void sub_10083C53C(uint64_t a1, void *a2)
{
  *a1 = off_102476470;
  sub_10083CB04(a1 + 8, "CachedLocationController", a2);
  *a1 = off_102476288;
  *(a1 + 8) = off_1024762E0;
  sub_100D9D2B4((a1 + 120), "Traffic", *(a1 + 40));
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 312) = 0;
  *(a1 + 344) = 0;
  *(a1 + 352) = 0x4072C00000000000;
  *(a1 + 360) = 0;
  sub_100A2E128((a1 + 368), *(a1 + 40));
  sub_101332BB4((a1 + 552), *(a1 + 40));
  sub_100ED3918(a1 + 568, a1 + 552);
  *(a1 + 792) = [objc_msgSend(*(a1 + 40) "vendor")];
  v4 = [*(a1 + 48) newTimer];
  *(a1 + 336) = v4;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10083CBB0;
  v6[3] = &unk_102449A78;
  v6[4] = a1;
  [v4 setHandler:v6];
  v5 = [[CLRouteListener alloc] initInUniverse:a2 withDelegate:a1];
  *(a1 + 544) = v5;
  [v5 enable];
  sub_1007A98FC();
}

void sub_10083CA08(_Unwind_Exception *a1)
{
  sub_100A2E174((v1 + 46));
  v4 = v1[41];
  v1[41] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = v1[40];
  v1[40] = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = v1[39];
  v1[39] = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  sub_100B55830((v1 + 15));
  sub_10083CC64(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_10083CB04(uint64_t a1, char *a2, void *a3)
{
  *a1 = off_1024764F0;
  sub_10000EC00((a1 + 8), a2);
  *(a1 + 32) = a3;
  *(a1 + 40) = [a3 silo];
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  *(a1 + 56) = a1 + 64;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = a1 + 88;
  *(a1 + 104) = 0;
  *(a1 + 108) = 0;
  return a1;
}

void sub_10083CB94(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_10083CBB8(double *a1)
{
  if (qword_1025D4600 != -1)
  {
    sub_101951784();
  }

  v2 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "CLC: Debounce timer fired, stopping", v3, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101951798();
  }

  sub_1000DFEFC(a1, 0, 1.79769313e308);
}

uint64_t sub_10083CC64(uint64_t a1)
{
  *a1 = off_1024764F0;
  [*(a1 + 48) invalidate];

  sub_10018F070(a1 + 80, *(a1 + 88));
  sub_10047BD74(a1 + 56, *(a1 + 64));
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void *sub_10083CCE8(void *a1)
{
  *a1 = off_102476288;
  v2 = a1 + 1;
  a1[1] = off_1024762E0;
  sub_10083CE78(a1);
  sub_100A2E174((a1 + 46));
  v3 = a1[41];
  a1[41] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[40];
  a1[40] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = a1[39];
  a1[39] = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  sub_100B55830((a1 + 15));
  sub_10083CC64(v2);
  return a1;
}

void sub_10083CE04(void *a1)
{
  sub_10083CCE8(a1);

  operator delete();
}

void sub_10083CE3C(uint64_t a1)
{
  sub_10083CCE8((a1 - 8));

  operator delete();
}

void sub_10083CE78(uint64_t a1)
{
  sub_1000DFEFC(a1, 0, 1.79769313e308);
  [*(a1 + 336) invalidate];

  *(a1 + 336) = 0;
  *(a1 + 352) = 0x4072C00000000000;
  [*(*(a1 + 312) + 16) unregister:*(*(a1 + 312) + 8) forNotification:4];
  [*(*(a1 + 312) + 16) unregister:*(*(a1 + 312) + 8) forNotification:13];
  [*(*(a1 + 320) + 16) unregister:*(*(a1 + 320) + 8) forNotification:4];
  [*(*(a1 + 320) + 16) unregister:*(*(a1 + 320) + 8) forNotification:2];
  [*(*(a1 + 328) + 16) unregister:*(*(a1 + 328) + 8) forNotification:4];
  [*(*(a1 + 328) + 16) unregister:*(*(a1 + 328) + 8) forNotification:1];
  [*(a1 + 544) disable];

  *(a1 + 544) = 0;
  *(a1 + 792) = 0;
}

void *sub_10083D068@<X0>(int a1@<W1>, void *a2@<X8>)
{
  if (a1)
  {
    if (a1 != 1)
    {
      if (qword_1025D4600 != -1)
      {
        sub_101951784();
      }

      v4 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_FAULT))
      {
        *buf = 68289539;
        v8 = 0;
        v9 = 2082;
        v10 = "";
        v11 = 2082;
        v12 = "assert";
        v13 = 2081;
        v14 = "false";
        _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:CLC: Unknown CLCachedLocationController::CachedLocationState value, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        if (qword_1025D4600 != -1)
        {
          goto LABEL_18;
        }
      }

      while (1)
      {
        v5 = qword_1025D4608;
        if (os_signpost_enabled(qword_1025D4608))
        {
          *buf = 68289539;
          v8 = 0;
          v9 = 2082;
          v10 = "";
          v11 = 2082;
          v12 = "assert";
          v13 = 2081;
          v14 = "false";
          _os_signpost_emit_with_name_impl(dword_100000000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CLC: Unknown CLCachedLocationController::CachedLocationState value", "{msg%{public}.0s:CLC: Unknown CLCachedLocationController::CachedLocationState value, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
          if (qword_1025D4600 != -1)
          {
            sub_101951718();
          }
        }

        v6 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
        {
          *buf = 68289539;
          v8 = 0;
          v9 = 2082;
          v10 = "";
          v11 = 2082;
          v12 = "assert";
          v13 = 2081;
          v14 = "false";
          _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "{msg%{public}.0s:CLC: Unknown CLCachedLocationController::CachedLocationState value, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        }

        abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Positioning/Transit/CLCachedLocationController.mm", 162, "stateToString");
LABEL_18:
        sub_101951718();
      }
    }

    v2 = "Active";
  }

  else
  {
    v2 = "Off";
  }

  return sub_10000EC00(a2, v2);
}

void sub_10083D2C8(double *a1, double a2)
{
  if (qword_1025D4600 != -1)
  {
    sub_101951784();
  }

  v4 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "CLC: Received start route", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019519F4();
  }

  v5 = a2 * 1.5;
  if (a2 * 1.5 < a2 + 600.0)
  {
    v5 = a2 + 600.0;
  }

  sub_1000DFEFC(a1, 1, v5);
  sub_1000E04E8(a1, 1);
  *buf = 0xFFFF;
  v14 = 0;
  v13 = 0;
  v15 = xmmword_101C75BF0;
  __asm { FMOV            V0.2D, #-1.0 }

  v16 = _Q0;
  v17 = _Q0;
  v18 = _Q0;
  v19 = 0;
  v21 = 0;
  v22 = 0;
  v20 = 0xBFF0000000000000;
  v23 = 0;
  v24 = 0xBFF0000000000000;
  v25 = 0x7FFFFFFF;
  v27 = 0;
  v28 = 0;
  v26 = 0;
  v29 = 0;
  Current = CFAbsoluteTimeGetCurrent();
  sub_100ED391C(a1 + 71, buf, &Current);
}

id sub_10083D410(uint64_t a1, uint64_t a2)
{
  v3 = [objc_msgSend(*(a1 + 40) "vendor")];

  return [v3 syncSetNavigationStateChange:a2];
}

void sub_10083D458(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (qword_1025D4600 != -1)
  {
    sub_101951784();
  }

  v4 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 360);
    v8[0] = 67240448;
    v8[1] = v2;
    v9 = 1026;
    v10 = v5;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "CLC: Suspend for exception, %{public}#x, oldExceptions %{public}#x", v8, 0xEu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101951FBC();
  }

  v6 = *(a1 + 360);
  if (v6)
  {
    *(a1 + 360) = v6 | v2;
  }

  else
  {
    if (qword_1025D4600 != -1)
    {
      sub_101951718();
    }

    v7 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
    {
      LOWORD(v8[0]) = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_INFO, "CLC: Suspend", v8, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019520CC();
    }

    *(a1 + 360) |= v2;
    sub_1000DFEFC(a1, 0, 1.79769313e308);
    [*(a1 + 544) disable];
  }
}

void sub_10083D5F8(uint64_t result, uint64_t a2)
{
  v9 = a2;
  if ((*(result + 108) & 1) == 0)
  {
    v4 = *(result + 88);
    if (!v4)
    {
      goto LABEL_9;
    }

    v5 = result + 80;
    v6 = result + 88;
    do
    {
      if (*(v4 + 32) >= a2)
      {
        v6 = v4;
      }

      v4 = *(v4 + 8 * (*(v4 + 32) < a2));
    }

    while (v4);
    if (v6 != result + 88 && *(v6 + 32) <= a2)
    {
      while (*(v6 + 56))
      {
        *buf = *(*(v6 + 40) + 28);
        (*(*result + 112))(result, a2, buf);
      }

      sub_1001132D0(v5, &v9);
    }

    else
    {
LABEL_9:
      if (qword_1025D47F0 != -1)
      {
        sub_101951884();
      }

      v7 = qword_1025D47F8;
      if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
      {
        v8 = (result + 8);
        if (*(result + 31) < 0)
        {
          v8 = *v8;
        }

        *buf = 136446466;
        v11 = v8;
        v12 = 1026;
        v13 = a2;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "%{public}s; client %{public}d does not exist", buf, 0x12u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1019525AC();
      }
    }
  }
}

uint64_t sub_10083D79C(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v7 = sub_100109F14(a4);
  if (v7)
  {
    v10 = a3;
    return (*(*a1 + 96))(a1, a2, &v10, v7);
  }

  else
  {
    v9 = a3;
    return (*(*a1 + 88))(a1, a2, &v9);
  }
}

uint64_t sub_10083D954(uint64_t a1, uint64_t a2, int *a3, char *a4)
{
  v32 = a2;
  if (*(a1 + 108))
  {
    return 0;
  }

  v5 = a2;
  v7 = *(a1 + 88);
  if (v7)
  {
    v10 = a1 + 88;
    do
    {
      if (*(v7 + 32) >= a2)
      {
        v10 = v7;
      }

      v7 = *(v7 + 8 * (*(v7 + 32) < a2));
    }

    while (v7);
    if (v10 != a1 + 88 && *(v10 + 32) <= a2)
    {
      v31 = v10;
      v14 = *a3;
      v17 = *(v10 + 48);
      v16 = v10 + 48;
      v15 = v17;
      if (!v17)
      {
        goto LABEL_25;
      }

      v18 = v16;
      do
      {
        if (*(v15 + 28) >= v14)
        {
          v18 = v15;
        }

        v15 = *(v15 + 8 * (*(v15 + 28) < v14));
      }

      while (v15);
      if (v18 == v16 || v14 < *(v18 + 28))
      {
LABEL_25:
        v18 = v16;
      }

      v19 = *(a1 + 64);
      if (!v19)
      {
        goto LABEL_33;
      }

      v20 = a1 + 64;
      do
      {
        if (*(v19 + 32) >= v14)
        {
          v20 = v19;
        }

        v19 = *(v19 + 8 * (*(v19 + 32) < v14));
      }

      while (v19);
      if (v20 != a1 + 64 && v14 >= *(v20 + 32))
      {
        v30 = v20;
        v27 = *(v20 + 56);
        v28 = *a4;
        *buf = &v32;
        *(sub_100007FA0(v20 + 40, &v32, &unk_101C66300, buf) + 32) = v28;
        *buf = 0;
        if (v18 == v16 && (*(*a1 + 128))(a1, a3, buf))
        {
          sub_10083F8B4(buf);
        }

        if (v27)
        {
          goto LABEL_37;
        }
      }

      else
      {
LABEL_33:
        v21 = a1 + 56;
        v30 = a1 + 64;
        v22 = byte_1025D8E91;
        v29 = v14;
        *buf = &v29;
        *(sub_100024014(a1 + 56, &v29, &unk_101C66300, buf) + 80) = v22;
        v29 = *a3;
        *buf = &v29;
        v23 = sub_100024014(a1 + 56, &v29, &unk_101C66300, buf);
        v24 = v23[9];
        v23[8] = 0;
        v23[9] = 0;
        if (v24)
        {
          sub_100008080(v24);
        }

        v25 = *a4;
        v29 = *a3;
        *buf = &v29;
        v26 = sub_100024014(v21, &v29, &unk_101C66300, buf);
        *buf = &v32;
        *(sub_100007FA0((v26 + 5), &v32, &unk_101C66300, buf) + 32) = v25;
      }

      (*(*a1 + 168))(a1, a3);
LABEL_37:
      if (v18 == v16)
      {
        *buf = *a3;
        sub_1003C9410(v31 + 40, buf, buf);
      }

      return 1;
    }
  }

  if (qword_1025D47F0 != -1)
  {
    sub_101951884();
  }

  v11 = qword_1025D47F8;
  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
  {
    v12 = (a1 + 8);
    if (*(a1 + 31) < 0)
    {
      v12 = *v12;
    }

    *buf = 136446466;
    *&buf[4] = v12;
    v34 = 1026;
    v35 = v5;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "%{public}s; client %{public}d does not exist", buf, 0x12u);
  }

  v13 = sub_10000A100(121, 0);
  result = 0;
  if (v13)
  {
    sub_1019526B0();
    return 0;
  }

  return result;
}

BOOL sub_10083DD0C(uint64_t a1, uint64_t a2, int *a3)
{
  v3 = a2;
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
      sub_101951884();
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
      v19 = v3;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "%{public}s; client %{public}d does not exist", &v16, 0x12u);
    }

    v9 = sub_10000A100(121, 0);
    result = 0;
    if (v9)
    {
      sub_1019527B4();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10083DEA0(char *a1, int a2, int *a3)
{
  HIDWORD(v25) = a2;
  v3 = a1[108];
  if ((v3 & 1) == 0)
  {
    v5 = *(a1 + 11);
    if (v5)
    {
      v7 = a1 + 88;
      do
      {
        if (*(v5 + 32) >= a2)
        {
          v7 = v5;
        }

        v5 = *(v5 + 8 * (*(v5 + 32) < a2));
      }

      while (v5);
      if (v7 != a1 + 88 && *(v7 + 8) <= a2)
      {
        v10 = *(v7 + 6);
        v8 = v7 + 48;
        v9 = v10;
        if (v10)
        {
          v11 = *a3;
          v12 = v8;
          do
          {
            if (*(v9 + 28) >= v11)
            {
              v12 = v9;
            }

            v9 = *(v9 + 8 * (*(v9 + 28) < v11));
          }

          while (v9);
          if (v12 != v8 && v11 >= *(v12 + 7))
          {
            LODWORD(__p[0]) = *a3;
            sub_10004E6E0((v8 - 8), __p);
            v13 = *(a1 + 8);
            if (!v13)
            {
              goto LABEL_23;
            }

            v14 = *a3;
            v15 = a1 + 64;
            do
            {
              if (*(v13 + 32) >= v14)
              {
                v15 = v13;
              }

              v13 = *(v13 + 8 * (*(v13 + 32) < v14));
            }

            while (v13);
            if (v15 != a1 + 64 && v14 >= *(v15 + 8))
            {
              sub_10004E6E0((v15 + 40), &v25 + 1);
              if (!*(v15 + 7))
              {
                (*(*a1 + 176))(a1, a3);
              }
            }

            else
            {
LABEL_23:
              if (qword_1025D47F0 != -1)
              {
                sub_101951898();
              }

              v16 = qword_1025D47F8;
              if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
              {
                v17 = a1 + 8;
                if (a1[31] < 0)
                {
                  v17 = *v17;
                }

                (*(*a1 + 160))(__p, a1, a3);
                if (v35 >= 0)
                {
                  v18 = __p;
                }

                else
                {
                  v18 = __p[0];
                }

                *buf = 136446466;
                *&buf[4] = v17;
                v27 = 2082;
                v28 = v18;
                _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_FAULT, "%{public}s; notification %{public}s not found", buf, 0x16u);
                if (v35 < 0)
                {
                  operator delete(__p[0]);
                }
              }

              if (sub_10000A100(121, 0))
              {
                bzero(__p, 0x65CuLL);
                if (qword_1025D47F0 != -1)
                {
                  sub_101951898();
                }

                v20 = a1 + 8;
                if (a1[31] < 0)
                {
                  v20 = *v20;
                }

                v21 = qword_1025D47F8;
                (*(*a1 + 160))(buf, a1, a3);
                if (v29 >= 0)
                {
                  v22 = buf;
                }

                else
                {
                  v22 = *buf;
                }

                v30 = 136446466;
                v31 = v20;
                v32 = 2082;
                v33 = v22;
                LODWORD(v25) = 22;
                _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, v21, 17, "%{public}s; notification %{public}s not found", &v30, v25);
                v24 = v23;
                if (v29 < 0)
                {
                  operator delete(*buf);
                }

                sub_100152C7C("Generic", 1, 0, 0, "virtual BOOL CLNotifier<CLCachedLocationController_Type::Notification, CLCachedLocationController_Type::NotificationData, char, char>::unregisterForNotification(int, const Notification_T &) [Notification_T = CLCachedLocationController_Type::Notification, NotificationData_T = CLCachedLocationController_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "%s\n", v24);
                if (v24 != __p)
                {
                  free(v24);
                }
              }
            }
          }
        }
      }
    }
  }

  return v3 ^ 1u;
}

void sub_10083E370(uint64_t a1, int *a2, _DWORD *a3, int a4, int a5)
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
      sub_100248B84(buf, a2, &v12);
      sub_10047D8C8(v7 - 8, buf);
    }

    if (a4)
    {
      operator new();
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
      sub_10083ED88(a3);
    }
  }
}

void sub_10083E840(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_101865570(va);
  sub_101864718(v16 - 144);
  _Unwind_Resume(a1);
}

void sub_10083E86C(uint64_t a1)
{
  if (*(a1 + 108) == 1)
  {
    if (qword_1025D47F0 != -1)
    {
      sub_101951884();
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
      sub_1019529D8(a1);
    }
  }

  else
  {
    if (qword_1025D47F0 != -1)
    {
      sub_101951884();
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
      sub_1019528B8(a1);
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
              sub_101951898();
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
                sub_101951898();
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
              sub_100152C7C("Generic", 1, 0, 2, "virtual void CLNotifier<CLCachedLocationController_Type::Notification, CLCachedLocationController_Type::NotificationData, char, char>::listClients() [Notification_T = CLCachedLocationController_Type::Notification, NotificationData_T = CLCachedLocationController_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "%s\n", v20);
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

void sub_10083EC30(uint64_t a1)
{
  sub_10083ED18(a1);

  operator delete();
}

id sub_10083EC68(uint64_t a1, int a2, void *a3)
{
  result = sub_10083F384(a3);
  if (result)
  {
    v6 = a2;
    return (*(a1 + 24))(0, &v6, result, *(a1 + 32));
  }

  return result;
}

uint64_t sub_10083ED18(uint64_t a1)
{
  *a1 = off_1024764C8;
  v2 = (a1 + 8);
  [*(a1 + 16) forget:*(a1 + 8)];

  [*v2 invalidate];
  *v2 = 0;
  *(a1 + 16) = 0;
  return a1;
}

void sub_10083EE34(void *a1, int *a2, void *a3)
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
        v10 = sub_10083F384(a3);
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
              v38 = v16;
              sub_10083F1F0(a1, &v38, &v39, a3);
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
                  if (*(v27 + 28) >= v17)
                  {
                    v26 = v27;
                  }

                  v27 = *(v27 + 8 * (*(v27 + 28) < v17));
                }

                while (v27);
                if (v26 == v11 || v17 < *(v26 + 7))
                {
                  do
                  {
                    v28 = *(v24 + 28);
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
                sub_101951898();
              }

              v18 = qword_1025D47F8;
              if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
              {
                v19 = a1 + 1;
                if (*(a1 + 31) < 0)
                {
                  v19 = *v13;
                }

                v20 = *(v11 + 7);
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
                  sub_101951898();
                }

                v33 = a1 + 1;
                if (*(a1 + 31) < 0)
                {
                  v33 = *v13;
                }

                v34 = *(v11 + 7);
                v40 = 136446466;
                v41 = v33;
                v42 = 1026;
                v43 = v34;
                LODWORD(v37) = 18;
                _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D47F8, 17, "%{public}s; unknown client %{public}d", &v40, v37);
                v36 = v35;
                sub_100152C7C("Generic", 1, 0, 0, "void CLNotifier<CLCachedLocationController_Type::Notification, CLCachedLocationController_Type::NotificationData, char, char>::invokeClientsWithData(const Notification_T &, CLCppContainer *) [Notification_T = CLCachedLocationController_Type::Notification, NotificationData_T = CLCachedLocationController_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "%s\n", v35);
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

_BYTE *sub_10083F1F0(_BYTE *result, uint64_t a2, uint64_t *a3, void *a4)
{
  if ((result[108] & 1) == 0)
  {
    v7 = result;
    v8 = *(*a2 + 32);
    LODWORD(v12) = *(*a3 + 32);
    v9 = sub_10083F384(a4);
    v10 = *a3;
    v13 = (*a2 + 32);
    v11 = sub_100007FA0(v10 + 40, v13, &unk_101C66300, &v13);
    result = (*(*v7 + 192))(v7, v8, &v12, v9, v10 + 80, v11 + 4);
    if (result)
    {
      return [*(*a2 + 64) onNotification:*(*a3 + 32) withData:{a4, v12}];
    }
  }

  return result;
}

void sub_10083F308(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1024765D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10083F364(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    operator delete();
  }

  return result;
}

id sub_10083F384(void *a1)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    return sub_10083F420(a1);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

      return sub_10083F5F8(a1);
    }

    else
    {
      return 0;
    }
  }
}

id sub_10083F420(void *a1)
{
  v2 = [a1 binaryVersion];
  [a1 sizeOfType];
  if (!v2)
  {
    return sub_10083F7FC(&v6, a1);
  }

  if (getenv("_INTERSILO_UNIT_TEST"))
  {
    if (qword_1025D41A0 != -1)
    {
      sub_101952AE8();
    }

    v3 = qword_1025D41A8;
    if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218498;
      v8 = v2;
      v9 = 2048;
      v10 = 0;
      v11 = 2080;
      v12 = 0x8000000101CB0FB3 & 0x7FFFFFFFFFFFFFFFLL;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", buf, 0x20u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101952AFC();
    }
  }

  else
  {
    if (qword_1025D41A0 != -1)
    {
      sub_101952AE8();
    }

    v5 = qword_1025D41A8;
    if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218498;
      v8 = v2;
      v9 = 2048;
      v10 = 0;
      v11 = 2080;
      v12 = 0x8000000101CB0FB3 & 0x7FFFFFFFFFFFFFFFLL;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", buf, 0x20u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101952C04();
    }
  }

  return 0;
}

id sub_10083F5F8(void *a1)
{
  v2 = [a1 binaryVersion];
  [a1 sizeOfType];
  if (v2)
  {
    if (getenv("_INTERSILO_UNIT_TEST"))
    {
      if (qword_1025D41A0 != -1)
      {
        sub_101952AE8();
      }

      v3 = qword_1025D41A8;
      if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_ERROR))
      {
        v6 = 134218498;
        v7 = v2;
        v8 = 2048;
        v9 = 0;
        v10 = 2080;
        v11 = 0x8000000101CB0FB3 & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v6, 0x20u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101952D0C();
      }
    }

    else
    {
      if (qword_1025D41A0 != -1)
      {
        sub_101952AE8();
      }

      v5 = qword_1025D41A8;
      if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_FAULT))
      {
        v6 = 134218498;
        v7 = v2;
        v8 = 2048;
        v9 = 0;
        v10 = 2080;
        v11 = 0x8000000101CB0FB3 & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v6, 0x20u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101952E14();
      }
    }

    return 0;
  }

  else
  {

    return [a1 cppObjectPtr];
  }
}

id sub_10083F7FC(uint64_t a1, void *a2)
{
  if (![a2 cppObjectPtr] && objc_msgSend(objc_msgSend(a2, "compatibilityInfo"), "isEqual:", &off_10254F008))
  {
    if ([objc_msgSend(a2 "serialized")] != 4)
    {
      sub_101952F1C();
    }

    [a2 setCppObjectPtr:{objc_msgSend(objc_msgSend(a2, "serialized"), "bytes")}];
  }

  return [a2 cppObjectPtr];
}

uint64_t sub_10083F960(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    operator delete();
  }

  return result;
}

uint64_t sub_10083F980()
{
  sub_10000EC00(&qword_10265A630, "com.apple.locationd.bundle-/System/Library/LocationBundles/Traffic.bundle");

  return __cxa_atexit(&std::string::~string, &qword_10265A630, dword_100000000);
}

void sub_10083F9E0(uint64_t a1, uint64_t a2, char a3, float a4, float a5, double a6)
{
  v12 = CFAbsoluteTimeGetCurrent() - a6;
  if (v12 > *a1 + 3600.0)
  {
    v13 = 0;
    *a1 = v12;
    *(a1 + 8) = 0;
LABEL_10:
    *(a1 + 8) = v13 + 1;
    v15 = *(a2 + 1);
    LOBYTE(__p[0]) = 0;
    BYTE8(v40) = 0;
    sub_10083FF84(v15, __p, buf);
    memset(v51, 0, sizeof(v51));
    v16 = v50;
    v17 = v51;
    if (v50)
    {
      v17 = buf;
    }

    v18 = *v17;
    v19 = *&buf[8];
    if (!v50)
    {
      v19 = 0;
    }

    v20 = v17[2];
    *v17 = 0;
    v17[1] = 0;
    v17[2] = 0;
    __src = v18;
    v47 = v19;
    v48 = v20;
    if (v51[0])
    {
      operator delete(v51[0]);
    }

    if (v16 && *buf)
    {
      operator delete(*buf);
    }

    if (BYTE8(v40) == 1 && SBYTE7(v40) < 0)
    {
      operator delete(__p[0]);
    }

    sub_1008403E4(&__src, *(a2 + 66) == 0, v12);
    LODWORD(__p[0]) = 3;
    *(__p + 4) = *(a2 + 2);
    HIDWORD(__p[1]) = *(a2 + 10);
    v21 = *(a2 + 30);
    v40 = *(a2 + 14);
    v41 = v21;
    v42 = *(a2 + 46);
    *&v43 = v12;
    DWORD2(v43) = *(a2 + 62);
    v44 = *(a2 + 66);
    LOBYTE(v45) = a3;
    *(&v45 + 4) = __PAIR64__(LODWORD(a5), LODWORD(a4));
    if (qword_1025D45D0 != -1)
    {
      sub_1019531C8();
    }

    v22 = qword_1025D45D8;
    if (os_log_type_enabled(qword_1025D45D8, OS_LOG_TYPE_DEFAULT))
    {
      if (v15 > 2)
      {
        v23 = 0;
      }

      else
      {
        v23 = *(&off_102476670 + v15);
      }

      v24 = sub_100840544(__p);
      *buf = 138543618;
      *&buf[4] = v23;
      *&buf[12] = 2114;
      *&buf[14] = v24;
      _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEFAULT, "[IMUCal] Inserting %{public}@ entry:%{public}@", buf, 0x16u);
    }

    v25 = sub_10000A100(121, 2);
    if (v25)
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D45D0 != -1)
      {
        sub_1019531C8();
      }

      if (v15 > 2)
      {
        v34 = 0;
      }

      else
      {
        v34 = *(&off_102476670 + v15);
      }

      v35 = qword_1025D45D8;
      v36 = sub_100840544(__p);
      LODWORD(v51[0]) = 138543618;
      *(v51 + 4) = v34;
      WORD2(v51[1]) = 2114;
      *(&v51[1] + 6) = v36;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v35, 0, "[IMUCal] Inserting %{public}@ entry:%{public}@", v51, 22);
      v38 = v37;
      v25 = sub_100152C7C("Generic", 1, 0, 2, "void CLIMUCalDataStore::insertEstimate(const CMMotionCoprocessorReply::SensorParameterEstimate &, BOOL, float, float, CFAbsoluteTime)", "%s\n", v37);
      if (v38 != buf)
      {
        free(v38);
      }
    }

    v26 = v47;
    if (v47 >= v48)
    {
      v28 = __src;
      v29 = v47 - __src;
      v30 = 0x6DB6DB6DB6DB6DB7 * ((v47 - __src) >> 4);
      v31 = v30 + 1;
      if ((v30 + 1) > 0x249249249249249)
      {
        sub_10028C64C();
      }

      if (0xDB6DB6DB6DB6DB6ELL * ((v48 - __src) >> 4) > v31)
      {
        v31 = 0xDB6DB6DB6DB6DB6ELL * ((v48 - __src) >> 4);
      }

      if ((0x6DB6DB6DB6DB6DB7 * ((v48 - __src) >> 4)) >= 0x124924924924924)
      {
        v31 = 0x249249249249249;
      }

      if (v31)
      {
        sub_100841A94(&__src, v31);
      }

      v32 = (16 * ((v47 - __src) >> 4));
      v32[3] = v42;
      v32[4] = v43;
      v32[5] = v44;
      v32[6] = v45;
      *v32 = *__p;
      v32[1] = v40;
      v32[2] = v41;
      v27 = 112 * v30 + 112;
      v33 = (112 * v30 - v29);
      memcpy(v32 - v29, v28, v29);
      v25 = __src;
      __src = v33;
      v47 = v27;
      v48 = 0;
      if (v25)
      {
        operator delete(v25);
      }
    }

    else
    {
      v47[3] = v42;
      v26[4] = v43;
      v26[5] = v44;
      v26[6] = v45;
      *v26 = *__p;
      v26[1] = v40;
      v26[2] = v41;
      v27 = (v26 + 7);
    }

    v47 = v27;
    sub_100840614(v25, v15, &__src);
    sub_100840A20(a1, v15, &__src, a6 != 0.0);
    if (__src)
    {
      v47 = __src;
      operator delete(__src);
    }

    return;
  }

  v13 = *(a1 + 8);
  if (v13 < 0x3C)
  {
    goto LABEL_10;
  }

  if (qword_1025D45D0 != -1)
  {
    sub_1019530A0();
  }

  v14 = qword_1025D45D8;
  if (os_log_type_enabled(qword_1025D45D8, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_ERROR, "[IMUCal] Excessive writes, skipping this estimate", buf, 2u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_1019530B4();
  }
}

void sub_10083FF30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_10083FF84@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a1;
  if (*(a2 + 24) == 1)
  {
    if (*(a2 + 23) >= 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = *a2;
    }

    v6 = [NSURL fileURLWithPath:[NSString stringWithUTF8String:v5]];
  }

  else
  {
    v6 = sub_1008412F4(a1);
  }

  v8 = v6;
  if (!v6)
  {
LABEL_22:
    *a3 = 0;
    *(a3 + 24) = 0;
    return result;
  }

  v9 = [NSData dataWithContentsOfURL:v6];
  if (!v9)
  {
    if (qword_1025D45D0 != -1)
    {
      sub_1019530A0();
    }

    v12 = qword_1025D45D8;
    if (os_log_type_enabled(qword_1025D45D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v25 = [(NSURL *)v8 path];
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "[IMUCal] %{public}@ not available", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10195331C(v8);
    }

    goto LABEL_22;
  }

  v10 = v9;
  if (__ROR8__(0x6DB6DB6DB6DB6DB7 * [(NSData *)v9 length], 4) >= 0x24924924924924AuLL)
  {
    if (qword_1025D45D0 != -1)
    {
      sub_1019530A0();
    }

    v11 = qword_1025D45D8;
    if (os_log_type_enabled(qword_1025D45D8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349312;
      v25 = 112;
      v26 = 2050;
      v27 = [(NSData *)v10 length];
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_ERROR, "[IMUCal] Expected multiple of %{public}zu bytes but got %{public}zu", buf, 0x16u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1019531F0(v10);
    }

    goto LABEL_22;
  }

  sub_100841AF0(&v18, (([(NSData *)v10 length]>> 4) * 0x2492492492492493uLL) >> 64);
  memcpy(v18, [(NSData *)v10 bytes], [(NSData *)v10 length]);
  if (qword_1025D45D0 != -1)
  {
    sub_1019531C8();
  }

  v13 = qword_1025D45D8;
  if (os_log_type_enabled(qword_1025D45D8, OS_LOG_TYPE_DEFAULT))
  {
    if (v3 > 2)
    {
      v14 = 0;
    }

    else
    {
      v14 = *(&off_102476670 + v3);
    }

    *buf = 134349314;
    v25 = 0x6DB6DB6DB6DB6DB7 * ((*(&v18 + 1) - v18) >> 4);
    v26 = 2114;
    v27 = v14;
    _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "[IMUCal] Read %{public}zu %{public}@ entries", buf, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D45D0 != -1)
    {
      sub_1019531C8();
    }

    if (v3 > 2)
    {
      v15 = 0;
    }

    else
    {
      v15 = *(&off_102476670 + v3);
    }

    v20 = 134349314;
    v21 = 0x6DB6DB6DB6DB6DB7 * ((*(&v18 + 1) - v18) >> 4);
    v22 = 2114;
    v23 = v15;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D45D8, 0, "[IMUCal] Read %{public}zu %{public}@ entries", &v20, 22);
    v17 = v16;
    sub_100152C7C("Generic", 1, 0, 2, "static std::optional<std::vector<CLIMUCalDataStore::Entry>> CLIMUCalDataStore::read(const CMIMUCal::Parameter, const std::optional<std::string> &)", "%s\n", v16);
    if (v17 != buf)
    {
      free(v17);
    }
  }

  result = *&v18;
  *a3 = v18;
  *(a3 + 16) = v19;
  *(a3 + 24) = 1;
  return result;
}

void sub_1008403BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1008403E4(void *result, int a2, double a3)
{
  v3 = result;
  v4 = *result;
  v5 = 0x6DB6DB6DB6DB6DB7 * ((result[1] - *result) >> 4);
  if (v5 < 1)
  {
    v10 = -1;
    v9 = -1;
    v8 = -1;
    goto LABEL_23;
  }

  v6 = v5 & 0x7FFFFFFF;
  v7 = &v4[112 * v6 - 48];
  v8 = -1;
  v9 = -1;
  v10 = -1;
  do
  {
    --v6;
    if (v8 < 0 && *v7 + 604800.0 < a3)
    {
      v8 = v6;
    }

    if (a2)
    {
      if (v9 < 0 && *(v7 + 16) != 0)
      {
        v9 = v6;
      }
    }

    if (v10 < 0 && *(v7 - 64) != 3)
    {
      v10 = v6;
    }

    v7 -= 112;
  }

  while ((v6 + 1) > 1);
  if (v8 < 0)
  {
LABEL_23:
    if (v10 < 0)
    {
      return result;
    }
  }

  v14 = v8 + 1;
  if ((v9 & 0x80000000) == 0 && v9 <= v8)
  {
    v15 = &v4[112 * v9];
    v16 = &v4[112 * v8];
    v17 = *v15;
    v18 = *(v15 + 2);
    *(v16 + 1) = *(v15 + 1);
    *(v16 + 2) = v18;
    *v16 = v17;
    v19 = *(v15 + 3);
    v20 = *(v15 + 4);
    v21 = *(v15 + 5);
    *(v16 + 92) = *(v15 + 92);
    *(v16 + 4) = v20;
    *(v16 + 5) = v21;
    *(v16 + 3) = v19;
    v14 = v8;
  }

  if (v10 + 1 > v14)
  {
    v22 = v10 + 1;
  }

  else
  {
    v22 = v14;
  }

  if ((v22 & 0x80000000) == 0 && v22)
  {
    v24 = *result;
    v23 = result[1];
    v25 = (*result + 112 * v22);
    v26 = v23 - v25;
    if (v23 != v25)
    {
      result = memmove(*result, v25, v26 - 4);
    }

    v3[1] = v24 + v26;
  }

  return result;
}

void sub_100840614(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = sub_1008412F4(a2);
  if (v5)
  {
    v6 = v5;
    v7 = [NSData dataWithBytes:*a3 length:a3[1] - *a3];
    v23 = 0;
    if ([(NSData *)v7 writeToURL:v6 options:1 error:&v23])
    {
      if (qword_1025D45D0 != -1)
      {
        sub_1019531C8();
      }

      v8 = qword_1025D45D8;
      if (os_log_type_enabled(qword_1025D45D8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 0x6DB6DB6DB6DB6DB7 * ((a3[1] - *a3) >> 4);
        if (v4 > 2)
        {
          v10 = 0;
        }

        else
        {
          v10 = *(&off_102476670 + v4);
        }

        *buf = 134349314;
        v31 = v9;
        v32 = 2114;
        v33 = v10;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "[IMUCal] Wrote %{public}zu %{public}@ entries", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D45D0 != -1)
        {
          sub_1019531C8();
        }

        v14 = 0x6DB6DB6DB6DB6DB7 * ((a3[1] - *a3) >> 4);
        if (v4 > 2)
        {
          v15 = 0;
        }

        else
        {
          v15 = *(&off_102476670 + v4);
        }

        v24 = 134349314;
        v25 = v14;
        v26 = 2114;
        v27 = v15;
        v18 = _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D45D8, 0, "[IMUCal] Wrote %{public}zu %{public}@ entries", &v24, 22);
        v20 = v19;
        sub_100152C7C("Generic", 1, 0, 2, "void CLIMUCalDataStore::write(const CMIMUCal::Parameter, const std::vector<CLIMUCalDataStore::Entry> &)", "%s\n", v18);
LABEL_32:
        if (v20 != buf)
        {
          free(v20);
        }
      }
    }

    else
    {
      if (qword_1025D45D0 != -1)
      {
        sub_1019531C8();
      }

      v11 = qword_1025D45D8;
      if (os_log_type_enabled(qword_1025D45D8, OS_LOG_TYPE_ERROR))
      {
        v12 = 0x6DB6DB6DB6DB6DB7 * ((a3[1] - *a3) >> 4);
        if (v4 > 2)
        {
          v13 = 0;
        }

        else
        {
          v13 = *(&off_102476670 + v4);
        }

        *buf = 134349570;
        v31 = v12;
        v32 = 2114;
        v33 = v13;
        v34 = 2114;
        v35 = v23;
        _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_ERROR, "[IMUCal] Failed to write %{public}zu %{public}@ entries, error=%{public}@", buf, 0x20u);
      }

      if (sub_10000A100(121, 0))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D45D0 != -1)
        {
          sub_1019531C8();
        }

        v16 = 0x6DB6DB6DB6DB6DB7 * ((a3[1] - *a3) >> 4);
        if (v4 > 2)
        {
          v17 = 0;
        }

        else
        {
          v17 = *(&off_102476670 + v4);
        }

        v24 = 134349570;
        v25 = v16;
        v26 = 2114;
        v27 = v17;
        v28 = 2114;
        v29 = v23;
        v21 = _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D45D8, 16, "[IMUCal] Failed to write %{public}zu %{public}@ entries, error=%{public}@", &v24, 32);
        v20 = v22;
        sub_100152C7C("Generic", 1, 0, 0, "void CLIMUCalDataStore::write(const CMIMUCal::Parameter, const std::vector<CLIMUCalDataStore::Entry> &)", "%s\n", v21);
        goto LABEL_32;
      }
    }
  }
}

void sub_100840A20(uint64_t a1, unsigned int a2, uint64_t *a3, int a4)
{
  if (*a3 != a3[1] && (!a2 || a2 == 2))
  {
    v7 = a1 + 16;
    if (*(a1 + 16 + 8 * a2) < 1.0)
    {
      *(v7 + 8 * a2) = *(*a3 + 64);
    }

    Current = CFAbsoluteTimeGetCurrent();
    if (a4)
    {
      v9 = *(a3[1] - 48);
    }

    else
    {
      v9 = Current;
    }

    if (v9 >= *(v7 + 8 * a2) + 86400.0)
    {
      v11 = *a3;
      v10 = a3[1];
      if (v10 != *a3)
      {
        v12 = 0;
        v13 = 0;
        v14 = 0;
        do
        {
          if (!*(v11 + v12 + 80))
          {
            AnalyticsSendEventLazy();
            ++v14;
            v11 = *a3;
            v10 = a3[1];
          }

          ++v13;
          v12 += 112;
        }

        while (v13 < 0x6DB6DB6DB6DB6DB7 * ((v10 - v11) >> 4));
      }

      *(v7 + 8 * a2) = v9;
    }
  }
}

void sub_100840BEC()
{
  v0 = 0;
  do
  {
    v30[0] = 0;
    v34 = 0;
    sub_10083FF84(v0, v30, buf);
    memset(__p, 0, sizeof(__p));
    v1 = v29;
    v2 = buf;
    if (!v29)
    {
      v2 = __p;
    }

    v3 = *v2;
    if (v29)
    {
      v4 = *&buf[8];
    }

    else
    {
      v4 = 0;
    }

    v5 = v2[2];
    *v2 = 0;
    v2[1] = 0;
    v2[2] = 0;
    v27[0] = v3;
    v27[1] = v4;
    v27[2] = v5;
    v6 = __p[0];
    if (__p[0])
    {
      operator delete(__p[0]);
    }

    if (v1)
    {
      v6 = *buf;
      if (*buf)
      {
        operator delete(*buf);
      }
    }

    if (v34 == 1 && v33 < 0)
    {
      operator delete(*v30);
    }

    v7 = 0;
    v8 = -1227133513 * ((v4 - v3) >> 4);
    v9 = v8 + 1;
    v10 = &v3[112 * v8];
    v11 = 1;
    do
    {
      v12 = v11;
      v13 = v10;
      v14 = v9;
      while (--v14 >= 1)
      {
        v15 = v13 - 112;
        v16 = *(v13 - 4) != 0;
        v13 -= 112;
        if (v7 == v16)
        {
          ++*(v15 + 11);
          if (qword_1025D45D0 != -1)
          {
            sub_1019531C8();
          }

          v17 = qword_1025D45D8;
          if (os_log_type_enabled(qword_1025D45D8, OS_LOG_TYPE_DEFAULT))
          {
            if (v0 > 2)
            {
              v18 = 0;
            }

            else
            {
              v18 = *(&off_102476670 + v0);
            }

            v19 = sub_100840544(v15);
            *buf = 138543618;
            *&buf[4] = v18;
            *&buf[12] = 2114;
            *&buf[14] = v19;
            _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEFAULT, "[IMUCal] Inserting impact to %{public}@ entry:%{public}@", buf, 0x16u);
          }

          v6 = sub_10000A100(121, 2);
          if (v6)
          {
            bzero(buf, 0x65CuLL);
            if (qword_1025D45D0 != -1)
            {
              sub_1019531C8();
            }

            v20 = qword_1025D45D8;
            if (v0 > 2)
            {
              v21 = 0;
            }

            else
            {
              v21 = *(&off_102476670 + v0);
            }

            v22 = sub_100840544(v15);
            *v30 = 138543618;
            *&v30[4] = v21;
            v31 = 2114;
            v32 = v22;
            LODWORD(v25) = 22;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v20, 0, "[IMUCal] Inserting impact to %{public}@ entry:%{public}@", v30, v25);
            v24 = v23;
            v6 = sub_100152C7C("Generic", 1, 0, 2, "void CLIMUCalDataStore::insertImpact()", "%s\n", v23);
            if (v24 != buf)
            {
              free(v24);
            }
          }

          break;
        }
      }

      v11 = 0;
      v7 = 1;
    }

    while ((v12 & 1) != 0);
    sub_100840614(v6, v0, v27);
    if (v3)
    {
      operator delete(v3);
    }

    v0 = (v0 + 1);
  }

  while (v0 != 3);
}