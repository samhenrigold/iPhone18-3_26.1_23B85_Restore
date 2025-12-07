void sub_10030B8E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  std::mutex::unlock((v33 + 152));
  sub_10030C934(&a33);
  sub_10022A868(&a25);
  _Unwind_Resume(a1);
}

uint64_t sub_10030B99C(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = (a1 + 88);
  if (v1 == (a1 + 88))
  {
    return 0;
  }

  do
  {
    result = *(v1 + 26);
    if (result)
    {
      break;
    }

    v4 = v1[1];
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
        v5 = v1[2];
        v6 = *v5 == v1;
        v1 = v5;
      }

      while (!v6);
    }

    v1 = v5;
  }

  while (v5 != v2);
  return result;
}

uint64_t sub_10030B9F8(uint64_t a1)
{
  v1 = *(a1 + 128);
  v2 = (a1 + 136);
  if (v1 == (a1 + 136))
  {
    return 0;
  }

  do
  {
    result = *(v1 + 26);
    if (result)
    {
      break;
    }

    v4 = v1[1];
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
        v5 = v1[2];
        v6 = *v5 == v1;
        v1 = v5;
      }

      while (!v6);
    }

    v1 = v5;
  }

  while (v5 != v2);
  return result;
}

uint64_t sub_10030BA54(uint64_t a1)
{
  std::mutex::lock((a1 + 152));
  if (*(a1 + 31) < 0)
  {
    **(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  else
  {
    *(a1 + 8) = 0;
    *(a1 + 31) = 0;
  }

  *buf = &unk_10056B648;
  v2 = sub_10030C984(a1 + 56, &unk_10056B648, &unk_100548C50, buf);
  *buf = &unk_10056B658;
  *(sub_1001BF9A0((v2 + 5), &unk_10056B658, &unk_100548C50, buf) + 32) = 0;
  *buf = &unk_10056B649;
  v3 = sub_10030C984(a1 + 56, &unk_10056B649, &unk_100548C50, buf);
  *buf = &unk_10056B658;
  *(sub_1001BF9A0((v3 + 5), &unk_10056B658, &unk_100548C50, buf) + 32) = 0;
  *buf = byte_10056B64A;
  v4 = sub_10030C984(a1 + 104, byte_10056B64A, &unk_100548C50, buf);
  *buf = &unk_10056B658;
  *(sub_1001BF9A0((v4 + 5), &unk_10056B658, &unk_100548C50, buf) + 32) = 0;
  v5 = sub_10030AA94(a1);
  v6 = v5 & 1;
  if ((*(a1 + 216) & 1) == 0)
  {
    v7 = qword_1009F4D58;
    if (os_log_type_enabled(qword_1009F4D58, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *&buf[4] = v5 & 1;
      v10 = 1024;
      v11 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "regulatory,settings,clearIsoCountry,isChannelSettingChanged,%d,isPowerTableChanged,%d", buf, 0xEu);
    }

    if ((*(a1 + 216) & 1) == 0)
    {
      v6 = 0;
    }
  }

  std::mutex::unlock((a1 + 152));
  return v6 & 0xFFFEFFFF | (((v5 >> 8) & 1) << 16);
}

uint64_t sub_10030BC60(uint64_t a1)
{
  if (sub_10030B99C(a1))
  {
    return 1;
  }

  __p = 0;
  v25 = 0;
  v26 = 0;
  v5 = *(a1 + 64);
  v4 = a1 + 64;
  v3 = v5;
  if (!v5)
  {
    goto LABEL_33;
  }

  v6 = v4;
  do
  {
    v7 = *(v3 + 32);
    v8 = v7 >= 9;
    v9 = v7 < 9;
    if (v8)
    {
      v6 = v3;
    }

    v3 = *(v3 + 8 * v9);
  }

  while (v3);
  if (v6 == v4 || *(v6 + 32) >= 0xAu)
  {
LABEL_33:
    sub_1004BD708();
  }

  sub_10030CCDC(&v22, v6 + 40);
  v10 = v22;
  if (v22 != v23)
  {
    do
    {
      if ((v10[8] & 1) == 0)
      {
        sub_1002856D8(&__p, v10 + 7);
      }

      v11 = *(v10 + 1);
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
          v12 = *(v10 + 2);
          v15 = *v12 == v10;
          v10 = v12;
        }

        while (!v15);
      }

      v10 = v12;
    }

    while (v12 != v23);
  }

  v13 = __p;
  v14 = __p + 4;
  v15 = __p == v25 || v14 == v25;
  if (!v15)
  {
    v16 = *__p;
    v17 = __p + 4;
    do
    {
      v19 = *v17;
      v17 += 4;
      v18 = v19;
      v20 = v16 < v19;
      if (v16 <= v19)
      {
        v16 = v18;
      }

      if (v20)
      {
        v13 = v14;
      }

      v14 = v17;
    }

    while (v17 != v25);
  }

  v21 = *v13;
  sub_10002074C(&v22, v23[0]);
  if (__p)
  {
    v25 = __p;
    operator delete(__p);
  }

  return v21 << 32;
}

void sub_10030BDAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10030BDDC(uint64_t a1)
{
  if (sub_10030B9F8(a1))
  {
    return 1;
  }

  __p = 0;
  v22 = 0;
  v23 = 0;
  v5 = *(a1 + 112);
  v4 = a1 + 112;
  v3 = v5;
  if (!v5)
  {
    goto LABEL_32;
  }

  v6 = v4;
  do
  {
    if (*(v3 + 32))
    {
      v6 = v3;
    }

    v3 = *(v3 + 8 * (*(v3 + 32) == 0));
  }

  while (v3);
  if (v6 == v4 || *(v6 + 32) >= 2u)
  {
LABEL_32:
    sub_1004BD734();
  }

  sub_10030CCDC(&v19, v6 + 40);
  v7 = v19;
  if (v19 != v20)
  {
    do
    {
      if ((v7[8] & 1) == 0)
      {
        sub_1002856D8(&__p, v7 + 7);
      }

      v8 = *(v7 + 1);
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
          v9 = *(v7 + 2);
          v12 = *v9 == v7;
          v7 = v9;
        }

        while (!v12);
      }

      v7 = v9;
    }

    while (v9 != v20);
  }

  v10 = __p;
  v11 = __p + 4;
  v12 = __p == v22 || v11 == v22;
  if (!v12)
  {
    v13 = *__p;
    v14 = __p + 4;
    do
    {
      v16 = *v14;
      v14 += 4;
      v15 = v16;
      v17 = v13 < v16;
      if (v13 <= v16)
      {
        v13 = v15;
      }

      if (v17)
      {
        v10 = v11;
      }

      v11 = v14;
    }

    while (v14 != v22);
  }

  v18 = *v10;
  sub_10002074C(&v19, v20[0]);
  if (__p)
  {
    v22 = __p;
    operator delete(__p);
  }

  return v18 << 32;
}

void sub_10030BF28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10030BF58(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  std::mutex::lock((a1 + 152));
  *(a2 + 32) = 0;
  *(a2 + 4) = 0;
  *(a2 + 8) = 0;
  *(a2 + 12) = 0;
  *(a2 + 16) = 0;
  *(a2 + 20) = 0;
  *(a2 + 24) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  if ((*(a1 + 216) & 1) == 0)
  {
    v4 = qword_1009F4D58;
    if (os_log_type_enabled(qword_1009F4D58, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "regulatory,settings,getRegulatorySettingsLocked", buf, 2u);
    }
  }

  *(a1 + 216) = 1;
  if (sub_10045C288())
  {
    v5 = qword_1009F4D58;
    if (os_log_type_enabled(qword_1009F4D58, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PRRegulatorySettings: bypassing regulatory compliance requirements via defaults write.", v9, 2u);
    }

    *a2 = 257;
    *(a2 + 4) = 1;
    *(a2 + 8) = 0;
    *(a2 + 12) = 0;
    *(a2 + 16) = 1;
    *(a2 + 20) = 0;
    *(a2 + 24) = 0;
    std::string::assign((a2 + 32), "US");
    v6 = 0;
    *(a2 + 56) = 0;
    *(a2 + 60) = 0;
  }

  else
  {
    *a2 = sub_10030B99C(a1);
    *(a2 + 1) = sub_10030B9F8(a1);
    *(a2 + 4) = sub_10030BC60(a1);
    *(a2 + 12) = v7;
    *(a2 + 16) = sub_10030BDDC(a1);
    *(a2 + 24) = v8;
    std::string::operator=((a2 + 32), (a1 + 8));
    *(a2 + 56) = *(a1 + 32);
    *(a2 + 57) = *(a1 + 33);
    *(a2 + 60) = *(a1 + 36);
    if (*(a1 + 44) == 1)
    {
      v6 = *(a1 + 40);
    }

    else
    {
      v6 = 0;
    }
  }

  *(a2 + 64) = v6;
  std::mutex::unlock((a1 + 152));
}

void sub_10030C118(_Unwind_Exception *a1)
{
  if (*(v2 + 55) < 0)
  {
    operator delete(*v3);
  }

  std::mutex::unlock((v1 + 152));
  _Unwind_Resume(a1);
}

NSMutableArray *sub_10030C144(uint64_t a1)
{
  std::mutex::lock((a1 + 152));
  v2 = objc_opt_new();
  v3 = (a1 + 8);
  if (*(a1 + 31) < 0)
  {
    v3 = *v3;
  }

  v4 = v30;
  sub_100457E08(*(a1 + 32), v30);
  if (v31 < 0)
  {
    v4 = v30[0];
  }

  sub_100457E78(*(a1 + 33), v28);
  v5 = v29;
  v6 = v28[0];
  sub_100457E40(*(a1 + 34), __p);
  v7 = v28;
  if (v5 < 0)
  {
    v7 = v6;
  }

  if (v27 >= 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  v9 = [NSString stringWithFormat:@"Country: %s. UWB-reg group: %s. NB-reg group: %s. NB-SAR group: %s. Rose ready: %d", v3, v4, v7, v8, *(a1 + 216)];
  [v2 addObject:v9];

  if (v27 < 0)
  {
    operator delete(__p[0]);
  }

  if (v29 < 0)
  {
    operator delete(v28[0]);
  }

  if (v31 < 0)
  {
    operator delete(v30[0]);
  }

  if (*(a1 + 44) == 1)
  {
    v10 = *(a1 + 40);
  }

  else
  {
    v10 = 0;
  }

  v11 = *(a1 + 36);
  sub_10041C9CC(v10);
  if (v31 >= 0)
  {
    v12 = v30;
  }

  else
  {
    v12 = v30[0];
  }

  v13 = [NSString stringWithFormat:@"Accessory: %d (%s). Switch: %d. Airplane mode: %d. Region allowed: %d", v11, v12, *(a1 + 48), *(a1 + 49), *(a1 + 50)];
  [v2 addObject:v13];

  if (v31 < 0)
  {
    operator delete(v30[0]);
  }

  LOBYTE(__p[0]) = 5;
  v30[0] = __p;
  v14 = *(sub_10030CB30(a1 + 80, __p, &unk_100548C50, v30) + 26);
  v25 = 9;
  v30[0] = &v25;
  v15 = *(sub_10030CB30(a1 + 80, &v25, &unk_100548C50, v30) + 26);
  v24 = 1;
  v30[0] = &v24;
  v16 = [NSString stringWithFormat:@"Channel state: CH5 %d, CH9 %d, UNII-3 %d. Preference strings:", v14, v15, *(sub_10030CB30(a1 + 128, &v24, &unk_100548C50, v30) + 26)];
  [v2 addObject:v16];

  sub_10030A688(a1, 5);
  if (v31 >= 0)
  {
    v17 = v30;
  }

  else
  {
    v17 = v30[0];
  }

  v18 = [NSString stringWithFormat:@"    %s", v17];
  [v2 addObject:v18];

  if (v31 < 0)
  {
    operator delete(v30[0]);
  }

  sub_10030A688(a1, 9);
  if (v31 >= 0)
  {
    v19 = v30;
  }

  else
  {
    v19 = v30[0];
  }

  v20 = [NSString stringWithFormat:@"    %s", v19];
  [v2 addObject:v20];

  if (v31 < 0)
  {
    operator delete(v30[0]);
  }

  sub_100309FC4(a1, 1);
  if (v31 >= 0)
  {
    v21 = v30;
  }

  else
  {
    v21 = v30[0];
  }

  v22 = [NSString stringWithFormat:@"    %s", v21];
  [v2 addObject:v22];

  if (v31 < 0)
  {
    operator delete(v30[0]);
  }

  std::mutex::unlock((a1 + 152));

  return v2;
}

void sub_10030C51C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  v36 = v35;

  if (a33 < 0)
  {
    operator delete(__p);
  }

  std::mutex::unlock((v33 + 152));
  _Unwind_Resume(a1);
}

uint64_t *sub_10030C5EC(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
LABEL_8:
    sub_10030C6A0();
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

uint64_t *sub_10030C738(uint64_t a1, int *a2, uint64_t a3)
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
      v6 = *(v3 + 28);
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

uint64_t *sub_10030C80C(uint64_t a1, int a2, char a3)
{
  v15 = 1;
  v5 = *(*a1 + 112);
  v6 = *a1 + 104;
  if (!v5)
  {
    goto LABEL_8;
  }

  v7 = *a1 + 112;
  do
  {
    if (*(v5 + 32))
    {
      v7 = v5;
    }

    v5 = *(v5 + 8 * (*(v5 + 32) == 0));
  }

  while (v5);
  if (v7 == *a1 + 112 || *(v7 + 32) >= 2u)
  {
LABEL_8:
    v11[0] = 0;
    v11[1] = 0;
    v10 = v11;
    LOBYTE(v12) = 1;
    v14[0] = 0;
    v14[1] = 0;
    v13 = v14;
    sub_10030C5EC(v6, &v12, &v12);
    sub_10002074C(&v13, v14[0]);
    sub_10002074C(&v10, v11[0]);
  }

  v12 = &v15;
  v8 = sub_10030C984(v6, &v15, &unk_100548C50, &v12);
  LODWORD(v12) = a2;
  BYTE4(v12) = a3;
  return sub_10030C738((v8 + 5), &v12, &v12);
}

void sub_10030C910(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  sub_10002074C(v14 + 8, a14);
  sub_10002074C(&a9, a10);
  _Unwind_Resume(a1);
}

uint64_t sub_10030C934(uint64_t a1)
{
  sub_10002074C(a1 + 48, *(a1 + 56));
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

uint64_t *sub_10030C984(uint64_t a1, unsigned __int8 *a2, uint64_t a3, _BYTE **a4)
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
      v7 = *(v4 + 32);
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

uint64_t *sub_10030CA64(uint64_t a1, unsigned __int8 *a2, _WORD *a3)
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
      v6 = *(v3 + 25);
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

uint64_t *sub_10030CB30(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unsigned __int8 **a4)
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
      v7 = *(v4 + 25);
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

uint64_t *sub_10030CC04(uint64_t a1, unsigned __int8 *a2, uint64_t a3, _BYTE **a4)
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
      v7 = *(v4 + 25);
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

void *sub_10030CCDC(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_10030CD34(a1, *a2, (a2 + 8));
  return a1;
}

void *sub_10030CD34(void *result, int *a2, int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_10030CDBC(v5, (v5 + 8), v4 + 7, v4 + 7);
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
    }

    while (v7 != a3);
  }

  return result;
}

void *sub_10030CDBC(uint64_t **a1, uint64_t *a2, int *a3, void *a4)
{
  v4 = *sub_1001BD1C8(a1, a2, &v7, &v6, a3);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

void sub_10030CE54()
{
  v0 = objc_autoreleasePoolPush();
  qword_1009F4D58 = os_log_create("com.apple.nearbyd", "Regulatory");

  objc_autoreleasePoolPop(v0);
}

void sub_10030D218(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id a25)
{
  _Block_object_dispose(&a20, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_10030D27C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void **sub_10030D340(void **a1)
{
  v3 = a1;
  sub_10030E938(&v3);
  return a1;
}

uint64_t sub_10030D378(uint64_t a1)
{
  v3 = (a1 + 24);
  sub_10030E938(&v3);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

dispatch_queue_t *sub_10030D3F0(dispatch_queue_t *a1)
{
  *a1 = dispatch_queue_create("com.apple.nearbyd.ota.queue", 0);
  v2 = +[BGSystemTaskScheduler sharedScheduler];
  [v2 deregisterTaskWithIdentifier:@"com.apple.nearbyd.ota.task"];

  v3 = +[BGSystemTaskScheduler sharedScheduler];
  v4 = *a1;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10030D508;
  v6[3] = &unk_1009A0888;
  v6[4] = a1;
  [v3 registerForTaskWithIdentifier:@"com.apple.nearbyd.ota.task" usingQueue:v4 launchHandler:v6];

  dispatch_async(*a1, &stru_1009A4820);
  sub_10030D7C8(a1);
  return a1;
}

void sub_10030D510(dispatch_queue_t *a1, void *a2)
{
  v3 = a2;
  v4 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#ota,start to query ota files", buf, 2u);
  }

  *buf = 0;
  v18 = buf;
  v19 = 0x2020000000;
  v20 = 0;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10030DC34;
  v16[3] = &unk_1009A4848;
  v16[4] = buf;
  [v3 setExpirationHandler:v16];
  v6 = qword_1009F4E80;
  if (qword_1009F4E80 != &unk_1009F4E88)
  {
    *&v5 = 136315138;
    v15 = v5;
    while (1)
    {
      v7 = v18[24];
      v8 = qword_1009F9820;
      v9 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT);
      if (v7 == 1)
      {
        break;
      }

      if (v9)
      {
        v10 = v6 + 32;
        if (*(v6 + 55) < 0)
        {
          v10 = *(v6 + 32);
        }

        *v21 = v15;
        v22 = v10;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#ota,query %s", v21, 0xCu);
      }

      sub_10030DC48(a1, (v6 + 32), (v6 + 56));
      v11 = *(v6 + 8);
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
          v12 = *(v6 + 16);
          v13 = *v12 == v6;
          v6 = v12;
        }

        while (!v13);
      }

      v6 = v12;
      if (v12 == &unk_1009F4E88)
      {
        goto LABEL_19;
      }
    }

    if (v9)
    {
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#ota,task expiration, terminate file query", v21, 2u);
    }
  }

LABEL_19:
  [v3 setTaskCompleted];
  v14 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#ota,task complete", v21, 2u);
  }

  _Block_object_dispose(buf, 8);
}

void sub_10030D7A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_10030D7C8(NSObject **a1)
{
  v2 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#ota,query configurable parameters on startup", buf, 2u);
  }

  v3 = *a1;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10030D980;
  block[3] = &unk_10098AD98;
  block[4] = a1;
  dispatch_async(v3, block);
}

id *sub_10030D88C(id *a1)
{
  v2 = +[BGSystemTaskScheduler sharedScheduler];
  v3 = [v2 deregisterTaskWithIdentifier:@"com.apple.nearbyd.ota.task"];

  v4 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#ota,deregister %d in destructor", v6, 8u);
  }

  return a1;
}

void sub_10030D970(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_100020444(a1);
}

void sub_10030D988(dispatch_queue_t *a1)
{
  v2 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#ota,query all files", v7, 2u);
  }

  dispatch_assert_queue_V2(*a1);
  v3 = qword_1009F4E80;
  if (qword_1009F4E80 != &unk_1009F4E88)
  {
    do
    {
      sub_10030DC48(a1, (v3 + 32), (v3 + 56));
      v4 = *(v3 + 8);
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
          v5 = *(v3 + 16);
          v6 = *v5 == v3;
          v3 = v5;
        }

        while (!v6);
      }

      v3 = v5;
    }

    while (v5 != &unk_1009F4E88);
  }
}

void sub_10030DA68(id a1)
{
  v1 = +[BGSystemTaskScheduler sharedScheduler];
  v2 = [v1 taskRequestForIdentifier:@"com.apple.nearbyd.ota.task"];

  if (v2)
  {
    v3 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#ota,task already submitted, return", buf, 2u);
    }
  }

  else
  {
    v4 = [[BGRepeatingSystemTaskRequest alloc] initWithIdentifier:@"com.apple.nearbyd.ota.task"];
    [v4 setInterval:86400.0];
    [v4 setMinDurationBetweenInstances:69120.0];
    [v4 setPriority:2];
    [v4 setPreventsDeviceSleep:0];
    [v4 setShouldWakeDevice:0];
    v5 = +[BGSystemTaskScheduler sharedScheduler];
    v10 = 0;
    v6 = [v5 submitTaskRequest:v4 error:&v10];
    v7 = v10;

    v8 = qword_1009F9820;
    if (v6)
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#ota,submitted ota query task successfully", v9, 2u);
      }
    }

    else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004BD7D8(v7, v8);
    }
  }
}

void sub_10030DC48(dispatch_queue_t *a1, char *a2, void *a3)
{
  dispatch_assert_queue_V2(*a1);
  v5 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    if (a2[23] >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    *cf = 136315138;
    *&cf[4] = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#ota,query file %s", cf, 0xCu);
  }

  if (a2[23] >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  v8 = +[NSString stringWithCString:encoding:](NSString, "stringWithCString:encoding:", v7, +[NSString defaultCStringEncoding]);
  v9 = CLCopyNearbyAssetSettingsOfAccessoryFile();
  v10 = v9;
  if (v9)
  {
    v11 = CFGetTypeID(v9);
    if (v11 == CFDictionaryGetTypeID())
    {
      *cf = 0;
      if (a2[23] >= 0)
      {
        v12 = a2;
      }

      else
      {
        v12 = *a2;
      }

      v13 = CFStringCreateWithCString(kCFAllocatorDefault, v12, 0x8000100u);
      if (CFDictionaryGetValueIfPresent(v10, v13, cf))
      {
        if (*cf)
        {
          v14 = CFGetTypeID(*cf);
          TypeID = CFDataGetTypeID();
          if (v14 == TypeID)
          {
            sub_10030DE64(TypeID, *cf, a2, a3);
          }
        }
      }

      if (v13)
      {
        CFRelease(v13);
      }

LABEL_23:
      CFRelease(v10);
      goto LABEL_24;
    }
  }

  v16 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *cf = 0;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#ota,empty file content", cf, 2u);
  }

  if (v10)
  {
    goto LABEL_23;
  }

LABEL_24:
}

void sub_10030DE64(uint64_t a1, void *a2, uint64_t *a3, void *a4)
{
  v49 = a2;
  v5 = [NSPropertyListSerialization propertyListWithData:"propertyListWithData:options:format:error:" options:? format:? error:?];
  v50 = 0;
  if (v50)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004BD850();
    }

    goto LABEL_44;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = a4[1];
    if (*a4 == v7)
    {
      goto LABEL_44;
    }

    v8 = *a4 + 24;
    *&v6 = 136315906;
    v48 = v6;
    while (1)
    {
      v9 = (v8 - 24);
      if (*(v8 - 1) < 0)
      {
        v9 = *v9;
      }

      v10 = [NSString stringWithUTF8String:v9, v48];
      v11 = v8;
      if (*(v8 + 23) < 0)
      {
        v11 = *v8;
      }

      v12 = [NSString stringWithUTF8String:v11];
      v13 = [v5 objectForKeyedSubscript:v10];
      v14 = v13 == 0;

      if (v14)
      {
        goto LABEL_40;
      }

      v15 = *(v8 + 24);
      if (v15 > 1)
      {
        if (v15 == 2)
        {
          v41 = [v5 objectForKey:v10];
          v42 = v12;
          v43 = +[NSUserDefaults standardUserDefaults];
          [v43 setObject:v41 forKey:v42];
          v44 = +[NSUserDefaults standardUserDefaults];
          [v44 synchronize];

          v45 = qword_1009F9820;
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
          {
            if (*(a3 + 23) >= 0)
            {
              v46 = a3;
            }

            else
            {
              v46 = *a3;
            }

            *buf = v48;
            v53 = v46;
            v54 = 2112;
            v55 = v10;
            v56 = 2112;
            v57 = v42;
            v58 = 2112;
            v59 = *&v41;
            _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "#ota,%s dict override. Config file key: %@. Defaults key: %@. Value: %@", buf, 0x2Au);
          }

          goto LABEL_40;
        }

        if (v15 == 3)
        {
          v27 = [v5 objectForKeyedSubscript:v10];
          v28 = [v27 BOOLValue];

          v29 = v12;
          v30 = +[NSUserDefaults standardUserDefaults];
          [v30 setBool:v28 forKey:v29];
          v31 = +[NSUserDefaults standardUserDefaults];
          [v31 synchronize];

          v32 = qword_1009F9820;
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
          {
            if (*(a3 + 23) >= 0)
            {
              v33 = a3;
            }

            else
            {
              v33 = *a3;
            }

            *buf = v48;
            v53 = v33;
            v54 = 2112;
            v55 = v10;
            v56 = 2112;
            v57 = v29;
            v58 = 1024;
            LODWORD(v59) = v28;
            v24 = v32;
            v25 = "#ota,%s BOOL override. Config file key: %@. Defaults key: %@. Value: %d";
LABEL_32:
            v26 = 38;
LABEL_33:
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, v25, buf, v26);
          }
        }
      }

      else
      {
        if (*(v8 + 24))
        {
          if (v15 != 1)
          {
            goto LABEL_40;
          }

          v16 = [v5 objectForKeyedSubscript:v10];
          [v16 doubleValue];
          v18 = v17;

          v19 = v12;
          v20 = +[NSUserDefaults standardUserDefaults];
          [v20 setDouble:v19 forKey:v18];
          v21 = +[NSUserDefaults standardUserDefaults];
          [v21 synchronize];

          v22 = qword_1009F9820;
          if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_40;
          }

          if (*(a3 + 23) >= 0)
          {
            v23 = a3;
          }

          else
          {
            v23 = *a3;
          }

          *buf = v48;
          v53 = v23;
          v54 = 2112;
          v55 = v10;
          v56 = 2112;
          v57 = v19;
          v58 = 2048;
          v59 = v18;
          v24 = v22;
          v25 = "#ota,%s double override. Config file key: %@. Defaults key: %@. Value: %f";
          v26 = 42;
          goto LABEL_33;
        }

        v34 = [v5 objectForKeyedSubscript:v10];
        v35 = [v34 integerValue];

        v36 = v12;
        v37 = +[NSUserDefaults standardUserDefaults];
        [v37 setInteger:v35 forKey:v36];
        v38 = +[NSUserDefaults standardUserDefaults];
        [v38 synchronize];

        v39 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          if (*(a3 + 23) >= 0)
          {
            v40 = a3;
          }

          else
          {
            v40 = *a3;
          }

          *buf = v48;
          v53 = v40;
          v54 = 2112;
          v55 = v10;
          v56 = 2112;
          v57 = v36;
          v58 = 1024;
          LODWORD(v59) = v35;
          v24 = v39;
          v25 = "#ota,%s integer override. Config file key: %@. Defaults key: %@. Value: %d";
          goto LABEL_32;
        }
      }

LABEL_40:

      v47 = v8 + 32;
      v8 += 56;
      if (v47 == v7)
      {
        goto LABEL_44;
      }
    }
  }

  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
  {
    sub_1004BD8D8();
  }

LABEL_44:
}

char *sub_10030E528(char *__dst, __int128 *a2, __int128 *a3, char a4)
{
  if (*(a2 + 23) < 0)
  {
    sub_1000056BC(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v7 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v7;
  }

  if (*(a3 + 23) < 0)
  {
    sub_1000056BC(__dst + 24, *a3, *(a3 + 1));
  }

  else
  {
    v8 = *a3;
    *(__dst + 5) = *(a3 + 2);
    *(__dst + 24) = v8;
  }

  __dst[48] = a4;
  return __dst;
}

void sub_10030E5B4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10030E5D0(void *__dst, __int128 *a2, void *a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_1000056BC(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v5;
  }

  __dst[3] = 0;
  __dst[4] = 0;
  __dst[5] = 0;
  sub_10030E670(__dst + 3, *a3, a3[1], 0x6DB6DB6DB6DB6DB7 * ((a3[1] - *a3) >> 3));
  return __dst;
}

void sub_10030E654(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_10030E670(uint64_t *result, int a2, int a3, unint64_t a4)
{
  if (a4)
  {
    sub_10030E6F8(result, a4);
  }

  return result;
}

void sub_10030E6D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 8) = v10;
  sub_10030E938(&a9);
  _Unwind_Resume(a1);
}

void sub_10030E6F8(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    sub_10030E748(a1, a2);
  }

  sub_100019B38();
}

void sub_10030E748(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  sub_100013B04();
}

char *sub_10030E7A4(uint64_t a1, __int128 *a2, __int128 *a3, char *__dst)
{
  v4 = __dst;
  v12 = __dst;
  v13 = __dst;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  v11 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        sub_1000056BC(v4, *v6, *(v6 + 1));
      }

      else
      {
        v7 = *v6;
        *(v4 + 2) = *(v6 + 2);
        *v4 = v7;
      }

      if (*(v6 + 47) < 0)
      {
        sub_1000056BC(v4 + 24, *(v6 + 3), *(v6 + 4));
      }

      else
      {
        v8 = *(v6 + 24);
        *(v4 + 5) = *(v6 + 5);
        *(v4 + 24) = v8;
      }

      v4[48] = *(v6 + 48);
      v6 = (v6 + 56);
      v4 = v13 + 56;
      v13 += 56;
    }

    while (v6 != a3);
  }

  v11 = 1;
  sub_10030E8AC(v10);
  return v4;
}

uint64_t sub_10030E8AC(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_10030E8E4(a1);
  }

  return a1;
}

void sub_10030E8E4(uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 56;
      sub_10022E56C(v5, v3);
    }

    while (v3 != v4);
  }
}

void sub_10030E938(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 56;
        sub_10022E56C(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t *sub_10030E9C0(uint64_t *result, int a2, int a3, unint64_t a4)
{
  if (a4)
  {
    sub_10030E6F8(result, a4);
  }

  return result;
}

void sub_10030EA28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_10030E938(&a9);
  _Unwind_Resume(a1);
}

char *sub_10030EA48(uint64_t a1, __int128 *a2, __int128 *a3, char *__dst)
{
  v4 = __dst;
  v12 = __dst;
  v13 = __dst;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  v11 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        sub_1000056BC(v4, *v6, *(v6 + 1));
      }

      else
      {
        v7 = *v6;
        *(v4 + 2) = *(v6 + 2);
        *v4 = v7;
      }

      if (*(v6 + 47) < 0)
      {
        sub_1000056BC(v4 + 24, *(v6 + 3), *(v6 + 4));
      }

      else
      {
        v8 = *(v6 + 24);
        *(v4 + 5) = *(v6 + 5);
        *(v4 + 24) = v8;
      }

      v4[48] = *(v6 + 48);
      v6 = (v6 + 56);
      v4 = v13 + 56;
      v13 += 56;
    }

    while (v6 != a3);
  }

  v11 = 1;
  sub_10030E8AC(v10);
  return v4;
}

uint64_t **sub_10030EB50(uint64_t **a1, const void **a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = (a1 + 1);
  if (a3)
  {
    v6 = 48 * a3;
    do
    {
      sub_10030EBD4(a1, v4, a2, a2);
      a2 += 6;
      v6 -= 48;
    }

    while (v6);
  }

  return a1;
}

void *sub_10030EBD4(uint64_t **a1, uint64_t *a2, const void **a3, uint64_t a4)
{
  v4 = *sub_10029F9AC(a1, a2, &v7, &v6, a3);
  if (!v4)
  {
    sub_10030EC68();
  }

  return v4;
}

char **sub_10030ECE0(char **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_10030EDC8(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void *sub_10030ED2C(void *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_1000056BC(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v4;
  }

  __dst[3] = 0;
  __dst[4] = 0;
  __dst[5] = 0;
  sub_10030E670(__dst + 3, *(a2 + 3), *(a2 + 4), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 4) - *(a2 + 3)) >> 3));
  return __dst;
}

void sub_10030EDAC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10030EDC8(uint64_t a1)
{
  v2 = (a1 + 24);
  sub_10030E938(&v2);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

void sub_10030EE10(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_10030EE10(a1, *a2);
    sub_10030EE10(a1, a2[1]);
    sub_10030EDC8((a2 + 4));

    operator delete(a2);
  }
}

uint64_t sub_10030EE6C(uint64_t a1)
{
  __chkstk_darwin(a1);
  sub_100004A08(v262, "PPFSC");
  sub_100004A08(v260, "PeopleFinderAlgorithmsParticleFilterSeedWithCL");
  sub_10030E528(__dst, v262, v260, 3);
  sub_100004A08(v258, "PPFDSA");
  sub_100004A08(v256, "PeopleFinderAlgorithmsParticleFilterDisableSeedWithSA");
  sub_10030E528(v265, v258, v256, 3);
  sub_100004A08(v254, "PPFNP");
  sub_100004A08(v252, "PeopleFinderAlgorithmsParticleFilterNumParticles");
  sub_10030E528(v266, v254, v252, 0);
  sub_100004A08(v250, "PPFFR");
  sub_100004A08(v248, "PeopleFinderAlgorithmsParticleFilterPDRFrameRotationNoiseRads");
  sub_10030E528(v267, v250, v248, 1);
  sub_100004A08(v246, "PPFSM");
  sub_100004A08(v244, "PeopleFinderAlgorithmsParticleFilterPDRScaleNoiseMuLognormal");
  sub_10030E528(v268, v246, v244, 1);
  sub_100004A08(v242, "PPFSS");
  sub_100004A08(v240, "PeopleFinderAlgorithmsParticleFilterPDRScaleNoiseSigmaLognormal");
  sub_10030E528(v269, v242, v240, 1);
  sub_100004A08(v238, "PPFMV");
  sub_100004A08(v236, "PeopleFinderAlgorithmsParticleFilterMultipathProcessVarianceScaling");
  sub_10030E528(v270, v238, v236, 1);
  sub_100004A08(v234, "PPFMS");
  sub_100004A08(v232, "PeopleFinderAlgorithmsParticleFilterMultipathMeasurementStd");
  sub_10030E528(v271, v234, v232, 1);
  sub_100004A08(v230, "PPFST");
  sub_100004A08(v228, "PeopleFinderAlgorithmsParticleFilterTrailingMeasurementStdThreshold");
  sub_10030E528(v272, v230, v228, 1);
  sub_100004A08(v226, "PPFNT");
  sub_100004A08(v224, "PeopleFinderAlgorithmsParticleFilterNLOSTimeoutSec");
  sub_10030E528(v273, v226, v224, 1);
  sub_100004A08(v222, "PPFMT");
  sub_100004A08(v220, "PeopleFinderAlgorithmsParticleFilterNoMeasurementTimeoutSec");
  sub_10030E528(v274, v222, v220, 1);
  sub_100004A08(v218, "PPFCNT");
  sub_100004A08(v216, "PeopleFinderAlgorithmsParticleFilterConservativeNLOSTimeoutSec");
  sub_10030E528(v275, v218, v216, 1);
  sub_100004A08(v214, "PDFIO");
  sub_100004A08(v212, "PeopleFinderAlgorithmsDisableFinderIO");
  sub_10030E528(v276, v214, v212, 3);
  sub_100004A08(v210, "PDSA");
  sub_100004A08(v208, "PeopleFinderAlgorithmsDisableSA");
  sub_10030E528(v277, v210, v208, 3);
  sub_100004A08(v206, "PDSV");
  sub_100004A08(v204, "PeopleFinderAlgorithmsDisableSAWithFindeeVIO");
  sub_10030E528(v278, v206, v204, 3);
  sub_100004A08(v202, "PDCL");
  sub_100004A08(v200, "PeopleFinderAlgorithmsDisableCL");
  sub_10030E528(v279, v202, v200, 3);
  sub_100004A08(v198, "PESS");
  sub_100004A08(v196, "PeopleFinderAlgorithmsEnableStraightPathFilter");
  sub_10030E528(v280, v198, v196, 3);
  sub_100004A08(v194, "PDPF");
  sub_100004A08(v192, "PeopleFinderAlgorithmsDisablePF");
  sub_10030E528(v281, v194, v192, 3);
  sub_100004A08(v190, "PDSBSR");
  sub_100004A08(v188, "PeopleFinderAlgorithmsDisableStrictSABoxSpanRequirement");
  sub_10030E528(v282, v190, v188, 3);
  sub_100004A08(v186, "PRRR");
  sub_100004A08(v184, "PeopleFinderAlgorithmsYieldMinUWBRangeRate");
  sub_10030E528(v283, v186, v184, 1);
  sub_100004A08(v182, "PRRW");
  sub_100004A08(v180, "PeopleFinderAlgorithmsYieldRangeRateWindow");
  sub_10030E528(v284, v182, v180, 1);
  sub_100004A08(v178, "PGFRRR");
  sub_100004A08(v176, "PeopleFinderAlgorithmsYieldGroupFindingMinUWBRangeRate");
  sub_10030E528(v285, v178, v176, 1);
  sub_100004A08(v174, "PGFRRW");
  sub_100004A08(v172, "PeopleFinderAlgorithmsYieldGroupFindingRangeRateWindow");
  sub_10030E528(v286, v174, v172, 1);
  sub_100004A08(v170, "PMR");
  sub_100004A08(v168, "PeopleFinderAlgorithmsYieldMaxRange");
  sub_10030E528(v287, v170, v168, 1);
  sub_100004A08(v166, "PMRIFGC");
  sub_100004A08(v164, "PeopleFinderAlgorithmsYieldMaxRangeInFavorableGnssConditions");
  sub_10030E528(v288, v166, v164, 1);
  sub_100004A08(v162, "PLFT");
  sub_100004A08(v160, "PeopleFinderLowPassFilterTimeConstant");
  sub_10030E528(v289, v162, v160, 1);
  sub_100004A08(v158, "PDRYC");
  sub_100004A08(v156, "PeopleFinderAlgorithmsDisableRelaxedYieldCriteria");
  sub_10030E528(v290, v158, v156, 3);
  sub_100004A08(v154, "PMSTARFGC");
  sub_100004A08(v152, "PeopleFinderMinSvTrackedToAvailableRatioForFavorableGnssConditions");
  sub_10030E528(v291, v154, v152, 1);
  sub_100004A08(v150, "PMGSED");
  sub_100004A08(v148, "PeopleFinderMinGnssSatelliteElevationDeg");
  sub_10030E528(v292, v150, v148, 1);
  sub_100004A08(v146, "PFBT");
  sub_100004A08(v144, "PeopleFindingFindButtonTimeoutSecondsOverride");
  sub_10030E528(v293, v146, v144, 1);
  sub_100004A08(v142, "FMSTARFGC");
  sub_100004A08(v140, "FindeeMinSvTrackedToAvailableRatioForFavorableGnssConditions");
  sub_10030E528(v294, v142, v140, 1);
  sub_100004A08(v138, "FMGSED");
  sub_100004A08(v136, "FindeeMinGnssSatelliteElevationDeg");
  sub_10030E528(v295, v138, v136, 1);
  sub_100004A08(v134, "DCMD");
  sub_100004A08(v132, "DeviceFinderAlgorithmsUseCMADistance");
  sub_10030E528(v296, v134, v132, 3);
  sub_100004A08(v130, "DRR");
  sub_100004A08(v128, "DeviceFinderAlgorithmsYieldMinUWBRangeRate");
  sub_10030E528(v297, v130, v128, 1);
  sub_100004A08(v126, "DRRW");
  sub_100004A08(v124, "DeviceFinderAlgorithmsYieldRangeRateWindow");
  sub_10030E528(v298, v126, v124, 1);
  sub_100004A08(v122, "DMR");
  sub_100004A08(v120, "DeviceFinderAlgorithmsYieldMaxRange");
  sub_10030E528(v299, v122, v120, 1);
  sub_100004A08(v118, "DAST");
  sub_100004A08(v116, "DeviceFinderAlgorithmsArcShowThreshold");
  sub_10030E528(v300, v118, v116, 1);
  sub_100004A08(v114, "DART");
  sub_100004A08(v112, "DeviceFinderAlgorithmsArcRevokeThreshold");
  sub_10030E528(v301, v114, v112, 1);
  sub_100004A08(v110, "DTRR");
  sub_100004A08(v108, "DeviceFinderAlgorithmsTimeWithoutRangeRevoke");
  sub_10030E528(v302, v110, v108, 1);
  sub_100004A08(v106, "DTRI");
  sub_100004A08(v104, "DeviceFinderAlgorithmsTimeWithoutRangeReinitialize");
  sub_10030E528(v303, v106, v104, 1);
  sub_100004A08(v102, "CTFSI");
  sub_100004A08(v100, "FindingSchedulingInterval");
  sub_10030E528(v304, v102, v100, 0);
  sub_100004A08(v98, "CTFDC");
  sub_100004A08(v96, "FindingDutyCycle");
  sub_10030E528(v305, v98, v96, 1);
  sub_100004A08(v94, "CTFSSD");
  sub_100004A08(v92, "FindingSecondarySchedulingDelay");
  sub_10030E528(v306, v94, v92, 0);
  sub_100004A08(v90, "CTFSSI");
  sub_100004A08(v88, "FindingSecondarySchedulingInterval");
  sub_10030E528(v307, v90, v88, 0);
  sub_100004A08(v86, "CTFSDC");
  sub_100004A08(v84, "FindingSecondaryDutyCycle");
  sub_10030E528(v308, v86, v84, 1);
  sub_100004A08(v82, "CTPFOOB");
  sub_100004A08(v80, "PeopleFindingOOBRefreshPeriodSecondsOverride");
  sub_10030E528(v309, v82, v80, 1);
  sub_100004A08(v78, "CTPFKABT");
  sub_100004A08(v76, "PeopleFindingFindableDeviceKeepAliveBluetoothTimeoutSecondsOverride");
  sub_10030E528(v310, v78, v76, 1);
  sub_100004A08(v74, "CTPFKAOOB");
  sub_100004A08(v72, "PeopleFindingFindableDeviceKeepAliveOOBTimeoutSecondsOverride");
  sub_10030E528(v311, v74, v72, 1);
  sub_100004A08(v70, "CTPFDT");
  sub_100004A08(v68, "PeopleFindingUWBDiscoveryTimeoutSecondsOverride");
  sub_10030E528(v312, v70, v68, 0);
  sub_100004A08(v66, "CTPFRT");
  sub_100004A08(v64, "PeopleFindingUWBReacquisitionTimeoutSecondsOverride");
  sub_10030E528(v313, v66, v64, 0);
  sub_100004A08(v62, "CTDFOOB");
  sub_100004A08(v60, "DeviceFindingOOBRefreshPeriodSecondsOverride");
  sub_10030E528(v314, v62, v60, 1);
  sub_100004A08(v58, "CTDFKABT");
  sub_100004A08(v56, "DeviceFindingFindableDeviceKeepAliveBluetoothTimeoutSecondsOverride");
  sub_10030E528(v315, v58, v56, 1);
  sub_100004A08(v54, "CTDFKAOOB");
  sub_100004A08(v52, "DeviceFindingFindableDeviceKeepAliveOOBTimeoutSecondsOverride");
  sub_10030E528(v316, v54, v52, 1);
  sub_100004A08(v50, "CTDFDT");
  sub_100004A08(v48, "DeviceFindingUWBDiscoveryTimeoutSecondsOverride");
  sub_10030E528(v317, v50, v48, 0);
  sub_100004A08(v46, "CTDFRT");
  sub_100004A08(v44, "DeviceFindingUWBReacquisitionTimeoutSecondsOverride");
  sub_10030E528(v318, v46, v44, 0);
  sub_100004A08(v42, "CTFTT");
  sub_100004A08(v40, "FindingUWBTotalTimeoutSecondsOverride");
  sub_10030E528(v319, v42, v40, 0);
  sub_100004A08(v38, "CTFWDT");
  sub_100004A08(v36, "FindingUWBEventWatchdogTimeoutMillisecondsOverride");
  sub_10030E528(v320, v38, v36, 0);
  sub_100004A08(v34, "CTRTTL");
  sub_100004A08(v32, "FindingServiceRangingTriggerTimeLimitOverrideSeconds");
  sub_10030E528(v321, v34, v32, 1);
  sub_100004A08(v30, "CTRFBT");
  sub_100004A08(v28, "RunawayFindingBackstopTimeoutOverrideSeconds");
  sub_10030E528(v322, v30, v28, 1);
  sub_100004A08(v26, "CTNIWDT");
  sub_100004A08(v24, "PeerEventWatchdogTimeoutMillisecondsOverride");
  sub_10030E528(v323, v26, v24, 0);
  sub_100004A08(v22, "CTFSDIS");
  sub_100004A08(v20, "FindingDisableService");
  sub_10030E528(v324, v22, v20, 3);
  sub_100004A08(v18, "CTFPWEN");
  sub_100004A08(v16, "FindableDeviceEnableWatch");
  sub_10030E528(v325, v18, v16, 3);
  sub_100004A08(v14, "CTBSDM");
  sub_100004A08(v12, "r121951698_DisableMitigation");
  sub_10030E528(v326, v14, v12, 3);
  sub_100004A08(v10, "CTDSRC");
  sub_100004A08(v8, "DisableDualRxChain");
  sub_10030E528(v327, v10, v8, 3);
  sub_100004A08(v6, "DUORWS7");
  sub_100004A08(__p, "DisableUseOfRangesWithStatus7");
  sub_10030E528(v328, v6, __p, 3);
  qword_1009F4E08 = 0;
  unk_1009F4E10 = 0;
  qword_1009F4E18 = 0;
  sub_10030E9C0(&qword_1009F4E08, __dst, &v329, 0x41uLL);
  v1 = 455;
  do
  {
    v2 = &__dst[v1 * 8];
    if (SHIBYTE(v262[v1 + 1]) < 0)
    {
      operator delete(*(v2 - 4));
    }

    if (*(v2 - 33) < 0)
    {
      operator delete(*(v2 - 7));
    }

    v1 -= 7;
  }

  while (v1 * 8);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  if (v9 < 0)
  {
    operator delete(v8[0]);
  }

  if (v11 < 0)
  {
    operator delete(v10[0]);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  if (v15 < 0)
  {
    operator delete(v14[0]);
  }

  if (v17 < 0)
  {
    operator delete(v16[0]);
  }

  if (v19 < 0)
  {
    operator delete(v18[0]);
  }

  if (v21 < 0)
  {
    operator delete(v20[0]);
  }

  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  if (v25 < 0)
  {
    operator delete(v24[0]);
  }

  if (v27 < 0)
  {
    operator delete(v26[0]);
  }

  if (v29 < 0)
  {
    operator delete(v28[0]);
  }

  if (v31 < 0)
  {
    operator delete(v30[0]);
  }

  if (v33 < 0)
  {
    operator delete(v32[0]);
  }

  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  if (v37 < 0)
  {
    operator delete(v36[0]);
  }

  if (v39 < 0)
  {
    operator delete(v38[0]);
  }

  if (v41 < 0)
  {
    operator delete(v40[0]);
  }

  if (v43 < 0)
  {
    operator delete(v42[0]);
  }

  if (v45 < 0)
  {
    operator delete(v44[0]);
  }

  if (v47 < 0)
  {
    operator delete(v46[0]);
  }

  if (v49 < 0)
  {
    operator delete(v48[0]);
  }

  if (v51 < 0)
  {
    operator delete(v50[0]);
  }

  if (v53 < 0)
  {
    operator delete(v52[0]);
  }

  if (v55 < 0)
  {
    operator delete(v54[0]);
  }

  if (v57 < 0)
  {
    operator delete(v56[0]);
  }

  if (v59 < 0)
  {
    operator delete(v58[0]);
  }

  if (v61 < 0)
  {
    operator delete(v60[0]);
  }

  if (v63 < 0)
  {
    operator delete(v62[0]);
  }

  if (v65 < 0)
  {
    operator delete(v64[0]);
  }

  if (v67 < 0)
  {
    operator delete(v66[0]);
  }

  if (v69 < 0)
  {
    operator delete(v68[0]);
  }

  if (v71 < 0)
  {
    operator delete(v70[0]);
  }

  if (v73 < 0)
  {
    operator delete(v72[0]);
  }

  if (v75 < 0)
  {
    operator delete(v74[0]);
  }

  if (v77 < 0)
  {
    operator delete(v76[0]);
  }

  if (v79 < 0)
  {
    operator delete(v78[0]);
  }

  if (v81 < 0)
  {
    operator delete(v80[0]);
  }

  if (v83 < 0)
  {
    operator delete(v82[0]);
  }

  if (v85 < 0)
  {
    operator delete(v84[0]);
  }

  if (v87 < 0)
  {
    operator delete(v86[0]);
  }

  if (v89 < 0)
  {
    operator delete(v88[0]);
  }

  if (v91 < 0)
  {
    operator delete(v90[0]);
  }

  if (v93 < 0)
  {
    operator delete(v92[0]);
  }

  if (v95 < 0)
  {
    operator delete(v94[0]);
  }

  if (v97 < 0)
  {
    operator delete(v96[0]);
  }

  if (v99 < 0)
  {
    operator delete(v98[0]);
  }

  if (v101 < 0)
  {
    operator delete(v100[0]);
  }

  if (v103 < 0)
  {
    operator delete(v102[0]);
  }

  if (v105 < 0)
  {
    operator delete(v104[0]);
  }

  if (v107 < 0)
  {
    operator delete(v106[0]);
  }

  if (v109 < 0)
  {
    operator delete(v108[0]);
  }

  if (v111 < 0)
  {
    operator delete(v110[0]);
  }

  if (v113 < 0)
  {
    operator delete(v112[0]);
  }

  if (v115 < 0)
  {
    operator delete(v114[0]);
  }

  if (v117 < 0)
  {
    operator delete(v116[0]);
  }

  if (v119 < 0)
  {
    operator delete(v118[0]);
  }

  if (v121 < 0)
  {
    operator delete(v120[0]);
  }

  if (v123 < 0)
  {
    operator delete(v122[0]);
  }

  if (v125 < 0)
  {
    operator delete(v124[0]);
  }

  if (v127 < 0)
  {
    operator delete(v126[0]);
  }

  if (v129 < 0)
  {
    operator delete(v128[0]);
  }

  if (v131 < 0)
  {
    operator delete(v130[0]);
  }

  if (v133 < 0)
  {
    operator delete(v132[0]);
  }

  if (v135 < 0)
  {
    operator delete(v134[0]);
  }

  if (v137 < 0)
  {
    operator delete(v136[0]);
  }

  if (v139 < 0)
  {
    operator delete(v138[0]);
  }

  if (v141 < 0)
  {
    operator delete(v140[0]);
  }

  if (v143 < 0)
  {
    operator delete(v142[0]);
  }

  if (v145 < 0)
  {
    operator delete(v144[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  if (v149 < 0)
  {
    operator delete(v148[0]);
  }

  if (v151 < 0)
  {
    operator delete(v150[0]);
  }

  if (v153 < 0)
  {
    operator delete(v152[0]);
  }

  if (v155 < 0)
  {
    operator delete(v154[0]);
  }

  if (v157 < 0)
  {
    operator delete(v156[0]);
  }

  if (v159 < 0)
  {
    operator delete(v158[0]);
  }

  if (v161 < 0)
  {
    operator delete(v160[0]);
  }

  if (v163 < 0)
  {
    operator delete(v162[0]);
  }

  if (v165 < 0)
  {
    operator delete(v164[0]);
  }

  if (v167 < 0)
  {
    operator delete(v166[0]);
  }

  if (v169 < 0)
  {
    operator delete(v168[0]);
  }

  if (v171 < 0)
  {
    operator delete(v170[0]);
  }

  if (v173 < 0)
  {
    operator delete(v172[0]);
  }

  if (v175 < 0)
  {
    operator delete(v174[0]);
  }

  if (v177 < 0)
  {
    operator delete(v176[0]);
  }

  if (v179 < 0)
  {
    operator delete(v178[0]);
  }

  if (v181 < 0)
  {
    operator delete(v180[0]);
  }

  if (v183 < 0)
  {
    operator delete(v182[0]);
  }

  if (v185 < 0)
  {
    operator delete(v184[0]);
  }

  if (v187 < 0)
  {
    operator delete(v186[0]);
  }

  if (v189 < 0)
  {
    operator delete(v188[0]);
  }

  if (v191 < 0)
  {
    operator delete(v190[0]);
  }

  if (v193 < 0)
  {
    operator delete(v192[0]);
  }

  if (v195 < 0)
  {
    operator delete(v194[0]);
  }

  if (v197 < 0)
  {
    operator delete(v196[0]);
  }

  if (v199 < 0)
  {
    operator delete(v198[0]);
  }

  if (v201 < 0)
  {
    operator delete(v200[0]);
  }

  if (v203 < 0)
  {
    operator delete(v202[0]);
  }

  if (v205 < 0)
  {
    operator delete(v204[0]);
  }

  if (v207 < 0)
  {
    operator delete(v206[0]);
  }

  if (v209 < 0)
  {
    operator delete(v208[0]);
  }

  if (v211 < 0)
  {
    operator delete(v210[0]);
  }

  if (v213 < 0)
  {
    operator delete(v212[0]);
  }

  if (v215 < 0)
  {
    operator delete(v214[0]);
  }

  if (v217 < 0)
  {
    operator delete(v216[0]);
  }

  if (v219 < 0)
  {
    operator delete(v218[0]);
  }

  if (v221 < 0)
  {
    operator delete(v220[0]);
  }

  if (v223 < 0)
  {
    operator delete(v222[0]);
  }

  if (v225 < 0)
  {
    operator delete(v224[0]);
  }

  if (v227 < 0)
  {
    operator delete(v226[0]);
  }

  if (v229 < 0)
  {
    operator delete(v228[0]);
  }

  if (v231 < 0)
  {
    operator delete(v230[0]);
  }

  if (v233 < 0)
  {
    operator delete(v232[0]);
  }

  if (v235 < 0)
  {
    operator delete(v234[0]);
  }

  if (v237 < 0)
  {
    operator delete(v236[0]);
  }

  if (v239 < 0)
  {
    operator delete(v238[0]);
  }

  if (v241 < 0)
  {
    operator delete(v240[0]);
  }

  if (v243 < 0)
  {
    operator delete(v242[0]);
  }

  if (v245 < 0)
  {
    operator delete(v244[0]);
  }

  if (v247 < 0)
  {
    operator delete(v246[0]);
  }

  if (v249 < 0)
  {
    operator delete(v248[0]);
  }

  if (v251 < 0)
  {
    operator delete(v250[0]);
  }

  if (v253 < 0)
  {
    operator delete(v252[0]);
  }

  if (v255 < 0)
  {
    operator delete(v254[0]);
  }

  if (v257 < 0)
  {
    operator delete(v256[0]);
  }

  if (v259 < 0)
  {
    operator delete(v258[0]);
  }

  if (v261 < 0)
  {
    operator delete(v260[0]);
  }

  if (v263 < 0)
  {
    operator delete(v262[0]);
  }

  return __cxa_atexit(sub_10030D340, &qword_1009F4E08, &_mh_execute_header);
}

void sub_1003106B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, void *a51, uint64_t a52, int a53, __int16 a54, char a55, char a56, void *a57, uint64_t a58, int a59, __int16 a60, char a61, char a62, void *a63)
{
  v90 = -3640;
  v91 = v88;
  do
  {
    v91 = sub_10022A868(v91) - 56;
    v90 += 56;
  }

  while (v90);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  if (a50 < 0)
  {
    operator delete(a45);
  }

  if (a56 < 0)
  {
    operator delete(a51);
  }

  if (a62 < 0)
  {
    operator delete(a57);
  }

  if (a65 < 0)
  {
    operator delete(a63);
  }

  if (a67 < 0)
  {
    operator delete(a66);
  }

  if (a69 < 0)
  {
    operator delete(a68);
  }

  if (a71 < 0)
  {
    operator delete(a70);
  }

  if (a73 < 0)
  {
    operator delete(a72);
  }

  if (a75 < 0)
  {
    operator delete(a74);
  }

  if (a77 < 0)
  {
    operator delete(a76);
  }

  if (a79 < 0)
  {
    operator delete(a78);
  }

  if (a81 < 0)
  {
    operator delete(a80);
  }

  if (a83 < 0)
  {
    operator delete(a82);
  }

  if (a85 < 0)
  {
    operator delete(a84);
  }

  if (a87 < 0)
  {
    operator delete(a86);
  }

  if (SLOBYTE(STACK[0x20F]) < 0)
  {
    operator delete(a88);
  }

  if (SLOBYTE(STACK[0x227]) < 0)
  {
    operator delete(STACK[0x210]);
  }

  if (SLOBYTE(STACK[0x23F]) < 0)
  {
    operator delete(STACK[0x228]);
  }

  if (SLOBYTE(STACK[0x257]) < 0)
  {
    operator delete(STACK[0x240]);
  }

  if (SLOBYTE(STACK[0x26F]) < 0)
  {
    operator delete(STACK[0x258]);
  }

  if (SLOBYTE(STACK[0x287]) < 0)
  {
    operator delete(STACK[0x270]);
  }

  if (SLOBYTE(STACK[0x29F]) < 0)
  {
    operator delete(STACK[0x288]);
  }

  if (SLOBYTE(STACK[0x2B7]) < 0)
  {
    operator delete(STACK[0x2A0]);
  }

  if (SLOBYTE(STACK[0x2CF]) < 0)
  {
    operator delete(STACK[0x2B8]);
  }

  if (SLOBYTE(STACK[0x2E7]) < 0)
  {
    operator delete(STACK[0x2D0]);
  }

  if (SLOBYTE(STACK[0x2FF]) < 0)
  {
    operator delete(STACK[0x2E8]);
  }

  if (SLOBYTE(STACK[0x317]) < 0)
  {
    operator delete(STACK[0x300]);
  }

  if (SLOBYTE(STACK[0x32F]) < 0)
  {
    operator delete(STACK[0x318]);
  }

  if (SLOBYTE(STACK[0x347]) < 0)
  {
    operator delete(STACK[0x330]);
  }

  if (SLOBYTE(STACK[0x35F]) < 0)
  {
    operator delete(STACK[0x348]);
  }

  if (SLOBYTE(STACK[0x377]) < 0)
  {
    operator delete(STACK[0x360]);
  }

  if (SLOBYTE(STACK[0x38F]) < 0)
  {
    operator delete(STACK[0x378]);
  }

  if (SLOBYTE(STACK[0x3A7]) < 0)
  {
    operator delete(STACK[0x390]);
  }

  if (SLOBYTE(STACK[0x3BF]) < 0)
  {
    operator delete(STACK[0x3A8]);
  }

  if (SLOBYTE(STACK[0x3D7]) < 0)
  {
    operator delete(STACK[0x3C0]);
  }

  if (SLOBYTE(STACK[0x3EF]) < 0)
  {
    operator delete(STACK[0x3D8]);
  }

  if (SLOBYTE(STACK[0x407]) < 0)
  {
    operator delete(STACK[0x3F0]);
  }

  if (SLOBYTE(STACK[0x41F]) < 0)
  {
    operator delete(STACK[0x408]);
  }

  if (SLOBYTE(STACK[0x437]) < 0)
  {
    operator delete(STACK[0x420]);
  }

  if (SLOBYTE(STACK[0x44F]) < 0)
  {
    operator delete(STACK[0x438]);
  }

  if (SLOBYTE(STACK[0x467]) < 0)
  {
    operator delete(STACK[0x450]);
  }

  if (SLOBYTE(STACK[0x47F]) < 0)
  {
    operator delete(STACK[0x468]);
  }

  if (SLOBYTE(STACK[0x497]) < 0)
  {
    operator delete(STACK[0x480]);
  }

  if (SLOBYTE(STACK[0x4AF]) < 0)
  {
    operator delete(STACK[0x498]);
  }

  if (SLOBYTE(STACK[0x4C7]) < 0)
  {
    operator delete(STACK[0x4B0]);
  }

  if (SLOBYTE(STACK[0x4DF]) < 0)
  {
    operator delete(STACK[0x4C8]);
  }

  if (SLOBYTE(STACK[0x4F7]) < 0)
  {
    operator delete(STACK[0x4E0]);
  }

  if (SLOBYTE(STACK[0x50F]) < 0)
  {
    operator delete(STACK[0x4F8]);
  }

  if (SLOBYTE(STACK[0x527]) < 0)
  {
    operator delete(STACK[0x510]);
  }

  if (SLOBYTE(STACK[0x53F]) < 0)
  {
    operator delete(STACK[0x528]);
  }

  if (SLOBYTE(STACK[0x557]) < 0)
  {
    operator delete(STACK[0x540]);
  }

  if (SLOBYTE(STACK[0x56F]) < 0)
  {
    operator delete(STACK[0x558]);
  }

  if (SLOBYTE(STACK[0x587]) < 0)
  {
    operator delete(STACK[0x570]);
  }

  if (SLOBYTE(STACK[0x59F]) < 0)
  {
    operator delete(STACK[0x588]);
  }

  if (SLOBYTE(STACK[0x5B7]) < 0)
  {
    operator delete(STACK[0x5A0]);
  }

  if (SLOBYTE(STACK[0x5CF]) < 0)
  {
    operator delete(STACK[0x5B8]);
  }

  if (SLOBYTE(STACK[0x5E7]) < 0)
  {
    operator delete(STACK[0x5D0]);
  }

  if (SLOBYTE(STACK[0x5FF]) < 0)
  {
    operator delete(STACK[0x5E8]);
  }

  if (SLOBYTE(STACK[0x617]) < 0)
  {
    operator delete(STACK[0x600]);
  }

  if (SLOBYTE(STACK[0x62F]) < 0)
  {
    operator delete(STACK[0x618]);
  }

  if (SLOBYTE(STACK[0x647]) < 0)
  {
    operator delete(STACK[0x630]);
  }

  if (SLOBYTE(STACK[0x65F]) < 0)
  {
    operator delete(STACK[0x648]);
  }

  if (SLOBYTE(STACK[0x677]) < 0)
  {
    operator delete(STACK[0x660]);
  }

  if (SLOBYTE(STACK[0x68F]) < 0)
  {
    operator delete(STACK[0x678]);
  }

  if (SLOBYTE(STACK[0x6A7]) < 0)
  {
    operator delete(STACK[0x690]);
  }

  if (SLOBYTE(STACK[0x6BF]) < 0)
  {
    operator delete(STACK[0x6A8]);
  }

  if (SLOBYTE(STACK[0x6D7]) < 0)
  {
    operator delete(STACK[0x6C0]);
  }

  if (SLOBYTE(STACK[0x6EF]) < 0)
  {
    operator delete(STACK[0x6D8]);
  }

  if (SLOBYTE(STACK[0x707]) < 0)
  {
    operator delete(STACK[0x6F0]);
  }

  if (SLOBYTE(STACK[0x71F]) < 0)
  {
    operator delete(STACK[0x708]);
  }

  if (SLOBYTE(STACK[0x737]) < 0)
  {
    operator delete(STACK[0x720]);
  }

  if (SLOBYTE(STACK[0x74F]) < 0)
  {
    operator delete(STACK[0x738]);
  }

  if (SLOBYTE(STACK[0x767]) < 0)
  {
    operator delete(STACK[0x750]);
  }

  if (SLOBYTE(STACK[0x77F]) < 0)
  {
    operator delete(STACK[0x768]);
  }

  if (SLOBYTE(STACK[0x797]) < 0)
  {
    operator delete(STACK[0x780]);
  }

  if (SLOBYTE(STACK[0x7AF]) < 0)
  {
    operator delete(STACK[0x798]);
  }

  if (SLOBYTE(STACK[0x7C7]) < 0)
  {
    operator delete(STACK[0x7B0]);
  }

  if (SLOBYTE(STACK[0x7DF]) < 0)
  {
    operator delete(STACK[0x7C8]);
  }

  if (SLOBYTE(STACK[0x7F7]) < 0)
  {
    operator delete(STACK[0x7E0]);
  }

  if (SLOBYTE(STACK[0x80F]) < 0)
  {
    operator delete(STACK[0x7F8]);
  }

  if (SLOBYTE(STACK[0x827]) < 0)
  {
    operator delete(STACK[0x810]);
  }

  if (SLOBYTE(STACK[0x83F]) < 0)
  {
    operator delete(STACK[0x828]);
  }

  if (SLOBYTE(STACK[0x857]) < 0)
  {
    operator delete(STACK[0x840]);
  }

  if (SLOBYTE(STACK[0x86F]) < 0)
  {
    operator delete(STACK[0x858]);
  }

  if (SLOBYTE(STACK[0x887]) < 0)
  {
    operator delete(STACK[0x870]);
  }

  if (SLOBYTE(STACK[0x89F]) < 0)
  {
    operator delete(STACK[0x888]);
  }

  if (SLOBYTE(STACK[0x8B7]) < 0)
  {
    operator delete(STACK[0x8A0]);
  }

  if (SLOBYTE(STACK[0x8CF]) < 0)
  {
    operator delete(STACK[0x8B8]);
  }

  if (SLOBYTE(STACK[0x8E7]) < 0)
  {
    operator delete(STACK[0x8D0]);
  }

  if (SLOBYTE(STACK[0x8FF]) < 0)
  {
    operator delete(STACK[0x8E8]);
  }

  if (SLOBYTE(STACK[0x917]) < 0)
  {
    operator delete(STACK[0x900]);
  }

  if (SLOBYTE(STACK[0x92F]) < 0)
  {
    operator delete(STACK[0x918]);
  }

  if (SLOBYTE(STACK[0x947]) < 0)
  {
    operator delete(STACK[0x930]);
  }

  if (SLOBYTE(STACK[0x95F]) < 0)
  {
    operator delete(STACK[0x948]);
  }

  if (SLOBYTE(STACK[0x977]) < 0)
  {
    operator delete(STACK[0x960]);
  }

  if (SLOBYTE(STACK[0x98F]) < 0)
  {
    operator delete(STACK[0x978]);
  }

  if (SLOBYTE(STACK[0x9A7]) < 0)
  {
    operator delete(STACK[0x990]);
  }

  if (SLOBYTE(STACK[0x9BF]) < 0)
  {
    operator delete(STACK[0x9A8]);
  }

  if (SLOBYTE(STACK[0x9D7]) < 0)
  {
    operator delete(STACK[0x9C0]);
  }

  if (SLOBYTE(STACK[0x9EF]) < 0)
  {
    operator delete(STACK[0x9D8]);
  }

  if (SLOBYTE(STACK[0xA07]) < 0)
  {
    operator delete(STACK[0x9F0]);
  }

  if (SLOBYTE(STACK[0xA1F]) < 0)
  {
    operator delete(STACK[0xA08]);
  }

  if (SLOBYTE(STACK[0xA37]) < 0)
  {
    operator delete(STACK[0xA20]);
  }

  if (SLOBYTE(STACK[0xA4F]) < 0)
  {
    operator delete(STACK[0xA38]);
  }

  if (SLOBYTE(STACK[0xA67]) < 0)
  {
    operator delete(STACK[0xA50]);
  }

  if (SLOBYTE(STACK[0xA7F]) < 0)
  {
    operator delete(STACK[0xA68]);
  }

  if (SLOBYTE(STACK[0xA97]) < 0)
  {
    operator delete(STACK[0xA80]);
  }

  if (SLOBYTE(STACK[0xAAF]) < 0)
  {
    operator delete(STACK[0xA98]);
  }

  if (SLOBYTE(STACK[0xAC7]) < 0)
  {
    operator delete(STACK[0xAB0]);
  }

  if (SLOBYTE(STACK[0xADF]) < 0)
  {
    operator delete(STACK[0xAC8]);
  }

  if (SLOBYTE(STACK[0xAF7]) < 0)
  {
    operator delete(STACK[0xAE0]);
  }

  if (SLOBYTE(STACK[0xB0F]) < 0)
  {
    operator delete(STACK[0xAF8]);
  }

  if (SLOBYTE(STACK[0xB27]) < 0)
  {
    operator delete(STACK[0xB10]);
  }

  if (SLOBYTE(STACK[0xB3F]) < 0)
  {
    operator delete(STACK[0xB28]);
  }

  if (SLOBYTE(STACK[0xB57]) < 0)
  {
    operator delete(STACK[0xB40]);
  }

  if (SLOBYTE(STACK[0xB6F]) < 0)
  {
    operator delete(STACK[0xB58]);
  }

  if (SLOBYTE(STACK[0xB87]) < 0)
  {
    operator delete(STACK[0xB70]);
  }

  if (SLOBYTE(STACK[0xB9F]) < 0)
  {
    operator delete(STACK[0xB88]);
  }

  if (SLOBYTE(STACK[0xBB7]) < 0)
  {
    operator delete(STACK[0xBA0]);
  }

  if (SLOBYTE(STACK[0xBCF]) < 0)
  {
    operator delete(STACK[0xBB8]);
  }

  if (SLOBYTE(STACK[0xBE7]) < 0)
  {
    operator delete(STACK[0xBD0]);
  }

  if (SLOBYTE(STACK[0xBFF]) < 0)
  {
    operator delete(STACK[0xBE8]);
  }

  if (SLOBYTE(STACK[0xC17]) < 0)
  {
    operator delete(STACK[0xC00]);
  }

  if (SLOBYTE(STACK[0xC2F]) < 0)
  {
    operator delete(STACK[0xC18]);
  }

  _Unwind_Resume(a1);
}

void sub_100311650()
{
  v0 = objc_autoreleasePoolPush();
  sub_100004A08(&xmmword_1009F4D60, "ALP.plist");
  __cxa_atexit(&std::string::~string, &xmmword_1009F4D60, &_mh_execute_header);
  sub_100004A08(v135, "RDL");
  sub_100004A08(v133, "AlishaRangingDurationLimitOverrideSeconds");
  sub_10030E528(__dst, v135, v133, 0);
  sub_100004A08(v131, "TA");
  sub_100004A08(v129, "AlishaTimeoutAOverrideSeconds");
  sub_10030E528(v139, v131, v129, 0);
  sub_100004A08(v127, "TB");
  sub_100004A08(v125, "AlishaTimeoutBOverrideSeconds");
  sub_10030E528(v141, v127, v125, 0);
  sub_100004A08(v123, "TRFP");
  sub_100004A08(v121, "AlishaTimeoutRefirePeriodOverrideSeconds");
  sub_10030E528(v143, v123, v121, 0);
  sub_100004A08(v119, "MTRF");
  sub_100004A08(v117, "AlishaMaxTimeoutRefiresOverride");
  sub_10030E528(v145, v119, v117, 0);
  sub_100004A08(v115, "MRM");
  sub_100004A08(v113, "AlishaMinRanMultiplierOverride");
  sub_10030E528(v147, v115, v113, 0);
  sub_100004A08(v111, "STO");
  sub_100004A08(v109, "AlishaStartTimeOffsetSeconds");
  sub_10030E528(v148, v111, v109, 1);
  sub_100004A08(v107, "TA2");
  sub_100004A08(v105, "AcwgTimeoutAOverrideSeconds");
  sub_10030E528(v149, v107, v105, 0);
  sub_100004A08(v103, "TB2");
  sub_100004A08(v101, "AcwgTimeoutBOverrideSeconds");
  sub_10030E528(v150, v103, v101, 0);
  sub_100004A08(v99, "TAE2");
  sub_100004A08(v97, "AcwgTimeoutAExceptionOverrideSeconds");
  sub_10030E528(v151, v99, v97, 0);
  sub_100004A08(v95, "TBE2");
  sub_100004A08(v93, "AcwgTimeoutBExceptionOverrideSeconds");
  sub_10030E528(v152, v95, v93, 0);
  sub_100004A08(v91, "TRFP2");
  sub_100004A08(v89, "AcwgTimeoutRefirePeriodOverrideSeconds");
  sub_10030E528(v153, v91, v89, 0);
  sub_100004A08(v87, "MTRF2");
  sub_100004A08(v85, "AcwgMaxTimeoutRefiresOverride");
  sub_10030E528(v154, v87, v85, 0);
  sub_100004A08(v83, "MRM2");
  sub_100004A08(v81, "AcwgMinRanMultiplierOverride");
  sub_10030E528(v155, v83, v81, 0);
  sub_100004A08(v79, "STO2");
  sub_100004A08(v77, "AcwgStartTimeOffsetSeconds");
  sub_10030E528(v156, v79, v77, 1);
  sub_100004A08(v75, "CRBE");
  sub_100004A08(v73, "DigitalKeyCombinedRangingBudgetEnabled");
  sub_10030E528(v157, v75, v73, 3);
  sub_100004A08(v71, "DRB");
  sub_100004A08(v69, "DigitalKeyRangingBudgetSeconds");
  sub_10030E528(v158, v71, v69, 1);
  sub_100004A08(v67, "ARB");
  sub_100004A08(v65, "AlishaRangingBudgetSeconds");
  sub_10030E528(v159, v67, v65, 1);
  sub_100004A08(v63, "LRB");
  sub_100004A08(v61, "LyonRangingBudgetSeconds");
  sub_10030E528(v160, v63, v61, 1);
  sub_100004A08(v59, "RDRP");
  sub_100004A08(v57, "DigitalKeyRangingDurationResetPeriodSeconds");
  sub_10030E528(v161, v59, v57, 1);
  sub_100004A08(v55, "RDRPT");
  sub_100004A08(v53, "DigitalKeyRangingDurationResetPeriodToleranceSeconds");
  sub_10030E528(v162, v55, v53, 1);
  sub_100004A08(v51, "SDBT");
  sub_100004A08(v49, "AopSFDisableDynamicBubbles");
  sub_10030E528(v163, v51, v49, 3);
  sub_100004A08(v47, "SDEBH");
  sub_100004A08(v45, "AopSFUseHEPHandling");
  sub_10030E528(v164, v47, v45, 3);
  sub_100004A08(v43, "SCT");
  sub_100004A08(v41, "AopSFBubbleDeltadB");
  sub_10030E528(v165, v43, v41, 0);
  sub_100004A08(v39, "SMCT");
  sub_100004A08(v37, "AopSFBubbleMaxThresholddBm");
  sub_10030E528(v166, v39, v37, 0);
  sub_100004A08(v35, "SIC");
  sub_100004A08(v33, "AopSFUseStaticIOClassifier");
  sub_10030E528(v167, v35, v33, 0);
  sub_100004A08(v31, "SICE");
  sub_100004A08(v29, "AopSFStaticIOClassifierEpsilonInMM");
  sub_10030E528(v168, v31, v29, 0);
  sub_100004A08(v27, "SRI");
  sub_100004A08(v25, "AopSFIOReportIntervalIn10msUnits");
  sub_10030E528(v169, v27, v25, 0);
  sub_100004A08(v23, "SST");
  sub_100004A08(v21, "AopSFStationaryTimeoutIn100msUnits");
  sub_10030E528(v170, v23, v21, 0);
  sub_100004A08(v19, "SPD");
  sub_100004A08(v17, "AopSFTxPowerdBm");
  sub_10030E528(v171, v19, v17, 0);
  sub_100004A08(v15, "URSKC");
  sub_100004A08(__p, "AlishaTriggerCrashOnURSKRetrievalFailure");
  sub_10030E528(v172, v15, __p, 3);
  qword_1009F4D78 = 0;
  unk_1009F4D80 = 0;
  qword_1009F4D88 = 0;
  sub_10030E9C0(&qword_1009F4D78, __dst, &v173, 0x1FuLL);
  v1 = 217;
  do
  {
    v2 = &__dst[v1 * 8];
    if (SHIBYTE(v135[v1 + 1]) < 0)
    {
      operator delete(*(v2 - 4));
    }

    if (*(v2 - 33) < 0)
    {
      operator delete(*(v2 - 7));
    }

    v1 -= 7;
  }

  while (v1 * 8);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  if (v16 < 0)
  {
    operator delete(v15[0]);
  }

  if (v18 < 0)
  {
    operator delete(v17[0]);
  }

  if (v20 < 0)
  {
    operator delete(v19[0]);
  }

  if (v22 < 0)
  {
    operator delete(v21[0]);
  }

  if (v24 < 0)
  {
    operator delete(v23[0]);
  }

  if (v26 < 0)
  {
    operator delete(v25[0]);
  }

  if (v28 < 0)
  {
    operator delete(v27[0]);
  }

  if (v30 < 0)
  {
    operator delete(v29[0]);
  }

  if (v32 < 0)
  {
    operator delete(v31[0]);
  }

  if (v34 < 0)
  {
    operator delete(v33[0]);
  }

  if (v36 < 0)
  {
    operator delete(v35[0]);
  }

  if (v38 < 0)
  {
    operator delete(v37[0]);
  }

  if (v40 < 0)
  {
    operator delete(v39[0]);
  }

  if (v42 < 0)
  {
    operator delete(v41[0]);
  }

  if (v44 < 0)
  {
    operator delete(v43[0]);
  }

  if (v46 < 0)
  {
    operator delete(v45[0]);
  }

  if (v48 < 0)
  {
    operator delete(v47[0]);
  }

  if (v50 < 0)
  {
    operator delete(v49[0]);
  }

  if (v52 < 0)
  {
    operator delete(v51[0]);
  }

  if (v54 < 0)
  {
    operator delete(v53[0]);
  }

  if (v56 < 0)
  {
    operator delete(v55[0]);
  }

  if (v58 < 0)
  {
    operator delete(v57[0]);
  }

  if (v60 < 0)
  {
    operator delete(v59[0]);
  }

  if (v62 < 0)
  {
    operator delete(v61[0]);
  }

  if (v64 < 0)
  {
    operator delete(v63[0]);
  }

  if (v66 < 0)
  {
    operator delete(v65[0]);
  }

  if (v68 < 0)
  {
    operator delete(v67[0]);
  }

  if (v70 < 0)
  {
    operator delete(v69[0]);
  }

  if (v72 < 0)
  {
    operator delete(v71[0]);
  }

  if (v74 < 0)
  {
    operator delete(v73[0]);
  }

  if (v76 < 0)
  {
    operator delete(v75[0]);
  }

  if (v78 < 0)
  {
    operator delete(v77[0]);
  }

  if (v80 < 0)
  {
    operator delete(v79[0]);
  }

  if (v82 < 0)
  {
    operator delete(v81[0]);
  }

  if (v84 < 0)
  {
    operator delete(v83[0]);
  }

  if (v86 < 0)
  {
    operator delete(v85[0]);
  }

  if (v88 < 0)
  {
    operator delete(v87[0]);
  }

  if (v90 < 0)
  {
    operator delete(v89[0]);
  }

  if (v92 < 0)
  {
    operator delete(v91[0]);
  }

  if (v94 < 0)
  {
    operator delete(v93[0]);
  }

  if (v96 < 0)
  {
    operator delete(v95[0]);
  }

  if (v98 < 0)
  {
    operator delete(v97[0]);
  }

  if (v100 < 0)
  {
    operator delete(v99[0]);
  }

  if (v102 < 0)
  {
    operator delete(v101[0]);
  }

  if (v104 < 0)
  {
    operator delete(v103[0]);
  }

  if (v106 < 0)
  {
    operator delete(v105[0]);
  }

  if (v108 < 0)
  {
    operator delete(v107[0]);
  }

  if (v110 < 0)
  {
    operator delete(v109[0]);
  }

  if (v112 < 0)
  {
    operator delete(v111[0]);
  }

  if (v114 < 0)
  {
    operator delete(v113[0]);
  }

  if (v116 < 0)
  {
    operator delete(v115[0]);
  }

  if (v118 < 0)
  {
    operator delete(v117[0]);
  }

  if (v120 < 0)
  {
    operator delete(v119[0]);
  }

  if (v122 < 0)
  {
    operator delete(v121[0]);
  }

  if (v124 < 0)
  {
    operator delete(v123[0]);
  }

  if (v126 < 0)
  {
    operator delete(v125[0]);
  }

  if (v128 < 0)
  {
    operator delete(v127[0]);
  }

  if (v130 < 0)
  {
    operator delete(v129[0]);
  }

  if (v132 < 0)
  {
    operator delete(v131[0]);
  }

  if (v134 < 0)
  {
    operator delete(v133[0]);
  }

  if (v136 < 0)
  {
    operator delete(v135[0]);
  }

  __cxa_atexit(sub_10030D340, &qword_1009F4D78, &_mh_execute_header);
  sub_100004A08(&xmmword_1009F4D90, "GLP.plist");
  __cxa_atexit(&std::string::~string, &xmmword_1009F4D90, &_mh_execute_header);
  sub_100004A08(v135, "DSBR");
  sub_100004A08(v133, "DisableSleepBetweenRangingCycles");
  sub_10030E528(__dst, v135, v133, 0);
  sub_100004A08(v131, "DSLP");
  sub_100004A08(v129, "AllowRoseDeepSleep");
  sub_10030E528(v139, v131, v129, 3);
  qword_1009F4DA8 = 0;
  unk_1009F4DB0 = 0;
  qword_1009F4DB8 = 0;
  sub_10030E9C0(&qword_1009F4DA8, __dst, v141, 2uLL);
  for (i = 0; i != -14; i -= 7)
  {
    v4 = &__dst[i * 8];
    if (SHIBYTE(v140[i]) < 0)
    {
      operator delete(*(v4 + 10));
    }

    if (v4[79] < 0)
    {
      operator delete(*(v4 + 7));
    }
  }

  if (v130 < 0)
  {
    operator delete(v129[0]);
  }

  if (v132 < 0)
  {
    operator delete(v131[0]);
  }

  if (v134 < 0)
  {
    operator delete(v133[0]);
  }

  if (v136 < 0)
  {
    operator delete(v135[0]);
  }

  __cxa_atexit(sub_10030D340, &qword_1009F4DA8, &_mh_execute_header);
  sub_100004A08(&xmmword_1009F4DC0, "BTP.plist");
  __cxa_atexit(&std::string::~string, &xmmword_1009F4DC0, &_mh_execute_header);
  sub_100004A08(v135, "SMAM");
  sub_100004A08(v133, "BtThresholdScannerModelAdvertiserModel");
  sub_10030E528(__dst, v135, v133, 2);
  sub_100004A08(v131, "SCAM");
  sub_100004A08(v129, "BtThresholdScannerClassAdvertiserModel");
  sub_10030E528(v139, v131, v129, 2);
  sub_100004A08(v127, "AM");
  sub_100004A08(v125, "BtThresholdAdvertiserModel");
  sub_10030E528(v141, v127, v125, 2);
  sub_100004A08(v123, "SMAC");
  sub_100004A08(v121, "BtThresholdScannerModelAdvertiserClass");
  sub_10030E528(v143, v123, v121, 2);
  sub_100004A08(v119, "SM");
  sub_100004A08(v117, "BtThresholdScannerModel");
  sub_10030E528(v145, v119, v117, 2);
  qword_1009F4DD8 = 0;
  unk_1009F4DE0 = 0;
  qword_1009F4DE8 = 0;
  sub_10030E9C0(&qword_1009F4DD8, __dst, v147, 5uLL);
  v5 = 35;
  do
  {
    v6 = &__dst[v5 * 8];
    if (SHIBYTE(v135[v5 + 1]) < 0)
    {
      operator delete(*(v6 - 4));
    }

    if (*(v6 - 33) < 0)
    {
      operator delete(*(v6 - 7));
    }

    v5 -= 7;
  }

  while (v5 * 8);
  if (v118 < 0)
  {
    operator delete(v117[0]);
  }

  if (v120 < 0)
  {
    operator delete(v119[0]);
  }

  if (v122 < 0)
  {
    operator delete(v121[0]);
  }

  if (v124 < 0)
  {
    operator delete(v123[0]);
  }

  if (v126 < 0)
  {
    operator delete(v125[0]);
  }

  if (v128 < 0)
  {
    operator delete(v127[0]);
  }

  if (v130 < 0)
  {
    operator delete(v129[0]);
  }

  if (v132 < 0)
  {
    operator delete(v131[0]);
  }

  if (v134 < 0)
  {
    operator delete(v133[0]);
  }

  if (v136 < 0)
  {
    operator delete(v135[0]);
  }

  __cxa_atexit(sub_10030D340, &qword_1009F4DD8, &_mh_execute_header);
  sub_100004A08(&xmmword_1009F4DF0, "FP.plist");
  v7 = __cxa_atexit(&std::string::~string, &xmmword_1009F4DF0, &_mh_execute_header);
  sub_10030EE6C(v7);
  sub_100004A08(&xmmword_1009F4E20, "NIACP.plist");
  __cxa_atexit(&std::string::~string, &xmmword_1009F4E20, &_mh_execute_header);
  sub_100004A08(&xmmword_1009F4E38, "NIPRP.plist");
  __cxa_atexit(&std::string::~string, &xmmword_1009F4E38, &_mh_execute_header);
  sub_100004A08(v135, "TOBFTR");
  sub_100004A08(v133, "NIBackgroundAccessoryTimeoutSecondsOverride_InactivityBeforeTracking");
  sub_10030E528(__dst, v135, v133, 0);
  sub_100004A08(v131, "TOAFTR");
  sub_100004A08(v129, "NIBackgroundAccessoryTimeoutSecondsOverride_InactivityAfterTracking");
  sub_10030E528(v139, v131, v129, 0);
  sub_100004A08(v127, "TOTJ");
  sub_100004A08(v125, "NIBackgroundAccessoryTimeoutSecondsOverride_TotalJobTime");
  sub_10030E528(v141, v127, v125, 0);
  sub_100004A08(v123, "FGTOBFTR");
  sub_100004A08(v121, "NIForegroundAccessoryTimeoutSecondsOverride_InactivityBeforeTracking");
  sub_10030E528(v143, v123, v121, 0);
  sub_100004A08(v119, "FGTOAFTR");
  sub_100004A08(v117, "NIForegroundAccessoryTimeoutSecondsOverride_InactivityAfterTracking");
  sub_10030E528(v145, v119, v117, 0);
  sub_100004A08(v115, "FGTOTJ");
  sub_100004A08(v113, "NIForegroundAccessoryTimeoutSecondsOverride_TotalJobTime");
  sub_10030E528(v147, v115, v113, 0);
  qword_1009F4E50 = 0;
  *algn_1009F4E58 = 0;
  qword_1009F4E60 = 0;
  sub_10030E9C0(&qword_1009F4E50, __dst, v148, 6uLL);
  v8 = 42;
  do
  {
    v9 = &__dst[v8 * 8];
    if (SHIBYTE(v135[v8 + 1]) < 0)
    {
      operator delete(*(v9 - 4));
    }

    if (*(v9 - 33) < 0)
    {
      operator delete(*(v9 - 7));
    }

    v8 -= 7;
  }

  while (v8 * 8);
  if (v114 < 0)
  {
    operator delete(v113[0]);
  }

  if (v116 < 0)
  {
    operator delete(v115[0]);
  }

  if (v118 < 0)
  {
    operator delete(v117[0]);
  }

  if (v120 < 0)
  {
    operator delete(v119[0]);
  }

  if (v122 < 0)
  {
    operator delete(v121[0]);
  }

  if (v124 < 0)
  {
    operator delete(v123[0]);
  }

  if (v126 < 0)
  {
    operator delete(v125[0]);
  }

  if (v128 < 0)
  {
    operator delete(v127[0]);
  }

  if (v130 < 0)
  {
    operator delete(v129[0]);
  }

  if (v132 < 0)
  {
    operator delete(v131[0]);
  }

  if (v134 < 0)
  {
    operator delete(v133[0]);
  }

  if (v136 < 0)
  {
    operator delete(v135[0]);
  }

  __cxa_atexit(sub_10030D340, &qword_1009F4E50, &_mh_execute_header);
  sub_100004A08(v135, "GRTOBFTR");
  sub_100004A08(v133, "NIPeerGR_MaxInactivityBeforeTrackingBeganSeconds");
  sub_10030E528(__dst, v135, v133, 1);
  sub_100004A08(v131, "GRTOAFTR");
  sub_100004A08(v129, "NIPeerGR_MaxInactivityAfterTrackingBeganSeconds");
  sub_10030E528(v139, v131, v129, 1);
  sub_100004A08(v127, "EDMTOBFTR");
  sub_100004A08(v125, "NIPeerEDM_MaxInactivityBeforeTrackingBeganSeconds");
  sub_10030E528(v141, v127, v125, 1);
  sub_100004A08(v123, "EDMTOAFTR");
  sub_100004A08(v121, "NIPeerEDM_MaxInactivityAfterTrackingBeganSeconds");
  sub_10030E528(v143, v123, v121, 1);
  qword_1009F4E68 = 0;
  unk_1009F4E70 = 0;
  qword_1009F4E78 = 0;
  sub_10030E9C0(&qword_1009F4E68, __dst, v145, 4uLL);
  for (j = 0; j != -28; j -= 7)
  {
    v11 = &__dst[j * 8];
    if (SHIBYTE(v144[j + 2]) < 0)
    {
      operator delete(*(v11 + 24));
    }

    if (v11[191] < 0)
    {
      operator delete(*(v11 + 21));
    }
  }

  if (v122 < 0)
  {
    operator delete(v121[0]);
  }

  if (v124 < 0)
  {
    operator delete(v123[0]);
  }

  if (v126 < 0)
  {
    operator delete(v125[0]);
  }

  if (v128 < 0)
  {
    operator delete(v127[0]);
  }

  if (v130 < 0)
  {
    operator delete(v129[0]);
  }

  if (v132 < 0)
  {
    operator delete(v131[0]);
  }

  if (v134 < 0)
  {
    operator delete(v133[0]);
  }

  if (v136 < 0)
  {
    operator delete(v135[0]);
  }

  __cxa_atexit(sub_10030D340, &qword_1009F4E68, &_mh_execute_header);
  sub_10030E5D0(__dst, &xmmword_1009F4D60, &qword_1009F4D78);
  sub_10030E5D0(&v138, &xmmword_1009F4D90, &qword_1009F4DA8);
  sub_10030E5D0(v140, &xmmword_1009F4DC0, &qword_1009F4DD8);
  sub_10030E5D0(v142, &xmmword_1009F4DF0, &qword_1009F4E08);
  sub_10030E5D0(v144, &xmmword_1009F4E20, &qword_1009F4E50);
  sub_10030E5D0(v146, &xmmword_1009F4E38, &qword_1009F4E68);
  sub_10030EB50(&qword_1009F4E80, __dst, 6);
  v12 = 36;
  do
  {
    v135[0] = &v135[v12];
    sub_10030E938(v135);
    if (*(&v134 + v12 * 8) < 0)
    {
      operator delete(v133[v12]);
    }

    v12 -= 6;
  }

  while (v12 * 8);
  __cxa_atexit(sub_10030D3C4, &qword_1009F4E80, &_mh_execute_header);
  objc_autoreleasePoolPop(v0);
}

void sub_100312CAC(_Unwind_Exception *a1)
{
  v3 = v1 + 240;
  v4 = -288;
  do
  {
    v3 = sub_10030D378(v3) - 48;
    v4 += 48;
  }

  while (v4);
  _Unwind_Resume(a1);
}

void sub_1003139C8()
{
  do
  {
    v0 -= 6;
    sub_10030D378(v0);
  }

  while (v0 != &STACK[0x5D0]);
  JUMPOUT(0x1003136E8);
}

uint64_t sub_1003144A4(uint64_t a1, void *a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_1009A4878;
  objc_initWeak((a1 + 24), a2);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  return a1;
}

uint64_t sub_1003144F4(uint64_t a1, void *a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_1009A4878;
  v3 = a2;
  *(a1 + 24) = 0;
  objc_initWeak((a1 + 32), v3);

  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_100314560(uint64_t a1)
{
  *a1 = off_1009A4878;
  v2 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "~PRRangingManagerClient()", v5, 2u);
  }

  objc_destroyWeak((a1 + 32));
  objc_destroyWeak((a1 + 24));
  v3 = *(a1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void sub_10031460C(uint64_t a1)
{
  sub_100314560(a1);

  operator delete();
}

void sub_100314644(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  if (v4)
  {
    if (v4 != 1)
    {
      return;
    }

    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained serviceRequestDidUpdateStatus:{*a2, *(a2 + 8)}];
  }

  else
  {
    v10 = objc_loadWeakRetained((a1 + 24));
    v5 = objc_opt_respondsToSelector();

    if ((v5 & 1) == 0 || (*(a2 + 4) - 1) > 3)
    {
      return;
    }

    v6 = objc_loadWeakRetained((a1 + 24));
    v7 = *(a2 + 4) - 1;
    if (v7 > 3)
    {
      v8 = 0;
    }

    else
    {
      v8 = qword_10056B710[v7];
    }

    WeakRetained = v6;
    [v6 rangingRequestDidUpdateStatus:v8];
  }
}

void sub_100314754(uint64_t a1, double *a2)
{
  v4 = *(a1 + 40);
  if (v4)
  {
    if (v4 != 1)
    {
      return;
    }

    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained didReceiveNewSolution:a2];
    goto LABEL_4;
  }

  if (*(a2 + 8) == 5)
  {
    return;
  }

  v52 = objc_loadWeakRetained((a1 + 24));
  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) == 0)
  {
    return;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 24));
  v6 = objc_alloc_init(NSMutableArray);
  if (a2[116])
  {
    v7 = *(a2 + 888);
    v8 = *(a2 + 904);
    if (v8)
    {
      v9 = a2[112];
    }

    else
    {
      v9 = 0.0;
    }

    v10 = *(a2 + 920);
    if (v10)
    {
      v11 = a2[114];
    }

    else
    {
      v11 = 0.0;
    }
  }

  else
  {
    v10 = 0;
    v8 = 0;
    v7 = 0;
    v11 = 0.0;
    v9 = 0.0;
  }

  v12 = *(a2 + 8);
  if (v12 == 4)
  {
    if (*(a2 + 600) != 1)
    {
      v46 = "solution.raw_rose_measurement.has_value()";
      v47 = 251;
      goto LABEL_67;
    }

    if ((a2[94] & 1) == 0)
    {
      __assert_rtn("toXPCCompatibleType", "PRRangingManagerClient.mm", 253, "solution.sensor_fusion_solution.has_value()");
    }

    if (a2[74])
    {
      v13 = a2[73];
    }

    else
    {
      v13 = 0.0;
    }

    if (a2[72])
    {
      v14 = a2[71];
    }

    else
    {
      v14 = 10.0;
    }

    v15 = *(a2 + 80);
    if (v15)
    {
      v16 = a2[9];
    }

    else
    {
      v16 = 0.0;
    }

    v17 = sub_1003152B8(*(a2 + 360), *(a2 + 416));
    v18 = *(a2 + 24);
    v19 = a2[2];
    v20 = [PRRoseSolution alloc];
    if (v18)
    {
      v21 = v19;
    }

    else
    {
      v21 = 0.0;
    }

    LOBYTE(v50) = v15;
    LOBYTE(v49) = v10;
    BYTE1(v48) = v8;
    LOBYTE(v48) = v7 & 1;
    v22 = [v20 initWithVariant:0 macAddr:*(a2 + 5) machAbsTime_sec:*(a2 + 24) machContTimeValid:1 machContTime_sec:1 range_m:1 rangeUnc_m:*a2 azValid:v21 elValid:a2[44] az_deg:v14 el_deg:a2[83] azUnc_deg:a2[82] elUnc_deg:a2[86] fovConfidence:a2[85] soiRssiValid:*&v13 soiRssi_dBm:*(a2 + 27) antennaType:v17 prevSolutionIsBad:v48 trackScoreValid:*&v9 trackScore:v49 sweepAngleValid:*&v11 sweepAngle_deg:v50 multipathProbabilityValid:*&v16 multipathProbability:?];
    [v6 addObject:v22];

    v12 = *(a2 + 8);
  }

  if ((v12 | 2) == 3)
  {
    if (*(a2 + 600) != 1)
    {
      v46 = "solution.raw_rose_measurement.has_value()";
      v47 = 309;
      goto LABEL_67;
    }

    if (a2[72])
    {
      v23 = a2[71];
    }

    else
    {
      v23 = 10.0;
    }

    if (a2[74])
    {
      v24 = a2[73];
    }

    else
    {
      v24 = 0.0;
    }

    v25 = *(a2 + 80);
    if (v25)
    {
      v26 = a2[9];
    }

    else
    {
      v26 = 0.0;
    }

    v27 = sub_1003152B8(*(a2 + 360), *(a2 + 416));
    v28 = *(a2 + 24);
    v29 = a2[2];
    v30 = [PRRoseSolution alloc];
    if (v28)
    {
      v31 = v29;
    }

    else
    {
      v31 = 0.0;
    }

    LOBYTE(v50) = v25;
    LOBYTE(v49) = v10;
    BYTE1(v48) = v8;
    LOBYTE(v48) = v7 & 1;
    v32 = [v30 initWithVariant:0 macAddr:*(a2 + 5) machAbsTime_sec:*(a2 + 24) machContTimeValid:0 machContTime_sec:0 range_m:1 rangeUnc_m:*a2 azValid:v31 elValid:a2[44] az_deg:v23 el_deg:0.0 azUnc_deg:0.0 elUnc_deg:0.0 fovConfidence:0.0 soiRssiValid:*&v24 soiRssi_dBm:*(a2 + 27) antennaType:v27 prevSolutionIsBad:v48 trackScoreValid:*&v9 trackScore:v49 sweepAngleValid:*&v11 sweepAngle_deg:v50 multipathProbabilityValid:*&v26 multipathProbability:?];
    [v6 addObject:v32];

    v12 = *(a2 + 8);
  }

  v33 = WeakRetained;
  if ((v12 & 0xFFFFFFFE) == 2)
  {
    if (a2[94])
    {
      v34 = *(a2 + 600);
      if (v34 == 1)
      {
        v35 = *(a2 + 27);
        v36 = a2[73];
        v37 = *(a2 + 74);
        v38 = sub_1003152B8(*(a2 + 360), *(a2 + 416));
        if ((v37 & 1) == 0)
        {
          v36 = 0.0;
        }

        v39 = *(a2 + 80);
        if (v39)
        {
          v40 = a2[9];
        }

        else
        {
          v40 = 0.0;
        }
      }

      else
      {
        v38 = 0;
        v39 = 0;
        v35 = 0;
        v36 = 0.0;
        v40 = 0.0;
      }

      v41 = *(a2 + 24);
      v42 = a2[2];
      v43 = [PRRoseSolution alloc];
      if (v41)
      {
        v44 = v42;
      }

      else
      {
        v44 = 0.0;
      }

      LOBYTE(v50) = v39;
      LOBYTE(v49) = v10;
      BYTE1(v48) = v8;
      LOBYTE(v48) = v7 & 1;
      v45 = [v43 initWithVariant:1 macAddr:*(a2 + 5) machAbsTime_sec:*(a2 + 24) machContTimeValid:1 machContTime_sec:1 range_m:v34 rangeUnc_m:*a2 azValid:v44 elValid:a2[81] az_deg:a2[84] el_deg:a2[83] azUnc_deg:a2[82] elUnc_deg:a2[86] fovConfidence:a2[85] soiRssiValid:*&v36 soiRssi_dBm:v35 antennaType:v38 prevSolutionIsBad:v48 trackScoreValid:*&v9 trackScore:v49 sweepAngleValid:*&v11 sweepAngle_deg:v50 multipathProbabilityValid:*&v40 multipathProbability:?];
      [v6 addObject:v45];

      v33 = WeakRetained;
      goto LABEL_62;
    }

    v46 = "solution.sensor_fusion_solution.has_value()";
    v47 = 371;
LABEL_67:
    __assert_rtn("toXPCCompatibleType", "PRRangingManagerClient.mm", v47, v46);
  }

LABEL_62:
  [v33 didReceiveNewSolutions:v6];

LABEL_4:
}

void sub_100314C90(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  if (v4)
  {
    if (v4 != 1)
    {
      return;
    }

    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained didReceiveSessionStartNotification:a2];
    v6 = WeakRetained;
  }

  else
  {
    if (*a2)
    {
      return;
    }

    v7 = objc_loadWeakRetained((a1 + 24));
    v8 = objc_opt_respondsToSelector();

    if ((v8 & 1) == 0)
    {
      return;
    }

    if ((*(a2 + 16) & 1) == 0)
    {
      sub_1000195BC();
    }

    v9 = [NSNumber numberWithUnsignedLongLong:*(a2 + 8)];
    v11 = [PRSessionStartNotification createWithBluetoothConnectionEventCounterValue:v9];

    v10 = objc_loadWeakRetained((a1 + 24));
    [v10 didReceiveSessionStartNotification:v11];

    v6 = v11;
  }
}

void sub_100314DC8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) == 1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained didReceiveRemoteData:a2];
  }
}

void sub_100314E54(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) == 1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      v6 = objc_loadWeakRetained((a1 + 32));
      [v6 didReceiveAopSensorFusionUpdate:**(a2 + 8) withBtConnHandle:*(*(a2 + 8) + 4)];
    }
  }
}

void sub_100314F18(uint64_t a1, unsigned int **a2)
{
  if (*(a1 + 40) == 1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      v5 = **a2;
      v7 = objc_loadWeakRetained((a1 + 32));
      [v7 didReceiveAopSFZoneUpdate:v5];
    }
  }
}

void sub_100314FE0(uint64_t a1, uint64_t *a2)
{
  v4 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004BD950(a2, v4);
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    if (v5 != 1)
    {
      return;
    }

    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained didFailWithErrorCode:*a2 errorString:a2 + 1];
  }

  else
  {
    v7 = objc_loadWeakRetained((a1 + 24));
    v8 = objc_opt_respondsToSelector();

    if ((v8 & 1) == 0)
    {
      return;
    }

    WeakRetained = objc_loadWeakRetained((a1 + 24));
    v9 = *a2;
    v12 = a2[1];
    v11 = a2 + 1;
    v10 = v12;
    if (*(v11 + 23) >= 0)
    {
      v10 = v11;
    }

    v13 = [NSString stringWithFormat:@"%s", v10];
    v16 = NSLocalizedDescriptionKey;
    v17 = v13;
    v14 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v15 = PRErrorWithCodeAndUserInfo(v9, v14);

    [WeakRetained didFailWithError:v15];
  }
}

void sub_1003151A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 40);
  if (v6)
  {
    if (v6 != 1)
    {
      return;
    }

    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained rangingServiceDidUpdateState:a2 cause:a3];
  }

  else
  {
    v12 = objc_loadWeakRetained((a1 + 24));
    v7 = objc_opt_respondsToSelector();

    if ((v7 & 1) == 0)
    {
      return;
    }

    v8 = objc_loadWeakRetained((a1 + 24));
    if (a2 > 3)
    {
      v9 = 3;
    }

    else
    {
      v9 = qword_10056B730[a2];
    }

    if (a3 > 7)
    {
      v10 = 5;
    }

    else
    {
      v10 = qword_10056B750[a3];
    }

    WeakRetained = v8;
    [v8 rangingServiceDidUpdateState:v9 cause:v10];
  }
}

uint64_t sub_1003152B8(int a1, int a2)
{
  if ((atomic_load_explicit(&qword_1009F4F78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009F4F78))
  {
    dword_1009F4F70 = *(sub_1000054A8() + 144);
    __cxa_guard_release(&qword_1009F4F78);
  }

  if (a2 == 5)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2 * (a2 == 9);
  }

  sub_1001A6460(v7, dword_1009F4F70, v4, 0, 1);
  v5 = sub_1001A6E84(v7, a1) - 1;
  if (v5 >= 4)
  {
    return 2;
  }

  else
  {
    return qword_10056B790[v5];
  }
}

void sub_100315398()
{
  if ((atomic_load_explicit(&qword_1009E9448, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9448))
  {
    sub_100004A08(qword_1009E9430, "PRRoseProviderNetworkListener");
    __cxa_atexit(&std::string::~string, qword_1009E9430, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9448);
  }
}

void sub_100315448()
{
  if ((atomic_load_explicit(&qword_1009E9468, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9468))
  {
    sub_100004A08(&qword_1009E9450, "com.apple.nearbyd.accessory.download");
    __cxa_atexit(&std::string::~string, &qword_1009E9450, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9468);
  }
}

void sub_1003154F8()
{
  if ((atomic_load_explicit(&qword_1009E9488, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9488))
  {
    sub_100004A08(&qword_1009E9470, "com.apple.nearbyd.accessory.files");
    __cxa_atexit(&std::string::~string, &qword_1009E9470, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9488);
  }
}

void sub_1003155A8()
{
  if ((atomic_load_explicit(&qword_1009E94A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E94A8))
  {
    sub_100004A08(qword_1009E9490, "MA_");
    __cxa_atexit(&std::string::~string, qword_1009E9490, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E94A8);
  }
}

void sub_100315658()
{
  if ((atomic_load_explicit(&qword_1009E94C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E94C8))
  {
    sub_100004A08(qword_1009E94B0, "MB_");
    __cxa_atexit(&std::string::~string, qword_1009E94B0, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E94C8);
  }
}

void sub_100315708()
{
  if ((atomic_load_explicit(&qword_1009E94E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E94E8))
  {
    sub_100004A08(qword_1009E94D0, "D");
    __cxa_atexit(&std::string::~string, qword_1009E94D0, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E94E8);
  }
}

void sub_1003157B8()
{
  if ((atomic_load_explicit(&qword_1009E9508, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9508))
  {
    sub_100004A08(&qword_1009E94F0, "A");
    __cxa_atexit(&std::string::~string, &qword_1009E94F0, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9508);
  }
}

void sub_100315868()
{
  if ((atomic_load_explicit(&qword_1009E9528, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9528))
  {
    sub_100004A08(qword_1009E9510, "FAS.bin");
    __cxa_atexit(&std::string::~string, qword_1009E9510, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9528);
  }
}

void sub_100315918()
{
  if ((atomic_load_explicit(&qword_1009E9548, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1009E9548))
    {
      memset(v0, 0, 32);
      v0[2] = xmmword_10056B688;
      qword_1009E9538 = 0;
      unk_1009E9540 = 0;
      qword_1009E9530 = 0;
      sub_100019AC4(&qword_1009E9530, v0, &v1, 6uLL);
      __cxa_atexit(sub_100017360, &qword_1009E9530, &_mh_execute_header);
      __cxa_guard_release(&qword_1009E9548);
    }
  }
}

void sub_100315A0C()
{
  v0 = objc_autoreleasePoolPush();
  sub_10041C9CC(0);
  v1 = std::string::insert(&v37, 0, "reverseLUT_A");
  v2 = *&v1->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v1->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v2;
  v1->__r_.__value_.__l.__size_ = 0;
  v1->__r_.__value_.__r.__words[2] = 0;
  v1->__r_.__value_.__r.__words[0] = 0;
  v3 = std::string::append(&v38, ".bin");
  v4 = *&v3->__r_.__value_.__l.__data_;
  qword_1009F4EA8 = v3->__r_.__value_.__r.__words[2];
  xmmword_1009F4E98 = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F4E98, &_mh_execute_header);
  sub_10041C9CC(1);
  v5 = std::string::insert(&v37, 0, "reverseLUT_A");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v38, ".bin");
  v8 = *&v7->__r_.__value_.__l.__data_;
  qword_1009F4EC0 = v7->__r_.__value_.__r.__words[2];
  xmmword_1009F4EB0 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F4EB0, &_mh_execute_header);
  sub_10041C9CC(2);
  v9 = std::string::insert(&v37, 0, "reverseLUT_A");
  v10 = *&v9->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  v11 = std::string::append(&v38, ".bin");
  v12 = *&v11->__r_.__value_.__l.__data_;
  qword_1009F4ED8 = v11->__r_.__value_.__r.__words[2];
  xmmword_1009F4EC8 = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F4EC8, &_mh_execute_header);
  sub_10041C9CC(3);
  v13 = std::string::insert(&v37, 0, "reverseLUT_A");
  v14 = *&v13->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  v15 = std::string::append(&v38, ".bin");
  v16 = *&v15->__r_.__value_.__l.__data_;
  qword_1009F4EF0 = v15->__r_.__value_.__r.__words[2];
  xmmword_1009F4EE0 = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F4EE0, &_mh_execute_header);
  sub_10041C9CC(4);
  v17 = std::string::insert(&v37, 0, "reverseLUT_A");
  v18 = *&v17->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v18;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  v19 = std::string::append(&v38, ".bin");
  v20 = *&v19->__r_.__value_.__l.__data_;
  qword_1009F4F08 = v19->__r_.__value_.__r.__words[2];
  xmmword_1009F4EF8 = v20;
  v19->__r_.__value_.__l.__size_ = 0;
  v19->__r_.__value_.__r.__words[2] = 0;
  v19->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F4EF8, &_mh_execute_header);
  sub_10041C9CC(5);
  v21 = std::string::insert(&v37, 0, "reverseLUT_A");
  v22 = *&v21->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v22;
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
  v23 = std::string::append(&v38, ".bin");
  v24 = *&v23->__r_.__value_.__l.__data_;
  qword_1009F4F20 = v23->__r_.__value_.__r.__words[2];
  xmmword_1009F4F10 = v24;
  v23->__r_.__value_.__l.__size_ = 0;
  v23->__r_.__value_.__r.__words[2] = 0;
  v23->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F4F10, &_mh_execute_header);
  sub_10041C9CC(6);
  v25 = std::string::insert(&v37, 0, "reverseLUT_A");
  v26 = *&v25->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v26;
  v25->__r_.__value_.__l.__size_ = 0;
  v25->__r_.__value_.__r.__words[2] = 0;
  v25->__r_.__value_.__r.__words[0] = 0;
  v27 = std::string::append(&v38, ".bin");
  v28 = *&v27->__r_.__value_.__l.__data_;
  qword_1009F4F38 = v27->__r_.__value_.__r.__words[2];
  xmmword_1009F4F28 = v28;
  v27->__r_.__value_.__l.__size_ = 0;
  v27->__r_.__value_.__r.__words[2] = 0;
  v27->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F4F28, &_mh_execute_header);
  sub_10041C9CC(7);
  v29 = std::string::insert(&v37, 0, "reverseLUT_A");
  v30 = *&v29->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v30;
  v29->__r_.__value_.__l.__size_ = 0;
  v29->__r_.__value_.__r.__words[2] = 0;
  v29->__r_.__value_.__r.__words[0] = 0;
  v31 = std::string::append(&v38, ".bin");
  v32 = *&v31->__r_.__value_.__l.__data_;
  qword_1009F4F50 = v31->__r_.__value_.__r.__words[2];
  xmmword_1009F4F40 = v32;
  v31->__r_.__value_.__l.__size_ = 0;
  v31->__r_.__value_.__r.__words[2] = 0;
  v31->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F4F40, &_mh_execute_header);
  sub_10041C9CC(8);
  v33 = std::string::insert(&v37, 0, "reverseLUT_A");
  v34 = *&v33->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v34;
  v33->__r_.__value_.__l.__size_ = 0;
  v33->__r_.__value_.__r.__words[2] = 0;
  v33->__r_.__value_.__r.__words[0] = 0;
  v35 = std::string::append(&v38, ".bin");
  v36 = *&v35->__r_.__value_.__l.__data_;
  qword_1009F4F68 = v35->__r_.__value_.__r.__words[2];
  xmmword_1009F4F58 = v36;
  v35->__r_.__value_.__l.__size_ = 0;
  v35->__r_.__value_.__r.__words[2] = 0;
  v35->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F4F58, &_mh_execute_header);
  objc_autoreleasePoolPop(v0);
}

void sub_10031604C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003161A8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = PRSystemSettingsMonitor;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_100316554(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

const __CFString *sub_100316574(uint64_t a1)
{
  v1 = @"PRAirplaneModeOff";
  if (a1 == 1)
  {
    v1 = @"PRAirplaneModeOn";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"PRAirplaneModeStatusUnknown";
  }
}

void sub_100316724()
{
  v0 = objc_autoreleasePoolPush();
  qword_1009F4F80 = os_log_create("com.apple.nearbyd", "Regulatory");

  objc_autoreleasePoolPop(v0);
}

uint64_t sub_100316778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0;
  v5 = (a1 + 8);
  v6 = (a1 + 424);
  *(a1 + 472) = 0;
  *(a1 + 8) = v8;
  *(v5 + *(v8 - 24)) = v7;
  v9 = (a1 + 8 + *(*(a1 + 8) - 24));
  std::ios_base::init(v9, (a1 + 16));
  v9[1].__vftable = 0;
  v9[1].__fmtflags_ = -1;
  std::filebuf::basic_filebuf();
  if (*(a2 + 23) >= 0)
  {
    v10 = a2;
  }

  else
  {
    v10 = *a2;
  }

  v11 = gzopen(v10, "rb");
  *a1 = v11;
  if (!v11)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004BDB10();
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    std::runtime_error::runtime_error(exception, &v15);
  }

  std::ofstream::open();
  if (!*(a1 + 136))
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004BDAA8();
    }

    gzclose(*a1);
    *a1 = 0;
    v14 = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    std::runtime_error::runtime_error(v14, &v15);
  }

  return a1;
}

void sub_100316A28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      std::ios::~ios();
      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v16);
  goto LABEL_6;
}

uint64_t sub_100316AA4(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    gzclose(v2);
  }

  std::filebuf::~filebuf();
  std::ostream::~ostream();
  std::ios::~ios();
  return a1;
}

BOOL sub_100316B8C(uint64_t a1, uint64_t a2)
{
  sub_100316778(file, a1, a2);
  if (file[0] && file[17])
  {
    sub_10003FB04(buf, 0x4000);
    while (2)
    {
      v2 = gzeof(file[0]);
      v3 = v2 != 0;
      if (v2)
      {
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
        {
          sub_1004BDD7C();
        }
      }

      else
      {
        v4 = gzread(file[0], buf[0], 0x4000u);
        if (v4)
        {
          v5 = 0;
          v6 = v4;
          v7 = v4;
          do
          {
            std::ostream::write();
            if ((*(&file[5] + *&file[1][-1].have) & 5) != 0)
            {
              if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
              {
                sub_1004BDC44();
              }

              goto LABEL_15;
            }

            ++v5;
          }

          while (v7 != v5);
          if (v7 == v6)
          {
            continue;
          }

          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
          {
            sub_1004BDCAC();
          }
        }

        else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          sub_1004BDD14();
        }
      }

      break;
    }

LABEL_15:
    if (buf[0])
    {
      buf[1] = buf[0];
      operator delete(buf[0]);
    }
  }

  else
  {
    v3 = 0;
  }

  sub_100316AA4(file);
  return v3;
}

void sub_100316D94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_100316AA4(va);
  if (a2 == 1)
  {
    v13 = __cxa_begin_catch(a1);
    v14 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004BDB98(v13, v14);
    }

    __cxa_end_catch();
    JUMPOUT(0x100316CF8);
  }

  _Unwind_Resume(a1);
}

void sub_100317C54(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3 == &_xpc_error_connection_invalid && os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004BDE44();
  }

  [*(a1 + 32) _processXPCEvent:v3];
}

void sub_100317CDC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _cbInterruptionHandler];
}

void sub_100317D38(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _cbErrorHandler:v3];
}

void sub_100317DAC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _cbBluetoothStateChangedHandler];
}

void sub_100317E08(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100005288();
  v5 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v7 = v4 - v5;
    v8 = qword_1009F9820;
    if (v3)
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
      {
        sub_1004BDE78();
      }

      v9 = WeakRetained[115];
      WeakRetained[115] = 0;
    }

    else
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 134217984;
        v11 = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,CBController: Activation complete [%0.6f s]", &v10, 0xCu);
      }

      [WeakRetained _cbBluetoothStateChangedHandler];
    }
  }
}

void sub_100318B20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  for (i = 8; i != -8; i -= 8)
  {
  }

  _Unwind_Resume(a1);
}

void sub_100318E44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  for (i = 8; i != -8; i -= 8)
  {
  }

  _Unwind_Resume(a1);
}

void sub_10031A7E4(uint64_t a1)
{
  v4.receiver = *(a1 + 32);
  v4.super_class = NIServerItemLocalizerSession;
  v2 = objc_msgSendSuper2(&v4, "resourcesManager");
  v3 = [v2 remote];
  [v3 didUpdateNearbyObjects:*(a1 + 40)];
}

void sub_10031A9AC(uint64_t a1)
{
  v4.receiver = *(a1 + 32);
  v4.super_class = NIServerItemLocalizerSession;
  v2 = objc_msgSendSuper2(&v4, "resourcesManager");
  v3 = [v2 remote];
  [v3 didUpdateAlgorithmState:*(a1 + 40) forObject:*(a1 + 48)];
}

const char *sub_10031AC04(unint64_t a1)
{
  if (a1 > 0xA)
  {
    return "?";
  }

  else
  {
    return off_1009A50F8[a1];
  }
}

void sub_10031AF28(uint64_t a1)
{
  v3.receiver = *(a1 + 32);
  v3.super_class = NIServerItemLocalizerSession;
  v1 = objc_msgSendSuper2(&v3, "resourcesManager");
  v2 = [v1 remote];
  [v2 uwbSessionInterruptedWithReason:8 timestamp:sub_100005288()];
}

const char *sub_10031B88C(int a1)
{
  if ((a1 - 1) > 5)
  {
    return "Invalid";
  }

  else
  {
    return off_1009A5150[a1 - 1];
  }
}

void sub_10031C030(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_10031C8B8(_Unwind_Exception *a1)
{
  if (v1)
  {
    sub_10000AD84(v1);
  }

  _Unwind_Resume(a1);
}

void sub_10031DD14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10031E968(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10031E988(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (!WeakRetained)
  {
    goto LABEL_12;
  }

  if (v6 && os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004BE888();
    if (v5)
    {
LABEL_5:
      [v5 timestamp];
      v9 = sub_1002FE75C((WeakRetained + 109), v8);
      if (v10)
      {
        v11 = v9;
        [v5 userAcceleration];
        v48 = v12;
        [v5 userAcceleration];
        v47 = v13;
        [v5 userAcceleration];
        v46 = v14;
        [v5 rotationRate];
        v45 = v15;
        [v5 rotationRate];
        v44 = v16;
        [v5 rotationRate];
        v43 = v17;
        v49 = [v5 attitude];
        [v49 quaternion];
        v42 = v18;
        v19 = [v5 attitude];
        [v19 quaternion];
        v21 = v20;
        v22 = [v5 attitude];
        [v22 quaternion];
        v24 = v23;
        v25 = [v5 attitude];
        [v25 quaternion];
        v27 = v26;
        [v5 gravity];
        v29 = v28;
        [v5 gravity];
        v31 = v30;
        [v5 gravity];
        v33 = v32;
        v34 = [v5 attitude];
        [v34 yaw];
        v36 = v35;
        v37 = [v5 attitude];
        [v37 pitch];
        v39 = v38;
        v40 = [v5 attitude];
        [v40 roll];
        v50[0] = v11;
        v50[1] = v48;
        v50[2] = v47;
        v50[3] = v46;
        v50[4] = v45;
        v50[5] = v44;
        v50[6] = v43;
        v50[7] = v42;
        v50[8] = v21;
        v50[9] = v24;
        v50[10] = v27;
        v50[11] = v29;
        v50[12] = v31;
        v50[13] = v33;
        v50[14] = v36;
        v50[15] = v39;
        v50[16] = v41;

        [WeakRetained[7] acceptDeviceMotionInput:v50];
      }

      else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004BE8F8();
      }

      goto LABEL_12;
    }
  }

  else if (v5)
  {
    goto LABEL_5;
  }

  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004BE92C();
  }

LABEL_12:
}

void sub_10031EF10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10031EF30(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (v6 && os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004BE99C();
      if (v5)
      {
        goto LABEL_5;
      }
    }

    else if (v5)
    {
LABEL_5:
      [v5 timestamp];
      v9 = v8;
      v10 = [v5 relativeAltitude];
      [v10 doubleValue];
      v12 = v11;
      v13 = [v5 pressure];
      [v13 doubleValue];
      v15[0] = v9;
      v15[1] = v12;
      v15[2] = v14;

      [WeakRetained[7] acceptAltimeterData:v15];
      goto LABEL_9;
    }

    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004BEA0C();
    }
  }

LABEL_9:
}

void sub_10031F054(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_10031F2C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10031F2E4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (!WeakRetained)
  {
    goto LABEL_52;
  }

  if (v6 && os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004BEA74();
    if (v5)
    {
      goto LABEL_5;
    }
  }

  else if (v5)
  {
LABEL_5:
    v8 = [v5 deltaPositionX];

    if (v8)
    {
      v9 = [v5 deltaPositionX];
      [v9 doubleValue];
      v61 = v10;

      v11 = 1;
    }

    else
    {
      v11 = 0;
      v61 = 0;
    }

    v12 = [v5 deltaPositionY];

    if (v12)
    {
      v13 = [v5 deltaPositionY];
      [v13 doubleValue];
      v60 = v14;

      v15 = 1;
    }

    else
    {
      v15 = 0;
      v60 = 0;
    }

    v16 = [v5 deltaPositionZ];

    if (v16)
    {
      v17 = [v5 deltaPositionZ];
      [v17 doubleValue];
      v19 = v18;

      v20 = 1;
    }

    else
    {
      v20 = 0;
      v19 = 0;
    }

    v21 = [v5 deltaVelocityX];

    if (v21)
    {
      v22 = [v5 deltaVelocityX];
      [v22 doubleValue];
      v24 = v23;

      v25 = 1;
    }

    else
    {
      v25 = 0;
      v24 = 0;
    }

    v26 = [v5 deltaVelocityY];

    if (v26)
    {
      v27 = [v5 deltaVelocityY];
      [v27 doubleValue];
      v29 = v28;

      v59 = 1;
    }

    else
    {
      v59 = 0;
      v29 = 0;
    }

    v30 = [v5 deltaVelocityZ];

    v57 = v20;
    v58 = v15;
    v56 = v25;
    if (v30)
    {
      v31 = [v5 deltaVelocityZ];
      [v31 doubleValue];
      v33 = v32;

      v34 = 1;
    }

    else
    {
      v34 = 0;
      v33 = 0;
    }

    v35 = [v5 quaternionW];

    if (v35)
    {
      v36 = [v5 quaternionW];
      [v36 doubleValue];
      v38 = v37;
    }

    else
    {
      v38 = 0.0;
    }

    v39 = [v5 quaternionX];

    if (v39)
    {
      v40 = [v5 quaternionX];
      [v40 doubleValue];
      v42 = v41;
    }

    else
    {
      v42 = 0;
    }

    v43 = [v5 quaternionY];

    if (v43)
    {
      v44 = [v5 quaternionY];
      [v44 doubleValue];
      v46 = v45;
    }

    else
    {
      v46 = 0;
    }

    v47 = [v5 quaternionZ];

    if (v47)
    {
      v48 = [v5 quaternionZ];
      [v48 doubleValue];
      v50 = v49;
    }

    else
    {
      v38 = 0.0;
      v50 = 0;
    }

    [v5 timestamp];
    v62 = v51;
    v63 = 0;
    if (v35)
    {
      v52 = v39 == 0;
    }

    else
    {
      v52 = 1;
    }

    v53 = v52 || v43 == 0;
    v64 = 0;
    v54 = v53;
    v65 = v61;
    v55 = 0.0;
    if (!v53)
    {
      v55 = v38;
    }

    v66 = v11;
    v67 = v60;
    v68 = v58;
    v69 = v19;
    v70 = v57;
    v71 = v24;
    v72 = v56;
    v73 = v29;
    v74 = v59;
    v75 = v33;
    v76 = v34;
    v77 = v55;
    v78 = v42;
    v79 = v46;
    v80 = v50;
    v81 = (v47 != 0) & ~v54;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
    {
      sub_1004BEAE4();
    }

    [WeakRetained[7] acceptDevicePDRInput:&v62];
    goto LABEL_52;
  }

  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004BEB54();
  }

LABEL_52:
}

void sub_10031FA54(uint64_t a1)
{
  v4.receiver = *(a1 + 32);
  v4.super_class = NIServerItemLocalizerSession;
  v2 = objc_msgSendSuper2(&v4, "resourcesManager");
  v3 = [v2 remote];
  [v3 didDiscoverNearbyObject:*(a1 + 40)];
}

void sub_10031FE20(uint64_t a1)
{
  v5.receiver = *(a1 + 32);
  v5.super_class = NIServerItemLocalizerSession;
  v2 = objc_msgSendSuper2(&v5, "resourcesManager");
  v3 = [v2 remote];
  v6 = *(a1 + 40);
  v4 = [NSArray arrayWithObjects:&v6 count:1];
  [v3 didRemoveNearbyObjects:v4 withReason:0];
}

void sub_10031FEF0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_100320450(_Unwind_Exception *a1)
{
  if (v2)
  {
    sub_10000AD84(v2);
  }

  _Unwind_Resume(a1);
}

void sub_10032111C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_10000AD84(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003216FC(_Unwind_Exception *a1)
{
  v4 = v2;

  _Unwind_Resume(a1);
}

void sub_100322D7C(uint64_t a1)
{
  v3.receiver = *(a1 + 32);
  v3.super_class = NIServerItemLocalizerSession;
  v1 = objc_msgSendSuper2(&v3, "resourcesManager");
  v2 = [v1 remote];
  [v2 uwbSessionInterruptionReasonEnded:8 timestamp:sub_100005288()];
}

void sub_100324F90(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1009A4A78;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100325038(uint64_t a1)
{

  operator delete();
}

id sub_1003250EC(uint64_t a1, void *a2)
{
  *a2 = off_1009A4AC8;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void sub_10032513C(id *a1)
{

  operator delete(a1);
}

void sub_100325178(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  v6 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,Calling requestStateCallback.", v7, 2u);
  }

  dispatch_assert_queue_V2(*(*(a1 + 8) + 64));
  [*(a1 + 8) didServiceRequestUpdateStatus:{*a3, *(a3 + 8)}];
  if (v5)
  {
    sub_10000AD84(v5);
  }
}

void sub_100325228(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_10000AD84(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100325240(uint64_t a1, uint64_t a2)
{
  if (sub_100023EF4(a2, &off_1009A4B28))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1003252B8(uint64_t a1)
{

  operator delete();
}

id sub_10032536C(uint64_t a1, void *a2)
{
  *a2 = off_1009A4B48;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void sub_1003253BC(id *a1)
{

  operator delete(a1);
}

void sub_1003253F8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  v6 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,Calling solutionsCallback.", v7, 2u);
  }

  dispatch_assert_queue_V2(*(*(a1 + 8) + 64));
  [*(a1 + 8) didReceiveNewSolution:a3];
  if (v5)
  {
    sub_10000AD84(v5);
  }
}

void sub_1003254A4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_10000AD84(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003254BC(uint64_t a1, uint64_t a2)
{
  if (sub_100023EF4(a2, &off_1009A4BA8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100325534(uint64_t a1)
{

  operator delete();
}

id sub_1003255E8(uint64_t a1, void *a2)
{
  *a2 = off_1009A4BC8;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void sub_100325638(id *a1)
{

  operator delete(a1);
}

void sub_100325674(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  v6 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,Calling dataCallback.", v7, 2u);
  }

  dispatch_assert_queue_V2(*(*(a1 + 8) + 64));
  [*(a1 + 8) didReceiveRemoteData:a3];
  if (v5)
  {
    sub_10000AD84(v5);
  }
}

void sub_100325720(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_10000AD84(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100325738(uint64_t a1, uint64_t a2)
{
  if (sub_100023EF4(a2, &off_1009A4C28))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1003257B0(uint64_t a1)
{

  operator delete();
}

id sub_100325864(uint64_t a1, void *a2)
{
  *a2 = off_1009A4C48;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void sub_1003258B4(id *a1)
{

  operator delete(a1);
}

void sub_1003258F0(uint64_t a1, void *a2, unsigned int *a3)
{
  v4 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  v5 = *a3;
  v6 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,Calling invalidationCallback.", v8, 2u);
    v6 = qword_1009F9820;
  }

  v7 = v6;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_100342FC8(v5, v8);
    sub_1004BF4F4();
  }

  dispatch_assert_queue_V2(*(*(a1 + 8) + 64));
  [*(a1 + 8) didInvalidateUWBSession];
  if (v4)
  {
    sub_10000AD84(v4);
  }
}

void sub_100325A04(_Unwind_Exception *a1)
{
  if (v1)
  {
    sub_10000AD84(v1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100325A30(uint64_t a1, uint64_t a2)
{
  if (sub_100023EF4(a2, &off_1009A4CA8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100325AA8(uint64_t a1)
{

  operator delete();
}

id sub_100325B5C(uint64_t a1, void *a2)
{
  *a2 = off_1009A4CC8;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void sub_100325BAC(id *a1)
{

  operator delete(a1);
}

void sub_100325BE8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  dispatch_assert_queue_V2(*(*(a1 + 8) + 64));
  v6 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,Calling unsuccessfulRangingCallback.", v7, 2u);
  }

  [*(a1 + 8) didReceiveUnsuccessfulSolution:a3];
  if (v5)
  {
    sub_10000AD84(v5);
  }
}

void sub_100325C94(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_10000AD84(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100325CAC(uint64_t a1, uint64_t a2)
{
  if (sub_100023EF4(a2, &off_1009A4D28))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100325D24(uint64_t a1)
{

  operator delete();
}

id sub_100325DD8(uint64_t a1, void *a2)
{
  *a2 = off_1009A4D48;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void sub_100325E28(id *a1)
{

  operator delete(a1);
}

void sub_100325E64(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  v6 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,Calling sessionStartNotifCallback.", v7, 2u);
  }

  dispatch_assert_queue_V2(*(*(a1 + 8) + 64));
  [*(a1 + 8) didReceiveSessionStartNotification:a3];
  if (v5)
  {
    sub_10000AD84(v5);
  }
}

void sub_100325F10(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_10000AD84(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100325F28(uint64_t a1, uint64_t a2)
{
  if (sub_100023EF4(a2, &off_1009A4DB8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100325F78(uint64_t a1)
{
  sub_10033B624(a1);

  operator delete();
}

void sub_100325FB8(uint64_t a1)
{
  sub_10033B624(a1 - 8);

  operator delete();
}

void sub_100325FF4()
{
  if ((atomic_load_explicit(&qword_1009E9448, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9448))
  {
    sub_100004A08(qword_1009E9430, "PRRoseProviderNetworkListener");
    __cxa_atexit(&std::string::~string, qword_1009E9430, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9448);
  }
}

void sub_1003260A4()
{
  if ((atomic_load_explicit(&qword_1009E9468, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9468))
  {
    sub_100004A08(&qword_1009E9450, "com.apple.nearbyd.accessory.download");
    __cxa_atexit(&std::string::~string, &qword_1009E9450, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9468);
  }
}

void sub_100326154()
{
  if ((atomic_load_explicit(&qword_1009E9488, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9488))
  {
    sub_100004A08(&qword_1009E9470, "com.apple.nearbyd.accessory.files");
    __cxa_atexit(&std::string::~string, &qword_1009E9470, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9488);
  }
}

void sub_100326204()
{
  if ((atomic_load_explicit(&qword_1009E94A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E94A8))
  {
    sub_100004A08(qword_1009E9490, "MA_");
    __cxa_atexit(&std::string::~string, qword_1009E9490, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E94A8);
  }
}

void sub_1003262B4()
{
  if ((atomic_load_explicit(&qword_1009E94C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E94C8))
  {
    sub_100004A08(qword_1009E94B0, "MB_");
    __cxa_atexit(&std::string::~string, qword_1009E94B0, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E94C8);
  }
}

void sub_100326364()
{
  if ((atomic_load_explicit(&qword_1009E94E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E94E8))
  {
    sub_100004A08(qword_1009E94D0, "D");
    __cxa_atexit(&std::string::~string, qword_1009E94D0, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E94E8);
  }
}

void sub_100326414()
{
  if ((atomic_load_explicit(&qword_1009E9508, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9508))
  {
    sub_100004A08(&qword_1009E94F0, "A");
    __cxa_atexit(&std::string::~string, &qword_1009E94F0, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9508);
  }
}

void sub_1003264C4()
{
  if ((atomic_load_explicit(&qword_1009E9528, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9528))
  {
    sub_100004A08(qword_1009E9510, "FAS.bin");
    __cxa_atexit(&std::string::~string, qword_1009E9510, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9528);
  }
}

void sub_100326574()
{
  if ((atomic_load_explicit(&qword_1009E9548, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1009E9548))
    {
      memset(v0, 0, 32);
      v0[2] = xmmword_10056B840;
      qword_1009E9538 = 0;
      unk_1009E9540 = 0;
      qword_1009E9530 = 0;
      sub_100019AC4(&qword_1009E9530, v0, &v1, 6uLL);
      __cxa_atexit(sub_100017360, &qword_1009E9530, &_mh_execute_header);
      __cxa_guard_release(&qword_1009E9548);
    }
  }
}

void sub_100326668()
{
  v0 = objc_autoreleasePoolPush();
  v43 = xmmword_10056B7B0;
  v44[0] = unk_10056B7C0;
  sub_1001BD0B0(qword_1009F4F88, &v43, 4);
  xmmword_1009F4FA0 = xmmword_100563BD0;
  *algn_1009F4FB0 = xmmword_100563BE0;
  qword_1009F4FC8 = 0;
  unk_1009F4FD0 = 0;
  qword_1009F4FC0 = 0x3FD999999999999ALL;
  unk_1009F4FD8 = xmmword_100563BF0;
  dword_1009F4FE8 = 5;
  qword_1009F4FF0 = 0x4000000000000000;
  dword_1009F4FF8 = 5;
  byte_1009F5000 = 0;
  *&algn_1009F5001[3] = 0x30000000ALL;
  xmmword_1009F5010 = xmmword_100563C00;
  unk_1009F5020 = xmmword_100563C10;
  xmmword_1009F5030 = xmmword_100563C20;
  qword_1009F5040 = 0x3FE3333333333333;
  dword_1009F5048 = 3;
  xmmword_1009F5050 = xmmword_100563C30;
  unk_1009F5060 = xmmword_100563C10;
  xmmword_1009F5070 = xmmword_100563C00;
  qword_1009F5080 = 0x3FE3333333333333;
  byte_1009F5088 = 0;
  xmmword_1009F5090 = xmmword_100563C40;
  unk_1009F50A0 = xmmword_100563C50;
  __asm { FMOV            V0.2D, #1.0 }

  v42 = _Q0;
  xmmword_1009F50B0 = _Q0;
  qword_1009F50C0 = 0xBFD3333333333333;
  xmmword_1009F50C8 = xmmword_100563C60;
  qword_1009F50D8 = 0x3E99999A40000000;
  xmmword_1009F50E0 = xmmword_100563BE0;
  qword_1009F50F8 = 0;
  unk_1009F5100 = 0;
  qword_1009F50F0 = 0x3FD999999999999ALL;
  xmmword_1009F5108 = xmmword_100563BF0;
  dword_1009F5118 = 5;
  qword_1009F5120 = 0x4000000000000000;
  dword_1009F5128 = 4;
  qword_1009F5130 = 0x300000008;
  qword_1009F5138 = 0xC04E800000000000;
  v45.__r_.__value_.__r.__words[0] = 0xC04E800000000000;
  sub_1001BD370(qword_1009F5140, &v45, 1);
  xmmword_1009F5158 = xmmword_100563C70;
  qword_1009F5168 = 0x4024000000000000;
  dword_1009F5170 = 45;
  byte_1009F5178 = 0;
  byte_1009F5190 = 0;
  qword_1009F5198 = 0;
  byte_1009F51A0 = 0;
  dword_1009F51A4 = 1;
  byte_1009F51A8 = 1;
  xmmword_1009F51B0 = xmmword_100563C80;
  xmmword_1009F51C0 = xmmword_100563C90;
  xmmword_1009F51D0 = v42;
  qword_1009F51E0 = 0xC059000000000000;
  xmmword_1009F51E8 = xmmword_100563CA0;
  qword_1009F51F8 = vdup_n_s32(0x3DCCCCCDu);
  xmmword_1009F5200 = xmmword_100563BE0;
  qword_1009F5210 = 0x3FD999999999999ALL;
  xmmword_1009F5218 = 0u;
  unk_1009F5228 = xmmword_100563BF0;
  dword_1009F5238 = 5;
  qword_1009F5240 = 0x4000000000000000;
  dword_1009F5248 = 10;
  qword_1009F5250 = 0x4034000000000000;
  dword_1009F5258 = 3;
  xmmword_1009F5260 = xmmword_100563CB0;
  __cxa_atexit(sub_1001BB564, qword_1009F4F88, &_mh_execute_header);
  __cxa_atexit(nullsub_73, &off_1009EBFD8, &_mh_execute_header);
  __cxa_atexit(nullsub_74, &off_1009EBFE0, &_mh_execute_header);
  v43 = xmmword_10056B7D0;
  v44[0] = unk_10056B7E0;
  v44[1] = xmmword_10056B7F0;
  v44[2] = unk_10056B800;
  qword_1009F5278 = 0;
  unk_1009F5280 = 0;
  qword_1009F5270 = 0;
  sub_10004EEB8(&qword_1009F5270, &v43, &v45, 4uLL);
  __cxa_atexit(sub_100045220, &qword_1009F5270, &_mh_execute_header);
  v43 = xmmword_10056B810;
  qword_1009F5290 = 0;
  unk_1009F5298 = 0;
  qword_1009F5288 = 0;
  sub_10004EEB8(&qword_1009F5288, &v43, v44, 1uLL);
  __cxa_atexit(sub_100045220, &qword_1009F5288, &_mh_execute_header);
  sub_10041C9CC(0);
  v6 = std::string::insert(&v45, 0, "reverseLUT_A");
  v7 = *&v6->__r_.__value_.__l.__data_;
  *&v44[0] = *(&v6->__r_.__value_.__l + 2);
  v43 = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  v8 = std::string::append(&v43, ".bin");
  v9 = *&v8->__r_.__value_.__l.__data_;
  qword_1009F52B0 = v8->__r_.__value_.__r.__words[2];
  xmmword_1009F52A0 = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  if (SBYTE7(v44[0]) < 0)
  {
    operator delete(v43);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F52A0, &_mh_execute_header);
  sub_10041C9CC(1);
  v10 = std::string::insert(&v45, 0, "reverseLUT_A");
  v11 = *&v10->__r_.__value_.__l.__data_;
  *&v44[0] = *(&v10->__r_.__value_.__l + 2);
  v43 = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  v12 = std::string::append(&v43, ".bin");
  v13 = *&v12->__r_.__value_.__l.__data_;
  qword_1009F52C8 = v12->__r_.__value_.__r.__words[2];
  xmmword_1009F52B8 = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if (SBYTE7(v44[0]) < 0)
  {
    operator delete(v43);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F52B8, &_mh_execute_header);
  sub_10041C9CC(2);
  v14 = std::string::insert(&v45, 0, "reverseLUT_A");
  v15 = *&v14->__r_.__value_.__l.__data_;
  *&v44[0] = *(&v14->__r_.__value_.__l + 2);
  v43 = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  v16 = std::string::append(&v43, ".bin");
  v17 = *&v16->__r_.__value_.__l.__data_;
  qword_1009F52E0 = v16->__r_.__value_.__r.__words[2];
  xmmword_1009F52D0 = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  if (SBYTE7(v44[0]) < 0)
  {
    operator delete(v43);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F52D0, &_mh_execute_header);
  sub_10041C9CC(3);
  v18 = std::string::insert(&v45, 0, "reverseLUT_A");
  v19 = *&v18->__r_.__value_.__l.__data_;
  *&v44[0] = *(&v18->__r_.__value_.__l + 2);
  v43 = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  v20 = std::string::append(&v43, ".bin");
  v21 = *&v20->__r_.__value_.__l.__data_;
  qword_1009F52F8 = v20->__r_.__value_.__r.__words[2];
  xmmword_1009F52E8 = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  if (SBYTE7(v44[0]) < 0)
  {
    operator delete(v43);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F52E8, &_mh_execute_header);
  sub_10041C9CC(4);
  v22 = std::string::insert(&v45, 0, "reverseLUT_A");
  v23 = *&v22->__r_.__value_.__l.__data_;
  *&v44[0] = *(&v22->__r_.__value_.__l + 2);
  v43 = v23;
  v22->__r_.__value_.__l.__size_ = 0;
  v22->__r_.__value_.__r.__words[2] = 0;
  v22->__r_.__value_.__r.__words[0] = 0;
  v24 = std::string::append(&v43, ".bin");
  v25 = *&v24->__r_.__value_.__l.__data_;
  qword_1009F5310 = v24->__r_.__value_.__r.__words[2];
  xmmword_1009F5300 = v25;
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
  if (SBYTE7(v44[0]) < 0)
  {
    operator delete(v43);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F5300, &_mh_execute_header);
  sub_10041C9CC(5);
  v26 = std::string::insert(&v45, 0, "reverseLUT_A");
  v27 = *&v26->__r_.__value_.__l.__data_;
  *&v44[0] = *(&v26->__r_.__value_.__l + 2);
  v43 = v27;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  v28 = std::string::append(&v43, ".bin");
  v29 = *&v28->__r_.__value_.__l.__data_;
  qword_1009F5328 = v28->__r_.__value_.__r.__words[2];
  xmmword_1009F5318 = v29;
  v28->__r_.__value_.__l.__size_ = 0;
  v28->__r_.__value_.__r.__words[2] = 0;
  v28->__r_.__value_.__r.__words[0] = 0;
  if (SBYTE7(v44[0]) < 0)
  {
    operator delete(v43);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F5318, &_mh_execute_header);
  sub_10041C9CC(6);
  v30 = std::string::insert(&v45, 0, "reverseLUT_A");
  v31 = *&v30->__r_.__value_.__l.__data_;
  *&v44[0] = *(&v30->__r_.__value_.__l + 2);
  v43 = v31;
  v30->__r_.__value_.__l.__size_ = 0;
  v30->__r_.__value_.__r.__words[2] = 0;
  v30->__r_.__value_.__r.__words[0] = 0;
  v32 = std::string::append(&v43, ".bin");
  v33 = *&v32->__r_.__value_.__l.__data_;
  qword_1009F5340 = v32->__r_.__value_.__r.__words[2];
  xmmword_1009F5330 = v33;
  v32->__r_.__value_.__l.__size_ = 0;
  v32->__r_.__value_.__r.__words[2] = 0;
  v32->__r_.__value_.__r.__words[0] = 0;
  if (SBYTE7(v44[0]) < 0)
  {
    operator delete(v43);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F5330, &_mh_execute_header);
  sub_10041C9CC(7);
  v34 = std::string::insert(&v45, 0, "reverseLUT_A");
  v35 = *&v34->__r_.__value_.__l.__data_;
  *&v44[0] = *(&v34->__r_.__value_.__l + 2);
  v43 = v35;
  v34->__r_.__value_.__l.__size_ = 0;
  v34->__r_.__value_.__r.__words[2] = 0;
  v34->__r_.__value_.__r.__words[0] = 0;
  v36 = std::string::append(&v43, ".bin");
  v37 = *&v36->__r_.__value_.__l.__data_;
  qword_1009F5358 = v36->__r_.__value_.__r.__words[2];
  xmmword_1009F5348 = v37;
  v36->__r_.__value_.__l.__size_ = 0;
  v36->__r_.__value_.__r.__words[2] = 0;
  v36->__r_.__value_.__r.__words[0] = 0;
  if (SBYTE7(v44[0]) < 0)
  {
    operator delete(v43);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F5348, &_mh_execute_header);
  sub_10041C9CC(8);
  v38 = std::string::insert(&v45, 0, "reverseLUT_A");
  v39 = *&v38->__r_.__value_.__l.__data_;
  *&v44[0] = *(&v38->__r_.__value_.__l + 2);
  v43 = v39;
  v38->__r_.__value_.__l.__size_ = 0;
  v38->__r_.__value_.__r.__words[2] = 0;
  v38->__r_.__value_.__r.__words[0] = 0;
  v40 = std::string::append(&v43, ".bin");
  v41 = *&v40->__r_.__value_.__l.__data_;
  qword_1009F5370 = v40->__r_.__value_.__r.__words[2];
  xmmword_1009F5360 = v41;
  v40->__r_.__value_.__l.__size_ = 0;
  v40->__r_.__value_.__r.__words[2] = 0;
  v40->__r_.__value_.__r.__words[0] = 0;
  if (SBYTE7(v44[0]) < 0)
  {
    operator delete(v43);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F5360, &_mh_execute_header);
  LOWORD(v43) = 1031;
  word_1009F5378 = sub_100428664(&v43);
  LOWORD(v43) = 1800;
  word_1009F537A = sub_100428664(&v43);
  objc_autoreleasePoolPop(v0);
}

void sub_100327078(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (*(v22 - 73) < 0)
  {
    operator delete(*(v22 - 96));
  }

  _Unwind_Resume(exception_object);
}

void sub_10032895C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 shortDescription];
  [v2 appendFormat:@"\n    [%@] ", v3];
}

void *sub_100329544(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = a2;
  result[1] = a3;
  result[2] = a4;
  return result;
}

void sub_100329550(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(**(a1 + 8) + 104))(&v6);
  v28[0] = 0;
  v35 = 0;
  if (v6)
  {
    v4 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004BF550(v4);
    }
  }

  else
  {
    sub_1003297E8(a1, &v6, &v21);
    sub_100329770(v28, &v21);
    if (__p)
    {
      v27 = __p;
      operator delete(__p);
    }

    if (v24)
    {
      v25 = v24;
      operator delete(v24);
    }

    if (v22)
    {
      v23 = v22;
      operator delete(v22);
    }
  }

  v5 = v6;
  sub_10026A998(v13, v28);
  *a2 = v5;
  sub_10026A998((a2 + 8), v13);
  if (v20 == 1)
  {
    if (v18)
    {
      v19 = v18;
      operator delete(v18);
    }

    if (v16)
    {
      v17 = v16;
      operator delete(v16);
    }

    if (v14)
    {
      v15 = v14;
      operator delete(v14);
    }
  }

  if (v35 == 1)
  {
    if (v33)
    {
      v34 = v33;
      operator delete(v33);
    }

    if (v31)
    {
      v32 = v31;
      operator delete(v31);
    }

    if (v29)
    {
      v30 = v29;
      operator delete(v29);
    }
  }

  if (v11)
  {
    v12 = v11;
    operator delete(v11);
  }

  if (v9)
  {
    v10 = v9;
    operator delete(v9);
  }

  if (v7)
  {
    v8 = v7;
    operator delete(v7);
  }
}

void sub_100329728(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  sub_10026ACD4(&a33);
  sub_10025C150(v33 - 144);
  sub_10026ACD4(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_100329770(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 96) == 1)
  {
    v4 = *(a1 + 56);
    if (v4)
    {
      *(a1 + 64) = v4;
      operator delete(v4);
    }

    v5 = *(a1 + 32);
    if (v5)
    {
      *(a1 + 40) = v5;
      operator delete(v5);
    }

    v6 = *(a1 + 8);
    if (v6)
    {
      *(a1 + 16) = v6;
      operator delete(v6);
    }

    *(a1 + 96) = 0;
  }

  result = sub_10032A3D0(a1, a2);
  *(a1 + 96) = 1;
  return result;
}

uint64_t sub_1003297E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "regulatory,produceRoseConfig", buf, 2u);
  }

  v7 = (*(**a1 + 32))();
  buf[0] = 0;
  v17 = 0;
  if ((v7 & 0x1000000000000) != 0)
  {
    v17 = 1;
    *buf = v7 & 0xFFFFFFFFFFFFLL;
  }

  v15 = 9;
  v8 = +[NSUserDefaults standardUserDefaults];
  v9 = [v8 BOOLForKey:@"DisableCoex"];

  if (v9)
  {
    v15 = 0;
  }

  v10 = +[PRGlobalDebugSettings sharedSettings];
  v11 = [v10 integerForKey:PRDebugConfigArgDebugLevel];

  if (!v11)
  {
    v12 = +[NSUserDefaults standardUserDefaults];
    v11 = [v12 integerForKey:@"RoseDebugLevelOverride"];
  }

  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = 1;
  }

  return sub_10032A2D8(a3, v13, a2 + 8, a2 + 32, a2 + 56, &v15, buf);
}

BOOL sub_1003299D8(uint64_t a1, char *a2, unsigned __int8 *a3, __int16 a4)
{
  (*(**(a1 + 8) + 48))(&v37);
  v8 = v37;
  v7 = v38;
  if (v38 != v37)
  {
    v32 = a3;
    v33 = a2;
    v9 = 0;
    v10 = 0;
    v34 = v37;
    do
    {
      v11 = *v8;
      if (v11 == 9)
      {
        v13 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[PRConfigurationManager] RF channel 9 ALLOWED.", buf, 2u);
        }

        v10 = 1;
      }

      else if (v11 == 5)
      {
        v12 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[PRConfigurationManager] RF channel 5 ALLOWED.", buf, 2u);
        }

        v9 = 1;
      }

      ++v8;
    }

    while (v8 != v7);
    if (((v9 | v10) & 1) == 0)
    {
      sub_1004BF5D8();
    }

    v14 = +[NSUserDefaults standardUserDefaults];
    v15 = [v14 objectForKey:@"PreferredUWBChannelOverride"];
    v8 = v34;
    v16 = v15;
    if ((a4 & 0x100) != 0)
    {
      if (a4 == 5)
      {
        goto LABEL_22;
      }
    }

    else if (v15)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = [v16 integerValue];
        if (v17 == sub_10042838C(5, 1))
        {
          v18 = qword_1009F9820;
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[PRConfigurationManager] Ch5 set as preferred in default write. Override preference for channel 9.", buf, 2u);
          }

LABEL_22:
          v20 = 9;
          if (v9)
          {
            v21 = 5;
            goto LABEL_29;
          }

          goto LABEL_32;
        }

        v22 = sub_10042838C(9, 1);
        v23 = qword_1009F9820;
        if (v17 != v22)
        {
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
          {
            sub_1004BF6A8(v17, v23);
          }

          v31 = qword_1009F9820;
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_INFO))
          {
            *buf = 136315650;
            *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Proximity/Libraries/DaemonCore/PRConfigurationManager.mm";
            v44 = 1024;
            v45 = 168;
            v46 = 2080;
            v47 = "getPreferredChannels";
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "%s:%d: assertion failure in %s", buf, 0x1Cu);
          }

          abort();
        }

        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "[PRConfigurationManager] Ch 9 set as preferred in default write. This is already the preference. Do nothing.", buf, 2u);
        }
      }
    }

    v20 = 5;
    if (v10)
    {
      v21 = 9;
      LOBYTE(v10) = v9;
LABEL_29:
      v24 = v33;
      *v33 = v21;
      if (v10)
      {
        v25 = v32;
        *v32 = v20 | 0x100;
LABEL_36:
        v26 = qword_1009F9820;
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v27 = *v24;
          v28 = buf;
          sub_100428144(v27, buf);
          if (SBYTE3(v47) < 0)
          {
            v28 = *buf;
          }

          if (v25[1] == 1)
          {
            sub_100428144(*v25, __p);
            if (v36 >= 0)
            {
              v29 = __p;
            }

            else
            {
              v29 = __p[0];
            }

            *v39 = 136315394;
            v40 = v28;
            v41 = 2080;
            v42 = v29;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "[PRConfigurationManager] Primary channel %s. Alternate channel %s", v39, 0x16u);
            if (v36 < 0)
            {
              operator delete(__p[0]);
            }
          }

          else
          {
            *v39 = 136315394;
            v40 = v28;
            v41 = 2080;
            v42 = "None";
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "[PRConfigurationManager] Primary channel %s. Alternate channel %s", v39, 0x16u);
          }

          if (SBYTE3(v47) < 0)
          {
            operator delete(*buf);
          }
        }

        goto LABEL_49;
      }

LABEL_34:
      v25 = v32;
      if (v32[1] == 1)
      {
        v32[1] = 0;
      }

      goto LABEL_36;
    }

    LOBYTE(v10) = v9;
LABEL_32:
    v24 = v33;
    if ((v10 & 1) == 0)
    {
      __assert_rtn("getPreferredChannels", "PRConfigurationManager.mm", 184, "leastPreferredChannelAllowed");
    }

    *v33 = v20;
    goto LABEL_34;
  }

  v19 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004BF594(v19);
  }

LABEL_49:
  if (v37)
  {
    v38 = v37;
    operator delete(v37);
  }

  return v7 != v8;
}

void sub_100329ED8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100329F8C(uint64_t a1)
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 objectForKey:@"Disable32FragmentMMS"];

  if (v3)
  {
    v4 = qword_1009F9820;
    v5 = 16;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v10[0] = 0x1004000100;
      v6 = "[PRConfigurationManager] 32-fragment-MMS ranging disabled by default write [Disable32FragmentMMS], mmsNumFragments=%u";
      v7 = v10;
LABEL_9:
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, v6, v7, 8u);
    }
  }

  else
  {
    (*(**(a1 + 16) + 32))(v10);
    if (v12 & v11)
    {
      v5 = 16;
    }

    else
    {
      v5 = 32;
    }

    v4 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v9[0] = 67109120;
      v9[1] = v5;
      v6 = "[PRConfigurationManager] mmsNumFragments=%u";
      v7 = v9;
      goto LABEL_9;
    }
  }

  return v5;
}

uint64_t sub_10032A118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  if (*(a2 + 105) != 1)
  {
    return 0;
  }

  *(a3 + 1) = *(a3 + 1) & 0xF3 | (4 * (sub_100427398(*(a2 + 104), 1) & 3));
  if (*(a2 + 107) != 1)
  {
    return 0;
  }

  *(a3 + 1) = *(a3 + 1) & 0xCF | (16 * (sub_100427398(*(a2 + 106), 1) & 3));
  if (*(a2 + 174) != 1)
  {
    return 0;
  }

  *(a3 + 2) = *(a2 + 172);
  if (*(a2 + 153) != 1)
  {
    return 0;
  }

  *(a3 + 1) = *(a3 + 1) & 0xFC | sub_10042838C(*(a2 + 152), 1) & 3;
  v6 = (*(**(a1 + 8) + 64))(*(a1 + 8));
  if ((v6 & 0x100) == 0)
  {
    return 0;
  }

  *a3 = v6;
  return 1;
}

void *sub_10032A224@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (*(**(a1 + 8) + 64))(*(a1 + 8));
  if ((v3 & 0x100) != 0)
  {

    return sub_100457E08(v3, a2);
  }

  else
  {

    return sub_100004A08(a2, "");
  }
}

uint64_t sub_10032A2D8(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, _WORD *a6, uint64_t *a7)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  sub_10026AADC((a1 + 8), *a3, *(a3 + 8), (*(a3 + 8) - *a3) >> 3);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  sub_10026ABDC((a1 + 32), *a4, *(a4 + 8), (*(a4 + 8) - *a4) >> 3);
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  sub_10026AC58((a1 + 56), *a5, *(a5 + 8), (*(a5 + 8) - *a5) >> 3);
  *(a1 + 80) = *a6;
  v12 = *a7;
  *(a1 + 90) = *(a7 + 8);
  *(a1 + 82) = v12;
  return a1;
}

void sub_10032A39C(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 40) = v5;
    operator delete(v5);
  }

  v6 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10032A3D0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  sub_10026AADC((a1 + 8), *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 3);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  sub_10026ABDC((a1 + 32), *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 3);
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  sub_10026AC58((a1 + 56), *(a2 + 56), *(a2 + 64), (*(a2 + 64) - *(a2 + 56)) >> 3);
  v4 = *(a2 + 80);
  *(a1 + 87) = *(a2 + 87);
  *(a1 + 80) = v4;
  return a1;
}

void sub_10032A478(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 40) = v5;
    operator delete(v5);
  }

  v6 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10032ABF8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a2;
  *a1 = v9;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = xmmword_10056BFB0;
  *(a1 + 56) = vdupq_n_s64(0xC08F400000000000);
  *(a1 + 72) = 0xC08F400000000000;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  sub_10032B184(a1 + 96, a3);
  sub_10003735C(a1 + 128, a4);
  sub_10032B21C(a1 + 160, a5);
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  sub_1001B39B4(a1 + 224, *a1);
  *(a1 + 392) = 0;
  *(a1 + 400) = 0;
  v10 = *a1;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10032AD94;
  v12[3] = &unk_10098AD98;
  v12[4] = a1;
  dispatch_async(v10, v12);

  return a1;
}

void sub_10032AD28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  sub_10022E674(va);
  sub_10022F484(v11 + 160);
  sub_1000197C8(v11 + 128);
  sub_10022F1EC(v11 + 96);
  if (*(v11 + 31) < 0)
  {
    operator delete(*v13);
  }

  _Unwind_Resume(a1);
}

id sub_10032AD94(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [[PRCoreLocationClient alloc] initWithQueue:*v1];
  v3 = v1[27];
  v1[27] = v2;

  v4 = v1[27];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10032AE84;
  v8[3] = &unk_10099D278;
  v8[4] = v1;
  [v4 setRegulatoryLocationAuthorized:v8];
  v5 = v1[27];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100004B90;
  v7[3] = &unk_1009A5358;
  v7[4] = v1;
  return [v5 setRegulatoryLocationHandler:v7];
}

void sub_10032AE8C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (os_log_type_enabled(qword_1009F5380, OS_LOG_TYPE_DEBUG))
  {
    sub_1004BFABC();
  }

  if (*(a1 + 152))
  {
    sub_10003229C(a1 + 128, v2);
  }
}

uint64_t sub_10032AF00(NSObject **a1)
{
  if (os_log_type_enabled(qword_1009F5380, OS_LOG_TYPE_DEBUG))
  {
    sub_1004BFB34();
  }

  v2 = *a1;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10032AFA4;
  block[3] = &unk_10098AD98;
  block[4] = a1;
  dispatch_async(v2, block);
  return 1;
}

id sub_10032AFA4(uint64_t a1)
{
  result = *(*(a1 + 32) + 216);
  if (result)
  {
    return [result startMonitoring];
  }

  return result;
}

uint64_t sub_10032AFB8(NSObject **a1)
{
  if (os_log_type_enabled(qword_1009F5380, OS_LOG_TYPE_DEBUG))
  {
    sub_1004BFB68();
  }

  v2 = *a1;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10032B05C;
  block[3] = &unk_10098AD98;
  block[4] = a1;
  dispatch_async(v2, block);
  return 1;
}

id sub_10032B05C(uint64_t a1)
{
  result = *(*(a1 + 32) + 216);
  if (result)
  {
    return [result upgradeToBestAccuracyMonitoring];
  }

  return result;
}

uint64_t sub_10032B070(NSObject **a1)
{
  if (os_log_type_enabled(qword_1009F5380, OS_LOG_TYPE_DEBUG))
  {
    sub_1004BFB9C();
  }

  v2 = *a1;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10032B114;
  block[3] = &unk_10098AD98;
  block[4] = a1;
  dispatch_async(v2, block);
  return 1;
}

id sub_10032B114(uint64_t a1)
{
  result = *(*(a1 + 32) + 216);
  if (result)
  {
    return [result dowgradeToBystanderMonitoring];
  }

  return result;
}

uint64_t sub_10032B128(uint64_t a1, uint64_t a2, char a3, double a4)
{
  v7 = a3;
  v6 = a4;
  v4 = *(a1 + 24);
  if (!v4)
  {
    sub_100037B10();
  }

  return (*(*v4 + 48))(v4, a2, &v7, &v6);
}

uint64_t sub_10032B184(uint64_t a1, uint64_t a2)
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

uint64_t sub_10032B21C(uint64_t a1, uint64_t a2)
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

BOOL sub_10032B2B4()
{
  v1 = qword_1009F5380;

  return os_log_type_enabled(v1, OS_LOG_TYPE_FAULT);
}

BOOL sub_10032B2D4()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_INFO);
}

void sub_10032B2EC()
{
  v0 = objc_autoreleasePoolPush();
  qword_1009F5380 = os_log_create("com.apple.nearbyd", "Regulatory");

  objc_autoreleasePoolPop(v0);
}

uint64_t sub_10032B340(uint64_t result, char a2)
{
  *result = a2;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 120) = 0;
  *(result + 128) = 0;
  *(result + 184) = 0;
  *(result + 192) = 0;
  *(result + 248) = 0;
  *(result + 256) = 0;
  *(result + 312) = 0;
  *(result + 320) = -1;
  *(result + 336) = 0;
  *(result + 344) = 0;
  *(result + 328) = 0;
  return result;
}

void sub_10032B388(unsigned __int8 *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(a1 + 1) = 0;
  if (a1[48] == 1)
  {
    a1[48] = 0;
  }

  sub_10032B764(a1, a2, v43, a3, a4, a5, a6, a7, a8);
  if (v46 == 1)
  {
    do
    {
      sub_10032B8E4(v43, *a1, v10, v11, v12, v13, v14, v15);
      if ((v46 & 1) == 0)
      {
        sub_1000195BC();
      }

      v37 = v43[0];
      v38 = v43[1];
      v40 = 0;
      v41 = 0;
      __p = 0;
      sub_100009A48(&__p, v44, v45, v45 - v44);
      if ((v46 & 1) == 0)
      {
        goto LABEL_55;
      }

      v22 = v43[0];
      if (LODWORD(v43[0]) == 4162)
      {
        sub_10032BA80(a1, v43);
        sub_10032BACC(a1 + 320, v23, v24, v25, v26, v27, v28, v29);
        if ((v46 & 1) == 0)
        {
          goto LABEL_55;
        }

        v22 = v43[0];
      }

      if (v22 == 4234)
      {
        sub_10032BB28(a1, v43);
        if ((v46 & 1) == 0)
        {
          goto LABEL_55;
        }
      }

      v30 = v43[0];
      if (LODWORD(v43[0]) == 5129)
      {
        sub_10032BEA8(a1 + 41, &v37);
        if ((v46 & 1) == 0)
        {
          goto LABEL_55;
        }

        v30 = v43[0];
      }

      if (v30 == 5134)
      {
        sub_10032BEA8(a1 + 41, &v37);
        if ((v46 & 1) == 0)
        {
          goto LABEL_55;
        }
      }

      v31 = v43[0];
      if (LODWORD(v43[0]) == 5154)
      {
        sub_10032BEA8(a1 + 41, &v37);
        if ((v46 & 1) == 0)
        {
          goto LABEL_55;
        }

        v31 = v43[0];
      }

      if (v31 == 5164)
      {
        sub_10032BEA8(a1 + 41, &v37);
        if ((v46 & 1) == 0)
        {
          goto LABEL_55;
        }
      }

      v32 = v43[0];
      if (LODWORD(v43[0]) == 5149)
      {
        sub_10032BEA8(a1 + 41, &v37);
        if ((v46 & 1) == 0)
        {
          goto LABEL_55;
        }

        v32 = v43[0];
      }

      if (v32 == 5169)
      {
        sub_10032BEA8(a1 + 41, &v37);
        if ((v46 & 1) == 0)
        {
          goto LABEL_55;
        }
      }

      v33 = v43[0];
      if (LODWORD(v43[0]) == 5195)
      {
        sub_10032BEA8(a1 + 41, &v37);
        if ((v46 & 1) == 0)
        {
          goto LABEL_55;
        }

        v33 = v43[0];
      }

      if (v33 == 5174)
      {
        sub_10032BEA8(a1 + 41, &v37);
        if ((v46 & 1) == 0)
        {
          goto LABEL_55;
        }
      }

      v34 = v43[0];
      if (LODWORD(v43[0]) == 5197)
      {
        sub_10032BEA8(a1 + 41, &v37);
        if ((v46 & 1) == 0)
        {
          goto LABEL_55;
        }

        v34 = v43[0];
      }

      if (v34 == 5184)
      {
        sub_10032BEA8(a1 + 41, &v37);
        if ((v46 & 1) == 0)
        {
          goto LABEL_55;
        }
      }

      v35 = v43[0];
      if (LODWORD(v43[0]) == 5201)
      {
        sub_10032BEA8(a1 + 41, &v37);
        if ((v46 & 1) == 0)
        {
          goto LABEL_55;
        }

        v35 = v43[0];
      }

      if (v35 == 5179)
      {
        sub_10032BEA8(a1 + 41, &v37);
        if ((v46 & 1) == 0)
        {
          goto LABEL_55;
        }
      }

      v36 = v43[0];
      if (LODWORD(v43[0]) == 5199)
      {
        sub_10032BEA8(a1 + 41, &v37);
        if ((v46 & 1) == 0)
        {
          goto LABEL_55;
        }

        v36 = v43[0];
      }

      if (v36 == 5189)
      {
        sub_10032BEA8(a1 + 41, &v37);
        if ((v46 & 1) == 0)
        {
LABEL_55:
          sub_1000195BC();
        }
      }

      if (LODWORD(v43[0]) == 5203)
      {
        sub_10032BEA8(a1 + 41, &v37);
      }

      if (__p)
      {
        v40 = __p;
        operator delete(__p);
      }

      sub_10032B764(a1, a2, &v37, v16, v17, v18, v19, v20, v21);
      sub_10032C4D0(v43, &v37);
      if (v42 == 1)
      {
        if (__p)
        {
          v40 = __p;
          operator delete(__p);
        }
      }
    }

    while ((v46 & 1) != 0);
  }
}

void sub_10032B710(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a22 == 1)
  {
    if (__p)
    {
      operator delete(__p);
    }
  }

  _Unwind_Resume(exception_object);
}

double sub_10032B764@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>, uint64_t a7@<X5>, uint64_t a8@<X6>, uint64_t a9@<X7>)
{
  if (*(a1 + 48) != 1 || *(a1 + 8) >= *(a1 + 24) + *(a1 + 16))
  {
    sub_10032BEE8(a1, a2, a4, a5, a6, a7, a8, a9);
    if (*(a1 + 48) != 1)
    {
      goto LABEL_14;
    }

    sub_10032C0D0(a1 + 16, v12, v13, v14, v15, v16, v17, v18);
    if ((*(a1 + 48) & 1) == 0)
    {
      sub_1000195BC();
    }
  }

  v20 = *(a1 + 36);
  if (v20 >= 2)
  {
    sub_1004BFF50();
  }

  v21 = *(a1 + 8);
  if (v20)
  {
    v22 = 4;
  }

  else
  {
    v22 = 2;
  }

  if (v22 + v21 + 2 <= (a2[1] - *a2))
  {
    v23 = sub_10032C168(a1, a2, v21, 2);
    v24 = v23;
    v25 = sub_10032C168(v23, a2, *(a1 + 8) + 2, v22);
    v27 = *(a1 + 8);
    v28 = 6;
    if (!v20)
    {
      v28 = 4;
    }

    v29 = v27 + v28 + v25;
    v30 = *a2;
    v31 = a2[1] - *a2;
    if (v29 <= v31)
    {
      LODWORD(v34) = v24 & 0x3FFF;
      *(&v34 + 1) = v25;
      v35 = 0uLL;
      v36 = 0;
      sub_100296B98(&v35, (v27 + v28 + v30), (v27 + v28 + v30 + v25), v25);
      v32 = *(a1 + 8);
      *(a1 + 8) = v29;
      result = *&v34;
      v33 = v35;
      *a3 = v34;
      *(a3 + 16) = v33;
      *(a3 + 32) = v36;
      *(a3 + 40) = v32;
      *(a3 + 48) = 1;
      return result;
    }

    sub_100428B48("RoseCalFileParser::getNextTLV: read idx %zu + data offset %zu + length %u exceeds data size %zu", v26, v27, v28, v25, v31);
  }

LABEL_14:
  *a3 = 0;
  *(a3 + 48) = 0;
  return result;
}

void sub_10032B8E4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  sub_100005D28("Cal TLV:", a2, a3, a4, a5, a6, a7, a8, v49);
  v10 = *a1;
  sub_10032C340(*a1, v55);
  sub_100005D28("    tag ID: 0x%04x (%s)", v11, v12, v13, v14, v15, v16, v17, v10);
  if (v56 < 0)
  {
    operator delete(v55[0]);
  }

  sub_100005D28("    length: %zu", v18, v19, v20, v21, v22, v23, v24, a1[1]);
  sub_100005D28("    offset within file: %zu", v25, v26, v27, v28, v29, v30, v31, a1[5]);
  if (v8)
  {
    sub_100005D28("    value:", v32, v33, v34, v35, v36, v37, v38, v50);
    sub_100004A08(v53, "");
    v40 = a1[2];
    v39 = a1[3];
    sub_100004A08(__p, "");
    sub_10046FC20(v53, v40, v39 - v40, 0x10u, __p);
    if (v52 < 0)
    {
      operator delete(__p[0]);
    }

    if (v54 < 0)
    {
      operator delete(v53[0]);
    }

    v48 = v55;
    if (v56 < 0)
    {
      v48 = v55[0];
    }

    sub_100005D28("%s", v41, v42, v43, v44, v45, v46, v47, v48);
    if (v56 < 0)
    {
      operator delete(v55[0]);
    }
  }
}

void sub_10032BA34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (*(v23 - 33) < 0)
  {
    operator delete(*(v23 - 56));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10032BA80(uint64_t result, uint64_t a2)
{
  if (*a2 != 4162)
  {
    sub_1004BFF7C();
  }

  v2 = *(a2 + 16);
  if (*(a2 + 24) - v2 <= 1uLL)
  {
    sub_1004BFFA8();
  }

  v3 = *v2;
  *(result + 320) = v2[1];
  *(result + 321) = v3;
  return result;
}

void sub_10032BACC(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100005D28("SystemFactoryCalVersion:", a2, a3, a4, a5, a6, a7, a8, v23);
  sub_100005D28("    major version: %d", v9, v10, v11, v12, v13, v14, v15, *a1);
  sub_100005D28("    minor version: %d", v16, v17, v18, v19, v20, v21, v22, a1[1]);
}

void sub_10032BB28(_BYTE *a1, uint64_t a2)
{
  v12 = 0;
  v2 = a1[320];
  if (v2 != 255)
  {
    v4 = a1[321];
    if (v4 != 255)
    {
      if (v2 == 1)
      {
        if (v4 > 0xC)
        {
          if (*(a2 + 8) != 131044)
          {
            v5 = "systemFactoryCalVersion indicates two forward PDOA Luts but the segment length does not match";
            goto LABEL_4;
          }

          sub_10032C1DC((a2 + 16), 0, 0x7FF9uLL, &v7);
          sub_1001F37B4(v9, 0, 180, 0, 180, &v7);
          sub_1001F40E8((a1 + 192), v9);
          if (__p)
          {
            v11 = __p;
            operator delete(__p);
          }

          if (v7)
          {
            v8 = v7;
            operator delete(v7);
          }

          sub_10032C1DC((a2 + 16), 0xFFF2uLL, 0x7FF9uLL, &v7);
          sub_1001F37B4(v9, 0, 180, 0, 180, &v7);
          sub_1001F40E8((a1 + 256), v9);
          if (__p)
          {
            v11 = __p;
            operator delete(__p);
          }

          if (v7)
          {
            v8 = v7;
            operator delete(v7);
          }

          goto LABEL_39;
        }
      }

      else if (a1[320] || !a1[321])
      {
        v5 = "Unexpected systemFactoryCalVersion, return from parsing PDOA_Forward_LUT";
        goto LABEL_4;
      }

      if (*(a2 + 8) != 262088)
      {
        v5 = "systemFactoryCalVersion indicates four forward PDOA Luts but the segment length does not match";
        goto LABEL_4;
      }

      sub_10032C1DC((a2 + 16), 0, 0x7FF9uLL, &v7);
      sub_1001F37B4(v9, 0, 180, 0, 180, &v7);
      sub_1001F40E8((a1 + 64), v9);
      if (__p)
      {
        v11 = __p;
        operator delete(__p);
      }

      if (v7)
      {
        v8 = v7;
        operator delete(v7);
      }

      sub_10032C1DC((a2 + 16), 0xFFF2uLL, 0x7FF9uLL, &v7);
      sub_1001F37B4(v9, 0, 180, 0, 180, &v7);
      sub_1001F40E8((a1 + 128), v9);
      if (__p)
      {
        v11 = __p;
        operator delete(__p);
      }

      if (v7)
      {
        v8 = v7;
        operator delete(v7);
      }

      sub_10032C1DC((a2 + 16), 0x1FFE4uLL, 0x7FF9uLL, &v7);
      sub_1001F37B4(v9, 0, 180, 0, 180, &v7);
      sub_1001F40E8((a1 + 192), v9);
      if (__p)
      {
        v11 = __p;
        operator delete(__p);
      }

      if (v7)
      {
        v8 = v7;
        operator delete(v7);
      }

      sub_10032C1DC((a2 + 16), 0x2FFD6uLL, 0x7FF9uLL, &v7);
      sub_1001F37B4(v9, 0, 180, 0, 180, &v7);
      sub_1001F40E8((a1 + 256), v9);
      if (__p)
      {
        v11 = __p;
        operator delete(__p);
      }

      if (v7)
      {
        v8 = v7;
        operator delete(v7);
      }

      sub_1004281A0(&v12, 5);
LABEL_39:
      sub_1004281A0(&v12, 9);
      sub_1001F415C(a1 + 56, v12);
      return;
    }
  }

  v5 = "systemFactoryCalVersion is not valid, return from parsing PDOA_Forward_LUT";
LABEL_4:

  sub_100428B48(v5, a2);
}

void sub_10032BE4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a10)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10032BEA8(unint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_10032C5D0(a1, a2);
  }

  else
  {
    sub_10032C578(a1, a2);
    result = v3 + 40;
  }

  a1[1] = result;
  return result;
}

void sub_10032BEE8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100005D28("RoseCalFileParser::findNextHeader: read idx %zu", a2, a3, a4, a5, a6, a7, a8, *(a1 + 8));
  if (*(a1 + 48) == 1)
  {
    *(a1 + 48) = 0;
  }

  v18 = *(a1 + 8);
  v20 = *a2;
  v19 = a2[1];
  v21 = v19 - *a2;
  if (v18 + 2 > v21)
  {
LABEL_16:
    sub_100005D28("RoseCalFileParser::findNextHeader: no header found! read idx %zu", v11, v12, v13, v14, v15, v16, v17, v18);
    return;
  }

  v22 = 0;
  while (1)
  {
    v23 = *(v20 + v18);
    if (v23 == 20054)
    {
      break;
    }

    if (v23 == 20055)
    {
      v24 = &unk_10056C008;
      goto LABEL_9;
    }

LABEL_13:
    v33 = v18 + 3;
    *(a1 + 8) = ++v18;
    v21 = v19 - v20;
    --v22;
    if (v33 > v19 - v20)
    {
      if (v22)
      {
        sub_100005D28("RoseCalFileParser::findNextHeader: skipped %zu bytes looking for next header", v11, v12, v13, v14, v15, v16, v17, -v22);
        v18 = *(a1 + 8);
      }

      goto LABEL_16;
    }
  }

  v24 = &unk_10056BFC0;
LABEL_9:
  v25 = v24[3];
  v26 = v18 - v25;
  if (v18 < v25)
  {
    goto LABEL_13;
  }

  v13 = v24[2];
  v27 = v24[6];
  v28 = v24[8];
  if (v13 + v24[4] + v26 + v27 + v28 > v21)
  {
    goto LABEL_13;
  }

  v34 = v13 + v24[4] + v26 + v27 + v28;
  v29 = sub_10032C168(v10, a2, v24[1] + v26, v13);
  v30 = v29;
  v31 = sub_10032C168(v29, a2, v24[5] + v26, v27);
  v32 = v31;
  v10 = sub_10032C168(v31, a2, v24[7] + v26, v28);
  if (v32 != *(v24 + 1))
  {
    v18 = *(a1 + 8);
    v20 = *a2;
    v19 = a2[1];
    goto LABEL_13;
  }

  if ((*(a1 + 48) & 1) == 0)
  {
    *(a1 + 48) = 1;
  }

  *(a1 + 24) = v30;
  *(a1 + 32) = v23;
  *(a1 + 36) = v32;
  *(a1 + 40) = v10;
  *(a1 + 8) = v34;
  *(a1 + 16) = v34;
  if (v22)
  {
    sub_100005D28("RoseCalFileParser::findNextHeader: skipped %zu bytes looking for next header", v11, v12, v13, v14, v15, v16, v17, -v22);
  }
}

void sub_10032C0D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100005D28("Cal header:", a2, a3, a4, a5, a6, a7, a8, v44);
  sub_100005D28("    blob start idx: %zu", v9, v10, v11, v12, v13, v14, v15, *a1);
  sub_100005D28("    blob length: %zu", v16, v17, v18, v19, v20, v21, v22, *(a1 + 8));
  sub_100005D28("    signature: 0x%04x", v23, v24, v25, v26, v27, v28, v29, *(a1 + 16));
  sub_100005D28("    version: %u", v30, v31, v32, v33, v34, v35, v36, *(a1 + 20));
  sub_100005D28("    checksum: 0x%04x", v37, v38, v39, v40, v41, v42, v43, *(a1 + 24));
}

uint64_t sub_10032C168(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 4)
  {
    if ((a3 + 4) > a2[1] - *a2)
    {
      sub_1004BFFD4();
    }

    return *(*a2 + a3 + 2) | (*(*a2 + a3) << 16);
  }

  else
  {
    if (a4 != 2)
    {
      sub_1004C002C(a4, a2);
    }

    if ((a3 + 2) > a2[1] - *a2)
    {
      sub_1004C0000();
    }

    return *(*a2 + a3);
  }
}

void sub_10032C1DC(void *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, const void **a4@<X8>)
{
  v5 = a2 + 2 * a3;
  if (v5 > a1[1] - *a1)
  {
    sub_1004C006C();
  }

  v6 = a2;
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  sub_1001F3F70(a4, a3);
  if (v5 > v6)
  {
    v8 = a4[1];
    do
    {
      v9 = *(*a1 + v6);
      v10 = a4[2];
      if (v8 >= v10)
      {
        v11 = *a4;
        v12 = v8 - *a4;
        v13 = v12 >> 1;
        if (v12 >> 1 <= -2)
        {
          sub_100019B38();
        }

        v14 = v10 - v11;
        if (v14 <= v13 + 1)
        {
          v15 = v13 + 1;
        }

        else
        {
          v15 = v14;
        }

        if (v14 >= 0x7FFFFFFFFFFFFFFELL)
        {
          v16 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v16 = v15;
        }

        if (v16)
        {
          sub_1001679B0(a4, v16);
        }

        *(2 * v13) = v9;
        v8 = (2 * v13 + 2);
        memcpy(0, v11, v12);
        v17 = *a4;
        *a4 = 0;
        a4[1] = v8;
        a4[2] = 0;
        if (v17)
        {
          operator delete(v17);
        }
      }

      else
      {
        *v8 = v9;
        v8 += 2;
      }

      a4[1] = v8;
      v6 += 2;
    }

    while (v6 < v5);
  }
}

void sub_10032C31C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10032C340@<X0>(int a1@<W0>, void *a2@<X8>)
{
  if (a1 > 4231)
  {
    if (a1 <= 4234)
    {
      if (a1 == 4232)
      {
        v2 = "Drona_Ant_Efficiency";
        return sub_100004A08(a2, v2);
      }

      if (a1 == 4234)
      {
        v2 = "PDOA_Forward_LUT_Ch0";
        return sub_100004A08(a2, v2);
      }
    }

    else
    {
      switch(a1)
      {
        case 4235:
          v2 = "PDOA_Forward_LUT_Ch1";
          return sub_100004A08(a2, v2);
        case 4236:
          v2 = "OTA_PDOA_Offset_at_90_90_Per_Gain_Stage_Ch0";
          return sub_100004A08(a2, v2);
        case 4237:
          v2 = "OTA_PDOA_Offset_at_90_90_Per_Gain_Stage_Ch1";
          return sub_100004A08(a2, v2);
      }
    }

LABEL_30:
    v2 = "UNKNOWN";
    return sub_100004A08(a2, v2);
  }

  v2 = "PDOA_LUT_Ch0";
  switch(a1)
  {
    case 4140:
      return sub_100004A08(a2, v2);
    case 4141:
      v2 = "PDOA_LUT_Ch1";
      break;
    case 4142:
      v2 = "XO_Cal";
      break;
    case 4143:
      v2 = "TX_CW_Power_Cal";
      break;
    case 4144:
      v2 = "RX_Gain_Cal";
      break;
    case 4152:
      v2 = "OTA_Group_Delay_Cal";
      break;
    case 4156:
      v2 = "Internal_Group_delay_Cal";
      break;
    case 4159:
      v2 = "PDOA_LUT_Generated_at_PHY_Out";
      break;
    case 4160:
      v2 = "SMT_Group_Delay_Derived";
      break;
    case 4161:
      v2 = "AOA_Antenna_RX_Chain_Map";
      break;
    case 4162:
      v2 = "System_Factory_Cal_Version";
      break;
    case 4163:
      v2 = "SMT_Leakage_Group_Delay_128_Tap_TF";
      break;
    case 4164:
      v2 = "RX_Transfer_Function_128_Tap";
      break;
    case 4165:
      v2 = "Fixture_Transfer_Function_128_Tap";
      break;
    case 4166:
      v2 = "OTA_PDOA_Offset";
      break;
    case 4170:
      v2 = "FATP_TX_Power_Cal";
      break;
    default:
      goto LABEL_30;
  }

  return sub_100004A08(a2, v2);
}

__n128 sub_10032C4D0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48) == *(a2 + 48))
  {
    if (*(a1 + 48))
    {
      *a1 = *a2;
      result.n128_u64[0] = sub_10016D9A8(a1 + 16, (a2 + 16)).n128_u64[0];
      *(a1 + 40) = *(a2 + 40);
    }
  }

  else if (*(a1 + 48))
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      *(a1 + 24) = v5;
      operator delete(v5);
    }

    *(a1 + 48) = 0;
  }

  else
  {
    *a1 = *a2;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 16) = 0;
    result = *(a2 + 16);
    *(a1 + 16) = result;
    v6 = *(a2 + 40);
    *(a1 + 32) = *(a2 + 32);
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 16) = 0;
    *(a1 + 40) = v6;
    *(a1 + 48) = 1;
  }

  return result;
}

uint64_t *sub_10032C578(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  *v3 = *a2;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 16) = 0;
  result = sub_100009A48((v3 + 16), *(a2 + 16), *(a2 + 24), *(a2 + 24) - *(a2 + 16));
  *(a1 + 8) = v3 + 40;
  return result;
}

uint64_t sub_10032C5D0(unint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    sub_100019B38();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v6 = 0x666666666666666;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    sub_10032C714(a1, v6);
  }

  v7 = 40 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 40 * v2;
  *v7 = *a2;
  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  *(v7 + 16) = 0;
  sub_100009A48((40 * v2 + 16), *(a2 + 16), *(a2 + 24), *(a2 + 24) - *(a2 + 16));
  *&v16 = v16 + 40;
  v8 = a1[1];
  v9 = v15 + *a1 - v8;
  sub_10032C76C(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_10032C8B0(&v14);
  return v13;
}

void sub_10032C700(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10032C8B0(va);
  _Unwind_Resume(a1);
}

void sub_10032C714(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  sub_100013B04();
}

uint64_t sub_10032C76C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a4;
  v11 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      *(a4 + 24) = 0;
      *(a4 + 32) = 0;
      *(a4 + 16) = 0;
      *(a4 + 16) = *(v6 + 16);
      *(a4 + 32) = *(v6 + 32);
      *(v6 + 16) = 0;
      *(v6 + 24) = 0;
      *(v6 + 32) = 0;
      v6 += 40;
      a4 += 40;
    }

    while (v6 != a3);
    v12 = a4;
    v10 = 1;
    while (v5 != a3)
    {
      v7 = *(v5 + 16);
      if (v7)
      {
        *(v5 + 24) = v7;
        operator delete(v7);
      }

      v5 += 40;
    }
  }

  return sub_10032C830(v9);
}

uint64_t sub_10032C830(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_10032C868(a1);
  }

  return a1;
}

void sub_10032C868(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 24);
    if (v3)
    {
      *(v1 - 16) = v3;
      operator delete(v3);
    }

    v1 -= 40;
  }
}

uint64_t sub_10032C8B0(uint64_t a1)
{
  sub_10032C8E8(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10032C8E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    *(a1 + 16) = v2 - 40;
    v5 = *(v2 - 24);
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 40;
    }
  }
}

uint64_t sub_10032CAD4(uint64_t a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &off_1009A53D0;
  *(a1 + 24) = a2;
  v9 = v7;
  *(a1 + 32) = v9;
  v10 = v8;
  *(a1 + 40) = v10;
  *(a1 + 56) = 0;
  dispatch_assert_queue_V2(v10);
  v11 = qword_1009F9820;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    sub_10032C948(*(a1 + 24), __p);
    if (v16 >= 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    v13 = *(a1 + 32);
    *buf = 136315394;
    v18 = v12;
    v19 = 2112;
    v20 = v13;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#rlm,Created RangingLimitInputProvider for '%s' with sessionIdentifier %@", buf, 0x16u);
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return a1;
}

void sub_10032CC38(_Unwind_Exception *a1)
{
  v5 = v4;

  v7 = *(v1 + 16);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  _Unwind_Resume(a1);
}

void sub_10032CCC8(uint64_t a1)
{
  dispatch_assert_queue_V2(*(a1 + 40));
  if (*(a1 + 48))
  {
    v2 = qword_1009F9820;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_10032C948(*(a1 + 24), __p);
      sub_1004C0098();
    }
  }

  else
  {
    *(a1 + 48) = 1;
    v3 = qword_1009F9820;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      sub_10032C948(*(a1 + 24), __p);
      v4 = SHIBYTE(v9) >= 0 ? __p : __p[0];
      v5 = *(a1 + 32);
      *buf = 136315394;
      v14 = v4;
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#rlm,indicateRangingStarted for '%s' with sessionIdentifier %@", buf, 0x16u);
      if (SHIBYTE(v9) < 0)
      {
        operator delete(__p[0]);
      }
    }

    sub_10032CEB8();
    v6 = *(a1 + 24);
    __p[0] = _NSConcreteStackBlock;
    __p[1] = 3221225472;
    v9 = sub_10032F368;
    v10 = &unk_100998F28;
    v11 = &qword_1009F53A0;
    v12 = v6;
    dispatch_sync(qword_1009F53A0, __p);
    v7 = +[NSDate now];
    v2 = *(a1 + 56);
    *(a1 + 56) = v7;
  }
}

uint64_t *sub_10032CEB8()
{
  if ((atomic_load_explicit(&qword_1009F5430, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009F5430))
  {
    sub_10032D9D4(&qword_1009F53A0);
  }

  return &qword_1009F53A0;
}

void sub_10032CF54(uint64_t a1)
{
  dispatch_assert_queue_V2(*(a1 + 40));
  if (*(a1 + 48) == 1)
  {
    *(a1 + 48) = 0;
    v2 = qword_1009F9820;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      sub_10032C948(*(a1 + 24), __p);
      v3 = __p[23] >= 0 ? __p : *__p;
      v4 = *(a1 + 32);
      *v12 = 136315394;
      *&v12[4] = v3;
      v13 = 2112;
      v14 = v4;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#rlm,indicateRangingStopped for '%s' with sessionIdentifier %@", v12, 0x16u);
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }
    }

    sub_10032CEB8();
    v5 = *(a1 + 24);
    *__p = _NSConcreteStackBlock;
    *&__p[8] = 3221225472;
    *&__p[16] = sub_10032F4E4;
    v17 = &unk_100998F28;
    v18 = &qword_1009F53A0;
    v19 = v5;
    dispatch_sync(qword_1009F53A0, __p);
    v6 = +[NSDate now];
    [v6 timeIntervalSinceDate:*(a1 + 56)];
    v8 = v7;

    v9 = qword_1009F9820;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      sub_10032C948(*(a1 + 24), v12);
      if (v15 >= 0)
      {
        v10 = v12;
      }

      else
      {
        v10 = *v12;
      }

      v11 = *(a1 + 32);
      *__p = 136315650;
      *&__p[4] = v10;
      *&__p[12] = 2112;
      *&__p[14] = v11;
      *&__p[22] = 2048;
      v17 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#rlm,ranging complete [%s, %@] = %.1f secs", __p, 0x20u);
      if (v15 < 0)
      {
        operator delete(*v12);
      }
    }
  }

  else
  {
    v9 = qword_1009F9820;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10032C948(*(a1 + 24), __p);
      sub_1004C00F4();
    }
  }
}

void sub_10032D1F8(uint64_t a1)
{
  dispatch_assert_queue_V2(*(a1 + 8));
  v2 = *(a1 + 16);
  *(a1 + 16) = v2 + 1;
  v3 = qword_1009F9820;
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);
  if (v2)
  {
    if (v4)
    {
      sub_10032C948(*a1, v5);
      sub_1004C0150();
    }
  }

  else
  {
    if (v4)
    {
      sub_10032C948(*a1, v5);
      sub_1004C01B0();
    }

    *(a1 + 32) = sub_100005288();
  }
}

double sub_10032D2F8(uint64_t a1)
{
  dispatch_assert_queue_V2(*(a1 + 8));
  v2 = *(a1 + 16);
  if (!v2)
  {
    v9 = qword_1009F9820;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      sub_10032C948(*a1, buf);
      sub_1004C0210();
    }

    sub_1004C0264(v9);
  }

  *(a1 + 16) = v2 - 1;
  v3 = sub_100005288();
  v4 = v3 - *(a1 + 32);
  *(a1 + 24) = *(a1 + 24) + v4;
  *(a1 + 32) = v3;
  *(a1 + 40) = v3;
  v5 = qword_1009F9820;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    sub_10032C948(*a1, __p);
    if (v11 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    v7 = *(a1 + 24);
    *buf = 136315650;
    v13 = v6;
    v14 = 2048;
    v15 = v7;
    v16 = 2048;
    v17 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#rlm,RangingDurationTracker(%s): overall = %.0f secs, current_delta = %.0f secs", buf, 0x20u);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return v4;
}

void sub_10032D494(uint64_t a1)
{
  dispatch_assert_queue_V2(*(a1 + 8));
  v2 = qword_1009F9820;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    sub_10032C948(*a1, __p);
    v3 = v7 >= 0 ? __p : __p[0];
    v4 = *(a1 + 24);
    *buf = 136315394;
    v9 = v3;
    v10 = 2048;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#rlm,RangingDurationTracker(%s): periodicReset: rangingDuration = %.0f -> 0 secs", buf, 0x16u);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (*(a1 + 16))
  {
    v5 = sub_100005288();
  }

  else
  {
    v5 = 0.0;
  }

  *(a1 + 32) = v5;
  *(a1 + 24) = 0;
  *(a1 + 40) = 0;
}

uint64_t sub_10032D5C8(uint64_t a1, uint64_t a2, void *a3, double a4)
{
  v7 = a3;
  sub_10032F7F4(a1, a2);
  v8 = v7;
  *(a1 + 24) = v8;
  *(a1 + 32) = 0;
  *(a1 + 40) = a4;
  if (!*(a2 + 16))
  {
    sub_1004C02F8();
  }

  v9 = v8;
  v10 = *a1;
  v11 = objc_opt_new();
  sub_10032C948(*(v10 + 7), __p);
  if (v24 >= 0)
  {
    v12 = __p;
  }

  else
  {
    v12 = __p[0];
  }

  v13 = [NSString stringWithUTF8String:v12];
  [v11 appendString:v13];

  if (v24 < 0)
  {
    operator delete(__p[0]);
  }

  v14 = v10[1];
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
      v15 = v10[2];
      v16 = *v15 == v10;
      v10 = v15;
    }

    while (!v16);
  }

  if (v15 != (a1 + 8))
  {
    do
    {
      sub_10032C948(*(v15 + 7), __p);
      if (v24 >= 0)
      {
        v17 = __p;
      }

      else
      {
        v17 = __p[0];
      }

      v18 = [NSString stringWithFormat:@" | %s", v17];
      [v11 appendString:v18];

      if (v24 < 0)
      {
        operator delete(__p[0]);
      }

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
          v16 = *v20 == v15;
          v15 = v20;
        }

        while (!v16);
      }

      v15 = v20;
    }

    while (v20 != (a1 + 8));
  }

  v21 = *(a1 + 32);
  *(a1 + 32) = v11;

  *(a1 + 48) = *(a1 + 40);
  return a1;
}

void sub_10032D7AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_10002074C(v15, *(v15 + 8));
  _Unwind_Resume(a1);
}

void sub_10032D824(uint64_t a1, double a2)
{
  dispatch_assert_queue_V2(*(a1 + 24));
  v4 = *(a1 + 48);
  *(a1 + 48) = v4 - a2;
  v5 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 48);
    v8 = 138412802;
    v9 = v6;
    v10 = 2048;
    v11 = v4;
    v12 = 2048;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#rlm,RangingBudgetTracker(%@): budget changed: %.0f -> %.0f secs", &v8, 0x20u);
  }
}

double sub_10032D904(uint64_t a1)
{
  dispatch_assert_queue_V2(*(a1 + 24));
  v2 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 40);
    v3 = *(a1 + 48);
    v5 = *(a1 + 32);
    v7 = 138412802;
    v8 = v5;
    v9 = 2048;
    v10 = v3;
    v11 = 2048;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#rlm,RangingBudgetTracker(%@): periodicReset: budgetRemaining = %.0f -> %.0f secs", &v7, 0x20u);
  }

  result = *(a1 + 40);
  *(a1 + 48) = result;
  return result;
}

void sub_10032D9D4(dispatch_queue_t *a1)
{
  *a1 = 0;
  a1[2] = 0;
  a1[1] = (a1 + 2);
  a1[3] = 0;
  a1[5] = 0;
  a1[4] = (a1 + 5);
  a1[8] = 0;
  a1[7] = (a1 + 8);
  a1[6] = 0;
  a1[9] = 0;
  a1[11] = 0;
  a1[10] = (a1 + 11);
  a1[15] = 0;
  a1[12] = 0;
  a1[13] = 0;
  a1[14] = (a1 + 15);
  a1[16] = 0;
  a1[17] = 0;
  v4 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v2 = dispatch_queue_create("com.apple.nearbyd.rangingLimitManager", v4);
  v3 = *a1;
  *a1 = v2;

  if (qword_1009F5388 != &unk_1009F5390)
  {
    sub_10032FAA8();
  }

  if (sub_100394C68(@"DigitalKeyCombinedRangingBudgetEnabled", 1))
  {
    v8[0] = 0;
    v8[1] = 0;
    v7 = v8;
    LODWORD(v9) = 8;
    sub_10032FC94(&v7, &v9, &v9);
    LODWORD(v9) = 5;
    sub_10032FC94(&v7, &v9, &v9);
    v6 = sub_100394DC0(@"DigitalKeyRangingBudgetSeconds", 86400.0);
    sub_10032FD60();
  }

  LODWORD(v5) = 5;
  sub_10032FF98(&v7, &v5, 1);
  v6 = sub_100394DC0(@"AlishaRangingBudgetSeconds", 86400.0);
  sub_100330018();
}

void sub_10032E02C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10)
{
  sub_10032F96C(v14, *(v10 + 120));

  sub_10002074C(v13, *(v10 + 88));
  sub_10002074C(v12, *(v10 + 64));
  sub_10027D480(a10, *(v10 + 40));
  sub_10027D480(v11, *(v10 + 16));

  _Unwind_Resume(a1);
}

void sub_10032E148(uint64_t *a1)
{
  v2 = +[BGSystemTaskScheduler sharedScheduler];
  [v2 deregisterTaskWithIdentifier:@"com.apple.nearbyd.rangingBudget.task"];

  v3 = +[BGSystemTaskScheduler sharedScheduler];
  v4 = *a1;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10032E598;
  v17[3] = &unk_1009A0888;
  v17[4] = a1;
  [v3 registerForTaskWithIdentifier:@"com.apple.nearbyd.rangingBudget.task" usingQueue:v4 launchHandler:v17];

  v5 = +[BGSystemTaskScheduler sharedScheduler];
  v6 = [v5 taskRequestForIdentifier:@"com.apple.nearbyd.rangingBudget.task"];

  if (v6)
  {
    v7 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#rlm,task already submitted, return", buf, 2u);
    }
  }

  else
  {
    v8 = sub_100394DC0(@"DigitalKeyRangingDurationResetPeriodSeconds", 86400.0);
    v9 = sub_100394DC0(@"DigitalKeyRangingDurationResetPeriodToleranceSeconds", 300.0);
    v10 = [[BGRepeatingSystemTaskRequest alloc] initWithIdentifier:@"com.apple.nearbyd.rangingBudget.task"];
    [v10 setInterval:v8];
    [v10 setMinDurationBetweenInstances:{fmax(v8 - v9, 0.0)}];
    [v10 setPriority:2];
    [v10 setPreventsDeviceSleep:0];
    [v10 setShouldWakeDevice:0];
    v11 = +[BGSystemTaskScheduler sharedScheduler];
    v15 = 0;
    v12 = [v11 submitTaskRequest:v10 error:&v15];
    v13 = v15;

    v14 = qword_1009F9820;
    if (v12)
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#rlm,submitted ranging limit manager update task successfully", buf, 2u);
      }
    }

    else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004C0498(v13, v14);
    }
  }
}

uint64_t sub_10032E3FC(uint64_t a1)
{
  v2 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v8[0]) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#rlm,~RangingLimitManager()", v8, 2u);
  }

  v3 = +[BGSystemTaskScheduler sharedScheduler];
  v4 = [v3 deregisterTaskWithIdentifier:@"com.apple.nearbyd.rangingBudget.task"];

  v5 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#rlm,deregister %d in destructor", v8, 8u);
  }

  v6 = +[NIServerSystemConfigurator sharedInstance];
  [v6 removeClientWithIdentifier:@"RangingLimitManager"];

  sub_10032F96C(a1 + 112, *(a1 + 120));
  sub_10002074C(a1 + 80, *(a1 + 88));
  sub_10002074C(a1 + 56, *(a1 + 64));
  sub_10027D480(a1 + 32, *(a1 + 40));
  sub_10027D480(a1 + 8, *(a1 + 16));

  return a1;
}