uint64_t sub_1003F6084(uint64_t a1, char a2, uint64_t a3)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1003F6100;
  v4[3] = &unk_100AF2210;
  v5 = a2;
  v4[4] = a3;
  return sub_10002173C(a1, 310, 1, v4, 0);
}

uint64_t sub_1003F6120(uint64_t a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
  {
    v4[0] = 67109120;
    v4[1] = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Init Done callback status=%d", v4, 8u);
  }

  if (qword_100B50AA0 != -1)
  {
    sub_100826FD0();
  }

  return sub_100022748(a1, 154);
}

uint64_t sub_1003F6214(uint64_t a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
  {
    v4[0] = 67109120;
    v4[1] = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Set Random Seed callback status=%d", v4, 8u);
  }

  if (qword_100B50AA0 != -1)
  {
    sub_100826FD0();
  }

  return sub_100022748(a1, 155);
}

uint64_t sub_1003F62DC(uint64_t a1, uint64_t a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1003F6354;
  v3[3] = &unk_100AF2390;
  v3[4] = a2;
  return sub_10002173C(a1, 155, 1, v3, 0);
}

uint64_t sub_1003F636C(uint64_t a1, __int16 a2, __int16 a3, __int16 a4, __int16 a5, __int16 a6, __int16 a7, __int16 a8, __int16 a9)
{
  v17 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
  {
    v19[0] = 67109120;
    v19[1] = a1;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Get FW Versions callback status=%d", v19, 8u);
  }

  LOWORD(xmmword_100B6D420) = a2;
  WORD1(xmmword_100B6D420) = a3;
  WORD2(xmmword_100B6D420) = a4;
  WORD3(xmmword_100B6D420) = a5;
  WORD4(xmmword_100B6D420) = a6;
  WORD5(xmmword_100B6D420) = a7;
  WORD6(xmmword_100B6D420) = a8;
  HIWORD(xmmword_100B6D420) = a9;
  if (qword_100B50AA0 != -1)
  {
    sub_100826FD0();
  }

  return sub_100022748(a1, 153);
}

uint64_t sub_1003F649C(uint64_t a1, uint64_t a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1003F652C;
  v3[3] = &unk_100ADF8F8;
  v3[4] = a2;
  return sub_10002173C(a1, 153, 1, &stru_100AF2B70, v3);
}

double sub_1003F652C(uint64_t a1)
{
  result = *&xmmword_100B6D420;
  **(a1 + 32) = xmmword_100B6D420;
  return result;
}

uint64_t sub_1003F6540(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 156);
}

uint64_t sub_1003F6590(uint64_t a1, char a2, char a3, char a4, char a5, char a6, char a7)
{
  LOBYTE(v10) = a4;
  v28 = 1;
  v14 = sub_10000E92C();
  sub_100007E30(buf, "Device");
  sub_100007E30(__p, "AllowDramWake");
  v15 = (*(*v14 + 72))(v14, buf, __p, &v28);
  if (v27 < 0)
  {
    operator delete(__p[0]);
  }

  if (v30 < 0)
  {
    operator delete(*buf);
    if (!v15)
    {
      goto LABEL_11;
    }
  }

  else if (!v15)
  {
    goto LABEL_11;
  }

  v10 = v28;
  v16 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v17 = "True";
    if (!v10)
    {
      v17 = "False";
    }

    *buf = 136315138;
    *&buf[4] = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Overriding AllowDramWake to : %s", buf, 0xCu);
  }

LABEL_11:
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1003F67C4;
  v19[3] = &unk_100AF2740;
  v20 = a2;
  v21 = a3;
  v22 = v10;
  v23 = a5;
  v24 = a6;
  v25 = a7;
  return sub_10002173C(a1, 156, 1, v19, 0);
}

void sub_1003F6788(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003F67F4(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 157);
}

uint64_t sub_1003F6844(uint64_t a1, __int16 a2, char a3, uint64_t a4, char a5, __int16 a6, char a7, char a8, char a9)
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1003F68DC;
  v10[3] = &unk_100AF2250;
  v11 = a2;
  v13 = a3;
  v10[4] = a4;
  v14 = a5;
  v12 = a6;
  v15 = a7;
  v16 = a8;
  v17 = a9;
  return sub_10002173C(a1, 157, 1, v10, 0);
}

uint64_t sub_1003F6930(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 158);
}

uint64_t sub_1003F6980(uint64_t a1, __int16 a2, char a3, char a4, uint64_t a5)
{
  if (!sub_10006CDA4(a1))
  {
    return 2;
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1003F6A44;
  v11[3] = &unk_100AF25D0;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v11[4] = a5;
  return sub_10002173C(a1, 158, 1, v11, 0);
}

uint64_t sub_1003F6A6C(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 159);
}

uint64_t sub_1003F6ABC(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1003F6B3C;
  v5[3] = &unk_100AF2430;
  v6 = a2;
  v5[4] = a3;
  v7 = a4;
  return sub_10002173C(a1, 159, 1, v5, 0);
}

uint64_t sub_1003F6B60(uint64_t a1, uint64_t *a2, unsigned int a3)
{
  if (!a1 && a2 && a3 >= 9)
  {
    LOBYTE(xmmword_100B6D420) = 9;
    v4 = *a2;
    BYTE9(xmmword_100B6D420) = *(a2 + 8);
    *(&xmmword_100B6D420 + 1) = v4;
  }

  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 160);
}

uint64_t sub_1003F6BE0(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1003F6C98;
  v6[3] = &unk_100AF2270;
  v7 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1003F6CB0;
  v5[3] = &unk_100AE0860;
  v5[4] = a4;
  v5[5] = a3;
  return sub_10002173C(a1, 160, 1, v6, v5);
}

void *sub_1003F6CB0(void *result)
{
  if (*(result + 4))
  {
    v1 = xmmword_100B6D420;
    **(result + 5) = xmmword_100B6D420;
    return memcpy(*(result + 4), &xmmword_100B6D420 + 1, v1);
  }

  return result;
}

uint64_t sub_1003F6CD8(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 161);
}

uint64_t sub_1003F6D28(uint64_t a1, __int16 a2, char a3, char a4)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1003F6DA8;
  v5[3] = &unk_100AF24D0;
  v6 = a2;
  v7 = a3;
  v8 = a4;
  return sub_10002173C(a1, 161, 1, v5, 0);
}

uint64_t sub_1003F6DCC(uint64_t a1, __int16 a2, char a3, char a4, char a5)
{
  LOWORD(xmmword_100B6D420) = a2;
  BYTE2(xmmword_100B6D420) = a3;
  BYTE3(xmmword_100B6D420) = a4;
  BYTE4(xmmword_100B6D420) = a5;
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 162);
}

uint64_t sub_1003F6E34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1003F6EF0;
  v7[3] = &unk_100AF2390;
  v7[4] = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1003F6F0C;
  v6[3] = &unk_100AF2780;
  v6[4] = a2;
  v6[5] = a3;
  v6[6] = a4;
  v6[7] = a5;
  return sub_10002173C(a1, 162, 1, v7, v6);
}

uint64_t sub_1003F6F0C(uint64_t result)
{
  v1 = *(result + 40);
  **(result + 32) = xmmword_100B6D420;
  *v1 = BYTE2(xmmword_100B6D420);
  **(result + 48) = BYTE3(xmmword_100B6D420);
  **(result + 56) = BYTE4(xmmword_100B6D420);
  return result;
}

const __CFString *sub_1003F6F44(char a1)
{
  if ((a1 + 1) > 6u)
  {
    return @"Unknown";
  }

  else
  {
    return off_100AF2E88[(a1 + 1)];
  }
}

uint64_t sub_1003F6F74(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  if (!a1 && a2)
  {
    v5 = a3;
    if (!a3)
    {
      goto LABEL_29;
    }

    v6 = *a2;
    v7 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *v22 = 0;
      *&v22[4] = 1024;
      *&v22[6] = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "TASGetPowerTableInfo callback status=%d tableCount %d", buf, 0xEu);
    }

    v8 = 3 * v6;
    if (v8 < v5)
    {
      v9 = qword_100BCE8D8;
      if (v6)
      {
        v10 = v6;
        v11 = a2 + 3;
        do
        {
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            v12 = sub_1003F6F44(*(v11 - 2));
            v13 = *(v11 - 1);
            v14 = *v11;
            *buf = 138412802;
            *v22 = v12;
            *&v22[8] = 1024;
            v23 = v13;
            v24 = 1024;
            v25 = v14;
            _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "TASGetPowerTableInfo Table Type : %@, Major version: %d, Minor version: %d\n", buf, 0x18u);

            v9 = qword_100BCE8D8;
          }

          v11 += 3;
          --v10;
        }

        while (v10);
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        *v22 = &a2[v8 + 1];
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "TASGetPowerTableInfo Build String %{public}s", buf, 0xCu);
      }

      v15 = [NSString stringWithFormat:@"%s", &a2[v8 + 1]];
      v17 = sub_10000F034(v15, v16);
      if (v17)
      {
        v19 = sub_10000F034(v17, v18);
        (*(*v19 + 800))(v19, v15);
      }

      if (qword_100B54220 != -1)
      {
        sub_1008281F0();
      }

      sub_1003C8DD0(qword_100B54218, v15);
    }

    else
    {
LABEL_29:
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_100828218();
      }

      v15 = 0;
    }

    LOBYTE(xmmword_100B6D420) = v5;
    memcpy(&xmmword_100B6D420 + 1, a2, v5);
  }

  if (qword_100B50AA0 != -1)
  {
    sub_100826FD0();
  }

  return sub_100022748(a1, 163);
}

uint64_t sub_1003F7268(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1003F72F8;
  v4[3] = &unk_100AE0860;
  v4[4] = a3;
  v4[5] = a2;
  return sub_10002173C(a1, 163, 1, &stru_100AF2B90, v4);
}

void *sub_1003F72F8(void *result)
{
  if (*(result + 4))
  {
    v1 = xmmword_100B6D420;
    **(result + 5) = xmmword_100B6D420;
    return memcpy(*(result + 4), &xmmword_100B6D420 + 1, v1);
  }

  return result;
}

uint64_t sub_1003F7320(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 164);
}

uint64_t sub_1003F7370(uint64_t a1, char a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1003F73E8;
  v3[3] = &unk_100AF2270;
  v4 = a2;
  return sub_10002173C(a1, 164, 1, v3, 0);
}

uint64_t sub_1003F7400(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 177);
}

uint64_t sub_1003F7450(uint64_t a1, char a2, char a3, char a4, char a5)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1003F74D4;
  v6[3] = &unk_100AF24D0;
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = a5;
  return sub_10002173C(a1, 177, 1, v6, 0);
}

uint64_t sub_1003F74FC(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 178);
}

uint64_t sub_1003F754C(uint64_t a1, char a2, char a3, char a4, char a5, char a6)
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1003F75D4;
  v7[3] = &unk_100AF28E0;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  return sub_10002173C(a1, 178, 1, v7, 0);
}

uint64_t sub_1003F7600(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 166);
}

uint64_t sub_1003F7670(uint64_t a1, __int16 a2)
{
  v3[0] = 0;
  v3[1] = 0;
  v4 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1003F7650;
  v5[3] = &unk_100AF2430;
  v6 = a2;
  v5[4] = v3;
  return sub_10002173C(a1, 166, 1, v5, 0);
}

uint64_t sub_1003F76F8(uint64_t a1, __int16 a2, unsigned __int8 a3)
{
  v6 = 0;
  v4 = 1;
  v5 = a3;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1003F7650;
  v7[3] = &unk_100AF2430;
  v8 = a2;
  v7[4] = &v4;
  return sub_10002173C(a1, 166, 1, v7, 0);
}

uint64_t sub_1003F7788(uint64_t a1, uint64_t a2, unsigned __int8 a3, char a4, char a5)
{
  v8 = a2;
  v10 = sub_10000C7D0(a1, a2);
  if ((*(*v10 + 2984))(v10))
  {
    v14 = 0;
    v12 = 2;
    v13 = a3;
    BYTE1(v13) = a4;
    BYTE2(v13) = a5;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1003F7650;
    v15[3] = &unk_100AF2430;
    v16 = v8;
    v15[4] = &v12;
    return sub_10002173C(a1, 166, 1, v15, 0);
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100828288();
    }

    return 11;
  }
}

uint64_t sub_1003F78B4(uint64_t a1, __int16 a2)
{
  v4 = 0;
  v5 = 0;
  v3 = 3;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1003F7650;
  v6[3] = &unk_100AF2430;
  v7 = a2;
  v6[4] = &v3;
  return sub_10002173C(a1, 166, 1, v6, 0);
}

uint64_t sub_1003F7940(uint64_t a1, __int16 a2, char a3, char a4, char a5, char a6)
{
  v13 = 0;
  v12 = 0;
  v7 = 4;
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1003F7650;
  v14[3] = &unk_100AF2430;
  v15 = a2;
  v14[4] = &v7;
  return sub_10002173C(a1, 166, 1, v14, 0);
}

uint64_t sub_1003F79E0(uint64_t a1, __int16 a2, char a3, char a4, char a5, char a6, char a7, char a8, char a9, char a10, char a11, char a12, char a13, char a14, unsigned __int8 a15, unsigned __int8 a16, unsigned __int8 a17)
{
  v18 = 5;
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v22 = a6;
  v23 = a7;
  v24 = a8;
  v25 = a9;
  v26 = a10;
  v27 = a11;
  v28 = a12;
  v29 = a13;
  v30 = a14;
  v31 = a15;
  *(&v31 + 1) = __PAIR16__(a17, a16);
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_1003F7650;
  v32[3] = &unk_100AF2430;
  v33 = a2;
  v32[4] = &v18;
  return sub_10002173C(a1, 166, 1, v32, 0);
}

uint64_t sub_1003F7ACC(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 165);
}

uint64_t sub_1003F7B3C(uint64_t a1, __int16 a2)
{
  v3 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1003F7B1C;
  v4[3] = &unk_100AF2430;
  v5 = a2;
  v4[4] = &v3;
  return sub_10002173C(a1, 165, 1, v4, 0);
}

uint64_t sub_1003F7BBC(uint64_t a1, __int16 a2, char a3)
{
  v4 = 1;
  BYTE4(v4) = a3;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1003F7B1C;
  v5[3] = &unk_100AF2430;
  v6 = a2;
  v5[4] = &v4;
  return sub_10002173C(a1, 165, 1, v5, 0);
}

uint64_t sub_1003F7C48(uint64_t a1, uint64_t a2, char a3, char a4, char a5)
{
  v8 = a2;
  v10 = sub_10000C7D0(a1, a2);
  if ((*(*v10 + 2984))(v10))
  {
    v12 = 2;
    BYTE4(v12) = a3;
    BYTE5(v12) = a4;
    BYTE6(v12) = a5;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1003F7B1C;
    v13[3] = &unk_100AF2430;
    v14 = v8;
    v13[4] = &v12;
    return sub_10002173C(a1, 165, 1, v13, 0);
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100828288();
    }

    return 11;
  }
}

uint64_t sub_1003F7D70(uint64_t a1, __int16 a2)
{
  v3 = 3;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1003F7B1C;
  v4[3] = &unk_100AF2430;
  v5 = a2;
  v4[4] = &v3;
  return sub_10002173C(a1, 165, 1, v4, 0);
}

uint64_t sub_1003F7DF8(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 167);
}

uint64_t sub_1003F7E48(uint64_t a1, __int16 a2, char a3)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1003F7EC4;
  v4[3] = &unk_100AF2610;
  v5 = a2;
  v6 = a3;
  return sub_10002173C(a1, 167, 1, v4, 0);
}

uint64_t sub_1003F7EE4(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 168);
}

uint64_t sub_1003F7F34(uint64_t a1, char a2, char a3, char a4, char a5, char a6, char a7, char a8)
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1003F7FC4;
  v9[3] = &unk_100AF2450;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = a8;
  return sub_10002173C(a1, 168, 1, v9, 0);
}

uint64_t sub_1003F7FF8(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 169);
}

uint64_t sub_1003F8048(uint64_t a1, __int16 a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1003F80C0;
  v3[3] = &unk_100AF2330;
  v4 = a2;
  return sub_10002173C(a1, 169, 1, v3, 0);
}

uint64_t sub_1003F80D8(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 170);
}

uint64_t sub_1003F8128(uint64_t a1, char a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1003F81A0;
  v3[3] = &unk_100AF2270;
  v4 = a2;
  return sub_10002173C(a1, 170, 1, v3, 0);
}

uint64_t sub_1003F81B8(uint64_t a1, __int16 a2, char a3, char a4, char a5, int a6, int a7)
{
  LOWORD(xmmword_100B6D420) = a2;
  BYTE2(xmmword_100B6D420) = a3;
  BYTE3(xmmword_100B6D420) = a4;
  BYTE4(xmmword_100B6D420) = a5;
  DWORD2(xmmword_100B6D420) = a6;
  HIDWORD(xmmword_100B6D420) = a7;
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 171);
}

uint64_t sub_1003F8224(uint64_t a1, __int16 a2, uint64_t a3)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1003F82DC;
  v5[3] = &unk_100AF2330;
  v6 = a2;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1003F82F4;
  v4[3] = &unk_100ADF8F8;
  v4[4] = a3;
  return sub_10002173C(a1, 171, 1, v5, v4);
}

double sub_1003F82F4(uint64_t a1)
{
  v1 = *(a1 + 32);
  *v1 = xmmword_100B6D420;
  *(v1 + 4) = BYTE4(xmmword_100B6D420);
  result = *(&xmmword_100B6D420 + 1);
  *(v1 + 5) = *(&xmmword_100B6D420 + 1);
  return result;
}

uint64_t sub_1003F832C(uint64_t a1, uint64_t a2)
{
  qword_100B6D640 = a2;
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 172);
}

uint64_t sub_1003F8384(uint64_t a1, int a2, uint64_t a3)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1003F843C;
  v5[3] = &unk_100AF24D0;
  v6 = a2;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1003F8454;
  v4[3] = &unk_100ADF8F8;
  v4[4] = a3;
  return sub_10002173C(a1, 172, 1, v5, v4);
}

__n128 sub_1003F8454(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = *(qword_100B6D640 + 32);
  v3 = *(qword_100B6D640 + 48);
  v5 = *qword_100B6D640;
  v4 = *(qword_100B6D640 + 16);
  *(v1 + 32) = result;
  *(v1 + 48) = v3;
  *v1 = v5;
  *(v1 + 16) = v4;
  return result;
}

uint64_t sub_1003F8474(uint64_t a1, int a2, uint64_t a3)
{
  v3 = 2 * (a2 == 1);
  if (!a2)
  {
    v3 = 1;
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1003F8540;
  v6[3] = &unk_100AF2270;
  v7 = v3;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1003F8558;
  v5[3] = &unk_100ADF8F8;
  v5[4] = a3;
  return sub_10002173C(a1, 192, 1, v6, v5);
}

double sub_1003F8558(uint64_t a1)
{
  result = *&xmmword_100B6D420;
  **(a1 + 32) = xmmword_100B6D420;
  return result;
}

uint64_t sub_1003F856C(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 173);
}

uint64_t sub_1003F85BC(uint64_t a1, char a2, char a3, __int16 a4)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1003F863C;
  v5[3] = &unk_100AF24D0;
  v7 = a2;
  v8 = a3;
  v6 = a4;
  return sub_10002173C(a1, 173, 1, v5, 0);
}

uint64_t sub_1003F8660(uint64_t a1, __int128 *a2)
{
  v3 = a2[1];
  xmmword_100B6D648 = *a2;
  unk_100B6D658 = v3;
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  *(&xmmword_100B6D688 + 12) = *(a2 + 76);
  xmmword_100B6D678 = v5;
  xmmword_100B6D688 = v6;
  xmmword_100B6D668 = v4;
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 174);
}

uint64_t sub_1003F86D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = sub_10000C7D0(a1, a2);
  if ((*(*v6 + 2992))(v6))
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1003F8814;
    v9[3] = &unk_100AF24D0;
    v10 = v4;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1003F882C;
    v8[3] = &unk_100ADF8F8;
    v8[4] = a3;
    return sub_10002173C(a1, 174, 1, v9, v8);
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_1008282C4();
    }

    return 11;
  }
}

__n128 sub_1003F882C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = unk_100B6D658;
  *v1 = xmmword_100B6D648;
  *(v1 + 16) = v2;
  result = xmmword_100B6D668;
  v4 = xmmword_100B6D678;
  v5 = xmmword_100B6D688;
  *(v1 + 76) = *(&xmmword_100B6D688 + 12);
  *(v1 + 48) = v4;
  *(v1 + 64) = v5;
  *(v1 + 32) = result;
  return result;
}

uint64_t sub_1003F885C(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 175);
}

uint64_t sub_1003F88AC(uint64_t a1, char a2, uint64_t a3, int a4)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1003F892C;
  v5[3] = &unk_100AF2670;
  v7 = a2;
  v5[4] = a3;
  v6 = a4;
  return sub_10002173C(a1, 175, 1, v5, 0);
}

uint64_t sub_1003F8950(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 312);
}

uint64_t sub_1003F89A0(uint64_t a1, uint64_t a2, char a3, unsigned int *a4, uint64_t a5)
{
  v8 = a1;
  v9 = *a4;
  if (v9 > 127)
  {
    if (v9 != 128)
    {
      if (v9 != 129)
      {
        goto LABEL_8;
      }

      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_1003F8EC4;
      v21[3] = &unk_100AF2250;
      v21[4] = a4;
      v21[5] = a2;
      v22 = a3;
      v9 = 1;
      sub_10002173C(a1, 271, 1, v21, 0);
      return v9;
    }

    if (*(a4 + 27) && *(a4 + 27) != *(a2 + 324))
    {
      v17 = *(a4 + 20) != 0;
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_1003F8E78;
      v24[3] = &unk_100AF2590;
      v24[4] = a2;
      v24[5] = a4;
      v18 = v24;
      v19 = 42;
    }

    else
    {
      if (*(a4 + 28) == *(a2 + 323))
      {
        return 1;
      }

      v17 = *(a4 + 20) != 0;
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_1003F8E98;
      v23[3] = &unk_100AF2590;
      v23[4] = a2;
      v23[5] = a4;
      v18 = v23;
      v19 = 32;
    }

    return sub_10002173C(a1, v19, v17, v18, 0);
  }

  if (!v9)
  {
    if (*(a4 + 21))
    {
      v11 = *(a4 + 20) != 0;
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_1003F8DA4;
      v30[3] = &unk_100AF2250;
      v30[4] = a5;
      v30[5] = a4;
      v31 = a3;
      v10 = sub_10002173C(a1, 4, v11, v30, 0);
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      v12 = v10 == 3603;
    }

    else
    {
      v12 = 1;
    }

    v13 = v12;
    v9 = v13 ^ 1u;
    v14 = a4[1];
    if ((v14 & 1) != 0 && v13 && *(a4 + 16) == 1)
    {
      v15 = *(a4 + 20) != 0;
      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_1003F8DFC;
      v29[3] = &unk_100AF2390;
      v29[4] = a4;
      v9 = sub_10002173C(v8, 206, v15, v29, 0);
      v14 = a4[1];
    }

    if ((v14 & 4) != 0)
    {
      v16 = *(a4 + 20) != 0;
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_1003F8E20;
      v27[3] = &unk_100AF2210;
      v28 = a3;
      v27[4] = a4;
      v9 = sub_10002173C(v8, 201, v16, v27, 0);
    }

    if ((*(a4 + 21) & 2) == 0)
    {
      return v9;
    }

    v17 = *(a4 + 20) != 0;
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_1003F8E50;
    v25[3] = &unk_100AF2210;
    v25[4] = a2;
    v26 = a3;
    v18 = v25;
    a1 = v8;
    v19 = 5;
    return sub_10002173C(a1, v19, v17, v18, 0);
  }

  if (v9 != 1)
  {
LABEL_8:
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100828300();
    }

    return 1;
  }

  return v9;
}

uint64_t sub_1003F8DA4(uint64_t a1)
{
  v4 = 0;
  v1 = *(a1 + 40);
  if (*(v1 + 20))
  {
    v2 = sub_1003DE750;
  }

  else
  {
    v2 = 0;
  }

  return sub_1002A32C4(*(a1 + 32), *(v1 + 12), *(a1 + 48) != 0, &v4, v2);
}

uint64_t sub_1003F8EFC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = *a4;
  v9 = 1;
  if (*a4 <= 127)
  {
    if (v8)
    {
      if (v8 != 1)
      {
        return v9;
      }

      v10 = a4 + 23;
      v11 = 4;
      goto LABEL_12;
    }

    v21 = 0;
    sub_1000216B4(&v21);
    if (!sub_1000B8B5C(a2) || (v15 = *(a2 + 248), (v15 - 1) <= 1) && (*(a4 + 12) - 1) > 1)
    {
      v9 = 101;
      goto LABEL_34;
    }

    if (a3)
    {
      v9 = 0;
      *(a2 + 248) = *(a4 + 12) | v15;
    }

    else
    {
      v16 = *(a2 + 248);
      if (*(a4 + 21))
      {
        v16 = v15 & ~*(a4 + 12);
        *(a2 + 248) = v16;
      }

      if (!v15 || v16)
      {
        v17 = *(a4 + 21) == 2;
        if (*(a4 + 21) == 2)
        {
          v9 = 0;
        }

        else
        {
          v9 = 3603;
        }

LABEL_32:
        sub_100022214(&v21);
        if (v17)
        {
          v10 = a4 + 21;
          sub_10002249C(&v21);
          goto LABEL_10;
        }

LABEL_34:
        sub_10002249C(&v21);
        return v9;
      }

      if (*(a2 + 144) == 1 && *(a2 + 197) == 1)
      {
        *(a2 + 197) = 0;
        sub_100247BFC(a2, 2);
      }

      v9 = 0;
    }

    v17 = 1;
    goto LABEL_32;
  }

  switch(v8)
  {
    case 128:
      v10 = a4 + 27;
LABEL_10:
      v11 = 2;
      break;
    case 129:
      v10 = a4 + 29;
      v11 = 3;
      break;
    case 192:
      v10 = a4 + 33;
      v11 = 13;
      break;
    default:
      return v9;
  }

LABEL_12:
  v12 = *(a4 + 20) == 0;
  v18[0] = _NSConcreteStackBlock;
  v13 = !v12;
  v18[1] = 3221225472;
  v18[2] = sub_1003F911C;
  v18[3] = &unk_100AF29D0;
  v18[4] = a1;
  v18[5] = a2;
  v20 = a3;
  v19 = v11;
  v18[6] = a4;
  v18[7] = v10;
  return sub_10002173C(a1, 312, v13, v18, 0);
}

uint64_t sub_1003F914C(uint64_t a1, unsigned __int8 *a2, int a3, char a4, uint64_t a5)
{
  if (!a5)
  {
    v10 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT))
    {
      sub_100828370(v10);
    }
  }

  v16 = 0;
  sub_1000216B4(&v16);
  if ((*a5 - 128) < 2)
  {
    v11 = sub_100255884((*a2 << 40) | (a2[1] << 32) | (a2[2] << 24) | (a2[3] << 16) | (a2[4] << 8) | a2[5]);
  }

  else if (*a5 > 1u)
  {
    v11 = sub_100255934(a2);
  }

  else
  {
    v11 = sub_1000E1FE8(a2);
  }

  v12 = v11;
  sub_100022214(&v16);
  if (v12)
  {
    *(a5 + 20) = a4;
    if ((*(*a1 + 2280))(a1))
    {
      v13 = sub_1003F8EFC(a1, v12, a3, a5);
    }

    else
    {
      v13 = sub_1003F89A0(a1, v12, a3, a5, a2);
    }

    v14 = v13;
  }

  else
  {
    v14 = 12;
  }

  sub_10002249C(&v16);
  return v14;
}

uint64_t sub_1003F9318(uint64_t a1, unsigned __int8 *a2, int a3, char a4, char a5, int a6, int a7, int a8, __int16 a9)
{
  v23[0] = 0;
  v24 = 0u;
  v25 = 0u;
  v23[1] = a6;
  v23[2] = a7;
  v23[3] = a8;
  LOWORD(v24) = a9;
  BYTE5(v24) = a5;
  if ((a6 & 1) != 0 && a9)
  {
    if (a7 == 22 || a7 == 17)
    {
      v14 = 60;
    }

    else
    {
      v14 = 45;
    }

    v22 = 0;
    if (HIBYTE(a9))
    {
      LOBYTE(v15) = 75;
    }

    else
    {
      LOBYTE(v15) = v14;
    }

    v16 = sub_10000E92C();
    sub_100007E30(buf, "ePA");
    sub_100007E30(__p, "iPAMaxThreshold");
    v17 = (*(*v16 + 88))(v16, buf, __p, &v22);
    if (v21 < 0)
    {
      operator delete(__p[0]);
    }

    if (v27 < 0)
    {
      operator delete(*buf);
      if (!v17)
      {
LABEL_20:
        BYTE6(v24) = v15;
        return sub_1003F914C(a1, a2, a3, a4, v23);
      }
    }

    else if (!v17)
    {
      goto LABEL_20;
    }

    v15 = -v22;
    v18 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v15;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Warning: Setting user defined iPA-Max threshold to -%d dBm through defaults write", buf, 8u);
    }

    goto LABEL_20;
  }

  return sub_1003F914C(a1, a2, a3, a4, v23);
}

void sub_1003F94E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003F951C(uint64_t a1, unsigned __int8 *a2, int a3, char a4, char a5, char a6)
{
  memset(v9, 0, sizeof(v9));
  v8 = 0u;
  v7 = 128;
  v9[8] = a6;
  v9[7] = a5;
  return sub_1003F914C(a1, a2, a3, a4, &v7);
}

uint64_t sub_1003F9560(uint64_t a1, unsigned __int8 *a2, int a3, char a4, __int16 a5, char a6, char a7)
{
  memset(v10, 0, sizeof(v10));
  v9 = 0u;
  v8 = 1;
  *&v10[3] = a5;
  v10[5] = a6;
  v10[6] = a7;
  return sub_1003F914C(a1, a2, a3, a4, &v8);
}

uint64_t sub_1003F95A8(uint64_t a1, unsigned __int8 *a2, int a3, char a4, char a5, __int16 a6)
{
  memset(v9, 0, sizeof(v9));
  v8 = 0u;
  v7 = 129;
  HIBYTE(v9[4]) = a5;
  v9[5] = a6;
  return sub_1003F914C(a1, a2, a3, a4, &v7);
}

uint64_t sub_1003F95EC(uint64_t a1, unsigned __int8 *a2, int a3, char a4, __int16 a5, char a6, char a7, char a8, uint64_t a9)
{
  v16 = 0;
  v12 = 0u;
  v11 = 0u;
  v10 = 192;
  *(&v12 + 13) = a5;
  HIBYTE(v12) = a6;
  v13 = a7;
  v14 = a8;
  v15 = a9;
  return sub_1003F914C(a1, a2, a3, a4, &v10);
}

BOOL sub_1003F9644(_DWORD *a1)
{
  v2 = a1[200];
  v3 = sub_10000E92C();
  if (((*(*v3 + 8))(v3) & 1) == 0)
  {
    v4 = sub_10000E92C();
    if (!(*(*v4 + 24))(v4))
    {
      return sub_1004106D0(a1, 0xBB8u);
    }
  }

  if (v2 - 1 <= 0x7CE)
  {
    (*(*a1 + 16))(&v9, a1);
    v7 = (std::string::compare(&v9, "C3") >= 0 || v2 > 0x17) && v2 < 0x1A;
    if ((SHIBYTE(v9.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      if (v7)
      {
        return 1;
      }

      return sub_1004106D0(a1, 0xBB8u) || (a1[200] - 5000) < 0x3E8;
    }

    operator delete(v9.__r_.__value_.__l.__data_);
    if (v7)
    {
      return 1;
    }
  }

  return sub_1004106D0(a1, 0xBB8u) || (a1[200] - 5000) < 0x3E8;
}

uint64_t sub_1003F9780(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 228);
}

uint64_t sub_1003F97D0(uint64_t a1, char a2, uint64_t a3, char a4, char a5)
{
  v17 = 0;
  sub_1000216B4(&v17);
  v10 = sub_1002565B0(a3);
  sub_100022214(&v17);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1003F98C8;
  v13[3] = &unk_100AF2BB0;
  v14 = a2;
  v13[4] = a3;
  v13[5] = v10;
  v15 = a4;
  v16 = a5;
  v11 = sub_10002173C(a1, 228, 1, v13, 0);
  sub_10002249C(&v17);
  return v11;
}

uint64_t sub_1003F98F0(uint64_t a1)
{
  *a1 = off_100AF1088;
  sub_10000CEDC(a1 + 1344, *(a1 + 1352));

  return sub_1003D1F6C(a1);
}

void sub_1003F994C(uint64_t a1)
{
  *a1 = off_100AF1088;
  sub_10000CEDC(a1 + 1344, *(a1 + 1352));
  sub_1003D1F6C(a1);

  operator delete();
}

uint64_t sub_1003F9BB4(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  *a1 = a1 + 8;
  sub_100097C34(a1, *a2, (a2 + 8));
  return a1;
}

void sub_1003FA134(_Unwind_Exception *a1)
{
  v4 = *v3;
  if (*v3)
  {
    *(v1 + 48) = v4;
    operator delete(v4);
  }

  sub_1003C95E8(v2, *(v1 + 16));

  operator delete();
}

uint64_t *sub_1003FA174(uint64_t a1, int *a2, uint64_t a3, _DWORD **a4)
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
      v7 = *(v4 + 28);
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

void *sub_1003FA248(uint64_t a1, unint64_t *a2, uint64_t a3)
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
      v6 = v3[4];
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

uint64_t sub_1003FA31C(uint64_t a1, const char *a2)
{
  v2 = sub_10000E92C();
  if (!(*(*v2 + 8))(v2))
  {
    goto LABEL_12;
  }

  v12 = 0;
  v3 = sub_10000E92C();
  sub_100007E30(buf, "HWRepair");
  sub_100007E30(__p, "BlueToolBTResult");
  v4 = (*(*v3 + 88))(v3, buf, __p, &v12);
  if (v12)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  if ((SHIBYTE(v15) & 0x80000000) == 0)
  {
    if (v5)
    {
      goto LABEL_9;
    }

LABEL_12:
    clock_gettime_nsec_np(_CLOCK_MONOTONIC);
    *buf = 0;
    v14 = buf;
    v15 = 0x2020000000;
    v16 = 0;
    operator new();
  }

  operator delete(*buf);
  if ((v5 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_9:
  v6 = qword_100BCE8D8;
  v7 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
  v8 = v12;
  if (v7)
  {
    *buf = 67109120;
    *&buf[4] = v12;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Using override value (%d) for runBlueTool BTResult", buf, 8u);
    return v12;
  }

  return v8;
}

void sub_1003FA698(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (*(v28 - 105) < 0)
  {
    operator delete(*(v28 - 128));
  }

  _Unwind_Resume(exception_object);
}

void sub_1003FA728(uint64_t a1, int a2, uint64_t a3)
{
  if (*(a1 + 120))
  {
    v5 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT))
    {
      sub_1008283F4(v5);
    }
  }

  sub_100088DD4(a2, a3, 0);
}

uint64_t sub_1003FA850(void *a1, xpc_object_t object)
{
  v4 = a1[5];
  if (xpc_get_type(object) == &_xpc_type_dictionary)
  {
    int64 = xpc_dictionary_get_int64(object, "result");
    v12 = int64;
    v14 = int64 == 10 || int64 == 13;
    if (int64)
    {
      if ((int64 == 13 || int64 == 10) && os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_1008284F4();
      }

      v15 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_100828528(a1, v12, v15);
      }
    }

    else
    {
      v22 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        v23 = a1[6];
        *__str = 136446210;
        *&__str[4] = v23;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "BlueTool finished running %{public}s script", __str, 0xCu);
      }
    }

    if (v14)
    {
      v16 = 2;
    }

    else
    {
      v16 = 1;
    }

    if (!v12)
    {
      v16 = 0;
    }

    *(*(a1[4] + 8) + 24) = v16;
    *(v4 + 128) = *(*(a1[4] + 8) + 24);
    string = xpc_dictionary_get_string(object, "firmware");
    v18 = xpc_dictionary_get_int64(object, "manufacturer");
    if (string)
    {
      std::string::assign((v4 + 96), string);
    }

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    *__str = 0u;
    v25 = 0u;
    snprintf(__str, 0x80uLL, "%lld/%s", v18, string);
    v19 = clock_gettime_nsec_np(_CLOCK_MONOTONIC);
    result = sub_10000F034(v19, v20);
    if (result)
    {
      v10 = *(*sub_10000F034(result, v21) + 64);
      return v10();
    }
  }

  else
  {
    v5 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100828478(a1, v5);
    }

    *(v4 + 128) = 213;
    *(*(a1[4] + 8) + 24) = 1;
    v6 = clock_gettime_nsec_np(_CLOCK_MONOTONIC);
    result = sub_10000F034(v6, v7);
    if (result)
    {
      v10 = *(*sub_10000F034(result, v9) + 64);
      return v10();
    }
  }

  return result;
}

uint64_t sub_1003FAB5C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    sub_10032147C(result);

    operator delete();
  }

  return result;
}

void sub_1003FABA0(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (v2 || (v5 = qword_100BCE8D8, os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT)) && (v6 = 136446210, v7 = "fPowerAssertion != NULL", _os_log_fault_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, "Assertion failed: %{public}s", &v6, 0xCu), (v2 = *(a1 + 120)) != 0))
  {
    v3 = qword_100BCE9C8;
    if (!os_log_type_enabled(qword_100BCE9C8, OS_LOG_TYPE_DEFAULT) || (v4 = (*(*v2 + 16))(v2), v6 = 136315138, v7 = v4, _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Destroying %s", &v6, 0xCu), (v2 = *(a1 + 120)) != 0))
    {
      (*(*v2 + 8))(v2);
    }

    *(a1 + 120) = 0;
  }
}

void sub_1003FAD18(unint64_t result, int a2)
{
  if (a2)
  {
    if ((*(result + 132) & 1) == 0)
    {
      v3 = dword_100B6D6A8++;
      v4 = clock_gettime_nsec_np(_CLOCK_MONOTONIC);
      v5 = v4;
      if (v3)
      {
        if (v4 > qword_100B6D6B0 + 5000000000)
        {
          v6 = qword_100BCE8D8;
          if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEBUG))
          {
            sub_1008285B4(v5, v6);
          }

          v7 = dword_100B6D6A8;
          if (dword_100B6D6A8 < 0xB)
          {
            dword_100B6D6A8 = 0;
            v10 = qword_100BCE8D8;
            if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEBUG))
            {
              sub_100828640(v10);
            }
          }

          else
          {
            v8 = qword_100BCE8D8;
            if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEBUG))
            {
              sub_1008286BC(v5, v7, v8);
            }

            *(result + 132) = 1;
          }
        }
      }

      else
      {
        qword_100B6D6B0 = v4;
        v9 = qword_100BCE8D8;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEBUG))
        {
          sub_100828750(v5, v9);
        }
      }
    }
  }

  else
  {
    dword_100B6D6A8 = 0;
    *(result + 132) = 0;
  }
}

void sub_1003FB030(uint64_t a1, xpc_object_t object)
{
  if (xpc_get_type(object) == &_xpc_type_dictionary)
  {
    string = xpc_dictionary_get_string(object, "output");
    if (string)
    {
      strlcpy(*(a1 + 40), string, *(a1 + 48));
    }

    v6 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 56);
      v8 = *(a1 + 40);
      *buf = 136446466;
      *&buf[4] = v7;
      *&buf[12] = 2082;
      *&buf[14] = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "BlueTool finished running %{public}s command - output was %{public}s", buf, 0x16u);
    }

    if (*(a1 + 64) == 1)
    {
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
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
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v10 = 0u;
      v11 = 0u;
      memset(buf, 0, sizeof(buf));
      snprintf(buf, 0x200uLL, "Command %s, Response %s ", *(a1 + 56), *(a1 + 40));
      sub_1001C429C(buf);
    }
  }

  else
  {
    v4 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_1008287C8(a1, v4);
    }

    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

uint64_t sub_1003FB1E4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    sub_10032147C(result);

    operator delete();
  }

  return result;
}

uint64_t sub_1003FB228(uint64_t a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Booting chipset", v5, 2u);
  }

  v3 = sub_1003FB334(a1);
  (*(*a1 + 144))(a1, v3);
  if ((*(*a1 + 136))(a1) == 11)
  {
    return sub_1003FA31C(a1, "boot");
  }

  else
  {
    return (*(*a1 + 136))(a1);
  }
}

uint64_t sub_1003FB334(uint64_t a1)
{
  v77 = 0;
  v76 = 0;
  v2 = sub_10024E444(&v76);
  v4 = sub_10009B9DC(v2, v3);
  if (v4 != 7)
  {
    v6 = sub_10009B9DC(v4, v5);
    if (v6 != 8 && sub_10009B9DC(v6, v7) != 9)
    {
      return 11;
    }
  }

  if (sub_10022DC58())
  {
    return 11;
  }

  v75 = 0;
  v10 = sub_10000E92C();
  sub_100007E30(__p, "ChipBoot");
  sub_100007E30(&buf, "DisableInitChipSimpleFast");
  (*(*v10 + 72))(v10, __p, &buf, &v75);
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  v11 = qword_100BCE8D8;
  if (v75 == 1)
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_1008289D0();
    }

    return 11;
  }

  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *__p = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Booting chipset simple and fast", __p, 2u);
  }

  v12 = clock_gettime_nsec_np(_CLOCK_MONOTONIC);
  v74 = 0;
  v73 = 0;
  memset(&__p[4], 0, 60);
  *__p = 1818845542;
  v14 = sub_10009B9DC(v12, v13);
  if (v14 == 9)
  {
    v16 = IORegistryEntryFromPath(kIOMainPortDefault, "IODeviceTree:/centauri");
    v18 = v16;
    if (v16)
    {
      CFProperty = IORegistryEntryCreateCFProperty(v16, @"BTHardwareHealthy", kCFAllocatorDefault, 0);
      v20 = CFProperty;
      if (CFProperty)
      {
        v21 = CFGetTypeID(CFProperty);
        if (v21 == CFBooleanGetTypeID())
        {
          Value = CFBooleanGetValue(v20);
          v23 = qword_100BCE8D8;
          if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
          {
            v24 = "healthy";
            if (!Value)
            {
              v24 = "unhealthy";
            }

            LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
            *(buf.__r_.__value_.__r.__words + 4) = v24;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "hardware health detected: %s", &buf, 0xCu);
          }

          if (!Value)
          {
            sub_1001BAECC(10000);
            CFRelease(v20);
            IOObjectRelease(v18);
            v8 = 24;
LABEL_68:
            if (v73)
            {
              free(v73);
            }

            v47 = qword_100BCE8D8;
            if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(buf.__r_.__value_.__l.__data_) = 67109120;
              HIDWORD(buf.__r_.__value_.__r.__words[0]) = v8;
              _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Booting chipset simple and fast returns %d", &buf, 8u);
            }

            v48 = clock_gettime_nsec_np(_CLOCK_MONOTONIC);
            v50 = sub_10000F034(v48, v49);
            if (v50)
            {
              v52 = sub_10000F034(v50, v51);
              (*(*v52 + 64))(v52, __p, v8, "boot", (v48 - v12) / 0xF4240);
            }

            return v8;
          }
        }

        else if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
        {
          sub_100828934();
        }

        CFRelease(v20);
      }

      v16 = IOObjectRelease(v18);
    }

LABEL_47:
    if (sub_10009B9DC(v16, v17) != 7)
    {
      goto LABEL_55;
    }

    v33 = IOServiceNameMatching("AppleConvergedIPCOLYBTControl");
    MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v33);
    v35 = MatchingService;
    if (!MatchingService)
    {
      goto LABEL_55;
    }

    v36 = IORegistryEntrySearchCFProperty(MatchingService, "IODeviceTree", @"fatalerror", kCFAllocatorDefault, 1u);
    v37 = v36;
    if (v36)
    {
      v38 = CFGetTypeID(v36);
      if (v38 == CFBooleanGetTypeID())
      {
        v39 = CFBooleanGetValue(v37) == 0;
        CFRelease(v37);
        IOObjectRelease(v35);
        if (!v39)
        {
          v40 = sub_10022DE3C();
          if (v40)
          {
            if (v40 != 1220)
            {
              v8 = 2408;
              goto LABEL_68;
            }

            goto LABEL_58;
          }

          v41 = qword_100BCE8D8;
          v42 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
          if (v42)
          {
            LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
            *(buf.__r_.__value_.__r.__words + 4) = "PowerCycle";
            _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, " %s of Bluetooth PCIe transport -- Completed", &buf, 0xCu);
          }

          v44 = sub_10009B9DC(v42, v43);
          if (v44 == 7)
          {
            v46 = sub_100017E6C();
            v44 = (*(*v46 + 320))(v46);
            if (v44 == 4399)
            {
              v53 = sub_100017E6C();
              v44 = (*(*v53 + 384))(v53);
              if (v44)
              {
                if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT))
                {
                  sub_100828968();
                }

                v8 = 2413;
                goto LABEL_68;
              }
            }

            else if (!v44)
            {
              if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT))
              {
                sub_10082899C();
              }

              v8 = 2412;
              goto LABEL_68;
            }
          }

          v54 = sub_10009B9DC(v44, v45);
          if (v54 == 9)
          {
LABEL_79:
            v56 = sub_10009BD9C(v54, v55);
            (*(*v56 + 32))(v56, &v76);
            sub_10024E444(&v76);
            v57 = qword_100BCE8D8;
            v8 = 0;
            if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
            {
              sub_1000BE6F8(&v76, &buf);
              if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                p_buf = &buf;
              }

              else
              {
                p_buf = buf.__r_.__value_.__r.__words[0];
              }

              *v78 = 136315138;
              v79 = p_buf;
              _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "Providing the local device address of %s", v78, 0xCu);
              if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(buf.__r_.__value_.__l.__data_);
              }

              v8 = 0;
            }

            goto LABEL_68;
          }

          v59 = sub_10022DE20();
          if (v59)
          {
            if (v59 != 1220)
            {
              v8 = 2410;
              goto LABEL_68;
            }

LABEL_58:
            v8 = 2411;
            goto LABEL_68;
          }

          v60 = qword_100BCE8D8;
          if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf.__r_.__value_.__l.__data_) = 0;
            _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "PCIe successfully transferred firmware image file", &buf, 2u);
          }

          v61 = (a1 + 96);
          v62 = std::string::compare((a1 + 96), 0, 0xEuLL, "/etc/bluetool/");
          if (v62)
          {
            if (sub_10009B9DC(v62, v63) != 8)
            {
              v67 = sub_100017E6C();
              (*(*v67 + 360))(&buf);
              if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
              {
                v68 = buf.__r_.__value_.__r.__words[0];
                strncpy(__p, buf.__r_.__value_.__l.__data_, 0x40uLL);
                operator delete(v68);
              }

              else
              {
                strncpy(__p, &buf, 0x40uLL);
              }

              __p[63] = 0;
              v69 = std::string::rfind((a1 + 96), 47, 0xFFFFFFFFFFFFFFFFLL);
              std::string::basic_string(&buf, (a1 + 96), v69 + 1, 0xFFFFFFFFFFFFFFFFLL, v78);
              if (*(a1 + 119) < 0)
              {
                operator delete(*v61);
              }

              *v61 = *&buf.__r_.__value_.__l.__data_;
              *(a1 + 112) = *(&buf.__r_.__value_.__l + 2);
              goto LABEL_106;
            }

            v64 = "pinecrest";
          }

          else
          {
            v64 = "override";
          }

          v65 = *(v64 + 1);
          *__p = *v64;
          *&__p[16] = v65;
          v66 = *(v64 + 3);
          *&__p[32] = *(v64 + 2);
          *&__p[48] = v66;
LABEL_106:
          v70 = qword_100BCE8D8;
          v54 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
          if (v54)
          {
            if (*(a1 + 119) < 0)
            {
              v61 = *v61;
            }

            LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
            *(buf.__r_.__value_.__r.__words + 4) = v61;
            _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "Setting firmware filename to %s", &buf, 0xCu);
          }

          goto LABEL_79;
        }

LABEL_55:
        sub_1003FA728(a1, 7, 11);
      }

      CFRelease(v37);
    }

    IOObjectRelease(v35);
    goto LABEL_55;
  }

  if (sub_10009B9DC(v14, v15) != 8 || (v25 = sub_100017E6C(), !(*(*v25 + 376))(v25)))
  {
    v26 = sub_100017E6C();
    sub_100007E30(v71, ".bin");
    v27 = (a1 + 96);
    v28 = (*(*v26 + 448))(v26, v71, &v73, &v74, a1 + 96, 0);
    v8 = v28;
    if (v72 < 0)
    {
      operator delete(v71[0]);
    }

    if (v8)
    {
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT))
      {
        sub_100828878();
      }

      goto LABEL_68;
    }

    v16 = sub_10009B9DC(v28, v29);
    if (v16 == 8)
    {
      v30 = std::string::rfind((a1 + 96), 47, 0xFFFFFFFFFFFFFFFFLL);
      std::string::basic_string(&buf, (a1 + 96), v30 + 1, 0xFFFFFFFFFFFFFFFFLL, v78);
      if (*(a1 + 119) < 0)
      {
        operator delete(*v27);
      }

      *v27 = *&buf.__r_.__value_.__l.__data_;
      *(a1 + 112) = *(&buf.__r_.__value_.__l + 2);
      v31 = std::string::compare((a1 + 96), 0, 6uLL, "MT7923");
      v32 = qword_100BCE8D8;
      if (v31)
      {
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
        {
          sub_1008288AC((a1 + 119), (a1 + 96), v32);
        }

        v8 = 1205;
        goto LABEL_68;
      }

      v16 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
      if (v16)
      {
        if (*(a1 + 119) < 0)
        {
          v27 = *v27;
        }

        LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
        *(buf.__r_.__value_.__r.__words + 4) = v27;
        WORD2(buf.__r_.__value_.__r.__words[1]) = 1024;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = v74;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "SRS: FW name : %s, size : %d\n", &buf, 0x12u);
      }
    }

    goto LABEL_47;
  }

  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_100828844();
  }

  return 2414;
}

void sub_1003FBDA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003FBDF4(uint64_t a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Powering on chipset", v4, 2u);
  }

  if ((*(*a1 + 136))(a1) == 11)
  {
    return sub_1003FA31C(a1, "init");
  }

  else
  {
    return (*(*a1 + 136))(a1);
  }
}

uint64_t sub_1003FBECC(uint64_t a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Powering off chipset", v4, 2u);
  }

  if ((*(*a1 + 136))(a1) == 11)
  {
    return sub_1003FA31C(a1, "deepsleep");
  }

  else
  {
    return (*(*a1 + 136))(a1);
  }
}

uint64_t sub_1003FBFA4(uint64_t a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Resetting chipset", v4, 2u);
  }

  result = (*(*a1 + 16))(a1);
  if (!result)
  {
    return (*(*a1 + 8))(a1);
  }

  return result;
}

uint64_t sub_1003FC064(int a1, char *name, uint64_t a3)
{
  v4 = IOServiceNameMatching(name);
  if (!v4)
  {
    return 1;
  }

  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v4);
  if (!MatchingService)
  {
    return 1;
  }

  v6 = MatchingService;
  v13 = 0;
  *buffer = 0;
  v7 = 1;
  v8 = IORegistryEntrySearchCFProperty(MatchingService, "IODeviceTree", @"local-mac-address", kCFAllocatorDefault, 1u);
  if (v8)
  {
    v9 = v8;
    v18.location = 0;
    v18.length = 6;
    CFDataGetBytes(v8, v18, buffer);
    *a3 = *buffer;
    *(a3 + 4) = v13;
    v10 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68157954;
      v15 = 6;
      v16 = 2096;
      v17 = buffer;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "DeviceTree address = %{bluetooth:BD_ADDR}.6P", buf, 0x12u);
    }

    CFRelease(v9);
    v7 = 0;
  }

  IOObjectRelease(v6);
  return v7;
}

uint64_t sub_1003FC1CC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 80))
  {
LABEL_2:
    v3 = *(a1 + 80);
    *(a2 + 4) = *(a1 + 84);
    *a2 = v3;
    return 0;
  }

  v5 = 0;
  while (v5 != 5)
  {
    if (*(a1 + 81 + v5++))
    {
      if ((v5 - 1) <= 4)
      {
        goto LABEL_2;
      }

      break;
    }
  }

  v7 = sub_1003FC064(a1, "marconi-bt", a2);
  if (!v7)
  {
    return 0;
  }

  return sub_1003FC064(v7, "bluetooth", a2);
}

uint64_t sub_1003FC270(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 84) = *(a2 + 2);
  *(result + 80) = v2;
  return result;
}

uint64_t sub_1003FC2B4()
{
  v0 = CFPreferencesCopyAppValue(@"defaultPoweredState", @"com.apple.BTServer");
  if (v0)
  {
    v1 = v0;
    if (CFEqual(v0, @"off"))
    {
      v2 = 0;
    }

    else
    {
      CFEqual(v1, @"on");
      v2 = 1;
    }

    CFRelease(v1);
  }

  else
  {
    v2 = 1;
  }

  v3 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Default power state : %d", v5, 8u);
  }

  return v2;
}

uint64_t sub_1003FC3B0(uint64_t a1, int a2)
{
  v3 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = a2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Write default power state : %d", v7, 8u);
  }

  v4 = @"on";
  if (a2 != 1)
  {
    v4 = 0;
  }

  if (a2)
  {
    v5 = v4;
  }

  else
  {
    v5 = @"off";
  }

  CFPreferencesSetAppValue(@"defaultPoweredState", v5, @"com.apple.BTServer");
  return CFPreferencesAppSynchronize(@"com.apple.BTServer");
}

uint64_t sub_1003FC494()
{
  v0 = CFPreferencesCopyAppValue(@"defaultAirplaneModePowerState", @"com.apple.BTServer");
  if (v0)
  {
    v1 = v0;
    if (CFEqual(v0, @"off"))
    {
      v2 = 0;
    }

    else
    {
      CFEqual(v1, @"on");
      v2 = 1;
    }

    CFRelease(v1);
  }

  else
  {
    v2 = 1;
  }

  v3 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Default airplane mode power state : %d", v5, 8u);
  }

  return v2;
}

uint64_t sub_1003FC590(uint64_t a1, int a2)
{
  v3 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = a2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Write default airplane mode power state : %d", v7, 8u);
  }

  v4 = @"on";
  if (a2 != 1)
  {
    v4 = 0;
  }

  if (a2)
  {
    v5 = v4;
  }

  else
  {
    v5 = @"off";
  }

  CFPreferencesSetAppValue(@"defaultAirplaneModePowerState", v5, @"com.apple.BTServer");
  return CFPreferencesAppSynchronize(@"com.apple.BTServer");
}

uint64_t sub_1003FC674(uint64_t a1, int a2, int a3)
{
  valuePtr = a3;
  Current = CFAbsoluteTimeGetCurrent();
  v6 = CFDateCreate(kCFAllocatorDefault, Current + a2);
  if (!v6)
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100828A6C();
    }

    return 1;
  }

  v7 = v6;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 3, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!Mutable)
  {
    CFRelease(v7);
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100828A38();
    }

    return 1;
  }

  v9 = Mutable;
  CFDictionarySetValue(Mutable, @"scheduledby", @"BT_Wakeup");
  CFDictionarySetValue(v9, @"time", v7);
  if (a3 >= 1)
  {
    v10 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
    if (v10)
    {
      v11 = v10;
      CFDictionarySetValue(v9, @"leeway", v10);
      CFRelease(v11);
    }
  }

  v12 = IOPMRequestSysWake();
  CFRelease(v9);
  CFRelease(v7);
  if (v12)
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100828A04();
    }

    return 1;
  }

  return 0;
}

uint64_t sub_1003FC818(uint64_t a1)
{
  *a1 = off_100AF2F20;
  *(a1 + 8) = off_100AF2FE0;
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  sub_10007A068(a1 + 16);
  return a1;
}

void sub_1003FC890(uint64_t a1)
{
  *a1 = off_100AF2F20;
  *(a1 + 8) = off_100AF2FE0;
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  sub_10007A068(a1 + 16);

  operator delete();
}

void sub_1003FC930(uint64_t a1, char a2, char a3, int a4)
{
  *a1 = off_100AF3008;
  *(a1 + 8) = a2;
  *(a1 + 9) = a3;
  *(a1 + 12) = a4;
  sub_100044BBC((a1 + 16));
  sub_100044BBC((a1 + 88));
  *(a1 + 160) = 0;
  *(a1 + 152) = a1 + 160;
  *(a1 + 168) = 0;
  sub_100044BBC((a1 + 176));
  operator new();
}

uint64_t sub_1003FCA4C(uint64_t a1)
{
  *a1 = off_100AF3008;
  v2 = *(a1 + 80);
  if (v2)
  {
    sub_1005711C4(v2);
    operator delete();
  }

  sub_10007A068(a1 + 176);
  sub_10000CEDC(a1 + 152, *(a1 + 160));
  sub_10007A068(a1 + 88);
  sub_10007A068(a1 + 16);
  return a1;
}

id sub_1003FCAD8(uint64_t a1, unint64_t a2)
{
  v13[1] = 0;
  v14 = a2;
  v13[0] = 0;
  sub_100007F88(v13, a1 + 88);
  v6 = *(a1 + 160);
  v5 = a1 + 160;
  v4 = v6;
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = v5;
  do
  {
    v8 = *(v4 + 32);
    v9 = v8 >= a2;
    v10 = v8 < a2;
    if (v9)
    {
      v7 = v4;
    }

    v4 = *(v4 + 8 * v10);
  }

  while (v4);
  if (v7 != v5 && *(v7 + 32) <= a2)
  {
    v15 = &v14;
    v11 = [NSString stringWithUTF8String:*(sub_10005E16C(v5 - 8, &v14, &unk_1008A9BD0, &v15)[5] + 8)];
  }

  else
  {
LABEL_9:
    v11 = 0;
  }

  sub_1000088CC(v13);

  return v11;
}

void sub_1003FCBB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1003FCBC8(uint64_t a1, unint64_t a2)
{
  v22[1] = 0;
  v23 = a2;
  v22[0] = 0;
  sub_100007F88(v22, a1 + 88);
  v5 = a1 + 160;
  v4 = *(a1 + 160);
  if (v4)
  {
    v6 = a1 + 160;
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
    if (v6 != v5 && *(v6 + 32) <= a2)
    {
      goto LABEL_12;
    }
  }

  v10 = *(a1 + 168);
  sub_10000801C(v22);
  if ((*(a1 + 9) & 1) == 0 && v10)
  {
    sub_100007FB8(v22);
    v11 = *(*(a1 + 152) + 40);
    *&__s1[0] = &v23;
    sub_10005E16C(v5 - 8, &v23, &unk_1008A9BD0, __s1)[5] = v11;
LABEL_12:
    v12 = 1;
    goto LABEL_19;
  }

  *v21 = 0;
  memset(__s1, 0, sizeof(__s1));
  memset(&v31, 0, sizeof(v31));
  v13 = openpty(&v21[1], v21, __s1, 0, 0);
  v14 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
  {
    *buf = 67109890;
    *&buf[4] = v21[1];
    v25 = 1024;
    v26 = v21[0];
    v27 = 2080;
    v28 = __s1;
    v29 = 1024;
    v30 = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Tried to open PTY with central = %d, peripheral = %d, name = %s - result was %d", buf, 0x1Eu);
  }

  if (!v13)
  {
    if (*(a1 + 8) == 2)
    {
      v18 = fcntl(v21[1], 3);
      v19 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        *&buf[4] = v18;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Flags are 0x%08x", buf, 8u);
      }

      fcntl(v21[1], 4, v18 | 4u);
    }

    tcgetattr(v21[1], &v31);
    cfsetspeed(&v31, 0x38400uLL);
    cfmakeraw(&v31);
    tcsetattr(v21[1], 0, &v31);
    v20 = 3145728;
    ioctl(v21[1], 0x80085402uLL, &v20);
    operator new();
  }

  v15 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    v16 = __error();
    sub_100828AA0(v16, buf, v15);
  }

  v12 = 0;
LABEL_19:
  sub_1000088CC(v22);
  return v12;
}

void sub_1003FD154(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1003FD1B4(uint64_t a1, unint64_t a2)
{
  v31[1] = 0;
  v32 = a2;
  v31[0] = 0;
  sub_100007F88(v31, a1 + 88);
  v4 = *(a1 + 160);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = a1 + 160;
  do
  {
    v6 = *(v4 + 32);
    v7 = v6 >= a2;
    v8 = v6 < a2;
    if (v7)
    {
      v5 = v4;
    }

    v4 = *(v4 + 8 * v8);
  }

  while (v4);
  if (v5 != a1 + 160 && *(v5 + 32) <= a2)
  {
    v30[0] = &v32;
    v17 = sub_10005E16C(a1 + 152, &v32, &unk_1008A9BD0, v30)[5];
    sub_10000801C(v31);
    v30[0] = 0;
    v30[1] = 0;
    sub_100007F88(v30, a1 + 176);
    v18 = read(*v17, *(v17 + 40), *(a1 + 12));
    if (v18 < 1)
    {
      v27 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        v28 = __error();
        sub_100828AEC(v28, buf, v27);
      }
    }

    else
    {
      *(v17 + 32) = 1;
      dispatch_suspend(*(v17 + 24));
      if (((*(*a1 + 24))(a1, v32, *(v17 + 40), v18) & 1) == 0)
      {
        v19 = qword_100BCE8D8;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
        {
          sub_100828B38(v19, v20, v21, v22, v23, v24, v25, v26);
        }
      }
    }

    sub_1000088CC(v30);
  }

  else
  {
LABEL_9:
    v9 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100828B70(v9, v10, v11, v12, v13, v14, v15, v16);
    }
  }

  return sub_1000088CC(v31);
}

void sub_1003FD394(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_1000088CC(va);
  sub_1000088CC(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_1003FD3C8(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 32) & 1) == 0)
  {
    dispatch_release(*(v2 + 24));
    v2 = *(a1 + 32);
  }

  result = close(*v2);
  **(a1 + 32) = -1;
  return result;
}

void sub_1003FD414(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1003FD488;
  v3[3] = &unk_100AE0860;
  v3[4] = a1;
  v3[5] = a2;
  sub_10000CA94(v2, v3);
}

uint64_t sub_1003FD494(uint64_t a1, unint64_t a2)
{
  v14[1] = 0;
  v15 = a2;
  v14[0] = 0;
  sub_100007F88(v14, a1 + 88);
  v4 = *(a1 + 160);
  if (v4)
  {
    v5 = (a1 + 152);
    v6 = a1 + 160;
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
    if (v6 != a1 + 160 && *(v6 + 32) <= a2)
    {
      v13[0] = &v15;
      v10 = sub_10005E16C(v5, &v15, &unk_1008A9BD0, v13)[5];
      sub_100075DC4(v5, &v15);
      if ((*(a1 + 9) & 1) != 0 || !*(a1 + 168))
      {
        v13[0] = 0;
        v13[1] = 0;
        sub_100007F88(v13, a1 + 176);
        sub_100571164(*(v10 + 16));
        v11 = *(v10 + 24);
        if (!v11)
        {
          sub_1003FD604(v10);
        }

        dispatch_set_finalizer_f(v11, sub_1003FD604);
        dispatch_set_context(*(v10 + 24), v10);
        if (*(v10 + 32) == 1)
        {
          *(v10 + 32) = 0;
          dispatch_resume(*(v10 + 24));
        }

        dispatch_source_cancel(*(v10 + 24));
        sub_1000088CC(v13);
      }
    }
  }

  return sub_1000088CC(v14);
}

void sub_1003FD5DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_1003FD604(uint64_t a1)
{
  close(*(a1 + 4));
  *(a1 + 4) = -1;
  free(*(a1 + 8));
  *(a1 + 8) = 0;
  free(*(a1 + 40));
  *(a1 + 40) = 0;
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_1005711C4(v2);
    operator delete();
  }

  operator delete();
}

void sub_1003FD690(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1003FD704;
  v2[3] = &unk_100ADF8F8;
  v2[4] = a1;
  sub_10000CA94(v1, v2);
}

uint64_t sub_1003FD70C(uint64_t a1)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1 + 88);
  while (1)
  {
    v2 = *(a1 + 152);
    if (v2 == a1 + 160)
    {
      break;
    }

    v3 = *(v2 + 32);
    sub_10000801C(v5);
    sub_1003FD494(a1, v3);
    sub_100007FB8(v5);
  }

  return sub_1000088CC(v5);
}

uint64_t sub_1003FD79C(uint64_t a1, unint64_t a2, uint64_t a3, int a4, int a5)
{
  v27[1] = 0;
  v28 = a2;
  v27[0] = 0;
  sub_100007F88(v27, a1 + 88);
  v12 = *(a1 + 160);
  v11 = a1 + 160;
  v10 = v12;
  if (v12)
  {
    v13 = v11;
    do
    {
      v14 = *(v10 + 32);
      v15 = v14 >= a2;
      v16 = v14 < a2;
      if (v15)
      {
        v13 = v10;
      }

      v10 = *(v10 + 8 * v16);
    }

    while (v10);
    if (v13 != v11 && *(v13 + 32) <= a2)
    {
      v29 = &v28;
      v17 = sub_10005E16C(v11 - 8, &v28, &unk_1008A9BD0, &v29)[5];
      v18 = [NSData dataWithBytes:a3 length:a4];
      v19 = 4;
      if (!a5)
      {
        v19 = 0;
      }

      v20 = *(v17 + v19);
      v21 = *(v17 + 16);
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_1003FD924;
      v24[3] = &unk_100ADF920;
      v25 = v18;
      v26 = v20;
      v22 = v18;
      sub_10000CA94(v21, v24);
    }
  }

  return sub_1000088CC(v27);
}

void sub_1003FD8F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, ...)
{
  va_start(va, a15);

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_1003FD924(uint64_t a1)
{
  v2 = [*(a1 + 32) length];
  if (v2 != write(*(a1 + 40), [*(a1 + 32) bytes], objc_msgSend(*(a1 + 32), "length")))
  {
    v3 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100828BA8(v3);
    }
  }
}

uint64_t sub_1003FD9B4(uint64_t a1, unint64_t a2)
{
  v21[1] = 0;
  v22 = a2;
  v21[0] = 0;
  sub_100007F88(v21, a1 + 88);
  v6 = *(a1 + 160);
  v5 = a1 + 160;
  v4 = v6;
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = v5;
  do
  {
    v8 = *(v4 + 32);
    v9 = v8 >= a2;
    v10 = v8 < a2;
    if (v9)
    {
      v7 = v4;
    }

    v4 = *(v4 + 8 * v10);
  }

  while (v4);
  if (v7 != v5 && *(v7 + 32) <= a2)
  {
    v23 = &v22;
    v20 = sub_10005E16C(v5 - 8, &v22, &unk_1008A9BD0, &v23)[5];
    sub_10000801C(v21);
    if (*(v20 + 32) == 1)
    {
      *(v20 + 32) = 0;
      dispatch_resume(*(v20 + 24));
    }
  }

  else
  {
LABEL_9:
    v11 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100828B70(v11, v12, v13, v14, v15, v16, v17, v18);
    }
  }

  return sub_1000088CC(v21);
}

void sub_1003FDAA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1003FDABC(uint64_t a1, uint64_t a2)
{
  v2 = *(*sub_10000EE80(a1, a2) + 176);

  return v2();
}

uint64_t sub_1003FDB44(uint64_t a1)
{
  *a1 = off_100AF3038;
  *(a1 + 8) = &off_100AF3408;
  *(a1 + 16) = -1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = &off_100AF36F0;
  sub_10040F624((a1 + 72));
  *(a1 + 92) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 5;
  *(a1 + 100) = 0;
  *(a1 + 104) = 0;
  *(a1 + 108) = 0;
  *(a1 + 127) = 0;
  *(a1 + 184) = 0;
  *(a1 + 222) = 0;
  *(a1 + 224) = 0;
  *(a1 + 226) = 0;
  *(a1 + 177) = 0;
  *(a1 + 181) = 0;
  *(a1 + 188) = 0;
  *(a1 + 194) = 0;
  *(a1 + 228) = 1;
  *(a1 + 232) = 0;
  *(a1 + 243) = 0;
  *(a1 + 236) = 0;
  *(a1 + 247) = 257;
  *(a1 + 251) = 1;
  *(a1 + 252) = 0;
  *(a1 + 261) = 1;
  *(a1 + 262) = 0;
  *(a1 + 272) = &_mh_execute_header;
  *(a1 + 280) = 0;
  *(a1 + 288) = 60000;
  sub_100044BBC((a1 + 296));
  *(a1 + 360) = 0;
  *(a1 + 202) = 0;
  *(a1 + 208) = 0;
  *(a1 + 223) = 0;
  *(a1 + 172) = 0;
  *(a1 + 216) = 0;
  *(a1 + 220) = 0;
  *(a1 + 176) = -1;
  v2 = objc_autoreleasePoolPush();
  v3 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
  v4 = [NSString alloc];
  v5 = [v3 objectAtIndexedSubscript:0];
  v6 = [v4 initWithFormat:@"%@/Logs/Bluetooth", v5];
  v7 = qword_100B6D6B8;
  qword_100B6D6B8 = v6;

  v8 = [qword_100B6D6B8 stringByAppendingPathComponent:@"PacketLogs"];
  v9 = [v8 copy];
  v10 = qword_100B6D6C0;
  qword_100B6D6C0 = v9;

  objc_autoreleasePoolPop(v2);
  *(a1 + 24) = dispatch_queue_create("com.apple.MobileBluetooth.debugSettings", 0);
  return a1;
}

uint64_t sub_1003FDD9C(uint64_t a1)
{
  *a1 = off_100AF3038;
  v2 = a1 + 8;
  *(a1 + 8) = &off_100AF3408;
  notify_cancel(*(a1 + 20));
  notify_cancel(*(a1 + 16));
  if (qword_100B50AA0 != -1)
  {
    sub_100828C38();
  }

  sub_10007A3F0(off_100B50A98 + 64, v2);
  sub_10007A068(a1 + 296);
  return a1;
}

void sub_1003FDE58(uint64_t a1)
{
  sub_1003FDD9C(a1);

  operator delete();
}

void sub_1003FDE90(_BYTE *a1, _BYTE *a2, _BYTE *a3, _BYTE *a4)
{
  v28 = 0;
  if ((*(*a1 + 8))(a1))
  {
    v8 = 1;
  }

  else
  {
    v8 = a1[89];
  }

  *a2 = v8 & 1;
  v9 = (*(*a1 + 8))(a1);
  if (v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = a1[89];
  }

  *a3 = v11 & 1;
  v12 = sub_10000C7D0(v9, v10);
  v13 = *(v12 + 800);
  v15 = *sub_10000C798(v12, v14);
  if ((*(v15 + 368))())
  {
    v16 = v13 == 9;
  }

  else
  {
    v16 = 0;
  }

  if (v16)
  {
    *a2 = 0;
    *a3 = 0;
  }

  sub_100007E30(buf, "HCITraces");
  sub_100007E30(__p, "StackDebugEnabled");
  (*(*a1 + 72))(a1, buf, __p, &v28);
  if (v27 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v32) < 0)
  {
    operator delete(*buf);
  }

  v17 = v28;
  if (v28 == 1)
  {
    *a2 = v28;
    *a3 = v17;
  }

  if (!(*(*a1 + 8))(a1))
  {
    goto LABEL_29;
  }

  v25 = 0;
  sub_100007E30(buf, "Stack");
  sub_100007E30(__p, "HCILiteLogging");
  (*(*a1 + 72))(a1, buf, __p, &v25);
  if (v27 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v32) < 0)
  {
    operator delete(*buf);
  }

  v18 = _os_feature_enabled_impl();
  if ((*(*a1 + 8))(a1) & 1 | ((v18 & 1) == 0) || v28 == 1)
  {
    if (((*(*a1 + 8))(a1) & v18) == 1)
    {
      v19 = v25;
      *a4 = v25;
      if ((v19 & 1) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_52;
    }

LABEL_29:
    *a4 = 0;
    goto LABEL_30;
  }

  *a4 = 1;
LABEL_52:
  if ((*a3 & 1) == 0)
  {
    *a3 = 1;
  }

LABEL_30:
  if ((*(*a1 + 24))(a1))
  {
    *a2 = 1;
    *a3 = 1;
  }

  sub_100007E30(buf, "HCITraces");
  sub_100007E30(__p, "HCILiveTraces");
  (*(*a1 + 72))(a1, buf, __p, a2);
  if (v27 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v32) < 0)
  {
    operator delete(*buf);
  }

  sub_100007E30(buf, "HCITraces");
  sub_100007E30(__p, "HCIFileTraces");
  (*(*a1 + 72))(a1, buf, __p, a3);
  if (v27 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v32) < 0)
  {
    operator delete(*buf);
  }

  v20 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v21 = "disabled";
    if (*a2)
    {
      v22 = "enabled";
    }

    else
    {
      v22 = "disabled";
    }

    v23 = *a4;
    if (*a3)
    {
      v24 = "enabled";
    }

    else
    {
      v24 = "disabled";
    }

    *buf = 136446722;
    if (v23)
    {
      v21 = "enabled";
    }

    *&buf[4] = v22;
    v30 = 2082;
    v31 = v24;
    v32 = 2082;
    v33 = v21;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "liveTracing:%{public}s fileTracing:%{public}s hciLiteLogging:%{public}s", buf, 0x20u);
  }
}

void sub_1003FE374(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003FE3C8(char a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10040ACA0;
  block[3] = &unk_100AF3580;
  v2 = a1;
  dispatch_async(&_dispatch_main_q, block);
}

uint64_t sub_1003FE464(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Root prefs changed", v4, 2u);
  }

  return (**v1)(v1);
}

void sub_1003FE500(_BYTE *a1, uint64_t a2)
{
  a1[88] = 1;
  memset(&v92, 0, sizeof(v92));
  v89 = 0;
  v90 = 0;
  v91 = 0;
  v86 = 0;
  v87 = 0;
  v88 = 0;
  v3 = sub_10000C798(a1, a2);
  if (!(*(*v3 + 24))(v3, &v89))
  {
    v31 = HIBYTE(v91);
    if (v91 < 0)
    {
      v31 = v90;
    }

    if (v31)
    {
      std::operator+<char>();
      v32 = std::string::append(&v83, "\n");
      v33 = *&v32->__r_.__value_.__l.__data_;
      v85 = v32->__r_.__value_.__r.__words[2];
      *__p = v33;
      v32->__r_.__value_.__l.__size_ = 0;
      v32->__r_.__value_.__r.__words[2] = 0;
      v32->__r_.__value_.__r.__words[0] = 0;
      if (v85 >= 0)
      {
        v34 = __p;
      }

      else
      {
        v34 = __p[0];
      }

      if (v85 >= 0)
      {
        v35 = HIBYTE(v85);
      }

      else
      {
        v35 = __p[1];
      }

      std::string::append(&v92, v34, v35);
      if (SHIBYTE(v85) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v83.__r_.__value_.__l.__data_);
      }
    }
  }

  v4 = [gCBDaemonServer stackController];
  v5 = [v4 controllerInfo];

  v6 = [v5 firmwareVersion];

  if (v6)
  {
    v7 = [gCBDaemonServer stackController];
    v8 = [v7 controllerInfo];
    v9 = [v8 firmwareVersion];
    sub_100007E30(&v82, [v9 UTF8String]);
    v10 = std::string::insert(&v82, 0, "Firmware Version: ");
    v11 = *&v10->__r_.__value_.__l.__data_;
    v83.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
    *&v83.__r_.__value_.__l.__data_ = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    v12 = std::string::append(&v83, "\n");
    v13 = *&v12->__r_.__value_.__l.__data_;
    v85 = v12->__r_.__value_.__r.__words[2];
    *__p = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    if (v85 >= 0)
    {
      v14 = __p;
    }

    else
    {
      v14 = __p[0];
    }

    if (v85 >= 0)
    {
      v15 = HIBYTE(v85);
    }

    else
    {
      v15 = __p[1];
    }

    std::string::append(&v92, v14, v15);
    if (SHIBYTE(v85) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v83.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v82.__r_.__value_.__l.__data_);
    }
  }

  v16 = [v5 chipsetID];

  if (v16)
  {
    v17 = [gCBDaemonServer stackController];
    v18 = [v17 controllerInfo];
    v19 = [v18 chipsetID];
    sub_100007E30(&v83, [v19 UTF8String]);
    v20 = std::string::insert(&v83, 0, "Chipset: ");
    v21 = *&v20->__r_.__value_.__l.__data_;
    v85 = v20->__r_.__value_.__r.__words[2];
    *__p = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    if (v85 >= 0)
    {
      v22 = __p;
    }

    else
    {
      v22 = __p[0];
    }

    if (v85 >= 0)
    {
      v23 = HIBYTE(v85);
    }

    else
    {
      v23 = __p[1];
    }

    std::string::append(&v92, v22, v23);
    if (SHIBYTE(v85) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v83.__r_.__value_.__l.__data_);
    }

    __p[0] = 0;
    __p[1] = 0;
    v85 = 0;
    v26 = sub_10000C798(v24, v25);
    if (!(*(*v26 + 40))(v26, __p))
    {
      v78 = HIBYTE(v85);
      if (v85 < 0)
      {
        v78 = __p[1];
      }

      if (v78)
      {
        std::operator+<char>();
        v79 = (v83.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v83 : v83.__r_.__value_.__r.__words[0];
        v80 = (v83.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v83.__r_.__value_.__r.__words[2]) : v83.__r_.__value_.__l.__size_;
        std::string::append(&v92, v79, v80);
        if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v83.__r_.__value_.__l.__data_);
        }
      }
    }

    std::string::append(&v92, "\n");
    if (SHIBYTE(v85) < 0)
    {
      operator delete(__p[0]);
    }
  }

  if ([v5 hciTransportType])
  {
    v27 = [gCBDaemonServer stackController];
    v28 = [v27 controllerInfo];
    v29 = [v28 hciTransportType];
    if (v29 > 4)
    {
      v30 = "?";
    }

    else
    {
      v30 = off_100AF3640[v29];
    }

    sub_100007E30(&v82, v30);
    v36 = std::string::insert(&v82, 0, "Transport: ");
    v37 = *&v36->__r_.__value_.__l.__data_;
    v83.__r_.__value_.__r.__words[2] = v36->__r_.__value_.__r.__words[2];
    *&v83.__r_.__value_.__l.__data_ = v37;
    v36->__r_.__value_.__l.__size_ = 0;
    v36->__r_.__value_.__r.__words[2] = 0;
    v36->__r_.__value_.__r.__words[0] = 0;
    v38 = std::string::append(&v83, "\n");
    v39 = *&v38->__r_.__value_.__l.__data_;
    v85 = v38->__r_.__value_.__r.__words[2];
    *__p = v39;
    v38->__r_.__value_.__l.__size_ = 0;
    v38->__r_.__value_.__r.__words[2] = 0;
    v38->__r_.__value_.__r.__words[0] = 0;
    if (v85 >= 0)
    {
      v40 = __p;
    }

    else
    {
      v40 = __p[0];
    }

    if (v85 >= 0)
    {
      v41 = HIBYTE(v85);
    }

    else
    {
      v41 = __p[1];
    }

    std::string::append(&v92, v40, v41);
    if (SHIBYTE(v85) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v83.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v82.__r_.__value_.__l.__data_);
    }
  }

  v42 = [v5 hardwareAddressData];

  if (v42)
  {
    v43 = [v5 hardwareAddressData];
    v44 = CUPrintNSDataAddress();
    sub_100007E30(&v82, [v44 UTF8String]);
    v45 = std::string::insert(&v82, 0, "Address: ");
    v46 = *&v45->__r_.__value_.__l.__data_;
    v83.__r_.__value_.__r.__words[2] = v45->__r_.__value_.__r.__words[2];
    *&v83.__r_.__value_.__l.__data_ = v46;
    v45->__r_.__value_.__l.__size_ = 0;
    v45->__r_.__value_.__r.__words[2] = 0;
    v45->__r_.__value_.__r.__words[0] = 0;
    v47 = std::string::append(&v83, "\n");
    v48 = *&v47->__r_.__value_.__l.__data_;
    v85 = v47->__r_.__value_.__r.__words[2];
    *__p = v48;
    v47->__r_.__value_.__l.__size_ = 0;
    v47->__r_.__value_.__r.__words[2] = 0;
    v47->__r_.__value_.__r.__words[0] = 0;
    if (v85 >= 0)
    {
      v49 = __p;
    }

    else
    {
      v49 = __p[0];
    }

    if (v85 >= 0)
    {
      v50 = HIBYTE(v85);
    }

    else
    {
      v50 = __p[1];
    }

    std::string::append(&v92, v49, v50);
    if (SHIBYTE(v85) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v83.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v82.__r_.__value_.__l.__data_);
    }
  }

  v51 = [v5 firmwareName];

  if (v51)
  {
    v52 = [v5 firmwareName];
    sub_100007E30(&v82, [v52 UTF8String]);
    v53 = std::string::insert(&v82, 0, "Firmware Filename: ");
    v54 = *&v53->__r_.__value_.__l.__data_;
    v83.__r_.__value_.__r.__words[2] = v53->__r_.__value_.__r.__words[2];
    *&v83.__r_.__value_.__l.__data_ = v54;
    v53->__r_.__value_.__l.__size_ = 0;
    v53->__r_.__value_.__r.__words[2] = 0;
    v53->__r_.__value_.__r.__words[0] = 0;
    v55 = std::string::append(&v83, "\n");
    v56 = *&v55->__r_.__value_.__l.__data_;
    v85 = v55->__r_.__value_.__r.__words[2];
    *__p = v56;
    v55->__r_.__value_.__l.__size_ = 0;
    v55->__r_.__value_.__r.__words[2] = 0;
    v55->__r_.__value_.__r.__words[0] = 0;
    if (v85 >= 0)
    {
      v57 = __p;
    }

    else
    {
      v57 = __p[0];
    }

    if (v85 >= 0)
    {
      v58 = HIBYTE(v85);
    }

    else
    {
      v58 = __p[1];
    }

    std::string::append(&v92, v57, v58);
    if (SHIBYTE(v85) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v83.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v82.__r_.__value_.__l.__data_);
    }
  }

  sub_100007E30(&v82, CBHostVersion);
  v59 = std::string::insert(&v82, 0, "Bluetooth Host: ");
  v60 = *&v59->__r_.__value_.__l.__data_;
  v83.__r_.__value_.__r.__words[2] = v59->__r_.__value_.__r.__words[2];
  *&v83.__r_.__value_.__l.__data_ = v60;
  v59->__r_.__value_.__l.__size_ = 0;
  v59->__r_.__value_.__r.__words[2] = 0;
  v59->__r_.__value_.__r.__words[0] = 0;
  v61 = std::string::append(&v83, "\n");
  v62 = *&v61->__r_.__value_.__l.__data_;
  v85 = v61->__r_.__value_.__r.__words[2];
  *__p = v62;
  v61->__r_.__value_.__l.__size_ = 0;
  v61->__r_.__value_.__r.__words[2] = 0;
  v61->__r_.__value_.__r.__words[0] = 0;
  if (v85 >= 0)
  {
    v63 = __p;
  }

  else
  {
    v63 = __p[0];
  }

  if (v85 >= 0)
  {
    v64 = HIBYTE(v85);
  }

  else
  {
    v64 = __p[1];
  }

  v65 = std::string::append(&v92, v63, v64);
  if (SHIBYTE(v85) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v83.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v82.__r_.__value_.__l.__data_);
  }

  v67 = sub_10000C798(v65, v66);
  if (!(*(*v67 + 32))(v67, &v86, 1))
  {
    v73 = HIBYTE(v88);
    if (v88 < 0)
    {
      v73 = v87;
    }

    if (v73)
    {
      std::operator+<char>();
      v74 = std::string::append(&v83, "\n");
      v75 = *&v74->__r_.__value_.__l.__data_;
      v85 = v74->__r_.__value_.__r.__words[2];
      *__p = v75;
      v74->__r_.__value_.__l.__size_ = 0;
      v74->__r_.__value_.__r.__words[2] = 0;
      v74->__r_.__value_.__r.__words[0] = 0;
      if (v85 >= 0)
      {
        v76 = __p;
      }

      else
      {
        v76 = __p[0];
      }

      if (v85 >= 0)
      {
        v77 = HIBYTE(v85);
      }

      else
      {
        v77 = __p[1];
      }

      std::string::append(&v92, v76, v77);
      if (SHIBYTE(v85) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v83.__r_.__value_.__l.__data_);
      }
    }
  }

  v82.__r_.__value_.__s.__data_[0] = 0;
  sub_100007E30(__p, "Stack");
  sub_100007E30(&v83, "HCILiteLogging");
  (*(*a1 + 72))(a1, __p, &v83, &v82);
  if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v83.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v85) < 0)
  {
    operator delete(__p[0]);
  }

  v68 = _os_feature_enabled_impl();
  if (!((*(*a1 + 8))(a1) & 1 | ((v68 & 1) == 0)) || ((*(*a1 + 8))(a1) & v68) == 1 && v82.__r_.__value_.__s.__data_[0] == 1)
  {
    std::string::append(&v92, "HCILite Logging Mode\n");
  }

  v81 = 0;
  v69 = sub_10000E92C();
  sub_100007E30(__p, "LE");
  sub_100007E30(&v83, "EnableXPCLog");
  v70 = (*(*v69 + 72))(v69, __p, &v83, &v81);
  if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v83.__r_.__value_.__l.__data_);
  }

  if ((SHIBYTE(v85) & 0x80000000) == 0)
  {
    if (!v70)
    {
      goto LABEL_114;
    }

    goto LABEL_113;
  }

  operator delete(__p[0]);
  if (v70)
  {
LABEL_113:
    a1[240] = 1;
  }

LABEL_114:
  if ((v92.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v71 = &v92;
  }

  else
  {
    v71 = v92.__r_.__value_.__r.__words[0];
  }

  sub_1001C40E0(v71);
  sub_10040DAF8(a1 + 8);
  sub_10040F628((a1 + 72));
  (*(*a1 + 496))(a1, 1);
  if ((*(*a1 + 8))(a1))
  {
    sub_1003FF2E8(a1, v72);
  }

  (*(*a1 + 528))(a1);
  (*(*a1 + 832))(a1);

  if (SHIBYTE(v88) < 0)
  {
    operator delete(v86);
  }

  if (SHIBYTE(v91) < 0)
  {
    operator delete(v89);
  }

  if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v92.__r_.__value_.__l.__data_);
  }
}

void sub_1003FF028(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (*(v42 - 65) < 0)
  {
    operator delete(*v41);
  }

  _Unwind_Resume(a1);
}

void sub_1003FF2E8(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000C798(a1, a2);
  if (!(*(*v3 + 144))(v3))
  {
    return;
  }

  memset(&v42, 0, sizeof(v42));
  *(a1 + 96) = 5;
  sub_100007E30(&buf, "Diversity");
  sub_100007E30(&__p, "DiversityMode");
  *(a1 + 93) = (*(*a1 + 56))(a1, &buf, &__p, &v42);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  if (*(a1 + 93) == 1)
  {
    if (!std::string::compare(&v42, "AUTO"))
    {
      *(a1 + 96) = 5;
      v4 = qword_100BCE8D8;
      if (!os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_34;
      }

      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      v5 = "Diversity mode override: Auto";
    }

    else if (!std::string::compare(&v42, "AUTO_NO_COEX"))
    {
      *(a1 + 96) = 4;
      v4 = qword_100BCE8D8;
      if (!os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_34;
      }

      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      v5 = "Diversity mode override: Auto with no cellular coex support";
    }

    else if (!std::string::compare(&v42, "DISABLED"))
    {
      *(a1 + 96) = 3;
      v4 = qword_100BCE8D8;
      if (!os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_34;
      }

      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      v5 = "Diversity mode override: Disabled";
    }

    else if (!std::string::compare(&v42, "FORCE_ANT0"))
    {
      *(a1 + 96) = 0;
      v4 = qword_100BCE8D8;
      if (!os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_34;
      }

      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      v5 = "Diversity mode override: Force Antenna 0";
    }

    else if (!std::string::compare(&v42, "FORCE_ANT1"))
    {
      *(a1 + 96) = 1;
      v4 = qword_100BCE8D8;
      if (!os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_34;
      }

      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      v5 = "Diversity mode override: Force Antenna 1";
    }

    else if (!std::string::compare(&v42, "MRC_BF"))
    {
      *(a1 + 96) = 6;
      v4 = qword_100BCE8D8;
      if (!os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_34;
      }

      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      v5 = "Diversity/beamforming mode override: MRC diversity with tx beamforming";
    }

    else if (!std::string::compare(&v42, "HYBRID_BF"))
    {
      *(a1 + 96) = 7;
      v4 = qword_100BCE8D8;
      if (!os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_34;
      }

      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      v5 = "Diversity/beamforming mode override: Hybrid diversity with tx beamforming";
    }

    else if (!std::string::compare(&v42, "MRC_DISABLE_BF"))
    {
      *(a1 + 96) = 8;
      v4 = qword_100BCE8D8;
      if (!os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_34;
      }

      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      v5 = "Diversity/beamforming mode override: MRC diversity without tx beamforming";
    }

    else
    {
      *(a1 + 93) = 0;
      v4 = qword_100BCE8D8;
      if (!os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_34;
      }

      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      v5 = "Warning: Diversity mode override: Invalid.  Using default diversity mode.";
    }

    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, v5, &buf, 2u);
  }

LABEL_34:
  memset(&__p, 0, sizeof(__p));
  *(a1 + 104) = 0;
  sub_100007E30(&buf, "Diversity");
  sub_100007E30(&v40, "DiversityLogMode");
  v6 = (*(*a1 + 56))(a1, &buf, &v40, &__p);
  *(a1 + 100) = v6;
  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  if (*(a1 + 100) == 1)
  {
    if (!std::string::compare(&__p, "LOG_DENIALS"))
    {
      *(a1 + 104) = 3;
      v8 = qword_100BCE8D8;
      v6 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
      if (!v6)
      {
        goto LABEL_52;
      }

      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      v9 = "Diversity log mode override: Log Denials";
      goto LABEL_51;
    }

    if (!std::string::compare(&__p, "LOG_CHANNELS"))
    {
      *(a1 + 104) = 4;
      v8 = qword_100BCE8D8;
      v6 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
      if (!v6)
      {
        goto LABEL_52;
      }

      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      v9 = "Diversity log mode override: Log Channels";
      goto LABEL_51;
    }

    if (!std::string::compare(&__p, "DISABLED"))
    {
      *(a1 + 104) = 0;
      v8 = qword_100BCE8D8;
      v6 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
      if (!v6)
      {
        goto LABEL_52;
      }

      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      v9 = "Diversity log mode override: Log Disabled";
      goto LABEL_51;
    }

    v6 = std::string::compare(&__p, "LOG_DENIALS_3ANT");
    if (v6)
    {
      *(a1 + 100) = 0;
      v8 = qword_100BCE8D8;
      v6 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
      if (!v6)
      {
        goto LABEL_52;
      }

      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      v9 = "Warning: Diversity log mode override: Invalid.  Override disabled.";
LABEL_51:
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v9, &buf, 2u);
      goto LABEL_52;
    }

    *(a1 + 104) = 5;
  }

LABEL_52:
  v10 = sub_10000C798(v6, v7);
  v11 = (*(*v10 + 152))(v10);
  if (!v11)
  {
    goto LABEL_69;
  }

  memset(&buf, 0, sizeof(buf));
  *(a1 + 228) = 1;
  sub_100007E30(&v40, "Diversity");
  sub_100007E30(v38, "DiversityAntennaConfig");
  v11 = (*(*a1 + 56))(a1, &v40, v38, &buf);
  *(a1 + 226) = v11;
  if (v39 < 0)
  {
    operator delete(v38[0]);
  }

  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  if (*(a1 + 226) == 1)
  {
    if (!std::string::compare(&buf, "DIVERSITY_ANT1"))
    {
      *(a1 + 228) = 1;
      v13 = qword_100BCE8D8;
      v11 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
      if (!v11)
      {
        goto LABEL_67;
      }

      LOWORD(v40.__r_.__value_.__l.__data_) = 0;
      v14 = "Diversity antenna configuration override: Diversity Antenna 1";
    }

    else if (!std::string::compare(&buf, "DIVERSITY_ANT2"))
    {
      *(a1 + 228) = 2;
      v13 = qword_100BCE8D8;
      v11 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
      if (!v11)
      {
        goto LABEL_67;
      }

      LOWORD(v40.__r_.__value_.__l.__data_) = 0;
      v14 = "Diversity antenna configuration override: Diversity Antenna 2";
    }

    else
    {
      *(a1 + 226) = 0;
      v13 = qword_100BCE8D8;
      v11 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
      if (!v11)
      {
        goto LABEL_67;
      }

      LOWORD(v40.__r_.__value_.__l.__data_) = 0;
      v14 = "Warning: Diversity antenna configuration override: Invalid.  Using default diversity antenna.";
    }

    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v14, &v40, 2u);
  }

LABEL_67:
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

LABEL_69:
  v15 = sub_10000C798(v11, v12);
  v16 = (*(*v15 + 160))(v15);
  if (v16)
  {
    memset(&buf, 0, sizeof(buf));
    v37 = 0;
    sub_100007E30(&v40, "Diversity");
    sub_100007E30(v38, "Diversity2GThresholOverride");
    *(a1 + 172) = (*(*a1 + 56))(a1, &v40, v38, &buf);
    if (v39 < 0)
    {
      operator delete(v38[0]);
    }

    if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v40.__r_.__value_.__l.__data_);
    }

    if (*(a1 + 172) == 1)
    {
      sub_100007E30(&v40, "Diversity");
      sub_100007E30(v38, "Diversity2GRSSIThreshold");
      v18 = (*(*a1 + 88))(a1, &v40, v38, &v37);
      if (v39 < 0)
      {
        operator delete(v38[0]);
      }

      if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v40.__r_.__value_.__l.__data_);
      }

      if (v18)
      {
        *(a1 + 173) = v37;
      }
    }

    sub_100007E30(&v40, "Diversity");
    sub_100007E30(v38, "Diversity5GThresholdOverride");
    *(a1 + 174) = (*(*a1 + 56))(a1, &v40, v38, &buf);
    if (v39 < 0)
    {
      operator delete(v38[0]);
    }

    if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v40.__r_.__value_.__l.__data_);
    }

    if (*(a1 + 174) == 1)
    {
      sub_100007E30(&v40, "Diversity");
      sub_100007E30(v38, "Diversity5GRSSIThreshold");
      v19 = (*(*a1 + 88))(a1, &v40, v38, &v37);
      if (v39 < 0)
      {
        operator delete(v38[0]);
      }

      if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v40.__r_.__value_.__l.__data_);
      }

      if (v19)
      {
        *(a1 + 175) = v37;
      }
    }

    sub_100007E30(&v40, "Diversity");
    sub_100007E30(v38, "EnableAntennaSwitchVSEConfig");
    v16 = (*(*a1 + 88))(a1, &v40, v38, &v37);
    v20 = v16;
    if (v39 < 0)
    {
      operator delete(v38[0]);
    }

    if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v40.__r_.__value_.__l.__data_);
    }

    if (v20)
    {
      *(a1 + 176) = v37;
    }

    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }
  }

  v21 = sub_10000C798(v16, v17);
  if ((*(*v21 + 168))(v21))
  {
    memset(&buf, 0, sizeof(buf));
    *(a1 + 236) = 0;
    sub_100007E30(&v40, "Diversity");
    sub_100007E30(v38, "BeamformingLogMode");
    *(a1 + 232) = (*(*a1 + 56))(a1, &v40, v38, &buf);
    if (v39 < 0)
    {
      operator delete(v38[0]);
    }

    if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v40.__r_.__value_.__l.__data_);
    }

    if (*(a1 + 232) != 1)
    {
      goto LABEL_115;
    }

    if (!std::string::compare(&buf, "BF_MRC_LOG_ENABLED"))
    {
      *(a1 + 236) = 1;
      v22 = qword_100BCE8D8;
      if (!os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_115;
      }

      LOWORD(v40.__r_.__value_.__l.__data_) = 0;
      v23 = "Beamforming log mode override: Log enabled";
    }

    else if (!std::string::compare(&buf, "BF_MRC_LOG_DISABLED"))
    {
      *(a1 + 236) = 0;
      v22 = qword_100BCE8D8;
      if (!os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_115;
      }

      LOWORD(v40.__r_.__value_.__l.__data_) = 0;
      v23 = "Beamforming log mode override: Log disabled";
    }

    else
    {
      *(a1 + 232) = 0;
      v22 = qword_100BCE8D8;
      if (!os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_115;
      }

      LOWORD(v40.__r_.__value_.__l.__data_) = 0;
      v23 = "Warning: Beamforming log mode override: Invalid. VSE Logging disabled.";
    }

    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, v23, &v40, 2u);
LABEL_115:
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }
  }

  *(a1 + 108) = 0;
  sub_100007E30(&buf, "Diversity");
  sub_100007E30(&v40, "DiversityPeripheralOverride");
  (*(*a1 + 72))(a1, &buf, &v40, a1 + 108);
  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  if (*(a1 + 108) == 1)
  {
    v24 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Diversity peripheral override: Enabled.  Diversity can now be enabled when role is peripheral.", &buf, 2u);
    }
  }

  *(a1 + 109) = 0;
  sub_100007E30(&buf, "Diversity");
  sub_100007E30(&v40, "DiversityCoexLogEnabled");
  (*(*a1 + 72))(a1, &buf, &v40, a1 + 109);
  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  if (*(a1 + 109) == 1)
  {
    v25 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Diversity coex log: Enabled", &buf, 2u);
    }
  }

  memset(&v40, 0, sizeof(v40));
  *(a1 + 112) = 3;
  sub_100007E30(&buf, "Diversity");
  sub_100007E30(v38, "DiversityCoexCellOverride");
  *(a1 + 110) = (*(*a1 + 56))(a1, &buf, v38, &v40);
  if (v39 < 0)
  {
    operator delete(v38[0]);
  }

  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  if (*(a1 + 110) == 1)
  {
    if (!std::string::compare(&v40, "CELL_OFF"))
    {
      *(a1 + 112) = 0;
      v26 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.__r_.__value_.__l.__data_) = 0;
        v27 = "Diversity coex cell override: Cell off";
        goto LABEL_151;
      }
    }

    else if (!std::string::compare(&v40, "CELL_ON_ANT_0"))
    {
      *(a1 + 112) = 1;
      v26 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.__r_.__value_.__l.__data_) = 0;
        v27 = "Diversity coex cell override: Cell on antenna 0";
        goto LABEL_151;
      }
    }

    else if (!std::string::compare(&v40, "CELL_ON_ANT_1"))
    {
      *(a1 + 112) = 2;
      v26 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.__r_.__value_.__l.__data_) = 0;
        v27 = "Diversity coex cell override: Cell on antenna 1";
        goto LABEL_151;
      }
    }

    else if (!std::string::compare(&v40, "DISABLED"))
    {
      *(a1 + 112) = 3;
      v26 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.__r_.__value_.__l.__data_) = 0;
        v27 = "Diversity coex cell override: Disabled";
        goto LABEL_151;
      }
    }

    else
    {
      *(a1 + 110) = 0;
      v26 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.__r_.__value_.__l.__data_) = 0;
        v27 = "Warning: Diversity coex cell override: Invalid.  Override disabled.";
LABEL_151:
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, v27, &buf, 2u);
      }
    }
  }

  sub_10040C0D0(a1, "DiversityCoexAFHMapOverride", (a1 + 116), a1 + 117, "AFH map");
  sub_10040C0D0(a1, "DiversityCoexHAAMapC0B0Override", (a1 + 128), a1 + 129, "HAA map C0B0");
  sub_10040C0D0(a1, "DiversityCoexHAAMapC0B1Override", (a1 + 139), a1 + 140, "HAA map C0B1");
  sub_10040C0D0(a1, "DiversityCoexHAAMapC1B0Override", (a1 + 150), a1 + 151, "HAA map C1B0");
  sub_10040C0D0(a1, "DiversityCoexHAAMapC1B1Override", (a1 + 161), a1 + 162, "HAA map C1B1");
  v30 = sub_10000C7D0(v28, v29);
  v31 = (*(*v30 + 920))(v30, *(a1 + 109), *(a1 + 112), *(a1 + 116), a1 + 117);
  if (v31)
  {
    v31 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR);
    if (v31)
    {
      sub_100828C74();
    }
  }

  if (*(a1 + 128) == 1)
  {
    if (*(a1 + 139) == 1 && *(a1 + 150) == 1)
    {
      v33 = *(a1 + 161);
      *(a1 + 127) = v33;
      if (v33 == 1)
      {
        LOWORD(buf.__r_.__value_.__l.__data_) = 0;
        *(buf.__r_.__value_.__r.__words + 2) = *(a1 + 129);
        WORD1(buf.__r_.__value_.__r.__words[1]) = *(a1 + 137);
        WORD2(buf.__r_.__value_.__r.__words[1]) = 256;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = *(a1 + 140);
        HIWORD(buf.__r_.__value_.__r.__words[2]) = *(a1 + 148);
        v44 = 512;
        v45 = *(a1 + 151);
        v46 = *(a1 + 159);
        v47 = 768;
        v34 = *(a1 + 162);
        v49 = *(a1 + 170);
        v48 = v34;
        v35 = sub_10000C7D0(v31, v32);
        if ((*(*v35 + 912))(v35, 4, &buf) && os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
        {
          sub_100828CB0();
        }

        goto LABEL_169;
      }
    }

    else
    {
      *(a1 + 127) = 0;
    }

LABEL_167:
    v36 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Warning: Diversity coex HAA maps ignored: all 4 HAA maps must be set", &buf, 2u);
    }

    goto LABEL_169;
  }

  *(a1 + 127) = 0;
  if ((*(a1 + 139) & 1) != 0 || (*(a1 + 150) & 1) != 0 || *(a1 + 161) == 1)
  {
    goto LABEL_167;
  }

LABEL_169:
  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }
}

void sub_10040045C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004005E8(uint64_t a1)
{
  v2 = MGCopyAnswer();
  v3 = v2;
  if (v2)
  {
    v4 = CFEqual(v2, @"VendorNonUI") != 0;
    if (CFEqual(v3, @"Vendor"))
    {
      v5 = 1;
      goto LABEL_6;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
LABEL_6:
  *(a1 + 360) = v5;
  v6 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138413058;
    v8 = v3;
    v9 = 2112;
    v10 = @"Vendor";
    v11 = 1024;
    v12 = v4;
    v13 = 1024;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "check Vendor build %@ %@ %d %d", &v7, 0x22u);
  }

  if (v3)
  {
    CFRelease(v3);
  }
}

uint64_t sub_10040074C(NSObject **a1)
{
  *(a1 + 252) = 0;
  v2 = a1 + 252;
  sub_100007E30(buf, "ExposureNotification");
  sub_100007E30(__p, "insecureDatabasePath");
  ((*a1)[9].isa)(a1, buf, __p, v2);
  if (v23 < 0)
  {
    operator delete(__p[0]);
  }

  if (v26 < 0)
  {
    operator delete(*buf);
  }

  v3 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
  {
    v4 = *v2;
    *buf = 67109120;
    *&buf[4] = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "fInsecureDatabasePath is %d", buf, 8u);
  }

  *(a1 + 256) = 0;
  sub_100007E30(buf, "ExposureNotification");
  sub_100007E30(__p, "RequireEntitlementAndProfileOnInternalForLogging");
  ((*a1)[9].isa)(a1, buf, __p, a1 + 32);
  if (v23 < 0)
  {
    operator delete(__p[0]);
  }

  if (v26 < 0)
  {
    operator delete(*buf);
  }

  v5 = ((*a1)[26].isa)(a1);
  *(a1 + 253) = v5;
  v6 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 256);
    v8 = *v2;
    *buf = 67109632;
    *&buf[4] = v5;
    *&buf[8] = 1024;
    *&buf[10] = v7;
    LOWORD(v25) = 1024;
    *(&v25 + 2) = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "loading fENAppHasLoggingEntitlement:%d fRequireENLoggingProfileOnInternal:%d fInsecureDatabasePath:%d", buf, 0x14u);
  }

  *(a1 + 89) = CFPrefs_GetInt64() != 0;
  v21 = 0;
  sub_100007E30(buf, "HCI");
  sub_100007E30(__p, "lmpRouting");
  ((*a1)[9].isa)(a1, buf, __p, &v21);
  if (v23 < 0)
  {
    operator delete(__p[0]);
  }

  if (v26 < 0)
  {
    operator delete(*buf);
  }

  if (((*a1)[1].isa)(a1) & 1) != 0 || (((*a1)[3].isa)(a1) & 1) != 0 || (v21)
  {
    v9 = 1;
  }

  else
  {
    v9 = *(a1 + 89);
  }

  *(a1 + 241) = v9 & 1;
  v10 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
  {
    v11 = "disabled";
    if (v9)
    {
      v11 = "enabled";
    }

    v12 = "";
    if (*(a1 + 89))
    {
      v12 = " [cloud]";
    }

    *buf = 136315394;
    *&buf[4] = v11;
    *&buf[12] = 2080;
    v25 = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "LMP logging is %s%s", buf, 0x16u);
  }

  v13 = a1[3];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100400D04;
  block[3] = &unk_100ADF8F8;
  block[4] = a1;
  dispatch_async(v13, block);
  result = ((*a1)[62].isa)(a1, 0);
  if (*(a1 + 88) == 1)
  {
    sub_10040DAF8(a1 + 8);
    sub_10040F628((a1 + 9));
    if (((*a1)[1].isa)(a1))
    {
      sub_1003FF2E8(a1, v15);
    }

    ((*a1)[66].isa)(a1);
    ((*a1)[104].isa)(a1);
    v16 = sub_100017E6C();
    v17 = (*(*v16 + 48))(v16);
    v19 = sub_1000154A8(v17, v18);
    return (*(*v19 + 144))(v19);
  }

  return result;
}

void sub_100400CB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void sub_100400D04(uint64_t a1)
{
  v1 = *(a1 + 32);
  v1[254] = (*(*v1 + 240))(v1);
  v1[255] = (*(*v1 + 248))(v1);
  (*(*v1 + 256))(v1);
  sub_100404A30(v1);
  sub_100007E30(buf, "ControllerStatistics");
  sub_100007E30(&__p, "ControllerStatisticsEnabled");
  (*(*v1 + 72))(v1, buf, &__p, v1 + 201);
  if (SHIBYTE(v132) < 0)
  {
    operator delete(__p);
  }

  if ((v135[1] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  memset(v129, 0, 14);
  v127 = 8;
  v128 = 1023;
  v125 = 0;
  v126 = 100000;
  v124 = 0;
  sub_100007E30(buf, "AccessoryLogging");
  sub_100007E30(&__p, "TimeStampPeriodically");
  (*(*v1 + 72))(v1, buf, &__p, v129);
  if (SHIBYTE(v132) < 0)
  {
    operator delete(__p);
  }

  if ((v135[1] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  sub_100007E30(buf, "AccessoryLogging");
  sub_100007E30(&__p, "DisableDiagnosticsPeriodically");
  (*(*v1 + 72))(v1, buf, &__p, v129 + 1);
  if (SHIBYTE(v132) < 0)
  {
    operator delete(__p);
  }

  if ((v135[1] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  sub_100007E30(buf, "AccessoryLogging");
  sub_100007E30(&__p, "CrashLoggingDisabled");
  (*(*v1 + 72))(v1, buf, &__p, v129 + 2);
  if (SHIBYTE(v132) < 0)
  {
    operator delete(__p);
  }

  if ((v135[1] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  sub_100007E30(buf, "AccessoryLogging");
  sub_100007E30(&__p, "AccessoryW1LogModule");
  (*(*v1 + 88))(v1, buf, &__p, &v128);
  if (SHIBYTE(v132) < 0)
  {
    operator delete(__p);
  }

  if ((v135[1] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  sub_100007E30(buf, "AccessoryLogging");
  sub_100007E30(&__p, "AccessoryW1LogLevel");
  (*(*v1 + 88))(v1, buf, &__p, &v127);
  if (SHIBYTE(v132) < 0)
  {
    operator delete(__p);
  }

  if ((v135[1] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  sub_100007E30(buf, "AccessoryLogging");
  sub_100007E30(&__p, "AccessoryLogPrintInterval");
  (*(*v1 + 88))(v1, buf, &__p, &v126);
  if (SHIBYTE(v132) < 0)
  {
    operator delete(__p);
  }

  if ((v135[1] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  sub_100007E30(buf, "AccessoryLogging");
  sub_100007E30(&__p, "AccessoryLogPowerLoggingInterval");
  (*(*v1 + 88))(v1, buf, &__p, &v125);
  if (SHIBYTE(v132) < 0)
  {
    operator delete(__p);
  }

  if ((v135[1] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  sub_100007E30(buf, "AccessoryLogging");
  sub_100007E30(&__p, "TriggerAccessoryW1AWD");
  (*(*v1 + 72))(v1, buf, &__p, &v124 + 1);
  if (SHIBYTE(v132) < 0)
  {
    operator delete(__p);
  }

  if ((v135[1] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  sub_100007E30(buf, "AccessoryLogging");
  sub_100007E30(&__p, "DumpAccessoryW1TraceLog");
  (*(*v1 + 72))(v1, buf, &__p, &v124);
  if (SHIBYTE(v132) < 0)
  {
    operator delete(__p);
  }

  if ((v135[1] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  *(v129 + 3) = v128;
  BYTE5(v129[0]) = v127;
  *(v129 + 6) = v126;
  *(&v129[1] + 2) = v125;
  if (qword_100B51308 != -1)
  {
    sub_100828CEC();
  }

  sub_1004B3CFC(qword_100B51300, v129[0], LODWORD(v129[1]) | (WORD2(v129[1]) << 32));
  v122 = 0;
  v123 = 255;
  v121 = 2;
  v127 = 2;
  v128 = 255;
  v120 = 0;
  v119 = 0;
  v118 = 0;
  v117 = 0;
  v116 = 0;
  __p = 0;
  v131 = 0;
  v132 = 0;
  sub_100007E30(buf, "AccessoryLogging");
  sub_100007E30(&v113, "AccessoryLogDevice");
  (*(*v1 + 88))(v1, buf, &v113, &v123);
  if (SHIBYTE(v115) < 0)
  {
    operator delete(v113);
  }

  if ((v135[1] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  sub_100007E30(buf, "AccessoryLogging");
  sub_100007E30(&v113, "AccessoryLog2Module");
  (*(*v1 + 88))(v1, buf, &v113, &v128);
  if (SHIBYTE(v115) < 0)
  {
    operator delete(v113);
  }

  if ((v135[1] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  sub_100007E30(buf, "AccessoryLogging");
  sub_100007E30(&v113, "AccessoryLogSubModule");
  (*(*v1 + 88))(v1, buf, &v113, &v122);
  if (SHIBYTE(v115) < 0)
  {
    operator delete(v113);
  }

  if ((v135[1] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  sub_100007E30(buf, "AccessoryLogging");
  sub_100007E30(&v113, "AccessoryLogType");
  (*(*v1 + 88))(v1, buf, &v113, &v121);
  if (SHIBYTE(v115) < 0)
  {
    operator delete(v113);
  }

  if ((v135[1] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  sub_100007E30(buf, "AccessoryLogging");
  sub_100007E30(&v113, "AccessoryLog2Level");
  (*(*v1 + 88))(v1, buf, &v113, &v127);
  if (SHIBYTE(v115) < 0)
  {
    operator delete(v113);
  }

  if ((v135[1] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  sub_100007E30(buf, "AccessoryLogging");
  sub_100007E30(&v113, "AccessoryLogStart");
  (*(*v1 + 72))(v1, buf, &v113, &v120 + 1);
  if (SHIBYTE(v115) < 0)
  {
    operator delete(v113);
  }

  if ((v135[1] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  sub_100007E30(buf, "AccessoryLogging");
  sub_100007E30(&v113, "AccessoryLogStop");
  (*(*v1 + 72))(v1, buf, &v113, &v120);
  if (SHIBYTE(v115) < 0)
  {
    operator delete(v113);
  }

  if ((v135[1] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  sub_100007E30(buf, "AccessoryLogging");
  sub_100007E30(&v113, "AccessoryLogConfigSet");
  (*(*v1 + 72))(v1, buf, &v113, &v119 + 1);
  if (SHIBYTE(v115) < 0)
  {
    operator delete(v113);
  }

  if ((v135[1] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  sub_100007E30(buf, "AccessoryLogging");
  sub_100007E30(&v113, "AccessoryLogConfigGet");
  (*(*v1 + 72))(v1, buf, &v113, &v119);
  if (SHIBYTE(v115) < 0)
  {
    operator delete(v113);
  }

  if ((v135[1] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  sub_100007E30(buf, "AccessoryLogging");
  sub_100007E30(&v113, "AccessoryLogDump");
  (*(*v1 + 72))(v1, buf, &v113, &v118 + 1);
  if (SHIBYTE(v115) < 0)
  {
    operator delete(v113);
  }

  if ((v135[1] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  sub_100007E30(buf, "AccessoryLogging");
  sub_100007E30(&v113, "AccessoryLogDismiss");
  (*(*v1 + 72))(v1, buf, &v113, &v118);
  if (SHIBYTE(v115) < 0)
  {
    operator delete(v113);
  }

  if ((v135[1] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  sub_100007E30(buf, "AccessoryLogging");
  sub_100007E30(&v113, "AccessoryVSCCaptureTraceHistory");
  (*(*v1 + 72))(v1, buf, &v113, &v117 + 1);
  if (SHIBYTE(v115) < 0)
  {
    operator delete(v113);
  }

  if ((v135[1] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  sub_100007E30(buf, "AccessoryLogging");
  sub_100007E30(&v113, "AccessoryCoredumpEnable");
  (*(*v1 + 72))(v1, buf, &v113, &v117);
  if (SHIBYTE(v115) < 0)
  {
    operator delete(v113);
  }

  if ((v135[1] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  sub_100007E30(buf, "AccessoryLogging");
  sub_100007E30(&v113, "AccessoryCoredumpAACP");
  (*(*v1 + 72))(v1, buf, &v113, &v116 + 1);
  if (SHIBYTE(v115) < 0)
  {
    operator delete(v113);
  }

  if ((v135[1] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  sub_100007E30(buf, "AccessoryLogging");
  sub_100007E30(&v113, "AccessoryCoredumpDisable");
  (*(*v1 + 72))(v1, buf, &v113, &v116);
  if (SHIBYTE(v115) < 0)
  {
    operator delete(v113);
  }

  if ((v135[1] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  sub_100007E30(buf, "AccessoryLogging");
  sub_100007E30(&v113, "AccessoryLogCommand");
  (*(*v1 + 56))(v1, buf, &v113, &__p);
  if (SHIBYTE(v115) < 0)
  {
    operator delete(v113);
  }

  if ((v135[1] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  v2 = v123;
  v3 = v128;
  v5 = v121;
  v4 = v122;
  v6 = v127;
  if (qword_100B51308 != -1)
  {
    sub_100828CEC();
  }

  sub_1004B3E20(qword_100B51300, (v5 << 24) | (v6 << 32) | (v4 << 16) | (v3 << 8) | v2);
  if (v124 == 1)
  {
    if (qword_100B51308 != -1)
    {
      sub_100828CEC();
    }

    sub_1004B442C(qword_100B51300, 0, 0);
  }

  if (HIBYTE(v124) == 1)
  {
    if (qword_100B51308 != -1)
    {
      sub_100828CEC();
    }

    sub_1004B3F1C();
  }

  if (HIBYTE(v120) == 1)
  {
    if (qword_100B51308 != -1)
    {
      sub_100828CEC();
    }

    sub_1004B22F4(qword_100B51300, 0, 1, 0);
  }

  if (v120 == 1)
  {
    if (qword_100B51308 != -1)
    {
      sub_100828CEC();
    }

    sub_1004B22F4(qword_100B51300, 0, 2, 0);
  }

  if (HIBYTE(v119) == 1)
  {
    if (qword_100B51308 != -1)
    {
      sub_100828CEC();
    }

    sub_1004B22F4(qword_100B51300, 0, 3, 0);
  }

  if (v119 == 1)
  {
    if (qword_100B51308 != -1)
    {
      sub_100828CEC();
    }

    sub_1004B22F4(qword_100B51300, 0, 4, 0);
  }

  if (HIBYTE(v118) == 1)
  {
    if (qword_100B51308 != -1)
    {
      sub_100828CEC();
    }

    sub_1004B22F4(qword_100B51300, 0, 5, 0);
  }

  if (v118 == 1)
  {
    if (qword_100B51308 != -1)
    {
      sub_100828CEC();
    }

    sub_1004B22F4(qword_100B51300, 0, 6, 0);
  }

  if (HIBYTE(v117) == 1)
  {
    if (qword_100B51308 != -1)
    {
      sub_100828CEC();
    }

    sub_1004B22F4(qword_100B51300, 0, 7, 0);
  }

  if ((*(*v1 + 8))(v1))
  {
    if (v116 == 1)
    {
      if (qword_100B51308 != -1)
      {
        sub_100828CEC();
      }

      sub_1004B22F4(qword_100B51300, 0, 18, 0);
      sub_100007E30(buf, "AccessoryLogging");
      sub_100007E30(&v113, "AccessoryCoredumpDisable");
      (*(*v1 + 80))(v1, buf, &v113, 0);
      if (SHIBYTE(v115) < 0)
      {
        operator delete(v113);
      }

      if ((v135[1] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }

    else
    {
      if (v117 == 1)
      {
        if (qword_100B51308 != -1)
        {
          sub_100828CEC();
        }

        v7 = 16;
      }

      else
      {
        if (HIBYTE(v116) != 1)
        {
          goto LABEL_162;
        }

        if (qword_100B51308 != -1)
        {
          sub_100828CEC();
        }

        v7 = 17;
      }

      sub_1004B22F4(qword_100B51300, 0, v7, 0);
    }
  }

LABEL_162:
  v8 = HIBYTE(v132);
  if (v132 < 0)
  {
    v8 = v131;
  }

  if (v8)
  {
    sub_100007E30(buf, "AccessoryLogging");
    sub_100007E30(&v113, "AccessoryLogCommand");
    sub_100007E30(v111, "");
    (*(*v1 + 64))(v1, buf, &v113, v111);
    if (v112 < 0)
    {
      operator delete(v111[0]);
    }

    if (SHIBYTE(v115) < 0)
    {
      operator delete(v113);
    }

    if ((v135[1] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    if (v132 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    v10 = [NSString stringWithUTF8String:p_p];
    v11 = [NSCharacterSet characterSetWithCharactersInString:@", "];
    v12 = [v10 componentsSeparatedByCharactersInSet:v11];
    if ([v12 count] == 2)
    {
      v13 = [v12 objectAtIndexedSubscript:0];
      v14 = [v13 intValue];

      v15 = [v12 objectAtIndexedSubscript:1];
      v16 = [v15 intValue];

      if (qword_100B51308 != -1)
      {
        sub_100828CEC();
      }

      sub_1004B22F4(qword_100B51300, 0, v14, v16);
    }
  }

  v110 = 0;
  sub_100007E30(buf, "AccessoryLogging");
  sub_100007E30(&v113, "BBFCTimeLogging");
  v17 = (*(*v1 + 72))(v1, buf, &v113, &v110);
  if (SHIBYTE(v115) < 0)
  {
    operator delete(v113);
  }

  if ((v135[1] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  v19 = sub_1004329F8(v17, v18);
  v20 = (*(*v19 + 16))(v19, v110);
  v1[220] = 0;
  v22 = sub_10000C798(v20, v21);
  if ((*(*v22 + 416))(v22))
  {
    sub_100007E30(buf, "A2DP");
    sub_100007E30(&v113, "EnableUltraHighPriorityVSC");
    (*(*v1 + 72))(v1, buf, &v113, v1 + 220);
    if (SHIBYTE(v115) < 0)
    {
      operator delete(v113);
    }

    if ((v135[1] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }
  }

  if ((*(*v1 + 8))(v1))
  {
    v1[90] = 0;
    sub_100007E30(buf, "Audio");
    sub_100007E30(&v113, "EnableAudioLogging");
    (*(*v1 + 72))(v1, buf, &v113, v1 + 90);
    if (SHIBYTE(v115) < 0)
    {
      operator delete(v113);
    }

    if ((v135[1] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    v23 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      if (v1[90])
      {
        v24 = "enabled";
      }

      else
      {
        v24 = "disabled";
      }

      *buf = 136446210;
      *&buf[4] = v24;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Audio Logging %{public}s", buf, 0xCu);
    }

    v1[91] = 0;
    sub_100007E30(buf, "Audio");
    sub_100007E30(&v113, "DisableEnhancedAudioLogging");
    (*(*v1 + 72))(v1, buf, &v113, v1 + 91);
    if (SHIBYTE(v115) < 0)
    {
      operator delete(v113);
    }

    if ((v135[1] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    v25 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      if (v1[91])
      {
        v26 = "enabled";
      }

      else
      {
        v26 = "disabled";
      }

      *buf = 136446210;
      *&buf[4] = v26;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Audio Enhanced Logging %{public}s", buf, 0xCu);
    }

    v1[92] = 0;
    sub_100007E30(buf, "Audio");
    sub_100007E30(&v113, "DisableAdaptiveEncoderBitrate");
    (*(*v1 + 72))(v1, buf, &v113, v1 + 92);
    if (SHIBYTE(v115) < 0)
    {
      operator delete(v113);
    }

    if ((v135[1] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    v27 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      if (v1[92])
      {
        v28 = "enabled";
      }

      else
      {
        v28 = "disabled";
      }

      *buf = 136446210;
      *&buf[4] = v28;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Audio Adaptive Encoder Bitrate %{public}s", buf, 0xCu);
    }

    v1[225] = 0;
    sub_100007E30(buf, "A2DP");
    sub_100007E30(&v113, "Disable3EDR");
    (*(*v1 + 72))(v1, buf, &v113, v1 + 225);
    if (SHIBYTE(v115) < 0)
    {
      operator delete(v113);
    }

    if ((v135[1] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    v29 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      if (v1[225])
      {
        v30 = "on";
      }

      else
      {
        v30 = "off";
      }

      *buf = 136446210;
      *&buf[4] = v30;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Disable 3EDR packet type (force 2EDR instead) is %{public}s based on defaults write", buf, 0xCu);
    }

    v1[224] = 0;
    sub_100007E30(buf, "A2DP");
    sub_100007E30(&v113, "DisableAdaptivePacketType");
    (*(*v1 + 72))(v1, buf, &v113, v1 + 224);
    if (SHIBYTE(v115) < 0)
    {
      operator delete(v113);
    }

    if ((v135[1] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    v31 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      if (v1[224])
      {
        v32 = "enabled";
      }

      else
      {
        v32 = "disabled";
      }

      *buf = 136446210;
      *&buf[4] = v32;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Audio Adaptive Packet type %{public}s", buf, 0xCu);
    }

    v1[177] = 0;
    sub_100007E30(buf, "A2DP");
    sub_100007E30(&v113, "DisableAudioTimeSync");
    (*(*v1 + 72))(v1, buf, &v113, v1 + 177);
    if (SHIBYTE(v115) < 0)
    {
      operator delete(v113);
    }

    if ((v135[1] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    v33 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      if (v1[177])
      {
        v34 = "enabled";
      }

      else
      {
        v34 = "disabled";
      }

      *buf = 136446210;
      *&buf[4] = v34;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Audio Time Sync Disable %{public}s", buf, 0xCu);
    }

    v1[181] = 0;
    sub_100007E30(buf, "A2DP");
    sub_100007E30(&v113, "SubJitterBufferEnable");
    (*(*v1 + 72))(v1, buf, &v113, v1 + 181);
    if (SHIBYTE(v115) < 0)
    {
      operator delete(v113);
    }

    if ((v135[1] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    v35 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      if (v1[181])
      {
        v36 = "enabled";
      }

      else
      {
        v36 = "disabled";
      }

      *buf = 136446210;
      *&buf[4] = v36;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Sub Jitter Buffer %{public}s", buf, 0xCu);
    }

    v1[182] = 0;
    v37 = v1 + 182;
    sub_100007E30(buf, "A2DP");
    sub_100007E30(&v113, "AdaptiveEQEnable");
    (*(*v1 + 72))(v1, buf, &v113, v1 + 182);
    if (SHIBYTE(v115) < 0)
    {
      operator delete(v113);
    }

    if ((v135[1] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    v38 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      if (*v37)
      {
        v39 = "enabled";
      }

      else
      {
        v39 = "disabled";
      }

      *buf = 136446210;
      *&buf[4] = v39;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Adaptive EQ %{public}s", buf, 0xCu);
    }

    v1[183] = 0;
    v40 = v1 + 183;
    sub_100007E30(buf, "A2DP");
    sub_100007E30(&v113, "LoudnessCompensationEQEnable");
    (*(*v1 + 72))(v1, buf, &v113, v1 + 183);
    if (SHIBYTE(v115) < 0)
    {
      operator delete(v113);
    }

    if ((v135[1] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    v41 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      if (*v40)
      {
        v42 = "enabled";
      }

      else
      {
        v42 = "disabled";
      }

      *buf = 136446210;
      *&buf[4] = v42;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Loudness Compensation EQ %{public}s", buf, 0xCu);
    }

    v109 = 0;
    v108 = 0;
    sub_100007E30(buf, "GyroJammingSimulationKey");
    sub_100007E30(&v113, "GyroJammingSimulationIsEnabledKey");
    (*(*v1 + 128))(v1, buf, &v113, &v109);
    if (SHIBYTE(v115) < 0)
    {
      operator delete(v113);
    }

    if ((v135[1] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    sub_100007E30(buf, "GyroJammingSimulationKey");
    sub_100007E30(&v113, "GyroJammingSimulationRightBudInfoKey");
    (*(*v1 + 128))(v1, buf, &v113, &v108 + 4);
    if (SHIBYTE(v115) < 0)
    {
      operator delete(v113);
    }

    if ((v135[1] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    sub_100007E30(buf, "GyroJammingSimulationKey");
    sub_100007E30(&v113, "GyroJammingSimulationLeftBudInfoKey");
    (*(*v1 + 128))(v1, buf, &v113, &v108);
    if (SHIBYTE(v115) < 0)
    {
      operator delete(v113);
    }

    if ((v135[1] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    v43 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109888;
      *&buf[4] = v109;
      *&buf[8] = 1024;
      *&buf[10] = 1;
      LOWORD(v134) = 1024;
      *(&v134 + 2) = HIDWORD(v108);
      HIWORD(v134) = 1024;
      *v135 = v108;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "DebugSettings::loadDebugSettings: Gyro jam simulation is enabled = %u, info version = %u, right bud is jammed = %u, left bud is jammed = %u", buf, 0x1Au);
    }

    v113 = 0;
    v114 = 0;
    v115 = 0;
    buf[0] = v109;
    sub_1000C89B4(&v113, buf);
    v44 = v114;
    if (v114 >= v115)
    {
      v46 = v113;
      v47 = (v114 - v113);
      v48 = v114 - v113 + 1;
      if (v48 < 0)
      {
        sub_1000C7698();
      }

      v49 = v115 - v113;
      if (2 * (v115 - v113) > v48)
      {
        v48 = 2 * v49;
      }

      if (v49 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v50 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v50 = v48;
      }

      if (v50)
      {
        operator new();
      }

      v51 = v114 - v113;
      *v47 = 1;
      v45 = v47 + 1;
      memcpy(0, v46, v51);
      v113 = 0;
      v114 = v47 + 1;
      v115 = 0;
      if (v46)
      {
        operator delete(v46);
      }
    }

    else
    {
      *v114 = 1;
      v45 = v44 + 1;
    }

    v114 = v45;
    buf[0] = BYTE4(v108);
    sub_1000C89B4(&v113, buf);
    buf[0] = v108;
    sub_1000C89B4(&v113, buf);
    v52 = *v37;
    v53 = malloc_type_malloc(0x10uLL, 0x1000040451B5BE8uLL);
    *v53 = 514;
    v53[2] = 9.445e21;
    v53[3] = v52;
    if (qword_100B50950 != -1)
    {
      sub_100828D14();
    }

    sub_1003344C8(off_100B50948, 1, 16, v53);
    free(v53);
    if (qword_100B50950 != -1)
    {
      sub_100828D14();
    }

    v54 = sub_100334688(off_100B50948);
    if (v54)
    {
      if (qword_100B50AE0 != -1)
      {
        sub_100828D3C();
      }

      v55 = sub_1004DF834(qword_100B50AD8, v54);
      if (qword_100B50950 != -1)
      {
        sub_100828D14();
      }

      v56 = sub_100334610(v55);
      if (v56)
      {
        v57 = *v40;
        v58 = malloc_type_malloc(0x10uLL, 0x1000040451B5BE8uLL);
        *v58 = 258;
        *(v58 + 1) = v56 - 1;
        v58[2] = 2.1991e12;
        v58[3] = v57;
        if (qword_100B50950 != -1)
        {
          sub_100828D14();
        }

        sub_100330C90(off_100B50948, v54, 1, 16, v58);
        free(v58);
      }

      else if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_100828D64();
      }
    }

    *(v1 + 66) = 0;
    sub_100007E30(buf, "HFP");
    sub_100007E30(v111, "HfpUplinkMode");
    v59 = v1 + 264;
    (*(*v1 + 128))(v1, buf, v111, v1 + 264);
    if (v112 < 0)
    {
      operator delete(v111[0]);
    }

    if ((v135[1] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    if (*v59 >= 3u)
    {
      *v59 = 0;
    }

    if (qword_100B50950 != -1)
    {
      sub_100828D14();
    }

    sub_100334370(off_100B50948, 34, *v59, 1);
    v1[179] = 0;
    sub_100007E30(buf, "A2DP");
    sub_100007E30(v111, "DisableSoftwareVolume");
    (*(*v1 + 72))(v1, buf, v111, v1 + 179);
    if (v112 < 0)
    {
      operator delete(v111[0]);
    }

    if ((v135[1] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    v60 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      if (v1[179])
      {
        v61 = "enabled";
      }

      else
      {
        v61 = "disabled";
      }

      *buf = 136446210;
      *&buf[4] = v61;
      _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "Software Volume Disable %{public}s", buf, 0xCu);
    }

    v1[180] = 0;
    sub_100007E30(buf, "A2DP");
    sub_100007E30(v111, "DisableVolumeUpdateToCM");
    (*(*v1 + 72))(v1, buf, v111, v1 + 180);
    if (v112 < 0)
    {
      operator delete(v111[0]);
    }

    if ((v135[1] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    v62 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      if (v1[180])
      {
        v63 = "enabled";
      }

      else
      {
        v63 = "disabled";
      }

      *buf = 136446210;
      *&buf[4] = v63;
      _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "Direct volume rocker update to CMSession %{public}s", buf, 0xCu);
    }

    v1[178] = 0;
    if ((v1[177] & 1) == 0)
    {
      sub_100007E30(buf, "A2DP");
      sub_100007E30(v111, "EnableRemoteAudioTimeSync");
      (*(*v1 + 72))(v1, buf, v111, v1 + 178);
      if (v112 < 0)
      {
        operator delete(v111[0]);
      }

      if ((v135[1] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }

    v64 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      if (v1[178])
      {
        v65 = "enabled";
      }

      else
      {
        v65 = "disabled";
      }

      *buf = 136446210;
      *&buf[4] = v65;
      _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "Remote Audio Time Sync : %{public}s", buf, 0xCu);
    }

    v1[202] = 0;
    sub_100007E30(buf, "A2DP");
    sub_100007E30(v111, "DynamicLatencyDebugDisable");
    (*(*v1 + 72))(v1, buf, v111, v1 + 202);
    if (v112 < 0)
    {
      operator delete(v111[0]);
    }

    if ((v135[1] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    v1[203] = 0;
    sub_100007E30(buf, "A2DP");
    sub_100007E30(v111, "DynamicLatencyHighEnable");
    (*(*v1 + 72))(v1, buf, v111, v1 + 203);
    if (v112 < 0)
    {
      operator delete(v111[0]);
    }

    if ((v135[1] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    *(v1 + 51) = 0;
    v66 = (v1 + 204);
    sub_100007E30(buf, "A2DP");
    sub_100007E30(v111, "DynamicLatencyLowEnable");
    (*(*v1 + 88))(v1, buf, v111, v1 + 204);
    if (v112 < 0)
    {
      operator delete(v111[0]);
    }

    if ((v135[1] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    *(v1 + 53) = 100;
    sub_100007E30(buf, "A2DP");
    sub_100007E30(v111, "DynamicAdaptiveLowJitterBufferCutoff");
    (*(*v1 + 88))(v1, buf, v111, v1 + 212);
    if (v112 < 0)
    {
      operator delete(v111[0]);
    }

    if ((v135[1] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    v1[218] = 0;
    sub_100007E30(buf, "A2DP");
    sub_100007E30(v111, "DynamicLatencyDefaultEnable");
    (*(*v1 + 72))(v1, buf, v111, v1 + 218);
    if (v112 < 0)
    {
      operator delete(v111[0]);
    }

    if ((v135[1] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    v1[219] = 0;
    sub_100007E30(buf, "A2DP");
    sub_100007E30(v111, "SpatialProfileTuningEnable");
    (*(*v1 + 72))(v1, buf, v111, v1 + 219);
    if (v112 < 0)
    {
      operator delete(v111[0]);
    }

    if ((v135[1] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    v1[208] = 0;
    v67 = v1 + 208;
    sub_100007E30(buf, "A2DP");
    sub_100007E30(v111, "DynamicAdaptiveLowJitterBufferDisable");
    (*(*v1 + 72))(v1, buf, v111, v1 + 208);
    if (v112 < 0)
    {
      operator delete(v111[0]);
    }

    if ((v135[1] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    v1[216] = 0;
    sub_100007E30(buf, "A2DP");
    sub_100007E30(v111, "DynamicAdaptiveLowDebugJitterBufferEnable");
    (*(*v1 + 72))(v1, buf, v111, v1 + 216);
    if (v112 < 0)
    {
      operator delete(v111[0]);
    }

    if ((v135[1] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    v1[217] = 0;
    sub_100007E30(buf, "A2DP");
    sub_100007E30(v111, "DynamicAdaptiveLowJitterBufferLogging");
    (*(*v1 + 72))(v1, buf, v111, v1 + 217);
    if (v112 < 0)
    {
      operator delete(v111[0]);
    }

    if ((v135[1] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    v68 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v69 = "enabled";
      if (*v67)
      {
        v70 = "disabled";
      }

      else
      {
        v70 = "enabled";
      }

      v71 = v1[216];
      if (v1[217])
      {
        v72 = "enabled";
      }

      else
      {
        v72 = "disabled";
      }

      *buf = 136446722;
      if (!v71)
      {
        v69 = "disabled";
      }

      *&buf[4] = v70;
      *&buf[12] = 2082;
      v134 = v72;
      *v135 = 2082;
      *&v135[2] = v69;
      _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "Adaptive Low Latency is %{public}s, Logging is %{public}s DEBUG Low Latency is %{public}s", buf, 0x20u);
    }

    v1[221] = 0;
    sub_100007E30(buf, "A2DP");
    sub_100007E30(v111, "DisableSpatialOnMacOS");
    (*(*v1 + 72))(v1, buf, v111, v1 + 221);
    if (v112 < 0)
    {
      operator delete(v111[0]);
    }

    if ((v135[1] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    v73 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v74 = "enabled";
      if (v1[202])
      {
        v74 = "disabled";
      }

      v75 = "NOT FORCED";
      v76 = v1[218];
      if (v1[203])
      {
        v77 = "FORCED";
      }

      else
      {
        v77 = "NOT FORCED";
      }

      v78 = v1[220];
      if (*v66 <= 0)
      {
        v79 = "NOT FORCED";
      }

      else
      {
        v79 = "FORCED";
      }

      v80 = v1[221];
      if (*v67)
      {
        v81 = "NOT FORCED";
      }

      else
      {
        v81 = "FORCED";
      }

      *buf = 136447746;
      if (v76)
      {
        v82 = "FORCED";
      }

      else
      {
        v82 = "NOT FORCED";
      }

      *&buf[4] = v74;
      *&buf[12] = 2080;
      v134 = v77;
      v83 = "FORCED OFF";
      *v135 = 2080;
      if (v78)
      {
        v75 = "FORCED";
      }

      *&v135[2] = v79;
      if (!v80)
      {
        v83 = "AUTO";
      }

      v136 = 2080;
      v137 = v81;
      v138 = 2080;
      v139 = v82;
      v140 = 2080;
      v141 = v75;
      v142 = 2080;
      v143 = v83;
      _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEFAULT, "A2DP Dynamic Latency is %{public}s, it is %s into HLM, it is %s into LLM, it is %s into adaptive latency,it is %s into MLM Ultra High Priority VSC is %s Spatial On MacOS is %s", buf, 0x48u);
    }

    v84 = *v66;
    if (*v66 >= 1)
    {
      v85 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *&buf[4] = v84;
        _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_DEFAULT, "A2DP Dynamic Latency JBL %i", buf, 8u);
      }
    }

    v1[222] = 0;
    sub_100007E30(buf, "Audio");
    sub_100007E30(v111, "EnableTailspinLogging");
    (*(*v1 + 72))(v1, buf, v111, v1 + 222);
    if (v112 < 0)
    {
      operator delete(v111[0]);
    }

    if ((v135[1] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    v86 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      if (v1[222])
      {
        v87 = "enabled";
      }

      else
      {
        v87 = "disabled";
      }

      *buf = 136446210;
      *&buf[4] = v87;
      _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_DEFAULT, "A2DP Tailspin logging %{public}s", buf, 0xCu);
    }

    v1[223] = 0;
    sub_100007E30(buf, "Audio");
    sub_100007E30(v111, "DisableOverwaitMitigaton");
    (*(*v1 + 72))(v1, buf, v111, v1 + 223);
    if (v112 < 0)
    {
      operator delete(v111[0]);
    }

    if ((v135[1] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    v88 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      if (v1[223])
      {
        v89 = "disabled";
      }

      else
      {
        v89 = "enabled";
      }

      *buf = 136446210;
      *&buf[4] = v89;
      _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_DEFAULT, "A2DP Overwait Mitigation %{public}s", buf, 0xCu);
    }

    v1[242] = 0;
    sub_100007E30(buf, "BTPageScan");
    sub_100007E30(v111, "BTPageScanDisabled");
    (*(*v1 + 72))(v1, buf, v111, v1 + 242);
    if (v112 < 0)
    {
      operator delete(v111[0]);
    }

    if ((v135[1] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    if (v1[242] == 1)
    {
      v90 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_DEFAULT, "BT Page Scan is explicitly disabled", buf, 2u);
      }
    }

    sub_100007E30(buf, "GAPA");
    sub_100007E30(v111, "ForceAuthPassEnabled");
    (*(*v1 + 72))(v1, buf, v111, v1 + 243);
    if (v112 < 0)
    {
      operator delete(v111[0]);
    }

    if ((v135[1] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    if (v1[243] == 1)
    {
      v91 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v91, OS_LOG_TYPE_DEFAULT, "GAPA force auth pass explicitly enabled", buf, 2u);
      }
    }

    sub_100007E30(buf, "GAPA");
    sub_100007E30(v111, "ForceAuthFailEnabled");
    (*(*v1 + 72))(v1, buf, v111, v1 + 244);
    if (v112 < 0)
    {
      operator delete(v111[0]);
    }

    if ((v135[1] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    if (v1[244] == 1)
    {
      v92 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v92, OS_LOG_TYPE_DEFAULT, "GAPA force auth fail explicitly enabled", buf, 2u);
      }
    }

    if ((*(*v1 + 8))(v1))
    {
      v1[245] = 0;
    }

    sub_100007E30(buf, "GAPA");
    sub_100007E30(v111, "HideAuthFailEnabled");
    (*(*v1 + 72))(v1, buf, v111, v1 + 245);
    if (v112 < 0)
    {
      operator delete(v111[0]);
    }

    if ((v135[1] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    if (v1[245] == 1)
    {
      v93 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_DEFAULT, "GAPA hide auth fail explicitly enabled", buf, 2u);
      }
    }

    sub_100007E30(buf, "GAPA");
    sub_100007E30(v111, "ForceNonAppleMfgEnabled");
    (*(*v1 + 72))(v1, buf, v111, v1 + 246);
    if (v112 < 0)
    {
      operator delete(v111[0]);
    }

    if ((v135[1] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    if (v1[246] == 1)
    {
      v94 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v94, OS_LOG_TYPE_DEFAULT, "GAPA force non Apple manufacturer explicitly enabled", buf, 2u);
      }
    }

    sub_100007E30(buf, "GAPA");
    sub_100007E30(v111, "AuthEnabled");
    (*(*v1 + 72))(v1, buf, v111, v1 + 247);
    if (v112 < 0)
    {
      operator delete(v111[0]);
    }

    if ((v135[1] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    if ((v1[247] & 1) == 0)
    {
      v95 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_DEFAULT, "GAPA auth explicity disabled", buf, 2u);
      }
    }

    sub_100007E30(buf, "GAPA");
    sub_100007E30(v111, "NonAuthEnabled");
    (*(*v1 + 72))(v1, buf, v111, v1 + 248);
    if (v112 < 0)
    {
      operator delete(v111[0]);
    }

    if ((v135[1] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    if ((v1[248] & 1) == 0)
    {
      v96 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v96, OS_LOG_TYPE_DEFAULT, "GAPA non-auth explicity disabled", buf, 2u);
      }
    }

    sub_100007E30(buf, "GAPA");
    sub_100007E30(v111, "ForceZeroEnabled");
    (*(*v1 + 72))(v1, buf, v111, v1 + 249);
    if (v112 < 0)
    {
      operator delete(v111[0]);
    }

    if ((v135[1] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    if (v1[249] == 1)
    {
      v97 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v97, OS_LOG_TYPE_DEFAULT, "GAPA force zero device explicity enabled", buf, 2u);
      }
    }

    sub_100007E30(buf, "GAPA");
    sub_100007E30(v111, "ForceInvalidCertsEnabled");
    (*(*v1 + 72))(v1, buf, v111, v1 + 250);
    if (v112 < 0)
    {
      operator delete(v111[0]);
    }

    if ((v135[1] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    if (v1[250] == 1)
    {
      v98 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v98, OS_LOG_TYPE_DEFAULT, "GAPA force invalid certificate support explicitly enabled", buf, 2u);
      }
    }

    sub_100007E30(buf, "GAPA");
    sub_100007E30(v111, "SkipCertFailEnabled");
    (*(*v1 + 72))(v1, buf, v111, v1 + 251);
    if (v112 < 0)
    {
      operator delete(v111[0]);
    }

    if ((v135[1] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    if (v1[251] == 1)
    {
      v99 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v99, OS_LOG_TYPE_DEFAULT, "GAPA skip certificate fail explicitly enabled", buf, 2u);
      }
    }

    v1[261] = 1;
    sub_100007E30(buf, "DebugLevel");
    sub_100007E30(v111, "EnableNotifyCrashes");
    (*(*v1 + 72))(v1, buf, v111, v1 + 261);
    if (v112 < 0)
    {
      operator delete(v111[0]);
    }

    if ((v135[1] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    v1[262] = 0;
    sub_100007E30(buf, "XPC");
    sub_100007E30(v111, "XpcStackshotReportEnabled");
    (*(*v1 + 72))(v1, buf, v111, v1 + 262);
    if (v112 < 0)
    {
      operator delete(v111[0]);
    }

    if ((v135[1] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    v1[263] = 0;
    sub_100007E30(buf, "XPC");
    sub_100007E30(v111, "XpcAbcReportEnabled");
    (*(*v1 + 72))(v1, buf, v111, v1 + 263);
    if (v112 < 0)
    {
      operator delete(v111[0]);
    }

    if ((v135[1] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    v1[268] = 0;
    sub_100007E30(buf, "LEConnectedAudioServerModeKey");
    sub_100007E30(v111, "LEConnectedAudioServerModeEnable");
    (*(*v1 + 72))(v1, buf, v111, v1 + 268);
    if (v112 < 0)
    {
      operator delete(v111[0]);
    }

    if ((v135[1] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    if (v1[268] == 1)
    {
      v100 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v100, OS_LOG_TYPE_DEFAULT, "LE Connected Audio Server Mode enabled", buf, 2u);
      }
    }

    sub_100007E30(buf, "LEConnectedAudioServerModeKey");
    sub_100007E30(v111, "LEConnectedAudioFakeCISStackCallbacksEnabled");
    (*(*v1 + 72))(v1, buf, v111, v1 + 269);
    if (v112 < 0)
    {
      operator delete(v111[0]);
    }

    if ((v135[1] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    if (v1[269] == 1)
    {
      v101 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v101, OS_LOG_TYPE_DEFAULT, "LE Connected Stack Bypass enabled", buf, 2u);
      }
    }

    if (_os_feature_enabled_impl())
    {
      *(v1 + 68) = 0;
      sub_100007E30(buf, "A2DP");
      sub_100007E30(v111, "A2DPOverSniffJBL");
      v102 = (v1 + 272);
      (*(*v1 + 88))(v1, buf, v111, v1 + 272);
      if (v112 < 0)
      {
        operator delete(v111[0]);
      }

      if ((v135[1] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      v103 = *v102;
      if ((*v102 - 301) <= 0xFFFFFEE1)
      {
        v103 = 60;
        *v102 = 60;
      }

      v104 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *&buf[4] = v103;
        _os_log_impl(&_mh_execute_header, v104, OS_LOG_TYPE_DEFAULT, "JBL Value: %d", buf, 8u);
      }
    }

    if (_os_feature_enabled_impl())
    {
      *(v1 + 69) = 1;
      sub_100007E30(buf, "A2DP");
      sub_100007E30(v111, "A2DPOverSniffAACELDFrames");
      v105 = (v1 + 276);
      (*(*v1 + 88))(v1, buf, v111, v1 + 276);
      if (v112 < 0)
      {
        operator delete(v111[0]);
      }

      if ((v135[1] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      v106 = *v105;
      if ((*v105 - 4) <= 0xFFFFFFFC)
      {
        v106 = 1;
        *v105 = 1;
      }

      v107 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *&buf[4] = v106;
        _os_log_impl(&_mh_execute_header, v107, OS_LOG_TYPE_DEFAULT, "Overriden AACELD Frame Count: %d", buf, 8u);
      }
    }

    if (v113)
    {
      v114 = v113;
      operator delete(v113);
    }
  }

  if (SHIBYTE(v132) < 0)
  {
    operator delete(__p);
  }
}

void sub_1004045A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  _Unwind_Resume(exception_object);
}

void sub_100404A30(uint64_t a1)
{
  v77 = 0;
  v76 = 0;
  sub_1003FDE90(a1, &v77 + 1, &v77, &v76);
  v2 = 4997400;
  v75 = 0;
  v74 = 0;
  v73 = 0;
  v72 = 3;
  v71 = 4997400;
  v70 = 0;
  v3 = (*(*a1 + 184))(a1);
  sub_100007E30(buf, "HCITraces");
  sub_100007E30(v96, "UnlimitedHCIFileSize");
  (*(*a1 + 72))(a1, buf, v96, &v73 + 1);
  if (v97 < 0)
  {
    operator delete(*v96);
  }

  if ((v83[7] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  sub_100007E30(buf, "HCITraces");
  sub_100007E30(v96, "RawAudioTrace");
  (*(*a1 + 72))(a1, buf, v96, &v75);
  if (v97 < 0)
  {
    operator delete(*v96);
  }

  if ((v83[7] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  sub_100007E30(buf, "HCITraces");
  sub_100007E30(v96, "HIDTrace");
  (*(*a1 + 72))(a1, buf, v96, &v74);
  if (v97 < 0)
  {
    operator delete(*v96);
  }

  if ((v83[7] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  sub_100007E30(buf, "HCITraces");
  sub_100007E30(v96, "AudioTimeSyncAudioLog");
  (*(*a1 + 72))(a1, buf, v96, &v74 + 1);
  if (v97 < 0)
  {
    operator delete(*v96);
  }

  if ((v83[7] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  sub_100007E30(buf, "HCITraces");
  sub_100007E30(v96, "MaxFileSize");
  (*(*a1 + 72))(a1, buf, v96, &v73);
  if (v97 < 0)
  {
    operator delete(*v96);
  }

  if ((v83[7] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  sub_100007E30(buf, "HCITraces");
  sub_100007E30(v96, "MaxTraces");
  (*(*a1 + 88))(a1, buf, v96, &v72);
  if (v97 < 0)
  {
    operator delete(*v96);
  }

  if ((v83[7] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  sub_100007E30(buf, "HCITraces");
  sub_100007E30(v96, "MaxFileSize");
  (*(*a1 + 88))(a1, buf, v96, &v71);
  if (v97 < 0)
  {
    operator delete(*v96);
  }

  if ((v83[7] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  sub_100007E30(buf, "HCITraces");
  sub_100007E30(v96, "HCISkipAuth");
  (*(*a1 + 72))(a1, buf, v96, &v70);
  if (v97 < 0)
  {
    operator delete(*v96);
  }

  if ((v83[7] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"enableHIDLogging", @"com.apple.bluetooth", &keyExistsAndHasValidFormat);
  keyExistsAndHasValidFormat = 0;
  v5 = CFPreferencesGetAppBooleanValue(@"enableHRMLogging", @"com.apple.bluetooth", &keyExistsAndHasValidFormat);
  v6 = v72;
  if (v72 < 0 || v71 <= 999999)
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100828DDC();
    }

    v71 = 4997400;
    v6 = 5;
    v72 = 5;
  }

  else
  {
    v2 = v71;
  }

  if (HIBYTE(v73) == 1 && (v73 & 1) == 0)
  {
    v2 = 200000000;
    v71 = 200000000;
  }

  v7 = qword_100BCE8D8;
  v8 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
  v9 = v76;
  if (v8)
  {
    *buf = 67111424;
    *&buf[4] = v75;
    LOWORD(v82) = 1024;
    *(&v82 + 2) = v74;
    HIWORD(v82) = 1024;
    *v83 = AppBooleanValue != 0;
    *&v83[4] = 1024;
    *&v83[6] = v2;
    v84 = 1024;
    v85 = v6;
    v86 = 1024;
    v87 = HIBYTE(v77);
    v88 = 1024;
    v89 = v77;
    v90 = 1024;
    v91 = HIBYTE(v74);
    v92 = 1024;
    v93 = v3;
    v94 = 1024;
    v95 = v76;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Set HCI config raw:%d HID:%d developerEnableHIDLogging:%d size:%d files:%d liveTracing:%d fileTracing:%d timesync:%d logENPackets:%d hciLiteLogging:%d", buf, 0x3Eu);
    v2 = v71;
    v6 = v72;
  }

  sub_1001C341C(v75, v74 & 1 | (AppBooleanValue != 0), v5 != 0, v2, v6, SHIBYTE(v77), v77, SHIBYTE(v74), v3, v9 & 1);
  sub_1001C3964(v70);
  *buf = 0;
  v82 = 0;
  *v83 = 0;
  sub_100007E30(v96, "HCITraces");
  sub_100007E30(v79, "AutoDisableTime");
  if ((*(*a1 + 56))(a1, v96, v79, buf))
  {
    if (v83[7] >= 0)
    {
      v10 = v83[7];
    }

    else
    {
      v10 = v82;
    }

    if (v80 < 0)
    {
      operator delete(*v79);
    }

    if (v97 < 0)
    {
      operator delete(*v96);
      if (!v10)
      {
        goto LABEL_74;
      }
    }

    else if (!v10)
    {
      goto LABEL_74;
    }

    if (v83[7] >= 0)
    {
      v11 = buf;
    }

    else
    {
      v11 = *buf;
    }

    v12 = CFStringCreateWithCString(0, v11, 0x600u);
    v13 = CFDateFormatterCreate(0, 0, kCFDateFormatterNoStyle, kCFDateFormatterNoStyle);
    CFDateFormatterSetFormat(v13, @"HH:mm:ss MM-dd-yyyy");
    DateFromString = CFDateFormatterCreateDateFromString(0, v13, v12, 0);
    v15 = DateFromString;
    if (DateFromString)
    {
      v16 = *(a1 + 40);
      if (!v16 || CFDateCompare(DateFromString, v16, 0))
      {
        v17 = *(a1 + 32);
        if (v17)
        {
          dispatch_suspend(v17);
        }

        else
        {
          v18 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(a1 + 24));
          *(a1 + 32) = v18;
          handler[0] = _NSConcreteStackBlock;
          handler[1] = 3221225472;
          handler[2] = sub_100407628;
          handler[3] = &unk_100ADF8F8;
          handler[4] = a1;
          dispatch_source_set_event_handler(v18, handler);
          v19 = *(a1 + 32);
          v67[0] = _NSConcreteStackBlock;
          v67[1] = 3221225472;
          v67[2] = sub_100407664;
          v67[3] = &unk_100ADF8F8;
          v67[4] = a1;
          dispatch_source_set_cancel_handler(v19, v67);
        }

        v20 = qword_100BCE8D8;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
        {
          v21 = buf;
          if (v83[7] < 0)
          {
            v21 = *buf;
          }

          *v96 = 136315138;
          *&v96[4] = v21;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Enabling HCI unlimited tracing auto-disable for %s", v96, 0xCu);
        }

        Current = CFAbsoluteTimeGetCurrent();
        v23 = CFDateCreate(0, Current);
        AbsoluteTime = CFDateGetAbsoluteTime(v15);
        v25 = CFDateGetAbsoluteTime(v23);
        CFRelease(v23);
        v26 = *(a1 + 32);
        v27 = dispatch_walltime(0, ((AbsoluteTime - v25) * 1000000000.0));
        dispatch_source_set_timer(v26, v27, 0xFFFFFFFFFFFFFFFFLL, 0x1DCD6500uLL);
        dispatch_resume(*(a1 + 32));
      }

      CFRelease(v15);
    }

    CFRelease(v13);
    CFRelease(v12);
  }

  else
  {
    if (v80 < 0)
    {
      operator delete(*v79);
    }

    if (v97 < 0)
    {
      operator delete(*v96);
    }
  }

LABEL_74:
  context = objc_autoreleasePoolPush();
  if (v77 == 1)
  {
    v28 = sub_1001C42E0();
    v29 = qword_100BCE8D8;
    if (v28)
    {
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        *v96 = 0;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Successfully started HCI tracing", v96, 2u);
      }
    }

    else if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100828E74();
    }
  }

  else
  {
    v30 = CFDateFormatterCreate(kCFAllocatorDefault, 0, kCFDateFormatterShortStyle, kCFDateFormatterFullStyle);
    CFDateFormatterSetFormat(v30, @"yyyy_MM_dd-HH_mm_ss");
    v57 = +[NSDate date];
    StringWithDate = CFDateFormatterCreateStringWithDate(kCFAllocatorDefault, v30, v57);
    if (v9)
    {
      v32 = @"%@/bluetoothd-hcilite-%@.pklg";
    }

    else
    {
      v32 = @"%@/bluetoothd-hci-%@.pklg";
    }

    cf = StringWithDate;
    v33 = [NSString stringWithFormat:v32, qword_100B6D6B8, StringWithDate];
    CFRelease(v30);
    v59 = v33;
    v34 = v33;
    sub_1001C4774([v33 UTF8String]);
    v35 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *v96 = 0;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Successfully stopped HCI tracing", v96, 2u);
    }

    v36 = +[NSFileManager defaultManager];
    v66 = 0;
    v37 = [v36 contentsOfDirectoryAtPath:qword_100B6D6B8 error:&v66];
    v38 = v66;
    v39 = v38;
    v58 = v37;
    if (v37 && !v38)
    {
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v40 = v37;
      v39 = 0;
      v41 = [v40 countByEnumeratingWithState:&v62 objects:v78 count:16];
      if (v41)
      {
        v42 = *v63;
        do
        {
          for (i = 0; i != v41; i = i + 1)
          {
            if (*v63 != v42)
            {
              objc_enumerationMutation(v40);
            }

            v44 = *(*(&v62 + 1) + 8 * i);
            v45 = [qword_100B6D6B8 stringByAppendingPathComponent:v44];
            if ([v36 isReadableFileAtPath:v45] && (objc_msgSend(v44, "pathExtension"), v46 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v46, "lowercaseString"), v47 = objc_claimAutoreleasedReturnValue(), v48 = objc_msgSend(v47, "isEqualToString:", @"pklg"), v47, v46, v48))
            {
              v61 = v39;
              v49 = [v36 removeItemAtPath:v45 error:&v61];
              v50 = v61;

              v51 = qword_100BCE8D8;
              if (v49)
              {
                if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
                {
                  *v96 = 138412290;
                  *&v96[4] = v45;
                  _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "Deleted file: %@", v96, 0xCu);
                }
              }

              else if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
              {
                v55 = [v50 localizedDescription];
                sub_100828E18(v55, v79, &v79[4], v51);
              }

              v39 = v50;
            }

            else
            {
              v52 = qword_100BCE8D8;
              if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
              {
                v53 = v45;
                v54 = [v45 UTF8String];
                *v96 = 136315138;
                *&v96[4] = v54;
                _os_log_error_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "File %s is not readable.\n", v96, 0xCu);
              }
            }
          }

          v41 = [v40 countByEnumeratingWithState:&v62 objects:v78 count:16];
        }

        while (v41);
      }
    }

    CFRelease(cf);
  }

  objc_autoreleasePoolPop(context);
  if ((v83[7] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }
}

void sub_10040579C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15)
{
  if (*(v17 - 185) < 0)
  {
    operator delete(*(v17 - 208));
  }

  _Unwind_Resume(a1);
}

void sub_1004058F0(_BYTE *a1, uint64_t a2)
{
  v3 = sub_10000C7D0(a1, a2);
  if ((*(*v3 + 2768))(v3))
  {
    v8 = 0;
    sub_100007E30(buf, "SPMI");
    sub_100007E30(__p, "DebugControl");
    a1[259] = (*(*a1 + 128))(a1, buf, __p, &v8);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }

    if (v10 < 0)
    {
      operator delete(*buf);
    }

    if (a1[259] == 1)
    {
      v4 = v8;
      if (v8 > 3)
      {
        a1[259] = 0;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
        {
          sub_100828EB0();
        }
      }

      else
      {
        a1[260] = v8;
        v5 = qword_100BCE8D8;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
        {
          *buf = 67240192;
          *&buf[4] = v4;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "SPMI Debug Control is %{public}d", buf, 8u);
        }
      }
    }
  }
}

void sub_100405A90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_100405ACC(uint64_t a1)
{
  v2 = sub_10000E92C();
  v3 = (*(*v2 + 8))(v2);
  if (!v3)
  {
    v6 = 0;
    return sub_1001BC09C(v6);
  }

  v5 = *(sub_10000C7D0(v3, v4) + 800) - 2000;
  v6 = v5 < 0x7D0;
  v14 = 0;
  sub_100007E30(buf, "Firmware");
  sub_100007E30(__p, "DisableAppleFwLogsCapture");
  v7 = (*(*a1 + 72))(a1, buf, __p, &v14);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  if (v13 < 0)
  {
    operator delete(*buf);
    if (!v7)
    {
      return sub_1001BC09C(v6);
    }
  }

  else if (!v7)
  {
    return sub_1001BC09C(v6);
  }

  v6 = (v5 < 0x7D0) & (v14 ^ 1u);
  v9 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Default writes disabling AppleFwLogCapture", buf, 2u);
  }

  return sub_1001BC09C(v6);
}

void sub_100405C2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_100405C60(uint64_t a1, uint64_t *a2, uint64_t *a3, std::string *a4)
{
  v7 = objc_autoreleasePoolPush();
  if (*(a2 + 23) >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  v9 = [NSString stringWithUTF8String:v8];
  v10 = CFPreferencesCopyAppValue(v9, @"com.apple.MobileBluetooth.debug");

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (*(a3 + 23) >= 0)
    {
      v11 = a3;
    }

    else
    {
      v11 = *a3;
    }

    v12 = [NSString stringWithUTF8String:v11];
    v13 = [v10 objectForKey:v12];

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      std::string::assign(a4, [v13 UTF8String]);
    }
  }

  else
  {
    isKindOfClass = 0;
  }

  objc_autoreleasePoolPop(v7);
  return isKindOfClass & 1;
}

uint64_t sub_100405DB4(uint64_t a1, uint64_t *a2, const void **a3)
{
  v5 = objc_autoreleasePoolPush();
  if (*(a2 + 23) >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  v7 = [NSString stringWithUTF8String:v6];
  v8 = CFPreferencesCopyAppValue(v7, @"com.apple.MobileBluetooth.debug");

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = v8;
    v10 = 0;
    v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v11)
    {
      v12 = *v21;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v20 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v15 = v14;
            v16 = v15;
            sub_100007E30(__p, [v15 UTF8String]);
            sub_10034A52C(a3, __p);
            if (v19 < 0)
            {
              operator delete(__p[0]);
            }

            v10 = 1;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v11);
    }
  }

  else
  {
    v10 = 0;
  }

  objc_autoreleasePoolPop(v5);
  return v10 & 1;
}

void sub_100405FE0(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v7 = objc_autoreleasePoolPush();
  if (*(a2 + 23) >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  v9 = [NSString stringWithUTF8String:v8];
  v10 = CFPreferencesCopyAppValue(v9, @"com.apple.MobileBluetooth.debug");

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [v10 mutableCopy];
    if (*(a4 + 23) >= 0)
    {
      v12 = a4;
    }

    else
    {
      v12 = *a4;
    }

    v13 = [NSString stringWithUTF8String:v12];
    if (*(a3 + 23) >= 0)
    {
      v14 = a3;
    }

    else
    {
      v14 = *a3;
    }

    v15 = [NSString stringWithUTF8String:v14];
    [v11 setObject:v13 forKey:v15];

    if (*(a2 + 23) >= 0)
    {
      v16 = a2;
    }

    else
    {
      v16 = *a2;
    }
  }

  else
  {
    if (*(a4 + 23) >= 0)
    {
      v17 = a4;
    }

    else
    {
      v17 = *a4;
    }

    v18 = [NSString stringWithUTF8String:v17];
    if (*(a3 + 23) >= 0)
    {
      v19 = a3;
    }

    else
    {
      v19 = *a3;
    }

    v20 = [NSString stringWithUTF8String:v19];
    v11 = [NSDictionary dictionaryWithObject:v18 forKey:v20];

    if (*(a2 + 23) >= 0)
    {
      v16 = a2;
    }

    else
    {
      v16 = *a2;
    }
  }

  v21 = [NSString stringWithUTF8String:v16];
  CFPreferencesSetAppValue(v21, v11, @"com.apple.MobileBluetooth.debug");

  CFPreferencesAppSynchronize(@"com.apple.MobileBluetooth.debug");

  objc_autoreleasePoolPop(v7);
}

void sub_100406258(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v7 = objc_autoreleasePoolPush();
  if (*(a2 + 23) >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  v9 = [NSString stringWithUTF8String:v8];
  v10 = CFPreferencesCopyAppValue(v9, @"com.apple.MobileBluetooth.debug");

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [v10 mutableCopy];
    v12 = [NSNumber numberWithBool:a4];
    if (*(a3 + 23) >= 0)
    {
      v13 = a3;
    }

    else
    {
      v13 = *a3;
    }

    v14 = [NSString stringWithUTF8String:v13];
    [v11 setObject:v12 forKey:v14];

    if (*(a2 + 23) >= 0)
    {
      v15 = a2;
    }

    else
    {
      v15 = *a2;
    }
  }

  else
  {
    v16 = [NSNumber numberWithBool:a4];
    if (*(a3 + 23) >= 0)
    {
      v17 = a3;
    }

    else
    {
      v17 = *a3;
    }

    v18 = [NSString stringWithUTF8String:v17];
    v11 = [NSDictionary dictionaryWithObject:v16 forKey:v18];

    if (*(a2 + 23) >= 0)
    {
      v15 = a2;
    }

    else
    {
      v15 = *a2;
    }
  }

  v19 = [NSString stringWithUTF8String:v15];
  CFPreferencesSetAppValue(v19, v11, @"com.apple.MobileBluetooth.debug");

  CFPreferencesAppSynchronize(@"com.apple.MobileBluetooth.debug");

  objc_autoreleasePoolPop(v7);
}

void sub_1004064C0(uint64_t a1, uint64_t *a2, uint64_t *a3, int a4)
{
  v7 = objc_autoreleasePoolPush();
  if (*(a2 + 23) >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  v9 = [NSString stringWithUTF8String:v8];
  v10 = CFPreferencesCopyAppValue(v9, @"com.apple.MobileBluetooth.debug");

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [v10 mutableCopy];
    v12 = [NSNumber numberWithInteger:a4];
    if (*(a3 + 23) >= 0)
    {
      v13 = a3;
    }

    else
    {
      v13 = *a3;
    }

    v14 = [NSString stringWithUTF8String:v13];
    [v11 setObject:v12 forKey:v14];

    if (*(a2 + 23) >= 0)
    {
      v15 = a2;
    }

    else
    {
      v15 = *a2;
    }
  }

  else
  {
    v16 = [NSNumber numberWithInteger:a4];
    if (*(a3 + 23) >= 0)
    {
      v17 = a3;
    }

    else
    {
      v17 = *a3;
    }

    v18 = [NSString stringWithUTF8String:v17];
    v11 = [NSDictionary dictionaryWithObject:v16 forKey:v18];

    if (*(a2 + 23) >= 0)
    {
      v15 = a2;
    }

    else
    {
      v15 = *a2;
    }
  }

  v19 = [NSString stringWithUTF8String:v15];
  CFPreferencesSetAppValue(v19, v11, @"com.apple.MobileBluetooth.debug");

  CFPreferencesAppSynchronize(@"com.apple.MobileBluetooth.debug");

  objc_autoreleasePoolPop(v7);
}

uint64_t sub_100406728(uint64_t a1, uint64_t *a2, uint64_t *a3, _DWORD *a4)
{
  v7 = objc_autoreleasePoolPush();
  if (*(a2 + 23) >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  v9 = [NSString stringWithUTF8String:v8];
  v10 = CFPreferencesCopyAppValue(v9, @"com.apple.MobileBluetooth.debug");

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (*(a3 + 23) >= 0)
    {
      v11 = a3;
    }

    else
    {
      v11 = *a3;
    }

    v12 = [NSString stringWithUTF8String:v11];
    v13 = [v10 objectForKey:v12];

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      [v13 floatValue];
      *a4 = v15;
    }
  }

  else
  {
    isKindOfClass = 0;
  }

  objc_autoreleasePoolPop(v7);
  return isKindOfClass & 1;
}

void sub_100406874(float a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = objc_autoreleasePoolPush();
  if (*(a3 + 23) >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  v9 = [NSString stringWithUTF8String:v8];
  v10 = CFPreferencesCopyAppValue(v9, @"com.apple.MobileBluetooth.debug");

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [v10 mutableCopy];
    *&v13 = a1;
    v14 = [NSNumber numberWithFloat:v13];
    if (*(a4 + 23) >= 0)
    {
      v15 = a4;
    }

    else
    {
      v15 = *a4;
    }

    v16 = [NSString stringWithUTF8String:v15];
    [v12 setObject:v14 forKey:v16];

    if (*(a3 + 23) >= 0)
    {
      v17 = a3;
    }

    else
    {
      v17 = *a3;
    }
  }

  else
  {
    *&v11 = a1;
    v18 = [NSNumber numberWithFloat:v11];
    if (*(a4 + 23) >= 0)
    {
      v19 = a4;
    }

    else
    {
      v19 = *a4;
    }

    v20 = [NSString stringWithUTF8String:v19];
    v12 = [NSDictionary dictionaryWithObject:v18 forKey:v20];

    if (*(a3 + 23) >= 0)
    {
      v17 = a3;
    }

    else
    {
      v17 = *a3;
    }
  }

  v21 = [NSString stringWithUTF8String:v17];
  CFPreferencesSetAppValue(v21, v12, @"com.apple.MobileBluetooth.debug");

  CFPreferencesAppSynchronize(@"com.apple.MobileBluetooth.debug");

  objc_autoreleasePoolPop(v7);
}

uint64_t sub_100406AE4(uint64_t a1, uint64_t *a2, uint64_t *a3, _DWORD *a4)
{
  v7 = objc_autoreleasePoolPush();
  if (*(a2 + 23) >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  v9 = [NSString stringWithUTF8String:v8];
  v10 = CFPreferencesCopyAppValue(v9, @"com.apple.MobileBluetooth.debug");

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (*(a3 + 23) >= 0)
    {
      v11 = a3;
    }

    else
    {
      v11 = *a3;
    }

    v12 = [NSString stringWithUTF8String:v11];
    v13 = [v10 objectForKey:v12];

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      *a4 = [v13 unsignedIntValue];
    }
  }

  else
  {
    isKindOfClass = 0;
  }

  objc_autoreleasePoolPop(v7);
  return isKindOfClass & 1;
}

void sub_100406C30(uint64_t a1, uint64_t *a2, uint64_t *a3, unsigned int a4)
{
  v7 = objc_autoreleasePoolPush();
  if (*(a2 + 23) >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  v9 = [NSString stringWithUTF8String:v8];
  v10 = CFPreferencesCopyAppValue(v9, @"com.apple.MobileBluetooth.debug");

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [v10 mutableCopy];
    v12 = [NSNumber numberWithUnsignedInteger:a4];
    if (*(a3 + 23) >= 0)
    {
      v13 = a3;
    }

    else
    {
      v13 = *a3;
    }

    v14 = [NSString stringWithUTF8String:v13];
    [v11 setObject:v12 forKey:v14];

    if (*(a2 + 23) >= 0)
    {
      v15 = a2;
    }

    else
    {
      v15 = *a2;
    }
  }

  else
  {
    v16 = [NSNumber numberWithUnsignedInteger:a4];
    if (*(a3 + 23) >= 0)
    {
      v17 = a3;
    }

    else
    {
      v17 = *a3;
    }

    v18 = [NSString stringWithUTF8String:v17];
    v11 = [NSDictionary dictionaryWithObject:v16 forKey:v18];

    if (*(a2 + 23) >= 0)
    {
      v15 = a2;
    }

    else
    {
      v15 = *a2;
    }
  }

  v19 = [NSString stringWithUTF8String:v15];
  CFPreferencesSetAppValue(v19, v11, @"com.apple.MobileBluetooth.debug");

  CFPreferencesAppSynchronize(@"com.apple.MobileBluetooth.debug");

  objc_autoreleasePoolPop(v7);
}

uint64_t sub_100406E98(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v7 = objc_autoreleasePoolPush();
  if (*(a2 + 23) >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  v9 = [NSString stringWithUTF8String:v8];
  v10 = CFPreferencesCopyAppValue(v9, @"com.apple.MobileBluetooth.debug");

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (*(a3 + 23) >= 0)
    {
      v11 = a3;
    }

    else
    {
      v11 = *a3;
    }

    v12 = [NSString stringWithUTF8String:v11];
    v13 = [v10 objectForKey:v12];

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      *a4 = [v13 unsignedLongLongValue];
    }
  }

  else
  {
    isKindOfClass = 0;
  }

  objc_autoreleasePoolPop(v7);
  return isKindOfClass & 1;
}

uint64_t sub_100406FE4(uint64_t a1, uint64_t *a2, const void **a3)
{
  v5 = objc_autoreleasePoolPush();
  if (*(a2 + 23) >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  v7 = [NSString stringWithUTF8String:v6];
  v8 = CFPreferencesCopyAppValue(v7, @"com.apple.MobileBluetooth.debug");

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = v8;
    v10 = 0;
    v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v11)
    {
      v12 = *v21;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v20 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v15 = v14;
            v16 = v15;
            sub_100007E30(__p, [v15 UTF8String]);
            sub_10034A52C(a3, __p);
            if (v19 < 0)
            {
              operator delete(__p[0]);
            }

            v10 = 1;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v11);
    }
  }

  else
  {
    v10 = 0;
  }

  objc_autoreleasePoolPop(v5);
  return v10 & 1;
}

void sub_100407210(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v7 = objc_autoreleasePoolPush();
  if (*(a2 + 23) >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  v9 = [NSString stringWithUTF8String:v8];
  v10 = CFPreferencesCopyAppValue(v9, @"com.apple.MobileBluetooth.debug");

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [v10 mutableCopy];
    v12 = [NSNumber numberWithUnsignedLongLong:a4];
    if (*(a3 + 23) >= 0)
    {
      v13 = a3;
    }

    else
    {
      v13 = *a3;
    }

    v14 = [NSString stringWithUTF8String:v13];
    [v11 setObject:v12 forKey:v14];

    if (*(a2 + 23) >= 0)
    {
      v15 = a2;
    }

    else
    {
      v15 = *a2;
    }
  }

  else
  {
    v16 = [NSNumber numberWithUnsignedLongLong:a4];
    if (*(a3 + 23) >= 0)
    {
      v17 = a3;
    }

    else
    {
      v17 = *a3;
    }

    v18 = [NSString stringWithUTF8String:v17];
    v11 = [NSDictionary dictionaryWithObject:v16 forKey:v18];

    if (*(a2 + 23) >= 0)
    {
      v15 = a2;
    }

    else
    {
      v15 = *a2;
    }
  }

  v19 = [NSString stringWithUTF8String:v15];
  CFPreferencesSetAppValue(v19, v11, @"com.apple.MobileBluetooth.debug");

  CFPreferencesAppSynchronize(@"com.apple.MobileBluetooth.debug");

  objc_autoreleasePoolPop(v7);
}

BOOL sub_100407478(_BYTE *a1)
{
  if (a1[254] & 1) != 0 || (a1[252])
  {
    return 1;
  }

  if ((*(*a1 + 8))(a1))
  {
    return 0;
  }

  v3 = qword_100BCEA28;

  return os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
}

void sub_1004074F4(uint64_t a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "HCI tracing timer expired - disabling unlimited tracing", v7, 2u);
  }

  v3 = CFPreferencesCopyAppValue(@"HCITraces", @"com.apple.MobileBluetooth.debug");
  v4 = v3;
  if (v3 && (v5 = CFGetTypeID(v3), v5 == CFDictionaryGetTypeID()))
  {
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v4);
    CFDictionaryRemoveValue(MutableCopy, @"UnlimitedHCIFileSize");
    CFDictionaryRemoveValue(MutableCopy, @"MaxFileSize");
    CFDictionaryRemoveValue(MutableCopy, @"AutoDisableTime");
  }

  else
  {
    MutableCopy = 0;
  }

  CFPreferencesSetAppValue(@"HCITraces", MutableCopy, @"com.apple.MobileBluetooth.debug");
  CFPreferencesAppSynchronize(@"com.apple.MobileBluetooth.debug");
  sub_100404A30(a1);
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (v4)
  {
    CFRelease(v4);
  }
}

void sub_100407628(uint64_t a1)
{
  v1 = *(a1 + 32);
  dispatch_source_cancel(*(v1 + 32));

  sub_1004074F4(v1);
}

void sub_100407664(uint64_t a1)
{
  v1 = *(a1 + 32);
  dispatch_release(*(v1 + 32));
  *(v1 + 32) = 0;
}

void sub_100407690(uint64_t a1, void *a2)
{
  v3 = a2;
  v32 = 0;
  sub_100007E30(buf, "FWStreamLogging");
  sub_100007E30(__p, "FWStreamLoggingBackupDelete");
  v4 = (*(*a1 + 72))(a1, buf, __p, &v32);
  if (v31 < 0)
  {
    operator delete(__p[0]);
  }

  if (v34 < 0)
  {
    operator delete(*buf);
  }

  if (v32 == 1)
  {
    v6 = +[NSFileManager defaultManager];
    v7 = [v6 fileExistsAtPath:@"/private/var/mobile/Library/Logs/Bluetooth/FWlogBackup"];

    if (v7)
    {
      v8 = +[NSFileManager defaultManager];
      v9 = [v8 removeItemAtPath:@"/private/var/mobile/Library/Logs/Bluetooth/FWlogBackup" error:0];

      if (v9)
      {
        v10 = qword_100BCE8D8;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = @"/private/var/mobile/Library/Logs/Bluetooth/FWlogBackup";
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Delete FW logging files under: %@", buf, 0xCu);
        }

        sub_100007E30(buf, "FWStreamLogging");
        sub_100007E30(__p, "FWStreamLoggingBackupDelete");
        v4 = (*(*a1 + 80))(a1, buf, __p, 0);
        if (v31 < 0)
        {
          operator delete(__p[0]);
        }

        if (v34 < 0)
        {
          operator delete(*buf);
        }
      }
    }
  }

  v29 = 0;
  if (sub_10009B9DC(v4, v5) == 8)
  {
    v11 = sub_10000E92C();
    v29 = (*(*v11 + 8))(v11) != 0;
  }

  v28 = 1;
  sub_100007E30(buf, "FWStreamLogging");
  sub_100007E30(__p, "FWStreamLoggingBackupEnable");
  (*(*a1 + 72))(a1, buf, __p, &v29);
  if (v31 < 0)
  {
    operator delete(__p[0]);
  }

  if (v34 < 0)
  {
    operator delete(*buf);
  }

  sub_100007E30(buf, "FWStreamLogging");
  sub_100007E30(__p, "FWStreamLoggingBackupAutoCleanup");
  (*(*a1 + 72))(a1, buf, __p, &v28);
  if (v31 < 0)
  {
    operator delete(__p[0]);
  }

  if (v34 < 0)
  {
    operator delete(*buf);
  }

  v12 = qword_100B6D6D0;
  if (v29)
  {
    if (!qword_100B6D6D0)
    {
      v13 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Enable fwLogsBackupTimer", buf, 2u);
      }

      v14 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, 0);
      qword_100B6D6D0 = v14;
      v15 = dispatch_time(0, 0);
      dispatch_source_set_timer(v14, v15, 0x6FC23AC00uLL, 0xF4240uLL);
      v16 = qword_100B6D6D0;
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_100407D50;
      v26[3] = &unk_100ADF820;
      v27 = v3;
      dispatch_source_set_event_handler(v16, v26);
      dispatch_activate(qword_100B6D6D0);
    }

    v17 = qword_100B6D6D8;
    if (v28 == 1)
    {
      if (!qword_100B6D6D8)
      {
        v18 = qword_100BCE8D8;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Enable fwLogsCleanupTimer", buf, 2u);
        }

        v19 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, 0);
        qword_100B6D6D8 = v19;
        v20 = dispatch_time(0, 0);
        dispatch_source_set_timer(v19, v20, 0x34630B8A000uLL, 0x3B9ACA00uLL);
        dispatch_source_set_event_handler(qword_100B6D6D8, &stru_100AF3428);
        dispatch_activate(qword_100B6D6D8);
      }

      goto LABEL_47;
    }

    if (!qword_100B6D6D8)
    {
      goto LABEL_47;
    }

    v25 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Disable fwLogsCleanupTimer", buf, 2u);
      v17 = qword_100B6D6D8;
    }

    v24 = v17;
LABEL_46:
    dispatch_source_cancel(v24);
    dispatch_release(qword_100B6D6D8);
    qword_100B6D6D8 = 0;
    goto LABEL_47;
  }

  if (qword_100B6D6D0)
  {
    v21 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Disable fwLogsBackupTimer", buf, 2u);
      v12 = qword_100B6D6D0;
    }

    dispatch_source_cancel(v12);
    dispatch_release(qword_100B6D6D0);
    qword_100B6D6D0 = 0;
  }

  v22 = qword_100B6D6D8;
  if (qword_100B6D6D8)
  {
    v23 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Disable fwLogsCleanupTimer", buf, 2u);
      v22 = qword_100B6D6D8;
    }

    v24 = v22;
    goto LABEL_46;
  }

LABEL_47:
}

void sub_100407CC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(a1);
}

void sub_100407D50(uint64_t a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "fwLogsBackupTimer timeout", buf, 2u);
  }

  v3 = +[NSFileManager defaultManager];
  v29 = 0;
  [v3 createDirectoryAtPath:@"/private/var/mobile/Library/Logs/Bluetooth/FWlogBackup" withIntermediateDirectories:1 attributes:0 error:&v29];
  v4 = v29;

  if (v4)
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100828F3C();
    }
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v5 = +[NSFileManager defaultManager];
    v6 = [NSURL fileURLWithPath:*(a1 + 32) isDirectory:1];
    obj = [v5 contentsOfDirectoryAtURL:v6 includingPropertiesForKeys:0 options:4 error:0];

    v4 = 0;
    v7 = [obj countByEnumeratingWithState:&v25 objects:v34 count:16];
    if (v7)
    {
      v8 = *v26;
      do
      {
        v9 = 0;
        v10 = v4;
        do
        {
          if (*v26 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v25 + 1) + 8 * v9);
          v12 = qword_100BCE8D8;
          if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v31 = v11;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Found FW logging file: %@", buf, 0xCu);
          }

          v13 = [(__CFString *)v11 lastPathComponent];
          v14 = [NSString stringWithFormat:@"%@/%@", @"/private/var/mobile/Library/Logs/Bluetooth/FWlogBackup", v13];

          v15 = +[NSFileManager defaultManager];
          v16 = [v15 fileExistsAtPath:v14];

          if (v16)
          {
            v17 = +[NSFileManager defaultManager];
            v18 = [v17 removeItemAtPath:v14 error:0];

            if (v18)
            {
              v19 = qword_100BCE8D8;
              if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v31 = v14;
                _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Delete duplicated FW logging file: %@", buf, 0xCu);
              }
            }
          }

          v20 = +[NSFileManager defaultManager];
          v21 = [NSURL fileURLWithPath:v14];
          v24 = v10;
          [v20 copyItemAtURL:v11 toURL:v21 error:&v24];
          v4 = v24;

          if (v4)
          {
            v22 = qword_100BCE8D8;
            if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v31 = @"/private/var/mobile/Library/Logs/Bluetooth/FWlogBackup";
              v32 = 2112;
              v33 = v4;
              _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Copying file to %@ with error %@", buf, 0x16u);
            }
          }

          v9 = v9 + 1;
          v10 = v4;
        }

        while (v7 != v9);
        v7 = [obj countByEnumeratingWithState:&v25 objects:v34 count:16];
      }

      while (v7);
    }
  }
}

void sub_1004081E8(id a1)
{
  v33 = +[NSFileManager defaultManager];
  v28 = [v33 contentsOfDirectoryAtPath:@"/private/var/mobile/Library/Logs/Bluetooth/FWlogBackup" error:0];
  v30 = +[NSMutableArray array];
  v44 = 0u;
  v42 = 0u;
  v43 = 0u;
  v41 = 0u;
  obj = v28;
  v1 = [obj countByEnumeratingWithState:&v41 objects:v52 count:16];
  if (v1)
  {
    v31 = 0;
    v2 = 0;
    v3 = *v42;
    do
    {
      for (i = 0; i != v1; i = i + 1)
      {
        if (*v42 != v3)
        {
          objc_enumerationMutation(obj);
        }

        v5 = [@"/private/var/mobile/Library/Logs/Bluetooth/FWlogBackup" stringByAppendingPathComponent:*(*(&v41 + 1) + 8 * i)];
        v40 = 0;
        [v33 fileExistsAtPath:v5 isDirectory:&v40];
        if ((v40 & 1) == 0)
        {
          v39 = v2;
          v6 = [v33 attributesOfItemAtPath:v5 error:&v39];
          v7 = v39;

          if (v7)
          {
            v8 = qword_100BCE8D8;
            if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
            {
              v9 = [v7 localizedDescription];
              *buf = 138412546;
              v47 = v5;
              v48 = 2112;
              v49 = v9;
              _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Error getting attributes for file at path: %@, Error: %@", buf, 0x16u);
            }
          }

          else
          {
            v10 = [v6 objectForKeyedSubscript:NSFileCreationDate];
            v11 = [v6 objectForKeyedSubscript:NSFileSize];
            v12 = [v11 unsignedLongLongValue];

            v50[0] = @"filePath";
            v50[1] = @"creationDate";
            v51[0] = v5;
            v51[1] = v10;
            v50[2] = @"fileSize";
            v13 = [NSNumber numberWithUnsignedLongLong:v12];
            v51[2] = v13;
            v14 = [NSDictionary dictionaryWithObjects:v51 forKeys:v50 count:3];
            [v30 addObject:v14];

            v31 += v12;
          }

          v2 = v7;
        }
      }

      v1 = [obj countByEnumeratingWithState:&v41 objects:v52 count:16];
    }

    while (v1);
  }

  else
  {
    v31 = 0;
    v2 = 0;
  }

  [v30 sortedArrayUsingComparator:&stru_100AF3468];
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v29 = v36 = 0u;
  v15 = [v29 countByEnumeratingWithState:&v35 objects:v45 count:16];
  if (v15)
  {
    v16 = *v36;
    while (2)
    {
      v17 = 0;
      v18 = v2;
      do
      {
        if (*v36 != v16)
        {
          objc_enumerationMutation(v29);
        }

        if (v31 < 0x280000001)
        {
          v2 = v18;
          goto LABEL_34;
        }

        v19 = *(*(&v35 + 1) + 8 * v17);
        v20 = [v19 objectForKeyedSubscript:@"filePath"];
        v21 = [v19 objectForKeyedSubscript:@"fileSize"];
        v22 = [v21 unsignedLongLongValue];

        v34 = v18;
        v23 = [v33 removeItemAtPath:v20 error:&v34];
        v2 = v34;

        if (v2)
        {
          v23 = 0;
        }

        v24 = qword_100BCE8D8;
        v25 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
        if (v23)
        {
          if (v25)
          {
            *buf = 138412546;
            v47 = v20;
            v48 = 2048;
            v49 = v22;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Deleted file: %@ (size: %llu bytes)", buf, 0x16u);
          }

          v31 -= v22;
        }

        else if (v25)
        {
          v26 = [v2 localizedDescription];
          *buf = 138412546;
          v47 = v20;
          v48 = 2112;
          v49 = v26;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Error deleting file at path: %@, Error: %@", buf, 0x16u);
        }

        v17 = v17 + 1;
        v18 = v2;
      }

      while (v15 != v17);
      v15 = [v29 countByEnumeratingWithState:&v35 objects:v45 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

LABEL_34:

  v27 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v47 = v31;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Final total size: %llu bytes", buf, 0xCu);
  }
}

int64_t sub_1004088A0(id a1, id a2, id a3)
{
  v4 = a3;
  v5 = [a2 objectForKeyedSubscript:@"creationDate"];
  v6 = [v4 objectForKeyedSubscript:@"creationDate"];
  v7 = [v5 compare:v6];

  return v7;
}

void sub_100408920(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_10040894C(_BYTE *a1, int a2)
{
  v4 = sub_10000E92C();
  a1[200] = (*(*v4 + 16))(v4);
  v5 = a1 + 200;
  sub_100007E30(&buf, "FWStreamLogging");
  sub_100007E30(__p, "FWCoreDumpEnable");
  (*(*a1 + 72))(a1, &buf, __p, a1 + 200);
  if (v94 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  v6 = sub_1001BBF78(a1[200]);
  if ((a1[88] & 1) == 0)
  {
    return;
  }

  v8 = sub_10000C7D0(v6, v7);
  if (*(v8 + 800) >= 0x7D0u)
  {
    v8 = sub_10000C7D0(v8, v9);
    if (*(v8 + 800) <= 0xF9Fu)
    {
      v8 = sub_10000C7D0(v8, v9);
      if (*(v8 + 800) >= 0xBB8u)
      {
        if (a2)
        {
          v10 = sub_10000E92C();
          LOBYTE(v81[0]) = (*(*v10 + 8))(v10);
          sub_100007E30(&buf, "FWStreamLogging");
          sub_100007E30(__p, "FWEnhancedLoggingEnable");
          v11 = (*(*a1 + 72))(a1, &buf, __p, v81);
          if (v94 < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
          }

          v13 = LOBYTE(v81[0]);
          a1[184] = v81[0];
          if (v13 == 1)
          {
            v14 = sub_10000C7D0(v11, v12);
            if ((*(*v14 + 1440))(v14, 255, 1, 1, 0, 8, 1))
            {
              if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
              {
                sub_100828FBC();
              }
            }
          }
        }

        v15 = sub_10000E92C();
        *v5 = (*(*v15 + 16))(v15);
        sub_100007E30(&buf, "FWStreamLogging");
        sub_100007E30(__p, "FWCoreDumpEnable");
        (*(*a1 + 72))(a1, &buf, __p, a1 + 200);
        if (v94 < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }

        sub_1001BBF78(a1[200]);
        sub_100407690(a1, @"/private/var/log/CoreCapture/com.apple.driver.AppleCentauriBeta/BetaFirmwareLogs");
        return;
      }
    }
  }

  v16 = sub_10000C7D0(v8, v9);
  if (*(v16 + 800) >> 3 < 0x271u || (v16 = sub_10000C7D0(v16, v17), *(v16 + 800) >> 4 > 0x176u))
  {
    v34 = sub_10000C7D0(v16, v17);
    if (sub_100410F0C(v34, v35))
    {
      v36 = sub_10000E92C();
      LOBYTE(v81[0]) = (*(*v36 + 8))(v36);
      sub_100007E30(&buf, "Enable FW Logs");
      sub_100007E30(__p, "FWEnhancedLoggingEnable");
      v37 = (*(*a1 + 72))(a1, &buf, __p, v81);
      v39 = v37;
      if (v94 < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }

      v40 = a1[184];
      v41 = v40 != LOBYTE(v81[0]);
      if (v40 != LOBYTE(v81[0]))
      {
        a1[184] = v81[0];
      }

      v42 = sub_10000C798(v37, v38);
      v43 = (*(*v42 + 416))(v42);
      if (v43 && (v45 = sub_10000E92C(), v43 = (*(*v45 + 8))(v45), v43))
      {
        v43 = sub_10000C7D0(v43, v44);
        v46 = *(v43 + 800) > 0x16u;
      }

      else
      {
        v46 = 0;
      }

      if (a1[184] == 1)
      {
        if (*(sub_10000C7D0(v43, v44) + 800) == 15)
        {
          v47 = 2048;
        }

        else
        {
          v47 = 3072;
        }

        if (*(a1 + 47) != v47)
        {
          *(a1 + 47) = v47;
          v41 = 1;
        }

        if (*(a1 + 48) != 4)
        {
          *(a1 + 48) = 4;
          v41 = 1;
        }

        v92 = v46;
        v91 = v46;
        v90 = v46;
        v89 = 0;
        v88 = v46;
        v87 = v46;
        v86 = 0;
        v85 = 0;
        v84 = v46;
        v83 = 0;
        sub_100007E30(&buf, "Route to HCI");
        sub_100007E30(__p, "FWEnhancedLoggingEnable");
        (*(*a1 + 72))(a1, &buf, __p, &v92);
        if (v94 < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }

        v48 = v92;
        sub_100007E30(&buf, "Log Level Lite");
        sub_100007E30(__p, "FWEnhancedLoggingEnable");
        (*(*a1 + 72))(a1, &buf, __p, &v91);
        if (v94 < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }

        v49 = v91;
        sub_100007E30(&buf, "Log Level Advanced");
        sub_100007E30(__p, "FWEnhancedLoggingEnable");
        (*(*a1 + 72))(a1, &buf, __p, &v90);
        if (v94 < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }

        v50 = v90;
        sub_100007E30(&buf, "Voice");
        sub_100007E30(__p, "FWEnhancedLoggingEnable");
        (*(*a1 + 72))(a1, &buf, __p, &v89);
        if (v94 < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }

        v51 = v89;
        sub_100007E30(&buf, "CoEx");
        sub_100007E30(__p, "FWEnhancedLoggingEnable");
        (*(*a1 + 72))(a1, &buf, __p, &v88);
        if (v94 < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }

        v52 = v88;
        sub_100007E30(&buf, "CoEx1");
        sub_100007E30(__p, "FWEnhancedLoggingEnable");
        (*(*a1 + 72))(a1, &buf, __p, &v87);
        if (v94 < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }

        v78 = v87;
        sub_100007E30(&buf, "CoEx2");
        sub_100007E30(__p, "FWEnhancedLoggingEnable");
        (*(*a1 + 72))(a1, &buf, __p, &v86 + 1);
        if (v94 < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }

        v77 = HIBYTE(v86);
        sub_100007E30(&buf, "LTE CoEx");
        sub_100007E30(__p, "FWEnhancedLoggingEnable");
        (*(*a1 + 72))(a1, &buf, __p, &v86);
        if (v94 < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }

        v76 = v86;
        sub_100007E30(&buf, "Apipe");
        sub_100007E30(__p, "FWEnhancedLoggingEnable");
        (*(*a1 + 72))(a1, &buf, __p, &v85);
        if (v94 < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }

        v75 = v85;
        sub_100007E30(&buf, "Non Connection");
        sub_100007E30(__p, "FWEnhancedLoggingEnable");
        (*(*a1 + 72))(a1, &buf, __p, &v84);
        v74 = v52;
        if (v94 < 0)
        {
          operator delete(__p[0]);
        }

        v53 = v51;
        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }

        v54 = v84;
        sub_100007E30(&buf, "Scan Core");
        v73 = a2;
        sub_100007E30(__p, "FWEnhancedLoggingEnable");
        v55 = v46;
        (*(*a1 + 72))(a1, &buf, __p, &v83 + 1);
        v56 = v41;
        if (v94 < 0)
        {
          operator delete(__p[0]);
        }

        v57 = v39;
        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }

        v58 = HIBYTE(v83);
        sub_100007E30(&buf, "HP Link");
        sub_100007E30(__p, "FWEnhancedLoggingEnable");
        v43 = (*(*a1 + 72))(a1, &buf, __p, &v83);
        v59 = v48 | (2 * v49) | (4 * v50) | (8 * v53) | (16 * v74) | (32 * v78) | (v77 << 6) | (v76 << 7) | (v75 << 8) | (v54 << 9);
        if (v94 < 0)
        {
          operator delete(__p[0]);
        }

        v60 = v59 | (v58 << 10);
        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }

        v61 = v60 | (v83 << 12);
        v39 = v57;
        v41 = v56;
        if (*(a1 + 49) != v61)
        {
          *(a1 + 49) = v61;
          v41 = 1;
        }

        v46 = v55;
        a2 = v73;
      }

      if (v41 || a2)
      {
        if (a1[184] == 1)
        {
          v62 = sub_10000C7D0(v43, v44);
          v43 = (*(*v62 + 1280))(v62, 0, 0, 0);
        }

        v63 = sub_10000C7D0(v43, v44);
        v64 = (*(*v63 + 1280))(v63, a1[184], *(a1 + 47), *(a1 + 48));
        if (a1[184] == 1)
        {
          v66 = sub_10000C7D0(v64, v65);
          if ((v39 | v46))
          {
            v67 = *(a1 + 49);
          }

          else
          {
            v67 = 2;
          }

          (*(*v66 + 3960))(v66, v67);
        }
      }
    }

    v92 = 0;
    sub_100007E30(&buf, "FWStreamLogging");
    sub_100007E30(__p, "FWStreamLoggingTriggerLogDump");
    (*(*a1 + 72))(a1, &buf, __p, &v92);
    if (v94 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    if (v92 != 1)
    {
LABEL_146:
      v91 = 0;
      sub_100007E30(&buf, "FWStreamLogging");
      sub_100007E30(__p, "FWCoreDumpTrigger");
      (*(*a1 + 72))(a1, &buf, __p, &v91);
      if (v94 < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }

      if (!v91)
      {
        return;
      }

      sub_100007E30(&buf, "FWStreamLogging");
      sub_100007E30(__p, "FWCoreDumpTrigger");
      (*(*a1 + 80))(a1, &buf, __p, 0);
      if (v94 < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }

      memset(&buf, 0, sizeof(buf));
      sub_100007E30(__p, "FWStreamLogging");
      sub_100007E30(v81, "FWCoreDumpReason");
      v71 = (*(*a1 + 56))(a1, __p, v81, &buf);
      if (v82 < 0)
      {
        operator delete(v81[0]);
      }

      if (v94 < 0)
      {
        operator delete(__p[0]);
        if (v71)
        {
LABEL_162:
          block[0] = _NSConcreteStackBlock;
          block[1] = 3321888768;
          block[2] = sub_100409E40;
          block[3] = &unk_100AF3488;
          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            sub_100008904(&v80, buf.__r_.__value_.__l.__data_, buf.__r_.__value_.__l.__size_);
          }

          else
          {
            v80 = buf;
          }

          global_queue = dispatch_get_global_queue(0, 0);
          dispatch_async(global_queue, block);
          if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v80.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
          }

          return;
        }
      }

      else if (v71)
      {
        goto LABEL_162;
      }

      std::string::assign(&buf, "Manually triggered core dump");
      goto LABEL_162;
    }

    sub_100007E30(&buf, "FWStreamLogging");
    sub_100007E30(__p, "FWStreamLoggingTriggerLogDump");
    (*(*a1 + 80))(a1, &buf, __p, 0);
    if (v94 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    memset(&buf, 0, sizeof(buf));
    sub_100007E30(__p, "FWStreamLogging");
    sub_100007E30(v81, "FWStreamLoggingLogDumpReason");
    v69 = (*(*a1 + 56))(a1, __p, v81, &buf);
    if (v82 < 0)
    {
      operator delete(v81[0]);
    }

    if (v94 < 0)
    {
      operator delete(__p[0]);
      if (v69)
      {
        goto LABEL_141;
      }
    }

    else if (v69)
    {
LABEL_141:
      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_buf = &buf;
      }

      else
      {
        p_buf = buf.__r_.__value_.__r.__words[0];
      }

      (*(*a1 + 504))(a1, p_buf);
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }

      goto LABEL_146;
    }

    std::string::assign(&buf, "Manually triggered log dump");
    goto LABEL_141;
  }

  v18 = sub_10000E92C();
  *v5 = (*(*v18 + 16))(v18);
  sub_100007E30(&buf, "FWStreamLogging");
  sub_100007E30(__p, "FWCoreDumpEnable");
  (*(*a1 + 72))(a1, &buf, __p, a1 + 200);
  if (v94 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  sub_1001BBF78(a1[200]);
  sub_100407690(a1, @"/private/var/log/CoreCapture/com.apple.KalBluetooth_driver/FwLogs");
  if (a2)
  {
    v19 = sub_10000E92C();
    v92 = (*(*v19 + 16))(v19);
    sub_100007E30(&buf, "FWStreamLogging");
    sub_100007E30(__p, "FWEnhancedLoggingEnable");
    (*(*a1 + 72))(a1, &buf, __p, &v92);
    if (v94 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    v20 = v92;
    a1[184] = v92;
    if (v20 != 1)
    {
      v68 = qword_100BCE8D8;
      if (!os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      v31 = "SRS FW log disabled";
      v32 = v68;
      v33 = 2;
      goto LABEL_122;
    }

    LODWORD(v81[0]) = 2;
    sub_100007E30(&buf, "FWStreamLogging");
    sub_100007E30(__p, "FWLogLevel");
    v21 = (*(*a1 + 128))(a1, &buf, __p, v81);
    if (v94 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    v23 = sub_10000C7D0(v21, v22);
    v24 = (*(*v23 + 4200))(v23, 0, 2);
    if (LODWORD(v81[0]))
    {
      v26 = sub_10000C7D0(v24, v25);
      v27 = (*(*v26 + 4208))(v26);
      v29 = sub_10000C7D0(v27, v28);
      (*(*v29 + 4200))(v29, LOBYTE(v81[0]), 2);
    }

    v30 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf.__r_.__value_.__l.__data_) = 67109120;
      HIDWORD(buf.__r_.__value_.__r.__words[0]) = v81[0];
      v31 = "SRS FW log enabled, logLevel = %d";
      v32 = v30;
      v33 = 8;
LABEL_122:
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, v31, &buf, v33);
    }
  }
}