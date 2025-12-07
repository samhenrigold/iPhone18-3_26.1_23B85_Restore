void sub_1001E5EA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1001E60D4(void *a1, std::string *a2)
{
  v31 = 0u;
  v30 = 0u;
  *__p = 0u;
  v28 = 0u;
  v27 = 0u;
  v26 = 0u;
  std::locale::locale(&v26);
  v28 = 0uLL;
  __p[0] = 0;
  __p[1] = 0;
  v30 = 0uLL;
  DWORD2(v31) = 24;
  *(&v26 + 1) = &__p[1];
  *&v27 = &__p[1];
  *(&v27 + 1) = &__p[1];
  *&v31 = &__p[1];
  std::string::resize(&__p[1], 0x16uLL, 0);
  v3 = HIBYTE(v30);
  if (v30 < 0)
  {
    v3 = v30;
  }

  *&v28 = &__p[1];
  *(&v28 + 1) = &__p[1];
  __p[0] = &__p[1] + v3;
  v27 = 0uLL;
  *(&v26 + 1) = 0;
  v25 = off_100433ED0;
  v33.__loc_ = 0;
  std::ios_base::init(&v33, &v25);
  v34 = 0;
  v35 = -1;
  v37 = &v36;
  v38 = &v36 + 2;
  v4 = (&v32 + *(v32 - 3));
  v4->__exceptions_ = 1;
  std::ios_base::clear(v4, v4->__rdstate_);
  v5 = std::ostream::operator<<();
  v6 = *(v5 + *(*v5 - 24) + 32);
  v7 = *(&v33.__rdstate_ + *(v32 - 3));
  v9 = *(v7 + 40);
  v8 = *(v7 + 48);
  v37 = v9;
  v38 = v8;
  if ((v6 & 5) == 0)
  {
    v12 = &v8[-v9];
    size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
    if ((size & 0x8000000000000000) != 0)
    {
      v16 = a2->__r_.__value_.__r.__words[2];
      v15 = (v16 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v15 >= v12)
      {
        v17 = HIBYTE(v16);
LABEL_14:
        if ((v17 & 0x80u) == 0)
        {
          v14 = a2;
        }

        else
        {
          v14 = a2->__r_.__value_.__r.__words[0];
        }

LABEL_17:
        if (v9 == v8)
        {
          v18 = v14;
          goto LABEL_27;
        }

        if (v12 < 0x20 || v14 - v9 < 0x20)
        {
          v18 = v14;
          v19 = v9;
        }

        else
        {
          v18 = (v14 + (v12 & 0xFFFFFFFFFFFFFFE0));
          v19 = (v9 + (v12 & 0xFFFFFFFFFFFFFFE0));
          v20 = (v9 + 16);
          v21 = &v14->__r_.__value_.__r.__words[2];
          v22 = v12 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v23 = *v20;
            *(v21 - 1) = *(v20 - 1);
            *v21 = v23;
            v20 += 2;
            v21 += 4;
            v22 -= 32;
          }

          while (v22);
          if (v12 == (v12 & 0xFFFFFFFFFFFFFFE0))
          {
LABEL_27:
            v18->__r_.__value_.__s.__data_[0] = 0;
            if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
            {
              a2->__r_.__value_.__l.__size_ = v12;
              v10 = 1;
              std::ostream::~ostream();
              if ((SHIBYTE(v30) & 0x80000000) == 0)
              {
                goto LABEL_6;
              }
            }

            else
            {
              *(&a2->__r_.__value_.__s + 23) = v12 & 0x7F;
              v10 = 1;
              std::ostream::~ostream();
              if ((SHIBYTE(v30) & 0x80000000) == 0)
              {
                goto LABEL_6;
              }
            }

            goto LABEL_5;
          }
        }

        do
        {
          v24 = *v19++;
          v18->__r_.__value_.__s.__data_[0] = v24;
          v18 = (v18 + 1);
        }

        while (v19 != v8);
        goto LABEL_27;
      }

      size = a2->__r_.__value_.__l.__size_;
    }

    else
    {
      v14 = a2;
      if (v12 <= 0x16)
      {
        goto LABEL_17;
      }

      v15 = 22;
    }

    std::string::__grow_by(a2, v15, v12 - v15, size, 0, size, 0);
    a2->__r_.__value_.__l.__size_ = 0;
    LOBYTE(v17) = *(&a2->__r_.__value_.__s + 23);
    goto LABEL_14;
  }

  v10 = 0;
  std::ostream::~ostream();
  if (SHIBYTE(v30) < 0)
  {
LABEL_5:
    operator delete(__p[1]);
  }

LABEL_6:
  std::locale::~locale(&v26);
  return v10;
}

void sub_1001E649C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(v22 + 1);
  sub_10000D388(a1);
}

void sub_1001E64C4()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1001E6534()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void *sub_1001E65A4(void *result, uint64_t a2)
{
  *result = a2;
  result[2] = 0;
  return result;
}

void sub_1001E65B0(uint64_t a1, void *a2)
{
  v16 = 15;
  strcpy(v15, "LocalizerThread");
  sub_100325488(v15);
  if (v16 < 0)
  {
    operator delete(v15[0]);
    v4 = *(a1 + 8);
    if (v4)
    {
LABEL_3:
      if (v4 == 1)
      {
        v5 = *a1;
        if (*a2)
        {
          sub_1001E6920(v10, *a2);
          sub_1001E6920(v7, (*a2 + 472));
          sub_1001E6B04(v5, v10, v7);
          if (v9 < 0)
          {
            operator delete(v8[37]);
          }

          sub_100050024(v8);
          sub_1000505E0(v7);
          if (v12 < 0)
          {
            operator delete(v11[37]);
          }

          sub_100050024(v11);
          sub_1000505E0(v10);
        }

        else
        {
          sub_1001CAAD8(v5);
        }
      }

      return;
    }
  }

  else
  {
    v4 = *(a1 + 8);
    if (v4)
    {
      goto LABEL_3;
    }
  }

  v6 = *a1;
  if (*a2)
  {
    sub_1001E6920(v14, *a2);
    sub_1001E6920(v13, (*a2 + 472));
    sub_1001E67C8(v6, v14, v13);
  }

  sub_1001CB774(v6);
}

void sub_1001E677C(_Unwind_Exception *a1)
{
  sub_10004EA10(&STACK[0x3B8]);
  sub_10004EA10(&STACK[0x590]);
  _Unwind_Resume(a1);
}

void sub_1001E67AC(_Unwind_Exception *exception_object)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
  }

  _Unwind_Resume(exception_object);
}

void sub_1001E67C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1002B85E0(a2);
  v4 = sub_10004FF1C(*v3);
  v5 = sub_10010C670() - v4;
  operator new();
}

void sub_1001E6908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1001CDA50(va);
  _Unwind_Resume(a1);
}

__n128 sub_1001E6920(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *a1 = v2;
  v3 = a2[1];
  a2[1] = 0;
  *(a1 + 8) = v3;
  v4 = a2[2];
  a2[2] = 0;
  *(a1 + 16) = v4;
  v5 = a2[3];
  a2[3] = 0;
  *(a1 + 24) = v5;
  v6 = a2[4];
  a2[4] = 0;
  *(a1 + 32) = v6;
  v7 = a2[5];
  a2[5] = 0;
  *(a1 + 40) = v7;
  v8 = a2[6];
  a2[6] = 0;
  *(a1 + 48) = v8;
  v9 = a2[7];
  a2[7] = 0;
  *(a1 + 56) = v9;
  v10 = a2[8];
  a2[8] = 0;
  *(a1 + 64) = v10;
  v11 = a2[9];
  a2[9] = 0;
  *(a1 + 72) = v11;
  v12 = a2[10];
  a2[10] = 0;
  *(a1 + 80) = v12;
  v13 = a2[11];
  a2[11] = 0;
  *(a1 + 88) = v13;
  v14 = a2[12];
  a2[12] = 0;
  *(a1 + 96) = v14;
  v15 = a2[13];
  a2[13] = 0;
  *(a1 + 104) = v15;
  v16 = a2[14];
  a2[14] = 0;
  *(a1 + 112) = v16;
  v17 = a2[15];
  a2[15] = 0;
  *(a1 + 120) = v17;
  v18 = a2[16];
  a2[16] = 0;
  *(a1 + 128) = v18;
  v19 = *(a2 + 17);
  a2[17] = 0;
  *(a1 + 136) = v19;
  *(a1 + 152) = a2[19];
  a2[18] = 0;
  a2[19] = 0;
  *(a1 + 160) = *(a2 + 10);
  a2[20] = 0;
  a2[21] = 0;
  *(a1 + 176) = *(a2 + 11);
  a2[22] = 0;
  a2[23] = 0;
  *(a1 + 192) = *(a2 + 12);
  a2[24] = 0;
  a2[25] = 0;
  *(a1 + 208) = *(a2 + 13);
  a2[26] = 0;
  a2[27] = 0;
  *(a1 + 224) = *(a2 + 14);
  a2[28] = 0;
  a2[29] = 0;
  *(a1 + 240) = *(a2 + 15);
  a2[30] = 0;
  a2[31] = 0;
  *(a1 + 256) = *(a2 + 16);
  a2[32] = 0;
  a2[33] = 0;
  *(a1 + 272) = *(a2 + 17);
  a2[34] = 0;
  a2[35] = 0;
  *(a1 + 288) = *(a2 + 18);
  a2[36] = 0;
  a2[37] = 0;
  *(a1 + 304) = *(a2 + 19);
  a2[38] = 0;
  a2[39] = 0;
  *(a1 + 320) = *(a2 + 20);
  a2[40] = 0;
  a2[41] = 0;
  *(a1 + 336) = *(a2 + 21);
  a2[42] = 0;
  a2[43] = 0;
  *(a1 + 352) = *(a2 + 22);
  a2[44] = 0;
  a2[45] = 0;
  *(a1 + 368) = *(a2 + 23);
  a2[46] = 0;
  a2[47] = 0;
  *(a1 + 384) = *(a2 + 24);
  a2[48] = 0;
  a2[49] = 0;
  *(a1 + 400) = *(a2 + 25);
  a2[50] = 0;
  a2[51] = 0;
  *(a1 + 416) = *(a2 + 26);
  a2[52] = 0;
  a2[53] = 0;
  *(a1 + 432) = a2[54];
  result = *(a2 + 55);
  *(a1 + 456) = a2[57];
  *(a1 + 440) = result;
  a2[56] = 0;
  a2[57] = 0;
  a2[55] = 0;
  *(a1 + 464) = a2[58];
  return result;
}

void sub_1001E6B04(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  std::mutex::lock((a1 + 3));
  *(a1 + 17) = 1;
  std::mutex::unlock((a1 + 3));
  if (qword_10045B050 != -1)
  {
    sub_100385A60();
  }

  v6 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Apply event queue in batch", buf, 2u);
  }

  v32[0] = 0;
  v31[0] = 0;
  while (a2[58] != *(a3 + 464) || sub_10001A918((a2 + 55), a3 + 440))
  {
    v7 = sub_1002B85E0(a2);
    v8 = v7[1];
    *&v16 = *v7;
    *(&v16 + 1) = v8;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    v9 = *a1;
    v28 = &v29;
    v29 = 0;
    *buf = 0;
    v23 = buf;
    v24 = 0x3802000000;
    v25 = sub_1001E787C;
    v26 = nullsub_140;
    v27 = v9;
    v17 = _NSConcreteStackBlock;
    v18 = 0x40000000;
    v19 = sub_1001E788C;
    v20 = &unk_100442840;
    v21 = buf;
    sub_10000AE28((v9 + 32), &v17);
    _Block_object_dispose(buf, 8);
    if (v29 && (v10 = sub_10004FF1C(*v29), sub_10004FF1C(v16) >= v10))
    {
      v12 = *a1;
      LOBYTE(v29) = 0;
      *buf = 0;
      v23 = buf;
      v24 = 0x3802000000;
      v25 = sub_1001E78AC;
      v26 = nullsub_141;
      v27 = v12;
      v28 = &v29;
      v17 = _NSConcreteStackBlock;
      v18 = 0x40000000;
      v19 = sub_1001E78BC;
      v20 = &unk_100442868;
      v21 = buf;
      sub_10000AE28((v12 + 32), &v17);
      _Block_object_dispose(buf, 8);
      v13 = v30;
      v30 = 0uLL;
      v14 = *(&v16 + 1);
      v16 = v13;
      if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v14->__on_zero_shared)(v14);
        std::__shared_weak_count::__release_weak(v14);
        if (v29 != 1)
        {
          goto LABEL_13;
        }
      }

      else if (v29 != 1)
      {
        goto LABEL_13;
      }

      v15 = *(&v30 + 1);
      if (*(&v30 + 1) && !atomic_fetch_add((*(&v30 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v15->__on_zero_shared)(v15);
        std::__shared_weak_count::__release_weak(v15);
      }
    }

    else
    {
      sub_1002B8190(a2);
    }

LABEL_13:
    sub_1001CB458(a1[1], v32, v31, &v16);
    v11 = *(&v16 + 1);
    if (*(&v16 + 1))
    {
      if (!atomic_fetch_add((*(&v16 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v11->__on_zero_shared)(v11);
        std::__shared_weak_count::__release_weak(v11);
      }
    }
  }

  sub_1001CA984(a1);
}

void sub_1001E6EC8(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10000D388(exception_object);
}

void sub_1001E6F20(uint64_t a1, int a2)
{
  *(a1 + 8) = a2;
  if (qword_10045B050 == -1)
  {
    v3 = qword_10045B058;
    if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_4;
    }
  }

  else
  {
    sub_100385A60();
    v3 = qword_10045B058;
    if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
    {
LABEL_4:
      *buf = sub_1001E65B0;
      *&buf[8] = 0;
      v4 = a1;
      sub_1001E7A08(&v6.__t_, buf, &v4);
    }
  }

  *buf = 0;
  _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Starting localizer thread", buf, 2u);
  goto LABEL_4;
}

void sub_1001E7080(uint64_t a1, int a2, uint64_t *a3)
{
  *(a1 + 8) = a2;
  if (qword_10045B050 == -1)
  {
    v4 = qword_10045B058;
    if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_4;
    }
  }

  else
  {
    sub_100385A60();
    v4 = qword_10045B058;
    if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
    {
LABEL_4:
      *buf = sub_1001E65B0;
      v7 = 0;
      v5 = a1;
      operator new();
    }
  }

  *buf = 0;
  _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Starting localizer thread", buf, 2u);
  goto LABEL_4;
}

void sub_1001E7290(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10002BB1C(va);
  _Unwind_Resume(a1);
}

__n128 sub_1001E7360(uint64_t a1, uint64_t a2)
{
  *a2 = off_1004427A0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1001E73A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN14EventGenerator15applyInRealTimeI27input_event_stream_iteratorEEvT_S2_EUlNSt3__16chrono8durationIxNS3_5ratioILl1ELl1000000000EEEEEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN14EventGenerator15applyInRealTimeI27input_event_stream_iteratorEEvT_S2_EUlNSt3__16chrono8durationIxNS3_5ratioILl1ELl1000000000EEEEEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN14EventGenerator15applyInRealTimeI27input_event_stream_iteratorEEvT_S2_EUlNSt3__16chrono8durationIxNS3_5ratioILl1ELl1000000000EEEEEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN14EventGenerator15applyInRealTimeI27input_event_stream_iteratorEEvT_S2_EUlNSt3__16chrono8durationIxNS3_5ratioILl1ELl1000000000EEEEEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_1001E741C(uint64_t *a1, uint64_t a2)
{
  v4 = a1[3];
  v5 = a1[1];
  if (*(*a1 + 464) == *(v5 + 464) && !sub_10001A918(*a1 + 440, v5 + 440))
  {
    return 1;
  }

  __p = 0;
  v22 = 0;
  v23 = 0;
  while (1)
  {
    v7 = *a1;
    v8 = a1[1];
    if (*(*a1 + 464) == *(v8 + 464))
    {
      if (!sub_10001A918(v7 + 440, v8 + 440))
      {
        break;
      }

      v7 = *a1;
    }

    v9 = a1[2];
    v10 = sub_1002B85E0(v7);
    if (sub_10004FF1C(*v10) + *v9 > a2)
    {
      break;
    }

    v11 = sub_1002B85E0(*a1);
    v27[0] = *a1[2];
    sub_1001E76CC(*v11, v27);
    v12 = sub_1002B85E0(*a1);
    v13 = v22;
    if (v22 >= v23)
    {
      v6 = sub_100182F0C(&__p, v12);
    }

    else
    {
      *v22 = *v12;
      v14 = *(v12 + 8);
      v13[1] = v14;
      if (v14)
      {
        atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
      }

      v6 = v13 + 2;
    }

    v22 = v6;
    sub_1002B8190(*a1);
  }

  v15 = *v4;
  v24 = v22;
  v25 = __p;
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x4002000000;
  v27[3] = sub_1001E77AC;
  v27[4] = nullsub_139;
  v27[5] = &v25;
  v27[6] = &v24;
  v27[7] = v15;
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 0x40000000;
  v26[2] = sub_1001E77C4;
  v26[3] = &unk_100442808;
  v26[4] = v27;
  sub_10000AE28((v15 + 32), v26);
  _Block_object_dispose(v27, 8);
  v16 = __p;
  if (__p)
  {
    v17 = v22;
    v18 = __p;
    if (v22 != __p)
    {
      do
      {
        v19 = *(v17 - 1);
        if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v19->__on_zero_shared)(v19);
          std::__shared_weak_count::__release_weak(v19);
        }

        v17 -= 2;
      }

      while (v17 != v16);
      v18 = __p;
    }

    v22 = v16;
    operator delete(v18);
  }

  return 0;
}

_DWORD *sub_1001E76CC(int *a1, uint64_t *a2)
{
  v4 = *a1;
  result = a1 + 2;
  v3 = v4;
  switch(v4 ^ (v4 >> 31))
  {
    case 1:
      if (v3 < 0)
      {
        result = *result;
      }

      *(result + 2) += *a2;
      break;
    case 2:
    case 0xB:
    case 0xD:
    case 0xE:
    case 0x10:
      goto LABEL_6;
    case 3:
    case 8:
      if (v3 < 0)
      {
        result = *result;
      }

      v5 = *a2;
      *(result + 4) += *a2;
      *(result + 10) = v5 / 1000000000.0 + *(result + 10);
      break;
    case 4:
    case 5:
    case 6:
    case 7:
    case 9:
    case 0xA:
    case 0xF:
      if (v3 < 0)
      {
        result = *result;
      }

      *(result + 1) += *a2;
      break;
    default:
      if (v3 < 0)
      {
        result = *result;
        *result += *a2;
      }

      else
      {
LABEL_6:
        *result += *a2;
      }

      break;
  }

  return result;
}

__n128 sub_1001E77AC(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = result;
  return result;
}

void sub_1001E77C4(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *v1[5];
  if (*v1[6] != v2)
  {
    v3 = v1[7];
    do
    {
      v5 = v3[1];
      if (v5 >= v3[2])
      {
        v4 = sub_100182F0C(v3, v2);
      }

      else
      {
        v6 = *(v2 + 8);
        *v5 = *v2;
        v5[1] = v6;
        if (v6)
        {
          atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
        }

        v4 = v5 + 2;
      }

      v3[1] = v4;
      sub_100051018(*v3, v4, &v7, (v4 - *v3) >> 4);
      v2 += 16;
    }

    while (v2 != *v1[6]);
  }
}

__n128 sub_1001E787C(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

uint64_t sub_1001E788C(uint64_t result)
{
  v1 = *(*(result + 32) + 8);
  v3 = *(v1 + 40);
  v2 = *(v1 + 48);
  if (*v3 == v3[1])
  {
    v4 = 0;
  }

  else
  {
    v4 = *v3;
  }

  *v2 = v4;
  return result;
}

__n128 sub_1001E78AC(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

void sub_1001E78CC(uint64_t ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2 != (*a1)[1])
  {
    v3 = a1[1];
    v4 = *v2;
    if (*v3 == 1)
    {
      v5 = v2[1];
      if (v5)
      {
        atomic_fetch_add_explicit(v5 + 1, 1uLL, memory_order_relaxed);
      }

      v6 = v3[2];
      v3[1] = v4;
      v3[2] = v5;
      if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }
    }

    else
    {
      v7 = v2[1];
      v3[1] = v4;
      v3[2] = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(v7 + 1, 1uLL, memory_order_relaxed);
      }

      *v3 = 1;
    }

    sub_1001CDC48(*v1, v1[1], &v10, (v1[1] - *v1) >> 4);
    v8 = v1[1];
    v9 = *(v8 - 1);
    if (v9)
    {
      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
      }
    }

    v1[1] = v8 - 2;
  }
}

void sub_1001E7AD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1001E7CBC(va);
  _Unwind_Resume(a1);
}

void sub_1001E7B04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1001E7C50(&a9);
  sub_1001E7CBC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001E7B20(uint64_t a1)
{
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  pthread_setspecific(v2->__key_, v3);
  v4 = *(a1 + 16);
  v5 = *(a1 + 8);
  v6 = (*(a1 + 24) + (v4 >> 1));
  if (v4)
  {
    v5 = *(*v6 + v5);
  }

  v11 = 0;
  v12 = 0;
  v5(v6, &v11);
  v7 = v12;
  if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  if (a1)
  {
    v8 = *a1;
    *a1 = 0;
    if (v8)
    {
      std::__thread_struct::~__thread_struct(v8);
      operator delete();
    }

    operator delete();
  }

  return 0;
}

void sub_1001E7C20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, std::__thread_struct **);
  sub_10002BB1C(va1);
  sub_1001E7C50(va);
  _Unwind_Resume(a1);
}

void sub_1001E7C3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1001E7C50(va);
  _Unwind_Resume(a1);
}

std::__thread_struct ***sub_1001E7C50(std::__thread_struct ***result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *v1;
    *v1 = 0;
    if (v2)
    {
      std::__thread_struct::~__thread_struct(v2);
      operator delete();
    }

    operator delete();
  }

  return result;
}

std::__thread_struct **sub_1001E7CBC(std::__thread_struct **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::__thread_struct::~__thread_struct(v2);
    operator delete();
  }

  return a1;
}

void sub_1001E7D30(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100442898;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t *sub_1001E7D84(uint64_t a1)
{
  if (*(a1 + 959) < 0)
  {
    operator delete(*(a1 + 936));
    sub_100050024((a1 + 640));
    sub_1000505E0((a1 + 496));
    if ((*(a1 + 487) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_100050024((a1 + 640));
    sub_1000505E0((a1 + 496));
    if ((*(a1 + 487) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  operator delete(*(a1 + 464));
LABEL_3:
  sub_100050024((a1 + 168));

  return sub_1000505E0((a1 + 24));
}

void sub_1001E7EF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1001E7CBC(va);
  _Unwind_Resume(a1);
}

void sub_1001E7F1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__thread_struct *a10)
{
  sub_1001E80BC(&a9);
  sub_1001E7CBC(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_1001E7F38(uint64_t a1)
{
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  pthread_setspecific(v2->__key_, v3);
  v4 = *(a1 + 16);
  v5 = *(a1 + 8);
  v6 = (*(a1 + 24) + (v4 >> 1));
  if (v4)
  {
    v5 = *(*v6 + v5);
  }

  v12 = *(a1 + 32);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v5(v6, &v12);
  v7 = *(&v12 + 1);
  if (*(&v12 + 1) && !atomic_fetch_add((*(&v12 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  if (a1)
  {
    v8 = *(a1 + 40);
    if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }

    v9 = *a1;
    *a1 = 0;
    if (v9)
    {
      std::__thread_struct::~__thread_struct(v9);
      operator delete();
    }

    operator delete();
  }

  return 0;
}

void sub_1001E808C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  sub_10002BB1C(va1);
  sub_1001E80BC(va);
  _Unwind_Resume(a1);
}

void sub_1001E80A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1001E80BC(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1001E80BC(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    v2 = *(v1 + 40);
    if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v2->__on_zero_shared)(v2);
      std::__shared_weak_count::__release_weak(v2);
    }

    v3 = *v1;
    *v1 = 0;
    if (v3)
    {
      std::__thread_struct::~__thread_struct(v3);
      operator delete();
    }

    operator delete();
  }

  return a1;
}

void sub_1001E8178()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1001E81E8()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

uint64_t sub_1001E8258@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100258548(a1);
  if (v4 <= 1)
  {
    sub_1003846E0(__p, v12);
    sub_1000BC6D8(__p);
  }

  *a2 = off_10043D898;
  *(a2 + 8) = off_10043DB08;
  *(a2 + 16) = 0u;
  *(a2 + 32) &= 0xFCu;
  *(a2 + 40) = off_10043DB28;
  *(a2 + 48) = 0u;
  *(a2 + 64) &= 0xFCu;
  *(a2 + 72) = 0u;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0;
  *(a2 + 152) = 0u;
  *(a2 + 168) = 0u;
  *(a2 + 184) = 0u;
  *(a2 + 200) = 0u;
  *(a2 + 216) = 0u;
  *(a2 + 232) = 0u;
  *(a2 + 248) = 0u;
  *(a2 + 136) = 0u;
  *(a2 + 264) = 0u;
  *(a2 + 280) = 0u;
  *(a2 + 300) = 0;
  *(a2 + 304) = off_10043D858;
  *(a2 + 312) = 0u;
  *(a2 + 328) = 0u;
  *(a2 + 344) = 0u;
  *(a2 + 360) = 0u;
  *(a2 + 376) = 0u;
  *(a2 + 392) = 0u;
  *(a2 + 408) = 0u;
  *(a2 + 424) = 0;
  *(a2 + 448) = 0;
  *(a2 + 432) = 0u;
  *(a2 + 456) &= 0xC0u;
  *(a2 + 464) = 0;
  *(a2 + 472) = 0u;
  *(a2 + 488) = 0u;
  *(a2 + 504) = 0u;
  *(a2 + 520) = 0;
  *(a2 + 528) = off_10043DB28;
  *(a2 + 536) = 0u;
  *(a2 + 552) &= 0xFCu;
  *(a2 + 560) = 0;
  *(a2 + 568) = off_10043D878;
  *(a2 + 576) = 0u;
  *(a2 + 592) &= 0xF8u;
  *(a2 + 600) = 0;
  *(a2 + 608) = 0;
  *(a2 + 616) = 0u;
  *(a2 + 632) = 0u;
  *(a2 + 648) = 0u;
  *(a2 + 664) = 0;
  *(a2 + 700) = 0u;
  *(a2 + 672) = 0u;
  *(a2 + 688) = 0u;
  *(a2 + 720) = 0u;
  *(a2 + 736) = 0u;
  *(a2 + 752) = *(a2 + 752) & 0xF000000000000000 | 0x10000000;
  *(a2 + 296) = 4;
  *(a2 + 16) = *sub_100258558(a1, 0);
  *(a2 + 24) = *sub_100258558(a1, 1);
  if (v4 >= 3)
  {
    *(a2 + 144) = *sub_100258558(a1, 2);
    if (v4 >= 5)
    {
      v5 = *sub_100258558(a1, 3);
      v6 = sub_100258558(a1, 4);
      *(a2 + 72) = atan2(*v6, v5);
    }
  }

  *(a2 + 152) = sqrt(sub_1002B0F94((a1 + 3), 2uLL));
  if (sub_1002B0F38((a1 + 3)) && (sub_1002B0F2C((a1 + 3), v12), v12[0] >= 2uLL))
  {
    v7 = sub_1002B0954((a1 + 3), 0, 0);
    sub_100123618(a2, *v7);
    v8 = sub_1002B0954((a1 + 3), 0, 1uLL);
    sub_10012362C(a2, *v8);
    v9 = *sub_1002B0954((a1 + 3), 1uLL, 1uLL);
  }

  else
  {
    sub_100123618(a2, INFINITY);
    v9 = INFINITY;
    sub_10012362C(a2, INFINITY);
  }

  return sub_100123640(a2, v9);
}

void sub_1001E85D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int64x2_t sub_1001E8650(double *a1, double *a2)
{
  v2 = sub_100217148(a1, *a2, a2[1]);
  result = vdupq_n_s64(0x7FF4000000000000uLL);
  v2[1] = result;
  v2[2] = result;
  v2[3].i16[0] = 0;
  v2[4].i64[0] = 0;
  v2[4].i64[1] = 0;
  v2[3].i64[1] = 0;
  return result;
}

double *sub_1001E8684(double *a1, uint64_t a2, double *a3)
{
  result = sub_100217148(a1, *a3, a3[1]);
  *(result + 1) = *(a2 + 16);
  *(result + 2) = *(a2 + 32);
  *(result + 48) = *(a2 + 48);
  *(result + 49) = 0;
  v5 = *(a2 + 64);
  result[7] = *(a2 + 56);
  *(result + 8) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  result[9] = *(a2 + 72);
  return result;
}

void sub_1001E86E8(uint64_t a1, double *a2, uint64_t a3, unint64_t *a4, void *a5, unint64_t a6, unint64_t a7)
{
  v8 = a6;
  if (!a3)
  {
    sub_1000474A4(&v29, "");
    sub_1001E921C(v35, "You must have made a mistake");
    sub_100383AA4(v35, __p, &v29);
    sub_1000BC6D8(__p);
  }

  if (a7 - a6 != a3)
  {
    sub_1000474A4(&v29, "");
    sub_1001E926C(v36, "For now this is not allowed. Siblings is strictly the number of samples that are permitted");
    sub_100383AA4(v36, __p, &v29);
    sub_1000BC6D8(__p);
  }

  if (a7 <= a6)
  {
    sub_1000474A4(__p, "");
    sub_10017D730(&v29, "Bug in indexing");
    sub_100383AA4(&v29, v27, __p);
    sub_1000BC6D8(v27);
  }

  v12 = 80 * a6;
  do
  {
    if (v8 >= *a4)
    {
      sub_100217148(v29.n128_f64, *a2, a2[1]);
      v18 = *(a1 + 32);
      v30 = *(a1 + 16);
      v31 = v18;
      v32 = *(a1 + 48);
      v19 = *(a1 + 64);
      *&v33 = *(a1 + 56);
      *(&v33 + 1) = v19;
      if (v19)
      {
        atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
      }

      v34 = *(a1 + 72);
      v16 = *a5 - 80 * *a4;
      v17 = v16 + v12;
      sub_100217150((v16 + v12), &v29);
    }

    else
    {
      v13 = a4[2];
      if (v8 >= 0xCCCCCCCCCCCCCCCDLL * ((v13 - a4[1]) >> 4))
      {
        if (v13 >= a4[3])
        {
          a4[2] = sub_1001E92BC(a4 + 1, &v29, a1, a2);
        }

        else
        {
          sub_100217148(a4[2], *a2, a2[1]);
          *(v13 + 16) = *(a1 + 16);
          *(v13 + 32) = *(a1 + 32);
          *(v13 + 48) = *(a1 + 48);
          *(v13 + 49) = 0;
          *(v13 + 56) = *(a1 + 56);
          v25 = *(a1 + 64);
          *(v13 + 64) = v25;
          if (v25)
          {
            atomic_fetch_add_explicit((v25 + 8), 1uLL, memory_order_relaxed);
          }

          *(v13 + 72) = *(a1 + 72);
          a4[2] = v13 + 80;
          a4[2] = v13 + 80;
        }

        goto LABEL_6;
      }

      sub_100217148(v29.n128_f64, *a2, a2[1]);
      v14 = *(a1 + 32);
      v30 = *(a1 + 16);
      v31 = v14;
      v32 = *(a1 + 48);
      v15 = *(a1 + 64);
      *&v33 = *(a1 + 56);
      *(&v33 + 1) = v15;
      if (v15)
      {
        atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
      }

      v34 = *(a1 + 72);
      v16 = a4[1];
      v17 = v16 + v12;
      sub_100217150((v16 + v12), &v29);
    }

    v20 = v30;
    v21 = v31;
    *(v17 + 48) = v32;
    *(v17 + 16) = v20;
    *(v17 + 32) = v21;
    v22 = v33;
    v33 = 0uLL;
    v23 = *(v17 + 64);
    *(v17 + 56) = v22;
    if (v23 && !atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v23->__on_zero_shared)(v23);
      std::__shared_weak_count::__release_weak(v23);
      *(v16 + v12 + 72) = v34;
      v24 = *(&v33 + 1);
      if (!*(&v33 + 1))
      {
        goto LABEL_6;
      }
    }

    else
    {
      *(v16 + v12 + 72) = v34;
      v24 = *(&v33 + 1);
      if (!*(&v33 + 1))
      {
        goto LABEL_6;
      }
    }

    if (!atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v24->__on_zero_shared)(v24);
      std::__shared_weak_count::__release_weak(v24);
    }

LABEL_6:
    ++v8;
    v12 += 80;
  }

  while (a7 != v8);
}

void sub_1001E8AD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a16 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001E8B6C(uint64_t result)
{
  v1 = *(result + 64);
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

void sub_1001E8C30(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1001E8C4C(void *result, uint64_t a2, void *a3)
{
  switch(a2)
  {
    case 5:
      v9 = *(result + 1);
      v7 = *(result + 4);
      v10 = result[5];
      v8 = __sincos_stret(v7);
      v11[0] = *&v8.__cosval;
      v11[1] = *&v8.__sinval;
      v4 = &v12;
      v5 = a3;
      v6 = 5;
      break;
    case 3:
      v9 = *(result + 1);
      v10 = result[5];
      v4 = v11;
      v5 = a3;
      v6 = 3;
      break;
    case 2:
      v9 = *(result + 1);
      v4 = &v10;
      v5 = a3;
      v6 = 2;
      break;
    default:
      return result;
  }

  return sub_1001E8FFC(v5, &v9, v4, v6);
}

void sub_1001E8D30(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  *a2 = 0uLL;
  v3 = *(a1 + 64);
  *(a1 + 56) = v2;
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);

    std::__shared_weak_count::__release_weak(v3);
  }
}

uint64_t sub_1001E8DB8(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t ***a8)
{
  v15 = (*(**(a1 + 56) + 16))(*(a1 + 56), a4);
  v16 = (*(*v15 + 56))(v15, a1, a6, a7, *(a1 + 16), *(a1 + 24), a2, a3);
  v17 = v16;
  v18 = HIBYTE(v16);
  if ((v16 & 1) == 0)
  {
    v19 = *a8;
    if (*a8)
    {
      v22[0] = off_10043DB08;
      v23 = 0;
      *&v22[1] = a2;
      *&v22[2] = a3;
      sub_100246474(v19, v22, a1, &v24);
      if (v24 == 1)
      {
        nullsub_75();
        v20 = v25;
        if (v25 && !atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v20->__on_zero_shared)(v20);
          std::__shared_weak_count::__release_weak(v20);
        }

        v17 = 1;
        v18 = 1;
      }

      nullsub_75();
    }
  }

  if (v17)
  {
    *(a1 + 72) = 0;
  }

  else if (a5 >= 1)
  {
    *(a1 + 72) += a5;
  }

  return v17 | (v18 << 8);
}

void *sub_1001E8FFC(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
  {
    if (v8)
    {
      result[1] = v8;
      v9 = v8;
      v10 = a4;
      operator delete(v9);
      a4 = v10;
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v11 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v11 = a4;
      }

      v12 = v7 >= 0x7FFFFFFFFFFFFFF8;
      v13 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v12)
      {
        v13 = v11;
      }

      if (!(v13 >> 61))
      {
        operator new();
      }
    }

    sub_10000FC84();
  }

  v14 = result[1];
  v15 = v14 - v8;
  if (a4 > (v14 - v8) >> 3)
  {
    v16 = &__src[v15];
    if (v14 == v8)
    {
      v17 = result[1];
      v18 = v17;
      if (v16 == a3)
      {
        goto LABEL_26;
      }
    }

    else
    {
      result = memmove(*result, __src, v15);
      v17 = v6[1];
      v18 = v17;
      if (v16 == a3)
      {
        goto LABEL_26;
      }
    }

    v21 = &a3[v8] - &__src[v14] - 8;
    if (v21 >= 0x38)
    {
      v18 = v17;
      if (v8 + v17 - &__src[v14] >= 0x20)
      {
        v22 = (v21 >> 3) + 1;
        v23 = 8 * (v22 & 0x3FFFFFFFFFFFFFFCLL);
        v16 += v23;
        v18 = (v17 + v23);
        v24 = (v17 + 16);
        v25 = &__src[v14 - v8 + 16];
        v26 = v22 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v27 = *v25;
          *(v24 - 1) = *(v25 - 1);
          *v24 = v27;
          v24 += 2;
          v25 += 32;
          v26 -= 4;
        }

        while (v26);
        if (v22 == (v22 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_26;
        }
      }
    }

    else
    {
      v18 = v17;
    }

    do
    {
      v28 = *v16;
      v16 += 8;
      *v18 = v28;
      v18 += 8;
    }

    while (v16 != a3);
LABEL_26:
    v20 = v18;
    goto LABEL_27;
  }

  v19 = a3 - __src;
  if (v19)
  {
    result = memmove(*result, __src, v19);
  }

  v20 = v8 + v19;
LABEL_27:
  v6[1] = v20;
  return result;
}

std::string *sub_1001E921C@<X0>(std::string *__return_ptr a1@<X8>, std::string::value_type *__s@<X0>)
{
  *&a1->__r_.__value_.__l.__data_ = 0uLL;
  a1->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a1, __s);
}

void sub_1001E9250(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_1001E926C@<X0>(std::string *__return_ptr a1@<X8>, std::string::value_type *__s@<X0>)
{
  *&a1->__r_.__value_.__l.__data_ = 0uLL;
  a1->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a1, __s);
}

void sub_1001E92A0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

double *sub_1001E92BC(void **a1, uint64_t a2, uint64_t a3, double *a4)
{
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4) + 1;
  if (v4 > 0x333333333333333)
  {
    sub_10000FC84();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 4) > v4)
  {
    v4 = 0x999999999999999ALL * ((a1[2] - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 4) >= 0x199999999999999)
  {
    v7 = 0x333333333333333;
  }

  else
  {
    v7 = v4;
  }

  if (v7)
  {
    if (v7 <= 0x333333333333333)
    {
      operator new();
    }

    sub_10000D444();
  }

  v18 = (16 * ((a1[1] - *a1) >> 4));
  v8 = sub_100217148(v18, *a4, a4[1]);
  v12 = *(a3 + 32);
  *(v8 + 1) = *(a3 + 16);
  *(v8 + 2) = v12;
  *(v8 + 48) = *(a3 + 48);
  *(v8 + 49) = 0;
  v13 = *(a3 + 64);
  v8[7] = *(a3 + 56);
  *(v8 + 8) = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  v8[9] = *(a3 + 72);
  v14 = a1[1];
  v15 = v18 + *a1 - v14;
  sub_1001E9438(a1, *a1, v14, v15, v9, v10, v11);
  v16 = *a1;
  *a1 = v15;
  a1[1] = v18 + 10;
  a1[2] = 0;
  if (v16)
  {
    operator delete(v16);
  }

  return v18 + 10;
}

void sub_1001E9424(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1001E95F0(va);
  _Unwind_Resume(a1);
}

void sub_1001E9438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = a4;
  if (a2 != a3)
  {
    v7 = a4;
    v9 = a2;
    v10 = a2;
    do
    {
      sub_100217150(v7, v10);
      v11 = *(v10 + 16);
      v12 = *(v10 + 32);
      *(v7 + 48) = *(v10 + 48);
      *(v7 + 16) = v11;
      *(v7 + 32) = v12;
      v13 = *(v10 + 64);
      *(v7 + 56) = *(v10 + 56);
      *(v7 + 64) = v13;
      if (v13)
      {
        atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      }

      *(v7 + 72) = *(v10 + 72);
      v10 += 80;
      v7 = v15 + 80;
      v15 += 80;
    }

    while (v10 != a3);
    for (; v9 != a3; v9 += 80)
    {
      v14 = *(v9 + 64);
      if (v14)
      {
        if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v14->__on_zero_shared)(v14);
          std::__shared_weak_count::__release_weak(v14);
        }
      }
    }
  }
}

uint64_t sub_1001E95F0(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 80;
    v4 = *(i - 16);
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1001E9698()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1001E9708()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

uint64_t sub_1001E9778(uint64_t a1, uint64_t *a2)
{
  sub_1002156A4(&v8, 1.0);
  *a1 = off_1004428E8;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  sub_100217150((a1 + 32), &v8);
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0;
  sub_1002C6250(a1 + 120);
  *(a1 + 120) = 0;
  v5 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 104);
  *(a1 + 96) = v5;
  *(a1 + 104) = v4;
  if (!v6 || atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v6->__on_zero_shared)(v6);
  std::__shared_weak_count::__release_weak(v6);
  return a1;
}

void sub_1001E9888(_Unwind_Exception *a1)
{
  sub_10002BB1C(v1 + 96);
  if (*(v1 + 64) == 1)
  {
    *(v1 + 64) = 0;
    if (*(v1 + 48) != 1)
    {
LABEL_3:
      sub_1001E4D4C(v2);
      _Unwind_Resume(a1);
    }
  }

  else if (*(v1 + 48) != 1)
  {
    goto LABEL_3;
  }

  *(v1 + 48) = 0;
  sub_1001E4D4C(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1001E98F4(uint64_t a1)
{
  *a1 = off_1004428E8;
  v2 = *(a1 + 104);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    if (*(a1 + 64) != 1)
    {
LABEL_4:
      if (*(a1 + 48) != 1)
      {
        goto LABEL_5;
      }

LABEL_9:
      *(a1 + 48) = 0;
      v3 = *(a1 + 8);
      if (!v3)
      {
        return a1;
      }

      goto LABEL_10;
    }
  }

  else if (*(a1 + 64) != 1)
  {
    goto LABEL_4;
  }

  *(a1 + 64) = 0;
  if (*(a1 + 48) == 1)
  {
    goto LABEL_9;
  }

LABEL_5:
  v3 = *(a1 + 8);
  if (!v3)
  {
    return a1;
  }

LABEL_10:
  v5 = *(a1 + 16);
  v6 = v3;
  if (v5 != v3)
  {
    do
    {
      v7 = *(v5 - 2);
      if (v7)
      {
        if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v7->__on_zero_shared)(v7);
          std::__shared_weak_count::__release_weak(v7);
        }
      }

      v5 -= 80;
    }

    while (v5 != v3);
    v6 = *(a1 + 8);
  }

  *(a1 + 16) = v3;
  operator delete(v6);
  return a1;
}

uint64_t sub_1001E9A6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = sub_1001E9B08(a1, a2, a3, a4, a5, a6, a7);
  v9 = *(a1 + 8);
  v10 = *(a1 + 16) - v9;
  if (v10)
  {
    v11 = v10 >> 4;
    v12 = 0xCCCCCCCCCCCCCCCDLL * v11;
    v13 = 0xCCCCCCCCCCCCCCCDLL * v11 > 1;
    if (0xCCCCCCCCCCCCCCCDLL * v11 <= 1)
    {
      v14 = 1;
    }

    else
    {
      v14 = 0xCCCCCCCCCCCCCCCDLL * v11;
    }

    if (!v13)
    {
      v15 = 0;
LABEL_10:
      v18 = v14 - v15;
      v19 = (v9 + 80 * v15 + 49);
      do
      {
        *v19 = 1;
        v19 += 80;
        --v18;
      }

      while (v18);
      return result;
    }

    v15 = v14 & 0xFFFFFFFFFFFFFFFELL;
    v16 = (v9 + 129);
    v17 = v14 & 0xFFFFFFFFFFFFFFFELL;
    do
    {
      *(v16 - 80) = 1;
      *v16 = 1;
      v16 += 160;
      v17 -= 2;
    }

    while (v17);
    if (v12 != v15)
    {
      goto LABEL_10;
    }
  }

  return result;
}

uint64_t sub_1001E9B08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a1 != a2)
  {
    sub_1001EC44C((a1 + 8), *(a2 + 8), *(a2 + 16), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 16) - *(a2 + 8)) >> 4), a5, a6, a7);
  }

  sub_100217150((a1 + 32), (a2 + 32));
  if (*(a1 + 48) == 1)
  {
    if (*(a2 + 48))
    {
      *(a1 + 56) = *(a2 + 56);
      v9 = *(a2 + 64);
      if (*(a1 + 64) != 1)
      {
        goto LABEL_14;
      }
    }

    else
    {
      *(a1 + 48) = 0;
      v9 = *(a2 + 64);
      if (*(a1 + 64) != 1)
      {
        goto LABEL_14;
      }
    }

LABEL_10:
    if (v9)
    {
      *(a1 + 72) = *(a2 + 72);
      *(a1 + 80) = *(a2 + 80);
      v11 = *(a2 + 96);
      v10 = *(a2 + 104);
      if (!v10)
      {
        goto LABEL_18;
      }
    }

    else
    {
      *(a1 + 64) = 0;
      *(a1 + 80) = *(a2 + 80);
      v11 = *(a2 + 96);
      v10 = *(a2 + 104);
      if (!v10)
      {
        goto LABEL_18;
      }
    }

    goto LABEL_17;
  }

  if (*(a2 + 48))
  {
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 48) = 1;
  }

  v9 = *(a2 + 64);
  if (*(a1 + 64) == 1)
  {
    goto LABEL_10;
  }

LABEL_14:
  if (v9)
  {
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 64) = 1;
  }

  *(a1 + 80) = *(a2 + 80);
  v11 = *(a2 + 96);
  v10 = *(a2 + 104);
  if (v10)
  {
LABEL_17:
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

LABEL_18:
  v12 = *(a1 + 104);
  *(a1 + 96) = v11;
  *(a1 + 104) = v10;
  if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  *(a1 + 112) = *(a2 + 112);
  return a1;
}

void sub_1001E9C90(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i -= 80)
  {
    v4 = *(i - 16);
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }
  }

  *(a1 + 16) = v2;
  *(a1 + 120) = 0;
}

long double sub_1001E9D30(uint64_t a1)
{
  v1 = (a1 + 8);
  if (*(a1 + 8) == *(a1 + 16))
  {
    return 1.0;
  }

  v2 = sub_10021569C(a1 + 32);
  sub_100215554(v1, v5);
  v3 = sub_10021569C(v5);
  return 1.0 / (exp(-(v2 - v3)) + 1.0);
}

void sub_1001E9DBC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  if (sub_100214EC0((a1 + 8), (a1 + 32), -INFINITY))
  {
    sub_1002100C8(a2, a4, &__p);
    v7[10] = 0;
    operator new();
  }

  sub_1000474A4(v8, "");
  sub_1001ECC2C(v9, "BEFORE WIFI: ");
  sub_100383AA4(v9, v7, v8);
  sub_10003F5D0(v7);
}

void sub_1001EA1DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a17 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001EA274(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 120);
  *(a1 + 120) = 0;
  v4 = *(a2 + 24);
  if (!v4)
  {
    sub_1000DB498();
  }

  (*(*v4 + 48))(__p);
  v6 = *(a1 + 8);
  if (*(a1 + 16) != v6)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      sub_10021569C(v6 + v7);
      v9 = *(__p[0] + v8);
      sub_10021715C((v6 + v7), v9);
      if (v9 != -INFINITY)
      {
        *(a1 + 120) = 1;
      }

      sub_10021569C(v6 + v7);
      ++v8;
      v6 = *(a1 + 8);
      v7 += 80;
    }

    while (v8 < 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - v6) >> 4));
  }

  v10 = *(a2 + 56);
  if (!v10)
  {
    sub_1000DB498();
  }

  v13 = (*(*v10 + 48))(v10);
  sub_10021715C((a1 + 32), v13);
  sub_10021569C(a1 + 32);
  if (v3 != *(a1 + 120))
  {
    if (qword_10045B050 != -1)
    {
      sub_100385AE0();
    }

    v11 = qword_10045B058;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
    {
      v12 = *(a1 + 120);
      *buf = 67109120;
      *&buf[4] = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "After receiveWifi, hasFeasibleParticles changed to '%d'", buf, 8u);
    }
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_1001EA6FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (!a16)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(a16);
  _Unwind_Resume(exception_object);
}

void sub_1001EA818(double *a1, uint64_t a2)
{
  v2 = (a1 + 1);
  if (*(a1 + 1) != *(a1 + 2))
  {
    v5 = sub_10017226C(a2);
    v6 = sub_1002330A0(v2);
    if (!v5 || v6)
    {
      v7 = *(a1 + 12);
      if (!v7)
      {
        sub_1000474A4(buf, "");
        sub_1001EDAE0(v51, "Params not populated");
        sub_100383AA4(v51, v46, buf);
        sub_1000BA6B0(v46);
      }

      if (sub_100251408(v7))
      {
        sub_1000BFDB0(v2, a2, &v48);
        v8 = (*(*v48 + 40))(v48);
        v9 = *v8;
        v10 = *(v8 + 8);
        v46[7] = *v8;
        v47 = v10;
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v11 = (*(*v9 + 80))(v9);
        if (v11 > 100.0)
        {
          if (qword_10045B050 != -1)
          {
            sub_100385AE0();
          }

          v12 = qword_10045B058;
          if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
          {
            *buf = 134217984;
            *&buf[4] = v11;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "WARNING: GPS fusion accuracy threshold seems too high - low quality GPS measurements could get fused! Threshold value = %f", buf, 0xCu);
          }
        }

        v13 = sqrt(*(a2 + 136) * *(a2 + 136) + *(a2 + 128) * *(a2 + 128)) * 0.408163265;
        if ((~*(a2 + 192) & 0x1800) != 0)
        {
          v13 = 0.0;
        }

        v14 = v13 <= 0.0;
        if (v13 > 0.0)
        {
          v15 = *(a2 + 128);
        }

        else
        {
          v13 = *(a2 + 96);
          v15 = v13 * 1.73241161;
        }

        if (v14)
        {
          v16 = *(a2 + 96) * 1.73241161;
        }

        else
        {
          v16 = *(a2 + 136);
        }

        if (v13 < v11 || !v5)
        {
          v18 = (*(*v9 + 96))(v9);
          sub_1002D3DA4(v46, v18);
          v19 = sub_1000BF8B8(v46, v15);
          v20 = sub_1000BF8B8(v46, v16);
          v21 = (*(*v9 + 104))(v9);
          sub_1002D3DA4(v45, v21);
          sub_1000BF8B8(v45, *(a2 + 144));
          v22 = *(a1 + 12);
          if (v5)
          {
            v23 = sub_1002513B0(v22);
          }

          else
          {
            v23 = sub_100251460(v22);
          }

          v24 = v23;
          if (v19 <= v24)
          {
            v25 = v24;
          }

          else
          {
            v25 = v19;
          }

          if (v20 <= v24)
          {
            v20 = v24;
          }

          v26 = log(v25);
          v27 = log(v20);
          v28 = sub_1002513DC(*(a1 + 12));
          v29 = (-1.83787707 - v26 - v27 - v28 * v28) * 0.5;
          __p = 0u;
          v43 = 0u;
          v44 = 1065353216;
          v30 = *(a1 + 1);
          if (*(a1 + 2) != v30)
          {
            v31 = 0;
            v32 = 0;
            do
            {
              v41 = *(v30 + v31 + 56);
              *buf = &v41;
              v33 = sub_1001EDB9C(&__p, &v41, &unk_1003DB4B0, buf);
              *buf = *v2 + v31;
              sub_10003ABD8((v33 + 3), buf);
              ++v32;
              v30 = *(a1 + 1);
              v31 += 80;
            }

            while (v32 < 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 2) - v30) >> 4));
            if (v43)
            {
              v34 = (*(**(v43 + 16) + 56))(*(v43 + 16));
              sub_10011B8B8(v40, v34);
              sub_1000B9540(v40);
            }
          }

          sub_10021715C(a1 + 4, v29);
          v35 = v43;
          if (v43)
          {
            do
            {
              v38 = *v35;
              v39 = v35[3];
              if (v39)
              {
                v35[4] = v39;
                operator delete(v39);
              }

              operator delete(v35);
              v35 = v38;
            }

            while (v38);
          }

          v36 = __p;
          *&__p = 0;
          if (v36)
          {
            operator delete(v36);
          }

          sub_1002D3E48(v45);
          sub_1002D3E48(v46);
          v10 = v47;
        }

        if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v10->__on_zero_shared)(v10);
          std::__shared_weak_count::__release_weak(v10);
        }

        v37 = v49;
        if (v49)
        {
          if (!atomic_fetch_add(&v49->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v37->__on_zero_shared)(v37);
            std::__shared_weak_count::__release_weak(v37);
          }
        }
      }
    }
  }
}

void sub_1001EAF4C(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x85F]) < 0)
  {
    operator delete(STACK[0x848]);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1001EAFF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_10011B04C(va);
  sub_1001EDB30(&STACK[0x7E0]);
  sub_1002D3E48(&STACK[0x810]);
  sub_1002D3E48(&STACK[0x848]);
  sub_10002BB1C(&STACK[0x880]);
  sub_10002BB1C(v11 - 256);
  _Unwind_Resume(a1);
}

void sub_1001EB020(_Unwind_Exception *a1)
{
  sub_1001EDB30(&STACK[0x7E0]);
  sub_1002D3E48(&STACK[0x810]);
  sub_1002D3E48(&STACK[0x848]);
  sub_10002BB1C(&STACK[0x880]);
  sub_10002BB1C(v1 - 256);
  _Unwind_Resume(a1);
}

BOOL sub_1001EB084(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (v5 == v6)
  {
    v8 = -INFINITY;
    v7 = INFINITY;
    v10 = *(a2 + 24);
  }

  else
  {
    v7 = INFINITY;
    v8 = -INFINITY;
    do
    {
      v9 = sub_1002AE860(v5, a2, a3);
      a3.n128_f64[0] = sub_10021715C(v5, v9);
      if (v8 < v9)
      {
        v8 = v9;
      }

      if (v9 < v7)
      {
        v7 = v9;
      }

      v5 += 10;
    }

    while (v5 != v6);
    v10 = *(a2 + 24);
  }

  sub_10021715C((a1 + 32), v10);
  sub_10021569C(a1 + 32);
  return v7 < v8;
}

void sub_1001EB1C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001EB1E0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  result = sub_10025B310(a2);
  if ((result & 1) == 0)
  {
    v9 = *(a1 + 8);
    for (i = *(a1 + 16); v9 != i; v9 += 80)
    {
      result = (*(*a3 + 24))(a3, v9, a2, a4);
    }
  }

  return result;
}

uint64_t sub_1001EB278(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 8);
  for (i = *(result + 16); v3 != i; v3 += 80)
  {
    result = (*(*a2 + 16))(a2, v3, a3);
  }

  return result;
}

BOOL sub_1001EB2EC(uint64_t a1, uint64_t a2, float *a3)
{
  if (*(a1 + 120) != 1)
  {
    return 0;
  }

  *(a1 + 124) = 0;
  v6 = *(a2 + 16) - *(a1 + 112);
  v21 = (a3[7] * v6) / 1000000000.0;
  if (v21 > 0.0)
  {
    sub_1000474A4(v23, "");
    sub_1001EDF78(&v25, "Deweight amount is not negative or zero:  ");
    sub_1000DE42C(&v21, &v26);
    sub_1000E661C(v23, &v25, 2);
    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v26.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_18:
        if ((v24 & 0x80000000) == 0)
        {
          goto LABEL_19;
        }

LABEL_22:
        operator delete(v23[0]);
LABEL_19:
        sub_10003F5D0(&__p);
      }
    }

    else if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    operator delete(v25.__r_.__value_.__l.__data_);
    if ((v24 & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_22;
  }

  v7 = sub_100214E74((a1 + 8), 0);
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (v8 != v9)
  {
    v10 = v6 & ~(v6 >> 63);
    v11 = 0.0;
    while (1)
    {
      v14 = (*(*a3 + 16))(a3, v8, a2, v10);
      if (sub_10021569C(v8) == -INFINITY || (v14 & 1) != 0)
      {
        goto LABEL_7;
      }

      if ((v14 & 0x100) != 0)
      {
        ++*(a1 + 124);
        if (*(v8 + 72) / 1000000000.0 <= a3[6])
        {
          goto LABEL_7;
        }

        v18 = sub_10021569C(v8);
        v19 = exp(v18 - v7);
        v20 = sub_10021569C(v8);
        v13 = exp(v20 + v21 - v7);
        v17 = v21;
        v16 = v19 - v13;
      }

      else
      {
        v15 = sub_10021569C(v8);
        v16 = exp(v15 - v7);
        v17 = -INFINITY;
      }

      sub_10021715C(v8, v17);
      v11 = v11 + v16;
LABEL_7:
      v8 += 80;
      if (v8 == v9)
      {
        goto LABEL_15;
      }
    }
  }

  v11 = 0.0;
LABEL_15:
  *(a1 + 112) = *(a2 + 16);
  return sub_1001EB60C(a1, v7, v11);
}

void sub_1001EB5B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1001EB60C(uint64_t a1, double a2, double a3)
{
  if (a3 != 0.0)
  {
    v4 = *(a1 + 8);
    v5 = *(a1 + 16);
    if (v4 == v5)
    {
      v8 = 0.0;
    }

    else
    {
      v8 = 0.0;
      do
      {
        v9 = sub_10021569C(v4);
        v8 = v8 + exp(v9 - a2);
        v4 += 80;
      }

      while (v4 != v5);
      if (v8 != 0.0 && v8 + a3 != 0.0)
      {
        v10 = log(v8 / (v8 + a3));
        sub_10021715C((a1 + 32), v10);
        sub_10021569C(a1 + 32);
        return a3 != 0.0;
      }
    }

    if (qword_10045B050 != -1)
    {
      sub_100385B08();
    }

    v11 = qword_10045B058;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
    {
      *buf = 134218240;
      v14 = a3;
      v15 = 2048;
      v16 = v8;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "WARNING: Cannot modify off map weight after deweighting particles due to walls/bounds.  removedOnMapLikelihood: %f, onMapLikelihoodAfterRemoval: %f", buf, 0x16u);
    }
  }

  return a3 != 0.0;
}

void sub_1001EB7C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001EB804(__n128 *a1, uint64_t a2, uint64_t a3)
{
  if (a1[7].n128_u8[8] == 1)
  {
    v4 = &a1->n128_i64[1];
    if (a1->n128_u64[1] == a1[1].n128_u64[0])
    {
      sub_100385A9C();
      sub_10003F5D0(&__p);
    }

    v5 = (*(a1->n128_u64[0] + 16))(a1, a2, a3);
    sub_100215554(v4, v11);
    v6 = log(1.0 - v5);
    v7 = a1->n128_u64[1];
    v8 = a1[1].n128_u64[0];
    if (v7 != v8)
    {
      v9 = v6;
      do
      {
        sub_10021715C(v7, v9);
        v7 += 10;
      }

      while (v7 != v8);
    }

    v10 = log(v5);
    sub_10021715C(v11, v10);
    sub_1002170B0(v11, a1[2].n128_f64, v13);
    sub_100217150(a1 + 2, v13);
    sub_10021569C(&a1[2]);
  }
}

void sub_1001EB9B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1001EB9F8(uint64_t a1, void *a2)
{
  v4 = sub_100214E74((a1 + 8), 0);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  for (i = 0.0; v5 != v6; v5 += 80)
  {
    v8 = (*(**(v5 + 56) + 64))(*(v5 + 56));
    if (!sub_1001EDFC8(a2, v8))
    {
      v9 = sub_10021569C(v5);
      i = i + exp(v9 - v4);
      sub_10021715C(v5, -INFINITY);
    }
  }

  return sub_1001EB60C(a1, v4, i);
}

BOOL sub_1001EBAE0(uint64_t a1)
{
  result = sub_100214F08((a1 + 8), (a1 + 32));
  *(a1 + 120) &= result;
  return result;
}

void sub_1001EBB18(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, double **a4@<X3>, uint64_t a6@<X8>)
{
  if (qword_10045B050 != -1)
  {
    sub_100385B08();
  }

  v10 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = a2;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "resampleTo, numParticles=%zu", &buf, 0xCu);
  }

  v11 = (a1 + 8);
  v37 = *(a1 + 8);
  v38 = a2;
  v36 = *(a1 + 16);
  sub_1001EBFB4(v37, v36);
  v13 = *(a1 + 16);
  v14 = *(a1 + 8);
  v15 = v13 - v14;
  v16 = 0xCCCCCCCCCCCCCCCDLL * (v13 - v14);
  if (v13 != v14)
  {
    v17 = 0;
    if (v16 <= 1)
    {
      v18 = 1;
    }

    else
    {
      v18 = 0xCCCCCCCCCCCCCCCDLL * ((v13 - *v11) >> 4);
    }

    do
    {
      v19 = (*(*a3 + 88))(a3, v16);
      sub_1001EE0EC(*v11 + v17, *v11 + v17 + 80 * v19, v20, v21, v22, v23, v24);
      v17 += 80;
      --v16;
      --v18;
    }

    while (v18);
    v14 = *(a1 + 8);
    v13 = *(a1 + 16);
    v15 = v13 - v14;
    v16 = 0xCCCCCCCCCCCCCCCDLL * (v13 - v14);
  }

  if (v15 < 1)
  {
    v29 = 0;
    v25 = 0;
  }

  else
  {
    v25 = v16;
    while (1)
    {
      v26 = operator new(80 * v25, &std::nothrow);
      if (v26)
      {
        break;
      }

      v27 = v25 >> 1;
      v28 = v25 > 1;
      v25 >>= 1;
      if (!v28)
      {
        v29 = 0;
        v25 = v27;
        goto LABEL_18;
      }
    }

    v29 = v26;
  }

LABEL_18:
  sub_1001EE2B0(v14, v13, &buf, v16, v29, v25, v12);
  if (v29)
  {
    operator delete(v29);
  }

  if (*a4)
  {
    if (qword_10045B050 != -1)
    {
      sub_100385AE0();
    }

    v30 = qword_10045B058;
    v31 = os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG);
    v32 = *a4;
    if (v31)
    {
      sub_1001EC0F8(a1, v32, (a1 + 32), &buf);
      if (v41 >= 0)
      {
        p_buf = &buf;
      }

      else
      {
        p_buf = buf;
      }

      *v42 = 136315138;
      v43 = p_buf;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "Best particle is %s the reference injection weight, offmap weight", v42, 0xCu);
      if (SHIBYTE(v41) < 0)
      {
        operator delete(buf);
      }

      v32 = *a4;
    }
  }

  else
  {
    v32 = 0;
  }

  sub_10021532C((a1 + 8), v32, a1 + 32);
  v34 = *a4;
  (*(*a3 + 32))(a3);
  sub_100215EB0((a1 + 8), v34, v38, &buf);
  if (buf)
  {
    sub_1001EBFB4(*(a1 + 8), *(a1 + 16));
    if ((v36 - v37) < *(a1 + 16) - *(a1 + 8))
    {
      if (qword_10045B050 != -1)
      {
        sub_100385AE0();
      }

      v35 = qword_10045B058;
      if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
      {
        *v42 = 0;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "New particles were injected. If you were not isFeasible before, you certainly are now.", v42, 2u);
      }

      *(a1 + 120) = 1;
    }

    *a6 = 0;
    if (buf == 1)
    {
      *(a6 + 8) = 0;
      *(a6 + 16) = 0;
      *(a6 + 24) = 0;
      if (v41 != *(&buf + 1))
      {
        if (((v41 - *(&buf + 1)) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_10000FC84();
      }

      *a6 = 1;
      if (*(&buf + 1))
      {
        v41 = *(&buf + 1);
        operator delete(*(&buf + 1));
      }
    }
  }

  else
  {
    *a6 = 0;
  }
}

void sub_1001EBF64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, void *__p, uint64_t a17)
{
  if (a15 == 1)
  {
    if (__p)
    {
      operator delete(__p);
      _Unwind_Resume(exception_object);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1001EBFB4(double *a1, double *a2)
{
  if (a1 != a2)
  {
    v3 = a1;
    do
    {
      sub_10021716C(v3);
      v3 += 10;
    }

    while (v3 != a2);
  }
}

void sub_1001EC0B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001EC0F8(uint64_t a1@<X0>, double *a2@<X1>, double *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a1 + 16);
  v6 = *(a1 + 8);
  if (v6 == v5)
  {
    *(a4 + 23) = 3;
    *a4 = 4271950;
    return;
  }

  for (i = v6 + 10; i != v5; i += 10)
  {
    v10 = sub_10021716C(v6);
    if (v10 < sub_10021716C(i))
    {
      v6 = i;
    }
  }

  v11 = sub_10021716C(v6);
  v12 = sub_10021716C(a2);
  v13 = exp(v11 - v12);
  v14 = sub_10021716C(a3);
  __p[0] = *&v13;
  sub_1000C2398(v30, "%1%");
  v15 = sub_1001ECA10(v30, __p);
  sub_1000C15C8(v15, &v26);
  sub_1000C1894(v30);
  v16 = std::string::append(&v26, "x, ");
  v17 = *&v16->__r_.__value_.__l.__data_;
  v27.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v27.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  v29 = exp(v11 - v14);
  sub_1000C2398(v30, "%1%");
  v18 = sub_1001ECA10(v30, &v29);
  sub_1000C15C8(v18, __p);
  sub_1000C1894(v30);
  if ((v25 & 0x80u) == 0)
  {
    v19 = __p;
  }

  else
  {
    v19 = __p[0];
  }

  if ((v25 & 0x80u) == 0)
  {
    v20 = v25;
  }

  else
  {
    v20 = __p[1];
  }

  v21 = std::string::append(&v27, v19, v20);
  v22 = *&v21->__r_.__value_.__l.__data_;
  v28.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
  *&v28.__r_.__value_.__l.__data_ = v22;
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
  v23 = std::string::append(&v28, "x");
  *a4 = *v23;
  v23->__r_.__value_.__l.__size_ = 0;
  v23->__r_.__value_.__r.__words[2] = 0;
  v23->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
    if ((v25 & 0x80000000) == 0)
    {
LABEL_14:
      if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_20;
    }
  }

  else if ((v25 & 0x80000000) == 0)
  {
    goto LABEL_14;
  }

  operator delete(__p[0]);
  if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_15:
    if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_21:
    operator delete(v26.__r_.__value_.__l.__data_);
    return;
  }

LABEL_20:
  operator delete(v27.__r_.__value_.__l.__data_);
  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_21;
  }
}

void sub_1001EC384(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, char a35)
{
  if (a33 < 0)
  {
    operator delete(__p);
    if (a14 < 0)
    {
LABEL_5:
      operator delete(a9);
      if (a26 < 0)
      {
LABEL_8:
        operator delete(a21);
        if ((a20 & 0x80000000) == 0)
        {
          goto LABEL_12;
        }

LABEL_11:
        operator delete(a15);
LABEL_12:
        _Unwind_Resume(a1);
      }

LABEL_10:
      if ((a20 & 0x80000000) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  else if (a14 < 0)
  {
    goto LABEL_5;
  }

  if (a26 < 0)
  {
    goto LABEL_8;
  }

  goto LABEL_10;
}

void sub_1001EC438(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  sub_1000C1894(va);
  _Unwind_Resume(a1);
}

void sub_1001EC44C(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a2;
  v10 = a1[2];
  v11 = *a1;
  if (0xCCCCCCCCCCCCCCCDLL * ((v10 - *a1) >> 4) < a4)
  {
    if (v11)
    {
      v12 = a4;
      v13 = a1[1];
      v14 = *a1;
      if (v13 != v11)
      {
        do
        {
          v15 = *(v13 - 16);
          if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v15->__on_zero_shared)(v15);
            std::__shared_weak_count::__release_weak(v15);
          }

          v13 -= 80;
        }

        while (v13 != v11);
        v14 = *a1;
      }

      a1[1] = v11;
      operator delete(v14);
      v10 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      a4 = v12;
    }

    if (a4 <= 0x333333333333333)
    {
      v28 = 0xCCCCCCCCCCCCCCCDLL * (v10 >> 4);
      v29 = 2 * v28;
      if (2 * v28 <= a4)
      {
        v29 = a4;
      }

      if (v28 >= 0x199999999999999)
      {
        v30 = 0x333333333333333;
      }

      else
      {
        v30 = v29;
      }

      if (v30 <= 0x333333333333333)
      {
        operator new();
      }
    }

    sub_10000FC84();
  }

  v16 = a1[1];
  if (0xCCCCCCCCCCCCCCCDLL * ((v16 - v11) >> 4) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        sub_100217150(v11, v8);
        v23 = *(v8 + 16);
        v24 = *(v8 + 32);
        *(v11 + 48) = *(v8 + 48);
        *(v11 + 16) = v23;
        *(v11 + 32) = v24;
        v26 = *(v8 + 56);
        v25 = *(v8 + 64);
        if (v25)
        {
          atomic_fetch_add_explicit((v25 + 8), 1uLL, memory_order_relaxed);
        }

        v27 = *(v11 + 64);
        *(v11 + 56) = v26;
        *(v11 + 64) = v25;
        if (v27 && !atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v27->__on_zero_shared)(v27);
          std::__shared_weak_count::__release_weak(v27);
        }

        *(v11 + 72) = *(v8 + 72);
        v8 += 80;
        v11 += 80;
      }

      while (v8 != a3);
      v16 = a1[1];
    }

    for (; v16 != v11; v16 -= 80)
    {
      v36 = *(v16 - 16);
      if (v36 && !atomic_fetch_add(&v36->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v36->__on_zero_shared)(v36);
        std::__shared_weak_count::__release_weak(v36);
      }
    }

    a1[1] = v11;
  }

  else
  {
    v17 = a2 + v16 - v11;
    if (v16 != v11)
    {
      do
      {
        sub_100217150(v11, v8);
        v18 = *(v8 + 16);
        v19 = *(v8 + 32);
        *(v11 + 48) = *(v8 + 48);
        *(v11 + 16) = v18;
        *(v11 + 32) = v19;
        v21 = *(v8 + 56);
        v20 = *(v8 + 64);
        if (v20)
        {
          atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
        }

        v22 = *(v11 + 64);
        *(v11 + 56) = v21;
        *(v11 + 64) = v20;
        if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v22->__on_zero_shared)(v22);
          std::__shared_weak_count::__release_weak(v22);
        }

        *(v11 + 72) = *(v8 + 72);
        v8 += 80;
        v11 += 80;
      }

      while (v8 != v17);
      v16 = a1[1];
    }

    v37 = v16;
    v31 = v16;
    if (v17 != a3)
    {
      v31 = v16;
      do
      {
        sub_100217150(v31, v17);
        v33 = *(v17 + 16);
        v34 = *(v17 + 32);
        *(v32 + 48) = *(v17 + 48);
        *(v32 + 16) = v33;
        *(v32 + 32) = v34;
        *(v32 + 56) = *(v17 + 56);
        v35 = *(v17 + 64);
        *(v32 + 64) = v35;
        if (v35)
        {
          atomic_fetch_add_explicit((v35 + 8), 1uLL, memory_order_relaxed);
        }

        *(v32 + 72) = *(v17 + 72);
        v17 += 80;
        v31 = v37 + 5;
        v37 += 5;
      }

      while (v17 != a3);
    }

    a1[1] = v31;
  }
}

void sub_1001EC8BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_100182230(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_1001EC8D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_100182230(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

uint64_t sub_1001EC8EC(uint64_t a1)
{
  v2 = a1 + 32;
  v3 = *(a1 + 56);
  if (v3 != v2)
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = *(a1 + 24);
    if (v4 != a1)
    {
      goto LABEL_5;
    }

LABEL_9:
    (*(*v4 + 32))(v4);
    return a1;
  }

  (*(*v3 + 32))(v3);
  v4 = *(a1 + 24);
  if (v4 == a1)
  {
    goto LABEL_9;
  }

LABEL_5:
  if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  return a1;
}

uint64_t sub_1001ECA10(uint64_t a1, uint64_t a2)
{
  v17[0] = a2;
  v17[1] = nullsub_143;
  v17[2] = sub_1001ECB98;
  if (*(a1 + 60) == 1)
  {
    v4 = *a1;
    v3 = *(a1 + 8);
    if (v3 != *a1)
    {
      v5 = 0;
      v6 = 0;
      do
      {
        if (!*(a1 + 32) || (v7 = *(v4 + v5), (v7 & 0x80000000) != 0) || ((*(*(a1 + 24) + ((v7 >> 3) & 0x1FFFFFF8)) >> v7) & 1) == 0)
        {
          std::string::resize((v4 + v5 + 8), 0, 0);
          v4 = *a1;
          v3 = *(a1 + 8);
        }

        ++v6;
        v5 += 120;
      }

      while (v6 < 0xEEEEEEEEEEEEEEEFLL * ((v3 - v4) >> 3));
    }

    *(a1 + 52) = 0;
    *(a1 + 60) = 0;
    if (*(a1 + 32))
    {
      v8 = *(a1 + 56);
      if (v8 >= 1)
      {
        v9 = 0;
        v10 = *(a1 + 24);
        do
        {
          if (((*(v10 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
          {
            break;
          }

          *(a1 + 52) = ++v9;
        }

        while (v8 != v9);
      }
    }
  }

  sub_1000C5364(a1, v17);
  v11 = *(a1 + 52);
  v12 = v11 + 1;
  *(a1 + 52) = v11 + 1;
  if (*(a1 + 32))
  {
    v13 = *(a1 + 56);
    if (v12 < v13)
    {
      v14 = *(a1 + 24);
      v15 = v11 + 2;
      do
      {
        if (((*(v14 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
        {
          break;
        }

        ++v12;
        *(a1 + 52) = v15++;
      }

      while (v13 != v12);
    }
  }

  return a1;
}

uint64_t sub_1001ECBA0(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

std::string *sub_1001ECC2C@<X0>(std::string *__return_ptr a1@<X8>, std::string::value_type *__s@<X0>)
{
  *&a1->__r_.__value_.__l.__data_ = 0uLL;
  a1->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a1, __s);
}

void sub_1001ECC60(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_1001ECCF8(uint64_t a1, uint64_t a2)
{
  *a2 = off_100442970;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1001ECD40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN14ParticleFilter15wifiMeasurementERK25PriorProbabilitiesContextRK17WifiMapLikelihoodRK30WifiLikelihoodMeasurementEventE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN14ParticleFilter15wifiMeasurementERK25PriorProbabilitiesContextRK17WifiMapLikelihoodRK30WifiLikelihoodMeasurementEventE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN14ParticleFilter15wifiMeasurementERK25PriorProbabilitiesContextRK17WifiMapLikelihoodRK30WifiLikelihoodMeasurementEventE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN14ParticleFilter15wifiMeasurementERK25PriorProbabilitiesContextRK17WifiMapLikelihoodRK30WifiLikelihoodMeasurementEventE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

__n128 sub_1001ECE34(uint64_t a1, uint64_t a2)
{
  *a2 = off_100442A00;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1001ECE7C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN14ParticleFilter15wifiMeasurementERK25PriorProbabilitiesContextRK17WifiMapLikelihoodRK30WifiLikelihoodMeasurementEventE3$_1")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN14ParticleFilter15wifiMeasurementERK25PriorProbabilitiesContextRK17WifiMapLikelihoodRK30WifiLikelihoodMeasurementEventE3$_1" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN14ParticleFilter15wifiMeasurementERK25PriorProbabilitiesContextRK17WifiMapLikelihoodRK30WifiLikelihoodMeasurementEventE3$_1"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN14ParticleFilter15wifiMeasurementERK25PriorProbabilitiesContextRK17WifiMapLikelihoodRK30WifiLikelihoodMeasurementEventE3$_1" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_1001ECF68(std::string *a2@<X8>)
{
  sub_10003BEA8(("PN10purpleslam20tag_unexpected_valueE" & 0x7FFFFFFFFFFFFFFFLL), &v11);
  if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v3.__i_ = &v11;
  }

  else
  {
    v3.__i_ = v11.__r_.__value_.__r.__words[0];
  }

  std::string::insert(&v11, v3, 91);
  v12 = v11;
  memset(&v11, 0, sizeof(v11));
  v4 = std::string::append(&v12, "] = ");
  v5 = *&v4->__r_.__value_.__l.__data_;
  v13.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v13.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  sub_1001ED1AC(&__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v8 = std::string::append(&v13, p_p, size);
  v9 = *&v8->__r_.__value_.__l.__data_;
  v14.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v14.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  std::string::push_back(&v14, 10);
  *a2 = v14;
  memset(&v14, 0, sizeof(v14));
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v13.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_12:
      if ((SHIBYTE(v12.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_17;
    }
  }

  else if ((SHIBYTE(v13.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_12;
  }

  operator delete(v13.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v12.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_13:
    if ((SHIBYTE(v11.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_18:
    operator delete(v11.__r_.__value_.__l.__data_);
    return;
  }

LABEL_17:
  operator delete(v12.__r_.__value_.__l.__data_);
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_18;
  }
}

void sub_1001ED0E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v33 - 41) < 0)
  {
    operator delete(*(v33 - 64));
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a33 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  if ((a33 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a26 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  operator delete(a28);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a20 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(a21);
  if ((a20 & 0x80000000) == 0)
  {
LABEL_6:
    _Unwind_Resume(exception_object);
  }

LABEL_11:
  operator delete(a15);
  _Unwind_Resume(exception_object);
}

void sub_1001ED1AC(std::string *a1@<X8>)
{
  *(&v14.__r_.__value_.__s + 23) = 1;
  LOWORD(v14.__r_.__value_.__l.__data_) = 40;
  sub_1001ED438();
  if ((v13 & 0x80u) == 0)
  {
    v2 = v12;
  }

  else
  {
    v2 = v12[0];
  }

  if ((v13 & 0x80u) == 0)
  {
    v3 = v13;
  }

  else
  {
    v3 = v12[1];
  }

  v4 = std::string::append(&v14, v2, v3);
  v5 = *&v4->__r_.__value_.__l.__data_;
  v15.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v15.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  std::string::push_back(&v15, 44);
  v16 = v15;
  memset(&v15, 0, sizeof(v15));
  sub_1001ED438();
  if ((v11 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v11 & 0x80u) == 0)
  {
    v7 = v11;
  }

  else
  {
    v7 = __p[1];
  }

  v8 = std::string::append(&v16, v6, v7);
  v9 = *&v8->__r_.__value_.__l.__data_;
  v17.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v17.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  std::string::push_back(&v17, 41);
  *a1 = v17;
  memset(&v17, 0, sizeof(v17));
  if (v11 < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_15:
      if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_21;
    }
  }

  else if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

  operator delete(v16.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_16:
    if ((v13 & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_22;
  }

LABEL_21:
  operator delete(v15.__r_.__value_.__l.__data_);
  if ((v13 & 0x80000000) == 0)
  {
LABEL_17:
    if ((SHIBYTE(v14.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_23:
    operator delete(v14.__r_.__value_.__l.__data_);
    return;
  }

LABEL_22:
  operator delete(v12[0]);
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_23;
  }
}

void sub_1001ED34C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v33 - 41) < 0)
  {
    operator delete(*(v33 - 64));
    if ((a15 & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v33 - 73) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((a15 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  if ((*(v33 - 73) & 0x80000000) == 0)
  {
LABEL_4:
    if ((a33 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(*(v33 - 96));
  if ((a33 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(a28);
  if ((a21 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a27 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(a16);
  if ((a27 & 0x80000000) == 0)
  {
LABEL_7:
    _Unwind_Resume(exception_object);
  }

LABEL_13:
  operator delete(a22);
  _Unwind_Resume(exception_object);
}

uint64_t sub_1001ED438()
{
  sub_10003BFA8(&v3);
  std::ostream::operator<<();
  std::stringbuf::str();
  if (v6 < 0)
  {
    operator delete(v5[7].__locale_);
  }

  std::locale::~locale(v5);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_1001ED588(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10003C1C4(va);
  _Unwind_Resume(a1);
}

void sub_1001ED828(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1001ED9E4(va);
  _Unwind_Resume(a1);
}

void sub_1001ED83C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_10003B870(va);
  sub_1001ED9E4(va1);
  _Unwind_Resume(a1);
}

void sub_1001ED958(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    sub_10038301C(v1);
  }

  __cxa_rethrow();
}

uint64_t sub_1001ED99C(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

uint64_t sub_1001ED9E4(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
    if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 24))(v1);
      return v2;
    }
  }

  return result;
}

std::string *sub_1001EDA90@<X0>(std::string *__return_ptr a1@<X8>, std::string::value_type *__s@<X0>)
{
  *&a1->__r_.__value_.__l.__data_ = 0uLL;
  a1->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a1, __s);
}

void sub_1001EDAC4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_1001EDAE0@<X0>(std::string *__return_ptr a1@<X8>, std::string::value_type *__s@<X0>)
{
  *&a1->__r_.__value_.__l.__data_ = 0uLL;
  a1->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a1, __s);
}

void sub_1001EDB14(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001EDB30(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v5 = *v2;
      v6 = v2[3];
      if (v6)
      {
        v2[4] = v6;
        operator delete(v6);
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return a1;
}

void *sub_1001EDB9C(void *a1, unint64_t *a2, uint64_t a3, uint64_t **a4)
{
  v4 = *a2;
  v5 = HIDWORD(*a2);
  v6 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFF) + 8) ^ v5);
  v7 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_23;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
    if (v7 >= *&v8)
    {
      v10 = v7 % *&v8;
    }
  }

  else
  {
    v10 = v7 & (*&v8 - 1);
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v9.u32[0] < 2uLL)
  {
    while (1)
    {
      v14 = v12[1];
      if (v14 == v7)
      {
        if (v12[2] == v4)
        {
          return v12;
        }
      }

      else if ((v14 & (*&v8 - 1)) != v10)
      {
        goto LABEL_23;
      }

      v12 = *v12;
      if (!v12)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v7)
    {
      break;
    }

    if (v13 >= *&v8)
    {
      v13 %= *&v8;
    }

    if (v13 != v10)
    {
      goto LABEL_23;
    }

LABEL_12:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_23;
    }
  }

  if (v12[2] != v4)
  {
    goto LABEL_12;
  }

  return v12;
}

void sub_1001EDEFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1001EDF10(va);
  _Unwind_Resume(a1);
}

void **sub_1001EDF10(void **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    if (*(v1 + 16) == 1)
    {
      v4 = v2[3];
      if (v4)
      {
        v2[4] = v4;
        v5 = v2;
        operator delete(v4);
        v2 = v5;
      }
    }

    operator delete(v2);
    return v3;
  }

  return v1;
}

std::string *sub_1001EDF78@<X0>(std::string *__return_ptr a1@<X8>, std::string::value_type *__s@<X0>)
{
  *&a1->__r_.__value_.__l.__data_ = 0uLL;
  a1->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a1, __s);
}

void sub_1001EDFAC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

const void ***sub_1001EDFC8(void *a1, uint64_t ***a2)
{
  v4 = sub_1001183C0(&v15, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v4;
    if (v4 >= *&v5)
    {
      v8 = v4 % *&v5;
    }
  }

  else
  {
    v8 = (*&v5 - 1) & v4;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9)
  {
    return 0;
  }

  v10 = *v9;
  if (*v9)
  {
    if (v7.u32[0] < 2uLL)
    {
      v11 = *&v5 - 1;
      while (1)
      {
        v12 = v10[1];
        if (v6 == v12)
        {
          if (sub_1001182C8(v10 + 2, a2))
          {
            return v10;
          }
        }

        else if ((v12 & v11) != v8)
        {
          return 0;
        }

        v10 = *v10;
        if (!v10)
        {
          return v10;
        }
      }
    }

    do
    {
      v13 = v10[1];
      if (v6 == v13)
      {
        if (sub_1001182C8(v10 + 2, a2))
        {
          return v10;
        }
      }

      else
      {
        if (v13 >= *&v5)
        {
          v13 %= *&v5;
        }

        if (v13 != v8)
        {
          return 0;
        }
      }

      v10 = *v10;
    }

    while (v10);
  }

  return v10;
}

void sub_1001EE0EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_100217150(&v18, a1);
  v9 = *(a1 + 32);
  v19 = *(a1 + 16);
  v20 = v9;
  v21 = *(a1 + 48);
  v22 = *(a1 + 56);
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v23 = *(a1 + 72);
  sub_100217150(a1, a2);
  v10 = *(a2 + 16);
  v11 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v10;
  *(a1 + 32) = v11;
  v12 = *(a2 + 56);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  v13 = *(a1 + 64);
  *(a1 + 56) = v12;
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  *(a1 + 72) = *(a2 + 72);
  sub_100217150(a2, &v18);
  v14 = v20;
  *(a2 + 16) = v19;
  *(a2 + 32) = v14;
  *(a2 + 48) = v21;
  v15 = v22;
  v22 = 0uLL;
  v16 = *(a2 + 64);
  *(a2 + 56) = v15;
  if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
  }

  v17 = *(&v22 + 1);
  *(a2 + 72) = v23;
  if (v17)
  {
    if (!atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
    }
  }
}

void sub_1001EE2B0(__n128 *a1, __n128 *a2, uint64_t a3, unint64_t a4, uint64_t a5, int64_t a6, uint64_t a7)
{
  if (a4 >= 2)
  {
    if (a4 == 2)
    {
      v8 = &a2[-5];
      v9 = sub_10021569C(&a2[-5]);
      if (v9 < sub_10021569C(a1))
      {

        sub_1001EE0EC(a1, v8, v10, v11, v12, v13, v14);
      }
    }

    else if (a4 <= 0)
    {

      sub_1001EE53C(a1, a2);
    }

    else
    {
      v16 = a4 >> 1;
      v17 = &a1[5 * (a4 >> 1)];
      if (a4 <= a6)
      {
        sub_1001EE7C4(a1, &a1[5 * (a4 >> 1)], a3, a4 >> 1, a5, a6, a7);
        v25 = a4 - v16;
        v26 = a5 + 80 * v16;
        sub_1001EE7C4(v17, a2, a3, v25, v26, v27, v28);
        sub_1001EEA50(a5, v26, v26, a5 + 80 * a4, a1, a3, v29);
        if (a5)
        {
          v30 = 0;
          v31 = (a5 + 64);
          do
          {
            v32 = *v31;
            if (*v31 && !atomic_fetch_add(&v32->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v32->__on_zero_shared)(v32);
              std::__shared_weak_count::__release_weak(v32);
            }

            ++v30;
            v31 += 10;
          }

          while (v30 < a4);
        }
      }

      else
      {
        sub_1001EE2B0(a1, &a1[5 * (a4 >> 1)], a3, a4 >> 1, a5, a6);
        v22 = a4 - v16;
        sub_1001EE2B0(v17, a2, a3, v22, a5, a6);

        sub_1001EEDC8(a1, v17, a2, a3, v16, v22, a5, a6);
      }
    }
  }
}

void sub_1001EE528(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1001EED10(va);
  _Unwind_Resume(a1);
}

void sub_1001EE53C(__n128 *a1, __n128 *a2)
{
  if (a1 != a2)
  {
    v4 = &a1[5];
    if (&a1[5] != a2)
    {
      v5 = 0;
      v6 = a1;
      do
      {
        v7 = v4;
        v8 = sub_10021569C(v4);
        if (v8 < sub_10021569C(v6))
        {
          sub_100217150(&v23, v7);
          v9 = *(v6 + 112);
          v24 = *(v6 + 96);
          v25 = v9;
          v26 = *(v6 + 128);
          v27 = *(v6 + 136);
          *(v6 + 136) = 0;
          *(v6 + 144) = 0;
          v10 = v5;
          v28 = *(v6 + 152);
          while (1)
          {
            v11 = a1 + v10;
            sub_100217150((a1 + v10 + 80), (a1 + v10));
            v12 = *(&a1[2] + v10);
            *(v11 + 6) = *(v11 + 1);
            *(v11 + 7) = v12;
            *(v11 + 64) = *(v11 + 24);
            v13 = *(&a1[3] + v10 + 8);
            *(v11 + 7) = 0;
            *(v11 + 8) = 0;
            v14 = *(a1[9].n128_u64 + v10);
            *(v11 + 136) = v13;
            if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v14->__on_zero_shared)(v14);
              std::__shared_weak_count::__release_weak(v14);
            }

            v15 = a1 + v10;
            *(&a1[9].n128_u64[1] + v10) = *(&a1[4].n128_u64[1] + v10);
            if (!v10)
            {
              break;
            }

            v16 = sub_10021569C(&v23);
            v10 -= 80;
            if (v16 >= sub_10021569C((v15 - 80)))
            {
              v17 = (a1 + v10 + 80);
              goto LABEL_14;
            }
          }

          v17 = a1;
LABEL_14:
          sub_100217150(v17, &v23);
          v18 = v24;
          v19 = v25;
          *(v15 + 24) = v26;
          *(v15 + 1) = v18;
          *(v15 + 2) = v19;
          v20 = v27;
          v27 = 0uLL;
          *(v15 + 7) = v20;
          v21 = v17[4].n128_u64[0];
          v17[4].n128_u64[0] = *(&v20 + 1);
          if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v21->__on_zero_shared)(v21);
            std::__shared_weak_count::__release_weak(v21);
            v22 = *(&v27 + 1);
            v17[4].n128_u64[1] = v28;
            if (v22)
            {
LABEL_17:
              if (!atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v22->__on_zero_shared)(v22);
                std::__shared_weak_count::__release_weak(v22);
              }
            }
          }

          else
          {
            v22 = *(&v27 + 1);
            v17[4].n128_u64[1] = v28;
            if (v22)
            {
              goto LABEL_17;
            }
          }
        }

        v4 = &v7[5];
        v5 += 80;
        v6 = v7;
      }

      while (&v7[5] != a2);
    }
  }
}

void sub_1001EE7C4(uint64_t result, __n128 *a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a4)
  {
    if (a4 == 2)
    {
      v12 = a2 - 5;
      v13 = sub_10021569C(&a2[-5]);
      if (v13 >= sub_10021569C(result))
      {
        sub_100217150(a5, result);
        v25 = *(result + 16);
        v26 = *(result + 32);
        *(a5 + 48) = *(result + 48);
        *(a5 + 16) = v25;
        *(a5 + 32) = v26;
        *(a5 + 56) = *(result + 56);
        *(result + 56) = 0;
        *(result + 64) = 0;
        *(a5 + 72) = *(result + 72);
        sub_100217150((a5 + 80), v12);
        v27 = a2[-4];
        v28 = a2[-3];
        *(a5 + 128) = a2[-2].n128_u16[0];
        *(a5 + 96) = v27;
        *(a5 + 112) = v28;
        *(a5 + 136) = *(a2 - 24);
        a2[-2].n128_u64[1] = 0;
        a2[-1].n128_u64[0] = 0;
        v18 = &a2[-1].n128_u64[1];
      }

      else
      {
        sub_100217150(a5, v12);
        v14 = a2[-4];
        v15 = a2[-3];
        *(a5 + 48) = a2[-2].n128_u16[0];
        *(a5 + 16) = v14;
        *(a5 + 32) = v15;
        *(a5 + 56) = *(a2 - 24);
        a2[-2].n128_u64[1] = 0;
        a2[-1].n128_u64[0] = 0;
        *(a5 + 72) = a2[-1].n128_u64[1];
        sub_100217150((a5 + 80), result);
        v16 = *(result + 16);
        v17 = *(result + 32);
        *(a5 + 128) = *(result + 48);
        *(a5 + 96) = v16;
        *(a5 + 112) = v17;
        *(a5 + 136) = *(result + 56);
        *(result + 56) = 0;
        *(result + 64) = 0;
        v18 = (result + 72);
      }

      *(a5 + 152) = *v18;
    }

    else if (a4 == 1)
    {
      sub_100217150(a5, result);
      v9 = *(result + 16);
      v10 = *(result + 32);
      *(a5 + 48) = *(result + 48);
      *(a5 + 16) = v9;
      *(a5 + 32) = v10;
      *(a5 + 56) = *(result + 56);
      *(result + 56) = 0;
      *(result + 64) = 0;
      *(a5 + 72) = *(result + 72);
    }

    else if (a4 > 8)
    {
      v19 = a4 >> 1;
      v20 = 80 * (a4 >> 1);
      sub_1001EE2B0(result, v20 + result, a3, v19, a5, v19);
      sub_1001EE2B0(v20 + result, a2, a3, a4 - v19, a5 + v20, a4 - v19);

      sub_1001EF4FC(result, v20 + result, v20 + result, a2, a5, a3, v24);
    }

    else
    {

      sub_1001EF1EC(result, a2, a5, a3, a5, a6, a7);
    }
  }
}

void sub_1001EEA3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1001EED10(va);
  _Unwind_Resume(a1);
}

void sub_1001EEA50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a1 == a2)
  {
LABEL_14:
    while (a3 != a4)
    {
      sub_100217150(a5, a3);
      v21 = *(a3 + 16);
      v22 = *(a3 + 32);
      *(a5 + 48) = *(a3 + 48);
      *(a5 + 16) = v21;
      *(a5 + 32) = v22;
      v23 = *(a3 + 56);
      *(a3 + 56) = 0;
      *(a3 + 64) = 0;
      v24 = *(a5 + 64);
      *(a5 + 56) = v23;
      if (v24)
      {
        if (!atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v24->__on_zero_shared)(v24);
          std::__shared_weak_count::__release_weak(v24);
        }
      }

      *(a5 + 72) = *(a3 + 72);
      a3 += 80;
      a5 += 80;
    }
  }

  else
  {
    v11 = a1;
    while (a3 != a4)
    {
      v12 = sub_10021569C(a3);
      if (v12 >= sub_10021569C(v11))
      {
        sub_100217150(a5, v11);
        v17 = *(v11 + 16);
        v18 = *(v11 + 32);
        *(a5 + 48) = *(v11 + 48);
        *(a5 + 16) = v17;
        *(a5 + 32) = v18;
        v19 = *(v11 + 56);
        *(v11 + 56) = 0;
        *(v11 + 64) = 0;
        v20 = *(a5 + 64);
        *(a5 + 56) = v19;
        if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v20->__on_zero_shared)(v20);
          std::__shared_weak_count::__release_weak(v20);
        }

        *(a5 + 72) = *(v11 + 72);
        v11 += 80;
        a5 += 80;
        if (v11 == a2)
        {
          goto LABEL_14;
        }
      }

      else
      {
        sub_100217150(a5, a3);
        v13 = *(a3 + 16);
        v14 = *(a3 + 32);
        *(a5 + 48) = *(a3 + 48);
        *(a5 + 16) = v13;
        *(a5 + 32) = v14;
        v15 = *(a3 + 56);
        *(a3 + 56) = 0;
        *(a3 + 64) = 0;
        v16 = *(a5 + 64);
        *(a5 + 56) = v15;
        if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v16->__on_zero_shared)(v16);
          std::__shared_weak_count::__release_weak(v16);
        }

        *(a5 + 72) = *(a3 + 72);
        a3 += 80;
        a5 += 80;
        if (v11 == a2)
        {
          goto LABEL_14;
        }
      }
    }

    for (; v11 != a2; a5 += 80)
    {
      sub_100217150(a5, v11);
      v25 = *(v11 + 16);
      v26 = *(v11 + 32);
      *(a5 + 48) = *(v11 + 48);
      *(a5 + 16) = v25;
      *(a5 + 32) = v26;
      v27 = *(v11 + 56);
      *(v11 + 56) = 0;
      *(v11 + 64) = 0;
      v28 = *(a5 + 64);
      *(a5 + 56) = v27;
      if (v28 && !atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v28->__on_zero_shared)(v28);
        std::__shared_weak_count::__release_weak(v28);
      }

      *(a5 + 72) = *(v11 + 72);
      v11 += 80;
    }
  }
}

uint64_t *sub_1001EED10(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = a1[1];
    if (*v3)
    {
      v4 = 0;
      v5 = (v2 + 64);
      do
      {
        v6 = *v5;
        if (*v5 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v6->__on_zero_shared)(v6);
          std::__shared_weak_count::__release_weak(v6);
        }

        ++v4;
        v5 += 10;
      }

      while (v4 < *v3);
    }
  }

  return a1;
}

void sub_1001EEDC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int64_t a5, int64_t a6, uint64_t a7, int64_t a8)
{
  v59 = a6;
  if (!a6)
  {
    return;
  }

  while (v59 > a8 && a5 > a8)
  {
    if (!a5)
    {
      return;
    }

    v13 = 0;
    v14 = -a5;
    while (1)
    {
      v15 = a1 + v13;
      v16 = sub_10021569C(a2);
      if (v16 < sub_10021569C(a1 + v13))
      {
        break;
      }

      v13 += 80;
      if (__CFADD__(v14++, 1))
      {
        return;
      }
    }

    v23 = -v14;
    v24 = v59;
    v55 = a8;
    v56 = a3;
    if (-v14 >= v59)
    {
      if (v14 == -1)
      {

        sub_1001EE0EC(a1 + v13, a2, v17, v18, v19, v20, v21);
        return;
      }

      v30 = v23 / 2;
      v27 = a1 + 80 * (v23 / 2) + v13;
      v32 = a3;
      v26 = a2;
      if (a2 != v32)
      {
        v52 = v30;
        v33 = 0xCCCCCCCCCCCCCCCDLL * ((v56 - a2) >> 4);
        v26 = a2;
        do
        {
          v34 = v26 + 80 * (v33 >> 1);
          v35 = sub_10021569C(v34);
          v36 = sub_10021569C(v27);
          if (v35 >= v36)
          {
            v33 >>= 1;
          }

          else
          {
            v33 += ~(v33 >> 1);
          }

          if (v35 < v36)
          {
            v26 = v34 + 80;
          }
        }

        while (v33);
        v24 = v59;
        v30 = v52;
      }

      v25 = 0xCCCCCCCCCCCCCCCDLL * ((v26 - a2) >> 4);
      v31 = v26;
      if (a2 != v27)
      {
LABEL_31:
        v31 = v27;
        if (a2 != v26)
        {
          v53 = v30;
          v54 = v25;
          sub_1001EE0EC(v27, a2, v17, v18, v30, v25, v21);
          v31 = v27 + 80;
          for (i = a2 + 80; i != v26; i += 80)
          {
            if (v31 == a2)
            {
              a2 = i;
            }

            sub_1001EE0EC(v31, i, v37, v38, v39, v40, v41);
            v31 += 80;
          }

          if (v31 != a2)
          {
            v43 = v31;
            v44 = a2;
            while (1)
            {
              sub_1001EE0EC(v43, v44, v37, v38, v39, v40, v41);
              v44 += 80;
              v45 = v43 + 80 == a2;
              if (v44 == v26)
              {
                if (v43 + 80 == a2)
                {
                  break;
                }

                v44 = a2 + 80;
                v43 += 160;
                while (1)
                {
                  sub_1001EE0EC(v43 - 80, a2, v37, v38, v39, v40, v41);
                  v45 = v43 == a2;
                  if (v44 != v26)
                  {
                    break;
                  }

                  v46 = v43 == a2;
                  v43 += 80;
                  if (v46)
                  {
                    goto LABEL_48;
                  }
                }
              }

              else
              {
                v43 += 80;
              }

              if (v45)
              {
                a2 = v44;
              }
            }
          }

LABEL_48:
          v24 = v59;
          v30 = v53;
          v25 = v54;
        }
      }
    }

    else
    {
      v25 = v59 / 2;
      v26 = a2 + 80 * (v59 / 2);
      v27 = a2;
      if (a2 - a1 != v13)
      {
        v28 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1 - v13) >> 4);
        v27 = a1 + v13;
        do
        {
          v29 = sub_10021569C(v26);
          if (v29 < sub_10021569C(v27 + 80 * (v28 >> 1)))
          {
            v28 >>= 1;
          }

          else
          {
            v27 += 80 * (v28 >> 1) + 80;
            v28 += ~(v28 >> 1);
          }
        }

        while (v28);
        v24 = v59;
        v25 = v59 / 2;
      }

      v30 = 0xCCCCCCCCCCCCCCCDLL * ((v27 - a1 - v13) >> 4);
      v31 = a2 + 80 * (v59 / 2);
      if (a2 != v27)
      {
        goto LABEL_31;
      }
    }

    a5 = -v14 - v30;
    v47 = v24 - v25;
    if ((v30 + v25) >= (v24 - (v30 + v25) - v14))
    {
      v49 = v30;
      v50 = -v14 - v30;
      v51 = v25;
      sub_1001EEDC8(v31, v26, v56, a4, v50, v24 - v25, a7, v55);
      a2 = v27;
      a8 = v55;
      a5 = v49;
      a3 = v31;
      v59 = v51;
      a1 = v15;
      if (!v51)
      {
        return;
      }
    }

    else
    {
      v48 = v27;
      a8 = v55;
      sub_1001EEDC8(a1 + v13, v48, v31, a4, v30, v25, a7, v55);
      a2 = v26;
      a3 = v56;
      v59 = v47;
      a1 = v31;
      if (!v47)
      {
        return;
      }
    }
  }

  sub_1001EF71C(a1, a2, a3, a4, a5, v59, a7);
}

void sub_1001EF1EC(__n128 *a1, __n128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a1 != a2)
  {
    v9 = a1;
    sub_100217150(a3, a1);
    v10 = v9[1];
    v11 = v9[2];
    *(a3 + 48) = v9[3].n128_u16[0];
    *(a3 + 16) = v10;
    *(a3 + 32) = v11;
    *(a3 + 56) = *(v9 + 56);
    v9[3].n128_u64[1] = 0;
    v9[4].n128_u64[0] = 0;
    *(a3 + 72) = v9[4].n128_u64[1];
    v32 = 1;
    v12 = &v9[5];
    if (&v9[5] != a2)
    {
      v13 = 0;
      v14 = a3;
      do
      {
        while (1)
        {
          v15 = v12;
          v16 = sub_10021569C(v12);
          v17 = v14 + 80;
          if (v16 < sub_10021569C(v14))
          {
            break;
          }

          sub_100217150((v14 + 80), v15);
          v26 = v9[6];
          v27 = v9[7];
          *(v14 + 128) = v9[8].n128_u16[0];
          *(v14 + 96) = v26;
          *(v14 + 112) = v27;
          *(v14 + 136) = *(v9 + 136);
          v9[8].n128_u64[1] = 0;
          v9[9].n128_u64[0] = 0;
          *(v14 + 152) = v9[9].n128_u64[1];
          ++v32;
          v12 = &v15[5];
          v13 += 80;
          v14 += 80;
          v9 = v15;
          if (&v15[5] == a2)
          {
            return;
          }
        }

        sub_100217150((v14 + 80), v14);
        v18 = *(v14 + 32);
        *(v14 + 96) = *(v14 + 16);
        *(v14 + 112) = v18;
        *(v14 + 128) = *(v14 + 48);
        *(v14 + 136) = *(v14 + 56);
        *(v14 + 152) = *(v14 + 72);
        ++v32;
        v19 = a3;
        *(v14 + 56) = 0;
        *(v14 + 64) = 0;
        if (v14 != a3)
        {
          v20 = v13;
          do
          {
            v21 = sub_10021569C(v15);
            if (v21 >= sub_10021569C(a3 + v20 - 80))
            {
              v19 = a3 + v20;
              goto LABEL_17;
            }

            sub_100217150((a3 + v20), (a3 + v20 - 80));
            v22 = a3 + v20;
            v23 = *(a3 + v20 - 48);
            *(v22 + 16) = *(a3 + v20 - 64);
            *(v22 + 32) = v23;
            *(v22 + 48) = *(a3 + v20 - 32);
            v24 = *(a3 + v20 - 24);
            *(v22 - 24) = 0;
            *(v22 - 16) = 0;
            v25 = *(a3 + v20 + 64);
            *(v22 + 56) = v24;
            if (v25 && !atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v25->__on_zero_shared)(v25);
              std::__shared_weak_count::__release_weak(v25);
            }

            *(v22 + 72) = *(v22 - 8);
            v20 -= 80;
          }

          while (v20);
          v19 = a3;
        }

LABEL_17:
        sub_100217150(v19, v15);
        v28 = v9[6];
        v29 = v9[7];
        *(v19 + 48) = v9[8].n128_u16[0];
        *(v19 + 16) = v28;
        *(v19 + 32) = v29;
        v30 = *(&v9[8] + 8);
        v9[8].n128_u64[1] = 0;
        v9[9].n128_u64[0] = 0;
        v31 = *(v19 + 64);
        *(v19 + 56) = v30;
        if (v31)
        {
          if (!atomic_fetch_add(&v31->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v31->__on_zero_shared)(v31);
            std::__shared_weak_count::__release_weak(v31);
          }
        }

        *(v19 + 72) = v9[9].n128_u64[1];
        v12 = &v15[5];
        v13 += 80;
        v14 = v17;
        v9 = v15;
      }

      while (&v15[5] != a2);
    }
  }
}

void sub_1001EF4C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1001EED10(va);
  _Unwind_Resume(a1);
}

void sub_1001EF4D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1001EED10(va);
  _Unwind_Resume(a1);
}

void sub_1001EF4E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1001EED10(va);
  _Unwind_Resume(a1);
}

void sub_1001EF4FC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = 0;
  if (result == a2)
  {
LABEL_2:
    if (a3 != a4)
    {
      v10 = 0;
      do
      {
        v11 = a3 + v10;
        sub_100217150((a5 + v10), (a3 + v10));
        v12 = *(a3 + v10 + 16);
        v13 = *(a3 + v10 + 32);
        *(v14 + 48) = *(a3 + v10 + 48);
        *(v14 + 16) = v12;
        *(v14 + 32) = v13;
        *(v14 + 56) = *(a3 + v10 + 56);
        *(v11 + 56) = 0;
        *(v11 + 64) = 0;
        *(v14 + 72) = *(a3 + v10 + 72);
        ++v27;
        v10 += 80;
      }

      while (a3 + v10 != a4);
    }
  }

  else
  {
    v16 = result;
    while (a3 != a4)
    {
      v19 = sub_10021569C(a3);
      if (v19 >= sub_10021569C(v16))
      {
        sub_100217150(a5, v16);
        v17 = *(v16 + 16);
        v18 = *(v16 + 32);
        *(a5 + 48) = *(v16 + 48);
        *(a5 + 16) = v17;
        *(a5 + 32) = v18;
        *(a5 + 56) = *(v16 + 56);
        *(v16 + 56) = 0;
        *(v16 + 64) = 0;
        *(a5 + 72) = *(v16 + 72);
        ++v27;
        v16 += 80;
        a5 += 80;
        if (v16 == a2)
        {
          goto LABEL_2;
        }
      }

      else
      {
        sub_100217150(a5, a3);
        v20 = *(a3 + 16);
        v21 = *(a3 + 32);
        *(a5 + 48) = *(a3 + 48);
        *(a5 + 16) = v20;
        *(a5 + 32) = v21;
        *(a5 + 56) = *(a3 + 56);
        *(a3 + 56) = 0;
        *(a3 + 64) = 0;
        *(a5 + 72) = *(a3 + 72);
        ++v27;
        a3 += 80;
        a5 += 80;
        if (v16 == a2)
        {
          goto LABEL_2;
        }
      }
    }

    if (v16 != a2)
    {
      v22 = 0;
      do
      {
        v23 = v16 + v22;
        sub_100217150((a5 + v22), (v16 + v22));
        v24 = *(v16 + v22 + 16);
        v25 = *(v16 + v22 + 32);
        *(v26 + 48) = *(v16 + v22 + 48);
        *(v26 + 16) = v24;
        *(v26 + 32) = v25;
        *(v26 + 56) = *(v16 + v22 + 56);
        *(v23 + 56) = 0;
        *(v23 + 64) = 0;
        *(v26 + 72) = *(v16 + v22 + 72);
        ++v27;
        v22 += 80;
      }

      while (v16 + v22 != a2);
    }
  }
}

void sub_1001EF6E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1001EED10(va);
  _Unwind_Resume(a1);
}

void sub_1001EF6F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1001EED10(va);
  _Unwind_Resume(a1);
}

void sub_1001EF708(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1001EED10(va);
  _Unwind_Resume(a1);
}

void sub_1001EF71C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = a7;
  v28 = 0;
  if (a5 > a6)
  {
    v12 = a7;
    if (a2 != a3)
    {
      v13 = 0;
      do
      {
        v14 = a2 + v13;
        sub_100217150((v7 + v13), (a2 + v13));
        v15 = *(a2 + v13 + 16);
        v16 = *(a2 + v13 + 32);
        *(v17 + 48) = *(a2 + v13 + 48);
        *(v17 + 16) = v15;
        *(v17 + 32) = v16;
        *(v17 + 56) = *(a2 + v13 + 56);
        *(v14 + 56) = 0;
        *(v14 + 64) = 0;
        *(v17 + 72) = *(a2 + v13 + 72);
        ++v28;
        v13 += 80;
      }

      while (a2 + v13 != a3);
      v12 = v7 + v13;
    }

    sub_1001EFB94(v12, v12, v7, v7, a2, a2, a1, a1, a3, a3);
    if (!v7)
    {
      return;
    }

LABEL_13:
    if (v28)
    {
      v24 = 0;
      v25 = (v7 + 64);
      do
      {
        v26 = *v25;
        if (*v25)
        {
          if (!atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v26->__on_zero_shared)(v26);
            std::__shared_weak_count::__release_weak(v26);
          }
        }

        ++v24;
        v25 += 10;
      }

      while (v24 < v28);
    }

    return;
  }

  v18 = a7;
  if (a1 != a2)
  {
    v19 = 0;
    do
    {
      v20 = a1 + v19;
      sub_100217150((v7 + v19), (a1 + v19));
      v21 = *(a1 + v19 + 16);
      v22 = *(a1 + v19 + 32);
      *(v23 + 48) = *(a1 + v19 + 48);
      *(v23 + 16) = v21;
      *(v23 + 32) = v22;
      *(v23 + 56) = *(a1 + v19 + 56);
      *(v20 + 56) = 0;
      *(v20 + 64) = 0;
      *(v23 + 72) = *(a1 + v19 + 72);
      ++v28;
      v19 += 80;
    }

    while (a1 + v19 != a2);
    v18 = v7 + v19;
  }

  sub_1001EF970(v7, v18, a2, a3, a1, a4, a7);
  v7 = a7;
  if (a7)
  {
    goto LABEL_13;
  }
}

void sub_1001EF920(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_1001EED10(va);
  _Unwind_Resume(a1);
}

void sub_1001EF934(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_1001EED10(va);
  _Unwind_Resume(a1);
}

void sub_1001EF948(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_1001EED10(va);
  _Unwind_Resume(a1);
}

void sub_1001EF95C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_1001EED10(va);
  _Unwind_Resume(a1);
}

void sub_1001EF970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a1 != a2)
  {
    v11 = a1;
    while (a3 != a4)
    {
      v12 = sub_10021569C(a3);
      if (v12 >= sub_10021569C(v11))
      {
        sub_100217150(a5, v11);
        v17 = *(v11 + 16);
        v18 = *(v11 + 32);
        *(a5 + 48) = *(v11 + 48);
        *(a5 + 16) = v17;
        *(a5 + 32) = v18;
        v19 = *(v11 + 56);
        *(v11 + 56) = 0;
        *(v11 + 64) = 0;
        v20 = *(a5 + 64);
        *(a5 + 56) = v19;
        if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v20->__on_zero_shared)(v20);
          std::__shared_weak_count::__release_weak(v20);
        }

        *(a5 + 72) = *(v11 + 72);
        v11 += 80;
        a5 += 80;
        if (v11 == a2)
        {
          return;
        }
      }

      else
      {
        sub_100217150(a5, a3);
        v13 = *(a3 + 16);
        v14 = *(a3 + 32);
        *(a5 + 48) = *(a3 + 48);
        *(a5 + 16) = v13;
        *(a5 + 32) = v14;
        v15 = *(a3 + 56);
        *(a3 + 56) = 0;
        *(a3 + 64) = 0;
        v16 = *(a5 + 64);
        *(a5 + 56) = v15;
        if (v16)
        {
          if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v16->__on_zero_shared)(v16);
            std::__shared_weak_count::__release_weak(v16);
          }
        }

        *(a5 + 72) = *(a3 + 72);
        a3 += 80;
        a5 += 80;
        if (v11 == a2)
        {
          return;
        }
      }
    }

    do
    {
      sub_100217150(a5, v11);
      v21 = *(v11 + 16);
      v22 = *(v11 + 32);
      *(a5 + 48) = *(v11 + 48);
      *(a5 + 16) = v21;
      *(a5 + 32) = v22;
      v23 = *(v11 + 56);
      *(v11 + 56) = 0;
      *(v11 + 64) = 0;
      v24 = *(a5 + 64);
      *(a5 + 56) = v23;
      if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v24->__on_zero_shared)(v24);
        std::__shared_weak_count::__release_weak(v24);
      }

      *(a5 + 72) = *(v11 + 72);
      v11 += 80;
      a5 += 80;
    }

    while (v11 != a2);
  }
}

void sub_1001EFB94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a2 == a4)
  {
    return;
  }

  v13 = a2;
  v14 = a10 - 80;
  while (a6 != a8)
  {
    v16 = v13 - 80;
    v17 = sub_10021569C(v13 - 80);
    if (v17 >= sub_10021569C(a6 - 80))
    {
      sub_100217150(v14, (v13 - 80));
      v22 = *(v13 - 64);
      v23 = *(v13 - 48);
      *(v14 + 48) = *(v13 - 32);
      *(v14 + 16) = v22;
      *(v14 + 32) = v23;
      v24 = *(v13 - 24);
      *(v13 - 24) = 0;
      *(v13 - 16) = 0;
      v21 = *(v14 + 64);
      *(v14 + 56) = v24;
      if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v15 = v13;
        goto LABEL_14;
      }

      v15 = v13;
    }

    else
    {
      sub_100217150(v14, (a6 - 80));
      v18 = *(a6 - 64);
      v19 = *(a6 - 48);
      *(v14 + 48) = *(a6 - 32);
      *(v14 + 16) = v18;
      *(v14 + 32) = v19;
      v20 = *(a6 - 24);
      *(a6 - 24) = 0;
      *(a6 - 16) = 0;
      v21 = *(v14 + 64);
      *(v14 + 56) = v20;
      if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v15 = a6;
        a6 -= 80;
        v16 = v13;
LABEL_14:
        (v21->__on_zero_shared)(v21);
        std::__shared_weak_count::__release_weak(v21);
        goto LABEL_4;
      }

      v15 = a6;
      a6 -= 80;
      v16 = v13;
    }

LABEL_4:
    *(v14 + 72) = *(v15 - 8);
    v14 -= 80;
    v13 = v16;
    if (v16 == a4)
    {
      return;
    }
  }

  if (a4 != v13)
  {
    v25 = 0;
    do
    {
      v26 = v13 + v25;
      v27 = v14 + v25;
      sub_100217150((v14 + v25), (v13 + v25 - 80));
      v28 = *(v13 + v25 - 64);
      v29 = *(v13 + v25 - 48);
      *(v27 + 48) = *(v13 + v25 - 32);
      *(v27 + 16) = v28;
      *(v27 + 32) = v29;
      v30 = *(v13 + v25 - 24);
      *(v26 - 24) = 0;
      *(v26 - 16) = 0;
      v31 = *(v14 + v25 + 64);
      *(v27 + 56) = v30;
      if (v31 && !atomic_fetch_add(&v31->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v31->__on_zero_shared)(v31);
        std::__shared_weak_count::__release_weak(v31);
      }

      *(v27 + 72) = *(v26 - 8);
      v25 -= 80;
    }

    while (v13 + v25 != a4);
  }
}

void sub_1001EFDC8()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1001EFE38()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_1001EFEA8(uint64_t a1, uint64_t a2)
{
  memset(v4, 0, sizeof(v4));
  __src[2] = 1;
  __src[0] = 10;
  std::__sort<std::__less<char,char> &,char *>();
  sub_1001F0238(v4, (a2 + 32), __src, 0);
}

void sub_1001F01A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void **a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unint64_t a21)
{
  if (a21 >= 0x11)
  {
    if (a19)
    {
      operator delete[]();
    }
  }

  sub_1000D1490(&a16);
  _Unwind_Resume(a1);
}

void sub_1001F0238(uint64_t a1, uint64_t **a2, void *__src, int a4)
{
  v7 = __src[2];
  __n = v7;
  __srca[0] = 0;
  if (v7 < 0x11)
  {
    memcpy(__srca, __src, v7);
    v13 = __n;
    v12[0] = 0;
    if (__n < 0x11)
    {
      memcpy(v12, __srca, __n);
      __dst[2] = v13;
      __dst[0] = 0;
      if (v13 <= 0x10)
      {
        memcpy(__dst, v12, v13);
        v11 = a4;
        sub_1001F1620(a1, a2, __dst);
      }

      operator new[]();
    }

    operator new[]();
  }

  operator new[]();
}

void sub_1001F040C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (a17)
  {
    operator delete[]();
  }

  if (v17 >= 0x11)
  {
    if (a10)
    {
      operator delete[]();
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1001F0464()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  *v19 = 0u;
  v20 = 0u;
  v21 = 1.0;
  v6 = ((v1[1] - *v1) >> 4);
  prime = v6;
  if (v6 == 1)
  {
    prime = 2;
  }

  else
  {
    if ((prime & (v6 - 1)) != 0)
    {
      prime = std::__next_prime(v6);
      v8 = v19[1];
      v9 = prime >= v19[1];
      if (prime > v19[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v8 = 0;
      v9 = 1;
      if (prime)
      {
        goto LABEL_17;
      }
    }

    if (v9)
    {
      goto LABEL_18;
    }

    v10 = vcvtps_u32_f32(*(&v20 + 1) / v21);
    if (v8 < 3 || (v11 = vcnt_s8(v8), v11.i16[0] = vaddlv_u8(v11), v11.u32[0] > 1uLL))
    {
      v10 = std::__next_prime(v10);
    }

    else
    {
      v12 = 1 << -__clz(v10 - 1);
      if (v10 >= 2)
      {
        v10 = v12;
      }
    }

    if (prime <= v10)
    {
      prime = v10;
    }

    if (prime >= v8)
    {
LABEL_18:
      if (*v2 != v2[1])
      {
        sub_1002C699C(*v2, &v26);
        if (SHIBYTE(v28) < 0)
        {
          sub_100003228(__p, v27, *(&v27 + 1));
        }

        else
        {
          *__p = v27;
          v23 = v28;
        }

        sub_10011B8B8(&v24, &v26);
        sub_10011B04C(&v26);
        sub_1001181E4(v25, __p);
      }

      v13 = v19[0];
      v14 = v19[1];
      v19[0] = 0;
      v19[1] = 0;
      v16[0] = v13;
      v16[1] = v14;
      v17 = v20;
      v18 = v21;
      if (*(&v20 + 1))
      {
        v15 = *(v20 + 8);
        if ((v14 & (v14 - 1)) != 0)
        {
          if (v15 >= v14)
          {
            v15 %= v14;
          }
        }

        else
        {
          v15 &= v14 - 1;
        }

        *(v13 + v15) = &v17;
        v20 = 0uLL;
      }

      sub_1001F08E8(v5, v4, v16);
    }
  }

LABEL_17:
  sub_10000FE58(v19, prime);
  goto LABEL_18;
}

void sub_1001F0834(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_10018408C(va);
  sub_10018408C(va1);
  _Unwind_Resume(a1);
}

void sub_1001F0850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_10018408C(va);
  _Unwind_Resume(a1);
}

void sub_1001F0864(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_10011B04C(&STACK[0xF90]);
  sub_10018408C(va);
  _Unwind_Resume(a1);
}

void sub_1001F0898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  sub_1001F15D4(va1);
  sub_10018408C(va);
  _Unwind_Resume(a1);
}

void sub_1001F08D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_10018408C(va);
  _Unwind_Resume(a1);
}

void sub_1001F08E8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  v4 = *a3;
  *a3 = 0;
  *(a1 + 16) = v4;
  *(a1 + 24) = a3[1];
  a3[1] = 0;
  v5 = a3[2];
  *(a1 + 32) = v5;
  v6 = (a1 + 32);
  v7 = a3[3];
  *(a1 + 40) = v7;
  *(a1 + 48) = *(a3 + 8);
  if (v7)
  {
    v8 = *(v5 + 8);
    v9 = *(a1 + 24);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v8 %= v9;
      }
    }

    else
    {
      v8 &= v9 - 1;
    }

    *(v4 + 8 * v8) = v6;
    a3[2] = 0;
    a3[3] = 0;
    *(a1 + 56) = 0;
    v10 = *(a1 + 40);
    *(a1 + 64) = 0;
    *(a1 + 72) = v10 == 1;
    if (v10)
    {
      v11 = *v6;
      if (*v6)
      {
        do
        {
          v12 = *(v11 + 486);
          if ((v12 & 1) == 0)
          {
            if ((v12 & 2) == 0)
            {
              sub_1000474A4(v16, "");
              sub_1001F2B44(&v18, "UID & ID missing from location configuration");
              sub_1000E661C(v16, &v18, 1);
              if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v18.__r_.__value_.__l.__data_);
              }

              if (v17 < 0)
              {
                operator delete(v16[0]);
              }

              sub_10003F5D0(__p);
            }

            std::string::operator=((v11 + 5), (v11 + 8));
            *(v11 + 486) |= 1u;
          }

          v11 = *v11;
        }

        while (v11);
      }

      memset(&v18, 0, sizeof(v18));
      sub_1001F2B94(&v18, *(a1 + 40));
      v13 = *v6;
      if (*v6)
      {
        size = v18.__r_.__value_.__l.__size_;
        do
        {
          if (size >= v18.__r_.__value_.__r.__words[2])
          {
            size = sub_1001F2D08(&v18, (v13 + 4));
          }

          else
          {
            sub_10011B8B8(size, (v13 + 4));
            size += 1920;
          }

          v18.__r_.__value_.__l.__size_ = size;
          v13 = *v13;
        }

        while (v13);
      }

      operator new();
    }
  }

  else
  {
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
  }

  sub_1000474A4(v16, "");
  sub_1001F2AF4(&v18, "Cannot select an empty universe");
  sub_1000E661C(v16, &v18, 1);
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
    if ((v17 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((v17 & 0x80000000) == 0)
  {
    goto LABEL_7;
  }

  operator delete(v16[0]);
LABEL_7:
  sub_1000BC6D8(__p);
}

void sub_1001F0C90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_10002BB1C(v24);
  sub_10018408C(v23);
  sub_10002BB1C(v22);
  _Unwind_Resume(a1);
}

BOOL sub_1001F0D2C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 40) != *(a1 + 40))
  {
    return 0;
  }

  v2 = *(a1 + 32);
  if (!v2)
  {
    return 1;
  }

  while (1)
  {
    v4 = sub_1001EDFC8((a2 + 16), v2 + 2);
    result = v4 != 0;
    if (!v4)
    {
      break;
    }

    v2 = *v2;
    if (!v2)
    {
      return 1;
    }
  }

  return result;
}

void sub_1001F0D98(void *a1@<X0>, void *a4@<X8>)
{
  if (!*a1)
  {
    sub_1001F3380();
  }

  v5 = a1[1];
  *a4 = *a1;
  a4[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }
}

void sub_1001F0E18(std::string *a1@<X8>, uint64_t a2@<X0>)
{
  sub_1001F0EB8(a2, &__p);
  sub_1001D6724(a1, "|", &__p);
  v3 = __p;
  if (__p)
  {
    v4 = v8;
    v5 = __p;
    if (v8 != __p)
    {
      do
      {
        v6 = *(v4 - 1);
        v4 -= 3;
        if (v6 < 0)
        {
          operator delete(*v4);
        }
      }

      while (v4 != v3);
      v5 = __p;
    }

    v8 = v3;
    operator delete(v5);
  }
}

void sub_1001F0EA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000D1490(va);
  _Unwind_Resume(a1);
}

void sub_1001F0EB8(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  for (i = *(a1 + 32); i; i = *i)
  {
    if (*(i + 1015) < 0)
    {
      sub_100003228(__p, i[124], i[125]);
    }

    else
    {
      *__p = *(i + 62);
      v10 = i[126];
    }

    v4 = HIBYTE(v10);
    if (SHIBYTE(v10) < 0)
    {
      v5 = *__p[0];
      if (v5 == 71)
      {
        v6 = a2[1];
        if (v6 < a2[2])
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }
    }

    else
    {
      v5 = LOBYTE(__p[0]);
      if (LOBYTE(__p[0]) == 71)
      {
        v6 = a2[1];
        if (v6 < a2[2])
        {
          goto LABEL_17;
        }

        goto LABEL_18;
      }
    }

    if (v5 != 76)
    {
      v6 = a2[1];
      if (v6 < a2[2])
      {
        if ((SHIBYTE(v10) & 0x80000000) == 0)
        {
LABEL_17:
          v7 = *__p;
          *(v6 + 16) = v10;
          *v6 = v7;
          goto LABEL_20;
        }

LABEL_19:
        sub_100003228(v6, __p[0], __p[1]);
LABEL_20:
        v8 = v6 + 24;
LABEL_21:
        a2[1] = v8;
        v4 = HIBYTE(v10);
        goto LABEL_22;
      }

LABEL_18:
      v8 = sub_1001C3E68(a2, __p);
      goto LABEL_21;
    }

LABEL_22:
    if (v4 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1001F0FDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  *(v14 + 8) = v15;
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_1000D1490(v14);
  _Unwind_Resume(a1);
}

std::string *sub_1001F1028@<X0>(std::string *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  p_size = &result[1].__r_.__value_.__l.__size_;
  while (1)
  {
    p_size = *p_size;
    if (!p_size)
    {
      break;
    }

    v4 = *(a2 + 23);
    if ((v4 & 0x80u) != 0)
    {
      v4 = *(a2 + 8);
    }

    if (v4)
    {
      std::string::push_back(a2, 10);
    }

    v5 = sub_100118234((p_size + 2));
    v6 = *(v5 + 23);
    if (v6 >= 0)
    {
      v7 = v5;
    }

    else
    {
      v7 = *v5;
    }

    if (v6 >= 0)
    {
      v8 = *(v5 + 23);
    }

    else
    {
      v8 = *(v5 + 8);
    }

    result = std::string::append(a2, v7, v8);
  }

  return result;
}

void sub_1001F10AC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001F10C8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 1065353216;
  for (i = *(a1 + 32); i; i = *i)
  {
    v4 = i[3];
    v6 = i[2];
    v7 = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_1001E0994(a2, &v6, &v6);
    v5 = v7;
    if (v7)
    {
      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }
}

void sub_1001F1198(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_100118124(&a9);
  sub_10004D7DC(v9);
  _Unwind_Resume(a1);
}

const void ***sub_1001F11B4(void *a1, uint64_t ***a2, void *a3)
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

void sub_1001F151C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100184820(va);
  _Unwind_Resume(a1);
}

void sub_1001F1530(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100118124(v3);
  sub_100184820(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001F154C(uint64_t a1)
{
  sub_10011B04C(a1 + 16);
  result = a1;
  v3 = *(a1 + 8);
  if (v3)
  {
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

uint64_t sub_1001F15D4(uint64_t a1)
{
  sub_10011B04C(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1001F1620(uint64_t a1, uint64_t **a2, _DWORD *a3)
{
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  v7 = *(a3 + 2);
  v9[2] = v7;
  v9[0] = 0;
  if (v7 < 0x11)
  {
    memcpy(v9, a3, v7);
    v10 = a3[6];
    sub_1001F1B10(&v8, v5, v5 + v6, v9);
  }

  operator new[]();
}

void sub_1001F19C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  if (a2)
  {
    sub_10000D388(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void (***sub_1001F1A70(void (***result)(void, void, void)))(void, void, void)
{
  v1 = *result;
  if (*result)
  {
    if ((v1 & 1) == 0)
    {
      v2 = *v1;
      if (v2)
      {
        v3 = result;
        v2(result + 1, result + 1, 2);
        result = v3;
      }
    }

    *result = 0;
  }

  return result;
}

void (***sub_1001F1AC0(void (***result)(void, void, void)))(void, void, void)
{
  v1 = *result;
  if (*result)
  {
    if ((v1 & 1) == 0)
    {
      v2 = *v1;
      if (v2)
      {
        v3 = result;
        v2(result + 1, result + 1, 2);
        result = v3;
      }
    }

    *result = 0;
  }

  return result;
}

void sub_1001F1B10(void *a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v6 = *(a4 + 2);
  __n = v6;
  __src[0] = 0;
  if (v6 < 0x11)
  {
    memcpy(__src, a4, v6);
    v7 = a4[6];
    v10 = v7;
    v12 = __n;
    v11[0] = 0;
    if (__n < 0x11)
    {
      memcpy(v11, __src, __n);
      v13 = v7;
      *a1 = 0;
      v15 = v12;
      v14[0] = 0;
      if (v12 < 0x11)
      {
        memcpy(v14, v11, v12);
        v16 = v7;
        v18 = v15;
        v17[0] = 0;
        if (v15 < 0x11)
        {
          memcpy(v17, v14, v15);
          v19 = v7;
          v20[2] = v18;
          v20[0] = 0;
          if (v18 < 0x11)
          {
            memcpy(v20, v17, v18);
            v21 = v7;
            sub_1001F2460(off_100442B28, v20, a1 + 1);
          }

          operator new[]();
        }

        operator new[]();
      }

      operator new[]();
    }

    operator new[]();
  }

  operator new[]();
}

void sub_1001F1E50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27)
{
  if (a21)
  {
    operator delete[]();
  }

  if (v29 >= 0x11 && a17)
  {
    operator delete[]();
  }

  if (v28 >= 0x11 && a13)
  {
    operator delete[]();
  }

  if (v27 >= 0x11)
  {
    if (a9)
    {
      operator delete[]();
    }
  }

  _Unwind_Resume(exception_object);
}

void (***sub_1001F1EFC(void (***result)(void, void, void)))(void, void, void)
{
  v1 = *result;
  if (*result)
  {
    if ((v1 & 1) == 0)
    {
      v2 = *v1;
      if (v2)
      {
        v3 = result;
        v2(result + 1, result + 1, 2);
        result = v3;
      }
    }

    *result = 0;
  }

  return result;
}

void *sub_1001F1F4C(void *a1, _WORD *a2, int a3)
{
  if (a3 != 4)
  {
    return sub_1001F1F74(a1, a2, a3);
  }

  a2[4] = 0;
  return a1;
}

void *sub_1001F1F74(void *result, _WORD *a2, int a3)
{
  if (a3 <= 1)
  {
    if (!a3)
    {
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_10;
  }

  if (a3 == 2)
  {
    result = *a2;
    if (*a2)
    {
      if (result[2] >= 0x11uLL && *result)
      {
        operator delete[]();
      }

      operator delete();
    }

    goto LABEL_9;
  }

  if (a3 != 3)
  {
LABEL_10:
    a2[4] = 0;
    return result;
  }

  if ((*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL) != ("N5boost9algorithm6detail13token_finderFINS1_10is_any_ofFIcEEEE" & 0x7FFFFFFFFFFFFFFFLL))
  {
    v4 = result;
    v5 = strcmp((*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL), ("N5boost9algorithm6detail13token_finderFINS1_10is_any_ofFIcEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v4;
    if (v5)
    {
LABEL_9:
      *a2 = 0;
      return result;
    }
  }

  *a2 = *result;
  return result;
}

char *sub_1001F2154(const void **__src, char *a2, char *a3)
{
  v6 = __src[2];
  v40 = v6;
  v39[0] = 0;
  if (v6 >= 0x11)
  {
    operator new[]();
  }

  memcpy(v39, __src, v6);
  if (a3 != a2)
  {
    if (v40 > 0x10)
    {
      while (1)
      {
        v14 = *a2;
        v15 = v39[0];
        v16 = v40;
        do
        {
          v17 = v16 >> 1;
          v18 = &v15[v16 >> 1];
          v20 = *v18;
          v19 = v18 + 1;
          v16 += ~(v16 >> 1);
          if (v20 < v14)
          {
            v15 = v19;
          }

          else
          {
            v16 = v17;
          }
        }

        while (v16);
        if (v15 != (v39[0] + v40) && *v15 <= v14)
        {
          break;
        }

        if (++a2 == a3)
        {
LABEL_27:
          a2 = a3;
          break;
        }
      }
    }

    else
    {
      if (!v40)
      {
        return a3;
      }

      while (1)
      {
        v7 = *a2;
        v8 = v39;
        v9 = v40;
        do
        {
          v10 = v9 >> 1;
          v11 = v8 + (v9 >> 1);
          v13 = *v11;
          v12 = v11 + 1;
          v9 += ~(v9 >> 1);
          if (v13 < v7)
          {
            v8 = v12;
          }

          else
          {
            v9 = v10;
          }
        }

        while (v9);
        if (v8 != (v39 + v40) && *v8 <= v7)
        {
          break;
        }

        if (++a2 == a3)
        {
          goto LABEL_27;
        }
      }
    }
  }

  if (v40 >= 0x11 && v39[0])
  {
    operator delete[]();
  }

  if (a2 == a3)
  {
    return a3;
  }

  if (!*(__src + 6))
  {
    v21 = __src[2];
    if (v21 > 0x10)
    {
      v30 = a2;
      do
      {
        v31 = *v30;
        v32 = *__src;
        v33 = __src[2];
        do
        {
          v34 = v33 >> 1;
          v35 = &v32[v33 >> 1];
          v37 = *v35;
          v36 = v35 + 1;
          v33 += ~(v33 >> 1);
          if (v37 < v31)
          {
            v32 = v36;
          }

          else
          {
            v33 = v34;
          }
        }

        while (v33);
        if (v32 == &v21[*__src])
        {
          break;
        }

        if (*v32 > v31)
        {
          break;
        }

        ++v30;
      }

      while (v30 != a3);
    }

    else if (v21)
    {
      v22 = a2;
      do
      {
        v23 = *v22;
        v24 = __src;
        v25 = __src[2];
        do
        {
          v26 = v25 >> 1;
          v27 = v24 + (v25 >> 1);
          v29 = *v27;
          v28 = (v27 + 1);
          v25 += ~(v25 >> 1);
          if (v29 < v23)
          {
            v24 = v28;
          }

          else
          {
            v25 = v26;
          }
        }

        while (v25);
        if (v24 == &v21[__src])
        {
          break;
        }

        if (*v24 > v23)
        {
          break;
        }

        ++v22;
      }

      while (v22 != a3);
    }
  }

  return a2;
}

void sub_1001F2460(uint64_t a1, void *a2, void *a3)
{
  v4 = a2[2];
  __src[2] = v4;
  __src[0] = 0;
  if (v4 < 0x11)
  {
    memcpy(__src, a2, v4);
    v6 = *(a2 + 6);
    operator new();
  }

  operator new[]();
}

void *sub_1001F2600(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v17 = 0;
  v5 = *a2;
  if (*a2)
  {
    v17 = *a2;
    if (v5)
    {
      v18 = *(a2 + 8);
      v19 = *(a2 + 24);
    }

    else
    {
      v6 = a2;
      (*v5)(a2 + 8, &v18, 0);
      a2 = v6;
    }
  }

  v7 = *(a2 + 48);
  v20 = *(a2 + 32);
  v21 = v7;
  v22 = *(a2 + 64);
  v11 = 0;
  v8 = *a3;
  if (*a3)
  {
    v11 = *a3;
    if (v8)
    {
      v12 = *(a3 + 8);
      v13 = *(a3 + 24);
    }

    else
    {
      (*v8)(a3 + 8, &v12, 0);
    }
  }

  v9 = *(a3 + 48);
  v14 = *(a3 + 32);
  v15 = v9;
  v16 = *(a3 + 64);
  sub_1001F27D0(a1, &v17, &v11);
  if (v11)
  {
    if ((v11 & 1) == 0 && *v11)
    {
      (*v11)(&v12, &v12, 2);
    }

    v11 = 0;
  }

  if (v17 && (v17 & 1) == 0 && *v17)
  {
    (*v17)(&v18, &v18, 2);
  }

  return a1;
}

void sub_1001F2780(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  if (a2)
  {
    sub_10000D388(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001F27B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void (**)(void, void, void));
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  sub_1001F1AC0(va);
  sub_1001F1AC0(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_1001F27D0(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v26 = result;
  v27 = 0;
  while (!*a3)
  {
    if ((*a2 == 0) | *(a2 + 64) & 1)
    {
      return result;
    }

LABEL_13:
    v10 = *(a2 + 32);
    v9 = *(a2 + 40);
    v11 = v9 - v10;
    if ((v9 - v10) >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_10000D39C();
    }

    if (v11 > 0x16)
    {
      operator new();
    }

    HIBYTE(v25) = v9 - v10;
    if (v9 != v10)
    {
      memmove(&__dst, v10, v9 - v10);
    }

    *(&__dst + v11) = 0;
    v13 = *(v5 + 8);
    v12 = *(v5 + 16);
    if (v13 >= v12)
    {
      v15 = *v5;
      v16 = v13 - *v5;
      v17 = 0xAAAAAAAAAAAAAAABLL * (v16 >> 3) + 1;
      if (v17 > 0xAAAAAAAAAAAAAAALL)
      {
        sub_10000FC84();
      }

      v18 = 0xAAAAAAAAAAAAAAABLL * ((v12 - v15) >> 3);
      if (2 * v18 > v17)
      {
        v17 = 2 * v18;
      }

      if (v18 >= 0x555555555555555)
      {
        v19 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v19 = v17;
      }

      if (v19)
      {
        if (v19 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        sub_10000D444();
      }

      v20 = 8 * (v16 >> 3);
      *v20 = __dst;
      *(v20 + 16) = v25;
      v14 = v20 + 24;
      v21 = v20 - v16;
      memcpy((v20 - v16), v15, v16);
      *v5 = v21;
      *(v5 + 8) = v14;
      *(v5 + 16) = 0;
      if (v15)
      {
        operator delete(v15);
      }
    }

    else
    {
      *v13 = __dst;
      *(v13 + 16) = v25;
      v14 = v13 + 24;
    }

    *(v5 + 8) = v14;
    v22 = *(a2 + 56);
    if (*a2)
    {
      result = (*((*a2 & 0xFFFFFFFFFFFFFFFELL) + 8))(a2 + 8, *(a2 + 48), v22);
      v22 = *(a2 + 56);
      if (result != v22)
      {
        goto LABEL_2;
      }
    }

    else
    {
      v23 = *(a2 + 56);
      result = v23;
    }

    if (v23 == v22 && *(a2 + 40) == v22)
    {
      *(a2 + 64) = 1;
    }

LABEL_2:
    *(a2 + 32) = *(a2 + 48);
    *(a2 + 40) = result;
    *(a2 + 48) = v23;
  }

  if ((*a2 == 0) | *(a2 + 64) & 1 | *(a3 + 64) & 1)
  {
    if (((((*a2 == 0) | *(a2 + 64)) ^ *(a3 + 64)) & 1) == 0)
    {
      return result;
    }

    goto LABEL_13;
  }

  v6 = *(a2 + 32);
  v7 = *(a3 + 32);
  v8 = *(a2 + 40) - v6;
  if (v8 != *(a3 + 40) - v7)
  {
    goto LABEL_13;
  }

  result = memcmp(v6, v7, v8);
  if (result || *(a2 + 48) != *(a3 + 48) || *(a2 + 56) != *(a3 + 56))
  {
    goto LABEL_13;
  }

  return result;
}

void sub_1001F2AB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void ***a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    sub_10004E764(&a16);
    _Unwind_Resume(a1);
  }

  sub_10004E764(&a16);
  _Unwind_Resume(a1);
}

std::string *sub_1001F2AF4@<X0>(std::string *__return_ptr a1@<X8>, std::string::value_type *__s@<X0>)
{
  *&a1->__r_.__value_.__l.__data_ = 0uLL;
  a1->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a1, __s);
}

void sub_1001F2B28(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_1001F2B44@<X0>(std::string *__return_ptr a1@<X8>, std::string::value_type *__s@<X0>)
{
  *&a1->__r_.__value_.__l.__data_ = 0uLL;
  a1->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a1, __s);
}

void sub_1001F2B78(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001F2B94(uint64_t *a1, unint64_t a2)
{
  if (0xEEEEEEEEEEEEEEEFLL * ((a1[2] - *a1) >> 7) < a2)
  {
    if (a2 < 0x22222222222223)
    {
      operator new();
    }

    sub_10000FC84();
  }
}

void sub_1001F2CE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (v5)
  {
    sub_100385158(v4, v3);
  }

  sub_100120E60(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001F2D08(uint64_t *a1, uint64_t a2)
{
  v2 = 0xEEEEEEEEEEEEEEEFLL * ((a1[1] - *a1) >> 7);
  v3 = v2 + 1;
  if (v2 + 1 > 0x22222222222222)
  {
    sub_10000FC84();
  }

  if (0xDDDDDDDDDDDDDDDELL * ((a1[2] - *a1) >> 7) > v3)
  {
    v3 = 0xDDDDDDDDDDDDDDDELL * ((a1[2] - *a1) >> 7);
  }

  if (0xEEEEEEEEEEEEEEEFLL * ((a1[2] - *a1) >> 7) >= 0x11111111111111)
  {
    v5 = 0x22222222222222;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x22222222222222)
    {
      operator new();
    }

    sub_10000D444();
  }

  v16 = (a1[1] - *a1) >> 7 << 7;
  sub_10011B8B8(v16, a2);
  v6 = 1920 * v2 + 1920;
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
      sub_10011B8B8(v13, v12);
      v12 += 1920;
      v13 += 1920;
      v11 -= 1920;
    }

    while (v12 != v8);
    v14 = v7;
    do
    {
      (**v7)(v7);
      v7 += 240;
      v14 += 240;
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

void sub_1001F2EA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100120E60(va);
  _Unwind_Resume(a1);
}

void sub_1001F2EB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (v5)
  {
    sub_100385158(v4, v3);
  }

  sub_100120E60(va);
  _Unwind_Resume(a1);
}

void sub_1001F2EFC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100442B58;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1001F2F5C(uint64_t a1)
{
  v2 = *(a1 + 272);
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

  v6 = *(a1 + 256);
  *(a1 + 256) = 0;
  if (v6)
  {
    operator delete(v6);
  }

  v7 = *(a1 + 232);
  if (v7)
  {
    do
    {
      v8 = *v7;
      sub_1001F3118(v7 + 2);
      operator delete(v7);
      v7 = v8;
    }

    while (v8);
  }

  v9 = *(a1 + 216);
  *(a1 + 216) = 0;
  if (v9)
  {
    operator delete(v9);
  }

  sub_1001F324C((a1 + 128));
  if (*(a1 + 120))
  {
    operator delete(*(a1 + 104));
  }

  if (*(a1 + 96))
  {
    operator delete(*(a1 + 80));
  }

  v10 = *(a1 + 56);
  if (v10)
  {
    do
    {
      v11 = *v10;
      operator delete(v10);
      v10 = v11;
    }

    while (v11);
  }

  v12 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v12)
  {
    operator delete(v12);
  }

  v13 = *(a1 + 16);
  while (v13)
  {
    v14 = v13;
    v13 = *v13;
    sub_10011B04C((v14 + 4));
    v15 = v14[3];
    if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v15->__on_zero_shared)(v15);
      std::__shared_weak_count::__release_weak(v15);
    }

    operator delete(v14);
  }

  v16 = *a1;
  *a1 = 0;
  if (v16)
  {
    operator delete(v16);
  }

  return a1;
}

void *sub_1001F3118(void *a1)
{
  v2 = a1[10];
  if (v2)
  {
    v3 = a1[11];
    v4 = a1[10];
    if (v3 != v2)
    {
      v5 = v3 - 5;
      v6 = v3 - 5;
      v7 = v3 - 5;
      do
      {
        v8 = *v7;
        v7 -= 5;
        (*v8)(v6);
        v5 -= 5;
        v9 = v6 == v2;
        v6 = v7;
      }

      while (!v9);
      v4 = a1[10];
    }

    a1[11] = v2;
    operator delete(v4);
  }

  v10 = a1[7];
  if (v10)
  {
    a1[8] = v10;
    operator delete(v10);
  }

  v11 = a1[4];
  if (v11)
  {
    do
    {
      v12 = *v11;
      operator delete(v11);
      v11 = v12;
    }

    while (v12);
  }

  v13 = a1[2];
  a1[2] = 0;
  if (v13)
  {
    operator delete(v13);
  }

  v14 = a1[1];
  if (!v14 || atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v14->__on_zero_shared)(v14);
  std::__shared_weak_count::__release_weak(v14);
  return a1;
}

void *sub_1001F324C(void *a1)
{
  v2 = a1[8];
  while (v2)
  {
    v3 = v2;
    v2 = *v2;
    v4 = v3[4];
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v5 = v3;
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      v3 = v5;
    }

    operator delete(v3);
  }

  v6 = a1[6];
  a1[6] = 0;
  if (v6)
  {
    operator delete(v6);
  }

  v7 = a1[3];
  while (v7)
  {
    v8 = v7;
    v7 = *v7;
    v9 = v8[3];
    if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v10 = v8;
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
      v8 = v10;
    }

    operator delete(v8);
  }

  v11 = a1[1];
  a1[1] = 0;
  if (v11)
  {
    operator delete(v11);
  }

  return a1;
}

void sub_1001F347C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_10002BB1C(&a9);
  std::__shared_weak_count::~__shared_weak_count(v9);
  operator delete(v11);
  _Unwind_Resume(a1);
}

void sub_1001F34BC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100442BA8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1001F3538()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1001F35A8()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_1001F3634(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t a5, uint64_t a6)
{
  *a1 = off_100442BF8;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  if (sub_1002515FC())
  {
    operator new();
  }

  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v11 = a4[1];
  *(a1 + 56) = *a4;
  *(a1 + 64) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 72) = 0;
  v12 = *a3;
  v13 = a3[1];
  *(a1 + 280) = *a3;
  *(a1 + 288) = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
    v12 = *a3;
  }

  *(a1 + 296) = a5;
  *(a1 + 304) = a6;
  *(a1 + 312) = sub_10025119C(v12);
  sub_100250BA8(*a3, a1 + 320);
  sub_100250E10(*a3);
}

void sub_1001F3830(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v3);
  operator delete(v5);
  sub_1001FC978((v1 + 32));
  sub_1001FC91C(v2);
  _Unwind_Resume(a1);
}

void sub_1001F3858(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_10002BB1C(&a9);
  sub_10002BB1C(v9 + 400);
  sub_100048F1C((v9 + 376));
  sub_10002BB1C(v9 + 360);
  sub_10002BB1C(v9 + 280);
  if (*(v9 + 72) == 1)
  {
    sub_10012E8E4(v9 + 80);
    *(v9 + 72) = 0;
  }

  sub_10002BB1C(v11);
  sub_10002BB1C(v9 + 40);
  sub_1001FC978((v9 + 32));
  sub_1001FC91C(v10);
  _Unwind_Resume(a1);
}

uint64_t sub_1001F38EC(uint64_t a1)
{
  *a1 = off_100442BF8;
  v2 = *(a1 + 480);
  v3 = *(a1 + 488);
  if (v3 == v2)
  {
    *(a1 + 512) = 0;
    v10 = 0;
  }

  else
  {
    v4 = *(a1 + 504);
    v5 = &v2[v4 >> 7];
    v6 = *(v2 + (((*(a1 + 512) + v4) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((*(a1 + 512) + v4) & 0x7F);
    if (*v5 + 32 * (v4 & 0x7F) != v6)
    {
      v7 = (*v5 + 32 * (v4 & 0x7F));
      do
      {
        v8 = *v7;
        v7 += 4;
        (*v8)();
        if (v7 - *v5 == 4096)
        {
          v9 = v5[1];
          ++v5;
          v7 = v9;
        }
      }

      while (v7 != v6);
      v2 = *(a1 + 480);
      v3 = *(a1 + 488);
    }

    *(a1 + 512) = 0;
    v10 = v3 - v2;
    if (v10 >= 3)
    {
      do
      {
        operator delete(*v2);
        v3 = *(a1 + 488);
        v2 = (*(a1 + 480) + 8);
        *(a1 + 480) = v2;
        v10 = v3 - v2;
      }

      while (v10 > 2);
    }
  }

  if (v10 == 1)
  {
    v11 = 64;
    goto LABEL_15;
  }

  if (v10 == 2)
  {
    v11 = 128;
LABEL_15:
    *(a1 + 504) = v11;
  }

  if (v2 != v3)
  {
    do
    {
      v12 = *v2++;
      operator delete(v12);
    }

    while (v2 != v3);
    v14 = *(a1 + 480);
    v13 = *(a1 + 488);
    if (v13 != v14)
    {
      *(a1 + 488) = v13 + ((v14 - v13 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  v15 = *(a1 + 472);
  if (v15)
  {
    operator delete(v15);
  }

  v16 = *(a1 + 424);
  if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
  }

  v17 = *(a1 + 408);
  if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
  }

  v18 = *(a1 + 376);
  if (v18)
  {
    v19 = *(a1 + 384);
    v20 = *(a1 + 376);
    if (v19 != v18)
    {
      do
      {
        v21 = *(v19 - 8);
        if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v21->__on_zero_shared)(v21);
          std::__shared_weak_count::__release_weak(v21);
        }

        v19 -= 16;
      }

      while (v19 != v18);
      v20 = *(a1 + 376);
    }

    *(a1 + 384) = v18;
    operator delete(v20);
  }

  v22 = *(a1 + 368);
  if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v22->__on_zero_shared)(v22);
    std::__shared_weak_count::__release_weak(v22);
  }

  v23 = *(a1 + 288);
  if (v23 && !atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v23->__on_zero_shared)(v23);
    std::__shared_weak_count::__release_weak(v23);
    if (*(a1 + 72) != 1)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

  if (*(a1 + 72) == 1)
  {
LABEL_43:
    sub_10012E8E4(a1 + 80);
    *(a1 + 72) = 0;
  }

LABEL_44:
  v24 = *(a1 + 64);
  if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v24->__on_zero_shared)(v24);
    std::__shared_weak_count::__release_weak(v24);
  }

  v25 = *(a1 + 48);
  if (v25 && !atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v25->__on_zero_shared)(v25);
    std::__shared_weak_count::__release_weak(v25);
  }

  v26 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v26)
  {
    sub_10023590C(v26);
    operator delete();
  }

  v27 = *(a1 + 8);
  if (v27)
  {
    v28 = *(a1 + 16);
    v29 = *(a1 + 8);
    if (v28 != v27)
    {
      do
      {
        v28 = sub_10023590C(v28 - 9);
      }

      while (v28 != v27);
      v29 = *(a1 + 8);
    }

    *(a1 + 16) = v27;
    operator delete(v29);
  }

  return a1;
}

void sub_1001F3D48(uint64_t a1)
{
  sub_1001F38EC(a1);

  operator delete();
}

uint64_t sub_1001F3D88(uint64_t a1, uint64_t a2, uint64_t *a3, int a4, uint64_t *a5, double a6, double a7)
{
  v12 = sub_100181F60(a1, a2);
  sub_100181F64(v12, (v12 + 3));
  sub_1002C15BC(a1 + 136, a1 + 24);
  sub_1002C15C0((a1 + 136), a1 + 224);
  v13 = vdupq_n_s64(0x7FF4000000000000uLL);
  *(a1 + 248) = v13;
  *(a1 + 240) = 4;
  *(a1 + 244) = a4;
  *(a1 + 264) = v13;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  if (sub_1001182C8((a1 + 224), &qword_10045DF78))
  {
    v14 = sub_100118234(a2);
    *(a1 + 248) = sub_1001F40D4((a1 + 136), v14, a3, 0);
    *(a1 + 256) = v15;
    v16 = 1;
    *(a1 + 264) = v17;
    *(a1 + 272) = v18;
    *(a1 + 240) = 2;
    if (*(a1 + 288) != 1)
    {
      return a1;
    }
  }

  else
  {
    if ((*(sub_100118234(a2) + 120) & 1) == 0)
    {
      goto LABEL_13;
    }

    v19 = *a5;
    v20 = a5[1];
    if (*a5 != v20)
    {
      while (1)
      {
        v21 = (*(**v19 + 64))();
        if (sub_1001182C8(v21, (a1 + 224)))
        {
          break;
        }

        v19 += 16;
        if (v19 == v20)
        {
          v19 = v20;
          break;
        }
      }

      v20 = a5[1];
    }

    if (v19 == v20)
    {
LABEL_13:
      *(a1 + 248) = 0u;
      *(a1 + 264) = 0u;
      v16 = 1;
      *(a1 + 240) = 3;
      if (*(a1 + 288) != 1)
      {
        return a1;
      }
    }

    else
    {
      *(a1 + 284) = (*(**v19 + 72))();
      *(a1 + 280) = 1;
      v22 = sub_100118234(a2);
      *(a1 + 248) = sub_1001F40D4((a1 + 136), v22, a3, *(a1 + 284));
      *(a1 + 256) = v23;
      *(a1 + 264) = v24;
      *(a1 + 272) = v25;
      if (*(a1 + 244) == 2)
      {
        *(a1 + 240) = 0;
        return a1;
      }

      v16 = fmin(1.0 - v24, 0.5) > v24 * v25;
      *(a1 + 240) = v16;
      if (*(a1 + 288) != 1)
      {
        return a1;
      }
    }
  }

  if (v16)
  {
    if (qword_10045B050 != -1)
    {
      sub_100385B50();
    }

    v26 = qword_10045B058;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
    {
      v27 = *(a1 + 240);
      v29[0] = 67109120;
      v29[1] = v27;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Yield status is %d but forcing it to YIELD_OK", v29, 8u);
    }
  }

  return a1;
}

void sub_1001F4060(_Unwind_Exception *a1)
{
  sub_100118124(v1 + 224);
  sub_1001DF904(v1 + 136);
  sub_1001FE7FC(v1 + 24);
  sub_10002BB1C(v1);
  _Unwind_Resume(a1);
}

double sub_1001F40D4(void *a1, uint64_t a2, uint64_t *a3, int a4)
{
  sub_1001D14CC(a3, a4, &v9);
  v6 = v9;
  sub_1001E9D30(a2);
  sub_1002C15C0(a1, &v9);
  sub_1002C1784(a1, &v9);
  v7 = v10;
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  return 1.0 - *&v6;
}

uint64_t sub_1001F422C(uint64_t a1)
{
  if (*(a1 + 280) == 1)
  {
    return fmin(1.0 - *(a1 + 256), 0.5) > *(a1 + 272) * *(a1 + 256);
  }

  else
  {
    return 2;
  }
}

uint64_t sub_1001F4268(uint64_t a1, double a2)
{
  if (a2 >= 0.5)
  {
    return 0;
  }

  v2 = 1.0 - *(a1 + 264);
  if (v2 <= 0.5)
  {
    v3 = 2;
  }

  else
  {
    v3 = 3;
  }

  if (v2 <= a2)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (*(a1 + 288) == 1)
  {
    if (qword_10045B050 != -1)
    {
      sub_100385B50();
    }

    v5 = qword_10045B058;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
    {
      v6 = off_100442D68[v4 - 1];
      v8 = 136315138;
      v9 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Yield status from probability/confidence is %s but forcing yield to OK", &v8, 0xCu);
    }

    return 0;
  }

  return v4;
}

uint64_t sub_1001F4374(uint64_t a1, double a2)
{
  if (a2 >= 0.5)
  {
    return 0;
  }

  v2 = 1.0 - *(a1 + 16);
  if (v2 <= 0.5)
  {
    v3 = 2;
  }

  else
  {
    v3 = 3;
  }

  if (v2 <= a2)
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

void sub_1001F43D0(void *a1, uint64_t a2, uint64_t *a3, uint64_t **a4)
{
  if (a1[1] == a1[2] || *(*a3 + 8) != *(a1[45] + 8))
  {
    sub_1001F48E4(a1, a2, a3, a4);
  }

  if (qword_10045B050 != -1)
  {
    sub_100385B50();
  }

  v8 = qword_10045B058;
  if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
  {
    goto LABEL_23;
  }

  v13 = qword_10045E088;
  if (!qword_10045E088)
  {
LABEL_12:
    sub_10001C6D4("map::at:  key not found");
  }

  v14 = *(*a3 + 8);
  while (1)
  {
    while (1)
    {
      v15 = *(v13 + 32);
      if (v14 >= v15)
      {
        break;
      }

      v13 = *v13;
      if (!v13)
      {
        goto LABEL_12;
      }
    }

    if (v15 >= v14)
    {
      break;
    }

    v13 = *(v13 + 8);
    if (!v13)
    {
      goto LABEL_12;
    }
  }

  v16 = *(v13 + 40);
  v17 = strlen(v16);
  if (v17 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_10000D39C();
  }

  v18 = v17;
  if (v17 >= 0x17)
  {
    operator new();
  }

  BYTE7(v31) = v17;
  if (v17)
  {
    memmove(__p, v16, v17);
  }

  *(__p + v18) = 0;
  v19 = __p;
  if (SBYTE7(v31) < 0)
  {
    v19 = __p[0];
  }

  *buf = 136315394;
  v34 = v19;
  v35 = 2048;
  v36 = a2;
  _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Updating particle filter %s at timestamp %lld", buf, 0x16u);
  if (SBYTE7(v31) < 0)
  {
    operator delete(__p[0]);
    a1[57] = a2;
    v20 = a1 + 47;
    if (a1 + 47 == a4)
    {
LABEL_25:
      *__p = 0u;
      v31 = 0u;
      v32 = 1065353216;
      v21 = a1[47];
      for (i = a1[48]; v21 != i; v21 += 2)
      {
        v23 = (*(**v21 + 64))(*v21, v9, v10, v11, v12);
        sub_1001C60C0(__p, v23, v23);
      }

      v24 = a1[1];
      v25 = a1[2];
      if (v24 == v25)
      {
        v28 = a1[4];
        if (!v28)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v26 = 0;
        do
        {
          v27 = sub_100118234(v24);
          v26 |= sub_1001EB9F8(v27, __p);
          v24 += 72;
        }

        while (v24 != v25);
        v28 = a1[4];
        if (!v28)
        {
LABEL_34:
          sub_1001F5C64(a1);
        }
      }

      v29 = sub_100118234(v28);
      sub_1001EB9F8(v29, __p);
      goto LABEL_34;
    }
  }

  else
  {
LABEL_23:
    a1[57] = a2;
    v20 = a1 + 47;
    if (a1 + 47 == a4)
    {
      goto LABEL_25;
    }
  }

  sub_1001E3D54(v20, *a4, a4[1], (a4[1] - *a4) >> 4);
  goto LABEL_25;
}

void sub_1001F482C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, std::runtime_error a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    a20 = __p;
    operator delete(__p);
  }

  std::runtime_error::~runtime_error(&a18);
  if (a14 < 0)
  {
    operator delete(a9);
  }

  __cxa_end_catch();
  _Unwind_Resume(a1);
}

void sub_1001F48E4(void *a1, uint64_t a2, uint64_t *a3, uint64_t **a4)
{
  if (qword_10045B050 != -1)
  {
    sub_100385B50();
  }

  v8 = qword_10045B058;
  if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
  {
    goto LABEL_20;
  }

  v9 = qword_10045E088;
  if (!qword_10045E088)
  {
LABEL_10:
    sub_10001C6D4("map::at:  key not found");
  }

  v10 = *(*a3 + 8);
  while (1)
  {
    while (1)
    {
      v11 = *(v9 + 32);
      if (v10 >= v11)
      {
        break;
      }

      v9 = *v9;
      if (!v9)
      {
        goto LABEL_10;
      }
    }

    if (v11 >= v10)
    {
      break;
    }

    v9 = *(v9 + 8);
    if (!v9)
    {
      goto LABEL_10;
    }
  }

  v12 = *(v9 + 40);
  v13 = strlen(v12);
  if (v13 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_10000D39C();
  }

  v14 = v13;
  if (v13 >= 0x17)
  {
    operator new();
  }

  v24 = v13;
  if (v13)
  {
    memmove(&__dst, v12, v13);
  }

  *(&__dst + v14) = 0;
  p_dst = &__dst;
  if (v24 < 0)
  {
    p_dst = __dst;
  }

  *buf = 136315394;
  v26 = p_dst;
  v27 = 2048;
  v28 = a2;
  _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Creating new particle filter %s at timestamp %lld", buf, 0x16u);
  if (v24 < 0)
  {
    operator delete(__dst);
    v16 = a1 + 47;
    if (a1 + 47 == a4)
    {
LABEL_22:
      v18 = *a3;
      v17 = a3[1];
      if (v17)
      {
        atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
      }

      v19 = a1[46];
      a1[45] = v18;
      a1[46] = v17;
      if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v19->__on_zero_shared)(v19);
        std::__shared_weak_count::__release_weak(v19);
      }

      v20 = a1[1];
      a1[57] = a2;
        ;
      }

      a1[2] = v20;
      v22 = a1[4];
      a1[4] = 0;
      if (v22)
      {
        sub_10023590C(v22);
        operator delete();
      }

      operator new();
    }
  }

  else
  {
LABEL_20:
    v16 = a1 + 47;
    if (a1 + 47 == a4)
    {
      goto LABEL_22;
    }
  }

  sub_1001E3D54(v16, *a4, a4[1], (a4[1] - *a4) >> 4);
  goto LABEL_22;
}

void sub_1001F576C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  *(v26 + 16) = v27;
  sub_1001F608C(&a20);
  v31 = a23;
  a23 = 0;
  if (v31)
  {
    (*(*v31 + 8))(v31);
  }

  sub_10002BB1C(&a16);
  v32 = a26;
  a26 = 0;
  if (v32)
  {
    (*(*v32 + 8))(v32);
  }

  sub_10002BB1C(&a18);
  v33 = *v28;
  *v28 = 0;
  if (v33)
  {
    (*(*v33 + 8))(v33);
    sub_10002BB1C(v29 - 144);
    sub_10002BB1C(v29 - 128);
    _Unwind_Resume(a1);
  }

  sub_10002BB1C(v29 - 144);
  sub_10002BB1C(v29 - 128);
  _Unwind_Resume(a1);
}

void sub_1001F5BD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  v36 = *(v33 + 48);
  if (v36)
  {
    *(v33 + 56) = v36;
    operator delete(v36);
  }

  std::runtime_error::~runtime_error((v34 - 144));
  if (a33 < 0)
  {
    operator delete(*(v33 + 8));
  }

  __cxa_end_catch();
  _Unwind_Resume(a1);
}

void sub_1001F5FC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v16 = a14;
  a14 = 0;
  if (v16)
  {
    sub_100385B64(v16);
  }

  sub_10002BB1C(&a12);
  sub_10002BB1C(v14 - 56);
  _Unwind_Resume(a1);
}

void sub_1001F5FF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v13 = a11;
  a11 = 0;
  if (v13)
  {
    sub_100385B64(v13);
  }

  sub_10002BB1C(&a9);
  sub_10002BB1C(v11 - 56);
  _Unwind_Resume(a1);
}

void sub_1001F602C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v19 = a17;
  a17 = 0;
  if (v19)
  {
    sub_100385B64(v19);
  }

  sub_10002BB1C(&a15);
  sub_10002BB1C(v17 - 56);
  _Unwind_Resume(a1);
}

void sub_1001F6074(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void *sub_1001F608C(void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_1001749A4(v2);
    operator delete();
  }

  return a1;
}

void sub_1001F62D8(_Unwind_Exception *a1)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  operator delete();
}

void sub_1001F6348(uint64_t *a1)
{
  v2 = a1[4];
  if (v2 && a1[1] != a1[2])
  {
    v3 = sub_100118234(v2);
    v4 = sub_100118234(a1[1]);
    sub_1001E9A6C(v3, v4, v5, v6, v7, v8, v9);
    v10 = a1[60];
    v11 = a1[61];
    if (v11 == v10)
    {
      a1[64] = 0;
      v18 = 0;
    }

    else
    {
      v12 = a1[63];
      v13 = &v10[v12 >> 7];
      v14 = *(v10 + (((a1[64] + v12) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((a1[64] + v12) & 0x7F);
      if (*v13 + 32 * (v12 & 0x7F) != v14)
      {
        v15 = (*v13 + 32 * (v12 & 0x7F));
        do
        {
          v16 = *v15;
          v15 += 4;
          (*v16)();
          if (v15 - *v13 == 4096)
          {
            v17 = v13[1];
            ++v13;
            v15 = v17;
          }
        }

        while (v15 != v14);
        v10 = a1[60];
        v11 = a1[61];
      }

      a1[64] = 0;
      v18 = (v11 - v10) >> 3;
      if (v18 >= 3)
      {
        do
        {
          operator delete(*v10);
          v19 = a1[61];
          v10 = (a1[60] + 8);
          a1[60] = v10;
          v18 = (v19 - v10) >> 3;
        }

        while (v18 > 2);
      }
    }

    if (v18 == 1)
    {
      v20 = 64;
    }

    else
    {
      if (v18 != 2)
      {
        return;
      }

      v20 = 128;
    }

    a1[63] = v20;
  }
}

void sub_1001F64B8(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = sub_100118234(v1);

    sub_1001E9C90(v2);
  }
}

void sub_1001F64EC(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5)
{
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (v6 != v7)
  {
    v8 = 0;
    do
    {
      if ((*(sub_100118234(v7 + 72 * v8) + 120) & 1) == 0)
      {
        if (qword_10045B050 != -1)
        {
          sub_100385B9C();
        }

        v9 = qword_10045B058;
        if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
        {
          *buf = 134217984;
          *&buf[4] = v8;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "WARNING: Resetting particle filter #%zu; it is no longer feasible", buf, 0xCu);
        }

        v10 = sub_100118234(*(a1 + 8) + 72 * v8);
        v12 = *(v10 + 8);
        for (i = *(v10 + 16); i != v12; i -= 80)
        {
          v13 = *(i - 16);
          if (v13)
          {
            if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v13->__on_zero_shared)(v13);
              std::__shared_weak_count::__release_weak(v13);
            }
          }
        }

        *(v10 + 16) = v12;
      }

      ++v8;
      v7 = *(a1 + 8);
      v6 = *(a1 + 16);
    }

    while (v8 < 0x8E38E38E38E38E39 * ((v6 - v7) >> 3));
  }

  if (v7 == v6)
  {
    v69 = (a1 + 280);
    v22 = *(a1 + 280);
  }

  else
  {
    v14 = 0;
    do
    {
      v15 = sub_100118234(v7);
      if (!sub_1001EBAE0(v15))
      {
        v14 = 1;
      }

      v7 += 72;
    }

    while (v7 != v6);
    if (v14)
    {
      memset(&v71, 0, sizeof(v71));
      v83 = &buf[2];
      v84 = v82;
      if (a2 >= 0)
      {
        v16 = a2;
      }

      else
      {
        v16 = -a2;
      }

      v75 = v16;
      v76 = v82;
      v77 = 48;
      v78 = 48;
      v17 = sub_1000E5EB8(&v75);
      v18 = v17;
      if (a2 < 0)
      {
        *(v17 - 1) = 45;
        v18 = (v17 - 1);
        v83 = (v17 - 1);
        v84 = v82;
        v19 = &v82[-v17 + 1];
        if (v19 >= 0x17)
        {
LABEL_27:
          std::string::__grow_by(&v71, 0x16uLL, v19 - 22, 0, 0, 0, 0);
          v71.__r_.__value_.__l.__size_ = 0;
          if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v20 = &v71;
          }

          else
          {
            v20 = v71.__r_.__value_.__r.__words[0];
          }

          if (v18 == v82)
          {
            goto LABEL_31;
          }

          goto LABEL_38;
        }
      }

      else
      {
        v83 = v17;
        v84 = v82;
        v19 = &v82[-v17];
        if (&v82[-v17] >= 0x17)
        {
          goto LABEL_27;
        }
      }

      v20 = &v71;
      if (v18 == v82)
      {
LABEL_31:
        v21 = v20;
        goto LABEL_46;
      }

LABEL_38:
      if (v19 < 0x20 || (v20 - v18) < 0x20)
      {
        v21 = v20;
        v24 = v18;
      }

      else
      {
        v21 = (v20 + (v19 & 0xFFFFFFFFFFFFFFE0));
        v24 = &v18[v19 & 0xFFFFFFFFFFFFFFE0];
        v25 = (v18 + 16);
        v26 = &v20->__r_.__value_.__r.__words[2];
        v27 = v19 & 0xFFFFFFFFFFFFFFE0;
        do
        {
          v28 = *v25;
          *(v26 - 1) = *(v25 - 1);
          *v26 = v28;
          v25 += 2;
          v26 += 4;
          v27 -= 32;
        }

        while (v27);
        if (v19 == (v19 & 0xFFFFFFFFFFFFFFE0))
        {
          goto LABEL_46;
        }
      }

      do
      {
        v29 = *v24++;
        v21->__r_.__value_.__s.__data_[0] = v29;
        v21 = (v21 + 1);
      }

      while (v24 != v82);
LABEL_46:
      v21->__r_.__value_.__s.__data_[0] = 0;
      if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
      {
        v71.__r_.__value_.__l.__size_ = v19;
      }

      else
      {
        *(&v71.__r_.__value_.__s + 23) = v19 & 0x7F;
      }

      v30 = std::string::insert(&v71, 0, "Precision has been lost at at timestamp ");
      v31 = *&v30->__r_.__value_.__l.__data_;
      v72.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
      *&v72.__r_.__value_.__l.__data_ = v31;
      v30->__r_.__value_.__l.__size_ = 0;
      v30->__r_.__value_.__r.__words[2] = 0;
      v30->__r_.__value_.__r.__words[0] = 0;
      v32 = std::string::append(&v72, ". If you get here, your particles probably didn't make it. As long as the OffMapParticle is stable, this will never return false. If it does, inference has failed.");
      v33 = *&v32->__r_.__value_.__l.__data_;
      v74 = v32->__r_.__value_.__r.__words[2];
      *__p = v33;
      v32->__r_.__value_.__l.__size_ = 0;
      v32->__r_.__value_.__r.__words[2] = 0;
      v32->__r_.__value_.__r.__words[0] = 0;
      if (qword_10045B050 != -1)
      {
        sub_100385B9C();
      }

      v34 = qword_10045B058;
      if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR))
      {
        v35 = __p;
        if (v74 < 0)
        {
          v35 = __p[0];
        }

        *buf = 136315138;
        *&buf[4] = v35;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
      }

      sub_1001F48E4(a1, *(a1 + 456), (a1 + 360), (a1 + 376));
    }

    v69 = (a1 + 280);
    v22 = *(a1 + 280);
    v23 = *(a1 + 16) - *(a1 + 8);
    if (v23)
    {
      if (!((0x8E38E38E38E38E39 * (v23 >> 3)) >> 61))
      {
        operator new();
      }

      sub_10000FC84();
    }
  }

  if (!sub_10025B310(*a3))
  {
    v36 = a2 - sub_1002511B4(v22);
    if (*(a1 + 456) > v36)
    {
      v36 = *(a1 + 456);
    }

    *(a1 + 456) = v36;
    v37 = *(a1 + 8);
    if (*(a1 + 16) != v37)
    {
      v38 = 0;
      v39 = 0;
      do
      {
        v40 = sub_100118234(v37 + v38);
        *(8 * v39) = (*(*v40 + 16))(v40, *(a1 + 456), a2);
        if (qword_10045B050 != -1)
        {
          sub_100385B9C();
        }

        v41 = qword_10045B058;
        if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
        {
          v42 = *(8 * v39) * 100.0;
          *buf = 134218240;
          *&buf[4] = v39;
          v80 = 2048;
          v81 = v42;
          _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEBUG, "pfilter #%zu going to transition %f%% of our particles during our injection", buf, 0x16u);
        }

        ++v39;
        v37 = *(a1 + 8);
        v38 += 72;
      }

      while (v39 < 0x8E38E38E38E38E39 * ((*(a1 + 16) - v37) >> 3));
    }
  }

  v43 = *(a1 + 456);
  if (v43 <= a2)
  {
    v43 = a2;
  }

  *(a1 + 456) = v43;
  v44 = *(a1 + 8);
  v45 = *(a1 + 16);
  if (0x8E38E38E38E38E39 * ((v45 - v44) >> 3))
  {
    sub_1000474A4(buf, "");
    sub_100383A74(&v75, buf);
    sub_10003F5D0(&v75);
  }

  if (v45 != v44)
  {
    operator new();
  }

  memset(&v71, 0, sizeof(v71));
  sub_1001F7A28(&v71.__r_.__value_.__l.__data_, 0);
  v47 = *(a1 + 8);
  v46 = *(a1 + 16);
  v48 = v46 - v47;
  if (v46 != v47)
  {
    v49 = 0x8E38E38E38E38E39 * (v48 >> 3);
    v50 = 0xC71C71C71C71C748 * (v48 >> 3) - 376;
    do
    {
      if (*(a1 + 72) != 1)
      {
        LOBYTE(v75) = 0;
        sub_1001F7B88(a1, a2, a3, a4, &v75, buf);
        size = v71.__r_.__value_.__l.__size_;
        if (v71.__r_.__value_.__l.__size_ >= v71.__r_.__value_.__r.__words[2])
        {
          goto LABEL_95;
        }

        goto LABEL_94;
      }

      v51 = *(a1 + 88);
      v52 = sub_100251348(*(a1 + 280));
      v53 = sub_1002512E8(*v69);
      v54 = sub_10017226C(a1 + 80);
      v55 = sub_100251434(*v69);
      v56 = sub_100118234(*(a1 + 8) + v48 - 72);
      v57 = sub_1002330A0((v56 + 8));
      v58 = (a2 - v51) / 1000000000.0;
      if (v58 >= v52 || ((v53 ^ 1) & 1) != 0)
      {
        v60 = v58 >= v52 || v54;
        if (v60)
        {
          goto LABEL_93;
        }

        v55 = 0;
      }

      else
      {
        if (!v57)
        {
          v55 = 0;
        }

        if (v54)
        {
          if (v55)
          {
            goto LABEL_91;
          }

          goto LABEL_93;
        }
      }

      if ((sub_10025148C(*v69) | v55))
      {
LABEL_91:
        LOBYTE(v75) = 0;
        sub_1001300D0(&v76, a1 + 80);
        LOBYTE(v75) = 1;
        sub_1001F7B88(a1, a2, a3, a4, &v75, buf);
        size = v71.__r_.__value_.__l.__size_;
        if (v71.__r_.__value_.__l.__size_ >= v71.__r_.__value_.__r.__words[2])
        {
          goto LABEL_95;
        }

        goto LABEL_94;
      }

LABEL_93:
      LOBYTE(v75) = 0;
      sub_1001F7B88(a1, a2, a3, a4, &v75, buf);
      size = v71.__r_.__value_.__l.__size_;
      if (v71.__r_.__value_.__l.__size_ >= v71.__r_.__value_.__r.__words[2])
      {
LABEL_95:
        v61 = sub_1001FD378(&v71.__r_.__value_.__l.__data_, buf);
        goto LABEL_96;
      }

LABEL_94:
      sub_1001FD544(v71.__r_.__value_.__l.__size_, buf);
      v61 = size + 392;
LABEL_96:
      v71.__r_.__value_.__l.__size_ = v61;
      sub_1001F9864(buf);
      if (v75 == 1)
      {
        sub_10012E8E4(&v76);
      }

      v62 = *(a1 + 8);
      if (v49 < 0x8E38E38E38E38E39 * ((*(a1 + 16) - v62) >> 3))
      {
        v63 = v71.__r_.__value_.__r.__words[0];
        *(v63 + v50) = sub_100118234(v62 + v48) + 8;
      }

      v50 -= 392;
      v48 -= 72;
      --v49;
    }

    while (v49);
  }

  v64 = v71.__r_.__value_.__r.__words[0];
  if (v71.__r_.__value_.__r.__words[0])
  {
    v65 = v71.__r_.__value_.__l.__size_;
    v66 = v71.__r_.__value_.__r.__words[0];
    if (v71.__r_.__value_.__l.__size_ != v71.__r_.__value_.__r.__words[0])
    {
      do
      {
        v65 = sub_1001F9864(v65 - 392);
      }

      while (v65 != v64);
      v66 = v71.__r_.__value_.__r.__words[0];
    }

    v71.__r_.__value_.__l.__size_ = v64;
    operator delete(v66);
  }
}

void sub_1001F7720(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16)
{
  if (SLOBYTE(STACK[0x2B7]) < 0)
  {
    operator delete(STACK[0x2A0]);
  }

  if (a13)
  {
    operator delete(a13);
    if (!a16)
    {
      goto LABEL_8;
    }
  }

  else if (!a16)
  {
LABEL_8:
    _Unwind_Resume(a1);
  }

  operator delete(a16);
  goto LABEL_8;
}

void sub_1001F7A28(void **a1, unint64_t a2)
{
  if (0x7D6343EB1A1F58D1 * ((a1[2] - *a1) >> 3) < a2)
  {
    if (a2 < 0xA72F05397829CCLL)
    {
      operator new();
    }

    sub_10000FC84();
  }
}

void sub_1001F7B88(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X3>, _BYTE *a5@<X4>, void *a6@<X8>)
{
  v16 = 0;
  v17 = 0;
  v8 = *(a1 + 64);
  v14 = *(a1 + 56);
  v15 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10025DEA8(a6, a3, a2, &v16, &v14, a5);
  v9 = v15;
  if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  v10 = v17;
  if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  v12 = *a4;
  v11 = a4[1];
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  v13 = a6[1];
  *a6 = v12;
  a6[1] = v11;
  if (v13)
  {
    if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v13->__on_zero_shared)(v13);
      std::__shared_weak_count::__release_weak(v13);
    }
  }
}

void sub_1001F7CFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_10002BB1C(&a9);
  sub_10002BB1C(va);
  _Unwind_Resume(a1);
}

void sub_1001F7D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v6 = a6;
  sub_100182920(a2, &v32);
  if (v32 == v33)
  {
    if (qword_10045B050 != -1)
    {
      sub_100385B9C();
    }

    v11 = qword_10045B058;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v27[0]) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "No viable locations for positioning", v27, 2u);
    }
  }

  v12 = (v33 - v32) >> 4;
  if (*(a1 + 464) != v12)
  {
    sub_10004DAA4(v27);
    v13 = sub_10003C2E4(&v28, "WiFi measurement on frequencies ", 32);
    sub_1001FA624(a4, &buf);
    sub_1001FD6C4(&buf);
    if (v36 >= 0)
    {
      v14 = &v34;
    }

    else
    {
      v14 = v34;
    }

    if (v36 >= 0)
    {
      v15 = HIBYTE(v36);
    }

    else
    {
      v15 = v35;
    }

    v16 = sub_10003C2E4(v13, v14, v15);
    if (SHIBYTE(v36) < 0)
    {
      v17 = v16;
      operator delete(v34);
      v16 = v17;
    }

    sub_10003C2E4(v16, " that are indicative of ", 24);
    v18 = std::ostream::operator<<();
    sub_10003C2E4(v18, " possible locations", 19);
    if (buf)
    {
      *(&buf + 1) = buf;
      operator delete(buf);
    }

    if (qword_10045B050 != -1)
    {
      sub_100385B9C();
    }

    v19 = qword_10045B058;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
    {
      std::stringbuf::str();
      v20 = v36 >= 0 ? &v34 : v34;
      LODWORD(buf) = 136315138;
      *(&buf + 4) = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "%s", &buf, 0xCu);
      if (SHIBYTE(v36) < 0)
      {
        operator delete(v34);
      }
    }

    v28 = v21;
    if (v31 < 0)
    {
      operator delete(v30[7].__locale_);
    }

    std::locale::~locale(v30);
    std::iostream::~basic_iostream();
    std::ios::~ios();
    v12 = (v33 - v32) >> 4;
  }

  *(a1 + 464) = v12;
  sub_10021127C(&v32, v27);
  if ((*(**(a1 + 360) + 48))(*(a1 + 360)))
  {
    v22 = *(a1 + 8);
    if (v22 != *(a1 + 16))
    {
      v34 = v27;
      v35 = a1 + 320;
      v36 = a3;
      sub_100235AD8(v22, &v34, a4, a5, v6);
    }
  }

  v23 = v32;
  if (v32)
  {
    v24 = v33;
    v25 = v32;
    if (v33 != v32)
    {
      do
      {
        v26 = *(v24 - 1);
        if (v26)
        {
          if (!atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v26->__on_zero_shared)(v26);
            std::__shared_weak_count::__release_weak(v26);
          }
        }

        v24 -= 2;
      }

      while (v24 != v23);
      v25 = v32;
    }

    v33 = v23;
    operator delete(v25);
  }
}

void sub_1001F81A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1001D8FE0(&a9);
  sub_100048F1C((v9 - 160));
  _Unwind_Resume(a1);
}

void sub_1001F823C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 72);
  v5 = a1 + 80;
  if (v4 == 1)
  {
    sub_1001300D4(v5, a2);
    v7 = *(a1 + 8);
    v6 = *(a1 + 16);
    if (v7 == v6)
    {
      return;
    }
  }

  else
  {
    sub_1001300D0(v5, a2);
    *(a1 + 72) = 1;
    v7 = *(a1 + 8);
    v6 = *(a1 + 16);
    if (v7 == v6)
    {
      return;
    }
  }

  do
  {
    sub_100235DE0(v7, a2);
    v7 += 9;
  }

  while (v7 != v6);
}

uint64_t sub_1001F82BC(uint64_t a1)
{
  v1 = *(a1 + 360);
  if (v1[2])
  {
    return (*(*v1 + 40))();
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_1001F82F4(void *a1, void *a2, uint64_t a3)
{
  v6 = a1[1];
  for (i = a1[2]; v6 != i; v6 += 9)
  {
    sub_100235DE8(v6, a2, a3);
  }

  result = a1[4];
  if (result)
  {

    return sub_100235DE8(result, a2, a3);
  }

  return result;
}

uint64_t sub_1001F8388(void *a1, uint64_t a2)
{
  v4 = a1[1];
  for (i = a1[2]; v4 != i; v4 += 72)
  {
    v6 = sub_100118234(v4);
    sub_1001EB804(v6, *(a2 + 16) - 250000000, *(a2 + 16));
  }

  v7 = a1[4];
  if (v7)
  {
    sub_100235DF8(v7, a2);
  }

  v9 = a1[1];
  v8 = a1[2];
  if (v9 == v8)
  {
    return 0;
  }

  v10 = 0;
  do
  {
    v10 |= sub_100235DF8(v9, a2);
    v9 += 72;
  }

  while (v9 != v8);
  return v10 & 1;
}

void sub_1001F844C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a1[1];
  for (i = a1[2]; v10 != i; v10 += 9)
  {
    v14[0] = a2;
    v14[1] = a3;
    v14[2] = a5;
    v14[3] = a4;
    sub_100235E04(v10, v14);
  }

  if (a1[4])
  {
    if (sub_100251290(a1[35]))
    {
      sub_1001F8538(a1, a2, a3, a4, v14);
    }

    else
    {
      sub_1001233E0(v14, a4);
    }

    v12 = a1[4];
    v13[0] = a2;
    v13[1] = a3;
    v13[2] = a5;
    v13[3] = v14;
    sub_100235E04(v12, v13);
    nullsub_66();
  }
}

void sub_1001F8538(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (!*(a1 + 512))
  {
    goto LABEL_22;
  }

  v10 = *(*(*(a1 + 480) + ((*(a1 + 504) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (*(a1 + 504) & 0x7FLL) + 16);
  sub_10025122C(*(a1 + 280), buf);
  v11 = *&v48[1];
  sub_10014B44C(buf);
  if ((a2 - v10) * 0.000000001 <= v11)
  {
    goto LABEL_22;
  }

  v12 = *(a1 + 480);
  v13 = *(a1 + 488);
  if (v13 == v12)
  {
    *(a1 + 512) = 0;
    v20 = 0;
  }

  else
  {
    v14 = *(a1 + 504);
    v15 = &v12[v14 >> 7];
    v16 = *(v12 + (((*(a1 + 512) + v14) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((*(a1 + 512) + v14) & 0x7F);
    if (*v15 + 32 * (v14 & 0x7F) != v16)
    {
      v17 = (*v15 + 32 * (v14 & 0x7F));
      do
      {
        v18 = *v17;
        v17 += 4;
        (*v18)();
        if (v17 - *v15 == 4096)
        {
          v19 = v15[1];
          ++v15;
          v17 = v19;
        }
      }

      while (v17 != v16);
      v12 = *(a1 + 480);
      v13 = *(a1 + 488);
    }

    *(a1 + 512) = 0;
    v20 = v13 - v12;
    if (v20 >= 3)
    {
      do
      {
        operator delete(*v12);
        v21 = *(a1 + 488);
        v12 = (*(a1 + 480) + 8);
        *(a1 + 480) = v12;
        v20 = (v21 - v12) >> 3;
      }

      while (v20 > 2);
    }
  }

  if (v20 == 1)
  {
    v22 = 64;
    goto LABEL_17;
  }

  if (v20 == 2)
  {
    v22 = 128;
LABEL_17:
    *(a1 + 504) = v22;
  }

  if (qword_10045B050 != -1)
  {
    sub_100385B9C();
  }

  v23 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
  {
    v24 = *(*(*(a1 + 480) + ((*(a1 + 504) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (*(a1 + 504) & 0x7FLL) + 16);
    *buf = 134218240;
    v47 = v24;
    LOWORD(v48[0]) = 2048;
    *(v48 + 2) = a2;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Clearing DR floor transition signal buffer because the oldest FloorTransitionState was stashed at %lld and it's %lld now!", buf, 0x16u);
  }

LABEL_22:
  v25 = *(a4 + 12);
  if (v25 <= 1)
  {
    sub_1001233E0(buf, a4);
    v26 = *(a1 + 480);
    v27 = *(a1 + 488);
    v28 = 16 * (v27 - v26) - 1;
    *&v48[1] = a2;
    if (v27 == v26)
    {
      v28 = 0;
    }

    if (v28 == *(a1 + 512) + *(a1 + 504))
    {
      sub_1001FD914((a1 + 472));
      v26 = *(a1 + 480);
      v27 = *(a1 + 488);
    }

    if (v27 == v26)
    {
      v30 = 0;
    }

    else
    {
      v29 = *(a1 + 512) + *(a1 + 504);
      v30 = *(v26 + ((v29 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v29 & 0x7F);
    }

    sub_1001233E0(v30, buf);
    ++*(a1 + 512);
    if (qword_10045B050 != -1)
    {
      sub_100385B9C();
    }

    v31 = qword_10045B058;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
    {
      v32 = "DOWN";
      v33 = *(a4 + 16);
      if (!*(a4 + 12))
      {
        v32 = "UP";
      }

      v40 = 136315650;
      v41 = v32;
      v42 = 2048;
      v43 = v33;
      v44 = 2048;
      v45 = a2;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "Stashing floor transition signal: %s where the sensor event timestamp is %lld at %lld", &v40, 0x20u);
    }

    nullsub_66();
    v25 = *(a4 + 12);
  }

  v34 = sub_10025D930(a3, *(a4 + 8), v25);
  sub_1001233E0(a5, a4);
  if (v34 && *(a1 + 512))
  {
    sub_1001233E0(buf, *(*(a1 + 480) + ((*(a1 + 504) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (*(a1 + 504) & 0x7FLL));
    *(a5 + 12) = v48[0];
    if (qword_10045B050 != -1)
    {
      sub_100385B9C();
    }

    v35 = (a1 + 504);
    v36 = qword_10045B058;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
    {
      v37 = "DOWN";
      if (!v48[0])
      {
        v37 = "UP";
      }

      v40 = 136315650;
      v41 = v37;
      v42 = 2048;
      v43 = *&v48[1];
      v44 = 2048;
      v45 = a2;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEBUG, "Popping floor transition signal: %s stashed at %lld and popped at %lld", &v40, 0x20u);
    }

    v38 = (*(*(a1 + 480) + ((*(a1 + 504) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (*(a1 + 504) & 0x7FLL));
    (**v38)(v38);
    v39 = vaddq_s64(*v35, xmmword_1003D1DF0);
    *v35 = v39;
    if (v39.i64[0] >= 0x100uLL)
    {
      operator delete(**(a1 + 480));
      *(a1 + 480) += 8;
      *(a1 + 504) -= 128;
    }

    nullsub_66();
  }
}