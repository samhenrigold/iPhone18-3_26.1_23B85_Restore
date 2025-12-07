void sub_1006DF35C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  sub_100320BE8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1006DF388(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v3 = a3;
  v16[1] = 0;
  v17 = a3;
  v16[0] = 0;
  sub_100007F88(v16, a1 + 280);
  v5 = sub_10056923C((a1 + 344), v3);
  if (v5 && os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
  {
    sub_1000E5A58(v3, v15);
    sub_1008637D0();
  }

  v6 = *(a1 + 512);
  if (!v6)
  {
    goto LABEL_22;
  }

  v7 = a1 + 512;
  do
  {
    v8 = *(v6 + 32);
    v9 = v8 >= v3;
    v10 = v8 < v3;
    if (v9)
    {
      v7 = v6;
    }

    v6 = *(v6 + 8 * v10);
  }

  while (v6);
  if (v7 != a1 + 512 && *(v7 + 32) <= v3 && (v11 = *(v7 + 40)) != 0)
  {
    v12 = qword_100BCE940;
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "pairing timedout, rejecting pairing request", v14, 2u);
    }

    sub_100075DC4((a1 + 504), &v17);
    sub_1006DAFD4(a1, v11);
    (*(*v11 + 32))(v11);
    (*(*v11 + 8))(v11);
    v3 = v17;
  }

  else
  {
LABEL_22:
    if (v5 && os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5A58(v3, v14);
      sub_100863824();
    }
  }

  sub_1006DC0D4(a1, v3, 0xA1u);
  return sub_1000088CC(v16);
}

void sub_1006DF594(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1006DF5BC(uint64_t a1)
{
  v14[0] = 0;
  v14[1] = 0;
  sub_100007F88(v14, a1 + 208);
  v2 = qword_100BCE940;
  if (*(a1 + 272))
  {
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Cancelling all currently pending pairing attempts", buf, 2u);
    }

    v13[0] = 0;
    v13[1] = 0;
    sub_100007F88(v13, a1 + 280);
    *buf = 0;
    v11 = 0;
    v12 = 0;
    sub_100007F20(buf, (a1 + 344));
    *(a1 + 352) = *(a1 + 344);
    sub_10000801C(v13);
    sub_10000801C(v14);
    v3 = *buf;
    if (*buf != v11)
    {
      do
      {
        v9 = *v3;
        sub_100007FB8(v13);
        *v15 = &v9;
        v4 = sub_10005E16C(a1 + 504, &v9, &unk_1008A9BD0, v15)[5];
        if (v4)
        {
          v5 = qword_100BCE940;
          if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
          {
            *v15 = 0;
            _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Pairing cancelled, rejecting pairing request", v15, 2u);
          }

          (*(*v4 + 32))(v4);
        }

        sub_10000801C(v13);
        sub_1006DF814(v6, v9);
        sub_1006DC0D4(a1, v9, 0xA1u);
        ++v3;
      }

      while (v3 != v11);
      v3 = *buf;
    }

    if (v3)
    {
      v11 = v3;
      operator delete(v3);
    }

    sub_1000088CC(v13);
    v7 = 0;
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
    {
      sub_100863878();
    }

    v7 = 1;
  }

  sub_1000088CC(v14);
  return v7;
}

void sub_1006DF7D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_1000088CC(&a14);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

BOOL sub_1006DF814(uint64_t a1, uint64_t a2)
{
  v3 = qword_100BCE940;
  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a2, __p);
    if (v8 >= 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = __p[0];
    }

    *buf = 136446210;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Blocking pairing for device %{public}s", buf, 0xCu);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }

  LOBYTE(__p[0]) = 0;
  sub_1000216B4(__p);
  v5 = sub_1002FCC44(a2 + 128, 1) != 0;
  sub_10002249C(__p);
  return v5;
}

void sub_1006DF91C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10002249C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1006DF938(uint64_t a1, unint64_t a2, __n128 *a3)
{
  v6 = qword_100BCE940;
  v7 = os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    sub_1006E5FB4(v20, a3);
    v8 = SBYTE7(v21);
    v9 = v20[0];
    sub_1000E5A58(a2, __p);
    v10 = v20;
    if (v8 < 0)
    {
      v10 = v9;
    }

    if (v26 >= 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = __p[0];
    }

    *buf = 136315394;
    *&buf[4] = v10;
    *&buf[12] = 2082;
    *&buf[14] = v11;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Setting pincode %s for device %{public}s", buf, 0x16u);
    if (v26 < 0)
    {
      operator delete(__p[0]);
    }

    if (SBYTE7(v21) < 0)
    {
      operator delete(v20[0]);
    }
  }

  if (sub_1006DCB34(v7, a2))
  {
    return 0;
  }

  *buf = 0;
  *&buf[8] = 0;
  sub_100007F88(buf, a1 + 208);
  if (*(a1 + 272) == 1)
  {
    if (sub_1006E5FAC(a3) > 3)
    {
      __p[0] = 0;
      __p[1] = 0;
      sub_100007F88(__p, a1 + 280);
      if (sub_1000E69B8(a1 + 344, a2))
      {
        sub_10000801C(__p);
        v15 = *(a1 + 112);
        if (v15)
        {
          sub_1006D8D44(v15, a2, a3);
          sub_1006D8E0C(v15, a2, a3->n128_u64);
        }

        v24 = 0;
        v22 = 0u;
        v23 = 0u;
        *v20 = 0u;
        v21 = 0u;
        sub_1006E6AE0(v20, a2, 0);
        v16 = sub_10053E610(a2);
        if (v16 && (v18 = sub_1000E2738(v16, v17), v12 = (*(*v18 + 16))(v18, a2, a3), v12))
        {
          sub_1006E6C48(v20);
        }

        else
        {
          sub_1006E6BA8(v20, a3);
          v12 = 0;
        }

        sub_1006E6AE4(v20);
      }

      else
      {
        v12 = 0;
      }

      sub_1000088CC(__p);
    }

    else
    {
      v24 = 0;
      v22 = 0u;
      v23 = 0u;
      *v20 = 0u;
      v21 = 0u;
      sub_1006E6AE0(v20, a2, 0);
      v13 = qword_100BCE940;
      if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
      {
        v14 = sub_1006E5FAC(a3);
        sub_1008638AC(__p, v14, v13);
      }

      sub_1006E6C48(v20);
      sub_1006E6AE4(v20);
      v12 = 159;
    }
  }

  else
  {
    v12 = 0;
  }

  sub_1000088CC(buf);
  return v12;
}

void sub_1006DFC0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  sub_1000088CC(&a22);
  sub_1000088CC(v22 - 96);
  _Unwind_Resume(a1);
}

uint64_t sub_1006DFC84(uint64_t a1, uint64_t a2, int a3)
{
  v15[1] = 0;
  v16 = a2;
  v15[0] = 0;
  sub_100007F88(v15, a1 + 280);
  if (sub_1000E69B8(a1 + 344, a2))
  {
    __p[0] = &v16;
    v6 = sub_10005E16C(a1 + 504, &v16, &unk_1008A9BD0, __p)[5];
    sub_1006DAFD4(a1, v6);
    sub_100075DC4((a1 + 504), &v16);
    sub_10000801C(v15);
    if (v6)
    {
      v7 = qword_100BCE940;
      v8 = os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT);
      if (a3)
      {
        if (v8)
        {
          sub_1000E5A58(v16, __p);
          if (v14 >= 0)
          {
            v9 = __p;
          }

          else
          {
            v9 = __p[0];
          }

          *buf = 136446210;
          v18 = v9;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Rejecting SSP request for device %{public}s", buf, 0xCu);
          if (v14 < 0)
          {
            operator delete(__p[0]);
          }
        }

        (*(*v6 + 32))(v6);
      }

      else
      {
        if (v8)
        {
          sub_1000E5A58(v16, __p);
          v11 = v14 >= 0 ? __p : __p[0];
          *buf = 136446210;
          v18 = v11;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Accepting SSP request for device %{public}s", buf, 0xCu);
          if (v14 < 0)
          {
            operator delete(__p[0]);
          }
        }

        (*(*v6 + 40))(v6);
      }

      (*(*v6 + 8))(v6);
      v10 = 0;
    }

    else
    {
      if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
      {
        sub_1000E5A58(v16, __p);
        sub_10086395C();
      }

      v10 = 1;
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5A58(a2, __p);
      sub_100863908();
    }

    v10 = 165;
  }

  sub_1000088CC(v15);
  return v10;
}

void sub_1006DFF48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

BOOL sub_1006DFF78(uint64_t a1, uint64_t a2)
{
  v3 = qword_100BCE940;
  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a2, __p);
    if (v8 >= 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = __p[0];
    }

    *buf = 136446210;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Unblocking pairing for device %{public}s", buf, 0xCu);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }

  LOBYTE(__p[0]) = 0;
  sub_1000216B4(__p);
  v5 = sub_1002FCC44(a2 + 128, 0) != 0;
  sub_10002249C(__p);
  return v5;
}

void sub_1006E0080(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10002249C(va);
  _Unwind_Resume(a1);
}

void sub_1006E009C(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v5 = sub_100017F4C(a1, a2);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3321888768;
  v12[2] = sub_1006E0228;
  v12[3] = &unk_100AF6BE0;
  v12[4] = a2;
  if (*(a3 + 23) < 0)
  {
    sub_100008904(&v13, *a3, *(a3 + 1));
  }

  else
  {
    v13 = *a3;
    v14 = *(a3 + 2);
  }

  sub_10000CA94(v5, v12);
  v8 = sub_100007EE8(v6, v7);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3321888768;
  v9[2] = sub_1006E02A8;
  v9[3] = &unk_100AF6BE0;
  v9[4] = a2;
  if (*(a3 + 23) < 0)
  {
    sub_100008904(__p, *a3, *(a3 + 1));
  }

  else
  {
    *__p = *a3;
    v11 = *(a3 + 2);
  }

  sub_10000CA94(v8, v9);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v14) < 0)
  {
    operator delete(v13);
  }
}

void sub_1006E01F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006E0228(uint64_t a1)
{
  if (qword_100B508F0 != -1)
  {
    sub_1008632A8();
  }

  v2 = sub_1000504C8(off_100B508E8, *(a1 + 32), 1);
  v5 = 0;
  sub_100016250(&v5);
  *&v4 = v5;
  *(&v4 + 1) = SWORD2(v5);
  return sub_100538494(v2, a1 + 40, &v4);
}

void sub_1006E02A8(uint64_t a1)
{
  if (qword_100B508D0 != -1)
  {
    sub_100863A64();
  }

  v5[0] = 0;
  v5[1] = 0;
  sub_1000498D4(off_100B508C8, *(a1 + 32), 1u, 0, 0, 0, v5);
  if (qword_100B508D0 != -1)
  {
    sub_1008635A0();
  }

  v2 = off_100B508C8;
  if (*(a1 + 63) < 0)
  {
    sub_100008904(__p, *(a1 + 40), *(a1 + 48));
  }

  else
  {
    *__p = *(a1 + 40);
    v4 = *(a1 + 56);
  }

  sub_100783194(v2, v5, __p, 2);
  if (SHIBYTE(v4) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1006E03A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006E03CC(uint64_t a1, uint64_t a2, __n128 *a3, uint64_t a4, int a5)
{
  v10 = qword_100BCE940;
  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
  {
    nullsub_21();
    *buf = 141558787;
    *&buf[4] = 1752392040;
    *&buf[12] = 1041;
    *&buf[14] = 16;
    *&buf[18] = 2097;
    *&buf[20] = v11;
    v51 = 1024;
    v52 = sub_1006D1BC8(a3);
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "PairingManager::leDevicePaired LK:%{private, mask.hash}.16P LKype:%d", buf, 0x22u);
  }

  if (qword_100B508F0 != -1)
  {
    sub_100863610();
  }

  v12 = sub_1000504C8(off_100B508E8, a2, 1);
  v43 = 0;
  v42 = 0;
  if (qword_100B50AA0 != -1)
  {
    sub_10086343C();
  }

  sub_10009BE34(off_100B50A98, &v42);
  if ((sub_1000295DC(v12) & 1) == 0)
  {
    sub_1000DEEA4(v12, buf);
    if (buf[23] >= 0)
    {
      v13 = buf[23];
    }

    else
    {
      v13 = *&buf[8];
    }

    if ((buf[23] & 0x8000000000000000) != 0)
    {
      operator delete(*buf);
      if (v13)
      {
        goto LABEL_16;
      }
    }

    else if (v13)
    {
      goto LABEL_16;
    }

    *v44 = 0;
    sub_100016250(v44);
    *buf = *v44;
    *&buf[8] = *&v44[4];
    sub_100538494(v12, a4, buf);
    buf[0] = 0;
    sub_1000216B4(buf);
    sub_10023D3AC(sub_1006E0AF4, (v12 + 128));
    sub_10002249C(buf);
  }

LABEL_16:
  sub_10054E5F0(v12, 1);
  if (a5)
  {
    v14 = qword_100BCE940;
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_INFO))
    {
      sub_1000E5A58(v12, buf);
      v15 = buf[23] >= 0 ? buf : *buf;
      *v44 = 136380931;
      *&v44[4] = v15;
      v45 = 2049;
      v46 = v12;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "le pairing complete device %{private}s(%{private}p) isAppleWatch", v44, 0x16u);
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }

    sub_100550394(v12, 1);
  }

  if (qword_100B512E8 != -1)
  {
    sub_1008632BC();
  }

  sub_1006E7F2C(off_100B512E0, v12, a3, 0);
  v49[0] = 0;
  v49[1] = 0;
  if (qword_100B508D0 != -1)
  {
    sub_1008635A0();
  }

  sub_1000498D4(off_100B508C8, a2, 1u, 0, 0, 0, v49);
  if (qword_100B508D0 != -1)
  {
    sub_1008635A0();
  }

  v16 = off_100B508C8;
  v17 = sub_10004DF60(v49);
  *(sub_10004B1D8(v16, v17) + 161) = 1;

  memset(buf, 0, 24);
  if (qword_100B508D0 != -1)
  {
    sub_1008635A0();
  }

  v18 = off_100B508C8;
  v19 = sub_10004DF60(v49);
  sub_100788FA0(v18, v19, buf);

  v40 = a1;
  v22 = *buf;
  if (*buf != &buf[8])
  {
    do
    {
      v23 = sub_1000BE4B4(v20, v21);
      v24 = v22 + 32;
      v25 = (*(*v23 + 792))(v23, v12, v22 + 32);
      v26 = qword_100BCE940;
      if (v25)
      {
        v20 = os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR);
        if (v20)
        {
          if (v22[55] < 0)
          {
            v24 = *v24;
          }

          sub_1000E5A58(v12, v44);
          if (v47 >= 0)
          {
            v27 = v44;
          }

          else
          {
            v27 = *v44;
          }

          *v48 = 136446466;
          *&v48[4] = v24;
          *&v48[12] = 2082;
          *&v48[14] = v27;
          _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Unable to set tag:%{public}s for valid classicDevice %{public}s after LE device paired", v48, 0x16u);
LABEL_48:
          if (v47 < 0)
          {
            operator delete(*v44);
          }
        }
      }

      else
      {
        v20 = os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT);
        if (v20)
        {
          if (v22[55] < 0)
          {
            v24 = *v24;
          }

          sub_1000E5A58(v12, v44);
          if (v47 >= 0)
          {
            v28 = v44;
          }

          else
          {
            v28 = *v44;
          }

          *v48 = 136446466;
          *&v48[4] = v24;
          *&v48[12] = 2082;
          *&v48[14] = v28;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Set tag:%{public}s for valid classicDevice %{public}s after LE device paired", v48, 0x16u);
          goto LABEL_48;
        }
      }

      v29 = *(v22 + 1);
      if (v29)
      {
        do
        {
          v30 = v29;
          v29 = *v29;
        }

        while (v29);
      }

      else
      {
        do
        {
          v30 = *(v22 + 2);
          v31 = *v30 == v22;
          v22 = v30;
        }

        while (!v31);
      }

      v22 = v30;
    }

    while (v30 != &buf[8]);
  }

  *v48 = 0;
  *&v48[8] = 0;
  sub_100007F88(v48, v40 + 48);
  v32 = *(v40 + 112);
  if (v32)
  {
    sub_1006D78F0(v32, 0);
  }

  if (qword_100B50F68 != -1)
  {
    sub_100863414();
  }

  sub_100530B30(off_100B50F60);
  sub_1006DCDD0(v40, v12, 0);
  v33 = _os_feature_enabled_impl();
  if (v33)
  {
    v41 = 0;
    v35 = sub_1000BE4B4(v33, v34);
    sub_100007E30(v44, "_PENDING_PRIVACY_SYNC_POPUP_");
    v36 = (*(*v35 + 784))(v35, v12, v44, &v41) == 0;
    v37 = v36 & v41;
    if (v47 < 0)
    {
      operator delete(*v44);
      if (!v37)
      {
        goto LABEL_68;
      }
    }

    else if ((v36 & v41) == 0)
    {
      goto LABEL_68;
    }

    v38 = qword_100BCE940;
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
    {
      *v44 = 0;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "_CTKD_ device pending for contacts/favorites sync, popping up dialog", v44, 2u);
    }

    sub_1006E0C0C(v40, v12);
  }

LABEL_68:
  sub_1000088CC(v48);
  sub_10004B61C(buf, *&buf[8]);
  return 0;
}

void sub_1006E0AF4(int a1, unsigned __int8 *a2, char *__s)
{
  if (!a1)
  {
    v3 = *a2;
    v4 = a2[1];
    v5 = a2[2];
    v6 = a2[3];
    v7 = a2[4];
    v8 = a2[5];
    v12[0] = 0;
    v12[1] = 0;
    v13 = 0;
    v9 = sub_100007E30(v12, __s);
    if (qword_100B50F88 != -1)
    {
      sub_1008634D4();
    }

    if (SHIBYTE(v13) < 0)
    {
      v9 = sub_100008904(__p, v12[0], v12[1]);
    }

    else
    {
      *__p = *v12;
      v11 = v13;
    }

    sub_1006E009C(v9, (v3 << 40) | (v4 << 32) | (v5 << 24) | (v6 << 16) | (v7 << 8) | v8, __p);
    if (SHIBYTE(v11) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v13) < 0)
    {
      operator delete(v12[0]);
    }
  }
}

void sub_1006E0BD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006E0C0C(uint64_t a1, uint64_t a2)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v4 = _os_feature_enabled_impl();
  if (v4)
  {
    v6 = sub_100017F4C(v4, v5);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1006E2AB0;
    v9[3] = &unk_100AE0EB8;
    v9[5] = a1;
    v9[6] = a2;
    v9[4] = &v10;
    sub_10000CA94(v6, v9);
  }

  v7 = *(v11 + 6);
  _Block_object_dispose(&v10, 8);
  return v7;
}

uint64_t sub_1006E0CF4(uint64_t a1, uint64_t a2)
{
  if (qword_100B508F0 != -1)
  {
    sub_1008632A8();
  }

  v4 = sub_1000504C8(off_100B508E8, a2, 1);
  if (v4)
  {
    v5 = v4;
    if (sub_1006E0D68(v4, v4))
    {
      sub_1006E0DBC(a1, v5);
    }
  }

  return 0;
}

uint64_t sub_1006E0D68(uint64_t a1, unsigned __int8 *a2)
{
  if (qword_100B512E8 != -1)
  {
    sub_1000DF9EC();
  }

  v3 = off_100B512E0;

  return sub_1000294FC(v3, a2);
}

uint64_t sub_1006E0DBC(uint64_t a1, unsigned __int8 *a2)
{
  if (qword_100B50950 != -1)
  {
    sub_100863A78();
  }

  v4 = *(off_100B50948 + 431);
  if (sub_1000DFB74(a2, 0x80000u) != 4)
  {
    goto LABEL_12;
  }

  if (qword_100B50950 != -1)
  {
    sub_100863A78();
  }

  if (sub_10033CFC4(off_100B50948, a2))
  {
    v5 = qword_100BCE960;
    if (!os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_19;
    }

    sub_1000E5A58(a2, __p);
    if (v14 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    *buf = 136446210;
    v16 = v6;
    v7 = "Easy Unpairing device %{public}s - Wait for Easy Unpair to complete before tearing down link";
  }

  else
  {
LABEL_12:
    v5 = qword_100BCE940;
    if (!os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_19;
    }

    sub_1000E5A58(a2, __p);
    if (v14 >= 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    *buf = 136446210;
    v16 = v8;
    v7 = "Unpairing device %{public}s - defer unpairing";
  }

  _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v7, buf, 0xCu);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_19:
  __p[0] = 0;
  __p[1] = 0;
  sub_100007F88(__p, a1 + 536);
  *(a1 + 600) = (a2[128] << 40) | (a2[129] << 32) | (a2[130] << 24) | (a2[131] << 16) | (a2[132] << 8) | a2[133];
  sub_10000801C(__p);
  if (a2[1016] == 1)
  {
    if (qword_100B508F0 != -1)
    {
      sub_100863610();
    }

    sub_10056E954(off_100B508E8);
  }

  v9 = *(a1 + 40);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1006E1060;
  v11[3] = &unk_100AEAF08;
  v11[4] = a1;
  v11[5] = a2;
  v12 = v4;
  sub_10008E008(v9, 500, v11);
  sub_1000088CC(__p);
  return 0;
}

uint64_t sub_1006E1070(uint64_t a1, unsigned __int8 *a2, unsigned int a3)
{
  if (*(a1 + 272))
  {
    v5 = a2[128];
    v6 = a2[129];
    v7 = a2[130];
    v8 = a2[131];
    v9 = a2[132];
    v29 = a2[133];
    v43 = 0uLL;
    v44 = 0;
    sub_1006D1B74(&v43);
    if (qword_100B512E8 != -1)
    {
      sub_1008632BC();
    }

    if (sub_1006E7E2C(off_100B512E0, a2, &v43))
    {
      v10 = qword_100BCE940;
      if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(a2, &__p);
        if (v37 >= 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        *buf = 136446210;
        *&buf[4] = p_p;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Device %{public}s -  already unpaired", buf, 0xCu);
        if (SHIBYTE(v37) < 0)
        {
          operator delete(__p);
        }
      }

      __p = 0;
      v36 = 0;
      sub_100007F88(&__p, a1 + 536);
      *(a1 + 600) = 0;
      sub_1000088CC(&__p);
    }

    else
    {
      sub_1006E171C(a1, a2, 0, a3);
      v14 = qword_100BCE940;
      if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
      {
        v15 = &__p;
        sub_1000E5A58(a2, &__p);
        if (v37 < 0)
        {
          v15 = __p;
        }

        if (qword_100B50950 != -1)
        {
          sub_100863A8C();
        }

        v16 = sub_10033D948(off_100B50948, a3);
        *buf = 136446466;
        *&buf[4] = v15;
        *&buf[12] = 2080;
        *&buf[14] = v16;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Unpairing device %{public}s - disconnecting and removing link key with unpair type - %s", buf, 0x16u);
        if (SHIBYTE(v37) < 0)
        {
          operator delete(__p);
        }
      }

      if (qword_100B50AC0 != -1)
      {
        sub_100863AB4();
      }

      sub_1005922D4(off_100B50AB8, a2, 1);
      sub_10054E5F0(a2, 0);
      __p = 0;
      v36 = &__p;
      v37 = 0x4012000000;
      v38 = sub_100042430;
      v39 = nullsub_28;
      v40 = "";
      v41[0] = 0;
      v41[1] = 0;
      if (qword_100B508D0 != -1)
      {
        sub_1008635A0();
      }

      v17 = (v5 << 40) | (v6 << 32) | (v7 << 24) | (v8 << 16) | (v9 << 8);
      sub_1000498D4(off_100B508C8, v17 | v29, 0, 0, 0, 0, v41);
      if (uuid_is_null(v36 + 48))
      {
        goto LABEL_39;
      }

      if (qword_100B508D0 != -1)
      {
        sub_1008635A0();
      }

      v18 = off_100B508C8;
      v19 = sub_10004DF60(v36 + 48);
      sub_100007E30(v32, "_CTKD_");
      v20 = sub_10004EB40(v18, v19, v32);
      if (v33 < 0)
      {
        operator delete(v32[0]);
      }

      if (!v20)
      {
LABEL_39:
        v27 = qword_100BCE940;
        if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
        {
          v28 = sub_1007774DC(v17 | v29);
          sub_100863ADC(v28, v34, v27);
        }

        if (qword_100B508C0 != -1)
        {
          sub_1008633C4();
        }

        sub_1007CBD30(off_100B508B8, v17 | v29, 0);
      }

      else
      {
        if (qword_100B508D0 != -1)
        {
          sub_1008635A0();
        }

        v21 = off_100B508C8;
        v22 = sub_10004DF60(v36 + 48);
        v23 = sub_10004B1D8(v21, v22);
        v23[161] = 0;
        if ((v23[160] & 1) == 0)
        {
          v23[162] = 0;
        }

        if (qword_100B508C0 != -1)
        {
          sub_1008633C4();
        }

        v24 = sub_1007CBD30(off_100B508B8, v17 | v29, 1);
        v26 = sub_100007EE8(v24, v25);
        v31[0] = _NSConcreteStackBlock;
        v31[1] = 3221225472;
        v31[2] = sub_1006E1984;
        v31[3] = &unk_100B088F8;
        v31[4] = &__p;
        sub_10000CA94(v26, v31);
      }

      sub_10053E608(a2, 0);
      sub_10053CE84(a2, 255);
      sub_10053CCBC(a2, 255);
      if (qword_100B512E8 != -1)
      {
        sub_1008632BC();
      }

      sub_1006E877C(off_100B512E0, a2);
      if (qword_100B512E8 != -1)
      {
        sub_1008632BC();
      }

      if (sub_1006E8254(off_100B512E0, a2, a3))
      {
        sub_10053E608(a2, 1);
        if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
        {
          sub_100863B28();
        }
      }

      *buf = 0;
      *&buf[8] = 0;
      sub_100007F88(buf, a1 + 536);
      *(a1 + 600) = 0;
      sub_10000801C(buf);
      sub_1000088CC(buf);
      _Block_object_dispose(&__p, 8);
    }

    nullsub_21();
    return 0;
  }

  else
  {
    v12 = qword_100BCE940;
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
    {
      sub_100863B5C(a2, v12);
    }

    __p = 0;
    v36 = 0;
    sub_100007F88(&__p, a1 + 536);
    *(a1 + 600) = 0;
    sub_1000088CC(&__p);
    return 111;
  }
}

void sub_1006E167C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a24, 8);
  nullsub_21();
  _Unwind_Resume(a1);
}

uint64_t sub_1006E171C(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v8 = qword_100BCE940;
  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a2, __p);
    v9 = v26 >= 0 ? __p : __p[0];
    *buf = 136446722;
    *&buf[4] = v9;
    *&buf[12] = 1024;
    *&buf[14] = a4;
    *&buf[18] = 1024;
    *&buf[20] = a3;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Sending 'device unpaired' event for device %{public}s with UnpairInitiatorType %d, result %d", buf, 0x18u);
    if (v26 < 0)
    {
      operator delete(__p[0]);
    }
  }

  __p[0] = 0;
  __p[1] = 0;
  sub_100007F88(__p, a1 + 416);
  memset(buf, 0, sizeof(buf));
  sub_100007F20(buf, (a1 + 480));
  sub_10000801C(__p);
  for (i = *buf; i != *&buf[8]; ++i)
  {
    v10 = (*(**i + 32))(*i, a2, a3);
  }

  v12 = a2[128];
  v13 = a2[129];
  v14 = a2[130];
  v15 = a2[131];
  v16 = a2[132];
  v17 = a2[133];
  v18 = sub_1006E1E98(v10, a4);
  v19 = v18;
  v21 = sub_100017F4C(v18, v20);
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1006E1F08;
  v23[3] = &unk_100AE15D8;
  v23[4] = (v12 << 40) | (v13 << 32) | (v14 << 24) | (v15 << 16) | (v16 << 8) | v17;
  v24 = v19;
  sub_10000CA94(v21, v23);
  if (*buf)
  {
    *&buf[8] = *buf;
    operator delete(*buf);
  }

  return sub_1000088CC(__p);
}

void sub_1006E1948(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    a20 = __p;
    operator delete(__p);
  }

  sub_1000088CC(&a16);
  _Unwind_Resume(a1);
}

void sub_1006E1984(uint64_t a1)
{
  if (qword_100B50900 != -1)
  {
    sub_100863C14();
  }

  v2 = qword_100B508F8;
  v3 = sub_10004DF60((*(*(a1 + 32) + 8) + 48));
  sub_100707D50(v2, v3);
}

BOOL sub_1006E1A18()
{
  if (qword_100B512E8 != -1)
  {
    sub_1000DF9EC();
  }

  v1 = off_100B512E0;

  return sub_1006E7CFC(v1);
}

uint64_t sub_1006E1A5C(uint64_t result, unsigned __int8 *a2, char a3)
{
  v6 = a2;
  if ((a3 & 1) == 0)
  {
    v4 = result;
    v5[0] = 0;
    v5[1] = 0;
    sub_100007F88(v5, result + 280);
    if (!sub_1000E69B8(v4 + 344, a2))
    {
      sub_1000C2484(v4 + 344, &v6);
    }

    sub_10000801C(v5);
    sub_1006DC0D4(v4, v6, 0);
    return sub_1000088CC(v5);
  }

  return result;
}

void sub_1006E1ADC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1006E1B04(uint64_t a1)
{
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 416);
  v4 = 0;
  v5 = 0;
  v6 = 0;
  sub_100007F20(&v4, (a1 + 480));
  sub_10000801C(v7);
  v2 = v4;
  if (v4 != v5)
  {
    do
    {
      (*(**v2 + 40))();
      v2 += 8;
    }

    while (v2 != v5);
    v2 = v4;
  }

  if (v2)
  {
    v5 = v2;
    operator delete(v2);
  }

  return sub_1000088CC(v7);
}

void sub_1006E1BB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1006E1BF0(uint64_t a1, uint64_t a2)
{
  sub_1006E1C48(a1, a2, 1, 0);
  result = *(a1 + 112);
  if (result)
  {

    return sub_1006D79E0(result, a2);
  }

  return result;
}

uint64_t sub_1006E1C48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = qword_100BCE940;
  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
  {
    v9 = a3 ? "incoming device" : "device";
    sub_1000E5A58(a2, &__p);
    v10 = v15 >= 0 ? &__p : __p;
    *buf = 136446466;
    *&buf[4] = v9;
    *&buf[12] = 2080;
    *&buf[14] = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Sending 'pairing started' event for %{public}s %s", buf, 0x16u);
    if (SHIBYTE(v15) < 0)
    {
      operator delete(__p);
    }
  }

  *buf = 0;
  *&buf[8] = 0;
  sub_100007F88(buf, a1 + 416);
  __p = 0;
  v14 = 0;
  v15 = 0;
  sub_100007F20(&__p, (a1 + 480));
  sub_10000801C(buf);
  v11 = __p;
  if (__p != v14)
  {
    do
    {
      (*(**v11 + 16))(*v11, a2, a3, a4);
      ++v11;
    }

    while (v11 != v14);
    v11 = __p;
  }

  if (v11)
  {
    v14 = v11;
    operator delete(v11);
  }

  return sub_1000088CC(buf);
}

void sub_1006E1DFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1006E1E3C(uint64_t a1)
{
  if (qword_100B50910 != -1)
  {
    sub_100863C28();
  }

  v2 = off_100B50908;
  v3 = *(a1 + 32);

  return sub_1005BBCD4(v2, 1, v3, 1);
}

uint64_t sub_1006E1E98(uint64_t a1, uint64_t a2)
{
  if (a2 >= 4)
  {
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
    {
      sub_100863C3C();
    }

    LOBYTE(v2) = 0;
  }

  else
  {
    return (0xC9CBCAC8 >> (8 * (a2 & 0x1F)));
  }

  return v2;
}

uint64_t sub_1006E1F08(uint64_t a1)
{
  if (qword_100B50910 != -1)
  {
    sub_100863C28();
  }

  v2 = off_100B50908;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return sub_1005BBCD4(v2, 0, v3, v4);
}

void *sub_1006E1F64(void *a1)
{
  *a1 = off_100B08928;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_1006E1FD0(void *a1)
{
  *a1 = off_100B08928;
  v1 = a1[2];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  operator delete();
}

void sub_1006E205C(uint64_t a1)
{
  if (qword_100B50F88 != -1)
  {
    sub_1008639B0();
  }

  v2 = off_100B50F80;
  v3 = *(a1 + 16);

  sub_1006DD488(v2, v3);
}

void *sub_1006E20B0(void *a1)
{
  *a1 = off_100B08960;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_1006E211C(void *a1)
{
  *a1 = off_100B08960;
  v1 = a1[2];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  operator delete();
}

void sub_1006E21A8(uint64_t a1)
{
  if (qword_100B50F88 != -1)
  {
    sub_1008639B0();
  }

  v2 = off_100B50F80;
  v3 = *(a1 + 16);

  sub_1006DE0F8(v2, v3);
}

void *sub_1006E21FC(void *a1)
{
  *a1 = off_100B08998;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_1006E2268(void *a1)
{
  *a1 = off_100B08998;
  v1 = a1[2];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  operator delete();
}

void sub_1006E22F4(uint64_t a1)
{
  if (qword_100B50F88 != -1)
  {
    sub_1008639B0();
  }

  v2 = off_100B50F80;
  v3 = *(a1 + 16);

  sub_1006DE84C(v2, v3);
}

uint64_t sub_1006E2360(uint64_t a1)
{
  if (qword_100B50F88 != -1)
  {
    sub_1008639B0();
  }

  v2 = off_100B50F80;

  return sub_1006DECAC(v2, (a1 + 10), (a1 + 26), (a1 + 42), (a1 + 58));
}

void sub_1006E23C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100017F4C(a1, a2);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1006E2440;
  v6[3] = &unk_100AE0860;
  v6[4] = a1;
  v6[5] = a3;
  sub_10000CA94(v5, v6);
}

void sub_1006E2440(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(v1 + 616);
  v4 = *(v3 - 8);
  *(v1 + 616) = v3 - 8;
  v5 = qword_100BCE940;
  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(v4, __p);
    v6 = v17 >= 0 ? __p : __p[0];
    *buf = 136315394;
    v19 = v6;
    v20 = 1024;
    v21 = v2 == 1;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "privacySyncAlertCB for device %s allow:%d", buf, 0x12u);
    if (v17 < 0)
    {
      operator delete(__p[0]);
      if (v4)
      {
        goto LABEL_7;
      }

LABEL_18:
      if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
      {
        sub_100863CAC();
      }

      goto LABEL_20;
    }
  }

  if (!v4)
  {
    goto LABEL_18;
  }

LABEL_7:
  if (qword_100B508F0 != -1)
  {
    sub_100863610();
  }

  v7 = sub_10056CAC0(off_100B508E8, v4, 0, v2 == 1, v2 == 1, v2 == 1, v2 == 1);
  buf[0] = 0;
  v9 = sub_1000BE4B4(v7, v8);
  sub_100007E30(__p, "_PENDING_PRIVACY_SYNC_POPUP_");
  v10 = (*(*v9 + 784))(v9, v4, __p, buf) == 0;
  v11 = v10 & buf[0];
  if (v17 < 0)
  {
    operator delete(__p[0]);
    if (!v11)
    {
      goto LABEL_20;
    }
  }

  else if ((v10 & buf[0]) == 0)
  {
    goto LABEL_20;
  }

  v12 = qword_100BCE940;
  v13 = os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT);
  if (v13)
  {
    LOWORD(__p[0]) = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "_CTKD_ device pending for contacts/favorites sync, removing tag", __p, 2u);
  }

  v15 = sub_1000BE4B4(v13, v14);
  sub_100007E30(__p, "_PENDING_PRIVACY_SYNC_POPUP_");
  (*(*v15 + 800))(v15, v4, __p);
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_20:
  CFRelease(*(v1 + 632));
  *(v1 + 632) = 0;
}

void sub_1006E26E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006E270C(uint64_t a1)
{
  if (*(a1 + 632))
  {
    return 0;
  }

  if (!*(*(a1 + 616) - 8))
  {
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
    {
      sub_100863D14();
    }

    return 0;
  }

  v3 = sub_100438B14(@"SYNC_CONTACTS_TITLE", @"Allow Contacts and Favorites Sync?");
  v4 = sub_100438B14(@"SYNC_ALLOW_BUTTON", @"Allow");
  v5 = sub_100438B14(@"SYNC_DISALLOW_BUTTON", @"Don’t Allow");
  v6 = sub_100438B14(@"SYNC_CONTACTS_MESSAGE", @"Your car may request your contacts, phone favorites, and recent phone calls over Bluetooth. Do you wish to allow this? CarPlay will work without syncing.");
  v15[0] = kCFUserNotificationAlertTopMostKey;
  v15[1] = SBUserNotificationAllowMenuButtonDismissal;
  v16[0] = &__kCFBooleanTrue;
  v16[1] = &__kCFBooleanTrue;
  v15[2] = SBUserNotificationDismissOnLock;
  v15[3] = kCFUserNotificationAlertHeaderKey;
  v16[2] = &__kCFBooleanTrue;
  v16[3] = v3;
  v7 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:4];
  v8 = [v7 mutableCopy];

  [v8 setObject:v6 forKey:kCFUserNotificationAlertMessageKey];
  [v8 setObject:v5 forKey:kCFUserNotificationDefaultButtonTitleKey];
  [v8 setObject:v4 forKey:kCFUserNotificationAlternateButtonTitleKey];
  v9 = CFUserNotificationCreate(kCFAllocatorDefault, 0.0, 0x10003uLL, 0, v8);
  *(a1 + 632) = v9;
  if (v9)
  {
    v1 = 0;
  }

  else
  {
    v10 = qword_100BCE940;
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
    {
      *v14 = 0;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to create Privacy Sync notification", v14, 2u);
      v9 = *(a1 + 632);
    }

    else
    {
      v9 = 0;
    }

    v1 = 1;
  }

  RunLoopSource = CFUserNotificationCreateRunLoopSource(kCFAllocatorDefault, v9, sub_1006E2A5C, 0);
  if (!RunLoopSource)
  {
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
    {
      sub_100863CE0();
    }

    CFRelease(*(a1 + 632));
    v1 = 1;
  }

  Main = CFRunLoopGetMain();
  CFRunLoopAddSource(Main, RunLoopSource, kCFRunLoopCommonModes);
  CFRelease(RunLoopSource);

  return v1;
}

void sub_1006E2A5C(uint64_t a1, uint64_t a2)
{
  if (qword_100B50F88 != -1)
  {
    sub_1008639B0();
  }

  v3 = off_100B50F80;

  sub_1006E23C0(v3, a2, a2);
}

uint64_t sub_1006E2AB0(void *a1)
{
  v2 = a1[5];
  sub_1000C2484(v2 + 608, a1 + 6);
  result = sub_1006E270C(v2);
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

uint64_t sub_1006E2B0C(uint64_t a1, uint64_t a2)
{
  if (qword_100B50F88 != -1)
  {
    sub_1008639B0();
  }

  v3 = off_100B50F80;
  v4 = *(a1 + 24);

  return sub_1006DF388(v3, a2, v4);
}

double sub_1006E2B60@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = sub_100007E30(a2, "");
  std::string::assign(v4, "\nPairingManager STATUS :{\n");
  v5 = (a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = *(a2 + 8);
  }

  memset(&v30, 0, sizeof(v30));
  v7 = &v30;
  sub_1003A5170(&v30, v6 + 16);
  if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v7 = v30.__r_.__value_.__r.__words[0];
  }

  if (v6)
  {
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    memmove(v7, v8, v6);
  }

  strcpy(v7 + v6, "\tfStackStarted: ");
  if (*(a1 + 272))
  {
    v9 = "YES";
  }

  else
  {
    v9 = "NO";
  }

  v10 = std::string::append(&v30, v9);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v31.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&v31.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  v12 = std::string::append(&v31, "\n");
  v13 = v12->__r_.__value_.__r.__words[0];
  *&__p = v12->__r_.__value_.__l.__size_;
  *(&__p + 7) = *(&v12->__r_.__value_.__r.__words[1] + 7);
  v14 = HIBYTE(v12->__r_.__value_.__r.__words[2]);
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  *a2 = v13;
  *v5 = __p;
  *(a2 + 15) = *(&__p + 7);
  *(a2 + 23) = v14;
  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  if (*(a2 + 23) >= 0)
  {
    v15 = *(a2 + 23);
  }

  else
  {
    v15 = *(a2 + 8);
  }

  memset(&v30, 0, sizeof(v30));
  v16 = &v30;
  sub_1003A5170(&v30, v15 + 12);
  if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v16 = v30.__r_.__value_.__r.__words[0];
  }

  if (v15)
  {
    if (*(a2 + 23) >= 0)
    {
      v17 = a2;
    }

    else
    {
      v17 = *a2;
    }

    memmove(v16, v17, v15);
  }

  strcpy(v16 + v15, "\tfAgent : {\n");
  v18 = *(a1 + 112);
  if (v18)
  {
    sub_1006D967C(v18, &__p);
  }

  else
  {
    sub_100007E30(&__p, "\t\t(null)");
  }

  if ((v33 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v33 & 0x80u) == 0)
  {
    v20 = v33;
  }

  else
  {
    v20 = *(&__p + 1);
  }

  v21 = std::string::append(&v30, p_p, v20);
  v22 = *&v21->__r_.__value_.__l.__data_;
  v31.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
  *&v31.__r_.__value_.__l.__data_ = v22;
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
  v23 = std::string::append(&v31, "}\n");
  v24 = v23->__r_.__value_.__r.__words[0];
  v34[0] = v23->__r_.__value_.__l.__size_;
  *(v34 + 7) = *(&v23->__r_.__value_.__r.__words[1] + 7);
  v25 = HIBYTE(v23->__r_.__value_.__r.__words[2]);
  v23->__r_.__value_.__l.__size_ = 0;
  v23->__r_.__value_.__r.__words[2] = 0;
  v23->__r_.__value_.__r.__words[0] = 0;
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  *a2 = v24;
  *v5 = v34[0];
  *(a2 + 15) = *(v34 + 7);
  *(a2 + 23) = v25;
  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if (v33 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  if (*(a2 + 23) >= 0)
  {
    v26 = *(a2 + 23);
  }

  else
  {
    v26 = *(a2 + 8);
  }

  memset(&v31, 0, sizeof(v31));
  v27 = &v31;
  sub_1003A5170(&v31, v26 + 29);
  if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v27 = v31.__r_.__value_.__r.__words[0];
  }

  if (v26)
  {
    if (*(a2 + 23) >= 0)
    {
      v28 = a2;
    }

    else
    {
      v28 = *a2;
    }

    memmove(v27, v28, v26);
  }

  strcpy(v27 + v26, "} END PairingManager STATUS\n\n");
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  result = *&v31.__r_.__value_.__l.__data_;
  *a2 = v31;
  return result;
}

void sub_1006E2F20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (*(v28 + 23) < 0)
  {
    operator delete(*v28);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006E3698(void *a1@<X0>, std::string *a2@<X8>)
{
  *__str = 0u;
  memset(v25, 0, sizeof(v25));
  v22 = 0uLL;
  v23 = 0;
  v4 = a1[1];
  v5 = *(v4 + 20);
  *&v21.__r_.__value_.__l.__data_ = *(v4 + 4);
  LODWORD(v21.__r_.__value_.__r.__words[2]) = v5;
  sub_10000D03C(&v22, &v21);
  *&v21.__r_.__value_.__l.__data_ = xmmword_1008C4DC0;
  LODWORD(v21.__r_.__value_.__r.__words[2]) = 0;
  if (sub_10004E15C(&v22, &v21))
  {
    v6 = "Primary Service";
LABEL_21:
    v7 = *a1[1];
LABEL_22:
    snprintf(__str, 0x2CuLL, "0x%04X %-20s", v7, v6);
    goto LABEL_23;
  }

  LODWORD(v21.__r_.__value_.__r.__words[2]) = 0;
  *&v21.__r_.__value_.__l.__data_ = xmmword_1008C4DD4;
  if (sub_10004E15C(&v22, &v21))
  {
    v6 = "Secondary Service";
    goto LABEL_21;
  }

  LODWORD(v21.__r_.__value_.__r.__words[2]) = 0;
  *&v21.__r_.__value_.__l.__data_ = xmmword_1008C4DE8;
  if (sub_10004E15C(&v22, &v21))
  {
    v6 = "Included Service";
    goto LABEL_21;
  }

  LODWORD(v21.__r_.__value_.__r.__words[2]) = 0;
  *&v21.__r_.__value_.__l.__data_ = xmmword_1008C4DFC;
  if (sub_10004E15C(&v22, &v21))
  {
    v6 = "Characteristic";
    goto LABEL_21;
  }

  LODWORD(v21.__r_.__value_.__r.__words[2]) = 0;
  *&v21.__r_.__value_.__l.__data_ = xmmword_1008C4E10;
  if (sub_10004E15C(&v22, &v21))
  {
    v6 = "Characteristic Value";
    goto LABEL_21;
  }

  LODWORD(v21.__r_.__value_.__r.__words[2]) = 0;
  *&v21.__r_.__value_.__l.__data_ = xmmword_1008C4E24;
  if (sub_10004E15C(&v22, &v21))
  {
    v6 = "Extended Properties";
    goto LABEL_21;
  }

  LODWORD(v21.__r_.__value_.__r.__words[2]) = 0;
  *&v21.__r_.__value_.__l.__data_ = xmmword_1008C4E38;
  if (sub_10004E15C(&v22, &v21))
  {
    v6 = "User Description";
    goto LABEL_21;
  }

  LODWORD(v21.__r_.__value_.__r.__words[2]) = 0;
  *&v21.__r_.__value_.__l.__data_ = xmmword_1008C4E4C;
  if (sub_10004E15C(&v22, &v21))
  {
    v6 = "Client Configuration";
    goto LABEL_21;
  }

  LODWORD(v21.__r_.__value_.__r.__words[2]) = 0;
  *&v21.__r_.__value_.__l.__data_ = xmmword_1008C4E60;
  if (sub_10004E15C(&v22, &v21))
  {
    v6 = "Server Configuration";
    goto LABEL_21;
  }

  LODWORD(v21.__r_.__value_.__r.__words[2]) = 0;
  *&v21.__r_.__value_.__l.__data_ = xmmword_1008C4E74;
  if (sub_10004E15C(&v22, &v21))
  {
    v6 = "Format";
    goto LABEL_21;
  }

  LODWORD(v21.__r_.__value_.__r.__words[2]) = 0;
  *&v21.__r_.__value_.__l.__data_ = xmmword_1008C4E88;
  v15 = sub_10004E15C(&v22, &v21);
  v7 = *a1[1];
  if (v15)
  {
    v6 = "Aggregate Format";
    goto LABEL_22;
  }

  sub_10003B85C(&v22, &v21);
  if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = &v21;
  }

  else
  {
    v16 = v21.__r_.__value_.__r.__words[0];
  }

  snprintf(__str, 0x2CuLL, "0x%04X %-20s", v7, v16);
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

LABEL_23:
  sub_100007E30(&v19, __str);
  v8 = std::string::append(&v19, " [ ");
  v9 = *&v8->__r_.__value_.__l.__data_;
  v20.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v20.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  (*(*a1 + 24))(__p, a1);
  if ((v18 & 0x80u) == 0)
  {
    v10 = __p;
  }

  else
  {
    v10 = __p[0];
  }

  if ((v18 & 0x80u) == 0)
  {
    v11 = v18;
  }

  else
  {
    v11 = __p[1];
  }

  v12 = std::string::append(&v20, v10, v11);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v21.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v21.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  v14 = std::string::append(&v21, " ]");
  *a2 = *v14;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }
}

void sub_1006E3AB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006E3B24(_BYTE *a1)
{
  result = (*(*a1 + 32))(a1);
  a1[20] = result;
  return result;
}

BOOL sub_1006E3B6C(uint64_t a1, unsigned __int8 *a2, int a3)
{
  if (a3 == 2)
  {
    v3 = *a2;
    *(a1 + 72) = v3;
    *(a1 + 72) = v3 | (a2[1] << 8);
  }

  return a3 == 2;
}

uint64_t sub_1006E3B94(uint64_t a1)
{
  v26 = 0;
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
  *__p = 0u;
  v15 = 0u;
  v12 = 0u;
  memset(v13, 0, sizeof(v13));
  v11 = 0u;
  sub_100007AD0(&v11);
  v2 = *(a1 + 8);
  v3 = *(v2 + 20);
  v27 = *(v2 + 4);
  v28 = v3;
  sub_10000D03C(&v29, &v27);
  v27 = xmmword_1008C4E4C;
  v28 = 0;
  v5 = sub_10004E15C(v4, &v27);
  v6 = *(a1 + 72);
  if (!v5)
  {
    if (*(a1 + 72))
    {
      if ((v6 & 1) == 0)
      {
        goto LABEL_12;
      }

      v7 = "broadcast";
      v8 = 9;
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (!*(a1 + 72))
  {
LABEL_10:
    v7 = "none";
    v8 = 4;
    goto LABEL_11;
  }

  if (v6)
  {
    sub_100007774(&v12, "notification", 12);
    v6 = *(a1 + 72);
  }

  if ((v6 & 2) != 0)
  {
    v7 = "indication";
    v8 = 10;
LABEL_11:
    sub_100007774(&v12, v7, v8);
  }

LABEL_12:
  std::stringbuf::str();
  *&v12 = v9;
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[1]);
  }

  std::locale::~locale(v13);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void *sub_1006E3E30(uint64_t a1, const void *a2, unsigned int a3)
{
  result = *(a1 + 72);
  if (result)
  {
    operator delete[]();
  }

  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  if (a3)
  {
    operator new[]();
  }

  return result;
}

uint64_t sub_1006E3EB8(void *a1)
{
  v26 = 0;
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
  *v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  memset(v13, 0, sizeof(v13));
  v11 = 0u;
  sub_100007AD0(&v11);
  LOBYTE(__p) = 34;
  v2 = sub_100007774(&v12, &__p, 1);
  sub_1004860D0(a1, &__p);
  if ((v10 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    LODWORD(p_p) = __p;
  }

  if ((v10 & 0x80u) == 0)
  {
    v4 = v10;
  }

  else
  {
    v4 = v9;
  }

  v5 = sub_100007774(v2, p_p, v4);
  v27 = 34;
  sub_100007774(v5, &v27, 1);
  if (v10 < 0)
  {
    operator delete(__p);
  }

  std::stringbuf::str();
  *&v12 = v6;
  if (SHIBYTE(v15) < 0)
  {
    operator delete(v14[1]);
  }

  std::locale::~locale(v13);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

BOOL sub_1006E4108(uint64_t a1, unsigned __int8 *a2, int a3)
{
  if (a3 == 2)
  {
    v3 = *a2;
    *(a1 + 72) = v3;
    *(a1 + 72) = v3 | (a2[1] << 8);
  }

  return a3 == 2;
}

uint64_t sub_1006E4130(uint64_t a1)
{
  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  *__p = 0u;
  v11 = 0u;
  v8 = 0u;
  memset(v9, 0, sizeof(v9));
  v7 = 0u;
  sub_100007AD0(&v7);
  v2 = *(a1 + 72);
  if (!v2)
  {
    v3 = "none";
    v4 = 4;
    goto LABEL_7;
  }

  if (v2)
  {
    sub_100007774(&v8, "reliable-write", 14);
    v2 = *(a1 + 72);
  }

  if ((v2 & 2) != 0)
  {
    v3 = "writeable-auxiliaries";
    v4 = 21;
LABEL_7:
    sub_100007774(&v8, v3, v4);
  }

  std::stringbuf::str();
  *&v8 = v5;
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[1]);
  }

  std::locale::~locale(v9);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

BOOL sub_1006E433C(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 == 7)
  {
    *(a1 + 72) = *a2;
    *(a1 + 73) = *(a2 + 1);
    *(a1 + 74) = *(a2 + 2);
    *(a1 + 76) = *(a2 + 4);
    *(a1 + 78) = *(a2 + 5);
  }

  return a3 == 7;
}

uint64_t sub_1006E4378(uint64_t a1)
{
  v23 = 0;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  *__p = 0u;
  v12 = 0u;
  v9 = 0u;
  memset(v10, 0, sizeof(v10));
  v8 = 0u;
  sub_100007AD0(&v8);
  v1 = v9;
  *(&v10[-1] + *(v9 - 24) + 8) = *(&v10[-1] + *(v9 - 24) + 8) & 0xFFFFFFB5 | 8;
  *(&v10[-1] + *(v1 - 24) + 8) |= 0x4000u;
  sub_100007774(&v9, "format: 0x", 10);
  v2 = std::ostream::operator<<();
  sub_100007774(v2, ", exponent: 0x", 14);
  v3 = std::ostream::operator<<();
  sub_100007774(v3, ", unit: 0x", 10);
  v4 = std::ostream::operator<<();
  sub_100007774(v4, ", namespace: 0x", 15);
  v5 = std::ostream::operator<<();
  sub_100007774(v5, ", description: 0x", 17);
  std::ostream::operator<<();
  std::stringbuf::str();
  *&v9 = v6;
  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p[1]);
  }

  std::locale::~locale(v10);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void *sub_1006E4624(uint64_t a1, const void *a2, unsigned int a3)
{
  result = *(a1 + 72);
  if (result)
  {
    operator delete[]();
  }

  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  if (a3)
  {
    operator new[]();
  }

  return result;
}

void sub_1006E46CC(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_10000C704(&v3, *(a1 + 72), *(a1 + 80));
  sub_10000C250(&v3, a2);
  v3 = &off_100AE0A78;
  if (v4)
  {
    sub_10000C808(v4);
  }
}

void sub_1006E473C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, atomic_uint *a10)
{
  if (a10)
  {
    sub_10000C808(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006E4778(uint64_t a1)
{
  v33 = 0;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  *v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  memset(v20, 0, sizeof(v20));
  v18 = 0u;
  sub_100007AD0(&v18);
  v2 = sub_100007774(&v19, "valueUUID: ", 11);
  v35 = *(a1 + 76);
  v36 = *(a1 + 92);
  sub_10000D03C(&v34, &v35);
  v3 = __p;
  sub_10003B85C(v4, __p);
  if (v17 < 0)
  {
    v3 = __p[0];
  }

  v5 = strlen(v3);
  v6 = sub_100007774(v2, v3, v5);
  sub_100007774(v6, ", ", 2);
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  *(__p + 3) = 0;
  LODWORD(__p[0]) = 0;
  snprintf(__p, 7uLL, "0x%04X", *(a1 + 74));
  v7 = sub_100007774(&v19, "valueHandle: ", 13);
  v8 = strlen(__p);
  v9 = sub_100007774(v7, __p, v8);
  sub_100007774(v9, ", ", 2);
  sub_100007774(&v19, "properties:", 11);
  v10 = *(a1 + 72);
  if (v10)
  {
    sub_100007774(&v19, " broadcast", 10);
    v10 = *(a1 + 72);
  }

  if ((v10 & 2) != 0)
  {
    sub_100007774(&v19, " read", 5);
    v10 = *(a1 + 72);
  }

  if ((v10 & 4) != 0)
  {
    sub_100007774(&v19, " responseless-writes", 20);
    v10 = *(a1 + 72);
  }

  if ((v10 & 8) != 0)
  {
    sub_100007774(&v19, " write", 6);
    v10 = *(a1 + 72);
  }

  if ((v10 & 0x10) != 0)
  {
    sub_100007774(&v19, " notify", 7);
    v10 = *(a1 + 72);
  }

  if ((v10 & 0x20) != 0)
  {
    sub_100007774(&v19, " indicate", 9);
    v10 = *(a1 + 72);
  }

  if ((v10 & 0x40) != 0)
  {
    sub_100007774(&v19, " signed-writes", 14);
    v10 = *(a1 + 72);
  }

  if (v10 < 0)
  {
    sub_100007774(&v19, " extended", 9);
  }

  sub_100007774(&v19, ", ", 2);
  v11 = sub_100007774(&v19, "discoveredDescriptors: ", 23);
  if (*(a1 + 128))
  {
    v12 = "all";
  }

  else
  {
    v12 = "none";
  }

  if (*(a1 + 128))
  {
    v13 = 3;
  }

  else
  {
    v13 = 4;
  }

  sub_100007774(v11, v12, v13);
  std::stringbuf::str();
  *&v19 = v14;
  if (SHIBYTE(v22) < 0)
  {
    operator delete(v21[1]);
  }

  std::locale::~locale(v20);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

uint64_t sub_1006E4BC4(uint64_t a1)
{
  v26 = 0;
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
  *__p = 0u;
  v15 = 0u;
  v12 = 0u;
  memset(v13, 0, sizeof(v13));
  v11 = 0u;
  sub_100007AD0(&v11);
  v2 = sub_100007774(&v12, "serviceUUID: ", 13);
  v30 = *(a1 + 76);
  v31 = *(a1 + 92);
  sub_10000D03C(&v29, &v30);
  v3 = __str;
  sub_10003B85C(v4, __str);
  if (SBYTE7(v28) < 0)
  {
    v3 = *__str;
  }

  v5 = strlen(v3);
  v6 = sub_100007774(v2, v3, v5);
  sub_100007774(v6, ", ", 2);
  if (SBYTE7(v28) < 0)
  {
    operator delete(*__str);
  }

  *__str = 0u;
  v28 = 0u;
  snprintf(__str, 0x20uLL, "0x%04X - 0x%04X", *(a1 + 72), *(a1 + 74));
  v7 = sub_100007774(&v12, "handleRange: ", 13);
  v8 = strlen(__str);
  sub_100007774(v7, __str, v8);
  std::stringbuf::str();
  *&v12 = v9;
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[1]);
  }

  std::locale::~locale(v13);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_1006E4E80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1007FC91C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1006E4EBC(uint64_t a1)
{
  v37 = 0;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  *v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  memset(v24, 0, sizeof(v24));
  v22 = 0u;
  sub_100007AD0(&v22);
  v2 = sub_100007774(&v23, "serviceUUID: ", 13);
  __str = *(a1 + 72);
  v40 = *(a1 + 88);
  sub_10000D03C(&v38, &__str);
  v3 = __p;
  sub_10003B85C(v4, __p);
  if (v21 < 0)
  {
    v3 = __p[0];
  }

  v5 = strlen(v3);
  v6 = sub_100007774(v2, v3, v5);
  sub_100007774(v6, ", ", 2);
  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

  *(__str.n128_u32 + 3) = 0;
  __str.n128_u32[0] = 0;
  snprintf(&__str, 7uLL, "0x%04X", *(a1 + 48));
  v7 = sub_100007774(&v23, "endHandle: ", 11);
  v8 = strlen(&__str);
  v9 = sub_100007774(v7, &__str, v8);
  sub_100007774(v9, ", ", 2);
  sub_100007774(&v23, "discoveredCharacteristics: ", 27);
  if (*(a1 + 160))
  {
    v10 = "all";
    v11 = 3;
  }

  else
  {
    if (*(a1 + 168) == *(a1 + 176))
    {
      v10 = "none";
    }

    else
    {
      v10 = "some";
    }

    v11 = 4;
  }

  sub_100007774(&v23, v10, v11);
  if (*(a1 + 16))
  {
    v12 = sub_100007774(&v23, ", ID: 0x", 8);
    v13 = *v12;
    v14 = *v12;
    *(v12 + *(*v12 - 24) + 8) = *(v12 + *(*v12 - 24) + 8) & 0xFFFFFFB5 | 8;
    *(v12 + *(v14 - 24) + 8) |= 0x4000u;
    v15 = (v12 + *(v14 - 24));
    if (v15[1].__fmtflags_ == -1)
    {
      std::ios_base::getloc(v15);
      v16 = std::locale::use_facet(__p, &std::ctype<char>::id);
      v17 = (v16->__vftable[2].~facet_0)(v16, 32);
      std::locale::~locale(__p);
      v15[1].__fmtflags_ = v17;
      v13 = *v12;
    }

    v15[1].__fmtflags_ = 48;
    *(v12 + *(v13 - 24) + 24) = 8;
    std::ostream::operator<<();
  }

  std::stringbuf::str();
  *&v23 = v18;
  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25[1]);
  }

  std::locale::~locale(v24);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void *sub_1006E5404(void *a1)
{
  *a1 = off_100B08C60;
  if (a1[9])
  {
    operator delete[]();
  }

  return a1;
}

void sub_1006E5460(void *a1)
{
  *a1 = off_100B08C60;
  if (a1[9])
  {
    operator delete[]();
  }

  operator delete();
}

void *sub_1006E56A4(void *a1)
{
  *a1 = off_100B08D08;
  if (a1[9])
  {
    operator delete[]();
  }

  return a1;
}

void sub_1006E5700(void *a1)
{
  *a1 = off_100B08D08;
  if (a1[9])
  {
    operator delete[]();
  }

  operator delete();
}

void *sub_1006E5804(void *a1)
{
  *a1 = off_100B08D40;
  a1[9] = &off_100AE0A78;
  v2 = a1[10];
  if (v2)
  {
    sub_10000C808(v2);
  }

  return a1;
}

void sub_1006E5870(void *a1)
{
  *a1 = off_100B08D40;
  a1[9] = &off_100AE0A78;
  v1 = a1[10];
  if (v1)
  {
    sub_10000C808(v1);
  }

  operator delete();
}

void sub_1006E596C(void *a1)
{
  sub_1006E5CB8(a1);

  operator delete();
}

void sub_1006E5ABC(void *a1)
{
  sub_1006E5D78(a1);

  operator delete();
}

uint64_t sub_1006E5B60(uint64_t a1, uint64_t a2)
{
  *a1 = off_100B08E00;
  v4 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v4;
  *(a1 + 20) = *(a2 + 20);
  *a1 = off_100B08C60;
  *(a1 + 8) = a1 + 24;
  v5 = *(a2 + 24);
  v6 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v6;
  *(a1 + 24) = v5;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  sub_1006E3E30(a1, *(a2 + 72), *(a2 + 80));
  *(a1 + 20) = *(a2 + 20);
  return a1;
}

uint64_t sub_1006E5C10(uint64_t a1, uint64_t a2)
{
  *a1 = off_100B08E00;
  v3 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v3;
  *(a1 + 20) = *(a2 + 20);
  *a1 = off_100B08D08;
  *(a1 + 8) = a1 + 24;
  v4 = *(a2 + 24);
  v5 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v5;
  *(a1 + 24) = v4;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  sub_1006E4624(a1, *(a2 + 72), *(a2 + 80));
  return a1;
}

void *sub_1006E5CB8(void *a1)
{
  *a1 = off_100B08D70;
  v3 = a1[13];
  v2 = a1[14];
  while (v3 != v2)
  {
    if (*v3)
    {
      (*(**v3 + 8))(*v3);
      v2 = a1[14];
    }

    ++v3;
  }

  v4 = a1[12];
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = a1[13];
  if (v5)
  {
    a1[14] = v5;
    operator delete(v5);
  }

  return a1;
}

void *sub_1006E5D78(void *a1)
{
  *a1 = off_100B08DD0;
  v3 = a1[13];
  v2 = a1[14];
  while (v3 != v2)
  {
    if (*v3)
    {
      (*(**v3 + 8))(*v3);
      v2 = a1[14];
    }

    ++v3;
  }

  v5 = a1[17];
  v4 = a1[18];
  while (v5 != v4)
  {
    if (*v5)
    {
      (*(**v5 + 8))(*v5);
      v4 = a1[18];
    }

    ++v5;
  }

  v6 = a1[21];
  if (v6)
  {
    a1[22] = v6;
    operator delete(v6);
  }

  v7 = a1[17];
  if (v7)
  {
    a1[18] = v7;
    operator delete(v7);
  }

  v8 = a1[13];
  if (v8)
  {
    a1[14] = v8;
    operator delete(v8);
  }

  return a1;
}

char *sub_1006E5E70(char *result, char *__s)
{
  result[16] = 0;
  if (__s)
  {
    v3 = result;
    v4 = strlen(__s);
    if (v4 <= 0x10uLL)
    {
      v5 = v4;
    }

    else
    {
      v5 = 16;
    }

    v3[16] = v5;

    return strncpy(v3, __s, v5);
  }

  return result;
}

char *sub_1006E5ED8(char *a1, char *a2)
{
  a1[16] = 0;
  sub_1006E5E70(a1, a2);
  return a1;
}

__n128 sub_1006E5F04(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  return result;
}

uint64_t sub_1006E5F48(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) < *(a2 + 16))
  {
    return 1;
  }

  v3 = bswap64(*a1);
  v4 = bswap64(*a2);
  if (v3 == v4 && (v3 = bswap64(*(a1 + 8)), v4 = bswap64(*(a2 + 8)), v3 == v4))
  {
    v5 = 0;
  }

  else if (v3 < v4)
  {
    v5 = -1;
  }

  else
  {
    v5 = 1;
  }

  return v5 >> 31;
}

uint64_t *sub_1006E5FB4@<X0>(uint64_t *__return_ptr a1@<X8>, uint64_t *__src@<X0>)
{
  v3 = *(__src + 16);
  if (v3 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v3;
  if (v3)
  {
    __src = memcpy(a1, __src, v3);
  }

  *(a1 + v3) = 0;
  return __src;
}

uint64_t sub_1006E6044(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  *(a1 + 8) = a1 + 16;
  *(a1 + 128) = 0;
  *(a1 + 120) = 0;
  *(a1 + 112) = a1 + 120;
  *(a1 + 136) = 0;
  *(a1 + 32) = dispatch_workloop_create("XPCServer");
  return a1;
}

BOOL sub_1006E60A0(void *a1)
{
  a1[13] = 0;
  v2 = dispatch_workloop_create("com.apple.server.bluetooth.le.att.xpc");
  a1[5] = v2;
  a1[9] = sub_1006E618C(a1, "com.apple.server.bluetooth.le.att.xpc", v2);
  v3 = dispatch_workloop_create("com.apple.server.bluetooth.le.pipe.xpc");
  a1[6] = v3;
  a1[10] = sub_1006E618C(a1, "com.apple.server.bluetooth.le.pipe.xpc", v3);
  v4 = dispatch_workloop_create("com.apple.server.bluetooth.general.xpc");
  a1[7] = v4;
  a1[11] = sub_1006E618C(a1, "com.apple.server.bluetooth.general.xpc", v4);
  v5 = dispatch_workloop_create("com.apple.server.bluetooth.classic.xpc");
  a1[8] = v5;
  v6 = sub_1006E618C(a1, "com.apple.server.bluetooth.classic.xpc", v5);
  a1[12] = v6;
  if (!a1[9] || !a1[10])
  {
    return 0;
  }

  if (a1[11])
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  return !v7;
}

_xpc_connection_s *sub_1006E618C(uint64_t a1, char *name, dispatch_queue_t targetq)
{
  mach_service = xpc_connection_create_mach_service(name, targetq, 1uLL);
  if (mach_service)
  {
    v6 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v10 = name;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Registering XPC service %{public}s", buf, 0xCu);
    }

    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100011ED0;
    v8[3] = &unk_100B08E20;
    v8[4] = a1;
    v8[5] = name;
    xpc_connection_set_event_handler(mach_service, v8);
    xpc_connection_resume(mach_service);
  }

  return mach_service;
}

void sub_1006E62B4(uint64_t a1)
{
  os_unfair_lock_lock(a1);
  v1 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "statedump: ------------------ XPC Server ------------------", buf, 2u);
  }

  v2 = *(a1 + 8);
  if (v2 != (a1 + 16))
  {
    do
    {
      v31 = 0;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      *buf = 0u;
      v26 = 0u;
      if (qword_100B50B88 != -1)
      {
        sub_100863ED8();
      }

      sub_1000ADBF0(qword_100B50B80, *(v2 + 8), buf, 0x64uLL);
      v3 = qword_100BCE950;
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
      {
        v4 = *(v2 + 10);
        *v21 = 136315394;
        v22 = buf;
        v23 = 1024;
        v24 = v4;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "statedump: process:%s numOfConnections:%d", v21, 0x12u);
      }

      v5 = v2[1];
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
          v6 = v2[2];
          v7 = *v6 == v2;
          v2 = v6;
        }

        while (!v7);
      }

      v2 = v6;
    }

    while (v6 != (a1 + 16));
  }

  os_unfair_lock_unlock(a1);
  os_unfair_lock_lock((a1 + 136));
  memset(buf, 0, sizeof(buf));
  *&v26 = 0;
  sub_1006E676C(buf, (a1 + 112));
  os_unfair_lock_unlock((a1 + 136));
  if (v26)
  {
    v8 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
    {
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "statedump: ", v21, 2u);
    }

    v9 = *buf;
    if (*buf != &buf[8])
    {
      v10 = qword_100BCE950;
      v11 = qword_100BCE950;
      do
      {
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = v9 + 32;
          if (v9[55] < 0)
          {
            v12 = *v12;
          }

          *v21 = 136315138;
          v22 = v12;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "statedump:     %s", v21, 0xCu);
          v10 = qword_100BCE950;
          v11 = qword_100BCE950;
        }

        v13 = *(v9 + 7);
        v14 = v10;
        if (v13 != v9 + 64)
        {
          do
          {
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              v15 = v13 + 32;
              if (v13[55] < 0)
              {
                v15 = *v15;
              }

              *v21 = 136315138;
              v22 = v15;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "statedump:           %s", v21, 0xCu);
              v10 = qword_100BCE950;
              v11 = qword_100BCE950;
            }

            else
            {
              v11 = v14;
            }

            v16 = *(v13 + 1);
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
                v17 = *(v13 + 2);
                v7 = *v17 == v13;
                v13 = v17;
              }

              while (!v7);
            }

            v14 = v11;
            v13 = v17;
          }

          while (v17 != v9 + 64);
        }

        v18 = *(v9 + 1);
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
            v19 = *(v9 + 2);
            v7 = *v19 == v9;
            v9 = v19;
          }

          while (!v7);
        }

        v9 = v19;
      }

      while (v19 != &buf[8]);
    }
  }

  sub_10005889C(buf, *&buf[8]);
}

void sub_1006E6664(uint64_t a1)
{
  sub_10004B61C(a1 + 24, *(a1 + 32));
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t sub_1006E6720(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_1006E6664(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void *sub_1006E676C(void *a1, const void ***a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_1006E67C4(a1, *a2, a2 + 1);
  return a1;
}

void *sub_1006E67C4(void *result, const void **a2, const void ***a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_1006E684C(v5, (v5 + 8), v4 + 4, (v4 + 4));
      v6 = v4[1];
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
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

void *sub_1006E684C(uint64_t **a1, void *a2, const void **a3, uint64_t a4)
{
  v9 = 0;
  v10 = 0;
  v4 = *sub_100086A74(a1, a2, &v10, &v9, a3);
  if (!v4)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    sub_1006E68EC();
  }

  return v4;
}

uint64_t **sub_1006E6964(uint64_t **__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100008904(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v4;
  }

  sub_100068968(__dst + 3, a2 + 3);
  return __dst;
}

void sub_1006E69C0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006E69DC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *(a1 + 40) = 0;
  *a1 = off_100B08E70;
  *(a1 + 48) = *(a2 + 48);
  sub_1006E5F04((a1 + 50), (a2 + 50));
  return a1;
}

uint64_t sub_1006E6A50(uint64_t a1, uint64_t a2, char a3)
{
  v9 = 0;
  sub_100016250(&v9);
  v6 = v9;
  v7 = SWORD2(v9);
  *(a1 + 8) = a2;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
  *a1 = off_100B08E70;
  *(a1 + 48) = a3;
  *(a1 + 49) = 0;
  sub_1000DE474(a1 + 50);
  return a1;
}

void *sub_1006E6AE4(void *a1)
{
  *a1 = off_100B08E70;
  nullsub_21();
  return a1;
}

void sub_1006E6B28(void *a1)
{
  *a1 = off_100B08E70;
  nullsub_21();

  operator delete();
}

uint64_t sub_1006E6B8C(uint64_t a1)
{
  *(a1 + 48) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  return sub_1006E5F18(a1 + 50);
}

_BYTE *sub_1006E6BA8(_BYTE *result, __n128 *a2)
{
  if ((result[49] & 1) == 0)
  {
    v3 = result;
    sub_1006E5F04((result + 50), a2);
    v3[49] = 1;
    v12 = 0;
    sub_1000216B4(&v12);
    v4 = *(v3 + 1);
    nullsub_21();
    v6 = v5;
    v7 = sub_1006E5FAC(a2);
    sub_1002FFB74(1, v4 + 128, v6, v7, v8, v9, v10, v11);
    return sub_10002249C(&v12);
  }

  return result;
}

_BYTE *sub_1006E6C48(_BYTE *result)
{
  if ((result[49] & 1) == 0)
  {
    v1 = result;
    result[49] = 1;
    v6 = 0;
    sub_1000216B4(&v6);
    sub_1002FFB74(0, *(v1 + 1) + 128, 0, 0, v2, v3, v4, v5);
    return sub_10002249C(&v6);
  }

  return result;
}

uint64_t sub_1006E6CC0(uint64_t a1, uint64_t a2, int a3, char a4, char a5)
{
  v13 = 0;
  sub_100016250(&v13);
  v10 = v13;
  v11 = SWORD2(v13);
  *(a1 + 8) = a2;
  *(a1 + 16) = v10;
  *(a1 + 24) = v11;
  *(a1 + 32) = 2;
  *(a1 + 40) = 0;
  *a1 = off_100B08EB8;
  *(a1 + 48) = a3;
  *(a1 + 52) = a4;
  *(a1 + 53) = a5;
  return a1;
}

__n128 sub_1006E6D5C(__n128 *a1, __n128 *a2)
{
  v2 = a2[2].n128_u32[0];
  a1->n128_u64[1] = a2->n128_u64[1];
  result = a2[1];
  a1[1] = result;
  a1[2].n128_u32[0] = v2;
  a1[2].n128_u64[1] = 0;
  a1->n128_u64[0] = off_100B08EB8;
  a1[3].n128_u32[0] = a2[3].n128_u32[0];
  a1[3].n128_u16[2] = a2[3].n128_u16[2];
  return result;
}

_BYTE *sub_1006E6DD8(uint64_t a1)
{
  v9 = 0;
  sub_1000216B4(&v9);
  sub_1002FE3C8(1, *(a1 + 8) + 128, v2, v3, v4, v5, v6, v7);
  return sub_10002249C(&v9);
}

_BYTE *sub_1006E6E40(uint64_t a1)
{
  v9 = 0;
  sub_1000216B4(&v9);
  sub_1002FE3C8(0, *(a1 + 8) + 128, v2, v3, v4, v5, v6, v7);
  return sub_10002249C(&v9);
}

uint64_t sub_1006E6EA0(uint64_t result)
{
  *(result + 8) = 0;
  *(result + 48) = 0;
  *(result + 52) = 1;
  return result;
}

uint64_t sub_1006E6EB4(uint64_t a1, uint64_t a2, int a3)
{
  v9 = 0;
  sub_100016250(&v9);
  v6 = v9;
  v7 = SWORD2(v9);
  *(a1 + 8) = a2;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = 3;
  *(a1 + 40) = 0;
  *a1 = off_100B08F00;
  *(a1 + 48) = a3;
  return a1;
}

__n128 sub_1006E6F38(__n128 *a1, __n128 *a2)
{
  v2 = a2[2].n128_u32[0];
  a1->n128_u64[1] = a2->n128_u64[1];
  result = a2[1];
  a1[1] = result;
  a1[2].n128_u32[0] = v2;
  a1[2].n128_u64[1] = 0;
  a1->n128_u64[0] = off_100B08F00;
  a1[3].n128_u32[0] = a2[3].n128_u32[0];
  return result;
}

uint64_t sub_1006E6F94(uint64_t result)
{
  *(result + 8) = 0;
  *(result + 48) = 0;
  return result;
}

_BYTE *sub_1006E6FA8(uint64_t a1)
{
  v8 = 0;
  sub_1000216B4(&v8);
  sub_1002FE734(*(a1 + 48) != 0, *(a1 + 8) + 128, *(a1 + 48), v2, v3, v4, v5, v6);
  return sub_10002249C(&v8);
}

_BYTE *sub_1006E7010(uint64_t a1)
{
  v8 = 0;
  sub_1000216B4(&v8);
  sub_1002FE734(0, *(a1 + 8) + 128, 0, v2, v3, v4, v5, v6);
  return sub_10002249C(&v8);
}

uint64_t sub_1006E707C(uint64_t a1)
{
  *a1 = off_100B08F48;
  *(a1 + 8) = off_100B08FA0;
  *(a1 + 16) = &off_100B08FC0;
  sub_100044BBC((a1 + 24));
  *(a1 + 88) = 0;
  sub_1000DE474(a1 + 89);
  *(a1 + 136) = 0;
  *(a1 + 128) = a1 + 136;
  *(a1 + 112) = 0;
  *(a1 + 144) = 0;
  *(a1 + 160) = 0;
  *(a1 + 152) = a1 + 160;
  *(a1 + 168) = 0;
  *(a1 + 184) = 0;
  *(a1 + 176) = a1 + 184;
  *(a1 + 208) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = a1 + 208;
  *(a1 + 216) = 0;
  *(a1 + 232) = 0;
  *(a1 + 224) = a1 + 232;
  *(a1 + 240) = 0;
  sub_100044BBC((a1 + 248));
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 334) = 0;
  sub_1006E5F20((a1 + 89), "0000");
  return a1;
}

void sub_1006E71D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, uint64_t a11, uint64_t a12)
{
  v22 = *v15;
  if (*v15)
  {
    *(v12 + 320) = v22;
    operator delete(v22);
  }

  sub_10007A068(v13 + 120);
  sub_1006EC9B0(v18, *v14);
  sub_10000CEDC(v17, *v16);
  sub_1006EC9B0(a11, *v21);
  sub_10000CEDC(a12, *v20);
  sub_10000CEDC(v13, *v19);
  nullsub_21();
  sub_10007A068(v12 + 24);
  _Unwind_Resume(a1);
}

uint64_t sub_1006E7254(uint64_t a1)
{
  *a1 = off_100B08F48;
  *(a1 + 8) = off_100B08FA0;
  *(a1 + 16) = &off_100B08FC0;
  v2 = *(a1 + 312);
  if (v2)
  {
    *(a1 + 320) = v2;
    operator delete(v2);
  }

  sub_10007A068(a1 + 248);
  sub_1006EC9B0(a1 + 224, *(a1 + 232));
  sub_10000CEDC(a1 + 200, *(a1 + 208));
  sub_1006EC9B0(a1 + 176, *(a1 + 184));
  sub_10000CEDC(a1 + 152, *(a1 + 160));
  sub_10000CEDC(a1 + 128, *(a1 + 136));
  nullsub_21();
  sub_10007A068(a1 + 24);
  return a1;
}

void sub_1006E733C(uint64_t a1)
{
  sub_1006E7254(a1);

  operator delete();
}

double sub_1006E7374(uint64_t a1)
{
  if (qword_100B50B88 != -1)
  {
    sub_100863F00();
  }

  sub_10051ABE0(qword_100B50B80 + 8, a1 + 8);
  if (qword_100B50AA0 != -1)
  {
    sub_100863F14();
  }

  sub_100312650(off_100B50A98 + 64, a1 + 16);
  if (qword_100B50AB0 != -1)
  {
    sub_100863F28();
  }

  (**off_100B50AA8)(off_100B50AA8);
  result = 0.0;
  *(a1 + 375) = 0u;
  *(a1 + 391) = 0u;
  *(a1 + 343) = 0u;
  *(a1 + 359) = 0u;
  return result;
}

uint64_t sub_1006E7440(uint64_t a1)
{
  if (qword_100B50B88 != -1)
  {
    sub_100863F00();
  }

  sub_10007A3F0(qword_100B50B80 + 8, a1 + 8);
  if (qword_100B50AA0 != -1)
  {
    sub_100863F14();
  }

  sub_10007A3F0(off_100B50A98 + 64, a1 + 16);
  if (qword_100B50AB0 != -1)
  {
    sub_100863F28();
  }

  v2 = *(*off_100B50AA8 + 8);

  return v2();
}

uint64_t sub_1006E7508(uint64_t a1)
{
  v36[0] = 0;
  v36[1] = 0;
  sub_100007F88(v36, a1 + 24);
  if ((*(a1 + 88) & 1) == 0)
  {
    *(a1 + 88) = 1;
    if (qword_100B50AA0 != -1)
    {
      sub_100863F3C();
    }

    sub_10009BE34(off_100B50A98, a1 + 336);
    sub_10000CEDC(a1 + 128, *(a1 + 136));
    *(a1 + 136) = 0;
    *(a1 + 144) = 0;
    *(a1 + 128) = a1 + 136;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v4 = sub_1000E2738(v2, v3);
    (**v4)(v4, &v33);
    v5 = v33;
    if (v33 != v34)
    {
      do
      {
        v32 = *v5;
        v31 = (v32[128] << 40) | (v32[129] << 32) | (v32[130] << 24) | (v32[131] << 16) | (v32[132] << 8) | v32[133];
        v47 = 0uLL;
        v48 = 0;
        v6 = sub_1006D1B74(&v47);
        v8 = sub_1000E2738(v6, v7);
        v9 = (*(*v8 + 48))(v8, a1 + 336, v32, &v47);
        if (v9 || BYTE6(v31) && (BYTE6(v31) != 1 || (v31 & 0xC00000000000) == 0x800000000000))
        {
          v10 = qword_100BCE940;
          if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
          {
            v23 = (v31 & 0xC00000000000) != 0x800000000000 && BYTE6(v31) == 1;
            *buf = 67109376;
            *&buf[4] = v9;
            if (!BYTE6(v31))
            {
              v23 = 1;
            }

            v38 = 1024;
            v39 = v23;
            _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Not link key, result %d, BTAddressIsValid %d", buf, 0xEu);
          }
        }

        else
        {
          v11 = v32;
          *buf = &v31;
          sub_1006ECA74(a1 + 128, &v31, &unk_1008A9BD0, buf)[5] = v11;
          *buf = &v32;
          v12 = sub_1006ECB44(a1 + 176, &v32, &unk_1008A9BD0, buf, v41);
          sub_1006D1B80((v12 + 5), &v47);
          v15 = sub_10042FE9C(v13, v14);
          sub_100416F50(v15, v32);
          *uu = 0;
          v46 = 0;
          if (qword_100B508D0 != -1)
          {
            sub_100863F64();
          }

          sub_1000498D4(off_100B508C8, (v32[128] << 40) | (v32[129] << 32) | (v32[130] << 24) | (v32[131] << 16) | (v32[132] << 8) | v32[133], 1u, 0, 0, 0, uu);
          if (!uuid_is_null(uu))
          {
            if (qword_100B508D0 != -1)
            {
              sub_100863F64();
            }

            v16 = off_100B508C8;
            v17 = sub_10004DF60(uu);
            v18 = sub_10004B1D8(v16, v17);

            if (v18)
            {
              *(v18 + 161) = 1;
            }

            if (qword_100B508D0 != -1)
            {
              sub_100863F64();
            }

            v19 = off_100B508C8;
            v20 = sub_10004DF60(uu);
            sub_100007E30(__p, "IsAppleWatch");
            if (sub_10004EB40(v19, v20, __p))
            {
              v21 = 1;
            }

            else
            {
              if (qword_100B508D0 != -1)
              {
                sub_100863F64();
              }

              v24 = off_100B508C8;
              v25 = sub_10004DF60(uu);
              v21 = sub_100788ED8(v24, v25);
            }

            if (v30 < 0)
            {
              operator delete(__p[0]);
            }

            if (v21)
            {
              v26 = qword_100BCE940;
              if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_INFO))
              {
                sub_1000E5A58(v32, buf);
                v27 = buf;
                if (v40 < 0)
                {
                  v27 = *buf;
                }

                *v41 = 136380931;
                v42 = v27;
                v43 = 2049;
                v44 = v32;
                _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "stackDidStart device %{private}s(%{private}p) isAppleWatch", v41, 0x16u);
                if (v40 < 0)
                {
                  operator delete(*buf);
                }
              }

              sub_100550394(v32, 1);
            }
          }
        }

        nullsub_21();
        ++v5;
      }

      while (v5 != v34);
    }

    *(a1 + 108) = 1;
    sub_1006E7AA4(a1);
    if (v33)
    {
      v34 = v33;
      operator delete(v33);
    }
  }

  return sub_1000088CC(v36);
}

void sub_1006E7A14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, char a24)
{
  nullsub_21();
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000088CC(&a24);
  _Unwind_Resume(a1);
}

uint64_t sub_1006E7AA4(uint64_t a1)
{
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 248);
  v4 = 0;
  v5 = 0;
  v6 = 0;
  sub_100007F20(&v4, (a1 + 312));
  sub_10000801C(v7);
  v2 = v4;
  if (v4 != v5)
  {
    do
    {
      (*(**v2 + 32))();
      v2 += 8;
    }

    while (v2 != v5);
    v2 = v4;
  }

  if (v2)
  {
    v5 = v2;
    operator delete(v2);
  }

  return sub_1000088CC(v7);
}

void sub_1006E7B58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1006E7B90(uint64_t a1)
{
  v2 = qword_100BCE940;
  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "SecurityManager::stackWillStop enter", buf, 2u);
  }

  *buf = 0;
  v12 = 0;
  sub_100007F88(buf, a1 + 24);
  v3 = *(a1 + 200);
  *(a1 + 88) = 0;
  v4 = (a1 + 208);
  if (v3 != (a1 + 208))
  {
    do
    {
      if (v3[5])
      {
        operator delete();
      }

      v5 = v3[1];
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
          v6 = v3[2];
          v7 = *v6 == v3;
          v3 = v6;
        }

        while (!v7);
      }

      v3 = v6;
    }

    while (v6 != v4);
  }

  sub_10000CEDC(a1 + 200, *(a1 + 208));
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 200) = v4;
  *(a1 + 343) = 0u;
  *(a1 + 359) = 0u;
  *(a1 + 375) = 0u;
  *(a1 + 391) = 0u;
  v8 = qword_100BCE940;
  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "SecurityManager::stackWillStop exit", v10, 2u);
  }

  return sub_1000088CC(buf);
}

BOOL sub_1006E7CFC(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1 + 24);
  if (*(a1 + 144))
  {
    v2 = 1;
  }

  else
  {
    v2 = *(a1 + 168) != 0;
  }

  sub_1000088CC(v4);
  return v2;
}

BOOL sub_1006E7D5C(uint64_t a1, uint64_t a2)
{
  v8[0] = 0;
  v8[1] = 0;
  v3 = sub_100007F88(v8, a1 + 24);
  v9[0] = 0;
  v9[1] = 0;
  v5 = sub_1000E2738(v3, v4);
  v6 = (*(*v5 + 96))(v5, a2, 0, v9) == 0;
  sub_1000088CC(v8);
  return v6;
}

uint64_t sub_1006E7E2C(uint64_t a1, unsigned __int8 *a2, __n128 *a3)
{
  v12[1] = 0;
  v13 = a2;
  v12[0] = 0;
  sub_100007F88(v12, a1 + 24);
  v6 = *(a1 + 136);
  if (v6)
  {
    v7 = (a2[128] << 40) | (a2[129] << 32) | (a2[130] << 24) | (a2[131] << 16) | (a2[132] << 8) | a2[133];
    do
    {
      v8 = v6[4];
      if (v7 >= v8)
      {
        if (v8 >= v7)
        {
          v15 = &v13;
          v10 = sub_1006ECB44(a1 + 176, &v13, &unk_1008A9BD0, &v15, &v14);
          sub_1006D1B80(a3, (v10 + 5));
          v9 = 0;
          goto LABEL_9;
        }

        ++v6;
      }

      v6 = *v6;
    }

    while (v6);
  }

  v9 = 150;
LABEL_9:
  sub_1000088CC(v12);
  return v9;
}

void sub_1006E7F18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1006E7F2C(uint64_t a1, unsigned __int8 *a2, __n128 *a3, char a4)
{
  v25 = a2;
  v24[0] = 0;
  v24[1] = 0;
  v8 = sub_100007F88(v24, a1 + 24);
  v10 = sub_1000E2738(v8, v9);
  v11 = (*(*v10 + 56))(v10, a1 + 336, a2, a3, 0);
  if (!v11)
  {
    v26 = &v25;
    v12 = sub_1006ECB44(a1 + 176, &v25, &unk_1008A9BD0, &v26, &v23);
    sub_1006D1B80((v12 + 5), a3);
    v13 = v25;
    v14 = (v13[128] << 40) | (v13[129] << 32) | (v25[130] << 24) | (v25[131] << 16) | v25[133] | (v25[132] << 8);
    v23 = v14;
    for (i = *(a1 + 136); i; i = *i)
    {
      v16 = i[4];
      if (v14 >= v16)
      {
        if (v16 >= v14)
        {
          goto LABEL_8;
        }

        ++i;
      }
    }

    v26 = &v23;
    sub_1006ECA74(a1 + 128, &v23, &unk_1008A9BD0, &v26)[5] = v13;
LABEL_8:
    sub_10000801C(v24);
    v19 = sub_100017F4C(v17, v18);
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1006E8100;
    v21[3] = &unk_100AE15D8;
    v21[4] = v25;
    v22 = a4;
    sub_10000CA94(v19, v21);
    v11 = 0;
  }

  sub_1000088CC(v24);
  return v11;
}

void sub_1006E80E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1006E8100(uint64_t a1)
{
  if (qword_100B512E8 != -1)
  {
    sub_100863F8C();
  }

  v2 = off_100B512E0;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return sub_1006E8158(v2, v3, v4);
}

uint64_t sub_1006E8158(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[0] = 0;
  v11[1] = 0;
  sub_100007F88(v11, a1 + 248);
  v8 = 0;
  v9 = 0;
  v10 = 0;
  sub_100007F20(&v8, (a1 + 312));
  sub_10000801C(v11);
  v6 = v8;
  if (v8 != v9)
  {
    do
    {
      (*(**v6 + 16))(*v6, a2, a3);
      ++v6;
    }

    while (v6 != v9);
    v6 = v8;
  }

  if (v6)
  {
    v9 = v6;
    operator delete(v6);
  }

  return sub_1000088CC(v11);
}

void sub_1006E8224(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1006E8254(uint64_t a1, unsigned __int8 *a2, int a3)
{
  v18[1] = 0;
  v19 = a2;
  v18[0] = 0;
  v6 = sub_100007F88(v18, a1 + 24);
  v8 = sub_1000E2738(v6, v7);
  v9 = (*(*v8 + 64))(v8, a1 + 336, a2);
  if (v9)
  {
    v10 = qword_100BCE940;
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
    {
      if (a2)
      {
        sub_1000E5A58(a2, __p);
        if (v17 >= 0)
        {
          v11 = __p;
        }

        else
        {
          v11 = __p[0];
        }

        *buf = 136446466;
        v21 = v11;
        v22 = 1024;
        v23 = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Failed to delete linkey for device %{public}s with error %d, but we'll keep unpairing", buf, 0x12u);
        if (v17 < 0)
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        *buf = 136446466;
        v21 = "NULL";
        v22 = 1024;
        v23 = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Failed to delete linkey for device %{public}s with error %d, but we'll keep unpairing", buf, 0x12u);
      }
    }
  }

  v12 = ((a2[128] << 40) | (a2[129] << 32) | (a2[130] << 24) | (a2[131] << 16) | (a2[132] << 8) | a2[133]);
  __p[0] = v12;
  for (i = *(a1 + 136); i; i = *i)
  {
    v14 = i[4];
    if (v12 >= v14)
    {
      if (v14 >= v12)
      {
        sub_100075DC4((a1 + 128), __p);
        break;
      }

      ++i;
    }
  }

  sub_1006ECDB0((a1 + 176), &v19);
  sub_1006E84E0(a1, v19);
  sub_10000801C(v18);
  if (!a3)
  {
    if (qword_100B50AB0 != -1)
    {
      sub_100863FA0();
    }

    sub_100558E48(off_100B50AA8, v19, 1);
  }

  sub_1006E8568(a1, v19);
  sub_1000088CC(v18);
  return 0;
}

void sub_1006E84BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1006E84E0(uint64_t result, unsigned __int8 *a2)
{
  v2 = (a2[128] << 40) | (a2[129] << 32) | (a2[130] << 24) | (a2[131] << 16) | (a2[132] << 8) | a2[133];
  v5 = v2;
  for (i = *(result + 160); i; i = *i)
  {
    v4 = i[4];
    if (v2 >= v4)
    {
      if (v4 >= v2)
      {
        return sub_100075DC4((result + 152), &v5);
      }

      ++i;
    }
  }

  return result;
}

uint64_t sub_1006E8568(uint64_t a1, uint64_t a2)
{
  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, a1 + 248);
  v6 = 0;
  v7 = 0;
  v8 = 0;
  sub_100007F20(&v6, (a1 + 312));
  sub_10000801C(v9);
  v4 = v6;
  if (v6 != v7)
  {
    do
    {
      (*(**v4 + 24))(*v4, a2);
      ++v4;
    }

    while (v4 != v7);
    v4 = v6;
  }

  if (v4)
  {
    v7 = v4;
    operator delete(v4);
  }

  return sub_1000088CC(v9);
}

void sub_1006E8624(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1006E8654(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[0] = 0;
  v10[1] = 0;
  v5 = sub_100007F88(v10, a1 + 24);
  v7 = sub_1000E2738(v5, v6);
  v8 = (*(*v7 + 8))(v7, a2, a3);
  sub_1000088CC(v10);
  return v8;
}

uint64_t sub_1006E86E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[0] = 0;
  v10[1] = 0;
  v5 = sub_100007F88(v10, a1 + 24);
  v7 = sub_1000E2738(v5, v6);
  v8 = (*(*v7 + 16))(v7, a2, a3);
  sub_1000088CC(v10);
  return v8;
}

uint64_t sub_1006E877C(uint64_t a1, uint64_t a2)
{
  v8[0] = 0;
  v8[1] = 0;
  v3 = sub_100007F88(v8, a1 + 24);
  v5 = sub_1000E2738(v3, v4);
  v6 = (*(*v5 + 24))(v5, a2);
  sub_1000088CC(v8);
  return v6;
}

uint64_t sub_1006E8808(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = sub_10000C798(a1, a2);
  if (!(*(*v4 + 368))(v4))
  {
    return 2;
  }

  result = 0;
  *(a1 + 108) = v2;
  return result;
}

uint64_t sub_1006E8870(void *a1, uint64_t a2)
{
  v19[0] = 0;
  v19[1] = 0;
  sub_100007F88(v19, (a1 + 31));
  v4 = a1[39];
  v5 = a1[40];
  v6 = v4;
  if (v4 != v5)
  {
    while (*v6 != a2)
    {
      if (++v6 == v5)
      {
        goto LABEL_6;
      }
    }
  }

  if (v6 == v5)
  {
LABEL_6:
    v7 = a1[41];
    if (v5 >= v7)
    {
      v9 = v5 - v4;
      if ((v9 + 1) >> 61)
      {
        sub_1000C7698();
      }

      v10 = v7 - v4;
      v11 = v10 >> 2;
      if (v10 >> 2 <= (v9 + 1))
      {
        v11 = v9 + 1;
      }

      if (v10 >= 0x7FFFFFFFFFFFFFF8)
      {
        v12 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v12 = v11;
      }

      if (v12)
      {
        sub_100008108((a1 + 39), v12);
      }

      v13 = (8 * v9);
      *v13 = a2;
      v8 = 8 * v9 + 8;
      v14 = a1[39];
      v15 = a1[40] - v14;
      v16 = v13 - v15;
      memcpy(v13 - v15, v14, v15);
      v17 = a1[39];
      a1[39] = v16;
      a1[40] = v8;
      a1[41] = 0;
      if (v17)
      {
        operator delete(v17);
      }
    }

    else
    {
      *v5 = a2;
      v8 = (v5 + 1);
    }

    a1[40] = v8;
  }

  return sub_1000088CC(v19);
}

uint64_t sub_1006E89A0(uint64_t a1, uint64_t a2)
{
  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, a1 + 248);
  v5 = *(a1 + 312);
  v4 = *(a1 + 320);
  if (v5 != v4)
  {
    v6 = *(a1 + 312);
    while (*v6 != a2)
    {
      v6 += 8;
      v5 += 8;
      if (v6 == v4)
      {
        v5 = *(a1 + 320);
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

    *(a1 + 320) = &v7[v5];
  }

  return sub_1000088CC(v9);
}

void sub_1006E8A44(uint64_t a1, __int128 *a2, __int128 *a3, __int128 *a4, __int128 *a5)
{
  v19[0] = 0;
  v19[1] = 0;
  sub_100007F88(v19, a1 + 24);
  v10 = (a1 + 343);
  v11 = &xmmword_100BC7038;
  if (a2)
  {
    v12 = a2;
  }

  else
  {
    v12 = &xmmword_100BC7038;
  }

  *v10 = *v12;
  v13 = (a1 + 359);
  if (a3)
  {
    v14 = a3;
  }

  else
  {
    v14 = &xmmword_100BC7038;
  }

  *v13 = *v14;
  v15 = (a1 + 375);
  if (a4)
  {
    v16 = a4;
  }

  else
  {
    v16 = &xmmword_100BC7038;
  }

  *v15 = *v16;
  v17 = (a1 + 391);
  if (a5)
  {
    v11 = a5;
  }

  *v17 = *v11;
  v18 = qword_100BCE940;
  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 141560835;
    v21 = 1752392040;
    v22 = 1041;
    v23 = 16;
    v24 = 2097;
    v25 = v10;
    v26 = 2160;
    v27 = 1752392040;
    v28 = 1041;
    v29 = 16;
    v30 = 2097;
    v31 = v13;
    v32 = 2160;
    v33 = 1752392040;
    v34 = 1041;
    v35 = 16;
    v36 = 2097;
    v37 = v15;
    v38 = 2160;
    v39 = 1752392040;
    v40 = 1041;
    v41 = 16;
    v42 = 2097;
    v43 = v17;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Received local OOB Data from the controller C192:%{private, mask.hash}.16P R192:%{private, mask.hash}.16P C256:%{private, mask.hash}.16P R256:%{private, mask.hash}.16P", buf, 0x6Au);
  }

  if (qword_100B50F88 != -1)
  {
    sub_100863FC8();
  }

  sub_1006DD2E8(off_100B50F80, v10, v13, v15, v17);
}

uint64_t sub_1006E8C38(uint64_t a1, unsigned __int8 *a2)
{
  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, a1 + 24);
  v4 = (a2[128] << 40) | (a2[129] << 32) | (a2[130] << 24) | (a2[131] << 16) | (a2[132] << 8) | a2[133];
  v8 = v4;
  for (i = *(a1 + 160); i; i = *i)
  {
    v6 = i[4];
    if (v4 >= v6)
    {
      if (v6 >= v4)
      {
        return sub_1000088CC(v9);
      }

      ++i;
    }
  }

  v10 = &v8;
  sub_1006ECA74(a1 + 152, &v8, &unk_1008A9BD0, &v10)[5] = a2;
  return sub_1000088CC(v9);
}

void sub_1006E8D00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1006E8D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[0] = 0;
  v12[1] = 0;
  v7 = sub_100007F88(v12, a1 + 24);
  v9 = sub_1000E2738(v7, v8);
  v10 = (*(*v9 + 88))(v9, a2, a3, a4);
  sub_1000088CC(v12);
  return v10;
}

__n128 sub_1006E8DB8(uint64_t a1, uint64_t a2, __n128 *a3, uint64_t a4, uint64_t a5)
{
  result.n128_u64[0] = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  if (!a4 || !a5 || *a4 == xmmword_100BC7038)
  {
    goto LABEL_15;
  }

  if (!a2 || *a5 == xmmword_100BC7038)
  {
    if (*a5 != xmmword_100BC7038)
    {
LABEL_14:
      v6 = 2;
      goto LABEL_25;
    }

LABEL_15:
    if (a2)
    {
      v6 = 0;
      if (!a3 || *a2 == xmmword_100BC7038)
      {
LABEL_25:
        *(a1 + 64) = v6;
        if (!a2)
        {
          goto LABEL_31;
        }

        goto LABEL_26;
      }

      if (a3->n128_u64[0] != xmmword_100BC7038 || a3->n128_u64[1] != *(&xmmword_100BC7038 + 1))
      {
        v8 = 1;
        goto LABEL_23;
      }
    }

    v6 = 0;
    goto LABEL_25;
  }

  v6 = 2;
  if (!a3 || *a2 == xmmword_100BC7038)
  {
    goto LABEL_25;
  }

  if (a3->n128_u64[0] == xmmword_100BC7038 && a3->n128_u64[1] == *(&xmmword_100BC7038 + 1))
  {
    goto LABEL_14;
  }

  v8 = 3;
LABEL_23:
  *(a1 + 64) = v8;
LABEL_26:
  if (*a2 != xmmword_100BC7038 || *(a2 + 8) != *(&xmmword_100BC7038 + 1))
  {
    result = *a2;
    *a1 = *a2;
  }

LABEL_31:
  if (a3)
  {
    if (a3->n128_u64[0] != xmmword_100BC7038 || a3->n128_u64[1] != *(&xmmword_100BC7038 + 1))
    {
      result = *a3;
      *(a1 + 16) = *a3;
    }
  }

  if (a4)
  {
    if (*a4 != xmmword_100BC7038 || *(a4 + 8) != *(&xmmword_100BC7038 + 1))
    {
      result = *a4;
      *(a1 + 32) = *a4;
    }
  }

  if (a5)
  {
    if (*a5 != xmmword_100BC7038 || *(a5 + 8) != *(&xmmword_100BC7038 + 1))
    {
      result = *a5;
      *(a1 + 48) = *a5;
    }
  }

  return result;
}

void sub_1006E8F3C(uint64_t a1, __int128 *a2, __int128 *a3)
{
  if (qword_100B512E8 != -1)
  {
    sub_100863F8C();
  }

  v5 = off_100B512E0;

  sub_1006E8A44(v5, a2, a3, 0, 0);
}

void sub_1006E8FA0(uint64_t a1, __int128 *a2, __int128 *a3, __int128 *a4, __int128 *a5)
{
  if (qword_100B512E8 != -1)
  {
    sub_100863F8C();
  }

  v9 = off_100B512E0;

  sub_1006E8A44(v9, a2, a3, a4, a5);
}

uint64_t sub_1006E9014(uint64_t a1, unint64_t a2, uint64_t a3, __n128 *a4, uint64_t a5, uint64_t a6)
{
  v20 = a2;
  v18 = *(a2 + 128);
  v19 = *(a2 + 132);
  v11 = qword_100BCE940;
  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000BE6F8(&v18, __p);
    v12 = v17 >= 0 ? __p : __p[0];
    *buf = 136449283;
    *&buf[4] = v12;
    v22 = 2160;
    v23 = 1752392040;
    v24 = 1041;
    v25 = 16;
    v26 = 2097;
    v27 = a3;
    v28 = 2160;
    v29 = 1752392040;
    v30 = 1041;
    v31 = 16;
    v32 = 2097;
    v33 = a4;
    v34 = 2160;
    v35 = 1752392040;
    v36 = 1041;
    v37 = 16;
    v38 = 2097;
    v39 = a5;
    v40 = 2160;
    v41 = 1752392040;
    v42 = 1041;
    v43 = 16;
    v44 = 2097;
    v45 = a6;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Setting OOB Data for device %{public}s C192:%{private, mask.hash}.16P R192:%{private, mask.hash}.16P C256:%{private, mask.hash}.16P R256:%{private, mask.hash}.16P", buf, 0x74u);
    if (v17 < 0)
    {
      operator delete(__p[0]);
    }
  }

  *buf = &v20;
  v13 = sub_10005E16C(a1 + 200, &v20, &unk_1008A9BD0, buf);
  if (!v13[5])
  {
    sub_10000C7D0(v13, v14);
    operator new();
  }

  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
  {
    sub_100863FF0();
  }

  return 177;
}

uint64_t sub_1006E9450(uint64_t a1, unint64_t a2)
{
  v10 = a2;
  v8 = *(a2 + 128);
  v9 = *(a2 + 132);
  v3 = qword_100BCE940;
  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000BE6F8(&v8, __p);
    v4 = v7 >= 0 ? __p : __p[0];
    *buf = 136446210;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Clearing OOB Data for device %{public}s", buf, 0xCu);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }
  }

  __p[0] = &v10;
  if (sub_10005E16C(a1 + 200, &v10, &unk_1008A9BD0, __p)[5])
  {
    operator delete();
  }

  sub_100075DC4((a1 + 200), &v10);
  return 0;
}

uint64_t sub_1006E9590(uint64_t a1)
{
  v2 = qword_100BCE940;
  v3 = os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Initiating read local OOB data from local controller", buf, 2u);
  }

  if (*(a1 + 88) == 1)
  {
    v5 = *(sub_10000C7D0(v3, v4) + 800);
    v15 = 0;
    sub_1000216B4(&v15);
    if ((v5 - 11) > 0x7C4)
    {
      v13 = sub_1002FCDA0(sub_1006E8F3C, v6, v7, v8, v9, v10, v11, v12);
      if (v13)
      {
        if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
        {
          sub_100864030();
        }

        goto LABEL_12;
      }
    }

    else
    {
      v13 = sub_1002FCE2C(sub_1006E8FA0, v6, v7, v8, v9, v10, v11, v12);
      if (v13)
      {
        if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
        {
          sub_1008640A0();
        }

LABEL_12:
        v13 = 1;
      }
    }

    sub_10002249C(&v15);
    return v13;
  }

  return 111;
}

void sub_1006E96DC(uint64_t a1, unint64_t a2)
{
  v17 = a2;
  v15 = *(a2 + 128);
  v16 = *(a2 + 132);
  v3 = qword_100BCE940;
  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000BE6F8(&v15, __p);
    v4 = v23 >= 0 ? __p : *__p;
    *buf = 136446210;
    *&buf[4] = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "OOB Data requested for device %{public}s", buf, 0xCu);
    if (SHIBYTE(v23) < 0)
    {
      operator delete(*__p);
    }
  }

  v14[0] = 0;
  v14[1] = 0;
  sub_100007F88(v14, a1 + 248);
  *__p = &v17;
  v5 = sub_10005E16C(a1 + 200, &v17, &unk_1008A9BD0, __p)[5];
  if (v5 && *(v5 + 64))
  {
    v6 = qword_100BCE940;
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000BE6F8(&v15, buf);
      if (v19 >= 0)
      {
        v9 = buf;
      }

      else
      {
        v9 = *buf;
      }

      *__p = 136449283;
      *&__p[4] = v9;
      v21 = 2160;
      v22 = 1752392040;
      v23 = 1041;
      v24 = 16;
      v25 = 2097;
      v26 = v5;
      v27 = 2160;
      v28 = 1752392040;
      v29 = 1041;
      v30 = 16;
      v31 = 2097;
      v32 = v5 + 16;
      v33 = 2160;
      v34 = 1752392040;
      v35 = 1041;
      v36 = 16;
      v37 = 2097;
      v38 = v5 + 32;
      v39 = 2160;
      v40 = 1752392040;
      v41 = 1041;
      v42 = 16;
      v43 = 2097;
      v44 = v5 + 48;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "OOB data found for device %{public}s C192:%{private, mask.hash}.16P R192:%{private, mask.hash}.16P C256:%{private, mask.hash}.16P R256:%{private, mask.hash}.16P", __p, 0x74u);
      if (v19 < 0)
      {
        operator delete(*buf);
      }
    }

    sub_1002FEE28(1, v17 + 128, v5, v5 + 16, v5 + 32, v5 + 48, v7, v8);
    sub_1000088CC(v14);
  }

  else
  {
    sub_1000088CC(v14);
    v10 = qword_100BCE940;
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000BE6F8(&v15, __p);
      v13 = v23 >= 0 ? __p : *__p;
      *buf = 136446210;
      *&buf[4] = v13;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "No OOB data found for device %{public}s", buf, 0xCu);
      if (SHIBYTE(v23) < 0)
      {
        operator delete(*__p);
      }
    }

    sub_1002FEE28(0, v17 + 128, 0, 0, 0, 0, v11, v12);
  }
}

uint64_t sub_1006E9A10(uint64_t a1, uint64_t a2)
{
  v4 = qword_100BCE940;
  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "oobDataForDeviceAvailable", buf, 2u);
  }

  if (qword_100B508F0 != -1)
  {
    sub_100864110();
  }

  *buf = *a2;
  *&buf[4] = *(a2 + 4);
  v5 = sub_1000E6554(off_100B508E8, buf, 1);
  if (!v5)
  {
    return 0;
  }

  v6 = qword_100BCE940;
  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 141558531;
    *&buf[4] = 1752392040;
    *&buf[12] = 1041;
    *&buf[14] = 6;
    v19 = 2097;
    v20 = a2;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "oobDataForDeviceAvailable device %{private, mask.hash}.6P is valid", buf, 0x1Cu);
  }

  *buf = 0;
  *&buf[8] = 0;
  sub_100007F88(buf, a1 + 248);
  v9 = *(a1 + 208);
  v8 = a1 + 208;
  v7 = v9;
  if (!v9)
  {
    goto LABEL_16;
  }

  v10 = v8;
  do
  {
    v11 = *(v7 + 32);
    v12 = v11 >= v5;
    v13 = v11 < v5;
    if (v12)
    {
      v10 = v7;
    }

    v7 = *(v7 + 8 * v13);
  }

  while (v7);
  if (v10 != v8 && v5 >= *(v10 + 32))
  {
    v14 = *(*(v10 + 40) + 64);
  }

  else
  {
LABEL_16:
    v14 = 0;
  }

  v15 = qword_100BCE940;
  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
  {
    v17[0] = 67109120;
    v17[1] = v14;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "oobDataForDeviceAvailable = %d", v17, 8u);
  }

  sub_1000088CC(buf);
  return v14;
}

uint64_t sub_1006E9C24(void *a1)
{
  v2 = qword_100BCE940;
  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: ----------------- Security Manager ------------------", buf, 2u);
    v2 = qword_100BCE940;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    sub_1006E5FB4(buf, (a1 + 89));
    if (SBYTE3(v27) >= 0)
    {
      v3 = buf;
    }

    else
    {
      v3 = *buf;
    }

    *v28 = 136315138;
    v29 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: Default pincode: %s", v28, 0xCu);
    if (SBYTE3(v27) < 0)
    {
      operator delete(*buf);
    }

    v2 = qword_100BCE940;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: Paired devices:", buf, 2u);
  }

  v4 = a1[16];
  if (v4 != a1 + 17)
  {
    do
    {
      v5 = qword_100BCE940;
      if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(v4[5], buf);
        v6 = SBYTE3(v27) >= 0 ? buf : *buf;
        *v28 = 136446210;
        v29 = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "statedump:    Device %{public}s", v28, 0xCu);
        if (SBYTE3(v27) < 0)
        {
          operator delete(*buf);
        }
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
    }

    while (v8 != a1 + 17);
  }

  v10 = qword_100BCE940;
  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "statedump: Generated local OOB data:", buf, 2u);
    v10 = qword_100BCE940;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 141558531;
    *&buf[4] = 1752392040;
    v24 = 1041;
    v25 = 16;
    v26 = 2097;
    v27 = a1 + 343;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "statedump: \tC192:%{private, mask.hash}.16P", buf, 0x1Cu);
    v10 = qword_100BCE940;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 141558531;
    *&buf[4] = 1752392040;
    v24 = 1041;
    v25 = 16;
    v26 = 2097;
    v27 = a1 + 359;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "statedump: \tR192:%{private, mask.hash}.16P", buf, 0x1Cu);
    v10 = qword_100BCE940;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 141558531;
    *&buf[4] = 1752392040;
    v24 = 1041;
    v25 = 16;
    v26 = 2097;
    v27 = a1 + 375;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "statedump:    C256:%{private, mask.hash}.16P", buf, 0x1Cu);
    v10 = qword_100BCE940;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 141558531;
    *&buf[4] = 1752392040;
    v24 = 1041;
    v25 = 16;
    v26 = 2097;
    v27 = a1 + 391;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "statedump:    R256:%{private, mask.hash}.16P", buf, 0x1Cu);
    v10 = qword_100BCE940;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "statedump: OOB data for devices:", buf, 2u);
    v10 = qword_100BCE940;
  }

  v11 = a1[25];
  if (v11 != a1 + 26)
  {
    do
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(v11[4], buf);
        v12 = buf;
        if (SBYTE3(v27) < 0)
        {
          v12 = *buf;
        }

        *v28 = 136446210;
        v29 = v12;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "statedump:    %{public}s:", v28, 0xCu);
        if (SBYTE3(v27) < 0)
        {
          operator delete(*buf);
        }

        v10 = qword_100BCE940;
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v13 = v11[5];
        *buf = 141558531;
        *&buf[4] = 1752392040;
        v24 = 1041;
        v25 = 16;
        v26 = 2097;
        v27 = v13;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "statedump:      C192:%{private, mask.hash}.16P", buf, 0x1Cu);
        v10 = qword_100BCE940;
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v14 = v11[5] + 16;
        *buf = 141558531;
        *&buf[4] = 1752392040;
        v24 = 1041;
        v25 = 16;
        v26 = 2097;
        v27 = v14;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "statedump:      R192:%{private, mask.hash}.16P", buf, 0x1Cu);
        v10 = qword_100BCE940;
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v15 = v11[5] + 32;
        *buf = 141558531;
        *&buf[4] = 1752392040;
        v24 = 1041;
        v25 = 16;
        v26 = 2097;
        v27 = v15;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "statedump:      C256:%{private, mask.hash}.16P", buf, 0x1Cu);
        v10 = qword_100BCE940;
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v16 = v11[5] + 48;
        *buf = 141558531;
        *&buf[4] = 1752392040;
        v24 = 1041;
        v25 = 16;
        v26 = 2097;
        v27 = v16;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "statedump:      R256:%{private, mask.hash}.16P", buf, 0x1Cu);
        v10 = qword_100BCE940;
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
          v9 = *v18 == v11;
          v11 = v18;
        }

        while (!v9);
      }

      v11 = v18;
    }

    while (v18 != a1 + 26);
  }

  v19 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v19)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "statedump: Security keys:", buf, 2u);
  }

  v21 = sub_1000E2738(v19, v20);
  return (*(*v21 + 184))(v21);
}

uint64_t sub_1006EA328(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v22[0] = 0;
  v22[1] = 0;
  sub_100007F88(v22, a1 + 24);
  if (!*(a1 + 112))
  {
    *(a1 + 120) = a2;
    error = 0;
    if (*(a4 + 23) >= 0)
    {
      v10 = a4;
    }

    else
    {
      v10 = *a4;
    }

    v11 = CFStringCreateWithCString(kCFAllocatorDefault, v10, 0x600u);
    if (*(a5 + 23) >= 0)
    {
      v12 = a5;
    }

    else
    {
      v12 = *a5;
    }

    v13 = CFStringCreateWithCString(kCFAllocatorDefault, v12, 0x600u);
    v14 = CFStringCreateWithCString(kCFAllocatorDefault, "Allow", 0x600u);
    v15 = CFStringCreateWithCString(kCFAllocatorDefault, "Don't Allow", 0x600u);
    keys[0] = kCFUserNotificationAlertHeaderKey;
    keys[1] = kCFUserNotificationAlertMessageKey;
    keys[2] = kCFUserNotificationAlternateButtonTitleKey;
    keys[3] = kCFUserNotificationDefaultButtonTitleKey;
    values[0] = v11;
    values[1] = v13;
    values[2] = v14;
    values[3] = v15;
    v16 = CFDictionaryCreate(kCFAllocatorDefault, keys, values, 4, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v17 = CFUserNotificationCreate(kCFAllocatorDefault, a3, 3uLL, &error, v16);
    *(a1 + 112) = v17;
    RunLoopSource = CFUserNotificationCreateRunLoopSource(kCFAllocatorDefault, v17, sub_1006EA56C, 0);
    if (RunLoopSource)
    {
      Main = CFRunLoopGetMain();
      CFRunLoopAddSource(Main, RunLoopSource, kCFRunLoopCommonModes);
      CFRelease(RunLoopSource);
    }

    else
    {
      CFUserNotificationCancel(v17);
      CFRelease(v17);
    }

    CFRelease(v16);
    CFRelease(v11);
    CFRelease(v13);
  }

  return sub_1000088CC(v22);
}

void sub_1006EA538(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1006EA56C(uint64_t a1, uint64_t a2)
{
  if (qword_100B512E8 != -1)
  {
    sub_100863F8C();
  }

  v3 = off_100B512E0;

  return sub_1006EA5C0(v3, a2, a2);
}

uint64_t sub_1006EA5C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12[0] = 0;
  v12[1] = 0;
  sub_100007F88(v12, a1 + 24);
  v5 = qword_100BCE940;
  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
  {
    v6 = "unknown";
    v7 = *(a1 + 120);
    *buf = 136447235;
    if (!a3)
    {
      v6 = "disallow";
    }

    if (a3 == 1)
    {
      v6 = "allow";
    }

    v14 = v6;
    v15 = 2048;
    v16 = a3;
    v17 = 2160;
    v18 = 1752392040;
    v19 = 1041;
    v20 = 6;
    v21 = 2097;
    v22 = v7 + 128;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "User responded to security alert notification with %{public}s (%ld) button for device %{private,bluetooth:BD_ADDR,mask.hash}.6P", buf, 0x30u);
  }

  if (!a3)
  {
    v8 = 2;
    goto LABEL_11;
  }

  if (a3 == 1)
  {
    v8 = 1;
LABEL_11:
    sub_10053CFFC(*(a1 + 120), v8);
    goto LABEL_14;
  }

  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
  {
    sub_100864138();
  }

LABEL_14:
  v10 = *(a1 + 112);
  v9 = (a1 + 112);
  CFRelease(v10);
  *v9 = 0;
  v9[1] = 0;
  return sub_1000088CC(v12);
}

void sub_1006EA75C(int *a1)
{
  if (qword_100B508F0 != -1)
  {
    sub_1000DE460();
  }

  v3 = *a1;
  v4 = *(a1 + 2);
  v2 = sub_1000E6554(off_100B508E8, &v3, 1);
  if (qword_100B512E8 != -1)
  {
    sub_100864178();
  }

  sub_1006E96DC(off_100B512E0, v2);
}

void sub_1006EA80C(uint64_t a1)
{
  v2 = qword_100BCE940;
  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 141558531;
    v4 = 1752392040;
    v5 = 1041;
    v6 = 6;
    v7 = 2097;
    v8 = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Secure-Simple-Pairing has started on device %{private,bluetooth:BD_ADDR,mask.hash}.6P", &v3, 0x1Cu);
  }
}

void sub_1006EA8D4(uint64_t a1, uint64_t a2)
{
  if (qword_100B508F0 != -1)
  {
    sub_1000DE460();
  }

  LODWORD(__p[0]) = *a1;
  WORD2(__p[0]) = *(a1 + 4);
  v4 = sub_1000E6554(off_100B508E8, __p, 1);
  v5 = qword_100BCE940;
  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
  {
    if (v4)
    {
      sub_1000E5A58(v4, __p);
      if (v10 >= 0)
      {
        v6 = __p;
      }

      else
      {
        v6 = __p[0];
      }

      *buf = 67109378;
      v12 = a2;
      v13 = 2082;
      v14 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Pairing has completed with result %{bluetooth:OI_STATUS}u on device %{public}s", buf, 0x12u);
      if (v10 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      *buf = 67109378;
      v12 = a2;
      v13 = 2082;
      v14 = "NULL";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Pairing has completed with result %{bluetooth:OI_STATUS}u on device %{public}s", buf, 0x12u);
    }
  }

  if (a2)
  {
    if (qword_100B50F88 != -1)
    {
      sub_100863FC8();
    }

    v7 = off_100B50F80;
    if (qword_100B50AA0 != -1)
    {
      sub_100863F3C();
    }

    v8 = sub_1000DD584(off_100B50A98, a2, 10000);
    sub_1000E5328(v7, v4, v8);
  }
}

void sub_1006EAAB4(uint64_t a1)
{
  v2 = qword_100BCE940;
  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 141558531;
    v6 = 1752392040;
    v7 = 1041;
    v8 = 6;
    v9 = 2097;
    v10 = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Received IO Capability request for device %{private,bluetooth:BD_ADDR,mask.hash}.6P", &v5, 0x1Cu);
  }

  if (qword_100B512E8 != -1)
  {
    sub_100864178();
  }

  v3 = *(off_100B512E0 + 108);
  v4 = sub_1006E9A10(off_100B512E0, a1);
  sub_1002FF43C(0, a1, v3, v4);
}

BOOL sub_1006EABC0(int *a1, uint64_t a2)
{
  v4 = qword_100BCE940;
  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 141558531;
    v14 = 1752392040;
    v15 = 1041;
    v16 = 6;
    v17 = 2097;
    v18 = a1;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Link key requested for device %{private,bluetooth:BD_ADDR,mask.hash}.6P", buf, 0x1Cu);
  }

  if (qword_100B508F0 != -1)
  {
    sub_100864110();
  }

  *buf = *a1;
  LOWORD(v14) = *(a1 + 2);
  v5 = sub_1000E6554(off_100B508E8, buf, 1);
  v11 = 0uLL;
  v12 = 0;
  sub_1006D1B74(&v11);
  if (qword_100B512E8 != -1)
  {
    sub_100864178();
  }

  if (!sub_1006E7E2C(off_100B512E0, v5, &v11))
  {
    v6 = *a1;
    *(a2 + 4) = *(a1 + 2);
    *a2 = v6;
    nullsub_21();
    *(a2 + 6) = *v7;
    *(a2 + 24) = sub_1006D1BC0(&v11);
    v8 = qword_100BCE940;
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 141558531;
      v14 = 1752392040;
      v15 = 1041;
      v16 = 6;
      v17 = 2097;
      v18 = a1;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Found link key for device %{private,bluetooth:BD_ADDR,mask.hash}.6P", buf, 0x1Cu);
    }
  }

  v9 = sub_1006D1BDC(&v11);
  nullsub_21();
  return !v9;
}

void sub_1006EADE0(uint64_t a1, __n128 *a2, unsigned __int32 a3)
{
  if (qword_100B508F0 != -1)
  {
    sub_1000DE460();
  }

  *v10 = *a1;
  *&v10[4] = *(a1 + 4);
  v6 = sub_1000E6554(off_100B508E8, v10, 1);
  v13 = 0uLL;
  v14 = 0;
  sub_1006D1BB0(&v13, a2, a3);
  if (qword_100B512E8 != -1)
  {
    sub_100864178();
  }

  v7 = sub_1006E7F2C(off_100B512E0, v6, &v13, 0);
  v8 = qword_100BCE940;
  if (v7)
  {
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
    {
      sub_1008641A0();
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 141558531;
      *&v10[4] = 1752392040;
      *&v10[12] = 1041;
      *&v10[14] = 6;
      v11 = 2097;
      v12 = a1;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "New link key created for device %{private,bluetooth:BD_ADDR,mask.hash}.6P", v10, 0x1Cu);
    }

    sub_1000DEEA4(v6, v10);
    if (SBYTE3(v12) < 0)
    {
      v9 = *&v10[8];
      operator delete(*v10);
      if (v9)
      {
        goto LABEL_17;
      }
    }

    else if (BYTE3(v12))
    {
      goto LABEL_17;
    }

    if (qword_100B50DB8 != -1)
    {
      sub_100864210();
    }

    sub_1005C76B8(off_100B50DB0, v6);
  }

LABEL_17:
  nullsub_21();
}

void sub_1006EAFDC(uint64_t a1)
{
  if (qword_100B508F0 != -1)
  {
    sub_1000DE460();
  }

  LODWORD(__p[0]) = *a1;
  WORD2(__p[0]) = *(a1 + 4);
  v2 = sub_1000E6554(off_100B508E8, __p, 1);
  v3 = qword_100BCE940;
  if (v2)
  {
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(v2, __p);
      v4 = v11 >= 0 ? __p : __p[0];
      *buf = 136446210;
      v13 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Received a new pincode request for device %{public}s", buf, 0xCu);
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v5 = sub_1002413D0(a1);
    if (v5)
    {
      if (qword_100B508F0 != -1)
      {
        sub_100864110();
      }

      sub_10056B7FC(off_100B508E8, v2, v5);
      sub_1000DEEA4(v2, __p);
      if (v11 < 0)
      {
        v6 = v5 & 0x1F00;
        v7 = __p[1];
        operator delete(__p[0]);
        if (v6 != 256 || v7)
        {
          goto LABEL_26;
        }
      }

      else if ((v5 & 0x1F00) != 0x100 || v11)
      {
        goto LABEL_26;
      }

      v8 = qword_100BCE940;
      if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(__p[0]) = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Pairing request coming from a computer without a name - try and get the name", __p, 2u);
      }

      if (qword_100B50DB8 != -1)
      {
        sub_100864210();
      }

      sub_1005C76B8(off_100B50DB0, v2);
    }

LABEL_26:
    if (qword_100B50F88 != -1)
    {
      sub_100863FC8();
    }

    v9 = off_100B50F80;
    sub_1006E6AE0(__p, v2, 4);
    sub_1006DD018(v9, __p);
  }

  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
  {
    sub_100864238();
  }
}

void sub_1006EB260(uint64_t a1, int a2, int a3, char a4)
{
  if (qword_100B508F0 != -1)
  {
    sub_1000DE460();
  }

  LODWORD(__p[0]) = *a1;
  WORD2(__p[0]) = *(a1 + 4);
  v7 = sub_1000E6554(off_100B508E8, __p, 1);
  v8 = qword_100BCE940;
  if (v7)
  {
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
    {
      v9 = a3 ? "numeric comparison" : "user confirmation";
      sub_1000E5A58(v7, __p);
      v10 = v17 >= 0 ? __p : __p[0];
      *buf = 136315394;
      v19 = v9;
      v20 = 2082;
      v21 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received a new %s request for device %{public}s", buf, 0x16u);
      if (v17 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v11 = sub_1002413D0(a1);
    if (v11)
    {
      if (qword_100B508F0 != -1)
      {
        sub_100864110();
      }

      sub_10056B7FC(off_100B508E8, v7, v11);
      sub_1000DEEA4(v7, __p);
      if (v17 < 0)
      {
        v12 = __p[1];
        operator delete(__p[0]);
        if ((v11 & 0x1F00) != 0x100 || v12)
        {
          goto LABEL_29;
        }
      }

      else if ((v11 & 0x1F00) != 0x100 || v17)
      {
        goto LABEL_29;
      }

      v13 = qword_100BCE940;
      if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(__p[0]) = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Pairing request coming from a computer without a name - try and get the name", __p, 2u);
      }

      if (qword_100B50DB8 != -1)
      {
        sub_100864210();
      }

      sub_1005C76B8(off_100B50DB0, v7);
    }

LABEL_29:
    if (qword_100B50F88 != -1)
    {
      sub_100863FC8();
    }

    v14 = off_100B50F80;
    sub_1006E6CC0(__p, v7, a2, a3, a4);
    sub_1006DD108(v14, __p);
  }

  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
  {
    sub_100864238();
  }
}

void sub_1006EB524(uint64_t a1)
{
  v2 = qword_100BCE940;
  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 141558531;
    v9 = 1752392040;
    v10 = 1041;
    v11 = 6;
    v12 = 2097;
    v13 = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Received a passkey request for device %{private,bluetooth:BD_ADDR,mask.hash}.6P", &v8, 0x1Cu);
  }

  sub_1002FE734(0, a1, 0, v3, v4, v5, v6, v7);
}

void sub_1006EB5FC(uint64_t a1, int a2)
{
  v4 = qword_100BCE940;
  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 141558787;
    v6 = 1752392040;
    v7 = 1041;
    v8 = 6;
    v9 = 2097;
    v10 = a1;
    v11 = 1024;
    v12 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Received key-press request for device %{private,bluetooth:BD_ADDR,mask.hash}.6P with type %d", &v5, 0x22u);
  }
}

void sub_1006EB6DC(uint64_t a1, int a2)
{
  if (qword_100B508F0 != -1)
  {
    sub_1000DE460();
  }

  LODWORD(__p[0]) = *a1;
  WORD2(__p[0]) = *(a1 + 4);
  v4 = sub_1000E6554(off_100B508E8, __p, 1);
  v5 = qword_100BCE940;
  if (v4)
  {
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(v4, __p);
      v6 = v9 >= 0 ? __p : __p[0];
      *buf = 136446210;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received a new passkey display request for device %{public}s", buf, 0xCu);
      if (v9 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (qword_100B50F88 != -1)
    {
      sub_100863FC8();
    }

    v7 = off_100B50F80;
    sub_1006E6EB4(__p, v4, a2);
    sub_1006DD1F8(v7, __p);
  }

  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
  {
    sub_100864238();
  }
}

void sub_1006EB87C(int a1, uint64_t a2)
{
  v4 = qword_100BCE940;
  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 141558787;
    v6 = 1752392040;
    v7 = 1041;
    v8 = 6;
    v9 = 2097;
    v10 = a2;
    v11 = 1024;
    v12 = a1;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Received encryption refresh for device %{private,bluetooth:BD_ADDR,mask.hash}.6P with status %{bluetooth:OI_STATUS}u", &v5, 0x22u);
  }
}

void sub_1006EB95C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = qword_100BCE940;
  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 141559299;
    *v16 = 1752392040;
    *&v16[8] = 1041;
    v17 = 6;
    v18 = 2097;
    v19 = a2;
    v20 = 1024;
    v21 = a1;
    v22 = 1024;
    v23 = a3;
    v24 = 1024;
    v25 = a4;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received encryption change for device %{private,bluetooth:BD_ADDR,mask.hash}.6P with status %{bluetooth:OI_STATUS}u mode:%d keySize:%d", &v15, 0x2Eu);
  }

  if (a2)
  {
    if (qword_100B508F0 != -1)
    {
      sub_100864110();
    }

    v15 = *a2;
    *v16 = *(a2 + 4);
    v9 = sub_1000E6554(off_100B508E8, &v15, 1);
    if (v9)
    {
      v10 = v9;
      if (qword_100B50F88 != -1)
      {
        sub_100863FC8();
      }

      sub_1006DEEA8(off_100B50F80, v10, a1, a3);
      if (a3 && a4 != 255)
      {
        if (!sub_10053CC6C(v10))
        {
          v11 = qword_100BCE940;
          if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
          {
            v15 = 67109120;
            *v16 = a4;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Initializing EncryptionKeySize to %d", &v15, 8u);
          }

          sub_10053CCBC(v10, a4);
        }

        if (!sub_10053CE34(v10))
        {
          v12 = qword_100BCE940;
          if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
          {
            v15 = 67109120;
            *v16 = a3;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Initializing EncryptionMode to %d", &v15, 8u);
          }

          sub_10053CE84(v10, a3);
        }

        if (!sub_1006EBD64(v10, a2, a4) && !sub_1006EBF8C(v10, a2, a3))
        {
          sub_10053CCBC(v10, a4);
          sub_10053CE84(v10, a3);
          sub_1006EC0AC(v10, a2, a4);
        }

        return;
      }

      v13 = qword_100BCE940;
      if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 67109376;
        *v16 = a3;
        *&v16[4] = 1024;
        *&v16[6] = a4;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "_encryptChange: Skipping setEncryptionKeySize setEncryptionMode. encryptionMode = %d, keySize = %d", &v15, 0xEu);
      }
    }

    if (!a1 && a3)
    {
      if (qword_100B508F0 != -1)
      {
        sub_100864110();
      }

      v15 = *a2;
      *v16 = *(a2 + 4);
      v14 = sub_1000E6554(off_100B508E8, &v15, 1);
      if (sub_10024DF64(sub_1006EC61C, v14 + 128))
      {
        if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
        {
          sub_1008642A8();
        }
      }

      else if (v14 && sub_1006EBF8C(v14, a2, a3))
      {
        sub_10053CE84(v14, a3);
      }
    }
  }
}

uint64_t sub_1006EBD64(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v6 = sub_10053CDEC(a1);
  v7 = v6;
  v9 = sub_10000F034(v6, v8);
  v11 = v7 > a3 && v7 != 255 && a3 < 7;
  (*(*v9 + 680))();
  if (!v11)
  {
    return 0;
  }

  v12 = qword_100BCE940;
  v13 = os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR);
  if (v13)
  {
    v21 = 141559043;
    v22 = 1752392040;
    v23 = 1041;
    v24 = 6;
    v25 = 2097;
    v26 = a2;
    v27 = 1024;
    v28 = v7;
    v29 = 1024;
    v30 = a3;
    _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Encryption key size downgraded for device %{private,bluetooth:BD_ADDR,mask.hash}.6P from %u to %u. Disconnecting device.", &v21, 0x28u);
  }

  v15 = sub_10000C798(v13, v14);
  v16 = (*(*v15 + 352))(v15);
  if ((v16 & 1) != 0 || (v18 = sub_10000C798(v16, v17), (*(*v18 + 416))(v18)))
  {
    v19 = sub_10000E92C();
    if ((*(*v19 + 8))(v19))
    {
      sub_100304C44();
    }
  }

  sub_10023BD60(a1 + 128);
  return 181;
}

uint64_t sub_1006EBF8C(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v6 = sub_10053CFB4(a1);
  result = 0;
  if (v6 > a3 && v6 != 255)
  {
    v8 = qword_100BCE940;
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
    {
      v9 = 141559043;
      v10 = 1752392040;
      v11 = 1041;
      v12 = 6;
      v13 = 2097;
      v14 = a2;
      v15 = 1024;
      v16 = v6;
      v17 = 1024;
      v18 = a3;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Encryption mode downgraded for device %{private,bluetooth:BD_ADDR,mask.hash}.6P from %u to %u. Disconnecting device.", &v9, 0x28u);
    }

    sub_10023BD60(a1 + 128);
    return 181;
  }

  return result;
}

void sub_1006EC0AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 <= 6)
  {
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
    {
      sub_100864318();
    }

    v5 = sub_10053D064(a1);
    if (v5)
    {
      if (v5 == 2)
      {
        v7 = qword_100BCE940;
        if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 141558531;
          *&buf[4] = 1752392040;
          *&buf[12] = 1041;
          *&buf[14] = 6;
          *&buf[18] = 2097;
          *&buf[20] = a2;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "User has disallowed to connect to the low security device %{private,bluetooth:BD_ADDR,mask.hash}.6P", buf, 0x1Cu);
        }

        sub_10023BD60(a1 + 128);
      }

      else if (v5 == 1)
      {
        v6 = qword_100BCE940;
        if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 141558531;
          *&buf[4] = 1752392040;
          *&buf[12] = 1041;
          *&buf[14] = 6;
          *&buf[18] = 2097;
          *&buf[20] = a2;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "User has allowed to connect to the low security device %{private,bluetooth:BD_ADDR,mask.hash}.6P", buf, 0x1Cu);
        }
      }
    }

    else
    {
      v8 = qword_100BCE940;
      if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 141558531;
        *&buf[4] = 1752392040;
        *&buf[12] = 1041;
        *&buf[14] = 6;
        *&buf[18] = 2097;
        *&buf[20] = a2;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Show security alert to user for the low security device %{private,bluetooth:BD_ADDR,mask.hash}.6P", buf, 0x1Cu);
      }

      v9 = sub_10023BD60(a1 + 128);
      memset(buf, 0, 24);
      v11 = sub_10000C798(v9, v10);
      v12 = (*(*v11 + 352))(v11);
      if (v12)
      {
        v14 = sub_10000C798(v12, v13);
        v15 = (*(*v14 + 400))(v14);
        if (v15)
        {
          v17 = "iPod";
        }

        else
        {
          v18 = sub_10000C798(v15, v16);
          if ((*(*v18 + 392))(v18))
          {
            v17 = "iPad";
          }

          else
          {
            v17 = "iPhone";
          }
        }

        std::string::assign(buf, v17);
        v37 = 0uLL;
        v38 = 0;
        sub_1000DEEA4(a1, &v32);
        v19 = std::string::insert(&v32, 0, "");
        v20 = *&v19->__r_.__value_.__l.__data_;
        v33.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
        *&v33.__r_.__value_.__l.__data_ = v20;
        v19->__r_.__value_.__l.__size_ = 0;
        v19->__r_.__value_.__r.__words[2] = 0;
        v19->__r_.__value_.__r.__words[0] = 0;
        v21 = std::string::append(&v33, "");
        v22 = *&v21->__r_.__value_.__l.__data_;
        v34.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
        *&v34.__r_.__value_.__l.__data_ = v22;
        v21->__r_.__value_.__l.__size_ = 0;
        v21->__r_.__value_.__r.__words[2] = 0;
        v21->__r_.__value_.__r.__words[0] = 0;
        v23 = std::string::append(&v34, " is trying to connect using an unsecured Bluetooth connection. Unsecured Bluetooth accessories can be used to control your ");
        v24 = *&v23->__r_.__value_.__l.__data_;
        v35.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
        *&v35.__r_.__value_.__l.__data_ = v24;
        v23->__r_.__value_.__l.__size_ = 0;
        v23->__r_.__value_.__r.__words[2] = 0;
        v23->__r_.__value_.__r.__words[0] = 0;
        if (buf[23] >= 0)
        {
          v25 = buf;
        }

        else
        {
          v25 = *buf;
        }

        if (buf[23] >= 0)
        {
          v26 = buf[23];
        }

        else
        {
          v26 = *&buf[8];
        }

        v27 = std::string::append(&v35, v25, v26);
        v28 = *&v27->__r_.__value_.__l.__data_;
        v36.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
        *&v36.__r_.__value_.__l.__data_ = v28;
        v27->__r_.__value_.__l.__size_ = 0;
        v27->__r_.__value_.__r.__words[2] = 0;
        v27->__r_.__value_.__r.__words[0] = 0;
        v29 = std::string::append(&v36, " or gain access to your data.");
        v30 = *&v29->__r_.__value_.__l.__data_;
        v38 = v29->__r_.__value_.__r.__words[2];
        v37 = v30;
        v29->__r_.__value_.__l.__size_ = 0;
        v29->__r_.__value_.__r.__words[2] = 0;
        v29->__r_.__value_.__r.__words[0] = 0;
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

        if (qword_100B512E8 != -1)
        {
          sub_100864178();
        }

        v31 = off_100B512E0;
        sub_100007E30(&v36, "Unsecured Bluetooth Connection Request");
        sub_1006EA328(v31, a1, 0, &v36, &v37);
        if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v36.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v38) < 0)
        {
          operator delete(v37);
        }
      }

      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }
  }
}

void sub_1006EC550(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (a42 < 0)
  {
    operator delete(__p);
  }

  if (*(v42 - 105) < 0)
  {
    operator delete(*(v42 - 128));
  }

  if (*(v42 - 73) < 0)
  {
    operator delete(*(v42 - 96));
  }

  _Unwind_Resume(exception_object);
}

void sub_1006EC61C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
    {
      sub_10086439C();
    }
  }

  else
  {
    v9 = 0;
    v8 = 0;
    sub_10023DC00(a2, &v8);
    if (qword_100B508F0 != -1)
    {
      sub_100864110();
    }

    v6 = v8;
    v7 = v9;
    v4 = sub_1000E6554(off_100B508E8, &v6, 1);
    if (v4)
    {
      v5 = v4;
      if (sub_1006EBD64(v4, &v8, a3))
      {
        sub_10053CCBC(v5, a3);
        sub_1006EC0AC(v5, &v8, a3);
      }
    }
  }
}

uint64_t sub_1006EC70C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12[0] = a1;
  v12[1] = a2;
  v25 = xmmword_1008A5370;
  v4 = sub_100238000(v12);
  v11[1] = &v25;
  v11[0] = 1048579;
  if (a3)
  {
    if (qword_100B508F0 != -1)
    {
      sub_100864110();
    }

    *buf = *a3;
    LOWORD(v14) = *(a3 + 4);
    v5 = 1;
    v6 = sub_1000E6554(off_100B508E8, buf, 1);
    if (v6)
    {
      v5 = sub_10053E600(v6);
    }
  }

  else
  {
    v5 = 1;
  }

  v7 = 0;
  if (v5 && (v4 - 4099) <= 0xFFFFFFFC)
  {
    if (sub_100237F64(v12, v11))
    {
      v7 = 0;
    }

    else
    {
      v7 = 2;
    }
  }

  v8 = qword_100BCE940;
  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 1752392040;
    v9 = "not enforcing";
    v15 = 1041;
    *buf = 141559299;
    v16 = 6;
    if (v5)
    {
      v9 = "enforcing";
    }

    v17 = 2097;
    v18 = a3;
    v19 = 1024;
    v20 = v4;
    v21 = 1024;
    v22 = v7;
    v23 = 2080;
    v24 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Device %{private,bluetooth:BD_ADDR,mask.hash}.6P running UUID 0x%x has security level %d and %s", buf, 0x32u);
  }

  return v7;
}

void sub_1006EC9B0(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1006EC9B0(a1, *a2);
    sub_1006EC9B0(a1, a2[1]);
    nullsub_21();

    operator delete(a2);
  }
}

void *sub_1006ECA74(uint64_t a1, unint64_t *a2, uint64_t a3, void **a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
LABEL_8:
    operator new();
  }

  v5 = *a2;
  while (1)
  {
    while (1)
    {
      v6 = v4;
      v7 = v4[4];
      if (v5 >= v7)
      {
        break;
      }

      v4 = *v6;
      if (!*v6)
      {
        goto LABEL_8;
      }
    }

    if (v7 >= v5)
    {
      return v6;
    }

    v4 = v6[1];
    if (!v4)
    {
      goto LABEL_8;
    }
  }
}

void *sub_1006ECB44(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 8);
  if (!v5)
  {
LABEL_8:
    v10 = 0;
    v11 = 0;
    v12 = 0;
    sub_1006ECC14();
  }

  v6 = *a2;
  while (1)
  {
    while (1)
    {
      v7 = v5;
      v8 = v5[4];
      if (v6 >= v8)
      {
        break;
      }

      v5 = *v7;
      if (!*v7)
      {
        goto LABEL_8;
      }
    }

    if (v8 >= v6)
    {
      return v7;
    }

    v5 = v7[1];
    if (!v5)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_1006ECC94(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      nullsub_21();
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_1006ECDB0(uint64_t **a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a1 + 1;
  do
  {
    v5 = v2[4];
    v6 = v5 >= v3;
    v7 = v5 < v3;
    if (v6)
    {
      v4 = v2;
    }

    v2 = v2[v7];
  }

  while (v2);
  if (v4 == a1 + 1 || v3 < v4[4])
  {
    return 0;
  }

  sub_10002717C(a1, v4);
  nullsub_21();
  operator delete(v4);
  return 1;
}

uint64_t sub_1006ECF0C(uint64_t a1, uint64_t a2, __int16 a3)
{
  *a1 = &off_100B09178;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 37) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  sub_1006ECF98(a1);
  *(a1 + 16) = a3;
  *(a1 + 8) = a2;
  return a1;
}

void sub_1006ECF7C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 72);
  if (v3)
  {
    *(v1 + 80) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006ECF98(uint64_t a1)
{
  v2 = mach_absolute_time();
  *(a1 + 52) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = v2;
  *(a1 + 49) = 0;
  if (qword_100B50940 != -1)
  {
    sub_10086440C();
  }

  v3 = 0;
  if (sub_10062FF34(off_100B50938, 0, 0))
  {
    if (qword_100B50940 != -1)
    {
      sub_10086440C();
    }

    sub_10063005C(off_100B50938, v5);
    v3 = v5[1];
    if (v5[0])
    {
      sub_1003A898C(v5[0], a1);
      goto LABEL_9;
    }
  }

  v4 = qword_100BCE8D0;
  if (!os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
  {
LABEL_9:
    if (!v3)
    {
      return;
    }

    goto LABEL_10;
  }

  sub_100864420(v4);
  if (!v3)
  {
    return;
  }

LABEL_10:
  sub_100117644(v3);
}

void sub_1006ED078(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100117644(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006ED094(uint64_t a1)
{
  *a1 = &off_100B09178;
  sub_1006ED10C(a1);
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  v2 = *(a1 + 72);
  if (v2)
  {
    *(a1 + 80) = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_1006ED0F0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 72);
  if (v3)
  {
    *(v1 + 80) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006ED10C(uint64_t a1)
{
  *(a1 + 20) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  if (qword_100B50940 != -1)
  {
    sub_10086440C();
  }

  v2 = 0;
  v3 = 0;
  sub_10063005C(off_100B50938, &v2);
  if (v2)
  {
    sub_10007A3F0(v2 + 128, a1);
  }

  if (qword_100B50940 != -1)
  {
    sub_100864464();
  }

  sub_10063007C(off_100B50938, 0, 0);
  if (v3)
  {
    sub_100117644(v3);
  }
}

void sub_1006ED1B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100117644(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006ED1D0(uint64_t a1)
{
  sub_1006ED094(a1);

  operator delete();
}

uint64_t sub_1006ED208(uint64_t result)
{
  v1 = *(result + 18);
  if ((v1 + 1) <= 0x63u)
  {
    v2 = v1 + 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 18) = v2;
  return result;
}

void sub_1006ED224(uint64_t a1, uint64_t a2, int a3)
{
  v5 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Audio Timesync: TimeSync Notification %d ", v6, 8u);
  }

  *(a1 + 49) = a3;
}

BOOL sub_1006ED2D8(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = a2 > a3 || a2 > a4;
  if (v5)
  {
    v9 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 134218496;
      v12 = a2;
      v13 = 2048;
      v14 = a3;
      v15 = 2048;
      v16 = a4;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Warning: Audio Timesync: Audio Tx complete Timestamp wrapped Previous TS=%llu First in the queue TS=%llu Last in the Queue TS=%llu", &v11, 0x20u);
    }
  }

  return v5;
}

void sub_1006ED3C0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v5 = *(a1 + 18);
  if (*(a1 + 18))
  {
    v8 = a2;
    v17 = 0;
    v18 = 0;
    if (qword_100B50940 != -1)
    {
      sub_10086440C();
    }

    v10 = sub_10063005C(off_100B50938, &v17);
    if (v17 && (a4 & 0x80) == 0 && (*(a1 + 49) & 1) != 0)
    {
      sub_1006ED660(a1, v8, 0, 0, a5, 0, v5);
    }

    else
    {
      if (*(a1 + 24) != 0.0)
      {
        sub_1006ED58C(v10, *(a1 + 16), 0, 0);
        *(a1 + 32) = 0;
        *(a1 + 24) = 0;
      }

      v11 = qword_100BCE8D0;
      if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
      {
        v12 = "No";
        if (*(a1 + 49))
        {
          v13 = "Yes";
        }

        else
        {
          v13 = "No";
        }

        *buf = 136446722;
        v20 = v13;
        if (a4 < 0)
        {
          v12 = "Yes";
        }

        v21 = 1024;
        v22 = v5;
        v23 = 2082;
        v24 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Warning: Audio Timesync: Audio Tx not processed, Timesync Engine Ready=%{public}s number of enqueued pacekts=%u, overflow: %{public}s", buf, 0x1Cu);
      }

      v14 = *(a1 + 18);
      v15 = v14 >= v5;
      v16 = v14 - v5;
      if (v15)
      {
        *(a1 + 18) = v16;
      }
    }

    if (v18)
    {
      sub_100117644(v18);
    }
  }
}

void sub_1006ED56C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100117644(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006ED58C(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if (a3)
  {
    v4 = 1;
  }

  else
  {
    v4 = a4 == 0;
  }

  v5 = v4;
  if (v4)
  {
    v6 = a4;
    v8 = a2;
    v9 = sub_1000DAB84(a1, a2);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1006EE06C;
    v13[3] = &unk_100AFEBE0;
    v15 = v8;
    v14 = a3;
    v16 = v6;
    sub_10000CA94(v9, v13);
  }

  else
  {
    v10 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
    {
      sub_10086448C(v10);
    }
  }

  return v5;
}

_BYTE *sub_1006ED660(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, unsigned int a7)
{
  v38 = 0;
  sub_1000216B4(&v38);
  v11 = sub_1000E1FE8(*(a1 + 8) + 128);
  sub_100022214(&v38);
  if (v11)
  {
    v12 = *v11;
  }

  else
  {
    v12 = 0xFFFF;
  }

  if (a2)
  {
    v13 = 0;
    do
    {
      v14 = *(a5 + 4);
      if (v12 == v14)
      {
        v15 = *(a1 + 80);
        v16 = *(a1 + 88);
        if (v15 >= v16)
        {
          v21 = *(a1 + 72);
          v22 = 0x2E8BA2E8BA2E8BA3 * (v15 - v21);
          v23 = v22 + 1;
          if ((v22 + 1) > 0x1745D1745D1745D1)
          {
            sub_1000C7698();
          }

          v24 = 0x2E8BA2E8BA2E8BA3 * (v16 - v21);
          if (2 * v24 > v23)
          {
            v23 = 2 * v24;
          }

          if (v24 >= 0xBA2E8BA2E8BA2E8)
          {
            v25 = 0x1745D1745D1745D1;
          }

          else
          {
            v25 = v23;
          }

          if (v25)
          {
            sub_1006EEA88(a1 + 72, v25);
          }

          v26 = 11 * v22;
          v27 = *a5;
          *(v26 + 7) = *(a5 + 7);
          *v26 = v27;
          v18 = 11 * v22 + 11;
          v28 = *(a1 + 72);
          v29 = *(a1 + 80) - v28;
          v30 = 11 * v22 - v29;
          memcpy((v26 - v29), v28, v29);
          v31 = *(a1 + 72);
          *(a1 + 72) = v30;
          *(a1 + 80) = v18;
          *(a1 + 88) = 0;
          if (v31)
          {
            operator delete(v31);
          }
        }

        else
        {
          v17 = *a5;
          *(v15 + 7) = *(a5 + 7);
          *v15 = v17;
          v18 = v15 + 11;
        }

        *(a1 + 80) = v18;
      }

      else
      {
        v19 = qword_100BCE8D0;
        if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
        {
          v20 = *a5;
          *buf = 67109376;
          v40 = v14;
          v41 = 2048;
          v42 = v20;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Warning: Audio Timesync: Invalid LinkID received ID=%x TS=%llu", buf, 0x12u);
        }
      }

      a5 = (a5 + 11);
      ++v13;
    }

    while (a2 > v13);
  }

  *buf = 0;
  v32 = sub_1006ED94C(a1, *(a1 + 16), (a1 + 72), a7, buf);
  v34 = *(a1 + 16);
  if (v32)
  {
    v33.n128_u32[0] = *buf;
    sub_1006EDD50(a1, v34, v33);
  }

  else
  {
    sub_1006ED58C(v32, v34, 0, 0);
    v35 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Audio Timesync: update average audio transmit time not ready, reset the modifier", v37, 2u);
    }
  }

  return sub_10002249C(&v38);
}

uint64_t sub_1006ED94C(uint64_t a1, uint64_t a2, unint64_t **a3, uint64_t a4, float *a5)
{
  v5 = a4;
  v9 = *a3;
  v8 = a3[1];
  if (0x2E8BA2E8BA2E8BA3 * (v8 - *a3) >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = -29789 * (v8 - *a3);
  }

  if (v10 && (*(a1 + 48) & 1) != 0)
  {
    v12 = a2;
    v32 = 0;
    v13 = *v9;
    v14 = *(v8 - 11);
    v15 = sub_1006ED2D8(a1, *(a1 + 40), v13, v14);
    if (v15)
    {
      if (a3[1] != *a3)
      {
        a3[1] = *a3;
      }

      if (*(a1 + 18))
      {
        if (*(a1 + 24) != 0.0)
        {
          sub_1006ED58C(v15, *(a1 + 16), 0, 0);
          *(a1 + 32) = 0;
          *(a1 + 24) = 0;
        }

        v16 = qword_100BCE8D0;
        if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Warning: Audio Timesync: Dynamic Audio Delivery wrapped around, resetting", buf, 2u);
        }

        v17 = 0;
        *(a1 + 40) = 0;
        *(a1 + 18) = 0;
        *(a1 + 48) = 0;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v30 = 0;
      v31 = 0;
      if (qword_100B50940 != -1)
      {
        sub_10086440C();
      }

      sub_10063005C(off_100B50938, &v30);
      if (v30 && sub_1003A9484(v30, v14, &v32))
      {
        if (!*(a1 + 32))
        {
          *buf = 0;
          if (sub_1003A9484(v30, v13, buf))
          {
            *(a1 + 32) = *buf;
          }
        }

        if (qword_100B50940 != -1)
        {
          sub_100864464();
        }

        v23 = sub_10062EB2C(off_100B50938, v32 - *(a1 + 32), 2) / v10;
        *a5 = v23;
        if (v23 > 250000.0)
        {
          sub_1006EDDFC(a1, v12, a3, v5);
        }

        v17 = 1;
      }

      else
      {
        v17 = 0;
      }

      v24 = *(a1 + 18);
      if (v24 >= v10)
      {
        LOWORD(v24) = v24 - v10;
        *(a1 + 18) = v24;
      }

      if (*(a1 + 52))
      {
        v25 = qword_100BCE8D0;
        if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
        {
          v26 = *a5;
          v27 = 0x2E8BA2E8BA2E8BA3 * (a3[1] - *a3);
          if (v17)
          {
            v28 = 84;
          }

          else
          {
            v28 = 70;
          }

          *buf = 134219008;
          *&buf[4] = v26;
          v34 = 1024;
          v35 = v5;
          v36 = 2048;
          v37 = v27;
          v38 = 1024;
          v39 = v24;
          v40 = 1024;
          v41 = v28;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Audio Timesync: Audio Delivery  Average Time=%f, Pending Packets=%d, Tx Completed Tx=%lu, Queue depth=%d, status=%c", buf, 0x28u);
        }
      }

      if (*a3 != a3[1])
      {
        a3[1] = *a3;
      }

      v29 = v31;
      *(a1 + 32) = v32;
      *(a1 + 40) = v14;
      if (v29)
      {
        sub_100117644(v29);
      }
    }
  }

  else
  {
    if (v8 != v9)
    {
      a3[1] = v9;
      v8 = v9;
    }

    v17 = *(a1 + 48);
    if ((v17 & 1) == 0)
    {
      v18 = qword_100BCE8D0;
      if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218498;
        *&buf[4] = 0x2E8BA2E8BA2E8BA3 * (v8 - v9);
        v34 = 1024;
        v35 = v5;
        v36 = 2080;
        v37 = "No";
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Audio Timesync: Number of packets in queue not yet in sync with Tx complete Tx completed=%lu Enqueued Packets=%d Sync =%s", buf, 0x1Cu);
      }
    }

    v19 = *(a1 + 18);
    v20 = v19 >= v5;
    v21 = v19 - v5;
    if (v20)
    {
      *(a1 + 18) = v21;
    }

    *(a1 + 48) = 1;
  }

  return v17;
}

void sub_1006EDD28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100117644(a11);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_1006EDD50(uint64_t a1, uint64_t a2, __n128 a3)
{
  v3 = a3.n128_f32[0];
  v4 = a2;
  ++*(a1 + 50);
  *(a1 + 20) = *(a1 + 20) + a3.n128_f32[0];
  sub_1006EE2F8(a1, a2, a3.n128_f32[0]);
  if (*(a1 + 50) == 2)
  {
    *(a1 + 24) = *(a1 + 20) * 0.5;
    *(a1 + 20) = 0;
    *(a1 + 50) = 0;
  }

  if (qword_100B50940 != -1)
  {
    sub_10086440C();
  }

  v6 = off_100B50938;

  return sub_100630BC8(v6, v4, v3);
}

void sub_1006EDDFC(uint64_t a1, int a2, uint64_t *a3, int a4)
{
  v8 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 24);
    v10 = *(a1 + 20);
    v11 = *(a1 + 50);
    v12 = *(a1 + 32);
    *buf = 67110400;
    v25 = a2;
    v26 = 1024;
    v27 = a4;
    v28 = 2048;
    v29 = v9;
    v30 = 2048;
    v31 = v10;
    v32 = 1024;
    LODWORD(v33[0]) = v11;
    WORD2(v33[0]) = 2048;
    *(v33 + 6) = v12;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Audio Timesync: Handle=%d, Enqueued Packets=%d Previous Average=%f Current Total Tx time=%f updated count=%d Previous TS=%llu", buf, 0x32u);
  }

  v13 = *(a1 + 32);
  v22 = 0;
  v23 = 0;
  if (qword_100B50940 != -1)
  {
    sub_100864464();
  }

  sub_10063005C(off_100B50938, &v22);
  if (v22)
  {
    for (i = *a3; i != a3[1]; i += 11)
    {
      v21 = 0.0;
      sub_1003A9484(v22, *i, &v21);
      v15 = qword_100BCE8D0;
      if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
      {
        v16 = *(i + 8);
        v17 = *(i + 10);
        v18 = *i;
        v19 = v21;
        if (qword_100B50940 != -1)
        {
          sub_100864464();
        }

        v20 = sub_10062EB2C(off_100B50938, *&v21 - *&v13, 2);
        *buf = 67110144;
        v25 = v16;
        v26 = 1024;
        v27 = v17;
        v28 = 2048;
        v29 = *&v18;
        v30 = 2048;
        v31 = v19;
        v32 = 2048;
        v33[0] = v20;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Audio Timesync: Link=%d Status=%d Time=%llu Translated Time=%llu delta=%f", buf, 0x2Cu);
      }

      v13 = v21;
    }
  }

  if (v23)
  {
    sub_100117644(v23);
  }
}

uint64_t sub_1006EE06C(uint64_t a1)
{
  if (qword_100B50AE0 != -1)
  {
    sub_1008644D0();
  }

  v2 = qword_100B50AD8;
  v3 = *(a1 + 36);
  v4 = *(a1 + 32);
  v5 = *(a1 + 38);

  return sub_1004DD59C(v2, v3, v4, v5);
}

BOOL sub_1006EE0C8(uint64_t a1, int a2, float a3)
{
  if (qword_100B50940 != -1)
  {
    sub_10086440C();
  }

  v6 = sub_10062CF44(off_100B50938, a2);
  if (*(a1 + 18) < 8u)
  {
    return 0;
  }

  v7 = v6;
  result = *(a1 + 24) < a3;
  if (result & v7)
  {
    v9 = qword_100BCE8D0;
    result = os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT);
    if (result)
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Audio Timesync: Low Latency Mode enabled Timesync paused", v10, 2u);
      return 0;
    }
  }

  return result;
}

uint64_t sub_1006EE198(uint64_t a1, float a2, float a3)
{
  if (a2 <= a3)
  {
    return 0;
  }

  v3 = (a2 - a3) / 1000.0;
  v4 = (v3 * 10.0);
  if (v4 >= 0x97)
  {
    v9 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 134217984;
      v12[0] = v3;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Audio Timesync: Packet Tx Delta High Delta=%fMSec", &v11, 0xCu);
    }

    return 0;
  }

  if (v4 >= 0x3C)
  {
    v6 = 60;
  }

  else
  {
    v6 = v4;
  }

  v7 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 18);
    v11 = 67109376;
    LODWORD(v12[0]) = v8;
    WORD2(v12[0]) = 2048;
    *(v12 + 6) = v3;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Audio Timesync: Starting Timesync speed adjust, Current enqueue count=%d Average A2DP Tx Time in Msec =% f", &v11, 0x12u);
  }

  return v6;
}

void sub_1006EE2F8(uint64_t result, uint64_t a2, float a3)
{
  if (!*(result + 52) && *(result + 24) != 0.0)
  {
    if (qword_100B50940 != -1)
    {
      sub_10086440C();
    }

    if ((sub_10062CF3C(off_100B50938, a2) & 1) == 0 && sub_1006EE0C8(result, a2, a3))
    {
      v6 = sub_1006EE198(result, a3, *(result + 24));
      if (v6)
      {
        v7 = v6;
        *(result + 28) = 0;
        *(result + 56) = mach_absolute_time();
        *(result + 30) = v7;

        sub_1006EE3E4(result, a2, 1, v7);
      }
    }
  }
}

void sub_1006EE3E4(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v8 = sub_1006ED58C(a1, a2, 0, 0);
  if (a3 == 2)
  {
    sub_1006ED58C(v8, a2, 2, a4);
    *(a1 + 28) = 0;
  }

  else if (a3 == 1)
  {
    sub_1006ED58C(v8, a2, 1, a4);
    *(a1 + 28) += a4;
  }

  *(a1 + 52) = a3;
  v9 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 18);
    v11[0] = 67109632;
    v11[1] = a3;
    v12 = 1024;
    v13 = v10;
    v14 = 1024;
    v15 = a4;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Audio Timesync: Audio Delivery Speed Direction=%d, Pending packets=%d Steps=%d", v11, 0x14u);
  }
}

void sub_1006EE508(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v8 = qword_100BCE8D0;
  v9 = os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    v10 = *(a1 + 18);
    *buf = 67109120;
    v16 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Audio Timesync: delay audio speedup, Pending packets=%d", buf, 8u);
  }

  sub_1006ED58C(v9, a3, 0, 0);
  v11 = dispatch_time(0, 1000000 * a4);
  if (qword_100B50940 != -1)
  {
    sub_100864464();
  }

  v12 = *(off_100B50938 + 32);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1006EE670;
  block[3] = &unk_100AE0EF8;
  block[4] = a1;
  block[5] = a2;
  v14 = a3;
  dispatch_after(v11, v12, block);
}

void sub_1006EE670(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (qword_100B50940 != -1)
  {
    sub_10086440C();
  }

  if (sub_100630CD4(off_100B50938, *(a1 + 40)))
  {
    v3 = *(a1 + 48);

    sub_1006EE6E4(v2, v3);
  }
}

void sub_1006EE6E4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 18);
  v5 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 52);
    v7 = *(a1 + 28);
    v16[0] = 67109376;
    v16[1] = v6;
    v17 = 1024;
    v18 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Audio Timesync: Speed Update Complete current State = %d Slowdown duration = %d ", v16, 0xEu);
  }

  v8 = *(a1 + 52);
  if (*(a1 + 52))
  {
    if (v8 == 2)
    {
      *(a1 + 56) = 0;
      v11 = a1;
      v12 = a2;
      v13 = 0;
      v14 = 0;
    }

    else
    {
      if (v8 != 1)
      {
        return;
      }

      if (qword_100B50940 != -1)
      {
        sub_100864464();
      }

      if (sub_10062D060(off_100B50938, a2))
      {
        v9 = 120;
      }

      else
      {
        v9 = 60;
      }

      if (v9 <= *(a1 + 28) || v4 < 8)
      {
        sub_1006EE890(a1, a2);
        return;
      }

      v14 = *(a1 + 30);
      v11 = a1;
      v12 = a2;
      v13 = 1;
    }

    sub_1006EE3E4(v11, v12, v13, v14);
  }

  else
  {
    v15 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16[0]) = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Audio Timesync: Should not reach here", v16, 2u);
    }
  }
}

void sub_1006EE890(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 18);
  v5 = *(a1 + 64);
  if (qword_100B50940 != -1)
  {
    sub_10086440C();
  }

  v6 = off_100B50938;
  v7 = mach_absolute_time();
  v8 = sub_10062EB2C(v6, v7 - *(a1 + 56), 0);
  if (v4 >= 8 && v8 < 5.0)
  {

    sub_1006EE508(a1, v5, a2, 0x1F4u);
  }

  else
  {
    v10 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 18);
      v12[0] = 67109376;
      v12[1] = v11;
      v13 = 2048;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Audio Timesync: Speedup %d [%f]", v12, 0x12u);
    }

    sub_1006EE3E4(a1, a2, 2, *(a1 + 28));
  }
}

void sub_1006EEA88(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1745D1745D1745D2)
  {
    operator new();
  }

  sub_1000C7698();
}

void *sub_1006EEB4C(uint64_t a1)
{
  result = sub_100589578(a1, "WirelessCarplayService", 0x40000);
  *result = &off_100B091E0;
  return result;
}

void sub_1006EEB90(uint64_t a1)
{
  sub_100589670(a1);

  operator delete();
}

uint64_t sub_1006EEBC8(uint64_t a1, uint64_t a2)
{
  v15 = 0;
  v14 = 0;
  v18 = xmmword_1008C4ED0;
  memset(v19, 0, sizeof(v19));
  v17 = xmmword_1008C4EE0;
  v4 = sub_10054BE34(a2, v19, &v15);
  if (v15)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    LOBYTE(v13) = 0;
    AppBooleanValue = CFPreferencesGetAppBooleanValue(@"EnableBLE", @"com.apple.carplay", &v13);
    if (v13 && AppBooleanValue && !sub_10024A9C0(v19, 64660, &v14))
    {
      v9 = 2;
    }

    else
    {
      if (sub_10024AB64(v19, &v18, &v14, v7) && sub_10024AB64(v19, &v17, &v14, v8))
      {
        v9 = 0;
        v10 = 0;
LABEL_15:
        sub_10054FF18(a2, v9);
        goto LABEL_16;
      }

      v9 = 1;
    }

    v10 = 4;
    goto LABEL_15;
  }

  v10 = 0;
LABEL_16:
  v11 = *(a1 + 32);
  v16 = 0;
  sub_100016250(&v16);
  *&v13 = v16;
  *(&v13 + 1) = SWORD2(v16);
  return sub_100539554(a2, v11, v10, &v13, 0);
}

uint64_t sub_1006EED5C(uint64_t a1, unsigned __int8 *a2, _BYTE *a3)
{
  memset(v12, 0, sizeof(v12));
  v9 = 0;
  v8 = 0;
  v10 = xmmword_1008C4EE0;
  v11 = xmmword_1008C4ED0;
  *a3 = 0;
  result = sub_10054BE34(a2, v12, &v9);
  if (result)
  {
    if (v9)
    {
      if (!sub_10024AB64(v12, &v11, &v8, v6) || (result = sub_10024AB64(v12, &v10, &v8, v7), !result))
      {
        *a3 = 1;
        result = sub_1000295DC(a2);
        if ((result & 1) == 0)
        {
          return sub_100540ADC(a2, 0);
        }
      }
    }
  }

  return result;
}

void sub_1006EEE70(uint64_t *result)
{
  v3 = *result;
  for (i = result[1]; i != v3; sub_1006EF168(result, i))
  {
    i -= 104;
  }

  result[1] = v3;
}

id *sub_1006EEEBC(uint64_t a1, id *location)
{
  sub_1000D6B48(&v8, (location + 13), *(a1 + 8), location);
  v5 = v4;
  v6 = *(a1 + 8);
  if (v6 != v4)
  {
    do
    {
      v6 -= 104;
      sub_1006EF168(a1, v6);
    }

    while (v6 != v5);
  }

  *(a1 + 8) = v5;
  return location;
}

uint64_t sub_1006EEF34(uint64_t *a1, int a2)
{
  v3 = *a1;
  result = a1[1];
  while (v3 != result)
  {
    if (*(v3 + 8) == a2)
    {
      return v3;
    }

    v3 += 104;
  }

  return result;
}

uint64_t sub_1006EEF5C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1 == v2)
  {
    return 0;
  }

  LODWORD(result) = 0;
  do
  {
    if (*(v1 + 16) == 2)
    {
      result = (result + 1);
    }

    else
    {
      result = result;
    }

    v1 += 104;
  }

  while (v1 != v2);
  return result;
}

uint64_t sub_1006EEF90(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1 == v2)
  {
    return 0;
  }

  LODWORD(result) = 0;
  do
  {
    if (*(v1 + 16) == 1)
    {
      result = (result + 1);
    }

    else
    {
      result = result;
    }

    v1 += 104;
  }

  while (v1 != v2);
  return result;
}

uint64_t sub_1006EEFC4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1 == v2)
  {
    return 0;
  }

  LODWORD(result) = 0;
  do
  {
    if ((*(v1 + 16) - 3) >= 2)
    {
      result = result;
    }

    else
    {
      result = (result + 1);
    }

    v1 += 104;
  }

  while (v1 != v2);
  return result;
}

BOOL sub_1006EEFFC(void *a1)
{
  v1 = a1[1];
  if (*a1 == v1)
  {
    return 0;
  }

  v2 = *a1 + 104;
  do
  {
    v3 = *(v2 - 88);
    result = v3 == 6;
    v5 = v3 == 6 || v2 == v1;
    v2 += 104;
  }

  while (!v5);
  return result;
}

BOOL sub_1006EF030(void *a1)
{
  v1 = a1[1];
  if (*a1 == v1)
  {
    return 0;
  }

  v2 = *a1 + 104;
  do
  {
    v3 = *(v2 - 88);
    result = v3 == 5;
    v5 = v3 == 5 || v2 == v1;
    v2 += 104;
  }

  while (!v5);
  return result;
}

BOOL sub_1006EF064(void *a1)
{
  v1 = a1[1];
  if (*a1 == v1)
  {
    return 0;
  }

  v2 = *a1 + 104;
  do
  {
    v3 = *(v2 - 88);
    result = v3 == 3;
    v5 = v3 == 3 || v2 == v1;
    v2 += 104;
  }

  while (!v5);
  return result;
}

BOOL sub_1006EF098(void *a1)
{
  v1 = a1[1];
  if (*a1 == v1)
  {
    return 0;
  }

  v2 = *a1 + 104;
  do
  {
    v3 = *(v2 - 88);
    result = v3 == 4;
    v5 = v3 == 4 || v2 == v1;
    v2 += 104;
  }

  while (!v5);
  return result;
}

void sub_1006EF168(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 103) < 0)
  {
    operator delete(*(a2 + 80));
  }

  sub_1000D8E64(a2 + 24);
  v3 = *a2;
}

uint64_t sub_1006EF1B4(uint64_t a1, uint64_t a2)
{
  *a1 = off_100B092E0;
  *(a1 + 8) = a2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *(a1 + 40) = 0;
  if (!a2)
  {
    v3 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_FAULT))
    {
      sub_1008644EC(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return a1;
}

void sub_1006EF22C(uint64_t a1, void *a2, uint64_t *a3, __int16 a4)
{
  v11 = a2;
  objc_storeStrong((a1 + 16), a2);
  v9 = *a3;
  v8 = a3[1];
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v10 = *(a1 + 32);
  *(a1 + 24) = v9;
  *(a1 + 32) = v8;
  if (v10)
  {
    sub_100117644(v10);
  }

  *(a1 + 40) = a4;
  if ((*(*a1 + 16))(a1))
  {
    (*(*a1 + 24))(a1);
  }
}

void sub_1006EF324(uint64_t a1, uint64_t a2)
{
  __p = 0;
  v3 = 0;
  v4 = 0;
  sub_1006EF384(a1, a2, &__p);
  if (__p)
  {
    v3 = __p;
    operator delete(__p);
  }
}

void sub_1006EF368(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006EF384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v6 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
    {
      sub_100864564(a2, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  return (***(a1 + 8))(*(a1 + 8), a1, a2, a3);
}

void sub_1006EF418(uint64_t a1)
{
  if (qword_100B50900 != -1)
  {
    sub_1008645D0();
  }

  v2 = qword_100B508F8;
  v3 = *(a1 + 16);

  sub_100710D5C(v2, v3);
}

void sub_1006EF46C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (qword_100B50900 != -1)
  {
    sub_1008645D0();
  }

  v4 = qword_100B508F8;
  v5 = *(a1 + 16);

  sub_100711338(v4, v5, v2);
}

void sub_1006EF4C8(uint64_t a1, uint64_t a2)
{
  if (qword_100B50900 != -1)
  {
    sub_1008645D0();
  }

  v4 = qword_100B508F8;
  v5 = *(a1 + 16);

  sub_100710FDC(v4, v5, a2);
}

void sub_1006EF524(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (qword_100B50900 == -1)
  {
    v4 = v3;
  }

  else
  {
    sub_1008645D0();
    v4 = v5;
  }

  sub_100710770(qword_100B508F8, a1, v4);
}

uint64_t sub_1006EF5AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = qword_100BCE910;
  if (a2)
  {
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
    {
      sub_1008645E4();
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
    {
      v8[0] = 67109120;
      v8[1] = a3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Remote response with MTU %d", v8, 8u);
    }

    if (a3 != 23)
    {
      sub_1006EF46C(a1, a3);
    }
  }

  return (*(*a1 + 24))(a1, a2);
}

uint64_t sub_1006EF6C4(uint64_t a1)
{
  v6 = 0;
  sub_1000216B4(&v6);
  v2 = sub_1002D4798(*(a1 + 40), sub_1006EF818, *(a1 + 42), a1);
  sub_100022214(&v6);
  if (v2 == 146)
  {
    v3 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 16);
      *buf = 138412290;
      v8 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Ignoring MTU exchange request - MTU already set for device %@", buf, 0xCu);
    }

    (*(*a1 + 24))(a1, 0);
    v2 = 0;
  }

  sub_10002249C(&v6);
  return v2;
}

void sub_1006EF82C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  __p = 0;
  v7 = 0;
  v8 = 0;
  if (!a2)
  {
    if (a4)
    {
      operator new();
    }

    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
    {
      sub_10086466C(a1);
    }
  }

  sub_1006EF384(a1, a2, &__p);
  if (__p)
  {
    v7 = __p;
    operator delete(__p);
  }
}

uint64_t sub_1006EFA8C(uint64_t a1)
{
  __p = 0;
  v10 = 0;
  v11 = 0;
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = sub_1005B38CC(v2, 0, &__p);
  if (v3)
  {
    sub_100117644(v3);
  }

  if (v4)
  {
    if (__p)
    {
      v10 = __p;
      operator delete(__p);
    }

    LOBYTE(__p) = 0;
    sub_1000216B4(&__p);
    v5 = sub_1002D4870(*(a1 + 40), sub_1006EFC14, a1);
    sub_10002249C(&__p);
  }

  else
  {
    v6 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Returning primary services from cache", v8, 2u);
    }

    (***(a1 + 8))(*(a1 + 8), a1, 0, &__p);
    if (__p)
    {
      v10 = __p;
      operator delete(__p);
    }

    return 0;
  }

  return v5;
}

void sub_1006EFBD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006EFC2C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  __p = 0;
  v12 = 0;
  v13 = 0;
  if (!a2)
  {
    if (a4)
    {
      operator new();
    }

    v6 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
    {
      sub_10003B85C(a1 + 44, v9);
      if (v10 >= 0)
      {
        v7 = v9;
      }

      else
      {
        v7 = v9[0];
      }

      v8 = *(a1 + 16);
      *buf = 136446466;
      v15 = v7;
      v16 = 2112;
      v17 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "No primary services with UUID %{public}s found on device %@", buf, 0x16u);
      if (v10 < 0)
      {
        operator delete(v9[0]);
      }
    }
  }

  sub_1006EF384(a1, a2, &__p);
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }
}

uint64_t sub_1006EFEC0(uint64_t a1)
{
  __p[0] = 0;
  __p[1] = 0;
  v24 = 0;
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = sub_1005B38CC(v2, (a1 + 44), __p);
  if (v3)
  {
    sub_100117644(v3);
  }

  if (v4)
  {
    goto LABEL_6;
  }

  v9 = __p[0];
  v8 = __p[1];
  v10 = qword_100BCE910;
  v11 = os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT);
  if (v8 == v9)
  {
    if (v11)
    {
      sub_10003B85C(a1 + 44, v17);
      if (v18 >= 0)
      {
        v14 = v17;
      }

      else
      {
        v14 = v17[0];
      }

      v15 = *(a1 + 16);
      *buf = 136446466;
      v20 = v14;
      v21 = 2112;
      v22 = v15;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Database cache fetching returned empty for service UUID %{public}s on device %@", buf, 0x16u);
      if (v18 < 0)
      {
        operator delete(v17[0]);
      }
    }

    v16 = sub_10000F034(v11, v12);
    (*(*v16 + 448))(v16);
LABEL_6:
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    LOBYTE(v17[0]) = 0;
    sub_1000216B4(v17);
    v5 = *(a1 + 40);
    *__p = *(a1 + 44);
    LODWORD(v24) = *(a1 + 60);
    sub_1002D4BB8(v5, sub_1006F0158, __p, a1);
    v7 = v6;
    sub_10002249C(v17);
    return v7;
  }

  if (v11)
  {
    LOWORD(v17[0]) = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Using local database for discover services by UUID.", v17, 2u);
  }

  (***(a1 + 8))(*(a1 + 8), a1, 0, __p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return 0;
}

void sub_1006F010C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006F0170(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  __p = 0;
  v11 = 0;
  v12 = 0;
  if (!a2)
  {
    if (a4)
    {
      operator new();
    }

    v6 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 42);
      v8 = *(a1 + 44);
      v9 = *(a1 + 16);
      *buf = 67109634;
      *&buf[4] = v7;
      *&buf[8] = 1024;
      *&buf[10] = v8;
      *&buf[14] = 2112;
      v14 = v9;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "No included services found in range [0x%04x, 0x%04x] on device %@", buf, 0x18u);
    }
  }

  sub_1006EF384(a1, a2, &__p);
  if (__p)
  {
    v11 = __p;
    operator delete(__p);
  }
}

uint64_t sub_1006F0404(uint64_t a1)
{
  __p = 0;
  v10 = 0;
  v11 = 0;
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = sub_1005B3BF0(v2, *(a1 + 42), *(a1 + 44), &__p);
  if (v3)
  {
    sub_100117644(v3);
  }

  if (v4)
  {
    if (__p)
    {
      v10 = __p;
      operator delete(__p);
    }

    LOBYTE(__p) = 0;
    sub_1000216B4(&__p);
    v5 = sub_1002D4F64(*(a1 + 40), sub_1006F0598, *(a1 + 42), *(a1 + 44), a1);
    sub_10002249C(&__p);
  }

  else
  {
    v6 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Using local database for discover included services.", v8, 2u);
    }

    (***(a1 + 8))(*(a1 + 8), a1, 0, &__p);
    if (__p)
    {
      v10 = __p;
      operator delete(__p);
    }

    return 0;
  }

  return v5;
}

void sub_1006F0558(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006F05B0(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  __p = 0;
  v16 = 0;
  v17 = 0;
  if (!a2)
  {
    if (a4)
    {
      v6 = a4;
      v7 = (a3 + 4);
      do
      {
        v24 = 0uLL;
        v25 = 0;
        *buf = *(v7 + 2);
        *&buf[16] = *(v7 + 5);
        sub_10000D03C(&v24, buf);
        v9 = *(v7 - 2);
        if (v9 == *v7)
        {
          v10 = qword_100BCE910;
          if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
          {
            v11 = *(a1 + 16);
            *buf = 67109378;
            *&buf[4] = v9;
            *&buf[8] = 2112;
            *&buf[10] = v11;
            _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Ignoring invalid characteristic with identical handle and value handle (0x%04x) on device %@", buf, 0x12u);
          }
        }

        else
        {
          *&buf[16] = 0;
          *buf = xmmword_1008C4EF0;
          if (!sub_10004E15C(v8, buf))
          {
            *&buf[16] = 0;
            *buf = xmmword_1008C4F04;
            if (!sub_10004E15C(&v24, buf))
            {
              *&buf[16] = 0;
              *buf = xmmword_1008C4F18;
              if (!sub_10004E15C(&v24, buf))
              {
                *&buf[16] = 0;
                *buf = xmmword_1008C4F2C;
                if (!sub_10004E15C(&v24, buf))
                {
                  *&buf[16] = 0;
                  *buf = xmmword_1008C4F40;
                  if (!sub_10004E15C(&v24, buf))
                  {
                    *&buf[16] = 0;
                    *buf = xmmword_1008C4F54;
                    if (!sub_10004E15C(&v24, buf))
                    {
                      *&buf[16] = 0;
                      *buf = xmmword_1008C4F68;
                      if (!sub_10004E15C(&v24, buf))
                      {
                        *&buf[16] = 0;
                        *buf = xmmword_1008C4F7C;
                        if (!sub_10004E15C(&v24, buf))
                        {
                          *&buf[16] = 0;
                          *buf = xmmword_1008C4F90;
                          if (!sub_10004E15C(&v24, buf))
                          {
                            *&buf[16] = 0;
                            *buf = xmmword_1008C4FA4;
                            if (!sub_10004E15C(&v24, buf))
                            {
                              operator new();
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

          v12 = qword_100BCE910;
          if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
          {
            sub_10003B85C(&v24, buf);
            if (v19 >= 0)
            {
              v13 = buf;
            }

            else
            {
              v13 = *buf;
            }

            v14 = *(a1 + 16);
            v20 = 136446466;
            v21 = v13;
            v22 = 2112;
            v23 = v14;
            _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Ignoring invalid characteristic with invalid UUID %{public}s on device %@", &v20, 0x16u);
            if (v19 < 0)
            {
              operator delete(*buf);
            }
          }
        }

        v7 += 14;
        --v6;
      }

      while (v6);
    }

    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
    {
      sub_1008646F4(a1);
    }
  }

  sub_1006EF384(a1, a2, &__p);
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }
}

uint64_t sub_1006F0AB8(uint64_t a1)
{
  __p = 0;
  v10 = 0;
  v11 = 0;
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = sub_1005B3D78(v2, 0, *(a1 + 42), *(a1 + 44), &__p);
  if (v3)
  {
    sub_100117644(v3);
  }

  if (v4)
  {
    if (__p)
    {
      v10 = __p;
      operator delete(__p);
    }

    LOBYTE(__p) = 0;
    sub_1000216B4(&__p);
    v5 = sub_1002D5310(*(a1 + 40), sub_1006F0C50, *(a1 + 42), *(a1 + 44), a1);
    sub_10002249C(&__p);
  }

  else
  {
    v6 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Using local database for discover all characteristics.", v8, 2u);
    }

    (***(a1 + 8))(*(a1 + 8), a1, 0, &__p);
    if (__p)
    {
      v10 = __p;
      operator delete(__p);
    }

    return 0;
  }

  return v5;
}

void sub_1006F0C10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006F0C68(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v4 = a2;
  __p = 0;
  v18 = 0;
  v19 = 0;
  if (!a2)
  {
    if (a4)
    {
      v6 = a4;
      v7 = (a3 + 4);
      do
      {
        v8 = *(v7 - 2);
        if (v8 != *v7)
        {
          operator new();
        }

        v9 = qword_100BCE910;
        if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
        {
          v10 = *(a1 + 16);
          buf = 67109378;
          *buf_4 = v8;
          *&buf_4[4] = 2112;
          *&buf_4[6] = v10;
          _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Ignoring invalid characteristic with identical handle and value handle (0x%04x) on device %@", &buf, 0x12u);
        }

        v7 += 14;
        --v6;
      }

      while (v6);
      v4 = 0;
    }

    v11 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v20;
      sub_10003B85C(a1 + 48, v20);
      v13 = v4;
      if (v21 < 0)
      {
        v12 = v20[0];
      }

      v14 = *(a1 + 42);
      v15 = *(a1 + 44);
      v16 = *(a1 + 16);
      buf = 136446978;
      *buf_4 = v12;
      *&buf_4[8] = 1024;
      *&buf_4[10] = v14;
      v24 = 1024;
      v25 = v15;
      v26 = 2112;
      v27 = v16;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "No characteristics with UUID %{public}s found in range [0x%04x, 0x%04x] on device %@", &buf, 0x22u);
      if (v21 < 0)
      {
        operator delete(v20[0]);
      }

      v4 = v13;
    }
  }

  sub_1006EF384(a1, v4, &__p);
  if (__p)
  {
    v18 = __p;
    operator delete(__p);
  }
}

void sub_1006F0F7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006F0FDC(uint64_t a1)
{
  __p[0] = 0;
  __p[1] = 0;
  v12 = 0;
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = sub_1005B3D78(v2, (a1 + 48), *(a1 + 42), *(a1 + 44), __p);
  if (v3)
  {
    sub_100117644(v3);
  }

  if (v4)
  {
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    v10[0] = 0;
    sub_1000216B4(v10);
    v5 = *(a1 + 40);
    *__p = *(a1 + 48);
    LODWORD(v12) = *(a1 + 64);
    sub_1002D56BC(v5, sub_1006F11BC, __p, *(a1 + 42), *(a1 + 44), a1);
    v7 = v6;
    sub_10002249C(v10);
  }

  else
  {
    v8 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Using local database for discover characteristics by UUID.", v10, 2u);
    }

    (***(a1 + 8))(*(a1 + 8), a1, 0, __p);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    return 0;
  }

  return v7;
}

void sub_1006F1174(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006F11D4(uint64_t a1, uint64_t a2, __int16 *a3, unsigned int a4)
{
  __p = 0;
  v13 = 0;
  v14 = 0;
  if (!a2)
  {
    if (a4)
    {
      memset(buf, 0, sizeof(buf));
      LODWORD(v16) = 0;
      v17 = *(a3 + 2);
      v18 = *(a3 + 5);
      sub_10000D03C(buf, &v17);
      v17 = xmmword_1008C4F40;
      v18 = 0;
      if (sub_10004E15C(buf, &v17))
      {
        operator new();
      }

      v18 = 0;
      v17 = xmmword_1008C4F54;
      if (sub_10004E15C(buf, &v17))
      {
        operator new();
      }

      v18 = 0;
      v17 = xmmword_1008C4F68;
      if (sub_10004E15C(buf, &v17) || (v18 = 0, v17 = xmmword_1008C4F7C, sub_10004E15C(buf, &v17)))
      {
        operator new();
      }

      v18 = 0;
      v17 = xmmword_1008C4F90;
      if (sub_10004E15C(buf, &v17))
      {
        operator new();
      }

      v18 = 0;
      v17 = xmmword_1008C4EF0;
      if (!sub_10004E15C(buf, &v17))
      {
        v18 = 0;
        v17 = xmmword_1008C4F04;
        if (!sub_10004E15C(buf, &v17))
        {
          v18 = 0;
          v17 = xmmword_1008C4F18;
          if (!sub_10004E15C(buf, &v17))
          {
            v18 = 0;
            v17 = xmmword_1008C4F2C;
            if (!sub_10004E15C(buf, &v17))
            {
              operator new();
            }
          }
        }
      }
    }

    v6 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 42);
      v8 = *(a1 + 44);
      v9 = *(a1 + 16);
      *buf = 67109634;
      *&buf[4] = v7;
      *&buf[8] = 1024;
      *&buf[10] = v8;
      *&buf[14] = 2112;
      v16 = v9;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "No descriptors found in range [0x%04x, 0x%04x] on device %@", buf, 0x18u);
    }

    v10 = *(a1 + 24);
    v11 = *(a1 + 32);
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_1005B5EBC(v10, &__p, *(a1 + 42));
    if (v11)
    {
      sub_100117644(v11);
    }
  }

  sub_1006EF384(a1, a2, &__p);
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }
}

uint64_t sub_1006F1728(uint64_t a1)
{
  __p = 0;
  v10 = 0;
  v11 = 0;
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = sub_1005B41E8(v2, *(a1 + 42), *(a1 + 44), &__p);
  if (v3)
  {
    sub_100117644(v3);
  }

  if (v4)
  {
    if (__p)
    {
      v10 = __p;
      operator delete(__p);
    }

    LOBYTE(__p) = 0;
    sub_1000216B4(&__p);
    v5 = sub_1002D57D0(*(a1 + 40), sub_1006F18BC, *(a1 + 42), *(a1 + 44), a1);
    sub_10002249C(&__p);
  }

  else
  {
    v6 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Using local database for discover all descriptors.", v8, 2u);
    }

    (***(a1 + 8))(*(a1 + 8), a1, 0, &__p);
    if (__p)
    {
      v10 = __p;
      operator delete(__p);
    }

    return 0;
  }

  return v5;
}

void sub_1006F187C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006F18D4(uint64_t a1, uint64_t a2, const void *a3, unsigned int a4)
{
  __p = 0;
  v7 = 0;
  v8 = 0;
  if (!a2)
  {
    operator new();
  }

  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
  {
    sub_1008647B0();
  }

  sub_1006EF384(a1, a2, &__p);
  if (__p)
  {
    v7 = __p;
    operator delete(__p);
  }
}

void sub_1006F1A28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006F1AB0(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = sub_1005B6820(v2, *(a1 + 44));
  if (v3)
  {
    sub_100117644(v3);
  }

  if (!v4)
  {
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
    {
      sub_10086493C(a1 + 44, a1);
    }

    return 1;
  }

  v5 = *(v4 + 8);
  v6 = *(v5 + 20);
  v10 = *(v5 + 4);
  v11 = v6;
  sub_10000D03C(&v9, &v10);
  v10 = xmmword_1008C4F2C;
  v11 = 0;
  if (!sub_10004E15C(&v9, &v10))
  {
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
    {
      sub_100864840(a1 + 44, a1);
    }

    return 1;
  }

  if ((*(v4 + 72) & 2) != 0)
  {
    LOBYTE(v10) = 0;
    sub_1000216B4(&v10);
    v7 = sub_1002D5A5C(*(a1 + 40), sub_1006F1C90, *(a1 + 42), a1);
    sub_10002249C(&v10);
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
    {
      sub_1008648D0();
    }

    return 2;
  }

  return v7;
}

void sub_1006F1C60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_10002249C(va);
  _Unwind_Resume(a1);
}

void sub_1006F1CA8(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  __p = 0;
  v9 = 0;
  v10 = 0;
  if (a4)
  {
    operator new();
  }

  v6 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
  {
    sub_10003B85C(a1 + 44, v7);
    sub_1008649CC(v7, a1, &v11, v6);
  }

  sub_1006EF384(a1, a2, &__p);
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }
}

uint64_t sub_1006F1EEC(uint64_t a1)
{
  v5 = 0;
  sub_1000216B4(&v5);
  v2 = *(a1 + 40);
  v6 = *(a1 + 44);
  v7 = *(a1 + 60);
  v3 = sub_1002D5CB0(v2, sub_1006F1FB4, &v6, *(a1 + 64), *(a1 + 66), *(a1 + 68), a1);
  sub_10002249C(&v5);
  return v3;
}

void sub_1006F1FCC(uint64_t a1, uint64_t a2, const void *a3, unsigned int a4)
{
  __p = 0;
  v7 = 0;
  v8 = 0;
  if (!a2)
  {
    operator new();
  }

  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
  {
    sub_100864A98();
  }

  sub_1006EF384(a1, a2, &__p);
  if (__p)
  {
    v7 = __p;
    operator delete(__p);
  }
}

void sub_1006F2120(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006F21A8(uint64_t a1)
{
  v4 = 0;
  sub_1000216B4(&v4);
  v2 = sub_1002D6054(*(a1 + 40), sub_1006F2224, *(a1 + 42), *(a1 + 44), a1);
  sub_10002249C(&v4);
  return v2;
}

void sub_1006F223C(uint64_t a1, uint64_t a2)
{
  __p = 0;
  v11 = 0;
  v12 = 0;
  if (!a2)
  {
    v4 = *(a1 + 24);
    v5 = *(a1 + 32);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v6 = sub_1005B6AA4(v4, *(a1 + 42));
    if (v5)
    {
      sub_100117644(v5);
    }

    if (v6)
    {
      if (sub_1006E3B24(v6))
      {
        v7 = *(a1 + 24);
        v8 = *(a1 + 32);
        if (v8)
        {
          atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_1005B67BC(v7, v6);
        if (v8)
        {
          sub_100117644(v8);
        }

        v9 = v6;
        sub_1000C2484(&__p, &v9);
      }

      else
      {
        (*(*v6 + 1))(v6);
      }
    }
  }

  if (__p == v11 && os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
  {
    sub_100864B28();
  }

  sub_1006EF384(a1, a2, &__p);
  if (__p)
  {
    v11 = __p;
    operator delete(__p);
  }
}

void sub_1006F2394(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006F23DC(uint64_t a1)
{
  v4 = 0;
  sub_1000216B4(&v4);
  v2 = sub_1002D5A5C(*(a1 + 40), sub_1006F2454, *(a1 + 42), a1);
  sub_10002249C(&v4);
  return v2;
}

uint64_t sub_1006F246C(uint64_t a1, uint64_t a2)
{
  if (a2 && os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
  {
    sub_100864BB8();
  }

  return (*(*a1 + 24))(a1, a2);
}

uint64_t sub_1006F24F8(uint64_t a1)
{
  v8 = 0;
  sub_1000216B4(&v8);
  v2 = *(a1 + 40);
  v3 = *(a1 + 42);
  v4 = sub_10000C5F8(a1 + 48);
  v5 = sub_10000C5E0(a1 + 48);
  v6 = sub_1002D6114(v2, sub_1006F259C, v3, v4, v5, a1);
  sub_10002249C(&v8);
  return v6;
}

uint64_t sub_1006F25AC(unsigned __int16 *a1)
{
  v8 = 0;
  sub_1000216B4(&v8);
  v2 = a1[20];
  v3 = a1[21];
  v4 = sub_10000C5F8((a1 + 24));
  v5 = sub_10000C5E0((a1 + 24));
  v6 = sub_1002D6114(v2, 0, v3, v4, v5, a1);
  sub_100022214(&v8);
  if (!v6)
  {
    (*(*a1 + 24))(a1, 0);
  }

  sub_10002249C(&v8);
  return v6;
}

uint64_t sub_1006F267C(uint64_t a1, uint64_t a2)
{
  if (a2 && os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
  {
    sub_100864C44();
  }

  return (*(*a1 + 24))(a1, a2);
}