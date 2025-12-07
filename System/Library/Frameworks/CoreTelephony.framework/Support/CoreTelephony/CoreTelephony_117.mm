void *sub_1007ADEB8(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_1007ADF10(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_1007ADF10(uint64_t result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_1007ADF98(v5, (v5 + 8), v4 + 4, v4 + 4);
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

uint64_t sub_1007ADF98(uint64_t **a1, void *a2, unint64_t *a3, void *a4)
{
  v5 = 0;
  v6 = 0;
  result = *sub_10010CB50(a1, a2, &v6, &v5, a3);
  if (!result)
  {
    sub_1007ADCAC();
  }

  return result;
}

void sub_1007AE028(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void *sub_1007AE048(void *__dst, __int128 *a2)
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

  sub_10018F784(__dst + 3, a2 + 24);
  sub_100190324(__dst + 7, a2 + 56);
  return __dst;
}

void sub_1007AE0C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (*(v10 + 48) == 1)
  {
    sub_10019029C(&a10);
  }

  if (*(v10 + 23) < 0)
  {
    operator delete(*v10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1007AE100(void *a1, uint64_t *a2, uint64_t a3, __int128 *a4, __int128 *a5)
{
  v7 = sub_10071E7DC(a1, *a2, 0, a3, a4);
  sub_1007AE048(v7 + 21, a5);
  *a1 = off_101E7DEE0;
  return a1;
}

uint64_t sub_1007AE17C(uint64_t a1)
{
  if (*(a1 + 248) == 1)
  {
    v3 = (a1 + 224);
    sub_100190608(&v3);
  }

  if (*(a1 + 216) == 1)
  {
    v3 = (a1 + 192);
    sub_10019029C(&v3);
  }

  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  return sub_10071EAE0(a1);
}

void sub_1007AE1F8(uint64_t a1)
{
  sub_1007AE17C(a1);

  operator delete();
}

uint64_t sub_1007AE230(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4, int a5, __int128 *a6)
{
  v9 = sub_10071E5E4(a1, 0, a2, a3, a6);
  sub_1007AE048(v9 + 23, a4);
  *a1 = off_101E7DF08;
  *(a1 + 272) = a5;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 576) = 0;
  return a1;
}

uint64_t sub_1007AE2C8(uint64_t a1)
{
  *a1 = off_101E7DF08;
  if (*(a1 + 576) == 1)
  {
    sub_1002AF7A0(a1 + 296);
  }

  if (*(a1 + 264) == 1)
  {
    v3 = (a1 + 240);
    sub_100190608(&v3);
  }

  if (*(a1 + 232) == 1)
  {
    v3 = (a1 + 208);
    sub_10019029C(&v3);
  }

  if (*(a1 + 207) < 0)
  {
    operator delete(*(a1 + 184));
  }

  return sub_10071E738(a1);
}

void sub_1007AE374(uint64_t a1)
{
  sub_1007AE2C8(a1);

  operator delete();
}

void *sub_1007AE3AC(void *a1, uint64_t *a2, uint64_t a3, __int128 *a4, int a5)
{
  result = sub_10071E7DC(a1, *a2, 11, a3, a4);
  *(result + 42) = a5;
  *result = &off_101E7DF30;
  return result;
}

void sub_1007AE404(uint64_t a1)
{
  sub_10071EAE0(a1);

  operator delete();
}

uint64_t sub_1007AE43C(uint64_t a1, uint64_t a2, __int128 *a3, int a4, __int128 *a5, __int128 *a6)
{
  v9 = sub_10071E5E4(a1, 11, a2, a3, a6);
  *(v9 + 46) = a4;
  *v9 = off_101E7DF58;
  if (*(a5 + 23) < 0)
  {
    sub_100005F2C((a1 + 192), *a5, *(a5 + 1));
  }

  else
  {
    v10 = *a5;
    *(a1 + 208) = *(a5 + 2);
    *(a1 + 192) = v10;
  }

  v11 = *(a5 + 24);
  *(a1 + 232) = *(a5 + 5);
  *(a1 + 216) = v11;
  sub_1006A7ED8((a1 + 240), a5 + 3);
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  *(a1 + 584) = 0;
  return a1;
}

uint64_t sub_1007AE524(uint64_t a1)
{
  *a1 = off_101E7DF58;
  if (*(a1 + 584) == 1)
  {
    sub_1002AF7A0(a1 + 304);
  }

  if (*(a1 + 280) == 1 && *(a1 + 263) < 0)
  {
    operator delete(*(a1 + 240));
  }

  if (*(a1 + 215) < 0)
  {
    operator delete(*(a1 + 192));
  }

  return sub_10071E738(a1);
}

void sub_1007AE5B8(uint64_t a1)
{
  sub_1007AE524(a1);

  operator delete();
}

uint64_t sub_1007AE5F0(uint64_t a1, _OWORD *a2)
{
  *a1 = *a2;
  sub_10006F264((a1 + 16), a2 + 1);
  sub_10018F784((a1 + 48), (a2 + 3));
  sub_100190324((a1 + 80), (a2 + 5));
  return a1;
}

void sub_1007AE650(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (*(v10 + 72) == 1)
  {
    sub_10019029C(&a10);
  }

  if (*(v10 + 40) == 1 && *(v10 + 39) < 0)
  {
    operator delete(*(v10 + 16));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007AE698(uint64_t a1, uint64_t a2, __int128 *a3, _OWORD *a4, int a5, __int128 *a6)
{
  v9 = sub_10071E5E4(a1, 2, a2, a3, a6);
  sub_1007AE5F0((v9 + 23), a4);
  *a1 = off_101E7DF80;
  *(a1 + 296) = a5;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 600) = 0;
  return a1;
}

uint64_t sub_1007AE730(uint64_t a1)
{
  *a1 = off_101E7DF80;
  if (*(a1 + 600) == 1)
  {
    sub_1002AF7A0(a1 + 320);
  }

  if (*(a1 + 288) == 1)
  {
    v3 = (a1 + 264);
    sub_100190608(&v3);
  }

  if (*(a1 + 256) == 1)
  {
    v3 = (a1 + 232);
    sub_10019029C(&v3);
  }

  if (*(a1 + 224) == 1 && *(a1 + 223) < 0)
  {
    operator delete(*(a1 + 200));
  }

  return sub_10071E738(a1);
}

void sub_1007AE7E8(uint64_t a1)
{
  sub_1007AE730(a1);

  operator delete();
}

void *sub_1007AE820(void *a1, uint64_t *a2, uint64_t a3, __int128 *a4, _OWORD *a5)
{
  v7 = sub_10071E7DC(a1, *a2, 2, a3, a4);
  sub_1007AE5F0((v7 + 21), a5);
  *a1 = off_101E7DFA8;
  return a1;
}

uint64_t sub_1007AE89C(uint64_t a1)
{
  if (*(a1 + 272) == 1)
  {
    v3 = (a1 + 248);
    sub_100190608(&v3);
  }

  if (*(a1 + 240) == 1)
  {
    v3 = (a1 + 216);
    sub_10019029C(&v3);
  }

  if (*(a1 + 208) == 1 && *(a1 + 207) < 0)
  {
    operator delete(*(a1 + 184));
  }

  return sub_10071EAE0(a1);
}

void sub_1007AE924(uint64_t a1)
{
  sub_1007AE89C(a1);

  operator delete();
}

uint64_t sub_1007AE95C(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, __int128 *a5)
{
  v7 = sub_10071E5E4(a1, 4, a2, a3, a5);
  sub_10019068C(v7 + 23, a4);
  *a1 = off_101E7DFD0;
  *(a1 + 768) = 0;
  *(a1 + 776) = 0;
  *(a1 + 1064) = 0;
  return a1;
}

uint64_t sub_1007AE9E0(uint64_t a1)
{
  *a1 = off_101E7DFD0;
  if (*(a1 + 1064) == 1)
  {
    sub_1002AF7A0(a1 + 784);
  }

  if (*(a1 + 760) == 1)
  {
    v3 = (a1 + 736);
    sub_100190608(&v3);
  }

  if (*(a1 + 728) == 1)
  {
    v3 = (a1 + 704);
    sub_10019029C(&v3);
  }

  if (*(a1 + 696) == 1)
  {
    v3 = (a1 + 672);
    sub_100190608(&v3);
  }

  sub_100190D9C(a1 + 408);
  if (*(a1 + 400) == 1)
  {
    sub_100190B88(a1 + 184);
  }

  return sub_10071E738(a1);
}

void sub_1007AEAB4(uint64_t a1)
{
  sub_1007AE9E0(a1);

  operator delete();
}

void *sub_1007AEAEC(void *a1, uint64_t *a2, uint64_t a3, __int128 *a4, __int128 *a5)
{
  v7 = sub_10071E7DC(a1, *a2, 14, a3, a4);
  *v7 = off_101E7DFF8;
  v8 = v7 + 21;
  if (*(a5 + 23) < 0)
  {
    sub_100005F2C(v8, *a5, *(a5 + 1));
  }

  else
  {
    v9 = *a5;
    v8[2] = *(a5 + 2);
    *v8 = v9;
  }

  return a1;
}

uint64_t sub_1007AEB80(uint64_t a1)
{
  *a1 = off_101E7DFF8;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  return sub_10071EAE0(a1);
}

void sub_1007AEBE4(uint64_t a1)
{
  sub_1007AEB80(a1);

  operator delete();
}

void *sub_1007AEC1C(void *a1, uint64_t *a2, uint64_t a3, __int128 *a4, uint64_t a5)
{
  v7 = sub_10071E7DC(a1, *a2, 4, a3, a4);
  sub_10019068C(v7 + 21, a5);
  *a1 = off_101E7E020;
  return a1;
}

uint64_t sub_1007AEC98(uint64_t a1)
{
  if (*(a1 + 744) == 1)
  {
    v3 = (a1 + 720);
    sub_100190608(&v3);
  }

  if (*(a1 + 712) == 1)
  {
    v3 = (a1 + 688);
    sub_10019029C(&v3);
  }

  if (*(a1 + 680) == 1)
  {
    v3 = (a1 + 656);
    sub_100190608(&v3);
  }

  sub_100190D9C(a1 + 392);
  if (*(a1 + 384) == 1)
  {
    sub_100190B88(a1 + 168);
  }

  return sub_10071EAE0(a1);
}

void sub_1007AED3C(uint64_t a1)
{
  sub_1007AEC98(a1);

  operator delete();
}

uint64_t sub_1007AED74(uint64_t a1, uint64_t a2, __int128 *a3, _OWORD *a4, __int128 *a5)
{
  v7 = sub_10071E5E4(a1, 6, a2, a3, a5);
  *v7 = off_101E7E048;
  *(v7 + 23) = *a4;
  sub_100190E64((v7 + 25), a4 + 1);
  sub_1007B02C4((a1 + 232), (a4 + 3));
  sub_10018F784((a1 + 512), a4 + 328);
  return a1;
}

void sub_1007AEDF4(_Unwind_Exception *a1)
{
  sub_100191228(v1 + 184);
  sub_10071E738(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1007AEE40(uint64_t a1)
{
  *a1 = off_101E7E048;
  if (*(a1 + 536) == 1)
  {
    v3 = (a1 + 512);
    sub_10019029C(&v3);
  }

  sub_100191270(a1 + 232);
  if (*(a1 + 224) == 1 && *(a1 + 223) < 0)
  {
    operator delete(*(a1 + 200));
  }

  return sub_10071E738(a1);
}

void sub_1007AEED0(uint64_t a1)
{
  sub_1007AEE40(a1);

  operator delete();
}

uint64_t sub_1007AEF08(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4, __int128 *a5)
{
  v7 = sub_10071E5E4(a1, 7, a2, a3, a5);
  *v7 = off_101E7E070;
  v8 = *a4;
  *(v7 + 50) = *(a4 + 4);
  *(v7 + 23) = v8;
  sub_100190E64((v7 + 26), (a4 + 24));
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  sub_100191370((a1 + 240), *(a4 + 7), *(a4 + 8), 0xAF8AF8AF8AF8AF8BLL * ((*(a4 + 8) - *(a4 + 7)) >> 3));
  sub_10018F784((a1 + 264), (a4 + 5));
  *(a1 + 296) = 0;
  *(a1 + 320) = 0;
  return a1;
}

void sub_1007AEFD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1001915C8(va);
  if (*(v3 + 232) == 1 && *(v3 + 231) < 0)
  {
    operator delete(*(v3 + 208));
  }

  sub_10071E738(v3);
  _Unwind_Resume(a1);
}

uint64_t sub_1007AF020(uint64_t a1)
{
  *a1 = off_101E7E070;
  if (*(a1 + 320) == 1)
  {
    v3 = (a1 + 296);
    sub_10019029C(&v3);
  }

  if (*(a1 + 288) == 1)
  {
    v3 = (a1 + 264);
    sub_10019029C(&v3);
  }

  v3 = (a1 + 240);
  sub_1001915C8(&v3);
  if (*(a1 + 232) == 1 && *(a1 + 231) < 0)
  {
    operator delete(*(a1 + 208));
  }

  return sub_10071E738(a1);
}

void sub_1007AF0D4(uint64_t a1)
{
  sub_1007AF020(a1);

  operator delete();
}

void *sub_1007AF10C(void *a1, uint64_t *a2, uint64_t a3, __int128 *a4, __int128 *a5)
{
  v7 = sub_10071E7DC(a1, *a2, 9, a3, a4);
  *v7 = off_101E7E098;
  sub_1007B0370(v7 + 168, a5);
  return a1;
}

uint64_t sub_1007AF184(uint64_t a1)
{
  *a1 = off_101E7E098;
  if (*(a1 + 304) == 1 && *(a1 + 287) < 0)
  {
    operator delete(*(a1 + 264));
  }

  if (*(a1 + 239) < 0)
  {
    operator delete(*(a1 + 216));
  }

  if (*(a1 + 215) < 0)
  {
    operator delete(*(a1 + 192));
  }

  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  return sub_10071EAE0(a1);
}

void sub_1007AF224(uint64_t a1)
{
  sub_1007AF184(a1);

  operator delete();
}

void *sub_1007AF25C(void *a1, uint64_t *a2, uint64_t a3, __int128 *a4, __int128 *a5)
{
  v7 = sub_10071E7DC(a1, *a2, 10, a3, a4);
  *v7 = off_101E7E0C0;
  sub_1007B0478(v7 + 168, a5);
  return a1;
}

uint64_t sub_1007AF2D4(uint64_t a1)
{
  *a1 = off_101E7E0C0;
  if (*(a1 + 304) == 1 && *(a1 + 287) < 0)
  {
    operator delete(*(a1 + 264));
  }

  if (*(a1 + 239) < 0)
  {
    operator delete(*(a1 + 216));
  }

  if (*(a1 + 215) < 0)
  {
    operator delete(*(a1 + 192));
  }

  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  return sub_10071EAE0(a1);
}

void sub_1007AF374(uint64_t a1)
{
  sub_1007AF2D4(a1);

  operator delete();
}

void *sub_1007AF3AC(void *a1, uint64_t *a2, uint64_t a3, __int128 *a4, _DWORD *a5)
{
  result = sub_10071E7DC(a1, *a2, 10, a3, a4);
  *result = &off_101E7E0E8;
  *(result + 42) = *a5;
  return result;
}

void sub_1007AF408(uint64_t a1)
{
  sub_10071EAE0(a1);

  operator delete();
}

uint64_t sub_1007AF440(uint64_t a1, uint64_t *a2, uint64_t a3, __int128 *a4, __int128 *a5)
{
  v7 = sub_10071E7DC(a1, *a2, 12, a3, a4);
  *v7 = off_101E7E110;
  v8 = *a5;
  *(v7 + 184) = *(a5 + 16);
  *(v7 + 21) = v8;
  sub_10006F264(v7 + 192, (a5 + 24));
  sub_10006F264((a1 + 224), (a5 + 56));
  *(a1 + 256) = *(a5 + 88);
  sub_1006A38A0((a1 + 264), (a5 + 6));
  return a1;
}

void sub_1007AF4D4(_Unwind_Exception *a1)
{
  if (*(v1 + 248) == 1 && *(v1 + 247) < 0)
  {
    operator delete(*(v1 + 224));
  }

  if (*(v1 + 216) == 1 && *(v1 + 215) < 0)
  {
    operator delete(*(v1 + 192));
  }

  sub_10071EAE0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1007AF534(uint64_t a1)
{
  *a1 = off_101E7E110;
  if (*(a1 + 552) == 1)
  {
    sub_1002AF7A0(a1 + 272);
  }

  if (*(a1 + 248) == 1 && *(a1 + 247) < 0)
  {
    operator delete(*(a1 + 224));
  }

  if (*(a1 + 216) == 1 && *(a1 + 215) < 0)
  {
    operator delete(*(a1 + 192));
  }

  return sub_10071EAE0(a1);
}

void sub_1007AF5D4(uint64_t a1)
{
  sub_1007AF534(a1);

  operator delete();
}

void *sub_1007AF60C(void *a1, uint64_t *a2, uint64_t a3, __int128 *a4, __int128 *a5)
{
  v7 = sub_10071F078(a1, *a2, 1, a3, a4);
  sub_1007AE048(v7 + 21, a5);
  *a1 = off_101E7E138;
  return a1;
}

uint64_t sub_1007AF688(uint64_t a1)
{
  if (*(a1 + 248) == 1)
  {
    v3 = (a1 + 224);
    sub_100190608(&v3);
  }

  if (*(a1 + 216) == 1)
  {
    v3 = (a1 + 192);
    sub_10019029C(&v3);
  }

  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  return sub_10071F384(a1);
}

void sub_1007AF704(uint64_t a1)
{
  sub_1007AF688(a1);

  operator delete();
}

uint64_t sub_1007AF73C(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4, __int128 *a5, uint64_t a6, __int128 *a7, __int128 *a8)
{
  v10 = sub_10071EDCC(a1, 1, a2, a3, a4, a7, a8);
  sub_1007AE048((v10 + 232), a5);
  *a1 = off_101E7E160;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  *(a1 + 624) = 0;
  return a1;
}

uint64_t sub_1007AF7CC(uint64_t a1)
{
  *a1 = off_101E7E160;
  if (*(a1 + 624) == 1)
  {
    sub_1002AF7A0(a1 + 344);
  }

  if (*(a1 + 312) == 1)
  {
    v3 = (a1 + 288);
    sub_100190608(&v3);
  }

  if (*(a1 + 280) == 1)
  {
    v3 = (a1 + 256);
    sub_10019029C(&v3);
  }

  if (*(a1 + 255) < 0)
  {
    operator delete(*(a1 + 232));
  }

  return sub_10071EFBC(a1);
}

void sub_1007AF878(uint64_t a1)
{
  sub_1007AF7CC(a1);

  operator delete();
}

void *sub_1007AF8B0(void *a1, uint64_t *a2, uint64_t a3, __int128 *a4, int a5)
{
  result = sub_10071F078(a1, *a2, 11, a3, a4);
  *(result + 42) = a5;
  *result = &off_101E7E188;
  return result;
}

void sub_1007AF908(uint64_t a1)
{
  sub_10071F384(a1);

  operator delete();
}

uint64_t sub_1007AF940(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4, uint64_t a5, int a6, __int128 *a7, __int128 *a8)
{
  v11 = sub_10071EDCC(a1, 3, a2, a3, a4, a7, a8);
  *v11 = off_101E7E1B0;
  sub_1000D4128((v11 + 29), a5);
  *(a1 + 560) = *(a5 + 328);
  sub_100190324((a1 + 576), a5 + 344);
  *(a1 + 608) = a6;
  *(a1 + 616) = 0;
  *(a1 + 624) = 0;
  *(a1 + 912) = 0;
  return a1;
}

void sub_1007AF9E4(_Unwind_Exception *a1)
{
  sub_1000D45B0(v2);
  sub_10071EFBC(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1007AFA0C(uint64_t a1)
{
  *a1 = off_101E7E1B0;
  if (*(a1 + 912) == 1)
  {
    sub_1002AF7A0(a1 + 632);
  }

  if (*(a1 + 600) == 1)
  {
    v3 = (a1 + 576);
    sub_100190608(&v3);
  }

  sub_1000D45B0(a1 + 232);
  return sub_10071EFBC(a1);
}

void sub_1007AFA94(uint64_t a1)
{
  sub_1007AFA0C(a1);

  operator delete();
}

void *sub_1007AFACC(void *a1, uint64_t *a2, uint64_t a3, __int128 *a4, _OWORD *a5)
{
  v7 = sub_10071F078(a1, *a2, 3, a3, a4);
  sub_1007AE5F0((v7 + 21), a5);
  *a1 = off_101E7E1D8;
  return a1;
}

uint64_t sub_1007AFB48(uint64_t a1)
{
  if (*(a1 + 272) == 1)
  {
    v3 = (a1 + 248);
    sub_100190608(&v3);
  }

  if (*(a1 + 240) == 1)
  {
    v3 = (a1 + 216);
    sub_10019029C(&v3);
  }

  if (*(a1 + 208) == 1 && *(a1 + 207) < 0)
  {
    operator delete(*(a1 + 184));
  }

  return sub_10071F384(a1);
}

void sub_1007AFBD0(uint64_t a1)
{
  sub_1007AFB48(a1);

  operator delete();
}

uint64_t sub_1007AFC08(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4, uint64_t a5, __int128 *a6, __int128 *a7)
{
  v9 = sub_10071EDCC(a1, 5, a2, a3, a4, a6, a7);
  sub_10019068C((v9 + 232), a5);
  *a1 = off_101E7E200;
  *(a1 + 816) = 0;
  *(a1 + 824) = 0;
  *(a1 + 1112) = 0;
  return a1;
}

uint64_t sub_1007AFC90(uint64_t a1)
{
  *a1 = off_101E7E200;
  if (*(a1 + 1112) == 1)
  {
    sub_1002AF7A0(a1 + 832);
  }

  if (*(a1 + 808) == 1)
  {
    v3 = (a1 + 784);
    sub_100190608(&v3);
  }

  if (*(a1 + 776) == 1)
  {
    v3 = (a1 + 752);
    sub_10019029C(&v3);
  }

  if (*(a1 + 744) == 1)
  {
    v3 = (a1 + 720);
    sub_100190608(&v3);
  }

  sub_100190D9C(a1 + 456);
  if (*(a1 + 448) == 1)
  {
    sub_100190B88(a1 + 232);
  }

  return sub_10071EFBC(a1);
}

void sub_1007AFD64(uint64_t a1)
{
  sub_1007AFC90(a1);

  operator delete();
}

void *sub_1007AFD9C(void *a1, uint64_t *a2, uint64_t a3, __int128 *a4, uint64_t a5)
{
  v7 = sub_10071F078(a1, *a2, 4, a3, a4);
  sub_10019068C(v7 + 21, a5);
  *a1 = off_101E7E228;
  return a1;
}

uint64_t sub_1007AFE18(uint64_t a1)
{
  if (*(a1 + 744) == 1)
  {
    v3 = (a1 + 720);
    sub_100190608(&v3);
  }

  if (*(a1 + 712) == 1)
  {
    v3 = (a1 + 688);
    sub_10019029C(&v3);
  }

  if (*(a1 + 680) == 1)
  {
    v3 = (a1 + 656);
    sub_100190608(&v3);
  }

  sub_100190D9C(a1 + 392);
  if (*(a1 + 384) == 1)
  {
    sub_100190B88(a1 + 168);
  }

  return sub_10071F384(a1);
}

void sub_1007AFEBC(uint64_t a1)
{
  sub_1007AFE18(a1);

  operator delete();
}

void *sub_1007AFEF4(void *a1, uint64_t *a2, uint64_t a3, void *a4, __int128 *a5, __int128 *a6)
{
  v8 = sub_10071EB84(a1, *a2, 0, a3, a4, a5);
  sub_1007AE048((v8 + 192), a6);
  *a1 = off_101E7E250;
  return a1;
}

uint64_t sub_1007AFF74(uint64_t a1)
{
  if (*(a1 + 272) == 1)
  {
    v3 = (a1 + 248);
    sub_100190608(&v3);
  }

  if (*(a1 + 240) == 1)
  {
    v3 = (a1 + 216);
    sub_10019029C(&v3);
  }

  if (*(a1 + 215) < 0)
  {
    operator delete(*(a1 + 192));
  }

  return sub_10071ED1C(a1);
}

void sub_1007AFFF0(uint64_t a1)
{
  sub_1007AFF74(a1);

  operator delete();
}

void *sub_1007B0028(void *a1, uint64_t *a2, uint64_t a3, void *a4, __int128 *a5, _OWORD *a6)
{
  v8 = sub_10071EB84(a1, *a2, 2, a3, a4, a5);
  sub_1007AE5F0(v8 + 192, a6);
  *a1 = off_101E7E278;
  return a1;
}

uint64_t sub_1007B00A8(uint64_t a1)
{
  if (*(a1 + 296) == 1)
  {
    v3 = (a1 + 272);
    sub_100190608(&v3);
  }

  if (*(a1 + 264) == 1)
  {
    v3 = (a1 + 240);
    sub_10019029C(&v3);
  }

  if (*(a1 + 232) == 1 && *(a1 + 231) < 0)
  {
    operator delete(*(a1 + 208));
  }

  return sub_10071ED1C(a1);
}

void sub_1007B0130(uint64_t a1)
{
  sub_1007B00A8(a1);

  operator delete();
}

void *sub_1007B0168(void *a1, uint64_t *a2, uint64_t a3, void *a4, __int128 *a5, uint64_t a6)
{
  v8 = sub_10071EB84(a1, *a2, 2, a3, a4, a5);
  sub_10019068C((v8 + 192), a6);
  *a1 = off_101E7E2A0;
  return a1;
}

uint64_t sub_1007B01E8(uint64_t a1)
{
  if (*(a1 + 768) == 1)
  {
    v3 = (a1 + 744);
    sub_100190608(&v3);
  }

  if (*(a1 + 736) == 1)
  {
    v3 = (a1 + 712);
    sub_10019029C(&v3);
  }

  if (*(a1 + 704) == 1)
  {
    v3 = (a1 + 680);
    sub_100190608(&v3);
  }

  sub_100190D9C(a1 + 416);
  if (*(a1 + 408) == 1)
  {
    sub_100190B88(a1 + 192);
  }

  return sub_10071ED1C(a1);
}

void sub_1007B028C(uint64_t a1)
{
  sub_1007B01E8(a1);

  operator delete();
}

_BYTE *sub_1007B02C4(_BYTE *a1, uint64_t a2)
{
  v4 = sub_100190EB4(a1, a2);
  sub_1001910E4((v4 + 184), (a2 + 184));
  sub_100191134((a1 + 216), (a2 + 216));
  sub_10018F784(a1 + 31, a2 + 248);
  return a1;
}

void sub_1007B0314(_Unwind_Exception *a1)
{
  if (*(v1 + 240) == 1 && *(v1 + 239) < 0)
  {
    operator delete(*(v1 + 216));
  }

  if (*(v1 + 208) == 1 && *(v1 + 207) < 0)
  {
    operator delete(*(v1 + 184));
  }

  sub_100191184(v1);
  _Unwind_Resume(a1);
}

char *sub_1007B0370(char *__dst, __int128 *a2)
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

  if (*(a2 + 71) < 0)
  {
    sub_100005F2C(__dst + 48, *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v6 = a2[3];
    *(__dst + 8) = *(a2 + 8);
    *(__dst + 3) = v6;
  }

  v7 = *(a2 + 72);
  *(__dst + 11) = *(a2 + 11);
  *(__dst + 72) = v7;
  sub_1006A7ED8(__dst + 96, a2 + 6);
  return __dst;
}

void sub_1007B042C(_Unwind_Exception *exception_object)
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

char *sub_1007B0478(char *__dst, __int128 *a2)
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

  if (*(a2 + 71) < 0)
  {
    sub_100005F2C(__dst + 48, *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v6 = a2[3];
    *(__dst + 8) = *(a2 + 8);
    *(__dst + 3) = v6;
  }

  v7 = *(a2 + 72);
  *(__dst + 11) = *(a2 + 11);
  *(__dst + 72) = v7;
  sub_1006A7ED8(__dst + 96, a2 + 6);
  return __dst;
}

void sub_1007B0534(_Unwind_Exception *exception_object)
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

double sub_1007B0580(uint64_t a1)
{
  *a1 = off_101E7E750;
  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  return result;
}

void sub_1007B05B0(void **a1)
{
  *a1 = off_101E7E750;
  v2 = (a1 + 1);
  v3 = a1 + 2;
  sub_100140868(&v3);
  sub_100140928(v2, 0);
  PB::Base::~Base(a1);
}

void sub_1007B0620(void **a1)
{
  sub_1007B05B0(a1);

  operator delete();
}

uint64_t sub_1007B0658(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    PB::TextFormatter::format(this, "csn", v5);
  }

  if (*(a1 + 48))
  {
    PB::TextFormatter::format(this, "error", *(a1 + 40));
  }

  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  while (v6 != v7)
  {
    v8 = *v6++;
    (*(*v8 + 32))(v8, this, "pendingProfile");
  }

  if ((*(a1 + 48) & 2) != 0)
  {
    PB::TextFormatter::format(this, "result", *(a1 + 44));
  }

  return PB::TextFormatter::endObject(this);
}

uint64_t sub_1007B0748(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_58;
          }

          v21 = *v19;
          *(this + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(this + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) > 2)
      {
        if (v22 == 3)
        {
          *(a1 + 48) |= 2u;
          v32 = *(this + 1);
          if (v32 >= *(this + 2))
          {
            v35 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v33 = v32 + 1;
            v34 = *(*this + v32);
            *(this + 1) = v33;
            v35 = v34 != 0;
          }

          *(a1 + 44) = v35;
          goto LABEL_54;
        }

        if (v22 == 4)
        {
          *(a1 + 48) |= 1u;
          v24 = *(this + 1);
          v23 = *(this + 2);
          v25 = *this;
          if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
          {
            v36 = 0;
            v37 = 0;
            v28 = 0;
            v17 = v23 >= v24;
            v38 = v23 - v24;
            if (!v17)
            {
              v38 = 0;
            }

            v39 = (v25 + v24);
            v40 = v24 + 1;
            while (1)
            {
              if (!v38)
              {
                LODWORD(v28) = 0;
                *(this + 24) = 1;
                goto LABEL_53;
              }

              v41 = *v39;
              *(this + 1) = v40;
              v28 |= (v41 & 0x7F) << v36;
              if ((v41 & 0x80) == 0)
              {
                break;
              }

              v36 += 7;
              --v38;
              ++v39;
              ++v40;
              v14 = v37++ > 8;
              if (v14)
              {
LABEL_47:
                LODWORD(v28) = 0;
                goto LABEL_53;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v28) = 0;
            }
          }

          else
          {
            v26 = 0;
            v27 = 0;
            v28 = 0;
            v29 = (v25 + v24);
            v30 = v24 + 1;
            while (1)
            {
              *(this + 1) = v30;
              v31 = *v29++;
              v28 |= (v31 & 0x7F) << v26;
              if ((v31 & 0x80) == 0)
              {
                break;
              }

              v26 += 7;
              ++v30;
              v14 = v27++ > 8;
              if (v14)
              {
                goto LABEL_47;
              }
            }
          }

LABEL_53:
          *(a1 + 40) = v28;
          goto LABEL_54;
        }
      }

      else
      {
        if (v22 == 1)
        {
          operator new();
        }

        if (v22 == 2)
        {
          sub_1007B0ACC((a1 + 16));
        }
      }

      if ((PB::Reader::skip(this, v22, v10 & 7, 0) & 1) == 0)
      {
        v43 = 0;
        return v43 & 1;
      }

LABEL_54:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_58:
  v43 = v4 ^ 1;
  return v43 & 1;
}

uint64_t sub_1007B0C18(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 8);
  if (v4)
  {
    result = PB::Writer::write(this, v4, 1u);
  }

  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  while (v5 != v6)
  {
    v7 = *v5++;
    result = PB::Writer::writeSubmessage(this, v7, 2u);
  }

  v8 = *(v3 + 48);
  if ((v8 & 2) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 44), 3u);
    v8 = *(v3 + 48);
  }

  if (v8)
  {
    v9 = *(v3 + 40);

    return PB::Writer::writeVarInt(this, v9, 4u);
  }

  return result;
}

void *sub_1007B0CC4(void *result)
{
  *result = off_101E7E7A0;
  result[1] = 0;
  return result;
}

void sub_1007B0CE4(void ***a1)
{
  *a1 = off_101E7E7A0;
  sub_100140928(a1 + 1, 0);

  PB::Base::~Base(a1);
}

void sub_1007B0D3C(void ***a1)
{
  *a1 = off_101E7E7A0;
  sub_100140928(a1 + 1, 0);
  PB::Base::~Base(a1);

  operator delete();
}

void *sub_1007B0DA8(void *a1, uint64_t a2)
{
  *a1 = off_101E7E7A0;
  a1[1] = 0;
  if (*(a2 + 8))
  {
    operator new();
  }

  return a1;
}

uint64_t sub_1007B0E54(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    PB::TextFormatter::format(this, "csn", v5);
  }

  return PB::TextFormatter::endObject(this);
}

uint64_t sub_1007B0EB0(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v6 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v14 = 0;
        v15 = 0;
        v9 = 0;
        v16 = v3 >= v2;
        v17 = v3 - v2;
        if (!v16)
        {
          v17 = 0;
        }

        v18 = (v6 + v2);
        v19 = v2 + 1;
        while (1)
        {
          if (!v17)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_29;
          }

          v20 = *v18;
          *(this + 1) = v19;
          v9 |= (v20 & 0x7F) << v14;
          if ((v20 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          --v17;
          ++v18;
          ++v19;
          v13 = v15++ > 8;
          if (v13)
          {
LABEL_18:
            v9 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v9 = 0;
        }
      }

      else
      {
        v7 = 0;
        v8 = 0;
        v9 = 0;
        v10 = (v6 + v2);
        v11 = v2 + 1;
        while (1)
        {
          *(this + 1) = v11;
          v12 = *v10++;
          v9 |= (v12 & 0x7F) << v7;
          if ((v12 & 0x80) == 0)
          {
            break;
          }

          v7 += 7;
          ++v11;
          v13 = v8++ > 8;
          if (v13)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v9 & 7) == 4))
      {
        break;
      }

      if ((v9 >> 3) == 1)
      {
        operator new();
      }

      if (!PB::Reader::skip(this, v9 >> 3, v9 & 7, 0))
      {
        v21 = 0;
        return v21 & 1;
      }

      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_29:
  v21 = v4 ^ 1;
  return v21 & 1;
}

uint64_t sub_1007B1070(uint64_t result, PB::Writer *this)
{
  v2 = *(result + 8);
  if (v2)
  {
    return PB::Writer::write(this, v2, 1u);
  }

  return result;
}

void DataServiceController::synchronizePreferredDataSIM_sync(DataServiceController *this, const char *a2)
{
  if ((*(this + 288) & 1) == 0)
  {
    if ((v4 = capabilities::ct::supportsGemini(this), v4) && (v4 = capabilities::ct::supportsDataSubscriptionController(v4), !v4) || capabilities::ct::supportsDualSIMSingleStackWithCrossMapping(v4))
    {
      v5 = *(this + 5);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v33 = 136315138;
        v34 = a2;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I MSIM: synchronizePreferredDataSIM: reason: '%s'", &v33, 0xCu);
      }

      v6 = *(this + 1133);
      v7 = (*(**(this + 6) + 16))(*(this + 6), *(this + 1132));
      v8 = v7;
      v9 = *(this + 1132);
      if (!v9)
      {
        v14 = *v7;
        if (!os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        LOWORD(v33) = 0;
        v15 = "#N MSIM: synchronizePreferredDataSIM: unknown SIM from UI. Before we get info from UI, we do not reconfigure anything.";
        goto LABEL_38;
      }

      if (!v6)
      {
        v10 = *v7;
        if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v33) = 0;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#N MSIM: synchronizePreferredDataSIM: unknown dual SIM mode from UI. Before we get info from UI, we assume that BB has the right information.", &v33, 2u);
          v9 = *(this + 1132);
        }

        v6 = *(this + 1138);
      }

      v11 = sub_100097DB0(*(this + 18), v9);
      if ((v11 & 1) == 0)
      {
        v11 = capabilities::ct::supportsDualSIMSingleStackWithCrossMapping(v11);
        if ((v11 & 1) == 0)
        {
          v19 = *v8;
          if (!os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
          {
            return;
          }

          v20 = subscriber::asString();
          v33 = 136315138;
          v34 = v20;
          v15 = "#E MSIM: synchronizePreferredDataSIM: wrong SIM from UI: %s";
          v21 = v19;
          v22 = 12;
          goto LABEL_39;
        }
      }

      v12 = capabilities::ct::supportsDualSIMSingleStackWithCrossMapping(v11);
      v13 = *(this + 18);
      if (v12)
      {
        if (!sub_100097DB0(v13, 1))
        {
          v14 = *v8;
          if (!os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
          {
            return;
          }

          LOWORD(v33) = 0;
          v15 = "#E MSIM: synchronizePreferredDataSIM: fDataModels empty (0)";
          goto LABEL_38;
        }

        if (!*(sub_1000A8A0C(*(this + 18), 1) + 24))
        {
          v14 = *v8;
          if (!os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
          {
            return;
          }

          LOWORD(v33) = 0;
          v15 = "#E MSIM: synchronizePreferredDataSIM: BB driver empty (1)";
LABEL_38:
          v21 = v14;
          v22 = 2;
LABEL_39:
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, v15, &v33, v22);
          return;
        }
      }

      else
      {
        if (!sub_100097DB0(v13, *(this + 1132)))
        {
          v14 = *v8;
          if (!os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
          {
            return;
          }

          LOWORD(v33) = 0;
          v15 = "#E MSIM: synchronizePreferredDataSIM: invalid SIM (2)";
          goto LABEL_38;
        }

        if (!*(sub_1000A8A0C(*(this + 18), *(this + 1132)) + 24))
        {
          v14 = *v8;
          if (!os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
          {
            return;
          }

          LOWORD(v33) = 0;
          v15 = "#E MSIM: synchronizePreferredDataSIM: BB driver empty (3)";
          goto LABEL_38;
        }
      }

      v16 = *(this + 1132);
      if (v16 == *(this + 1137))
      {
        v17 = atomic_load(this + 1134);
        if (v16 == v17)
        {
          if (v6 == *(this + 1138))
          {
            v18 = atomic_load(this + 1135);
            if (v6 == v18)
            {
              v14 = *v8;
              if (!os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
              {
                return;
              }

              LOWORD(v33) = 0;
              v15 = "#N MSIM: synchronizePreferredDataSIM: nothing to do";
              goto LABEL_38;
            }

            v23 = "UI and CT have different understanding which dual SIM mode we are in, UI has priority";
          }

          else
          {
            v23 = "UI and BB have different understanding which dual SIM mode we are in, UI has priority";
          }
        }

        else
        {
          v23 = "UI and CT have different understanding which SIM is the preferred Data SIM, UI has priority";
        }
      }

      else
      {
        v23 = "UI and BB have different understanding which SIM is the preferred Data SIM, UI has priority";
      }

      v24 = *v8;
      v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
      v26 = *(this + 1132);
      if (v25)
      {
        v27 = subscriber::asString();
        v28 = subscriber::asString();
        atomic_load(this + 1134);
        v29 = subscriber::asString();
        v30 = subscriber::asString();
        v31 = subscriber::asString();
        atomic_load(this + 1135);
        v32 = subscriber::asString();
        v33 = 136316418;
        v34 = v27;
        v35 = 2080;
        v36 = v28;
        v37 = 2080;
        v38 = v29;
        v39 = 2080;
        v40 = v30;
        v41 = 2080;
        v42 = v31;
        v43 = 2080;
        v44 = v32;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I MSIM: synchronizePreferredDataSIM: have to run update process: SIM from UI: %s, SIM from BB: %s, currently preferred SIM: %s, dual SIM from UI: %s, dual SIM from BB: %s, current dual SIM: %s", &v33, 0x3Eu);
        v26 = *(this + 1132);
      }

      DataServiceController::updatePreferredDataSIM_sync(this, v26, v23, v6);
    }
  }
}

void DataServiceController::updatePreferredDataSIM_sync(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100004AA0(buf, (a1 + 8));
  v8 = *buf;
  v7 = *&buf[8];
  if (*&buf[8])
  {
    atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
    sub_100004A34(v7);
  }

  sub_100004AA0(buf, (a1 + 8));
  v9 = *&buf[8];
  v33 = *buf;
  v34 = *&buf[8];
  if (*&buf[8])
  {
    atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
    sub_100004A34(v9);
  }

  v35 = v8;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  *v36 = a1;
  *&v36[8] = a2;
  *&v36[16] = a3;
  *&v36[24] = a4;
  if (*(a1 + 4548) != a2 || *(a1 + 4552) != a4)
  {
    DataServiceController::MsimLpmWaiting::reset((a1 + 4616));
    ServiceMap = Registry::getServiceMap(*(a1 + 104));
    v11 = ServiceMap;
    if (v12 < 0)
    {
      v13 = (v12 & 0x7FFFFFFFFFFFFFFFLL);
      v14 = 5381;
      do
      {
        v12 = v14;
        v15 = *v13++;
        v14 = (33 * v14) ^ v15;
      }

      while (v15);
    }

    std::mutex::lock(ServiceMap);
    *buf = v12;
    v16 = sub_100009510(&v11[1].__m_.__sig, buf);
    if (v16)
    {
      v18 = v16[3];
      v17 = v16[4];
      if (v17)
      {
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v11);
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v17);
        v19 = 0;
        if (!v18)
        {
          goto LABEL_22;
        }

        goto LABEL_26;
      }
    }

    else
    {
      v18 = 0;
    }

    std::mutex::unlock(v11);
    v17 = 0;
    v19 = 1;
    if (!v18)
    {
LABEL_22:
      v20 = *(a1 + 40);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_10177E6AC(v20, v21, v22);
      }

      goto LABEL_31;
    }

LABEL_26:
    (*(*v18 + 8))(buf, v18, "MSIM reconfiguration", 0);
    v23 = *buf;
    memset(buf, 0, sizeof(buf));
    v24 = *(a1 + 4640);
    *(a1 + 4632) = v23;
    if (v24)
    {
      sub_100004A34(v24);
      if (*&buf[8])
      {
        sub_100004A34(*&buf[8]);
      }
    }

    v25 = *(a1 + 40);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = asStringBool(*(a1 + 4632) != 0);
      *buf = 136315138;
      *&buf[4] = v26;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I MSIM update: PowerAssertion set: %s", buf, 0xCu);
    }

LABEL_31:
    if ((v19 & 1) == 0)
    {
      sub_100004A34(v17);
    }

    sub_10000501C(buf, "/cc/assertions/airplane_mode");
    ctu::rest::AssertionHandle::create();
    if (SHIBYTE(v38) < 0)
    {
      operator delete(*buf);
    }

    v27 = *(a1 + 4624);
    *(a1 + 4616) = v31;
    if (v27)
    {
      sub_100004A34(v27);
    }

    sub_100004AA0(buf, (a1 + 8));
    v29 = *buf;
    v28 = *&buf[8];
    if (*&buf[8])
    {
      atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
      sub_100004A34(v28);
    }

    if (v34)
    {
      atomic_fetch_add_explicit((v34 + 16), 1uLL, memory_order_relaxed);
    }

    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    *&v32 = a3;
    *(&v32 + 1) = __PAIR64__(a4, a2);
    *buf = a1;
    *&buf[8] = v29;
    v38 = v28;
    v39 = v33;
    v40 = v34;
    v41 = a1;
    v42 = a2;
    v43 = v35;
    v44 = v7;
    *(v45 + 12) = *&v36[12];
    v45[0] = *v36;
    v47 = a4;
    v46 = a3;
    v48 = v32;
    v49 = 0;
    operator new();
  }

  (*(*a1 + 2176))(a1, a2, a4, 1, "already have SIM set");
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }

  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }
}

void sub_1007B1A68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *__p, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  if ((v48 & 1) == 0)
  {
    sub_100004A34(v49);
  }

  sub_1007B3E04(&a31);
  if (a11)
  {
    std::__shared_weak_count::__release_weak(a11);
  }

  _Unwind_Resume(a1);
}

void DataServiceController::ipcInterfaceConfigOnRadioState(Registry **a1, uint64_t a2)
{
  v2 = a2;
  if (capabilities::ct::supportsIPCInterfaceConfig(a1))
  {
    ServiceMap = Registry::getServiceMap(a1[13]);
    v5 = ServiceMap;
    if (v2 <= 2)
    {
      if (v6 < 0)
      {
        v7 = (v6 & 0x7FFFFFFFFFFFFFFFLL);
        v8 = 5381;
        do
        {
          v6 = v8;
          v9 = *v7++;
          v8 = (33 * v8) ^ v9;
        }

        while (v9);
      }

      std::mutex::lock(ServiceMap);
      __p[0] = v6;
      v10 = sub_100009510(&v5[1].__m_.__sig, __p);
      if (v10)
      {
        v12 = v10[3];
        v11 = v10[4];
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v5);
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v11);
          v13 = 0;
          if (!v12)
          {
            goto LABEL_27;
          }

          goto LABEL_19;
        }
      }

      else
      {
        v12 = 0;
      }

      std::mutex::unlock(v5);
      v11 = 0;
      v13 = 1;
      if (!v12)
      {
        goto LABEL_27;
      }

LABEL_19:
      sub_10000501C(&v27, "Baseband state change: ");
      v19 = radioStateAsString();
      v20 = strlen(v19);
      v21 = std::string::append(&v27, v19, v20);
      v22 = *&v21->__r_.__value_.__l.__data_;
      v29 = v21->__r_.__value_.__r.__words[2];
      *__p = v22;
      v21->__r_.__value_.__l.__size_ = 0;
      v21->__r_.__value_.__r.__words[2] = 0;
      v21->__r_.__value_.__r.__words[0] = 0;
      (*(*v12 + 40))(v12, __p);
LABEL_23:
      if (SHIBYTE(v29) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v27.__r_.__value_.__l.__data_);
      }

      goto LABEL_27;
    }

    if (v6 < 0)
    {
      v14 = (v6 & 0x7FFFFFFFFFFFFFFFLL);
      v15 = 5381;
      do
      {
        v6 = v15;
        v16 = *v14++;
        v15 = (33 * v15) ^ v16;
      }

      while (v16);
    }

    std::mutex::lock(ServiceMap);
    __p[0] = v6;
    v17 = sub_100009510(&v5[1].__m_.__sig, __p);
    if (v17)
    {
      v18 = v17[3];
      v11 = v17[4];
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v5);
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v11);
        v13 = 0;
        if (!v18)
        {
LABEL_27:
          if ((v13 & 1) == 0)
          {
            sub_100004A34(v11);
          }

          return;
        }

        goto LABEL_22;
      }
    }

    else
    {
      v18 = 0;
    }

    std::mutex::unlock(v5);
    v11 = 0;
    v13 = 1;
    if (!v18)
    {
      goto LABEL_27;
    }

LABEL_22:
    sub_10000501C(&v27, "Baseband state change: ");
    v23 = radioStateAsString();
    v24 = strlen(v23);
    v25 = std::string::append(&v27, v23, v24);
    v26 = *&v25->__r_.__value_.__l.__data_;
    v29 = v25->__r_.__value_.__r.__words[2];
    *__p = v26;
    v25->__r_.__value_.__l.__size_ = 0;
    v25->__r_.__value_.__r.__words[2] = 0;
    v25->__r_.__value_.__r.__words[0] = 0;
    (*(*v18 + 48))(v18, __p);
    goto LABEL_23;
  }
}

void sub_1007B1DA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if ((v22 & 1) == 0)
  {
    sub_100004A34(v21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DataServiceController::handleRadioState_sync(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 884);
  if (v3 == a2)
  {
    goto LABEL_40;
  }

  v4 = a2;
  v5 = *(a1 + 40);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = radioStateAsString();
    v7 = radioStateAsString();
    v8 = asStringBool(*(a1 + 4616) != 0);
    if (*(a1 + 4672))
    {
      v9 = *(a1 + 4616) != 0;
    }

    else
    {
      v9 = 0;
    }

    *buf = 136315906;
    *&buf[4] = v6;
    *&buf[12] = 2080;
    *&buf[14] = v7;
    *&buf[22] = 2080;
    *&buf[24] = v8;
    v53 = 2080;
    v54 = asStringBool(v9);
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I radio state (change states) %s->%s, airplane assertion %s, airplane assertion waiting %s", buf, 0x2Au);
  }

  DataServiceController::ipcInterfaceConfigOnRadioState(a1, v3);
  if (v4 <= 1)
  {
    if (v3 > 5 || ((1 << v3) & 0x2C) == 0)
    {
      goto LABEL_29;
    }

    v10 = *(a1 + 144);
    v11 = *(v10 + 8);
    for (i = *(v10 + 16); v11 != i; v11 += 54)
    {
      v13 = v11[3];
      if (v13)
      {
        (*(*v13 + 352))(v13);
        v15 = v11[52];
        v14 = v11[53];
        if (v14)
        {
          atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
          v16 = *(v15 + 52);
          sub_100004A34(v14);
        }

        else
        {
          v16 = *(v15 + 52);
        }

        DataServiceController::tetheringAuthStateReset_sync(a1, v16, 0);
      }
    }
  }

  if (v3 == 3)
  {
    if (*(a1 + 4616))
    {
      v18 = *(a1 + 40);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I MSIM update: baseband got reset while reconfiguring", buf, 2u);
      }

      DataServiceController::handleMSimConfigCallbackFromBB_sync(a1, *(a1 + 4688), *(a1 + 4692), 1, 0);
    }
  }

  else if (v3 == 2 && *(a1 + 4672) && *(a1 + 4616))
  {
    v17 = *(a1 + 40);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I MSIM update: got real airplane mode", buf, 2u);
    }

    memset(buf, 0, sizeof(buf));
    sub_10010BE30(buf, a1 + 4648);
    sub_10016DBD4(a1 + 4648);
    if (!*&buf[24])
    {
      sub_100022DB4();
    }

    (*(**&buf[24] + 48))(*&buf[24]);
    sub_10002B644(buf);
  }

LABEL_29:
  isRadioOff = DataServiceController::isRadioOff(v3);
  if (isRadioOff == DataServiceController::isRadioOff(v4))
  {
    goto LABEL_39;
  }

  if (DataServiceController::isRadioOff(v3))
  {
    v20 = "Radio Off";
  }

  else
  {
    v20 = "Radio On";
  }

  sub_10000501C(__p, v20);
  *buf = 3;
  buf[4] = 0;
  if (SHIBYTE(v51) < 0)
  {
    sub_100005F2C(&buf[8], __p[0], __p[1]);
  }

  else
  {
    *&buf[8] = *__p;
    *&buf[24] = v51;
  }

  sub_10008B0C8(a1 + 120, buf);
  if (buf[31] < 0)
  {
    operator delete(*&buf[8]);
  }

  if (SHIBYTE(v51) < 0)
  {
    operator delete(__p[0]);
    if (v3)
    {
      goto LABEL_40;
    }
  }

  else
  {
LABEL_39:
    if (v3)
    {
      goto LABEL_40;
    }
  }

  v27 = *(a1 + 144);
  v28 = *(v27 + 8);
  for (j = *(v27 + 16); v28 != j; v28 += 54)
  {
    v30 = *v28;
    v31 = v28[1];
    while (v30 != v31)
    {
      v32 = *v30;
      v33 = v30[1];
      if (v33)
      {
        atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v32)
      {
        (*(*v32 + 40))(v32);
      }

      if (v33)
      {
        sub_100004A34(v33);
      }

      v30 += 2;
    }
  }

  DataServiceController::updateCurrentDataSIMToBB_sync(a1, 5);
  ServiceMap = Registry::getServiceMap(*(a1 + 104));
  v35 = ServiceMap;
  if (v36 < 0)
  {
    v37 = (v36 & 0x7FFFFFFFFFFFFFFFLL);
    v38 = 5381;
    do
    {
      v36 = v38;
      v39 = *v37++;
      v38 = (33 * v38) ^ v39;
    }

    while (v39);
  }

  std::mutex::lock(ServiceMap);
  *buf = v36;
  v40 = sub_100009510(&v35[1].__m_.__sig, buf);
  if (v40)
  {
    v42 = v40[3];
    v41 = v40[4];
    if (v41)
    {
      atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v35);
      atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v41);
      v43 = 0;
      if (!v42)
      {
        goto LABEL_68;
      }

      goto LABEL_67;
    }
  }

  else
  {
    v42 = 0;
  }

  std::mutex::unlock(v35);
  v41 = 0;
  v43 = 1;
  if (v42)
  {
LABEL_67:
    v44 = (**v42)(v42);
    DataServiceController::notifyCellularDataSwitchingAllowed_sync(a1, v44);
  }

LABEL_68:
  if ((v43 & 1) == 0)
  {
    sub_100004A34(v41);
  }

  v45 = *(a1 + 144);
  v46 = *(v45 + 8);
  v47 = *(v45 + 16);
  while (v46 != v47)
  {
    v48 = *(v46 + 24);
    if (v48)
    {
      isDataAllowed = DataServiceController::isDataAllowed(a1);
      (*(*v48 + 904))(v48, isDataAllowed);
    }

    v46 += 432;
  }

LABEL_40:
  v21 = *(a1 + 4721);
  v22 = DataServiceController::isRadioOff(v3);
  *(a1 + 4721) = v22;
  if (v21 != v22)
  {
    v23 = *(a1 + 40);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = asStringBool(v21);
      v25 = asStringBool(*(a1 + 4721));
      *buf = 136315650;
      *&buf[4] = "handleRadioState_sync";
      *&buf[12] = 2080;
      *&buf[14] = v24;
      *&buf[22] = 2080;
      *&buf[24] = v25;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I %s: radio off %s->%s", buf, 0x20u);
    }
  }

  result = *(a1 + 4728);
  *(a1 + 4728) = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_1007B2430(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void DataServiceController::handleMSimConfigCallbackFromBB_sync(uint64_t a1, uint64_t a2, uint64_t a3, _BOOL4 a4, BOOL a5)
{
  if ((*(a1 + 288) & 1) == 0)
  {
    v7 = a3;
    v8 = a2;
    v10 = sub_100097DB0(*(a1 + 144), a2);
    if (v10 || capabilities::ct::supportsDualSIMSingleStackWithCrossMapping(v10))
    {
      if (*(a1 + 4616))
      {
        if (!*(a1 + 4672))
        {
          v11 = *(a1 + 4688);
          if (v11)
          {
            if (a4)
            {
              if (a5)
              {
                if (v11 == v8 && ((v12 = *(a1 + 4692), v12 == v7) || !v12))
                {
                  v17 = *(a1 + 4684);
                  v18 = *(a1 + 40);
                  v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
                  if (v17 == 1)
                  {
                    if (v19)
                    {
                      *buf = 0;
                      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I MSIM update: config done, waiting for remap completion", buf, 2u);
                    }

                    *(a1 + 4696) = 1;
                  }

                  else
                  {
                    if (v19)
                    {
                      *buf = 0;
                      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I MSIM update: BB part done (1)", buf, 2u);
                      v8 = *(a1 + 4688);
                      v12 = *(a1 + 4692);
                    }

                    (*(*a1 + 2176))(a1, v8, v12, 1, "BB part done");
                  }
                }

                else
                {
                  v13 = *(a1 + 40);
                  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136315906;
                    v23 = subscriber::asString();
                    v24 = 2080;
                    v25 = subscriber::asString();
                    v26 = 2080;
                    v27 = subscriber::asString();
                    v28 = 2080;
                    v29 = subscriber::asString();
                    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I MSIM update: failed configration: wrong SIM result: %s/%s (must be %s/%s)", buf, 0x2Au);
                    v11 = *(a1 + 4688);
                  }

                  (*(*a1 + 2176))(a1, v11, *(a1 + 4692), 0, "failed configration: wrong SIM result");
                }
              }

              else
              {
                v16 = *(a1 + 40);
                if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I MSIM update: failed configration", buf, 2u);
                  v11 = *(a1 + 4688);
                }

                (*(*a1 + 2176))(a1, v11, *(a1 + 4692), 0, "failed configration");
              }
            }
          }

          else
          {
            v15 = *(a1 + 40);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I MSIM update: stray BB information, ignore it", buf, 2u);
            }
          }
        }
      }

      else if (*(a1 + 4548) != v8 || *(a1 + 4552) != v7)
      {
        v14 = *(a1 + 40);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316418;
          v23 = subscriber::asString();
          v24 = 2080;
          v25 = subscriber::asString();
          v26 = 2080;
          v27 = subscriber::asString();
          v28 = 2080;
          v29 = subscriber::asString();
          v30 = 2080;
          v31 = asStringBool(a4);
          v32 = 2080;
          v33 = asStringBool(a5);
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I MSIM: (change states) fPreferredDataSIMFromBB %s ==>> %s mode %s ==> %s (bb reported configCompleted = %s success = %s)", buf, 0x3Eu);
        }

        *(a1 + 4548) = v8;
        *(a1 + 4552) = v7;
        (*(*a1 + 2192))(a1, "getter or unsolicited notification");
        sub_10000501C(__p, "preferredDataSIM updated (2)");
        (*(*a1 + 1376))(a1, 3, __p);
        if (v21 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }
}

void sub_1007B2968(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void DataServiceController::updateCurrentDataSIMToBB_sync(uint64_t a1, uint64_t a2)
{
  if (!capabilities::ct::supportsGemini(a1))
  {
    return;
  }

  v4 = atomic_load((a1 + 4544));
  v5 = *(a1 + 112);
  *&v13 = *(a1 + 104);
  *(&v13 + 1) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  isValidSimSlot = subscriber::isValidSimSlot();
  if (*(&v13 + 1))
  {
    sub_100004A34(*(&v13 + 1));
  }

  if ((isValidSimSlot & 1) == 0)
  {
    v10 = *(*(**(a1 + 48) + 16))(*(a1 + 48), v4);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    LODWORD(v13) = 136315138;
    *(&v13 + 4) = asString();
    v11 = "#N MSIM switch: invalid sim slot for BB SIM update (%s)";
LABEL_16:
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v11, &v13, 0xCu);
    return;
  }

  if (!sub_100097DB0(*(a1 + 144), v4))
  {
    v10 = *(*(**(a1 + 48) + 16))(*(a1 + 48), v4);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    LODWORD(v13) = 136315138;
    *(&v13 + 4) = asString();
    v11 = "#E MSIM switch: no data model for BB SIM update (%s)";
    goto LABEL_16;
  }

  v7 = sub_1000A8A0C(*(a1 + 144), v4);
  v8 = *(v7 + 24);
  v9 = *(v7 + 32);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v8)
  {
    (*(*v8 + 832))(v8, a2);
  }

  else
  {
    v12 = *(*(**(a1 + 48) + 16))(*(a1 + 48), v4);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v13) = 136315138;
      *(&v13 + 4) = asString();
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#E MSIM switch: data driver is empty for BB SIM update (%s)", &v13, 0xCu);
    }
  }

  if (v9)
  {
    sub_100004A34(v9);
  }
}

void sub_1007B2C1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    sub_100004A34(v10);
  }

  _Unwind_Resume(exception_object);
}

void DataServiceController::notifyCellularDataSwitchingAllowed_sync(DataServiceController *this, uint64_t a2)
{
  if (capabilities::ct::supports5G(this))
  {
    v4 = *(this + 5);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v10[0] = 67109120;
      v10[1] = a2;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I notifyCellularDataSwitchingAllowed %d", v10, 8u);
    }

    v5 = *(this + 18);
    v6 = (*(*this + 1104))(this);
    v7 = sub_100007B88(v5, v6);
    if (*(*(this + 18) + 16) == v7)
    {
      v9 = *(this + 5);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v10[0]) = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I PreferredDataSIM not ready yet", v10, 2u);
      }
    }

    else
    {
      v8 = *(v7 + 24);
      if (v8)
      {
        (*(*v8 + 752))(v8, a2);
      }
    }
  }
}

void DataServiceController::setMsimBackoff_sync(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  v8 = a4;
  v9 = a3;
  if (*(a1 + 4704))
  {
    v12 = a5 == 0;
  }

  else
  {
    v12 = 0;
  }

  if (!v12)
  {
    v14 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2, a3, a4, a5);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = a7;
      *&buf[12] = 2080;
      *&buf[14] = subscriber::asString();
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I MSIM update: backoff reason <%s>: setting timer (mode %s)", buf, 0x16u);
    }

    v15 = *(a1 + 4704);
    *(a1 + 4704) = 0;
    if (v15)
    {
      (*(*v15 + 8))(v15);
    }

    v35 = 0;
    v36 = 0;
    Registry::getTimerService(&v35, *(a1 + 104));
    if (v35)
    {
      sub_100004AA0(buf, (a1 + 8));
      v17 = *buf;
      v16 = *&buf[8];
      if (*&buf[8])
      {
        atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
        sub_100004A34(v16);
      }

      v18 = v35;
      sub_10000501C(__p, "MsimBackoff timer");
      v19 = *(a1 + 24);
      object = v19;
      if (v19)
      {
        dispatch_retain(v19);
      }

      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1174405120;
      aBlock[2] = sub_1007B3200;
      aBlock[3] = &unk_101E7E7E0;
      aBlock[4] = a1;
      aBlock[5] = v17;
      v29 = v16;
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v30 = a6;
      v31 = _Block_copy(aBlock);
      sub_100D23364(v18, __p, 0, 5000000, &object, &v31);
      v20 = *buf;
      *buf = 0;
      v21 = *(a1 + 4704);
      *(a1 + 4704) = v20;
      if (v21)
      {
        (*(*v21 + 8))(v21);
        v22 = *buf;
        *buf = 0;
        if (v22)
        {
          (*(*v22 + 8))(v22);
        }
      }

      if (v31)
      {
        _Block_release(v31);
      }

      if (object)
      {
        dispatch_release(object);
      }

      if (v34 < 0)
      {
        operator delete(__p[0]);
      }

      if (v29)
      {
        std::__shared_weak_count::__release_weak(v29);
      }

      if (v16)
      {
        std::__shared_weak_count::__release_weak(v16);
      }
    }

    if (v36)
    {
      sub_100004A34(v36);
    }
  }

  v23 = *(a1 + 4712);
  if (v23)
  {
    v24 = v8 == 0;
  }

  else
  {
    v24 = 0;
  }

  if (!v24)
  {
    *(a1 + 4712) = a2;
    v23 = a2;
  }

  if (*(a1 + 4716))
  {
    v25 = v8 == 0;
  }

  else
  {
    v25 = 0;
  }

  if (!v25)
  {
    *(a1 + 4716) = v9;
  }

  v26 = *(*(**(a1 + 48) + 16))(*(a1 + 48), v23);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = subscriber::asString();
    *buf = 136315394;
    *&buf[4] = v27;
    *&buf[12] = 2080;
    *&buf[14] = a7;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I set MsimBackoff timer for mode %s (reason <%s>)", buf, 0x16u);
  }
}

void sub_1007B3178(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, void *aBlock, dispatch_object_t object, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007B3200(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(a1 + 40))
      {
        v6 = *(v3 + 4704);
        *(v3 + 4704) = 0;
        if (v6)
        {
          (*(*v6 + 8))(v6);
        }

        v7 = *(v3 + 884);
        v8 = *(*(**(v3 + 48) + 16))(*(v3 + 48), *(v3 + 4712));
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v11 = 136315394;
          v12 = subscriber::asString();
          v13 = 2080;
          v14 = radioStateAsString();
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I fired MsimBackoff timer for mode %s, radio state %s", &v11, 0x16u);
        }

        v9 = *(v3 + 4712);
        if (*(a1 + 56) == 1 && v7)
        {
          DataServiceController::setMsimBackoff_sync(v3, v9, *(v3 + 4716), 0, 0, 1, "baseband not online");
        }

        else if (v9)
        {
          v10 = *(v3 + 4716);
          *(v3 + 4712) = 0;
          (*(*v3 + 2200))(v3, v9, v10);
        }
      }

      sub_100004A34(v5);
    }
  }
}

uint64_t sub_1007B33EC(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1007B3408(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void DataServiceController::onFullCompleteMSIM_sync(uint64_t a1, uint64_t a2, uint64_t a3, BOOL a4, uint64_t a5)
{
  v7 = a3;
  v10 = *(*(**(a1 + 48) + 16))(*(a1 + 48));
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = subscriber::asString();
    *&buf[12] = 2080;
    *&buf[14] = a5;
    v56 = 2080;
    v57 = asStringBool(a4);
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I MSIM update: mode: %s, onFullCompleteMSIM: reason: '%s', success: %s", buf, 0x20u);
  }

  v11 = (*(a1 + 4680) & 1) == 0;
  DataServiceController::MsimLpmWaiting::reset((a1 + 4616));
  if (!a4)
  {
    v36 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "#E MSIM update: Cannot update preferredData SIM, will try again", buf, 2u);
    }

    *buf = 0;
    *&buf[8] = 0;
    sub_100004AA0(buf, (a1 + 8));
    operator new();
  }

  v12 = *(a1 + 40);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    atomic_load((a1 + 4536));
    v13 = subscriber::asString();
    v14 = subscriber::asString();
    v15 = subscriber::asString();
    v16 = subscriber::asString();
    *buf = 136315906;
    *&buf[4] = v13;
    *&buf[12] = 2080;
    *&buf[14] = v14;
    v56 = 2080;
    v57 = v15;
    v58 = 2080;
    v59 = v16;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I MSIM update: (change states) fPreferredDataSIM %s ==>> %s, fPreferredDataSIMFromBB %s ==>> %s", buf, 0x2Au);
    v12 = *(a1 + 40);
  }

  v17 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v17)
  {
    atomic_load((a1 + 4540));
    v18 = subscriber::asString();
    v19 = subscriber::asString();
    v20 = subscriber::asString();
    v21 = subscriber::asString();
    *buf = 136315906;
    *&buf[4] = v18;
    *&buf[12] = 2080;
    *&buf[14] = v19;
    v56 = 2080;
    v57 = v20;
    v58 = 2080;
    v59 = v21;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I MSIM update: (change states) fMSimConfigMode %s ==>> %s, fMSimConfigModeFromBB %s ==>> %s", buf, 0x2Au);
  }

  v22 = atomic_load((a1 + 4536));
  atomic_store(a2, (a1 + 4536));
  atomic_store(v7, (a1 + 4540));
  *(a1 + 4548) = a2;
  *(a1 + 4552) = v7;
  v23 = capabilities::ct::supportsGemini(v17);
  if (v23)
  {
    v23 = capabilities::ct::supportsDataSubscriptionController(v23);
    if ((v23 & 1) == 0 && *(a1 + 3784) != a2)
    {
      *(a1 + 3784) = a2;
      v23 = *(a1 + 3776);
      if (v23)
      {
        v23 = (*(*v23 + 48))(v23, a1 + 3784);
      }
    }
  }

  v24 = capabilities::ct::supportsGemini(v23);
  if (v24 && (v24 = capabilities::ct::supportsDataSubscriptionController(v24), !v24) || (v24 = capabilities::ct::supportsDualSIMSingleStackWithCrossMapping(v24), v24))
  {
    if (*(a1 + 3904) != v7)
    {
      *(a1 + 3904) = v7;
      v24 = *(a1 + 3896);
      if (v24)
      {
        v24 = (*(*v24 + 48))(v24, a1 + 3904);
      }
    }

    if (*(a1 + 3824) != a2)
    {
      *(a1 + 3824) = a2;
      v24 = *(a1 + 3816);
      if (v24)
      {
        v24 = (*(*v24 + 48))(v24, a1 + 3824);
      }
    }
  }

  v25 = capabilities::ct::supportsGemini(v24);
  if (v25 && (capabilities::ct::supportsDataSubscriptionController(v25) & 1) == 0)
  {
    v37 = atomic_load((a1 + 4544));
    v38 = atomic_load((a1 + 4544));
    atomic_store(a2, (a1 + 4544));
    if (*(a1 + 3864) != a2)
    {
      *(a1 + 3864) = a2;
      v39 = *(a1 + 3856);
      if (v39)
      {
        (*(*v39 + 48))(v39, a1 + 3864);
      }
    }

    if (v37 != a2)
    {
      if (v38)
      {
        v40 = 2;
      }

      else
      {
        v40 = 1;
      }

      DataServiceController::updateCurrentDataSIMToBB_sync(a1, v40);
      (*(**(a1 + 4584) + 56))(*(a1 + 4584), a2);
      v41 = *(a1 + 40);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        atomic_load((a1 + 4544));
        v42 = subscriber::asString();
        v43 = subscriber::asString();
        *buf = 136315394;
        *&buf[4] = v42;
        *&buf[12] = 2080;
        *&buf[14] = v43;
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "#I MSIM update: (change states) fCurrentDataSIM %s ==>> %s", buf, 0x16u);
      }

      DataServiceController::initAgentPolicies_sync(a1);
    }
  }

  else
  {
    atomic_store(1u, (a1 + 4544));
  }

  if (v22 != a2)
  {
    DataServiceController::updateIpcConfiguration_sync(a1);
    (*(**(a1 + 4584) + 48))(*(a1 + 4584), a2);
    ServiceMap = Registry::getServiceMap(*(a1 + 104));
    v27 = ServiceMap;
    if (v28 < 0)
    {
      v29 = (v28 & 0x7FFFFFFFFFFFFFFFLL);
      v30 = 5381;
      do
      {
        v28 = v30;
        v31 = *v29++;
        v30 = (33 * v30) ^ v31;
      }

      while (v31);
    }

    std::mutex::lock(ServiceMap);
    *buf = v28;
    v32 = sub_100009510(&v27[1].__m_.__sig, buf);
    if (v32)
    {
      v34 = v32[3];
      v33 = v32[4];
      if (v33)
      {
        atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v27);
        atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v33);
        v35 = 0;
        if (!v34)
        {
LABEL_49:
          if ((v35 & 1) == 0)
          {
            sub_100004A34(v33);
          }

          goto LABEL_51;
        }

LABEL_48:
        v44 = (**v34)(v34);
        DataServiceController::notifyCellularDataSwitchingAllowed_sync(a1, v44);
        goto LABEL_49;
      }
    }

    else
    {
      v34 = 0;
    }

    std::mutex::unlock(v27);
    v33 = 0;
    v35 = 1;
    if (!v34)
    {
      goto LABEL_49;
    }

    goto LABEL_48;
  }

LABEL_51:
  DataServiceController::setMsimBackoff_sync(a1, 0, 0, 0, 1, v11, "onFullCompleteMSIM_sync success");
  v45 = *(a1 + 144);
  v46 = *(v45 + 8);
  for (i = *(v45 + 16); v46 != i; v46 += 54)
  {
    v49 = v46[52];
    v48 = v46[53];
    if (v48)
    {
      atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
      v50 = *(v49 + 52);
      sub_100004A34(v48);
    }

    else
    {
      v50 = *(v49 + 52);
    }

    if (v50 != (*(*a1 + 1104))(a1))
    {
      v51 = v46[7];
      v52 = v46[8];
      while (v51 != v52)
      {
        if ((*(**v51 + 232))(*v51, 0, 1, 0))
        {
          (*(**v51 + 1160))(*v51, "MSIM reconfig", 0, 0);
        }

        v51 += 2;
      }
    }
  }

  sub_10000501C(__p, "preferredDataSIM updated (1)");
  (*(*a1 + 1376))(a1, 3, __p);
  if (v54 < 0)
  {
    operator delete(__p[0]);
  }

  DataServiceController::updateTetheringStatus_sync(a1);
  sub_10000501C(buf, "MSIM config complete");
  (*(*a1 + 2424))(a1, 3, buf, 0);
  if (SHIBYTE(v56) < 0)
  {
    operator delete(*buf);
  }
}

void sub_1007B3CE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void DataServiceController::MsimLpmWaiting::reset(DataServiceController::MsimLpmWaiting *this)
{
  v2 = *(this + 1);
  *this = 0;
  *(this + 1) = 0;
  if (v2)
  {
    sub_100004A34(v2);
  }

  *(this + 64) = 0;
  sub_10016DBD4(this + 32);
  *(this + 17) = 3;
  *(this + 9) = 0;
  *(this + 80) = 0;
  v3 = *(this + 3);
  *(this + 2) = 0;
  *(this + 3) = 0;
  if (v3)
  {

    sub_100004A34(v3);
  }
}

void *sub_1007B3DBC(void *a1)
{
  v2 = a1[8];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

uint64_t sub_1007B3E04(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void DataServiceController::handleMSimConfigCallbackFromBB(uint64_t a1, int a2, int a3, char a4, char a5)
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 0x40000000;
  v7[2] = sub_1007B3F58;
  v7[3] = &unk_101E7E810;
  v7[4] = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v14 = 0;
  v15 = 0;
  sub_100004AA0(&v14, (a1 + 8));
  v6 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_10008D8F8;
  block[3] = &unk_101E7E9F8;
  block[5] = v14;
  v13 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v7;
  dispatch_async(v6, block);
  if (v13)
  {
    sub_100004A34(v13);
  }

  if (v15)
  {
    sub_100004A34(v15);
  }
}

void DataServiceController::handleMSimRemapStatusCallbackFromBB(uint64_t a1, int a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = sub_1007B4088;
  v4[3] = &unk_101E7E830;
  v4[4] = a1;
  v5 = a2;
  v8 = 0;
  v9 = 0;
  sub_100004AA0(&v8, (a1 + 8));
  v3 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_10008D8F8;
  block[3] = &unk_101E7E9F8;
  block[5] = v8;
  v7 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v4;
  dispatch_async(v3, block);
  if (v7)
  {
    sub_100004A34(v7);
  }

  if (v9)
  {
    sub_100004A34(v9);
  }
}

void DataServiceController::handleMSimRemapStatusCallbackFromBB_sync(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 288) & 1) == 0)
  {
    v2 = a2;
    if (!*(a1 + 4616))
    {
      v4 = *(a1 + 40);
      if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v8 = 136315138;
      v9 = asString();
      v5 = "#I MSIMRemapStatus: unexpected controller state - we are not reconfiguring: status = %s";
      goto LABEL_8;
    }

    if (*(a1 + 4672))
    {
      v4 = *(a1 + 40);
      if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v8 = 136315138;
      v9 = asString();
      v5 = "#I MSIMRemapStatus: unexpected controller state - we are waiting for the airplane mode to kick in: status = %s";
LABEL_8:
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, v5, &v8, 0xCu);
      return;
    }

    if (*(a1 + 4684) != a2)
    {
      v6 = *(a1 + 40);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 136315394;
        v9 = asString();
        v10 = 2080;
        v11 = asString();
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I MSIMRemapStatus: (change states): %s ==> %s (bb reported)", &v8, 0x16u);
      }

      *(a1 + 4684) = v2;
    }

    if (v2 == 2 && *(a1 + 4696) == 1)
    {
      v7 = *(a1 + 40);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v8) = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I MSIM update: BB part done", &v8, 2u);
      }

      (*(*a1 + 2176))(a1, *(a1 + 4688), *(a1 + 4692), 1, "remap BB part done");
    }
  }
}

uint64_t DataServiceController::setActiveUserDataSlot(void **a1, uint64_t a2)
{
  v4 = *(*(*a1[6] + 16))(a1[6]);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I MSIM update: setActiveUserDataSlot", v6, 2u);
  }

  return ((*a1)[275])(a1, a2, 0);
}

uint64_t DataServiceController::setMSimConfig(void **a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(*a1[6] + 16))(a1[6]);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I MSIM update: setMSimConfig", v8, 2u);
  }

  return ((*a1)[275])(a1, a2, a3);
}

void DataServiceController::setDataSlot(uint64_t a1, int a2, int a3)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_1007B4580;
  v5[3] = &unk_101E7E850;
  v5[4] = a1;
  v6 = a2;
  v7 = a3;
  v10 = 0;
  v11 = 0;
  sub_100004AA0(&v10, (a1 + 8));
  v4 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_10008D8F8;
  block[3] = &unk_101E7E9F8;
  block[5] = v10;
  v9 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v5;
  dispatch_async(v4, block);
  if (v9)
  {
    sub_100004A34(v9);
  }

  if (v11)
  {
    sub_100004A34(v11);
  }
}

void DataServiceController::setDataSlot_sync(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 288))
  {
    return;
  }

  v3 = a3;
  if (!a3)
  {
    v6 = capabilities::ct::supportsGemini(a1);
    if (v6 && (capabilities::ct::supportsDataSubscriptionController(v6) & 1) == 0)
    {
      v3 = *(a1 + 4716);
      if (v3)
      {
        v7 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
        if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_8;
        }

        v33 = 136315138;
        v34 = subscriber::asString();
        v8 = "#I MSIM update: msimMode adjusted to %s (1)";
      }

      else
      {
        v3 = *(a1 + 4692);
        if (!v3)
        {
          goto LABEL_8;
        }

        v7 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
        if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_8;
        }

        v33 = 136315138;
        v34 = subscriber::asString();
        v8 = "#I MSIM update: msimMode adjusted to %s (2)";
      }

      goto LABEL_7;
    }

    v7 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    v3 = 1;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v33 = 136315138;
      v34 = subscriber::asString();
      v8 = "#I MSIM update: msimMode adjusted to %s (5)";
LABEL_7:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v8, &v33, 0xCu);
    }
  }

LABEL_8:
  if (*(a1 + 4704))
  {
    v9 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = subscriber::asString();
      v33 = 136315138;
      v34 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I MSIM update: backoff: we are already in backoff period, postponing change for mode %s", &v33, 0xCu);
    }

    v11 = *(a1 + 4680);
    v12 = "we are already in backoff period";
LABEL_16:
    DataServiceController::setMsimBackoff_sync(a1, a2, v3, 1, 0, (v11 & 1) == 0, v12);
    return;
  }

  if (*(a1 + 4616))
  {
    v13 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = subscriber::asString();
      v33 = 136315138;
      v34 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I MSIM update: setDataSlot: we are already in the middle of another update, postponing change for mode %s", &v33, 0xCu);
    }

    v11 = *(a1 + 4680);
    v12 = "we are already in the middle of another update";
    goto LABEL_16;
  }

  if (*(a1 + 4528) == a2 && (v15 = atomic_load((a1 + 4536)), v15 == a2) && *(a1 + 4548) == a2 && v3 == *(a1 + 4532) && (v16 = atomic_load((a1 + 4540)), v3 == v16) && v3 == *(a1 + 4552))
  {
    v17 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = subscriber::asString();
      v33 = 136315138;
      v34 = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I MSIM update: setDataSlot: slot already set for mode %s", &v33, 0xCu);
    }
  }

  else
  {
    v19 = *(a1 + 40);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = subscriber::asString();
      v21 = subscriber::asString();
      atomic_load((a1 + 4536));
      v22 = subscriber::asString();
      v23 = subscriber::asString();
      v24 = subscriber::asString();
      v25 = subscriber::asString();
      atomic_load((a1 + 4544));
      v26 = subscriber::asString();
      v33 = 136316674;
      v34 = v20;
      v35 = 2080;
      v36 = v21;
      v37 = 2080;
      v38 = v22;
      v39 = 2080;
      v40 = v23;
      v41 = 2080;
      v42 = v24;
      v43 = 2080;
      v44 = v25;
      v45 = 2080;
      v46 = v26;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I MSIM update: setDataSlot: (change states attempt) active user data slot %s -> %s, preferred Data SIM %s -> %s, BB SIM %s -> %s, current Data SIM %s", &v33, 0x48u);
      v19 = *(a1 + 40);
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v27 = subscriber::asString();
      v28 = subscriber::asString();
      atomic_load((a1 + 4540));
      v29 = subscriber::asString();
      v30 = subscriber::asString();
      v31 = subscriber::asString();
      v32 = subscriber::asString();
      v33 = 136316418;
      v34 = v27;
      v35 = 2080;
      v36 = v28;
      v37 = 2080;
      v38 = v29;
      v39 = 2080;
      v40 = v30;
      v41 = 2080;
      v42 = v31;
      v43 = 2080;
      v44 = v32;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I MSIM update: setActiveUserDualSIMMode: (change states attempt) active user %s -> %s, CT %s -> %s, BB %s -> %s", &v33, 0x3Eu);
    }

    *(a1 + 4528) = a2;
    *(a1 + 4532) = v3;
    (*(*a1 + 2192))(a1, "setDataSlot");
  }
}

uint64_t DataServiceController::preferredDataSIM(DataServiceController *this)
{
  if (capabilities::ct::supportsGemini(this) && (v2 = atomic_load(this + 1134), v2 == 2))
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

BOOL DataServiceController::preferredDataSIMKnown(DataServiceController *this)
{
  result = 1;
  if (capabilities::ct::supportsGemini(this))
  {
    if (!atomic_load(this + 1134))
    {
      return 0;
    }
  }

  return result;
}

uint64_t DataServiceController::msimConfigMode(DataServiceController *this)
{
  v2 = capabilities::ct::supportsGemini(this);
  if (!v2)
  {
    return 1;
  }

  if (capabilities::ct::supportsDataSubscriptionController(v2))
  {
    return 1;
  }

  v3 = atomic_load(this + 1135);
  if (v3 == 1)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

void DataServiceController::handleRecommendedDataSIMChange_sync(capabilities::ct *a1, uint64_t a2)
{
  v4 = (*(*a1 + 1112))(a1);
  v5 = *(a1 + 5);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v9 = 136315138;
      v10 = subscriber::asString();
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I MSIM switch: recommendation: %s", &v9, 0xCu);
      v5 = *(a1 + 5);
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = asString();
      v9 = 136315138;
      v10 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I MSIM switch: oosReason %s", &v9, 0xCu);
    }

    if (SHIDWORD(a2) > 1)
    {
      if (HIDWORD(a2) == 3)
      {
        if ((*(*a1 + 1104))(a1) == a2)
        {
          v8 = 5;
        }

        else
        {
          v8 = 4;
        }

        goto LABEL_20;
      }

      if (HIDWORD(a2) == 2)
      {
        v8 = 4;
        goto LABEL_20;
      }
    }

    else
    {
      if (!HIDWORD(a2))
      {
        v8 = 5;
        goto LABEL_20;
      }

      if (HIDWORD(a2) == 1)
      {
        v8 = 3;
LABEL_20:
        DataServiceController::switchDataToSim_sync(a1, a2, v8);
        return;
      }
    }

    v8 = 0;
    goto LABEL_20;
  }

  if (v6)
  {
    LOWORD(v9) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I MSIM switch: recommendation: while Data SIM not configured yet, ignore recommendation", &v9, 2u);
  }
}

void DataServiceController::switchDataToSim_sync(capabilities::ct *a1, uint64_t a2, uint64_t a3)
{
  if (capabilities::ct::supportsGemini(a1))
  {

    DataServiceController::checkCurrentSIMSwitch_sync(a1, a2, "sim switch call", a3);
  }

  else
  {
    v6 = *(a1 + 5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#E MSIM switch: called on a non-Gemini device", v7, 2u);
    }
  }
}

const void **DataServiceController::checkCurrentSIMSwitch_sync(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_100097DB0(*(a1 + 144), a2);
  if (result)
  {
    result = (*(*a1 + 1120))(a1);
    if (result != a2)
    {
      result = (*(*a1 + 2232))(a1, a2, a3);
      if (result)
      {
        cf = 0;
        ServiceMap = Registry::getServiceMap(*(a1 + 104));
        v10 = ServiceMap;
        if (v11 < 0)
        {
          v12 = (v11 & 0x7FFFFFFFFFFFFFFFLL);
          v13 = 5381;
          do
          {
            v11 = v13;
            v14 = *v12++;
            v13 = (33 * v13) ^ v14;
          }

          while (v14);
        }

        std::mutex::lock(ServiceMap);
        *buf = v11;
        v15 = sub_100009510(&v10[1].__m_.__sig, buf);
        if (v15)
        {
          v17 = v15[3];
          v16 = v15[4];
          if (v16)
          {
            atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
            std::mutex::unlock(v10);
            atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_100004A34(v16);
            v18 = 0;
            goto LABEL_12;
          }
        }

        else
        {
          v17 = 0;
        }

        std::mutex::unlock(v10);
        v16 = 0;
        v18 = 1;
LABEL_12:
        v19 = (*(*a1 + 1104))(a1);
        TypeID = (*(*v17 + 96))(&cf, v17, v19, 1, @"InformBBOfTempDataSubSwitch", kCFBooleanTrue, 0);
        if ((v18 & 1) == 0)
        {
          sub_100004A34(v16);
        }

        v21 = cf;
        buf[0] = 1;
        if (cf)
        {
          v22 = CFGetTypeID(cf);
          TypeID = CFBooleanGetTypeID();
          if (v22 == TypeID)
          {
            TypeID = ctu::cf::assign(buf, v21, v23);
          }
        }

        if (buf[0] != 1 || (capabilities::ct::supportsDataQMIExtensions(TypeID) & 1) == 0)
        {
          goto LABEL_46;
        }

        v24 = *(a1 + 40);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I InformBBOfTempDataSubSwitch", buf, 2u);
          v24 = *(a1 + 40);
        }

        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v25 = asString();
          v26 = asString();
          *buf = 136315394;
          *&buf[4] = v25;
          *&buf[12] = 2080;
          *&buf[14] = v26;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I fTempDataSubSwitchState = %s, cause = %s", buf, 0x16u);
        }

        v27 = (*(*a1 + 1104))(a1);
        v28 = *(a1 + 4864);
        if (v27 == a2)
        {
          if (v28)
          {
            if (v28 != 2)
            {
              if (v28 == 1)
              {
                v29 = *(a1 + 40);
                if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I toDDS received before tempSwitchComplete. set fPendingOnSwitchBackToPreferredDataSIM", buf, 2u);
                }

                *(a1 + 4868) = 1;
              }

              return sub_10000A1EC(&cf);
            }

            *buf = 0;
            *&buf[8] = 0;
            sub_1007B5E68(*(a1 + 104), buf);
            if (*buf)
            {
              v36[0] = off_101E7EB38;
              v36[1] = a1;
              v36[2] = a2 | (a4 << 32);
              v36[3] = v36;
              (*(**buf + 56))(*buf, 0, 1, v36);
              sub_10000FF50(v36);
              *(a1 + 4864) = 3;
              v30 = *(a1 + 40);
              if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
              {
                *v34 = 0;
                v31 = "#I fTempDataSubSwitchState back to DDS tempSwitchBackRequested";
                goto LABEL_38;
              }
            }

            goto LABEL_39;
          }

          v32 = *(a1 + 40);
          if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_46;
          }

          *buf = 0;
          v33 = "#I fTempDataSubSwitchState non-voice call back to DDS";
        }

        else
        {
          if (v28)
          {
            return sub_10000A1EC(&cf);
          }

          if (a4 == 3)
          {
            *buf = 0;
            *&buf[8] = 0;
            sub_1007B5E68(*(a1 + 104), buf);
            if (*buf)
            {
              v37[0] = off_101E7EAB8;
              v37[1] = a2 | 0x300000000;
              v37[2] = a1;
              v37[3] = v37;
              (*(**buf + 56))(*buf, a2 | &_mh_execute_header, 2, v37);
              sub_10000FF50(v37);
              *(a1 + 4864) = 1;
              v30 = *(a1 + 40);
              if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
              {
                *v34 = 0;
                v31 = "#I fTempDataSubSwitchState to nDDS kTempSwitchToNddsRequested";
LABEL_38:
                _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, v31, v34, 2u);
              }
            }

LABEL_39:
            if (*&buf[8])
            {
              sub_100004A34(*&buf[8]);
            }

            return sub_10000A1EC(&cf);
          }

          v32 = *(a1 + 40);
          if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
LABEL_46:
            DataServiceController::switchCurrentDataSim_sync(a1, a2, "sim switch call", a4);
            return sub_10000A1EC(&cf);
          }

          *buf = 0;
          v33 = "#I fTempDataSubSwitchState non-voice call to nDDS";
        }

        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, v33, buf, 2u);
        goto LABEL_46;
      }
    }
  }

  return result;
}

void sub_1007B5528(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, const void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20)
{
  sub_10000FF50(&a15);
  if (a20)
  {
    sub_100004A34(a20);
  }

  sub_10000A1EC(&a10);
  _Unwind_Resume(a1);
}

uint64_t DataServiceController::checkIfSIMSwitchOK_sync(void **a1, uint64_t a2, uint64_t a3)
{
  if ((*a1)[138])(a1) == a2 || (((*a1)[133])(a1, a2) & 1) != 0 || (((*a1)[136])(a1, a2))
  {
    return 1;
  }

  v7 = *(*(*a1[6] + 16))(a1[6], a2);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (v8)
  {
    v9 = 136315138;
    v10 = a3;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I MSIM switch: cannot switch to non-preferred data SIM in roaming (%s)", &v9, 0xCu);
    return 0;
  }

  return result;
}

void DataServiceController::temporaryDataSubSwitchRequestComplete(uint64_t a1, int a2, int a3, char a4)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100004AA0(v4, (a1 + 8));
  operator new();
}

void DataServiceController::switchCurrentDataSim_sync(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = (*(*a1 + 1120))(a1);
  DataServiceController::shutdownAllInternetConnections_sync(a1, "MSIM: switching SIM", 0);
  v9 = *(a1 + 40);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = asString();
    atomic_load((a1 + 4544));
    v11 = subscriber::asString();
    v12 = subscriber::asString();
    v13 = (*(*a1 + 1104))(a1);
    *buf = 136316162;
    v14 = "no data";
    *&buf[4] = a3;
    *&buf[12] = 2080;
    if (v13 == a2)
    {
      v14 = "data";
    }

    *&buf[14] = v10;
    v47 = 2080;
    v48 = v11;
    v49 = 2080;
    v50 = v12;
    v51 = 2080;
    v52 = v14;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I MSIM switch: <%s: %s> (change states) fCurrentDataSIM %s ==>> %s (%s)", buf, 0x34u);
  }

  atomic_store(a2, (a1 + 4544));
  DataServiceController::updateCurrentDataSIMToBB_sync(a1, a4);
  if (*(a1 + 3864) != a2)
  {
    *(a1 + 3864) = a2;
    v15 = *(a1 + 3856);
    if (v15)
    {
      (*(*v15 + 48))(v15, a1 + 3864);
    }
  }

  v16 = 0;
  *buf = v8;
  *&buf[4] = a2;
  do
  {
    v17 = sub_1000A8A0C(*(a1 + 144), *&buf[v16]);
    v18 = *(v17 + 56);
    v19 = *(v17 + 64);
    while (v18 != v19)
    {
      if ((*(**v18 + 232))(*v18, 0, 1, 0))
      {
        (*(**v18 + 1096))(*v18);
        break;
      }

      v18 += 2;
    }

    v16 += 4;
  }

  while (v16 != 8);
  (*(**(a1 + 4584) + 56))(*(a1 + 4584), a2);
  DataServiceController::initAgentPolicies_sync(a1);
  sub_10000501C(__p, "currentDataSIM updated");
  (*(*a1 + 1376))(a1, 3, __p);
  if (v45 < 0)
  {
    operator delete(__p[0]);
  }

  DataServiceController::enableContextStateChangeNotificationRepost(a1, a2, 0, "current data SIM changed", 2);
  DataServiceController::enableContextStateChangeNotificationRepost(a1, v8, 0, "current data SIM changed", 2);
  if (capabilities::ct::supportsGemini(v20))
  {
    ServiceMap = Registry::getServiceMap(*(a1 + 104));
    v22 = ServiceMap;
    if (v23 < 0)
    {
      v24 = (v23 & 0x7FFFFFFFFFFFFFFFLL);
      v25 = 5381;
      do
      {
        v23 = v25;
        v26 = *v24++;
        v25 = (33 * v25) ^ v26;
      }

      while (v26);
    }

    std::mutex::lock(ServiceMap);
    *buf = v23;
    v27 = sub_100009510(&v22[1].__m_.__sig, buf);
    if (v27)
    {
      v29 = v27[3];
      v28 = v27[4];
      if (v28)
      {
        atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v22);
        atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v28);
        v30 = 0;
        if (!v29)
        {
          goto LABEL_24;
        }

        goto LABEL_28;
      }
    }

    else
    {
      v29 = 0;
    }

    std::mutex::unlock(v22);
    v28 = 0;
    v30 = 1;
    if (!v29)
    {
LABEL_24:
      v31 = *(a1 + 40);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        sub_10177E6EC(v31, v32, v33);
      }

LABEL_36:
      if ((v30 & 1) == 0)
      {
        sub_100004A34(v28);
      }

      goto LABEL_38;
    }

LABEL_28:
    *buf = 0;
    *&buf[8] = 0;
    (*(*v29 + 8))(buf, v29, a2);
    PDPActivators = DataServiceController::getPDPActivators(a1);
    v35 = *PDPActivators;
    v36 = *(PDPActivators + 8);
    if (*PDPActivators != v36)
    {
      do
      {
        v37 = *v35;
        v42 = *buf;
        v43 = *&buf[8];
        if (*&buf[8])
        {
          atomic_fetch_add_explicit((*&buf[8] + 8), 1uLL, memory_order_relaxed);
        }

        (*(*v37 + 360))(v37, &v42);
        if (v43)
        {
          sub_100004A34(v43);
        }

        v35 += 2;
      }

      while (v35 != v36);
    }

    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    goto LABEL_36;
  }

LABEL_38:
  DataServiceController::reactivateAsserted_sync(a1, a2, 0x21u, 0);
  sub_10000501C(v40, "new TM recommendation");
  DataServiceController::setConnectionActive_sync(a1, a2, 0, 1, v40, 0, 1);
  if (v41 < 0)
  {
    operator delete(v40[0]);
  }

  DataServiceController::updateTetheringStatus_sync(a1);
  sub_10000501C(buf, "switch current Data SIM");
  if (a2)
  {
    v38 = v8 == a2;
  }

  else
  {
    v38 = 1;
  }

  v39 = !v38;
  (*(*a1 + 2424))(a1, 3, buf, v39);
  if (SHIBYTE(v47) < 0)
  {
    operator delete(*buf);
  }
}

void sub_1007B5DD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, std::__shared_weak_count *a24, int a25, __int16 a26, char a27, char a28)
{
  if (a24)
  {
    sub_100004A34(a24);
  }

  if ((v29 & 1) == 0)
  {
    sub_100004A34(v28);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007B5E68(Registry *a1@<X0>, void *a2@<X8>)
{
  ServiceMap = Registry::getServiceMap(a1);
  v4 = ServiceMap;
  if ((v5 & 0x8000000000000000) != 0)
  {
    v6 = (v5 & 0x7FFFFFFFFFFFFFFFLL);
    v7 = 5381;
    do
    {
      v5 = v7;
      v8 = *v6++;
      v7 = (33 * v7) ^ v8;
    }

    while (v8);
  }

  std::mutex::lock(ServiceMap);
  v12 = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, &v12);
  if (v9)
  {
    v11 = v9[3];
    v10 = v9[4];
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  std::mutex::unlock(v4);
  *a2 = v11;
  a2[1] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v10);
  }
}

void DataServiceController::shutdownAllInternetConnections_sync(DataServiceController *this, const char *a2, BOOL a3)
{
  DataServiceController::setInternetActive_sync(this, 0, a2, a3);
  v16[0] = 0;
  v16[1] = 0;
  v17 = 0;
  sub_10000501C(v16, "shutdownAllInternetConnections_sync: forced shutdown");
  v4 = *(this + 14);
  v12[0] = *(this + 13);
  v12[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  subscriber::makeSimSlotRange();
  if (v12[1])
  {
    sub_100004A34(v12[1]);
  }

  v5 = v13;
  v6 = v14;
  if (v13 != v14)
  {
    v7 = v15;
    do
    {
      if (v15(*v5))
      {
        break;
      }

      ++v5;
    }

    while (v5 != v14);
    v8 = v14;
    while (v5 != v8)
    {
      v9 = *v5;
      memset(&v12[1], 0, 32);
      v12[0] = this;
      LODWORD(v12[1]) = v9;
      if (SHIBYTE(v17) < 0)
      {
        sub_100005F2C(&v12[2], v16[0], v16[1]);
      }

      else
      {
        *&v12[2] = *v16;
        v12[4] = v17;
      }

      v10 = 28;
      do
      {
        sub_1007B6118(v12, v10);
        v10 = (v10 + 1);
      }

      while (v10 != 36);
      for (i = 0; i != 2; ++i)
      {
        sub_1007B6118(v12, dword_10183A5A4[i]);
      }

      if (SHIBYTE(v12[4]) < 0)
      {
        operator delete(v12[2]);
      }

      do
      {
        ++v5;
      }

      while (v5 != v6 && (v7(*v5) & 1) == 0);
    }
  }

  if (SHIBYTE(v17) < 0)
  {
    operator delete(v16[0]);
  }
}

void sub_1007B60C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007B6118(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *a1;
  v8 = 0;
  v9 = 0;
  DataServiceController::getConnection_sync(v4, *(a1 + 8), a2, &v8);
  if (v8 && (*(*v8 + 168))(v8))
  {
    v5 = *(v4 + 40);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = asString();
      *buf = 136315394;
      v11 = "operator()";
      v12 = 2080;
      v13 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s: Deactivating %s...", buf, 0x16u);
    }

    v7 = (a1 + 16);
    if (*(a1 + 39) < 0)
    {
      v7 = *v7;
    }

    DataServiceController::enableContextStateChangeNotificationRepost(v4, *(a1 + 8), v2, v7, 1);
    (*(*v8 + 96))(v8, "shutdownAllInternetConnections_sync", "CommCenter");
  }

  if (v9)
  {
    sub_100004A34(v9);
  }
}

void sub_1007B6290(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void DataServiceController::handleCriticalActivityOnSim_sync(DataServiceController *this)
{
  v1 = *(this + 18);
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  if (v2 != v3)
  {
    v5 = this + 864;
    while (1)
    {
      v7 = *(v2 + 416);
      v6 = *(v2 + 424);
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        v8 = *(v7 + 52);
        sub_100004A34(v6);
      }

      else
      {
        v8 = *(v7 + 52);
      }

      v9 = (*(**(this + 6) + 16))(*(this + 6), v8);
      if (!*(v2 + 24))
      {
        goto LABEL_26;
      }

      v10 = v9;
      v11 = *(v2 + 416);
      v12 = *(v2 + 424);
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (*(v11 + 49))
      {
        break;
      }

      if (*(v11 + 47) < 0)
      {
        sub_100005F2C(__p, *(v11 + 24), *(v11 + 32));
      }

      else
      {
        *__p = *(v11 + 24);
        v25 = *(v11 + 40);
      }

      v17 = sub_100007A6C(this + 856, __p);
      if (v5 == v17)
      {
        v18 = 0;
      }

      else
      {
        v18 = *(v17 + 56);
      }

      if (SHIBYTE(v25) < 0)
      {
        operator delete(__p[0]);
      }

      v19 = *(v2 + 392);
      v20 = *v10;
      v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
      if (v19 != (v18 & 1))
      {
        if (v21)
        {
          v23 = asStringBool(v18 & 1);
          *buf = 136315138;
          v27 = v23;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I handle critical activity: setting to %s", buf, 0xCu);
        }

        (*(**(v2 + 24) + 840))(*(v2 + 24), v18 & 1);
        *(v2 + 392) = v18 & 1;
        if (!v12)
        {
          goto LABEL_26;
        }

LABEL_25:
        sub_100004A34(v12);
        goto LABEL_26;
      }

      if (v21)
      {
        v22 = asStringBool(v18 & 1);
        *buf = 136315138;
        v27 = v22;
        v14 = v20;
        v15 = "#I handle critical activity: already handled: %s";
        v16 = 12;
LABEL_23:
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v15, buf, v16);
      }

LABEL_24:
      if (v12)
      {
        goto LABEL_25;
      }

LABEL_26:
      v2 += 432;
      if (v2 == v3)
      {
        return;
      }
    }

    v13 = *v9;
    if (!os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_24;
    }

    *buf = 0;
    v14 = v13;
    v15 = "#N handle critical activity: wrong personality type";
    v16 = 2;
    goto LABEL_23;
  }
}

void sub_1007B6544(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (v16)
  {
    sub_100004A34(v16);
  }

  _Unwind_Resume(exception_object);
}

void DataServiceController::handleBasebandDataSlotUpdated_sync(DataServiceController *this)
{
  v2 = atomic_load(this + 1134);
  v3 = atomic_load(this + 1136);
  v4 = *(this + 280);
  if (v2 != v4)
  {
    *(this + 1216) = 0;
    DataServiceController::shutdownAllInternetConnections_sync(this, "MSIM: changing preferred SIM", 1);
    DataServiceController::updateIpcConfiguration_sync(this);
  }

  atomic_store(v4, this + 1134);
  atomic_store(v4, this + 1136);
  if (*(this + 966) != v4)
  {
    *(this + 966) = v4;
    v5 = *(this + 482);
    if (v5)
    {
      (*(*v5 + 48))(v5, this + 3864);
    }
  }

  v6 = *(this + 5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    *&buf[4] = subscriber::asString();
    v32 = 2080;
    v33 = subscriber::asString();
    v34 = 2080;
    v35 = subscriber::asString();
    v36 = 2080;
    v37 = subscriber::asString();
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I MSIM update: (change states) fPreferredDataSIM %s ==>> %s, fCurrentDataSIM %s ==>> %s", buf, 0x2Au);
  }

  if (v3)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  DataServiceController::updateCurrentDataSIMToBB_sync(this, v7);
  (*(**(this + 573) + 56))(*(this + 573), v4);
  (*(**(this + 573) + 48))(*(this + 573), v4);
  ServiceMap = Registry::getServiceMap(*(this + 13));
  v9 = ServiceMap;
  if (v10 < 0)
  {
    v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
    v12 = 5381;
    do
    {
      v10 = v12;
      v13 = *v11++;
      v12 = (33 * v12) ^ v13;
    }

    while (v13);
  }

  std::mutex::lock(ServiceMap);
  *buf = v10;
  v14 = sub_100009510(&v9[1].__m_.__sig, buf);
  if (!v14)
  {
    v16 = 0;
LABEL_19:
    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
    if (!v16)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v16 = v14[3];
  v15 = v14[4];
  if (!v15)
  {
    goto LABEL_19;
  }

  atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v9);
  atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v15);
  v17 = 0;
  if (v16)
  {
LABEL_20:
    v18 = (**v16)(v16);
    DataServiceController::notifyCellularDataSwitchingAllowed_sync(this, v18);
  }

LABEL_21:
  if ((v17 & 1) == 0)
  {
    sub_100004A34(v15);
  }

  v19 = *(this + 18);
  v20 = *(v19 + 8);
  for (i = *(v19 + 16); v20 != i; v20 += 54)
  {
    v23 = v20[52];
    v22 = v20[53];
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      v24 = *(v23 + 52);
      sub_100004A34(v22);
    }

    else
    {
      v24 = *(v23 + 52);
    }

    if (v24 != v4)
    {
      v25 = v20[7];
      v26 = v20[8];
      while (v25 != v26)
      {
        if ((*(**v25 + 232))(*v25, 0, 1, 0))
        {
          (*(**v25 + 1160))(*v25, "MSIM reconfig", 0, 0);
        }

        v25 += 2;
      }
    }
  }

  DataServiceController::initAgentPolicies_sync(this);
  sub_10000501C(__p, "preferredDataSIM updated");
  (*(*this + 1376))(this, 3, __p);
  if (v30 < 0)
  {
    operator delete(__p[0]);
  }

  DataServiceController::updateTetheringStatus_sync(this);
  sub_10000501C(buf, "changed preferred Data SIM");
  v28 = v2 != v4 && v4 != 0;
  (*(*this + 2424))(this, 3, buf, v28);
  if (SHIBYTE(v34) < 0)
  {
    operator delete(*buf);
  }
}

void sub_1007B6A1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void DataServiceController::notifyCellularDataSwitchingAllowed(DataServiceController *this, char a2)
{
  v2[0] = 0;
  v2[1] = 0;
  sub_100004AA0(v2, this + 1);
  operator new();
}

void DataServiceController::processCongestionInd(os_log_t *a1, uint64_t a2)
{
  v10 = a2;
  v2 = a1[5];
  if (a2)
  {
    v3 = a2;
    if (os_log_type_enabled(a1[5], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = subscriber::asString();
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I processCongestionInd simSlot %s", buf, 0xCu);
    }

    v9 = ((*a1)[138].isa)(a1);
    *buf = 1;
    v13 = 0u;
    v14 = 0;
    *&buf[8] = a1 + 455;
    sub_1000517E4(&v13, (a1 + 459));
    v5 = a1[5];
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (v9 == v3)
    {
      if (v6)
      {
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I preferredDataSIM has congestion", v11, 2u);
      }

      *v11 = &v10;
      *(sub_100051AD8(&v13, &v10, &unk_101802C98, v11) + 32) = 1;
    }

    else
    {
      if (v6)
      {
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I congestion relieved or timeout", v11, 2u);
      }

      *v11 = &v9;
      *(sub_100051AD8(&v13, &v9, &unk_101802C98, v11) + 32) = 0;
    }

    sub_1007B92F0(buf);
  }

  else if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_10177E72C(v2, v7, v8);
  }
}

void sub_1007B6D6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1007B92F0(va);
  _Unwind_Resume(a1);
}

void DataServiceController::dumpMsimData_sync(DataServiceController *this)
{
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: ========================== MSIM ==========================", buf, 2u);
    v2 = *(this + 5);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = subscriber::asString();
    atomic_load(this + 1134);
    v4 = subscriber::asString();
    *buf = 136315394;
    v39 = v3;
    v40 = 2080;
    v41 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: MSIM:: PreferredDataSIM = %s / %s", buf, 0x16u);
    v2 = *(this + 5);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = subscriber::asString();
    atomic_load(this + 1136);
    v6 = subscriber::asString();
    *buf = 136315394;
    v39 = v5;
    v40 = 2080;
    v41 = v6;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: MSIM:: CurrentDataSIM = %s / %s", buf, 0x16u);
    v2 = *(this + 5);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v7 = subscriber::asString();
    v8 = subscriber::asString();
    *buf = 136315394;
    v39 = v7;
    v40 = 2080;
    v41 = v8;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: MSIM:: BasebandDataSIM = %s / %s", buf, 0x16u);
    v2 = *(this + 5);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v9 = subscriber::asString();
    *buf = 136315138;
    v39 = v9;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: MSIM:: UIDataSIM = %s", buf, 0xCu);
    v2 = *(this + 5);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v10 = subscriber::asString();
    atomic_load(this + 1135);
    v11 = subscriber::asString();
    v12 = subscriber::asString();
    *buf = 136315650;
    v39 = v10;
    v40 = 2080;
    v41 = v11;
    v42 = 2080;
    v43 = v12;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: MSIM:: config mode = %s / %s, target = %s", buf, 0x20u);
    v2 = *(this + 5);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v13 = asStringBool(*(this + 588) != 0);
    v14 = subscriber::asString();
    v15 = subscriber::asString();
    *buf = 136315650;
    v39 = v13;
    v40 = 2080;
    v41 = v14;
    v42 = 2080;
    v43 = v15;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: MSIM:: backoff timer: %s, sim %s, mode %s", buf, 0x20u);
    v2 = *(this + 5);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v16 = asStringBool(*(this + 577) != 0);
    v17 = asStringBool(*(this + 4680));
    v18 = asStringBool(*(this + 579) != 0);
    v19 = asString();
    v20 = subscriber::asString();
    v21 = subscriber::asString();
    v22 = asStringBool(*(this + 4696));
    *buf = 136316674;
    v39 = v16;
    v40 = 2080;
    v41 = v17;
    v42 = 2080;
    v43 = v18;
    v44 = 2080;
    v45 = v19;
    v46 = 2080;
    v47 = v20;
    v48 = 2080;
    v49 = v21;
    v50 = 2080;
    v51 = v22;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: MSIM:: waiting: fMSIMAirplaneAssertion = %s, fAlreadyInAirplaneMode = %s, fMSIMPowerAssertion = %s, fRemapStatus = %s, fSimSlot = %s, fMSimConfigMode = %s, fConfigResult = %s", buf, 0x48u);
  }

  v23 = *(this + 18);
  v24 = *(v23 + 8);
  for (i = *(v23 + 16); v24 != i; v24 += 432)
  {
    v26 = *(this + 5);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = *(v24 + 424);
      if (v27)
      {
        atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v27);
      }

      v28 = subscriber::asString();
      *buf = 136315138;
      v39 = v28;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I DATA:: MSIM:: for %s:", buf, 0xCu);
    }

    v30 = *(v24 + 416);
    v29 = *(v24 + 424);
    if (v29)
    {
      atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v29);
      if (v30)
      {
        v30 = *(v24 + 416);
        v31 = *(v24 + 424);
        if (!v31)
        {
          goto LABEL_28;
        }

        v32 = 0;
        atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_29;
      }
    }

    else if (v30)
    {
      v31 = 0;
LABEL_28:
      v32 = 1;
LABEL_29:
      v33 = sub_100007A6C(this + 856, (v30 + 24));
      if ((v32 & 1) == 0)
      {
        sub_100004A34(v31);
      }

      if ((this + 864) != v33)
      {
        v34 = *(this + 5);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          v35 = asStringBool(v33[56]);
          *buf = 136315138;
          v39 = v35;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#I DATA:: MSIM:: CriticalActivityOnSimPersonality = %s", buf, 0xCu);
        }
      }
    }

    v36 = *(this + 5);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v37 = asStringBool(*(v24 + 392));
      *buf = 136315138;
      v39 = v37;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "#I DATA:: MSIM:: simCriticalActivity = %s", buf, 0xCu);
    }
  }
}

void sub_1007B7354(_Unwind_Exception *exception_object)
{
  if ((v1 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007B7374(uint64_t **a1)
{
  v1 = a1;
  DataServiceController::setMsimBackoff_sync(**a1, *(*a1 + 2), *(*a1 + 3), 0, 0, *(*a1 + 16), "onFullCompleteMSIM_sync failure");
  operator delete();
}

void *sub_1007B740C(void *a1)
{
  *a1 = off_101E7E880;
  v2 = a1[9];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

void sub_1007B7470(void *a1)
{
  *a1 = off_101E7E880;
  v2 = a1[9];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  operator delete();
}

__n128 sub_1007B75D0(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E7E880;
  *(a2 + 8) = *(a1 + 8);
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v3 = *(a1 + 40);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 40) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 48);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 48) = v4;
  v5 = *(a1 + 72);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 72) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 80);
  *(a2 + 92) = *(a1 + 92);
  *(a2 + 80) = v6;
  v7 = *(a1 + 112);
  *(a2 + 120) = *(a1 + 120);
  *(a2 + 112) = v7;
  result = *(a1 + 128);
  *(a2 + 128) = result;
  return result;
}

void sub_1007B7678(void *a1)
{
  v2 = a1[9];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = a1[3];
  if (v4)
  {

    std::__shared_weak_count::__release_weak(v4);
  }
}

void sub_1007B76D4(void *__p)
{
  v2 = __p[9];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = __p[5];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = __p[3];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  operator delete(__p);
}

void sub_1007B772C(uint64_t a1, char *a2)
{
  v3 = *(a1 + 24);
  if (v3)
  {
    v4 = *(a1 + 8);
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      if (*(a1 + 16))
      {
        v6 = *(a1 + 40);
        if (v6)
        {
          atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
        }

        v7 = *(a1 + 72);
        if (v7)
        {
          atomic_fetch_add_explicit((v7 + 16), 1uLL, memory_order_relaxed);
        }

        *&v8[9] = *(a1 + 112);
        v8[11] = *(a1 + 120);
        *v8 = 0;
        *&v8[2] = 0;
        sub_100004AA0(v8, (v4 + 8));
        operator new();
      }

      sub_100004A34(v5);
    }
  }
}

void sub_1007B7920(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1007B7930(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_1007B797C(uint64_t *a1)
{
  v1 = *a1;
  v13 = a1;
  v14 = v1;
  v2 = *v1;
  v3 = *(*v1 + 4616);
  if (v3)
  {
    v4 = *(v3 + 68);
    if (v4 == 2)
    {
      if (*(v1 + 8))
      {
        if (*(v2 + 884) != 2)
        {
          v9 = *(v2 + 40);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            v10 = *(v1 + 112);
            LODWORD(buf) = 136315138;
            *(&buf + 4) = v10;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I MSIM update: Acquired airplane mode assertion - postpone execution till actual airplane mode (reason '%s')", &buf, 0xCu);
          }

          v11 = *(v1 + 24);
          *&buf = *(v1 + 16);
          *(&buf + 1) = v11;
          if (v11)
          {
            atomic_fetch_add_explicit((v11 + 16), 1uLL, memory_order_relaxed);
          }

          v16 = *(v1 + 32);
          v17 = *(v1 + 40);
          v12 = *(v1 + 56);
          v18 = *(v1 + 48);
          v19 = v12;
          if (v12)
          {
            atomic_fetch_add_explicit((v12 + 16), 1uLL, memory_order_relaxed);
          }

          v20[0] = *(v1 + 64);
          *(v20 + 12) = *(v1 + 76);
          v21 = *(v1 + 96);
          v22 = *(v1 + 104);
          operator new();
        }

        *(v2 + 4680) = 1;
        v6 = *(v2 + 40);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v7 = *(v1 + 112);
          LODWORD(buf) = 136315138;
          *(&buf + 4) = v7;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I MSIM update: Acquired airplane mode assertion - already in airplane mode (reason '%s')", &buf, 0xCu);
        }
      }

      else if (os_log_type_enabled(*(v2 + 40), OS_LOG_TYPE_ERROR))
      {
        sub_10177E76C();
      }
    }

    else if (v4)
    {
      if (os_log_type_enabled(*(v2 + 40), OS_LOG_TYPE_ERROR))
      {
        sub_10177E84C();
      }
    }

    else if (os_log_type_enabled(*(v2 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_10177E7DC();
    }

    sub_1007B7D18(v1 + 16);
  }

  else
  {
    if (os_log_type_enabled(*(v2 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_10177E8BC();
    }

    v5 = *(v2 + 4680);
    DataServiceController::MsimLpmWaiting::reset((v2 + 4616));
    DataServiceController::setMsimBackoff_sync(v2, *(v1 + 120), *(v1 + 124), 0, 0, (v5 & 1) == 0, "lost airplane assertion");
  }

  sub_1007B7CB8(&v14);
  return sub_1000049E0(&v13);
}

void sub_1007B7C84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a12)
{
  sub_1007B3E04(&a12);
  sub_1007B7CB8(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1007B7CB8(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    v2 = *(v1 + 56);
    if (v2)
    {
      std::__shared_weak_count::__release_weak(v2);
    }

    v3 = *(v1 + 24);
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    operator delete();
  }

  return a1;
}

void sub_1007B7D18(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(a1 + 16);
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*a1)
      {
        v6 = *(v3 + 40);
        v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
        if (v7)
        {
          v8 = *(a1 + 80);
          *buf = 136315138;
          v15 = v8;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I MSIM update: onAirplaneMode (reason '%s')", buf, 0xCu);
        }

        *(v3 + 4688) = *(a1 + 24);
        v9 = *(a1 + 88);
        if (!v9)
        {
          v9 = atomic_load((v3 + 4540));
        }

        *(v3 + 4692) = v9;
        v10 = capabilities::ct::supportsDualSIMSingleStackWithCrossMapping(v7);
        v11 = *(v3 + 144);
        if (v10)
        {
          if (sub_100097DB0(v11, 1) && *(sub_1000A8A0C(*(v3 + 144), 1) + 24))
          {
            sub_1000A8A0C(*(v3 + 144), 1);
            v12 = *(a1 + 40);
            if (v12)
            {
              atomic_fetch_add_explicit((v12 + 16), 1uLL, memory_order_relaxed);
            }

            operator new();
          }
        }

        else if (sub_100097DB0(v11, *(a1 + 24)) && *(sub_1000A8A0C(*(v3 + 144), *(a1 + 24)) + 24))
        {
          sub_1000A8A0C(*(v3 + 144), *(a1 + 24));
          v13 = *(a1 + 40);
          if (v13)
          {
            atomic_fetch_add_explicit((v13 + 16), 1uLL, memory_order_relaxed);
          }

          operator new();
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_1007B8024(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_10000FF50(va);
  sub_100004A34(v16);
  _Unwind_Resume(a1);
}

void *sub_1007B806C(void *a1)
{
  *a1 = off_101E7E8F0;
  v2 = a1[6];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void sub_1007B80C4(void *a1)
{
  *a1 = off_101E7E8F0;
  v2 = a1[6];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete();
}

__n128 sub_1007B81F0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = off_101E7E8F0;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 24);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 24) = v4;
  v5 = *(a1 + 48);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 48) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 56);
  *(a2 + 68) = *(a1 + 68);
  *(a2 + 56) = result;
  v7 = *(a1 + 96);
  *(a2 + 88) = *(a1 + 88);
  *(a2 + 96) = v7;
  return result;
}

void sub_1007B8278(char *a1)
{
  sub_1007B8308((a1 + 8));

  operator delete(a1);
}

uint64_t sub_1007B82BC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1007B8308(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void *sub_1007B8358(void *a1)
{
  *a1 = off_101E7E970;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1007B83A4(void *a1)
{
  *a1 = off_101E7E970;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

__n128 sub_1007B8490(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = off_101E7E970;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 36) = *(a1 + 36);
  *(a2 + 24) = result;
  *(a2 + 52) = 0;
  return result;
}

void sub_1007B84DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1007B84EC(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1007B852C(uint64_t a1, char *a2)
{
  v3 = *a2;
  v4 = *(a1 + 24);
  v5 = *(v4 + 40);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = asStringBool(v3);
    v7 = *(a1 + 40);
    *buf = 136315650;
    *&buf[4] = v6;
    *&buf[12] = 2080;
    *&buf[14] = v7;
    v13 = 2080;
    v14 = subscriber::asString();
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I MSIM update: configuration completed with result %s (reason '%s' msimMode %s)", buf, 0x20u);
  }

  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = std::__shared_weak_count::lock(v8);
    if (v9)
    {
      if (*(a1 + 8) && (v3 & 1) == 0)
      {
        DataServiceController::MsimLpmWaiting::reset((v4 + 4616));
        v10 = *(*(**(v4 + 48) + 16))(*(v4 + 48), *(a1 + 32));
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = *(a1 + 40);
          *buf = 136315138;
          *&buf[4] = v11;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#E MSIM update: Cannot update preferredData SIM, will try again (reason '%s')", buf, 0xCu);
        }

        *buf = 0;
        *&buf[8] = 0;
        sub_100004AA0(buf, (v4 + 8));
        operator new();
      }

      sub_100004A34(v9);
    }
  }
}

void sub_1007B877C(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

uint64_t sub_1007B87A8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1007B87F4(uint64_t **a1)
{
  v1 = a1;
  DataServiceController::setMsimBackoff_sync(**a1, *(*a1 + 2), *(*a1 + 3), 0, 0, *(*a1 + 16), "updatePreferredDataSIM_sync failure");
  operator delete();
}

void sub_1007B888C(uint64_t **a1)
{
  v18 = a1;
  v1 = *a1;
  v2 = **a1;
  v3 = *(v2 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(v1 + 16);
    *buf = 67109120;
    *&buf[4] = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I temporaryDataSubSwitchRequestComplete success = %d", buf, 8u);
  }

  if (*(v2 + 4868) != 1)
  {
    *(v2 + 4864) = 2;
    v15 = *(v2 + 40);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I fTempDataSubSwitchState to nDDS kTempSwitchToNddsCompleted", buf, 2u);
    }

    DataServiceController::switchCurrentDataSim_sync(v2, *(v1 + 2), "sim switch call", *(v1 + 3));
LABEL_20:
    operator delete();
  }

  *(v2 + 4868) = 0;
  ServiceMap = Registry::getServiceMap(*(v2 + 104));
  v6 = ServiceMap;
  if (v7 < 0)
  {
    v8 = (v7 & 0x7FFFFFFFFFFFFFFFLL);
    v9 = 5381;
    do
    {
      v7 = v9;
      v10 = *v8++;
      v9 = (33 * v9) ^ v10;
    }

    while (v10);
  }

  std::mutex::lock(ServiceMap);
  *buf = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, buf);
  if (v11)
  {
    v13 = v11[3];
    v12 = v11[4];
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v6);
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v12);
      v14 = 0;
      if (!v13)
      {
LABEL_18:
        if ((v14 & 1) == 0)
        {
          sub_100004A34(v12);
        }

        goto LABEL_20;
      }

LABEL_16:
      v16 = v1[1];
      v19[0] = off_101E7EA38;
      v19[1] = v2;
      v19[2] = v16;
      v19[3] = v19;
      (*(*v13 + 56))(v13, 0, 1, v19);
      sub_10000FF50(v19);
      *(v2 + 4864) = 3;
      v17 = *(v2 + 40);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I fTempDataSubSwitchState back to DDS kTempSwitchBackRequested due to pending", buf, 2u);
      }

      goto LABEL_18;
    }
  }

  else
  {
    v13 = 0;
  }

  std::mutex::unlock(v6);
  v12 = 0;
  v14 = 1;
  if (!v13)
  {
    goto LABEL_18;
  }

  goto LABEL_16;
}

void sub_1007B8B30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10000FF50(va);
  if ((v5 & 1) == 0)
  {
    sub_100004A34(v4);
  }

  operator delete();
}

__n128 sub_1007B8BFC(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E7EA38;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_1007B8C2C(uint64_t a1, char *a2)
{
  v2 = *(a1 + 8);
  v3[0] = 0;
  v3[1] = 0;
  sub_100004AA0(v3, (v2 + 8));
  operator new();
}

uint64_t sub_1007B8D20(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1007B8D6C(uint64_t **a1)
{
  v5 = a1;
  v1 = *a1;
  v2 = **a1;
  *(v2 + 4864) = 0;
  v3 = *(v2 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(v1 + 16);
    *buf = 67109120;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I fTempDataSubSwitchState back to DDS due to pending, success = %d. kInit", buf, 8u);
  }

  DataServiceController::switchCurrentDataSim_sync(v2, *(v1 + 2), "sim switch call", *(v1 + 3));
  operator delete();
}

__n128 sub_1007B8EEC(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E7EAB8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1007B8F30(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1007B8FF0(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E7EB38;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_1007B9020(uint64_t a1, char *a2)
{
  v2 = *(a1 + 8);
  v3[0] = 0;
  v3[1] = 0;
  sub_100004AA0(v3, (v2 + 8));
  operator new();
}

uint64_t sub_1007B9114(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1007B9160(uint64_t **a1)
{
  v5 = a1;
  v1 = *a1;
  v2 = **a1;
  *(v2 + 4864) = 0;
  v3 = *(v2 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(v1 + 16);
    *buf = 67109120;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I fTempDataSubSwitchState back to DDS success = %d, return to init", buf, 8u);
  }

  DataServiceController::switchCurrentDataSim_sync(v2, *(v1 + 2), "sim switch call", *(v1 + 3));
  operator delete();
}

void sub_1007B926C(DataServiceController ***a1)
{
  v1 = a1;
  DataServiceController::notifyCellularDataSwitchingAllowed_sync(**a1, *(*a1 + 8));
  operator delete();
}

uint64_t sub_1007B92F0(uint64_t a1)
{
  if (*a1 == 1)
  {
    sub_10031E330(*(a1 + 8), (a1 + 16));
  }

  sub_10006DCAC(a1 + 16, *(a1 + 24));
  return a1;
}

double sub_1007B9344(uint64_t a1)
{
  *a1 = off_101E7EBB8;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  *&result = 1;
  *(a1 + 96) = 1;
  return result;
}

void sub_1007B938C(uint64_t a1)
{
  *a1 = off_101E7EBB8;
  v4 = *(a1 + 88);
  v2 = (a1 + 88);
  v3 = v4;
  *v2 = 0;
  if (v4)
  {
    sub_100140988(v2, v3);
  }

  v5 = *(a1 + 80);
  *(a1 + 80) = 0;
  if (v5)
  {
    sub_100140988(a1 + 80, v5);
  }

  v6 = *(a1 + 72);
  *(a1 + 72) = 0;
  if (v6)
  {
    sub_100140988(a1 + 72, v6);
  }

  v7 = *(a1 + 64);
  *(a1 + 64) = 0;
  if (v7)
  {
    sub_100140988(a1 + 64, v7);
  }

  v8 = *(a1 + 56);
  *(a1 + 56) = 0;
  if (v8)
  {
    sub_100140988(a1 + 56, v8);
  }

  sub_100140928((a1 + 48), 0);
  v9 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v9)
  {
    sub_100140988(a1 + 40, v9);
  }

  sub_100140928((a1 + 32), 0);
  v10 = (a1 + 8);
  sub_1000087B4(&v10);
  PB::Base::~Base(a1);
}

void sub_1007B9478(uint64_t a1)
{
  sub_1007B938C(a1);

  operator delete();
}

uint64_t sub_1007B94B0(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  *a1 = off_101E7EBB8;
  *(a1 + 24) = 0u;
  *(a1 + 96) = 1;
  if (*(a2 + 32))
  {
    operator new();
  }

  if (*(a2 + 40))
  {
    operator new();
  }

  if (*(a2 + 48))
  {
    operator new();
  }

  if (*(a2 + 64))
  {
    operator new();
  }

  if (*(a2 + 56))
  {
    operator new();
  }

  if (*(a2 + 100))
  {
    v3 = *(a2 + 96);
    *(a1 + 100) |= 1u;
    *(a1 + 96) = v3;
  }

  if (*(a2 + 88))
  {
    operator new();
  }

  if (*(a2 + 72))
  {
    operator new();
  }

  if (*(a2 + 80))
  {
    operator new();
  }

  if (a1 != a2)
  {
    sub_100008234((a1 + 8), *(a2 + 8), *(a2 + 16), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 16) - *(a2 + 8)) >> 3));
  }

  return a1;
}

uint64_t sub_1007B98CC(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  for (i = *(a1 + 16); v5 != i; v5 += 24)
  {
    PB::TextFormatter::format();
  }

  if (*(a1 + 100))
  {
    PB::TextFormatter::format(this, "consentType", *(a1 + 96));
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    PB::TextFormatter::format(this, "csn", v7);
  }

  if (*(a1 + 40))
  {
    PB::TextFormatter::format();
  }

  v8 = *(a1 + 48);
  if (v8)
  {
    PB::TextFormatter::format(this, "targetCsn", v8);
  }

  if (*(a1 + 56))
  {
    PB::TextFormatter::format();
  }

  if (*(a1 + 64))
  {
    PB::TextFormatter::format();
  }

  if (*(a1 + 72))
  {
    PB::TextFormatter::format();
  }

  if (*(a1 + 80))
  {
    PB::TextFormatter::format();
  }

  if (*(a1 + 88))
  {
    PB::TextFormatter::format();
  }

  return PB::TextFormatter::endObject(this);
}

uint64_t sub_1007B9A2C(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    v7 = (a1 + 8);
    do
    {
      v8 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v16 = 0;
        v17 = 0;
        v11 = 0;
        v18 = v3 >= v2;
        v19 = v3 - v2;
        if (!v18)
        {
          v19 = 0;
        }

        v20 = (v8 + v2);
        v21 = v2 + 1;
        while (1)
        {
          if (!v19)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_80;
          }

          v22 = *v20;
          *(this + 1) = v21;
          v11 |= (v22 & 0x7F) << v16;
          if ((v22 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          --v19;
          ++v20;
          ++v21;
          v15 = v17++ > 8;
          if (v15)
          {
LABEL_18:
            v11 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v11 = 0;
        }
      }

      else
      {
        v9 = 0;
        v10 = 0;
        v11 = 0;
        v12 = (v8 + v2);
        v13 = v2 + 1;
        while (1)
        {
          *(this + 1) = v13;
          v14 = *v12++;
          v11 |= (v14 & 0x7F) << v9;
          if ((v14 & 0x80) == 0)
          {
            break;
          }

          v9 += 7;
          ++v13;
          v15 = v10++ > 8;
          if (v15)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v11 & 7) == 4))
      {
        break;
      }

      v23 = v11 >> 3;
      if ((v11 >> 3) > 5)
      {
        if (v23 <= 7)
        {
          if (v23 == 6)
          {
            *(a1 + 100) |= 1u;
            v28 = *(this + 1);
            v27 = *(this + 2);
            v29 = *this;
            if (v28 > 0xFFFFFFFFFFFFFFF5 || v28 + 10 > v27)
            {
              v36 = 0;
              v37 = 0;
              v32 = 0;
              v18 = v27 >= v28;
              v38 = v27 - v28;
              if (!v18)
              {
                v38 = 0;
              }

              v39 = (v29 + v28);
              v40 = v28 + 1;
              while (1)
              {
                if (!v38)
                {
                  LODWORD(v32) = 0;
                  *(this + 24) = 1;
                  goto LABEL_78;
                }

                v41 = *v39;
                *(this + 1) = v40;
                v32 |= (v41 & 0x7F) << v36;
                if ((v41 & 0x80) == 0)
                {
                  break;
                }

                v36 += 7;
                --v38;
                ++v39;
                ++v40;
                v15 = v37++ > 8;
                if (v15)
                {
LABEL_64:
                  LODWORD(v32) = 0;
                  goto LABEL_78;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v32) = 0;
              }
            }

            else
            {
              v30 = 0;
              v31 = 0;
              v32 = 0;
              v33 = (v29 + v28);
              v34 = v28 + 1;
              while (1)
              {
                *(this + 1) = v34;
                v35 = *v33++;
                v32 |= (v35 & 0x7F) << v30;
                if ((v35 & 0x80) == 0)
                {
                  break;
                }

                v30 += 7;
                ++v34;
                v15 = v31++ > 8;
                if (v15)
                {
                  goto LABEL_64;
                }
              }
            }

LABEL_78:
            *(a1 + 96) = v32;
            goto LABEL_52;
          }

          if (v23 == 7)
          {
            operator new();
          }
        }

        else
        {
          switch(v23)
          {
            case 8:
              operator new();
            case 9:
              operator new();
            case 0xA:
              v24 = *(a1 + 16);
              v25 = *(a1 + 24);
              if (v24 >= v25)
              {
                v42 = 0xAAAAAAAAAAAAAAABLL * ((v24 - *v7) >> 3);
                v43 = v42 + 1;
                if (v42 + 1 > 0xAAAAAAAAAAAAAAALL)
                {
                  sub_1000CE3D4();
                }

                v44 = 0xAAAAAAAAAAAAAAABLL * ((v25 - *v7) >> 3);
                if (2 * v44 > v43)
                {
                  v43 = 2 * v44;
                }

                if (v44 >= 0x555555555555555)
                {
                  v45 = 0xAAAAAAAAAAAAAAALL;
                }

                else
                {
                  v45 = v43;
                }

                v54[4] = v7;
                if (v45)
                {
                  sub_100005348(v7, v45);
                }

                v46 = 24 * v42;
                *v46 = 0;
                *(v46 + 8) = 0;
                *(v46 + 16) = 0;
                v26 = 24 * v42 + 24;
                v47 = *(a1 + 8);
                v48 = *(a1 + 16) - v47;
                v49 = 24 * v42 - v48;
                memcpy((v46 - v48), v47, v48);
                v50 = *(a1 + 8);
                *(a1 + 8) = v49;
                *(a1 + 16) = v26;
                v51 = *(a1 + 24);
                *(a1 + 24) = 0;
                v54[2] = v50;
                v54[3] = v51;
                v54[0] = v50;
                v54[1] = v50;
                sub_1000054E0(v54);
              }

              else
              {
                *v24 = 0;
                v24[1] = 0;
                v26 = (v24 + 3);
                v24[2] = 0;
              }

              *(a1 + 16) = v26;
              PB::Reader::read();
              goto LABEL_52;
          }
        }
      }

      else if (v23 <= 2)
      {
        if (v23 == 1)
        {
          operator new();
        }

        if (v23 == 2)
        {
          operator new();
        }
      }

      else
      {
        switch(v23)
        {
          case 3:
            operator new();
          case 4:
            operator new();
          case 5:
            operator new();
        }
      }

      if (!PB::Reader::skip(this, v23, v11 & 7, 0))
      {
        v53 = 0;
        return v53 & 1;
      }

LABEL_52:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_80:
  v53 = v4 ^ 1;
  return v53 & 1;
}

uint64_t sub_1007BA058(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 32);
  if (v4)
  {
    result = PB::Writer::write(this, v4, 1u);
  }

  if (*(v3 + 40))
  {
    result = PB::Writer::write();
  }

  v5 = *(v3 + 48);
  if (v5)
  {
    result = PB::Writer::write(this, v5, 3u);
  }

  if (*(v3 + 64))
  {
    result = PB::Writer::write();
  }

  if (*(v3 + 56))
  {
    result = PB::Writer::write();
  }

  if (*(v3 + 100))
  {
    result = PB::Writer::writeVarInt(this, *(v3 + 96), 6u);
  }

  if (*(v3 + 88))
  {
    result = PB::Writer::write();
  }

  if (*(v3 + 72))
  {
    result = PB::Writer::write();
  }

  if (*(v3 + 80))
  {
    result = PB::Writer::write();
  }

  v7 = *(v3 + 8);
  v6 = *(v3 + 16);
  while (v7 != v6)
  {
    result = PB::Writer::write();
    v7 += 24;
  }

  return result;
}

BOOL sub_1007BA160(const void ***a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  if (v3 - *a1 != *(a2 + 8) - *a2)
  {
    return 0;
  }

  if (v2 == v3)
  {
    return 1;
  }

  do
  {
    result = sub_100022D3C(&v6, v2, v4);
    if (!result)
    {
      break;
    }

    v2 += 3;
    v4 += 3;
  }

  while (v2 != v3);
  return result;
}

uint64_t sub_1007BA1E0(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

void CellularPlanDeliveryModel::CellularPlanDeliveryModel(uint64_t a1, uint64_t a2, NSObject **a3, uint64_t a4)
{
  sub_100118594((a1 + 8), a3, &kCtLoggingSystemName, &off_101E7EBF8);
  *a1 = off_101E7EC10;
  *(a1 + 48) = off_101E7EEA0;
  *(a1 + 56) = off_101E7EEC8;
  *(a1 + 64) = off_101E7EEF0;
  *(a1 + 72) = off_101E7EF28;
  *(a1 + 80) = off_101E7EF60;
  *(a1 + 88) = off_101E7EFB8;
  (***a2)(v18);
  v6 = v18[0];
  *(a1 + 96) = *v18;
  v7 = *(a2 + 8);
  *(a1 + 112) = *a2;
  *(a1 + 120) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    v8 = *(a1 + 96);
  }

  else
  {
    v8 = v6;
  }

  ServiceMap = Registry::getServiceMap(v8);
  v10 = ServiceMap;
  if ((v11 & 0x8000000000000000) != 0)
  {
    v12 = (v11 & 0x7FFFFFFFFFFFFFFFLL);
    v13 = 5381;
    do
    {
      v11 = v13;
      v14 = *v12++;
      v13 = (33 * v13) ^ v14;
    }

    while (v14);
  }

  std::mutex::lock(ServiceMap);
  v19 = v11;
  v15 = sub_100009510(&v10[1].__m_.__sig, &v19);
  if (v15)
  {
    v16 = v15[3];
    v17 = v15[4];
    if (v17)
    {
      atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v16 = 0;
    v17 = 0;
  }

  std::mutex::unlock(v10);
  v18[0] = v16;
  v18[1] = v17;
  if (v17)
  {
    atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
    sub_100004A34(v17);
  }

  v19 = a1 + 40;
  sub_1007CDBBC();
}

void sub_1007BA814(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, MonitorModeStatusDelegate *a9, CellularPlanMultiplePlanInstallSchedulerDelegateInterface *a10, CellularPlanProvisioningMonitorModeDelegate *a11, CellularPlanProvisioningMonitorModeDelegate *a12, CoreUtilsMessageSessionDelegateInterface *a13, dispatch_object_t object, dispatch_object_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23)
{
  if (*(v24 + 503) < 0)
  {
    operator delete(*(v24 + 480));
  }

  sub_100643184(v23 + 224);
  if (*(v24 + 424) == 1)
  {
    sub_100009970(v23 + 192, *(v24 + 408));
  }

  sub_100009970(v23 + 168, *(v24 + 384));
  v28 = *(v24 + 368);
  if (v28)
  {
    sub_100004A34(v28);
  }

  v29 = *(v24 + 344);
  *(v24 + 344) = 0;
  if (v29)
  {
    (*(*v29 + 8))(v29);
  }

  v30 = *(v24 + 336);
  *(v24 + 336) = 0;
  if (v30)
  {
    (*(*v30 + 8))(v30);
  }

  a22 = v23 + 104;
  sub_10005C284(&a22);
  v31 = *(v24 + 304);
  if (v31)
  {
    std::__shared_weak_count::__release_weak(v31);
  }

  sub_1000DD0AC(v26, *(v24 + 272));
  a22 = v23 + 24;
  sub_1000B2AF8(&a22);
  a22 = v23;
  sub_100112048(&a22);
  v32 = *(v24 + 200);
  if (v32)
  {
    sub_100004A34(v32);
  }

  v33 = *(v24 + 184);
  if (v33)
  {
    sub_100004A34(v33);
  }

  v34 = *(v24 + 168);
  if (v34)
  {
    sub_100004A34(v34);
  }

  v35 = *(v24 + 152);
  if (v35)
  {
    sub_100004A34(v35);
  }

  v36 = *(v24 + 136);
  if (v36)
  {
    sub_100004A34(v36);
  }

  v37 = *(v24 + 120);
  if (v37)
  {
    sub_100004A34(v37);
  }

  v38 = *(v24 + 104);
  if (v38)
  {
    sub_100004A34(v38);
  }

  MonitorModeStatusDelegate::~MonitorModeStatusDelegate(a9);
  CellularPlanMultiplePlanInstallSchedulerDelegateInterface::~CellularPlanMultiplePlanInstallSchedulerDelegateInterface(a10);
  CellularPlanProvisioningMonitorModeDelegate::~CellularPlanProvisioningMonitorModeDelegate(a11);
  CellularPlanProvisioningMonitorModeDelegate::~CellularPlanProvisioningMonitorModeDelegate(a12);
  CoreUtilsMessageSessionDelegateInterface::~CoreUtilsMessageSessionDelegateInterface(a13);
  TMKXPCServer.shutdown()();
  ctu::OsLogLogger::~OsLogLogger((v24 + 40));
  sub_1000C0544(v25);
  CellularPlanDeliveryModelInterface::~CellularPlanDeliveryModelInterface(v24);
  _Unwind_Resume(a1);
}

void CellularPlanDeliveryModel::connectRestResources_sync(Registry **this)
{
  Registry::createRestModuleOneTimeUseConnection(&v3, this[12]);
  ctu::RestModule::connect();
  if (v4)
  {
    sub_100004A34(v4);
  }

  v2[0] = CellularPlanDeliveryModel::handleVinylInfoUpdated_sync;
  v2[1] = 0;
  sub_1007CDD2C((this + 26), (this + 24), this, v2);
}

void sub_1007BACAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

void CellularPlanDeliveryModel::handleVinylInfoUpdated_sync(CellularPlanDeliveryModel *this)
{
  v1 = *(this + 39);
  v2 = *(this + 40);
  if (v1 != v2)
  {
    while (1)
    {
      if ((*(v1 + 479) & 0x8000000000000000) != 0)
      {
        if (*(v1 + 464))
        {
          break;
        }
      }

      else if (*(v1 + 479))
      {
        break;
      }

      if (*(v1 + 1225) == 1)
      {
        break;
      }

LABEL_39:
      v1 += 1280;
      if (v1 == v2)
      {
        return;
      }
    }

    v4 = *(v1 + 1176);
    if (v4)
    {
      (*(*v4 + 48))(v4, this + 208);
    }

    if (*(v1 + 1) == 12)
    {
      goto LABEL_39;
    }

    v5 = *(v1 + 1192);
    if (v5)
    {
      (*(*v5 + 48))(v5, this + 208);
    }

    v6 = *(v1 + 1208);
    if (v6)
    {
      (*(*v6 + 48))(v6, this + 208);
    }

    v7 = (v1 + 456);
    memset(__str, 0, sizeof(__str));
    sub_1007C4FBC(v1 + 456, (v1 + 480), this + 26, __str);
    v8 = __str[24];
    if (__str[24] != 1)
    {
LABEL_36:
      if ((v8 & 1) != 0 && (__str[23] & 0x80000000) != 0)
      {
        operator delete(*__str);
      }

      goto LABEL_39;
    }

    if ((*(v1 + 479) & 0x8000000000000000) != 0)
    {
      if (!*(v1 + 464))
      {
LABEL_19:
        std::string::operator=((v1 + 456), __str);
      }
    }

    else if (!*(v1 + 479))
    {
      goto LABEL_19;
    }

    v9 = *(this + 5);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = (v1 + 432);
      if (*(v1 + 455) < 0)
      {
        v10 = *v10;
      }

      v11 = v1 + 456;
      if (*(v1 + 479) < 0)
      {
        v11 = *v7;
      }

      *buf = 136315394;
      *&buf[4] = v10;
      *&buf[12] = 2080;
      *&buf[14] = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I plan (%s) has got successfully transferred as (%s)", buf, 0x16u);
    }

    *(v1 + 1225) = 0;
    if (*(this + 472) == 1)
    {
      if (*(v1 + 479) < 0)
      {
        sub_100005F2C(buf, *(v1 + 456), *(v1 + 464));
      }

      else
      {
        *buf = *v7;
        *&buf[16] = *(v1 + 472);
      }

      v14 = 1;
      (*(*this + 112))(this, v1 + 432, 12, buf);
    }

    else
    {
      buf[0] = 0;
      v14 = 0;
      (*(*this + 112))(this, v1 + 432, 12, buf);
    }

    if (v14 == 1 && (buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    CellularPlanDeliveryModel::maybeSubmitTransferTimestampsWhenVinylInfoUpdate(this, v1);
    v8 = __str[24];
    goto LABEL_36;
  }
}

void sub_1007BAFD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  if (a17 == 1 && a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CellularPlanDeliveryModel::handleSimStateUpdated_sync(CellularPlanDeliveryModel *this)
{
  v2 = *(this + 29);
  v3 = *(this + 30);
  if (v2 == v3)
  {
LABEL_46:
    CellularPlanDeliveryModel::notifyPlansUpdate(this);
  }

  while (1)
  {
    isSimReady = subscriber::isSimReady();
    v5 = *(v2 + 64) == 1 ? isSimReady : 0;
    if (v5 == 1)
    {
      break;
    }

LABEL_42:
    v2 += 168;
    if (v2 == v3)
    {
      goto LABEL_46;
    }
  }

  v6 = *(this + 39);
  v7 = *(this + 40);
  v8 = (v2 + 72);
  if (*(v2 + 95) < 0)
  {
    sub_100005F2C(__p, *(v2 + 72), *(v2 + 80));
  }

  else
  {
    *__p = *v8;
    v20 = *(v2 + 88);
  }

  v9 = HIBYTE(v20);
  if (v6 == v7)
  {
    v7 = v6;
LABEL_27:
    if ((v9 & 0x80) == 0)
    {
      goto LABEL_29;
    }
  }

  else
  {
    if (v20 >= 0)
    {
      v10 = HIBYTE(v20);
    }

    else
    {
      v10 = __p[1];
    }

    if (v20 >= 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = __p[0];
    }

    v12 = v6 + 432;
    while (1)
    {
      v13 = *(v12 + 23);
      v14 = v13;
      if ((v13 & 0x80u) != 0)
      {
        v13 = *(v12 + 8);
      }

      if (v10 == v13)
      {
        v15 = v14 >= 0 ? v12 : *v12;
        if (!memcmp(v11, v15, v10))
        {
          break;
        }
      }

      v16 = v12 + 848;
      v12 += 1280;
      if (v16 == v7)
      {
        goto LABEL_27;
      }
    }

    v7 = v12 - 432;
    if ((v9 & 0x80) == 0)
    {
      goto LABEL_29;
    }
  }

  operator delete(__p[0]);
LABEL_29:
  v17 = *(this + 40);
  if (v7 != v17 && *v7 != 7 && (*(v7 + 9) & 1) == 0)
  {
    v18 = *(this + 5);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v2 + 95) < 0)
      {
        v8 = *v8;
      }

      *buf = 136315138;
      v22 = v8;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I 4FF plan inserted removed from pending transfer plans (%s)", buf, 0xCu);
      v17 = *(this + 40);
    }

    if (v7 + 1280 != v17)
    {
      do
      {
        sub_1007CC0DC(v7, (v7 + 1280));
        v7 += 1280;
      }

      while (v7 + 1280 != v17);
      v17 = *(this + 40);
    }

    while (v17 != v7)
    {
      v17 -= 1280;
      sub_1002813D0(v17);
    }

    *(this + 40) = v7;
  }

  goto LABEL_42;
}

void CellularPlanDeliveryModel::handleDumpState_sync(CellularPlanDeliveryModel *this)
{
  v2 = (this + 40);
  v3 = *(this + 5);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 0xCCCCCCCCCCCCCCCDLL * ((*(this + 40) - *(this + 39)) >> 8);
    v7 = 134217984;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I pending transfer plans count: %lu", &v7, 0xCu);
  }

  v6 = *(this + 39);
  v5 = *(this + 40);
  while (v6 != v5)
  {
    sub_10064A7C8(v6, v2);
    v6 += 1280;
  }
}

void CellularPlanDeliveryModel::handleBuddyStateUpdated_sync(CellularPlanDeliveryModel *this)
{
  if (*(this + 64) == 2)
  {
    v2 = *(this + 5);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = (this + 480);
      if (*(this + 503) < 0)
      {
        v3 = *v3;
      }

      v4 = 136315138;
      v5 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I clearing source imei [%s] after buddy exit", &v4, 0xCu);
    }

    if (*(this + 503) < 0)
    {
      **(this + 60) = 0;
      *(this + 61) = 0;
    }

    else
    {
      *(this + 480) = 0;
      *(this + 503) = 0;
    }
  }
}

void sub_1007BB434(uint64_t a1, uint64_t a2)
{
  sub_10000501C(&__p, "/cc/props/bound_sims");
  v5[0] = off_101E7F830;
  v5[1] = a1;
  v5[3] = v5;
  ctu::RestModule::observeProperty();
  sub_1000062D4(v5);
  if (v4 < 0)
  {
    operator delete(__p);
  }
}

void sub_1007BB4E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void CellularPlanDeliveryModel::createTransferSessionHandler_sync(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + 112);
  v6 = a2[1];
  v17 = *a2;
  v18 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100004AA0(&v20, (a1 + 8));
  v7 = v21;
  if (v21)
  {
    v8 = v20;
    atomic_fetch_add_explicit(&v21->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v7);
    v15 = 0;
    v16 = 0;
    v9 = std::__shared_weak_count::lock(v7);
    v10 = v9;
    if (v9)
    {
      v11 = v8 + 56;
      if (!v8)
      {
        v11 = 0;
      }

      atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v15 = v11;
      v16 = v9;
      std::__shared_weak_count::__release_weak(v7);
      sub_100004A34(v10);
    }

    else
    {
      v15 = 0;
      v16 = 0;
      std::__shared_weak_count::__release_weak(v7);
    }
  }

  else
  {
    v15 = 0;
    v16 = 0;
  }

  (*(*v5 + 472))(&v19, v5, &v17, &v15);
  v12 = v19;
  v19 = 0uLL;
  v13 = *(a1 + 152);
  *(a1 + 144) = v12;
  if (v13)
  {
    sub_100004A34(v13);
    if (*(&v19 + 1))
    {
      sub_100004A34(*(&v19 + 1));
    }
  }

  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  if (v18)
  {
    sub_100004A34(v18);
  }

  v14 = *(a1 + 152);
  *a3 = *(a1 + 144);
  a3[1] = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }
}

void sub_1007BB680(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CellularPlanDeliveryModel::activateCrossPlatformTransport_sync(void *a1, uint64_t a2)
{
  v4 = a1[20];
  if (v4 && (*(*v4 + 40))(v4))
  {
    if (os_log_type_enabled(a1[5], OS_LOG_TYPE_ERROR))
    {
      sub_10177E92C();
    }

    return sub_10025BA88(a2, 269);
  }

  else
  {
    v6 = a1[3];
    object = v6;
    if (v6)
    {
      dispatch_retain(v6);
    }

    v7 = a1[15];
    v10 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_1009C0B00(2, &v12);
    v8 = v12;
    v12 = 0uLL;
    v9 = a1[21];
    *(a1 + 10) = v8;
    if (v9)
    {
      sub_100004A34(v9);
      if (*(&v12 + 1))
      {
        sub_100004A34(*(&v12 + 1));
      }
    }

    if (v10)
    {
      sub_100004A34(v10);
    }

    if (object)
    {
      dispatch_release(object);
    }

    if (a1[20])
    {
      sub_10043A78C(v13, a2);
      v14 = 0;
      operator new();
    }

    return sub_10025BA88(a2, 260);
  }
}

void sub_1007BB884(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, dispatch_object_t object, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_10028ED7C(v15 - 56);
  sub_10039D5CC(va);
  _Unwind_Resume(a1);
}

uint64_t CellularPlanDeliveryModel::deactivateCrossPlatformTransport_sync(void *a1, uint64_t a2)
{
  v3 = a1[20];
  if (v3)
  {
    v5 = a1[5];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I deactivate cross platform transfer", v8, 2u);
      v3 = a1[20];
    }

    (*(*v3 + 24))(v3, 1);
    v6 = a1[21];
    a1[20] = 0;
    a1[21] = 0;
    if (v6)
    {
      sub_100004A34(v6);
    }

    return sub_10025BA88(a2, 0);
  }

  else
  {

    return sub_10025BA88(a2, 260);
  }
}

void CellularPlanDeliveryModel::appendPendingTransferPlans(CellularPlanDeliveryModel *this, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (*a2 == v4)
  {
LABEL_5:
    v6 = *(this + 39);
    v7 = *(this + 40);
    if (v6 != v7)
    {
      v8 = 0;
      v9 = v7 - v6 - 1280;
      v10 = vdupq_n_s64(v9 / 0x500);
      do
      {
        v11 = vdupq_n_s64(v8);
        v12 = vmovn_s64(vcgeq_u64(v10, vorrq_s8(v11, xmmword_1017DF6E0)));
        if (vuzp1_s8(vuzp1_s16(v12, *v10.i8), *v10.i8).u8[0])
        {
          v6[10] = 0;
        }

        if (vuzp1_s8(vuzp1_s16(v12, *&v10), *&v10).i8[1])
        {
          v6[1290] = 0;
        }

        if (vuzp1_s8(vuzp1_s16(*&v10, vmovn_s64(vcgeq_u64(v10, vorrq_s8(v11, xmmword_1017DF6D0)))), *&v10).i8[2])
        {
          v6[2570] = 0;
          v6[3850] = 0;
        }

        v13 = vmovn_s64(vcgeq_u64(v10, vorrq_s8(v11, xmmword_10183AC60)));
        if (vuzp1_s8(*&v10, vuzp1_s16(v13, *&v10)).i32[1])
        {
          v6[5130] = 0;
        }

        if (vuzp1_s8(*&v10, vuzp1_s16(v13, *&v10)).i8[5])
        {
          v6[6410] = 0;
        }

        if (vuzp1_s8(*&v10, vuzp1_s16(*&v10, vmovn_s64(vcgeq_u64(v10, vorrq_s8(v11, xmmword_10183AC50))))).i8[6])
        {
          v6[7690] = 0;
          v6[8970] = 0;
        }

        v14 = vmovn_s64(vcgeq_u64(v10, vorrq_s8(v11, xmmword_10183AC40)));
        if (vuzp1_s8(vuzp1_s16(v14, *v10.i8), *v10.i8).u8[0])
        {
          v6[10250] = 0;
        }

        if (vuzp1_s8(vuzp1_s16(v14, *&v10), *&v10).i8[1])
        {
          v6[11530] = 0;
        }

        if (vuzp1_s8(vuzp1_s16(*&v10, vmovn_s64(vcgeq_u64(v10, vorrq_s8(v11, xmmword_10183AC30)))), *&v10).i8[2])
        {
          v6[12810] = 0;
          v6[14090] = 0;
        }

        v15 = vmovn_s64(vcgeq_u64(v10, vorrq_s8(v11, xmmword_10183AC20)));
        if (vuzp1_s8(*&v10, vuzp1_s16(v15, *&v10)).i32[1])
        {
          v6[15370] = 0;
        }

        if (vuzp1_s8(*&v10, vuzp1_s16(v15, *&v10)).i8[5])
        {
          v6[16650] = 0;
        }

        if (vuzp1_s8(*&v10, vuzp1_s16(*&v10, vmovn_s64(vcgeq_u64(v10, vorrq_s8(v11, xmmword_10183AC10))))).i8[6])
        {
          v6[17930] = 0;
          v6[19210] = 0;
        }

        v8 += 16;
        v6 += 20480;
      }

      while (((v9 / 0x500 + 16) & 0x7FFFFFFFFFFFF0) != v8);
    }
  }

  else
  {
    v5 = *a2;
    while ((*(v5 + 10) & 1) != 0)
    {
      v5 += 1280;
      if (v5 == v4)
      {
        goto LABEL_5;
      }
    }
  }

  if (v3 == v4)
  {
LABEL_127:
    CellularPlanDeliveryModel::handleDumpState_sync(this);
    v42 = this;
    if (atomic_load_explicit(this + 44, memory_order_acquire) != -1)
    {
      __str.__r_.__value_.__r.__words[0] = &v42;
      *&v43 = &__str;
      std::__call_once(this + 44, &v43, sub_1007CEAC0);
    }

    CellularPlanDeliveryModel::notifyPlansUpdate(this);
  }

  while (1)
  {
    v16 = *(this + 39);
    v17 = *(this + 40);
    if (v16 != v17)
    {
      v18 = *(v3 + 455);
      if (v18 >= 0)
      {
        v19 = *(v3 + 455);
      }

      else
      {
        v19 = *(v3 + 440);
      }

      v20 = v16 + 27;
      while (1)
      {
        v21 = *(v20 + 23);
        v22 = v21;
        if ((v21 & 0x80u) != 0)
        {
          v21 = *(v20 + 1);
        }

        if (v19 == v21)
        {
          v23 = v18 >= 0 ? (v3 + 432) : *(v3 + 432);
          v24 = v22 >= 0 ? v20 : *v20;
          if (!memcmp(v23, v24, v19))
          {
            break;
          }
        }

        v25 = v20 + 53;
        v20 += 80;
        if (v25 == v17)
        {
          goto LABEL_69;
        }
      }

      v16 = v20 - 27;
    }

    if (v16 == v17)
    {
LABEL_69:
      v16 = sub_1007BC200(this + 39, v17, v3);
      CellularPlanDeliveryModel::updatePlanStates_sync(this, v16, *(v16 + 1));
      if (*(v16 + 1) == 5)
      {
        *(v16 + 2) = 1;
      }

      if ((*(v16 + 311) & 0x8000000000000000) != 0)
      {
        if (!*(v16 + 37))
        {
          goto LABEL_75;
        }
      }

      else if (!*(v16 + 311))
      {
LABEL_75:
        (***(this + 14))(&__str);
        ServiceMap = Registry::getServiceMap(__str.__r_.__value_.__l.__data_);
        v28 = ServiceMap;
        if (v29 < 0)
        {
          v30 = (v29 & 0x7FFFFFFFFFFFFFFFLL);
          v31 = 5381;
          do
          {
            v29 = v31;
            v32 = *v30++;
            v31 = (33 * v31) ^ v32;
          }

          while (v32);
        }

        std::mutex::lock(ServiceMap);
        *&v43 = v29;
        v33 = sub_100009510(&v28[1].__m_.__sig, &v43);
        if (v33)
        {
          v35 = v33[3];
          v34 = v33[4];
          if (v34)
          {
            atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
            std::mutex::unlock(v28);
            atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_100004A34(v34);
            v36 = 0;
            goto LABEL_83;
          }
        }

        else
        {
          v35 = 0;
        }

        std::mutex::unlock(v28);
        v34 = 0;
        v36 = 1;
LABEL_83:
        if (__str.__r_.__value_.__l.__size_)
        {
          sub_100004A34(__str.__r_.__value_.__l.__size_);
        }

        if (!v35)
        {
          goto LABEL_93;
        }

        memset(&__str, 0, sizeof(__str));
        (*(*v35 + 24))(&__str, v35, v16 + 24);
        size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        v38 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = __str.__r_.__value_.__l.__size_;
        }

        if (size)
        {
          std::string::operator=(v16 + 12, &__str);
          v39 = v16 + 33;
          sub_10092C8F4(v16 + 264, &__str);
          if (*(v16 + 287) < 0)
          {
            operator delete(*v39);
          }

          *v39 = v43;
          *(v16 + 35) = v44;
          v38 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        }

        if (v38 < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
          if ((v36 & 1) == 0)
          {
LABEL_94:
            sub_100004A34(v34);
          }
        }

        else
        {
LABEL_93:
          if ((v36 & 1) == 0)
          {
            goto LABEL_94;
          }
        }
      }

      if ((*(v16 + 479) & 0x8000000000000000) != 0)
      {
        if (*(v16 + 58))
        {
          goto LABEL_99;
        }
      }

      else
      {
        if (!*(v16 + 479))
        {
          goto LABEL_106;
        }

LABEL_99:
        if ((*(v16 + 503) & 0x8000000000000000) != 0)
        {
          if (!*(v16 + 61))
          {
LABEL_103:
            sub_10092CDF4(v16 + 456, &__str);
            if (*(v16 + 503) < 0)
            {
              operator delete(*(v16 + 60));
            }

            *(v16 + 20) = __str;
          }
        }

        else if (!*(v16 + 503))
        {
          goto LABEL_103;
        }
      }

LABEL_106:
      if (*(v16 + 1224) == 1 && *(v16 + 2) == 4)
      {
        v40 = *(this + 5);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(__str.__r_.__value_.__l.__data_) = 0;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "#I monitor mode exhausted, should hide PendingTransferPlan", &__str, 2u);
        }

        *(v16 + 2) = 1;
      }

      goto LABEL_119;
    }

    *(v16 + 8) = *(v3 + 8);
    std::string::operator=(v16 + 10, (v3 + 240));
    std::string::operator=(v16 + 12, (v3 + 288));
    std::string::operator=(v16 + 11, (v3 + 264));
    std::string::operator=(v16 + 5, (v3 + 120));
    std::string::operator=(v16 + 6, (v3 + 144));
    std::string::operator=(v16 + 7, (v3 + 168));
    std::string::operator=(v16 + 8, (v3 + 192));
    *(v16 + 1) = *(v3 + 4);
    *(v16 + 10) = *(v3 + 10);
    if (*(v3 + 913) == 1)
    {
      *(v16 + 456) = *(v3 + 912);
    }

    v26 = *(v16 + 150);
    *(v16 + 1192) = 0u;
    if (v26)
    {
      sub_100004A34(v26);
    }

    *(v16 + 612) = *(v3 + 1224);
    *(v16 + 1226) = *(v3 + 1226);
    if (*(v3 + 16) != 1)
    {
      goto LABEL_119;
    }

    *(v16 + 16) = 1;
    if ((*(v3 + 407) & 0x8000000000000000) == 0)
    {
      break;
    }

    if (*(v3 + 392))
    {
      goto LABEL_59;
    }

LABEL_60:
    if ((*(v3 + 335) & 0x8000000000000000) == 0)
    {
      if (!*(v3 + 335))
      {
        goto LABEL_63;
      }

LABEL_62:
      std::string::operator=(v16 + 13, (v3 + 312));
      goto LABEL_63;
    }

    if (*(v3 + 320))
    {
      goto LABEL_62;
    }

LABEL_63:
    if ((*(v3 + 383) & 0x8000000000000000) == 0)
    {
      if (!*(v3 + 383))
      {
        goto LABEL_66;
      }

LABEL_65:
      std::string::operator=(v16 + 15, (v3 + 360));
      goto LABEL_66;
    }

    if (*(v3 + 368))
    {
      goto LABEL_65;
    }

LABEL_66:
    if ((*(v3 + 359) & 0x8000000000000000) != 0)
    {
      if (!*(v3 + 344))
      {
        goto LABEL_119;
      }

LABEL_118:
      std::string::operator=(v16 + 14, (v3 + 336));
      goto LABEL_119;
    }

    if (*(v3 + 359))
    {
      goto LABEL_118;
    }

LABEL_119:
    if (*(v16 + 913) == 1 && *(v16 + 912) == 1)
    {
      v41 = *(this + 22);
      if (v41)
      {
        (*(*v41 + 48))(v41, v16 + 15, v16 + 456, v16 + 1);
      }
    }

    CellularPlanDeliveryModel::maybeStartDelayProvisioningMonitorMode(this, v16);
    CellularPlanDeliveryModel::maybeStartRecoveryDelayProvisioningMonitorMode(this, v16);
    CellularPlanDeliveryModel::maybeStartRetryTransferMonitorMode(this, v16);
    v3 += 1280;
    if (v3 == v4)
    {
      goto LABEL_127;
    }
  }

  if (!*(v3 + 407))
  {
    goto LABEL_60;
  }

LABEL_59:
  std::string::operator=(v16 + 16, (v3 + 384));
  goto LABEL_60;
}

void sub_1007BC1B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if ((v18 & 1) == 0)
  {
    sub_100004A34(v19);
  }

  _Unwind_Resume(exception_object);
}

__int128 *sub_1007BC200(void *a1, __int128 *a2, __int128 *a3)
{
  v4 = a2;
  v7 = a1[1];
  v6 = a1[2];
  if (v7 >= v6)
  {
    v8 = *a1;
    v9 = 0xCCCCCCCCCCCCCCCDLL * ((v7 - *a1) >> 8) + 1;
    if (v9 > 0x33333333333333)
    {
      sub_1000CE3D4();
    }

    v10 = a2 - v8;
    v11 = 0xCCCCCCCCCCCCCCCDLL * ((v6 - v8) >> 8);
    v12 = 2 * v11;
    if (2 * v11 <= v9)
    {
      v12 = 0xCCCCCCCCCCCCCCCDLL * ((v7 - *a1) >> 8) + 1;
    }

    if (v11 >= 0x19999999999999)
    {
      v13 = 0x33333333333333;
    }

    else
    {
      v13 = v12;
    }

    v18 = a1;
    if (v13)
    {
      sub_10027B5B4(a1, v13);
    }

    *&v15 = 0;
    *(&v15 + 1) = v10 >> 8 << 8;
    v16 = *(&v15 + 1);
    v17 = 0;
    sub_1007CC600(&v15, a3);
    v4 = sub_1007CC798(a1, &v15, v4);
    sub_100281380(&v15);
  }

  else if (a2 == v7)
  {
    sub_10027B690(a1[1], a3);
    a1[1] = v7 + 80;
  }

  else
  {
    bzero(&v15, 0x500uLL);
    v19 = a1;
    sub_10027B690(&v15, a3);
    sub_1007CC01C(a1, v4, a1[1], (v4 + 80));
    sub_1007CC0DC(v4, &v15);
    sub_1002813D0(&v15);
  }

  return v4;
}

void CellularPlanDeliveryModel::updatePlanStates_sync(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if ((sub_10064A65C(a3) & 1) == 0)
  {
    *(a2 + 1) = a3;
  }

  if (sub_10064A65C(a3))
  {
    *(a2 + 2) = a3;
    goto LABEL_9;
  }

  if (a3 <= 9 && ((1 << a3) & 0x320) != 0)
  {
    v6 = 4;
LABEL_8:
    *(a2 + 2) = v6;
    goto LABEL_9;
  }

  if ((a3 & 0xFE) != 0xC)
  {
    v6 = 1;
    goto LABEL_8;
  }

  *(a2 + 2) = 0;
  if (*(a2 + 1160))
  {
    v8 = *(a2 + 1168);
    *(a2 + 1160) = 0;
    *(a2 + 1168) = 0;
    if (v8)
    {
      sub_100004A34(v8);
    }
  }

LABEL_9:
  if (sub_10064A65C(*(a2 + 1)))
  {
    v7 = *(a1 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_10177E960(a2, a2 + 1, v7);
    }

    *(a2 + 1) = 1;
  }
}

void CellularPlanDeliveryModel::maybeStartDelayProvisioningMonitorMode(void *a1, uint64_t a2)
{
  v3 = *(a2 + 1);
  if (v3 <= 0xC && ((1 << v3) & 0x1801) != 0)
  {
    v5 = a1[5];
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 136315138;
    *&buf[4] = sub_10064A0D0(v3);
    v6 = "#I Not starting monitor mode for plan with state:%s";
    goto LABEL_7;
  }

  v10 = *(a2 + 479);
  v11 = v10;
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a2 + 464);
  }

  if (v10)
  {
    v12 = (a2 + 456);
    if (*(a2 + 1176))
    {
      v5 = a1[5];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *v12;
        if (v11 >= 0)
        {
          v13 = v12;
        }

        *buf = 136315138;
        *&buf[4] = v13;
        v6 = "#I monitor mode (dp) already running for plan with targetIccid:%s";
LABEL_7:
        v7 = v5;
LABEL_8:
        v8 = 12;
LABEL_9:
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v6, buf, v8);
      }
    }

    else
    {
      if (v3 == 9)
      {
        goto LABEL_25;
      }

      v15 = *(a2 + 527);
      if ((v15 & 0x80u) != 0)
      {
        v15 = *(a2 + 512);
      }

      if (v15)
      {
LABEL_25:
        v16 = *(a2 + 1224);
        v17 = a1[5];
        v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
        if (v16 == 1)
        {
          if (v18)
          {
            v19 = *v12;
            if (v11 >= 0)
            {
              v19 = a2 + 456;
            }

            *buf = 136315138;
            *&buf[4] = v19;
            v6 = "#I Monitor mode exhausted for plan with targetIccid: %s";
            v7 = v17;
            goto LABEL_8;
          }
        }

        else
        {
          if (v18)
          {
            v20 = *v12;
            if (v11 >= 0)
            {
              v20 = a2 + 456;
            }

            *buf = 136315138;
            *&buf[4] = v20;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I starting monitor mode for plan with targetIccid:%s", buf, 0xCu);
          }

          v21 = a1[14];
          v22 = a1[3];
          object = v22;
          if (v22)
          {
            dispatch_retain(v22);
          }

          sub_100004AA0(&v36, a1 + 1);
          if (v36)
          {
            v23 = v36 + 64;
          }

          else
          {
            v23 = 0;
          }

          v41 = v23;
          v42 = v37;
          v36 = 0;
          v37 = 0;
          if (*(a2 + 479) < 0)
          {
            sub_100005F2C(__p, *(a2 + 456), *(a2 + 464));
          }

          else
          {
            *__p = *v12;
            v40 = *(a2 + 472);
          }

          (*(*v21 + 976))(buf, v21, &object, a1 + 12, &v41, __p);
          v27 = (a2 + 1176);
          v28 = *buf;
          *buf = 0;
          *&buf[8] = 0;
          v29 = *(a2 + 1184);
          *(a2 + 1176) = v28;
          if (v29)
          {
            sub_100004A34(v29);
            if (*&buf[8])
            {
              sub_100004A34(*&buf[8]);
            }
          }

          if (SHIBYTE(v40) < 0)
          {
            operator delete(__p[0]);
          }

          if (v42)
          {
            sub_100004A34(v42);
          }

          if (v37)
          {
            sub_100004A34(v37);
          }

          if (object)
          {
            dispatch_release(object);
          }

          if (*v27)
          {
            memset(buf, 0, sizeof(buf));
            v30 = a1[14];
            sub_10000501C(&v36, "");
            (*(*v30 + 1000))(buf, v30, 2, a2 + 24, a2 + 48, a2 + 72, a2 + 96, &v36);
            if (v38 < 0)
            {
              operator delete(v36);
            }

            v31 = *v27;
            v34 = 0;
            v35 = 0;
            v33 = 0;
            sub_100645A60(&v33, *buf, *&buf[8], (*&buf[8] - *buf) >> 3);
            (*(*v31 + 16))(v31, &v33);
            if (v33)
            {
              v34 = v33;
              operator delete(v33);
            }

            v32 = (a2 + 1120);
            if ((*(a2 + 1152) & 1) == 0)
            {
              *v32 = 0u;
              *(a2 + 1136) = 0u;
              *(a2 + 1152) = 1;
            }

            *v32 = CFAbsoluteTimeGetCurrent();
            (*(**v27 + 24))();
            if (*buf)
            {
              *&buf[8] = *buf;
              operator delete(*buf);
            }
          }

          else if (os_log_type_enabled(a1[5], OS_LOG_TYPE_ERROR))
          {
            sub_10177EA04();
          }
        }
      }

      else
      {
        v24 = a1[5];
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v25 = sub_10064A0D0(v3);
          if (*(a2 + 479) >= 0)
          {
            v26 = a2 + 456;
          }

          else
          {
            v26 = *(a2 + 456);
          }

          *buf = 136315394;
          *&buf[4] = v25;
          *&buf[12] = 2080;
          *&buf[14] = v26;
          v6 = "#I Not starting monitor mode for plan with empty smdp url with state%s targetIccid:%s";
          v7 = v24;
          v8 = 22;
          goto LABEL_9;
        }
      }
    }
  }

  else
  {
    v14 = a1[5];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v6 = "#I Not starting monitor mode for plan with empty targetIccid";
      v7 = v14;
      v8 = 2;
      goto LABEL_9;
    }
  }
}

void sub_1007BC9C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, std::__shared_weak_count *a25, dispatch_object_t object)
{
  if (a25)
  {
    sub_100004A34(a25);
  }

  if (a13)
  {
    sub_100004A34(a13);
  }

  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

void CellularPlanDeliveryModel::maybeStartRecoveryDelayProvisioningMonitorMode(void *a1, __int128 *a2)
{
  v4 = a1[39];
  v5 = a1[40];
  sub_10027B690(v60, a2);
  if (v4 != v5)
  {
    if ((v62 & 0x80u) == 0)
    {
      v6 = v62;
    }

    else
    {
      v6 = v61[1];
    }

    if ((v62 & 0x80u) == 0)
    {
      v7 = v61;
    }

    else
    {
      v7 = v61[0];
    }

    v8 = v60[17] & (v60[1] != 12);
    v9 = v4 + 54;
    do
    {
      v10 = *(v9 + 23);
      v11 = v10;
      if (v10 < 0)
      {
        v10 = v9[1];
      }

      if (v6 == v10)
      {
        if (v11 >= 0)
        {
          v12 = v9;
        }

        else
        {
          v12 = *v9;
        }

        if ((memcmp(v7, v12, v6) == 0) | v8 & 1)
        {
          v4 = v9 - 54;
          goto LABEL_20;
        }
      }

      else if (v8)
      {
        goto LABEL_20;
      }

      v4 += 160;
      v13 = v9 + 106;
      v9 += 160;
    }

    while (v13 != v5);
    v4 = v5;
  }

LABEL_20:
  sub_1002813D0(v60);
  if (v4 == a1[40])
  {
    v21 = a1[5];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_10177EA6C(a2, v21, v22);
    }

    return;
  }

  if ((*(v4 + 1225) & 1) == 0)
  {
    v23 = a1[5];
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v24 = v4 + 54;
    if (*(v4 + 455) < 0)
    {
      v24 = *v24;
    }

    v25 = v4 + 30;
    if (*(v4 + 263) < 0)
    {
      v25 = *v25;
    }

    *buf = 136315394;
    *&buf[4] = v24;
    *&buf[12] = 2080;
    *&buf[14] = v25;
    v18 = "#I not starting recovery monitor mode for plan with source iccid:(%s) carrier name:(%s)";
    goto LABEL_37;
  }

  if (*(v4 + 1) == 12)
  {
    v14 = a1[5];
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v15 = sub_10064A0D0(12);
    v16 = v4 + 54;
    if (*(v4 + 455) < 0)
    {
      v16 = *v16;
    }

    v17 = v4 + 30;
    if (*(v4 + 263) < 0)
    {
      v17 = *v17;
    }

    *buf = 136315650;
    *&buf[4] = v15;
    *&buf[12] = 2080;
    *&buf[14] = v16;
    *&buf[22] = 2080;
    v59 = v17;
    v18 = "#I Not starting recovery monitor mode for plan with state:(%s) sourceIccid:(%s) carrierName:(%s)";
    v19 = v14;
    v20 = 32;
    goto LABEL_38;
  }

  if (v4[149] && (*(v4 + 17) & 1) == 0)
  {
    v23 = a1[5];
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v32 = v4 + 54;
    if (*(v4 + 455) < 0)
    {
      v32 = *v32;
    }

    v33 = v4 + 30;
    if (*(v4 + 263) < 0)
    {
      v33 = *v33;
    }

    *buf = 136315394;
    *&buf[4] = v32;
    *&buf[12] = 2080;
    *&buf[14] = v33;
    v18 = "#I recovery monitor mode already running for plan with source iccid:(%s) carrier name:(%s)";
LABEL_37:
    v19 = v23;
    v20 = 22;
LABEL_38:
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, v18, buf, v20);
    return;
  }

  v26 = a1[5];
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = v4 + 54;
    if (*(v4 + 455) < 0)
    {
      v27 = *v27;
    }

    v28 = v4 + 30;
    if (*(v4 + 263) < 0)
    {
      v28 = *v28;
    }

    *buf = 136315394;
    *&buf[4] = v27;
    *&buf[12] = 2080;
    *&buf[14] = v28;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I starting recovery monitor mode for plan with source iccid:(%s) carrier name:(%s)", buf, 0x16u);
  }

  v29 = a1[14];
  v30 = a1[3];
  object = v30;
  if (v30)
  {
    dispatch_retain(v30);
  }

  sub_100004AA0(&v49, a1 + 1);
  if (v49)
  {
    v31 = v49 + 64;
  }

  else
  {
    v31 = 0;
  }

  v55 = v31;
  v56 = v50;
  v49 = 0;
  *&v50 = 0;
  if (*(v4 + 263) < 0)
  {
    sub_100005F2C(__p, v4[30], v4[31]);
  }

  else
  {
    *__p = *(v4 + 15);
    v54 = v4[32];
  }

  v34 = a1[15];
  v51 = a1[14];
  v52 = v34;
  if (v34)
  {
    atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v29 + 984))(buf, v29, &object, a1 + 12, &v55, __p, a1 + 26, &v51);
  v35 = (v4 + 149);
  v36 = *buf;
  *buf = 0;
  *&buf[8] = 0;
  v37 = v4[150];
  *(v4 + 149) = v36;
  if (v37)
  {
    sub_100004A34(v37);
    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }
  }

  if (v52)
  {
    sub_100004A34(v52);
  }

  if (SHIBYTE(v54) < 0)
  {
    operator delete(__p[0]);
  }

  if (v56)
  {
    sub_100004A34(v56);
  }

  if (v50)
  {
    sub_100004A34(v50);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (*v35)
  {
    memset(buf, 0, sizeof(buf));
    if (*(v4 + 17) == 1)
    {
      v38 = a1[14];
      sub_10000501C(v47, "");
      (*(*v38 + 1072))(&v49, v38, v4 + 3, v4 + 6, v4 + 9, v4 + 12, v47);
      if (*buf)
      {
        *&buf[8] = *buf;
        operator delete(*buf);
      }

      v39 = v49;
      *buf = v49;
      v40 = v50;
      *&buf[8] = v50;
      v50 = 0uLL;
      v49 = 0;
      if (v48 < 0)
      {
        operator delete(v47[0]);
        v39 = *buf;
        v41 = *&buf[8];
      }

      else
      {
        v41 = v40;
      }

      if (v39 != v41)
      {
        goto LABEL_90;
      }

      v42 = &qword_101FBABD0;
    }

    else
    {
      v42 = &qword_101FBABB8;
    }

    sub_1000D0394(buf, *v42, v42[1], (v42[1] - *v42) >> 3);
LABEL_90:
    v43 = *v35;
    v45 = 0;
    v46 = 0;
    v44 = 0;
    sub_100645A60(&v44, *buf, *&buf[8], (*&buf[8] - *buf) >> 3);
    (*(*v43 + 16))(v43, &v44);
    if (v44)
    {
      v45 = v44;
      operator delete(v44);
    }

    if ((v4[144] & 1) == 0)
    {
      *(v4 + 71) = 0u;
      *(v4 + 70) = 0u;
      *(v4 + 1152) = 1;
    }

    *(v4 + 141) = CFAbsoluteTimeGetCurrent();
    (*(*v4[149] + 24))(v4[149]);
    if (*buf)
    {
      *&buf[8] = *buf;
      operator delete(*buf);
    }

    return;
  }

  if (os_log_type_enabled(a1[5], OS_LOG_TYPE_ERROR))
  {
    sub_10177EA38();
  }
}

void sub_1007BD0BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, dispatch_object_t object, void *a33, uint64_t a34)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a33)
  {
    operator delete(a33);
  }

  _Unwind_Resume(exception_object);
}

void CellularPlanDeliveryModel::maybeStartRetryTransferMonitorMode(void *a1, uint64_t a2)
{
  v5 = a1[39];
  v4 = a1[40];
  sub_10027B690(v56, a2);
  if (v5 == v4)
  {
    v4 = v5;
  }

  else
  {
    if ((v58 & 0x80u) == 0)
    {
      v6 = v58;
    }

    else
    {
      v6 = v57[1];
    }

    if ((v58 & 0x80u) == 0)
    {
      v7 = v57;
    }

    else
    {
      v7 = v57[0];
    }

    v8 = v5 + 432;
    while (1)
    {
      v9 = *(v8 + 23);
      v10 = v9;
      if ((v9 & 0x80u) != 0)
      {
        v9 = *(v8 + 8);
      }

      if (v6 == v9)
      {
        v11 = v10 >= 0 ? v8 : *v8;
        if (!memcmp(v7, v11, v6))
        {
          break;
        }
      }

      v12 = v8 + 848;
      v8 += 1280;
      if (v12 == v4)
      {
        goto LABEL_20;
      }
    }

    v4 = v8 - 432;
  }

LABEL_20:
  sub_1002813D0(v56);
  if (v4 == a1[40])
  {
    if (os_log_type_enabled(a1[5], OS_LOG_TYPE_ERROR))
    {
      sub_10177EB44();
    }

    return;
  }

  if (*(v4 + 1) == 12)
  {
    v13 = a1[5];
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v14 = sub_10064A0D0(12);
    v15 = (v4 + 432);
    if (*(v4 + 455) < 0)
    {
      v15 = *v15;
    }

    *buf = 136315394;
    *&buf[4] = v14;
    *&buf[12] = 2080;
    *&buf[14] = v15;
    v16 = "#I Not starting retry monitor mode for plan with state:%s sourceIccid: %s";
    v17 = v13;
    v18 = 22;
    goto LABEL_40;
  }

  if ((*(v4 + 16) & 1) == 0)
  {
    v19 = a1[5];
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v21 = (v4 + 432);
    if (*(v4 + 455) < 0)
    {
      v21 = *v21;
    }

    *buf = 136315138;
    *&buf[4] = v21;
    v16 = "#I Not starting retry monitor mode for plan which is not deleted on source for sourceIccid:%s";
    goto LABEL_38;
  }

  if (*(v4 + 1208))
  {
    v19 = a1[5];
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v20 = (v4 + 432);
    if (*(v4 + 455) < 0)
    {
      v20 = *v20;
    }

    *buf = 136315138;
    *&buf[4] = v20;
    v16 = "#I Retry transfer monitor mode already running for plan with sourceIccid:%s";
    goto LABEL_38;
  }

  v22 = *(v4 + 335);
  if (v22 < 0)
  {
    if (!*(v4 + 320))
    {
      goto LABEL_54;
    }
  }

  else if (!*(v4 + 335))
  {
    goto LABEL_54;
  }

  v23 = *(v4 + 407);
  if (v23 < 0)
  {
    v23 = *(v4 + 392);
  }

  if (!v23)
  {
LABEL_54:
    v25 = a1[5];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = (v4 + 312);
      if ((v22 & 0x80000000) != 0)
      {
        v26 = *v26;
      }

      v27 = (v4 + 384);
      if (*(v4 + 407) < 0)
      {
        v27 = *v27;
      }

      v28 = (v4 + 432);
      if (*(v4 + 455) < 0)
      {
        v28 = *v28;
      }

      *buf = 136315650;
      *&buf[4] = v26;
      *&buf[12] = 2080;
      *&buf[14] = v27;
      *&buf[22] = 2080;
      v55 = v28;
      v16 = "#I Not starting retry monitor mode for plan with transfer token:%s, imsi:%s and sourceIccid:%s";
      v17 = v25;
      v18 = 32;
      goto LABEL_40;
    }

    return;
  }

  if (*(v4 + 1226) == 1)
  {
    v19 = a1[5];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v24 = a2 + 432;
      if (*(a2 + 455) < 0)
      {
        v24 = *(a2 + 432);
      }

      *buf = 136315138;
      *&buf[4] = v24;
      v16 = "#I Retry Monitor mode exhausted for plan with sourceIccid: %s";
LABEL_38:
      v17 = v19;
LABEL_39:
      v18 = 12;
LABEL_40:
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, v16, buf, v18);
    }
  }

  else
  {
    v29 = *(v4 + 479);
    if (v29 < 0)
    {
      v30 = *(v4 + 464);
    }

    else
    {
      v30 = *(v4 + 479);
    }

    v31 = a1[5];
    v32 = os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);
    if (v30)
    {
      if (v32)
      {
        v33 = (v4 + 456);
        if ((v29 & 0x80000000) != 0)
        {
          v33 = *v33;
        }

        *buf = 136315138;
        *&buf[4] = v33;
        v16 = "#I Not starting retry monitor mode for plan with targetIccid:%s";
        v17 = v31;
        goto LABEL_39;
      }
    }

    else
    {
      if (v32)
      {
        v34 = (v4 + 432);
        if (*(v4 + 455) < 0)
        {
          v34 = *v34;
        }

        *buf = 136315138;
        *&buf[4] = v34;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#I starting retry transfer monitor mode for plan with sourceIccid:%s", buf, 0xCu);
      }

      *(v4 + 1) = 11;
      v35 = a1[14];
      v36 = a1[3];
      object = v36;
      if (v36)
      {
        dispatch_retain(v36);
      }

      sub_100004AA0(&v46, a1 + 1);
      if (v46)
      {
        v37 = v46 + 72;
      }

      else
      {
        v37 = 0;
      }

      v51 = v37;
      v52 = v47;
      v46 = 0;
      v47 = 0;
      if (*(v4 + 455) < 0)
      {
        sub_100005F2C(__p, *(v4 + 432), *(v4 + 440));
      }

      else
      {
        *__p = *(v4 + 432);
        v50 = *(v4 + 448);
      }

      (*(*v35 + 992))(buf, v35, &object, a1 + 12, &v51, __p);
      v38 = (v4 + 1208);
      v39 = *buf;
      *buf = 0;
      *&buf[8] = 0;
      v40 = *(v4 + 1216);
      *(v4 + 1208) = v39;
      if (v40)
      {
        sub_100004A34(v40);
        if (*&buf[8])
        {
          sub_100004A34(*&buf[8]);
        }
      }

      if (SHIBYTE(v50) < 0)
      {
        operator delete(__p[0]);
      }

      if (v52)
      {
        sub_100004A34(v52);
      }

      if (v47)
      {
        sub_100004A34(v47);
      }

      if (object)
      {
        dispatch_release(object);
      }

      if (*v38)
      {
        memset(buf, 0, sizeof(buf));
        v41 = a1[14];
        sub_10000501C(&v46, "");
        (*(*v41 + 1000))(buf, v41, 4, v4 + 24, v4 + 48, v4 + 72, v4 + 96, &v46);
        if (v48 < 0)
        {
          operator delete(v46);
        }

        v42 = *v38;
        v44 = 0;
        v45 = 0;
        v43 = 0;
        sub_100645A60(&v43, *buf, *&buf[8], (*&buf[8] - *buf) >> 3);
        (*(*v42 + 16))(v42, &v43);
        if (v43)
        {
          v44 = v43;
          operator delete(v43);
        }

        if ((*(v4 + 1152) & 1) == 0)
        {
          *(v4 + 1136) = 0u;
          *(v4 + 1120) = 0u;
          *(v4 + 1152) = 1;
        }

        *(v4 + 1136) = CFAbsoluteTimeGetCurrent();
        (*(**(v4 + 1208) + 24))(*(v4 + 1208));
        if (*buf)
        {
          *&buf[8] = *buf;
          operator delete(*buf);
        }
      }

      else if (os_log_type_enabled(a1[5], OS_LOG_TYPE_ERROR))
      {
        sub_10177EB10();
      }
    }
  }
}

void sub_1007BD7E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, std::__shared_weak_count *a25, dispatch_object_t object, void *a27, uint64_t a28)
{
  if (a25)
  {
    sub_100004A34(a25);
  }

  if (a13)
  {
    sub_100004A34(a13);
  }

  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

void CellularPlanDeliveryModel::notifyPlansUpdate(CellularPlanDeliveryModel *this)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, this + 1);
  operator new();
}

void CellularPlanDeliveryModel::appendPurchaseIccidPlan(CellularPlanDeliveryModel *a1, std::string *__str, int a3, const std::string *a4, char a5)
{
  v11 = *(a1 + 39);
  v10 = *(a1 + 40);
  if (SHIBYTE(__str->__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100005F2C(&__p, __str->__r_.__value_.__l.__data_, __str->__r_.__value_.__l.__size_);
  }

  else
  {
    __p = *__str;
  }

  v12 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if (v11 == v10)
  {
    v10 = v11;
LABEL_22:
    if (v12 < 0)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v15 = v11 + 456;
    while (1)
    {
      v16 = v15[23];
      v17 = v16;
      if ((v16 & 0x80u) != 0)
      {
        v16 = *(v15 + 1);
      }

      if (size == v16)
      {
        v18 = v17 >= 0 ? v15 : *v15;
        if (!memcmp(p_p, v18, size))
        {
          break;
        }
      }

      v19 = (v15 + 824);
      v15 += 1280;
      if (v19 == v10)
      {
        goto LABEL_22;
      }
    }

    v10 = (v15 - 456);
    if (v12 < 0)
    {
LABEL_23:
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (v10 == *(a1 + 40))
  {
    v10 = sub_1007BDB1C(a1 + 39, v10);
  }

  std::string::operator=(v10 + 19, __str);
  sub_10092CDF4(__str, &v20);
  if (*(v10 + 503) < 0)
  {
    operator delete(*(v10 + 60));
  }

  v10[30] = v20;
  *(v10 + 62) = v21;
  std::string::operator=(v10 + 10, a4);
  *(v10 + 984) = a5;
  if ((a3 - 4) > 0xFFFFFFFD)
  {
    *(v10 + 1) = 1033;
    CellularPlanDeliveryModel::startPurchasePlanReleaseWaitTimer(a1, v10, 0x18u, 0);
    CellularPlanDeliveryModel::handleDumpState_sync(a1);
    CellularPlanDeliveryModel::notifyPlansUpdate(a1);
  }

  CellularPlanDeliveryModel::handleDumpState_sync(a1);
}

__int128 *sub_1007BDB1C(uint64_t *a1, __int128 *a2)
{
  v2 = a2;
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v6 = *a1;
    v7 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *a1) >> 8) + 1;
    if (v7 > 0x33333333333333)
    {
      sub_1000CE3D4();
    }

    v8 = a2 - v6;
    v9 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - v6) >> 8);
    v10 = 2 * v9;
    if (2 * v9 <= v7)
    {
      v10 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *a1) >> 8) + 1;
    }

    if (v9 >= 0x19999999999999)
    {
      v11 = 0x33333333333333;
    }

    else
    {
      v11 = v10;
    }

    v16 = a1;
    if (v11)
    {
      sub_10027B5B4(a1, v11);
    }

    *&v13 = 0;
    *(&v13 + 1) = v8 >> 8 << 8;
    v14 = *(&v13 + 1);
    v15 = 0;
    sub_1007CC854(&v13);
    v2 = sub_1007CC798(a1, &v13, v2);
    sub_100281380(&v13);
  }

  else if (a2 == v5)
  {
    bzero(a1[1], 0x500uLL);
    a1[1] = v5 + 1280;
  }

  else
  {
    v17 = a1;
    bzero(&v13, 0x500uLL);
    sub_1007CC01C(a1, v2, v5, (v2 + 80));
    sub_1007CC0DC(v2, &v13);
    sub_1002813D0(&v13);
  }

  return v2;
}

void CellularPlanDeliveryModel::startPurchasePlanReleaseWaitTimer(uint64_t a1, uint64_t a2, unsigned int a3, char a4)
{
  if (*(a2 + 1160))
  {
    v5 = *(a1 + 40);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Profile release timer running", &buf, 2u);
    }
  }

  else
  {
    v29 = 0;
    v30 = 0;
    (***(a1 + 112))(&buf);
    Registry::getTimerService(&v29, buf);
    if (*(&buf + 1))
    {
      sub_100004A34(*(&buf + 1));
    }

    if (v29)
    {
      buf = 0uLL;
      v28 = 0;
      if (*(a2 + 503) < 0)
      {
        sub_100005F2C(&buf, *(a2 + 480), *(a2 + 488));
      }

      else
      {
        buf = *(a2 + 480);
        v28 = *(a2 + 496);
      }

      __dst = 0uLL;
      v26 = 0;
      if (*(a2 + 263) < 0)
      {
        sub_100005F2C(&__dst, *(a2 + 240), *(a2 + 248));
      }

      else
      {
        __dst = *(a2 + 240);
        v26 = *(a2 + 256);
      }

      sub_100004AA0(&v31, (a1 + 8));
      v10 = v31;
      v9 = v32;
      if (v32)
      {
        atomic_fetch_add_explicit(&v32->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v9);
      }

      v11 = v29;
      sub_10000501C(__p, "Pending profile release wait timer");
      v12 = *(a1 + 24);
      object = v12;
      if (v12)
      {
        dispatch_retain(v12);
      }

      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1174405120;
      aBlock[2] = sub_1007C600C;
      aBlock[3] = &unk_101E7F000;
      aBlock[4] = a1;
      aBlock[5] = v10;
      v15 = v9;
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      if (SHIBYTE(v28) < 0)
      {
        sub_100005F2C(&v16, buf, *(&buf + 1));
      }

      else
      {
        v16 = buf;
        v17 = v28;
      }

      if (SHIBYTE(v26) < 0)
      {
        sub_100005F2C(&v18, __dst, *(&__dst + 1));
      }

      else
      {
        v18 = __dst;
        v19 = v26;
      }

      v20 = a4;
      v21 = _Block_copy(aBlock);
      sub_100D23364(v11, __p, 0, 60000000 * a3, &object, &v21);
      sub_10039C50C((a2 + 1160), &v31);
      v13 = v31;
      v31 = 0;
      if (v13)
      {
        (*(*v13 + 8))(v13);
      }

      if (v21)
      {
        _Block_release(v21);
      }

      if (object)
      {
        dispatch_release(object);
      }

      if (v24 < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v19) < 0)
      {
        operator delete(v18);
      }

      if (SHIBYTE(v17) < 0)
      {
        operator delete(v16);
      }

      if (v15)
      {
        std::__shared_weak_count::__release_weak(v15);
      }

      if (v9)
      {
        std::__shared_weak_count::__release_weak(v9);
      }

      if (SHIBYTE(v26) < 0)
      {
        operator delete(__dst);
      }

      if (SHIBYTE(v28) < 0)
      {
        operator delete(buf);
      }
    }

    else if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_10177EBBC();
    }

    if (v30)
    {
      sub_100004A34(v30);
    }
  }
}

void sub_1007BE02C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *aBlock, dispatch_object_t object, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_weak(a16);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (v43)
  {
    std::__shared_weak_count::__release_weak(v43);
  }

  if (a43 < 0)
  {
    operator delete(a38);
  }

  if (*(v44 - 121) < 0)
  {
    operator delete(*(v44 - 144));
  }

  v46 = *(v44 - 104);
  if (v46)
  {
    sub_100004A34(v46);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007BE118()
{
  if (!*(v0 - 136))
  {
    JUMPOUT(0x1007BE110);
  }

  JUMPOUT(0x1007BE10CLL);
}

void CellularPlanDeliveryModel::appendPendingPlanWithExpectedIccid(CellularPlanDeliveryModel *a1, uint64_t a2)
{
  v4 = *(a1 + 39);
  v5 = *(a1 + 40);
  sub_10027B690(v19, a2);
  if (v4 != v5)
  {
    if ((v21 & 0x80u) == 0)
    {
      v6 = v21;
    }

    else
    {
      v6 = v20[1];
    }

    if ((v21 & 0x80u) == 0)
    {
      v7 = v20;
    }

    else
    {
      v7 = v20[0];
    }

    if ((v23 & 0x80u) == 0)
    {
      v8 = v23;
    }

    else
    {
      v8 = v22[1];
    }

    if ((v23 & 0x80u) == 0)
    {
      v9 = v22;
    }

    else
    {
      v9 = v22[0];
    }

    do
    {
      v10 = *(v4 + 479);
      v11 = v10;
      if ((v10 & 0x80u) != 0)
      {
        v10 = *(v4 + 58);
      }

      if (v6 == v10)
      {
        v12 = v11 >= 0 ? v4 + 456 : *(v4 + 57);
        if (!memcmp(v7, v12, v6))
        {
          goto LABEL_30;
        }
      }

      v13 = *(v4 + 503);
      v14 = v13;
      if ((v13 & 0x80u) != 0)
      {
        v13 = *(v4 + 61);
      }

      if (v8 == v13)
      {
        v15 = v14 >= 0 ? v4 + 30 : *(v4 + 60);
        if (!memcmp(v9, v15, v8))
        {
          goto LABEL_30;
        }
      }

      v4 += 80;
    }

    while (v4 != v5);
    v4 = v5;
  }

LABEL_30:
  sub_1002813D0(v19);
  if (v4 == *(a1 + 40))
  {
    v4 = sub_1007BE304(a1 + 39, v4, a2);
  }

  v16 = *(a2 + 479);
  if ((v16 & 0x80u) != 0)
  {
    v16 = *(a2 + 464);
  }

  if (v16)
  {
    sub_10092CDF4(a2 + 456, &v17);
    if (*(v4 + 503) < 0)
    {
      operator delete(*(v4 + 60));
    }

    v4[30] = v17;
    *(v4 + 62) = v18;
    CellularPlanDeliveryModel::maybeStartDelayProvisioningMonitorMode(a1, v4);
  }

  CellularPlanDeliveryModel::handleDumpState_sync(a1);
  CellularPlanDeliveryModel::notifyPlansUpdate(a1);
}