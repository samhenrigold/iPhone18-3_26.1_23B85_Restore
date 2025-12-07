void sub_19B973AD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50)
{
  if (a12)
  {
    sub_19B8750F8(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B973C04(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_19B9888FC(a1, a2);
  }

  else
  {
    v4 = *(a2 + 8);
    *v3 = *a2;
    *(v3 + 8) = v4;
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    }

    v5 = *(a2 + 16);
    v6 = *(a2 + 32);
    *(v3 + 48) = *(a2 + 48);
    *(v3 + 16) = v5;
    *(v3 + 32) = v6;
    v7 = *(a2 + 56);
    v8 = *(a2 + 65);
    *(v3 + 88) = 0;
    *(v3 + 65) = v8;
    *(v3 + 56) = v7;
    *(v3 + 96) = 0;
    *(v3 + 104) = 0;
    sub_19B96775C((v3 + 88), *(a2 + 88), *(a2 + 96), 0x8E38E38E38E38E39 * ((*(a2 + 96) - *(a2 + 88)) >> 3));
    result = v3 + 112;
    a1[1] = v3 + 112;
  }

  a1[1] = result;
  return result;
}

void sub_19B973CBC(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 8);
  if (v4)
  {
    sub_19B8750F8(v4);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

uint64_t sub_19B973CD8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a2 + 16);
  v5 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  v6 = *(a2 + 56);
  v7 = *(a2 + 65);
  *(a1 + 88) = 0;
  *(a1 + 65) = v7;
  *(a1 + 56) = v6;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  sub_19B96775C((a1 + 88), *(a2 + 88), *(a2 + 96), 0x8E38E38E38E38E39 * ((*(a2 + 96) - *(a2 + 88)) >> 3));
  return a1;
}

void sub_19B973D68(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_19B8750F8(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B973D80(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v10 = 0x8E38E38E38E38E39 * ((v4 - *a1) >> 3);
    v11 = v10 + 1;
    if (v10 + 1 > 0x38E38E38E38E38ELL)
    {
      sub_19B8B8A40();
    }

    v12 = 0x8E38E38E38E38E39 * ((v5 - *a1) >> 3);
    if (2 * v12 > v11)
    {
      v11 = 2 * v12;
    }

    if (v12 >= 0x1C71C71C71C71C7)
    {
      v13 = 0x38E38E38E38E38ELL;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      sub_19B967828(a1, v13);
    }

    v14 = 72 * v10;
    *v14 = *a2;
    v15 = *(a2 + 16);
    v16 = *(a2 + 32);
    v17 = *(a2 + 48);
    *(v14 + 64) = *(a2 + 64);
    *(v14 + 32) = v16;
    *(v14 + 48) = v17;
    *(v14 + 16) = v15;
    v9 = 72 * v10 + 72;
    v18 = *(a1 + 8) - *a1;
    v19 = v14 - v18;
    memcpy((v14 - v18), *a1, v18);
    v20 = *a1;
    *a1 = v19;
    *(a1 + 8) = v9;
    *(a1 + 16) = 0;
    if (v20)
    {
      operator delete(v20);
    }
  }

  else
  {
    *v4 = *a2;
    v6 = *(a2 + 16);
    v7 = *(a2 + 32);
    v8 = *(a2 + 48);
    *(v4 + 64) = *(a2 + 64);
    *(v4 + 32) = v7;
    *(v4 + 48) = v8;
    *(v4 + 16) = v6;
    v9 = v4 + 72;
  }

  *(a1 + 8) = v9;
}

void sub_19B973EC0(const void **a1, int *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      sub_19B8B8A40();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      sub_19B8F1D64(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 4;
  }

  a1[1] = v6;
}

uint64_t *sub_19B973FA0(uint64_t *result, unint64_t a2)
{
  if (0x6DB6DB6DB6DB6DB7 * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0x24924924924924ALL)
    {
      sub_19B988AB4(result, a2);
    }

    sub_19B8B8A40();
  }

  return result;
}

void sub_19B974074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_19B988C08(va);
  _Unwind_Resume(a1);
}

uint64_t sub_19B974088(uint64_t a1)
{
  v359 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 1656);
  if (*(a1 + 1656))
  {
    v3 = *(a1 + 1664);
    *v2 = 0;
    v2[1] = 0;
    if (v3)
    {
      sub_19B8750F8(v3);
    }
  }

  if (*(a1 + 872) == *(a1 + 864))
  {
    return 1;
  }

  if (*(a1 + 96) == 1)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    v4 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_DEBUG, "CLMM,extractSolution", &buf, 2u);
    }

    v5 = sub_19B87DD40();
    if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
    {
      bzero(&buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v282 = 0;
      v6 = _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,extractSolution", &v282, 2);
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::extractSolution()", "CoreLocation: %s\n", v6);
      if (v6 != &buf)
      {
        free(v6);
      }
    }
  }

  LOBYTE(v282) = 0;
  v7 = (a1 + 984);
  v283 = 0u;
  v8 = (a1 + 992);
  v284 = 0;
  v285 = 1;
  v286 = 0;
  v287 = 0u;
  v288 = 0u;
  v289 = 0u;
  v290 = 0;
  *v291 = 0u;
  v292 = 0u;
  __asm { FMOV            V1.2D, #-1.0 }

  v294 = _Q1;
  v295 = 0u;
  v293 = 0;
  v296 = 0xBFF0000000000000;
  v308 = 0;
  v309 = 0;
  v307 = 0;
  memset(&v306[32], 0, 32);
  v310 = 0u;
  v311 = 0u;
  v312 = 0u;
  memset(v313, 0, 27);
  memset(&v313[32], 0, 48);
  v297 = 0u;
  v298 = 0u;
  v299 = 0u;
  v300 = 0u;
  *__p = 0u;
  v302 = 0u;
  v303 = 0u;
  v304 = 0u;
  v305 = 0u;
  memset(v306, 0, 30);
  v315 = 0xBFF0000000000000;
  v314 = 0;
  v316 = 0;
  v325 = 0;
  v324 = 0u;
  v317 = 0u;
  v318 = 0u;
  v319 = 0u;
  v320 = 0u;
  memset(v321, 0, sizeof(v321));
  v322 = 0u;
  v323 = 0;
  v326 = 1;
  v327 = 0;
  v331 = 0;
  v329 = 0u;
  v330 = 0u;
  v328 = 0u;
  v334 = 0u;
  memset(v335, 0, sizeof(v335));
  *&_Q1 = *(a1 + 1224);
  v332 = 0u;
  v333 = 0u;
  if (*&_Q1 == 0.0 || *(a1 + 1356) == 1)
  {
    *(a1 + 3144) = *(a1 + 1136);
  }

  v12 = *v7;
  if (*v7 == v8)
  {
    goto LABEL_44;
  }

  v13 = 0;
  v275 = (a1 + 1128);
  v14 = (a1 + 992);
  do
  {
    if (!v12[7])
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v26 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf.__r_.__value_.__l.__data_) = 0;
        _os_log_impl(&dword_19B873000, v26, OS_LOG_TYPE_ERROR, "CLMM,NULL road, bad candidate", &buf, 2u);
      }

      v27 = sub_19B87DD40();
      if ((*(v27 + 160) & 0x80000000) != 0 && (*(v27 + 164) & 0x80000000) != 0 && (*(v27 + 168) & 0x80000000) != 0 && !*(v27 + 152))
      {
        goto LABEL_66;
      }

      bzero(&buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v340[0] = 0;
      v25 = _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMM,NULL road, bad candidate", v340, 2);
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLParticleMapMatcher::extractSolution()", "CoreLocation: %s\n", v25);
LABEL_64:
      if (v25 != &buf)
      {
        free(v25);
      }

      goto LABEL_66;
    }

    if (*(v12 + 200))
    {
      v15 = 216;
    }

    else
    {
      v15 = 76;
    }

    v16 = *(v12 + v15);
    if (v16 > v13)
    {
      v14 = v12;
      v13 = v16;
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
        _ZF = *v18 == v12;
        v12 = v18;
      }

      while (!_ZF);
    }

    v12 = v18;
  }

  while (v18 != v8);
  if (v13 <= 0)
  {
LABEL_44:
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    v23 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&dword_19B873000, v23, OS_LOG_TYPE_ERROR, "CLMM,Unexpected bestCount<=0", &buf, 2u);
    }

    v24 = sub_19B87DD40();
    if ((*(v24 + 160) & 0x80000000) != 0 && (*(v24 + 164) & 0x80000000) != 0 && (*(v24 + 168) & 0x80000000) != 0 && !*(v24 + 152))
    {
      goto LABEL_66;
    }

    bzero(&buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    v340[0] = 0;
    v25 = _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMM,Unexpected bestCount<=0", v340, 2);
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLParticleMapMatcher::extractSolution()", "CoreLocation: %s\n", v25);
    goto LABEL_64;
  }

  if (v14 == v8)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    v29 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&dword_19B873000, v29, OS_LOG_TYPE_ERROR, "CLMM,Unexpected no best candidate found", &buf, 2u);
    }

    v30 = sub_19B87DD40();
    if ((*(v30 + 160) & 0x80000000) != 0 && (*(v30 + 164) & 0x80000000) != 0 && (*(v30 + 168) & 0x80000000) != 0 && !*(v30 + 152))
    {
      goto LABEL_66;
    }

    bzero(&buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    v340[0] = 0;
    v25 = _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMM,Unexpected no best candidate found", v340, 2);
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLParticleMapMatcher::extractSolution()", "CoreLocation: %s\n", v25);
    goto LABEL_64;
  }

  *(a1 + 1649) = 0;
  if (*(v14 + 200) != 1 || *(v14 + 192) != 1 || *(v14 + 53) <= *(v14 + 52))
  {
    goto LABEL_228;
  }

  v19 = sub_19B98A250(a1 + 984, v14 + 28);
  if (v8 == v19)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    v31 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&dword_19B873000, v31, OS_LOG_TYPE_ERROR, "CLMM,Unexpected. There should be an outgoing road", &buf, 2u);
    }

    v32 = sub_19B87DD40();
    if ((*(v32 + 160) & 0x80000000) != 0 && (*(v32 + 164) & 0x80000000) != 0 && (*(v32 + 168) & 0x80000000) != 0 && !*(v32 + 152))
    {
      goto LABEL_66;
    }

    bzero(&buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    v340[0] = 0;
    v25 = _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMM,Unexpected. There should be an outgoing road", v340, 2);
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLParticleMapMatcher::extractSolution()", "CoreLocation: %s\n", v25);
    goto LABEL_64;
  }

  memset(v345, 0, 20);
  v20 = *(v19 + 56);
  v21 = *(v19 + 64);
  if (v21)
  {
    atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
    *v345 = v20;
    *&v345[8] = v21;
  }

  else
  {
    *v345 = *(v19 + 56);
  }

  if (!v20)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    v38 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&dword_19B873000, v38, OS_LOG_TYPE_ERROR, "CLMM,Unexpected NULL outgoing road candidate", &buf, 2u);
    }

    v39 = sub_19B87DD40();
    if ((*(v39 + 160) & 0x80000000) == 0 || (*(v39 + 164) & 0x80000000) == 0 || (*(v39 + 168) & 0x80000000) == 0 || *(v39 + 152))
    {
      bzero(&buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v340[0] = 0;
      v37 = _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMM,Unexpected NULL outgoing road candidate", v340, 2);
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLParticleMapMatcher::extractSolution()", "CoreLocation: %s\n", v37);
LABEL_128:
      if (v37 != &buf)
      {
        free(v37);
      }
    }

LABEL_130:
    if (*&v345[8])
    {
      sub_19B8750F8(*&v345[8]);
    }

LABEL_66:
    v22 = 0;
    goto LABEL_67;
  }

  *&v345[16] = 0;
  v345[20] = *(v19 + 48);
  v345[21] = 0;
  v33 = *(v14 + 107);
  *&v347 = v33;
  v34 = *(v14 + 106);
  *&v348 = v14[105];
  *(&v348 + 1) = v34;
  v349 = v14[120];
  if (*&v348 == 0.0 && v34 == 0.0)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    v35 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&dword_19B873000, v35, OS_LOG_TYPE_ERROR, "CLMM,Unexpected outgoing snapLat==snapLon==0", &buf, 2u);
    }

    v36 = sub_19B87DD40();
    if ((*(v36 + 160) & 0x80000000) == 0 || (*(v36 + 164) & 0x80000000) == 0 || (*(v36 + 168) & 0x80000000) == 0 || *(v36 + 152))
    {
      bzero(&buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v340[0] = 0;
      v37 = _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMM,Unexpected outgoing snapLat==snapLon==0", v340, 2);
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLParticleMapMatcher::extractSolution()", "CoreLocation: %s\n", v37);
      goto LABEL_128;
    }

    goto LABEL_130;
  }

  *v337 = 0;
  v336 = 0.0;
  v281 = 0;
  memset(&buf, 0, sizeof(buf));
  v351 = 1.0;
  memset(v352, 0, sizeof(v352));
  sub_19B940928(a1, a1 + 656, v345, v275, v337, &v336, &v281, &buf, 0);
  v40 = 1;
  v280 = 1;
  v279 = 1;
  v41 = *(v14 + 642);
  v42 = fmod(v41 - v33, 360.0);
  if (v42 < 0.0)
  {
    v42 = v42 + 360.0;
  }

  if (v42 > 180.0)
  {
    v42 = v42 + -360.0;
  }

  if (fabs(v42) < 45.0)
  {
    v40 = 0;
    v279 = 0;
  }

  v278 = 0;
  v43 = *(a1 + 1232);
  if (v43 < 0.0)
  {
    v273 = 0;
    v44 = 0;
    v45 = 1;
    goto LABEL_162;
  }

  v46 = fmod(v43 - v33, 360.0);
  if (v46 < 0.0)
  {
    v46 = v46 + 360.0;
  }

  if (v46 > 180.0)
  {
    v46 = v46 + -360.0;
  }

  if (fabs(v46) >= 25.0)
  {
    v44 = 0;
  }

  else
  {
    v44 = 1;
    HIBYTE(v278) = 1;
  }

  if (*(v14 + 31) >= 7.5)
  {
    v45 = 1;
  }

  else
  {
    v280 = v44;
    v45 = v44;
    if (!v44)
    {
      v273 = 0;
      v45 = 0;
      goto LABEL_162;
    }
  }

  if (!v40 || (v44 & 1) != 0 || *(a1 + 1320) >= 20.0)
  {
    v273 = 0;
  }

  else
  {
    v47 = fmod(v41 - v43, 360.0);
    if (v47 < 0.0)
    {
      v47 = v47 + 360.0;
    }

    if (v47 > 180.0)
    {
      v47 = v47 + -360.0;
    }

    v48 = fabs(v47);
    v273 = v48 < 10.0;
    LOBYTE(v278) = v48 < 10.0;
    if (v48 < 10.0)
    {
      v45 = 0;
    }

    v280 = v45;
  }

LABEL_162:
  if (*(a1 + 96) == 1)
  {
    v49 = sub_19B8E3CB0();
    buf.__r_.__value_.__r.__words[0] = *(a1 + 1136);
    *v340 = v14[642];
    v50 = *(a1 + 1232);
    v276 = *(a1 + 1320);
    v277 = v50;
    sub_19B977E84(v49, &buf, v340, &v347, &v277, v14 + 31, &v280, &v276, &v279, &v278 + 1, &v278);
    v51 = v44;
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    v52 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      v53 = *(a1 + 1136);
      v54 = v14[642];
      v55 = *(a1 + 1232);
      v56 = v14[31];
      v57 = *(a1 + 1320);
      LODWORD(buf.__r_.__value_.__l.__data_) = 134351360;
      *(buf.__r_.__value_.__r.__words + 4) = v53;
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2050;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = v54;
      HIWORD(buf.__r_.__value_.__r.__words[2]) = 2050;
      v351 = v33;
      *v352 = 2050;
      *&v352[2] = v55;
      *&v352[10] = 2050;
      *&v352[12] = v56;
      *&v352[20] = 1026;
      *&v352[22] = v45;
      *&v352[26] = 2050;
      *&v352[28] = v57;
      v353 = 1026;
      v354 = v40;
      v355 = 1026;
      v356 = v51;
      v357 = 1026;
      v358 = v273;
      _os_log_impl(&dword_19B873000, v52, OS_LOG_TYPE_DEBUG, "CLMM,Time,%{public}.1lf,snapCourse,%{public}.2lf,outgoingSnapCourse,%{public}.2lf, crumbCourse,%{public}.2lf, outgoingDistanceFromIntersection,%{public}.2lf,outgoingCondition,%{public}d,crumbCourseUnc,%{public}.2lf,significantCourseChange,%{public}d,isCourseAligned,%{public}d, isMeanCandidateAlignedWithCourse,%{public}d", &buf, 0x56u);
    }

    v58 = sub_19B87DD40();
    v44 = v51;
    if (*(v58 + 160) > 1 || *(v58 + 164) > 1 || *(v58 + 168) > 1 || *(v58 + 152))
    {
      bzero(&buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v59 = *(a1 + 1136);
      v60 = v14[642];
      v61 = *(a1 + 1232);
      v62 = v14[31];
      v63 = *(a1 + 1320);
      *v340 = 134351360;
      *&v340[2] = v59;
      v340[6] = 2050;
      *&v340[7] = v60;
      v340[11] = 2050;
      *&v340[12] = v33;
      v340[16] = 2050;
      *&v340[17] = v61;
      v340[21] = 2050;
      *&v340[22] = v62;
      v340[26] = 1026;
      v64 = v45;
      *&v340[27] = v45;
      v340[29] = 2050;
      *&v340[30] = v63;
      v340[34] = 1026;
      *&v340[35] = v40;
      v340[37] = 1026;
      v65 = v44;
      *&v340[38] = v44;
      v340[40] = 1026;
      v341 = v273;
      v66 = _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,Time,%{public}.1lf,snapCourse,%{public}.2lf,outgoingSnapCourse,%{public}.2lf, crumbCourse,%{public}.2lf, outgoingDistanceFromIntersection,%{public}.2lf,outgoingCondition,%{public}d,crumbCourseUnc,%{public}.2lf,significantCourseChange,%{public}d,isCourseAligned,%{public}d, isMeanCandidateAlignedWithCourse,%{public}d", v340, 86);
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::extractSolution()", "CoreLocation: %s\n", v66);
      if (v66 != &buf)
      {
        free(v66);
      }

      v44 = v65;
      v45 = v64;
    }
  }

  if (*(a1 + 1792) < 8.05555556 && (*(v14 + 49) > 1 || *(a1 + 1208) > 10.0))
  {
    v67 = 15.0;
    if (*(a1 + 1224) > 0.0 && (*(a1 + 1356) & 1) == 0 && vabdd_f64(*(a1 + 1136), *(a1 + 3144)) < 20.0)
    {
      v67 = 7.5;
    }

    if ((v40 & v44) != 0)
    {
      v68 = v67 * 0.6;
    }

    else
    {
      v68 = v67;
    }

    if (*(a1 + 96) == 1)
    {
      v69 = v44;
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v70 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        v71 = *(a1 + 1136);
        v72 = v14[31];
        LODWORD(buf.__r_.__value_.__l.__data_) = 134349568;
        *(buf.__r_.__value_.__r.__words + 4) = v71;
        WORD2(buf.__r_.__value_.__r.__words[1]) = 2050;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = v72;
        HIWORD(buf.__r_.__value_.__r.__words[2]) = 2050;
        v351 = v68;
        _os_log_impl(&dword_19B873000, v70, OS_LOG_TYPE_DEBUG, "CLMM,Time,%{public}.1lf,exit distance check,distance,%{public}.2lf,exitDistance,%{public}.2lf", &buf, 0x20u);
      }

      v73 = sub_19B87DD40();
      v44 = v69;
      if (*(v73 + 160) > 1 || *(v73 + 164) > 1 || *(v73 + 168) > 1 || *(v73 + 152))
      {
        bzero(&buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
        }

        v74 = *(a1 + 1136);
        v75 = v14[31];
        *v340 = 134349568;
        *&v340[2] = v74;
        v340[6] = 2050;
        *&v340[7] = v75;
        v340[11] = 2050;
        *&v340[12] = v68;
        v76 = _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,Time,%{public}.1lf,exit distance check,distance,%{public}.2lf,exitDistance,%{public}.2lf", v340, 32);
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::extractSolution()", "CoreLocation: %s\n", v76);
        if (v76 != &buf)
        {
          free(v76);
        }

        v44 = v69;
      }
    }

    if (v45)
    {
      v45 = *(v14 + 31) > v68;
    }

    v280 = v45;
  }

  if (v40 && v44 && *(a1 + 1320) < 20.0)
  {
    if (!v45)
    {
      goto LABEL_212;
    }

LABEL_210:
    if (*(a1 + 1224) <= 0.0)
    {
      goto LABEL_212;
    }

    v77 = *(a1 + 1356) ^ 1;
  }

  else
  {
    if (v45 && *(v14 + 53) > 2 * *(v14 + 52))
    {
      goto LABEL_210;
    }

LABEL_212:
    v77 = 0;
  }

  *(a1 + 1650) = v77 & 1;
  if (*(a1 + 96) == 1)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    v78 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      v79 = *(a1 + 1136);
      LODWORD(buf.__r_.__value_.__l.__data_) = 134349312;
      *(buf.__r_.__value_.__r.__words + 4) = v79;
      WORD2(buf.__r_.__value_.__r.__words[1]) = 1026;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = v77 & 1;
      _os_log_impl(&dword_19B873000, v78, OS_LOG_TYPE_DEBUG, "CLMM,Time,%{public}.1lf,outgoing condition,%{public}d", &buf, 0x12u);
    }

    v80 = sub_19B87DD40();
    if (*(v80 + 160) > 1 || *(v80 + 164) > 1 || *(v80 + 168) > 1 || *(v80 + 152))
    {
      bzero(&buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v81 = *(a1 + 1136);
      *v340 = 134349312;
      *&v340[2] = v81;
      v340[6] = 1026;
      *&v340[7] = v77 & 1;
      v82 = _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,Time,%{public}.1lf,outgoing condition,%{public}d", v340, 18);
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::extractSolution()", "CoreLocation: %s\n", v82);
      if (v82 != &buf)
      {
        free(v82);
      }
    }
  }

  *(a1 + 1649) = 1;
  if (*&v345[8])
  {
    sub_19B8750F8(*&v345[8]);
  }

LABEL_228:
  memset(v340, 0, 20);
  v340[10] = 1;
  *&v340[12] = 0;
  v344 = 0;
  __src = 0;
  v343 = 0;
  memset(&v340[16], 0, 49);
  v83 = *(a1 + 1320);
  if (v83 < 19.0)
  {
    *(a1 + 1320) = 0x4033000000000000;
    sub_19B9C138C(a1 + 656, v275, *(a1 + 752));
  }

  v84 = *(a1 + 864);
  if (v84 != *(a1 + 872))
  {
    while (2)
    {
      *(v84 + 80) = 0;
      sub_19B97106C(v84, &buf);
      if (buf.__r_.__value_.__r.__words[0] == v14[4] && buf.__r_.__value_.__s.__data_[16] == *(v14 + 48))
      {
        if (buf.__r_.__value_.__l.__size_ == v14[5])
        {
          if ((*(a1 + 1650) & 1) != 0 || *(v14 + 200) != 1 || *(v14 + 192) != 1)
          {
            goto LABEL_265;
          }

          v85 = *(v84 + 48);
          v86 = *(v14 + 66);
          if (buf.__r_.__value_.__s.__data_[16])
          {
            if (v85 <= v86)
            {
              goto LABEL_265;
            }

LABEL_261:
            *(v84 + 80) = 0;
LABEL_262:
            v84 += 112;
            if (v84 == *(a1 + 872))
            {
              goto LABEL_272;
            }

            continue;
          }

          if (v85 < v86)
          {
            goto LABEL_261;
          }

LABEL_265:
          *(v84 + 80) = 1;
          memset(&buf, 0, sizeof(buf));
          v351 = 1.0;
          memset(v352, 0, sizeof(v352));
          sub_19B940928(a1, a1 + 656, v84, v275, v345, v337, &v336, &buf, 0);
          v91 = buf.__r_.__value_.__r.__words[2];
          *(v84 + 56) = buf.__r_.__value_.__r.__words[0];
          *(v84 + 72) = v91;
          if (*(v84 + 56) > *&v340[28])
          {
            v93 = *v84;
            v92 = *(v84 + 8);
            if (v92)
            {
              atomic_fetch_add_explicit((v92 + 8), 1uLL, memory_order_relaxed);
            }

            v94 = *&v340[4];
            *v340 = v93;
            *&v340[4] = v92;
            if (v94)
            {
              sub_19B8750F8(v94);
            }

            v95 = *(v84 + 16);
            v96 = *(v84 + 32);
            *&v340[24] = *(v84 + 48);
            *&v340[8] = v95;
            *&v340[16] = v96;
            v97 = *(v84 + 65);
            *&v340[28] = *(v84 + 56);
            *(&v340[32] + 1) = v97;
            if (v84 != v340)
            {
              sub_19B967884(&__src, *(v84 + 88), *(v84 + 96), 0x8E38E38E38E38E39 * ((*(v84 + 96) - *(v84 + 88)) >> 3));
            }
          }

          goto LABEL_262;
        }

        if (!*(a1 + 1650))
        {
LABEL_250:
          if (*(v14 + 200) != 1)
          {
            goto LABEL_261;
          }

          if (v14[24])
          {
            goto LABEL_261;
          }

          sub_19B97106C(v84, &buf);
          if (buf.__r_.__value_.__r.__words[0] != v14[28] || buf.__r_.__value_.__s.__data_[16] != *(v14 + 240) || buf.__r_.__value_.__l.__size_ != v14[29])
          {
            goto LABEL_261;
          }

          v89 = *(v84 + 48);
          v90 = *(v14 + 140);
          if (buf.__r_.__value_.__s.__data_[16])
          {
            if (v89 < v90)
            {
              goto LABEL_261;
            }
          }

          else if (v89 < v90)
          {
            goto LABEL_261;
          }

          *(v84 + 80) = 1;
          goto LABEL_265;
        }
      }

      else if ((*(a1 + 1650) & 1) == 0)
      {
        goto LABEL_250;
      }

      break;
    }

    if (*(v14 + 200) == 1 && *(v14 + 192) == 1)
    {
      sub_19B97106C(v84, &buf);
      if (buf.__r_.__value_.__r.__words[0] == v14[28] && buf.__r_.__value_.__s.__data_[16] == *(v14 + 240) && buf.__r_.__value_.__l.__size_ == v14[29])
      {
        v87 = *(v84 + 48);
        v88 = *(v14 + 140);
        if (buf.__r_.__value_.__s.__data_[16])
        {
          if (v87 >= v88)
          {
            goto LABEL_265;
          }
        }

        else if (v87 >= v88)
        {
          goto LABEL_265;
        }
      }
    }

    goto LABEL_250;
  }

LABEL_272:
  *(a1 + 1008) = 1;
  v98 = *v340;
  v99 = *&v340[4];
  if (*&v340[4])
  {
    atomic_fetch_add_explicit((*&v340[4] + 8), 1uLL, memory_order_relaxed);
  }

  v274 = (a1 + 1016);
  *(a1 + 1016) = v98;
  v100 = *(a1 + 1024);
  *(a1 + 1024) = v99;
  if (v100)
  {
    sub_19B8750F8(v100);
  }

  *(a1 + 1064) = *&v340[24];
  v101 = *&v340[16];
  *(a1 + 1032) = *&v340[8];
  *(a1 + 1048) = v101;
  *(a1 + 1072) = *&v340[28];
  *(a1 + 1081) = *(&v340[32] + 1);
  if (v274 != v340)
  {
    sub_19B967884((a1 + 1104), __src, v343, 0x8E38E38E38E38E39 * ((v343 - __src) >> 3));
  }

  if (*(a1 + 1650) == 1)
  {
    sub_19B97106C(v340, &buf);
    v102 = (v14 + 28);
    if (v14[28] == buf.__r_.__value_.__r.__words[0] && *(v14 + 240) == buf.__r_.__value_.__s.__data_[16] && v14[29] == buf.__r_.__value_.__l.__size_)
    {
      v103 = *(v14 + 43);
      v104 = *(v14 + 44);
      v105 = *(v14 + 46);
      *(a1 + 1160) = *(v14 + 45);
      *(a1 + 1176) = v105;
      *v275 = v103;
      *(a1 + 1144) = v104;
      v106 = *(v14 + 47);
      v107 = *(v14 + 48);
      v108 = *(v14 + 50);
      *(a1 + 1224) = *(v14 + 49);
      *(a1 + 1240) = v108;
      *(a1 + 1192) = v106;
      *(a1 + 1208) = v107;
      std::string::operator=((a1 + 1256), v14 + 34);
      memcpy((a1 + 1280), v14 + 105, 0x118uLL);
      v110 = v14[7];
      v109 = v14[8];
      if (v109)
      {
        atomic_fetch_add_explicit((v109 + 8), 1uLL, memory_order_relaxed);
      }

      *(a1 + 1656) = v110;
      v111 = *(a1 + 1664);
      *(a1 + 1664) = v109;
      if (v111)
      {
        sub_19B8750F8(v111);
      }

      if (*(a1 + 96) == 1 && *v2)
      {
        v112 = sub_19B8E3CB0();
        buf.__r_.__value_.__r.__words[0] = *(a1 + 1136);
        *v345 = **(a1 + 1656);
        sub_19B977FE0(v112, &buf, v345, v14 + 28);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
        }

        v113 = off_1EAFE4708;
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
        {
          v114 = *(a1 + 1136);
          v115 = **(a1 + 1656);
          v116 = *v102;
          LODWORD(buf.__r_.__value_.__l.__data_) = 134349569;
          *(buf.__r_.__value_.__r.__words + 4) = v114;
          WORD2(buf.__r_.__value_.__r.__words[1]) = 2049;
          *(&buf.__r_.__value_.__r.__words[1] + 6) = v115;
          HIWORD(buf.__r_.__value_.__r.__words[2]) = 2049;
          v351 = v116;
          _os_log_impl(&dword_19B873000, v113, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.1lf,Using outgoing,incomingID,%{private}lld,outgoingID,%{private}lld", &buf, 0x20u);
        }

        v117 = sub_19B87DD40();
        if (*(v117 + 160) > 1 || *(v117 + 164) > 1 || *(v117 + 168) > 1 || *(v117 + 152))
        {
          bzero(&buf, 0x65CuLL);
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
          }

          v118 = *(a1 + 1136);
          v119 = **(a1 + 1656);
          v120 = *v102;
          *v345 = 134349569;
          *&v345[4] = v118;
          *&v345[12] = 2049;
          *&v345[14] = v119;
          v346 = 2049;
          v347 = v120;
          v121 = _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,%{public}.1lf,Using outgoing,incomingID,%{private}lld,outgoingID,%{private}lld", v345, 32);
          sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::extractSolution()", "CoreLocation: %s\n", v121);
          if (v121 != &buf)
          {
            free(v121);
          }
        }
      }

      if (v83 >= 19.0)
      {
        goto LABEL_337;
      }

LABEL_336:
      *(a1 + 1320) = v83;
      sub_19B9C138C(a1 + 656, v275, *(a1 + 752));
      goto LABEL_337;
    }
  }

  if (*(v14 + 200) == 1 && (v14[24] & 1) == 0)
  {
    sub_19B97106C(v340, &buf);
    if (v14[28] == buf.__r_.__value_.__r.__words[0] && *(v14 + 240) == buf.__r_.__value_.__s.__data_[16] && v14[29] == buf.__r_.__value_.__l.__size_)
    {
      sub_19B911784(v2, v14 + 7);
      if (*(a1 + 96) == 1)
      {
        if (*v2)
        {
          v122 = sub_19B8E3CB0();
          buf.__r_.__value_.__r.__words[0] = *(a1 + 1136);
          *v345 = **(a1 + 1656);
          *v337 = **v340;
          sub_19B9780D8(v122, &buf, v345, v337);
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
          }

          v123 = off_1EAFE4708;
          if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
          {
            v124 = *(a1 + 1136);
            v125 = **(a1 + 1656);
            v126 = **v340;
            LODWORD(buf.__r_.__value_.__l.__data_) = 134349569;
            *(buf.__r_.__value_.__r.__words + 4) = v124;
            WORD2(buf.__r_.__value_.__r.__words[1]) = 2049;
            *(&buf.__r_.__value_.__r.__words[1] + 6) = v125;
            HIWORD(buf.__r_.__value_.__r.__words[2]) = 2049;
            v351 = v126;
            _os_log_impl(&dword_19B873000, v123, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.1lf,Using particle on outgoing,incomingID,%{private}lld,outgoingID,%{private}lld", &buf, 0x20u);
          }

          v127 = sub_19B87DD40();
          if (*(v127 + 160) > 1 || *(v127 + 164) > 1 || *(v127 + 168) > 1 || *(v127 + 152))
          {
            bzero(&buf, 0x65CuLL);
            if (qword_1EAFE46D0 != -1)
            {
              dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
            }

            v128 = *(a1 + 1136);
            v129 = **(a1 + 1656);
            v130 = **v340;
            *v345 = 134349569;
            *&v345[4] = v128;
            *&v345[12] = 2049;
            *&v345[14] = v129;
            v346 = 2049;
            v347 = v130;
            v131 = _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,%{public}.1lf,Using particle on outgoing,incomingID,%{private}lld,outgoingID,%{private}lld", v345, 32);
            sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::extractSolution()", "CoreLocation: %s\n", v131);
            if (v131 != &buf)
            {
              free(v131);
            }
          }
        }
      }
    }
  }

  v132 = *(v14 + 621);
  v133 = *(v14 + 623);
  v134 = *(v14 + 627);
  *(a1 + 1160) = *(v14 + 625);
  *(a1 + 1176) = v134;
  *v275 = v132;
  *(a1 + 1144) = v133;
  v135 = *(v14 + 629);
  v136 = *(v14 + 631);
  v137 = *(v14 + 635);
  *(a1 + 1224) = *(v14 + 633);
  *(a1 + 1240) = v137;
  *(a1 + 1192) = v135;
  *(a1 + 1208) = v136;
  std::string::operator=((a1 + 1256), (v14 + 637));
  memcpy((a1 + 1280), v14 + 640, 0x118uLL);
  if (*(a1 + 96) == 1)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    v138 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      v139 = *(a1 + 1136);
      sub_19B97106C(v340, &buf);
      *v345 = 134349313;
      *&v345[4] = v139;
      *&v345[12] = 2049;
      *&v345[14] = buf.__r_.__value_.__r.__words[0];
      _os_log_impl(&dword_19B873000, v138, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.1lf,bestParticleRoadID,%{private}lld", v345, 0x16u);
    }

    v140 = sub_19B87DD40();
    if (*(v140 + 160) > 1 || *(v140 + 164) > 1 || *(v140 + 168) > 1 || *(v140 + 152))
    {
      bzero(&buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v141 = off_1EAFE4708;
      v142 = *(a1 + 1136);
      sub_19B97106C(v340, v345);
      *v337 = 134349313;
      *&v337[4] = v142;
      v338 = 2049;
      v339 = *v345;
      v143 = _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B873000, v141, 2, "CLMM,%{public}.1lf,bestParticleRoadID,%{private}lld", v337, 22);
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::extractSolution()", "CoreLocation: %s\n", v143);
      if (v143 != &buf)
      {
        free(v143);
      }
    }
  }

  if (v83 < 19.0 && (*(a1 + 1649) & 1) == 0)
  {
    goto LABEL_336;
  }

LABEL_337:
  if (*(a1 + 1490) == 1)
  {
    v144 = 0.0;
    if (*(a1 + 1528) == 1)
    {
      goto LABEL_409;
    }
  }

  if (*(a1 + 1649) == 1)
  {
    v144 = 0.0;
    if (*(a1 + 1650) != 1)
    {
      goto LABEL_409;
    }
  }

  v145 = *v7;
  v144 = 0.0;
  if (*v7 == v8)
  {
    goto LABEL_409;
  }

  v146 = 3.0;
  v147 = &OBJC_IVAR___CLTripSegmentOutputData__tripSegmentID;
  v148 = &dword_19B873000;
  while (2)
  {
    if (v145 == v14 || *(v14 + 200) == 1 && v145[4] == v14[28] && *(v145 + 48) == *(v14 + 240) && v145[5] == v14[29])
    {
      goto LABEL_372;
    }

    v149 = *(v145 + 17);
    if (v149 == 0.0)
    {
      goto LABEL_372;
    }

    if (v149 > v144)
    {
      v144 = *(v145 + 17);
    }

    v150 = *(v14 + 17) / v149;
    v151 = v150 <= 1000000.0 ? v150 : 1000000.0;
    if (v151 > v146)
    {
LABEL_372:
      v160 = v145[1];
      if (v160)
      {
        do
        {
          v161 = v160;
          v160 = *v160;
        }

        while (v160);
      }

      else
      {
        do
        {
          v161 = v145[2];
          _ZF = *v161 == v145;
          v145 = v161;
        }

        while (!_ZF);
      }

      v145 = v161;
      if (v161 == v8)
      {
        goto LABEL_409;
      }

      continue;
    }

    break;
  }

  v152 = *(v14 + 642);
  v153 = fmod(v152 - *(v145 + 642), 360.0);
  if (v153 < 0.0)
  {
    v153 = v153 + 360.0;
  }

  if (v153 > 180.0)
  {
    v153 = v153 + -360.0;
  }

  v154 = fabs(v153);
  *v337 = 0;
  v336 = 0.0;
  sub_19BA0C3BC((a1 + 608), v337, &v336, *(v14 + 640), *(v14 + 641), *(v14 + 630), v152, *(v145 + 640), *(v145 + 641));
  if (v154 >= 35.0)
  {
    goto LABEL_371;
  }

  if (*(a1 + 1848) == 1 && *(a1 + 2233) != 1 && ((v272 = v336, v155 = fabs(v336), v156 = *v337, v157 = fabs(*v337), v157 > 2.0) ? (_NF = v155 < 1.5) : (_NF = 0), !_NF ? (v159 = v157 <= 10.0) : (v159 = 0), v159))
  {
    if (*(a1 + 96) == 1)
    {
      v162 = v147;
      v163 = v148;
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v164 = *(v162 + 225);
      if (os_log_type_enabled(v164, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(buf.__r_.__value_.__l.__data_) = 134349824;
        *(buf.__r_.__value_.__r.__words + 4) = v154;
        WORD2(buf.__r_.__value_.__r.__words[1]) = 2050;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = v156;
        HIWORD(buf.__r_.__value_.__r.__words[2]) = 2050;
        v351 = v151;
        *v352 = 2050;
        *&v352[2] = v272;
        _os_log_impl(v163, v164, OS_LOG_TYPE_DEBUG, "CLMM,ambiguous solution not detected,fabsCourseDiff,%{public}.1lf,acrossTrack,%{public}.1lf,ratio,%{public}.3lf,alongTrackToAlt,%{public}.1lf", &buf, 0x2Au);
      }

      v165 = sub_19B87DD40();
      v148 = v163;
      v147 = v162;
      if (*(v165 + 160) > 1 || *(v165 + 164) > 1 || *(v165 + 168) > 1 || *(v165 + 152))
      {
        bzero(&buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
        }

        v166 = *(v162 + 225);
        *v345 = 134349824;
        *&v345[4] = v154;
        *&v345[12] = 2050;
        *&v345[14] = v156;
        v346 = 2050;
        v347 = v151;
        LOWORD(v348) = 2050;
        *(&v348 + 2) = v272;
        v167 = v148;
        v168 = _os_log_send_and_compose_impl(2, 0, &buf, 1628, v148, v166, 2, "CLMM,ambiguous solution not detected,fabsCourseDiff,%{public}.1lf,acrossTrack,%{public}.1lf,ratio,%{public}.3lf,alongTrackToAlt,%{public}.1lf", v345, 42);
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::extractSolution()", "CoreLocation: %s\n", v168);
        if (v168 != &buf)
        {
          free(v168);
        }

        v148 = v167;
        v147 = v162;
      }
    }
  }

  else
  {
    *(a1 + 1393) = 1;
  }

  if (*(a1 + 1393) != 1)
  {
LABEL_371:
    v146 = 3.0;
    goto LABEL_372;
  }

  if (*(a1 + 96) == 1)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    v169 = *(v147 + 225);
    if (os_log_type_enabled(v169, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf.__r_.__value_.__l.__data_) = 134349824;
      *(buf.__r_.__value_.__r.__words + 4) = v154;
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2050;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = *v337;
      HIWORD(buf.__r_.__value_.__r.__words[2]) = 2050;
      v351 = v151;
      *v352 = 2050;
      *&v352[2] = v336;
      _os_log_impl(&dword_19B873000, v169, OS_LOG_TYPE_DEBUG, "CLMM,ambiguous solution detected,fabsCourseDiff,%{public}.1lf,acrossTrack,%{public}.1lf,ratio,%{public}.3lf,alongTrackToAlt,%{public}.1lf", &buf, 0x2Au);
    }

    v170 = sub_19B87DD40();
    if (*(v170 + 160) > 1 || *(v170 + 164) > 1 || *(v170 + 168) > 1 || *(v170 + 152))
    {
      bzero(&buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v171 = *(v147 + 225);
      *v345 = 134349824;
      *&v345[4] = v154;
      *&v345[12] = 2050;
      *&v345[14] = *v337;
      v346 = 2050;
      v347 = v151;
      LOWORD(v348) = 2050;
      *(&v348 + 2) = v336;
      v172 = _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B873000, v171, 2, "CLMM,ambiguous solution detected,fabsCourseDiff,%{public}.1lf,acrossTrack,%{public}.1lf,ratio,%{public}.3lf,alongTrackToAlt,%{public}.1lf", v345, 42);
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::extractSolution()", "CoreLocation: %s\n", v172);
      if (v172 != &buf)
      {
        free(v172);
      }
    }
  }

  *(a1 + 1648) = 1;
  sub_19B9710EC(a1 + 1680, v145 + 10);
  *(a1 + 1672) = 1;
  if (*(a1 + 1848) == 1 && (*(a1 + 2233) & 1) == 0)
  {
    *(a1 + 3152) = *(a1 + 1136);
  }

LABEL_409:
  if (*(a1 + 1393) != 1)
  {
    goto LABEL_438;
  }

  v173 = *(a1 + 4040);
  v174 = *(a1 + 4048);
  if (v173 == v174)
  {
    goto LABEL_438;
  }

  v175 = v173 + 20;
  while (2)
  {
    sub_19B97106C(v274, &buf);
    v176 = v175 - 20;
    v177 = *(v175 - 20);
    v178 = *(v175 - 12);
    if (v178)
    {
      atomic_fetch_add_explicit(&v178->__shared_owners_, 1uLL, memory_order_relaxed);
      v179 = *v175;
      atomic_fetch_add_explicit(&v178->__shared_owners_, 1uLL, memory_order_relaxed);
      v181 = *v177;
      v180 = v177[1];
      sub_19B8750F8(v178);
    }

    else
    {
      v179 = *v175;
      v181 = *v177;
      v180 = v177[1];
    }

    _ZF = buf.__r_.__value_.__r.__words[0] == v181 && buf.__r_.__value_.__s.__data_[16] == v179;
    if (_ZF)
    {
      v183 = buf.__r_.__value_.__l.__size_ == v180;
      if (!v178)
      {
        goto LABEL_423;
      }

      goto LABEL_422;
    }

    v183 = 0;
    if (v178)
    {
LABEL_422:
      sub_19B8750F8(v178);
    }

LABEL_423:
    if (!v183)
    {
      v175 += 56;
      if (v176 + 56 == v174)
      {
        goto LABEL_438;
      }

      continue;
    }

    break;
  }

  *(a1 + 1393) = 0;
  if (qword_1EAFE46D0 != -1)
  {
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
  }

  v184 = off_1EAFE4708;
  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
  {
    v185 = *(a1 + 1136);
    LODWORD(buf.__r_.__value_.__l.__data_) = 134349056;
    *(buf.__r_.__value_.__r.__words + 4) = v185;
    _os_log_impl(&dword_19B873000, v184, OS_LOG_TYPE_DEBUG, "%{public}.1lf,CLMM,ambiguity reverted using route-hints", &buf, 0xCu);
  }

  v186 = sub_19B87DD40();
  if (*(v186 + 160) > 1 || *(v186 + 164) > 1 || *(v186 + 168) > 1 || *(v186 + 152))
  {
    bzero(&buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    v187 = *(a1 + 1136);
    *v345 = 134349056;
    *&v345[4] = v187;
    v188 = _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "%{public}.1lf,CLMM,ambiguity reverted using route-hints", v345, 12);
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::extractSolution()", "CoreLocation: %s\n", v188);
    if (v188 != &buf)
    {
      free(v188);
    }
  }

LABEL_438:
  if (*(a1 + 1848) == 1 && *(a1 + 2233) == 1 && (*(a1 + 1393) & 1) == 0 && *(a1 + 1136) - *(a1 + 3152) < 3.1)
  {
    if (*(a1 + 96) == 1)
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v189 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(buf.__r_.__value_.__l.__data_) = 0;
        _os_log_impl(&dword_19B873000, v189, OS_LOG_TYPE_DEBUG, "CLMM,ambiguous solution hysteresis", &buf, 2u);
      }

      v190 = sub_19B87DD40();
      if (*(v190 + 160) > 1 || *(v190 + 164) > 1 || *(v190 + 168) > 1 || *(v190 + 152))
      {
        bzero(&buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
        }

        *v345 = 0;
        v191 = _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,ambiguous solution hysteresis", v345, 2);
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::extractSolution()", "CoreLocation: %s\n", v191);
        if (v191 != &buf)
        {
          free(v191);
        }
      }
    }

    *(a1 + 1393) = 1;
    *(a1 + 1648) = 1;
    *(a1 + 1672) = 0;
  }

  v192 = *&v340[28];
  *(a1 + 1616) = *&v340[28];
  if (v144 <= 0.0)
  {
    v193 = *(a1 + 1632);
  }

  else
  {
    v193 = v192 / v144;
    *(a1 + 1632) = v193;
    if (v193 > 1000000.0)
    {
      *(a1 + 1632) = 0x412E848000000000;
      v193 = 1000000.0;
    }
  }

  *(a1 + 1408) = 1;
  v194 = *&v340[16];
  *(a1 + 1280) = *&v340[16];
  v195 = *&v340[12];
  *(a1 + 1296) = *&v340[12];
  *(a1 + 1416) = v194;
  *(a1 + 1432) = v195;
  v196 = *v340;
  *(a1 + 1248) = *(*v340 + 20);
  *(a1 + 1400) = *&v340[24];
  *(a1 + 1304) = v13;
  v197 = v193;
  *(a1 + 1308) = v197;
  if (*(v196 + 71) < 0)
  {
    sub_19B874C9C(&buf, *(v196 + 48), *(v196 + 56));
  }

  else
  {
    buf = *(v196 + 48);
  }

  std::string::operator=((a1 + 1256), &buf);
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  *(a1 + 1240) = **v340;
  v198 = *(a1 + 1232);
  v199 = -1.0;
  if (v198 >= 0.0)
  {
    v200 = fmod(v198 - *(a1 + 1296), 360.0);
    if (v200 < 0.0)
    {
      v200 = v200 + 360.0;
    }

    if (v200 > 180.0)
    {
      v200 = v200 + -360.0;
    }

    v199 = fabs(v200);
  }

  *(a1 + 1600) = v199;
  if ((*(a1 + 1357) & 1) == 0 && (*(a1 + 816) & 1) == 0)
  {
    v214 = *(a1 + 824) - *(a1 + 832);
    if (v214 >= 0.0 && v214 < 30.0)
    {
      if (*(a1 + 96) == 1)
      {
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
        }

        v215 = off_1EAFE4708;
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
        {
          v216 = *(a1 + 1648);
          LODWORD(buf.__r_.__value_.__l.__data_) = 67240192;
          HIDWORD(buf.__r_.__value_.__r.__words[0]) = v216;
          _os_log_impl(&dword_19B873000, v215, OS_LOG_TYPE_DEBUG, "CLMM,dismounted recently,doNotSnapCourse,%{public}d", &buf, 8u);
        }

        v217 = sub_19B87DD40();
        if (*(v217 + 160) > 1 || *(v217 + 164) > 1 || *(v217 + 168) > 1 || *(v217 + 152))
        {
          bzero(&buf, 0x65CuLL);
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
          }

          v218 = *(a1 + 1648);
          *v345 = 67240192;
          *&v345[4] = v218;
          v219 = _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,dismounted recently,doNotSnapCourse,%{public}d", v345, 8);
          sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::extractSolution()", "CoreLocation: %s\n", v219);
          if (v219 != &buf)
          {
            free(v219);
          }
        }
      }

      goto LABEL_641;
    }
  }

  sub_19BA0C01C((a1 + 608), *(a1 + 1184), *(a1 + 1192), *(a1 + 2024), *(a1 + 2032), *(a1 + 1200));
  v202 = v201;
  v203 = sub_19B9703C0(a1, 35.0);
  if (*(a1 + 96) == 1)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    v204 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf.__r_.__value_.__l.__data_) = 134349312;
      *(buf.__r_.__value_.__r.__words + 4) = v203;
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2050;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = v202;
      _os_log_impl(&dword_19B873000, v204, OS_LOG_TYPE_DEBUG, "CLMM,distToNextMulti,%{public}.1lf, distFromPriorCrumb,%{public}.1lf", &buf, 0x16u);
    }

    v205 = sub_19B87DD40();
    if (*(v205 + 160) > 1 || *(v205 + 164) > 1 || *(v205 + 168) > 1 || *(v205 + 152))
    {
      bzero(&buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      *v345 = 134349312;
      *&v345[4] = v203;
      *&v345[12] = 2050;
      *&v345[14] = v202;
      v206 = _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,distToNextMulti,%{public}.1lf, distFromPriorCrumb,%{public}.1lf", v345, 22);
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::extractSolution()", "CoreLocation: %s\n", v206);
      if (v206 != &buf)
      {
        free(v206);
      }
    }
  }

  v207 = *(a1 + 1320);
  if (v207 <= 0.0 || v207 >= 45.0 || *(a1 + 1600) <= 30.0)
  {
    if (*(a1 + 776) == 1)
    {
      v209 = *(a1 + 800);
      if (v209 > 0.0 && v209 < 45.0)
      {
        v208 = *(a1 + 792) <= 30.0;
        goto LABEL_493;
      }
    }

    v210 = (a1 + 1648);
    v208 = 1;
  }

  else
  {
    v208 = 0;
LABEL_493:
    v210 = (a1 + 1648);
    if ((*(a1 + 1648) & 1) == 0 && v203 >= 0.0 && v203 < 35.0 && (v208 & 1) == 0)
    {
      *(a1 + 1648) = 1;
      if (*(a1 + 96) != 1)
      {
        goto LABEL_510;
      }

      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v211 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(buf.__r_.__value_.__l.__data_) = 134349056;
        *(buf.__r_.__value_.__r.__words + 4) = v203;
        _os_log_impl(&dword_19B873000, v211, OS_LOG_TYPE_DEBUG, "CLMM,not snapping course,reason,distanceToIntersection,%{public}.1lf", &buf, 0xCu);
      }

      v212 = sub_19B87DD40();
      if (*(v212 + 160) > 1 || *(v212 + 164) > 1 || *(v212 + 168) > 1 || (v208 = *(v212 + 152)) != 0)
      {
        bzero(&buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
        }

        *v345 = 134349056;
        *&v345[4] = v203;
        v213 = _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,not snapping course,reason,distanceToIntersection,%{public}.1lf", v345, 12);
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::extractSolution()", "CoreLocation: %s\n", v213);
        if (v213 != &buf)
        {
          free(v213);
        }

LABEL_510:
        v208 = 0;
      }
    }
  }

  if ((*v210 & 1) == 0 && !(v208 & 1 | ((*(a1 + 1649) & 1) == 0)) && *(v14 + 200) == 1 && *(v14 + 192) == 1)
  {
    sub_19BA0C01C((a1 + 608), *(a1 + 1280), *(a1 + 1288), *(v14 + 51), *(v14 + 52), *(a1 + 1200));
    if (v220 < 35.0)
    {
      *(a1 + 1648) = 1;
      if (*(a1 + 96) == 1)
      {
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
        }

        v221 = off_1EAFE4708;
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
        {
          v222 = *(a1 + 1600);
          LODWORD(buf.__r_.__value_.__l.__data_) = 134349056;
          *(buf.__r_.__value_.__r.__words + 4) = v222;
          _os_log_impl(&dword_19B873000, v221, OS_LOG_TYPE_DEBUG, "CLMM,not snapping course,reason,at intersection,fabsCourseDifference,%{public}.1lf", &buf, 0xCu);
        }

        v223 = sub_19B87DD40();
        if (*(v223 + 160) > 1 || *(v223 + 164) > 1 || *(v223 + 168) > 1 || *(v223 + 152))
        {
          bzero(&buf, 0x65CuLL);
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
          }

          v224 = *(a1 + 1600);
          *v345 = 134349056;
          *&v345[4] = v224;
          v225 = _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,not snapping course,reason,at intersection,fabsCourseDifference,%{public}.1lf", v345, 12);
          sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::extractSolution()", "CoreLocation: %s\n", v225);
          if (v225 != &buf)
          {
            free(v225);
          }
        }
      }
    }
  }

  v226 = *(a1 + 1320);
  if (v226 > 0.0 && v226 < 5.0 && *(a1 + 752) == 1 && *(a1 + 1600) > 45.0)
  {
    *(a1 + 1648) = 1;
    if (*(a1 + 96) == 1)
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v227 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        v228 = *(a1 + 1600);
        LODWORD(buf.__r_.__value_.__l.__data_) = 134349056;
        *(buf.__r_.__value_.__r.__words + 4) = v228;
        _os_log_impl(&dword_19B873000, v227, OS_LOG_TYPE_DEBUG, "CLMM,not snapping course,reason,turning,fabsCourseDifference,%{public}.1lf", &buf, 0xCu);
      }

      v229 = sub_19B87DD40();
      if (*(v229 + 160) > 1 || *(v229 + 164) > 1 || *(v229 + 168) > 1 || *(v229 + 152))
      {
        bzero(&buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
        }

        v230 = *(a1 + 1600);
        *v345 = 134349056;
        *&v345[4] = v230;
        v231 = _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,not snapping course,reason,turning,fabsCourseDifference,%{public}.1lf", v345, 12);
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::extractSolution()", "CoreLocation: %s\n", v231);
        if (v231 != &buf)
        {
          free(v231);
        }
      }
    }
  }

  if (*v210 == 1 && (*(a1 + 1224) < 0.2 || *(a1 + 1356) == 1) && v202 < 2.5 && (*(a1 + 1600) > 135.0 || *(a1 + 776) == 1 && *(a1 + 792) > 30.0))
  {
    *(a1 + 1648) = 0;
    if (*(a1 + 96) == 1)
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v232 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        v233 = *(a1 + 1136);
        v234 = *(a1 + 1600);
        v235 = *(a1 + 792);
        LODWORD(buf.__r_.__value_.__l.__data_) = 134349568;
        *(buf.__r_.__value_.__r.__words + 4) = v233;
        WORD2(buf.__r_.__value_.__r.__words[1]) = 2050;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = v234;
        HIWORD(buf.__r_.__value_.__r.__words[2]) = 2050;
        v351 = v235;
        _os_log_impl(&dword_19B873000, v232, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.1lf,snapping course,reason,gps course not reliable,%{public}.1lf,fabsCourseDiffWithPriorSnap,%{public}.1lf", &buf, 0x20u);
      }

      v236 = sub_19B87DD40();
      if (*(v236 + 160) > 1 || *(v236 + 164) > 1 || *(v236 + 168) > 1 || *(v236 + 152))
      {
        bzero(&buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
        }

        v237 = *(a1 + 1136);
        v238 = *(a1 + 1600);
        v239 = *(a1 + 792);
        *v345 = 134349568;
        *&v345[4] = v237;
        *&v345[12] = 2050;
        *&v345[14] = v238;
        v346 = 2050;
        v347 = v239;
        v240 = _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,%{public}.1lf,snapping course,reason,gps course not reliable,%{public}.1lf,fabsCourseDiffWithPriorSnap,%{public}.1lf", v345, 32);
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::extractSolution()", "CoreLocation: %s\n", v240);
        if (v240 != &buf)
        {
          free(v240);
        }
      }
    }

    if (*(a1 + 1600) > 135.0 && (*(a1 + 776) & 1) == 0)
    {
      if (*(a1 + 96) == 1)
      {
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
        }

        v241 = off_1EAFE4708;
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
        {
          v242 = *(a1 + 1136);
          v243 = *(a1 + 1232);
          v244 = *(a1 + 1296);
          LODWORD(buf.__r_.__value_.__l.__data_) = 134349568;
          *(buf.__r_.__value_.__r.__words + 4) = v242;
          WORD2(buf.__r_.__value_.__r.__words[1]) = 2050;
          *(&buf.__r_.__value_.__r.__words[1] + 6) = v243;
          HIWORD(buf.__r_.__value_.__r.__words[2]) = 2050;
          v351 = v244;
          _os_log_impl(&dword_19B873000, v241, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.1lf,overwriting unreliable GPS course,static case, priorCourse,%{public}.1lf,newCourse,%{public}.1lf", &buf, 0x20u);
        }

        v245 = sub_19B87DD40();
        if (*(v245 + 160) > 1 || *(v245 + 164) > 1 || *(v245 + 168) > 1 || *(v245 + 152))
        {
          bzero(&buf, 0x65CuLL);
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
          }

          v246 = *(a1 + 1136);
          v247 = *(a1 + 1232);
          v248 = *(a1 + 1296);
          *v345 = 134349568;
          *&v345[4] = v246;
          *&v345[12] = 2050;
          *&v345[14] = v247;
          v346 = 2050;
          v347 = v248;
          v249 = _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,%{public}.1lf,overwriting unreliable GPS course,static case, priorCourse,%{public}.1lf,newCourse,%{public}.1lf", v345, 32);
          sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::extractSolution()", "CoreLocation: %s\n", v249);
          if (v249 != &buf)
          {
            free(v249);
          }
        }
      }

      *(a1 + 1232) = *(a1 + 1296);
      *(a1 + 1320) = 0x403DE66666666666;
      *(a1 + 1600) = 0;
    }
  }

  if (*v210 == 1 && *(a1 + 384) == 1 && *(a1 + 1224) < 5.0 && v202 < 5.0 && fabs(*(a1 + 1640)) < 1.4)
  {
    v250 = fmod(*(a1 + 1296) - *(a1 + 288), 360.0);
    if (v250 < 0.0)
    {
      v250 = v250 + 360.0;
    }

    if (v250 > 180.0)
    {
      v250 = v250 + -360.0;
    }

    if (fabs(v250) < 10.0 && (*(a1 + 1600) > 135.0 || *(a1 + 776) == 1 && *(a1 + 792) > 135.0))
    {
      *(a1 + 1648) = 0;
      if (*(a1 + 96) == 1)
      {
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
        }

        v251 = off_1EAFE4708;
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
        {
          v252 = *(a1 + 1136);
          v253 = *(a1 + 1600);
          v254 = *(a1 + 792);
          LODWORD(buf.__r_.__value_.__l.__data_) = 134349568;
          *(buf.__r_.__value_.__r.__words + 4) = v252;
          WORD2(buf.__r_.__value_.__r.__words[1]) = 2050;
          *(&buf.__r_.__value_.__r.__words[1] + 6) = v253;
          HIWORD(buf.__r_.__value_.__r.__words[2]) = 2050;
          v351 = v254;
          _os_log_impl(&dword_19B873000, v251, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.1lf,snapping course, reason,gps course flipping at low speeds,%{public}.1lf,fabsCourseDiffWithPriorSnap,%{public}.1lf", &buf, 0x20u);
        }

        v255 = sub_19B87DD40();
        if (*(v255 + 160) > 1 || *(v255 + 164) > 1 || *(v255 + 168) > 1 || *(v255 + 152))
        {
          bzero(&buf, 0x65CuLL);
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
          }

          v256 = *(a1 + 1136);
          v257 = *(a1 + 1600);
          v258 = *(a1 + 792);
          *v345 = 134349568;
          *&v345[4] = v256;
          *&v345[12] = 2050;
          *&v345[14] = v257;
          v346 = 2050;
          v347 = v258;
          v259 = _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,%{public}.1lf,snapping course, reason,gps course flipping at low speeds,%{public}.1lf,fabsCourseDiffWithPriorSnap,%{public}.1lf", v345, 32);
          sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::extractSolution()", "CoreLocation: %s\n", v259);
          if (v259 != &buf)
          {
            free(v259);
          }
        }
      }

      if (*(a1 + 1600) > 135.0 && (*(a1 + 776) & 1) == 0)
      {
        if (*(a1 + 96) == 1)
        {
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
          }

          v260 = off_1EAFE4708;
          if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
          {
            v261 = *(a1 + 1136);
            v262 = *(a1 + 1232);
            v263 = *(a1 + 1296);
            LODWORD(buf.__r_.__value_.__l.__data_) = 134349568;
            *(buf.__r_.__value_.__r.__words + 4) = v261;
            WORD2(buf.__r_.__value_.__r.__words[1]) = 2050;
            *(&buf.__r_.__value_.__r.__words[1] + 6) = v262;
            HIWORD(buf.__r_.__value_.__r.__words[2]) = 2050;
            v351 = v263;
            _os_log_impl(&dword_19B873000, v260, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.1lf,overwriting unreliable GPS course,low speed case,priorCourse,%{public}.1lf,newCourse,%{public}.1lf", &buf, 0x20u);
          }

          v264 = sub_19B87DD40();
          if (*(v264 + 160) > 1 || *(v264 + 164) > 1 || *(v264 + 168) > 1 || *(v264 + 152))
          {
            bzero(&buf, 0x65CuLL);
            if (qword_1EAFE46D0 != -1)
            {
              dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
            }

            v265 = *(a1 + 1136);
            v266 = *(a1 + 1232);
            v267 = *(a1 + 1296);
            *v345 = 134349568;
            *&v345[4] = v265;
            *&v345[12] = 2050;
            *&v345[14] = v266;
            v346 = 2050;
            v347 = v267;
            v268 = _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,%{public}.1lf,overwriting unreliable GPS course,low speed case,priorCourse,%{public}.1lf,newCourse,%{public}.1lf", v345, 32);
            sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::extractSolution()", "CoreLocation: %s\n", v268);
            if (v268 != &buf)
            {
              free(v268);
            }
          }
        }

        *(a1 + 1232) = *(a1 + 1296);
        *(a1 + 1320) = 0x403DE66666666666;
        *(a1 + 1600) = 0;
      }
    }
  }

LABEL_641:
  if (*(a1 + 1648) == 1)
  {
    *(a1 + 1296) = *(a1 + 1232);
  }

  v269 = *(a1 + 1393);
  memset(&buf, 0, sizeof(buf));
  v351 = 1.0;
  memset(v352, 0, sizeof(v352));
  sub_19B940928(a1, a1 + 656, v274, v275, (a1 + 1576), (a1 + 1584), (a1 + 1568), &buf, v269);
  v270 = buf.__r_.__value_.__r.__words[0];
  v271 = buf.__r_.__value_.__r.__words[2];
  *(a1 + 1072) = buf.__r_.__value_.__r.__words[0];
  *(a1 + 1088) = v271;
  *(a1 + 1592) = *&v352[24];
  *(a1 + 1616) = v270;
  *(a1 + 1360) = v271;
  if (__src)
  {
    v343 = __src;
    operator delete(__src);
  }

  if (*&v340[4])
  {
    sub_19B8750F8(*&v340[4]);
  }

  if (v332)
  {
    operator delete(v332);
  }

  v22 = 1;
LABEL_67:
  if (*(&v324 + 1))
  {
    sub_19B8750F8(*(&v324 + 1));
  }

  if (*(&v322 + 1))
  {
    sub_19B8750F8(*(&v322 + 1));
  }

  if (SHIBYTE(v302) < 0)
  {
    operator delete(__p[1]);
  }

  if (v291[0])
  {
    operator delete(v291[0]);
  }

  if (*(&v283 + 1))
  {
    sub_19B8750F8(*(&v283 + 1));
  }

  return v22;
}

void sub_19B977D70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  sub_19B966FCC(&STACK[0x3E0]);
  sub_19B96FC24(va);
  _Unwind_Resume(a1);
}

void sub_19B977E84(_BYTE *a1, void *a2, void *a3, float *a4, void *a5, void *a6, unsigned __int8 *a7, void *a8, unsigned __int8 *a9, unsigned __int8 *a10, unsigned __int8 *a11)
{
  if (*a1 == 1)
  {
    sub_19B8759E8(&v24, "CLMM,Time,%{public}.1lf,snapCourse,%{public}.2lf,outgoingSnapCourse,%{public}.2lf, crumbCourse,%{public}.2lf, outgoingDistanceFromIntersection,%{public}.2lf,outgoingCondition,%{public}d,crumbCourseUnc,%{public}.2lf,significantCourseChange,%{public}d,isCourseAligned,%{public}d, isMeanCandidateAlignedWithCourse,%{public}d");
    sub_19B98A2F4(&v24);
    bzero(a1 + 56, 0x800uLL);
    if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      snprintf(a1 + 56, 0x800uLL, &v24, *a2, *a3, *a4, *a5, *a6, *a7, *a8, *a9, *a10, *a11);
    }

    else
    {
      snprintf(a1 + 56, 0x800uLL, v24.__r_.__value_.__l.__data_, *a2, *a3, *a4, *a5, *a6, *a7, *a8, *a9, *a10, *a11);
    }

    Current = CFAbsoluteTimeGetCurrent();
    sub_19B8759E8(__p, a1 + 56);
    sub_19B8E3D48(a1, __p, Current, v20, v21);
    if (v23 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }
  }
}

void sub_19B977FE0(_BYTE *a1, void *a2, void *a3, void *a4)
{
  if (*a1 == 1)
  {
    sub_19B8759E8(&v13, "CLMM,%{public}.1lf,Using outgoing,incomingID,%{private}lld,outgoingID,%{private}lld");
    sub_19B98A2F4(&v13);
    bzero(a1 + 56, 0x800uLL);
    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      snprintf(a1 + 56, 0x800uLL, &v13, *a2, *a3, *a4);
    }

    else
    {
      snprintf(a1 + 56, 0x800uLL, v13.__r_.__value_.__l.__data_, *a2, *a3, *a4);
    }

    Current = CFAbsoluteTimeGetCurrent();
    sub_19B8759E8(__p, a1 + 56);
    sub_19B8E3D48(a1, __p, Current, v9, v10);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v13.__r_.__value_.__l.__data_);
    }
  }
}

void sub_19B9780D8(_BYTE *a1, void *a2, void *a3, void *a4)
{
  if (*a1 == 1)
  {
    sub_19B8759E8(&v13, "CLMM,%{public}.1lf,Using particle on outgoing,incomingID,%{private}lld,outgoingID,%{private}lld");
    sub_19B98A2F4(&v13);
    bzero(a1 + 56, 0x800uLL);
    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      snprintf(a1 + 56, 0x800uLL, &v13, *a2, *a3, *a4);
    }

    else
    {
      snprintf(a1 + 56, 0x800uLL, v13.__r_.__value_.__l.__data_, *a2, *a3, *a4);
    }

    Current = CFAbsoluteTimeGetCurrent();
    sub_19B8759E8(__p, a1 + 56);
    sub_19B8E3D48(a1, __p, Current, v9, v10);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v13.__r_.__value_.__l.__data_);
    }
  }
}

void sub_19B9781D0(uint64_t a1)
{
  *&v65[803] = *MEMORY[0x1E69E9840];
  if (*(a1 + 872) == *(a1 + 864))
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    v21 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      v22 = *(a1 + 1136);
      *buf = 134349056;
      v61 = v22;
      _os_log_impl(&dword_19B873000, v21, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.1lf,roadWithAdustment,number of particles are 0", buf, 0xCu);
    }

    v23 = sub_19B87DD40();
    if (*(v23 + 160) > 1 || *(v23 + 164) > 1 || *(v23 + 168) > 1 || *(v23 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v24 = *(a1 + 1136);
      v54 = 134349056;
      v55 = v24;
      v25 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,%{public}.1lf,roadWithAdustment,number of particles are 0", &v54, 12);
      goto LABEL_55;
    }

    return;
  }

  *(a1 + 1440) = 0u;
  if (*(a1 + 1008))
  {
    if (!*(a1 + 1016))
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v31 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
      {
        v32 = *(a1 + 1136);
        *buf = 134349056;
        v61 = v32;
        _os_log_impl(&dword_19B873000, v31, OS_LOG_TYPE_ERROR, "CLMM,%{public}.1lf,roadWithAdustment,road is nullptr", buf, 0xCu);
      }

      v33 = sub_19B87DD40();
      if ((*(v33 + 160) & 0x80000000) == 0 || (*(v33 + 164) & 0x80000000) == 0 || (*(v33 + 168) & 0x80000000) == 0 || *(v33 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
        }

        v34 = *(a1 + 1136);
        v54 = 134349056;
        v55 = v34;
        v30 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMM,%{public}.1lf,roadWithAdustment,road is nullptr", &v54, 12);
        sub_19B885924("Generic", 1, 0, 0, "void CLParticleMapMatcher::adjustSolutionforRoadWidth()", "CoreLocation: %s\n");
        goto LABEL_56;
      }

      return;
    }

    v52 = 0;
    v53 = 0.0;
    sub_19BA0C3BC((a1 + 608), &v53, &v52, *(a1 + 1416), *(a1 + 1424), *(a1 + 1200), *(a1 + 1432), *(a1 + 1184), *(a1 + 1192));
    v2 = *(a1 + 1016);
    if (!v2)
    {
      return;
    }

    v3 = *(v2 + 20);
    if (v3 == 9 || ((v4 = *(v2 + 72), v4 != 255) ? (v5 = v4 == 6) : (v5 = 1), v5))
    {
      v6 = *(v2 + 16) ? 5.55000007 : 7.4000001;
    }

    else
    {
      v6 = *(v2 + 96);
      if (v6 < 0.000001)
      {
        if ((v3 & 0xFFFFFFFE) == 8)
        {
          v37 = 7.4;
          if (*(v2 + 16))
          {
            v37 = 5.55;
          }
        }

        else
        {
          v37 = sub_19B988DA8(v3, *(v2 + 16));
        }

        v6 = v37;
      }
    }

    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    v7 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      v8 = *(a1 + 1136);
      v9 = *(a1 + 1016);
      v10 = *(v9 + 20);
      LODWORD(v9) = *(v9 + 16);
      *buf = 134350080;
      v61 = v8;
      v62 = 1026;
      *v63 = v10;
      *&v63[4] = 1026;
      *&v63[6] = v9;
      *v64 = 2050;
      *&v64[2] = v6;
      v65[0] = 2050;
      *&v65[1] = v53;
      _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.1lf,frc,%{public}d,oneway,%{public}d,roadWidth,%{public}.1lf,acrossTrack,%{public}.3lf", buf, 0x2Cu);
    }

    v11 = sub_19B87DD40();
    if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v12 = *(a1 + 1136);
      v13 = *(a1 + 1016);
      v14 = *(v13 + 20);
      LODWORD(v13) = *(v13 + 16);
      v54 = 134350080;
      v55 = v12;
      v56 = 1026;
      *v57 = v14;
      *&v57[4] = 1026;
      *&v57[6] = v13;
      *v58 = 2050;
      *&v58[2] = v6;
      *v59 = 2050;
      *&v59[2] = v53;
      v15 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,%{public}.1lf,frc,%{public}d,oneway,%{public}d,roadWidth,%{public}.1lf,acrossTrack,%{public}.3lf", &v54, 44);
      sub_19B885924("Generic", 1, 0, 2, "void CLParticleMapMatcher::adjustSolutionforRoadWidth()", "CoreLocation: %s\n", v15);
      if (v15 != buf)
      {
        free(v15);
      }
    }

    if (v6 < 0.000001)
    {
      return;
    }

    *(a1 + 1552) = v6;
    v16 = *(a1 + 1280);
    v50 = *(a1 + 1288);
    v51 = v16;
    v17 = *(a1 + 768);
    v18 = *(a1 + 1136);
    if (v17 <= 0.0 || vabdd_f64(v18, v17) > 120.0)
    {
      *(a1 + 760) = sub_19B96CF60(*(a1 + 1184), *(a1 + 1192));
      *(a1 + 768) = v18;
    }

    v19 = v6 * 0.5;
    if (*(*(a1 + 1016) + 16))
    {
LABEL_31:
      v20 = fabs(v53);
      if (v20 < v19)
      {
LABEL_32:
        *(a1 + 1280) = *(a1 + 1184);
        return;
      }

      v38 = v19 + -1.85000002;
      if (v19 <= 1.85000002)
      {
        v38 = v19 * 0.85;
      }

      v39 = v20 - v38;
      if (v53 >= 0.0)
      {
        v36 = -v39;
      }

      else
      {
        v36 = v39;
      }

LABEL_83:
      sub_19BA0C0F8((a1 + 608), &v51, &v50, *(a1 + 1184), *(a1 + 1192), *(a1 + 1200), *(a1 + 1432), v36);
      *(a1 + 1568) = v36;
      *(a1 + 1408) = 2;
      v41 = v50;
      v40 = v51;
      *(a1 + 1280) = v51;
      *(a1 + 1288) = v41;
      *(a1 + 1440) = v40;
      *(a1 + 1448) = v41;
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v42 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        v43 = *(a1 + 1136);
        *buf = 134349824;
        v61 = v43;
        v62 = 2050;
        *v63 = v53;
        *&v63[8] = 2050;
        *v64 = v36;
        *&v64[8] = 2050;
        *v65 = v19;
        _os_log_impl(&dword_19B873000, v42, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.1lf,roadWidthCorrection,acrossTrack,%{public}.2lf,correction,%{public}.2lf,halfRoadWidth,%{public}.2lf", buf, 0x2Au);
      }

      v44 = sub_19B87DD40();
      if (*(v44 + 160) > 1 || *(v44 + 164) > 1 || *(v44 + 168) > 1 || *(v44 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
        }

        v45 = *(a1 + 1136);
        v54 = 134349824;
        v55 = v45;
        v56 = 2050;
        *v57 = v53;
        *&v57[8] = 2050;
        *v58 = v36;
        *&v58[8] = 2050;
        *v59 = v19;
        v25 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,%{public}.1lf,roadWidthCorrection,acrossTrack,%{public}.2lf,correction,%{public}.2lf,halfRoadWidth,%{public}.2lf", &v54, 42);
LABEL_55:
        v30 = v25;
        sub_19B885924("Generic", 1, 0, 2, "void CLParticleMapMatcher::adjustSolutionforRoadWidth()", "CoreLocation: %s\n");
LABEL_56:
        if (v30 != buf)
        {
          free(v30);
        }

        return;
      }

      return;
    }

    v35 = *(a1 + 760);
    v36 = 0.0;
    if (v35 == 2)
    {
      if (v53 > 0.0 && v53 < v19)
      {
        goto LABEL_32;
      }

      if (v53 <= 0.0)
      {
        if (v53 < 0.0)
        {
          v36 = fabs(v53) + 1.85000002;
        }

        goto LABEL_83;
      }

      v48 = v19 + -1.85000002;
      if (v19 <= 1.85000002)
      {
        v48 = v19 * 0.85;
      }

      v49 = v53 - v48;
    }

    else
    {
      if (v35 != 1)
      {
        if (v35)
        {
          goto LABEL_83;
        }

        goto LABEL_31;
      }

      if (v53 < 0.0)
      {
        v46 = fabs(v53);
        if (v46 < v19)
        {
          goto LABEL_32;
        }

        v47 = v19 + -1.85000002;
        if (v19 <= 1.85000002)
        {
          v47 = v19 * 0.85;
        }

        v36 = v46 - v47;
        goto LABEL_83;
      }

      if (v53 <= 0.0)
      {
        goto LABEL_83;
      }

      v49 = v53 + 1.85000002;
    }

    v36 = -v49;
    goto LABEL_83;
  }

  if (qword_1EAFE46D0 != -1)
  {
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
  }

  v26 = off_1EAFE4708;
  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
  {
    v27 = *(a1 + 1136);
    *buf = 134349056;
    v61 = v27;
    _os_log_impl(&dword_19B873000, v26, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.1lf,roadWithAdustment,snap invalid or frc = 9", buf, 0xCu);
  }

  v28 = sub_19B87DD40();
  if (*(v28 + 160) > 1 || *(v28 + 164) > 1 || *(v28 + 168) > 1 || *(v28 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    v29 = *(a1 + 1136);
    v54 = 134349056;
    v55 = v29;
    v25 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,%{public}.1lf,roadWithAdustment,snap invalid or frc = 9", &v54, 12);
    goto LABEL_55;
  }
}

void sub_19B978C00(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  if (*(a1 + 872) == *(a1 + 864) || *(a1 + 1392) != 1)
  {
    return;
  }

  if (*(a1 + 96) == 1)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    v2 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v2, OS_LOG_TYPE_DEBUG, "CLMM,performPartialMatching", buf, 2u);
    }

    v3 = sub_19B87DD40();
    if (*(v3 + 160) > 1 || *(v3 + 164) > 1 || *(v3 + 168) > 1 || *(v3 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      LOWORD(v22[0]) = 0;
      v4 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,performPartialMatching", v22, 2);
      sub_19B885924("Generic", 1, 0, 2, "void CLParticleMapMatcher::performPartialMatching()", "CoreLocation: %s\n", v4);
      if (v4 != buf)
      {
        free(v4);
      }
    }
  }

  v5 = *(a1 + 1280);
  v6 = *(a1 + 1288);
  if (*(a1 + 1490) == 1 && *(a1 + 1528) == 1)
  {
    *(a1 + 1456) = v5;
    *(a1 + 1464) = v6;
    *(a1 + 2972) = 0;
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    v7 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEBUG, "CLMM,skipping partial match as solution is inside tunnel", buf, 2u);
    }

    v8 = sub_19B87DD40();
    if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      LOWORD(v22[0]) = 0;
      v9 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,skipping partial match as solution is inside tunnel", v22, 2);
      sub_19B885924("Generic", 1, 0, 2, "void CLParticleMapMatcher::performPartialMatching()", "CoreLocation: %s\n", v9);
      if (v9 != buf)
      {
        free(v9);
      }
    }

    return;
  }

  if (*(a1 + 2200) < 4.0)
  {
    *(a1 + 2972) = 0;
  }

  v10 = *(a1 + 1600);
  v11 = *(a1 + 1360);
  if (v10 >= 0.0 && v10 < 25.0)
  {
    v14 = *(a1 + 2972);
    if (v11 > 10.0)
    {
LABEL_39:
      v13 = v14 + 2;
      goto LABEL_47;
    }

LABEL_44:
    if (v14 <= 0)
    {
      v13 = 0;
    }

    else
    {
      v13 = v14 - 1;
    }

    goto LABEL_47;
  }

  if (v11 <= 6.0)
  {
    if (v10 > 45.0)
    {
      if (v11 <= 8.0)
      {
        v21 = *(a1 + 2972);
        if (v11 <= 10.0)
        {
          v13 = v21 + 4;
        }

        else
        {
          v13 = v21 + 3;
        }

        goto LABEL_47;
      }

      v14 = *(a1 + 2972);
      goto LABEL_39;
    }

    v14 = *(a1 + 2972);
    goto LABEL_44;
  }

  v13 = *(a1 + 2972) + 1;
LABEL_47:
  *(a1 + 2972) = v13;
  if (v13 >= 1)
  {
    if (v13 >= 0x1F)
    {
      v13 = 30;
      *(a1 + 2972) = 30;
    }

    v15 = v13 / 40.0;
    v5 = *(a1 + 1184) * v15 + (1.0 - v15) * v5;
    v6 = v15 * *(a1 + 1192) + (1.0 - v15) * v6;
    if (v10 >= 0.0 && v10 > 20.0)
    {
      *(a1 + 1296) = *(a1 + 1232);
    }

    *(a1 + 1408) = 3;
    *(a1 + 1280) = v5;
    *(a1 + 1288) = v6;
    if (*(a1 + 96) == 1)
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v16 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        v17 = *(a1 + 2972);
        *buf = 67240704;
        v28 = v17;
        v29 = 2050;
        v30 = v15;
        v31 = 2050;
        v32 = 1.0 - v15;
        _os_log_impl(&dword_19B873000, v16, OS_LOG_TYPE_DEBUG, "CLMM,partial snapping,poorVarFactorCount,%{public}d,weightGPS,%{public}.2lf,weightSnap,%{public}.2lf", buf, 0x1Cu);
      }

      v18 = sub_19B87DD40();
      if (*(v18 + 160) > 1 || *(v18 + 164) > 1 || *(v18 + 168) > 1 || *(v18 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
        }

        v19 = *(a1 + 2972);
        v22[0] = 67240704;
        v22[1] = v19;
        v23 = 2050;
        v24 = v15;
        v25 = 2050;
        v26 = 1.0 - v15;
        v20 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,partial snapping,poorVarFactorCount,%{public}d,weightGPS,%{public}.2lf,weightSnap,%{public}.2lf", v22, 28);
        sub_19B885924("Generic", 1, 0, 2, "void CLParticleMapMatcher::performPartialMatching()", "CoreLocation: %s\n", v20);
        if (v20 != buf)
        {
          free(v20);
        }
      }
    }
  }

  *(a1 + 1456) = v5;
  *(a1 + 1464) = v6;
}

uint64_t sub_19B979230(uint64_t a1, double *a2, double *a3, _BYTE *a4)
{
  v57 = *MEMORY[0x1E69E9840];
  *a4 = 1;
  v9 = *(a1 + 8);
  v8 = *(a1 + 16);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v52 = &v52;
  v53 = &v52;
  v54 = 0;
  v10 = *(a1 + 1208);
  *&v45[16] = *(a1 + 1192);
  v46 = v10;
  v11 = *(a1 + 1240);
  v47 = *(a1 + 1224);
  v48 = v11;
  v12 = *(a1 + 1144);
  v44[0] = *(a1 + 1128);
  v44[1] = v12;
  v13 = *(a1 + 1176);
  v44[2] = *(a1 + 1160);
  *v45 = v13;
  if (*(a1 + 1279) < 0)
  {
    sub_19B874C9C(&v49, *(a1 + 1256), *(a1 + 1264));
  }

  else
  {
    v49 = *(a1 + 1256);
    v50 = *(a1 + 1272);
  }

  memcpy(v51, (a1 + 1280), sizeof(v51));
  *&v45[8] = *&v51[17];
  *(&v47 + 1) = v51[19];
  if ((*(*v9 + 64))(v9, &v52, v44, 1, *a2))
  {
    if (v54)
    {
      v14 = v53;
      if (v53 != &v52)
      {
        v15 = 1;
        while (1)
        {
          v16 = v14[2];
          if ((*(v16 + 17) & 1) == 0)
          {
            break;
          }

LABEL_43:
          v14 = v14[1];
          if (v14 == &v52)
          {
            if (v15)
            {
              goto LABEL_81;
            }

            *a4 = 0;
            v27 = 1;
LABEL_97:
            v39 = 1;
            goto LABEL_98;
          }
        }

        v17 = v14[3];
        if (v17)
        {
          atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v18 = *(a1 + 1016);
        if (*v18 == *v16)
        {
          goto LABEL_38;
        }

        v19 = *(v14 + 10);
        if (*(v18 + 71) < 0)
        {
          sub_19B874C9C(buf, *(v18 + 48), *(v18 + 56));
        }

        else
        {
          *buf = *(v18 + 48);
          v56 = *(v18 + 64);
        }

        if (*(v16 + 71) < 0)
        {
          sub_19B874C9C(__p, *(v16 + 48), *(v16 + 56));
        }

        else
        {
          *__p = *(v16 + 48);
          v43 = *(v16 + 64);
        }

        v20 = HIBYTE(v56);
        if (v56 >= 0)
        {
          v21 = HIBYTE(v56);
        }

        else
        {
          v21 = *&buf[8];
        }

        v22 = HIBYTE(v43);
        v23 = SHIBYTE(v43);
        if (v43 < 0)
        {
          v22 = __p[1];
        }

        if (v21 == v22)
        {
          if (v56 >= 0)
          {
            v24 = buf;
          }

          else
          {
            v24 = *buf;
          }

          if (v43 >= 0)
          {
            v25 = __p;
          }

          else
          {
            v25 = __p[0];
          }

          v26 = memcmp(v24, v25, v21) == 0;
          if ((v23 & 0x80000000) == 0)
          {
LABEL_36:
            if (v20 < 0)
            {
              operator delete(*buf);
              if (v26)
              {
                goto LABEL_38;
              }
            }

            else if (v26)
            {
LABEL_38:
              v27 = 0;
              v28 = 16;
LABEL_39:
              if (v17)
              {
                sub_19B8750F8(v17);
              }

              if ((v28 | 0x10) != 0x10)
              {
                goto LABEL_97;
              }

              v15 = 0;
              goto LABEL_43;
            }

            v29 = fmod(*(a1 + 1432) - v19, 360.0);
            if (v29 < 0.0)
            {
              v29 = v29 + 360.0;
            }

            if (v29 > 180.0)
            {
              v29 = v29 + -360.0;
            }

            v27 = 1;
            if (fabs(v29) >= *a3)
            {
              v28 = 0;
            }

            else
            {
              *a4 = 1;
              v28 = 1;
              v27 = 0;
            }

            goto LABEL_39;
          }
        }

        else
        {
          v26 = 0;
          if ((SHIBYTE(v43) & 0x80000000) == 0)
          {
            goto LABEL_36;
          }
        }

        operator delete(__p[0]);
        v20 = HIBYTE(v56);
        goto LABEL_36;
      }

LABEL_81:
      if (*(a1 + 96) == 1)
      {
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
        }

        v37 = off_1EAFE4708;
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_19B873000, v37, OS_LOG_TYPE_INFO, "CLMM,Unexpected roadsWithinDistance returned only railways", buf, 2u);
        }

        v38 = sub_19B87DD40();
        if (*(v38 + 160) <= 1 && *(v38 + 164) <= 1 && *(v38 + 168) <= 1)
        {
          v39 = *(v38 + 152);
          if (!*(v38 + 152))
          {
            v27 = 0;
            goto LABEL_98;
          }
        }

        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
        }

        LOWORD(__p[0]) = 0;
        v40 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 1, "CLMM,Unexpected roadsWithinDistance returned only railways", __p, 2);
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::assessParallelRoadsWithinDist(const double &, const double &, BOOL &)", "CoreLocation: %s\n", v40);
        if (v40 != buf)
        {
          free(v40);
        }
      }

      v27 = 0;
      v39 = 0;
LABEL_98:
      v33 = v27 | v39;
    }

    else
    {
      if (*(a1 + 96) == 1)
      {
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
        }

        v34 = off_1EAFE4708;
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_19B873000, v34, OS_LOG_TYPE_ERROR, "CLMM,Unexpected roadsWithinDistance returned empty list", buf, 2u);
        }

        v35 = sub_19B87DD40();
        if ((*(v35 + 160) & 0x80000000) == 0 || (*(v35 + 164) & 0x80000000) == 0 || (*(v35 + 168) & 0x80000000) == 0 || *(v35 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
          }

          LOWORD(__p[0]) = 0;
          v36 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMM,Unexpected roadsWithinDistance returned empty list", __p, 2);
          sub_19B885924("Generic", 1, 0, 0, "BOOL CLParticleMapMatcher::assessParallelRoadsWithinDist(const double &, const double &, BOOL &)", "CoreLocation: %s\n", v36);
          if (v36 != buf)
          {
            free(v36);
          }
        }
      }

      v33 = 0;
    }
  }

  else
  {
    if (*(a1 + 96) == 1)
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v30 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v30, OS_LOG_TYPE_DEBUG, "CLMM,roadsWithinDistance returned false", buf, 2u);
      }

      v31 = sub_19B87DD40();
      if (*(v31 + 160) > 1 || *(v31 + 164) > 1 || *(v31 + 168) > 1 || *(v31 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
        }

        LOWORD(__p[0]) = 0;
        v32 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,roadsWithinDistance returned false", __p, 2);
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::assessParallelRoadsWithinDist(const double &, const double &, BOOL &)", "CoreLocation: %s\n", v32);
        if (v32 != buf)
        {
          free(v32);
        }
      }
    }

    v33 = 0;
    ++*(a1 + 108);
  }

  if (SHIBYTE(v50) < 0)
  {
    operator delete(v49);
  }

  sub_19B916DC0(&v52);
  if (v8)
  {
    sub_19B8750F8(v8);
  }

  return v33;
}

void sub_19B9799E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a36 < 0)
  {
    operator delete(__p);
  }

  sub_19B916DC0(&a65);
  if (v65)
  {
    sub_19B8750F8(v65);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_19B979A54(uint64_t a1)
{
  v105 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 872);
  v3 = *(a1 + 864);
  if (v2 != v3 && (*(a1 + 652) & 1) != 0)
  {
    return 1;
  }

  if (*(a1 + 96) == 1)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    v5 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEBUG, "CLMM,prepareSeeding", &buf, 2u);
    }

    v6 = sub_19B87DD40();
    if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
    {
      bzero(&buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      LOWORD(v88) = 0;
      v7 = _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,prepareSeeding", &v88, 2);
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::prepareSeeding()", "CoreLocation: %s\n", v7);
      if (v7 != &buf)
      {
        free(v7);
      }
    }
  }

  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = *(a1 + 1208);
  v11 = *(a1 + 1328);
  if (v11 > 0.0)
  {
    v12 = *(a1 + 1336);
    if (v12 > 0.0)
    {
      v10 = sqrt(v12 / 2.45 * (v12 / 2.45) + v11 / 2.45 * (v11 / 2.45));
    }
  }

  v13 = v10 * 4.0;
  v14 = 75.0;
  if (v13 >= 75.0)
  {
    v14 = v13;
    if (v13 > 249.9999)
    {
      v14 = 249.9999;
    }
  }

  if (v2 != v3 && *(a1 + 1008) == 1)
  {
    v15 = *(a1 + 1184);
    if (v15 == 0.0 && *(a1 + 1192) == 0.0)
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v16 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_19B873000, v16, OS_LOG_TYPE_ERROR, "CLMM,Unexpected crumb lat==lon==0", &buf, 2u);
      }

      v17 = sub_19B87DD40();
      if ((*(v17 + 160) & 0x80000000) == 0 || (*(v17 + 164) & 0x80000000) == 0 || (*(v17 + 168) & 0x80000000) == 0 || *(v17 + 152))
      {
        bzero(&buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
        }

        LOWORD(v88) = 0;
        v18 = _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMM,Unexpected crumb lat==lon==0", &v88, 2);
        sub_19B885924("Generic", 1, 0, 0, "BOOL CLParticleMapMatcher::prepareSeeding()", "CoreLocation: %s\n", v18);
LABEL_51:
        if (v18 != &buf)
        {
          free(v18);
        }

        goto LABEL_53;
      }

      goto LABEL_53;
    }

    v19 = *(a1 + 1280);
    v20 = *(a1 + 1288);
    if (v19 == 0.0 && v20 == 0.0)
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v21 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_19B873000, v21, OS_LOG_TYPE_ERROR, "CLMM,Unexpected crumb snapLat==snapLon==0", &buf, 2u);
      }

      v22 = sub_19B87DD40();
      if ((*(v22 + 160) & 0x80000000) == 0 || (*(v22 + 164) & 0x80000000) == 0 || (*(v22 + 168) & 0x80000000) == 0 || *(v22 + 152))
      {
        bzero(&buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
        }

        LOWORD(v88) = 0;
        v18 = _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMM,Unexpected crumb snapLat==snapLon==0", &v88, 2);
        sub_19B885924("Generic", 1, 0, 0, "BOOL CLParticleMapMatcher::prepareSeeding()", "CoreLocation: %s\n", v18);
        goto LABEL_51;
      }

LABEL_53:
      v4 = 0;
      ++*(a1 + 104);
      if (v9)
      {
        goto LABEL_198;
      }

      return v4;
    }

    sub_19BA0C01C((a1 + 608), v15, *(a1 + 1192), v19, v20, *(a1 + 1200));
    if (v14 < v23)
    {
      v14 = v23 + 10.0;
    }
  }

  v24 = 1249.9995;
  if (v14 <= 1249.9995)
  {
    v24 = v14;
  }

  else
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    v25 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 134349056;
      *(&buf + 4) = v14;
      _os_log_impl(&dword_19B873000, v25, OS_LOG_TYPE_ERROR, "CLMM,Unexpected maxDistance,%{public}.1lf", &buf, 0xCu);
    }

    v26 = sub_19B87DD40();
    if ((*(v26 + 160) & 0x80000000) == 0 || (*(v26 + 164) & 0x80000000) == 0 || (*(v26 + 168) & 0x80000000) == 0 || *(v26 + 152))
    {
      bzero(&buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      LODWORD(v88) = 134349056;
      *(&v88 + 4) = v14;
      v27 = _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMM,Unexpected maxDistance,%{public}.1lf", &v88, 12);
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLParticleMapMatcher::prepareSeeding()", "CoreLocation: %s\n", v27);
      if (v27 != &buf)
      {
        free(v27);
      }
    }
  }

  v8[9] = 0;
  v83 = &v83;
  v84 = &v83;
  v85 = 0;
  if (((*(*v8 + 64))(v8, &v83, a1 + 1128, 1, v24) & 1) == 0)
  {
    if (*(a1 + 96) == 1)
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v31 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_19B873000, v31, OS_LOG_TYPE_DEBUG, "CLMM,roadsWithinDistance returned false", &buf, 2u);
      }

      v32 = sub_19B87DD40();
      if (*(v32 + 160) > 1 || *(v32 + 164) > 1 || *(v32 + 168) > 1 || *(v32 + 152))
      {
        bzero(&buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
        }

        LOWORD(v88) = 0;
        v33 = _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,roadsWithinDistance returned false", &v88, 2);
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::prepareSeeding()", "CoreLocation: %s\n", v33);
        if (v33 != &buf)
        {
          free(v33);
        }
      }
    }

    v4 = 0;
    ++*(a1 + 108);
    goto LABEL_197;
  }

  if (!v85)
  {
    v4 = 0;
    ++*(a1 + 104);
    goto LABEL_197;
  }

  v28 = (a1 + 888);
  v29 = *(a1 + 896);
  v30 = *(a1 + 888);
  while (v29 != v30)
  {
    v29 -= 14;
    sub_19B988BB4(v29);
  }

  *(a1 + 896) = v30;
  sub_19B973FA0((a1 + 888), 0x60uLL);
  v72 = v3;
  v73 = v9;
  *(a1 + 968) = *(a1 + 960);
  sub_19B97AB8C((a1 + 960), 0x60uLL);
  v88 = 0uLL;
  LODWORD(v89) = 0;
  WORD2(v89) = 1;
  DWORD2(v89) = 0;
  v93 = 0;
  v94 = 0;
  v92 = 0;
  v90 = 0u;
  memset(v91, 0, sizeof(v91));
  v34 = v84;
  if (v84 != &v83)
  {
    v35 = 0.0;
    v36 = 0.0;
    v37 = 0.0;
    while (1)
    {
      if (*(v34[2] + 17) == 1 && *(a1 + 96) == 1)
      {
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
        }

        v38 = off_1EAFE4708;
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_19B873000, v38, OS_LOG_TYPE_DEBUG, "CLMM,including railway", &buf, 2u);
        }

        v39 = sub_19B87DD40();
        if (*(v39 + 160) > 1 || *(v39 + 164) > 1 || *(v39 + 168) > 1 || *(v39 + 152))
        {
          bzero(&buf, 0x65CuLL);
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
          }

          LOWORD(__dst[0]) = 0;
          v40 = _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,including railway", __dst, 2);
          sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::prepareSeeding()", "CoreLocation: %s\n", v40);
          if (v40 != &buf)
          {
            free(v40);
          }
        }
      }

      LODWORD(v77) = 0;
      __dst[0] = 0;
      __dst[1] = 0;
      WORD2(v77) = 1;
      DWORD2(v77) = 0;
      v81 = 0;
      v82 = 0;
      __p = 0;
      v78 = 0u;
      memset(v79, 0, 33);
      v42 = v34[2];
      v41 = v34[3];
      if (v41)
      {
        atomic_fetch_add_explicit(v41 + 1, 1uLL, memory_order_relaxed);
        v43 = __dst[1];
        __dst[0] = v42;
        __dst[1] = v41;
        if (v43)
        {
          sub_19B8750F8(v43);
          v42 = __dst[0];
        }
      }

      else
      {
        __dst[0] = v34[2];
        __dst[1] = 0;
      }

      v44 = *(v34 + 3);
      v77 = *(v34 + 2);
      v78 = v44;
      v79[0] = v34[8];
      if (v42)
      {
        buf = 0uLL;
        *&v96 = 0;
        *(&v96 + 1) = 0x3FF0000000000000;
        v97 = 0u;
        v98 = 0u;
        LODWORD(v99) = 0;
        sub_19B940928(a1, a1 + 656, v34 + 2, (a1 + 1128), v74, &v87, &v86, &buf, 0);
        v45 = *&buf;
        v79[1] = buf;
        v79[3] = v96;
        if (*&buf <= v37)
        {
          v49 = v37;
          if (*&buf <= v36)
          {
            v45 = v36;
          }
        }

        else
        {
          v47 = __dst[0];
          v46 = __dst[1];
          if (__dst[1])
          {
            atomic_fetch_add_explicit(__dst[1] + 1, 1uLL, memory_order_relaxed);
          }

          v48 = *(&v88 + 1);
          *&v88 = v47;
          *(&v88 + 1) = v46;
          if (v48)
          {
            sub_19B8750F8(v48);
          }

          v89 = v77;
          v90 = v78;
          *v91 = v79[0];
          *&v91[8] = *&v79[1];
          *&v91[17] = *(&v79[2] + 1);
          sub_19B967884(&v92, __p, v81, 0x8E38E38E38E38E39 * ((v81 - __p) >> 3));
          v49 = *&v79[1];
          v45 = v37;
        }

        sub_19B973C04((a1 + 888), __dst);
        v35 = v35 + *&v79[1];
        v37 = v49;
        v36 = v45;
      }

      else
      {
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
        }

        v50 = off_1EAFE4708;
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_19B873000, v50, OS_LOG_TYPE_ERROR, "CLMM,Unexpected NULL road", &buf, 2u);
        }

        v51 = sub_19B87DD40();
        if ((*(v51 + 160) & 0x80000000) == 0 || (*(v51 + 164) & 0x80000000) == 0 || (*(v51 + 168) & 0x80000000) == 0 || *(v51 + 152))
        {
          bzero(&buf, 0x65CuLL);
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
          }

          LOWORD(v74[0]) = 0;
          v52 = _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMM,Unexpected NULL road", v74, 2);
          sub_19B885924("Generic", 1, 0, 0, "BOOL CLParticleMapMatcher::prepareSeeding()", "CoreLocation: %s\n", v52);
          if (v52 != &buf)
          {
            free(v52);
          }
        }

        ++*(a1 + 104);
      }

      if (__p)
      {
        v81 = __p;
        operator delete(__p);
      }

      if (__dst[1])
      {
        sub_19B8750F8(__dst[1]);
      }

      if (!v42)
      {
        break;
      }

      v34 = v34[1];
      if (v34 == &v83)
      {
        goto LABEL_142;
      }
    }

    v4 = 0;
LABEL_192:
    v9 = v73;
    goto LABEL_193;
  }

  v35 = 0.0;
LABEL_142:
  v53 = *v28;
  if (*v28 == *(a1 + 896))
  {
    v4 = 0;
    ++*(a1 + 104);
    goto LABEL_193;
  }

  v54 = 0.0;
  do
  {
    v55 = *(v53 + 56) / v35;
    *(v53 + 64) = v55;
    v54 = v54 + v55;
    *&v55 = v54;
    LODWORD(buf) = LODWORD(v55);
    sub_19B973EC0((a1 + 960), &buf);
    v53 += 112;
  }

  while (v53 != *(a1 + 896));
  *(a1 + 1624) = 0;
  if (v2 == v72)
  {
    goto LABEL_188;
  }

  v56 = v84;
  if (v84 == &v83)
  {
    *(a1 + 1632) = 0;
    goto LABEL_188;
  }

  do
  {
    v102 = 0;
    v103 = 0;
    v104 = 0;
    v99 = 0;
    v100 = 0;
    *(&v98 + 1) = 0;
    v101 = 0;
    v58 = v56[2];
    v57 = v56[3];
    if (v57)
    {
      atomic_fetch_add_explicit(&v57->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    *&buf = v58;
    *(&buf + 1) = v57;
    v59 = *(v56 + 2);
    v60 = *(v56 + 3);
    *&v98 = v56[8];
    v96 = v59;
    v97 = v60;
    v61 = *(a1 + 1016);
    if (v58 == v61)
    {
      goto LABEL_179;
    }

    if (*(v58 + 71) < 0)
    {
      sub_19B874C9C(__dst, *(v58 + 48), *(v58 + 56));
      v61 = *(a1 + 1016);
    }

    else
    {
      *__dst = *(v58 + 48);
      *&v77 = *(v58 + 64);
    }

    if (*(v61 + 71) < 0)
    {
      sub_19B874C9C(v74, *(v61 + 48), *(v61 + 56));
    }

    else
    {
      *v74 = *(v61 + 48);
      v75 = *(v61 + 64);
    }

    v62 = BYTE7(v77);
    if ((SBYTE7(v77) & 0x80u) == 0)
    {
      v63 = BYTE7(v77);
    }

    else
    {
      v63 = __dst[1];
    }

    v64 = HIBYTE(v75);
    v65 = SHIBYTE(v75);
    if (v75 < 0)
    {
      v64 = v74[1];
    }

    if (v63 == v64)
    {
      if ((SBYTE7(v77) & 0x80u) == 0)
      {
        v66 = __dst;
      }

      else
      {
        v66 = __dst[0];
      }

      if (v75 >= 0)
      {
        v67 = v74;
      }

      else
      {
        v67 = v74[0];
      }

      v68 = memcmp(v66, v67, v63) == 0;
      if ((v65 & 0x80000000) == 0)
      {
        goto LABEL_172;
      }

LABEL_171:
      operator delete(v74[0]);
      v62 = BYTE7(v77);
      goto LABEL_172;
    }

    v68 = 0;
    if (SHIBYTE(v75) < 0)
    {
      goto LABEL_171;
    }

LABEL_172:
    if (v62 < 0)
    {
      operator delete(__dst[0]);
      if (v68)
      {
        goto LABEL_179;
      }
    }

    else if (v68)
    {
      goto LABEL_179;
    }

    if (*v58 != **(a1 + 1016))
    {
      __dst[0] = 0;
      __dst[1] = 0;
      *&v77 = 0;
      *(&v77 + 1) = 0x3FF0000000000000;
      v78 = 0u;
      memset(v79, 0, 20);
      sub_19B940928(a1, a1 + 656, v56 + 2, (a1 + 1128), v74, &v87, &v86, __dst, 0);
      if (*__dst > *(a1 + 1624))
      {
        *(a1 + 1624) = __dst[0];
      }
    }

LABEL_179:
    if (v57)
    {
      sub_19B8750F8(v57);
    }

    v56 = v56[1];
  }

  while (v56 != &v83);
  v69 = *(a1 + 1624);
  *(a1 + 1632) = 0;
  if (v69 <= 0.0)
  {
    v4 = 1;
    goto LABEL_192;
  }

  v70 = *(a1 + 1616) / v69;
  *(a1 + 1632) = v70;
  v9 = v73;
  if (v70 > 1000000.0)
  {
    *(a1 + 1632) = 0x412E848000000000;
  }

LABEL_188:
  v4 = 1;
LABEL_193:
  if (v92)
  {
    v93 = v92;
    operator delete(v92);
  }

  if (*(&v88 + 1))
  {
    sub_19B8750F8(*(&v88 + 1));
  }

LABEL_197:
  sub_19B916DC0(&v83);
  if (v9)
  {
LABEL_198:
    sub_19B8750F8(v9);
  }

  return v4;
}

void sub_19B97AAE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56)
{
  if (v56)
  {
    sub_19B8750F8(v56);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B97AB8C(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 2)
  {
    if (!(a2 >> 62))
    {
      sub_19B8F1D64(a1, a2);
    }

    sub_19B8B8A40();
  }
}

uint64_t sub_19B97AC2C(uint64_t a1, _BYTE *a2, double a3, __n128 a4, __n128 a5)
{
  v47 = *MEMORY[0x1E69E9840];
  if (*(a1 + 872) == *(a1 + 864))
  {
    result = 1;
    *a2 = 1;
  }

  else
  {
    if (*(a1 + 96) == 1)
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v7 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(buf[0].__r_.__value_.__l.__data_) = 0;
        _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEBUG, "CLMM,assessMatchAndNeedForReseed", buf, 2u);
      }

      v8 = sub_19B87DD40();
      if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
        }

        LOWORD(v43.__r_.__value_.__l.__data_) = 0;
        v9 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,assessMatchAndNeedForReseed", &v43, 2);
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::assessMatchAndNeedForReseed(BOOL &)", "CoreLocation: %s\n", v9);
        if (v9 != buf)
        {
          free(v9);
        }
      }
    }

    *(a1 + 1360) = *(a1 + 1088);
    *(a1 + 1376) = *(a1 + 1576);
    v10 = *(a1 + 1632);
    *(a1 + 1308) = v10;
    v11 = *(a1 + 1592);
    *(a1 + 1368) = v11;
    v12 = *(a1 + 1016);
    *(a1 + 1489) = *(v12 + 19);
    *(a1 + 1490) = *(v12 + 18);
    if (*(a1 + 1649) == 1)
    {
      v13 = *(a1 + 1650) ^ 1;
    }

    else
    {
      v13 = 0;
    }

    v15 = sub_19B93F034(a1, (a1 + 1128), v13 & 1, v11, a4, a5);
    if (*(a1 + 96) == 1)
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v16 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        sub_19B8D6654(a1 + 1128, buf);
        v17 = (buf[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? buf : buf[0].__r_.__value_.__r.__words[0];
        LODWORD(v43.__r_.__value_.__l.__data_) = 136380675;
        *(v43.__r_.__value_.__r.__words + 4) = v17;
        _os_log_impl(&dword_19B873000, v16, OS_LOG_TYPE_DEBUG, "CLMM,postEvaluateMatch,%{private}s", &v43, 0xCu);
        if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf[0].__r_.__value_.__l.__data_);
        }
      }

      v18 = sub_19B87DD40();
      if (*(v18 + 160) > 1 || *(v18 + 164) > 1 || *(v18 + 168) > 1 || *(v18 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
        }

        v19 = off_1EAFE4708;
        sub_19B8D6654(a1 + 1128, &v43);
        if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v20 = &v43;
        }

        else
        {
          v20 = v43.__r_.__value_.__r.__words[0];
        }

        v44 = 136380675;
        v45 = v20;
        v21 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v19, 2, "CLMM,postEvaluateMatch,%{private}s", &v44, 12);
        if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v43.__r_.__value_.__l.__data_);
        }

        sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::assessMatchAndNeedForReseed(BOOL &)", "CoreLocation: %s\n", v21);
        if (v21 != buf)
        {
          free(v21);
        }
      }
    }

    *(a1 + 1392) = v15;
    *(a1 + 1478) = *(a1 + 841) & v15;
    if ((*(a1 + 1488) & 1) == 0)
    {
      sub_19B966EDC(a1 + 3824, (a1 + 1016), v15, *(a1 + 1136), *(a1 + 1208), *(a1 + 1200), *(a1 + 1216));
    }

    sub_19B96700C(a1 + 3176, (a1 + 1128));
    v22 = sub_19B967214((a1 + 3176), *(a1 + 96));
    if (v22)
    {
      *(a1 + 1392) = 0;
      *(a1 + 1478) = 0;
    }

    else if (v15)
    {
      *(a1 + 2968) = 0;
      *(a1 + 2832) = 0u;
    }

    else
    {
      *(a1 + 1408) = 0;
      *(a1 + 1280) = *(a1 + 1184);
      *(a1 + 1296) = *(a1 + 1232);
      if (*(a1 + 1088) > 70.0)
      {
        if (*(a1 + 96) == 1)
        {
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
          }

          v23 = off_1EAFE4708;
          if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
          {
            v24 = *(a1 + 1088);
            LODWORD(buf[0].__r_.__value_.__l.__data_) = 134349312;
            *(buf[0].__r_.__value_.__r.__words + 4) = v24;
            WORD2(buf[0].__r_.__value_.__r.__words[1]) = 2050;
            *(&buf[0].__r_.__value_.__r.__words[1] + 6) = 0x4051800000000000;
            _os_log_impl(&dword_19B873000, v23, OS_LOG_TYPE_DEBUG, "CLMM,Reseeding due to varFactor,%{public}.1lf,max,%{public}.1lf", buf, 0x16u);
          }

          v25 = sub_19B87DD40();
          if (*(v25 + 160) > 1 || *(v25 + 164) > 1 || *(v25 + 168) > 1 || *(v25 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE46D0 != -1)
            {
              dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
            }

            v26 = *(a1 + 1088);
            LODWORD(v43.__r_.__value_.__l.__data_) = 134349312;
            *(v43.__r_.__value_.__r.__words + 4) = v26;
            WORD2(v43.__r_.__value_.__r.__words[1]) = 2050;
            *(&v43.__r_.__value_.__r.__words[1] + 6) = 0x4051800000000000;
            v27 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,Reseeding due to varFactor,%{public}.1lf,max,%{public}.1lf", &v43, 22);
            sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::assessMatchAndNeedForReseed(BOOL &)", "CoreLocation: %s\n", v27);
            if (v27 != buf)
            {
              free(v27);
            }
          }
        }

        *a2 = 1;
      }

      v28 = *(a1 + 2968);
      if ((v28 & 0x80000000) == 0)
      {
        *(a1 + 2968) = v28 + 1;
        if (v28 >= 0x1E)
        {
          if (*(a1 + 96) == 1)
          {
            if (qword_1EAFE46D0 != -1)
            {
              dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
            }

            v29 = off_1EAFE4708;
            if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
            {
              buf[0].__r_.__value_.__r.__words[0] = 0x1E04020100;
              _os_log_impl(&dword_19B873000, v29, OS_LOG_TYPE_DEBUG, "CLMM,Reseeding due to badMatchCount,max,%{public}d", buf, 8u);
            }

            v30 = sub_19B87DD40();
            if (*(v30 + 160) > 1 || *(v30 + 164) > 1 || *(v30 + 168) > 1 || *(v30 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1EAFE46D0 != -1)
              {
                dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
              }

              v43.__r_.__value_.__r.__words[0] = 0x1E04020100;
              v31 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,Reseeding due to badMatchCount,max,%{public}d", &v43, 8);
              sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::assessMatchAndNeedForReseed(BOOL &)", "CoreLocation: %s\n", v31);
              if (v31 != buf)
              {
                free(v31);
              }
            }
          }

          *a2 = 1;
        }
      }

      if ((*a2 & 1) == 0 && *(a1 + 1848) == 1 && *(a1 + 1136) - *(a1 + 1976) < 4.9)
      {
        if (*(a1 + 1088) <= 50.0 || *(a1 + 1928) <= 50.0 || (v32 = *(a1 + 1608), v32 < 0.0) || (v39 = *(a1 + 2448), v39 >= 2.5) || v32 >= 2.5 || v39 < 0.0)
        {
          *(a1 + 2832) = *(a1 + 1800) + *(a1 + 2832);
          sub_19BA0C01C((a1 + 608), *(a1 + 2120), *(a1 + 2128), *(a1 + 1280), *(a1 + 1288), *(a1 + 1200));
          v34 = v33 + *(a1 + 2840);
          *(a1 + 2840) = v34;
          v35 = *(a1 + 2832);
          if (v35 > 80.0 && v35 / v34 > 5.0)
          {
            *a2 = 1;
            if (*(a1 + 96) == 1)
            {
              if (qword_1EAFE46D0 != -1)
              {
                dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
              }

              v36 = off_1EAFE4708;
              if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
              {
                LOWORD(buf[0].__r_.__value_.__l.__data_) = 0;
                _os_log_impl(&dword_19B873000, v36, OS_LOG_TYPE_DEBUG, "CLMM,Reseeding due to stuck at dead-end while observations move away", buf, 2u);
              }

              v37 = sub_19B87DD40();
              if (*(v37 + 160) > 1 || *(v37 + 164) > 1 || *(v37 + 168) > 1 || *(v37 + 152))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1EAFE46D0 != -1)
                {
                  dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
                }

                LOWORD(v43.__r_.__value_.__l.__data_) = 0;
                v38 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,Reseeding due to stuck at dead-end while observations move away", &v43, 2);
                sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::assessMatchAndNeedForReseed(BOOL &)", "CoreLocation: %s\n", v38);
                if (v38 != buf)
                {
                  free(v38);
                }
              }
            }
          }
        }

        else
        {
          if (*(a1 + 96) == 1)
          {
            if (qword_1EAFE46D0 != -1)
            {
              dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
            }

            v40 = off_1EAFE4708;
            if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
            {
              LOWORD(buf[0].__r_.__value_.__l.__data_) = 0;
              _os_log_impl(&dword_19B873000, v40, OS_LOG_TYPE_DEBUG, "CLMM,Reseeding due to Neff", buf, 2u);
            }

            v41 = sub_19B87DD40();
            if (*(v41 + 160) > 1 || *(v41 + 164) > 1 || *(v41 + 168) > 1 || *(v41 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1EAFE46D0 != -1)
              {
                dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
              }

              LOWORD(v43.__r_.__value_.__l.__data_) = 0;
              v42 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,Reseeding due to Neff", &v43, 2);
              sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::assessMatchAndNeedForReseed(BOOL &)", "CoreLocation: %s\n", v42);
              if (v42 != buf)
              {
                free(v42);
              }
            }
          }

          *a2 = 1;
        }
      }
    }

    return v22 ^ 1u;
  }

  return result;
}

BOOL sub_19B97B7CC(uint64_t a1)
{
  v41 = *MEMORY[0x1E69E9840];
  if (*(a1 + 96) == 1)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    v2 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v2, OS_LOG_TYPE_DEBUG, "CLMM,reseed", buf, 2u);
    }

    v3 = sub_19B87DD40();
    if (*(v3 + 160) > 1 || *(v3 + 164) > 1 || *(v3 + 168) > 1 || *(v3 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      LOWORD(v37) = 0;
      v4 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,reseed", &v37, 2);
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::reseed()", "CoreLocation: %s\n", v4);
      if (v4 != buf)
      {
        free(v4);
      }
    }
  }

  v5 = *(a1 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_19B97BE0C(a1);
  if (*(a1 + 888) == *(a1 + 896) && (sub_19B979A54(a1) & 1) == 0)
  {
    v28 = 0;
    if (!v5)
    {
      return v28;
    }

    goto LABEL_63;
  }

  v37 = 0uLL;
  v38 = 0;
  sub_19B973FA0(&v37, 0x60uLL);
  v6 = 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 896) - *(a1 + 888)) >> 4);
  *buf = 0;
  sub_19B988C58(&__p, v6, buf);
  sub_19B98A0DC(*(a1 + 992));
  *(a1 + 984) = a1 + 992;
  *(a1 + 992) = 0u;
  v7 = *(a1 + 896);
  v8 = *(a1 + 888);
  if ((-1227133513 * ((v7 - v8) >> 4)) <= 95 && v8 != v7)
  {
    do
    {
      sub_19B973C04(&v37, v8);
      sub_19B970504();
      v8 += 112;
      v7 = *(a1 + 896);
    }

    while (v8 != v7);
  }

  v10 = *(&v37 + 1);
  v11 = v37;
  if (*(&v37 + 1) - v37 != 10752)
  {
    v12 = 0;
    do
    {
      v13 = random();
      v14 = *(a1 + 960);
      v15 = *(a1 + 968);
      if (v15 == v14)
      {
        v18 = *(a1 + 968);
      }

      else
      {
        v16 = vcvts_n_f32_s64(v13, 0x1FuLL);
        v17 = v15 - v14;
        v18 = *(a1 + 960);
        do
        {
          v19 = v17 >> 1;
          v20 = &v18[v17 >> 1];
          v22 = *v20;
          v21 = v20 + 1;
          v17 += ~(v17 >> 1);
          if (v22 < v16)
          {
            v18 = v21;
          }

          else
          {
            v17 = v19;
          }
        }

        while (v17);
      }

      if (v15 != v18)
      {
        ++*(__p + ((v18 - v14) << 30 >> 30));
      }

      ++v12;
      v10 = *(&v37 + 1);
      v11 = v37;
    }

    while (96 - 0x6DB6DB6DB6DB6DB7 * ((*(&v37 + 1) - v37) >> 4) > v12);
    v7 = *(a1 + 896);
  }

  v23 = *(a1 + 888);
  if (v23 != v7)
  {
    v24 = 0;
    v25 = __p;
    do
    {
      if (v24 >= (v36 - v25) >> 2)
      {
        break;
      }

      if (*&v25[4 * v24] >= 1)
      {
        v26 = 0;
        do
        {
          sub_19B973C04(&v37, v23);
          sub_19B970504();
          ++v26;
          v25 = __p;
        }

        while (v26 < *(__p + v24));
        v7 = *(a1 + 896);
      }

      v23 += 112;
      ++v24;
    }

    while (v23 != v7);
    v10 = *(&v37 + 1);
    v11 = v37;
  }

  v27 = 0x6DB6DB6DB6DB6DB7 * ((v10 - v11) >> 4);
  v28 = v27 < 0x61;
  if (v27 >= 0x61)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    v31 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      *buf = 67240192;
      *&buf[4] = v27;
      _os_log_impl(&dword_19B873000, v31, OS_LOG_TYPE_ERROR, "CLMM,Unexpected number of particles after resampling,%{public}d", buf, 8u);
    }

    v32 = sub_19B87DD40();
    if ((*(v32 + 160) & 0x80000000) == 0 || (*(v32 + 164) & 0x80000000) == 0 || (*(v32 + 168) & 0x80000000) == 0 || *(v32 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v39[0] = 67240192;
      v39[1] = v27;
      v33 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMM,Unexpected number of particles after resampling,%{public}d", v39, 8);
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLParticleMapMatcher::reseed()", "CoreLocation: %s\n", v33);
      if (v33 != buf)
      {
        free(v33);
      }
    }

    ++*(a1 + 104);
  }

  else
  {
    v29 = *(a1 + 864);
    *(a1 + 864) = v11;
    *(a1 + 872) = v10;
    v37 = v29;
    v30 = *(a1 + 880);
    *(a1 + 880) = v38;
    v38 = v30;
  }

  if (__p)
  {
    v36 = __p;
    operator delete(__p);
  }

  *buf = &v37;
  sub_19B988734(buf);
  if (v5)
  {
LABEL_63:
    sub_19B8750F8(v5);
  }

  return v28;
}

void sub_19B97BDA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char *a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  a21 = &a15;
  sub_19B988734(&a21);
  if (v21)
  {
    sub_19B8750F8(v21);
  }

  _Unwind_Resume(a1);
}

void sub_19B97BE0C(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE46D0 != -1)
  {
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
  }

  v2 = off_1EAFE4708;
  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 1136);
    v4 = *(a1 + 1184);
    v5 = *(a1 + 1192);
    *buf = 134349569;
    *&buf[4] = v3;
    *&buf[12] = 2053;
    *&buf[14] = v4;
    *&buf[22] = 2053;
    *&v27 = v5;
    _os_log_impl(&dword_19B873000, v2, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.1lf,filterResetForReseed,LL,%{sensitive}.7lf,%{sensitive}.7lf", buf, 0x20u);
  }

  v6 = sub_19B87DD40();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    v7 = *(a1 + 1136);
    v8 = *(a1 + 1184);
    v9 = *(a1 + 1192);
    v18 = 134349569;
    *v19 = v7;
    *&v19[8] = 2053;
    *&v19[10] = v8;
    *&v19[18] = 2053;
    *&v20 = v9;
    v10 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,%{public}.1lf,filterResetForReseed,LL,%{sensitive}.7lf,%{sensitive}.7lf", &v18, 32);
    sub_19B885924("Generic", 1, 0, 2, "void CLParticleMapMatcher::resetForReseed()", "CoreLocation: %s\n", v10);
    if (v10 != buf)
    {
      free(v10);
    }
  }

  sub_19B93D614(a1);
  *(a1 + 2968) = -1;
  v11 = *(a1 + 872);
  v12 = *(a1 + 864);
  while (v11 != v12)
  {
    v11 -= 14;
    sub_19B988BB4(v11);
  }

  *(a1 + 872) = v12;
  sub_19B98A0DC(*(a1 + 992));
  *(a1 + 984) = a1 + 992;
  *(a1 + 992) = 0u;
  *(a1 + 1008) = 0;
  *(a1 + 2832) = 0u;
  sub_19B9679F8((a1 + 912));
  buf[0] = 0;
  *&buf[8] = 0u;
  v27 = 0u;
  LODWORD(v28) = 0;
  WORD2(v28) = 1;
  DWORD2(v28) = 0;
  v29 = 0u;
  memset(v30, 0, 33);
  v32 = 0;
  v33 = 0;
  v31 = 0;
  v34 = 0;
  *(a1 + 2704) = 0;
  *(a1 + 2688) = *buf;
  v13 = *(a1 + 2720);
  *(a1 + 2712) = 0;
  *(a1 + 2720) = 0;
  if (v13)
  {
    sub_19B8750F8(v13);
  }

  *(a1 + 2760) = v30[0];
  v14 = v29;
  *(a1 + 2728) = v28;
  *(a1 + 2744) = v14;
  *(a1 + 2768) = *&v30[1];
  *(a1 + 2777) = *(&v30[2] + 1);
  if ((a1 + 2688) == buf)
  {
    v15 = 0;
  }

  else
  {
    sub_19B967884((a1 + 2800), 0, 0, 0);
    v15 = v34;
  }

  *(a1 + 2824) = v15;
  *(a1 + 2972) = 0;
  LOBYTE(v18) = 0;
  *&v19[4] = 0;
  *&v19[12] = 0;
  LODWORD(v20) = 0;
  WORD2(v20) = 1;
  DWORD2(v20) = 0;
  v24 = 0;
  v25 = 0;
  __p = 0;
  v21 = 0u;
  memset(v22, 0, sizeof(v22));
  *(a1 + 2848) = 0;
  v16 = *(a1 + 2864);
  *(a1 + 2856) = 0;
  *(a1 + 2864) = 0;
  if (v16)
  {
    sub_19B8750F8(v16);
  }

  *(a1 + 2904) = *v22;
  v17 = v21;
  *(a1 + 2872) = v20;
  *(a1 + 2888) = v17;
  *(a1 + 2912) = *&v22[8];
  *(a1 + 2921) = *&v22[17];
  if ((a1 + 2848) != &v18)
  {
    sub_19B967884((a1 + 2944), 0, 0, 0);
  }

  sub_19B97C244(a1 + 3824);
  *(a1 + 4032) = 0;
  if (__p)
  {
    v24 = __p;
    operator delete(__p);
  }

  if (*&v19[12])
  {
    sub_19B8750F8(*&v19[12]);
  }

  if (v31)
  {
    v32 = v31;
    operator delete(v31);
  }

  if (*(&v27 + 1))
  {
    sub_19B8750F8(*(&v27 + 1));
  }
}

void sub_19B97C244(uint64_t a1)
{
  v13[0] = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  *&v13[8] = _Q0;
  v15 = 0uLL;
  v14 = 0;
  v16 = _Q0;
  v17 = 0;
  v18 = 0;
  LODWORD(v19) = 0;
  WORD2(v19) = 1;
  DWORD2(v19) = 0;
  __p = 0;
  v23 = 0;
  v20 = 0u;
  memset(v21, 0, sizeof(v21));
  v24 = 0;
  v25 = 0xBFF0000000000000;
  v7 = *v13;
  v8 = *&v13[16];
  v9 = v16;
  *(a1 + 32) = 0uLL;
  *(a1 + 48) = v9;
  *a1 = v7;
  *(a1 + 16) = v8;
  v10 = *(a1 + 72);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  if (v10)
  {
    sub_19B8750F8(v10);
  }

  v11 = v20;
  *(a1 + 80) = v19;
  *(a1 + 96) = v11;
  *(a1 + 112) = *v21;
  *(a1 + 120) = *&v21[8];
  *(a1 + 129) = *&v21[17];
  if (v13 == a1)
  {
    *(a1 + 176) = 0xBFF0000000000000;
  }

  else
  {
    sub_19B967884((a1 + 152), 0, 0, 0);
    v12 = __p;
    *(a1 + 176) = v25;
    if (v12)
    {
      v23 = v12;
      operator delete(v12);
    }
  }

  if (v18)
  {
    sub_19B8750F8(v18);
  }
}

void sub_19B97C354(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_19B96FB20(va);
  _Unwind_Resume(a1);
}

void sub_19B97C368(uint64_t *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE46D0 != -1)
  {
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
  }

  v2 = off_1EAFE4708;
  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
  {
    v3 = a1[142];
    v4 = a1[148];
    v5 = a1[149];
    *buf = 134349569;
    v20 = v3;
    v21 = 2053;
    v22 = v4;
    v23 = 2053;
    v24 = v5;
    _os_log_impl(&dword_19B873000, v2, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.1lf,filterReset,LL,%{sensitive}.7lf,%{sensitive}.7lf", buf, 0x20u);
  }

  v6 = sub_19B87DD40();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    v7 = a1[142];
    v8 = a1[148];
    v9 = a1[149];
    v13 = 134349569;
    v14 = v7;
    v15 = 2053;
    v16 = v8;
    v17 = 2053;
    v18 = v9;
    v10 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,%{public}.1lf,filterReset,LL,%{sensitive}.7lf,%{sensitive}.7lf", &v13, 32);
    sub_19B885924("Generic", 1, 0, 2, "virtual void CLParticleMapMatcher::reset()", "CoreLocation: %s\n", v10);
    if (v10 != buf)
    {
      free(v10);
    }
  }

  sub_19B97BE0C(a1);
  v11 = a1[112];
  v12 = a1[111];
  while (v11 != v12)
  {
    v11 -= 14;
    sub_19B988BB4(v11);
  }

  a1[112] = v12;
  a1[121] = a1[120];
  sub_19B97C5D4((a1 + 126));
  sub_19B97C5D4((a1 + 231));
  sub_19B916DC0(a1 + 381);
  sub_19B916DC0(a1 + 384);
  sub_19B916DC0(a1 + 387);
  sub_19B916DC0(a1 + 390);
}

void sub_19B97C5D4(uint64_t a1)
{
  v17 = 0;
  v18 = 0;
  LODWORD(v19) = 0;
  WORD2(v19) = 1;
  DWORD2(v19) = 0;
  v23 = 0;
  v24 = 0;
  v22 = 0;
  v20 = 0u;
  memset(v21, 0, sizeof(v21));
  *(a1 + 8) = 0;
  v2 = (a1 + 8);
  v3 = *(a1 + 16);
  v2[1] = 0;
  if (v3)
  {
    sub_19B8750F8(v3);
  }

  v4 = v20;
  *(a1 + 24) = v19;
  *(a1 + 40) = v4;
  *(a1 + 56) = *v21;
  *(a1 + 64) = *&v21[8];
  *(a1 + 73) = *&v21[17];
  if (v2 == &v17)
  {
    v5 = 0;
    v6 = 0;
  }

  else
  {
    sub_19B967884((a1 + 96), 0, 0, 0);
    v5 = v17;
    v6 = v18;
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  *(a1 + 672) = v5;
  v7 = *(a1 + 680);
  *(a1 + 680) = v6;
  if (v7)
  {
    sub_19B8750F8(v7);
  }

  v8 = v20;
  *(a1 + 688) = v19;
  *(a1 + 704) = v8;
  *(a1 + 720) = *v21;
  *(a1 + 728) = *&v21[8];
  *(a1 + 737) = *&v21[17];
  if ((a1 + 672) != &v17)
  {
    sub_19B967884((a1 + 760), v22, v23, 0x8E38E38E38E38E39 * ((v23 - v22) >> 3));
  }

  __asm { FMOV            V0.2D, #-1.0 }

  *v14 = 0xBFF0000000000000;
  *&v16[120] = 0;
  *&v16[128] = 0;
  memset(&v16[80], 0, 34);
  memset(&v16[136], 0, 75);
  memset(&v16[216], 0, 56);
  memset(&v14[8], 0, 80);
  memset(v16, 0, 78);
  v15 = 0u;
  *&v16[272] = 0xBFF0000000000000;
  *(a1 + 168) = *v14;
  *(a1 + 152) = 0uLL;
  *(a1 + 136) = _Q0;
  *(a1 + 120) = 0uLL;
  *(a1 + 232) = *&v14[64];
  *(a1 + 216) = *&v14[48];
  *(a1 + 200) = *&v14[32];
  *(a1 + 184) = *&v14[16];
  std::string::operator=((a1 + 248), &v14[80]);
  memcpy((a1 + 272), v16, 0x118uLL);
  *a1 = 0;
  *(a1 + 552) = 0;
  *(a1 + 664) = 0;
  *(a1 + 560) = 0u;
  *(a1 + 576) = 0u;
  *(a1 + 592) = 0u;
  *(a1 + 608) = 0u;
  *(a1 + 624) = 0u;
  *(a1 + 639) = 0;
  *(a1 + 784) = 0u;
  *(a1 + 800) = 0u;
  *(a1 + 816) = 0u;
  *(a1 + 830) = 0;
  if (SHIBYTE(v15) < 0)
  {
    operator delete(*&v14[80]);
  }

  if (v22)
  {
    v23 = v22;
    operator delete(v22);
  }

  if (v18)
  {
    sub_19B8750F8(v18);
  }
}

void sub_19B97C848(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  sub_19B966FCC((v30 - 144));
  _Unwind_Resume(a1);
}

BOOL sub_19B97C874(uint64_t a1, double *a2, double a3)
{
  v3 = *(a1 + 16);
  v6 = *(a1 + 8);
  v7 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = sub_19B964860((a1 + 3824), a2, &v6, *(a1 + 96), a3);
  if (v7)
  {
    sub_19B8750F8(v7);
  }

  return v4;
}

void sub_19B97C8D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_19B8750F8(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B97C8F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5 = *(a1 + 8);
  v6 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v3 = sub_19B965AA8((a1 + 3824), a2, &v5, *(a1 + 96));
  if (v6)
  {
    sub_19B8750F8(v6);
  }

  return v3;
}

void sub_19B97C954(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_19B8750F8(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B97C96C(uint64_t a1, __int128 *a2)
{
  v614 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v4)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    v35 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      v36 = *(a2 + 1);
      *buf = 134349056;
      *&buf[4] = v36;
      _os_log_impl(&dword_19B873000, v35, OS_LOG_TYPE_ERROR, "CLMM,%{public}.1lf,Unexpected,invalid geometry pointer, mapMatch", buf, 0xCu);
    }

    v37 = sub_19B87DD40();
    if ((*(v37 + 160) & 0x80000000) != 0 && (*(v37 + 164) & 0x80000000) != 0 && (*(v37 + 168) & 0x80000000) != 0 && !*(v37 + 152))
    {
      goto LABEL_816;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    v38 = *(a2 + 1);
    *v608 = 134349056;
    *&v608[4] = v38;
    v39 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMM,%{public}.1lf,Unexpected,invalid geometry pointer, mapMatch", v608, 12);
    sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLParticleMapMatcher::match(CLMapCrumb &)", "CoreLocation: %s\n", v39);
LABEL_142:
    if (v39 != buf)
    {
      free(v39);
    }

    goto LABEL_816;
  }

  if (*(a1 + 96) == 1)
  {
    sub_19B9DEBC4(v4);
  }

  *(a1 + 1848) = *(a1 + 1008);
  v5 = *(a1 + 1016);
  v6 = *(a1 + 1024);
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 1856) = v5;
  v7 = *(a1 + 1864);
  *(a1 + 1864) = v6;
  if (v7)
  {
    sub_19B8750F8(v7);
  }

  v8 = *(a1 + 1048);
  *(a1 + 1872) = *(a1 + 1032);
  *(a1 + 1904) = *(a1 + 1064);
  *(a1 + 1888) = v8;
  *(a1 + 1912) = *(a1 + 1072);
  *(a1 + 1921) = *(a1 + 1081);
  sub_19B967884((a1 + 1944), *(a1 + 1104), *(a1 + 1112), 0x8E38E38E38E38E39 * ((*(a1 + 1112) - *(a1 + 1104)) >> 3));
  v9 = (a1 + 1128);
  v10 = *(a1 + 1208);
  *(a1 + 2032) = *(a1 + 1192);
  *(a1 + 2048) = v10;
  v11 = *(a1 + 1240);
  *(a1 + 2064) = *(a1 + 1224);
  *(a1 + 2080) = v11;
  v12 = *(a1 + 1144);
  *(a1 + 1968) = *(a1 + 1128);
  *(a1 + 1984) = v12;
  v13 = *(a1 + 1176);
  *(a1 + 2000) = *(a1 + 1160);
  *(a1 + 2016) = v13;
  std::string::operator=((a1 + 2096), (a1 + 1256));
  __src = (a1 + 1280);
  memcpy((a1 + 2120), (a1 + 1280), 0x118uLL);
  v14 = *(a1 + 1608);
  *(a1 + 2432) = *(a1 + 1592);
  *(a1 + 2448) = v14;
  *(a1 + 2464) = *(a1 + 1624);
  *(a1 + 2475) = *(a1 + 1635);
  v15 = *(a1 + 1576);
  *(a1 + 2400) = *(a1 + 1560);
  *(a1 + 2416) = v15;
  v16 = *(a1 + 1656);
  v17 = *(a1 + 1664);
  if (v17)
  {
    atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 2496) = v16;
  v18 = *(a1 + 2504);
  *(a1 + 2504) = v17;
  if (v18)
  {
    sub_19B8750F8(v18);
  }

  *(a1 + 2512) = *(a1 + 1672);
  v19 = *(a1 + 1680);
  v20 = *(a1 + 1688);
  if (v20)
  {
    atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 2520) = v19;
  v21 = *(a1 + 2528);
  *(a1 + 2528) = v20;
  if (v21)
  {
    sub_19B8750F8(v21);
  }

  v22 = *(a1 + 1712);
  *(a1 + 2536) = *(a1 + 1696);
  *(a1 + 2552) = v22;
  *(a1 + 2568) = *(a1 + 1728);
  *(a1 + 2576) = *(a1 + 1736);
  *(a1 + 2585) = *(a1 + 1745);
  sub_19B967884((a1 + 2608), *(a1 + 1768), *(a1 + 1776), 0x8E38E38E38E38E39 * ((*(a1 + 1776) - *(a1 + 1768)) >> 3));
  v23 = *(a1 + 1808);
  *(a1 + 2632) = *(a1 + 1792);
  *(a1 + 2648) = v23;
  *(a1 + 2664) = *(a1 + 1824);
  *(a1 + 2678) = *(a1 + 1838);
  v24 = *(a2 + 12);
  if (v24 >= 0.0)
  {
    *(a1 + 3872) = *(a2 + 1);
    *(a1 + 3832) = v24;
  }

  *(a1 + 3712) = 0;
  v25 = *(a2 + 13);
  v26 = *(a2 + 24);
  *(a1 + 848) = v25;
  *(a1 + 856) = v26;
  v27 = *(a1 + 1357);
  v28 = *(a1 + 1136);
  if (*(a1 + 816) != v27 || *(a1 + 832) == 0.0)
  {
    *(a1 + 832) = v28;
    *(a1 + 816) = v27;
  }

  *(a1 + 824) = v28;
  v29 = *(a2 + 7);
  *(a2 + 19) = v29;
  v30 = *(a2 + 8);
  *(a2 + 20) = v30;
  *(a2 + 21) = v25;
  *(a2 + 36) = v29;
  *(a2 + 37) = v30;
  *(a2 + 38) = v25;
  *(a2 + 39) = v29;
  *(a2 + 40) = v30;
  *(a2 + 41) = v29;
  *(a2 + 42) = v30;
  *(a2 + 70) = 0;
  v581 = a2 + 152;
  if (*(a2 + 1) - *(a1 + 1976) <= 6.0)
  {
    v32 = *(a1 + 3016);
    v31 = *(a1 + 3008);
    goto LABEL_43;
  }

  v31 = *(a1 + 3008);
  v32 = *(a1 + 3016);
  *(a1 + 3040) = 0;
  v33 = v32 - v31;
  if (v33 >= 3)
  {
    do
    {
      operator delete(*v31);
      v31 = (*(a1 + 3008) + 8);
      *(a1 + 3008) = v31;
      v32 = *(a1 + 3016);
      v33 = v32 - v31;
    }

    while (v33 > 2);
  }

  if (v33 == 1)
  {
    v34 = 512;
    goto LABEL_41;
  }

  if (v33 == 2)
  {
    v34 = 1024;
LABEL_41:
    *(a1 + 3032) = v34;
  }

  *(a1 + 2992) = 0;
  v24 = *(a2 + 12);
LABEL_43:
  if (v32 == v31)
  {
    v40 = 0;
  }

  else
  {
    v40 = ((v32 - v31) << 7) - 1;
  }

  v41 = *(a1 + 3032);
  v42 = *(a1 + 3040);
  v43 = v42 + v41;
  if (v40 == v42 + v41)
  {
    if (v41 < 0x400)
    {
      v44 = *(a1 + 3024);
      v45 = *(a1 + 3000);
      if (v32 - v31 < (v44 - v45))
      {
        operator new();
      }

      if (v44 == v45)
      {
        v46 = 1;
      }

      else
      {
        v46 = (v44 - v45) >> 2;
      }

      sub_19B98A894(v46);
    }

    *(a1 + 3032) = v41 - 1024;
    *buf = *v31;
    *(a1 + 3008) = v31 + 1;
    sub_19B98A790((a1 + 3000), buf);
    v42 = *(a1 + 3040);
    v31 = *(a1 + 3008);
    v41 = *(a1 + 3032);
    v43 = v41 + v42;
  }

  v47 = v24;
  (*(v31 + ((v43 >> 7) & 0x1FFFFFFFFFFFFF8)))[v43 & 0x3FF] = v47;
  *(a1 + 3040) = v42 + 1;
  if ((v42 + 1) > *(a1 + 2984))
  {
    v48 = (*(v31 + ((v41 >> 7) & 0x1FFFFFFFFFFFFF8)))[v41 & 0x3FF];
    *(a1 + 2992) = *(a1 + 2992) - v48;
    *(a1 + 2996) = *(a1 + 2996) - (v48 * v48);
    *(a1 + 3040) = v42;
    *(a1 + 3032) = v41 + 1;
    if (v41 + 1 >= 0x800)
    {
      operator delete(*v31);
      *(a1 + 3008) += 8;
      *(a1 + 3032) -= 1024;
    }
  }

  *(a1 + 2992) = *(a1 + 2992) + v47;
  *(a1 + 2996) = *(a1 + 2996) + (v47 * v47);
  v49 = *(a1 + 4024);
  if (v49 < 0.0)
  {
    if (*(a2 + 3) - *(a1 + 4008) >= 900.0)
    {
      v49 = 5.55555556;
    }

    else
    {
      v49 = 1.66666667;
    }
  }

  if (*(a2 + 12) <= v49 && (*(a1 + 2232) & 1) == 0)
  {
    if (*(a1 + 96) == 1)
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v59 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        v60 = *(a2 + 1);
        *buf = 134349056;
        *&buf[4] = v60;
        _os_log_impl(&dword_19B873000, v59, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.1lf, not matching", buf, 0xCu);
      }

      v61 = sub_19B87DD40();
      if (*(v61 + 160) > 1 || *(v61 + 164) > 1 || *(v61 + 168) > 1 || *(v61 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
        }

        v62 = *(a2 + 1);
        *v608 = 134349056;
        *&v608[4] = v62;
        v63 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,%{public}.1lf, not matching", v608, 12);
        sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLParticleMapMatcher::match(CLMapCrumb &)", "CoreLocation: %s\n", v63);
        if (v63 != buf)
        {
          free(v63);
        }
      }
    }

    goto LABEL_114;
  }

  if (*(a2 + 348) == 1)
  {
    if (*(a1 + 96) == 1)
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v50 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v50, OS_LOG_TYPE_DEBUG, "CLMM,opportunistic tile download only, favorable GPS conditions", buf, 2u);
      }

      v51 = sub_19B87DD40();
      if (*(v51 + 160) > 1 || *(v51 + 164) > 1 || *(v51 + 168) > 1 || *(v51 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
        }

        *v608 = 0;
        v52 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,opportunistic tile download only, favorable GPS conditions", v608, 2);
        sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLParticleMapMatcher::match(CLMapCrumb &)", "CoreLocation: %s\n", v52);
        if (v52 != buf)
        {
          free(v52);
        }
      }
    }

    v53 = *(a1 + 112);
  }

  else
  {
    v53 = 1;
  }

  v54 = (a1 + 1144);
  if (*(a1 + 4128) == 1 && (v53 & 1) != 0)
  {
    v55 = *(a1 + 3040);
    v53 = 1;
    if (v55)
    {
      if (v55 >= *(a1 + 2984))
      {
        if ((*(a1 + 2992) / v55) <= 22.222)
        {
          v53 = 1;
        }

        else
        {
          if (*(a1 + 96) != 1)
          {
LABEL_100:
            v53 = 0;
            goto LABEL_116;
          }

          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
          }

          v56 = off_1EAFE4708;
          if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(&dword_19B873000, v56, OS_LOG_TYPE_DEBUG, "CLMM,opportunistic tile download only, high speed threshold", buf, 2u);
          }

          v57 = sub_19B87DD40();
          if (*(v57 + 160) > 1 || *(v57 + 164) > 1 || *(v57 + 168) > 1 || (v53 = *(v57 + 152)) != 0)
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE46D0 != -1)
            {
              dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
            }

            *v608 = 0;
            v58 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,opportunistic tile download only, high speed threshold", v608, 2);
            sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLParticleMapMatcher::match(CLMapCrumb &)", "CoreLocation: %s\n", v58);
            if (v58 != buf)
            {
              free(v58);
            }

            goto LABEL_100;
          }
        }
      }
    }
  }

LABEL_116:
  v65 = v53 & (*(a1 + 113) == 0);
  if (*(a1 + 96) == 1)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    v66 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      v67 = *(a2 + 1);
      *buf = 134349312;
      *&buf[4] = v67;
      *&buf[12] = 1026;
      *&buf[14] = v65;
      _os_log_impl(&dword_19B873000, v66, OS_LOG_TYPE_DEBUG, "CLMM,match,%{public}.1lf,allowsNetworkUsage,%{public}d", buf, 0x12u);
    }

    v68 = sub_19B87DD40();
    if (*(v68 + 160) > 1 || *(v68 + 164) > 1 || *(v68 + 168) > 1 || *(v68 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v69 = *(a2 + 1);
      *v608 = 134349312;
      *&v608[4] = v69;
      *&v608[12] = 1026;
      *&v608[14] = v65;
      v70 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,match,%{public}.1lf,allowsNetworkUsage,%{public}d", v608, 18);
      sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLParticleMapMatcher::match(CLMapCrumb &)", "CoreLocation: %s\n", v70);
      if (v70 != buf)
      {
        free(v70);
      }
    }
  }

  (*(*v4 + 32))(v4, v65);
  (*(*v4 + 48))(v4, a2, 450.0);
  v4[1] = *(a2 + 1);
  (*(*v4 + 96))(v4);
  v71 = (a1 + 992);
  sub_19B98A0DC(*(a1 + 992));
  *(a1 + 984) = a1 + 992;
  *(a1 + 992) = 0u;
  *(a1 + 944) = *(a1 + 936);
  sub_19B97AB8C((a1 + 936), 0xC0uLL);
  sub_19B97C5D4(a1 + 1008);
  v72 = *a2;
  v73 = a2[1];
  v74 = a2[3];
  *(a1 + 1160) = a2[2];
  *(a1 + 1176) = v74;
  *v9 = v72;
  *(a1 + 1144) = v73;
  v75 = a2[4];
  v76 = a2[5];
  v77 = a2[7];
  *(a1 + 1224) = a2[6];
  *(a1 + 1240) = v77;
  *(a1 + 1192) = v75;
  *(a1 + 1208) = v76;
  std::string::operator=((a1 + 1256), (a2 + 8));
  memcpy(__src, v581, 0x118uLL);
  v78 = *(a1 + 1976);
  v79 = *(a1 + 1136) - v78;
  *(a1 + 1640) = v79;
  if (v79 == 0.0)
  {
    if (*(a1 + 96) != 1)
    {
      goto LABEL_816;
    }

    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    v80 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v80, OS_LOG_TYPE_INFO, "CLMM,Time difference between updates is zero,update ignored", buf, 2u);
    }

    v81 = sub_19B87DD40();
    if (*(v81 + 160) <= 1 && *(v81 + 164) <= 1 && *(v81 + 168) <= 1 && !*(v81 + 152))
    {
      goto LABEL_816;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    *v608 = 0;
    v39 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 1, "CLMM,Time difference between updates is zero,update ignored", v608, 2);
    sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLParticleMapMatcher::match(CLMapCrumb &)", "CoreLocation: %s\n", v39);
    goto LABEL_142;
  }

  if (*(a1 + 1356) == 1)
  {
    v82 = 4.9;
    if (v79 > 4.9 && (*(a1 + 2232) & 1) != 0)
    {
      v83 = *(a1 + 1480);
      v84 = v83 > v78 + 1.2 || v83 <= 0.0;
      v82 = 4.9;
      if (!v84)
      {
        v82 = 75.0;
      }
    }
  }

  else
  {
    v82 = 4.9;
  }

  if (v79 < 0.0 || v79 > v82)
  {
    sub_19B97BE0C(a1);
  }

  if (*(a1 + 864) == *(a1 + 872))
  {
    *(a1 + 1640) = 0;
  }

  sub_19B93DA44(a1, v9);
  sub_19B9C138C(a1 + 656, v9, *(a1 + 752));
  sub_19B9866E4((a1 + 4040));
  if (*(a1 + 114) == 1)
  {
    v85 = *(a1 + 8);
    v86 = *(a1 + 16);
    if (v86)
    {
      atomic_fetch_add_explicit(&v86->__shared_owners_, 1uLL, memory_order_relaxed);
      *&buf[8] = v86;
      atomic_fetch_add_explicit(&v86->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    else
    {
      *&buf[8] = 0;
    }

    *buf = v85;
    sub_19B986730(v9, buf, (a1 + 608), a1 + 48, (a1 + 4040), 1, 200.0);
    if (*&buf[8])
    {
      sub_19B8750F8(*&buf[8]);
    }

    if (v86)
    {
      sub_19B8750F8(v86);
    }
  }

  ++*(a1 + 100);
  if (!sub_19B971188(a1))
  {
    goto LABEL_815;
  }

  v573 = a1 + 1856;
  v580 = (a1 + 1128);
  if (*(a1 + 872) == *(a1 + 864) || *(a1 + 114) != 1)
  {
    v90 = 0;
LABEL_442:
    v218 = (a1 + 1856);
    goto LABEL_443;
  }

  v87 = *(a1 + 88);
  if (*(a1 + 4112) < 0.0 || vabdd_f64(*(a1 + 4120), v87) > 6.0)
  {
    *(a1 + 4112) = v87;
  }

  *(a1 + 4120) = v87;
  v88 = *(a1 + 4072);
  v89 = *(a1 + 4064);
  if (v88 != v89)
  {
    sub_19B98984C((a1 + 4088), v89, v88, 0xF83E0F83E0F83E1 * ((v88 - v89) >> 3));
  }

  sub_19B9882F8((a1 + 4064));
  if (*(a1 + 114) != 1 || *(a1 + 4040) == *(a1 + 4048))
  {
    goto LABEL_440;
  }

  v90 = 0;
  v91 = *(a1 + 88);
  if (v91 < 0.0 || vabdd_f64(*(a1 + 1152), v91) > 2.5)
  {
LABEL_441:
    sub_19B9882F8((a1 + 4064));
    goto LABEL_442;
  }

  if (vabdd_f64(v91, *(a1 + 4112)) < 60.0)
  {
    goto LABEL_440;
  }

  v92 = *(a1 + 1136);
  v93 = *(a1 + 16);
  v576 = *(a1 + 8);
  if (v93)
  {
    atomic_fetch_add_explicit(&v93->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v576)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    v135 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v135, OS_LOG_TYPE_ERROR, "CLMM,Unexpected,invalid geometry pointer,generateRouteHint", buf, 2u);
    }

    v136 = sub_19B87DD40();
    if ((*(v136 + 160) & 0x80000000) == 0 || (*(v136 + 164) & 0x80000000) == 0 || (*(v136 + 168) & 0x80000000) == 0 || *(v136 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      *v608 = 0;
      v137 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMM,Unexpected,invalid geometry pointer,generateRouteHint", v608, 2);
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLParticleMapMatcher::generateRouteHintMeasurement()", "CoreLocation: %s\n", v137);
      if (v137 != buf)
      {
        free(v137);
      }
    }

    v134 = 0;
    goto LABEL_415;
  }

  v590 = 0;
  v591 = 0;
  v592 = 0;
  v560 = v93;
  if (*(a1 + 2232) != 1)
  {
    goto LABEL_199;
  }

  sub_19B97106C(v573, v588);
  v94 = *(a1 + 4040);
  if (v94 == *(a1 + 4048))
  {
    goto LABEL_199;
  }

  v574 = v3;
  while (1)
  {
    v95 = *v94;
    v96 = *(v94 + 8);
    if (v96)
    {
      atomic_fetch_add_explicit(&v96->__shared_owners_, 1uLL, memory_order_relaxed);
      v97 = *(v94 + 20);
      atomic_fetch_add_explicit(&v96->__shared_owners_, 1uLL, memory_order_relaxed);
      v99 = *v95;
      v98 = v95[1];
      sub_19B8750F8(v96);
    }

    else
    {
      v97 = *(v94 + 20);
      v99 = *v95;
      v98 = v95[1];
    }

    _ZF = v588[0] == v99 && v589 == v97;
    v101 = _ZF && v588[1] == v98;
    v3 = v574;
    if (v96)
    {
      sub_19B8750F8(v96);
    }

    if (v101)
    {
      break;
    }

    v94 += 56;
    if (v94 == *(a1 + 4048))
    {
      goto LABEL_199;
    }
  }

  v185 = *(a1 + 1152);
  if (v185 >= 0.0)
  {
    v187 = *(a1 + 1992);
    v188 = vabdd_f64(v185, v187) * 72.0;
    if (v187 >= 0.0)
    {
      v186 = v188;
    }

    else
    {
      v186 = -72.0;
    }
  }

  else
  {
    v186 = -72.0;
  }

  v189 = fmax(*(a1 + 1800), 0.0) + vcvts_n_f32_s64(random(), 0x1FuLL) * 0.25;
  if (v189 <= v186)
  {
    v186 = v189;
  }

  sub_19B973CD8(v603, v573);
  v585 = COERCE_DOUBLE(&v585);
  v586 = &v585;
  v587 = 0;
  if (v94 != *(a1 + 4048))
  {
    sub_19B9117CC(&v585, v94);
  }

  v584 = 0;
  if (((*(*v576 + 56))(v576, v603, &v585, &v584, *&v603[48], v186) & 1) == 0)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    v212 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349056;
      *&buf[4] = v92;
      _os_log_impl(&dword_19B873000, v212, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.1lf,routeHints,no meas,moveOnRouteRoads,failed as not enough route roads are available", buf, 0xCu);
    }

    v3 = v574;
    v213 = sub_19B87DD40();
    if (*(v213 + 160) <= 1 && *(v213 + 164) <= 1 && *(v213 + 168) <= 1 && !*(v213 + 152))
    {
      goto LABEL_412;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    *v608 = 134349056;
    *&v608[4] = v92;
    v214 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,%{public}.1lf,routeHints,no meas,moveOnRouteRoads,failed as not enough route roads are available", v608, 12);
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::generateRouteHintMeasurement()", "CoreLocation: %s\n", v214);
    goto LABEL_409;
  }

  if (v587 <= v584)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    v215 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349568;
      *&buf[4] = v92;
      *&buf[12] = 1026;
      *&buf[14] = v584;
      *&buf[18] = 2050;
      *&buf[20] = v587;
      _os_log_impl(&dword_19B873000, v215, OS_LOG_TYPE_ERROR, "CLMM,%{public}.1lf,routeHints,no meas,moveOnRouteRoads,route index,%{public}d,is more than number of route roads,%{public}ld", buf, 0x1Cu);
    }

    v3 = v574;
    v216 = sub_19B87DD40();
    if ((*(v216 + 160) & 0x80000000) != 0 && (*(v216 + 164) & 0x80000000) != 0 && (*(v216 + 168) & 0x80000000) != 0 && !*(v216 + 152))
    {
      goto LABEL_412;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    *v608 = 134349568;
    *&v608[4] = v92;
    *&v608[12] = 1026;
    *&v608[14] = v584;
    *&v608[18] = 2050;
    *&v608[20] = v587;
    v214 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMM,%{public}.1lf,routeHints,no meas,moveOnRouteRoads,route index,%{public}d,is more than number of route roads,%{public}ld", v608, 28);
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLParticleMapMatcher::generateRouteHintMeasurement()", "CoreLocation: %s\n", v214);
LABEL_409:
    if (v214 != buf)
    {
      free(v214);
    }

    v3 = v574;
    v71 = (a1 + 992);
LABEL_412:
    sub_19B916DC0(&v585);
    sub_19B966FCC(v603);
    v134 = 0;
    goto LABEL_413;
  }

  v190 = *&v603[24];
  v191 = 5.0;
  if (*&v603[48] <= 0.97 && *&v603[48] >= 0.03)
  {
    if (*(a1 + 1320) <= 0.0 || (v192 = *(a1 + 1232), v192 < 0.0))
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v193 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134349312;
        *&buf[4] = v92;
        *&buf[12] = 2050;
        *&buf[14] = 0x403E000000000000;
        _os_log_impl(&dword_19B873000, v193, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.1lf,routeHints,no meas,moveOnRouteRoads,course deweighted,unc,%{public}.2lf", buf, 0x16u);
      }

      v194 = sub_19B87DD40();
      if (*(v194 + 160) > 1 || *(v194 + 164) > 1 || *(v194 + 168) > 1 || (v191 = 30.0, *(v194 + 152)))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
        }

        *v608 = 134349312;
        *&v608[4] = v92;
        *&v608[12] = 2050;
        *&v608[14] = 0x403E000000000000;
        v195 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,%{public}.1lf,routeHints,no meas,moveOnRouteRoads,course deweighted,unc,%{public}.2lf", v608, 22);
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::generateRouteHintMeasurement()", "CoreLocation: %s\n", v195);
        if (v195 != buf)
        {
          free(v195);
        }

        v191 = 30.0;
      }

      goto LABEL_360;
    }

    v534 = fmod(v192 - v190, 360.0);
    if (v534 < 0.0)
    {
      v534 = v534 + 360.0;
    }

    if (v534 > 180.0)
    {
      v534 = v534 + -360.0;
    }

    v535 = fabs(v534);
    v536 = *(a1 + 4032);
    if (v535 >= 135.0)
    {
      *(a1 + 4032) = v536 + 1;
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v543 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        v544 = *(a1 + 1232);
        v545 = *(a1 + 4032);
        *buf = 134349824;
        *&buf[4] = v92;
        *&buf[12] = 2050;
        *&buf[14] = v190;
        *&buf[22] = 2050;
        *&buf[24] = v544;
        *&buf[32] = 1026;
        *&buf[34] = v545;
        _os_log_impl(&dword_19B873000, v543, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.1lf,routeHints,no meas,moveOnRouteRoads,routeCourse,%{public}.1lf,is very different than crumb course,%{public}.1lf,rejection,%{public}d", buf, 0x26u);
      }

      v546 = sub_19B87DD40();
      if (*(v546 + 160) <= 1 && *(v546 + 164) <= 1 && *(v546 + 168) <= 1 && !*(v546 + 152))
      {
        goto LABEL_1055;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v547 = *(a1 + 1232);
      v548 = *(a1 + 4032);
      *v608 = 134349824;
      *&v608[4] = v92;
      *&v608[12] = 2050;
      *&v608[14] = v190;
      *&v608[22] = 2050;
      *&v608[24] = v547;
      *&v608[32] = 1026;
      *&v608[34] = v548;
      v549 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,%{public}.1lf,routeHints,no meas,moveOnRouteRoads,routeCourse,%{public}.1lf,is very different than crumb course,%{public}.1lf,rejection,%{public}d", v608, 38);
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::generateRouteHintMeasurement()", "CoreLocation: %s\n", v549);
      goto LABEL_1053;
    }

    if (v535 > 60.0 && v536 >= 1)
    {
      *(a1 + 4032) = v536 + 1;
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v550 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        v551 = *(a1 + 1232);
        v552 = *(a1 + 4032);
        *buf = 134349824;
        *&buf[4] = v92;
        *&buf[12] = 2050;
        *&buf[14] = v190;
        *&buf[22] = 2050;
        *&buf[24] = v551;
        *&buf[32] = 1026;
        *&buf[34] = v552;
        _os_log_impl(&dword_19B873000, v550, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.1lf,routeHints,no meas,moveOnRouteRoads,routeCourse,%{public}.1lf,is different than crumb course,%{public}.1lf, and rejections are high,rejection,%{public}d", buf, 0x26u);
      }

      v553 = sub_19B87DD40();
      if (*(v553 + 160) <= 1 && *(v553 + 164) <= 1 && *(v553 + 168) <= 1 && !*(v553 + 152))
      {
        goto LABEL_1055;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v554 = *(a1 + 1232);
      v555 = *(a1 + 4032);
      *v608 = 134349824;
      *&v608[4] = v92;
      *&v608[12] = 2050;
      *&v608[14] = v190;
      *&v608[22] = 2050;
      *&v608[24] = v554;
      *&v608[32] = 1026;
      *&v608[34] = v555;
      v549 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,%{public}.1lf,routeHints,no meas,moveOnRouteRoads,routeCourse,%{public}.1lf,is different than crumb course,%{public}.1lf, and rejections are high,rejection,%{public}d", v608, 38);
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::generateRouteHintMeasurement()", "CoreLocation: %s\n", v549);
LABEL_1053:
      if (v549 != buf)
      {
        free(v549);
      }

LABEL_1055:
      sub_19B916DC0(&v585);
      sub_19B966FCC(v603);
      v134 = 0;
      v3 = v574;
      goto LABEL_413;
    }

    if (v535 > 80.0)
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v538 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        v539 = *(a1 + 1232);
        *buf = 134349568;
        *&buf[4] = v92;
        *&buf[12] = 2050;
        *&buf[14] = v190;
        *&buf[22] = 2050;
        *&buf[24] = v539;
        _os_log_impl(&dword_19B873000, v538, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.1lf,routeHints,skipping,moveOnRouteRoads meas,routeCourse,%{public}.1lf,is somewhat different than crumb course,%{public}.1lf", buf, 0x20u);
      }

      v540 = sub_19B87DD40();
      if (*(v540 + 160) > 1 || *(v540 + 164) > 1 || *(v540 + 168) > 1 || *(v540 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
        }

        v541 = *(a1 + 1232);
        *v608 = 134349568;
        *&v608[4] = v92;
        *&v608[12] = 2050;
        *&v608[14] = v190;
        *&v608[22] = 2050;
        *&v608[24] = v541;
        v542 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,%{public}.1lf,routeHints,skipping,moveOnRouteRoads meas,routeCourse,%{public}.1lf,is somewhat different than crumb course,%{public}.1lf", v608, 32);
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::generateRouteHintMeasurement()", "CoreLocation: %s\n", v542);
        if (v542 != buf)
        {
          free(v542);
        }
      }

      goto LABEL_387;
    }
  }

LABEL_360:
  v196 = *&v603[32];
  v197 = *&v603[40];
  v198 = v586;
  v199 = v584;
  if (v584 < 0)
  {
    do
    {
      v198 = *v198;
    }

    while (!__CFADD__(v199++, 1));
  }

  else if (v584)
  {
    v200 = v584 + 1;
    do
    {
      v198 = *(v198 + 1);
      --v200;
    }

    while (v200 > 1);
  }

  sub_19BA0C01C((a1 + 608), *&v603[32], *&v603[40], v198[6], v198[7], 0.0);
  memset(v608, 0, 24);
  *&v608[24] = xmmword_19BA89720;
  v608[40] = 0;
  memset(v609, 0, 32);
  __asm { FMOV            V1.2D, #-1.0 }

  *&v609[112] = _Q1;
  *&v609[128] = 0xBFF0000000000000;
  memset(&v609[160], 0, 20);
  *&v609[180] = 1;
  *&v609[184] = 0;
  memset(&v609[192], 0, 24);
  *&v609[32] = v196;
  *&v609[40] = v197;
  *&v609[48] = *(a1 + 1200);
  *&v609[56] = v190;
  if (v201 < 8.0)
  {
    v201 = 8.0;
  }

  *&v609[64] = v201;
  *&v609[72] = v191;
  *&v609[80] = 0x3FF0000000000000;
  v203 = *(a1 + 1312);
  *&v609[88] = *(a1 + 1224);
  *&v609[96] = v203;
  v609[104] = *(a1 + 1356);
  *&v609[136] = vextq_s8(*v54, *v54, 8uLL);
  *&v609[152] = *(a1 + 1136);
  sub_19B988344(v608, 0);
  v205 = *v603;
  v204 = *&v603[8];
  if (*&v603[8])
  {
    atomic_fetch_add_explicit((*&v603[8] + 8), 1uLL, memory_order_relaxed);
  }

  v206 = *&v609[168];
  *&v609[160] = v205;
  *&v609[168] = v204;
  if (v206)
  {
    sub_19B8750F8(v206);
  }

  *&v609[176] = *&v603[16];
  *&v609[192] = *&v603[32];
  *&v609[208] = *&v603[48];
  sub_19B989CC8(&v590, v608);
  if (qword_1EAFE46D0 != -1)
  {
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
  }

  v207 = off_1EAFE4708;
  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
  {
    v208 = 0xF83E0F83E0F83E1 * ((*(a1 + 4072) - *(a1 + 4064)) >> 3);
    *buf = 134350593;
    *&buf[4] = v92;
    *&buf[12] = 2053;
    *&buf[14] = *&v609[32];
    *&buf[22] = 2053;
    *&buf[24] = *&v609[40];
    *&buf[32] = 2050;
    *&buf[34] = *&v609[56];
    *&buf[42] = 2050;
    *&buf[44] = *&v609[64];
    *&buf[52] = 2050;
    *&buf[54] = *&v609[72];
    *&buf[62] = 2050;
    v611 = v208;
    _os_log_impl(&dword_19B873000, v207, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.1lf,routeHints,meas,moveOnRouteRoads,ll,%{sensitive}.7lf,%{sensitive}.7lf,course,%{public}.3lf,hunc,%{public}.3lf,cunc,%{public}.3lf,count,%{public}lu", buf, 0x48u);
  }

  v209 = sub_19B87DD40();
  if (*(v209 + 160) > 1 || *(v209 + 164) > 1 || *(v209 + 168) > 1 || *(v209 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    v210 = 0xF83E0F83E0F83E1 * ((*(a1 + 4072) - *(a1 + 4064)) >> 3);
    *v593 = 134350593;
    *&v593[4] = v92;
    *&v593[12] = 2053;
    *&v593[14] = *&v609[32];
    *&v593[22] = 2053;
    v594 = *&v609[40];
    v595 = 2050;
    v596 = *&v609[56];
    v597 = 2050;
    v598 = *&v609[64];
    v599 = 2050;
    v600 = *&v609[72];
    v601 = 2050;
    v602 = v210;
    v211 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,%{public}.1lf,routeHints,meas,moveOnRouteRoads,ll,%{sensitive}.7lf,%{sensitive}.7lf,course,%{public}.3lf,hunc,%{public}.3lf,cunc,%{public}.3lf,count,%{public}lu", v593, 72);
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::generateRouteHintMeasurement()", "CoreLocation: %s\n", v211);
    if (v211 != buf)
    {
      free(v211);
    }
  }

  if (*&v609[168])
  {
    sub_19B8750F8(*&v609[168]);
  }

LABEL_387:
  sub_19B916DC0(&v585);
  sub_19B966FCC(v603);
  v3 = v574;
LABEL_199:
  v102 = v590;
  v561 = v591;
  if (v591 != v590)
  {
    goto LABEL_200;
  }

  v138 = *(a1 + 4040);
  if (v138 == *(a1 + 4048))
  {
    goto LABEL_200;
  }

  v139 = *(a1 + 4048);
  v140 = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  v565 = _Q0;
  do
  {
    sub_19BA0C01C((a1 + 608), v138[4], v138[5], *(a1 + 1160), *(a1 + 1168), 0.0);
    memset(v608, 0, 24);
    *&v608[24] = xmmword_19BA89720;
    v608[40] = 0;
    memset(v609, 0, 32);
    *&v609[80] = 0xBFF0000000000000;
    *&v609[112] = v565;
    *&v609[128] = 0xBFF0000000000000;
    memset(&v609[160], 0, 20);
    *&v609[180] = 1;
    *&v609[184] = 0;
    memset(&v609[192], 0, 24);
    *&v609[32] = *(v138 + 2);
    *&v609[48] = *(a1 + 1200);
    if (v144 < 8.0)
    {
      v144 = 8.0;
    }

    *&v609[56] = *(v138 + 6);
    *&v609[64] = v144;
    *&v609[72] = 0x4014000000000000;
    v145 = *(a1 + 1312);
    *&v609[88] = *(a1 + 1224);
    *&v609[96] = v145;
    v609[104] = *(a1 + 1356);
    *&v609[136] = vextq_s8(*v54, *v54, 8uLL);
    *&v609[152] = *(a1 + 1136);
    sub_19B988344(v608, 0);
    *&v609[80] = 1.0 / *&v609[72];
    v147 = *v138;
    v146 = *(v138 + 1);
    if (v146)
    {
      atomic_fetch_add_explicit((v146 + 8), 1uLL, memory_order_relaxed);
    }

    v148 = *&v609[168];
    *&v609[160] = v147;
    *&v609[168] = v146;
    if (v148)
    {
      sub_19B8750F8(v148);
    }

    v149 = *(v138 + 1);
    v150 = *(v138 + 2);
    *&v609[208] = v138[6];
    *&v609[176] = v149;
    *&v609[192] = v150;
    if (*(a1 + 1320) <= 0.0 || (v151 = *(a1 + 1232), v151 < 0.0))
    {
      if (*(a1 + 1848) != 1)
      {
        goto LABEL_286;
      }

      v151 = *(a1 + 2136);
      if (v151 < 0.0)
      {
        goto LABEL_286;
      }
    }

    v152 = fmod(v151 - *&v609[56], 360.0);
    if (v152 < 0.0)
    {
      v152 = v152 + 360.0;
    }

    v153 = v152 + -360.0;
    if (v152 <= 180.0)
    {
      v153 = v152;
    }

    if ((v154 = fabs(v153), v154 < 135.0) && (v154 <= 60.0 || *(a1 + 4032) <= 0) && (v154 <= 80.0 || (0x6DB6DB6DB6DB6DB7 * ((*(a1 + 4048) - *(a1 + 4040)) >> 3)) < 2))
    {
      if (v153 == 0.0)
      {
        v164 = *&v609[80];
      }

      else
      {
        v164 = 1.0 / v154;
      }

      *&v609[80] = v164;
      sub_19B988344(v608, 0);
      v165 = v591;
      if (v591 >= v592)
      {
        v178 = sub_19B989D6C(&v590, v608);
      }

      else
      {
        *v591 = *v608;
        v166 = *&v608[16];
        v167 = *&v608[32];
        v168 = *&v609[16];
        v165[3] = *v609;
        v165[4] = v168;
        v165[1] = v166;
        v165[2] = v167;
        v169 = *&v609[32];
        v170 = *&v609[48];
        v171 = *&v609[80];
        v165[7] = *&v609[64];
        v165[8] = v171;
        v165[5] = v169;
        v165[6] = v170;
        v172 = *&v609[96];
        v173 = *&v609[112];
        v174 = *&v609[144];
        v165[11] = *&v609[128];
        v165[12] = v174;
        v165[9] = v172;
        v165[10] = v173;
        *(v165 + 26) = *&v609[160];
        v175 = *&v609[168];
        *(v165 + 27) = *&v609[168];
        if (v175)
        {
          atomic_fetch_add_explicit((v175 + 8), 1uLL, memory_order_relaxed);
        }

        v176 = *&v609[176];
        v177 = *&v609[192];
        *(v165 + 32) = *&v609[208];
        v165[14] = v176;
        v165[15] = v177;
        v178 = v165 + 264;
      }

      v591 = v178;
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v179 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        v180 = 0xF83E0F83E0F83E1 * ((*(a1 + 4072) - *(a1 + 4064)) >> 3);
        *buf = 134350849;
        *&buf[4] = v92;
        *&buf[12] = 2053;
        *&buf[14] = *&v609[32];
        *&buf[22] = 2053;
        *&buf[24] = *&v609[40];
        *&buf[32] = 2050;
        *&buf[34] = *&v609[56];
        *&buf[42] = 2050;
        *&buf[44] = *&v609[64];
        *&buf[52] = 2050;
        *&buf[54] = *&v609[72];
        *&buf[62] = 2050;
        v611 = v180;
        v612 = 2050;
        v613 = *&v609[80];
        _os_log_impl(&dword_19B873000, v179, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.1lf,routeHints,meas,projection,ll,%{sensitive}.7lf,%{sensitive}.7lf,course,%{public}.3lf,hunc,%{public}.3lf,cunc,%{public}.3lf,count,%{public}lu,confidence,%{public}.4lf", buf, 0x52u);
      }

      v181 = sub_19B87DD40();
      if (*(v181 + 160) > 1 || *(v181 + 164) > 1 || *(v181 + 168) > 1 || *(v181 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
        }

        v182 = 0xF83E0F83E0F83E1 * ((*(a1 + 4072) - *(a1 + 4064)) >> 3);
        *v603 = 134350849;
        *&v603[4] = v92;
        *&v603[12] = 2053;
        *&v603[14] = *&v609[32];
        *&v603[22] = 2053;
        *&v603[24] = *&v609[40];
        *&v603[32] = 2050;
        *&v603[34] = *&v609[56];
        *&v603[42] = 2050;
        *&v603[44] = *&v609[64];
        *&v603[52] = 2050;
        *&v603[54] = *&v609[72];
        v604 = 2050;
        v605 = v182;
        v606 = 2050;
        v607 = *&v609[80];
        v163 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,%{public}.1lf,routeHints,meas,projection,ll,%{sensitive}.7lf,%{sensitive}.7lf,course,%{public}.3lf,hunc,%{public}.3lf,cunc,%{public}.3lf,count,%{public}lu,confidence,%{public}.4lf", v603, 82);
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::generateRouteHintMeasurement()", "CoreLocation: %s\n", v163);
        goto LABEL_297;
      }
    }

    else
    {
LABEL_286:
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v155 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        v156 = *(v138 + 6);
        v157 = *(a1 + 1232);
        v158 = *(a1 + 4032);
        *buf = 134349824;
        *&buf[4] = v92;
        *&buf[12] = 2050;
        *&buf[14] = v156;
        *&buf[22] = 2050;
        *&buf[24] = v157;
        *&buf[32] = 1026;
        *&buf[34] = v158;
        _os_log_impl(&dword_19B873000, v155, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.1lf,routeHints, no meas, projection,routeCourse,%{public}.1lf,is very different than crumb course,%{public}.1lf,rejection,%{public}d", buf, 0x26u);
      }

      v159 = sub_19B87DD40();
      ++v140;
      if (*(v159 + 160) > 1 || *(v159 + 164) > 1 || *(v159 + 168) > 1 || *(v159 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
        }

        v160 = *(v138 + 6);
        v161 = *(a1 + 1232);
        v162 = *(a1 + 4032);
        *v603 = 134349824;
        *&v603[4] = v92;
        *&v603[12] = 2050;
        *&v603[14] = v160;
        *&v603[22] = 2050;
        *&v603[24] = v161;
        *&v603[32] = 1026;
        *&v603[34] = v162;
        v163 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,%{public}.1lf,routeHints, no meas, projection,routeCourse,%{public}.1lf,is very different than crumb course,%{public}.1lf,rejection,%{public}d", v603, 38);
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::generateRouteHintMeasurement()", "CoreLocation: %s\n", v163);
LABEL_297:
        if (v163 != buf)
        {
          free(v163);
        }
      }
    }

    if (*&v609[168])
    {
      sub_19B8750F8(*&v609[168]);
    }

    v138 += 7;
  }

  while (v138 != v139);
  v102 = v590;
  v561 = v591;
  if (v140 > 0 && 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 4048) - *(a1 + 4040)) >> 3) == v140 && v591 == v590)
  {
    ++*(a1 + 4032);
  }

LABEL_200:
  if (v561 == v102)
  {
    v134 = 0;
    v71 = (a1 + 992);
LABEL_413:
    v93 = v560;
    goto LABEL_414;
  }

  *(a1 + 4032) = 0;
  v103 = -1.0;
  v564 = 0.0;
  v104 = -1.0;
  do
  {
    v105 = *(a1 + 4088);
    v106 = *(a1 + 4096);
    if (v105 == v106)
    {
      goto LABEL_228;
    }

    v567 = 1;
    do
    {
      v107 = vabdd_f64(v105[23], *(v102 + 184));
      if (v103 < 0.0)
      {
        v103 = v107;
      }

      sub_19BA0C01C((a1 + 608), *(v102 + 80), *(v102 + 88), v105[10], v105[11], 0.0);
      if (v108 < v104 || v104 < 0.0)
      {
        v104 = v108;
      }

      if (v108 < 0.001)
      {
        v110 = *(v102 + 256) >= 0.2;
        *v603 = v603;
        *&v603[8] = v603;
        *&v603[16] = 0;
        if ((*(*v576 + 72))(v576, v603, v102 + 208, v110, 0))
        {
          v111 = *&v603[16];
          v567 = *&v603[16] > 1uLL;
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
          }

          v112 = off_1EAFE4708;
          if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134349568;
            *&buf[4] = v92;
            *&buf[12] = 1026;
            *&buf[14] = v111 > 1;
            *&buf[18] = 2050;
            *&buf[20] = *&v603[16];
            _os_log_impl(&dword_19B873000, v112, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.1lf,routeHints,duplicate measurement check,measurementGood,%{public}d,vector,%{public}lu", buf, 0x1Cu);
          }

          v113 = sub_19B87DD40();
          if (*(v113 + 160) > 1 || *(v113 + 164) > 1 || *(v113 + 168) > 1 || *(v113 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE46D0 != -1)
            {
              dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
            }

            *v608 = 134349568;
            *&v608[4] = v92;
            *&v608[12] = 1026;
            *&v608[14] = v111 > 1;
            *&v608[18] = 2050;
            *&v608[20] = *&v603[16];
            v114 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,%{public}.1lf,routeHints,duplicate measurement check,measurementGood,%{public}d,vector,%{public}lu", v608, 28);
            sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::generateRouteHintMeasurement()", "CoreLocation: %s\n", v114);
            if (v114 != buf)
            {
              free(v114);
            }
          }
        }

        sub_19B941414(v603);
      }

      v105 += 33;
    }

    while (v105 != v106);
    if (v567)
    {
LABEL_228:
      v115 = v92;
      v116 = *(v102 + 128);
      v117 = *(a1 + 4072);
      if (v117 >= *(a1 + 4080))
      {
        v130 = sub_19B989D6C((a1 + 4064), v102);
      }

      else
      {
        *v117 = *v102;
        v118 = *(v102 + 16);
        v119 = *(v102 + 32);
        v120 = *(v102 + 64);
        *(v117 + 48) = *(v102 + 48);
        *(v117 + 64) = v120;
        *(v117 + 16) = v118;
        *(v117 + 32) = v119;
        v121 = *(v102 + 80);
        v122 = *(v102 + 96);
        v123 = *(v102 + 128);
        *(v117 + 112) = *(v102 + 112);
        *(v117 + 128) = v123;
        *(v117 + 80) = v121;
        *(v117 + 96) = v122;
        v124 = *(v102 + 144);
        v125 = *(v102 + 160);
        v126 = *(v102 + 192);
        *(v117 + 176) = *(v102 + 176);
        *(v117 + 192) = v126;
        *(v117 + 144) = v124;
        *(v117 + 160) = v125;
        *(v117 + 208) = *(v102 + 208);
        v127 = *(v102 + 216);
        *(v117 + 216) = v127;
        if (v127)
        {
          atomic_fetch_add_explicit((v127 + 8), 1uLL, memory_order_relaxed);
        }

        v128 = *(v102 + 224);
        v129 = *(v102 + 240);
        *(v117 + 256) = *(v102 + 256);
        *(v117 + 224) = v128;
        *(v117 + 240) = v129;
        v130 = v117 + 264;
      }

      v564 = v564 + v116;
      *(a1 + 4072) = v130;
      v92 = v115;
    }

    v102 += 264;
  }

  while (v102 != v561);
  if (v104 < 0.0 || v103 <= 0.0 || v103 >= 5.0 || v104 <= v103 * 50.0)
  {
    v71 = (a1 + 992);
    v93 = v560;
    if (v564 > 0.0)
    {
      v183 = *(a1 + 4064);
      v184 = *(a1 + 4072);
      while (v183 != v184)
      {
        *(v183 + 128) = *(v183 + 128) / v564;
        v183 += 264;
      }
    }

    v134 = 1;
  }

  else
  {
    v71 = (a1 + 992);
    v93 = v560;
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    v131 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349312;
      *&buf[4] = v92;
      *&buf[12] = 2050;
      *&buf[14] = v104;
      _os_log_impl(&dword_19B873000, v131, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.1lf,routeHints,jump in route hint measurement,%{public}.3lf,rejecting", buf, 0x16u);
    }

    v132 = sub_19B87DD40();
    if (*(v132 + 160) > 1 || *(v132 + 164) > 1 || *(v132 + 168) > 1 || *(v132 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      *v608 = 134349312;
      *&v608[4] = v92;
      *&v608[12] = 2050;
      *&v608[14] = v104;
      v133 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,%{public}.1lf,routeHints,jump in route hint measurement,%{public}.3lf,rejecting", v608, 22);
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::generateRouteHintMeasurement()", "CoreLocation: %s\n", v133);
      if (v133 != buf)
      {
        free(v133);
      }
    }

    sub_19B9882F8((a1 + 4064));
    v134 = 0;
  }

LABEL_414:
  *buf = &v590;
  sub_19B98868C(buf);
LABEL_415:
  if (v93)
  {
    sub_19B8750F8(v93);
    if (v134)
    {
      goto LABEL_417;
    }

LABEL_440:
    v90 = 0;
    goto LABEL_441;
  }

  if (!v134)
  {
    goto LABEL_440;
  }

LABEL_417:
  v217 = *(a1 + 4064);
  v218 = (a1 + 1856);
  if (v217 == *(a1 + 4072))
  {
    v90 = 0;
  }

  else
  {
    v219 = *(a1 + 4072);
    v220 = *(v217 + 184);
    v221 = vabdd_f64(v220, *(a1 + 1152));
    v90 = v221 <= 0.01;
    if (v221 > 0.01)
    {
      goto LABEL_441;
    }

    while (1)
    {
      *&v609[224] = 0;
      *&v609[232] = 0;
      memset(&v609[184], 0, 34);
      memset(&v609[240], 0, 75);
      memset(&v609[320], 0, 56);
      *&v609[166] = 0u;
      *&v609[152] = 0u;
      *&v609[136] = 0u;
      memset(&v609[56], 0, 80);
      *&v609[40] = 0u;
      *&v609[376] = 0xBFF0000000000000;
      *&v609[8] = *(v217 + 80);
      v222 = *(v217 + 104);
      v223 = *(v217 + 112);
      v224 = *(v217 + 120);
      *&v609[24] = *(v217 + 96);
      *&v609[32] = v223;
      *&v609[144] = v224;
      *&v609[152] = *(v217 + 160);
      *&v609[168] = *(v217 + 176);
      v225 = *(v217 + 144);
      *&v609[48] = *(v217 + 136);
      *&v609[56] = v222;
      *v608 = 0;
      *&v608[32] = 0;
      *&v608[40] = 0;
      *v609 = 0xBFF0000000000000;
      *&v609[136] = v225;
      v609[180] = *(v217 + 152);
      *&v608[24] = v220;
      *&v608[8] = vextq_s8(*(v217 + 192), *(v217 + 192), 8uLL);
      v226 = *(a1 + 864);
      v227 = *(a1 + 872);
      while (v226 != v227)
      {
        memset(buf, 0, 24);
        *&buf[24] = 0x3FF0000000000000;
        memset(&buf[32], 0, 32);
        LODWORD(v611) = 0;
        sub_19B940928(a1, v217, v226, v608, v603, v593, &v590, buf, 0);
        LODWORD(v611) = 2;
        *&buf[24] = *(v217 + 128);
        v228 = (v226 + 11);
        sub_19B973D80(v228, buf);
        sub_19B988454((v228 - 88));
        v226 = (v228 + 24);
      }

      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v229 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        v230 = *(a1 + 1136);
        *buf = 134349056;
        *&buf[4] = v230;
        _os_log_impl(&dword_19B873000, v229, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.1lf,routeHints,used route-hint", buf, 0xCu);
      }

      v231 = sub_19B87DD40();
      if (*(v231 + 160) > 1 || *(v231 + 164) > 1 || *(v231 + 168) > 1 || *(v231 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
        }

        v232 = *(a1 + 1136);
        *v603 = 134349056;
        *&v603[4] = v232;
        v233 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,%{public}.1lf,routeHints,used route-hint", v603, 12);
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::integrateRouteHint()", "CoreLocation: %s\n", v233);
        if (v233 != buf)
        {
          free(v233);
        }
      }

      if ((v609[103] & 0x80000000) != 0)
      {
        operator delete(*&v609[80]);
      }

      if (v217 + 264 == v219)
      {
        break;
      }

      v220 = *(v217 + 448);
      v217 += 264;
      if (vabdd_f64(v220, *(a1 + 1152)) > 0.01)
      {
        goto LABEL_441;
      }
    }

    v90 = 1;
    v218 = (a1 + 1856);
  }

LABEL_443:
  *(a1 + 1845) = v90;
  v234 = *(a1 + 872);
  v235 = *(a1 + 864);
  v236 = (a1 + 1128);
  if (v234 == v235)
  {
LABEL_454:
    sub_19B98A0DC(*(a1 + 992));
    *(a1 + 984) = v71;
    *(a1 + 992) = 0u;
    v244 = *(a1 + 872);
    v245 = *(a1 + 864);
    v246 = v244 - v245;
    if (v244 == v245)
    {
      goto LABEL_798;
    }

    if (*(a1 + 96) == 1)
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v247 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v247, OS_LOG_TYPE_DEBUG, "CLMM,resample", buf, 2u);
      }

      v248 = sub_19B87DD40();
      v218 = (a1 + 1856);
      if (*(v248 + 160) > 1 || *(v248 + 164) > 1 || *(v248 + 168) > 1 || *(v248 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
        }

        *v608 = 0;
        v249 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,resample", v608, 2);
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::resample()", "CoreLocation: %s\n", v249);
        if (v249 != buf)
        {
          free(v249);
        }

        v218 = (a1 + 1856);
      }
    }

    v571 = v71;
    if (*(a1 + 1224) == 0.0 || *(a1 + 1356) == 1)
    {
      v250 = (a1 + 1128);
      v251 = 5;
      v252 = 48;
    }

    else
    {
      v250 = (a1 + 1128);
      v251 = 10;
      v252 = 96;
    }

    memset(v608, 0, 24);
    v253 = v252;
    sub_19B973FA0(v608, v252);
    *buf = 0;
    sub_19B988C58(v603, 0x6DB6DB6DB6DB6DB7 * (v246 >> 4), buf);
    if (*(a1 + 2232) == 1 && *(a1 + 2489) == 1 && *v218)
    {
      v254 = v251;
      do
      {
        sub_19B973C04(v608, v218);
        sub_19B970504();
        --v254;
      }

      while (v254);
    }

    else
    {
      v251 = 0;
    }

    v255 = 0;
    v566 = (a1 + 984);
    v256 = v253 - v251;
    do
    {
      v257 = random();
      v258 = *(a1 + 936);
      v259 = *(a1 + 944);
      if (v259 != v258)
      {
        v260 = vcvts_n_f32_s64(v257, 0x1FuLL);
        v261 = v259 - v258;
        v259 = *(a1 + 936);
        do
        {
          v262 = v261 >> 1;
          v263 = &v259[v261 >> 1];
          v265 = *v263;
          v264 = v263 + 1;
          v261 += ~(v261 >> 1);
          if (v265 < v260)
          {
            v259 = v264;
          }

          else
          {
            v261 = v262;
          }
        }

        while (v261);
      }

      v266 = v259 - v258;
      v267 = *v603;
      ++*(*v603 + (v266 << 30 >> 30));
      ++v255;
    }

    while (v255 != v256);
    v268 = *(a1 + 864);
    v269 = *(a1 + 872);
    if (v268 != v269)
    {
      v270 = 0;
      do
      {
        if (v270 >= (*&v603[8] - v267) >> 2)
        {
          break;
        }

        if (*(v267 + 4 * v270) >= 1)
        {
          v271 = 0;
          do
          {
            sub_19B973C04(v608, v268);
            sub_19B970504();
            ++v271;
            v267 = *v603;
          }

          while (v271 < *(*v603 + 4 * v270));
          v269 = *(a1 + 872);
        }

        v268 += 112;
        ++v270;
      }

      while (v268 != v269);
    }

    v272 = *&v608[8];
    v273 = 0x6DB6DB6DB6DB6DB7 * ((*&v608[8] - *v608) >> 4);
    if (v273 <= v253)
    {
      v277 = *(a1 + 864);
      *(a1 + 864) = *v608;
      *(a1 + 872) = v272;
      *v608 = v277;
      *&v608[8] = v269;
      v278 = *(a1 + 880);
      *(a1 + 880) = *&v608[16];
      *&v608[16] = v278;
    }

    else if (*(a1 + 96) == 1)
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v274 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
      {
        *buf = 67240192;
        *&buf[4] = v273;
        _os_log_impl(&dword_19B873000, v274, OS_LOG_TYPE_ERROR, "CLMM,Unexpected number of particles after resampling,%{public}d", buf, 8u);
      }

      v275 = sub_19B87DD40();
      if ((*(v275 + 160) & 0x80000000) == 0 || (*(v275 + 164) & 0x80000000) == 0 || (*(v275 + 168) & 0x80000000) == 0 || *(v275 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
        }

        *v593 = 67240192;
        *&v593[4] = v273;
        v276 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMM,Unexpected number of particles after resampling,%{public}d", v593, 8);
        sub_19B885924("Generic", 1, 0, 0, "BOOL CLParticleMapMatcher::resample()", "CoreLocation: %s\n", v276);
        if (v276 != buf)
        {
          free(v276);
        }
      }
    }

    if (*v603)
    {
      *&v603[8] = *v603;
      operator delete(*v603);
    }

    *buf = v608;
    sub_19B988734(buf);
    if (v273 > v253)
    {
      goto LABEL_820;
    }

    v236 = v250;
    if (*(a1 + 872) == *(a1 + 864))
    {
LABEL_798:
      if ((sub_19B974088(a1) & 1) == 0)
      {
        goto LABEL_820;
      }

      sub_19B9781D0(a1);
      v435 = (a1 + 1856);
      if ((sub_19B979A54(a1) & 1) == 0)
      {
        goto LABEL_815;
      }

      v603[0] = 0;
      if ((sub_19B97AC2C(a1, v603, v432, v433, v434) & 1) == 0)
      {
        goto LABEL_820;
      }

      if (v603[0] == 1 && !sub_19B97B7CC(a1))
      {
        goto LABEL_815;
      }

      if (*(a1 + 1392) == 1 && (v436 = *(a1 + 1016), *(a1 + 777) = *(v436 + 16), *(a1 + 780) = *(v436 + 20), *(a1 + 784) = *(a1 + 1649), *(a1 + 2232) == 1))
      {
        v437 = *(a1 + 1240);
        if (*(a1 + 2080) != v437)
        {
          v438 = fmod(*(a1 + 1432) - *(a1 + 2272), 360.0);
          if (v438 < 0.0)
          {
            v438 = v438 + 360.0;
          }

          if (v438 > 180.0)
          {
            v438 = v438 + -360.0;
          }

          if (fabs(v438) > 45.0)
          {
            v439 = *(a1 + 3080);
            if (v439 == a1 + 3072)
            {
              v441 = 1;
            }

            else
            {
              do
              {
                v440 = **(v439 + 16);
                _ZF = v437 == v440;
                v441 = v437 != v440;
                if (_ZF)
                {
                  break;
                }

                v439 = *(v439 + 8);
              }

              while (v439 != a1 + 3072);
            }

            for (i = *(a1 + 3128); i != a1 + 3120; i = *(i + 8))
            {
              if (v437 == **(i + 16))
              {
                goto LABEL_927;
              }
            }

            if (v441)
            {
              v575 = v3;
              v445 = *(a1 + 1024);
              if (v445)
              {
                atomic_fetch_add_explicit(&v445->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v446 = *(a1 + 1856);
              v447 = *(a1 + 1864);
              if (v447)
              {
                atomic_fetch_add_explicit(&v447->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v449 = *(v436 + 136);
              v448 = *(v436 + 144);
              v450 = 0uLL;
              v451 = 0uLL;
              if (v448 != v449)
              {
                v451 = *v449;
              }

              v454 = v446 + 136;
              v453 = *(v446 + 136);
              v452 = *(v454 + 8);
              if (v452 != v453)
              {
                v450 = *v453;
              }

              v578 = vdupq_n_s64(0x3E7AD7F29ABCAF48uLL);
              v455 = vmovn_s64(vcgtq_f64(v578, vabdq_f64(v451, v450)));
              if (vand_s8(v455, vdup_lane_s32(v455, 1)).u8[0])
              {
                goto LABEL_860;
              }

              v456 = 0uLL;
              v457 = 0uLL;
              if (v448 != v449)
              {
                v457 = *v449;
              }

              if (v452 != v453)
              {
                v456 = v452[-1];
              }

              v458 = vmovn_s64(vcgtq_f64(v578, vabdq_f64(v457, v456)));
              if (vand_s8(v458, vdup_lane_s32(v458, 1)).u8[0])
              {
                goto LABEL_860;
              }

              v459 = 0uLL;
              v460 = 0uLL;
              if (v448 != v449)
              {
                v460 = v448[-1];
              }

              if (v452 != v453)
              {
                v459 = *v453;
              }

              v461 = vmovn_s64(vcgtq_f64(v578, vabdq_f64(v460, v459)));
              if (vand_s8(v461, vdup_lane_s32(v461, 1)).u8[0])
              {
                goto LABEL_860;
              }

              v462 = 0uLL;
              v463 = 0uLL;
              if (v448 != v449)
              {
                v463 = v448[-1];
              }

              if (v452 != v453)
              {
                v462 = v452[-1];
              }

              v464 = vmovn_s64(vcgtq_f64(v578, vabdq_f64(v463, v462)));
              if (vand_s8(v464, vdup_lane_s32(v464, 1)).u8[0])
              {
LABEL_860:
                v465 = 1;
              }

              else
              {
                v465 = 0;
              }

              if (*(a1 + 96) == 1)
              {
                if (qword_1EAFE46D0 != -1)
                {
                  dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
                }

                v466 = off_1EAFE4708;
                if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
                {
                  v467 = *(a1 + 1136);
                  v468 = **(a1 + 1016);
                  v469 = **(a1 + 1856);
                  *buf = 134349825;
                  *&buf[4] = v467;
                  *&buf[12] = 1026;
                  *&buf[14] = v465;
                  *&buf[18] = 2049;
                  *&buf[20] = v468;
                  *&buf[28] = 2049;
                  *&buf[30] = v469;
                  _os_log_impl(&dword_19B873000, v466, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.1lf,hopping check,connecting roads,%{public}d,current road,%{private}lld,prior road,%{private}lld", buf, 0x26u);
                }

                v470 = sub_19B87DD40();
                if (*(v470 + 160) > 1 || *(v470 + 164) > 1 || *(v470 + 168) > 1 || *(v470 + 152))
                {
                  bzero(buf, 0x65CuLL);
                  if (qword_1EAFE46D0 != -1)
                  {
                    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
                  }

                  v471 = *(a1 + 1136);
                  v472 = **(a1 + 1016);
                  v473 = **(a1 + 1856);
                  *v608 = 134349825;
                  *&v608[4] = v471;
                  *&v608[12] = 1026;
                  *&v608[14] = v465;
                  *&v608[18] = 2049;
                  *&v608[20] = v472;
                  *&v608[28] = 2049;
                  *&v608[30] = v473;
                  v474 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,%{public}.1lf,hopping check,connecting roads,%{public}d,current road,%{private}lld,prior road,%{private}lld", v608, 38);
                  sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLParticleMapMatcher::match(CLMapCrumb &)", "CoreLocation: %s\n", v474);
                  if (v474 != buf)
                  {
                    free(v474);
                  }
                }
              }

              if (v447)
              {
                sub_19B8750F8(v447);
              }

              if (v445)
              {
                sub_19B8750F8(v445);
              }

              if ((v465 & 1) == 0)
              {
                v475 = *(a1 + 1656);
                if (!v475 || !*v475)
                {
                  goto LABEL_907;
                }

                v476 = *(a1 + 1016);
                v477 = *(a1 + 1024);
                if (v477)
                {
                  atomic_fetch_add_explicit(&v477->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                v478 = *(a1 + 1856);
                v479 = *(a1 + 1864);
                if (v479)
                {
                  atomic_fetch_add_explicit(&v479->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                v480 = *(*(a1 + 1656) + 136);
                v570 = 0u;
                v572 = 0u;
                if (*(*(a1 + 1656) + 144) != v480)
                {
                  v570 = *v480;
                }

                v481 = v478[18];
                if (v481 != v478[17])
                {
                  v572 = *(v481 - 16);
                }

                if (*(a1 + 96))
                {
                  if (qword_1EAFE46D0 != -1)
                  {
                    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
                  }

                  v482 = off_1EAFE4708;
                  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
                  {
                    v483 = *(a1 + 1136);
                    v484 = *v478;
                    v485 = **(a1 + 1656);
                    v486 = *v476;
                    *buf = 134349825;
                    *&buf[4] = v483;
                    *&buf[12] = 2049;
                    *&buf[14] = v484;
                    *&buf[22] = 2049;
                    *&buf[24] = v485;
                    *&buf[32] = 2049;
                    *&buf[34] = v486;
                    _os_log_impl(&dword_19B873000, v482, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.1lf,hopping check,prior road,%{private}lld, connected to the incoming road,%{private}lld, of the current solution road,%{private}lld", buf, 0x2Au);
                  }

                  v487 = sub_19B87DD40();
                  if (*(v487 + 160) > 1 || *(v487 + 164) > 1 || *(v487 + 168) > 1 || *(v487 + 152))
                  {
                    bzero(buf, 0x65CuLL);
                    if (qword_1EAFE46D0 != -1)
                    {
                      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
                    }

                    v488 = *(a1 + 1136);
                    v489 = *v478;
                    v490 = **(a1 + 1656);
                    v491 = *v476;
                    *v608 = 134349825;
                    *&v608[4] = v488;
                    *&v608[12] = 2049;
                    *&v608[14] = v489;
                    *&v608[22] = 2049;
                    *&v608[24] = v490;
                    *&v608[32] = 2049;
                    *&v608[34] = v491;
                    v492 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,%{public}.1lf,hopping check,prior road,%{private}lld, connected to the incoming road,%{private}lld, of the current solution road,%{private}lld", v608, 42);
                    sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLParticleMapMatcher::match(CLMapCrumb &)", "CoreLocation: %s\n", v492);
                    if (v492 != buf)
                    {
                      free(v492);
                    }
                  }
                }

                v493 = vmovn_s64(vcgtq_f64(v578, vabdq_f64(v570, v572)));
                v579 = vand_s8(v493, vdup_lane_s32(v493, 1)).u8[0];
                if (v479)
                {
                  sub_19B8750F8(v479);
                }

                if (v477)
                {
                  sub_19B8750F8(v477);
                }

                v3 = v575;
                if ((v579 & 1) == 0)
                {
LABEL_907:
                  sub_19BA0C01C((a1 + 608), *(a1 + 2256), *(a1 + 2264), *(a1 + 1416), *(a1 + 1424), *(a1 + 1200));
                  v495 = v494 > 35.0 || *(a1 + 2680) > 15;
                  if (*(a1 + 96) == 1)
                  {
                    if (qword_1EAFE46D0 != -1)
                    {
                      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
                    }

                    v496 = off_1EAFE4708;
                    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
                    {
                      v497 = *(a1 + 1136);
                      v498 = *(a1 + 2272);
                      v499 = *(a1 + 1432);
                      v500 = **(a1 + 1016);
                      v501 = **(a1 + 1856);
                      *buf = 134350337;
                      *&buf[4] = v497;
                      *&buf[12] = 1026;
                      *&buf[14] = v495;
                      *&buf[18] = 2050;
                      *&buf[20] = v498;
                      *&buf[28] = 2050;
                      *&buf[30] = v499;
                      *&buf[38] = 2049;
                      *&buf[40] = v500;
                      *&buf[48] = 2049;
                      *&buf[50] = v501;
                      _os_log_impl(&dword_19B873000, v496, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.1lf,hopping between roads detected,reset,%{public}d,priorfullSnapCourse,%{public}.1lf,currentFullSnapCourse,%{public}.1lf,priorId,%{private}llu,currentId,%{private}llu", buf, 0x3Au);
                    }

                    v502 = sub_19B87DD40();
                    if (*(v502 + 160) > 1 || *(v502 + 164) > 1 || *(v502 + 168) > 1 || *(v502 + 152))
                    {
                      bzero(buf, 0x65CuLL);
                      if (qword_1EAFE46D0 != -1)
                      {
                        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
                      }

                      v503 = *(a1 + 1136);
                      v504 = *(a1 + 2272);
                      v505 = *(a1 + 1432);
                      v506 = **(a1 + 1016);
                      v507 = **(a1 + 1856);
                      *v608 = 134350337;
                      *&v608[4] = v503;
                      *&v608[12] = 1026;
                      *&v608[14] = v495;
                      *&v608[18] = 2050;
                      *&v608[20] = v504;
                      *&v608[28] = 2050;
                      *&v608[30] = v505;
                      *&v608[38] = 2049;
                      *&v608[40] = v506;
                      *v609 = 2049;
                      *&v609[2] = v507;
                      v508 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,%{public}.1lf,hopping between roads detected,reset,%{public}d,priorfullSnapCourse,%{public}.1lf,currentFullSnapCourse,%{public}.1lf,priorId,%{private}llu,currentId,%{private}llu", v608, 58);
                      sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLParticleMapMatcher::match(CLMapCrumb &)", "CoreLocation: %s\n", v508);
                      if (v508 != buf)
                      {
                        free(v508);
                      }
                    }
                  }

                  v3 = v575;
                  if (v495)
                  {
                    (*(*a1 + 40))(a1);
                    v64 = 0;
                    ++*(a1 + 104);
                    v3 = v575;
                    goto LABEL_817;
                  }
                }
              }
            }
          }
        }

LABEL_927:
        sub_19B91737C((a1 + 3072), *(a1 + 3056), a1 + 3048);
        v435 = (a1 + 1856);
        sub_19B916DC0((a1 + 3048));
        v443 = (a1 + 3096);
        sub_19B91737C((a1 + 3120), *(a1 + 3104), a1 + 3096);
      }

      else
      {
        sub_19B916DC0((a1 + 3072));
        v443 = (a1 + 3120);
      }

      sub_19B916DC0(v443);
      if (*(a1 + 1008) == 1)
      {
        v509 = **(a1 + 1016);
        *buf = v509;
        v510 = *(a1 + 1036);
        buf[8] = *(a1 + 1036);
        if (!*(a1 + 928) || (v511 = *(a1 + 920), v509 != *(v511 + 16)) || v510 != *(v511 + 24))
        {
          sub_19B9838D4(a1 + 912, buf);
        }

        if (*(a1 + 1008) == 1 && *(a1 + 1848) == 1)
        {
          if (v509 == **v435 && v510 == *(a1 + 1876))
          {
            v512 = *(a1 + 2680) + 1;
          }

          else
          {
            v512 = 0;
          }

          *(a1 + 1840) = v512;
          sub_19BA0C01C((a1 + 608), *(a1 + 1888), *(a1 + 1896), *(a1 + 1048), *(a1 + 1056), *(a1 + 1200));
          v514 = v513;
          sub_19B973CD8(buf, v435);
          *v608 = 0;
          if (sub_19B96FEF8(a1, buf, v608, v514))
          {
            *(a1 + 2688) = 1;
            *(a1 + 2824) = *v608;
            sub_19B9710EC(a1 + 2712, buf);
            *(a1 + 2704) = *(a1 + 1976);
          }

          sub_19B966FCC(buf);
        }

        else
        {
          *(a1 + 1840) = 0;
        }
      }

      if (*(a1 + 2688) == 1)
      {
        if (*(a1 + 1008) != 1 || (sub_19BA0C01C((a1 + 608), *(a1 + 2744), *(a1 + 2752), *(a1 + 1280), *(a1 + 1288), *(a1 + 1200)), *(a1 + 2696) = v515, v515 > 450.0))
        {
          *(a1 + 2688) = 0;
        }
      }

      sub_19B978C00(a1);
      if (*(a1 + 1184) == 0.0 && *(a1 + 1192) == 0.0)
      {
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
        }

        v516 = off_1EAFE4708;
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_19B873000, v516, OS_LOG_TYPE_ERROR, "CLMM,Unexpected crumb lat==lon==0", buf, 2u);
        }

        v517 = sub_19B87DD40();
        if ((*(v517 + 160) & 0x80000000) == 0 || (*(v517 + 164) & 0x80000000) == 0 || (*(v517 + 168) & 0x80000000) == 0 || *(v517 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
          }

          *v608 = 0;
          v518 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMM,Unexpected crumb lat==lon==0", v608, 2);
          sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLParticleMapMatcher::match(CLMapCrumb &)", "CoreLocation: %s\n", v518);
          if (v518 != buf)
          {
            free(v518);
          }
        }

LABEL_820:
        (*(*a1 + 40))(a1);
        v64 = 0;
        ++*(a1 + 104);
        goto LABEL_817;
      }

      if (*(a1 + 1008) == 1)
      {
        if (*__src == 0.0 && *(a1 + 1288) == 0.0)
        {
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
          }

          v519 = off_1EAFE4708;
          if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_19B873000, v519, OS_LOG_TYPE_ERROR, "CLMM,Unexpected crumb snapLat==snapLon==0", buf, 2u);
          }

          v520 = sub_19B87DD40();
          if ((*(v520 + 160) & 0x80000000) == 0 || (*(v520 + 164) & 0x80000000) == 0 || (*(v520 + 168) & 0x80000000) == 0 || *(v520 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE46D0 != -1)
            {
              dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
            }

            *v608 = 0;
            v521 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMM,Unexpected crumb snapLat==snapLon==0", v608, 2);
            sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLParticleMapMatcher::match(CLMapCrumb &)", "CoreLocation: %s\n", v521);
            if (v521 != buf)
            {
              free(v521);
            }
          }

          goto LABEL_820;
        }

        v522 = *(a1 + 1016);
        if (v522)
        {
          *(a1 + 1477) = *(v522 + 17);
        }
      }

      v523 = *v236;
      v524 = v236[1];
      v525 = v236[3];
      a2[2] = v236[2];
      a2[3] = v525;
      *a2 = v523;
      a2[1] = v524;
      v526 = v236[4];
      v527 = v236[5];
      v528 = v236[7];
      a2[6] = v236[6];
      a2[7] = v528;
      a2[4] = v526;
      a2[5] = v527;
      std::string::operator=((a2 + 8), (a1 + 1256));
      memcpy(v581, __src, 0x118uLL);
      if (*(a1 + 1392) == 1)
      {
        *(a1 + 4008) = *(a1 + 1152);
        if (*(a1 + 776) == 1 && *(a1 + 1648) == 1)
        {
          if (*(a1 + 96) == 1)
          {
            if (qword_1EAFE46D0 != -1)
            {
              dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
            }

            v529 = off_1EAFE4708;
            if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_impl(&dword_19B873000, v529, OS_LOG_TYPE_DEBUG, "CLMM,holdCourse engaged but not snapping course", buf, 2u);
            }

            v530 = sub_19B87DD40();
            if (*(v530 + 160) > 1 || *(v530 + 164) > 1 || *(v530 + 168) > 1 || *(v530 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1EAFE46D0 != -1)
              {
                dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
              }

              *v608 = 0;
              v531 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,holdCourse engaged but not snapping course", v608, 2);
              sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLParticleMapMatcher::match(CLMapCrumb &)", "CoreLocation: %s\n", v531);
              if (v531 != buf)
              {
                free(v531);
              }
            }
          }

          *(a2 + 21) = *(a1 + 848);
        }

        sub_19B98392C(a1, a2);
        v532 = *(a1 + 1392);
        *buf = *(a2 + 24);
        if (v532 & 1) != 0 && (sub_19B93D7A0(a1, buf))
        {
          v533 = buf;
LABEL_1000:
          *(a2 + 24) = *v533;
LABEL_114:
          v64 = 1;
          goto LABEL_817;
        }
      }

      else
      {
        *(a2 + 21) = *(a1 + 848);
        ++*(a1 + 104);
        *buf = *(a2 + 24);
      }

      v533 = (a1 + 856);
      goto LABEL_1000;
    }

    if (*(a1 + 96) == 1)
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v279 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v279, OS_LOG_TYPE_DEBUG, "CLMM,Assessing candidates", buf, 2u);
      }

      v280 = sub_19B87DD40();
      if (*(v280 + 160) > 1 || *(v280 + 164) > 1 || *(v280 + 168) > 1 || *(v280 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
        }

        *v608 = 0;
        v281 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,Assessing candidates", v608, 2);
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::assessCandidates()", "CoreLocation: %s\n", v281);
        if (v281 != buf)
        {
          free(v281);
        }
      }
    }

    v282 = *(a1 + 16);
    v568 = *(a1 + 8);
    if (v282)
    {
      atomic_fetch_add_explicit(&v282->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v556 = v282;
    v562 = *(a1 + 1000);
    v283 = *(a1 + 984);
    if (v283 != v571)
    {
      while (1)
      {
        size = v283[2].__r_.__value_.__l.__size_;
        v283[8].__r_.__value_.__s.__data_[8] = 0;
        v283[8].__r_.__value_.__s.__data_[0] = 0;
        if (!size)
        {
          break;
        }

        if (*(size + 17) == 1)
        {
          *(a1 + 1844) = 1;
        }

        v285 = *v580;
        v286 = *(a1 + 1144);
        v287 = *(a1 + 1176);
        *&v283[208].__r_.__value_.__r.__words[1] = *(a1 + 1160);
        *&v283[209].__r_.__value_.__l.__data_ = v287;
        *&v283[207].__r_.__value_.__l.__data_ = v285;
        *&v283[207].__r_.__value_.__r.__words[2] = v286;
        v288 = *(a1 + 1192);
        v289 = *(a1 + 1208);
        v290 = *(a1 + 1240);
        *&v283[211].__r_.__value_.__l.__data_ = *(a1 + 1224);
        *&v283[211].__r_.__value_.__r.__words[2] = v290;
        *&v283[209].__r_.__value_.__r.__words[2] = v288;
        *&v283[210].__r_.__value_.__r.__words[1] = v289;
        std::string::operator=((v283 + 5096), (a1 + 1256));
        memcpy(&v283[213].__r_.__value_.__r.__words[1], __src, 0x118uLL);
        if ((sub_19B9DF3F8(v568, &v283[207], &v283[2].__r_.__value_.__l.__size_, v283[2].__r_.__value_.__s.__data_[0], &v283[111], v283[3].__r_.__value_.__l.__data_) & 1) == 0)
        {
          v236 = (a1 + 1128);
          v426 = v556;
          if (*(a1 + 96) == 1)
          {
            if (qword_1EAFE46D0 != -1)
            {
              dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
            }

            v430 = off_1EAFE4708;
            if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_impl(&dword_19B873000, v430, OS_LOG_TYPE_DEBUG, "CLMM,interpolateOnRoad returned false, determining mean road position", buf, 2u);
            }

            v431 = sub_19B87DD40();
            if (*(v431 + 160) > 1 || *(v431 + 164) > 1 || *(v431 + 168) > 1 || *(v431 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1EAFE46D0 != -1)
              {
                dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
              }

              *v608 = 0;
              v429 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,interpolateOnRoad returned false, determining mean road position", v608, 2);
              sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::assessCandidates()", "CoreLocation: %s\n", v429);
LABEL_789:
              if (v429 != buf)
              {
                free(v429);
              }

              goto LABEL_791;
            }
          }

          goto LABEL_791;
        }

        *&v283[225].__r_.__value_.__r.__words[2] = xmmword_19BA8BCC0;
        if (SLODWORD(v283[3].__r_.__value_.__l.__data_) < 1)
        {
          v291 = 0;
        }

        else
        {
          v291 = 0;
          v292 = v283;
          v293 = 237;
          do
          {
            sub_19BA0C01C((a1 + 608), *&v283[213].__r_.__value_.__l.__size_, *&v283[213].__r_.__value_.__r.__words[2], v292[141], v292[237], *(a1 + 1200));
            if (v294 <= 40.0)
            {
              v295 = v292[333];
              if (v295 > *&v283[226].__r_.__value_.__l.__data_)
              {
                *&v283[226].__r_.__value_.__l.__data_ = v295;
                v295 = v292[333];
              }

              ++v291;
              if (v295 < *&v283[225].__r_.__value_.__r.__words[2])
              {
                *&v283[225].__r_.__value_.__r.__words[2] = v295;
              }
            }

            v296 = v293 - 236;
            ++v293;
            ++v292;
          }

          while (v296 < SLODWORD(v283[3].__r_.__value_.__l.__data_));
        }

        HIDWORD(v283[3].__r_.__value_.__r.__words[0]) = v291;
        v297 = *(a1 + 872);
        v298 = *(a1 + 864);
        if (v298 != v297)
        {
          v299 = 0.0;
          do
          {
            sub_19B97106C(v298, buf);
            if (*buf == v283[1].__r_.__value_.__l.__size_ && buf[16] == v283[2].__r_.__value_.__s.__data_[0] && *&buf[8] == v283[1].__r_.__value_.__r.__words[2] && *(v298 + 56) > v299)
            {
              v297 = v298;
              v299 = *(v298 + 56);
            }

            v298 += 112;
          }

          while (v298 != *(a1 + 872));
          if (v298 != v297)
          {
            v301 = *v297;
            v300 = *(v297 + 8);
            if (v300)
            {
              atomic_fetch_add_explicit((v300 + 8), 1uLL, memory_order_relaxed);
            }

            v302 = v283[3].__r_.__value_.__r.__words[2];
            v283[3].__r_.__value_.__l.__size_ = v301;
            v283[3].__r_.__value_.__r.__words[2] = v300;
            if (v302)
            {
              sub_19B8750F8(v302);
            }

            v303 = *(v297 + 16);
            v304 = *(v297 + 32);
            v283[5].__r_.__value_.__l.__size_ = *(v297 + 48);
            *&v283[4].__r_.__value_.__l.__data_ = v303;
            *&v283[4].__r_.__value_.__r.__words[2] = v304;
            v305 = *(v297 + 56);
            *(&v283[6].__r_.__value_.__l.__data_ + 1) = *(v297 + 65);
            *&v283[5].__r_.__value_.__r.__words[2] = v305;
            if (&v283[3].__r_.__value_.__r.__words[1] != v297)
            {
              sub_19B967884(&v283[7], *(v297 + 88), *(v297 + 96), 0x8E38E38E38E38E39 * ((*(v297 + 96) - *(v297 + 88)) >> 3));
            }
          }
        }

        if (*(a1 + 96) == 1)
        {
          v306 = sub_19B8E3CB0();
          if (*v306 == 1)
          {
            v307 = *(a1 + 1136);
            sub_19B8759E8(buf, "CLMM,Time,%{public}.1lf,candidate,roadID,%{private}llu,fwd,%{public}d,countAroundMean,%{public}d");
            sub_19B98A2F4(buf);
            bzero(v306 + 56, 0x800uLL);
            if (buf[23] >= 0)
            {
              snprintf(v306 + 56, 0x800uLL, buf, v307, v283[1].__r_.__value_.__l.__size_, v283[2].__r_.__value_.__s.__data_[0], HIDWORD(v283[3].__r_.__value_.__r.__words[0]));
            }

            else
            {
              snprintf(v306 + 56, 0x800uLL, *buf, v307, v283[1].__r_.__value_.__l.__size_, v283[2].__r_.__value_.__s.__data_[0], HIDWORD(v283[3].__r_.__value_.__r.__words[0]));
            }

            Current = CFAbsoluteTimeGetCurrent();
            sub_19B8759E8(v608, v306 + 56);
            sub_19B8E3D48(v306, v608, Current, v309, v310);
            if ((v608[23] & 0x80000000) != 0)
            {
              operator delete(*v608);
            }

            if ((buf[23] & 0x80000000) != 0)
            {
              operator delete(*buf);
            }
          }

          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
          }

          v311 = off_1EAFE4708;
          if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
          {
            v312 = *(a1 + 1136);
            v313 = v283[1].__r_.__value_.__l.__size_;
            v314 = v283[2].__r_.__value_.__s.__data_[0];
            v315 = HIDWORD(v283[3].__r_.__value_.__r.__words[0]);
            *buf = 134349825;
            *&buf[4] = v312;
            *&buf[12] = 2049;
            *&buf[14] = v313;
            *&buf[22] = 1026;
            *&buf[24] = v314;
            *&buf[28] = 1026;
            *&buf[30] = v315;
            _os_log_impl(&dword_19B873000, v311, OS_LOG_TYPE_DEBUG, "CLMM,Time,%{public}.1lf,candidate,roadID,%{private}llu,fwd,%{public}d,countAroundMean,%{public}d", buf, 0x22u);
          }

          v316 = sub_19B87DD40();
          if (*(v316 + 160) > 1 || *(v316 + 164) > 1 || *(v316 + 168) > 1 || *(v316 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE46D0 != -1)
            {
              dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
            }

            v317 = *(a1 + 1136);
            v318 = v283[1].__r_.__value_.__l.__size_;
            v319 = v283[2].__r_.__value_.__s.__data_[0];
            v320 = HIDWORD(v283[3].__r_.__value_.__r.__words[0]);
            *v608 = 134349825;
            *&v608[4] = v317;
            *&v608[12] = 2049;
            *&v608[14] = v318;
            *&v608[22] = 1026;
            *&v608[24] = v319;
            *&v608[28] = 1026;
            *&v608[30] = v320;
            v321 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,Time,%{public}.1lf,candidate,roadID,%{private}llu,fwd,%{public}d,countAroundMean,%{public}d", v608, 34);
            sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::assessCandidates()", "CoreLocation: %s\n", v321);
            if (v321 != buf)
            {
              free(v321);
            }
          }
        }

        v322 = v283->__r_.__value_.__l.__size_;
        if (v322)
        {
          do
          {
            v323 = v322;
            v322 = v322->__r_.__value_.__r.__words[0];
          }

          while (v322);
        }

        else
        {
          do
          {
            v323 = v283->__r_.__value_.__r.__words[2];
            _ZF = v323->__r_.__value_.__r.__words[0] == v283;
            v283 = v323;
          }

          while (!_ZF);
        }

        v283 = v323;
        if (v323 == v571)
        {
          goto LABEL_589;
        }
      }

      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v236 = (a1 + 1128);
      v426 = v556;
      v427 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v427, OS_LOG_TYPE_ERROR, "CLMM,NULL road, bad candidate", buf, 2u);
      }

      v428 = sub_19B87DD40();
      if ((*(v428 + 160) & 0x80000000) == 0 || (*(v428 + 164) & 0x80000000) == 0 || (*(v428 + 168) & 0x80000000) == 0 || *(v428 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
        }

        *v608 = 0;
        v429 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMM,NULL road, bad candidate", v608, 2);
        sub_19B885924("Generic", 1, 0, 0, "BOOL CLParticleMapMatcher::assessCandidates()", "CoreLocation: %s\n", v429);
        goto LABEL_789;
      }

LABEL_791:
      v557 = 0;
      ++*(a1 + 104);
LABEL_794:
      if (v426)
      {
        sub_19B8750F8(v426);
        if ((v557 & 1) == 0)
        {
          goto LABEL_815;
        }
      }

      else if (!v557)
      {
        goto LABEL_815;
      }

      goto LABEL_798;
    }

LABEL_589:
    if (v562 < 2)
    {
      v557 = 1;
      v236 = (a1 + 1128);
      goto LABEL_793;
    }

    v324 = *v566;
    v557 = 1;
    v325 = v571;
    v236 = (a1 + 1128);
    if (*v566 == v571)
    {
LABEL_793:
      v426 = v556;
      goto LABEL_794;
    }

    __asm { FMOV            V0.2D, #-1.0 }

    v559 = _Q0;
LABEL_593:
    v588[0] = 0;
    v327 = *(a1 + 1136);
    *v608 = 0;
    *&v608[8] = v327;
    *&v608[16] = v559;
    *&v608[32] = 0;
    *&v608[40] = 0;
    *v609 = 0xBFF0000000000000;
    *&v609[224] = 0;
    *&v609[232] = 0;
    memset(&v609[184], 0, 34);
    memset(&v609[240], 0, 75);
    memset(&v609[320], 0, 56);
    memset(&v609[8], 0, 174);
    *&v609[376] = 0xBFF0000000000000;
    *v593 = v593;
    *&v593[8] = v593;
    *&v593[16] = 0;
    v328 = 5424;
    if (v324[2].__r_.__value_.__s.__data_[0])
    {
      v328 = 5416;
    }

    if (((*(*v568 + 80))(v568, v608, v593, 0, 1, &v324[2].__r_.__value_.__l.__size_, *(&v324->__r_.__value_.__l.__data_ + v328), 40.0) & 1) == 0)
    {
      if (*(a1 + 96) == 1)
      {
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
        }

        v397 = off_1EAFE4708;
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_19B873000, v397, OS_LOG_TYPE_DEBUG, "CLMM,roadsAtIntersection returned false, searching for connected candidates", buf, 2u);
        }

        v398 = sub_19B87DD40();
        if (*(v398 + 160) > 1 || *(v398 + 164) > 1 || *(v398 + 168) > 1 || *(v398 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
          }

          *v603 = 0;
          v399 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,roadsAtIntersection returned false, searching for connected candidates", v603, 2);
          sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::assessCandidates()", "CoreLocation: %s\n", v399);
          if (v399 != buf)
          {
            free(v399);
          }
        }
      }

      ++*(a1 + 108);
      goto LABEL_694;
    }

    if (!*&v593[16])
    {
      goto LABEL_740;
    }

    if (SLODWORD(v324[3].__r_.__value_.__l.__data_) <= 0)
    {
      if ((*(a1 + 96) & 1) == 0)
      {
        goto LABEL_740;
      }

LABEL_698:
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v401 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v401, OS_LOG_TYPE_DEBUG, "CLMM,unexpected incomingCount < 1", buf, 2u);
      }

      v402 = sub_19B87DD40();
      if (*(v402 + 160) > 1 || *(v402 + 164) > 1 || *(v402 + 168) > 1 || *(v402 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
        }

        *v603 = 0;
        v403 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,unexpected incomingCount < 1", v603, 2);
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::assessCandidates()", "CoreLocation: %s\n", v403);
LABEL_738:
        if (v403 != buf)
        {
          free(v403);
        }
      }

LABEL_740:
      v400 = 37;
      goto LABEL_741;
    }

    v577 = 0;
    v329 = *&v609[224];
    v330 = v324;
    v331 = 333;
    v332 = *&v609[104];
    v333 = *&v609[112];
    while (1)
    {
      v334 = v330[333];
      if (v324[2].__r_.__value_.__s.__data_[0] == 1)
      {
        if (v334 <= v329)
        {
          goto LABEL_603;
        }
      }

      else if (v334 >= v329)
      {
LABEL_603:
        sub_19BA0C01C((a1 + 608), v332, v333, v330[141], v330[237], *(a1 + 1200));
        if (v335 > 40.0)
        {
          v336 = v577;
        }

        else
        {
          v336 = (v577 + 1);
        }

        v577 = v336;
      }

      v337 = v331 - 332;
      ++v331;
      ++v330;
      if (v337 >= SLODWORD(v324[3].__r_.__value_.__l.__data_))
      {
        if (v577 < 1)
        {
          if (!*(a1 + 96))
          {
            goto LABEL_740;
          }

          goto LABEL_698;
        }

        if (*(a1 + 96))
        {
          v338 = sub_19B8E3CB0();
          if (*v338 == 1)
          {
            v339 = *(a1 + 1136);
            sub_19B8759E8(buf, "CLMM,Time,%{public}.1lf,roadID,%{private}llu,incoming,countAroundMean,%{public}d");
            sub_19B98A2F4(buf);
            bzero(v338 + 56, 0x800uLL);
            if (buf[23] >= 0)
            {
              snprintf(v338 + 56, 0x800uLL, buf, v339, v324[1].__r_.__value_.__l.__size_, HIDWORD(v324[3].__r_.__value_.__r.__words[0]));
            }

            else
            {
              snprintf(v338 + 56, 0x800uLL, *buf, v339, v324[1].__r_.__value_.__l.__size_, HIDWORD(v324[3].__r_.__value_.__r.__words[0]));
            }

            v340 = CFAbsoluteTimeGetCurrent();
            sub_19B8759E8(v603, v338 + 56);
            sub_19B8E3D48(v338, v603, v340, v341, v342);
            if ((v603[23] & 0x80000000) != 0)
            {
              operator delete(*v603);
            }

            if ((buf[23] & 0x80000000) != 0)
            {
              operator delete(*buf);
            }
          }

          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
          }

          v343 = off_1EAFE4708;
          if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
          {
            v344 = *(a1 + 1136);
            v345 = v324[1].__r_.__value_.__l.__size_;
            v346 = HIDWORD(v324[3].__r_.__value_.__r.__words[0]);
            *buf = 134349569;
            *&buf[4] = v344;
            *&buf[12] = 2049;
            *&buf[14] = v345;
            *&buf[22] = 1026;
            *&buf[24] = v346;
            _os_log_impl(&dword_19B873000, v343, OS_LOG_TYPE_DEBUG, "CLMM,Time,%{public}.1lf,roadID,%{private}llu,incoming,countAroundMean,%{public}d", buf, 0x1Cu);
          }

          v347 = sub_19B87DD40();
          if (*(v347 + 160) > 1 || *(v347 + 164) > 1 || *(v347 + 168) > 1 || *(v347 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE46D0 != -1)
            {
              dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
            }

            v348 = *(a1 + 1136);
            v349 = v324[1].__r_.__value_.__l.__size_;
            v350 = HIDWORD(v324[3].__r_.__value_.__r.__words[0]);
            *v603 = 134349569;
            *&v603[4] = v348;
            *&v603[12] = 2049;
            *&v603[14] = v349;
            *&v603[22] = 1026;
            *&v603[24] = v350;
            v351 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,Time,%{public}.1lf,roadID,%{private}llu,incoming,countAroundMean,%{public}d", v603, 28);
            sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::assessCandidates()", "CoreLocation: %s\n", v351);
            if (v351 != buf)
            {
              free(v351);
            }
          }
        }

        LODWORD(v324[8].__r_.__value_.__r.__words[2]) = v577;
        v352 = *&v593[8];
        if (*&v593[8] == v593)
        {
          goto LABEL_726;
        }

        v569 = 0;
        v558 = 0;
        v563 = 0;
        while (2)
        {
          v353 = *(v352 + 16);
          v354 = *v353;
          if (*v353 == v324[1].__r_.__value_.__l.__size_ && v324[2].__r_.__value_.__s.__data_[0] != *(v352 + 32))
          {
            goto LABEL_678;
          }

          v355 = *(v352 + 24);
          if (v355)
          {
            atomic_fetch_add_explicit(&v355->__shared_owners_, 1uLL, memory_order_relaxed);
            v356 = *(v352 + 32);
            atomic_fetch_add_explicit(&v355->__shared_owners_, 1uLL, memory_order_relaxed);
            v354 = *v353;
            v357 = v353[1];
            sub_19B8750F8(v355);
            sub_19B8750F8(v355);
          }

          else
          {
            v356 = *(v352 + 32);
            v357 = v353[1];
          }

          ++v569;
          v590 = v354;
          v591 = v357;
          LOBYTE(v592) = v356;
          v358 = sub_19B98A250(v566, &v590);
          v585 = 0.0;
          if (v571 == v358)
          {
            v370 = v563;
            goto LABEL_676;
          }

          v359 = v358;
          if (*(v358 + 72) < 1)
          {
LABEL_677:
            v236 = (a1 + 1128);
LABEL_678:
            v352 = *(v352 + 8);
            if (v352 != v593)
            {
              continue;
            }

            if (v563 >= 1)
            {
              v324[8].__r_.__value_.__s.__data_[8] = 1;
              if (v569 > 1)
              {
                v324[8].__r_.__value_.__s.__data_[0] = 1;
              }

              HIDWORD(v324[8].__r_.__value_.__r.__words[0]) = v558;
              v325 = v571;
              if (*(a1 + 96) == 1)
              {
                if (qword_1EAFE46D0 != -1)
                {
                  dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
                }

                v404 = off_1EAFE4708;
                if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
                {
                  v405 = *(a1 + 1136);
                  v406 = v324[1].__r_.__value_.__l.__size_;
                  v407 = v324[8].__r_.__value_.__s.__data_[8];
                  v408 = v324[8].__r_.__value_.__s.__data_[0];
                  *buf = 134349825;
                  *&buf[4] = v405;
                  *&buf[12] = 2049;
                  *&buf[14] = v406;
                  *&buf[22] = 1026;
                  *&buf[24] = v407;
                  *&buf[28] = 1026;
                  *&buf[30] = v408;
                  _os_log_impl(&dword_19B873000, v404, OS_LOG_TYPE_DEBUG, "CLMM,Time,%{public}.1lf,roadID,%{private}llu,isCombined,%{public}d,isMulti,%{public}d", buf, 0x22u);
                }

                v409 = sub_19B87DD40();
                if (*(v409 + 160) > 1 || *(v409 + 164) > 1 || *(v409 + 168) > 1 || *(v409 + 152))
                {
                  bzero(buf, 0x65CuLL);
                  if (qword_1EAFE46D0 != -1)
                  {
                    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
                  }

                  v410 = *(a1 + 1136);
                  v411 = v324[1].__r_.__value_.__l.__size_;
                  v412 = v324[8].__r_.__value_.__s.__data_[8];
                  v413 = v324[8].__r_.__value_.__s.__data_[0];
                  *v603 = 134349825;
                  *&v603[4] = v410;
                  *&v603[12] = 2049;
                  *&v603[14] = v411;
                  *&v603[22] = 1026;
                  *&v603[24] = v412;
                  *&v603[28] = 1026;
                  *&v603[30] = v413;
                  v414 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,Time,%{public}.1lf,roadID,%{private}llu,isCombined,%{public}d,isMulti,%{public}d", v603, 34);
                  sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::assessCandidates()", "CoreLocation: %s\n", v414);
                  if (v414 != buf)
                  {
                    free(v414);
                  }
                }
              }

              v400 = 0;
              goto LABEL_741;
            }

LABEL_726:
            if (*(a1 + 96) != 1)
            {
              v400 = 37;
              v325 = v571;
              goto LABEL_741;
            }

            v325 = v571;
            if (qword_1EAFE46D0 != -1)
            {
              dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
            }

            v415 = off_1EAFE4708;
            if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
            {
              v416 = *(a1 + 1136);
              v417 = v324[1].__r_.__value_.__l.__size_;
              *buf = 134349313;
              *&buf[4] = v416;
              *&buf[12] = 2049;
              *&buf[14] = v417;
              _os_log_impl(&dword_19B873000, v415, OS_LOG_TYPE_DEBUG, "CLMM,Time,%{public}.1lf,roadID,%{private}llu,no particles after the intersection", buf, 0x16u);
            }

            v418 = sub_19B87DD40();
            if (*(v418 + 160) > 1 || *(v418 + 164) > 1 || *(v418 + 168) > 1 || *(v418 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1EAFE46D0 != -1)
              {
                dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
              }

              v419 = *(a1 + 1136);
              v420 = v324[1].__r_.__value_.__l.__size_;
              *v603 = 134349313;
              *&v603[4] = v419;
              *&v603[12] = 2049;
              *&v603[14] = v420;
              v403 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,Time,%{public}.1lf,roadID,%{private}llu,no particles after the intersection", v603, 22);
              sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::assessCandidates()", "CoreLocation: %s\n", v403);
              goto LABEL_738;
            }

            goto LABEL_740;
          }

          break;
        }

        v360 = 0;
        v361 = 0;
        v362 = 0.0;
        v363 = *&v609[104];
        v364 = *&v609[112];
        v365 = v358;
        v366 = 0.0;
        while (2)
        {
          v367 = v365[333];
          v368 = *(v352 + 40);
          if (*(v359 + 48) == 1)
          {
            if (v367 <= v368)
            {
              goto LABEL_646;
            }
          }

          else if (v367 >= v368)
          {
            goto LABEL_646;
          }

          sub_19BA0C01C((a1 + 608), v363, v364, v365[141], v365[237], *(a1 + 1200));
          if (v369 <= 40.0)
          {
            v362 = v362 + v365[333];
            v585 = v362;
            v366 = v366 + v369;
            v360 = (v360 + 1);
          }

LABEL_646:
          ++v361;
          ++v365;
          if (v361 < *(v359 + 72))
          {
            continue;
          }

          break;
        }

        if (!v360)
        {
          goto LABEL_677;
        }

        ++v558;
        v585 = v362 / v360;
        v370 = v360 + v577;
        if (v360 + v577 <= v563)
        {
          v370 = v563;
          goto LABEL_676;
        }

        if (*(a1 + 96) == 1)
        {
          v371 = sub_19B8E3CB0();
          if (*v371 == 1)
          {
            v372 = *(a1 + 1136);
            sub_19B8759E8(buf, "CLMM,Time,%{public}.1lf,combinedBest,roadID,%{private}llu,incomingCount,%{public}d,outgoingCount,%{public}d");
            sub_19B98A2F4(buf);
            bzero(v371 + 56, 0x800uLL);
            if (buf[23] >= 0)
            {
              snprintf(v371 + 56, 0x800uLL, buf, v372, v324[1].__r_.__value_.__l.__size_, v577, v360);
            }

            else
            {
              snprintf(v371 + 56, 0x800uLL, *buf, v372, v324[1].__r_.__value_.__l.__size_, v577, v360);
            }

            v373 = CFAbsoluteTimeGetCurrent();
            sub_19B8759E8(v603, v371 + 56);
            sub_19B8E3D48(v371, v603, v373, v374, v375);
            if ((v603[23] & 0x80000000) != 0)
            {
              operator delete(*v603);
            }

            if ((buf[23] & 0x80000000) != 0)
            {
              operator delete(*buf);
            }
          }

          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
          }

          v376 = off_1EAFE4708;
          if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
          {
            v377 = *(a1 + 1136);
            v378 = v324[1].__r_.__value_.__l.__size_;
            *buf = 134349825;
            *&buf[4] = v377;
            *&buf[12] = 2049;
            *&buf[14] = v378;
            *&buf[22] = 1026;
            *&buf[24] = v577;
            *&buf[28] = 1026;
            *&buf[30] = v360;
            _os_log_impl(&dword_19B873000, v376, OS_LOG_TYPE_DEBUG, "CLMM,Time,%{public}.1lf,combinedBest,roadID,%{private}llu,incomingCount,%{public}d,outgoingCount,%{public}d", buf, 0x22u);
          }

          v379 = sub_19B87DD40();
          if (*(v379 + 160) > 1 || *(v379 + 164) > 1 || *(v379 + 168) > 1 || *(v379 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE46D0 != -1)
            {
              dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
            }

            v380 = *(a1 + 1136);
            v381 = v324[1].__r_.__value_.__l.__size_;
            *v603 = 134349825;
            *&v603[4] = v380;
            *&v603[12] = 2049;
            *&v603[14] = v381;
            *&v603[22] = 1026;
            *&v603[24] = v577;
            *&v603[28] = 1026;
            *&v603[30] = v360;
            v382 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,Time,%{public}.1lf,combinedBest,roadID,%{private}llu,incomingCount,%{public}d,outgoingCount,%{public}d", v603, 34);
            sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::assessCandidates()", "CoreLocation: %s\n", v382);
            if (v382 != buf)
            {
              free(v382);
            }
          }
        }

        v383 = *&v609[32];
        *&v324[13].__r_.__value_.__r.__words[1] = *&v609[16];
        *&v324[14].__r_.__value_.__l.__data_ = v383;
        v384 = *&v609[64];
        *&v324[14].__r_.__value_.__r.__words[2] = *&v609[48];
        *&v324[15].__r_.__value_.__r.__words[1] = v384;
        v385 = *&v608[16];
        *&v324[10].__r_.__value_.__r.__words[2] = *v608;
        *&v324[11].__r_.__value_.__r.__words[1] = v385;
        v386 = *v609;
        *&v324[12].__r_.__value_.__l.__data_ = *&v608[32];
        *&v324[12].__r_.__value_.__r.__words[2] = v386;
        std::string::operator=(v324 + 16, &v609[80]);
        memcpy(&v324[17], &v609[104], 0x118uLL);
        HIDWORD(v324[8].__r_.__value_.__r.__words[2]) = v360;
        LODWORD(v324[9].__r_.__value_.__l.__data_) = v370;
        *&v324[10].__r_.__value_.__l.__size_ = v366 / v360;
        v324[46].__r_.__value_.__r.__words[2] = *(v352 + 40);
        v388 = *(v359 + 56);
        v387 = *(v359 + 64);
        if (v387)
        {
          atomic_fetch_add_explicit(&v387->__shared_owners_, 1uLL, memory_order_relaxed);
          v389 = *(v359 + 48);
          *&v324[9].__r_.__value_.__r.__words[1] = *v388;
          v324[10].__r_.__value_.__s.__data_[0] = v389;
          sub_19B8750F8(v387);
        }

        else
        {
          v390 = *(v359 + 48);
          *&v324[9].__r_.__value_.__r.__words[1] = *v388;
          v324[10].__r_.__value_.__s.__data_[0] = v390;
        }

        v391 = *v580;
        v392 = *(a1 + 1144);
        v393 = *(a1 + 1176);
        *&v324[30].__r_.__value_.__l.__data_ = *(a1 + 1160);
        *&v324[30].__r_.__value_.__r.__words[2] = v393;
        *&v324[28].__r_.__value_.__r.__words[2] = v391;
        *&v324[29].__r_.__value_.__r.__words[1] = v392;
        v394 = *(a1 + 1192);
        v395 = *(a1 + 1208);
        v396 = *(a1 + 1240);
        *&v324[32].__r_.__value_.__r.__words[2] = *(a1 + 1224);
        *&v324[33].__r_.__value_.__r.__words[1] = v396;
        *&v324[31].__r_.__value_.__r.__words[1] = v394;
        *&v324[32].__r_.__value_.__l.__data_ = v395;
        std::string::operator=(v324 + 34, (a1 + 1256));
        memcpy(&v324[35], __src, 0x118uLL);
        if (sub_19B9DF3F8(v568, &v324[28].__r_.__value_.__r.__words[2], (v359 + 56), *(v359 + 48), &v585, 1))
        {
LABEL_676:
          v563 = v370;
          goto LABEL_677;
        }

        v236 = (a1 + 1128);
        v325 = v571;
        if (*(a1 + 96) == 1)
        {
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
          }

          v423 = off_1EAFE4708;
          if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(&dword_19B873000, v423, OS_LOG_TYPE_DEBUG, "CLMM,interpolateOnRoad returned false, determining outgoing road position", buf, 2u);
          }

          v424 = sub_19B87DD40();
          if (*(v424 + 160) > 1 || *(v424 + 164) > 1 || *(v424 + 168) > 1 || *(v424 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE46D0 != -1)
            {
              dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
            }

            *v603 = 0;
            v425 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,interpolateOnRoad returned false, determining outgoing road position", v603, 2);
            sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::assessCandidates()", "CoreLocation: %s\n", v425);
            if (v425 != buf)
            {
              free(v425);
            }
          }
        }

        ++*(a1 + 104);
LABEL_694:
        v400 = 1;
LABEL_741:
        sub_19B916DC0(v593);
        if ((v609[103] & 0x80000000) != 0)
        {
          operator delete(*&v609[80]);
        }

        if (v400 != 37 && v400)
        {
          v557 = 0;
          goto LABEL_793;
        }

        v421 = v324->__r_.__value_.__l.__size_;
        if (v421)
        {
          do
          {
            v422 = v421;
            v421 = v421->__r_.__value_.__r.__words[0];
          }

          while (v421);
        }

        else
        {
          do
          {
            v422 = v324->__r_.__value_.__r.__words[2];
            _ZF = *v422 == v324;
            v324 = v422;
          }

          while (!_ZF);
        }

        v324 = v422;
        if (v422 == v325)
        {
          v557 = 1;
          goto LABEL_793;
        }

        goto LABEL_593;
      }
    }
  }

  v237 = 0.0;
  v238 = *(a1 + 864);
  do
  {
    v237 = v237 + *(v238 + 56);
    v238 += 112;
  }

  while (v238 != v234);
  if (v237 > 0.0)
  {
    *(a1 + 944) = *(a1 + 936);
    v239 = 0.0;
    do
    {
      v240 = *(v235 + 56) / v237;
      *(v235 + 64) = v240;
      v239 = v239 + v240;
      *&v240 = v239;
      *buf = LODWORD(v240);
      sub_19B973EC0((a1 + 936), buf);
      v235 += 112;
    }

    while (v235 != *(a1 + 872));
    v241 = *(a1 + 864);
    if (v235 != v241)
    {
      v242 = v241 - 112;
      v243 = 0.0;
      do
      {
        v243 = v243 + *(v242 + 176) * *(v242 + 176);
        v242 += 112;
      }

      while (v235 - 112 != v242);
      if (v243 > 0.0)
      {
        *(a1 + 1608) = 1.0 / v243;
      }
    }

    goto LABEL_454;
  }

  do
  {
    v234 -= 14;
    sub_19B988BB4(v234);
  }

  while (v234 != v235);
  *(a1 + 872) = v235;
LABEL_815:
  (*(*a1 + 40))(a1);
LABEL_816:
  v64 = 0;
LABEL_817:
  if (v3)
  {
    sub_19B8750F8(v3);
  }

  return v64;
}

void sub_19B9835E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, std::__shared_weak_count *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_19B916DC0(&a46);
  sub_19B966FCC(&a65);
  STACK[0x3E0] = &a52;
  sub_19B98868C(&STACK[0x3E0]);
  if (a26)
  {
    sub_19B8750F8(a26);
  }

  if (a38)
  {
    sub_19B8750F8(a38);
  }

  _Unwind_Resume(a1);
}

void sub_19B98392C(uint64_t a1, uint64_t a2)
{
  v77 = *MEMORY[0x1E69E9840];
  if (*(a2 + 264) == 1 && (*(a2 + 265) & 1) == 0)
  {
    v3 = *(a2 + 80);
    if (v3 < 400.0 && v3 > 0.0)
    {
      if (*(a1 + 1649) != 1 || (*(a1 + 1650) & 1) != 0 || ((v5 = *(a1 + 4016), v6 = vabdd_f64(*(a2 + 8), v5), v5 >= 0.0) ? (v7 = v6 <= 2.0) : (v7 = 0), v7))
      {
        sub_19BA0C01C((a1 + 608), *(a2 + 56), *(a2 + 64), *(a2 + 152), *(a2 + 160), 0.0);
        v9 = v8;
        v10 = v8 / *(a2 + 80);
        if (v10 > 1.5)
        {
          if (*(a1 + 96) == 1)
          {
            if (qword_1EAFE46D0 != -1)
            {
              dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
            }

            v11 = off_1EAFE4708;
            if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
            {
              v12 = *(a2 + 8);
              v13 = *(a2 + 56);
              v14 = *(a2 + 64);
              v15 = *(a2 + 104);
              v16 = *(a2 + 152);
              v17 = *(a2 + 160);
              v18 = *(a2 + 168);
              v19 = *(a2 + 72);
              v20 = *(a2 + 80);
              *buf = 134351617;
              v56 = v12;
              v57 = 2053;
              v58 = v13;
              v59 = 2053;
              v60 = v14;
              v61 = 2050;
              v62 = v19;
              v63 = 2050;
              v64 = v15;
              v65 = 2053;
              v66 = v16;
              v67 = 2053;
              v68 = v17;
              v69 = 2050;
              v70 = v18;
              v71 = 2050;
              v72 = v9;
              v73 = 2050;
              v74 = v20;
              v75 = 2050;
              v76 = v10;
              _os_log_impl(&dword_19B873000, v11, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.1lf,lat,%{sensitive}.8lf,lon,%{sensitive}.8lf,alt,%{public}.2lf,course,%{public}.1lf,snapLat,%{sensitive}.8lf,snapLon,%{sensitive}.8lf,snapCourse,%{public}.1lf,horizontalError,%{public}.2lf,hunc,%{public}.2lf,ratio,%{public}.2lf", buf, 0x70u);
            }

            v21 = sub_19B87DD40();
            if (*(v21 + 160) > 1 || *(v21 + 164) > 1 || *(v21 + 168) > 1 || *(v21 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1EAFE46D0 != -1)
              {
                dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
              }

              v22 = *(a2 + 8);
              v23 = *(a2 + 56);
              v24 = *(a2 + 64);
              v25 = *(a2 + 104);
              v26 = *(a2 + 152);
              v27 = *(a2 + 160);
              v28 = *(a2 + 168);
              v29 = *(a2 + 72);
              v30 = *(a2 + 80);
              v33 = 134351617;
              v34 = v22;
              v35 = 2053;
              v36 = v23;
              v37 = 2053;
              v38 = v24;
              v39 = 2050;
              v40 = v29;
              v41 = 2050;
              v42 = v25;
              v43 = 2053;
              v44 = v26;
              v45 = 2053;
              v46 = v27;
              v47 = 2050;
              v48 = v28;
              v49 = 2050;
              v50 = v9;
              v51 = 2050;
              v52 = v30;
              v53 = 2050;
              v54 = v10;
              v31 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,%{public}.1lf,lat,%{sensitive}.8lf,lon,%{sensitive}.8lf,alt,%{public}.2lf,course,%{public}.1lf,snapLat,%{sensitive}.8lf,snapLon,%{sensitive}.8lf,snapCourse,%{public}.1lf,horizontalError,%{public}.2lf,hunc,%{public}.2lf,ratio,%{public}.2lf", &v33, 112);
              sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::modifyHorizontalUncertainty(CLMapCrumb &)", "CoreLocation: %s\n", v31);
              if (v31 != buf)
              {
                free(v31);
              }
            }
          }

          v32 = v9 * 1.05;
          if (v9 * 1.05 > 400.0)
          {
            v32 = 400.0;
          }

          *(a2 + 80) = v32;
          *(a1 + 4016) = *(a2 + 8);
        }
      }
    }
  }
}

uint64_t sub_19B983CAC(uint64_t a1, double *a2, double a3, double a4, double a5)
{
  v25 = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 1432);
  v10 = fmod(v9 - a5, 360.0);
  if (v10 < 0.0)
  {
    v10 = v10 + 360.0;
  }

  if (v10 > 180.0)
  {
    v10 = v10 + -360.0;
  }

  v11 = fabs(v10);
  if (v11 > 8.0)
  {
    if (*(a1 + 96) != 1)
    {
      return 0;
    }

    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    v12 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v12, OS_LOG_TYPE_DEBUG, "CLMM,no DOT, course is not aligned", buf, 2u);
    }

    v13 = sub_19B87DD40();
    if (*(v13 + 160) <= 1 && *(v13 + 164) <= 1 && *(v13 + 168) <= 1 && !*(v13 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    LOWORD(v23[0]) = 0;
    v14 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,no DOT, course is not aligned", v23, 2);
LABEL_46:
    v19 = v14;
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::runDirectionOfTravelHelper(double, double, double, double &)", "CoreLocation: %s\n", v14);
    if (v19 != buf)
    {
      free(v19);
    }

    return 0;
  }

  if (v11 > *a2)
  {
    *a2 = v11;
    v9 = *(a1 + 1432);
  }

  v22 = 0.0;
  v23[0] = 0.0;
  sub_19BA0C3BC((a1 + 608), v23, &v22, *(a1 + 1416), *(a1 + 1424), *(a1 + 1200), v9, a3, a4);
  if (fabs(v23[0]) > 5.0)
  {
    if (*(a1 + 96) != 1)
    {
      return 0;
    }

    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    v15 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v15, OS_LOG_TYPE_DEBUG, "CLMM,across track too large, not suitable DOT assistance", buf, 2u);
    }

    v16 = sub_19B87DD40();
    if (*(v16 + 160) <= 1 && *(v16 + 164) <= 1 && *(v16 + 168) <= 1 && !*(v16 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    v21 = 0;
    v14 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,across track too large, not suitable DOT assistance", &v21, 2);
    goto LABEL_46;
  }

  if (fabs(v22) > 45.0)
  {
    if (*(a1 + 96) != 1)
    {
      return 0;
    }

    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    v17 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v17, OS_LOG_TYPE_DEBUG, "CLMM,along track too large, not suitable DOT assistance", buf, 2u);
    }

    v18 = sub_19B87DD40();
    if (*(v18 + 160) <= 1 && *(v18 + 164) <= 1 && *(v18 + 168) <= 1 && !*(v18 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    v21 = 0;
    v14 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,along track too large, not suitable DOT assistance", &v21, 2);
    goto LABEL_46;
  }

  return 1;
}

uint64_t sub_19B984144(uint64_t a1, double *a2)
{
  v216 = *MEMORY[0x1E69E9840];
  bzero(a2, 0x68uLL);
  v4 = *(a1 + 3720);
  if (v4 > 0.0 && vabdd_f64(*(a1 + 1136), v4 + -1.0) < 0.9)
  {
    if (*(a1 + 96) != 1)
    {
      return 0;
    }

    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    v5 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEBUG, "CLMM,no DOT,feedback interval check", buf, 2u);
    }

    v6 = sub_19B87DD40();
    if (*(v6 + 160) <= 1 && *(v6 + 164) <= 1 && *(v6 + 168) <= 1 && !*(v6 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    *v142 = 0;
    v7 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,no DOT,feedback interval check", v142, 2);
    sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLParticleMapMatcher::getDirectionOfTravelAssistance(CLGpsAssistant_Type::DirectionOfTravelAssistance &)", "CoreLocation: %s\n", v7);
    goto LABEL_15;
  }

  if (!*(a1 + 1248) && sub_19B93C6C4() && !sub_19B93C3A8() && (sub_19B93CBFC() & 1) == 0)
  {
    if (*(a1 + 96) != 1)
    {
      return 0;
    }

    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    v10 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v10, OS_LOG_TYPE_DEBUG, "CLMM,no DOT,frc,0", buf, 2u);
    }

    v11 = sub_19B87DD40();
    if (*(v11 + 160) <= 1 && *(v11 + 164) <= 1 && *(v11 + 168) <= 1 && !*(v11 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    *v142 = 0;
    v7 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,no DOT,frc,0", v142, 2);
    sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLParticleMapMatcher::getDirectionOfTravelAssistance(CLGpsAssistant_Type::DirectionOfTravelAssistance &)", "CoreLocation: %s\n", v7);
LABEL_15:
    if (v7 != buf)
    {
      free(v7);
    }

    return 0;
  }

  if (*(a1 + 2232) != 1 || *(a1 + 1392) != 1 || (*(a1 + 2233) & 1) != 0 || (*(a1 + 1393) & 1) != 0 || *(a1 + 1136) - *(a1 + 1976) > 1.5)
  {
    return 0;
  }

  if (*(a1 + 2688) == 1 && *(a1 + 2696) < 36.0)
  {
    if (*(a1 + 96) != 1)
    {
      return 0;
    }

    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    v8 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_DEBUG, "CLMM,no DOT,too close to prior intersection", buf, 2u);
    }

    v9 = sub_19B87DD40();
    if (*(v9 + 160) <= 1 && *(v9 + 164) <= 1 && *(v9 + 168) <= 1 && !*(v9 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    *v142 = 0;
    v7 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,no DOT,too close to prior intersection", v142, 2);
    sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLParticleMapMatcher::getDirectionOfTravelAssistance(CLGpsAssistant_Type::DirectionOfTravelAssistance &)", "CoreLocation: %s\n", v7);
    goto LABEL_15;
  }

  v12 = fmod(*(a1 + 1296) - *(a1 + 1432), 360.0);
  if (v12 < 0.0)
  {
    v12 = v12 + 360.0;
  }

  if (v12 > 180.0)
  {
    v12 = v12 + -360.0;
  }

  if (fabs(v12) > 1.0)
  {
    if (*(a1 + 96) != 1)
    {
      return 0;
    }

    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    v13 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v13, OS_LOG_TYPE_DEBUG, "CLMM,no DOT,course not aligned to full snap", buf, 2u);
    }

    v14 = sub_19B87DD40();
    if (*(v14 + 160) <= 1 && *(v14 + 164) <= 1 && *(v14 + 168) <= 1 && !*(v14 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    *v142 = 0;
    v7 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,no DOT,course not aligned to full snap", v142, 2);
    sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLParticleMapMatcher::getDirectionOfTravelAssistance(CLGpsAssistant_Type::DirectionOfTravelAssistance &)", "CoreLocation: %s\n", v7);
    goto LABEL_15;
  }

  v141 = -1.0;
  if (!sub_19B983CAC(a1, &v141, *(a1 + 2256), *(a1 + 2264), *(a1 + 2272)))
  {
    return 0;
  }

  if (*(a1 + 1490) == 1 && *(a1 + 1528) == 1)
  {
    goto LABEL_86;
  }

  *v142 = 0x4044000000000000;
  v131[0] = 1;
  *buf = 0x4046800000000000;
  if ((sub_19B979230(a1, v142, buf, v131) & 1) == 0)
  {
    if (*(a1 + 96) != 1)
    {
      return 0;
    }

    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    v26 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v26, OS_LOG_TYPE_DEBUG, "CLMM,no DOT,assessParallelRoadsWithinDist returned false,unexpected", buf, 2u);
    }

    v27 = sub_19B87DD40();
    if (*(v27 + 160) <= 1 && *(v27 + 164) <= 1 && *(v27 + 168) <= 1 && !*(v27 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    LOWORD(v137[0]) = 0;
    v7 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,no DOT,assessParallelRoadsWithinDist returned false,unexpected", v137, 2);
    sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLParticleMapMatcher::getDirectionOfTravelAssistance(CLGpsAssistant_Type::DirectionOfTravelAssistance &)", "CoreLocation: %s\n", v7);
    goto LABEL_15;
  }

  if (v131[0] == 1)
  {
    if (*(a1 + 96) != 1)
    {
      return 0;
    }

    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    v15 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v15, OS_LOG_TYPE_DEBUG, "CLMM,no DOT,too close to a road with similar course", buf, 2u);
    }

    v16 = sub_19B87DD40();
    if (*(v16 + 160) <= 1 && *(v16 + 164) <= 1 && *(v16 + 168) <= 1 && !*(v16 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    LOWORD(v137[0]) = 0;
    v7 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,no DOT,too close to a road with similar course", v137, 2);
    sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLParticleMapMatcher::getDirectionOfTravelAssistance(CLGpsAssistant_Type::DirectionOfTravelAssistance &)", "CoreLocation: %s\n", v7);
    goto LABEL_15;
  }

LABEL_86:
  v18 = *(a1 + 8);
  v17 = *(a1 + 16);
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v19 = 70.0;
  v20 = sub_19B9703C0(a1, 70.0);
  v21 = *(a1 + 1224);
  if (v20 >= 0.0)
  {
    if (v20 - v21 >= 18.0)
    {
      v19 = v20 + -1.0;
      if (v21 >= 5.0 || (*(a1 + 3160) & 1) == 0)
      {
        goto LABEL_168;
      }

      if (*(a1 + 96) != 1)
      {
        goto LABEL_166;
      }

      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v33 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v33, OS_LOG_TYPE_DEBUG, "CLMM,no DOT,too slow when nearing intersection", buf, 2u);
      }

      v34 = sub_19B87DD40();
      if (*(v34 + 160) <= 1 && *(v34 + 164) <= 1 && *(v34 + 168) <= 1 && !*(v34 + 152))
      {
        goto LABEL_166;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      *v142 = 0;
      v32 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,no DOT,too slow when nearing intersection", v142, 2);
      sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLParticleMapMatcher::getDirectionOfTravelAssistance(CLGpsAssistant_Type::DirectionOfTravelAssistance &)", "CoreLocation: %s\n", v32);
    }

    else
    {
      if (*(a1 + 96) != 1)
      {
        goto LABEL_166;
      }

      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v30 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v30, OS_LOG_TYPE_DEBUG, "CLMM,no DOT,too close to next intersection", buf, 2u);
      }

      v31 = sub_19B87DD40();
      if (*(v31 + 160) <= 1 && *(v31 + 164) <= 1 && *(v31 + 168) <= 1 && !*(v31 + 152))
      {
        goto LABEL_166;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      *v142 = 0;
      v32 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,no DOT,too close to next intersection", v142, 2);
      sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLParticleMapMatcher::getDirectionOfTravelAssistance(CLGpsAssistant_Type::DirectionOfTravelAssistance &)", "CoreLocation: %s\n", v32);
    }

    if (v32 != buf)
    {
      free(v32);
    }

    goto LABEL_166;
  }

  if (v21 < 5.0)
  {
    sub_19B973CD8(v142, a1 + 1016);
    if (((*(*v18 + 88))(v18, v142, a1 + 912, *(a1 + 3168)) & 1) == 0)
    {
      if (*(a1 + 96) != 1)
      {
        goto LABEL_165;
      }

      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v35 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v35, OS_LOG_TYPE_DEBUG, "CLMM,moveOnRoad returned false,DOT particle assistance", buf, 2u);
      }

      v36 = sub_19B87DD40();
      if (*(v36 + 160) <= 1 && *(v36 + 164) <= 1 && *(v36 + 168) <= 1 && !*(v36 + 152))
      {
        goto LABEL_165;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      LOWORD(v137[0]) = 0;
      v25 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,moveOnRoad returned false,DOT particle assistance", v137, 2);
      sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLParticleMapMatcher::getDirectionOfTravelAssistance(CLGpsAssistant_Type::DirectionOfTravelAssistance &)", "CoreLocation: %s\n", v25);
      goto LABEL_163;
    }

    v22 = fmod(*&v146 - *(a1 + 1232), 360.0);
    if (v22 < 0.0)
    {
      v22 = v22 + 360.0;
    }

    if (v22 > 180.0)
    {
      v22 = v22 + -360.0;
    }

    if (fabs(v22) > 8.0)
    {
      if (*(a1 + 96) != 1)
      {
        goto LABEL_165;
      }

      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v23 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v23, OS_LOG_TYPE_DEBUG, "CLMM,no DOT,too close large road direction change", buf, 2u);
      }

      v24 = sub_19B87DD40();
      if (*(v24 + 160) <= 1 && *(v24 + 164) <= 1 && *(v24 + 168) <= 1 && !*(v24 + 152))
      {
        goto LABEL_165;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      LOWORD(v137[0]) = 0;
      v25 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,no DOT,too close large road direction change", v137, 2);
      sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLParticleMapMatcher::getDirectionOfTravelAssistance(CLGpsAssistant_Type::DirectionOfTravelAssistance &)", "CoreLocation: %s\n", v25);
LABEL_163:
      if (v25 != buf)
      {
        free(v25);
      }

LABEL_165:
      sub_19B966FCC(v142);
LABEL_166:
      v28 = 0;
      goto LABEL_211;
    }

    sub_19B966FCC(v142);
  }

LABEL_168:
  sub_19B973CD8(v137, a1 + 1016);
  if (((*(*v18 + 88))(v18, v137, a1 + 912, -15.0) & 1) == 0)
  {
    if (*(a1 + 96) != 1)
    {
      goto LABEL_209;
    }

    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    v43 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v43, OS_LOG_TYPE_DEBUG, "CLMM,moveOnRoad returned false,DOT particle assistance", buf, 2u);
    }

    v44 = sub_19B87DD40();
    if (*(v44 + 160) <= 1 && *(v44 + 164) <= 1 && *(v44 + 168) <= 1 && !*(v44 + 152))
    {
      goto LABEL_209;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    *v142 = 0;
    v45 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,moveOnRoad returned false,DOT particle assistance", v142, 2);
    sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLParticleMapMatcher::getDirectionOfTravelAssistance(CLGpsAssistant_Type::DirectionOfTravelAssistance &)", "CoreLocation: %s\n", v45);
    goto LABEL_198;
  }

  if (sub_19B983CAC(a1, &v141, v139, v140, v138))
  {
    sub_19B8759E8(__p, "Start");
    v37 = sub_19B8D72F4(a1 + 1128, (a1 + 608), __p, a2 + 1, a2 + 2, v139, v140);
    if (v136 < 0)
    {
      operator delete(__p[0]);
    }

    if (v37)
    {
      sub_19BA0C01C((a1 + 608), *(a1 + 1048), *(a1 + 1056), v139, v140, *(a1 + 1200));
      v39 = v38;
      sub_19B973CD8(v131, a1 + 1016);
      if (v19 - *(a1 + 1224) < 18.0)
      {
        if (*(a1 + 96) != 1)
        {
          goto LABEL_239;
        }

        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
        }

        v40 = off_1EAFE4708;
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_19B873000, v40, OS_LOG_TYPE_DEBUG, "CLMM,no DOT,predicted point is too close to intersection", buf, 2u);
        }

        v41 = sub_19B87DD40();
        if (*(v41 + 160) <= 1 && *(v41 + 164) <= 1 && *(v41 + 168) <= 1 && !*(v41 + 152))
        {
          goto LABEL_239;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
        }

        *v142 = 0;
        v42 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,no DOT,predicted point is too close to intersection", v142, 2);
        sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLParticleMapMatcher::getDirectionOfTravelAssistance(CLGpsAssistant_Type::DirectionOfTravelAssistance &)", "CoreLocation: %s\n", v42);
        goto LABEL_237;
      }

      if ((*(*v18 + 88))(v18, v131, a1 + 912))
      {
        if (!sub_19B983CAC(a1, &v141, v133, v134, v132))
        {
LABEL_239:
          v28 = 0;
LABEL_240:
          sub_19B966FCC(v131);
          goto LABEL_210;
        }

        v48 = v133;
        v49 = v134;
        a2[4] = v134;
        a2[3] = v48;
        v50 = *(a1 + 1016);
        v51 = *(v50 + 16);
        v52 = sub_19B93EFE4(a1, *(v50 + 20), v51);
        a2[8] = v52;
        if ((v51 & 1) == 0)
        {
          v53 = *(a1 + 760);
          if (v53)
          {
            v54 = v52 * 0.5;
            a2[8] = v54;
            v55 = v54 * 0.5;
            v56 = -(v54 * 0.5);
            if (v53 == 1)
            {
              v57 = v56;
            }

            else
            {
              v57 = v55;
            }

            *v142 = 0;
            v126[0] = 0.0;
            if (sub_19BA0C0F8((a1 + 608), v142, v126, v48, v49, *(a1 + 1200), v132, v57))
            {
              v58 = v126[0];
              a2[3] = *v142;
              a2[4] = v58;
              v52 = a2[8];
            }

            else
            {
              if (qword_1EAFE46D0 != -1)
              {
                dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
              }

              v61 = off_1EAFE4708;
              if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_impl(&dword_19B873000, v61, OS_LOG_TYPE_ERROR, "CLMM,Unexpected calculateNewPosUsingAcrossTrack fail", buf, 2u);
              }

              v62 = sub_19B87DD40();
              if ((*(v62 + 160) & 0x80000000) == 0 || (*(v62 + 164) & 0x80000000) == 0 || (*(v62 + 168) & 0x80000000) == 0 || *(v62 + 152))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1EAFE46D0 != -1)
                {
                  dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
                }

                v130 = 0;
                v63 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMM,Unexpected calculateNewPosUsingAcrossTrack fail", &v130, 2);
                sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLParticleMapMatcher::getDirectionOfTravelAssistance(CLGpsAssistant_Type::DirectionOfTravelAssistance &)", "CoreLocation: %s\n", v63);
                if (v63 != buf)
                {
                  free(v63);
                }
              }

              v52 = a2[8] + a2[8];
              a2[8] = v52;
            }
          }
        }

        v64 = fmax(v52, 15.0);
        if (v19 > v64 + 1.0)
        {
          sub_19B973CD8(v126, a1 + 1016);
          if (v19 - v64 >= (*(a1 + 1224) + 15.0) * 1.5)
          {
            v65 = (*(a1 + 1224) + 15.0) * 1.5;
          }

          else
          {
            v65 = v19 - v64;
          }

          if ((*(*v18 + 88))(v18, v126, a1 + 912, v65))
          {
            if (!sub_19B983CAC(a1, &v141, v128, v129, v127))
            {
              goto LABEL_313;
            }

            v66 = fmin(v39, 15.0);
            a2[5] = v66 + v65;
            v67 = v141;
            if (v141 < 3.0)
            {
              v67 = 3.0;
            }

            a2[7] = v67;
            sub_19B8759E8(v124, "Predicted");
            v68 = sub_19B8D72F4(a1 + 1128, (a1 + 608), v124, a2 + 3, a2 + 4, a2[3], a2[4]);
            if (v125 < 0)
            {
              operator delete(v124[0]);
            }

            if (v68)
            {
              a2[6] = v132;
              *a2 = *(a1 + 1136) + 1.0;
              __asm { FMOV            V1.2D, #1.0 }

              v74 = vaddq_f64(*(a1 + 1144), _Q1);
              *(a2 + 11) = v74;
              LODWORD(v74.f64[0]) = *(*v131 + 16);
              *&v74.f64[0] = vmovl_u8(*&v74.f64[0]).u64[0];
              *&v74.f64[0] = vuzp2_s16(vext_s8(*&v74.f64[0], *&v74.f64[0], 2uLL), *&v74.f64[0]);
              *(a2 + 18) = vuzp1_s8(*&v74.f64[0], *&v74.f64[0]).u32[0];
              *(a2 + 76) = *(a1 + 1248) == 0;
              v28 = 1;
              *(a2 + 20) = 1;
              if (*(a1 + 96) == 1)
              {
                if (qword_1EAFE46D0 != -1)
                {
                  dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
                }

                v75 = off_1EAFE4708;
                if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
                {
                  v76 = *(a2 + 6);
                  v77 = *(a2 + 7);
                  v78 = *(a2 + 8);
                  v79 = *a2;
                  v80 = *(a2 + 1);
                  v82 = *(a2 + 2);
                  v81 = *(a2 + 3);
                  v83 = *(a2 + 4);
                  v84 = *(a2 + 5);
                  v85 = *(a1 + 1224);
                  v86 = *(a2 + 73);
                  v87 = *(a2 + 74);
                  v88 = *(a2 + 72);
                  v89 = *(a2 + 75);
                  v90 = *(a2 + 76);
                  v91 = *(a2 + 12);
                  v92 = *(a2 + 20);
                  *buf = 134353665;
                  *&buf[4] = v79;
                  v180 = 2053;
                  v181 = v81;
                  v182 = 2053;
                  v183 = v83;
                  v184 = 2050;
                  v185 = v76;
                  v186 = 2050;
                  v187 = v77;
                  v188 = 2050;
                  v189 = v78;
                  v190 = 2053;
                  v191 = v80;
                  v192 = 2053;
                  v193 = v82;
                  v194 = 2050;
                  v195 = v84;
                  v196 = 2050;
                  v197 = v85;
                  v198 = 1026;
                  v199 = v86;
                  v200 = 1026;
                  v201 = v87;
                  v202 = 1026;
                  v203 = v88;
                  v204 = 1026;
                  v205 = v89;
                  v206 = 2050;
                  v207 = v64;
                  v208 = 1026;
                  v209 = v90;
                  v210 = 2050;
                  v211 = v91;
                  v212 = 2050;
                  v213 = v66;
                  v214 = 1026;
                  v215 = v92;
                  _os_log_impl(&dword_19B873000, v75, OS_LOG_TYPE_DEBUG, "CLMM,DOT,%{public}.1lf,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf,course,%{public}.1lf,courseUnc,%{public}.1lf,rw,%{public}.1lf,startLat,%{sensitive}.7lf,startLon,%{sensitive}.7lf,length,%{public}.1lf,speed,%{public}.3lf,isOneWay,%{public}d,isRailWay,%{public}d,isTunnel,%{public}d,isBridge,%{public}d,distFromIntersection,%{public}.1lf,isFreeway,%{public}d,machContinuousTime,%{public}.3lf,lookBehindDistance,%{public}.2lf,type,%{public}d", buf, 0xA8u);
                }

                v93 = sub_19B87DD40();
                if (*(v93 + 160) > 1 || *(v93 + 164) > 1 || *(v93 + 168) > 1 || *(v93 + 152))
                {
                  bzero(buf, 0x65CuLL);
                  if (qword_1EAFE46D0 != -1)
                  {
                    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
                  }

                  v94 = *(a2 + 6);
                  v95 = *(a2 + 7);
                  v96 = *(a2 + 8);
                  v97 = *a2;
                  v98 = *(a2 + 1);
                  v100 = *(a2 + 2);
                  v99 = *(a2 + 3);
                  v101 = *(a2 + 4);
                  v102 = *(a2 + 5);
                  v103 = *(a1 + 1224);
                  v104 = *(a2 + 73);
                  v105 = *(a2 + 74);
                  v106 = *(a2 + 72);
                  v107 = *(a2 + 75);
                  v108 = *(a2 + 76);
                  v109 = *(a2 + 12);
                  v110 = *(a2 + 20);
                  *v142 = 134353665;
                  *&v142[4] = v97;
                  v143 = 2053;
                  v144 = v99;
                  v145 = 2053;
                  v146 = v101;
                  v147 = 2050;
                  v148 = v94;
                  v149 = 2050;
                  v150 = v95;
                  v151 = 2050;
                  v152 = v96;
                  v153 = 2053;
                  v154 = v98;
                  v155 = 2053;
                  v156 = v100;
                  v157 = 2050;
                  v158 = v102;
                  v159 = 2050;
                  v160 = v103;
                  v161 = 1026;
                  v162 = v104;
                  v163 = 1026;
                  v164 = v105;
                  v165 = 1026;
                  v166 = v106;
                  v167 = 1026;
                  v168 = v107;
                  v169 = 2050;
                  v170 = v64;
                  v171 = 1026;
                  v172 = v108;
                  v173 = 2050;
                  v174 = v109;
                  v175 = 2050;
                  v176 = v66;
                  v177 = 1026;
                  v178 = v110;
                  v111 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,DOT,%{public}.1lf,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf,course,%{public}.1lf,courseUnc,%{public}.1lf,rw,%{public}.1lf,startLat,%{sensitive}.7lf,startLon,%{sensitive}.7lf,length,%{public}.1lf,speed,%{public}.3lf,isOneWay,%{public}d,isRailWay,%{public}d,isTunnel,%{public}d,isBridge,%{public}d,distFromIntersection,%{public}.1lf,isFreeway,%{public}d,machContinuousTime,%{public}.3lf,lookBehindDistance,%{public}.2lf,type,%{public}d", v142, 168);
                  sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLParticleMapMatcher::getDirectionOfTravelAssistance(CLGpsAssistant_Type::DirectionOfTravelAssistance &)", "CoreLocation: %s\n", v111);
                  if (v111 != buf)
                  {
                    free(v111);
                  }
                }
              }

              *(a1 + 3712) = 1;
              v112 = *a2;
              v113 = *(a2 + 2);
              *(a1 + 3736) = *(a2 + 1);
              *(a1 + 3752) = v113;
              *(a1 + 3720) = v112;
              v114 = *(a2 + 3);
              v115 = *(a2 + 4);
              v116 = *(a2 + 5);
              *(a1 + 3816) = a2[12];
              *(a1 + 3784) = v115;
              *(a1 + 3800) = v116;
              *(a1 + 3768) = v114;
              goto LABEL_314;
            }

            if (*(a1 + 96) != 1)
            {
              goto LABEL_313;
            }

            if (qword_1EAFE46D0 != -1)
            {
              dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
            }

            v122 = off_1EAFE4708;
            if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_impl(&dword_19B873000, v122, OS_LOG_TYPE_DEBUG, "CLMM,no DOT,computeSnapCoordinatesFromRawGPSCoordinates predicted returned false", buf, 2u);
            }

            v123 = sub_19B87DD40();
            if (*(v123 + 160) <= 1 && *(v123 + 164) <= 1 && *(v123 + 168) <= 1 && !*(v123 + 152))
            {
LABEL_313:
              v28 = 0;
LABEL_314:
              sub_19B966FCC(v126);
              goto LABEL_240;
            }

            bzero(buf, 0x65CuLL);
            if (qword_1EAFE46D0 != -1)
            {
              dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
            }

            *v142 = 0;
            v121 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,no DOT,computeSnapCoordinatesFromRawGPSCoordinates predicted returned false", v142, 2);
            sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLParticleMapMatcher::getDirectionOfTravelAssistance(CLGpsAssistant_Type::DirectionOfTravelAssistance &)", "CoreLocation: %s\n", v121);
          }

          else
          {
            if (*(a1 + 96) != 1)
            {
              goto LABEL_313;
            }

            if (qword_1EAFE46D0 != -1)
            {
              dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
            }

            v119 = off_1EAFE4708;
            if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_impl(&dword_19B873000, v119, OS_LOG_TYPE_DEBUG, "CLMM,moveOnRoad returned false,DOT particle assistance", buf, 2u);
            }

            v120 = sub_19B87DD40();
            if (*(v120 + 160) <= 1 && *(v120 + 164) <= 1 && *(v120 + 168) <= 1 && !*(v120 + 152))
            {
              goto LABEL_313;
            }

            bzero(buf, 0x65CuLL);
            if (qword_1EAFE46D0 != -1)
            {
              dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
            }

            *v142 = 0;
            v121 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,moveOnRoad returned false,DOT particle assistance", v142, 2);
            sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLParticleMapMatcher::getDirectionOfTravelAssistance(CLGpsAssistant_Type::DirectionOfTravelAssistance &)", "CoreLocation: %s\n", v121);
          }

          if (v121 != buf)
          {
            free(v121);
          }

          goto LABEL_313;
        }

        if (*(a1 + 96) != 1)
        {
          goto LABEL_239;
        }

        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
        }

        v117 = off_1EAFE4708;
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_19B873000, v117, OS_LOG_TYPE_DEBUG, "CLMM,no DOT,current particle within the stopDistanceFromIntersection", buf, 2u);
        }

        v118 = sub_19B87DD40();
        if (*(v118 + 160) <= 1 && *(v118 + 164) <= 1 && *(v118 + 168) <= 1 && !*(v118 + 152))
        {
          goto LABEL_239;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
        }

        *v142 = 0;
        v42 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,no DOT,current particle within the stopDistanceFromIntersection", v142, 2);
        sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLParticleMapMatcher::getDirectionOfTravelAssistance(CLGpsAssistant_Type::DirectionOfTravelAssistance &)", "CoreLocation: %s\n", v42);
      }

      else
      {
        if (*(a1 + 96) != 1)
        {
          goto LABEL_239;
        }

        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
        }

        v59 = off_1EAFE4708;
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_19B873000, v59, OS_LOG_TYPE_DEBUG, "CLMM,moveOnRoad returned false,DOT particle assistance", buf, 2u);
        }

        v60 = sub_19B87DD40();
        if (*(v60 + 160) <= 1 && *(v60 + 164) <= 1 && *(v60 + 168) <= 1 && !*(v60 + 152))
        {
          goto LABEL_239;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
        }

        *v142 = 0;
        v42 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,moveOnRoad returned false,DOT particle assistance", v142, 2);
        sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLParticleMapMatcher::getDirectionOfTravelAssistance(CLGpsAssistant_Type::DirectionOfTravelAssistance &)", "CoreLocation: %s\n", v42);
      }

LABEL_237:
      if (v42 != buf)
      {
        free(v42);
      }

      goto LABEL_239;
    }

    if (*(a1 + 96) == 1)
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v46 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v46, OS_LOG_TYPE_DEBUG, "CLMM,no DOT,computeSnapCoordinatesFromRawGPSCoordinates lookBehind returned false", buf, 2u);
      }

      v47 = sub_19B87DD40();
      if (*(v47 + 160) > 1 || *(v47 + 164) > 1 || *(v47 + 168) > 1 || *(v47 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
        }

        *v142 = 0;
        v45 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,no DOT,computeSnapCoordinatesFromRawGPSCoordinates lookBehind returned false", v142, 2);
        sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLParticleMapMatcher::getDirectionOfTravelAssistance(CLGpsAssistant_Type::DirectionOfTravelAssistance &)", "CoreLocation: %s\n", v45);
LABEL_198:
        if (v45 != buf)
        {
          free(v45);
        }
      }
    }
  }

LABEL_209:
  v28 = 0;
LABEL_210:
  sub_19B966FCC(v137);
LABEL_211:
  if (v17)
  {
    sub_19B8750F8(v17);
  }

  return v28;
}