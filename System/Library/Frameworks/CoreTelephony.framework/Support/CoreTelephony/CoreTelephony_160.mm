void sub_1013ABE58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, const void *a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, const void *a32, uint64_t a33, const void *a34, uint64_t a35, const void *a36, void *a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  v43 = *(v41 - 128);
  if (v43)
  {
    *(v41 - 120) = v43;
    operator delete(v43);
  }

  sub_1000296E0(&a25);
  sub_10001021C((v41 - 200));
  if (a26)
  {
    a27 = a26;
    operator delete(a26);
  }

  sub_1000296E0(&a32);
  sub_100029A48(&a34);
  sub_100029A48(&a36);
  if (a37)
  {
    a38 = a37;
    operator delete(a37);
  }

  if (a40)
  {
    a41 = a40;
    operator delete(a40);
  }

  sub_100005978((v41 - 248));
  sub_100005978((v41 - 208));
  _Unwind_Resume(a1);
}

void sub_1013AC17C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 23);
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a2 + 8);
  }

  if (v5)
  {

    sub_100DFECD0(a3, a2);
  }

  else
  {
    *(a3 + 144) = 0;
    *(a3 + 112) = 0u;
    *(a3 + 128) = 0u;
    *(a3 + 80) = 0u;
    *(a3 + 96) = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
    sub_100DFECD0(a3, a2);
    v7 = *(a2 + 47);
    if ((v7 & 0x80u) != 0)
    {
      v7 = *(a2 + 32);
    }

    if (!v7)
    {
      sub_10000501C(&v10, "USER_LABEL_PRIMARY");
      if (*(a3 + 47) < 0)
      {
        operator delete(*(a3 + 24));
      }

      *(a3 + 24) = v10;
      *(a3 + 40) = v11;
    }

    std::mutex::lock((a1 + 984));
    v8 = sub_100007A6C(a1 + 1136, (a3 + 24));
    if (a1 + 1144 == v8)
    {
      v9 = (a3 + 24);
    }

    else
    {
      v9 = (v8 + 56);
    }

    std::string::operator=(a3, v9);
    std::mutex::unlock((a1 + 984));
  }
}

void sub_1013AC2C8(Registry **a1@<X0>, uint64_t a2@<X1>, const void **a3@<X8>)
{
  *a3 = 0;
  v45 = 0;
  v46 = 0;
  (**a1)(&v45);
  if (!v45)
  {
    v17 = a1[5];
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_90;
    }

    v18 = *(a2 + 23);
    v19 = (v18 & 0x80u) != 0;
    if ((v18 & 0x80u) != 0)
    {
      v18 = *(a2 + 8);
    }

    if (v19)
    {
      v20 = *a2;
    }

    else
    {
      v20 = a2;
    }

    if (v18)
    {
      v21 = v20;
    }

    else
    {
      v21 = "<invalid>";
    }

    *buf = 136315650;
    *&buf[4] = "";
    *&buf[12] = 2080;
    *&buf[14] = "";
    *&buf[22] = 2080;
    *&buf[24] = v21;
    v14 = "#I %s%spersona '%s' is not present";
    v15 = v17;
    v16 = 32;
    goto LABEL_24;
  }

  if (*(v45 + 49))
  {
    v6 = a1[5];
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_90;
    }

    v7 = *(a2 + 23);
    v9 = *a2;
    v8 = *(a2 + 8);
    v10 = asString();
    if ((v7 & 0x80u) == 0)
    {
      v11 = v7;
    }

    else
    {
      v11 = v8;
    }

    if ((v7 & 0x80u) == 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = v9;
    }

    *buf = 136315906;
    *&buf[4] = "";
    *&buf[12] = 2080;
    *&buf[14] = "";
    *&buf[22] = 2080;
    if (v11)
    {
      v13 = v12;
    }

    else
    {
      v13 = "<invalid>";
    }

    *&buf[24] = v13;
    LOWORD(v66) = 2080;
    *(&v66 + 2) = v10;
    v14 = "#I %s%spersona '%s' is of %s type - currently don't support UserFacingName";
    v15 = v6;
    v16 = 42;
LABEL_24:
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, v14, buf, v16);
    goto LABEL_90;
  }

  v73 = 0;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v66 = 0u;
  memset(buf, 0, sizeof(buf));
  (*(*a1 + 24))(buf, a1, a2);
  v22 = BYTE7(v68);
  if (SBYTE7(v68) < 0)
  {
    v22 = *(&v67 + 1);
  }

  if (!v22)
  {
    v33 = a1[5];
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v34 = *(a2 + 23);
      v35 = (v34 & 0x80u) != 0;
      if ((v34 & 0x80u) != 0)
      {
        v34 = *(a2 + 8);
      }

      if (v35)
      {
        v36 = *a2;
      }

      else
      {
        v36 = a2;
      }

      if (v34)
      {
        v37 = v36;
      }

      else
      {
        v37 = "<invalid>";
      }

      *v54 = 136315650;
      *&v54[4] = "";
      *&v54[12] = 2080;
      *&v54[14] = "";
      *&v54[22] = 2080;
      v55 = v37;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#I %s%sNo label found for persona '%s'", v54, 0x20u);
    }

    goto LABEL_78;
  }

  v44 = 0;
  if (!sub_10139D330(a1, buf))
  {
LABEL_51:
    (*(*a1 + 21))(v54, a1, buf);
    v39 = *v54;
    v38 = *&v54[8];
    *v42 = *&v54[16];
    *&v42[3] = *&v54[19];
    v40 = v54[23];
    memset(v54, 0, sizeof(v54));
    if (v40 < 0)
    {
      sub_100005F2C(__dst, v39, v38);
      v47 = 0;
      if (SHIBYTE(v49) < 0)
      {
        sub_100005F2C(__p, __dst[0], __dst[1]);
        goto LABEL_55;
      }
    }

    else
    {
      __dst[0] = v39;
      __dst[1] = v38;
      LODWORD(v49) = *v42;
      *(&v49 + 3) = *&v42[3];
      HIBYTE(v49) = v40;
      v47 = 0;
    }

    *__p = *__dst;
    v51 = v49;
LABEL_55:
    v52 = 0;
    if (ctu::cf::convert_copy())
    {
      v41 = v47;
      v47 = v52;
      v53 = v41;
      sub_100005978(&v53);
    }

    if (SHIBYTE(v51) < 0)
    {
      operator delete(__p[0]);
    }

    v43 = v47;
    v47 = 0;
    sub_100005978(&v47);
    if (SHIBYTE(v49) < 0)
    {
      operator delete(__dst[0]);
    }

    if (&v43 != a3)
    {
      __p[0] = *a3;
      *a3 = v43;
      v43 = 0;
      sub_100005978(__p);
    }

    sub_100005978(&v43);
    if (v40 < 0)
    {
      operator delete(v39);
    }

    if (v64 < 0)
    {
      operator delete(v63);
    }

    if (v62 < 0)
    {
      operator delete(v61);
    }

    if (v60 < 0)
    {
      operator delete(v59);
    }

    if (v58 < 0)
    {
      operator delete(v57);
    }

    if (v56 < 0)
    {
      operator delete(v55);
    }

    if (v54[23] < 0)
    {
      operator delete(*v54);
    }

    goto LABEL_77;
  }

  ServiceMap = Registry::getServiceMap(a1[8]);
  v24 = ServiceMap;
  if (v25 < 0)
  {
    v26 = (v25 & 0x7FFFFFFFFFFFFFFFLL);
    v27 = 5381;
    do
    {
      v25 = v27;
      v28 = *v26++;
      v27 = (33 * v27) ^ v28;
    }

    while (v28);
  }

  std::mutex::lock(ServiceMap);
  *v54 = v25;
  v29 = sub_100009510(&v24[1].__m_.__sig, v54);
  if (v29)
  {
    v31 = v29[3];
    v30 = v29[4];
    if (v30)
    {
      atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v24);
      atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v30);
      v32 = 0;
      goto LABEL_47;
    }
  }

  else
  {
    v31 = 0;
  }

  std::mutex::unlock(v24);
  v30 = 0;
  v32 = 1;
LABEL_47:
  (*(*v31 + 80))(__dst, v31, *(v45 + 52), 1, @"CarrierName", 0, 0);
  sub_100060DE8(__p, __dst);
  *v54 = v44;
  v44 = __p[0];
  __p[0] = 0;
  sub_100005978(v54);
  sub_100005978(__p);
  sub_10000A1EC(__dst);
  if ((v32 & 1) == 0)
  {
    sub_100004A34(v30);
  }

  if (!v44)
  {
    goto LABEL_51;
  }

  sub_100222570(a3, &v44);
LABEL_77:
  sub_100005978(&v44);
LABEL_78:
  if (SHIBYTE(v73) < 0)
  {
    operator delete(v72);
  }

  if (SHIBYTE(v71) < 0)
  {
    operator delete(*(&v70 + 1));
  }

  if (SBYTE7(v70) < 0)
  {
    operator delete(v69);
  }

  if (SBYTE7(v68) < 0)
  {
    operator delete(v67);
  }

  if (SHIBYTE(v66) < 0)
  {
    operator delete(*&buf[24]);
  }

  if (buf[23] < 0)
  {
    operator delete(*buf);
  }

LABEL_90:
  if (v46)
  {
    sub_100004A34(v46);
  }
}

void sub_1013AC928(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, const void *a12, uint64_t a13, std::__shared_weak_count *a14, const void *a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  sub_100005978(&a15);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (v33 < 0)
  {
    operator delete(v32);
  }

  sub_100FB0A00(&a31);
  sub_100005978(&a12);
  sub_100FB0A00(v34 - 240);
  if (a14)
  {
    sub_100004A34(a14);
  }

  sub_100005978(v31);
  _Unwind_Resume(a1);
}

void sub_1013AC9F8(uint64_t a1, uint64_t a2)
{
  sub_10016C5E8(a2, *a2);
  std::mutex::lock((a1 + 984));
  v4 = *(a1 + 1136);
  v26 = a1;
  v5 = (a1 + 1144);
  if (v4 != (a1 + 1144))
  {
    do
    {
      if (*(v4 + 55) < 0)
      {
        sub_100005F2C(__dst, v4[4], v4[5]);
      }

      else
      {
        *__dst = *(v4 + 2);
        v31 = v4[6];
      }

      if (SHIBYTE(v31) < 0)
      {
        sub_100005F2C(__p, __dst[0], __dst[1]);
      }

      else
      {
        *__p = *__dst;
        v36 = v31;
      }

      v34 = 0;
      if (SHIBYTE(v36) < 0)
      {
        sub_100005F2C(&v37, __p[0], __p[1]);
      }

      else
      {
        v37 = *__p;
        v38 = v36;
      }

      v39 = 0;
      if (ctu::cf::convert_copy())
      {
        v6 = v34;
        v34 = v39;
        v40[0] = v6;
        sub_100005978(v40);
      }

      if (SHIBYTE(v38) < 0)
      {
        operator delete(v37);
      }

      v32 = v34;
      v34 = 0;
      sub_100005978(&v34);
      if (SHIBYTE(v36) < 0)
      {
        operator delete(__p[0]);
      }

      if (*(v4 + 79) < 0)
      {
        sub_100005F2C(v27, v4[7], v4[8]);
      }

      else
      {
        *v27 = *(v4 + 7);
        v28 = v4[9];
      }

      if (SHIBYTE(v28) < 0)
      {
        sub_100005F2C(__p, v27[0], v27[1]);
      }

      else
      {
        *__p = *v27;
        v36 = v28;
      }

      v34 = 0;
      if (SHIBYTE(v36) < 0)
      {
        sub_100005F2C(&v37, __p[0], __p[1]);
      }

      else
      {
        v37 = *__p;
        v38 = v36;
      }

      v39 = 0;
      if (ctu::cf::convert_copy())
      {
        v7 = v34;
        v34 = v39;
        v40[0] = v7;
        sub_100005978(v40);
      }

      if (SHIBYTE(v38) < 0)
      {
        operator delete(v37);
      }

      v29 = v34;
      v34 = 0;
      sub_100005978(&v34);
      if (SHIBYTE(v36) < 0)
      {
        operator delete(__p[0]);
      }

      v8 = v32;
      v32 = 0;
      *&v33 = v8;
      v9 = v29;
      *(&v33 + 1) = v29;
      v29 = 0;
      v11 = *(a2 + 8);
      v10 = *(a2 + 16);
      if (v11 >= v10)
      {
        v13 = *a2;
        v14 = (v11 - *a2) >> 4;
        v15 = v14 + 1;
        if ((v14 + 1) >> 60)
        {
          sub_1000CE3D4();
        }

        v16 = v10 - v13;
        if (v16 >> 3 > v15)
        {
          v15 = v16 >> 3;
        }

        if (v16 >= 0x7FFFFFFFFFFFFFF0)
        {
          v17 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v17 = v15;
        }

        if (v17)
        {
          if (!(v17 >> 60))
          {
            operator new();
          }

          sub_100013D10();
        }

        v18 = (v11 - *a2) >> 4;
        v19 = (16 * v14);
        *v19 = v8;
        v19[1] = v9;
        v33 = 0uLL;
        v20 = &v19[-2 * v18];
        if (v13 != v11)
        {
          v21 = &v19[-2 * v18];
          v22 = v13;
          do
          {
            *v21 = 0;
            *v21 = *v22;
            *v22 = 0;
            v21[1] = 0;
            v21[1] = v22[1];
            v22[1] = 0;
            v22 += 2;
            v21 += 2;
          }

          while (v22 != v11);
          do
          {
            sub_100005978(v13 + 1);
            sub_100005978(v13);
            v13 += 2;
          }

          while (v13 != v11);
          v13 = *a2;
        }

        v12 = v19 + 2;
        *a2 = v20;
        *(a2 + 8) = v19 + 2;
        *(a2 + 16) = 0;
        if (v13)
        {
          operator delete(v13);
        }
      }

      else
      {
        *v11 = 0u;
        *v11 = v33;
        v33 = 0u;
        v12 = v11 + 2;
      }

      *(a2 + 8) = v12;
      sub_100005978(&v33 + 1);
      sub_100005978(&v33);
      sub_100005978(&v29);
      if (SHIBYTE(v28) < 0)
      {
        operator delete(v27[0]);
      }

      sub_100005978(&v32);
      if (SHIBYTE(v31) < 0)
      {
        operator delete(__dst[0]);
      }

      v23 = v4[1];
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
          v24 = v4[2];
          v25 = *v24 == v4;
          v4 = v24;
        }

        while (!v25);
      }

      v4 = v24;
    }

    while (v24 != v5);
  }

  std::mutex::unlock((v26 + 984));
}

void sub_1013ACE38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, const void *a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, const void *a24, const void *a25, uint64_t a26, uint64_t a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  sub_100005978((v34 | 8));
  sub_100005978(&a25);
  sub_100005978(&a17);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_100005978(&a24);
  if (a23 < 0)
  {
    operator delete(a18);
  }

  std::mutex::unlock((a10 + 984));
  _Unwind_Resume(a1);
}

void sub_1013ACEF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, const void *a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (*(v28 - 105) < 0)
  {
    operator delete(*(v28 - 128));
  }

  sub_100005978(&a22);
  if (a28 < 0)
  {
    operator delete(a23);
  }

  JUMPOUT(0x1013ACED0);
}

void sub_1013ACF24(void *a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v5 = *(a2 + 16);
  }

  v3 = a1[2];
  if (v3)
  {
    if (std::__shared_weak_count::lock(v3))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1013AD078(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    if ((v7 + 1) >> 60)
    {
      sub_1000CE3D4();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 3;
    if (v8 >> 3 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      sub_1000210A8(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    *a2 = 0;
    *(a2 + 8) = 0;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  *(a1 + 8) = v6;
}

void sub_1013AD154(void *a1, __int128 *a2, __int128 *a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(v6, *a2, *(a2 + 1));
  }

  else
  {
    *v6 = *a2;
    v6[2] = *(a2 + 2);
  }

  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(__p, *a3, *(a3 + 1));
  }

  else
  {
    *__p = *a3;
    __p[2] = *(a3 + 2);
  }

  v5 = a1[2];
  if (v5)
  {
    if (std::__shared_weak_count::lock(v5))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1013AD318(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (*(v16 + 31) < 0)
  {
    operator delete(*v17);
  }

  sub_10004F058(a1);
}

void sub_1013AD35C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a2 + 23);
    v8 = (v7 & 0x80u) != 0;
    if ((v7 & 0x80u) != 0)
    {
      v7 = *(a2 + 8);
    }

    if (v8)
    {
      v9 = *a2;
    }

    else
    {
      v9 = a2;
    }

    if (v7)
    {
      v10 = v9;
    }

    else
    {
      v10 = "<invalid>";
    }

    v11 = *(a3 + 23);
    v12 = (v11 & 0x80u) != 0;
    if ((v11 & 0x80u) != 0)
    {
      v11 = *(a3 + 8);
    }

    if (v12)
    {
      v13 = *a3;
    }

    else
    {
      v13 = a3;
    }

    if (v11)
    {
      v14 = v13;
    }

    else
    {
      v14 = "<invalid>";
    }

    *buf = 136315906;
    *&buf[4] = "";
    *&buf[12] = 2080;
    *&buf[14] = "";
    *&buf[22] = 2080;
    v44 = v10;
    v45 = 2080;
    v46 = v14;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%sremapSimLabel %s -> %s", buf, 0x2Au);
  }

  memset(&v42, 0, sizeof(v42));
  memset(&__p, 0, sizeof(__p));
  v15 = sub_100007A6C(a1 + 880, a2);
  if (a1 + 888 != v15)
  {
    std::string::operator=(&v42, (v15 + 104));
  }

  v16 = *(a2 + 23);
  if ((v16 & 0x80u) != 0)
  {
    v16 = *(a2 + 8);
  }

  if (!v16 || sub_100071DF8(a2, a3))
  {
    goto LABEL_37;
  }

  size = HIBYTE(v42.__r_.__value_.__r.__words[2]);
  if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v42.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    sub_1013AD8B4(a1, a2);
    v18 = *(a3 + 23);
    if ((v18 & 0x80u) != 0)
    {
      v18 = *(a3 + 8);
    }

    if (v18)
    {
      v19 = sub_100007A6C(a1 + 880, a3);
      if (a1 + 888 != v19)
      {
        std::string::operator=(&__p, (v19 + 104));
      }
    }

    v20 = *(a1 + 896);
    if (v20 != 1)
    {
      sub_1013B7834((a1 + 880), a2);
    }

    if (*(a2 + 23) < 0)
    {
      sub_100005F2C(buf, *a2, *(a2 + 8));
    }

    else
    {
      *buf = *a2;
      *&buf[16] = *(a2 + 16);
    }

    LOBYTE(v44) = 1;
    sub_1013A5D7C(a1, buf);
    if (v44 == 1 && (buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    sub_10139C67C(a1, "remapping", 0);
    v30 = *(a1 + 40);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = *(a2 + 23);
      v32 = (v31 & 0x80u) != 0;
      v33 = *a2;
      if ((v31 & 0x80u) != 0)
      {
        v31 = *(a2 + 8);
      }

      if (!v32)
      {
        v33 = a2;
      }

      if (v31)
      {
        v34 = v33;
      }

      else
      {
        v34 = "<invalid>";
      }

      *buf = 136315650;
      *&buf[4] = "";
      *&buf[12] = 2080;
      *&buf[14] = "";
      *&buf[22] = 2080;
      v44 = v34;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I %s%spersona %s destroyed", buf, 0x20u);
    }

    (*(**(a1 + 120) + 112))(*(a1 + 120), a2);
    if (v20 != 1)
    {
      v35 = *(a1 + 40);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        v36 = *(a2 + 23);
        v37 = (v36 & 0x80u) != 0;
        if ((v36 & 0x80u) != 0)
        {
          v36 = *(a2 + 8);
        }

        if (v37)
        {
          v38 = *a2;
        }

        else
        {
          v38 = a2;
        }

        if (!v36)
        {
          v38 = "<invalid>";
        }

        v39 = &v42;
        if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v39 = v42.__r_.__value_.__r.__words[0];
        }

        p_p = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        *buf = 136316162;
        *&buf[4] = "";
        *&buf[12] = 2080;
        *&buf[14] = "";
        *&buf[22] = 2080;
        v44 = v38;
        v45 = 2080;
        v46 = v39;
        v47 = 2080;
        v48 = p_p;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "#I %s%sexecute remapSimLabel %s '%s' -> '%s'", buf, 0x34u);
      }

      sub_1013AB290(a1, &v42, &__p, @"remap");
      (*(**(a1 + 1200) + 16))(*(a1 + 1200));
    }
  }

  else
  {
LABEL_37:
    v21 = *(a1 + 40);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = *(a2 + 23);
      v23 = (v22 & 0x80u) != 0;
      if ((v22 & 0x80u) != 0)
      {
        v22 = *(a2 + 8);
      }

      if (v23)
      {
        v24 = *a2;
      }

      else
      {
        v24 = a2;
      }

      v25 = *(a3 + 23);
      v26 = (v25 & 0x80u) != 0;
      v27 = *a3;
      if ((v25 & 0x80u) != 0)
      {
        v25 = *(a3 + 8);
      }

      if (!v26)
      {
        v27 = a3;
      }

      if (v22)
      {
        v28 = v24;
      }

      else
      {
        v28 = "<invalid>";
      }

      if (v25)
      {
        v29 = v27;
      }

      else
      {
        v29 = "<invalid>";
      }

      *buf = 136315906;
      *&buf[4] = "";
      *&buf[12] = 2080;
      *&buf[14] = "";
      *&buf[22] = 2080;
      v44 = v28;
      v45 = 2080;
      v46 = v29;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#W %s%signoring inadequate request to remap persona '%s' -> '%s'", buf, 0x2Au);
    }
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

void sub_1013AD854(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
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

uint64_t sub_1013AD8B4(capabilities::ct *a1, uint64_t a2)
{
  v4 = (a1 + 656);
  v5 = *(a1 + 82);
  v6 = *v5;
  v7 = *(v5 + 8);
  if (*v5 != v7)
  {
    while (!sub_100071DF8(*v6 + 3, a2))
    {
      v6 += 2;
      if (v6 == v7)
      {
        v6 = v7;
        break;
      }
    }

    v7 = *(*v4 + 8);
  }

  if (v6 == v7)
  {
    v8 = *(a1 + 5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a2 + 23);
      v10 = (v9 & 0x80u) != 0;
      if ((v9 & 0x80u) != 0)
      {
        v9 = *(a2 + 8);
      }

      if (v10)
      {
        v11 = *a2;
      }

      else
      {
        v11 = a2;
      }

      if (v9)
      {
        v12 = v11;
      }

      else
      {
        v12 = "<invalid>";
      }

      *buf = 136315650;
      *&buf[4] = "";
      *&buf[12] = 2080;
      *&buf[14] = "";
      *&buf[22] = 2080;
      *v24 = v12;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%sPersonality %s is not listed as present. Nothing to do. (makeSurePersonalityIsNotIN)", buf, 0x20u);
    }

    return 1;
  }

  else
  {
    if (*(*v6 + 64) != 2 || sub_101395904(a1, a2))
    {
      memset(buf, 0, sizeof(buf));
      v22 = v6;
      sub_10139C06C(a1, &v22, v4, buf);
    }

    v14 = *(a1 + 5);
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (v15)
    {
      v16 = *(*v6 + 14);
      v17 = PersonalityInfo::logPrefix(*v6);
      v18 = *(*v6 + 3);
      v19 = *(*v6 + 47);
      v20 = v19;
      if ((v19 & 0x80u) != 0)
      {
        v19 = *(*v6 + 4);
      }

      if (v20 >= 0)
      {
        v18 = *v6 + 24;
      }

      if (v19)
      {
        v21 = v18;
      }

      else
      {
        v21 = "<invalid>";
      }

      *buf = 136316418;
      *&buf[4] = "";
      *&buf[12] = 2080;
      *&buf[14] = "";
      *&buf[22] = 1024;
      *v24 = v16;
      *&v24[4] = 2080;
      *&v24[6] = v17;
      v25 = 2080;
      v26 = v21;
      v27 = 2080;
      v28 = subscriber::asString();
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%sCannot remove Personality [%d] %s %s from <Present> since it is available on slot %s", buf, 0x3Au);
      return 0;
    }
  }

  return result;
}

void sub_1013ADB7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, char a11)
{
  a10 = &a11;
  sub_1013B1D50(&a10);
  _Unwind_Resume(a1);
}

void sub_1013ADBA0(uint64_t a1, uint64_t a2, __int128 *a3)
{
  __dst[0] = 0;
  __dst[1] = 0;
  v10 = 0;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 8));
  }

  else
  {
    *__dst = *a2;
    v10 = *(a2 + 16);
  }

  std::mutex::lock((a1 + 984));
  v5 = HIBYTE(v10);
  if (SHIBYTE(v10) < 0)
  {
    v5 = __dst[1];
  }

  if (v5 && *(a1 + 1104) == 1)
  {
    sub_100007A6C(a1 + 1080, __dst);
  }

  std::mutex::unlock((a1 + 984));
  if (SHIBYTE(v10) < 0)
  {
    sub_100005F2C(v7, __dst[0], __dst[1]);
  }

  else
  {
    *v7 = *__dst;
    v7[2] = v10;
  }

  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(__p, *a3, *(a3 + 1));
  }

  else
  {
    *__p = *a3;
    __p[2] = *(a3 + 2);
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    if (std::__shared_weak_count::lock(v6))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1013ADDFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  std::mutex::unlock((v25 + 984));
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1013ADE6C(uint64_t a1, uint64_t a2, uint64_t a3, _BOOL4 a4)
{
  v8 = *(a1 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a2 + 23);
    v10 = (v9 & 0x80u) != 0;
    v11 = *a2;
    if ((v9 & 0x80u) != 0)
    {
      v9 = *(a2 + 8);
    }

    if (!v10)
    {
      v11 = a2;
    }

    if (v9)
    {
      v12 = v11;
    }

    else
    {
      v12 = "<invalid>";
    }

    v13 = *(a3 + 23);
    v14 = (v13 & 0x80u) != 0;
    if ((v13 & 0x80u) != 0)
    {
      v13 = *(a3 + 8);
    }

    if (v14)
    {
      v15 = *a3;
    }

    else
    {
      v15 = a3;
    }

    if (v13)
    {
      v16 = v15;
    }

    else
    {
      v16 = "<invalid>";
    }

    *buf = 136316162;
    *&buf[4] = "";
    *&buf[12] = 2080;
    *&buf[14] = "";
    *&buf[22] = 2080;
    *v77 = v12;
    *&v77[8] = 2080;
    *&v77[10] = v16;
    *&v77[18] = 2080;
    *&v77[20] = asStringBool(a4);
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%stransferPersonality %s -> %s (userAction:%s)", buf, 0x34u);
  }

  v17 = *(a2 + 23);
  if ((v17 & 0x80u) != 0)
  {
    v17 = *(a2 + 8);
  }

  if (!v17)
  {
    goto LABEL_25;
  }

  v18 = *(a3 + 23);
  if ((v18 & 0x80u) != 0)
  {
    v18 = *(a3 + 8);
  }

  if (!v18 || sub_100071DF8(a2, a3))
  {
LABEL_25:
    v19 = *(a1 + 40);
    v20 = 0;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v21 = *(a2 + 23);
      v22 = (v21 & 0x80u) != 0;
      if ((v21 & 0x80u) != 0)
      {
        v21 = *(a2 + 8);
      }

      if (v22)
      {
        v23 = *a2;
      }

      else
      {
        v23 = a2;
      }

      if (v21)
      {
        v24 = v23;
      }

      else
      {
        v24 = "<invalid>";
      }

      v25 = *(a3 + 23);
      v26 = (v25 & 0x80u) != 0;
      if ((v25 & 0x80u) != 0)
      {
        v25 = *(a3 + 8);
      }

      if (v26)
      {
        v27 = *a3;
      }

      else
      {
        v27 = a3;
      }

      if (v25)
      {
        v28 = v27;
      }

      else
      {
        v28 = "<invalid>";
      }

      *buf = 136315906;
      *&buf[4] = "";
      *&buf[12] = 2080;
      *&buf[14] = "";
      *&buf[22] = 2080;
      *v77 = v24;
      *&v77[8] = 2080;
      *&v77[10] = v28;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#W %s%signoring inadequate request to transfer persona '%s' -> '%s'", buf, 0x2Au);
      return 0;
    }

    return v20;
  }

  memset(&v72, 0, sizeof(v72));
  v29 = sub_100007A6C(a1 + 880, a2);
  if (a1 + 888 == v29)
  {
    v30 = *(a1 + 40);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = *(a2 + 23);
      v32 = (v31 & 0x80u) != 0;
      v33 = *a2;
      if ((v31 & 0x80u) != 0)
      {
        v31 = *(a2 + 8);
      }

      if (!v32)
      {
        v33 = a2;
      }

      if (v31)
      {
        v34 = v33;
      }

      else
      {
        v34 = "<invalid>";
      }

      *buf = 136315650;
      *&buf[4] = "";
      *&buf[12] = 2080;
      *&buf[14] = "";
      *&buf[22] = 2080;
      *v77 = v34;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#W %s%sPersonality (from) %s is unlabeled", buf, 0x20u);
    }
  }

  else
  {
    std::string::operator=(&v72, (v29 + 104));
  }

  v35 = sub_1013AD8B4(a1, a2);
  v36 = *(a1 + 40);
  v37 = os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT);
  if (!v35)
  {
    if (v37)
    {
      v49 = *(a2 + 23);
      v50 = (v49 & 0x80u) != 0;
      if ((v49 & 0x80u) != 0)
      {
        v49 = *(a2 + 8);
      }

      if (v50)
      {
        v51 = *a2;
      }

      else
      {
        v51 = a2;
      }

      v52 = *(a3 + 23);
      v53 = (v52 & 0x80u) != 0;
      v54 = *a3;
      if ((v52 & 0x80u) != 0)
      {
        v52 = *(a3 + 8);
      }

      if (!v53)
      {
        v54 = a3;
      }

      if (v49)
      {
        v55 = v51;
      }

      else
      {
        v55 = "<invalid>";
      }

      if (v52)
      {
        v56 = v54;
      }

      else
      {
        v56 = "<invalid>";
      }

      *buf = 136315906;
      *&buf[4] = "";
      *&buf[12] = 2080;
      *&buf[14] = "";
      *&buf[22] = 2080;
      *v77 = v55;
      *&v77[8] = 2080;
      *&v77[10] = v56;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "#I %s%sUnable to transferPersonality from '%s' to '%s'", buf, 0x2Au);
    }

    goto LABEL_135;
  }

  if (v37)
  {
    v38 = &v72;
    if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v38 = v72.__r_.__value_.__r.__words[0];
    }

    v39 = *(a2 + 23);
    v40 = (v39 & 0x80u) != 0;
    if ((v39 & 0x80u) != 0)
    {
      v39 = *(a2 + 8);
    }

    if (v40)
    {
      v41 = *a2;
    }

    else
    {
      v41 = a2;
    }

    v42 = *(a3 + 23);
    v43 = (v42 & 0x80u) != 0;
    if ((v42 & 0x80u) != 0)
    {
      v42 = *(a3 + 8);
    }

    if (v43)
    {
      v44 = *a3;
    }

    else
    {
      v44 = a3;
    }

    if (v39)
    {
      v45 = v41;
    }

    else
    {
      v45 = "<invalid>";
    }

    if (v42)
    {
      v46 = v44;
    }

    else
    {
      v46 = "<invalid>";
    }

    *buf = 136316162;
    *&buf[4] = "";
    *&buf[12] = 2080;
    *&buf[14] = "";
    *&buf[22] = 2080;
    *v77 = v38;
    *&v77[8] = 2080;
    *&v77[10] = v45;
    *&v77[18] = 2080;
    *&v77[20] = v46;
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "#I %s%sexecute transferPersonality '%s' %s -> %s", buf, 0x34u);
  }

  v74.__r_.__value_.__r.__words[0] = 0;
  (*(**(a1 + 120) + 24))(buf);
  sub_100010180(&v74, buf);
  sub_10000A1EC(buf);
  v47 = v74.__r_.__value_.__r.__words[0];
  if (v74.__r_.__value_.__r.__words[0])
  {
    theDict = 0;
    (*(**(a1 + 120) + 24))(buf);
    sub_100010180(&theDict, buf);
    sub_10000A1EC(buf);
    (*(**(a1 + 120) + 104))(*(a1 + 120), a2, a3);
    object = 0;
    if (theDict)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, theDict);
    }

    else
    {
      MutableCopy = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (!MutableCopy)
      {
LABEL_97:
        v58 = object;
        v59 = v74.__r_.__value_.__r.__words[0];
        size = HIBYTE(v72.__r_.__value_.__r.__words[2]);
        if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = v72.__r_.__value_.__l.__size_;
        }

        if (size)
        {
          Value = CFDictionaryGetValue(v74.__r_.__value_.__l.__data_, @"label-id");
          if (Value)
          {
            CFDictionarySetValue(v58, @"label-id", Value);
          }

          else
          {
            CFDictionaryRemoveValue(v58, @"label-id");
          }

          v62 = CFDictionaryGetValue(v59, @"label-id-confirmed");
          if (v62)
          {
            CFDictionarySetValue(v58, @"label-id-confirmed", v62);
          }

          else
          {
            CFDictionaryRemoveValue(v58, @"label-id-confirmed");
          }
        }

        v63 = CFDictionaryGetValue(v59, @"mdn");
        if (v63)
        {
          CFDictionarySetValue(v58, @"mdn", v63);
        }

        else
        {
          CFDictionaryRemoveValue(v58, @"mdn");
        }

        v64 = CFDictionaryGetValue(v59, @"formatted-mdn");
        if (v64)
        {
          CFDictionarySetValue(v58, @"formatted-mdn", v64);
        }

        else
        {
          CFDictionaryRemoveValue(v58, @"formatted-mdn");
        }

        (*(**(a1 + 120) + 16))(*(a1 + 120), a3, @"info", object, 0, 0, 0, 0);
        sub_1000296E0(&object);
        sub_10001021C(&theDict);
        goto LABEL_113;
      }
    }

    v57 = object;
    object = MutableCopy;
    *buf = v57;
    sub_1000296E0(buf);
    goto LABEL_97;
  }

LABEL_113:
  sub_10001021C(&v74.__r_.__value_.__l.__data_);
  v65 = HIBYTE(v72.__r_.__value_.__r.__words[2]);
  if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v65 = v72.__r_.__value_.__l.__size_;
  }

  if (v65)
  {
    memset(&v74, 0, sizeof(v74));
    v66 = sub_100007A6C(a1 + 880, a3);
    if (a1 + 888 != v66)
    {
      std::string::operator=(&v74, (v66 + 104));
    }

    *buf = a3;
    v67 = sub_1013BBEE8((a1 + 880), a3, buf);
    std::string::operator=((v67 + 56), (v29 + 56));
    std::string::operator=((v67 + 80), (v29 + 80));
    std::string::operator=((v67 + 104), (v29 + 104));
    *(v67 + 128) = *(v29 + 128);
    std::string::operator=((v67 + 136), (v29 + 136));
    std::string::operator=((v67 + 160), (v29 + 160));
    std::string::operator=((v67 + 184), (v29 + 184));
    sub_1013B7834((a1 + 880), a2);
    if (a4)
    {
      sub_1013A8B10(a1, a3, 1);
    }

    buf[0] = 0;
    v77[0] = 0;
    sub_1013A5D7C(a1, buf);
    if (v77[0] == 1 && (buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    sub_10139C67C(a1, "label transfer", 0);
    v68 = HIBYTE(v74.__r_.__value_.__r.__words[2]);
    if ((v74.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v68 = v74.__r_.__value_.__l.__size_;
    }

    if (v68)
    {
      if (a4)
      {
        v69 = @"manual transfer";
      }

      else
      {
        v69 = @"mdn match transfer";
      }

      sub_1013AB290(a1, &v74, &v72, v69);
    }

    (*(**(a1 + 1200) + 16))(*(a1 + 1200));
    if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v74.__r_.__value_.__l.__data_);
    }
  }

  if (v47)
  {
    v74.__r_.__value_.__r.__words[0] = a3;
    v70 = sub_1013BBEE8((a1 + 880), a3, &v74);
    if (*(a2 + 23) < 0)
    {
      sub_100005F2C(buf, *a2, *(a2 + 8));
    }

    else
    {
      *buf = *a2;
      *&buf[16] = *(a2 + 16);
    }

    if (*(a3 + 23) < 0)
    {
      sub_100005F2C(v77, *a3, *(a3 + 8));
    }

    else
    {
      *v77 = *a3;
      *&v77[16] = *(a3 + 16);
    }

    if (*(v70 + 159) < 0)
    {
      sub_100005F2C(&v77[24], *(v70 + 136), *(v70 + 144));
    }

    else
    {
      *&v77[24] = *(v70 + 136);
      v78 = *(v70 + 152);
    }

    theDict = 0;
    rest::write_rest_value();
    sub_10000501C(&v74, "/cc/events/service_transferred");
    object = theDict;
    theDict = xpc_null_create();
    ctu::RestModule::sendEvent();
    xpc_release(object);
    object = 0;
    if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v74.__r_.__value_.__l.__data_);
    }

    xpc_release(theDict);
    if (SHIBYTE(v78) < 0)
    {
      operator delete(*&v77[24]);
    }

    if ((v77[23] & 0x80000000) != 0)
    {
      operator delete(*v77);
    }

    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    v20 = 1;
    goto LABEL_152;
  }

LABEL_135:
  v20 = 0;
LABEL_152:
  if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v72.__r_.__value_.__l.__data_);
  }

  return v20;
}

void sub_1013AE884(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, xpc_object_t object, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, xpc_object_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a34 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

void sub_1013AE9CC(uint64_t a1@<X0>, void *a2@<X8>)
{
  std::mutex::lock((a1 + 984));
  sub_1013BF894(a2, (a1 + 1112));

  std::mutex::unlock((a1 + 984));
}

void sub_1013AEA2C(void *a1, uint64_t *a2, uint64_t a3)
{
  v8[0] = a1;
  v8[1] = 0uLL;
  v4 = a2[1];
  if (v4 != *a2)
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 4);
    if (v5 < 0x555555555555556)
    {
      sub_1001904B4(v8 + 8, v5);
    }

    sub_1000CE3D4();
  }

  v6 = *(a3 + 24);
  if (v6)
  {
    if (v6 == a3)
    {
      v10 = v9;
      (*(*v6 + 24))(v6, v9);
      goto LABEL_9;
    }

    v6 = (*(*v6 + 16))(v6);
  }

  v10 = v6;
LABEL_9:
  v7 = a1[2];
  if (v7 && std::__shared_weak_count::lock(v7))
  {
    operator new();
  }

  sub_100013CC4();
}

void sub_1013AECC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1013AED2C(uint64_t a1)
{
  v76 = 0;
  v73 = 0;
  v74 = 0;
  v75 = 0;
  v2 = *(a1 + 216);
  v3 = (a1 + 224);
  if (v2 != (a1 + 224))
  {
    v61 = (a1 + 880);
    v4 = (a1 + 888);
    do
    {
      v5 = *(v2 + 55);
      if ((v5 & 0x80u) != 0)
      {
        v5 = v2[5];
      }

      if (!v5 || *(v2 + 136) != 1)
      {
        goto LABEL_156;
      }

      v6 = *(a1 + 656);
      v7 = *v6;
      v8 = *(v6 + 8);
      if (*v6 != v8)
      {
        while (!sub_100071DF8((*v7 + 24), v2 + 4))
        {
          v7 += 2;
          if (v7 == v8)
          {
            v7 = v8;
            break;
          }
        }

        v8 = *(v6 + 8);
      }

      if (v7 == v8)
      {
        v10 = 0;
      }

      else
      {
        v9 = *v7;
        v10 = v7[1];
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v9)
        {
          v11 = (v2 + 10);
          v12 = *(v9 + 95);
          if (v12 >= 0)
          {
            v13 = *(v9 + 95);
          }

          else
          {
            v13 = *(v9 + 80);
          }

          v14 = *(v2 + 103);
          v15 = v2[11];
          if ((v14 & 0x80u) == 0)
          {
            v15 = *(v2 + 103);
          }

          if (v13 != v15 || ((v18 = *(v9 + 72), v16 = (v9 + 72), v17 = v18, v12 >= 0) ? (v19 = v16) : (v19 = v17), (v14 & 0x80u) == 0 ? (v20 = v2 + 10) : (v20 = *v11), memcmp(v19, v20, v13)))
          {
            v21 = *(a1 + 40);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              v22 = v2 + 10;
              if ((v14 & 0x80) != 0)
              {
                v22 = *v11;
              }

              v23 = asString();
              v24 = v2 + 7;
              v25 = *(v2 + 55);
              v26 = (v25 & 0x80u) != 0;
              if ((v25 & 0x80u) != 0)
              {
                v25 = v2[5];
              }

              if (v26)
              {
                v27 = v2[4];
              }

              else
              {
                v27 = (v2 + 4);
              }

              v28 = v25 == 0;
              v29 = "<invalid>";
              if (!v28)
              {
                v29 = v27;
              }

              if (*(v2 + 79) < 0)
              {
                v24 = *v24;
              }

              buf[0].var0 = 136316418;
              *&buf[0].var1 = "";
              WORD2(buf[0].var2.__rep_.__l.__data_) = 2080;
              *(&buf[0].var2.__rep_.__l.__data_ + 6) = "";
              HIWORD(buf[0].var2.__rep_.__l.__size_) = 2080;
              *(&buf[0].var2.__rep_.__l + 2) = v22;
              LOWORD(buf[1].var0) = 2080;
              *(&buf[1].var0 + 2) = v23;
              WORD1(buf[1].var2.__rep_.__l.__data_) = 2080;
              *(&buf[1].var2.__rep_.__l.__data_ + 4) = v29;
              WORD2(buf[1].var2.__rep_.__l.__size_) = 2080;
              *(&buf[1].var2.__rep_.__l.__size_ + 6) = v24;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I %s%sAssigning MDN '%s src:%s' to %s (msisdn:%s)", buf, 0x3Eu);
              v14 = *(v2 + 103);
            }

            if ((v14 & 0x80) != 0)
            {
              v30 = v2[11];
              if (!v30)
              {
                goto LABEL_50;
              }

              theString2 = 0;
              sub_100005F2C(__dst, *v11, v30);
LABEL_48:
              if (SHIBYTE(v71) < 0)
              {
                sub_100005F2C(&__p, __dst[0], __dst[1]);
              }

              else
              {
                *&__p.var0 = *__dst;
                __p.var2.__rep_.__l.__size_ = v71;
              }

              v77 = 0;
              if (__p.var2.__rep_.__s.__data_[15] < 0)
              {
                sub_100005F2C(buf, *&__p.var0, __p.var2.__rep_.__l.__data_);
              }

              else
              {
                *&buf[0].var0 = *&__p.var0;
                buf[0].var2.__rep_.__l.__size_ = __p.var2.__rep_.__l.__size_;
              }

              v63[0] = 0;
              if (ctu::cf::convert_copy())
              {
                v31 = v77;
                v77 = v63[0];
                v62.__r_.__value_.__r.__words[0] = v31;
                sub_100005978(&v62.__r_.__value_.__l.__data_);
              }

              if (buf[0].var2.__rep_.__s.__data_[15] < 0)
              {
                operator delete(*&buf[0].var0);
              }

              theString2 = v77;
              v77 = 0;
              sub_100005978(&v77);
              if (__p.var2.__rep_.__s.__data_[15] < 0)
              {
                operator delete(*&__p.var0);
              }

              if (SHIBYTE(v71) < 0)
              {
                operator delete(__dst[0]);
              }

              memset(&v62, 0, sizeof(v62));
              v32 = *v61;
              if (*(v2 + 103) < 0)
              {
                sub_100005F2C(v66, v2[10], v2[11]);
              }

              else
              {
                *v66 = *v11;
                v67 = v2[12];
              }

              v68 = a1;
              v69 = &v76;
              if (v32 != v4)
              {
                while (1)
                {
                  v33 = v68;
                  *v92 = 0u;
                  v93 = 0u;
                  *v90 = 0u;
                  v91 = 0u;
                  *v88 = 0u;
                  v89 = 0u;
                  memset(buf, 0, sizeof(buf));
                  CSIPhoneNumber::CSIPhoneNumber();
                  *v85 = 0u;
                  v86 = 0u;
                  *v83 = 0u;
                  v84 = 0u;
                  *v81 = 0u;
                  v82 = 0u;
                  *v79 = 0u;
                  v80 = 0u;
                  memset(&__p, 0, sizeof(__p));
                  CSIPhoneNumber::CSIPhoneNumber();
                  isOriginalNumberSame = CSIPhoneNumber::isOriginalNumberSame(buf, &__p);
                  if (SBYTE7(v86) < 0)
                  {
                    operator delete(v85[0]);
                  }

                  if (SHIBYTE(v84) < 0)
                  {
                    operator delete(v83[1]);
                  }

                  if (SBYTE7(v82) < 0)
                  {
                    operator delete(v81[0]);
                  }

                  if (SBYTE7(v80) < 0)
                  {
                    operator delete(v79[0]);
                  }

                  if (*(&__p.var2.__rep_.__l + 23) < 0)
                  {
                    operator delete(__p.var2.__rep_.__l.__data_);
                  }

                  if (SBYTE7(v93) < 0)
                  {
                    operator delete(v92[0]);
                  }

                  if (SHIBYTE(v91) < 0)
                  {
                    operator delete(v90[1]);
                  }

                  if (SBYTE7(v89) < 0)
                  {
                    operator delete(v88[0]);
                  }

                  if (buf[1].var2.__rep_.__s.__data_[15] < 0)
                  {
                    operator delete(*&buf[1].var0);
                  }

                  if (*(&buf[0].var2.__rep_.__l + 23) < 0)
                  {
                    operator delete(buf[0].var2.__rep_.__l.__data_);
                    if (isOriginalNumberSame)
                    {
LABEL_89:
                      if (sub_10005B0C0(v33, v32 + 4))
                      {
                        break;
                      }
                    }
                  }

                  else if (isOriginalNumberSame)
                  {
                    goto LABEL_89;
                  }

                  v35 = v32[1];
                  if (v35)
                  {
                    do
                    {
                      v36 = v35;
                      v35 = *v35;
                    }

                    while (v35);
                  }

                  else
                  {
                    do
                    {
                      v36 = v32[2];
                      v28 = *v36 == v32;
                      v32 = v36;
                    }

                    while (!v28);
                  }

                  v32 = v36;
                  if (v36 == v4)
                  {
                    v32 = (a1 + 888);
                    break;
                  }
                }
              }

              if (SHIBYTE(v67) < 0)
              {
                operator delete(v66[0]);
              }

              if (v32 == v4)
              {
                memset(buf, 0, 24);
                (*(**(a1 + 120) + 80))(buf);
                v38 = *&buf[0].var0;
                data = buf[0].var2.__rep_.__l.__data_;
                while (v38 != data)
                {
                  if (!sub_100071DF8(v38, v2 + 4))
                  {
                    *&__p.var0 = 0;
                    (*(**(a1 + 120) + 24))(v63);
                    sub_100060DE8(&__p, v63);
                    sub_10000A1EC(v63);
                    if (*&__p.var0 && CFStringCompare(*&__p.var0, theString2, 0) == kCFCompareEqualTo && sub_10005B0C0(a1, v38))
                    {
                      std::string::operator=(&v62, v38);
                      sub_100005978(&__p);
                      break;
                    }

                    sub_100005978(&__p);
                  }

                  ++v38;
                }

                *&__p.var0 = buf;
                sub_10005AAF8(&__p);
              }

              else if (!sub_100071DF8(v32 + 4, v2 + 4))
              {
                std::string::operator=(&v62, (v32 + 4));
              }

              size = HIBYTE(v62.__r_.__value_.__r.__words[2]);
              v40 = SHIBYTE(v62.__r_.__value_.__r.__words[2]);
              if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                size = v62.__r_.__value_.__l.__size_;
              }

              if (size)
              {
                v41 = *(a1 + 40);
                if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
                {
                  v42 = v62.__r_.__value_.__r.__words[0];
                  if (v40 >= 0)
                  {
                    v42 = &v62;
                  }

                  v43 = v2 + 10;
                  if (*(v2 + 103) < 0)
                  {
                    v43 = *v11;
                  }

                  buf[0].var0 = 136315906;
                  *&buf[0].var1 = "";
                  WORD2(buf[0].var2.__rep_.__l.__data_) = 2080;
                  *(&buf[0].var2.__rep_.__l.__data_ + 6) = "";
                  HIWORD(buf[0].var2.__rep_.__l.__size_) = 2080;
                  *(&buf[0].var2.__rep_.__l + 2) = v42;
                  LOWORD(buf[1].var0) = 2080;
                  *(&buf[1].var0 + 2) = v43;
                  _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "#I %s%sDetected older Personality %s with the same MDN %s. Executing automatic transfer", buf, 0x2Au);
                }

                sub_1013ADE6C(a1, &v62, (v2 + 4), 0);
              }

              (*(**(a1 + 120) + 16))(*(a1 + 120), v2 + 4, @"mdn", theString2, @"info", 0, 0, 0);
              if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v62.__r_.__value_.__l.__data_);
              }

              sub_100005978(&theString2);
            }

            else
            {
              if (v14)
              {
                theString2 = 0;
                *__dst = *v11;
                v71 = v2[12];
                goto LABEL_48;
              }

LABEL_50:
              (*(**(a1 + 120) + 32))(*(a1 + 120), v2 + 4, @"mdn", @"info", 0, 0);
              (*(**(a1 + 120) + 32))(*(a1 + 120), v2 + 4, @"formatted-mdn", @"info", 0, 0);
            }

            v44 = sub_100007A6C(v61, v2 + 32);
            if (v4 != v44)
            {
              v45 = (v44 + 136);
              v46 = *(v44 + 159);
              if (v46 >= 0)
              {
                v47 = *(v44 + 159);
              }

              else
              {
                v47 = *(v44 + 144);
              }

              v48 = *(v2 + 103);
              v49 = v48;
              if ((v48 & 0x80u) != 0)
              {
                v48 = v2[11];
              }

              if (v47 != v48 || (v46 >= 0 ? (v50 = (v44 + 136)) : (v50 = v45->__r_.__value_.__r.__words[0]), v49 >= 0 ? (v51 = v2 + 10) : (v51 = *v11), memcmp(v50, v51, v47)))
              {
                std::string::operator=(v45, (v2 + 10));
              }
            }

            v52 = *(a1 + 656);
            v53 = *v52;
            v54 = v52[1];
            if (*(v2 + 55) < 0)
            {
              sub_100005F2C(v64, v2[4], v2[5]);
            }

            else
            {
              *v64 = *(v2 + 2);
              v65 = v2[6];
            }

            if (v53 != v54)
            {
              while (*(*v53 + 49) || !sub_100071DF8((*v53 + 24), v64))
              {
                v53 += 16;
                if (v53 == v54)
                {
                  v53 = v54;
                  break;
                }
              }
            }

            if (SHIBYTE(v65) < 0)
            {
              operator delete(v64[0]);
            }

            if (v53 != *(*(a1 + 656) + 8))
            {
              v63[0] = 0;
              v63[1] = 0;
              sub_1004CA38C();
            }
          }
        }
      }

      v55 = sub_100007A6C(v61, v2 + 32);
      if (v4 != v55)
      {
        sub_1013A153C(a1, (v2 + 4), v55 + 56, 0);
      }

      if (v10)
      {
        sub_100004A34(v10);
      }

LABEL_156:
      v56 = v2[1];
      if (v56)
      {
        do
        {
          v57 = v56;
          v56 = *v56;
        }

        while (v56);
      }

      else
      {
        do
        {
          v57 = v2[2];
          v28 = *v57 == v2;
          v2 = v57;
        }

        while (!v28);
      }

      v2 = v57;
    }

    while (v57 != v3);
  }

  v58 = v73;
  if (v74 != v73)
  {
    v59 = 0;
    v60 = 0;
    do
    {
      sub_101399700(a1, v58 + v59);
      ++v60;
      v58 = v73;
      v59 += 48;
    }

    while (v60 < 0xAAAAAAAAAAAAAAABLL * ((v74 - v73) >> 4));
  }

  sub_10139C67C(a1, "phone number changed", 0);
  *&buf[0].var0 = &v73;
  sub_1013B1D50(buf);
}

void sub_1013AF9BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int16 *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, const void *a40, __int16 a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void **a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_100005978(&a46);
  a46 = &a65;
  sub_10005AAF8(&a46);
  if (a22 < 0)
  {
    operator delete(__p);
  }

  sub_100005978(&a40);
  if (v65)
  {
    sub_100004A34(v65);
  }

  __p = &a41;
  sub_1013B1D50(&__p);
  _Unwind_Resume(a1);
}

void sub_1013AFB50(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5[0] = a1;
  v5[1] = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = sub_1013BFC80;
  v6[3] = &unk_101F33F18;
  v6[4] = a1 + 8;
  v6[5] = v5;
  v7 = v6;
  v4 = a1 + 24;
  v3 = *(a1 + 24);
  if (*(v4 + 8))
  {
    *a3 = 0;
    a3[1] = 0;
    block = _NSConcreteStackBlock;
    v9 = 0x40000000;
    v10 = sub_1013BFE80;
    v11 = &unk_101F33F58;
    v12 = a3;
    v13 = &v7;
    dispatch_async_and_wait(v3, &block);
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    block = _NSConcreteStackBlock;
    v9 = 0x40000000;
    v10 = sub_1013BFE18;
    v11 = &unk_101F33F38;
    v12 = a3;
    v13 = &v7;
    dispatch_sync(v3, &block);
  }
}

void sub_1013AFC70(void *a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v5 = *(a2 + 16);
  }

  v3 = a1[2];
  if (v3)
  {
    if (std::__shared_weak_count::lock(v3))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1013AFDC4(void *a1, dispatch_object_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    if (std::__shared_weak_count::lock(v4))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1013AFE90(void *a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v5 = *(a2 + 16);
  }

  v3 = a1[2];
  if (v3)
  {
    if (std::__shared_weak_count::lock(v3))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

BOOL sub_1013AFFD8(os_unfair_lock_s *a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v6 = *(a2 + 16);
  }

  v3 = sub_101395904(a1, __p);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }

  return v3;
}

void sub_1013B0050(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1013B006C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v6 = *(a2 + 16);
  }

  v3 = sub_100007A6C(a1 + 560, __p);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }

  return a1 + 568 != v3;
}

void sub_1013B00EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1013B0108(void *a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v5 = *(a2 + 16);
  }

  v3 = a1[2];
  if (v3)
  {
    if (std::__shared_weak_count::lock(v3))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1013B0250(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 4)
  {
    if (!(a2 >> 60))
    {
      sub_100F7E530(a2);
    }

    sub_1000CE3D4();
  }
}

void sub_1013B02F4(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = (v4 - *a1) >> 4;
    v7 = v6 + 1;
    if ((v6 + 1) >> 60)
    {
      sub_1000CE3D4();
    }

    v8 = v3 - *a1;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_100F7E530(v9);
    }

    v10 = (16 * v6);
    *v10 = *a2;
    v5 = 16 * v6 + 16;
    v11 = *(a1 + 8) - *a1;
    v12 = v10 - v11;
    memcpy(v10 - v11, *a1, v11);
    v13 = *a1;
    *a1 = v12;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

void sub_1013B03C8(void *a1, const void *a2, uint64_t a3)
{
  v6 = a1;
  sub_1009F4B54(v7, a3);
  v7[4] = a2;
  if (a2)
  {
    CFRetain(a2);
  }

  v5 = a1[2];
  if (v5)
  {
    if (std::__shared_weak_count::lock(v5))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1013B0524(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_1013B053C(uint64_t *a1, uint64_t a2, int *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    operator new();
  }

  return a1;
}

void sub_1013B0648(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1013B0664(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    sub_1001704B0(a1 + 32, *(a1 + 40));
  }

  return sub_1013B06B0(a1);
}

uint64_t sub_1013B06B0(uint64_t a1)
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

uint64_t sub_1013B0730(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 == v3)
  {
    v4 = (a1 + 40);
    v10 = *(a1 + 8);
  }

  else
  {
    v4 = (a1 + 40);
    v5 = *(a1 + 32);
    v6 = &v3[v5 / 0x55];
    v7 = *v6 + 48 * (v5 % 0x55);
    v8 = v3[(*(a1 + 40) + v5) / 0x55] + 48 * ((*(a1 + 40) + v5) % 0x55);
    if (v7 != v8)
    {
      do
      {
        sub_1013B08A0(v7);
        v7 += 48;
        if (v7 - *v6 == 4080)
        {
          v9 = v6[1];
          ++v6;
          v7 = v9;
        }
      }

      while (v7 != v8);
      v3 = *(a1 + 8);
      v2 = *(a1 + 16);
    }

    v10 = v2;
  }

  *v4 = 0;
  v11 = v10 - v3;
  if (v11 >= 3)
  {
    do
    {
      operator delete(*v3);
      v2 = *(a1 + 16);
      v3 = (*(a1 + 8) + 8);
      *(a1 + 8) = v3;
      v11 = v2 - v3;
    }

    while (v11 > 2);
    v10 = v2;
  }

  if (v11 == 1)
  {
    v12 = 42;
  }

  else
  {
    if (v11 != 2)
    {
      goto LABEL_17;
    }

    v12 = 85;
  }

  *(a1 + 32) = v12;
LABEL_17:
  if (v3 != v10)
  {
    do
    {
      v13 = *v3++;
      operator delete(v13);
    }

    while (v3 != v10);
    v10 = *(a1 + 8);
    v2 = *(a1 + 16);
  }

  if (v2 != v10)
  {
    *(a1 + 16) = v2 + ((v10 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1013B08A0(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    sub_100004A34(v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

uint64_t sub_1013B08F4(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    sub_100004A34(v2);
  }

  return sub_1013B0934(a1);
}

uint64_t sub_1013B0934(uint64_t a1)
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

void *sub_1013B09B4(void *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v4;
  }

  *(__dst + 24) = *(a2 + 24);
  *(__dst + 2) = a2[2];
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  return __dst;
}

void sub_1013B0A18(unint64_t a1)
{
  if (a1 < 0x555555555555556)
  {
    operator new();
  }

  sub_100013D10();
}

void *sub_1013B0A70(void *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v4;
  }

  *(__dst + 24) = *(a2 + 24);
  v5 = *(a2 + 5);
  __dst[4] = *(a2 + 4);
  __dst[5] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return __dst;
}

uint64_t sub_1013B0AE0(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    sub_1013B08A0(i - 48);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1013B0B30(__int128 *a1, std::string *a2, uint64_t a3, char a4)
{
LABEL_1:
  v8 = a1;
  while (1)
  {
    a1 = v8;
    v9 = (a2 - v8) >> 5;
    v10 = v9 - 2;
    if (v9 <= 2)
    {
      if (v9 < 2)
      {
        return;
      }

      if (v9 == 2)
      {
        if (a2[-1].__r_.__value_.__r.__words[2] <= *(v8 + 24))
        {
          return;
        }

LABEL_127:
        v62 = v8;
LABEL_128:
        v63 = (a2 - 32);
LABEL_129:
        sub_1013B17C4(v62, v63);
        return;
      }

      goto LABEL_9;
    }

    if (v9 == 3)
    {
      break;
    }

    if (v9 == 4)
    {
      sub_1013B1874(v8, (v8 + 32), (v8 + 64), (a2 - 32));
      return;
    }

    if (v9 == 5)
    {
      sub_1013B1874(v8, (v8 + 32), (v8 + 64), (v8 + 96));
      if (a2[-1].__r_.__value_.__r.__words[2] <= *(v8 + 120))
      {
        return;
      }

      sub_1013B17C4((v8 + 96), (a2 - 32));
      if (*(v8 + 120) <= *(v8 + 88))
      {
        return;
      }

      sub_1013B17C4((v8 + 64), (v8 + 96));
      if (*(v8 + 88) <= *(v8 + 56))
      {
        return;
      }

      v58 = (v8 + 32);
      v59 = (v8 + 64);
      goto LABEL_196;
    }

LABEL_9:
    if (v9 <= 23)
    {
      if (a4)
      {
        if (v8 != a2)
        {
          v64 = v8 + 32;
          if ((v8 + 32) != a2)
          {
            v65 = 0;
            v66 = v8;
            do
            {
              v67 = v64;
              v68 = *(v66 + 56);
              if (v68 > *(v66 + 24))
              {
                memset(__str, 0, sizeof(__str));
                if (*(v66 + 55) < 0)
                {
                  sub_100005F2C(__str, *v67, *(v66 + 40));
                  v68 = *(v66 + 56);
                }

                else
                {
                  v69 = *v67;
                  *&__str[16] = *(v67 + 16);
                  *__str = v69;
                }

                *&__str[24] = v68;
                v70 = v65;
                while (1)
                {
                  std::string::operator=((v8 + v70 + 32), (v8 + v70));
                  *(v8 + v70 + 56) = *(v8 + v70 + 24);
                  if (!v70)
                  {
                    break;
                  }

                  v71 = *(v8 + v70 - 8);
                  v70 -= 32;
                  if (*&__str[24] <= v71)
                  {
                    v72 = (v8 + v70 + 32);
                    goto LABEL_144;
                  }
                }

                v72 = v8;
LABEL_144:
                std::string::operator=(v72, __str);
                v72[1].__r_.__value_.__r.__words[0] = *&__str[24];
                if ((__str[23] & 0x80000000) != 0)
                {
                  operator delete(*__str);
                }
              }

              v64 = v67 + 32;
              v65 += 32;
              v66 = v67;
            }

            while ((v67 + 32) != a2);
          }
        }
      }

      else if (v8 != a2)
      {
        v104 = (v8 + 32);
        while (v104 != a2)
        {
          v105 = v104;
          v106 = *(a1 + 7);
          if (v106 > *(a1 + 3))
          {
            memset(__str, 0, sizeof(__str));
            if (*(a1 + 55) < 0)
            {
              sub_100005F2C(__str, *v105, *(a1 + 5));
              v106 = *(a1 + 7);
            }

            else
            {
              v107 = *v105;
              *&__str[16] = *(v105 + 16);
              *__str = v107;
            }

            *&__str[24] = v106;
            do
            {
              std::string::operator=((a1 + 2), a1);
              *(a1 + 7) = *(a1 + 3);
              v108 = a1 - 2;
              v109 = *(a1 - 1);
              a1 -= 2;
            }

            while (*&__str[24] > v109);
            std::string::operator=((v108 + 2), __str);
            *(v108 + 7) = *&__str[24];
            if ((__str[23] & 0x80000000) != 0)
            {
              operator delete(*__str);
            }
          }

          v104 = (v105 + 32);
          a1 = v105;
        }
      }

      return;
    }

    if (!a3)
    {
      if (v8 != a2)
      {
        v73 = v10 >> 1;
        v74 = v10 >> 1;
        do
        {
          v75 = v74;
          if (v73 >= v74)
          {
            v76 = (2 * v74) | 1;
            v77 = &a1[2 * v76];
            if (2 * v74 + 2 < v9)
            {
              data = v77[1].__r_.__value_.__l.__data_;
              size = v77[2].__r_.__value_.__l.__size_;
              v77 = (v77 + 32 * (data > size));
              if (data > size)
              {
                v76 = 2 * v74 + 2;
              }
            }

            v80 = &a1[2 * v74];
            v81 = v80[1].__r_.__value_.__l.__data_;
            if (v77[1].__r_.__value_.__r.__words[0] <= v81)
            {
              memset(__str, 0, sizeof(__str));
              if (SHIBYTE(v80->__r_.__value_.__r.__words[2]) < 0)
              {
                sub_100005F2C(__str, v80->__r_.__value_.__l.__data_, v80->__r_.__value_.__l.__size_);
                v81 = v80[1].__r_.__value_.__l.__data_;
              }

              else
              {
                v82 = *&v80->__r_.__value_.__l.__data_;
                *&__str[16] = *(&v80->__r_.__value_.__l + 2);
                *__str = v82;
              }

              *&__str[24] = v81;
              do
              {
                v83 = v77;
                std::string::operator=(v80, v77);
                v80[1].__r_.__value_.__r.__words[0] = v77[1].__r_.__value_.__r.__words[0];
                if (v73 < v76)
                {
                  break;
                }

                v84 = (2 * v76) | 1;
                v77 = &a1[2 * v84];
                if (2 * v76 + 2 < v9)
                {
                  v85 = v77[1].__r_.__value_.__l.__data_;
                  v86 = v77[2].__r_.__value_.__l.__size_;
                  v77 = (v77 + 32 * (v85 > v86));
                  if (v85 > v86)
                  {
                    v84 = 2 * v76 + 2;
                  }
                }

                v80 = v83;
                v76 = v84;
              }

              while (v77[1].__r_.__value_.__r.__words[0] <= *&__str[24]);
              std::string::operator=(v83, __str);
              v83[1].__r_.__value_.__r.__words[0] = *&__str[24];
              if ((__str[23] & 0x80000000) != 0)
              {
                operator delete(*__str);
              }
            }
          }

          v74 = v75 - 1;
        }

        while (v75);
        do
        {
          memset(__dst, 0, sizeof(__dst));
          if (*(a1 + 23) < 0)
          {
            sub_100005F2C(__dst, *a1, *(a1 + 1));
          }

          else
          {
            v87 = *a1;
            *&__dst[16] = *(a1 + 2);
            *__dst = v87;
          }

          v88 = 0;
          *&__dst[24] = *(a1 + 3);
          v89 = a1;
          do
          {
            v90 = v89 + 32 * v88;
            v91 = (v90 + 32);
            if (2 * v88 + 2 >= v9)
            {
              v88 = (2 * v88) | 1;
            }

            else
            {
              v92 = *(v90 + 7);
              v93 = *(v90 + 11);
              v94 = (v90 + 64);
              if (v92 <= v93)
              {
                v88 = (2 * v88) | 1;
              }

              else
              {
                v91 = v94;
                v88 = 2 * v88 + 2;
              }
            }

            std::string::operator=(v89, v91);
            v89[1].__r_.__value_.__r.__words[0] = v91[1].__r_.__value_.__r.__words[0];
            v89 = v91;
          }

          while (v88 <= ((v9 - 2) >> 1));
          v95 = (a2 - 32);
          if (v91 == &a2[-2].__r_.__value_.__r.__words[2])
          {
            std::string::operator=(v91, __dst);
            v91[1].__r_.__value_.__r.__words[0] = *&__dst[24];
          }

          else
          {
            std::string::operator=(v91, (a2 - 32));
            v91[1].__r_.__value_.__r.__words[0] = a2[-1].__r_.__value_.__r.__words[2];
            std::string::operator=((a2 - 32), __dst);
            a2[-1].__r_.__value_.__r.__words[2] = *&__dst[24];
            v96 = (v91 - a1 + 32) >> 5;
            v97 = v96 < 2;
            v98 = v96 - 2;
            if (!v97)
            {
              v99 = v98 >> 1;
              v100 = &a1[2 * (v98 >> 1)];
              v101 = v91[1].__r_.__value_.__l.__data_;
              if (v100[1].__r_.__value_.__r.__words[0] > v101)
              {
                memset(__str, 0, sizeof(__str));
                if (SHIBYTE(v91->__r_.__value_.__r.__words[2]) < 0)
                {
                  sub_100005F2C(__str, v91->__r_.__value_.__l.__data_, v91->__r_.__value_.__l.__size_);
                  v101 = v91[1].__r_.__value_.__l.__data_;
                }

                else
                {
                  v102 = *&v91->__r_.__value_.__l.__data_;
                  *&__str[16] = *(&v91->__r_.__value_.__l + 2);
                  *__str = v102;
                }

                *&__str[24] = v101;
                do
                {
                  v103 = v100;
                  std::string::operator=(v91, v100);
                  v91[1].__r_.__value_.__r.__words[0] = v100[1].__r_.__value_.__r.__words[0];
                  if (!v99)
                  {
                    break;
                  }

                  v99 = (v99 - 1) >> 1;
                  v100 = &a1[2 * v99];
                  v91 = v103;
                }

                while (v100[1].__r_.__value_.__r.__words[0] > *&__str[24]);
                std::string::operator=(v103, __str);
                v103[1].__r_.__value_.__r.__words[0] = *&__str[24];
                if ((__str[23] & 0x80000000) != 0)
                {
                  operator delete(*__str);
                }
              }
            }
          }

          if ((__dst[23] & 0x80000000) != 0)
          {
            operator delete(*__dst);
          }

          a2 = v95;
          v97 = v9-- <= 2;
        }

        while (!v97);
      }

      return;
    }

    v11 = v8 + 32 * (v9 >> 1);
    v12 = a2[-1].__r_.__value_.__r.__words[2];
    if (v9 >= 0x81)
    {
      v13 = *(v11 + 24);
      if (v13 <= *(a1 + 3))
      {
        if (v12 > v13)
        {
          sub_1013B17C4(&a1[2 * (v9 >> 1)], (a2 - 32));
          if (*(v11 + 24) > *(a1 + 3))
          {
            v14 = a1;
            v15 = &a1[2 * (v9 >> 1)];
            goto LABEL_25;
          }
        }
      }

      else
      {
        v14 = a1;
        if (v12 > v13)
        {
          goto LABEL_16;
        }

        sub_1013B17C4(a1, &a1[2 * (v9 >> 1)]);
        if (a2[-1].__r_.__value_.__r.__words[2] > *(v11 + 24))
        {
          v14 = &a1[2 * (v9 >> 1)];
LABEL_16:
          v15 = (a2 - 32);
LABEL_25:
          sub_1013B17C4(v14, v15);
        }
      }

      v19 = *(v11 - 8);
      v20 = a2[-2].__r_.__value_.__l.__size_;
      if (v19 <= *(a1 + 7))
      {
        if (v20 > v19)
        {
          sub_1013B17C4((v11 - 32), (a2 - 64));
          if (*(v11 - 8) > *(a1 + 7))
          {
            v21 = (a1 + 2);
            v22 = (v11 - 32);
            goto LABEL_38;
          }
        }
      }

      else
      {
        v21 = (a1 + 2);
        if (v20 > v19)
        {
          goto LABEL_30;
        }

        sub_1013B17C4(v21, (v11 - 32));
        if (a2[-2].__r_.__value_.__l.__size_ > *(v11 - 8))
        {
          v21 = (v11 - 32);
LABEL_30:
          v22 = (a2 - 64);
LABEL_38:
          sub_1013B17C4(v21, v22);
        }
      }

      v23 = *(v11 + 56);
      v24 = a2[-3].__r_.__value_.__l.__data_;
      if (v23 <= *(a1 + 11))
      {
        if (v24 > v23)
        {
          sub_1013B17C4((v11 + 32), a2 - 4);
          if (*(v11 + 56) > *(a1 + 11))
          {
            v25 = (a1 + 4);
            v26 = (v11 + 32);
            goto LABEL_47;
          }
        }
      }

      else
      {
        v25 = (a1 + 4);
        if (v24 > v23)
        {
          goto LABEL_43;
        }

        sub_1013B17C4(v25, (v11 + 32));
        if (a2[-3].__r_.__value_.__r.__words[0] > *(v11 + 56))
        {
          v25 = (v11 + 32);
LABEL_43:
          v26 = a2 - 4;
LABEL_47:
          sub_1013B17C4(v25, v26);
        }
      }

      v27 = *(v11 + 24);
      v28 = *(v11 + 56);
      if (v27 <= *(v11 - 8))
      {
        if (v28 > v27)
        {
          sub_1013B17C4(v11, (v11 + 32));
          if (*(v11 + 24) > *(v11 - 8))
          {
            v30 = (v11 - 32);
            v29 = v11;
            goto LABEL_56;
          }
        }
      }

      else
      {
        if (v28 > v27)
        {
          v29 = (v11 + 32);
          v30 = (v11 - 32);
          goto LABEL_56;
        }

        sub_1013B17C4((v11 - 32), v11);
        if (*(v11 + 56) > *(v11 + 24))
        {
          v29 = (v11 + 32);
          v30 = v11;
LABEL_56:
          sub_1013B17C4(v30, v29);
        }
      }

      memset(__str, 0, 24);
      if (*(a1 + 23) < 0)
      {
        sub_100005F2C(__str, *a1, *(a1 + 1));
      }

      else
      {
        v31 = *a1;
        *&__str[16] = *(a1 + 2);
        *__str = v31;
      }

      std::string::operator=(a1, v11);
      std::string::operator=(v11, __str);
      if ((__str[23] & 0x80000000) != 0)
      {
        operator delete(*__str);
      }

      v32 = *(a1 + 3);
      *(a1 + 3) = *(v11 + 24);
      *(v11 + 24) = v32;
      goto LABEL_63;
    }

    v16 = *(a1 + 3);
    if (v16 <= *(v11 + 24))
    {
      if (v12 <= v16)
      {
        goto LABEL_63;
      }

      sub_1013B17C4(a1, (a2 - 32));
      if (*(a1 + 3) <= *(v11 + 24))
      {
        goto LABEL_63;
      }

      v17 = &a1[2 * (v9 >> 1)];
      v18 = a1;
    }

    else
    {
      v17 = &a1[2 * (v9 >> 1)];
      if (v12 <= v16)
      {
        sub_1013B17C4(v17, a1);
        if (a2[-1].__r_.__value_.__r.__words[2] <= *(a1 + 3))
        {
          goto LABEL_63;
        }

        v17 = a1;
      }

      v18 = (a2 - 32);
    }

    sub_1013B17C4(v17, v18);
LABEL_63:
    --a3;
    if ((a4 & 1) != 0 || *(a1 - 1) > *(a1 + 3))
    {
      memset(__str, 0, sizeof(__str));
      if (*(a1 + 23) < 0)
      {
        sub_100005F2C(__str, *a1, *(a1 + 1));
      }

      else
      {
        v33 = *a1;
        *&__str[16] = *(a1 + 2);
        *__str = v33;
      }

      v34 = 0;
      v35 = *(a1 + 3);
      *&__str[24] = v35;
      do
      {
        v36 = *(&a1[v34 + 3] + 1);
        v34 += 2;
      }

      while (v36 > v35);
      v37 = &a1[v34];
      v38 = a2;
      if (v34 == 2)
      {
        v41 = a2;
        while (v37 < v41)
        {
          v39 = (v41 - 32);
          v42 = v41[-1].__r_.__value_.__r.__words[2];
          v41 = (v41 - 32);
          if (v42 > v35)
          {
            goto LABEL_78;
          }
        }

        v39 = v41;
      }

      else
      {
        do
        {
          v39 = (v38 - 32);
          v40 = v38[-1].__r_.__value_.__r.__words[2];
          v38 = (v38 - 32);
        }

        while (v40 <= v35);
      }

LABEL_78:
      if (v37 >= v39)
      {
        v8 = v37;
      }

      else
      {
        v43 = v39;
        v8 = v37;
        do
        {
          sub_1013B17C4(v8, v43);
          do
          {
            v44 = *(v8 + 56);
            v8 += 32;
          }

          while (v44 > *&__str[24]);
          do
          {
            v45 = v43[-1].__r_.__value_.__r.__words[2];
            v43 = (v43 - 32);
          }

          while (v45 <= *&__str[24]);
        }

        while (v8 < v43);
      }

      if ((v8 - 32) != a1)
      {
        std::string::operator=(a1, (v8 - 32));
        *(a1 + 3) = *(v8 - 8);
      }

      std::string::operator=((v8 - 32), __str);
      *(v8 - 8) = *&__str[24];
      if ((__str[23] & 0x80000000) != 0)
      {
        operator delete(*__str);
      }

      if (v37 < v39)
      {
        goto LABEL_93;
      }

      v46 = sub_1013B198C(a1, (v8 - 32));
      if (sub_1013B198C(v8, a2))
      {
        a2 = (v8 - 32);
        if (!v46)
        {
          goto LABEL_1;
        }

        return;
      }

      if (!v46)
      {
LABEL_93:
        sub_1013B0B30(a1, (v8 - 32), a3, a4 & 1);
        goto LABEL_94;
      }
    }

    else
    {
      memset(__str, 0, sizeof(__str));
      if (*(a1 + 23) < 0)
      {
        sub_100005F2C(__str, *a1, *(a1 + 1));
      }

      else
      {
        v47 = *a1;
        *&__str[16] = *(a1 + 2);
        *__str = v47;
      }

      v48 = *(a1 + 3);
      *&__str[24] = v48;
      if (v48 <= a2[-1].__r_.__value_.__r.__words[2])
      {
        v51 = (a1 + 2);
        do
        {
          v8 = v51;
          if (v51 >= a2)
          {
            break;
          }

          v52 = *(v51 + 24);
          v51 += 32;
        }

        while (v48 <= v52);
      }

      else
      {
        v49 = a1;
        do
        {
          v8 = v49 + 32;
          v50 = *(v49 + 56);
          v49 += 32;
        }

        while (v48 <= v50);
      }

      v53 = a2;
      if (v8 < a2)
      {
        v54 = a2;
        do
        {
          v53 = (v54 - 32);
          v55 = v54[-1].__r_.__value_.__r.__words[2];
          v54 = (v54 - 32);
        }

        while (v48 > v55);
      }

      while (v8 < v53)
      {
        sub_1013B17C4(v8, v53);
        do
        {
          v56 = *(v8 + 56);
          v8 += 32;
        }

        while (*&__str[24] <= v56);
        do
        {
          v57 = v53[-1].__r_.__value_.__r.__words[2];
          v53 = (v53 - 32);
        }

        while (*&__str[24] > v57);
      }

      if ((v8 - 32) != a1)
      {
        std::string::operator=(a1, (v8 - 32));
        *(a1 + 3) = *(v8 - 8);
      }

      std::string::operator=((v8 - 32), __str);
      *(v8 - 8) = *&__str[24];
      if ((__str[23] & 0x80000000) != 0)
      {
        operator delete(*__str);
      }

LABEL_94:
      a4 = 0;
    }
  }

  v60 = *(v8 + 56);
  v61 = a2[-1].__r_.__value_.__r.__words[2];
  if (v60 > *(v8 + 24))
  {
    if (v61 > v60)
    {
      goto LABEL_127;
    }

    sub_1013B17C4(v8, (v8 + 32));
    if (a2[-1].__r_.__value_.__r.__words[2] > *(v8 + 56))
    {
      v62 = (v8 + 32);
      goto LABEL_128;
    }

    return;
  }

  if (v61 <= v60)
  {
    return;
  }

  v58 = (v8 + 32);
  v59 = (a2 - 32);
LABEL_196:
  sub_1013B17C4(v58, v59);
  if (*(v8 + 56) > *(v8 + 24))
  {
    v63 = (v8 + 32);
    v62 = v8;
    goto LABEL_129;
  }
}

void sub_1013B174C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1013B17C4(std::string *this, std::string *__str)
{
  memset(&__p, 0, sizeof(__p));
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100005F2C(&__p, this->__r_.__value_.__l.__data_, this->__r_.__value_.__l.__size_);
  }

  else
  {
    __p = *this;
  }

  std::string::operator=(this, __str);
  std::string::operator=(__str, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  data = this[1].__r_.__value_.__l.__data_;
  this[1].__r_.__value_.__r.__words[0] = __str[1].__r_.__value_.__r.__words[0];
  __str[1].__r_.__value_.__r.__words[0] = data;
}

void sub_1013B1858(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1013B1874(std::string *this, std::string *a2, std::string *__str, std::string *a4)
{
  v7 = this;
  data = a2[1].__r_.__value_.__l.__data_;
  v9 = __str[1].__r_.__value_.__l.__data_;
  if (data <= this[1].__r_.__value_.__r.__words[0])
  {
    if (v9 > data)
    {
      sub_1013B17C4(a2, __str);
      if (a2[1].__r_.__value_.__r.__words[0] > v7[1].__r_.__value_.__r.__words[0])
      {
        this = v7;
        v10 = a2;
        goto LABEL_9;
      }
    }
  }

  else
  {
    if (v9 > data)
    {
LABEL_5:
      v10 = __str;
LABEL_9:
      sub_1013B17C4(this, v10);
      goto LABEL_10;
    }

    sub_1013B17C4(this, a2);
    if (__str[1].__r_.__value_.__r.__words[0] > a2[1].__r_.__value_.__r.__words[0])
    {
      this = a2;
      goto LABEL_5;
    }
  }

LABEL_10:
  if (a4[1].__r_.__value_.__r.__words[0] > __str[1].__r_.__value_.__r.__words[0])
  {
    sub_1013B17C4(__str, a4);
    if (__str[1].__r_.__value_.__r.__words[0] > a2[1].__r_.__value_.__r.__words[0])
    {
      sub_1013B17C4(a2, __str);
      if (a2[1].__r_.__value_.__r.__words[0] > v7[1].__r_.__value_.__r.__words[0])
      {

        sub_1013B17C4(v7, a2);
      }
    }
  }
}

BOOL sub_1013B198C(std::string *this, std::string *a2)
{
  v3 = this;
  v4 = (a2 - this) >> 5;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        size = this[2].__r_.__value_.__l.__size_;
        v9 = a2[-1].__r_.__value_.__r.__words[2];
        if (size > this[1].__r_.__value_.__r.__words[0])
        {
          if (v9 <= size)
          {
            sub_1013B17C4(this, (this + 32));
            if (a2[-1].__r_.__value_.__r.__words[2] <= v3[2].__r_.__value_.__l.__size_)
            {
              return 1;
            }

            this = (v3 + 32);
          }

          v5 = (a2 - 32);
          goto LABEL_31;
        }

        if (v9 <= size)
        {
          return 1;
        }

        v6 = (this + 32);
        v7 = (a2 - 32);
        break;
      case 4:
        sub_1013B1874(this, (this + 32), (this + 64), (a2 - 32));
        return 1;
      case 5:
        sub_1013B1874(this, (this + 32), (this + 64), this + 4);
        if (a2[-1].__r_.__value_.__r.__words[2] <= v3[5].__r_.__value_.__r.__words[0])
        {
          return 1;
        }

        sub_1013B17C4(v3 + 4, (a2 - 32));
        if (v3[5].__r_.__value_.__r.__words[0] <= v3[3].__r_.__value_.__r.__words[2])
        {
          return 1;
        }

        sub_1013B17C4((v3 + 64), v3 + 4);
        if (v3[3].__r_.__value_.__r.__words[2] <= v3[2].__r_.__value_.__l.__size_)
        {
          return 1;
        }

        v6 = (v3 + 32);
        v7 = (v3 + 64);
        break;
      default:
        goto LABEL_16;
    }

    sub_1013B17C4(v6, v7);
    if (v3[2].__r_.__value_.__l.__size_ > v3[1].__r_.__value_.__r.__words[0])
    {
      v5 = (v3 + 32);
      goto LABEL_24;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    if (a2[-1].__r_.__value_.__r.__words[2] > this[1].__r_.__value_.__r.__words[0])
    {
      v5 = (a2 - 32);
LABEL_24:
      this = v3;
LABEL_31:
      sub_1013B17C4(this, v5);
      return 1;
    }

    return 1;
  }

LABEL_16:
  v10 = &this[2].__r_.__value_.__s.__data_[16];
  v11 = this[2].__r_.__value_.__l.__size_;
  v12 = this[3].__r_.__value_.__r.__words[2];
  if (v11 > this[1].__r_.__value_.__r.__words[0])
  {
    if (v12 <= v11)
    {
      sub_1013B17C4(this, (this + 32));
      if (v3[3].__r_.__value_.__r.__words[2] <= v3[2].__r_.__value_.__l.__size_)
      {
        goto LABEL_36;
      }

      this = (v3 + 32);
    }

    v13 = (v3 + 64);
    goto LABEL_35;
  }

  if (v12 > v11)
  {
    sub_1013B17C4((this + 32), (this + 64));
    if (v3[2].__r_.__value_.__l.__size_ > v3[1].__r_.__value_.__r.__words[0])
    {
      v13 = (v3 + 32);
      this = v3;
LABEL_35:
      sub_1013B17C4(this, v13);
    }
  }

LABEL_36:
  v14 = v3 + 4;
  if (&v3[4] == a2)
  {
    return 1;
  }

  v15 = 0;
  v16 = 0;
  while (1)
  {
    data = v14[1].__r_.__value_.__l.__data_;
    if (data > *(v10 + 3))
    {
      *__p = 0u;
      v23 = 0u;
      if (SHIBYTE(v14->__r_.__value_.__r.__words[2]) < 0)
      {
        sub_100005F2C(__p, v14->__r_.__value_.__l.__data_, v14->__r_.__value_.__l.__size_);
        data = v14[1].__r_.__value_.__l.__data_;
      }

      else
      {
        *__p = *&v14->__r_.__value_.__l.__data_;
        *&v23 = *(&v14->__r_.__value_.__l + 2);
      }

      *(&v23 + 1) = data;
      v18 = v15;
      while (1)
      {
        std::string::operator=((v3 + v18 + 96), (v3 + v18 + 64));
        *(v3[5].__r_.__value_.__r.__words + v18) = *(&v3[3].__r_.__value_.__r.__words[2] + v18);
        if (v18 == -64)
        {
          break;
        }

        v19 = *(&v3[2].__r_.__value_.__l.__size_ + v18);
        v18 -= 32;
        if (*(&v23 + 1) <= v19)
        {
          v20 = (v3 + v18 + 96);
          goto LABEL_47;
        }
      }

      v20 = v3;
LABEL_47:
      std::string::operator=(v20, __p);
      v20[1].__r_.__value_.__r.__words[0] = *(&v23 + 1);
      if (SBYTE7(v23) < 0)
      {
        operator delete(__p[0]);
      }

      if (++v16 == 8)
      {
        return &v14[1].__r_.__value_.__r.__words[1] == a2;
      }
    }

    v10 = v14;
    v15 += 32;
    v14 = (v14 + 32);
    if (v14 == a2)
    {
      return 1;
    }
  }
}

void sub_1013B1CA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1013B1CC4(void ****a1)
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
        v6 = *(v4 - 9);
        v4 -= 4;
        if (v6 < 0)
        {
          operator delete(*v4);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_1013B1D50(void ***a1)
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
        v4 -= 48;
        sub_1013B08A0(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

char *sub_1013B1DD4(char *__dst, __int128 *a2, __int128 *a3, __int128 *a4, char a5, __int128 *a6, __int128 *a7, __int128 *a8)
{
  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(__dst, *a3, *(a3 + 1));
  }

  else
  {
    v15 = *a3;
    *(__dst + 2) = *(a3 + 2);
    *__dst = v15;
  }

  if (*(a4 + 23) < 0)
  {
    sub_100005F2C(__dst + 24, *a4, *(a4 + 1));
  }

  else
  {
    v16 = *a4;
    *(__dst + 5) = *(a4 + 2);
    *(__dst + 24) = v16;
  }

  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst + 48, *a2, *(a2 + 1));
  }

  else
  {
    v17 = *a2;
    *(__dst + 8) = *(a2 + 2);
    *(__dst + 3) = v17;
  }

  __dst[72] = a5;
  if (*(a6 + 23) < 0)
  {
    sub_100005F2C(__dst + 80, *a6, *(a6 + 1));
  }

  else
  {
    v18 = *a6;
    *(__dst + 12) = *(a6 + 2);
    *(__dst + 5) = v18;
  }

  if (*(a7 + 23) < 0)
  {
    sub_100005F2C(__dst + 104, *a7, *(a7 + 1));
  }

  else
  {
    v19 = *a7;
    *(__dst + 15) = *(a7 + 2);
    *(__dst + 104) = v19;
  }

  if (*(a8 + 23) < 0)
  {
    sub_100005F2C(__dst + 128, *a8, *(a8 + 1));
  }

  else
  {
    v20 = *a8;
    *(__dst + 18) = *(a8 + 2);
    *(__dst + 8) = v20;
  }

  return __dst;
}

void sub_1013B1F1C(_Unwind_Exception *a1)
{
  if (*(v1 + 127) < 0)
  {
    operator delete(*(v1 + 104));
  }

  if (*(v1 + 103) < 0)
  {
    operator delete(*(v1 + 80));
  }

  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  sub_1000D6F38(v1);
  _Unwind_Resume(a1);
}

void sub_1013B1F78()
{
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }

  JUMPOUT(0x1013B1F70);
}

uint64_t sub_1013B1F90(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    v6 = 0;
    v7 = result;
    do
    {
      sub_1013B2030(a3, v7);
      v7 += 184;
      a3 += 184;
      v6 -= 184;
    }

    while (v7 != a2);
    do
    {
      result = sub_1013A800C(v5);
      v5 += 184;
    }

    while (v5 != a2);
  }

  return result;
}

void sub_1013B200C(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 184;
    do
    {
      v4 = sub_1013A800C(v4) - 184;
      v2 += 184;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1013B2030(uint64_t a1, uint64_t a2)
{
  result = sub_100DFECD0(a1, a2);
  if (*(a2 + 175) < 0)
  {
    result = sub_100005F2C((a1 + 152), *(a2 + 152), *(a2 + 160));
  }

  else
  {
    v5 = *(a2 + 152);
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 152) = v5;
  }

  *(a1 + 176) = *(a2 + 176);
  return result;
}

uint64_t sub_1013B209C(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 184;
    sub_1013A800C(i - 184);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1013B20EC(uint64_t a1, __int128 *a2, uint64_t a3)
{
  sub_100DFECD0(a1, a3);
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C((a1 + 152), *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(a1 + 168) = *(a2 + 2);
    *(a1 + 152) = v5;
  }

  *(a1 + 176) = 0;
  return a1;
}

uint64_t sub_1013B215C(uint64_t a1)
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

void *sub_1013B21DC(void *a1, char *a2, char *a3)
{
  v5 = sub_10000501C(a1, a2);
  sub_10000501C(v5 + 3, a3);
  return a1;
}

void sub_1013B2214(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1013B2230(char *a1, char *a2, uint64_t a3, char a4)
{
  while (2)
  {
    v8 = a2 - 8;
    v9 = a2 - 24;
    v10 = a2 - 40;
    v11 = a1;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          a1 = v11;
          v12 = &a2[-v11] >> 4;
          if (v12 > 2)
          {
            switch(v12)
            {
              case 3:
                v102 = (v11 + 24);
                v103 = *(v11 + 24);
                v104 = (v11 + 8);
                v105 = *(v11 + 8);
                v106 = *(a2 - 1);
                if (v103 >= v105)
                {
                  if (v106 >= v103)
                  {
                    return;
                  }

                  v153 = *(v11 + 16);
                  *(v11 + 16) = *(a2 - 2);
                  *(a2 - 2) = v153;
                  v154 = *(v11 + 24);
                  *(v11 + 24) = *(a2 - 1);
                  *(a2 - 1) = v154;
                  if (*(v11 + 24) >= *(v11 + 8))
                  {
                    return;
                  }

                  v155 = *v11;
                  *v11 = *(v11 + 16);
                  *(v11 + 16) = v155;
                }

                else
                {
                  v107 = *v11;
                  if (v106 >= v103)
                  {
                    *v11 = *(v11 + 16);
                    *(v11 + 8) = v103;
                    *(v11 + 16) = v107;
                    *(v11 + 24) = v105;
                    if (*(a2 - 1) >= v105)
                    {
                      return;
                    }

                    *(v11 + 16) = *(a2 - 2);
                    *(a2 - 2) = v107;
                    v104 = (v11 + 24);
                  }

                  else
                  {
                    *v11 = *(a2 - 2);
                    *(a2 - 2) = v107;
                  }

                  v102 = a2 - 8;
                }

                v164 = *v104;
                *v104 = *v102;
                *v102 = v164;
                return;
              case 4:

                sub_1013B2D70(v11, (v11 + 16), (v11 + 32), a2 - 2);
                return;
              case 5:
                sub_1013B2D70(v11, (v11 + 16), (v11 + 32), (v11 + 48));
                if (*(a2 - 1) < *(v11 + 56))
                {
                  v90 = *(v11 + 48);
                  *(v11 + 48) = *(a2 - 2);
                  *(a2 - 2) = v90;
                  v91 = *(v11 + 56);
                  *(v11 + 56) = *(a2 - 1);
                  *(a2 - 1) = v91;
                  v92 = *(v11 + 56);
                  v93 = *(v11 + 40);
                  if (v92 < v93)
                  {
                    v94 = *(v11 + 48);
                    v95 = *(v11 + 24);
                    v96 = *(v11 + 32);
                    *(v11 + 32) = v94;
                    *(v11 + 40) = v92;
                    *(v11 + 48) = v96;
                    *(v11 + 56) = v93;
                    if (v92 < v95)
                    {
                      v97 = *(v11 + 8);
                      v98 = *(v11 + 16);
                      *(v11 + 16) = v94;
                      *(v11 + 24) = v92;
                      *(v11 + 32) = v98;
                      *(v11 + 40) = v95;
                      if (v92 < v97)
                      {
                        v99 = *v11;
                        *v11 = v94;
                        *(v11 + 8) = v92;
                        *(v11 + 16) = v99;
                        *(v11 + 24) = v97;
                      }
                    }
                  }
                }

                return;
            }
          }

          else
          {
            if (v12 < 2)
            {
              return;
            }

            if (v12 == 2)
            {
              if (*(a2 - 1) < *(v11 + 8))
              {
                v100 = *v11;
                *v11 = *(a2 - 2);
                *(a2 - 2) = v100;
                v101 = *(v11 + 8);
                *(v11 + 8) = *(a2 - 1);
                *(a2 - 1) = v101;
              }

              return;
            }
          }

          if (v12 <= 23)
          {
            v108 = (v11 + 16);
            v110 = v11 == a2 || v108 == a2;
            if (a4)
            {
              if (!v110)
              {
                v111 = 0;
                v112 = v11;
                do
                {
                  v113 = *(v112 + 24);
                  v114 = *(v112 + 8);
                  v112 = v108;
                  if (v113 < v114)
                  {
                    v115 = *v108;
                    v116 = v111;
                    while (1)
                    {
                      v117 = v11 + v116;
                      v118 = *(v11 + v116 + 8);
                      *(v117 + 16) = *(v11 + v116);
                      *(v117 + 24) = v118;
                      if (!v116)
                      {
                        break;
                      }

                      v116 -= 16;
                      if (v113 >= *(v117 - 8))
                      {
                        v119 = (v11 + v116 + 16);
                        goto LABEL_138;
                      }
                    }

                    v119 = v11;
LABEL_138:
                    *v119 = v115;
                    v119[1] = v113;
                  }

                  v108 = (v112 + 16);
                  v111 += 16;
                }

                while ((v112 + 16) != a2);
              }
            }

            else if (!v110)
            {
              v156 = (v11 + 24);
              do
              {
                v157 = *(a1 + 3);
                v158 = *(a1 + 1);
                a1 = v108;
                if (v157 < v158)
                {
                  v159 = *v108;
                  v160 = v156;
                  do
                  {
                    v161 = v160;
                    v162 = *(v160 - 2);
                    v160 -= 2;
                    v163 = *(v161 - 4);
                    *(v161 - 1) = *(v161 - 3);
                    *v161 = v162;
                  }

                  while (v157 < v163);
                  *(v160 - 1) = v159;
                  *v160 = v157;
                }

                v108 = a1 + 16;
                v156 += 2;
              }

              while (a1 + 16 != a2);
            }

            return;
          }

          if (!a3)
          {
            if (v11 != a2)
            {
              v120 = (v12 - 2) >> 1;
              v121 = v120;
              do
              {
                v122 = v121;
                if (v120 >= v121)
                {
                  v123 = (2 * v121) | 1;
                  v124 = (v11 + 16 * v123);
                  if (2 * v122 + 2 < v12)
                  {
                    v125 = v124[1];
                    v126 = v124[3];
                    v124 += 2 * (v125 < v126);
                    if (v125 < v126)
                    {
                      v123 = 2 * v122 + 2;
                    }
                  }

                  v127 = (v11 + 16 * v122);
                  v128 = v127[1];
                  if (v124[1] >= v128)
                  {
                    v129 = *v127;
                    do
                    {
                      v130 = v124;
                      *v127 = *v124;
                      v127[1] = v124[1];
                      if (v120 < v123)
                      {
                        break;
                      }

                      v131 = (2 * v123) | 1;
                      v124 = (v11 + 16 * v131);
                      v132 = 2 * v123 + 2;
                      if (v132 < v12)
                      {
                        v133 = v124[1];
                        v134 = v124[3];
                        v124 += 2 * (v133 < v134);
                        if (v133 < v134)
                        {
                          v131 = v132;
                        }
                      }

                      v127 = v130;
                      v123 = v131;
                    }

                    while (v124[1] >= v128);
                    *v130 = v129;
                    v130[1] = v128;
                  }
                }

                v121 = v122 - 1;
              }

              while (v122);
              do
              {
                v135 = 0;
                v136 = *v11;
                v137 = *(v11 + 8);
                v138 = v11;
                do
                {
                  v139 = &v138[2 * v135];
                  v140 = (v139 + 2);
                  v141 = (2 * v135) | 1;
                  v135 = 2 * v135 + 2;
                  if (v135 >= v12)
                  {
                    v135 = v141;
                  }

                  else
                  {
                    v142 = v139[3];
                    v143 = v139[5];
                    v144 = (v139 + 4);
                    if (v142 >= v143)
                    {
                      v135 = v141;
                    }

                    else
                    {
                      v140 = v144;
                    }
                  }

                  *v138 = *v140;
                  v138[1] = *(v140 + 1);
                  v138 = v140;
                }

                while (v135 <= ((v12 - 2) >> 1));
                if (v140 == a2 - 16)
                {
                  *v140 = v136;
                  *(v140 + 1) = v137;
                }

                else
                {
                  *v140 = *(a2 - 2);
                  *(v140 + 1) = *(a2 - 1);
                  *(a2 - 2) = v136;
                  *(a2 - 1) = v137;
                  v145 = &v140[-v11 + 16] >> 4;
                  v146 = v145 < 2;
                  v147 = v145 - 2;
                  if (!v146)
                  {
                    v148 = v147 >> 1;
                    v149 = (v11 + 16 * (v147 >> 1));
                    v150 = *(v140 + 1);
                    if (*(v149 + 1) < v150)
                    {
                      v151 = *v140;
                      do
                      {
                        v152 = v149;
                        *v140 = *v149;
                        *(v140 + 1) = *(v149 + 1);
                        if (!v148)
                        {
                          break;
                        }

                        v148 = (v148 - 1) >> 1;
                        v149 = (v11 + 16 * v148);
                        v140 = v152;
                      }

                      while (*(v149 + 1) < v150);
                      *v152 = v151;
                      *(v152 + 1) = v150;
                    }
                  }
                }

                a2 -= 16;
                v146 = v12-- <= 2;
              }

              while (!v146);
            }

            return;
          }

          v13 = (v11 + 16 * (v12 >> 1));
          v14 = *v8;
          if (v12 >= 0x81)
          {
            v15 = v13 + 1;
            v16 = v13[1];
            v17 = (v11 + 8);
            v18 = *(v11 + 8);
            if (v16 >= v18)
            {
              if (v14 >= v16 || (v25 = *v13, *v13 = *(a2 - 2), *(a2 - 2) = v25, v26 = v13[1], v13[1] = *(a2 - 1), *(a2 - 1) = v26, v13[1] >= *v17))
              {
LABEL_28:
                v33 = v13 - 1;
                v34 = *(v13 - 1);
                v35 = v13 - 2;
                v36 = (v11 + 24);
                v37 = *(v11 + 24);
                v38 = *v9;
                if (v34 >= v37)
                {
                  if (v38 >= v34 || (v40 = *v35, *v35 = *(a2 - 4), *(a2 - 4) = v40, v41 = *(v13 - 1), *(v13 - 1) = *(a2 - 3), *(a2 - 3) = v41, *(v13 - 1) >= *v36))
                  {
LABEL_42:
                    v46 = v13[3];
                    v47 = v13 + 2;
                    v48 = (v11 + 40);
                    v49 = *(v11 + 40);
                    v50 = *v10;
                    if (v46 >= v49)
                    {
                      if (v50 >= v46 || (v52 = *v47, *v47 = *(a2 - 6), *(a2 - 6) = v52, v53 = v13[3], v13[3] = *(a2 - 5), *(a2 - 5) = v53, v46 = v13[3], v46 >= *v48))
                      {
LABEL_52:
                        v57 = *v15;
                        v58 = *v33;
                        if (*v15 >= *v33)
                        {
                          v59 = *v13;
                          if (v46 >= v57)
                          {
LABEL_62:
                            v62 = *v11;
                            *v11 = v59;
                            *(v11 + 8) = v57;
                            *v13 = v62;
                            goto LABEL_63;
                          }

                          v60 = *v47;
                          *v13 = *v47;
                          v13[1] = v46;
                          *v47 = v59;
                          v13[3] = v57;
                          if (v46 >= v58)
                          {
                            v57 = v46;
                            v59 = v60;
                            goto LABEL_62;
                          }

                          v61 = *v35;
                          *v35 = v60;
                          *v13 = v61;
                        }

                        else
                        {
                          v59 = *v35;
                          if (v46 >= v57)
                          {
                            *v35 = *v13;
                            *(v13 - 1) = v57;
                            *v13 = v59;
                            v13[1] = v58;
                            if (v46 >= v58)
                            {
                              v57 = v58;
                              goto LABEL_62;
                            }

                            *v13 = *v47;
                            *v47 = v59;
                            v33 = v13 + 1;
                          }

                          else
                          {
                            *v35 = *v47;
                            *v47 = v59;
                          }

                          v15 = v13 + 3;
                        }

                        *v33 = v46;
                        *v15 = v58;
                        v59 = *v13;
                        v57 = v13[1];
                        goto LABEL_62;
                      }

                      v54 = *(v11 + 32);
                      *(v11 + 32) = *v47;
                      *v47 = v54;
                      v55 = (v13 + 3);
                    }

                    else
                    {
                      v51 = *(v11 + 32);
                      if (v50 >= v46)
                      {
                        *(v11 + 32) = *v47;
                        *(v11 + 40) = v46;
                        *v47 = v51;
                        v13[3] = v49;
                        v46 = v49;
                        if (*v10 >= v49)
                        {
                          goto LABEL_52;
                        }

                        *v47 = *(a2 - 6);
                        *(a2 - 6) = v51;
                        v48 = v13 + 3;
                      }

                      else
                      {
                        *(v11 + 32) = *(a2 - 6);
                        *(a2 - 6) = v51;
                      }

                      v55 = a2 - 40;
                    }

                    v56 = *v48;
                    *v48 = *v55;
                    *v55 = v56;
                    v46 = v13[3];
                    goto LABEL_52;
                  }

                  v42 = *(v11 + 16);
                  *(v11 + 16) = *v35;
                  *v35 = v42;
                  v43 = (v13 - 1);
                }

                else
                {
                  v39 = *(v11 + 16);
                  if (v38 >= v34)
                  {
                    *(v11 + 16) = *v35;
                    *(v11 + 24) = v34;
                    *v35 = v39;
                    *(v13 - 1) = v37;
                    if (*v9 >= v37)
                    {
                      goto LABEL_42;
                    }

                    *v35 = *(a2 - 4);
                    *(a2 - 4) = v39;
                    v36 = v13 - 1;
                  }

                  else
                  {
                    *(v11 + 16) = *(a2 - 4);
                    *(a2 - 4) = v39;
                  }

                  v43 = a2 - 24;
                }

                v45 = *v36;
                *v36 = *v43;
                *v43 = v45;
                goto LABEL_42;
              }

              v27 = *v11;
              *v11 = *v13;
              *v13 = v27;
              v28 = (v13 + 1);
            }

            else
            {
              v19 = *v11;
              if (v14 >= v16)
              {
                *v11 = *v13;
                *(v11 + 8) = v16;
                *v13 = v19;
                v13[1] = v18;
                if (*v8 >= v18)
                {
                  goto LABEL_28;
                }

                *v13 = *(a2 - 2);
                *(a2 - 2) = v19;
                v17 = v13 + 1;
              }

              else
              {
                *v11 = *(a2 - 2);
                *(a2 - 2) = v19;
              }

              v28 = a2 - 8;
            }

            v32 = *v17;
            *v17 = *v28;
            *v28 = v32;
            goto LABEL_28;
          }

          v20 = (v11 + 8);
          v21 = *(v11 + 8);
          v22 = v13 + 1;
          v23 = v13[1];
          if (v21 < v23)
          {
            v24 = *v13;
            if (v14 >= v21)
            {
              *v13 = *v11;
              v13[1] = v21;
              *v11 = v24;
              *(v11 + 8) = v23;
              if (*v8 >= v23)
              {
                goto LABEL_63;
              }

              *v11 = *(a2 - 2);
              *(a2 - 2) = v24;
              v22 = (v11 + 8);
            }

            else
            {
              *v13 = *(a2 - 2);
              *(a2 - 2) = v24;
            }

            v20 = a2 - 8;
            goto LABEL_37;
          }

          if (v14 < v21)
          {
            v29 = *v11;
            *v11 = *(a2 - 2);
            *(a2 - 2) = v29;
            v30 = *(v11 + 8);
            *(v11 + 8) = *(a2 - 1);
            *(a2 - 1) = v30;
            if (*(v11 + 8) < *v22)
            {
              v31 = *v13;
              *v13 = *v11;
              *v11 = v31;
LABEL_37:
              v44 = *v22;
              *v22 = *v20;
              *v20 = v44;
            }
          }

LABEL_63:
          --a3;
          if (a4)
          {
            break;
          }

          v64 = *v11;
          v63 = *(v11 + 8);
          if (*(v11 - 8) < v63)
          {
            goto LABEL_66;
          }

          if (v63 >= *v8)
          {
            v81 = v11 + 16;
            do
            {
              v11 = v81;
              if (v81 >= a2)
              {
                break;
              }

              v82 = *(v81 + 8);
              v81 += 16;
            }

            while (v63 >= v82);
          }

          else
          {
            v79 = v11;
            do
            {
              v11 = v79 + 16;
              v80 = *(v79 + 24);
              v79 += 16;
            }

            while (v63 >= v80);
          }

          v83 = a2;
          if (v11 < a2)
          {
            v84 = a2;
            do
            {
              v83 = v84 - 16;
              v85 = *(v84 - 1);
              v84 -= 16;
            }

            while (v63 < v85);
          }

          while (v11 < v83)
          {
            v86 = *v11;
            *v11 = *v83;
            *v83 = v86;
            v87 = *(v11 + 8);
            *(v11 + 8) = *(v83 + 1);
            *(v83 + 1) = v87;
            do
            {
              v88 = *(v11 + 24);
              v11 += 16;
            }

            while (v63 >= v88);
            do
            {
              v89 = *(v83 - 1);
              v83 -= 16;
            }

            while (v63 < v89);
          }

          if ((v11 - 16) != a1)
          {
            *a1 = *(v11 - 16);
            *(a1 + 1) = *(v11 - 8);
          }

          a4 = 0;
          *(v11 - 16) = v64;
          *(v11 - 8) = v63;
        }

        v64 = *v11;
        v63 = *(v11 + 8);
LABEL_66:
        v65 = 0;
        do
        {
          v66 = *(v11 + v65 + 24);
          v65 += 16;
        }

        while (v66 < v63);
        v67 = v11 + v65;
        v68 = a2;
        if (v65 == 16)
        {
          v71 = a2;
          while (v67 < v71)
          {
            v69 = v71 - 16;
            v72 = *(v71 - 1);
            v71 -= 16;
            if (v72 < v63)
            {
              goto LABEL_76;
            }
          }

          v69 = v71;
        }

        else
        {
          do
          {
            v69 = v68 - 16;
            v70 = *(v68 - 1);
            v68 -= 16;
          }

          while (v70 >= v63);
        }

LABEL_76:
        v11 = v67;
        if (v67 < v69)
        {
          v73 = v69;
          do
          {
            v74 = *v11;
            *v11 = *v73;
            *v73 = v74;
            v75 = *(v11 + 8);
            *(v11 + 8) = *(v73 + 1);
            *(v73 + 1) = v75;
            do
            {
              v76 = *(v11 + 24);
              v11 += 16;
            }

            while (v76 < v63);
            do
            {
              v77 = *(v73 - 1);
              v73 -= 16;
            }

            while (v77 >= v63);
          }

          while (v11 < v73);
        }

        if ((v11 - 16) != a1)
        {
          *a1 = *(v11 - 16);
          *(a1 + 1) = *(v11 - 8);
        }

        *(v11 - 16) = v64;
        *(v11 - 8) = v63;
        if (v67 >= v69)
        {
          break;
        }

LABEL_87:
        sub_1013B2230(a1, (v11 - 16), a3, a4 & 1);
        a4 = 0;
      }

      v78 = sub_1013B2EE8(a1, (v11 - 16));
      if (sub_1013B2EE8(v11, a2))
      {
        break;
      }

      if (!v78)
      {
        goto LABEL_87;
      }
    }

    a2 = (v11 - 16);
    if (!v78)
    {
      continue;
    }

    break;
  }
}

uint64_t *sub_1013B2D70(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = a2[1];
  v5 = result + 1;
  v6 = a3 + 1;
  v7 = a3[1];
  if (v4 >= result[1])
  {
    if (v7 < v4)
    {
      v10 = *a2;
      *a2 = *a3;
      *a3 = v10;
      v7 = a2[1];
      a2[1] = a3[1];
      a3[1] = v7;
      if (a2[1] < *v5)
      {
        v11 = *result;
        *result = *a2;
        *a2 = v11;
        v9 = result + 1;
        v12 = a2 + 1;
LABEL_10:
        v15 = *v9;
        *v9 = *v12;
        *v12 = v15;
        v7 = *v6;
      }
    }
  }

  else
  {
    v8 = *result;
    if (v7 < v4)
    {
      *result = *a3;
      *a3 = v8;
      v9 = result + 1;
LABEL_9:
      v12 = a3 + 1;
      goto LABEL_10;
    }

    *result = *a2;
    *a2 = v8;
    v13 = result[1];
    result[1] = a2[1];
    a2[1] = v13;
    v7 = *v6;
    if (*v6 < v13)
    {
      v14 = *a2;
      *a2 = *a3;
      *a3 = v14;
      v9 = a2 + 1;
      goto LABEL_9;
    }
  }

  if (a4[1] < v7)
  {
    v16 = *a3;
    *a3 = *a4;
    *a4 = v16;
    v17 = a3[1];
    a3[1] = a4[1];
    a4[1] = v17;
    if (a3[1] < a2[1])
    {
      v18 = *a2;
      *a2 = *a3;
      *a3 = v18;
      v19 = a2[1];
      a2[1] = a3[1];
      a3[1] = v19;
      if (a2[1] < *v5)
      {
        v20 = *result;
        *result = *a2;
        *a2 = v20;
        v21 = result[1];
        result[1] = a2[1];
        a2[1] = v21;
      }
    }
  }

  return result;
}

BOOL sub_1013B2EE8(uint64_t *a1, uint64_t *a2)
{
  v4 = (a2 - a1) >> 4;
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      v17 = a1 + 3;
      v18 = a1[3];
      v19 = a1 + 1;
      v20 = a1[1];
      v21 = *(a2 - 1);
      if (v18 >= v20)
      {
        if (v21 >= v18)
        {
          return 1;
        }

        v29 = a1[2];
        a1[2] = *(a2 - 2);
        *(a2 - 2) = v29;
        v30 = a1[3];
        a1[3] = *(a2 - 1);
        *(a2 - 1) = v30;
        if (a1[3] >= a1[1])
        {
          return 1;
        }

        v31 = *a1;
        *a1 = a1[2];
        a1[2] = v31;
      }

      else
      {
        v22 = *a1;
        if (v21 >= v18)
        {
          *a1 = a1[2];
          a1[1] = v18;
          a1[2] = v22;
          a1[3] = v20;
          if (*(a2 - 1) >= v20)
          {
            return 1;
          }

          a1[2] = *(a2 - 2);
          *(a2 - 2) = v22;
          v19 = a1 + 3;
        }

        else
        {
          *a1 = *(a2 - 2);
          *(a2 - 2) = v22;
        }

        v17 = a2 - 1;
      }

      v35 = *v19;
      *v19 = *v17;
      *v17 = v35;
      return 1;
    }

    if (v4 != 4)
    {
      if (v4 == 5)
      {
        sub_1013B2D70(a1, a1 + 2, a1 + 4, a1 + 6);
        if (*(a2 - 1) < a1[7])
        {
          v7 = a1[6];
          a1[6] = *(a2 - 2);
          *(a2 - 2) = v7;
          v8 = a1[7];
          a1[7] = *(a2 - 1);
          *(a2 - 1) = v8;
          v9 = a1[7];
          v10 = a1[5];
          if (v9 < v10)
          {
            v11 = a1[6];
            v12 = a1[3];
            v13 = a1[4];
            a1[4] = v11;
            a1[5] = v9;
            a1[6] = v13;
            a1[7] = v10;
            if (v9 < v12)
            {
              v14 = a1[1];
              v15 = a1[2];
              a1[2] = v11;
              a1[3] = v9;
              a1[4] = v15;
              a1[5] = v12;
              if (v9 < v14)
              {
                v16 = *a1;
                *a1 = v11;
                a1[1] = v9;
                a1[2] = v16;
                a1[3] = v14;
              }
            }
          }
        }

        return 1;
      }

      goto LABEL_17;
    }

    sub_1013B2D70(a1, a1 + 2, a1 + 4, a2 - 2);
    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    if (*(a2 - 1) < a1[1])
    {
      v5 = *a1;
      *a1 = *(a2 - 2);
      *(a2 - 2) = v5;
      v6 = a1[1];
      a1[1] = *(a2 - 1);
      *(a2 - 1) = v6;
    }

    return 1;
  }

LABEL_17:
  v23 = a1[3];
  v25 = a1 + 1;
  v24 = a1[1];
  v27 = a1 + 5;
  v26 = a1[5];
  if (v23 < v24)
  {
    v28 = *a1;
    if (v26 >= v23)
    {
      *a1 = a1[2];
      a1[1] = v23;
      a1[2] = v28;
      a1[3] = v24;
      if (v26 >= v24)
      {
        goto LABEL_34;
      }

      a1[2] = a1[4];
      a1[4] = v28;
      v25 = a1 + 3;
    }

    else
    {
      *a1 = a1[4];
      a1[4] = v28;
    }

    goto LABEL_33;
  }

  if (v26 < v23)
  {
    v32 = a1[2];
    v33 = a1[4];
    a1[2] = v33;
    a1[3] = v26;
    a1[4] = v32;
    a1[5] = v23;
    if (v26 < v24)
    {
      v34 = *a1;
      *a1 = v33;
      a1[2] = v34;
      v27 = a1 + 3;
LABEL_33:
      *v25 = v26;
      *v27 = v24;
    }
  }

LABEL_34:
  v36 = a1 + 6;
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v37 = 0;
  v38 = 0;
  v39 = a1 + 4;
  while (1)
  {
    v40 = v36[1];
    if (v40 < v39[1])
    {
      v41 = *v36;
      v42 = v37;
      while (1)
      {
        v43 = (a1 + v42);
        v44 = *(a1 + v42 + 40);
        v43[6] = *(a1 + v42 + 32);
        v43[7] = v44;
        if (v42 == -32)
        {
          break;
        }

        v42 -= 16;
        if (v40 >= v43[3])
        {
          v45 = (a1 + v42 + 48);
          goto LABEL_42;
        }
      }

      v45 = a1;
LABEL_42:
      *v45 = v41;
      v45[1] = v40;
      if (++v38 == 8)
      {
        return v36 + 2 == a2;
      }
    }

    v39 = v36;
    v37 += 16;
    v36 += 2;
    if (v36 == a2)
    {
      return 1;
    }
  }
}

void sub_1013B3220(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_1013B32A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1013B32B4(va);
  _Unwind_Resume(a1);
}

void ***sub_1013B32B4(void ***a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    v2 = v1;
    sub_1000212F4(&v2);
    operator delete();
  }

  return a1;
}

void sub_1013B3314(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1013B334C(uint64_t result)
{
  if (*(result + 24))
  {
    v1 = *(result + 24);
    sub_1000212F4(&v1);
    operator delete();
  }

  return result;
}

uint64_t sub_1013B339C(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_1013B33DC(char *a1)
{
  if (a1)
  {
    sub_1013B33DC(*a1);
    sub_1013B33DC(*(a1 + 1));
    if (a1[119] < 0)
    {
      operator delete(*(a1 + 12));
    }

    if (a1[95] < 0)
    {
      operator delete(*(a1 + 9));
    }

    if (a1[63] < 0)
    {
      operator delete(*(a1 + 5));
    }

    operator delete(a1);
  }
}

void sub_1013B3458(void *a1)
{
  if (a1)
  {
    sub_1013B3458(*a1);
    sub_1013B3458(a1[1]);
    sub_1007676EC((a1 + 4));

    operator delete(a1);
  }
}

void sub_1013B34AC(void *a1)
{
  if (a1)
  {
    sub_1013B34AC(*a1);
    sub_1013B34AC(a1[1]);
    sub_1000CFC8C((a1 + 4));

    operator delete(a1);
  }
}

void sub_1013B3504(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1013B3558(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1013B3598(uint64_t result)
{
  if (result)
  {
    return (*(*result + 368))();
  }

  return result;
}

void sub_1013B35CC(void *a1)
{
  v1 = *a1;
  v2 = a1;
  v3 = v1;
  sub_10138EB50(*v1);
}

void sub_1013B3610(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10024BAAC(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void sub_1013B362C(ServiceManager::Service *this)
{
  *this = off_101F33298;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);
}

void sub_1013B3688(ServiceManager::Service *this)
{
  *this = off_101F33298;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);

  operator delete();
}

uint64_t *sub_1013B3708@<X0>(uint64_t *a1@<X8>)
{
  v2 = 512;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  return sub_1000FF040(a1, &v2, &vars0, 2);
}

void sub_1013B374C(uint64_t a1, dispatch_object_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
    sub_101391968(v2, v3);
  }

  v4 = *(a1 + 8);

  sub_101391968(v4, 0);
}

void sub_1013B37EC(uint64_t a1)
{
  v1 = *(*(a1 + 8) + 16);
  if (v1)
  {
    if (std::__shared_weak_count::lock(v1))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1013B38CC(uint64_t a1, int a2, ServiceStage *this)
{
  v3 = *(a1 + 8);
  ServiceStage::holdOffStage(&group[1], this);
  v4 = *(v3 + 16);
  if (v4)
  {
    if (std::__shared_weak_count::lock(v4))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

uint64_t *sub_1013B39E0(void **a1)
{
  v1 = *a1;
  v4 = a1;
  v5 = v1;
  v2 = *v1;
  *(v2 + 96) = 1;
  ctu::RestModule::disconnect((v2 + 80));
  sub_1000FF844(&v5);
  return sub_1000049E0(&v4);
}

void sub_1013B3A30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1000FF844(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void sub_1013B3A4C(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "";
    *&buf[12] = 2080;
    *&buf[14] = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%sbootstrap", buf, 0x16u);
  }

  v3 = (v1 + 744);
  v4 = v1 + 80;
  *buf = off_101F33318;
  *&buf[8] = v1 + 80;
  v11 = buf;
  if (buf != (v1 + 744))
  {
    v5 = *(v1 + 768);
    if (v5 == v3)
    {
      v13 = v1 + 80;
      v14 = 0;
      v11 = 0;
      __p = off_101F33318;
      (*(*v5 + 24))(v5, buf);
      (*(**(v1 + 768) + 32))(*(v1 + 768));
      *(v1 + 768) = 0;
      v11 = buf;
      (*(__p + 3))(&__p, v1 + 744);
      (*(__p + 4))(&__p);
    }

    else
    {
      *(v1 + 744) = off_101F33318;
      *(v1 + 752) = v4;
      v11 = v5;
    }

    *(v1 + 768) = v3;
  }

  sub_1013B0934(buf);
  v6 = *(v1 + 768);
  if (v6)
  {
    (*(*v6 + 48))(v6, v1 + 776);
  }

  v7 = (v1 + 1048);
  *buf = off_101F333A8;
  *&buf[8] = v1 + 80;
  v11 = buf;
  if (buf != (v1 + 1048))
  {
    v8 = *(v1 + 1072);
    if (v8 == v7)
    {
      v13 = v1 + 80;
      v14 = 0;
      v11 = 0;
      __p = off_101F333A8;
      (*(*v8 + 24))(v8, buf);
      (*(**(v1 + 1072) + 32))(*(v1 + 1072));
      *(v1 + 1072) = 0;
      v11 = buf;
      (*(__p + 3))(&__p, v1 + 1048);
      (*(__p + 4))(&__p);
    }

    else
    {
      *(v1 + 1048) = off_101F333A8;
      *(v1 + 1056) = v4;
      v11 = v8;
    }

    *(v1 + 1072) = v7;
  }

  sub_1013B06B0(buf);
  v9 = *(v1 + 1072);
  if (v9)
  {
    (*(*v9 + 48))(v9, v1 + 1080);
  }

  sub_10000501C(&__p, "/cc/props/vinyl_info");
  *buf = off_101F33438;
  *&buf[8] = v1 + 160;
  *&buf[16] = v1;
  v11 = buf;
  ctu::RestModule::observeProperty();
  sub_1000062D4(buf);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p);
  }

  sub_10000501C(&__p, "/cc/events/carrier_bundle_event");
  *buf = off_101F334B8;
  *&buf[8] = v1;
  v11 = buf;
  ctu::RestModule::observeEvent();
  sub_1000062D4(buf);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p);
  }

  sub_10000501C(&__p, "/cc/props/personalized_phone_numbers");
  *buf = off_101F33538;
  *&buf[8] = v1 + 216;
  *&buf[16] = v1;
  v11 = buf;
  ctu::RestModule::observeProperty();
  sub_1000062D4(buf);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p);
  }

  sub_10000501C(&__p, "/cc/props/localized_language");
  *buf = off_101F335B8;
  *&buf[8] = v1 + 240;
  *&buf[16] = v1;
  v11 = buf;
  ctu::RestModule::observeProperty();
  sub_1000062D4(buf);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p);
  }

  sub_10000501C(&__p, "/cc/props/bound_sims");
  *buf = off_101F33638;
  *&buf[8] = v1 + 184;
  *&buf[16] = v1;
  v11 = buf;
  ctu::RestModule::observeProperty();
  sub_1000062D4(buf);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p);
  }

  sub_10000501C(&__p, "/cc/props/imsi_identity_ready");
  *buf = off_101F336B8;
  *&buf[8] = v1 + 288;
  *&buf[16] = v1;
  v11 = buf;
  ctu::RestModule::observeProperty();
  sub_1000062D4(buf);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p);
  }

  sub_10000501C(&__p, "/cc/events/subscriber_sim_file_event");
  operator new();
}

void sub_1013B4200(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1013B42FC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F33318;
  a2[1] = v2;
  return result;
}

void sub_1013B4328(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  write_rest_value();
  sub_10000501C(&__p, "/cc/props/personalities");
  object = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    object = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(object);
  if (v4 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v5);
}

void sub_1013B43CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_1013B4410(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1013B44CC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F333A8;
  a2[1] = v2;
  return result;
}

void sub_1013B44F8(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 24) == 1)
  {
    v3 = xpc_array_create(0, 0);
    if (v3 || (v3 = xpc_null_create()) != 0)
    {
      if (xpc_get_type(v3) == &_xpc_type_array)
      {
        xpc_retain(v3);
        v4 = v3;
      }

      else
      {
        v4 = xpc_null_create();
      }
    }

    else
    {
      v4 = xpc_null_create();
      v3 = 0;
    }

    xpc_release(v3);
    v8 = *a2;
    v6 = (a2 + 8);
    v7 = v8;
    if (v8 != v6)
    {
      do
      {
        v9 = xpc_dictionary_create(0, 0, 0);
        v10 = v9;
        if (v9)
        {
          v23 = v9;
        }

        else
        {
          v10 = xpc_null_create();
          v23 = v10;
          if (!v10)
          {
            v11 = xpc_null_create();
            v10 = 0;
            goto LABEL_17;
          }
        }

        if (xpc_get_type(v10) != &_xpc_type_dictionary)
        {
          v11 = xpc_null_create();
LABEL_17:
          v23 = v11;
          goto LABEL_18;
        }

        xpc_retain(v10);
LABEL_18:
        xpc_release(v10);
        write_rest_value();
        __p = &v23;
        v17 = "first";
        sub_10000F688(&__p, &v21, &object);
        xpc_release(object);
        object = 0;
        xpc_release(v21);
        v21 = 0;
        write_rest_value();
        __p = &v23;
        v17 = "second";
        sub_10000F688(&__p, &v19, &v20);
        xpc_release(v20);
        v20 = 0;
        xpc_release(v19);
        v19 = 0;
        v12 = v23;
        if (v23)
        {
          xpc_retain(v23);
        }

        else
        {
          v12 = xpc_null_create();
        }

        xpc_release(v23);
        xpc_array_append_value(v4, v12);
        xpc_release(v12);
        v13 = v7[1];
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
            v14 = v7[2];
            v15 = *v14 == v7;
            v7 = v14;
          }

          while (!v15);
        }

        v7 = v14;
      }

      while (v14 != v6);
    }

    if (v4)
    {
      xpc_retain(v4);
      v5 = v4;
    }

    else
    {
      v5 = xpc_null_create();
    }

    xpc_release(v4);
  }

  else
  {
    v5 = xpc_null_create();
  }

  sub_10000501C(&__p, "/cc/props/assigned_sim_labels");
  v23 = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    v23 = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(v23);
  v23 = 0;
  if (v18 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v5);
}

void sub_1013B47E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, xpc_object_t object)
{
  xpc_release(object);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v19);
  _Unwind_Resume(a1);
}

uint64_t sub_1013B4884(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1013B4944(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F33438;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_1013B4974(uint64_t a1, xpc_object_t *a2)
{
  sub_10011D868(*(a1 + 8), a2);
  v3 = *(a1 + 16);

  sub_10139A9F0(v3, "property updated");
}

uint64_t sub_1013B49B8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1013B4A74(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F334B8;
  a2[1] = v2;
  return result;
}

void sub_1013B4AA0(uint64_t a1)
{
  memset(v3, 0, sizeof(v3));
  rest::read_rest_value();
  v2 = *(a1 + 8);
  *v4 = 255;
  v5 = 0u;
  v6 = 0;
  __p = *&v3[1];
  v8 = 0;
  sub_10139F448(v2, 0, v4);
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v6) < 0)
  {
    operator delete(v5);
  }
}

void sub_1013B4BC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  sub_1000EFBF0(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1013B4BFC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1013B4CBC(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F33538;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_1013B4CEC(uint64_t a1, xpc_object_t *a2)
{
  v3 = *(a1 + 8);
  v4 = v3 + 1;
  v5 = v3[1];
  v6 = *v3;
  v7 = v5;
  if (v3[2])
  {
    *(v5 + 16) = &v7;
    *v3 = v4;
    *v4 = 0;
    v3[2] = 0;
  }

  else
  {
    v6 = &v7;
  }

  sub_1002BB888(v3, a2);
  sub_1013AED2C(*(a1 + 16));
  sub_1002B7314(&v6, v7);
}

uint64_t sub_1013B4D80(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1013B4E40(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F335B8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_1013B4E70(uint64_t a1)
{
  v2 = *(a1 + 8);
  v34 = *(v2 + 16);
  *v33 = *v2;
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  *v2 = 0;
  v3 = *(v2 + 24);
  v36 = *(v2 + 40);
  *v35 = v3;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 24) = 0;
  read_rest_value();
  v4 = *(a1 + 16);
  v5 = *(v4 + 287);
  if (v5 >= 0)
  {
    v6 = *(v4 + 287);
  }

  else
  {
    v6 = *(v4 + 272);
  }

  v7 = HIBYTE(v36);
  v8 = SHIBYTE(v36);
  if (v36 < 0)
  {
    v7 = v35[1];
  }

  if (v6 != v7 || (v5 >= 0 ? (v9 = (v4 + 264)) : (v9 = *(v4 + 264)), v36 >= 0 ? (v10 = v35) : (v10 = v35[0]), memcmp(v9, v10, v6)))
  {
    v32 = v8;
    v11 = *(v4 + 40);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = (v4 + 264);
      if (v5 < 0)
      {
        v12 = *v12;
      }

      *buf = 136315650;
      *&buf[4] = "";
      *&buf[12] = 2080;
      *&buf[14] = "";
      *&buf[22] = 2080;
      v45 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I %s%slanguage changed to:%s", buf, 0x20u);
    }

    v13 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    do
    {
      sub_10000501C(__p, off_101F33090[v13]);
      v14 = v42;
      if (v42 >= v43)
      {
        v16 = 0xAAAAAAAAAAAAAAABLL * ((v42 - v41) >> 3);
        v17 = v16 + 1;
        if (v16 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_1000CE3D4();
        }

        if (0x5555555555555556 * ((v43 - v41) >> 3) > v17)
        {
          v17 = 0x5555555555555556 * ((v43 - v41) >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v43 - v41) >> 3) >= 0x555555555555555)
        {
          v18 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v18 = v17;
        }

        *v46 = &v41;
        if (v18)
        {
          sub_100005348(&v41, v18);
        }

        v19 = 8 * ((v42 - v41) >> 3);
        v20 = *__p;
        *(v19 + 16) = v40;
        *v19 = v20;
        __p[1] = 0;
        v40 = 0;
        __p[0] = 0;
        v21 = 24 * v16 + 24;
        v22 = (24 * v16 - (v42 - v41));
        memcpy((v19 - (v42 - v41)), v41, v42 - v41);
        v23 = v41;
        v24 = v43;
        v41 = v22;
        v42 = v21;
        v43 = 0;
        *buf = v23;
        *&buf[16] = v23;
        v45 = v24;
        *&buf[8] = v23;
        sub_1000054E0(buf);
        v42 = v21;
        if (SHIBYTE(v40) < 0)
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        v15 = *__p;
        v42[2] = v40;
        *v14 = v15;
        v42 = v14 + 3;
      }

      ++v13;
    }

    while (v13 != 6);
    __p[0] = 0;
    __p[1] = 0;
    v40 = 0;
    (*(**(v4 + 1200) + 80))(__p);
    v25 = *(v4 + 40);
    if (0xAAAAAAAAAAAAAAABLL * ((v42 - v41) >> 3) == (__p[1] - __p[0]) >> 3)
    {
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "";
        *&buf[12] = 2080;
        *&buf[14] = "";
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I %s%srecalculated localized labels:", buf, 0x16u);
      }

      std::mutex::lock((v4 + 984));
      sub_1000DD0AC(v4 + 1136, *(v4 + 1144));
      *(v4 + 1136) = v4 + 1144;
      *(v4 + 1144) = 0u;
      if (v42 != v41)
      {
        v26 = 0;
        v27 = 0;
        do
        {
          v37[0] = 0;
          v37[1] = 0;
          v38 = 0;
          memset(buf, 0, sizeof(buf));
          ctu::cf::assign();
          *v37 = *buf;
          v38 = *&buf[16];
          v28 = *(v4 + 40);
          v29 = v41;
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            v30 = &v29[v26];
            if (v29[v26 + 23] < 0)
            {
              v30 = *v30;
            }

            if (v38 >= 0)
            {
              v31 = v37;
            }

            else
            {
              v31 = v37[0];
            }

            *buf = 136316162;
            *&buf[4] = "";
            *&buf[12] = 2080;
            *&buf[14] = "";
            *&buf[22] = 2048;
            v45 = v27;
            *v46 = 2080;
            *&v46[2] = v30;
            v47 = 2080;
            v48 = v31;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I %s%s %zu. %s: %s", buf, 0x34u);
            v29 = v41;
          }

          sub_10045EB0C((v4 + 1136), &v29[v26], &v29[v26], v37);
          if (SHIBYTE(v38) < 0)
          {
            operator delete(v37[0]);
          }

          ++v27;
          v26 += 24;
        }

        while (v27 < 0xAAAAAAAAAAAAAAABLL * ((v42 - v41) >> 3));
      }

      std::mutex::unlock((v4 + 984));
    }

    else if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "";
      *&buf[12] = 2080;
      *&buf[14] = "";
      _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "#E %s%slocalized label's set is of incorrect size! Drop the result, keep localized predefined labels as is", buf, 0x16u);
    }

    *buf = __p;
    sub_100222314(buf);
    *buf = &v41;
    sub_1000087B4(buf);
    sub_10139C67C(v4, "language change", 1);
    v8 = v32;
  }

  if (v8 < 0)
  {
    operator delete(v35[0]);
  }

  if (SHIBYTE(v34) < 0)
  {

    operator delete(v33[0]);
  }
}

void sub_1013B545C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char **p_p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, char *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, char a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  p_p = &__p;
  sub_100222314(&p_p);
  __p = &a32;
  sub_1000087B4(&__p);
  sub_1000D6F38(&a13);
  _Unwind_Resume(a1);
}

uint64_t sub_1013B54F8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1013B55B8(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F33638;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_1013B55E8(uint64_t a1, xpc_object_t *a2)
{
  sub_100645F00(*(a1 + 8), a2);
  v3 = *(a1 + 16);
  v4 = *(v3 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "";
    *&buf[12] = 2080;
    *&buf[14] = "";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%shandleBoundSimsChanged", buf, 0x16u);
  }

  v5 = *(v3 + 184);
  if (v5 != (v3 + 192))
  {
    v6 = 0;
    do
    {
      __p[0] = 0;
      __p[1] = 0;
      v19 = 0;
      if (*(v5 + 79) < 0)
      {
        sub_100005F2C(__p, v5[7], v5[8]);
      }

      else
      {
        *__p = *(v5 + 7);
        v19 = v5[9];
      }

      (*(**(v3 + 120) + 24))(buf);
      v7 = *buf;
      sub_10000A1EC(buf);
      if (!v7)
      {
        v8 = *(v3 + 40);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = HIBYTE(v19);
          if (v19 < 0)
          {
            v9 = __p[1];
          }

          v10 = __p;
          if (v19 < 0)
          {
            v10 = __p[0];
          }

          v11 = v9 == 0;
          v12 = "<invalid>";
          if (!v11)
          {
            v12 = v10;
          }

          *buf = 136315906;
          *&buf[4] = "";
          *&buf[12] = 2080;
          *&buf[14] = "";
          v22 = 2080;
          v23 = v12;
          v24 = 2080;
          v25 = "Other";
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%smarking %s as %s", buf, 0x2Au);
        }

        (*(**(v3 + 120) + 16))(*(v3 + 120), __p, @"offloading", kCFBooleanTrue, @"info", 0, 0, 0);
        v20[0] = off_101F33A98;
        v20[3] = v20;
        v13 = *(v3 + 656);
        v15 = *v13;
        v14 = v13[1];
        if (*v13 != v14)
        {
          while (!sub_100071DF8((*v15 + 24), __p))
          {
            v15 += 16;
            if (v15 == v14)
            {
              v15 = v14;
              break;
            }
          }

          v14 = *(*(v3 + 656) + 8);
        }

        if (v15 != v14)
        {
          *buf = 0;
          *&buf[8] = 0;
          sub_1004CA38C();
        }

        sub_1013B753C(v20);
        v6 |= sub_10139BCF4(v3, __p, "Other", qword_101FCA9C0, @"labeled offload sim");
      }

      if (SHIBYTE(v19) < 0)
      {
        operator delete(__p[0]);
      }

      v16 = v5[1];
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
          v17 = v5[2];
          v11 = *v17 == v5;
          v5 = v17;
        }

        while (!v11);
      }

      v5 = v17;
    }

    while (v17 != (v3 + 192));
    if (v6)
    {
      sub_10139C67C(v3, "bound sim labeling correction", 0);
    }
  }
}

void sub_1013B59FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, std::__shared_weak_count *a25)
{
  if (a25)
  {
    sub_100004A34(a25);
  }

  sub_1013B753C(&a20);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1013B5A4C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1013B5B0C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F336B8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_1013B5B3C(uint64_t a1, xpc_object_t *a2)
{
  v3 = *(a1 + 8);
  v4 = v3 + 1;
  v5 = v3[1];
  v42 = *v3;
  v43 = v5;
  if (v3[2])
  {
    *(v5 + 16) = &v43;
    *v3 = v4;
    *v4 = 0;
    v3[2] = 0;
  }

  else
  {
    v42 = &v43;
  }

  sub_1008479D0(v3, a2);
  v6 = *(a1 + 16);
  v7 = *(v6 + 288);
  if (v7 == (v6 + 296))
  {
    goto LABEL_80;
  }

  v40 = 0;
  do
  {
    v8 = sub_100007A6C(&v42, v7 + 32);
    if (&v43 == v8)
    {
      goto LABEL_19;
    }

    v9 = *(v8 + 127);
    if (v9 >= 0)
    {
      v10 = *(v8 + 127);
    }

    else
    {
      v10 = *(v8 + 112);
    }

    v11 = v7[127];
    v12 = v11;
    if ((v11 & 0x80u) != 0)
    {
      v11 = *(v7 + 14);
    }

    if (v10 != v11)
    {
      goto LABEL_19;
    }

    v15 = *(v8 + 104);
    v13 = (v8 + 104);
    v14 = v15;
    if (v9 < 0)
    {
      v13 = v14;
    }

    v16 = v12 >= 0 ? v7 + 104 : *(v7 + 13);
    if (memcmp(v13, v16, v10))
    {
LABEL_19:
      ServiceMap = Registry::getServiceMap(*(v6 + 64));
      v18 = ServiceMap;
      if (v19 < 0)
      {
        v20 = (v19 & 0x7FFFFFFFFFFFFFFFLL);
        v21 = 5381;
        do
        {
          v19 = v21;
          v22 = *v20++;
          v21 = (33 * v21) ^ v22;
        }

        while (v22);
      }

      std::mutex::lock(ServiceMap);
      *buf = v19;
      v23 = sub_100009510(&v18[1].__m_.__sig, buf);
      if (!v23)
      {
        std::mutex::unlock(v18);
        goto LABEL_72;
      }

      v41 = v7 + 32;
      v25 = v23[3];
      v24 = v23[4];
      if (v24)
      {
        atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v18);
        atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v24);
        if (!v25)
        {
LABEL_71:
          sub_100004A34(v24);
          goto LABEL_72;
        }
      }

      else
      {
        std::mutex::unlock(v18);
        if (!v25)
        {
          goto LABEL_72;
        }
      }

      v48[0] = 0;
      v48[1] = 0;
      v49 = 0;
      (*(*v25 + 24))(v48, v25, v7 + 13);
      v26 = HIBYTE(v49);
      if ((SHIBYTE(v49) & 0x8000000000000000) != 0)
      {
        if (!v48[1])
        {
          goto LABEL_69;
        }

        v27 = v48[0];
        v28 = (v48[0] + v48[1]);
      }

      else
      {
        if (!HIBYTE(v49))
        {
          goto LABEL_70;
        }

        v27 = v48;
        v28 = (v48 + SHIBYTE(v49));
      }

      if (v27 != v28)
      {
        do
        {
          *v27 = __toupper(*v27);
          v27 = (v27 + 1);
        }

        while (v27 != v28);
        v26 = HIBYTE(v49);
      }

      theString2 = 0;
      if (v26 < 0)
      {
        sub_100005F2C(__dst, v48[0], v48[1]);
      }

      else
      {
        *__dst = *v48;
        v46 = v49;
      }

      if (SHIBYTE(v46) < 0)
      {
        sub_100005F2C(__p, __dst[0], __dst[1]);
      }

      else
      {
        *__p = *__dst;
        v52 = v46;
      }

      v50 = 0;
      if (SHIBYTE(v52) < 0)
      {
        sub_100005F2C(buf, __p[0], __p[1]);
      }

      else
      {
        *buf = *__p;
        *&buf[16] = v52;
      }

      v53 = 0;
      if (ctu::cf::convert_copy())
      {
        v29 = v50;
        v50 = v53;
        v54 = v29;
        sub_100005978(&v54);
      }

      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      theString2 = v50;
      v50 = 0;
      sub_100005978(&v50);
      if (SHIBYTE(v52) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v46) < 0)
      {
        operator delete(__dst[0]);
      }

      __p[0] = 0;
      (*(**(v6 + 120) + 24))(buf);
      sub_100060DE8(__p, buf);
      sub_10000A1EC(buf);
      if (!__p[0] || CFStringCompare(__p[0], theString2, 0))
      {
        v30 = *(v6 + 40);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v31 = v48;
          if (v49 < 0)
          {
            v31 = v48[0];
          }

          v32 = v7[55];
          v33 = (v32 & 0x80u) != 0;
          if ((v32 & 0x80u) != 0)
          {
            v32 = *(v7 + 5);
          }

          if (v33)
          {
            v34 = *(v7 + 4);
          }

          else
          {
            v34 = v7 + 32;
          }

          v35 = v32 == 0;
          v36 = "<invalid>";
          if (!v35)
          {
            v36 = v34;
          }

          *buf = 136315906;
          *&buf[4] = "";
          *&buf[12] = 2080;
          *&buf[14] = "";
          *&buf[22] = 2080;
          v56 = v31;
          v57 = 2080;
          v58 = v36;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I %s%sDetected country ISO as '%s' for persona %s", buf, 0x2Au);
        }

        (*(**(v6 + 120) + 16))(*(v6 + 120), v41, @"country-iso", theString2, @"info", 0, 0, 0);
        v37 = sub_100007A6C(v6 + 880, v41);
        if (v6 + 888 != v37)
        {
          v40 |= sub_1013A153C(v6, v41, v37 + 56, 0);
        }
      }

      sub_100005978(__p);
      sub_100005978(&theString2);
      if ((SHIBYTE(v49) & 0x80000000) == 0)
      {
LABEL_70:
        if (!v24)
        {
          goto LABEL_72;
        }

        goto LABEL_71;
      }

LABEL_69:
      operator delete(v48[0]);
      goto LABEL_70;
    }

LABEL_72:
    v38 = *(v7 + 1);
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
        v39 = *(v7 + 2);
        v35 = *v39 == v7;
        v7 = v39;
      }

      while (!v35);
    }

    v7 = v39;
  }

  while (v39 != (v6 + 296));
  if (v40)
  {
    sub_10139C67C(v6, "country iso detected", 0);
  }

LABEL_80:
  sub_1008441A8(&v42, v43);
}

uint64_t sub_1013B61D4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1013B629C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F33738;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_1013B62D4(void *a1)
{
  __p[0] = 0x2800000000;
  __p[1] = 0;
  v6 = 0uLL;
  v7 = 0;
  rest::read_rest_value();
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  v2(v4, __p);
  if (__p[1])
  {
    *&v6 = __p[1];
    operator delete(__p[1]);
  }
}

void sub_1013B637C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1013B6398(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1013B6460(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F337B8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_1013B6498(void *a1, xpc_object_t *a2)
{
  v3 = a1[1];
  *__p = 0u;
  v9 = 0u;
  if (*(v3 + 24) == 1)
  {
    v4 = *v3;
    *&v9 = *(v3 + 16);
    *__p = v4;
    *(v3 + 8) = 0;
    *(v3 + 16) = 0;
    *v3 = 0;
    BYTE8(v9) = 1;
  }

  sub_1001E6158(v3, a2);
  v5 = a1[3];
  v6 = a1[4];
  v7 = (a1[2] + (v6 >> 1));
  if (v6)
  {
    v5 = *(*v7 + v5);
  }

  v5(v7, __p);
  if (BYTE8(v9) == 1 && SBYTE7(v9) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1013B6564(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1013B658C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1013B6654(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F33838;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1013B668C(void *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v3 = (a1[1] + (v2 >> 1));
  if (v2)
  {
    return (*(*v3 + v1))();
  }

  else
  {
    return v1(v3);
  }
}

uint64_t sub_1013B66D4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1013B6720(uint64_t **a1)
{
  v1 = **a1;
  v2 = *(v1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v12 = "";
    v13 = 2080;
    v14 = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%sstarted", buf, 0x16u);
    v2 = *(v1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v12 = "";
    v13 = 2080;
    v14 = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%sBootstrap complete, re-pushing labels", buf, 0x16u);
  }

  std::mutex::lock((v1 + 984));
  sub_100796040(v1 + 1080, v1 + 1080);
  v3 = *(v1 + 1072);
  if (v3)
  {
    (*(*v3 + 48))(v3, v1 + 1080);
  }

  std::mutex::unlock((v1 + 984));
  v4 = *(v1 + 640);
  if (v4)
  {
    v5 = *(v1 + 40);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 0xAAAAAAAAAAAAAAABLL * ((v4[1] - *v4) >> 4);
      *buf = 136315650;
      v12 = "";
      v13 = 2080;
      v14 = "";
      v15 = 2048;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%spersonalities has %zu initial event(s)", buf, 0x20u);
      v4 = *(v1 + 640);
    }

    v7 = *v4;
    if (v4[1] != *v4)
    {
      v8 = 0;
      v9 = 0;
      do
      {
        sub_101399700(v1, v7 + v8);
        ++v9;
        v7 = **(v1 + 640);
        v8 += 48;
      }

      while (v9 < 0xAAAAAAAAAAAAAAABLL * ((*(*(v1 + 640) + 8) - v7) >> 4));
    }

    v10 = *(v1 + 648);
    *(v1 + 640) = 0u;
    if (v10)
    {
      sub_100004A34(v10);
    }
  }

  operator delete();
}

uint64_t *sub_1013B69D8(uint64_t *a1)
{
  v1 = *a1;
  v33 = a1;
  v34 = v1;
  v2 = (v1 + 16);
  v3 = *v1;
  v4 = (*v1 + 792);
  v5 = (*v1 + 800);
  v6 = *v5;
  if (!*v5)
  {
    goto LABEL_10;
  }

  v7 = (*v1 + 800);
  while (1)
  {
    while (1)
    {
      v8 = v6;
      if ((sub_1000068BC((v1 + 16), v6 + 32) & 0x80) == 0)
      {
        break;
      }

      v6 = *v8;
      v7 = v8;
      if (!*v8)
      {
        goto LABEL_10;
      }
    }

    if ((sub_1000068BC(v8 + 4, (v1 + 16)) & 0x80) == 0)
    {
      break;
    }

    v7 = (v8 + 8);
    v6 = *(v8 + 1);
    if (!v6)
    {
      goto LABEL_10;
    }
  }

  v9 = *v7;
  if (!*v7)
  {
LABEL_10:
    operator new();
  }

  v11 = *(v1 + 40);
  v10 = *(v1 + 48);
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 16), 1uLL, memory_order_relaxed);
  }

  v12 = *(v9 + 64);
  *(v9 + 56) = v11;
  *(v9 + 64) = v10;
  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }

  v13 = *(v3 + 40);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    if (*(v1 + 39) < 0)
    {
      v2 = *v2;
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = v2;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I added observer: '%s'", &buf, 0xCu);
  }

  std::mutex::lock((v3 + 680));
  v14 = *(v3 + 776);
  v15 = *(v3 + 784);
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v35 = v14;
  v36 = v15;
  std::mutex::unlock((v3 + 680));
  if (v14)
  {
    (*(**(v1 + 40) + 24))(*(v1 + 40), &v35);
  }

  buf = 0uLL;
  v39 = 0;
  v16 = *v4;
  if (*v4 != v5)
  {
    while (1)
    {
      v17 = *(v16 + 8);
      if (v17)
      {
        v18 = std::__shared_weak_count::lock(v17);
        if (v18 && *(v16 + 7))
        {
LABEL_30:
          sub_100004A34(v18);
          goto LABEL_31;
        }
      }

      else
      {
        v18 = 0;
      }

      sub_100005308(&buf, v16 + 2);
      if (v18)
      {
        goto LABEL_30;
      }

LABEL_31:
      v19 = *(v16 + 1);
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
          v20 = *(v16 + 2);
          v21 = *v20 == v16;
          v16 = v20;
        }

        while (!v21);
      }

      v16 = v20;
      if (v20 == v5)
      {
        v23 = *(&buf + 1);
        for (i = buf; i != v23; i += 24)
        {
          v24 = *(v3 + 40);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            v25 = i;
            if (i[23] < 0)
            {
              v25 = *i;
            }

            *v37 = 136315138;
            *&v37[4] = v25;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I removed observer: '%s'", v37, 0xCu);
          }

          v26 = *v5;
          if (*v5)
          {
            v27 = v5;
            do
            {
              v28 = sub_1000068BC(v26 + 4, i);
              if ((v28 & 0x80u) == 0)
              {
                v27 = v26;
              }

              v26 = *&v26[(v28 >> 4) & 8];
            }

            while (v26);
            if (v27 != v5 && (sub_1000068BC(i, v27 + 32) & 0x80) == 0)
            {
              v29 = *(v27 + 1);
              v30 = v27;
              if (v29)
              {
                do
                {
                  v31 = v29;
                  v29 = *v29;
                }

                while (v29);
              }

              else
              {
                do
                {
                  v31 = *(v30 + 2);
                  v21 = *v31 == v30;
                  v30 = v31;
                }

                while (!v21);
              }

              if (*v4 == v27)
              {
                *v4 = v31;
              }

              --*(v3 + 808);
              sub_100018288(*(v3 + 800), v27);
              sub_1007676EC((v27 + 2));
              operator delete(v27);
            }
          }
        }

        break;
      }
    }
  }

  *v37 = &buf;
  sub_1000087B4(v37);
  if (v36)
  {
    sub_100004A34(v36);
  }

  sub_1013B6E84(&v34);
  return sub_1000049E0(&v33);
}

void sub_1013B6E20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  va_copy(va2, va1);
  v8 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  sub_1013B6F00(va2);
  sub_1013B6E84(va1);
  sub_1000049E0(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1013B6E84(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    v2 = *(v1 + 48);
    if (v2)
    {
      sub_100004A34(v2);
    }

    if (*(v1 + 39) < 0)
    {
      operator delete(*(v1 + 16));
    }

    v3 = *(v1 + 8);
    if (v3)
    {
      dispatch_group_leave(v3);
      v4 = *(v1 + 8);
      if (v4)
      {
        dispatch_release(v4);
      }
    }

    operator delete();
  }

  return a1;
}

uint64_t sub_1013B6F00(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_1007676EC(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t *sub_1013B6F4C(uint64_t **a1, uint64_t ***a2, uint64_t a3)
{
  v4 = 0;
  result = sub_100005C2C(a1, &v4, a2);
  if (!*result)
  {
    operator new();
  }

  return result;
}

void sub_1013B7040(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F338B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

char *sub_1013B70C4(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  if (*(a2 + 47) < 0)
  {
    sub_100005F2C(__dst + 24, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    *(__dst + 5) = *(a2 + 5);
    *(__dst + 24) = v5;
  }

  v6 = a2[3];
  *(__dst + 63) = *(a2 + 63);
  *(__dst + 3) = v6;
  if (*(a2 + 95) < 0)
  {
    sub_100005F2C(__dst + 72, *(a2 + 9), *(a2 + 10));
  }

  else
  {
    v7 = *(a2 + 72);
    *(__dst + 11) = *(a2 + 11);
    *(__dst + 72) = v7;
  }

  __dst[96] = *(a2 + 96);
  return __dst;
}

void sub_1013B717C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1013B71B0(uint64_t **a1, int a2, _DWORD **a3)
{
  v3 = a1[1];
  if (!v3)
  {
LABEL_8:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v3;
      v5 = *(v3 + 8);
      if (v5 <= a2)
      {
        break;
      }

      v3 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= a2)
    {
      return v4;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }
}

void sub_1013B729C(uint64_t **a1)
{
  v1 = a1;
  sub_1013AED2C(**a1);
  operator delete();
}

void *sub_1013B731C(uint64_t **a1, uint64_t ***a2, uint64_t a3)
{
  v4 = 0;
  result = *sub_100005C2C(a1, &v4, a2);
  if (!result)
  {
    sub_1013B73A8();
  }

  return result;
}

void sub_1013B743C(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1000E16DC(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1013B74F0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1013B753C(uint64_t a1)
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

uint64_t sub_1013B7654(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1013B7738(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1013B7818(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1000E16DC(v3, v2);
  _Unwind_Resume(a1);
}

void sub_1013B7834(uint64_t **a1, char *a2)
{
  v3 = sub_100007A6C(a1, a2);
  if (a1 + 1 != v3)
  {
    v4 = v3;
    sub_100D7A2B0(a1, v3);
    sub_10017050C((v4 + 4));

    operator delete(v4);
  }
}

uint64_t sub_1013B7934(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1013B79A0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F33B18;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t *sub_1013B7A24(uint64_t *a1)
{
  v11 = a1;
  v2 = a1[2];
  if (v2)
  {
    v3 = *a1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[1])
      {
        v6 = *(v3 + 816);
        if (v6 && a1[3] == v6)
        {
          v8 = *(v3 + 40);
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            asString();
            v9 = v13 >= 0 ? &__p : __p;
            *buf = 136315650;
            v15 = "";
            v16 = 2080;
            v17 = "";
            v18 = 2080;
            v19 = v9;
            _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%sfiring complete: %s", buf, 0x20u);
            if (v13 < 0)
            {
              operator delete(__p);
            }
          }

          sub_10139ECB0(v3);
        }

        else
        {
          v7 = *(v3 + 40);
          if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v15 = "";
            v16 = 2080;
            v17 = "";
            _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "#E %s%sfiring was canceled before completion", buf, 0x16u);
          }
        }
      }

      sub_100004A34(v5);
    }
  }

  return sub_1004889B4(&v11);
}

void sub_1013B7BEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_100004A34(v9);
  sub_1004889B4(&a9);
  _Unwind_Resume(a1);
}

void sub_1013B7C2C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F33B68;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t *sub_1013B7C88(uint64_t **a1, int a2, _DWORD **a3)
{
  v3 = a1[1];
  if (!v3)
  {
LABEL_8:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v3;
      v5 = *(v3 + 8);
      if (v5 <= a2)
      {
        break;
      }

      v3 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= a2)
    {
      return v4;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *sub_1013B7D98(uint64_t *a1)
{
  v1 = *a1;
  v14 = a1;
  v15 = v1;
  v2 = *v1;
  v3 = *(*v1 + 656);
  v5 = *v3;
  v4 = v3[1];
  if (*v3 != v4)
  {
    while (!sub_100071DF8((*v5 + 24), (v1 + 8)))
    {
      v5 += 16;
      if (v5 == v4)
      {
        v5 = v4;
        break;
      }
    }

    v4 = *(*(v2 + 656) + 8);
  }

  if (v5 != v4)
  {
    v6 = *(*v5 + 66);
    if (*(v1 + 32) == v6)
    {
      v7 = *(v2 + 40);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(v1 + 31);
        v9 = (v8 & 0x80u) != 0;
        v10 = *(v1 + 8);
        if ((v8 & 0x80u) != 0)
        {
          v8 = *(v1 + 16);
        }

        if (!v9)
        {
          v10 = (v1 + 8);
        }

        if (v8)
        {
          v11 = v10;
        }

        else
        {
          v11 = "<invalid>";
        }

        v12 = "";
        *buf = 136315906;
        *&buf[4] = "";
        *&buf[12] = 2080;
        *&buf[14] = "";
        if (!v6)
        {
          v12 = "UN";
        }

        v18 = 2080;
        v19 = v11;
        v20 = 2080;
        v21 = v12;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%sPersonality %s %sauthorized", buf, 0x2Au);
      }

      v16 = 0uLL;
      sub_1004CA38C();
    }
  }

  sub_1003023A8(&v15);
  return sub_1000049E0(&v14);
}

void sub_1013B812C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, std::__shared_weak_count *a25, char a26)
{
  sub_101393148(&a18);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a25)
  {
    sub_100004A34(a25);
  }

  sub_1003023A8(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1013B8198(uint64_t *a1)
{
  v1 = *a1;
  v4 = a1;
  v5 = v1;
  v2 = *v1;
  v6 = 0;
  v7 = 0;
  sub_1013A1ECC(&v6, v2, v1 + 8, *(v1 + 32), *(v1 + 36));
  if (v6)
  {
    sub_101398148(v2, "setDataOnlyPlan", 1);
  }

  if (v7)
  {
    sub_100004A34(v7);
  }

  sub_1013B833C(&v5);
  return sub_1000049E0(&v4);
}

void sub_1013B82E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  v20 = *(v18 - 40);
  if (v20)
  {
    sub_100004A34(v20);
  }

  sub_1013B833C(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1013B833C(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    if (*(v1 + 31) < 0)
    {
      operator delete(*(v1 + 8));
    }

    operator delete();
  }

  return a1;
}

void sub_1013B83B4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F33BB8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t *sub_1013B8438(uint64_t **a1)
{
  v1 = *a1;
  v67 = a1;
  v68 = v1;
  v2 = *v1;
  if (*(*v1 + 96))
  {
    goto LABEL_132;
  }

  v3 = v1[1];
  v4 = *(v2 + 136);
  *(v2 + 136) = *v3;
  *v3 = v4;
  v5 = *(v2 + 144);
  *(v2 + 144) = v3[1];
  v3[1] = v5;
  v6 = *(v2 + 152);
  *(v2 + 152) = v3[2];
  v3[2] = v6;
  v7 = v1[1];
  v8 = *v7;
  v9 = *(v7 + 8);
  if (*v7 != v9)
  {
    while (v8[1] != 1 || subscriber::isEsimCapable())
    {
      v8 += 42;
      if (v8 == v9)
      {
        v8 = v9;
        break;
      }
    }
  }

  v11 = *(v2 + 136);
  v10 = *(v2 + 144);
  if (v11 != v10)
  {
    while (*(v11 + 4) != 1 || subscriber::isEsimCapable())
    {
      v11 += 168;
      if (v11 == v10)
      {
        v11 = v10;
        break;
      }
    }

    v10 = *(v2 + 144);
  }

  if (v11 != v10)
  {
    if (v8 == *(v7 + 8))
    {
      v12 = 0;
      v13 = *v11 == 0;
    }

    else
    {
      v12 = *v8 != 0;
      v13 = *v11 == 0;
      if (*v11)
      {
        v14 = 1;
      }

      else
      {
        v14 = *v8 == 0;
      }

      if (!v14)
      {
        v15 = *(v2 + 40);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          *&buf[4] = "";
          *&buf[12] = 2080;
          *&buf[14] = "";
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I %s%s4FF slot become hidden", buf, 0x16u);
        }

        v16 = *(v2 + 656);
        v18 = *v16;
        v17 = v16[1];
        while (v18 != v17)
        {
          if (!*(*v18 + 49) && (*(*v18 + 61) & 1) == 0 && isReal())
          {
            v29 = *v18;
            if (*(*v18 + 64))
            {
              v30 = *(v2 + 40);
              if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
              {
                v33 = *(v29 + 24);
                v32 = v29 + 24;
                v31 = v33;
                v34 = *(v32 + 23);
                v35 = (v34 & 0x80u) != 0;
                if ((v34 & 0x80u) != 0)
                {
                  v34 = *(v32 + 8);
                }

                if (!v35)
                {
                  v31 = v32;
                }

                *buf = 136315650;
                *&buf[4] = "";
                if (!v34)
                {
                  v31 = "<invalid>";
                }

                *&buf[12] = 2080;
                *&buf[14] = "";
                *&buf[22] = 2080;
                v72 = v31;
                _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I %s%s%s become hidden 4FF", buf, 0x20u);
                v29 = *v18;
              }

              sub_1013B731C((v2 + 536), (v29 + 24), v29 + 24);
              sub_101393188(v2, (v2 + 536), @"Detached4FFSims", "hidden-4FF-sims", 1);
            }

            break;
          }

          v18 += 2;
        }

LABEL_76:
        if (*(v11 + 12) == 3 && *(v2 + 552))
        {
          v36 = *(v2 + 536);
          v37 = (v2 + 544);
          if (v36 != (v2 + 544))
          {
            do
            {
              (*(**(v2 + 120) + 24))(buf);
              v38 = *buf;
              LOBYTE(__p[0]) = 0;
              if (*buf)
              {
                v39 = CFGetTypeID(*buf);
                if (v39 == CFBooleanGetTypeID())
                {
                  ctu::cf::assign(__p, v38, v40);
                }
              }

              v41 = __p[0];
              sub_10000A1EC(buf);
              v42 = *(v2 + 656);
              v44 = *v42;
              v43 = *(v42 + 8);
              if (*v42 != v43)
              {
                while (!sub_100071DF8((*v44 + 24), v36 + 4))
                {
                  v44 += 2;
                  if (v44 == v43)
                  {
                    v44 = v43;
                    break;
                  }
                }

                v43 = *(v42 + 8);
              }

              if (v44 == v43)
              {
                v46 = 0;
              }

              else
              {
                v46 = *v44;
                v45 = v44[1];
                if (v45)
                {
                  atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
                  sub_100004A34(v45);
                  if (!v46)
                  {
                    goto LABEL_93;
                  }

                  goto LABEL_105;
                }
              }

              if (!v46)
              {
LABEL_93:
                if ((v41 & 1) == 0 && v2 + 520 == sub_100007A6C(v2 + 512, v36 + 32))
                {
                  v47 = *(v2 + 40);
                  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
                  {
                    v48 = *(v36 + 55);
                    v49 = (v48 & 0x80u) != 0;
                    if ((v48 & 0x80u) != 0)
                    {
                      v48 = v36[5];
                    }

                    if (v49)
                    {
                      v50 = v36[4];
                    }

                    else
                    {
                      v50 = (v36 + 4);
                    }

                    v14 = v48 == 0;
                    v51 = "<invalid>";
                    if (!v14)
                    {
                      v51 = v50;
                    }

                    *buf = 136315650;
                    *&buf[4] = "";
                    *&buf[12] = 2080;
                    *&buf[14] = "";
                    *&buf[22] = 2080;
                    v72 = v51;
                    _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "#I %s%sSIM %s disappeared from hidden physical slot 1", buf, 0x20u);
                  }

                  sub_1013B731C((v2 + 512), v36 + 4, (v36 + 4));
                }
              }

LABEL_105:
              v52 = v36[1];
              if (v52)
              {
                do
                {
                  v53 = v52;
                  v52 = *v52;
                }

                while (v52);
              }

              else
              {
                do
                {
                  v53 = v36[2];
                  v14 = *v53 == v36;
                  v36 = v53;
                }

                while (!v14);
              }

              v36 = v53;
            }

            while (v53 != v37);
          }

          sub_100009970(v2 + 536, *(v2 + 544));
          *(v2 + 536) = v37;
          *(v2 + 544) = 0u;
          sub_101393188(v2, (v2 + 536), @"Detached4FFSims", "hidden-4FF-sims", 1);
        }

        goto LABEL_112;
      }
    }

    if (v13 || v12 || (v19 = *(v2 + 40), !os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT)))
    {
      if (v13)
      {
        goto LABEL_76;
      }
    }

    else
    {
      *buf = 136315394;
      *&buf[4] = "";
      *&buf[12] = 2080;
      *&buf[14] = "";
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I %s%s4FF slot become unhidden", buf, 0x16u);
    }

    if (!*(v2 + 552))
    {
      goto LABEL_76;
    }

    v20 = *(v11 + 95);
    if (v20 < 0)
    {
      if (!*(v11 + 80))
      {
        goto LABEL_76;
      }
    }

    else if (!*(v11 + 95))
    {
      goto LABEL_76;
    }

    __p[0] = 0;
    __p[1] = 0;
    v70 = 0;
    v21 = *(v2 + 536);
    if (*(v21 + 55) < 0)
    {
      sub_100005F2C(__p, *(v21 + 32), *(v21 + 40));
      if ((*(v11 + 95) & 0x80) == 0)
      {
        goto LABEL_40;
      }
    }

    else
    {
      *__p = *(v21 + 32);
      v70 = *(v21 + 48);
      if ((v20 & 0x80) == 0)
      {
LABEL_40:
        *buf = *(v11 + 72);
        *&buf[16] = *(v11 + 88);
LABEL_43:
        v22 = sub_100071DF8(__p, buf);
        if (buf[23] < 0)
        {
          operator delete(*buf);
        }

        if (v22)
        {
          v23 = *(v2 + 40);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            v24 = HIBYTE(v70);
            if (v70 < 0)
            {
              v24 = __p[1];
            }

            v25 = __p;
            if (v70 < 0)
            {
              v25 = __p[0];
            }

            *buf = 136315650;
            *&buf[4] = "";
            if (!v24)
            {
              v25 = "<invalid>";
            }

            *&buf[12] = 2080;
            *&buf[14] = "";
            *&buf[22] = 2080;
            v72 = v25;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I %s%s%s stop being hidden 4FF", buf, 0x20u);
          }
        }

        else if (v2 + 520 == sub_100007A6C(v2 + 512, __p))
        {
          v26 = *(v2 + 40);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            v27 = HIBYTE(v70);
            if (v70 < 0)
            {
              v27 = __p[1];
            }

            v28 = __p;
            if (v70 < 0)
            {
              v28 = __p[0];
            }

            *buf = 136315650;
            *&buf[4] = "";
            if (!v27)
            {
              v28 = "<invalid>";
            }

            *&buf[12] = 2080;
            *&buf[14] = "";
            *&buf[22] = 2080;
            v72 = v28;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I %s%sSIM %s replaced in hidden physical slot 1", buf, 0x20u);
          }

          sub_1013B6F4C((v2 + 512), __p, __p);
        }

        sub_100009970(v2 + 536, *(v2 + 544));
        *(v2 + 536) = v2 + 544;
        *(v2 + 544) = 0u;
        sub_101393188(v2, (v2 + 536), @"Detached4FFSims", "hidden-4FF-sims", 1);
        if (SHIBYTE(v70) < 0)
        {
          operator delete(__p[0]);
        }

        goto LABEL_76;
      }
    }

    sub_100005F2C(buf, *(v11 + 72), *(v11 + 80));
    goto LABEL_43;
  }

LABEL_112:
  if (sub_10138DA4C())
  {
    v55 = 0;
    do
    {
      v56 = subscriber::instanceAsSimSlot(v55, v54);
      v57 = *(v2 + 136);
      v58 = *(v2 + 144);
      if (v57 != v58)
      {
        while (*v57 != v56)
        {
          v57 += 42;
          if (v57 == v58)
          {
            goto LABEL_130;
          }
        }
      }

      if (v57 != v58)
      {
        v59 = v57[1];
        if (v59)
        {
          v60 = *v7;
          v61 = *(v7 + 8);
          if (*v7 != v61)
          {
            while (*v60 != v56)
            {
              v60 += 42;
              if (v60 == v61)
              {
                goto LABEL_130;
              }
            }
          }

          if (v60 != v61)
          {
            v62 = v60[1];
            if (v62)
            {
              v63 = v59 == v62;
            }

            else
            {
              v63 = 1;
            }

            if (!v63)
            {
              *(*(v2 + 344) + 4 * v55) = 0;
            }
          }
        }
      }

LABEL_130:
      v64 = sub_10138DA4C();
      v65 = v55 + 1;
      v55 = 1;
    }

    while (v65 < v64);
  }

  memset(buf, 0, sizeof(buf));
  sub_101393E20(v2, buf);
  __p[0] = buf;
  sub_1013B1D50(__p);
LABEL_132:
  sub_10032EAB4(&v68);
  return sub_1000049E0(&v67);
}

void sub_1013B8CD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_10032EAB4(&a12);
  sub_1000049E0(&a11);
  _Unwind_Resume(a1);
}

uint64_t *sub_1013B8D48(uint64_t *a1)
{
  v1 = *a1;
  v61 = a1;
  v62 = v1;
  v2 = *v1;
  memset(v71, 0, sizeof(v71));
  (*(**(v2 + 120) + 88))(*(v2 + 120), v1 + 8);
  v3 = *(v2 + 656);
  v5 = *v3;
  v4 = v3[1];
  if (*v3 != v4)
  {
    while (!sub_100071DF8((*v5 + 24), (v1 + 8)))
    {
      v5 += 16;
      if (v5 == v4)
      {
        v5 = v4;
        break;
      }
    }

    v3 = *(v2 + 656);
    v4 = v3[1];
  }

  if (v5 == v4)
  {
    v7 = *v3;
    if (*v3 != v4)
    {
      while (*(*v7 + 49) != 1)
      {
        v7 += 16;
        if (v7 == v4)
        {
          goto LABEL_75;
        }
      }
    }

    if (v7 != v4)
    {
      v8 = *(v2 + 40);
      v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
      v10 = *v7;
      if (v9)
      {
        v13 = *(v10 + 24);
        v11 = (v10 + 24);
        v12 = v13;
        v14 = *(v11 + 23);
        v15 = (v14 & 0x80u) != 0;
        if ((v14 & 0x80u) != 0)
        {
          v14 = *(v11 + 1);
        }

        if (v15)
        {
          v11 = v12;
        }

        *buf = 136315650;
        *&buf[4] = "";
        if (!v14)
        {
          v11 = "<invalid>";
        }

        *&buf[12] = 2080;
        *&buf[14] = "";
        *&buf[22] = 2080;
        *&buf[24] = v11;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%sPersonality %s is gone", buf, 0x20u);
        v10 = *v7;
      }

      if (*(v10 + 47) < 0)
      {
        sub_100005F2C(__dst, *(v10 + 24), *(v10 + 32));
      }

      else
      {
        *__dst = *(v10 + 24);
        *&__dst[16] = *(v10 + 40);
      }

      LOBYTE(v83) = 7;
      if (__dst[23] < 0)
      {
        sub_100005F2C(buf, *__dst, *&__dst[8]);
        v29 = v83;
      }

      else
      {
        *buf = *__dst;
        *&buf[16] = *&__dst[16];
        v29 = 7;
      }

      buf[24] = v29;
      *&v75 = *v7;
      v30 = *(v7 + 8);
      *(&v75 + 1) = v30;
      if (v30)
      {
        atomic_fetch_add_explicit((v30 + 8), 1uLL, memory_order_relaxed);
      }

      sub_101392F88(v71, buf);
      if (*(&v75 + 1))
      {
        sub_100004A34(*(&v75 + 1));
      }

      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      if (__dst[23] < 0)
      {
        operator delete(*__dst);
      }

      v31 = *(v2 + 656);
      v32 = sub_10124CB1C((v7 + 16), *(v31 + 8), v7);
      for (i = *(v31 + 8); i != v32; i -= 16)
      {
        v34 = *(i - 8);
        if (v34)
        {
          sub_100004A34(v34);
        }
      }

      *(v31 + 8) = v32;
    }

LABEL_75:
    if (*(v1 + 55) < 0)
    {
      v36 = *(v1 + 40);
      if (!v36)
      {
        goto LABEL_94;
      }

      v35 = *(v2 + 120);
      sub_100005F2C(__p, *(v1 + 32), v36);
    }

    else
    {
      if (!*(v1 + 55))
      {
        goto LABEL_94;
      }

      v35 = *(v2 + 120);
      *__p = *(v1 + 32);
      v70 = *(v1 + 48);
    }

    if (SHIBYTE(v70) < 0)
    {
      sub_100005F2C(__dst, __p[0], __p[1]);
    }

    else
    {
      *__dst = *__p;
      *&__dst[16] = v70;
    }

    v65[0] = 0;
    if (__dst[23] < 0)
    {
      sub_100005F2C(buf, *__dst, *&__dst[8]);
    }

    else
    {
      *buf = *__dst;
      *&buf[16] = *&__dst[16];
    }

    *&v72 = 0;
    if (ctu::cf::convert_copy())
    {
      v37 = v65[0];
      v65[0] = v72;
      v67[0] = v37;
      sub_100005978(v67);
    }

    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    v63[0] = v65[0];
    v65[0] = 0;
    sub_100005978(v65);
    if (__dst[23] < 0)
    {
      operator delete(*__dst);
    }

    (*(*v35 + 16))(v35, v1 + 8, @"mdn", v63[0], @"info", 0, 0, 0);
    sub_100005978(v63);
    if (SHIBYTE(v70) < 0)
    {
      operator delete(__p[0]);
    }

LABEL_94:
    v72 = 0uLL;
    sub_1013922EC(&v72, v2, (v1 + 8), 0);
  }

  v6 = *(v1 + 55);
  if (v6 < 0)
  {
    if (!*(v1 + 40))
    {
      goto LABEL_95;
    }
  }

  else if (!*(v1 + 55))
  {
    goto LABEL_95;
  }

  v16 = (v1 + 32);
  v17 = *v5;
  v18 = *(*v5 + 95);
  if (v18 >= 0)
  {
    v19 = *(*v5 + 95);
  }

  else
  {
    v19 = *(*v5 + 80);
  }

  v20 = *(v1 + 40);
  if (v6 >= 0)
  {
    v21 = *(v1 + 55);
  }

  else
  {
    v21 = *(v1 + 40);
  }

  if (v19 != v21 || ((v24 = *(v17 + 72), v22 = (v17 + 72), v23 = v24, v18 >= 0) ? (v25 = v22) : (v25 = v23), v6 >= 0 ? (v26 = (v1 + 32)) : (v26 = *v16), memcmp(v25, v26, v19)))
  {
    v27 = *(v2 + 120);
    if ((v6 & 0x80000000) != 0)
    {
      sub_100005F2C(__p, *v16, v20);
    }

    else
    {
      *__p = *v16;
      v70 = *(v1 + 48);
    }

    if (SHIBYTE(v70) < 0)
    {
      sub_100005F2C(__dst, __p[0], __p[1]);
    }

    else
    {
      *__dst = *__p;
      *&__dst[16] = v70;
    }

    v65[0] = 0;
    if (__dst[23] < 0)
    {
      sub_100005F2C(buf, *__dst, *&__dst[8]);
    }

    else
    {
      *buf = *__dst;
      *&buf[16] = *&__dst[16];
    }

    *&v72 = 0;
    if (ctu::cf::convert_copy())
    {
      v28 = v65[0];
      v65[0] = v72;
      v67[0] = v28;
      sub_100005978(v67);
    }

    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    v63[0] = v65[0];
    v65[0] = 0;
    sub_100005978(v65);
    if (__dst[23] < 0)
    {
      operator delete(*__dst);
    }

    (*(*v27 + 16))(v27, v1 + 8, @"mdn", v63[0], @"info", 0, 0, 0);
    sub_100005978(v63);
    if (SHIBYTE(v70) < 0)
    {
      operator delete(__p[0]);
    }

    *buf = 0;
    *&buf[8] = 0;
    sub_1004CA38C();
  }

LABEL_95:
  if ((*(v1 + 79) & 0x8000000000000000) != 0)
  {
    if (!*(v1 + 64))
    {
      goto LABEL_159;
    }
  }

  else if (!*(v1 + 79))
  {
    goto LABEL_159;
  }

  v38 = sub_100007A6C(v2 + 904, (v1 + 8));
  if (v2 + 912 == v38)
  {
    goto LABEL_112;
  }

  v39 = *(v38 + 127);
  if (v39 >= 0)
  {
    v40 = *(v38 + 127);
  }

  else
  {
    v40 = *(v38 + 112);
  }

  v41 = *(v1 + 79);
  v42 = v41;
  if ((v41 & 0x80u) != 0)
  {
    v41 = *(v1 + 64);
  }

  if (v40 != v41)
  {
    goto LABEL_112;
  }

  v45 = *(v38 + 104);
  v43 = (v38 + 104);
  v44 = v45;
  if (v39 < 0)
  {
    v43 = v44;
  }

  v46 = v42 >= 0 ? (v1 + 56) : *(v1 + 56);
  if (memcmp(v43, v46, v40))
  {
LABEL_112:
    sub_10000501C(v65, "");
    sub_10000501C(v63, "");
    v47 = *(v2 + 656);
    v48 = *v47;
    v49 = *(v47 + 8);
    if (*v47 != v49)
    {
      while (!sub_100071DF8((*v48 + 24), (v1 + 8)))
      {
        v48 += 2;
        if (v48 == v49)
        {
          v48 = v49;
          break;
        }
      }

      v49 = *(v47 + 8);
    }

    if (v48 == v49)
    {
      v51 = 0;
    }

    else
    {
      v50 = *v48;
      v51 = v48[1];
      if (v51)
      {
        atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v67[0] = 0;
      v67[1] = 0;
      v68 = 0;
      if (v50)
      {
        if (*(v50 + 95) < 0)
        {
          sub_100005F2C(v67, *(v50 + 72), *(v50 + 80));
        }

        else
        {
          *v67 = *(v50 + 72);
          v68 = *(v50 + 88);
        }

        goto LABEL_125;
      }
    }

    v67[0] = 0;
    v67[1] = 0;
    v68 = 0;
LABEL_125:
    v80 = 0u;
    memset(&v81, 0, sizeof(v81));
    *v78 = 0u;
    *v79 = 0u;
    *v76 = 0u;
    v77 = 0u;
    v75 = 0u;
    memset(buf, 0, sizeof(buf));
    memset(__dst, 0, sizeof(__dst));
    v72 = 0uLL;
    v73 = 0;
    sub_1013B1DD4(buf, (v1 + 56), v65, v63, 1, v67, __dst, &v72);
    v52 = *(v2 + 40);
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
    {
      v53 = *(v1 + 31);
      v55 = *(v1 + 8);
      v54 = *(v1 + 16);
      asString();
      if ((v53 & 0x80u) == 0)
      {
        v56 = v53;
      }

      else
      {
        v56 = v54;
      }

      if ((v53 & 0x80u) == 0)
      {
        v57 = (v1 + 8);
      }

      else
      {
        v57 = v55;
      }

      v58 = v72;
      *__dst = 136315906;
      if (!v56)
      {
        v57 = "<invalid>";
      }

      *&__dst[4] = "";
      *&__dst[12] = 2080;
      if (v73 >= 0)
      {
        v58 = &v72;
      }

      *&__dst[14] = "";
      *&__dst[22] = 2080;
      v83 = v57;
      v84 = 2080;
      v85 = v58;
      _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "#I %s%screateThumperLabel, %s <- %s", __dst, 0x2Au);
      if (SHIBYTE(v73) < 0)
      {
        operator delete(v72);
      }
    }

    *__dst = v1 + 8;
    v59 = sub_1013BBEE8((v2 + 904), (v1 + 8), __dst);
    std::string::operator=((v59 + 56), buf);
    std::string::operator=((v59 + 80), &buf[24]);
    std::string::operator=((v59 + 104), v76);
    *(v59 + 128) = BYTE8(v77);
    std::string::operator=((v59 + 136), v78);
    std::string::operator=((v59 + 160), &v79[1]);
    std::string::operator=((v59 + 184), &v81);
    if (SHIBYTE(v68) < 0)
    {
      operator delete(v67[0]);
    }

    if (v51)
    {
      sub_100004A34(v51);
    }

    if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v81.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v80) < 0)
    {
      operator delete(v79[1]);
    }

    if (SHIBYTE(v79[0]) < 0)
    {
      operator delete(v78[0]);
    }

    if (SBYTE7(v77) < 0)
    {
      operator delete(v76[0]);
    }

    if (SHIBYTE(v75) < 0)
    {
      operator delete(*&buf[24]);
    }

    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    if (v64 < 0)
    {
      operator delete(v63[0]);
    }

    if (v66 < 0)
    {
      operator delete(v65[0]);
    }

    sub_10139C67C(v2, "Thumper label added", 0);
  }

LABEL_159:
  *__dst = v71;
  sub_1013B1D50(__dst);
  sub_100DFF53C(&v62);
  return sub_1000049E0(&v61);
}