void sub_1007450F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, int a30, __int16 a31, char a32, char a33)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  sub_1000088CC(v33 - 112);
  sub_10002249C(&a33);
  _Unwind_Resume(a1);
}

uint64_t sub_10074518C(uint64_t a1, int a2)
{
  v50[0] = 0;
  v50[1] = 0;
  sub_100007F88(v50, a1 + 120);
  v4 = *(a1 + 352);
  if (a2)
  {
    v5 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Clearing fDevicesToAddToFilterAcceptList", buf, 2u);
    }

    [*(a1 + 768) removeAllObjects];
  }

  if (*(a1 + 864) == 1)
  {
    if (v4)
    {
      v6 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
      {
        v7 = "connections";
        if (v4 == 1)
        {
          v7 = "connection";
        }

        *buf = 134218242;
        *&buf[4] = v4;
        *&buf[12] = 2082;
        *&buf[14] = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Cancelling %lu pending %{public}s", buf, 0x16u);
      }

      v49 = 0;
      v8 = sub_1000216B4(&v49);
      v16 = sub_1002D0A0C(v8, v9, v10, v11, v12, v13, v14, v15);
      sub_100022214(&v49);
      if ((v16 - 1301) >= 2)
      {
        if (!v16)
        {
          sub_100745874(a1, 2);
LABEL_25:
          sub_10002249C(&v49);
          goto LABEL_26;
        }

        if (v16 != 3704)
        {
          if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
          {
            sub_10086E6B0();
          }

          v42 = sub_10000E92C();
          sub_100693F74(v42, 1);
        }
      }

      v17 = *(a1 + 872);
      v18 = *(a1 + 880);
      v47 = 0;
      v48 = 0;
      *buf = 0;
      sub_100016250(buf);
      v19 = 1000 * (*buf - *(a1 + 872)) - *(a1 + 880) + *&buf[4];
      v47 = v19 / 0x3E8;
      v48 = v19 % 0x3E8;
      v20 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
      {
        v28 = *(a1 + 864);
        v29 = v28 > 4 ? "UNKNOWN" : (&off_100B0BF80)[v28];
        sub_1004F5248(&v47, __p);
        v30 = v46 >= 0 ? __p : __p[0];
        v31 = *(a1 + 888);
        *buf = 67109890;
        *&buf[4] = v16;
        *&buf[8] = 2082;
        *&buf[10] = v29;
        *&buf[18] = 2082;
        *&buf[20] = v30;
        *&buf[28] = 1024;
        *&buf[30] = v31;
        _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Failed to cancel connection(s) with result %{bluetooth:OI_STATUS}u (state %{public}s,%{public}ssec %d errors)", buf, 0x22u);
        if (v46 < 0)
        {
          operator delete(__p[0]);
        }
      }

      if (v16 == 1301)
      {
        v21 = ++*(a1 + 888);
        if (v21 >= 2)
        {
          v22 = (v18 + 60000) / 0x3E8uLL;
          *&buf[6] = 0;
          *buf = v17 + v22;
          *&buf[4] = v18 - 5536 - 1000 * v22;
          if (sub_100306E3C(buf))
          {
            v23 = qword_100BCE980;
            if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
            {
              v24 = *(a1 + 864);
              if (v24 > 4)
              {
                v25 = "UNKNOWN";
              }

              else
              {
                v25 = (&off_100B0BF80)[v24];
              }

              sub_1004F5248(&v47, __p);
              v32 = v46;
              v33 = __p[0];
              sub_1004F5248((a1 + 872), v43);
              v34 = __p;
              if (v32 < 0)
              {
                v34 = v33;
              }

              if (v44 >= 0)
              {
                v35 = v43;
              }

              else
              {
                v35 = v43[0];
              }

              v36 = *(a1 + 888);
              *buf = 136446978;
              *&buf[4] = v25;
              *&buf[12] = 2082;
              *&buf[14] = v34;
              *&buf[22] = 2082;
              *&buf[24] = v35;
              *&buf[32] = 1024;
              v52 = v36;
              _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "ABORTING TO RECOVER - %{public}s %{public}ssec (%{public}s) %d errors", buf, 0x26u);
              if (v44 < 0)
              {
                operator delete(v43[0]);
              }

              if (v46 < 0)
              {
                operator delete(__p[0]);
              }
            }

            v37 = sub_10000E92C();
            if ((*(*v37 + 8))(v37))
            {
              if (qword_100B53FE8 != -1)
              {
                sub_10086E688();
              }

              v38 = qword_100B53FE0;
              sub_100007E30(buf, "Failed to cancel all pending connection/s");
              v39 = *(a1 + 864);
              if (v39 > 4)
              {
                v40 = "UNKNOWN";
              }

              else
              {
                v40 = (&off_100B0BF80)[v39];
              }

              sub_100007E30(__p, v40);
              sub_1005780BC(v38, buf, __p, 0.0);
              if (v46 < 0)
              {
                operator delete(__p[0]);
              }

              if ((buf[23] & 0x80000000) != 0)
              {
                operator delete(*buf);
              }
            }

            v41 = sub_10000E92C();
            sub_100693F74(v41, 1);
          }
        }
      }

      goto LABEL_25;
    }
  }

  else
  {
    v26 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Cannot cancel connections when not in connecting state", buf, 2u);
    }
  }

  v16 = 408;
LABEL_26:
  sub_1000088CC(v50);
  return v16;
}

void sub_1007456F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_10002249C(&a24);
  sub_1000088CC(&a25);
  _Unwind_Resume(a1);
}

void sub_10074577C(int a1)
{
  v2 = qword_100BCE980;
  v3 = os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    *buf = 67109120;
    v9 = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "LE All Disconnected with status %d", buf, 8u);
  }

  v5 = sub_100007EE8(v3, v4);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10076CF5C;
  v6[3] = &unk_100AE0900;
  v7 = a1;
  sub_10000CA94(v5, v6);
}

void sub_100745874(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  sub_1007440F4(a1, *(a1 + 352) != 0);
  if (*(a1 + 864) == v2)
  {
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEBUG))
    {
      sub_10086E720();
    }
  }

  else
  {
    *__str = 0;
    sub_100016250(__str);
    v4 = *__str;
    v5 = *&__str[4];
    v6 = *(a1 + 872);
    v7 = *(a1 + 880);
    v8 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 1000 * (v4 - v6) - v7 + v5;
      v10 = *(a1 + 864);
      v11 = v10 > 4 ? "UNKNOWN" : (&off_100B0BF80)[v10];
      memset(__str, 0, 64);
      snprintf(__str, 0x3FuLL, "%0llu.%0llu", v9 / 0x3E8, v9 % 0x3E8);
      sub_100007E30(__p, __str);
      v12 = v27 >= 0 ? __p : __p[0];
      v13 = v2 > 4 ? "UNKNOWN" : (&off_100B0BF80)[v2];
      v14 = *(a1 + 888);
      v15 = *(a1 + 928);
      v16 = v15 > 3 ? "UNKNOWN" : (&off_100B0BF60)[v15];
      *__str = 136448002;
      *&__str[4] = v11;
      *&__str[12] = 1024;
      *&__str[14] = v10;
      *&__str[18] = 2082;
      *&__str[20] = v12;
      *&__str[28] = 1024;
      *&__str[30] = v14;
      *&__str[34] = 2082;
      *&__str[36] = v13;
      *&__str[44] = 1024;
      *&__str[46] = v2;
      *&__str[50] = 2082;
      *&__str[52] = v16;
      *&__str[60] = 1024;
      *&__str[62] = v15;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Setting new connection state %{public}s(%d), %{public}ssec, %d errs --> %{public}s(%d), Connection Manager %{public}s(%d)", __str, 0x42u);
      if (v27 < 0)
      {
        operator delete(__p[0]);
      }
    }

    *__str = 0;
    sub_100016250(__str);
    v17 = *&__str[4];
    *(a1 + 872) = *__str;
    *(a1 + 880) = v17;
    *(a1 + 864) = v2;
    *(a1 + 888) = 0;
    if (v2 != 1)
    {
      if (qword_100B50910 != -1)
      {
        sub_10086E454();
      }

      sub_1005BC904(off_100B50908, 0);
      *__str = 0;
      *&__str[8] = 0;
      *&__str[16] = CFAbsoluteTimeGetCurrent();
      __str[0] = 0;
      v20 = sub_10000F034(v18, v19);
      (*(*v20 + 816))(v20, __str);
      v21 = *(a1 + 864);
      if (v21 == 4)
      {
        v24 = qword_100BCE980;
        if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
        {
          *__str = 0;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "autoReconnect caused pausing", __str, 2u);
        }

        sub_10076B770(a1);
      }

      else if (!v21)
      {
        v22 = qword_100BCE980;
        if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
        {
          *__str = 0;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Idle, checking Connection Manager state", __str, 2u);
        }

        v23 = *(a1 + 928);
        if (v23 == 3)
        {
          sub_100745C6C(a1, 0);
        }

        else if (v23 == 1)
        {
          sub_100745C6C(a1, 2u);
        }

        else
        {
          v25 = qword_100BCE980;
          if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
          {
            *__str = 0;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Connection Manager state is settled", __str, 2u);
          }
        }
      }
    }
  }
}

void sub_100745C6C(os_unfair_lock_s *a1, unsigned int a2)
{
  v4 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    os_unfair_lock_opaque = a1[232]._os_unfair_lock_opaque;
    if (os_unfair_lock_opaque > 3)
    {
      v6 = "UNKNOWN";
    }

    else
    {
      v6 = (&off_100B0BF60)[os_unfair_lock_opaque];
    }

    if (a2 > 3)
    {
      v7 = "UNKNOWN";
    }

    else
    {
      v7 = (&off_100B0BF60)[a2];
    }

    v8 = a1[216]._os_unfair_lock_opaque;
    if (v8 > 4)
    {
      v9 = "UNKNOWN";
    }

    else
    {
      v9 = (&off_100B0BF80)[v8];
    }

    v11 = 136447490;
    v12 = v6;
    v13 = 1024;
    v14 = os_unfair_lock_opaque;
    v15 = 2082;
    v16 = v7;
    v17 = 1024;
    v18 = a2;
    v19 = 2082;
    v20 = v9;
    v21 = 1024;
    v22 = v8;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Setting new Connection Manager State %{public}s(%d) --> %{public}s(%d) Connection %{public}s(%d)", &v11, 0x32u);
  }

  a1[232]._os_unfair_lock_opaque = a2;
  if (!a2)
  {
    sub_1005B0DAC(&a1[8]);
    v10 = &stru_100B0B958;
    goto LABEL_16;
  }

  if (a2 == 2)
  {
    v10 = &stru_100B0B938;
LABEL_16:
    sub_10074063C(a1, v10);
    return;
  }

  sub_1005B0E88(&a1[8]);
}

void sub_100745DEC(uint64_t a1)
{
  v1 = *(a1 + 896);
  if (v1)
  {
    v3 = qword_100BCE9C8;
    if (!os_log_type_enabled(qword_100BCE9C8, OS_LOG_TYPE_DEFAULT) || (v4 = (*(*v1 + 16))(v1), v5 = 136446210, v6 = v4, _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "destroying %{public}s", &v5, 0xCu), (v1 = *(a1 + 896)) != 0))
    {
      (*(*v1 + 8))(v1);
    }

    *(a1 + 896) = 0;
  }
}

void sub_100745EFC(uint64_t a1)
{
  v1 = *(a1 + 552);
  if (v1)
  {
    *(a1 + 560) = 0;
    v3 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Canceling Fast connection scan Timer", v5, 2u);
      v1 = *(a1 + 552);
    }

    [v1 invalidate];
    v4 = *(a1 + 552);
    *(a1 + 552) = 0;
  }
}

void sub_100745F94(uint64_t a1)
{
  v1 = *(a1 + 1512);
  if (v1)
  {
    v3 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "LeConnectionDenyList: fLeConnectionDenyListMaintainTimer destroyed!", v4, 2u);
      v1 = *(a1 + 1512);
    }

    dispatch_source_cancel(v1);
    dispatch_release(*(a1 + 1512));
    *(a1 + 1512) = 0;
  }
}

void sub_100746040(uint64_t a1, uint64_t a2)
{
  v3 = sub_100007EE8(a1, a2);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1007460BC;
  v4[3] = &unk_100ADF8F8;
  v4[4] = a1;
  sub_10000D334(v3, v4);
}

void sub_1007460BC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 384);
  v3 = (v1 + 392);
  if (v2 != (v1 + 392))
  {
    do
    {
      if (qword_100B508D0 != -1)
      {
        sub_10086E034();
      }

      v4 = off_100B508C8;
      v5 = sub_10004DF60(v2 + 32);
      LODWORD(v4) = sub_100788ED8(v4, v5);

      if (v4)
      {
        v8 = sub_10000C7D0(v6, v7);
        if (qword_100B508D0 != -1)
        {
          sub_10086E034();
        }

        v9 = off_100B508C8;
        v10 = sub_10004DF60(v2 + 32);
        v11 = sub_100046458(v9, v10, 0);
        (*(*v8 + 320))(v8, 0, 1, v11, 1);
      }

      else
      {
        v10 = sub_10004DF60(v2 + 32);
        sub_100746764(v1, v10);
      }

      if (qword_100B508D0 != -1)
      {
        sub_10086E034();
      }

      v12 = off_100B508C8;
      v13 = sub_10004DF60(v2 + 32);
      LODWORD(v12) = sub_10078DEFC(v12, v13);

      if (v12)
      {
        v14 = sub_10004DF60(v2 + 32);
        sub_100746890(v1, v14);
      }

      v15 = *(v2 + 1);
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
          v16 = *(v2 + 2);
          v17 = *v16 == v2;
          v2 = v16;
        }

        while (!v17);
      }

      v2 = v16;
    }

    while (v16 != v3);
  }

  v18 = *(v1 + 336);
  if (v18 == (v1 + 344))
  {
    v19 = 0;
  }

  else
  {
    v19 = 0;
    while (1)
    {
      if (qword_100B508D0 != -1)
      {
        sub_10086E034();
      }

      v20 = off_100B508C8;
      v21 = sub_10004DF60(v18 + 25);
      v22 = sub_100790420(v20, v21);

      if (v22)
      {
        break;
      }

      v23 = *(v18 + 1);
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
          v24 = *(v18 + 2);
          v17 = *v24 == v18;
          v18 = v24;
        }

        while (!v17);
      }

      v19 |= v22;
      v18 = v24;
      if (v24 == (v1 + 344))
      {
        goto LABEL_33;
      }
    }

    v19 = 1;
  }

LABEL_33:
  v25 = sub_100432950();
  v26 = v25;
  if (v25)
  {
    [v25 enableSystemWakesForUpdate:v19 & 1 completion:&stru_100B0B440];
  }

  v27 = _os_feature_enabled_impl();
  v28 = v27;
  v30 = sub_10000C798(v27, v29);
  v31 = (*(*v30 + 368))(v30);
  if (v31 && (v33 = sub_10000C798(v31, v32), v31 = (*(*v33 + 1008))(v33), v31) && !(v28 & 1 | ((*(v1 + 633) & 1) == 0)))
  {
    if (*(v1 + 520))
    {
      v57 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_INFO, "Subrate Change Event not masked since connection subrating transactions are pending.", buf, 2u);
      }
    }

    else
    {
      sub_100746C1C(v1, 0);
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEBUG))
      {
        sub_10086E7B0();
      }
    }
  }

  else
  {
    v34 = sub_10000C798(v31, v32);
    v35 = (*(*v34 + 368))(v34);
    if (v35)
    {
      v37 = sub_10000C798(v35, v36);
      if ((*(*v37 + 1008))(v37))
      {
        if (*(v1 + 633) & v28)
        {
          v38 = *(v1 + 384);
          if (v38 != v3)
          {
            v39 = (v1 + 512);
            do
            {
              if (qword_100B508D0 != -1)
              {
                sub_10086DE2C();
              }

              v40 = off_100B508C8;
              v41 = sub_10004DF60(v38 + 32);
              LODWORD(v40) = sub_100788ED8(v40, v41);

              if (v40)
              {
                v44 = *v39;
                if (!*v39)
                {
                  goto LABEL_54;
                }

                v45 = *(v38 + 6);
                v46 = (v1 + 512);
                do
                {
                  v47 = v44[4];
                  v48 = v47 >= v45;
                  v49 = v47 < v45;
                  if (v48)
                  {
                    v46 = v44;
                  }

                  v44 = v44[v49];
                }

                while (v44);
                if (v46 != v39 && v45 >= v46[4])
                {
                  v54 = qword_100BCE980;
                  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 134217984;
                    v61 = v45;
                    _os_log_error_impl(&_mh_execute_header, v54, OS_LOG_TYPE_ERROR, "Event Masking for Subrating not set to 0 since connection subrating transactions are pending for handle %p", buf, 0xCu);
                  }
                }

                else
                {
LABEL_54:
                  v50 = sub_10000C7D0(v42, v43);
                  LOBYTE(v61) = 0;
                  *buf = 0;
                  v58 = 1024;
                  v59 = 0;
                  v51 = (*(*v50 + 3320))(v50, buf, &v58, *(v38 + 6));
                  v52 = qword_100BCE980;
                  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_INFO))
                  {
                    v53 = *(v38 + 6);
                    *buf = 134218240;
                    v61 = v53;
                    v62 = 1024;
                    v63 = v51;
                    _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_INFO, "Event Masking for Subrating set to 0 for handle %p with result: %{bluetooth:BTResult}u", buf, 0x12u);
                  }
                }
              }

              v55 = *(v38 + 1);
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
                  v56 = *(v38 + 2);
                  v17 = *v56 == v38;
                  v38 = v56;
                }

                while (!v17);
              }

              v38 = v56;
            }

            while (v56 != v3);
          }
        }
      }
    }
  }
}

uint64_t sub_100746764(uint64_t a1, void *a2)
{
  v2 = a2;
  if (sub_100746EC0(v2, v2))
  {
    if (qword_100B508D0 != -1)
    {
      sub_10086E034();
    }

    v3 = sub_10078CF60(off_100B508C8, v2);
    if (v3)
    {
      v5 = sub_10000C7D0(v3, v4);
      if (qword_100B508D0 != -1)
      {
        sub_10086E034();
      }

      v6 = sub_100046458(off_100B508C8, v2, 0);
      (*(*v5 + 320))(v5, 0, 1, v6, 1);
      if (qword_100B508D0 != -1)
      {
        sub_10086E034();
      }

      sub_10078CED4(off_100B508C8, v2, 0);
      if (qword_100B508D0 != -1)
      {
        sub_10086E034();
      }

      sub_10078CFD4(off_100B508C8, v2);
    }
  }

  return 0;
}

uint64_t sub_100746890(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_10000E92C();
  if (((*(*v4 + 8))(v4) & 1) == 0)
  {
    v5 = sub_10000E92C();
    if (((*(*v5 + 488))(v5) & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v17 = 0;
  if (!v3)
  {
    v14 = qword_100BCE980;
    if (!os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_21;
    }

    *buf = 0;
    v15 = "disableHIDLatencyStats -- device is NULL";
LABEL_20:
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v15, buf, 2u);
    goto LABEL_21;
  }

  if (qword_100B508D0 != -1)
  {
    sub_10086E034();
  }

  if (!sub_10078DEFC(off_100B508C8, v3))
  {
    v14 = qword_100BCE980;
    if (!os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_21;
    }

    *buf = 0;
    v15 = "disableHIDLatencyStats -- does not have HID service";
    goto LABEL_20;
  }

  sub_10004DFB4(buf, v3);
  if (!sub_1000C4FCC(a1, buf, &v17))
  {
    v14 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v15 = "disableHIDLatencyStats -- cannot get connection handle";
      goto LABEL_20;
    }

LABEL_21:
    v13 = 1;
    goto LABEL_22;
  }

  v6 = v17;
  v7 = sub_100255698(v17);
  v9 = sub_10000F034(v7, v8);
  v10 = (*(*v9 + 592))(v9, v6, v7);
  v12 = sub_10000C7D0(v10, v11);
  if ((*(*v12 + 1032))(v12, v7, 1, 0))
  {
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      if (qword_100B508D0 != -1)
      {
        sub_10086DE2C();
      }

      sub_10004FFDC(off_100B508C8, v3, buf);
      sub_10086E820();
    }

    goto LABEL_21;
  }

LABEL_13:
  v13 = 0;
LABEL_22:

  return v13;
}

void sub_100746B78(id a1, NSError *a2)
{
  v3 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = a2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "enableSystemWakesForUpdate returned %@", &v4, 0xCu);
  }
}

uint64_t sub_100746C1C(uint64_t a1, int a2)
{
  v13 = *(a1 + 1593);
  v2 = BYTE4(v13);
  if (a2)
  {
    BYTE4(v13) |= 4u;
    if ((v2 | 4) != v2)
    {
      v12 = 0;
      sub_1000216B4(&v12);
      v9 = sub_10074E0F8;
      goto LABEL_7;
    }

    return 0;
  }

  BYTE4(v13) &= ~4u;
  if ((v2 & 0xFFFFFFFB) == v2)
  {
    return 0;
  }

  v12 = 0;
  sub_1000216B4(&v12);
  v9 = sub_10074E1B4;
LABEL_7:
  v10 = sub_100018960(162, v9, v3, v4, v5, v6, v7, v8, &v13);
  if (v10 && os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
  {
    sub_10086E87C();
  }

  sub_10002249C(&v12);
  return v10;
}

uint64_t sub_100746D6C(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = sub_100746EC0(v2, v2);
  if (!v3)
  {
    goto LABEL_13;
  }

  v5 = sub_10000C7D0(v3, v4);
  v7 = sub_1004135C8(v5, v6);
  if (qword_100B508D0 != -1)
  {
    sub_10086E034();
  }

  v8 = sub_10078E118(off_100B508C8);
  if (v8 >= v7)
  {
    goto LABEL_13;
  }

  v10 = sub_10000C7D0(v8, v9);
  if (qword_100B508D0 != -1)
  {
    sub_10086E034();
  }

  v11 = sub_100046458(off_100B508C8, v2, 0);
  v12 = (*(*v10 + 320))(v10, 1, 1, v11, 1);
  if (!v12)
  {
    if (qword_100B508D0 != -1)
    {
      sub_10086E034();
    }

    sub_10078CED4(off_100B508C8, v2, 1);
LABEL_13:
    v12 = 0;
    goto LABEL_14;
  }

  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
  {
    sub_10086E8EC();
  }

LABEL_14:

  return v12;
}

uint64_t sub_100746EC0(uint64_t a1, void *a2)
{
  v2 = a2;
  if (qword_100B508D0 != -1)
  {
    sub_10086E034();
  }

  v3 = sub_100788D8C(off_100B508C8, v2);
  v4 = v3;
  v6 = sub_10000C798(v3, v5);
  v7 = (*(*v6 + 360))(v6);
  if (v7)
  {
    if (qword_100B508D0 != -1)
    {
      sub_10086E034();
    }

    v9 = off_100B508C8;
    sub_100007E30(__p, "BluetoothTVRemote");
    v7 = sub_10004EB40(v9, v2, __p);
    v10 = v7;
    if (v24 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = (v4 & 0xFFFF0000) == 0x10000;
  v12 = byte_100BC7AE1;
  v13 = sub_10000C7D0(v7, v8);
  if (!sub_1000ABD54(v13))
  {
    v17 = 0;
    goto LABEL_13;
  }

  v14 = sub_10000E92C();
  v15 = (*(*v14 + 480))(v14);
  if ((v15 | v10))
  {
    v17 = 1;
    goto LABEL_13;
  }

  v17 = 1;
  if (v4 <= 131102)
  {
    if (v4 == 19 || v4 == 21)
    {
      goto LABEL_13;
    }
  }

  else if (v4 == 131103 || v4 == 196608 || v4 == 655360)
  {
    goto LABEL_13;
  }

  v19 = sub_10000F034(v15, v16);
  if (((*(*v19 + 544))(v19, v2) & 1) == 0)
  {
    if (qword_100B508D0 != -1)
    {
      sub_10086DE2C();
    }

    v20 = off_100B508C8;
    sub_100007E30(v21, "_HID_DEVICE_");
    v17 = sub_10004EB40(v20, v2, v21) | v11 & v12;
    if (v22 < 0)
    {
      operator delete(v21[0]);
    }
  }

LABEL_13:

  return v17 & 1;
}

void sub_1007470F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10074713C(uint64_t a1, const unsigned __int8 **a2)
{
  v4 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Multiple devices addresses changed", buf, 2u);
  }

  v8 = *a2;
  v6 = a2 + 1;
  v7 = v8;
  if (v8 != v6)
  {
    *&v5 = 136446466;
    v21 = v5;
    do
    {
      v9 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0u;
        memset(v29, 0, sizeof(v29));
        uuid_unparse_upper(v7 + 25, buf);
        sub_100007E30(__p, buf);
        v10 = v23;
        v11 = __p[0];
        v12 = sub_10074738C(a1, v7 + 25);
        v13 = __p;
        if (v10 < 0)
        {
          v13 = v11;
        }

        *v24 = v21;
        v25 = v13;
        v14 = "NO";
        if (v12)
        {
          v14 = "YES";
        }

        v26 = 2082;
        v27 = v14;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Device %{public}s addresses changed connecting:%{public}s", v24, 0x16u);
        if (v23 < 0)
        {
          operator delete(__p[0]);
        }
      }

      if (sub_10074738C(a1, v7 + 25))
      {
        v15 = *(a1 + 784);
        v16 = sub_10004DF60(v7 + 25);
        [v15 addObject:v16];
      }

      v17 = v7[1];
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
          v18 = v7[2];
          v19 = *v18 == v7;
          v7 = v18;
        }

        while (!v19);
      }

      v7 = v18;
    }

    while (v18 != v6);
  }

  if ([*(a1 + 784) count])
  {
    sub_10074518C(a1, 0);
  }

  return 0;
}

void sub_10074735C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10074738C(void *a1, unsigned __int8 *a2)
{
  v12[0] = 0;
  v12[1] = 0;
  sub_100007F88(v12, (a1 + 15));
  if (a1 + 43 != sub_1005FF344((a1 + 42), a2) || (v4 = a1[94], sub_10004DF60(a2), v5 = objc_claimAutoreleasedReturnValue(), LOBYTE(v4) = [v4 containsObject:v5], v5, (v4 & 1) != 0) || (v6 = a1[95], sub_10004DF60(a2), v7 = objc_claimAutoreleasedReturnValue(), LOBYTE(v6) = objc_msgSend(v6, "containsObject:", v7), v7, (v6 & 1) != 0))
  {
    v8 = 1;
  }

  else
  {
    v10 = a1[96];
    v11 = sub_10004DF60(a2);
    v8 = [v10 containsObject:v11];
  }

  sub_1000088CC(v12);
  return v8;
}

void sub_1007474B0(uint64_t a1, uint64_t a2)
{
  v3 = sub_100007EE8(a1, a2);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10074752C;
  v4[3] = &unk_100ADF8F8;
  v4[4] = a1;
  sub_10000CA94(v3, v4);
}

void sub_10074752C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 384);
  v4 = (v2 + 392);
  if (v3 != (v2 + 392))
  {
    do
    {
      if (qword_100B508D0 != -1)
      {
        sub_10086E034();
      }

      v5 = off_100B508C8;
      v6 = sub_10004DF60(v3 + 32);
      LODWORD(v5) = sub_100788ED8(v5, v6);

      if (v5)
      {
        v9 = sub_10000C7D0(v7, v8);
        if (qword_100B508D0 != -1)
        {
          sub_10086E034();
        }

        v10 = off_100B508C8;
        v11 = sub_10004DF60(v3 + 32);
        v12 = sub_100046458(v10, v11, 0);
        (*(*v9 + 320))(v9, 1, 1, v12, 1);
      }

      else
      {
        v11 = sub_10004DF60(v3 + 32);
        sub_100746D6C(v2, v11);
      }

      if (qword_100B508D0 != -1)
      {
        sub_10086E034();
      }

      v13 = off_100B508C8;
      v14 = sub_10004DF60(v3 + 32);
      LODWORD(v13) = sub_10078DEFC(v13, v14);

      if (v13)
      {
        v15 = sub_10004DF60(v3 + 32);
        sub_100747A10(v2, v15, 0);
      }

      v16 = *(v3 + 1);
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
          v17 = *(v3 + 2);
          v18 = *v17 == v3;
          v3 = v17;
        }

        while (!v18);
      }

      v3 = v17;
    }

    while (v17 != v4);
  }

  sub_100747D7C(v2, a2);
  v19 = _os_feature_enabled_impl();
  v20 = v19;
  v22 = *sub_10000C798(v19, v21);
  v23 = (*(v22 + 368))();
  if ((v23 & 1) != 0 && (v25 = sub_10000C798(v23, v24), v23 = (*(*v25 + 1008))(v25), v23) && !(v20 & 1 | ((*(v2 + 633) & 1) == 0)))
  {
    sub_100746C1C(v2, 1);
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEBUG))
    {
      sub_10086E95C();
    }
  }

  else
  {
    v26 = sub_10000C798(v23, v24);
    v27 = (*(*v26 + 368))(v26);
    if (v27)
    {
      v29 = sub_10000C798(v27, v28);
      if ((*(*v29 + 1008))(v29))
      {
        if (*(v2 + 633) & v20)
        {
          v30 = *(v2 + 384);
          if (v30 != v4)
          {
            do
            {
              if (qword_100B508D0 != -1)
              {
                sub_10086DE2C();
              }

              v31 = off_100B508C8;
              v32 = sub_10004DF60(v30 + 32);
              LODWORD(v31) = sub_100788ED8(v31, v32);

              if (v31)
              {
                v35 = sub_10000C7D0(v33, v34);
                LOBYTE(v44) = 0;
                *buf = 0;
                v41 = 1024;
                v42 = 0;
                v36 = (*(*v35 + 3328))(v35, buf, &v41, *(v30 + 6));
                v37 = qword_100BCE980;
                if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_INFO))
                {
                  v38 = *(v30 + 6);
                  *buf = 134218240;
                  v44 = v38;
                  v45 = 1024;
                  v46 = v36;
                  _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "Event Masking for Subrating set to 0 for handle %p with result: %{bluetooth:BTResult}u", buf, 0x12u);
                }
              }

              v39 = *(v30 + 1);
              if (v39)
              {
                do
                {
                  v40 = v39;
                  v39 = *v39;
                }

                while (v39);
              }

              else
              {
                do
                {
                  v40 = *(v30 + 2);
                  v18 = *v40 == v30;
                  v30 = v40;
                }

                while (!v18);
              }

              v30 = v40;
            }

            while (v40 != v4);
          }
        }
      }
    }
  }
}

uint64_t sub_100747A10(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = sub_10000E92C();
  if (((*(*v6 + 8))(v6) & 1) == 0)
  {
    v7 = sub_10000E92C();
    if (((*(*v7 + 488))(v7) & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  v23 = 0;
  if (!v5)
  {
    v19 = qword_100BCE980;
    if (!os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_22;
    }

    *buf = 0;
    v20 = "enableHIDLatencyStats -- device is NULL";
LABEL_21:
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, v20, buf, 2u);
    goto LABEL_22;
  }

  if (qword_100B508D0 != -1)
  {
    sub_10086E034();
  }

  if (!sub_10078DEFC(off_100B508C8, v5))
  {
    v19 = qword_100BCE980;
    if (!os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_22;
    }

    *buf = 0;
    v20 = "enableHIDLatencyStats -- does not have HID service";
    goto LABEL_21;
  }

  sub_10004DFB4(buf, v5);
  if (sub_1000C4FCC(a1, buf, &v23))
  {
    v8 = v23;
    v9 = sub_100255698(v23);
    v11 = v9;
    if (a3)
    {
      v12 = sub_10000F034(v9, v10);
      (*(*v12 + 568))(v12, v8, v11);
    }

    sub_10004DFB4(buf, v5);
    v13 = sub_10074F2BC(a1, buf);
    v15 = sub_10000F034(v13, v14);
    v16 = (*(*v15 + 576))(v15, v11, v8, 2, v13);
    v18 = sub_10000C7D0(v16, v17);
    if ((*(*v18 + 1032))(v18, v11, 1, 1))
    {
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
      {
        if (qword_100B508D0 != -1)
        {
          sub_10086DE2C();
        }

        sub_10004FFDC(off_100B508C8, v5, buf);
        sub_10086E9CC();
      }

      goto LABEL_22;
    }

    if (a3)
    {
      sub_100746D6C(a1, v5);
    }

LABEL_25:
    v21 = 0;
    goto LABEL_26;
  }

  v19 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v20 = "enableHIDLatencyStats -- cannot get connection handle";
    goto LABEL_21;
  }

LABEL_22:
  v21 = 1;
LABEL_26:

  return v21;
}

void sub_100747D7C(uint64_t a1, uint64_t a2)
{
  v3 = sub_100007EE8(a1, a2);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10074F5B8;
  v4[3] = &unk_100ADF8F8;
  v4[4] = a1;
  sub_10000CA94(v3, v4);
}

void sub_100747E00(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(NSDateFormatter);
  [v4 setDateFormat:@"yyyy-MM-dd HH:mm:ss.SSS"];
  v5 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    if (v3)
    {
      v15 = [v3 startDate];
      if (v15)
      {
        v2 = [v3 startDate];
        v16 = [v4 stringFromDate:v2];
        v17 = 1;
      }

      else
      {
        v17 = 0;
        v15 = 0;
        v16 = @"nil";
      }
    }

    else
    {
      v17 = 0;
      v16 = @"nil";
    }

    if ([v3 walking])
    {
      v6 = "YES";
    }

    else
    {
      v6 = "NO";
    }

    if ([v3 cycling])
    {
      v7 = "YES";
    }

    else
    {
      v7 = "NO";
    }

    if ([v3 running])
    {
      v8 = "YES";
    }

    else
    {
      v8 = "NO";
    }

    if ([v3 stationary])
    {
      v9 = "YES";
    }

    else
    {
      v9 = "NO";
    }

    v10 = [v3 unknown];
    v11 = [v3 automotive];
    if (v10)
    {
      v12 = "YES";
    }

    else
    {
      v12 = "NO";
    }

    *buf = 138413826;
    if (v11)
    {
      v13 = "YES";
    }

    else
    {
      v13 = "NO";
    }

    v19 = v16;
    v20 = 2080;
    v21 = v6;
    v22 = 2080;
    v23 = v7;
    v24 = 2080;
    v25 = v8;
    v26 = 2080;
    v27 = v9;
    v28 = 2080;
    v29 = v12;
    v30 = 2080;
    v31 = v13;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "==== motion: activity.startDate:%@ walking:%s cycling:%s running:%s stationary:%s unknown:%s automotive:%s", buf, 0x48u);
    if (v17)
    {
    }

    if (v3)
    {
    }
  }
}

id sub_100748090(uint64_t a1, __n128 a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 336);
  if (v3 != (v2 + 344))
  {
    a2.n128_u64[0] = 136446210;
    v14 = a2;
    do
    {
      v4 = sub_10004DF60(v3 + 25);
      v5 = sub_10074827C(v2, v4);

      if (v5)
      {
        v6 = qword_100BCE980;
        if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
        {
          memset(out, 0, 37);
          uuid_unparse_upper(v3 + 25, out);
          sub_100007E30(__p, out);
          v7 = v16 >= 0 ? __p : __p[0];
          *out = v14.n128_u32[0];
          *&out[4] = v7;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "motion detected, device to update %{public}s", out, 0xCu);
          if (v16 < 0)
          {
            operator delete(__p[0]);
          }
        }

        v8 = *(v2 + 792);
        v9 = sub_10004DF60(v3 + 25);
        [v8 addObject:v9];
      }

      v10 = *(v3 + 1);
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
          v11 = *(v3 + 2);
          v12 = *v11 == v3;
          v3 = v11;
        }

        while (!v12);
      }

      v3 = v11;
    }

    while (v11 != (v2 + 344));
  }

  result = [*(v2 + 792) count];
  if (result)
  {
    sub_100747E00(result, *(v2 + 1528));
    return sub_10074518C(v2, 0);
  }

  return result;
}

BOOL sub_10074827C(uint64_t a1, void *a2)
{
  v3 = a2;
  v15[0] = 0;
  v15[1] = 0;
  v16 = 0;
  v4 = [v3 UUIDString];
  sub_100007E30(v15, [v4 UTF8String]);

  if (SHIBYTE(v16) < 0)
  {
    sub_100008904(__p, v15[0], v15[1]);
  }

  else
  {
    *__p = *v15;
    v14 = v16;
  }

  v5 = sub_1000463C8(a1 + 1192, __p);
  if (a1 + 1200 == v5)
  {
    v6 = 2;
  }

  else
  {
    v6 = *(v5 + 56);
  }

  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p[0]);
  }

  v7 = sub_10076A41C(a1, v3);
  v8 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v15;
    if (v16 < 0)
    {
      v9 = v15[0];
    }

    *buf = 136446722;
    v18 = v9;
    v19 = 1024;
    v20 = v6;
    v21 = 1024;
    v22 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "updateLeConnectionRSSIThresholdState for %{public}s from %d to %d ", buf, 0x18u);
  }

  if (v6 != v7)
  {
    if (v7 == 2)
    {
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
      {
        sub_10086EA28();
      }
    }

    else
    {
      if (SHIBYTE(v16) < 0)
      {
        sub_100008904(v11, v15[0], v15[1]);
      }

      else
      {
        *v11 = *v15;
        v12 = v16;
      }

      sub_10076A184(a1, v11, v7);
      if (SHIBYTE(v12) < 0)
      {
        operator delete(v11[0]);
      }
    }
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15[0]);
  }

  return v6 != v7;
}

void sub_10074849C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(a1);
}

void sub_100748508(uint64_t a1, unint64_t a2)
{
  v24 = a2;
  memset(uu, 0, sizeof(uu));
  uuid_clear(uu);
  if (sub_100748908(a1, a2, uu))
  {
    v4 = sub_10004DF60(uu);
    if (qword_100B508D0 != -1)
    {
      sub_10086DE2C();
    }

    v5 = sub_100788ED8(off_100B508C8, v4);
    if (v5)
    {
      if ((*(a1 + 632) & 1) == 0)
      {
        v7 = sub_10000C798(v5, v6);
        v8 = (*(*v7 + 368))(v7);
        if (v8)
        {
          v10 = sub_10000C798(v8, v9);
          if ((*(*v10 + 1008))(v10))
          {
            if (*(a1 + 633) == 1)
            {
              v11 = qword_100BCE980;
              if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "setMagnetLatencyForLowPowerMode: Low power mode enabled; Requesting subrating on magnet link", buf, 2u);
              }

              if (qword_100B508B0 != -1)
              {
                sub_10086DE54();
              }

              sub_1007489DC(off_100B508A8, v4, 4294967283, 1);
            }

            else
            {
              v12 = *(a1 + 536);
              if (v12)
              {
                v13 = a1 + 536;
                do
                {
                  v14 = *(v12 + 32);
                  v15 = v14 >= a2;
                  v16 = v14 < a2;
                  if (v15)
                  {
                    v13 = v12;
                  }

                  v12 = *(v12 + 8 * v16);
                }

                while (v12);
                if (v13 != a1 + 536 && *(v13 + 32) <= a2)
                {
                  v17 = qword_100BCE980;
                  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
                  {
                    v25 = &v24;
                    v18 = *(sub_10077444C(a1 + 528, &v24, &unk_1008A9BD0, &v25) + 23);
                    v25 = &v24;
                    v19 = *(sub_10077444C(a1 + 528, &v24, &unk_1008A9BD0, &v25) + 21);
                    v25 = &v24;
                    v20 = *(sub_10077444C(a1 + 528, &v24, &unk_1008A9BD0, &v25) + 24);
                    v25 = &v24;
                    v21 = *(sub_10077444C(a1 + 528, &v24, &unk_1008A9BD0, &v25) + 22);
                    v25 = &v24;
                    v22 = *(sub_10077444C(a1 + 528, &v24, &unk_1008A9BD0, &v25) + 13);
                    *buf = 134219264;
                    *&buf[4] = a2;
                    v27 = 1024;
                    v28 = v18;
                    v29 = 1024;
                    v30 = v19;
                    v31 = 1024;
                    v32 = v20;
                    v33 = 1024;
                    v34 = v21;
                    v35 = 1024;
                    v36 = v22;
                    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "setMagnetLatencyForLowPowerMode: Low power mode not enabled. Found configured parameters for handle %p. Subrate factor:%d Peripheral latency:%d Continuation Number=%d Supervision Timeout=%d. Subrating Status: %d", buf, 0x2Au);
                  }

                  *buf = &v24;
                  if (*(sub_10077444C(a1 + 528, &v24, &unk_1008A9BD0, buf) + 13))
                  {
                    v23 = qword_100BCE980;
                    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 0;
                      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "setMagnetLatencyForLowPowerMode: Low power mode disabled while LE Connection is subrated. Exiting subrating on magnet link", buf, 2u);
                    }

                    if (qword_100B508B0 != -1)
                    {
                      sub_10086DE54();
                    }

                    sub_1007489DC(off_100B508A8, v4, 4294967294, 1);
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

uint64_t sub_100748908(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v12[0] = 0;
  v12[1] = 0;
  sub_100007F88(v12, a1 + 120);
  v6 = *(a1 + 384);
  if (v6 == (a1 + 392))
  {
LABEL_9:
    v10 = 0;
  }

  else
  {
    while (*(v6 + 6) != a2)
    {
      v7 = *(v6 + 1);
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
          v8 = *(v6 + 2);
          v9 = *v8 == v6;
          v6 = v8;
        }

        while (!v9);
      }

      v6 = v8;
      if (v8 == (a1 + 392))
      {
        goto LABEL_9;
      }
    }

    uuid_copy(a3, v6 + 32);
    v10 = 1;
  }

  sub_1000088CC(v12);
  return v10;
}

uint64_t sub_1007489DC(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  v7 = a2;
  v77 = 0;
  if (sub_10074E528(a1, v7, a3))
  {
    v69[0] = 0;
    v69[1] = 0;
    sub_100007F88(v69, a1 + 120);
    v8 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      v9 = sub_1003BE228(a3);
      *buf = 136446466;
      *&buf[4] = v9;
      v81 = 2114;
      *v82 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "setConnectionLatency %{public}s to device %{public}@", buf, 0x16u);
    }

    sub_10004DFB4(buf, v7);
    v10 = sub_10004E34C(a1 + 384, buf);
    if (a1 + 392 == v10)
    {
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
      {
        sub_10086ECD8();
      }

      v11 = 3;
      goto LABEL_90;
    }

    v75 = 0;
    v76 = 0;
    v73 = 0;
    v74 = 0;
    v72 = 0;
    v71 = 0;
    v70 = 0;
    v77 = *(v10 + 48);
    v11 = sub_10074DD24(a1, a3, &v76 + 1, &v76, &v74, &v74 + 1, &v75 + 1, &v75, &v73 + 1, &v73, &v72 + 1, &v72, &v71, &v70 + 1, &v70);
    if (v11)
    {
      goto LABEL_90;
    }

    if (a3 == -2)
    {
      if (qword_100B508D0 != -1)
      {
        sub_10086DE2C();
      }

      v12 = sub_100788ED8(off_100B508C8, v7);
      if (!v12)
      {
        if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
        {
          sub_10086EA98();
        }

        goto LABEL_86;
      }

      v14 = sub_10000C7D0(v12, v13);
      if ((*(*v14 + 3248))(v14))
      {
        v15 = *(a1 + 536);
        if (!v15)
        {
          goto LABEL_94;
        }

        v16 = a1 + 536;
        do
        {
          v17 = *(v15 + 32);
          v18 = v17 >= v77;
          v19 = v17 < v77;
          if (v18)
          {
            v16 = v15;
          }

          v15 = *(v15 + 8 * v19);
        }

        while (v15);
        if (v16 != a1 + 536 && v77 >= *(v16 + 32) && (*buf = &v77, *(sub_10077444C(a1 + 528, &v77, &unk_1008A9BD0, buf) + 13) == 2))
        {
          v20 = qword_100BCE980;
          if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            *&buf[4] = v7;
            v81 = 1024;
            *v82 = 1;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Magnet link to %{public}@ is currently subrated. Switching to un-subrated link without parameter update (using a subrate factor of %d).", buf, 0x12u);
          }

          v70 = 256;
        }

        else
        {
LABEL_94:
          if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEBUG))
          {
            sub_10086EB78();
          }
        }
      }

      else if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEBUG))
      {
        sub_10086EB08();
      }
    }

    v21 = v70;
    if (v70 == 1)
    {
      if (a4)
      {
        if (!sub_1000BE280(v77))
        {
          goto LABEL_59;
        }

LABEL_38:
        v22 = qword_100BCE980;
        if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
        {
          v23 = sub_1003BE228(a3);
          *buf = 136446466;
          *&buf[4] = v23;
          v81 = 2114;
          *v82 = v7;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Setting connection latency to %{public}s for device %{public}@", buf, 0x16u);
        }

        sub_10004DFB4(buf, v7);
        if (a1 + 848 == sub_100774BCC(a1 + 840, buf))
        {
          v28 = 0;
          v26 = 0x60006001E0006;
          v25 = 2;
          v27 = 4;
        }

        else
        {
          sub_10004DFB4(buf, v7);
          v79[0] = buf;
          if (*(sub_100774C48((a1 + 840), buf, &unk_1008A9BD0, v79, &v78) + 11) != 2 && os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_FAULT))
          {
            sub_10086EBE8();
          }

          sub_10004DFB4(buf, v7);
          v79[0] = buf;
          v24 = sub_100774C48((a1 + 840), buf, &unk_1008A9BD0, v79, &v78);
          v25 = *(v24 + 11);
          v26 = *(v24 + 50);
          v27 = *(v24 + 30);
          v28 = *(v24 + 19);
        }

        v29 = HIWORD(v76);
        v30 = HIWORD(v75);
        v65 = v75;
        v66 = v76;
        v68 = 0;
        sub_1000216B4(&v68);
        sub_10004DFB4(buf, v7);
        v79[0] = buf;
        v31 = sub_100774C48((a1 + 840), buf, &unk_1008A9BD0, v79, &v78);
        v32 = v29 * 1.25;
        *(v31 + 11) = v25;
        v33 = v66 * 1.25;
        *(v31 + 24) = 256;
        *(v31 + 50) = v26;
        *(v31 + 29) = v30;
        *(v31 + 30) = v27;
        *(v31 + 31) = v65;
        *(v31 + 16) = v32;
        *(v31 + 17) = v33;
        *(v31 + 18) = v33;
        *(v31 + 19) = v28;
        v34 = qword_100BCE980;
        v35 = os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT);
        v36 = v74;
        v37 = HIWORD(v74);
        if (v35)
        {
          *buf = 138544898;
          *&buf[4] = v7;
          v81 = 2048;
          *v82 = v32;
          *&v82[8] = 2048;
          *v83 = v33;
          *&v83[8] = 1024;
          *&v83[10] = v30;
          *&v83[14] = 1024;
          *&v83[16] = v74;
          v84 = 1024;
          v85 = HIWORD(v74);
          v86 = 1024;
          v87 = v65;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Trying to update connection parameters for device %{public}@ minInterval:%.3f maxInterval:%.3f peripheralLatency:%d minCE=%d maxCE=%d timeout:%d", buf, 0x38u);
        }

        v38 = sub_1002D1C8C(v77, v29, v66, v30, (52429 * v65) >> 19, v36, v37);
        v21 = 1;
        v39 = v38;
        v40 = sub_100022214(&v68);
        if (v39)
        {
          if (v39 != 4170)
          {
            v42 = qword_100BCE980;
            if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
            {
              *buf = 134219008;
              *&buf[4] = v32;
              v81 = 2048;
              *v82 = v33;
              *&v82[8] = 1024;
              *v83 = v30;
              *&v83[4] = 1024;
              *&v83[6] = v65;
              *&v83[10] = 1024;
              *&v83[12] = v39;
              _os_log_error_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "Failed to update connection parameters with interval=(%.3f/%.3f) peripheralLatency=%d, timeout=%d, status=%{bluetooth:OI_STATUS}u", buf, 0x28u);
            }
          }

          sub_10002249C(&v68);
          v11 = 914;
          goto LABEL_90;
        }

        if (v66 == 800)
        {
          goto LABEL_57;
        }

        if (qword_100B508D0 != -1)
        {
          sub_10086DE2C();
        }

        v40 = sub_10078BDFC(off_100B508C8, v7);
        if ((v40 & 1) == 0)
        {
LABEL_57:
          v43 = sub_10000C7D0(v40, v41);
          (*(*v43 + 1048))(v43, v77, v66 == 800, 0);
        }

        sub_10002249C(&v68);
        goto LABEL_59;
      }

      if (!sub_1000BE280(v77))
      {
        goto LABEL_38;
      }
    }

LABEL_59:
    if (qword_100B508D0 != -1)
    {
      sub_10086DE2C();
    }

    v44 = sub_100788ED8(off_100B508C8, v7);
    if (v44)
    {
      if (HIBYTE(v70) == 1)
      {
        v46 = sub_10000C7D0(v44, v45);
        if ((*(*v46 + 3248))(v46))
        {
          v47 = qword_100BCE980;
          if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_INFO))
          {
            *buf = 67109120;
            *&buf[4] = 1;
            _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_INFO, "Enable Subrating set to %d. This platform supports connection subrating.", buf, 8u);
          }

          v48 = HIWORD(v73);
          v49 = v73;
          v50 = HIWORD(v72);
          v51 = v72;
          v52 = v71;
          v53 = *(a1 + 512);
          if (v53)
          {
            v54 = v77;
            v55 = a1 + 512;
            do
            {
              v56 = *(v53 + 32);
              v18 = v56 >= v77;
              v57 = v56 < v77;
              if (v18)
              {
                v55 = v53;
              }

              v53 = *(v53 + 8 * v57);
            }

            while (v53);
            if (v55 != a1 + 512 && v77 >= *(v55 + 32))
            {
              v67 = v71;
              v58 = qword_100BCE980;
              if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 134217984;
                *&buf[4] = v54;
                _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "Warning: Already pending on sending connection subrating parameters for handle %p", buf, 0xCu);
              }

              sub_100075DC4((a1 + 504), &v77);
              v52 = v67;
            }
          }

          v79[0] = 0;
          v79[1] = 0;
          sub_10004DFB4(v79, v7);
          if ((v21 & 1) == 0 && sub_10074E724(a1, v79))
          {
            v59 = v52;
            v60 = qword_100BCE980;
            if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138544642;
              *&buf[4] = v7;
              v81 = 1024;
              *v82 = v48;
              *&v82[4] = 1024;
              *&v82[6] = v49;
              *v83 = 1024;
              *&v83[2] = v50;
              *&v83[6] = 1024;
              *&v83[8] = v51;
              *&v83[12] = 1024;
              *&v83[14] = v59;
              _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "No locally initiated connection parameter update in progress and link is ready. Proceeding with subrating mode for device %{public}@ subrateMin:%d subrateMax:%d maxLatency:%d continueationNumber=%d supervisionTimeout=%d", buf, 0x2Au);
            }

            sub_10000801C(v69);
            v11 = sub_10074E270(a1, v77, (v48 << 16) | (v49 << 32) | v50 | (v51 << 48), v59);
            goto LABEL_90;
          }

          *buf = &v77;
          v61 = sub_100774D7C(a1 + 504, &v77, &unk_1008A9BD0, buf);
          v61[5] = (v48 << 16) | (v49 << 32) | v50 | (v51 << 48);
          *(v61 + 24) = v52;
          v62 = qword_100BCE980;
          v11 = 0;
          if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
          {
            v63 = sub_10074E724(a1, v79);
            *buf = 138543874;
            *&buf[4] = v7;
            v81 = 1024;
            *v82 = v21;
            *&v82[4] = 1024;
            *&v82[6] = v63;
            _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "For device %{public}@ - Locally initiated connection parameter update in progress: %d. LE Link Ready: %d.", buf, 0x18u);
LABEL_89:
            v11 = 0;
          }

LABEL_90:
          sub_1000088CC(v69);
          goto LABEL_91;
        }
      }
    }

    if (a3 != -11 && a3 != -13)
    {
      goto LABEL_89;
    }

    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      sub_10086EC68();
    }

LABEL_86:
    v11 = 17;
    goto LABEL_90;
  }

  v11 = 916;
LABEL_91:

  return v11;
}

void sub_100749460(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  sub_1000088CC(va);

  _Unwind_Resume(a1);
}

void sub_1007494D0(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = sub_100007EE8(a1, a2);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100749554;
  v5[3] = &unk_100AE15D8;
  v5[4] = a1;
  v6 = v2;
  sub_10000CA94(v4, v5);
}

void sub_100749554(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(v1 + 633);
  if (v2 != v3)
  {
    v5 = qword_100BCE980;
    v6 = os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      v18[0] = 67109376;
      v18[1] = v3;
      v19 = 1024;
      v20 = v2;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Low Power Mode has changed from %d to %d", v18, 0xEu);
      LOBYTE(v2) = *(a1 + 40);
    }

    *(v1 + 633) = v2;
    v8 = sub_10000C798(v6, v7);
    v9 = (*(*v8 + 1008))(v8);
    if (v9)
    {
      v11 = sub_10000C798(v9, v10);
      if ((*(*v11 + 368))(v11))
      {
        v12 = *(v1 + 384);
        if (v12 != (v1 + 392))
        {
          do
          {
            if (qword_100B508D0 != -1)
            {
              sub_10086DE2C();
            }

            v13 = off_100B508C8;
            v14 = sub_10004DF60(v12 + 32);
            LODWORD(v13) = sub_100788ED8(v13, v14);

            if (v13)
            {
              sub_100748508(v1, *(v12 + 6));
            }

            v15 = *(v12 + 1);
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
                v16 = *(v12 + 2);
                v17 = *v16 == v12;
                v12 = v16;
              }

              while (!v17);
            }

            v12 = v16;
          }

          while (v16 != (v1 + 392));
        }
      }
    }
  }
}

void sub_100749778(uint64_t a1, __int128 *a2)
{
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x5012000000;
  v5[3] = sub_100042494;
  v5[4] = nullsub_29;
  v5[5] = "";
  v2 = a2[1];
  v6 = *a2;
  v7 = v2;
  v3 = sub_100007EE8(a1, a2);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100749890;
  v4[3] = &unk_100AE1120;
  v4[4] = v5;
  sub_10000CA94(v3, v4);
  _Block_object_dispose(v5, 8);
}

void sub_100749878(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100749890(uint64_t a1)
{
  v2 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEBUG))
  {
    sub_10086ED48(a1, v2, &v14);
    v2 = v14;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_10086EE50();
  }

  v3 = *(*(a1 + 32) + 8);
  if (*(v3 + 56))
  {
    if (*(v3 + 56) < 0x20u)
    {
      v4 = sub_1000ABB80(*(v3 + 58));
      v5 = v4;
      v6 = *(*(a1 + 32) + 8);
      v7 = *(v6 + 68);
      v14 = v7;
      v8 = *(v6 + 60);
      v9 = *(v6 + 61);
      v10 = *(v6 + 62);
      v11 = 1;
      v12 = &v14;
      do
      {
        if (*(&v14 + v11) < v7)
        {
          LOBYTE(v7) = *(&v14 + v11);
          v12 = &v14 + v11;
        }

        ++v11;
      }

      while (v11 != 8);
      v13 = *(v6 + 67);
      if (qword_100B508B0 != -1)
      {
        sub_10086DE54();
      }

      sub_100749A5C(v4, v5, 0, 0, 0, 0, &v14, 32, v8, v9, v10, *v12, 0, 0, 0, v13);
    }

    else if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      sub_10086EECC();
    }
  }

  else if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEBUG))
  {
    sub_10086EF40();
  }
}

void sub_100749A5C(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, uint64_t a7, char a8, char a9, char a10, char a11, char a12, __int16 a13, int a14, char a15, char a16)
{
  v21 = sub_100007EE8(a1, a2);
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10076CB48;
  v24[3] = &unk_100B0BA40;
  v25 = a3;
  v26 = a4;
  v27 = a5;
  v28 = a6;
  v24[4] = a2;
  v24[5] = a7;
  v31 = a8;
  v32 = a9;
  v33 = a10;
  v34 = a11;
  v35 = a12;
  v30 = a13;
  v29 = a14;
  v36 = a15;
  v37 = a16;
  sub_10000CA94(v21, v24);
}

uint64_t sub_100749B80(uint64_t a1, uint64_t a2, int a3)
{
  v8[0] = 0;
  v8[1] = 0;
  sub_100007F88(v8, a1 + 120);
  v6 = 224;
  if (a3)
  {
    v6 = 192;
  }

  sub_100749C00(a1 + v6, a2);
  return sub_1000088CC(v8);
}

void sub_100749C00(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock(a1);
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 != v4)
  {
    while (*v5 != a2)
    {
      v5 += 8;
      if (v5 == v4)
      {
        goto LABEL_6;
      }
    }
  }

  if (v5 == v4)
  {
LABEL_6:
    v6 = a2;
    sub_100774520((a1 + 8), v4, &v6);
    sub_1000C8CF0((a1 + 8));
  }

  os_unfair_lock_unlock(a1);
}

uint64_t sub_100749C8C(uint64_t a1, uint64_t a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1 + 120);
  sub_10007A3F0(a1 + 192, a2);
  sub_10007A3F0(a1 + 224, a2);
  return sub_1000088CC(v5);
}

void sub_100749CFC(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v11 = a3;
  v5 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    v6 = sub_10004DF60(a2);
    *buf = 138543362;
    *&buf[4] = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "AutoReconnect - Added device %{public}@ to connection filter accept list", buf, 0xCu);
  }

  if (a1 + 808 == sub_1007746F4(a1 + 800, a2))
  {
    v8 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      sub_10086EF7C(a2, v8, v9);
    }

    v10 = sub_10000E92C();
    sub_100693F74(v10, 1);
  }

  sub_1000C73A4((a1 + 336), a2, a2);
  sub_1007440F4(a1, 1);
  *buf = &v11;
  v7 = sub_100774770(a1 + 360, &v11, &unk_1008A9BD0, buf, &v12);
  uuid_copy(v7 + 40, a2);
  if (!*(a1 + 864))
  {
    sub_100745874(a1, 1);
  }
}

void sub_100749E70(uint64_t a1, const unsigned __int8 *a2)
{
  v4 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    memset(out, 0, 37);
    uuid_unparse_upper(a2, out);
    sub_100007E30(__p, out);
    if (v11 >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    *out = 136446210;
    *&out[4] = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Adding %{public}s to AddToFilterAcceptList list", out, 0xCu);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v6 = *(a1 + 768);
  v7 = sub_10004DF60(a2);
  [v6 addObject:v7];

  v8 = *(a1 + 776);
  v9 = sub_10004DF60(a2);
  [v8 removeObject:v9];
}

void sub_100749FCC(uint64_t a1, const unsigned __int8 *a2)
{
  v4 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    memset(out, 0, 37);
    uuid_unparse_upper(a2, out);
    sub_100007E30(__p, out);
    if (v11 >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    *out = 136446210;
    *&out[4] = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Adding %{public}s to RemoveFromFilterAcceptList list", out, 0xCu);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v6 = *(a1 + 776);
  v7 = sub_10004DF60(a2);
  [v6 addObject:v7];

  v8 = *(a1 + 768);
  v9 = sub_10004DF60(a2);
  [v8 removeObject:v9];
}

uint64_t sub_10074A128(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *&buf[4] = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Connect called to %{public}@", buf, 0xCu);
  }

  v54[0] = 0;
  v54[1] = 0;
  sub_100007F88(v54, a1 + 120);
  if (*(a1 + 1067) == 1)
  {
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      sub_10086F0E8();
    }

    v5 = 202;
    goto LABEL_26;
  }

  if (qword_100B508D0 != -1)
  {
    sub_10086DE2C();
  }

  if (sub_1007868D4(off_100B508C8, v3))
  {
    if (qword_100B508D0 != -1)
    {
      sub_10086DE2C();
    }

    v6 = sub_1000500A0(off_100B508C8, v3);
    v7 = v6 == 0;

    if (v7)
    {
      goto LABEL_16;
    }

    if (qword_100B508D0 != -1)
    {
      sub_10086DE2C();
    }

    sub_1000AFD60(off_100B508C8, v3, 2u, buf);
    v8 = *&buf[16];
    sub_10000CEDC(buf, *&buf[8]);
    if (v8)
    {
LABEL_16:
      sub_10004DFB4(buf, v3);
      if (sub_10074738C(a1, buf))
      {
        if ([*(a1 + 776) containsObject:v3] & 1) != 0 || (sub_10004DFB4(buf, v3), (sub_10074AB80(a1, buf)))
        {
          v9 = qword_100BCE980;
          if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            *&buf[4] = v3;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "device %{public}@ pending for removal from filter accept list after asked to disconnect, moving back to our connection list", buf, 0xCu);
          }

          [*(a1 + 776) removeObject:v3];
          [*(a1 + 744) removeObject:v3];
        }

        else
        {
          v17 = qword_100BCE980;
          if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            *&buf[4] = v3;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Already trying to connect device %{public}@", buf, 0xCu);
          }
        }

        v5 = 0;
        goto LABEL_26;
      }

      sub_10004DFB4(buf, v3);
      if (sub_100050290(a1, buf))
      {
        sub_10004DFB4(buf, v3);
        v11 = sub_10074AB80(a1, buf);
        v12 = qword_100BCE980;
        v13 = os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT);
        if (v11)
        {
          if (v13)
          {
            *buf = 138543362;
            *&buf[4] = v3;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Device %{public}@ as it is already connected and in the process of disconnecting", buf, 0xCu);
          }

          v5 = 310;
        }

        else
        {
          if (v13)
          {
            *buf = 138543362;
            *&buf[4] = v3;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Cannot connect device %{public}@ as it is already connected", buf, 0xCu);
          }

          v5 = 311;
        }

        goto LABEL_26;
      }

      v14 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(a1 + 864);
        if (v15 > 4)
        {
          v16 = "UNKNOWN";
        }

        else
        {
          v16 = (&off_100B0BF80)[v15];
        }

        *buf = 136446466;
        *&buf[4] = v16;
        *&buf[12] = 1024;
        *&buf[14] = v15;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Current state when trying to connect %{public}s(%d)", buf, 0x12u);
      }

      if (qword_100B508D0 != -1)
      {
        sub_10086DE2C();
      }

      v18 = sub_100788D8C(off_100B508C8, v3);
      v19 = v18;
      memset(v53, 0, sizeof(v53));
      if (sub_10074AC10(a1, v18, v53) && _os_feature_enabled_impl())
      {
        if (qword_100B508D0 != -1)
        {
          sub_10086DE2C();
        }

        sub_10078FDAC(off_100B508C8, v3, v53[8]);
        if (qword_100B508D0 != -1)
        {
          sub_10086DE2C();
        }

        sub_10078A36C(off_100B508C8, v3, *&v53[16]);
        if (qword_100B508D0 != -1)
        {
          sub_10086DE2C();
        }

        sub_10078A484(off_100B508C8, v3, v53[20]);
        v51[0] = 0;
        v51[1] = 0;
        v52 = 0;
        v20 = [v3 UUIDString];
        v21 = v20;
        sub_100007E30(v51, [v20 UTF8String]);

        *buf = v51;
        v22 = sub_1007748BC((a1 + 1360), v51, &unk_1008A9BD0, buf, __p);
        *(v22 + 7) = *v53;
        *(v22 + 69) = *&v53[13];
        v23 = qword_100BCE980;
        if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
        {
          v24 = SHIBYTE(v52);
          v25 = v51[0];
          sub_10074AE70(v53);
          v26 = sub_10002DC3C(v19);
          v27 = v51;
          if (v24 < 0)
          {
            v27 = v25;
          }

          if (v50 >= 0)
          {
            v28 = __p;
          }

          else
          {
            v28 = __p[0];
          }

          *buf = 136315650;
          *&buf[4] = v27;
          *&buf[12] = 2080;
          *&buf[14] = v26;
          *&buf[22] = 2080;
          v57 = v28;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "connScanUseCaseEntryCoex at connect: device %s useCase %s useCaseEntryCoex %s", buf, 0x20u);
          if (v50 < 0)
          {
            operator delete(__p[0]);
          }
        }

        if (SHIBYTE(v52) < 0)
        {
          operator delete(v51[0]);
        }
      }

      if (qword_100B508D0 != -1)
      {
        sub_10086DE2C();
      }

      v29 = sub_10078C5DC(off_100B508C8, v3);
      v30 = [v29 cuFilteredArrayUsingBlock:&stru_100B0B480];

      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v31 = v30;
      v32 = [v31 countByEnumeratingWithState:&v45 objects:v55 count:16];
      if (v32)
      {
        v33 = *v46;
        do
        {
          v34 = 0;
          do
          {
            if (*v46 != v33)
            {
              objc_enumerationMutation(v31);
            }

            v35 = *(*(&v45 + 1) + 8 * v34);
            if (qword_100B50910 != -1)
            {
              sub_10086E454();
            }

            [v35 integerValue];
            nullsub_21();
            v34 = v34 + 1;
          }

          while (v32 != v34);
          v32 = [v31 countByEnumeratingWithState:&v45 objects:v55 count:16];
        }

        while (v32);
      }

      if (*(a1 + 928))
      {
        sub_10004DFB4(buf, v3);
        sub_100749E70(a1, buf);
        v5 = 0;
LABEL_102:

        goto LABEL_26;
      }

      v5 = 0;
      v38 = *(a1 + 864);
      if (v38 <= 1)
      {
        if (v38)
        {
          if (v38 != 1)
          {
            goto LABEL_101;
          }

          v40 = qword_100BCE980;
          if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Lets wait for the controller, cancelling", buf, 2u);
          }

          if (!sub_10074518C(a1, 1))
          {
            goto LABEL_100;
          }
        }

        else
        {
          v42 = qword_100BCE980;
          if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v43 = "Adding device to connecting list";
            goto LABEL_98;
          }
        }
      }

      else
      {
        if (v38 == 2)
        {
          v41 = qword_100BCE980;
          if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "will add the device to connecting list once we're done with the pending cancelation", buf, 2u);
          }

          goto LABEL_100;
        }

        if (v38 != 3)
        {
          if (v38 == 4)
          {
            v39 = qword_100BCE980;
            if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "will add the device to connecting list once we're done with auto reconnecct", buf, 2u);
            }

LABEL_100:
            sub_10004DFB4(buf, v3);
            sub_100749E70(a1, buf);
            v5 = 0;
          }

LABEL_101:
          v44 = sub_100007EE8(v36, v37);
          sub_10000CA94(v44, &stru_100B0B4A0);
          goto LABEL_102;
        }

        v42 = qword_100BCE980;
        if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v43 = "adding the device to connecting list , will wait for cancelation to complete before trying to connect to it.";
LABEL_98:
          _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, v43, buf, 2u);
        }
      }

      v36 = sub_10074B0D4(a1, v3);
      v5 = v36;
      goto LABEL_101;
    }

    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      sub_10086F078();
    }

    v5 = 149;
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      sub_10086F008();
    }

    v5 = 8;
  }

LABEL_26:
  sub_1000088CC(v54);

  return v5;
}

void sub_10074AACC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  sub_1000088CC(&a30);

  _Unwind_Resume(a1);
}

id sub_10074AB80(uint64_t a1, const unsigned __int8 *a2)
{
  v8[0] = 0;
  v8[1] = 0;
  sub_100007F88(v8, a1 + 120);
  v4 = *(a1 + 744);
  v5 = sub_10004DF60(a2);
  v6 = [v4 containsObject:v5];

  sub_1000088CC(v8);
  return v6;
}

uint64_t sub_10074AC10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21[0] = 0;
  v21[1] = 0;
  sub_100007F88(v21, a1 + 120);
  if ((a2 & 0xFFFF0000) == 0x10000)
  {
    v6 = 63;
  }

  else
  {
    v6 = 0;
  }

  if (qword_100B50910 != -1)
  {
    sub_10086E454();
  }

  v7 = sub_10003C714(off_100B50908, v6, 1u);
  v8 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    v9 = sub_10002DC3C(a2);
    v10 = "Yes";
    *buf = 136447746;
    *&buf[4] = v9;
    *&buf[12] = 2082;
    if ((v7 & 4) != 0)
    {
      v11 = "Yes";
    }

    else
    {
      v11 = "No";
    }

    *&buf[14] = v11;
    *&buf[22] = 2048;
    if ((v7 & 2) != 0)
    {
      v12 = "Yes";
    }

    else
    {
      v12 = "No";
    }

    *&buf[24] = v6;
    if (v7)
    {
      v13 = "Yes";
    }

    else
    {
      v13 = "No";
    }

    *&buf[32] = 2082;
    if ((v7 & 8) == 0)
    {
      v10 = "No";
    }

    *&buf[34] = v12;
    *&buf[42] = 2082;
    *&buf[44] = v13;
    *&buf[52] = 2082;
    *&buf[54] = v10;
    *&buf[62] = 2048;
    *&v23 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "getConnScanUseCaseEntryCoex for useCase %{public}s WiFi Coex Critical %{public}s (0x%llx) WiFi assoc 2.4GHz %{public}s BT Audio Active %{public}s HRB %{public}s coexState 0x%llx", buf, 0x48u);
  }

  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
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
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v14 = 4;
  memset(buf, 0, sizeof(buf));
  do
  {
    v15 = &buf[v14];
    *v15 = 0;
    *(v15 + 1) = 0;
    *(v15 + 13) = 0;
    v14 += 24;
  }

  while (v14 != 388);
  v16 = sub_10076D3E8(a1, a2, buf);
  if (v7 < 0x10)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v17 == 1)
  {
    if (buf[0])
    {
      v18 = v7;
    }

    else
    {
      v18 = 0;
    }

    v19 = &buf[24 * v18];
    *(a3 + 8) = *(v19 + 12);
    *(a3 + 16) = *(v19 + 5);
    *(a3 + 20) = v19[24];
    *a3 = *(v19 + 4);
  }

  sub_1000088CC(v21);
  return v17;
}

uint64_t sub_10074AE70(unsigned int *a1)
{
  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  *__p = 0u;
  v10 = 0u;
  v7 = 0u;
  memset(v8, 0, sizeof(v8));
  sub_100008760(&v7);
  sub_100007774(&v7, "totalRx:", 8);
  v1 = std::ostream::operator<<();
  sub_100007774(v1, " btMCRx:", 8);
  v2 = std::ostream::operator<<();
  sub_100007774(v2, " timeout:", 9);
  v3 = std::ostream::operator<<();
  sub_100007774(v3, " connDutyCycle:", 15);
  v4 = std::ostream::operator<<();
  sub_100007774(v4, " scWindow:", 10);
  v5 = std::ostream::operator<<();
  sub_100007774(v5, " eLNA: ", 7);
  std::ostream::operator<<();
  std::stringbuf::str();
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[1]);
  }

  std::locale::~locale(v8);
  std::ostream::~ostream();
  return std::ios::~ios();
}

id sub_10074B084(id a1, NSNumber *a2)
{
  v2 = a2;
  if ([(NSNumber *)v2 integerValue]<= 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  v4 = v3;

  return v3;
}

uint64_t sub_10074B0D4(uint64_t a1, void *a2)
{
  v5 = a2;
  v154[0] = 0;
  v154[1] = 0;
  sub_100007F88(v154, a1 + 120);
  v152 = 0;
  v151 = 0;
  v153[0] = 0;
  *(v153 + 3) = 0;
  if (*(a1 + 832) && *(a1 + 352) >= *(a1 + 832))
  {
    goto LABEL_102;
  }

  if (*(a1 + 184) != 1)
  {
    goto LABEL_92;
  }

  if (sub_100756A60(a1, v5))
  {
    v6 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Warning: LeConnectionDenyList: Device %{public}@ is currently blocked, ignoring request", buf, 0xCu);
    }

LABEL_7:
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      sub_10086F2EC();
    }

    v7 = 760;
LABEL_105:
    [*(a1 + v7) addObject:v5];
LABEL_106:
    if (_os_feature_enabled_impl())
    {
      v164 = 0;
      v165 = 0;
      v166 = 0;
      v44 = [v5 UUIDString];
      v45 = v44;
      sub_100007E30(&v164, [v44 UTF8String]);

      if (qword_100B508D0 != -1)
      {
        sub_10086DE2C();
      }

      v46 = sub_100788D8C(off_100B508C8, v5);
      if ((v46 - 0x10000) <= 0x1E && ((1 << v46) & 0x7F7800FF) != 0)
      {
        sub_10004DFB4(buf, v5);
        if (a1 + 616 == sub_1005FF344(a1 + 608, buf))
        {
          *&v155[20] = 0;
          if (a1 + 1368 == sub_1000463C8(a1 + 1360, &v164))
          {
            if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
            {
              sub_10086F35C(v46);
            }
          }

          else
          {
            *buf = &v164;
            v48 = sub_1007748BC((a1 + 1360), &v164, &unk_1008A9BD0, buf, &v127);
            *v155 = *(v48 + 7);
            *&v155[13] = *(v48 + 69);
            v49 = *v155;
            v50 = *&v155[4];
            v51 = *&v155[12];
            if (*v155 || *&v155[4] || *&v155[12])
            {
              v127 = 0;
              v128 = 0;
              v129 = 0;
              v52 = v5;
              *buf = v52;
              *&buf[8] = v49;
              *&buf[12] = v50;
              *&buf[16] = v51;
              *v157 = v46;
              v126[0] = _NSConcreteStackBlock;
              v126[1] = 3221225472;
              v126[2] = sub_10076BD50;
              v126[3] = &unk_100B0B978;
              v126[4] = a1;
              *&v157[8] = objc_retainBlock(v126);
              sub_1007767E8(&v127, buf);

              if (qword_100B50910 != -1)
              {
                sub_10086E454();
              }

              v53 = off_100B50908;
              memset(v125, 0, sizeof(v125));
              sub_100776B18(v125, v127, v128, 0xCCCCCCCCCCCCCCCDLL * ((v128 - v127) >> 3));
              sub_1005BE9B4(v53, v125);
              *buf = v125;
              sub_100776794(buf);
              sub_10004DFB4(buf, v52);
              sub_100506A24((a1 + 608), buf, buf);
              v54 = qword_100BCE980;
              if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
              {
                sub_10074AE70(v155);
                v55 = sub_10002DC3C(v46);
                v56 = v124 >= 0 ? v123 : v123[0];
                *buf = 138543874;
                *&buf[4] = v52;
                *&buf[12] = 2080;
                *&buf[14] = v55;
                *&buf[22] = 2080;
                *v157 = v56;
                _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "requestConnectionScanRxThreshold for device %{public}@ useCase %s params %s", buf, 0x20u);
                if (v124 < 0)
                {
                  operator delete(v123[0]);
                }
              }

              *buf = &v127;
              sub_100776794(buf);
            }
          }
        }
      }

      if (SHIBYTE(v166) < 0)
      {
        operator delete(v164);
      }
    }

    v35 = 0;
    goto LABEL_115;
  }

  if ((*(a1 + 184) & 1) == 0)
  {
    goto LABEL_92;
  }

  if (qword_100B508D0 != -1)
  {
    sub_10086DE2C();
  }

  v8 = off_100B508C8;
  sub_100007E30(__p, "PairedUsingRSA");
  v9 = sub_10004EB40(v8, v5, __p);
  if (v9)
  {
    v11 = sub_10000C798(v9, v10);
    v12 = (*(*v11 + 416))(v11);
  }

  else
  {
    v12 = 0;
  }

  if (v150 < 0)
  {
    operator delete(__p[0]);
  }

  v13 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    v14 = "NO";
    if (v12)
    {
      v14 = "YES";
    }

    *buf = 138543618;
    *&buf[4] = v5;
    *&buf[12] = 2082;
    *&buf[14] = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "MUC - Adding device %{public}@ to connection filter accept list supportsVAPairing:%{public}s, waiting for controller to complete.", buf, 0x16u);
  }

  if (qword_100B508D0 != -1)
  {
    sub_10086DE2C();
  }

  if (!sub_1007868D4(off_100B508C8, v5))
  {
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      sub_10086F008();
    }

    v35 = 8;
    goto LABEL_115;
  }

  v164 = 0;
  v165 = 0;
  v166 = 0;
  if (qword_100B508D0 != -1)
  {
    sub_10086DE2C();
  }

  sub_100790344(off_100B508C8, v5, &v164);
  v15 = v164;
  if (v164 == &v165)
  {
LABEL_43:
    sub_10004DFB4(buf, v5);
    if (a1 + 344 != sub_1005FF344(a1 + 336, buf) && os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_FAULT))
    {
      sub_10086F27C();
    }

    sub_10004DFB4(buf, v5);
    sub_100506A24((a1 + 336), buf, buf);
    sub_1007440F4(a1, 1);
    if (qword_100B508D0 != -1)
    {
      sub_10086DE2C();
    }

    v27 = sub_10078FBE8(off_100B508C8, v5);
    if (v27)
    {
      v29 = sub_10000C7D0(v27, v28);
      if (qword_100B508D0 != -1)
      {
        sub_10086DE2C();
      }

      v30 = sub_100046458(off_100B508C8, v5, 0);
      (*(*v29 + 4000))(v29, v30);
    }

    sub_10000CEDC(&v164, v165);
LABEL_53:
    if (qword_100B508D0 != -1)
    {
      sub_10086DE2C();
    }

    sub_10078CCAC(off_100B508C8, v5, buf);
    if (!*buf && !*&buf[8])
    {
      if (qword_100B508D0 != -1)
      {
        sub_10086DE2C();
      }

      sub_10078C994(off_100B508C8, v5);
    }

    if (qword_100B508D0 != -1)
    {
      sub_10086DE2C();
    }

    sub_10078B4E8(off_100B508C8, v5, 1);
    if (qword_100B54208 != -1)
    {
      sub_10086E578();
    }

    sub_1007F1548(qword_100B54200, v5, 1);
    v148 = 2;
    v147 = 12;
    LOWORD(v123[0]) = 12;
    v146 = 12;
    v145 = 200;
    if (qword_100B508D0 != -1)
    {
      sub_10086DE2C();
    }

    v31 = sub_100788D8C(off_100B508C8, v5);
    v32 = v31;
    v33 = HIWORD(v31);
    if (v31 > 256)
    {
      if (v31 == 257)
      {
        v42 = 12;
        LOWORD(v123[0]) = 12;
LABEL_146:
        v146 = v42;
        goto LABEL_147;
      }

      if (v31 != 196608)
      {
        goto LABEL_69;
      }
    }

    else
    {
      if (v31 == 5)
      {
        LOWORD(v123[0]) = *(a1 + 1118);
        v146 = *(a1 + 1120);
        v148 = *(a1 + 1122);
        v147 = *(a1 + 1123);
LABEL_147:
        v59 = 1;
        goto LABEL_148;
      }

      if (v31 != 19)
      {
LABEL_69:
        sub_10004DFB4(buf, v5);
        if (sub_10074ECD8(a1, buf))
        {
          v34 = 6;
        }

        else
        {
          if (qword_100B508D0 != -1)
          {
            sub_10086DE2C();
          }

          v57 = off_100B508C8;
          sub_100007E30(v143, "FastConnection");
          v58 = sub_10004EB40(v57, v5, v143);
          if (v144 < 0)
          {
            operator delete(v143[0]);
          }

          if (!v58)
          {
            if (v32 == 18)
            {
              v148 = 2;
              v147 = 4;
              LOWORD(v123[0]) = 23;
              v146 = 23;
              *v155 = 0;
              v98 = sub_10000E92C();
              sub_100007E30(buf, "LE");
              sub_100007E30(&v164, "SRPipeMinConInt");
              v99 = (*(*v98 + 88))(v98, buf, &v164, v155);
              if (*v155 > 0)
              {
                v100 = v99;
              }

              else
              {
                v100 = 0;
              }

              if (SHIBYTE(v166) < 0)
              {
                operator delete(v164);
              }

              if (buf[23] < 0)
              {
                operator delete(*buf);
              }

              if (v100)
              {
                v101 = qword_100BCE980;
                v102 = os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT);
                v103 = *v155;
                if (v102)
                {
                  *buf = 67109120;
                  *&buf[4] = *v155;
                  _os_log_impl(&_mh_execute_header, v101, OS_LOG_TYPE_DEFAULT, "Warning: Using override value (%d) SRPipe min connection interval", buf, 8u);
                  v103 = *v155;
                }

                LOWORD(v123[0]) = v103;
              }

              LODWORD(v127) = 0;
              v104 = sub_10000E92C();
              sub_100007E30(buf, "LE");
              sub_100007E30(&v164, "SRPipeMaxConInt");
              v105 = (*(*v104 + 88))(v104, buf, &v164, &v127);
              if (v127 > 0)
              {
                v106 = v105;
              }

              else
              {
                v106 = 0;
              }

              if (SHIBYTE(v166) < 0)
              {
                operator delete(v164);
              }

              if (buf[23] < 0)
              {
                operator delete(*buf);
              }

              if (v106)
              {
                v107 = qword_100BCE980;
                v108 = os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT);
                v109 = v127;
                if (v108)
                {
                  *buf = 67109120;
                  *&buf[4] = v127;
                  _os_log_impl(&_mh_execute_header, v107, OS_LOG_TYPE_DEFAULT, "Warning: Using override value (%d) SRPipe max connection interval", buf, 8u);
                  v109 = v127;
                }

                v146 = v109;
              }

              v142 = 0;
              v110 = sub_10000E92C();
              sub_100007E30(buf, "LE");
              sub_100007E30(&v164, "SRPipeSpecialParamsOff");
              v111 = (*(*v110 + 72))(v110, buf, &v164, &v142);
              v112 = (v111 & v142);
              if (SHIBYTE(v166) < 0)
              {
                operator delete(v164);
              }

              if (buf[23] < 0)
              {
                operator delete(*buf);
              }

              if (v112)
              {
                v113 = qword_100BCE980;
                if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v113, OS_LOG_TYPE_DEFAULT, "Warning: Disabling special SRPipe connection intervals", buf, 2u);
                }

                LOWORD(v123[0]) = 12;
                v146 = 12;
              }

              v59 = v112 ^ 1;
              goto LABEL_148;
            }

            if (qword_100B508D0 != -1)
            {
              sub_10086DE2C();
            }

            if (sub_100789BB0(off_100B508C8, v5))
            {
              v59 = 0;
              goto LABEL_140;
            }

            if (qword_100B508D0 != -1)
            {
              sub_10086DE2C();
            }

            v119 = off_100B508C8;
            sub_100007E30(v140, "requiresCTOFix");
            v120 = sub_10004EB40(v119, v5, v140);
            if (v32 == 131103)
            {
              v59 = 1;
            }

            else
            {
              v59 = v120;
            }

            if (v141 < 0)
            {
              operator delete(v140[0]);
            }

            if (!v59)
            {
LABEL_140:
              if ((v32 - 65562) <= 3 && _os_feature_enabled_impl())
              {
                v60 = qword_100BCE980;
                v61 = os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT);
                if (v61)
                {
                  *buf = 138543362;
                  *&buf[4] = v5;
                  _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "device %{public}@ Using Tx Boosted power for LE Connection ", buf, 0xCu);
                }

                v152 = 257;
                v63 = sub_10000C798(v61, v62);
                v64 = (*(*v63 + 392))(v63);
                *(a1 + 1601) = v64 ^ 1;
                v151 = v64 ^ 1;
                if (v33 != 1)
                {
                  goto LABEL_147;
                }

                LOWORD(v123[0]) = *(a1 + 1114);
                v42 = *(a1 + 1116);
                goto LABEL_146;
              }

LABEL_148:
              if (qword_100B508D0 != -1)
              {
                sub_10086DE2C();
              }

              v65 = sub_100792138(off_100B508C8, v5, &v148, &v147, v123, &v146, &v145, &v152 + 1, &v152, &v151);
              v66 = qword_100BCE980;
              if (v65)
              {
                if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543362;
                  *&buf[4] = v5;
                  _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "device %{public}@ has override connection params", buf, 0xCu);
                  v66 = qword_100BCE980;
                }

                v59 = 1;
              }

              if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
              {
                v67 = v148;
                v68 = v147;
                LOWORD(v3) = v123[0];
                LOWORD(v2) = v146;
                v69 = v145;
                sub_10004DFB4(&v164, v5);
                v70 = sub_10074ECD8(a1, &v164);
                *buf = 138545154;
                *&buf[4] = v5;
                *&buf[12] = 1024;
                v71 = "NO";
                if (v70)
                {
                  v71 = "YES";
                }

                *&buf[14] = v67;
                *&buf[18] = 1024;
                *&buf[20] = v68;
                *v157 = 2048;
                *&v157[2] = v3 * 1.25;
                *&v157[10] = 2048;
                *&v157[12] = v2 * 1.25;
                v158 = 1024;
                v159 = v69;
                v160 = 1024;
                *v161 = v59;
                *&v161[4] = 2082;
                *&v161[6] = v71;
                _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "Added device %{public}@ to connection filter accept list with CE min %d, max %d, connectionInterval min:%f ms max:%f ms supervisionTO: %d WLParams %d, LowLatency %{public}s", buf, 0x42u);
              }

              v164 = 0;
              v165 = 0;
              v166 = 0;
              if (qword_100B508D0 != -1)
              {
                sub_10086DE2C();
              }

              sub_100790344(off_100B508C8, v5, &v164);
              if (*(a1 + 1112) == 1 && v33 == 1)
              {
                v74 = *(a1 + 1114);
                LOWORD(v123[0]) = *(a1 + 1114);
                v75 = *(a1 + 1116);
                v146 = *(a1 + 1116);
                v76 = qword_100BCE980;
                v72 = os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT);
                if (v72)
                {
                  v77 = v148;
                  v78 = v147;
                  sub_10004DFB4(v155, v5);
                  v79 = sub_10074ECD8(a1, v155);
                  *buf = 138544898;
                  v80 = "NO";
                  if (v79)
                  {
                    v80 = "YES";
                  }

                  *&buf[4] = v5;
                  *&buf[12] = 1024;
                  *&buf[14] = v77;
                  *&buf[18] = 1024;
                  *&buf[20] = v78;
                  *v157 = 2048;
                  *&v157[2] = v74 * 1.25;
                  *&v157[10] = 2048;
                  *&v157[12] = v75 * 1.25;
                  v158 = 1024;
                  v159 = 1;
                  v160 = 2082;
                  *v161 = v80;
                  _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEFAULT, "Added device %{public}@ to connection filter accept list with CE min %d, max %d, connectionInterval min:%f ms max:%f ms WLParams %d, LowLatency %{public}s (overridden for FindMy)", buf, 0x3Cu);
                }
              }

              else if (!v59)
              {
LABEL_176:
                v90 = sub_10000C7D0(v72, v73);
                v91 = sub_10008215C(v90, 3u);
                if ((v91 & 1) != 0 || *(a1 + 1127) == 1 && (v95 = sub_10000C7D0(v91, v92), v91 = (*(*v95 + 3144))(v95), v91))
                {
                  if (sub_1007422D0(a1, v5))
                  {
                    memset(buf, 0, sizeof(buf));
                    v93 = [v5 UUIDString];
                    v94 = v93;
                    sub_100007E30(buf, [v93 UTF8String]);

                    if (buf[23] < 0)
                    {
                      sub_100008904(__dst, *buf, *&buf[8]);
                    }

                    else
                    {
                      *__dst = *buf;
                      v139 = *&buf[16];
                    }

                    sub_100769FF8(a1);
                    v96 = sub_1000463C8(a1 + 1192, __dst);
                    v97 = a1 + 1200;
                    if (SHIBYTE(v139) < 0)
                    {
                      operator delete(__dst[0]);
                    }

                    if (v97 == v96)
                    {
                      if (buf[23] < 0)
                      {
                        sub_100008904(v136, *buf, *&buf[8]);
                      }

                      else
                      {
                        *v136 = *buf;
                        v137 = *&buf[16];
                      }

                      sub_10076A184(a1, v136, 0);
                      if (SHIBYTE(v137) < 0)
                      {
                        operator delete(v136[0]);
                      }
                    }

                    else
                    {
                      sub_10074827C(a1, v5);
                    }

                    v114 = qword_100BCE980;
                    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
                    {
                      if (buf[23] < 0)
                      {
                        v115 = *buf;
                        sub_100008904(v134, *buf, *&buf[8]);
                      }

                      else
                      {
                        *v134 = *buf;
                        v135 = *&buf[16];
                        v115 = buf;
                      }

                      v116 = sub_1000463C8(a1 + 1192, v134);
                      v117 = v97 == v116 ? 2 : *(v116 + 56);
                      *v155 = 136446466;
                      *&v155[4] = v115;
                      *&v155[12] = 1024;
                      *&v155[14] = v117;
                      _os_log_impl(&_mh_execute_header, v114, OS_LOG_TYPE_DEFAULT, "RSSI threshold state for %{public}s is %d", v155, 0x12u);
                      if (SHIBYTE(v135) < 0)
                      {
                        operator delete(v134[0]);
                      }
                    }

                    if (buf[23] < 0)
                    {
                      operator delete(*buf);
                    }
                  }

                  sub_1007550C4(a1, v5, 0);
                }

                if (*(a1 + 1127) == 1)
                {
                  v118 = sub_10000C7D0(v91, v92);
                  if ((*(*v118 + 3144))(v118))
                  {
                    sub_100744178(a1, v5, *(a1 + 736), 0);
                  }
                }

                sub_10000CEDC(&v164, v165);
                goto LABEL_106;
              }

              v81 = v164;
              if (v164 != &v165)
              {
                do
                {
                  v82 = v81[4];
                  *&v155[3] = 0;
                  *v155 = 0;
                  v83 = sub_10009A66C(v82);
                  *v155 = v83;
                  v155[6] = BYTE6(v83);
                  *&v155[4] = WORD2(v83);
                  v85 = sub_10000C7D0(v83, v84);
                  BYTE4(v122) = v151;
                  BYTE3(v122) = 0;
                  BYTE2(v122) = v152;
                  LOWORD(v122) = HIBYTE(v152);
                  LOWORD(v121) = v147;
                  v86 = (*(*v85 + 4192))(v85, v155, 1, LOWORD(v123[0]), v146, 0, v145, v148, v121, v153, 0, 0, v122, 0);
                  v87 = qword_100BCE980;
                  v72 = os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT);
                  if (v72)
                  {
                    *buf = 67109120;
                    *&buf[4] = v86;
                    _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_DEFAULT, "addDeviceToFilterAcceptListUnified returned %d", buf, 8u);
                  }

                  v88 = v81[1];
                  if (v88)
                  {
                    do
                    {
                      v89 = v88;
                      v88 = *v88;
                    }

                    while (v88);
                  }

                  else
                  {
                    do
                    {
                      v89 = v81[2];
                      v26 = *v89 == v81;
                      v81 = v89;
                    }

                    while (!v26);
                  }

                  v81 = v89;
                }

                while (v89 != &v165);
              }

              goto LABEL_176;
            }

            v145 = 300;
LABEL_139:
            v59 = 1;
            goto LABEL_140;
          }

          v34 = 4;
        }

        v148 = v34;
LABEL_138:
        v147 = v34;
        goto LABEL_139;
      }
    }

    LOWORD(v123[0]) = *(a1 + 1106);
    v146 = *(a1 + 1108);
    v148 = *(a1 + 1110);
    v34 = *(a1 + 1111);
    goto LABEL_138;
  }

  if (v12)
  {
    v16 = "YES";
  }

  else
  {
    v16 = "NO";
  }

  while (1)
  {
    v17 = v15[4];
    v127 = v17;
    v18 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      v19 = sub_100063D0C(v17);
      *buf = 138544131;
      *&buf[4] = v5;
      *&buf[12] = 2160;
      *&buf[14] = 1752392040;
      *&buf[22] = 2113;
      *v157 = v19;
      *&v157[8] = 2080;
      *&v157[10] = v16;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "MUC - Adding device %{public}@ with address %{private, mask.hash}@ to connection filter accept list supportsVAPairing:%s, waiting for controller to complete.", buf, 0x2Au);

      v17 = v127;
    }

    v20 = sub_1007566C0(a1, v17);
    v21 = v20;
    if (!v20)
    {
      goto LABEL_37;
    }

    if (v20 != 4152)
    {
      break;
    }

    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      v22 = sub_100063D0C(v127);
      sub_10086F124(v22, &v162, &v163);
    }

LABEL_37:
    sub_10004DFB4(buf, v5);
    *v155 = &v127;
    v23 = sub_100774770(a1 + 360, &v127, &unk_1008A9BD0, v155, v123);
    uuid_copy(v23 + 40, buf);
    v24 = v15[1];
    if (v24)
    {
      do
      {
        v25 = v24;
        v24 = *v24;
      }

      while (v24);
    }

    else
    {
      do
      {
        v25 = v15[2];
        v26 = *v25 == v15;
        v15 = v25;
      }

      while (!v26);
    }

    v15 = v25;
    if (v25 == &v165)
    {
      goto LABEL_43;
    }
  }

  v36 = *(a1 + 360);
  if (v36 != (a1 + 368))
  {
    do
    {
      sub_10004DFB4(buf, v5);
      v37 = uuid_compare(v36 + 40, buf);
      if (v37)
      {
        v38 = v36[1];
        if (v38)
        {
          do
          {
            v39 = v38;
            v38 = *v38;
          }

          while (v38);
        }

        else
        {
          do
          {
            v39 = v36[2];
            v26 = *v39 == v36;
            v36 = v39;
          }

          while (!v26);
        }
      }

      else
      {
        v40 = sub_1007564FC(v37, v36[4]);
        v41 = qword_100BCE980;
        if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          *&buf[4] = v40;
          _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_INFO, "removeAddressFromBTController returned %d", buf, 8u);
        }

        v39 = sub_10002717C((a1 + 360), v36);
        operator delete(v36);
      }

      v36 = v39;
    }

    while (v39 != (a1 + 368));
  }

  sub_10000CEDC(&v164, v165);
  if (v21 > 103)
  {
    if (v21 != 104)
    {
      if (v21 != 160)
      {
        goto LABEL_99;
      }

      goto LABEL_7;
    }

LABEL_102:
    v43 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = v5;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Added device %{public}@ to connection overflow list", buf, 0xCu);
    }

    v7 = 752;
    goto LABEL_105;
  }

  if (!v21)
  {
    goto LABEL_53;
  }

  if (v21 == 103)
  {
LABEL_92:
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      sub_10086F188();
    }

    v132[0] = _NSConcreteStackBlock;
    v132[1] = 3221225472;
    v132[2] = sub_10076BCE8;
    v132[3] = &unk_100B0B5D8;
    v133 = v5;
    sub_10074063C(a1, v132);

    v35 = 202;
    goto LABEL_115;
  }

LABEL_99:
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
  {
    sub_10086F204();
  }

  v130[0] = _NSConcreteStackBlock;
  v130[1] = 3221225472;
  v130[2] = sub_10076BD1C;
  v130[3] = &unk_100B0B5D8;
  v131 = v5;
  sub_10074063C(a1, v130);

  v35 = 1;
LABEL_115:
  sub_1000088CC(v154);

  return v35;
}

void sub_10074C9E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *__p, uint64_t a53, int a54, __int16 a55, char a56, char a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a57 < 0)
  {
    operator delete(__p);
  }

  sub_1000088CC(&a65);

  _Unwind_Resume(a1);
}

void sub_10074CC04(id a1)
{
  if (qword_100B508B0 != -1)
  {
    sub_10086F3E4();
  }

  v2 = off_100B508A8;

  sub_10074CC48(v2);
}

uint64_t sub_10074CC48(uint64_t a1)
{
  v8[0] = 0;
  v8[1] = 0;
  sub_100007F88(v8, a1 + 120);
  v2 = *(a1 + 928);
  if (v2)
  {
    v3 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 864);
      if (v4 > 4)
      {
        v5 = "UNKNOWN";
      }

      else
      {
        v5 = (&off_100B0BF80)[v4];
      }

      if (v2 > 3)
      {
        v6 = "UNKNOWN";
      }

      else
      {
        v6 = off_100B0BE78[v2 - 1];
      }

      *buf = 136446466;
      v10 = v5;
      v11 = 2082;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Not processing outgoing connections. LE Connection State=%{public}s LE Connection Manager State=%{public}s", buf, 0x16u);
    }
  }

  else
  {
    sub_100753CFC(a1);
  }

  return sub_1000088CC(v8);
}

uint64_t sub_10074CD90(uint64_t **a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = a3;
  v6 = qword_100BCE9C0;
  if (os_log_type_enabled(qword_100BCE9C0, OS_LOG_TYPE_DEFAULT))
  {
    memset(out, 0, sizeof(out));
    uuid_unparse_upper(a2, out);
    v7 = __p;
    sub_100007E30(__p, out);
    if (v34 < 0)
    {
      v7 = __p[0];
    }

    v8 = sub_10074D290(a1, v3);
    *out = 136446466;
    *&out[4] = v7;
    *&out[12] = 2082;
    *&out[14] = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Device disconnecting - {cbuuid: %{public}s, ledisconnectionreason: %{public}s}", out, 0x16u);
    if (v34 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (sub_10074AB80(a1, a2))
  {
    v9 = qword_100BCE980;
    v10 = os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (!v10)
    {
      return result;
    }

    memset(out, 0, sizeof(out));
    uuid_unparse_upper(a2, out);
    sub_100007E30(__p, out);
    if (v34 >= 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    *out = 136446210;
    *&out[4] = v12;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Already trying to disconnect device %{public}s", out, 0xCu);
    if (v34 < 0)
    {
      operator delete(__p[0]);
    }

    return 0;
  }

  if ((sub_10074738C(a1, a2) & 1) != 0 || sub_100050290(a1, a2))
  {
    *out = 0;
    *&out[8] = 0;
    uuid_copy(out, a2);
    __p[0] = a2;
    *(sub_100774A1C(a1 + 57, a2, &unk_1008A9BD0, __p, &v35) + 11) = v3;
    if (qword_100B508D0 != -1)
    {
      sub_10086DE2C();
    }

    v13 = off_100B508C8;
    v14 = sub_10004DF60(a2);
    LODWORD(v13) = sub_100788D8C(v13, v14);

    if (v13)
    {
      if (qword_100B50910 != -1)
      {
        sub_10086E454();
      }

      nullsub_21();
    }

    if (qword_100B508D0 != -1)
    {
      sub_10086DE2C();
    }

    v15 = off_100B508C8;
    v16 = sub_10004DF60(a2);
    v17 = sub_10078C5DC(v15, v16);
    v18 = [v17 cuFilteredArrayUsingBlock:&stru_100B0B4C0];

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v19 = v18;
    v20 = [v19 countByEnumeratingWithState:&v29 objects:v38 count:16];
    if (v20)
    {
      v21 = *v30;
      do
      {
        v22 = 0;
        do
        {
          if (*v30 != v21)
          {
            objc_enumerationMutation(v19);
          }

          v23 = *(*(&v29 + 1) + 8 * v22);
          if (qword_100B50910 != -1)
          {
            sub_10086E454();
          }

          [v23 integerValue];
          nullsub_21();
          v22 = v22 + 1;
        }

        while (v20 != v22);
        v20 = [v19 countByEnumeratingWithState:&v29 objects:v38 count:16];
      }

      while (v20);
    }

    v26 = sub_100007EE8(v24, v25);
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3321888768;
    v36[2] = sub_10074D304;
    v36[3] = &unk_100B0A538;
    uuid_copy(v37, out);
    sub_10000CA94(v26, v36);

    return 0;
  }

  v27 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    memset(out, 0, sizeof(out));
    uuid_unparse_upper(a2, out);
    sub_100007E30(__p, out);
    v28 = v34 >= 0 ? __p : __p[0];
    *out = 136446210;
    *&out[4] = v28;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Cannot disconnect device %{public}s as it is not connecting or connected!", out, 0xCu);
    if (v34 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return 312;
}

const char *sub_10074D290(uint64_t a1, unsigned int a2)
{
  if (a2 > 0xA)
  {
    return "unknown";
  }

  else
  {
    return off_100B0BDD8[a2];
  }
}

id sub_10074D2B4(id a1, NSNumber *a2)
{
  v2 = a2;
  if ([(NSNumber *)v2 integerValue]<= 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  v4 = v3;

  return v3;
}

uint64_t sub_10074D304(uint64_t a1)
{
  if (qword_100B508B0 != -1)
  {
    sub_10086F3E4();
  }

  v2 = off_100B508A8;

  return sub_10074D358(v2, (a1 + 32));
}

uint64_t sub_10074D358(uint64_t a1, unsigned __int8 *a2)
{
  v53[0] = 0;
  v53[1] = 0;
  sub_100007F88(v53, a1 + 120);
  if (sub_10074AB80(a1, a2))
  {
    v4 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      memset(out, 0, sizeof(out));
      uuid_unparse_upper(a2, out);
      sub_100007E30(__p, out);
      if (v55 >= 0)
      {
        v5 = __p;
      }

      else
      {
        v5 = *__p;
      }

      *buf = 136446210;
      v57 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Device %{public}s is already disconnecting", buf, 0xCu);
      if (v55 < 0)
      {
        operator delete(*__p);
      }
    }

    return sub_1000088CC(v53);
  }

  if ((sub_10074738C(a1, a2) & 1) != 0 || sub_100050290(a1, a2))
  {
    if (qword_100B508C0 != -1)
    {
      sub_10086F454();
    }

    sub_1007C717C(off_100B508B8, a2);
    if (qword_100B508C0 != -1)
    {
      sub_10086F454();
    }

    sub_1007C7480(off_100B508B8, a2);
    sub_10074EB78(a1, a2);
    if (qword_100B508D0 != -1)
    {
      sub_10086DE2C();
    }

    v6 = off_100B508C8;
    v7 = sub_10004DF60(a2);
    sub_10078CB20(v6, v7);

    if (qword_100B508C0 != -1)
    {
      sub_10086F454();
    }

    v8 = off_100B508B8;
    v9 = sub_10004DF60(a2);
    LOBYTE(v8) = sub_10004EE74(v8, v9);

    if ((v8 & 1) == 0)
    {
      if (qword_100B508D0 != -1)
      {
        sub_10086DE2C();
      }

      v10 = off_100B508C8;
      v11 = sub_10004DF60(a2);
      sub_10078DC84(v10, v11, 0);
    }

    if (qword_100B54208 != -1)
    {
      sub_10086E578();
    }

    v12 = qword_100B54200;
    v13 = sub_10004DF60(a2);
    sub_1007F1548(v12, v13, 3);

    v14 = sub_10004E34C(a1 + 384, a2);
    if (a1 + 392 != v14)
    {
      v15 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
      {
        memset(out, 0, sizeof(out));
        uuid_unparse_upper(a2, out);
        sub_100007E30(__p, out);
        v16 = v55 >= 0 ? __p : *__p;
        *buf = 136446210;
        v57 = v16;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Disconnecting connected device %{public}s", buf, 0xCu);
        if (v55 < 0)
        {
          operator delete(*__p);
        }
      }

      v17 = *(a1 + 744);
      v18 = sub_10004DF60(a2);
      [v17 addObject:v18];

      *out = 0;
      v19 = sub_1000C4FCC(a1, a2, out);
      v20 = *out;
      if (*out)
      {
        v21 = v19;
      }

      else
      {
        v21 = 0;
      }

      if (v21)
      {
        __p[0] = 0;
        sub_1000216B4(__p);
        if (sub_1000ABD24(v20))
        {
          v22 = *(v20 + 252);
        }

        else
        {
          v22 = 0;
        }

        v35 = sub_100022214(__p);
        if (v22)
        {
          v37 = sub_10000C7D0(v35, v36);
          (*(*v37 + 3488))(v37, v20, 0xFFFFLL, 1, 0, 1);
        }

        sub_10002249C(__p);
      }

      v38 = sub_10004DF60(a2);
      sub_100746764(a1, v38);

      __p[0] = 0;
      sub_1000216B4(__p);
      sub_1002CDF48(*(v14 + 48));
      sub_10002249C(__p);
      return sub_1000088CC(v53);
    }

    v23 = *(a1 + 752);
    v24 = sub_10004DF60(a2);
    LODWORD(v23) = [v23 containsObject:v24];

    if (v23)
    {
      v25 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
      {
        memset(out, 0, sizeof(out));
        uuid_unparse_upper(a2, out);
        sub_100007E30(__p, out);
        v26 = v55 >= 0 ? __p : *__p;
        *buf = 136446210;
        v57 = v26;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Removing device %{public}s from connection overflow list", buf, 0xCu);
        if (v55 < 0)
        {
          operator delete(*__p);
        }
      }

      v27 = *(a1 + 752);
      v28 = sub_10004DF60(a2);
      [v27 removeObject:v28];

      return sub_1000088CC(v53);
    }

    v29 = *(a1 + 760);
    v30 = sub_10004DF60(a2);
    LODWORD(v29) = [v29 containsObject:v30];

    if (v29)
    {
      v31 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
      {
        memset(out, 0, sizeof(out));
        uuid_unparse_upper(a2, out);
        sub_100007E30(__p, out);
        v32 = v55 >= 0 ? __p : *__p;
        *buf = 136446210;
        v57 = v32;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "LeConnectionDenyList: Removing device %{public}s from blocked connection list", buf, 0xCu);
        if (v55 < 0)
        {
          operator delete(*__p);
        }
      }

      v33 = *(a1 + 760);
      v34 = sub_10004DF60(a2);
      [v33 removeObject:v34];

      return sub_1000088CC(v53);
    }

    v40 = *(a1 + 768);
    v41 = sub_10004DF60(a2);
    LODWORD(v40) = [v40 containsObject:v41];

    v42 = qword_100BCE980;
    v43 = os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT);
    if (v40)
    {
      if (v43)
      {
        sub_1000D67B4(a2, out);
        v44 = out[23] >= 0 ? out : *out;
        *__p = 136446210;
        *&__p[4] = v44;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Removing device %{public}s from pending to go into filter accept list", __p, 0xCu);
        if (out[23] < 0)
        {
          operator delete(*out);
        }
      }

      v45 = *(a1 + 768);
      v46 = sub_10004DF60(a2);
      [v45 removeObject:v46];

      return sub_1000088CC(v53);
    }

    if (v43)
    {
      sub_1000D67B4(a2, out);
      v47 = out[23] >= 0 ? out : *out;
      *__p = 136446210;
      *&__p[4] = v47;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Disconnecting pending device %{public}s", __p, 0xCu);
      if (out[23] < 0)
      {
        operator delete(*out);
      }
    }

    v48 = *(a1 + 864);
    if (v48 <= 1)
    {
      if (v48)
      {
        if (v48 != 1)
        {
          return sub_1000088CC(v53);
        }

        v49 = qword_100BCE980;
        if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
        {
          *out = 0;
          _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "cancelling, waiting for controller before removing from filter accept list", out, 2u);
        }

        if (sub_10074518C(a1, 1))
        {
          v50 = *(a1 + 744);
          v51 = sub_10004DF60(a2);
          [v50 addObject:v51];

          return sub_1000088CC(v53);
        }

        goto LABEL_79;
      }

      if (!*(a1 + 928) && os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_FAULT))
      {
        sub_10086F47C();
      }
    }

    else
    {
      switch(v48)
      {
        case 2:
          goto LABEL_79;
        case 3:
          v52 = sub_10004DF60(a2);
          sub_100754B04(a1, v52);

          return sub_1000088CC(v53);
        case 4:
LABEL_79:
          sub_100749FCC(a1, a2);
          break;
      }
    }
  }

  else if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
  {
    sub_1000D67B4(a2, out);
    sub_10086F3F8();
  }

  return sub_1000088CC(v53);
}

uint64_t sub_10074DD24(uint64_t a1, uint64_t a2, __int16 *a3, __int16 *a4, __int16 *a5, __int16 *a6, _WORD *a7, __int16 *a8, _WORD *a9, _WORD *a10, _WORD *a11, _WORD *a12, __int16 *a13, _BYTE *a14, _BYTE *a15)
{
  *a3 = 8;
  *a4 = 24;
  *a7 = 1;
  *a8 = 2000;
  *a6 = 12;
  *a5 = 2;
  *a9 = 3;
  *a10 = 3;
  *a11 = 1;
  *a12 = 2;
  *a13 = 200;
  *a14 = 0;
  *a15 = 1;
  switch(a2)
  {
    case -13:
      result = 0;
      *a3 = 8;
      *a4 = 24;
      *a7 = 1;
      *a6 = 12;
      *a5 = 12;
      *a9 = 33;
      *a10 = 33;
      *a11 = 1;
      *a12 = 2;
      v22 = 900;
      goto LABEL_13;
    case -12:
      result = 0;
      *a3 = *(a1 + 1118);
      *a4 = *(a1 + 1120);
      *a7 = 0;
      *a6 = *(a1 + 1123);
      v19 = *(a1 + 1122);
      goto LABEL_20;
    case -11:
      result = 0;
      *a3 = 8;
      *a4 = 24;
      *a7 = 1;
      *a6 = 12;
      *a5 = 12;
      *a9 = 3;
      *a10 = 3;
      *a11 = 1;
      *a12 = 2;
      v22 = 200;
LABEL_13:
      *a13 = v22;
      *a14 = 1;
      *a15 = 0;
      return result;
    case -10:
      result = 0;
      *a3 = (858993460 * (4 * *(a1 + 1100))) >> 32;
      *a4 = (858993460 * (4 * *(a1 + 1102))) >> 32;
      *a7 = 1;
      v20 = *(a1 + 1104);
      goto LABEL_22;
    case -9:
      result = 0;
      v21 = 120;
      goto LABEL_16;
    case -8:
      result = 0;
      v21 = 24;
LABEL_16:
      *a3 = v21;
      *a4 = v21;
      *a7 = 0;
      return result;
    case -7:
      result = 0;
      *a3 = 12;
      *a4 = 12;
      *a7 = 0;
      v20 = 2000;
      goto LABEL_22;
    case -6:
      result = 0;
      *a3 = 776;
      *a4 = 800;
      *a7 = 0;
      *a8 = 8000;
      v23 = 4;
      goto LABEL_19;
    case -5:
      *a3 = 24;
      *a4 = 24;
      *a7 = 0;
      sub_10000C7D0(3, a2);
      result = 0;
      v23 = 8;
LABEL_19:
      *a6 = v23;
      v19 = 2;
      goto LABEL_20;
    case -4:
    case -1:
      result = 0;
      *a3 = 12;
      *a4 = 12;
      *a7 = 0;
      v19 = 6;
      goto LABEL_5;
    case -3:
      result = 0;
      *a3 = 48;
      *a4 = 48;
      *a7 = 5;
      v19 = 12;
LABEL_5:
      *a6 = v19;
LABEL_20:
      *a5 = v19;
      return result;
    case -2:
      result = 0;
      *a3 = 16;
      *a4 = 24;
      *a7 = 5;
      *a6 = 12;
      *a5 = 12;
      *a9 = 1;
      *a10 = 1;
      *a11 = 5;
      *a12 = 0;
      *a13 = 200;
      return result;
    case 0:
      result = 0;
      *a3 = (858993460 * (4 * *(a1 + 1082))) >> 32;
      *a4 = (858993460 * (4 * *(a1 + 1084))) >> 32;
      *a7 = 0;
      v20 = *(a1 + 1086);
      goto LABEL_22;
    case 1:
      result = 0;
      *a3 = (858993460 * (4 * *(a1 + 1088))) >> 32;
      *a4 = (858993460 * (4 * *(a1 + 1090))) >> 32;
      *a7 = 1;
      v20 = *(a1 + 1092);
      goto LABEL_22;
    case 2:
      result = 0;
      *a3 = (858993460 * (4 * *(a1 + 1094))) >> 32;
      *a4 = (858993460 * (4 * *(a1 + 1096))) >> 32;
      *a7 = 1;
      v20 = *(a1 + 1098);
LABEL_22:
      *a8 = v20;
      break;
    default:
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
      {
        sub_10086F510();
      }

      result = 3;
      break;
  }

  return result;
}

void sub_10074E0F8(uint64_t a1)
{
  v1 = qword_100BCE980;
  if (a1)
  {
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      sub_10086F54C();
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      *v2 = 0;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Successfully Enabled event for connection subrating", v2, 2u);
    }

    if (qword_100B508B0 != -1)
    {
      sub_10086DE54();
    }

    *(off_100B508A8 + 1597) |= 4u;
  }
}

void sub_10074E1B4(uint64_t a1)
{
  v1 = qword_100BCE980;
  if (a1)
  {
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      sub_10086F5BC();
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      *v2 = 0;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Successfully Disabled event for connection subrating", v2, 2u);
    }

    if (qword_100B508B0 != -1)
    {
      sub_10086DE54();
    }

    *(off_100B508A8 + 1597) &= ~4u;
  }
}

uint64_t sub_10074E270(uint64_t a1, unint64_t a2, unint64_t a3, unsigned __int16 a4)
{
  v22 = a2;
  v21 = 0;
  sub_1000216B4(&v21);
  v8 = sub_1002D1DC0(a2, WORD1(a3), WORD2(a3), a3, HIWORD(a3), a4);
  sub_100022214(&v21);
  v20[0] = 0;
  v20[1] = 0;
  sub_100007F88(v20, a1 + 120);
  v9 = *(a1 + 536);
  if (v9)
  {
    v10 = a1 + 536;
    do
    {
      v11 = *(v9 + 32);
      v12 = v11 >= a2;
      v13 = v11 < a2;
      if (v12)
      {
        v10 = v9;
      }

      v9 = *(v9 + 8 * v13);
    }

    while (v9);
    if (v10 != a1 + 536 && *(v10 + 32) <= a2)
    {
      *buf = &v22;
      *(sub_10077444C(a1 + 528, &v22, &unk_1008A9BD0, buf) + 13) = v8 == 0;
    }
  }

  v14 = qword_100BCE980;
  if (v8)
  {
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      *buf = 67110400;
      *&buf[4] = WORD1(a3);
      v24 = 1024;
      v25 = WORD2(a3);
      v26 = 1024;
      v27 = a3;
      v28 = 1024;
      v29 = HIWORD(a3);
      v30 = 1024;
      v31 = a4;
      v32 = 1024;
      v33 = v8;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to enter Connection Subrating Mode with parameters: Subrate_Min=%d, Subrate_Max=%d, Max_Latency=%d, Continuation_Number=%d, Supervision_Timeout=%d. Status=%d", buf, 0x26u);
    }

    v15 = *(a1 + 512);
    if (v15)
    {
      v16 = a1 + 512;
      do
      {
        v17 = *(v15 + 32);
        v12 = v17 >= v22;
        v18 = v17 < v22;
        if (v12)
        {
          v16 = v15;
        }

        v15 = *(v15 + 8 * v18);
      }

      while (v15);
      if (v16 != a1 + 512 && v22 >= *(v16 + 32))
      {
        if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEBUG))
        {
          sub_10086F62C();
        }

        sub_100075DC4((a1 + 504), &v22);
      }
    }
  }

  else if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Successfully sent connection subrating request", buf, 2u);
  }

  sub_1000088CC(v20);
  sub_10002249C(&v21);
  return v8;
}

void sub_10074E4F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  sub_1000088CC(&a10);
  sub_10002249C(&a15);
  _Unwind_Resume(a1);
}

uint64_t sub_10074E528(unsigned __int8 *a1, void *a2, int a3)
{
  v5 = a2;
  if (a1[1603] != 1)
  {
    goto LABEL_18;
  }

  if (qword_100B508D0 != -1)
  {
    sub_10086E034();
  }

  if (!sub_1007877F0(off_100B508C8, v5))
  {
    goto LABEL_18;
  }

  if (a3 != -7)
  {
    if (qword_100B508D0 != -1)
    {
      sub_10086E034();
    }

    if (sub_1007876D8(off_100B508C8, v5) == 2)
    {
      v8 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 138543618;
        v11 = v5;
        v12 = 1024;
        v13 = a3;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "AudioQualityOptimizer - %{public}@ asking different interval(%d) during optimization", &v10, 0x12u);
      }

      if (qword_100B508D0 != -1)
      {
        sub_10086DE2C();
      }

      sub_10078764C(off_100B508C8, v5, 0);
    }

LABEL_18:
    v6 = 1;
    goto LABEL_19;
  }

  v6 = 1;
  if (a1[1602] == 1 && a1[400] >= 3uLL)
  {
    v7 = qword_100BCE980;
    v6 = 0;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 67109120;
      LODWORD(v11) = -7;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "AudioQualityOptimizer - Not allowed the interval(%d)", &v10, 8u);
      v6 = 0;
    }
  }

LABEL_19:

  return v6;
}

BOOL sub_10074E724(uint64_t a1, unsigned __int8 *a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, a1 + 120);
  v4 = a1 + 416 != sub_10004E34C(a1 + 408, a2);
  sub_1000088CC(v6);
  return v4;
}

uint64_t sub_10074E798(uint64_t a1, unint64_t a2, unsigned __int8 *a3, char a4)
{
  v10[1] = 0;
  v11 = a2;
  v10[0] = 0;
  sub_100007F88(v10, a1 + 120);
  v7 = sub_10004E34C(a1 + 936, a3);
  if (a1 + 944 != v7 && (a4 & 1) == 0)
  {
    goto LABEL_5;
  }

  v8 = sub_10074E868(a1, a3);
  if (!v8)
  {
    v13 = a3;
    v7 = sub_100774E50((a1 + 936), a3, &unk_1008A9BD0, &v13, &v12);
LABEL_5:
    sub_1000452CC(v7 + 48, &v11, &v11);
    v8 = 0;
  }

  sub_1000088CC(v10);
  return v8;
}

void sub_10074E854(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10074E868(uint64_t a1, unsigned __int8 *a2)
{
  v12 = 0;
  if (!sub_1000C4FCC(a1, a2, &v12))
  {
    return 312;
  }

  v11 = 0;
  sub_1000216B4(&v11);
  v2 = v12;
  if (sub_1000ABD24(v12))
  {
    if (sub_10024DE3C(sub_10074E910, v2, v3, v4, v5, v6, v7, v8))
    {
      v9 = 7;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 7;
  }

  sub_10002249C(&v11);
  return v9;
}

void sub_10074E910(uint64_t a1, uint64_t a2, char a3)
{
  v5 = a1;
  v6 = sub_100007EE8(a1, a2);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10076C79C;
  v7[3] = &unk_100AF2A50;
  v8 = v5;
  v7[4] = a2;
  v9 = a3;
  sub_10000CA94(v6, v7);
}

BOOL sub_10074E9A4(uint64_t a1, unsigned __int8 *a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, a1 + 120);
  v4 = a1 + 440 != sub_10004E34C(a1 + 432, a2);
  sub_1000088CC(v6);
  return v4;
}

uint64_t sub_10074EA18(uint64_t a1, const unsigned __int8 *a2)
{
  v11[0] = 0;
  v11[1] = 0;
  sub_100007F88(v11, a1 + 120);
  v4 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    memset(out, 0, 37);
    uuid_unparse_upper(a2, out);
    sub_100007E30(__p, out);
    if (v10 >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    *buf = 136446210;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Device %{public}s requires low latency", buf, 0xCu);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v6 = *(a1 + 824);
  v7 = sub_10004DF60(a2);
  [v6 addObject:v7];

  return sub_1000088CC(v11);
}

void sub_10074EB4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10074EB78(uint64_t a1, const unsigned __int8 *a2)
{
  v11[0] = 0;
  v11[1] = 0;
  sub_100007F88(v11, a1 + 120);
  v4 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    memset(out, 0, 37);
    uuid_unparse_upper(a2, out);
    sub_100007E30(__p, out);
    if (v10 >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    *buf = 136446210;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Device %{public}s does not require low latency", buf, 0xCu);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v6 = *(a1 + 824);
  v7 = sub_10004DF60(a2);
  [v6 removeObject:v7];

  return sub_1000088CC(v11);
}

void sub_10074ECAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

id sub_10074ECD8(uint64_t a1, const unsigned __int8 *a2)
{
  v2 = *(a1 + 824);
  v3 = sub_10004DF60(a2);
  v4 = [v2 containsObject:v3];

  return v4;
}

BOOL sub_10074ED30(uint64_t a1, unsigned __int8 *a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, a1 + 120);
  v4 = a1 + 648 != sub_10004E34C(a1 + 640, a2);
  sub_1000088CC(v6);
  return v4;
}

BOOL sub_10074EDA4(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v8[0] = 0;
  v8[1] = 0;
  sub_100007F88(v8, a1 + 120);
  v6 = *(sub_10004E34C(a1 + 640, a3) + 48) == a2;
  sub_1000088CC(v8);
  return v6;
}

BOOL sub_10074EE24(uint64_t a1, const unsigned __int8 *a2)
{
  v10[0] = 0;
  v10[1] = 0;
  sub_100007F88(v10, a1 + 120);
  v4 = *(a1 + 688);
  uuid_copy(dst, a2);
  v5 = (a1 + 696);
  if (v4 != v5)
  {
    while (uuid_compare(v4 + 40, dst))
    {
      v6 = *(v4 + 1);
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
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
      if (v7 == v5)
      {
        v4 = v5;
        break;
      }
    }
  }

  sub_1000088CC(v10);
  return v4 != v5;
}

void sub_10074EF10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

BOOL sub_10074EF30(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v8[0] = 0;
  v8[1] = 0;
  sub_100007F88(v8, a1 + 120);
  v6 = *(sub_10004E34C(a1 + 664, a3) + 48) == a2;
  sub_1000088CC(v8);
  return v6;
}

uint64_t sub_10074EFB0(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v8 = 0;
  if (sub_1000C4FCC(a1, a2, &v8))
  {
    v7 = 0;
    sub_1000216B4(&v7);
    sub_1002C2CD0(v8, a3, a4);
    sub_10002249C(&v7);
  }

  return 1;
}

uint64_t sub_10074F028(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = 0;
  if (sub_1000C4FCC(a1, a2, &v12))
  {
    v11 = 0;
    sub_1000216B4(&v11);
    sub_1002C3D98(v12, a3, a4, a5, a6);
    sub_10002249C(&v11);
  }

  return 1;
}

uint64_t sub_10074F0B8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v11[0] = 0;
  v11[1] = 0;
  sub_100007F88(v11, a1 + 120);
  v10 = 0;
  sub_10004DFB4(v12, v5);
  if (sub_1000C4FCC(a1, v12, &v10))
  {
    v12[0] = 0;
    sub_1000216B4(v12);
    v6 = sub_100196A3C(v10, sub_10074F204, a2);
    sub_100022214(v12);
    if (v6 == 414)
    {
      v7 = 409;
    }

    else
    {
      v7 = v6 != 0;
    }

    if (v6 == 116)
    {
      v8 = 10;
    }

    else
    {
      v8 = v7;
    }

    sub_10002249C(v12);
  }

  else
  {
    v8 = 312;
  }

  sub_1000088CC(v11);

  return v8;
}

void sub_10074F1C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);

  _Unwind_Resume(a1);
}

void sub_10074F204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v10 = __ROR8__(a2, 32);
  v11 = __ROR8__(a3, 32);
  v12 = __ROR8__(a4, 32);
  v13 = __ROR8__(a5, 32);
  v14 = sub_100007EE8(a1, a2);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10076CEFC;
  v15[3] = &unk_100B0BA80;
  v15[4] = a1;
  v15[5] = v10;
  v15[6] = v11;
  v15[7] = v12;
  v16 = a6;
  v15[8] = v13;
  v15[9] = a7;
  sub_10000CA94(v14, v15);
}

uint64_t sub_10074F2BC(uint64_t a1, unsigned __int8 *a2)
{
  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, a1 + 120);
  v8 = 0;
  v7 = 0;
  if (sub_1000C4FCC(a1, a2, &v8))
  {
    v6 = 0;
    sub_1000216B4(&v6);
    sub_1002D007C(v8, &v7);
    sub_10002249C(&v6);
    v4 = v7;
  }

  else
  {
    v4 = 0;
  }

  sub_1000088CC(v9);
  return v4;
}

void sub_10074F34C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, char a10, char a11, uint64_t a12, char a13)
{
  sub_10002249C(&a11);
  sub_1000088CC(&a13);
  _Unwind_Resume(a1);
}

uint64_t sub_10074F374(uint64_t a1, unsigned __int8 *a2)
{
  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, a1 + 120);
  v8 = 0;
  v7 = 12;
  if (sub_1000C4FCC(a1, a2, &v8))
  {
    v6 = 0;
    sub_1000216B4(&v6);
    sub_1002D00E4(v8, &v7);
    sub_10002249C(&v6);
    v4 = v7;
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      sub_10086F69C();
    }

    v4 = 12;
  }

  sub_1000088CC(v9);
  return v4;
}

void sub_10074F430(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, char a10, char a11, uint64_t a12, char a13)
{
  sub_10002249C(&a11);
  sub_1000088CC(&a13);
  _Unwind_Resume(a1);
}

uint64_t sub_10074F458(uint64_t a1, unsigned __int8 *a2)
{
  v8[0] = 0;
  v8[1] = 0;
  sub_100007F88(v8, a1 + 120);
  v7 = 0;
  if (sub_1000C4FCC(a1, a2, &v7))
  {
    v6 = 0;
    sub_1000216B4(&v6);
    v4 = sub_1002D026C(v7);
    sub_10002249C(&v6);
  }

  else
  {
    v4 = 0;
  }

  sub_1000088CC(v8);
  return v4;
}

void sub_10074F4E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, __int16 a10, char a11, char a12, uint64_t a13, char a14)
{
  sub_10002249C(&a12);
  sub_1000088CC(&a14);
  _Unwind_Resume(a1);
}

uint64_t sub_10074F508(uint64_t a1, unsigned __int8 *a2)
{
  v8[0] = 0;
  v8[1] = 0;
  sub_100007F88(v8, a1 + 120);
  v7 = 0;
  if (sub_1000C4FCC(a1, a2, &v7))
  {
    v6 = 0;
    sub_1000216B4(&v6);
    v4 = sub_1002D02B4(v7);
    sub_10002249C(&v6);
  }

  else
  {
    v4 = 0;
  }

  sub_1000088CC(v8);
  return v4;
}

void sub_10074F590(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, __int16 a10, char a11, char a12, uint64_t a13, char a14)
{
  sub_10002249C(&a12);
  sub_1000088CC(&a14);
  _Unwind_Resume(a1);
}

void sub_10074F5B8(uint64_t a1)
{
  v1 = *(a1 + 32);
  Current = CFAbsoluteTimeGetCurrent();
  v3 = *(v1 + 328);
  if (v3 != 0.0)
  {
    v4 = Current;
    if (Current - v3 > 1200.0)
    {
      v5 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
      {
        v6 = "NO";
        if (*(v1 + 184))
        {
          v7 = "YES";
        }

        else
        {
          v7 = "NO";
        }

        v8 = *(v1 + 352);
        v9 = *(v1 + 864);
        if (v9 > 4)
        {
          v10 = "UNKNOWN";
        }

        else
        {
          v10 = (&off_100B0BF80)[v9];
        }

        if (*(v1 + 1066))
        {
          v6 = "YES";
        }

        v11 = 134219266;
        v12 = v4;
        v13 = 2048;
        v14 = v3;
        v15 = 2082;
        v16 = v7;
        v17 = 2048;
        v18 = v8;
        v19 = 2082;
        v20 = v10;
        v21 = 2082;
        v22 = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Last address changed over 20 minutes ago (now:%f lastTime:%f fStarted:%{public}s fConnectingDevices.size():%zu fConnectionState:%{public}s fWaitForAddressChangeToComplete:%{public}s), forcing address change", &v11, 0x3Eu);
      }

      LOBYTE(v11) = 0;
      sub_1000216B4(&v11);
      sub_1002D2248();
      sub_100022214(&v11);
      sub_10002249C(&v11);
    }
  }
}

uint64_t sub_10074F748(uint64_t a1, uint64_t a2, void *a3, unsigned __int8 *a4, void *a5)
{
  v9 = a3;
  v10 = a5;
  if (!v9)
  {
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      sub_10086F8FC();
    }

    v14 = v61;
    v61[0] = _NSConcreteStackBlock;
    v61[1] = 3221225472;
    v15 = *(a4 + 1);
    v62 = *a4;
    v61[2] = sub_10075004C;
    v61[3] = &unk_100B0B4E8;
    v61[4] = 0;
    v63 = v15;
    v13 = 22;
    v64 = *(a4 + 8);
    v65 = 22;
    sub_10074063C(a1, v61);
    goto LABEL_14;
  }

  sub_10004DFB4(buf, v9);
  if (a1 + 392 == sub_10004E34C(a1 + 384, buf))
  {
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      sub_10086F88C();
    }

    v14 = v56;
    v56[0] = _NSConcreteStackBlock;
    v56[1] = 3221225472;
    v56[2] = sub_1007500C0;
    v56[3] = &unk_100B0B4E8;
    v56[4] = v9;
    v16 = *(a4 + 1);
    v57 = *a4;
    v58 = v16;
    v13 = 312;
    v59 = *(a4 + 8);
    v60 = 312;
    sub_10074063C(a1, v56);
LABEL_14:
    v17 = (v14 + 4);
LABEL_54:

    goto LABEL_55;
  }

  if (*a4 == 1)
  {
    sub_10004DFB4(buf, v9);
    if (sub_10074ED30(a1, buf))
    {
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
      {
        sub_10086F818();
      }

      v11 = v51;
      v51[0] = _NSConcreteStackBlock;
      v51[1] = 3221225472;
      v51[2] = sub_100750134;
      v51[3] = &unk_100B0B4E8;
      v51[4] = v9;
      v12 = *(a4 + 1);
      v52 = *a4;
      v53 = v12;
      v13 = 1500;
      v54 = *(a4 + 8);
      v55 = 1500;
      sub_10074063C(a1, v51);
LABEL_42:
      v17 = (v11 + 4);
      goto LABEL_54;
    }
  }

  else
  {
    sub_10004DFB4(buf, v9);
    if (!sub_10074ED30(a1, buf))
    {
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
      {
        sub_10086F6D8();
      }

      v11 = v46;
      v46[0] = _NSConcreteStackBlock;
      v46[1] = 3221225472;
      v46[2] = sub_1007501A8;
      v46[3] = &unk_100B0B4E8;
      v46[4] = v9;
      v20 = *(a4 + 1);
      v47 = *a4;
      v48 = v20;
      v13 = 1501;
      v49 = *(a4 + 8);
      v50 = 1501;
      sub_10074063C(a1, v46);
      goto LABEL_42;
    }
  }

  if (*a4 != 1)
  {
    sub_10004DFB4(buf, v9);
    if (!sub_10074EDA4(a1, a2, buf))
    {
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
      {
        sub_10086F6D8();
      }

      v11 = v41;
      v41[0] = _NSConcreteStackBlock;
      v41[1] = 3221225472;
      v41[2] = sub_10075021C;
      v41[3] = &unk_100B0B4E8;
      v41[4] = v9;
      v25 = *(a4 + 1);
      v42 = *a4;
      v43 = v25;
      v13 = 1502;
      v44 = *(a4 + 8);
      v45 = 1502;
      sub_10074063C(a1, v41);
      goto LABEL_42;
    }

    sub_10004DFB4(buf, v9);
    v21 = sub_10004E34C(a1 + 640, buf);
    if (a1 + 648 != v21)
    {
      sub_10077519C((a1 + 640), v21);
    }

LABEL_29:
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100750290;
    block[3] = &unk_100ADF820;
    v22 = v9;
    v40 = v22;
    if (qword_100BC7AF8 != -1)
    {
      dispatch_once(&qword_100BC7AF8, block);
    }

    if (qword_100B508D0 != -1)
    {
      sub_10086DE2C();
    }

    if (sub_100788D8C(off_100B508C8, v22) == dword_100BC7AF0 && byte_100BC7AF4 == 1)
    {
      a4[28] = byte_100BC7AF4;
    }

    *uu1 = 0;
    sub_10004DFB4(buf, v22);
    v23 = sub_1000C4FCC(a1, buf, uu1);
    if (v23)
    {
      v13 = 0;
    }

    else
    {
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
      {
        sub_10086F774();
      }

      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_1007504A0;
      v33[3] = &unk_100B0B4E8;
      v34 = v22;
      v26 = *(a4 + 1);
      v35 = *a4;
      v36 = v26;
      v37 = *(a4 + 8);
      v38 = 7;
      sub_10074063C(a1, v33);

      v13 = 7;
    }

    if (a4[30])
    {
      if (qword_100B51098 != -1)
      {
        sub_10086F7F0();
      }

      sub_100488EA0(qword_100B51090, v22, **uu1, a4[1], a4[3], a4[6], a4[29], 0);
      a4[28] |= 2u;
      v27 = qword_100BCE980;
      v23 = os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT);
      if (v23)
      {
        v28 = a4[3];
        v29 = a4[6];
        *buf = 138543874;
        *&buf[4] = v22;
        *&buf[12] = 1024;
        *&buf[14] = v28;
        *&buf[18] = 1024;
        *&buf[20] = v29;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "RSSI Detection Enabled AOP Path  %{public}@. RSSI Further=%d Closer=%d", buf, 0x18u);
      }
    }

    if ((a4[30] & 2) != 0)
    {
      *(a4 + 2) = 2139654280;
      *(a4 + 3) = 32639;
    }

    v30 = sub_10000C7D0(v23, v24);
    DWORD2(v32) = *(a4 + 6);
    *&v32 = *(a4 + 2);
    (*(*v30 + 2112))(v30, *a4, **uu1, a4[1], a4[2], a4[3], a4[4], a4[5], *(a4 + 6), a4[14], *(&v32 + 4), a4[28]);
    v17 = &v40;
    goto LABEL_54;
  }

  if (qword_100B50B88 != -1)
  {
    sub_10086F74C();
  }

  if (sub_100618524(qword_100B50B80, a2))
  {
    *buf = a2;
    sub_100614BB8(a2, &buf[8]);
    sub_10004DFB4(uu1, v9);
    v67 = uu1;
    v18 = sub_100774FF8((a1 + 640), uu1, &unk_1008A9BD0, &v67, &v66);
    v19 = v18;
    v18[6] = *buf;
    if (*(v18 + 79) < 0)
    {
      operator delete(v18[7]);
    }

    *(v19 + 7) = *&buf[8];
    v19[9] = v70;
    goto LABEL_29;
  }

  v13 = 1503;
LABEL_55:

  return v13;
}

uint64_t sub_10075004C(uint64_t a1, uint64_t a2)
{
  BYTE4(v4) = 0;
  LODWORD(v4) = *(a1 + 76);
  WORD2(v3) = 0;
  LODWORD(v3) = 0;
  return (*(*a2 + 80))(a2, *(a1 + 32), *(a1 + 56), *(a1 + 64), *(a1 + 60), 0, 0, 0, v3, v4);
}

uint64_t sub_1007500C0(uint64_t a1, uint64_t a2)
{
  BYTE4(v4) = 0;
  LODWORD(v4) = *(a1 + 76);
  WORD2(v3) = 0;
  LODWORD(v3) = 0;
  return (*(*a2 + 80))(a2, *(a1 + 32), *(a1 + 56), *(a1 + 64), *(a1 + 60), 0, 0, 0, v3, v4);
}

uint64_t sub_100750134(uint64_t a1, uint64_t a2)
{
  BYTE4(v4) = 0;
  LODWORD(v4) = *(a1 + 76);
  WORD2(v3) = 0;
  LODWORD(v3) = 0;
  return (*(*a2 + 80))(a2, *(a1 + 32), *(a1 + 56), *(a1 + 64), *(a1 + 60), 0, 0, 0, v3, v4);
}

uint64_t sub_1007501A8(uint64_t a1, uint64_t a2)
{
  BYTE4(v4) = 0;
  LODWORD(v4) = *(a1 + 76);
  WORD2(v3) = 0;
  LODWORD(v3) = 0;
  return (*(*a2 + 80))(a2, *(a1 + 32), *(a1 + 56), *(a1 + 64), *(a1 + 60), 0, 0, 0, v3, v4);
}

uint64_t sub_10075021C(uint64_t a1, uint64_t a2)
{
  BYTE4(v4) = 0;
  LODWORD(v4) = *(a1 + 76);
  WORD2(v3) = 0;
  LODWORD(v3) = 0;
  return (*(*a2 + 80))(a2, *(a1 + 32), *(a1 + 56), *(a1 + 64), *(a1 + 60), 0, 0, 0, v3, v4);
}

void sub_100750290(uint64_t a1)
{
  v2 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "EnableRSSIDetectionDebuggingUseCase");
  (*(*v2 + 88))(v2, buf, __p, &dword_100BC7AF0);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v12) < 0)
  {
    operator delete(*buf);
  }

  v3 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "EnableRSSIDetectionDebugging");
  (*(*v3 + 72))(v3, buf, __p, &byte_100BC7AF4);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v12) < 0)
  {
    operator delete(*buf);
  }

  v4 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138543874;
    *&buf[4] = v5;
    v9 = 1024;
    v10 = dword_100BC7AF0;
    v11 = 1024;
    v12 = byte_100BC7AF4;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "RSSI Detection Debugging enabled for %{public}@. %d:%d", buf, 0x18u);
  }
}

void sub_10075045C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007504A0(uint64_t a1, uint64_t a2)
{
  BYTE4(v4) = 0;
  LODWORD(v4) = *(a1 + 76);
  WORD2(v3) = 0;
  LODWORD(v3) = 0;
  return (*(*a2 + 80))(a2, *(a1 + 32), *(a1 + 56), *(a1 + 64), *(a1 + 60), 0, 0, 0, v3, v4);
}

uint64_t sub_100750514(uint64_t a1, uint64_t a2, int a3, void *a4, uint64_t a5, uint64_t a6)
{
  v7 = a5;
  v11 = a4;
  *src = 0;
  v35 = 0;
  v12 = sub_10004DFB4(src, v11);
  if (uuid_is_null(v12))
  {
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      sub_10086F97C();
    }

    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3321888768;
    v30[2] = sub_1007508F0;
    v30[3] = &unk_100B0B508;
    uuid_copy(v33, src);
    v32 = v7;
    v13 = 7;
    v31 = 7;
    sub_10074063C(a1, v30);
  }

  else
  {
    v23[0] = 0;
    v23[1] = 0;
    sub_100007F88(v23, a1 + 120);
    if (a1 + 392 == sub_10004E34C(a1 + 384, src))
    {
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
      {
        sub_10004DF60(src);
        objc_claimAutoreleasedReturnValue();
        sub_10086FA5C();
      }

      sub_10000801C(v23);
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3321888768;
      v25[2] = sub_100750994;
      v25[3] = &unk_100B0B508;
      uuid_copy(v28, src);
      v27 = v7;
      v13 = 312;
      v26 = 312;
      sub_10074063C(a1, v25);
    }

    else if (sub_10074EF30(a1, a2, src) || a1 + 672 == sub_10004E34C(a1 + 664, src))
    {
      if (a3)
      {
        v29 = src;
        v14 = sub_1007751E0((a1 + 664), src, &unk_1008A9BD0, &v29, &v24);
        v14[6] = a2;
        v16 = sub_10000C7D0(v14, v15);
        (*(*v16 + 2120))(v16, v7, HIWORD(v7), a6);
      }

      else
      {
        v17 = sub_10004E34C(a1 + 664, src);
        if ((a1 + 672) != v17)
        {
          sub_10002717C((a1 + 664), v17);
          operator delete(v17);
        }
      }

      v13 = 0;
    }

    else
    {
      sub_10000801C(v23);
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
      {
        sub_10086F9EC();
      }

      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_100750A38;
      v19[3] = &unk_100B0B540;
      v20 = v11;
      v22 = v7;
      v21 = 2100;
      sub_10074063C(a1, v19);

      v13 = 2100;
    }

    sub_1000088CC(v23);
  }

  return v13;
}

void sub_1007508A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_1000088CC(va);

  _Unwind_Resume(a1);
}

void sub_1007508F0(uint64_t a1, uint64_t a2)
{
  v3 = sub_10004DF60((a1 + 40));
  (*(*a2 + 88))(a2);
}

void sub_100750994(uint64_t a1, uint64_t a2)
{
  v3 = sub_10004DF60((a1 + 40));
  (*(*a2 + 88))(a2);
}

void sub_100750A7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004DF60((a1 + 68));
  v5 = *(a1 + 48);
  v6[0] = *(a1 + 32);
  v6[1] = v5;
  (*(*a2 + 96))(a2, v4, v6, *(a1 + 64));
}

void sub_100750B20(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004DF60((a1 + 68));
  v5 = *(a1 + 48);
  v6[0] = *(a1 + 32);
  v6[1] = v5;
  (*(*a2 + 96))(a2, v4, v6, *(a1 + 64));
}

void sub_100750BB4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char a9, char a10, __int16 a11, __int16 a12, char a13, uint64_t a14, int a15)
{
  v19 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67113984;
    v25 = a1;
    v26 = 1024;
    v27 = a2;
    v28 = 1024;
    v29 = a3;
    v30 = 1024;
    v31 = a4;
    v32 = 1024;
    v33 = a5;
    v34 = 1024;
    v35 = a6;
    v36 = 1024;
    v37 = a7;
    v38 = 1024;
    v39 = a8;
    v40 = 1024;
    v41 = a9;
    v42 = 1024;
    v43 = a10;
    v44 = 1024;
    v45 = a11;
    v46 = 1024;
    v47 = a11;
    v48 = 1024;
    v49 = a13;
    v50 = 1024;
    v51 = a14;
    v52 = 1024;
    v53 = WORD1(a14);
    v54 = 1024;
    v55 = WORD2(a14);
    v56 = 1024;
    v57 = HIWORD(a14);
    v58 = 1024;
    v59 = a15;
    v60 = 1024;
    v61 = BYTE2(a15);
    v62 = 1024;
    v63 = HIBYTE(a15);
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Cscb: csLeLocalSupportedCapabilitiesCB status=%{bluetooth:OI_STATUS}u numConfig:%d maxProc:%d numAnt:%d rolesSup:%d modeSup:%d rttCap:%d rttCoarseN:%d rttSoundingN:%d rttRandomPayloadN:%d NADM:%d:%d SyncPhy%d:%d:%d:%d FcsTime:%d %d:%d txSNR:%d", buf, 0x7Au);
  }

  BYTE14(xmmword_100BCE038) = a2;
  word_100BCE048 = a3;
  byte_100BCE04A = a4;
  byte_100BCE04B = a5;
  byte_100BCE04C = a6;
  byte_100BCE04D = a7;
  byte_100BCE04E = a8;
  byte_100BCE04F = a9;
  byte_100BCE050 = a10;
  word_100BCE052 = a11;
  word_100BCE054 = a11;
  byte_100BCE056 = a13;
  *&xmmword_100BCE058 = a14;
  DWORD2(xmmword_100BCE058) = a15;
  sub_10002286C(&stru_100BCECB0);
  byte_100BCED20 = 0;
}

uint64_t sub_100750E28()
{
  v12 = 0;
  sub_1000216B4(&v12);
  v6 = sub_100018960(260, sub_100750BB4, v0, v1, v2, v3, v4, v5, v11);
  sub_100022214(&v12);
  v7 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "csReadLocalSupportedCapabilities status:%d", buf, 8u);
  }

  byte_100BCED20 = 1;
  if (v6)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("CS read local capabilities failed with status %!", v6);
      v8 = sub_10000C050(0x5Cu);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = sub_10000C0FC();
        sub_10086FB1C(v9, buf);
      }
    }

    byte_100BCED20 = 0;
  }

  else
  {
    *buf = 0;
    v14 = 0;
    sub_100007F88(buf, &stru_100BCECE0);
    if (byte_100BCED20 == 1)
    {
      sub_1003645F8(&stru_100BCECB0, buf);
    }

    sub_10000801C(buf);
    sub_1000088CC(buf);
  }

  sub_10002249C(&v12);
  return 0;
}

uint64_t sub_100750FDC(void *a1, uint64_t a2, uint64_t a3)
{
  v24[0] = 0;
  v24[1] = 0;
  sub_10004DFB4(v24, a3);
  if ((sub_10074738C(a1, v24) & 1) != 0 || sub_100050290(a1, v24))
  {
    v4 = 0;
  }

  else
  {
    v5 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      sub_10086FB5C(v24, v5, v6);
    }

    v4 = 312;
  }

  v22 = 0;
  v7 = sub_1000C4FCC(a1, v24, &v22);
  v8 = v22;
  if (v22)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    v21 = 0;
    sub_1000216B4(&v21);
    if (sub_1000ABD24(v8))
    {
      v17 = sub_1000D6178(0x105u, v10, v11, v12, v13, v14, v15, v16, v8);
      if (v17)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("CS read remote capabilities failed with status %!", v17);
          v18 = sub_10000C050(0x5Cu);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            v19 = sub_10000C0FC();
            sub_10086FB1C(v19, v23);
          }
        }
      }
    }

    sub_10002249C(&v21);
  }

  return v4;
}

uint64_t sub_100751160(void *a1, unint64_t a2, uint64_t a3, _OWORD *a4)
{
  *src = 0;
  v19 = 0;
  sub_10004DFB4(src, a3);
  uuid_copy(dst, src);
  v7 = sub_1007512C8(a1, a2, dst);
  if ((sub_10074738C(a1, src) & 1) != 0 || sub_100050290(a1, src))
  {
    if (v7)
    {
      v15 = 0;
      sub_1000216B4(&v15);
      v14 = 0;
      v8 = sub_1000C4FCC(a1, src, &v14);
      if (v14)
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }

      if (v9)
      {
        v10 = a4[1];
        *dst = *a4;
        v17[0] = v10;
        *(v17 + 10) = *(a4 + 26);
        sub_100317AE0(v7, v14, dst);
      }

      sub_100022214(&v15);
      sub_10002249C(&v15);
    }

    return 0;
  }

  else
  {
    v12 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      sub_10086FBEC(src, v12, v13);
    }

    return 312;
  }
}

uint64_t sub_1007512C8(uint64_t a1, unint64_t a2, unsigned __int8 *uu)
{
  v12 = a2;
  v5 = *(a1 + 1408);
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = a1 + 1408;
  do
  {
    v7 = *(v5 + 32);
    v8 = v7 >= a2;
    v9 = v7 < a2;
    if (v8)
    {
      v6 = v5;
    }

    v5 = *(v5 + 8 * v9);
  }

  while (v5);
  if (v6 == a1 + 1408 || *(v6 + 32) > a2)
  {
LABEL_9:
    memset(v14, 0, 42);
    operator new();
  }

  v10 = *(v6 + 40);
  if (!uuid_is_null(uu) && a1 + 1432 == sub_10004E34C(a1 + 1424, uu))
  {
    *&v14[0] = uu;
    sub_100775454((a1 + 1424), uu, &unk_1008A9BD0, v14, &v13)[6] = v10;
  }

  return v10;
}

uint64_t sub_100751474(void *a1, unint64_t a2, uint64_t a3)
{
  *src = 0;
  v20 = 0;
  sub_10004DFB4(src, a3);
  uuid_copy(dst, src);
  v5 = sub_1007512C8(a1, a2, dst);
  if ((sub_10074738C(a1, src) & 1) != 0 || sub_100050290(a1, src))
  {
    if (v5)
    {
      v17 = 0;
      sub_1000216B4(&v17);
      *dst = 0;
      v6 = sub_1000C4FCC(a1, src, dst);
      if (*dst)
      {
        v13 = v6;
      }

      else
      {
        v13 = 0;
      }

      if (v13)
      {
        sub_100317AB8(v5, *dst, v7, v8, v9, v10, v11, v12);
      }

      sub_100022214(&v17);
      sub_10002249C(&v17);
    }

    return 0;
  }

  else
  {
    v15 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      sub_10086FC7C(src, v15, v16);
    }

    return 312;
  }
}

uint64_t sub_1007515BC(void *a1, unint64_t a2, uint64_t a3)
{
  *src = 0;
  v20 = 0;
  sub_10004DFB4(src, a3);
  uuid_copy(dst, src);
  v5 = sub_1007512C8(a1, a2, dst);
  if ((sub_10074738C(a1, src) & 1) != 0 || sub_100050290(a1, src))
  {
    if (v5)
    {
      v17 = 0;
      sub_1000216B4(&v17);
      *dst = 0;
      v6 = sub_1000C4FCC(a1, src, dst);
      if (*dst)
      {
        v13 = v6;
      }

      else
      {
        v13 = 0;
      }

      if (v13)
      {
        sub_100317AB8(v5, *dst, v7, v8, v9, v10, v11, v12);
      }

      sub_100022214(&v17);
      sub_10002249C(&v17);
    }

    return 0;
  }

  else
  {
    v15 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      sub_10086FD0C(src, v15, v16);
    }

    return 312;
  }
}

uint64_t sub_100751704(void *a1, unint64_t a2, uint64_t a3, _OWORD *a4)
{
  *src = 0;
  v31 = 0;
  sub_10004DFB4(src, a3);
  uuid_copy(dst, src);
  v7 = sub_1007512C8(a1, a2, dst);
  if ((sub_10074738C(a1, src) & 1) != 0 || sub_100050290(a1, src))
  {
    v8 = 0;
    if (!v7)
    {
      return v8;
    }

    goto LABEL_8;
  }

  v9 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
  {
    sub_10086FD9C(src, v9, v10);
  }

  v8 = 312;
  if (v7)
  {
LABEL_8:
    v11 = a4[1];
    *dst = *a4;
    v29[0] = v11;
    *(v29 + 10) = *(a4 + 26);
    sub_100318DA0(v7, dst);
    v12 = *a4;
    if (v12 > 3)
    {
      v21 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
      {
        sub_1000D67B4(src, dst);
        v23 = (SBYTE7(v29[0]) & 0x80u) == 0 ? dst : *dst;
        *buf = 67109378;
        *&buf[4] = v12;
        v26 = 2082;
        v27 = v23;
        _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Unsupported ConfigID:%d for   %{public}s ", buf, 0x12u);
        if (SBYTE7(v29[0]) < 0)
        {
          operator delete(*dst);
        }
      }

      return 312;
    }

    else
    {
      v24 = 0;
      sub_1000216B4(&v24);
      *buf = 0;
      v13 = sub_1000C4FCC(a1, src, buf);
      if (*buf)
      {
        v19 = v13;
      }

      else
      {
        v19 = 0;
      }

      if (v19)
      {
        v20 = a4[1];
        *dst = *a4;
        v29[0] = v20;
        *(v29 + 10) = *(a4 + 26);
        sub_100317928(v7, *buf, dst, v14, v15, v16, v17, v18);
      }

      sub_100022214(&v24);
      sub_10002249C(&v24);
    }
  }

  return v8;
}

uint64_t sub_10075193C(void *a1, unint64_t a2, void *a3, uint64_t a4)
{
  v7 = a3;
  *uu = 0;
  v34 = 0;
  sub_10004DFB4(uu, v7);
  v8 = a1[176];
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = a1 + 176;
  do
  {
    v10 = v8[4];
    v11 = v10 >= a2;
    v12 = v10 < a2;
    if (v11)
    {
      v9 = v8;
    }

    v8 = v8[v12];
  }

  while (v8);
  if (v9 != a1 + 176 && v9[4] <= a2)
  {
    v18 = v9[5];
    if ((sub_10074738C(a1, uu) & 1) != 0 || sub_100050290(a1, uu))
    {
      v16 = 0;
    }

    else
    {
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
      {
        sub_1000D67B4(uu, __p);
        sub_10086F3F8();
      }

      v16 = 312;
    }

    v27 = 0;
    sub_1000216B4(&v27);
    *buf = 0;
    v19 = sub_1000C4FCC(a1, uu, buf);
    if (*buf)
    {
      v25 = v19;
    }

    else
    {
      v25 = 0;
    }

    if (v25)
    {
      sub_100317A20(v18, *buf, a4, v20, v21, v22, v23, v24);
    }

    sub_100022214(&v27);
    sub_10002249C(&v27);
  }

  else
  {
LABEL_9:
    sub_100018384(a2, __p);
    if (v36[7] >= 0)
    {
      v13 = __p;
    }

    else
    {
      v13 = __p[0];
    }

    v14 = [NSString stringWithUTF8String:v13];
    if ((v36[7] & 0x80000000) != 0)
    {
      operator delete(__p[0]);
    }

    v15 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      *__p = 0u;
      memset(v36, 0, sizeof(v36));
      uuid_unparse_upper(uu, __p);
      sub_100007E30(v28, __p);
      if (v29 >= 0)
      {
        v26 = v28;
      }

      else
      {
        v26 = v28[0];
      }

      *buf = 138543618;
      *&buf[4] = v14;
      v31 = 2082;
      v32 = v26;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Session %{public}@ for %{public}s is not found", buf, 0x16u);
      if (v29 < 0)
      {
        operator delete(v28[0]);
      }
    }

    v16 = 2300;
  }

  return v16;
}

uint64_t sub_100751C14(void *a1, unint64_t a2, void *a3)
{
  v5 = a3;
  *uu = 0;
  v27 = 0;
  sub_10004DFB4(uu, v5);
  v6 = a1[176];
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = a1 + 176;
  do
  {
    v8 = v6[4];
    v9 = v8 >= a2;
    v10 = v8 < a2;
    if (v9)
    {
      v7 = v6;
    }

    v6 = v6[v10];
  }

  while (v6);
  if (v7 != a1 + 176 && v7[4] <= a2)
  {
    v16 = v7[5];
    if ((sub_10074738C(a1, uu) & 1) != 0 || sub_100050290(a1, uu))
    {
      __p[0] = 0;
      v17 = sub_1000C4FCC(a1, uu, __p);
      if (__p[0])
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }

      if (v18)
      {
        sub_100317A48(v16, __p[0]);
      }

      v14 = 0;
    }

    else
    {
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
      {
        sub_1000D67B4(uu, __p);
        sub_10086F3F8();
      }

      v14 = 312;
    }
  }

  else
  {
LABEL_9:
    sub_100018384(a2, __p);
    if (v29[7] >= 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = __p[0];
    }

    v12 = [NSString stringWithUTF8String:v11];
    if ((v29[7] & 0x80000000) != 0)
    {
      operator delete(__p[0]);
    }

    v13 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      *__p = 0u;
      memset(v29, 0, sizeof(v29));
      uuid_unparse_upper(uu, __p);
      sub_100007E30(v20, __p);
      if (v21 >= 0)
      {
        v19 = v20;
      }

      else
      {
        v19 = v20[0];
      }

      *buf = 138543618;
      v23 = v12;
      v24 = 2082;
      v25 = v19;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Session %{public}@ for %{public}s is not found", buf, 0x16u);
      if (v21 < 0)
      {
        operator delete(v20[0]);
      }
    }

    v14 = 2300;
  }

  return v14;
}

uint64_t sub_100751EC8(void *a1, unint64_t a2, void *a3, _OWORD *a4)
{
  v7 = a3;
  *uu = 0;
  v31 = 0;
  sub_10004DFB4(uu, v7);
  v8 = a1[176];
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = a1 + 176;
  do
  {
    v10 = v8[4];
    v11 = v10 >= a2;
    v12 = v10 < a2;
    if (v11)
    {
      v9 = v8;
    }

    v8 = v8[v12];
  }

  while (v8);
  if (v9 != a1 + 176 && v9[4] <= a2)
  {
    v18 = v9[5];
    if ((sub_10074738C(a1, uu) & 1) != 0 || sub_100050290(a1, uu))
    {
      v16 = 0;
    }

    else
    {
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
      {
        sub_1000D67B4(uu, v24);
        sub_10086F3F8();
      }

      v16 = 312;
    }

    v23 = 0;
    v19 = sub_1000C4FCC(a1, uu, &v23);
    if (v23)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    if (v20)
    {
      v21 = a4[1];
      *__p = *a4;
      *v33 = v21;
      sub_100317B90(v18, v23, __p);
    }
  }

  else
  {
LABEL_9:
    sub_100018384(a2, __p);
    if (v33[7] >= 0)
    {
      v13 = __p;
    }

    else
    {
      v13 = __p[0];
    }

    v14 = [NSString stringWithUTF8String:v13];
    if ((v33[7] & 0x80000000) != 0)
    {
      operator delete(__p[0]);
    }

    v15 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      *__p = 0u;
      memset(v33, 0, sizeof(v33));
      uuid_unparse_upper(uu, __p);
      sub_100007E30(v24, __p);
      if (v25 >= 0)
      {
        v22 = v24;
      }

      else
      {
        v22 = v24[0];
      }

      *buf = 138543618;
      v27 = v14;
      v28 = 2082;
      v29 = v22;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Session %{public}@ for %{public}s is not found", buf, 0x16u);
      if (v25 < 0)
      {
        operator delete(v24[0]);
      }
    }

    v16 = 2300;
  }

  return v16;
}

uint64_t sub_10075217C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  uuid_clear(__p);
  v6 = sub_1007512C8(a1, a2, __p);
  if (v6)
  {
    LOBYTE(__p[0]) = 0;
    sub_1000216B4(__p);
    v7 = sub_10000C5F8(a3);
    sub_100317CEC(v6, v7, v8, v9, v10, v11, v12, v13);
    sub_100022214(__p);
    sub_10002249C(__p);
    return 0;
  }

  else
  {
    sub_100018384(a2, __p);
    if (v18 >= 0)
    {
      v15 = __p;
    }

    else
    {
      v15 = __p[0];
    }

    v16 = [NSString stringWithUTF8String:v15];
    if (v18 < 0)
    {
      operator delete(__p[0]);
    }

    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      sub_10086FE2C();
    }

    return 2300;
  }
}

void sub_1007522B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007522E4(void *a1, unint64_t a2, uint64_t a3)
{
  *src = 0;
  v17 = 0;
  sub_10004DFB4(src, a3);
  uuid_copy(__p, src);
  v5 = sub_1007512C8(a1, a2, __p);
  if (v5)
  {
    if ((sub_10074738C(a1, src) & 1) != 0 || sub_100050290(a1, src))
    {
      v6 = 0;
    }

    else
    {
      v9 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
      {
        sub_10086FE9C(src, v9, v10);
      }

      v6 = 312;
    }

    __p[0] = 0;
    v11 = sub_1000C4FCC(a1, src, __p);
    if (__p[0])
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    if (v12)
    {
      sub_100317DC8(v5, __p[0]);
    }
  }

  else
  {
    sub_100018384(a2, __p);
    if (v15 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    v8 = [NSString stringWithUTF8String:v7];
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }

    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      sub_10086FE2C();
    }

    return 2300;
  }

  return v6;
}

void sub_10075249C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007524C0(uint64_t a1, unint64_t a2)
{
  uuid_clear(__p);
  v4 = sub_1007512C8(a1, a2, __p);
  if (v4)
  {
    LOBYTE(__p[0]) = 0;
    sub_1000216B4(__p);
    sub_10031816C(v4, v5, v6, v7, v8, v9, v10, v11);
    sub_100022214(__p);
    sub_10002249C(__p);
    return 0;
  }

  else
  {
    sub_100018384(a2, __p);
    if (v16 >= 0)
    {
      v13 = __p;
    }

    else
    {
      v13 = __p[0];
    }

    v14 = [NSString stringWithUTF8String:v13];
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }

    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      sub_10086FF2C();
    }

    return 2300;
  }
}

void sub_1007525E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100752618(void *a1, unint64_t a2, uint64_t a3)
{
  *src = 0;
  v28 = 0;
  sub_10004DFB4(src, a3);
  uuid_copy(dst, src);
  v5 = sub_1007512C8(a1, a2, dst);
  if (v5)
  {
    if ((sub_10074738C(a1, src) & 1) != 0 || sub_100050290(a1, src))
    {
      LOBYTE(__p[0]) = 0;
      sub_1000216B4(__p);
      *dst = 0;
      v6 = sub_1000C4FCC(a1, src, dst);
      if (*dst)
      {
        v13 = v6;
      }

      else
      {
        v13 = 0;
      }

      if (v13)
      {
        sub_1003182A0(v5, *dst, v7, v8, v9, v10, v11, v12);
      }

      sub_100022214(__p);
      sub_10002249C(__p);
      return 0;
    }

    else
    {
      v18 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
      {
        sub_10086FF9C(src, v18, v19);
      }

      return 312;
    }
  }

  else
  {
    sub_100018384(a2, dst);
    if (v30[7] >= 0)
    {
      v15 = dst;
    }

    else
    {
      v15 = *dst;
    }

    v16 = [NSString stringWithUTF8String:v15];
    if ((v30[7] & 0x80000000) != 0)
    {
      operator delete(*dst);
    }

    v17 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      *dst = 0u;
      memset(v30, 0, sizeof(v30));
      uuid_unparse_upper(src, dst);
      sub_100007E30(__p, dst);
      v20 = v22 >= 0 ? __p : __p[0];
      *buf = 138543618;
      v24 = v16;
      v25 = 2082;
      v26 = v20;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Session %{public}@ for %{public}s is not found", buf, 0x16u);
      if (v22 < 0)
      {
        operator delete(__p[0]);
      }
    }

    return 2300;
  }
}

void sub_100752848(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100752890(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v7 = a3;
  if (qword_100B508B0 != -1)
  {
    sub_10086F3E4();
  }

  v8 = off_100B508A8;
  sub_10004DFB4(&v18, v7);
  if (sub_100050290(v8, &v18))
  {
    if (qword_100B508D0 != -1)
    {
      sub_10086DE2C();
    }

    v9 = sub_100046458(off_100B508C8, v7, 0);
    if (qword_100B508F0 != -1)
    {
      sub_10087002C();
    }

    v10 = sub_1000504C8(off_100B508E8, v9, 1);
    v12 = sub_10000C7D0(v10, v11);
    v13 = (*(*v12 + 136))(v12, a4, v10, a5);
    v14 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      v15 = sub_100063D0C(v9);
      v18 = 138412290;
      v19 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "MRC LE Address :    %@ ", &v18, 0xCu);
    }
  }

  else
  {
    v16 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412290;
      v19 = v7;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "MRC needs to have device connected   %@ ", &v18, 0xCu);
    }

    v13 = 312;
  }

  return v13;
}

uint64_t sub_100752ABC(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v3 = v2;
  v5 = v4;
  v6 = v1;
  v8 = v7;
  uu[0] = 0;
  uu[1] = 0;
  sub_10004DFB4(uu, v8);
  if (qword_100B508B0 != -1)
  {
    sub_10086DE54();
  }

  v9 = off_100B508A8;
  sub_10004DFB4(out, v8);
  if (!sub_100050290(v9, out))
  {
    v16 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      *out = 138412290;
      *&out[4] = v8;
      v15 = "Get range for peripheral needs to have device connected   %@ ";
      v17 = v16;
      v18 = 12;
LABEL_20:
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, v15, out, v18);
      goto LABEL_21;
    }

    goto LABEL_21;
  }

  if ((v3[26098] & 1) == 0)
  {
    v10 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      memset(out, 0, 37);
      uuid_unparse_upper(uu, out);
      sub_100007E30(__p, out);
      v11 = v27 >= 0 ? __p : __p[0];
      buf = 136446210;
      v30 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Get Range for Peripheral: %{public}s ", &buf, 0xCu);
      if (v27 < 0)
      {
        operator delete(__p[0]);
      }
    }

    sub_100750E28();
    v13 = sub_100750FDC(v6, v12, v8);
    if (v13)
    {
      v14 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
      {
        *out = 138412546;
        *&out[4] = v8;
        *&out[12] = 1024;
        *&out[14] = v13;
        v15 = "csReadRemoteSupportedCapabilities error returned   %@. %d ";
LABEL_19:
        v17 = v14;
        v18 = 18;
        goto LABEL_20;
      }

      goto LABEL_21;
    }

    v19 = sub_100751474(v6, v5, v8);
    if (v19)
    {
      v14 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
      {
        *out = 138412546;
        *&out[4] = v8;
        *&out[12] = 1024;
        *&out[14] = v19;
        v15 = "csSecurityEnable error returned   %@. %d ";
        goto LABEL_19;
      }

LABEL_21:
      v20 = 312;
      goto LABEL_22;
    }
  }

  sub_10004DFB4(out, v8);
  v22 = sub_1007512C8(v6, v5, out);
  if ((sub_10074738C(v6, uu) & 1) != 0 || sub_100050290(v6, uu))
  {
    v20 = 0;
    if (!v22)
    {
      goto LABEL_22;
    }

    goto LABEL_30;
  }

  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
  {
    sub_1000D67B4(uu, __p);
    sub_10086F3F8();
  }

  v20 = 312;
  if (v22)
  {
LABEL_30:
    v25 = 0;
    v23 = sub_1000C4FCC(v6, uu, &v25);
    if (v25)
    {
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }

    if (v24)
    {
      memcpy(out, v3, 0xCBE8uLL);
      sub_100317F1C(v22, v25, out);
    }
  }

LABEL_22:

  return v20;
}

uint64_t sub_100752E78(void *a1, unint64_t a2, void *a3, uint64_t a4)
{
  v7 = a3;
  *uu = 0;
  v36 = 0;
  sub_10004DFB4(uu, v7);
  v8 = a1[176];
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = a1 + 176;
  do
  {
    v10 = v8[4];
    v11 = v10 >= a2;
    v12 = v10 < a2;
    if (v11)
    {
      v9 = v8;
    }

    v8 = v8[v12];
  }

  while (v8);
  if (v9 != a1 + 176 && v9[4] <= a2)
  {
    v18 = v9[5];
    if ((sub_10074738C(a1, uu) & 1) != 0 || sub_100050290(a1, uu))
    {
      v16 = 0;
    }

    else
    {
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
      {
        sub_1000D67B4(uu, __p);
        sub_10086F3F8();
      }

      v16 = 312;
    }

    v29 = 0;
    sub_1000216B4(&v29);
    *buf = 0;
    v19 = sub_1000C4FCC(a1, uu, buf);
    v20 = *buf;
    if (*buf)
    {
      v21 = v19;
    }

    else
    {
      v21 = 0;
    }

    if (v21)
    {
      v22 = sub_10000C5F8(a4);
      sub_1003182C8(v18, v20, v22, v23, v24, v25, v26, v27);
    }

    sub_100022214(&v29);
    sub_10002249C(&v29);
  }

  else
  {
LABEL_9:
    sub_100018384(a2, __p);
    if (v38[7] >= 0)
    {
      v13 = __p;
    }

    else
    {
      v13 = __p[0];
    }

    v14 = [NSString stringWithUTF8String:v13];
    if ((v38[7] & 0x80000000) != 0)
    {
      operator delete(__p[0]);
    }

    v15 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      *__p = 0u;
      memset(v38, 0, sizeof(v38));
      uuid_unparse_upper(uu, __p);
      sub_100007E30(v30, __p);
      if (v31 >= 0)
      {
        v28 = v30;
      }

      else
      {
        v28 = v30[0];
      }

      *buf = 138543618;
      *&buf[4] = v14;
      v33 = 2082;
      v34 = v28;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Session %{public}@ for %{public}s is not found", buf, 0x16u);
      if (v31 < 0)
      {
        operator delete(v30[0]);
      }
    }

    v16 = 2300;
  }

  return v16;
}

void sub_10075315C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 1136);
  v3 = (a1 + 1144);
  if (v2 != (a1 + 1144))
  {
    do
    {
      if ((a2 - v2[5]) < 0x6FC23AC01)
      {
        v9 = v2[1];
        if (v9)
        {
          do
          {
            v8 = v9;
            v9 = *v9;
          }

          while (v9);
        }

        else
        {
          do
          {
            v8 = v2[2];
            v10 = *v8 == v2;
            v2 = v8;
          }

          while (!v10);
        }
      }

      else
      {
        v6 = qword_100BCE980;
        if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
        {
          v7 = sub_1007774DC(v2[4]);
          *buf = 138543362;
          v12 = v7;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Removing expired ExpectedIncomingAddress:%{public}@", buf, 0xCu);
        }

        v8 = sub_10002717C((a1 + 1136), v2);
        operator delete(v2);
      }

      v2 = v8;
    }

    while (v8 != v3);
  }
}

void sub_1007532C8(uint64_t a1, uint64_t a2)
{
  v7 = a2;
  v3 = clock_gettime_nsec_np(_CLOCK_MONOTONIC);
  sub_10075315C(a1, v3);
  *buf = &v7;
  sub_1007755E4(a1 + 1136, &v7, &unk_1008A9BD0, buf)[5] = v3;
  v4 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    v5 = sub_1007774DC(v7);
    v6 = *(a1 + 1152);
    *buf = 138543618;
    *&buf[4] = v5;
    v9 = 2048;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Adding address %{public}@ to fAddressForIncomingConnectionPrioritizationMap[%lu]", buf, 0x16u);
  }
}

void sub_1007533DC(uint64_t a1)
{
  v2 = *(a1 + 400);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = sub_100029630(a1);
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v26 count:16];
  if (v4)
  {
    v5 = *v15;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v14 + 1) + 8 * v6);
        if (qword_100B508D0 != -1)
        {
          sub_10086DE2C();
        }

        v8 = sub_1007876D8(off_100B508C8, v7);
        if (v8)
        {
          v10 = v7;

          v9 = v10;
          if (v10)
          {
            v11 = qword_100BCE980;
            if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
            {
              v12 = *(a1 + 1602);
              v2 = v2;
              *buf = 67109890;
              v19 = v12;
              v20 = 1024;
              v21 = v2;
              v22 = 2114;
              v23 = v9;
              v24 = 1024;
              v25 = v8;
              _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "AudioQualityOptimizer - Analyzed (a2dp:%d, leConn:%d, candidate:%{public}@, optimizationState:%d)", buf, 0x1Eu);
            }

            else
            {
              v2 = v2;
            }

            v13 = *(a1 + 1602);
            if (v2 <= 2)
            {
              v13 = 0;
            }

            if (v13 == 1 && v8 == 1)
            {
              sub_1007489DC(a1, v9, 4294967288, 0);
              if (qword_100B508D0 != -1)
              {
                sub_10086DE2C();
              }

              sub_10078764C(off_100B508C8, v9, 2);
              if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEBUG))
              {
                sub_1008700C4();
              }
            }

            else
            {
              if (v8 != 2)
              {
                LOBYTE(v13) = 1;
              }

              if ((v13 & 1) == 0)
              {
                sub_1007489DC(a1, v9, 4294967289, 0);
                if (qword_100B508D0 != -1)
                {
                  sub_10086DE2C();
                }

                sub_10078764C(off_100B508C8, v9, 0);
                if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEBUG))
                {
                  sub_100870054();
                }
              }
            }
          }

          goto LABEL_31;
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v14 objects:v26 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_31:
}

void sub_1007536B0(uint64_t a1, void *a2, int a3)
{
  v4 = a2;
  if (qword_100B508D0 != -1)
  {
    sub_10086E034();
  }

  if (sub_1007877F0(off_100B508C8, v4))
  {
    if (qword_100B508D0 != -1)
    {
      sub_10086E034();
    }

    v5 = sub_1007876D8(off_100B508C8, v4);
    v6 = v5;
    if (a3 == 12 && !v5)
    {
      if (qword_100B508D0 != -1)
      {
        sub_10086E034();
      }

      sub_10078764C(off_100B508C8, v4, 1);
    }

    v7 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543618;
      v9 = v4;
      v10 = 1024;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "AudioQualityOptimizer - device:%{public}@, optimizationState:%d", &v8, 0x12u);
    }
  }
}

void sub_100753818(uint64_t a1, uint64_t a2, char a3, int a4, int a5)
{
  v9 = qword_100BCE980;
  v10 = os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_INFO);
  if (v10)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Stream state changed, re-evaluating scan params", buf, 2u);
  }

  if (a4 == 2 && (*(a1 + 1603) & 1) != 0)
  {
    if (a5)
    {
      v12 = sub_100007EE8(v10, v11);
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_10075390C;
      v13[3] = &unk_100AE15D8;
      v13[4] = a1;
      v14 = a3;
      sub_10000CA94(v12, v13);
    }
  }
}

void sub_10075390C(uint64_t a1)
{
  v1 = *(a1 + 32);
  *(v1 + 1602) = *(a1 + 40);
  sub_1007533DC(v1);
}

uint64_t sub_100753928(uint64_t a1, __int128 *a2)
{
  v24[0] = 0;
  v24[1] = 0;
  v4 = sub_100007F88(v24, a1 + 120);
  v6 = sub_10000C798(v4, v5);
  v7 = (*(*v6 + 992))(v6);
  v8 = *a2;
  *(a1 + 288) = *a2;
  v20 = v8;
  if (v7)
  {
    v9 = *(a2 + 2);
  }

  else
  {
    v9 = 0;
  }

  *(a1 + 312) = v9;
  v10 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    v11 = sub_100063D0C(v20);
    *buf = 138543362;
    *v26 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Local LE Connectable address is now %{public}@", buf, 0xCu);

    v10 = qword_100BCE980;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = sub_100063D0C(*(a2 + 1));
    *buf = 138543362;
    *v26 = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Local LE Non-Connectable address is now %{public}@", buf, 0xCu);

    v10 = qword_100BCE980;
  }

  if (v7 && os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v13 = sub_100063D0C(*(a2 + 2));
    *buf = 138543362;
    *v26 = v13;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Local LE Non-Connectable Secondary address is now %{public}@", buf, 0xCu);

    v10 = qword_100BCE980;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a1 + 184);
    v15 = *(a1 + 352);
    v16 = *(a1 + 864);
    if (v16 > 4)
    {
      v17 = "UNKNOWN";
    }

    else
    {
      v17 = (&off_100B0BF80)[v16];
    }

    *buf = 67109634;
    *v26 = v14;
    *&v26[4] = 2048;
    *&v26[6] = v15;
    v27 = 2082;
    v28 = v17;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "fStarted:%d, fConnectingDevices.size:%lu, fConnectionState:%{public}s", buf, 0x1Cu);
  }

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100753CA0;
  v21[3] = &unk_100B0B590;
  v22 = *a2;
  v23 = *(a2 + 2);
  sub_10074063C(a1, v21);
  if (*(a1 + 1066) == 1)
  {
    v18 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Address change complete, will process connecting devices now", buf, 2u);
    }

    *(a1 + 1066) = 0;
    if (!*(a1 + 864) && *(a1 + 352))
    {
      sub_100753CFC(a1);
    }
  }

  *(a1 + 328) = CFAbsoluteTimeGetCurrent();
  return sub_1000088CC(v24);
}

void sub_100753C78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100753CA0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  return (*(*a2 + 112))(a2, &v3);
}

uint64_t sub_100753CFC(uint64_t a1)
{
  v99[0] = 0;
  v99[1] = 0;
  sub_100007F88(v99, a1 + 120);
  sub_100760A88(a1);
  if (*(a1 + 1067) != 1)
  {
    if (*(a1 + 928))
    {
      v6 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, "We should not get here, this is for debug purposes", buf, 2u);
        v6 = qword_100BCE980;
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_100870134();
      }

      return sub_1000088CC(v99);
    }

    if (*(a1 + 1065) == 1)
    {
      v2 = qword_100BCE980;
      if (!os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
      {
        return sub_1000088CC(v99);
      }

      *buf = 0;
      v3 = "Controller Connection List is full, waiting for something to disconnect first";
      goto LABEL_4;
    }

    v7 = *(a1 + 864);
    if (v7)
    {
      v8 = qword_100BCE980;
      if (!os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
      {
        return sub_1000088CC(v99);
      }

      if (v7 > 4)
      {
        v9 = "UNKNOWN";
      }

      else
      {
        v9 = off_100B0BE30[v7 - 1];
      }

      *buf = 136446466;
      *&buf[4] = v9;
      *&buf[12] = 1024;
      *&buf[14] = v7;
      v3 = "Busy doing something else %{public}s(%d).";
      v4 = v8;
      v5 = 18;
      goto LABEL_5;
    }

    if (!*(a1 + 352))
    {
      v10 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Connection list empty, skipping", buf, 2u);
      }

      sub_100745874(a1, 0);
      v13 = sub_1000154A8(v11, v12);
      (*(*v13 + 104))(v13, 0, 0, 0, 1, 0);
      return sub_1000088CC(v99);
    }

    if (*(a1 + 1066) == 1)
    {
      v2 = qword_100BCE980;
      if (!os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
      {
        return sub_1000088CC(v99);
      }

      *buf = 0;
      v3 = "Address change in progress, waiting for it to complete";
      goto LABEL_4;
    }

    v98 = 0;
    v97 = 0;
    v96 = 0;
    v14 = sub_100761EE8(a1, &v98 + 1, &v98, &v97, &v96 + 1, &v96);
    if (*(a1 + 1076) == 1)
    {
      v16 = qword_100BCE980;
      v14 = os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT);
      if (v14)
      {
        v17 = *(a1 + 1080);
        v18 = *(a1 + 1078);
        *buf = 67109888;
        *&buf[4] = HIWORD(v98);
        *&buf[8] = 1024;
        *&buf[10] = v98;
        *&buf[14] = 1024;
        *&buf[16] = v17;
        *&buf[20] = 1024;
        *&buf[22] = v18;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Override MainCore Connection Scan: interval %d window %d by interval %d window %d", buf, 0x1Au);
      }

      v98 = *(a1 + 1078);
    }

    v19 = *(a1 + 336);
    v20 = (a1 + 344);
    v21 = 1;
    if (v19 != (a1 + 344))
    {
      do
      {
        if (qword_100B508D0 != -1)
        {
          sub_10086DE2C();
        }

        v22 = off_100B508C8;
        v23 = sub_10004DF60(v19 + 25);
        v24 = sub_100789A60(v22, v23);

        v25 = *(v19 + 1);
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
            v26 = *(v19 + 2);
            v27 = *v26 == v19;
            v19 = v26;
          }

          while (!v27);
        }

        v21 |= v24;
        v19 = v26;
      }

      while (v26 != v20);
    }

    v28 = sub_10000C798(v14, v15);
    v29 = (*(*v28 + 720))(v28);
    v31 = v29;
    if ((v29 & 1) == 0)
    {
      v32 = qword_100BCE980;
      v29 = os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT);
      if (v29)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "LELR is not enabled, disable coded PHY", buf, 2u);
      }

      v21 &= ~4u;
    }

    v33 = sub_10000C798(v29, v30);
    if ((*(*v33 + 728))(v33))
    {
      v34 = v21 | 2;
    }

    else
    {
      v34 = v21;
    }

    v35 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109888;
      *&buf[4] = v98;
      *&buf[8] = 1024;
      *&buf[10] = HIWORD(v98);
      *&buf[14] = 1024;
      *&buf[16] = v31;
      *&buf[20] = 1024;
      *&buf[22] = v34;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Next connection parameters are: window - 0x%x, interval - 0x%x enableLELR - %d initPHYs - %x", buf, 0x1Au);
      v35 = qword_100BCE980;
    }

    v36 = os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);
    if (v36)
    {
      v38 = *(a1 + 352);
      *buf = 134217984;
      *&buf[4] = v38;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Starting auto connection for %lu devices", buf, 0xCu);
    }

    v39 = sub_10000C798(v36, v37);
    if ((*(*v39 + 688))(v39))
    {
      v40 = v97;
      v41 = v97 != 0;
      v42 = HIWORD(v98);
      if (v97)
      {
        v43 = HIWORD(v98);
      }

      else
      {
        v43 = 0;
      }

      if (*(a1 + 1124) != v41)
      {
        *(a1 + 1124) = v41;
        if (v40)
        {
          v44 = &stru_100B0B998;
        }

        else
        {
          v44 = &stru_100B0B9B8;
        }

        sub_10074063C(a1, v44);
      }

      v45 = qword_100BCE980;
      if (*(a1 + 1068) == 1)
      {
        if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
        {
          v46 = "No";
          v47 = *(a1 + 1072);
          v48 = *(a1 + 1070);
          if (v40)
          {
            v49 = "Yes";
          }

          else
          {
            v49 = "No";
          }

          if (*(a1 + 1075))
          {
            v50 = "Yes";
          }

          else
          {
            v50 = "No";
          }

          if (*(a1 + 1074))
          {
            v46 = "Yes";
          }

          *buf = 136447746;
          *&buf[4] = v49;
          *&buf[12] = 1024;
          *&buf[14] = v43;
          *&buf[18] = 1024;
          *&buf[20] = v40;
          *&buf[24] = 2082;
          v101 = v50;
          v102 = 1024;
          v103 = v47;
          v104 = 1024;
          v105 = v48;
          v106 = 2080;
          v107 = v46;
          _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Override ScanCore Connection Scan: enabled %{public}s interval %d window %d by enabled %{public}s interval %d window %d eLNA %s", buf, 0x38u);
          v45 = qword_100BCE980;
        }

        v43 = *(a1 + 1072);
        v40 = *(a1 + 1070);
        v97 = *(a1 + 1070);
        HIBYTE(v96) = *(a1 + 1074);
        LOBYTE(v41) = *(a1 + 1075);
      }

      v51 = os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT);
      if (v51)
      {
        v53 = "No";
        if (v41)
        {
          v53 = "Yes";
        }

        *buf = 136447490;
        *&buf[4] = v53;
        v54 = "Y";
        *&buf[12] = 1024;
        *&buf[14] = v43;
        if (!HIBYTE(v96))
        {
          v54 = "N";
        }

        *&buf[18] = 1024;
        *&buf[20] = v40;
        *&buf[24] = 2080;
        v101 = v54;
        v102 = 1024;
        v103 = v42;
        v104 = 1024;
        v105 = v98;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "ScanCore Connection Scan Params enabled %{public}s interval %d window %d eLNA %s with MainCore interval %d window %d", buf, 0x2Eu);
      }

      v55 = sub_10000C7D0(v51, v52);
      v56 = (*(*v55 + 2160))(v55, v41 & 1, v43, v40, HIBYTE(v96));
      v57 = qword_100BCE980;
      if (v56)
      {
        if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *&buf[4] = v56;
          _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "Failed to execute btscLeSetConnectionScan with error %d", buf, 8u);
        }
      }

      else if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEBUG))
      {
        sub_1008701C8();
      }
    }

    v95 = 0;
    sub_1000216B4(&v95);
    v58 = HIWORD(v98);
    v59 = v98;
    v60 = sub_1002D1A8C(HIWORD(v98), v98, v34, 0, 0, 0, 0xFFu, 255);
    v61 = sub_1002D20C4();
    sub_100022214(&v95);
    if (v60 > 757)
    {
      if (v60 == 758)
      {
        if (qword_100B508B0 != -1)
        {
          sub_10086DE54();
        }

        sub_100745874(off_100B508A8, 4);
        goto LABEL_111;
      }

      if (v60 == 1319 && v61)
      {
        v62 = qword_100BCE980;
        if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v63 = "We're busy disconnecting another device, lets wait before we issue another connection command";
          goto LABEL_93;
        }

LABEL_111:
        v91 = qword_100BCE980;
        if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v91, OS_LOG_TYPE_DEFAULT, "Failure, setting new connectionState", buf, 2u);
        }

        sub_100745874(a1, 0);
LABEL_114:
        sub_10002249C(&v95);
        return sub_1000088CC(v99);
      }
    }

    else
    {
      if (!v60)
      {
        v84 = qword_100BCE980;
        if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_DEFAULT, "Success, setting new connectionState", buf, 2u);
        }

        sub_100745874(a1, 1);
        v87 = sub_1000154A8(v85, v86);
        (*(*v87 + 104))(v87, v58, v59, v96, 1, (*(a1 + 560) * 1000.0));
        memset(buf, 0, 24);
        *&buf[8] = CFAbsoluteTimeGetCurrent();
        buf[0] = 1;
        v90 = sub_10000F034(v88, v89);
        (*(*v90 + 816))(v90, buf);
        goto LABEL_114;
      }

      if (v60 == 133)
      {
        v62 = qword_100BCE980;
        if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v63 = "Already connected - we should be getting a connection event imminently";
LABEL_93:
          _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, v63, buf, 2u);
          goto LABEL_111;
        }

        goto LABEL_111;
      }
    }

    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      sub_100870204();
    }

    if (v60 == 1309)
    {
      v93 = sub_10000E92C();
      sub_100007E30(&v94, "");
      sub_100693260(v93, 1309, &v94, 1);
    }

    sub_1000618AC(&v95);
    sub_1002E9800(v64, v65, v66, v67, v68, v69, v70, v71);
    sub_10000CEDC(a1 + 360, *(a1 + 368));
    *(a1 + 368) = 0;
    *(a1 + 376) = 0;
    *(a1 + 360) = a1 + 368;
    sub_1002D0A0C(v72, v73, v74, v75, v76, v77, v78, v79);
    sub_100022214(&v95);
    v80 = *(a1 + 336);
    if (v80 != v20)
    {
      do
      {
        v81 = sub_10004DF60(v80 + 25);
        sub_10004DFB4(buf, v81);
        sub_100756884(a1, buf, 1, v60, 1);

        v82 = *(v80 + 1);
        if (v82)
        {
          do
          {
            v83 = v82;
            v82 = *v82;
          }

          while (v82);
        }

        else
        {
          do
          {
            v83 = *(v80 + 2);
            v27 = *v83 == v80;
            v80 = v83;
          }

          while (!v27);
        }

        v80 = v83;
      }

      while (v83 != v20);
    }

    sub_10000CEDC(a1 + 336, *(a1 + 344));
    *(a1 + 336) = v20;
    *(a1 + 344) = 0u;
    sub_10000CEDC(a1 + 608, *(a1 + 616));
    *(a1 + 608) = a1 + 616;
    *(a1 + 616) = 0u;
    goto LABEL_111;
  }

  v2 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v3 = "Stack is shutting down, we should not even be here.";
LABEL_4:
    v4 = v2;
    v5 = 2;
LABEL_5:
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, v3, buf, v5);
  }

  return sub_1000088CC(v99);
}

void sub_1007548F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_10002249C(&a19);
  sub_1000088CC(&a21);
  _Unwind_Resume(a1);
}

uint64_t sub_100754974(uint64_t a1)
{
  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, a1 + 120);
  v2 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 184);
    v4 = *(a1 + 352);
    v5 = *(a1 + 864);
    if (v5 > 4)
    {
      v6 = "UNKNOWN";
    }

    else
    {
      v6 = (&off_100B0BF80)[v5];
    }

    *buf = 67109634;
    v11 = v3;
    v12 = 2048;
    v13 = v4;
    v14 = 2082;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "AddressWillChange event fStarted:%d, fConnectingDevices.size:%lu, fConnectionState:%{public}s", buf, 0x1Cu);
  }

  if (*(a1 + 184) == 1 && *(a1 + 352) && *(a1 + 864) == 1)
  {
    *(a1 + 1066) = 1;
    v7 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Cancelling connections due to advertising address changed", buf, 2u);
    }

    sub_10074518C(a1, 0);
  }

  return sub_1000088CC(v9);
}

void sub_100754B04(uint64_t a1, void *a2)
{
  v3 = a2;
  v33[0] = 0;
  v33[1] = 0;
  sub_100007F88(v33, a1 + 120);
  [*(a1 + 768) removeObject:v3];
  [*(a1 + 792) removeObject:v3];
  sub_10004DFB4(buf, v3);
  v4 = sub_1005FF344(a1 + 336, buf);
  v5 = qword_100BCE980;
  if ((a1 + 344) == v4)
  {
    v21 = os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR);
    if (v21)
    {
      sub_100870274();
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Removing device %{public}@ from connection filter accept list, waiting for controller to complete.", buf, 0xCu);
    }

    v7 = *(a1 + 360);
    if (v7 != (a1 + 368))
    {
      *&v6 = 67109120;
      v27 = v6;
      do
      {
        sub_10004DFB4(buf, v3);
        v8 = uuid_compare(v7 + 40, buf);
        if (v8)
        {
          v9 = v7[1];
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
              v10 = v7[2];
              v14 = *v10 == v7;
              v7 = v10;
            }

            while (!v14);
          }
        }

        else
        {
          v11 = sub_1007564FC(v8, v7[4]);
          v12 = qword_100BCE980;
          if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_INFO))
          {
            *buf = v27;
            *&buf[4] = v11;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "removeAddressFromBTController returned %d", buf, 8u);
          }

          v10 = sub_10002717C((a1 + 360), v7);
          operator delete(v7);
        }

        v7 = v10;
      }

      while (v10 != (a1 + 368));
    }

    if (_os_feature_enabled_impl())
    {
      if (qword_100B508D0 != -1)
      {
        sub_10086DE2C();
      }

      v13 = sub_100788D8C(off_100B508C8, v3);
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v14 = (v13 - 0x10000) > 0x1E || ((1 << v13) & 0x7F7800FF) == 0;
      if (!v14)
      {
        sub_10004DFB4(buf, v3);
        if (a1 + 616 != sub_1005FF344(a1 + 608, buf))
        {
          v15 = v3;
          *buf = v15;
          *&buf[8] = 0;
          *&buf[16] = 0;
          v35 = 0;
          v29[0] = _NSConcreteStackBlock;
          v29[1] = 3221225472;
          v29[2] = sub_10076BF1C;
          v29[3] = &unk_100B0B978;
          v29[4] = a1;
          v36 = objc_retainBlock(v29);
          v16 = v31;
          if (v31 >= v32)
          {
            v20 = sub_100776854(&v30, buf);
          }

          else
          {
            v17 = *buf;
            *buf = 0;
            *v31 = v17;
            v18 = *&buf[8];
            *(v16 + 6) = v35;
            *(v16 + 1) = v18;
            v19 = v36;
            v36 = 0;
            v16[4] = v19;
            v20 = v16 + 5;
          }

          v31 = v20;

          sub_10004DFB4(buf, v15);
          sub_1005FF2F0((a1 + 608), buf);
        }
      }

      if (v30 != v31)
      {
        if (qword_100B50910 != -1)
        {
          sub_10086E454();
        }

        v23 = off_100B50908;
        memset(v28, 0, sizeof(v28));
        sub_100776B18(v28, v30, v31, 0xCCCCCCCCCCCCCCCDLL * (v31 - v30));
        sub_1005BE9B4(v23, v28);
        *buf = v28;
        sub_100776794(buf);
        sub_10076BFD8(&v30);
      }

      memset(buf, 0, sizeof(buf));
      v24 = [v3 UUIDString];
      v25 = v24;
      sub_100007E30(buf, [v24 UTF8String]);

      sub_100776C38((a1 + 1360), buf);
      if (buf[23] < 0)
      {
        operator delete(*buf);
      }

      *buf = &v30;
      sub_100776794(buf);
    }

    if (qword_100B508D0 != -1)
    {
      sub_10086DE2C();
    }

    sub_10078B4E8(off_100B508C8, v3, 0);
    sub_10002717C((a1 + 336), v4);
    operator delete(v4);
    sub_1007440F4(a1, *(a1 + 352) != 0);
  }

  if (*(a1 + 1127) == 1)
  {
    v26 = sub_10000C7D0(v21, v22);
    if ((*(*v26 + 3144))(v26))
    {
      sub_100744178(a1, v3, *(a1 + 736), 0);
    }
  }

  sub_1000088CC(v33);
}

void sub_100755014(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32)
{
  __p = &a20;
  sub_100776794(&__p);
  sub_1000088CC(&a23);

  _Unwind_Resume(a1);
}

void sub_1007550C4(uint64_t a1, void *a2, char a3)
{
  v48 = a2;
  v5 = sub_10000C7D0(v48, v4);
  if ((sub_10008215C(v5, 0x64u) & 1) == 0)
  {
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      sub_1008702E4();
    }

    goto LABEL_49;
  }

  if (qword_100B508D0 != -1)
  {
    sub_10086E034();
  }

  v6 = sub_100788D8C(off_100B508C8, v48);
  v7 = v6;
  v9 = sub_10000C798(v6, v8);
  v10 = (*(*v9 + 960))(v9);
  if (!v10)
  {
    goto LABEL_15;
  }

  if (qword_100B50910 != -1)
  {
    sub_10086E05C();
  }

  v10 = sub_1005BC91C(off_100B50908);
  if (!v10)
  {
LABEL_15:
    v49 = 0;
    goto LABEL_16;
  }

  v49 = 1;
  if (v7 != 19 && v7 != 196608)
  {
    v12 = sub_10000C798(v10, v11);
    v10 = (*(*v12 + 968))(v12);
    if (v10)
    {
      v49 = 0;
      if ((v7 - 0x10000) <= 0x1D)
      {
        v49 = ((1 << v7) & 0x3C200011) != 0;
      }

      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_16:
  v13 = sub_1007424C8(v10, v48);
  v14 = v13;
  v16 = sub_10000C798(v13, v15);
  if ((*(*v16 + 976))(v16) && ((v17 = _os_feature_enabled_impl(), (v7 - 65562) < 4) ? (v19 = v17) : (v19 = 0), v19 == 1))
  {
    v20 = sub_10000C798(v17, v18);
    v21 = (*(*v20 + 392))(v20);
    v47 = v21 ^ 1;
    *(a1 + 1601) = v21 ^ 1;
    v22 = 1;
    v23 = 1;
  }

  else
  {
    v47 = 0;
    v22 = 0;
    v23 = 0;
  }

  v24 = sub_100742080(a1, v48);
  v51 = 0;
  v52[0] = 0;
  v52[1] = 0;
  if (qword_100B508D0 != -1)
  {
    sub_10086E034();
  }

  sub_100790344(off_100B508C8, v48, &v51);
  v25 = v51;
  if (v51 != v52)
  {
    if (v14)
    {
      v26 = 1;
    }

    else
    {
      v26 = a3;
    }

    v45 = v49 | v22 | v47;
    v46 = v26;
    while (1)
    {
      v27 = v25[4];
      v28 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
      {
        v29 = sub_100063D0C(v27);
        *buf = 138544642;
        v54 = v48;
        v55 = 2114;
        v56 = v29;
        v57 = 1024;
        *v58 = 0;
        *&v58[4] = 1024;
        *&v58[6] = v24;
        *v59 = 1024;
        *&v59[2] = v14;
        *v60 = 1024;
        *&v60[2] = v49;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "device %{public}@ with address %{public}@ filter accept list options: conn_cmpt_option=%d, minRSSI=%d, PHYs=%x conn_scan_pri=%d waiting for controller to complete. ", buf, 0x2Eu);
      }

      if (v46)
      {
        break;
      }

      if (v24)
      {
        if ((v45 | *(a1 + 1126)))
        {
          break;
        }
      }

      else if (v45)
      {
        break;
      }

LABEL_42:
      v38 = v25[1];
      if (v38)
      {
        do
        {
          v39 = v38;
          v38 = *v38;
        }

        while (v38);
      }

      else
      {
        do
        {
          v39 = v25[2];
          v40 = *v39 == v25;
          v25 = v39;
        }

        while (!v40);
      }

      v25 = v39;
      if (v39 == v52)
      {
        goto LABEL_48;
      }
    }

    *(v50 + 3) = 0;
    v50[0] = 0;
    v30 = sub_10009A66C(v27);
    v50[0] = v30;
    BYTE2(v50[1]) = BYTE6(v30);
    LOWORD(v50[1]) = WORD2(v30);
    v31 = qword_100BCE980;
    v32 = os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT);
    if (v32)
    {
      v34 = sub_100063D0C(v27);
      *buf = 138545667;
      v54 = v48;
      v55 = 2160;
      v56 = 1752392040;
      v57 = 2113;
      *v58 = v34;
      *&v58[8] = 1024;
      *v59 = v24;
      *&v59[4] = 1024;
      *v60 = v14;
      *&v60[4] = 1024;
      v61 = v23;
      v62 = 1024;
      v63 = 0;
      v64 = 1024;
      v65 = v23;
      v66 = 1024;
      v67 = 0;
      v68 = 1024;
      v69 = v47;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Adding device %{public}@ with address %{private, mask.hash}@ to connection filter accept list with option RSSI:%d Phy:%x TxPwr:%d:%d:%d:%d MRC:%d", buf, 0x4Au);
    }

    v35 = sub_10000C7D0(v32, v33);
    BYTE4(v43) = v47;
    BYTE3(v43) = 0;
    BYTE2(v43) = v23;
    LOWORD(v43) = v23;
    HIBYTE(v42) = v49;
    BYTE2(v42) = v14;
    BYTE1(v42) = v24;
    LOBYTE(v42) = 0;
    LOWORD(v41) = 0;
    v36 = (*(*v35 + 4192))(v35, v50, 0, 0, 0, 0, 0, 0, v41, 0, v42, 0, v43, 0);
    if (v36)
    {
      v37 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(v54) = v36;
        _os_log_error_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "addFilterAcceptListWithOptions failed with error %d", buf, 8u);
      }
    }

    goto LABEL_42;
  }

LABEL_48:
  sub_10000CEDC(&v51, v52[0]);
LABEL_49:
}

void sub_1007556FC(uint64_t a1)
{
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  v2 = *(a1 + 776);
  v3 = [v2 countByEnumeratingWithState:&v99 objects:v111 count:16];
  if (v3)
  {
    v4 = *v100;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v100 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v99 + 1) + 8 * i);
        v7 = qword_100BCE980;
        if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          *&buf[4] = v6;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "trying to remove %{public}@ from connecting list", buf, 0xCu);
        }

        sub_100754B04(a1, v6);
      }

      v3 = [v2 countByEnumeratingWithState:&v99 objects:v111 count:16];
    }

    while (v3);
  }

  [*(a1 + 776) removeAllObjects];
  v96 = 0;
  v97 = 0;
  v98 = 0;
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v8 = *(a1 + 768);
  v9 = [v8 countByEnumeratingWithState:&v92 objects:v110 count:16];
  if (v9)
  {
    v10 = *v93;
    do
    {
      for (j = 0; j != v9; j = j + 1)
      {
        if (*v93 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v92 + 1) + 8 * j);
        v13 = qword_100BCE980;
        if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          *&buf[4] = v12;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "trying to add %{public}@ to the connecting list", buf, 0xCu);
        }

        if (sub_10074B0D4(a1, v12) == 8)
        {
          *buf = 0;
          *&buf[8] = 0;
          sub_10004DFB4(buf, v12);
          v14 = v97;
          if (v97 >= v98)
          {
            v15 = sub_10077571C(&v96, buf);
          }

          else
          {
            uuid_copy(v97, buf);
            v15 = v14 + 16;
          }

          v97 = v15;
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v92 objects:v110 count:16];
    }

    while (v9);
  }

  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  obj = *(a1 + 784);
  v16 = [obj countByEnumeratingWithState:&v88 objects:v109 count:16];
  if (v16)
  {
    v78 = *v89;
    v17 = (a1 + 368);
    v76 = &buf[8];
    p_info = &OBJC_METACLASS___BTVCDevice.info;
    v19 = &OBJC_METACLASS___BTVCDevice.info;
    do
    {
      v79 = v16;
      for (k = 0; k != v79; k = k + 1)
      {
        if (*v89 != v78)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v88 + 1) + 8 * k);
        v86 = 0;
        v87 = 0;
        __p = &v86;
        v22 = qword_100BCE980;
        if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          *&buf[4] = v21;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "processing %{public}@ from fDevicesToUpdateInFilterAcceptList", buf, 0xCu);
        }

        if (p_info[282] != -1)
        {
          sub_10086DE2C();
        }

        if (sub_100790420(v19[281], v21))
        {
          if (p_info[282] != -1)
          {
            sub_10086DE2C();
          }

          sub_1000AFD60(v19[281], v21, 2u, buf);
          sub_10000CEDC(&__p, v86);
          v23 = *&buf[8];
          __p = *buf;
          v86 = *&buf[8];
          v87 = *&buf[16];
          if (*&buf[16])
          {
            *(*&buf[8] + 16) = &v86;
            *buf = &buf[8];
            *&buf[8] = 0;
            *&buf[16] = 0;
            v23 = 0;
          }

          else
          {
            __p = &v86;
          }

          sub_10000CEDC(buf, v23);
          if (v87)
          {
            v27 = 0;
            goto LABEL_50;
          }

          v56 = qword_100BCE980;
          if (!os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
          {
LABEL_107:
            v57 = qword_100BCE980;
            if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              *&buf[4] = v21;
              _os_log_error_impl(&_mh_execute_header, v57, OS_LOG_TYPE_ERROR, "Device %{public}@ has no addresses, disconnecting ", buf, 0xCu);
            }

            goto LABEL_109;
          }

          *buf = 138543362;
          *&buf[4] = v21;
          _os_log_error_impl(&_mh_execute_header, v56, OS_LOG_TYPE_ERROR, "Device %{public}@ has no addresses, disconnecting ", buf, 0xCu);
          v27 = 101;
        }

        else
        {
          if (p_info[282] != -1)
          {
            sub_10086DE2C();
          }

          v24 = sub_100046458(v19[281], v21, 0);
          *v105 = v24;
          v25 = qword_100BCE980;
          if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
          {
            v26 = sub_1007774DC(v24);
            *buf = 138412290;
            *&buf[4] = v26;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Updating connecting address to %@", buf, 0xCu);

            v24 = *v105;
          }

          if (v24)
          {
            sub_10005B93C(&__p, v105, v105);
          }

          v27 = 0;
        }

        if (!v87)
        {
          goto LABEL_107;
        }

LABEL_50:
        v28 = *(a1 + 360);
        if (v28 != v17)
        {
          do
          {
            sub_10004DFB4(buf, v21);
            v29 = uuid_compare(v28 + 40, buf);
            if (v29)
            {
              v30 = v28[1];
              if (v30)
              {
                do
                {
                  v31 = v30;
                  v30 = *v30;
                }

                while (v30);
              }

              else
              {
                do
                {
                  v31 = v28[2];
                  v38 = *v31 == v28;
                  v28 = v31;
                }

                while (!v38);
              }
            }

            else
            {
              v32 = v28[4];
              v33 = sub_1007564FC(v29, v32);
              v34 = qword_100BCE980;
              if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_INFO))
              {
                sub_10004D9B0(v32);
                v35 = buf;
                if ((buf[23] & 0x80u) != 0)
                {
                  v35 = *buf;
                }

                *v105 = 136446466;
                *&v105[4] = v35;
                v106 = 1024;
                LODWORD(v107) = v33;
                _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "removeAddressFromBTController %{public}s returned %d", v105, 0x12u);
                if (buf[23] < 0)
                {
                  operator delete(*buf);
                }
              }

              v31 = sub_10002717C((a1 + 360), v28);
              operator delete(v28);
            }

            v28 = v31;
          }

          while (v31 != v17);
        }

        v36 = __p;
        if (__p == &v86)
        {
          if (!v27)
          {
            goto LABEL_115;
          }
        }

        else
        {
          while (1)
          {
            v84 = v36[4];
            v37 = sub_1007566C0(a1, v84);
            v27 = v37;
            v38 = !v37 || v37 == 4152;
            if (!v38)
            {
              break;
            }

            v39 = qword_100BCE980;
            if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
            {
              sub_10004D9B0(v84);
              v40 = buf;
              if ((buf[23] & 0x80u) != 0)
              {
                v40 = *buf;
              }

              *v105 = 136446466;
              *&v105[4] = v40;
              v106 = 2114;
              v107 = v21;
              _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "setting fConnectingAddresses[%{public}s]=%{public}@", v105, 0x16u);
              if (buf[23] < 0)
              {
                operator delete(*buf);
              }
            }

            sub_10004DFB4(buf, v21);
            *v105 = &v84;
            v41 = sub_100774770(a1 + 360, &v84, &unk_1008A9BD0, v105, &v103);
            uuid_copy(v41 + 40, buf);
            v42 = v36[1];
            if (v42)
            {
              do
              {
                v43 = v42;
                v42 = *v42;
              }

              while (v42);
            }

            else
            {
              do
              {
                v43 = v36[2];
                v38 = *v43 == v36;
                v36 = v43;
              }

              while (!v38);
            }

            v36 = v43;
            if (v43 == &v86)
            {
              goto LABEL_115;
            }
          }
        }

        v44 = __p;
        if (__p != &v86)
        {
          do
          {
            v45 = *v17;
            if (*v17)
            {
              v46 = v44[4];
              v47 = (a1 + 368);
              do
              {
                v48 = v45[4];
                v49 = v48 >= v46;
                v50 = v48 < v46;
                if (v49)
                {
                  v47 = v45;
                }

                v45 = v45[v50];
              }

              while (v45);
              if (v47 != v17 && v46 >= v47[4])
              {
                v51 = qword_100BCE980;
                v52 = os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT);
                if (v52)
                {
                  sub_10004D9B0(v46);
                  v53 = v105;
                  if (v108 < 0)
                  {
                    v53 = *v105;
                  }

                  *buf = 136315650;
                  *&buf[4] = v53;
                  *&buf[12] = 2112;
                  *&buf[14] = v21;
                  *&buf[22] = 1024;
                  *&buf[24] = v27;
                  _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "removing address %s from controller for device %@ due to error %d", buf, 0x1Cu);
                  if (v108 < 0)
                  {
                    operator delete(*v105);
                  }
                }

                sub_1007564FC(v52, v46);
                sub_10002717C((a1 + 360), v47);
                operator delete(v47);
              }
            }

            v54 = v44[1];
            if (v54)
            {
              do
              {
                v55 = v54;
                v54 = *v54;
              }

              while (v54);
            }

            else
            {
              do
              {
                v55 = v44[2];
                v38 = *v55 == v44;
                v44 = v55;
              }

              while (!v38);
            }

            v44 = v55;
          }

          while (v55 != &v86);
        }

LABEL_109:
        sub_10004DFB4(buf, v21);
        if ((sub_10074AB80(a1, buf) & 1) == 0)
        {
          sub_10004DFB4(buf, v21);
          v58 = sub_1005FF344(a1 + 336, buf);
          if ((a1 + 344) != v58)
          {
            sub_10002717C((a1 + 336), v58);
            operator delete(v58);
            sub_1007440F4(a1, *(a1 + 352) != 0);
          }

          v59 = qword_100BCE980;
          if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *&buf[4] = v21;
            _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "Sending device connection error for device %@", buf, 0xCu);
          }

          sub_10004DFB4(buf, v21);
          sub_100756884(a1, buf, 0, 8, 0);
        }

LABEL_115:
        sub_10000CEDC(&__p, v86);
        p_info = (&OBJC_METACLASS___BTVCDevice + 32);
        v19 = (&OBJC_METACLASS___BTVCDevice + 32);
      }

      v16 = [obj countByEnumeratingWithState:&v88 objects:v109 count:16];
    }

    while (v16);
  }

  [*(a1 + 784) removeAllObjects];
  v60 = [*(a1 + 768) removeAllObjects];
  v62 = v96;
  v63 = v97;
  if (v96 != v97)
  {
    do
    {
      v64 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
      {
        memset(buf, 0, 37);
        uuid_unparse_upper(v62, buf);
        sub_100007E30(&__p, buf);
        v65 = v87 >= 0 ? &__p : __p;
        *v105 = 136446210;
        *&v105[4] = v65;
        _os_log_error_impl(&_mh_execute_header, v64, OS_LOG_TYPE_ERROR, "Failed to connect to device %{public}s due to 0 address", v105, 0xCu);
        if (SHIBYTE(v87) < 0)
        {
          operator delete(__p);
        }
      }

      sub_100756884(a1, v62, 0, 8, 0);
      v62 += 16;
    }

    while (v62 != v63);
  }

  v66 = sub_10000C7D0(v60, v61);
  if (sub_10008215C(v66, 0x64u))
  {
    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v67 = *(a1 + 792);
    v68 = [v67 countByEnumeratingWithState:&v80 objects:v104 count:16];
    if (!v68)
    {
      goto LABEL_144;
    }

    v69 = *v81;
    while (1)
    {
      for (m = 0; m != v68; m = m + 1)
      {
        if (*v81 != v69)
        {
          objc_enumerationMutation(v67);
        }

        v71 = *(*(&v80 + 1) + 8 * m);
        if (sub_100756A60(a1, v71))
        {
          v72 = qword_100BCE980;
          if (!os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
          {
            continue;
          }

          *buf = 138543362;
          *&buf[4] = v71;
          v73 = v72;
          v74 = "Warning: LeConnectionDenyList: Device %{public}@ is currently blocked, ignoring request to add to filter accept list";
          goto LABEL_141;
        }

        sub_10004DFB4(buf, v71);
        if (a1 + 344 != sub_1005FF344(a1 + 336, buf))
        {
          sub_1007550C4(a1, v71, 1);
          continue;
        }

        v75 = qword_100BCE980;
        if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          *&buf[4] = v71;
          v73 = v75;
          v74 = "not connecting to Device Device %{public}@ any more, ignoring update filter accept list option";
LABEL_141:
          _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEFAULT, v74, buf, 0xCu);
          continue;
        }
      }

      v68 = [v67 countByEnumeratingWithState:&v80 objects:v104 count:16];
      if (!v68)
      {
LABEL_144:

        break;
      }
    }
  }

  [*(a1 + 792) removeAllObjects];
  if (v96)
  {
    v97 = v96;
    operator delete(v96);
  }
}