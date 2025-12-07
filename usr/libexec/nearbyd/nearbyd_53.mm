uint64_t sub_10040EF34(uint64_t a1, char a2, uint64_t a3, int a4, uint64_t a5, int a6, double a7)
{
  v13 = a2;
  v12 = a3;
  v11 = a7;
  v9 = a6;
  v10 = a4;
  v7 = *(a1 + 24);
  if (!v7)
  {
    sub_100037B10();
  }

  return (*(*v7 + 48))(v7, &v13, &v12, &v11, &v10, a5, &v9);
}

uint64_t sub_10040EFAC(uint64_t a1, std::string::size_type a2, std::string::size_type a3, void *a4, int a5, char a6, int a7, double a8)
{
  v97 = a2;
  v96 = a3;
  v95 = a6;
  v94 = a7;
  if (sub_100009BCC((a1 + 320), &v97))
  {
    v12 = sub_100009978((a1 + 320), &v97);
    if (!v12)
    {
      sub_10017C290("unordered_map::at: key not found");
    }

    sub_10041114C(v12 + 3, &v96);
  }

  v13 = sub_100011390(a1 + 256, &v94);
  v14 = sub_1000113E8(v13, &v95);
  v15 = v14[1];
  v92 = *v14;
  v93 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10038C990(v71, a1 + 440);
  memcpy(v72, (a1 + 464), sizeof(v72));
  v73 = *(a1 + 864);
  sub_10029F1D8(v74, a1 + 880);
  *(v75 + 12) = *(a1 + 916);
  v75[0] = *(a1 + 904);
  sub_10029F2B8(&v76, (a1 + 936));
  v91 = *(a1 + 1176);
  v16 = *(a1 + 1048);
  v82 = *(a1 + 1032);
  v83 = v16;
  v17 = *(a1 + 1016);
  v80 = *(a1 + 1000);
  v81 = v17;
  v18 = *(a1 + 1112);
  v86 = *(a1 + 1096);
  v87 = v18;
  v19 = *(a1 + 1080);
  v84 = *(a1 + 1064);
  v85 = v19;
  v20 = *(a1 + 1160);
  v89 = *(a1 + 1144);
  v90 = v20;
  v88 = *(a1 + 1128);
  v21 = *(a1 + 984);
  v78 = *(a1 + 968);
  v79 = v21;
  v22 = *a4;
  v73 = *(*a4 + 32);
  if (&v73 != (v22 + 32))
  {
    sub_10029EC60(v74, *(v22 + 48), (v22 + 56));
  }

  v23 = *(v22 + 72);
  *(v75 + 12) = *(v22 + 84);
  v75[0] = v23;
  sub_10029EED4(&v76, (v22 + 104));
  v24 = *(v22 + 152);
  v78 = *(v22 + 136);
  v79 = v24;
  v25 = *(v22 + 168);
  v26 = *(v22 + 184);
  v27 = *(v22 + 216);
  v82 = *(v22 + 200);
  v83 = v27;
  v80 = v25;
  v81 = v26;
  v28 = *(v22 + 232);
  v29 = *(v22 + 248);
  v30 = *(v22 + 280);
  v86 = *(v22 + 264);
  v87 = v30;
  v84 = v28;
  v85 = v29;
  v31 = *(v22 + 296);
  v32 = *(v22 + 312);
  v33 = *(v22 + 328);
  v91 = *(v22 + 344);
  v89 = v32;
  v90 = v33;
  v88 = v31;
  BYTE8(v78) = *(a1 + 976);
  HIDWORD(v78) = *(a1 + 980);
  LOBYTE(v79) = *(a1 + 984);
  memset(&v70, 0, sizeof(v70));
  v34 = *a4;
  if (*a4 != a4 + 1)
  {
    do
    {
      *&__val.__r_.__value_.__l.__data_ = *(v34 + 2);
      sub_10029F1D8(&__val.__r_.__value_.__r.__words[2], (v34 + 6));
      *&v106[16] = *(v34 + 9);
      *&v106[28] = *(v34 + 84);
      sub_10029F2B8(v107, (v34 + 13));
      v35 = *(v34 + 31);
      v116 = *(v34 + 29);
      v117 = v35;
      v36 = *(v34 + 23);
      v112 = *(v34 + 21);
      v113 = v36;
      v37 = *(v34 + 27);
      v114 = *(v34 + 25);
      v115 = v37;
      v38 = *(v34 + 19);
      v110 = *(v34 + 17);
      v111 = v38;
      v39 = *(v34 + 39);
      v120 = *(v34 + 37);
      v121 = v39;
      v122 = *(v34 + 41);
      v123 = v34[43];
      v40 = *(v34 + 35);
      v118 = *(v34 + 33);
      v119 = v40;
      sub_1003B30EC(v74, &__val.__r_.__value_.__l.__size_, &__val.__r_.__value_.__l.__size_);
      std::to_string(&v99, *&__val.__r_.__value_.__l.__size_);
      v41 = std::string::append(&v99, " ");
      v42 = *&v41->__r_.__value_.__l.__data_;
      v102 = v41->__r_.__value_.__r.__words[2];
      *__p = v42;
      v41->__r_.__value_.__l.__size_ = 0;
      v41->__r_.__value_.__r.__words[2] = 0;
      v41->__r_.__value_.__r.__words[0] = 0;
      if (v102 >= 0)
      {
        v43 = __p;
      }

      else
      {
        v43 = __p[0];
      }

      if (v102 >= 0)
      {
        v44 = HIBYTE(v102);
      }

      else
      {
        v44 = __p[1];
      }

      std::string::append(&v70, v43, v44);
      if (SHIBYTE(v102) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v99.__r_.__value_.__l.__data_);
      }

      if (v109 == 1 && v108 < 0)
      {
        operator delete(v107[0]);
      }

      sub_10002074C(&__val.__r_.__value_.__r.__words[2], *v106);
      v45 = v34[1];
      if (v45)
      {
        do
        {
          v46 = v45;
          v45 = *v45;
        }

        while (v45);
      }

      else
      {
        do
        {
          v46 = v34[2];
          v47 = *v46 == v34;
          v34 = v46;
        }

        while (!v47);
      }

      v34 = v46;
    }

    while (v46 != a4 + 1);
  }

  v48 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v50 = *(*a4 + 32);
    v49 = *(*a4 + 36);
    v51 = &v70;
    if ((v70.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v51 = v70.__r_.__value_.__r.__words[0];
    }

    LODWORD(__val.__r_.__value_.__l.__data_) = 134219010;
    *(__val.__r_.__value_.__r.__words + 4) = v97;
    WORD2(__val.__r_.__value_.__r.__words[1]) = 2048;
    *(&__val.__r_.__value_.__r.__words[1] + 6) = v96;
    HIWORD(__val.__r_.__value_.__r.__words[2]) = 1024;
    *v106 = v50;
    *&v106[4] = 1024;
    *&v106[6] = v49;
    *&v106[10] = 2080;
    *&v106[12] = v51;
    _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "#regionmon setting threshold detector parameters for device-part:0x%llx-0x%llx -- sample size: %d, filter type: %d, rssi thresholds: %s", &__val, 0x2Cu);
  }

  v52 = sub_100009BCC((a1 + 320), &v97);
  if (!v52)
  {
    v104 = 1065353216;
    *&__val.__r_.__value_.__l.__data_ = v97;
    v103 = 0;
    v102 = 0;
    __p[0] = 0;
    __p[1] = 0;
    *&v106[8] = 0;
    __val.__r_.__value_.__r.__words[2] = 0;
    *v106 = 0;
    *&v106[16] = 1065353216;
    sub_100411834((a1 + 320), &__val, &__val);
    sub_100410974(&__val.__r_.__value_.__l.__size_);
    sub_100410974(__p);
  }

  v69 = *(a1 + 1264);
  sub_10040FAB4(a1, v95, __p);
  if (a5 <= 3)
  {
    if ((a5 - 1) >= 2)
    {
      if (a5 == 3)
      {
        v53 = sub_100009978((a1 + 320), &v97);
        if (!v53)
        {
          sub_10017C290("unordered_map::at: key not found");
        }

        LODWORD(v98) = 3;
        v68 = 0;
        v99.__r_.__value_.__r.__words[0] = &v96;
        __val.__r_.__value_.__r.__words[0] = &v97;
        __val.__r_.__value_.__l.__size_ = __p;
        __val.__r_.__value_.__r.__words[2] = a1 + 64;
        *v106 = &v92;
        *&v106[8] = v71;
        *&v106[16] = &v98;
        *&v106[24] = &v68;
        *&v106[32] = &v69;
        *&v106[40] = &v94;
        v107[0] = &unk_100571CBD;
        sub_100411AE4(v53 + 3, &v96);
      }

      goto LABEL_51;
    }

LABEL_41:
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004CEB9C();
    }

    goto LABEL_52;
  }

  if (a5 != 5)
  {
    if (a5 != 4)
    {
      goto LABEL_51;
    }

    goto LABEL_41;
  }

  if (*(a1 + 1432) != 1 || !*(a1 + 1416))
  {
    memset(&__val, 0, sizeof(__val));
    *v106 = vdupq_n_s64(0x3FEB333333333333uLL);
    *&v106[16] = *(a1 + 1272);
    if (*(a1 + 1392))
    {
      std::string::operator=(&__val, (a1 + 1368));
      v69 = *(a1 + 1272);
      if (*(a1 + 1432))
      {
        LODWORD(v98) = 1;
        sub_1004111E4();
      }

      *&v99.__r_.__value_.__l.__data_ = 0uLL;
      LODWORD(v98) = 1;
      sub_1004111E4();
    }

    __assert_rtn("initStateForBluetoothDevice", "NRBYRegionMonitor.mm", 371, "_pathToModelWeights[kIdxMotionBasedSpatialGesturePredictor].has_value()");
  }

  v100 = 0;
  v54 = sub_100009978((a1 + 320), &v97);
  if (!v54)
  {
    sub_10017C290("unordered_map::at: key not found");
  }

  v67 = 4;
  v68 = 3;
  v98 = &v96;
  __val.__r_.__value_.__r.__words[0] = &v97;
  __val.__r_.__value_.__l.__size_ = __p;
  __val.__r_.__value_.__r.__words[2] = a1 + 64;
  *v106 = &v92;
  *&v106[8] = v71;
  *&v106[16] = &v68;
  *&v106[24] = &v67;
  *&v106[32] = &v69;
  *&v106[40] = &v94;
  v107[0] = (a1 + 1400);
  v107[1] = &v99;
  sub_100411F80(v54 + 3, &v96);
  sub_1003FFE60(&v99);
LABEL_51:
  if (v52)
  {
LABEL_52:
    v55 = 0;
    goto LABEL_53;
  }

  memset(&__val, 0, sizeof(__val));
  v57 = (v92 + 1);
  v58 = *v92;
  if (*v92 == v92 + 1)
  {
    size = 0;
    v61 = 0;
  }

  else
  {
    do
    {
      sub_1003FFF40(&__val, v58 + 2);
      v59 = *(v58 + 1);
      if (v59)
      {
        do
        {
          v60 = v59;
          v59 = *v59;
        }

        while (v59);
      }

      else
      {
        do
        {
          v60 = *(v58 + 2);
          v47 = *v60 == v58;
          v58 = v60;
        }

        while (!v47);
      }

      v58 = v60;
    }

    while (v60 != v57);
    size = __val.__r_.__value_.__l.__size_;
    v61 = __val.__r_.__value_.__r.__words[0];
  }

  v63 = v97;
  v64 = v94;
  memset(v65, 0, sizeof(v65));
  sub_10038D514(v65, v61, size, 0xAAAAAAAAAAAAAAABLL * ((size - v61) >> 4));
  v66 = 1;
  sub_10040EF34(a1 + 32, 1, v63, v64, v65, 0, a8);
  if (v66 == 1)
  {
    v99.__r_.__value_.__r.__words[0] = v65;
    sub_10038C574(&v99);
  }

  v99.__r_.__value_.__r.__words[0] = &__val;
  sub_10038C574(&v99);
  v55 = 1;
LABEL_53:
  sub_10038DCE4(__p);
  if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v70.__r_.__value_.__l.__data_);
  }

  if (v77 == 1 && SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v76.__r_.__value_.__l.__data_);
  }

  sub_10002074C(v74, v74[1]);
  sub_10002074C(v71, v71[1]);
  if (v93)
  {
    sub_10000AD84(v93);
  }

  return v55;
}

void sub_10040F910(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, ...)
{
  va_start(va, a23);
  if (STACK[0x368])
  {
    sub_10000AD84(STACK[0x368]);
  }

  if (SLOBYTE(STACK[0x3C7]) < 0)
  {
    operator delete(STACK[0x3B0]);
  }

  sub_10038DCE4(&STACK[0x380]);
  if (a23 < 0)
  {
    operator delete(a18);
  }

  sub_1001BB564(va);
  if (STACK[0x338])
  {
    sub_10000AD84(STACK[0x338]);
  }

  _Unwind_Resume(a1);
}

void *sub_10040FAB4@<X0>(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  if (a2)
  {
    v4 = v7;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v5 = sub_10041076C;
  }

  else
  {
    v4 = v8;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v5 = sub_100410600;
  }

  v4[2] = v5;
  v4[3] = &unk_1009AADB8;
  v4[4] = a1;
  a3[3] = 0;
  *a3 = off_1009AAE88;
  result = objc_retainBlock(v4);
  a3[1] = result;
  a3[3] = a3;
  return result;
}

void sub_10040FB98(uint64_t a1, uint64_t a2, int a3, double a4)
{
  v12 = a2;
  if (sub_100009BCC((a1 + 280), &v12))
  {
    v7 = sub_100009978((a1 + 280), &v12);
    if (!v7)
    {
      goto LABEL_11;
    }

    sub_1003FF54C((v7 + 3), a4);
  }

  if (!sub_100009BCC((a1 + 320), &v12))
  {
    goto LABEL_8;
  }

  v8 = sub_100009978((a1 + 320), &v12);
  if (!v8)
  {
LABEL_11:
    sub_10017C290("unordered_map::at: key not found");
  }

  for (i = v8[5]; i; i = *i)
  {
    sub_1003FF54C((i + 3), a4);
  }

LABEL_8:
  sub_10041114C((a1 + 280), &v12);
  sub_1004124AC((a1 + 320), &v12);
  v10[0] = 0;
  v11 = 0;
  sub_10040EF34(a1 + 32, 0, v12, a3, v10, 0, a4);
  if (v11 == 1)
  {
    v13 = v10;
    sub_10038C574(&v13);
  }
}

void sub_10040FCAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t *a14)
{
  if (a12 == 1)
  {
    a14 = &a9;
    sub_10038C574(&a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_10040FCD4(std::string::size_type a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a1 + 264);
  if (!v6)
  {
    goto LABEL_7;
  }

  v9 = *(a2 + 120);
  while (1)
  {
    v10 = *(v6 + 8);
    if (v9 >= v10)
    {
      break;
    }

LABEL_6:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_7;
    }
  }

  if (v10 < v9)
  {
    ++v6;
    goto LABEL_6;
  }

  v18 = sub_100011390(a1 + 256, (a2 + 120))[1];
  if (!v18)
  {
    goto LABEL_7;
  }

  while (*(v18 + 32))
  {
    v18 = *v18;
    if (!v18)
    {
      goto LABEL_7;
    }
  }

  v19 = sub_100011390(a1 + 256, (a2 + 120));
  if (!(*sub_1000113E8(v19, &unk_100571CBC))[2])
  {
    goto LABEL_7;
  }

  v24 = *a2;
  if (!sub_100009BCC((a1 + 280), &v24))
  {
    if (sub_10040E7A0(a1, v24, *(a2 + 20), *(a2 + 120), *(a2 + 124), *(a2 + 8)))
    {
      goto LABEL_21;
    }

    goto LABEL_7;
  }

  v20 = sub_100009978((a1 + 280), &v24);
  if (!v20)
  {
    goto LABEL_24;
  }

  if (!sub_1003FF538((v20 + 3), a2))
  {
    v21 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v22 = *(a2 + 20);
      *buf = 134218240;
      v26 = v24;
      v27 = 1024;
      v28 = v22;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#regionmon updating technology for device monitor: %llu, new tech: %d", buf, 0x12u);
    }

    sub_10040FB98(a1, v24, 0, *(a2 + 8));
    if (!sub_10040E7A0(a1, v24, *(a2 + 20), *(a2 + 120), *(a2 + 124), *(a2 + 8)))
    {
LABEL_7:
      v11 = *(a2 + 208);
      *(a4 + 192) = *(a2 + 192);
      *(a4 + 208) = v11;
      *(a4 + 224) = *(a2 + 224);
      v12 = *(a2 + 144);
      *(a4 + 128) = *(a2 + 128);
      *(a4 + 144) = v12;
      v13 = *(a2 + 176);
      *(a4 + 160) = *(a2 + 160);
      *(a4 + 176) = v13;
      v14 = *(a2 + 80);
      *(a4 + 64) = *(a2 + 64);
      *(a4 + 80) = v14;
      v15 = *(a2 + 112);
      *(a4 + 96) = *(a2 + 96);
      *(a4 + 112) = v15;
      v16 = *(a2 + 16);
      *a4 = *a2;
      *(a4 + 16) = v16;
      v17 = *(a2 + 48);
      *(a4 + 32) = *(a2 + 32);
      *(a4 + 48) = v17;
      *(a4 + 232) = 1;
      return;
    }
  }

LABEL_21:
  if (!sub_100009978((a1 + 280), &v24))
  {
    goto LABEL_7;
  }

  v23 = sub_100009978((a1 + 280), &v24);
  if (!v23)
  {
LABEL_24:
    sub_10017C290("unordered_map::at: key not found");
  }

  sub_1003FE77C(v23 + 3, a2, a3, a4);
}

void sub_10040FF34(void *a1, double *a2, char a3)
{
  for (i = a1[37]; i; i = *i)
  {
    if (sub_1003FF300((i + 3)))
    {
      sub_1003FF368(i + 3, a2);
    }
  }

  for (j = a1[42]; j; j = *j)
  {
    v8 = a1[151];
    v9 = a1[152];
    if (v8 != v9)
    {
      while (*v8 != j[2])
      {
        if (++v8 == v9)
        {
          v8 = a1[152];
          break;
        }
      }
    }

    if ((a3 & 1) != 0 || v8 != v9)
    {
      for (k = j[5]; k; k = *k)
      {
        if (sub_1003FF300((k + 3)))
        {
          sub_1003FF368(k + 3, a2);
        }
      }
    }
  }
}

void sub_100410008(uint64_t a1, double a2)
{
  for (i = *(a1 + 296); i; i = *i)
  {
    sub_1003FF954((i + 3), a2);
  }

  for (j = *(a1 + 336); j; j = *j)
  {
    for (k = j[5]; k; k = *k)
    {
      sub_1003FF954((k + 3), a2);
    }
  }
}

uint64_t sub_10041007C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, char a6)
{
  v11[0] = a2;
  v11[1] = a3;
  v10 = a4;
  v9 = a5;
  v8 = a6;
  v6 = *(a1 + 24);
  if (!v6)
  {
    sub_100037B10();
  }

  return (*(*v6 + 48))(v6, v11, &v10, &v9, &v8);
}

uint64_t sub_1004100E8(uint64_t result, int a2)
{
  v2 = a2;
  v3 = result;
  if (*(result + 120))
  {
    *(result + 1200) = a2;
    if (!a2 || (v4 = *(result + 1216), v5 = *(result + 1208), v4 == v5))
    {
      v7 = result + 96;

      return sub_10041007C(v7, 0, 0, 0, 0, 0);
    }

    else
    {
      do
      {
        v6 = *v5++;
        result = sub_10041007C(v3 + 96, v6, 1, 1, 1, *(v3 + 1201));
      }

      while (v5 != v4);
    }
  }

  else
  {
    for (i = *(result + 336); i; i = *i)
    {
      for (j = i[5]; j; j = *j)
      {
        result = sub_1003FF348((j + 3));
        if (result)
        {
          result = sub_1003FF358((j + 3), v2);
        }
      }
    }
  }

  return result;
}

void sub_1004101CC(void *a1, unint64_t a2, double a3, uint64_t a4, uint64_t a5, _OWORD *a6, uint64_t a7, char a8, int a9)
{
  v35 = a2;
  if ((sub_100410394(a1, a2) & 1) != 0 || a9)
  {
    v16 = sub_100009978(a1 + 45, &v35);
    if (!v16)
    {
      sub_10017C290("unordered_map::at: key not found");
    }

    sub_100012FB4(__dst, (v16 + 3));
    v17 = sub_100009978(a1 + 50, &v35);
    if (!v17)
    {
      sub_10017C290("unordered_map::at: key not found");
    }

    sub_100012FB4(v29, (v17 + 3));
    v18 = a6[13];
    v28[12] = a6[12];
    v28[13] = v18;
    v28[14] = a6[14];
    v19 = a6[9];
    v28[8] = a6[8];
    v28[9] = v19;
    v20 = a6[11];
    v28[10] = a6[10];
    v28[11] = v20;
    v21 = a6[5];
    v28[4] = a6[4];
    v28[5] = v21;
    v22 = a6[7];
    v28[6] = a6[6];
    v28[7] = v22;
    v23 = a6[1];
    v28[0] = *a6;
    v28[1] = v23;
    *&v24 = *&a7;
    v25 = v24;
    v26 = a6[3];
    if (a8)
    {
      v27 = v25;
    }

    else
    {
      v27 = 0;
    }

    v28[2] = a6[2];
    v28[3] = v26;
    sub_1003FF284(a1, a2, __dst, v29, v28, v27 & 0xFFFFFFFEFFFFFFFFLL | ((a8 & 1) << 32), a9, a3);
    if (v31 == 1 && v30 < 0)
    {
      operator delete(v29[0]);
    }

    if (v34 == 1 && v33 < 0)
    {
      operator delete(__dst[0]);
    }
  }
}

void sub_100410348(_Unwind_Exception *exception_object)
{
  if (*(v1 - 152) == 1 && *(v1 - 177) < 0)
  {
    operator delete(*(v1 - 200));
  }

  if (*(v1 - 96) == 1 && *(v1 - 121) < 0)
  {
    operator delete(*(v1 - 144));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100410394(void *a1, unint64_t a2)
{
  v17 = a2;
  __dst[0].__r_.__value_.__s.__data_[0] = 0;
  v16 = 0;
  v12.__r_.__value_.__s.__data_[0] = 0;
  v14 = 0;
  if (sub_100009BCC(a1 + 45, &v17))
  {
    v3 = sub_100009978(a1 + 45, &v17);
    if (!v3)
    {
      sub_10017C290("unordered_map::at: key not found");
    }

    sub_1003FFAA0(__dst, v3 + 1);
  }

  v4 = sub_100009978(a1 + 40, &v17);
  if (!v4)
  {
    sub_10017C290("unordered_map::at: key not found");
  }

  for (i = v4[5]; i; i = *i)
  {
    sub_100012FB4(&__p, (i + 35));
    v6 = v11;
    if (v11 == 1)
    {
      if (v14 == 1 && v10 >= v13)
      {
LABEL_11:
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        continue;
      }

      sub_1003FFAA0(&v12, &__p);
      v6 = v11;
    }

    if (v6)
    {
      goto LABEL_11;
    }
  }

  if (v16 != v14 || !v16)
  {
    if (v16 != v14)
    {
      goto LABEL_19;
    }

LABEL_21:
    v7 = 0;
    goto LABEL_22;
  }

  if (sub_100013120(__dst, &v12))
  {
    goto LABEL_21;
  }

LABEL_19:
  sub_1004105AC(a1 + 45, &v17, &v12);
  sub_1004105AC(a1 + 50, &v17, __dst);
  v7 = 1;
LABEL_22:
  if (v14 == 1 && SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  if (v16 == 1 && SHIBYTE(__dst[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst[0].__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_10041053C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  if (a28 == 1 && a24 < 0)
  {
    operator delete(__p);
  }

  if (*(v28 - 32) == 1 && *(v28 - 57) < 0)
  {
    operator delete(*(v28 - 80));
  }

  _Unwind_Resume(exception_object);
}

char *sub_1004105AC(void *a1, unint64_t *a2, std::string *a3)
{
  v4 = sub_1004124F8(a1, a2);
  v5 = v4;
  if ((v6 & 1) == 0)
  {
    sub_1003FFAA0(v4 + 24, a3);
  }

  return v5;
}

void sub_100410600(uint64_t a1, unint64_t a2, __int128 *a3, __int128 *a4, _OWORD *a5, uint64_t a6, int a7, double a8)
{
  v14 = *(a1 + 32);
  sub_100012FB4(&__dst, a3);
  sub_100012FB4(&v25, a4);
  v15 = a5[13];
  v24[12] = a5[12];
  v24[13] = v15;
  v24[14] = a5[14];
  v16 = a5[9];
  v24[8] = a5[8];
  v24[9] = v16;
  v17 = a5[11];
  v24[10] = a5[10];
  v24[11] = v17;
  v18 = a5[5];
  v24[4] = a5[4];
  v24[5] = v18;
  v19 = a5[7];
  v24[6] = a5[6];
  v24[7] = v19;
  v20 = a5[1];
  v24[0] = *a5;
  v24[1] = v20;
  v21 = a5[3];
  v24[2] = a5[2];
  v24[3] = v21;
  sub_1004101CC(v14, a2, a8, v22, v23, v24, COERCE_UNSIGNED_INT64(*&a6) & (a6 << 31 >> 63), BYTE4(a6) & 1, a7);
  if (v27 == 1 && v26 < 0)
  {
    operator delete(v25);
  }

  if (v30 == 1 && v29 < 0)
  {
    operator delete(__dst);
  }
}

void sub_100410720(_Unwind_Exception *exception_object)
{
  if (*(v1 - 144) == 1 && *(v1 - 169) < 0)
  {
    operator delete(*(v1 - 192));
  }

  if (*(v1 - 88) == 1 && *(v1 - 113) < 0)
  {
    operator delete(*(v1 - 136));
  }

  _Unwind_Resume(exception_object);
}

void sub_10041076C(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4)
{
  sub_100012FB4(&__dst, a3);
  sub_100012FB4(&__p, a4);
  if (v7 == 1 && v6 < 0)
  {
    operator delete(__p);
  }

  if (v10 == 1 && v9 < 0)
  {
    operator delete(__dst);
  }
}

void sub_1004107E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (a25 == 1 && a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10041080C(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  v5 = a2[2];
  v3 = a2 + 2;
  v4 = v5;
  v6 = *(v3 - 1);
  *(result + 16) = v5;
  *(result + 8) = v6;
  *(v3 - 1) = 0;
  v7 = v3[1];
  *(result + 24) = v7;
  *(result + 32) = *(v3 + 4);
  if (v7)
  {
    v8 = *(v4 + 8);
    v9 = *(result + 8);
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

    *(v2 + 8 * v8) = result + 16;
    *v3 = 0;
    v3[1] = 0;
  }

  return result;
}

uint64_t sub_10041087C(uint64_t a1, uint64_t a2)
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

void sub_100410914(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_100410914(a1, *a2);
    sub_100410914(a1, a2[1]);
    sub_10027D480((a2 + 5), a2[6]);

    operator delete(a2);
  }
}

uint64_t sub_100410974(uint64_t a1)
{
  sub_1004109B0(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_1004109B0(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_1004109F4((v2 + 3));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t sub_1004109F4(uint64_t a1)
{
  for (i = 1224; i != 1208; i -= 8)
  {
    v3 = *(a1 + i);
    *(a1 + i) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  if (*(a1 + 960) == 1 && *(a1 + 959) < 0)
  {
    operator delete(*(a1 + 936));
  }

  sub_10002074C(a1 + 880, *(a1 + 888));
  sub_10002074C(a1 + 440, *(a1 + 448));
  if (*(a1 + 416) == 1 && *(a1 + 391) < 0)
  {
    operator delete(*(a1 + 368));
  }

  if (*(a1 + 360) == 1 && *(a1 + 335) < 0)
  {
    operator delete(*(a1 + 312));
  }

  if (*(a1 + 304) == 1 && *(a1 + 279) < 0)
  {
    operator delete(*(a1 + 256));
  }

  v4 = *(a1 + 248);
  if (v4)
  {
    sub_10000AD84(v4);
  }

  v5 = *(a1 + 144);
  *(a1 + 144) = 0;
  if (v5)
  {
    sub_1000197C8(v5 + 8);
    operator delete();
  }

  v6 = *(a1 + 120);
  *(a1 + 120) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(a1 + 112);
  if (v7)
  {
    sub_10000AD84(v7);
  }

  sub_1003FFE60(a1 + 72);
  sub_10038DBE4(a1 + 40);
  sub_10038DCE4(a1 + 8);
  return a1;
}

uint64_t sub_100410B6C(uint64_t a1)
{
  sub_100410BA8(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_100410BA8(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_100410974((v2 + 3));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void **sub_100410BEC(void **a1)
{
  sub_100410C28(a1, a1[2]);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_100410C28(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = v2;
      v2 = *v2;
      if (*(v3 + 72) == 1 && *(v3 + 47) < 0)
      {
        operator delete(v3[3]);
      }

      operator delete(v3);
    }

    while (v2);
  }
}

uint64_t sub_100410C80(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
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

void sub_100410D24(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1009AADE8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t *sub_100410D88(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 8);
  if (!v5)
  {
LABEL_8:
    sub_100410E44();
  }

  v6 = *a2;
  while (1)
  {
    while (1)
    {
      v7 = v5;
      v8 = *(v5 + 32);
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

uint64_t *sub_100410EE8(uint64_t a1, unsigned __int8 *a2, uint64_t a3, _BYTE **a4, void **a5)
{
  v5 = *(a1 + 8);
  if (!v5)
  {
LABEL_8:
    operator new();
  }

  v6 = *a2;
  while (1)
  {
    while (1)
    {
      v7 = v5;
      v8 = *(v5 + 32);
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

uint64_t *sub_100410FD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
LABEL_8:
    sub_10041108C();
  }

  v4 = *(a2 + 24);
  while (1)
  {
    while (1)
    {
      v5 = v3;
      v6 = *(v3 + 14);
      if (v4 >= v6)
      {
        break;
      }

      v3 = *v3;
      if (!*v5)
      {
        goto LABEL_8;
      }
    }

    if (v6 >= v4)
    {
      return v3;
    }

    v3 = v3[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }
}

void sub_100411130(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_10022FCD8(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_10041114C(void *a1, unint64_t *a2)
{
  result = sub_100009978(a1, a2);
  if (result)
  {
    sub_100021AE0(a1, result, v4);
    sub_100411198(v4);
    return 1;
  }

  return result;
}

uint64_t sub_100411198(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_1004109F4(v2 + 24);
    }

    operator delete(v2);
  }

  return a1;
}

void *sub_100411258(void *a1, __int128 *a2, _DWORD *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_1009AAE38;
  sub_1003C2284((a1 + 3), a2, a3);
  return a1;
}

void sub_1004112D4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1009AAE38;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_100411350(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    sub_100411584();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_100411570(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100411198(va);
  _Unwind_Resume(a1);
}

void *sub_100411638(void *a1, void **a2, uint64_t a3)
{
  *a1 = **a2;
  v5 = a1 + 1;
  v6 = **a3;
  sub_1003FFC98(v28, *(a3 + 8));
  sub_1003FFD30(v27, *(a3 + 16));
  v7 = *(a3 + 24);
  v9 = *v7;
  v8 = v7[1];
  v23 = v9;
  v24 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = *(a3 + 32);
  v11 = **(a3 + 40);
  v12 = **(a3 + 48);
  v13 = **(a3 + 56);
  v14 = *(a3 + 72);
  v15 = **(a3 + 64);
  v21[0] = 0;
  v22 = 0;
  if (*(v14 + 32) == 1)
  {
    for (i = 0; i != 32; i += 16)
    {
      v17 = *(v14 + i);
      *&v21[i] = v17;
      if (*(&v17 + 1))
      {
        atomic_fetch_add_explicit((*(&v17 + 1) + 8), 1uLL, memory_order_relaxed);
      }
    }

    v22 = 1;
  }

  v26 = 0;
  sub_1003FE768(v5, v6, v28, v27, &v23, v10, v11, v12, v13, v15, v21, v25);
  sub_1003FFE60(v25);
  if (v22 == 1)
  {
    for (j = 24; j != -8; j -= 16)
    {
      v19 = *&v21[j];
      if (v19)
      {
        sub_10000AD84(v19);
      }
    }
  }

  if (v24)
  {
    sub_10000AD84(v24);
  }

  sub_10038DBE4(v27);
  sub_10038DCE4(v28);
  return a1;
}

void sub_1004117C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, std::__shared_weak_count *);
  sub_1003FFE60(va1);
  if (v18 == 1)
  {
    for (i = 24; i != -8; i -= 16)
    {
      v12 = *(va + i);
      if (v12)
      {
        sub_10000AD84(v12);
      }
    }
  }

  if (v20)
  {
    sub_10000AD84(v20);
  }

  sub_10038DBE4(v9 - 104);
  sub_10038DCE4(v9 - 72);
  _Unwind_Resume(a1);
}

void *sub_100411834(void *a1, unint64_t *a2, void *a3)
{
  v3 = *a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_18;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = *a2;
    if (v3 >= *&v4)
    {
      v6 = v3 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_18;
    }

LABEL_17:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_18;
    }
  }

  if (v8[2] != v3)
  {
    goto LABEL_17;
  }

  return v8;
}

void sub_100411A84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100411A98(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100411A98(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_100410974(v2 + 24);
    }

    operator delete(v2);
  }

  return a1;
}

void *sub_100411AE4(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    sub_100411D18();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_100411D04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100411198(va);
  _Unwind_Resume(a1);
}

void *sub_100411DCC(void *a1, void **a2, uint64_t a3)
{
  *a1 = **a2;
  v5 = **a3;
  sub_1003FFC98(v24, *(a3 + 8));
  sub_1003FFD30(v23, *(a3 + 16));
  v6 = *(a3 + 24);
  v8 = *v6;
  v7 = v6[1];
  v19 = v8;
  v20 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = *(a3 + 32);
  v10 = **(a3 + 40);
  v11 = **(a3 + 48);
  v12 = **(a3 + 56);
  v13 = **(a3 + 64);
  v17[0] = 0;
  v18 = 0;
  v22 = 0;
  sub_1003FE768((a1 + 1), v5, v24, v23, &v19, v9, v10, v11, v12, v13, v17, v21);
  sub_1003FFE60(v21);
  if (v18 == 1)
  {
    for (i = 24; i != -8; i -= 16)
    {
      v15 = *&v17[i];
      if (v15)
      {
        sub_10000AD84(v15);
      }
    }
  }

  if (v20)
  {
    sub_10000AD84(v20);
  }

  sub_10038DBE4(v23);
  sub_10038DCE4(v24);
  return a1;
}

void sub_100411F14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, std::__shared_weak_count *);
  sub_1003FFE60(va1);
  if (v18 == 1)
  {
    for (i = 24; i != -8; i -= 16)
    {
      v12 = *(va + i);
      if (v12)
      {
        sub_10000AD84(v12);
      }
    }
  }

  if (v20)
  {
    sub_10000AD84(v20);
  }

  sub_10038DBE4(v9 - 104);
  sub_10038DCE4(v9 - 72);
  _Unwind_Resume(a1);
}

void *sub_100411F80(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    sub_1004121B4();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_1004121A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100411198(va);
  _Unwind_Resume(a1);
}

void *sub_100412270(void *a1, void **a2, uint64_t a3)
{
  *a1 = **a2;
  v5 = a1 + 1;
  v6 = **a3;
  sub_1003FFC98(v27, *(a3 + 8));
  sub_1003FFD30(v26, *(a3 + 16));
  v7 = *(a3 + 24);
  v9 = *v7;
  v8 = v7[1];
  v23 = v9;
  v24 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = *(a3 + 32);
  v11 = **(a3 + 40);
  v12 = **(a3 + 48);
  v13 = **(a3 + 56);
  v14 = *(a3 + 72);
  v15 = **(a3 + 64);
  v21[0] = 0;
  v22 = 0;
  if (*(v14 + 32) == 1)
  {
    for (i = 0; i != 32; i += 16)
    {
      v17 = *(v14 + i);
      *&v21[i] = v17;
      if (*(&v17 + 1))
      {
        atomic_fetch_add_explicit((*(&v17 + 1) + 8), 1uLL, memory_order_relaxed);
      }
    }

    v22 = 1;
  }

  sub_1003FFDC8(v25, *(a3 + 80));
  sub_1003FE768(v5, v6, v27, v26, &v23, v10, v11, v12, v13, v15, v21, v25);
  sub_1003FFE60(v25);
  if (v22 == 1)
  {
    for (j = 24; j != -8; j -= 16)
    {
      v19 = *&v21[j];
      if (v19)
      {
        sub_10000AD84(v19);
      }
    }
  }

  if (v24)
  {
    sub_10000AD84(v24);
  }

  sub_10038DBE4(v26);
  sub_10038DCE4(v27);
  return a1;
}

void sub_100412438(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va2, a9);
  va_start(va1, a9);
  va_start(va, a9);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, std::__shared_weak_count *);
  va_copy(va2, va1);
  v21 = va_arg(va2, void);
  v23 = va_arg(va2, void);
  v24 = va_arg(va2, void);
  v25 = va_arg(va2, void);
  sub_1003FFE60(va1);
  if (v18)
  {
    for (i = 24; i != -8; i -= 16)
    {
      v12 = *(va + i);
      if (v12)
      {
        sub_10000AD84(v12);
      }
    }
  }

  if (v20)
  {
    sub_10000AD84(v20);
  }

  sub_10038DBE4(va2);
  sub_10038DCE4(v9 - 136);
  _Unwind_Resume(a1);
}

uint64_t sub_1004124AC(void *a1, unint64_t *a2)
{
  result = sub_100009978(a1, a2);
  if (result)
  {
    sub_100021AE0(a1, result, v4);
    sub_100411A98(v4);
    return 1;
  }

  return result;
}

void *sub_1004124F8(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (result = *v6) == 0)
  {
LABEL_18:
    sub_100412724();
  }

  while (1)
  {
    v8 = result[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    result = *result;
    if (!result)
    {
      goto LABEL_18;
    }
  }

  if (result[2] != v2)
  {
    goto LABEL_17;
  }

  return result;
}

void sub_100412700(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    sub_1004127D4(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004127B8(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1004127D4(v3, v2);
  _Unwind_Resume(a1);
}

void sub_1004127D4(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 72) == 1 && *(__p + 47) < 0)
    {
      operator delete(__p[3]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void sub_100412870(uint64_t a1)
{

  operator delete();
}

id sub_1004128C4(uint64_t a1, void *a2)
{
  *a2 = off_1009AAE88;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

void sub_10041290C(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
}

uint64_t sub_100412924(uint64_t a1, uint64_t a2)
{
  if (sub_100023EF4(a2, &off_1009AAEE8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100412970(uint64_t *a1, unint64_t *a2, uint64_t *a3, __int128 *a4, __int128 *a5, _OWORD *a6, void *a7, unsigned __int8 *a8, __n128 a9)
{
  v9 = *a1;
  a9.n128_u64[0] = *a2;
  v10 = *a3;
  LOBYTE(v24) = 0;
  v28 = 0;
  if (*(a4 + 48) == 1)
  {
    v24 = *a4;
    v25 = *(a4 + 2);
    *(a4 + 8) = 0uLL;
    *a4 = 0;
    v26 = *(a4 + 24);
    v27 = *(a4 + 20);
    v28 = 1;
  }

  LOBYTE(v19) = 0;
  v23 = 0;
  if (*(a5 + 48) == 1)
  {
    v19 = *a5;
    v20 = *(a5 + 2);
    *(a5 + 8) = 0uLL;
    *a5 = 0;
    v21 = *(a5 + 24);
    v22 = *(a5 + 20);
    v23 = 1;
  }

  v11 = a6[5];
  v18[4] = a6[4];
  v18[5] = v11;
  v12 = a6[3];
  v18[2] = a6[2];
  v18[3] = v12;
  v13 = a6[9];
  v18[8] = a6[8];
  v18[9] = v13;
  v14 = a6[7];
  v18[6] = a6[6];
  v18[7] = v14;
  v15 = a6[14];
  v18[13] = a6[13];
  v18[14] = v15;
  v16 = a6[12];
  v18[11] = a6[11];
  v18[12] = v16;
  v18[10] = a6[10];
  v17 = a6[1];
  v18[0] = *a6;
  v18[1] = v17;
  (*(v9 + 16))(v9, v10, &v24, &v19, v18, *a7, *a8, a9);
  if (v23 == 1 && SHIBYTE(v20) < 0)
  {
    operator delete(v19);
  }

  if (v28 == 1 && SHIBYTE(v25) < 0)
  {
    operator delete(v24);
  }
}

void sub_100412AD0(_Unwind_Exception *a1)
{
  if (*(v2 - 112) == 1 && *(v2 - 137) < 0)
  {
    operator delete(*(v2 - 160));
  }

  sub_1004CEBD0((v1 + 48), v2 - 96);
  _Unwind_Resume(a1);
}

void sub_100412B04()
{
  v0 = objc_autoreleasePoolPush();
  v8[0] = xmmword_100571C9C;
  v8[1] = unk_100571CAC;
  sub_1001BD0B0(qword_1009F8E70, v8, 4);
  xmmword_1009F8E88 = xmmword_100563BD0;
  unk_1009F8E98 = xmmword_100563BE0;
  qword_1009F8EB0 = 0;
  unk_1009F8EB8 = 0;
  qword_1009F8EA8 = 0x3FD999999999999ALL;
  unk_1009F8EC0 = xmmword_100563BF0;
  dword_1009F8ED0 = 5;
  qword_1009F8ED8 = 0x4000000000000000;
  dword_1009F8EE0 = 5;
  byte_1009F8EE8 = 0;
  unk_1009F8EEC = 0x30000000ALL;
  xmmword_1009F8EF8 = xmmword_100563C00;
  unk_1009F8F08 = xmmword_100563C10;
  xmmword_1009F8F18 = xmmword_100563C20;
  qword_1009F8F28 = 0x3FE3333333333333;
  dword_1009F8F30 = 3;
  xmmword_1009F8F38 = xmmword_100563C30;
  unk_1009F8F48 = xmmword_100563C10;
  xmmword_1009F8F58 = xmmword_100563C00;
  qword_1009F8F68 = 0x3FE3333333333333;
  byte_1009F8F70 = 0;
  xmmword_1009F8F78 = xmmword_100563C40;
  unk_1009F8F88 = xmmword_100563C50;
  __asm { FMOV            V0.2D, #1.0 }

  v6 = _Q0;
  xmmword_1009F8F98 = _Q0;
  qword_1009F8FA8 = 0xBFD3333333333333;
  xmmword_1009F8FB0 = xmmword_100563C60;
  qword_1009F8FC0 = 0x3E99999A40000000;
  xmmword_1009F8FC8 = xmmword_100563BE0;
  qword_1009F8FE0 = 0;
  unk_1009F8FE8 = 0;
  qword_1009F8FD8 = 0x3FD999999999999ALL;
  xmmword_1009F8FF0 = xmmword_100563BF0;
  dword_1009F9000 = 5;
  qword_1009F9008 = 0x4000000000000000;
  dword_1009F9010 = 4;
  qword_1009F9018 = 0x300000008;
  qword_1009F9020 = 0xC04E800000000000;
  v7 = 0xC04E800000000000;
  sub_1001BD370(algn_1009F9028, &v7, 1);
  xmmword_1009F9040 = xmmword_100563C70;
  qword_1009F9050 = 0x4024000000000000;
  dword_1009F9058 = 45;
  byte_1009F9060 = 0;
  byte_1009F9078 = 0;
  qword_1009F9080 = 0;
  byte_1009F9088 = 0;
  dword_1009F908C = 1;
  byte_1009F9090 = 1;
  xmmword_1009F9098 = xmmword_100563C80;
  xmmword_1009F90A8 = xmmword_100563C90;
  xmmword_1009F90B8 = v6;
  qword_1009F90C8 = 0xC059000000000000;
  xmmword_1009F90D0 = xmmword_100563CA0;
  qword_1009F90E0 = vdup_n_s32(0x3DCCCCCDu);
  xmmword_1009F90E8 = xmmword_100563BE0;
  qword_1009F90F8 = 0x3FD999999999999ALL;
  xmmword_1009F9100 = 0u;
  unk_1009F9110 = xmmword_100563BF0;
  dword_1009F9120 = 5;
  qword_1009F9128 = 0x4000000000000000;
  dword_1009F9130 = 10;
  qword_1009F9138 = 0x4034000000000000;
  dword_1009F9140 = 3;
  xmmword_1009F9148 = xmmword_100563CB0;
  __cxa_atexit(sub_1001BB564, qword_1009F8E70, &_mh_execute_header);
  __cxa_atexit(nullsub_73, off_1009EC348, &_mh_execute_header);
  __cxa_atexit(nullsub_74, &off_1009EC350, &_mh_execute_header);
  objc_autoreleasePoolPop(v0);
}

double sub_100412E44(double *a1)
{
  v1 = (*a1 + 1.57079633) * 6378137.0;
  v2 = round(v1 * 0.0009765625) * 1024.0;
  v3 = v1 - v2;
  cos(v2 / 6378137.0 + -1.57079633);
  return v3;
}

double sub_100412EF0(double *a1, double *a2)
{
  v4 = round(((*a1 + 1.57079633) * 6378137.0 - *a2) * 0.0009765625) * 1024.0;
  v5 = (*a2 + v4) / 6378137.0 + -1.57079633 + 1.57079633;
  v6 = fmod(v5, 3.14159265);
  if (v5 >= 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = 3.14159265;
  }

  v8 = v6 + v7 + -1.57079633;
  v9 = cos(v4 / 6378137.0 + -1.57079633);
  fmod((a2[1] + round(((a1[1] + 3.14159265) * (v9 * 6378137.0) - a2[1]) * 0.0009765625) * 1024.0) / (v9 * 6378137.0) + -3.14159265 + 3.14159265, 6.28318531);
  return v8;
}

uint64_t sub_100413024(double a1)
{
  v1 = llround(log(a1 * 0.5) * 15.0 / 4.60517019);
  if (v1 >= 15)
  {
    v1 = 15;
  }

  return v1 & ~(v1 >> 31);
}

double sub_10041306C(unsigned int a1)
{
  v1 = exp(a1 / 15.0 * 4.60517019);
  result = v1 + v1;
  if (result < 2.0)
  {
    result = 2.0;
  }

  if (result > 200.0)
  {
    return 200.0;
  }

  return result;
}

void sub_1004130BC(uint64_t a1, void *a2)
{
  v4 = a2;
  *(a1 + 8) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *a1 = off_1009AAF08;
  *(a1 + 48) = 0;
  *(a1 + 280) = 0;
  *(a1 + 368) = 0;
  *(a1 + 376) = 0;
  *(a1 + 408) = 0;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 345) = 0u;
  v5 = [[CMAPrecisionFindingManagerAdapter alloc] initWithFindingManager:a1];
  v6 = *(a1 + 304);
  *(a1 + 304) = v5;

  if (v4)
  {
    objc_storeStrong((a1 + 288), a2);
    v7 = [[CMAPrecisionFindingManager alloc] initWithDelegate:*(a1 + 304) dispatchQueue:*(a1 + 288) findeeType:1];
    v8 = *(a1 + 296);
    *(a1 + 296) = v7;

    [*(a1 + 296) startDeviceFindingUpdates];
    operator new();
  }

  __assert_rtn("DeviceFinderAlgorithms", "DeviceFinderAlgorithms.mm", 31, "externalQueue");
}

void sub_100413300(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  dispatch_assert_queue_V2(*(a1 + 288));
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 240) = 0;
  *(a2 + 248) = 0;
  *(a2 + 256) = 0;
  *(a2 + 264) = 0;
  *(a2 + 272) = 0;
  *(a2 + 280) = 0;
  *(a2 + 288) = 0;
  *(a2 + 296) = 0;
  *(a2 + 304) = 0;
  *(a2 + 320) = 0;
  *(a2 + 336) = 0;
  *(a2 + 352) = 0;
  *(a2 + 368) = 0;
  *(a2 + 376) = 0;
  *(a2 + 384) = 0;
  *(a2 + 392) = 0;
  *(a2 + 400) = 0;
  *(a2 + 404) = 0;
  *(a2 + 408) = 0;
  *(a2 + 412) = 0;
  *(a2 + 416) = 0;
  *(a2 + 420) = 0;
  *(a2 + 424) = 0;
  *(a2 + 428) = 0;
  v4 = objc_autoreleasePoolPush();
  v5 = 0;
  if (*(a1 + 280) == 1)
  {
    v5 = *(a1 + 48);
  }

  v6 = *(a1 + 320);
  if (!v6 || ([v6 doubleValue], !*(a1 + 312)))
  {
    if (*(a1 + 32))
    {
      v10 = *(a1 + 8);
      *(a2 + 8) = v5;
      *(a2 + 16) = v10;
      *(a2 + 56) = 0;
      *(a2 + 60) = 0;
      *(a2 + 64) = 0;
      *(a2 + 68) = 0;
      *(a2 + 32) = 0;
      *(a2 + 40) = 0;
      *(a2 + 24) = 0x100800000;
      *(a2 + 72) = 0;
      *(a2 + 80) = 0;
      *(a2 + 88) = 0;
      *(a2 + 160) = 0;
      *(a2 + 168) = 0u;
      *(a2 + 184) = 0u;
      *(a2 + 200) = 0u;
      *(a2 + 216) = 0u;
      *(a2 + 232) = 0;
      *(a2 + 121) = 0u;
      *(a2 + 96) = 0u;
      *(a2 + 112) = 0u;
      *(a2 + 240) = 1;
      *(a2 + 412) = 0;
      *(a2 + 416) = 1;
      *(a2 + 420) = sub_1004136F8(a1);
      *(a2 + 424) = 1;
      goto LABEL_11;
    }

LABEL_15:
    sub_1000195BC();
  }

  *(a2 + 412) = 7;
  *(a2 + 416) = 1;
  if ((*(a1 + 32) & 1) == 0)
  {
    goto LABEL_15;
  }

  v8 = v7;
  v9 = *(a1 + 8);
  if (*(a2 + 240) == 1)
  {
    *(a2 + 240) = 0;
  }

  *(a2 + 8) = v5;
  *(a2 + 16) = v9;
  *(a2 + 24) = v8;
  *(a2 + 28) = 1;
  *(a2 + 56) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 60) = 0;
  *(a2 + 64) = 0;
  *(a2 + 68) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 121) = 0u;
  *(a2 + 160) = 0;
  *(a2 + 168) = 0u;
  *(a2 + 184) = 0u;
  *(a2 + 200) = 0u;
  *(a2 + 216) = 0u;
  *(a2 + 232) = 0;
  *(a2 + 240) = 1;
  sub_100413598(a1, a2, LODWORD(v8) | &_mh_execute_header);
LABEL_11:
  objc_autoreleasePoolPop(v4);
  v14 = [*(a1 + 352) mutableCopy];
  if ((*(a2 + 240) & 1) == 0)
  {
    sub_1000195BC();
  }

  v11 = [NSNumber numberWithDouble:*(a2 + 24)];
  [v14 setObject:v11 forKey:@"DISPLAYED_DISTANCE"];

  v12 = [v14 copy];
  v13 = *(a1 + 352);
  *(a1 + 352) = v12;
}

id sub_100413598(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [*(a1 + 312) convergenceStatus];
  v7 = *(a1 + 328);
  v8 = 0;
  if (v7)
  {
    [v7 doubleValue];
    v10 = v9;
    v11 = 1;
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  v12 = *(a1 + 336);
  if (v12)
  {
    [v12 doubleValue];
    v8 = v13;
    v14 = 1;
  }

  else
  {
    v14 = 0;
  }

  *a2 = v6 == 2;
  if (v6 == 2)
  {
    if (*(a2 + 272) == BYTE4(a3))
    {
      if (*(a2 + 272))
      {
        *(a2 + 264) = *&a3;
      }
    }

    else if (*(a2 + 272))
    {
      *(a2 + 272) = 0;
    }

    else
    {
      *(a2 + 264) = *&a3;
      *(a2 + 272) = 1;
    }

    *(a2 + 248) = v10;
    *(a2 + 256) = v11;
    *(a2 + 368) = v8;
    *(a2 + 376) = v14;
    *(a2 + 412) = 6;
    *(a2 + 416) = 1;
  }

  if ([*(a1 + 312) revokeReason])
  {
    if ([*(a1 + 312) revokeReason] == 2)
    {
      v15 = 2;
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = sub_1004136F8(a1);
  }

  *(a2 + 420) = v15;
  *(a2 + 424) = 1;
  result = [*(a1 + 312) verticalState];
  if (result)
  {
    result = [*(a1 + 312) verticalState];
    v17 = 4 * (result == 2);
    if (result == 1)
    {
      v17 = 1;
    }

    *(a2 + 280) = v17;
  }

  return result;
}

void *sub_1004136F8(uint64_t a1)
{
  result = *(a1 + 344);
  if (result)
  {
    v3 = [result motionState];
    if (v3 < 8 && ((0x8Bu >> v3) & 1) != 0)
    {
      return dword_100571FDC[v3];
    }

    else
    {
      v4 = qword_1009F9820;
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_1004CEC04(v5, [*(a1 + 344) motionState], v4);
      }

      return 0;
    }
  }

  return result;
}

void sub_1004137D4(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 181) != 1 || *(a2 + 180) > 2u)
  {

    sub_1004138FC(a1, a2);
  }

  else
  {
    v4 = qword_1009F9820;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      if ((*(a2 + 181) & 1) == 0)
      {
        sub_1000195BC();
      }

      v6 = *(a2 + 180);
      v7[0] = 67109120;
      v7[1] = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#findalgs-devicefinder,mmsValStatus %d does not pass check, rejecting range result event", v7, 8u);
    }
  }
}

void sub_1004138FC(uint64_t a1, uint64_t a2)
{
  dispatch_assert_queue_V2(*(a1 + 288));
  v4 = objc_autoreleasePoolPush();
  sub_100224EF8(728958080, 1, 0, 0, 0, 0);
  sub_100413AC0(a1, a2, *(a1 + 360));
  sub_100224EF8(728958080, 2, 0, 0, 0, 0);
  v5 = *(a1 + 280);
  v7 = *(a2 + 16);
  v6 = *(a2 + 32);
  *(a1 + 48) = *a2;
  *(a1 + 64) = v7;
  *(a1 + 80) = v6;
  v8 = *(a2 + 96);
  v10 = *(a2 + 48);
  v9 = *(a2 + 64);
  *(a1 + 128) = *(a2 + 80);
  *(a1 + 144) = v8;
  *(a1 + 96) = v10;
  *(a1 + 112) = v9;
  v11 = *(a2 + 160);
  v13 = *(a2 + 112);
  v12 = *(a2 + 128);
  *(a1 + 192) = *(a2 + 144);
  *(a1 + 208) = v11;
  *(a1 + 160) = v13;
  *(a1 + 176) = v12;
  v15 = *(a2 + 192);
  v14 = *(a2 + 208);
  v16 = *(a2 + 176);
  *(a1 + 272) = *(a2 + 224);
  *(a1 + 240) = v15;
  *(a1 + 256) = v14;
  *(a1 + 224) = v16;
  if ((v5 & 1) == 0)
  {
    *(a1 + 280) = 1;
  }

  v17 = objc_opt_new();
  [v17 setTimestamp:*(a2 + 8)];
  [v17 setRange:*(a2 + 16)];
  [v17 setRangeError:*(a2 + 40)];
  if (*(a2 + 72))
  {
    [v17 setRssi:*(a2 + 64)];
  }

  if ((*(a2 + 176) & 0x10000) != 0)
  {
    [v17 setCycleIndex:*(a2 + 176)];
  }

  if (*(a1 + 296))
  {
    sub_100224EF8(728958084, 1, 0, 0, 0, 0);
    [*(a1 + 296) updateRanging:v17];
    sub_100224EF8(728958084, 2, 0, 0, 0, 0);
  }

  objc_autoreleasePoolPop(v4);
}

void sub_100413AC0(uint64_t a1, uint64_t a2, int a3)
{
  dispatch_assert_queue_V2(*(a1 + 288));
  v6 = *(a2 + 8);
  if (*(a1 + 408) == 1 && v6 <= *(a1 + 400))
  {
    v10 = qword_1009F9820;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      if ((*(a1 + 408) & 1) == 0)
      {
        sub_1000195BC();
      }

      v11 = *(a2 + 8);
      v12 = *(a2 + 16);
      v13 = *(a1 + 400);
      *buf = 134218496;
      *&buf[4] = v12;
      *&buf[12] = 2048;
      *&buf[14] = v11;
      *&buf[22] = 2048;
      v16 = v13;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#findalgs-devicefinder,Not passing range measurement to range filter, range: %0.2f m, timestamp: %f s, range filter time: %f s", buf, 0x20u);
    }
  }

  else
  {
    v7 = *(a2 + 16);
    *buf = *(a2 + 8);
    *&buf[8] = v7;
    *&buf[16] = 0x3FB999999999999ALL;
    LODWORD(v16) = 0;
    v8 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 134218240;
      *&v14[4] = v7;
      *&v14[12] = 2048;
      *&v14[14] = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#findalgs-devicefinder,Passing range measurement to range filter, range: %0.2f m, timestamp: %f s", v14, 0x16u);
    }

    sub_1003C9B88(*(a1 + 368), buf, a3, 1, v14);
    if (*(a1 + 408) == 1)
    {
      *(a1 + 408) = 0;
    }

    v9 = *&v14[16];
    *(a1 + 376) = *v14;
    *(a1 + 392) = v9;
    *(a1 + 408) = 1;
  }
}

void sub_100413CB4(uint64_t a1, double *a2)
{
  dispatch_assert_queue_V2(*(a1 + 288));
  v4 = objc_autoreleasePoolPush();
  v5 = objc_opt_new();
  [v5 setTimestamp:*a2];
  [v5 setQuaternion:{a2[8], a2[9], a2[10], a2[7]}];
  [v5 setRotationRate:{a2[4], a2[5], a2[6]}];
  [v5 setAcceleration:{a2[1], a2[2], a2[3]}];
  v6 = *(a1 + 296);
  if (v6)
  {
    [v6 updateDeviceMotion:v5];
  }

  objc_autoreleasePoolPop(v4);
}

void sub_100413D74(uint64_t a1, _BYTE *a2)
{
  dispatch_assert_queue_V2(*(a1 + 288));
  v4 = objc_autoreleasePoolPush();
  v5 = objc_opt_new();
  v6 = v5;
  if (*a2)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  [v5 setCrown:v7];
  if (a2[1])
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  [v6 setWrist:v8];
  v9 = *(a1 + 296);
  if (v9)
  {
    [v9 updateWatchOrientation:v6];
  }

  objc_autoreleasePoolPop(v4);
}

void sub_100413E2C(uint64_t a1, uint64_t a2)
{
  dispatch_assert_queue_V2(*(a1 + 288));
  v4 = objc_autoreleasePoolPush();
  if (*(a2 + 16) == 1)
  {
    v5 = *(a2 + 8);
    *(a1 + 360) = v5 != 0;
    if (v5 == 2)
    {
      v6 = 3;
    }

    else if (v5 == 1)
    {
      v6 = 7;
    }

    else
    {
      v6 = v5 == 0;
    }

    [*(a1 + 344) setMotionState:v6];
  }

  else
  {
    [*(a1 + 344) setMotionState:0];
    *(a1 + 360) = 1;
  }

  v11 = 0.0;
  if (*(a2 + 128) == 1)
  {
    sub_1003FD084(a1, &v11, *(a2 + 120));
    if (v7)
    {
      [*(a1 + 344) setTimestamp:v11];
      v8 = *(a1 + 296);
      if (v8)
      {
        [v8 updatePeerState:*(a1 + 344)];
      }

      v9 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
      {
        sub_1004CEC90(v9);
      }
    }

    else
    {
      v10 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
      {
        sub_1004CEC4C(v10);
      }
    }
  }

  objc_autoreleasePoolPop(v4);
}

void sub_100413F78(uint64_t a1, double *a2)
{
  dispatch_assert_queue_V2(*(a1 + 288));
  v4 = objc_autoreleasePoolPush();
  v5 = objc_opt_new();
  [v5 setMachAbsoluteTimestamp:*a2];
  [v5 setRelativeAltitude:a2[1]];
  [v5 setPressure:a2[2]];
  v6 = *(a1 + 296);
  if (v6)
  {
    [v6 updateAltimeterData:v5];
  }

  objc_autoreleasePoolPop(v4);
}

void sub_10041401C(uint64_t a1)
{
  [*(a1 + 304) invalidate];
  [*(a1 + 296) stopDeviceFindingUpdates];
  v2 = *(a1 + 296);
  *(a1 + 296) = 0;

  v3 = *(a1 + 352);
  *(a1 + 352) = 0;
}

void sub_100414070(uint64_t a1, void *a2)
{
  v15 = a2;
  dispatch_assert_queue_V2(*(a1 + 288));
  objc_storeStrong((a1 + 312), a2);
  if (*(a1 + 312))
  {
    v4 = [*(a1 + 352) mutableCopy];
    v5 = [*(a1 + 312) horizontalDistanceNumber];
    v6 = *(a1 + 320);
    *(a1 + 320) = v5;

    v7 = [*(a1 + 312) horizontalAngleNumber];
    v8 = *(a1 + 328);
    *(a1 + 328) = v7;

    v9 = [*(a1 + 312) horizontalAngleAccuracyNumber];
    v10 = *(a1 + 336);
    *(a1 + 336) = v9;

    v11 = *(a1 + 320);
    if (v11)
    {
      [v4 setObject:v11 forKey:@"CMA_DISTANCE"];
    }

    v12 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*(a1 + 312) revokeReason]);
    [v4 setObject:v12 forKey:@"REVOKE_REASON"];

    v13 = [v4 copy];
    v14 = *(a1 + 352);
    *(a1 + 352) = v13;
  }
}

void sub_1004141CC(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_assert_queue_V2(*(a1 + 288));
  v4 = [*(a1 + 352) mutableCopy];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v5 objectForKeyedSubscript:{v9, v13}];
        [v4 setObject:v10 forKey:v9];
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v11 = [v4 copy];
  v12 = *(a1 + 352);
  *(a1 + 352) = v11;
}

void sub_1004143B8(uint64_t a1)
{
  sub_1004143F0(a1);

  operator delete();
}

uint64_t sub_1004143F0(uint64_t a1)
{
  *a1 = off_1009AAF08;
  sub_1003AFB60((a1 + 368), 0);

  return a1;
}

void sub_100414484()
{
  v0 = objc_autoreleasePoolPush();
  v1 = xmmword_100571F50;
  v2[0] = unk_100571F60;
  v2[1] = xmmword_100571F70;
  v2[2] = unk_100571F80;
  qword_1009F9160 = 0;
  unk_1009F9168 = 0;
  qword_1009F9158 = 0;
  sub_10004EEB8(&qword_1009F9158, &v1, &v3, 4uLL);
  __cxa_atexit(sub_100045220, &qword_1009F9158, &_mh_execute_header);
  v1 = xmmword_100571F90;
  qword_1009F9178 = 0;
  unk_1009F9180 = 0;
  qword_1009F9170 = 0;
  sub_10004EEB8(&qword_1009F9170, &v1, v2, 1uLL);
  __cxa_atexit(sub_100045220, &qword_1009F9170, &_mh_execute_header);
  objc_autoreleasePoolPop(v0);
}

double *sub_1004145A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = 0x100000003;
  v13 = off_1009A8F78;
  v14 = xmmword_10056EDA0;
  v16 = &v17;
  sub_1003A920C(a1, a2, &v13);
  v30 = 0x100000003;
  v28 = off_1009A8F78;
  v29 = xmmword_10056EDA0;
  v31 = &v32;
  v25 = 0x100000134;
  v23 = off_1009A9168;
  v24 = xmmword_10056EEA0;
  v26 = &v27;
  v20 = 0x100000003;
  v18 = off_1009A8F78;
  v19 = xmmword_10056EDA0;
  v21 = &v22;
  sub_1003AFEC0(&v13, &v28, &v23, &v18, "2");
  v7 = v6;
  *sub_1003AFDBC(a3, 0) = v6;
  if (v7 == 0.0)
  {
    *sub_1003A8DB0(a4, 0, 0) = 0;
    *sub_1003A8DB0(a4, 0, 1) = 0;
    result = sub_1003A8DB0(a4, 0, 2);
    *result = 0.0;
  }

  else
  {
    v8 = sub_1002EB67C(&v13, 0);
    v9 = 1.0 / v7;
    *sub_1003A8DB0(a4, 0, 0) = 1.0 / v7 * v8;
    v10 = sub_1002EB67C(&v13, 1);
    *sub_1003A8DB0(a4, 0, 1) = v9 * v10;
    v11 = sub_1002EB67C(&v13, 2);
    result = sub_1003A8DB0(a4, 0, 2);
    *result = v9 * v11;
  }

  return result;
}

void sub_1004147CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = 0x100000003;
  v25 = off_1009A8F78;
  v26 = xmmword_10056EDA0;
  v28 = &v29;
  sub_1003A920C(a1, a2, &v25);
  v22 = 0x100000003;
  v20 = off_1009A8F78;
  v21 = xmmword_10056EDA0;
  v23 = &v24;
  sub_1003A90A8(a3, &v25, &v20);
  v42 = 0x100000003;
  v40 = off_1009A8F78;
  v41 = xmmword_10056EDA0;
  v43 = &v44;
  v37 = 0x100000134;
  v36 = xmmword_10056EEA0;
  v35 = off_1009A9168;
  v38 = v39;
  v32 = 0x100000003;
  v31 = xmmword_10056EDA0;
  v30 = off_1009A8F78;
  v33 = &v34;
  sub_1003AFEC0(&v20, &v40, &v35, &v30, "2");
  v9 = v8;
  v10 = sub_1002EB67C(&v20, 0);
  v11 = sub_1002EB67C(&v20, 1);
  v12 = sub_1002EB67C(&v20, 2);
  if (v9 != 0.0)
  {
    v13 = v12;
    v14 = sub_1003AFDBC(a4, 0);
    *v14 = atan2(v13, v11);
    v15 = sub_1003AFDBC(a4, 1);
    *v15 = asin(v10 / v9);
    v16 = v13 * v13 + v11 * v11;
    v17 = 1.0 / (v9 * v9);
    *sub_1003A8DB0(a5, 0, 0) = 0;
    v18 = sqrt(v16);
    *sub_1003A8DB0(a5, 1, 0) = v17 * v18;
    v19 = sub_1003A8DB0(a5, 0, 1);
    if (v16 == 0.0)
    {
      *v19 = 0.0;
      *sub_1003A8DB0(a5, 0, 2) = 0;
      *sub_1003A8DB0(a5, 1, 1) = 0;
      *sub_1003A8DB0(a5, 1, 2) = 0;
    }

    else
    {
      *v19 = -v13 / v16;
      *sub_1003A8DB0(a5, 0, 2) = v11 / v16;
      *sub_1003A8DB0(a5, 1, 1) = v17 * (-(v10 * v11) / v18);
      *sub_1003A8DB0(a5, 1, 2) = v17 * (-(v10 * v13) / v18);
    }
  }

  v37 = 0x300000002;
  v36 = xmmword_10056FAE0;
  v35 = off_1009A9E98;
  v38 = v39;
  sub_1003A90A8(a5, a3, &v35);
  sub_1003A8CFC(a5, &v35);
}

void sub_100414B4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = 0x300000001;
  v13 = off_1009A9E50;
  v14 = xmmword_10056FAD0;
  v16 = &v17;
  sub_1004145A0(a3, a4, a5, &v13);
  v10 = 0x300000001;
  v8 = off_1009A9E50;
  v9 = xmmword_10056FAD0;
  v11 = &v12;
  sub_1003A90A8(&v13, a2, &v8);
  sub_1003A8CFC(a6, &v8);
}

void sub_100414C2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16 = 0x300000002;
  v14 = off_1009A9E98;
  v15 = xmmword_10056FAE0;
  v17 = &v18;
  sub_1004147CC(a3, a4, a5, a6, &v14);
  v11 = 0x300000002;
  v9 = off_1009A9E98;
  v10 = xmmword_10056FAE0;
  v12 = &v13;
  sub_1003A90A8(&v14, a2, &v9);
  sub_1003A8CFC(a7, &v9);
}

double *sub_100414D10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1002EB67C(a1, 0);
  v7 = sub_1002EB67C(a1, 1);
  v8 = sub_1002EB67C(a1, 2);
  v9 = __sincos_stret(v8);
  v10 = __sincos_stret(v7);
  v11 = v6 * v9.__cosval;
  *sub_1003AFDBC(a2, 0) = v10.__sinval * (v6 * v9.__cosval);
  *sub_1003AFDBC(a2, 1) = v6 * v9.__sinval;
  v12 = v10.__cosval * (v6 * v9.__cosval);
  *sub_1003AFDBC(a2, 2) = v12;
  *sub_1003A8DB0(a3, 0, 0) = v10.__sinval * v9.__cosval;
  *sub_1003A8DB0(a3, 1, 0) = v9.__sinval;
  *sub_1003A8DB0(a3, 2, 0) = v10.__cosval * v9.__cosval;
  *sub_1003A8DB0(a3, 0, 1) = v12;
  *sub_1003A8DB0(a3, 1, 1) = 0;
  *sub_1003A8DB0(a3, 2, 1) = v10.__sinval * -(v6 * v9.__cosval);
  v13 = -(v6 * v9.__sinval);
  *sub_1003A8DB0(a3, 0, 2) = v10.__sinval * v13;
  *sub_1003A8DB0(a3, 1, 2) = v11;
  result = sub_1003A8DB0(a3, 2, 2);
  *result = v10.__cosval * v13;
  return result;
}

void sub_100414EB4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1002EB67C(a1, 0);
  v5 = sub_1002EB67C(a1, 1);
  v6 = sub_1002EB67C(a1, 2);
  *(a2 + 24) = 0x100000003;
  *a2 = off_1009A8F78;
  *(a2 + 8) = xmmword_10056EDA0;
  *(a2 + 32) = a2 + 40;
  *sub_1003AFDBC(a2, 0) = sqrt(v5 * v5 + v4 * v4 + v6 * v6);
  if (*sub_1003AFDBC(a2, 0) <= 0.0)
  {
    *sub_1003AFDBC(a2, 1) = 0;
    *sub_1003AFDBC(a2, 2) = 0;
  }

  else
  {
    v7 = sub_1003AFDBC(a2, 1);
    *v7 = atan2(v4, v6);
    v8 = *sub_1003AFDBC(a2, 0);
    v9 = sub_1003AFDBC(a2, 2);
    *v9 = asin(v5 / v8);
  }
}

long double sub_100415018@<D0>(uint64_t a1@<X8>, double a2@<D0>, long double a3@<D1>, long double a4@<D2>)
{
  *(a1 + 24) = 0x100000003;
  *a1 = off_1009A8F78;
  *(a1 + 8) = xmmword_10056EDA0;
  *(a1 + 32) = a1 + 40;
  v8 = sub_1003AFDBC(a1, 0);
  *v8 = sin(a3) * a2;
  v9 = sub_1003AFDBC(a1, 1);
  v10 = cos(a3) * a2;
  *v9 = v10 * cos(a4);
  v11 = sub_1003AFDBC(a1, 2);
  result = v10 * sin(a4);
  *v11 = result;
  return result;
}

double sub_10041511C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 24) = 0x300000003;
  *a2 = off_1009A8FC0;
  *(a2 + 8) = xmmword_10056EDB0;
  *(a2 + 32) = a2 + 40;
  sub_1003A8C00(a2, 3, 3);
  sub_1003A8C50(a2, 0.0);
  v4 = sub_1002EB67C(a1, 0);
  v5 = sub_1002EB67C(a1, 1);
  v6 = sub_1002EB67C(a1, 2);
  v7 = sub_1002EB67C(a1, 3);
  v14 = v5 * v5;
  v15 = v4 * v4;
  *sub_1003A8DB0(a2, 0, 0) = v4 * v4 - v5 * v5 - v6 * v6 + v7 * v7;
  *sub_1003A8DB0(a2, 1, 0) = v4 * v5 + v6 * v7 + v4 * v5 + v6 * v7;
  v8 = v4 * v6;
  v9 = v5 * v7;
  *sub_1003A8DB0(a2, 2, 0) = v4 * v6 - v5 * v7 + v4 * v6 - v5 * v7;
  *sub_1003A8DB0(a2, 0, 1) = v4 * v5 - v6 * v7 + v4 * v5 - v6 * v7;
  *sub_1003A8DB0(a2, 1, 1) = v5 * v5 - v4 * v4 - v6 * v6 + v7 * v7;
  v10 = v4 * v7;
  v11 = v5 * v6;
  *sub_1003A8DB0(a2, 2, 1) = v11 + v10 + v11 + v10;
  *sub_1003A8DB0(a2, 0, 2) = v8 + v9 + v8 + v9;
  *sub_1003A8DB0(a2, 1, 2) = v11 - v10 + v11 - v10;
  v12 = sub_1003A8DB0(a2, 2, 2);
  result = -v15 - v14 + v6 * v6 + v7 * v7;
  *v12 = result;
  return result;
}

double sub_10041537C(double a1)
{
  v1 = 1.0;
  if (a1 <= 1.0)
  {
    return v1;
  }

  v1 = 5.0;
  if (a1 >= 10.0)
  {
    return v1;
  }

  else
  {
    return (a1 + -1.0) * 0.444444444 + 1.0;
  }
}

void sub_1004153BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = 0x100000003;
  v27 = xmmword_10056EDA0;
  v26 = off_1009A8F78;
  v29 = &v30;
  v6 = sub_1002EB67C(a1, 0);
  *sub_1003AFDBC(&v26, 0) = v6;
  v7 = sub_1002EB67C(a1, 1);
  *sub_1003AFDBC(&v26, 1) = v7;
  v8 = sub_1002EB67C(a1, 2);
  *sub_1003AFDBC(&v26, 2) = v8;
  v9 = sub_1002EB67C(a1, 3);
  v10 = __sincos_stret(v9);
  v23 = 0x300000003;
  v22 = xmmword_10056EDB0;
  v21 = off_1009A8FC0;
  v24 = &v25;
  *sub_1003A8DB0(&v21, 0, 0) = v10.__cosval;
  *sub_1003A8DB0(&v21, 1, 0) = 0;
  *sub_1003A8DB0(&v21, 2, 0) = -v10.__sinval;
  *sub_1003A8DB0(&v21, 0, 1) = 0;
  *sub_1003A8DB0(&v21, 1, 1) = 0x3FF0000000000000;
  *sub_1003A8DB0(&v21, 2, 1) = 0;
  *sub_1003A8DB0(&v21, 0, 2) = v10.__sinval;
  *sub_1003A8DB0(&v21, 1, 2) = 0;
  *sub_1003A8DB0(&v21, 2, 2) = v10.__cosval;
  v13 = 0x100000003;
  v11 = off_1009A8F78;
  v12 = xmmword_10056EDA0;
  v14 = &v15;
  sub_1003A90A8(&v21, a2, &v11);
  v18 = 0x100000003;
  v16 = off_1009A8F78;
  v17 = xmmword_10056EDA0;
  v19 = &v20;
  sub_1003A8EBC(&v11, &v26, &v16);
  sub_1003A8CFC(a3, &v16);
}

double sub_100415650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = 0x100000003;
  v35 = xmmword_10056EDA0;
  v34 = off_1009A8F78;
  v37 = &v38;
  v8 = sub_1002EB67C(a1, 0);
  *sub_1003AFDBC(&v34, 0) = v8;
  v9 = sub_1002EB67C(a1, 1);
  *sub_1003AFDBC(&v34, 1) = v9;
  v10 = sub_1002EB67C(a1, 2);
  *sub_1003AFDBC(&v34, 2) = v10;
  v11 = sub_1002EB67C(a1, 3);
  v12 = __sincos_stret(v11);
  v31 = 0x300000003;
  v30 = xmmword_10056EDB0;
  v29 = off_1009A8FC0;
  v32 = &v33;
  *sub_1003A8DB0(&v29, 0, 0) = v12.__cosval;
  *sub_1003A8DB0(&v29, 1, 0) = 0;
  *sub_1003A8DB0(&v29, 2, 0) = -v12.__sinval;
  *sub_1003A8DB0(&v29, 0, 1) = 0;
  *sub_1003A8DB0(&v29, 1, 1) = 0x3FF0000000000000;
  *sub_1003A8DB0(&v29, 2, 1) = 0;
  *sub_1003A8DB0(&v29, 0, 2) = v12.__sinval;
  *sub_1003A8DB0(&v29, 1, 2) = 0;
  *sub_1003A8DB0(&v29, 2, 2) = v12.__cosval;
  v26 = 0x100000003;
  v25 = xmmword_10056EDA0;
  v24 = off_1009A8F78;
  v27 = &v28;
  sub_1003A90A8(&v29, a2, &v24);
  v21 = 0x100000003;
  v19 = off_1009A8F78;
  v20 = xmmword_10056EDA0;
  v22 = v23;
  sub_1003A8EBC(&v24, &v34, &v19);
  sub_1003A8CFC(a3, &v19);
  v21 = 0x400000003;
  v19 = off_1009A9008;
  v20 = xmmword_10056EDC0;
  v22 = v23;
  sub_1003A8C00(&v19, 3, 4);
  sub_1003A8C50(&v19, 0.0);
  sub_1003A8CFC(a4, &v19);
  *sub_1003A8DB0(a4, 0, 0) = 0x3FF0000000000000;
  *sub_1003A8DB0(a4, 1, 1) = 0x3FF0000000000000;
  *sub_1003A8DB0(a4, 2, 2) = 0x3FF0000000000000;
  v13 = sub_1002EB67C(a2, 0);
  v14 = sub_1002EB67C(a2, 2);
  *sub_1003A8DB0(a4, 0, 3) = v12.__cosval * v14 + -v12.__sinval * v13;
  v15 = sub_1002EB67C(a2, 0);
  v16 = sub_1002EB67C(a2, 2);
  v17 = sub_1003A8DB0(a4, 2, 3);
  result = v16 * -v12.__sinval - v12.__cosval * v15;
  *v17 = result;
  return result;
}

double *sub_100415A1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1002EB67C(a1, 3);
  v32 = 0x100000003;
  v30 = off_1009A8F78;
  v31 = xmmword_10056EDA0;
  v33 = &v34;
  sub_1004153BC(a1, a3, &v30);
  v27 = 0x100000003;
  v25 = off_1009A8F78;
  v26 = xmmword_10056EDA0;
  v28 = &v29;
  sub_1003A920C(&v30, a2, &v25);
  v47 = 0x100000003;
  v45 = off_1009A8F78;
  v46 = xmmword_10056EDA0;
  v48 = &v49;
  v42 = 0x100000134;
  v41 = xmmword_10056EEA0;
  v40 = off_1009A9168;
  v43 = &v44;
  v37 = 0x100000003;
  v36 = xmmword_10056EDA0;
  v35 = off_1009A8F78;
  v38 = &v39;
  sub_1003AFEC0(&v25, &v45, &v40, &v35, "2");
  v12 = v11;
  *sub_1003AFDBC(a4, 0) = v11;
  if (v12 == 0.0)
  {
    *sub_1003A8DB0(a5, 0, 0) = 0;
    *sub_1003A8DB0(a5, 0, 1) = 0;
    *sub_1003A8DB0(a5, 0, 2) = 0;
    result = sub_1003A8DB0(a5, 0, 3);
    *result = 0.0;
  }

  else
  {
    v13 = __sincos_stret(v10);
    v14 = 1.0 / v12;
    v15 = sub_1002EB67C(&v25, 0);
    *sub_1003A8DB0(a5, 0, 0) = v14 * v15;
    v16 = sub_1002EB67C(&v25, 1);
    *sub_1003A8DB0(a5, 0, 1) = v14 * v16;
    v17 = sub_1002EB67C(&v25, 2);
    *sub_1003A8DB0(a5, 0, 2) = v14 * v17;
    v18 = sub_1002EB67C(a3, 0);
    v19 = v13.__cosval * sub_1002EB67C(a3, 2) - v13.__sinval * v18;
    v20 = sub_1002EB67C(a3, 0);
    v21 = -(v13.__sinval * sub_1002EB67C(a3, 2)) - v13.__cosval * v20;
    v22 = sub_1002EB67C(&v25, 0);
    v23 = sub_1002EB67C(&v25, 2);
    result = sub_1003A8DB0(a5, 0, 3);
    *result = v14 * (v21 * v23 + v19 * v22);
  }

  return result;
}

void sub_100415D70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1002EB67C(a1, 0);
  v7 = sub_1002EB67C(a1, 1);
  v8 = sub_1002EB67C(a1, 2);
  v9 = sqrt(v7 * v7 + v6 * v6 + v8 * v8);
  *sub_1003AFDBC(a2, 0) = v9;
  if (v9 <= 0.0)
  {
    *sub_1003AFDBC(a2, 1) = 0;
    *sub_1003AFDBC(a2, 2) = 0;
    v20 = 0x300000003;
    v18 = off_1009A8FC0;
    v19 = xmmword_10056EDB0;
    v21 = &v22;
    sub_1003A8C00(&v18, 3, 3);
    sub_1003A8C50(&v18, 0.0);
    sub_1003A8CFC(a3, &v18);
  }

  else
  {
    v10 = atan2(v6, v8);
    *sub_1003AFDBC(a2, 1) = v10;
    v11 = asin(v7 / v9);
    *sub_1003AFDBC(a2, 2) = v11;
    v12 = sub_1002EB67C(a1, 0) / v9;
    *sub_1003A8DB0(a3, 0, 0) = v12;
    v13 = sub_1002EB67C(a1, 1) / v9;
    *sub_1003A8DB0(a3, 0, 1) = v13;
    v14 = sub_1002EB67C(a1, 2) / v9;
    *sub_1003A8DB0(a3, 0, 2) = v14;
    v15 = v8 * v8 + v6 * v6;
    v16 = 1.0 / (v9 * v9);
    *sub_1003A8DB0(a3, 1, 1) = 0;
    v17 = sqrt(v15);
    *sub_1003A8DB0(a3, 2, 1) = v17 * v16;
    if (v15 <= 0.0)
    {
      *sub_1003A8DB0(a3, 1, 0) = 0;
      *sub_1003A8DB0(a3, 1, 2) = 0;
      *sub_1003A8DB0(a3, 2, 0) = 0;
      *sub_1003A8DB0(a3, 2, 2) = 0;
    }

    else
    {
      *sub_1003A8DB0(a3, 1, 0) = v8 / v15;
      *sub_1003A8DB0(a3, 1, 2) = -v6 / v15;
      *sub_1003A8DB0(a3, 2, 0) = -(v7 * v6) / v17 * v16;
      *sub_1003A8DB0(a3, 2, 2) = -(v7 * v8) / v17 * v16;
    }
  }
}

uint64_t sub_100416060()
{
  v1 = xmmword_100572008;
  v2[0] = unk_100572018;
  v2[1] = xmmword_100572028;
  v2[2] = unk_100572038;
  qword_1009F9190 = 0;
  unk_1009F9198 = 0;
  qword_1009F9188 = 0;
  sub_10004EEB8(&qword_1009F9188, &v1, &v3, 4uLL);
  __cxa_atexit(sub_100045220, &qword_1009F9188, &_mh_execute_header);
  v1 = xmmword_100572048;
  qword_1009F91A8 = 0;
  unk_1009F91B0 = 0;
  qword_1009F91A0 = 0;
  sub_10004EEB8(&qword_1009F91A0, &v1, v2, 1uLL);
  return __cxa_atexit(sub_100045220, &qword_1009F91A0, &_mh_execute_header);
}

void sub_100416164(uint64_t a1, int a2, int a3)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 360) = 0;
  *(a1 + 472) = 0;
  *(a1 + 480) = 0;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0;
  *(a1 + 536) = 0;
  *(a1 + 504) = 0u;
  *(a1 + 520) = 0u;
  *(a1 + 488) = 0u;
  operator new();
}

void sub_100416304(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 456);
  if (!v4 || *a2 > *(*(*(a1 + 424) + (((v4 + *(a1 + 448) - 1) >> 2) & 0x3FFFFFFFFFFFFFF8)) + (((v4 + *(a1 + 448) - 1) & 0x1F) << 7)))
  {
    v5 = *(a1 + 464);
    *(a1 + 464) = *(a2 + 80);
    v6 = *(a2 + 88);
    *(a1 + 480) = *(a2 + 96);
    *(a1 + 472) = v6;
    v7 = *a2;
    if (*(a1 + 24) != 1 || *(a1 + 16) < v7)
    {
      *(a1 + 16) = v7;
      *(a1 + 24) = 1;
    }

    v8 = *(a2 + 80);
    if (v5 == v8)
    {
      goto LABEL_19;
    }

    if (v8 == 2)
    {
      v9 = qword_1009F9820;
      if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }

      v13 = *a2;
      *buf = 134217984;
      *&buf[4] = v13;
      v11 = "#sa_algo_moving_findee,VIO Tracking State changed to Normal at %f s";
    }

    else if (v8 == 1)
    {
      v9 = qword_1009F9820;
      if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }

      v12 = *a2;
      *buf = 134217984;
      *&buf[4] = v12;
      v11 = "#sa_algo_moving_findee,VIO Tracking State changed to Limited at %f s";
    }

    else
    {
      if (v8)
      {
        goto LABEL_19;
      }

      v9 = qword_1009F9820;
      if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }

      v10 = *a2;
      *buf = 134217984;
      *&buf[4] = v10;
      v11 = "#sa_algo_moving_findee,VIO Tracking State changed to Not Available at %f s";
    }

    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v11, buf, 0xCu);
LABEL_19:
    sub_100416808(a1, a2);
    v14 = *(a2 + 80);
    if (v5 == 2 && v14 != 2)
    {
      v15 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#sa_algo_moving_findee,VIO Tracking not normal anymore - resetting", buf, 2u);
      }

      if (*(a1 + 360) == 1)
      {
        v16 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#sa_algo_moving_findee,VIO Tracking not normal before the cached measurement can be interpolated - passing the cached measurement to the range filter without VIO", buf, 2u);
        }
      }

      sub_100416C44(a1);
      v14 = *(a2 + 80);
    }

    if (v14 == 2)
    {
      if (*(a2 + 84) == 1)
      {
        v17 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          v18 = *a2;
          if (*(a2 + 85))
          {
            v19 = "YES";
          }

          else
          {
            v19 = "NO";
          }

          *buf = 134218498;
          *&buf[4] = v18;
          *&buf[12] = 2080;
          *&buf[14] = "YES";
          *&buf[22] = 2080;
          *&buf[24] = v19;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#sa_algo_moving_findee,VIO reported relocalization event at %f s, MAJOR: %s, MINOR: %s - resetting", buf, 0x20u);
        }

        sub_100416C44(a1);
      }

      else
      {
        if (*(a2 + 85) == 1)
        {
          v20 = qword_1009F9820;
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
          {
            v21 = *a2;
            *buf = 134217984;
            *&buf[4] = v21;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#sa_algo_moving_findee,VIO reported MINOR relocalization event at %f s", buf, 0xCu);
          }
        }

        v22 = 0;
        v23 = *(a2 + 16);
        v24 = *(a2 + 32);
        v25 = *(a2 + 48);
        v26 = *(a2 + 64);
        v33 = xmmword_10056EE60;
        *__p = xmmword_10056EE70;
        v35 = xmmword_10056EE80;
        v36 = xmmword_10056EE90;
        do
        {
          *&buf[v22 * 8] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v23, COERCE_FLOAT(*&__p[v22 - 2])), v24, __p[v22 - 2], 1), v25, *&__p[v22 - 2], 2), v26, *&__p[v22 - 2], 3);
          v22 += 2;
        }

        while (v22 != 8);
        v27 = *buf;
        v28 = *&buf[16];
        v29 = v38;
        v30 = v39;
        v31 = *(a2 + 80);
        v32 = *(a2 + 84);
        *buf = *a2;
        *&buf[16] = v27;
        v38 = v28;
        v39 = v29;
        v40 = v30;
        v41 = v31;
        v42 = v32;
        v43 = 0;
        v44 = 0;
        v45 = 0;
        v46 = 0;
        v47 = 0;
        v48 = 0;
        sub_1003AAEB4((a1 + 416), buf);
        sub_1003B65E0(*(a1 + 64), &v33, *buf, *&v40, *(&v40 + 1), *(&v40 + 2));
        sub_1003AAF5C(a1 + 72, &v33);
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }
      }
    }

    sub_100416CFC(a1);
    sub_1004173AC(a1);
    sub_100417A34(a1);
    return;
  }

  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004CECD4();
  }
}

void sub_1004167E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100416808(uint64_t result, uint64_t a2)
{
  v3 = *a2;
  if (*(result + 40) != 1 || v3 - *(result + 32) >= 0.2)
  {
    *(result + 32) = v3;
    *(result + 40) = 1;
    sub_10026B0D4(&v20);
    sub_10000EA44(&v20, "tracking state: ", 16);
    v4 = *(a2 + 80);
    if (v4 < 3)
    {
      sub_10000EA44(&v20, (&off_1009AB0C0)[v4], qword_1005720B8[v4]);
    }

    sub_10000EA44(&v20, ", light intensity ", 18);
    if (*(a2 + 96) == 1)
    {
      v5 = v20;
      *(&v20 + *(v20 - 3) + 8) = *(&v20 + *(v20 - 3) + 8) & 0xFFFFFEFB | 4;
      *(&v22[0].__locale_ + *(v5 - 3)) = 2;
      std::ostream::operator<<();
    }

    else
    {
      sub_10000EA44(&v20, "-", 1);
    }

    v6 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *a2;
      std::stringbuf::str();
      v8 = v19 >= 0 ? &__p : __p;
      v9 = *(a2 + 32);
      v10 = COERCE_FLOAT(*(a2 + 16));
      v11 = COERCE_FLOAT(HIDWORD(*(a2 + 16)));
      v12 = COERCE_FLOAT(*(a2 + 24));
      v13 = COERCE_FLOAT(HIDWORD(*(a2 + 16)));
      v14 = *(a2 + 48);
      v15 = *(a2 + 64);
      v16 = COERCE_FLOAT(HIDWORD(*(a2 + 32)));
      v17 = COERCE_FLOAT(*(a2 + 40));
      *buf = 134222338;
      v25 = v7;
      v26 = 2080;
      v27 = v8;
      v28 = 2048;
      v29 = v10;
      v30 = 2048;
      v31 = v11;
      v32 = 2048;
      v33 = v12;
      v34 = 2048;
      v35 = v13;
      v36 = 2048;
      v37 = *&v9;
      v38 = 2048;
      v39 = v16;
      v40 = 2048;
      v41 = v17;
      v42 = 2048;
      v43 = *(&v9 + 3);
      v44 = 2048;
      v45 = *&v14;
      v46 = 2048;
      v47 = *(&v14 + 1);
      v48 = 2048;
      v49 = *(&v14 + 2);
      v50 = 2048;
      v51 = *(&v14 + 3);
      v52 = 2048;
      v53 = *&v15;
      v54 = 2048;
      v55 = *(&v15 + 1);
      v56 = 2048;
      v57 = *(&v15 + 2);
      v58 = 2048;
      v59 = *(&v15 + 3);
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#sa_algo_moving_findee,Pose timestamp: %f, %s, pose [%3.2f, %3.2f, %3.2f, %3.2f, ...\n\t%3.2f, %3.2f, %3.2f, %3.2f, ...\n\t%3.2f, %3.2f, %3.2f, %3.2f, ... \n\t%3.2f, %3.2f, %3.2f, %3.2f]", buf, 0xB6u);
      if (v19 < 0)
      {
        operator delete(__p);
      }
    }

    if (v23 < 0)
    {
      operator delete(v22[7].__locale_);
    }

    std::locale::~locale(v22);
    std::ostream::~ostream();
    return std::ios::~ios();
  }

  return result;
}

void sub_100416C20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10038B85C(va);
  _Unwind_Resume(a1);
}

void sub_100416C44(uint64_t a1)
{
  if (*(a1 + 360) == 1)
  {
    *(a1 + 360) = 0;
  }

  v2 = *(a1 + 424);
  v3 = *(a1 + 432);
  *(a1 + 456) = 0;
  v4 = (v3 - v2) >> 3;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v5 = *(a1 + 432);
      v2 = (*(a1 + 424) + 8);
      *(a1 + 424) = v2;
      v4 = (v5 - v2) >> 3;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v6 = 16;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_10;
    }

    v6 = 32;
  }

  *(a1 + 448) = v6;
LABEL_10:
  if (*(a1 + 120) == 1)
  {
    v7 = *(a1 + 88);
    if (v7)
    {
      *(a1 + 96) = v7;
      operator delete(v7);
    }

    *(a1 + 120) = 0;
  }

  sub_1003B83F8(*(a1 + 64));
  *(a1 + 536) = 0;
}

void sub_100416CFC(uint64_t a1)
{
  if (*(a1 + 360) != 1)
  {
    return;
  }

  v2 = *(a1 + 456);
  if (!v2)
  {
    return;
  }

  v3 = *(a1 + 136);
  v4 = *(a1 + 448);
  v6 = *(a1 + 424);
  v5 = *(a1 + 432);
  if (v5 == v6)
  {
    v22 = (v6 + 8 * (v4 >> 5));
    goto LABEL_16;
  }

  v7 = (v4 >> 2) & 0x3FFFFFFFFFFFFFF8;
  v8 = (v6 + v7);
  v9 = *(v6 + v7) + ((*(a1 + 448) & 0x1FLL) << 7);
  v10 = v4 + v2;
  v11 = ((v4 + v2) >> 2) & 0x3FFFFFFFFFFFFFF8;
  v12 = *(a1 + 144);
  v13 = *(v6 + v11) + ((v10 & 0x1F) << 7);
  *buf = v6 + v7;
  *&buf[8] = v9;
  if (v13 != v9)
  {
    v14 = ((v13 - *(v6 + v11)) >> 7) + 4 * (v11 - v7);
    v15 = v9 - *(v6 + v7);
    v16 = v14 - (v15 >> 7);
    if (v14 != v15 >> 7)
    {
      do
      {
        v17 = v16 >> 1;
        v18 = sub_1003B0628(buf, v16 >> 1);
        if (v3 >= *v19)
        {
          v20 = v19 + 16;
          if ((v19 - *v18 + 128) == 4096)
          {
            v21 = v18[1];
            ++v18;
            v20 = v21;
          }

          *buf = v18;
          *&buf[8] = v20;
          v17 = v16 + ~v17;
        }

        v16 = v17;
      }

      while (v17);
      v8 = *buf;
      v9 = *&buf[8];
      v4 = *(a1 + 448);
      v6 = *(a1 + 424);
      v5 = *(a1 + 432);
    }
  }

  v22 = (v6 + 8 * (v4 >> 5));
  if (v5 == v6)
  {
    if (v9)
    {
      v24 = 0;
      v23 = *(a1 + 456);
      goto LABEL_20;
    }

LABEL_16:
    v25 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      v26 = *(*v22 + ((v4 & 0x1F) << 7));
      *buf = 134218240;
      *&buf[4] = v3;
      *&buf[12] = 2048;
      *&buf[14] = v26;
      _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "#sa_algo_moving_findee,Measurement at %f s earlier than the first pose in history at %f s - skipping interpolation and removing range measurement", buf, 0x16u);
    }

    goto LABEL_42;
  }

  if (*v22 + ((v4 & 0x1F) << 7) == v9)
  {
    goto LABEL_16;
  }

  v23 = *(a1 + 456);
  v24 = *(v6 + (((v23 + v4) >> 2) & 0x3FFFFFFFFFFFFFF8)) + (((v23 + v4) & 0x1F) << 7);
LABEL_20:
  if (v24 != v9)
  {
    v27 = (v9 - *v8) >> 7;
    if (v27 < 2)
    {
      v34 = 32 - v27;
      v29 = &v8[-(v34 >> 5)];
      v30 = *v29;
      v31 = ~v34 & 0x1FLL;
    }

    else
    {
      v28 = v27 - 1;
      v29 = &v8[v28 >> 5];
      v30 = *v29;
      v31 = v28 & 0x1F;
    }

    v35 = v30 + (v31 << 7);
    v36 = (v3 - *v35) / (*v9 - *v35);
    v87 = v36;
    v83 = *(v35 + 64);
    *v37.i64 = sub_1003ADBF0(*(v35 + 16), *(v35 + 32), *(v35 + 48));
    v85 = v37;
    v82 = *(v9 + 64);
    *v38.i64 = sub_1003ADBF0(*(v9 + 16), *(v9 + 32), *(v9 + 48));
    v39 = vmulq_f32(v85, v38);
    v40 = vextq_s8(v39, v39, 8uLL);
    *v39.f32 = vadd_f32(*v39.f32, *v40.f32);
    v39.f32[0] = vaddv_f32(*v39.f32);
    v40.i64[0] = 0;
    v41 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vcgeq_f32(v39, v40)), 0), vnegq_f32(v38), v38);
    v42 = 1.0;
    v43 = 1.0 - v87;
    v44 = vsubq_f32(v85, v41);
    v45 = vmulq_f32(v44, v44);
    v81 = v41;
    v46 = vaddq_f32(v85, v41);
    v47 = vmulq_f32(v46, v46);
    v48 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v45.i8, *&vextq_s8(v45, v45, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v47.i8, *&vextq_s8(v47, v47, 8uLL)))));
    v49 = v48 + v48;
    v50 = (v48 + v48) == 0.0;
    v51 = 1.0;
    if (!v50)
    {
      v51 = sinf(v49) / v49;
    }

    v52 = v51;
    v53 = vrecpe_f32(LODWORD(v51));
    v54 = vmul_f32(v53, vrecps_f32(LODWORD(v52), v53));
    LODWORD(v55) = vmul_f32(v54, vrecps_f32(LODWORD(v52), v54)).u32[0];
    if ((v43 * v49) != 0.0)
    {
      v79 = v55;
      v54.f32[0] = sinf(v43 * v49);
      v55 = v79;
      v42 = v54.f32[0] / (v43 * v49);
    }

    v54.f32[0] = v43 * (v55 * v42);
    v56 = vdupq_lane_s32(v54, 0);
    v57 = v87;
    v58 = v49 * v87;
    v59 = 1.0;
    if (v58 != 0.0)
    {
      v78 = v56;
      v80 = v55;
      v60 = sinf(v58);
      v56 = v78;
      v55 = v80;
      v57 = v87;
      v59 = v60 / v58;
    }

    v61 = vmlaq_f32(vmulq_n_f32(v81, (v55 * v59) * v57), v85, v56);
    v62 = vmulq_f32(v61, v61);
    v63 = vadd_f32(*v62.i8, *&vextq_s8(v62, v62, 8uLL));
    if (vaddv_f32(v63) == 0.0)
    {
      v64 = xmmword_10056EE90;
    }

    else
    {
      v65 = vadd_f32(v63, vdup_lane_s32(v63, 1)).u32[0];
      v66 = vrsqrte_f32(v65);
      v67 = vmul_f32(v66, vrsqrts_f32(v65, vmul_f32(v66, v66)));
      v64 = vmulq_n_f32(v61, vmul_f32(v67, vrsqrts_f32(v65, vmul_f32(v67, v67))).f32[0]);
    }

    v68 = vmlaq_n_f32(v83, vsubq_f32(v82, v83), v57);
    v68.i32[3] = v64.i32[0];
    v86 = vcvtq_f64_f32(*v68.f32);
    v88 = vcvt_hight_f64_f32(v68);
    v84 = vcvtq_f64_f32(*&vextq_s8(v64, v64, 4uLL));
    v69 = *&v64.i32[3];
    v70 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134220032;
      *&buf[4] = v12;
      *&buf[12] = 2048;
      *&buf[14] = v3;
      *&buf[22] = 2048;
      v94 = v86.f64[0];
      v95 = 2048;
      v96 = v86.f64[1];
      v97 = 2048;
      v98 = v88.f64[0];
      v99 = 2048;
      v100 = v88.f64[1];
      v101 = 2048;
      v102 = v84.f64[0];
      v103 = 2048;
      v104 = v84.f64[1];
      v105 = 2048;
      v106 = v69;
      _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "#sa_algo_moving_findee,Interpolated self pose for range measurement, range: %0.2f m, timestamp: %f s, device position:[%0.2f,%0.2f,%0.2f], device quat:[%0.2f,%0.2f,%0.2f,%0.2f]", buf, 0x5Cu);
    }

    *buf = v3;
    *&buf[8] = v12;
    *&buf[16] = 0x3FB999999999999ALL;
    LODWORD(v94) = 0;
    LOBYTE(v95) = 0;
    BYTE4(v106) = 0;
    v107 = v86;
    v108 = v88;
    v109 = v84;
    v110 = v69;
    sub_100419C1C((a1 + 368), buf);
    v71 = *(a1 + 424);
    v72 = (v71 + 8 * (*(a1 + 448) >> 5));
    if (*(a1 + 432) == v71)
    {
      v73 = 0;
    }

    else
    {
      v73 = *v72 + ((*(a1 + 448) & 0x1FLL) << 7);
    }

    sub_1003AF1E0((a1 + 416), v72, v73, v29, v35);
    v74 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
    {
      v75 = *(a1 + 424);
      v76 = *(*(v75 + ((*(a1 + 448) >> 2) & 0x3FFFFFFFFFFFFFF8)) + ((*(a1 + 448) & 0x1FLL) << 7));
      v77 = *(*(v75 + (((*(a1 + 448) + *(a1 + 456) - 1) >> 2) & 0x3FFFFFFFFFFFFFF8)) + (((*(a1 + 448) + *(a1 + 456) - 1) & 0x1F) << 7));
      *v89 = 134218240;
      v90 = v76;
      v91 = 2048;
      v92 = v77;
      _os_log_debug_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEBUG, "#sa_algo_moving_findee,Pose history now between %f s and %f s", v89, 0x16u);
    }

LABEL_42:
    if (*(a1 + 360) == 1)
    {
      *(a1 + 360) = 0;
    }

    return;
  }

  v32 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    v33 = *(*(v6 + (((v4 + v23 - 1) >> 2) & 0x3FFFFFFFFFFFFFF8)) + (((v4 + v23 - 1) & 0x1F) << 7));
    *buf = 134218240;
    *&buf[4] = v3;
    *&buf[12] = 2048;
    *&buf[14] = v33;
    _os_log_debug_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEBUG, "#sa_algo_moving_findee,Measurement at %f s later than the last pose in history at %f s - skipping interpolation", buf, 0x16u);
  }
}

void sub_1004173AC(int64x2_t *a1)
{
  if (a1[25].i64[1] && a1[33].i64[0])
  {
    v2 = a1[25].u64[0];
    v3 = 0x4EC4EC4EC4EC4EC5;
    v4 = a1[23].i64[1];
    v5 = a1[24].i64[0];
    v6 = (v4 + 8 * (v2 / 0x1A));
    if (v5 == v4)
    {
      v7 = 0;
    }

    else
    {
      v7 = *v6 + 152 * (v2 % 0x1A);
    }

    while (1)
    {
      if (v5 == v4)
      {
        v10 = 0;
      }

      else
      {
        v8 = a1[25].i64[1] + a1[25].i64[0];
        v9 = ((v8 * v3) >> 64) >> 3;
        v10 = *(v4 + 8 * v9) + 152 * (v8 - 26 * v9);
      }

      if (v7 == v10)
      {
        return;
      }

      v11 = *v7;
      v12 = *(v7 + 24);
      v13 = *(v7 + 28);
      v14 = *(v7 + 44);
      v15 = *(v7 + 60);
      v16 = *(v7 + 92);
      v86 = *(v7 + 76);
      v87[0] = v16;
      *(v87 + 12) = *(v7 + 104);
      v84 = v14;
      v85 = v15;
      v17 = *(v7 + 120);
      v82 = *(v7 + 136);
      v83 = v13;
      v81 = v17;
      v18 = a1[31].i64[0];
      v19 = a1[32].u64[1];
      v20 = (v18 + 8 * (v19 >> 7));
      v21 = *v20;
      v22 = *v20 + 32 * (v19 & 0x7F);
      v23 = *v22;
      if (*v22 - *&v11 > 0.21)
      {
        break;
      }

      v26 = a1[33].i64[0];
      v27 = *(*(v18 + (((v19 + v26 - 1) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((v19 + v26 - 1) & 0x7F));
      if (*&v11 - v27 <= 0.21)
      {
        v30 = v3;
        if (a1[31].i64[1] != v18)
        {
          v31 = *(v18 + (((v26 + v19) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((v26 + v19) & 0x7F);
          if (v22 != v31)
          {
            v67 = v11;
            while (1)
            {
              v32 = *v22;
              v33 = qword_1009F9820;
              if (vabdd_f64(*v22, *&v11) <= 0.21)
              {
                break;
              }

              if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
              {
                *buf = 134218240;
                *&buf[4] = v32;
                *&buf[12] = 2048;
                *&buf[14] = v67;
                _os_log_debug_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEBUG, "#sa_algo_moving_findee,Peer VIO position at %f s NOT matching with cached range measurement at %f s", buf, 0x16u);
                v21 = *v20;
              }

              v22 += 32;
              if (v22 - v21 == 4096)
              {
                v34 = v20[1];
                ++v20;
                v21 = v34;
                v22 = v34;
              }

              *&v11 = v67;
              if (v22 == v31)
              {
                goto LABEL_28;
              }
            }

            if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218240;
              *&buf[4] = v32;
              *&buf[12] = 2048;
              *&buf[14] = v67;
              _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#sa_algo_moving_findee,Peer VIO position at %f s matching with cached range measurement at %f s", buf, 0x16u);
            }

            v36 = a1[32].u64[1];
            v37 = (v36 >> 4) & 0xFFFFFFFFFFFFFF8;
            v38 = a1[31].i64[0];
            v39 = (v38 + v37);
            v3 = v30;
            if (a1[31].i64[1] == v38)
            {
              v44 = 0;
              v40 = 0;
              v45 = (v38 + v37);
            }

            else
            {
              v40 = *v39 + 32 * (a1[32].i64[1] & 0x7F);
              v41 = a1[33].i64[0] + v36;
              v42 = (v41 >> 4) & 0xFFFFFFFFFFFFFF8;
              if (*(v38 + v42) + 32 * (v41 & 0x7F) == v40 || (v43 = (v41 & 0x7F | (16 * (v42 - v37))) - (a1[32].i64[1] & 0x7F)) == 0)
              {
                v45 = v39;
                v44 = *v39 + 32 * (a1[32].i64[1] & 0x7F);
              }

              else
              {
                v44 = *v39 + 32 * (a1[32].i64[1] & 0x7F);
                v45 = v39;
                do
                {
                  v46 = v43 >> 1;
                  if (v43 == 1)
                  {
                    v47 = v44;
                    v48 = v45;
                  }

                  else
                  {
                    v49 = v46 + ((v44 - *v45) >> 5);
                    if (v49 < 1)
                    {
                      v50 = 127 - v49;
                      LOBYTE(v49) = ~(127 - v49);
                      v48 = &v45[-8 * (v50 >> 7)];
                    }

                    else
                    {
                      v48 = &v45[8 * (v49 >> 7)];
                    }

                    v47 = (*v48 + 32 * (v49 & 0x7F));
                  }

                  if (*v47 < *v22)
                  {
                    v44 = (v47 + 4);
                    if ((v47 - *v48 + 32) == 4096)
                    {
                      v51 = *(v48 + 1);
                      v48 += 8;
                      v44 = v51;
                    }

                    v46 = v43 + ~v46;
                    v45 = v48;
                  }

                  v43 = v46;
                }

                while (v46);
              }
            }

            sub_100419FB0(&a1[30].i64[1], v39, v40, v45, v44);
            v52 = a1[33].i64[0];
            v53 = qword_1009F9820;
            if (!v52)
            {
              if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
              {
                sub_1004CED4C(v53, v58, v59, v60, v61, v62, v63, v64);
              }

              return;
            }

            if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
            {
              v55 = a1[31].i64[0];
              v56 = *(*(v55 + ((a1[32].i64[1] >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (a1[32].i64[1] & 0x7F));
              v57 = *(*(v55 + (((v52 + a1[32].i64[1] - 1) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((v52 + a1[32].i64[1] - 1) & 0x7F));
              *buf = 134218240;
              *&buf[4] = v56;
              *&buf[12] = 2048;
              *&buf[14] = v57;
              _os_log_debug_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEBUG, "#sa_algo_moving_findee,Peer VIO history from %f s to %f s after pruning", buf, 0x16u);
            }

            *buf = v67;
            v75 = *(v87 + 4);
            v77 = v81;
            *&buf[16] = 0x3FB999999999999ALL;
            v72 = v12;
            v73 = 0;
            v74 = 0;
            v76 = *(&v87[1] + 4);
            v78 = v82;
            v54 = *(v22 + 24);
            v79 = *(v22 + 8);
            v80 = v54;
            sub_1003B76B8(a1[4].i64[0], buf, v68);
            sub_1003AAF5C(&a1[4].i64[1], v68);
            if (__p)
            {
              v70 = __p;
              operator delete(__p);
            }

            goto LABEL_13;
          }
        }

LABEL_28:
        v7 += 152;
        if (v7 - *v6 == 3952)
        {
          v35 = v6[1];
          ++v6;
          v7 = v35;
        }

        v3 = v30;
      }

      else
      {
        v66 = v11;
        v28 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134218240;
          *&buf[4] = v66;
          *&buf[12] = 2048;
          *&buf[14] = v27;
          _os_log_debug_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, "#sa_algo_moving_findee,Cached range measurement at %f s can't be matched with peer pose yet, last peer pose at %f", buf, 0x16u);
        }

        v7 += 152;
        if (v7 - *v6 == 3952)
        {
          v29 = v6[1];
          ++v6;
          v7 = v29;
        }
      }

LABEL_31:
      v4 = a1[23].i64[1];
      v5 = a1[24].i64[0];
    }

    v65 = v11;
    v24 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      *&buf[4] = v65;
      *&buf[12] = 2048;
      *&buf[14] = v23;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#sa_algo_moving_findee,Cached range measurement at %f s can't be matched with peer pose (removed), first peer pose at %f", buf, 0x16u);
    }

LABEL_13:
    v6 = sub_100419CF4(a1 + 23, v6, v7);
    v7 = v25;
    goto LABEL_31;
  }
}

void sub_100417A10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100417A34(void *a1)
{
  v1 = a1[57];
  if (v1)
  {
    v3 = a1[56];
    v4 = a1[53];
    v5 = *(*(v4 + (((v1 + v3 - 1) >> 2) & 0x3FFFFFFFFFFFFFF8)) + (((v1 + v3 - 1) & 0x1F) << 7)) - *(*(v4 + ((v3 >> 2) & 0x3FFFFFFFFFFFFFF8)) + ((v3 & 0x1F) << 7));
    if (v5 > 5.0)
    {
      v6 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *v30 = 134217984;
        *&v30[4] = v5;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#sa_algo_moving_findee,Pose history spans %f s - pruning down past poses from history", v30, 0xCu);
        v3 = a1[56];
        v1 = a1[57];
        v4 = a1[53];
      }

      v7 = (v3 >> 2) & 0x3FFFFFFFFFFFFFF8;
      v8 = (v4 + v7);
      v9 = a1[54];
      if (v9 == v4)
      {
        v13 = 0;
        v25 = 0;
        v24 = (v4 + 8 * (v3 >> 5));
      }

      else
      {
        v10 = *(*(v4 + (((v3 + v1 - 1) >> 2) & 0x3FFFFFFFFFFFFFF8)) + (((v3 + v1 - 1) & 0x1F) << 7));
        v11 = v3 & 0x1F;
        v12 = ((v3 + v1) >> 2) & 0x3FFFFFFFFFFFFFF8;
        v13 = *v8 + (v11 << 7);
        v14 = (v3 + v1) & 0x1F;
        v15 = *(v4 + v12) + (v14 << 7);
        *v30 = v4 + v7;
        *&v30[8] = v13;
        if (v15 != v13)
        {
          v16 = v14 | (4 * (v12 - v7));
          v17 = v16 - v11;
          if (v16 != v11)
          {
            v18 = v10 + -2.0;
            do
            {
              v19 = v17 >> 1;
              v20 = sub_1003B0628(v30, v17 >> 1);
              if (v18 >= *v21)
              {
                v22 = v21 + 16;
                if ((v21 - *v20 + 128) == 4096)
                {
                  v23 = v20[1];
                  ++v20;
                  v22 = v23;
                }

                *v30 = v20;
                *&v30[8] = v22;
                v19 = v17 + ~v19;
              }

              v17 = v19;
            }

            while (v19);
            v8 = *v30;
            v13 = *&v30[8];
            v3 = a1[56];
            v4 = a1[53];
            v9 = a1[54];
          }
        }

        v24 = (v4 + 8 * (v3 >> 5));
        if (v9 == v4)
        {
          v25 = 0;
        }

        else
        {
          v25 = *v24 + ((v3 & 0x1F) << 7);
        }
      }

      sub_1003AF1E0(a1 + 52, v24, v25, v8, v13);
      v26 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        v27 = a1[53];
        v28 = *(*(v27 + ((a1[56] >> 2) & 0x3FFFFFFFFFFFFFF8)) + ((a1[56] & 0x1FLL) << 7));
        v29 = *(*(v27 + (((a1[56] + a1[57] - 1) >> 2) & 0x3FFFFFFFFFFFFFF8)) + (((a1[56] + a1[57] - 1) & 0x1F) << 7));
        *v30 = 134218240;
        *&v30[4] = v28;
        *&v30[12] = 2048;
        *&v30[14] = v29;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#sa_algo_moving_findee,Pose history now between %f s and %f s", v30, 0x16u);
      }
    }
  }
}

void sub_100417CF8(uint64_t a1, double *a2)
{
  v4 = *(a1 + 528);
  if (v4 && *a2 <= *(*(*(a1 + 496) + (((v4 + *(a1 + 520) - 1) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((v4 + *(a1 + 520) - 1) & 0x7F)))
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004CED84();
    }
  }

  else
  {
    v5 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *a2;
      v7 = *(a2 + 1);
      v8 = *(a2 + 2);
      v9 = *(a2 + 3);
      v11 = 134218752;
      v12 = v6;
      v13 = 2048;
      *__p = v7;
      *&__p[8] = 2048;
      v15 = v8;
      v16 = 2048;
      v17 = v9;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#sa_algo_moving_findee,Received peer pose at %f s, peer position:[%0.2f,%0.2f,%0.2f] m", &v11, 0x2Au);
    }

    v10 = *a2;
    if (*(a1 + 24) != 1 || *(a1 + 16) < v10)
    {
      *(a1 + 16) = v10;
      *(a1 + 24) = 1;
      v10 = *a2;
    }

    sub_1003B75E8(*(a1 + 64), &v11, v10, a2[1], a2[2], a2[3]);
    sub_1003AAF5C(a1 + 72, &v11);
    if (*&__p[2])
    {
      v15 = *&__p[2];
      operator delete(*&__p[2]);
    }

    sub_100417ED0((a1 + 488), a2);
    sub_1004173AC(a1);
  }
}

void sub_100417EAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_100417ED0(unint64_t *a1, uint64_t a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 16 * (v4 - v5) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    sub_10041A310(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  v8 = (*(v5 + ((v7 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v7 & 0x7F));
  result = *a2;
  v10 = *(a2 + 16);
  *v8 = *a2;
  v8[1] = v10;
  ++a1[5];
  return result;
}

void sub_100417F60(uint64_t a1, __int128 *a2)
{
  v4 = *(a2 + 36);
  v5 = qword_1009F9820;
  v6 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT);
  if (v4 == 1)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = *(a2 + 1);
    v8 = *(a2 + 4);
    v9 = *(a2 + 6);
    v10 = *(a2 + 7);
    v32 = 134218752;
    v33 = v7;
    v34 = 2048;
    v35 = v8;
    v36 = 2048;
    v37 = v9;
    v38 = 2048;
    v39 = v10;
    v11 = "#sa_algo_moving_findee,Received range result at %f s, distance: %0.2f m, az: %3.2f rad, el: %3.2f rad";
    v12 = v5;
    v13 = 42;
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v14 = *(a2 + 1);
    v15 = *(a2 + 4);
    v32 = 134218240;
    v33 = v14;
    v34 = 2048;
    v35 = v15;
    v11 = "#sa_algo_moving_findee,Received range result at %f s, distance: %0.2f m";
    v12 = v5;
    v13 = 22;
  }

  _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v11, &v32, v13);
LABEL_7:
  if ((*(a1 + 8) & 1) == 0)
  {
    *a1 = *a2;
    *(a1 + 8) = 1;
  }

  if (*(a1 + 464) != 2)
  {
    v17 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v32) = 0;
      v18 = "#sa_algo_moving_findee,VIO Tracking is not normal";
      goto LABEL_18;
    }

LABEL_23:
    v30 = *(a2 + 1);
    if (*(a1 + 24) != 1 || *(a1 + 16) < v30)
    {
      *(a1 + 16) = v30;
      *(a1 + 24) = 1;
    }

    return;
  }

  if (!*(a1 + 456))
  {
    v17 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v32) = 0;
      v18 = "#sa_algo_moving_findee,Pose history is empty";
      goto LABEL_18;
    }

    goto LABEL_23;
  }

  v16 = *(a2 + 1);
  if (v16 < *(*(*(a1 + 424) + ((*(a1 + 448) >> 2) & 0x3FFFFFFFFFFFFFF8)) + ((*(a1 + 448) & 0x1FLL) << 7)))
  {
    v17 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v32) = 0;
      v18 = "#sa_algo_moving_findee,Measurement earlier than the first pose in history";
LABEL_18:
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, v18, &v32, 2u);
      goto LABEL_23;
    }

    goto LABEL_23;
  }

  if (*(a1 + 360) != 1)
  {
LABEL_22:
    v19 = *a2;
    v20 = a2[2];
    *(a1 + 144) = a2[1];
    *(a1 + 160) = v20;
    *(a1 + 128) = v19;
    v21 = a2[3];
    v22 = a2[4];
    v23 = a2[6];
    *(a1 + 208) = a2[5];
    *(a1 + 224) = v23;
    *(a1 + 176) = v21;
    *(a1 + 192) = v22;
    v24 = a2[7];
    v25 = a2[8];
    v26 = a2[10];
    *(a1 + 272) = a2[9];
    *(a1 + 288) = v26;
    *(a1 + 240) = v24;
    *(a1 + 256) = v25;
    v27 = a2[11];
    v28 = a2[12];
    v29 = a2[13];
    *(a1 + 352) = *(a2 + 28);
    *(a1 + 320) = v28;
    *(a1 + 336) = v29;
    *(a1 + 304) = v27;
    *(a1 + 360) = 1;
    sub_100416CFC(a1);
    goto LABEL_23;
  }

  if (v16 > *(a1 + 136))
  {
    *(a1 + 360) = 0;
    goto LABEL_22;
  }

  v31 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v32) = 0;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#sa_algo_moving_findee,Measurement earlier than the cached measurement - rejecting range measurement", &v32, 2u);
  }
}

void sub_100418274(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 400) = 0u;
  *(a2 + 416) = 0u;
  *(a2 + 368) = 0u;
  *(a2 + 384) = 0u;
  *(a2 + 336) = 0u;
  *(a2 + 352) = 0u;
  *(a2 + 304) = 0u;
  *(a2 + 320) = 0u;
  *(a2 + 272) = 0u;
  *(a2 + 288) = 0u;
  *(a2 + 240) = 0u;
  *(a2 + 256) = 0u;
  *(a2 + 208) = 0u;
  *(a2 + 224) = 0u;
  *(a2 + 176) = 0u;
  *(a2 + 192) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 160) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  if ((a1[15] & 1) == 0)
  {
    *a2 = 0;
LABEL_7:
    sub_10041894C(a1, a2);
    return;
  }

  v4 = *(a1 + 77);
  *v51 = a1[9];
  *(&v51[1] + 1) = v4;
  __p = 0;
  v53 = 0;
  v54 = 0;
  v5 = sub_1003BB9A8(&__p, a1[11], a1[12], 0xAAAAAAAAAAAAAAABLL * ((a1[12] - a1[11]) >> 6));
  v55 = a1[14];
  if (v51[0] > 3)
  {
    if (v51[0] == 4)
    {
      *a2 = 0;
      goto LABEL_33;
    }

    if (v51[0] == 6)
    {
      goto LABEL_31;
    }

    if (v51[0] != 5)
    {
      goto LABEL_33;
    }

    v7 = a1[66];
    if (v7)
    {
      v8 = a1[57];
      if (v8)
      {
        v9 = v8 + a1[56] - 1;
        v10 = a1[53];
        v11 = v9 >> 5;
        v12 = v9 & 0x1F;
        v13 = *(*(v10 + 8 * (v9 >> 5)) + (v12 << 7));
        v14 = *(*(a1[62] + (((v7 + a1[65] - 1) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((v7 + a1[65] - 1) & 0x7F));
        v15 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134218496;
          *&buf[4] = v13 - v14;
          *&buf[12] = 2048;
          *&buf[14] = v13;
          *&buf[22] = 2048;
          v58 = v14;
          _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "#sa_algo_moving_findee,#stalePeerVIO Peer VIO is stale by %f s, last self pose time %f s, last peer pose time %f s", buf, 0x20u);
          v10 = a1[53];
          v47 = a1[57] + a1[56] - 1;
          v11 = v47 >> 5;
          v12 = v47 & 0x1F;
        }

        v16 = *(__p + 2);
        *buf = *__p;
        *&buf[16] = v16;
        v48 = 0;
        v49 = 0;
        v50 = 0;
        sub_1003AD82C(buf, (*(v10 + 8 * v11) + (v12 << 7)), &v48);
        if (v13 - v14 < 2.0)
        {
LABEL_16:
          sub_1004199A8(a1, 0);
          v18 = qword_1009F9820;
          v5 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG);
          if (v5)
          {
            if ((a1[3] & 1) == 0)
            {
              sub_1000195BC();
            }

            sub_1004CEEFC(a1, &v48, v56, v18);
          }

          if (*(a1 + 8) != 1 || (a1[3] & 1) == 0)
          {
            sub_1000195BC();
          }

          v19 = *a1;
          v20 = *&v49;
          *(a2 + 24) = v48;
          *(a2 + 96) = 0u;
          *(a2 + 112) = 0u;
          *(a2 + 121) = 0u;
          *(a2 + 168) = 0u;
          *(a2 + 184) = 0u;
          *(a2 + 200) = 0u;
          *(a2 + 216) = 0u;
          v21 = a1[2];
          *(a2 + 8) = v19;
          *(a2 + 16) = v21;
          *(a2 + 28) = 1;
          *(a2 + 56) = 0;
          *(a2 + 32) = 0;
          *(a2 + 40) = 0;
          *(a2 + 60) = 0;
          *(a2 + 64) = 0;
          *(a2 + 68) = 0;
          *(a2 + 72) = 0;
          *(a2 + 80) = 0;
          *(a2 + 88) = 0;
          *(a2 + 160) = 0;
          *(a2 + 232) = 0;
          *(a2 + 240) = 1;
          if ((*(a2 + 272) & 1) == 0)
          {
            *(a2 + 272) = 1;
          }

          *(a2 + 264) = v20;
          if (v50 == 1)
          {
            *(a2 + 248) = *(&v48 + 1) * 180.0 / 3.14159265;
            *(a2 + 256) = 1;
            *(a2 + 412) = 1;
            *(a2 + 416) = 1;
            v5 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG);
            if (v5)
            {
              sub_1004CEF60();
            }
          }

          if ((a1[15] & 1) == 0)
          {
            sub_1000195BC();
          }

          v22 = *(a1 + 20);
          if (v22 == 2)
          {
            *a2 = 1;
            v43 = *(&v49 + 1);
            if ((*(a2 + 296) & 1) == 0)
            {
              *(a2 + 296) = 1;
            }

            *(a2 + 288) = v43;
            v5 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG);
            if (v5)
            {
              sub_1004CEFD8();
            }

            *&v45 = vcvt_f32_f64(*buf);
            *&v44 = *&buf[16];
            *(&v45 + 1) = __PAIR64__(*&buf[12], v44);
            if ((*(a2 + 352) & 1) == 0)
            {
              *(a2 + 352) = 1;
            }

            *(a2 + 336) = v45;
            if (*(&v49 + 1) >= 2.5)
            {
              v46 = 2;
            }

            else if (*(&v49 + 1) <= -2.5)
            {
              v46 = 3;
            }

            else
            {
              v46 = 1;
            }

            *(a2 + 280) = v46;
            goto LABEL_33;
          }

          if (v22 == 1)
          {
            if (fabsf(*(&v49 + 1)) < 2.5)
            {
              v42 = 1;
            }

            else
            {
              v42 = 4;
            }

            *(a2 + 280) = v42;
            *a2 = 0;
          }

          else
          {
            if (v22)
            {
              goto LABEL_33;
            }

            *a2 = 0;
            *(a2 + 280) = 0;
          }

          *(a2 + 6) = 1;
          goto LABEL_33;
        }

        v40 = sub_100419924(v13 - v14, v17, &v48);
        v41 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG);
        if (v40 < 22.5)
        {
          if (v41)
          {
            sub_1004CEE84();
          }

          goto LABEL_16;
        }

        if (v41)
        {
          sub_1004CEDFC();
        }

        sub_1004199A8(a1, 1);
        *(a2 + 414) = 0u;
        *(a2 + 384) = 0u;
        *(a2 + 400) = 0u;
        *(a2 + 352) = 0u;
        *(a2 + 368) = 0u;
        *(a2 + 320) = 0u;
        *(a2 + 336) = 0u;
        *(a2 + 288) = 0u;
        *(a2 + 304) = 0u;
        *(a2 + 256) = 0u;
        *(a2 + 272) = 0u;
        *(a2 + 224) = 0u;
        *(a2 + 240) = 0u;
        *(a2 + 192) = 0u;
        *(a2 + 208) = 0u;
        *(a2 + 160) = 0u;
        *(a2 + 176) = 0u;
        *(a2 + 128) = 0u;
        *(a2 + 144) = 0u;
        *(a2 + 96) = 0u;
        *(a2 + 112) = 0u;
        *(a2 + 64) = 0u;
        *(a2 + 80) = 0u;
        *(a2 + 32) = 0u;
        *(a2 + 48) = 0u;
        *a2 = 0u;
        *(a2 + 16) = 0u;
        sub_10041894C(a1, a2);
LABEL_51:
        v23 = 0;
        goto LABEL_35;
      }

      v32 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
      {
        sub_1004CF068(v32, v33, v34, v35, v36, v37, v38, v39);
      }
    }

    else
    {
      v24 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
      {
        sub_1004CF0A0(v24, v25, v26, v27, v28, v29, v30, v31);
      }
    }

    *(a2 + 384) = 0u;
    *(a2 + 400) = 0u;
    *(a2 + 352) = 0u;
    *(a2 + 368) = 0u;
    *(a2 + 320) = 0u;
    *(a2 + 336) = 0u;
    *(a2 + 288) = 0u;
    *(a2 + 304) = 0u;
    *(a2 + 256) = 0u;
    *(a2 + 272) = 0u;
    *(a2 + 224) = 0u;
    *(a2 + 240) = 0u;
    *(a2 + 192) = 0u;
    *(a2 + 208) = 0u;
    *(a2 + 160) = 0u;
    *(a2 + 176) = 0u;
    *(a2 + 128) = 0u;
    *(a2 + 144) = 0u;
    *(a2 + 96) = 0u;
    *(a2 + 112) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 414) = 0u;
    sub_10041894C(a1, a2);
    goto LABEL_51;
  }

  if (v51[0] < 2u)
  {
LABEL_31:
    *a2 = 0;
    v6 = 1;
    goto LABEL_32;
  }

  if ((v51[0] - 2) < 2)
  {
    *a2 = 0;
    v6 = 256;
LABEL_32:
    *(a2 + 4) = v6;
  }

LABEL_33:
  if ((a1[3] & 1) == 0)
  {
    sub_1000195BC();
  }

  sub_100419AE8(*(a1 + 2), v5, (a2 + 280));
  v23 = 1;
LABEL_35:
  if (__p)
  {
    v53 = __p;
    operator delete(__p);
  }

  if (v23)
  {
    if ((*(a2 + 240) & 1) != 0 && !*a2 && *(a1 + 116) != 2 && *(a1 + 480) == 1 && *(a1 + 59) < 500.0)
    {
      *(a2 + 7) = 1;
    }

    goto LABEL_7;
  }
}

void sub_100418918(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10041894C(uint64_t result, uint64_t a2)
{
  if (*(result + 24) != 1)
  {
    return result;
  }

  v3 = result;
  v4 = *(result + 16);
  if (*(result + 56) == 1 && v4 - *(result + 48) < 0.2)
  {
    return result;
  }

  *(result + 48) = v4;
  *(result + 56) = 1;
  sub_10026B0D4(&v97);
  sub_10026B0D4(&v93);
  sub_10026B0D4(&v89);
  sub_10026B0D4(&v85);
  sub_10026B0D4(&v81);
  sub_10026B0D4(&v77);
  sub_10026B0D4(&v73);
  sub_10026B0D4(&v69);
  v5 = v93;
  *(&v93 + *(v93 - 3) + 8) = *(&v93 + *(v93 - 3) + 8) & 0xFFFFFEFB | 4;
  *(&v95[0].__locale_ + *(v5 - 3)) = 2;
  v6 = v89;
  *(&v89 + *(v89 - 3) + 8) = *(&v89 + *(v89 - 3) + 8) & 0xFFFFFEFB | 4;
  *(&v91[0].__locale_ + *(v6 - 3)) = 1;
  v7 = v85;
  *(&v85 + *(v85 - 3) + 8) = *(&v85 + *(v85 - 3) + 8) & 0xFFFFFEFB | 4;
  *(&v87[0].__locale_ + *(v7 - 3)) = 2;
  v8 = v77;
  *(&v77 + *(v77 - 3) + 8) = *(&v77 + *(v77 - 3) + 8) & 0xFFFFFEFB | 4;
  *(&v79[0].__locale_ + *(v8 - 3)) = 2;
  v9 = v73;
  *(&v73 + *(v73 - 3) + 8) = *(&v73 + *(v73 - 3) + 8) & 0xFFFFFEFB | 4;
  *(&v75[0].__locale_ + *(v9 - 3)) = 2;
  v10 = v69;
  *(&v69 + *(v69 - 3) + 8) = *(&v69 + *(v69 - 3) + 8) & 0xFFFFFEFB | 4;
  *(&v71[0].__locale_ + *(v10 - 3)) = 2;
  if (*(a2 + 240) == 1)
  {
    std::ostream::operator<<();
    if (*(a2 + 240) != 1)
    {
      goto LABEL_102;
    }

    v11 = std::ostream::operator<<();
    v12 = " m";
    v13 = 2;
  }

  else
  {
    v12 = "-";
    v13 = 1;
    sub_10000EA44(&v97, "-", 1);
    v11 = &v93;
  }

  sub_10000EA44(v11, v12, v13);
  if (*(a2 + 256) == 1)
  {
    v14 = std::ostream::operator<<();
    v15 = " deg";
    v16 = 4;
  }

  else
  {
    v15 = "-";
    v14 = &v89;
    v16 = 1;
  }

  sub_10000EA44(v14, v15, v16);
  if (*(a2 + 272) == 1)
  {
    v17 = std::ostream::operator<<();
    v18 = " m";
    v19 = 2;
  }

  else
  {
    v18 = "-";
    v17 = &v85;
    v19 = 1;
  }

  sub_10000EA44(v17, v18, v19);
  if (*(a2 + 296) == 1)
  {
    v20 = std::ostream::operator<<();
    v21 = " m";
    v22 = 2;
  }

  else
  {
    v21 = "-";
    v20 = &v77;
    v22 = 1;
  }

  sub_10000EA44(v20, v21, v22);
  v23 = *(a2 + 280);
  if (v23 <= 4)
  {
    sub_10000EA44(&v81, (&off_1009AB0D8)[v23], qword_1005720D0[v23]);
  }

  if (*(a2 + 320) == 1)
  {
    sub_10000EA44(&v73, "[", 1);
    if (*(a2 + 320) != 1)
    {
      goto LABEL_102;
    }

    v24 = std::ostream::operator<<();
    sub_10000EA44(v24, ", ", 2);
    if (*(a2 + 320) != 1)
    {
      goto LABEL_102;
    }

    v25 = std::ostream::operator<<();
    sub_10000EA44(v25, ", ", 2);
    if (*(a2 + 320) != 1)
    {
      goto LABEL_102;
    }

    v26 = std::ostream::operator<<();
    v27 = "]";
  }

  else
  {
    v27 = "-";
    v26 = &v73;
  }

  sub_10000EA44(v26, v27, 1);
  if (*(a2 + 352) != 1)
  {
    v31 = "-";
    v30 = &v69;
    v32 = 1;
    goto LABEL_31;
  }

  sub_10000EA44(&v69, "[", 1);
  if (*(a2 + 352) != 1 || (v28 = std::ostream::operator<<(), sub_10000EA44(v28, ", ", 2), *(a2 + 352) != 1) || (v29 = std::ostream::operator<<(), sub_10000EA44(v29, ", ", 2), (*(a2 + 352) & 1) == 0))
  {
LABEL_102:
    sub_1000195BC();
  }

  v30 = std::ostream::operator<<();
  v31 = "] m";
  v32 = 3;
LABEL_31:
  sub_10000EA44(v30, v31, v32);
  v33 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    std::stringbuf::str();
    if (v68 >= 0)
    {
      v34 = &v67;
    }

    else
    {
      v34 = v67;
    }

    if ((*(v3 + 24) & 1) == 0)
    {
      sub_1000195BC();
    }

    v35 = *(v3 + 16);
    if (*a2 == 1)
    {
      v36 = "YES";
    }

    else
    {
      v36 = "NO";
    }

    if (*(a2 + 4))
    {
      v37 = "YES";
    }

    else
    {
      v37 = "NO";
    }

    if (*(a2 + 5))
    {
      v38 = "YES";
    }

    else
    {
      v38 = "NO";
    }

    if (*(a2 + 6))
    {
      v39 = "YES";
    }

    else
    {
      v39 = "NO";
    }

    if (*(a2 + 7))
    {
      v40 = "YES";
    }

    else
    {
      v40 = "NO";
    }

    std::stringbuf::str();
    if (v66 >= 0)
    {
      v41 = &v65;
    }

    else
    {
      v41 = v65;
    }

    std::stringbuf::str();
    if (v64 >= 0)
    {
      v42 = &v63;
    }

    else
    {
      v42 = v63;
    }

    v52 = v42;
    std::stringbuf::str();
    if (v62 >= 0)
    {
      v43 = &v61;
    }

    else
    {
      v43 = v61;
    }

    v51 = v43;
    v44 = &v59;
    std::stringbuf::str();
    v50 = v39;
    if (v60 < 0)
    {
      v44 = v59;
    }

    v45 = &v57;
    std::stringbuf::str();
    if (v58 < 0)
    {
      v45 = v57;
    }

    std::stringbuf::str();
    std::stringbuf::str();
    v46 = &v55;
    if (v56 < 0)
    {
      v46 = v55;
    }

    p_p = &__p;
    if (v54 < 0)
    {
      p_p = __p;
    }

    *buf = 136318466;
    v102 = v34;
    v103 = 2048;
    v104 = v35;
    v105 = 2080;
    v106 = v36;
    v107 = 2080;
    v108 = v37;
    v109 = 2080;
    v110 = v38;
    v111 = 2080;
    v112 = v50;
    v113 = 2080;
    v114 = v40;
    v115 = 2080;
    v116 = v41;
    v117 = 2080;
    v118 = v52;
    v119 = 2080;
    v120 = v51;
    v121 = 2080;
    v122 = v44;
    v123 = 2080;
    v124 = v45;
    v125 = 2080;
    v126 = v46;
    v127 = 2080;
    v128 = p_p;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#sa_algo_moving_findee,DeviceID: %s\n\tTimestamp: %f\n\tSolution convergence: %s, insufficientDisplacement: %s, insufficientHorizontalPositionDiversity: %s, insufficientVerticalPositionDiversity: %s, insufficientLighting: %s\n\tRange: %s, Horizontal angle: %s, Horizontal distance: %s, Vertical distance: %s, Vertical state: %s, Direction: %s, World Position: %s", buf, 0x8Eu);
    if (v54 < 0)
    {
      operator delete(__p);
    }

    if (v56 < 0)
    {
      operator delete(v55);
    }

    if (v58 < 0)
    {
      operator delete(v57);
    }

    if (v60 < 0)
    {
      operator delete(v59);
    }

    if (v62 < 0)
    {
      operator delete(v61);
    }

    if (v64 < 0)
    {
      operator delete(v63);
    }

    if (v66 < 0)
    {
      operator delete(v65);
    }

    if (v68 < 0)
    {
      operator delete(v67);
    }
  }

  if (v72 < 0)
  {
    operator delete(v71[7].__locale_);
  }

  std::locale::~locale(v71);
  std::ostream::~ostream();
  std::ios::~ios();
  v73 = v48;
  *(&v73 + *(v48 - 3)) = v49;
  if (v76 < 0)
  {
    operator delete(v75[7].__locale_);
  }

  std::locale::~locale(v75);
  std::ostream::~ostream();
  std::ios::~ios();
  v77 = v48;
  *(&v77 + *(v48 - 3)) = v49;
  if (v80 < 0)
  {
    operator delete(v79[7].__locale_);
  }

  std::locale::~locale(v79);
  std::ostream::~ostream();
  std::ios::~ios();
  v81 = v48;
  *(&v81 + *(v48 - 3)) = v49;
  if (v84 < 0)
  {
    operator delete(v83[7].__locale_);
  }

  std::locale::~locale(v83);
  std::ostream::~ostream();
  std::ios::~ios();
  v85 = v48;
  *(&v85 + *(v48 - 3)) = v49;
  if (v88 < 0)
  {
    operator delete(v87[7].__locale_);
  }

  std::locale::~locale(v87);
  std::ostream::~ostream();
  std::ios::~ios();
  v89 = v48;
  *(&v89 + *(v48 - 3)) = v49;
  if (v92 < 0)
  {
    operator delete(v91[7].__locale_);
  }

  std::locale::~locale(v91);
  std::ostream::~ostream();
  std::ios::~ios();
  v93 = v48;
  *(&v93 + *(v48 - 3)) = v49;
  if (v96 < 0)
  {
    operator delete(v95[7].__locale_);
  }

  std::locale::~locale(v95);
  std::ostream::~ostream();
  std::ios::~ios();
  v97 = v48;
  *(&v97 + *(v48 - 3)) = v49;
  if (v100 < 0)
  {
    operator delete(v99[7].__locale_);
  }

  std::locale::~locale(v99);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_1004197E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53, void *a54, uint64_t a55, int a56, __int16 a57, char a58, char a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a41 < 0)
  {
    operator delete(a36);
  }

  if (a47 < 0)
  {
    operator delete(a42);
  }

  if (a53 < 0)
  {
    operator delete(a48);
  }

  if (a59 < 0)
  {
    operator delete(a54);
  }

  sub_10038B85C(&a60);
  sub_10038B85C(&a65);
  sub_10038B85C(&STACK[0x300]);
  sub_10038B85C(&STACK[0x408]);
  sub_10038B85C(&STACK[0x510]);
  sub_10038B85C(&STACK[0x618]);
  sub_10038B85C(&STACK[0x720]);
  sub_10038B85C(&STACK[0x828]);
  _Unwind_Resume(a1);
}

long double sub_100419924(double a1, uint64_t a2, uint64_t a3)
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004CF0D8();
  }

  return atan(a1 / *(a3 + 8)) * 180.0 / 3.14159265;
}

void sub_1004199A8(uint64_t a1, int a2)
{
  if (*(a1 + 536) != a2)
  {
    v4 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v5 = "NO";
      v6 = *(a1 + 456) + *(a1 + 448) - 1;
      v7 = *(*(*(a1 + 424) + ((v6 >> 2) & 0x3FFFFFFFFFFFFFF8)) + ((v6 & 0x1F) << 7));
      v8 = *(a1 + 528) + *(a1 + 520) - 1;
      v9 = *(*(*(a1 + 496) + ((v8 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v8 & 0x7F));
      if (a2)
      {
        v5 = "YES";
      }

      v10 = 136315650;
      v11 = v5;
      v12 = 2048;
      v13 = v7;
      v14 = 2048;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#sa_algo_moving_findee,#stalePeerVIO Peer pose history stale status changed to %s, last self pose at %f s, last peer pose at %f s ", &v10, 0x20u);
    }

    *(a1 + 536) = a2;
  }
}

void sub_100419AE8(double a1, uint64_t a2, int *a3)
{
  v3 = *a3;
  if (*a3 <= 1)
  {
    if (v3)
    {
      if (v3 == 1 && os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
      {
        sub_1004CF2B0();
      }
    }

    else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
    {
      sub_1004CF324();
    }
  }

  else if (v3 == 2)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
    {
      sub_1004CF23C();
    }
  }

  else if (v3 == 3)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
    {
      sub_1004CF1C8();
    }
  }

  else if (v3 == 4 && os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004CF154();
  }
}

__n128 sub_100419C1C(unint64_t *a1, uint64_t a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 26 * ((v4 - v5) >> 3) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    sub_10041A4E4(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  v8 = *(v5 + 8 * (v7 / 0x1A)) + 152 * (v7 % 0x1A);
  v9 = *(a2 + 16);
  *v8 = *a2;
  *(v8 + 16) = v9;
  v10 = *(a2 + 32);
  v11 = *(a2 + 48);
  v12 = *(a2 + 80);
  *(v8 + 64) = *(a2 + 64);
  *(v8 + 80) = v12;
  *(v8 + 32) = v10;
  *(v8 + 48) = v11;
  result = *(a2 + 96);
  v14 = *(a2 + 112);
  v15 = *(a2 + 128);
  *(v8 + 144) = *(a2 + 144);
  *(v8 + 112) = v14;
  *(v8 + 128) = v15;
  *(v8 + 96) = result;
  ++a1[5];
  return result;
}

void *sub_100419CF4(int64x2_t *a1, void *a2, char *a3)
{
  v4 = a1[2].u64[0];
  v5 = a1->i64[1];
  v6 = (v5 + 8 * (v4 / 0x1A));
  if (a1[1].i64[0] == v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = (*v6 + 152 * (v4 % 0x1A));
  }

  if (a3 == v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = 26 * (a2 - v6) - 0x79435E50D79435E5 * (&a3[-*a2] >> 3) + 0x79435E50D79435E5 * (&v7[-*v6] >> 3);
  }

  v31[0].n128_u64[0] = v5 + 8 * (v4 / 0x1A);
  v31[0].n128_u64[1] = v7;
  sub_10041A790(v31, v8);
  v9 = a1[2].i64[1];
  v10 = v31[0].n128_u64[1] - *v31[0].n128_u64[0];
  v11 = 0x86BCA1AF286BCA1BLL * (v10 >> 3);
  if (v8 <= (v9 - 1) >> 1)
  {
    if (v10 < -151)
    {
      v24 = 24 - v11;
      v25 = (24 - v11) / 0x1A;
      v17 = (v31[0].n128_u64[0] - 8 * v25);
      v18 = (*v17 + 152 * (26 * v25 - v24) + 3800);
    }

    else
    {
      v15 = v11 + 1;
      v16 = (v11 + 1) / 0x1A;
      v17 = (v31[0].n128_u64[0] + 8 * v16);
      v18 = (*v17 + 152 * (v15 - 26 * v16));
    }

    sub_10041A844(v6, v7, v31[0].n128_u64[0], v31[0].n128_u64[1], v17, v18, v31);
    a1[2] = vaddq_s64(a1[2], xmmword_100561EC0);
    sub_10041A6B8(a1, 1);
  }

  else
  {
    if (v10 < -151)
    {
      v19 = 24 - v11;
      v13 = (v31[0].n128_u64[0] - 8 * (v19 / 0x1A));
      v14 = (*v13 + 152 * (26 * (v19 / 0x1A) - v19) + 3800);
    }

    else
    {
      v12 = v11 + 1;
      v13 = (v31[0].n128_u64[0] + 8 * (v12 / 0x1A));
      v14 = (*v13 + 152 * (v12 % 0x1A));
    }

    v20 = a1[2].i64[0] + v9;
    v21 = a1->i64[1];
    v22 = (v21 + 8 * (v20 / 0x1A));
    if (a1[1].i64[0] == v21)
    {
      v23 = 0;
    }

    else
    {
      v23 = (*v22 + 152 * (v20 % 0x1A));
    }

    sub_10041A9F8(v13, v14, v22, v23, v31);
    --a1[2].i64[1];
    sub_10041A718(a1, 1);
  }

  v26 = a1[2].u64[0];
  v27 = a1->i64[1];
  v28 = (v27 + 8 * (v26 / 0x1A));
  if (a1[1].i64[0] == v27)
  {
    v29 = 0;
  }

  else
  {
    v29 = *v28 + 152 * (v26 % 0x1A);
  }

  v31[0].n128_u64[0] = v28;
  v31[0].n128_u64[1] = v29;
  sub_10041A790(v31, v8);
  return v31[0].n128_u64[0];
}

void *sub_100419FB0(void *a1, char *a2, uint64_t a3, char *a4, uint64_t a5)
{
  if (a5 == a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((a5 - *a4) >> 5) + 16 * (a4 - a2) - ((a3 - *a2) >> 5);
  }

  v7 = a1[1];
  v8 = (v7 + 8 * (a1[4] >> 7));
  if (a1[2] == v7)
  {
    v9 = 0;
  }

  else
  {
    v9 = *v8 + 32 * (a1[4] & 0x7FLL);
  }

  v33 = (v7 + 8 * (a1[4] >> 7));
  v34 = v9;
  if (a3 == v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = ((a3 - *a2) >> 5) + 16 * (a2 - v8) - ((v9 - *v8) >> 5);
  }

  v11 = sub_10041ABA4(&v33, v10);
  v32.n128_u64[0] = v11;
  v32.n128_u64[1] = v12;
  if (v6 >= 1)
  {
    if (v10 <= (a1[5] - v6) >> 1)
    {
      v19 = v11;
      v20 = v12;
      v21 = v33;
      v22 = v34;
      v23 = sub_10041ABA4(&v32, v6);
      sub_10041AC08(v21, v22, v19, v20, v23, v24, &v35);
      v25 = v34;
      if (v34 != v36)
      {
        v26 = v33;
        do
        {
          v25 += 32;
          v34 = v25;
          if (&v25[-*v26] == 4096)
          {
            v27 = v26[1];
            ++v26;
            v25 = v27;
            v33 = v26;
            v34 = v27;
          }
        }

        while (v25 != v36);
      }

      v28 = a1[5] - v6;
      a1[4] += v6;
      a1[5] = v28;
        ;
      }
    }

    else
    {
      v13 = sub_10041ABA4(&v32, v6);
      v15 = a1[4] + a1[5];
      v16 = a1[1];
      v17 = (v16 + 8 * (v15 >> 7));
      if (a1[2] == v16)
      {
        v18 = 0;
      }

      else
      {
        v18 = (*v17 + 32 * (v15 & 0x7F));
      }

      v35 = v32;
      sub_10041AD94(v13, v14, v17, v18, &v35);
      a1[5] -= v6;
        ;
      }
    }
  }

  v29 = a1[1];
  if (a1[2] == v29)
  {
    v30 = 0;
  }

  else
  {
    v30 = *(v29 + 8 * (a1[4] >> 7)) + 32 * (a1[4] & 0x7FLL);
  }

  v35.n128_u64[0] = v29 + 8 * (a1[4] >> 7);
  v35.n128_u64[1] = v30;
  return sub_10041ABA4(&v35, v10);
}

uint64_t *sub_10041A1E8(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    *(v2 + 496) = off_1009991A0;
    *(v2 + 424) = off_1009991A0;
    v5 = (v2 + 360);
    sub_1003BC38C(&v5);
    *(v2 + 240) = off_1009991A0;
    *(v2 + 160) = off_1009991A0;
    *(v2 + 96) = off_1009991A0;
    v5 = (v2 + 72);
    sub_1003BC338(&v5);
    v3 = *(v2 + 40);
    if (v3)
    {
      *(v2 + 48) = v3;
      operator delete(v3);
    }

    v4 = *v2;
    if (*v2)
    {
      *(v2 + 8) = v4;
      operator delete(v4);
    }

    operator delete();
  }

  return result;
}

void sub_10041A310(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x80;
  v3 = v1 - 128;
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
    sub_10016F098(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  sub_10016EC70(a1, &v9);
}

void sub_10041A498(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10041A4E4(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x1A;
  v3 = v1 - 26;
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
    sub_10016F098(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  sub_10016EC70(a1, &v9);
}

void sub_10041A66C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10041A6B8(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x1A)
  {
    a2 = 1;
  }

  if (v2 < 0x34)
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
    *(a1 + 32) -= 26;
  }

  return v4 ^ 1u;
}

uint64_t sub_10041A718(void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 26 * ((v2 - v3) >> 3) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x1A)
  {
    a2 = 1;
  }

  if (v5 < 0x34)
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

void *sub_10041A790(void *result, uint64_t a2)
{
  if (a2)
  {
    v2 = *result;
    v3 = a2 - 0x79435E50D79435E5 * ((result[1] - **result) >> 3);
    if (v3 < 1)
    {
      v5 = 25 - v3;
      v6 = &v2[-(v5 / 0x1A)];
      *result = v6;
      v4 = *v6 + 152 * (26 * (v5 / 0x1A) - v5) + 3800;
    }

    else
    {
      *result = &v2[v3 / 0x1A];
      v4 = v2[v3 / 0x1A] + 152 * (v3 % 0x1A);
    }

    result[1] = v4;
  }

  return result;
}

__n128 sub_10041A844@<Q0>(uint64_t *a1@<X1>, char *a2@<X2>, char **a3@<X3>, unint64_t a4@<X4>, char *a5@<X5>, char *a6@<X6>, __n128 *a7@<X8>)
{
  if (a1 == a3)
  {
    v11 = a2;
    v12 = a4;
    v13 = a5;
    v14 = a6;
  }

  else
  {
    v17 = (a3 - 1);
    v16 = *a3;
    v18 = a4;
    v13 = a5;
    v14 = a6;
    while (1)
    {
      sub_10041A914(v16, v18, v13, v14, &v21);
      v14 = v22.n128_u64[1];
      v13 = v22.n128_u64[0];
      if (v17 == a1)
      {
        break;
      }

      v19 = *v17--;
      v16 = v19;
      v18 = (v19 + 3952);
    }

    v12 = (*v17 + 3952);
    v11 = a2;
  }

  sub_10041A914(v11, v12, v13, v14, &v21);
  result = v22;
  a7->n128_u64[0] = a3;
  a7->n128_u64[1] = a4;
  a7[1] = result;
  return result;
}

void *sub_10041A914@<X0>(char *a1@<X1>, char *a2@<X2>, char *a3@<X3>, char *a4@<X4>, char **a5@<X8>)
{
  v6 = a3;
  if (a1 == a2)
  {
    v9 = a1;
  }

  else
  {
    v9 = a2;
    v10 = *a3;
    v11 = a2;
    while (1)
    {
      v12 = 0x86BCA1AF286BCA1BLL * (&a4[-v10] >> 3);
      if ((0x86BCA1AF286BCA1BLL * ((v11 - a1) >> 3)) < v12)
      {
        v12 = 0x86BCA1AF286BCA1BLL * ((v11 - a1) >> 3);
      }

      v11 -= 152 * v12;
      a4 -= 152 * v12;
      if (v12)
      {
        result = memmove(a4, v11, 152 * v12);
      }

      if (v11 == a1)
      {
        break;
      }

      v14 = *(v6 - 1);
      v6 -= 8;
      v10 = v14;
      a4 = (v14 + 3952);
    }

    if ((*v6 + 3952) == a4)
    {
      v15 = *(v6 + 1);
      v6 += 8;
      a4 = v15;
    }
  }

  *a5 = v9;
  a5[1] = v6;
  a5[2] = a4;
  return result;
}

double sub_10041A9F8(void **a1, uint64_t *__src, void **a3, uint64_t *a4, void ***a5)
{
  if (a1 == a3)
  {
    v7 = *a5;
    v8 = a5[1];
    v9 = __src;
  }

  else
  {
    v11 = a1 + 1;
    sub_10041AABC(&v15, __src, a5[1], *a1 + 494, *a5);
    for (i = v16; ; i = v16)
    {
      *a5 = i;
      if (v11 == a3)
      {
        break;
      }

      v13 = *v11++;
      sub_10041AABC(&v15, v13, a5[1], v13 + 494, *a5);
    }

    v9 = *v11;
    v7 = *a5;
    v8 = a5[1];
  }

  sub_10041AABC(&v15, v9, v8, a4, v7);
  result = *&v16;
  *a5 = v16;
  return result;
}

uint64_t *sub_10041AABC@<X0>(uint64_t **__return_ptr a1@<X8>, uint64_t *__src@<X0>, char *__dst@<X3>, uint64_t *a4@<X1>, void **a5@<X2>)
{
  v6 = a5;
  if (__src != a4)
  {
    v9 = __src;
    v6 = a5 + 1;
    v10 = *a5;
    while (1)
    {
      v11 = 0x86BCA1AF286BCA1BLL * ((v10 - __dst + 3952) >> 3);
      if ((0x86BCA1AF286BCA1BLL * (a4 - v9)) < v11)
      {
        v11 = 0x86BCA1AF286BCA1BLL * (a4 - v9);
      }

      v12 = 152 * v11;
      if (v11)
      {
        __src = memmove(__dst, v9, 152 * v11);
      }

      v9 = (v9 + v12);
      if (v9 == a4)
      {
        break;
      }

      v13 = *v6++;
      v10 = v13;
      __dst = v13;
    }

    __dst += v12;
    if (*(v6 - 1) + 3952 == __dst)
    {
      __dst = *v6;
    }

    else
    {
      --v6;
    }
  }

  *a1 = a4;
  a1[1] = v6;
  a1[2] = __dst;
  return __src;
}

void *sub_10041ABA4(uint64_t a1, uint64_t a2)
{
  result = *a1;
  if (a2)
  {
    v4 = a2 + ((*(a1 + 8) - *result) >> 5);
    if (v4 < 1)
    {
      result -= (127 - v4) >> 7;
    }

    else
    {
      result += v4 >> 7;
    }
  }

  return result;
}

__n128 sub_10041AC08@<Q0>(uint64_t *a1@<X1>, char *a2@<X2>, char **a3@<X3>, unint64_t a4@<X4>, char *a5@<X5>, char *a6@<X6>, __n128 *a7@<X8>)
{
  if (a1 == a3)
  {
    v11 = a2;
    v12 = a4;
    v13 = a5;
    v14 = a6;
  }

  else
  {
    v17 = (a3 - 1);
    v16 = *a3;
    v18 = a4;
    v13 = a5;
    v14 = a6;
    while (1)
    {
      sub_10041ACD8(v16, v18, v13, v14, &v21);
      v14 = v22.n128_u64[1];
      v13 = v22.n128_u64[0];
      if (v17 == a1)
      {
        break;
      }

      v19 = *v17--;
      v16 = v19;
      v18 = (v19 + 4096);
    }

    v12 = (*v17 + 4096);
    v11 = a2;
  }

  sub_10041ACD8(v11, v12, v13, v14, &v21);
  result = v22;
  a7->n128_u64[0] = a3;
  a7->n128_u64[1] = a4;
  a7[1] = result;
  return result;
}

void *sub_10041ACD8@<X0>(char *a1@<X1>, char *a2@<X2>, char *a3@<X3>, char *a4@<X4>, char **a5@<X8>)
{
  v6 = a3;
  if (a1 == a2)
  {
    v9 = a1;
  }

  else
  {
    v9 = a2;
    v10 = *a3;
    v11 = a2;
    while (1)
    {
      v12 = &a4[-v10];
      if ((v11 - a1) >> 5 >= v12 >> 5)
      {
        v13 = v12 >> 5;
      }

      else
      {
        v13 = (v11 - a1) >> 5;
      }

      v11 -= 32 * v13;
      a4 -= 32 * v13;
      if (v13)
      {
        result = memmove(a4, v11, 32 * v13);
      }

      if (v11 == a1)
      {
        break;
      }

      v15 = *(v6 - 1);
      v6 -= 8;
      v10 = v15;
      a4 = (v15 + 4096);
    }

    if ((*v6 + 4096) == a4)
    {
      v16 = *(v6 + 1);
      v6 += 8;
      a4 = v16;
    }
  }

  *a5 = v9;
  a5[1] = v6;
  a5[2] = a4;
  return result;
}

double sub_10041AD94(void **a1, uint64_t *__src, void **a3, uint64_t *a4, void ***a5)
{
  if (a1 == a3)
  {
    v7 = *a5;
    v8 = a5[1];
    v9 = __src;
  }

  else
  {
    v11 = a1 + 1;
    sub_10041AE58(&v15, __src, a5[1], *a1 + 512, *a5);
    for (i = v16; ; i = v16)
    {
      *a5 = i;
      if (v11 == a3)
      {
        break;
      }

      v13 = *v11++;
      sub_10041AE58(&v15, v13, a5[1], v13 + 512, *a5);
    }

    v9 = *v11;
    v7 = *a5;
    v8 = a5[1];
  }

  sub_10041AE58(&v15, v9, v8, a4, v7);
  result = *&v16;
  *a5 = v16;
  return result;
}

uint64_t *sub_10041AE58@<X0>(uint64_t **__return_ptr a1@<X8>, uint64_t *__src@<X0>, char *__dst@<X3>, uint64_t *a4@<X1>, void **a5@<X2>)
{
  v6 = a5;
  if (__src != a4)
  {
    v9 = __src;
    v6 = a5 + 1;
    v10 = *a5;
    while (1)
    {
      v11 = v10 - __dst + 4096;
      v12 = (a4 - v9) >> 5 >= v11 >> 5 ? v11 >> 5 : (a4 - v9) >> 5;
      if (v12)
      {
        __src = memmove(__dst, v9, 32 * v12);
      }

      v9 += 4 * v12;
      if (v9 == a4)
      {
        break;
      }

      v13 = *v6++;
      v10 = v13;
      __dst = v13;
    }

    __dst += 32 * v12;
    if (*(v6 - 1) + 4096 == __dst)
    {
      __dst = *v6;
    }

    else
    {
      --v6;
    }
  }

  *a1 = a4;
  a1[1] = v6;
  a1[2] = __dst;
  return __src;
}

uint64_t sub_10041AF38()
{
  v1 = xmmword_100572068;
  v2[0] = unk_100572078;
  v2[1] = xmmword_100572088;
  v2[2] = unk_100572098;
  qword_1009F91C0 = 0;
  unk_1009F91C8 = 0;
  qword_1009F91B8 = 0;
  sub_10004EEB8(&qword_1009F91B8, &v1, &v3, 4uLL);
  __cxa_atexit(sub_100045220, &qword_1009F91B8, &_mh_execute_header);
  v1 = xmmword_1005720A8;
  qword_1009F91D8 = 0;
  unk_1009F91E0 = 0;
  qword_1009F91D0 = 0;
  sub_10004EEB8(&qword_1009F91D0, &v1, v2, 1uLL);
  return __cxa_atexit(sub_100045220, &qword_1009F91D0, &_mh_execute_header);
}

uint64_t sub_10041B03C(uint64_t a1, void *a2)
{
  v3 = a2;
  *a1 = v3;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  if (!v3)
  {
    __assert_rtn("RoseSupervisorInterface", "RoseSupervisorInterface.mm", 45, "fDispatchQueue");
  }

  v4 = v3;
  v5 = *(a1 + 16);
  *(a1 + 16) = &stru_1009AB120;

  return a1;
}

void sub_10041B0DC(id a1, const void *a2)
{
  v3 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a2 + 2) - *(a2 + 1);
    v5 = 134217984;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Received HID event, but no handler defined. Data len: %zu", &v5, 0xCu);
  }
}

uint64_t sub_10041B18C(uint64_t a1)
{
  v2 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "~RoseSupervisorInterface()", v5, 2u);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    IOServiceClose(v3);
  }

  return a1;
}

BOOL sub_10041B228(uint64_t a1)
{
  v1 = (a1 + 8);
  if (*(a1 + 8))
  {
    return 1;
  }

  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004CF398();
  }

  v3 = IOServiceNameMatching("rose-supervisor");
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v3);
  v5 = MatchingService;
  if (MatchingService)
  {
    v6 = IOServiceOpen(MatchingService, mach_task_self_, 0, v1);
    IOObjectRelease(v5);
    v7 = qword_1009F9820;
    if (!v6)
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[RoseSupervisorInterface] Successfully connected to RoseSupervisor", v9, 2u);
      }

      return 1;
    }

    v8 = qword_1009F9820;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10041B3BC(v6, v9);
      sub_1004CF3CC(v9, buf, v8);
    }
  }

  else
  {
    result = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    sub_1004CF440();
  }

  return 0;
}

void *sub_10041B3BC@<X0>(int a1@<W0>, void *a2@<X8>)
{
  switch(a1)
  {
    case -536870212:
      v2 = "kIOReturnError";
      break;
    case -536870211:
      v2 = "kIOReturnNoMemory";
      break;
    case -536870210:
      v2 = "kIOReturnNoResources";
      break;
    case -536870209:
      v2 = "kIOReturnIPCError";
      break;
    case -536870208:
      v2 = "kIOReturnNoDevice";
      break;
    case -536870207:
      v2 = "kIOReturnNotPrivileged";
      break;
    case -536870206:
      v2 = "kIOReturnBadArgument";
      break;
    case -536870205:
      v2 = "kIOReturnLockedRead";
      break;
    case -536870204:
      v2 = "kIOReturnLockedWrite";
      break;
    case -536870203:
      v2 = "kIOReturnExclusiveAccess";
      break;
    case -536870202:
      v2 = "kIOReturnBadMessageID";
      break;
    case -536870201:
      v2 = "kIOReturnUnsupported";
      break;
    case -536870200:
      v2 = "kIOReturnVMError";
      break;
    case -536870199:
      v2 = "kIOReturnInternalError";
      break;
    case -536870198:
      v2 = "kIOReturnIOError";
      break;
    case -536870197:
    case -536870180:
      goto LABEL_7;
    case -536870196:
      v2 = "kIOReturnCannotLock";
      break;
    case -536870195:
      v2 = "kIOReturnNotOpen";
      break;
    case -536870194:
      v2 = "kIOReturnNotReadable";
      break;
    case -536870193:
      v2 = "kIOReturnNotWritable";
      break;
    case -536870192:
      v2 = "kIOReturnNotAligned";
      break;
    case -536870191:
      v2 = "kIOReturnBadMedia";
      break;
    case -536870190:
      v2 = "kIOReturnStillOpen";
      break;
    case -536870189:
      v2 = "kIOReturnRLDError";
      break;
    case -536870188:
      v2 = "kIOReturnDMAError";
      break;
    case -536870187:
      v2 = "kIOReturnBusy";
      break;
    case -536870186:
      v2 = "kIOReturnTimeout";
      break;
    case -536870185:
      v2 = "kIOReturnOffline";
      break;
    case -536870184:
      v2 = "kIOReturnNotReady";
      break;
    case -536870183:
      v2 = "kIOReturnNotAttached";
      break;
    case -536870182:
      v2 = "kIOReturnNoChannels";
      break;
    case -536870181:
      v2 = "kIOReturnNoSpace";
      break;
    case -536870179:
      v2 = "kIOReturnPortExists";
      break;
    case -536870178:
      v2 = "kIOReturnCannotWire";
      break;
    case -536870177:
      v2 = "kIOReturnNoInterrupt";
      break;
    case -536870176:
      v2 = "kIOReturnNoFrames";
      break;
    case -536870175:
      v2 = "kIOReturnMessageTooLarge";
      break;
    case -536870174:
      v2 = "kIOReturnNotPermitted";
      break;
    case -536870173:
      v2 = "kIOReturnNoPower";
      break;
    case -536870172:
      v2 = "kIOReturnNoMedia";
      break;
    case -536870171:
      v2 = "kIOReturnUnformattedMedia";
      break;
    case -536870170:
      v2 = "kIOReturnUnsupportedMode";
      break;
    case -536870169:
      v2 = "kIOReturnUnderrun";
      break;
    case -536870168:
      v2 = "kIOReturnOverrun";
      break;
    case -536870167:
      v2 = "kIOReturnDeviceError";
      break;
    case -536870166:
      v2 = "kIOReturnNoCompletion";
      break;
    case -536870165:
      v2 = "kIOReturnAborted";
      break;
    case -536870164:
      v2 = "kIOReturnNoBandwidth";
      break;
    case -536870163:
      v2 = "kIOReturnNotResponding";
      break;
    case -536870162:
      v2 = "kIOReturnIsoTooOld";
      break;
    case -536870161:
      v2 = "kIOReturnIsoTooNew";
      break;
    case -536870160:
      v2 = "kIOReturnNotFound";
      break;
    default:
      if (a1 == -536870911)
      {
        v2 = "kIOReturnInvalid";
      }

      else if (a1)
      {
LABEL_7:
        v2 = "<Unknown IOReturn Value>";
      }

      else
      {
        v2 = "kIOReturnSuccess";
      }

      break;
  }

  return sub_100004A08(a2, v2);
}

void sub_10041B690(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004CF480();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1004CF4B4();
  }

  if (!v3)
  {
    goto LABEL_5;
  }

LABEL_3:
  v4 = objc_retainBlock(v3);
  v5 = *(a1 + 16);
  *(a1 + 16) = v4;
}

BOOL sub_10041B708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004CF4E0();
  }

  input = v6;
  bzero(__src, 0x400uLL);
  __n = 1024;
  v8 = IOConnectCallMethod(*(a1 + 8), 3u, &input, 1u, *a3, *(a3 + 8) - *a3, 0, 0, __src, &__n);
  v9 = __n;
  if (__n >= 0x401)
  {
    sub_1004CF514();
  }

  v10 = v8;
  v11 = *(a4 + 8) - *a4;
  if (__n <= v11)
  {
    if (__n < v11)
    {
      *(a4 + 8) = *a4 + __n;
    }
  }

  else
  {
    sub_100009838(a4, __n - v11);
    v9 = __n;
  }

  if (v9)
  {
    memcpy(*a4, __src, v9);
  }

  if (v10)
  {
    v22 = _NSConcreteStackBlock;
    v23 = 3221225472;
    v24 = sub_10041B998;
    v25 = &unk_1009A0700;
    v26 = v6;
    v27 = v10;
    AnalyticsSendEventLazy();
    v12 = qword_1009F9820;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10041BA9C(v6, v20);
      v14 = v21;
      v15 = v20[0];
      sub_10041B3BC(v10, __p);
      v16 = v20;
      if (v14 < 0)
      {
        v16 = v15;
      }

      if (v19 >= 0)
      {
        v17 = __p;
      }

      else
      {
        v17 = __p[0];
      }

      *buf = 136315394;
      v30 = v16;
      v31 = 2080;
      v32 = v17;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to send command packet type: %s, return: %s", buf, 0x16u);
      if (v19 < 0)
      {
        operator delete(__p[0]);
      }

      if (v21 < 0)
      {
        operator delete(v20[0]);
      }
    }
  }

  return v10 == 0;
}

void sub_10041B968(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id sub_10041B998(uint64_t a1)
{
  v6[0] = @"CommandType";
  v2 = [NSNumber numberWithInt:*(a1 + 32)];
  v6[1] = @"ErrorCode";
  v7[0] = v2;
  v3 = [NSNumber numberWithInt:*(a1 + 36)];
  v7[1] = v3;
  v4 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

void *sub_10041BA9C@<X0>(unsigned int a1@<W0>, void *a2@<X8>)
{
  if (a1 > 0x3E)
  {
    v2 = "<Unknown Command Type>";
  }

  else
  {
    v2 = off_1009AB1A0[a1];
  }

  return sub_100004A08(a2, v2);
}

BOOL sub_10041BAC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004CF540();
  }

  input = v4;
  v6 = IOConnectCallMethod(*(a1 + 8), 1u, &input, 1u, *a3, *(a3 + 8) - *a3, 0, 0, 0, 0);
  v7 = v6;
  if (v6)
  {
    v18 = _NSConcreteStackBlock;
    v19 = 3221225472;
    v20 = sub_10041BCE0;
    v21 = &unk_1009A0700;
    v22 = v4;
    v23 = v6;
    AnalyticsSendEventLazy();
    v8 = qword_1009F9820;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10041BDE4(v4, v16);
      v10 = v17;
      v11 = v16[0];
      sub_10041B3BC(v7, __p);
      v12 = v16;
      if (v10 < 0)
      {
        v12 = v11;
      }

      if (v15 >= 0)
      {
        v13 = __p;
      }

      else
      {
        v13 = __p[0];
      }

      *buf = 136315394;
      v25 = v12;
      v26 = 2080;
      v27 = v13;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to set property type: %s, return: %s", buf, 0x16u);
      if (v15 < 0)
      {
        operator delete(__p[0]);
      }

      if (v17 < 0)
      {
        operator delete(v16[0]);
      }
    }
  }

  return v7 == 0;
}

void sub_10041BCB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id sub_10041BCE0(uint64_t a1)
{
  v6[0] = @"PropertyType";
  v2 = [NSNumber numberWithInt:*(a1 + 32)];
  v6[1] = @"ErrorCode";
  v7[0] = v2;
  v3 = [NSNumber numberWithInt:*(a1 + 36)];
  v7[1] = v3;
  v4 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

void *sub_10041BDE4@<X0>(int a1@<W0>, void *a2@<X8>)
{
  if ((a1 - 208) > 0xB)
  {
    v2 = "<Unknown Property Type>";
  }

  else
  {
    v2 = off_1009AB398[a1 - 208];
  }

  return sub_100004A08(a2, v2);
}

BOOL sub_10041BE14(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004CF574();
  }

  input = a2;
  v27 = 1024;
  LOBYTE(v19[0]) = 0;
  outputStruct = *a3;
  v7 = *(a3 + 8) - *a3;
  if (v7 > 0x3FF)
  {
    if (v7 != 1024)
    {
      *(a3 + 8) = outputStruct + 1024;
    }
  }

  else
  {
    sub_100250E48(a3, 1024 - v7, v19);
    outputStruct = *a3;
  }

  v8 = IOConnectCallMethod(*(a1 + 8), 2u, &input, 1u, 0, 0, 0, 0, outputStruct, &v27);
  if (v27 >= 0x401)
  {
    sub_1004CF5A8();
  }

  v9 = v8;
  v10 = *(a3 + 8) - *a3;
  if (v27 <= v10)
  {
    if (v27 < v10)
    {
      *(a3 + 8) = *a3 + v27;
    }
  }

  else
  {
    sub_100009838(a3, v27 - v10);
  }

  if (v9)
  {
    v21 = _NSConcreteStackBlock;
    v22 = 3221225472;
    v23 = sub_10041C0B4;
    v24 = &unk_1009A0700;
    v25 = a2;
    v26 = v9;
    AnalyticsSendEventLazy();
    v11 = qword_1009F9820;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10041BDE4(a2, v19);
      v13 = v20;
      v14 = v19[0];
      sub_10041B3BC(v9, __p);
      v15 = v19;
      if (v13 < 0)
      {
        v15 = v14;
      }

      if (v18 >= 0)
      {
        v16 = __p;
      }

      else
      {
        v16 = __p[0];
      }

      *buf = 136315394;
      v29 = v15;
      v30 = 2080;
      v31 = v16;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to get property type: %s, return: %s", buf, 0x16u);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }

      if (v20 < 0)
      {
        operator delete(v19[0]);
      }
    }
  }

  return v9 == 0;
}

void sub_10041C084(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id sub_10041C0B4(uint64_t a1)
{
  v6[0] = @"PropertyType";
  v2 = [NSNumber numberWithInt:*(a1 + 32)];
  v6[1] = @"ErrorCode";
  v7[0] = v2;
  v3 = [NSNumber numberWithInt:*(a1 + 36)];
  v7[1] = v3;
  v4 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

id sub_10041C1B8(uint64_t a1)
{
  v2 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "RoseSupervisorInterface::startReceivingHIDEvents()", buf, 2u);
  }

  v3 = *(a1 + 24);
  if (!v3)
  {
    v4 = [[HIDEventSystemClient alloc] initWithType:1];
    v5 = *(a1 + 24);
    *(a1 + 24) = v4;

    [*(a1 + 24) setDispatchQueue:*a1];
    [*(a1 + 24) setMatching:&off_1009C4400];
    v6 = *(a1 + 24);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100006830;
    v8[3] = &unk_1009AB140;
    v8[4] = a1;
    [v6 setEventHandler:v8];
    [*(a1 + 24) setResetHandler:&stru_1009AB160];
    [*(a1 + 24) setCancelHandler:&stru_1009AB180];
    v3 = *(a1 + 24);
  }

  return [v3 activate];
}

void sub_10041C2E4(id a1)
{
  v1 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "RoseSupervisorInterface Reset handler", v2, 2u);
  }
}

void sub_10041C34C(id a1)
{
  v1 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "RoseSupervisorInterface Cancel handler", v2, 2u);
  }
}

uint64_t sub_10041C3F4(uint64_t a1)
{
  sub_100193120(v3);
  std::ostream::operator<<();
  std::stringbuf::str();
  v3[2] = v1;
  if (v6 < 0)
  {
    operator delete(v5[7].__locale_);
  }

  std::locale::~locale(v5);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_10041C580(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100193C68(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10041C594(unsigned int a1)
{
  v1 = 0;
  if (a1 <= 99)
  {
    v3 = 0;
    v5 = a1 - 23;
    if (a1 >= 0x17)
    {
      if (a1 == 27)
      {
        v6 = 2;
      }

      else
      {
        v6 = 0;
      }

      if (v5 >= 4)
      {
        LOBYTE(v1) = v6;
      }

      else
      {
        LOBYTE(v1) = 1;
      }

      if (v5 >= 4)
      {
        v4 = v6;
      }

      else
      {
        v4 = 2;
      }

      goto LABEL_19;
    }
  }

  else if (a1 > 199)
  {
    if (a1 - 200 < 3 || a1 == 997)
    {
      v3 = 0;
      return v1 | (v3 << 8);
    }

    v4 = 0;
    v3 = 0;
    if (a1 != 999)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (a1 - 100 > 0x1A)
    {
      v4 = 0;
LABEL_19:
      v1 = sub_100427978(v4, v1);
      v3 = 1;
      return v1 | (v3 << 8);
    }

    v2 = 1 << (a1 - 100);
    v3 = 0;
    if ((v2 & 0x3FFFFF) == 0)
    {
      if ((v2 & 0x6400000) != 0)
      {
        LOBYTE(v1) = 5;
      }

      else
      {
        LOBYTE(v1) = 0;
      }

      v4 = 4;
      goto LABEL_19;
    }
  }

  return v1 | (v3 << 8);
}

uint64_t sub_10041C678(int a1)
{
  result = 1;
  if (a1 > 199)
  {
    if ((a1 - 200) >= 3 && a1 != 999 && a1 != 997)
    {
      return result;
    }

    return 0;
  }

  if ((a1 - 100) < 0x1B || (a1 - 7) < 0x15)
  {
    return 0;
  }

  return result;
}

uint64_t sub_10041C6C8(unsigned int a1)
{
  result = 1;
  if (a1 <= 99)
  {
    if (a1 >= 0x1C)
    {
      return result;
    }

    return 0;
  }

  if (a1 <= 199)
  {
    if (a1 - 100 >= 0xD)
    {
      return result;
    }

    return 0;
  }

  if (a1 - 200 < 3 || a1 == 999 || a1 == 997)
  {
    return 0;
  }

  return result;
}

uint64_t sub_10041C77C(unsigned int a1)
{
  result = 1;
  if (a1 <= 99)
  {
    if (a1 >= 0x1C)
    {
      return result;
    }

    return 0;
  }

  if (a1 > 199)
  {
    if (a1 - 200 < 3 || a1 == 999 || a1 == 997)
    {
      return 0;
    }
  }

  else
  {
    v3 = a1 - 100;
    if (v3 <= 0x18 && ((1 << v3) & 0x18C6333) != 0)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10041C7EC(unsigned int a1)
{
  result = 1;
  if (a1 <= 99)
  {
    if (a1 >= 0x1C)
    {
      return result;
    }

    return 0;
  }

  if (a1 - 100 < 0x1B || a1 == 999 || a1 == 997)
  {
    return 0;
  }

  return result;
}

uint64_t sub_10041C854(int a1)
{
  if ((a1 - 100) < 0x1B)
  {
    return 0;
  }

  result = 1;
  if (a1 <= 996)
  {
    if ((a1 - 200) >= 3 && a1 != 27)
    {
      return result;
    }

    return 0;
  }

  if (a1 == 999 || a1 == 997)
  {
    return 0;
  }

  return result;
}

uint64_t sub_10041C8A4(unsigned int a1)
{
  result = 1;
  if (a1 > 199)
  {
    if (a1 - 200 >= 3 && a1 != 999 && a1 != 997)
    {
      return result;
    }

    return 0;
  }

  if (a1 - 100 < 0x1B || a1 < 0x11)
  {
    return 0;
  }

  return result;
}

uint64_t sub_10041C8F0(int a1)
{
  result = 1;
  if (a1 <= 99)
  {
    if (a1 >= 0x1C)
    {
      return result;
    }

    return 0;
  }

  if (a1 <= 199)
  {
    if ((a1 - 100) >= 0x1B)
    {
      return result;
    }

    return 0;
  }

  if (a1 <= 996)
  {
    if (a1 != 200 && a1 != 202)
    {
      return result;
    }

    return 0;
  }

  if (a1 == 999 || a1 == 997)
  {
    return 0;
  }

  return result;
}

uint64_t sub_10041C974(uint64_t result)
{
  if (result > 201)
  {
    if (result == 999)
    {
      return result;
    }

    return result == 202;
  }

  if (result == 200)
  {
    return 1;
  }

  if (result == 201)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10041C9B4(uint64_t result)
{
  if (result >= 3)
  {
    return 999;
  }

  else
  {
    return result;
  }
}

uint64_t sub_10041C9CC(uint64_t a1)
{
  sub_100193120(v3);
  std::ostream::operator<<();
  std::stringbuf::str();
  v3[2] = v1;
  if (v6 < 0)
  {
    operator delete(v5[7].__locale_);
  }

  std::locale::~locale(v5);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_10041CB58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100193C68(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10041CB6C(uint64_t result)
{
  if (result == 998)
  {
    v1 = 998;
  }

  else
  {
    v1 = 999;
  }

  if (result >= 0xE)
  {
    return v1;
  }

  else
  {
    return result;
  }
}

uint64_t *sub_10041CB84@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X8>)
{
  if (result > 99)
  {
    goto LABEL_4;
  }

  if (result > 2)
  {
    if ((result - 4) < 0x18)
    {
LABEL_4:
      *a2 = 0;
      a2[1] = 0;
      a2[2] = 0;
      return result;
    }

    v2 = 7;
    goto LABEL_11;
  }

  if (result)
  {
    if (result == 1)
    {
      v2 = 2;
    }

    else
    {
      v2 = 3;
    }

LABEL_11:
    v3 = v2;
    goto LABEL_12;
  }

  v3 = 1;
LABEL_12:
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  return sub_10041CC2C(a2, &v3, &vars0, 1uLL);
}

uint64_t *sub_10041CC2C(uint64_t *result, int *a2, int *a3, unint64_t a4)
{
  if (a4)
  {
    sub_10004F5E0(result, a4);
  }

  return result;
}

void sub_10041CC84(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10041CCA0(uint64_t a1, __int128 *a2)
{
  *a1 = 0;
  *(a1 + 16) = 1018212795;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  if (*(a2 + 23) < 0)
  {
    sub_1000056BC((a1 + 64), *a2, *(a2 + 1));
  }

  else
  {
    v3 = *a2;
    *(a1 + 80) = *(a2 + 2);
    *(a1 + 64) = v3;
  }

  *(a1 + 88) = 0u;
  *(a1 + 136) = 850045863;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0;
  v4 = *(a1 + 87);
  if (v4 < 0)
  {
    v4 = *(a1 + 72);
  }

  if (v4)
  {
    atomic_store(1u, (a1 + 8));
    sub_10041CE14();
  }

  __assert_rtn("DispatchQueue", "roseDispatchQueue.cpp", 17, "fName.size() > 0");
}

void sub_10041CDCC(_Unwind_Exception *a1)
{
  std::condition_variable::~condition_variable(v2);
  std::thread::~thread(v1);
  _Unwind_Resume(a1);
}

void sub_10041CEF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10041D5DC(va);
  _Unwind_Resume(a1);
}

void sub_10041CF30(uint64_t a1)
{
  atomic_store(0, (a1 + 8));
  std::condition_variable::notify_all((a1 + 16));
  if (*a1)
  {
    std::thread::join(a1);
  }

  std::mutex::~mutex((a1 + 136));
  sub_10041D01C((a1 + 88));
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  std::condition_variable::~condition_variable((a1 + 16));

  std::thread::~thread(a1);
}

void sub_10041CFB4(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 136));
  sub_10041D14C((a1 + 88), a2);
  std::mutex::unlock((a1 + 136));

  std::condition_variable::notify_all((a1 + 16));
}

uint64_t sub_10041D01C(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    v4 = a1 + 5;
    v3 = a1[1];
  }

  else
  {
    v4 = a1 + 5;
    v5 = a1[4];
    v6 = &v2[v5 >> 7];
    v7 = *v6 + 32 * (v5 & 0x7F);
    v8 = *(v2 + (((a1[5] + v5) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((a1[5] + v5) & 0x7F);
    if (v7 != v8)
    {
      do
      {
        v7 = sub_1001B3E54(v7) + 32;
        if (v7 - *v6 == 4096)
        {
          v9 = v6[1];
          ++v6;
          v7 = v9;
        }
      }

      while (v7 != v8);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v10 = v3 - v2;
  if (v10 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v10 = v3 - v2;
    }

    while (v10 > 2);
  }

  if (v10 == 1)
  {
    v11 = 64;
  }

  else
  {
    if (v10 != 2)
    {
      goto LABEL_16;
    }

    v11 = 128;
  }

  a1[4] = v11;
LABEL_16:
  while (v2 != v3)
  {
    v12 = *v2++;
    operator delete(v12);
  }

  return sub_10004EE68(a1);
}

uint64_t sub_10041D14C(unint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = 16 * (v5 - v4) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    sub_10041D1E4(a1);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v8 = 0;
  }

  else
  {
    v7 = a1[5] + a1[4];
    v8 = *(v4 + ((v7 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v7 & 0x7F);
  }

  result = sub_1001DB3FC(v8, a2);
  ++a1[5];
  return result;
}

void sub_10041D1E4(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x80;
  v3 = v1 - 128;
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
    sub_10016F098(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  sub_10016EC70(a1, &v9);
}

void sub_10041D36C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10041D3B8(std::__thread_struct **a1)
{
  v10 = a1;
  v1 = std::__thread_local_data();
  v2 = *v10;
  *v10 = 0;
  pthread_setspecific(v1->__key_, v2);
  v3 = v10[5];
  if (SHIBYTE(v3[2].__p_) < 0)
  {
    v3 = v3->__p_;
  }

  pthread_setname_np(v3);
  do
  {
    __lk.__m_ = v10[4];
    __lk.__owns_ = 1;
    std::mutex::lock(__lk.__m_);
    v5 = v10[1];
    v4 = v10[2];
    v6 = v10[3];
    while (1)
    {
      v7 = atomic_load(v5);
      if ((v7 & 1) == 0 || v6[5].__p_)
      {
        break;
      }

      std::condition_variable::wait(v4, &__lk);
    }

    v8 = atomic_load(v10[1]);
    if (v8)
    {
      sub_1001DB3FC(v12, *(v10[3][1].__p_ + ((v10[3][4].__p_ >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v10[3][4].__p_ & 0x7F));
      sub_10041D624(v10[3]);
      if (!__lk.__owns_)
      {
        std::__throw_system_error(1, "unique_lock::unlock: not locked");
        __break(1u);
      }

      std::mutex::unlock(__lk.__m_);
      __lk.__owns_ = 0;
      if (!v13)
      {
        sub_100037B10();
      }

      (*(*v13 + 48))(v13);
      sub_1001B3E54(v12);
    }

    if (__lk.__owns_)
    {
      std::mutex::unlock(__lk.__m_);
    }
  }

  while ((v8 & 1) != 0);
  sub_10041D594(&v10);
  return 0;
}

std::__thread_struct ***sub_10041D594(std::__thread_struct ***a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_10041D5DC(v2);
    operator delete();
  }

  return a1;
}

std::__thread_struct **sub_10041D5DC(std::__thread_struct **a1)
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

uint64_t sub_10041D624(int64x2_t *a1)
{
  sub_1001B3E54(*(a1->i64[1] + ((a1[2].i64[0] >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (a1[2].i64[0] & 0x7F));
  a1[2] = vaddq_s64(a1[2], xmmword_100561EC0);

  return sub_1003EC368(a1, 1);
}

uint64_t sub_10041D690()
{
  v0 = sub_1000054A8();
  sub_1000198EC(&__dst, v0);
  if ((v18 & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "getConnectionDescriptorSize: no cached hello response. Cannot guarantee correct parsing.");
  }

  v1 = v10;
  v2 = v11;
  v3 = v12;
  if (v17 == 1)
  {
    if (v16 < 0)
    {
      operator delete(__p);
    }

    if (v14 < 0)
    {
      operator delete(v13);
    }
  }

  if (v9 < 0)
  {
    operator delete(__dst);
  }

  if (v2 <= 0x17u && v1 == 0 || (v3 - 3) >= 4)
  {
    return 20;
  }

  else
  {
    return 24;
  }
}

void sub_10041D778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100017E34(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10041D79C()
{
  v0 = sub_1000054A8();
  sub_1000198EC(&__dst, v0);
  if ((v18 & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "getTimeStatusSize: no cached hello response. Cannot guarantee correct parsing.");
  }

  v1 = v10;
  v2 = v11;
  v3 = v12;
  if (v17 == 1)
  {
    if (v16 < 0)
    {
      operator delete(__p);
    }

    if (v14 < 0)
    {
      operator delete(v13);
    }
  }

  if (v9 < 0)
  {
    operator delete(__dst);
  }

  if (v2 <= 0x17u && v1 == 0 || (v3 - 3) >= 4)
  {
    return 32;
  }

  else
  {
    return 48;
  }
}

void sub_10041D884(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100017E34(va);
  _Unwind_Resume(a1);
}

std::string *sub_10041D8A8@<X0>(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  *&a2->__r_.__value_.__l.__data_ = 0uLL;
  a2->__r_.__value_.__r.__words[2] = 0;
  std::to_string(&v15, *(a1 + 8));
  v4 = std::string::append(&v15, ":");
  v5 = *&v4->__r_.__value_.__l.__data_;
  v17 = v4->__r_.__value_.__r.__words[2];
  *__p = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  if (v17 >= 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if (v17 >= 0)
  {
    v7 = HIBYTE(v17);
  }

  else
  {
    v7 = __p[1];
  }

  std::string::append(a2, v6, v7);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  v8 = *(a1 + 16);
  if (v8 >= 4)
  {
    v9 = "RFU_Critical requests ";
  }

  else
  {
    v9 = off_1009AB3F8[v8];
  }

  std::string::append(a2, v9);
  v10 = "unknown operation, ";
  if (*(a1 + 17) == 1)
  {
    v10 = "to resume, ";
  }

  if (*(a1 + 17))
  {
    v11 = v10;
  }

  else
  {
    v11 = "to pause, ";
  }

  std::string::append(a2, v11);
  v12 = "r1 status unknown";
  if (*(a1 + 18) == 1)
  {
    v12 = "r1 active";
  }

  if (*(a1 + 18))
  {
    v13 = v12;
  }

  else
  {
    v13 = "r1 paused";
  }

  return std::string::append(a2, v13);
}

void sub_10041D9E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (*(v21 + 23) < 0)
  {
    operator delete(*v21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10041DA38(uint64_t a1, __int16 a2, __int16 a3, char a4, __int16 a5, char a6, void *a7, int a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, uint64_t a16, __int128 a17, __int128 a18, __int128 a19, __int128 a20, __int128 a21, __int16 a22, int a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, int a32, __int16 a33, int a34, int a35, int a36, __int16 a37, __int16 a38, __int16 a39, __int16 a40, __int16 a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, __int128 a50, __int16 a51, int a52, __int16 a53, int a54, __int16 a55, int a56, int a57, int a58, int a59, int a60, int a61, int a62, __int16 a63)
{
  v132 = a17;
  v131 = a18;
  v130 = a19;
  v129 = a20;
  v128 = a21;
  v127 = a26;
  v126 = a25;
  v125 = a28;
  v124 = a27;
  v123 = a30;
  v122 = a29;
  v121 = a33;
  v120 = a35;
  v119 = a41;
  v118 = a43;
  v117 = a42;
  v116 = a45;
  v115 = a44;
  v114 = a47;
  v113 = a46;
  v112 = a49;
  v111 = a48;
  v110 = a50;
  v109 = a51;
  v108 = a53;
  v107 = a55;
  v106 = a57;
  v105 = a59;
  v104 = a61;
  v103 = a63;
  v102 = a65;
  v101 = a64;
  v100 = a67;
  v99 = a66;
  v98 = a68;
  v97 = a69;
  v96 = a70;
  v95 = a71;
  v94 = a72;
  v93 = a1;
  v92 = a2;
  v91 = a3;
  v90 = a4;
  v89 = a9;
  v88 = a5;
  v87 = a6;
  v86 = a7;
  v85 = a10;
  v84 = a8;
  v83 = a11;
  v82 = a12;
  v81 = a13;
  v80 = a14;
  v79 = a15;
  v133 = a1;
  *a1 = a2;
  *(a1 + 2) = v91;
  *(a1 + 4) = v90;
  *(a1 + 8) = v89;
  *(a1 + 16) = v88;
  *(a1 + 18) = v87;
  *(a1 + 19) = *v86;
  *(a1 + 32) = v85;
  sub_10041E038((a1 + 40), a16);
  *(a1 + 64) = v83;
  *(a1 + 72) = v82;
  *(a1 + 80) = v110;
  *(a1 + 96) = v132;
  *(a1 + 112) = v131;
  *(a1 + 128) = v130;
  *(a1 + 144) = v81;
  *(a1 + 152) = v80;
  *(a1 + 160) = v129;
  *(a1 + 176) = v128;
  *(a1 + 192) = a22;
  *(a1 + 196) = a23;
  *(a1 + 200) = v79;
  *(a1 + 208) = sub_1000422F0(v85);
  *(a1 + 216) = a24;
  *(a1 + 224) = v126;
  *(a1 + 232) = v127;
  *(a1 + 240) = v124;
  *(a1 + 248) = v125;
  *(a1 + 256) = v122;
  *(a1 + 264) = v123;
  *(a1 + 272) = a31;
  *(a1 + 273) = v121;
  *(a1 + 276) = v120;
  *(a1 + 280) = a37;
  *(a1 + 282) = a38;
  *(a1 + 284) = a39;
  *(a1 + 286) = v119;
  *(a1 + 288) = v117;
  *(a1 + 296) = v118;
  *(a1 + 304) = v115;
  *(a1 + 312) = v116;
  *(a1 + 320) = v113;
  *(a1 + 328) = v114;
  *(a1 + 336) = v111;
  *(a1 + 344) = v112;
  *(a1 + 352) = v109;
  *(a1 + 354) = v108;
  *(a1 + 356) = v107;
  *(a1 + 358) = v106;
  *(a1 + 362) = v105;
  *(a1 + 366) = v104;
  *(a1 + 370) = v103;
  *(a1 + 376) = v101;
  *(a1 + 384) = v102;
  *(a1 + 392) = v99;
  *(a1 + 400) = v100;
  *(a1 + 408) = v98;
  *(a1 + 410) = v97;
  *(a1 + 412) = v96;
  *(a1 + 414) = v95;
  *(a1 + 416) = v94;
  sub_10041E08C((a1 + 424));
  sub_10041E08C((a1 + 440));
  if (!v84)
  {
    v78[1] = a1 + 40;
    v78[0] = sub_10041E098(a1 + 40);
    v77 = sub_10041E0A0(a1 + 40);
    while (sub_10041E0A8(v78, &v77))
    {
      v76 = sub_10041E098(v78);
      v75 = 0;
      v74 = 0;
      sub_100042378(&v75, &v74, *v76, v76[1]);
      *v76 = v75;
      *(v76 + 1) = v74;
      sub_10041E0BC(v78);
    }
  }

  return v133;
}

uint64_t *sub_10041E038(uint64_t *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_100020574(a1, *a2, *(a2 + 8), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 8) - *a2) >> 3));
  return a1;
}

_BYTE *sub_10041E08C(_BYTE *result)
{
  *result = 0;
  result[8] = 0;
  return result;
}

uint64_t sub_10041E0CC(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_10041E754(uint64_t a1, __int16 a2, __int16 a3, char a4, uint64_t a5, __int16 a6, __int16 a7, __int16 a8, double a9, double a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, char a18, char a19, char a20, uint64_t a21)
{
  *a1 = a2;
  *(a1 + 2) = a3;
  *(a1 + 4) = a4;
  *(a1 + 8) = a9;
  *(a1 + 16) = a5;
  *(a1 + 24) = a6;
  *(a1 + 26) = a7;
  *(a1 + 28) = a8;
  *(a1 + 30) = a11;
  *(a1 + 31) = a12;
  *(a1 + 32) = a13;
  *(a1 + 33) = a14;
  *(a1 + 34) = a15;
  *(a1 + 35) = a16;
  *(a1 + 40) = a10;
  *(a1 + 48) = a17;
  *(a1 + 49) = a18;
  *(a1 + 50) = a19;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  v22 = *a21;
  v23 = *(a21 + 8);
  v24 = (v23 - *a21) >> 4;
  *(a1 + 51) = a20;
  sub_10002086C((a1 + 56), v22, v23, v24);
  return a1;
}

uint64_t sub_10041E80C(uint64_t result, void *a2, uint64_t a3, int a4)
{
  *result = 850045863;
  *(result + 8) = 0u;
  *(result + 24) = 0u;
  *(result + 40) = 0u;
  *(result + 56) = 0;
  v4 = a2[1];
  *(result + 64) = *a2;
  *(result + 72) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  *(result + 80) = a3;
  *(result + 88) = a4;
  *(result + 96) = a4;
  *(result + 100) = 1;
  *(result + 101) = 0uLL;
  *(result + 117) = 0uLL;
  *(result + 133) = 0uLL;
  *(result + 148) = 0;
  return result;
}

void sub_10041E86C(uint64_t a1, uint64_t a2, unsigned int **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 72);
  if (v9)
  {
    v12 = std::__shared_weak_count::lock(v9);
    if (v12)
    {
      v13 = *(a1 + 64);
      if (v13)
      {
        v14 = sub_100426398(a2);
        if (v14 == 2)
        {
          if (sub_10042679C(a2) == 128)
          {
            sub_100420FE4(a3);
            atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
            operator new();
          }

          v17 = *(a2 + 2);
          v18 = "got factory test event with unknown message ID 0x%02x";
          goto LABEL_24;
        }

        if (v14 == 1)
        {
          if (sub_1004266E8(a2) == 83)
          {
            if (sub_100420E70(a1, a3))
            {
              v40 = 0;
              v39 = 0;
              v41 = 0;
              sub_100009A48(&v39, *(a1 + 128), *(a1 + 136), *(a1 + 136) - *(a1 + 128));
              atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
              memset(__p, 0, 24);
              sub_100009A48(__p, v39, v40, v40 - v39);
              operator new();
            }

            goto LABEL_25;
          }

          v17 = *(a2 + 2);
          v18 = "got debug event with unknown message ID 0x%02x";
          goto LABEL_24;
        }

        if (v14)
        {
          v17 = *(a2 + 1);
          v18 = "got response packet with unknown groupID 0x%02x";
LABEL_24:
          sub_100428B48(v18, v15, v17);
          goto LABEL_25;
        }

        v16 = sub_10042640C(a2);
        if (v16 <= 512)
        {
          if (v16 > 84)
          {
            if (v16 == 85)
            {
              sub_100420AC4(a3, &v21);
              atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
              operator new();
            }

            if (v16 == 512)
            {
              sub_100428B48("handleEvent: got time sync event packet - expected AOP to handle this for us!", v15);
              goto LABEL_25;
            }
          }

          else
          {
            if (v16 == 81)
            {
              sub_1004206A4(a3, &v23);
              atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
              operator new();
            }

            if (v16 == 84)
            {
              sub_1004207B8(a3, &v22);
              atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
              operator new();
            }
          }

          goto LABEL_43;
        }

        if (v16 <= 515)
        {
          if (v16 == 513)
          {
            sub_10041F210(a3, &v42);
            v32[0] = v13;
            v32[1] = v12;
            atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
            v33 = v42;
            v34 = *v43;
            v35 = *&v43[16];
            v36 = *v44;
            v37 = v44[2];
            memset(v44, 0, sizeof(v44));
            memcpy(v38, v45, sizeof(v38));
            sub_10041FF48(&v39, v32);
          }

          if (v16 == 515)
          {
            sub_100420040(a3);
            atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
            operator new();
          }

LABEL_43:
          v17 = *(a2 + 2);
          v18 = "got ranging event with unknown message ID 0x%02x";
          goto LABEL_24;
        }

        if (v16 == 516)
        {
          sub_1004200E0(a3, &v31, v15);
          atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
          operator new();
        }

        if (v16 == 517)
        {
          sub_100426934(a1 + 96, &v42, a3);
          if (LOBYTE(v45[1]) == 1)
          {
            v24[0] = v13;
            v24[1] = v12;
            atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
            v25 = v42;
            v27 = *&v43[8];
            v26 = *v43;
            v28 = v44[0];
            *&v43[8] = 0;
            *&v43[16] = 0;
            v29 = *&v44[1];
            v30 = v45[0];
            memset(v44, 0, sizeof(v44));
            v45[0] = 0;
            sub_1004205A4(&v39, v24);
          }

          sub_1001A59C8(&v42);
          goto LABEL_25;
        }

        if (v16 != 522)
        {
          goto LABEL_43;
        }

LABEL_25:
        sub_10000AD84(v12);
        return;
      }
    }
  }

  else
  {
    v12 = 0;
  }

  sub_100005D28("No event listener, ignoring event packet", a2, a3, a4, a5, a6, a7, a8, v19);
  if (v12)
  {
    goto LABEL_25;
  }
}

void sub_10041F050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56)
{
  sub_1001B3E54(&a56);
  sub_1001B3E54(&STACK[0x520]);
  sub_1001A59C8(&STACK[0x540]);
  sub_10000AD84(v56);
  _Unwind_Resume(a1);
}

void sub_10041F210(void *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = sub_1000054A8();
  sub_1000198EC(&v137, v6);
  if ((v145 & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Got event, but no cached hello response. Cannot guarantee correct parsing.");
  }

  v8 = __rev16(v139);
  sub_1004289F8("RoseEventHandler::decodeRangeResultEvent: hsiVersion %hu", v7, v8);
  if (v8 <= 0x1D)
  {
    sub_100428B48("Unsupported HSI version.", v9);
    v69 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v69, "Unsupported HSI version.");
  }

  v11 = *(sub_1000054A8() + 187);
  switch(v11)
  {
    case 1:
      v13 = 112;
      v14 = 88;
      v99 = 85;
      v101 = 84;
      v95 = 97;
      v97 = 92;
      v15 = 87;
      v16 = 82;
      v17 = 81;
      v18 = 79;
      v19 = 77;
      v12 = 75;
      break;
    case 2:
      v13 = 112;
      v14 = 89;
      v99 = 86;
      v101 = 85;
      v95 = 98;
      v97 = 93;
      v15 = 88;
      v16 = 83;
      v17 = 82;
      v18 = 80;
      v19 = 78;
      v12 = 76;
      break;
    case 0:
      v71 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v71, "HSI version error");
    default:
      v12 = 0;
      v13 = 0;
      v14 = 13;
      v99 = 10;
      v101 = 9;
      v95 = 22;
      v97 = 17;
      v15 = 12;
      v16 = 7;
      v17 = 6;
      v18 = 4;
      v19 = 2;
      break;
  }

  v20 = *a1;
  if (a1[1] - *a1 != v13)
  {
    sub_100428B48("Range result event (%zu) not of expected size (%u)", v10, a1[1] - *a1, v13);
    v70 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v70, "Range result event not of expected size");
  }

  __dst = 0;
  v135 = 0;
  v134 = 0;
  v133 = 0;
  v132 = 0;
  v131 = 0;
  v130 = 0;
  v129 = 0;
  v128 = 0;
  v127 = 0;
  v126 = 0;
  v125 = 0;
  v124 = 0;
  v123 = 0;
  v122 = 0;
  v121 = 0;
  v120 = 0;
  v119 = 0;
  v118 = 0;
  v117 = 0;
  v116 = 0;
  v115 = 0;
  v114 = 0;
  v113 = 0;
  v112 = 0;
  v111 = 0;
  v110 = 0;
  v109 = 0;
  v108 = 0;
  v107 = 0;
  sub_10046F95C((v20 + 4), 2uLL, &__dst + 2, 1);
  sub_10046F95C((*a1 + 6), 2uLL, &__dst, 1);
  sub_10046F95C((*a1 + 8), 1uLL, &v135, 1);
  sub_10046F95C((*a1 + 9), 8uLL, &v134, 1);
  sub_10046F95C((*a1 + 17), 2uLL, &v133, 1);
  v21 = *(*a1 + 19);
  sub_10046F95C((*a1 + 22), 4uLL, &v131, 1);
  sub_10046F95C((*a1 + 26), 2uLL, &v130 + 2, 1);
  sub_10046F95C((*a1 + 28), 2uLL, &v130, 1);
  sub_10046F95C((*a1 + 30), 2uLL, &v129 + 2, 1);
  sub_10046F95C((*a1 + 32), 2uLL, &v129, 1);
  sub_10046F95C((*a1 + 34), 4uLL, &v128, 1);
  sub_10046F95C((*a1 + 38), 2uLL, &v127 + 2, 1);
  sub_10046F95C((*a1 + 40), 2uLL, &v127, 1);
  sub_10046F95C((*a1 + 42), 2uLL, &v126 + 2, 1);
  sub_10046F95C((*a1 + 44), 2uLL, &v126, 1);
  sub_10046F95C((*a1 + 46), 2uLL, &v125, 1);
  sub_10046F95C((*a1 + 48), 4uLL, &v124, 1);
  sub_10046F95C((*a1 + 52), 1uLL, &v123 + 1, 1);
  sub_10046F95C((*a1 + 53), 1uLL, &v123, 1);
  sub_10046F95C((*a1 + 54), 1uLL, &v122, 1);
  sub_10046F95C((*a1 + 55), 2uLL, &v121 + 2, 1);
  sub_10046F95C((*a1 + 57), 2uLL, &v121, 1);
  sub_10046F95C((*a1 + 59), 8uLL, &v132, 1);
  sub_10046F95C((*a1 + 67), 1uLL, &v120, 1);
  sub_10046F95C((*a1 + 68), 2uLL, &v119, 1);
  sub_10046F95C((*a1 + 70), 2uLL, &v118 + 2, 1);
  sub_10046F95C((*a1 + 72), 2uLL, &v118, 1);
  if (v11 == 1)
  {
    v22 = (&v117 + 1);
    v23 = v11;
  }

  else
  {
    if (v11 != 2)
    {
      goto LABEL_15;
    }

    v22 = &v117;
    v23 = 2;
  }

  sub_10046F95C((*a1 + 74), v23, v22, 1);
LABEL_15:
  sub_10046F95C((*a1 + v12), 2uLL, &v116, 1);
  sub_10046F95C((*a1 + v19), 2uLL, &v115 + 2, 1);
  sub_10046F95C((*a1 + v18), 2uLL, &v115, 1);
  sub_10046F95C((*a1 + v17), 1uLL, &v114, 1);
  if (v11 == 2)
  {
    sub_10046F95C((*a1 + v16), 2uLL, &v113, 1);
    sub_10046F95C((*a1 + v101), 1uLL, &v108 + 1, 1);
    sub_10046F95C((*a1 + v99), 1uLL, &v108, 1);
    v25 = 1;
    sub_10046F95C((*a1 + v14), 1uLL, &v107, 1);
  }

  else
  {
    if (v11 == 1)
    {
      sub_10046F95C((*a1 + v16), 5uLL, &v112, 1);
      sub_10046F95C((*a1 + v15), 5uLL, &v111, 1);
      sub_10046F95C((*a1 + v97), 5uLL, &v110, 1);
      sub_10046F95C((*a1 + v95), 5uLL, &v109, 1);
    }

    v25 = 0;
  }

  v26 = sub_100427984(HIWORD(__dst), v24);
  v28 = sub_100427658(v135, v27);
  v29 = SHIWORD(v129);
  v30 = v129;
  v31 = SHIBYTE(v123);
  v32 = v123;
  v33 = v122;
  LOWORD(v4) = v119;
  LOWORD(v3) = HIWORD(v118);
  LOWORD(v2) = v118;
  v34 = *(sub_1000054A8() + 187);
  v102 = v33;
  switch(v34)
  {
    case 1:
      v35 = sub_1004281F8(HIBYTE(v117), 1);
      v98 = 0;
      v100 = 0.0;
      v94 = 0;
      v96 = 0;
      v92 = 0;
      v93 = 0;
      v91 = 0;
      break;
    case 2:
      v36 = sub_10042841C(v117);
      v35 = 9;
      if (v37)
      {
        if ((v36 & 0x10000) != 0)
        {
          v35 = BYTE1(v36);
        }

        else
        {
          v35 = 9;
        }

        v94 = BYTE4(v36);
        v96 = HIDWORD(v36) & 0xFF0000;
        v92 = v36;
        v93 = HIDWORD(v36) & 0xFF00;
        v91 = 256;
      }

      else
      {
        v94 = 0;
        v96 = 0;
        v92 = 0;
        v93 = 0;
        v91 = 0;
      }

      v100 = vcvtd_n_f64_s32(v113, 2uLL);
      v98 = 1;
      break;
    case 0:
      v72 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v72, "Unknown HSI version");
    default:
      v98 = 0;
      v100 = 0.0;
      v94 = 0;
      v96 = 0;
      v92 = 0;
      v93 = 0;
      v91 = 0;
      v35 = 9;
      break;
  }

  v105 = 0;
  __p = 0;
  v106 = 0;
  v38 = v127;
  v39 = v127 & 0xF;
  if (v39 != 15)
  {
    *&v146 = SHIWORD(v130);
    *(&v146 + 1) = v130;
    v147 = v39 * 0.0666666667;
    v148 = 0;
    v149 = 0;
    v150 = 0;
    v151 = 0;
    sub_100199694(&__p, &v146);
    v38 = v127;
  }

  v90 = v32;
  v40 = v38 >> 4;
  if (v40 != 15)
  {
    *&v146 = SHIWORD(v121);
    *(&v146 + 1) = v121;
    v147 = v40 * 0.0666666667;
    v148 = 0;
    v149 = 0;
    v150 = 0;
    v151 = 0;
    sub_100199694(&__p, &v146);
  }

  v84 = v40;
  v81 = v39;
  v86 = v35;
  v41 = v25;
  v87 = v28;
  v88 = v26;
  v89 = v21;
  *&v146 = v132;
  v85 = __dst;
  v42 = sub_10041C3B4(v134);
  v83 = v133;
  v43 = v131;
  v44 = v128;
  v45 = HIWORD(v127);
  v46 = HIWORD(v126);
  v47 = v126;
  v82 = v125;
  v48 = v124;
  v49 = sub_10041C3B4(v124);
  v50 = vcvtd_n_f64_s32(v29, 2uLL);
  v51 = vcvtd_n_f64_s32(v30, 2uLL);
  v52 = HIBYTE(v108) | 0x100;
  if (v41)
  {
    v52 = 0;
  }

  v53 = v108 | 0x100;
  if (v41)
  {
    v53 = 0;
  }

  *&v80 = v100;
  *(&v80 + 1) = v98;
  *(&v77 + 1) = 1;
  *&v77 = v47;
  *(&v76 + 1) = 1;
  *&v76 = v46;
  *(&v75 + 1) = 1;
  *&v75 = v102;
  *(&v74 + 1) = 1;
  *&v74 = v90;
  *(&v73 + 1) = 1;
  *&v73 = v31;
  sub_10041E100(a2, v88, v85, v87, v83, v89, &v146, 0, v42, v43, v50, v51, v44, v45, v49, &__p, v73, v74, v75, v76, v77, v82, v48, v120, COERCE__INT64(v4 * 0.01), 1, COERCE__INT64(v3 * 0.01), 1, COERCE__INT64(v2 * 0.01), 1, v86, v78, v91 | v92, (v91 | v92) >> 32, v96 | v94 | v93, (v96 | v94 | v93) >> 32, v116, SHIWORD(v115), v115, v79, v114 | 0x100, v112, v112 != 0, v111, v111 != 0, v110, v110 != 0, v109, v109 != 0, v80, v52, SHIDWORD(v52), v53, SHIDWORD(v53), v107 | 0x100, (v107 | 0x100uLL) >> 32, 0, 0, 0, 0, 0, 0, 0);
  if (*(a2 + 4) != 16)
  {
    if (v81 == 15)
    {
      sub_100005D28("Ignoring AOA hypothesis primary with az %d el %d intunc %d", v54, v55, v56, v57, v58, v59, v60, SHIWORD(v130));
    }

    else
    {
      sub_1004289F8("AOA hypothesis primary: az %f el %f unc %f", v54, *__p, *(__p + 1), *(__p + 2));
    }

    if (v84 == 15)
    {
      sub_100005D28("Ignoring AOA hypothesis alt1 with az %d el %d intunc %d", v61, v62, v63, v64, v65, v66, v67, SHIWORD(v121));
    }

    else
    {
      sub_1004289F8("AOA hypothesis alt1: az %f el %f unc %f", v61, *(v105 - 7), *(v105 - 6), *(v105 - 5));
    }
  }

  if (__p)
  {
    v105 = __p;
    operator delete(__p);
  }

  if (v145 == 1)
  {
    if (v144 == 1)
    {
      if (v143 < 0)
      {
        operator delete(v142);
      }

      if (v141 < 0)
      {
        operator delete(v140);
      }
    }

    if (v138 < 0)
    {
      operator delete(v137);
    }
  }
}

void sub_10041FEA0(_Unwind_Exception *a1)
{
  __cxa_free_exception(v1);
  sub_100017E34(&STACK[0x2A0]);
  _Unwind_Resume(a1);
}

void *sub_100420000(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    sub_10000AD84(v3);
  }

  return a1;
}

unint64_t sub_100420040(uint64_t a1)
{
  v1 = a1;
  __dst = 0;
  v6 = 0;
  sub_10046F95C((*a1 + 4), 2uLL, &__dst + 2, 1);
  sub_10046F95C((*v1 + 6), 2uLL, &__dst, 1);
  sub_10046F95C((*v1 + 8), 2uLL, &v6, 1);
  LODWORD(v1) = sub_100427984(HIWORD(__dst), v2);
  v4 = sub_100427984(v6, v3);
  return (v4 << 32) | (__dst << 16) | v1;
}

double sub_1004200E0@<D0>(void *a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X1>)
{
  v4 = *a1;
  if (a1[1] - *a1 != 96)
  {
    sub_100428B48("Range debug event (%zu) not of expected size (%u)", a3, a1[1] - *a1, 96);
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1004211BC(exception, "Range debug event not of expected size");
  }

  v5 = a1;
  __dst = 0;
  v57 = 0;
  v56 = 0;
  v55 = 0;
  v53 = 0;
  v54 = 0;
  v52 = 0;
  v50 = 0;
  v51 = 0;
  v48 = 0;
  v49 = 0;
  v46 = 0;
  v47 = 0;
  v44 = 0;
  v45 = 0;
  v42 = 0;
  v43 = 0;
  v41 = 0;
  sub_10046F95C((v4 + 4), 2uLL, &__dst, 1);
  sub_10046F95C((*v5 + 6), 1uLL, &v57, 1);
  sub_10046F95C((*v5 + 7), 2uLL, &v56, 1);
  sub_10046F95C((*v5 + 9), 1uLL, &v55, 1);
  sub_10046F95C((*v5 + 12), 8uLL, &v53, 1);
  sub_10046F95C((*v5 + 20), 8uLL, &v52, 1);
  sub_10046F95C((*v5 + 28), 8uLL, &v51, 1);
  sub_10046F95C((*v5 + 36), 8uLL, &v50, 1);
  sub_10046F95C((*v5 + 44), 8uLL, &v49, 1);
  sub_10046F95C((*v5 + 52), 8uLL, &v48, 1);
  sub_10046F95C((*v5 + 60), 2uLL, &v47 + 2, 1);
  sub_10046F95C((*v5 + 62), 2uLL, &v47, 1);
  sub_10046F95C((*v5 + 64), 2uLL, &v46 + 2, 1);
  sub_10046F95C((*v5 + 66), 2uLL, &v46, 1);
  sub_10046F95C((*v5 + 68), 2uLL, &v45 + 2, 1);
  sub_10046F95C((*v5 + 70), 2uLL, &v45, 1);
  sub_10046F95C((*v5 + 72), 2uLL, &v44 + 2, 1);
  sub_10046F95C((*v5 + 74), 2uLL, &v44, 1);
  sub_10046F95C((*v5 + 76), 2uLL, &v43 + 2, 1);
  sub_10046F95C((*v5 + 78), 2uLL, &v43, 1);
  sub_10046F95C((*v5 + 80), 2uLL, &v42 + 2, 1);
  sub_10046F95C((*v5 + 82), 2uLL, &v42, 1);
  sub_10046F95C((*v5 + 84), 2uLL, &v41 + 2, 1);
  sub_10046F95C((*v5 + 86), 2uLL, &v41, 1);
  sub_10046F95C((*v5 + 88), 8uLL, &v54, 1);
  LOBYTE(v5) = sub_100427658(v57, v6);
  v7 = v54;
  v39 = vcvtd_n_f64_s32(v46, 2uLL);
  v40 = vcvtd_n_f64_s32(SHIWORD(v46), 2uLL);
  v37 = vcvtd_n_f64_s32(v45, 2uLL);
  v38 = vcvtd_n_f64_s32(SHIWORD(v45), 2uLL);
  v35 = vcvtd_n_f64_s32(v44, 2uLL);
  v36 = vcvtd_n_f64_s32(SHIWORD(v44), 2uLL);
  v33 = vcvtd_n_f64_s32(v43, 2uLL);
  v34 = vcvtd_n_f64_s32(SHIWORD(v43), 2uLL);
  v31 = vcvtd_n_f64_s32(v42, 2uLL);
  v32 = vcvtd_n_f64_s32(SHIWORD(v42), 2uLL);
  v30 = vcvtd_n_f64_s32(SHIWORD(v41), 2uLL);
  v8 = vcvtd_n_f64_s32(v41, 2uLL);
  v9 = __dst;
  v10 = v56;
  v11 = v55;
  v12 = sub_10041C3C8(v53);
  v13 = sub_10041C3C8(v52);
  v14 = sub_10041C3C8(v51);
  v15 = sub_10041C3C8(v50);
  v16 = sub_10041C3C8(v49);
  v17 = sub_10041C3C8(v48);
  v18 = sub_10041C3C8(HIWORD(v47));
  v19 = sub_10041C3C8(v47);
  v21 = v52;
  v20 = v53;
  v23 = v50;
  v22 = v51;
  v25 = v48;
  v24 = v49;
  v26 = HIWORD(v47);
  v27 = v47;
  *a2 = v9;
  *(a2 + 2) = v5;
  *(a2 + 4) = v10;
  *(a2 + 6) = v11;
  *(a2 + 7) = v7;
  *(a2 + 24) = v12;
  *(a2 + 32) = v13;
  *(a2 + 40) = v14;
  *(a2 + 48) = v15;
  *(a2 + 56) = v16;
  *(a2 + 64) = v17;
  *(a2 + 72) = v18;
  *(a2 + 80) = v19;
  *(a2 + 88) = v20;
  *(a2 + 96) = v21;
  *(a2 + 104) = v22;
  *(a2 + 112) = v23;
  *(a2 + 120) = v24;
  *(a2 + 128) = v25;
  *(a2 + 136) = v26;
  *(a2 + 144) = v27;
  *(a2 + 152) = v40;
  *(a2 + 160) = v39;
  *(a2 + 168) = v38;
  *(a2 + 176) = v37;
  *(a2 + 184) = v36;
  *(a2 + 192) = v35;
  *(a2 + 200) = v34;
  *(a2 + 208) = v33;
  *(a2 + 216) = v32;
  *(a2 + 224) = v31;
  result = v30;
  *(a2 + 232) = v30;
  *(a2 + 240) = v8;
  *(a2 + 16) = v7;
  return result;
}

uint64_t sub_10042064C(uint64_t a1)
{
  v4 = (a1 + 64);
  sub_100189A94(&v4);
  v4 = (a1 + 40);
  sub_100189B38(&v4);
  v2 = *(a1 + 8);
  if (v2)
  {
    sub_10000AD84(v2);
  }

  return a1;
}

uint64_t sub_1004206A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __dst = 0;
  v16 = 0;
  v15 = 0;
  v13 = 0;
  v14 = 0;
  v12 = 0;
  sub_10046F95C((*a1 + 4), 2uLL, &__dst, 1);
  sub_10046F95C((*a1 + 6), 4uLL, &v16, 1);
  sub_10046F95C((*a1 + 10), 1uLL, &v15, 1);
  sub_10046F95C((*a1 + 11), 8uLL, &v14, 1);
  sub_10046F95C((*a1 + 19), 8uLL, &v13, 1);
  sub_10046F95C((*a1 + 27), 4uLL, &v12 + 4, 1);
  sub_10046F95C((*a1 + 31), 4uLL, &v12, 1);
  result = sub_100427984(__dst, v4);
  v6 = v16;
  v7 = v15;
  v9 = v13;
  v8 = v14;
  v11 = v12;
  v10 = HIDWORD(v12);
  *a2 = result;
  *(a2 + 4) = v6;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  *(a2 + 24) = v9;
  *(a2 + 32) = v10;
  *(a2 + 36) = v11;
  return result;
}

uint64_t sub_1004207B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  __dst = 0;
  v37 = 0;
  v36 = 0;
  v35 = 0;
  v34 = 0;
  v32 = 0;
  v33 = 0;
  v31 = 0;
  v30 = 0;
  v29 = 0;
  v28 = 0;
  v27 = 0;
  v26 = 0;
  v25 = 0;
  sub_10046F95C((*a1 + 4), 2uLL, &__dst + 2, 1);
  sub_10046F95C((*v2 + 6), 2uLL, &__dst, 1);
  sub_10046F95C((*v2 + 8), 1uLL, &v37, 1);
  sub_10046F95C((*v2 + 9), 2uLL, &v36, 1);
  sub_10046F95C((*v2 + 12), 4uLL, &v35, 1);
  sub_10046F95C((*v2 + 16), 8uLL, &v34, 1);
  sub_10046F95C((*v2 + 24), 2uLL, &v33 + 2, 1);
  sub_10046F95C((*v2 + 26), 2uLL, &v33, 1);
  sub_10046F95C((*v2 + 28), 4uLL, &v32, 1);
  sub_10046F95C((*v2 + 32), 2uLL, &v31 + 2, 1);
  sub_10046F95C((*v2 + 34), 2uLL, &v31, 1);
  sub_10046F95C((*v2 + 36), 1uLL, &v30 + 1, 1);
  sub_10046F95C((*v2 + 65), 1uLL, &v30, 1);
  sub_10046F95C((*v2 + 66), 1uLL, &v29 + 1, 1);
  sub_10046F95C((*v2 + 67), 1uLL, &v29, 1);
  sub_10046F95C((*v2 + 68), 2uLL, &v28, 1);
  sub_10046F95C((*v2 + 70), 1uLL, &v27 + 1, 1);
  sub_10046F95C((*v2 + 71), 1uLL, &v27, 1);
  sub_10046F95C((*v2 + 72), 1uLL, &v26 + 1, 1);
  sub_10046F95C((*v2 + 73), 1uLL, &v26, 1);
  sub_10046F95C((*v2 + 74), 2uLL, &v25, 1);
  result = sub_100427984(HIWORD(__dst), v4);
  v6 = __dst;
  v7 = v37;
  v8 = v36;
  v9 = v35;
  v10 = v34;
  v11 = HIWORD(v33);
  v12 = v33;
  v13 = v32;
  v14 = HIWORD(v31);
  v15 = v31;
  v16 = HIBYTE(v30);
  v17 = v30;
  v18 = HIBYTE(v29);
  v19 = v29;
  v20 = v28;
  v21 = HIBYTE(v27);
  v22 = v27;
  LOBYTE(v2) = HIBYTE(v26);
  v23 = v26;
  v24 = v25;
  *a2 = result;
  *(a2 + 2) = v6;
  *(a2 + 4) = v7;
  *(a2 + 6) = v8;
  *(a2 + 8) = v9;
  *(a2 + 16) = v10;
  *(a2 + 24) = v11;
  *(a2 + 26) = v12;
  *(a2 + 28) = v13;
  *(a2 + 32) = v14;
  *(a2 + 34) = v15;
  *(a2 + 36) = v16;
  *(a2 + 37) = v17;
  *(a2 + 38) = v18;
  *(a2 + 39) = v19;
  *(a2 + 40) = v20;
  *(a2 + 42) = v21;
  *(a2 + 43) = v22;
  *(a2 + 44) = v2;
  *(a2 + 45) = v23;
  *(a2 + 46) = v24;
  return result;
}

uint64_t sub_100420AC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  __dst = 0;
  v47 = 0;
  v46 = 0;
  v45 = 0;
  v44 = 0;
  v43 = 0;
  v41 = 0;
  v42 = 0;
  v40 = 0;
  v39 = 0;
  v38 = 0;
  v37 = 0;
  v36 = 0;
  v35 = 0;
  v34 = 0;
  v33 = 0;
  v32 = 0;
  v31 = 0;
  v30 = 0;
  v29 = 0;
  sub_10046F95C((*a1 + 4), 2uLL, &__dst + 2, 1);
  sub_10046F95C((*v2 + 6), 2uLL, &__dst, 1);
  sub_10046F95C((*v2 + 8), 1uLL, &v47, 1);
  sub_10046F95C((*v2 + 9), 2uLL, &v46, 1);
  sub_10046F95C((*v2 + 11), 1uLL, &v45, 1);
  sub_10046F95C((*v2 + 12), 4uLL, &v44, 1);
  sub_10046F95C((*v2 + 16), 8uLL, &v43, 1);
  sub_10046F95C((*v2 + 24), 2uLL, &v42 + 2, 1);
  sub_10046F95C((*v2 + 26), 2uLL, &v42, 1);
  sub_10046F95C((*v2 + 28), 4uLL, &v41, 1);
  sub_10046F95C((*v2 + 32), 2uLL, &v40 + 2, 1);
  sub_10046F95C((*v2 + 34), 2uLL, &v40, 1);
  sub_10046F95C((*v2 + 36), 1uLL, &v39 + 1, 1);
  sub_10046F95C((*v2 + 37), 1uLL, &v39, 1);
  sub_10046F95C((*v2 + 38), 2uLL, &v38, 1);
  sub_10046F95C((*v2 + 40), 4uLL, &v37 + 4, 1);
  sub_10046F95C((*v2 + 44), 4uLL, &v37, 1);
  sub_10046F95C((*v2 + 48), 1uLL, &v36, 1);
  sub_10046F95C((*v2 + 49), 2uLL, &v35, 1);
  sub_10046F95C((*v2 + 51), 1uLL, &v34, 1);
  sub_10046F95C((*v2 + 52), 2uLL, &v33, 1);
  sub_10046F95C((*v2 + 54), 1uLL, &v32, 1);
  sub_10046F95C((*v2 + 55), 2uLL, &v31, 1);
  sub_10046F95C((*v2 + 57), 1uLL, &v30, 1);
  sub_10046F95C((*v2 + 58), 2uLL, &v29, 1);
  result = sub_100427984(HIWORD(__dst), v4);
  v6 = __dst;
  v7 = v47;
  v8 = v46;
  v9 = v45;
  v10 = v44;
  v11 = v43;
  v12 = HIWORD(v42);
  v13 = v42;
  v14 = v41;
  v15 = HIWORD(v40);
  v16 = v40;
  v17 = HIBYTE(v39);
  v18 = v39;
  v19 = v38;
  v21 = v37;
  v20 = HIDWORD(v37);
  v22 = v36;
  LOWORD(v2) = v35;
  v23 = v34;
  v24 = v33;
  v25 = v32;
  v26 = v31;
  v27 = v30;
  v28 = v29;
  *a2 = result;
  *(a2 + 2) = v6;
  *(a2 + 4) = v7;
  *(a2 + 6) = v8;
  *(a2 + 8) = v9;
  *(a2 + 12) = v10;
  *(a2 + 16) = v11;
  *(a2 + 24) = v12;
  *(a2 + 26) = v13;
  *(a2 + 28) = v14;
  *(a2 + 32) = v15;
  *(a2 + 34) = v16;
  *(a2 + 36) = v17;
  *(a2 + 37) = v18;
  *(a2 + 38) = v19;
  *(a2 + 40) = v20;
  *(a2 + 44) = v21;
  *(a2 + 48) = v22;
  *(a2 + 50) = v2;
  *(a2 + 52) = v23;
  *(a2 + 54) = v24;
  *(a2 + 56) = v25;
  *(a2 + 58) = v26;
  *(a2 + 60) = v27;
  *(a2 + 62) = v28;
  return result;
}