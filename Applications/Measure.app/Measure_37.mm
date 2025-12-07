atomic_uint **sub_100282298(atomic_uint **a1)
{
  v2 = *a1;
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1 && (byte_1004D54B8 & 1) == 0)
  {
    sub_100282584(v2);
    operator delete();
  }

  return a1;
}

void sub_100282308(uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 2;
  v9 = (v7 >> 2) + 1;
  if (v9 >> 62)
  {
    sub_10000918C();
  }

  v10 = v3 - v6;
  if (v10 >> 1 > v9)
  {
    v9 = v10 >> 1;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
  {
    v11 = 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 62))
    {
      operator new();
    }

    sub_10000927C();
  }

  *(4 * v8) = *a2;
  v5 = 4 * v8 + 4;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

void sub_100282438(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_100282494(exception, a1);
}

std::logic_error *sub_100282494(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

void *sub_1002824C8(_BYTE *a1, const void *a2, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_100241528();
  }

  a1[23] = a3;
  v3 = a3 + 1;

  return memmove(a1, a2, v3);
}

uint64_t sub_100282584(uint64_t result)
{
  if (*(result + 8))
  {
    *(result + 8) = 0;
  }

  v1 = *(result + 24);
  if (v1 && atomic_fetch_add(v1, 0xFFFFFFFF) == 1 && byte_1004D54B8 != 1)
  {
    sub_100282584(v1);
    operator delete();
  }

  return result;
}

uint64_t sub_1002825FC(uint64_t a1)
{
  *(a1 + 160) = 0;
  *a1 = v3;
  *(a1 + *(v3 - 24)) = v2;
  v4 = (a1 + *(*a1 - 24));
  std::ios_base::init(v4, (a1 + 8));
  v4[1].__vftable = 0;
  v4[1].__fmtflags_ = -1;
  std::locale::locale((a1 + 16));
  *(a1 + 72) = 0;
  v5 = a1 + 72;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 104) = 16;
  *(a1 + 96) = a1 + 72;
  std::string::resize((a1 + 72), 0x16uLL, 0);
  v6 = *(a1 + 95);
  if (v6 < 0)
  {
    v6 = *(a1 + 80);
  }

  *(a1 + 48) = v5;
  *(a1 + 56) = v5;
  *(a1 + 64) = v5 + v6;
  return a1;
}

void sub_1002827C8(_Unwind_Exception *a1)
{
  if (*(v1 + 95) < 0)
  {
    operator delete(*v3);
  }

  *(v1 + 8) = v2;
  std::locale::~locale((v1 + 16));
  std::ostream::~ostream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100282818(uint64_t a1)
{
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  std::locale::~locale((a1 + 16));
  std::ostream::~ostream();
  std::ios::~ios();
  return a1;
}

void sub_100282938()
{
  v0[0] = 0;
  v0[1] = 0;
  qmemcpy(sub_1002A80E0(v0, 46), "The library is compiled without OpenGL support", 46);
  sub_1002A8980(-218, v0, "throw_no_ogl", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/opengl.cpp", 60);
}

void sub_1002829C8(int *a1, uint64_t a2, double a3)
{
  sub_1002ACE7C(&v17, &off_1004751E0);
  if (v17)
  {
    sub_1002ADCFC(&off_100475200);
    if (v17)
    {
      sub_1002ADCFC(&off_100475218);
      if (v17)
      {
        sub_1002ADCFC(&off_100475230);
      }
    }
  }

  if (*a1 == a1[1])
  {
LABEL_9:
    if (!v18)
    {
      return;
    }

    goto LABEL_10;
  }

  if (dword_1004BD620 || atomic_fetch_add(&dword_1004BD620, 1u))
  {
    (*(*a2 + 16))(a2, a1);
    goto LABEL_9;
  }

  if (dword_1004B0240 < 2 || a1[1] - *a1 < 2)
  {
    (*(*a2 + 16))(a2, a1);
  }

  else
  {
    v23 = 0;
    v6 = *a1;
    v7 = (HIDWORD(*a1) - *a1);
    v20[0] = a2;
    v20[1] = v6;
    v8 = 1.0;
    if (a3 >= 1.0)
    {
      v8 = a3;
    }

    if (v8 > v7)
    {
      v8 = v7;
    }

    if (a3 > 0.0)
    {
      v7 = v8;
    }

    v9 = rint(v7);
    v21 = v9;
    v22 = *sub_10029D30C();
    v10 = sub_1002ABC0C();
    v11 = sub_1002A9C00((v10 + 16));
    v12 = v11[8];
    if (v12)
    {
      v13 = (*(v11[4] + 8 * ((v12 + v11[7] - 1) / 0xAAuLL)) + 24 * ((v12 + v11[7] - 1) % 0xAAuLL));
    }

    else
    {
      v13 = v11 + 13;
    }

    v24 = *v13;
    v14 = sub_1002ABC0C();
    v25 = sub_1002A9C00((v14 + 16));
    context[0] = off_100475268;
    context[1] = v20;
    if (v9 == 1)
    {
      (*(*a2 + 16))(a2, a1);
    }

    else
    {
      global_queue = dispatch_get_global_queue(0, 0);
      dispatch_apply_f(v9, global_queue, context, sub_100282E84);
    }

    if (v23 == 1)
    {
      *sub_10029D30C() = v22;
      v16 = sub_10029D30C();
      *v16 = HIDWORD(*v16) + 4164903690 * *v16;
    }

    if (v24)
    {
      sub_1002ADA50(v24);
    }
  }

  dword_1004BD620 = 0;
  if (v18)
  {
LABEL_10:
    sub_1002ACC1C(&v17);
  }
}

void sub_100282CA8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_100282ED4(va);
  __cxa_begin_catch(a1);
  *(v11 + 1568) = 0;
  __cxa_rethrow();
}

void sub_100282CD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  __cxa_end_catch();
  sub_1001D8BF4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100282D00()
{
  if (!dword_1004B0240)
  {
    return 1;
  }

  v2 = 0;
  v1 = 4;
  *v3 = 0x1900000006;
  sysctl(v3, 2u, &v2, &v1, 0, 0);
  result = v2;
  if (v2 <= 0)
  {
    v3[1] = 3;
    sysctl(v3, 2u, &v2, &v1, 0, 0);
    if (v2 <= 1)
    {
      return 1;
    }

    else
    {
      return v2;
    }
  }

  return result;
}

uint64_t sub_100282DCC()
{
  v2 = 0;
  v1 = 4;
  *v3 = 0x1900000006;
  sysctl(v3, 2u, &v2, &v1, 0, 0);
  result = v2;
  if (v2 <= 0)
  {
    v3[1] = 3;
    sysctl(v3, 2u, &v2, &v1, 0, 0);
    if (v2 <= 1)
    {
      return 1;
    }

    else
    {
      return v2;
    }
  }

  return result;
}

uint64_t sub_100282E84(uint64_t a1, int a2)
{
  v3[0] = a2;
  v3[1] = a2 + 1;
  return (*(*a1 + 16))(a1, v3);
}

uint64_t sub_100282ED4(uint64_t a1)
{
  if (*(a1 + 32) == 1)
  {
    *sub_10029D30C() = *(a1 + 24);
    v2 = sub_10029D30C();
    *v2 = HIDWORD(*v2) + 4164903690 * *v2;
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    sub_1002ADA50(v3);
  }

  return a1;
}

void sub_100282F54(uint64_t a1, int *a2)
{
  v4 = *(a1 + 8);
  v5 = *(v4 + 40);
  if (v5)
  {
    v6 = *(v4 + 48);
    if (v6)
    {
      sub_1002AD7AC(v5, v6);
    }
  }

  sub_1002ACE7C(&v20, &off_100475298);
  v7 = *(a1 + 8);
  if (*(v7 + 40))
  {
    sub_1002AD9B8();
    v7 = *(a1 + 8);
  }

  *sub_10029D30C() = *(v7 + 24);
  v8 = *(a1 + 8);
  v9 = v8[2];
  v10 = v8[3];
  v11 = v8[4];
  v12 = (v11 + (v11 >> 31)) >> 1;
  v13 = a2[1];
  v14 = v9 + (v12 + *a2 * (v10 - v9)) / v11;
  v15 = v9 + (v12 + v13 * (v10 - v9)) / v11;
  if (v13 < v11)
  {
    v16 = v15;
  }

  else
  {
    v16 = v10;
  }

  v19[0] = v14;
  v19[1] = v16;
  if (v20)
  {
    sub_1002ADCFC(&off_1004752B8);
    if (v20)
    {
      sub_1002ADCFC(&off_1004752D0);
    }
  }

  (*(***(a1 + 8) + 16))(**(a1 + 8), v19);
  if ((*(*(a1 + 8) + 32) & 1) == 0)
  {
    v17 = sub_10029D30C();
    v18 = *(a1 + 8);
    if (*v17 != *(v18 + 24))
    {
      *(v18 + 32) = 1;
    }
  }

  if (v21)
  {
    sub_1002ACC1C(&v20);
  }
}

void sub_1002830B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1001D8BF4(va);
  _Unwind_Resume(a1);
}

void sub_1002830C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1001D8BF4(va);
  _Unwind_Resume(a1);
}

void sub_1002830D8(void **a1)
{
  if (!a1)
  {
    v4[0] = 0;
    v4[1] = 0;
    qmemcpy(sub_1002A80E0(v4, 35), "NULL double pointer to file storage", 35);
    sub_1002A8980(-27, v4, "cvReleaseFileStorage", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 700);
  }

  v1 = *a1;
  if (*a1)
  {
    *a1 = 0;
    sub_100283290(v1, 0);
    sub_100231874((v1 + 32));
    j__free(*(v1 + 128));
    *(v1 + 128) = 0;
    sub_100231874((v1 + 16));
    v2 = *(v1 + 376);
    if (v2)
    {
      sub_10029CDD4(v2);
      operator delete();
    }

    v3 = *(v1 + 384);
    if (v3)
    {
      if (*v3)
      {
        sub_10029C070(*v3);
        operator delete();
      }

      if (*(v3 + 31) < 0)
      {
        operator delete(*(v3 + 8));
      }

      operator delete();
    }

    if (*(v1 + 408))
    {
      operator delete[]();
    }

    if (*(v1 + 424))
    {
      operator delete[]();
    }

    *(v1 + 432) = 0;
    *(v1 + 400) = 0u;
    *(v1 + 416) = 0u;
    *(v1 + 368) = 0u;
    *(v1 + 384) = 0u;
    *(v1 + 336) = 0u;
    *(v1 + 352) = 0u;
    *(v1 + 304) = 0u;
    *(v1 + 320) = 0u;
    *(v1 + 272) = 0u;
    *(v1 + 288) = 0u;
    *(v1 + 240) = 0u;
    *(v1 + 256) = 0u;
    *(v1 + 208) = 0u;
    *(v1 + 224) = 0u;
    *(v1 + 176) = 0u;
    *(v1 + 192) = 0u;
    *(v1 + 144) = 0u;
    *(v1 + 160) = 0u;
    *(v1 + 112) = 0u;
    *(v1 + 128) = 0u;
    *(v1 + 80) = 0u;
    *(v1 + 96) = 0u;
    *(v1 + 48) = 0u;
    *(v1 + 64) = 0u;
    *(v1 + 16) = 0u;
    *(v1 + 32) = 0u;
    *v1 = 0u;
    j__free(v1);
  }
}

void sub_100283290(uint64_t result, uint64_t *a2)
{
  if (a2)
  {
    sub_1002A8124(a2);
  }

  if (!result)
  {
    v29 = 0;
    v30 = 0;
    qmemcpy(sub_1002A80E0(&v29, 35), "NULL double pointer to file storage", 35);
    sub_1002A8980(-27, &v29, "icvClose", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 667);
  }

  if (*(result + 432) == 1)
  {
    if (!*(result + 8) || !*(result + 104) && !*(result + 112) && !*(result + 376))
    {
      goto LABEL_22;
    }

    v4 = *(result + 56);
    if (v4 && *(v4 + 40) >= 1)
    {
      do
      {
        sub_10028984C(result);
      }

      while (*(*(result + 56) + 40) > 0);
    }

    v6 = *(result + 120);
    v5 = *(result + 128);
    v7 = *(result + 88);
    if (v6 > &v5[v7])
    {
      *v6 = 10;
      sub_10028614C(result, *(result + 128));
      v5 = *(result + 128);
      LODWORD(v7) = *(result + 88);
    }

    v8 = *(result + 64);
    if (v7 == v8)
    {
      *(result + 120) = &v5[v7];
      v9 = *(result + 4);
      if (v9 != 8)
      {
LABEL_17:
        if (v9 != 24)
        {
LABEL_22:
          v11 = *(result + 104);
          if (v11)
          {
            fclose(v11);
          }

          else
          {
            v12 = *(result + 112);
            if (v12)
            {
              gzclose(v12);
            }
          }

          *(result + 352) = 0;
          *(result + 368) = 0;
          *(result + 432) = 0;
          *(result + 104) = 0;
          *(result + 112) = 0;
          goto LABEL_27;
        }

        v10 = "}\n";
LABEL_21:
        sub_10028614C(result, v10);
        goto LABEL_22;
      }
    }

    else
    {
      memset(v5, 32, v8);
      *(result + 88) = v8;
      *(result + 120) = *(result + 128) + v8;
      v9 = *(result + 4);
      if (v9 != 8)
      {
        goto LABEL_17;
      }
    }

    v10 = "</opencv_storage>\n";
    goto LABEL_21;
  }

LABEL_27:
  if (a2)
  {
    v13 = *(result + 376);
    if (v13)
    {
      v14 = v13[1];
      if (v13[2] == v14)
      {
        v29 = 0;
        v30 = 0;
      }

      else
      {
        v15 = v13[4];
        v16 = (v15 >> 9) & 0x7FFFFFFFFFFFF8;
        v17 = (v14 + v16);
        v18 = v15 & 0xFFF;
        v19 = v13[5] + v15;
        v20 = (v19 >> 9) & 0x7FFFFFFFFFFFF8;
        v21 = (*(v14 + v16) + v18);
        v22 = (*(v14 + v20) + (v19 & 0xFFF));
        v29 = 0;
        v30 = 0;
        if (v22 != v21)
        {
          v23 = (v19 & 0xFFF) + ((v20 - v16) << 9) - v18;
          if (v23)
          {
            v24 = sub_1002A80E0(&v29, v23);
            do
            {
              v25 = *v21++;
              *v24++ = v25;
              if (&v21[-*v17] == 4096)
              {
                v26 = v17[1];
                ++v17;
                v21 = v26;
              }
            }

            while (v21 != v22);
          }
        }
      }

      if (&v29 != a2)
      {
        sub_1002A8124(a2);
        v27 = v29;
        if (v29)
        {
          atomic_fetch_add((v29 - 4), 1u);
          v27 = v29;
        }

        v28 = v30;
        *a2 = v27;
        a2[1] = v28;
      }

      sub_1002A8124(&v29);
    }
  }
}

uint64_t sub_10028356C(uint64_t a1, char *__s, size_t __n, int a4)
{
  if (!a1)
  {
    return 0;
  }

  LODWORD(v5) = __n;
  v7 = *(a1 + 40);
  if ((__n & 0x80000000) != 0)
  {
    v12 = *__s;
    if (*__s)
    {
      v5 = 0;
      v8 = 0;
      do
      {
        v8 = 33 * v8 + v12;
        v12 = __s[++v5];
      }

      while (v12);
    }

    else
    {
      v8 = 0;
      LODWORD(v5) = 0;
    }
  }

  else
  {
    v8 = 0;
    if (__n)
    {
      v9 = __n;
      v10 = __s;
      do
      {
        v11 = *v10++;
        v8 = 33 * v8 + v11;
        --v9;
      }

      while (v9);
    }
  }

  v13 = v8 & 0x7FFFFFFF;
  v14 = *(v7 + 108);
  if ((v14 & (v14 - 1)) != 0)
  {
    v15 = v13 % v14;
  }

  else
  {
    v15 = (v14 - 1) & v13;
  }

  v16 = *(*(v7 + 112) + 8 * v15);
  if (!v16)
  {
LABEL_22:
    if (a4)
    {
      v16 = *(v7 + 96);
      v20 = v16;
      if (v16)
      {
        *(v7 + 96) = *(v16 + 8);
        *v16 &= 0x3FFFFFFu;
        ++*(v7 + 104);
      }

      else
      {
        sub_100236464(v7, 0, &v20);
        v16 = v20;
      }

      *v16 = v13;
      *(v16 + 8) = sub_100231F7C(*(v7 + 72), __s, v5);
      *(v16 + 16) = v17;
      v18 = *(v7 + 112);
      *(v16 + 24) = *(v18 + 8 * v15);
      *(v18 + 8 * v15) = v16;
      return v16;
    }

    return 0;
  }

  while (*v16 != v13 || *(v16 + 8) != v5 || memcmp(*(v16 + 16), __s, v5))
  {
    v16 = *(v16 + 24);
    if (!v16)
    {
      goto LABEL_22;
    }
  }

  return v16;
}

uint64_t sub_100283704(uint64_t a1, uint64_t a2, _DWORD *a3, int a4)
{
  if (!a1)
  {
    return 0;
  }

  if (*a1 != 1280131417)
  {
    *v23 = 0;
    v24 = 0;
    qmemcpy(sub_1002A80E0(v23, 31), "Invalid pointer to file storage", 31);
    sub_1002A8980(-5, v23, "cvGetFileNode", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 786);
  }

  if (!a3)
  {
    *v23 = 0;
    v24 = 0;
    *sub_1002A80E0(v23, 16) = *"Null key element";
    sub_1002A8980(-27, v23, "cvGetFileNode", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 789);
  }

  if (!a2)
  {
    v7 = 1;
LABEL_11:
    v8 = 0;
    v9 = 0;
    v20 = v7;
    v19 = v7 - 1;
    while (1)
    {
      v11 = a2;
      if (!a2)
      {
        v11 = sub_100232368(*(a1 + 48), v8);
        if (!v11)
        {
          *v23 = 0;
          v24 = 0;
          v12 = sub_1002A80E0(v23, 18);
          *(v12 + 16) = 27756;
          *v12 = *"map_node != __null";
          sub_1002A8980(-215, v23, "cvGetFileNode", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 807);
        }
      }

      v13 = *v11 & 7;
      if (v13 != 6)
      {
        if (!v13)
        {
          return 0;
        }

        if (v13 != 5 || *(*(v11 + 16) + 40))
        {
          *v23 = 0;
          v24 = 0;
          qmemcpy(sub_1002A80E0(v23, 49), "The node is neither a map nor an empty collection", 49);
          sub_1002A8980(-2, v23, "cvGetFileNode", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 812);
        }

        return 0;
      }

      v14 = *(v11 + 16);
      v15 = *(v14 + 108);
      if ((v15 & (v15 - 1)) != 0)
      {
        v16 = *a3 % v15;
        v17 = *(*(v14 + 112) + 8 * v16);
        if (!v17)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v16 = *a3 & (v15 - 1);
        v17 = *(*(v14 + 112) + 8 * v16);
        if (!v17)
        {
          goto LABEL_26;
        }
      }

      if (!a4)
      {
        while (*(v17 + 32) != a3)
        {
          v17 = *(v17 + 40);
          if (!v17)
          {
            goto LABEL_26;
          }
        }

        return v17;
      }

      do
      {
        if (*(v17 + 32) == a3)
        {
          sprintf(v23, "%s(%d): %s", *(a1 + 96), *(a1 + 148), "Duplicated key");
          sub_1002A9248(-212, "cvGetFileNode", v23, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 832);
        }

        v17 = *(v17 + 40);
      }

      while (v17);
LABEL_26:
      if (a4 && v8 == v19)
      {
        v9 = *(v14 + 96);
        *v23 = v9;
        if (v9)
        {
          *(v14 + 96) = *(v9 + 8);
          *v9 &= 0x3FFFFFFu;
          ++*(v14 + 104);
        }

        else
        {
          sub_100236464(v14, 0, v23);
          v9 = *v23;
        }

        *(v9 + 32) = a3;
        v10 = *(v14 + 112);
        *(v9 + 40) = *(v10 + 8 * v16);
        *(v10 + 8 * v16) = v9;
      }

      if (++v8 == v20)
      {
        return v9;
      }
    }
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    v7 = *(v6 + 40);
    if (v7 >= 1)
    {
      goto LABEL_11;
    }
  }

  return 0;
}

void sub_100283AE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a2)
  {
    sub_100008E3C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100283BF4(uint64_t a1, uint64_t a2, _BYTE *__s2)
{
  if (!a1)
  {
    return 0;
  }

  v4 = a2;
  if (*a1 != 1280131417)
  {
    v30 = 0;
    v31 = 0;
    qmemcpy(sub_1002A80E0(&v30, 31), "Invalid pointer to file storage", 31);
    sub_1002A8980(-5, &v30, "cvGetFileNodeByName", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 861);
  }

  if (!__s2)
  {
    v30 = 0;
    v31 = 0;
    v6 = sub_1002A80E0(&v30, 17);
    *(v6 + 16) = 101;
    *v6 = *"Null element name";
    sub_1002A8980(-27, &v30, "cvGetFileNodeByName", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 864);
  }

  v7 = *__s2;
  if (*__s2)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v9 = 33 * v9 + v7;
      v7 = __s2[++v8];
    }

    while (v7);
    v10 = v9 & 0x7FFFFFFF;
    v11 = v8;
    if (a2)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v11 = 0;
    v10 = 0;
    v8 = 0;
    if (a2)
    {
LABEL_10:
      v12 = *a2 & 7;
      if (!v12)
      {
        return 0;
      }

      if (v12 != 5)
      {
        if (v12 == 6)
        {
          v13 = *(a2 + 16);
          v14 = *(v13 + 108);
          v15 = *(v13 + 112);
          if ((v14 & (v14 - 1)) != 0)
          {
            v16 = *(v15 + 8 * (v10 % v14));
            if (!v16)
            {
              return 0;
            }

            while (1)
            {
              v28 = *(v16 + 32);
              if (*v28 == v10 && *(v28 + 8) == v11 && !memcmp(*(v28 + 16), __s2, v8))
              {
                break;
              }

              v17 = 0;
              v16 = *(v16 + 40);
              if (!v16)
              {
                return v17;
              }
            }
          }

          else
          {
            v16 = *(v15 + 8 * ((v14 - 1) & v10));
            if (!v16)
            {
              return 0;
            }

            while (1)
            {
              v18 = *(v16 + 32);
              if (*v18 == v10 && *(v18 + 8) == v11 && !memcmp(*(v18 + 16), __s2, v8))
              {
                break;
              }

              v17 = 0;
              v16 = *(v16 + 40);
              if (!v16)
              {
                return v17;
              }
            }
          }

          return v16;
        }

LABEL_47:
        v30 = 0;
        v31 = 0;
        qmemcpy(sub_1002A80E0(&v30, 49), "The node is neither a map nor an empty collection", 49);
        sub_1002A8980(-2, &v30, "cvGetFileNodeByName", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 891);
      }

LABEL_46:
      if (*(*(v4 + 16) + 40))
      {
        goto LABEL_47;
      }

      return 0;
    }
  }

  v19 = *(a1 + 48);
  if (!v19)
  {
    return 0;
  }

  v20 = *(v19 + 40);
  if (v20 < 1)
  {
    return 0;
  }

  v21 = 0;
  while (1)
  {
    v22 = sub_100232368(*(a1 + 48), v21);
    v4 = v22;
    v23 = *v22 & 7;
    if (v23 != 6)
    {
      if (!v23)
      {
        return 0;
      }

      if (v23 != 5)
      {
        goto LABEL_47;
      }

      goto LABEL_46;
    }

    v24 = *(v22 + 16);
    v25 = *(v24 + 108);
    v26 = (v25 & (v25 - 1)) != 0 ? v10 % v25 : (v25 - 1) & v10;
    v17 = *(*(v24 + 112) + 8 * v26);
    if (v17)
    {
      break;
    }

LABEL_25:
    v17 = 0;
    if (++v21 == v20)
    {
      return v17;
    }
  }

  while (1)
  {
    v27 = *(v17 + 32);
    if (*v27 == v10 && *(v27 + 8) == v11 && !memcmp(*(v27 + 16), __s2, v8))
    {
      return v17;
    }

    v17 = *(v17 + 40);
    if (!v17)
    {
      goto LABEL_25;
    }
  }
}

uint64_t sub_100283F94(char *__s, uint64_t a2, unsigned int a3, const char *a4)
{
  v5 = a3;
  v7 = __s;
  v207 = 0;
  *v208 = 0;
  v8 = a3 & 3;
  if ((a3 & 3) != 0)
  {
    v9 = (a3 >> 6) & 1;
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  __p = 0;
  v206 = 0;
  if ((a3 & 4) == 0)
  {
    v10 = strlen(__s);
    if (v10 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_100241528();
    }

    v11 = v10;
    v203 = a4;
    v201 = v9;
    v202 = v8;
    v200 = v5;
    v199 = a2;
    if (v10 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v10;
    if (v10)
    {
      memcpy(&__dst, v7, v10);
    }

    __dst.__r_.__value_.__s.__data_[v11] = 0;
    *v214 = 0;
    v215 = 0;
    v216 = 0;
    v12 = 0;
    v13 = 0;
    if (std::string::find(&__dst, 10, 0) != -1)
    {
LABEL_12:
      v14 = __p;
      v5 = v200;
      if (__p)
      {
        v15 = v206;
        while (v15 != v14)
        {
          v16 = *(v15 - 1);
          v15 -= 3;
          if (v16 < 0)
          {
            operator delete(*v15);
          }
        }

        v206 = v14;
        operator delete(v14);
      }

      v17 = *v214;
      __p = *v214;
      v206 = v13;
      v207 = v12;
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
        a2 = v199;
        if (v17 == v13)
        {
          goto LABEL_32;
        }
      }

      else
      {
        a2 = v199;
        if (*v214 == v13)
        {
          goto LABEL_32;
        }
      }

      v7 = v17;
      if (v17[23] < 0)
      {
        v7 = *v17;
        if (v201)
        {
          goto LABEL_33;
        }

        goto LABEL_35;
      }

LABEL_32:
      if (v201)
      {
LABEL_33:
        LOBYTE(v9) = 1;
LABEL_41:
        a4 = v203;
        v8 = v202;
        goto LABEL_42;
      }

LABEL_35:
      HIBYTE(v213) = 6;
      qmemcpy(__sa, "base64", 6);
      if (0xAAAAAAAAAAAAAAABLL * ((v13 - v17) >> 3) >= 2 && v17 != v13)
      {
        while (1)
        {
          v27 = v17[23];
          v28 = v27;
          if ((v27 & 0x80u) != 0)
          {
            v27 = *(v17 + 1);
          }

          if (v27 == 6)
          {
            v29 = v28 >= 0 ? v17 : *v17;
            v30 = *v29;
            v31 = *(v29 + 2);
            if (v30 == *__sa && v31 == *&__sa[4])
            {
              break;
            }
          }

          v17 += 24;
          if (v17 == v13)
          {
            goto LABEL_40;
          }
        }

        v8 = v202;
        LOBYTE(v9) = v17 != v13 && v202 != 0;
        a4 = v203;
        if (!v7)
        {
          goto LABEL_65;
        }

        goto LABEL_43;
      }

LABEL_40:
      LOBYTE(v9) = 0;
      goto LABEL_41;
    }

    v18 = std::string::rfind(&__dst, 63, 0xFFFFFFFFFFFFFFFFLL);
    v19 = v18;
    size = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      size = __dst.__r_.__value_.__l.__size_;
      v21 = __dst.__r_.__value_.__r.__words[0];
      if (__dst.__r_.__value_.__l.__size_ >= v18)
      {
        v22 = v18;
      }

      else
      {
        v22 = __dst.__r_.__value_.__l.__size_;
      }

      if (v22 <= 0x7FFFFFFFFFFFFFF7)
      {
LABEL_26:
        if (v22 >= 0x17)
        {
          operator new();
        }

        HIBYTE(v213) = v22;
        if (v22)
        {
          memmove(__sa, v21, v22);
          __sa[v22] = 0;
          v23 = v215;
          v12 = v216;
          if (v215 < v216)
          {
            goto LABEL_29;
          }
        }

        else
        {
          __sa[0] = 0;
          v23 = v215;
          v12 = v216;
          if (v215 < v216)
          {
LABEL_29:
            *v23 = *__sa;
            *(v23 + 16) = v213;
            v13 = v23 + 24;
            goto LABEL_229;
          }
        }

        v72 = *v214;
        v73 = v23 - *v214;
        v74 = 0xAAAAAAAAAAAAAAABLL * ((v23 - *v214) >> 3);
        v75 = v74 + 1;
        if (v74 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_10000918C();
        }

        if (0x5555555555555556 * ((v12 - *v214) >> 3) > v75)
        {
          v75 = 0x5555555555555556 * ((v12 - *v214) >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v12 - *v214) >> 3) >= 0x555555555555555)
        {
          v76 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v76 = v75;
        }

        if (v76)
        {
          if (v76 <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          sub_10000927C();
        }

        v116 = 24 * v74;
        v12 = 0;
        *v116 = *__sa;
        *(v116 + 16) = v213;
        v13 = 24 * v74 + 24;
        memcpy((24 * v74 - v73), v72, v73);
        *v214 = 24 * v74 - v73;
        v216 = 0;
        if (v72)
        {
          operator delete(v72);
        }

LABEL_229:
        v215 = v13;
        if (v19 == -1)
        {
          goto LABEL_12;
        }

        v117 = v19 + 1;
        if (v19 + 1 >= size)
        {
          goto LABEL_12;
        }

        while (1)
        {
          v118 = std::string::find(&__dst, 38, v117);
          v119 = v118;
          v121 = v118 == -1 || v118 != v117;
          if (v117 + 1 >= size || !v121)
          {
            goto LABEL_234;
          }

          v122 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
          if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
          {
            v122 = __dst.__r_.__value_.__l.__size_;
            if (__dst.__r_.__value_.__l.__size_ < v117)
            {
LABEL_419:
              sub_100282420();
            }

            p_dst = __dst.__r_.__value_.__r.__words[0];
          }

          else
          {
            if (v117 > SHIBYTE(__dst.__r_.__value_.__r.__words[2]))
            {
              goto LABEL_419;
            }

            p_dst = &__dst;
          }

          v124 = v122 - v117;
          if (v124 >= v118 - v117)
          {
            v125 = v118 - v117;
          }

          else
          {
            v125 = v124;
          }

          if (v125 > 0x7FFFFFFFFFFFFFF7)
          {
            sub_100241528();
          }

          if (v125 >= 0x17)
          {
            operator new();
          }

          HIBYTE(v213) = v125;
          if (v125)
          {
            memmove(__sa, p_dst + v117, v125);
            __sa[v125] = 0;
            v126 = v215;
            v12 = v216;
            if (v215 >= v216)
            {
LABEL_258:
              v127 = *v214;
              v128 = v126 - *v214;
              v129 = 0xAAAAAAAAAAAAAAABLL * ((v126 - *v214) >> 3);
              v130 = v129 + 1;
              if (v129 + 1 > 0xAAAAAAAAAAAAAAALL)
              {
                sub_10000918C();
              }

              if (0x5555555555555556 * ((v12 - *v214) >> 3) > v130)
              {
                v130 = 0x5555555555555556 * ((v12 - *v214) >> 3);
              }

              if (0xAAAAAAAAAAAAAAABLL * ((v12 - *v214) >> 3) >= 0x555555555555555)
              {
                v131 = 0xAAAAAAAAAAAAAAALL;
              }

              else
              {
                v131 = v130;
              }

              if (v131)
              {
                if (v131 <= 0xAAAAAAAAAAAAAAALL)
                {
                  operator new();
                }

                sub_10000927C();
              }

              v132 = 24 * v129;
              v12 = 0;
              *v132 = *__sa;
              *(v132 + 16) = v213;
              v13 = 24 * v129 + 24;
              memcpy((24 * v129 - v128), v127, v128);
              *v214 = 24 * v129 - v128;
              v216 = 0;
              if (v127)
              {
                operator delete(v127);
              }

              goto LABEL_233;
            }
          }

          else
          {
            __sa[0] = 0;
            v126 = v215;
            v12 = v216;
            if (v215 >= v216)
            {
              goto LABEL_258;
            }
          }

          *v126 = *__sa;
          *(v126 + 16) = v213;
          v13 = v126 + 24;
LABEL_233:
          v215 = v13;
LABEL_234:
          v117 = v119 + 1;
          if (v119 >= size)
          {
            goto LABEL_12;
          }
        }
      }
    }

    else
    {
      v21 = &__dst;
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) >= v18)
      {
        v22 = v18;
      }

      else
      {
        v22 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
      }

      if (v22 <= 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_26;
      }
    }

    sub_100241528();
  }

LABEL_42:
  if (!v7)
  {
    goto LABEL_65;
  }

LABEL_43:
  if (*v7)
  {
    v25 = strlen(v7);
    v26 = (v5 >> 2) & 1;
    if (v8 != 2)
    {
      goto LABEL_76;
    }

    goto LABEL_67;
  }

LABEL_65:
  if (!v8)
  {
    memset(__sa, 0, sizeof(__sa));
    if ((v5 & 4) != 0)
    {
      v34 = 22;
    }

    else
    {
      v34 = 20;
    }

    v35 = sub_1002A80E0(__sa, v34);
    if ((v5 & 4) != 0)
    {
      v36 = "NULL or empty filename";
    }

    else
    {
      v36 = "NULL or empty buffer";
    }

    memcpy(v35, v36, v34);
    sub_1002A8980(-27, __sa, "cvOpenFileStorage", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 4198);
  }

  v25 = 0;
  v26 = 1;
  if (v8 == 2)
  {
LABEL_67:
    if (v26)
    {
      memset(__sa, 0, sizeof(__sa));
      qmemcpy(sub_1002A80E0(__sa, 68), "CV_STORAGE_APPEND and CV_STORAGE_MEMORY are not currently compatible", 68);
      sub_1002A8980(-206, __sa, "cvOpenFileStorage", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 4205);
    }
  }

LABEL_76:
  v37 = sub_1001D90AC(0x1B8uLL);
  *v208 = v37;
  if (!v37)
  {
    memset(__sa, 0, sizeof(__sa));
    *sub_1002A80E0(__sa, 2) = 29542;
    sub_1002A8980(-215, __sa, "cvOpenFileStorage", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 4208);
  }

  v37[54] = 0;
  *(v37 + 25) = 0u;
  *(v37 + 26) = 0u;
  *(v37 + 23) = 0u;
  *(v37 + 24) = 0u;
  *(v37 + 21) = 0u;
  *(v37 + 22) = 0u;
  *(v37 + 19) = 0u;
  *(v37 + 20) = 0u;
  *(v37 + 17) = 0u;
  *(v37 + 18) = 0u;
  *(v37 + 15) = 0u;
  *(v37 + 16) = 0u;
  *(v37 + 13) = 0u;
  *(v37 + 14) = 0u;
  *(v37 + 11) = 0u;
  *(v37 + 12) = 0u;
  *(v37 + 9) = 0u;
  *(v37 + 10) = 0u;
  *(v37 + 7) = 0u;
  *(v37 + 8) = 0u;
  *(v37 + 5) = 0u;
  *(v37 + 6) = 0u;
  *(v37 + 3) = 0u;
  *(v37 + 4) = 0u;
  *(v37 + 1) = 0u;
  *(v37 + 2) = 0u;
  *v37 = 0u;
  sub_100231744(0x40000);
  v39 = v38;
  v40 = *v208;
  if (a2)
  {
    v41 = a2;
  }

  else
  {
    v41 = v39;
  }

  *(*v208 + 16) = v39;
  *(v40 + 24) = v41;
  *v40 = 1280131417;
  *(v40 + 8) = v8 != 0;
  if (v26)
  {
    *(v40 + 48) = 0;
    *(v40 + 64) = 0;
    *(v40 + 144) = 71;
    if (*(v40 + 8))
    {
LABEL_98:
      operator new();
    }

    v50 = 0;
LABEL_287:
    *(v40 + 352) = v7;
    *(v40 + 360) = v25;
LABEL_288:
    sub_1002862DC(v40, v214, 0xE);
    if (v214[2] == 191 && v214[1] == 187 && v214[0] == 239)
    {
      v142 = 3;
    }

    else
    {
      v142 = 0;
    }

    if (!strncmp(&v214[v142], "%YAML", 5uLL))
    {
      v143 = *v208;
      v144 = 16;
    }

    else if (v214[v142] == 123)
    {
      v143 = *v208;
      v144 = 24;
    }

    else
    {
      v145 = strncmp(&v214[v142], "<?xml", 5uLL);
      v143 = *v208;
      if (v145)
      {
        if (*(*v208 + 360) == v142)
        {
          memset(__sa, 0, sizeof(__sa));
          v146 = sub_1002A80E0(__sa, 19);
          *(v146 + 15) = 2037674093;
          *v146 = *"Input file is empty";
          sub_1002A8980(-49, __sa, "cvOpenFileStorage", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 4484);
        }

        memset(__sa, 0, sizeof(__sa));
        qmemcpy(sub_1002A80E0(__sa, 31), "Unsupported file storage format", 31);
        sub_1002A8980(-49, __sa, "cvOpenFileStorage", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 4486);
      }

      v144 = 8;
    }

    *(v143 + 4) = v144;
    if (v50)
    {
      v147 = 0x100000;
      v148 = *v208;
      v149 = *(*v208 + 104);
      if (v149)
      {
LABEL_307:
        rewind(v149);
LABEL_319:
        *(v148 + 368) = 0;
        v153 = *v208;
        *(*v208 + 368) = v142;
        v154 = *(v153 + 16);
        v155 = sub_100236364(0, 120, 32, v154);
        v155[27] = 256;
        v156 = sub_100231C8C(v154, 0x800uLL);
        *(v155 + 14) = v156;
        bzero(v156, 0x800uLL);
        v157 = *v208;
        *(*v208 + 40) = v155;
        v158 = sub_100231FEC(0, 0x60uLL, 0x20uLL, *(v157 + 16));
        *(*v208 + 48) = v158;
        v159 = sub_1001D90AC(v147 + 256);
        v160 = *v208;
        *(*v208 + 120) = v159;
        *(v160 + 128) = v159;
        *(v160 + 136) = &v159[v147];
        *v159 = 10;
        *(*(*v208 + 120) + 1) = 0;
        v161 = *v208;
        v162 = *(*v208 + 4);
        if (v162 == 24)
        {
          v183 = sub_100298CEC(*v208, *(*v208 + 128));
          if (v183 && !*(v161 + 152))
          {
            v184 = *v183;
            if (v184 == 91)
            {
              v189 = v183;
              v190 = sub_100233314(*(v161 + 48), 0);
              sub_100299338(v161, v189, v190);
            }

            else
            {
              if (v184 != 123)
              {
                sprintf(__sa, "%s(%d): %s", *(v161 + 96), *(v161 + 148), "left-brace of top level is missing");
                sub_1002A9248(-212, "icvJSONParse", __sa, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 3831);
              }

              v185 = v183;
              v186 = sub_100233314(*(v161 + 48), 0);
              sub_100298F80(v161, v185, v186);
            }

            if (*(v161 + 152))
            {
              sprintf(__sa, "%s(%d): %s", *(v161 + 96), *(v161 + 148), "Unexpected End-Of-File");
              sub_1002A9248(-212, "icvJSONParse", __sa, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 3835);
            }
          }

          goto LABEL_398;
        }

        if (v162 != 16)
        {
          if (v162 == 8)
          {
            v163 = *(*v208 + 128);
            __dst.__r_.__value_.__r.__words[0] = 0;
            v211 = 0;
            v209 = 0;
            v164 = sub_100294910(*v208, v163, 2);
            if (*v164 != 1836597052 || v164[4] != 108)
            {
              sprintf(__sa, "%s(%d): %s", *(v161 + 96), *(v161 + 148), "Valid XML should start with '<?xml ...?>'");
              sub_1002A9248(-212, "icvXMLParse", __sa, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 2825);
            }

            for (i = sub_100294C4C(v161, v164, &__dst, &v210, &v209); *i; i = sub_100294910(v161, v171, 0))
            {
              v167 = sub_100294910(v161, i, 0);
              if (!*v167)
              {
                break;
              }

              sub_100294C4C(v161, v167, &__dst, &v210, &v209);
              v168 = __dst.__r_.__value_.__r.__words[0];
              v169 = v209 != 1 || __dst.__r_.__value_.__r.__words[0] == 0;
              if (v169 || strcmp(*(__dst.__r_.__value_.__r.__words[0] + 16), "opencv_storage"))
              {
                sprintf(__sa, "%s(%d): %s", *(v161 + 96), *(v161 + 148), "<opencv_storage> tag is missing");
                sub_1002A9248(-212, "icvXMLParse", __sa, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 2855);
              }

              sub_100233314(*(v161 + 48), 0);
              v170 = sub_100295364(v161);
              v171 = sub_100294C4C(v161, v170, &v211, &v210, &v209);
              if (v209 != 2 || v168 != v211)
              {
                sprintf(__sa, "%s(%d): %s", *(v161 + 96), *(v161 + 148), "</opencv_storage> tag is missing");
                sub_1002A9248(-212, "icvXMLParse", __sa, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 2861);
              }
            }
          }

          goto LABEL_398;
        }

        v172 = sub_100296FFC(*v208, *(*v208 + 128), 0);
        if (!v172)
        {
LABEL_398:
          j__free(*(*v208 + 128));
          v70 = *v208;
          *(*v208 + 128) = 0;
          *(v70 + 136) = 0;
          *(v70 + 120) = 0;
          goto LABEL_399;
        }

        v173 = 0;
        while (1)
        {
          while (1)
          {
            v174 = *v172;
            if (v174 == 45)
            {
              break;
            }

            if (v174 == 37)
            {
              v175 = *v172 == 1296128293 && v172[4] == 76;
              if (v175 && *v172 != 0x2E313A4C4D415925 && *v172 != 0x2E31204C4D415925)
              {
                sprintf(__sa, "%s(%d): %s", *(v161 + 96), *(v161 + 148), "Unsupported YAML version (it must be 1.x)");
                sub_1002A9248(-212, "icvYMLParse", __sa, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 1836);
              }

              *v172 = 0;
              goto LABEL_365;
            }

            if (v174 != 95 && (v174 - 48) >= 0xA && (v174 & 0xFFFFFFDF) - 65 > 0x19)
            {
              if (!*(v161 + 152))
              {
                sprintf(__sa, "%s(%d): %s", *(v161 + 96), *(v161 + 148), "Invalid or unsupported syntax");
                sub_1002A9248(-212, "icvYMLParse", __sa, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 1858);
              }
            }

            else if (v173)
            {
              sprintf(__sa, "%s(%d): %s", *(v161 + 96), *(v161 + 148), "The YAML streams must start with '---', except the first one");
              sub_1002A9248(-212, "icvYMLParse", __sa, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 1852);
            }

LABEL_373:
            v179 = sub_100296FFC(v161, v172, 0);
            if (*v179 == 11822 && v179[2] == 46)
            {
              goto LABEL_428;
            }

            v181 = sub_100233314(*(v161 + 48), 0);
            v182 = sub_100297288(v161);
            if ((*v181 & 7u) <= 4)
            {
              sprintf(__sa, "%s(%d): %s", *(v161 + 96), *(v161 + 148), "Only collections as YAML streams are supported by this parser");
              sub_1002A9248(-212, "icvYMLParse", __sa, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 1869);
            }

            v179 = sub_100296FFC(v161, v182, 0);
            if (v179)
            {
LABEL_428:
              if (!*(v161 + 152))
              {
                v172 = sub_100296FFC(v161, v179 + 3, 0);
                v173 = 1;
                if (v172)
                {
                  continue;
                }
              }
            }

            goto LABEL_398;
          }

          if (*v172 == 11565 && v172[2] == 45)
          {
            v172 += 3;
            goto LABEL_373;
          }

          if ((v173 & 1) == 0)
          {
            goto LABEL_373;
          }

LABEL_365:
          v172 = sub_100296FFC(v161, v172, 0);
          if (!v172)
          {
            goto LABEL_398;
          }
        }
      }
    }

    else
    {
      if (v26)
      {
        v150 = *(*v208 + 360);
      }

      else
      {
        fseek(*(*v208 + 104), 0, 2);
        v150 = ftell(*(*v208 + 104));
      }

      v151 = 0x100000;
      if (v150 < 0x100000)
      {
        v151 = v150;
      }

      if (v151 <= 0x2400)
      {
        v147 = 9216;
      }

      else
      {
        v147 = v151;
      }

      v148 = *v208;
      v149 = *(*v208 + 104);
      if (v149)
      {
        goto LABEL_307;
      }
    }

    v152 = *(v148 + 112);
    if (v152)
    {
      gzrewind(v152);
    }

    goto LABEL_319;
  }

  v42 = sub_100231C8C(v39, v25 + 1);
  *(*v208 + 96) = v42;
  strcpy(v42, v7);
  v43 = *v208;
  v44 = *(*v208 + 96);
  v45 = strrchr(v44, 46);
  if (v45)
  {
    if (v45[1] == 103 && v45[2] == 122)
    {
      v46 = v45[3];
      if (!v45[3] || (v46 - 48) <= 9 && !v45[4])
      {
        if (v8 == 2)
        {
          sub_1002830D8(v208);
          sub_1001FA81C(__sa, "Appending data to compressed file is not implemented");
          sub_1002A8980(-213, __sa, "cvOpenFileStorage", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 4231);
        }

        if (v45[3])
        {
          v45[3] = 0;
          --v25;
        }

        else
        {
          LOBYTE(v46) = 51;
        }

        if (*(*v208 + 8))
        {
          v138 = 119;
        }

        else
        {
          v138 = 114;
        }

        __sa[0] = v138;
        __sa[1] = 98;
        __sa[2] = v46;
        __sa[3] = 0;
        v139 = gzopen(*(*v208 + 96), __sa);
        v40 = *v208;
        *(*v208 + 112) = v139;
        if (!v139)
        {
          goto LABEL_400;
        }

        v50 = 1;
        *(v40 + 48) = 0;
        *(v40 + 64) = 0;
        *(v40 + 144) = 71;
        if (*(v40 + 8))
        {
          goto LABEL_97;
        }

LABEL_286:
        if (!v26)
        {
          goto LABEL_288;
        }

        goto LABEL_287;
      }
    }
  }

  v47 = "a+t";
  if (v8 != 2)
  {
    v47 = "wt";
  }

  if (*(v43 + 8))
  {
    v48 = v47;
  }

  else
  {
    v48 = "rt";
  }

  v49 = fopen(v44, v48);
  v40 = *v208;
  *(*v208 + 104) = v49;
  if (!v49)
  {
    goto LABEL_400;
  }

  v50 = 0;
  *(v40 + 48) = 0;
  *(v40 + 64) = 0;
  *(v40 + 144) = 71;
  if (!*(v40 + 8))
  {
    goto LABEL_286;
  }

LABEL_97:
  v51 = v5 & 0x38;
  if (v26)
  {
    goto LABEL_98;
  }

  if ((v5 & 0x38) != 0 || !v7)
  {
    if ((v5 & 0x38) == 0)
    {
      *(v40 + 4) = 8;
      v61 = 25600;
      v51 = 8;
      if (v8 != 2)
      {
        goto LABEL_119;
      }

LABEL_118:
      fseek(*(v40 + 104), 0, 2);
      v40 = *v208;
      v51 = *(*v208 + 4);
      goto LABEL_119;
    }

    *(v40 + 4) = v51;
    if (v51 != 8)
    {
      goto LABEL_193;
    }

LABEL_117:
    v61 = 25600;
    v51 = 8;
    if (v8 != 2)
    {
      goto LABEL_119;
    }

    goto LABEL_118;
  }

  v52 = 0;
  v53 = 0;
  while (1)
  {
    if (*v7 == 46)
    {
      v53 = v52;
      v52 = v7;
      goto LABEL_103;
    }

    if (!*v7)
    {
      break;
    }

LABEL_103:
    ++v7;
  }

  if (!v52)
  {
    v56 = 0;
LABEL_136:
    if (v56 && v53 != 0)
    {
      v60 = v53;
    }

    else
    {
      v60 = v52;
    }

    if (v60)
    {
      goto LABEL_159;
    }

LABEL_191:
    v51 = 16;
    goto LABEL_192;
  }

  if (strlen(v52) != 3)
  {
    v60 = v52;
    goto LABEL_159;
  }

  v54 = __tolower(*v52);
  v55 = __tolower(46);
  v56 = v54 == v55;
  if (v54 != v55)
  {
    goto LABEL_136;
  }

  v57 = __tolower(v52[1]);
  v58 = __tolower(103);
  v56 = v57 == v58;
  if (v57 != v58)
  {
    goto LABEL_136;
  }

  v59 = __tolower(v52[2]);
  if (v59 == __tolower(122) && v53 != 0)
  {
    v60 = v53;
  }

  else
  {
    v60 = v52;
  }

  if (!v60)
  {
    goto LABEL_191;
  }

LABEL_159:
  if (strlen(v60) == 4 && (v78 = __tolower(*v60), v78 == __tolower(46)) && (v79 = __tolower(v60[1]), v79 == __tolower(120)) && (v80 = __tolower(v60[2]), v80 == __tolower(109)) && (v81 = __tolower(v60[3]), v81 == __tolower(108)) || strlen(v60) == 7 && (v82 = __tolower(*v60), v82 == __tolower(46)) && (v83 = __tolower(v60[1]), v83 == __tolower(120)) && (v84 = __tolower(v60[2]), v84 == __tolower(109)) && (v85 = __tolower(v60[3]), v85 == __tolower(108)) && (v86 = __tolower(v60[4]), v86 == __tolower(46)) && (v87 = __tolower(v60[5]), v87 == __tolower(103)) && (v88 = __tolower(v60[6]), v88 == __tolower(122)))
  {
    v51 = 8;
  }

  else if (strlen(v60) == 5 && (v89 = __tolower(*v60), v89 == __tolower(46)) && (v90 = __tolower(v60[1]), v90 == __tolower(106)) && (v91 = __tolower(v60[2]), v91 == __tolower(115)) && (v92 = __tolower(v60[3]), v92 == __tolower(111)) && (v93 = __tolower(v60[4]), v93 == __tolower(110)))
  {
    v51 = 24;
  }

  else
  {
    if (strlen(v60) != 8)
    {
      goto LABEL_191;
    }

    v94 = __tolower(*v60);
    if (v94 != __tolower(46))
    {
      goto LABEL_191;
    }

    v95 = __tolower(v60[1]);
    if (v95 != __tolower(106))
    {
      goto LABEL_191;
    }

    v96 = __tolower(v60[2]);
    if (v96 != __tolower(115))
    {
      goto LABEL_191;
    }

    v97 = __tolower(v60[3]);
    if (v97 != __tolower(111))
    {
      goto LABEL_191;
    }

    v98 = __tolower(v60[4]);
    if (v98 != __tolower(110))
    {
      goto LABEL_191;
    }

    v99 = __tolower(v60[5]);
    if (v99 != __tolower(46))
    {
      goto LABEL_191;
    }

    v100 = __tolower(v60[6]);
    if (v100 != __tolower(103))
    {
      goto LABEL_191;
    }

    v101 = __tolower(v60[7]);
    if (v101 == __tolower(122))
    {
      v51 = 24;
    }

    else
    {
      v51 = 16;
    }
  }

LABEL_192:
  v40 = *v208;
  *(*v208 + 4) = v51;
  if (v51 == 8)
  {
    goto LABEL_117;
  }

LABEL_193:
  v61 = 17408;
  if (v8 == 2)
  {
    goto LABEL_118;
  }

LABEL_119:
  if (v51 == 8)
  {
    v62 = 40;
  }

  else
  {
    v62 = 4;
  }

  v63 = sub_100231FEC(0, 0x60uLL, v62, *(v40 + 16));
  v64 = *v208;
  *(*v208 + 56) = v63;
  *(v64 + 12) = 1;
  *(v64 + 64) = 0x2000000000;
  v65 = sub_1001D90AC(v61 + 1024);
  v66 = *v208;
  *(*v208 + 120) = v65;
  *(v66 + 128) = v65;
  *(v66 + 136) = &v65[v61];
  *(v66 + 384) = 0;
  *(v66 + 392) = v9;
  *(v66 + 396) = 0;
  *(v66 + 400) = 0;
  *(v66 + 408) = 0;
  *(v66 + 416) = 0;
  *(v66 + 424) = 0;
  v67 = *(v66 + 4);
  if (v67 == 16)
  {
    if (v8 == 2)
    {
      v69 = "...\n---\n";
    }

    else
    {
      v69 = "%YAML:1.0\n---\n";
    }

    sub_10028614C(v66, v69);
    v70 = *v208;
    *(*v208 + 296) = sub_100287444;
    *(v70 + 304) = sub_1002876AC;
    *(v70 + 312) = sub_100287880;
    *(v70 + 320) = sub_100287924;
    *(v70 + 328) = sub_100287A94;
    *(v70 + 336) = sub_100287E18;
    v71 = sub_1002881B0;
  }

  else if (v67 == 8)
  {
    if (*(v66 + 104))
    {
      v68 = ftell(*(v66 + 104));
      v66 = *v208;
    }

    else
    {
      v68 = 0;
    }

    sub_1002317F4(*(v66 + 16));
    v103 = v102;
    v104 = *v208;
    *(*v208 + 32) = v103;
    if (v8 == 2 && v68)
    {
      if (v68 >= 1024)
      {
        v105 = 1024;
      }

      else
      {
        v105 = v68;
      }

      fseek(*(v104 + 104), -v105, 2);
      v106 = sub_1001D90AC(v105 + 2);
      v107 = -1;
      while (1)
      {
        v108 = ftell(*(*v208 + 104));
        v109 = sub_1002862DC(*v208, v106, v105);
        v110 = v109;
        if (!v109)
        {
          break;
        }

        v111 = strstr(v109, "</opencv_storage>");
        if (v111)
        {
          do
          {
            v112 = v111;
            v111 = strstr(v111 + 17, "</opencv_storage>");
          }

          while (v111);
          v107 = v112 - v110 + v108;
        }
      }

      j__free(v106);
      if (v107 < 0)
      {
        sub_1002830D8(v208);
        memset(__sa, 0, sizeof(__sa));
        qmemcpy(sub_1002A80E0(__sa, 53), "Could not find </opencv_storage> in the end of file.\n", 53);
        sub_1002A8980(-2, __sa, "cvOpenFileStorage", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 4383);
      }

      v113 = *v208;
      v115 = (*v208 + 104);
      v114 = *(*v208 + 104);
      if (v114)
      {
        fclose(v114);
      }

      else
      {
        v133 = *(*v208 + 112);
        if (v133)
        {
          gzclose(v133);
        }
      }

      *(v113 + 352) = 0;
      *(v113 + 368) = 0;
      *(v113 + 432) = 0;
      *v115 = 0;
      v115[1] = 0;
      v134 = fopen(*(*v208 + 96), "r+t");
      *(*v208 + 104) = v134;
      if (!v134)
      {
        memset(__sa, 0, sizeof(__sa));
        *sub_1002A80E0(__sa, 8) = 0x656C69663E2D7366;
        sub_1002A8980(-215, __sa, "cvOpenFileStorage", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 4387);
      }

      fseek(v134, v107, 0);
      sub_10028614C(*v208, " <!-- resumed -->");
      fseek(*(*v208 + 104), 0, 2);
      sub_10028614C(*v208, "\n");
    }

    else
    {
      if (a4)
      {
        if (!strcmp(a4, "UTF-16") || !strcmp(a4, "utf-16") || !strcmp(a4, "Utf-16"))
        {
          sub_1002830D8(v208);
          memset(__sa, 0, sizeof(__sa));
          qmemcpy(sub_1002A80E0(__sa, 57), "UTF-16 XML encoding is not supported! Use 8-bit encoding\n", 57);
          sub_1002A8980(-5, __sa, "cvOpenFileStorage", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 4342);
        }

        if (strlen(a4) >= 0x3E8)
        {
          memset(__sa, 0, sizeof(__sa));
          qmemcpy(sub_1002A80E0(__sa, 23), "strlen(encoding) < 1000", 23);
          sub_1002A8980(-215, __sa, "cvOpenFileStorage", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 4345);
        }

        sprintf(__sa, "<?xml version=1.0 encoding=%s?>\n", a4);
        sub_10028614C(*v208, __sa);
      }

      else
      {
        sub_10028614C(v104, "<?xml version=1.0?>\n");
      }

      sub_10028614C(*v208, "<opencv_storage>\n");
    }

    v70 = *v208;
    *(*v208 + 296) = sub_100286448;
    *(v70 + 304) = sub_100286674;
    *(v70 + 312) = sub_100286758;
    *(v70 + 320) = sub_100286828;
    *(v70 + 328) = sub_100286988;
    *(v70 + 336) = sub_100286DB0;
    v71 = sub_100287358;
  }

  else
  {
    if (v8 == 2)
    {
      if (fseek(*(v66 + 104), 0, 2))
      {
LABEL_156:
        memset(__sa, 0, sizeof(__sa));
        qmemcpy(sub_1002A80E0(__sa, 39), "Could not find '}' in the end of file.\n", 39);
        sub_1002A8980(-2, __sa, "cvOpenFileStorage", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 4447);
      }

      v77 = 0;
      while (fgetc(*(*v208 + 104)) != 125)
      {
        if (fseek(*(*v208 + 104), --v77, 2))
        {
          goto LABEL_156;
        }
      }

      fseek(*(*v208 + 104), v77, 2);
      v135 = *v208;
      v137 = (*v208 + 104);
      v136 = *(*v208 + 104);
      if (v136)
      {
        fclose(v136);
      }

      else
      {
        v187 = *(*v208 + 112);
        if (v187)
        {
          gzclose(v187);
        }
      }

      *(v135 + 352) = 0;
      *(v135 + 368) = 0;
      *(v135 + 432) = 0;
      *v137 = 0;
      v137[1] = 0;
      v188 = fopen(*(*v208 + 96), "r+t");
      *(*v208 + 104) = v188;
      if (!v188)
      {
        sub_1001FA81C(__sa, "fs->file");
        sub_1002A8980(-215, __sa, "cvOpenFileStorage", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 4441);
      }

      fseek(v188, v77, 2);
      fputs(",", *(*v208 + 104));
    }

    else
    {
      sub_10028614C(v66, "{\n");
    }

    v70 = *v208;
    *(*v208 + 64) = 4;
    *(v70 + 296) = sub_1002882AC;
    *(v70 + 304) = sub_1002884A0;
    *(v70 + 312) = sub_10028868C;
    *(v70 + 320) = sub_100288730;
    *(v70 + 328) = sub_1002888B0;
    *(v70 + 336) = sub_100288B60;
    v71 = sub_100288F04;
  }

  *(v70 + 344) = v71;
LABEL_399:
  *(v70 + 432) = 1;
LABEL_400:
  if ((variable initialization expression of PointTrail.isStarted() & 0x80000000) != 0)
  {
    goto LABEL_411;
  }

  v191 = *v208;
  v193 = (*v208 + 104);
  v192 = *(*v208 + 104);
  if (!v192)
  {
    v194 = *(*v208 + 112);
    if (v194)
    {
      if (*(*v208 + 8))
      {
        goto LABEL_412;
      }

      gzclose(v194);
LABEL_410:
      *(v191 + 352) = 0;
      *(v191 + 368) = 0;
      *(v191 + 432) = 0;
      *v193 = 0;
      v193[1] = 0;
      v191 = *v208;
      *(*v208 + 432) = 1;
      goto LABEL_412;
    }

    if (*(*v208 + 376) || *(*v208 + 352))
    {
      if (*(*v208 + 8))
      {
        goto LABEL_412;
      }

      goto LABEL_410;
    }

LABEL_411:
    sub_1002830D8(v208);
    v191 = *v208;
    goto LABEL_412;
  }

  if (!*(*v208 + 8))
  {
    fclose(v192);
    goto LABEL_410;
  }

LABEL_412:
  v195 = __p;
  if (__p)
  {
    v196 = v206;
    while (v196 != v195)
    {
      v197 = *(v196 - 1);
      v196 -= 3;
      if (v197 < 0)
      {
        operator delete(*v196);
      }
    }

    operator delete(v195);
  }

  return v191;
}

void sub_100285E98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  sub_1002A8124(&__p);
  sub_1002860D8(&a22);
  _Unwind_Resume(a1);
}

void sub_1002860C8(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_100008E3C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ***sub_1002860D8(void ***a1)
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
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_10028614C(void *a1, char *__s)
{
  v2 = __s;
  v3 = a1[47];
  if (v3)
  {
    v4 = strlen(__s);
    if (v4)
    {
      v5 = v4;
      v6 = *(v3 + 40);
      do
      {
        v8 = *(v3 + 16);
        v9 = *(v3 + 8);
        if (v8 == v9)
        {
          v10 = 0;
        }

        else
        {
          v10 = ((v8 - v9) << 9) - 1;
        }

        v11 = *(v3 + 32) + v6;
        if (v10 == v11)
        {
          sub_100293C50(v3);
          v9 = *(v3 + 8);
          v11 = *(v3 + 40) + *(v3 + 32);
        }

        v7 = *v2++;
        *(*(v9 + ((v11 >> 9) & 0x7FFFFFFFFFFFF8)) + (v11 & 0xFFF)) = v7;
        v6 = *(v3 + 40) + 1;
        *(v3 + 40) = v6;
        --v5;
      }

      while (v5);
    }
  }

  else
  {
    v12 = a1[13];
    if (v12)
    {

      fputs(v2, v12);
    }

    else
    {
      v13 = a1[14];
      if (!v13)
      {
        v14[0] = 0;
        v14[1] = 0;
        qmemcpy(sub_1002A80E0(v14, 25), "The storage is not opened", 25);
        sub_1002A8980(-2, v14, "icvPuts", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 405);
      }

      gzputs(v13, v2);
    }
  }
}

char *sub_1002862DC(void *a1, char *a2, char *buf)
{
  v3 = a1[44];
  if (v3)
  {
    v4 = 0;
    v6 = a1[45];
    v5 = a1[46];
    v7 = v3 + v5;
    while (1)
    {
      v8 = v4;
      v9 = v5 + v4;
      if (v5 + v4 >= v6 || v4 >= buf - 1)
      {
        break;
      }

      v11 = *(v7 + v4);
      if (*(v7 + v4))
      {
        ++v4;
        a2[v8] = v11;
        if (v11 != 10)
        {
          continue;
        }
      }

      v9 = v5 + v8 + 1;
      LODWORD(v8) = v4;
      break;
    }

    a2[v8] = 0;
    a1[46] = v9;
    if (v8 <= 0)
    {
      return 0;
    }

    else
    {
      return a2;
    }
  }

  else
  {
    v12 = a1[13];
    if (v12)
    {

      return fgets(a2, buf, v12);
    }

    else
    {
      v14 = a1[14];
      if (!v14)
      {
        v15[0] = 0;
        v15[1] = 0;
        qmemcpy(sub_1002A80E0(v15, 25), "The storage is not opened", 25);
        sub_1002A8980(-2, v15, "icvGets", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 434);
      }

      return gzgets(v14, a2, buf);
    }
  }
}

char *sub_100286448(uint64_t a1, char *a2, char a3, _BYTE *a4)
{
  memset(v20, 0, sizeof(v20));
  v19 = 0u;
  if ((a3 & 7u) <= 4)
  {
    v14[0] = 0;
    v14[1] = 0;
    qmemcpy(sub_1002A80E0(v14, 66), "Some collection type: CV_NODE_SEQ or CV_NODE_MAP must be specified", 66);
    sub_1002A8980(-5, v14, "icvXMLStartWriteStruct", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 2974);
  }

  if (a4 && *a4)
  {
    v7 = v20;
    *&v19 = "type_id";
    *(&v19 + 1) = a4;
  }

  else
  {
    v7 = &v19;
  }

  *v7 = 0;
  sub_10029433C(a1, a2, 1, &v19, 0);
  v8 = *(a1 + 68) & 0xFFFFFFDF;
  v17 = *(a1 + 64);
  v18 = v8;
  v16 = *(a1 + 72);
  sub_100231AF4(*(a1 + 32), __src);
  result = sub_100233314(*(a1 + 56), __src);
  v10 = *(a1 + 64) + 2;
  *(a1 + 64) = v10;
  if ((a3 & 8) == 0)
  {
    v11 = *(a1 + 120);
    result = *(a1 + 128);
    v12 = *(a1 + 88);
    if (v11 > &result[v12])
    {
      *v11 = 10;
      sub_10028614C(a1, *(a1 + 128));
      result = *(a1 + 128);
      LODWORD(v12) = *(a1 + 88);
      v10 = *(a1 + 64);
    }

    if (v12 != v10)
    {
      memset(result, 32, v10);
      *(a1 + 88) = v10;
      result = *(a1 + 128);
    }

    *(a1 + 120) = &result[v10];
  }

  *(a1 + 68) = a3 & 0xF | 0x20;
  if (a2)
  {
    result = sub_100231F7C(*(a1 + 32), a2, -1);
    *(a1 + 72) = result;
  }

  else
  {
    v13 = 0;
    *(a1 + 72) = 0;
  }

  *(a1 + 80) = v13;
  return result;
}

void sub_100286644(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    sub_100008E3C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100286674(uint64_t a1)
{
  if (!*(*(a1 + 56) + 40))
  {
    v4[0] = 0;
    v4[1] = 0;
    v2 = sub_1002A80E0(v4, 20);
    *(v2 + 16) = 1734439968;
    *v2 = *"An extra closing tag";
    sub_1002A8980(-2, v4, "icvXMLEndWriteStruct", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 3017);
  }

  sub_10029433C(a1, *(a1 + 80), 2, 0, 0);
  sub_1002333F4(*(a1 + 56), __dst);
  *(a1 + 64) = v7;
  *(a1 + 72) = v6;
  return sub_100231B80(*(a1 + 32), __dst);
}

void sub_100286740(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1002A8124(va);
  _Unwind_Resume(a1);
}

void *sub_100286758(uint64_t a1, const char *a2, int a3)
{
  if (a3 >= 0)
  {
    v5 = a3;
  }

  else
  {
    v5 = -a3;
  }

  v11[1] = 0;
  v6 = v11;
  do
  {
    *v6-- = v5 % 0xA + 48;
    v7 = v5 >= 9;
    v8 = v5 == 9;
    v5 /= 0xAu;
  }

  while (!v8 && v7);
  if (a3 < 0)
  {
    *v6 = 45;
  }

  else
  {
    ++v6;
  }

  v9 = strlen(v6);
  return sub_10028AAB8(a1, a2, v6, v9);
}

void *sub_100286828(uint64_t a1, const char *a2, double a3)
{
  if ((~HIDWORD(a3) & 0x7FF00000) != 0)
  {
    v6 = rint(a3);
    if (v6 == a3)
    {
      sprintf(__dst, "%d.", v6);
    }

    else
    {
      v8 = __dst;
      sprintf(__dst, "%.16e", a3);
      if (__dst[0] == 45 || __dst[0] == 43)
      {
        v8 = &__dst[1];
      }

      do
      {
        v10 = *v8++;
        v9 = v10;
      }

      while ((v10 - 48) < 0xA);
      if (v9 == 44)
      {
        *(v8 - 1) = 46;
      }
    }
  }

  else
  {
    v5 = HIDWORD(a3) & 0x7FFFFFFF;
    if (LODWORD(a3))
    {
      ++v5;
    }

    if (v5 < 0x7FF00001)
    {
      if (a3 >= 0.0)
      {
        v7 = ".Inf";
      }

      else
      {
        v7 = "-.Inf";
      }

      strcpy(__dst, v7);
    }

    else
    {
      strcpy(__dst, ".Nan");
    }
  }

  v11 = strlen(__dst);
  return sub_10028AAB8(a1, a2, __dst, v11);
}

void *sub_100286988(uint64_t a1)
{
  __chkstk_darwin(a1);
  v3 = v2;
  v4 = v1;
  v6 = v5;
  v8 = v7;
  if (!v1)
  {
    v24 = 0;
    v25 = 0;
    v9 = sub_1002A80E0(&v24, 19);
    *(v9 + 15) = 1919251566;
    *v9 = *"Null string pointer";
    sub_1002A8980(-27, &v24, "icvXMLWriteString", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 3122);
  }

  v10 = strlen(v1);
  v11 = v10;
  if (v10 > 4096)
  {
    v24 = 0;
    v25 = 0;
    qmemcpy(sub_1002A80E0(&v24, 30), "The written string is too long", 30);
    sub_1002A8980(-5, &v24, "icvXMLWriteString", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 3126);
  }

  if (v3)
  {
    v12 = 1;
  }

  else
  {
    v12 = v10 == 0;
  }

  v13 = v12;
  if (v12 || *v4 != 34 || v4[v10 - 1] != 34)
  {
    v26 = 34;
    v14 = &v26;
    v15 = v27;
    if (v10 >= 1)
    {
      v16 = v10 & 0x7FFFFFFF;
      v14 = &v26;
      v17 = v4;
      do
      {
        while (1)
        {
          while (1)
          {
            while (1)
            {
              while (1)
              {
                while (1)
                {
                  while (1)
                  {
                    while (1)
                    {
                      v18 = *v17++;
                      v19 = v18;
                      if ((v18 & 0x80000000) == 0 && v19 != 32)
                      {
                        break;
                      }

                      *v15 = v19;
                      v13 = 1;
                      v14 = v15++;
                      if (!--v16)
                      {
                        goto LABEL_42;
                      }
                    }

                    if (v19 == 34 || v19 == 62 || v19 == 60 || v19 < 0x20 || (v19 & 0x7E) == 0x26)
                    {
                      break;
                    }

                    *v15 = v19;
                    v14 = v15++;
                    if (!--v16)
                    {
                      goto LABEL_42;
                    }
                  }

                  *v15 = 38;
                  if (v19 != 60)
                  {
                    break;
                  }

                  *(v14 + 1) = 29804;
                  v14[4] = 59;
                  v13 = 1;
                  v14 += 4;
                  v15 = v14 + 1;
                  if (!--v16)
                  {
                    goto LABEL_42;
                  }
                }

                if (v19 != 62)
                {
                  break;
                }

                *(v14 + 1) = 29799;
                v14[4] = 59;
                v13 = 1;
                v14 += 4;
                v15 = v14 + 1;
                if (!--v16)
                {
                  goto LABEL_42;
                }
              }

              if (v19 != 39)
              {
                break;
              }

              *(v14 + 2) = 1936683105;
              v14[6] = 59;
              v13 = 1;
              v14 += 6;
              v15 = v14 + 1;
              if (!--v16)
              {
                goto LABEL_42;
              }
            }

            if (v19 != 38)
            {
              break;
            }

            v14[4] = 112;
            *(v14 + 1) = 28001;
            v14[5] = 59;
            v13 = 1;
            v14 += 5;
            v15 = v14 + 1;
            if (!--v16)
            {
              goto LABEL_42;
            }
          }

          v20 = v14 + 6;
          if (v19 != 34)
          {
            break;
          }

          *(v14 + 2) = 1953461617;
          *v20 = 59;
          v13 = 1;
          v14 += 6;
          v15 = v20 + 1;
          if (!--v16)
          {
            goto LABEL_42;
          }
        }

        sprintf(v14 + 2, "#x%02x", v19);
        *v20 = 59;
        v13 = 1;
        v14 = v20;
        v15 = v20 + 1;
        --v16;
      }

      while (v16);
    }

LABEL_42:
    if (v13 || (v21 = *v4, v21 - 48 < 0xA) || (v22 = 1, v21 <= 0x2E) && ((1 << v21) & 0x680000000000) != 0)
    {
      v22 = 0;
      *v15 = 34;
      v15 = v14 + 2;
    }

    v11 = v15 - &v26 - v22;
    *v15 = 0;
    v4 = &v27[v22 - 1];
  }

  return sub_10028AAB8(v8, v6, v4, v11);
}

void sub_100286D68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    sub_100008E3C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_100286DB0(uint64_t a1, char *__s1, int a3)
{
  v4 = __s1;
  if (!__s1)
  {
    v58 = 0;
    v59 = 0;
    v6 = sub_1002A80E0(&v58, 12);
    *(v6 + 8) = 1953391981;
    *v6 = *"Null comment";
    sub_1002A8980(-27, &v58, "icvXMLWriteComment", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 3205);
  }

  if (strstr(__s1, "--"))
  {
    v58 = 0;
    v59 = 0;
    qmemcpy(sub_1002A80E0(&v58, 49), "Double hyphen '--' is not allowed in the comments", 49);
    sub_1002A8980(-5, &v58, "icvXMLWriteComment", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 3208);
  }

  v7 = strlen(v4);
  v8 = strchr(v4, 10);
  v9 = v8;
  v10 = *(a1 + 120);
  if (a3 && !v8 && *(a1 + 136) - v10 >= v7 + 5)
  {
    if (v10 > *(a1 + 128) + *(a1 + 64))
    {
      *v10++ = 32;
    }

    goto LABEL_18;
  }

  v11 = *(a1 + 128);
  v12 = *(a1 + 88);
  if (v10 > &v11[v12])
  {
    *v10 = 10;
    sub_10028614C(a1, *(a1 + 128));
    v11 = *(a1 + 128);
    LODWORD(v12) = *(a1 + 88);
  }

  v13 = *(a1 + 64);
  if (v12 == v13)
  {
    v10 = &v11[v12];
    *(a1 + 120) = v10;
    if (!v9)
    {
      goto LABEL_18;
    }

LABEL_15:
    strcpy(v10, "<!--");
    v16 = 4;
    goto LABEL_26;
  }

  v14 = v13;
  memset(v11, 32, v13);
  *(a1 + 88) = v13;
  v15 = *(a1 + 128);
  v10 = (v15 + v13);
  *(a1 + 120) = v15 + v14;
  if (v9)
  {
    goto LABEL_15;
  }

LABEL_18:
  v17 = v7 + 9;
  v18 = *(a1 + 136);
  if (&v10[v7 + 9] >= v18)
  {
    v19 = *(a1 + 128);
    v20 = v10 - v19;
    v21 = (3 * (v18 - v19) + ((3 * (v18 - v19)) >> 63)) >> 1;
    v22 = v17 + v10 - v19;
    if (v22 <= v21)
    {
      v23 = v21;
    }

    else
    {
      v23 = v22;
    }

    v24 = sub_1001D90AC(v23 + 256);
    v25 = v24;
    v26 = *(a1 + 128);
    *(a1 + 120) = &v24[*(a1 + 120) - v26];
    if (v20 >= 1)
    {
      memcpy(v24, v26, v20 & 0x7FFFFFFF);
    }

    *(a1 + 128) = v25;
    *(a1 + 136) = &v25[v23];
    v10 = &v25[v20];
  }

  sprintf(v10, "<!-- %s -->", v4);
  v16 = strlen(v10);
LABEL_26:
  v27 = &v10[v16];
  *(a1 + 120) = &v10[v16];
  v28 = *(a1 + 128);
  v29 = *(a1 + 88);
  if (v27 > &v28[v29])
  {
    *v27 = 10;
    sub_10028614C(a1, *(a1 + 128));
    v28 = *(a1 + 128);
    LODWORD(v29) = *(a1 + 88);
  }

  v30 = *(a1 + 64);
  if (v29 == v30)
  {
    v31 = &v28[v29];
    *(a1 + 120) = v31;
    if (!v9)
    {
      return;
    }
  }

  else
  {
    memset(v28, 32, v30);
    *(a1 + 88) = v30;
    v28 = *(a1 + 128);
    v31 = &v28[v30];
    *(a1 + 120) = v31;
    if (!v9)
    {
      return;
    }
  }

  if (v4)
  {
    while (1)
    {
      if (v9)
      {
        v32 = v9 - v4;
        v33 = v9 - v4 + 1;
        v34 = *(a1 + 136);
        if (&v31[v33] >= v34)
        {
          v35 = v31 - v28;
          v36 = (3 * (v34 - v28) + ((3 * (v34 - v28)) >> 63)) >> 1;
          v37 = v33 + v35;
          if (v37 <= v36)
          {
            v38 = v36;
          }

          else
          {
            v38 = v37;
          }

          v39 = sub_1001D90AC(v38 + 256);
          v40 = v39;
          v41 = *(a1 + 128);
          *(a1 + 120) = &v39[*(a1 + 120) - v41];
          if (v35 >= 1)
          {
            memcpy(v39, v41, v35 & 0x7FFFFFFF);
          }

          *(a1 + 128) = v40;
          *(a1 + 136) = &v40[v38];
          v31 = &v40[v35];
        }

        memcpy(v31, v4, v32 + 1);
        v42 = &v31[v32];
        v4 = v9 + 1;
        v9 = strchr(v9 + 1, 10);
        *(a1 + 120) = v42;
        v28 = *(a1 + 128);
        v43 = *(a1 + 88);
        if (v42 <= &v28[v43])
        {
          goto LABEL_45;
        }
      }

      else
      {
        v45 = strlen(v4);
        v46 = v45;
        v47 = *(a1 + 136);
        if (&v31[v45] >= v47)
        {
          v48 = v31 - v28;
          v49 = (3 * (v47 - v28) + ((3 * (v47 - v28)) >> 63)) >> 1;
          if (v48 + v45 <= v49)
          {
            v50 = v49;
          }

          else
          {
            v50 = v48 + v45;
          }

          v51 = sub_1001D90AC(v50 + 256);
          v52 = v51;
          v53 = *(a1 + 128);
          *(a1 + 120) = &v51[*(a1 + 120) - v53];
          if (v48 >= 1)
          {
            memcpy(v51, v53, v48 & 0x7FFFFFFF);
          }

          *(a1 + 128) = v52;
          *(a1 + 136) = &v52[v50];
          v31 = &v52[v48];
        }

        memcpy(v31, v4, v46);
        v4 = 0;
        v9 = 0;
        v42 = &v31[v46];
        *(a1 + 120) = v42;
        v28 = *(a1 + 128);
        v43 = *(a1 + 88);
        if (v42 <= &v28[v43])
        {
          goto LABEL_45;
        }
      }

      *v42 = 10;
      sub_10028614C(a1, *(a1 + 128));
      v28 = *(a1 + 128);
      LODWORD(v43) = *(a1 + 88);
LABEL_45:
      v44 = *(a1 + 64);
      if (v43 == v44)
      {
        v31 = &v28[v43];
        *(a1 + 120) = v31;
        if (!v4)
        {
          break;
        }
      }

      else
      {
        memset(v28, 32, v44);
        *(a1 + 88) = v44;
        v28 = *(a1 + 128);
        v31 = &v28[v44];
        *(a1 + 120) = v31;
        if (!v4)
        {
          break;
        }
      }
    }
  }

  *v31 = 4074797;
  *(a1 + 120) = v31 + 3;
  v54 = *(a1 + 128);
  v55 = *(a1 + 88);
  if (v31 + 3 > &v54[v55])
  {
    *(v31 + 3) = 10;
    sub_10028614C(a1, *(a1 + 128));
    v54 = *(a1 + 128);
    LODWORD(v55) = *(a1 + 88);
  }

  v56 = *(a1 + 64);
  if (v55 == v56)
  {
    v57 = v55;
  }

  else
  {
    v57 = v56;
    memset(v54, 32, v56);
    *(a1 + 88) = v56;
    v54 = *(a1 + 128);
  }

  *(a1 + 120) = &v54[v57];
}

void sub_100287328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1002A8124(va);
  _Unwind_Resume(a1);
}

void sub_100287358(uint64_t result)
{
  if (!*(result + 12))
  {
    if (*(*(result + 56) + 40) >= 1)
    {
      do
      {
        sub_100286674(result);
      }

      while (*(*(result + 56) + 40) > 0);
    }

    *(result + 64) = 0;
    v3 = *(result + 120);
    v2 = *(result + 128);
    v4 = *(result + 88);
    if (v3 <= &v2[v4])
    {
      v5 = 0;
      v6 = 0;
      if (!v4)
      {
LABEL_9:
        *(result + 120) = &v2[v6];
        sub_10028614C(result, "\n<!-- next stream -->\n");
        *(result + 120) = *(result + 128);
        return;
      }
    }

    else
    {
      *v3 = 10;
      sub_10028614C(result, *(result + 128));
      v2 = *(result + 128);
      v5 = *(result + 64);
      v6 = v5;
      if (*(result + 88) == v5)
      {
        goto LABEL_9;
      }
    }

    memset(v2, 32, v6);
    *(result + 88) = v5;
    v2 = *(result + 128);
    goto LABEL_9;
  }
}

char *sub_100287444(uint64_t a1)
{
  *&v3 = __chkstk_darwin(a1).n128_u64[0];
  v5 = v4;
  v7 = v6;
  if (!v2)
  {
    v8 = 0;
    __src = 0;
    v9 = v1 & 7;
    if (v9 > 4)
    {
      goto LABEL_9;
    }

LABEL_8:
    v19[0] = 0;
    v19[1] = 0;
    qmemcpy(sub_1002A80E0(v19, 68), "Some collection type - CV_NODE_SEQ or CV_NODE_MAP, must be specified", 68);
    sub_1002A8980(-5, v19, "icvYMLStartWriteStruct", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 2011);
  }

  if (*v2)
  {
    v8 = v2;
  }

  else
  {
    v8 = 0;
  }

  __src = 0;
  v9 = v1 & 7;
  if (v9 <= 4)
  {
    goto LABEL_8;
  }

LABEL_9:
  v10 = v1 & 0xF | 0x20;
  if (!v8)
  {
    if ((v1 & 8) == 0)
    {
      v13 = 0;
      goto LABEL_28;
    }

    if (v9 == 6)
    {
      v15 = 123;
    }

    else
    {
      v15 = 91;
    }

    v10 = v1 & 7 | 0x28;
    v21[0] = v15;
    v21[1] = 0;
    goto LABEL_27;
  }

  if (*v8 == 1634625890 && *(v8 + 2) == 31090)
  {
    strcpy(v21, "!!binary |");
    v10 = 5;
LABEL_27:
    v13 = v21;
    goto LABEL_28;
  }

  if ((v1 & 8) != 0)
  {
    v10 = v1 & 7 | 0x28;
    v14 = 91;
    if (v9 == 6)
    {
      v14 = 123;
    }

    v17 = v8;
    v18 = v14;
    v12 = "!!%s %c";
  }

  else
  {
    v17 = v8;
    v12 = "!!%s";
  }

  v13 = v21;
  sprintf(v21, v12, v3, v17, v18);
LABEL_28:
  sub_10028ADF4(v7, v5, v13);
  __src = *(v7 + 68);
  result = sub_100233314(*(v7 + 56), &__src);
  *(v7 + 68) = v10;
  if ((__src & 8) == 0)
  {
    *(v7 + 64) += ((v10 >> 3) & 1) + 3;
  }

  return result;
}

void sub_10028767C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    sub_100008E3C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

int *sub_1002876AC(uint64_t a1)
{
  __dst = 0;
  v2 = *(a1 + 68);
  v3 = *(a1 + 56);
  if (!v3[10])
  {
    v15[0] = 0;
    v15[1] = 0;
    qmemcpy(sub_1002A80E0(v15, 44), "EndWriteStruct w/o matching StartWriteStruct", 44);
    sub_1002A8980(-2, v15, "icvYMLEndWriteStruct", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 2059);
  }

  result = sub_1002333F4(v3, &__dst);
  if ((v2 & 8) != 0)
  {
    v6 = *(a1 + 120);
    if (v6 > *(a1 + 128) + *(a1 + 64) && (v2 & 0x20) == 0)
    {
      *v6++ = 32;
    }

    if ((v2 & 7) == 6)
    {
      v8 = 125;
    }

    else
    {
      v8 = 93;
    }

    *v6 = v8;
    *(a1 + 120) = v6 + 1;
    v5 = __dst;
    if ((__dst & 8) != 0)
    {
      goto LABEL_5;
    }
  }

  else if ((v2 & 0x20) != 0)
  {
    v9 = *(a1 + 120);
    result = *(a1 + 128);
    v10 = *(a1 + 88);
    if (v9 > (result + v10))
    {
      *v9 = 10;
      sub_10028614C(a1, *(a1 + 128));
      result = *(a1 + 128);
      LODWORD(v10) = *(a1 + 88);
    }

    v11 = *(a1 + 64);
    if (v10 == v11)
    {
      v12 = v10;
    }

    else
    {
      v12 = v11;
      memset(result, 32, v11);
      *(a1 + 88) = v11;
      result = *(a1 + 128);
    }

    v13 = (result + v12);
    if ((v2 & 7) == 6)
    {
      v14 = 32123;
    }

    else
    {
      v14 = 23899;
    }

    *v13 = v14;
    *(a1 + 120) = v13 + 1;
    v5 = __dst;
    if ((__dst & 8) != 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v5 = __dst;
    if ((__dst & 8) != 0)
    {
LABEL_5:
      *(a1 + 68) = v5;
      return result;
    }
  }

  *(a1 + 64) = *(a1 + 64) - ((v2 & 8) >> 3) - 3;
  *(a1 + 68) = v5;
  return result;
}

void sub_100287868(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1002A8124(va);
  _Unwind_Resume(a1);
}

char *sub_100287880(uint64_t a1, const char *a2, int a3, __n128 a4)
{
  if (a3 >= 0)
  {
    v5 = a3;
  }

  else
  {
    v5 = -a3;
  }

  v9[1] = 0;
  v6 = v9;
  do
  {
    *v6-- = v5 % 0xA + 48;
    v7 = v5 > 9;
    v5 /= 0xAu;
  }

  while (v7);
  if (a3 < 0)
  {
    *v6 = 45;
  }

  else
  {
    ++v6;
  }

  return sub_10028ADF4(a1, a2, v6);
}

char *sub_100287924(uint64_t a1, const char *a2, __n128 a3)
{
  if ((~a3.n128_u32[1] & 0x7FF00000) != 0)
  {
    v4 = a1;
    v5 = a2;
    v6 = rint(a3.n128_f64[0]);
    if (v6 == a3.n128_f64[0])
    {
      sprintf(__dst, "%d.", v6);
      a2 = v5;
      a1 = v4;
    }

    else
    {
      v10 = __dst;
      sprintf(__dst, "%.16e", a3.n128_f64[0]);
      if (__dst[0] == 45 || __dst[0] == 43)
      {
        v10 = &__dst[1];
      }

      a2 = v5;
      a1 = v4;
      do
      {
        v12 = *v10++;
        v11 = v12;
      }

      while ((v12 - 48) < 0xA);
      if (v11 == 44)
      {
        *(v10 - 1) = 46;
      }
    }
  }

  else
  {
    v3 = a3.n128_u32[1] & 0x7FFFFFFF;
    if (a3.n128_u32[0])
    {
      ++v3;
    }

    if (v3 < 0x7FF00001)
    {
      if (a3.n128_i64[0] >= 0)
      {
        v7 = ".Inf";
      }

      else
      {
        v7 = "-.Inf";
      }

      v8 = a1;
      v9 = a2;
      strcpy(__dst, v7);
      a1 = v8;
      a2 = v9;
    }

    else
    {
      strcpy(__dst, ".Nan");
    }
  }

  return sub_10028ADF4(a1, a2, __dst);
}

char *sub_100287A94(uint64_t a1)
{
  __chkstk_darwin(a1);
  v3 = v2;
  v4 = v1;
  v6 = v5;
  v8 = v7;
  if (!v1)
  {
    v32 = 0;
    v33 = 0;
    v9 = sub_1002A80E0(&v32, 19);
    *(v9 + 15) = 1919251566;
    *v9 = *"Null string pointer";
    sub_1002A8980(-27, &v32, "icvYMLWriteString", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 2128);
  }

  v10 = strlen(v1);
  if (v10 > 4096)
  {
    v32 = 0;
    v33 = 0;
    qmemcpy(sub_1002A80E0(&v32, 30), "The written string is too long", 30);
    sub_1002A8980(-5, &v32, "icvYMLWriteString", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 2132);
  }

  v11 = 1;
  if (!v3 && v10)
  {
    v12 = *v4;
    if (v12 == v4[v10 - 1] && (v12 == 34 || v12 == 39))
    {
      return sub_10028ADF4(v8, v6, v4);
    }

    v11 = v12 == 32;
  }

  v31 = v8;
  v13 = v35;
  v34 = 34;
  if (v10 >= 1)
  {
    v14 = v10 & 0x7FFFFFFF;
    v15 = v4;
    v16 = v35;
    while (1)
    {
      v18 = *v15++;
      v17 = v18;
      v19 = (v18 - 58);
      v20 = v18 & 0xDF;
      v21 = ((v18 & 0xDF) - 91);
      v22 = v18;
      v23 = (1 << (v18 - 32)) & 0x800000000800AB01;
      v25 = v18 - 32 > 0x3F || v23 == 0;
      v26 = v21 <= 0xE5 && v25;
      v27 = v19 <= 0xF5 && v26;
      v11 = v11 || v27;
      if ((v17 - 48) >= 0xAu && (v20 - 65) >= 0x1Au)
      {
        if (v22 < 0x20)
        {
          *v16 = 92;
          switch(v17)
          {
            case 9:
              v17 = 116;
              break;
            case 13:
              v17 = 114;
              break;
            case 10:
              v17 = 110;
              break;
            default:
              sprintf(v16 + 1, "x%02x", v17);
              v16 += 4;
              goto LABEL_14;
          }

          goto LABEL_45;
        }

        if (v17 - 34 <= 0x3A && ((1 << (v17 - 34)) & 0x400000000000021) != 0)
        {
          *v16 = 92;
LABEL_45:
          v16[1] = v17;
          v16 += 2;
          goto LABEL_14;
        }
      }

      *v16++ = v17;
LABEL_14:
      if (!--v14)
      {
        goto LABEL_48;
      }
    }
  }

  v16 = v35;
LABEL_48:
  if (v11 || (v29 = *v4, v29 - 48 < 0xA) || v29 <= 0x2E && ((1 << v29) & 0x680000000000) != 0)
  {
    *v16++ = 34;
    v13 = &v34;
  }

  *v16 = 0;
  v4 = v13;
  v8 = v31;
  return sub_10028ADF4(v8, v6, v4);
}

void sub_100287DD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (a2)
  {
    sub_100008E3C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

char *sub_100287E18(uint64_t a1, char *__s, int a3)
{
  v4 = __s;
  if (!__s)
  {
    v39[0] = 0;
    v39[1] = 0;
    v10 = sub_1002A80E0(v39, 12);
    *(v10 + 8) = 1953391981;
    *v10 = *"Null comment";
    sub_1002A8980(-27, v39, "icvYMLWriteComment", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 2190);
  }

  v6 = strlen(__s);
  result = strchr(v4, 10);
  v8 = result;
  v9 = *(a1 + 120);
  if (a3 && !result && *(a1 + 136) - v9 >= v6 && v9 != *(a1 + 128))
  {
    *v9 = 32;
    v11 = v9 + 1;
    if (v4)
    {
      goto LABEL_18;
    }

    return result;
  }

  result = *(a1 + 128);
  v12 = *(a1 + 88);
  if (v9 > &result[v12])
  {
    *v9 = 10;
    sub_10028614C(a1, *(a1 + 128));
    result = *(a1 + 128);
    LODWORD(v12) = *(a1 + 88);
  }

  v13 = *(a1 + 64);
  if (v12 != v13)
  {
    memset(result, 32, v13);
    *(a1 + 88) = v13;
    result = *(a1 + 128);
    v11 = &result[v13];
    *(a1 + 120) = v11;
    if (!v4)
    {
      return result;
    }

    while (1)
    {
LABEL_18:
      *v11 = 8227;
      v14 = v11 + 2;
      if (v8)
      {
        v15 = v8 - v4;
        v16 = v8 - v4 + 1;
        v17 = *(a1 + 136);
        if (&v14[v16] >= v17)
        {
          v18 = *(a1 + 128);
          v19 = v14 - v18;
          v20 = (3 * (v17 - v18) + ((3 * (v17 - v18)) >> 63)) >> 1;
          v21 = v16 + v14 - v18;
          if (v21 <= v20)
          {
            v22 = v20;
          }

          else
          {
            v22 = v21;
          }

          v23 = sub_1001D90AC(v22 + 256);
          v24 = v23;
          v25 = *(a1 + 128);
          *(a1 + 120) = &v23[*(a1 + 120) - v25];
          if (v19 >= 1)
          {
            memcpy(v23, v25, v19 & 0x7FFFFFFF);
          }

          *(a1 + 128) = v24;
          *(a1 + 136) = &v24[v22];
          v14 = &v24[v19];
        }

        memcpy(v14, v4, v15 + 1);
        v26 = &v14[v15];
        *(a1 + 120) = v26;
        v4 = v8 + 1;
        v8 = strchr(v8 + 1, 10);
        result = *(a1 + 128);
        v27 = *(a1 + 88);
        if (v26 <= &result[v27])
        {
          goto LABEL_28;
        }
      }

      else
      {
        v29 = strlen(v4);
        v30 = v29;
        v31 = *(a1 + 136);
        if (&v14[v29] >= v31)
        {
          v32 = *(a1 + 128);
          v33 = v14 - v32;
          v34 = (3 * (v31 - v32) + ((3 * (v31 - v32)) >> 63)) >> 1;
          if (v33 + v29 <= v34)
          {
            v35 = v34;
          }

          else
          {
            v35 = v33 + v29;
          }

          v36 = sub_1001D90AC(v35 + 256);
          v37 = v36;
          v38 = *(a1 + 128);
          *(a1 + 120) = &v36[*(a1 + 120) - v38];
          if (v33 >= 1)
          {
            memcpy(v36, v38, v33 & 0x7FFFFFFF);
          }

          *(a1 + 128) = v37;
          *(a1 + 136) = &v37[v35];
          v14 = &v37[v33];
        }

        memcpy(v14, v4, v30);
        v8 = 0;
        v4 = 0;
        v26 = &v14[v30];
        *(a1 + 120) = v26;
        result = *(a1 + 128);
        v27 = *(a1 + 88);
        if (v26 <= &result[v27])
        {
          goto LABEL_28;
        }
      }

      *v26 = 10;
      sub_10028614C(a1, *(a1 + 128));
      result = *(a1 + 128);
      LODWORD(v27) = *(a1 + 88);
LABEL_28:
      v28 = *(a1 + 64);
      if (v27 == v28)
      {
        v11 = &result[v27];
        *(a1 + 120) = v11;
        if (!v4)
        {
          return result;
        }
      }

      else
      {
        memset(result, 32, v28);
        *(a1 + 88) = v28;
        result = *(a1 + 128);
        v11 = &result[v28];
        *(a1 + 120) = v11;
        if (!v4)
        {
          return result;
        }
      }
    }
  }

  v11 = &result[v12];
  *(a1 + 120) = v11;
  if (v4)
  {
    goto LABEL_18;
  }

  return result;
}

void sub_1002881B0(uint64_t result)
{
  if (!*(result + 12))
  {
    if (*(*(result + 56) + 40) >= 1)
    {
      do
      {
        sub_1002876AC(result);
      }

      while (*(*(result + 56) + 40) > 0);
    }

    *(result + 64) = 0;
    v3 = *(result + 120);
    v2 = *(result + 128);
    v4 = *(result + 88);
    if (v3 <= &v2[v4])
    {
      v5 = 0;
      v6 = 0;
      if (!v4)
      {
LABEL_9:
        *(result + 120) = &v2[v6];
        sub_10028614C(result, "...\n");
        sub_10028614C(result, "---\n");
        *(result + 120) = *(result + 128);
        return;
      }
    }

    else
    {
      *v3 = 10;
      sub_10028614C(result, *(result + 128));
      v2 = *(result + 128);
      v5 = *(result + 64);
      v6 = v5;
      if (*(result + 88) == v5)
      {
        goto LABEL_9;
      }
    }

    memset(v2, 32, v6);
    *(result + 88) = v5;
    v2 = *(result + 128);
    goto LABEL_9;
  }
}

char *sub_1002882AC(uint64_t a1)
{
  __chkstk_darwin(a1);
  v5 = v4;
  v6 = v1;
  __src = 0;
  if ((v3 & 7u) <= 4)
  {
    v12[0] = 0;
    v12[1] = 0;
    qmemcpy(sub_1002A80E0(v12, 68), "Some collection type - CV_NODE_SEQ or CV_NODE_MAP, must be specified", 68);
    sub_1002A8980(-5, v12, "icvJSONStartWriteStruct", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 3965);
  }

  if (!v4)
  {
    goto LABEL_11;
  }

  if (!*v4)
  {
    v5 = 0;
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  if (*v4 == 1634625890 && *(v4 + 4) == 31090)
  {
    v8 = 0;
    v14[0] = 0;
    v9 = 3;
    goto LABEL_16;
  }

  v8 = 1;
LABEL_12:
  v9 = v3 & 0xF | 0x20;
  if ((v3 & 7) == 6)
  {
    v10 = 123;
  }

  else
  {
    v10 = 91;
  }

  v14[0] = v10;
  v14[1] = 0;
LABEL_16:
  sub_10028B4EC(v1, v2, v14);
  __src = *(v6 + 68);
  result = sub_100233314(*(v6 + 56), &__src);
  *(v6 + 68) = v9;
  *(v6 + 64) += 4;
  if (v8)
  {
    return (*(v6 + 328))(v6, "type_id", v5, 1);
  }

  return result;
}

void sub_100288470(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_100008E3C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

int *sub_1002884A0(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (!v2[10])
  {
    v13[0] = 0;
    v13[1] = 0;
    qmemcpy(sub_1002A80E0(v13, 44), "EndWriteStruct w/o matching StartWriteStruct", 44);
    sub_1002A8980(-2, v13, "icvJSONEndWriteStruct", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 4006);
  }

  LODWORD(v13[0]) = 0;
  v3 = *(a1 + 68);
  result = sub_1002333F4(v2, v13);
  v5 = *(a1 + 64) - 4;
  v6 = v13[0] & 0xFFFFFFDF;
  *(a1 + 64) = v5;
  *(a1 + 68) = v6;
  if ((v3 & 7u) >= 5)
  {
    v7 = *(a1 + 120);
    result = *(a1 + 128);
    if ((v3 & 8) != 0)
    {
LABEL_13:
      if (v7 > (result + v5) && (v3 & 0x20) == 0)
      {
        *v7 = 32;
        v7 = (v7 + 1);
      }

      if ((v3 & 7) == 6)
      {
        v12 = 125;
      }

      else
      {
        v12 = 93;
      }

      *v7 = v12;
      *(a1 + 120) = v7 + 1;
      return result;
    }

    if (v7 <= (result + *(a1 + 88)) && (*(a1 + 120) = v7 + 1, *v7 = 10, v10 = *(a1 + 120), *(a1 + 120) = v10 + 1, *v10 = 0, sub_10028614C(a1, *(a1 + 128)), result = *(a1 + 128), *(a1 + 120) = result, v5 = *(a1 + 88), v7 = result, result <= (result + v5)))
    {
      v8 = *(a1 + 64);
      if (v5 != v8)
      {
LABEL_11:
        v9 = v8;
        memset(result, 32, v8);
        *(a1 + 88) = v8;
        result = *(a1 + 128);
        v5 = *(a1 + 64);
        goto LABEL_12;
      }
    }

    else
    {
      *v7 = 10;
      sub_10028614C(a1, *(a1 + 128));
      result = *(a1 + 128);
      v5 = *(a1 + 88);
      v8 = *(a1 + 64);
      if (v5 != v8)
      {
        goto LABEL_11;
      }
    }

    v9 = v5;
LABEL_12:
    v7 = (result + v9);
    *(a1 + 120) = result + v9;
    goto LABEL_13;
  }

  return result;
}

char *sub_10028868C(uint64_t a1, const char *a2, int a3, __n128 a4)
{
  if (a3 >= 0)
  {
    v5 = a3;
  }

  else
  {
    v5 = -a3;
  }

  v9[1] = 0;
  v6 = v9;
  do
  {
    *v6-- = v5 % 0xA + 48;
    v7 = v5 > 9;
    v5 /= 0xAu;
  }

  while (v7);
  if (a3 < 0)
  {
    *v6 = 45;
  }

  else
  {
    ++v6;
  }

  return sub_10028B4EC(a1, a2, v6);
}

char *sub_100288730(uint64_t a1, const char *a2, double a3)
{
  if ((~HIDWORD(a3) & 0x7FF00000) != 0)
  {
    v6 = rint(a3);
    if (v6 == a3)
    {
      sprintf(__dst, "%d.", v6);
    }

    else
    {
      v8 = __dst;
      sprintf(__dst, "%.16e", a3);
      if (__dst[0] == 45 || __dst[0] == 43)
      {
        v8 = &__dst[1];
      }

      do
      {
        v10 = *v8++;
        v9 = v10;
      }

      while ((v10 - 48) < 0xA);
      if (v9 == 44)
      {
        *(v8 - 1) = 46;
      }
    }
  }

  else
  {
    v5 = HIDWORD(a3) & 0x7FFFFFFF;
    if (LODWORD(a3))
    {
      ++v5;
    }

    if (v5 < 0x7FF00001)
    {
      if (a3 >= 0.0)
      {
        v7 = ".Inf";
      }

      else
      {
        v7 = "-.Inf";
      }

      strcpy(__dst, v7);
    }

    else
    {
      strcpy(__dst, ".Nan");
    }
  }

  v11 = strlen(__dst);
  if (v11 && __dst[v11 - 1] == 46)
  {
    *&__dst[v11] = 48;
  }

  return sub_10028B4EC(a1, a2, __dst);
}

char *sub_1002888B0(uint64_t a1)
{
  __chkstk_darwin(a1);
  v3 = v2;
  v4 = v1;
  v6 = v5;
  v8 = v7;
  if (!v1)
  {
    v17 = 0;
    v18 = 0;
    v9 = sub_1002A80E0(&v17, 19);
    *(v9 + 15) = 1919251566;
    *v9 = *"Null string pointer";
    sub_1002A8980(-27, &v17, "icvJSONWriteString", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 4086);
  }

  v10 = strlen(v1);
  if (v10 > 4096)
  {
    v17 = 0;
    v18 = 0;
    qmemcpy(sub_1002A80E0(&v17, 30), "The written string is too long", 30);
    sub_1002A8980(-5, &v17, "icvJSONWriteString", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 4090);
  }

  if (v3 || !v10 || (v11 = *v4, v11 != v4[v10 - 1]) || v11 != 34 && v11 != 39)
  {
    v12 = v20;
    v19 = 34;
    if (v10 >= 1)
    {
      for (i = v10 & 0x7FFFFFFF; i; --i)
      {
        v15 = *v4++;
        v14 = v15;
        if (v15 > 12)
        {
          if (v14 <= 38)
          {
            if (v14 == 13)
            {
              *v12 = 29276;
              v12 += 2;
              continue;
            }

            if (v14 != 34)
            {
              goto LABEL_31;
            }
          }

          else if (v14 != 92 && v14 != 39)
          {
LABEL_31:
            *v12++ = v14;
            continue;
          }

          *v12 = 92;
          v12[1] = v14;
          v12 += 2;
        }

        else if (v14 > 9)
        {
          if (v14 == 10)
          {
            *v12 = 28252;
            v12 += 2;
          }

          else
          {
            if (v14 != 12)
            {
              goto LABEL_31;
            }

            *v12 = 26204;
            v12 += 2;
          }
        }

        else if (v14 == 8)
        {
          *v12 = 25180;
          v12 += 2;
        }

        else
        {
          if (v14 != 9)
          {
            goto LABEL_31;
          }

          *v12 = 29788;
          v12 += 2;
        }
      }
    }

    *v12 = 34;
    v4 = &v19;
  }

  return sub_10028B4EC(v8, v6, v4);
}

void sub_100288B18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    sub_100008E3C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

char *sub_100288B60(uint64_t a1, char *__s, int a3)
{
  v4 = __s;
  if (!__s)
  {
    v39[0] = 0;
    v39[1] = 0;
    v10 = sub_1002A80E0(v39, 12);
    *(v10 + 8) = 1953391981;
    *v10 = *"Null comment";
    sub_1002A8980(-27, v39, "icvJSONWriteComment", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 4129);
  }

  v6 = strlen(__s);
  result = strchr(v4, 10);
  v8 = result;
  v9 = *(a1 + 120);
  if (a3 && !result && *(a1 + 136) - v9 >= v6 && v9 != *(a1 + 128))
  {
    *v9 = 32;
    v11 = v9 + 1;
    if (v4)
    {
      goto LABEL_18;
    }

    return result;
  }

  result = *(a1 + 128);
  v12 = *(a1 + 88);
  if (v9 > &result[v12])
  {
    *v9 = 10;
    sub_10028614C(a1, *(a1 + 128));
    result = *(a1 + 128);
    LODWORD(v12) = *(a1 + 88);
  }

  v13 = *(a1 + 64);
  if (v12 != v13)
  {
    memset(result, 32, v13);
    *(a1 + 88) = v13;
    result = *(a1 + 128);
    v11 = &result[v13];
    *(a1 + 120) = v11;
    if (!v4)
    {
      return result;
    }

    while (1)
    {
LABEL_18:
      *v11 = 12079;
      v14 = v11 + 3;
      v11[2] = 32;
      if (v8)
      {
        v15 = v8 - v4;
        v16 = v8 - v4 + 1;
        v17 = *(a1 + 136);
        if (&v14[v16] >= v17)
        {
          v18 = *(a1 + 128);
          v19 = v14 - v18;
          v20 = (3 * (v17 - v18) + ((3 * (v17 - v18)) >> 63)) >> 1;
          v21 = v16 + v19;
          if (v21 <= v20)
          {
            v22 = v20;
          }

          else
          {
            v22 = v21;
          }

          v23 = sub_1001D90AC(v22 + 256);
          v24 = v23;
          v25 = *(a1 + 128);
          *(a1 + 120) = &v23[*(a1 + 120) - v25];
          if (v19 >= 1)
          {
            memcpy(v23, v25, v19 & 0x7FFFFFFF);
          }

          *(a1 + 128) = v24;
          *(a1 + 136) = &v24[v22];
          v14 = &v24[v19];
        }

        memcpy(v14, v4, v15 + 1);
        v26 = &v14[v15];
        *(a1 + 120) = &v14[v15];
        v4 = v8 + 1;
        v8 = strchr(v8 + 1, 10);
        result = *(a1 + 128);
        v27 = *(a1 + 88);
        if (&v14[v15] <= &result[v27])
        {
          goto LABEL_28;
        }
      }

      else
      {
        v29 = strlen(v4);
        v30 = v29;
        v31 = *(a1 + 136);
        if (&v14[v29] >= v31)
        {
          v32 = *(a1 + 128);
          v33 = v14 - v32;
          v34 = (3 * (v31 - v32) + ((3 * (v31 - v32)) >> 63)) >> 1;
          if (v33 + v29 <= v34)
          {
            v35 = v34;
          }

          else
          {
            v35 = v33 + v29;
          }

          v36 = sub_1001D90AC(v35 + 256);
          v37 = v36;
          v38 = *(a1 + 128);
          *(a1 + 120) = &v36[*(a1 + 120) - v38];
          if (v33 >= 1)
          {
            memcpy(v36, v38, v33 & 0x7FFFFFFF);
          }

          *(a1 + 128) = v37;
          *(a1 + 136) = &v37[v35];
          v14 = &v37[v33];
        }

        memcpy(v14, v4, v30);
        v8 = 0;
        v4 = 0;
        v26 = &v14[v30];
        *(a1 + 120) = v26;
        result = *(a1 + 128);
        v27 = *(a1 + 88);
        if (v26 <= &result[v27])
        {
          goto LABEL_28;
        }
      }

      *v26 = 10;
      sub_10028614C(a1, *(a1 + 128));
      result = *(a1 + 128);
      LODWORD(v27) = *(a1 + 88);
LABEL_28:
      v28 = *(a1 + 64);
      if (v27 == v28)
      {
        v11 = &result[v27];
        *(a1 + 120) = v11;
        if (!v4)
        {
          return result;
        }
      }

      else
      {
        memset(result, 32, v28);
        *(a1 + 88) = v28;
        result = *(a1 + 128);
        v11 = &result[v28];
        *(a1 + 120) = v11;
        if (!v4)
        {
          return result;
        }
      }
    }
  }

  v11 = &result[v12];
  *(a1 + 120) = v11;
  if (v4)
  {
    goto LABEL_18;
  }

  return result;
}

uint64_t sub_100288F04(uint64_t result)
{
  if (!*(result + 12))
  {
    v1 = result;
    if (*(*(result + 56) + 40) >= 1)
    {
      do
      {
        sub_1002884A0(v1);
      }

      while (*(*(v1 + 56) + 40) > 0);
    }

    v2 = 4;
    *(v1 + 64) = 4;
    v3 = *(v1 + 120);
    result = *(v1 + 128);
    v4 = *(v1 + 88);
    if (v3 > result + v4)
    {
      *v3 = 10;
      sub_10028614C(v1, *(v1 + 128));
      result = *(v1 + 128);
      LODWORD(v4) = *(v1 + 88);
      v2 = *(v1 + 64);
    }

    if (v4 != v2)
    {
      memset(result, 32, v2);
      *(v1 + 88) = v2;
      result = *(v1 + 128);
    }

    *(v1 + 120) = result;
  }

  return result;
}

void sub_100288FB8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    v8 = -27;
LABEL_5:
    v13 = 0;
    v14 = 0;
    qmemcpy(sub_1002A80E0(&v13, 31), "Invalid pointer to file storage", 31);
    sub_1002A8980(v8, &v13, "cvStartWriteStruct", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 4564);
  }

  if (*a1 != 1280131417)
  {
    v8 = -5;
    goto LABEL_5;
  }

  if (!*(a1 + 8))
  {
    v13 = 0;
    v14 = 0;
    qmemcpy(sub_1002A80E0(&v13, 38), "The file storage is opened for reading", 38);
    sub_1002A8980(-2, &v13, "cvStartWriteStruct", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 4564);
  }

  sub_100289404(a1, 0);
  v9 = *(a1 + 396);
  if (v9 == 1)
  {
    sub_1002895CC(a1, 0);
    v9 = *(a1 + 396);
  }

  if ((a3 & 7) != 5 || v9 || a4 || (*(a1 + 392) & 1) == 0)
  {
    if (a4 && (*a4 == 1634625890 ? (v10 = *(a4 + 4) == 31090) : (v10 = 0), v10))
    {
      if ((a3 & 7) != 5)
      {
        v13 = 0;
        v14 = 0;
        qmemcpy(sub_1002A80E0(&v13, 55), "must set 'struct_flags |= CV_NODE_SEQ' if using Base64.", 55);
        sub_1002A8980(-5, &v13, "cvStartWriteStruct", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 4585);
      }

      if (v9)
      {
        v13 = 0;
        v14 = 0;
        qmemcpy(sub_1002A80E0(&v13, 69), "function 'cvStartWriteStruct' calls cannot be nested if using Base64.", 69);
        sub_1002A8980(-2, &v13, "cvStartWriteStruct", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 4587);
      }

      (*(a1 + 296))(a1, a2, a3, a4);
      if (*(a1 + 396))
      {
        sub_1002895CC(a1, 0);
      }

      v11 = a1;
      v12 = 2;
    }

    else
    {
      if (v9 == 2)
      {
        v13 = 0;
        v14 = 0;
        sub_1002A8980(-2, &v13, "cvStartWriteStruct", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 4599);
      }

      (*(a1 + 296))(a1, a2, a3, a4);
      if (*(a1 + 396))
      {
        sub_1002895CC(a1, 0);
      }

      v11 = a1;
      v12 = 1;
    }

    sub_1002895CC(v11, v12);
  }

  else
  {
    if (*(a1 + 400))
    {
      v13 = 0;
      v14 = 0;
      qmemcpy(sub_1002A80E0(&v13, 36), "fs->is_write_struct_delayed == false", 36);
      sub_1002A8980(-215, &v13, "make_write_struct_delayed", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 1252);
    }

    *(a1 + 416) = a3;
    if (a2)
    {
      strlen(a2);
      operator new[]();
    }

    *(a1 + 400) = 1;
  }
}

void sub_100289404(uint64_t a1, int a2)
{
  if (*(a1 + 400) == 1)
  {
    memset(&v12, 0, sizeof(v12));
    memset(&__p, 0, sizeof(__p));
    v4 = *(a1 + 416);
    v5 = *(a1 + 408);
    if (v5 && *v5)
    {
      std::string::assign(&v12, v5);
    }

    v6 = *(a1 + 424);
    if (v6 && *v6)
    {
      std::string::assign(&__p, v6);
    }

    if (*(a1 + 408))
    {
      operator delete[]();
    }

    if (*(a1 + 424))
    {
      operator delete[]();
    }

    *(a1 + 408) = 0;
    *(a1 + 416) = 0;
    *(a1 + 424) = 0;
    *(a1 + 400) = 0;
    v7 = *(a1 + 296);
    if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v12;
    }

    else
    {
      v8 = v12.__r_.__value_.__r.__words[0];
    }

    if (a2)
    {
      v7(a1, v8, v4, "binary");
      if (*(a1 + 396))
      {
        sub_1002895CC(a1, 0);
      }

      v9 = 2;
    }

    else
    {
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      v7(a1, v8, v4, p_p);
      if (*(a1 + 396))
      {
        sub_1002895CC(a1, 0);
      }

      v9 = 1;
    }

    sub_1002895CC(a1, v9);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      if ((SHIBYTE(v12.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return;
      }

LABEL_29:
      operator delete(v12.__r_.__value_.__l.__data_);
      return;
    }

    operator delete(__p.__r_.__value_.__l.__data_);
    if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_29;
    }
  }
}

void sub_100289590(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a20 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
LABEL_3:
    _Unwind_Resume(a1);
  }

  operator delete(a15);
  _Unwind_Resume(a1);
}

uint64_t sub_1002895CC(uint64_t result, int a2)
{
  v2 = *(result + 396);
  if (v2 == 2)
  {
    if ((a2 - 1) <= 1)
    {
      v4 = 0;
      v5 = 0;
      qmemcpy(sub_1002A80E0(&v4, 49), "Unexpected error, unable to switch to this state.", 49);
      sub_1002A8980(-2, &v4, "switch_to_Base64_state", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 1166);
    }

    v3 = *(result + 384);
    if (v3)
    {
      if (*v3)
      {
        sub_10029C070(*v3);
        operator delete();
      }

      if (*(v3 + 31) < 0)
      {
        operator delete(*(v3 + 8));
      }

      operator delete();
    }

    *(result + 384) = 0;
    *(result + 396) = a2;
  }

  else
  {
    if (v2 == 1)
    {
      if ((a2 - 1) <= 1)
      {
        v4 = 0;
        v5 = 0;
        qmemcpy(sub_1002A80E0(&v4, 49), "Unexpected error, unable to switch to this state.", 49);
        sub_1002A8980(-2, &v4, "switch_to_Base64_state", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 1182);
      }
    }

    else
    {
      if (v2)
      {
        v4 = 0;
        v5 = 0;
        qmemcpy(sub_1002A80E0(&v4, 55), "Unexpected error, unable to determine the Base64 state.", 55);
        sub_1002A8980(-2, &v4, "switch_to_Base64_state", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 1192);
      }

      if (a2 == 2)
      {
        operator new();
      }
    }

    *(result + 396) = a2;
  }

  return result;
}

uint64_t sub_10028984C(uint64_t a1)
{
  if (!a1)
  {
    v2 = -27;
LABEL_5:
    v4 = 0;
    v5 = 0;
    qmemcpy(sub_1002A80E0(&v4, 31), "Invalid pointer to file storage", 31);
    sub_1002A8980(v2, &v4, "cvEndWriteStruct", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 4613);
  }

  if (*a1 != 1280131417)
  {
    v2 = -5;
    goto LABEL_5;
  }

  if (!*(a1 + 8))
  {
    v4 = 0;
    v5 = 0;
    qmemcpy(sub_1002A80E0(&v4, 38), "The file storage is opened for reading", 38);
    sub_1002A8980(-2, &v4, "cvEndWriteStruct", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 4613);
  }

  sub_100289404(a1, 0);
  if (*(a1 + 396))
  {
    sub_1002895CC(a1, 0);
  }

  return (*(a1 + 304))(a1);
}

uint64_t sub_1002899A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    v3 = -27;
LABEL_5:
    v5 = 0;
    v6 = 0;
    qmemcpy(sub_1002A80E0(&v5, 31), "Invalid pointer to file storage", 31);
    sub_1002A8980(v3, &v5, "cvWriteInt", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 4626);
  }

  if (*a1 != 1280131417)
  {
    v3 = -5;
    goto LABEL_5;
  }

  if (!*(a1 + 8))
  {
    v5 = 0;
    v6 = 0;
    qmemcpy(sub_1002A80E0(&v5, 38), "The file storage is opened for reading", 38);
    sub_1002A8980(-2, &v5, "cvWriteInt", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 4626);
  }

  return (*(a1 + 312))(a1, a2, a3);
}

uint64_t sub_100289AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    v4 = -27;
LABEL_5:
    v6 = 0;
    v7 = 0;
    qmemcpy(sub_1002A80E0(&v6, 31), "Invalid pointer to file storage", 31);
    sub_1002A8980(v4, &v6, "cvWriteString", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 4642);
  }

  if (*a1 != 1280131417)
  {
    v4 = -5;
    goto LABEL_5;
  }

  if (!*(a1 + 8))
  {
    v6 = 0;
    v7 = 0;
    qmemcpy(sub_1002A80E0(&v6, 38), "The file storage is opened for reading", 38);
    sub_1002A8980(-2, &v6, "cvWriteString", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 4642);
  }

  return (*(a1 + 328))(a1, a2, a3, a4);
}

void *sub_100289C48(uint64_t a1, uint64_t a2, unsigned int a3, char *a4)
{
  v49 = a3;
  if (*(a1 + 392))
  {
    goto LABEL_4;
  }

  v6 = *(a1 + 396);
  if (v6)
  {
    if (v6 == 2)
    {
LABEL_4:

      sub_10028A580(a1, a2, a3, a4);
    }
  }

  else
  {
    sub_1002895CC(a1, 1);
  }

  *__dst = 0u;
  memset(v56, 0, sizeof(v56));
  if (*a1 != 1280131417)
  {
    v53 = 0;
    v54 = 0;
    qmemcpy(sub_1002A80E0(&v53, 31), "Invalid pointer to file storage", 31);
    sub_1002A8980(-5, &v53, "cvWriteRawData", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 4812);
  }

  if (!*(a1 + 8))
  {
    v53 = 0;
    v54 = 0;
    qmemcpy(sub_1002A80E0(&v53, 38), "The file storage is opened for reading", 38);
    sub_1002A8980(-2, &v53, "cvWriteRawData", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 4812);
  }

  if ((v49 & 0x80000000) != 0)
  {
    v53 = 0;
    v54 = 0;
    qmemcpy(sub_1002A80E0(&v53, 27), "Negative number of elements", 27);
    sub_1002A8980(-211, &v53, "cvWriteRawData", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 4815);
  }

  result = sub_10028A808(a4, v57);
  if (v49)
  {
    if (!a2)
    {
      v53 = 0;
      v54 = 0;
      v8 = sub_1002A80E0(&v53, 17);
      *(v8 + 16) = 114;
      *v8 = *"Null data pointer";
      sub_1002A8980(-27, &v53, "cvWriteRawData", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 4823);
    }

    if (result == 1)
    {
      LODWORD(v57[0]) *= v49;
      v49 = 1;
LABEL_20:
      v9 = 0;
      v50 = result;
      while (1)
      {
        v10 = 0;
        --v49;
        v11 = a2;
        do
        {
          v12 = &v57[v10];
          v13 = *v12;
          v14 = v12[1];
          LODWORD(v12) = (((v14 >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (v14 & 7))) & 3);
          v15 = (v11 + ((v9 + v12 - 1) & -v12));
          v52 = v10;
          if (v13 > 0)
          {
            if (v14 > 7)
            {
              v53 = 0;
              v54 = 0;
              *sub_1002A80E0(&v53, 16) = *"Unsupported type";
              sub_1002A8980(-210, &v53, "cvWriteRawData", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 4880);
            }

            for (i = 0; i != v13; ++i)
            {
              if (v14 <= 2)
              {
                if (v14)
                {
                  if (v14 != 1)
                  {
                    v23 = *v15;
                    BYTE7(v56[0]) = 0;
                    v20 = v56 + 7;
                    do
                    {
                      *--v20 = v23 % 0xA + 48;
                      v24 = v23 >= 0xA;
                      v23 /= 0xAu;
                    }

                    while (v24);
                    v22 = 2;
                    goto LABEL_93;
                  }

                  v36 = *v15;
                  if (v36 >= 0)
                  {
                    v37 = *v15;
                  }

                  else
                  {
                    v37 = -v36;
                  }

                  BYTE7(v56[0]) = 0;
                  v20 = v56 + 6;
                  do
                  {
                    *v20-- = v37 % 0xA + 48;
                    v21 = v37 > 9;
                    v37 /= 0xAu;
                  }

                  while (v21);
                  if (v36 < 0)
                  {
                    *v20 = 45;
                  }

                  else
                  {
                    ++v20;
                  }
                }

                else
                {
                  v29 = *v15;
                  BYTE7(v56[0]) = 0;
                  v20 = v56 + 7;
                  do
                  {
                    *--v20 = v29 % 0xA + 48;
                    v21 = v29 > 9;
                    v29 /= 0xAu;
                  }

                  while (v21);
                }

                v22 = 1;
              }

              else
              {
                if (v14 <= 4)
                {
                  if (v14 == 3)
                  {
                    v32 = *v15;
                    if (v32 >= 0)
                    {
                      v33 = *v15;
                    }

                    else
                    {
                      v33 = -v32;
                    }

                    BYTE7(v56[0]) = 0;
                    v20 = v56 + 6;
                    do
                    {
                      *v20-- = v33 % 0xA + 48;
                      v21 = v33 > 9;
                      v33 /= 0xAu;
                    }

                    while (v21);
                    if (v32 < 0)
                    {
                      *v20 = 45;
                    }

                    else
                    {
                      ++v20;
                    }

                    v22 = 2;
                  }

                  else
                  {
                    v18 = *v15;
                    if (*v15 >= 0)
                    {
                      v19 = *v15;
                    }

                    else
                    {
                      v19 = -v18;
                    }

                    BYTE7(v56[0]) = 0;
                    v20 = v56 + 6;
                    do
                    {
                      *v20-- = v19 % 0xA + 48;
                      v21 = v19 > 9;
                      v19 /= 0xAu;
                    }

                    while (v21);
                    if (v18 < 0)
                    {
                      *v20 = 45;
                    }

                    else
                    {
                      ++v20;
                    }

                    v22 = 4;
                  }

                  goto LABEL_93;
                }

                if (v14 == 5)
                {
                  v34 = *v15;
                  if ((~*v15 & 0x7F800000) == 0)
                  {
                    if (fabsf(v34) == INFINITY)
                    {
                      if (*v15 >= 0)
                      {
                        v35 = ".Inf";
                      }

                      else
                      {
                        v35 = "-.Inf";
                      }

                      v20 = __dst;
                      strcpy(__dst, v35);
                      v22 = 4;
                      goto LABEL_93;
                    }

                    strcpy(__dst, ".Nan");
                    goto LABEL_112;
                  }

                  v38 = rintf(v34);
                  if (v34 != v38)
                  {
                    v43 = __dst;
                    sprintf(__dst, "%.8e", v34);
                    if (__dst[0] == 45 || __dst[0] == 43)
                    {
                      v43 = &__dst[1];
                    }

                    do
                    {
                      v45 = *v43++;
                      v44 = v45;
                    }

                    while ((v45 - 48) < 0xA);
                    if (v44 == 44)
                    {
                      *(v43 - 1) = 46;
                    }

LABEL_112:
                    v20 = __dst;
                    v22 = 4;
                    goto LABEL_93;
                  }

                  v20 = __dst;
                  sprintf(__dst, "%d.", v38);
                  v22 = 4;
                }

                else
                {
                  if (v14 != 6)
                  {
                    v30 = *v15;
                    if (*v15 >= 0)
                    {
                      v31 = *v15;
                    }

                    else
                    {
                      v31 = -v30;
                    }

                    BYTE7(v56[0]) = 0;
                    v20 = v56 + 6;
                    do
                    {
                      *v20-- = v31 % 0xA + 48;
                      v21 = v31 > 9;
                      v31 /= 0xAu;
                    }

                    while (v21);
                    if (v30 < 0)
                    {
                      *v20 = 45;
                    }

                    else
                    {
                      ++v20;
                    }

                    v22 = 8;
                    goto LABEL_93;
                  }

                  v25 = *v15;
                  v26 = *v15;
                  v27 = HIDWORD(*v15);
                  if ((~v27 & 0x7FF00000) == 0)
                  {
                    v28 = v27 & 0x7FFFFFFF;
                    if (v26)
                    {
                      ++v28;
                    }

                    if (v28 <= 0x7FF00000)
                    {
                      if (v26 >= 0)
                      {
                        v42 = ".Inf";
                      }

                      else
                      {
                        v42 = "-.Inf";
                      }

                      v20 = __dst;
                      strcpy(__dst, v42);
                      v22 = 8;
                      goto LABEL_93;
                    }

                    strcpy(__dst, ".Nan");
                    goto LABEL_119;
                  }

                  v39 = rint(v25);
                  if (v25 != v39)
                  {
                    v46 = __dst;
                    sprintf(__dst, "%.16e", *v15);
                    if (__dst[0] == 45 || __dst[0] == 43)
                    {
                      v46 = &__dst[1];
                    }

                    do
                    {
                      v48 = *v46++;
                      v47 = v48;
                    }

                    while ((v48 - 48) < 0xA);
                    if (v47 == 44)
                    {
                      *(v46 - 1) = 46;
                    }

LABEL_119:
                    v20 = __dst;
                    v22 = 8;
                    goto LABEL_93;
                  }

                  v20 = __dst;
                  sprintf(__dst, "%d.", v39);
                  v22 = 8;
                }
              }

LABEL_93:
              v40 = *(a1 + 4);
              if (v40 == 8)
              {
                v17 = strlen(v20);
                result = sub_10028AAB8(a1, 0, v20, v17);
              }

              else if (v40 == 16)
              {
                result = sub_10028ADF4(a1, 0, v20);
              }

              else
              {
                if ((v14 - 5) <= 1)
                {
                  v41 = strlen(v20);
                  if (v41)
                  {
                    if (v20[v41 - 1] == 46)
                    {
                      *&__dst[v41] = 48;
                    }
                  }
                }

                result = sub_10028B4EC(a1, 0, v20);
              }

              v15 = (v15 + v22);
            }
          }

          v11 = a2;
          v9 = v15 - a2;
          v10 = v52 + 1;
        }

        while (v52 + 1 != v50);
        if (!v49)
        {
          return result;
        }
      }
    }

    if (result >= 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

void sub_10028A4D8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_100008E3C(a1);
  }

  _Unwind_Resume(a1);
}

void sub_10028A580(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v5 = a3;
  if (a1)
  {
    if (*a1 != 1280131417)
    {
      v10 = 0;
      v11 = 0;
      qmemcpy(sub_1002A80E0(&v10, 31), "Invalid pointer to file storage", 31);
      sub_1002A8980(-5, &v10, "cvWriteRawDataBase64", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 8388);
    }

    if (!*(a1 + 8))
    {
      v10 = 0;
      v11 = 0;
      qmemcpy(sub_1002A80E0(&v10, 38), "The file storage is opened for reading", 38);
      sub_1002A8980(-2, &v10, "cvWriteRawDataBase64", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 8388);
    }

    sub_100289404(a1, 1);
    v8 = *(a1 + 396);
    if (v8 != 2)
    {
      if (v8)
      {
        v10 = 0;
        v11 = 0;
        qmemcpy(sub_1002A80E0(&v10, 37), "Base64 should not be used at present.", 37);
        sub_1002A8980(-2, &v10, "cvWriteRawDataBase64", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 8398);
      }

      sub_1002895CC(a1, 2);
    }

    v9 = *(a1 + 384);
    sub_1002934B8(v9, a4);
    sub_10029B70C(&v10, a2, v5, (v9 + 1));
    sub_10029371C(*v9, &v10);
  }

  v10 = 0;
  v11 = 0;
  *sub_1002A80E0(&v10, 2) = 29542;
  sub_1002A8980(-215, &v10, "cvWriteRawDataBase64", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 8387);
}

const char *sub_10028A808(const char *result, _DWORD *a2)
{
  if (result)
  {
    v3 = result;
    v4 = strlen(result);
    v5 = v4;
    if (!v4)
    {
      return 0;
    }

    *a2 = 0;
    if (v4 < 1)
    {
      return 0;
    }

    v6 = 0;
    v7 = 0;
    while (1)
    {
      v9 = &v3[v6];
      v10 = *v9;
      v8 = v10 - 48;
      if ((v10 - 48) > 9)
      {
        v11 = memchr("ucwsifdr", v10, 9uLL);
        if (!v11)
        {
          v16 = 0;
          v17 = 0;
          qmemcpy(sub_1002A80E0(&v16, 31), "Invalid data type specification", 31);
          sub_1002A8980(-5, &v16, "icvDecodeFormat", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 4709);
        }

        v12 = &a2[v7];
        v13 = *v12;
        if (*v12)
        {
          v14 = v11 - "ucwsifdr";
          v12[1] = v14;
          if (v7 > 0)
          {
            goto LABEL_18;
          }
        }

        else
        {
          v13 = 1;
          v14 = v11 - "ucwsifdr";
          *v12 = 1;
          v12[1] = v14;
          if (v7 > 0)
          {
LABEL_18:
            v15 = &a2[v7];
            if (v14 == *(v15 - 1))
            {
              v8 = 0;
              *(v15 - 2) += v13;
            }

            else
            {
              if (v7 >= 0xFE)
              {
                v16 = 0;
                v17 = 0;
                qmemcpy(sub_1002A80E0(&v16, 32), "Too long data type specification", 32);
                sub_1002A8980(-5, &v16, "icvDecodeFormat", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 4719);
              }

              v8 = 0;
              v7 += 2;
            }

            goto LABEL_6;
          }
        }

        v8 = 0;
        v7 += 2;
      }

      else
      {
        if (*(v9 + 1) - 48 <= 9)
        {
          v16 = 0;
          v8 = strtol(v9, &v16, 10);
          v6 = ~v3 + v16;
        }

        if (v8 <= 0)
        {
          v16 = 0;
          v17 = 0;
          qmemcpy(sub_1002A80E0(&v16, 31), "Invalid data type specification", 31);
          sub_1002A8980(-5, &v16, "icvDecodeFormat", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 4701);
        }
      }

LABEL_6:
      a2[v7] = v8;
      if (++v6 >= v5)
      {
        return (v7 / 2);
      }
    }
  }

  return result;
}

void *sub_10028AAB8(uint64_t a1, const char *a2, const void *a3, int a4)
{
  sub_100289404(a1, 0);
  v8 = *(a1 + 396);
  if (v8 == 2)
  {
    v27 = 0;
    v28 = 0;
    qmemcpy(sub_1002A80E0(&v27, 38), "Currently only Base64 data is allowed.", 38);
    sub_1002A8980(-2, &v27, "icvXMLWriteScalar", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 3060);
  }

  if (!v8)
  {
    sub_1002895CC(a1, 1);
  }

  if ((*(a1 + 68) & 7) != 6 && (!a2 || (*(a1 + 68) & 7u) > 4))
  {
    v20 = *(a1 + 120);
    if (a2)
    {
      v27 = 0;
      v28 = 0;
      qmemcpy(sub_1002A80E0(&v27, 49), "elements with keys can not be written to sequence", 49);
      sub_1002A8980(-5, &v27, "icvXMLWriteScalar", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 3078);
    }

    v21 = v20 - *(a1 + 128) + a4;
    *(a1 + 68) = 5;
    if (v21 <= *(a1 + 144))
    {
      v22 = *(a1 + 128);
      if (v20 <= v22)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v22 = *(a1 + 128);
      if (v21 - *(a1 + 64) > 10)
      {
LABEL_24:
        v23 = *(a1 + 120);
        v24 = *(a1 + 88);
        if (v23 > &v22[v24])
        {
          *v23 = 10;
          sub_10028614C(a1, *(a1 + 128));
          v22 = *(a1 + 128);
          LODWORD(v24) = *(a1 + 88);
        }

        v25 = *(a1 + 64);
        if (v24 == v25)
        {
          v26 = v24;
        }

        else
        {
          v26 = v25;
          memset(v22, 32, v25);
          *(a1 + 88) = v25;
          v22 = *(a1 + 128);
        }

        v20 = &v22[v26];
        *(a1 + 120) = &v22[v26];
        goto LABEL_33;
      }

      if (v20 <= v22)
      {
        goto LABEL_28;
      }
    }

    if (*(v20 - 1) == 62)
    {
      goto LABEL_24;
    }

LABEL_28:
    if (v20 > &v22[*(a1 + 64)] && *(v20 - 1) != 62)
    {
      *v20++ = 32;
    }

LABEL_33:
    result = memcpy(v20, a3, a4);
    *(a1 + 120) = &v20[a4];
    return result;
  }

  sub_10029433C(a1, a2, 1, 0, 0);
  v9 = *(a1 + 120);
  v10 = a4;
  v11 = *(a1 + 136);
  if (&v9[a4] >= v11)
  {
    v12 = *(a1 + 128);
    v13 = v9 - v12;
    v14 = (3 * (v11 - v12) + ((3 * (v11 - v12)) >> 63)) >> 1;
    if (v13 + a4 <= v14)
    {
      v15 = v14;
    }

    else
    {
      v15 = v13 + a4;
    }

    v16 = sub_1001D90AC(v15 + 256);
    v17 = v16;
    v18 = *(a1 + 128);
    *(a1 + 120) = &v16[*(a1 + 120) - v18];
    if (v13 >= 1)
    {
      memcpy(v16, v18, v13 & 0x7FFFFFFF);
    }

    *(a1 + 128) = v17;
    *(a1 + 136) = &v17[v15];
    v9 = &v17[v13];
  }

  memcpy(v9, a3, v10);
  *(a1 + 120) = &v9[v10];
  return sub_10029433C(a1, a2, 2, 0, 0);
}

char *sub_10028ADF4(uint64_t a1, const char *a2, const char *a3)
{
  sub_100289404(a1, 0);
  v6 = *(a1 + 396);
  if (v6 == 2)
  {
    v48 = 0;
    v49 = 0;
    qmemcpy(sub_1002A80E0(&v48, 36), "At present, output Base64 data only.", 36);
    sub_1002A8980(-2, &v48, "icvYMLWrite", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 1899);
  }

  if (!v6)
  {
    sub_1002895CC(a1, 1);
  }

  v7 = *(a1 + 68);
  if (a2 && !*a2)
  {
    a2 = 0;
  }

  if ((*(a1 + 68) & 7u) < 5)
  {
    *(a1 + 12) = 0;
    if (a2)
    {
      v7 = 38;
    }

    else
    {
      v7 = 37;
    }

    if (!a2)
    {
      goto LABEL_32;
    }
  }

  else
  {
    if (((*(a1 + 68) & 7) == 6) != (a2 != 0))
    {
      v48 = 0;
      v49 = 0;
      qmemcpy(sub_1002A80E0(&v48, 85), "An attempt to add element without a key to a map, or add element with key to sequence", 85);
      sub_1002A8980(-5, &v48, "icvYMLWrite", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 1916);
    }

    if (!a2)
    {
LABEL_32:
      v9 = 0;
      if (!a3)
      {
        goto LABEL_33;
      }

LABEL_21:
      v11 = strlen(a3);
      v12 = *(a1 + 120);
      if ((v7 & 8) != 0)
      {
        goto LABEL_34;
      }

LABEL_22:
      result = *(a1 + 128);
      v14 = *(a1 + 88);
      if (v12 > &result[v14])
      {
        *v12 = 10;
        sub_10028614C(a1, *(a1 + 128));
        result = *(a1 + 128);
        LODWORD(v14) = *(a1 + 88);
      }

      v15 = *(a1 + 64);
      if (v14 == v15)
      {
        v16 = &result[v14];
        *(a1 + 120) = v16;
        if ((v7 & 7) == 6)
        {
LABEL_45:
          if (!a2)
          {
            goto LABEL_70;
          }

          goto LABEL_46;
        }
      }

      else
      {
        memset(result, 32, v15);
        *(a1 + 88) = v15;
        result = *(a1 + 128);
        v16 = &result[v15];
        *(a1 + 120) = v16;
        if ((v7 & 7) == 6)
        {
          goto LABEL_45;
        }
      }

      *v16 = 45;
      if (a3)
      {
        v16[1] = 32;
        v16 += 2;
        if (!a2)
        {
          goto LABEL_70;
        }
      }

      else
      {
        ++v16;
        if (!a2)
        {
          goto LABEL_70;
        }
      }

      goto LABEL_46;
    }
  }

  v8 = strlen(a2);
  if (!v8)
  {
    v48 = 0;
    v49 = 0;
    v17 = sub_1002A80E0(&v48, 19);
    *(v17 + 15) = 2037674093;
    *v17 = *"The key is an empty";
    sub_1002A8980(-5, &v48, "icvYMLWrite", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 1928);
  }

  v9 = v8;
  if (v8 > 4096)
  {
    v48 = 0;
    v49 = 0;
    v10 = sub_1002A80E0(&v48, 19);
    *(v10 + 15) = 1735290732;
    *v10 = *"The key is too long";
    sub_1002A8980(-5, &v48, "icvYMLWrite", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 1931);
  }

  if (a3)
  {
    goto LABEL_21;
  }

LABEL_33:
  v11 = 0;
  v12 = *(a1 + 120);
  if ((v7 & 8) == 0)
  {
    goto LABEL_22;
  }

LABEL_34:
  if ((v7 & 0x20) == 0)
  {
    *v12++ = 44;
  }

  result = *(a1 + 128);
  v18 = v11 + v9 + v12 - result;
  if (v18 <= *(a1 + 144) || (v19 = *(a1 + 64), v18 - v19 < 11))
  {
    *v12 = 32;
    v16 = v12 + 1;
    goto LABEL_45;
  }

  *(a1 + 120) = v12;
  v20 = *(a1 + 88);
  if (v12 > &result[v20])
  {
    *v12 = 10;
    sub_10028614C(a1, *(a1 + 128));
    result = *(a1 + 128);
    LODWORD(v20) = *(a1 + 88);
    v19 = *(a1 + 64);
  }

  if (v20 != v19)
  {
    memset(result, 32, v19);
    *(a1 + 88) = v19;
    result = *(a1 + 128);
  }

  v16 = &result[v19];
  *(a1 + 120) = v16;
  if (!a2)
  {
LABEL_70:
    if (!a3)
    {
      goto LABEL_79;
    }

    goto LABEL_71;
  }

LABEL_46:
  v21 = *a2;
  if (v21 != 95 && (v21 & 0xFFFFFFDF) - 65 >= 0x1A)
  {
    v48 = 0;
    v49 = 0;
    qmemcpy(sub_1002A80E0(&v48, 33), "Key must start with a letter or _", 33);
    sub_1002A8980(-5, &v48, "icvYMLWrite", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 1966);
  }

  v22 = *(a1 + 136);
  if (&v16[v9] >= v22)
  {
    v23 = *(a1 + 128);
    v24 = v16 - v23;
    v25 = (3 * (v22 - v23) + ((3 * (v22 - v23)) >> 63)) >> 1;
    v26 = v9 + v16 - v23;
    if (v26 <= v25)
    {
      v27 = v25;
    }

    else
    {
      v27 = v26;
    }

    result = sub_1001D90AC(v27 + 256);
    v28 = result;
    v29 = *(a1 + 128);
    *(a1 + 120) = &result[*(a1 + 120) - v29];
    if (v24 >= 1)
    {
      result = memcpy(result, v29, v24 & 0x7FFFFFFF);
    }

    *(a1 + 128) = v28;
    *(a1 + 136) = &v28[v27];
    v16 = &v28[v24];
  }

  if (v9 >= 1)
  {
    v30 = v9;
    v31 = v16;
    do
    {
      v33 = *a2++;
      v32 = v33;
      *v31 = v33;
      if ((v33 - 58) <= 0xF5u && ((v32 & 0xDF) - 91) <= 0xE5u)
      {
        v34 = v32 - 32;
        v35 = v34 > 0x3F;
        v36 = (1 << v34) & 0x8000000000002001;
        if (v35 || v36 == 0)
        {
          v48 = 0;
          v49 = 0;
          qmemcpy(sub_1002A80E0(&v48, 80), "Key names may only contain alphanumeric characters [a-zA-Z0-9], '-', '_' and ' '", 80);
          sub_1002A8980(-5, &v48, "icvYMLWrite", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 1976);
        }
      }

      ++v31;
      --v30;
    }

    while (v30);
  }

  v38 = &v16[v9];
  *v38 = 58;
  v16 = v38 + 1;
  if (!a3 || (v7 & 8) != 0)
  {
    goto LABEL_70;
  }

  v16 = v38 + 2;
  v38[1] = 32;
LABEL_71:
  v39 = *(a1 + 136);
  if (&v16[v11] >= v39)
  {
    v40 = *(a1 + 128);
    v41 = v16 - v40;
    v42 = (3 * (v39 - v40) + ((3 * (v39 - v40)) >> 63)) >> 1;
    v43 = v11 + v16 - v40;
    if (v43 <= v42)
    {
      v44 = v42;
    }

    else
    {
      v44 = v43;
    }

    v45 = sub_1001D90AC(v44 + 256);
    v46 = v45;
    v47 = *(a1 + 128);
    *(a1 + 120) = &v45[*(a1 + 120) - v47];
    if (v41 >= 1)
    {
      memcpy(v45, v47, v41 & 0x7FFFFFFF);
    }

    *(a1 + 128) = v46;
    *(a1 + 136) = &v46[v44];
    v16 = &v46[v41];
  }

  result = memcpy(v16, a3, v11);
  v16 += v11;
LABEL_79:
  *(a1 + 120) = v16;
  *(a1 + 68) = v7 & 0xFFFFFFDF;
  return result;
}

void sub_10028B45C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1002A8124(va);
  _Unwind_Resume(a1);
}

char *sub_10028B4EC(uint64_t a1, const char *a2, const char *a3)
{
  sub_100289404(a1, 0);
  v6 = *(a1 + 396);
  if (v6 == 2)
  {
    v54 = 0;
    v55 = 0;
    qmemcpy(sub_1002A80E0(&v54, 36), "At present, output Base64 data only.", 36);
    sub_1002A8980(-2, &v54, "icvJSONWrite", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 3855);
  }

  if (!v6)
  {
    sub_1002895CC(a1, 1);
  }

  if (!a2)
  {
    v10 = 0;
    v8 = 0;
    if (a3)
    {
      goto LABEL_19;
    }

    goto LABEL_13;
  }

  if (!*a2)
  {
    v10 = 0;
    a2 = 0;
    v8 = 0;
    if (a3)
    {
      goto LABEL_19;
    }

LABEL_13:
    v11 = 0;
    v12 = *(a1 + 68);
    v13 = v12 & 7;
    if (v13 >= 5)
    {
      goto LABEL_20;
    }

LABEL_14:
    *(a1 + 12) = 0;
    if (v10)
    {
      v12 = 38;
    }

    else
    {
      v12 = 37;
    }

    goto LABEL_22;
  }

  v7 = strlen(a2);
  if (!v7)
  {
    v54 = 0;
    v55 = 0;
    v14 = sub_1002A80E0(&v54, 19);
    *(v14 + 15) = 2037674093;
    *v14 = *"The key is an empty";
    sub_1002A8980(-5, &v54, "icvJSONWrite", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 3867);
  }

  v8 = v7;
  if (v7 > 4096)
  {
    v54 = 0;
    v55 = 0;
    v9 = sub_1002A80E0(&v54, 19);
    *(v9 + 15) = 1735290732;
    *v9 = *"The key is too long";
    sub_1002A8980(-5, &v54, "icvJSONWrite", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 3869);
  }

  v10 = 1;
  if (!a3)
  {
    goto LABEL_13;
  }

LABEL_19:
  v11 = strlen(a3);
  v12 = *(a1 + 68);
  v13 = v12 & 7;
  if (v13 < 5)
  {
    goto LABEL_14;
  }

LABEL_20:
  if (v10 != (v13 == 6))
  {
    v54 = 0;
    v55 = 0;
    qmemcpy(sub_1002A80E0(&v54, 85), "An attempt to add element without a key to a map, or add element with key to sequence", 85);
    sub_1002A8980(-5, &v54, "icvJSONWrite", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 3881);
  }

LABEL_22:
  if ((v12 & 8) == 0)
  {
    v15 = *(a1 + 120);
    if ((v12 & 0x20) != 0)
    {
      result = *(a1 + 128);
      v17 = *(a1 + 88);
      if (v15 <= &result[v17])
      {
LABEL_38:
        v20 = *(a1 + 64);
        if (v17 == v20)
        {
          v22 = v17;
          goto LABEL_40;
        }

        v22 = v20;
        goto LABEL_43;
      }
    }

    else
    {
      strcpy(v15, ",\n");
      sub_10028614C(a1, *(a1 + 128));
      result = *(a1 + 128);
      *(a1 + 120) = result;
      v15 = result;
      v17 = *(a1 + 88);
      if (result <= &result[v17])
      {
        goto LABEL_38;
      }
    }

    *v15 = 10;
    sub_10028614C(a1, *(a1 + 128));
    result = *(a1 + 128);
    LODWORD(v17) = *(a1 + 88);
    goto LABEL_38;
  }

  v18 = *(a1 + 120);
  if ((v12 & 0x20) == 0)
  {
    *v18++ = 44;
  }

  result = *(a1 + 128);
  v19 = v11 + v8 + v18 - result;
  if (*(a1 + 144) >= v19 || (v20 = *(a1 + 64), v19 - v20 < 11))
  {
    *v18 = 32;
    v23 = v18 + 1;
    if (!v10)
    {
      goto LABEL_66;
    }

    goto LABEL_44;
  }

  *(a1 + 120) = v18;
  v21 = *(a1 + 88);
  if (v18 > &result[v21])
  {
    *v18 = 10;
    sub_10028614C(a1, *(a1 + 128));
    result = *(a1 + 128);
    LODWORD(v21) = *(a1 + 88);
    v20 = *(a1 + 64);
  }

  v22 = v20;
  if (v21 == v20)
  {
LABEL_40:
    v23 = &result[v22];
    *(a1 + 120) = &result[v22];
    if (!v10)
    {
      goto LABEL_66;
    }

    goto LABEL_44;
  }

LABEL_43:
  memset(result, 32, v22);
  *(a1 + 88) = v20;
  result = *(a1 + 128);
  v23 = &result[v22];
  *(a1 + 120) = &result[v22];
  if (!v10)
  {
    goto LABEL_66;
  }

LABEL_44:
  v24 = *a2;
  if (v24 != 95 && (v24 & 0xFFFFFFDF) - 65 >= 0x1A)
  {
    v54 = 0;
    v55 = 0;
    qmemcpy(sub_1002A80E0(&v54, 33), "Key must start with a letter or _", 33);
    sub_1002A8980(-5, &v54, "icvJSONWrite", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 3923);
  }

  v53 = v11;
  v25 = *(a1 + 136);
  if (&v23[v8] >= v25)
  {
    v26 = *(a1 + 128);
    v27 = v23 - v26;
    v28 = (3 * (v25 - v26) + ((3 * (v25 - v26)) >> 63)) >> 1;
    v29 = v23 - v26 + v8;
    if (v29 <= v28)
    {
      v30 = v28;
    }

    else
    {
      v30 = v29;
    }

    result = sub_1001D90AC(v30 + 256);
    v31 = result;
    v32 = *(a1 + 128);
    *(a1 + 120) = &result[*(a1 + 120) - v32];
    if (v27 >= 1)
    {
      result = memcpy(result, v32, v27 & 0x7FFFFFFF);
    }

    *(a1 + 128) = v31;
    *(a1 + 136) = &v31[v30];
    v23 = &v31[v27];
  }

  *v23 = 34;
  v33 = v23 + 1;
  if (v8)
  {
    v34 = v33;
    v35 = v8;
    do
    {
      v37 = *a2++;
      v36 = v37;
      *v34 = v37;
      if ((v37 - 58) <= 0xF5u && ((v36 & 0xDF) - 91) <= 0xE5u)
      {
        v38 = v36 - 32;
        v39 = v38 > 0x3F;
        v40 = (1 << v38) & 0x8000000000002001;
        if (v39 || v40 == 0)
        {
          v54 = 0;
          v55 = 0;
          qmemcpy(sub_1002A80E0(&v54, 80), "Key names may only contain alphanumeric characters [a-zA-Z0-9], '-', '_' and ' '", 80);
          sub_1002A8980(-5, &v54, "icvJSONWrite", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 3934);
        }
      }

      ++v34;
      --v35;
    }

    while (v35);
  }

  v42 = &v33[v8];
  *v42 = 14882;
  v23 = &v33[v8 + 3];
  v42[2] = 32;
  v11 = v53;
LABEL_66:
  if (a3)
  {
    v43 = *(a1 + 136);
    if (&v23[v11] >= v43)
    {
      v44 = *(a1 + 128);
      v45 = v23 - v44;
      v46 = (3 * (v43 - v44) + ((3 * (v43 - v44)) >> 63)) >> 1;
      v47 = v11;
      v48 = v23 - v44 + v11;
      if (v48 <= v46)
      {
        v49 = v46;
      }

      else
      {
        v49 = v48;
      }

      v50 = sub_1001D90AC(v49 + 256);
      v51 = v50;
      v52 = *(a1 + 128);
      *(a1 + 120) = &v50[*(a1 + 120) - v52];
      if (v45 >= 1)
      {
        memcpy(v50, v52, v45 & 0x7FFFFFFF);
      }

      *(a1 + 128) = v51;
      *(a1 + 136) = &v51[v49];
      v23 = &v51[v45];
      v11 = v47;
    }

    result = memcpy(v23, a3, v11);
    v23 += v11;
  }

  *(a1 + 120) = v23;
  *(a1 + 68) = v12 & 0xFFFFFFDF;
  return result;
}

void sub_10028BB2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1002A8124(va);
  _Unwind_Resume(a1);
}

double sub_10028BBBC(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    v3 = -27;
LABEL_5:
    v6 = 0;
    v7 = 0;
    qmemcpy(sub_1002A80E0(&v6, 31), "Invalid pointer to file storage", 31);
    sub_1002A8980(v3, &v6, "cvStartReadRawData", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 4920);
  }

  if (*a1 != 1280131417)
  {
    v3 = -5;
    goto LABEL_5;
  }

  if (!a2 || !a3)
  {
    v6 = 0;
    v7 = 0;
    qmemcpy(sub_1002A80E0(&v6, 42), "Null pointer to source file node or reader", 42);
    sub_1002A8980(-27, &v6, "cvStartReadRawData", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 4923);
  }

  v4 = *a2 & 7;
  if ((v4 - 1) > 1)
  {
    if (v4)
    {
      if (v4 != 5)
      {
        v6 = 0;
        v7 = 0;
        qmemcpy(sub_1002A80E0(&v6, 56), "The file node should be a numerical scalar or a sequence", 56);
        sub_1002A8980(-5, &v6, "cvStartReadRawData", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 4943);
      }

      sub_100232554(*(a2 + 16), a3, 0);
    }

    else
    {
      result = 0.0;
      *(a3 + 32) = 0u;
      *(a3 + 48) = 0u;
      *a3 = 0u;
      *(a3 + 16) = 0u;
    }
  }

  else
  {
    *(a3 + 32) = a2;
    *(a3 + 40) = a2 + 64;
    *(a3 + 24) = a2;
    *(a3 + 8) = 0;
  }

  return result;
}

void *sub_10028BDD8(_DWORD *a1, void *a2, int a3, uint64_t a4, const char *a5)
{
  v27 = a4;
  v28 = a3;
  if (!a1)
  {
    v7 = -27;
LABEL_5:
    v29 = 0;
    v30 = 0;
    qmemcpy(sub_1002A80E0(&v29, 31), "Invalid pointer to file storage", 31);
    sub_1002A8980(v7, &v29, "cvReadRawDataSlice", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 4955);
  }

  if (*a1 != 1280131417)
  {
    v7 = -5;
    goto LABEL_5;
  }

  if (!a2 || !a4)
  {
    v29 = 0;
    v30 = 0;
    qmemcpy(sub_1002A80E0(&v29, 43), "Null pointer to reader or destination array", 43);
    sub_1002A8980(-27, &v29, "cvReadRawDataSlice", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 4958);
  }

  if (a3 != 1 && !a2[1])
  {
    v29 = 0;
    v30 = 0;
    qmemcpy(sub_1002A80E0(&v29, 51), "The readed sequence is a scalar, thus len must be 1", 51);
    sub_1002A8980(-201, &v29, "cvReadRawDataSlice", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 4961);
  }

  v8 = sub_10028A808(a5, v31);
  result = sub_10028C47C(a5);
  v10 = v8;
  v26 = result;
LABEL_13:
  v11 = 0;
  v12 = 0;
  v13 = v27;
  while (1)
  {
    v14 = &v31[v11];
    v15 = *v14;
    v16 = v14[1];
    LODWORD(v14) = (((v16 >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (v16 & 7))) & 3);
    v17 = (v13 + ((v12 + v14 - 1) & -v14));
    if (v15 >= 1)
    {
      break;
    }

LABEL_14:
    v13 = v27;
    v12 = v17 - v27;
    if (++v11 == v10)
    {
      v27 += v26;
      goto LABEL_13;
    }
  }

  v18 = 0;
  while (1)
  {
    v19 = a2[3];
    if ((*v19 & 7) != 1)
    {
      if ((*v19 & 7) != 2)
      {
        v29 = 0;
        v30 = 0;
        qmemcpy(sub_1002A80E0(&v29, 46), "The sequence element is not a numerical scalar", 46);
        sub_1002A8980(-2, &v29, "cvReadRawDataSlice", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 5077);
      }

      v20 = *(v19 + 16);
      if (v16 > 3)
      {
        if (v16 <= 5)
        {
          if (v16 == 4)
          {
            *v17 = rint(v20);
          }

          else
          {
            v23 = v20;
            *v17 = v23;
          }

          ++v17;
          goto LABEL_63;
        }

        if (v16 == 6)
        {
          *v17 = v20;
          v17 += 2;
          goto LABEL_63;
        }

        if (v16 != 7)
        {
LABEL_79:
          v29 = 0;
          v30 = 0;
          *sub_1002A80E0(&v29, 16) = *"Unsupported type";
          sub_1002A8980(-210, &v29, "cvReadRawDataSlice", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 5071);
        }

        v19 = rint(v20);
LABEL_51:
        *v17 = v19;
        v17 += 2;
        goto LABEL_63;
      }

      if (v16 <= 1)
      {
        if (v16)
        {
          if (v16 != 1)
          {
            goto LABEL_79;
          }

          v19 = rint(v20);
          goto LABEL_28;
        }

        v19 = rint(v20);
LABEL_53:
        LODWORD(v19) = v19 & ~(v19 >> 31);
        v21 = v19 < 255;
        v22 = -1;
        goto LABEL_54;
      }

      if (v16 != 2)
      {
        v19 = rint(v20);
LABEL_46:
        if (v19 <= -32768)
        {
          LODWORD(v19) = -32768;
        }

        v24 = 0x7FFF;
        goto LABEL_60;
      }

      v19 = rint(v20);
LABEL_59:
      LODWORD(v19) = v19 & ~(v19 >> 31);
      v24 = 0xFFFF;
LABEL_60:
      if (v19 >= v24)
      {
        LOWORD(v19) = v24;
      }

      *v17 = v19;
      v17 = (v17 + 2);
      goto LABEL_63;
    }

    LODWORD(v19) = *(v19 + 16);
    if (v16 <= 3)
    {
      if (v16 <= 1)
      {
        if (!v16)
        {
          goto LABEL_53;
        }

        if (v16 != 1)
        {
          goto LABEL_78;
        }

LABEL_28:
        if (v19 <= -128)
        {
          LODWORD(v19) = -128;
        }

        v21 = v19 < 127;
        v22 = 127;
LABEL_54:
        if (!v21)
        {
          LOBYTE(v19) = v22;
        }

        *v17 = v19;
        v17 = (v17 + 1);
        goto LABEL_63;
      }

      if (v16 != 2)
      {
        goto LABEL_46;
      }

      goto LABEL_59;
    }

    if (v16 > 5)
    {
      if (v16 == 6)
      {
        *v17 = v19;
        v17 += 2;
        goto LABEL_63;
      }

      if (v16 != 7)
      {
LABEL_78:
        v29 = 0;
        v30 = 0;
        *sub_1002A80E0(&v29, 16) = *"Unsupported type";
        sub_1002A8980(-210, &v29, "cvReadRawDataSlice", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 5021);
      }

      goto LABEL_51;
    }

    if (v16 == 4)
    {
      *v17 = v19;
    }

    else
    {
      *v17 = v19;
    }

    ++v17;
LABEL_63:
    v25 = a2[3] + 32;
    a2[3] = v25;
    if (v25 >= a2[5])
    {
      result = sub_10023323C(a2, 1);
    }

    if (v28 - 1 == v18)
    {
      break;
    }

    if (v15 == ++v18)
    {
      v28 -= v15;
      v10 = v8;
      goto LABEL_14;
    }
  }

  if (v28 != v15 || v8 - 1 != v11)
  {
    v29 = 0;
    v30 = 0;
    qmemcpy(sub_1002A80E0(&v29, 60), "The sequence slice does not fit an integer number of records", 60);
    sub_1002A8980(-201, &v29, "cvReadRawDataSlice", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 5092);
  }

  if (!a2[1])
  {
    a2[3] -= 32;
  }

  return result;
}

void sub_10028C3BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a2)
  {
    sub_100008E3C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10028C47C(const char *a1)
{
  v1 = a1;
  v2 = sub_10028A808(a1, &v16);
  if (v2 < 1)
  {
    v6 = -1;
  }

  else
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = (((*(&v16 + v3 + 1) >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (*(&v16 + v3 + 1) & 7))) & 3);
      v4 = ((v4 + v5 - 1) & -v5) + v5 * *(&v16 + v3);
      v3 += 2;
    }

    while (v3 < (2 * v2));
    v6 = v4 - 1;
  }

  v7 = 0;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v12 = *v1;
        if (v12 <= 0x68)
        {
          break;
        }

        if (v7 <= 1)
        {
          v8 = 1;
        }

        else
        {
          v8 = v7;
        }

        if (v7 <= 2)
        {
          v9 = 2;
        }

        else
        {
          v9 = v7;
        }

        if (v12 != 119)
        {
          v9 = v7;
        }

        if (v12 != 117)
        {
          v8 = v9;
        }

        if (v7 <= 4)
        {
          v10 = 4;
        }

        else
        {
          v10 = v7;
        }

        if (v7 <= 2)
        {
          v11 = 2;
        }

        else
        {
          v11 = v7;
        }

        if (v12 == 115)
        {
          v7 = v11;
        }

        if (v12 == 105)
        {
          v7 = v10;
        }

        if (*v1 > 0x74u)
        {
          v7 = v8;
        }

        ++v1;
      }

      if (*v1 <= 0x63u)
      {
        break;
      }

      if (v7 <= 4)
      {
        v13 = 4;
      }

      else
      {
        v13 = v7;
      }

      if (v12 == 102)
      {
        v7 = v13;
      }

      if (v12 == 100)
      {
        v7 = 8;
      }

      ++v1;
    }

    if (v12 != 99)
    {
      break;
    }

    if (v7 <= 1)
    {
      v7 = 1;
    }

LABEL_43:
    ++v1;
  }

  if (*v1)
  {
    goto LABEL_43;
  }

  v14 = (((v17 >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (v17 & 7))) & 3);
  return (((v6 + v14) & -v14) + v7 - 1) & -v7;
}

void *sub_10028C630(_DWORD *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if (!a2 || !a3)
  {
    v10[0] = 0;
    v10[1] = 0;
    qmemcpy(sub_1002A80E0(v10, 54), "Null pointers to source file node or destination array", 54);
    sub_1002A8980(-27, v10, "cvReadRawData", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 5106);
  }

  sub_10028BBBC(a1, a2, v11);
  if ((*a2 & 7) == 5)
  {
    v8 = *(*(a2 + 16) + 40);
  }

  else
  {
    v8 = 1;
  }

  return sub_10028BDD8(a1, v11, v8, a3, a4);
}

void *sub_10028C72C(uint64_t a1)
{
  if (!a1 || *(a1 + 4) != 72)
  {
    v18 = 0;
    v19 = 0;
    v2 = sub_1002A80E0(&v18, 17);
    *(v2 + 16) = 111;
    *v2 = *"Invalid type info";
    sub_1002A8980(-201, &v18, "cvRegisterType", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 6559);
  }

  if (!*(a1 + 32) || !*(a1 + 40) || !*(a1 + 48) || !*(a1 + 56))
  {
    v18 = 0;
    v19 = 0;
    qmemcpy(sub_1002A80E0(&v18, 81), "Some of required function pointers (is_instance, release, read or write) are NULL", 81);
    sub_1002A8980(-27, &v18, "cvRegisterType", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 6565);
  }

  v3 = *(a1 + 24);
  v4 = *v3;
  if (v4 != 95 && (v4 & 0xFFFFFFDF) - 65 >= 0x1A)
  {
    v18 = 0;
    v19 = 0;
    qmemcpy(sub_1002A80E0(&v18, 41), "Type name should start with a letter or _", 41);
    sub_1002A8980(-5, &v18, "cvRegisterType", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 6569);
  }

  v6 = strlen(v3);
  v7 = v6;
  if (v6 >= 1)
  {
    v8 = 0;
    do
    {
      v9 = *(*(a1 + 24) + v8);
      if ((v9 - 58) <= 0xF5u && ((v9 & 0xDF) - 91) <= 0xE5u)
      {
        v10 = *(*(a1 + 24) + v8);
        if (v10 != 45 && v10 != 95)
        {
          v18 = 0;
          v19 = 0;
          qmemcpy(sub_1002A80E0(&v18, 54), "Type name should contain only letters, digits, - and _", 54);
          sub_1002A8980(-5, &v18, "cvRegisterType", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 6578);
        }
      }

      ++v8;
    }

    while ((v6 & 0x7FFFFFFF) != v8);
  }

  v11 = sub_1001D90AC(v6 + 73);
  v13 = *(a1 + 32);
  v12 = *(a1 + 48);
  v14 = *(a1 + 64);
  v11[1] = *(a1 + 16);
  *v11 = *a1;
  *(v11 + 8) = v14;
  v11[2] = v13;
  v11[3] = v12;
  *(v11 + 3) = v11 + 72;
  result = memcpy(v11 + 72, *(a1 + 24), v7 + 1);
  *v11 = 0;
  v16 = qword_1004D5468;
  *(v11 + 1) = 0;
  *(v11 + 2) = v16;
  if (v16)
  {
    v17 = (v16 + 8);
  }

  else
  {
    v17 = &qword_1004D5470;
  }

  *v17 = v11;
  qword_1004D5468 = v11;
  return result;
}

void *sub_10028CA60(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9[0] = 0x4800000000;
  v9[1] = 0;
  v9[2] = 0;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a4;
  v9[6] = a5;
  v9[7] = a6;
  v9[8] = a7;
  sub_10028C72C(v9);
  *a1 = qword_1004D5468;
  return a1;
}

uint64_t sub_10028CABC(uint64_t a1)
{
  v2 = *(*a1 + 24);
  v3 = qword_1004D5468;
  if (v2)
  {
    v4 = qword_1004D5468 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v5 = qword_1004D5468;
    while (strcmp(*(v5 + 24), v2))
    {
      v5 = *(v5 + 16);
      if (!v5)
      {
        return a1;
      }
    }

    v6 = *(v5 + 8);
    v7 = *(v5 + 16);
    v8 = &qword_1004D5468;
    if (v6)
    {
      v8 = (v6 + 16);
      v9 = v3;
    }

    else
    {
      v9 = *(v5 + 16);
    }

    *v8 = v7;
    if (v7)
    {
      *(v7 + 8) = v6;
      if (v9)
      {
        v10 = qword_1004D5470 == 0;
      }

      else
      {
        v10 = 1;
      }

      if (!v10)
      {
        goto LABEL_19;
      }
    }

    else
    {
      qword_1004D5470 = v6;
      if (v9)
      {
        v12 = v6 == 0;
      }

      else
      {
        v12 = 1;
      }

      if (!v12)
      {
        goto LABEL_19;
      }
    }

    qword_1004D5470 = 0;
    qword_1004D5468 = 0;
LABEL_19:
    j__free(v5);
  }

  return a1;
}

BOOL sub_10028CB90(_BOOL8 result)
{
  if (result)
  {
    return *(result + 2) == 17049;
  }

  return result;
}

void *sub_10028CBA8(void *result)
{
  if (!result)
  {
    v2[0] = 0;
    v2[1] = 0;
    v1 = sub_1002A80E0(v2, 19);
    *(v1 + 15) = 1919251566;
    *v1 = *"NULL double pointer";
    sub_1002A8980(-27, v2, "icvReleaseSeq", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 5729);
  }

  *result = 0;
  return result;
}

_DWORD *sub_10028CC48(uint64_t a1, uint64_t a2)
{
  __endptr = 0;
  v4 = sub_100283BF4(a1, a2, "flags");
  if (v4 && (*v4 & 7) == 3)
  {
    v5 = *(v4 + 24);
    v6 = sub_100283BF4(a1, a2, "count");
    if (!v6)
    {
LABEL_4:
      LODWORD(v7) = -1;
      goto LABEL_11;
    }
  }

  else
  {
    v5 = 0;
    v6 = sub_100283BF4(a1, a2, "count");
    if (!v6)
    {
      goto LABEL_4;
    }
  }

  if ((*v6 & 7) == 2)
  {
    v7 = rint(*(v6 + 16));
  }

  else if ((*v6 & 7) == 1)
  {
    LODWORD(v7) = *(v6 + 16);
  }

  else
  {
    LODWORD(v7) = 0x7FFFFFFF;
  }

LABEL_11:
  v66 = v7;
  v8 = sub_100283BF4(a1, a2, "dt");
  if (!v8 || (*v8 & 7) != 3 || (v9 = *(v8 + 24), !v5) || v66 == -1 || !v9)
  {
    v72 = 0;
    v71 = 0;
    qmemcpy(sub_1002A80E0(&v71, 48), "Some of essential sequence attributes are absent", 48);
    sub_1002A8980(-2, &v71, "icvReadSeq", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 5953);
  }

  if (*v5 - 48 > 9)
  {
    if (strstr(v5, "curve"))
    {
      v13 = 1117327360;
    }

    else
    {
      v13 = 1117323264;
    }

    if (strstr(v5, "closed"))
    {
      v13 |= 0x4000u;
    }

    if (strstr(v5, "hole"))
    {
      v12 = v13 | 0x8000;
    }

    else
    {
      v12 = v13;
    }

    if (!strstr(v5, "untyped"))
    {
      v12 |= sub_10029A8E0(v9);
    }
  }

  else
  {
    v10 = strtol(v5, &__endptr, 16);
    if (__endptr == v5 || (v10 & 0xFFFF0000) != 0x42990000)
    {
      v72 = 0;
      v71 = 0;
      qmemcpy(sub_1002A80E0(&v71, 30), "The sequence flags are invalid", 30);
      sub_1002A8980(-2, &v71, "icvReadSeq", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 5970);
    }

    if ((v10 & 0xE00) == 0x200)
    {
      v11 = 1117327360;
    }

    else
    {
      v11 = 1117323264;
    }

    v12 = v10 & 0x81FF | (((v10 >> 12) & 1) << 14) | v11;
  }

  v14 = sub_100283BF4(a1, a2, "header_dt");
  if (v14 && (*v14 & 7) == 3)
  {
    v15 = *(v14 + 24);
  }

  else
  {
    v15 = 0;
  }

  v16 = sub_100283BF4(a1, a2, "header_user_data");
  v17 = v16 != 0;
  if ((v15 != 0) != v17)
  {
    v72 = 0;
    v71 = 0;
    qmemcpy(sub_1002A80E0(&v71, 74), "One of header_dt and header_user_data is there, while the other is not", 74);
    sub_1002A8980(-2, &v71, "icvReadSeq", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 6004);
  }

  v18 = sub_100283BF4(a1, a2, "rect");
  v19 = sub_100283BF4(a1, a2, "origin");
  v20 = v19;
  if (v18)
  {
    v21 = v17 + 1;
  }

  else
  {
    v21 = v16 != 0;
  }

  if (v19)
  {
    ++v21;
  }

  if (v21 >= 2)
  {
    v72 = 0;
    v71 = 0;
    qmemcpy(sub_1002A80E0(&v71, 66), "Only one of header_user_data, rect and origin tags may occur", 66);
    sub_1002A8980(-2, &v71, "icvReadSeq", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 6010);
  }

  if (v15)
  {
    v22 = sub_10028A808(v15, &v71);
    if (v22 < 1)
    {
      v26 = 96;
    }

    else
    {
      v23 = 0;
      v24 = 96;
      do
      {
        v25 = (((*(&v71 + v23 + 1) >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (*(&v71 + v23 + 1) & 7))) & 3);
        v24 = ((v24 + v25 - 1) & -v25) + v25 * *(&v71 + v23);
        v23 += 2;
      }

      while (v23 < (2 * v22));
      v26 = v24;
    }
  }

  else
  {
    v27 = 96;
    if (v19)
    {
      v27 = 104;
    }

    if (v18)
    {
      v26 = 128;
    }

    else
    {
      v26 = v27;
    }
  }

  v28 = sub_10028A808(v9, &v71);
  if (v28 < 1)
  {
    v32 = -1;
  }

  else
  {
    v29 = 0;
    v30 = 0;
    do
    {
      v31 = (((*(&v71 + v29 + 1) >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (*(&v71 + v29 + 1) & 7))) & 3);
      v30 = ((v30 + v31 - 1) & -v31) + v31 * *(&v71 + v29);
      v29 += 2;
    }

    while (v29 < (2 * v28));
    v32 = v30 - 1;
  }

  v33 = (((HIDWORD(v71) >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (BYTE4(v71) & 7))) & 3);
  v34 = sub_100231FEC(v12, v26, (v32 + v33) & -v33, *(a1 + 24));
  if (v16)
  {
    if (!v15)
    {
      v72 = 0;
      v71 = 0;
      v38 = sub_1002A80E0(&v71, 9);
      *(v38 + 8) = 116;
      *v38 = *"header_dt";
      sub_1002A8980(-215, &v71, "icvReadSeq", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 6026);
    }

    sub_10028BBBC(a1, v16, &v71);
    if ((*v16 & 7) == 5)
    {
      v35 = *(*(v16 + 16) + 40);
    }

    else
    {
      v35 = 1;
    }

    sub_10028BDD8(a1, &v71, v35, (v34 + 24), v15);
  }

  else if (v18)
  {
    v36 = sub_100283BF4(a1, v18, "x");
    if (v36)
    {
      if ((*v36 & 7) == 2)
      {
        v37 = rint(*(v36 + 16));
      }

      else if ((*v36 & 7) == 1)
      {
        LODWORD(v37) = *(v36 + 16);
      }

      else
      {
        LODWORD(v37) = 0x7FFFFFFF;
      }
    }

    else
    {
      LODWORD(v37) = 0;
    }

    v34[24] = v37;
    v41 = sub_100283BF4(a1, v18, "y");
    if (v41)
    {
      if ((*v41 & 7) == 2)
      {
        v42 = rint(*(v41 + 16));
      }

      else if ((*v41 & 7) == 1)
      {
        LODWORD(v42) = *(v41 + 16);
      }

      else
      {
        LODWORD(v42) = 0x7FFFFFFF;
      }
    }

    else
    {
      LODWORD(v42) = 0;
    }

    v34[25] = v42;
    v43 = sub_100283BF4(a1, v18, "width");
    if (v43)
    {
      if ((*v43 & 7) == 2)
      {
        v44 = rint(*(v43 + 16));
      }

      else if ((*v43 & 7) == 1)
      {
        LODWORD(v44) = *(v43 + 16);
      }

      else
      {
        LODWORD(v44) = 0x7FFFFFFF;
      }
    }

    else
    {
      LODWORD(v44) = 0;
    }

    v34[26] = v44;
    v45 = sub_100283BF4(a1, v18, "height");
    if (v45)
    {
      if ((*v45 & 7) == 2)
      {
        v46 = rint(*(v45 + 16));
      }

      else if ((*v45 & 7) == 1)
      {
        LODWORD(v46) = *(v45 + 16);
      }

      else
      {
        LODWORD(v46) = 0x7FFFFFFF;
      }
    }

    else
    {
      LODWORD(v46) = 0;
    }

    v34[27] = v46;
    v47 = sub_100283BF4(a1, a2, "color");
    if (v47)
    {
      if ((*v47 & 7) == 2)
      {
        v34[28] = rint(*(v47 + 16));
      }

      else if ((*v47 & 7) == 1)
      {
        v34[28] = *(v47 + 16);
      }

      else
      {
        v34[28] = 0x7FFFFFFF;
      }
    }

    else
    {
      v34[28] = 0;
    }
  }

  else if (v20)
  {
    v39 = sub_100283BF4(a1, v20, "x");
    if (v39)
    {
      if ((*v39 & 7) == 2)
      {
        v40 = rint(*(v39 + 16));
      }

      else if ((*v39 & 7) == 1)
      {
        LODWORD(v40) = *(v39 + 16);
      }

      else
      {
        LODWORD(v40) = 0x7FFFFFFF;
      }
    }

    else
    {
      LODWORD(v40) = 0;
    }

    v34[24] = v40;
    v48 = sub_100283BF4(a1, v20, "y");
    if (v48)
    {
      if ((*v48 & 7) == 2)
      {
        v49 = rint(*(v48 + 16));
      }

      else if ((*v48 & 7) == 1)
      {
        LODWORD(v49) = *(v48 + 16);
      }

      else
      {
        LODWORD(v49) = 0x7FFFFFFF;
      }
    }

    else
    {
      LODWORD(v49) = 0;
    }

    v34[25] = v49;
  }

  sub_10023359C(v34, 0, v66, 0);
  v50 = sub_10028A808(v9, v69);
  if (v50 < 1)
  {
    v53 = 0;
  }

  else
  {
    v51 = (2 * v50);
    if (v50 >= 9)
    {
      v54 = ((v51 - 1) >> 1) + 1;
      v55 = v54 & 7;
      if ((v54 & 7) == 0)
      {
        v55 = 8;
      }

      v56 = v54 - v55;
      v52 = 2 * v56;
      v57 = &v70;
      v58 = 0uLL;
      v59 = 0uLL;
      do
      {
        v60 = v57 - 8;
        v61 = vld2q_f32(v60);
        v62 = vld2q_f32(v57);
        v58 = vaddq_s32(v61, v58);
        v59 = vaddq_s32(v62, v59);
        v57 += 16;
        v56 -= 8;
      }

      while (v56);
      v53 = vaddvq_s32(vaddq_s32(v59, v58));
    }

    else
    {
      v52 = 0;
      v53 = 0;
    }

    do
    {
      v53 += v69[v52];
      v52 += 2;
    }

    while (v52 < v51);
  }

  v63 = sub_100283BF4(a1, a2, "data");
  if (!v63)
  {
    v72 = 0;
    v71 = 0;
    qmemcpy(sub_1002A80E0(&v71, 43), "The image data is not found in file storage", 43);
    sub_1002A8980(-2, &v71, "icvReadSeq", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 6053);
  }

  if ((*v63 & 7u) < 5)
  {
    if (((*v63 & 7) != 0) == v53 * v66)
    {
      goto LABEL_139;
    }

LABEL_138:
    v72 = 0;
    v71 = 0;
    qmemcpy(sub_1002A80E0(&v71, 55), "The number of stored elements does not match to count", 55);
    sub_1002A8980(-2, &v71, "icvReadSeq", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 6056);
  }

  if (*(*(v63 + 16) + 40) != v53 * v66)
  {
    goto LABEL_138;
  }

LABEL_139:
  sub_10028BBBC(a1, v63, v68);
  for (i = *(v34 + 11); i; i = *(i + 8))
  {
    sub_10028BDD8(a1, v68, *(i + 20) * v53, *(i + 24), v9);
    if (i == **(v34 + 11))
    {
      break;
    }
  }

  return v34;
}

void sub_10028D780(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x10028CEFCLL);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10028D858(uint64_t a1, const char *a2, unsigned int *a3, const char **a4, uint64_t a5)
{
  v21 = a5;
  if (!a4)
  {
    goto LABEL_21;
  }

  v9 = &v20;
  v10 = 1;
  v11 = a4;
  while (!*v11)
  {
LABEL_9:
    v9 = *(v9 + 1);
    if (v9)
    {
      v11 = *v9;
      if (*v9)
      {
        continue;
      }
    }

    goto LABEL_21;
  }

  if (strcmp("recursive", *v11))
  {
    v12 = 0;
    while (1)
    {
      v13 = v11[v12 + 2];
      if (!v13)
      {
        goto LABEL_9;
      }

      v12 += 2;
      if (!strcmp("recursive", v13))
      {
        v10 = v12 & 0xFFFFFFFE | 1;
        break;
      }
    }
  }

  v14 = v11[v10];
  if (v14 && (*v14 != 48 || v14[1]) && strcmp(v11[v10], "false") && strcmp(v14, "False") && strcmp(v14, "FALSE"))
  {
    sub_100288FB8(a1, a2, 6, "opencv-sequence-tree");
    sub_100288FB8(a1, "sequences", 5, 0);
    sub_100237230(&v18, a3, 0x7FFFFFFF);
    for (i = v18; v18; i = v18)
    {
      sub_10029A9D4(a1, 0, i, a4, a5, v19);
      sub_100237308(&v18);
    }

    sub_10028984C(a1);
    return sub_10028984C(a1);
  }

LABEL_21:

  return sub_10029A9D4(a1, a2, a3, a4, a5, 0xFFFFFFFFLL);
}

uint64_t sub_10028DA50(_DWORD *a1, uint64_t a2)
{
  v3 = sub_100283BF4(a1, a2, "sequences");
  if (!v3 || (*v3 & 7) != 5)
  {
    v19 = 0;
    v20 = 0;
    qmemcpy(sub_1002A80E0(&v19, 90), "opencv-sequence-tree instance should contain a field sequences that should be a sequence", 90);
    sub_1002A8980(-212, &v19, "icvReadSeqTree", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 6087);
  }

  v4 = *(v3 + 16);
  v5 = *(v4 + 40);
  sub_100232554(v4, v21, 0);
  v18 = v5;
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    while (1)
    {
      v11 = v22;
      v12 = sub_1002913A4(a1, v22, 0);
      if (!v12)
      {
        v19 = 0;
        v20 = 0;
        v13 = sub_1002A80E0(&v19, 3);
        *v13 = 25971;
        *(v13 + 2) = 113;
        sub_1002A8980(-215, &v19, "icvReadSeqTree", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 6099);
      }

      v14 = sub_100283BF4(a1, v11, "level");
      if (!v14)
      {
LABEL_13:
        v19 = 0;
        v20 = 0;
        qmemcpy(sub_1002A80E0(&v19, 56), "All the sequence tree nodes should contain level field", 56);
        sub_1002A8980(-212, &v19, "icvReadSeqTree", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 6102);
      }

      if ((*v14 & 7) == 2)
      {
        break;
      }

      if ((*v14 & 7) == 1)
      {
        LODWORD(v15) = *(v14 + 16);
        if ((v15 & 0x80000000) != 0)
        {
          goto LABEL_13;
        }

        goto LABEL_15;
      }

      LODWORD(v15) = 0x7FFFFFFF;
      if (!v10)
      {
        v10 = v12;
      }

      v16 = 0;
      if (v6 != 0x7FFFFFFF)
      {
LABEL_18:
        if (v8)
        {
          v8[4] = v12;
        }

        *(v12 + 8) = 0;
        v9 = v8;
        goto LABEL_30;
      }

LABEL_24:
      if (v16)
      {
        do
        {
          v8 = v8[3];
          --v6;
        }

        while (v6 > v15);
        v9 = v8[3];
        *(v12 + 8) = v8;
LABEL_29:
        v8[2] = v12;
        goto LABEL_30;
      }

      *(v12 + 8) = v8;
      if (v8)
      {
        goto LABEL_29;
      }

LABEL_30:
      *(v12 + 24) = v9;
      v22 += *(v4 + 44);
      if (v22 >= v23)
      {
        sub_10023323C(v21, 1);
      }

      ++v7;
      v6 = v15;
      v8 = v12;
      if (v7 == v18)
      {
        return v10;
      }
    }

    v15 = rint(*(v14 + 16));
    if ((v15 & 0x80000000) != 0)
    {
      goto LABEL_13;
    }

LABEL_15:
    if (!v10)
    {
      v10 = v12;
    }

    v16 = v15 < v6;
    if (v15 > v6)
    {
      goto LABEL_18;
    }

    goto LABEL_24;
  }

  return 0;
}

void sub_10028DD20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1002A8124(va);
  _Unwind_Resume(a1);
}

_DWORD *sub_10028DD68(_DWORD *result)
{
  if (result)
  {
    if (HIWORD(*result) == 17048)
    {
      return ((*result & 0x3000) == 4096);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *sub_10028DD8C(void *result)
{
  if (!result)
  {
    v2[0] = 0;
    v2[1] = 0;
    v1 = sub_1002A80E0(v2, 19);
    *(v1 + 15) = 1919251566;
    *v1 = *"NULL double pointer";
    sub_1002A8980(-27, v2, "icvReleaseGraph", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 6145);
  }

  *result = 0;
  return result;
}

_DWORD *sub_10028DE2C(uint64_t a1, uint64_t a2)
{
  __endptr = 0;
  v3 = sub_100283BF4(a1, a2, "flags");
  if (v3 && (*v3 & 7) == 3)
  {
    v4 = *(v3 + 24);
    v5 = sub_100283BF4(a1, a2, "vertex_dt");
    if (!v5)
    {
LABEL_9:
      v6 = 0;
      v7 = sub_100283BF4(a1, a2, "edge_dt");
      if (!v7)
      {
        goto LABEL_13;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v4 = 0;
    v5 = sub_100283BF4(a1, a2, "vertex_dt");
    if (!v5)
    {
      goto LABEL_9;
    }
  }

  if ((*v5 & 7) != 3)
  {
    goto LABEL_9;
  }

  v6 = *(v5 + 24);
  v7 = sub_100283BF4(a1, a2, "edge_dt");
  if (!v7)
  {
LABEL_13:
    v125 = 0;
    v8 = sub_100283BF4(a1, a2, "vertex_count");
    if (!v8)
    {
      goto LABEL_12;
    }

    goto LABEL_14;
  }

LABEL_10:
  if ((*v7 & 7) != 3)
  {
    goto LABEL_13;
  }

  v125 = *(v7 + 24);
  v8 = sub_100283BF4(a1, a2, "vertex_count");
  if (!v8)
  {
LABEL_12:
    LODWORD(v9) = -1;
    goto LABEL_19;
  }

LABEL_14:
  if ((*v8 & 7) == 2)
  {
    v9 = rint(*(v8 + 16));
  }

  else if ((*v8 & 7) == 1)
  {
    LODWORD(v9) = *(v8 + 16);
  }

  else
  {
    LODWORD(v9) = 0x7FFFFFFF;
  }

LABEL_19:
  v132 = v9;
  v10 = sub_100283BF4(a1, a2, "edge_count");
  v124 = v6;
  if (v10)
  {
    if ((*v10 & 7) == 2)
    {
      v121 = rint(*(v10 + 16));
      if (!v4)
      {
        goto LABEL_32;
      }
    }

    else if ((*v10 & 7) == 1)
    {
      LODWORD(v121) = *(v10 + 16);
      if (!v4)
      {
        goto LABEL_32;
      }
    }

    else
    {
      LODWORD(v121) = 0x7FFFFFFF;
      if (!v4)
      {
        goto LABEL_32;
      }
    }
  }

  else
  {
    LODWORD(v121) = -1;
    if (!v4)
    {
      goto LABEL_32;
    }
  }

  if (v132 == -1 || v121 == -1 || !v125)
  {
LABEL_32:
    v142 = 0;
    v141 = 0;
    qmemcpy(sub_1002A80E0(&v141, 45), "Some of essential graph attributes are absent", 45);
    sub_1002A8980(-2, &v141, "icvReadGraph", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 6324);
  }

  v11 = *v4;
  if ((v11 & 0x8000000000000000) == 0 && (_DefaultRuneLocale.__runetype[v11] & 0x10000) != 0)
  {
    v13 = strtol(v4, &__endptr, 16);
    if (__endptr == v4 || (v13 & 0xFFFF0000) != 0x42980000)
    {
      v142 = 0;
      v141 = 0;
      qmemcpy(sub_1002A80E0(&v141, 30), "The sequence flags are invalid", 30);
      sub_1002A8980(-2, &v141, "icvReadGraph", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 6337);
    }

    v12 = (v13 & 0x1000) == 0;
  }

  else
  {
    v12 = strstr(v4, "oriented") == 0;
  }

  if (v12)
  {
    v15 = 1117261824;
  }

  else
  {
    v15 = 1117278208;
  }

  v16 = sub_100283BF4(a1, a2, "header_dt");
  if (v16 && (*v16 & 7) == 3)
  {
    v17 = *(v16 + 24);
  }

  else
  {
    v17 = 0;
  }

  v18 = sub_100283BF4(a1, a2, "header_user_data");
  if ((v17 != 0) != (v18 != 0))
  {
    v142 = 0;
    v141 = 0;
    qmemcpy(sub_1002A80E0(&v141, 74), "One of header_dt and header_user_data is there, while the other is not", 74);
    sub_1002A8980(-2, &v141, "icvReadGraph", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 6352);
  }

  if (v17)
  {
    v19 = sub_10028A808(v17, &v141);
    if (v19 >= 1)
    {
      v20 = 0;
      v21 = 120;
      do
      {
        v22 = (((*(&v141 + v20 + 1) >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (*(&v141 + v20 + 1) & 7))) & 3);
        v21 = ((v21 + v22 - 1) & -v22) + v22 * *(&v141 + v20);
        v20 += 2;
      }

      while (v20 < (2 * v19));
      v23 = v6;
      if (v6)
      {
        goto LABEL_57;
      }

LABEL_62:
      v122 = 0;
      v123 = 0;
      v29 = 16;
      goto LABEL_82;
    }

    v21 = 120;
    v23 = v6;
    if (!v6)
    {
      goto LABEL_62;
    }
  }

  else
  {
    v21 = 120;
    v23 = v6;
    if (!v6)
    {
      goto LABEL_62;
    }
  }

LABEL_57:
  v24 = sub_10028A808(v23, &v141);
  if (v24 < 1)
  {
    v28 = -1;
  }

  else
  {
    v25 = 0;
    v26 = 0;
    do
    {
      v27 = (((*(&v141 + v25 + 1) >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (*(&v141 + v25 + 1) & 7))) & 3);
      v26 = ((v26 + v27 - 1) & -v27) + v27 * *(&v141 + v25);
      v25 += 2;
    }

    while (v25 < (2 * v24));
    v28 = v26 - 1;
  }

  v30 = HIDWORD(v141);
  v31 = sub_10028A808(v124, &v141);
  if (v31 < 1)
  {
    v29 = 16;
  }

  else
  {
    v32 = 0;
    v29 = 16;
    do
    {
      v33 = (((*(&v141 + v32 + 1) >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (*(&v141 + v32 + 1) & 7))) & 3);
      v29 = ((v29 + v33 - 1) & -v33) + v33 * *(&v141 + v32);
      v32 += 2;
    }

    while (v32 < (2 * v31));
  }

  v34 = sub_10028A808(v125, v138);
  v35 = (((v30 >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (v30 & 7))) & 3);
  v123 = (v28 + v35) & -v35;
  if (v34 < 1)
  {
    v122 = 0;
  }

  else
  {
    v36 = (2 * v34);
    if (v34 >= 9)
    {
      v39 = ((v36 - 1) >> 1) + 1;
      v40 = v39 & 7;
      if ((v39 & 7) == 0)
      {
        v40 = 8;
      }

      v41 = v39 - v40;
      v37 = 2 * v41;
      v42 = v140;
      v43 = 0uLL;
      v44 = 0uLL;
      do
      {
        v45 = v42 - 8;
        v46 = vld2q_f32(v45);
        v47 = vld2q_f32(v42);
        v43 = vaddq_s32(v46, v43);
        v44 = vaddq_s32(v47, v44);
        v42 += 16;
        v41 -= 8;
      }

      while (v41);
      v38 = vaddvq_s32(vaddq_s32(v44, v43));
    }

    else
    {
      v37 = 0;
      v38 = 0;
    }

    do
    {
      v38 += v138[v37];
      v37 += 2;
    }

    while (v37 < v36);
    v122 = v38;
  }

LABEL_82:
  v48 = sub_10028A808(v125, v138);
  if (v48 < 2 || (v138[0] == 2 ? (v49 = v138[1] == 4) : (v49 = 0), v49 ? (v50 = v138[2] < 1) : (v50 = 1), !v50 ? (v51 = v138[3] == 5) : (v51 = 0), !v51))
  {
    v142 = 0;
    v141 = 0;
    qmemcpy(sub_1002A80E0(&v141, 52), "Graph edges should start with 2 integers and a float", 52);
    sub_1002A8980(-5, &v141, "icvReadGraph", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 6378);
  }

  if (v48 < 3)
  {
    v52 = 4;
  }

  else if ((((v139 >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (v139 & 7))) & 3) >= 8)
  {
    v52 = 8;
  }

  else
  {
    v52 = 4;
  }

  v53 = (2 * v48);
  if (v48 >= 9)
  {
    v56 = ((v53 - 1) >> 1) + 1;
    v57 = v56 & 7;
    if ((v56 & 7) == 0)
    {
      v57 = 8;
    }

    v58 = v56 - v57;
    v54 = 2 * v58;
    v59 = v140;
    v60 = 0uLL;
    v61 = 0uLL;
    do
    {
      v62 = v59 - 8;
      v63 = vld2q_f32(v62);
      v64 = vld2q_f32(v59);
      v60 = vaddq_s32(v63, v60);
      v61 = vaddq_s32(v64, v61);
      v59 += 16;
      v58 -= 8;
    }

    while (v58);
    v55 = vaddvq_s32(vaddq_s32(v61, v60));
  }

  else
  {
    v54 = 0;
    v55 = 0;
  }

  do
  {
    v55 += v138[v54];
    v54 += 2;
  }

  while (v54 < v53);
  v120 = v55;
  v65 = *(v125 + 2);
  if (v65 == 102 || v65 == 49 && *(v125 + 3) == 102)
  {
    v104 = (v65 - 48) >= 0xA;
    v68 = v125;
    if (!v104)
    {
      v68 = v125 + 1;
    }

    v67 = (v68 + 3);
  }

  else
  {
    v66 = strtol((v125 + 2), &__endptr, 10);
    v67 = v136;
    sprintf(v136, "%df%s", v66 - 1, __endptr);
  }

  v69 = sub_10028A808(v67, &v141);
  if (v69 < 1)
  {
    v71 = 40;
  }

  else
  {
    v70 = 0;
    v71 = 40;
    do
    {
      v72 = (((*(&v141 + v70 + 1) >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (*(&v141 + v70 + 1) & 7))) & 3);
      v71 = ((v71 + v72 - 1) & -v72) + v72 * *(&v141 + v70);
      v70 += 2;
    }

    while (v70 < (2 * v69));
  }

  v131 = v71;
  v73 = sub_10028A808(v125, &v141);
  if (v73 < 1)
  {
    v77 = -1;
  }

  else
  {
    v74 = 0;
    v75 = 0;
    do
    {
      v76 = (((*(&v141 + v74 + 1) >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (*(&v141 + v74 + 1) & 7))) & 3);
      v75 = ((v75 + v76 - 1) & -v76) + v76 * *(&v141 + v74);
      v74 += 2;
    }

    while (v74 < (2 * v73));
    v77 = v75 - 1;
  }

  v78 = HIDWORD(v141);
  v133 = sub_1002365E8(v15, v21, v29, v131, *(a1 + 24));
  if (v18)
  {
    if (!v17)
    {
      v142 = 0;
      v141 = 0;
      v80 = sub_1002A80E0(&v141, 9);
      *(v80 + 8) = 116;
      *v80 = *"header_dt";
      sub_1002A8980(-215, &v141, "icvReadGraph", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 6405);
    }

    sub_10028BBBC(a1, v18, &v141);
    if ((*v18 & 7) == 5)
    {
      v79 = *(*(v18 + 16) + 40);
    }

    else
    {
      v79 = 1;
    }

    sub_10028BDD8(a1, &v141, v79, (v133 + 30), v17);
  }

  v81 = (((v78 >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (v78 & 7))) & 3);
  v82 = (v77 + v81) & -v81;
  v83 = 3 * v123;
  v119 = v82;
  v84 = 3 * v82;
  if (3 * v123 <= v84)
  {
    v83 = v84;
  }

  if (v83 <= 0x10000)
  {
    v85 = 0x10000;
  }

  else
  {
    v85 = v83;
  }

  v116 = v85;
  v86 = sub_1001D90AC(v85);
  v87 = sub_1001D90AC(8 * v132);
  v117 = sub_100283BF4(a1, a2, "vertices");
  v118 = sub_100283BF4(a1, a2, "edges");
  if (!v118)
  {
    v142 = 0;
    v141 = 0;
    qmemcpy(sub_1002A80E0(&v141, 13), "No edges data", 13);
    sub_1002A8980(-5, &v141, "icvReadGraph", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 6417);
  }

  v88 = v124;
  if (v124 && !v117)
  {
    v142 = 0;
    v141 = 0;
    *sub_1002A80E0(&v141, 16) = *"No vertices data";
    sub_1002A8980(-5, &v141, "icvReadGraph", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 6419);
  }

  v89 = 0;
  v128 = v52 - 1;
  v127 = -v52;
  v90 = v122;
  do
  {
    v126 = v89;
    if (v89)
    {
      v91 = v125;
    }

    else
    {
      v91 = v88;
    }

    if (v89)
    {
      v92 = v119;
    }

    else
    {
      v92 = v123;
    }

    v93 = v120;
    if (!v89)
    {
      v93 = v90;
    }

    v130 = v93;
    if (v89)
    {
      v94 = v121;
    }

    else
    {
      v94 = v132;
    }

    if (v92 <= 1)
    {
      v95 = 1;
    }

    else
    {
      v95 = v92;
    }

    if (v91)
    {
      if (v89)
      {
        v96 = v118;
      }

      else
      {
        v96 = v117;
      }

      sub_10028BBBC(a1, v96, &v141);
    }

    if (v94 >= 1)
    {
      v97 = v92;
      v98 = v116 / v95;
      if (v126)
      {
        v99 = 0;
        v100 = v86;
        do
        {
          if (v91 && !v99)
          {
            if (v94 >= v98)
            {
              v101 = v98;
            }

            else
            {
              v101 = v94;
            }

            v99 = v101 * v130;
            sub_10028BDD8(a1, &v141, v101 * v130, v86, v91);
            v100 = v86;
          }

          v134 = 0;
          v102 = v100[1];
          v103 = *v100;
          v104 = v103 >= v132 || v102 >= v132;
          if (v104)
          {
            *v136 = 0;
            v137 = 0;
            qmemcpy(sub_1002A80E0(v136, 46), "Some of stored vertex indices are out of range", 46);
            sub_1002A8980(-211, v136, "icvReadGraph", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 6464);
          }

          if (!sub_10023697C(v133, v87[v103], v87[v102], 0, &v134))
          {
            *v136 = 0;
            v137 = 0;
            qmemcpy(sub_1002A80E0(v136, 27), "Duplicated edge has occured", 27);
            sub_1002A8980(-5, v136, "icvReadGraph", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 6470);
          }

          v106 = v134;
          *(v134 + 4) = v100[2];
          if (v131 >= 41)
          {
            memcpy((v106 + 40), ((v100 + v128 + 12) & v127), v131 - 40);
          }

          v100 = (v100 + v97);
          --v99;
          --v94;
        }

        while (v94);
      }

      else
      {
        v107 = v132;
        v108 = v87;
        if (v91)
        {
          v109 = 0;
          v110 = v132;
          v111 = v87;
          v112 = v86;
          do
          {
            if (!v109)
            {
              if (v94 >= v98)
              {
                v113 = v98;
              }

              else
              {
                v113 = v94;
              }

              v109 = v113 * v130;
              sub_10028BDD8(a1, &v141, v113 * v130, v86, v91);
              v112 = v86;
            }

            *v136 = 0;
            sub_1002366C4(v133, 0, v136);
            v114 = *v136;
            *v111++ = *v136;
            memcpy((v114 + 16), v112, v123);
            v112 += v97;
            --v109;
            --v94;
            --v110;
          }

          while (v110);
        }

        else
        {
          do
          {
            *v136 = 0;
            sub_1002366C4(v133, 0, v136);
            *v108++ = *v136;
            --v107;
          }

          while (v107);
        }
      }
    }

    v89 = v126 + 1;
    v88 = v124;
    v90 = v122;
  }

  while (v126 != 1);
  j__free(v86);
  j__free(v87);
  return v133;
}

void sub_10028ED10(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_100008E3C(a1);
  }

  _Unwind_Resume(a1);
}

void sub_10028EE38(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a3;
  v63[0] = a4;
  v63[1] = a5;
  v8 = *(a3 + 104);
  v9 = *(*(a3 + 112) + 104);
  v10 = sub_1001D90AC(4 * v8);
  sub_100232554(v5, v60, 0);
  if (*(v5 + 40) >= 1)
  {
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = v61;
      if ((*v61 & 0x80000000) == 0)
      {
        v10[v12] = *v61;
        *v13 = v12++;
      }

      v61 = v13 + *(v5 + 44);
      if (v61 >= v62)
      {
        sub_10023323C(v60, 1);
      }

      ++v11;
    }

    while (v11 < *(v5 + 40));
  }

  v52 = v10;
  sub_100288FB8(a1, a2, 6, "opencv-graph");
  if ((*v5 & 0x4000) != 0)
  {
    v14 = "oriented";
  }

  else
  {
    v14 = "";
  }

  sub_100289AEC(a1, "flags", v14, 1);
  sub_1002899A0(a1, "vertex_count", v8);
  v15 = sub_10029AC28(v5, "vertex_dt", v63, 16, v65);
  if (v15)
  {
    sub_100289AEC(a1, "vertex_dt", v15, 0);
  }

  sub_1002899A0(a1, "edge_count", v9);
  v16 = sub_10029AC28(*(v5 + 112), "edge_dt", v63, 40, v66);
  if (v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = "";
  }

  sprintf(v64, "2if%s", v17);
  sub_100289AEC(a1, "edge_dt", v64, 0);
  sub_10029AFA0(a1, v5, v63, 120);
  v18 = *(v5 + 44);
  if (v18 >= 21846)
  {
    v19 = 3 * v18;
  }

  else
  {
    v19 = 0x10000;
  }

  v20 = 3 * *(*(v5 + 112) + 44);
  if (v20 <= v19)
  {
    v21 = v19;
  }

  else
  {
    v21 = v20;
  }

  v53 = v21;
  v22 = sub_1001D90AC(v21);
  v23 = 0;
  v24 = 1;
  v54 = v5;
  v55 = v15;
  while (2)
  {
    v25 = v24;
    if (v24)
    {
      v26 = v15;
    }

    else
    {
      v26 = v64;
    }

    if (!v26)
    {
      goto LABEL_24;
    }

    v27 = v5;
    if ((v24 & 1) == 0)
    {
      v27 = *(v5 + 112);
    }

    v59 = *(v27 + 44);
    v28 = sub_10028A808(v26, &v67);
    if (v28 < 1)
    {
      v32 = v68;
      v57 = -1;
      if ((v23 & 1) == 0)
      {
LABEL_41:
        v33 = 4;
        goto LABEL_42;
      }
    }

    else
    {
      v29 = 0;
      v30 = 0;
      do
      {
        v31 = (((*(&v67 + v29 + 1) >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (*(&v67 + v29 + 1) & 7))) & 3);
        v30 = ((v30 + v31 - 1) & -v31) + v31 * *(&v67 + v29);
        v29 += 2;
      }

      while (v29 < (2 * v28));
      v32 = v68;
      v57 = v30 - 1;
      if ((v23 & 1) == 0)
      {
        goto LABEL_41;
      }
    }

    if (sub_10028A808(v64, &v67) < 3)
    {
      goto LABEL_41;
    }

    if ((((v69 >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (v69 & 7))) & 3) >= 8)
    {
      v33 = 8;
    }

    else
    {
      v33 = 4;
    }

LABEL_42:
    if (v25)
    {
      v34 = "vertices";
    }

    else
    {
      v34 = "edges";
    }

    sub_100288FB8(a1, v34, 13, 0);
    sub_100232554(v27, v60, 0);
    v35 = a1;
    if (*(v27 + 40) < 1)
    {
      goto LABEL_23;
    }

    v36 = 0;
    v37 = 0;
    v38 = (((v32 >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (v32 & 7))) & 3);
    v39 = (v57 + v38) & -v38;
    v56 = -v33;
    v58 = v33 - 1;
    v40 = v39;
    v41 = v22;
    v42 = v53 / v39;
    do
    {
      v43 = v61;
      if ((*v61 & 0x80000000) != 0)
      {
        goto LABEL_57;
      }

      if (v25)
      {
        v44 = v61 + 16;
        v45 = v41;
        v46 = v40;
      }

      else
      {
        v41 = ((v41 + 3) & 0xFFFFFFFFFFFFFFFCLL);
        *v41 = **(v61 + 3);
        v41[1] = **(v43 + 4);
        v41[2] = *(v43 + 1);
        if (v59 < 41)
        {
          goto LABEL_54;
        }

        v45 = ((v41 + v58 + 12) & v56);
        v44 = v43 + 40;
        v46 = v59 - 40;
      }

      memcpy(v45, v44, v46);
LABEL_54:
      if (++v37 >= v42)
      {
        sub_100289C48(v35, v22, v37, v26);
        v37 = 0;
        v41 = v22;
      }

      else
      {
        v41 = (v41 + v40);
      }

LABEL_57:
      v61 += *(v27 + 44);
      if (v61 >= v62)
      {
        sub_10023323C(v60, 1);
      }

      ++v36;
    }

    while (v36 < *(v27 + 40));
    v5 = v54;
    if (v37 >= 1)
    {
      sub_100289C48(v35, v22, v37, v26);
    }

LABEL_23:
    sub_10028984C(v35);
    a1 = v35;
    v15 = v55;
LABEL_24:
    v24 = 0;
    v23 = 1;
    if (v25)
    {
      continue;
    }

    break;
  }

  sub_10028984C(a1);
  sub_100232554(v5, v60, 0);
  v47 = *(v5 + 40);
  if (v47 >= 1)
  {
    v48 = 0;
    v49 = 0;
    do
    {
      v50 = v61;
      if ((*v61 & 0x80000000) == 0)
      {
        v51 = v52[v49++];
        *v61 = v51;
      }

      v61 = &v50[*(v5 + 44)];
      if (v61 >= v62)
      {
        sub_10023323C(v60, 1);
        v47 = *(v5 + 40);
      }

      ++v48;
    }

    while (v48 < v47);
  }

  j__free(v22);
  j__free(v52);
}

BOOL sub_10028F414(_BOOL8 result)
{
  if (result)
  {
    return *(result + 2) == 16964;
  }

  return result;
}

_DWORD *sub_10028F42C(uint64_t a1)
{
  __chkstk_darwin(a1);
  v2 = v1;
  v4 = v3;
  v5 = sub_100283BF4(v3, v1, "sizes");
  v28 = v4;
  v6 = sub_100283BF4(v4, v2, "dt");
  if (!v6 || (*v6 & 7) != 3 || !v5 || !*(v6 + 24))
  {
    __src = 0;
    v35 = 0;
    qmemcpy(sub_1002A80E0(&__src, 46), "Some of essential matrix attributes are absent", 46);
    sub_1002A8980(-2, &__src, "icvReadSparseMat", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 5525);
  }

  if ((*v5 & 7) == 5)
  {
    v27 = *(v6 + 24);
    v24 = *(*(v5 + 16) + 40);
    if ((v24 - 33) > 0xFFFFFFDF)
    {
      goto LABEL_14;
    }

LABEL_13:
    __src = 0;
    v35 = 0;
    qmemcpy(sub_1002A80E0(&__src, 48), "Could not determine sparse matrix dimensionality", 48);
    sub_1002A8980(-212, &__src, "icvReadSparseMat", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 5531);
  }

  if ((*v5 & 7) == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = -1;
  }

  v27 = *(v6 + 24);
  v24 = v7;
  if ((v7 - 33) <= 0xFFFFFFDF)
  {
    goto LABEL_13;
  }

LABEL_14:
  sub_10028BBBC(v4, v5, &__src);
  if ((*v5 & 7) == 5)
  {
    v8 = *(*(v5 + 16) + 40);
  }

  else
  {
    v8 = 1;
  }

  sub_10028BDD8(v4, &__src, v8, v36, "i");
  v9 = sub_10029A8E0(v27);
  v10 = sub_100283BF4(v4, v2, "data");
  v11 = v10;
  if (!v10 || (*v10 & 7) != 5)
  {
    __src = 0;
    v35 = 0;
    qmemcpy(sub_1002A80E0(&__src, 44), "The matrix data is not found in file storage", 44);
    sub_1002A8980(-2, &__src, "icvReadSparseMat", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 5538);
  }

  v26 = sub_1001FC868(v24, v36, v9);
  v12 = *(v11 + 16);
  sub_10028BBBC(v4, v11, v31);
  if (*(v12 + 40) >= 1)
  {
    v13 = 0;
    v14 = (v9 >> 3) & 0x1FF;
    v25 = v24 - 1;
    do
    {
      if ((*v32 & 7) != 1)
      {
        v29 = 0;
        v30 = 0;
        qmemcpy(sub_1002A80E0(&v29, 31), "Sparse matrix data is corrupted", 31);
        sub_1002A8980(-212, &v29, "icvReadSparseMat", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 5553);
      }

      v15 = v32[4];
      if (v13 < 1 || v15 < 0)
      {
        if (v13 < 1)
        {
          LODWORD(__src) = v32[4];
          v16 = 1;
          v17 = v24;
          v18 = v24 - 1;
          if (v24 > 1)
          {
LABEL_31:
            v13 = v17 + v13 - v16;
            v19 = &__src + v16;
            do
            {
              v21 = (v32 + *(v12 + 44));
              v32 = v21;
              if (v21 >= v33)
              {
                sub_10023323C(v31, 1);
                v21 = v32;
              }

              if ((*v21 & 7) != 1 || (v20 = v21[4], v20 < 0))
              {
                v29 = 0;
                v30 = 0;
                qmemcpy(sub_1002A80E0(&v29, 31), "Sparse matrix data is corrupted", 31);
                sub_1002A8980(-212, &v29, "icvReadSparseMat", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 5569);
              }

              *v19++ = v20;
              --v18;
            }

            while (v18);
          }
        }

        else
        {
          v16 = v25 + v15;
          v17 = v24;
          v18 = v24 - v16;
          if (v24 > v16)
          {
            goto LABEL_31;
          }
        }
      }

      else
      {
        *(&__src + v25) = v15;
      }

      v32 = (v32 + *(v12 + 44));
      if (v32 >= v33)
      {
        sub_10023323C(v31, 1);
      }

      v22 = sub_1001FE44C(v26, &__src, 0, 1, 0);
      sub_10028BDD8(v28, v31, v14 + 1, v22, v27);
      v13 += v14 + 2;
    }

    while (v13 < *(v12 + 40));
  }

  return v26;
}

void sub_10028F900(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_100008E3C(a1);
  }

  _Unwind_Resume(a1);
}

void sub_10028F9A8(uint64_t a1, const char *a2, _DWORD *a3)
{
  sub_100231744(0);
  v7 = v6;
  v34 = v6;
  sub_100288FB8(a1, a2, 6, "opencv-sparse-matrix");
  v27 = sub_1001FD6A4(a3, 0);
  sub_100288FB8(a1, "sizes", 13, 0);
  sub_100289C48(a1, (a3 + 13), v27, "i");
  sub_10028984C(a1);
  sprintf(&v35, "%d%c", ((*a3 >> 3) & 0x1FF) + 1, aUcwsifdr[*a3 & 7]);
  if (v36[1])
  {
    v8 = 0;
  }

  else
  {
    v8 = v35 == 49;
  }

  if (v8)
  {
    v9 = v36;
  }

  else
  {
    v9 = &v35;
  }

  sub_100289AEC(a1, "dt", v9, 0);
  sub_100288FB8(a1, "data", 13, 0);
  v10 = sub_100231FEC(7u, 0x60uLL, 8uLL, v7);
  v11 = sub_1001FCD40(a3, &v31);
  if (v11)
  {
    while (1)
    {
      __src[0] = v11 + a3[12];
      sub_100233314(v10, __src);
      v11 = *(v32 + 8);
      if (!v11)
      {
        v12 = v33++;
        v13 = *(v31 + 40);
        if (v33 >= v13)
        {
          break;
        }

        v14 = v12 + 1;
        v15 = ~v12 + v13;
        while (1)
        {
          v11 = *(*(v31 + 32) + 8 * v14);
          if (v11)
          {
            break;
          }

          ++v14;
          if (!--v15)
          {
            goto LABEL_16;
          }
        }

        v33 = v14;
      }

      v32 = v11;
    }
  }

LABEL_16:
  sub_100233FD4(v10, sub_10029B408, &v27);
  sub_100232554(v10, __src, 0);
  if (v10[10] >= 1)
  {
    v16 = 0;
    v17 = 0;
    while (1)
    {
      v18 = *v29++;
      if (v29 >= v30)
      {
        sub_10023323C(__src, 1);
      }

      if (v16)
      {
        break;
      }

      v24 = 0;
      if (v27 > 0)
      {
        goto LABEL_29;
      }

LABEL_18:
      sub_100289C48(a1, v18 + a3[11] - a3[12], 1u, &v35);
      ++v16;
      v17 = v18;
      if (v16 >= v10[10])
      {
        goto LABEL_32;
      }
    }

    v19 = 0;
    v20 = v18;
    do
    {
      v22 = *v20++;
      v21 = v22;
      v23 = *v17++;
      ++v19;
    }

    while (v21 == v23);
    v24 = v19 - 1;
    if (v27 - 1 > v19 - 1)
    {
      (*(a1 + 312))(a1, 0, (v19 - v27));
    }

    if (v24 >= v27)
    {
      goto LABEL_18;
    }

LABEL_29:
    v25 = &v18[v24];
    do
    {
      v26 = *v25++;
      (*(a1 + 312))(a1, 0, v26);
      ++v24;
    }

    while (v27 > v24);
    goto LABEL_18;
  }

LABEL_32:
  sub_10028984C(a1);
  sub_10028984C(a1);
  sub_100231874(&v34);
}