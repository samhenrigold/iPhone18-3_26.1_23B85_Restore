void sub_1015BA26C(_Unwind_Exception *a1)
{
  *(v1 - 168) = v1 - 192;
  sub_1000087B4((v1 - 168));
  _Unwind_Resume(a1);
}

void sub_1015BA2CC(uint64_t a1, const char **a2, uint64_t a3, int *a4)
{
  if (a2[1] - *a2 == 96)
  {
    v5 = *(a1 + 32);
    if (*(v5 + 80))
    {
      v8 = *(a1 + 40);
      v9 = std::__shared_weak_count::lock(*(v5 + 80));
      if (v9)
      {
        v10 = v9;
        v11 = *(v5 + 72);
        if (!v11)
        {
          v17 = 1;
LABEL_48:
          sub_100004A34(v10);
          goto LABEL_15;
        }

        v12 = *a2;
        if ((*a2)[23] < 0)
        {
          v12 = *v12;
        }

        v13 = atoi(v12);
        v14 = *(v5 + 8);
        v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
        if (v13 > 331)
        {
          if (v13 > 350)
          {
            if (v13 == 351)
            {
              if (v15)
              {
                *v18 = 0;
                _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I BAIC roaming (barr[sic] all incoming calls when roaming outside the home country)", v18, 2u);
              }

              v16 = 4;
              goto LABEL_47;
            }

            if (v13 == 353)
            {
              if (v15)
              {
                *v18 = 0;
                _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I Incoming Barring Services", v18, 2u);
              }

              v16 = 8;
              goto LABEL_47;
            }
          }

          else
          {
            if (v13 == 332)
            {
              if (v15)
              {
                *v18 = 0;
                v16 = 2;
                _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I BAOIC exc home (barr[sic] all outgoing international calls except to home country)", v18, 2u);
              }

              else
              {
                v16 = 2;
              }

              goto LABEL_47;
            }

            if (v13 == 333)
            {
              if (v15)
              {
                *v18 = 0;
                _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I Outgoing Barring Services", v18, 2u);
              }

              v16 = 7;
              goto LABEL_47;
            }
          }
        }

        else
        {
          if (v13 > 329)
          {
            if (v13 != 330)
            {
              if (v15)
              {
                *v18 = 0;
                _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I BAOIC (barr[sic] all outgoing international calls)", v18, 2u);
              }

              v16 = 1;
              goto LABEL_47;
            }

            if (!v15)
            {
              goto LABEL_45;
            }

            *v18 = 0;
            goto LABEL_44;
          }

          if (v13 == 33)
          {
            if (v15)
            {
              *v18 = 0;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I BAOC (barr[sic] all outgoing calls)", v18, 2u);
            }

            v16 = 0;
            goto LABEL_47;
          }

          if (v13 == 35)
          {
            if (v15)
            {
              *v18 = 0;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I BAIC (barr[sic] all incoming calls)", v18, 2u);
            }

            v16 = 3;
            goto LABEL_47;
          }
        }

        if (!v15)
        {
LABEL_45:
          v16 = 6;
LABEL_47:
          (*(*v11 + 144))(v11, v8, v16, *a2 + 24, *a2 + 48, *a2 + 72, a3);
          v17 = 0;
          goto LABEL_48;
        }

        *v18 = 0;
LABEL_44:
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I All Barring Services", v18, 2u);
        goto LABEL_45;
      }
    }
  }

  v17 = 1;
LABEL_15:
  *a4 = v17;
}

void sub_1015BA604(uint64_t a1, unsigned __int8 **a2, uint64_t a3, int *a4)
{
  v6 = *(a1 + 32);
  if (!sub_1015B91E0((v6 + 8), *a2) || !sub_1015B91E0((v6 + 8), *a2 + 24))
  {
    goto LABEL_16;
  }

  v7 = *a2;
  v8 = (*a2)[47];
  if (v8 >= 0)
  {
    v9 = (*a2)[47];
  }

  else
  {
    v9 = *(*a2 + 4);
  }

  v10 = v7[71];
  v11 = v10;
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(v7 + 7);
  }

  if (v9 == v10 && ((v14 = *(v7 + 6), v12 = v7 + 48, v13 = v14, v8 >= 0) ? (v15 = v12 - 24) : (v15 = *(v12 - 3)), v11 >= 0 ? (v16 = v12) : (v16 = v13), !memcmp(v15, v16, v9)))
  {
    v21 = 0;
    v22 = 0;
    sGetSubscriberSimInterface();
    v19 = *(v6 + 8);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I Subscriber sim controller not found.", buf, 2u);
    }

    v18 = 1;
    if (v22)
    {
      sub_100004A34(v22);
    }
  }

  else
  {
LABEL_16:
    v17 = *(v6 + 8);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#N Invalid arguments of PIN", buf, 2u);
    }

    v18 = 42;
  }

  *a4 = v18;
}

void sub_1015BA858(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a24)
  {
    sub_100004A34(a24);
  }

  _Unwind_Resume(exception_object);
}

void sub_1015BA8A0(uint64_t a1, unsigned __int8 **a2, uint64_t a3, int *a4)
{
  v6 = *(a1 + 32);
  v7 = *a2;
  if (!sub_1015B91E0((v6 + 8), *a2))
  {
    goto LABEL_19;
  }

  v8 = v7[23];
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(v7 + 1);
  }

  if (v8 != 8 || !sub_1015B91E0((v6 + 8), *a2 + 24))
  {
    goto LABEL_19;
  }

  v9 = *a2;
  v10 = (*a2)[47];
  if (v10 >= 0)
  {
    v11 = (*a2)[47];
  }

  else
  {
    v11 = *(*a2 + 4);
  }

  v12 = v9[71];
  v13 = v12;
  if ((v12 & 0x80u) != 0)
  {
    v12 = *(v9 + 7);
  }

  if (v11 == v12 && ((v16 = *(v9 + 6), v14 = v9 + 48, v15 = v16, v10 >= 0) ? (v17 = v14 - 24) : (v17 = *(v14 - 3)), v13 >= 0 ? (v18 = v14) : (v18 = v15), !memcmp(v17, v18, v11)))
  {
    v23 = 0;
    v24 = 0;
    sGetSubscriberSimInterface();
    v21 = *(v6 + 8);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I Subscriber sim controller not found.", buf, 2u);
    }

    v20 = 1;
    if (v24)
    {
      sub_100004A34(v24);
    }
  }

  else
  {
LABEL_19:
    v19 = *(v6 + 8);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#N Invalid arguments of PIN", buf, 2u);
    }

    v20 = 42;
  }

  *a4 = v20;
}

void sub_1015BAB14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a24)
  {
    sub_100004A34(a24);
  }

  _Unwind_Resume(exception_object);
}

void sub_1015BAB5C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v5 = *(a1 + 32);
  if (*(v5 + 80))
  {
    v7 = *(a1 + 40);
    v8 = std::__shared_weak_count::lock(*(v5 + 80));
    if (v8)
    {
      v9 = v8;
      v10 = *(v5 + 72);
      if (v10)
      {
        if (a3 == 3)
        {
          v11 = *(v5 + 8);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v15) = 0;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I MMI Interrogation on CLIP", &v15, 2u);
          }

          (*(*v10 + 176))(v10, v7, 1, 0);
LABEL_15:
          v12 = 0;
LABEL_17:
          sub_100004A34(v9);
          goto LABEL_18;
        }

        if ((a3 - 1) <= 1)
        {
          v13 = *(v5 + 8);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v14 = "Deactivation";
            if (a3 == 1)
            {
              v14 = "Activation";
            }

            v15 = 136315138;
            v16 = v14;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I MMI %s on CLIP", &v15, 0xCu);
          }

          (*(*v10 + 192))(v10, v7, 1, a3 == 1);
          goto LABEL_15;
        }
      }

      v12 = 1;
      goto LABEL_17;
    }
  }

  v12 = 1;
LABEL_18:
  *a4 = v12;
}

void sub_1015BAD44(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v5 = *(a1 + 32);
  if (*(v5 + 80))
  {
    v7 = *(a1 + 40);
    v8 = std::__shared_weak_count::lock(*(v5 + 80));
    if (v8)
    {
      v9 = v8;
      v10 = *(v5 + 72);
      if (v10)
      {
        if (a3 == 3)
        {
          v11 = *(v5 + 8);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v15) = 0;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I MMI Interrogation on CLIR", &v15, 2u);
          }

          (*(*v10 + 88))(v10, v7, 0);
LABEL_15:
          v12 = 0;
LABEL_17:
          sub_100004A34(v9);
          goto LABEL_18;
        }

        if ((a3 - 1) <= 1)
        {
          v13 = *(v5 + 8);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v14 = "Deactivation";
            if (a3 == 1)
            {
              v14 = "Activation";
            }

            v15 = 136315138;
            v16 = v14;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I MMI %s on CLIR", &v15, 0xCu);
          }

          (*(*v10 + 104))(v10, v7, a3 == 1, 0);
          goto LABEL_15;
        }
      }

      v12 = 1;
      goto LABEL_17;
    }
  }

  v12 = 1;
LABEL_18:
  *a4 = v12;
}

uint64_t sub_1015BAF28(uint64_t a1, char **a2, uint64_t a3, _DWORD *a4)
{
  result = sub_1015B8B0C(*(a1 + 32), *(a1 + 40), 0, a2, a3);
  *a4 = result;
  return result;
}

uint64_t sub_1015BAF68(uint64_t a1, char **a2, uint64_t a3, _DWORD *a4)
{
  result = sub_1015B8B0C(*(a1 + 32), *(a1 + 40), 3, a2, a3);
  *a4 = result;
  return result;
}

void sub_1015BAFA8(uint64_t a1, uint64_t *a2, uint64_t a3, int *a4)
{
  v5 = *(a1 + 32);
  if (*(v5 + 80))
  {
    v8 = *(a1 + 40);
    v9 = std::__shared_weak_count::lock(*(v5 + 80));
    if (v9)
    {
      v10 = v9;
      v11 = *(v5 + 72);
      if (!v11)
      {
        goto LABEL_50;
      }

      v12 = *(v5 + 8);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3);
        v29 = 134218240;
        v30 = v13;
        v31 = 1024;
        v32 = a3;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I MMI Arguments list size %ld, MMI Procedure %d", &v29, 0x12u);
      }

      v14 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3);
      if (v14 != 1)
      {
        if (v14)
        {
          goto LABEL_50;
        }

        if (a3 <= 2)
        {
          if (a3 == 1)
          {
LABEL_30:
            v24 = *(v5 + 8);
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(v29) = 0;
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I Activation Call Waiting", &v29, 2u);
            }

            v20 = 1;
LABEL_33:
            (*(*v11 + 160))(v11, v8, v20, 0, a3);
LABEL_38:
            v15 = 0;
LABEL_51:
            sub_100004A34(v10);
            goto LABEL_52;
          }

          if (a3 != 2)
          {
            goto LABEL_45;
          }
        }

        else
        {
          if (a3 == 3)
          {
            v26 = *(v5 + 8);
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(v29) = 0;
              _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I Interrogation Call Waiting", &v29, 2u);
            }

            (*(*v11 + 152))(v11, v8, 0, 0);
            goto LABEL_38;
          }

          if (a3 != 5)
          {
            if (a3 != 4)
            {
LABEL_45:
              v28 = *(v5 + 8);
              if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
              {
                LOWORD(v29) = 0;
LABEL_49:
                _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I Unsupported MMI Procedure", &v29, 2u);
                goto LABEL_50;
              }

              goto LABEL_50;
            }

            goto LABEL_30;
          }
        }

        v18 = *(v5 + 8);
        v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
        v20 = 0;
        if (v19)
        {
          LOWORD(v29) = 0;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I Deactivation Call Waiting", &v29, 2u);
          v20 = 0;
        }

        goto LABEL_33;
      }

      v16 = sub_1015B886C(*a2);
      if (!v16)
      {
        v17 = *(v5 + 8);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v29) = 0;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I Unknown Service Class Code", &v29, 2u);
        }
      }

      if (a3 <= 2)
      {
        if (a3 == 1)
        {
LABEL_34:
          v25 = *(v5 + 8);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v29) = 0;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I Activation Call Waiting", &v29, 2u);
          }

          v23 = 1;
LABEL_37:
          (*(*v11 + 160))(v11, v8, v23, v16, a3);
          goto LABEL_38;
        }

        if (a3 != 2)
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (a3 == 3)
        {
          v27 = *(v5 + 8);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v29) = 0;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I Interrogation Call Waiting", &v29, 2u);
          }

          (*(*v11 + 152))(v11, v8, v16, 0);
          goto LABEL_38;
        }

        if (a3 != 5)
        {
          if (a3 != 4)
          {
LABEL_47:
            v28 = *(v5 + 8);
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(v29) = 0;
              goto LABEL_49;
            }

LABEL_50:
            v15 = 1;
            goto LABEL_51;
          }

          goto LABEL_34;
        }
      }

      v21 = *(v5 + 8);
      v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
      v23 = 0;
      if (v22)
      {
        LOWORD(v29) = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I Deactivation Call Waiting", &v29, 2u);
        v23 = 0;
      }

      goto LABEL_37;
    }
  }

  v15 = 1;
LABEL_52:
  *a4 = v15;
}

void sub_1015BB488(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v6 = *(a1 + 32);
  v7 = v6[10];
  if (v7 && (v9 = *(a1 + 40), (v10 = std::__shared_weak_count::lock(v7)) != 0))
  {
    v11 = v10;
    v12 = 1;
    if (a3 == 3)
    {
      v13 = v6[9];
      if (v13)
      {
        v14 = v6[1];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *v15 = 0;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I MMI Interrogation on COLR", v15, 2u);
        }

        (*(*v13 + 200))(v13, v9);
        v12 = 0;
      }
    }

    sub_100004A34(v11);
  }

  else
  {
    v12 = 1;
  }

  *a4 = v12;
}

uint64_t sub_1015BB58C(uint64_t a1, void *a2, uint64_t a3, _DWORD *a4)
{
  result = sub_1015B7AC4(*(a1 + 32), *(a1 + 40), 0, a2, a3);
  *a4 = result;
  return result;
}

uint64_t sub_1015BB5CC(uint64_t a1, void *a2, uint64_t a3, _DWORD *a4)
{
  result = sub_1015B7AC4(*(a1 + 32), *(a1 + 40), 1, a2, a3);
  *a4 = result;
  return result;
}

uint64_t sub_1015BB60C(uint64_t a1, void *a2, uint64_t a3, _DWORD *a4)
{
  result = sub_1015B7AC4(*(a1 + 32), *(a1 + 40), 2, a2, a3);
  *a4 = result;
  return result;
}

uint64_t sub_1015BB64C(uint64_t a1, void *a2, uint64_t a3, _DWORD *a4)
{
  result = sub_1015B7AC4(*(a1 + 32), *(a1 + 40), 3, a2, a3);
  *a4 = result;
  return result;
}

uint64_t sub_1015BB68C(uint64_t a1, void *a2, uint64_t a3, _DWORD *a4)
{
  result = sub_1015B7AC4(*(a1 + 32), *(a1 + 40), 4, a2, a3);
  *a4 = result;
  return result;
}

uint64_t sub_1015BB6CC(uint64_t a1, void *a2, uint64_t a3, _DWORD *a4)
{
  result = sub_1015B7AC4(*(a1 + 32), *(a1 + 40), 5, a2, a3);
  *a4 = result;
  return result;
}

void sub_1015BB70C(uint64_t a1, unsigned __int8 **a2, uint64_t a3, int *a4)
{
  v6 = *(a1 + 32);
  if (!sub_1015B91E0((v6 + 8), *a2) || !sub_1015B91E0((v6 + 8), *a2 + 24))
  {
    goto LABEL_16;
  }

  v7 = *a2;
  v8 = (*a2)[47];
  if (v8 >= 0)
  {
    v9 = (*a2)[47];
  }

  else
  {
    v9 = *(*a2 + 4);
  }

  v10 = v7[71];
  v11 = v10;
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(v7 + 7);
  }

  if (v9 == v10 && ((v14 = *(v7 + 6), v12 = v7 + 48, v13 = v14, v8 >= 0) ? (v15 = v12 - 24) : (v15 = *(v12 - 3)), v11 >= 0 ? (v16 = v12) : (v16 = v13), !memcmp(v15, v16, v9)))
  {
    v19 = *(v6 + 8);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20[0] = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I Not handling PIN2 changes", v20, 2u);
    }

    v18 = 1;
  }

  else
  {
LABEL_16:
    v17 = *(v6 + 8);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#N Invalid arguments of PIN2", buf, 2u);
    }

    v18 = 42;
  }

  *a4 = v18;
}

void sub_1015BB848(uint64_t a1, unsigned __int8 **a2, uint64_t a3, int *a4)
{
  v6 = *(a1 + 32);
  v7 = *a2;
  if (!sub_1015B91E0((v6 + 8), *a2))
  {
    goto LABEL_19;
  }

  v8 = v7[23];
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(v7 + 1);
  }

  if (v8 != 8 || !sub_1015B91E0((v6 + 8), *a2 + 24))
  {
    goto LABEL_19;
  }

  v9 = *a2;
  v10 = (*a2)[47];
  if (v10 >= 0)
  {
    v11 = (*a2)[47];
  }

  else
  {
    v11 = *(*a2 + 4);
  }

  v12 = v9[71];
  v13 = v12;
  if ((v12 & 0x80u) != 0)
  {
    v12 = *(v9 + 7);
  }

  if (v11 == v12 && ((v16 = *(v9 + 6), v14 = v9 + 48, v15 = v16, v10 >= 0) ? (v17 = v14 - 24) : (v17 = *(v14 - 3)), v13 >= 0 ? (v18 = v14) : (v18 = v15), !memcmp(v17, v18, v11)))
  {
    v21 = *(v6 + 8);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22[0] = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I Not handling PIN2 changes", v22, 2u);
    }

    v20 = 1;
  }

  else
  {
LABEL_19:
    v19 = *(v6 + 8);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#N Invalid arguments of PIN2", buf, 2u);
    }

    v20 = 42;
  }

  *a4 = v20;
}

void sub_1015BB9A4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v6 = *(a1 + 32);
  v7 = v6[10];
  if (v7 && (v9 = *(a1 + 40), (v10 = std::__shared_weak_count::lock(v7)) != 0))
  {
    v11 = v10;
    v12 = 1;
    if (a3 == 3)
    {
      v13 = v6[9];
      if (v13)
      {
        v14 = v6[1];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *v15 = 0;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I MMI Interrogation on CNAP", v15, 2u);
        }

        (*(*v13 + 264))(v13, v9, 0);
        v12 = 0;
      }
    }

    sub_100004A34(v11);
  }

  else
  {
    v12 = 1;
  }

  *a4 = v12;
}

uint64_t sub_1015BBAB4(uint64_t a1, char **a2, uint64_t a3, _DWORD *a4)
{
  result = sub_1015B8B0C(*(a1 + 32), *(a1 + 40), 1, a2, a3);
  *a4 = result;
  return result;
}

uint64_t sub_1015BBAF4(uint64_t a1, char **a2, uint64_t a3, _DWORD *a4)
{
  result = sub_1015B8B0C(*(a1 + 32), *(a1 + 40), 2, a2, a3);
  *a4 = result;
  return result;
}

uint64_t sub_1015BBB34(uint64_t a1, char **a2, uint64_t a3, _DWORD *a4)
{
  result = sub_1015B8B0C(*(a1 + 32), *(a1 + 40), 4, a2, a3);
  *a4 = result;
  return result;
}

uint64_t sub_1015BBB74(uint64_t a1, char **a2, uint64_t a3, _DWORD *a4)
{
  result = sub_1015B8B0C(*(a1 + 32), *(a1 + 40), 6, a2, a3);
  *a4 = result;
  return result;
}

uint64_t sub_1015BBBB4(uint64_t a1, char **a2, uint64_t a3, _DWORD *a4)
{
  result = sub_1015B8B0C(*(a1 + 32), *(a1 + 40), 7, a2, a3);
  *a4 = result;
  return result;
}

uint64_t sub_1015BBBF4(uint64_t a1, char **a2, uint64_t a3, _DWORD *a4)
{
  result = sub_1015B8B0C(*(a1 + 32), *(a1 + 40), 8, a2, a3);
  *a4 = result;
  return result;
}

void sub_1015BBC34(uint64_t a1, uint64_t a2)
{
  v11 = a2;
  for (i = *(a1 + 56); i; i = *i)
  {
    v4 = *(i + 7);
    if (v4 <= a2)
    {
      if (v4 >= a2)
      {
        *buf = &v11;
        v6 = *(sub_100051AD8(a1 + 48, &v11, &unk_101802C98, buf) + 32);
        v7 = *(a1 + 8);
        if (v6 == 1)
        {
          if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            v8 = "USSD Session was already on!";
            v9 = v7;
            v10 = 2;
            goto LABEL_16;
          }
        }

        else
        {
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Starting USSD session", buf, 2u);
          }

          *buf = &v11;
          *(sub_100051AD8(a1 + 48, &v11, &unk_101802C98, buf) + 32) = 1;
          (*(**(a1 + 88) + 88))(*(a1 + 88), v11);
        }

        return;
      }

      ++i;
    }
  }

  v5 = *(a1 + 8);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    *&buf[4] = subscriber::asString();
    v8 = "Cannot find slot %s!!";
    v9 = v5;
    v10 = 12;
LABEL_16:
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, v8, buf, v10);
  }
}

void sub_1015BBE04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = a2;
  v4 = *(a1 + 56);
  if (!v4)
  {
LABEL_8:
    v7 = *(a1 + 8);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 136315138;
    *&buf[4] = subscriber::asString();
    v12 = "Cannot find slot %s!!";
    v13 = v7;
    v14 = 12;
    goto LABEL_19;
  }

  v5 = a3;
  while (1)
  {
    v6 = *(v4 + 7);
    if (v6 <= a2)
    {
      break;
    }

LABEL_7:
    v4 = *v4;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  if (v6 < a2)
  {
    ++v4;
    goto LABEL_7;
  }

  *buf = &v15;
  v8 = *(sub_100051AD8(a1 + 48, &v15, &unk_101802C98, buf) + 32);
  v9 = *(a1 + 8);
  if ((v8 & 1) == 0)
  {
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 0;
    v12 = "USSD Session does not exist";
    v13 = v9;
    v14 = 2;
LABEL_19:
    _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, v12, buf, v14);
    return;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = CSIErrorString();
    *buf = 136315138;
    *&buf[4] = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I USSD session complete, error %s", buf, 0xCu);
  }

  *buf = &v15;
  *(sub_100051AD8(a1 + 48, &v15, &unk_101802C98, buf) + 32) = 0;
  v11 = **(a1 + 88);
  if (v5)
  {
    (*(v11 + 104))();
  }

  else
  {
    (*(v11 + 96))();
  }
}

void sub_1015BC01C(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = (a1 + 56);
  if (v1 != (a1 + 56))
  {
    do
    {
      v4 = *(a1 + 8);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = subscriber::asString();
        v6 = CSIBOOLAsString(*(v1 + 32));
        *buf = 136315394;
        v11 = v5;
        v12 = 2080;
        v13 = v6;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Ussd Session on %s: %s", buf, 0x16u);
      }

      v7 = v1[1];
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
          v8 = v1[2];
          v9 = *v8 == v1;
          v1 = v8;
        }

        while (!v9);
      }

      v1 = v8;
    }

    while (v8 != v2);
  }
}

void sub_1015BC148(uint64_t a1)
{
  *a1 = off_101F51BB0;
  v2 = *(a1 + 96);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 80);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  sub_10006DCAC(a1 + 48, *(a1 + 56));
  v4 = *(a1 + 40);
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = *(a1 + 24);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 8));

  MMIInterface::~MMIInterface(a1);
}

void sub_1015BC1DC(uint64_t a1)
{
  *a1 = off_101F51BB0;
  v2 = *(a1 + 96);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 80);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  sub_10006DCAC(a1 + 48, *(a1 + 56));
  v4 = *(a1 + 40);
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = *(a1 + 24);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 8));
  MMIInterface::~MMIInterface(a1);

  operator delete();
}

void sub_1015BC304(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1015BC340(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1015BC378(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_1015BC3A8(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_1015BC3E8(void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  operator new();
}

void sub_1015BC4AC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    dispatch_release(v1);
  }

  if (v2)
  {
    operator delete();
  }

  _Unwind_Resume(exception_object);
}

void *sub_1015BC4D4(void *a1, uint64_t a2, NSObject **a3)
{
  v5 = (a1 + 1);
  ctu::OsLogContext::OsLogContext(&v10, kCtLoggingSystemName, "pwr.iokit");
  ctu::OsLogLogger::OsLogLogger(v11, &v10);
  ctu::OsLogLogger::OsLogLogger(v5, v11);
  ctu::OsLogLogger::~OsLogLogger(v11);
  ctu::OsLogContext::~OsLogContext(&v10);
  a1[2] = 0;
  a1[3] = 0;
  *a1 = off_101F51FD8;
  v6 = *a3;
  object = v6;
  if (v6)
  {
    dispatch_retain(v6);
  }

  v7.fObj.fObj = &object;
  NotifySubscription::NotifySubscription((a1 + 4), "com.apple.system.powersources.source", v7);
  if (object)
  {
    dispatch_release(object);
  }

  return a1;
}

void sub_1015BC5C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t object, char a10, uint64_t a11, char a12)
{
  if (object)
  {
    dispatch_release(object);
  }

  v15 = *(v12 + 3);
  if (v15)
  {
    std::__shared_weak_count::__release_weak(v15);
  }

  ctu::OsLogLogger::~OsLogLogger(v13);
  IoKitPowerSourceInterface::~IoKitPowerSourceInterface(v12);
  _Unwind_Resume(a1);
}

void sub_1015BC61C(void *a1)
{
  *a1 = off_101F51FD8;
  NotifySubscription::~NotifySubscription((a1 + 4));
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 1));

  IoKitPowerSourceInterface::~IoKitPowerSourceInterface(a1);
}

void sub_1015BC688(void *a1)
{
  sub_1015BC61C(a1);

  operator delete();
}

void sub_1015BC6C0(void *a1, uint64_t a2)
{
  v3 = a1[3];
  if (v3)
  {
    v5 = a1[2];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      p_shared_weak_owners = &v6->__shared_weak_owners_;
      atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v6);
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 1174405120;
      v9[2] = sub_1015BC938;
      v9[3] = &unk_101F52000;
      v9[4] = v5;
      v9[5] = v7;
      atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
      xpc_set_event_stream_handler("com.apple.notifyd.matching", &_dispatch_main_q, v9);
      v9[12] = v5;
      v9[13] = v7;
      atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
      sub_10009CF40(&v10, a2);
      NotifySubscription::cancel((a1 + 4));
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1015BC8D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, std::__shared_weak_count *a22)
{
  if (a20)
  {
    sub_100004A34(a20);
  }

  sub_100004A34(v23);
  sub_1015BCABC(&a21);
  if (a14)
  {
    std::__shared_weak_count::__release_weak(a14);
  }

  std::__shared_weak_count::__release_weak(v22);
  _Unwind_Resume(a1);
}

void sub_1015BC938(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 32);
      if (v7)
      {
        v8 = *(v7 + 8);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          object = a2;
          if (a2)
          {
            xpc_retain(a2);
          }

          else
          {
            object = xpc_null_create();
          }

          xpc::object::to_string(__p, &object);
          if (v12 >= 0)
          {
            v9 = __p;
          }

          else
          {
            v9 = __p[0];
          }

          *buf = 136315138;
          v14 = v9;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Got XPC stream event: %s", buf, 0xCu);
          if (v12 < 0)
          {
            operator delete(__p[0]);
          }

          xpc_release(object);
        }
      }

      sub_100004A34(v6);
    }
  }
}

void sub_1015BCA58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

uint64_t sub_1015BCA90(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1015BCAAC(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t sub_1015BCABC(uint64_t a1)
{
  sub_10002B644(a1 + 16);
  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

uint64_t sub_1015BCAFC(uint64_t a1)
{
  v2 = IOPSCopyPowerSourcesInfo();
  v11 = v2;
  if (!v2)
  {
    v5 = *(a1 + 8);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
LABEL_9:
      v4 = 0;
      goto LABEL_10;
    }

    v10 = 0;
    v6 = "Could not get power source info!";
    v7 = &v10;
LABEL_12:
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, v6, v7, 2u);
    goto LABEL_9;
  }

  v3 = IOPSGetProvidingPowerSourceType(v2);
  if (!v3)
  {
    v5 = *(a1 + 8);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    v9 = 0;
    v6 = "Could not get power source type";
    v7 = &v9;
    goto LABEL_12;
  }

  if (CFEqual(v3, @"Battery Power"))
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

LABEL_10:
  sub_10000A1EC(&v11);
  return v4;
}

void sub_1015BCBD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10000A1EC(va);
  _Unwind_Resume(a1);
}

void sub_1015BCC6C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1015BCCA8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1015BCCE0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_1015BCD10(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_1015BCD50(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[1];
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      if (*v1)
      {
        v5 = v1[5];
        if (!v5)
        {
          sub_100022DB4();
        }

        (*(*v5 + 48))(v5);
      }

      sub_100004A34(v4);
    }
  }
}

uint64_t sub_1015BCDF4(uint64_t result, uint64_t a2)
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

void sub_1015BCE10(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

void sub_1015BCE40(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F52150;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1015BCE94(uint64_t a1)
{
  sub_10002B644(a1 + 40);
  v2 = *(a1 + 32);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

void sub_1015BCEE4(void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  operator new();
}

void sub_1015BCF70(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v5 = a3;
  v6 = a2;
  sub_1015BD0BC(v4, a4);
  if (v4[0] != v4[1])
  {
    v7 = 0;
    operator new();
  }

  if (v4[0])
  {
    operator delete(v4[0]);
  }
}

void sub_1015BD0BC(void *a1, int a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  for (i = 1; i < 129; i *= 2)
  {
    if ((i & a2) != 0)
    {
      operator new();
    }
  }
}

void sub_1015BD1E8(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_1015BD20C(uint64_t a1, int a2, int a3, int a4, int a5)
{
  v7 = a3;
  v8 = a2;
  v6 = a5;
  sub_1015BD0BC(v5, a4);
  if (v5[0] != v5[1])
  {
    v9 = 0;
    operator new();
  }

  if (v5[0])
  {
    operator delete(v5[0]);
  }
}

void sub_1015BD364(uint64_t a1, int a2, int a3, int a4, char a5, int a6, uint64_t a7)
{
  v10 = a3;
  v11 = a2;
  v9 = a5;
  v8 = a6;
  sub_1015BD0BC(v7, a4);
  if (v7[0] != v7[1])
  {
    v12 = 0;
    operator new();
  }

  if (v7[0])
  {
    operator delete(v7[0]);
  }
}

void sub_1015BD4D0(uint64_t a1, int a2, int a3, int a4, int a5)
{
  v7 = a3;
  v8 = a2;
  v6 = a5;
  sub_1015BD0BC(v5, a4);
  if (v5[0] != v5[1])
  {
    v9 = 0;
    operator new();
  }

  if (v5[0])
  {
    operator delete(v5[0]);
  }
}

uint64_t sub_1015BD628(uint64_t a1, int a2, char a3)
{
  v6 = a2;
  v5 = a3;
  v3 = *(a1 + 8);
  v7[0] = off_101F52588;
  v7[1] = &v5;
  v7[2] = &v6;
  v7[3] = v7;
  sub_100125DF8(v3, v7);
  return sub_10002B210(v7);
}

void sub_1015BD6C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10002B210(va);
  _Unwind_Resume(a1);
}

void sub_1015BD6D4(uint64_t a1, int a2, int a3)
{
  v11 = a2;
  sub_1015BD0BC(&v9, a3);
  v4 = v9;
  v5 = v10;
  if (v9 != v10)
  {
    v6 = v9;
    do
    {
      v8 = *v6;
      v7 = *(a1 + 8);
      v12[0] = off_101F52608;
      v12[1] = &v8;
      v12[2] = &v11;
      v12[3] = v12;
      sub_100125DF8(v7, v12);
      sub_10002B210(v12);
      ++v6;
    }

    while (v6 != v5);
  }

  if (v4)
  {
    operator delete(v4);
  }
}

void sub_1015BD7EC(uint64_t a1, int a2, int a3, int a4)
{
  v5 = a4;
  v6 = a2;
  sub_1015BD0BC(v4, a3);
  if (v4[0] != v4[1])
  {
    v7 = 0;
    operator new();
  }

  if (v4[0])
  {
    operator delete(v4[0]);
  }
}

void sub_1015BD938(uint64_t a1, int a2, int a3, char a4)
{
  v6 = a2;
  v5 = a4;
  sub_1015BD0BC(v4, a3);
  if (v4[0] != v4[1])
  {
    v7 = 0;
    operator new();
  }

  if (v4[0])
  {
    operator delete(v4[0]);
  }
}

void sub_1015BDA88(uint64_t a1, int a2, int a3, int a4)
{
  v5 = a4;
  v6 = a2;
  sub_1015BD0BC(v4, a3);
  if (v4[0] != v4[1])
  {
    v7 = 0;
    operator new();
  }

  if (v4[0])
  {
    operator delete(v4[0]);
  }
}

void sub_1015BDBD4(uint64_t a1, int a2, int a3, int a4)
{
  v5 = a4;
  v6 = a2;
  sub_1015BD0BC(v4, a3);
  if (v4[0] != v4[1])
  {
    v7 = 0;
    operator new();
  }

  if (v4[0])
  {
    operator delete(v4[0]);
  }
}

void sub_1015BDD20(uint64_t a1, int a2, int a3, int a4, int a5)
{
  v7 = a4;
  v8 = a2;
  v6 = a5;
  sub_1015BD0BC(v5, a3);
  if (v5[0] != v5[1])
  {
    v9 = 0;
    operator new();
  }

  if (v5[0])
  {
    operator delete(v5[0]);
  }
}

void sub_1015BDE78(uint64_t a1, int a2, int a3, int a4, char a5)
{
  v7 = a4;
  v8 = a2;
  v6 = a5;
  sub_1015BD0BC(v5, a3);
  if (v5[0] != v5[1])
  {
    v9 = 0;
    operator new();
  }

  if (v5[0])
  {
    operator delete(v5[0]);
  }
}

void sub_1015BDFD0(uint64_t a1, int a2, int a3, int a4, int a5)
{
  v7 = a4;
  v8 = a2;
  v6 = a5;
  sub_1015BD0BC(v5, a3);
  if (v5[0] != v5[1])
  {
    v9 = 0;
    operator new();
  }

  if (v5[0])
  {
    operator delete(v5[0]);
  }
}

uint64_t sub_1015BE128(uint64_t a1, int a2, __int16 a3)
{
  v6 = a2;
  v5 = a3;
  v3 = *(a1 + 8);
  v7[0] = off_101F52A08;
  v7[1] = &v5;
  v7[2] = &v6;
  v7[3] = v7;
  sub_100125DF8(v3, v7);
  return sub_10002B210(v7);
}

void sub_1015BE1C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10002B210(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1015BE1D4(uint64_t a1, int a2, __int16 a3)
{
  v6 = a2;
  v5 = a3;
  v3 = *(a1 + 8);
  v7[0] = off_101F52A88;
  v7[1] = &v5;
  v7[2] = &v6;
  v7[3] = v7;
  sub_100125DF8(v3, v7);
  return sub_10002B210(v7);
}

void sub_1015BE26C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10002B210(va);
  _Unwind_Resume(a1);
}

void sub_1015BE280(uint64_t a1, int a2, int a3, char a4)
{
  v5 = a3;
  v6 = a2;
  v4 = a4;
  operator new();
}

void sub_1015BE338(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10002B210(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1015BE34C(uint64_t a1, int a2, char a3)
{
  v6 = a2;
  v5 = a3;
  v3 = *(a1 + 8);
  v7[0] = off_101F52B88;
  v7[1] = &v5;
  v7[2] = &v6;
  v7[3] = v7;
  sub_100125DF8(v3, v7);
  return sub_10002B210(v7);
}

void sub_1015BE3E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10002B210(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1015BE3F8(uint64_t a1, int a2, int a3)
{
  v5 = a3;
  v6 = a2;
  v3 = *(a1 + 8);
  v7[0] = off_101F52C08;
  v7[1] = &v5;
  v7[2] = &v6;
  v7[3] = v7;
  sub_100125DF8(v3, v7);
  return sub_10002B210(v7);
}

void sub_1015BE48C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10002B210(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1015BE4A0(uint64_t a1, int a2, int a3)
{
  v5 = a3;
  v6 = a2;
  v3 = *(a1 + 8);
  v7[0] = off_101F52C88;
  v7[1] = &v5;
  v7[2] = &v6;
  v7[3] = v7;
  sub_100125DF8(v3, v7);
  return sub_10002B210(v7);
}

void sub_1015BE534(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10002B210(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1015BE548(uint64_t a1, int a2)
{
  v4 = a2;
  v2 = *(a1 + 8);
  v5[0] = off_101F52D08;
  v5[1] = &v4;
  v5[3] = v5;
  sub_100125DF8(v2, v5);
  return sub_10002B210(v5);
}

void sub_1015BE5D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10002B210(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1015BE5EC(uint64_t a1, int a2, int a3)
{
  v5 = a3;
  v6 = a2;
  v3 = *(a1 + 8);
  v7[0] = off_101F52D88;
  v7[1] = &v5;
  v7[2] = &v6;
  v7[3] = v7;
  sub_100125DF8(v3, v7);
  return sub_10002B210(v7);
}

void sub_1015BE680(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10002B210(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1015BE694(uint64_t a1, int a2, int a3)
{
  v5 = a3;
  v6 = a2;
  v3 = *(a1 + 8);
  v7[0] = off_101F52E08;
  v7[1] = &v6;
  v7[2] = &v5;
  v7[3] = v7;
  sub_100125DF8(v3, v7);
  return sub_10002B210(v7);
}

void sub_1015BE728(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10002B210(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1015BE73C(uint64_t a1, int a2)
{
  v4 = a2;
  v2 = *(a1 + 8);
  v5[0] = off_101F52E88;
  v5[1] = &v4;
  v5[3] = v5;
  sub_100125DF8(v2, v5);
  return sub_10002B210(v5);
}

void sub_1015BE7CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10002B210(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1015BE7E0(uint64_t a1, int a2, int a3)
{
  v5 = a3;
  v6 = a2;
  v3 = *(a1 + 8);
  v7[0] = off_101F52F08;
  v7[1] = &v5;
  v7[2] = &v6;
  v7[3] = v7;
  sub_100125DF8(v3, v7);
  return sub_10002B210(v7);
}

void sub_1015BE874(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10002B210(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1015BE888(uint64_t a1, int a2, int a3)
{
  v5 = a3;
  v6 = a2;
  v3 = *(a1 + 8);
  v7[0] = off_101F52F88;
  v7[1] = &v5;
  v7[2] = &v6;
  v7[3] = v7;
  sub_100125DF8(v3, v7);
  return sub_10002B210(v7);
}

void sub_1015BE91C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10002B210(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1015BE930(uint64_t a1, int a2, int a3)
{
  v5 = a3;
  v6 = a2;
  v3 = *(a1 + 8);
  v7[0] = off_101F53008;
  v7[1] = &v5;
  v7[2] = &v6;
  v7[3] = v7;
  sub_100125DF8(v3, v7);
  return sub_10002B210(v7);
}

void sub_1015BE9C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10002B210(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1015BE9D8(uint64_t a1, int a2)
{
  v4 = a2;
  v2 = *(a1 + 8);
  v5[0] = off_101F53088;
  v5[1] = &v4;
  v5[3] = v5;
  sub_100125DF8(v2, v5);
  return sub_10002B210(v5);
}

void sub_1015BEA68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10002B210(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1015BEA7C(uint64_t a1, int a2)
{
  v4 = a2;
  v2 = *(a1 + 8);
  v5[0] = off_101F53108;
  v5[1] = &v4;
  v5[3] = v5;
  sub_100125DF8(v2, v5);
  return sub_10002B210(v5);
}

void sub_1015BEB0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10002B210(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1015BEB20(uint64_t a1, int a2, int a3)
{
  v5 = a3;
  v6 = a2;
  v3 = *(a1 + 8);
  v7[0] = off_101F53188;
  v7[1] = &v5;
  v7[2] = &v6;
  v7[3] = v7;
  sub_100125DF8(v3, v7);
  return sub_10002B210(v7);
}

void sub_1015BEBB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10002B210(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1015BEBC8(uint64_t a1, int a2)
{
  v4 = a2;
  v2 = *(a1 + 8);
  v5[0] = off_101F53208;
  v5[1] = &v4;
  v5[3] = v5;
  sub_100125DF8(v2, v5);
  return sub_10002B210(v5);
}

void sub_1015BEC58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10002B210(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1015BEC6C(uint64_t a1, int a2)
{
  v4 = a2;
  v2 = *(a1 + 8);
  v5[0] = off_101F53288;
  v5[1] = &v4;
  v5[3] = v5;
  sub_100125DF8(v2, v5);
  return sub_10002B210(v5);
}

void sub_1015BECFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10002B210(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1015BED10(uint64_t a1, int a2)
{
  v4 = a2;
  v2 = *(a1 + 8);
  v5[0] = off_101F53308;
  v5[1] = &v4;
  v5[3] = v5;
  sub_100125DF8(v2, v5);
  return sub_10002B210(v5);
}

void sub_1015BEDA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10002B210(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1015BEDB4(uint64_t a1, int a2)
{
  v4 = a2;
  v2 = *(a1 + 8);
  v5[0] = off_101F53388;
  v5[1] = &v4;
  v5[3] = v5;
  sub_100125DF8(v2, v5);
  return sub_10002B210(v5);
}

void sub_1015BEE44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10002B210(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1015BEE58(uint64_t a1, int a2)
{
  v4 = a2;
  v2 = *(a1 + 8);
  v5[0] = off_101F53408;
  v5[1] = &v4;
  v5[3] = v5;
  sub_100125DF8(v2, v5);
  return sub_10002B210(v5);
}

void sub_1015BEEE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10002B210(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1015BEEFC(uint64_t a1, int a2)
{
  v4 = a2;
  v2 = *(a1 + 8);
  v5[0] = off_101F53488;
  v5[1] = &v4;
  v5[3] = v5;
  sub_100125DF8(v2, v5);
  return sub_10002B210(v5);
}

void sub_1015BEF8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10002B210(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1015BEFA0(uint64_t a1, int a2)
{
  v4 = a2;
  v2 = *(a1 + 8);
  v5[0] = off_101F53508;
  v5[1] = &v4;
  v5[3] = v5;
  sub_100125DF8(v2, v5);
  return sub_10002B210(v5);
}

void sub_1015BF030(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10002B210(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1015BF044(uint64_t a1, int a2)
{
  v4 = a2;
  v2 = *(a1 + 8);
  v5[0] = off_101F53588;
  v5[1] = &v4;
  v5[3] = v5;
  sub_100125DF8(v2, v5);
  return sub_10002B210(v5);
}

void sub_1015BF0D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10002B210(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1015BF0E8(uint64_t a1, int a2)
{
  v4 = a2;
  v2 = *(a1 + 8);
  v5[0] = off_101F53608;
  v5[1] = &v4;
  v5[3] = v5;
  sub_100125DF8(v2, v5);
  return sub_10002B210(v5);
}

void sub_1015BF178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10002B210(va);
  _Unwind_Resume(a1);
}

const void **sub_1015BF18C(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v14 = a2;
  if (*(a4 + 23) < 0)
  {
    sub_100005F2C(v11, *a4, *(a4 + 8));
  }

  else
  {
    *v11 = *a4;
    v12 = *(a4 + 16);
  }

  if (SHIBYTE(v12) < 0)
  {
    sub_100005F2C(__dst, v11[0], v11[1]);
  }

  else
  {
    *__dst = *v11;
    v17 = v12;
  }

  v15 = 0;
  if (SHIBYTE(v17) < 0)
  {
    sub_100005F2C(__p, __dst[0], __dst[1]);
  }

  else
  {
    *__p = *__dst;
    v19 = v17;
  }

  v20 = 0;
  if (ctu::cf::convert_copy())
  {
    v6 = v15;
    v15 = v20;
    v21 = v6;
    sub_100005978(&v21);
  }

  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p[0]);
  }

  v7 = v15;
  v13 = v15;
  v15 = 0;
  sub_100005978(&v15);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__dst[0]);
  }

  if (SHIBYTE(v12) < 0)
  {
    operator delete(v11[0]);
  }

  v8 = v7;
  __p[0] = [CTXPCError errorForCode:a3 errorString:v8];
  v9 = *(a1 + 8);
  v22[0] = off_101F53688;
  v22[1] = &v14;
  v22[2] = __p;
  v22[3] = v22;
  sub_100125DF8(v9, v22);
  sub_10002B210(v22);

  return sub_100005978(&v13);
}

void sub_1015BF368(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, const void *a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  sub_100005978(&a17);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(a1);
}

void sub_1015BF3F0(CTXPCSuppServicesNotificationInterface *this)
{
  *this = off_101F521A0;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  CTXPCSuppServicesNotificationInterface::~CTXPCSuppServicesNotificationInterface(this);
}

void sub_1015BF44C(CTXPCSuppServicesNotificationInterface *this)
{
  *this = off_101F521A0;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  CTXPCSuppServicesNotificationInterface::~CTXPCSuppServicesNotificationInterface(this);

  operator delete();
}

void sub_1015BF524(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 320))(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1015BF568(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1015BF5A0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 320))();
  }

  return result;
}

uint64_t sub_1015BF5D8(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1015BF694(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F52388;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_1015BF6CC(unsigned int **a1, id *a2)
{
  v7 = *a2;
  v3 = objc_opt_new();
  v4 = [NSNumber numberWithInt:*a1[1]];
  [v3 setCallForwardingReason:v4];

  v5 = [NSNumber numberWithInt:*a1[2]];
  [v3 setCallClass:v5];

  v6 = [CTXPCPlaceholder simSlot:*a1[3]];
  [v7 suppServicesEvent:v6 event:2 settingsType:1 data:v3];
}

void sub_1015BF7BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

uint64_t sub_1015BF7FC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1015BF8C4(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F52408;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_1015BF8FC(unsigned int **a1, id *a2)
{
  v8 = *a2;
  v3 = objc_opt_new();
  v4 = [NSNumber numberWithInt:*a1[1]];
  [v3 setCallForwardingReason:v4];

  v5 = [NSNumber numberWithInt:*a1[2]];
  [v3 setCallClass:v5];

  v6 = [NSNumber numberWithInt:*a1[3]];
  [v3 setMmiProcedure:v6];

  v7 = [CTXPCPlaceholder simSlot:*a1[4]];
  [v8 suppServicesEvent:v7 event:4 settingsType:1 data:v3];
}

void sub_1015BFA14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

uint64_t sub_1015BFA58(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1015BFB28(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F52488;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void sub_1015BFB68(uint64_t a1, id *a2)
{
  v3 = *a2;
  v4 = objc_opt_new();
  v5 = [NSNumber numberWithInt:**(a1 + 8)];
  [v4 setCallForwardingReason:v5];

  v6 = [NSNumber numberWithInt:**(a1 + 16)];
  [v4 setCallClass:v6];

  v7 = [NSNumber numberWithBool:**(a1 + 24)];
  [v4 setEnabled:v7];

  CSIPhoneNumber::getFullNumber(v14, *(a1 + 32));
  if (SHIBYTE(v15) < 0)
  {
    sub_100005F2C(__dst, v14[0], v14[1]);
  }

  else
  {
    *__dst = *v14;
    v19 = v15;
  }

  v17 = 0;
  if (SHIBYTE(v19) < 0)
  {
    sub_100005F2C(__p, __dst[0], __dst[1]);
  }

  else
  {
    *__p = *__dst;
    v21 = v19;
  }

  v22 = 0;
  if (ctu::cf::convert_copy())
  {
    v8 = v17;
    v17 = v22;
    v23 = v8;
    sub_100005978(&v23);
  }

  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p[0]);
  }

  v9 = v17;
  v16 = v17;
  v17 = 0;
  sub_100005978(&v17);
  if (SHIBYTE(v19) < 0)
  {
    operator delete(__dst[0]);
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(v14[0]);
    if (!v9)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (v9)
  {
LABEL_17:
    [v4 setCallForwardingNumber:v9];
  }

LABEL_18:
  if (**(a1 + 8) == 2)
  {
    v10 = **(a1 + 40);
    __dst[0] = 0;
    LODWORD(__p[0]) = v10;
    v11 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, __p);
    if (v11)
    {
      __dst[0] = v11;
      __p[0] = 0;
      sub_100029A48(__p);
      v12 = __dst[0];
    }

    else
    {
      v12 = 0;
    }

    v23 = v12;
    __dst[0] = 0;
    sub_100029A48(__dst);
    if (v12)
    {
      [v4 setCallForwardingNoReplyTime:v12];
    }

    sub_100029A48(&v23);
  }

  v13 = [CTXPCPlaceholder simSlot:**(a1 + 48)];
  [v3 suppServicesEvent:v13 event:1 settingsType:1 data:v4];

  sub_100005978(&v16);
}

void sub_1015BFDF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, const void *a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  sub_100029A48((v34 - 56));
  sub_100005978(&a16);

  _Unwind_Resume(a1);
}

uint64_t sub_1015BFEB0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1015BFF78(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F52508;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_1015BFFB0(unsigned int **a1, id *a2)
{
  v8 = *a2;
  v3 = objc_opt_new();
  v4 = [NSNumber numberWithInt:*a1[1]];
  [v3 setCallForwardingReason:v4];

  v5 = [NSNumber numberWithInt:*a1[2]];
  [v3 setCallClass:v5];

  v6 = [NSNumber numberWithInt:*a1[3]];
  [v3 setMmiProcedure:v6];

  v7 = [CTXPCPlaceholder simSlot:*a1[4]];
  [v8 suppServicesEvent:v7 event:3 settingsType:1 data:v3];
}

void sub_1015C00C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

uint64_t sub_1015C010C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1015C01CC(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F52588;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_1015C01FC(uint64_t a1, id *a2)
{
  v6 = *a2;
  v3 = objc_opt_new();
  v4 = [NSNumber numberWithBool:**(a1 + 8)];
  [v3 setActive:v4];

  v5 = [CTXPCPlaceholder simSlot:**(a1 + 16)];
  [v6 suppServicesEvent:v5 event:5 settingsType:2 data:v3];
}

void sub_1015C02C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

uint64_t sub_1015C0300(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1015C03C0(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F52608;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_1015C03F0(uint64_t a1, id *a2)
{
  v6 = *a2;
  v3 = objc_opt_new();
  v4 = [NSNumber numberWithInt:**(a1 + 8)];
  [v3 setCallClass:v4];

  v5 = [CTXPCPlaceholder simSlot:**(a1 + 16)];
  [v6 suppServicesEvent:v5 event:2 settingsType:3 data:v3];
}

void sub_1015C04B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

uint64_t sub_1015C04F4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1015C05BC(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F52688;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_1015C05F4(unsigned int **a1, id *a2)
{
  v7 = *a2;
  v3 = objc_opt_new();
  v4 = [NSNumber numberWithInt:*a1[1]];
  [v3 setCallClass:v4];

  v5 = [NSNumber numberWithInt:*a1[2]];
  [v3 setMmiProcedure:v5];

  v6 = [CTXPCPlaceholder simSlot:*a1[3]];
  [v7 suppServicesEvent:v6 event:4 settingsType:3 data:v3];
}

void sub_1015C06E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

uint64_t sub_1015C0724(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1015C07EC(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F52708;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_1015C0824(uint64_t a1, id *a2)
{
  v7 = *a2;
  v3 = objc_opt_new();
  v4 = [NSNumber numberWithInt:**(a1 + 8)];
  [v3 setCallClass:v4];

  v5 = [NSNumber numberWithBool:**(a1 + 16)];
  [v3 setEnabled:v5];

  v6 = [CTXPCPlaceholder simSlot:**(a1 + 24)];
  [v7 suppServicesEvent:v6 event:1 settingsType:3 data:v3];
}

void sub_1015C0914(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

uint64_t sub_1015C0954(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1015C0A1C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F52788;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_1015C0A54(unsigned int **a1, id *a2)
{
  v7 = *a2;
  v3 = objc_opt_new();
  v4 = [NSNumber numberWithInt:*a1[1]];
  [v3 setCallClass:v4];

  v5 = [NSNumber numberWithInt:*a1[2]];
  [v3 setMmiProcedure:v5];

  v6 = [CTXPCPlaceholder simSlot:*a1[3]];
  [v7 suppServicesEvent:v6 event:3 settingsType:3 data:v3];
}

void sub_1015C0B44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

uint64_t sub_1015C0B84(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1015C0C4C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F52808;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_1015C0C84(unsigned int **a1, id *a2)
{
  v7 = *a2;
  v3 = objc_opt_new();
  v4 = [NSNumber numberWithInt:*a1[1]];
  [v3 setCallClass:v4];

  v5 = [NSNumber numberWithInt:*a1[2]];
  [v3 setCallBarringFacility:v5];

  v6 = [CTXPCPlaceholder simSlot:*a1[3]];
  [v7 suppServicesEvent:v6 event:2 settingsType:4 data:v3];
}

void sub_1015C0D74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

uint64_t sub_1015C0DB4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1015C0E7C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F52888;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_1015C0EB4(unsigned int **a1, id *a2)
{
  v8 = *a2;
  v3 = objc_opt_new();
  v4 = [NSNumber numberWithInt:*a1[1]];
  [v3 setCallClass:v4];

  v5 = [NSNumber numberWithInt:*a1[2]];
  [v3 setMmiProcedure:v5];

  v6 = [NSNumber numberWithInt:*a1[3]];
  [v3 setCallBarringFacility:v6];

  v7 = [CTXPCPlaceholder simSlot:*a1[4]];
  [v8 suppServicesEvent:v7 event:4 settingsType:4 data:v3];
}

void sub_1015C0FCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

uint64_t sub_1015C1010(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1015C10D8(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F52908;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_1015C1110(uint64_t a1, id *a2)
{
  v8 = *a2;
  v3 = objc_opt_new();
  v4 = [NSNumber numberWithInt:**(a1 + 8)];
  [v3 setCallClass:v4];

  v5 = [NSNumber numberWithInt:**(a1 + 16)];
  [v3 setCallBarringFacility:v5];

  v6 = [NSNumber numberWithBool:**(a1 + 24)];
  [v3 setEnabled:v6];

  v7 = [CTXPCPlaceholder simSlot:**(a1 + 32)];
  [v8 suppServicesEvent:v7 event:1 settingsType:4 data:v3];
}

void sub_1015C1228(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

uint64_t sub_1015C126C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1015C1334(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F52988;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_1015C136C(unsigned int **a1, id *a2)
{
  v8 = *a2;
  v3 = objc_opt_new();
  v4 = [NSNumber numberWithInt:*a1[1]];
  [v3 setCallClass:v4];

  v5 = [NSNumber numberWithInt:*a1[2]];
  [v3 setMmiProcedure:v5];

  v6 = [NSNumber numberWithInt:*a1[3]];
  [v3 setCallBarringFacility:v6];

  v7 = [CTXPCPlaceholder simSlot:*a1[4]];
  [v8 suppServicesEvent:v7 event:3 settingsType:4 data:v3];
}

void sub_1015C1484(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

uint64_t sub_1015C14C8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1015C1588(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F52A08;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_1015C15B8(uint64_t a1, id *a2)
{
  v6 = *a2;
  v3 = objc_opt_new();
  v4 = [NSNumber numberWithUnsignedInt:**(a1 + 8)];
  [v3 setSupplementaryServiceType:v4];

  v5 = [CTXPCPlaceholder simSlot:**(a1 + 16)];
  [v6 suppServicesEvent:v5 event:3 settingsType:5 data:v3];
}

void sub_1015C1680(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

uint64_t sub_1015C16BC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1015C177C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F52A88;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_1015C17AC(uint64_t a1, id *a2)
{
  v6 = *a2;
  v3 = objc_opt_new();
  v4 = [NSNumber numberWithUnsignedInt:**(a1 + 8)];
  [v3 setSupplementaryServiceType:v4];

  v5 = [CTXPCPlaceholder simSlot:**(a1 + 16)];
  [v6 suppServicesEvent:v5 event:4 settingsType:5 data:v3];
}

void sub_1015C1874(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

uint64_t sub_1015C18B0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1015C1978(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F52B08;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_1015C19B0(uint64_t a1, id *a2)
{
  v8 = *a2;
  v3 = objc_opt_new();
  v4 = [NSNumber numberWithInt:**(a1 + 8)];
  [v3 setCallingLineIdRestriction:v4];

  if (**(a1 + 16))
  {
    if (**(a1 + 16) == 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = 2;
    }

    v6 = [NSNumber numberWithInt:v5];
    [v3 setCallingLineIdRestrictionModification:v6];
  }

  v7 = [CTXPCPlaceholder simSlot:**(a1 + 24)];
  [v8 suppServicesEvent:v7 event:1 settingsType:6 data:v3];
}

uint64_t sub_1015C1AF4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1015C1BB4(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F52B88;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_1015C1BE4(uint64_t a1, id *a2)
{
  v7 = *a2;
  v3 = objc_opt_new();
  if (**(a1 + 8))
  {
    if (**(a1 + 8) == 1)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }

    v5 = [NSNumber numberWithInt:v4];
    [v3 setCallingLineIdRestrictionModification:v5];
  }

  v6 = [CTXPCPlaceholder simSlot:**(a1 + 16)];
  [v7 suppServicesEvent:v6 event:2 settingsType:6 data:v3];
}

uint64_t sub_1015C1CFC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1015C1DBC(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F52C08;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_1015C1DEC(uint64_t a1, id *a2)
{
  v6 = *a2;
  v3 = objc_opt_new();
  v4 = [NSNumber numberWithInt:**(a1 + 8)];
  [v3 setMmiProcedure:v4];

  v5 = [CTXPCPlaceholder simSlot:**(a1 + 16)];
  [v6 suppServicesEvent:v5 event:4 settingsType:6 data:v3];
}

void sub_1015C1EB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

uint64_t sub_1015C1EF0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1015C1FB0(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F52C88;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_1015C1FE0(uint64_t a1, id *a2)
{
  v6 = *a2;
  v3 = objc_opt_new();
  v4 = [NSNumber numberWithInt:**(a1 + 8)];
  [v3 setMmiProcedure:v4];

  v5 = [CTXPCPlaceholder simSlot:**(a1 + 16)];
  [v6 suppServicesEvent:v5 event:3 settingsType:6 data:v3];
}

void sub_1015C20A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

uint64_t sub_1015C20E4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1015C21A0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F52D08;
  a2[1] = v2;
  return result;
}

void sub_1015C21CC(uint64_t a1, id *a2)
{
  v4 = *a2;
  v3 = [CTXPCPlaceholder simSlot:**(a1 + 8)];
  [v4 suppServicesEvent:v3 event:6 settingsType:6 data:0];
}

uint64_t sub_1015C226C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1015C232C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F52D88;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_1015C235C(uint64_t a1, id *a2)
{
  v6 = *a2;
  v3 = objc_opt_new();
  v4 = [NSNumber numberWithInt:**(a1 + 8)];
  [v3 setConnectedLineIdRestriction:v4];

  v5 = [CTXPCPlaceholder simSlot:**(a1 + 16)];
  [v6 suppServicesEvent:v5 event:1 settingsType:7 data:v3];
}

void sub_1015C2424(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

uint64_t sub_1015C2460(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1015C2520(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F52E08;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_1015C2550(uint64_t a1, id *a2)
{
  v5 = *a2;
  v3 = [CTXPCPlaceholder simSlot:**(a1 + 8)];
  if (**(a1 + 16))
  {
    v4 = 8;
  }

  else
  {
    v4 = 9;
  }

  [v5 suppServicesEvent:v3 event:2 settingsType:v4 data:0];
}

uint64_t sub_1015C2600(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1015C26BC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F52E88;
  a2[1] = v2;
  return result;
}

void sub_1015C26E8(uint64_t a1, id *a2)
{
  v4 = *a2;
  v3 = [CTXPCPlaceholder simSlot:**(a1 + 8)];
  [v4 suppServicesEvent:v3 event:2 settingsType:7 data:0];
}

uint64_t sub_1015C2788(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1015C2848(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F52F08;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_1015C2878(uint64_t a1, id *a2)
{
  v6 = *a2;
  v3 = objc_opt_new();
  v4 = [NSNumber numberWithInt:**(a1 + 8)];
  [v3 setConnectedLinePresentation:v4];

  v5 = [CTXPCPlaceholder simSlot:**(a1 + 16)];
  [v6 suppServicesEvent:v5 event:1 settingsType:9 data:v3];
}

void sub_1015C2940(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

uint64_t sub_1015C297C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1015C2A3C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F52F88;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_1015C2A6C(uint64_t a1, id *a2)
{
  v6 = *a2;
  v3 = objc_opt_new();
  v4 = [NSNumber numberWithInt:**(a1 + 8)];
  [v3 setCallingLinePresentation:v4];

  v5 = [CTXPCPlaceholder simSlot:**(a1 + 16)];
  [v6 suppServicesEvent:v5 event:1 settingsType:8 data:v3];
}

void sub_1015C2B34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

uint64_t sub_1015C2B70(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1015C2C30(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F53008;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_1015C2C60(uint64_t a1, id *a2)
{
  v6 = *a2;
  v3 = objc_opt_new();
  v4 = [NSNumber numberWithInt:**(a1 + 8)];
  [v3 setCallingLinePresentation:v4];

  v5 = [CTXPCPlaceholder simSlot:**(a1 + 16)];
  [v6 suppServicesEvent:v5 event:3 settingsType:8 data:v3];
}

void sub_1015C2D28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

uint64_t sub_1015C2D64(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1015C2E20(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F53088;
  a2[1] = v2;
  return result;
}

void sub_1015C2E4C(uint64_t a1, id *a2)
{
  v4 = *a2;
  v3 = [CTXPCPlaceholder simSlot:**(a1 + 8)];
  [v4 suppServicesEvent:v3 event:4 settingsType:8 data:0];
}

uint64_t sub_1015C2EEC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1015C2FA8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F53108;
  a2[1] = v2;
  return result;
}

void sub_1015C2FD4(uint64_t a1, id *a2)
{
  v4 = *a2;
  v3 = [CTXPCPlaceholder simSlot:**(a1 + 8)];
  [v4 suppServicesEvent:v3 event:2 settingsType:11 data:0];
}

uint64_t sub_1015C3074(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1015C3134(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F53188;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_1015C3164(uint64_t a1, id *a2)
{
  v6 = *a2;
  v3 = objc_opt_new();
  v4 = [NSNumber numberWithBool:**(a1 + 8) != 0];
  [v3 setCallingNamePresentation:v4];

  v5 = [CTXPCPlaceholder simSlot:**(a1 + 16)];
  [v6 suppServicesEvent:v5 event:1 settingsType:11 data:v3];
}

void sub_1015C3234(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

uint64_t sub_1015C3270(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1015C332C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F53208;
  a2[1] = v2;
  return result;
}

void sub_1015C3358(uint64_t a1, id *a2)
{
  v4 = *a2;
  v3 = [CTXPCPlaceholder simSlot:**(a1 + 8)];
  [v4 spcUnlockSuccessful:v3];
}

uint64_t sub_1015C33EC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1015C34A8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F53288;
  a2[1] = v2;
  return result;
}

void sub_1015C34D4(uint64_t a1, id *a2)
{
  v4 = *a2;
  v3 = [CTXPCPlaceholder simSlot:**(a1 + 8)];
  [v4 phoneBookSelected:v3];
}

uint64_t sub_1015C3568(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1015C3624(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F53308;
  a2[1] = v2;
  return result;
}

void sub_1015C3650(uint64_t a1, id *a2)
{
  v4 = *a2;
  v3 = [CTXPCPlaceholder simSlot:**(a1 + 8)];
  [v4 phoneBookFetched:v3];
}

uint64_t sub_1015C36E4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1015C37A0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F53388;
  a2[1] = v2;
  return result;
}

void sub_1015C37CC(uint64_t a1, id *a2)
{
  v4 = *a2;
  v3 = [CTXPCPlaceholder simSlot:**(a1 + 8)];
  [v4 phoneBookWritten:v3];
}

uint64_t sub_1015C3860(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1015C391C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F53408;
  a2[1] = v2;
  return result;
}

void sub_1015C3948(uint64_t a1, id *a2)
{
  v4 = *a2;
  v3 = [CTXPCPlaceholder simSlot:**(a1 + 8)];
  [v4 phoneBookError:v3];
}

uint64_t sub_1015C39DC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1015C3A98(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F53488;
  a2[1] = v2;
  return result;
}

void sub_1015C3AC4(uint64_t a1, id *a2)
{
  v4 = *a2;
  v3 = [CTXPCPlaceholder simSlot:**(a1 + 8)];
  [v4 phoneNumberAvailable:v3];
}

uint64_t sub_1015C3B58(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1015C3C14(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F53508;
  a2[1] = v2;
  return result;
}

void sub_1015C3C40(uint64_t a1, id *a2)
{
  v4 = *a2;
  v3 = [CTXPCPlaceholder simSlot:**(a1 + 8)];
  [v4 phoneNumberChanged:v3];
}

uint64_t sub_1015C3CD4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1015C3D90(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F53588;
  a2[1] = v2;
  return result;
}

void sub_1015C3DBC(uint64_t a1, id *a2)
{
  v4 = *a2;
  v3 = [CTXPCPlaceholder simSlot:**(a1 + 8)];
  [v4 suppServicesStarted:v3];
}

uint64_t sub_1015C3E50(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1015C3F0C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F53608;
  a2[1] = v2;
  return result;
}

void sub_1015C3F38(uint64_t a1, id *a2)
{
  v4 = *a2;
  v3 = [CTXPCPlaceholder simSlot:**(a1 + 8)];
  [v4 suppServicesCompleted:v3];
}

uint64_t sub_1015C3FCC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1015C408C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F53688;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_1015C40BC(uint64_t a1, id *a2)
{
  v4 = *a2;
  v3 = [CTXPCPlaceholder simSlot:**(a1 + 8)];
  [v4 suppServicesError:v3 error:**(a1 + 16)];
}

uint64_t sub_1015C4158(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1015C41A4(double *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[2];
  v6 = *(a3 + 24);
  if (v6)
  {
    v7 = v6 - 1;
    *(a3 + 24) = v7;
    *(*(a3 + 8) - 1) |= (v5 > 0.0) << v7;
  }

  else
  {
    *(a3 + 24) = 7;
    v47 = (v5 > 0.0) << 7;
    sub_1001CD884(a3, &v47);
  }

  v8 = vcvtad_u64_f64(fabs(a1[2]) * 2097151.0 / 90.0);
  v9 = *(a3 + 24);
  if (!v9)
  {
    *(a3 + 24) = 3;
    v49 = (v8 >> 13) & 0xF8;
    v13 = &v49;
    goto LABEL_8;
  }

  v10 = v9 - 5;
  if (v9 < 5)
  {
    v11 = HIWORD(v8) & 0x1F;
    *(*(a3 + 8) - 1) |= v11 >> (5 - v9);
    v12 = *(a3 + 24) + 3;
    *(a3 + 24) = v12;
    v48 = v11 << v12;
    v13 = &v48;
LABEL_8:
    sub_1001CD884(a3, v13);
    goto LABEL_10;
  }

  *(a3 + 24) = v10;
  *(*(a3 + 8) - 1) |= (HIWORD(v8) & 0x1F) << v10;
LABEL_10:
  sub_100F2769C(a3, v8);
  v14 = a1[1];
  v15 = *(a3 + 24);
  if (v15)
  {
    v16 = v15 - 1;
    *(a3 + 24) = v16;
    *(*(a3 + 8) - 1) |= (v14 > 0.0) << v16;
  }

  else
  {
    *(a3 + 24) = 7;
    v50 = (v14 > 0.0) << 7;
    sub_1001CD884(a3, &v50);
  }

  v17 = vcvtad_u64_f64(fabs(a1[1]) * 4194303.0 / 180.0);
  v18 = *(a3 + 24);
  if (!v18)
  {
    *(a3 + 24) = 2;
    v52 = (v17 >> 14) & 0xFC;
    v22 = &v52;
    goto LABEL_17;
  }

  v19 = v18 - 6;
  if (v18 < 6)
  {
    v20 = HIWORD(v17) & 0x3F;
    *(*(a3 + 8) - 1) |= v20 >> (6 - v18);
    v21 = *(a3 + 24) + 2;
    *(a3 + 24) = v21;
    v51 = v20 << v21;
    v22 = &v51;
LABEL_17:
    sub_1001CD884(a3, v22);
    goto LABEL_19;
  }

  *(a3 + 24) = v19;
  *(*(a3 + 8) - 1) |= (HIWORD(v17) & 0x3F) << v19;
LABEL_19:
  sub_100F2769C(a3, v17);
  v23 = a1[4] + 450.0;
  if (v23 < 0.0)
  {
    v23 = 0.0;
  }

  if (v23 > 9350.0)
  {
    v23 = 9350.0;
  }

  v24 = llround(v23 * 2047.0 / 9350.0);
  v25 = *(a3 + 24);
  if (!v25)
  {
    *(a3 + 24) = 5;
    v58 = (v24 >> 3) & 0xE0;
    v29 = &v58;
    goto LABEL_27;
  }

  v26 = (v24 >> 8) & 7;
  v27 = v25 - 3;
  if (v25 < 3)
  {
    *(*(a3 + 8) - 1) |= v26 >> (3 - v25);
    v28 = *(a3 + 24) + 5;
    *(a3 + 24) = v28;
    v57 = v26 << v28;
    v29 = &v57;
LABEL_27:
    sub_1001CD884(a3, v29);
    goto LABEL_29;
  }

  *(a3 + 24) = v27;
  *(*(a3 + 8) - 1) |= v26 << v27;
LABEL_29:
  v30 = *(a3 + 24);
  if (!v30)
  {
    v60 = v24;
    v32 = &v60;
    goto LABEL_33;
  }

  v31 = v30 - 8;
  if (v30 < 8)
  {
    *(*(a3 + 8) - 1) |= v24 >> (8 - v30);
    v59 = v24 << *(a3 + 24);
    v32 = &v59;
LABEL_33:
    sub_1001CD884(a3, v32);
    goto LABEL_35;
  }

  *(a3 + 24) = v31;
  *(*(a3 + 8) - 1) |= v24 << v31;
LABEL_35:
  v33 = sub_1015C467C(ceil(a1[7] + 3.4));
  v34 = *(a3 + 24);
  if (!v34)
  {
    *(a3 + 24) = 4;
    v54 = 16 * v33;
    v38 = &v54;
    goto LABEL_39;
  }

  v35 = v33 & 0xF;
  v36 = v34 - 4;
  if (v34 < 4)
  {
    *(*(a3 + 8) - 1) |= v35 >> (4 - v34);
    v37 = *(a3 + 24) + 4;
    *(a3 + 24) = v37;
    v53 = v35 << v37;
    v38 = &v53;
LABEL_39:
    sub_1001CD884(a3, v38);
    goto LABEL_41;
  }

  *(a3 + 24) = v36;
  *(*(a3 + 8) - 1) |= v35 << v36;
LABEL_41:
  v39 = a1[8];
  v40 = 2.3;
  if (v39 <= 0.0)
  {
    v40 = 0.0;
  }

  v41 = sub_1015C467C(ceil(v39 + v40));
  v42 = *(a3 + 24);
  if (!v42)
  {
    *(a3 + 24) = 4;
    v56 = 16 * v41;
    v46 = &v56;
    goto LABEL_47;
  }

  v43 = v41 & 0xF;
  v44 = v42 - 4;
  if (v42 < 4)
  {
    *(*(a3 + 8) - 1) |= v43 >> (4 - v42);
    v45 = *(a3 + 24) + 4;
    *(a3 + 24) = v45;
    v55 = v43 << v45;
    v46 = &v55;
LABEL_47:
    sub_1001CD884(a3, v46);
    return;
  }

  *(a3 + 24) = v44;
  *(*(a3 + 8) - 1) |= v43 << v44;
}

uint64_t sub_1015C467C(double a1)
{
  v8[4] = xmmword_101999090;
  v8[5] = unk_1019990A0;
  v8[6] = xmmword_1019990B0;
  v9 = 0x408F400000000000;
  v8[0] = xmmword_101999050;
  v8[1] = unk_101999060;
  v8[2] = xmmword_101999070;
  v8[3] = unk_101999080;
  v6 = 0;
  v7 = 0;
  v5 = 0;
  sub_1000D02E4(&v5, v8, &v10, 0xFuLL);
  if (v6 - v5 != 120)
  {
    __assert_rtn("sMapUncertainityTo4Bits", "StewieLocationData_watch_ios.mm", 33, "rangeTable.size() == 15");
  }

  v2 = 0;
  for (i = 0; i < 0xFuLL; v2 = ++i)
  {
    if (v5[v2] >= a1)
    {
      break;
    }
  }

  v6 = v5;
  operator delete(v5);
  return i;
}

void sub_1015C47B4(EmergencyNumbersModelFactoryInterface *a1)
{
  *a1 = off_101F53708;
  v2 = *(a1 + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  EmergencyNumbersModelFactoryInterface::~EmergencyNumbersModelFactoryInterface(a1);
}

void sub_1015C4814(EmergencyNumbersModelFactoryInterface *a1)
{
  sub_1015C47B4(a1);

  operator delete();
}

void sub_1015C484C(uint64_t a1@<X0>, uint64_t *a2@<X1>, NSObject **a3@<X2>, _OWORD *a4@<X8>)
{
  v7 = *a3;
  if (*a3)
  {
    dispatch_retain(v7);
  }

  v8 = a2[1];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1013294E8((a1 + 8), &v9);
  *a4 = v9;
  v9 = 0uLL;
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  if (v7)
  {
    dispatch_release(v7);
  }
}

void sub_1015C48E8(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  if (v1)
  {
    dispatch_release(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1015C490C(uint64_t a1)
{
  v1 = a1;
  v2 = 0;
  sub_100A5C398(&v2, &v1, "kModuleOperation", sub_1015C49B4, 14);
}

void sub_1015C49B4(Registry **a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v29[0] = a4;
  v29[1] = "kModuleOperation";
  if (sub_1015C4E8C(v29, "get"))
  {
    v27 = 0uLL;
    v28 = 0;
    v24 = a4;
    v25 = "kModuleResourcePath";
    sub_100006354(&v24, &v26);
    v30 = 0;
    v31 = 0;
    v32 = 0;
    xpc::dyn_cast_or_default();
    if (SHIBYTE(v32) < 0)
    {
      operator delete(v30);
    }

    xpc_release(v26);
    v24 = 0;
    v30 = a4;
    v31 = "kModuleValue";
    sub_100006354(&v30, &v24);
    v8 = HIBYTE(v28);
    if (v28 < 0)
    {
      v8 = *(&v27 + 1);
    }

    if (v8)
    {
      Registry::getRestServer(&v30, *a1);
      v9 = v30;
      if (SHIBYTE(v28) < 0)
      {
        sub_100005F2C(&__p, v27, *(&v27 + 1));
      }

      else
      {
        __p = v27;
        v23 = v28;
      }

      object = v24;
      if (v24)
      {
        xpc_retain(v24);
      }

      else
      {
        object = xpc_null_create();
      }

      v19[0] = _NSConcreteStackBlock;
      v19[1] = 1174405120;
      v19[2] = sub_1015C4F30;
      v19[3] = &unk_101F53740;
      v12 = a5[1];
      v19[4] = *a5;
      v20 = v12;
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_100BFC2F0(v9, &__p, &object, v19);
      xpc_release(object);
      object = 0;
      if (SHIBYTE(v23) < 0)
      {
        operator delete(__p);
      }

      if (v31)
      {
        sub_100004A34(v31);
      }

      if (v20)
      {
        sub_100004A34(v20);
      }
    }

    xpc_release(v24);
  }

  else
  {
    if (!sub_1015C4E8C(v29, "set"))
    {
      return;
    }

    v27 = 0uLL;
    v28 = 0;
    v24 = a4;
    v25 = "kModuleResourcePath";
    sub_100006354(&v24, &v26);
    v30 = 0;
    v31 = 0;
    v32 = 0;
    xpc::dyn_cast_or_default();
    if (SHIBYTE(v32) < 0)
    {
      operator delete(v30);
    }

    xpc_release(v26);
    v24 = 0;
    v30 = a4;
    v31 = "kModuleValue";
    sub_100006354(&v30, &v24);
    v10 = HIBYTE(v28);
    if (v28 < 0)
    {
      v10 = *(&v27 + 1);
    }

    if (v10)
    {
      Registry::getRestServer(&v30, *a1);
      v11 = v30;
      if (SHIBYTE(v28) < 0)
      {
        sub_100005F2C(__dst, v27, *(&v27 + 1));
      }

      else
      {
        *__dst = v27;
        v18 = v28;
      }

      v16 = v24;
      if (v24)
      {
        xpc_retain(v24);
      }

      else
      {
        v16 = xpc_null_create();
      }

      v14[0] = _NSConcreteStackBlock;
      v14[1] = 1174405120;
      v14[2] = sub_1015C4FB4;
      v14[3] = &unk_101F53770;
      v13 = a5[1];
      v14[4] = *a5;
      v15 = v13;
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_100BFC940(v11, __dst, &v16, v14);
      xpc_release(v16);
      v16 = 0;
      if (SHIBYTE(v18) < 0)
      {
        operator delete(__dst[0]);
      }

      if (v31)
      {
        sub_100004A34(v31);
      }

      if (v15)
      {
        sub_100004A34(v15);
      }
    }

    xpc_release(v24);
  }

  if (SHIBYTE(v28) < 0)
  {
    operator delete(v27);
  }
}

void sub_1015C4D48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, xpc_object_t object, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, xpc_object_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  v37 = *(v35 - 64);
  if (v37)
  {
    sub_100004A34(v37);
  }

  xpc_release(*(v35 - 136));
  if (*(v35 - 89) < 0)
  {
    operator delete(*(v35 - 112));
  }

  _Unwind_Resume(a1);
}

BOOL sub_1015C4E8C(uint64_t a1, const char *a2)
{
  object1 = 0;
  sub_100006354(a1, &object1);
  v3 = xpc_string_create(a2);
  if (!v3)
  {
    v3 = xpc_null_create();
  }

  v4 = xpc_equal(object1, v3);
  xpc_release(v3);
  xpc_release(object1);
  return v4;
}

void sub_1015C4F08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  xpc_release(v10);
  xpc_release(object);
  _Unwind_Resume(a1);
}

void sub_1015C4F30(uint64_t a1, void **a2)
{
  v3 = *a2;
  v5 = v3;
  if (v3)
  {
    xpc_retain(v3);
  }

  else
  {
    v5 = xpc_null_create();
  }

  v4[0] = *(a1 + 32);
  v4[1] = "kModuleValue";
  sub_10000F688(v4, &v5, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v5);
}

void sub_1015C4FB4(uint64_t a1, void **a2)
{
  v3 = *a2;
  v5 = v3;
  if (v3)
  {
    xpc_retain(v3);
  }

  else
  {
    v5 = xpc_null_create();
  }

  v4[0] = *(a1 + 32);
  v4[1] = "kModuleValue";
  sub_10000F688(v4, &v5, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v5);
}

uint64_t *CellBroadcastConfig::getEnhancedDeliveryPrefKey@<X0>(uint64_t *__return_ptr a1@<X8>, const __CFString *a2@<X1>)
{
  result = CFStringCreateWithFormat(0, 0, @"%@%@%@", @"CellBroadcastSetting", a2, @"EnhancedDeliveryPref");
  *a1 = result;
  return result;
}

void CellBroadcastConfig::create(uint64_t *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  operator new();
}

const void **sub_1015C5A74(void *a1, Registry **a2, uint64_t a3)
{
  cf = 0;
  sub_10115BA5C(a2, a3, 2, @"CellBroadcast", 0, 0, &v5);
  sub_100010180(&cf, &v5);
  sub_10000A1EC(&v5);
  sub_1000391C8(a1, cf);
  return sub_10001021C(&cf);
}

const void **sub_1015C5B00(void *a1, Registry **a2, uint64_t a3, const void *a4, const void *a5)
{
  theDict = 0;
  sub_1015C5A74(&v11, a2, a3);
  sub_100010180(&theDict, &v11);
  sub_10000A1EC(&v11);
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, a4);
    v9 = Value;
    v11 = Value;
    if (Value)
    {
      CFRetain(Value);
      *a1 = v9;
      v11 = 0;
    }

    else
    {
      sub_1000391C8(a1, a5);
    }

    sub_10000A1EC(&v11);
  }

  else
  {
    sub_1000391C8(a1, a5);
  }

  return sub_10001021C(&theDict);
}

void sub_1015C5BB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10001021C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1015C5BDC(uint64_t result, int a2)
{
  if (a2 == 2)
  {
    v15 = v2;
    v16 = v3;
    v4 = result;
    if (*(result + 512) == 1)
    {
      result = subscriber::makeSimSlotRange();
      v5 = v12;
      v6 = v13;
      if (v12 != v13)
      {
        v7 = v14;
        do
        {
          result = v14(*v5);
          if (result)
          {
            break;
          }

          ++v5;
        }

        while (v5 != v13);
        v8 = v13;
        while (v5 != v8)
        {
          v9 = *v5;
          result = sub_1015C5D50(v4, v9);
          if (result)
          {
            v10 = *(*(**(v4 + 48) + 16))(*(v4 + 48), v9);
            if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
            {
              v11 = 0;
              _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Invalidating all Cell Broadcast Messages", &v11, 2u);
            }

            result = (*(**(v4 + 176) + 24))(*(v4 + 176), v9);
          }

          do
          {
            if (++v5 == v6)
            {
              break;
            }

            result = v7(*v5);
          }

          while ((result & 1) == 0);
        }
      }
    }
  }

  return result;
}

uint64_t sub_1015C5D50(uint64_t a1, uint64_t a2)
{
  theDict = 0;
  sub_1015C5B00(&v11, *(a1 + 368), a2, @"MessageValidityPeriod", 0);
  sub_100010180(&theDict, &v11);
  sub_10000A1EC(&v11);
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"AirplaneMode");
    v4 = Value;
    if (Value)
    {
      v5 = CFGetTypeID(Value);
      if (v5 == CFBooleanGetTypeID())
      {
        LOBYTE(v11) = 0;
        ctu::cf::assign(&v11, v4, v6);
        if (v11 != 1)
        {
          v9 = 1;
          goto LABEL_11;
        }
      }
    }

    v7 = *(a1 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      v8 = "#I No Airplane mode invalidation in the operator bundle";
LABEL_9:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v8, &v11, 2u);
    }
  }

  else
  {
    v7 = *(a1 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      v8 = "#I No information on validity period in the operator bundle";
      goto LABEL_9;
    }
  }

  v9 = 0;
LABEL_11:
  sub_10001021C(&theDict);
  return v9;
}

uint64_t sub_1015C5EA8(uint64_t a1, int a2)
{
  v5 = a1;
  v6 = a2;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 0x40000000;
  v7[2] = sub_1015D4094;
  v7[3] = &unk_101F53E80;
  v7[4] = a1 + 8;
  v7[5] = &v5;
  v8 = v7;
  v3 = a1 + 24;
  v2 = *(a1 + 24);
  if (*(v3 + 8))
  {
    v15 = 0;
    block = _NSConcreteStackBlock;
    v10 = 0x40000000;
    v11 = sub_10006A74C;
    v12 = &unk_101F53EC0;
    v13 = &v15;
    v14 = &v8;
    dispatch_async_and_wait(v2, &block);
  }

  else
  {
    v15 = 0;
    block = _NSConcreteStackBlock;
    v10 = 0x40000000;
    v11 = sub_1000597F0;
    v12 = &unk_101F53EA0;
    v13 = &v15;
    v14 = &v8;
    dispatch_sync(v2, &block);
  }

  return v15 & 1;
}

void sub_1015C5FDC(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v5 = a1;
  v6 = a2;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 0x40000000;
  v7[2] = sub_1015D40A4;
  v7[3] = &unk_101F53EE0;
  v7[4] = a1 + 8;
  v7[5] = &v5;
  v8 = v7;
  v4 = a1 + 24;
  v3 = *(a1 + 24);
  if (*(v4 + 8))
  {
    *a3 = 0;
    block = _NSConcreteStackBlock;
    v10 = 0x40000000;
    v11 = sub_1015D4630;
    v12 = &unk_101F53F20;
    v13 = a3;
    v14 = &v8;
    dispatch_async_and_wait(v3, &block);
  }

  else
  {
    *a3 = 0;
    block = _NSConcreteStackBlock;
    v10 = 0x40000000;
    v11 = sub_1015D45B8;
    v12 = &unk_101F53F00;
    v13 = a3;
    v14 = &v8;
    dispatch_sync(v3, &block);
  }
}

uint64_t sub_1015C6100(uint64_t a1, uint64_t a2)
{
  v4 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  if (sub_1015C635C(a1))
  {
    *buf = 0;
    sub_1015C5B00(&v8, *(a1 + 368), a2, @"AlertTypes", 0);
    sub_100010180(buf, &v8);
    sub_10000A1EC(&v8);
    v5 = *buf;
    *buf = 0;
    sub_10001021C(buf);
  }

  else
  {
    v6 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Copy Cell Broadcast Alert Types: Device does not support CMAS", buf, 2u);
    }

    return 0;
  }

  return v5;
}

void sub_1015C61FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10000A1EC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1015C6210(uint64_t a1)
{
  v8 = 0;
  v9 = 0;
  Registry::getMobileHelper(&v8, *(a1 + 240));
  if (v8)
  {
    *buf = 0;
    (*(*v8 + 16))(&v6);
    sub_10002FE1C(buf, &v6);
    sub_10000A1EC(&v6);
    if (*buf)
    {
      LOBYTE(v6) = 0;
      ctu::cf::assign(&v6, *buf, v2);
      v3 = v6;
    }

    else
    {
      v3 = 0;
    }

    sub_100045C8C(buf);
  }

  else
  {
    v4 = *(a1 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "MobileHelperInterface is absent. Defaulting the stored MMI preference to false", buf, 2u);
    }

    v3 = 0;
  }

  if (v9)
  {
    sub_100004A34(v9);
  }

  return v3 & 1;
}

void sub_1015C6324(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, const void *a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  sub_100045C8C(&a11);
  if (a14)
  {
    sub_100004A34(a14);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1015C635C(NSObject **a1)
{
  v6 = 0;
  v7 = 0;
  v8 = 0;
  capabilities::ct::getSupportedMessageModes(a1);
  v2 = 0;
  v3 = a1[5];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Device does not support CMAS", v5, 2u);
    v2 = v6;
  }

  if (v2)
  {
    v7 = v2;
    operator delete(v2);
  }

  return 0;
}

const void **sub_1015C6438(void *a1, Registry **a2, uint64_t a3)
{
  *a1 = 0;
  sub_1015C5B00(&v5, a2, a3, @"AutoReadOutLanguages", 0);
  sub_10006DD00(a1, &v5);
  return sub_10000A1EC(&v5);
}

void sub_1015C648C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10000A1EC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1015C64A0(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 0x40000000;
  v11[2] = sub_1015D46A8;
  v11[3] = &unk_101F53F40;
  v11[4] = a1 + 8;
  v11[5] = &v7;
  v12 = v11;
  v5 = a1 + 24;
  v4 = *(a1 + 24);
  if (*(v5 + 8))
  {
    v19 = 0;
    block = _NSConcreteStackBlock;
    v14 = 0x40000000;
    v15 = sub_10006A74C;
    v16 = &unk_101F53EC0;
    v17 = &v19;
    v18 = &v12;
    dispatch_async_and_wait(v4, &block);
  }

  else
  {
    v19 = 0;
    block = _NSConcreteStackBlock;
    v14 = 0x40000000;
    v15 = sub_1000597F0;
    v16 = &unk_101F53EA0;
    v17 = &v19;
    v18 = &v12;
    dispatch_sync(v4, &block);
  }

  return v19 & 1;
}

uint64_t sub_1015C65D8(uint64_t a1, uint64_t a2)
{
  v5[0] = a1;
  v5[1] = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = sub_1015D46BC;
  v6[3] = &unk_101F53F60;
  v6[4] = a1 + 8;
  v6[5] = v5;
  v7 = v6;
  v3 = a1 + 24;
  v2 = *(a1 + 24);
  if (*(v3 + 8))
  {
    v14 = 0;
    block = _NSConcreteStackBlock;
    v9 = 0x40000000;
    v10 = sub_10006A74C;
    v11 = &unk_101F53EC0;
    v12 = &v14;
    v13 = &v7;
    dispatch_async_and_wait(v2, &block);
  }

  else
  {
    v14 = 0;
    block = _NSConcreteStackBlock;
    v9 = 0x40000000;
    v10 = sub_1000597F0;
    v11 = &unk_101F53EA0;
    v12 = &v14;
    v13 = &v7;
    dispatch_sync(v2, &block);
  }

  return v14 & 1;
}

uint64_t sub_1015C6708(uint64_t a1, char a2)
{
  v5 = a1;
  v6 = a2;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 0x40000000;
  v7[2] = sub_1015D4798;
  v7[3] = &unk_101F53F80;
  v7[4] = a1 + 8;
  v7[5] = &v5;
  v8 = v7;
  v3 = a1 + 24;
  v2 = *(a1 + 24);
  if (*(v3 + 8))
  {
    v15 = 0;
    block = _NSConcreteStackBlock;
    v10 = 0x40000000;
    v11 = sub_10006A74C;
    v12 = &unk_101F53EC0;
    v13 = &v15;
    v14 = &v8;
    dispatch_async_and_wait(v2, &block);
  }

  else
  {
    v15 = 0;
    block = _NSConcreteStackBlock;
    v10 = 0x40000000;
    v11 = sub_1000597F0;
    v12 = &unk_101F53EA0;
    v13 = &v15;
    v14 = &v8;
    dispatch_sync(v2, &block);
  }

  return v15 & 1;
}

BOOL sub_1015C683C(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v6 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  v18 = 0;
  v19 = 0;
  Registry::getMobileHelper(&v18, *(a1 + 240));
  if (v18)
  {
    v17 = 0;
    (*(*v18 + 16))(buf);
    sub_10002FE1C(&v17, buf);
    sub_10000A1EC(buf);
    if (v17)
    {
      buf[0] = 0;
      ctu::cf::assign(buf, v17, v7);
      v8 = buf[0];
      *a3 = buf[0];
      v9 = *v6;
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
      {
        v10 = CSIBOOLAsString(v8);
        *buf = 136315138;
        *&buf[4] = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Auto read out preference set by user to %s", buf, 0xCu);
      }

      v11 = 1;
      goto LABEL_16;
    }

    *buf = 0;
    sub_1015C6438(buf, *(a1 + 368), a2);
    v11 = *buf != 0;
    if (*buf)
    {
      *a3 = 1;
      v13 = *v6;
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
      {
        *v16 = 0;
        v14 = "#I Auto read out languages exist in bundle, preference set to true";
LABEL_14:
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v14, v16, 2u);
      }
    }

    else
    {
      v13 = *v6;
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
      {
        *v16 = 0;
        v14 = "#I Auto read out languages don't exist in bundle, preference set to false";
        goto LABEL_14;
      }
    }

    sub_100010250(buf);
LABEL_16:
    sub_100045C8C(&v17);
    goto LABEL_17;
  }

  v12 = *(a1 + 40);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Mobile helper interface is absent", buf, 2u);
  }

  v11 = 0;
LABEL_17:
  if (v19)
  {
    sub_100004A34(v19);
  }

  return v11;
}

void sub_1015C6AA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_100045C8C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(a1);
}

uint64_t CellBroadcastConfig::getCellBroadcastSettingForAlertType_sync(uint64_t a1, uint64_t a2, const void *a3, _BYTE *a4)
{
  v8 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  if (a3)
  {
    v9 = v8;
    theDict = sub_1015C6100(a1, a2);
    if (!theDict)
    {
      v11 = 0;
LABEL_25:
      sub_10001021C(&theDict);
      return v11;
    }

    *buf = 0;
    v32 = 0;
    Registry::getMobileHelper(buf, *(a1 + 240));
    if (!*buf)
    {
      v13 = *(a1 + 40);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *v34 = 0;
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "MobileHelperInterface is absent", v34, 2u);
      }

      v11 = 0;
      goto LABEL_23;
    }

    v29 = 0;
    v30 = CFStringCreateWithFormat(0, 0, @"%@%@", @"CellBroadcastSetting", a3);
    (*(**buf + 16))(v34);
    sub_10002FE1C(&v29, v34);
    sub_10000A1EC(v34);
    if (v29)
    {
      v34[0] = 0;
      ctu::cf::assign(v34, v29, v10);
      *a4 = v34[0];
    }

    else
    {
      Value = CFDictionaryGetValue(theDict, a3);
      v15 = Value;
      if (!Value || (v16 = CFGetTypeID(Value), v16 != CFDictionaryGetTypeID()))
      {
        v21 = *v9;
        if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
        {
          *v34 = 138543362;
          v35 = a3;
          _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "No alert type found in the operator bundle with name %{public}@", v34, 0xCu);
        }

        v11 = 0;
        goto LABEL_22;
      }

      v17 = CFDictionaryGetValue(v15, @"EnabledByDefault");
      v18 = v17;
      if (v17 && (v19 = CFGetTypeID(v17), v19 == CFBooleanGetTypeID()))
      {
        v34[0] = 0;
        ctu::cf::assign(v34, v18, v20);
        *a4 = v34[0];
      }

      else
      {
        v23 = *v9;
        if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
        {
          *v34 = 138543362;
          v35 = a3;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I Cannot retrieve EnabledByDefault from the carrier bundle for alert type %{public}@", v34, 0xCu);
        }
      }

      v24 = CFDictionaryGetValue(v15, @"UseMMI");
      v25 = v24;
      if (v24)
      {
        v26 = CFGetTypeID(v24);
        if (v26 == CFBooleanGetTypeID())
        {
          v34[0] = 0;
          ctu::cf::assign(v34, v25, v27);
          if (v34[0] == 1 && (sub_1015C6210(a1) & 1) == 0)
          {
            *a4 = 0;
            v28 = *v9;
            if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
            {
              *v34 = 138543362;
              v35 = a3;
              _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I Alert disabled: [%{public}@] - as MMI command is not set", v34, 0xCu);
            }
          }
        }
      }
    }

    v11 = 1;
LABEL_22:
    sub_100045C8C(&v29);
    sub_100005978(&v30);
LABEL_23:
    if (v32)
    {
      sub_100004A34(v32);
    }

    goto LABEL_25;
  }

  v12 = *(a1 + 40);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Invalid alert type", buf, 2u);
  }

  return 0;
}

void sub_1015C6ED8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v8 = va_arg(va2, const void *);
  v10 = va_arg(va2, void);
  v11 = va_arg(va2, std::__shared_weak_count *);
  v12 = va_arg(va2, void);
  sub_100045C8C(va);
  sub_100005978(va1);
  if (v11)
  {
    sub_100004A34(v11);
  }

  sub_10001021C(va2);
  _Unwind_Resume(a1);
}

uint64_t sub_1015C6F40(uint64_t a1, int a2, uint64_t a3, char a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 0x40000000;
  v11[2] = sub_1015D4A8C;
  v11[3] = &unk_101F53FA0;
  v11[4] = a1 + 8;
  v11[5] = &v7;
  v12 = v11;
  v5 = a1 + 24;
  v4 = *(a1 + 24);
  if (*(v5 + 8))
  {
    v19 = 0;
    block = _NSConcreteStackBlock;
    v14 = 0x40000000;
    v15 = sub_10006A74C;
    v16 = &unk_101F53EC0;
    v17 = &v19;
    v18 = &v12;
    dispatch_async_and_wait(v4, &block);
  }

  else
  {
    v19 = 0;
    block = _NSConcreteStackBlock;
    v14 = 0x40000000;
    v15 = sub_1000597F0;
    v16 = &unk_101F53EA0;
    v17 = &v19;
    v18 = &v12;
    dispatch_sync(v4, &block);
  }

  return v19 & 1;
}

uint64_t sub_1015C707C(uint64_t a1, uint64_t a2, const __CFString *a3, int a4)
{
  v8 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  if (!a3)
  {
    v10 = *(a1 + 40);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    LOWORD(__p[0]) = 0;
    v11 = "Invalid alert type";
    v12 = v10;
    v13 = 2;
LABEL_61:
    _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, v11, __p, v13);
    return 0;
  }

  v50 = v8;
  (*(**(a1 + 48) + 16))(*(a1 + 48), a2);
  v9 = sub_1015C6100(a1, a2);
  theDict = v9;
  if (!v9)
  {
    sub_10001021C(&theDict);
LABEL_42:
    v41 = *v50;
    if (!os_log_type_enabled(*v50, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    LODWORD(__p[0]) = 138543362;
    *(__p + 4) = a3;
    v11 = "Not a known alert type %{public}@";
    v12 = v41;
    v13 = 12;
    goto LABEL_61;
  }

  v49 = a1;
  v48 = a4;
  if (CFDictionaryContainsKey(v9, a3))
  {
    sub_10001021C(&theDict);
    goto LABEL_32;
  }

  Count = CFDictionaryGetCount(theDict);
  memset(__p, 0, 24);
  values = 0;
  sub_1002C40F0(__p, Count, &values);
  values = 0;
  v52 = 0;
  v53 = 0;
  v55 = 0;
  sub_1002C40F0(&values, Count, &v55);
  CFDictionaryGetKeysAndValues(theDict, __p[0], values);
  theString2 = a3;
  if (Count < 1)
  {
    v16 = 0;
  }

  else
  {
    v15 = 0;
    v16 = 1;
    while (1)
    {
      v17 = values[v15];
      if (v17)
      {
        v18 = CFGetTypeID(values[v15]);
        if (v18 == CFDictionaryGetTypeID())
        {
          Value = CFDictionaryGetValue(v17, @"CustomPreferences");
          v20 = Value;
          if (Value)
          {
            v21 = CFGetTypeID(Value);
            if (v21 == CFArrayGetTypeID())
            {
              v22 = CFArrayGetCount(v20);
              if (v22 >= 1)
              {
                break;
              }
            }
          }
        }
      }

LABEL_24:
      v16 = ++v15 < Count;
      if (v15 == Count)
      {
        goto LABEL_27;
      }
    }

    v23 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v20, v23);
      v25 = ValueAtIndex;
      if (ValueAtIndex)
      {
        v26 = CFGetTypeID(ValueAtIndex);
        if (v26 == CFDictionaryGetTypeID())
        {
          v27 = CFDictionaryGetValue(v25, @"AlertType");
          v28 = v27;
          if (v27)
          {
            v29 = CFGetTypeID(v27);
            if (v29 == CFDictionaryGetTypeID())
            {
              v30 = CFDictionaryGetValue(v28, @"SwitchName");
              v31 = v30;
              if (v30)
              {
                v32 = CFGetTypeID(v30);
                if (v32 == CFStringGetTypeID() && CFStringCompare(v31, theString2, 0) == kCFCompareEqualTo)
                {
                  break;
                }
              }
            }
          }
        }
      }

      if (v22 == ++v23)
      {
        goto LABEL_24;
      }
    }
  }

LABEL_27:
  if (values)
  {
    v52 = values;
    operator delete(values);
  }

  a3 = theString2;
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  sub_10001021C(&theDict);
  if (!v16)
  {
    goto LABEL_42;
  }

LABEL_32:
  __p[0] = _NSConcreteStackBlock;
  __p[1] = 0x40000000;
  __p[2] = sub_100DB6EE8;
  __p[3] = &unk_101ED9A40;
  __p[4] = v49;
  v58 = 0;
  sub_100DB6D3C(0x80042, __p);
  v33 = (*(**(v49 + 48) + 16))(*(v49 + 48), a2);
  values = 0;
  v52 = 0;
  Registry::getMobileHelper(&values, *(v49 + 240));
  if (!values)
  {
    v42 = *(v49 + 40);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p[0]) = 0;
      _os_log_error_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "MobileHelperInterface is absent", __p, 2u);
    }

    v37 = 0;
    goto LABEL_57;
  }

  v34 = *v33;
  if (os_log_type_enabled(*v33, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(__p[0]) = 138543618;
    *(__p + 4) = a3;
    WORD2(__p[1]) = 1024;
    *(&__p[1] + 6) = v48;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#I Saving the Cell Broadcast settings for alert type %{public}@: %d to the persistent store", __p, 0x12u);
  }

  v35 = &kCFBooleanTrue;
  v55 = 0;
  if (!v48)
  {
    v35 = &kCFBooleanFalse;
  }

  theDict = *v35;
  __p[0] = 0;
  sub_100045C8C(__p);
  v55 = theDict;
  theDict = 0;
  sub_100045C8C(&theDict);
  theDict = 0;
  theDict = CFStringCreateWithFormat(0, 0, @"%@%@", @"CellBroadcastSetting", a3);
  BOOLean = 0;
  v36 = kCommCenterSharedSettingsBundleId;
  (*(*values + 2))(__p);
  sub_10002FE1C(&BOOLean, __p);
  sub_10000A1EC(__p);
  v37 = (*(*values + 3))(values, v36, theDict, v55);
  if ((v37 & 1) == 0)
  {
    v43 = *v33;
    if (os_log_type_enabled(*v33, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p[0]) = 0;
      _os_log_error_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "Failed to save preferences...", __p, 2u);
    }

    goto LABEL_56;
  }

  if (!BOOLean)
  {
    v39 = *(v49 + 40);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      v40 = "#I Dispatching Darwin notification for Emergency Alerts initial change";
      goto LABEL_51;
    }

LABEL_52:
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"kCTSMSCellBroadcastConfigChangedNotification", 0, 0, 0);
    goto LABEL_53;
  }

  v38 = CFBooleanGetValue(BOOLean);
  if (v38 != CFBooleanGetValue(v55))
  {
    v39 = *(v49 + 40);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      v40 = "#I Dispatching Darwin notification for Emergency Alerts preference change";
LABEL_51:
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, v40, __p, 2u);
      goto LABEL_52;
    }

    goto LABEL_52;
  }

LABEL_53:
  v45 = *(v49 + 192);
  if (v45)
  {
    v59 = theDict;
    memset(__p, 0, 24);
    sub_10005B328(__p, &v59, &v60, 1uLL);
    (*(*v45 + 16))(v45, v36, __p);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

LABEL_56:
  sub_100045C8C(&BOOLean);
  sub_100005978(&theDict);
  sub_100045C8C(&v55);
LABEL_57:
  if (v52)
  {
    sub_100004A34(v52);
  }

  return v37;
}

void sub_1015C77CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, std::__shared_weak_count *a18, uint64_t a19, const void *a20, const void *a21, const void *a22, void *__p, uint64_t a24)
{
  if (__p)
  {
    a24 = __p;
    operator delete(__p);
  }

  sub_100045C8C(&a20);
  sub_100005978(&a22);
  sub_100045C8C(&a21);
  if (a18)
  {
    sub_100004A34(a18);
  }

  _Unwind_Resume(a1);
}

void sub_1015C78A0(const __CFDictionary **a1, uint64_t a2, const void *a3, const void *a4)
{
  if (!a4)
  {
    v23 = *(a2 + 40);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *v30 = 0;
      _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Invalid inputs while reading always deliver pref", v30, 2u);
    }

    goto LABEL_31;
  }

  subscriber::makeSimSlotRange();
  v5 = *v30;
  v6 = v31;
  if (*v30 == v31)
  {
    goto LABEL_31;
  }

  v7 = v32;
  do
  {
    if (v32(*v5))
    {
      break;
    }

    ++v5;
  }

  while (v5 != v31);
  v27 = v31;
  if (v5 == v31)
  {
LABEL_31:
    *a1 = 0;
    return;
  }

  while (1)
  {
    v8 = *v5;
    v9 = (*(**(a2 + 48) + 16))(*(a2 + 48), v8);
    theDict = 0;
    sub_1015C5B00(buf, *(a2 + 368), v8, @"AlertTypes", 0);
    sub_100010180(&theDict, buf);
    sub_10000A1EC(buf);
    if (theDict)
    {
      Value = CFDictionaryGetValue(theDict, a3);
      v11 = Value;
      if (!Value || (v12 = CFGetTypeID(Value), v12 != CFDictionaryGetTypeID()))
      {
        v17 = *v9;
        if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v34 = a3;
          _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Failed to read %{public}@ from bundle", buf, 0xCu);
        }

        goto LABEL_16;
      }

      v13 = CFDictionaryGetValue(v11, @"CustomPreferences");
      v14 = v13;
      if (v13)
      {
        v15 = CFGetTypeID(v13);
        v16 = v15 == CFArrayGetTypeID() ? v14 : 0;
      }

      else
      {
        v16 = 0;
      }

      Count = CFArrayGetCount(v16);
      if (Count >= 1)
      {
        break;
      }
    }

LABEL_16:
    sub_10001021C(&theDict);
    do
    {
      ++v5;
    }

    while (v5 != v6 && (v7(*v5) & 1) == 0);
    if (v5 == v27)
    {
      goto LABEL_31;
    }
  }

  v19 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v16, v19);
    v21 = ValueAtIndex;
    if (ValueAtIndex)
    {
      v22 = CFGetTypeID(ValueAtIndex);
      if (v22 == CFDictionaryGetTypeID())
      {
        if (CFDictionaryContainsKey(v21, a4))
        {
          break;
        }
      }
    }

    if (Count == ++v19)
    {
      goto LABEL_16;
    }
  }

  v24 = *v9;
  if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v34 = a3;
    v35 = 2114;
    v36 = a4;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I Found Custom preference for %{public}@.%{public}@", buf, 0x16u);
  }

  *a1 = v21;
  CFRetain(v21);
  sub_10001021C(&theDict);
}

void sub_1015C7BF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_1015C7C3C@<X0>(uint64_t a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  v5 = a1 + 8;
  v8 = a1;
  sub_100010024(&v9, a2);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 0x40000000;
  v10[2] = sub_1015D4AA4;
  v10[3] = &unk_101F53FC0;
  v10[4] = v5;
  v10[5] = &v8;
  v11 = v10;
  v6 = *(a1 + 24);
  if (*(a1 + 32))
  {
    *a3 = 0;
    block = _NSConcreteStackBlock;
    v13 = 0x40000000;
    v14 = sub_1015D4630;
    v15 = &unk_101F53F20;
    v16 = a3;
    v17 = &v11;
    dispatch_async_and_wait(v6, &block);
  }

  else
  {
    *a3 = 0;
    block = _NSConcreteStackBlock;
    v13 = 0x40000000;
    v14 = sub_1015D45B8;
    v15 = &unk_101F53F00;
    v16 = a3;
    v17 = &v11;
    dispatch_sync(v6, &block);
  }

  return sub_10001021C(&v9);
}

uint64_t sub_1015C7D84(uint64_t a1)
{
  v4 = a1;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_1015D5600;
  v5[3] = &unk_101F53FE0;
  v5[4] = a1 + 8;
  v5[5] = &v4;
  v6 = v5;
  v2 = a1 + 24;
  v1 = *(a1 + 24);
  if (*(v2 + 8))
  {
    v13 = 0;
    block = _NSConcreteStackBlock;
    v8 = 0x40000000;
    v9 = sub_10006A74C;
    v10 = &unk_101F53EC0;
    v11 = &v13;
    v12 = &v6;
    dispatch_async_and_wait(v1, &block);
  }

  else
  {
    v13 = 0;
    block = _NSConcreteStackBlock;
    v8 = 0x40000000;
    v9 = sub_1000597F0;
    v10 = &unk_101F53EA0;
    v11 = &v13;
    v12 = &v6;
    dispatch_sync(v1, &block);
  }

  return v13 & 1;
}

uint64_t sub_1015C7EB0(uint64_t a1, uint64_t a2)
{
  v5[0] = a1;
  v5[1] = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = sub_1015D59CC;
  v6[3] = &unk_101F54000;
  v6[4] = a1 + 8;
  v6[5] = v5;
  v7 = v6;
  v3 = a1 + 24;
  v2 = *(a1 + 24);
  if (*(v3 + 8))
  {
    v14 = 0;
    block = _NSConcreteStackBlock;
    v9 = 0x40000000;
    v10 = sub_10006A74C;
    v11 = &unk_101F53EC0;
    v12 = &v14;
    v13 = &v7;
    dispatch_async_and_wait(v2, &block);
  }

  else
  {
    v14 = 0;
    block = _NSConcreteStackBlock;
    v9 = 0x40000000;
    v10 = sub_1000597F0;
    v11 = &unk_101F53EA0;
    v12 = &v14;
    v13 = &v7;
    dispatch_sync(v2, &block);
  }

  return v14 & 1;
}

uint64_t sub_1015C7FE0(uint64_t a1, int a2, uint64_t a3)
{
  v6 = a1;
  v7 = a2;
  v8 = a3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 0x40000000;
  v9[2] = sub_1015D611C;
  v9[3] = &unk_101F54020;
  v9[4] = a1 + 8;
  v9[5] = &v6;
  v10 = v9;
  v4 = a1 + 24;
  v3 = *(a1 + 24);
  if (*(v4 + 8))
  {
    v17 = 0;
    block = _NSConcreteStackBlock;
    v12 = 0x40000000;
    v13 = sub_10006A74C;
    v14 = &unk_101F53EC0;
    v15 = &v17;
    v16 = &v10;
    dispatch_async_and_wait(v3, &block);
  }

  else
  {
    v17 = 0;
    block = _NSConcreteStackBlock;
    v12 = 0x40000000;
    v13 = sub_1000597F0;
    v14 = &unk_101F53EA0;
    v15 = &v17;
    v16 = &v10;
    dispatch_sync(v3, &block);
  }

  return v17 & 1;
}

uint64_t sub_1015C8114(uint64_t a1, uint64_t a2, const void *a3)
{
  v6 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  if (sub_1015C635C(a1))
  {
    *buf = 0;
    sub_1015C5B00(&v10, *(a1 + 368), a2, a3, 0);
    sub_10006DD00(buf, &v10);
    sub_10000A1EC(&v10);
    v7 = *buf;
    if (*buf)
    {
      *buf = 0;
    }

    sub_100010250(buf);
  }

  else
  {
    v8 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Copy CMAS Configuration: Device does not support CMAS", buf, 2u);
    }

    return 0;
  }

  return v7;
}

void sub_1015C8214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10000A1EC(va);
  _Unwind_Resume(a1);
}

__CFArray *sub_1015C8228(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, int a5)
{
  v9 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  if (!a3)
  {
    v51 = *(a1 + 40);
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v51, OS_LOG_TYPE_ERROR, "Invalid protocol section identifier", buf, 2u);
    }

    return 0;
  }

  v10 = v9;
  v11 = sub_1015C8114(a1, a2, a3);
  theArray = v11;
  if (!v11 || (Count = CFArrayGetCount(v11), Count < 1))
  {
    Mutable = 0;
    goto LABEL_55;
  }

  v55 = a2;
  v13 = 0;
  Mutable = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v13);
    v16 = ValueAtIndex;
    if (ValueAtIndex)
    {
      v17 = CFGetTypeID(ValueAtIndex);
      if (v17 == CFDictionaryGetTypeID())
      {
        v18 = v16;
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
    }

    v57 = 0;
    (*(a4 + 16))(a4, v18, &v57);
    if (v57 != 1)
    {
      goto LABEL_52;
    }

    Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 3, &kCFTypeArrayCallBacks);
    Value = CFDictionaryGetValue(v18, @"AlertType");
    v20 = Value;
    if (Value)
    {
      v21 = CFGetTypeID(Value);
      if (v21 == CFStringGetTypeID())
      {
        v59 = 0;
        v22 = sub_1015C6100(a1, v55);
        v59 = v22;
        if (v22)
        {
          v23 = CFDictionaryGetValue(v22, v20);
          v24 = v23;
          if (v23)
          {
            v25 = CFGetTypeID(v23);
            if (v25 == CFDictionaryGetTypeID())
            {
              CFArrayAppendValue(Mutable, v24);
              sub_10001021C(&v59);
              goto LABEL_19;
            }
          }

          v46 = *v10;
          if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            *&buf[4] = v20;
            v47 = v46;
            v48 = "#I No alert type %{public}@ found in the types defined";
            v49 = 12;
LABEL_49:
            _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, v48, buf, v49);
          }
        }

        else
        {
          v50 = *v10;
          if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v47 = v50;
            v48 = "#I No alert types found";
            v49 = 2;
            goto LABEL_49;
          }
        }

        v45 = &v59;
        goto LABEL_51;
      }
    }

    v26 = *v10;
    if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I Could not find AlertType in the CMAS configuration", buf, 2u);
    }

LABEL_19:
    if (!a5)
    {
      goto LABEL_31;
    }

    v27 = CFDictionaryGetValue(v18, @"EmergencyAlertConfiguration");
    v28 = v27;
    if (v27)
    {
      v29 = CFGetTypeID(v27);
      if (v29 != CFStringGetTypeID())
      {
        v28 = 0;
      }
    }

    v30 = *v10;
    if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = v28;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I Emergency Alert Configuration name: %{public}@", buf, 0xCu);
    }

    if (!v28)
    {
LABEL_31:
      v31 = CFDictionaryGetValue(v18, @"AlertConfiguration");
      v28 = v31;
      if (v31)
      {
        v32 = CFGetTypeID(v31);
        if (v32 != CFStringGetTypeID())
        {
          v28 = 0;
        }
      }

      v33 = *v10;
      if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *&buf[4] = v28;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#I Alert Configuration name: %{public}@", buf, 0xCu);
      }

      if (!v28)
      {
        break;
      }
    }

    v56 = 0;
    v34 = (*(**(a1 + 48) + 16))(*(a1 + 48), v55);
    if (sub_1015C635C(a1))
    {
      *buf = 0;
      sub_1015C5B00(&v59, *(a1 + 368), v55, @"AlertConfigurations", 0);
      sub_100010180(buf, &v59);
      sub_10000A1EC(&v59);
      v35 = *buf;
      *buf = 0;
      sub_10001021C(buf);
      v56 = v35;
      if (v35)
      {
        v36 = CFDictionaryGetValue(v35, v28);
        v37 = v36;
        if (v36)
        {
          v38 = CFGetTypeID(v36);
          if (v38 == CFDictionaryGetTypeID())
          {
            CFArrayAppendValue(Mutable, v37);
            sub_10001021C(&v56);
            goto LABEL_55;
          }
        }

        v39 = *v10;
        if (!os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_44;
        }

        *buf = 138412290;
        *&buf[4] = v28;
        v40 = v39;
        v41 = "#I Configuration %@{public} was not found in the defined configurations";
        v42 = 12;
        goto LABEL_43;
      }
    }

    else
    {
      v43 = *v34;
      if (os_log_type_enabled(*v34, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "Copy Cell Broadcast Alert Configuration: Device does not support CMAS", buf, 2u);
      }

      v56 = 0;
    }

    v44 = *v10;
    if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v40 = v44;
      v41 = "#I No alert configurations found";
      v42 = 2;
LABEL_43:
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, v41, buf, v42);
    }

LABEL_44:
    v45 = &v56;
LABEL_51:
    sub_10001021C(v45);
LABEL_52:
    if (Count == ++v13)
    {
      goto LABEL_55;
    }
  }

  v53 = *v10;
  if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "#I Could not find AlertConfiguration in the CMAS configuration", buf, 2u);
  }

LABEL_55:
  sub_100010250(&theArray);
  return Mutable;
}

void sub_1015C8868(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va1, a20);
  va_start(va, a20);
  v21 = va_arg(va1, const void *);
  v23 = va_arg(va1, void);
  sub_10001021C(va);
  sub_100010250(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_1015C88C0(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a3 - 4352;
  if ((a3 - 4352) < 5)
  {
    goto LABEL_4;
  }

  if ((a3 - 4357) <= 2)
  {
    v5 = 5;
LABEL_4:
    v7 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      return 1;
    }

    v8 = (&off_101F542A0)[v5];
    LODWORD(buf) = 136315138;
    *(&buf + 4) = v8;
    v9 = "#I ETWS Alert type: %s";
    v10 = v7;
    v11 = 12;
LABEL_6:
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v9, &buf, v11);
    return 1;
  }

  theDict = 0;
  *&buf = _NSConcreteStackBlock;
  *(&buf + 1) = 0x40000000;
  v23 = sub_1015CF360;
  v24 = &unk_101F538D8;
  v25 = a3;
  sub_1015CF144(&theDict, a1, a2, @"MessageIDParameters3GPP", &buf);
  v13 = (*(**(a1 + 48) + 16))(*(a1 + 48), a2);
  if (!theDict)
  {
    v20 = *v13;
    if (os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 67109120;
      DWORD1(buf) = a3;
      _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Unable to find the config dictionary for Service ID: %u", &buf, 8u);
    }

    goto LABEL_16;
  }

  Value = CFDictionaryGetValue(theDict, @"ProcessAsETWSMessage");
  v15 = Value;
  if (!Value || (v16 = CFGetTypeID(Value), v16 != CFBooleanGetTypeID()))
  {
LABEL_16:
    sub_10001021C(&theDict);
    return 0;
  }

  LOBYTE(buf) = 0;
  ctu::cf::assign(&buf, v15, v17);
  v18 = buf;
  sub_10001021C(&theDict);
  if (v18 == 1)
  {
    v19 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      return 1;
    }

    LOWORD(buf) = 0;
    v9 = "#I ETWS Alert type: carrier-driven";
    v10 = v19;
    v11 = 2;
    goto LABEL_6;
  }

  return 0;
}

void sub_1015C8B7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10001021C(va);
  _Unwind_Resume(a1);
}

void sub_1015C8B9C(uint64_t a1, CFDictionaryRef theDict, _BYTE *a3)
{
  Value = CFDictionaryGetValue(theDict, @"FromServiceID");
  v7 = Value;
  if (Value)
  {
    v8 = CFGetTypeID(Value);
    if (v8 != CFNumberGetTypeID())
    {
      v7 = 0;
    }
  }

  v9 = CFDictionaryGetValue(theDict, @"ToServiceID");
  if (v9 && (v10 = v9, v11 = CFGetTypeID(v9), TypeID = CFNumberGetTypeID(), v7) && v11 == TypeID)
  {
    v19 = 0;
    ctu::cf::assign(&v19, v7, v13);
    v14 = v19;
    v20 = 0;
    ctu::cf::assign(&v20, v10, v15);
    v16 = *(a1 + 40);
    if (v16 >= v14 && v16 <= v20)
    {
      *a3 = 1;
    }
  }

  else
  {
    v17 = **(a1 + 32);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *v18 = 0;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "FromServiceId or ToServiceId not present in bundle", v18, 2u);
    }
  }
}

uint64_t sub_1015C8CC8(uint64_t a1, CFDictionaryRef theDict, _BYTE *a3)
{
  Value = CFDictionaryGetValue(theDict, @"Category");
  if (Value)
  {
    v7 = Value;
    v8 = CFGetTypeID(Value);
    if (v8 == CFNumberGetTypeID())
    {
      v9 = v7;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v11 = 0;
  result = ctu::cf::assign(&v11, v9, v6);
  if (*(a1 + 32) == v11)
  {
    *a3 = 1;
  }

  return result;
}

uint64_t sub_1015C8D58(uint64_t a1, int a2, __int16 a3, int a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 0x40000000;
  v11[2] = sub_1015D6328;
  v11[3] = &unk_101F54040;
  v11[4] = a1 + 8;
  v11[5] = &v7;
  v12 = v11;
  v5 = a1 + 24;
  v4 = *(a1 + 24);
  if (*(v5 + 8))
  {
    v19 = 0;
    block = _NSConcreteStackBlock;
    v14 = 0x40000000;
    v15 = sub_10006A74C;
    v16 = &unk_101F53EC0;
    v17 = &v19;
    v18 = &v12;
    dispatch_async_and_wait(v4, &block);
  }

  else
  {
    v19 = 0;
    block = _NSConcreteStackBlock;
    v14 = 0x40000000;
    v15 = sub_1000597F0;
    v16 = &unk_101F53EA0;
    v17 = &v19;
    v18 = &v12;
    dispatch_sync(v4, &block);
  }

  return v19 & 1;
}

BOOL sub_1015C8E94(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v4 = a4;
  v8 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  v9 = *v8;
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    *&buf[4] = a3;
    *&buf[8] = 2080;
    *&buf[10] = asString();
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Applying Language filtering for Message ID %d Language %s", buf, 0x12u);
  }

  if ((a3 - 4370) < 0xD || (a3 & 0xFFFFFFFD) == 0x112C)
  {
    v15 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109632;
      *&buf[4] = a3;
      *&buf[8] = 1024;
      *&buf[10] = 4396;
      *&buf[14] = 1024;
      *&buf[16] = 4398;
      v12 = "#I Message Identifier %d is in primary range, %d, or %d; filtering not applicable";
      v13 = v15;
      v14 = 20;
      goto LABEL_11;
    }

    return 0;
  }

  if (v4 == 30 || v4 == 15)
  {
    v10 = *v8;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = asString();
      *buf = 136315138;
      *&buf[4] = v11;
      v12 = "#I CellBroadcast Language Unknown %s, filtering not applicable";
      v13 = v10;
      v14 = 12;
LABEL_11:
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v12, buf, v14);
      return 0;
    }

    return 0;
  }

  memset(buf, 0, sizeof(buf));
  CellBroadcastConfig::getPrimaryBroadcastLanguages_sync(a1, a2, buf);
  __p[0] = 0;
  __p[1] = 0;
  v35 = 0;
  if (*(a1 + 479) < 0)
  {
    sub_100005F2C(__p, *(a1 + 456), *(a1 + 464));
  }

  else
  {
    *__p = *(a1 + 456);
    v35 = *(a1 + 472);
  }

  v18 = *buf;
  v19 = *&buf[8];
  if (*buf != *&buf[8])
  {
    if (v35 >= 0)
    {
      v20 = HIBYTE(v35);
    }

    else
    {
      v20 = __p[1];
    }

    if (v35 >= 0)
    {
      v21 = __p;
    }

    else
    {
      v21 = __p[0];
    }

    while (1)
    {
      v22 = *(v18 + 23);
      v23 = v22;
      if ((v22 & 0x80u) != 0)
      {
        v22 = *(v18 + 8);
      }

      if (v22 == v20)
      {
        v24 = v23 >= 0 ? v18 : *v18;
        if (!memcmp(v24, v21, v20))
        {
          break;
        }
      }

      v18 += 24;
      if (v18 == v19)
      {
        goto LABEL_42;
      }
    }
  }

  if (v18 == v19)
  {
LABEL_42:
    v26 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
    {
      v29 = __p;
      if (v35 < 0)
      {
        v29 = __p[0];
      }

      *v36 = 136446210;
      v37 = v29;
      v28 = "#I Phones language %{public}s not present in primary language list of carrier, filtering not applicable";
LABEL_46:
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, v28, v36, 0xCu);
    }
  }

  else
  {
    if (v35 >= 0)
    {
      v25 = __p;
    }

    else
    {
      v25 = __p[0];
    }

    if (getBroadcastLanguageFromLocale(v25) != 15)
    {
      if (v35 >= 0)
      {
        v30 = __p;
      }

      else
      {
        v30 = __p[0];
      }

      BroadcastLanguageFromLocale = getBroadcastLanguageFromLocale(v30);
      v16 = BroadcastLanguageFromLocale != v4;
      v32 = *v8;
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v33 = CSIBOOLAsString(BroadcastLanguageFromLocale != v4);
        *v36 = 136315138;
        v37 = v33;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "#I Will Filter CMAS Message: %s.", v36, 0xCu);
      }

      goto LABEL_48;
    }

    v26 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
    {
      v27 = __p;
      if (v35 < 0)
      {
        v27 = __p[0];
      }

      *v36 = 136446210;
      v37 = v27;
      v28 = "#I Localized Language %{public}s not available for filtering";
      goto LABEL_46;
    }
  }

  v16 = 0;
LABEL_48:
  if (SHIBYTE(v35) < 0)
  {
    operator delete(__p[0]);
  }

  __p[0] = buf;
  sub_1000087B4(__p);
  return v16;
}

void sub_1015C92A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  __p = &a18;
  sub_1000087B4(&__p);
  _Unwind_Resume(a1);
}

const void **CellBroadcastConfig::getPrimaryBroadcastLanguages_sync@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  theArray = 0;
  sub_1015C5B00(__p, *(a1 + 368), a2, @"PrimaryBroadcastLanguages", 0);
  sub_10006DD00(&theArray, __p);
  sub_10000A1EC(__p);
  v4 = theArray;
  if (theArray)
  {
    __p[0] = 0;
    __p[1] = 0;
    v14 = 0;
    context = __p;
    v15.length = CFArrayGetCount(theArray);
    v15.location = 0;
    CFArrayApplyFunction(v4, v15, sub_10007CFD8, &context);
    v5 = __p[0];
    v6 = __p[1];
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    if (v5 != v6)
    {
      v7 = v5;
      do
      {
        __p[0] = 0;
        __p[1] = 0;
        v14 = 0;
        sub_10000501C(&v9, "");
        ctu::cf::assign();
        *__p = v9;
        v14 = v10;
        v10 = 0;
        v9 = 0uLL;
        sub_100005308(a3, __p);
        if (SHIBYTE(v14) < 0)
        {
          operator delete(__p[0]);
        }

        v7 += 8;
      }

      while (v7 != v6);
    }

    if (v5)
    {
      operator delete(v5);
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  return sub_100010250(&theArray);
}

uint64_t sub_1015C94BC(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5)
{
  v9 = a5;
  v10 = a2;
  v8[0] = &v10;
  v8[1] = a1;
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = &v9;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 0x40000000;
  v11[2] = sub_1015D6340;
  v11[3] = &unk_101F54060;
  v11[4] = a1 + 8;
  v11[5] = v8;
  v12 = v11;
  v6 = a1 + 24;
  v5 = *(a1 + 24);
  if (*(v6 + 8))
  {
    v19 = 0;
    block = _NSConcreteStackBlock;
    v14 = 0x40000000;
    v15 = sub_10006A74C;
    v16 = &unk_101F53EC0;
    v17 = &v19;
    v18 = &v12;
    dispatch_async_and_wait(v5, &block);
  }

  else
  {
    v19 = 0;
    block = _NSConcreteStackBlock;
    v14 = 0x40000000;
    v15 = sub_1000597F0;
    v16 = &unk_101F53EA0;
    v17 = &v19;
    v18 = &v12;
    dispatch_sync(v5, &block);
  }

  return v19 & 1;
}

uint64_t sub_1015C9600(uint64_t a1, int a2, int a3, int a4)
{
  v9 = a3;
  v10 = a2;
  v8 = a4;
  v7[0] = a1;
  v7[1] = &v10;
  v7[2] = &v9;
  v7[3] = &v8;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 0x40000000;
  v11[2] = sub_1015D63DC;
  v11[3] = &unk_101F54080;
  v11[4] = a1 + 8;
  v11[5] = v7;
  v12 = v11;
  v5 = a1 + 24;
  v4 = *(a1 + 24);
  if (*(v5 + 8))
  {
    v19 = 0;
    block = _NSConcreteStackBlock;
    v14 = 0x40000000;
    v15 = sub_10006A74C;
    v16 = &unk_101F53EC0;
    v17 = &v19;
    v18 = &v12;
    dispatch_async_and_wait(v4, &block);
  }

  else
  {
    v19 = 0;
    block = _NSConcreteStackBlock;
    v14 = 0x40000000;
    v15 = sub_1000597F0;
    v16 = &unk_101F53EA0;
    v17 = &v19;
    v18 = &v12;
    dispatch_sync(v4, &block);
  }

  return v19 & 1;
}

uint64_t sub_1015C9748(uint64_t a1, uint64_t a2)
{
  v4 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  v5 = *(a1 + 368);
  theArray = 0;
  v31[0] = @"CellBroadcast";
  v31[1] = @"TranslationParameters";
  v32 = @"NativeLanguages";
  __p[1] = 0;
  v35 = 0;
  __p[0] = 0;
  sub_10005B328(__p, v31, &v33, 3uLL);
  sub_10115B8EC(v5, a2, 2, __p, 0, 0, v28);
  sub_10006DD00(&theArray, v28);
  sub_10000A1EC(v28);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (Count >= 1)
    {
      v7 = 0;
      v8 = (a1 + 456);
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v7);
        if (!ValueAtIndex)
        {
          goto LABEL_42;
        }

        v10 = CFGetTypeID(ValueAtIndex);
        if (v10 != CFStringGetTypeID())
        {
          goto LABEL_42;
        }

        __p[0] = 0;
        __p[1] = 0;
        v35 = 0;
        ctu::cf::assign();
        v32 = v35;
        *v31 = *__p;
        v11 = *(a1 + 479);
        if (v11 >= 0)
        {
          v12 = *(a1 + 479);
        }

        else
        {
          v12 = *(a1 + 464);
        }

        v13 = HIBYTE(v32);
        v14 = SHIBYTE(v32);
        if (SHIBYTE(v32) < 0)
        {
          v13 = v31[1];
        }

        if (v12 != v13)
        {
          break;
        }

        v15 = (v11 >= 0 ? a1 + 456 : *v8);
        v16 = SHIBYTE(v32) >= 0 ? v31 : v31[0];
        if (memcmp(v15, v16, v12))
        {
          break;
        }

        v23 = 1;
        if ((v14 & 0x80000000) == 0)
        {
LABEL_38:
          if (v23)
          {
            goto LABEL_48;
          }

          goto LABEL_42;
        }

LABEL_41:
        operator delete(v31[0]);
        if (v23)
        {
LABEL_48:
          v27 = *v4;
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            if (*(a1 + 479) < 0)
            {
              v8 = *v8;
            }

            LODWORD(__p[0]) = 136446210;
            *(__p + 4) = v8;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I Native language %{public}s will not be translated", __p, 0xCu);
          }

          goto LABEL_46;
        }

LABEL_42:
        if (Count == ++v7)
        {
          goto LABEL_43;
        }
      }

      __p[0] = 0;
      __p[1] = 0;
      v35 = 0;
      ctu::cf::assign();
      v29 = v35;
      *v28 = *__p;
      v17 = *(a1 + 503);
      if (v17 >= 0)
      {
        v18 = *(a1 + 503);
      }

      else
      {
        v18 = *(a1 + 488);
      }

      v19 = HIBYTE(v29);
      v20 = SHIBYTE(v29);
      if (SHIBYTE(v29) < 0)
      {
        v19 = v28[1];
      }

      if (v18 == v19)
      {
        if (v17 >= 0)
        {
          v21 = (a1 + 480);
        }

        else
        {
          v21 = *(a1 + 480);
        }

        if (SHIBYTE(v29) >= 0)
        {
          v22 = v28;
        }

        else
        {
          v22 = v28[0];
        }

        v23 = memcmp(v21, v22, v18) == 0;
        if ((v20 & 0x80000000) == 0)
        {
LABEL_37:
          if ((v14 & 0x80000000) == 0)
          {
            goto LABEL_38;
          }

          goto LABEL_41;
        }
      }

      else
      {
        v23 = 0;
        if ((SHIBYTE(v29) & 0x80000000) == 0)
        {
          goto LABEL_37;
        }
      }

      operator delete(v28[0]);
      goto LABEL_37;
    }

LABEL_43:
    v24 = 1;
  }

  else
  {
    v25 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p[0]) = 0;
      _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Native Languages not found in bundle.. Translations skipped", __p, 2u);
    }

LABEL_46:
    v24 = 0;
  }

  sub_100010250(&theArray);
  return v24;
}

uint64_t sub_1015C9B30(uint64_t a1, char a2)
{
  v5 = a2;
  v6 = a1;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 0x40000000;
  v7[2] = sub_1015D641C;
  v7[3] = &unk_101F540A0;
  v7[4] = a1 + 8;
  v7[5] = &v5;
  v8 = v7;
  v3 = a1 + 24;
  v2 = *(a1 + 24);
  if (*(v3 + 8))
  {
    v15 = 0;
    block = _NSConcreteStackBlock;
    v10 = 0x40000000;
    v11 = sub_10006A74C;
    v12 = &unk_101F53EC0;
    v13 = &v15;
    v14 = &v8;
    dispatch_async_and_wait(v2, &block);
  }

  else
  {
    v15 = 0;
    block = _NSConcreteStackBlock;
    v10 = 0x40000000;
    v11 = sub_1000597F0;
    v12 = &unk_101F53EA0;
    v13 = &v15;
    v14 = &v8;
    dispatch_sync(v2, &block);
  }

  return v15 & 1;
}

void sub_1015C9C60(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3[0] = 0;
  v3[1] = 0;
  sub_100004AA0(v3, (a1 + 8));
  operator new();
}

uint64_t sub_1015C9D54(NSObject **a1, int a2, unsigned int a3)
{
  theDict = 0;
  CellBroadcastConfig::getAppleSafetyAlertConfig_sync(&theDict, a1);
  if (theDict)
  {
    if (a2 == 1)
    {
      Value = CFDictionaryGetValue(theDict, @"MessageIDParameters3GPP");
      v7 = Value;
      if (Value)
      {
LABEL_9:
        v12 = CFGetTypeID(Value);
        if (v12 == CFArrayGetTypeID())
        {
          for (i = 0; i < CFArrayGetCount(v7); ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v7, i);
            v15 = ValueAtIndex;
            if (ValueAtIndex)
            {
              v16 = CFGetTypeID(ValueAtIndex);
              if (v16 != CFDictionaryGetTypeID())
              {
                v15 = 0;
              }
            }

            v17 = CFDictionaryGetValue(v15, @"FromServiceID");
            v18 = v17;
            if (v17)
            {
              v19 = CFGetTypeID(v17);
              if (v19 != CFNumberGetTypeID())
              {
                v18 = 0;
              }
            }

            v20 = CFDictionaryGetValue(v15, @"ToServiceID");
            v21 = v20;
            if (!v20 || (v22 = CFGetTypeID(v20), v22 != CFNumberGetTypeID()) || !v18)
            {
              v25 = a1[5];
              if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_31;
              }

              *buf = 138412290;
              v33 = theDict;
              v26 = "Invalid message ID in Apple safety alert dict: %@";
              goto LABEL_28;
            }

            *buf = 0;
            ctu::cf::assign(buf, v18, v23);
            if (*buf <= a3)
            {
              *buf = 0;
              ctu::cf::assign(buf, v21, v24);
              if (*buf >= a3)
              {
                v30 = a1[5];
                if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 67109120;
                  LODWORD(v33) = a3;
                  _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I Channel: %u supports Apple safety alert", buf, 8u);
                }

                v28 = 1;
                goto LABEL_32;
              }
            }
          }

          v27 = a1[5];
          if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_31;
          }

          *buf = 67109120;
          LODWORD(v33) = a3;
          v9 = "#I Channel: %u doesn't support Apple safety alert";
          v10 = v27;
          v11 = 8;
          goto LABEL_7;
        }
      }
    }

    else
    {
      Value = CFDictionaryGetValue(theDict, @"MessageIDParameters3GPP2");
      v7 = Value;
      if (Value)
      {
        goto LABEL_9;
      }
    }

    v25 = a1[5];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v33 = theDict;
      v26 = "Invalid Apple safety alert dict: %@";
LABEL_28:
      _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, v26, buf, 0xCu);
    }

    goto LABEL_31;
  }

  v8 = a1[5];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v9 = "#I Apple safety alert not supported";
    v10 = v8;
    v11 = 2;
LABEL_7:
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
  }

LABEL_31:
  v28 = 0;
LABEL_32:
  sub_10001021C(&theDict);
  return v28;
}

const void **CellBroadcastConfig::getAppleSafetyAlertConfig_sync@<X0>(uint64_t *__return_ptr a1@<X8>, CellBroadcastConfig *this@<X0>)
{
  v20 = 0;
  subscriber::makeSimSlotRange();
  v3 = v17;
  v4 = v18;
  if (v17 == v18)
  {
    goto LABEL_12;
  }

  v5 = v19;
  do
  {
    if (v19(*v3))
    {
      break;
    }

    ++v3;
  }

  while (v3 != v18);
  v6 = v18;
  if (v3 == v18)
  {
LABEL_12:
    *a1 = 0;
  }

  else
  {
    while (1)
    {
      v7 = *v3;
      v8 = *(this + 46);
      v22[0] = @"CellBroadcast";
      v22[1] = @"AppleSafetyAlert";
      v13 = 0;
      v14 = 0;
      __p = 0;
      sub_10005B328(&__p, v22, &v23, 2uLL);
      sub_10115B8EC(v8, v7, 2, &__p, 0, 0, &v15);
      sub_100010180(&v16, &v15);
      v9 = v20;
      v20 = v16;
      v21 = v9;
      v16 = 0;
      sub_10001021C(&v21);
      sub_10001021C(&v16);
      sub_10000A1EC(&v15);
      if (__p)
      {
        v13 = __p;
        operator delete(__p);
      }

      if (v20)
      {
        break;
      }

      do
      {
        ++v3;
      }

      while (v3 != v4 && (v5(*v3) & 1) == 0);
      if (v3 == v6)
      {
        goto LABEL_12;
      }
    }

    *a1 = v20;
    v20 = 0;
  }

  return sub_10001021C(&v20);
}

void sub_1015CA2BC(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3[0] = 0;
  v3[1] = 0;
  sub_100004AA0(v3, (a1 + 8));
  operator new();
}

void sub_1015CA3D4(uint64_t a1, sms::Model **a2)
{
  v4 = *(*a2 + 2);
  v5 = (*(**(a1 + 48) + 16))(*(a1 + 48), v4);
  v6 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Preparing the cell broadcast notification", buf, 2u);
  }

  v7 = *a2;
  v8 = a2[1];
  if (!v8)
  {
    v12 = v7[12];
    if (v12 != 2)
    {
      goto LABEL_12;
    }

LABEL_9:
    v13 = (*(*v7 + 424))(v7);
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 0x40000000;
    *&buf[16] = sub_1015CF444;
    *&buf[24] = &unk_101F538F8;
    LODWORD(v274) = v13;
    sub_1015CF144(&__dst, a1, v4, @"MessageIDParameters3GPP2", buf);
    v14 = __dst;
    v15 = __dst != 0;
    sub_10001021C(&__dst);
    v16 = *v5;
    if (!os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    v15 = v14 != 0;
    v17 = CSIBOOLAsString(v14 != 0);
    *buf = 136315138;
    *&buf[4] = v17;
    v18 = "#I Received message is a 3GPP2 message, and is it valid: %s";
    goto LABEL_15;
  }

  atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  v9 = v7[12];
  sub_100004A34(v8);
  v7 = *a2;
  if (v9 == 2)
  {
    goto LABEL_9;
  }

  v10 = a2[1];
  if (!v10)
  {
    v12 = v7[12];
LABEL_12:
    if (v12 != 1)
    {
      goto LABEL_22;
    }

    goto LABEL_13;
  }

  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  v11 = v7[12];
  sub_100004A34(v10);
  if (v11 != 1)
  {
    goto LABEL_22;
  }

  v7 = *a2;
LABEL_13:
  v19 = (*(*v7 + 368))(v7);
  *buf = _NSConcreteStackBlock;
  *&buf[8] = 0x40000000;
  *&buf[16] = sub_1015CF360;
  *&buf[24] = &unk_101F538D8;
  LODWORD(v274) = v19;
  sub_1015CF144(&__dst, a1, v4, @"MessageIDParameters3GPP", buf);
  v20 = __dst;
  v15 = __dst != 0;
  sub_10001021C(&__dst);
  v16 = *v5;
  if (!os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_16;
  }

  v15 = v20 != 0;
  v21 = CSIBOOLAsString(v20 != 0);
  *buf = 136315138;
  *&buf[4] = v21;
  v18 = "#I Received message is a 3GPP message, and is it valid: %s";
LABEL_15:
  _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v18, buf, 0xCu);
LABEL_16:
  if (!v15)
  {
LABEL_22:
    v27 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      v28 = (*(**a2 + 424))(*a2);
      v29 = (*(**a2 + 368))(*a2);
      *buf = 67109376;
      *&buf[4] = v28;
      *&buf[8] = 1024;
      *&buf[10] = v29;
      _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Received an invalid cell broadcast message with Category: %u, Message Identifier: %u, not sending it out", buf, 0xEu);
    }

    return;
  }

  v22 = *a2;
  v23 = a2[1];
  if (v23)
  {
    atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
    v24 = *(v22 + 12);
    sub_100004A34(v23);
    v22 = *a2;
    if (v24 != 2)
    {
      v25 = a2[1];
      if (v25)
      {
        atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
        v26 = *(v22 + 12);
        sub_100004A34(v25);
        if (v26 == 1)
        {
          v22 = *a2;
LABEL_31:
          v38 = (*(*v22 + 368))(v22);
          v32 = sub_1015C9D54(a1, 1, v38);
          v39 = *(a1 + 368);
          *buf = 0;
          sub_1015C5B00(&__dst, v39, v4, @"CheckDuplicatesAcross3GPPAnd3GPP2", kCFBooleanFalse);
          sub_10002FE1C(buf, &__dst);
          sub_10000A1EC(&__dst);
          LOBYTE(__dst) = 0;
          ctu::cf::assign(&__dst, *buf, v40);
          v41 = __dst;
          sub_100045C8C(buf);
          if (v41 == 1)
          {
            v42 = *(a1 + 176);
            v43 = (*(**a2 + 368))(*a2);
            v44 = (*(**a2 + 408))(*a2);
            if (((**v42)(v42, v4, 1, v43, v44) & 1) == 0)
            {
              v35 = *v5;
              if (!os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
              {
                return;
              }

              v45 = (*(**a2 + 408))(*a2);
              *buf = 67109120;
              *&buf[4] = v45;
              v37 = "#I Message with Serial Number: %u is already seen";
LABEL_28:
              _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, v37, buf, 8u);
              return;
            }
          }

          goto LABEL_36;
        }

LABEL_35:
        v32 = 0;
        goto LABEL_36;
      }

      v30 = *(v22 + 12);
LABEL_30:
      if (v30 == 1)
      {
        goto LABEL_31;
      }

      goto LABEL_35;
    }
  }

  else
  {
    v30 = *(v22 + 12);
    if (v30 != 2)
    {
      goto LABEL_30;
    }
  }

  MessageID = sms::Model::getMessageID(v22);
  v32 = sub_1015C9D54(a1, 2, MessageID);
  v33 = *(a1 + 176);
  v34 = sms::Model::getMessageID(*a2);
  if (((**v33)(v33, v4, 2, 0, v34) & 1) == 0)
  {
    v35 = *v5;
    if (!os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v36 = sms::Model::getMessageID(*a2);
    *buf = 67109120;
    *&buf[4] = v36;
    v37 = "#I Message with MSG ID: %u is already seen";
    goto LABEL_28;
  }

LABEL_36:
  (*(**a2 + 192))(v252);
  if ((*(**(a1 + 176) + 8))(*(a1 + 176), v4, v252))
  {
    v46 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "#I Message filtered based on content...", buf, 2u);
    }

    goto LABEL_284;
  }

  theDict = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!theDict)
  {
    v55 = *(a1 + 40);
    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v55, OS_LOG_TYPE_ERROR, "Failed to allocate dictionary for notification", buf, 2u);
    }

    goto LABEL_283;
  }

  v250 = 0;
  v47 = (*(**a2 + 368))(*a2);
  *&__dst = 0;
  *buf = v47;
  v48 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, buf);
  if (v48)
  {
    v49 = __dst;
    *&__dst = v48;
    *buf = v49;
    sub_100029A48(buf);
  }

  v250 = __dst;
  *&__dst = 0;
  sub_100029A48(&__dst);
  CFDictionarySetValue(theDict, @"AlertMessageID", v250);
  if (v32)
  {
    CFDictionarySetValue(theDict, @"kCTSMSAppleSafetyAlertSupport", kCFBooleanTrue);
  }

  v249 = 0;
  v50 = *a2;
  v51 = a2[1];
  if (!v51)
  {
    v56 = *(v50 + 12);
    if (v56 != 2)
    {
      goto LABEL_65;
    }

LABEL_52:
    v57 = (*(*v50 + 424))(v50);
    *&__dst = 0;
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 0x40000000;
    *&buf[16] = sub_1015CF444;
    *&buf[24] = &unk_101F538F8;
    LODWORD(v274) = v57;
    sub_1015CF144(&__dst, a1, v4, @"MessageIDParameters3GPP2", buf);
    if (__dst)
    {
      v59 = CFDictionaryGetValue(__dst, @"EmergencyAlert");
      v60 = v59;
      if (v59)
      {
        v61 = CFGetTypeID(v59);
        if (v61 != CFBooleanGetTypeID())
        {
          v60 = 0;
        }
      }
    }

    else
    {
      v60 = 0;
    }

    *buf = _NSConcreteStackBlock;
    *&buf[8] = 0x40000000;
    *&buf[16] = sub_1015C8CC8;
    *&buf[24] = &unk_101F538B8;
    LODWORD(v274) = v57;
    LOBYTE(theArray[0]) = 0;
    ctu::cf::assign(theArray, v60, v58);
    v62 = sub_1015C8228(a1, v4, @"MessageIDParameters3GPP2", buf, LOBYTE(theArray[0]));
    v64 = v63;
    theArray[0] = v62;
    Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    v66 = Mutable;
    if (v60)
    {
      v67 = v60;
    }

    else
    {
      v67 = kCFBooleanFalse;
    }

    CFArrayAppendValue(Mutable, v67);
    v68 = theArray[0];
    if (theArray[0])
    {
      v280.length = CFArrayGetCount(theArray[0]);
      v280.location = 0;
      CFArrayAppendArray(v66, v68, v280);
    }

    sub_100010250(theArray);
    sub_10001021C(&__dst);
    v69 = v249;
    v249 = v66;
    goto LABEL_82;
  }

  atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
  v52 = *(v50 + 12);
  sub_100004A34(v51);
  v50 = *a2;
  if (v52 == 2)
  {
    goto LABEL_52;
  }

  v53 = a2[1];
  if (v53)
  {
    atomic_fetch_add_explicit(&v53->__shared_owners_, 1uLL, memory_order_relaxed);
    v54 = *(v50 + 12);
    sub_100004A34(v53);
    if (v54 == 1)
    {
      v50 = *a2;
      goto LABEL_66;
    }

    goto LABEL_71;
  }

  v56 = *(v50 + 12);
LABEL_65:
  if (v56 == 1)
  {
LABEL_66:
    v70 = (*(*v50 + 368))(v50);
    v71 = (*(**a2 + 400))(*a2);
    v72 = (*(**(a1 + 48) + 16))(*(a1 + 48), v4);
    *&__dst = 0;
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 0x40000000;
    *&buf[16] = sub_1015CF360;
    *&buf[24] = &unk_101F538D8;
    LODWORD(v274) = v70;
    sub_1015CF144(&__dst, a1, v4, @"MessageIDParameters3GPP", buf);
    if (__dst && (v73 = CFDictionaryGetValue(__dst, @"EmergencyAlert"), (v74 = v73) != 0) && (v75 = CFGetTypeID(v73), v75 == CFBooleanGetTypeID()))
    {
      buf[0] = 0;
      ctu::cf::assign(buf, v74, v76);
      v77 = buf[0];
      v78 = *v72;
      if (os_log_type_enabled(*v72, OS_LOG_TYPE_DEFAULT))
      {
        v79 = CSIBOOLAsString(v77);
        *buf = 67109378;
        *&buf[4] = v70;
        *&buf[8] = 2080;
        *&buf[10] = v79;
        _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_DEFAULT, "#I Message ID %u needs to be marked as an Emergency Alert: %s", buf, 0x12u);
      }
    }

    else
    {
      v81 = sub_1015C88C0(a1, v4, v70);
      v82 = *v72;
      if (os_log_type_enabled(*v72, OS_LOG_TYPE_DEFAULT))
      {
        v83 = CSIBOOLAsString(v81);
        v84 = CSIBOOLAsString(v71);
        *buf = 67109634;
        *&buf[4] = v70;
        *&buf[8] = 2080;
        *&buf[10] = v83;
        *&buf[18] = 2080;
        *&buf[20] = v84;
        _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, "#I Message ID %u has been processed as ETWS message: %s and is an Emergency Alert: %s", buf, 0x1Cu);
      }

      v77 = v71 & v81;
    }

    *buf = _NSConcreteStackBlock;
    *&buf[8] = 0x40000000;
    *&buf[16] = sub_1015C8B9C;
    *&buf[24] = &unk_101F53898;
    DWORD2(v274) = v70;
    *&v274 = v72;
    v85 = sub_1015C8228(a1, v4, @"MessageIDParameters3GPP", buf, v77);
    v64 = v86;
    theArray[0] = v85;
    v87 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    v88 = v87;
    v89 = &kCFBooleanTrue;
    if (!v77)
    {
      v89 = &kCFBooleanFalse;
    }

    CFArrayAppendValue(v87, *v89);
    v90 = theArray[0];
    if (theArray[0])
    {
      v281.length = CFArrayGetCount(theArray[0]);
      v281.location = 0;
      CFArrayAppendArray(v88, v90, v281);
    }

    sub_100010250(theArray);
    sub_10001021C(&__dst);
    v69 = v249;
    v249 = v88;
LABEL_82:
    *buf = v69;
    sub_100010250(buf);
    goto LABEL_83;
  }

LABEL_71:
  v80 = *(a1 + 40);
  if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v80, OS_LOG_TYPE_ERROR, "Unknown message type", buf, 2u);
  }

  v64 = 0;
LABEL_83:
  v91 = a2[1];
  v247 = *a2;
  v248 = v91;
  if (v91)
  {
    atomic_fetch_add_explicit(&v91->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  CellBroadcastConfig::postAWDMetric_sync(a1, &v247);
  if (v248)
  {
    sub_100004A34(v248);
  }

  value = 0;
  if (!v249)
  {
    v96 = *(a1 + 40);
    if (!os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_112;
    }

    *buf = 0;
    v97 = "Failed to get configuration for this message";
    goto LABEL_94;
  }

  Count = CFArrayGetCount(v249);
  if (Count < 1)
  {
    goto LABEL_112;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(v249, 0);
  v94 = ValueAtIndex;
  if (ValueAtIndex && (v95 = CFGetTypeID(ValueAtIndex), v95 == CFBooleanGetTypeID()))
  {
    CFDictionarySetValue(theDict, @"kCTSMSCellBroadcastEmergencyUserAlert", v94);
  }

  else
  {
    v98 = *(a1 + 40);
    if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v98, OS_LOG_TYPE_ERROR, "Failed to get the emergency user alert from configuration", buf, 2u);
    }
  }

  if (Count == 1)
  {
    goto LABEL_112;
  }

  *&__dst = CFArrayGetValueAtIndex(v249, 1);
  *buf = 0;
  sub_100010180(buf, &__dst);
  v99 = value;
  value = *buf;
  *buf = v99;
  sub_10001021C(buf);
  v101 = *a2;
  v100 = a2[1];
  if (v100)
  {
    atomic_fetch_add_explicit(&v100->__shared_owners_, 1uLL, memory_order_relaxed);
    v102 = *(v101 + 12);
    sub_100004A34(v100);
    if (v102 != 1)
    {
      goto LABEL_103;
    }

    goto LABEL_102;
  }

  if (*(v101 + 12) == 1)
  {
LABEL_102:
    sub_100010024(&v245, &value);
    v103 = (*(**a2 + 368))(*a2);
    sub_1015CD3F0(&__dst, a1, v4, &v245, v64, v103);
    *buf = value;
    value = __dst;
    *&__dst = 0;
    sub_10001021C(buf);
    sub_10001021C(&__dst);
    sub_10001021C(&v245);
  }

LABEL_103:
  if (value)
  {
    CFDictionarySetValue(theDict, @"AlertType", value);
  }

  else
  {
    v104 = *(a1 + 40);
    if (os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v104, OS_LOG_TYPE_ERROR, "Failed to get the alert title from configuration", buf, 2u);
    }
  }

  if (Count >= 3)
  {
    v105 = CFArrayGetValueAtIndex(v249, 2);
    v106 = v105;
    if (v105)
    {
      v107 = CFGetTypeID(v105);
      if (v107 == CFDictionaryGetTypeID())
      {
        CFDictionarySetValue(theDict, @"AlertConfiguration", v106);
        goto LABEL_112;
      }
    }

    v96 = *(a1 + 40);
    if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v97 = "Failed to get the alert configuration from configuration";
LABEL_94:
      _os_log_error_impl(&_mh_execute_header, v96, OS_LOG_TYPE_ERROR, v97, buf, 2u);
    }
  }

LABEL_112:
  v108 = *a2;
  v109 = a2[1];
  if (v109)
  {
    atomic_fetch_add_explicit(&v109->__shared_owners_, 1uLL, memory_order_relaxed);
    if (*(v108 + 12) == 1)
    {
      v108 = *a2;
      goto LABEL_116;
    }

    sub_100004A34(v109);
  }

  else if (*(v108 + 12) == 1)
  {
LABEL_116:
    v110 = (*(*v108 + 368))(v108);
    v111 = (*(**a2 + 440))(*a2);
    v112 = sub_1015C8E94(a1, v4, v110, v111);
    if (v109)
    {
      sub_100004A34(v109);
    }

    if (v112)
    {
      v113 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v113, OS_LOG_TYPE_DEFAULT, "#I Dropping multi-lang Alert...", buf, 2u);
      }

      goto LABEL_282;
    }
  }

  cf = 0;
  if (v253 >= 0)
  {
    v114 = v252;
  }

  else
  {
    v114 = v252[0];
  }

  v115 = CFStringCreateWithCString(kCFAllocatorDefault, v114, 0x8000100u);
  cf = v115;
  if (!v115)
  {
    v141 = *(a1 + 40);
    if (os_log_type_enabled(v141, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v141, OS_LOG_TYPE_ERROR, "Failed to allocate string for broadcasted message", buf, 2u);
    }

    goto LABEL_281;
  }

  CFDictionarySetValue(theDict, @"kCTSMSCellBroadcastString", v115);
  v241 = 0;
  v242 = 0;
  v243 = 0;
  v231 = (*(**a2 + 368))(*a2);
  theString = cf;
  CFRetain(cf);
  v233 = (*(**(a1 + 48) + 16))(*(a1 + 48), v4);
  __dst = 0uLL;
  v272[0] = 0;
  v267 = 0;
  sub_10115BA5C(*(a1 + 368), v4, 2, @"CellBroadcast", 0, 0, buf);
  sub_100010180(&v267, buf);
  sub_10000A1EC(buf);
  if (!v267)
  {
    v142 = *v233;
    if (os_log_type_enabled(*v233, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v142, OS_LOG_TYPE_ERROR, "Translation failed. No CellBroadcast dict", buf, 2u);
    }

    sub_1015D1AC0(&v241, &__dst);
    goto LABEL_168;
  }

  v266 = 0;
  v116 = *(a1 + 368);
  theArray[0] = @"CellBroadcast";
  theArray[1] = @"TranslationParameters";
  v269 = @"MessageIDRange";
  memset(buf, 0, 24);
  sub_10005B328(buf, theArray, &v270, 3uLL);
  sub_10115B8EC(v116, v4, 2, buf, 0, 0, &v265);
  sub_10006DD00(&v266, &v265.__r_.__value_.__l.__data_);
  sub_10000A1EC(&v265.__r_.__value_.__l.__data_);
  if (*buf)
  {
    *&buf[8] = *buf;
    operator delete(*buf);
  }

  if (!v266)
  {
    goto LABEL_166;
  }

  v117 = CFArrayGetCount(v266);
  if (v117 < 1)
  {
LABEL_164:
    v143 = *v233;
    if (os_log_type_enabled(*v233, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v143, OS_LOG_TYPE_ERROR, "Failed to match Translation reference", buf, 2u);
    }

    goto LABEL_166;
  }

  v118 = 0;
  while (1)
  {
    v119 = CFArrayGetValueAtIndex(v266, v118);
    v120 = v119;
    if (v119)
    {
      v121 = CFGetTypeID(v119);
      if (v121 == CFDictionaryGetTypeID())
      {
        break;
      }
    }

    v126 = *v233;
    if (os_log_type_enabled(*v233, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      *&buf[4] = v118;
      v127 = v126;
      v128 = "Invalid Message ID dictionary at index: %ld";
      v129 = 12;
LABEL_152:
      _os_log_error_impl(&_mh_execute_header, v127, OS_LOG_TYPE_ERROR, v128, buf, v129);
    }

LABEL_153:
    if (v117 == ++v118)
    {
      goto LABEL_164;
    }
  }

  v122 = CFDictionaryGetValue(v120, @"FromServiceID");
  v123 = v122;
  if (v122)
  {
    v124 = CFGetTypeID(v122);
    if (v124 == CFNumberGetTypeID())
    {
      v125 = v123;
    }

    else
    {
      v125 = 0;
    }
  }

  else
  {
    v125 = 0;
  }

  v130 = CFDictionaryGetValue(v120, @"ToServiceID");
  v131 = v130;
  if (!v130 || (v132 = CFGetTypeID(v130), v132 != CFNumberGetTypeID()) || !v125)
  {
    v140 = *v233;
    if (os_log_type_enabled(*v233, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v127 = v140;
      v128 = "Invalid From / To reference";
      v129 = 2;
      goto LABEL_152;
    }

    goto LABEL_153;
  }

  *buf = 0;
  ctu::cf::assign(buf, v125, v133);
  v134 = *buf;
  *buf = 0;
  ctu::cf::assign(buf, v131, v135);
  if (v231 < v134)
  {
    goto LABEL_153;
  }

  v136 = *buf;
  if (v231 > *buf)
  {
    goto LABEL_153;
  }

  theArray[0] = 0;
  *buf = CFDictionaryGetValue(v120, @"TranslationReference");
  sub_100060DE8(theArray, buf);
  v137 = theArray[0];
  v138 = *v233;
  v139 = *v233;
  if (!theArray[0])
  {
    if (os_log_type_enabled(v139, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v138, OS_LOG_TYPE_ERROR, "Failed to read Translation reference", buf, 2u);
    }

    sub_100005978(theArray);
    goto LABEL_153;
  }

  if (os_log_type_enabled(v139, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *&buf[4] = v134;
    *&buf[8] = 1024;
    *&buf[10] = v136;
    _os_log_impl(&_mh_execute_header, v138, OS_LOG_TYPE_DEFAULT, "#I Translation possible [%d %d]", buf, 0xEu);
    v137 = theArray[0];
    sub_100005978(theArray);
    if (!v137)
    {
      goto LABEL_164;
    }
  }

  else
  {
    sub_100005978(theArray);
  }

  if ((sub_1015C9748(a1, v4) & 1) == 0)
  {
LABEL_166:
    sub_1015D1AC0(&v241, &__dst);
    goto LABEL_167;
  }

  v175 = v137;
  v176 = (a1 + 456);
  if (*(a1 + 479) < 0)
  {
    v176 = *v176;
  }

  v265.__r_.__value_.__r.__words[0] = 0;
  theArray[0] = 0;
  if (ctu::cf::convert_copy(theArray, v176, 0x8000100, kCFAllocatorDefault, v174))
  {
    v177 = v265.__r_.__value_.__r.__words[0];
    v265.__r_.__value_.__l.__data_ = theArray[0];
    *buf = v177;
    sub_100005978(buf);
  }

  v264.__r_.__value_.__r.__words[0] = v265.__r_.__value_.__r.__words[0];
  v265.__r_.__value_.__r.__words[0] = 0;
  sub_100005978(&v265.__r_.__value_.__l.__data_);
  key = v264.__r_.__value_.__r.__words[0];
  sub_100005978(&v264.__r_.__value_.__l.__data_);
  theArray[0] = 0;
  theArray[1] = 0;
  v269 = 0;
  memset(buf, 0, 24);
  ctu::cf::assign();
  v264 = *buf;
  sub_10000501C(&v263, " ");
  if ((v263.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v178 = &v263;
  }

  else
  {
    v178 = v263.__r_.__value_.__r.__words[0];
  }

  if ((v263.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v263.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v263.__r_.__value_.__l.__size_;
  }

  v180 = std::string::append(&v264, v178, size);
  v181 = *&v180->__r_.__value_.__l.__data_;
  v265.__r_.__value_.__r.__words[2] = v180->__r_.__value_.__r.__words[2];
  *&v265.__r_.__value_.__l.__data_ = v181;
  v180->__r_.__value_.__l.__size_ = 0;
  v180->__r_.__value_.__r.__words[2] = 0;
  v180->__r_.__value_.__r.__words[0] = 0;
  memset(buf, 0, 24);
  ctu::cf::assign();
  v261 = *buf;
  v262 = *&buf[16];
  if (buf[23] >= 0)
  {
    v182 = &v261;
  }

  else
  {
    v182 = v261;
  }

  if (buf[23] >= 0)
  {
    v183 = buf[23];
  }

  else
  {
    v183 = *(&v261 + 1);
  }

  v184 = std::string::append(&v265, v182, v183);
  v185 = *&v184->__r_.__value_.__l.__data_;
  v269 = v184->__r_.__value_.__r.__words[2];
  *theArray = v185;
  v184->__r_.__value_.__l.__size_ = 0;
  v184->__r_.__value_.__r.__words[2] = 0;
  v184->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v262) < 0)
  {
    operator delete(v261);
  }

  if (SHIBYTE(v265.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v265.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v263.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v263.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v264.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v264.__r_.__value_.__l.__data_);
  }

  memset(&v265, 0, sizeof(v265));
  memset(buf, 0, 24);
  ctu::cf::assign();
  v263 = *buf;
  sub_10000501C(&v261, " ");
  if (v262 >= 0)
  {
    v186 = &v261;
  }

  else
  {
    v186 = v261;
  }

  if (v262 >= 0)
  {
    v187 = HIBYTE(v262);
  }

  else
  {
    v187 = *(&v261 + 1);
  }

  v188 = std::string::append(&v263, v186, v187);
  v189 = *&v188->__r_.__value_.__l.__data_;
  v264.__r_.__value_.__r.__words[2] = v188->__r_.__value_.__r.__words[2];
  *&v264.__r_.__value_.__l.__data_ = v189;
  v188->__r_.__value_.__l.__size_ = 0;
  v188->__r_.__value_.__r.__words[2] = 0;
  v188->__r_.__value_.__r.__words[0] = 0;
  memset(buf, 0, 24);
  ctu::cf::assign();
  v259 = *buf;
  v260 = *&buf[16];
  if (buf[23] >= 0)
  {
    v190 = &v259;
  }

  else
  {
    v190 = v259;
  }

  if (buf[23] >= 0)
  {
    v191 = buf[23];
  }

  else
  {
    v191 = *(&v259 + 1);
  }

  v192 = std::string::append(&v264, v190, v191);
  v193 = *&v192->__r_.__value_.__l.__data_;
  v265.__r_.__value_.__r.__words[2] = v192->__r_.__value_.__r.__words[2];
  *&v265.__r_.__value_.__l.__data_ = v193;
  v192->__r_.__value_.__l.__size_ = 0;
  v192->__r_.__value_.__r.__words[2] = 0;
  v192->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v260) < 0)
  {
    operator delete(v259);
  }

  if (SHIBYTE(v264.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v264.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v262) < 0)
  {
    operator delete(v261);
  }

  if (SHIBYTE(v263.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v263.__r_.__value_.__l.__data_);
  }

  *&v261 = 0;
  if (SHIBYTE(v269) >= 0)
  {
    v194 = theArray;
  }

  else
  {
    v194 = theArray[0];
  }

  *&v261 = CFStringCreateWithCString(kCFAllocatorDefault, v194, 0x8000100u);
  *&v259 = 0;
  if ((v265.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v195 = &v265;
  }

  else
  {
    v195 = v265.__r_.__value_.__r.__words[0];
  }

  v196 = CFStringCreateWithCString(kCFAllocatorDefault, v195, 0x8000100u);
  v258 = 0;
  *&v259 = v196;
  ServiceMap = Registry::getServiceMap(*(a1 + 240));
  v198 = ServiceMap;
  v200 = v199;
  if (v199 < 0)
  {
    v201 = (v199 & 0x7FFFFFFFFFFFFFFFLL);
    v202 = 5381;
    do
    {
      v200 = v202;
      v203 = *v201++;
      v202 = (33 * v202) ^ v203;
    }

    while (v203);
  }

  std::mutex::lock(ServiceMap);
  *buf = v200;
  v204 = sub_100009510(&v198[1].__m_.__sig, buf);
  if (v204)
  {
    v206 = v204[3];
    v205 = v204[4];
    if (v205)
    {
      atomic_fetch_add_explicit(&v205->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v198);
      atomic_fetch_add_explicit(&v205->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v205);
      v207 = 0;
      goto LABEL_348;
    }
  }

  else
  {
    v206 = 0;
  }

  std::mutex::unlock(v198);
  v205 = 0;
  v207 = 1;
LABEL_348:
  v208 = kCellBroadcastLocalizationTable;
  (*(*v206 + 16))(&v258, v206, kCellBroadcastLocalizationTable, v261, 1);
  if ((v207 & 1) == 0)
  {
    sub_100004A34(v205);
  }

  v257 = 0;
  v209 = Registry::getServiceMap(*(a1 + 240));
  v210 = v209;
  if (v199 < 0)
  {
    v211 = (v199 & 0x7FFFFFFFFFFFFFFFLL);
    v212 = 5381;
    do
    {
      v199 = v212;
      v213 = *v211++;
      v212 = (33 * v212) ^ v213;
    }

    while (v213);
  }

  std::mutex::lock(v209);
  *buf = v199;
  v214 = sub_100009510(&v210[1].__m_.__sig, buf);
  if (v214)
  {
    v216 = v214[3];
    v215 = v214[4];
    if (v215)
    {
      atomic_fetch_add_explicit(&v215->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v210);
      atomic_fetch_add_explicit(&v215->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v215);
      v217 = 0;
      goto LABEL_358;
    }
  }

  else
  {
    v216 = 0;
  }

  std::mutex::unlock(v210);
  v215 = 0;
  v217 = 1;
LABEL_358:
  (*(*v216 + 16))(&v257, v216, v208, v259, 1);
  if ((v217 & 1) == 0)
  {
    sub_100004A34(v215);
  }

  v256 = 0;
  v218 = *(a1 + 368);
  *buf = @"CellBroadcast";
  *&buf[8] = @"TranslationParameters";
  *&buf[16] = @"Translations";
  *&buf[24] = v175;
  *&v274 = key;
  memset(&v264, 0, sizeof(v264));
  sub_10005B328(&v264, buf, &v274 + 1, 5uLL);
  sub_10115B8EC(v218, v4, 2, &v264, 0, 0, &v263);
  sub_100010180(&v256, &v263.__r_.__value_.__l.__data_);
  sub_10000A1EC(&v263.__r_.__value_.__l.__data_);
  if (v264.__r_.__value_.__r.__words[0])
  {
    v264.__r_.__value_.__l.__size_ = v264.__r_.__value_.__r.__words[0];
    operator delete(v264.__r_.__value_.__l.__data_);
  }

  if (v256)
  {
    goto LABEL_368;
  }

  v219 = *v233;
  if (os_log_type_enabled(*v233, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v219, OS_LOG_TYPE_DEFAULT, "#I Attempting to read default language", buf, 2u);
  }

  v220 = *(a1 + 368);
  *buf = @"CellBroadcast";
  *&buf[8] = @"TranslationParameters";
  *&buf[16] = @"Translations";
  *&buf[24] = v175;
  *&v274 = @"default";
  memset(&v264, 0, sizeof(v264));
  sub_10005B328(&v264, buf, &v274 + 1, 5uLL);
  sub_10115B8EC(v220, v4, 2, &v264, 0, 0, &v254);
  sub_100010180(&v255, &v254);
  v221 = v255;
  v263.__r_.__value_.__r.__words[0] = v256;
  v255 = 0;
  v256 = v221;
  sub_10001021C(&v263.__r_.__value_.__l.__data_);
  sub_10001021C(&v255);
  sub_10000A1EC(&v254);
  if (v264.__r_.__value_.__r.__words[0])
  {
    v264.__r_.__value_.__l.__size_ = v264.__r_.__value_.__r.__words[0];
    operator delete(v264.__r_.__value_.__l.__data_);
  }

  if (v256)
  {
LABEL_368:
    v263.__r_.__value_.__r.__words[0] = 0;
    v222 = *(a1 + 368);
    *buf = @"CellBroadcast";
    *&buf[8] = @"TranslationParameters";
    *&buf[16] = @"Translations";
    *&buf[24] = @"AlertKeywords";
    *&v274 = v175;
    memset(&v264, 0, sizeof(v264));
    sub_10005B328(&v264, buf, &v274 + 1, 5uLL);
    sub_10115B8EC(v222, v4, 2, &v264, 0, 0, &v255);
    sub_10006DD00(&v263, &v255);
    sub_10000A1EC(&v255);
    if (v264.__r_.__value_.__r.__words[0])
    {
      v264.__r_.__value_.__l.__size_ = v264.__r_.__value_.__r.__words[0];
      operator delete(v264.__r_.__value_.__l.__data_);
    }

    v223 = v263.__r_.__value_.__r.__words[0];
    if (v263.__r_.__value_.__r.__words[0])
    {
      for (i = 0; i < CFArrayGetCount(v223); ++i)
      {
        v225 = CFArrayGetValueAtIndex(v263.__r_.__value_.__l.__data_, i);
        v226 = v225;
        if (v225)
        {
          v227 = CFGetTypeID(v225);
          if (v227 == CFStringGetTypeID())
          {
            v282.length = CFStringGetLength(theString);
            v282.location = 0;
            if (!CFStringFindWithOptions(theString, v226, v282, 1uLL, 0))
            {
              v230 = *v233;
              if (os_log_type_enabled(*v233, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&_mh_execute_header, v230, OS_LOG_TYPE_ERROR, "Failed to match essential expression", buf, 2u);
              }

              sub_1015D1AC0(&v241, &__dst);
              goto LABEL_381;
            }
          }
        }

        v223 = v263.__r_.__value_.__r.__words[0];
      }
    }

    *buf = 0;
    v264.__r_.__value_.__r.__words[0] = CFDictionaryGetValue(v256, @"Sound");
    sub_100060DE8(buf, &v264.__r_.__value_.__l.__data_);
    if (!*buf)
    {
      v228 = *v233;
      if (os_log_type_enabled(*v233, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v264.__r_.__value_.__l.__data_) = 0;
        _os_log_error_impl(&_mh_execute_header, v228, OS_LOG_TYPE_ERROR, "Translated Sound is null", &v264, 2u);
      }
    }

    sub_10005C7A4(&v241, &v257);
    sub_10005C7A4(&v242, &v258);
    sub_10005C7A4(&v243, buf);
    sub_100005978(buf);
LABEL_381:
    sub_100010250(&v263.__r_.__value_.__l.__data_);
  }

  else
  {
    v229 = *v233;
    if (os_log_type_enabled(*v233, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v229, OS_LOG_TYPE_ERROR, "Translations not found", buf, 2u);
    }

    sub_1015D1AC0(&v241, &__dst);
  }

  sub_10001021C(&v256);
  sub_100005978(&v257);
  sub_100005978(&v258);
  sub_100005978(&v259);
  sub_100005978(&v261);
  if (SHIBYTE(v265.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v265.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v269) < 0)
  {
    operator delete(theArray[0]);
  }

LABEL_167:
  sub_100010250(&v266);
LABEL_168:
  sub_10001021C(&v267);
  sub_100005978(v272);
  sub_100005978(&__dst + 1);
  sub_100005978(&__dst);
  sub_100005978(&theString);
  if (v241)
  {
    CFDictionarySetValue(theDict, @"kCTSMSCellBroadcastTranslatedTitle", v241);
  }

  if (v242)
  {
    CFDictionarySetValue(theDict, @"kCTSMSCellBroadcastTranslatedText", v242);
  }

  if (v243)
  {
    CFDictionarySetValue(theDict, @"kCTSMSCellBroadcastTranslatedSound", v243);
  }

  *&v261 = 0;
  v144 = *(a1 + 368);
  *&__dst = @"CellBroadcast";
  *(&__dst + 1) = @"PreventScreenCapture";
  memset(buf, 0, 24);
  sub_10005B328(buf, &__dst, v272, 2uLL);
  sub_10115B8EC(v144, v4, 2, buf, kCFBooleanFalse, 0, theArray);
  sub_10002FE1C(&v261, theArray);
  sub_10000A1EC(theArray);
  if (*buf)
  {
    *&buf[8] = *buf;
    operator delete(*buf);
  }

  buf[0] = 0;
  ctu::cf::assign(buf, v261, v145);
  if (buf[0] == 1)
  {
    CFDictionarySetValue(theDict, @"PreventScreenCapture", kCFBooleanTrue);
  }

  v239 = theDict;
  if (theDict)
  {
    CFRetain(theDict);
  }

  CellBroadcastConfig::updateWeaWithAppleSafetyAlert_sync(a1, &v239, v252);
  sub_1000296E0(&v239);
  if (*(a1 + 448) == 1)
  {
    CFDictionarySetValue(theDict, @"BatterySaverModeEnabled", kCFBooleanTrue);
    sub_1015CDC7C(a1, v4);
  }

  theArray[0] = 0;
  theArray[1] = 0;
  v269 = 0;
  v146 = (*(**a2 + 440))(*a2);
  *&__dst = 0;
  sub_1015C6438(&__dst, *(a1 + 368), v4);
  if (!__dst || (v264.__r_.__value_.__s.__data_[0] = 0, !sub_1015C683C(a1, v4, &v264)) || (v264.__r_.__value_.__s.__data_[0] & 1) == 0 || (v147 = CFArrayGetCount(__dst), v147 < 1))
  {
LABEL_204:
    sub_10000501C(theArray, "");
    goto LABEL_205;
  }

  v148 = 0;
  while (2)
  {
    v265.__r_.__value_.__r.__words[0] = 0;
    *buf = CFArrayGetValueAtIndex(__dst, v148);
    sub_100060DE8(&v265, buf);
    if (!v265.__r_.__value_.__r.__words[0])
    {
LABEL_203:
      sub_100005978(&v265.__r_.__value_.__l.__data_);
      if (++v148 == v147)
      {
        goto LABEL_204;
      }

      continue;
    }

    break;
  }

  theArray[0] = 0;
  theArray[1] = 0;
  v269 = 0;
  memset(buf, 0, 24);
  ctu::cf::assign();
  *theArray = *buf;
  v269 = *&buf[16];
  v149 = *buf;
  v150 = buf[23];
  if (buf[23] >= 0)
  {
    v151 = (theArray + buf[23]);
  }

  else
  {
    v151 = (theArray[0] + theArray[1]);
  }

  if (buf[23] >= 0)
  {
    v152 = theArray;
  }

  else
  {
    v152 = theArray[0];
  }

  if (v152 != v151)
  {
    do
    {
      *v152 = __tolower(*v152);
      v152 = (v152 + 1);
    }

    while (v152 != v151);
    v150 = HIBYTE(v269);
    v149 = theArray[0];
  }

  if (v150 >= 0)
  {
    v153 = theArray;
  }

  else
  {
    v153 = v149;
  }

  if (getBroadcastLanguageFromLocale(v153) != v146)
  {
    if (SHIBYTE(v269) < 0)
    {
      operator delete(theArray[0]);
    }

    goto LABEL_203;
  }

  sub_100005978(&v265.__r_.__value_.__l.__data_);
LABEL_205:
  sub_100010250(&__dst);
  v154 = _os_feature_enabled_impl();
  if (SHIBYTE(v269) < 0)
  {
    if (((theArray[1] != 0) & v154) != 0)
    {
      *&v259 = 0;
      sub_100005F2C(__p, theArray[0], theArray[1]);
LABEL_210:
      if (SHIBYTE(v238) < 0)
      {
        sub_100005F2C(&__dst, __p[0], __p[1]);
      }

      else
      {
        __dst = *__p;
        v272[0] = v238;
      }

      v263.__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v272[0]) < 0)
      {
        sub_100005F2C(buf, __dst, *(&__dst + 1));
      }

      else
      {
        *buf = __dst;
        *&buf[16] = v272[0];
      }

      v264.__r_.__value_.__r.__words[0] = 0;
      if (ctu::cf::convert_copy())
      {
        v155 = v263.__r_.__value_.__r.__words[0];
        v263.__r_.__value_.__r.__words[0] = v264.__r_.__value_.__r.__words[0];
        v265.__r_.__value_.__r.__words[0] = v155;
        sub_100005978(&v265.__r_.__value_.__l.__data_);
      }

      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      *&v259 = v263.__r_.__value_.__r.__words[0];
      v263.__r_.__value_.__r.__words[0] = 0;
      sub_100005978(&v263.__r_.__value_.__l.__data_);
      if (SHIBYTE(v272[0]) < 0)
      {
        operator delete(__dst);
      }

      if (SHIBYTE(v238) < 0)
      {
        operator delete(__p[0]);
      }

      CFDictionarySetValue(theDict, @"kCTSMSAutoReadOutAlertLanguage", v259);
      sub_100005978(&v259);
    }
  }

  else if (((SHIBYTE(v269) != 0) & v154) == 1)
  {
    *&v259 = 0;
    *__p = *theArray;
    v238 = v269;
    goto LABEL_210;
  }

  v236 = theDict;
  if (theDict)
  {
    CFRetain(theDict);
  }

  CellBroadcastConfig::sendCmasNotification_sync(a1, &v236);
  sub_1000296E0(&v236);
  v156 = a2[1];
  v234 = *a2;
  v235 = v156;
  if (v156)
  {
    atomic_fetch_add_explicit(&v156->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  memset(v278, 0, sizeof(v278));
  v279 = 0;
  v276 = 0u;
  v277 = 0u;
  v274 = 0u;
  v275 = 0u;
  memset(buf, 0, sizeof(buf));
  *&buf[24] = 11;
  LODWORD(v275) = 30;
  DWORD2(v275) = 3;
  *(&v278[1] + 5) = 0u;
  v157 = *(a1 + 216);
  v158 = *(a1 + 224);
  *&__dst = &v234;
  *(&__dst + 1) = buf;
  if (v157 != v158)
  {
    while ((sub_1015D1D34(&__dst, v157) & 1) == 0)
    {
      v157 += 144;
      if (v157 == v158)
      {
        v157 = v158;
        goto LABEL_245;
      }
    }
  }

  if (v157 != v158)
  {
    for (j = v157 + 144; j != v158; j += 144)
    {
      if ((sub_1015D1D34(&__dst, j) & 1) == 0)
      {
        if (*(v157 + 23) < 0)
        {
          operator delete(*v157);
        }

        v160 = *j;
        *(v157 + 16) = *(j + 16);
        *v157 = v160;
        *(j + 23) = 0;
        *j = 0;
        v161 = *(j + 56);
        v162 = *(j + 40);
        *(v157 + 24) = *(j + 24);
        *(v157 + 40) = v162;
        *(v157 + 56) = v161;
        if (*(v157 + 95) < 0)
        {
          operator delete(*(v157 + 72));
        }

        v163 = *(j + 72);
        *(v157 + 88) = *(j + 88);
        *(v157 + 72) = v163;
        *(j + 95) = 0;
        *(j + 72) = 0;
        if (*(v157 + 119) < 0)
        {
          operator delete(*(v157 + 96));
        }

        v164 = *(j + 96);
        *(v157 + 112) = *(j + 112);
        *(v157 + 96) = v164;
        *(j + 119) = 0;
        *(j + 96) = 0;
        v165 = *(j + 120);
        *(v157 + 136) = *(j + 136);
        *(v157 + 120) = v165;
        v157 += 144;
      }
    }
  }

LABEL_245:
  sub_1015D0994((a1 + 216), v157, *(a1 + 224));
  *&v265.__r_.__value_.__l.__data_ = 0uLL;
  (*(*v234 + 416))(&v265);
  if (v265.__r_.__value_.__r.__words[0])
  {
    (*(*v234 + 192))(&__dst);
    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    *buf = __dst;
    *&buf[16] = v272[0];
    v166 = *(v234 + 12);
    *&buf[24] = *(v265.__r_.__value_.__r.__words[0] + 12);
    *&buf[28] = v166;
    if (v166 == 1)
    {
      v167 = (*(*v234 + 368))();
    }

    else
    {
      v167 = sms::Model::getMessageID(v234);
    }

    LODWORD(v274) = v167;
    v169 = *(a1 + 240);
    v170 = *(a1 + 248);
    if (v170)
    {
      atomic_fetch_add_explicit(&v170->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    *(&v274 + 1) = sub_1015D0AF0(v169);
    if (v170)
    {
      sub_100004A34(v170);
    }

    LODWORD(v275) = (*(*v234 + 440))(v234);
    v171 = v265.__r_.__value_.__r.__words[0];
    v172 = *(v265.__r_.__value_.__r.__words[0] + 16);
    v173 = *(v265.__r_.__value_.__r.__words[0] + 24);
    if (v173)
    {
      atomic_fetch_add_explicit(&v173->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v172)
    {
      DWORD2(v275) = *(v171 + 8);
      *&v276 = sub_1017018C8(v172);
    }

    if (v173)
    {
      sub_100004A34(v173);
    }

    *&__dst = 0;
    CellBroadcastConfig::getAppleSafetyAlertConfig_sync(&__dst, a1);
    if (__dst)
    {
      sub_10001021C(&__dst);
      if (!v279)
      {
        sub_1015CF7FC(a1, buf);
      }

      sub_1015CFE18(a1, buf);
    }

    else
    {
      sub_1015CFE18(a1, buf);
      sub_10001021C(&__dst);
    }
  }

  else
  {
    v168 = *(a1 + 40);
    if (os_log_type_enabled(v168, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__dst) = 0;
      _os_log_error_impl(&_mh_execute_header, v168, OS_LOG_TYPE_ERROR, "Invalid CB PDU decoder while submitting metric", &__dst, 2u);
    }
  }

  if (v265.__r_.__value_.__l.__size_)
  {
    sub_100004A34(v265.__r_.__value_.__l.__size_);
  }

  if (SHIBYTE(v278[2]) < 0)
  {
    operator delete(v278[0]);
  }

  if (SHIBYTE(v277) < 0)
  {
    operator delete(*(&v276 + 1));
  }

  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  if (v235)
  {
    sub_100004A34(v235);
  }

  if (SHIBYTE(v269) < 0)
  {
    operator delete(theArray[0]);
  }

  sub_100045C8C(&v261);
  sub_100005978(&v243);
  sub_100005978(&v242);
  sub_100005978(&v241);
LABEL_281:
  sub_100005978(&cf);
LABEL_282:
  sub_10001021C(&value);
  sub_100010250(&v249);
  sub_100029A48(&v250);
LABEL_283:
  sub_1000296E0(&theDict);
LABEL_284:
  if (v253 < 0)
  {
    operator delete(v252[0]);
  }
}

void sub_1015CCE2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, const void *a25, uint64_t a26, uint64_t a27, uint64_t a28, const void *a29, uint64_t a30, const void *a31, uint64_t a32, uint64_t a33, const void *a34, const void *a35, const void *a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, const void *a43, uint64_t a44, const void *a45, const void *a46, const void *a47, const void *a48, uint64_t a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58, uint64_t a59, void *__p, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_10000A1EC(&a43);
  if (__p)
  {
    a61 = __p;
    operator delete(__p);
  }

  sub_10001021C(&a45);
  sub_100005978(&a46);
  sub_100005978(&a47);
  sub_100005978(&a48);
  sub_100005978(&a52);
  if (a65 < 0)
  {
    operator delete(a64);
  }

  if (a69 < 0)
  {
    operator delete(a68);
  }

  sub_100010250(&a66);
  sub_10001021C(&a67);
  sub_1008A082C(&a70);
  sub_100005978(&a25);
  sub_100005978(&a29);
  sub_10001021C(&a31);
  sub_100010250(&a34);
  sub_100029A48(&a35);
  sub_1000296E0(&a36);
  if (a42 < 0)
  {
    operator delete(a37);
  }

  _Unwind_Resume(a1);
}

const void **sub_1015CD3F0(CFDictionaryRef *a1, uint64_t a2, uint64_t a3, CFDictionaryRef *a4, uint64_t a5, unsigned int a6)
{
  theDict = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, *a4);
  if (!theDict)
  {
    v19 = *(a2 + 40);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p[0]) = 0;
      _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Unable to create dict", __p, 2u);
    }

    goto LABEL_16;
  }

  v12 = *(a2 + 368);
  *&buf = @"CellBroadcast";
  *(&buf + 1) = @"SoundIsMutableInRelayMode";
  memset(__p, 0, sizeof(__p));
  sub_10005B328(__p, &buf, __p, 2uLL);
  sub_10115B8EC(v12, a3, 2, __p, kCFBooleanFalse, 0, &cf);
  v13 = cf;
  LOBYTE(v68) = 0;
  if (cf)
  {
    v14 = CFGetTypeID(cf);
    if (v14 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(&v68, v13, v15);
    }
  }

  v16 = v68;
  sub_10000A1EC(&cf);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v16)
  {
    CFDictionarySetValue(theDict, @"SoundIsMutableInRelayMode", kCFBooleanTrue);
  }

  if (!CFDictionaryContainsKey(*a4, @"CustomPreferences"))
  {
    goto LABEL_79;
  }

  CFDictionaryRemoveValue(theDict, @"CustomPreferences");
  if (*(a2 + 504))
  {
    v17 = *(a2 + 40);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = asString();
      LODWORD(__p[0]) = 136315138;
      *(__p + 4) = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I AlwaysDeliverPref not added, Ringer state: %s", __p, 0xCu);
    }

    goto LABEL_79;
  }

  Value = CFDictionaryGetValue(*a4, @"CustomPreferences");
  v22 = Value;
  if (!Value)
  {
    goto LABEL_62;
  }

  v23 = CFGetTypeID(Value);
  TypeID = CFArrayGetTypeID();
  if (v23 != TypeID)
  {
    v22 = 0;
  }

  if (!a5 || v23 != TypeID)
  {
LABEL_62:
    v53 = *(a2 + 40);
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "#I Unable to filter custom preference", __p, 2u);
    }

LABEL_16:
    *a1 = *a4;
    *a4 = 0;
    return sub_1000296E0(&theDict);
  }

  if (CFArrayGetCount(v22) < 1)
  {
LABEL_60:
    v52 = *(a2 + 40);
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "#I Custom preference not applicable for this alert", __p, 2u);
    }

    goto LABEL_62;
  }

  v25 = 0;
  while (1)
  {
    __p[0] = 0;
    *&buf = CFArrayGetValueAtIndex(v22, v25);
    sub_100010180(__p, &buf);
    if (!__p[0])
    {
      v29 = *(a2 + 40);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf) = 0;
        _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Invalid format for custom preference", &buf, 2u);
      }

      goto LABEL_31;
    }

    v26 = CFDictionaryGetValue(__p[0], @"ShowAlwaysDeliverSwitch");
    v27 = v26;
    if (v26)
    {
      v28 = CFGetTypeID(v26);
      if (v28 == CFBooleanGetTypeID())
      {
        break;
      }
    }

LABEL_31:
    sub_10001021C(__p);
    if (++v25 >= CFArrayGetCount(v22))
    {
      goto LABEL_60;
    }
  }

  if (!CFBooleanGetValue(v27))
  {
    v51 = *(a2 + 40);
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "#I Show always deliver is set to false. Not adding custom preference", &buf, 2u);
    }

    goto LABEL_58;
  }

  v31 = CFDictionaryGetValue(__p[0], @"EnableAlwaysDeliverByDefault");
  v32 = v31;
  if (v31)
  {
    v33 = CFGetTypeID(v31);
    if (v33 != CFBooleanGetTypeID())
    {
      v32 = 0;
    }
  }

  v34 = CFDictionaryGetValue(__p[0], @"MessageIDParameters3GPP");
  v35 = v34;
  if (!v34 || (v36 = CFGetTypeID(v34), v36 != CFArrayGetTypeID()) || !v32)
  {
    v50 = *(a2 + 40);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_error_impl(&_mh_execute_header, v50, OS_LOG_TYPE_ERROR, "Invalid format for custom preference, missing 3GPPRange/ enable by default", &buf, 2u);
    }

LABEL_58:
    sub_10001021C(__p);
    goto LABEL_62;
  }

  v37 = 0;
  v66 = v32;
  while (1)
  {
    if (v37 >= CFArrayGetCount(v35))
    {
      sub_10001021C(__p);
      goto LABEL_60;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(v35, v37);
    v39 = ValueAtIndex;
    if (ValueAtIndex)
    {
      v40 = CFGetTypeID(ValueAtIndex);
      if (v40 != CFDictionaryGetTypeID())
      {
        v39 = 0;
      }
    }

    v41 = CFDictionaryGetValue(v39, @"FromServiceID");
    v42 = v41;
    if (v41)
    {
      v43 = CFGetTypeID(v41);
      if (v43 != CFNumberGetTypeID())
      {
        v42 = 0;
      }
    }

    v44 = CFDictionaryGetValue(v39, @"ToServiceID");
    v46 = v44;
    if (v44)
    {
      v47 = CFGetTypeID(v44);
      if (v47 != CFNumberGetTypeID())
      {
        v46 = 0;
      }
    }

    LOWORD(buf) = 0;
    ctu::cf::assign(&buf, v42, v45);
    if (buf <= a6)
    {
      LOWORD(buf) = 0;
      ctu::cf::assign(&buf, v46, v48);
      if (buf >= a6)
      {
        break;
      }
    }

    ++v37;
  }

  LOBYTE(buf) = 0;
  ctu::cf::assign(&buf, v66, v49);
  v54 = buf;
  sub_10001021C(__p);
  *__p = 0uLL;
  Registry::getMobileHelper(__p, *(a2 + 240));
  v55 = __p[0];
  if (__p[0])
  {
    cf = 0;
    v68 = CFStringCreateWithFormat(0, 0, @"%@%@%@", @"CellBroadcastSetting", a5, @"AlwaysDeliverPref");
    (*(*v55 + 16))(&buf, v55, kCommCenterSharedSettingsBundleId, v68);
    sub_10002FE1C(&cf, &buf);
    sub_10000A1EC(&buf);
    sub_100005978(&v68);
    if (cf)
    {
      LOBYTE(buf) = 0;
      ctu::cf::assign(&buf, cf, v56);
      v54 = buf;
      v57 = *(a2 + 40);
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
      {
        v58 = CSIBOOLAsString(v54);
        LODWORD(buf) = 136446210;
        *(&buf + 4) = v58;
        v59 = "#I AlwaysDeliverPref (From user-setting): %{public}s";
        v60 = v57;
        v61 = 12;
        goto LABEL_70;
      }
    }

    else
    {
      v62 = *(a2 + 40);
      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        v59 = "#I No user pref for AlwaysDeliverPref";
        v60 = v62;
        v61 = 2;
LABEL_70:
        _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, v59, &buf, v61);
      }
    }

    sub_100045C8C(&cf);
  }

  if (__p[1])
  {
    sub_100004A34(__p[1]);
  }

  if (v54)
  {
    v63 = kCFBooleanTrue;
  }

  else
  {
    v63 = kCFBooleanFalse;
  }

  CFDictionarySetValue(theDict, @"AlwaysDeliverPref", v63);
  v64 = *(a2 + 40);
  if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
  {
    v65 = CSIBOOLAsString(v54);
    LODWORD(__p[0]) = 136315138;
    *(__p + 4) = v65;
    _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "#I Added AlwaysDeliverPref: %s", __p, 0xCu);
  }

LABEL_79:
  sub_100010180(a1, &theDict);
  return sub_1000296E0(&theDict);
}

void sub_1015CDBB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, const void *a16, __int16 a17, char a18, char a19, int a20, const void *a21, __int16 a22, char a23, char a24, uint64_t a25, void *__p, std::__shared_weak_count *a27)
{
  sub_100045C8C(&a21);
  if (a27)
  {
    sub_100004A34(a27);
  }

  sub_1000296E0(&a16);
  _Unwind_Resume(a1);
}

void sub_1015CDC7C(uint64_t a1, uint64_t a2)
{
  v4 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  v5 = *v4;
  if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Requesting Baseband online assertion", &buf, 2u);
  }

  v12[0] = @"CellBroadcast";
  v12[1] = @"OnlineTimerDuringBatterySaverModeInMinutes";
  v14 = 0;
  buf = 0uLL;
  sub_10005B328(&buf, v12, &buf, 2uLL);
  v12[0] = 0;
  sub_10115B8EC(*(a1 + 368), a2, 2, &buf, 0, 0, &v10);
  sub_10010B240(v12, &v10);
  sub_10000A1EC(&v10);
  LODWORD(v10) = 3;
  ctu::cf::assign(&v10, v12[0], v6);
  LODWORD(v7) = v10;
  sub_100029A48(v12);
  if (buf)
  {
    *(&buf + 1) = buf;
    operator delete(buf);
  }

  if (v7 >= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = v7;
  }

  if (*(a1 + 320))
  {
    sub_1015F8EEC(a1 + 280, 60 * v7);
    v8 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Extending baseband online assertion to another %ld minutes", &buf, 0xCu);
    }
  }

  else
  {
    v9 = *v4;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Setting baseband online assertion to %ld minutes", &buf, 0xCu);
    }

    sub_100D906AC(a1 + 280, a1 + 544, 60 * v7);
    v11[0] = off_101F540D0;
    v11[1] = a1;
    v11[2] = a2;
    v11[3] = v11;
    sub_1001210EC((a1 + 336), v11);
    sub_10000FF50(v11);
  }
}