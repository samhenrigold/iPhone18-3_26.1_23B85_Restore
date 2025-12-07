void sub_10058961C(_Unwind_Exception *a1)
{
  sub_10007A068((v3 + 6));
  sub_10058BE28(v3);
  sub_10007A068((v4 + 4));
  v6 = *v4;
  if (*v4)
  {
    *(v1 + 48) = v6;
    operator delete(v6);
  }

  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100589670(uint64_t a1)
{
  *a1 = off_100AFE2D0;
  v2 = *(a1 + 248);
  if (v2)
  {
    sub_1005711C4(v2);
    operator delete();
  }

  sub_10007A068(a1 + 256);
  sub_10007A068(a1 + 184);
  sub_10058BE28((a1 + 136));
  sub_10007A068(a1 + 72);
  v3 = *(a1 + 40);
  if (v3)
  {
    *(a1 + 48) = v3;
    operator delete(v3);
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_100589718(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1 + 184);
  v2 = *(a1 + 248);
  if (!v2)
  {
    operator new();
  }

  sub_1000088CC(v4);
  return v2;
}

void sub_1005897E0(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = sub_100589718(a1);
  sub_10000CA94(v3, v4);
}

BOOL sub_100589848(uint64_t a1, _BYTE *a2)
{
  v3 = sub_100589718(a1);

  return sub_100070A6C(v3, a2);
}

void sub_100589880(uint64_t a1, uint64_t a2)
{
  v4 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v5 = sub_10057CC18(*(a2 + 248));
    v6 = (a1 + 8);
    if (*(a1 + 31) < 0)
    {
      v6 = *v6;
    }

    v21 = 136446466;
    v22 = v5;
    v23 = 2082;
    v24 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Registering %{public}s profile in %{public}s", &v21, 0x16u);
  }

  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = v7;
  if (v7 != v8)
  {
    while (*v9 != a2)
    {
      if (++v9 == v8)
      {
        goto LABEL_10;
      }
    }
  }

  if (v9 == v8)
  {
LABEL_10:
    v10 = *(a1 + 56);
    if (v8 >= v10)
    {
      v12 = v8 - v7;
      if ((v12 + 1) >> 61)
      {
        sub_1000C7698();
      }

      v13 = v10 - v7;
      v14 = v13 >> 2;
      if (v13 >> 2 <= (v12 + 1))
      {
        v14 = v12 + 1;
      }

      if (v13 >= 0x7FFFFFFFFFFFFFF8)
      {
        v15 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = v14;
      }

      if (v15)
      {
        sub_100008108(a1 + 40, v15);
      }

      v16 = (8 * v12);
      *v16 = a2;
      v11 = 8 * v12 + 8;
      v17 = *(a1 + 40);
      v18 = *(a1 + 48) - v17;
      v19 = v16 - v18;
      memcpy(v16 - v18, v17, v18);
      v20 = *(a1 + 40);
      *(a1 + 40) = v19;
      *(a1 + 48) = v11;
      *(a1 + 56) = 0;
      if (v20)
      {
        operator delete(v20);
      }
    }

    else
    {
      *v8 = a2;
      v11 = (v8 + 1);
    }

    *(a1 + 48) = v11;
  }
}

uint64_t sub_100589A28(uint64_t a1)
{
  if ((*(*a1 + 32))(a1))
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_1008461E8();
    }

    return 0;
  }

  else
  {
    v7[0] = 0;
    v7[1] = 0;
    sub_100007F88(v7, a1 + 256);
    *(a1 + 320) = 1;
    v6[0] = 0;
    v6[1] = 0;
    sub_100007F88(v6, a1 + 184);
    v3 = *(a1 + 248);
    if (v3)
    {
      sub_100570C90(v3, QOS_CLASS_USER_INITIATED);
    }

    sub_10000801C(v6);
    for (i = *(a1 + 40); i != *(a1 + 48); ++i)
    {
      v2 = sub_10057CA24(*i, a1);
      if (v2)
      {
        goto LABEL_12;
      }
    }

    v2 = 0;
LABEL_12:
    sub_1000088CC(v6);
    sub_1000088CC(v7);
  }

  return v2;
}

void sub_100589B38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_100589B60(uint64_t a1)
{
  v2 = *(a1 + 64) - 1;
  *(a1 + 64) = v2;
  v3 = qword_100BCE8D8;
  v4 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v5 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v5 = *v5;
      }

      *buf = 136446466;
      *&buf[4] = v5;
      *&buf[12] = 2048;
      *&buf[14] = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s still has %zu profile(s) pending disconnection", buf, 0x16u);
    }
  }

  else
  {
    if (v4)
    {
      v6 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v6 = *v6;
      }

      *buf = 136446210;
      *&buf[4] = v6;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s has stopped", buf, 0xCu);
    }

    *buf = 0;
    *&buf[8] = 0;
    sub_100007F88(buf, a1 + 256);
    *(a1 + 320) = 0;
    sub_10000801C(buf);
    v8[0] = 0;
    v8[1] = 0;
    sub_100007F88(v8, a1 + 184);
    v7 = *(a1 + 248);
    if (v7)
    {
      sub_100571164(v7);
    }

    sub_10000801C(v8);
    if (qword_100B50AC0 != -1)
    {
      sub_100846258();
    }

    sub_100590608(off_100B50AB8, a1);
    sub_1000088CC(v8);
    sub_1000088CC(buf);
  }
}

void sub_100589CFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100589D2C(uint64_t a1)
{
  v24[0] = 0;
  v24[1] = 0;
  sub_100007F88(v24, a1 + 256);
  v2 = qword_100BCE8D8;
  if (*(a1 + 320))
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v3 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v3 = *v3;
      }

      *buf = 136446210;
      *&buf[4] = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Stopping %{public}s and its registered profiles", buf, 0xCu);
    }

    sub_10000801C(v24);
    v23[0] = 0;
    v23[1] = 0;
    sub_100007F88(v23, a1 + 72);
    v4 = *(a1 + 144);
    v5 = *(a1 + 152);
    *(a1 + 176) = 0;
    v6 = (v5 - v4) >> 3;
    if (v6 >= 3)
    {
      do
      {
        operator delete(*v4);
        v7 = *(a1 + 152);
        v4 = (*(a1 + 144) + 8);
        *(a1 + 144) = v4;
        v6 = (v7 - v4) >> 3;
      }

      while (v6 > 2);
    }

    if (v6 == 1)
    {
      v8 = 51;
    }

    else
    {
      if (v6 != 2)
      {
LABEL_16:
        sub_10000801C(v23);
        v10 = *(a1 + 40);
        v11 = *(a1 + 48) - v10;
        v12 = v11 >> 3;
        *(a1 + 64) = v11 >> 3;
        if (v11)
        {
          do
          {
            v13 = sub_10057D10C(*v10);
            v14 = v13;
            if (v13 != 113)
            {
              if (v13)
              {
                v15 = qword_100BCE8D8;
                if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
                {
                  v16 = a1 + 8;
                  if (*(a1 + 31) < 0)
                  {
                    v16 = *(a1 + 8);
                  }

                  *buf = 136446466;
                  *&buf[4] = v16;
                  *&buf[12] = 1024;
                  *&buf[14] = v14;
                  _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to stop %{public}s with result %d", buf, 0x12u);
                }
              }

              else
              {
                --*(a1 + 64);
              }
            }

            ++v10;
          }

          while (v10 != *(a1 + 48));
          v12 = *(a1 + 64);
        }

        if (v12)
        {
          v17 = qword_100BCE8D8;
          if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
          {
            v18 = (a1 + 8);
            if (*(a1 + 31) < 0)
            {
              v18 = *v18;
            }

            *buf = 136446466;
            *&buf[4] = v18;
            *&buf[12] = 2048;
            *&buf[14] = v12;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}s still has %zu profile(s) pending disconnection - delaying stop", buf, 0x16u);
          }

          v9 = 113;
        }

        else
        {
          sub_100007FB8(v24);
          *(a1 + 320) = 0;
          sub_10000801C(v24);
          *buf = 0;
          *&buf[8] = 0;
          sub_100007F88(buf, a1 + 184);
          v19 = *(a1 + 248);
          if (v19)
          {
            sub_100571164(v19);
          }

          sub_10000801C(buf);
          v20 = qword_100BCE8D8;
          if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
          {
            v21 = (a1 + 8);
            if (*(a1 + 31) < 0)
            {
              v21 = *v21;
            }

            *v25 = 136446210;
            v26 = v21;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%{public}s has stopped", v25, 0xCu);
          }

          sub_1000088CC(buf);
          v9 = 0;
        }

        sub_1000088CC(v23);
        goto LABEL_40;
      }

      v8 = 102;
    }

    *(a1 + 168) = v8;
    goto LABEL_16;
  }

  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_100846280();
  }

  v9 = 0;
LABEL_40:
  sub_1000088CC(v24);
  return v9;
}

void sub_10058A0AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_1000088CC(va);
  sub_1000088CC(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_10058A0F4(uint64_t a1, void *a2)
{
  if (!a2)
  {
    v4 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT))
    {
      sub_1008462F0(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if ((*(*a1 + 32))(a1))
  {
    if ((*(*a1 + 48))(a1, a2))
    {
      if ((*(*a1 + 56))(a1, a2))
      {
        v45[0] = 0;
        v45[1] = 0;
        sub_100007F88(v45, a1 + 72);
        v12 = *(a1 + 176);
        if (v12)
        {
          v13 = *(a1 + 168);
          v14 = *(a1 + 144);
          v15 = *(a1 + 152);
          v16 = (v14 + 8 * (v13 / 0x66));
          if (v15 == v14)
          {
            v17 = 0;
          }

          else
          {
            v17 = &(*v16)[5 * (v13 % 0x66)];
          }

          v23 = v13 + v12;
          v24 = v23 / 0x66;
          v25 = v23 % 0x66;
LABEL_26:
          v26 = v17 - 510;
          while (1)
          {
            v27 = v15 == v14 ? 0 : *(v14 + 8 * v24) + 40 * v25;
            if (v17 == v27)
            {
              break;
            }

            if (*v17 == a2)
            {
              v33 = qword_100BCE8D8;
              if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
              {
                v34 = (a1 + 8);
                if (*(a1 + 31) < 0)
                {
                  v34 = *v34;
                }

                sub_1000E5A58(a2, &__p);
                if (v41 >= 0)
                {
                  p_p = &__p;
                }

                else
                {
                  p_p = __p;
                }

                *buf = 136446466;
                v47 = v34;
                v48 = 2082;
                v49 = p_p;
                _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "%{public}s is currently processing another connection for device %{public}s - ignoring duplicate request", buf, 0x16u);
                if (SHIBYTE(v41) < 0)
                {
                  operator delete(__p);
                }
              }

              v18 = 302;
              goto LABEL_54;
            }

            v17 += 5;
            v26 += 5;
            if (*v16 == v26)
            {
              v28 = v16[1];
              ++v16;
              v17 = v28;
              goto LABEL_26;
            }
          }
        }

        v29 = *(a1 + 32);
        __p = a2;
        v40 = 0;
        v41 = 0;
        v42 = v29;
        v43 = 2;
        v44 = mach_continuous_time();
        sub_10058A618((a1 + 136), &__p);
        if (*(a1 + 176) < 2uLL)
        {
          sub_10000801C(v45);
          v18 = sub_10058A6D0(a1);
        }

        else
        {
          v30 = qword_100BCE8D8;
          if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
          {
            v31 = (a1 + 8);
            if (*(a1 + 31) < 0)
            {
              v31 = *v31;
            }

            sub_1000E5A58(a2, &__p);
            if (v41 >= 0)
            {
              v32 = &__p;
            }

            else
            {
              v32 = __p;
            }

            *buf = 136446466;
            v47 = v31;
            v48 = 2082;
            v49 = v32;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%{public}s is currently processing another connection - queueing connection to device %{public}s", buf, 0x16u);
            if (SHIBYTE(v41) < 0)
            {
              operator delete(__p);
            }
          }

          v18 = 303;
        }

LABEL_54:
        sub_1000088CC(v45);
      }

      else
      {
        v22 = qword_100BCE8D8;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
        {
          v37 = (a1 + 8);
          if (*(a1 + 31) < 0)
          {
            v37 = *v37;
          }

          sub_1000E5A58(a2, &__p);
          if (v41 >= 0)
          {
            v38 = &__p;
          }

          else
          {
            v38 = __p;
          }

          *buf = 136446466;
          v47 = v37;
          v48 = 2082;
          v49 = v38;
          _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%{public}s is not available on device %{public}s", buf, 0x16u);
          if (SHIBYTE(v41) < 0)
          {
            operator delete(__p);
          }
        }

        return 114;
      }
    }

    else
    {
      v19 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
      {
        v20 = (a1 + 8);
        if (*(a1 + 31) < 0)
        {
          v20 = *v20;
        }

        sub_1000E5A58(a2, &__p);
        if (v41 >= 0)
        {
          v21 = &__p;
        }

        else
        {
          v21 = __p;
        }

        *buf = 136446466;
        v47 = v20;
        v48 = 2082;
        v49 = v21;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%{public}s is not supported by device %{public}s", buf, 0x16u);
        if (SHIBYTE(v41) < 0)
        {
          operator delete(__p);
        }
      }

      return 108;
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100846368();
    }

    return 105;
  }

  return v18;
}

void sub_10058A5EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

__n128 sub_10058A618(unint64_t *a1, uint64_t a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 102 * ((v4 - v5) >> 3) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    sub_10058BF3C(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  v8 = *(v5 + 8 * (v7 / 0x66)) + 40 * (v7 % 0x66);
  result = *a2;
  v10 = *(a2 + 16);
  *(v8 + 32) = *(a2 + 32);
  *v8 = result;
  *(v8 + 16) = v10;
  ++a1[5];
  return result;
}

uint64_t sub_10058A6D0(uint64_t a1)
{
  v20[0] = 0;
  v20[1] = 0;
  sub_100007F88(v20, a1 + 72);
  if (*(a1 + 176) && (v2 = *(a1 + 168), v3 = *(*(a1 + 144) + 8 * (v2 / 0x66)), v4 = v2 % 0x66, v5 = v3 + 40 * (v2 % 0x66), !*(v5 + 8)))
  {
    v8 = *v5;
    v9 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v10 = *v10;
      }

      sub_1000E5A58(v8, __p);
      if (v19 >= 0)
      {
        v11 = __p;
      }

      else
      {
        v11 = __p[0];
      }

      *buf = 136446466;
      v22 = v10;
      v23 = 2082;
      v24 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}s - handling connection that was pending for device %{public}s", buf, 0x16u);
      if (v19 < 0)
      {
        operator delete(__p[0]);
      }

      v12 = *(a1 + 168);
      v3 = *(*(a1 + 144) + 8 * (v12 / 0x66));
      v4 = v12 % 0x66;
    }

    *(v3 + 40 * v4 + 8) = 3;
    for (i = *(a1 + 40); i != *(a1 + 48); ++i)
    {
      v14 = *i;
      if ((*(**i + 24))(*i, v8))
      {
        *(*(*(a1 + 144) + 8 * (*(a1 + 168) / 0x66uLL)) + 40 * (*(a1 + 168) % 0x66uLL) + 16) = v14;
        sub_10000801C(v20);
        operator new();
      }
    }

    sub_10000801C(v20);
    v15 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v16 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v16 = *v16;
      }

      sub_1000E5A58(v8, __p);
      if (v19 >= 0)
      {
        v17 = __p;
      }

      else
      {
        v17 = __p[0];
      }

      *buf = 136446466;
      v22 = v16;
      v23 = 2082;
      v24 = v17;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}s found no connectable profiles on device %{public}s", buf, 0x16u);
      if (v19 < 0)
      {
        operator delete(__p[0]);
      }
    }

    *(a1 + 168) = vaddq_s64(*(a1 + 168), xmmword_1008A6430);
    v6 = 1;
    sub_10058C110(a1 + 136, 1);
  }

  else
  {
    v6 = 0;
  }

  sub_1000088CC(v20);
  return v6;
}

void sub_10058AA04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10058AA30(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v4 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT))
    {
      sub_1008462F0(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (((*(*a1 + 32))(a1) & 1) == 0 && os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_100846368();
  }

  v22[0] = 0;
  v22[1] = 0;
  sub_100007F88(v22, a1 + 72);
  if (*(a1 + 176))
  {
    v12 = *(*(*(a1 + 144) + 8 * (*(a1 + 168) / 0x66uLL)) + 40 * (*(a1 + 168) % 0x66uLL) + 16);
  }

  else
  {
    v12 = 0;
  }

  sub_10000801C(v22);
  if (v12)
  {
    v13 = sub_10057DF5C(v12);
    if (v13 >= (*(*v12 + 16))(v12) && (v14 = sub_10057DE40(v12)) != 0 && ((*(*a1 + 120))(a1, a2) & 1) == 0)
    {
      sub_100007FB8(v22);
      if (*(a1 + 176))
      {
        *(*(*(a1 + 144) + 8 * (*(a1 + 168) / 0x66uLL)) + 40 * (*(a1 + 168) % 0x66uLL) + 8) = 2;
        sub_10000801C(v22);
        v15 = qword_100BCE8D8;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
        {
          v16 = (a1 + 8);
          if (*(a1 + 31) < 0)
          {
            v16 = *v16;
          }

          v17 = (*(*v12 + 16))(v12);
          sub_1000E5A58(v14, __p);
          if (v21 >= 0)
          {
            v18 = __p;
          }

          else
          {
            v18 = __p[0];
          }

          *buf = 136446722;
          v24 = v16;
          v25 = 1024;
          v26 = v17;
          v27 = 2082;
          v28 = v18;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}s connection would exceed maximum allowed connections (%d) - disconnecting device %{public}s", buf, 0x1Cu);
          if (v21 < 0)
          {
            operator delete(__p[0]);
          }
        }

        sub_10057D5F0(v12, v14);
      }
    }

    else
    {
      sub_10057D6C4(v12, a2);
    }
  }

  else if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_1008463D8();
  }

  return sub_1000088CC(v22);
}

void sub_10058AD6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

BOOL sub_10058AD94(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v4 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT))
    {
      sub_1008462F0(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v19[0] = 0;
  v19[1] = 0;
  sub_100007F88(v19, a1 + 72);
  v12 = *(a1 + 176);
  if (v12)
  {
    v13 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v14 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v14 = *v14;
      }

      sub_1000E5A58(a2, __p);
      if (v18 >= 0)
      {
        v15 = __p;
      }

      else
      {
        v15 = __p[0];
      }

      *buf = 136446466;
      v21 = v14;
      v22 = 2082;
      v23 = v15;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}s already has a pending outgoing connection to device %{public}s", buf, 0x16u);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  else
  {
    sub_10000801C(v19);
  }

  sub_1000088CC(v19);
  return v12 == 0;
}

void sub_10058AEF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10058AF18(void *a1, uint64_t a2)
{
  if (!a2)
  {
    v4 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT))
    {
      sub_1008462F0(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v26[0] = 0;
  v26[1] = 0;
  sub_100007F88(v26, (a1 + 9));
  v12 = a1[22];
  if (v12)
  {
    v13 = a1[21];
    v14 = a1[18];
    v15 = a1[19];
    v16 = (v14 + 8 * (v13 / 0x66));
    if (v15 == v14)
    {
      v17 = 0;
    }

    else
    {
      v17 = (*v16 + 40 * (v13 % 0x66));
    }

    v18 = v13 + v12;
    v19 = v18 / 0x66;
    v20 = v18 % 0x66;
LABEL_9:
    v21 = v17 - 510;
    while (1)
    {
      v22 = v15 == v14 ? 0 : *(v14 + 8 * v19) + 40 * v20;
      if (v17 == v22)
      {
        break;
      }

      if (*v17 == a2)
      {
        v24 = 1;
        goto LABEL_19;
      }

      v17 += 5;
      v21 += 5;
      if (*v16 == v21)
      {
        v23 = v16[1];
        ++v16;
        v17 = v23;
        goto LABEL_9;
      }
    }
  }

  sub_10000801C(v26);
  v24 = 0;
LABEL_19:
  sub_1000088CC(v26);
  return v24;
}

uint64_t sub_10058B070(uint64_t a1, uint64_t a2)
{
  v4 = qword_100BCE8D8;
  if (!a2 && os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT))
  {
    LODWORD(__p[0]) = 136446210;
    *(__p + 4) = "device != NULL";
    _os_log_fault_impl(&_mh_execute_header, v4, OS_LOG_TYPE_FAULT, "Assertion failed: %{public}s", __p, 0xCu);
    v4 = qword_100BCE8D8;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = (a1 + 8);
    if (*(a1 + 31) < 0)
    {
      v5 = *v5;
    }

    sub_1000E5A58(a2, __p);
    if (v21 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    *buf = 136446466;
    v23 = v5;
    v24 = 2082;
    v25 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s is disconnecting device %{public}s", buf, 0x16u);
    if (v21 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if ((*(*a1 + 32))(a1))
  {
    *__p = 0uLL;
    sub_100007F88(__p, a1 + 72);
    v7 = *(a1 + 168);
    v8 = *(a1 + 144);
    v9 = *(a1 + 152);
    v10 = (v8 + 8 * (v7 / 0x66));
    if (v9 == v8)
    {
      v11 = 0;
    }

    else
    {
      v11 = *v10 + 40 * (v7 % 0x66);
    }

LABEL_19:
    v13 = v11;
    while (1)
    {
      v14 = v9 == v8 ? 0 : *(v8 + 8 * ((*(a1 + 176) + v7) / 0x66)) + 40 * ((*(a1 + 176) + v7) % 0x66);
      if (v13 == v14)
      {
        break;
      }

      if (*v13 == a2)
      {
        v18 = qword_100BCE8D8;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Connection was still pending - cancelling", buf, 2u);
        }

        sub_10058B3B8((a1 + 136), v10, v11);
        v12 = 0;
        goto LABEL_36;
      }

      v13 += 5;
      v11 += 40;
      if (*v10 + 4080 == v11)
      {
        v15 = v10[1];
        ++v10;
        v11 = v15;
        goto LABEL_19;
      }
    }

    sub_10000801C(__p);
    for (i = *(a1 + 40); ; ++i)
    {
      if (i == *(a1 + 48))
      {
        v12 = 1;
        goto LABEL_36;
      }

      v17 = *i;
      if (sub_1000E0954(*i, a2))
      {
        break;
      }
    }

    v12 = sub_10057D5F0(v17, a2);
LABEL_36:
    sub_1000088CC(__p);
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100846368();
    }

    return 105;
  }

  return v12;
}

unint64_t sub_10058B3B8(int64x2_t *a1, void *a2, uint64_t a3)
{
  v4 = a1[2].u64[0];
  v5 = a1->i64[1];
  v6 = (v5 + 8 * (v4 / 0x66));
  if (a1[1].i64[0] == v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = *v6 + 40 * (v4 % 0x66);
  }

  if (a3 == v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = 102 * (a2 - v6) - 0x3333333333333333 * ((a3 - *a2) >> 3) + 0x3333333333333333 * ((v7 - *v6) >> 3);
  }

  v32[0].n128_u64[0] = v5 + 8 * (v4 / 0x66);
  v32[0].n128_u64[1] = v7;
  sub_10058C1E8(v32, v8);
  v9 = v32[0];
  v10 = a1[2].i64[1];
  v11 = v32[0].n128_u64[1] - *v32[0].n128_u64[0];
  v12 = 0xCCCCCCCCCCCCCCCDLL * (v11 >> 3);
  if (v8 <= (v10 - 1) >> 1)
  {
    if (v11 < -39)
    {
      v25 = 100 - v12;
      v26 = (100 - v12) / 0x66;
      v18 = (v32[0].n128_u64[0] - 8 * v26);
      v19 = *v18 + 40 * (102 * v26 - v25) + 4040;
    }

    else
    {
      v16 = v12 + 1;
      v17 = (v12 + 1) / 0x66;
      v18 = (v32[0].n128_u64[0] + 8 * v17);
      v19 = *v18 + 40 * (v16 - 102 * v17);
    }

    memset(v32, 0, sizeof(v32));
    sub_10058C294(v6, v7, v9.n128_u64[0], v9.n128_i64[1], v18, v19, v32);
    a1[2] = vaddq_s64(a1[2], xmmword_1008A6430);
    sub_10058C110(a1, 1);
  }

  else
  {
    if (v11 < -39)
    {
      v20 = 100 - v12;
      v14 = (v32[0].n128_u64[0] - 8 * (v20 / 0x66));
      v15 = (*v14 + 40 * (102 * (v20 / 0x66) - v20) + 4040);
    }

    else
    {
      v13 = v12 + 1;
      v14 = (v32[0].n128_u64[0] + 8 * (v13 / 0x66));
      v15 = (*v14 + 40 * (v13 % 0x66));
    }

    v21 = a1[2].i64[0] + v10;
    v22 = a1->i64[1];
    v23 = (v22 + 8 * (v21 / 0x66));
    if (a1[1].i64[0] == v22)
    {
      v24 = 0;
    }

    else
    {
      v24 = (*v23 + 40 * (v21 % 0x66));
    }

    sub_10058C448(v14, v15, v23, v24, v32);
    --a1[2].i64[1];
    sub_10058C170(a1, 1);
  }

  v27 = a1[2].u64[0];
  v28 = a1->i64[1];
  v29 = (v28 + 8 * (v27 / 0x66));
  if (a1[1].i64[0] == v28)
  {
    v30 = 0;
  }

  else
  {
    v30 = *v29 + 40 * (v27 % 0x66);
  }

  v32[0].n128_u64[0] = v29;
  v32[0].n128_u64[1] = v30;
  sub_10058C1E8(v32, v8);
  return v32[0].n128_u64[0];
}

uint64_t sub_10058B670(void *a1)
{
  if (!(*(*a1 + 32))(a1) || (v2 = a1[5], v2 == a1[6]))
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    v3 = 0;
    do
    {
      v4 = *v2++;
      v3 |= sub_10057DD08(v4);
    }

    while (v2 != a1[6]);
  }

  return v3 & 1;
}

uint64_t sub_10058B6F4(void *a1)
{
  if ((*(*a1 + 32))(a1))
  {
    for (i = a1[5]; i != a1[6]; ++i)
    {
      v3 = *i;
      if (sub_10057DDF0(*i))
      {

        return sub_10057DE40(v3);
      }
    }
  }

  return 0;
}

uint64_t sub_10058B794(void *a1)
{
  result = (*(*a1 + 32))(a1);
  if (result)
  {
    v3 = a1[5];
    if (v3 == a1[6])
    {
      return 0;
    }

    else
    {
      do
      {
        result = sub_10057DDF0(*v3);
        if (result)
        {
          break;
        }

        ++v3;
      }

      while (v3 != a1[6]);
    }
  }

  return result;
}

uint64_t sub_10058B80C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (qword_100B50AC0 != -1)
  {
    sub_100846448();
  }

  v8 = off_100B50AB8;
  v9 = *(a1 + 32);

  return sub_100592EE8(v8, a2, v9, a3, v4);
}

uint64_t sub_10058B880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_100B50AC0 != -1)
  {
    sub_100846448();
  }

  v6 = off_100B50AB8;
  v7 = *(a1 + 32);

  return sub_100593D1C(v6, a2, v7);
}

uint64_t sub_10058B8F4(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v15[0] = 0;
  v15[1] = 0;
  sub_100007F88(v15, a1 + 72);
  v8 = *(a1 + 176);
  if (v8)
  {
    v9 = *(a1 + 168);
    if (*(*(*(a1 + 144) + 8 * (v9 / 0x66)) + 40 * (v9 % 0x66)) == a2)
    {
      *(a1 + 168) = v9 + 1;
      *(a1 + 176) = v8 - 1;
      sub_10058C110(a1 + 136, 1);
    }
  }

  sub_10000801C(v15);
  if (qword_100B50AC0 != -1)
  {
    sub_100846258();
  }

  sub_100591B18(off_100B50AB8, a2, *(a1 + 32), a3, a4);
  if (!a4)
  {
    if ((*(*a1 + 72))(a1) && (sub_1000295DC(a2) & 1) == 0)
    {
      v10 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_1000E5A58(a2, v14);
        sub_10084645C(v14, a1, buf, v10);
      }

      operator new();
    }

    v11 = *(a1 + 32);
    v16 = 0;
    sub_100016250(&v16);
    *&v13 = v16;
    *(&v13 + 1) = SWORD2(v16);
    sub_100539554(a2, v11, 4, &v13, 0);
  }

  sub_10058A6D0(a1);
  return sub_1000088CC(v15);
}

void sub_10058BB18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10058BB40(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v6 = a4;
  v7 = a3;
  if (qword_100B50AC0 != -1)
  {
    sub_100846448();
  }

  result = sub_100593DA0(off_100B50AB8, a2, *(a1 + 32), v7, v6, v5);
  if (!v6)
  {
    v13[0] = 0;
    v13[1] = 0;
    sub_100007F88(v13, a1 + 72);
    if (*(a1 + 176) && *(*(*(a1 + 144) + 8 * (*(a1 + 168) / 0x66uLL)) + 40 * (*(a1 + 168) % 0x66uLL) + 8) == 2)
    {
      sub_10000801C(v13);
      v11 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        v12 = (a1 + 8);
        if (*(a1 + 31) < 0)
        {
          v12 = *v12;
        }

        *buf = 136446210;
        v15 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}s had a queued connection pending this disconnection", buf, 0xCu);
      }

      operator new();
    }

    return sub_1000088CC(v13);
  }

  return result;
}

uint64_t sub_10058BD3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_100B50AC0 != -1)
  {
    sub_100846448();
  }

  v10 = off_100B50AB8;
  v11 = *(a1 + 32);

  return sub_100594AA0(v10, a2, v11, a3, a4, a5);
}

uint64_t sub_10058BE28(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 51;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 102;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return sub_10035F858(a1);
}

void sub_10058BF3C(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x66;
  v3 = v1 - 102;
  if (!v2)
  {
    v5 = a1[2];
    v6 = a1[3];
    v7 = v6 - *a1;
    if (v5 - a1[1] < v7)
    {
      if (v6 != v5)
      {
        operator new();
      }

      operator new();
    }

    if (v6 == *a1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 >> 2;
    }

    v10 = a1;
    sub_100008108(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  sub_1004F3500(a1, &v9);
}

void sub_10058C0C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10058C110(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x66)
  {
    a2 = 1;
  }

  if (v2 < 0xCC)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 102;
  }

  return v4 ^ 1u;
}

uint64_t sub_10058C170(void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 102 * ((v2 - v3) >> 3) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x66)
  {
    a2 = 1;
  }

  if (v5 < 0xCC)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    operator delete(*(v2 - 8));
    a1[2] -= 8;
  }

  return v7 ^ 1u;
}

void *sub_10058C1E8(void *result, uint64_t a2)
{
  if (a2)
  {
    v2 = *result;
    v3 = a2 - 0x3333333333333333 * ((result[1] - **result) >> 3);
    if (v3 < 1)
    {
      v5 = 101 - v3;
      v6 = &v2[-(v5 / 0x66)];
      *result = v6;
      v4 = *v6 + 40 * (102 * (v5 / 0x66) - v5) + 4040;
    }

    else
    {
      *result = &v2[v3 / 0x66];
      v4 = v2[v3 / 0x66] + 40 * (v3 % 0x66);
    }

    result[1] = v4;
  }

  return result;
}

__n128 sub_10058C294@<Q0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X5>, uint64_t a6@<X6>, __n128 *a7@<X8>)
{
  if (a1 == a3)
  {
    v22 = 0;
    v23 = 0uLL;
    v11 = a2;
    v12 = a4;
    v13 = a5;
    v14 = a6;
  }

  else
  {
    v17 = a3 - 1;
    v16 = *a3;
    v22 = 0;
    v23 = 0uLL;
    v18 = a4;
    v13 = a5;
    v14 = a6;
    while (1)
    {
      sub_10058C384(v16, v18, v13, v14, &v22);
      v14 = v23.n128_i64[1];
      v13 = v23.n128_u64[0];
      if (v17 == a1)
      {
        break;
      }

      v19 = *v17--;
      v16 = v19;
      v22 = 0;
      v23 = 0uLL;
      v18 = v19 + 4080;
    }

    v20 = *v17;
    v22 = 0;
    v23 = 0uLL;
    v12 = v20 + 4080;
    v11 = a2;
  }

  sub_10058C384(v11, v12, v13, v14, &v22);
  result = v23;
  a7->n128_u64[0] = a3;
  a7->n128_u64[1] = a4;
  a7[1] = result;
  return result;
}

void sub_10058C384(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  if (a1 == a2)
  {
    a2 = a1;
  }

  else
  {
    v5 = *a3;
    v6 = a4;
    v7 = a2;
    while (1)
    {
      v8 = 0xCCCCCCCCCCCCCCCDLL * ((v6 - v5) >> 3);
      if ((0xCCCCCCCCCCCCCCCDLL * ((v7 - a1) >> 3)) < v8)
      {
        v8 = 0xCCCCCCCCCCCCCCCDLL * ((v7 - a1) >> 3);
      }

      if (v8)
      {
        v9 = -40 * v8;
        v10 = v7 - 40;
        do
        {
          a4 = v6 - 40;
          v11 = *v10;
          v12 = *(v10 + 16);
          *(v6 - 8) = *(v10 + 32);
          *(v6 - 24) = v12;
          *(v6 - 40) = v11;
          v10 -= 40;
          v6 -= 40;
          v9 += 40;
        }

        while (v9);
      }

      else
      {
        a4 = v6;
      }

      v7 -= 40 * v8;
      if (v7 == a1)
      {
        break;
      }

      v13 = *--a3;
      v5 = v13;
      v6 = v13 + 4080;
    }

    if (*a3 + 4080 == a4)
    {
      v14 = a3[1];
      ++a3;
      a4 = v14;
    }
  }

  *a5 = a2;
  a5[1] = a3;
  a5[2] = a4;
}

double sub_10058C448(uint64_t *a1, __int128 *a2, uint64_t *a3, __int128 *a4, __int128 **a5)
{
  if (a1 == a3)
  {
    v7 = *a5;
    v8 = a5[1];
  }

  else
  {
    v11 = a1 + 1;
    v10 = *a1;
    v7 = *a5;
    v8 = a5[1];
    v15 = 0;
    v16 = 0uLL;
    for (i = (v10 + 4080); ; i = v13 + 255)
    {
      sub_10058C504(a2, i, v7, v8, &v15);
      v8 = *(&v16 + 1);
      v7 = v16;
      *a5 = v16;
      a5[1] = v8;
      if (v11 == a3)
      {
        break;
      }

      v13 = *v11++;
      a2 = v13;
      v15 = 0;
      v16 = 0uLL;
    }

    a2 = *v11;
  }

  v15 = 0;
  v16 = 0uLL;
  sub_10058C504(a2, a4, v7, v8, &v15);
  result = *&v16;
  *a5 = v16;
  return result;
}

void sub_10058C504(__int128 *a1@<X1>, __int128 *a2@<X2>, __int128 *a3@<X3>, uint64_t a4@<X4>, __int128 **a5@<X8>)
{
  if (a1 == a2)
  {
    v8 = a1;
    goto LABEL_14;
  }

  v5 = *a3;
  while (1)
  {
    v6 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - a4 + 4080) >> 3);
    v7 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 3);
    if (v7 >= v6)
    {
      v7 = v6;
    }

    if (v7)
    {
      break;
    }

LABEL_10:
    v12 = *(a3 + 1);
    a3 = (a3 + 8);
    v5 = v12;
    a4 = v12;
  }

  v8 = (a1 + 40 * v7);
  v9 = 40 * v7;
  do
  {
    v10 = *a1;
    v11 = a1[1];
    *(a4 + 32) = *(a1 + 4);
    *a4 = v10;
    *(a4 + 16) = v11;
    a1 = (a1 + 40);
    a4 += 40;
    v9 -= 40;
  }

  while (v9);
  if (v8 != a2)
  {
    a1 = v8;
    goto LABEL_10;
  }

  if (a4 == *a3 + 4080)
  {
    v13 = *(a3 + 1);
    a3 = (a3 + 8);
    a4 = v13;
  }

LABEL_14:
  *a5 = v8;
  a5[1] = a3;
  a5[2] = a4;
}

uint64_t sub_10058C5B4(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, int a5)
{
  v20[0] = 0;
  v20[1] = 0;
  sub_100007F88(v20, a1 + 8);
  v10 = *(a1 + 80);
  v11 = (a1 + 88);
  if (v10 != (a1 + 88))
  {
    v12 = a5;
    do
    {
      v13 = v10[4];
      if (v13)
      {
        if (*(*(v13 + 64) + 160) == 1)
        {
          v14 = xpc_dictionary_create(0, 0, 0);
          v15 = v14;
          if (v14)
          {
            xpc_dictionary_set_uint64(v14, "kCBMsgArgID", *(v13 + 48));
            xpc_dictionary_set_uint64(v15, "kCBMsgArgPairingAgentID", a2);
            xpc_dictionary_set_uint64(v15, "kCBMsgArgResult", v12);
            xpc_dictionary_set_uint64(v15, "kCBMsgArgEvent", a3);
            xpc_dictionary_set_uint64(v15, "kCBMsgArgBTDevice", a4);
            sub_100383144(*(v13 + 64), "kCBMsgIdPairingAgentStatusEvent", v15, 1);
          }
        }
      }

      v16 = v10[1];
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
          v17 = v10[2];
          v18 = *v17 == v10;
          v10 = v17;
        }

        while (!v18);
      }

      v10 = v17;
    }

    while (v17 != v11);
  }

  return sub_1000088CC(v20);
}

uint64_t sub_10058C73C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v17[0] = 0;
  v17[1] = 0;
  sub_100007F88(v17, a1 + 8);
  v8 = *(a1 + 80);
  v9 = (a1 + 88);
  if (v8 != (a1 + 88))
  {
    do
    {
      v10 = v8[4];
      if (v10)
      {
        if (*(*(v10 + 64) + 160) == 1)
        {
          v11 = xpc_dictionary_create(0, 0, 0);
          v12 = v11;
          if (v11)
          {
            xpc_dictionary_set_uint64(v11, "kCBMsgArgID", *(v10 + 48));
            xpc_dictionary_set_uint64(v12, "kCBMsgArgPairingAgentID", a2);
            xpc_dictionary_set_uint64(v12, "kCBMsgArgBTDevice", a3);
            xpc_dictionary_set_uint64(v12, "kCBMsgArgMinLength", a4);
            sub_100383144(*(v10 + 64), "kCBMsgIdPairingAgentPincode", v12, 1);
          }
        }
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
          v15 = *v14 == v8;
          v8 = v14;
        }

        while (!v15);
      }

      v8 = v14;
    }

    while (v14 != v9);
  }

  return sub_1000088CC(v17);
}

uint64_t sub_10058C8AC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v17[0] = 0;
  v17[1] = 0;
  sub_100007F88(v17, a1 + 8);
  v8 = *(a1 + 80);
  v9 = (a1 + 88);
  if (v8 != (a1 + 88))
  {
    do
    {
      v10 = v8[4];
      if (v10)
      {
        if (*(*(v10 + 64) + 160) == 1)
        {
          v11 = xpc_dictionary_create(0, 0, 0);
          v12 = v11;
          if (v11)
          {
            xpc_dictionary_set_uint64(v11, "kCBMsgArgID", *(v10 + 48));
            xpc_dictionary_set_uint64(v12, "kCBMsgArgPairingAgentID", a2);
            xpc_dictionary_set_uint64(v12, "kCBMsgArgBTDevice", a3);
            xpc_dictionary_set_uint64(v12, "kCBMsgArgServices", a4);
            sub_100383144(*(v10 + 64), "kCBMsgIdPairingAgentAuthorization", v12, 1);
          }
        }
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
          v15 = *v14 == v8;
          v8 = v14;
        }

        while (!v15);
      }

      v8 = v14;
    }

    while (v14 != v9);
  }

  return sub_1000088CC(v17);
}

uint64_t sub_10058CA1C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5)
{
  v20[0] = 0;
  v20[1] = 0;
  sub_100007F88(v20, a1 + 8);
  v10 = *(a1 + 80);
  v11 = (a1 + 88);
  if (v10 != (a1 + 88))
  {
    v12 = a5;
    do
    {
      v13 = v10[4];
      if (v13)
      {
        if (*(*(v13 + 64) + 160) == 1)
        {
          v14 = xpc_dictionary_create(0, 0, 0);
          v15 = v14;
          if (v14)
          {
            xpc_dictionary_set_uint64(v14, "kCBMsgArgID", *(v13 + 48));
            xpc_dictionary_set_uint64(v15, "kCBMsgArgPairingAgentID", a2);
            xpc_dictionary_set_uint64(v15, "kCBMsgArgBTDevice", a3);
            xpc_dictionary_set_uint64(v15, "kCBMsgArgValue", a4);
            xpc_dictionary_set_uint64(v15, "kCBMsgArgMITM", v12);
            sub_100383144(*(v13 + 64), "kCBMsgIdPairingAgentUserConfirmation", v15, 1);
          }
        }
      }

      v16 = v10[1];
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
          v17 = v10[2];
          v18 = *v17 == v10;
          v10 = v17;
        }

        while (!v18);
      }

      v10 = v17;
    }

    while (v17 != v11);
  }

  return sub_1000088CC(v20);
}

uint64_t sub_10058CBA4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v17[0] = 0;
  v17[1] = 0;
  sub_100007F88(v17, a1 + 8);
  v8 = *(a1 + 80);
  v9 = (a1 + 88);
  if (v8 != (a1 + 88))
  {
    do
    {
      v10 = v8[4];
      if (v10)
      {
        if (*(*(v10 + 64) + 160) == 1)
        {
          v11 = xpc_dictionary_create(0, 0, 0);
          v12 = v11;
          if (v11)
          {
            xpc_dictionary_set_uint64(v11, "kCBMsgArgID", *(v10 + 48));
            xpc_dictionary_set_uint64(v12, "kCBMsgArgPairingAgentID", a2);
            xpc_dictionary_set_uint64(v12, "kCBMsgArgBTDevice", a3);
            xpc_dictionary_set_uint64(v12, "kCBMsgArgValue", a4);
            sub_100383144(*(v10 + 64), "kCBMsgIdPairingAgentPassKeyDisplay", v12, 1);
          }
        }
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
          v15 = *v14 == v8;
          v8 = v14;
        }

        while (!v15);
      }

      v8 = v14;
    }

    while (v14 != v9);
  }

  return sub_1000088CC(v17);
}

uint64_t sub_10058CD14(uint64_t a1, uint64_t a2, const void *a3, const void *a4, const void *a5, const void *a6)
{
  v21[0] = 0;
  v21[1] = 0;
  sub_100007F88(v21, a1 + 8);
  v12 = *(a1 + 80);
  v13 = (a1 + 88);
  if (v12 != (a1 + 88))
  {
    do
    {
      v14 = v12[4];
      if (v14)
      {
        if (*(*(v14 + 64) + 160) == 1)
        {
          v15 = xpc_dictionary_create(0, 0, 0);
          v16 = v15;
          if (v15)
          {
            xpc_dictionary_set_uint64(v15, "kCBMsgArgID", *(v14 + 48));
            xpc_dictionary_set_uint64(v16, "kCBMsgArgPairingAgentID", a2);
            if (a3)
            {
              xpc_dictionary_set_data(v16, "kCBMsgArgC192", a3, 0x10uLL);
            }

            if (a4)
            {
              xpc_dictionary_set_data(v16, "kCBMsgArgR192", a4, 0x10uLL);
            }

            if (a5)
            {
              xpc_dictionary_set_data(v16, "kCBMsgArgC256", a5, 0x10uLL);
            }

            if (a6)
            {
              xpc_dictionary_set_data(v16, "kCBMsgArgR256", a6, 0x10uLL);
            }

            sub_100383144(*(v14 + 64), "kCBMsgIdPairingAgentOOBDataReady", v16, 1);
          }
        }
      }

      v17 = v12[1];
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
          v18 = v12[2];
          v19 = *v18 == v12;
          v12 = v18;
        }

        while (!v19);
      }

      v12 = v18;
    }

    while (v18 != v13);
  }

  return sub_1000088CC(v21);
}

uint64_t sub_10058CEC8(uint64_t result, unsigned int a2, uint64_t a3, int a4, uint64_t a5)
{
  if (a5)
  {
    return sub_10058C5B4(a5, result, a2, a3, a4);
  }

  return result;
}

uint64_t sub_10058CEEC(uint64_t result, uint64_t a2, unsigned int a3, uint64_t a4)
{
  if (a4)
  {
    return sub_10058C73C(a4, result, a2, a3);
  }

  return result;
}

uint64_t sub_10058CF0C(uint64_t result, uint64_t a2, unsigned int a3, uint64_t a4)
{
  if (a4)
  {
    return sub_10058C8AC(a4, result, a2, a3);
  }

  return result;
}

uint64_t sub_10058CF2C(uint64_t result, uint64_t a2, unsigned int a3, unsigned int a4, uint64_t a5)
{
  if (a5)
  {
    return sub_10058CA1C(a5, result, a2, a3, a4);
  }

  return result;
}

uint64_t sub_10058CF50(uint64_t result, uint64_t a2, unsigned int a3, uint64_t a4)
{
  if (a4)
  {
    return sub_10058CBA4(a4, result, a2, a3);
  }

  return result;
}

uint64_t sub_10058CF70(uint64_t result, const void *a2, const void *a3, const void *a4, const void *a5, uint64_t a6)
{
  if (a6)
  {
    return sub_10058CD14(a6, result, a2, a3, a4, a5);
  }

  return result;
}

void sub_10058CF98(id a1)
{
  v13 = "kCBMsgIdPairingAgentCreateMsg";
  v14 = 29;
  v15 = &v13;
  v1 = sub_10058E2A0(&xmmword_100BCE6C8, &v13, &unk_1008A9BD0, &v15);
  v1[4] = sub_10058D2D4;
  v1[5] = 0;
  v13 = "kCBMsgIdPairingAgentDestroyMsg";
  v14 = 30;
  v15 = &v13;
  v2 = sub_10058E2A0(&xmmword_100BCE6C8, &v13, &unk_1008A9BD0, &v15);
  v2[4] = sub_10058D528;
  v2[5] = 0;
  v13 = "kCBMsgIdPairingAgentStartMsg";
  v14 = 28;
  v15 = &v13;
  v3 = sub_10058E2A0(&xmmword_100BCE6C8, &v13, &unk_1008A9BD0, &v15);
  v3[4] = sub_10058D758;
  v3[5] = 0;
  v13 = "kCBMsgIdPairingAgentStopMsg";
  v14 = 27;
  v15 = &v13;
  v4 = sub_10058E2A0(&xmmword_100BCE6C8, &v13, &unk_1008A9BD0, &v15);
  v4[4] = sub_10058D820;
  v4[5] = 0;
  v13 = "kCBMsgIdPairingAgentCancelPairingMsg";
  v14 = 36;
  v15 = &v13;
  v5 = sub_10058E2A0(&xmmword_100BCE6C8, &v13, &unk_1008A9BD0, &v15);
  v5[4] = sub_10058D8E8;
  v5[5] = 0;
  v13 = "kCBMsgIdPairingAgentSetPincodeMsg";
  v14 = 33;
  v15 = &v13;
  v6 = sub_10058E2A0(&xmmword_100BCE6C8, &v13, &unk_1008A9BD0, &v15);
  v6[4] = sub_10058D9B0;
  v6[5] = 0;
  v13 = "kCBMsgIdPairingAgentAcceptSSPMsg";
  v14 = 32;
  v15 = &v13;
  v7 = sub_10058E2A0(&xmmword_100BCE6C8, &v13, &unk_1008A9BD0, &v15);
  v7[4] = sub_10058DAB4;
  v7[5] = 0;
  v13 = "kCBMsgIdPairingAgentDeletePairedDeviceMsg";
  v14 = 41;
  v15 = &v13;
  v8 = sub_10058E2A0(&xmmword_100BCE6C8, &v13, &unk_1008A9BD0, &v15);
  v8[4] = sub_10058DBB8;
  v8[5] = 0;
  v13 = "kCBMsgIdPairingAgentSetIOCapabilityMsg";
  v14 = 38;
  v15 = &v13;
  v9 = sub_10058E2A0(&xmmword_100BCE6C8, &v13, &unk_1008A9BD0, &v15);
  v9[4] = sub_10058DCA4;
  v9[5] = 0;
  v13 = "kCBMsgIdPairingAgentClearOOBDataForDeviceMsg";
  v14 = 44;
  v15 = &v13;
  v10 = sub_10058E2A0(&xmmword_100BCE6C8, &v13, &unk_1008A9BD0, &v15);
  v10[4] = sub_10058DD90;
  v10[5] = 0;
  v13 = "kCBMsgIdPairingAgentSetOOBDataForDeviceMsg";
  v14 = 42;
  v15 = &v13;
  v11 = sub_10058E2A0(&xmmword_100BCE6C8, &v13, &unk_1008A9BD0, &v15);
  v11[4] = sub_10058DE7C;
  v11[5] = 0;
  v13 = "kCBMsgIdPairingAgentGetLocalOOBDataMsg";
  v14 = 38;
  v15 = &v13;
  v12 = sub_10058E2A0(&xmmword_100BCE6C8, &v13, &unk_1008A9BD0, &v15);
  v12[4] = sub_10058E0EC;
  v12[5] = 0;
}

uint64_t sub_10058D2D4(uint64_t a1, xpc_object_t xdict)
{
  value = 0;
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgSessionID");
  v6 = xpc_dictionary_get_uint64(v4, "kCBMsgArgID");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100846504();
  }

  v15[0] = 0;
  v15[1] = 0;
  sub_100007F88(v15, a1 + 8);
  if (uint64)
  {
    v7 = *(a1 + 72);
    v8 = *(v7 + 40);
    asid = xpc_connection_get_asid(*(v7 + 16));
    if (qword_100B50B88 != -1)
    {
      sub_10084656C();
    }

    if (sub_100618FB0(qword_100B50B80, uint64, v8, asid))
    {
      v10 = malloc_type_calloc(1uLL, 0x48uLL, 0x10A00405596F149uLL);
      v14 = v10;
      *v10 = sub_10058CEC8;
      v10[1] = sub_10058CEEC;
      v10[2] = sub_10058CF0C;
      v10[3] = sub_10058CF2C;
      v10[5] = sub_10058CF70;
      v10[6] = v6;
      v10[4] = sub_10058CF50;
      v10[8] = *(a1 + 72);
      LODWORD(uint64) = sub_1006D0D64(uint64, v10, a1, &value);
      if (uint64)
      {
        free(v10);
      }

      else
      {
        v10[7] = value;
        sub_1000452CC(a1 + 80, &v14, &v14);
      }

      uint64 = uint64;
    }

    else
    {
      uint64 = 7;
    }
  }

  else
  {
    uint64 = 1;
  }

  reply = xpc_dictionary_create_reply(xdict);
  v12 = reply;
  if (reply)
  {
    xpc_dictionary_set_uint64(reply, "kCBMsgArgPairingAgentID", value);
    xpc_dictionary_set_uint64(v12, "kCBMsgArgResult", uint64);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v12);
    xpc_release(v12);
  }

  return sub_1000088CC(v15);
}

void sub_10058D50C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_10058D528(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgPairingAgentID");
  v6 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100846594(uint64, v6, v7, v8, v9, v10, v11, v12);
  }

  if (uint64)
  {
    v22[1] = 0;
    v23 = uint64;
    v22[0] = 0;
    sub_100007F88(v22, a1 + 8);
    v13 = *(a1 + 80);
    if (v13 != (a1 + 88))
    {
      v14 = 0;
      while (1)
      {
        v21 = v13[4];
        if (v23 == *(v21 + 7))
        {
          v14 = sub_1006D0DF4(&v23);
          if (!v14)
          {
            sub_100075DC4((a1 + 80), &v21);
            free(v21);
            break;
          }

          v15 = qword_100BCE950;
          if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
          {
            *buf = 134217984;
            v25 = uint64;
            _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Could not destroy pairing agent %llx", buf, 0xCu);
          }
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
        if (v17 == (a1 + 88))
        {
          uint64 = v14;
          goto LABEL_19;
        }
      }
    }

    uint64 = 0;
LABEL_19:
    sub_1000088CC(v22);
  }

  reply = xpc_dictionary_create_reply(xdict);
  v20 = reply;
  if (reply)
  {
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", uint64);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v20);
    xpc_release(v20);
  }
}

void sub_10058D738(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_10058D758(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgPairingAgentID");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100846604();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v6 = sub_1006D0E44(uint64);
    goto LABEL_6;
  }

  v6 = 1;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v8 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v6);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v8);
    xpc_release(v8);
  }
}

void sub_10058D820(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgPairingAgentID");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_10084666C();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v6 = sub_1006D0EB4(uint64);
    goto LABEL_6;
  }

  v6 = 1;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v8 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v6);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v8);
    xpc_release(v8);
  }
}

void sub_10058D8E8(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgPairingAgentID");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_1008466D4();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v6 = sub_1006D0F24(uint64);
    goto LABEL_6;
  }

  v6 = 1;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v8 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v6);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v8);
    xpc_release(v8);
  }
}

void sub_10058D9B0(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgPairingAgentID");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDevice");
  string = xpc_dictionary_get_string(value, "kCBMsgIdPairingAgentPincode");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_10084673C();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v8 = sub_1006D0F90(uint64, v6, string);
    goto LABEL_6;
  }

  v8 = 1;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v10 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v8);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v10);
    xpc_release(v10);
  }
}

void sub_10058DAB4(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgPairingAgentID");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDevice");
  v7 = xpc_dictionary_get_uint64(value, "kCBMsgArgError");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_1008467A4();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v8 = sub_1006D10BC(uint64, v6, v7);
    goto LABEL_6;
  }

  v8 = 1;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v10 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v8);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v10);
    xpc_release(v10);
  }
}

void sub_10058DBB8(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgPairingAgentID");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDevice");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_10084680C();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v7 = sub_1006D1178(uint64, v6);
    goto LABEL_6;
  }

  v7 = 1;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v9 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v7);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v9);
    xpc_release(v9);
  }
}

void sub_10058DCA4(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgPairingAgentID");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgIOCapabilities");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100846874();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v7 = sub_1006D1530(uint64, v6);
    goto LABEL_6;
  }

  v7 = 1;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v9 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v7);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v9);
    xpc_release(v9);
  }
}

void sub_10058DD90(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgPairingAgentID");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDevice");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_1008468DC();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v7 = sub_1006D15D4(uint64, v6);
    goto LABEL_6;
  }

  v7 = 1;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v9 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v7);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v9);
    xpc_release(v9);
  }
}

void sub_10058DE7C(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgPairingAgentID");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDevice");
  length = 0;
  data = xpc_dictionary_get_data(value, "kCBMsgArgC192", &length);
  if (length == 16)
  {
    v8 = 0;
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_FAULT))
    {
      sub_100846944();
    }

    v8 = 3;
  }

  v19 = 0;
  v9 = xpc_dictionary_get_data(value, "kCBMsgArgR192", &v19);
  if (v19 != 16)
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_FAULT))
    {
      sub_100846978();
    }

    v8 = 3;
  }

  v18 = 0;
  v10 = xpc_dictionary_get_data(value, "kCBMsgArgC256", &v18);
  if (v18 != 16)
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_FAULT))
    {
      sub_1008469AC();
    }

    v8 = 3;
  }

  v17 = 0;
  v11 = xpc_dictionary_get_data(value, "kCBMsgArgR256", &v17);
  if (v17 != 16)
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_FAULT))
    {
      sub_1008469E0();
    }

    v8 = 3;
    goto LABEL_22;
  }

  if (v8)
  {
LABEL_22:
    reply = xpc_dictionary_create_reply(xdict);
    if (!reply)
    {
      return;
    }

    v15 = reply;
    v16 = v8;
    goto LABEL_24;
  }

  v12 = v11;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100846A14();
    if (uint64)
    {
      goto LABEL_18;
    }
  }

  else if (uint64)
  {
LABEL_18:
    v13 = sub_1006D169C(uint64, v6, data, v9, v10, v12);
    goto LABEL_28;
  }

  v13 = 1;
LABEL_28:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v15 = reply;
    v16 = v13;
LABEL_24:
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v16);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v15);
    xpc_release(v15);
  }
}

void sub_10058E0EC(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgPairingAgentID");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100846A7C();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v6 = sub_1006D1878(uint64);
    goto LABEL_6;
  }

  v6 = 1;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v8 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v6);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v8);
    xpc_release(v8);
  }
}

void sub_10058E1B8(void *a1)
{
  sub_1004B0900(a1);

  operator delete();
}

uint64_t sub_10058E1F0(void *a1)
{
  v8[0] = 0;
  v8[1] = 0;
  sub_100007F88(v8, (a1 + 1));
  v2 = a1[10];
  v3 = a1 + 11;
  if (v2 != a1 + 11)
  {
    do
    {
      free(v2[4]);
      v4 = v2[1];
      if (v4)
      {
        do
        {
          v5 = v4;
          v4 = *v4;
        }

        while (v4);
      }

      else
      {
        do
        {
          v5 = v2[2];
          v6 = *v5 == v2;
          v2 = v5;
        }

        while (!v6);
      }

      v2 = v5;
    }

    while (v5 != v3);
  }

  sub_10000CEDC((a1 + 10), a1[11]);
  a1[11] = 0;
  a1[12] = 0;
  a1[10] = v3;
  return sub_1000088CC(v8);
}

uint64_t **sub_10058E2A0(void *a1, uint64_t a2, uint64_t a3, _OWORD **a4)
{
  v6 = sub_100059420(&v19, *a2, *(a2 + 8));
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_20;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v8)
    {
      v11 = v6 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_20:
    operator new();
  }

  v16 = a2;
  v14 = *a2;
  v15 = *(v16 + 8);
  while (1)
  {
    v17 = v13[1];
    if (v17 == v7)
    {
      break;
    }

    if (v10 > 1)
    {
      if (v17 >= *&v8)
      {
        v17 %= *&v8;
      }
    }

    else
    {
      v17 &= *&v8 - 1;
    }

    if (v17 != v11)
    {
      goto LABEL_20;
    }

LABEL_19:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_20;
    }
  }

  if (v13[3] != v15 || memcmp(v13[2], v14, v15))
  {
    goto LABEL_19;
  }

  return v13;
}

void sub_10058E584()
{
  v0 = objc_autoreleasePoolPush();
  xmmword_100BCE6C8 = 0u;
  unk_100BCE6D8 = 0u;
  dword_100BCE6E8 = 1065353216;
  __cxa_atexit(sub_10058C5B0, &xmmword_100BCE6C8, &_mh_execute_header);

  objc_autoreleasePoolPop(v0);
}

void sub_10058E61C(uint64_t a1)
{
  *a1 = off_100AFE4D0;
  *(a1 + 8) = off_100AFE540;
  *(a1 + 16) = off_100AFE570;
  *(a1 + 24) = off_100AFE5A0;
  *(a1 + 32) = &off_100AFE5C0;
  sub_100044BBC((a1 + 40));
  *(a1 + 112) = 0;
  *(a1 + 114) = 0;
  sub_100044BBC((a1 + 120));
  *(a1 + 184) = a1 + 184;
  *(a1 + 192) = a1 + 184;
  *(a1 + 200) = 0;
  sub_100044BBC((a1 + 208));
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 272) = 0u;
  sub_100044BBC((a1 + 320));
  *(a1 + 384) = 0;
  *(a1 + 392) = 0;
  *(a1 + 400) = 0;
  sub_100044BBC((a1 + 408));
  *(a1 + 472) = 0;
  *(a1 + 480) = 0;
  *(a1 + 488) = 0;
  sub_100044BBC((a1 + 496));
  sub_100364534((a1 + 560));
  *(a1 + 608) = a1 + 608;
  *(a1 + 616) = a1 + 608;
  *(a1 + 624) = 0;
  sub_100044BBC((a1 + 632));
  *(a1 + 700) = 0;
  *(a1 + 696) = 0;
  v28 = 0;
  v2 = sub_10000E92C();
  v3 = (*(*v2 + 8))(v2);
  if (v3)
  {
    v5 = sub_10000E92C();
    sub_100007E30(v26, "WiAP");
    sub_100007E30(__p, "enableSink");
    v3 = (*(*v5 + 72))(v5, v26, __p, &v28);
    if (v25 < 0)
    {
      operator delete(__p[0]);
    }

    if (v27 < 0)
    {
      operator delete(v26[0]);
    }
  }

  v6 = sub_10000C798(v3, v4);
  v26[0] = 0;
  v26[1] = 0;
  sub_100007F88(v26, a1 + 120);
  if ((*(*v6 + 56))(v6, 1))
  {
    v7 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Supporting service handsfree", __p, 2u);
    }

    if (qword_100B54910 != -1)
    {
      sub_100846AE4();
    }

    operator new();
  }

  if ((*(*v6 + 56))(v6, 2))
  {
    v8 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Supporting service phonebook", __p, 2u);
    }

    if (qword_100B54920 != -1)
    {
      sub_100846B0C();
    }

    operator new();
  }

  if ((*(*v6 + 56))(v6, 32))
  {
    v9 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Supporting service HID", __p, 2u);
    }

    if (qword_100B547A0 != -1)
    {
      sub_100846B34();
    }

    operator new();
  }

  if ((*(*v6 + 56))(v6, 16))
  {
    v10 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Supporting service A2DP", __p, 2u);
    }

    if (qword_100B54930 != -1)
    {
      sub_100846B5C();
    }

    operator new();
  }

  if ((*(*v6 + 56))(v6, 8))
  {
    v11 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Supporting service Remote", __p, 2u);
    }

    if (qword_100B54940 != -1)
    {
      sub_100846B84();
    }

    operator new();
  }

  if ((*(*v6 + 56))(v6, 128) && (v28 & 1) == 0)
  {
    v12 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Supporting service WirelessiAP", __p, 2u);
    }

    if (qword_100B540C0 != -1)
    {
      sub_100846BAC();
    }

    operator new();
  }

  if ((*(*v6 + 56))(v6, 256))
  {
    v13 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Supporting service NetSharing", __p, 2u);
    }

    if (qword_100B54950 != -1)
    {
      sub_100846BD4();
    }

    operator new();
  }

  if ((*(*v6 + 56))(v6, 4096))
  {
    v14 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Supporting service NetConsumer", __p, 2u);
    }

    if (qword_100B54960 != -1)
    {
      sub_100846BFC();
    }

    operator new();
  }

  if ((*(*v6 + 56))(v6, 2048))
  {
    v15 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Supporting service Gaming", __p, 2u);
    }

    if (qword_100B54970 != -1)
    {
      sub_100846C24();
    }

    operator new();
  }

  if ((*(*v6 + 56))(v6, 0x2000))
  {
    v16 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Supporting service Braille", __p, 2u);
    }

    if (qword_100B54980 != -1)
    {
      sub_100846C4C();
    }

    operator new();
  }

  if ((*(*v6 + 56))(v6, 512))
  {
    v17 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Supporting service MAP", __p, 2u);
    }

    if (qword_100B54340 != -1)
    {
      sub_100846C74();
    }

    operator new();
  }

  if ((*(*v6 + 56))(v6, 0x10000))
  {
    v18 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Supporting service LE Audio", __p, 2u);
    }

    if (qword_100B54990 != -1)
    {
      sub_100846C9C();
    }

    operator new();
  }

  if ((*(*v6 + 56))(v6, 0x20000) && v28 == 1)
  {
    v19 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Supporting service WirelessiAPSink", __p, 2u);
    }

    if (qword_100B549A0 != -1)
    {
      sub_100846CC4();
    }

    operator new();
  }

  if ((*(*v6 + 56))(v6, 0x40000))
  {
    v20 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Supporting service WirelessCarPlay", __p, 2u);
    }

    if (qword_100B549B0 != -1)
    {
      sub_100846CEC();
    }

    operator new();
  }

  if ((*(*v6 + 56))(v6, 0x80000))
  {
    v21 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Supporting service AACP Client", __p, 2u);
    }

    if (qword_100B540A0 != -1)
    {
      sub_100846D14();
    }

    operator new();
  }

  if ((*(*v6 + 56))(v6, 0x100000))
  {
    v22 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Supporting service GATT", __p, 2u);
    }

    if (qword_100B549C0 != -1)
    {
      sub_100846D3C();
    }

    operator new();
  }

  sub_10000801C(v26);
  if ((*(*v6 + 56))(v6, 0x1000000))
  {
    v23 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Supporting service BT SIG LE Connected Audio", __p, 2u);
    }

    if (qword_100B549D0 != -1)
    {
      sub_100846D64();
    }

    operator new();
  }

  operator new();
}

void sub_10058F620(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  sub_1000088CC(&a16);
  sub_10007A068(v21 + 632);
  sub_100028EB4(v23);
  sub_1003645A0((v21 + 560));
  sub_10007A068(v21 + 496);
  v25 = *(v21 + 472);
  if (v25)
  {
    *(v21 + 480) = v25;
    operator delete(v25);
  }

  sub_10007A068(v21 + 408);
  v26 = *(v21 + 384);
  if (v26)
  {
    *(v21 + 392) = v26;
    operator delete(v26);
  }

  sub_10007A068(v21 + 320);
  sub_10058BE28((v21 + 272));
  sub_10007A068(v21 + 208);
  sub_100028EB4(v22);
  sub_10007A068(v21 + 120);
  sub_10007A068(v21 + 40);
  _Unwind_Resume(a1);
}

uint64_t sub_10058F78C(uint64_t a1)
{
  *a1 = off_100AFE4D0;
  *(a1 + 8) = off_100AFE540;
  *(a1 + 16) = off_100AFE570;
  *(a1 + 24) = off_100AFE5A0;
  *(a1 + 32) = &off_100AFE5C0;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 120);
  sub_100028EB4((a1 + 184));
  *(a1 + 700) = 0;
  *(a1 + 696) = 0;
  sub_10000801C(v7);
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, a1 + 40);
  v2 = *(a1 + 104);
  if (v2)
  {
    sub_1005711C4(v2);
    operator delete();
  }

  sub_1000088CC(v6);
  sub_1000088CC(v7);
  sub_10007A068(a1 + 632);
  sub_100028EB4((a1 + 608));
  sub_1003645A0((a1 + 560));
  sub_10007A068(a1 + 496);
  v3 = *(a1 + 472);
  if (v3)
  {
    *(a1 + 480) = v3;
    operator delete(v3);
  }

  sub_10007A068(a1 + 408);
  v4 = *(a1 + 384);
  if (v4)
  {
    *(a1 + 392) = v4;
    operator delete(v4);
  }

  sub_10007A068(a1 + 320);
  sub_10058BE28((a1 + 272));
  sub_10007A068(a1 + 208);
  sub_100028EB4((a1 + 184));
  sub_10007A068(a1 + 120);
  sub_10007A068(a1 + 40);
  return a1;
}

void sub_10058F934(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  sub_10007A068(v5 + 632);
  sub_100028EB4((v5 + 608));
  sub_1003645A0((v5 + 560));
  sub_10007A068(v5 + 496);
  v7 = *(v5 + 472);
  if (v7)
  {
    *(v5 + 480) = v7;
    operator delete(v7);
  }

  sub_10007A068(v5 + 408);
  v8 = *(v5 + 384);
  if (v8)
  {
    *(v5 + 392) = v8;
    operator delete(v8);
  }

  sub_10007A068(v5 + 320);
  sub_10058BE28((v5 + 272));
  sub_10007A068(v5 + 208);
  sub_100028EB4((v5 + 184));
  sub_10007A068(v5 + 120);
  sub_10007A068(v5 + 40);
  _Unwind_Resume(a1);
}

void sub_10058F9D8(uint64_t a1)
{
  sub_10058F78C(a1);

  operator delete();
}

void sub_10058FA10(uint64_t a1)
{
  sub_10058F78C(a1 - 32);

  operator delete();
}

uint64_t sub_10058FA4C(uint64_t a1)
{
  v3[0] = 0;
  v3[1] = 0;
  sub_100007F88(v3, a1 + 40);
  sub_100570C90(*(a1 + 104), QOS_CLASS_USER_INITIATED);
  sub_10000801C(v3);
  if (qword_100B50B88 != -1)
  {
    sub_100846D8C();
  }

  sub_10051ABE0(qword_100B50B80 + 8, a1 + 24);
  if (qword_100B50AA0 != -1)
  {
    sub_100846DB4();
  }

  sub_100312650(off_100B50A98 + 64, a1 + 8);
  return sub_1000088CC(v3);
}

uint64_t sub_10058FB0C(uint64_t a1)
{
  *(a1 + 700) = 0;
  *(a1 + 696) = 0;
  if (qword_100B50AA0 != -1)
  {
    sub_100846DDC();
  }

  sub_10007A3F0(off_100B50A98 + 64, a1 + 8);
  if (qword_100B50B88 != -1)
  {
    sub_100846DF0();
  }

  sub_10007A3F0(qword_100B50B80 + 8, a1 + 24);
  v3[0] = 0;
  v3[1] = 0;
  sub_100007F88(v3, a1 + 40);
  sub_100571164(*(a1 + 104));
  return sub_1000088CC(v3);
}

uint64_t sub_10058FBC8(uint64_t a1)
{
  v15[0] = 0;
  v15[1] = 0;
  sub_100007F88(v15, a1 + 40);
  *(a1 + 112) = 1;
  *(a1 + 696) = 0;
  *(a1 + 700) = 0;
  sub_10000801C(v15);
  v14[0] = 0;
  v14[1] = 0;
  sub_100007F88(v14, a1 + 120);
  v11 = 0;
  v12 = 0;
  v13 = 0;
  sub_10009C530(&v11, a1 + 184);
  sub_10000801C(v14);
  v2 = sub_100017E6C();
  sub_1003128B0(v2 + 384, a1 + 16);
  for (i = v12; i != &v11; i = i[1])
  {
    v4 = i[2];
    v5 = (*(*v4 + 16))(v4);
    if (v5)
    {
      v6 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        (*(*v4 + 192))(__p, v4);
        if (v10 >= 0)
        {
          v7 = __p;
        }

        else
        {
          v7 = __p[0];
        }

        *buf = 136446466;
        v17 = v7;
        v18 = 1024;
        v19 = v5;
        _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Could not start service %{public}s - result was %d", buf, 0x12u);
        if (v10 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  sub_100028EB4(&v11);
  sub_1000088CC(v14);
  return sub_1000088CC(v15);
}

void sub_10058FDCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  sub_1000088CC(va);
  sub_1000088CC(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_10058FE1C(uint64_t a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "ServiceManager::stackWillStop enter", buf, 2u);
  }

  v28[0] = 0;
  v28[1] = 0;
  sub_100007F88(v28, a1 + 120);
  *buf = 0;
  v26 = 0;
  v27 = 0;
  sub_10009C530(buf, a1 + 184);
  sub_10000801C(v28);
  v3 = sub_100017E6C();
  sub_10036F1AC(v3 + 384, a1 + 16);
  for (i = v26; i != buf; i = *(i + 8))
  {
    __p[0] = *(i + 16);
    if ((*(*__p[0] + 32))(__p[0]))
    {
      *&v23.__r_.__value_.__l.__data_ = 0uLL;
      sub_100007F88(&v23, a1 + 496);
      operator new();
    }
  }

  v24[0] = 0;
  v24[1] = 0;
  sub_100007F88(v24, a1 + 496);
  while (*(a1 + 624))
  {
    if (!sub_10002220C((a1 + 560), v24, 0x2710uLL))
    {
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_100846E04();
      }

      memset(&v23, 0, sizeof(v23));
      sub_100007E30(&v23, "ServiceManager shutdown failure, waiting for ");
      v5 = *(*(a1 + 616) + 16);
      if (*(v5 + 31) < 0)
      {
        sub_100008904(__p, *(v5 + 8), *(v5 + 16));
      }

      else
      {
        v14 = *(v5 + 8);
        v22 = *(v5 + 24);
        *__p = v14;
      }

      if (v22 >= 0)
      {
        v15 = __p;
      }

      else
      {
        v15 = __p[0];
      }

      if (v22 >= 0)
      {
        v16 = HIBYTE(v22);
      }

      else
      {
        v16 = __p[1];
      }

      std::string::append(&v23, v15, v16);
      if (SHIBYTE(v22) < 0)
      {
        operator delete(__p[0]);
      }

      v17 = sub_10000E92C();
      if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v18 = &v23;
      }

      else
      {
        v18 = v23.__r_.__value_.__r.__words[0];
      }

      sub_100007E30(v20, v18);
      sub_100693260(v17, 3715, v20, 1);
    }
  }

  sub_100028EB4((a1 + 608));
  *&v23.__r_.__value_.__l.__data_ = 0uLL;
  sub_100007F88(&v23, a1 + 40);
  *(a1 + 112) = 0;
  sub_10000801C(&v23);
  __p[0] = 0;
  __p[1] = 0;
  sub_100007F88(__p, a1 + 208);
  v6 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "stack will stop, clearing the connection request queue", v19, 2u);
  }

  v7 = *(a1 + 280);
  v8 = *(a1 + 288);
  *(a1 + 312) = 0;
  v9 = (v8 - v7) >> 3;
  if (v9 >= 3)
  {
    do
    {
      operator delete(*v7);
      v10 = *(a1 + 288);
      v7 = (*(a1 + 280) + 8);
      *(a1 + 280) = v7;
      v9 = (v10 - v7) >> 3;
    }

    while (v9 > 2);
  }

  if (v9 == 1)
  {
    v11 = 51;
  }

  else
  {
    if (v9 != 2)
    {
      goto LABEL_23;
    }

    v11 = 102;
  }

  *(a1 + 304) = v11;
LABEL_23:
  sub_1005903A8(a1);
  sub_10000801C(__p);
  v12 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "ServiceManager::stackWillStop exit", v19, 2u);
  }

  sub_1000088CC(__p);
  sub_1000088CC(&v23);
  sub_1000088CC(v24);
  sub_100028EB4(buf);
  return sub_1000088CC(v28);
}

void sub_100590218(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_1000088CC(&a22);
  sub_1000088CC(&a28);
  sub_100028EB4(&a30);
  sub_1000088CC(v30 - 64);
  _Unwind_Resume(a1);
}

void *sub_1005902DC(void *a1, void *a2)
{
  v10[0] = v10;
  v10[1] = v10;
  v10[2] = 0;
  v2 = a1[1];
  if (v2 != a1)
  {
    do
    {
      v6 = v2[1];
      v5 = v2[2];
      if (v5 == *a2)
      {
        if (v6 == a1)
        {
          v8 = 1;
        }

        else
        {
          do
          {
            v7 = v6[2];
            v8 = v7 == v5;
            if (v7 != v5)
            {
              break;
            }

            v6 = v6[1];
          }

          while (v6 != a1);
        }

        sub_100576EA8(v10, v10, a1, v2, v6);
        if (!v8)
        {
          v6 = v6[1];
        }
      }

      v2 = v6;
    }

    while (v6 != a1);
  }

  return sub_100028EB4(v10);
}

void sub_100590394(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100028EB4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005903A8(void *a1)
{
  v19[0] = 0;
  v19[1] = 0;
  sub_100007F88(v19, (a1 + 26));
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "------------ Connection Requests ------------", buf, 2u);
  }

  v3 = a1[38];
  v4 = a1[35];
  v5 = a1[36];
  v6 = (v4 + 8 * (v3 / 0x66));
  if (v5 == v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = *v6 + 40 * (v3 % 0x66);
  }

  while (1)
  {
    if (v5 == v4)
    {
      v9 = 0;
    }

    else
    {
      v8 = a1[39] + a1[38];
      v9 = *(v4 + 8 * (v8 / 0x66)) + 40 * (v8 % 0x66);
    }

    v10 = qword_100BCE8D8;
    v11 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
    if (v7 == v9)
    {
      break;
    }

    if (v11)
    {
      sub_1000E5A58(*v7, __p);
      v12 = __p;
      if (v18 < 0)
      {
        v12 = __p[0];
      }

      v13 = *(v7 + 24);
      v14 = *(v7 + 8);
      *buf = 136446722;
      v21 = v12;
      v22 = 1024;
      v23 = v13;
      v24 = 1024;
      v25 = v14;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Device: %{public}s with Services: 0x%x and in state %d ", buf, 0x18u);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v7 += 40;
    if (v7 - *v6 == 4080)
    {
      v15 = v6[1];
      ++v6;
      v7 = v15;
    }

    v4 = a1[35];
    v5 = a1[36];
  }

  if (v11)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "----------------------------------------------", buf, 2u);
  }

  return sub_1000088CC(v19);
}

uint64_t sub_100590608(uint64_t a1, uint64_t a2)
{
  v4[1] = 0;
  v5 = a2;
  v4[0] = 0;
  sub_100007F88(v4, a1 + 496);
  sub_1005902DC((a1 + 608), &v5);
  sub_100364600((a1 + 560));
  return sub_1000088CC(v4);
}

void sub_100590660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100590678(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v13[0] = 0;
  v13[1] = 0;
  sub_100007F88(v13, a1 + 320);
  v10 = *(a1 + 384);
  v11 = *(a1 + 392);
  v15 = a3;
  if (v10 != v11)
  {
    while (*v10 != a2 || v15 != v10[1])
    {
      v10 += 4;
      if (v10 == v11)
      {
        goto LABEL_7;
      }
    }
  }

  if (v10 == v11)
  {
LABEL_7:
    v14 = a2;
    v15 = a3;
    v16 = a4;
    v17 = a5;
    sub_10059926C((a1 + 384), &v14);
  }

  sub_1000088CC(v13);
  return 0;
}

uint64_t sub_10059074C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[0] = 0;
  v8[1] = 0;
  sub_100007F88(v8, a1 + 320);
  v6 = sub_10059947C(*(a1 + 384), *(a1 + 392), a2, a3);
  sub_100079CA4((a1 + 384), v6, *(a1 + 392));
  sub_1000088CC(v8);
  return 0;
}

uint64_t sub_1005907D4(void *a1, uint64_t a2)
{
  v18[0] = 0;
  v18[1] = 0;
  sub_100007F88(v18, (a1 + 51));
  v5 = a1[60];
  v4 = a1[61];
  if (v5 >= v4)
  {
    v7 = a1[59];
    v8 = (v5 - v7) >> 3;
    if ((v8 + 1) >> 61)
    {
      sub_1000C7698();
    }

    v9 = v4 - v7;
    v10 = v9 >> 2;
    if (v9 >> 2 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      sub_100008108((a1 + 59), v11);
    }

    v12 = (8 * v8);
    *v12 = a2;
    v6 = 8 * v8 + 8;
    v13 = a1[59];
    v14 = a1[60] - v13;
    v15 = v12 - v14;
    memcpy(v12 - v14, v13, v14);
    v16 = a1[59];
    a1[59] = v15;
    a1[60] = v6;
    a1[61] = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v5 = a2;
    v6 = (v5 + 1);
  }

  a1[60] = v6;
  return sub_1000088CC(v18);
}

uint64_t sub_1005908D4(uint64_t a1, uint64_t a2)
{
  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, a1 + 408);
  v5 = *(a1 + 472);
  v4 = *(a1 + 480);
  if (v5 != v4)
  {
    v6 = *(a1 + 472);
    while (*v6 != a2)
    {
      v6 += 8;
      v5 += 8;
      if (v6 == v4)
      {
        v5 = *(a1 + 480);
        break;
      }
    }
  }

  if (v4 != v5)
  {
    v7 = (v4 - (v5 + 8));
    if (v4 != v5 + 8)
    {
      memmove(v5, v5 + 8, v4 - (v5 + 8));
    }

    *(a1 + 480) = &v7[v5];
  }

  return sub_1000088CC(v9);
}

uint64_t sub_100590978(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, unsigned int a7)
{
  v33[0] = 0;
  v33[1] = 0;
  sub_100007F88(v33, (a1 + 51));
  __p = 0;
  v31 = 0;
  v32 = 0;
  sub_100007F20(&__p, a1 + 59);
  sub_10000801C(v33);
  v12 = __p;
  if (__p != v31)
  {
    if (a5 == 12)
    {
      v13 = a7;
    }

    else
    {
      v13 = a6;
    }

    do
    {
      v14 = v13;
      if ((a5 - 105) >= 0xFFFFFFFE)
      {
        sub_100364158(4);
        v14 = a6;
      }

      (***v12)(*v12, a2, a3, a5, v14);
      ++v12;
    }

    while (v12 != v31);
  }

  v29[0] = 0;
  v29[1] = 0;
  sub_100007F88(v29, (a1 + 40));
  v15 = a1[48];
  if (v15 != a1[49])
  {
    v16 = a1[48];
    do
    {
      if ((a3 & ~*(v15 + 16)) == 0)
      {
        if (qword_100B50B88 != -1)
        {
          sub_100846D8C();
        }

        if (sub_100076290(qword_100B50B80, *v15))
        {
          if (*(v15 + 8))
          {
            if (qword_100B508F0 != -1)
            {
              sub_100846E7C();
            }

            if (!sub_10056A4C4(off_100B508E8, *v15, a2))
            {
              v17 = qword_100BCE8D8;
              if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
              {
                sub_100846EA4(&v27, v28, v17);
              }
            }

            if (qword_100B540D0 != -1)
            {
              sub_100846EE4();
            }

            operator new();
          }

          v23 = qword_100BCE8D8;
          if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
          {
            *buf = 67110144;
            v35 = a3;
            v36 = 1024;
            v37 = a4;
            v38 = 1024;
            v39 = a5;
            v40 = 1024;
            v41 = a6;
            v42 = 1024;
            v43 = a7;
            _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Invalid fCallback: service %d, eventType %d, event %d, result %d, reason %d", buf, 0x20u);
          }
        }

        else
        {
          v18 = a1[49];
          if (v15 + 32 == v18)
          {
            v22 = v15;
          }

          else
          {
            v19 = a1[48];
            v20 = v19 + v16;
            do
            {
              v21 = v20 - v19;
              *v21 = *(v20 - v19 + 32);
              *(v21 + 16) = *(v20 - v19 + 48);
              *(v21 + 24) = *(v20 - v19 + 56);
              v20 += 32;
            }

            while (v20 - v19 + 32 != v18);
            v22 = v20 - v19;
          }

          a1[49] = v22;
        }
      }

      v15 += 32;
      v16 += 32;
    }

    while (v15 != a1[49]);
  }

  sub_1000088CC(v29);
  if (__p)
  {
    v31 = __p;
    operator delete(__p);
  }

  return sub_1000088CC(v33);
}

void sub_100590D98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100590DE8(int64x2_t *a1, unsigned __int8 *a2)
{
  v35[0] = 0;
  v35[1] = 0;
  sub_100007F88(v35, a1[13].i64);
  sub_1005903A8(a1);
  if (a1[19].i64[1])
  {
    v4 = *(*(a1[17].i64[1] + 8 * (a1[19].i64[0] / 0x66uLL)) + 40 * (a1[19].i64[0] % 0x66uLL));
  }

  else
  {
    v4 = 0;
  }

  sub_10000801C(v35);
  if (!v4)
  {
    return sub_1000088CC(v35);
  }

  if (v4 == a2)
  {
    v10 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(a2, __p);
      v11 = __p[23] >= 0 ? __p : *__p;
      LODWORD(buf) = 136446210;
      *(&buf + 4) = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Removing stalled device %{public}s from connection request queue and processing next conenction.", &buf, 0xCu);
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }
    }

    sub_100591550(a1, a2);
LABEL_32:
    v34[0] = 0;
    v34[1] = 0;
    sub_100007F88(v34, &a1[7].i64[1]);
    buf = 0uLL;
    v43 = 0;
    sub_10009C530(&buf, &a1[11].i64[1]);
    sub_10000801C(v34);
    if (qword_100B50F68 != -1)
    {
      sub_100846F0C();
    }

    v17 = sub_100530768(off_100B50F60, a2);
    if (v17)
    {
      v18 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(a2, __p);
        v19 = __p[23] >= 0 ? __p : *__p;
        *v36 = 136446466;
        *&v36[4] = v19;
        v37 = 1024;
        v38 = v17;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Device %{public}s has pending services:0x%x for a stalled connection request in the queue. Reporting conenction result for the pending services.", v36, 0x12u);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }
      }

      for (i = *(&buf + 1); i != &buf; i = *(i + 8))
      {
        v21 = *(*(i + 16) + 32);
        if ((v21 & v17) != 0)
        {
          sub_100591B18(a1, a2, v21, 0, 303);
        }
      }
    }

    if (sub_1000C0348(a2))
    {
      v22 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(a2, __p);
        v23 = __p[23] >= 0 ? __p : *__p;
        *v36 = 136446210;
        *&v36[4] = v23;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Force Disconnect %{public}s since it had a stalled connection request in the queue.", v36, 0xCu);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }
      }

      v24 = a1[6].i64[1];
      *__p = _NSConcreteStackBlock;
      *&__p[8] = 3221225472;
      *&__p[16] = sub_100596F04;
      *&__p[24] = &unk_100AEAF08;
      *&__p[32] = a1;
      v45 = a2;
      v46 = 1;
      sub_10000CA94(v24, __p);
    }

    v25 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(a2, __p);
      v26 = __p[23] >= 0 ? __p : *__p;
      *v36 = 136446210;
      *&v36[4] = v26;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Check if we can inititate a reconnection for the stalled device %{public}s.", v36, 0xCu);
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }
    }

    *uu = 0;
    v41 = 0;
    if (qword_100B508D0 != -1)
    {
      sub_100846F34();
    }

    sub_1000CC438(off_100B508C8, a2 + 128, uu);
    if (!uuid_is_null(uu))
    {
      if (qword_100B508D0 != -1)
      {
        sub_100846F34();
      }

      v28 = off_100B508C8;
      v29 = sub_10004DF60(uu);
      v30 = sub_1007902B0(v28, v29);

      Current = CFAbsoluteTimeGetCurrent();
      if (Current > v30 && Current - v30 <= 1.0)
      {
        v32 = qword_100BCE8D8;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000E5A58(a2, v36);
          v33 = v39 >= 0 ? v36 : *v36;
          *__p = 136446978;
          *&__p[4] = v33;
          *&__p[12] = 1024;
          *&__p[14] = 1;
          *&__p[18] = 2048;
          *&__p[20] = Current;
          *&__p[28] = 2048;
          *&__p[30] = v30;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "LE Adv for the stalled device %{public}s was last seen within %d second(s). CurrentTimeStamp: %f, lastSeenTimeStamp: %f. Initiating reconnection.", __p, 0x26u);
          if (v39 < 0)
          {
            operator delete(*v36);
          }
        }

        memset(__p, 0, 24);
        sub_10059234C(a1, a2, -1, __p, 2);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }
      }
    }

    sub_100028EB4(&buf);
    sub_1000088CC(v34);
    return sub_1000088CC(v35);
  }

  sub_100007FB8(v35);
  v5 = a1[19].u64[0];
  v6 = a1[17].i64[1];
  v7 = a1[18].i64[0];
  v8 = (v6 + 8 * (v5 / 0x66));
  if (v7 == v6)
  {
    v9 = 0;
  }

  else
  {
    v9 = *v8 + 40 * (v5 % 0x66);
  }

LABEL_16:
  v12 = v9;
  while (1)
  {
    v13 = v7 == v6 ? 0 : *(v6 + 8 * ((a1[19].i64[1] + v5) / 0x66)) + 40 * ((a1[19].i64[1] + v5) % 0x66);
    if (v12 == v13)
    {
      break;
    }

    if (*v12 == a2)
    {
      v15 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(a2, __p);
        v16 = __p[23] >= 0 ? __p : *__p;
        LODWORD(buf) = 136446210;
        *(&buf + 4) = v16;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Removing stalled device %{public}s from connection request queue.", &buf, 0xCu);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }
      }

      sub_10054DB9C(a2, 0);
      sub_10058B3B8(a1 + 17, v8, v9);
      break;
    }

    v12 += 5;
    v9 += 40;
    if (*v8 + 4080 == v9)
    {
      v14 = v8[1];
      ++v8;
      v9 = v14;
      goto LABEL_16;
    }
  }

  sub_1005903A8(a1);
  sub_10000801C(v35);
  if (v12 != v13)
  {
    goto LABEL_32;
  }

  return sub_1000088CC(v35);
}

void sub_1005914BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  sub_100028EB4(&a19);
  sub_1000088CC(&a9);
  sub_1000088CC(&a11);
  _Unwind_Resume(a1);
}

uint64_t sub_100591550(int64x2_t *a1, uint64_t a2)
{
  v31[0] = 0;
  v31[1] = 0;
  sub_100007F88(v31, a1[13].i64);
  v4 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__p[0]) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "processing next connection", __p, 2u);
  }

  v5 = sub_1005903A8(a1);
  v7 = a1[19].u64[0];
  v8 = a1[17].i64[1];
  v9 = a1[18].i64[0];
  v10 = (v8 + 8 * (v7 / 0x66));
  if (v9 == v8)
  {
    v11 = 0;
  }

  else
  {
    v11 = *v10 + 40 * (v7 % 0x66);
  }

LABEL_6:
  v12 = v11;
  while (1)
  {
    v13 = v9 == v8 ? 0 : *(v8 + 8 * ((a1[19].i64[1] + v7) / 0x66)) + 40 * ((a1[19].i64[1] + v7) % 0x66);
    if (v12 == v13)
    {
      break;
    }

    if (*v12 == a2)
    {
      v15 = sub_1000E077C(a1, a2);
      if (v15)
      {
        if (sub_1000DFB74(a2, 0x80000u) == 4 && (v15 & 0x80000) == 0 && (*(v12 + 26) & 8) != 0)
        {
          v16 = qword_100BCE8D8;
          if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
          {
            sub_1000E5A58(a2, __p);
            v17 = v30 >= 0 ? __p : __p[0];
            *buf = 136446210;
            v33 = v17;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "AACP is not being connected to %{public}s", buf, 0xCu);
            if (v30 < 0)
            {
              operator delete(__p[0]);
            }
          }
        }
      }

      v18 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(a2, __p);
        v19 = v30 >= 0 ? __p : __p[0];
        *buf = 136446210;
        v33 = v19;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Removing device %{public}s from connection request queue", buf, 0xCu);
        if (v30 < 0)
        {
          operator delete(__p[0]);
        }
      }

      sub_10054DB9C(a2, 0);
      if (sub_10054E0B4(a2))
      {
        sub_10054DF84(a2);
      }

      v20 = sub_10058B3B8(a1 + 17, v10, v11);
      v22 = sub_10000F034(v20, v21);
      (*(*v22 + 824))(v22, 1, 0, 0);
      v5 = sub_1005903A8(a1);
      break;
    }

    v12 += 40;
    v11 += 40;
    if (*v10 + 4080 == v11)
    {
      v14 = v10[1];
      ++v10;
      v11 = v14;
      goto LABEL_6;
    }
  }

  if (a1[19].i64[1])
  {
    v23 = *(*(a1[17].i64[1] + 8 * (a1[19].i64[0] / 0x66uLL)) + 40 * (a1[19].i64[0] % 0x66uLL));
    v24 = sub_10000C798(v5, v6);
    if ((*(*v24 + 416))(v24) && sub_10053C854(v23))
    {
      if (qword_100B54670 != -1)
      {
        sub_100846F5C();
      }

      sub_1005880AC(qword_100B54668, v23);
    }

    v25 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(v23, __p);
      v26 = v30 >= 0 ? __p : __p[0];
      *buf = 136446210;
      v33 = v26;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Connecting to device %{public}s", buf, 0xCu);
      if (v30 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (qword_100B50F68 != -1)
    {
      sub_100846F0C();
    }

    sub_100530B98(off_100B50F60, v23);
    sub_100590978(a1, v23, 0xFFFFFFFFLL, 0, 0, 0, 0);
    sub_10054DB9C(v23, 1);
    if (qword_100B54670 != -1)
    {
      sub_100846F5C();
    }

    sub_100587D6C(qword_100B54668, v23, a1[2].i64, 0, *(*(a1[17].i64[1] + 8 * (a1[19].i64[0] / 0x66uLL)) + 40 * (a1[19].i64[0] % 0x66uLL) + 28));
  }

  v27 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__p[0]) = 0;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "No pending connection to process", __p, 2u);
  }

  return sub_1000088CC(v31);
}

void sub_100591AE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100591B18(int64x2_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17[0] = 0;
  v17[1] = 0;
  sub_100007F88(v17, &a1[2].i64[1]);
  if (qword_100B50F68 != -1)
  {
    sub_100846F0C();
  }

  v10 = sub_100531278(off_100B50F60, a2, a3, a4, a5);
  sub_100590978(a1, a2, a3, 0, 11, a5, 0);
  if (a3 == 2 && !a5 && (*(a2 + 1380) & 1) == 0)
  {
    LODWORD(__p) = 0;
    if (qword_100B549E0 != -1)
    {
      sub_100846F84();
    }

    (*(*off_100B549D8 + 88))(off_100B549D8, a2, &__p);
    sub_1005421E4(a2, __p);
  }

  if (v10)
  {
    v11 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(a2, &__p);
      v12 = v19;
      v13 = __p;
      v14 = sub_1000E2140(a2, 0x28u);
      p_p = &__p;
      if (v12 < 0)
      {
        p_p = v13;
      }

      *buf = 136446466;
      v21 = p_p;
      v22 = 1024;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Received all connection results for device %{public}s AACP incoming %d", buf, 0x12u);
      if (v19 < 0)
      {
        operator delete(__p);
      }
    }

    sub_10053E630(a2);
    if (qword_100B54670 != -1)
    {
      sub_100846F5C();
    }

    sub_100587F9C();
  }

  return sub_1000088CC(v17);
}

void sub_10059224C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (__p)
  {
    a29 = __p;
    operator delete(__p);
  }

  sub_1000088CC(&a26);
  _Unwind_Resume(a1);
}

void sub_1005922D4(uint64_t a1, uint64_t a2, char a3)
{
  v3 = *(a1 + 104);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100596F04;
  v4[3] = &unk_100AEAF08;
  v4[4] = a1;
  v4[5] = a2;
  v5 = a3;
  sub_10000CA94(v3, v4);
}

uint64_t sub_10059234C(int64x2_t *a1, uint64_t a2, int a3, const std::string *a4, uint64_t a5)
{
  if (!sub_1000E2140(a2, 0xCu))
  {
    goto LABEL_21;
  }

  if ((SHIBYTE(a4->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (!*(&a4->__r_.__value_.__s + 23))
    {
      goto LABEL_7;
    }

LABEL_6:
    v9 = [NSString stringWithUTF8String:?];
    goto LABEL_8;
  }

  if (a4->__r_.__value_.__l.__size_)
  {
    goto LABEL_6;
  }

LABEL_7:
  v9 = @"Unknown";
LABEL_8:
  *uu = 0;
  *&uu[8] = 0;
  if (qword_100B508D0 != -1)
  {
    sub_100846FD4();
  }

  sub_1000CC438(off_100B508C8, (a2 + 128), uu);
  if (uuid_is_null(uu))
  {
    v10 = qword_100BCE8D8;
    v11 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR);
    if (v11)
    {
      sub_1000E5A58(a2, v80);
      sub_100846FE8(v80, v87, v10);
    }

LABEL_17:
    v16 = -1;
    goto LABEL_18;
  }

  if (qword_100B508D0 != -1)
  {
    sub_100846F34();
  }

  v13 = off_100B508C8;
  v14 = sub_10004DF60(uu);
  v15 = sub_1007902B0(v13, v14);

  if (v15 <= 0.0)
  {
    goto LABEL_17;
  }

  v16 = (CFAbsoluteTimeGetCurrent() - v15);
LABEL_18:
  v17 = sub_10000F034(v11, v12);
  sub_1000E5A58(a2, __p);
  (*(*v17 + 416))(v17, __p, v9, v16, 0, a5);
  if (v79 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_21:
  v77[0] = 0;
  v77[1] = 0;
  sub_100007F88(v77, &a1[2].i64[1]);
  v18 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a2, buf);
    v19 = v86;
    v20 = *buf;
    v21 = sub_1000295DC(a2);
    v22 = buf;
    *uu = 67109634;
    if (v19 < 0)
    {
      v22 = v20;
    }

    *&uu[4] = a3;
    *&uu[8] = 2082;
    *&uu[10] = v22;
    *&uu[18] = 1024;
    *&uu[20] = v21;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Connecting 0x%x services to device %{public}s, paired %d", uu, 0x18u);
    if (v86 < 0)
    {
      operator delete(*buf);
    }
  }

  if (a1[7].i8[0] == 1)
  {
    sub_10000801C(v77);
    if (qword_100B512C8 != -1)
    {
      sub_10084705C();
    }

    if (sub_10000EE78(off_100B512C0) == 1)
    {
      if (*(a2 + 1032) == 1)
      {
        a3 &= 0xFFEFFFFE;
        v23 = qword_100BCE8D8;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
        {
          *uu = 67109120;
          *&uu[4] = a3;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Wireless Splitter Guest Not In Contacts connecting with services 0x%x", uu, 8u);
        }
      }

      v24 = SHIBYTE(a4->__r_.__value_.__r.__words[2]);
      if (v24 >= 0)
      {
        size = HIBYTE(a4->__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = a4->__r_.__value_.__l.__size_;
      }

      if (size)
      {
        v26 = *(a2 + 1499);
        v27 = qword_100BCE6F0;
        if (qword_100BCE6F0 != &unk_100BCE6F8)
        {
          v71 = *(a2 + 1499);
          v72 = a5;
          v73 = a1;
          if (v24 >= 0)
          {
            v28 = a4;
          }

          else
          {
            v28 = a4->__r_.__value_.__r.__words[0];
          }

          v29 = v28 + size;
          while (1)
          {
            v30 = *(v27 + 55);
            v31 = v30 >= 0 ? (v27 + 32) : *(v27 + 32);
            v32 = v30 >= 0 ? *(v27 + 55) : *(v27 + 40);
            if (!v32)
            {
              break;
            }

            if (size >= v32)
            {
              v35 = *v31;
              v36 = size;
              v37 = v28;
              do
              {
                v38 = v36 - v32;
                if (v38 == -1)
                {
                  break;
                }

                v39 = memchr(v37, v35, v38 + 1);
                if (!v39)
                {
                  break;
                }

                v40 = v39;
                if (!memcmp(v39, v31, v32))
                {
                  if (v40 == v29 || v40 - v28 == -1)
                  {
                    break;
                  }

                  goto LABEL_65;
                }

                v37 = (v40 + 1);
                v36 = v29 - (v40 + 1);
              }

              while (v36 >= v32);
            }

            v33 = *(v27 + 8);
            if (v33)
            {
              do
              {
                v34 = v33;
                v33 = *v33;
              }

              while (v33);
            }

            else
            {
              do
              {
                v34 = *(v27 + 16);
                v60 = *v34 == v27;
                v27 = v34;
              }

              while (!v60);
            }

            v27 = v34;
            if (v34 == &unk_100BCE6F8)
            {
              a1 = v73;
              v26 = v71;
              LOBYTE(a5) = v72;
              goto LABEL_69;
            }
          }

LABEL_65:
          a1 = v73;
          sub_100590978(v73, a2, 0, 3, 901, 0, 0);
          v26 = 1;
          LOBYTE(a5) = v72;
        }

LABEL_69:
        *(a2 + 1499) = v26;
        std::string::operator=((a2 + 1544), a4);
      }

      v76[0] = 0;
      v76[1] = 0;
      sub_100007F88(v76, a1[13].i64);
      v42 = a1[19].u64[0];
      v43 = a1[17].i64[1];
      v44 = a1[18].i64[0];
      v45 = (v43 + 8 * (v42 / 0x66));
      if (v44 == v43)
      {
        v46 = 0;
      }

      else
      {
        v46 = *v45 + 40 * (v42 % 0x66);
      }

LABEL_73:
      v47 = v46 - 4080;
      while (1)
      {
        v48 = v44 == v43 ? 0 : *(v43 + 8 * ((a1[19].i64[1] + v42) / 0x66)) + 40 * ((a1[19].i64[1] + v42) % 0x66);
        if (v46 == v48)
        {
          break;
        }

        if (*v46 == a2)
        {
          v49 = *(v46 + 24);
          if ((v49 & a3) != 0)
          {
            v51 = qword_100BCE8D8;
            if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
            {
              sub_1000E5A58(a2, uu);
              if (uu[23] >= 0)
              {
                v52 = uu;
              }

              else
              {
                v52 = *uu;
              }

              *buf = 67109378;
              *&buf[4] = v49;
              *&buf[8] = 2082;
              *&buf[10] = v52;
              _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "Connection request for 0x%x to device %{public}s already queued, ignoring duplicate request", buf, 0x12u);
              if ((uu[23] & 0x80000000) != 0)
              {
                operator delete(*uu);
              }

              v49 = *(v46 + 24);
            }

            sub_1005903A8(a1);
            a3 &= ~v49;
            v43 = a1[17].i64[1];
            v44 = a1[18].i64[0];
            break;
          }
        }

        v46 += 40;
        v47 += 40;
        if (*v45 == v47)
        {
          v50 = v45[1];
          ++v45;
          v46 = v50;
          goto LABEL_73;
        }
      }

      if (v44 == v43)
      {
        v54 = 0;
      }

      else
      {
        v53 = a1[19].i64[1] + a1[19].i64[0];
        v54 = *(v43 + 8 * (v53 / 0x66)) + 40 * (v53 % 0x66);
      }

      if (v46 == v54)
      {
        v61 = qword_100BCE8D8;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000E5A58(a2, uu);
          v62 = uu[23] >= 0 ? uu : *uu;
          *buf = 136446210;
          *&buf[4] = v62;
          _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "No connection request for the device %{public}s, adding to connection request queue", buf, 0xCu);
          if ((uu[23] & 0x80000000) != 0)
          {
            operator delete(*uu);
          }
        }

        *uu = a2;
        *&uu[8] = 0;
        *&uu[16] = 0;
        v82 = a3;
        v83 = a5;
        v84 = mach_continuous_time();
        sub_10058A618(&a1[17], uu);
        v63 = a1[6].i64[1];
        v75[0] = _NSConcreteStackBlock;
        v75[1] = 3221225472;
        v75[2] = sub_100594B34;
        v75[3] = &unk_100AE0860;
        v75[4] = a1;
        v75[5] = a2;
        sub_10008E008(v63, 60000, v75);
        sub_1005903A8(a1);
        v64 = a1[19].u64[1];
        if (v64 < 2)
        {
          sub_10000801C(v76);
          sub_100590978(a1, a2, 0xFFFFFFFFLL, 0, 0, 0, 0);
          sub_10054DB9C(a2, 1);
          if (sub_1000295DC(a2))
          {
            if (!sub_1000C0348(a2))
            {
              v66 = sub_1000E2140(a2, 0x13u);
              if (v66)
              {
                v68 = sub_1004329F8(v66, v67);
                v41 = (**v68)(v68, a2);
                if (v41)
                {
                  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
                  {
                    sub_1000E5A58(a2, uu);
                    sub_1008470C4();
                  }

                  sub_100591550(a1, a2);
                }

                goto LABEL_132;
              }
            }
          }

          if (sub_1000295DC(a2))
          {
            v69 = sub_1000E2140(a2, 0x15u);
          }

          else
          {
            v69 = 0;
          }

          sub_100594D24(a1, a2, v69, a5);
        }

        else
        {
          v65 = qword_100BCE8D8;
          if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
          {
            *uu = 134217984;
            *&uu[4] = v64;
            _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "Queued up connection request - queue size is %lu", uu, 0xCu);
          }

          sub_1005903A8(a1);
        }
      }

      else
      {
        if (a3)
        {
          v55 = qword_100BCE8D8;
          if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
          {
            sub_1000E5A58(a2, buf);
            v56 = v86 >= 0 ? buf : *buf;
            v57 = *(v46 + 24);
            *uu = 136446722;
            *&uu[4] = v56;
            *&uu[12] = 1024;
            *&uu[14] = v57;
            *&uu[18] = 1024;
            *&uu[20] = a3;
            _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "There is an existing connection request for the device %{public}s, but current service mask 0x%x and new service mask 0x%x are different. Appening new service to existing service mask", uu, 0x18u);
            if (v86 < 0)
            {
              operator delete(*buf);
            }
          }

          v58 = sub_1000E077C(a1, *v46);
          for (i = 0; i != 31; ++i)
          {
            v60 = ((1 << i) & a3) != 0 && (v58 & a3) == 0;
            if (v60)
            {
              *(v46 + 24) |= 1 << i;
            }
          }
        }

        sub_1005903A8(a1);
      }

      v41 = 0;
LABEL_132:
      sub_1000088CC(v76);
      goto LABEL_133;
    }

    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100847084();
    }
  }

  v41 = 202;
LABEL_133:
  sub_1000088CC(v77);
  return v41;
}

void sub_100592D60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  sub_1000088CC(&a19);
  sub_1000088CC(&a21);
  _Unwind_Resume(a1);
}

uint64_t sub_100592E0C(uint64_t a1, _BYTE *a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1 + 40);
  sub_100070A6C(*(a1 + 104), a2);
  return sub_1000088CC(v5);
}

void sub_100592E70(uint64_t a1, void *a2)
{
  v3 = a2;
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1 + 40);
  sub_10000CA94(*(a1 + 104), v3);
  sub_1000088CC(v4);
}

void sub_100592EC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

uint64_t sub_100592EE8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v11[0] = 0;
  v11[1] = 0;
  sub_100007F88(v11, (a1 + 5));
  if (qword_100B50F68 != -1)
  {
    sub_100846F0C();
  }

  sub_100530DB8(off_100B50F60, a2, a3, a4, a5);
  sub_100590978(a1, a2, a3, 0, 1, 0, 0);
  return sub_1000088CC(v11);
}

uint64_t sub_100592FB0(int64x2_t *a1, uint64_t a2, int a3)
{
  v6 = sub_10000C798(a1, a2);
  result = (*(*v6 + 56))(v6, 0x80000);
  if (result)
  {
    if (sub_1000DFB74(a2, 0x80000u) != 4)
    {
      return 0;
    }

    if (qword_100B540A0 != -1)
    {
      sub_100847120();
    }

    if ((*(*off_100B54098 + 136))(off_100B54098, a2))
    {
      return 0;
    }

    if (qword_100B540A0 != -1)
    {
      sub_100847120();
    }

    v8 = (*(*off_100B54098 + 120))(off_100B54098, a2);
    result = 0;
    if (a3 != 0x80000 && (v8 & 1) == 0)
    {
      if (qword_100B540A0 != -1)
      {
        sub_100847120();
      }

      if (sub_10032F01C(off_100B54098, a2))
      {
        v9 = qword_100BCE8D8;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000E5A58(a2, &__p);
          v10 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
          LODWORD(buf) = 136446210;
          *(&buf + 4) = v10;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Remove %{public}s from stale AACP connection device list and return false", &buf, 0xCu);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        if (qword_100B540A0 != -1)
        {
          sub_100846D14();
        }

        sub_10032F050(off_100B54098, a2);
        return 0;
      }

      v34[0] = 0;
      v34[1] = 0;
      sub_100007F88(v34, a1[13].i64);
      v11 = a1[19].u64[0];
      v12 = a1[17].i64[1];
      v13 = a1[18].i64[0];
      v14 = (v12 + 8 * (v11 / 0x66));
      if (v13 == v12)
      {
        v15 = 0;
      }

      else
      {
        v15 = *v14 + 40 * (v11 % 0x66);
      }

LABEL_27:
      v16 = v15 - 4080;
      while (1)
      {
        if (v13 == v12)
        {
          v17 = 0;
        }

        else
        {
          v17 = *(v12 + 8 * ((a1[19].i64[1] + v11) / 0x66)) + 40 * ((a1[19].i64[1] + v11) % 0x66);
        }

        if (v15 == v17)
        {
          goto LABEL_48;
        }

        if (*v15 == a2 && (*(v15 + 26) & 8) != 0)
        {
          break;
        }

        v15 += 40;
        v16 += 40;
        if (*v14 == v16)
        {
          v18 = v14[1];
          ++v14;
          v15 = v18;
          goto LABEL_27;
        }
      }

      if (qword_100B50F68 != -1)
      {
        sub_100846F0C();
      }

      if ((sub_100530768(off_100B50F60, a2) & 0x80000) == 0)
      {
        if (qword_100B50F68 != -1)
        {
          sub_100846F0C();
        }

        if (sub_1005306DC(off_100B50F60, a2, 0x80000))
        {
          v19 = qword_100BCE8D8;
          if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
          {
            sub_1000E5A58(a2, &__p);
            v20 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
            LODWORD(buf) = 136446210;
            *(&buf + 4) = v20;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Connection request list for %{public}s has AACP -- Condition for waiting not met", &buf, 0xCu);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }

LABEL_48:
          v21 = 0;
          goto LABEL_49;
        }
      }

      v30 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(a2, &__p);
        v31 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
        LODWORD(buf) = 136446210;
        *(&buf + 4) = v31;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Connection request list for %{public}s has AACP pending -- Wait for it to complete", &buf, 0xCu);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      v21 = 1;
LABEL_49:
      v22 = a1[17].i64[1];
      if (a1[18].i64[0] == v22)
      {
        v24 = 0;
      }

      else
      {
        v23 = a1[19].i64[1] + a1[19].i64[0];
        v24 = *(v22 + 8 * (v23 / 0x66)) + 40 * (v23 % 0x66);
      }

      if (v15 == v24)
      {
        buf = 0uLL;
        v38 = 0;
        if (qword_100B540E0 != -1)
        {
          sub_100847134();
        }

        sub_1007391B4(off_100B540D8, &buf);
        v25 = 16;
        if (!sub_1000E69B8(&buf, a2))
        {
          v26 = a1[19].u64[1];
          if (v26)
          {
            v25 = 16;
          }

          else
          {
            v25 = 8;
          }

          v27 = qword_100BCE8D8;
          if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
          {
            sub_1000E5A58(a2, v32);
            v28 = v33 >= 0 ? v32 : v32[0];
            LODWORD(__p.__r_.__value_.__l.__data_) = 134218498;
            *(__p.__r_.__value_.__r.__words + 4) = v26;
            WORD2(__p.__r_.__value_.__r.__words[1]) = 2082;
            *(&__p.__r_.__value_.__r.__words[1] + 6) = v28;
            HIWORD(__p.__r_.__value_.__r.__words[2]) = 1024;
            v36 = v25;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Connection request queue size is %luu. Initite AACP client connection request for %{public}s using watchdog stall timeout as %d seconds", &__p, 0x1Cu);
            if (v33 < 0)
            {
              operator delete(v32[0]);
            }
          }

          memset(&__p, 0, sizeof(__p));
          v29 = sub_10059234C(a1, a2, 0x80000, &__p, 2);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (!v29)
          {
            LOBYTE(v21) = 1;
          }
        }

        if (buf)
        {
          *(&buf + 1) = buf;
          operator delete(buf);
        }

        sub_1000088CC(v34);
        if ((v21 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        sub_1000088CC(v34);
        if (!v21)
        {
          return 0;
        }

        v25 = 16;
      }

      if (!sub_10054E0B4(a2))
      {
        sub_10054DC18(a2, v25);
      }

      return 1;
    }
  }

  return result;
}

uint64_t sub_10059360C(uint64_t a1)
{
  if (qword_100B50AC0 != -1)
  {
    sub_10084715C();
  }

  v2 = off_100B50AB8;
  v3 = *(a1 + 32);

  return sub_100593660(v2, v3);
}

uint64_t sub_100593660(int64x2_t *a1, uint64_t a2)
{
  v4 = sub_1000E077C(a1, a2);
  v5 = 25;
  result = sub_10053C3E8(a2);
  if (result)
  {
    result = sub_1000DFA00(a1, a2);
    v5 = result & 0x19;
  }

  if ((v4 & 0x19) != 0)
  {
    v7 = v5 & ~(v4 & 0x19);
    if (v7)
    {
      v8 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        if (v7)
        {
          v9 = " HFP";
        }

        else
        {
          v9 = "";
        }

        if (v7 >= 0x10)
        {
          v10 = " A2DP";
        }

        else
        {
          v10 = "";
        }

        if ((v7 & 8) != 0)
        {
          v11 = " AVRCP";
        }

        else
        {
          v11 = "";
        }

        if (v4)
        {
          v12 = " HFP";
        }

        else
        {
          v12 = "";
        }

        if ((v4 & 0x10) != 0)
        {
          v13 = " A2DP";
        }

        else
        {
          v13 = "";
        }

        if ((v4 & 8) != 0)
        {
          v14 = " AVRCP";
        }

        else
        {
          v14 = "";
        }

        sub_1000E5A58(a2, __p);
        v15 = __p;
        if (v23 < 0)
        {
          v15 = *__p;
        }

        *buf = 136448003;
        *&buf[4] = v9;
        v25 = 2082;
        *v26 = v10;
        *&v26[8] = 2082;
        v27 = v11;
        *v28 = 2082;
        *&v28[2] = v12;
        v29 = 2082;
        v30 = v13;
        v31 = 2082;
        v32 = v14;
        v33 = 2160;
        v34 = 1752392040;
        v35 = 2081;
        v36 = v15;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Forcing connection of%{public}s%{public}s%{public}s after incoming connection of only%{public}s%{public}s%{public}s for device %{private, mask.hash}s", buf, 0x52u);
        if (v23 < 0)
        {
          operator delete(*__p);
        }
      }

      v19[0] = 0;
      v19[1] = 0;
      sub_100007F88(v19, a1[13].i64);
      *buf = a2;
      *&buf[8] = 0;
      *&v26[2] = 0;
      LODWORD(v27) = v7;
      BYTE4(v27) = 2;
      *v28 = mach_continuous_time();
      sub_10058A618(&a1[17], buf);
      v16 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(a2, buf);
        v17 = v26[9] >= 0 ? buf : *buf;
        *__p = 136446466;
        *&__p[4] = v17;
        v21 = 1024;
        v22 = v7;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Added device %{public}s to the connction request queue for the missing services 0x%x", __p, 0x12u);
        if ((v26[9] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }
      }

      sub_1005903A8(a1);
      sub_10000801C(v19);
      if (qword_100B50F68 != -1)
      {
        sub_100846F0C();
      }

      if ((sub_100530500(off_100B50F60) & 1) == 0)
      {
        v18 = qword_100BCE8D8;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "No device currently connecting. lets process nexct connection", buf, 2u);
        }

        sub_100591550(a1, 0);
      }

      return sub_1000088CC(v19);
    }
  }

  return result;
}

uint64_t sub_1005939A4(uint64_t a1, uint64_t a2)
{
  v2 = *(*sub_10000C7D0(a1, a2) + 48);

  return v2();
}

void sub_1005939FC(id a1)
{
  v2 = *(*sub_10000C7D0(a1, v1) + 184);

  v2();
}

uint64_t sub_100593A4C(int64x2_t *a1, uint64_t a2, int a3)
{
  v6 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a2, &__p);
    v7 = v10 >= 0 ? &__p : __p;
    *buf = 136446466;
    *&buf[4] = v7;
    *&buf[12] = 1024;
    *&buf[14] = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Disconnecting services from device %{public}s with mask 0x%x", buf, 0x12u);
    if (v10 < 0)
    {
      operator delete(__p);
    }
  }

  *buf = 0;
  *&buf[8] = 0;
  sub_100007F88(buf, &a1[2].i64[1]);
  if (a1[7].i8[0] == 1)
  {
    sub_10000801C(buf);
    if (qword_100B512C8 != -1)
    {
      sub_10084705C();
    }

    if (sub_10000EE78(off_100B512C0))
    {
      if (qword_100B54670 != -1)
      {
        sub_100846F5C();
      }

      sub_100587F9C();
    }
  }

  sub_1000088CC(buf);
  return 202;
}

void sub_100593CD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va2, a15);
  va_start(va1, a15);
  va_start(va, a15);
  v16 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  va_copy(va2, va1);
  v19 = va_arg(va2, void);
  v21 = va_arg(va2, void);
  v22 = va_arg(va2, void);
  sub_100028EB4(va1);
  sub_1000088CC(va);
  sub_1000088CC(va2);
  _Unwind_Resume(a1);
}

uint64_t sub_100593D1C(void *a1, uint64_t a2, uint64_t a3)
{
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, (a1 + 5));
  sub_100590978(a1, a2, a3, 1, 2, 0, 0);
  return sub_1000088CC(v7);
}

uint64_t sub_100593DA0(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unsigned int a4, unsigned int a5, unsigned int a6)
{
  v61 = a3;
  v60[0] = 0;
  v60[1] = 0;
  sub_100007F88(v60, a1 + 40);
  if (qword_100B50F68 != -1)
  {
    sub_100846F0C();
  }

  sub_1005319BC(off_100B50F60, a2, a3, a4, a5, a6);
  v9 = sub_100590978(a1, a2, a3, 1, 12, a5, a6);
  switch(a3)
  {
    case 1:
      v18 = *(a1 + 104);
      v59[0] = _NSConcreteStackBlock;
      v59[1] = 3221225472;
      v59[2] = sub_100594768;
      v59[3] = &unk_100ADF8F8;
      v59[4] = a2;
      sub_10000CA94(v18, v59);
      break;
    case 0x10:
      v16 = *(a1 + 104);
      v58[0] = _NSConcreteStackBlock;
      v58[1] = 3221225472;
      v58[2] = sub_1005947DC;
      v58[3] = &unk_100ADF8F8;
      v58[4] = a2;
      sub_10000CA94(v16, v58);
      v17 = 1;
      goto LABEL_11;
    case 0x80000:
      v11 = *(a1 + 304);
      v12 = *(a1 + 280);
      v13 = *(a1 + 288);
      v14 = (v12 + 8 * (v11 / 0x66));
      if (v13 == v12)
      {
        v15 = 0;
      }

      else
      {
        v15 = *v14 + 40 * (v11 % 0x66);
      }

      while (1)
      {
        if (v13 == v12)
        {
          v50 = 0;
        }

        else
        {
          v49 = *(a1 + 312) + *(a1 + 304);
          v50 = *(v12 + 8 * (v49 / 0x66)) + 40 * (v49 % 0x66);
        }

        if (v15 == v50)
        {
          break;
        }

        if (*v15 == a2 && *(v15 + 24) == 0x80000)
        {
          v51 = qword_100BCE8D8;
          if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(__p.__r_.__value_.__l.__data_) = 0;
            _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "Stale request for service connection request (AACP only), add device to staleAACPConnReqDevList", &__p, 2u);
          }

          if (qword_100B540A0 != -1)
          {
            sub_100846D14();
          }

          sub_10032EF00(off_100B54098, a2);
        }

        v15 += 40;
        if (v15 - *v14 == 4080)
        {
          v52 = v14[1];
          ++v14;
          v15 = v52;
        }

        v12 = *(a1 + 280);
        v13 = *(a1 + 288);
      }

      break;
  }

  v17 = 0;
LABEL_11:
  v19 = sub_10000C798(v9, v10);
  if (!(*(*v19 + 56))(v19, 16))
  {
    goto LABEL_31;
  }

  if (qword_100B54930 != -1)
  {
    sub_100846FAC();
  }

  if ((*(*off_100B54928 + 112))(off_100B54928))
  {
    memset(&__p, 0, sizeof(__p));
    if (qword_100B50F68 != -1)
    {
      sub_100846F0C();
    }

    sub_1000ADA24(off_100B50F60, &__p);
    v20 = __p.__r_.__value_.__r.__words[0];
    if (__p.__r_.__value_.__r.__words[0] == __p.__r_.__value_.__l.__size_)
    {
      v22 = 1;
      if (__p.__r_.__value_.__r.__words[0])
      {
LABEL_23:
        __p.__r_.__value_.__l.__size_ = v20;
        operator delete(v20);
      }
    }

    else
    {
      v21 = 0;
      do
      {
        if ((sub_1000E077C(a1, *v20) & 0x10) == 0)
        {
          v21 += sub_10024132C(*v20 + 128) ^ 1;
        }

        ++v20;
      }

      while (v20 != __p.__r_.__value_.__l.__size_);
      v20 = __p.__r_.__value_.__r.__words[0];
      v22 = v21 == 0;
      if (__p.__r_.__value_.__r.__words[0])
      {
        goto LABEL_23;
      }
    }

    if (!v22)
    {
      goto LABEL_26;
    }
  }

  v23 = *(a1 + 104);
  v56[0] = _NSConcreteStackBlock;
  v56[1] = 3221225472;
  v56[2] = sub_100594850;
  v56[3] = &unk_100AE0900;
  v57 = 0;
  sub_10000CA94(v23, v56);
LABEL_26:
  if (v17)
  {
    if (qword_100B54930 != -1)
    {
      sub_100846FAC();
    }

    v24 = (*(*off_100B54928 + 112))(off_100B54928);
    if ((v24 & 1) == 0)
    {
      v26 = sub_100017F4C(v24, v25);
      sub_10000CA94(v26, &stru_100AFE5F8);
    }
  }

LABEL_31:
  v27 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v28 = buf;
    sub_1000E5A58(a2, buf);
    if (v63 < 0)
    {
      v28 = *buf;
    }

    v29 = sub_1005948F8(&v61);
    if (sub_1000295DC(a2))
    {
      v30 = "paired";
    }

    else
    {
      v30 = "not paired";
    }

    if (sub_1000E2140(a2, 0))
    {
      v31 = "yes";
    }

    else
    {
      v31 = "no";
    }

    v32 = sub_1000E2140(a2, 1u);
    v33 = sub_1000E2140(a2, 3u);
    v34 = "not supported";
    LODWORD(__p.__r_.__value_.__l.__data_) = 136448514;
    *(__p.__r_.__value_.__r.__words + 4) = v28;
    WORD2(__p.__r_.__value_.__r.__words[1]) = 2082;
    if (v32)
    {
      v35 = "supported";
    }

    else
    {
      v35 = "not supported";
    }

    *(&__p.__r_.__value_.__r.__words[1] + 6) = v29;
    if (v33)
    {
      v34 = "supported";
    }

    HIWORD(__p.__r_.__value_.__r.__words[2]) = 1024;
    v65 = a3;
    v66 = 1024;
    v67 = a4;
    v68 = 1024;
    v69 = a5;
    v70 = 1024;
    v71 = a6;
    v72 = 2080;
    v73 = v30;
    v74 = 2080;
    v75 = v31;
    v76 = 2080;
    v77 = v35;
    v78 = 2080;
    v79 = v34;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "ServiceManager disconnection result for device %{public}s with service %{public}s (%d), profile 0x%x, result %d, reason %d, isPaired %s, bs %s, inear %s, unt %s", &__p, 0x56u);
    if (v63 < 0)
    {
      operator delete(*buf);
    }
  }

  if (qword_100B50F68 != -1)
  {
    sub_100846F0C();
  }

  if (!sub_10053066C(off_100B50F60, a2))
  {
    if (*(a1 + 696))
    {
LABEL_51:
      if (qword_100B508F0 != -1)
      {
        sub_100846E7C();
      }

      v36 = a1 + 696;
      v37 = sub_1000E6554(off_100B508E8, a1 + 696, 1);
      v38 = v37;
      if (v37 && sub_1000295DC(v37))
      {
        v39 = qword_100BCE8D8;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000BE6F8(v36, &__p);
          v40 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
          *buf = 136446210;
          *&buf[4] = v40;
          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "quickDisconnect reconnection attempt for device %{public}s", buf, 0xCu);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        if (qword_100B50AC0 != -1)
        {
          sub_100847170();
        }

        memset(&__p, 0, sizeof(__p));
        v41 = sub_10059234C(off_100B50AB8, v38, -1, &__p, 2);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v41 && os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
        {
          sub_100847198();
        }
      }

      else
      {
        v42 = qword_100BCE8D8;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(__p.__r_.__value_.__l.__data_) = 0;
          _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "QuickDisconnect device not found or not paired", &__p, 2u);
        }
      }

      *(v36 + 4) = 0;
      *v36 = 0;
    }

    else
    {
      v44 = 0;
      while (v44 != 5)
      {
        if (*(a1 + 697 + v44++))
        {
          if ((v44 - 1) <= 4)
          {
            goto LABEL_51;
          }

          break;
        }
      }

      if (a6 == 10721 && sub_1000295DC(a2) && sub_1000E2140(a2, 0) && sub_1000E2140(a2, 1u) && sub_1000E2140(a2, 3u))
      {
        v46 = qword_100BCE8D8;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000E5A58(a2, &__p);
          v47 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
          *buf = 136446210;
          *&buf[4] = v47;
          _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "Post-swap reconnection attempt for device %{public}s", buf, 0xCu);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        if (qword_100B50AC0 != -1)
        {
          sub_100847170();
        }

        memset(&__p, 0, sizeof(__p));
        v48 = sub_10059234C(off_100B50AB8, a2, -1, &__p, 2);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v48 && os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
        {
          sub_10084720C();
        }
      }
    }
  }

  return sub_1000088CC(v60);
}

uint64_t sub_100594768()
{
  if (qword_100B54920 != -1)
  {
    sub_100847280();
  }

  v0 = *(*off_100B54918 + 88);

  return v0();
}

uint64_t sub_1005947DC()
{
  if (qword_100B54940 != -1)
  {
    sub_100847294();
  }

  v0 = *(*off_100B54938 + 88);

  return v0();
}

uint64_t sub_100594850(uint64_t a1, uint64_t a2)
{
  v2 = *(*sub_10000C7D0(a1, a2) + 48);

  return v2();
}

void sub_1005948A8(id a1)
{
  v2 = *(*sub_10000C7D0(a1, v1) + 184);

  v2();
}

const char *sub_1005948F8(int *a1)
{
  v1 = *a1;
  if (*a1 > 2047)
  {
    if (v1 < 0x8000)
    {
      if (v1 >= 0x2000)
      {
        if (v1 == 0x2000)
        {
          return "Braille";
        }

        if (v1 == 0x4000)
        {
          return "Passive Multi Stream";
        }
      }

      else
      {
        if (v1 == 2048)
        {
          return "Gaming";
        }

        if (v1 == 4096)
        {
          return "Network (Client)";
        }
      }
    }

    else if (v1 < 0x20000)
    {
      if (v1 == 0x8000)
      {
        return "GATT (Client)";
      }

      if (v1 == 0x10000)
      {
        return "LE Audio";
      }
    }

    else
    {
      switch(v1)
      {
        case 0x20000:
          return "WirelessiAPSink";
        case 0x80000:
          return "AACP";
        case 0x100000:
          return "GATT";
      }
    }
  }

  else if (v1 <= 15)
  {
    if (v1 > 1)
    {
      if (v1 == 2)
      {
        return "Phonebook";
      }

      if (v1 == 8)
      {
        return "Remote";
      }
    }

    else
    {
      if (v1 == -1)
      {
        return "ALL";
      }

      if (v1 == 1)
      {
        return "Handsfree";
      }
    }
  }

  else if (v1 <= 127)
  {
    if (v1 == 16)
    {
      return "A2DP";
    }

    if (v1 == 32)
    {
      return "HID";
    }
  }

  else
  {
    switch(v1)
    {
      case 128:
        return "WirelessiAP";
      case 256:
        return "Network (Server)";
      case 512:
        return "MAP";
    }
  }

  return "Unknown";
}

uint64_t sub_100594AA0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12[0] = 0;
  v12[1] = 0;
  sub_100007F88(v12, (a1 + 5));
  sub_100590978(a1, a2, a3, 2, a5, a6, 0);
  return sub_1000088CC(v12);
}

void sub_100594B40(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 114) == 1)
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_1008472A8();
    }
  }

  else
  {
    v15[0] = 0;
    v15[1] = 0;
    sub_100007F88(v15, a1 + 208);
    v4 = *(a1 + 312);
    if (v4)
    {
      v5 = *(a1 + 280);
      if (*(a1 + 288) != v5)
      {
        v6 = *(a1 + 304);
        v7 = (v5 + 8 * (v6 / 0x66));
        v8 = (*v7 + 40 * (v6 % 0x66));
        v9 = *(v5 + 8 * ((v6 + v4) / 0x66)) + 40 * ((v6 + v4) % 0x66);
        while (v8 != v9)
        {
          if (*v8 == a2)
          {
            mach_continuous_time();
            if (UpTicksToSeconds() >= 0x3C)
            {
              v12 = *(a1 + 104);
              v14[0] = _NSConcreteStackBlock;
              v14[1] = 3221225472;
              v14[2] = sub_100598508;
              v14[3] = &unk_100AE0860;
              v14[4] = a1;
              v14[5] = a2;
              sub_10000CA94(v12, v14);
              goto LABEL_14;
            }
          }

          v8 += 5;
          if ((v8 - *v7) == 4080)
          {
            v10 = v7[1];
            ++v7;
            v8 = v10;
          }
        }
      }
    }

    v11 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "No device stalls detected in Service Manager", v13, 2u);
    }

LABEL_14:
    sub_1000088CC(v15);
  }
}

void sub_100594D0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_100594D24(void *a1, uint64_t a2, int a3, char a4)
{
  if (!a3)
  {
    goto LABEL_73;
  }

  v34 = 0;
  v7 = sub_10000E92C();
  if ((*(*v7 + 8))(v7))
  {
    v8 = sub_10000E92C();
    sub_100007E30(buf, "FastConnect");
    sub_100007E30(&__p, "DisableFastConnect");
    (*(*v8 + 72))(v8, buf, &__p, &v34);
    if (SHIBYTE(v33) < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v41) < 0)
    {
      operator delete(*buf);
    }

    v9 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v34;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Outgoing Connection, disableFastConnect = %d", buf, 8u);
    }
  }

  v10 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = sub_1000E2140(a2, 0x15u);
    *buf = 67109120;
    *&buf[4] = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "startConnectServices supportsProfileFastConnect:%d", buf, 8u);
  }

  v30 = xmmword_1008AA1A0;
  __p = 0;
  v32 = 0;
  v33 = 0;
  if (sub_10053BFB4(a2, &v30, 0x201u, &__p))
  {
    if (*__p == 1)
    {
      v12 = *(__p + 2);
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v34)
  {
    goto LABEL_43;
  }

  if (!sub_1000E2140(a2, 0x15u))
  {
    goto LABEL_93;
  }

  if (qword_100B50F68 != -1)
  {
    sub_100846F0C();
  }

  if (sub_10053066C(off_100B50F60, a2))
  {
LABEL_93:
    if (qword_100B540E0 != -1)
    {
      sub_100847134();
    }

    if (!sub_100731BD8(off_100B540D8, a2))
    {
      goto LABEL_43;
    }

    if (qword_100B50F68 != -1)
    {
      sub_100846F0C();
    }

    if (sub_1005307E0(off_100B50F60, a2))
    {
      goto LABEL_43;
    }
  }

  v13 = sub_1000E2140(a2, 0xCu);
  if (!v12 || !v13)
  {
LABEL_43:
    v19 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(a2, v35);
      if (v36 >= 0)
      {
        v20 = v35;
      }

      else
      {
        v20 = *v35;
      }

      if (qword_100B50F68 != -1)
      {
        sub_100846F0C();
      }

      v21 = sub_10053066C(off_100B50F60, a2) != 0;
      if (qword_100B50F68 != -1)
      {
        sub_100846F0C();
      }

      v22 = sub_1005307E0(off_100B50F60, a2);
      if (qword_100B540E0 != -1)
      {
        sub_100847134();
      }

      v23 = sub_100731BD8(off_100B540D8, a2);
      *buf = 136447234;
      *&buf[4] = v20;
      v38 = 1024;
      v39 = v21;
      v40 = 1024;
      v41 = v12;
      v42 = 1024;
      v43 = v22;
      v44 = 1024;
      v45 = v23;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Did not do PFC for device %{public}s. Connection for device exits: %d, SDP service database state: %d, service connected:%d, PFCALL:%d", buf, 0x24u);
      if (v36 < 0)
      {
        operator delete(*v35);
      }
    }

    if ((v34 & 1) == 0)
    {
      if (qword_100B540E0 != -1)
      {
        sub_100847134();
      }

      v24 = sub_100731BD8(off_100B540D8, a2);
      if (!v12 && v24)
      {
        v26 = qword_100BCE8D8;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "No SDP record but both supports PFC all, start PFC after SDP", buf, 2u);
        }

        if (qword_100B540E0 != -1)
        {
          sub_100847134();
        }

        v27 = 1;
        goto LABEL_69;
      }
    }

    if (qword_100B540E0 == -1)
    {
      v27 = 0;
LABEL_69:
      *(off_100B540D8 + 682) = v27;
      v16 = 1;
      goto LABEL_70;
    }

LABEL_89:
    sub_100847134();
    v27 = 0;
    goto LABEL_69;
  }

  if (qword_100B540E0 != -1)
  {
    sub_100847134();
  }

  v15 = sub_100731A4C(off_100B540D8, a2);
  v16 = v15;
  if (v15)
  {
    if (v15 == 4506)
    {
      v28 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(a2, buf);
        v29 = v41 >= 0 ? buf : *buf;
        *v35 = 136446210;
        *&v35[4] = v29;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "PFC device %{public}s already connected!", v35, 0xCu);
        if (SHIBYTE(v41) < 0)
        {
          operator delete(*buf);
        }
      }
    }

    else
    {
      if (v15 == 4508)
      {
        v17 = qword_100BCE8D8;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000E5A58(a2, buf);
          v18 = v41 >= 0 ? buf : *buf;
          *v35 = 136446210;
          *&v35[4] = v18;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "PFC connection for device %{public}s already in progress", v35, 0xCu);
          if (SHIBYTE(v41) < 0)
          {
            operator delete(*buf);
          }
        }

        sub_10054DB9C(a2, 0);
        v16 = 0;
        goto LABEL_70;
      }

      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_1000E5A58(a2, buf);
        sub_1008472E8();
      }
    }

    if (qword_100B540E0 == -1)
    {
      v27 = 0;
      goto LABEL_69;
    }

    goto LABEL_89;
  }

LABEL_70:
  if (__p)
  {
    v32 = __p;
    operator delete(__p);
  }

  if (v16)
  {
LABEL_73:
    if (qword_100B50F68 != -1)
    {
      sub_100846F0C();
    }

    sub_100530B98(off_100B50F60, a2);
    if (qword_100B54670 != -1)
    {
      sub_100846F5C();
    }

    sub_100587D6C(qword_100B54668, a2, a1 + 32, 0, a4);
  }
}

void sub_1005953F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100595470(uint64_t a1, unsigned __int8 *a2)
{
  v4 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000BE6F8(a2, __p);
    if (v9 >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    *buf = 136446210;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "delayedConnectServices addr %{public}s", buf, 0xCu);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v6 = *a2;
  *(a1 + 700) = *(a2 + 2);
  *(a1 + 696) = v6;
  return 0;
}

_BYTE *sub_100595564(uint64_t a1, unsigned __int8 *a2, uint64_t a3, int a4)
{
  v10 = 1;
  v9 = 0;
  sub_1000216B4(&v9);
  sub_1002FCADC((a2 + 128), &v10);
  sub_100022214(&v9);
  if (((a4 & 1) != 0 || (v10 & 1) == 0) && (sub_1000295DC(a2) & 1) == 0 && !sub_100539FE8(a2))
  {
    v7 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      v12 = a4;
      v13 = 1024;
      v14 = v10;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Sleep workaround after SDP due device-database %d, remote ssp %d", buf, 0xEu);
    }

    sub_1001BAECC(1800);
  }

  if (qword_100B50AC0 != -1)
  {
    sub_100847170();
  }

  sub_1005956CC(off_100B50AB8, a2, a3);
  return sub_10002249C(&v9);
}

uint64_t sub_1005956CC(int64x2_t *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (!a3)
  {
    v84[0] = 0;
    v84[1] = 0;
    sub_100007F88(v84, a1[13].i64);
    v7 = a1[19].i64[1];
    if (!v7)
    {
      if (qword_100B50F68 != -1)
      {
        sub_100846F0C();
      }

      sub_100530C74(off_100B50F60, a2, 0);
      if (qword_100B54670 != -1)
      {
        sub_100846F5C();
      }

      sub_100587F9C();
    }

    v8 = a1[19].u64[0];
    v9 = a1[17].i64[1];
    v10 = a1[18].i64[0];
    v11 = (v9 + 8 * (v8 / 0x66));
    if (v10 == v9)
    {
      v12 = 0;
    }

    else
    {
      v12 = *v11 + 40 * (v8 % 0x66);
    }

    v13 = v8 + v7;
    v14 = v13 / 0x66;
    v15 = v13 % 0x66;
LABEL_21:
    v16 = v12 - 4080;
    while (1)
    {
      v17 = v10 == v9 ? 0 : *(v9 + 8 * v14) + 40 * v15;
      if (v12 == v17 || *v12 == a2)
      {
        break;
      }

      v12 += 40;
      v16 += 40;
      if (*v11 == v16)
      {
        v18 = v11[1];
        ++v11;
        v12 = v18;
        goto LABEL_21;
      }
    }

    if (v10 == v9)
    {
      v19 = 0;
    }

    else
    {
      v19 = *(v9 + 8 * v14) + 40 * v15;
    }

    if (v12 == v19)
    {
      v25 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(a2, v90);
        v26 = v90[23] >= 0 ? v90 : *v90;
        *buf = 136446210;
        *&buf[4] = v26;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Got an SDP response without a connection in progress for device %{public}s - was there a successful incoming connection during the outgoing one?", buf, 0xCu);
        if ((v90[23] & 0x80000000) != 0)
        {
          operator delete(*v90);
        }
      }

      if (qword_100B50F68 != -1)
      {
        sub_100846F0C();
      }

      sub_100530C74(off_100B50F60, a2, 0);
      if (qword_100B54670 != -1)
      {
        sub_100846F5C();
      }

      sub_100587F9C();
    }

    sub_10000801C(v84);
    if (qword_100B540E0 != -1)
    {
      sub_100847134();
    }

    if (sub_100731BD8(off_100B540D8, a2))
    {
      if (qword_100B540E0 != -1)
      {
        sub_100847134();
      }

      if (*(off_100B540D8 + 682) == 1)
      {
        if (qword_100B50F68 != -1)
        {
          sub_100846F0C();
        }

        if (sub_10053066C(off_100B50F60, a2) && !sub_1000E077C(a1, a2))
        {
          v20 = qword_100BCE8D8;
          if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
          {
            sub_1000E5A58(a2, v90);
            v21 = v90[23];
            v22 = *v90;
            v23 = sub_1000295DC(a2);
            v24 = v90;
            if (v21 < 0)
            {
              v24 = v22;
            }

            *buf = 136446466;
            *&buf[4] = v24;
            *&buf[12] = 1024;
            *&buf[14] = v23;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Fast connect after SDP, device %{public}s, paired:%d", buf, 0x12u);
            if ((v90[23] & 0x80000000) != 0)
            {
              operator delete(*v90);
            }
          }

          if (qword_100B54670 != -1)
          {
            sub_100846F5C();
          }

          sub_100587F9C();
        }

LABEL_73:
        v83[0] = 0;
        v83[1] = 0;
        sub_100007F88(v83, &a1[7].i64[1]);
        memset(buf, 0, 24);
        sub_10009C530(buf, &a1[11].i64[1]);
        sub_10000801C(v83);
        v33 = *(v12 + 24);
        v81 = 0;
        v82 = 0;
        v34 = sub_1000C2364(a2, &v82 + 1, &v82, &v81, &v81 + 1);
        v35 = qword_100BCE8D8;
        v36 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
        if (v36)
        {
          sub_1000E5A58(a2, __p);
          v37 = v88 >= 0 ? __p : *__p;
          v38 = sub_1000295DC(a2);
          v39 = v81;
          v40 = sub_100539FE8(a2);
          *v90 = 136447490;
          *&v90[4] = v37;
          *&v90[12] = 1024;
          *&v90[14] = v38;
          *&v90[18] = 1024;
          *&v90[20] = v34;
          *&v90[24] = 1024;
          *&v90[26] = v39;
          *&v90[30] = 1024;
          LODWORD(v91) = v40;
          WORD2(v91) = 1024;
          *(&v91 + 6) = v33;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Handle query complete for device %{public}s isPaired %d deviceIDStatus %d pid 0x%x isAppleBluetooth %d mask 0x%x", v90, 0x2Au);
          if (v88 < 0)
          {
            operator delete(*__p);
          }
        }

        if (!v34)
        {
          goto LABEL_89;
        }

        if (!sub_10053D124(a2))
        {
          v66 = qword_100BCE8D8;
          if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
          {
            sub_1000C23E0(a2, v90);
            v67 = v90[23] >= 0 ? v90 : *v90;
            *__p = 136446466;
            *&__p[4] = "void BT::ServiceManager::handleQueryComplete(Device *, BTResult)";
            v86 = 2082;
            v87 = v67;
            _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "%{public}s - Device “%{public}s” not supported on this platform, disconnecting", __p, 0x16u);
            if ((v90[23] & 0x80000000) != 0)
            {
              operator delete(*v90);
            }
          }

          sub_100590978(a1, a2, 0, 0, 11, 0, 0);
          v68 = a1[6].i64[1];
          *v90 = _NSConcreteStackBlock;
          *&v90[8] = 3221225472;
          *&v90[16] = sub_100596F04;
          *&v90[24] = &unk_100AEAF08;
          *&v91 = a1;
          *(&v91 + 1) = a2;
          v92 = 1;
          sub_10000CA94(v68, v90);
          goto LABEL_154;
        }

        v36 = sub_100539FE8(a2);
        v41 = v81 == 8207 ? v36 : 0;
        if (v41 == 1 && ((v36 = sub_1000295DC(a2), !v33) ? (v42 = 1) : (v42 = v36), (v42 & 1) == 0))
        {
          v70 = *&buf[8];
          v43 = 0;
          if (*&buf[8] == buf)
          {
            v78 = 109;
          }

          else
          {
            v78 = 109;
            do
            {
              v36 = *(v70 + 16);
              v71 = *(v36 + 32);
              if (v71 == 0x80000 && (v33 & 0x80000) != 0)
              {
                v73 = (*(*v36 + 80))(v36, a2);
                v74 = qword_100BCE8D8;
                v36 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
                if (v36)
                {
                  sub_1000E5A58(a2, __p);
                  v75 = __p;
                  if (v88 < 0)
                  {
                    v75 = *__p;
                  }

                  *v90 = 136315650;
                  *&v90[4] = v75;
                  *&v90[12] = 1024;
                  *&v90[14] = v33;
                  *&v90[18] = 1024;
                  *&v90[20] = v73;
                  _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "AACPFirst: Connecting AACP first for %s mask 0x%x with result %d", v90, 0x18u);
                  if (v88 < 0)
                  {
                    operator delete(*__p);
                  }
                }

                if (v73 - 107 >= 2)
                {
                  if (v73 == 303 || v73 == 0)
                  {
                    v78 = 0;
                  }

                  else
                  {
                    v77 = v78;
                    if (v78 == 109)
                    {
                      v77 = v73;
                    }

                    v78 = v77;
                  }
                }

                v43 = 1;
              }

              v70 = *(v70 + 8);
            }

            while (v70 != buf);
          }
        }

        else
        {
LABEL_89:
          v43 = 0;
          v78 = 109;
        }

        for (i = *&buf[8]; i != buf; i = *(i + 8))
        {
          v45 = *(i + 16);
          v46 = *(v45 + 32);
          if ((v46 & v33) == 0)
          {
            continue;
          }

          if (v46 == 0x80000 && (v43 & 1) != 0)
          {
            v47 = qword_100BCE8D8;
            v36 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
            if (v36)
            {
              *v90 = 67109120;
              *&v90[4] = v33;
              _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "AACPFirst: Skipping AACP Connection mask 0x%x", v90, 8u);
            }

            continue;
          }

          if (v46 == 0x100000)
          {
            if (sub_1005965D4(v36, a2))
            {
              v48 = qword_100BCE8D8;
              v36 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
              if (v36)
              {
                sub_1000E5A58(a2, v90);
                v49 = v90;
                if (v90[23] < 0)
                {
                  v49 = *v90;
                }

                *__p = 136315394;
                *&__p[4] = v49;
                v86 = 1024;
                LODWORD(v87) = v33;
                v50 = v48;
                v51 = "Skipping CATT Connection for device %s with mask 0x%x";
LABEL_107:
                _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, v51, __p, 0x12u);
                if ((v90[23] & 0x80000000) != 0)
                {
                  operator delete(*v90);
                }

                continue;
              }

              continue;
            }

            v46 = *(v45 + 32);
          }

          if (v46 != 512)
          {
            v54 = (*(*v45 + 80))(v45, a2);
            v55 = qword_100BCE8D8;
            v36 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
            if (v36)
            {
              sub_1000C23E0(a2, __p);
              if (v88 >= 0)
              {
                v56 = __p;
              }

              else
              {
                v56 = *__p;
              }

              if (*(v45 + 31) < 0)
              {
                sub_100008904(__dst, *(v45 + 8), *(v45 + 16));
              }

              else
              {
                v57 = *(v45 + 8);
                v80 = *(v45 + 24);
                *__dst = v57;
              }

              v58 = __dst;
              if (v80 < 0)
              {
                v58 = __dst[0];
              }

              *v90 = 67109634;
              *&v90[4] = v54;
              *&v90[8] = 2080;
              *&v90[10] = v56;
              *&v90[18] = 2080;
              *&v90[20] = v58;
              _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "Connection Result %d for device %s for service %s", v90, 0x1Cu);
              if (SHIBYTE(v80) < 0)
              {
                operator delete(__dst[0]);
              }

              if (v88 < 0)
              {
                operator delete(*__p);
              }
            }

            if (v54 - 107 >= 2)
            {
              if (v54 == 303 || v54 == 0)
              {
                v78 = 0;
              }

              else
              {
                v60 = v78;
                if (v78 == 109)
                {
                  v60 = v54;
                }

                v78 = v60;
              }
            }

            continue;
          }

          v52 = qword_100BCE8D8;
          v36 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
          if (v36)
          {
            sub_1000E5A58(a2, v90);
            v53 = v90;
            if (v90[23] < 0)
            {
              v53 = *v90;
            }

            *__p = 136315394;
            *&__p[4] = v53;
            v86 = 1024;
            LODWORD(v87) = v33;
            v50 = v52;
            v51 = "Skipping outgoing MAP Connection for device %s with mask 0x%x";
            goto LABEL_107;
          }
        }

        v61 = v78;
        if (v78)
        {
          if (v78 != 109)
          {
            goto LABEL_141;
          }

          sub_1000DEEA4(a2, v90);
          v62 = v90[23];
          v63 = *v90;
          if (v90[23] >= 0)
          {
            v64 = v90;
          }

          else
          {
            v64 = *v90;
          }

          v65 = strncmp(v64, "MB Bluetooth", 0xCuLL);
          if (v62 < 0)
          {
            operator delete(v63);
          }

          if (!v65)
          {
            sub_100590978(a1, a2, 0, 0, 11, 0, 0);
            v69 = qword_100BCE8D8;
            if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
            {
              *v90 = 0;
              _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "This device reports no services supported and then makes incoming connection :( ", v90, 2u);
            }
          }

          else
          {
LABEL_141:
            if (qword_100B50F68 != -1)
            {
              sub_100846F0C();
              v61 = v78;
            }

            sub_100530C74(off_100B50F60, a2, v61);
            sub_100590978(a1, a2, 0xFFFFFFFFLL, 0, 11, v61, 0);
          }

          if (qword_100B54670 != -1)
          {
            sub_100846F5C();
          }

          sub_100587F9C();
        }

LABEL_154:
        sub_100028EB4(buf);
        sub_1000088CC(v83);
        return sub_1000088CC(v84);
      }
    }

    else if (qword_100B540E0 != -1)
    {
      sub_100847134();
    }

    v27 = *(off_100B540D8 + 84);
    v28 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(a2, buf);
      v29 = buf[23];
      v30 = *buf;
      v31 = sub_1000295DC(a2);
      v32 = buf;
      *v90 = 136446722;
      if (v29 < 0)
      {
        v32 = v30;
      }

      *&v90[4] = v32;
      *&v90[12] = 1024;
      *&v90[14] = v31;
      *&v90[18] = 2048;
      *&v90[20] = v27;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Lagacy profile connection after SDP, device %{public}s, paired:%d, FC features:%llx", v90, 0x1Cu);
      if (buf[23] < 0)
      {
        operator delete(*buf);
      }
    }

    if ((v27 & 0x10) != 0)
    {
      if (qword_100B540E0 != -1)
      {
        sub_100847134();
      }

      *(off_100B540D8 + 682) = 1;
    }

    goto LABEL_73;
  }

  if (qword_100B50F68 != -1)
  {
    sub_100847344();
  }

  sub_100530C74(off_100B50F60, a2, a3);
  sub_100590978(a1, a2, 0xFFFFFFFFLL, 0, 11, a3, 0);
  if (a3 != 17)
  {
    if (qword_100B54670 != -1)
    {
      sub_100847358();
    }

    sub_100587F9C();
  }

  return sub_100591550(a1, a2);
}

void sub_100596508(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (*(v39 - 137) < 0)
  {
    operator delete(*(v39 - 160));
  }

  sub_1000088CC(&a25);
  _Unwind_Resume(a1);
}

uint64_t sub_1005965D4(uint64_t a1, unsigned __int8 *a2)
{
  v3 = a2[128];
  v4 = a2[129];
  v5 = a2[130];
  v6 = a2[131];
  v7 = a2[132];
  v8 = a2[133];
  if (qword_100B508D0 != -1)
  {
    sub_100846FD4();
  }

  v10[0] = 0;
  v10[1] = 0;
  sub_1000498D4(off_100B508C8, (v3 << 40) | (v4 << 32) | (v5 << 24) | (v6 << 16) | (v7 << 8) | v8, 0, 1u, 0, 0, v10);
  if (qword_100B508B0 != -1)
  {
    sub_10084736C();
  }

  if (sub_100050290(off_100B508A8, v10))
  {
    return 1;
  }

  else
  {
    return sub_1005399A0(a2) ^ 1;
  }
}

void sub_1005966EC(uint64_t a1, uint64_t a2, int a3)
{
  if (!a2)
  {
    v6 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT))
    {
      sub_100847394(v6);
    }
  }

  v21 = 0;
  v20 = 0u;
  memset(v19, 0, sizeof(v19));
  v18 = 0u;
  *v16 = 0u;
  v17 = 0u;
  *v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  sub_1000DE474(&v13 + 1);
  BYTE2(v14[0]) = 0;
  BYTE4(v14[0]) = 0;
  BYTE2(v16[0]) = 0;
  BYTE4(v16[0]) = 0;
  HIDWORD(v19[2]) = 0;
  v15 = 0uLL;
  v14[1] = 0;
  LOBYTE(v16[0]) = 0;
  v17 = 0uLL;
  v16[1] = 0;
  LOBYTE(v18) = 0;
  v19[0] = 0;
  v19[1] = 0;
  *(&v18 + 1) = 0;
  *(&v19[1] + 7) = 0;
  LOBYTE(v19[3]) = 1;
  *(&v19[3] + 6) = 0;
  *(&v19[3] + 1) = 0;
  v20 = 0uLL;
  v19[5] = 0;
  LOBYTE(v21) = 0;
  *(&v21 + 2) = 0;
  v7 = sub_100536A18(a2, &v13);
  v8 = v7 & BYTE1(v19[2]);
  v9 = *(a1 + 104);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1005968C8;
  v10[3] = &unk_100AEDA80;
  v10[4] = a1;
  v10[5] = a2;
  v11 = a3;
  v12 = v8;
  sub_10000CA94(v9, v10);
  if (SHIBYTE(v19[1]) < 0)
  {
    operator delete(*(&v18 + 1));
  }

  if (SHIBYTE(v17) < 0)
  {
    operator delete(v16[1]);
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(v14[1]);
  }

  nullsub_21();
}

uint64_t sub_10059690C(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 3;
  }

  v17[0] = 0;
  v17[1] = 0;
  sub_100007F88(v17, a1 + 40);
  if (*(a1 + 112) != 1)
  {
    goto LABEL_29;
  }

  sub_10000801C(v17);
  if (qword_100B512C8 != -1)
  {
    sub_10084705C();
  }

  if (sub_10000EE78(off_100B512C0))
  {
    v15 = *(a2 + 128);
    v16 = *(a2 + 132);
    *uu = 0;
    v21 = 0;
    if (qword_100B508D0 != -1)
    {
      sub_100846F34();
    }

    sub_1000CC438(off_100B508C8, &v15, uu);
    if (!uuid_is_null(uu))
    {
      if (qword_100B508D0 != -1)
      {
        sub_100846F34();
      }

      v4 = off_100B508C8;
      v5 = sub_10004DF60(uu);
      sub_100007E30(__p, "_CTKD_");
      v6 = sub_10004EB40(v4, v5, __p);
      if (v14 < 0)
      {
        operator delete(__p[0]);
      }

      if (v6)
      {
        if (qword_100B508B0 != -1)
        {
          sub_10084736C();
        }

        if (sub_100050290(off_100B508A8, uu))
        {
          v7 = qword_100BCE8D8;
          if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
          {
            memset(out, 0, 37);
            uuid_unparse_upper(uu, out);
            sub_100007E30(v11, out);
            v8 = v12 >= 0 ? v11 : v11[0];
            *buf = 136315138;
            v19 = v8;
            _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "LE device %s is connected, forcing disconnection", buf, 0xCu);
            if (v12 < 0)
            {
              operator delete(v11[0]);
            }
          }

          if (qword_100B508B0 != -1)
          {
            sub_10084736C();
          }

          if (sub_10074CD90(off_100B508A8, uu, 4) && os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
          {
            sub_100847418();
          }
        }
      }
    }

    v9 = 0;
  }

  else
  {
LABEL_29:
    v9 = 202;
  }

  sub_1000088CC(v17);
  return v9;
}

void sub_100596BF0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 104);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100596C64;
  v3[3] = &unk_100AE0860;
  v3[4] = a1;
  v3[5] = a2;
  sub_10000CA94(v2, v3);
}

void sub_100596C64(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (qword_100B508F0 != -1)
  {
    sub_10084748C();
  }

  v3 = sub_1000504C8(off_100B508E8, *(a1 + 40), 1);
  if (v3)
  {
    v4 = v3;
    if (sub_1000C0348(v3))
    {
      v5 = qword_100BCE8D8;
      if (!os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      LODWORD(__p.__r_.__value_.__l.__data_) = 67109120;
      HIDWORD(__p.__r_.__value_.__r.__words[0]) = sub_1000E077C(v2, v4);
      v6 = "CTKD le device connected, not bridging classic services because services %x is already connected";
      v7 = v5;
      v8 = 8;
LABEL_16:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v6, &__p, v8);
      return;
    }

    if (qword_100B50910 != -1)
    {
      sub_1008474A0();
    }

    if ((*(off_100B50908 + 206) & 1) != 0 || (*(off_100B50908 + 205) & 1) != 0 || *(off_100B50908 + 207) == 1)
    {
      v9 = qword_100BCE8D8;
      if (!os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      LOWORD(__p.__r_.__value_.__l.__data_) = 0;
      v6 = "Device is currently streaming, not bridging";
      v7 = v9;
      v8 = 2;
      goto LABEL_16;
    }

    if ((sub_100537920(v4) & 0x19) != 0 || !sub_10053C3E8(v4))
    {
      v10 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(v4, &__p);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        *buf = 136446210;
        v14 = p_p;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "This is a disconnected CTKD device (%{public}s) that connected over LE, bringing up classic audio services as well", buf, 0xCu);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      memset(&__p, 0, sizeof(__p));
      sub_10059234C(v2, v4, -1048577, &__p, 2);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }

  else if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_1008474B4();
  }
}

void sub_100596EE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100596F04(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, v2 + 40);
  if (*(v2 + 112) == 1)
  {
    v4 = 0;
    sub_1000216B4(&v4);
    sub_10023BD60(*(a1 + 40) + 128);
    sub_100022214(&v4);
    if (*(a1 + 48) == 1)
    {
      sub_10059690C(v2, *(a1 + 40));
    }

    sub_10002249C(&v4);
  }

  return sub_1000088CC(v5);
}

void sub_100596F94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100596FB8(uint64_t a1, uint64_t a2, int a3, _BYTE *a4, _DWORD *a5)
{
  v29 = 0;
  v28 = 0;
  v27[0] = 0;
  v27[1] = 0;
  sub_100007F88(v27, a1 + 120);
  v24 = 0;
  v25 = 0;
  v26 = 0;
  sub_10009C530(&v24, a1 + 184);
  sub_10000801C(v27);
  *a4 = 0;
  v10 = v25;
  if (v25 != &v24)
  {
    v11 = &qword_100BCE8D8;
    do
    {
      v12 = v10[2];
      if ((v12[8] & a3) != 0)
      {
        v29 = 0;
        v28 = 0;
        (*(*v12 + 64))(v12, a2, &v28, &v29);
        *a5 |= v29;
        if (v28 == 1)
        {
          v13 = *v11;
          if (os_log_type_enabled(*v11, OS_LOG_TYPE_DEFAULT))
          {
            v14 = v11;
            (*(*v12 + 192))(v22, v12);
            v15 = v23;
            v16 = v22[0];
            sub_1000E5A58(a2, __p);
            v17 = v22;
            if (v15 < 0)
            {
              v17 = v16;
            }

            v18 = __p;
            if (v21 < 0)
            {
              v18 = __p[0];
            }

            *buf = 136446466;
            v31 = v17;
            v32 = 2082;
            v33 = v18;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}s supports device %{public}s", buf, 0x16u);
            if (v21 < 0)
            {
              operator delete(__p[0]);
            }

            v11 = v14;
            if (v23 < 0)
            {
              operator delete(v22[0]);
            }
          }

          *a4 = 1;
        }
      }

      v10 = v10[1];
    }

    while (v10 != &v24);
  }

  sub_100028EB4(&v24);
  return sub_1000088CC(v27);
}

void sub_100597200(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  sub_100028EB4(&a20);
  sub_1000088CC(&a23);
  _Unwind_Resume(a1);
}

uint64_t sub_10059724C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v16[0] = 0;
  v16[1] = 0;
  sub_100007F88(v16, a1 + 120);
  v13 = 0;
  v14 = 0;
  v15 = 0;
  sub_10009C530(&v13, a1 + 184);
  sub_10000801C(v16);
  for (i = v14; i != &v13; i = i[1])
  {
    v11 = i[2];
    if ((v11[8] & a3) != 0)
    {
      (*(*v11 + 208))(v11, a2, a4, a5);
    }
  }

  sub_100028EB4(&v13);
  sub_1000088CC(v16);
  return 0;
}

void sub_10059732C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_100028EB4(va);
  sub_1000088CC(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_100597354(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v17[0] = 0;
  v17[1] = 0;
  sub_100007F88(v17, a1 + 120);
  v14 = 0;
  v15 = 0;
  v16 = 0;
  sub_10009C530(&v14, a1 + 184);
  sub_10000801C(v17);
  for (i = v15; ; i = i[1])
  {
    if (i == &v14)
    {
      v12 = 1;
      goto LABEL_7;
    }

    v11 = i[2];
    if (v11[8] == a3)
    {
      break;
    }
  }

  v12 = (*(*v11 + 216))(v11, a2, a4, a5);
LABEL_7:
  sub_100028EB4(&v14);
  sub_1000088CC(v17);
  return v12;
}

void sub_100597440(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_100028EB4(va);
  sub_1000088CC(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_100597468(uint64_t a1, uint64_t a2, int a3, char *a4, size_t a5)
{
  v20[0] = 0;
  v20[1] = 0;
  sub_100007F88(v20, a1 + 120);
  v17 = 0;
  v18 = 0;
  v19 = 0;
  sub_10009C530(&v17, a1 + 184);
  sub_10000801C(v20);
  for (i = v18; ; i = i[1])
  {
    if (i == &v17)
    {
      goto LABEL_8;
    }

    v11 = i[2];
    if (v11[8] == a3)
    {
      break;
    }
  }

  v12 = (*(*v11 + 184))(v11, a2);
  v13 = v12;
  if (!v12)
  {
LABEL_8:
    v15 = 800;
    goto LABEL_9;
  }

  v14 = [v12 UTF8String];
  if (strlen(v14) >= a5)
  {
    v15 = 5;
  }

  else
  {
    strlcpy(a4, v14, a5);
    v15 = 0;
  }

LABEL_9:
  sub_100028EB4(&v17);
  sub_1000088CC(v20);
  return v15;
}

void sub_100597590(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);

  sub_100028EB4(va);
  sub_1000088CC(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_1005975C4(uint64_t a1)
{
  v8[0] = 0;
  v8[1] = 0;
  sub_100007F88(v8, a1 + 120);
  v5 = 0;
  v6 = 0;
  v7 = 0;
  sub_10009C530(&v5, a1 + 184);
  sub_10000801C(v8);
  v2 = v6;
  v3 = 1;
  while (v2 != &v5)
  {
    v3 = v3 & (*(**(v2 + 16) + 224))(*(v2 + 16));
    v2 = *(v2 + 8);
  }

  sub_100028EB4(&v5);
  sub_1000088CC(v8);
  return v3;
}

void sub_10059767C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_100028EB4(va);
  sub_1000088CC(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_1005976AC(uint64_t a1)
{
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 120);
  v4 = 0;
  v5 = 0;
  v6 = 0;
  sub_10009C530(&v4, a1 + 184);
  sub_10000801C(v7);
  for (i = v5; i != &v4; i = *(i + 8))
  {
    (*(**(i + 16) + 232))(*(i + 16));
  }

  *(a1 + 113) = 1;
  sub_100028EB4(&v4);
  return sub_1000088CC(v7);
}

void sub_100597760(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_100028EB4(va);
  sub_1000088CC(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_1005977A0(_DWORD *a1)
{
  v28 = 0;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  *__p = 0u;
  v17 = 0u;
  v14 = 0u;
  memset(v15, 0, sizeof(v15));
  v13 = 0u;
  sub_100007AD0(&v13);
  v2 = 1;
  do
  {
    LODWORD(v11[0]) = *a1 & v2;
    if (LODWORD(v11[0]))
    {
      v3 = sub_100007774(&v14, "", 1);
      v4 = sub_1005948F8(v11);
      v5 = v4;
      v6 = strlen(v4);
      v7 = sub_100007774(v3, v5, v6);
      sub_100007774(v7, " ", 2);
    }

    v2 *= 2;
  }

  while ((v2 & 0x80000000) == 0);
  std::stringbuf::str();
  if (v12 < 0)
  {
    v8 = v11[1];
    operator delete(v11[0]);
    if (v8)
    {
      goto LABEL_10;
    }
  }

  else if (v12)
  {
    goto LABEL_10;
  }

  sub_100007774(&v14, "None", 4);
LABEL_10:
  std::stringbuf::str();
  *&v14 = v9;
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p[1]);
  }

  std::locale::~locale(v15);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_100597A08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  std::ios::~ios();
  _Unwind_Resume(a1);
}

const char *sub_100597A38(int *a1)
{
  v1 = *a1;
  if (*a1 > 1023)
  {
    if (v1 < 0x8000)
    {
      if (v1 <= 4095)
      {
        if (v1 == 1024)
        {
          return "BT_SERVICE_PASSTHROUGH";
        }

        if (v1 == 2048)
        {
          return "BT_SERVICE_GAMING";
        }
      }

      else
      {
        switch(v1)
        {
          case 0x1000:
            return "BT_SERVICE_NETWORK_CONSUMER";
          case 0x2000:
            return "BT_SERVICE_BRAILLE";
          case 0x4000:
            return "BT_SERVICE_PASSIVE_MULTI_STREAM";
        }
      }
    }

    else if (v1 >= 0x40000)
    {
      switch(v1)
      {
        case 0x40000:
          return "BT_SERVICE_WIRELESS_CARPLAY";
        case 0x80000:
          return "BT_SERVICE_AACP";
        case 0x100000:
          return "BT_SERVICE_GATT";
      }
    }

    else
    {
      switch(v1)
      {
        case 0x8000:
          return "BT_SERVICE_LE_GATT_CLIENT";
        case 0x10000:
          return "BT_SERVICE_LEA";
        case 0x20000:
          return "BT_SERVICE_WIRELESS_IAP_SINK";
      }
    }
  }

  else if (v1 <= 15)
  {
    if (v1 <= 0)
    {
      if (v1 == -1)
      {
        return "BT_SERVICE_ALL";
      }

      if (!v1)
      {
        return "BT_SERVICE_NONE";
      }
    }

    else
    {
      switch(v1)
      {
        case 1:
          return "BT_SERVICE_HANDSFREE";
        case 2:
          return "BT_SERVICE_PHONEBOOK";
        case 8:
          return "BT_SERVICE_REMOTE";
      }
    }
  }

  else if (v1 > 127)
  {
    switch(v1)
    {
      case 128:
        return "BT_SERVICE_WIRELESS_IAP";
      case 256:
        return "BT_SERVICE_NET_SHARING";
      case 512:
        return "BT_SERVICE_MAP";
    }
  }

  else
  {
    switch(v1)
    {
      case 16:
        return "BT_SERVICE_A2DP";
      case 32:
        return "BT_SERVICE_HID";
      case 64:
        return "BT_SERVICE_SENSOR";
    }
  }

  return "Unknown";
}

const char *sub_100597C30(int *a1)
{
  v1 = *a1;
  if (*a1 <= 300)
  {
    if (v1 > 101)
    {
      if (v1 <= 110)
      {
        if (v1 == 102)
        {
          return "BT_SERVICE_HANDSFREE_AUDIO_DISCONNECTED";
        }

        if (v1 == 110)
        {
          return "BT_SERVICE_A2DP_LOW_LATENCY_ON";
        }
      }

      else
      {
        switch(v1)
        {
          case 111:
            return "BT_SERVICE_A2DP_LOW_LATENCY_OFF";
          case 201:
            return "BT_SERVICE_A2DP_AUDIO_CONNECTED";
          case 202:
            return "BT_SERVICE_A2DP_AUDIO_DISCONNECTED";
        }
      }
    }

    else if (v1 <= 10)
    {
      if (v1 == 1)
      {
        return "BT_SERVICE_CONNECTION_ATTEMPT";
      }

      if (v1 == 2)
      {
        return "BT_SERVICE_DISCONNECTION_ATTEMPT";
      }
    }

    else
    {
      switch(v1)
      {
        case 11:
          return "BT_SERVICE_CONNECTION_RESULT";
        case 12:
          return "BT_SERVICE_DISCONNECTION_RESULT";
        case 101:
          return "BT_SERVICE_HANDSFREE_AUDIO_CONNECTED";
      }
    }

    return "Unknown";
  }

  if (v1 <= 700)
  {
    if (v1 <= 500)
    {
      if (v1 == 301)
      {
        return "BT_SERVICE_PHONE_BOOK_SEND_INITIATED";
      }

      if (v1 == 302)
      {
        return "BT_SERVICE_PHONE_BOOK_SEND_COMPLETE";
      }
    }

    else
    {
      switch(v1)
      {
        case 501:
          return "BT_SERVICE_REMOTE_PLAY";
        case 502:
          return "BT_SERVICE_REMOTE_PAUSE";
        case 601:
          return "BT_SERVICE_SENSOR_RSSI";
      }
    }

    return "Unknown";
  }

  if (v1 > 702)
  {
    switch(v1)
    {
      case 703:
        return "BT_SERVICE_HIGH_POWER_DISABLED";
      case 901:
        return "BT_UI_INITIATED_CONNECTION_REQUEST";
      case 902:
        return "BT_CONNECTION_RESULT_PROCESSED";
    }

    return "Unknown";
  }

  if (v1 == 701)
  {
    return "BT_SERVICE_LMP_NAME_CHANGED";
  }

  else
  {
    return "BT_SERVICE_HIGH_POWER_ENABLED";
  }
}

void sub_100597E08(uint64_t a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: ------------------ Service Manager ------------------", buf, 2u);
    v2 = qword_100BCE8D8;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: Supported services:", buf, 2u);
    v2 = qword_100BCE8D8;
  }

  for (i = *(a1 + 192); i != a1 + 184; i = *(i + 8))
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(*(i + 16) + 32);
      v4 = sub_1005948F8(&v9);
      *buf = 136446210;
      v11 = v4;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump:    %{public}s", buf, 0xCu);
      v2 = qword_100BCE8D8;
    }
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: Services pending stop:", buf, 2u);
  }

  v5 = a1 + 608;
  v6 = *(a1 + 616);
  if (v6 != a1 + 608)
  {
    v7 = qword_100BCE8D8;
    do
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(*(v6 + 16) + 32);
        v8 = sub_1005948F8(&v9);
        *buf = 136446210;
        v11 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "statedump:    %{public}s", buf, 0xCu);
        v7 = qword_100BCE8D8;
      }

      v6 = *(v6 + 8);
    }

    while (v6 != v5);
  }
}

uint64_t sub_100598044(uint64_t a1, uint64_t a2)
{
  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, a1 + 120);
  v6 = 0;
  v7 = 0;
  v8 = 0;
  sub_10009C530(&v6, a1 + 184);
  sub_10000801C(v9);
  for (i = v7; i != &v6; i = *(i + 8))
  {
    (*(**(i + 16) + 40))(*(i + 16), a2);
  }

  sub_100028EB4(&v6);
  return sub_1000088CC(v9);
}

void sub_1005980F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_100028EB4(va);
  sub_1000088CC(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_100598120(uint64_t a1, char *a2, _WORD *a3)
{
  v14[0] = 0;
  v14[1] = 0;
  sub_100007F88(v14, a1 + 120);
  *&__len[1] = 0;
  v12 = 0;
  v13 = 0;
  sub_10009C530(&__len[1], a1 + 184);
  sub_10000801C(v14);
  *a3 = 0;
  v6 = v12;
  if (v12 == &__len[1])
  {
    goto LABEL_9;
  }

  while (1)
  {
    memset(v23, 0, sizeof(v23));
    __len[0] = 0;
    (*(**(v6 + 2) + 200))(*(v6 + 2), v23, __len);
    v7 = __len[0];
    if (__len[0])
    {
      break;
    }

LABEL_5:
    v6 = *(v6 + 1);
    if (v6 == &__len[1])
    {
      goto LABEL_9;
    }
  }

  v8 = *a3;
  if (v8 + __len[0] <= 8)
  {
    memmove(&a2[*a3], a2, __len[0]);
    *a3 += v7;
    goto LABEL_5;
  }

  v9 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109888;
    v16 = v7;
    v17 = 1024;
    v18 = v8;
    v19 = 1024;
    v20 = v8 + v7;
    v21 = 2048;
    v22 = 8;
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "EIR data length: %d + data length: %d = %d > %lu", buf, 0x1Eu);
  }

LABEL_9:
  sub_100028EB4(&__len[1]);
  sub_1000088CC(v14);
  return 1;
}

void sub_100598304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_100028EB4(va);
  sub_1000088CC(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_100598334(uint64_t a1, uint64_t a2)
{
  v2 = sub_10000C798(a1, a2);
  if (!(*(*v2 + 56))(v2, 2048))
  {
    return 1;
  }

  if (qword_100B54970 != -1)
  {
    sub_1008474F4();
  }

  v3 = *(*off_100B54968 + 240);

  return v3();
}

uint64_t sub_1005983D4(int64x2_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_100847508(a2, v6);
  }

  if (qword_100B50F68 != -1)
  {
    sub_100846F0C();
  }

  v7 = sub_10053066C(off_100B50F60, a2);
  if (a3 && v7 && *v7 == 3)
  {
    if (qword_100B50F68 != -1)
    {
      sub_100846F0C();
    }

    sub_100530C74(off_100B50F60, a2, a3);
    v8 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Removed device tracking for fast connect after SDP", v10, 2u);
    }
  }

  sub_100590978(a1, a2, 0, 0, 11, a3, 0);
  return sub_100591550(a1, a2);
}

uint64_t sub_100598508(uint64_t a1)
{
  *(*(a1 + 32) + 114) = 1;
  v37 = 0;
  v38 = 0;
  sub_1000C2364(*(a1 + 40), &v38 + 1, &v38, &v37 + 1, &v37);
  v36 = 0;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  *v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  memset(v23, 0, sizeof(v23));
  sub_100008760(&v22);
  v2 = sub_100007774(&v22, "VID:", 4);
  std::to_string(&v21, v38);
  if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v3 = &v21;
  }

  else
  {
    LODWORD(v3) = v21.__r_.__value_.__l.__data_;
  }

  if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v4 = HIBYTE(v21.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v4 = v21.__r_.__value_.__r.__words[1];
  }

  v5 = sub_100007774(v2, v3, v4);
  v6 = sub_100007774(v5, " PID:", 5);
  std::to_string(&__p, HIDWORD(v37));
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    LODWORD(p_p) = __p.__r_.__value_.__l.__data_;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v8 = __p.__r_.__value_.__r.__words[1];
  }

  v9 = sub_100007774(v6, p_p, v8);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  v11 = sub_10000F034(v9, v10);
  (*(*v11 + 824))(v11, 0, v38, HIDWORD(v37));
  v12 = sub_10000E92C();
  if ((*(*v12 + 8))(v12))
  {
    if (qword_100B53FE8 != -1)
    {
      sub_1008475BC();
    }

    v13 = qword_100B53FE0;
    sub_100007E30(&v21, "Service Manager Stall");
    std::stringbuf::str();
    sub_1005780BC(v13, &v21.__r_.__value_.__l.__data_, &__p.__r_.__value_.__l.__data_, 0.0);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }

    if (qword_100B53FE8 != -1)
    {
      sub_1008475BC();
    }

    sub_100578CA8(qword_100B53FE0, 3);
    v14 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5A58(*(a1 + 40), &v21);
      v16 = SHIBYTE(v21.__r_.__value_.__r.__words[2]);
      v17 = v21.__r_.__value_.__r.__words[0];
      std::stringbuf::str();
      v18 = &v21;
      if (v16 < 0)
      {
        v18 = v17;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v19 = &__p;
      }

      else
      {
        v19 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 136446466;
      v40 = v18;
      v41 = 2080;
      v42 = v19;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Service Manager Stalled due to %{public}s. Triggering ABC for %s", buf, 0x16u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v21.__r_.__value_.__l.__data_);
      }
    }
  }

  if (SHIBYTE(v25) < 0)
  {
    operator delete(v24[1]);
  }

  std::locale::~locale(v23);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_100598924(_Unwind_Exception *a1, void *a2, uint64_t a3, int a4, __int16 a5, char a6, char a7, void *__p, void *a9, int a10, __int16 a11, char a12, char a13, char a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  if (SHIBYTE(a17) < 0)
  {
    operator delete(a15);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1005989B8(void *a1)
{
  result = sub_100598A60(a1, a1[2]);
  if (result)
  {
    v3 = a1[2];
    v4 = a1[3];
    v5 = a1[4];
    v6 = *(*a1 + 40);

    return v6(a1, v3, v4, v5);
  }

  return result;
}

BOOL sub_100598A60(uint64_t a1, unint64_t a2)
{
  if (qword_100B50B88 != -1)
  {
    sub_100846DF0();
  }

  v3 = qword_100B50B80;

  return sub_100618944(v3, a2);
}

uint64_t sub_10059926C(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_1005992C4(a1, a2);
  }

  else
  {
    *v3 = *a2;
    *(v3 + 16) = *(a2 + 16);
    *(v3 + 24) = *(a2 + 24);
    result = v3 + 32;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_1005992C4(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_1000C7698();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v15 = a1;
  if (v7)
  {
    sub_100362AB0(a1, v7);
  }

  v8 = 32 * v2;
  __p = 0;
  v12 = v8;
  v14 = 0;
  *v8 = *a2;
  *(v8 + 16) = *(a2 + 16);
  *(v8 + 24) = *(a2 + 24);
  v13 = 32 * v2 + 32;
  sub_1005993F8(a1, &__p);
  v9 = a1[1];
  if (v13 != v12)
  {
    v13 += (v12 - v13 + 31) & 0xFFFFFFFFFFFFFFE0;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v9;
}

void sub_1005993C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1005993F8(uint64_t *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = *result;
    v6 = a2[1] + *result - v3;
    do
    {
      *v6 = *v5;
      *(v6 + 16) = *(v5 + 16);
      *(v6 + 24) = *(v5 + 24);
      v5 += 32;
      v6 += 32;
    }

    while (v5 != v3);
  }

  a2[1] = v4;
  v7 = *result;
  *result = v4;
  result[1] = v2;
  a2[1] = v7;
  v8 = result[1];
  result[1] = a2[2];
  a2[2] = v8;
  v9 = result[2];
  result[2] = a2[3];
  a2[3] = v9;
  *a2 = a2[1];
  return result;
}

uint64_t sub_10059947C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = a2;
  if (a1 != a2)
  {
    result = a1;
    while (*result != a3 || a4 != *(result + 8))
    {
      result += 32;
      if (result == a2)
      {
        result = a2;
        break;
      }
    }

    if (result != a2)
    {
      for (i = result + 32; i != a2; i += 32)
      {
        if (*i != a3 || a4 != *(i + 8))
        {
          v7 = *(i + 8);
          *result = *i;
          *(result + 8) = v7;
          *(result + 16) = *(i + 16);
          *(result + 24) = *(i + 24);
          result += 32;
        }
      }
    }
  }

  return result;
}

void sub_100599B48()
{
  v0 = objc_autoreleasePoolPush();
  sub_100007E30(v2, "com.apple.springboard");
  sub_100007E30(v3, "com.apple.Preferences");
  sub_100007E30(v4, "com.apple.preferences");
  sub_100007E30(v5, "com.apple.figEndpoint");
  sub_100007E30(v6, "SFBluetoothPairingSession");
  sub_100007E30(v7, "com.apple.NanoSettings");
  sub_100007E30(v8, "com.apple.NanoMusic");
  sub_1000C1030(&qword_100BCE6F0, v2, 7);
  for (i = 0; i != -21; i -= 3)
  {
    if (SHIBYTE(v8[i + 2]) < 0)
    {
      operator delete(v8[i]);
    }
  }

  __cxa_atexit(sub_10058E5F0, &qword_100BCE6F0, &_mh_execute_header);
  objc_autoreleasePoolPop(v0);
}

void sub_100599CAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  v13 = (v11 + 167);
  v14 = -168;
  v15 = v13;
  while (1)
  {
    v16 = *v15;
    v15 -= 24;
    if (v16 < 0)
    {
      operator delete(*(v13 - 23));
    }

    v13 = v15;
    v14 += 24;
    if (!v14)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

uint64_t sub_100599D10(uint64_t a1)
{
  *a1 = off_100AFEA48;
  *(a1 + 8) = &off_100AFEAE0;
  *(a1 + 16) = off_100AFEAF8;
  *(a1 + 24) = &off_100AFEB28;
  *(a1 + 32) = &off_100AFEB40;
  *(a1 + 40) = &off_100AFEB58;
  *(a1 + 48) = &off_100AFEB70;
  *(a1 + 56) = 0;
  *(a1 + 60) = 0;
  *(a1 + 72) = 0;
  *(a1 + 104) = 0;
  *(a1 + 64) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 128) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  sub_100044BBC((a1 + 160));
  *(a1 + 231) = 0;
  *(a1 + 234) = 0;
  *(a1 + 224) = 0;
  *(a1 + 228) = 0;
  sub_100044BBC((a1 + 240));
  *(a1 + 308) = 0;
  *(a1 + 304) = 0;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 312) = 0;
  *(a1 + 384) = 0xFFFF;
  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  *(a1 + 392) = 0;
  sub_100044BBC((a1 + 424));
  *(a1 + 496) = 0;
  sub_100044BBC((a1 + 504));
  *(a1 + 572) = 0;
  *(a1 + 584) = 0u;
  *(a1 + 576) = a1 + 584;
  if (qword_100B50910 != -1)
  {
    sub_1008475E4();
  }

  *(a1 + 235) = sub_1005BC880() != 0.0;
  return a1;
}

void sub_100599EF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  v7 = v4;
  sub_1005AC6F0(v3 + 576, *v7);
  sub_10007A068(v3 + 504);

  sub_10007A068(v3 + 424);
  if (*(v3 + 415) < 0)
  {
    operator delete(*(v3 + 392));
  }

  if (*(v3 + 335) < 0)
  {
    operator delete(*(v3 + 312));
  }

  sub_10007A068(v3 + 240);
  sub_10007A068(v3 + 160);
  v9 = *v6;
  if (*v6)
  {
    *(v3 + 144) = v9;
    operator delete(v9);
  }

  sub_1005AAD6C(va);
  v10 = *v5;
  if (*v5)
  {
    *(v3 + 80) = v10;
    operator delete(v10);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100599FAC(uint64_t a1)
{
  *(a1 + 416) = 0;
  *(a1 + 416) = sub_10059A02C(a1);
  *(a1 + 488) = 0;
  *(a1 + 488) = sub_10059A098(a1);
  *(a1 + 568) = 0;
  v2 = *sub_10000E92C();
  result = (*(v2 + 664))();
  *(a1 + 234) = result;
  return result;
}

uint64_t sub_10059A02C(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1 + 424);
  v2 = *(a1 + 416);
  if (!*(a1 + 416))
  {
    v2 = sub_1005A5EB0(a1);
  }

  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_10059A098(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1 + 424);
  v2 = *(a1 + 488);
  if (!*(a1 + 488))
  {
    v2 = sub_1005A5CD8(a1);
  }

  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_10059A104(uint64_t a1)
{
  if (qword_100B50910 != -1)
  {
    sub_1008475E4();
  }

  return *(off_100B50908 + 210);
}

void sub_10059A13C(uint64_t result, uint64_t a2)
{
  if (qword_100B6F0E8 != -1)
  {
    sub_1008475F8();
  }
}

void sub_10059A168(id a1)
{
  v2 = sub_10009B9DC(a1, v1);
  if (v2 == 7)
  {
    v4 = sub_100184828(sub_10059A4B4, sub_10059A650, sub_10059A8B8);
    v5 = sub_10000E92C();
    v6 = v5;
    if ((v4 & 1) == 0)
    {
      sub_100007E30(v22, "StackManager::initTransport");
      sub_100693260(v6, 3713, v22, 1);
    }

    (*(*v5 + 496))(v5, 0);
    if ((sub_100184A44(sub_10059A974, v7) & 1) == 0)
    {
      v8 = sub_10000E92C();
      sub_100007E30(v21, "StackManager::initTransport");
      sub_100693260(v8, 3714, v21, 1);
    }
  }

  else
  {
    v9 = sub_10009B9DC(v2, v3);
    if (v9 == 8)
    {
      if ((sub_1001863E4(sub_10059A4B4, sub_10059A650) & 1) == 0)
      {
        v15 = sub_10000E92C();
        sub_100007E30(v20, "StackManager::initTransport");
        sub_100693260(v15, 3713, v20, 1);
      }

      v11 = sub_100186790(sub_10059A974);
      v12 = sub_10000E92C();
      if ((v11 & 1) == 0)
      {
        sub_100007E30(v19, "StackManager::initTransport");
        sub_100693260(v12, 3714, v19, 1);
      }
    }

    else
    {
      if (sub_10009B9DC(v9, v10) != 9)
      {
        return;
      }

      if ((sub_1001A5DEC(sub_10059AA94, sub_10059A104) & 1) == 0)
      {
        v16 = sub_10000E92C();
        sub_100007E30(v18, "StackManager::initTransport");
        sub_100693260(v16, 3713, v18, 1);
      }

      v13 = sub_1001A61FC(sub_10059A974);
      v12 = sub_10000E92C();
      if ((v13 & 1) == 0)
      {
        sub_100007E30(&v17, "StackManager::initTransport");
        sub_100693260(v12, 3714, &v17, 1);
      }
    }

    v14 = *(*v12 + 496);

    v14(v12, 0);
  }
}

void sub_10059A430(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

void sub_10059A4B4(uint64_t __s2, uint64_t a2)
{
  v2 = a2;
  v3 = __s2;
  if (__s2)
  {
    v4 = 13;
    __s2 = strncmp("Driver Error", __s2, 0xDuLL);
    v5 = 1219;
    if (__s2)
    {
      __s2 = strncmp("Driver Terminated", v3, 0x12uLL);
      if (__s2)
      {
        v4 = 8;
      }

      else
      {
        v4 = 25;
      }

      if (__s2)
      {
        v5 = 1214;
      }

      else
      {
        v5 = 1219;
      }
    }
  }

  else
  {
    v5 = 1214;
    v4 = 8;
  }

  if (v2)
  {
    if (qword_100B50AA0 != -1)
    {
      sub_10084760C();
    }

    v9 = off_100B50A98;
    sub_100007E30(v12, v3);
    sub_100007E30(__p, "");
    sub_1005A24D4(v9, v5, v12, 1, v4, 0, __p);
  }

  v6 = sub_10000F034(__s2, a2);
  if (v6)
  {
    v8 = sub_10000F034(v6, v7);
    sub_100007E30(__p, v3);
    (*(*v8 + 112))(v8, 9, 0, __p);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_10059A608(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_10059A650(char *a1, _BYTE *a2)
{
  if (qword_100B512C8 != -1)
  {
    sub_100847620();
  }

  v4 = sub_10000EE78(off_100B512C0);
  v5 = v4;
  v7 = sub_10000C7D0(v4, v6);
  if (*(v7 + 800) >> 3 >= 0x271u && *(sub_10000C7D0(v7, v8) + 800) >> 4 <= 0x176u)
  {
    v12 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR);
    if (v12)
    {
      sub_10084765C();
    }

    if (qword_100B50AA0 != -1)
    {
      sub_100847634();
    }

    sub_1005A2A5C(v12, 10, 0, a1);
    sub_10022DE3C();
    v13 = sub_10000E92C();
    sub_100007E30(v15, "StackManager::chipResettingCb");
    sub_100693260(v13, 632, v15, 1);
  }

  v9 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = "non-";
    if (v5 == 1)
    {
      v10 = "";
    }

    LODWORD(buf) = 67109378;
    HIDWORD(buf) = v5;
    v17 = 2080;
    v18 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Controller is resetting in power state %d, treating as %sfatal", &buf, 0x12u);
  }

  if (v5 == 1)
  {
    *a2 = 1;
    if (qword_100B50AA0 != -1)
    {
      sub_100847634();
    }

    v11 = off_100B50A98;
    sub_100007E30(&v14, a1);
    sub_100007E30(&buf, "");
    sub_1005A24D4(v11, 1214, &v14, 1, 10, 0, &buf);
  }
}

void sub_10059A864(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_10059A8B8(int a1, uint64_t a2)
{
  v4 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109376;
    v5[1] = a1;
    v6 = 2048;
    v7 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "driverMetricsCb: type %u arg %llu", v5, 0x12u);
  }
}

void sub_10059A974(uint64_t *a1, uint64_t a2)
{
  if (qword_100B6F5F8 != -1)
  {
    sub_1008476DC();
  }

  if (byte_100B6F600 == 1)
  {
    sub_1000040DC(a1);
  }

  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  if (v3)
  {
    v6 = sub_100017F4C(a1, a2);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1005A6CA4;
    v9[3] = &unk_100AEC130;
    v9[4] = v4;
    v9[5] = v3;
    v9[6] = v5;
    sub_10000CA94(v6, v9);
  }

  v7 = sub_100007EE8(a1, a2);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1005A6D4C;
  v8[3] = &unk_100AEC130;
  v8[4] = v4;
  v8[5] = v3;
  v8[6] = v5;
  sub_10000CA94(v7, v8);
}

void sub_10059AA94(char *a1, int a2, int a3, int a4)
{
  if (qword_100B54220 != -1)
  {
    sub_1008476F0();
  }

  v8 = qword_100B54218;
  v9 = [NSString stringWithUTF8String:a1];
  sub_1003C8DC4(v8, v9);

  if (a2)
  {
    if (!a3)
    {
      goto LABEL_18;
    }

    if (qword_100B512D8 != -1)
    {
      sub_10084778C();
    }

    if ((*(off_100B512D0 + 32) & 1) == 0)
    {
LABEL_18:
      if (qword_100B50AA0 != -1)
      {
        sub_10084760C();
      }

      v15 = off_100B50A98;
      sub_100007E30(v18, a1);
      sub_100007E30(__p, "");
      sub_1005A24D4(v15, 1214, v18, 1, 8, 0, __p);
    }

    if (qword_100B50AA0 != -1)
    {
      sub_10084760C();
    }

    sub_1005A2A5C(v10, 8, 0, a1);
  }

  else
  {
    v12 = sub_10000F034(v10, v11);
    if (v12)
    {
      v14 = sub_10000F034(v12, v13);
      sub_100007E30(__p, a1);
      (*(*v14 + 112))(v14, 9, 0, __p);
      if (v17 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (a4)
    {
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_100847704();
      }

      exit(0);
    }
  }
}

void sub_10059AC90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10059ACE4(uint64_t a1, unsigned int a2, int a3)
{
  v6 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 56);
    if (v7 > 3)
    {
      v8 = "Unknown State";
    }

    else
    {
      v8 = off_100AFF040[v7];
    }

    v9 = "StackStopped";
    if (*(a1 + 60))
    {
      v10 = "StackStarted";
    }

    else
    {
      v10 = "StackStopped";
    }

    if (a2 > 3)
    {
      v11 = "Unknown State";
    }

    else
    {
      v11 = off_100AFF040[a2];
    }

    if (a3)
    {
      v9 = "StackStarted";
    }

    v14 = 136446978;
    v15 = v8;
    v16 = 2082;
    v17 = v10;
    v18 = 2082;
    v19 = v11;
    v20 = 2082;
    v21 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Stack: %{public}s/%{public}s -> %{public}s/%{public}s", &v14, 0x2Au);
  }

  *(a1 + 56) = a2;
  if (a2 == 1)
  {
    v12 = a3;
  }

  else
  {
    v12 = 0;
  }

  *(a1 + 60) = v12;
  return 0;
}