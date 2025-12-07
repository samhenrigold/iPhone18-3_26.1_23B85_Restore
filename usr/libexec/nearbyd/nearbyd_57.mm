uint64_t *sub_10045DF04(uint64_t **a1, uint64_t *a2, uint64_t **a3, uint64_t **a4, unsigned __int8 *a5)
{
  if (a1 + 1 == a2)
  {
    goto LABEL_3;
  }

  v5 = *a5;
  v6 = *(a2 + 32);
  if (v5 < v6)
  {
    goto LABEL_3;
  }

  if (v6 < v5)
  {
LABEL_9:
    v10 = a2[1];
    if (v10)
    {
      v11 = a2[1];
      do
      {
        a4 = v11;
        v11 = *v11;
      }

      while (v11);
    }

    else
    {
      v18 = a2;
      do
      {
        a4 = v18[2];
        v13 = *a4 == v18;
        v18 = a4;
      }

      while (!v13);
    }

    if (a4 != a1 + 1)
    {
      v19 = *(a4 + 32);
      if (v5 >= v19 && (v19 < v5 || a5[1] >= *(a4 + 33)))
      {
        return sub_10045E110(a1, a3, a5);
      }
    }

    if (v10)
    {
      *a3 = a4;
    }

    else
    {
      *a3 = a2;
      return a2 + 1;
    }

    return a4;
  }

  v16 = a5[1];
  v17 = *(a2 + 33);
  if (v16 >= v17)
  {
    if (v17 >= v16)
    {
      *a3 = a2;
      *a4 = a2;
      return a4;
    }

    goto LABEL_9;
  }

LABEL_3:
  v7 = *a2;
  if (*a1 == a2)
  {
    v9 = a2;
  }

  else
  {
    if (v7)
    {
      v8 = *a2;
      do
      {
        v9 = v8;
        v8 = *(v8 + 8);
      }

      while (v8);
    }

    else
    {
      v12 = a2;
      do
      {
        v9 = v12[2];
        v13 = *v9 == v12;
        v12 = v9;
      }

      while (v13);
    }

    v14 = *(v9 + 32);
    v15 = *a5;
    if (v14 >= v15 && (v15 < v14 || *(v9 + 33) >= a5[1]))
    {
      return sub_10045E110(a1, a3, a5);
    }
  }

  if (v7)
  {
    *a3 = v9;
    return v9 + 1;
  }

  else
  {
    *a3 = a2;
    return a2;
  }
}

void sub_10045E0F4(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_10045E1F4(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t *sub_10045E110(uint64_t a1, uint64_t **a2, unsigned __int8 *a3)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    v6 = *a3;
    v7 = a3[1];
    while (1)
    {
      while (1)
      {
        v8 = v4;
        v9 = *(v4 + 32);
        if (v6 >= v9)
        {
          break;
        }

LABEL_4:
        v4 = *v8;
        result = v8;
        if (!*v8)
        {
          goto LABEL_12;
        }
      }

      if (v9 >= v6)
      {
        v10 = *(v8 + 33);
        if (v7 < v10)
        {
          goto LABEL_4;
        }

        if (v10 >= v7)
        {
          goto LABEL_12;
        }
      }

      result = v8 + 1;
      v4 = v8[1];
      if (!v4)
      {
        goto LABEL_12;
      }
    }
  }

  v8 = result;
LABEL_12:
  *a2 = v8;
  return result;
}

uint64_t *sub_10045E178(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10026AB58(result, a4);
  }

  return result;
}

void sub_10045E1D8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10045E1F4(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[5];
    if (v3)
    {
      __p[6] = v3;
      operator delete(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

_BYTE *sub_10045E258(_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[24] = 0;
  if (*(a2 + 24) == 1)
  {
    sub_10045E2C4(a1, a2);
    a1[24] = 1;
  }

  return a1;
}

void sub_10045E2A0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1)
  {
    sub_10022E1CC(v1, *(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

void *sub_10045E2C4(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_10045E31C(a1, *a2, (a2 + 8));
  return a1;
}

void *sub_10045E31C(void *result, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_10045E3A4(v5, (v5 + 8), v4 + 32, (v4 + 32));
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

void *sub_10045E3A4(uint64_t **a1, uint64_t *a2, unsigned __int8 *a3, uint64_t a4)
{
  result = *sub_10045DF04(a1, a2, &v6, &v5, a3);
  if (!result)
  {
    sub_10045E428();
  }

  return result;
}

void sub_10045E4B4(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_10045E1F4(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t *sub_10045E4D0(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10026AB58(result, a4);
  }

  return result;
}

void sub_10045E530(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_10045E54C(uint64_t *result, int a2, int a3, unint64_t a4)
{
  if (a4)
  {
    sub_10019A05C(result, a4);
  }

  return result;
}

void sub_10045E5B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_10019A240(&a9);
  _Unwind_Resume(a1);
}

char *sub_10045E5D4(uint64_t a1, __int128 *a2, __int128 *a3, char *__dst)
{
  v4 = __dst;
  v11 = __dst;
  v12 = __dst;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        sub_1000056BC(v4, *v6, *(v6 + 1));
        v4 = v12;
      }

      else
      {
        v7 = *v6;
        *(v4 + 2) = *(v6 + 2);
        *v4 = v7;
      }

      v6 = (v6 + 24);
      v4 += 24;
      v12 = v4;
    }

    while (v6 != a3);
  }

  v10 = 1;
  sub_10019A1C0(v9);
  return v4;
}

uint64_t ***sub_10045E694(void *a1, unsigned __int8 *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % a1[1];
    }
  }

  else
  {
    v5 = (v2.i32[0] - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 16) == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t *sub_10045E74C(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *(a1 + 8);
  v2 = (a1 + 8);
  v3 = v4;
  if (!v4)
  {
    return v2;
  }

  v5 = *a2;
  v6 = a2[1];
  v7 = v2;
  do
  {
    v8 = *(v3 + 32);
    if (v8 >= v5)
    {
      if (v5 >= v8)
      {
        v9 = *(v3 + 33);
        v10 = v9 >= v6;
        v11 = v9 < v6;
        if (v10)
        {
          v7 = v3;
        }

        v3 += v11;
      }

      else
      {
        v7 = v3;
      }
    }

    else
    {
      ++v3;
    }

    v3 = *v3;
  }

  while (v3);
  if (v7 == v2)
  {
    return v2;
  }

  v12 = *(v7 + 32);
  if (v5 < v12 || v12 >= v5 && v6 < *(v7 + 33))
  {
    return v2;
  }

  return v7;
}

uint64_t *sub_10045E7DC(uint64_t *result, char *a2, char *a3, uint64_t a4)
{
  if (a4)
  {
    sub_100009AC4(result, a4);
  }

  return result;
}

void sub_10045E834(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10045E890()
{
  v0 = objc_autoreleasePoolPush();
  qword_1009F9200 = os_log_create("com.apple.nearbyd", "Regulatory");
  qword_1009F9210 = 0;
  unk_1009F9218 = 0;
  qword_1009F9208 = 0;
  __cxa_atexit(sub_1004573A8, &qword_1009F9208, &_mh_execute_header);
  qword_1009F9228 = 0;
  unk_1009F9230 = 0;
  qword_1009F9220 = 0;
  __cxa_atexit(sub_1004573DC, &qword_1009F9220, &_mh_execute_header);
  qword_1009F9240 = 0;
  unk_1009F9248 = 0;
  qword_1009F9238 = 0;
  __cxa_atexit(sub_100457410, &qword_1009F9238, &_mh_execute_header);
  xmmword_1009F9250 = 0u;
  unk_1009F9260 = 0u;
  dword_1009F9270 = 1065353216;
  __cxa_atexit(sub_100457444, &xmmword_1009F9250, &_mh_execute_header);
  sub_100004A08(v3, "0100000000000000434E000000000000");
  v4 = 1;
  sub_100004A08(v5, "010000000000000043484E0000000000");
  v6 = 1;
  sub_100004A08(v7, "00000001000000005757474D00000000");
  v8 = 0;
  sub_100004A08(v9, "00000001000000000057574700000000");
  v10 = 1;
  sub_100004A08(v11, "00000001000000000053524700000000");
  v12 = 1;
  sub_100004A08(v13, "00000001000000000000535200000000");
  v14 = 1;
  sub_100004A08(v15, "000000010000000053524D5500000000");
  v16 = 1;
  sub_100004A08(v17, "0000000100000000004E484300000000");
  v18 = 1;
  sub_100004A08(v19, "01000000000000004D47575700000000");
  v20 = 0;
  sub_100004A08(v21, "01000000000000004757570000000000");
  v22 = 1;
  sub_100004A08(v23, "01000000000000004752530000000000");
  v24 = 1;
  sub_100004A08(v25, "01000000000000005253000000000000");
  v26 = 1;
  sub_100004A08(v27, "0100000000000000554D525300000000");
  v28 = 1;
  sub_100004A08(v29, "0100000000000000524F570000000000");
  v30 = 1;
  sub_100004A08(v31, "01000000000000005757000000000000");
  v32 = 1;
  sub_100004A08(v33, "01000000000000004D57574A00000000");
  v34 = 0;
  sub_100004A08(v35, "01000000000000004450450000000000");
  v36 = 1;
  sub_100004A08(v37, "01000000000000004450000000000000");
  v38 = 1;
  sub_100004A08(v39, "01000000000000004D57570000000000");
  v40 = 0;
  sub_100004A08(v41, "01000000000000004D44500000000000");
  v42 = 0;
  sub_10045CD6C(qword_1009FA128, v3, 20);
  v1 = 80;
  do
  {
    if (*(&v3[v1 - 1] - 1) < 0)
    {
      operator delete(v3[v1 - 4]);
    }

    v1 -= 4;
  }

  while (v1 * 8);
  __cxa_atexit(sub_100457448, qword_1009FA128, &_mh_execute_header);
  v2 = sub_1000054A8();
  sub_10042B4C4(v2[144]);
  __cxa_atexit(sub_100459A98, qword_1009FA150, &_mh_execute_header);
  objc_autoreleasePoolPop(v0);
}

void sub_10045EC78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  v12 = (v10 + 631);
  v13 = -640;
  v14 = v12;
  while (1)
  {
    v15 = *v14;
    v14 -= 32;
    if (v15 < 0)
    {
      operator delete(*(v12 - 23));
    }

    v12 = v14;
    v13 += 32;
    if (!v13)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

uint64_t sub_10045ED24(uint64_t a1, uint64_t a2)
{
  if (qword_1009F9308 != -1)
  {
    sub_1004D06D4();
  }

  return dword_1009EC4F8;
}

void sub_10045ED5C(id a1)
{
  if (MGGetBoolAnswer())
  {
    v8.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_ + 10000000000;
    while (1)
    {
      v9 = MGCopyAnswer();
      if (v9)
      {
        v10 = v9;
        v11 = CFGetTypeID(v9);
        if (v11 != CFNumberGetTypeID())
        {
          v22 = "ChipID has unexpected type";
LABEL_22:
          sub_100428B48(v22, v12, v23);
          CFRelease(v10);
          return;
        }

        valuePtr = 0;
        if (!CFNumberGetValue(v10, kCFNumberSInt32Type, &valuePtr))
        {
          v22 = "Failed to extract ChipID as a number";
          goto LABEL_22;
        }

        if (valuePtr == 8198)
        {
          v19 = 0;
          v20 = "Chip type 1";
        }

        else
        {
          if (valuePtr != 8228)
          {
            v23 = valuePtr;
            v22 = "Unrecognized ChipID 0x%x";
            goto LABEL_22;
          }

          v19 = 1;
          v20 = "Chip type 2";
        }

        dword_1009EC4F8 = v19;
        sub_100005D28(v20, v12, v13, v14, v15, v16, v17, v18, v23);
        CFRelease(v10);
      }

      else
      {
        __ns.__rep_ = 100000000;
        std::this_thread::sleep_for (&__ns);
      }

      if (dword_1009EC4F8 != 2)
      {
        return;
      }

      if (std::chrono::steady_clock::now().__d_.__rep_ >= v8.__d_.__rep_)
      {
        if (dword_1009EC4F8 == 2)
        {
          sub_100428B48("Timed out attempting to get ChipID", v21.__d_.__rep_);
        }

        return;
      }
    }
  }

  sub_100005D28("UWB not supported", v1, v2, v3, v4, v5, v6, v7, v27);
}

void sub_10045EF14(void **a1@<X1>, uint64_t a2@<X8>)
{
  __dst = 0;
  v56 = 0;
  v55 = 0;
  v54 = 0;
  v53 = 0;
  v52 = 0;
  sub_10046F95C(*a1, 2uLL, &__dst, 1);
  sub_10046F95C(*a1 + 2, 1uLL, &v56, 1);
  sub_10046F95C(*a1 + 3, 2uLL, &v55, 1);
  sub_10046F95C(*a1 + 5, 1uLL, &v54, 1);
  sub_10046F95C(*a1 + 6, 2uLL, &v53, 1);
  v60 = 0;
  sub_10046F95C(*a1 + 8, 1uLL, &v52, 1);
  sub_10045F8C4(v51, v52);
  if (v52)
  {
    v39 = 0;
    v4 = 9;
    do
    {
      LOWORD(v42) = 0;
      __p[32] = 0;
      v47[0] = 0;
      v47[8] = 0;
      v47[16] = 0;
      v47[24] = 0;
      v49 = 0;
      v50 = 0;
      v48 = 0;
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      memset(__p, 0, 25);
      v5 = *a1 + v4;
      v41 = 0;
      sub_10046F95C(v5, 1uLL, &v41, 1);
      v6 = sub_100428610(v41);
      if ((v6 & 0x10000) == 0)
      {
        __assert_rtn("decodeRangeCIREventVersion1", "roseCIRDataDecoderV1.cpp", 61, "packetType.has_value()");
      }

      LOWORD(v42) = v6;
      sub_10046F95C(*a1 + v4 + 1, 1uLL, &v42 + 2, 1);
      v7 = sub_10041D690();
      v8 = v7;
      LOBYTE(__src[0]) = 0;
      v9 = v43;
      if (v7 <= *(&v43 + 1) - v43)
      {
        if (v7 < *(&v43 + 1) - v43)
        {
          *(&v43 + 1) = v43 + v7;
        }
      }

      else
      {
        sub_100250E48(&v43, v7 - (*(&v43 + 1) - v43), __src);
        v9 = v43;
      }

      v10 = v4 + 2;
      sub_10046F95C(*a1 + v10, v8, v9, 1);
      v11 = sub_10041D79C();
      v12 = v11;
      v13 = v11;
      LOBYTE(__src[0]) = 0;
      v14 = *(&v44 + 1);
      if (v11 <= v45 - *(&v44 + 1))
      {
        if (v11 < v45 - *(&v44 + 1))
        {
          *&v45 = *(&v44 + 1) + v11;
        }
      }

      else
      {
        sub_100250E48(&v44 + 1, v11 - (v45 - *(&v44 + 1)), __src);
        v14 = *(&v44 + 1);
      }

      v15 = v8 + v10;
      sub_10046F95C(*a1 + v15, v13, v14, 1);
      v16 = 0;
      v4 = v12 + v15;
      do
      {
        if ((BYTE2(v42) >> v16))
        {
          bzero(__src, 0x400uLL);
          for (i = 0; i != 1024; i += 4)
          {
            LOWORD(v58) = 0;
            v40 = 0;
            sub_10046F95C(*a1 + v4 + i, 2uLL, &v58, 1);
            sub_10046F95C(*a1 + v4 + i + 2, 2uLL, &v40, 1);
            v18 = v58;
            v19 = (__src + i);
            *v19 = v40;
            v19[1] = v18;
          }

          v20 = *&__p[8];
          if (*&__p[8] >= *&__p[16])
          {
            v22 = *__p;
            v23 = *&__p[8] - *__p;
            v24 = ((*&__p[8] - *__p) >> 10) + 1;
            if (v24 >> 54)
            {
              sub_100019B38();
            }

            v25 = *&__p[16] - *__p;
            if ((*&__p[16] - *__p) >> 9 > v24)
            {
              v24 = v25 >> 9;
            }

            if (v25 >= 0x7FFFFFFFFFFFFC00)
            {
              v26 = 0x3FFFFFFFFFFFFFLL;
            }

            else
            {
              v26 = v24;
            }

            if (v26)
            {
              sub_10018997C(__p, v26);
            }

            v27 = ((*&__p[8] - *__p) >> 10 << 10);
            memcpy(v27, __src, 0x400uLL);
            v21 = v27 + 1024;
            v28 = &v27[-1024 * (v23 >> 10)];
            memcpy(v28, v22, v23);
            v29 = *__p;
            *__p = v28;
            *&__p[8] = v21;
            *&__p[16] = 0;
            if (v29)
            {
              operator delete(v29);
            }
          }

          else
          {
            memcpy(*&__p[8], __src, 0x400uLL);
            v21 = (v20 + 1024);
          }

          v4 += 1024;
          *&__p[8] = v21;
        }

        ++v16;
      }

      while (v16 != 3);
      v30 = v51[0] + 152 * v39;
      v31 = v42;
      *(v30 + 2) = BYTE2(v42);
      *v30 = v31;
      if (v30 == &v42)
      {
        v34 = *&__p[24];
        v35 = *v47;
        *(v30 + 105) = *&v47[9];
        *(v30 + 80) = v34;
        *(v30 + 96) = v35;
      }

      else
      {
        sub_1000134D0((v30 + 8), v43, *(&v43 + 1), *(&v43 + 1) - v43);
        sub_1000134D0((v30 + 32), *(&v44 + 1), v45, v45 - *(&v44 + 1));
        sub_10045F5A0((v30 + 56), *__p, *&__p[8], (*&__p[8] - *__p) >> 10);
        v32 = *&__p[24];
        v33 = *v47;
        *(v30 + 105) = *&v47[9];
        *(v30 + 80) = v32;
        *(v30 + 96) = v33;
        sub_10045F6CC((v30 + 128), v48, v49, (v49 - v48) >> 5);
      }

      *&__src[0] = &v48;
      sub_100189A94(__src);
      if (*__p)
      {
        *&__p[8] = *__p;
        operator delete(*__p);
      }

      if (*(&v44 + 1))
      {
        *&v45 = *(&v44 + 1);
        operator delete(*(&v44 + 1));
      }

      if (v43)
      {
        *(&v43 + 1) = v43;
        operator delete(v43);
      }

      ++v39;
    }

    while (v39 < v52);
  }

  v36 = __dst;
  v37 = sub_100427658(v56, v3);
  v42 = 0;
  v43 = 0uLL;
  sub_100425488(__src, v36, v37, v55, v54, &v60, v51, &v42);
  *a2 = __src[0];
  *(a2 + 16) = *&__src[1];
  *(a2 + 24) = *(&__src[1] + 8);
  *(a2 + 40) = *(&__src[2] + 1);
  *(&__src[1] + 1) = 0;
  *&__src[2] = 0;
  *(a2 + 48) = __src[3];
  *(a2 + 64) = *&__src[4];
  *(&__src[2] + 1) = 0;
  memset(&__src[3], 0, 24);
  *(a2 + 72) = 1;
  v58 = &__src[3];
  sub_100189A94(&v58);
  v58 = &__src[1] + 1;
  sub_100189B38(&v58);
  v58 = &v42;
  sub_100189A94(&v58);
  *&__src[0] = v51;
  sub_100189B38(__src);
}

void sub_10045F4F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void **a39, void **a40)
{
  sub_100189A94(&a39);
  a40 = &a34;
  sub_100189B38(&a40);
  _Unwind_Resume(a1);
}

uint64_t *sub_10045F5A0(uint64_t *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 10)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 54))
    {
      v9 = v7 >> 9;
      if (v7 >> 9 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFC00)
      {
        v10 = 0x3FFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_100189940(v6, v10);
    }

    sub_100019B38();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 10)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void sub_10045F6CC(uint64_t **a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = *a1;
  if (a4 > (a1[2] - *a1) >> 5)
  {
    sub_10045F810(a1);
    if (!(a4 >> 59))
    {
      v9 = a1[2] - *a1;
      v10 = v9 >> 4;
      if (v9 >> 4 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x7FFFFFFFFFFFFFE0)
      {
        v11 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      sub_100189CA4(a1, v11);
    }

    sub_100019B38();
  }

  v12 = a1[1] - v8;
  if (a4 <= v12 >> 5)
  {
    sub_10045F850(&v18, a2, a3, v8);
    v14 = v13;
    v15 = a1[1];
    if (v15 != v13)
    {
      do
      {
        v16 = *(v15 - 24);
        if (v16)
        {
          *(v15 - 16) = v16;
          operator delete(v16);
        }

        v15 -= 32;
      }

      while (v15 != v14);
    }

    a1[1] = v14;
  }

  else
  {
    sub_10045F850(&v17, a2, a2 + v12, v8);
    a1[1] = sub_100189D28(a1, a2 + v12, a3, a1[1]);
  }
}

void sub_10045F810(uint64_t *a1)
{
  if (*a1)
  {
    sub_100189AE8(a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t sub_10045F850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      *a4 = *v5;
      if (v5 != a4)
      {
        sub_1000134D0(a4 + 1, *(v5 + 8), *(v5 + 16), *(v5 + 16) - *(v5 + 8));
      }

      v5 += 32;
      a4 += 4;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t *sub_10045F8C4(uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_100189658(a1, a2);
  }

  return a1;
}

uint64_t sub_10045F970(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 213) = 0;
  *(a1 + 216) = 0;
  *(a1 + 568) = 0;
  *(a1 + 576) = 999;
  *(a1 + 584) = 850045863;
  *(a1 + 592) = 0u;
  *(a1 + 608) = 0u;
  *(a1 + 624) = 0u;
  *(a1 + 640) = 0;
  *(a1 + 648) = 850045863;
  *(a1 + 656) = 0u;
  *(a1 + 672) = 0u;
  *(a1 + 688) = 0u;
  *(a1 + 704) = 0;
  *(a1 + 736) = 0;
  sub_10045FA48(a1);
  v4 = sub_10045ED24(v2, v3);
  *(a1 + 744) = v4;
  if (v4 <= 2)
  {
    *(a1 + 748) = dword_100572BC8[v4];
  }

  return a1;
}

void sub_10045FA14(_Unwind_Exception *a1)
{
  sub_1000197C8(v1 + 712);
  std::mutex::~mutex((v1 + 648));
  std::mutex::~mutex((v1 + 584));
  sub_100460BC0(v2);
  sub_100017E34(v1);
  _Unwind_Resume(a1);
}

void sub_10045FA48(uint64_t a1)
{
  v2 = MGGetProductType();
  if (v2 > 2390434177)
  {
    if (v2 <= 3564012491)
    {
      if (v2 > 2941181570)
      {
        if (v2 <= 3001488777)
        {
          switch(v2)
          {
            case 2941181571:
              v10 = 18;
              goto LABEL_143;
            case 2943112657:
              v10 = 100;
              goto LABEL_143;
            case 2979575960:
              v10 = 106;
              goto LABEL_143;
          }
        }

        else if (v2 > 3143587591)
        {
          if (v2 == 3143587592)
          {
            v10 = 118;
            goto LABEL_143;
          }

          if (v2 == 3348380076)
          {
            v10 = 200;
            goto LABEL_143;
          }
        }

        else
        {
          if (v2 == 3001488778)
          {
            v10 = 5;
            goto LABEL_143;
          }

          if (v2 == 3048527336)
          {
            v10 = 24;
            goto LABEL_143;
          }
        }
      }

      else if (v2 <= 2722529671)
      {
        switch(v2)
        {
          case 2390434178:
            v10 = 126;
            goto LABEL_143;
          case 2625074843:
            v10 = 114;
            goto LABEL_143;
          case 2688879999:
            v10 = 14;
            goto LABEL_143;
        }
      }

      else if (v2 > 2795618602)
      {
        if (v2 == 2795618603)
        {
          v10 = 21;
          goto LABEL_143;
        }

        if (v2 == 2940697645)
        {
          v10 = 13;
          goto LABEL_143;
        }
      }

      else
      {
        if (v2 == 2722529672)
        {
          v10 = 2;
          goto LABEL_143;
        }

        if (v2 == 2793418701)
        {
          v10 = 15;
          goto LABEL_143;
        }
      }
    }

    else if (v2 <= 3819635029)
    {
      if (v2 <= 3591055298)
      {
        switch(v2)
        {
          case 3564012492:
            v10 = 122;
            goto LABEL_143;
          case 3571532206:
            v10 = 102;
            goto LABEL_143;
          case 3585085679:
            v10 = 8;
            goto LABEL_143;
        }
      }

      else if (v2 > 3742999857)
      {
        if (v2 == 3742999858)
        {
          v10 = 110;
          goto LABEL_143;
        }

        if (v2 == 3767261006)
        {
          v10 = 104;
          goto LABEL_143;
        }
      }

      else
      {
        if (v2 == 3591055299)
        {
          v10 = 25;
          goto LABEL_143;
        }

        if (v2 == 3663011141)
        {
          v10 = 109;
          goto LABEL_143;
        }
      }
    }

    else if (v2 > 3885279869)
    {
      if (v2 > 4068102501)
      {
        if (v2 == 4068102502)
        {
          v10 = 120;
          goto LABEL_143;
        }

        if (v2 == 4201643249)
        {
          v10 = 6;
          goto LABEL_143;
        }
      }

      else
      {
        if (v2 == 3885279870)
        {
          v10 = 3;
          goto LABEL_143;
        }

        if (v2 == 4018315120)
        {
          v10 = 123;
          goto LABEL_143;
        }
      }
    }

    else if (v2 > 3839750254)
    {
      if (v2 == 3839750255)
      {
        v10 = 117;
        goto LABEL_143;
      }

      if (v2 == 3867318491)
      {
        v10 = 113;
        goto LABEL_143;
      }
    }

    else
    {
      if (v2 == 3819635030)
      {
        v10 = 112;
        goto LABEL_143;
      }

      if (v2 == 3825599860)
      {
        v10 = 16;
        goto LABEL_143;
      }
    }

LABEL_142:
    v10 = 997;
    goto LABEL_143;
  }

  if (v2 <= 1371389548)
  {
    if (v2 > 749116820)
    {
      if (v2 <= 877582974)
      {
        switch(v2)
        {
          case 749116821:
            v10 = 119;
            goto LABEL_143;
          case 851437781:
            v10 = 19;
            goto LABEL_143;
          case 861924853:
            v10 = 125;
            goto LABEL_143;
        }
      }

      else if (v2 > 1169082143)
      {
        if (v2 == 1169082144)
        {
          v10 = 4;
          goto LABEL_143;
        }

        if (v2 == 1280909812)
        {
          v10 = 105;
          goto LABEL_143;
        }
      }

      else
      {
        if (v2 == 877582975)
        {
          v10 = 23;
          goto LABEL_143;
        }

        if (v2 == 1060988941)
        {
          v10 = 7;
          goto LABEL_143;
        }
      }
    }

    else if (v2 <= 347088859)
    {
      switch(v2)
      {
        case -1:
          v10 = 999;
          goto LABEL_143;
        case 133314240:
          v10 = 17;
          goto LABEL_143;
        case 330877086:
          v10 = 22;
          goto LABEL_143;
      }
    }

    else if (v2 > 574536382)
    {
      if (v2 == 574536383)
      {
        v10 = 20;
        goto LABEL_143;
      }

      if (v2 == 689804742)
      {
        v10 = 9;
        goto LABEL_143;
      }
    }

    else
    {
      if (v2 == 347088860)
      {
        v10 = 124;
        goto LABEL_143;
      }

      if (v2 == 425046865)
      {
        v10 = 108;
        goto LABEL_143;
      }
    }

    goto LABEL_142;
  }

  if (v2 <= 1781728946)
  {
    if (v2 <= 1540760352)
    {
      switch(v2)
      {
        case 1371389549:
          v10 = 1;
          goto LABEL_143;
        case 1408738134:
          v10 = 103;
          goto LABEL_143;
        case 1434404433:
          v10 = 11;
          goto LABEL_143;
      }
    }

    else if (v2 > 1602181455)
    {
      if (v2 == 1602181456)
      {
        v10 = 107;
        goto LABEL_143;
      }

      if (v2 == 1770142589)
      {
        v10 = 116;
        goto LABEL_143;
      }
    }

    else
    {
      if (v2 == 1540760353)
      {
        v10 = 201;
        goto LABEL_143;
      }

      if (v2 == 1554479185)
      {
        v10 = 121;
        goto LABEL_143;
      }
    }

    goto LABEL_142;
  }

  if (v2 > 2084894488)
  {
    if (v2 > 2132302343)
    {
      if (v2 == 2132302344)
      {
        v10 = 101;
        goto LABEL_143;
      }

      if (v2 == 2309863438)
      {
        v10 = 10;
        goto LABEL_143;
      }
    }

    else
    {
      if (v2 == 2084894489)
      {
        v10 = 115;
        goto LABEL_143;
      }

      if (v2 == 2085054105)
      {
        v10 = 111;
        goto LABEL_143;
      }
    }

    goto LABEL_142;
  }

  if (v2 > 2021146988)
  {
    if (v2 == 2021146989)
    {
      v10 = 12;
      goto LABEL_143;
    }

    if (v2 == 2080700391)
    {
      v10 = 0;
      goto LABEL_143;
    }

    goto LABEL_142;
  }

  if (v2 == 1781728947)
  {
    v10 = 26;
    goto LABEL_143;
  }

  if (v2 != 1872992317)
  {
    goto LABEL_142;
  }

  v10 = 27;
LABEL_143:
  *(a1 + 576) = v10;
  sub_100005D28("RoseParameterCache: device type %d", v3, v4, v5, v6, v7, v8, v9, v10);
}

void sub_100460188(uint64_t a1, __int128 *a2)
{
  std::mutex::lock((a1 + 648));
  sub_1004601FC(a1, a2);
  sub_100005D28("RoseParameterCache::cacheHelloResponse", v4, v5, v6, v7, v8, v9, v10, v18);
  sub_1004602D8(a1, v11, v12, v13, v14, v15, v16, v17);

  std::mutex::unlock((a1 + 648));
}

void **sub_1004601FC(void **__dst, __int128 *a2)
{
  if (*(__dst + 112) == 1)
  {
    if (*(__dst + 96) == 1)
    {
      if (*(__dst + 95) < 0)
      {
        operator delete(__dst[9]);
      }

      if (*(__dst + 63) < 0)
      {
        operator delete(__dst[5]);
      }
    }

    if (*(__dst + 23) < 0)
    {
      operator delete(*__dst);
    }

    *(__dst + 112) = 0;
  }

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

  *(__dst + 6) = *(a2 + 6);
  sub_1000199E0((__dst + 4), a2 + 8);
  __dst[13] = *(a2 + 13);
  *(__dst + 112) = 1;
  return __dst;
}

void sub_1004602BC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004602D8(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1[112])
  {
    v9 = "cached";
  }

  else
  {
    v9 = "not cached";
  }

  sub_100005D28("RoseParameterCache: HelloResponse %s", a2, a3, a4, a5, a6, a7, a8, v9);
  if (a1[213])
  {
    v17 = "cached";
  }

  else
  {
    v17 = "not cached";
  }

  sub_100005D28("RoseParameterCache: AlishaCapabilities %s", v10, v11, v12, v13, v14, v15, v16, v17);
  if (a1[568])
  {
    v25 = "cached";
  }

  else
  {
    v25 = "not cached";
  }

  sub_100005D28("RoseParameterCache: RoseCalFileParser %s", v18, v19, v20, v21, v22, v23, v24, v25);
  if (a1[568] == 1)
  {
    v26 = sub_100004A08(__p, "AOAtoPDOAMapping_CV_Ch5");
    sub_1004607E0(v26, (a1 + 280), __p, v27, v28, v29, v30, v31);
    if (v51 < 0)
    {
      operator delete(__p[0]);
    }

    if ((a1[568] & 1) == 0)
    {
      goto LABEL_23;
    }

    v32 = sub_100004A08(__p, "AOAtoPDOAMapping_CH_Ch5");
    sub_1004607E0(v32, (a1 + 344), __p, v33, v34, v35, v36, v37);
    if (v51 < 0)
    {
      operator delete(__p[0]);
    }

    if ((a1[568] & 1) == 0)
    {
      goto LABEL_23;
    }

    v38 = sub_100004A08(__p, "AOAtoPDOAMapping_CV_Ch9");
    sub_1004607E0(v38, (a1 + 408), __p, v39, v40, v41, v42, v43);
    if (v51 < 0)
    {
      operator delete(__p[0]);
    }

    if ((a1[568] & 1) == 0)
    {
LABEL_23:
      sub_1000195BC();
    }

    v44 = sub_100004A08(__p, "AOAtoPDOAMapping_CH_Ch9");
    sub_1004607E0(v44, (a1 + 472), __p, v45, v46, v47, v48, v49);
    if (v51 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_100460444(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10046046C(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 213) == 1)
  {
    *(a1 + 213) = 0;
  }

  v9 = *a2;
  *(a1 + 136) = a2[1];
  *(a1 + 120) = v9;
  v10 = a2[2];
  v11 = a2[3];
  v12 = a2[4];
  *(a1 + 197) = *(a2 + 77);
  *(a1 + 184) = v12;
  *(a1 + 168) = v11;
  *(a1 + 152) = v10;
  *(a1 + 213) = 1;
  sub_100005D28("RoseParameterCache::cacheAlishaCapabilities", a2, a3, a4, a5, a6, a7, a8, v20);

  sub_1004602D8(a1, v13, v14, v15, v16, v17, v18, v19);
}

void sub_1004604EC(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(a1 + 568) == 1)
  {

    sub_100005D28("RoseParameterCache::cacheRoseCalFileParser: returning because roseCalFileParser is already cached", a2, a3, a4, a5, a6, a7, a8, a9);
  }

  else
  {
    sub_1004605C4(a1 + 216, a2);
    sub_100005D28("RoseParameterCache::cacheRoseCalFileParser", v10, v11, v12, v13, v14, v15, v16, v32);
    sub_1004602D8(a1, v17, v18, v19, v20, v21, v22, v23);
    std::mutex::lock((a1 + 584));
    if (*(a1 + 736))
    {
      sub_100005D28("RoseParameterCache::cacheRoseCalFileParser: start executing CalFileParsingDone callback function", v24, v25, v26, v27, v28, v29, v30, v33);
      v31 = *(a1 + 568) == 1 && sub_1001F41D4((a1 + 272));
      sub_10003229C(a1 + 712, v31);
    }

    std::mutex::unlock((a1 + 584));
  }
}

uint64_t sub_1004605C4(uint64_t a1, __int128 *a2)
{
  sub_100460920(a1);
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v5;
  *(a1 + 32) = v6;
  *a1 = v4;
  sub_100460C78(a1 + 56, a2 + 56);
  *(a1 + 320) = *(a2 + 160);
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 328) = 0;
  *(a1 + 328) = *(a2 + 41);
  *(a1 + 336) = a2[21];
  *(a2 + 41) = 0;
  *(a2 + 42) = 0;
  *(a2 + 43) = 0;
  *(a1 + 352) = 1;
  return a1;
}

void sub_100460644(id a1)
{
  v25 = 1;
  v8 = container_system_group_path_for_identifier();
  if (!v8)
  {
    sub_1004D0760(&v25, v1, v2, v3, v4, v5, v6, v7);
  }

  sub_100004A08(&v24, v8);
  sub_100004A08(__p, "/Library/");
  if ((v23 & 0x80u) == 0)
  {
    v9 = __p;
  }

  else
  {
    v9 = __p[0];
  }

  if ((v23 & 0x80u) == 0)
  {
    v10 = v23;
  }

  else
  {
    v10 = __p[1];
  }

  v11 = std::string::append(&v24, v9, v10);
  v19 = v11->__r_.__value_.__r.__words[0];
  v26[0] = v11->__r_.__value_.__l.__size_;
  *(v26 + 7) = *(&v11->__r_.__value_.__r.__words[1] + 7);
  v20 = HIBYTE(v11->__r_.__value_.__r.__words[2]);
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  if (byte_1009F9337 < 0)
  {
    operator delete(xmmword_1009F9320);
  }

  *&xmmword_1009F9320 = v19;
  *(&xmmword_1009F9320 + 1) = v26[0];
  *(&xmmword_1009F9320 + 15) = *(v26 + 7);
  byte_1009F9337 = v20;
  if (v23 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  if (byte_1009F9337 >= 0)
  {
    v21 = &xmmword_1009F9320;
  }

  else
  {
    v21 = xmmword_1009F9320;
  }

  sub_100005D28("system group container path: %s", v12, v13, v14, v15, v16, v17, v18, v21);
  free(v8);
}

void sub_1004607A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004607E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a3 + 23) >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  if (*(a2 + 56) == 1)
  {
    sub_100005D28("RoseParameterCache: mapping %s cached (%zu x %zu)", a2, a3, a4, a5, a6, a7, a8, v8);
  }

  else
  {
    sub_100005D28("RoseParameterCache: mapping %s not cached", a2, a3, a4, a5, a6, a7, a8, v8);
  }
}

void sub_100460840(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 584));
  sub_100005D28("RoseParameterCache: CalFileParsingDone callback function is registered", v4, v5, v6, v7, v8, v9, v10, v11);
  sub_1004608AC((a1 + 712), a2);

  std::mutex::unlock((a1 + 584));
}

void *sub_1004608AC(void *a1, uint64_t a2)
{
  sub_10003735C(v4, a2);
  sub_100460DB4(v4, a1);
  sub_1000197C8(v4);
  return a1;
}

void sub_100460920(uint64_t a1)
{
  if (*(a1 + 352) == 1)
  {
    v8[3] = v1;
    v8[4] = v2;
    v8[0] = (a1 + 328);
    sub_100019848(v8);
    if (*(a1 + 312) == 1)
    {
      v4 = *(a1 + 288);
      if (v4)
      {
        *(a1 + 296) = v4;
        operator delete(v4);
      }
    }

    if (*(a1 + 248) == 1)
    {
      v5 = *(a1 + 224);
      if (v5)
      {
        *(a1 + 232) = v5;
        operator delete(v5);
      }
    }

    if (*(a1 + 184) == 1)
    {
      v6 = *(a1 + 160);
      if (v6)
      {
        *(a1 + 168) = v6;
        operator delete(v6);
      }
    }

    if (*(a1 + 120) == 1)
    {
      v7 = *(a1 + 96);
      if (v7)
      {
        *(a1 + 104) = v7;
        operator delete(v7);
      }
    }

    *(a1 + 352) = 0;
  }
}

uint64_t sub_1004609DC(uint64_t a1)
{
  std::mutex::lock((a1 + 648));
  if (*(a1 + 112) == 1)
  {
    v2 = *(a1 + 26) & 0xFF00;
    v3 = *(a1 + 26);
    v4 = 0x10000;
  }

  else
  {
    v4 = 0;
    v3 = 0;
    v2 = 0;
  }

  std::mutex::unlock((a1 + 648));
  return v3 | v4 | v2;
}

uint64_t sub_100460A68(uint64_t a1)
{
  result = sub_10041C6C8(*(a1 + 576));
  if (result)
  {
    v3 = sub_1004609DC(a1);
    return (v3 & 0x10000) != 0 && v3 == 6;
  }

  return result;
}

uint64_t sub_100460AC0(uint64_t a1)
{
  if (*(a1 + 744) == 1)
  {
    return sub_10041C854(*(a1 + 576));
  }

  else
  {
    return 0;
  }
}

BOOL sub_100460AF8(uint64_t a1)
{
  v2 = *(a1 + 744);
  if (v2 == 1)
  {
    if (sub_100003AA8(*(a1 + 576)))
    {
      return 1;
    }

    else
    {
      v5 = *(a1 + 576);

      return sub_10041C748(v5);
    }
  }

  else if (v2)
  {
    return 0;
  }

  else
  {
    v3 = *(a1 + 576);

    return sub_100003AA8(v3);
  }
}

uint64_t sub_100460B80(uint64_t a1)
{
  v1 = sub_1004609DC(a1);
  if (v1 - 5 >= 2)
  {
    v2 = 39;
  }

  else
  {
    v2 = 54;
  }

  return v2 & (v1 << 15 >> 31) | ((v1 & 0x10000u) >> 8);
}

uint64_t sub_100460BC0(uint64_t a1)
{
  if (*(a1 + 352) == 1)
  {
    v7 = (a1 + 328);
    sub_100019848(&v7);
    if (*(a1 + 312) == 1)
    {
      v2 = *(a1 + 288);
      if (v2)
      {
        *(a1 + 296) = v2;
        operator delete(v2);
      }
    }

    if (*(a1 + 248) == 1)
    {
      v3 = *(a1 + 224);
      if (v3)
      {
        *(a1 + 232) = v3;
        operator delete(v3);
      }
    }

    if (*(a1 + 184) == 1)
    {
      v4 = *(a1 + 160);
      if (v4)
      {
        *(a1 + 168) = v4;
        operator delete(v4);
      }
    }

    if (*(a1 + 120) == 1)
    {
      v5 = *(a1 + 96);
      if (v5)
      {
        *(a1 + 104) = v5;
        operator delete(v5);
      }
    }
  }

  return a1;
}

__n128 sub_100460C78(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = 0;
  *(a1 + 64) = 0;
  if (*(a2 + 64) == 1)
  {
    v2 = *(a2 + 24);
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 24) = v2;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 40) = 0;
    result = *(a2 + 40);
    *(a1 + 40) = result;
    *(a1 + 56) = *(a2 + 56);
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
    *(a1 + 64) = 1;
  }

  *(a1 + 72) = 0;
  *(a1 + 128) = 0;
  if (*(a2 + 128) == 1)
  {
    v4 = *(a2 + 88);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = v4;
    *(a1 + 112) = 0;
    *(a1 + 120) = 0;
    *(a1 + 104) = 0;
    result = *(a2 + 104);
    *(a1 + 104) = result;
    *(a1 + 120) = *(a2 + 120);
    *(a2 + 104) = 0;
    *(a2 + 112) = 0;
    *(a2 + 120) = 0;
    *(a1 + 128) = 1;
  }

  *(a1 + 136) = 0;
  *(a1 + 192) = 0;
  if (*(a2 + 192) == 1)
  {
    v5 = *(a2 + 152);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 152) = v5;
    *(a1 + 176) = 0;
    *(a1 + 184) = 0;
    *(a1 + 168) = 0;
    result = *(a2 + 168);
    *(a1 + 168) = result;
    *(a1 + 184) = *(a2 + 184);
    *(a2 + 168) = 0;
    *(a2 + 176) = 0;
    *(a2 + 184) = 0;
    *(a1 + 192) = 1;
  }

  *(a1 + 200) = 0;
  *(a1 + 256) = 0;
  if (*(a2 + 256) == 1)
  {
    v6 = *(a2 + 216);
    *(a1 + 200) = *(a2 + 200);
    *(a1 + 216) = v6;
    *(a1 + 240) = 0;
    *(a1 + 248) = 0;
    *(a1 + 232) = 0;
    result = *(a2 + 232);
    *(a1 + 232) = result;
    *(a1 + 248) = *(a2 + 248);
    *(a2 + 232) = 0;
    *(a2 + 240) = 0;
    *(a2 + 248) = 0;
    *(a1 + 256) = 1;
  }

  return result;
}

void *sub_100460DB4(void *result, void *a2)
{
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_10046100C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_100020444(a1);
}

uint64_t sub_100461018(uint64_t result, void *a2, uint64_t a3, int a4)
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
  return result;
}

uint64_t sub_10046105C(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a1[9];
  if (v9)
  {
    v12 = std::__shared_weak_count::lock(v9);
    if (v12)
    {
      v13 = a1[8];
      if (v13)
      {
        v14 = sub_100426398(a2);
        if (v14 == 2)
        {
          v26 = sub_10042679C(a2) - 19;
          if (v26 > 0x3B || ((1 << v26) & 0x800000000000081) == 0)
          {
            sub_100005D28("got factory test response packet with  0x%02x", v19, v20, v21, v22, v23, v24, v25, *(a2 + 1));
            goto LABEL_15;
          }

          __dst = 0;
          sub_10046F95C((*a3 + 4), 2uLL, &__dst, 1);
          v27 = sub_10042679C(a2);
          switch(v27)
          {
            case 78:
              v28 = "TEST_NB_TX";
              break;
            case 26:
              v28 = "TEST_TX2";
              break;
            case 19:
              v28 = "TEST_UWB_TX";
              break;
            default:
              __assert_rtn("factoryTestMsgIdToString", "roseResponseHandler.cpp", 55, "false");
          }

          sub_100004A08(&v72, v28);
          v40 = SHIBYTE(v73);
          v41 = v72;
          sub_1004279E4(__dst, v70);
          v49 = &v72;
          if (v40 < 0)
          {
            v49 = v41;
          }

          sub_100005D28("got factory %s response packet with  0x%02x, status %s", v42, v43, v44, v45, v46, v47, v48, v49);
          if (v71 < 0)
          {
            operator delete(v70[0]);
          }
        }

        else
        {
          if (v14 == 1)
          {
            v18 = sub_1004266E8(a2);
            if (v18 == 84)
            {
              sub_100463608(a3, v15);
              atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
              operator new();
            }

            if (v18 == 82)
            {
              sub_1004634A4(a3, v15, &v72);
              v61 = v13;
              v62 = v12;
              atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
              v63 = v72;
              if (SHIBYTE(v74) < 0)
              {
                sub_1000056BC(__p, v73, *(&v73 + 1));
              }

              else
              {
                *__p = v73;
                __p[2] = v74;
              }

              operator new();
            }

            v29 = *(a2 + 2);
            v30 = "got debug command response with unknown message ID 0x%02x";
            goto LABEL_38;
          }

          if (v14)
          {
            v29 = *(a2 + 1);
            v30 = "got response packet with unknown groupID 0x%02x";
LABEL_38:
            sub_100428B48(v30, v15, v29);
            goto LABEL_15;
          }

          v16 = sub_10042640C(a2);
          if (v16 <= 20)
          {
            if (v16 > 3)
            {
              if (v16 > 8)
              {
                if (v16 == 9)
                {
                  sub_100463270(a3, &v65);
                  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
                  operator new();
                }

                if (v16 == 13)
                {
                  sub_1004628E0(a3);
                  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
                  operator new();
                }
              }

              else
              {
                if (v16 == 4)
                {
                  sub_100462A8C(a3, &v72);
                  v67[0] = v13;
                  v67[1] = v12;
                  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
                  v68 = v72;
                  memset(v69, 0, sizeof(v69));
                  sub_10026B35C(v69, v73, *(&v73 + 1), (*(&v73 + 1) - v73) >> 5);
                  sub_100462D0C(v70, v67);
                }

                if (v16 == 5)
                {
                  sub_100462E10(a3);
                  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
                  operator new();
                }
              }
            }

            else
            {
              if (v16 > 1)
              {
                if (v16 != 2)
                {
                  sub_1004629C8(a3);
                  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
                  operator new();
                }

                sub_1004626B8(a3);
                atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
                operator new();
              }

              if (!v16)
              {
                sub_100461FC8(a3);
              }

              if (v16 == 1)
              {
                sub_1004625F4(a3);
                atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
                operator new();
              }
            }

            goto LABEL_79;
          }

          if (v16 > 81)
          {
            if (v16 > 95)
            {
              if (v16 == 96)
              {
                sub_10046277C(a3);
                atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
                operator new();
              }

              if (v16 == 112)
              {
                sub_100462840(a3);
                atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
                operator new();
              }
            }

            else
            {
              if (v16 == 82)
              {
                sub_100463190(a3);
                atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
                operator new();
              }

              if (v16 == 83)
              {
                sub_100463000(a3, &v66);
                atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
                operator new();
              }
            }

            goto LABEL_79;
          }

          if (v16 > 79)
          {
            if (v16 != 80)
            {
              sub_100463190(a3);
              atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
              operator new();
            }

            sub_100463204(a3);
            atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
            operator new();
          }

          if (v16 == 21)
          {
            v50 = sub_100462EFC(a3, v15);
            sub_1004279E4(v50, &v72);
            if (v73 >= 0)
            {
              v58 = &v72;
            }

            else
            {
              v58 = v72;
            }

            sub_100005D28("got tx power backoff response packet with status: %s", v51, v52, v53, v54, v55, v56, v57, v58);
          }

          else
          {
            if (v16 != 22)
            {
LABEL_79:
              v29 = *(a2 + 2);
              v30 = "got ranging response with unknown message ID 0x%02x";
              goto LABEL_38;
            }

            v31 = sub_100462F64(a3, v15);
            sub_1004279E4(v31, &v72);
            if (v73 >= 0)
            {
              v39 = &v72;
            }

            else
            {
              v39 = v72;
            }

            sub_100005D28("got measure temperature response packet with status: %s, temperature (%f degree Celsius)", v32, v33, v34, v35, v36, v37, v38, v39);
          }
        }

        if (SHIBYTE(v73) < 0)
        {
          operator delete(v72);
        }

        goto LABEL_15;
      }
    }
  }

  else
  {
    v12 = 0;
  }

  sub_100005D28("No response listener, ignoring response packet", a2, a3, a4, a5, a6, a7, a8, v59);
  if (v12)
  {
LABEL_15:
    sub_10000AD84(v12);
  }

  return 0;
}

void sub_100461CE8(_Unwind_Exception *a1)
{
  sub_1001B3E54(v2 - 248);
  sub_1001B3E54(v2 - 216);
  sub_100019608(v2 - 184);
  sub_10000AD84(v1);
  _Unwind_Resume(a1);
}

void sub_100461FC8(uint64_t *a1)
{
  if (*(sub_1000054A8() + 187) == 1)
  {

    sub_1004636A4(a1);
  }

  v4 = *a1;
  if ((a1[1] - *a1) <= 0x48)
  {
    sub_100428B48("Not enough bytes in Hello Response (%zu < %u)", v3, a1[1] - *a1, 73);
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1004211BC(exception, "Not enough bytes in Hello Response");
  }

  else
  {
    __dst[0] = 0;
    sub_10046F95C((v4 + 4), 2uLL, __dst, 1);
    if (!__dst[0])
    {
      operator new();
    }

    sub_100428B48("Error status in Hello Response: 0x%x", v5, __dst[0]);
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1004211BC(exception, "Error status in Hello Response");
  }
}

void sub_100462550(_Unwind_Exception *a1)
{
  v3 = v1[2];
  if (v3)
  {
    sub_10000AD84(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_100462588(uint64_t a1)
{
  if (*(a1 + 112) == 1)
  {
    if (*(a1 + 111) < 0)
    {
      operator delete(*(a1 + 88));
    }

    if (*(a1 + 79) < 0)
    {
      operator delete(*(a1 + 56));
    }
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    sub_10000AD84(v2);
  }

  return a1;
}

uint64_t sub_1004625F4(void *a1)
{
  v1 = *a1;
  if (a1[1] - *a1 != 8)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1004211BC(exception, "Range config response not of expected size");
  }

  __dst = 0;
  sub_10046F95C((v1 + 4), 2uLL, &__dst + 2, 1);
  sub_10046F95C((*a1 + 6), 2uLL, &__dst, 1);
  v4 = sub_100427984(HIWORD(__dst), v3);
  return v4 | (__dst << 16);
}

uint64_t sub_1004626B8(void *a1)
{
  v1 = *a1;
  if (a1[1] - *a1 != 8)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1004211BC(exception, "Range enable response not of expected size");
  }

  __dst = 0;
  sub_10046F95C((v1 + 4), 2uLL, &__dst + 2, 1);
  sub_10046F95C((*a1 + 6), 2uLL, &__dst, 1);
  v4 = sub_100427984(HIWORD(__dst), v3);
  return v4 | (__dst << 16);
}

uint64_t sub_10046277C(void *a1)
{
  v1 = *a1;
  if (a1[1] - *a1 != 8)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1004211BC(exception, "Test NMI range enable response not of expected size");
  }

  __dst = 0;
  sub_10046F95C((v1 + 4), 2uLL, &__dst + 2, 1);
  sub_10046F95C((*a1 + 6), 2uLL, &__dst, 1);
  v4 = sub_100427984(HIWORD(__dst), v3);
  return v4 | (__dst << 16);
}

uint64_t sub_100462840(uint64_t *a1)
{
  v1 = *a1;
  if (a1[1] - *a1 != 6)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1004211BC(exception, "GPIO power switch disable response not of expected size");
  }

  __dst = 0;
  sub_10046F95C((v1 + 4), 2uLL, &__dst, 1);
  return sub_100427984(__dst, v2);
}

uint64_t sub_1004628E0(void *a1)
{
  v1 = *a1;
  if (a1[1] - *a1 != 8)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1004211BC(exception, "SAR state response not of expected size");
  }

  __dst = 0;
  v7 = 0;
  sub_10046F95C((v1 + 4), 2uLL, &__dst, 1);
  sub_10046F95C((*a1 + 6), 1uLL, &v7 + 1, 1);
  sub_10046F95C((*a1 + 7), 1uLL, &v7, 1);
  v4 = sub_100427984(__dst, v3);
  return v4 | (HIBYTE(v7) << 16) | (v7 << 24);
}

uint64_t sub_1004629C8(void *a1)
{
  v1 = *a1;
  if (a1[1] - *a1 != 8)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1004211BC(exception, "Range disable response not of expected size");
  }

  __dst = 0;
  sub_10046F95C((v1 + 4), 2uLL, &__dst + 2, 1);
  sub_10046F95C((*a1 + 6), 2uLL, &__dst, 1);
  v4 = sub_100427984(HIWORD(__dst), v3);
  return v4 | (__dst << 16);
}

void sub_100462A8C(void *a1@<X0>, uint64_t a2@<X8>)
{
  __dst = 0;
  sub_10046F95C((*a1 + 4), 2uLL, &__dst, 1);
  v6 = sub_100427984(__dst, v4);
  v7 = *(*a1 + 6);
  v22 = 0;
  v23 = 0;
  v24 = 0;
  if (v7)
  {
    LODWORD(v8) = 7;
    do
    {
      v9 = v8 + 2;
      v10 = *a1;
      if (a1[1] - *a1 < (v8 + 2))
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Get config response not of expected size");
      }

      __p[0] = 0;
      __p[1] = 0;
      v21 = 0;
      LOBYTE(v19) = sub_100427844(*(v10 + v8), v5);
      v11 = *a1;
      v12 = *(*a1 + v8 + 1);
      v8 = v9 + v12;
      if (a1[1] - *a1 < v8)
      {
        v16 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v16, "Get config response not of expected size");
      }

      v17 = 0uLL;
      v18 = 0;
      sub_100296B98(&v17, (v11 + v9), (v11 + v9 + v12), v12);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      *__p = v17;
      v21 = v18;
      sub_100463DC8(&v22, &v19);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      --v7;
    }

    while (v7);
    v13 = v22;
    v14 = v23;
  }

  else
  {
    v14 = 0;
    v13 = 0;
  }

  *a2 = v6;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  sub_10026B35C((a2 + 8), v13, v14, (v14 - v13) >> 5);
  v19 = &v22;
  sub_100189A94(&v19);
}

void sub_100462CA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char *a13, void *__p, uint64_t a15, uint64_t a16, char a17)
{
  a13 = &a17;
  sub_100189A94(&a13);
  _Unwind_Resume(a1);
}

void sub_100462DA8(_Unwind_Exception *a1)
{
  v3 = v1[2];
  if (v3)
  {
    sub_10000AD84(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_100462DC8(uint64_t a1)
{
  v4 = (a1 + 24);
  sub_100189A94(&v4);
  v2 = *(a1 + 8);
  if (v2)
  {
    sub_10000AD84(v2);
  }

  return a1;
}

unint64_t sub_100462E10(void *a1)
{
  v1 = *a1;
  if ((a1[1] - *a1 - 7) >= 2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1004211BC(exception, "Set config response not of expected size");
  }

  __dst = 0;
  sub_10046F95C((v1 + 4), 2uLL, &__dst, 1);
  v4 = sub_100427984(__dst, v3);
  if (a1[1] - *a1 == 8)
  {
    v5 = *(*a1 + 7);
    v6 = 256;
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  sub_1004640CC(&v10, v4, *(*a1 + 6), v6 | v5);
  return v10 | (v11 << 32);
}

uint64_t sub_100462EFC(void *a1, uint64_t a2)
{
  __dst = 0;
  v2 = a1[1] - *a1;
  if (v2 == 6)
  {
    sub_10046F95C((*a1 + 4), 2uLL, &__dst, 1);
    return sub_100427984(__dst, v3);
  }

  else
  {
    sub_100428B48("got tx power backoff response packet with wrong size: expect %d, actual %zu", a2, 6, v2);
    return 5;
  }
}

unint64_t sub_100462F64(void *a1, uint64_t a2)
{
  __dst = 0;
  v7 = 0;
  v2 = a1[1] - *a1;
  if (v2 == 10)
  {
    sub_10046F95C((*a1 + 4), 2uLL, &__dst, 1);
    sub_10046F95C((*a1 + 6), 4uLL, &v7, 1);
    v5 = sub_100427984(__dst, v4);
    return v5 | (v7 << 32);
  }

  else
  {
    sub_100428B48("got measure temperature response packet with wrong size: expect %d, actual %zu", a2, 10, v2);
    return 5;
  }
}

uint64_t sub_100463000@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __dst = 0;
  v21 = 0;
  v20 = 0;
  v19 = 0;
  v18 = 0;
  v17 = 0;
  v16 = 0;
  v15 = 0;
  sub_10046F95C((*a1 + 4), 2uLL, &__dst, 1);
  sub_10046F95C((*a1 + 6), 1uLL, &v21, 1);
  sub_10046F95C((*a1 + 7), 2uLL, &v20, 1);
  sub_10046F95C((*a1 + 9), 2uLL, &v19, 1);
  sub_10046F95C((*a1 + 27), 1uLL, &v18, 1);
  sub_10046F95C((*a1 + 28), 4uLL, &v17, 1);
  sub_10046F95C((*a1 + 32), 1uLL, &v16 + 1, 1);
  sub_10046F95C((*a1 + 33), 1uLL, &v16, 1);
  sub_10046F95C((*a1 + 34), 1uLL, &v15 + 1, 1);
  sub_10046F95C((*a1 + 35), 1uLL, &v15, 1);
  result = sub_100427984(__dst, v4);
  v6 = v21;
  v7 = v20;
  v8 = v19;
  v9 = v18;
  v10 = v17;
  v11 = HIBYTE(v16);
  v12 = v16;
  v13 = HIBYTE(v15);
  v14 = v15;
  *a2 = result;
  *(a2 + 2) = v6;
  *(a2 + 4) = v7;
  *(a2 + 6) = v8;
  *(a2 + 8) = v9;
  *(a2 + 12) = v10;
  *(a2 + 16) = v11;
  *(a2 + 17) = v12;
  *(a2 + 18) = v13;
  *(a2 + 19) = v14;
  return result;
}

unint64_t sub_100463190(uint64_t a1)
{
  __dst = 0;
  v5 = 0;
  sub_10046F95C((*a1 + 4), 2uLL, &__dst, 1);
  sub_10046F95C((*a1 + 6), 4uLL, &v5, 1);
  v3 = sub_100427984(__dst, v2);
  return v3 | (v5 << 32);
}

uint64_t sub_100463204(uint64_t a1)
{
  __dst = 0;
  sub_10046F95C((*a1 + 4), 2uLL, &__dst + 2, 1);
  sub_10046F95C((*a1 + 6), 2uLL, &__dst, 1);
  v3 = sub_100427984(HIWORD(__dst), v2);
  return v3 | (__dst << 16);
}

uint64_t sub_100463270@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = 0;
  __dst = 0;
  v27 = 0;
  v26 = 0;
  v25 = 0;
  v23 = 0;
  v24 = 0;
  v21 = 0;
  v22 = 0;
  v20 = 0;
  sub_10046F95C((*a1 + 4), 4uLL, &__dst + 4, 1);
  sub_10046F95C((*a1 + 8), 4uLL, &__dst, 1);
  sub_10046F95C((*a1 + 12), 4uLL, &v28 + 4, 1);
  sub_10046F95C((*a1 + 16), 4uLL, &v28, 1);
  sub_10046F95C((*a1 + 20), 4uLL, &v27, 1);
  sub_10046F95C((*a1 + 24), 4uLL, &v26, 1);
  sub_10046F95C((*a1 + 28), 4uLL, &v25 + 4, 1);
  sub_10046F95C((*a1 + 32), 4uLL, &v25, 1);
  sub_10046F95C((*a1 + 36), 4uLL, &v24, 1);
  sub_10046F95C((*a1 + 40), 2uLL, &v23 + 2, 1);
  sub_10046F95C((*a1 + 42), 2uLL, &v23, 1);
  sub_10046F95C((*a1 + 44), 4uLL, &v22 + 4, 1);
  sub_10046F95C((*a1 + 48), 4uLL, &v22, 1);
  v4 = sub_1000054A8();
  v5 = 0;
  v6 = 0;
  v7 = 0;
  if (v4[187] == 2)
  {
    sub_10046F95C((*a1 + 52), 4uLL, &v21 + 4, 1);
    sub_10046F95C((*a1 + 56), 4uLL, &v21, 1);
    sub_10046F95C((*a1 + 60), 4uLL, &v20, 1);
    v6 = v21;
    v7 = HIDWORD(v21);
    v5 = v20;
  }

  v8 = __dst;
  v10 = v28;
  v9 = HIDWORD(v28);
  v11 = v27;
  v13 = HIDWORD(v25);
  v12 = v26;
  v15 = v24;
  result = v25;
  v16 = HIWORD(v23);
  v17 = v23;
  v19 = v22;
  v18 = HIDWORD(v22);
  *a2 = HIDWORD(__dst);
  *(a2 + 4) = v8;
  *(a2 + 8) = v9;
  *(a2 + 12) = v10;
  *(a2 + 16) = v11;
  *(a2 + 20) = v12;
  *(a2 + 24) = v13;
  *(a2 + 28) = result;
  *(a2 + 32) = v15;
  *(a2 + 36) = v16;
  *(a2 + 38) = v17;
  *(a2 + 40) = v18;
  *(a2 + 44) = v19;
  *(a2 + 48) = v7;
  *(a2 + 52) = v6;
  *(a2 + 56) = v5;
  return result;
}

void sub_1004634A4(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1] - *a1;
  if (v5 == 10)
  {
    __dst = 0;
    sub_10046F95C((v4 + 4), 2uLL, &__dst, 1);
    v8 = sub_100427984(__dst, v7);
    memset(&v11, 0, sizeof(v11));
    std::string::resize(&v11, 4uLL, 0);
    if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = &v11;
    }

    else
    {
      v9 = v11.__r_.__value_.__r.__words[0];
    }

    sub_10046F95C((*a1 + 6), 4uLL, v9, 1);
    *a3 = v8;
    v10 = (a3 + 8);
    if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_1000056BC(v10, v11.__r_.__value_.__l.__data_, v11.__r_.__value_.__l.__size_);
      if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v11.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      *v10 = v11;
    }
  }

  else
  {
    sub_100428B48("got log request response packet with wrong size: expect %d, actual %zu", a2, 10, v5);
    *a3 = 0;
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    *(a3 + 8) = 0;
  }
}

void sub_1004635AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004635C8(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    sub_10000AD84(v2);
  }

  return a1;
}

uint64_t sub_100463608(void *a1, uint64_t a2)
{
  __dst = 0;
  v2 = a1[1] - *a1;
  if (v2 == 7)
  {
    sub_10046F95C((*a1 + 4), 2uLL, &__dst, 1);
    v5 = sub_100427984(__dst, v4);
    v7 = 0;
    sub_10046F95C((*a1 + 6), 1uLL, &v7, 1);
    return v5 | (v7 << 16);
  }

  else
  {
    sub_100428B48("got log config response packet with wrong size: expect %d, actual %zu", a2, 7, v2);
    return 0x40000;
  }
}

void sub_1004636A4(void *a1)
{
  if (a1[1] - *a1 > 0x27uLL)
  {
    operator new();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  sub_1004211BC(exception, "Not enough bytes in Hello Response");
}

void sub_100463C9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  if (a25 < 0)
  {
    operator delete(__p);
    if ((v47 & 1) == 0)
    {
LABEL_6:
      std::ios::~ios();
      sub_100019668(v48 - 192);
      if (*(v48 - 97) < 0)
      {
        operator delete(*(v48 - 120));
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v47)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v46);
  goto LABEL_6;
}

uint64_t sub_100463DC8(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_100466970(a1, a2);
  }

  else
  {
    *v3 = *a2;
    *(v3 + 16) = 0;
    *(v3 + 24) = 0;
    *(v3 + 8) = 0;
    *(v3 + 8) = *(a2 + 8);
    *(v3 + 24) = *(a2 + 24);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    result = v3 + 32;
  }

  a1[1] = result;
  return result;
}

void *sub_100463E30(void *__dst, __int128 *a2)
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

  *(__dst + 6) = *(a2 + 6);
  sub_1000199E0((__dst + 4), a2 + 8);
  __dst[13] = *(a2 + 13);
  return __dst;
}

void sub_100463E9C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

char *sub_100463EB8(char *__dst, __int128 *a2, char a3, char a4, __int16 a5, int *a6, int a7)
{
  if (*(a2 + 23) < 0)
  {
    sub_1000056BC(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v13 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v13;
  }

  __dst[24] = a3;
  __dst[25] = a4;
  *(__dst + 13) = a5;
  sub_100463F6C((__dst + 32), a6);
  *(__dst + 26) = a7;
  __dst[108] = 1;
  return __dst;
}

void sub_100463F50(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100463F6C(uint64_t a1, int *a2)
{
  v4 = *a2;
  *(a1 + 4) = *(a2 + 2);
  *a1 = v4;
  if (*(a2 + 31) < 0)
  {
    sub_1000056BC((a1 + 8), *(a2 + 1), *(a2 + 2));
  }

  else
  {
    v5 = *(a2 + 2);
    *(a1 + 24) = *(a2 + 3);
    *(a1 + 8) = v5;
  }

  *(a1 + 32) = *(a2 + 4);
  if (*(a2 + 63) < 0)
  {
    sub_1000056BC((a1 + 40), *(a2 + 5), *(a2 + 6));
  }

  else
  {
    v6 = *(a2 + 10);
    *(a1 + 56) = *(a2 + 7);
    *(a1 + 40) = v6;
  }

  *(a1 + 64) = 1;
  return a1;
}

void sub_100464004(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

void *sub_100464020(void *__dst, __int128 *a2, char a3, char a4, __int16 a5, int *a6)
{
  if (*(a2 + 23) < 0)
  {
    sub_1000056BC(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v11 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v11;
  }

  *(__dst + 24) = a3;
  *(__dst + 25) = a4;
  *(__dst + 13) = a5;
  sub_100463F6C((__dst + 4), a6);
  *(__dst + 104) = 0;
  *(__dst + 108) = 0;
  return __dst;
}

void sub_1004640B0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004640CC(uint64_t result, int a2, int a3, __int16 a4)
{
  *result = a2;
  *(result + 2) = a3;
  *(result + 3) = a4;
  if (a2 == 1)
  {
    if (a3)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      sub_1004211BC(exception, "expect numConfigsSetSuccessfully == 0 when status == INVALID_CMD_PARAM");
    }
  }

  return result;
}

uint64_t sub_10046414C(uint64_t a1)
{
  *a1 = off_1009ABF28;
  if (*(a1 + 120) == 1)
  {
    if (*(a1 + 119) < 0)
    {
      operator delete(*(a1 + 96));
    }

    if (*(a1 + 87) < 0)
    {
      operator delete(*(a1 + 64));
    }
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    sub_10000AD84(v2);
  }

  return a1;
}

void sub_1004641D4(uint64_t a1)
{
  *a1 = off_1009ABF28;
  if (*(a1 + 120) == 1)
  {
    if (*(a1 + 119) < 0)
    {
      operator delete(*(a1 + 96));
    }

    if (*(a1 + 87) < 0)
    {
      operator delete(*(a1 + 64));
    }
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    sub_10000AD84(v2);
  }

  operator delete();
}

void sub_100464334(_Unwind_Exception *a1)
{
  v3 = v1[2];
  if (v3)
  {
    sub_10000AD84(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_10046436C(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  *a2 = off_1009ABF28;
  *(a2 + 8) = v5;
  *(a2 + 16) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  if (*(a1 + 47) < 0)
  {
    sub_1000056BC((a2 + 24), *(a1 + 24), *(a1 + 32));
  }

  else
  {
    v6 = *(a1 + 24);
    *(a2 + 40) = *(a1 + 40);
    *(a2 + 24) = v6;
  }

  *(a2 + 48) = *(a1 + 48);
  result = sub_1000199E0(a2 + 56, (a1 + 56));
  *(a2 + 128) = *(a1 + 128);
  return result;
}

void sub_100464408(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    sub_10000AD84(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100464438(uint64_t a1)
{
  if (*(a1 + 120) == 1)
  {
    if (*(a1 + 119) < 0)
    {
      operator delete(*(a1 + 96));
    }

    if (*(a1 + 87) < 0)
    {
      operator delete(*(a1 + 64));
    }
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v2 = *(a1 + 16);
  if (v2)
  {

    sub_10000AD84(v2);
  }
}

void sub_1004644B8(void **__p)
{
  if (*(__p + 120) == 1)
  {
    if (*(__p + 119) < 0)
    {
      operator delete(__p[12]);
    }

    if (*(__p + 87) < 0)
    {
      operator delete(__p[8]);
    }
  }

  if (*(__p + 47) < 0)
  {
    operator delete(__p[3]);
  }

  v2 = __p[2];
  if (v2)
  {
    sub_10000AD84(v2);
  }

  operator delete(__p);
}

uint64_t sub_100464564(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1004645B0(void *a1)
{
  *a1 = off_1009ABFA8;
  v2 = a1[2];
  if (v2)
  {
    sub_10000AD84(v2);
  }

  return a1;
}

void sub_1004645FC(void *a1)
{
  *a1 = off_1009ABFA8;
  v1 = a1[2];
  if (v1)
  {
    sub_10000AD84(v1);
  }

  operator delete();
}

uint64_t sub_1004646DC(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = off_1009ABFA8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  a2[3] = *(result + 24);
  return result;
}

void sub_10046471C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000AD84(v1);
  }
}

void sub_10046472C(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    sub_10000AD84(v2);
  }

  operator delete(__p);
}

uint64_t sub_10046479C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1004647E8(void *a1)
{
  *a1 = off_1009AC028;
  v2 = a1[2];
  if (v2)
  {
    sub_10000AD84(v2);
  }

  return a1;
}

void sub_100464834(void *a1)
{
  *a1 = off_1009AC028;
  v1 = a1[2];
  if (v1)
  {
    sub_10000AD84(v1);
  }

  operator delete();
}

uint64_t sub_100464914(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = off_1009AC028;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  a2[3] = *(result + 24);
  return result;
}

void sub_100464954(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000AD84(v1);
  }
}

void sub_100464964(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    sub_10000AD84(v2);
  }

  operator delete(__p);
}

uint64_t sub_1004649D4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_100464A20(void *a1)
{
  *a1 = off_1009AC0A8;
  v2 = a1[2];
  if (v2)
  {
    sub_10000AD84(v2);
  }

  return a1;
}

void sub_100464A6C(void *a1)
{
  *a1 = off_1009AC0A8;
  v1 = a1[2];
  if (v1)
  {
    sub_10000AD84(v1);
  }

  operator delete();
}

uint64_t sub_100464B4C(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = off_1009AC0A8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  a2[3] = *(result + 24);
  return result;
}

void sub_100464B8C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000AD84(v1);
  }
}

void sub_100464B9C(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    sub_10000AD84(v2);
  }

  operator delete(__p);
}

uint64_t sub_100464C0C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_100464C58(void *a1)
{
  *a1 = off_1009AC128;
  v2 = a1[2];
  if (v2)
  {
    sub_10000AD84(v2);
  }

  return a1;
}

void sub_100464CA4(void *a1)
{
  *a1 = off_1009AC128;
  v1 = a1[2];
  if (v1)
  {
    sub_10000AD84(v1);
  }

  operator delete();
}

uint64_t sub_100464D8C(uint64_t result, uint64_t a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = off_1009AC128;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 24) = *(result + 24);
  *(a2 + 26) = 0;
  *(a2 + 30) = 0;
  return result;
}

void sub_100464DD4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000AD84(v1);
  }
}

void sub_100464DE4(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    sub_10000AD84(v2);
  }

  operator delete(__p);
}

uint64_t sub_100464E54(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_100464EA0(void *a1)
{
  *a1 = off_1009AC1A8;
  v2 = a1[2];
  if (v2)
  {
    sub_10000AD84(v2);
  }

  return a1;
}

void sub_100464EEC(void *a1)
{
  *a1 = off_1009AC1A8;
  v1 = a1[2];
  if (v1)
  {
    sub_10000AD84(v1);
  }

  operator delete();
}

uint64_t sub_100464FCC(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = off_1009AC1A8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  a2[3] = *(result + 24);
  return result;
}

void sub_10046500C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000AD84(v1);
  }
}

void sub_10046501C(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    sub_10000AD84(v2);
  }

  operator delete(__p);
}

uint64_t sub_10046508C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1004650D8(void *a1)
{
  *a1 = off_1009AC228;
  v2 = a1[2];
  if (v2)
  {
    sub_10000AD84(v2);
  }

  return a1;
}

void sub_100465124(void *a1)
{
  *a1 = off_1009AC228;
  v1 = a1[2];
  if (v1)
  {
    sub_10000AD84(v1);
  }

  operator delete();
}

uint64_t sub_100465204(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = off_1009AC228;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  a2[3] = *(result + 24);
  return result;
}

void sub_100465244(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000AD84(v1);
  }
}

void sub_100465254(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    sub_10000AD84(v2);
  }

  operator delete(__p);
}

uint64_t sub_1004652C4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100465310(uint64_t a1)
{
  *a1 = off_1009AC2A8;
  v4 = (a1 + 32);
  sub_100189A94(&v4);
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_10000AD84(v2);
  }

  return a1;
}

void sub_100465374(uint64_t a1)
{
  *a1 = off_1009AC2A8;
  v3 = (a1 + 32);
  sub_100189A94(&v3);
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_10000AD84(v2);
  }

  operator delete();
}

void sub_100465484(_Unwind_Exception *a1)
{
  v3 = v1[2];
  if (v3)
  {
    sub_10000AD84(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t *sub_1004654A4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = off_1009AC2A8;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 24);
  *(a2 + 32) = 0;
  *(a2 + 24) = v4;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  return sub_10026B35C((a2 + 32), *(a1 + 32), *(a1 + 40), (*(a1 + 40) - *(a1 + 32)) >> 5);
}

void sub_100465520(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    sub_10000AD84(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100465540(char *a1)
{
  sub_1004655F8((a1 + 8));

  operator delete(a1);
}

uint64_t sub_1004655AC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1004655F8(uint64_t a1)
{
  v3 = (a1 + 24);
  sub_100189A94(&v3);
  v2 = *(a1 + 8);
  if (v2)
  {
    sub_10000AD84(v2);
  }
}

void *sub_10046563C(void *a1)
{
  *a1 = off_1009AC328;
  v2 = a1[2];
  if (v2)
  {
    sub_10000AD84(v2);
  }

  return a1;
}

void sub_100465688(void *a1)
{
  *a1 = off_1009AC328;
  v1 = a1[2];
  if (v1)
  {
    sub_10000AD84(v1);
  }

  operator delete();
}

uint64_t sub_100465774(uint64_t result, uint64_t a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = off_1009AC328;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(result + 24);
  *(a2 + 28) = *(result + 28);
  *(a2 + 24) = v4;
  *(a2 + 30) = 0;
  return result;
}

void sub_1004657C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000AD84(v1);
  }
}

void sub_1004657D0(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    sub_10000AD84(v2);
  }

  operator delete(__p);
}

uint64_t sub_100465840(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_10046588C(void *a1)
{
  *a1 = off_1009AC3A8;
  v2 = a1[2];
  if (v2)
  {
    sub_10000AD84(v2);
  }

  return a1;
}

void sub_1004658D8(void *a1)
{
  *a1 = off_1009AC3A8;
  v1 = a1[2];
  if (v1)
  {
    sub_10000AD84(v1);
  }

  operator delete();
}

__n128 sub_1004659C0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = off_1009AC3A8;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  v5 = *(a1 + 40);
  *(a2 + 24) = result;
  *(a2 + 40) = v5;
  return result;
}

void sub_100465A08(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000AD84(v1);
  }
}

void sub_100465A18(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    sub_10000AD84(v2);
  }

  operator delete(__p);
}

uint64_t sub_100465A88(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_100465AD4(void *a1)
{
  *a1 = off_1009AC428;
  v2 = a1[2];
  if (v2)
  {
    sub_10000AD84(v2);
  }

  return a1;
}

void sub_100465B20(void *a1)
{
  *a1 = off_1009AC428;
  v1 = a1[2];
  if (v1)
  {
    sub_10000AD84(v1);
  }

  operator delete();
}

void *sub_100465C00(void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = off_1009AC428;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  a2[3] = result[3];
  return result;
}

void sub_100465C40(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000AD84(v1);
  }
}

void sub_100465C50(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    sub_10000AD84(v2);
  }

  operator delete(__p);
}

uint64_t sub_100465CC0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_100465D0C(void *a1)
{
  *a1 = off_1009AC4A8;
  v2 = a1[2];
  if (v2)
  {
    sub_10000AD84(v2);
  }

  return a1;
}

void sub_100465D58(void *a1)
{
  *a1 = off_1009AC4A8;
  v1 = a1[2];
  if (v1)
  {
    sub_10000AD84(v1);
  }

  operator delete();
}

void *sub_100465E38(void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = off_1009AC4A8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  a2[3] = result[3];
  return result;
}

void sub_100465E78(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000AD84(v1);
  }
}

void sub_100465E88(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    sub_10000AD84(v2);
  }

  operator delete(__p);
}

uint64_t sub_100465EF8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_100465F44(void *a1)
{
  *a1 = off_1009AC528;
  v2 = a1[2];
  if (v2)
  {
    sub_10000AD84(v2);
  }

  return a1;
}

void sub_100465F90(void *a1)
{
  *a1 = off_1009AC528;
  v1 = a1[2];
  if (v1)
  {
    sub_10000AD84(v1);
  }

  operator delete();
}

uint64_t sub_100466070(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = off_1009AC528;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  a2[3] = *(result + 24);
  return result;
}

void sub_1004660B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000AD84(v1);
  }
}

void sub_1004660C0(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    sub_10000AD84(v2);
  }

  operator delete(__p);
}

uint64_t sub_100466130(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_10046617C(void *a1)
{
  *a1 = off_1009AC5A8;
  v2 = a1[2];
  if (v2)
  {
    sub_10000AD84(v2);
  }

  return a1;
}

void sub_1004661C8(void *a1)
{
  *a1 = off_1009AC5A8;
  v1 = a1[2];
  if (v1)
  {
    sub_10000AD84(v1);
  }

  operator delete();
}

__n128 sub_1004662C4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = off_1009AC5A8;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  v5 = *(a1 + 40);
  v6 = *(a1 + 56);
  *(a2 + 68) = *(a1 + 68);
  *(a2 + 56) = v6;
  *(a2 + 40) = v5;
  *(a2 + 24) = result;
  *(a2 + 84) = 0;
  return result;
}

void sub_100466320(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000AD84(v1);
  }
}

void sub_100466330(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    sub_10000AD84(v2);
  }

  operator delete(__p);
}

uint64_t sub_1004663A0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1004663EC(uint64_t a1)
{
  *a1 = off_1009AC628;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    sub_10000AD84(v2);
  }

  return a1;
}

void sub_100466448(uint64_t a1)
{
  *a1 = off_1009AC628;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    sub_10000AD84(v2);
  }

  operator delete();
}

void sub_100466568(_Unwind_Exception *a1)
{
  v3 = v1[2];
  if (v3)
  {
    sub_10000AD84(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

char *sub_100466588(char *result, uint64_t a2)
{
  v3 = *(result + 1);
  v2 = *(result + 2);
  *a2 = off_1009AC628;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 24) = *(result + 12);
  if (result[55] < 0)
  {
    return sub_1000056BC((a2 + 32), *(result + 4), *(result + 5));
  }

  v4 = *(result + 2);
  *(a2 + 48) = *(result + 6);
  *(a2 + 32) = v4;
  return result;
}

void sub_10046660C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    sub_10000AD84(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10046662C(char *a1)
{
  sub_1004666E4((a1 + 8));

  operator delete(a1);
}

uint64_t sub_100466698(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1004666E4(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v2 = *(a1 + 8);
  if (v2)
  {

    sub_10000AD84(v2);
  }
}

void *sub_100466738(void *a1)
{
  *a1 = off_1009AC6A8;
  v2 = a1[2];
  if (v2)
  {
    sub_10000AD84(v2);
  }

  return a1;
}

void sub_100466784(void *a1)
{
  *a1 = off_1009AC6A8;
  v1 = a1[2];
  if (v1)
  {
    sub_10000AD84(v1);
  }

  operator delete();
}

uint64_t sub_100466864(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = off_1009AC6A8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  a2[3] = *(result + 24);
  return result;
}

void sub_1004668A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000AD84(v1);
  }
}

void sub_1004668B4(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    sub_10000AD84(v2);
  }

  operator delete(__p);
}

uint64_t sub_100466924(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100466970(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_100019B38();
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

  v18 = a1;
  if (v7)
  {
    sub_10026B420(a1, v7);
  }

  v8 = 32 * v2;
  v15 = 0;
  v16 = v8;
  *(&v17 + 1) = 0;
  *v8 = *a2;
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 8) = 0;
  *(v8 + 8) = *(a2 + 8);
  *(v8 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *&v17 = 32 * v2 + 32;
  v9 = a1[1];
  v10 = 32 * v2 + *a1 - v9;
  sub_100466A98(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_100425CB4(&v15);
  return v14;
}

void sub_100466A84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_100425CB4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100466A98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      *(a4 + 16) = 0;
      *(a4 + 24) = 0;
      *(a4 + 8) = 0;
      *(a4 + 8) = *(v6 + 8);
      *(a4 + 24) = *(v6 + 24);
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      *(v6 + 24) = 0;
      v6 += 32;
      a4 += 32;
    }

    while (v6 != a3);
    v12 = a4;
    v10 = 1;
    while (v5 != a3)
    {
      v7 = *(v5 + 8);
      if (v7)
      {
        *(v5 + 16) = v7;
        operator delete(v7);
      }

      v5 += 32;
    }
  }

  return sub_10026B520(v9);
}

uint64_t sub_100466B5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = 0;
  *(a1 + 4) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = a2;
  sub_10046CE84(a1 + 56, a3);
  sub_10046CF1C(a1 + 88, a4);
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  if (!*(a1 + 80))
  {
    __assert_rtn("RoseDebugManager", "roseDebugManager.cpp", 47, "fClientCallback");
  }

  return a1;
}

void sub_100466BE4(_Unwind_Exception *a1)
{
  sub_10026B684(v1 + 56);
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  _Unwind_Resume(a1);
}

void sub_100466C24(uint64_t a1, int a2)
{
  v16 = a2;
  LODWORD(v17) = 0;
  sub_100004A08(v18, "Idle");
  v19 = 1;
  sub_100004A08(v20, "ClientTriggeredFatal");
  v21 = 2;
  sub_100004A08(v22, "ClientTriggeredNonFatal");
  sub_10046CFB4(v15, &v17, 3);
  for (i = 0; i != -12; i -= 4)
  {
    if (SHIBYTE(v22[i + 2]) < 0)
    {
      operator delete(v22[i]);
    }
  }

  if (!a2)
  {
    if (*(a1 + 47) < 0)
    {
      **(a1 + 24) = 0;
      *(a1 + 32) = 0;
    }

    else
    {
      *(a1 + 24) = 0;
      *(a1 + 47) = 0;
    }
  }

  v5 = (a1 + 4);
  v17 = v5;
  v6 = sub_100003FF0(v15, v5, &unk_100548C50, &v17);
  v7 = v6 + 5;
  if (*(v6 + 63) < 0)
  {
    v7 = *v7;
  }

  v17 = &v16;
  sub_100003FF0(v15, &v16, &unk_100548C50, &v17);
  sub_100005D28("DebugLogState transition from: %s to: %s", v8, v9, v10, v11, v12, v13, v14, v7);
  *v5 = v16;
  sub_10022E954(v15, v15[1]);
}

void sub_100466DC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  v18 = v16 + 72;
  v19 = -96;
  while (1)
  {
    if (*(v18 + 23) < 0)
    {
      operator delete(*v18);
    }

    v18 -= 32;
    v19 += 32;
    if (!v19)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

NSObject *sub_100466E40(uint64_t a1, NSObject *a2, char a3, char a4)
{
  os_unfair_lock_lock((a1 + 8));
  if (*a1 == 1)
  {
    os_unfair_lock_unlock((a1 + 8));
    return 1;
  }

  else if (a2)
  {
    *(a1 + 120) = a2;
    *(a1 + 129) = a3;
    *(a1 + 128) = a4;
    v9 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, a2);
    *(a1 + 16) = v9;
    if (v9)
    {
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 0x40000000;
      v12[2] = sub_100467104;
      v12[3] = &unk_1009AC718;
      v12[4] = a1;
      dispatch_source_set_event_handler(v9, v12);
      *(a1 + 1) = 1;
      operator new();
    }

    sub_100428B48("Unable to create the timer", v10);
    *(a1 + 120) = 0;
    os_unfair_lock_unlock((a1 + 8));
    return 0;
  }

  else
  {
    sub_100428B48("RoseDebugManager: queue shouldn't be null", v8);
    os_unfair_lock_unlock((a1 + 8));
  }

  return a2;
}

void sub_1004670C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_10042AB50(va);
  _Unwind_Resume(a1);
}

void sub_100467104(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_100428B48("Crashlog callback timer expired", a2);
  os_unfair_lock_lock((v2 + 8));
  sub_100005D28("RoseDebugManager: Suspending the crashlog timer", v3, v4, v5, v6, v7, v8, v9, v13[0]);
  dispatch_suspend(*(v2 + 16));
  *(v2 + 1) = 1;
  v10 = *(v2 + 4);
  if (v10 == 2)
  {
    sub_100004A08(v13, "Crashlog callback timer expired");
    sub_100467238(v2, v2 + 24, 0, v13);
    v11 = 3;
    if (v14 < 0)
    {
      v12 = v13;
      goto LABEL_7;
    }

LABEL_8:
    sub_100466C24(v2, 0);
    sub_100468528(v2 + 56, v11);
    goto LABEL_9;
  }

  if (v10 == 1)
  {
    sub_100004A08(v15, "Crashlog callback timer expired");
    sub_100467238(v2, v2 + 24, 0, v15);
    v11 = 1;
    if (v16 < 0)
    {
      v12 = v15;
LABEL_7:
      operator delete(*v12);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

LABEL_9:
  os_unfair_lock_unlock((v2 + 8));
}

void sub_100467204(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100467238(_BYTE *a1, std::string::size_type a2, uint64_t a3, std::string::size_type a4)
{
  sub_100004A08(&v116, "/private/var/mobile/Library/Logs/CrashReporter/Rose/");
  __t.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
  v114 = std::chrono::system_clock::to_time_t(&__t);
  sub_100193120(v109);
  v7 = localtime(&v114);
  strftime(__s, 0x32uLL, "%Y-%m-%d-%H-%M-%S", v7);
  memset(&pn, 0, sizeof(pn));
  if ((v116.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = &v116;
  }

  else
  {
    v8 = v116.__r_.__value_.__r.__words[0];
  }

  if ((v116.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v116.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v116.__r_.__value_.__l.__size_;
  }

  v10 = sub_10000EA44(&v110, v8, size);
  v11 = sub_10000EA44(v10, "Rose-", 5);
  sub_100004A08(__p, __s);
  if ((v118 & 0x80u) == 0)
  {
    v12 = __p;
  }

  else
  {
    v12 = __p[0];
  }

  if ((v118 & 0x80u) == 0)
  {
    v13 = v118;
  }

  else
  {
    v13 = __p[1];
  }

  v14 = sub_10000EA44(v11, v12, v13);
  v15 = sub_10000EA44(v14, ".", 1);
  LOBYTE(v119) = 48;
  v16 = sub_100193BA0(v15, &v119);
  *(v16 + *(*v16 - 24) + 24) = 3;
  v17 = std::ostream::operator<<();
  sub_10000EA44(v17, "/", 1);
  if (v118 < 0)
  {
    operator delete(__p[0]);
  }

  v91 = a3;
  std::stringbuf::str();
  memset(&v106, 0, sizeof(v106));
  sub_10046BB2C(v105);
  sub_10046BB2C(v104);
  v122 = 0;
  *(&v120[-1] + *(v119 - 3)) = v18;
  v19 = (&v120[-1] + *(v119 - 3));
  std::ios_base::init(v19, v120);
  v19[1].__vftable = 0;
  v19[1].__fmtflags_ = -1;
  std::filebuf::basic_filebuf();
  sub_10046E0D8(v103, 2uLL);
  bzero(__p, 0x400uLL);
  v92 = getpwnam("mobile");
  v20 = 0;
  v102 = 0;
  if (*a1)
  {
    if (confstr(65537, __p, 0x400uLL) - 1024 > 0xFFFFFFFFFFFFFC00)
    {
      sub_100193120(&__from);
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::operator=();
      __from.__pn_.__r_.__value_.__r.__words[2] = v22;
      if (v101 < 0)
      {
        operator delete(v100[7].__locale_);
      }

      std::locale::~locale(v100);
      std::iostream::~basic_iostream();
      std::ios::~ios();
      v23 = strlen(__p);
      v24 = sub_10000EA44(&v110, __p, v23);
      v25 = sub_10000EA44(v24, "/Rose-", 6);
      sub_100004A08(&__from, __s);
      if ((__from.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_from = &__from;
      }

      else
      {
        p_from = __from.__pn_.__r_.__value_.__r.__words[0];
      }

      if ((__from.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v27 = HIBYTE(__from.__pn_.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v27 = __from.__pn_.__r_.__value_.__l.__size_;
      }

      v28 = sub_10000EA44(v25, p_from, v27);
      v29 = sub_10000EA44(v28, ".", 1);
      v93.__r_.__value_.__s.__data_[0] = 48;
      v30 = sub_100193BA0(v29, &v93);
      *(v30 + *(*v30 - 24) + 24) = 3;
      v31 = std::ostream::operator<<();
      sub_10000EA44(v31, "/", 1);
      if (SHIBYTE(__from.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__from.__pn_.__r_.__value_.__l.__data_);
      }

      std::stringbuf::str();
      if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(pn.__r_.__value_.__l.__data_);
      }

      pn = __from.__pn_;
      if ((__from.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v32 = HIBYTE(__from.__pn_.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v32 = pn.__r_.__value_.__l.__size_;
      }

      v33 = &__from;
      sub_100175C6C(&__from, v32 + 12);
      if ((__from.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v33 = __from.__pn_.__r_.__value_.__r.__words[0];
      }

      if (v32)
      {
        if ((pn.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_pn = &pn;
        }

        else
        {
          p_pn = pn.__r_.__value_.__r.__words[0];
        }

        memmove(v33, p_pn, v32);
      }

      strcpy(v33 + v32, "summary.json");
      if (SHIBYTE(v106.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v106.__pn_.__r_.__value_.__l.__data_);
      }

      v106 = __from;
      if ((a1[128] & 1) == 0 && a1[129] != 1)
      {
        if ((sub_10046AE08(a1, &pn.__r_.__value_.__l.__data_, v104, &v102 + 1, &v102, v34, v35, v36) & 1) == 0)
        {
          sub_100428B48("Error collecting firmware logs.", v60);
        }

        v20 = sub_1004692B4(a1, &pn.__r_.__value_.__l.__data_, v91, v103, v104, &v102 + 1, &v102);
        if (v20 == 2)
        {
          if (sub_10046A6E4(a1, &pn.__r_.__value_.__l.__data_, v103, v104, &v102 + 1, &v102, v61, v62))
          {
            v20 = 2;
          }

          else
          {
            v20 = 3;
          }
        }

        sub_10046E17C(v95, v104);
        v63 = sub_100469F40(v105, "Files Collected");
        sub_10046A120(v63, v95);
        sub_10046CC60(v95);
        sub_10046BB64(v105, 4);
        if ((__from.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v64 = &__from;
        }

        else
        {
          v64 = __from.__pn_.__r_.__value_.__r.__words[0];
        }

        if ((__from.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v65 = HIBYTE(__from.__pn_.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v65 = __from.__pn_.__r_.__value_.__l.__size_;
        }

        v66 = sub_10000EA44(&v119, v64, v65);
        std::ios_base::getloc((v66 + *(*v66 - 24)));
        v67 = std::locale::use_facet(&v93, &std::ctype<char>::id);
        (v67->__vftable[2].~facet_0)(v67, 10);
        std::locale::~locale(&v93);
        std::ostream::put();
        std::ostream::flush();
        if (SHIBYTE(__from.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__from.__pn_.__r_.__value_.__l.__data_);
        }

        if (!std::filebuf::close())
        {
          std::ios_base::clear((&v120[-1] + *(v119 - 3)), *(&v120[3] + *(v119 - 3)) | 4);
        }

        if ((a1[128] & 1) == 0 && a1[129] != 1)
        {
          goto LABEL_51;
        }

        v68 = &v116;
        if ((v116.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v68 = v116.__r_.__value_.__r.__words[0];
        }

        v94 = v68;
        sub_1003030B0(&__from.__pn_, &v94);
        std::__fs::filesystem::__status(&__from, 0);
        v69 = v93.__r_.__value_.__s.__data_[0];
        if (SHIBYTE(__from.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__from.__pn_.__r_.__value_.__l.__data_);
        }

        if (v69 == 255 || !v69)
        {
          if ((v116.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v70 = &v116;
          }

          else
          {
            v70 = v116.__r_.__value_.__r.__words[0];
          }

          if (mkdir(v70, 0x1F8u) && *__error() != 17)
          {
            v77 = __error();
            sub_100428B48("Unable to create the parent directory for debug logs: %d", v78, *v77);
            goto LABEL_50;
          }

          if ((v116.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v71 = &v116;
          }

          else
          {
            v71 = v116.__r_.__value_.__r.__words[0];
          }

          if (chmod(v71, 0x1F8u))
          {
            v72 = SHIBYTE(v116.__r_.__value_.__r.__words[2]);
            v73 = v116.__r_.__value_.__r.__words[0];
            v74 = __error();
            v76 = &v116;
            if (v72 < 0)
            {
              v76 = v73;
            }

            sub_100428B48("Unable to chmod '%s': %d", v75, v76, *v74);
            goto LABEL_50;
          }

          if (v92)
          {
            v79 = (v116.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v116 : v116.__r_.__value_.__r.__words[0];
            if (chown(v79, v92->pw_uid, 0xFFFFFFFF))
            {
              v80 = __error();
              sub_100428B48("Error changing the ownership of parent directory to _nearbyd: %d", v81, *v80);
              goto LABEL_50;
            }
          }
        }

        if (sub_10046B678(&v116))
        {
          sub_1001B9424(&__from.__pn_, &pn);
          sub_1001B9424(&v93, &v107);
          std::__fs::filesystem::__copy(&__from, &v93, recursive, 0);
          if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v93.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(__from.__pn_.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__from.__pn_.__r_.__value_.__l.__data_);
          }

          v90 = &v107;
          if ((v107.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v90 = v107.__r_.__value_.__r.__words[0];
          }

          sub_100005D28("Logs can be found in this directory: %s", v83, v84, v85, v86, v87, v88, v89, v90);
          sub_1001B9424(&__from.__pn_, &pn);
          std::__fs::filesystem::__remove_all(&__from, 0);
          if (SHIBYTE(__from.__pn_.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__from.__pn_.__r_.__value_.__l.__data_);
          }

          goto LABEL_51;
        }

        sub_100428B48("Unable to make room for new logs", v82);
LABEL_50:
        LOBYTE(v102) = 1;
LABEL_51:
        if (HIBYTE(v102) == 1)
        {
          sub_100468528((a1 + 56), 5);
        }

        if (v102 == 1)
        {
          sub_100468528((a1 + 56), 6);
        }

        goto LABEL_55;
      }

      if ((pn.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v38 = &pn;
      }

      else
      {
        v38 = pn.__r_.__value_.__r.__words[0];
      }

      if (mkdir(v38, 0x1F8u))
      {
        v39 = __error();
        sub_100428B48("Unable to create a temp directory location: %d", v40, *v39);
      }

      else
      {
        if (v92)
        {
          v43 = (pn.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &pn : pn.__r_.__value_.__r.__words[0];
          if (chown(v43, v92->pw_uid, 0xFFFFFFFF))
          {
            v44 = __error();
            sub_100428B48("Error changing the ownership of the temp directory to _nearbyd: %d", v45, *v44);
            LOBYTE(v102) = 1;
          }
        }

        if ((pn.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v46 = &pn;
        }

        else
        {
          v46 = pn.__r_.__value_.__r.__words[0];
        }

        if (chmod(v46, 0x1F8u))
        {
          v47 = SHIBYTE(pn.__r_.__value_.__r.__words[2]);
          v48 = pn.__r_.__value_.__r.__words[0];
          v49 = __error();
          v51 = &pn;
          if (v47 < 0)
          {
            v51 = v48;
          }

          sub_100428B48("Unable to chmod '%s': %d", v50, v51, *v49);
          LOBYTE(v102) = 1;
        }

        std::ofstream::open();
        if ((v106.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v53 = &v106;
        }

        else
        {
          v53 = v106.__pn_.__r_.__value_.__r.__words[0];
        }

        if (v120[15])
        {
          if (chmod(v53, 0x1B0u))
          {
            v54 = SHIBYTE(v106.__pn_.__r_.__value_.__r.__words[2]);
            v55 = v106.__pn_.__r_.__value_.__r.__words[0];
            v56 = __error();
            v58 = &v106;
            if (v54 < 0)
            {
              v58 = v55;
            }

            sub_100428B48("Unable to chmod '%s': %d", v57, v58, *v56);
            LOBYTE(v102) = 1;
          }

          if (*(a2 + 23) >= 0)
          {
            v59 = a2;
          }

          else
          {
            v59 = *a2;
          }

          v97 = 0;
          __from.__pn_.__r_.__value_.__r.__words[0] = v59;
          v96[0] = 0;
          sub_10046D694(v96, &__from.__pn_.__r_.__value_.__l.__data_);
        }

        sub_100428B48("Error trying to open file: %s", v52, v53);
      }
    }

    else
    {
      sub_100428B48("failed to get process temp directory path", v21);
    }

    v20 = 0;
    goto LABEL_50;
  }

LABEL_55:
  __p[0] = v103;
  sub_1001674A8(__p);
  std::filebuf::~filebuf();
  std::ostream::~ostream();
  std::ios::~ios();
  sub_10046CC60(v104);
  sub_10046CC60(v105);
  if (SHIBYTE(v106.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v106.__pn_.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v107.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(pn.__r_.__value_.__l.__data_);
  }

  v110 = v41;
  if (v113 < 0)
  {
    operator delete(v112[7].__locale_);
  }

  std::locale::~locale(v112);
  std::iostream::~basic_iostream();
  std::ios::~ios();
  if (SHIBYTE(v116.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v116.__r_.__value_.__l.__data_);
  }

  return v20;
}

void sub_100468184(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::locale a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  if (a2 == 1)
  {
    exception_ptr = __cxa_get_exception_ptr(a1);
    sub_10046BD2C(&__p, exception_ptr);
    __cxa_begin_catch(a1);
    sub_100428B48("Filesystem exception while removing the temp logging directory: %s", v71);
    a65 = 1;
    std::__fs::filesystem::filesystem_error::~filesystem_error(&__p);
    __cxa_end_catch();
    JUMPOUT(0x1004678D4);
  }

  STACK[0x388] = &a66;
  sub_1001674A8(&STACK[0x388]);
  sub_10046A17C(&STACK[0x788]);
  sub_10046CC60(&a67);
  sub_10046CC60(&a68);
  if (SLOBYTE(STACK[0x217]) < 0)
  {
    operator delete(STACK[0x200]);
  }

  if (SLOBYTE(STACK[0x22F]) < 0)
  {
    operator delete(STACK[0x218]);
  }

  if (SLOBYTE(STACK[0x247]) < 0)
  {
    operator delete(STACK[0x230]);
  }

  sub_100193C68(&STACK[0x248]);
  if (SLOBYTE(STACK[0x387]) < 0)
  {
    operator delete(STACK[0x370]);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100468528(uint64_t a1, int a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_100037B10();
  }

  return (*(*v2 + 48))(v2, &v4);
}

void sub_10046857C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100005D28("crashReceived", a2, a3, a4, a5, a6, a7, a8, __p[0]);
  os_unfair_lock_lock((a1 + 8));
  if (*a1)
  {
    if (a2)
    {
      if (!*(a1 + 4))
      {
        sub_100004A08(&v23, "FW Generated");
        if (*(a1 + 47) < 0)
        {
          operator delete(*(a1 + 24));
        }

        *(a1 + 24) = v23;
        *(a1 + 40) = v24;
      }

      sub_100004A08(__p, "");
      v18 = sub_100467238(a1, a1 + 24, a2, __p);
      if (v22 < 0)
      {
        operator delete(__p[0]);
      }

      if (v18 <= 1)
      {
        if (v18)
        {
          if (v18 != 1 || *(a1 + 4) != 2)
          {
            goto LABEL_28;
          }

          sub_100005D28("RoseDebugManager: Suspending the crashlog timer", v11, v12, v13, v14, v15, v16, v17, __p[0]);
          dispatch_suspend(*(a1 + 16));
          *(a1 + 1) = 1;
          sub_100466C24(a1, 0);
          v19 = a1 + 56;
          v20 = 4;
          goto LABEL_27;
        }

        sub_100428B48("No crashlogs were available to dequeue", v11);
LABEL_28:
        os_unfair_lock_unlock((a1 + 8));
        return;
      }

      if (v18 == 2)
      {
        if (*(a1 + 4))
        {
          sub_100005D28("RoseDebugManager: Suspending the crashlog timer", v11, v12, v13, v14, v15, v16, v17, __p[0]);
          dispatch_suspend(*(a1 + 16));
          *(a1 + 1) = 1;
          sub_100466C24(a1, 0);
        }

        v19 = a1 + 56;
        v20 = 2;
      }

      else
      {
        if (v18 != 3)
        {
          goto LABEL_28;
        }

        if (*(a1 + 4))
        {
          sub_100005D28("RoseDebugManager: Suspending the crashlog timer", v11, v12, v13, v14, v15, v16, v17, __p[0]);
          dispatch_suspend(*(a1 + 16));
          *(a1 + 1) = 1;
          sub_100466C24(a1, 0);
        }

        v19 = a1 + 56;
        v20 = 1;
      }

LABEL_27:
      sub_100468528(v19, v20);
      goto LABEL_28;
    }

    sub_100428B48("descriptor is null", v10);
    sub_100468528(a1 + 56, 5);
  }

  os_unfair_lock_unlock((a1 + 8));
}

void sub_100468768(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100468784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        return;
      }

      v10 = "fwStateChangeReceived: FW is in FirmwareRunning";
      goto LABEL_11;
    }

    sub_100005D28("fwStateChangeReceived: FW is in SecureROM", a2, a3, a4, a5, a6, a7, a8, v20);
    os_unfair_lock_lock((a1 + 8));
    if (*(a1 + 4) == 2)
    {
      sub_100005D28("RoseDebugManager: Suspending the crashlog timer", v13, v14, v15, v16, v17, v18, v19, v21);
      dispatch_suspend(*(a1 + 16));
      *(a1 + 1) = 1;
      sub_100466C24(a1, 0);
    }

    os_unfair_lock_unlock((a1 + 8));
    v11 = a1 + 56;
    v12 = 7;
  }

  else
  {
    if (a2 != 2)
    {
      if (a2 == 3)
      {
        v10 = "fwStateChangeReceived: FW is in FirmwareCrashed";
      }

      else
      {
        if (a2 != 4)
        {
          return;
        }

        v10 = "fwStateChangeReceived: Unable to decode the FW state.";
      }

LABEL_11:

      sub_100005D28(v10, a2, a3, a4, a5, a6, a7, a8, a9);
      return;
    }

    sub_100005D28("fwStateChangeReceived: FW is in FirmwareLogCollectionInProgress", a2, a3, a4, a5, a6, a7, a8, v20);
    v11 = a1 + 56;
    v12 = 0;
  }

  sub_100468528(v11, v12);
}

void sub_100468898(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a3)
  {
    v6 = a4;
    if (a4)
    {
      if (a4 >= 0x101)
      {
        sub_100428B48("Received error packet of size %zu, truncating to %d", a2, a4, 256);
        v6 = 256;
      }

      if (a2 == 4 || a2 == 2)
      {
        sub_100004A08(v12, "Error Reporting Packet:\n");
        sub_100004A08(__p, "\n");
        sub_10046FF5C(v12, a3, v6, 4u, __p);
      }

      else
      {
        sub_100004A08(v12, "Error Reporting Packet Header:\n");
        sub_100004A08(__p, "\n");
        if (v6 > 0x13)
        {
          sub_10046FF5C(v12, a3, 0x14uLL, 4u, __p);
        }

        else
        {
          sub_10046FF5C(v12, a3, v6, 4u, __p);
        }
      }

      if (v11 < 0)
      {
        operator delete(__p[0]);
      }

      if (v13 < 0)
      {
        operator delete(v12[0]);
      }
    }
  }

  switch(a2)
  {
    case 0:
      sub_100428B48("errorReportReceived: FWPktSeqMismatch", a2);
      v8 = a1 + 56;
      v9 = 8;
      goto LABEL_30;
    case 1:
      sub_100428B48("errorReportReceived: FWPktDroppedMagicMismatch", a2);
      v8 = a1 + 56;
      v9 = 9;
      goto LABEL_30;
    case 2:
      sub_100428B48("errorReportReceived: FWPktDroppedTooLarge", a2);
      v8 = a1 + 56;
      v9 = 10;
      goto LABEL_30;
    case 3:
      sub_100428B48("errorReportReceived: FWPktDroppedFWFailure", a2);
      v8 = a1 + 56;
      v9 = 11;
      goto LABEL_30;
    case 4:
      sub_100428B48("errorReportReceived: FWPktDroppedCRCMismatch", a2);
      v8 = a1 + 56;
      v9 = 12;
      goto LABEL_30;
    case 5:
      sub_100428B48("errorReportReceived: FWPktDroppedRespSeqMismatch", a2);
      v8 = a1 + 56;
      v9 = 13;
      goto LABEL_30;
    case 6:
      sub_100428B48("errorReportReceived: FWPktDroppedUnhandledType", a2);
      v8 = a1 + 56;
      v9 = 14;
      goto LABEL_30;
    case 7:
      sub_100428B48("errorReportReceived: FWPktDroppedUnhandledInterface", a2);
      v8 = a1 + 56;
      v9 = 15;
      goto LABEL_30;
    case 8:
      sub_100428B48("errorReportReceived: FWPktDroppedUnknownError", a2);
      v8 = a1 + 56;
      v9 = 16;
      goto LABEL_30;
    case 9:
      sub_100428B48("errorReportReceived: DriverCrashlogPktError", a2);
      v8 = a1 + 56;
      v9 = 17;
      goto LABEL_30;
    case 10:
      sub_100428B48("errorReportReceived: RKOSPktError", a2);
      v8 = a1 + 56;
      v9 = 18;
      goto LABEL_30;
    case 11:
      sub_100428B48("errorReportReceived: InvalidEventParameter", a2);
      v8 = a1 + 56;
      v9 = 19;
      goto LABEL_30;
    case 12:
      sub_100428B48("errorReportReceived: UnknownError", a2);
      v8 = a1 + 56;
      v9 = 20;
LABEL_30:
      sub_100468528(v8, v9);
      break;
    default:
      sub_100428B48("errorReportReceived: Error Undefined (%d)", a2, a2);
      break;
  }
}

void sub_100468B50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_100468B94(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (v2)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = sub_100468C10;
    block[3] = &unk_1009AC738;
    block[4] = a1;
    dispatch_sync(v2, block);
  }
}

void sub_100468C10(uint64_t a1)
{
  v1 = *(a1 + 32);
  os_unfair_lock_lock((v1 + 8));
  if (*v1 == 1)
  {
    if (*(v1 + 1) == 1)
    {
      dispatch_resume(*(v1 + 16));
    }

    dispatch_source_cancel(*(v1 + 16));
    dispatch_release(*(v1 + 16));
    v2 = *(v1 + 48);
    v4 = 0;
    sub_10042A2A4(v2, v3);
    sub_10042AA50(v3);
    *v1 = 0;
    *(v1 + 16) = 0;
    *(v1 + 120) = 0;
  }

  os_unfair_lock_unlock((v1 + 8));
}

void sub_100468CC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10042AA50(va);
  _Unwind_Resume(a1);
}

void sub_100468CDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100005D28("RoseDebugManager: Resuming the crashlog timer", a2, a3, a4, a5, a6, a7, a8, v11);
  v9 = *(a1 + 16);
  v10 = dispatch_time(0, 5000000000);
  dispatch_source_set_timer(v9, v10, 0xFFFFFFFFFFFFFFFFLL, 0xBEBC200uLL);
  dispatch_resume(*(a1 + 16));
  *(a1 + 1) = 0;
}

void sub_100468D44(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = a3 - 32;
  if (a3 - 32 < 0x31)
  {
    return;
  }

  v8 = 32;
  while (1)
  {
    v9 = a2 + v8;
    v10 = *(a2 + v8 + 12);
    v11 = *(a2 + v8);
    if (v10 <= 0xF)
    {
      sub_100428B48("crashlog section is too small. Section signature: 0x%x version: 0x%x size: %d", a2, v11, *(v9 + 8), v10);
      return;
    }

    if (v11 == 1130587248)
    {
      break;
    }

LABEL_7:
    v8 += v10;
    if (v8 + 16 >= v4)
    {
      return;
    }
  }

  v12 = *(v9 + 8);
  if (v12 != 512)
  {
    sub_100428B48("CoredumpRegions version mismatch. Expected: 0x%x Version in Crashlog: 0x%x", a2, 512, v12);
    LODWORD(v10) = *(v9 + 12);
    goto LABEL_7;
  }

  if (v8 + v10 <= a3)
  {
    if (v10 >= 0x24)
    {
      v13 = 0;
      v14 = a2 + v8;
      while (1)
      {
        v15 = *(v14 + v13 + 32);
        if (v15 > 0x200000)
        {
          sub_100428B48("Coredump region size is too large: %d", a2, *(v14 + v13 + 32));
          goto LABEL_33;
        }

        v16 = *(a4 + 8);
        v17 = v16 - *a4;
        if (v17 == 1280)
        {
          break;
        }

        v18 = *(a4 + 16);
        if (v16 >= v18)
        {
          v20 = 0xCCCCCCCCCCCCCCCDLL * (v17 >> 2) + 1;
          if (v20 > 0xCCCCCCCCCCCCCCCLL)
          {
            sub_100019B38();
          }

          if (0x999999999999999ALL * ((v18 - *a4) >> 2) > v20)
          {
            v20 = 0x999999999999999ALL * ((v18 - *a4) >> 2);
          }

          if (0xCCCCCCCCCCCCCCCDLL * ((v18 - *a4) >> 2) >= 0x666666666666666)
          {
            v21 = 0xCCCCCCCCCCCCCCCLL;
          }

          else
          {
            v21 = v20;
          }

          if (v21)
          {
            sub_10046D4FC(a4, v21);
          }

          v22 = 4 * (v17 >> 2);
          *v22 = *(v14 + v13 + 16);
          *(v22 + 16) = v15;
          v19 = v22 + 20;
          v23 = *(a4 + 8) - *a4;
          v24 = v22 - v23;
          memcpy((v22 - v23), *a4, v23);
          v25 = *a4;
          *a4 = v24;
          *(a4 + 8) = v19;
          *(a4 + 16) = 0;
          if (v25)
          {
            operator delete(v25);
          }
        }

        else
        {
          *v16 = *(v14 + v13 + 16);
          *(v16 + 16) = v15;
          v19 = v16 + 20;
        }

        *(a4 + 8) = v19;
        v26 = v13 + 56;
        v13 += 20;
        if (v26 > *(v9 + 12))
        {
          return;
        }
      }

      sub_100428B48("There are more coredump regions than expected in the crashlog", a2, v27);
LABEL_33:
      *(a4 + 8) = *a4;
    }
  }

  else
  {
    sub_100428B48("Parsing error while extracting the coredump regions. crashlog size: %zu offset and section size: %lu", a2, a3, v8 + v10);
  }
}

void sub_100468F7C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, std::string *__str, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3 <= 0x1F)
  {

    sub_100428B48("crashLogSize is too small", a2);
    return;
  }

  v8 = a6;
  v10 = a4;
  v13 = *(a2 + 12);
  if (a3 - 32 < 0x31)
  {
LABEL_12:
    v18 = 0;
    v19 = 0;
  }

  else
  {
    v14 = 32;
    while (1)
    {
      v15 = a2 + v14;
      v16 = *(a2 + v14 + 12);
      v17 = *(a2 + v14);
      if (v16 <= 0xF)
      {
        sub_100428B48("crashlog section is too small. Section signature: 0x%x version: 0x%x size: %d", a2, v17, *(v15 + 8), v16);
        goto LABEL_12;
      }

      if (v17 == 1131639922)
      {
        break;
      }

      v14 += v16;
      if (v14 + 16 >= a3 - 32)
      {
        goto LABEL_12;
      }
    }

    v23 = *(v15 + 8);
    if (v23 == 257)
    {
      v24 = v14 + v16;
      if (v24 <= a3)
      {
        v25 = v16 - 20;
        if (v16 - 20 < 0)
        {
          sub_100013AEC();
        }

        v26 = v25;
        if (v25 >= 0x17)
        {
          operator new();
        }

        *(&__dst.__r_.__value_.__s + 23) = v16 - 20;
        if (v16 != 20)
        {
          memcpy(&__dst, (v15 + 20), v25);
        }

        __dst.__r_.__value_.__s.__data_[v26] = 0;
        if (SHIBYTE(__str->__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str->__r_.__value_.__l.__data_);
        }

        *__str = __dst;
        if ((__str->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v27 = __str;
        }

        else
        {
          v27 = __str->__r_.__value_.__r.__words[0];
        }

        sub_100005D28("CrashString is: %s", a2, a3, a4, __str, a6, a7, a8, v27);
      }

      else
      {
        sub_100428B48("Parsing error while extracting the crash string reason. crashlog size: %zu offset and section size: %lu", a2, a3, v24);
      }

      v18 = 1;
    }

    else
    {
      sub_100428B48("Crash string section version mismatch. Expected: 0x%x Version in Crashlog: 0x%x", a2, 257, v23);
      v18 = 0;
    }

    v19 = 1;
  }

  v20 = v13 - 1;
  size = HIBYTE(__str->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) != 0)
  {
    size = __str->__r_.__value_.__l.__size_;
  }

  if (size)
  {
    v22 = *(a1 + 112);
    if (v22 && v8)
    {
      memset(&__dst, 0, sizeof(__dst));
      std::string::operator=(&__dst, __str);
      v29 = *(a2 + 12);
      v30 = v20 < 0x3F;
      v31 = v10;
      sub_100469258(a1 + 88, 0, &__dst);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      return;
    }
  }

  else
  {
    v22 = *(a1 + 112);
  }

  if (v22 && v8)
  {
    __dst.__r_.__value_.__s.__data_[0] = v19;
    __dst.__r_.__value_.__s.__data_[1] = v18;
    HIDWORD(__dst.__r_.__value_.__r.__words[0]) = *(a2 + 12);
    __dst.__r_.__value_.__s.__data_[8] = v20 < 0x3F;
    __dst.__r_.__value_.__s.__data_[9] = v10;
    sub_100469258(a1 + 88, 1, &__dst);
  }
}

void sub_10046923C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100469258(uint64_t a1, int a2, uint64_t a3)
{
  v6 = a2;
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_100037B10();
  }

  return (*(*v3 + 48))(v3, &v6, &v5);
}

uint64_t sub_1004692B4(uint64_t a1, const void **a2, uint64_t a3, void *a4, int a5, _BYTE *a6, _BYTE *a7)
{
  v102 = 0;
  *v103 = 0;
  sub_100004A08(&v99, "");
  v10 = 0;
  v80 = 0;
  v11 = &v101;
  v12 = &v98;
  v13 = 1;
  do
  {
    v14 = v13;
    v86 = v11;
    *v11 = 1;
    v82 = v12;
    *v12 = 0;
    v15 = a3 + 30 * v10;
    v16 = 1;
    while (sub_100469CE0(a1, v10, &v102, a6))
    {
      memset(v96, 0, 15);
      v18 = v102;
      v104.__r_.__value_.__s.__data_[0] = 0;
      sub_100025100(v95, v102, &v104);
      v19 = sub_100429FF0(*(a1 + 48), v10, v96, v95[0], v95[2] - v95[0], v103);
      if (*v103 == v18)
      {
        v21 = v19;
      }

      else
      {
        v21 = 0;
      }

      if (v21)
      {
        if (BYTE4(v96[1]))
        {
          std::string::assign(&v99, "Corrupted");
          v104.__r_.__value_.__s.__data_[0] = v10;
          if (*(a1 + 112))
          {
            sub_100469258(a1 + 88, 2, &v104);
          }

LABEL_18:
          if (v14)
          {
            goto LABEL_19;
          }

LABEL_35:
          if ((v99.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v99.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v99.__r_.__value_.__l.__size_;
          }

          sub_100175C6C(&v104, size + 4);
          if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v43 = &v104;
          }

          else
          {
            v43 = v104.__r_.__value_.__r.__words[0];
          }

          if (size)
          {
            if ((v99.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v44 = &v99;
            }

            else
            {
              v44 = v99.__r_.__value_.__r.__words[0];
            }

            memmove(v43, v44, size);
          }

          strcpy(v43 + size, "-DSP");
        }

        else
        {
          if (*(v95[0] + 3) > 0x3Fu)
          {
            std::string::assign(&v99, "NonFatal");
            goto LABEL_18;
          }

          std::string::assign(&v99, "Fatal");
          if (a3)
          {
            *(v104.__r_.__value_.__r.__words + 7) = 0;
            v104.__r_.__value_.__r.__words[0] = 0;
            if (sub_10042A08C(*(a1 + 48), v10))
            {
              if (*(v15 + 15) == v104.__r_.__value_.__r.__words[0])
              {
                sub_100005D28("Crashlog's log_id matches the coredump's log_id. Extracting the coredump regions.", v24, v25, v26, v27, v28, v29, v30, v76);
                sub_100468D44(v31, v95[0], *v103, *a4 + 24 * v10);
              }

              else
              {
                sub_100428B48("The coredump log_id does not match with the crashlog log_id", v24);
              }
            }

            else
            {
              sub_100428B48("No coredump to be dequeued for core: %d", v24, v10);
            }
          }

          else
          {
            sub_100428B48("No crashlog descriptor available.", v23);
          }

          v80 = 1;
          if ((v14 & 1) == 0)
          {
            goto LABEL_35;
          }

LABEL_19:
          if ((v99.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v32 = HIBYTE(v99.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v32 = v99.__r_.__value_.__l.__size_;
          }

          sub_100175C6C(&v104, v32 + 3);
          if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v40 = &v104;
          }

          else
          {
            v40 = v104.__r_.__value_.__r.__words[0];
          }

          if (v32)
          {
            if ((v99.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v41 = &v99;
            }

            else
            {
              v41 = v99.__r_.__value_.__r.__words[0];
            }

            memmove(v40, v41, v32);
          }

          *(&v40->__r_.__value_.__l.__data_ + v32) = 5259565;
        }

        if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v99.__r_.__value_.__l.__data_);
        }

        v99 = v104;
        v45 = &v99;
        if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v45 = v104.__r_.__value_.__r.__words[0];
        }

        sub_100005D28("Received %s crash log", v33, v34, v35, v36, v37, v38, v39, v45);
        memset(&__str, 0, sizeof(__str));
        v48 = *(a1 + 47);
        if (v48 < 0)
        {
          if (*(a1 + 32) != 12)
          {
            goto LABEL_62;
          }

          v49 = *(a1 + 24);
        }

        else
        {
          v49 = (a1 + 24);
          if (v48 != 12)
          {
LABEL_62:
            v53 = 0;
            goto LABEL_63;
          }
        }

        v50 = *v49;
        v51 = *(v49 + 2);
        v53 = v50 == 0x72656E6547205746 && v51 == 1684370529;
LABEL_63:
        if (BYTE4(v96[1]))
        {
          v54 = 0;
        }

        else
        {
          v54 = v53;
        }

        sub_100468F7C(a1, v95[0], *v103, v10, &__str, v54, v46, v47);
        if (*(a1 + 128) == 1)
        {
          std::operator+<char>();
          v62 = std::string::append(&v90, "-");
          v63 = *&v62->__r_.__value_.__l.__data_;
          v91.__r_.__value_.__r.__words[2] = v62->__r_.__value_.__r.__words[2];
          *&v91.__r_.__value_.__l.__data_ = v63;
          v62->__r_.__value_.__l.__size_ = 0;
          v62->__r_.__value_.__r.__words[2] = 0;
          v62->__r_.__value_.__r.__words[0] = 0;
          *v86 = v16 + 1;
          std::to_string(&v89, v16);
          if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v64 = &v89;
          }

          else
          {
            v64 = v89.__r_.__value_.__r.__words[0];
          }

          if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v65 = HIBYTE(v89.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v65 = v89.__r_.__value_.__l.__size_;
          }

          v66 = std::string::append(&v91, v64, v65);
          v67 = *&v66->__r_.__value_.__l.__data_;
          v104.__r_.__value_.__r.__words[2] = v66->__r_.__value_.__r.__words[2];
          *&v104.__r_.__value_.__l.__data_ = v67;
          v66->__r_.__value_.__l.__size_ = 0;
          v66->__r_.__value_.__r.__words[2] = 0;
          v66->__r_.__value_.__r.__words[0] = 0;
          v68 = std::string::append(&v104, ".bin");
          v69 = *&v68->__r_.__value_.__l.__data_;
          v93 = v68->__r_.__value_.__r.__words[2];
          *__p = v69;
          v68->__r_.__value_.__l.__size_ = 0;
          v68->__r_.__value_.__r.__words[2] = 0;
          v68->__r_.__value_.__r.__words[0] = 0;
          if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v104.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v89.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v91.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v90.__r_.__value_.__l.__data_);
          }

          sub_100175684(a2, __p, &v91);
          sub_100469D74(&v104, &v91, 4);
          if (v105)
          {
            p_str = &__str;
            if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              p_str = __str.__r_.__value_.__r.__words[0];
            }

            v90.__r_.__value_.__r.__words[0] = p_str;
            v87[0] = 0;
            v88 = 0;
            sub_10046D694(v87, &v90.__r_.__value_.__l.__data_);
          }

          v72 = &v91;
          if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v72 = v91.__r_.__value_.__r.__words[0];
          }

          sub_100428B48("Error trying to open file: %s", v70, v72, v78);
          *a7 = 1;
          v104.__r_.__value_.__r.__words[0] = v84;
          *(v104.__r_.__value_.__r.__words + *(v84 - 24)) = v83;
          std::filebuf::~filebuf();
          std::ostream::~ostream();
          std::ios::~ios();
          if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v91.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v93) < 0)
          {
            operator delete(__p[0]);
          }

          ++v16;
          if (a3)
          {
LABEL_94:
            if (v96[0] == *v15)
            {
              *v82 = 1;
              if (LODWORD(v96[1]) != *(v15 + 8))
              {
                sub_100428B48("Size of the dequeued crash log does not match the size in descriptor", v17);
                *a6 = 1;
              }

              if (BYTE5(v96[1]) != *(v15 + 13))
              {
                sub_100428B48("core type of the dequeued crash log does not match the core type in descriptor", v17);
                *a6 = 1;
              }

              if (BYTE6(v96[1]) != *(v15 + 14))
              {
                sub_100428B48("log type of the dequeued crash log does not match the log type in descriptor", v17);
                *a6 = 1;
              }

              if (BYTE4(v96[1]) == *(v15 + 12))
              {
                v22 = 0;
              }

              else
              {
                sub_100428B48("is_corrupted flag of the dequeued crash log does not match the flag in descriptor", v17);
                v22 = 0;
                *a6 = 1;
              }

              goto LABEL_104;
            }
          }
        }

        else
        {
          sub_100005D28("Crash log saving is disabled", v55, v56, v57, v58, v59, v60, v61, v77);
          if (a3)
          {
            goto LABEL_94;
          }
        }

        v22 = 1;
LABEL_104:
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        goto LABEL_106;
      }

      v78 = v18;
      v76 = v10;
      sub_100428B48("DequeueCrashLog for core: %d failed. Buffer Size: %zu, received Size: %zu", v20);
      v22 = 0;
      *a6 = 1;
LABEL_106:
      if (v95[0])
      {
        v95[1] = v95[0];
        operator delete(v95[0]);
      }

      if ((v22 & 1) == 0)
      {
        break;
      }
    }

    v13 = 0;
    v11 = &v100;
    v12 = &v97;
    v10 = 1;
  }

  while ((v14 & 1) != 0);
  if (a3)
  {
    if (*(a3 + 8) && (v98 & 1) == 0)
    {
      sub_100428B48("No AP crashlog available with ID that matches the descriptor", v17);
      *a6 = 1;
    }

    if (*(a3 + 38) && (v97 & 1) == 0)
    {
      sub_100428B48("No DSP crashlog available with ID that matches the descriptor", v17);
      *a6 = 1;
    }
  }

  if (v80)
  {
    v73 = 2;
  }

  else
  {
    v73 = v101 > 1 || v100 > 1;
  }

  if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v99.__r_.__value_.__l.__data_);
  }

  return v73;
}

void sub_100469BBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *__p, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  if (a54 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100469CE0(uint64_t a1, uint64_t a2, unint64_t *a3, _BYTE *a4)
{
  v10 = 0;
  v6 = sub_100429FF0(*(a1 + 48), a2, 0, 0, 0, &v10);
  if (v6)
  {
    v8 = v10 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (v6)
    {
      return 0;
    }

    goto LABEL_10;
  }

  if (v10 > 0x200000)
  {
    sub_100428B48("Unexpectedly large crashlog of size:%zu is available", v7, v10);
LABEL_10:
    result = 0;
    *a4 = 1;
    return result;
  }

  *a3 = v10;
  return 1;
}

void (__cdecl ***sub_100469D74(void (__cdecl ***a1)(std::ofstream *__hidden this), uint64_t *a2, int a3))(std::ofstream *__hidden this)
{
  a1[58] = 0;
  *a1 = v5;
  *(*(v5 - 3) + a1) = v4;
  v6 = (*(*a1 - 3) + a1);
  std::ios_base::init(v6, a1 + 1);
  v6[1].__vftable = 0;
  v6[1].__fmtflags_ = -1;
  std::filebuf::basic_filebuf();
  if (!std::filebuf::open())
  {
    std::ios_base::clear((*(*a1 - 3) + a1), *(*(*a1 - 3) + a1 + 32) | 4);
  }

  return a1;
}

void sub_100469F08(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100469F40(unsigned __int8 *a1, char *__s)
{
  if (!*a1)
  {
    *a1 = 1;
    operator new();
  }

  if (*a1 != 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_10046D550(a1, &v9);
    v7 = std::string::insert(&v9, 0, "cannot use operator[] with ");
    v8 = *&v7->__r_.__value_.__l.__data_;
    __p.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
    *&__p.__r_.__value_.__l.__data_ = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    std::logic_error::logic_error(exception, &__p);
  }

  v3 = *(a1 + 1);
  sub_100004A08(&__p, __s);
  v9.__r_.__value_.__r.__words[0] = &__p;
  v4 = sub_10046D580(v3, &__p.__r_.__value_.__l.__data_, &unk_100548C50, &v9);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v4 + 56;
}

void sub_10046A0A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

char *sub_10046A120(char *a1, char *a2)
{
  sub_10046CCF0(a2);
  v4 = *a1;
  *a1 = *a2;
  *a2 = v4;
  v5 = *(a1 + 1);
  *(a1 + 1) = *(a2 + 1);
  *(a2 + 1) = v5;
  sub_10046CCF0(a1);
  return a1;
}

void *sub_10046A17C(void *a1)
{
  std::filebuf::~filebuf();
  std::ostream::~ostream();
  std::ios::~ios();
  return a1;
}

void sub_10046A248(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = -51 * ((a2[1] - *a2) >> 2);
  v35 = xmmword_100573DC0;
  v5 = v4;
  v6 = v4;
  v7 = v4 << 6;
  v8 = 56 * v4;
  v36 = v4 + 1;
  v37 = v8 + 84;
  v38 = 0;
  v34 = 0x5400000004;
  v33 = 0x1100000001;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0;
  sub_10046D78C(&__p, v4);
  v16 = __p;
  if (v27 - __p >= 1)
  {
    v17 = (v27 - __p) / 0x38uLL + 1;
    do
    {
      v16[6] = 0;
      *(v16 + 1) = 0uLL;
      *(v16 + 2) = 0uLL;
      *v16 = 0uLL;
      v16 += 7;
      --v17;
    }

    while (v17 > 1);
  }

  sub_100005D28("Number of coredump sections available for AP is: %d", v9, v10, v11, v12, v13, v14, v15, v5);
  if (v5)
  {
    v18 = 0;
    v19 = 0;
    v20 = v8 + 112;
    v21 = __p;
    do
    {
      v22 = &v21[v19];
      *v22 = 0x3800000001;
      v22[8] = 95;
      *(__p + v19 + 9) = 95;
      *(__p + v19 + 10) = 84;
      *(__p + v19 + 11) = 69;
      *(__p + v19 + 12) = 88;
      *(__p + v19 + 13) = 84;
      v23 = *a2 + v18;
      v24 = *v23;
      v21 = __p;
      v25 = __p + v19;
      LODWORD(v23) = *(v23 + 16);
      v25[6] = v24;
      v25[7] = v23;
      v25[8] = v20;
      v25[9] = v23;
      v20 += v23;
      v19 += 56;
      v18 += 20;
    }

    while (v7 - 8 * v6 != v19);
  }

  std::ostream::write();
  std::ostream::write();
  std::ostream::write();
  std::ostream::write();
  std::ostream::write();
  if (__p)
  {
    v27 = __p;
    operator delete(__p);
  }
}

void sub_10046A460(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10046A480(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = (a2[1] - *a2) >> 2;
  v48 = 0;
  v45 = xmmword_100573DD0;
  v5 = (-51 * v4);
  v46 = v5 + 1;
  v47 = (72 * v5 + 288);
  v44 = 0x12000000004;
  v43 = 0x4400000001;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  sub_10046D8DC(&__p, v5);
  v13 = __p;
  if (v25 - __p >= 1)
  {
    v14 = (v25 - __p) / 0x48uLL + 1;
    do
    {
      v13[8] = 0;
      *(v13 + 2) = 0uLL;
      *(v13 + 3) = 0uLL;
      *v13 = 0uLL;
      *(v13 + 1) = 0uLL;
      v13 += 9;
      --v14;
    }

    while (v14 > 1);
  }

  sub_100005D28("Number of coredump sections available for DSP is: %d", v6, v7, v8, v9, v10, v11, v12, v5);
  if (v5)
  {
    v15 = 0;
    v16 = 0;
    v17 = 72 * v5 + 320;
    v18 = __p;
    do
    {
      v19 = &v18[v16];
      *v19 = 0x4800000019;
      v19[8] = 95;
      *(__p + v16 + 9) = 95;
      *(__p + v16 + 10) = 84;
      *(__p + v16 + 11) = 69;
      *(__p + v16 + 12) = 88;
      *(__p + v16 + 13) = 84;
      v20 = (*a2 + v15);
      v21 = *v20;
      v18 = __p;
      v22 = __p + v16;
      v23 = *(v20 + 4);
      v22[3] = v21;
      v22[4] = v23;
      v22[5] = v17;
      v22[6] = v23;
      v17 += v23;
      v16 += 72;
      v15 += 20;
    }

    while (72 * v5 != v16);
  }

  std::ostream::write();
  std::ostream::write();
  std::ostream::write();
  std::ostream::write();
  std::ostream::write();
  if (__p)
  {
    v25 = __p;
    operator delete(__p);
  }
}

void sub_10046A6C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10046A6E4(uint64_t a1, const void **a2, void *a3, unsigned __int8 *a4, _BYTE *a5, _BYTE *a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 128))
  {
    v26.__r_.__value_.__s.__data_[0] = 0;
    sub_100025100(v25, 4096, &v26);
    sub_100004A08(&v24, "");
    v9 = 0;
    v10 = 1;
    v11 = 1;
    while (1)
    {
      v12 = v10;
      *(v23 + 7) = 0;
      v23[0] = 0;
      if (!sub_10042A08C(*(a1 + 48), v9))
      {
        break;
      }

      sub_100005D28("No coredumps to read for core: %d", v13, v14, v15, v16, v17, v18, v19, v9);
      v10 = 0;
      v9 = 1;
      if ((v12 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    sub_100428B48("Unable to get the coredump info for core: %d", v13, v9);
    v11 = 0;
    *a5 = 1;
LABEL_8:
    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }

    if (v25[0])
    {
      v25[1] = v25[0];
      operator delete(v25[0]);
    }
  }

  else
  {
    sub_100005D28("Core dump saving is disabled", a2, a3, a4, a5, a6, a7, a8, v21);
    v11 = 1;
  }

  return v11 & 1;
}

void sub_10046AD50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  if (a40 < 0)
  {
    operator delete(__p);
  }

  if (a42)
  {
    operator delete(a42);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10046AE08(uint64_t a1, const void **a2, unsigned __int8 *a3, uint64_t a4, _BYTE *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 129))
  {
    v36 = 0;
    sub_100004A08(v34, "RoseFirmwareLogs.bin");
    sub_100175684(a2, v34, v32);
    sub_100469D74(v37, v32, 4);
    v30 = 0;
    sub_100025100(__p, 4096, &v30);
    if (v33 >= 0)
    {
      v11 = v32;
    }

    else
    {
      v11 = v32[0];
    }

    if (v37[16])
    {
      if (chmod(v11, 0x1B0u))
      {
        v19 = v33;
        v20 = v32[0];
        v21 = __error();
        v23 = v32;
        if (v19 < 0)
        {
          v23 = v20;
        }

        sub_100428B48("Unable to chmod file '%s': %d", v22, v23, *v21);
        *a5 = 1;
      }

      v24 = v34;
      if (v35 < 0)
      {
        v24 = v34[0];
      }

      sub_100005D28("Writing firmware logs to %s", v12, v13, v14, v15, v16, v17, v18, v24);
      v28[0] = 0;
      v29 = 0;
      sub_10046DA2C(v28, "");
    }

    sub_100428B48("Error trying to open file: %s", v10, v11);
    v25 = 0;
    *a5 = 1;
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    std::filebuf::~filebuf();
    std::ostream::~ostream();
    std::ios::~ios();
    if (v33 < 0)
    {
      operator delete(v32[0]);
    }

    if (v35 < 0)
    {
      operator delete(v34[0]);
    }
  }

  else
  {
    sub_100005D28("Firmware logs are disabled", a2, a3, a4, a5, a6, a7, a8, v27);
    return 1;
  }

  return v25;
}

void sub_10046B168(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31)
{
  sub_10046CC60(&a12);
  if (__p)
  {
    a16 = __p;
    operator delete(__p);
  }

  sub_10046A17C(&a31);
  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10046B1E0(uint64_t a1, uint64_t a2, std::string::size_type a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a2;
  if (*(a3 + 23) < 0)
  {
    if (!*(a3 + 8))
    {
LABEL_9:
      sub_100428B48("reason can't be empty", a2);
      return 4;
    }

    v11 = *a3;
  }

  else
  {
    v11 = a3;
    if (!*(a3 + 23))
    {
      goto LABEL_9;
    }
  }

  sub_100005D28("Request to dump logs for reason: %s", a2, a3, a4, a5, a6, a7, a8, v11);
  os_unfair_lock_lock((a1 + 8));
  if ((*a1 & 1) == 0)
  {
    os_unfair_lock_unlock((a1 + 8));
    return 5;
  }

  v19 = *(a1 + 4);
  if (v19 != 1)
  {
    if (v9 && v19 == 2)
    {
      os_unfair_lock_unlock((a1 + 8));
      return 2;
    }

    v22 = v9 == 0;
    if (!v9 && v19 == 2)
    {
      sub_100005D28("Promoting crashlog trigger from NonFatal to Fatal. Cancel the existing timer.", v12, v13, v14, v15, v16, v17, v18, v46);
      sub_100005D28("RoseDebugManager: Suspending the crashlog timer", v23, v24, v25, v26, v27, v28, v29, v47);
      dispatch_suspend(*(a1 + 16));
      v30 = 1;
      *(a1 + 1) = 1;
      std::string::operator=((a1 + 24), a3);
      v22 = 1;
LABEL_30:
      sub_100466C24(a1, v30);
      if (!sub_10042A4C0(*(a1 + 48), v22))
      {
        sub_100428B48("Triggering crashlog failed", v32);
        sub_100004A08(v48, "Triggering crashlog failed");
        sub_100467238(a1, a3, 0, v48);
        if (v49 < 0)
        {
          operator delete(v48[0]);
        }

        sub_100466C24(a1, 0);
        v20 = 1;
        goto LABEL_36;
      }

      sub_100005D28("Successfully triggered a crashlog. Start timer.", v32, v33, v34, v35, v36, v37, v38, v46);
      sub_100468CDC(a1, v39, v40, v41, v42, v43, v44, v45);
LABEL_32:
      v20 = 0;
LABEL_36:
      os_unfair_lock_unlock((a1 + 8));
      return v20;
    }

    if (v9 == 2)
    {
      if ((sub_100469CE0(a1, 0, &v53, &v52) & 1) == 0 && !sub_100469CE0(a1, 1, &v53, &v52))
      {
        goto LABEL_32;
      }

      sub_100004A08(__p, "");
      sub_100467238(a1, a3, 0, __p);
      if ((v51 & 0x80000000) == 0)
      {
        goto LABEL_32;
      }

      v31 = __p[0];
    }

    else
    {
      if (v9 != 3)
      {
        std::string::operator=((a1 + 24), a3);
        if (v9)
        {
          v30 = 2;
        }

        else
        {
          v30 = 1;
        }

        goto LABEL_30;
      }

      sub_100004A08(v54, "");
      sub_100467238(a1, a3, 0, v54);
      if ((v55 & 0x80000000) == 0)
      {
        goto LABEL_32;
      }

      v31 = v54[0];
    }

    operator delete(v31);
    goto LABEL_32;
  }

  os_unfair_lock_unlock((a1 + 8));
  return 3;
}

void sub_10046B45C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uintmax_t sub_10046B4A0(std::string *a1)
{
  sub_1001B9424(&v8.__pn_, a1);
  std::__fs::filesystem::__status(&v8, 0);
  if (SHIBYTE(v8.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__pn_.__r_.__value_.__l.__data_);
  }

  if (__p.__pn_.__r_.__value_.__s.__data_[0] == 2)
  {
    sub_1001B9424(&__p.__pn_, a1);
    std::__fs::filesystem::recursive_directory_iterator::recursive_directory_iterator(&v8, &__p, skip_permission_denied, 0);
    if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__pn_.__r_.__value_.__l.__data_);
    }

    v2 = *&v8.__pn_.__r_.__value_.__l.__data_;
    if (v8.__pn_.__r_.__value_.__l.__size_)
    {
      atomic_fetch_add_explicit((v8.__pn_.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
      size = v8.__pn_.__r_.__value_.__l.__size_;
      *&__p.__pn_.__r_.__value_.__l.__data_ = v2;
      __p.__pn_.__r_.__value_.__s.__data_[16] = v8.__pn_.__r_.__value_.__s.__data_[16];
      if (v8.__pn_.__r_.__value_.__l.__size_)
      {
        atomic_fetch_add_explicit((v8.__pn_.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
        sub_10000AD84(size);
      }
    }

    else
    {
      *&__p.__pn_.__r_.__value_.__l.__data_ = v8.__pn_.__r_.__value_.__r.__words[0];
      __p.__pn_.__r_.__value_.__s.__data_[16] = v8.__pn_.__r_.__value_.__s.__data_[16];
    }

    v4 = 0;
    while (__p.__pn_.__r_.__value_.__r.__words[0])
    {
      v5 = std::__fs::filesystem::recursive_directory_iterator::__dereference(&__p);
      std::__fs::filesystem::__status(&v5->__p_, 0);
      if (v9 != 2)
      {
        v4 += std::__fs::filesystem::__file_size(&v5->__p_, 0);
      }

      std::__fs::filesystem::recursive_directory_iterator::__increment(&__p, 0);
    }

    if (__p.__pn_.__r_.__value_.__l.__size_)
    {
      sub_10000AD84(__p.__pn_.__r_.__value_.__l.__size_);
    }

    if (v8.__pn_.__r_.__value_.__l.__size_)
    {
      sub_10000AD84(v8.__pn_.__r_.__value_.__l.__size_);
    }
  }

  else
  {
    sub_1001B9424(&v8.__pn_, a1);
    v4 = std::__fs::filesystem::__file_size(&v8, 0);
    if (SHIBYTE(v8.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v8.__pn_.__r_.__value_.__l.__data_);
    }
  }

  return v4;
}

void sub_10046B620(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10046B678(std::string *a1)
{
  __ec.__val_ = 0;
  __ec.__cat_ = std::system_category();
  v2 = sub_10046B4A0(a1);
  if ((v2 + 0x200000) >> 26)
  {
    v11 = v2;
    v50[0] = off_1009AC990;
    v50[3] = v50;
    v47 = 0;
    v48 = 0;
    sub_10046DC74(v49, v50);
    v46 = &v47;
    sub_1001B9424(&__dst.__pn_, a1);
    std::__fs::filesystem::directory_iterator::directory_iterator(&v44, &__dst, 0, none);
    if (SHIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__pn_.__r_.__value_.__l.__data_);
    }

    ptr = v44.__imp_.__ptr_;
    cntrl = v44.__imp_.__cntrl_;
    if (v44.__imp_.__cntrl_)
    {
      atomic_fetch_add_explicit(&v44.__imp_.__cntrl_->__shared_owners_, 1uLL, memory_order_relaxed);
      v15 = v44.__imp_.__cntrl_;
      v43.__imp_.__ptr_ = ptr;
      v43.__imp_.__cntrl_ = cntrl;
      if (v44.__imp_.__cntrl_)
      {
        atomic_fetch_add_explicit(&v44.__imp_.__cntrl_->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_10000AD84(v15);
      }
    }

    else
    {
      v43.__imp_.__ptr_ = v44.__imp_.__ptr_;
      v43.__imp_.__cntrl_ = 0;
    }

    while (v43.__imp_.__ptr_)
    {
      v16 = std::__fs::filesystem::directory_iterator::__dereference(&v43);
      v17.__d_.__rep_ = std::__fs::filesystem::__last_write_time(&v16->__p_, &__ec).__d_.__rep_;
      if (__ec.__val_)
      {
        std::error_code::message(&__dst.__pn_, &__ec);
        if ((__dst.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_dst = &__dst;
        }

        else
        {
          p_dst = __dst.__pn_.__r_.__value_.__r.__words[0];
        }

        if ((v16->__p_.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v36 = v16;
        }

        else
        {
          v36 = v16->__p_.__pn_.__r_.__value_.__r.__words[0];
        }

        sub_100428B48("Error: %s while getting the last write time of %s", v34, p_dst, v36);
        if (SHIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__pn_.__r_.__value_.__l.__data_);
        }

        if (v43.__imp_.__cntrl_)
        {
          sub_10000AD84(v43.__imp_.__cntrl_);
        }

        if (v44.__imp_.__cntrl_)
        {
          sub_10000AD84(v44.__imp_.__cntrl_);
        }

        goto LABEL_58;
      }

      if (SHIBYTE(v16->__p_.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_1000056BC(&__dst, v16->__p_.__pn_.__r_.__value_.__l.__data_, v16->__p_.__pn_.__r_.__value_.__l.__size_);
      }

      else
      {
        __dst = v16->__p_;
      }

      rep = v17.__d_.__rep_;
      sub_10046DD0C(&v46, &__dst, &__dst);
      if (SHIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__pn_.__r_.__value_.__l.__data_);
      }

      std::__fs::filesystem::directory_iterator::__increment(&v43, 0);
    }

    if (v43.__imp_.__cntrl_)
    {
      sub_10000AD84(v43.__imp_.__cntrl_);
    }

    if (v44.__imp_.__cntrl_)
    {
      sub_10000AD84(v44.__imp_.__cntrl_);
    }

    if (v48)
    {
      v18 = v46;
      if (v46 == &v47)
      {
LABEL_37:
        v10 = 1;
        goto LABEL_59;
      }

      while (1)
      {
        v19 = v18 + 4;
        v27 = sub_10046B4A0((v18 + 4));
        v28 = (v18 + 4);
        if (*(v18 + 55) < 0)
        {
          v28 = *v19;
        }

        sub_100005D28("removing directory: %s of size: %ju", v20, v21, v22, v23, v24, v25, v26, v28);
        sub_1001B9424(&__dst.__pn_, (v18 + 4));
        std::__fs::filesystem::__remove_all(&__dst, &__ec);
        if (SHIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__pn_.__r_.__value_.__l.__data_);
        }

        if (__ec.__val_)
        {
          break;
        }

        v30 = v11 >= v27;
        v11 -= v27;
        if (!v30)
        {
          sub_100428B48("Error while deleting the oldest directory", v29);
          goto LABEL_58;
        }

        if (v11 - 65011712 <= 0xFFFFFFFFFBFFFFFFLL)
        {
          v31 = v18[1];
          if (v31)
          {
            do
            {
              v32 = v31;
              v31 = *v31;
            }

            while (v31);
          }

          else
          {
            do
            {
              v32 = v18[2];
              v33 = *v32 == v18;
              v18 = v32;
            }

            while (!v33);
          }

          v18 = v32;
          if (v32 != &v47)
          {
            continue;
          }
        }

        goto LABEL_37;
      }

      std::error_code::message(&__dst.__pn_, &__ec);
      if ((__dst.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v38 = &__dst;
      }

      else
      {
        v38 = __dst.__pn_.__r_.__value_.__r.__words[0];
      }

      if (*(v18 + 55) < 0)
      {
        v19 = *v19;
      }

      sub_100428B48("Error: %s while deleting the directory: %s", v37, v38, v19);
      if (SHIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__pn_.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      sub_100428B48("Unable to iterate through the directory", v12);
    }

LABEL_58:
    v10 = 0;
LABEL_59:
    sub_1001B93C0(&v46, v47);
    sub_10046DBF4(v49);
    sub_10046DBF4(v50);
  }

  else
  {
    sub_100005D28("Rose logging directory usage is below the maximum threshold", v3, v4, v5, v6, v7, v8, v9, v40);
    return 1;
  }

  return v10;
}

void sub_10046BA48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  sub_10046BAF8(&a26);
  sub_10046DBF4(v26 - 120);
  _Unwind_Resume(a1);
}

uint64_t sub_10046BAF8(uint64_t a1)
{
  sub_1001B93C0(a1, *(a1 + 8));
  sub_10046DBF4(a1 + 24);
  return a1;
}

unsigned __int8 *sub_10046BB2C(unsigned __int8 *a1)
{
  *a1 = 0;
  sub_10046CCF0(a1);
  sub_10046CCF0(a1);
  return a1;
}

uint64_t sub_10046BB64(unsigned __int8 *a1, int a2)
{
  sub_100193120(v6);
  sub_10046BDA8(a1, &v7, a2 >= 0, a2 & ~(a2 >> 31), 0);
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

void sub_10046BD04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100193C68(va);
  _Unwind_Resume(a1);
}

std::runtime_error *sub_10046BD2C(std::runtime_error *a1, uint64_t a2)
{
  result = std::runtime_error::runtime_error(a1, a2);
  result[1] = *(a2 + 16);
  v4 = *(a2 + 40);
  result[2].__vftable = *(a2 + 32);
  result[2].__imp_.__imp_ = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10046BDA8(unsigned __int8 *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a1;
  if (v7 > 3)
  {
    if (*a1 > 5u)
    {
      if (v7 == 6)
      {
        v52 = *(a1 + 1);
        *__b = 0u;
        v60 = 0u;
        v61 = 0u;
        v62 = 0u;
        sub_10046C988(__b, v52);
        v53 = strlen(__b);
        sub_10000EA44(a2, __b, v53);
        return;
      }

      if (v7 == 7)
      {
        v54 = *(a1 + 1);
        *__b = 0u;
        v60 = 0u;
        v61 = 0u;
        v62 = 0u;
        sub_10046CA18(__b, v54);
        v55 = strlen(__b);
        sub_10000EA44(a2, __b, v55);
        return;
      }

      if (v7 != 8)
      {
        return;
      }

      v8 = "<discarded>";
      v9 = a2;
      v10 = 11;
      goto LABEL_123;
    }

    if (v7 != 4)
    {
      if (v7 == 5)
      {
        v41 = *(a1 + 1);
        *__b = 0u;
        v60 = 0u;
        v61 = 0u;
        v62 = 0u;
        sub_10046C8B8(__b, v41);
        v42 = strlen(__b);
        sub_10000EA44(a2, __b, v42);
      }

      return;
    }

    if (a1[8])
    {
      v8 = "true";
    }

    else
    {
      v8 = "false";
    }

    if (a1[8])
    {
      v10 = 4;
    }

    else
    {
      v10 = 5;
    }

    v9 = a2;
LABEL_123:

    sub_10000EA44(v9, v8, v10);
    return;
  }

  if (*a1 > 1u)
  {
    if (v7 == 2)
    {
      if (**(a1 + 1) == *(*(a1 + 1) + 8))
      {
        v8 = "[]";
        goto LABEL_122;
      }

      sub_10000EA44(a2, "[", 1);
      if (a3)
      {
        a5 = (a5 + a4);
        sub_10000EA44(a2, "\n", 1);
      }

      v43 = *(a1 + 1);
      v44 = *v43;
      if (*v43 != v43[1])
      {
        if (a3)
        {
          v45 = ",\n";
        }

        else
        {
          v45 = ",";
        }

        if (a3)
        {
          v46 = 2;
        }

        else
        {
          v46 = 1;
        }

        do
        {
          if (v44 != *v43)
          {
            sub_10000EA44(a2, v45, v46);
          }

          sub_10046C508(__b, a5, 32);
          if ((SBYTE7(v60) & 0x80u) == 0)
          {
            v47 = __b;
          }

          else
          {
            v47 = __b[0];
          }

          if ((SBYTE7(v60) & 0x80u) == 0)
          {
            v48 = BYTE7(v60);
          }

          else
          {
            v48 = __b[1];
          }

          sub_10000EA44(a2, v47, v48);
          if (SBYTE7(v60) < 0)
          {
            operator delete(__b[0]);
          }

          sub_10046BDA8(v44, a2, a3, a4, a5);
          v44 += 16;
          v43 = *(a1 + 1);
        }

        while (v44 != v43[1]);
      }

      if (a3)
      {
        sub_10000EA44(a2, "\n", 1);
        LODWORD(a5) = a5 - a4;
      }

      sub_10046C508(__b, a5, 32);
      if ((SBYTE7(v60) & 0x80u) == 0)
      {
        v49 = __b;
      }

      else
      {
        v49 = __b[0];
      }

      if ((SBYTE7(v60) & 0x80u) == 0)
      {
        v50 = BYTE7(v60);
      }

      else
      {
        v50 = __b[1];
      }

      v51 = sub_10000EA44(a2, v49, v50);
      sub_10000EA44(v51, "]", 1);
    }

    else
    {
      if (v7 != 3)
      {
        return;
      }

      sub_100004A08(__b, "");
      if ((SBYTE7(v60) & 0x80u) == 0)
      {
        v35 = __b;
      }

      else
      {
        v35 = __b[0];
      }

      if ((SBYTE7(v60) & 0x80u) == 0)
      {
        v36 = BYTE7(v60);
      }

      else
      {
        v36 = __b[1];
      }

      v37 = sub_10000EA44(a2, v35, v36);
      sub_10046C5B8(*(a1 + 1), &__p);
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

      v40 = sub_10000EA44(v37, p_p, size);
      sub_10000EA44(v40, "", 1);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    if ((SBYTE7(v60) & 0x80000000) == 0)
    {
      return;
    }

    v34 = __b[0];
LABEL_109:
    operator delete(v34);
    return;
  }

  if (!*a1)
  {
    v8 = "null";
    v9 = a2;
    v10 = 4;
    goto LABEL_123;
  }

  if (!*(*(a1 + 1) + 16))
  {
    v8 = "{}";
LABEL_122:
    v9 = a2;
    v10 = 2;
    goto LABEL_123;
  }

  sub_10000EA44(a2, "{", 1);
  if (a3)
  {
    a5 = (a5 + a4);
    sub_10000EA44(a2, "\n", 1);
  }

  v14 = *(a1 + 1);
  v15 = *v14;
  if (*v14 != (v14 + 1))
  {
    if (a3)
    {
      v16 = ",\n";
    }

    else
    {
      v16 = ",";
    }

    v17 = 1;
    if (a3)
    {
      v17 = 2;
    }

    v56 = v17;
    v57 = v16;
    if (a3)
    {
      v18 = " ";
    }

    else
    {
      v18 = "";
    }

    do
    {
      if (v15 != *v14)
      {
        sub_10000EA44(a2, v57, v56);
      }

      sub_10046C508(__b, a5, 32);
      if ((SBYTE7(v60) & 0x80u) == 0)
      {
        v19 = __b;
      }

      else
      {
        v19 = __b[0];
      }

      if ((SBYTE7(v60) & 0x80u) == 0)
      {
        v20 = BYTE7(v60);
      }

      else
      {
        v20 = __b[1];
      }

      v21 = sub_10000EA44(a2, v19, v20);
      v22 = sub_10000EA44(v21, "", 1);
      sub_10046C5B8(v15 + 32, &__p);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v23 = &__p;
      }

      else
      {
        v23 = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v24 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v24 = __p.__r_.__value_.__l.__size_;
      }

      v25 = sub_10000EA44(v22, v23, v24);
      v26 = sub_10000EA44(v25, ":", 2);
      sub_10000EA44(v26, v18, a3);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SBYTE7(v60) < 0)
      {
        operator delete(__b[0]);
      }

      sub_10046BDA8(v15 + 56, a2, a3, a4, a5);
      v27 = *(v15 + 1);
      if (v27)
      {
        do
        {
          v28 = v27;
          v27 = *v27;
        }

        while (v27);
      }

      else
      {
        do
        {
          v28 = *(v15 + 2);
          v29 = *v28 == v15;
          v15 = v28;
        }

        while (!v29);
      }

      v14 = *(a1 + 1);
      v15 = v28;
    }

    while (v28 != v14 + 1);
  }

  if (a3)
  {
    sub_10000EA44(a2, "\n", 1);
    LODWORD(a5) = a5 - a4;
  }

  sub_10046C508(&__p, a5, 32);
  v30 = std::string::append(&__p, "}");
  v31 = *&v30->__r_.__value_.__l.__data_;
  *&v60 = *(&v30->__r_.__value_.__l + 2);
  *__b = v31;
  v30->__r_.__value_.__l.__size_ = 0;
  v30->__r_.__value_.__r.__words[2] = 0;
  v30->__r_.__value_.__r.__words[0] = 0;
  if ((SBYTE7(v60) & 0x80u) == 0)
  {
    v32 = __b;
  }

  else
  {
    v32 = __b[0];
  }

  if ((SBYTE7(v60) & 0x80u) == 0)
  {
    v33 = BYTE7(v60);
  }

  else
  {
    v33 = __b[1];
  }

  sub_10000EA44(a2, v32, v33);
  if (SBYTE7(v60) < 0)
  {
    operator delete(__b[0]);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    v34 = __p.__r_.__value_.__r.__words[0];
    goto LABEL_109;
  }
}

void sub_10046C488(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10046C508(void *__b, size_t __len, int __c)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100013AEC();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  *(__b + 23) = __len;
  if (__len)
  {
    memset(__b, __c, __len);
  }

  *(__b + __len) = 0;
  return __b;
}

uint64_t sub_10046C5B8@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10046C81C(a1);
  v5 = a1[23];
  if (result)
  {
    if ((v5 & 0x80u) != 0)
    {
      v5 = *(a1 + 1);
    }

    result = sub_10046C508(a2, v5 + result, 92);
    v6 = a1[23];
    v7 = v6 < 0;
    if (v6 >= 0)
    {
      v8 = a1;
    }

    else
    {
      v8 = *a1;
    }

    if (v7)
    {
      v9 = *(a1 + 1);
    }

    else
    {
      v9 = a1[23];
    }

    if (v9)
    {
      v10 = 0;
      v11 = &v8[v9];
      result = 114;
      do
      {
        v12 = *v8;
        if (*v8 <= 0xBu)
        {
          switch(v12)
          {
            case 8:
              if (*(a2 + 23) >= 0)
              {
                v16 = a2;
              }

              else
              {
                v16 = *a2;
              }

              *(v16 + v10 + 1) = 98;
              break;
            case 9:
              if (*(a2 + 23) >= 0)
              {
                v20 = a2;
              }

              else
              {
                v20 = *a2;
              }

              *(v20 + v10 + 1) = 116;
              break;
            case 0xA:
              if (*(a2 + 23) >= 0)
              {
                v14 = a2;
              }

              else
              {
                v14 = *a2;
              }

              *(v14 + v10 + 1) = 110;
              break;
            default:
              goto LABEL_37;
          }
        }

        else if (*v8 > 0x21u)
        {
          if (v12 != 92)
          {
            if (v12 != 34)
            {
LABEL_37:
              if (v12 > 0x1F)
              {
                if (*(a2 + 23) >= 0)
                {
                  v21 = a2;
                }

                else
                {
                  v21 = *a2;
                }

                *(v21 + v10) = v12;
              }

              else
              {
                v17 = 0;
                qmemcpy(v24, "u00", sizeof(v24));
                v25 = byte_100573DE0[v12 >> 4];
                v26 = byte_100573DE0[v12 & 0xF];
                do
                {
                  if (*(a2 + 23) >= 0)
                  {
                    v18 = a2;
                  }

                  else
                  {
                    v18 = *a2;
                  }

                  *(v18 + v10 + v17 + 1) = v24[v17];
                  ++v17;
                }

                while (v17 != 5);
                v10 += 5;
              }

              ++v10;
              goto LABEL_53;
            }

            if (*(a2 + 23) >= 0)
            {
              v15 = a2;
            }

            else
            {
              v15 = *a2;
            }

            *(v15 + v10 + 1) = 34;
          }
        }

        else if (v12 == 12)
        {
          if (*(a2 + 23) >= 0)
          {
            v19 = a2;
          }

          else
          {
            v19 = *a2;
          }

          *(v19 + v10 + 1) = 102;
        }

        else
        {
          if (v12 != 13)
          {
            goto LABEL_37;
          }

          if (*(a2 + 23) >= 0)
          {
            v13 = a2;
          }

          else
          {
            v13 = *a2;
          }

          *(v13 + v10 + 1) = 114;
        }

        v10 += 2;
LABEL_53:
        ++v8;
      }

      while (v8 != v11);
    }
  }

  else if ((v5 & 0x80) != 0)
  {
    v22 = *a1;
    v23 = *(a1 + 1);

    return sub_1000056BC(a2, v22, v23);
  }

  else
  {
    *a2 = *a1;
    a2[2] = *(a1 + 2);
  }

  return result;
}

uint64_t sub_10046C81C(unsigned __int8 *a1)
{
  v1 = a1[23];
  v2 = *(a1 + 1);
  if ((v1 & 0x80u) != 0)
  {
    a1 = *a1;
    v1 = v2;
  }

  return sub_10046C858(a1, &a1[v1], 0);
}

uint64_t sub_10046C858(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  for (; a1 != a2; ++a1)
  {
    v4 = *a1;
    v5 = v4 > 0x22 || ((1 << v4) & 0x400003700) == 0;
    if (!v5 || v4 == 92)
    {
      ++a3;
    }

    else if (v4 < 0x20)
    {
      a3 += 5;
    }
  }

  return a3;
}

_BYTE *sub_10046C8B8(_BYTE *result, uint64_t a2)
{
  if (a2)
  {
    v2 = 0;
    v3 = a2;
    do
    {
      if (v2 == 63)
      {
        sub_1004D07CC();
      }

      v4 = v3 % 10;
      if (v3 % 10 < 0)
      {
        LOBYTE(v4) = 10 * (v3 / 10) - v3;
      }

      v5 = v4 + 48;
      v6 = v2 + 1;
      result[v2] = v5;
      v7 = v3 + 9;
      v3 /= 10;
      ++v2;
    }

    while (v7 >= 0x13);
    if (a2 < 0)
    {
      if ((v6 - 1) >= 0x3D)
      {
        sub_1004D07A0();
      }

      result[v6++] = 45;
    }

    v8 = &result[v6 - 1];
    if (v8 > result)
    {
      v9 = result + 1;
      do
      {
        v10 = *(v9 - 1);
        *(v9 - 1) = *v8;
        *v8-- = v10;
      }

      while (v9++ < v8);
    }
  }

  else
  {
    *result = 48;
  }

  return result;
}

_BYTE *sub_10046C988(_BYTE *result, unint64_t a2)
{
  if (a2)
  {
    v2 = result - 1;
    v3 = 63;
    do
    {
      if (!v3)
      {
        sub_1004D07CC();
      }

      *++v2 = (a2 % 0xA) | 0x30;
      --v3;
      v4 = a2 >= 0xA;
      a2 /= 0xAuLL;
    }

    while (v4);
    if (v2 > result)
    {
      v5 = result + 1;
      do
      {
        v6 = *(v5 - 1);
        *(v5 - 1) = *v2;
        *v2-- = v6;
        v4 = v5++ >= v2;
      }

      while (!v4);
    }
  }

  else
  {
    *result = 48;
  }

  return result;
}

void sub_10046CA18(char *__str, double a2)
{
  if (a2 == 0.0)
  {
    if ((*&a2 & 0x8000000000000000) != 0)
    {
      *__str = 45;
      v3 = 1;
    }

    else
    {
      v3 = 0;
    }

    v9 = &__str[v3];
    *v9 = 11824;
    v9[2] = 48;
    return;
  }

  v4 = snprintf(__str, 0x40uLL, "%.*g", 15, a2);
  if (v4 <= 0)
  {
    sub_1004D08D4();
  }

  v5 = v4;
  if (v4 >= 0x40)
  {
    sub_1004D07F8();
  }

  v6 = localeconv();
  if (!v6)
  {
    sub_1004D08A8();
  }

  thousands_sep = v6->thousands_sep;
  if (thousands_sep)
  {
    LODWORD(thousands_sep) = *thousands_sep;
  }

  v16 = thousands_sep;
  if (!v6->decimal_point)
  {
    v8 = 0;
    if (!thousands_sep)
    {
      goto LABEL_18;
    }

LABEL_16:
    v10 = sub_10046CBF8(__str, &__str[v5], &v16);
    v11 = __str - v10 + 64;
    if (v11 >= 1)
    {
      bzero(v10, v11);
    }

    goto LABEL_18;
  }

  v8 = *v6->decimal_point;
  if (thousands_sep)
  {
    goto LABEL_16;
  }

LABEL_18:
  if (v8 && v8 != 46)
  {
    v12 = 0;
    while (v8 != __str[v12])
    {
      if (++v12 == 64)
      {
        goto LABEL_25;
      }
    }

    __str[v12] = 46;
  }

LABEL_25:
  v13 = *__str;
  if (*__str)
  {
    v14 = 0;
    LOBYTE(v15) = 1;
    while (1)
    {
      if ((v15 & 1) != 0 && ((v13 - 46) > 0x37 || ((1 << (v13 - 46)) & 0x80000000800001) == 0))
      {
        if (++v14 == 64)
        {
          goto LABEL_46;
        }

        v15 = 1;
      }

      else
      {
        if (++v14 == 64)
        {
          return;
        }

        v15 = 0;
      }

      v13 = __str[v14];
      if (!__str[v14])
      {
        goto LABEL_37;
      }
    }
  }

  v14 = 0;
  v15 = 1;
LABEL_37:
  if (v15)
  {
    if (v14 >= 0x3E)
    {
LABEL_46:
      sub_1004D0824();
    }

    if (!__str[v14 - 1])
    {
      sub_1004D087C();
    }

    *&__str[v14] = 12334;
    if (__str[v14 + 2])
    {
      sub_1004D0850();
    }
  }
}

unsigned __int8 *sub_10046CBF8(void *a1, unsigned __int8 *a2, char *a3)
{
  result = memchr(a1, *a3, a2 - a1);
  if (!result)
  {
    result = a2;
  }

  v6 = result + 1;
  if (result != a2 && v6 != a2)
  {
    do
    {
      v8 = *v6;
      if (v8 != *a3)
      {
        *result++ = v8;
      }

      ++v6;
    }

    while (v6 != a2);
  }

  return result;
}

unsigned __int8 *sub_10046CC60(unsigned __int8 *a1)
{
  sub_10046CCF0(a1);
  v2 = *a1;
  switch(v2)
  {
    case 3:
      v3 = *(a1 + 1);
      if ((v3[23] & 0x80000000) == 0)
      {
LABEL_9:
        operator delete(v3);
        return a1;
      }

      operator delete(*v3);
LABEL_8:
      v3 = *(a1 + 1);
      goto LABEL_9;
    case 2:
      v5 = *(a1 + 1);
      sub_10046CE00(&v5);
      goto LABEL_8;
    case 1:
      sub_10046CD44(*(a1 + 1), *(*(a1 + 1) + 8));
      goto LABEL_8;
  }

  return a1;
}

unsigned __int8 *sub_10046CCF0(unsigned __int8 *result)
{
  v1 = *result;
  if (v1 == 3)
  {
    if (!*(result + 1))
    {
      sub_1004D0900();
    }
  }

  else if (v1 == 2)
  {
    if (!*(result + 1))
    {
      sub_1004D092C();
    }
  }

  else if (v1 == 1 && !*(result + 1))
  {
    sub_1004D0958();
  }

  return result;
}

void sub_10046CD44(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_10046CD44(a1, *a2);
    sub_10046CD44(a1, *(a2 + 1));
    sub_10046CC60(a2 + 56);
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

void sub_10046CDB0(uint64_t a1, uint64_t a2)
{
  sub_10046CC60((a2 + 24));
  if (*(a2 + 23) < 0)
  {
    v3 = *a2;

    operator delete(v3);
  }
}

void sub_10046CE00(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = sub_10046CC60(v4 - 16);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_10046CE84(uint64_t a1, uint64_t a2)
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

uint64_t sub_10046CF1C(uint64_t a1, uint64_t a2)
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

uint64_t **sub_10046CFB4(uint64_t **a1, int *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = (a1 + 1);
  if (a3)
  {
    v6 = 32 * a3;
    do
    {
      sub_10046D034(a1, v4, a2, a2);
      a2 += 8;
      v6 -= 32;
    }

    while (v6);
  }

  return a1;
}

void *sub_10046D034(uint64_t **a1, uint64_t *a2, int *a3, uint64_t a4)
{
  result = *sub_10026D040(a1, a2, &v6, &v5, a3);
  if (!result)
  {
    sub_10046D0B8();
  }

  return result;
}

void sub_10046D154(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_10029F6D0(v3, v2);
  _Unwind_Resume(a1);
}

__n128 sub_10046D1EC(uint64_t a1, uint64_t a2)
{
  *a2 = off_1009AC768;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10046D224(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[1];
  v4 = (a1[3] + (v2 >> 1));
  if (v2)
  {
    v3 = *(*v4 + v3);
  }

  return v3(v4, *a2);
}

uint64_t sub_10046D250(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10046D318(uint64_t a1, uint64_t a2)
{
  *a2 = off_1009AC828;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10046D350(void *a1, unsigned int *a2)
{
  v2 = a1[2];
  v3 = a1[1];
  v4 = (a1[3] + (v2 >> 1));
  if (v2)
  {
    v3 = *(*v4 + v3);
  }

  return v3(v4, *a2);
}

uint64_t sub_10046D37C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10046D444(uint64_t a1, uint64_t a2)
{
  *a2 = off_1009AC8E8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10046D47C(void *a1, unsigned int *a2, void *a3, void *a4)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = (a1[3] + (v4 >> 1));
  if (v4)
  {
    v5 = *(*v6 + v5);
  }

  return v5(v6, *a2, *a3, *a4);
}

uint64_t sub_10046D4B0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10046D4FC(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xCCCCCCCCCCCCCCDLL)
  {
    operator new();
  }

  sub_100013B04();
}

void *sub_10046D550@<X0>(unsigned __int8 *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  if (v4 > 8)
  {
    v5 = "number";
  }

  else
  {
    v5 = off_1009ACA30[v4];
  }

  return sub_100004A08(a2, v5);
}

uint64_t sub_10046D580(uint64_t **a1, const void **a2, uint64_t a3, _OWORD **a4)
{
  v4 = *sub_10029FC14(a1, &v6, a2);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

void sub_10046D634(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    sub_10046CDB0(*a1, __p + 32);
  }

  if (__p)
  {

    operator delete(__p);
  }
}

void sub_10046D694(_BYTE *a1, char **a2)
{
  sub_100004A08(__p, *a2);
  *a1 = 3;
  sub_10046D710(__p);
}

void sub_10046D6F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_10046D78C(uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_10046D830(a1, a2);
  }

  return a1;
}

void sub_10046D814(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10046D830(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    sub_10046D880(a1, a2);
  }

  sub_100019B38();
}

void sub_10046D880(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  sub_100013B04();
}

uint64_t *sub_10046D8DC(uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_10046D980(a1, a2);
  }

  return a1;
}

void sub_10046D964(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10046D980(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    sub_10046D9D0(a1, a2);
  }

  sub_100019B38();
}

void sub_10046D9D0(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    operator new();
  }

  sub_100013B04();
}

void sub_10046DA2C(_BYTE *a1, char *a2)
{
  sub_100004A08(__p, a2);
  *a1 = 3;
  sub_10046D710(__p);
}

void sub_10046DA88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10046DB2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *a2;
  v4 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v6 = *(a2 + 32);
  v5 = *(a2 + 40);
  v7 = *a3;
  v8 = *(a3 + 23);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  v10 = *(a3 + 32);
  v9 = *(a3 + 40);
  if (v8 < 0)
  {
    operator delete(v7);
    if ((v4 & 0x80000000) == 0)
    {
      return __PAIR128__(v5, v6) < __PAIR128__(v9, v10);
    }

LABEL_5:
    operator delete(v3);
    return __PAIR128__(v5, v6) < __PAIR128__(v9, v10);
  }

  if (v4 < 0)
  {
    goto LABEL_5;
  }

  return __PAIR128__(v5, v6) < __PAIR128__(v9, v10);
}

uint64_t sub_10046DBA8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10046DBF4(uint64_t a1)
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

uint64_t sub_10046DC74(uint64_t a1, uint64_t a2)
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

void *sub_10046DD0C(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  result = *sub_10046DD8C(a1, &v4, a2);
  if (!result)
  {
    sub_10046E020();
  }

  return result;
}

uint64_t *sub_10046DD8C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    while (1)
    {
      while (1)
      {
        v8 = v4;
        if (*(a3 + 23) < 0)
        {
          sub_1000056BC(__dst, *a3, *(a3 + 8));
        }

        else
        {
          *__dst = *a3;
          v24 = *(a3 + 16);
        }

        v25 = *(a3 + 32);
        if (*(v8 + 55) < 0)
        {
          sub_1000056BC(__p, v8[4], v8[5]);
        }

        else
        {
          *__p = *(v8 + 2);
          v21 = v8[6];
        }

        v22 = *(v8 + 4);
        v9 = *(a1 + 48);
        if (!v9)
        {
          sub_100037B10();
        }

        v10 = (*(*v9 + 48))(v9, __dst, __p);
        if (SHIBYTE(v21) < 0)
        {
          operator delete(__p[0]);
        }

        if ((SHIBYTE(v24) & 0x80000000) == 0)
        {
          break;
        }

        operator delete(__dst[0]);
        if (v10)
        {
          goto LABEL_13;
        }

LABEL_16:
        if (*(v8 + 55) < 0)
        {
          sub_1000056BC(v17, v8[4], v8[5]);
        }

        else
        {
          *v17 = *(v8 + 2);
          v18 = v8[6];
        }

        v19 = *(v8 + 4);
        if (*(a3 + 23) < 0)
        {
          sub_1000056BC(v14, *a3, *(a3 + 8));
        }

        else
        {
          *v14 = *a3;
          v15 = *(a3 + 16);
        }

        v16 = *(a3 + 32);
        v11 = *(a1 + 48);
        if (!v11)
        {
          sub_100037B10();
        }

        v12 = (*(*v11 + 48))(v11, v17, v14);
        if (SHIBYTE(v15) < 0)
        {
          operator delete(v14[0]);
        }

        if (SHIBYTE(v18) < 0)
        {
          operator delete(v17[0]);
        }

        if (v12)
        {
          v5 = v8 + 1;
          v4 = v8[1];
          if (v4)
          {
            continue;
          }
        }

        goto LABEL_31;
      }

      if (!v10)
      {
        goto LABEL_16;
      }

LABEL_13:
      v4 = *v8;
      v5 = v8;
      if (!*v8)
      {
        goto LABEL_31;
      }
    }
  }

  v8 = (a1 + 8);
LABEL_31:
  *a2 = v8;
  return v5;
}

void sub_10046DFB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

void sub_10046E0BC(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_10022FCD8(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t *sub_10046E0D8(uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_100167388(a1, a2);
  }

  return a1;
}

unsigned __int8 *sub_10046E17C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  *a1 = *a2;
  *(a1 + 1) = 0;
  sub_10046CCF0(a2);
  v4 = *a1;
  if (v4 <= 3)
  {
    switch(v4)
    {
      case 1u:
        sub_10046E244(*(a2 + 1));
      case 2u:
        sub_10046E510();
      case 3u:
        sub_10046D710(*(a2 + 1));
    }
  }

  else
  {
    if (*a1 <= 5u)
    {
      if (v4 == 4)
      {
        v5 = a2[8];
        goto LABEL_16;
      }

      if (v4 != 5)
      {
        goto LABEL_17;
      }

LABEL_12:
      v5 = *(a2 + 1);
LABEL_16:
      *(a1 + 1) = v5;
      goto LABEL_17;
    }

    if (v4 == 6 || v4 == 7)
    {
      goto LABEL_12;
    }
  }

LABEL_17:
  sub_10046CCF0(a1);
  return a1;
}

void *sub_10046E2A0(void *a1, const void ***a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_10046E2F8(a1, *a2, a2 + 1);
  return a1;
}

void *sub_10046E2F8(void *result, const void **a2, const void ***a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_10046E380(v5, (v5 + 8), v4 + 4, (v4 + 4));
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

void *sub_10046E380(uint64_t **a1, uint64_t *a2, const void **a3, uint64_t a4)
{
  result = *sub_10029F9AC(a1, a2, &v6, &v5, a3);
  if (!result)
  {
    sub_10046E404();
  }

  return result;
}

void sub_10046E47C(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_10046D634(v3, v2);
  _Unwind_Resume(a1);
}