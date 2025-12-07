void sub_1001D64DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((a23 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a29 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((a23 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a18);
  if ((a29 & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(v29 - 57) & 0x80000000) == 0)
    {
LABEL_10:
      _Unwind_Resume(exception_object);
    }

LABEL_9:
    operator delete(*(v29 - 80));
    _Unwind_Resume(exception_object);
  }

LABEL_8:
  operator delete(a24);
  if ((*(v29 - 57) & 0x80000000) == 0)
  {
    goto LABEL_10;
  }

  goto LABEL_9;
}

void sub_1001D6580(uint64_t a1, void *a2)
{
  if (qword_10045B050 != -1)
  {
    sub_1003852A8();
  }

  v4 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
  {
    v5 = a2[1];
    v7 = a2[3];
    v6 = a2[4];
    sub_1001D6724(&__p, ",", a2 + 6);
    v8 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    *buf = 134218755;
    v13 = v5;
    v14 = 2053;
    v15 = v7;
    v16 = 2053;
    v17 = v6;
    v18 = 2081;
    v19 = v8;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "receiveLocalizerUniverseState = {timestampNanos=%lld,latlon={ lat=%{sensitive}.18f,lon=%{sensitive}.18f }, locationGroupIds={%{private}s} }", buf, 0x2Au);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  std::mutex::lock((a1 + 1680));
  v9 = *(a1 + 1744);
  for (i = *(a1 + 1752); v9 != i; ++v9)
  {
    (*(**v9 + 24))(*v9, a2);
  }

  std::mutex::unlock((a1 + 1680));
}

unint64_t *sub_1001D6724@<X0>(std::string *__return_ptr a1@<X8>, char *__s@<X1>, unint64_t *result@<X0>)
{
  v5 = *result;
  v6 = result[1];
  *&a1->__r_.__value_.__r.__words[1] = 0uLL;
  a1->__r_.__value_.__r.__words[0] = 0;
  if (v5 == v6)
  {
    goto LABEL_10;
  }

  v7 = *(v5 + 23);
  if (v7 >= 0)
  {
    v8 = v5;
  }

  else
  {
    v8 = *v5;
  }

  if (v7 >= 0)
  {
    v9 = *(v5 + 23);
  }

  else
  {
    v9 = *(v5 + 8);
  }

  for (result = sub_100026F84(a1, a1, v8, &v8[v9], v9); ; result = sub_100026F84(a1, v15 + v14, v17, &v17[v18], v18))
  {
    v5 += 24;
LABEL_10:
    if (v5 == v6)
    {
      break;
    }

    v10 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
    if (v10 >= 0)
    {
      v11 = a1;
    }

    else
    {
      v11 = a1->__r_.__value_.__r.__words[0];
    }

    if (v10 >= 0)
    {
      size = HIBYTE(a1->__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = a1->__r_.__value_.__l.__size_;
    }

    v13 = strlen(__s);
    sub_1000272BC(a1, v11 + size, __s, &__s[v13], v13);
    v14 = HIBYTE(a1->__r_.__value_.__r.__words[2]);
    if ((v14 & 0x80u) == 0)
    {
      v15 = a1;
    }

    else
    {
      v15 = a1->__r_.__value_.__r.__words[0];
    }

    if ((v14 & 0x80u) != 0)
    {
      v14 = a1->__r_.__value_.__l.__size_;
    }

    v16 = *(v5 + 23);
    if (v16 >= 0)
    {
      v17 = v5;
    }

    else
    {
      v17 = *v5;
    }

    if (v16 >= 0)
    {
      v18 = *(v5 + 23);
    }

    else
    {
      v18 = *(v5 + 8);
    }
  }

  return result;
}

void sub_1001D6824(_Unwind_Exception *a1)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

void sub_1001D6844(uint64_t a1, uint64_t a2)
{
  if (qword_10045B050 != -1)
  {
    sub_1003852A8();
  }

  v4 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a2 + 8);
    v6 = *(a2 + 16);
    v7 = *(a2 + 96);
    v8 = *(a2 + 40);
    v9 = *(a2 + 48);
    v20 = 134219009;
    v21 = v5;
    v22 = 2048;
    v23 = v6;
    v24 = 2048;
    v25 = v7;
    v26 = 2053;
    v27 = v8;
    v28 = 2053;
    v29 = v9;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "receiveGPS = {timestampNanos=%lld,systemTiemstampNanos=%lld,horizontalAccuracy=%f,latlon={ lat=%{sensitive}.18f, lon=%{sensitive}.18f} }", &v20, 0x34u);
  }

  sub_1002AED7C(a2, &v20);
  sub_1001D5F4C(a1, &v20);
  sub_10013CFA4(&v20);
  if (!sub_10017226C(a2))
  {
    if (qword_10045B050 != -1)
    {
      sub_100385280();
    }

    v12 = qword_10045B058;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
    {
      v15 = *(a2 + 64);
      v14 = a2 + 64;
      v13 = v15;
      if (*(v14 + 23) >= 0)
      {
        v13 = v14;
      }

      v20 = 136315138;
      v21 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "dropped a measurement with provider %s", &v20, 0xCu);
    }

    return;
  }

  if (**(a1 + 248) == 1 && *(a1 + 2178) != 1)
  {
    return;
  }

  if (*(a2 + 124) < 90)
  {
    if (qword_10045B050 != -1)
    {
      sub_100385280();
    }

    v10 = qword_10045B058;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v20) = 0;
      v11 = "Ignoring GPS-coarse.";
LABEL_13:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, v11, &v20, 2u);
      return;
    }

    return;
  }

  if (*(a1 + 688) != 1)
  {
    sub_1001300D0(a1 + 696, a2);
    *(a1 + 688) = 1;
    goto LABEL_24;
  }

  if (*(a2 + 8) > *(a1 + 704))
  {
    sub_1001300D4(a1 + 696, a2);
LABEL_24:
    if (qword_10045B050 != -1)
    {
      sub_100385280();
    }

    v16 = qword_10045B058;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
    {
      v17 = *(a1 + 792);
      v20 = 134217984;
      v21 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "fLastGpsLikePreciseLocation gps with accuracy %f", &v20, 0xCu);
    }

    if (*(a1 + 1536) == 1)
    {
      v18 = *(a1 + 1568);
      if (v18)
      {
        *(a1 + 1576) = v18;
        operator delete(v18);
      }

      v19 = *(a1 + 1544);
      if (v19)
      {
        *(a1 + 1552) = v19;
        operator delete(v19);
      }

      *(a1 + 1536) = 0;
    }

    if (sub_1002512E8(*(a1 + 248)))
    {
      sub_1001F823C(*(a1 + 176), a2);
      *(a1 + 304) = 1;
    }

    return;
  }

  if (qword_10045B050 != -1)
  {
    sub_100385280();
  }

  v10 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v20) = 0;
    v11 = "Ignoring GPS because older than last precise location";
    goto LABEL_13;
  }
}

void sub_1001D6BB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100339598();
  v5 = atomic_load(v4 + 20);
  if ((v5 & 1) != 0 || *(v4 + 16) == 1)
  {
    if ((*(v4 + 17) & 1) == 0)
    {
      return;
    }
  }

  else
  {
    v6 = v4;
    v7 = sub_100008F80(v4, v4 + 9);
    *(v6 + 17) = v7;
    *(v6 + 16) = 1;
    atomic_store(1u, v6 + 20);
    if (!v7)
    {
      return;
    }
  }

  if (sub_100321A9C(a2))
  {
    sub_100206964(&v40, a2);
    v8 = (v44 + 8);
    if (v43 >= 0)
    {
      v8 = &v45;
    }

    if (v43 == v43 >> 31)
    {
      v9 = v50 + 1;
    }

    else
    {
      v9 = v8;
    }

    v10 = *v9;
    v11 = sub_100339474();
    v12 = atomic_load(v11 + 26);
    if ((v12 & 1) == 0 && (v11[2] & 1) == 0)
    {
      v13 = v11;
      v14 = sub_100005C94(v11, v11 + 3);
      v11 = v13;
      *(v13 + 5) = v14;
      *(v13 + 16) = 1;
      atomic_store(1u, v13 + 26);
    }

    v15 = v10 + 1000000000 * *(v11 + 5);
    if ((*(a1 + 2016) & 1) == 0)
    {
      *(a1 + 2016) = 1;
    }

    *(a1 + 2024) = v15;
    v16 = v40 >> 31;
    if (v40 >> 31 == v40)
    {
      *&v28 = v41;
      v16 = v40;
    }

    else
    {
      v28 = v41;
      v29 = v42;
    }

    v27 = v16 ^ v40;
    v17 = v43;
    v18 = v43 >> 31;
    if (v43 >> 31 == v43)
    {
      v19 = v44 >> 31;
      if (v44 >> 31 == v44)
      {
        *&v32 = v45;
        v19 = v44;
      }

      else
      {
        v32 = v45;
        v33 = v46;
      }

      LODWORD(v31) = v19 ^ v44;
      v34 = v47;
      v35 = 0;
      if (v48 == 1)
      {
        v36 = v49;
        v35 = 1;
      }

      v37 = v50[0];
      v38 = v50[1];
      v39 = v51;
    }

    else
    {
      if (v43 >= 0)
      {
        v20 = &v44;
      }

      else
      {
        v20 = v44;
      }

      sub_100131324(&v31, v20);
      v17 = v43;
      v18 = v43 >> 31;
    }

    v30 = v18 ^ v17;
    memset(__p, 0, sizeof(__p));
    sub_1001E13CC(__p, &v27, &v40, 1uLL);
    v21 = (v44 + 8);
    if (v43 >= 0)
    {
      v21 = &v45;
    }

    if (v43 == v43 >> 31)
    {
      v22 = v50 + 1;
    }

    else
    {
      v22 = v21;
    }

    v23 = *v22;
    v24 = *(a1 + 144);
    v25[0] = *(a1 + 136);
    v25[1] = v24;
    if (v24)
    {
      atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
    }

    sub_1001D7118(a1, __p, 0, v23, v25);
  }
}

void sub_1001D7060(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x1001D6CA8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001D70E4(void *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    v3 = v2[9];
    __cxa_end_catch();
    v2[17] = v3;
    v2[16] = 1;
    atomic_store(1u, v2 + 20);
    if ((v3 & 1) == 0)
    {
      JUMPOUT(0x1001D7024);
    }

    JUMPOUT(0x1001D6C3CLL);
  }

  JUMPOUT(0x1001D70DCLL);
}

void sub_1001D7118(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = sub_100339754();
  v11 = atomic_load(v10 + 20);
  if ((v11 & 1) != 0 || *(v10 + 16) == 1)
  {
    v12 = *(v10 + 17);
  }

  else
  {
    v13 = v10;
    v12 = sub_100008F80(v10, v10 + 9);
    *(v13 + 17) = v12 & 1;
    *(v13 + 16) = 1;
    atomic_store(1u, v13 + 20);
  }

  v15 = *a2;
  v14 = a2[1];
  v73 = 0;
  v74 = 0;
  v72 = 0;
  v16 = v14 - v15;
  if (v16)
  {
    if (!((0x4EC4EC4EC4EC4EC5 * (v16 >> 4)) >> 61))
    {
      operator new();
    }

    sub_10000FC84();
  }

  sub_1001CE970(v65, &v72, a2, a4);
  if (v72)
  {
    v73 = v72;
    operator delete(v72);
  }

  (*(**a5 + 24))(*a5, a3, v65);
  if (*(a1 + 1536) == 1)
  {
    v17 = *(a1 + 1568);
    if (v17)
    {
      *(a1 + 1576) = v17;
      operator delete(v17);
    }

    v18 = *(a1 + 1544);
    if (v18)
    {
      *(a1 + 1552) = v18;
      operator delete(v18);
    }

    *(a1 + 1536) = 0;
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v19 = v65[0];
  if (v65[0])
  {
    v20 = v65[1];
    v21 = v65[0];
    if (v65[1] != v65[0])
    {
      v22 = v65[1] - 168;
      do
      {
        v24 = *(v20 - 44);
        if (v24 == v24 >> 31)
        {
          if (*(v20 - 128) == 1)
          {
            *(v20 - 128) = 0;
          }
        }

        else
        {
          v23 = *(v20 - 21);
          if (v24 < 0)
          {
            if (v23)
            {
              (*(*v23 + 8))(v23);
            }
          }

          else
          {
            (*v23)(v20 - 168);
          }
        }

        v20 -= 208;
        v22 -= 208;
      }

      while (v20 != v19);
      v21 = v65[0];
    }

    v65[1] = v19;
    operator delete(v21);
  }

  if ((sub_1001F9648(*(a1 + 176)) & 1) == 0)
  {
    v25 = *(a1 + 176);
    sub_1001D3EA4(a1, a4, v65);
    v72 = 0;
    v73 = 0;
    sub_1001F64EC(v25, a4, v65, &v72, a1 + 2184);
    v26 = v73;
    if (v73 && !atomic_fetch_add(v73 + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v26->__on_zero_shared)(v26);
      std::__shared_weak_count::__release_weak(v26);
    }

    v27 = v65[1];
    if (v65[1] && !atomic_fetch_add(v65[1] + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v27->__on_zero_shared)(v27);
      std::__shared_weak_count::__release_weak(v27);
    }
  }

  sub_1001CF344(a2, &v70);
  if (v71[0] != v71[1])
  {
    sub_10004DAA4(v65);
    *(__p + *(v66 - 3)) |= 0x800u;
    sub_1001E15E8(v71);
    if (v74 >= 0)
    {
      v28 = &v72;
    }

    else
    {
      v28 = v72;
    }

    if (v74 >= 0)
    {
      v29 = HIBYTE(v74);
    }

    else
    {
      v29 = v73;
    }

    sub_10003C2E4(&v66, v28, v29);
    if (SHIBYTE(v74) < 0)
    {
      operator delete(v72);
    }

    if (qword_10045B050 != -1)
    {
      sub_100385280();
    }

    v30 = qword_10045B058;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
    {
      std::stringbuf::str();
      v31 = v74 >= 0 ? &v72 : v72;
      *buf = 134218242;
      *&buf[4] = a4;
      *&buf[12] = 2080;
      *&buf[14] = v31;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "WARNING: Bad RSSI values @ t=%lld: %s", buf, 0x16u);
      if (SHIBYTE(v74) < 0)
      {
        operator delete(v72);
      }
    }

    v66 = v32;
    if (v69 < 0)
    {
      operator delete(v68);
    }

    std::locale::~locale(&__p[1]);
    std::iostream::~basic_iostream();
    std::ios::~ios();
  }

  sub_1001F9348(*(a1 + 176), &v60);
  sub_10018291C(&v59, &v60);
  v57[0] = 0;
  v57[1] = 0;
  v58 = 0;
  v72 = 0;
  v73 = 0;
  v74 = 0;
  prime = vcvtps_u32_f32(v63 / v64);
  if (prime == 1)
  {
    prime = 2;
  }

  else if ((prime & (prime - 1)) != 0)
  {
    prime = std::__next_prime(prime);
  }

  v34 = v61;
  if (prime > *&v61)
  {
    goto LABEL_63;
  }

  if (prime < *&v61)
  {
    v35 = vcvtps_u32_f32(v63 / v64);
    if (*&v61 < 3uLL || (v36 = vcnt_s8(v61), v36.i16[0] = vaddlv_u8(v36), v36.u32[0] > 1uLL))
    {
      v35 = std::__next_prime(v35);
    }

    else
    {
      v37 = 1 << -__clz(v35 - 1);
      if (v35 >= 2)
      {
        v35 = v37;
      }
    }

    if (prime <= v35)
    {
      prime = v35;
    }

    if (prime < *&v34)
    {
LABEL_63:
      sub_10000FE58(&v60, prime);
    }
  }

  v38 = v62;
  if (v62)
  {
    v39 = v73;
    do
    {
      while (v39 >= v74)
      {
        v39 = sub_100182F0C(&v72, v38 + 1);
        v73 = v39;
        v38 = *v38;
        if (!v38)
        {
          goto LABEL_81;
        }
      }

      *v39 = *(v38 + 2);
      v40 = *(v38 + 3);
      v39[1] = v40;
      if (v40)
      {
        atomic_fetch_add_explicit((v40 + 8), 1uLL, memory_order_relaxed);
      }

      v39 += 2;
      v73 = v39;
      v38 = *v38;
    }

    while (v38);
  }

LABEL_81:
  (*(**(a1 + 32) + 32))(v65);
  sub_100212210(v65, &v72, buf);
  v41 = v57[0];
  if (v57[0])
  {
    v42 = v57[1];
    v43 = v57[0];
    if (v57[1] != v57[0])
    {
      v44 = v57[1] - 168;
      do
      {
        v46 = *(v42 - 44);
        if (v46 == v46 >> 31)
        {
          if (*(v42 - 128) == 1)
          {
            *(v42 - 128) = 0;
          }
        }

        else
        {
          v45 = *(v42 - 21);
          if (v46 < 0)
          {
            if (v45)
            {
              (*(*v45 + 8))(v45);
            }
          }

          else
          {
            (*v45)(v42 - 168);
          }
        }

        v42 -= 208;
        v44 -= 208;
      }

      while (v42 != v41);
      v43 = v57[0];
    }

    v57[1] = v41;
    operator delete(v43);
  }

  *v57 = *buf;
  v58 = *&buf[16];
  memset(buf, 0, sizeof(buf));
  v47 = v66;
  if (v66)
  {
    do
    {
      v48 = *v47;
      sub_1001DF638(v47 + 2);
      operator delete(v47);
      v47 = v48;
    }

    while (v48);
  }

  v49 = v65[0];
  v65[0] = 0;
  if (v49)
  {
    operator delete(v49);
  }

  v50 = v72;
  if (v72)
  {
    v51 = v73;
    v52 = v72;
    if (v73 != v72)
    {
      do
      {
        v53 = *(v51 - 1);
        if (v53 && !atomic_fetch_add(&v53->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v53->__on_zero_shared)(v53);
          std::__shared_weak_count::__release_weak(v53);
        }

        v51 -= 2;
      }

      while (v51 != v50);
      v52 = v72;
    }

    v73 = v50;
    operator delete(v52);
  }

  v54 = *(a1 + 288);
  v55 = sub_1001F3D80(*(a1 + 176));
  (*(*v55 + 64))(v55);
  if (v12)
  {
    sub_100213A38(v54, &v59);
  }

  sub_1002CAA50((a1 + 168), a4, v57);
  v56 = sub_1002CAC20((a1 + 168));
  sub_100213D38(v54, v57, v56, a4);
}

void sub_1001D819C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x1001D719CLL);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1001D8438(uint64_t result)
{
  v1 = *(result + 32);
  if (v1 == v1 >> 31)
  {
    if (*(result + 80) == 1)
    {
      *(result + 80) = 0;
    }
  }

  else
  {
    v2 = *(result + 40);
    if (v1 < 0)
    {
      if (v2)
      {
        v4 = result;
        (*(*v2 + 8))(*(result + 40));
        return v4;
      }
    }

    else
    {
      v3 = result;
      (*v2)(result + 40);
      return v3;
    }
  }

  return result;
}

void sub_1001D84FC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (!a3 || *(a3 + 48) != 1 || !*(a3 + 52))
  {
    v8 = 0.0;
    if (*(a1 + 2176) == 1)
    {
      v9 = sub_100339AC4();
      v10 = atomic_load(v9 + 26);
      if ((v10 & 1) == 0 && (v9[2] & 1) == 0)
      {
        v11 = v9;
        v12 = sub_100005C94(v9, v9 + 3);
        v9 = v11;
        *(v11 + 5) = v12;
        *(v11 + 16) = 1;
        atomic_store(1u, v11 + 26);
      }

      v13 = *(v9 + 5);
      v14 = *(a1 + 1992);
      if (qword_10045B050 != -1)
      {
        sub_1003852A8();
      }

      v8 = (a2 - v14 + 1000000000 * v13) / 1000000000.0;
      v15 = qword_10045B058;
      if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        *&buf[4] = v8;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Got a scan after %f seconds", buf, 0xCu);
      }

      *(a1 + 2176) = 0;
    }

    v16 = sub_100339AC4();
    v17 = atomic_load(v16 + 26);
    if ((v17 & 1) == 0 && (v16[2] & 1) == 0)
    {
      v18 = v16;
      v19 = sub_100005C94(v16, v16 + 3);
      v16 = v18;
      *(v18 + 5) = v19;
      *(v18 + 16) = 1;
      atomic_store(1u, v18 + 26);
    }

    v20 = a2 + 1000000000 * *(v16 + 5);
    if ((*(a1 + 1984) & 1) == 0)
    {
      *(a1 + 1984) = 1;
    }

    *(a1 + 1992) = v20;
    if (*a4 != a4[1])
    {
      if (*(a1 + 2177) == 1)
      {
        v21 = sub_100339AC4();
        v22 = atomic_load(v21 + 26);
        if ((v22 & 1) == 0 && (v21[2] & 1) == 0)
        {
          v23 = v21;
          v24 = sub_100005C94(v21, v21 + 3);
          v21 = v23;
          *(v23 + 5) = v24;
          *(v23 + 16) = 1;
          atomic_store(1u, v23 + 26);
        }

        v25 = *(v21 + 5);
        v26 = *(a1 + 2008);
        if (qword_10045B050 != -1)
        {
          sub_100385280();
        }

        v27 = (a2 - v26 + 1000000000 * v25) / 1000000000.0;
        v28 = qword_10045B058;
        if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
        {
          *buf = 134217984;
          *&buf[4] = v27;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "Got a non-empty scan after %f", buf, 0xCu);
        }

        *(a1 + 2177) = 0;
        if (v27 - v8 >= 20.0)
        {
          std::to_string(&v68, (v27 - v8));
          v29 = std::string::insert(&v68, 0, "Non-empty scan after ");
          v30 = *&v29->__r_.__value_.__l.__data_;
          v76.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
          *&v76.__r_.__value_.__l.__data_ = v30;
          v29->__r_.__value_.__l.__size_ = 0;
          v29->__r_.__value_.__r.__words[2] = 0;
          v29->__r_.__value_.__r.__words[0] = 0;
          v31 = std::string::append(&v76, "s");
          v32 = *&v31->__r_.__value_.__l.__data_;
          v81 = v31->__r_.__value_.__r.__words[2];
          *buf = v32;
          v31->__r_.__value_.__l.__size_ = 0;
          v31->__r_.__value_.__r.__words[2] = 0;
          v31->__r_.__value_.__r.__words[0] = 0;
          if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v76.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v68.__r_.__value_.__l.__data_);
          }

          v33 = sub_1003397E8();
          v34 = atomic_load(v33 + 20);
          if ((v34 & 1) != 0 || *(v33 + 16) == 1)
          {
            v35 = *(v33 + 17);
          }

          else
          {
            v59 = v33;
            v35 = sub_100008F80(v33, v33 + 9);
            *(v59 + 17) = v35 & 1;
            *(v59 + 16) = 1;
            atomic_store(1u, v59 + 20);
          }

          if (v81 >= 0)
          {
            v60 = buf;
          }

          else
          {
            v60 = *buf;
          }

          sub_1001C9574(v35 & 1, 3u, "Got a non-empty scan", v60, 5000000000);
          if (SHIBYTE(v81) < 0)
          {
            operator delete(*buf);
          }
        }
      }

      v61 = sub_100339AC4();
      v62 = atomic_load(v61 + 26);
      if ((v62 & 1) == 0 && (v61[2] & 1) == 0)
      {
        v63 = v61;
        v64 = sub_100005C94(v61, v61 + 3);
        v61 = v63;
        *(v63 + 5) = v64;
        *(v63 + 16) = 1;
        atomic_store(1u, v63 + 26);
      }

      v65 = a2 + 1000000000 * *(v61 + 5);
      if ((*(a1 + 2000) & 1) == 0)
      {
        *(a1 + 2000) = 1;
      }

      *(a1 + 2008) = v65;
      sub_1002069A4(a4, buf);
      v66 = *(a1 + 128);
      v67[0] = *(a1 + 120);
      v67[1] = v66;
      if (v66)
      {
        atomic_fetch_add_explicit((v66 + 8), 1uLL, memory_order_relaxed);
      }

      sub_1001D7118(a1, buf, a3, a2, v67);
    }

    sub_100203374(*(a1 + 120), a2);
    memset(buf, 0, sizeof(buf));
    v81 = 0;
    sub_1001CE7DC(&v76, buf, a4, a2);
    if (*buf)
    {
      *&buf[8] = *buf;
      operator delete(*buf);
    }

    v70 = 0;
    v71 = 0;
    v69 = 0;
    sub_1001CFBC8(&v69, v76.__r_.__value_.__l.__data_, v76.__r_.__value_.__l.__size_, 0x4EC4EC4EC4EC4EC5 * ((v76.__r_.__value_.__l.__size_ - v76.__r_.__value_.__r.__words[0]) >> 4));
    v72 = 0;
    v73 = 0;
    v74 = 0;
    if (v78 != v77)
    {
      if (((v78 - v77) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_10000FC84();
    }

    v75 = v79;
    sub_100225DBC(buf, &v69, 0, 0.0);
    v36 = *(a1 + 232);
    if (v36 >= *(a1 + 240))
    {
      sub_1001E1938((a1 + 224), buf);
      v39 = v38;
      v40 = __p;
      *(a1 + 232) = v39;
      if (v40)
      {
        *(&__p + 1) = v40;
        operator delete(v40);
      }
    }

    else
    {
      *(v36 + 16) = 0;
      *(v36 + 24) = 0;
      *v36 = 0;
      *(v36 + 8) = 0;
      *v36 = *buf;
      *(v36 + 16) = v81;
      memset(buf, 0, sizeof(buf));
      *(v36 + 32) = 0;
      *(v36 + 40) = 0;
      *(v36 + 24) = __p;
      *(v36 + 40) = v83;
      v81 = 0;
      __p = 0uLL;
      v83 = 0;
      *(v36 + 48) = v84;
      v37 = v85;
      *(v36 + 64) = v86;
      *(v36 + 56) = v37;
      *(a1 + 232) = v36 + 72;
    }

    v41 = *buf;
    if (*buf)
    {
      v42 = *&buf[8];
      v43 = *buf;
      if (*&buf[8] != *buf)
      {
        v44 = *&buf[8] - 168;
        do
        {
          v46 = *(v42 - 176);
          if (v46 == v46 >> 31)
          {
            if (*(v42 - 128) == 1)
            {
              *(v42 - 128) = 0;
            }
          }

          else
          {
            v45 = *(v42 - 168);
            if (v46 < 0)
            {
              if (v45)
              {
                (*(*v45 + 8))(v45);
              }
            }

            else
            {
              (*v45)(v42 - 168);
            }
          }

          v42 -= 208;
          v44 -= 208;
        }

        while (v42 != v41);
        v43 = *buf;
      }

      *&buf[8] = v41;
      operator delete(v43);
    }

    if (v72)
    {
      v73 = v72;
      operator delete(v72);
    }

    v47 = v69;
    if (v69)
    {
      v48 = v70;
      v49 = v69;
      if (v70 != v69)
      {
        v50 = v70 - 168;
        do
        {
          v52 = *(v48 - 44);
          if (v52 == v52 >> 31)
          {
            if (*(v48 - 128) == 1)
            {
              *(v48 - 128) = 0;
            }
          }

          else
          {
            v51 = *(v48 - 21);
            if (v52 < 0)
            {
              if (v51)
              {
                (*(*v51 + 8))(v51);
              }
            }

            else
            {
              (*v51)(v48 - 168);
            }
          }

          v48 -= 208;
          v50 -= 208;
        }

        while (v48 != v47);
        v49 = v69;
      }

      v70 = v47;
      operator delete(v49);
    }

    if (v77)
    {
      v78 = v77;
      operator delete(v77);
    }

    v53 = v76.__r_.__value_.__r.__words[0];
    if (v76.__r_.__value_.__r.__words[0])
    {
      size = v76.__r_.__value_.__l.__size_;
      v55 = v76.__r_.__value_.__r.__words[0];
      if (v76.__r_.__value_.__l.__size_ != v76.__r_.__value_.__r.__words[0])
      {
        v56 = v76.__r_.__value_.__l.__size_ - 168;
        do
        {
          v58 = *(size - 176);
          if (v58 == v58 >> 31)
          {
            if (*(size - 128) == 1)
            {
              *(size - 128) = 0;
            }
          }

          else
          {
            v57 = *(size - 168);
            if (v58 < 0)
            {
              if (v57)
              {
                (*(*v57 + 8))(v57);
              }
            }

            else
            {
              (*v57)(size - 168);
            }
          }

          size -= 208;
          v56 -= 208;
        }

        while (size != v53);
        v55 = v76.__r_.__value_.__r.__words[0];
      }

      v76.__r_.__value_.__l.__size_ = v53;
      operator delete(v55);
    }
  }
}

void sub_1001D8E34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x1001D8BE8);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001D8FE0(uint64_t a1)
{
  *(a1 + 16) = v3;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  std::locale::~locale((a1 + 32));
  std::iostream::~basic_iostream();
  std::ios::~ios();
  return a1;
}

uint64_t sub_1001D9134(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F9648(*(a1 + 176));
  if (v4)
  {
    *(a1 + 304) = 1;
    return v4 ^ 1u;
  }

  v6 = *(a1 + 176);
  sub_1001D3EA4(a1, a2, &v11);
  v9 = 0;
  v10 = 0;
  sub_1001F64EC(v6, a2, &v11, &v9, a1 + 2184);
  v7 = v10;
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  v8 = v12;
  if (!v12 || atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return v4 ^ 1u;
  }

  (v8->__on_zero_shared)(v8);
  std::__shared_weak_count::__release_weak(v8);
  return 1;
}

void sub_1001D925C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_10002BB1C(&a9);
  sub_10002BB1C(va);
  _Unwind_Resume(a1);
}

void *sub_1001D92CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  v3 = *(a1 + 296);
  v4 = *(a1 + 176);
  v6[0] = off_1004425F8;
  v6[1] = a1;
  v6[2] = v2;
  v7 = v6;
  *(a1 + 304) |= sub_10026E874((a1 + 328), a2, v3, v4, (a1 + 304), 0, v6, a1 + 2184);
  result = v7;
  if (v7 == v6)
  {
    return (*(*v7 + 32))(v7);
  }

  if (v7)
  {
    return (*(*v7 + 40))();
  }

  return result;
}

void sub_1001D93D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1001D3E18(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1001D945C(uint64_t a1, uint64_t a2)
{
  result = sub_100251258(*(a1 + 248));
  if (result && *(a1 + 520) == 1)
  {
    sub_1002400FC(*(a1 + 152), a2, *(a1 + 524));
    v5 = *(a1 + 1504);
    v6 = sub_100240B3C(*(a1 + 152));

    return sub_100263888(v5, v6);
  }

  return result;
}

uint64_t sub_1001D94DC(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  *(a1 + 2464) = *a3;
  if (qword_10045B050 != -1)
  {
    sub_1003852A8();
  }

  v6 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
  {
    v7 = *a3;
    v11[0] = 67240192;
    v11[1] = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Update cached ARSessionState to %{public}d", v11, 8u);
  }

  if (*(a1 + 1536) == 1)
  {
    v8 = *(a1 + 1568);
    if (v8)
    {
      *(a1 + 1576) = v8;
      operator delete(v8);
    }

    v9 = *(a1 + 1544);
    if (v9)
    {
      *(a1 + 1552) = v9;
      operator delete(v9);
    }

    *(a1 + 1536) = 0;
  }

  return (*(**(a1 + 2528) + 200))(*(a1 + 2528), a2, a3);
}

uint64_t sub_1001D9614(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10045B050 != -1)
  {
    sub_1003852A8();
    v6 = qword_10045B058;
    if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
    {
      return (*(**(a1 + 2528) + 208))(*(a1 + 2528), a2, a3);
    }

    goto LABEL_3;
  }

  v6 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
  {
LABEL_3:
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Received VIO Estimation", v8, 2u);
  }

  return (*(**(a1 + 2528) + 208))(*(a1 + 2528), a2, a3);
}

uint64_t sub_1001D96EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10045B050 != -1)
  {
    sub_1003852A8();
    v6 = qword_10045B058;
    if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
    {
      return (*(**(a1 + 2528) + 216))(*(a1 + 2528), a2, a3);
    }

    goto LABEL_3;
  }

  v6 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
  {
LABEL_3:
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Received VL localization result", v8, 2u);
  }

  return (*(**(a1 + 2528) + 216))(*(a1 + 2528), a2, a3);
}

uint64_t sub_1001D97C4(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  result = sub_10002C6B8(a3);
  if (result)
  {
    sub_10002C6C0(a3, v12);
    sub_1001D5F4C(a1, v12);
    sub_10013CFA4(v12);
    sub_10002C83C(a3, v12);
    if (*(a1 + 688) == 1)
    {
      if (v13 <= *(a1 + 704))
      {
        if (qword_10045B050 != -1)
        {
          sub_100385280();
        }

        v11 = qword_10045B058;
        if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Ignoring VL because older than last precise location", buf, 2u);
        }

        return sub_10012E8E4(v12);
      }

      sub_1001300D4(a1 + 696, v12);
    }

    else
    {
      sub_1001300D0(a1 + 696, v12);
      *(a1 + 688) = 1;
    }

    if (qword_10045B050 != -1)
    {
      sub_100385280();
    }

    v6 = qword_10045B058;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
    {
      v7 = (a1 + 760);
      if (*(a1 + 783) < 0)
      {
        v7 = *v7;
      }

      v8 = *(a1 + 792);
      *buf = 136380931;
      v15 = v7;
      v16 = 2050;
      v17 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "fLastGpsLikePreciseLocation vision location type %{private}s with accuracy %{public}f", buf, 0x16u);
      if (*(a1 + 1536) != 1)
      {
LABEL_10:
        if (*(a1 + 2505) != 1)
        {
          return sub_10012E8E4(v12);
        }

        goto LABEL_20;
      }
    }

    else if (*(a1 + 1536) != 1)
    {
      goto LABEL_10;
    }

    v9 = *(a1 + 1568);
    if (v9)
    {
      *(a1 + 1576) = v9;
      operator delete(v9);
    }

    v10 = *(a1 + 1544);
    if (v10)
    {
      *(a1 + 1552) = v10;
      operator delete(v10);
    }

    *(a1 + 1536) = 0;
    if (*(a1 + 2505) != 1)
    {
      return sub_10012E8E4(v12);
    }

LABEL_20:
    sub_1001F823C(*(a1 + 176), v12);
    *(a1 + 304) = 1;
    return sub_10012E8E4(v12);
  }

  return result;
}

void sub_1001D99F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10013CFA4(va);
  _Unwind_Resume(a1);
}

void sub_1001D9A08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10012E8E4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001D9A28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 48) == 4)
  {
    sub_100263384(*(a1 + 1504), a3);
  }

  sub_1002AEED8(a3, v6);
  sub_1001D6844(a1, v6);
  return sub_10012E8E4(v6);
}

void sub_1001D9A8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10012E8E4(va);
  _Unwind_Resume(a1);
}

void sub_1001D9AB0(uint64_t result)
{
  if ((*(result + 1536) & 1) == 0)
  {
    (*(**(result + 32) + 16))(__p);
    v2 = (result + 1544);
    if (*(result + 1536) == 1)
    {
      v3 = *v2;
      if (*v2)
      {
        *(result + 1552) = v3;
        operator delete(v3);
      }

      *v2 = *__p;
      *(result + 1560) = v7;
      __p[1] = 0;
      v7 = 0;
      __p[0] = 0;
      v4 = *(result + 1568);
      if (v4)
      {
        *(result + 1576) = v4;
        operator delete(v4);
      }

      *(result + 1568) = v8;
      *(result + 1584) = v9;
      v9 = 0;
      v8 = 0uLL;
      v5 = __p[0];
      if (!__p[0])
      {
        goto LABEL_11;
      }
    }

    else
    {
      *v2 = *__p;
      *(result + 1560) = v7;
      __p[0] = 0;
      __p[1] = 0;
      *(result + 1568) = v8;
      *(result + 1584) = v9;
      v7 = 0;
      v8 = 0uLL;
      v9 = 0;
      *(result + 1536) = 1;
      v5 = __p[0];
      if (!__p[0])
      {
LABEL_11:
        sub_1001D9BFC(result, result + 1544);
        return;
      }
    }

    __p[1] = v5;
    operator delete(v5);
    goto LABEL_11;
  }
}

void sub_1001D9BFC(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 1856));
  nullsub_35();
  if (*v3 != v3[1])
  {
    v4 = sub_100232FAC();
    sub_1001F97E8(*(a1 + 176), v4);
    sub_100225364(*(a1 + 296), v4);
  }

  v5 = *(a1 + 1920);
  for (i = *(a1 + 1928); v5 != i; ++v5)
  {
    v7 = *v5;
    nullsub_35();
    v9 = *v8;
    v10 = v8[1];
    v11 = sub_100232FAC();
    (*(*v7 + 16))(v7, v9 != v10, v11);
  }

  std::mutex::unlock((a1 + 1856));
}

void sub_1001D9D1C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 1860) == 1)
  {
    if (*(a1 + 1352) == 1)
    {
      v3 = (a1 + 1352);
      if (*(a1 + 1200) == 1)
      {
        if (*(a1 + 1368) <= *(a1 + 1216))
        {
          v3 = (a1 + 1200);
        }

        v4 = (a1 + 896);
        v5 = (a1 + 1048);
        if (*v3 == 1)
        {
LABEL_14:
          if (*v5 == 1)
          {
            if (*(v3 + 2) > *(a1 + 1064))
            {
              v5 = v3;
            }

            if (*v5 != 1)
            {
              goto LABEL_31;
            }
          }

          else
          {
            v5 = v3;
            if (*v3 != 1)
            {
              goto LABEL_31;
            }
          }

LABEL_21:
          if (*v4 == 1)
          {
            v6 = *(v5 + 2);
            v7 = *(a1 + 912);
            goto LABEL_27;
          }

          goto LABEL_30;
        }
      }

      else
      {
        v4 = (a1 + 896);
        v5 = (a1 + 1048);
        if (*v3 == 1)
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
      v3 = (a1 + 1200);
      v4 = (a1 + 896);
      v5 = (a1 + 1048);
      if (*(a1 + 1200) == 1)
      {
        goto LABEL_14;
      }
    }

    if (*v5 != 1)
    {
      goto LABEL_31;
    }

    goto LABEL_21;
  }

  if (*(a1 + 1352) == 1)
  {
    v5 = (a1 + 1352);
    if (*(a1 + 1200) == 1 && *(a1 + 1368) <= *(a1 + 1216))
    {
      v5 = (a1 + 1200);
    }
  }

  else
  {
    v5 = (a1 + 1200);
  }

  v4 = (a1 + 1048);
  if (*v5 == 1)
  {
    if (*v4 == 1)
    {
      v6 = *(v5 + 2);
      v7 = *(a1 + 1064);
LABEL_27:
      if (v6 > v7)
      {
        v4 = v5;
      }

      goto LABEL_31;
    }

LABEL_30:
    v4 = v5;
  }

LABEL_31:
  if ((*v4 & 1) == 0)
  {
    sub_1003856A4();
  }

  v8 = sub_10010C758();
  v9 = v4[2];
  if (*(a1 + 1352) != 1)
  {
    v10 = a1 + 1200;
    v11 = v8 / 1000000000.0;
    v12 = (a1 + 1048);
    v13 = v9 / 1000000000.0;
    if (*(a1 + 1200) == 1)
    {
      goto LABEL_39;
    }

LABEL_45:
    v14 = v11 - v13;
    v15 = *v4;
    v16 = *v12;
    if (v15 != 1)
    {
      goto LABEL_51;
    }

    goto LABEL_46;
  }

  v10 = a1 + 1352;
  if (*(a1 + 1200) != 1)
  {
    v11 = v8 / 1000000000.0;
    v12 = (a1 + 1048);
    v13 = v9 / 1000000000.0;
    if (*v10 == 1)
    {
      goto LABEL_39;
    }

    goto LABEL_45;
  }

  if (*(a1 + 1368) <= *(a1 + 1216))
  {
    v10 = a1 + 1200;
  }

  v11 = v8 / 1000000000.0;
  v12 = (a1 + 1048);
  v13 = v9 / 1000000000.0;
  if (*v10 != 1)
  {
    goto LABEL_45;
  }

LABEL_39:
  if (*v12 == 1)
  {
    if (*(v10 + 16) > *(a1 + 1064))
    {
      v12 = v10;
    }

    v14 = v11 - v13;
    v15 = *v4;
    v16 = *v12;
    if (v15 != 1)
    {
      goto LABEL_51;
    }
  }

  else
  {
    v12 = v10;
    v14 = v11 - v13;
    v15 = *v4;
    v16 = *v12;
    if (v15 != 1)
    {
      goto LABEL_51;
    }
  }

LABEL_46:
  if (v16)
  {
    if (sub_1001E1ECC((v4 + 1), (v12 + 8)))
    {
      goto LABEL_52;
    }

    goto LABEL_48;
  }

LABEL_51:
  if (v15 == v16)
  {
LABEL_52:
    if (*(sub_100251D2C(*(a1 + 248)) + 16) >= v14)
    {
      return;
    }

    goto LABEL_53;
  }

LABEL_48:
  if (*(sub_100251D2C(*(a1 + 248)) + 24) >= v14)
  {
    return;
  }

LABEL_53:
  if (*(a1 + 1536) == 1)
  {
    v17 = *(a1 + 1568);
    if (v17)
    {
      *(a1 + 1576) = v17;
      operator delete(v17);
    }

    v18 = *(a1 + 1544);
    if (v18)
    {
      *(a1 + 1552) = v18;
      operator delete(v18);
    }

    *(a1 + 1536) = 0;
  }
}

void sub_1001DA02C(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, _BYTE *a4@<X8>)
{
  v329 = a2;
  sub_1001D9AB0(a1);
  v7 = sub_1003399A0();
  v8 = atomic_load(v7 + 20);
  if ((v8 & 1) != 0 || *(v7 + 16) == 1)
  {
    v9 = *(v7 + 17);
  }

  else
  {
    v10 = v7;
    v9 = sub_100008F80(v7, v7 + 9);
    *(v10 + 17) = v9 & 1;
    *(v10 + 16) = 1;
    atomic_store(1u, v10 + 20);
  }

  sub_1001F8B8C(*(a1 + 176), (a1 + 1544), &v322);
  v11 = sub_1001F420C(&v322);
  v12 = *(v11 + 8);
  v320 = *v11;
  v321 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = *(a1 + 24);
  v14 = sub_1001F420C(&v322);
  (*(*v13 + 16))(&v318, v13, v14);
  v15 = (*(*v318 + 64))(v318);
  if (sub_100118344(&v320, v15))
  {
    if (qword_10045B050 != -1)
    {
      sub_100385280();
    }

    v16 = qword_10045B058;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR))
    {
      v17 = (*(*v318 + 64))(v318);
      v18 = sub_10011823C(v17);
      v19 = sub_10011823C(&v320);
      *buf = 136380931;
      *&buf[4] = v18;
      *&buf[12] = 2081;
      *&buf[14] = v19;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Mismatch between floor keys: (%{private}s vs %{private}s)", buf, 0x16u);
    }
  }

  *&v262[0] = off_10043D898;
  *&v262[1] = off_10043DB08;
  v263 = 0u;
  v264 &= 0xFCu;
  v265 = off_10043DB28;
  v266 = 0u;
  v267 &= 0xFCu;
  v268 = 0u;
  v270 = 0u;
  v271 = 0u;
  v269 = 0;
  v272 = 0;
  v281 = 0u;
  v282 = 0u;
  v280 = 0u;
  v279 = 0u;
  v278 = 0u;
  v277 = 0u;
  v276 = 0u;
  v275 = 0u;
  v274 = 0u;
  v273 = 0u;
  v284 = 0;
  v285 = off_10043D858;
  v286 = 0u;
  v287 = 0u;
  v288 = 0u;
  v289 = 0u;
  v290 = 0u;
  v291 = 0u;
  v292 = 0u;
  v293 = 0;
  v295 = 0;
  v294 = 0u;
  v296 &= 0xC0u;
  v297 = 0;
  v298 = 0u;
  v299 = 0u;
  v300 = 0u;
  v301 = 0;
  v302 = off_10043DB28;
  v303 = 0u;
  v304 &= 0xFCu;
  v305 = 0.0;
  v306 = off_10043D878;
  v307 = 0u;
  v308 &= 0xF8u;
  v309 = 0;
  v310 = 0;
  v311 = 0u;
  v312 = 0u;
  v313 = 0u;
  v314 = 0;
  v315 = 0u;
  memset(v316, 0, 28);
  memset(&v316[32], 0, 32);
  v317 = v317 & 0xF000000000000000 | 0x10000000;
  v283 = 4;
  v20 = sub_1001F4214(&v322);
  v21 = 0;
  if (v20 <= 1)
  {
    if (v20)
    {
      if (v20 == 1)
      {
        sub_1001DD414(buf, &v320, v318);
        sub_100126304(v262, buf);
        sub_1001234CC(buf);
        *(&v275 + 1) = *(sub_1001F4224(&v322) + 24);
        sub_100123558(v262, 1.0);
        *&v275 = *(sub_1001F4224(&v322) + 16);
        v22 = sub_1001F4224(&v322);
        *(&v274 + 1) = sub_1001F3628(v22);
        v21 = *(sub_1001F4224(&v322) + 8);
        v23 = (*(*v318 + 72))(v318) != 0;
        sub_100123670(v262, 4 * v23);
        v24 = sub_1001F421C(&v322);
        sub_100123708(v262, v24);
        v25 = sub_100118234(&v320);
        sub_100123534(v262, v25);
        v283 = 1;
      }
    }

    else
    {
      v26 = v319;
      v261[0] = v318;
      v261[1] = v319;
      if (v319)
      {
        atomic_fetch_add_explicit((v319 + 8), 1uLL, memory_order_relaxed);
      }

      sub_1001DD4FC(a1, v261, v329, &v322, buf);
      sub_100126304(v262, buf);
      sub_1001234CC(buf);
      if (v26 && !atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v26->__on_zero_shared)(v26);
        std::__shared_weak_count::__release_weak(v26);
      }

      v21 = *(sub_1001F4224(&v322) + 8);
    }
  }

  else
  {
    switch(v20)
    {
      case 2:
        sub_1000BF664(buf);
        sub_100126304(v262, buf);
        sub_1001234CC(buf);
        v283 = 2;
        break;
      case 3:
        sub_1001DD414(buf, &v320, v318);
        sub_100126304(v262, buf);
        sub_1001234CC(buf);
        *(&v274 + 1) = 0;
        v283 = 3;
        break;
      case 4:
        __cxa_allocate_exception(0x40uLL);
        sub_1000474A4(buf, "getBestLocalizerState() always sets a valid YieldStatus. How did we get YIELD_DATA_MISSING?");
        std::runtime_error::runtime_error(&v239, buf);
        v239.__vftable = &off_1004338D0;
        sub_10010A984(&v260);
    }
  }

  sub_10012356C(v262, v329);
  sub_100172100(v258);
  if (v259 == 1)
  {
    sub_100123780(v262, *&v258[2]);
    sub_100123758(v262, *&v258[1]);
    v27 = *v258;
  }

  else
  {
    Current = CFAbsoluteTimeGetCurrent();
    sub_100123780(v262, Current);
    v29 = sub_1001CA208();
    sub_100123758(v262, v29);
    v27 = sub_1001CA2CC();
  }

  sub_10012376C(v262, v27);
  if (v283)
  {
    v30 = sub_100251E48(*(a1 + 248));
    sub_10017E804(v30, buf);
    v257 = *buf;
    if (qword_10045B050 != -1)
    {
      sub_100385280();
    }

    v31 = qword_10045B058;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "NO_YIELD", buf, 2u);
    }

    v32 = NAN;
    v33 = *(a1 + 200);
    if (v33 < *(a1 + 208))
    {
LABEL_36:
      sub_100126300(v33, v262);
      v34 = v33 + 760;
      *(a1 + 200) = v33 + 760;
      goto LABEL_57;
    }
  }

  else
  {
    if ((v317 & 0x20000000000) != 0 && (v35 = v305, v35 < sub_100251A6C(*(a1 + 248))))
    {
      v36 = *(a1 + 248);
      if (v310 == 1)
      {
        v37 = sub_100251DC4(v36);
      }

      else
      {
        v37 = sub_100251D98(v36);
      }

      sub_10017E804(v37, buf);
      v257 = *buf;
      if (qword_10045B050 != -1)
      {
        sub_100385280();
      }

      v42 = qword_10045B058;
      if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_INFO, "YIELD_DEEP_INDOOR", buf, 2u);
      }

      v41 = sub_100251A78(*(a1 + 248));
    }

    else
    {
      v38 = *(a1 + 248);
      if (v310 == 1)
      {
        v39 = sub_100251E1C(v38);
      }

      else
      {
        v39 = sub_100251DF0(v38);
      }

      sub_10017E804(v39, buf);
      v257 = *buf;
      if (qword_10045B050 != -1)
      {
        sub_100385280();
      }

      v40 = qword_10045B058;
      if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "YIELD_OK_NEAR_EDGE", buf, 2u);
      }

      v41 = sub_100251A88(*(a1 + 248));
    }

    v32 = v41;
    v33 = *(a1 + 200);
    if (v33 < *(a1 + 208))
    {
      goto LABEL_36;
    }
  }

  v34 = sub_1001E2358((a1 + 192), v262);
LABEL_57:
  *(a1 + 200) = v34;
  sub_1001E208C((a1 + 184), 0x4E25B9EFD4E25B9FLL * ((v34 - *(a1 + 192)) >> 3) - 1);
  v43 = *(a1 + 192);
  v252[4] = *(a1 + 184);
  __p = 0;
  v254 = 0;
  v255 = 0;
  v44 = *(a1 + 200);
  *buf = &__p;
  buf[8] = 0;
  if (v44 != v43)
  {
    if ((0x4E25B9EFD4E25B9FLL * ((v44 - v43) >> 3)) < 0x563B48C20563B5)
    {
      operator new();
    }

    sub_10000FC84();
  }

  v256 = *(a1 + 216);
  v45 = sub_100251594(*(a1 + 248));
  v46 = __p;
  if (__p)
  {
    v47 = __p;
    if (v254 != __p)
    {
      v48 = v254 - 760;
      v49 = v254 - 760;
      do
      {
        (**v49)(v49);
        v48 -= 760;
        v50 = v49 == v46;
        v49 -= 760;
      }

      while (!v50);
      v47 = __p;
    }

    v254 = v46;
    operator delete(v47);
  }

  if ((v317 & 0x100000000000) == 0 || (v310 == 2 ? (v50 = v283 == 0) : (v50 = 1), v50))
  {
    if ((v317 & 0x8000000000) != 0 && HIDWORD(v301) == 2)
    {
      sub_1001F64B8(*(a1 + 176));
      if (qword_10045B050 != -1)
      {
        sub_100385280();
      }

      v51 = qword_10045B058;
      if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v52 = "Reset DR because we are fusing with GPS";
        goto LABEL_82;
      }
    }

    else if ((v317 & 0x100000000000) != 0 && v310 != 2 && v45 > 0.0)
    {
      sub_1001F64B8(*(a1 + 176));
      if (qword_10045B050 != -1)
      {
        sub_100385280();
      }

      v64 = qword_10045B058;
      if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        v52 = "Reset DR because we have a non-DR pose and the compound confidence has not been high enough";
        v53 = v64;
        v54 = OS_LOG_TYPE_DEBUG;
        goto LABEL_83;
      }
    }
  }

  else
  {
    sub_1001F64B8(*(a1 + 176));
    if (qword_10045B050 != -1)
    {
      sub_100385280();
    }

    v51 = qword_10045B058;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v52 = "Reset DR because DR is yield low";
LABEL_82:
      v53 = v51;
      v54 = OS_LOG_TYPE_INFO;
LABEL_83:
      _os_log_impl(&_mh_execute_header, v53, v54, v52, buf, 2u);
    }
  }

  if ((v317 & 0x8000000000) != 0 && !HIDWORD(v301) && (v317 & 0x100000000000) != 0 && !v310 && !v283)
  {
    v55 = *(&v274 + 1);
    if (v55 >= sub_100251594(*(a1 + 248)))
    {
      sub_1001F6348(*(a1 + 176));
      if (qword_10045B050 != -1)
      {
        sub_100385280();
      }

      v56 = qword_10045B058;
      if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEBUG, "Seed DR because we are yielding the primary filter and the compound confidence is high enough", buf, 2u);
      }
    }
  }

  if ((v317 & 0x100000000000) != 0 && v310 == 1)
  {
    v32 = sub_100251A98(*(a1 + 248));
  }

  if (!a3 || !v283)
  {
    *&buf[8] = v257;
    buf[0] = 1;
    v58 = sub_10017ED0C(buf);
    sub_100123600(v262, v58);
    sub_100123654(v262, v32);
    v59 = *(a1 + 2144);
    if (v59)
    {
      sub_10012365C(v262, (v59[1] - *v59) >> 4);
    }

    if (sub_10017E8E8((a1 + 680), v329, &v257))
    {
      if (qword_10045B050 != -1)
      {
        sub_100385280();
      }

      v60 = qword_10045B058;
      if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109120;
        *&buf[4] = HIBYTE(v297);
        _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEBUG, "we've reset the StrobeGps counters and are using new settings %d", buf, 8u);
      }
    }

    v61 = sub_10017EB58((a1 + 680), v329, *(a1 + 16) + v329);
    if (v9)
    {
      v62 = v61;
      if (qword_10045B050 != -1)
      {
        sub_100385280();
      }

      v63 = qword_10045B058;
      if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
      {
        *buf = 67109376;
        *&buf[4] = v62;
        *&buf[8] = 2048;
        *&buf[10] = *(&v279 + 1);
        _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_INFO, "GPS assistance request = %d @ t=%lld", buf, 0x12u);
      }
    }

    else
    {
      LOBYTE(v62) = 0;
    }

    sub_1001235F8(v262, v62);
    *(a1 + 2178) = v297;
    (*(*v318 + 80))(v252);
    v65.n128_f64[0] = sub_100123510(v262, v252);
    v317 |= 2uLL;
    if ((*(*v318 + 88))(v318, v65))
    {
      (*(*v318 + 88))(v318);
      sub_100123794(v262, v66);
    }

    if ((*(*v318 + 96))(v318))
    {
      (*(*v318 + 96))(v318);
      sub_1001235D0(v262, v67);
    }

    v251[0] = 1.0 - *sub_1001F4224(&v322);
    v251[1] = *sub_1001F4224(&v322);
    v68 = sub_10004666C(v251);
    v69 = v283;
    if (v283 && !v68)
    {
      v70 = sub_1001F4224(&v322);
      v71 = sub_1001F4224(&v322);
      v72 = sub_1001F3628(v71);
      v73 = sub_1001F4374(v70, v72);
      if (sub_1001F43C0(v73))
      {
        sub_1001235E4(v262, 0);
        if (qword_10045B050 != -1)
        {
          sub_100385280();
        }

        v74 = qword_10045B058;
        if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
        {
          *buf = 134217984;
          *&buf[4] = *(&v279 + 1);
          _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_INFO, "YIELD_FAILURE_GIVE_UP at t=%lld", buf, 0xCu);
        }
      }

      v69 = v283;
    }

    if (v69 && *(a1 + 1968) == 1 && *(a1 + 1976) < v329 && ((v317 & 0x20000000) == 0 || v284))
    {
      sub_1001235E4(v262, 0);
      if (qword_10045B050 != -1)
      {
        sub_100385280();
      }

      v75 = qword_10045B058;
      if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEFAULT))
      {
        v76 = *(a1 + 1976);
        *buf = 134349312;
        *&buf[4] = v329;
        *&buf[12] = 2050;
        *&buf[14] = v76;
        _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "Too long since last YIELD_OK, force a YIELD_FAILURE_GIVE_UP at t=%{public}lld (> %{public}lld)", buf, 0x16u);
      }
    }

    v78 = *(a1 + 264);
    v77 = *(a1 + 272);
    if (v77 == v78)
    {
      v317 = v317 & 0xFFF7FFFFFFBFFFEFLL | &_mh_execute_header;
      if (*(a1 + 2000) == 1)
      {
        goto LABEL_171;
      }

      goto LABEL_151;
    }

    v79 = (a1 + 264);
    v80 = *(a1 + 264);
    do
    {
      if (*(v80 + 4) == 1)
      {
        v81 = 1;
        goto LABEL_154;
      }

      v80 += 88;
    }

    while (v80 != v77);
    do
    {
      if (*(v78 + 4) != 2)
      {
        v81 = 3;
        goto LABEL_154;
      }

      v78 += 88;
    }

    while (v78 != v77);
    v81 = 2;
LABEL_154:
    sub_100123520(v262, v81);
    v82 = *(a1 + 272);
    v83 = *v79;
    if (*v79 == v82)
    {
LABEL_162:
      v85 = 3;
    }

    else
    {
      v84 = *v79;
      do
      {
        if (*v84 == 1)
        {
          v85 = 2;
          goto LABEL_164;
        }

        v84 += 22;
      }

      while (v84 != v82);
      while (*v83)
      {
        v83 += 22;
        if (v83 == v82)
        {
          goto LABEL_162;
        }
      }

      v85 = 1;
    }

LABEL_164:
    sub_100123744(v262, v85);
    if (v85 == 1)
    {
      v86 = 0.0;
    }

    else
    {
      if (v85 != 2)
      {
        sub_100123580(v262, NAN);
        v317 &= ~0x400000uLL;
LABEL_170:
        sub_10012243C(&v285, *(*(a1 + 272) - 64));
        v317 |= &_mh_execute_header;
        if (*(a1 + 2000) == 1)
        {
LABEL_171:
          v87 = sub_100339AC4();
          v88 = atomic_load(v87 + 26);
          if ((v88 & 1) == 0 && (v87[2] & 1) == 0)
          {
            v89 = v87;
            v90 = sub_100005C94(v87, v87 + 3);
            v87 = v89;
            *(v89 + 5) = v90;
            *(v89 + 16) = 1;
            atomic_store(1u, v89 + 26);
          }

          v91 = *(v87 + 5);
          v92 = sub_100339AC4();
          v93 = atomic_load(v92 + 26);
          if ((v93 & 1) == 0 && (v92[2] & 1) == 0)
          {
            v94 = v92;
            v95 = sub_100005C94(v92, v92 + 3);
            v92 = v94;
            *(v94 + 5) = v95;
            *(v94 + 16) = 1;
            atomic_store(1u, v94 + 26);
          }

          v96 = *(a1 + 2008) - 1000000000 * *(v92 + 5);
          *&v291 = exp(-0.693147181 / v91 * ((v329 - v96) / 1000000000.0));
          sub_100123608(v262, v96);
LABEL_178:
          v317 |= 0x200000000uLL;
          if (*(a1 + 2016) == 1)
          {
            v97 = sub_100339474();
            v98 = atomic_load(v97 + 26);
            if ((v98 & 1) == 0 && (v97[2] & 1) == 0)
            {
              v99 = v97;
              v100 = sub_100005C94(v97, v97 + 3);
              v97 = v99;
              *(v99 + 5) = v100;
              *(v99 + 16) = 1;
              atomic_store(1u, v99 + 26);
            }

            sub_100123610(v262, *(a1 + 2024) - 1000000000 * *(v97 + 5));
          }

          else
          {
            sub_100123610(v262, 0x8000000000000000);
          }

          if ((v317 & 0x200000) == 0)
          {
            sub_1003858C0(qword_10045B050 == -1);
            abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/purpleslam/common/localize/localizer_io_wrapper.cpp", 1440, "forceNotifyObserver");
            __break(1u);
            return;
          }

          if (qword_10045B050 != -1)
          {
            sub_100385280();
          }

          v101 = qword_10045B058;
          if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEFAULT))
          {
LABEL_239:
            v123 = qword_10045B058;
            if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEFAULT))
            {
              v124 = *&v305;
              if ((v317 & 0x20000000000) == 0)
              {
                v124 = 0x7FF4000000000000;
              }

              v125 = v309;
              if ((v317 & 0x80000000000) == 0)
              {
                v125 = 0x7FF4000000000000;
              }

              v126 = *(&v313 + 1);
              if ((v317 & 0x4000000000000) == 0)
              {
                v126 = 0x7FF4000000000000;
              }

              if ((v317 & 0x2000000000000) != 0)
              {
                v127 = v313;
              }

              else
              {
                v127 = 0x7FF4000000000000;
              }

              *buf = 134218752;
              *&buf[4] = v124;
              *&buf[12] = 2048;
              *&buf[14] = v125;
              *&buf[22] = 2048;
              *&buf[24] = v126;
              v334 = 2048;
              v335 = v127;
              _os_log_impl(&_mh_execute_header, v123, OS_LOG_TYPE_DEFAULT, "Polygon distances, signedDistToSurvey: %f m, signedDistToFloorplan: %f m, gpsSignedDistToSurvey: %f m, gpsSignedDistToFloorplan: %f m", buf, 0x2Au);
            }

            *&v286 = *(&v274 + 1);
            v128 = (*(*v318 + 72))(v318);
            sub_1001D14CC((a1 + 1544), v128, &v239);
            *(&v286 + 1) = v239.__imp_.__imp_;
            *&v287 = v241;
            *(&v287 + 1) = v240;
            if (v243 == 1)
            {
              sub_100122450(&v285, v242);
            }

            sub_100258188(*(a1 + 1520), &v248);
            if (v249 == 1)
            {
              sub_100122464(&v285, *&v248.__imp_.__imp_);
            }

            if (v245 == 1)
            {
              sub_100122478(&v285, v244);
            }

            *(&v288 + 1) = v21;
            v129 = sub_1001F422C(&v322);
            sub_100122414(&v285, v129);
            v130 = sub_1001F4214(&v322);
            sub_100122428(&v285, v130);
            *&v288 = *(&v288 + 1) * *(&v275 + 1) * *(&v276 + 1) * *&v276;
            v246.__vftable = 0;
            v246.__imp_.__imp_ = 0;
            v247 = 0;
            v131 = sub_1001F4204(&v322);
            v132 = sub_1001F4224(&v322);
            v133 = sub_1001F3618(v132);
            sub_1002C1BF0(v131, &v246, &v237, v133);
            if (qword_10045B050 != -1)
            {
              sub_100385280();
            }

            v134 = qword_10045B058;
            if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEFAULT))
            {
              nullsub_35();
              v136 = sub_100181F74(v135);
              sub_1002C18BC(v136, &v237, &v246);
              v137 = buf[23] >= 0 ? buf : *buf;
              *__dst = 136315138;
              *&__dst[4] = v137;
              _os_log_impl(&_mh_execute_header, v134, OS_LOG_TYPE_DEFAULT, "%s", __dst, 0xCu);
              if ((buf[23] & 0x80000000) != 0)
              {
                operator delete(*buf);
              }
            }

            sub_10011DD68(&v289, v237, v238, (v238 - v237) >> 3);
            v138 = 126 - 2 * __clz((*(&v289 + 1) - v289) >> 3);
            if (*(&v289 + 1) == v289)
            {
              v139 = 0;
            }

            else
            {
              v139 = v138;
            }

            sub_1001E2544(v289, *(&v289 + 1), buf, v139, 1);
            *(&v290 + 1) = v276;
            v140 = sub_1002C5110((a1 + 2184));
            sub_100122404(&v285, v140);
            v141 = sub_1002C5138(a1 + 2184);
            sub_10012240C(&v285, v141);
            if (qword_10045B050 != -1)
            {
              sub_100385280();
            }

            v142 = qword_10045B058;
            if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEFAULT))
            {
              sub_10004DAA4(buf);
              v143 = *&buf[16];
              *&buf[*(*&buf[16] - 24) + 24] = *&buf[*(*&buf[16] - 24) + 24] & 0xFFFFFEFB | 4;
              *(&v334 + *(v143 - 24)) = 2;
              sub_10003C2E4(&buf[16], "{", 1);
              LOBYTE(v235) = 34;
              v144 = sub_10003C2E4(&buf[16], &v235, 1);
              v145 = sub_10003C2E4(v144, "prbPipelinedSaysYield", 21);
              LOBYTE(v235) = 34;
              v146 = sub_10003C2E4(v145, &v235, 1);
              sub_10003C2E4(v146, ": ", 2);
              std::ostream::operator<<();
              sub_10003C2E4(&buf[16], ",  ", 3);
              LOBYTE(v235) = 34;
              v147 = sub_10003C2E4(&buf[16], &v235, 1);
              v148 = sub_10003C2E4(v147, "prbCoarseIndoorSaysIndoor", 25);
              LOBYTE(v235) = 34;
              v149 = sub_10003C2E4(v148, &v235, 1);
              sub_10003C2E4(v149, ": ", 2);
              std::ostream::operator<<();
              sub_10003C2E4(&buf[16], ",  ", 3);
              LOBYTE(v235) = 34;
              v150 = sub_10003C2E4(&buf[16], &v235, 1);
              v151 = sub_10003C2E4(v150, "prbWifiSaysIndoor", 17);
              LOBYTE(v235) = 34;
              v152 = sub_10003C2E4(v151, &v235, 1);
              sub_10003C2E4(v152, ": ", 2);
              std::ostream::operator<<();
              sub_10003C2E4(&buf[16], ",  ", 3);
              LOBYTE(v235) = 34;
              v153 = sub_10003C2E4(&buf[16], &v235, 1);
              v154 = sub_10003C2E4(v153, "prbGpsSaysIndoor", 16);
              LOBYTE(v235) = 34;
              v155 = sub_10003C2E4(v154, &v235, 1);
              sub_10003C2E4(v155, ": ", 2);
              std::ostream::operator<<();
              sub_10003C2E4(&buf[16], ",  ", 3);
              LOBYTE(v235) = 34;
              v156 = sub_10003C2E4(&buf[16], &v235, 1);
              v157 = sub_10003C2E4(v156, "prbParticleFilterSaysYield", 26);
              LOBYTE(v235) = 34;
              v158 = sub_10003C2E4(v157, &v235, 1);
              sub_10003C2E4(v158, ": ", 2);
              std::ostream::operator<<();
              sub_10003C2E4(&buf[16], ",  ", 3);
              LOBYTE(v235) = 34;
              v159 = sub_10003C2E4(&buf[16], &v235, 1);
              v160 = sub_10003C2E4(v159, "prbOnFloors", 11);
              LOBYTE(v235) = 34;
              v161 = sub_10003C2E4(v160, &v235, 1);
              sub_10003C2E4(v161, ": ", 2);
              std::ostream::operator<<();
              sub_10003C2E4(&buf[16], ",  ", 3);
              LOBYTE(v235) = 34;
              v162 = sub_10003C2E4(&buf[16], &v235, 1);
              v163 = sub_10003C2E4(v162, "prbOnFloor", 10);
              LOBYTE(v235) = 34;
              v164 = sub_10003C2E4(v163, &v235, 1);
              sub_10003C2E4(v164, ": [", 3);
              v165 = v289;
              if (v289 != *(&v289 + 1))
              {
                std::ostream::operator<<();
                for (i = v165 + 8; i != *(&v165 + 1); i += 8)
                {
                  sub_10003C2E4(&buf[16], ", ", 2);
                  std::ostream::operator<<();
                }
              }

              sub_10003C2E4(&buf[16], "],  ", 4);
              LOBYTE(v235) = 34;
              v167 = sub_10003C2E4(&buf[16], &v235, 1);
              v168 = sub_10003C2E4(v167, "prbInlier", 9);
              LOBYTE(v235) = 34;
              v169 = sub_10003C2E4(v168, &v235, 1);
              sub_10003C2E4(v169, ": ", 2);
              std::ostream::operator<<();
              sub_10003C2E4(&buf[16], ",  ", 3);
              LOBYTE(v235) = 34;
              v170 = sub_10003C2E4(&buf[16], &v235, 1);
              v171 = sub_10003C2E4(v170, "prbLocalizerIoWrapperSaysWifiOk", 31);
              LOBYTE(v235) = 34;
              v172 = sub_10003C2E4(v171, &v235, 1);
              sub_10003C2E4(v172, ": ", 2);
              std::ostream::operator<<();
              sub_10003C2E4(&buf[16], ",  ", 3);
              LOBYTE(v235) = 34;
              v173 = sub_10003C2E4(&buf[16], &v235, 1);
              v174 = sub_10003C2E4(v173, "motionUpdateSource", 18);
              LOBYTE(v235) = 34;
              v175 = sub_10003C2E4(v174, &v235, 1);
              sub_10003C2E4(v175, ": ", 2);
              std::ostream::operator<<();
              sub_10003C2E4(&buf[16], ",  ", 3);
              LOBYTE(v235) = 34;
              v176 = sub_10003C2E4(&buf[16], &v235, 1);
              v177 = sub_10003C2E4(v176, "prbRawCLOutdoorServiceSaysIndoor", 32);
              LOBYTE(v235) = 34;
              v178 = sub_10003C2E4(v177, &v235, 1);
              sub_10003C2E4(v178, ": ", 2);
              std::ostream::operator<<();
              sub_10003C2E4(&buf[16], ",  ", 3);
              LOBYTE(v235) = 34;
              v179 = sub_10003C2E4(&buf[16], &v235, 1);
              v180 = sub_10003C2E4(v179, "prbCoarseIndoorSaysIndoorWifiAndGps", 35);
              LOBYTE(v235) = 34;
              v181 = sub_10003C2E4(v180, &v235, 1);
              sub_10003C2E4(v181, ": ", 2);
              std::ostream::operator<<();
              sub_10003C2E4(&buf[16], ",  ", 3);
              LOBYTE(v235) = 34;
              v182 = sub_10003C2E4(&buf[16], &v235, 1);
              v183 = sub_10003C2E4(v182, "prbZAxisSaysIndoor", 18);
              LOBYTE(v235) = 34;
              v184 = sub_10003C2E4(v183, &v235, 1);
              sub_10003C2E4(v184, ": ", 2);
              std::ostream::operator<<();
              sub_10003C2E4(&buf[16], " }", 2);
              std::stringbuf::str();
              *&buf[16] = v185;
              if (SBYTE1(v350) < 0)
              {
                operator delete(*v346);
              }

              std::locale::~locale(&v334);
              std::iostream::~basic_iostream();
              std::ios::~ios();
              v186 = __dst;
              if (v331 < 0)
              {
                v186 = *__dst;
              }

              LODWORD(v332[0]) = 136446210;
              *(v332 + 4) = v186;
              _os_log_impl(&_mh_execute_header, v142, OS_LOG_TYPE_DEFAULT, "%{public}s", v332, 0xCu);
              if (v331 < 0)
              {
                operator delete(*__dst);
              }
            }

            if ((v317 & 0x8000000000) == 0 || HIDWORD(v301) != 4 || v283)
            {
LABEL_312:
              if (*(a1 + 1832) != *(a1 + 1840))
              {
                sub_1001F90BC(*(a1 + 176), (a1 + 1544), v332);
                sub_1001F9220(*(a1 + 176), (a1 + 1544), &v235);
                sub_100127C24(a1 + 2240, v329);
                sub_100123518(a1 + 2240, *(&v274 + 1));
                std::mutex::lock((a1 + 1768));
                v193 = *(a1 + 1832);
                for (j = *(a1 + 1840); v193 != j; ++v193)
                {
                  v195 = *v193;
                  *buf = off_10043DB28;
                  *&buf[8] = 0uLL;
                  buf[24] &= 0xFCu;
                  v196 = *(a1 + 2408);
                  if (v196)
                  {
                    sub_100236140(v196, *(&v279 + 1));
                  }

                  sub_1001294D4(buf, NAN);
                  sub_1001294DC(buf, NAN);
                  v197 = *(a1 + 2144);
                  v198 = sub_1001E4E00(*(a1 + 176));
                  (*(*v195 + 16))(v195, v262, v332, &v235, a1 + 224, a1 + 56, v197, a1 + 2240, buf, v198, a1 + 1536);
                  nullsub_76();
                }

                std::mutex::unlock((a1 + 1768));
                v199 = v235;
                if (v235)
                {
                  v200 = v236;
                  v201 = v235;
                  if (v236 != v235)
                  {
                    do
                    {
                      v200 -= 37;
                      sub_1001E3B48(&v235, v200);
                    }

                    while (v200 != v199);
                    v201 = v235;
                  }

                  v236 = v199;
                  operator delete(v201);
                }

                v202 = *&v332[0];
                if (*&v332[0])
                {
                  v203 = *(&v332[0] + 1);
                  v204 = *&v332[0];
                  if (*(&v332[0] + 1) != *&v332[0])
                  {
                    do
                    {
                      v203 -= 37;
                      sub_1001E3B48(v332, v203);
                    }

                    while (v203 != v202);
                    v204 = *&v332[0];
                  }

                  *(&v332[0] + 1) = v202;
                  operator delete(v204);
                }
              }

              v205 = (*(*v318 + 56))(v318);
              *buf = 0uLL;
              if (v205)
              {
                operator new();
              }

              std::mutex::lock((a1 + 1592));
              v206 = *(a1 + 1656);
              for (k = *(a1 + 1664); v206 != k; ++v206)
              {
                v208 = *v206;
                v209 = v329;
                nullsub_35();
                (*(*v208 + 16))(v208, v209, v262, v210, buf);
              }

              std::mutex::unlock((a1 + 1592));
              v211 = *&buf[8];
              if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
              {
                (v211->__on_zero_shared)(v211);
                std::__shared_weak_count::__release_weak(v211);
              }

              std::mutex::lock((a1 + 1680));
              v212 = *(a1 + 1744);
              for (m = *(a1 + 1752); v212 != m; ++v212)
              {
                v214 = *v212;
                v215 = v329;
                nullsub_35();
                (*(*v214 + 32))(v214, v215, v262, v216);
              }

              std::mutex::unlock((a1 + 1680));
              if ((v317 & 0x8000000000) != 0 && HIDWORD(v301) == 4 && !v283)
              {
                v217 = (*(*v318 + 56))(v318);
                sub_1001D9D1C(a1, v217);
              }

              *a4 = 0;
              sub_100126300((a4 + 8), v262);
              *a4 = 1;
              if (v237)
              {
                v238 = v237;
                operator delete(v237);
              }

              v218 = v246.__vftable;
              if (v246.__vftable)
              {
                imp = v246.__imp_.__imp_;
                v220 = v246.__vftable;
                if (v246.__imp_.__imp_ != v246.__vftable)
                {
                  do
                  {
                    v221 = *(imp - 1);
                    if (v221 && !atomic_fetch_add(&v221->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                    {
                      (v221->__on_zero_shared)(v221);
                      std::__shared_weak_count::__release_weak(v221);
                    }

                    imp -= 16;
                  }

                  while (imp != v218);
                  v220 = v246.__vftable;
                }

                v246.__imp_.__imp_ = v218;
                operator delete(v220);
              }

              nullsub_76();
              sub_1001234CC(v262);
              v57 = v319;
              if (!v319)
              {
                goto LABEL_354;
              }

              goto LABEL_352;
            }

            v187 = a1 + 1352;
            v188 = (a1 + 1200);
            v189 = a1 + 1200;
            if (*(a1 + 1352) == 1)
            {
              v189 = a1 + 1352;
              if (*v188 == 1)
              {
                if (*(a1 + 1368) <= *(a1 + 1216))
                {
                  v189 = a1 + 1200;
                }

                else
                {
                  v189 = a1 + 1352;
                }
              }
            }

            v190 = (a1 + 1048);
            v191 = (a1 + 1048);
            if (*v189 == 1)
            {
              if (*v190 != 1)
              {
                if (*v189 != 1)
                {
                  goto LABEL_312;
                }

                goto LABEL_293;
              }

              if (*(v189 + 16) <= *(a1 + 1064))
              {
                v191 = (a1 + 1048);
              }

              else
              {
                v191 = v189;
              }
            }

            if (*v191 != 1)
            {
              goto LABEL_312;
            }

LABEL_293:
            v192 = (*(*v318 + 56))(v318);
            if (*v187 == 1)
            {
              if (*v188 == 1 && *(a1 + 1368) <= *(a1 + 1216))
              {
                v187 = a1 + 1200;
              }
            }

            else
            {
              v187 = a1 + 1200;
            }

            if (*v187 == 1)
            {
              if (*v190 == 1)
              {
                if (*(v187 + 16) > *(a1 + 1064))
                {
                  v190 = v187;
                }
              }

              else
              {
                v190 = v187;
              }
            }

            sub_1001BB864((a1 + 2416), v262, v192, (v190 + 8), &v329);
            goto LABEL_312;
          }

          v102 = qword_10045DFA8;
          if (!qword_10045DFA8)
          {
LABEL_194:
            sub_10001C6D4("map::at:  key not found");
          }

          while (1)
          {
            while (1)
            {
              v103 = *(v102 + 32);
              if (v283 >= v103)
              {
                break;
              }

              v102 = *v102;
              if (!v102)
              {
                goto LABEL_194;
              }
            }

            if (v103 >= v283)
            {
              break;
            }

            v102 = *(v102 + 8);
            if (!v102)
            {
              goto LABEL_194;
            }
          }

          v104 = *(v102 + 40);
          v105 = strlen(v104);
          if (v105 > 0x7FFFFFFFFFFFFFF7)
          {
            sub_10000D39C();
          }

          v106 = v105;
          if (v105 >= 0x17)
          {
            operator new();
          }

          v331 = v105;
          if (v105)
          {
            memmove(__dst, v104, v105);
          }

          v234 = a4;
          __dst[v106] = 0;
          if (v331 >= 0)
          {
            v107 = __dst;
          }

          else
          {
            v107 = *__dst;
          }

          v108 = v263;
          v109 = sub_10011823C(&v320);
          v110 = qword_10045E010;
          if (!qword_10045E010)
          {
LABEL_210:
            sub_10001C6D4("map::at:  key not found");
          }

          v111 = v109;
          while (1)
          {
            while (1)
            {
              v112 = *(v110 + 32);
              if (SHIDWORD(v301) >= v112)
              {
                break;
              }

              v110 = *v110;
              if (!v110)
              {
                goto LABEL_210;
              }
            }

            if (v112 >= SHIDWORD(v301))
            {
              break;
            }

            v110 = *(v110 + 8);
            if (!v110)
            {
              goto LABEL_210;
            }
          }

          v232 = v274;
          v233 = v282;
          v113 = *(v110 + 40);
          v114 = strlen(v113);
          if (v114 > 0x7FFFFFFFFFFFFFF7)
          {
            sub_10000D39C();
          }

          v115 = v114;
          v230 = v297;
          v231 = v111;
          if (v114 >= 0x17)
          {
            operator new();
          }

          v250 = v114;
          if (v114)
          {
            memmove(&v248, v113, v114);
          }

          *(&v248.__vftable + v115) = 0;
          if (v250 >= 0)
          {
            v116 = &v248;
          }

          else
          {
            v116 = v248.__vftable;
          }

          v117 = qword_10045DFE0;
          if (!qword_10045DFE0)
          {
LABEL_226:
            sub_10001C6D4("map::at:  key not found");
          }

          while (1)
          {
            while (1)
            {
              v118 = *(v117 + 32);
              if (v310 >= v118)
              {
                break;
              }

              v117 = *v117;
              if (!v117)
              {
                goto LABEL_226;
              }
            }

            if (v118 >= v310)
            {
              break;
            }

            v117 = *(v117 + 8);
            if (!v117)
            {
              goto LABEL_226;
            }
          }

          v119 = *(v117 + 40);
          v120 = strlen(v119);
          if (v120 > 0x7FFFFFFFFFFFFFF7)
          {
            sub_10000D39C();
          }

          v121 = v120;
          if (v120 >= 0x17)
          {
            operator new();
          }

          HIBYTE(v247) = v120;
          if (v120)
          {
            memmove(&v246, v119, v120);
          }

          *(&v246.__vftable + v121) = 0;
          v122 = &v246;
          if (v247 < 0)
          {
            v122 = v246.__vftable;
          }

          *buf = 136449027;
          *&buf[4] = v107;
          *&buf[12] = 2053;
          *&buf[14] = v108;
          *&buf[22] = 2053;
          *&buf[24] = *(&v108 + 1);
          v334 = 2081;
          v335 = v231;
          v336 = 2048;
          v337 = v232;
          v338 = 2048;
          v339 = v233;
          v340 = 1024;
          v341 = v230;
          v342 = 2082;
          v343 = v116;
          v344 = 2082;
          v345 = v122;
          *v346 = 2053;
          *&v346[2] = v266;
          v347 = 2053;
          v348 = *(&v266 + 1);
          v349 = 2048;
          v350 = *(&v279 + 1);
          _os_log_impl(&_mh_execute_header, v101, OS_LOG_TYPE_DEFAULT, "%{public}s p = x,y: %{sensitive}f,%{sensitive}f %{private}s sigmaDist: %f m horizontalAccuracy: %f m strobe: %d yield-source: %{public}s yield-type: %{public}s, converted lat-lon: %{sensitive}.10f, %{sensitive}.10f t=%lld", buf, 0x76u);
          if (SHIBYTE(v247) < 0)
          {
            operator delete(v246.__vftable);
            a4 = v234;
            if ((v250 & 0x80000000) == 0)
            {
LABEL_237:
              if ((v331 & 0x80000000) == 0)
              {
                goto LABEL_238;
              }

              goto LABEL_300;
            }
          }

          else
          {
            a4 = v234;
            if ((v250 & 0x80000000) == 0)
            {
              goto LABEL_237;
            }
          }

          operator delete(v248.__vftable);
          if ((v331 & 0x80000000) == 0)
          {
LABEL_238:
            if (qword_10045B050 == -1)
            {
              goto LABEL_239;
            }

LABEL_301:
            sub_100385280();
            goto LABEL_239;
          }

LABEL_300:
          operator delete(*__dst);
          if (qword_10045B050 == -1)
          {
            goto LABEL_239;
          }

          goto LABEL_301;
        }

LABEL_151:
        sub_100123608(v262, 0x8000000000000000);
        *&v291 = 0;
        goto LABEL_178;
      }

      v86 = 6.28318531;
    }

    sub_100123580(v262, v86);
    goto LABEL_170;
  }

  *a4 = 0;
  sub_1001234CC(v262);
  v57 = v319;
  if (v319)
  {
LABEL_352:
    if (!atomic_fetch_add(&v57->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v57->__on_zero_shared)(v57);
      std::__shared_weak_count::__release_weak(v57);
    }
  }

LABEL_354:
  v222 = v321;
  if (v321 && !atomic_fetch_add(&v321->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v222->__on_zero_shared)(v222);
    std::__shared_weak_count::__release_weak(v222);
  }

  v223 = v328;
  if (v328 && !atomic_fetch_add(&v328->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v223->__on_zero_shared)(v223);
    std::__shared_weak_count::__release_weak(v223);
  }

  sub_1001DF9C0(&v327);
  v224 = v326;
  if (v326)
  {
    do
    {
      v225 = v224;
      v224 = *v224;
      v226 = v225[3];
      if (v226 && !atomic_fetch_add(&v226->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v227 = v225;
        (v226->__on_zero_shared)(v226);
        std::__shared_weak_count::__release_weak(v226);
        v225 = v227;
      }

      operator delete(v225);
    }

    while (v224);
  }

  v228 = v325;
  v325 = 0;
  if (v228)
  {
    operator delete(v228);
  }

  sub_1001FE7FC(&v324);
  v229 = v323;
  if (v323 && !atomic_fetch_add(&v323->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v229->__on_zero_shared)(v229);
    std::__shared_weak_count::__release_weak(v229);
  }
}

void sub_1001DD19C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, std::runtime_error a52)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::runtime_error::~runtime_error(&a52);
  if (a31 < 0)
  {
    operator delete(a26);
  }

  __cxa_end_catch();
  JUMPOUT(0x1001DD2B4);
}

void sub_1001DD28C()
{
  if (v0)
  {
    sub_100385864();
  }

  JUMPOUT(0x1001DD2A4);
}

void sub_1001DD2F0(void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (v3 != *a1)
  {
    do
    {
      v5 = *(v3 - 6);
      if (v5)
      {
        *(v3 - 5) = v5;
        operator delete(v5);
      }

      v6 = v3 - 9;
      v7 = *(v3 - 9);
      if (v7)
      {
        v8 = *(v3 - 8);
        v4 = *(v3 - 9);
        if (v8 != v7)
        {
          v9 = v8 - 168;
          do
          {
            v11 = *(v8 - 44);
            if (v11 == v11 >> 31)
            {
              if (*(v8 - 128) == 1)
              {
                *(v8 - 128) = 0;
              }
            }

            else
            {
              v10 = *(v8 - 21);
              if (v11 < 0)
              {
                if (v10)
                {
                  (*(*v10 + 8))(v10);
                }
              }

              else
              {
                (*v10)(v8 - 168);
              }
            }

            v8 -= 208;
            v9 -= 208;
          }

          while (v8 != v7);
          v4 = *v6;
        }

        *(v3 - 8) = v7;
        operator delete(v4);
      }

      v3 -= 9;
    }

    while (v6 != v2);
  }

  a1[1] = v2;
}

void sub_1001DD414(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000BF664(a1);
  v6 = sub_100118234(a2);
  std::string::operator=((a1 + 104), v6);
  v10[0] = (*(*a3 + 24))(a3);
  v10[1] = v7;
  v10[2] = v8;
  v10[3] = v9;
  sub_10031CC94(v10, v11);
  sub_10012A358(a1 + 8, v11);
  nullsub_75();
}

void sub_1001DD4B8(_Unwind_Exception *a1)
{
  nullsub_75();
  sub_1001234CC(v1);
  _Unwind_Resume(a1);
}

void sub_1001DD4FC(uint64_t a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = sub_1001F41FC(a4);
  v10 = a2[1];
  v66 = *a2;
  v67 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  sub_1002347FC(v9, &v66, &v68);
  v11 = v67;
  if (v67 && !atomic_fetch_add(&v67->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  sub_10023386C((a1 + 528), &v68);
  if (*(a1 + 664) != 1 || a3 - *(a1 + 672) >= 2000000001)
  {
    sub_100233FD4((a1 + 528), &v68);
    if ((*(a1 + 664) & 1) == 0)
    {
      *(a1 + 664) = 1;
    }

    *(a1 + 672) = a3;
  }

  sub_1002347F4((a1 + 528), a5);
  v58 = *a2;
  nullsub_35();
  v13 = sub_100118234(v12);
  v14 = v13[1] - *v13;
  if (v14)
  {
    if (!((0xCCCCCCCCCCCCCCCDLL * (v14 >> 4)) >> 61))
    {
      operator new();
    }

    sub_10000FC84();
  }

  v59 = a1;
  v60 = a5;
  for (i = *(sub_1001F41FC(a4) + 16); i; i = *i)
  {
    sub_100176F74(v59 + 2032, i[2], v58, &buf);
    if (i[6] != i[7])
    {
      operator new();
    }

    nullsub_75();
  }

  v16 = llround(0 * 0.655);
  if (v16 > -1)
  {
    v16 = -1;
  }

  v17 = (8 * v16);
  if (v17)
  {
    sub_1001DFAAC(0, (8 * v16), 0);
  }

  sub_1001235BC(a5, sqrt(*v17));
  v18 = (*(**a2 + 64))();
  v19 = sub_100118234(v18);
  std::string::operator=((a5 + 104), v19);
  v20 = (*(**a2 + 72))() != 0;
  sub_100123670(a5, 4 * v20);
  v21 = (*(**a2 + 56))();
  v22 = v21;
  if (*(v59 + 688) == 1 && !*(a5 + 524) && v21)
  {
    sub_10011B8B8(v65, v21);
    sub_1000B9540(v65);
  }

  v23 = sub_1001F421C(a4);
  sub_100123708(a5, v23);
  v24 = *a2;
  v25 = *(v59 + 248);
  if ((*(**a2 + 72))(*a2) != 1)
  {
    if ((v26 = (*(*v24 + 16))(v24), v27 = v26, v28 = *(a5 + 524), v28 != 2) && (v28 || *(a5 + 608) != 2) || ((*(*v26 + 48))(v26) & 1) == 0)
    {
      v29 = (*(*v27 + 16))(v27, *(a5 + 16), *(a5 + 24));
      if ((v29 & 1) == 0)
      {
        (*(*v24 + 80))(&buf, v24, v60 + 8);
        sub_100123684(v60, &buf);
        if ((v29 & 0x100) != 0)
        {
          v30 = sub_100251B00(v25);
          sub_1002D15E0(v27, v60 + 8, &v63, v30);
          sub_100123508(v60, &v63);
          nullsub_75();
        }

        nullsub_76();
      }
    }
  }

  v31 = sub_1001F4224(a4);
  *(v60 + 168) = *(v31 + 16);
  sub_100123558(v60, v72);
  v32 = *(v60 + 184);
  v33 = sub_1001F3628(v31);
  *(v60 + 160) = v32 * v33 * v72;
  if (v22)
  {
    sub_10012D378(v62, v60 + 8);
    v34 = sub_10033CDF4(v22, v62, 0, 1, 1, *(v60 + 280));
    nullsub_75();
    sub_1001236B8(v60, v34);
    if (sub_1001F421C(a4) == 2)
    {
      sub_10012D378(v61, v60 + 8);
      v35 = sub_10033D634(v22, v61, 0, 1, *(v60 + 152));
      nullsub_75();
      sub_1001236F4(v60, v35);
    }
  }

  v36 = *(v59 + 248);
  if (sub_1001F421C(a4) != 2)
  {
    v41 = sub_1001F4268(a4, *(v60 + 160));
    *(v60 + 296) = !sub_1001F43B0(v41);
    if (!v22)
    {
      goto LABEL_57;
    }

    goto LABEL_54;
  }

  v37 = *(v60 + 152);
  if (v37 > sub_1002514B8(v36))
  {
    goto LABEL_53;
  }

  v38 = *(v60 + 752);
  if ((v38 & 0x2000000000000) != 0)
  {
    v39 = *(v60 + 648);
    v40 = sub_100251568(v36);
LABEL_47:
    if (v39 > v40)
    {
      goto LABEL_53;
    }

    goto LABEL_48;
  }

  if ((v38 & 0x4000000000000) != 0)
  {
    v39 = *(v60 + 656);
    v40 = sub_10025153C(v36);
    goto LABEL_47;
  }

LABEL_48:
  v42 = *(v60 + 752);
  if ((v42 & 0x80000000000) != 0)
  {
    v43 = *(v60 + 600);
    v44 = sub_100251510(v36);
  }

  else
  {
    if ((v42 & 0x20000000000) == 0)
    {
      goto LABEL_53;
    }

    v43 = *(v60 + 560);
    v44 = sub_1002514E4(v36);
  }

  if (v43 > v44)
  {
LABEL_53:
    *(v60 + 296) = 1;
    if (!v22)
    {
      goto LABEL_57;
    }

    goto LABEL_54;
  }

  *(v60 + 296) = 0;
  if (!v22)
  {
    goto LABEL_57;
  }

LABEL_54:
  if ((*(v22 + 1913) & 0x40) != 0 && sub_100232F68(v22))
  {
    sub_10012353C(v60, *(v22 + 1616));
    *(v59 + 524) = *(v22 + 1616);
    *(v59 + 520) = 1;
  }

LABEL_57:
  v45 = sub_100240B3C(*(v59 + 152));
  sub_1001236CC(v60, v45);
  sub_100123518(v60, NAN);
  sub_100122404(v60, NAN);
  sub_1001235A8(v60, 0.0);
  (*(**a2 + 48))(&v63);
  if (sub_100225454(*(v59 + 296)))
  {
    if (v63)
    {
      v46 = sub_100225464(*(v59 + 296), v63);
      sub_100122404(v60, v46);
      if (*(v59 + 368) != *(v59 + 376))
      {
        nullsub_35();
        v48 = sub_100218004(v47, v63);
        sub_100122404(v60, v48);
        v49 = sub_10026EEB4(v59 + 328);
        sub_1001235A8(v60, v49);
        sub_10026EEA8(v59 + 328);
      }
    }
  }

  sub_100123594(v60, NAN);
  v50.n128_u64[0] = *(v60 + 24);
  v51 = v64;
  if (v64 && !atomic_fetch_add(&v64->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v51->__on_zero_shared)(v51, v50.n128_f64[0]);
    std::__shared_weak_count::__release_weak(v51);
  }

  v52 = v71;
  if (v71 && !atomic_fetch_add(&v71->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v52->__on_zero_shared)(v52, v50);
    std::__shared_weak_count::__release_weak(v52);
  }

  if (__p)
  {
    v70 = __p;
    operator delete(__p);
  }

  v53 = v68.n128_u64[0];
  if (v68.n128_u64[0])
  {
    v54 = v68.n128_u64[1];
    v55 = v68.n128_u64[0];
    if (v68.n128_u64[1] != v68.n128_u64[0])
    {
      do
      {
        v56 = *(v54 - 16);
        if (v56 && !atomic_fetch_add(&v56->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v56->__on_zero_shared)(v56, v50);
          std::__shared_weak_count::__release_weak(v56);
        }

        v54 -= 80;
      }

      while (v54 != v53);
      v55 = v68.n128_u64[0];
    }

    v68.n128_u64[1] = v53;
    operator delete(v55);
  }
}

void sub_1001DE6C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  nullsub_75();
  sub_1001234CC(&STACK[0xC30]);
  sub_1000B9C50(&STACK[0xB48]);
  sub_1001234CC(a18);
  sub_1001DFF94(&STACK[0xB98]);
  _Unwind_Resume(a1);
}

void sub_1001DE82C(_Unwind_Exception *a1)
{
  sub_1001234CC(v1);
  sub_1001DFF94(&STACK[0xB98]);
  _Unwind_Resume(a1);
}

void sub_1001DE88C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  sub_10002BB1C(va);
  JUMPOUT(0x1001DE898);
}

void **sub_1001DE8B0(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v3 -= 37;
        sub_1001E3B48(a1, v3);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_1001DE918(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = off_10043D898;
  v6 = a3 + 8;
  *(a3 + 8) = off_10043DB08;
  *(a3 + 16) = 0u;
  *(a3 + 32) &= 0xFCu;
  v7 = a3 + 40;
  *(a3 + 40) = off_10043DB28;
  *(a3 + 48) = 0u;
  *(a3 + 64) &= 0xFCu;
  *(a3 + 72) = 0u;
  *(a3 + 88) = 0;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0;
  *(a3 + 152) = 0u;
  *(a3 + 168) = 0u;
  *(a3 + 184) = 0u;
  *(a3 + 200) = 0u;
  *(a3 + 216) = 0u;
  *(a3 + 232) = 0u;
  *(a3 + 248) = 0u;
  *(a3 + 136) = 0u;
  v8 = a3 + 136;
  *(v8 + 128) = 0u;
  *(v8 + 144) = 0u;
  *(a3 + 300) = 0;
  *(a3 + 304) = off_10043D858;
  *(a3 + 312) = 0u;
  *(a3 + 328) = 0u;
  *(a3 + 344) = 0u;
  *(a3 + 360) = 0u;
  *(a3 + 376) = 0u;
  *(a3 + 392) = 0u;
  *(a3 + 408) = 0u;
  *(a3 + 424) = 0;
  *(a3 + 448) = 0;
  *(a3 + 432) = 0u;
  *(a3 + 456) &= 0xC0u;
  *(a3 + 464) = 0;
  *(a3 + 472) = 0u;
  *(a3 + 488) = 0u;
  *(a3 + 504) = 0u;
  *(a3 + 520) = 0;
  *(a3 + 528) = off_10043DB28;
  *(a3 + 536) = 0u;
  *(a3 + 552) &= 0xFCu;
  *(a3 + 560) = 0;
  *(a3 + 568) = off_10043D878;
  *(a3 + 576) = 0u;
  *(a3 + 592) &= 0xF8u;
  *(a3 + 600) = 0;
  *(a3 + 608) = 0;
  *(a3 + 616) = 0u;
  *(a3 + 632) = 0u;
  *(a3 + 648) = 0u;
  *(a3 + 664) = 0;
  *(a3 + 700) = 0u;
  *(a3 + 672) = 0u;
  *(a3 + 688) = 0u;
  *(a3 + 720) = 0u;
  *(a3 + 736) = 0u;
  *(a3 + 752) = *(a3 + 752) & 0xF000000000000000 | 0x10000000;
  *(a3 + 296) = 4;
  sub_10012A358(v7, a1 + 48);
  *(a3 + 752) |= 2uLL;
  v9 = *(a1 + 112);
  *(a3 + 152) = v9;
  sub_1001235BC(a3, v9);
  sub_10012356C(a3, *(a1 + 24));
  *(a3 + 296) = 0;
  sub_100123670(a3, 1);
  sub_100123654(a3, 8.0);
  if (*a2 == 1)
  {
    sub_10012DA9C(v15, a1 + 48);
    sub_1000B9228(a2 + 8, v15, v16);
    sub_1000B93B4(v16, &v17);
    sub_10012A358(v6, &v17);
    nullsub_75();
    nullsub_76();
    if ((~*(a1 + 208) & 0x8080) == 0)
    {
      v10 = sub_1000BC004(*(a1 + 176));
      v11 = *(a1 + 120);
      v12 = *(a2 + 48);
      v17 = *(a2 + 40);
      v18 = v12;
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v13 = sub_1000BC6A0(&v17, v11);
      sub_100123518(a3, v13);
      v14 = v18;
      if (v18)
      {
        if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v14->__on_zero_shared)(v14);
          std::__shared_weak_count::__release_weak(v14);
        }
      }

      sub_100123580(a3, v10 * v10);
    }
  }
}

void sub_1001DEC68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_10002BB1C(va);
  sub_1001234CC(v16);
  _Unwind_Resume(a1);
}

void sub_1001DEC84(_Unwind_Exception *a1)
{
  nullsub_75();
  nullsub_76();
  sub_1001234CC(v1);
  _Unwind_Resume(a1);
}

void *sub_1001DECD8(void *a1)
{
  *a1 = off_1004422C0;
  sub_10012E8E4((a1 + 2));
  return a1;
}

void sub_1001DED1C(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  std::mutex::lock((a1 + 1592));
  sub_10003ABD8(a1 + 1656, &v3);
  std::mutex::unlock((a1 + 1592));
}

void sub_1001DED78(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 1592));
  v4 = *(a1 + 1656);
  v5 = *(a1 + 1664);
  if (v4 != v5)
  {
    v6 = *(a1 + 1656);
    while (*v6 != a2)
    {
      v6 += 8;
      v4 += 8;
      if (v6 == v5)
      {
        v4 = *(a1 + 1664);
        break;
      }
    }
  }

  if (v5 != v4)
  {
    v7 = (v5 - (v4 + 8));
    if (v5 != v4 + 8)
    {
      memmove(v4, v4 + 8, v5 - (v4 + 8));
    }

    *(a1 + 1664) = &v7[v4];
  }

  std::mutex::unlock((a1 + 1592));
}

void sub_1001DEE1C(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  std::mutex::lock((a1 + 1680));
  sub_10003ABD8(a1 + 1744, &v3);
  std::mutex::unlock((a1 + 1680));
}

void sub_1001DEE78(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 1680));
  v4 = *(a1 + 1744);
  v5 = *(a1 + 1752);
  if (v4 != v5)
  {
    v6 = *(a1 + 1744);
    while (*v6 != a2)
    {
      v6 += 8;
      v4 += 8;
      if (v6 == v5)
      {
        v4 = *(a1 + 1752);
        break;
      }
    }
  }

  if (v5 != v4)
  {
    v7 = (v5 - (v4 + 8));
    if (v5 != v4 + 8)
    {
      memmove(v4, v4 + 8, v5 - (v4 + 8));
    }

    *(a1 + 1752) = &v7[v4];
  }

  std::mutex::unlock((a1 + 1680));
}

void sub_1001DEF1C(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  std::mutex::lock((a1 + 1768));
  sub_10003ABD8(a1 + 1832, &v3);
  *(a1 + 2232) = *(a1 + 1832) != *(a1 + 1840);
  std::mutex::unlock((a1 + 1768));
}

void sub_1001DEF8C(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 1768));
  v4 = *(a1 + 1832);
  v5 = *(a1 + 1840);
  v6 = v4;
  if (v4 != v5)
  {
    v7 = *(a1 + 1832);
    while (*v7 != a2)
    {
      v7 += 8;
      v6 += 8;
      if (v7 == v5)
      {
        v6 = *(a1 + 1840);
        break;
      }
    }
  }

  v8 = (v5 - (v6 + 8));
  if (v5 != v6 + 8)
  {
    memmove(v6, v6 + 8, v5 - (v6 + 8));
    v4 = *(a1 + 1832);
  }

  *(a1 + 1840) = &v8[v6];
  *(a1 + 2232) = v4 != &v8[v6];

  std::mutex::unlock((a1 + 1768));
}

void sub_1001DF03C(std::mutex *a1, uint64_t a2)
{
  v3 = a2;
  std::mutex::lock(a1 + 29);
  sub_10003ABD8(&a1[30], &v3);
  std::mutex::unlock(a1 + 29);
}

void sub_1001DF098(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 1856));
  v4 = *(a1 + 1920);
  v5 = *(a1 + 1928);
  if (v4 != v5)
  {
    v6 = *(a1 + 1920);
    while (*v6 != a2)
    {
      v6 += 8;
      v4 += 8;
      if (v6 == v5)
      {
        v4 = *(a1 + 1928);
        break;
      }
    }
  }

  v7 = (v5 - (v4 + 8));
  if (v5 != v4 + 8)
  {
    memmove(v4, v4 + 8, v5 - (v4 + 8));
  }

  *(a1 + 1928) = &v7[v4];

  std::mutex::unlock((a1 + 1856));
}

uint64_t sub_1001DF134(uint64_t result)
{
  if (*result == 1)
  {
    v1 = *(result + 8);
    if (v1)
    {
      v2 = *(result + 16);
      v3 = *(result + 8);
      if (v2 != v1)
      {
        v4 = result;
        do
        {
          v5 = v2 - 40;
          nullsub_68();
          v2 = v5;
        }

        while (v5 != v1);
        result = v4;
        v3 = *(v4 + 8);
      }

      *(result + 16) = v1;
      v6 = result;
      operator delete(v3);
      result = v6;
    }

    *result = 0;
  }

  return result;
}

uint64_t sub_1001DF1EC(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    do
    {
      v5 = *v2;
      sub_1001C9068((v2 + 5));
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return a1;
}

uint64_t sub_1001DF260(uint64_t a1)
{
  sub_1001DFEB4((a1 + 40));
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      nullsub_75();
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_1001DF2C8(uint64_t result)
{
  if (*result == 1)
  {
    v1 = *(result + 32);
    if (v1)
    {
      *(result + 40) = v1;
      v2 = result;
      operator delete(v1);
      result = v2;
    }

    v3 = *(result + 8);
    if (v3)
    {
      *(result + 16) = v3;
      v4 = result;
      operator delete(v3);
      result = v4;
    }

    *result = 0;
  }

  return result;
}

_BYTE *sub_1001DF330(_BYTE *a1)
{
  if (a1[456] == 1)
  {
    sub_10013CFA4((a1 + 464));
    a1[456] = 0;
    if (a1[304] != 1)
    {
LABEL_3:
      if (a1[152] != 1)
      {
        goto LABEL_4;
      }

LABEL_8:
      sub_10013CFA4((a1 + 160));
      a1[152] = 0;
      if (*a1 != 1)
      {
        return a1;
      }

      goto LABEL_9;
    }
  }

  else if (a1[304] != 1)
  {
    goto LABEL_3;
  }

  sub_10013CFA4((a1 + 312));
  a1[304] = 0;
  if (a1[152] == 1)
  {
    goto LABEL_8;
  }

LABEL_4:
  if (*a1 != 1)
  {
    return a1;
  }

LABEL_9:
  sub_10013CFA4((a1 + 8));
  *a1 = 0;
  return a1;
}

uint64_t sub_1001DF3E8(uint64_t a1)
{
  v2 = *(a1 + 160);
  if (v2)
  {
    *(a1 + 168) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 128);
  if (v3)
  {
    v4 = *(a1 + 136);
    v5 = *(a1 + 128);
    if (v4 != v3)
    {
      do
      {
        v6 = v4 - 40;
        nullsub_68();
        v4 = v6;
      }

      while (v6 != v3);
      v5 = *(a1 + 128);
    }

    *(a1 + 136) = v3;
    operator delete(v5);
  }

  if (*(a1 + 64) == 1)
  {
    v7 = *(a1 + 72);
    if (v7)
    {
      v8 = *(a1 + 80);
      v9 = *(a1 + 72);
      if (v8 != v7)
      {
        do
        {
          v10 = v8 - 40;
          nullsub_68();
          v8 = v10;
        }

        while (v10 != v7);
        v9 = *(a1 + 72);
      }

      *(a1 + 80) = v7;
      operator delete(v9);
    }

    *(a1 + 64) = 0;
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    *(a1 + 48) = v11;
    operator delete(v11);
  }

  nullsub_68();
  return a1;
}

uint64_t *sub_1001DF4C4(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      v3 = *(v1 + 16);
      v4 = *(v1 + 8);
      if (v3 != v2)
      {
        v5 = v3 - 168;
        do
        {
          v7 = *(v3 - 176);
          if (v7 == v7 >> 31)
          {
            if (*(v3 - 128) == 1)
            {
              *(v3 - 128) = 0;
            }
          }

          else
          {
            v6 = *(v3 - 168);
            if (v7 < 0)
            {
              if (v6)
              {
                (*(*v6 + 8))(v6);
              }
            }

            else
            {
              (*v6)(v3 - 168);
            }
          }

          v3 -= 208;
          v5 -= 208;
        }

        while (v3 != v2);
        v4 = *(v1 + 8);
      }

      *(v1 + 16) = v2;
      operator delete(v4);
    }

    operator delete();
  }

  return result;
}

uint64_t sub_1001DF5D8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      sub_1001DF638(v2 + 2);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void sub_1001DF638(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    v3 = a1[3];
    v4 = a1[2];
    if (v3 != v2)
    {
      v5 = v3 - 168;
      do
      {
        v7 = *(v3 - 176);
        if (v7 == v7 >> 31)
        {
          if (*(v3 - 128) == 1)
          {
            *(v3 - 128) = 0;
          }
        }

        else
        {
          v6 = *(v3 - 168);
          if (v7 < 0)
          {
            if (v6)
            {
              (*(*v6 + 8))(v6);
            }
          }

          else
          {
            (*v6)(v3 - 168);
          }
        }

        v3 -= 208;
        v5 -= 208;
      }

      while (v3 != v2);
      v4 = a1[2];
    }

    a1[3] = v2;
    operator delete(v4);
  }

  v8 = a1[1];
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);

    std::__shared_weak_count::__release_weak(v8);
  }
}

void ***sub_1001DF780(void ***result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v3 = result;
      v4 = v1[1];
      v5 = **result;
      if (v4 != v2)
      {
        v6 = v4 - 95;
        v7 = v4 - 95;
        do
        {
          (**v7)(v7);
          v6 -= 95;
          v8 = v7 == v2;
          v7 -= 95;
        }

        while (!v8);
        v5 = **v3;
      }

      v1[1] = v2;
      operator delete(v5);
      return v3;
    }
  }

  return result;
}

uint64_t sub_1001DF830(uint64_t a1)
{
  v2 = *(a1 + 232);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  sub_1001DF904(a1 + 136);
  sub_1001FE7FC(a1 + 24);
  v3 = *(a1 + 8);
  if (!v3 || atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  return a1;
}

uint64_t sub_1001DF904(uint64_t a1)
{
  sub_1001DF9C0(a1 + 40);
  v2 = *(a1 + 16);
  while (v2)
  {
    v3 = v2;
    v2 = *v2;
    v4 = v3[3];
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v5 = v3;
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      v3 = v5;
    }

    operator delete(v3);
  }

  v6 = *a1;
  *a1 = 0;
  if (v6)
  {
    operator delete(v6);
  }

  return a1;
}

uint64_t sub_1001DF9C0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v4 = *v2;
      v5 = v2[4];
      if (v5)
      {
        v6 = v2[5];
        v3 = v2[4];
        if (v6 != v5)
        {
          do
          {
            v7 = *(v6 - 8);
            if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v7->__on_zero_shared)(v7);
              std::__shared_weak_count::__release_weak(v7);
            }

            v6 -= 16;
          }

          while (v6 != v5);
          v3 = v2[4];
        }

        v2[5] = v5;
        operator delete(v3);
      }

      operator delete(v2);
      v2 = v4;
    }

    while (v4);
  }

  v8 = *a1;
  *a1 = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return a1;
}

double *sub_1001DFAAC(double *result, double *a2, double *a3)
{
  while (a3 != a2)
  {
    v3 = a3 - result;
    if (v3 < 2)
    {
      break;
    }

    if (v3 == 3)
    {
      v41 = result[1];
      v42 = *(a3 - 1);
      if (v41 < v42)
      {
        v43 = *(result + 1);
      }

      else
      {
        v43 = *(a3 - 1);
      }

      if (v41 < v42)
      {
        v41 = *(a3 - 1);
      }

      *(a3 - 1) = v41;
      *(result + 1) = v43;
      v44 = *(a3 - 1);
      if (v44 < *result)
      {
        v45 = *(a3 - 1);
      }

      else
      {
        v45 = *result;
      }

      if (v44 < *result)
      {
        v44 = *result;
      }

      *(a3 - 1) = v44;
      v46 = result[1];
      if (v45 < v46)
      {
        result[1] = v46;
      }

      else
      {
        *result = v46;
        result[1] = v45;
      }

      return result;
    }

    if (v3 == 2)
    {
      v47 = *(a3 - 1);
      v48 = *result;
      if (v47 < *result)
      {
        *result = v47;
        *(a3 - 1) = v48;
      }

      return result;
    }

    if (v3 <= 7)
    {
      while (result != a3 - 1)
      {
        v49 = result++;
        if (v49 != a3 && result != a3)
        {
          v50 = *v49;
          v51 = *v49;
          v52 = result;
          v53 = v49;
          v54 = result;
          do
          {
            v55 = *v54++;
            v56 = v55;
            if (v55 < v51)
            {
              v51 = v56;
              v53 = v52;
            }

            v52 = v54;
          }

          while (v54 != a3);
          if (v53 != v49)
          {
            *v49 = *v53;
            *v53 = v50;
          }
        }
      }

      return result;
    }

    v4 = &result[(a3 - result) >> 4];
    v5 = a3 - 1;
    v6 = *(a3 - 1);
    v7 = *v4;
    if (*v4 < v6)
    {
      v8 = *v4;
    }

    else
    {
      v8 = *(a3 - 1);
    }

    if (*v4 < v6)
    {
      v9 = *(a3 - 1);
    }

    else
    {
      v9 = *v4;
    }

    *v5 = v9;
    *v4 = v8;
    v10 = *v5;
    v11 = *result;
    if (*v5 < *result)
    {
      v12 = *v5;
    }

    else
    {
      v12 = *result;
    }

    if (*v5 < *result)
    {
      v13 = *result;
    }

    else
    {
      v13 = *v5;
    }

    *v5 = v13;
    v14 = *v4;
    v15 = *v4;
    if (v12 >= *v4)
    {
      *result = v14;
      v15 = v12;
    }

    v16 = v10 >= v11;
    if (v12 >= v14)
    {
      v16 = 1;
    }

    *v4 = v15;
    if (v7 >= v6)
    {
      v16 = 1;
    }

    v17 = *result;
    if (*result >= v15)
    {
      v18 = a3 - 1;
      while (--v18 != result)
      {
        if (*v18 < v15)
        {
          *result = *v18;
          *v18 = v17;
          if (v16)
          {
            v16 = 2;
          }

          else
          {
            v16 = 1;
          }

          v19 = result + 1;
          if (result + 1 < v18)
          {
            goto LABEL_27;
          }

          goto LABEL_43;
        }
      }

      v30 = result + 1;
      if (v17 >= *v5)
      {
        if (v30 == v5)
        {
          return result;
        }

        while (1)
        {
          v31 = *v30;
          if (v17 < *v30)
          {
            break;
          }

          if (++v30 == v5)
          {
            return result;
          }
        }

        *v30++ = *v5;
        *v5 = v31;
      }

      if (v30 == v5)
      {
        return result;
      }

      while (1)
      {
        v35 = *result;
        do
        {
          v36 = *v30++;
          v37 = v36;
        }

        while (v35 >= v36);
        v38 = v30 - 1;
        do
        {
          v39 = *--v5;
          v40 = v39;
        }

        while (v35 < v39);
        if (v38 >= v5)
        {
          break;
        }

        *v38 = v40;
        *v5 = v37;
      }

      result = v30 - 1;
      if (v38 > a2)
      {
        return result;
      }
    }

    else
    {
      v18 = a3 - 1;
      v19 = result + 1;
      if (result + 1 >= a3 - 1)
      {
LABEL_43:
        v24 = v19;
      }

      else
      {
LABEL_27:
        v20 = v19;
        while (1)
        {
          v21 = *v4;
          do
          {
            v22 = *v20++;
            v23 = v22;
          }

          while (v22 < v21);
          v24 = v20 - 1;
          do
          {
            v25 = *--v18;
            v26 = v25;
          }

          while (v25 >= v21);
          if (v24 >= v18)
          {
            break;
          }

          *v24 = v26;
          *v18 = v23;
          ++v16;
          if (v24 == v4)
          {
            v4 = v18;
          }
        }
      }

      if (v24 != v4)
      {
        v27 = *v24;
        if (*v4 < *v24)
        {
          *v24 = *v4;
          *v4 = v27;
          ++v16;
        }
      }

      if (v24 == a2)
      {
        return result;
      }

      if (!v16)
      {
        if (v24 <= a2)
        {
          v32 = v24 + 1;
          while (v32 != a3)
          {
            v34 = *(v32 - 1);
            v33 = *v32++;
            if (v33 < v34)
            {
              goto LABEL_49;
            }
          }
        }

        else
        {
          while (v19 != v24)
          {
            v29 = *(v19 - 1);
            v28 = *v19++;
            if (v28 < v29)
            {
              goto LABEL_49;
            }
          }
        }

        return result;
      }

LABEL_49:
      if (v24 <= a2)
      {
        result = v24 + 1;
      }

      else
      {
        a3 = v24;
      }
    }
  }

  return result;
}

uint64_t sub_1001DFDF0(uint64_t result, uint64_t a2)
{
  if (*(result + 8) == 1 && a2 - *(result + 24) >= 8000000000)
  {
    *(result + 8) = 0;
  }

  return result;
}

char *sub_1001DFE28@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[103] < 0)
  {
    return sub_100003228(a2, *(result + 10), *(result + 11));
  }

  *a2 = *(result + 5);
  *(a2 + 16) = *(result + 12);
  return result;
}

void sub_1001DFE50(void *a1)
{
  *a1 = off_1004422C0;
  sub_10012E8E4((a1 + 2));

  operator delete();
}

_BYTE *sub_1001DFEB4(_BYTE *result)
{
  if (*result == 1)
  {
    v1 = *(result + 8);
    if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      result = v2;
    }

    v3 = *(result + 6);
    if (v3)
    {
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v4 = result;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        result = v4;
      }
    }

    v5 = result;
    nullsub_76();
    result = v5;
    *v5 = 0;
  }

  return result;
}

char **sub_1001DFF94(char **a1)
{
  v2 = a1[7];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    a1[4] = v3;
    operator delete(v3);
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = a1[1];
    v6 = *a1;
    if (v5 != v4)
    {
      do
      {
        v7 = *(v5 - 2);
        if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v7->__on_zero_shared)(v7);
          std::__shared_weak_count::__release_weak(v7);
        }

        v5 -= 80;
      }

      while (v5 != v4);
      v6 = *a1;
    }

    a1[1] = v4;
    operator delete(v6);
  }

  return a1;
}

void sub_1001E00C0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100442328;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1001E015C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100442378;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1001E01F8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1004423C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t *sub_1001E0258(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_100213A34(v2);
    operator delete();
  }

  return a1;
}

void sub_1001E02CC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100442418;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1001E0320(uint64_t a1)
{
  v2 = *(a1 + 248);
  if (v2)
  {
    v3 = *(a1 + 256);
    v4 = *(a1 + 248);
    if (v3 != v2)
    {
      v5 = v3 - 20;
      v6 = v3 - 20;
      v7 = v3 - 20;
      do
      {
        v8 = *v7;
        v7 -= 20;
        (*v8)(v6);
        v5 -= 20;
        v9 = v6 == v2;
        v6 = v7;
      }

      while (!v9);
      v4 = *(a1 + 248);
    }

    *(a1 + 256) = v2;
    operator delete(v4);
  }

  if (*(a1 + 80) == 1)
  {
    sub_1000B7124((a1 + 88));
    *(a1 + 80) = 0;
  }

  sub_100166AE0(a1 + 24);
}

void sub_1001E0408(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100442468;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1001E045C(uint64_t a1)
{
  if (*(a1 + 88) == 1)
  {
    sub_10006DD50((a1 + 96));
    *(a1 + 88) = 0;
  }

  sub_100167434(a1 + 24);
}

void sub_1001E04CC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1004424B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1001E0548(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100442508;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void ***sub_1001E05C4(void ***a1)
{
  if (*a1)
  {
    sub_1001DD2F0(a1);
    operator delete(*a1);
  }

  return a1;
}

char **sub_1001E0600(char **result)
{
  v1 = *result;
  if (*result)
  {
    for (i = result[1]; i != v1; i -= 88)
    {
      if (*(i - 64) == 1)
      {
        *(i - 64) = 0;
      }
    }

    result[1] = v1;
    v3 = result;
    operator delete(v1);
    return v3;
  }

  return result;
}

__n128 sub_1001E06D8(uint64_t a1, uint64_t a2)
{
  *a2 = off_100442558;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1001E0714(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN18LocalizerIoWrapper27updateMotionUniformTimestepENSt3__16chrono8durationIxNS0_5ratioILl1ELl1000000000EEEEEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN18LocalizerIoWrapper27updateMotionUniformTimestepENSt3__16chrono8durationIxNS0_5ratioILl1ELl1000000000EEEEEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN18LocalizerIoWrapper27updateMotionUniformTimestepENSt3__16chrono8durationIxNS0_5ratioILl1ELl1000000000EEEEEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN18LocalizerIoWrapper27updateMotionUniformTimestepENSt3__16chrono8durationIxNS0_5ratioILl1ELl1000000000EEEEEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_1001E078C(uint64_t *a1, uint64_t a2)
{
  v2 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x2E8BA2E8BA2E8BALL)
  {
    sub_10000FC84();
  }

  if (0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 3)) >= 0x1745D1745D1745DLL)
  {
    v5 = 0x2E8BA2E8BA2E8BALL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x2E8BA2E8BA2E8BALL)
    {
      operator new();
    }

    sub_10000D444();
  }

  v6 = 8 * ((a1[1] - *a1) >> 3);
  *v6 = *a2;
  *(v6 + 16) = *(a2 + 16);
  *(v6 + 24) = 0;
  if (*(a2 + 24) == 1)
  {
    v7 = *(a2 + 48);
    *(88 * v2 + 0x20) = *(a2 + 32);
    *(88 * v2 + 0x30) = v7;
    *(88 * v2 + 0x40) = *(a2 + 64);
    *(88 * v2 + 0x50) = *(a2 + 80);
    *(88 * v2 + 0x18) = 1;
  }

  v8 = *a1;
  v9 = a1[1];
  v10 = v6 - (v9 - *a1);
  v11 = v6 + 88;
  if (v9 != *a1)
  {
    v12 = 88 * v2 - 8 * ((v9 - *a1) >> 3) + 24;
    v13 = v8 + 32;
    do
    {
      v15 = *(v13 - 2);
      *(v12 - 8) = *(v13 - 2);
      *(v12 - 24) = v15;
      *v12 = 0;
      if (*(v13 - 8) == 1)
      {
        v16 = *v13;
        v17 = *(v13 + 1);
        v18 = *(v13 + 2);
        *(v12 + 56) = *(v13 + 6);
        *(v12 + 40) = v18;
        *(v12 + 24) = v17;
        *(v12 + 8) = v16;
        *v12 = 1;
      }

      v14 = v13 - 32;
      v12 += 88;
      v13 += 88;
    }

    while (v14 + 88 != v9);
    do
    {
      if (v8[24] == 1)
      {
        v8[24] = 0;
      }

      v8 += 88;
    }

    while (v8 != v9);
    v8 = *a1;
  }

  *a1 = v10;
  a1[1] = v11;
  a1[2] = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return v11;
}

const void ***sub_1001E0994(void *a1, uint64_t ***a2, uint64_t a3)
{
  v5 = sub_1001183C0(&v15, a2);
  v6 = v5;
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_23;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = v5;
    if (v5 >= *&v7)
    {
      v9 = v5 % *&v7;
    }
  }

  else
  {
    v9 = (*&v7 - 1) & v5;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v8.u32[0] < 2uLL)
  {
    while (1)
    {
      v13 = v11[1];
      if (v13 == v6)
      {
        if (sub_1001182C8(v11 + 2, a2))
        {
          return v11;
        }
      }

      else if ((v13 & (*&v7 - 1)) != v9)
      {
        goto LABEL_23;
      }

      v11 = *v11;
      if (!v11)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v6)
    {
      break;
    }

    if (v12 >= *&v7)
    {
      v12 %= *&v7;
    }

    if (v12 != v9)
    {
      goto LABEL_23;
    }

LABEL_12:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_23;
    }
  }

  if (!sub_1001182C8(v11 + 2, a2))
  {
    goto LABEL_12;
  }

  return v11;
}

void sub_1001E0CD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1001C6420(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001E0CE8(uint64_t a1, std::string *a2)
{
  v29 = 0u;
  v28 = 0u;
  *__p = 0u;
  v26 = 0u;
  v25 = 0u;
  v24 = 0u;
  std::locale::locale(&v24);
  v26 = 0uLL;
  __p[0] = 0;
  __p[1] = 0;
  v28 = 0uLL;
  DWORD2(v29) = 24;
  *(&v24 + 1) = &__p[1];
  *&v25 = &__p[1];
  *(&v25 + 1) = &__p[1];
  *&v29 = &__p[1];
  std::string::resize(&__p[1], 0x16uLL, 0);
  v4 = HIBYTE(v28);
  if (v28 < 0)
  {
    v4 = v28;
  }

  *&v26 = &__p[1];
  *(&v26 + 1) = &__p[1];
  __p[0] = &__p[1] + v4;
  v25 = 0uLL;
  *(&v24 + 1) = 0;
  v23 = off_100433ED0;
  v31.__loc_ = 0;
  std::ios_base::init(&v31, &v23);
  v32 = 0;
  v33 = -1;
  v35 = &v34;
  v36 = &v34 + 2;
  sub_1001E1040(&v23, a1);
  v6 = v5;
  if ((v5 & 1) == 0)
  {
    goto LABEL_26;
  }

  v8 = v35;
  v7 = v36;
  v9 = v36 - v35;
  size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) == 0)
  {
    v11 = a2;
    if (v9 <= 0x16)
    {
      goto LABEL_14;
    }

    v12 = 22;
    goto LABEL_9;
  }

  v13 = a2->__r_.__value_.__r.__words[2];
  v12 = (v13 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v12 < v9)
  {
    size = a2->__r_.__value_.__l.__size_;
LABEL_9:
    std::string::__grow_by(a2, v12, v9 - v12, size, 0, size, 0);
    a2->__r_.__value_.__l.__size_ = 0;
    LOBYTE(v14) = *(&a2->__r_.__value_.__s + 23);
    goto LABEL_11;
  }

  v14 = HIBYTE(v13);
LABEL_11:
  if ((v14 & 0x80u) == 0)
  {
    v11 = a2;
  }

  else
  {
    v11 = a2->__r_.__value_.__r.__words[0];
  }

LABEL_14:
  if (v8 == v7)
  {
    v15 = v11;
  }

  else
  {
    if (v9 < 0x20 || (v11 - v8) < 0x20)
    {
      v15 = v11;
      v16 = v8;
    }

    else
    {
      v15 = (v11 + (v9 & 0xFFFFFFFFFFFFFFE0));
      v16 = &v8[v9 & 0xFFFFFFFFFFFFFFE0];
      v17 = (v8 + 16);
      v18 = &v11->__r_.__value_.__r.__words[2];
      v19 = v9 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v20 = *v17;
        *(v18 - 1) = *(v17 - 1);
        *v18 = v20;
        v17 += 2;
        v18 += 4;
        v19 -= 32;
      }

      while (v19);
      if (v9 == (v9 & 0xFFFFFFFFFFFFFFE0))
      {
        goto LABEL_24;
      }
    }

    do
    {
      v21 = *v16++;
      v15->__r_.__value_.__s.__data_[0] = v21;
      v15 = (v15 + 1);
    }

    while (v16 != v7);
  }

LABEL_24:
  v15->__r_.__value_.__s.__data_[0] = 0;
  if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
  {
    a2->__r_.__value_.__l.__size_ = v9;
    std::ostream::~ostream();
    if ((SHIBYTE(v28) & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  *(&a2->__r_.__value_.__s + 23) = v9 & 0x7F;
LABEL_26:
  std::ostream::~ostream();
  if (SHIBYTE(v28) < 0)
  {
LABEL_27:
    operator delete(__p[1]);
  }

LABEL_28:
  std::locale::~locale(&v24);
  return v6;
}

void sub_1001E1018(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(v22 + 1);
  sub_10000D388(a1);
}

__n128 sub_1001E1040(__n128 *a1, uint64_t a2)
{
  v4 = &a1[6].n128_u64[1];
  v5 = &a1[6].n128_i8[*(a1[6].n128_u64[1] - 24) + 8];
  v5->__exceptions_ = 1;
  std::ios_base::clear(v5, v5->__rdstate_);
  sub_1001E118C(a2);
  if ((v10 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v10 & 0x80u) == 0)
  {
    v7 = v10;
  }

  else
  {
    v7 = __p[1];
  }

  sub_10003C2E4(v4, v6, v7);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  result = *(*(v4 + *(a1[6].n128_u64[1] - 24) + 40) + 40);
  a1[17] = result;
  return result;
}

uint64_t sub_1001E1138(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  if (v25 < 0)
  {
    operator delete(v24);
  }

  if (a2 != 1)
  {
    _Unwind_Resume(exception_object);
  }

  __cxa_begin_catch(exception_object);
  __cxa_end_catch();
  return 0;
}

uint64_t sub_1001E118C(uint64_t a1)
{
  sub_10004DAA4(v6);
  sub_10003C2E4(&v7, "[", 1);
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_100118404(&v7, v3 + 2);
    while (1)
    {
      v3 = *v3;
      if (!v3)
      {
        break;
      }

      sub_10003C2E4(&v7, ", ", 2);
      sub_100118404(&v7, v3 + 2);
    }
  }

  sub_10003C2E4(&v7, "]", 1);
  std::stringbuf::str();
  v7 = v4;
  if (v10 < 0)
  {
    operator delete(v9[7].__locale_);
  }

  std::locale::~locale(v9);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_1001E137C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1001D8FE0(va);
  _Unwind_Resume(a1);
}

void sub_1001E1390(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1001D8FE0(va);
  _Unwind_Resume(a1);
}

void sub_1001E13A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1001D8FE0(va);
  _Unwind_Resume(a1);
}

void sub_1001E13B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1001D8FE0(va);
  _Unwind_Resume(a1);
}

void sub_1001E13CC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x13B13B13B13B13CLL)
    {
      operator new();
    }

    sub_10000FC84();
  }
}

void sub_1001E15C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_1001CFDE4(va);
  *(v10 + 8) = v11;
  sub_1001CFEC4(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1001E15E8(double **a1)
{
  sub_10004DAA4(v8);
  sub_10003C2E4(&v9, "[", 1);
  v4 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    std::ostream::operator<<();
    for (i = (v4 + 8); i != v3; ++i)
    {
      sub_10003C2E4(&v9, ", ", 2);
      std::ostream::operator<<();
    }
  }

  sub_10003C2E4(&v9, "]", 1);
  std::stringbuf::str();
  v9 = v6;
  if (v12 < 0)
  {
    operator delete(v11[7].__locale_);
  }

  std::locale::~locale(v11);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_1001E17E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1001D8FE0(va);
  _Unwind_Resume(a1);
}

void sub_1001E17FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1001D8FE0(va);
  _Unwind_Resume(a1);
}

void sub_1001E1810(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1001D8FE0(va);
  _Unwind_Resume(a1);
}

void sub_1001E1824(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1001D8FE0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001E1838(uint64_t a1)
{
  v2 = *(a1 + 16);
  while (v2)
  {
    v3 = v2;
    v2 = *v2;
    v4 = v3[5];
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      v5 = v3[3];
      if (v5)
      {
LABEL_7:
        if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v5->__on_zero_shared)(v5);
          std::__shared_weak_count::__release_weak(v5);
        }
      }
    }

    else
    {
      v5 = v3[3];
      if (v5)
      {
        goto LABEL_7;
      }
    }

    operator delete(v3);
  }

  v6 = *a1;
  *a1 = 0;
  if (v6)
  {
    operator delete(v6);
  }

  return a1;
}

double sub_1001E1938(unint64_t *a1, uint64_t a2)
{
  v2 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x38E38E38E38E38ELL)
  {
    sub_10000FC84();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 3) >= 0x1C71C71C71C71C7)
  {
    v5 = 0x38E38E38E38E38ELL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x38E38E38E38E38ELL)
    {
      operator new();
    }

    sub_10000D444();
  }

  v14 = 8 * ((a1[1] - *a1) >> 3);
  *v14 = *a2;
  *(v14 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(v14 + 24) = *(a2 + 24);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v6 = *(a2 + 40);
  v7 = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(v14 + 40) = v6;
  *(v14 + 48) = v7;
  v8 = *(a2 + 56);
  *(v14 + 64) = *(a2 + 64);
  *(v14 + 56) = v8;
  v9 = a1[1];
  v10 = 72 * v2 + *a1 - v9;
  sub_1001E1ABC(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = 72 * v2 + 72;
  *(a1 + 1) = v12;
  if (v11)
  {
    operator delete(v11);
    *&v12 = 72 * v2 + 72;
  }

  return *&v12;
}

void sub_1001E1AA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1001E1C40(va);
  _Unwind_Resume(a1);
}

void sub_1001E1ABC(uint64_t a1, void **a2, void **a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      *a4 = *v6;
      *(a4 + 16) = v6[2];
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
      *(a4 + 24) = 0;
      *(a4 + 32) = 0;
      *(a4 + 40) = 0;
      *(a4 + 24) = *(v6 + 3);
      v7 = v6[6];
      *(a4 + 40) = v6[5];
      v6[3] = 0;
      v6[4] = 0;
      v6[5] = 0;
      *(a4 + 48) = v7;
      v8 = v6[7];
      *(a4 + 64) = *(v6 + 64);
      *(a4 + 56) = v8;
      v6 += 9;
      a4 += 72;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      v10 = v5[3];
      if (v10)
      {
        v5[4] = v10;
        operator delete(v10);
      }

      v11 = *v5;
      if (*v5)
      {
        v12 = v5[1];
        v9 = *v5;
        if (v12 != v11)
        {
          v13 = v12 - 168;
          do
          {
            v15 = *(v12 - 44);
            if (v15 == v15 >> 31)
            {
              if (*(v12 - 128) == 1)
              {
                *(v12 - 128) = 0;
              }
            }

            else
            {
              v14 = *(v12 - 21);
              if (v15 < 0)
              {
                if (v14)
                {
                  (*(*v14 + 8))(v14);
                }
              }

              else
              {
                (*v14)(v12 - 168);
              }
            }

            v12 -= 208;
            v13 -= 208;
          }

          while (v12 != v11);
          v9 = *v5;
        }

        v5[1] = v11;
        operator delete(v9);
      }

      v5 += 9;
    }
  }
}

uint64_t sub_1001E1C40(uint64_t a1)
{
  sub_1001E1C78(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1001E1C78(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 16); i != a2; i = *(a1 + 16))
  {
    v6 = (i - 72);
    *(a1 + 16) = i - 72;
    v7 = *(i - 48);
    if (v7)
    {
      *(i - 40) = v7;
      operator delete(v7);
    }

    v8 = *v6;
    if (*v6)
    {
      v9 = *(i - 64);
      v5 = *v6;
      if (v9 != v8)
      {
        v10 = v9 - 168;
        do
        {
          v12 = *(v9 - 44);
          if (v12 == v12 >> 31)
          {
            if (*(v9 - 128) == 1)
            {
              *(v9 - 128) = 0;
            }
          }

          else
          {
            v11 = *(v9 - 21);
            if (v12 < 0)
            {
              if (v11)
              {
                (*(*v11 + 8))(v11);
              }
            }

            else
            {
              (*v11)(v9 - 168);
            }
          }

          v9 -= 208;
          v10 -= 208;
        }

        while (v9 != v8);
        v5 = *v6;
      }

      *(i - 64) = v8;
      operator delete(v5);
    }
  }
}

__n128 sub_1001E1E18(uint64_t a1, uint64_t a2)
{
  *a2 = off_1004425F8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1001E1E54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN18LocalizerIoWrapper26receiveMagneticReliabilityERK17SensorMeasurementE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN18LocalizerIoWrapper26receiveMagneticReliabilityERK17SensorMeasurementE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN18LocalizerIoWrapper26receiveMagneticReliabilityERK17SensorMeasurementE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN18LocalizerIoWrapper26receiveMagneticReliabilityERK17SensorMeasurementE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

BOOL sub_1001E1ECC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  if (*(a1 + 24) != *(a2 + 24))
  {
    return 0;
  }

  if (*(a1 + 40) != *(a2 + 40))
  {
    return 0;
  }

  if (*(a1 + 48) != *(a2 + 48))
  {
    return 0;
  }

  v2 = *(a1 + 136);
  v3 = *(a2 + 136);
  if (((v3 >> 4) & 1) != (v2 & 0x10) >> 4)
  {
    return 0;
  }

  if ((v2 & 0x10) != 0)
  {
    v4 = a1;
    v5 = a2;
    result = sub_1001CFFC4((a1 + 64), (a2 + 64));
    if (!result)
    {
      return result;
    }

    a1 = v4;
    v2 = *(v4 + 136);
    a2 = v5;
    v3 = *(v5 + 136);
  }

  result = ((v3 >> 5) & 1) == (v2 & 0x20) >> 5 && ((v2 & 0x20) == 0 || *(a1 + 88) == *(a2 + 88)) && ((v3 >> 6) & 1) == (v2 & 0x40) >> 6 && ((v2 & 0x40) == 0 || *(a1 + 96) == *(a2 + 96)) && ((v3 >> 7) & 1) == (v2 & 0x80) >> 7 && ((v2 & 0x80) == 0 || *(a1 + 104) == *(a2 + 104)) && ((v3 >> 8) & 1) == (v2 & 0x100) >> 8 && ((v2 & 0x100) == 0 || *(a1 + 112) == *(a2 + 112)) && ((v3 >> 9) & 1) == (v2 & 0x200) >> 9 && ((v2 & 0x200) == 0 || *(a1 + 120) == *(a2 + 120)) && (v7 = v2 & 0x400, ((v3 >> 10) & 1) == v7 >> 10) && (!v7 || *(a1 + 128) == *(a2 + 128));
  return result;
}

void sub_1001E208C(uint64_t *a1, unint64_t a2)
{
  v2 = a1[1];
  v3 = a1[2] - v2;
  if (v3 == 760)
  {
    *(a1 + 8) = 1;
  }

  else
  {
    v4 = 0x4E25B9EFD4E25B9FLL * (v3 >> 3);
    if (v4 <= a2)
    {
      v5 = 0;
    }

    else
    {
      v5 = 0;
      do
      {
        if (v5 != a2)
        {
          v6 = *(v2 + 760 * a2 + 240);
          v7 = *a1;
          v8 = (v2 + 240 + 760 * v5);
          while (v7 < v6 - *v8)
          {
            v8 += 95;
            ++v5;
            *(a1 + 8) = 2;
            if (a2 == v5)
            {
              goto LABEL_5;
            }
          }
        }

        if (v5 == a2)
        {
LABEL_5:
          *(a1 + 8) = 1;
          v5 = a2;
        }

        ++a2;
      }

      while (a2 != v4);
    }

    memset(__p, 0, 24);
    __p[3] = __p;
    v10 = 0;
    if (v5)
    {
      if (v5 < 0x563B48C20563B5)
      {
        operator new();
      }

      sub_10000FC84();
    }
  }
}

void sub_1001E2308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1001DF780(va);
  _Unwind_Resume(a1);
}

void sub_1001E231C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100127CD0(va);
  _Unwind_Resume(a1);
}

void sub_1001E2330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  if (v9)
  {
    sub_100385864();
  }

  sub_1001DF780(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001E2358(uint64_t *a1, uint64_t a2)
{
  v2 = 0x4E25B9EFD4E25B9FLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x563B48C20563B4)
  {
    sub_10000FC84();
  }

  if (0x9C4B73DFA9C4B73ELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x9C4B73DFA9C4B73ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x4E25B9EFD4E25B9FLL * ((a1[2] - *a1) >> 3)) >= 0x2B1DA46102B1DALL)
  {
    v5 = 0x563B48C20563B4;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x563B48C20563B4)
    {
      operator new();
    }

    sub_10000D444();
  }

  v16 = 8 * ((a1[1] - *a1) >> 3);
  sub_100126300(v16, a2);
  v6 = 760 * v2 + 760;
  v7 = *a1;
  v8 = a1[1];
  v9 = *a1 - v8;
  v10 = v16 + v9;
  if (*a1 != v8)
  {
    v11 = 0;
    v12 = *a1;
    v13 = v16 + v9;
    do
    {
      sub_100126300(v13, v12);
      v12 += 760;
      v13 += 760;
      v11 -= 760;
    }

    while (v12 != v8);
    v14 = v7;
    do
    {
      (**v7)(v7);
      v7 += 95;
      v14 += 95;
    }

    while (v7 != v8);
    v7 = *a1;
  }

  *a1 = v10;
  a1[1] = v6;
  a1[2] = 0;
  if (v7)
  {
    operator delete(v7);
  }

  return v6;
}

void sub_1001E250C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100128320(va);
  _Unwind_Resume(a1);
}

void sub_1001E2520(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (v3)
  {
    sub_100385864();
  }

  sub_100128320(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001E2544(uint64_t result, double *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = v8;
LABEL_3:
  v10 = 1 - a4;
  while (1)
  {
    v8 = v9;
    v11 = v10;
    v12 = a2 - v9;
    if (v12 > 2)
    {
      switch(v12)
      {
        case 3:
          v67 = v9[1];
          v68 = *(a2 - 1);
          if (v67 > v68)
          {
            v69 = *(v9 + 1);
          }

          else
          {
            v69 = *(a2 - 1);
          }

          if (v67 > v68)
          {
            v67 = *(a2 - 1);
          }

          *(a2 - 1) = v67;
          *(v9 + 1) = v69;
          v70 = *(a2 - 1);
          if (v70 > *v9)
          {
            v71 = *(a2 - 1);
          }

          else
          {
            v71 = *v9;
          }

          if (v70 > *v9)
          {
            v70 = *v9;
          }

          *(a2 - 1) = v70;
          v73 = *v9;
          v72 = v9[1];
          if (v71 <= v72)
          {
            v73 = v9[1];
            v72 = v71;
          }

          *v9 = v73;
          v9[1] = v72;
          return result;
        case 4:
          v97 = v9[1];
          v96 = v9[2];
          if (*v9 > v96)
          {
            v98 = *v9;
          }

          else
          {
            v98 = v9[2];
          }

          if (*v9 <= v96)
          {
            v96 = *v9;
          }

          v9[2] = v96;
          *v9 = v98;
          v99 = *(a2 - 1);
          if (v97 > v99)
          {
            v100 = v97;
          }

          else
          {
            v100 = *(a2 - 1);
          }

          if (v97 <= v99)
          {
            v99 = v97;
          }

          *(a2 - 1) = v99;
          v101 = *v9;
          if (*v9 > v100)
          {
            v102 = *v9;
          }

          else
          {
            v102 = v100;
          }

          if (*v9 > v100)
          {
            v101 = v100;
          }

          *v9 = v102;
          v9[1] = v101;
          v103 = v9[2];
          v104 = *(a2 - 1);
          if (v103 > v104)
          {
            v105 = v9[2];
          }

          else
          {
            v105 = *(a2 - 1);
          }

          if (v103 > v104)
          {
            v103 = *(a2 - 1);
          }

          *(a2 - 1) = v103;
          v106 = v9[1];
          if (v106 > v105)
          {
            v107 = v9[1];
          }

          else
          {
            v107 = v105;
          }

          if (v106 > v105)
          {
            v106 = v105;
          }

          v9[1] = v107;
          v9[2] = v106;
          return result;
        case 5:
          v74 = *v9;
          v75 = v9[1];
          if (*v9 > v75)
          {
            v76 = *v9;
          }

          else
          {
            v76 = v9[1];
          }

          if (*v9 > v75)
          {
            v74 = v9[1];
          }

          *v9 = v76;
          v9[1] = v74;
          v77 = v9[3];
          v78 = *(a2 - 1);
          if (v77 > v78)
          {
            v79 = *(v9 + 3);
          }

          else
          {
            v79 = *(a2 - 1);
          }

          if (v77 > v78)
          {
            v77 = *(a2 - 1);
          }

          *(a2 - 1) = v77;
          *(v9 + 3) = v79;
          v80 = *(a2 - 1);
          v81 = v9[2];
          if (v80 > v81)
          {
            v82 = *(a2 - 1);
          }

          else
          {
            v82 = v9[2];
          }

          if (v80 > v81)
          {
            v80 = v9[2];
          }

          *(a2 - 1) = v80;
          v84 = *(v9 + 2);
          v83 = v9[3];
          v85 = v9[1];
          if (v82 <= v83)
          {
            v84 = *(v9 + 3);
            v83 = v82;
          }

          *(v9 + 2) = v84;
          v9[3] = v83;
          v86 = *(a2 - 1);
          if (v85 > v86)
          {
            v87 = v85;
          }

          else
          {
            v87 = *(a2 - 1);
          }

          if (v85 <= v86)
          {
            v86 = v85;
          }

          *(a2 - 1) = v86;
          v88 = *v9;
          v90 = v9[2];
          v89 = v9[3];
          if (v89 > *v9)
          {
            v91 = v9[3];
          }

          else
          {
            v91 = *v9;
          }

          if (v89 > *v9)
          {
            v89 = *v9;
          }

          if (v91 <= v90)
          {
            v88 = v9[2];
            v90 = v91;
          }

          if (v89 > v87)
          {
            v92 = v89;
          }

          else
          {
            v92 = v87;
          }

          if (v89 > v87)
          {
            v89 = v87;
          }

          if (v92 <= v90)
          {
            v87 = v90;
          }

          *v9 = v88;
          v9[1] = v87;
          if (v92 > v90)
          {
            v93 = v90;
          }

          else
          {
            v93 = v92;
          }

          v9[2] = v93;
          v9[3] = v89;
          return result;
      }
    }

    else
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        v94 = *(a2 - 1);
        v95 = *v9;
        if (v94 > *v9)
        {
          *v9 = v94;
          *(a2 - 1) = v95;
        }

        return result;
      }
    }

    if (v12 <= 23)
    {
      break;
    }

    if (v11 == 1)
    {
      if (v9 != a2)
      {

        return sub_1001E3830(v9, a2, a2);
      }

      return result;
    }

    v13 = v12 >> 1;
    v14 = *(a2 - 1);
    if (v12 < 0x81)
    {
      if (*v9 > v14)
      {
        v47 = *v9;
      }

      else
      {
        v47 = *(a2 - 1);
      }

      if (*v9 <= v14)
      {
        v14 = *v9;
      }

      *(a2 - 1) = v14;
      *v9 = v47;
      v48 = *(a2 - 1);
      v49 = v9[v13];
      if (v48 > v49)
      {
        v50 = *(a2 - 1);
      }

      else
      {
        v50 = v9[v13];
      }

      if (v48 > v49)
      {
        v48 = v9[v13];
      }

      *(a2 - 1) = v48;
      v51 = *v9;
      v52 = v50 <= *v9;
      if (v50 > *v9)
      {
        v51 = v9[v13];
      }

      v9[v13] = v51;
      v53 = *v9;
      if (v52)
      {
        v53 = v50;
      }

      *v9 = v53;
      if (a5)
      {
        goto LABEL_90;
      }
    }

    else
    {
      v15 = &v9[v13];
      if (*v15 > v14)
      {
        v16 = *v15;
      }

      else
      {
        v16 = *(a2 - 1);
      }

      if (*v15 <= v14)
      {
        v14 = *v15;
      }

      *(a2 - 1) = v14;
      *v15 = v16;
      v17 = *(a2 - 1);
      if (v17 > *v9)
      {
        v18 = *(a2 - 1);
      }

      else
      {
        v18 = *v9;
      }

      if (v17 > *v9)
      {
        v17 = *v9;
      }

      *(a2 - 1) = v17;
      v19 = *v15;
      v20 = v18 <= *v15;
      if (v18 > *v15)
      {
        v19 = *v9;
      }

      *v9 = v19;
      v22 = *(v15 - 1);
      v21 = *v15;
      if (v20)
      {
        v21 = v18;
      }

      *v15 = v21;
      v23 = *(a2 - 2);
      if (v22 > v23)
      {
        v24 = v22;
      }

      else
      {
        v24 = *(a2 - 2);
      }

      if (v22 <= v23)
      {
        v23 = v22;
      }

      *(a2 - 2) = v23;
      *(v15 - 1) = v24;
      v25 = *(a2 - 2);
      v26 = v9[1];
      if (v25 > v26)
      {
        v27 = *(a2 - 2);
      }

      else
      {
        v27 = v9[1];
      }

      if (v25 > v26)
      {
        v25 = v9[1];
      }

      *(a2 - 2) = v25;
      v28 = *(v15 - 1);
      v29 = v27 <= v28;
      if (v27 > v28)
      {
        v28 = v9[1];
      }

      v9[1] = v28;
      v30 = *(v15 - 1);
      if (v29)
      {
        v30 = v27;
      }

      *(v15 - 1) = v30;
      v31 = v15[1];
      v32 = *(a2 - 3);
      if (v31 > v32)
      {
        v33 = *(v15 + 1);
      }

      else
      {
        v33 = *(a2 - 3);
      }

      if (v31 > v32)
      {
        v31 = *(a2 - 3);
      }

      *(a2 - 3) = v31;
      *(v15 + 1) = v33;
      v34 = *(a2 - 3);
      v35 = v9[2];
      if (v34 > v35)
      {
        v36 = *(a2 - 3);
      }

      else
      {
        v36 = v9[2];
      }

      if (v34 > v35)
      {
        v34 = v9[2];
      }

      *(a2 - 3) = v34;
      v37 = v15[1];
      v38 = v36 <= v37;
      if (v36 > v37)
      {
        v37 = v9[2];
      }

      v9[2] = v37;
      v40 = *v15;
      v39 = v15[1];
      if (v38)
      {
        v39 = v36;
      }

      v41 = *(v15 - 1);
      if (v40 > v39)
      {
        v42 = *v15;
      }

      else
      {
        v42 = v39;
      }

      if (v40 <= v39)
      {
        v39 = *v15;
      }

      if (v39 > v41)
      {
        v43 = v39;
      }

      else
      {
        v43 = *(v15 - 1);
      }

      if (v39 > v41)
      {
        v44 = *(v15 - 1);
      }

      else
      {
        v44 = v39;
      }

      if (v43 > v42)
      {
        v45 = *(v15 - 1);
      }

      else
      {
        v45 = v42;
      }

      if (v43 > v42)
      {
        v43 = v42;
      }

      *(v15 - 1) = v45;
      *v15 = v43;
      v15[1] = v44;
      v46 = *v9;
      *v9 = v43;
      *v15 = v46;
      if (a5)
      {
        goto LABEL_90;
      }
    }

    v54 = *v9;
    if (*(v9 - 1) <= *v9)
    {
      if (v54 <= *(a2 - 1))
      {
        v59 = (v9 + 1);
        do
        {
          v9 = v59;
          if (v59 >= a2)
          {
            break;
          }

          v59 += 8;
        }

        while (v54 <= *v9);
      }

      else
      {
        do
        {
          v58 = v9[1];
          ++v9;
        }

        while (v54 <= v58);
      }

      v60 = a2;
      if (v9 < a2)
      {
        v60 = a2;
        do
        {
          v61 = *--v60;
        }

        while (v54 > v61);
      }

      if (v9 < v60)
      {
        v62 = *v9;
        v63 = *v60;
        do
        {
          *v9 = v63;
          *v60 = v62;
          do
          {
            v64 = v9[1];
            ++v9;
            v62 = v64;
          }

          while (v54 <= v64);
          do
          {
            v65 = *--v60;
            v63 = v65;
          }

          while (v54 > v65);
        }

        while (v9 < v60);
      }

      v66 = v9 - 1;
      if (v9 - 1 != v8)
      {
        *v8 = *v66;
      }

      *v66 = v54;
      goto LABEL_112;
    }

LABEL_90:
    v55 = sub_1001E2B58(v9, a2);
    if ((v56 & 1) == 0)
    {
      goto LABEL_93;
    }

    v57 = sub_1001E3578(v9, v55);
    v9 = v55 + 1;
    result = sub_1001E3578(v55 + 1, a2);
    if (result)
    {
      a4 = -v11;
      a2 = v55;
      if (v57)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v57)
    {
LABEL_93:
      result = sub_1001E2544(v8, v55, a3, -v11, a5 & 1);
      v9 = v55 + 1;
LABEL_112:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  v108 = v9 + 1;
  v110 = v9 == a2 || v108 == a2;
  if (a5)
  {
    if (!v110)
    {
      v111 = 0;
      v112 = v9;
      do
      {
        v115 = *v112;
        v114 = v112[1];
        v112 = v108;
        if (v114 > v115)
        {
          v116 = v111;
          do
          {
            *(v9 + v116 + 8) = v115;
            if (!v116)
            {
              v113 = v9;
              goto LABEL_206;
            }

            v115 = *(v9 + v116 - 8);
            v116 -= 8;
          }

          while (v114 > v115);
          v113 = (v9 + v116 + 8);
LABEL_206:
          *v113 = v114;
        }

        v108 = v112 + 1;
        v111 += 8;
      }

      while (v112 + 1 != a2);
    }
  }

  else if (!v110)
  {
    do
    {
      v118 = *v8;
      v117 = *(v8 + 8);
      v8 = v108;
      if (v117 > v118)
      {
        v119 = v108;
        do
        {
          *v119 = v118;
          v118 = *(v119 - 2);
          --v119;
        }

        while (v117 > v118);
        *v119 = v117;
      }

      ++v108;
    }

    while ((v8 + 8) != a2);
  }

  return result;
}

double *sub_1001E2B58(double *a1, double *a2)
{
  v2 = *a1;
  if (*a1 <= *(a2 - 1))
  {
    v5 = a1 + 1;
    do
    {
      v3 = v5;
      if (v5 >= a2)
      {
        break;
      }

      ++v5;
    }

    while (v2 <= *v3);
  }

  else
  {
    v3 = a1;
    do
    {
      v4 = v3[1];
      ++v3;
    }

    while (v2 <= v4);
  }

  if (v3 < a2)
  {
    do
    {
      v6 = *--a2;
    }

    while (v2 > v6);
  }

  v7 = v3;
  if (v3 < a2)
  {
    v8 = *v3;
    *v3 = *a2;
    v7 = (v3 + 1);
    *a2 = v8;
  }

  v9 = a2 - 1;
  v10 = (a2 - 1) - v7;
  if (v10 < 1009)
  {
    v11 = 0;
    v24 = v10 >> 3;
    v14 = 1;
LABEL_33:
    v28 = v24 + 1;
    v25 = (v24 + 1) / 2;
    v26 = v28 - v28 / 2;
    goto LABEL_34;
  }

  v11 = 0;
  v12 = 0;
  v13 = vdupq_lane_s64(*&v2, 0);
  do
  {
    if (v12)
    {
      if (v11)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v16 = vorrq_s8(vorrq_s8(vbicq_s8(xmmword_1003D8160, vcgtq_f64(v7[30], v13)), vorrq_s8(vbicq_s8(xmmword_1003D8140, vcgtq_f64(v7[28], v13)), vorrq_s8(vbicq_s8(xmmword_1003D8120, vcgtq_f64(v7[26], v13)), vorrq_s8(vbicq_s8(xmmword_1003D8100, vcgtq_f64(v7[24], v13)), vbicq_s8(xmmword_1003D80E0, vcgtq_f64(v7[22], v13)))))), vorrq_s8(vorrq_s8(vbicq_s8(xmmword_1003D80C0, vcgtq_f64(v7[20], v13)), vorrq_s8(vbicq_s8(xmmword_1003D80A0, vcgtq_f64(v7[18], v13)), vorrq_s8(vbicq_s8(xmmword_1003D8080, vcgtq_f64(v7[16], v13)), vbicq_s8(xmmword_1003D8060, vcgtq_f64(v7[14], v13))))), vorrq_s8(vorrq_s8(vbicq_s8(xmmword_1003D8040, vcgtq_f64(v7[12], v13)), vorrq_s8(vbicq_s8(xmmword_1003D8020, vcgtq_f64(v7[10], v13)), vbicq_s8(xmmword_1003D8000, vcgtq_f64(v7[8], v13)))), vorrq_s8(vorrq_s8(vbicq_s8(xmmword_1003D7FE0, vcgtq_f64(v7[6], v13)), vbicq_s8(xmmword_1003D7FC0, vcgtq_f64(v7[4], v13))), vorrq_s8(vbicq_s8(xmmword_1003D7FA0, vcgtq_f64(v7[2], v13)), vbicq_s8(xmmword_1003D7F80, vcgtq_f64(*v7, v13)))))));
      v17 = vorrq_s8(vorrq_s8(vorrq_s8(vbicq_s8(xmmword_1003D8170, vcgtq_f64(v7[31], v13)), vorrq_s8(vbicq_s8(xmmword_1003D8150, vcgtq_f64(v7[29], v13)), vorrq_s8(vbicq_s8(xmmword_1003D8130, vcgtq_f64(v7[27], v13)), vorrq_s8(vbicq_s8(xmmword_1003D8110, vcgtq_f64(v7[25], v13)), vbicq_s8(xmmword_1003D80F0, vcgtq_f64(v7[23], v13)))))), vorrq_s8(vorrq_s8(vbicq_s8(xmmword_1003D80D0, vcgtq_f64(v7[21], v13)), vorrq_s8(vbicq_s8(xmmword_1003D80B0, vcgtq_f64(v7[19], v13)), vorrq_s8(vbicq_s8(xmmword_1003D8090, vcgtq_f64(v7[17], v13)), vbicq_s8(xmmword_1003D8070, vcgtq_f64(v7[15], v13))))), vorrq_s8(vorrq_s8(vbicq_s8(xmmword_1003D8050, vcgtq_f64(v7[13], v13)), vorrq_s8(vbicq_s8(xmmword_1003D8030, vcgtq_f64(v7[11], v13)), vbicq_s8(xmmword_1003D8010, vcgtq_f64(v7[9], v13)))), vorrq_s8(vorrq_s8(vbicq_s8(xmmword_1003D7FF0, vcgtq_f64(v7[7], v13)), vbicq_s8(xmmword_1003D7FD0, vcgtq_f64(v7[5], v13))), vorrq_s8(vbicq_s8(xmmword_1003D7FB0, vcgtq_f64(v7[3], v13)), vbicq_s8(xmmword_1003D7F90, vcgtq_f64(v7[1], v13))))))), v16);
      v12 = vorr_s8(*v17.i8, *&vextq_s8(v17, v17, 8uLL));
      if (v11)
      {
LABEL_20:
        if (!v12)
        {
          goto LABEL_14;
        }

        goto LABEL_24;
      }
    }

    v18 = vorrq_s8(vorrq_s8(vandq_s8(vcgtq_f64(vextq_s8(*(v9 - 61), *(v9 - 61), 8uLL), v13), xmmword_1003D8160), vorrq_s8(vandq_s8(vcgtq_f64(vextq_s8(*(v9 - 53), *(v9 - 53), 8uLL), v13), xmmword_1003D8120), vorrq_s8(vandq_s8(vcgtq_f64(vextq_s8(*(v9 - 45), *(v9 - 45), 8uLL), v13), xmmword_1003D80E0), vorrq_s8(vorrq_s8(vandq_s8(vcgtq_f64(vextq_s8(*(v9 - 25), *(v9 - 25), 8uLL), v13), xmmword_1003D8040), vorrq_s8(vandq_s8(vcgtq_f64(vextq_s8(*(v9 - 21), *(v9 - 21), 8uLL), v13), xmmword_1003D8020), vandq_s8(vcgtq_f64(vextq_s8(*(v9 - 17), *(v9 - 17), 8uLL), v13), xmmword_1003D8000))), vorrq_s8(vorrq_s8(vandq_s8(vcgtq_f64(vextq_s8(*(v9 - 13), *(v9 - 13), 8uLL), v13), xmmword_1003D7FE0), vandq_s8(vcgtq_f64(vextq_s8(*(v9 - 9), *(v9 - 9), 8uLL), v13), xmmword_1003D7FC0)), vorrq_s8(vandq_s8(vcgtq_f64(vextq_s8(*(v9 - 5), *(v9 - 5), 8uLL), v13), xmmword_1003D7FA0), vandq_s8(vcgtq_f64(vextq_s8(*(v9 - 1), *(v9 - 1), 8uLL), v13), xmmword_1003D7F80))))))), vorrq_s8(vandq_s8(vcgtq_f64(vextq_s8(*(v9 - 57), *(v9 - 57), 8uLL), v13), xmmword_1003D8140), vorrq_s8(vandq_s8(vcgtq_f64(vextq_s8(*(v9 - 49), *(v9 - 49), 8uLL), v13), xmmword_1003D8100), vorrq_s8(vandq_s8(vcgtq_f64(vextq_s8(*(v9 - 41), *(v9 - 41), 8uLL), v13), xmmword_1003D80C0), vorrq_s8(vandq_s8(vcgtq_f64(vextq_s8(*(v9 - 37), *(v9 - 37), 8uLL), v13), xmmword_1003D80A0), vorrq_s8(vandq_s8(vcgtq_f64(vextq_s8(*(v9 - 33), *(v9 - 33), 8uLL), v13), xmmword_1003D8080), vandq_s8(vcgtq_f64(vextq_s8(*(v9 - 29), *(v9 - 29), 8uLL), v13), xmmword_1003D8060)))))));
    v19 = vorrq_s8(vorrq_s8(vandq_s8(vcgtq_f64(vextq_s8(*(v9 - 63), *(v9 - 63), 8uLL), v13), xmmword_1003D8170), vorrq_s8(vandq_s8(vcgtq_f64(vextq_s8(*(v9 - 55), *(v9 - 55), 8uLL), v13), xmmword_1003D8130), vorrq_s8(vandq_s8(vcgtq_f64(vextq_s8(*(v9 - 47), *(v9 - 47), 8uLL), v13), xmmword_1003D80F0), vorrq_s8(vorrq_s8(vandq_s8(vcgtq_f64(vextq_s8(*(v9 - 27), *(v9 - 27), 8uLL), v13), xmmword_1003D8050), vorrq_s8(vandq_s8(vcgtq_f64(vextq_s8(*(v9 - 23), *(v9 - 23), 8uLL), v13), xmmword_1003D8030), vandq_s8(vcgtq_f64(vextq_s8(*(v9 - 19), *(v9 - 19), 8uLL), v13), xmmword_1003D8010))), vorrq_s8(vorrq_s8(vandq_s8(vcgtq_f64(vextq_s8(*(v9 - 15), *(v9 - 15), 8uLL), v13), xmmword_1003D7FF0), vandq_s8(vcgtq_f64(vextq_s8(*(v9 - 11), *(v9 - 11), 8uLL), v13), xmmword_1003D7FD0)), vorrq_s8(vandq_s8(vcgtq_f64(vextq_s8(*(v9 - 7), *(v9 - 7), 8uLL), v13), xmmword_1003D7FB0), vandq_s8(vcgtq_f64(vextq_s8(*(v9 - 3), *(v9 - 3), 8uLL), v13), xmmword_1003D7F90))))))), vorrq_s8(vandq_s8(vcgtq_f64(vextq_s8(*(v9 - 59), *(v9 - 59), 8uLL), v13), xmmword_1003D8150), vorrq_s8(vandq_s8(vcgtq_f64(vextq_s8(*(v9 - 51), *(v9 - 51), 8uLL), v13), xmmword_1003D8110), vorrq_s8(vandq_s8(vcgtq_f64(vextq_s8(*(v9 - 43), *(v9 - 43), 8uLL), v13), xmmword_1003D80D0), vorrq_s8(vandq_s8(vcgtq_f64(vextq_s8(*(v9 - 39), *(v9 - 39), 8uLL), v13), xmmword_1003D80B0), vorrq_s8(vandq_s8(vcgtq_f64(vextq_s8(*(v9 - 35), *(v9 - 35), 8uLL), v13), xmmword_1003D8090), vandq_s8(vcgtq_f64(vextq_s8(*(v9 - 31), *(v9 - 31), 8uLL), v13), xmmword_1003D8070)))))));
    v20 = vorrq_s8(v19, v18);
    v11 = vorr_s8(*v20.i8, *&vextq_s8(v20, v20, 8uLL));
    if (!v12)
    {
      goto LABEL_14;
    }

LABEL_24:
    if (v11)
    {
      do
      {
        v21 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
        v22 = &v9[-__clz(__rbit64(v11))];
        v23 = v7->f64[v21];
        v7->f64[v21] = *v22;
        *v22 = v23;
        v11 &= v11 - 1;
      }

      while (v11 && v12);
    }

LABEL_14:
    v7 += 32 * (v12 == 0);
    v14 = v11 == 0;
    if (v11)
    {
      v15 = 0;
    }

    else
    {
      v15 = -512;
    }

    v9 = (v9 + v15);
  }

  while (v9 - v7 > 1008);
  v24 = (v9 - v7) >> 3;
  if (!(v12 | v11))
  {
    goto LABEL_33;
  }

  v25 = v24 - 63;
  v26 = 64;
  v27 = 64;
  if (v12)
  {
    if (v11)
    {
      goto LABEL_56;
    }

LABEL_44:
    if (v25 >= 1)
    {
      if (v25 > 3)
      {
        v42 = v25 & 0x7FFFFFFFFFFFFFFCLL;
        v43 = &v9[-(v25 & 0x7FFFFFFFFFFFFFFCLL)];
        v46 = vdupq_lane_s64(*&v2, 0);
        v47 = xmmword_1003D8180;
        v48 = (v9 - 1);
        v49 = vdupq_n_s64(2uLL);
        v50 = vdupq_n_s64(1uLL);
        v51 = 0uLL;
        v52 = vdupq_n_s64(4uLL);
        v53 = v25 & 0x7FFFFFFFFFFFFFFCLL;
        v54 = 0uLL;
        do
        {
          v51 = vorrq_s8(vshlq_u64(vandq_s8(vcgtq_f64(vextq_s8(*v48, *v48, 8uLL), v46), v50), v47), v51);
          v54 = vorrq_s8(vshlq_u64(vandq_s8(vcgtq_f64(vextq_s8(v48[-1], v48[-1], 8uLL), v46), v50), vaddq_s64(v47, v49)), v54);
          v47 = vaddq_s64(v47, v52);
          v48 -= 2;
          v53 -= 4;
        }

        while (v53);
        v55 = vorrq_s8(v54, v51);
        v11 = vorr_s8(*v55.i8, *&vextq_s8(v55, v55, 8uLL));
        goto LABEL_55;
      }

      v42 = 0;
      v11 = 0;
      v43 = v9;
      do
      {
        v56 = *v43--;
        v11 |= (v56 > v2) << v42++;
LABEL_55:
        ;
      }

      while (v25 != v42);
      goto LABEL_56;
    }

    if (v12)
    {
      v44 = 0;
    }

    else
    {
      v44 = v27;
    }

    v45 = &v7->f64[v44];
LABEL_68:
    if (v12)
    {
      v9 -= v25;
      goto LABEL_72;
    }

    goto LABEL_75;
  }

LABEL_34:
  if (v25 < 1)
  {
    v12 = 0;
  }

  else
  {
    if (v25 >= 4)
    {
      v29 = v25 & 0x7FFFFFFFFFFFFFFCLL;
      v30 = &v7->f64[v25 & 0x7FFFFFFFFFFFFFFCLL];
      v31 = vdupq_lane_s64(*&v2, 0);
      v32 = xmmword_1003D8180;
      v33 = v7 + 1;
      v34 = vdupq_n_s64(2uLL);
      v35 = vdupq_n_s64(1uLL);
      v36 = 0uLL;
      v37 = vdupq_n_s64(4uLL);
      v38 = v25 & 0x7FFFFFFFFFFFFFFCLL;
      v39 = 0uLL;
      do
      {
        v36 = vorrq_s8(vshlq_u64(vbicq_s8(v35, vcgtq_f64(v33[-1], v31)), v32), v36);
        v39 = vorrq_s8(vshlq_u64(vbicq_s8(v35, vcgtq_f64(*v33, v31)), vaddq_s64(v32, v34)), v39);
        v32 = vaddq_s64(v32, v37);
        v33 += 2;
        v38 -= 4;
      }

      while (v38);
      v40 = vorrq_s8(v39, v36);
      v12 = vorr_s8(*v40.i8, *&vextq_s8(v40, v40, 8uLL));
      goto LABEL_42;
    }

    v29 = 0;
    v12 = 0;
    v30 = v7;
    do
    {
      v41 = *v30++;
      v12 |= (v41 <= v2) << v29++;
LABEL_42:
      ;
    }

    while (v25 != v29);
  }

  v27 = v25;
  v25 = v26;
  if (v14)
  {
    goto LABEL_44;
  }

LABEL_56:
  if (v12 && v11)
  {
    do
    {
      v57 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v58 = &v9[-__clz(__rbit64(v11))];
      v59 = v7->f64[v57];
      v7->f64[v57] = *v58;
      *v58 = v59;
      v11 &= v11 - 1;
    }

    while (v11 && v12);
  }

  if (v12)
  {
    v27 = 0;
  }

  v45 = &v7->f64[v27];
  if (!v11)
  {
    goto LABEL_68;
  }

  if (v12)
  {
    do
    {
LABEL_72:
      v63 = __clz(v12) ^ 0x3F;
      v64 = &v45[v63];
      if (v9 != v64)
      {
        v65 = *v64;
        *v64 = *v9;
        *v9 = v65;
      }

      v12 &= ~(-1 << v63);
      --v9;
    }

    while (v12);
    v45 = v9 + 1;
  }

  else
  {
    do
    {
      v60 = __clz(v11) ^ 0x3F;
      v61 = &v9[-v60];
      if (v45 != v61)
      {
        v62 = *v61;
        *v61 = *v45;
        *v45 = v62;
      }

      v11 &= ~(-1 << v60);
      ++v45;
    }

    while (v11);
  }

LABEL_75:
  v66 = v45 - 1;
  if (v45 - 1 != a1)
  {
    *a1 = *v66;
  }

  *v66 = v2;
  return v45 - 1;
}

BOOL sub_1001E3578(double *a1, double *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        v26 = a1[1];
        v27 = *(a2 - 1);
        if (v26 > v27)
        {
          v28 = *(a1 + 1);
        }

        else
        {
          v28 = *(a2 - 1);
        }

        if (v26 > v27)
        {
          v26 = *(a2 - 1);
        }

        *(a2 - 1) = v26;
        *(a1 + 1) = v28;
        v29 = *(a2 - 1);
        if (v29 > *a1)
        {
          v30 = *(a2 - 1);
        }

        else
        {
          v30 = *a1;
        }

        if (v29 > *a1)
        {
          v29 = *a1;
        }

        *(a2 - 1) = v29;
        v32 = *a1;
        v31 = a1[1];
        if (v30 <= v31)
        {
          v32 = *(a1 + 1);
          v31 = v30;
        }

        *a1 = v32;
        a1[1] = v31;
        return 1;
      case 4:
        v48 = a1[1];
        v47 = a1[2];
        if (*a1 > v47)
        {
          v49 = *a1;
        }

        else
        {
          v49 = *(a1 + 2);
        }

        if (*a1 <= v47)
        {
          v47 = *a1;
        }

        a1[2] = v47;
        *a1 = v49;
        v50 = *(a2 - 1);
        if (v48 > v50)
        {
          v51 = v48;
        }

        else
        {
          v51 = *(a2 - 1);
        }

        if (v48 <= v50)
        {
          v50 = v48;
        }

        *(a2 - 1) = v50;
        v52 = *a1;
        if (*a1 > v51)
        {
          v53 = *a1;
        }

        else
        {
          v53 = v51;
        }

        if (*a1 > v51)
        {
          v52 = v51;
        }

        *a1 = v53;
        a1[1] = v52;
        v54 = a1[2];
        v55 = *(a2 - 1);
        if (v54 > v55)
        {
          v56 = a1[2];
        }

        else
        {
          v56 = *(a2 - 1);
        }

        if (v54 > v55)
        {
          v54 = *(a2 - 1);
        }

        *(a2 - 1) = v54;
        v57 = a1[1];
        if (v57 > v56)
        {
          v58 = a1[1];
        }

        else
        {
          v58 = v56;
        }

        if (v57 > v56)
        {
          v57 = v56;
        }

        a1[1] = v58;
        a1[2] = v57;
        return 1;
      case 5:
        v4 = *a1;
        v5 = a1[1];
        if (*a1 > v5)
        {
          v6 = *a1;
        }

        else
        {
          v6 = *(a1 + 1);
        }

        if (*a1 > v5)
        {
          v4 = *(a1 + 1);
        }

        *a1 = v6;
        *(a1 + 1) = v4;
        v7 = a1[3];
        v8 = *(a2 - 1);
        if (v7 > v8)
        {
          v9 = *(a1 + 3);
        }

        else
        {
          v9 = *(a2 - 1);
        }

        if (v7 > v8)
        {
          v7 = *(a2 - 1);
        }

        *(a2 - 1) = v7;
        *(a1 + 3) = v9;
        v10 = *(a2 - 1);
        v11 = a1[2];
        if (v10 > v11)
        {
          v12 = *(a2 - 1);
        }

        else
        {
          v12 = a1[2];
        }

        if (v10 > v11)
        {
          v10 = a1[2];
        }

        *(a2 - 1) = v10;
        v14 = *(a1 + 2);
        v13 = a1[3];
        v15 = a1[1];
        if (v12 <= v13)
        {
          v14 = *(a1 + 3);
          v13 = v12;
        }

        *(a1 + 2) = v14;
        a1[3] = v13;
        v16 = *(a2 - 1);
        if (v15 > v16)
        {
          v17 = v15;
        }

        else
        {
          v17 = *(a2 - 1);
        }

        if (v15 <= v16)
        {
          v16 = v15;
        }

        *(a2 - 1) = v16;
        v18 = *a1;
        v20 = a1[2];
        v19 = a1[3];
        if (v19 > *a1)
        {
          v21 = a1[3];
        }

        else
        {
          v21 = *a1;
        }

        if (v19 > *a1)
        {
          v19 = *a1;
        }

        if (v21 <= v20)
        {
          v18 = *(a1 + 2);
          v20 = v21;
        }

        if (v19 > v17)
        {
          v22 = v19;
        }

        else
        {
          v22 = v17;
        }

        if (v19 > v17)
        {
          v19 = v17;
        }

        if (v22 <= v20)
        {
          v17 = v20;
        }

        *a1 = v18;
        a1[1] = v17;
        if (v22 > v20)
        {
          v23 = v20;
        }

        else
        {
          v23 = v22;
        }

        a1[2] = v23;
        a1[3] = v19;
        return 1;
    }

    goto LABEL_63;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 != 2)
  {
LABEL_63:
    v33 = a1 + 2;
    v34 = a1[2];
    v36 = *a1;
    v35 = a1[1];
    if (v35 > v34)
    {
      v37 = a1[1];
    }

    else
    {
      v37 = a1[2];
    }

    if (v35 <= v34)
    {
      v34 = a1[1];
    }

    if (v34 > v36)
    {
      v38 = v34;
    }

    else
    {
      v38 = *a1;
    }

    if (v34 > v36)
    {
      v34 = *a1;
    }

    *v33 = v34;
    if (v38 > v37)
    {
      v39 = v36;
    }

    else
    {
      v39 = v37;
    }

    if (v38 > v37)
    {
      v38 = v37;
    }

    *a1 = v39;
    a1[1] = v38;
    v40 = a1 + 3;
    if (a1 + 3 == a2)
    {
      return 1;
    }

    v41 = 0;
    for (i = 24; ; i += 8)
    {
      v43 = *v40;
      v44 = *v33;
      if (*v40 > *v33)
      {
        break;
      }

LABEL_87:
      v33 = v40++;
      if (v40 == a2)
      {
        return 1;
      }
    }

    v45 = i;
    do
    {
      *(a1 + v45) = v44;
      v46 = v45 - 8;
      if (v45 == 8)
      {
        *a1 = v43;
        if (++v41 != 8)
        {
          goto LABEL_87;
        }

        return v40 + 1 == a2;
      }

      v44 = *(a1 + v45 - 16);
      v45 -= 8;
    }

    while (v43 > v44);
    *(a1 + v46) = v43;
    if (++v41 != 8)
    {
      goto LABEL_87;
    }

    return v40 + 1 == a2;
  }

  v24 = *(a2 - 1);
  v25 = *a1;
  if (v24 <= *a1)
  {
    return 1;
  }

  *a1 = v24;
  *(a2 - 1) = v25;
  return 1;
}

double *sub_1001E3830(double *a1, double *a2, double *a3)
{
  if (a1 != a2)
  {
    v3 = a2 - a1;
    if (v3 >= 2)
    {
      v4 = (v3 - 2) >> 1;
      v5 = v4;
      do
      {
        if (v4 >= v5)
        {
          v7 = (2 * (v5 & 0x1FFFFFFFFFFFFFFFLL)) | 1;
          v8 = &a1[v7];
          if (2 * (v5 & 0x1FFFFFFFFFFFFFFFLL) + 2 < v3 && *v8 > v8[1])
          {
            ++v8;
            v7 = 2 * (v5 & 0x1FFFFFFFFFFFFFFFLL) + 2;
          }

          v9 = &a1[v5];
          v10 = *v8;
          v11 = *v9;
          if (*v8 <= *v9)
          {
            do
            {
              *v9 = v10;
              v9 = v8;
              if (v4 < v7)
              {
                break;
              }

              v12 = 2 * v7;
              v7 = (2 * v7) | 1;
              v8 = &a1[v7];
              v13 = v12 + 2;
              if (v13 < v3 && *v8 > v8[1])
              {
                ++v8;
                v7 = v13;
              }

              v10 = *v8;
            }

            while (*v8 <= v11);
            *v9 = v11;
          }
        }

        v6 = v5-- <= 0;
      }

      while (!v6);
    }

    v14 = a2;
    if (a2 == a3)
    {
LABEL_38:
      if (v3 < 2)
      {
        return v14;
      }

      while (1)
      {
        v27 = 0;
        v28 = *a1;
        v29 = a1;
        do
        {
          v30 = v29;
          v31 = &v29[v27];
          v29 = v31 + 1;
          v32 = 2 * v27;
          v27 = (2 * v27) | 1;
          v33 = v32 + 2;
          if (v33 < v3)
          {
            v35 = v31[2];
            v34 = v31 + 2;
            if (*(v34 - 1) > v35)
            {
              v29 = v34;
              v27 = v33;
            }
          }

          *v30 = *v29;
        }

        while (v27 <= ((v3 - 2) >> 1));
        if (v29 != --a2)
        {
          *v29 = *a2;
          *a2 = v28;
          v36 = (v29 - a1 + 8) >> 3;
          v6 = v36 < 2;
          v37 = v36 - 2;
          if (v6)
          {
            goto LABEL_42;
          }

          v38 = v37 >> 1;
          v39 = &a1[v38];
          v40 = *v39;
          v28 = *v29;
          if (*v39 <= *v29)
          {
            goto LABEL_42;
          }

          do
          {
            *v29 = v40;
            v29 = v39;
            if (!v38)
            {
              break;
            }

            v38 = (v38 - 1) >> 1;
            v39 = &a1[v38];
            v40 = *v39;
          }

          while (*v39 > v28);
        }

        *v29 = v28;
LABEL_42:
        v6 = v3-- <= 2;
        if (v6)
        {
          return v14;
        }
      }
    }

    if (v3 < 2)
    {
      v15 = *a1;
      v14 = a2;
      do
      {
        v16 = *v14;
        if (*v14 > v15)
        {
          *v14 = v15;
          *a1 = v16;
          v15 = v16;
        }

        ++v14;
      }

      while (v14 != a3);
      goto LABEL_38;
    }

    v17 = a1 + 1;
    v18 = a1 + 2;
    v14 = a2;
    while (1)
    {
      v19 = *v14;
      if (*v14 > *a1)
      {
        *v14 = *a1;
        *a1 = v19;
        if (a2 - a1 == 16 || *v17 <= *v18)
        {
          v20 = a1 + 1;
          v21 = 1;
          v22 = *v17;
          if (*v17 <= v19)
          {
LABEL_32:
            v23 = a1;
            do
            {
              *v23 = v22;
              v23 = v20;
              if (((v3 - 2) >> 1) < v21)
              {
                break;
              }

              v24 = 2 * v21;
              v21 = (2 * v21) | 1;
              v20 = &a1[v21];
              v25 = v24 + 2;
              if (v25 < v3 && *v20 > v20[1])
              {
                ++v20;
                v21 = v25;
              }

              v22 = *v20;
            }

            while (*v20 <= v19);
            *v23 = v19;
          }
        }

        else
        {
          v20 = a1 + 2;
          v21 = 2;
          v22 = *v18;
          if (*v18 <= v19)
          {
            goto LABEL_32;
          }
        }
      }

      if (++v14 == a3)
      {
        goto LABEL_38;
      }
    }
  }

  return a3;
}

void sub_1001E3B48(uint64_t a1, void *a2)
{
  v3 = a2[29];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  sub_1001DF9C0((a2 + 22));
  v4 = a2[19];
  while (v4)
  {
    v5 = v4;
    v4 = *v4;
    v6 = v5[3];
    if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v7 = v5;
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
      v5 = v7;
    }

    operator delete(v5);
  }

  v8 = a2[17];
  a2[17] = 0;
  if (v8)
  {
    operator delete(v8);
  }

  sub_1001FE7FC((a2 + 3));
  v9 = a2[1];
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);

    std::__shared_weak_count::__release_weak(v9);
  }
}

void sub_1001E3CD8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100442678;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1001E3D54(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v5 = a2;
  v7 = *(a1 + 16);
  v8 = *a1;
  if (a4 > (v7 - *a1) >> 4)
  {
    if (v8)
    {
      v9 = a4;
      v10 = *(a1 + 8);
      v11 = *a1;
      if (v10 != v8)
      {
        do
        {
          v12 = *(v10 - 1);
          if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v12->__on_zero_shared)(v12);
            std::__shared_weak_count::__release_weak(v12);
          }

          v10 -= 2;
        }

        while (v10 != v8);
        v11 = *a1;
      }

      *(a1 + 8) = v8;
      operator delete(v11);
      v7 = 0;
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      a4 = v9;
    }

    if (!(a4 >> 60))
    {
      v21 = v7 >> 3;
      if (v7 >> 3 <= a4)
      {
        v21 = a4;
      }

      v22 = v7 >= 0x7FFFFFFFFFFFFFF0;
      v23 = 0xFFFFFFFFFFFFFFFLL;
      if (!v22)
      {
        v23 = v21;
      }

      if (!(v23 >> 60))
      {
        operator new();
      }
    }

    sub_10000FC84();
  }

  v13 = *(a1 + 8);
  if (a4 <= (v13 - v8) >> 4)
  {
    if (a2 != a3)
    {
      do
      {
        v19 = *v5;
        v18 = v5[1];
        if (v18)
        {
          atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
        }

        v20 = v8[1];
        *v8 = v19;
        v8[1] = v18;
        if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v20->__on_zero_shared)(v20);
          std::__shared_weak_count::__release_weak(v20);
        }

        v5 += 2;
        v8 += 2;
      }

      while (v5 != a3);
      v13 = *(a1 + 8);
    }

    for (; v13 != v8; v13 -= 2)
    {
      v27 = *(v13 - 1);
      if (v27 && !atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v27->__on_zero_shared)(v27);
        std::__shared_weak_count::__release_weak(v27);
      }
    }

    *(a1 + 8) = v8;
  }

  else
  {
    v14 = (a2 + v13 - v8);
    if (v13 != v8)
    {
      do
      {
        v16 = *v5;
        v15 = v5[1];
        if (v15)
        {
          atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
        }

        v17 = v8[1];
        *v8 = v16;
        v8[1] = v15;
        if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v17->__on_zero_shared)(v17);
          std::__shared_weak_count::__release_weak(v17);
        }

        v5 += 2;
        v8 += 2;
      }

      while (v5 != v14);
      v13 = *(a1 + 8);
    }

    v24 = v13;
    if (v14 != a3)
    {
      v24 = v13;
      v25 = v13;
      do
      {
        v26 = v14[1];
        *v25 = *v14;
        v25[1] = v26;
        if (v26)
        {
          atomic_fetch_add_explicit((v26 + 8), 1uLL, memory_order_relaxed);
        }

        v14 += 2;
        v25 += 2;
        v24 += 2;
      }

      while (v14 != a3);
    }

    *(a1 + 8) = v24;
  }
}

void sub_1001E40F4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1004426C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1001E4154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *__p = *a3;
  v9 = *(a3 + 16);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  sub_10025A89C(a2, __p, a4);
  v4 = __p[0];
  if (__p[0])
  {
    v5 = __p[1];
    v6 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v7 = *(v5 - 1);
        if (v7)
        {
          if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v7->__on_zero_shared)(v7);
            std::__shared_weak_count::__release_weak(v7);
          }
        }

        v5 -= 16;
      }

      while (v5 != v4);
      v6 = __p[0];
    }

    __p[1] = v4;
    operator delete(v6);
  }
}

char **sub_1001E423C(char **a1)
{
  sub_1000275F4((a1 + 27), a1[28]);
  v2 = a1[24];
  if (v2)
  {
    a1[25] = v2;
    operator delete(v2);
  }

  v3 = a1[21];
  if (v3)
  {
    a1[22] = v3;
    operator delete(v3);
  }

  sub_1000275F4((a1 + 18), a1[19]);
  v4 = a1[15];
  if (v4)
  {
    a1[16] = v4;
    operator delete(v4);
  }

  v5 = a1[12];
  if (v5)
  {
    a1[13] = v5;
    operator delete(v5);
  }

  v6 = a1[9];
  if (v6)
  {
    a1[10] = v6;
    operator delete(v6);
  }

  sub_1000275F4((a1 + 6), a1[7]);
  v7 = a1[3];
  if (v7)
  {
    a1[4] = v7;
    operator delete(v7);
  }

  v8 = *a1;
  if (*a1)
  {
    v9 = a1[1];
    v10 = *a1;
    if (v9 != v8)
    {
      do
      {
        v11 = *(v9 - 1);
        if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v11->__on_zero_shared)(v11);
          std::__shared_weak_count::__release_weak(v11);
        }

        v9 -= 16;
      }

      while (v9 != v8);
      v10 = *a1;
    }

    a1[1] = v8;
    operator delete(v10);
  }

  return a1;
}

void sub_1001E4374(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t **a4, uint64_t *a5)
{
  *__p = *a3;
  v14 = *(a3 + 16);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  v5 = a5[1];
  v11 = *a5;
  v12 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  sub_10025B30C(a2, __p, a4, &v11);
  v6 = v12;
  if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = __p[0];
  if (__p[0])
  {
    v8 = __p[1];
    v9 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v10 = *(v8 - 1);
        if (v10)
        {
          if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v10->__on_zero_shared)(v10);
            std::__shared_weak_count::__release_weak(v10);
          }
        }

        v8 -= 16;
      }

      while (v8 != v7);
      v9 = __p[0];
    }

    __p[1] = v7;
    operator delete(v9);
  }
}

void sub_1001E44B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  sub_10002BB1C(&a9);
  sub_100048F1C(&a11);
  _Unwind_Resume(a1);
}

void sub_1001E4560(void *a1, NSObject *a2, uint64_t a3, os_signpost_id_t a4, const char *a5, const char *a6, uint8_t *a7)
{

  _os_signpost_emit_with_name_impl(a1, a2, OS_SIGNPOST_EVENT, a4, a5, a6, a7, 0x26u);
}

void sub_1001E4578(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, a5, 0x26u);
}

void sub_1001E4590(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_INFO, a4, a5, 0x26u);
}

void sub_1001E45A8()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1001E4618()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_1001E4688(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = a1[3];
  v9 = a1[4];
  if (v9 != v10)
  {
    if (((v9 - v10) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_10000FC84();
  }

  v11 = *(*a1 + 56);
  v12 = *(a3 + 16);
  v39[0] = *a3;
  v39[1] = v12;
  v40 = *(a3 + 32);
  v13 = sub_1001E8F98(v11, v39);
  sub_100255CD0(v39, a2, a1, a1[8]);
  if (*a4 == 1)
  {
    sub_1001820DC(&v37, a1);
    __p = 0;
    v35 = 0;
    v36 = 0;
    v14 = *a2;
    v15 = a2[1];
    v33[0] = v14;
    v33[1] = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    memset(v32, 0, sizeof(v32));
    if (*(&v39[0] + 1) != *&v39[0])
    {
      if (((*(&v39[0] + 1) - *&v39[0]) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_10000FC84();
    }

    sub_1001E53B8(a5, &v37, &__p, v33, v32, v13);
    if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v15->__on_zero_shared)(v15);
      std::__shared_weak_count::__release_weak(v15);
    }

    if (__p)
    {
      v35 = __p;
      operator delete(__p);
    }

    v18 = v37;
    if (v37)
    {
      v19 = v38;
      v20 = v37;
      if (v38 != v37)
      {
        do
        {
          v21 = *(v19 - 16);
          if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v21->__on_zero_shared)(v21);
            std::__shared_weak_count::__release_weak(v21);
          }

          v19 -= 80;
        }

        while (v19 != v18);
        v20 = v37;
      }

      v38 = v18;
LABEL_43:
      operator delete(v20);
    }
  }

  else
  {
    sub_1001820DC(&v30, a1);
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v16 = *a2;
    v17 = a2[1];
    v26[0] = v16;
    v26[1] = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    memset(v25, 0, sizeof(v25));
    if (*(&v39[0] + 1) != *&v39[0])
    {
      if (((*(&v39[0] + 1) - *&v39[0]) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_10000FC84();
    }

    sub_1001E53B8(a5, &v30, &v27, v26, v25, v13);
    if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
    }

    if (v27)
    {
      v28 = v27;
      operator delete(v27);
    }

    v22 = v30;
    if (v30)
    {
      v23 = v31;
      v20 = v30;
      if (v31 != v30)
      {
        do
        {
          v24 = *(v23 - 2);
          if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v24->__on_zero_shared)(v24);
            std::__shared_weak_count::__release_weak(v24);
          }

          v23 -= 80;
        }

        while (v23 != v22);
        v20 = v30;
      }

      v31 = v22;
      goto LABEL_43;
    }
  }

  if (*&v39[0])
  {
    *(&v39[0] + 1) = *&v39[0];
    operator delete(*&v39[0]);
  }
}

void sub_1001E4C08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, void *a33)
{
  if (v33)
  {
    operator delete(v33);
  }

  sub_1001E4CD4(&a20);
  if (__p)
  {
    operator delete(__p);
  }

  sub_1001E4D4C(&a25);
  v37 = *(v35 - 144);
  if (v37)
  {
    *(v35 - 136) = v37;
    operator delete(v37);
    if (!v34)
    {
LABEL_7:
      _Unwind_Resume(a1);
    }
  }

  else if (!v34)
  {
    goto LABEL_7;
  }

  operator delete(v34);
  _Unwind_Resume(a1);
}

void sub_1001E4CBC()
{
  if (v0)
  {
    JUMPOUT(0x1001E4CACLL);
  }

  JUMPOUT(0x1001E4C98);
}

void sub_1001E4CC8()
{
  if (v0)
  {
    JUMPOUT(0x1001E4CACLL);
  }

  JUMPOUT(0x1001E4C98);
}

uint64_t sub_1001E4CD4(uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

char **sub_1001E4D4C(char **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 2);
        if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v5->__on_zero_shared)(v5);
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 80;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

float64_t sub_1001E4E08(uint64_t a1, double a2)
{
  v37 = (*(**(a1 + 48) + 32))(*(a1 + 48));
  v33 = (1.0 - a2) * *(a1 + 64);
  v3.f64[0] = log(v33);
  v4 = *(a1 + 96);
  v5 = *(a1 + 104) - v4;
  if (v5)
  {
    v6 = v5 >> 3;
    v32 = v3.f64[0];
    if (v37 != INFINITY)
    {
      v9 = *(a1 + 120);
      if (v6 <= 1)
      {
        v10 = 1;
      }

      else
      {
        v10 = v5 >> 3;
      }

      if (v6 >= 2 && (v4 - v9) > 0xF)
      {
        v12 = v10 & 0xFFFFFFFFFFFFFFFELL;
        v30 = vdupq_lane_s64(*&v3.f64[0], 0);
        v31 = vdupq_lane_s64(*&v33, 0);
        v18 = v10 & 0xFFFFFFFFFFFFFFFELL;
        v19 = v4;
        v20 = v9;
        do
        {
          v21 = *v20++;
          v35 = exp(*(&v21 + 1));
          v22.f64[0] = exp(*&v21);
          v22.f64[1] = v35;
          __x = vaddq_f64(v31, vmulq_n_f64(vmulq_n_f64(v22, v37), a2));
          v36 = log(__x.f64[1]);
          v23.f64[0] = log(__x.f64[0]);
          v23.f64[1] = v36;
          v3 = vsubq_f64(v30, v23);
          *v19++ = v3;
          v18 -= 2;
        }

        while (v18);
        if (v6 == v12)
        {
          return v3.f64[0];
        }
      }

      else
      {
        v12 = 0;
      }

      v24 = v10 - v12;
      v25 = v9 + v12;
      v26 = v4 + v12;
      do
      {
        v27 = *v25++;
        v28 = exp(v27);
        v3.f64[0] = v32 - log(v33 + v37 * v28 * a2);
        *v26++ = *&v3.f64[0];
        --v24;
      }

      while (v24);
      return v3.f64[0];
    }

    v3.f64[0] = v3.f64[0] - log(v33 + a2 * 0.0);
    if (v6 <= 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = v6;
    }

    if (v6 < 4)
    {
      v8 = 0;
LABEL_19:
      v16 = v7 - v8;
      v17 = v4 + v8;
      do
      {
        *v17++ = *&v3.f64[0];
        --v16;
      }

      while (v16);
      return v3.f64[0];
    }

    v8 = v7 & 0xFFFFFFFFFFFFFFFCLL;
    v13 = vdupq_lane_s64(*&v3.f64[0], 0);
    v14 = (v4 + 1);
    v15 = v7 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v14[-1] = v13;
      *v14 = v13;
      v14 += 2;
      v15 -= 4;
    }

    while (v15);
    if (v6 != v8)
    {
      goto LABEL_19;
    }
  }

  return v3.f64[0];
}

BOOL sub_1001E5040(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *(a1 + 32);
  v3 = v1 + 1;
  if (v1 != v2 && v3 != v2)
  {
    v5 = *v1;
    v6 = v1 + 1;
    do
    {
      v7 = *v6++;
      v8 = v7;
      if (v5 < v7)
      {
        v5 = v8;
        v1 = v3;
      }

      v3 = v6;
    }

    while (v6 != v2);
  }

  return *v1 <= 0.0;
}

double sub_1001E5088(void *a1, double a2)
{
  sub_1001E527C(a1, a2);
  v4 = a1[9];
  v3 = a1[10];
  if (v3 != v4)
  {
    if (((v3 - v4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_10000FC84();
  }

  v6 = a1[3];
  v5 = a1[4];
  if (v5 != v6)
  {
    if (((v5 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_10000FC84();
  }

  return NAN;
}

void sub_1001E5264(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001E527C(uint64_t a1, double a2)
{
  result = (*(**(a1 + 48) + 48))(*(a1 + 48));
  v6 = *(a1 + 32) - *(a1 + 24);
  if (v6)
  {
    v7 = v5;
    v8 = (1.0 - a2) * *(a1 + 64);
    v9 = v6 >> 3;
    v10 = 0;
    if (v5 == INFINITY)
    {
      if (v9 <= 1)
      {
        v11 = 1;
      }

      else
      {
        v11 = v9;
      }

      do
      {
        result = sub_1001E5688(a1, v10, v8 / (v8 + a2 * 0.0), a2, 0.0, a2 * 0.0, v8);
        *(*(a1 + 72) + 8 * v10++) = v8 / (v8 + a2 * 0.0);
      }

      while (v11 != v10);
    }

    else
    {
      if (v9 <= 1)
      {
        v12 = 1;
      }

      else
      {
        v12 = v9;
      }

      do
      {
        v13 = exp(*(*(a1 + 120) + 8 * v10));
        v14 = v7 * v13 * a2;
        v15 = v8 / (v8 + v14);
        result = sub_1001E5688(a1, v10, v15, a2, v7 * v13, v14, v8);
        *(*(a1 + 72) + 8 * v10++) = v15;
      }

      while (v12 != v10);
    }
  }

  return result;
}

uint64_t *sub_1001E53B8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5, double a6)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = *a2;
  a1[2] = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  *(a1 + 3) = *a3;
  a1[5] = *(a3 + 16);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v6 = a4[1];
  a1[6] = *a4;
  a1[7] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  a1[9] = 0;
  *(a1 + 8) = a6;
  v8 = *a1;
  v7 = a1[1];
  a1[10] = 0;
  a1[11] = 0;
  v9 = v7 - *&v8;
  if (v9)
  {
    if (!((0xCCCCCCCCCCCCCCCDLL * (v9 >> 4)) >> 61))
    {
      operator new();
    }

    sub_10000FC84();
  }

  a1[12] = 0;
  a1[13] = 0;
  a1[14] = 0;
  a1[15] = 0;
  a1[16] = 0;
  a1[17] = 0;
  v10 = a5[1] - *a5;
  if (v10)
  {
    if ((v10 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_10000FC84();
  }

  return a1;
}

void sub_1001E55DC(_Unwind_Exception *a1)
{
  v8 = *v6;
  if (*v6)
  {
    *v5 = v8;
    operator delete(v8);
    v9 = *v4;
    if (!*v4)
    {
LABEL_3:
      sub_1001E4CD4(v2);
      v10 = *v3;
      if (!*v3)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v9 = *v4;
    if (!*v4)
    {
      goto LABEL_3;
    }
  }

  *(v1 + 80) = v9;
  operator delete(v9);
  sub_1001E4CD4(v2);
  v10 = *v3;
  if (!*v3)
  {
LABEL_4:
    sub_1001E4D4C(v1);
    _Unwind_Resume(a1);
  }

LABEL_7:
  *(v1 + 32) = v10;
  operator delete(v10);
  sub_1001E4D4C(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1001E5688(uint64_t result, unint64_t a2, double a3, double a4, double a5, double a6, double a7)
{
  v15 = a4;
  v16 = a3;
  v13 = a6;
  v14 = a5;
  v12 = a7;
  if (a3 < 0.0)
  {
    v8 = result;
    if (0xCCCCCCCCCCCCCCCDLL * ((*(result + 8) - *result) >> 4) <= a2)
    {
      sub_1000BFF58();
    }

    v11 = *result + 80 * a2;
    v10 = (*(**(result + 48) + 32))(*(result + 48));
    v9 = *(v8 + 120);
    v19 = 0;
    LOBYTE(v18) = 0;
    memset(&v23, 0, sizeof(v23));
    std::string::assign(&v23, "Invalid outlierprobability (NaN?). Why?");
    memset(&v24, 0, sizeof(v24));
    std::string::assign(&v24, "\nisNaN = ");
    v27 = 0x100000000000000;
    memset(&v28, 0, sizeof(v28));
    v26 = 0;
    v25 = 48;
    std::string::assign(&v28, "\nParticle = ");
    memset(&v29, 0, sizeof(v29));
    if ((sub_1001E60D4(&v11, &v29) & 1) == 0)
    {
      std::bad_cast::bad_cast(&v20);
      v20.__vftable = &off_100434090;
      v21 = &off_100442730;
      sub_100049F88(&v20);
    }

    memset(&v30, 0, sizeof(v30));
    std::string::assign(&v30, "\nGaussian partition = ");
    memset(&v31, 0, sizeof(v31));
    if ((sub_1000DE4DC(&v10, &v31) & 1) == 0)
    {
      std::bad_cast::bad_cast(&v20);
      v20.__vftable = &off_100434090;
      sub_100049F88(&v20);
    }

    memset(&v32, 0, sizeof(v32));
    std::string::assign(&v32, "\nGaussian lognormpdfrelative = ");
    memset(&v33, 0, sizeof(v33));
    if ((sub_1000DE4DC((v9 + 8 * a2), &v33) & 1) == 0)
    {
      std::bad_cast::bad_cast(&v20);
      v20.__vftable = &off_100434090;
      sub_100049F88(&v20);
    }

    memset(&v34, 0, sizeof(v34));
    std::string::assign(&v34, "\nGaussian likelihood = ");
    memset(&v35, 0, sizeof(v35));
    if ((sub_1000DE4DC(&v14, &v35) & 1) == 0)
    {
      std::bad_cast::bad_cast(&v20);
      v20.__vftable = &off_100434090;
      sub_100049F88(&v20);
    }

    memset(&v36, 0, sizeof(v36));
    std::string::assign(&v36, "\npriorUniform = ");
    memset(&v37, 0, sizeof(v37));
    if ((sub_1000DE4DC((v8 + 64), &v37) & 1) == 0)
    {
      std::bad_cast::bad_cast(&v20);
      v20.__vftable = &off_100434090;
      sub_100049F88(&v20);
    }

    memset(&v38, 0, sizeof(v38));
    std::string::assign(&v38, "\nobservationProbabilityFromGaussian = ");
    memset(&v39, 0, sizeof(v39));
    if ((sub_1000DE4DC(&v13, &v39) & 1) == 0)
    {
      std::bad_cast::bad_cast(&v20);
      v20.__vftable = &off_100434090;
      sub_100049F88(&v20);
    }

    memset(&v40, 0, sizeof(v40));
    std::string::assign(&v40, "\nobservationProbabilityFromUniform = ");
    memset(&v41, 0, sizeof(v41));
    if ((sub_1000DE4DC(&v12, &v41) & 1) == 0)
    {
      std::bad_cast::bad_cast(&v20);
      v20.__vftable = &off_100434090;
      sub_100049F88(&v20);
    }

    memset(&v42, 0, sizeof(v42));
    std::string::assign(&v42, "\nInlier Confidence (init) = ");
    memset(&v43, 0, sizeof(v43));
    if ((sub_1000DE4DC(&v15, &v43) & 1) == 0)
    {
      std::bad_cast::bad_cast(&v20);
      v20.__vftable = &off_100434090;
      sub_100049F88(&v20);
    }

    memset(&v44, 0, sizeof(v44));
    std::string::assign(&v44, "\nresult = ");
    memset(&v45, 0, sizeof(v45));
    if ((sub_1000DE4DC(&v16, &v45) & 1) == 0)
    {
      std::bad_cast::bad_cast(&v20);
      v20.__vftable = &off_100434090;
      sub_100049F88(&v20);
    }

    sub_1000E661C(&v18, &v23, 21);
    if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v45.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v44.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_14:
        if ((SHIBYTE(v43.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_15;
        }

        goto LABEL_38;
      }
    }

    else if ((SHIBYTE(v44.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

    operator delete(v44.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v43.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_15:
      if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_39;
    }

LABEL_38:
    operator delete(v43.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_16:
      if ((SHIBYTE(v41.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_40;
    }

LABEL_39:
    operator delete(v42.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v41.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_17:
      if ((SHIBYTE(v40.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_41;
    }

LABEL_40:
    operator delete(v41.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v40.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_18:
      if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_42;
    }

LABEL_41:
    operator delete(v40.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_19:
      if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_43;
    }

LABEL_42:
    operator delete(v39.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_20:
      if ((SHIBYTE(v37.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_44;
    }

LABEL_43:
    operator delete(v38.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v37.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_21:
      if ((SHIBYTE(v36.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_45;
    }

LABEL_44:
    operator delete(v37.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v36.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_22:
      if ((SHIBYTE(v35.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_46;
    }

LABEL_45:
    operator delete(v36.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v35.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_23:
      if ((SHIBYTE(v34.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_47;
    }

LABEL_46:
    operator delete(v35.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v34.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_24:
      if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_48;
    }

LABEL_47:
    operator delete(v34.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_25:
      if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_49;
    }

LABEL_48:
    operator delete(v33.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_26:
      if ((SHIBYTE(v31.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_50;
    }

LABEL_49:
    operator delete(v32.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v31.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_27:
      if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_51;
    }

LABEL_50:
    operator delete(v31.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_28:
      if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_52;
    }

LABEL_51:
    operator delete(v30.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_29:
      if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_53;
    }

LABEL_52:
    operator delete(v29.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_30:
      if ((SHIBYTE(v27) & 0x80000000) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_54;
    }

LABEL_53:
    operator delete(v28.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v27) & 0x80000000) == 0)
    {
LABEL_31:
      if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_55;
    }

LABEL_54:
    operator delete(v25);
    if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_32:
      if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_56;
    }

LABEL_55:
    operator delete(v24.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_33:
      if ((v19 & 0x80000000) == 0)
      {
        goto LABEL_34;
      }

LABEL_57:
      operator delete(v18);
LABEL_34:
      sub_10003F5D0(&__p);
    }

LABEL_56:
    operator delete(v23.__r_.__value_.__l.__data_);
    if ((v19 & 0x80000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_57;
  }

  return result;
}