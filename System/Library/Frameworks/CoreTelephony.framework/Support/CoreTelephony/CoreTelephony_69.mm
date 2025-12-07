void sub_1004654F0(uint64_t a1)
{
  if (*(a1 + 96) == 1)
  {
    if (*(a1 + 88) == 1 && *(a1 + 87) < 0)
    {
      operator delete(*(a1 + 64));
    }

    if (*(a1 + 63) < 0)
    {
      operator delete(*(a1 + 40));
    }

    *(a1 + 96) = 0;
  }
}

_BYTE *sub_100465550(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = a2[1];
  *(a1 + 32) = *(a2 + 16);
  *a1 = v4;
  *(a1 + 16) = v5;
  if (*(a2 + 63) < 0)
  {
    sub_100005F2C((a1 + 40), *(a2 + 5), *(a2 + 6));
  }

  else
  {
    v6 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 7);
    *(a1 + 40) = v6;
  }

  result = sub_10006F264((a1 + 64), a2 + 4);
  *(a1 + 96) = 1;
  return result;
}

void sub_1004655C0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004655DC(uint64_t a1)
{
  if (*(a1 + 88) == 1 && *(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  return a1;
}

__n128 sub_10046562C(char *__dst, std::string *__str)
{
  if (__dst[40] == __str[1].__r_.__value_.__s.__data_[16])
  {
    if (__dst[40])
    {
      std::string::operator=(__dst, __str);
      result = *&__str[1].__r_.__value_.__l.__data_;
      *(__dst + 24) = result;
    }
  }

  else if (__dst[40])
  {
    if (__dst[23] < 0)
    {
      operator delete(*__dst);
    }

    __dst[40] = 0;
  }

  else
  {
    if (SHIBYTE(__str->__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(__dst, __str->__r_.__value_.__l.__data_, __str->__r_.__value_.__l.__size_);
    }

    else
    {
      v5 = *&__str->__r_.__value_.__l.__data_;
      *(__dst + 2) = *(&__str->__r_.__value_.__l + 2);
      *__dst = v5;
    }

    result = *&__str[1].__r_.__value_.__l.__data_;
    *(__dst + 24) = result;
    __dst[40] = 1;
  }

  return result;
}

uint64_t sub_1004656D0(uint64_t a1)
{
  if (*(a1 + 96) == 1)
  {
    if (*(a1 + 88) == 1 && *(a1 + 87) < 0)
    {
      operator delete(*(a1 + 64));
    }

    if (*(a1 + 63) < 0)
    {
      operator delete(*(a1 + 40));
    }
  }

  return a1;
}

uint64_t sub_10046572C(uint64_t a1)
{
  if (*(a1 + 136) == 1)
  {
    if (*(a1 + 119) < 0)
    {
      operator delete(*(a1 + 96));
    }

    if (*(a1 + 95) < 0)
    {
      operator delete(*(a1 + 72));
    }

    if (*(a1 + 71) < 0)
    {
      operator delete(*(a1 + 48));
    }

    if (*(a1 + 47) < 0)
    {
      operator delete(*(a1 + 24));
    }
  }

  return a1;
}

uint64_t sub_10046579C(uint64_t a1)
{
  if (*(a1 + 88) == 1)
  {
    if (*(a1 + 71) < 0)
    {
      operator delete(*(a1 + 48));
    }

    if (*(a1 + 47) < 0)
    {
      operator delete(*(a1 + 24));
    }

    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }
  }

  return a1;
}

uint64_t sub_1004657FC(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  sub_1004658C4((a1 + 24), a2 + 24);
  sub_100465924((a1 + 120), a2 + 120);
  sub_10046598C((a1 + 264), a2 + 264);
  sub_1004659EC((a1 + 368), a2 + 23);
  sub_10006F264((a1 + 416), a2 + 26);
  return a1;
}

void sub_10046586C(_Unwind_Exception *a1)
{
  if (*(v1 + 408) == 1 && *(v1 + 391) < 0)
  {
    operator delete(*(v1 + 368));
  }

  sub_1004656D0(v1 + 264);
  sub_10046572C(v1 + 120);
  sub_10046579C(v1 + 24);
  _Unwind_Resume(a1);
}

char *sub_1004658C4(char *__dst, uint64_t a2)
{
  *__dst = 0;
  __dst[88] = 0;
  if (*(a2 + 88) == 1)
  {
    sub_10046508C(__dst, a2);
  }

  return __dst;
}

void sub_100465904(_Unwind_Exception *exception_object)
{
  if (*(v1 + 88) == 1)
  {
    sub_1000CFBA0(v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_100465924(_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[136] = 0;
  if (*(a2 + 136) == 1)
  {
    sub_100465308(a1, a2);
    a1[136] = 1;
  }

  return a1;
}

void sub_10046596C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 136) == 1)
  {
    sub_1004652A4(v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_10046598C(_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[96] = 0;
  if (*(a2 + 96) == 1)
  {
    sub_100465550(a1, a2);
  }

  return a1;
}

void sub_1004659CC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 96) == 1)
  {
    sub_1004655DC(v1);
  }

  _Unwind_Resume(exception_object);
}

char *sub_1004659EC(char *__dst, __int128 *a2)
{
  *__dst = 0;
  __dst[40] = 0;
  if (*(a2 + 40) == 1)
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

    *(__dst + 24) = *(a2 + 24);
    __dst[40] = 1;
  }

  return __dst;
}

void sub_100465A60(_Unwind_Exception *exception_object)
{
  if (*(v1 + 40) == 1)
  {
    sub_1017633D8(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100465A80(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 56) == *(a2 + 56))
  {
    if (*(a1 + 56))
    {
      v3 = *a2;
      *(a1 + 11) = *(a2 + 11);
      *a1 = v3;
      if (a1 != a2)
      {
        v4 = (a1 + 32);
        v5 = a2 + 5;
        v6 = *(a2 + 4);

        sub_1001730B8(v4, v6, v5);
      }
    }
  }

  else if (*(a1 + 56))
  {
    sub_100009970(a1 + 32, *(a1 + 40));
    *(a1 + 56) = 0;
  }

  else
  {
    v7 = *a2;
    *(a1 + 11) = *(a2 + 11);
    *a1 = v7;
    sub_100074920((a1 + 32), a2 + 32);
    *(a1 + 56) = 1;
  }
}

__n128 sub_100465B34(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32) == *(a2 + 32))
  {
    if (*(a1 + 32))
    {
      *a1 = *a2;
      if (*(a1 + 31) < 0)
      {
        operator delete(*(a1 + 8));
      }

      result = *(a2 + 8);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 8) = result;
      *(a2 + 31) = 0;
      *(a2 + 8) = 0;
    }
  }

  else if (*(a1 + 32))
  {
    if (*(a1 + 31) < 0)
    {
      operator delete(*(a1 + 8));
    }

    *(a1 + 32) = 0;
  }

  else
  {
    *a1 = *a2;
    result = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = result;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 8) = 0;
    *(a1 + 32) = 1;
  }

  return result;
}

void sub_100465BE4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48) == *(a2 + 48))
  {
    if (*(a1 + 48))
    {
      sub_100173768(a1, a2);
      sub_100464668((a1 + 24));
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 40) = *(a2 + 40);
      *(a2 + 24) = 0;
      *(a2 + 32) = 0;
      *(a2 + 40) = 0;
    }
  }

  else if (*(a1 + 48))
  {

    sub_100464494(a1);
  }

  else
  {
    sub_100465C84(a1, a2);
    *(a1 + 48) = 1;
  }
}

__n128 sub_100465C84(void *a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = (a2 + 8);
  v3 = *(a2 + 8);
  a1[1] = v3;
  v4 = a1 + 1;
  v5 = *(a2 + 16);
  a1[2] = v5;
  if (v5)
  {
    *(v3 + 16) = v4;
    *a2 = v2;
    *v2 = 0;
    *(a2 + 16) = 0;
  }

  else
  {
    *a1 = v4;
  }

  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  result = *(a2 + 24);
  *(a1 + 3) = result;
  a1[5] = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  return result;
}

double sub_100465CE0(uint64_t result, uint64_t a2)
{
  if (*(result + 528) == *(a2 + 528))
  {
    if (*(result + 528))
    {

      sub_100465D38(result, a2);
    }
  }

  else if (*(result + 528))
  {
    *(sub_10038E7C0(result) + 528) = 0;
  }

  else
  {

    *&v3 = sub_100466058(result, a2).n128_u64[0];
  }

  return v3;
}

uint64_t sub_100465D38(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 23) = 0;
  *a2 = 0;
  sub_10016A270(a1 + 24, (a2 + 24));
  sub_100173768((a1 + 56), a2 + 7);
  sub_100173768((a1 + 80), a2 + 10);
  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  v5 = *(a2 + 104);
  *(a1 + 120) = *(a2 + 15);
  *(a1 + 104) = v5;
  *(a2 + 127) = 0;
  *(a2 + 104) = 0;
  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  v6 = a2[8];
  *(a1 + 144) = *(a2 + 18);
  *(a1 + 128) = v6;
  *(a2 + 151) = 0;
  *(a2 + 128) = 0;
  v7 = *(a2 + 21);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 168) = v7;
  if (*(a1 + 199) < 0)
  {
    operator delete(*(a1 + 176));
  }

  v8 = a2[11];
  *(a1 + 192) = *(a2 + 24);
  *(a1 + 176) = v8;
  *(a2 + 199) = 0;
  *(a2 + 176) = 0;
  if (*(a1 + 223) < 0)
  {
    operator delete(*(a1 + 200));
  }

  v9 = *(a2 + 200);
  *(a1 + 216) = *(a2 + 27);
  *(a1 + 200) = v9;
  *(a2 + 223) = 0;
  *(a2 + 200) = 0;
  if (*(a1 + 247) < 0)
  {
    operator delete(*(a1 + 224));
  }

  v10 = a2[14];
  *(a1 + 240) = *(a2 + 30);
  *(a1 + 224) = v10;
  *(a2 + 247) = 0;
  *(a2 + 224) = 0;
  if (*(a1 + 271) < 0)
  {
    operator delete(*(a1 + 248));
  }

  v11 = *(a2 + 248);
  *(a1 + 264) = *(a2 + 33);
  *(a1 + 248) = v11;
  *(a2 + 271) = 0;
  *(a2 + 248) = 0;
  if (*(a1 + 295) < 0)
  {
    operator delete(*(a1 + 272));
  }

  v12 = a2[17];
  *(a1 + 288) = *(a2 + 36);
  *(a1 + 272) = v12;
  *(a2 + 295) = 0;
  *(a2 + 272) = 0;
  v13 = (a1 + 296);
  if (*(a1 + 319) < 0)
  {
    operator delete(*v13);
  }

  v14 = *(a2 + 296);
  *(a1 + 312) = *(a2 + 39);
  *v13 = v14;
  *(a2 + 319) = 0;
  *(a2 + 296) = 0;
  if (*(a1 + 343) < 0)
  {
    operator delete(*(a1 + 320));
  }

  v15 = a2[20];
  *(a1 + 336) = *(a2 + 42);
  *(a1 + 320) = v15;
  *(a2 + 343) = 0;
  *(a2 + 320) = 0;
  v16 = (a1 + 344);
  if (*(a1 + 367) < 0)
  {
    operator delete(*v16);
  }

  v17 = *(a2 + 344);
  *(a1 + 360) = *(a2 + 45);
  *v16 = v17;
  *(a2 + 367) = 0;
  *(a2 + 344) = 0;
  if (*(a1 + 391) < 0)
  {
    operator delete(*(a1 + 368));
  }

  v18 = a2[23];
  *(a1 + 384) = *(a2 + 48);
  *(a1 + 368) = v18;
  *(a2 + 391) = 0;
  *(a2 + 368) = 0;
  v19 = (a1 + 392);
  if (*(a1 + 415) < 0)
  {
    operator delete(*v19);
  }

  v20 = *(a2 + 392);
  *(a1 + 408) = *(a2 + 51);
  *v19 = v20;
  *(a2 + 415) = 0;
  *(a2 + 392) = 0;
  if (*(a1 + 439) < 0)
  {
    operator delete(*(a1 + 416));
  }

  v21 = a2[26];
  *(a1 + 432) = *(a2 + 54);
  *(a1 + 416) = v21;
  *(a2 + 439) = 0;
  *(a2 + 416) = 0;
  v22 = (a1 + 440);
  if (*(a1 + 463) < 0)
  {
    operator delete(*v22);
  }

  v23 = *(a2 + 440);
  *(a1 + 456) = *(a2 + 57);
  *v22 = v23;
  *(a2 + 463) = 0;
  *(a2 + 440) = 0;
  if (*(a1 + 487) < 0)
  {
    operator delete(*(a1 + 464));
  }

  v24 = a2[29];
  *(a1 + 480) = *(a2 + 60);
  *(a1 + 464) = v24;
  *(a2 + 487) = 0;
  *(a2 + 464) = 0;
  v25 = *(a2 + 488);
  v26 = *(a2 + 504);
  *(a1 + 520) = *(a2 + 260);
  *(a1 + 488) = v25;
  *(a1 + 504) = v26;
  return a1;
}

__n128 sub_100466058(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v2;
  *(a2 + 8) = 0uLL;
  *a2 = 0;
  *(a1 + 24) = 0;
  *(a1 + 48) = 0;
  if (*(a2 + 48) == 1)
  {
    v3 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 5);
    *(a1 + 24) = v3;
    a2[2] = 0uLL;
    *(a2 + 3) = 0;
    *(a1 + 48) = 1;
  }

  *(a1 + 56) = *(a2 + 7);
  v4 = a2 + 4;
  v5 = *(a2 + 8);
  *(a1 + 64) = v5;
  v6 = a1 + 64;
  v7 = *(a2 + 9);
  *(a1 + 72) = v7;
  if (v7)
  {
    *(v5 + 16) = v6;
    *(a2 + 7) = v4;
    *v4 = 0;
    *(a2 + 9) = 0;
  }

  else
  {
    *(a1 + 56) = v6;
  }

  *(a1 + 80) = *(a2 + 10);
  v8 = a2 + 11;
  v9 = *(a2 + 11);
  *(a1 + 88) = v9;
  v10 = a1 + 88;
  v11 = *(a2 + 12);
  *(a1 + 96) = v11;
  if (v11)
  {
    *(v9 + 16) = v10;
    *(a2 + 10) = v8;
    *v8 = 0;
    *(a2 + 12) = 0;
  }

  else
  {
    *(a1 + 80) = v10;
  }

  v12 = *(a2 + 104);
  *(a1 + 120) = *(a2 + 15);
  *(a1 + 104) = v12;
  a2[7] = 0uLL;
  *(a2 + 13) = 0;
  v13 = a2[8];
  *(a1 + 144) = *(a2 + 18);
  *(a1 + 128) = v13;
  *(a2 + 136) = 0uLL;
  *(a2 + 16) = 0;
  v14 = *(a2 + 152);
  *(a1 + 168) = *(a2 + 21);
  *(a1 + 152) = v14;
  v15 = a2[11];
  *(a1 + 192) = *(a2 + 24);
  *(a1 + 176) = v15;
  a2[11] = 0uLL;
  *(a2 + 24) = 0;
  v16 = *(a2 + 200);
  *(a1 + 216) = *(a2 + 27);
  *(a1 + 200) = v16;
  *(a2 + 200) = 0uLL;
  *(a2 + 27) = 0;
  v17 = a2[14];
  *(a1 + 240) = *(a2 + 30);
  *(a1 + 224) = v17;
  a2[14] = 0uLL;
  *(a2 + 30) = 0;
  v18 = *(a2 + 248);
  *(a1 + 264) = *(a2 + 33);
  *(a1 + 248) = v18;
  *(a2 + 248) = 0uLL;
  *(a2 + 33) = 0;
  v19 = a2[17];
  *(a1 + 288) = *(a2 + 36);
  *(a1 + 272) = v19;
  a2[17] = 0uLL;
  *(a2 + 36) = 0;
  v20 = *(a2 + 296);
  *(a1 + 312) = *(a2 + 39);
  *(a1 + 296) = v20;
  *(a2 + 296) = 0uLL;
  *(a2 + 39) = 0;
  v21 = a2[20];
  *(a1 + 336) = *(a2 + 42);
  *(a1 + 320) = v21;
  a2[20] = 0uLL;
  *(a2 + 42) = 0;
  v22 = *(a2 + 344);
  *(a1 + 360) = *(a2 + 45);
  *(a1 + 344) = v22;
  *(a2 + 344) = 0uLL;
  *(a2 + 45) = 0;
  v23 = a2[23];
  *(a1 + 384) = *(a2 + 48);
  *(a1 + 368) = v23;
  a2[23] = 0uLL;
  *(a2 + 48) = 0;
  v24 = *(a2 + 392);
  *(a1 + 408) = *(a2 + 51);
  *(a1 + 392) = v24;
  *(a2 + 392) = 0uLL;
  *(a2 + 51) = 0;
  v25 = a2[26];
  *(a1 + 432) = *(a2 + 54);
  *(a1 + 416) = v25;
  a2[26] = 0uLL;
  *(a2 + 54) = 0;
  v26 = *(a2 + 440);
  *(a1 + 456) = *(a2 + 57);
  *(a1 + 440) = v26;
  *(a2 + 440) = 0uLL;
  *(a2 + 57) = 0;
  v27 = a2[29];
  *(a1 + 480) = *(a2 + 60);
  *(a1 + 464) = v27;
  a2[29] = 0uLL;
  *(a2 + 60) = 0;
  result = *(a2 + 488);
  v29 = *(a2 + 504);
  *(a1 + 520) = *(a2 + 260);
  *(a1 + 488) = result;
  *(a1 + 504) = v29;
  *(a1 + 528) = 1;
  return result;
}

void sub_1004662D4(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 56) == *(a2 + 56))
  {
    if (*(a1 + 56))
    {
      v3 = *a2;
      *(a1 + 11) = *(a2 + 11);
      *a1 = v3;
      v4 = (a1 + 32);
      v5 = a2 + 2;

      sub_100173768(v4, v5);
    }
  }

  else if (*(a1 + 56))
  {
    sub_100009970(a1 + 32, *(a1 + 40));
    *(a1 + 56) = 0;
  }

  else
  {
    v6 = *a2;
    *(a1 + 11) = *(a2 + 11);
    *a1 = v6;
    *(a1 + 32) = *(a2 + 4);
    v7 = a2 + 5;
    v8 = *(a2 + 5);
    *(a1 + 40) = v8;
    v9 = a1 + 40;
    v10 = *(a2 + 6);
    *(a1 + 48) = v10;
    if (v10)
    {
      *(v8 + 16) = v9;
      *(a2 + 4) = v7;
      *v7 = 0;
      *(a2 + 6) = 0;
    }

    else
    {
      *(a1 + 32) = v9;
    }

    *(a1 + 56) = 1;
  }
}

__n128 *sub_1004663A4(__n128 *result, __n128 *a2)
{
  if (result[28].n128_u8[0] == a2[28].n128_u8[0])
  {
    if (result[28].n128_u8[0])
    {

      return sub_1004663FC(result, a2);
    }
  }

  else if (result[28].n128_u8[0])
  {
    result = sub_10038E6A4(result);
    result[28].n128_u8[0] = 0;
  }

  else
  {

    return sub_100466480(result, a2);
  }

  return result;
}

__n128 *sub_1004663FC(__n128 *a1, __n128 *a2)
{
  v4 = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = v4;
  sub_1004666AC(&a1[1].n128_i64[1], &a2[1].n128_i8[8]);
  sub_1004667F4(&a1[7].n128_i64[1], &a2[7].n128_i8[8]);
  sub_10046698C(&a1[16].n128_i64[1], &a2[16].n128_i8[8]);
  sub_100466A9C(&a1[23], &a2[23]);
  sub_10016A270(&a1[26], a2 + 26);
  return a1;
}

uint64_t sub_100466480(uint64_t result, __int128 *a2)
{
  v2 = *a2;
  *(result + 16) = *(a2 + 2);
  *result = v2;
  *(result + 24) = 0;
  *(result + 112) = 0;
  if (*(a2 + 112) == 1)
  {
    v3 = *(a2 + 24);
    *(result + 40) = *(a2 + 5);
    *(result + 24) = v3;
    a2[2] = 0uLL;
    *(a2 + 3) = 0;
    v4 = a2[3];
    *(result + 64) = *(a2 + 8);
    *(result + 48) = v4;
    *(a2 + 56) = 0uLL;
    *(a2 + 6) = 0;
    v5 = *(a2 + 72);
    *(result + 88) = *(a2 + 11);
    *(result + 72) = v5;
    a2[5] = 0uLL;
    *(a2 + 9) = 0;
    v6 = *(a2 + 12);
    *(result + 104) = *(a2 + 52);
    *(result + 96) = v6;
    *(result + 112) = 1;
  }

  *(result + 120) = 0;
  *(result + 256) = 0;
  if (*(a2 + 256) == 1)
  {
    v7 = *(a2 + 120);
    *(result + 136) = *(a2 + 136);
    *(result + 120) = v7;
    v8 = a2[9];
    *(result + 160) = *(a2 + 20);
    *(result + 144) = v8;
    *(a2 + 152) = 0uLL;
    *(a2 + 18) = 0;
    v9 = *(a2 + 168);
    *(result + 184) = *(a2 + 23);
    *(result + 168) = v9;
    a2[11] = 0uLL;
    *(a2 + 21) = 0;
    v10 = a2[12];
    *(result + 208) = *(a2 + 26);
    *(result + 192) = v10;
    a2[12] = 0uLL;
    *(a2 + 26) = 0;
    v11 = *(a2 + 216);
    *(result + 232) = *(a2 + 29);
    *(result + 216) = v11;
    *(a2 + 216) = 0uLL;
    *(a2 + 29) = 0;
    *(result + 240) = a2[15];
    *(result + 256) = 1;
  }

  *(result + 264) = 0;
  *(result + 360) = 0;
  if (*(a2 + 360) == 1)
  {
    v12 = *(a2 + 264);
    v13 = *(a2 + 280);
    *(result + 296) = *(a2 + 148);
    *(result + 264) = v12;
    *(result + 280) = v13;
    v14 = a2[19];
    *(result + 320) = *(a2 + 40);
    *(result + 304) = v14;
    *(a2 + 312) = 0uLL;
    *(a2 + 38) = 0;
    *(result + 328) = 0;
    *(result + 352) = 0;
    if (*(a2 + 352) == 1)
    {
      v15 = *(a2 + 328);
      *(result + 344) = *(a2 + 43);
      *(result + 328) = v15;
      a2[21] = 0uLL;
      *(a2 + 41) = 0;
      *(result + 352) = 1;
    }

    *(result + 360) = 1;
  }

  *(result + 368) = 0;
  *(result + 408) = 0;
  if (*(a2 + 408) == 1)
  {
    v16 = a2[23];
    *(result + 384) = *(a2 + 48);
    *(result + 368) = v16;
    *(a2 + 376) = 0uLL;
    *(a2 + 46) = 0;
    *(result + 392) = *(a2 + 392);
    *(result + 408) = 1;
  }

  *(result + 416) = 0;
  *(result + 440) = 0;
  if (*(a2 + 440) == 1)
  {
    v17 = a2[26];
    *(result + 432) = *(a2 + 54);
    *(result + 416) = v17;
    *(a2 + 424) = 0uLL;
    *(a2 + 52) = 0;
    *(result + 440) = 1;
  }

  *(result + 448) = 1;
  return result;
}

__n128 sub_1004666AC(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 88) == *(a2 + 88))
  {
    if (*(a1 + 88))
    {
      if (*(a1 + 23) < 0)
      {
        operator delete(*a1);
      }

      v4 = *a2;
      *(a1 + 16) = *(a2 + 2);
      *a1 = v4;
      *(a2 + 23) = 0;
      *a2 = 0;
      if (*(a1 + 47) < 0)
      {
        operator delete(*(a1 + 24));
      }

      v5 = *(a2 + 24);
      *(a1 + 40) = *(a2 + 5);
      *(a1 + 24) = v5;
      *(a2 + 47) = 0;
      *(a2 + 24) = 0;
      if (*(a1 + 71) < 0)
      {
        operator delete(*(a1 + 48));
      }

      result = a2[3];
      *(a1 + 64) = *(a2 + 8);
      *(a1 + 48) = result;
      *(a2 + 71) = 0;
      *(a2 + 48) = 0;
      v7 = *(a2 + 9);
      *(a1 + 80) = *(a2 + 40);
      *(a1 + 72) = v7;
    }
  }

  else if (*(a1 + 88))
  {

    sub_100465028(a1);
  }

  else
  {
    v8 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v8;
    *(a2 + 8) = 0uLL;
    *a2 = 0;
    v9 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 5);
    *(a1 + 24) = v9;
    a2[2] = 0uLL;
    *(a2 + 3) = 0;
    result = a2[3];
    *(a1 + 64) = *(a2 + 8);
    *(a1 + 48) = result;
    *(a2 + 56) = 0uLL;
    *(a2 + 6) = 0;
    v10 = *(a2 + 9);
    *(a1 + 80) = *(a2 + 40);
    *(a1 + 72) = v10;
    *(a1 + 88) = 1;
  }

  return result;
}

__n128 sub_1004667F4(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 136) == *(a2 + 136))
  {
    if (*(a1 + 136))
    {
      v4 = *a2;
      *(a1 + 16) = *(a2 + 16);
      *a1 = v4;
      if (*(a1 + 47) < 0)
      {
        operator delete(*(a1 + 24));
      }

      v5 = *(a2 + 24);
      *(a1 + 40) = *(a2 + 5);
      *(a1 + 24) = v5;
      *(a2 + 47) = 0;
      *(a2 + 24) = 0;
      if (*(a1 + 71) < 0)
      {
        operator delete(*(a1 + 48));
      }

      v6 = a2[3];
      *(a1 + 64) = *(a2 + 8);
      *(a1 + 48) = v6;
      *(a2 + 71) = 0;
      *(a2 + 48) = 0;
      if (*(a1 + 95) < 0)
      {
        operator delete(*(a1 + 72));
      }

      v7 = *(a2 + 72);
      *(a1 + 88) = *(a2 + 11);
      *(a1 + 72) = v7;
      *(a2 + 95) = 0;
      *(a2 + 72) = 0;
      if (*(a1 + 119) < 0)
      {
        operator delete(*(a1 + 96));
      }

      v8 = a2[6];
      *(a1 + 112) = *(a2 + 14);
      *(a1 + 96) = v8;
      *(a2 + 119) = 0;
      *(a2 + 96) = 0;
      result = *(a2 + 120);
      *(a1 + 120) = result;
    }
  }

  else if (*(a1 + 136))
  {

    sub_100465230(a1);
  }

  else
  {
    v10 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *a1 = v10;
    v11 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 5);
    *(a1 + 24) = v11;
    a2[2] = 0uLL;
    *(a2 + 3) = 0;
    v12 = a2[3];
    *(a1 + 64) = *(a2 + 8);
    *(a1 + 48) = v12;
    *(a2 + 56) = 0uLL;
    *(a2 + 6) = 0;
    v13 = *(a2 + 72);
    *(a1 + 88) = *(a2 + 11);
    *(a1 + 72) = v13;
    *(a2 + 72) = 0uLL;
    *(a2 + 11) = 0;
    v14 = a2[6];
    *(a1 + 112) = *(a2 + 14);
    *(a1 + 96) = v14;
    a2[6] = 0uLL;
    *(a2 + 14) = 0;
    result = *(a2 + 120);
    *(a1 + 120) = result;
    *(a1 + 136) = 1;
  }

  return result;
}

void sub_10046698C(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 96) == *(a2 + 96))
  {
    if (*(a1 + 96))
    {
      v4 = *a2;
      v5 = a2[1];
      *(a1 + 32) = *(a2 + 16);
      *a1 = v4;
      *(a1 + 16) = v5;
      if (*(a1 + 63) < 0)
      {
        operator delete(*(a1 + 40));
      }

      v6 = *(a2 + 40);
      *(a1 + 56) = *(a2 + 7);
      *(a1 + 40) = v6;
      *(a2 + 63) = 0;
      *(a2 + 40) = 0;
      sub_10016A270(a1 + 64, a2 + 4);
    }
  }

  else if (*(a1 + 96))
  {

    sub_1004654F0(a1);
  }

  else
  {
    v7 = *a2;
    v8 = a2[1];
    *(a1 + 32) = *(a2 + 16);
    *a1 = v7;
    *(a1 + 16) = v8;
    v9 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 7);
    *(a1 + 40) = v9;
    a2[3] = 0uLL;
    *(a2 + 5) = 0;
    *(a1 + 64) = 0;
    *(a1 + 88) = 0;
    if (*(a2 + 88) == 1)
    {
      v10 = a2[4];
      *(a1 + 80) = *(a2 + 10);
      *(a1 + 64) = v10;
      *(a2 + 72) = 0uLL;
      *(a2 + 8) = 0;
      *(a1 + 88) = 1;
    }

    *(a1 + 96) = 1;
  }
}

__n128 sub_100466A9C(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 40) == *(a2 + 40))
  {
    if (*(a1 + 40))
    {
      if (*(a1 + 23) < 0)
      {
        operator delete(*a1);
      }

      v4 = *a2;
      *(a1 + 16) = *(a2 + 2);
      *a1 = v4;
      *(a2 + 23) = 0;
      *a2 = 0;
      result = *(a2 + 24);
      *(a1 + 24) = result;
    }
  }

  else if (*(a1 + 40))
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    *(a1 + 40) = 0;
  }

  else
  {
    v6 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v6;
    *(a2 + 8) = 0uLL;
    *a2 = 0;
    result = *(a2 + 24);
    *(a1 + 24) = result;
    *(a1 + 40) = 1;
  }

  return result;
}

_BYTE *sub_100466B4C(_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[528] = 0;
  if (*(a2 + 528) == 1)
  {
    sub_100466058(a1, a2);
  }

  return a1;
}

_BYTE *sub_100466B90(_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[448] = 0;
  if (*(a2 + 448) == 1)
  {
    sub_100466480(a1, a2);
  }

  return a1;
}

const char *sub_100466BD4(unsigned int *a1, unsigned int *a2, _DWORD *a3)
{
  if (*a3 == 5)
  {
    return "kAuthFailure";
  }

  if (*a2 == 9)
  {
    return "kAuthFailure";
  }

  v5 = *a1;
  if (*a1 == 3)
  {
    if (subscriber::isSimSettled())
    {
      return "kAuthSuccess";
    }

    v5 = *a1;
  }

  if (v5 > 3)
  {
    return "kUnknown";
  }

  else
  {
    return off_101E4E688[v5];
  }
}

const void **sub_100466C6C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v58 = 0;
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  v31 = a2;
  if (Mutable)
  {
    v5 = v58;
    v58 = Mutable;
    *&v62 = v5;
    sub_1000279DC(&v62);
  }

  v6 = *a1;
  v7 = a1[1];
  if (*a1 != v7)
  {
    cf = kVinylProfileIccidKey;
    v37 = kVinylProfileServiceProviderNameKey;
    v38 = kVinylProfileNicknameKey;
    v36 = kVinylProfileIsActiveKey;
    v35 = kVinylProfileStateKey;
    v33 = kVinylProfileDisableNotAllowedKey;
    v34 = kVinylProfileIsBootstrapKey;
    v32 = kVinylProfileDeleteNotAllowedKey;
    v8 = kVinylProfileMccKey;
    v9 = kVinylProfileMncKey;
    v10 = kVinylProfileGID1Key;
    v11 = kVinylProfileGID2Key;
    v12 = kVinylProfileAssociatedImeiKey;
    do
    {
      v57 = 0;
      v13 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (v13)
      {
        v14 = v57;
        v57 = v13;
        *&v62 = v14;
        sub_1000296E0(&v62);
      }

      if (*(v6 + 39) < 0)
      {
        sub_100005F2C(&__dst, *(v6 + 16), *(v6 + 24));
      }

      else
      {
        __dst = *(v6 + 16);
        v55 = *(v6 + 32);
      }

      if (SHIBYTE(v55) < 0)
      {
        sub_100005F2C(&v60, __dst, *(&__dst + 1));
      }

      else
      {
        v60 = __dst;
        v61 = v55;
      }

      v59 = 0;
      if (SHIBYTE(v61) < 0)
      {
        sub_100005F2C(&v62, v60, *(&v60 + 1));
      }

      else
      {
        v62 = v60;
        v63 = v61;
      }

      v64 = 0;
      if (ctu::cf::convert_copy())
      {
        v15 = v59;
        v59 = v64;
        v65[0] = v15;
        sub_100005978(v65);
      }

      if (SHIBYTE(v63) < 0)
      {
        operator delete(v62);
      }

      v56 = v59;
      v59 = 0;
      sub_100005978(&v59);
      if (SHIBYTE(v61) < 0)
      {
        operator delete(v60);
      }

      sub_1001768B8(v57, cf, v56);
      sub_100005978(&v56);
      if (SHIBYTE(v55) < 0)
      {
        operator delete(__dst);
      }

      if (*(v6 + 63) < 0)
      {
        sub_100005F2C(&v52, *(v6 + 40), *(v6 + 48));
      }

      else
      {
        v52 = *(v6 + 40);
        v53 = *(v6 + 56);
      }

      if (SHIBYTE(v53) < 0)
      {
        sub_100005F2C(&v60, v52, *(&v52 + 1));
      }

      else
      {
        v60 = v52;
        v61 = v53;
      }

      v59 = 0;
      if (SHIBYTE(v61) < 0)
      {
        sub_100005F2C(&v62, v60, *(&v60 + 1));
      }

      else
      {
        v62 = v60;
        v63 = v61;
      }

      v64 = 0;
      if (ctu::cf::convert_copy())
      {
        v16 = v59;
        v59 = v64;
        v65[0] = v16;
        sub_100005978(v65);
      }

      if (SHIBYTE(v63) < 0)
      {
        operator delete(v62);
      }

      v56 = v59;
      v59 = 0;
      sub_100005978(&v59);
      if (SHIBYTE(v61) < 0)
      {
        operator delete(v60);
      }

      sub_1001768B8(v57, v38, v56);
      sub_100005978(&v56);
      if (SHIBYTE(v53) < 0)
      {
        operator delete(v52);
      }

      if (*(v6 + 87) < 0)
      {
        sub_100005F2C(__p, *(v6 + 64), *(v6 + 72));
      }

      else
      {
        *__p = *(v6 + 64);
        v51 = *(v6 + 80);
      }

      if (SHIBYTE(v51) < 0)
      {
        sub_100005F2C(&v60, __p[0], __p[1]);
      }

      else
      {
        v60 = *__p;
        v61 = v51;
      }

      v59 = 0;
      if (SHIBYTE(v61) < 0)
      {
        sub_100005F2C(&v62, v60, *(&v60 + 1));
      }

      else
      {
        v62 = v60;
        v63 = v61;
      }

      v64 = 0;
      if (ctu::cf::convert_copy())
      {
        v17 = v59;
        v59 = v64;
        v65[0] = v17;
        sub_100005978(v65);
      }

      if (SHIBYTE(v63) < 0)
      {
        operator delete(v62);
      }

      v56 = v59;
      v59 = 0;
      sub_100005978(&v59);
      if (SHIBYTE(v61) < 0)
      {
        operator delete(v60);
      }

      sub_1001768B8(v57, v37, v56);
      sub_100005978(&v56);
      if (SHIBYTE(v51) < 0)
      {
        operator delete(__p[0]);
      }

      if (*(v6 + 90))
      {
        v18 = kCFBooleanTrue;
      }

      else
      {
        v18 = kCFBooleanFalse;
      }

      sub_1002E0298(v57, v36, v18);
      v19 = asString();
      v65[0] = 0;
      *&v60 = 0;
      if (ctu::cf::convert_copy(&v60, v19, 0x8000100, kCFAllocatorDefault, v20))
      {
        v21 = v65[0];
        v65[0] = v60;
        *&v62 = v21;
        sub_100005978(&v62);
      }

      v64 = v65[0];
      v65[0] = 0;
      sub_100005978(v65);
      sub_1001768B8(v57, v35, v64);
      sub_100005978(&v64);
      if (*(v6 + 89))
      {
        v22 = kCFBooleanTrue;
      }

      else
      {
        v22 = kCFBooleanFalse;
      }

      sub_1002E0298(v57, v34, v22);
      if (*(v6 + 92))
      {
        v23 = kCFBooleanTrue;
      }

      else
      {
        v23 = kCFBooleanFalse;
      }

      sub_1002E0298(v57, v33, v23);
      if (*(v6 + 91))
      {
        v24 = kCFBooleanTrue;
      }

      else
      {
        v24 = kCFBooleanFalse;
      }

      sub_1002E0298(v57, v32, v24);
      if (*(v6 + 119) < 0)
      {
        sub_100005F2C(v48, *(v6 + 96), *(v6 + 104));
      }

      else
      {
        *v48 = *(v6 + 96);
        v49 = *(v6 + 112);
      }

      if (SHIBYTE(v49) < 0)
      {
        sub_100005F2C(&v60, v48[0], v48[1]);
      }

      else
      {
        v60 = *v48;
        v61 = v49;
      }

      v59 = 0;
      if (SHIBYTE(v61) < 0)
      {
        sub_100005F2C(&v62, v60, *(&v60 + 1));
      }

      else
      {
        v62 = v60;
        v63 = v61;
      }

      v64 = 0;
      if (ctu::cf::convert_copy())
      {
        v25 = v59;
        v59 = v64;
        v65[0] = v25;
        sub_100005978(v65);
      }

      if (SHIBYTE(v63) < 0)
      {
        operator delete(v62);
      }

      v56 = v59;
      v59 = 0;
      sub_100005978(&v59);
      if (SHIBYTE(v61) < 0)
      {
        operator delete(v60);
      }

      sub_1001768B8(v57, v8, v56);
      sub_100005978(&v56);
      if (SHIBYTE(v49) < 0)
      {
        operator delete(v48[0]);
      }

      if (*(v6 + 143) < 0)
      {
        sub_100005F2C(v46, *(v6 + 120), *(v6 + 128));
      }

      else
      {
        *v46 = *(v6 + 120);
        v47 = *(v6 + 136);
      }

      if (SHIBYTE(v47) < 0)
      {
        sub_100005F2C(&v60, v46[0], v46[1]);
      }

      else
      {
        v60 = *v46;
        v61 = v47;
      }

      v59 = 0;
      if (SHIBYTE(v61) < 0)
      {
        sub_100005F2C(&v62, v60, *(&v60 + 1));
      }

      else
      {
        v62 = v60;
        v63 = v61;
      }

      v64 = 0;
      if (ctu::cf::convert_copy())
      {
        v26 = v59;
        v59 = v64;
        v65[0] = v26;
        sub_100005978(v65);
      }

      if (SHIBYTE(v63) < 0)
      {
        operator delete(v62);
      }

      v56 = v59;
      v59 = 0;
      sub_100005978(&v59);
      if (SHIBYTE(v61) < 0)
      {
        operator delete(v60);
      }

      sub_1001768B8(v57, v9, v56);
      sub_100005978(&v56);
      if (SHIBYTE(v47) < 0)
      {
        operator delete(v46[0]);
      }

      if (*(v6 + 167) < 0)
      {
        sub_100005F2C(v44, *(v6 + 144), *(v6 + 152));
      }

      else
      {
        *v44 = *(v6 + 144);
        v45 = *(v6 + 160);
      }

      if (SHIBYTE(v45) < 0)
      {
        sub_100005F2C(&v60, v44[0], v44[1]);
      }

      else
      {
        v60 = *v44;
        v61 = v45;
      }

      v59 = 0;
      if (SHIBYTE(v61) < 0)
      {
        sub_100005F2C(&v62, v60, *(&v60 + 1));
      }

      else
      {
        v62 = v60;
        v63 = v61;
      }

      v64 = 0;
      if (ctu::cf::convert_copy())
      {
        v27 = v59;
        v59 = v64;
        v65[0] = v27;
        sub_100005978(v65);
      }

      if (SHIBYTE(v63) < 0)
      {
        operator delete(v62);
      }

      v56 = v59;
      v59 = 0;
      sub_100005978(&v59);
      if (SHIBYTE(v61) < 0)
      {
        operator delete(v60);
      }

      sub_1001768B8(v57, v10, v56);
      sub_100005978(&v56);
      if (SHIBYTE(v45) < 0)
      {
        operator delete(v44[0]);
      }

      if (*(v6 + 191) < 0)
      {
        sub_100005F2C(v42, *(v6 + 168), *(v6 + 176));
      }

      else
      {
        *v42 = *(v6 + 168);
        v43 = *(v6 + 184);
      }

      if (SHIBYTE(v43) < 0)
      {
        sub_100005F2C(&v60, v42[0], v42[1]);
      }

      else
      {
        v60 = *v42;
        v61 = v43;
      }

      v59 = 0;
      if (SHIBYTE(v61) < 0)
      {
        sub_100005F2C(&v62, v60, *(&v60 + 1));
      }

      else
      {
        v62 = v60;
        v63 = v61;
      }

      v64 = 0;
      if (ctu::cf::convert_copy())
      {
        v28 = v59;
        v59 = v64;
        v65[0] = v28;
        sub_100005978(v65);
      }

      if (SHIBYTE(v63) < 0)
      {
        operator delete(v62);
      }

      v56 = v59;
      v59 = 0;
      sub_100005978(&v59);
      if (SHIBYTE(v61) < 0)
      {
        operator delete(v60);
      }

      sub_1001768B8(v57, v11, v56);
      sub_100005978(&v56);
      if (SHIBYTE(v43) < 0)
      {
        operator delete(v42[0]);
      }

      if (*(v6 + 215) < 0)
      {
        sub_100005F2C(v40, *(v6 + 192), *(v6 + 200));
      }

      else
      {
        *v40 = *(v6 + 192);
        v41 = *(v6 + 208);
      }

      if (SHIBYTE(v41) < 0)
      {
        sub_100005F2C(&v60, v40[0], v40[1]);
      }

      else
      {
        v60 = *v40;
        v61 = v41;
      }

      v59 = 0;
      if (SHIBYTE(v61) < 0)
      {
        sub_100005F2C(&v62, v60, *(&v60 + 1));
      }

      else
      {
        v62 = v60;
        v63 = v61;
      }

      v64 = 0;
      if (ctu::cf::convert_copy())
      {
        v29 = v59;
        v59 = v64;
        v65[0] = v29;
        sub_100005978(v65);
      }

      if (SHIBYTE(v63) < 0)
      {
        operator delete(v62);
      }

      v56 = v59;
      v59 = 0;
      sub_100005978(&v59);
      if (SHIBYTE(v61) < 0)
      {
        operator delete(v60);
      }

      sub_1001768B8(v57, v12, v56);
      sub_100005978(&v56);
      if (SHIBYTE(v41) < 0)
      {
        operator delete(v40[0]);
      }

      sub_10039D64C(v58, v57);
      sub_1000296E0(&v57);
      v6 += 216;
    }

    while (v6 != v7);
  }

  sub_10002A7D8(v31, &v58);
  return sub_1000279DC(&v58);
}

void sub_100467AE8(uint64_t a1@<X0>, unsigned int *a2@<X1>, unsigned int *a3@<X2>, _DWORD *a4@<X3>, void *a5@<X8>)
{
  v67 = 0;
  v10 = xpc_dictionary_create(0, 0, 0);
  v11 = v10;
  if (v10)
  {
    v67 = v10;
  }

  else
  {
    v11 = xpc_null_create();
    v67 = v11;
    if (!v11)
    {
      v12 = xpc_null_create();
      v11 = 0;
      goto LABEL_8;
    }
  }

  if (xpc_get_type(v11) == &_xpc_type_dictionary)
  {
    xpc_retain(v11);
    goto LABEL_9;
  }

  v12 = xpc_null_create();
LABEL_8:
  v67 = v12;
LABEL_9:
  xpc_release(v11);
  v13 = objc_autoreleasePoolPush();
  v65 = xpc_int64_create(*(a1 + 16));
  if (!v65)
  {
    v65 = xpc_null_create();
  }

  v63 = &v67;
  v64 = kVinylFwUpdateStatus;
  sub_10000F688(&v63, &v65, &v66);
  xpc_release(v66);
  v66 = 0;
  xpc_release(v65);
  v65 = 0;
  if (*(a1 + 16) == 1)
  {
    v61 = xpc_data_create(a1, 0x10uLL);
    if (!v61)
    {
      v61 = xpc_null_create();
    }

    v63 = &v67;
    v64 = kVinylFwUpdateCsn;
    sub_10000F688(&v63, &v61, &v62);
    xpc_release(v62);
    v62 = 0;
    xpc_release(v61);
    v61 = 0;
    v59 = xpc_int64_create(*(a1 + 17));
    if (!v59)
    {
      v59 = xpc_null_create();
    }

    v63 = &v67;
    v64 = kVinylFwUpdateOperationMode;
    sub_10000F688(&v63, &v59, &v60);
    xpc_release(v60);
    v60 = 0;
    xpc_release(v59);
    v59 = 0;
    v57 = xpc_data_create((a1 + 18), 0x20uLL);
    if (!v57)
    {
      v57 = xpc_null_create();
    }

    v63 = &v67;
    v64 = kVinylFwUpdateCurrentVersion;
    sub_10000F688(&v63, &v57, &v58);
    xpc_release(v58);
    v58 = 0;
    xpc_release(v57);
    v57 = 0;
    v55 = xpc_data_create((a1 + 50), 8uLL);
    if (!v55)
    {
      v55 = xpc_null_create();
    }

    v63 = &v67;
    v64 = kVinylFwUpdateMainFwNonce;
    sub_10000F688(&v63, &v55, &v56);
    xpc_release(v56);
    v56 = 0;
    xpc_release(v55);
    v55 = 0;
    v53 = xpc_data_create((a1 + 58), 8uLL);
    if (!v53)
    {
      v53 = xpc_null_create();
    }

    v63 = &v67;
    v64 = kVinylFwUpdateGoldFwNonce;
    sub_10000F688(&v63, &v53, &v54);
    xpc_release(v54);
    v54 = 0;
    xpc_release(v53);
    v53 = 0;
    v51 = xpc_data_create((a1 + 66), 8uLL);
    if (!v51)
    {
      v51 = xpc_null_create();
    }

    v63 = &v67;
    v64 = kVinylFwUpdateMainFwMac;
    sub_10000F688(&v63, &v51, &v52);
    xpc_release(v52);
    v52 = 0;
    xpc_release(v51);
    v51 = 0;
    v49 = xpc_data_create((a1 + 74), 0x20uLL);
    if (!v49)
    {
      v49 = xpc_null_create();
    }

    v63 = &v67;
    v64 = kVinylFwUpdateMainFwVersion;
    sub_10000F688(&v63, &v49, &v50);
    xpc_release(v50);
    v50 = 0;
    xpc_release(v49);
    v49 = 0;
    v47 = xpc_data_create((a1 + 106), 0x18uLL);
    if (!v47)
    {
      v47 = xpc_null_create();
    }

    v63 = &v67;
    v64 = kVinylFwUpdateMainFwChallenge;
    sub_10000F688(&v63, &v47, &v48);
    xpc_release(v48);
    v48 = 0;
    xpc_release(v47);
    v47 = 0;
    object = xpc_data_create((a1 + 130), 3uLL);
    if (!object)
    {
      object = xpc_null_create();
    }

    v63 = &v67;
    v64 = kVinylFwUpdateMainFwSize;
    sub_10000F688(&v63, &object, &v46);
    xpc_release(v46);
    v46 = 0;
    xpc_release(object);
    object = 0;
    v43 = xpc_data_create((a1 + 133), 8uLL);
    if (!v43)
    {
      v43 = xpc_null_create();
    }

    v63 = &v67;
    v64 = kVinylFwUpdateGoldFwMac;
    sub_10000F688(&v63, &v43, &v44);
    xpc_release(v44);
    v44 = 0;
    xpc_release(v43);
    v43 = 0;
    v41 = xpc_data_create((a1 + 141), 0x20uLL);
    if (!v41)
    {
      v41 = xpc_null_create();
    }

    v63 = &v67;
    v64 = kVinylFwUpdateGoldFwVersion;
    sub_10000F688(&v63, &v41, &v42);
    xpc_release(v42);
    v42 = 0;
    xpc_release(v41);
    v41 = 0;
    v39 = xpc_data_create((a1 + 173), 0x18uLL);
    if (!v39)
    {
      v39 = xpc_null_create();
    }

    v63 = &v67;
    v64 = kVinylFwUpdateGoldFwChallenge;
    sub_10000F688(&v63, &v39, &v40);
    xpc_release(v40);
    v40 = 0;
    xpc_release(v39);
    v39 = 0;
    v37 = xpc_data_create((a1 + 197), 3uLL);
    if (!v37)
    {
      v37 = xpc_null_create();
    }

    v63 = &v67;
    v64 = kVinylFwUpdateGoldFwSize;
    sub_10000F688(&v63, &v37, &v38);
    xpc_release(v38);
    v38 = 0;
    xpc_release(v37);
    v37 = 0;
    v35 = xpc_int64_create(*(a1 + 200));
    if (!v35)
    {
      v35 = xpc_null_create();
    }

    v63 = &v67;
    v64 = kVinylFwUpdateProfileVersion;
    sub_10000F688(&v63, &v35, &v36);
    xpc_release(v36);
    v36 = 0;
    xpc_release(v35);
    v35 = 0;
    v33 = xpc_data_create((a1 + 202), 8uLL);
    if (!v33)
    {
      v33 = xpc_null_create();
    }

    v63 = &v67;
    v64 = kVinylFwUpdateCurrentMac;
    sub_10000F688(&v63, &v33, &v34);
    xpc_release(v34);
    v34 = 0;
    xpc_release(v33);
    v33 = 0;
    v31 = xpc_data_create((a1 + 210), 3uLL);
    if (!v31)
    {
      v31 = xpc_null_create();
    }

    v63 = &v67;
    v64 = kVinylFwUpdateLoaderVersion;
    sub_10000F688(&v63, &v31, &v32);
    xpc_release(v32);
    v32 = 0;
    xpc_release(v31);
    v31 = 0;
    v29 = xpc_data_create((a1 + 213), 0x20uLL);
    if (!v29)
    {
      v29 = xpc_null_create();
    }

    v63 = &v67;
    v64 = kVinylFwUpdateKeyId;
    sub_10000F688(&v63, &v29, &v30);
    xpc_release(v30);
    v30 = 0;
    xpc_release(v29);
    v29 = 0;
    v27 = xpc_int64_create(*(a1 + 252));
    if (!v27)
    {
      v27 = xpc_null_create();
    }

    v63 = &v67;
    v64 = kVinylFwUpdateEuiccChipId;
    sub_10000F688(&v63, &v27, &v28);
    xpc_release(v28);
    v28 = 0;
    xpc_release(v27);
    v27 = 0;
    v25 = xpc_int64_create(*(a1 + 245));
    if (!v25)
    {
      v25 = xpc_null_create();
    }

    v63 = &v67;
    v64 = kVinylFwUpdateBootstrapProfiles;
    sub_10000F688(&v63, &v25, &v26);
    xpc_release(v26);
    v26 = 0;
    xpc_release(v25);
    v25 = 0;
    v23 = xpc_int64_create(*(a1 + 248));
    if (!v23)
    {
      v23 = xpc_null_create();
    }

    v63 = &v67;
    v64 = kVinylFwUpdateUserProfiles;
    sub_10000F688(&v63, &v23, &v24);
    xpc_release(v24);
    v24 = 0;
    xpc_release(v23);
    v23 = 0;
    if (*(a1 + 247) == 1)
    {
      v21 = xpc_int64_create(*(a1 + 246));
      if (!v21)
      {
        v21 = xpc_null_create();
      }

      v63 = &v67;
      v64 = kVinylFwUpdateBootstrapProfiles2Phase;
      sub_10000F688(&v63, &v21, &v22);
      xpc_release(v22);
      v22 = 0;
      xpc_release(v21);
      v21 = 0;
      v19 = xpc_data_create(*(a1 + 256), *(a1 + 264) - *(a1 + 256));
      if (!v19)
      {
        v19 = xpc_null_create();
      }

      v63 = &v67;
      v64 = kVinylFwUpdateBootstrapProfileIdentifiers;
      sub_10000F688(&v63, &v19, &v20);
      xpc_release(v20);
      v20 = 0;
      xpc_release(v19);
      v19 = 0;
    }

    v14 = sub_100466BD4(a2, a3, a4);
    sub_10046861C(&v17, "%s", v14);
    v63 = &v67;
    v64 = kVinylFwUpdatePairingState;
    sub_10000F688(&v63, &v17, &v18);
    xpc_release(v18);
    v18 = 0;
    xpc_release(v17);
    v17 = 0;
  }

  objc_autoreleasePoolPop(v13);
  v16 = v67;
  if (v67)
  {
    xpc_retain(v67);
  }

  else
  {
    v16 = xpc_null_create();
  }

  xpc::bridge(&v16, v15);
  sub_100010180(a5, &v63);
  sub_10000A1EC(&v63);
  xpc_release(v16);
  xpc_release(v67);
}

void sub_1004685C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object)
{
  sub_10000A1EC((v11 - 104));
  xpc_release(object);
  xpc_release(*(v11 - 72));
  _Unwind_Resume(a1);
}

void *sub_10046861C@<X0>(void *__return_ptr a1@<X8>, const char *a2@<X0>, ...)
{
  va_start(va, a2);
  result = xpc_string_create_with_format_and_arguments(a2, va);
  *a1 = result;
  if (!result)
  {
    result = xpc_null_create();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100468668(int a1)
{
  if (a1 == 1)
  {
    return 1;
  }

  else
  {
    return 2 * (a1 == 2);
  }
}

void sub_100468680(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = xpc_array_create(0, 0);
  if (v4 || (v4 = xpc_null_create()) != 0)
  {
    if (xpc_get_type(v4) == &_xpc_type_array)
    {
      xpc_retain(v4);
      v5 = v4;
    }

    else
    {
      v5 = xpc_null_create();
    }
  }

  else
  {
    v5 = xpc_null_create();
    v4 = 0;
  }

  xpc_release(v4);
  v6 = *a1;
  v7 = a1[1];
  if (*a1 != v7)
  {
    do
    {
      v25 = 0;
      v8 = xpc_dictionary_create(0, 0, 0);
      v9 = v8;
      if (v8)
      {
        v25 = v8;
      }

      else
      {
        v9 = xpc_null_create();
        v25 = v9;
        if (!v9)
        {
          v10 = xpc_null_create();
          v9 = 0;
          goto LABEL_15;
        }
      }

      if (xpc_get_type(v9) != &_xpc_type_dictionary)
      {
        v10 = xpc_null_create();
LABEL_15:
        v25 = v10;
        goto LABEL_16;
      }

      xpc_retain(v9);
LABEL_16:
      xpc_release(v9);
      v11 = v6;
      if (*(v6 + 23) < 0)
      {
        v11 = *v6;
      }

      sub_10046861C(&v23, "%s", v11);
      v21 = &v25;
      v22 = "kIccid";
      sub_10000F688(&v21, &v23, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v23);
      v23 = 0;
      v19 = xpc_int64_create(*(v6 + 24));
      if (!v19)
      {
        v19 = xpc_null_create();
      }

      v21 = &v25;
      v22 = "kStatus";
      sub_10000F688(&v21, &v19, &v20);
      xpc_release(v20);
      v20 = 0;
      xpc_release(v19);
      v19 = 0;
      v12 = (v6 + 32);
      if (*(v6 + 55) < 0)
      {
        v12 = *v12;
      }

      sub_10046861C(&v17, "%s", v12);
      v21 = &v25;
      v22 = "kSlotUuid";
      sub_10000F688(&v21, &v17, &v18);
      xpc_release(v18);
      v18 = 0;
      xpc_release(v17);
      v17 = 0;
      v13 = (v6 + 56);
      if (*(v6 + 79) < 0)
      {
        v13 = *v13;
      }

      sub_10046861C(&v15, "%s", v13);
      v21 = &v25;
      v22 = "kLabelId";
      sub_10000F688(&v21, &v15, &v16);
      xpc_release(v16);
      v16 = 0;
      xpc_release(v15);
      v15 = 0;
      xpc_array_append_value(v5, v25);
      xpc_release(v25);
      v6 += 88;
    }

    while (v6 != v7);
  }

  v25 = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    v25 = xpc_null_create();
  }

  xpc::bridge(&v25, v14);
  sub_10006DD00(a2, &v21);
  sub_10000A1EC(&v21);
  xpc_release(v25);
  xpc_release(v5);
}

void sub_10046898C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_10000A1EC(va);
  xpc_release(*(v18 - 88));
  xpc_release(v17);
  _Unwind_Resume(a1);
}

void sub_100468A20(CFArrayRef *a1, uint64_t a2)
{
  v3 = *a1;
  if (v3)
  {
    Count = CFArrayGetCount(v3);
    if (Count >= 1)
    {
      v6 = Count;
      v7 = 0;
      v27 = kCtLoggingSystemName;
      do
      {
        v32 = 0;
        memset(v31, 0, sizeof(v31));
        ValueAtIndex = CFArrayGetValueAtIndex(*a1, v7);
        v9 = ValueAtIndex;
        if (ValueAtIndex)
        {
          v10 = CFGetTypeID(ValueAtIndex);
          if (v10 == CFDictionaryGetTypeID())
          {
            v11 = v9;
          }

          else
          {
            v11 = 0;
          }
        }

        else
        {
          v11 = 0;
        }

        memset(&__str, 0, sizeof(__str));
        CFDictionaryGetValue(v11, @"kIccid");
        memset(&v33, 0, sizeof(v33));
        ctu::cf::assign();
        __str = v33;
        std::string::operator=(v31, &__str);
        Value = CFDictionaryGetValue(v11, @"kStatus");
        v13 = Value;
        LODWORD(v33.__r_.__value_.__l.__data_) = 0;
        if (Value)
        {
          v14 = CFGetTypeID(Value);
          if (v14 == CFNumberGetTypeID())
          {
            ctu::cf::assign(&v33, v13, v15);
          }
        }

        if ((cellplan::deserializeRemotePlanSimSubscriptionStatus() & 1) == 0)
        {
          *&v31[24] = 0;
          v16 = ctu::OsLogContext::OsLogContext(&v33, v27, "vinyl.helper");
          size = v33.__r_.__value_.__l.__size_;
          ctu::OsLogContext::~OsLogContext(v16);
          if (os_log_type_enabled(size, OS_LOG_TYPE_ERROR))
          {
            sub_101770E58(&buf, v29, size);
          }
        }

        CFDictionaryGetValue(v11, @"kSlotUuid");
        memset(&v33, 0, sizeof(v33));
        ctu::cf::assign();
        v34[0] = v33.__r_.__value_.__l.__size_;
        v18 = v33.__r_.__value_.__r.__words[0];
        *(v34 + 7) = *(&v33.__r_.__value_.__r.__words[1] + 7);
        v19 = HIBYTE(v33.__r_.__value_.__r.__words[2]);
        if ((v31[55] & 0x80000000) != 0)
        {
          operator delete(*&v31[32]);
        }

        *&v31[32] = v18;
        *&v31[40] = v34[0];
        *&v31[47] = *(v34 + 7);
        v31[55] = v19;
        CFDictionaryGetValue(v11, @"kLabelId");
        memset(&v33, 0, sizeof(v33));
        ctu::cf::assign();
        v34[0] = v33.__r_.__value_.__l.__size_;
        v20 = v33.__r_.__value_.__r.__words[0];
        *(v34 + 7) = *(&v33.__r_.__value_.__r.__words[1] + 7);
        v21 = HIBYTE(v33.__r_.__value_.__r.__words[2]);
        if ((v31[79] & 0x80000000) != 0)
        {
          operator delete(*&v31[56]);
        }

        *&v31[56] = v20;
        *&v31[64] = v34[0];
        *&v31[71] = *(v34 + 7);
        v31[79] = v21;
        v22 = *(a2 + 8);
        if (v22 >= *(a2 + 16))
        {
          v24 = sub_10046A178(a2, v31);
        }

        else
        {
          if ((v31[23] & 0x80000000) != 0)
          {
            sub_100005F2C(*(a2 + 8), *v31, *&v31[8]);
          }

          else
          {
            v23 = *v31;
            *(v22 + 16) = *&v31[16];
            *v22 = v23;
          }

          *(v22 + 24) = *&v31[24];
          if ((v31[55] & 0x80000000) != 0)
          {
            sub_100005F2C((v22 + 32), *&v31[32], *&v31[40]);
          }

          else
          {
            v25 = *&v31[32];
            *(v22 + 48) = *&v31[48];
            *(v22 + 32) = v25;
          }

          if ((v31[79] & 0x80000000) != 0)
          {
            sub_100005F2C((v22 + 56), *&v31[56], *&v31[64]);
          }

          else
          {
            v26 = *&v31[56];
            *(v22 + 72) = *&v31[72];
            *(v22 + 56) = v26;
          }

          *(v22 + 80) = v32;
          v24 = v22 + 88;
          *(a2 + 8) = v22 + 88;
        }

        *(a2 + 8) = v24;
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        if ((v31[79] & 0x80000000) != 0)
        {
          operator delete(*&v31[56]);
        }

        if ((v31[55] & 0x80000000) != 0)
        {
          operator delete(*&v31[32]);
        }

        if ((v31[23] & 0x80000000) != 0)
        {
          operator delete(*v31);
        }

        ++v7;
      }

      while (v6 != v7);
    }
  }
}

void sub_100468DB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20)
{
  if (*(v21 + 55) < 0)
  {
    operator delete(*(v21 + 32));
  }

  if (*(v21 + 23) < 0)
  {
    operator delete(*v21);
  }

  *(v20 + 8) = v21;
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_1001FA910(&a20);
  _Unwind_Resume(a1);
}

uint64_t sub_100468E6C(char **a1, char **a2, char **a3, uint64_t *a4)
{
  if (*a1 != a1[1] && *a2 != a2[1] && *a3 != a3[1])
  {
    v8 = sub_1002E19DC(0);
    __p = 0;
    __dst = 0;
    v20 = 0;
    sub_10005F5A8(&__p, 0, *a1, a1[1], a1[1] - *a1);
    sub_10005F5A8(&__p, __dst, *a2, a2[1], a2[1] - *a2);
    sub_10005F5A8(&__p, __dst, *a3, a3[1], a3[1] - *a3);
    __src = 0;
    v16 = 0;
    if (sub_1002E1A8C(v8, 0, 0x10u, __p, __dst - __p, 1))
    {
      ctu::OsLogContext::OsLogContext(v14, kCtLoggingSystemName, "vinyl.helper");
      v9 = v15;
      ctu::OsLogContext::~OsLogContext(v14);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_101770E98();
      }
    }

    else
    {
      if (!sub_1002E1D88(v8, &__src, &v16))
      {
        a4[1] = *a4;
        if (__src)
        {
          sub_1001122C4(a4, __src, __src + v16, v16);
          free(__src);
        }

        v11 = 1;
        goto LABEL_15;
      }

      ctu::OsLogContext::OsLogContext(v14, kCtLoggingSystemName, "vinyl.helper");
      v13 = v15;
      ctu::OsLogContext::~OsLogContext(v14);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_101770F00();
      }
    }

    v11 = 0;
LABEL_15:
    if (__p)
    {
      __dst = __p;
      operator delete(__p);
    }

    if (v8)
    {
      sub_1002E1A20(v8);
    }

    return v11;
  }

  ctu::OsLogContext::OsLogContext(&__p, kCtLoggingSystemName, "vinyl.helper");
  v10 = __dst;
  ctu::OsLogContext::~OsLogContext(&__p);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    sub_101770F68();
  }

  return 0;
}

void sub_10046909C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (v15)
  {
    sub_1002E1A20(v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004690E0(uint64_t *a1, uint64_t *a2, void **a3, _WORD *a4)
{
  v33 = 0;
  v34 = 0;
  v31 = 0;
  v32 = 0;
  v29 = 0;
  v30 = 0;
  *&v28[4] = 0;
  v5 = *(a1 + 2);
  v6 = *a1;
  v27 = 0;
  *v28 = (v5 - v6);
  if (v5 == v6)
  {
    ctu::OsLogContext::OsLogContext(v25, kCtLoggingSystemName, "vinyl.helper");
    v9 = v26;
    ctu::OsLogContext::~OsLogContext(v25);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_101771434();
    }

    return 255;
  }

  if (DERDecoderInitialize())
  {
    ctu::OsLogContext::OsLogContext(v25, kCtLoggingSystemName, "vinyl.helper");
    v8 = v26;
    ctu::OsLogContext::~OsLogContext(v25);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_101770FA4();
    }

    return 255;
  }

  if (DERDecoderGetDataAt())
  {
    ctu::OsLogContext::OsLogContext(v25, kCtLoggingSystemName, "vinyl.helper");
    v10 = v26;
    ctu::OsLogContext::~OsLogContext(v25);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10177100C();
    }

    return 255;
  }

  if (DERDecoderInitialize())
  {
    ctu::OsLogContext::OsLogContext(v25, kCtLoggingSystemName, "vinyl.helper");
    v12 = v26;
    ctu::OsLogContext::~OsLogContext(v25);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1017710E4();
    }

    return 255;
  }

  if (DERDecoderParseSequence())
  {
    ctu::OsLogContext::OsLogContext(v25, kCtLoggingSystemName, "vinyl.helper");
    v13 = v26;
    ctu::OsLogContext::~OsLogContext(v25);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10177114C();
    }

    return 255;
  }

  if (DERDecoderGetDataAt())
  {
    ctu::OsLogContext::OsLogContext(v25, kCtLoggingSystemName, "vinyl.helper");
    v14 = v26;
    ctu::OsLogContext::~OsLogContext(v25);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1017711B4();
    }

    return 255;
  }

  if (DERDecoderInitialize())
  {
    ctu::OsLogContext::OsLogContext(v25, kCtLoggingSystemName, "vinyl.helper");
    v15 = v26;
    ctu::OsLogContext::~OsLogContext(v25);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10177121C();
    }

    return 255;
  }

  if (DERDecoderGetDataAt())
  {
    ctu::OsLogContext::OsLogContext(v25, kCtLoggingSystemName, "vinyl.helper");
    v16 = v26;
    ctu::OsLogContext::~OsLogContext(v25);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_101771284();
    }

    return 255;
  }

  if (*v28 != 2)
  {
    ctu::OsLogContext::OsLogContext(v25, kCtLoggingSystemName, "vinyl.helper");
    v18 = v26;
    ctu::OsLogContext::~OsLogContext(v25);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_1017712EC(v28, v18, v19, v20, v21, v22, v23, v24);
    }

    return 255;
  }

  *a4 = bswap32(**&v28[4]) >> 16;
  result = DERDecoderGetEncodingWithTag();
  if (result)
  {
    ctu::OsLogContext::OsLogContext(v25, kCtLoggingSystemName, "vinyl.helper");
    v17 = v26;
    ctu::OsLogContext::~OsLogContext(v25);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_10177135C();
    }

    return 255;
  }

  if (*&v28[4] && *v28)
  {
    sub_10018A52C(a3, *&v28[4], (*&v28[4] + *v28), *v28);
    return 0;
  }

  return result;
}

uint64_t sub_100469644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (*a1 != *(a1 + 8) && *a2 != *(a2 + 8) && *a3 != *(a3 + 8))
  {
    v8 = sub_1002E19DC(0);
    __src = 0;
    v18 = 0;
    if (sub_1002E1A8C(v8, 0, 0x10u, *a1, *(a1 + 8) - *a1, 1))
    {
      ctu::OsLogContext::OsLogContext(v20, kCtLoggingSystemName, "vinyl.helper");
      v9 = v21;
      ctu::OsLogContext::~OsLogContext(v20);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_101771470();
      }

LABEL_17:
      v11 = 0;
      goto LABEL_18;
    }

    if (sub_1002E1A8C(v8, 2, 0, *a2, *(a2 + 8) - *a2, 0))
    {
      ctu::OsLogContext::OsLogContext(v20, kCtLoggingSystemName, "vinyl.helper");
      v13 = v21;
      ctu::OsLogContext::~OsLogContext(v20);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_1017714D8();
      }

      goto LABEL_17;
    }

    if (sub_1002E1A8C(v8, 2, 1u, *a3, *(a3 + 8) - *a3, 1))
    {
      ctu::OsLogContext::OsLogContext(v20, kCtLoggingSystemName, "vinyl.helper");
      v14 = v21;
      ctu::OsLogContext::~OsLogContext(v20);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_101771540();
      }

      goto LABEL_17;
    }

    v15 = sub_1002E19DC(0);
    if (sub_1002E1E4C(v8, v15, 1, 9u))
    {
      ctu::OsLogContext::OsLogContext(v20, kCtLoggingSystemName, "vinyl.helper");
      v16 = v21;
      ctu::OsLogContext::~OsLogContext(v20);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_1017715A8();
      }
    }

    else
    {
      if (!sub_1002E1D88(v15, &__src, &v18))
      {
        a4[1] = *a4;
        if (__src)
        {
          sub_1001122C4(a4, __src, __src + v18, v18);
          free(__src);
        }

        v11 = 1;
        if (!v15)
        {
          goto LABEL_18;
        }

LABEL_27:
        sub_1002E1A20(v15);
LABEL_18:
        if (v8)
        {
          sub_1002E1A20(v8);
        }

        return v11;
      }

      ctu::OsLogContext::OsLogContext(v20, kCtLoggingSystemName, "vinyl.helper");
      v17 = v21;
      ctu::OsLogContext::~OsLogContext(v20);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_101771610();
      }
    }

    v11 = 0;
    if (!v15)
    {
      goto LABEL_18;
    }

    goto LABEL_27;
  }

  ctu::OsLogContext::OsLogContext(v20, kCtLoggingSystemName, "vinyl.helper");
  v10 = v21;
  ctu::OsLogContext::~OsLogContext(v20);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    sub_101770F68();
  }

  return 0;
}

void sub_100469984(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    sub_1002E1A20(v2);
  }

  if (v1)
  {
    sub_1002E1A20(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004699D8(uint64_t a1, uint64_t *a2)
{
  if (*a1 == *(a1 + 8))
  {
    ctu::OsLogContext::OsLogContext(v12, kCtLoggingSystemName, "vinyl.helper");
    v6 = v13;
    ctu::OsLogContext::~OsLogContext(v12);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_101770F68();
    }

    return 0;
  }

  v4 = sub_1002E19DC(0);
  __src = 0;
  v10 = 0;
  if (sub_1002E1A8C(v4, 2, 0, *a1, *(a1 + 8) - *a1, 0))
  {
    ctu::OsLogContext::OsLogContext(v12, kCtLoggingSystemName, "vinyl.helper");
    v5 = v13;
    ctu::OsLogContext::~OsLogContext(v12);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1017714D8();
    }
  }

  else
  {
    if (!sub_1002E1D88(v4, &__src, &v10))
    {
      a2[1] = *a2;
      if (__src)
      {
        sub_1001122C4(a2, __src, __src + v10, v10);
        free(__src);
      }

      v7 = 1;
      if (v4)
      {
        goto LABEL_12;
      }

      return v7;
    }

    ctu::OsLogContext::OsLogContext(v12, kCtLoggingSystemName, "vinyl.helper");
    v8 = v13;
    ctu::OsLogContext::~OsLogContext(v12);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_101770F00();
    }
  }

  v7 = 0;
  if (v4)
  {
LABEL_12:
    sub_1002E1A20(v4);
  }

  return v7;
}

void sub_100469B8C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1002E1A20(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100469BB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v6 = (a1 + 23);
  v5 = *(a1 + 23);
  v7 = (a1 + 8);
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a1 + 8);
  }

  if (v5 && *a3 != *(a3 + 8) && *a2 != *(a2 + 8) && *a4 != *(a4 + 8))
  {
    v13 = sub_1002E19DC(0);
    __src = 0;
    v34 = 0;
    if (sub_1002E1A8C(v13, 2, 0, *a2, *(a2 + 8) - *a2, 0))
    {
      ctu::OsLogContext::OsLogContext(&v31, kCtLoggingSystemName, "vinyl.helper");
      v14 = v32;
      ctu::OsLogContext::~OsLogContext(&v31);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_101771678();
      }

LABEL_17:
      v16 = 0;
LABEL_18:
      if (v13)
      {
        sub_1002E1A20(v13);
      }

      return v16;
    }

    if (sub_1002E1A8C(v13, 2, 1u, *a3, *(a3 + 8) - *a3, 0))
    {
      ctu::OsLogContext::OsLogContext(&v31, kCtLoggingSystemName, "vinyl.helper");
      v18 = v32;
      ctu::OsLogContext::~OsLogContext(&v31);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_1017716E0();
      }

      goto LABEL_17;
    }

    v19 = sub_1002E19DC(0);
    if (sub_1002E1E4C(v13, v19, 0, 0x10u))
    {
      ctu::OsLogContext::OsLogContext(&v31, kCtLoggingSystemName, "vinyl.helper");
      v20 = v32;
      ctu::OsLogContext::~OsLogContext(&v31);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_1017715A8();
      }

LABEL_26:
      v16 = 0;
LABEL_27:
      if (v19)
      {
        sub_1002E1A20(v19);
      }

      goto LABEL_18;
    }

    if (sub_1002E1A8C(v19, 1, 1u, *a4, *(a4 + 8) - *a4, 0))
    {
      ctu::OsLogContext::OsLogContext(&v31, kCtLoggingSystemName, "vinyl.helper");
      v21 = v32;
      ctu::OsLogContext::~OsLogContext(&v31);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_101771748();
      }

      goto LABEL_26;
    }

    v31 = 0;
    v32 = 0;
    v33 = 0;
    if (*v6 < 0)
    {
      sub_100005F2C(__p, *a1, *(a1 + 8));
    }

    else
    {
      *__p = *a1;
      v30 = *(a1 + 16);
    }

    subscriber::encodeIccid();
    if (SHIBYTE(v30) < 0)
    {
      operator delete(__p[0]);
    }

    if (v31 == v32)
    {
      ctu::OsLogContext::OsLogContext(&v27, kCtLoggingSystemName, "vinyl.helper");
      v23 = v28;
      ctu::OsLogContext::~OsLogContext(&v27);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_1017717B0(v6, v7, v23);
      }

      goto LABEL_40;
    }

    if (sub_1002E1A8C(v19, 1, 0x1Au, v31, v32 - v31, 0))
    {
      ctu::OsLogContext::OsLogContext(&v27, kCtLoggingSystemName, "vinyl.helper");
      v22 = v28;
      ctu::OsLogContext::~OsLogContext(&v27);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_1017716E0();
      }

LABEL_40:
      v16 = 0;
      goto LABEL_41;
    }

    v24 = sub_1002E19DC(0);
    if (sub_1002E1E4C(v19, v24, 0, 0x10u))
    {
      ctu::OsLogContext::OsLogContext(&v27, kCtLoggingSystemName, "vinyl.helper");
      v25 = v28;
      ctu::OsLogContext::~OsLogContext(&v27);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_1017715A8();
      }
    }

    else
    {
      if (!sub_1002E1D88(v24, &__src, &v34))
      {
        a5[1] = *a5;
        if (__src)
        {
          sub_1001122C4(a5, __src, __src + v34, v34);
          free(__src);
        }

        v16 = 1;
        if (!v24)
        {
          goto LABEL_41;
        }

LABEL_50:
        sub_1002E1A20(v24);
LABEL_41:
        if (v31)
        {
          v32 = v31;
          operator delete(v31);
        }

        goto LABEL_27;
      }

      ctu::OsLogContext::OsLogContext(&v27, kCtLoggingSystemName, "vinyl.helper");
      v26 = v28;
      ctu::OsLogContext::~OsLogContext(&v27);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_101770F00();
      }
    }

    v16 = 0;
    if (!v24)
    {
      goto LABEL_41;
    }

    goto LABEL_50;
  }

  ctu::OsLogContext::OsLogContext(&v31, kCtLoggingSystemName, "vinyl.helper");
  v15 = v32;
  ctu::OsLogContext::~OsLogContext(&v31);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    sub_101770F68();
  }

  return 0;
}

void sub_10046A0C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18)
{
  if (v20)
  {
    sub_1002E1A20(v20);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (v19)
  {
    sub_1002E1A20(v19);
  }

  if (v18)
  {
    sub_1002E1A20(v18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10046A178(char **a1, __int128 *a2)
{
  v2 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x2E8BA2E8BA2E8BALL)
  {
    sub_1000CE3D4();
  }

  if (0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 3)) >= 0x1745D1745D1745DLL)
  {
    v6 = 0x2E8BA2E8BA2E8BALL;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_10046A3A4(a1, v6);
  }

  v13 = 0;
  v14 = 88 * v2;
  sub_10046A2C0((88 * v2), a2);
  v15 = (88 * v2 + 88);
  v7 = a1[1];
  v8 = (88 * v2 + *a1 - v7);
  sub_10046A400(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_10046A600(&v13);
  return v12;
}

void sub_10046A2AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10046A600(va);
  _Unwind_Resume(a1);
}

char *sub_10046A2C0(char *__dst, __int128 *a2)
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

  *(__dst + 6) = *(a2 + 6);
  if (*(a2 + 55) < 0)
  {
    sub_100005F2C(__dst + 32, *(a2 + 4), *(a2 + 5));
  }

  else
  {
    v5 = a2[2];
    *(__dst + 6) = *(a2 + 6);
    *(__dst + 2) = v5;
  }

  if (*(a2 + 79) < 0)
  {
    sub_100005F2C(__dst + 56, *(a2 + 7), *(a2 + 8));
  }

  else
  {
    v6 = *(a2 + 56);
    *(__dst + 9) = *(a2 + 9);
    *(__dst + 56) = v6;
  }

  *(__dst + 20) = *(a2 + 20);
  return __dst;
}

void sub_10046A370(_Unwind_Exception *exception_object)
{
  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10046A3A4(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2E8BA2E8BA2E8BBLL)
  {
    operator new();
  }

  sub_100013D10();
}

uint64_t sub_10046A400(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v14 = a4;
  v15 = a4;
  v12[0] = a1;
  v12[1] = &v14;
  v12[2] = &v15;
  v13 = 0;
  if (a2 == a3)
  {
    LOBYTE(v13) = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      v8 = *v7;
      *(a4 + 16) = *(v7 + 2);
      *a4 = v8;
      *(v7 + 1) = 0;
      *(v7 + 2) = 0;
      *v7 = 0;
      *(a4 + 24) = *(v7 + 6);
      v9 = v7[2];
      *(a4 + 48) = *(v7 + 6);
      *(a4 + 32) = v9;
      *(v7 + 5) = 0;
      *(v7 + 6) = 0;
      *(v7 + 4) = 0;
      v10 = *(v7 + 56);
      *(a4 + 72) = *(v7 + 9);
      *(a4 + 56) = v10;
      *(v7 + 8) = 0;
      *(v7 + 9) = 0;
      *(v7 + 7) = 0;
      *(a4 + 80) = *(v7 + 20);
      v7 = (v7 + 88);
      a4 += 88;
    }

    while (v7 != a3);
    v15 = a4;
    LOBYTE(v13) = 1;
    while (v5 != a3)
    {
      sub_10046A50C(a1, v5);
      v5 = (v5 + 88);
    }
  }

  return sub_10046A574(v12);
}

void sub_10046A50C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 79) < 0)
  {
    operator delete(*(a2 + 56));
  }

  if (*(a2 + 55) < 0)
  {
    operator delete(*(a2 + 32));
  }

  if (*(a2 + 23) < 0)
  {
    v3 = *a2;

    operator delete(v3);
  }
}

uint64_t sub_10046A574(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_10046A5AC(a1);
  }

  return a1;
}

void sub_10046A5AC(uint64_t *a1)
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
      v3 -= 88;
      sub_10046A50C(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t sub_10046A600(uint64_t a1)
{
  sub_10046A638(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10046A638(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 88;
    sub_10046A50C(v5, v4 - 88);
  }
}

void *sub_10046A680(void *result, void *a2, uint64_t *a3)
{
  v4 = *a3;
  v3 = a3[1];
  *result = off_101E4E6B8;
  result[1] = v4;
  result[2] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  v5 = a2[1];
  result[3] = *a2;
  result[4] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

unsigned int *sub_10046A6D0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v46[0] = 0;
  v46[1] = 0;
  sub_1004717B4(v46, 524524);
  v44 = 0;
  v45 = 0;
  v43 = 0;
  ServiceMap = Registry::getServiceMap(*(a1 + 24));
  v7 = ServiceMap;
  if (v8 < 0)
  {
    v9 = (v8 & 0x7FFFFFFFFFFFFFFFLL);
    v10 = 5381;
    do
    {
      v8 = v10;
      v11 = *v9++;
      v10 = (33 * v10) ^ v11;
    }

    while (v11);
  }

  std::mutex::lock(ServiceMap);
  *buf = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, buf);
  if (v12)
  {
    v14 = v12[3];
    v13 = v12[4];
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v7);
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v13);
      v15 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v14 = 0;
  }

  std::mutex::unlock(v7);
  v13 = 0;
  v15 = 1;
LABEL_9:
  if ((*(a2 + 23) & 0x8000000000000000) == 0)
  {
    if (*(a2 + 23))
    {
      goto LABEL_11;
    }

LABEL_19:
    v18 = kCtLoggingSystemName;
    ctu::OsLogContext::OsLogContext(buf, kCtLoggingSystemName, "cp.awd");
    v23 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      goto LABEL_26;
    }

    *buf = 0;
    v24 = "Bootstrap iccid of slot 1 is empty!";
    v25 = v23;
    v26 = 2;
LABEL_25:
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, v24, buf, v26);
    goto LABEL_26;
  }

  if (!a2[1])
  {
    goto LABEL_19;
  }

LABEL_11:
  if (((*(*v14 + 64))(v14, a2, &v45, &v44, &v43) & 1) == 0)
  {
    v18 = kCtLoggingSystemName;
    ctu::OsLogContext::OsLogContext(buf, kCtLoggingSystemName, "cp.awd");
    v27 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      goto LABEL_26;
    }

    if (*(a2 + 23) < 0)
    {
      a2 = *a2;
    }

    *buf = 136315138;
    *&buf[4] = a2;
    v24 = "Invalid subscriber ID: %s";
    v25 = v27;
    v26 = 12;
    goto LABEL_25;
  }

  v17 = v44;
  v16 = v45;
  v18 = kCtLoggingSystemName;
  ctu::OsLogContext::OsLogContext(buf, kCtLoggingSystemName, "cp.awd");
  v19 = v16 - v17;
  v20 = *&buf[8];
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    if (*(a2 + 23) < 0)
    {
      a2 = *a2;
    }

    *buf = 136315650;
    *&buf[4] = a2;
    *&buf[12] = 2048;
    *&buf[14] = v19;
    v48 = 2048;
    v49 = v44;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Bootstrap(%s) data usage queried. domestic: %lld, roaming: %lld", buf, 0x20u);
  }

  v21 = v46[0];
  if (v46[0])
  {
    v22 = v44;
    *(v46[0] + 13) |= 6u;
    *(v21 + 2) = v19;
    *(v21 + 3) = v22;
  }

LABEL_26:
  v41 = 0;
  v42 = 0;
  v40 = 0;
  if ((*(a3 + 23) & 0x8000000000000000) == 0)
  {
    if (*(a3 + 23))
    {
      goto LABEL_28;
    }

LABEL_36:
    ctu::OsLogContext::OsLogContext(buf, v18, "cp.awd");
    v34 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (!os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      goto LABEL_43;
    }

    *buf = 0;
    v35 = "Bootstrap iccid of slot 2 is empty!";
    v36 = v34;
    v37 = 2;
LABEL_42:
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, v35, buf, v37);
    goto LABEL_43;
  }

  if (!a3[1])
  {
    goto LABEL_36;
  }

LABEL_28:
  if (((*(*v14 + 64))(v14, a3, &v42, &v41, &v40) & 1) == 0)
  {
    ctu::OsLogContext::OsLogContext(buf, v18, "cp.awd");
    v38 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (!os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      goto LABEL_43;
    }

    if (*(a3 + 23) < 0)
    {
      a3 = *a3;
    }

    *buf = 136315138;
    *&buf[4] = a3;
    v35 = "Invalid subscriber ID: %s";
    v36 = v38;
    v37 = 12;
    goto LABEL_42;
  }

  v29 = v41;
  v28 = v42;
  ctu::OsLogContext::OsLogContext(buf, v18, "cp.awd");
  v30 = v28 - v29;
  v31 = *&buf[8];
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
  {
    if (*(a3 + 23) < 0)
    {
      a3 = *a3;
    }

    *buf = 136315650;
    *&buf[4] = a3;
    *&buf[12] = 2048;
    *&buf[14] = v30;
    v48 = 2048;
    v49 = v41;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "Bootstrap(%s) data usage queried. domestic: %lld, roaming: %lld", buf, 0x20u);
  }

  v32 = v46[0];
  if (v46[0])
  {
    v33 = v41;
    *(v46[0] + 13) |= 0x18u;
    *(v32 + 4) = v30;
    *(v32 + 5) = v33;
  }

LABEL_43:
  if ((v15 & 1) == 0)
  {
    sub_100004A34(v13);
  }

  return sub_10047189C(v46);
}

void sub_10046ABC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v13);
  }

  sub_10047189C(va);
  _Unwind_Resume(a1);
}

const void **sub_10046AC24(int a1, uint64_t a2, UInt8 *bytes, uint64_t a4)
{
  v4 = a4;
  v5 = bytes;
  v6 = bytes[23];
  if (v6 < 0)
  {
    v7 = v5;
    v5 = *v5;
    v6 = *(v7 + 1);
  }

  v8 = CFDataCreateWithBytesNoCopy(kCFAllocatorDefault, v5, v6, kCFAllocatorNull);
  v14 = v8;
  __p[0] = 0;
  __p[1] = 0;
  v13 = 0;
  v11 = v8;
  if (v8)
  {
    CFRetain(v8);
  }

  CodingUtility::SHA1();
  sub_10002D760(&v11);
  v9 = VinylSlotIdToInt();
  sub_1007A0C50(__p, 0, v4, v9);
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p[0]);
  }

  return sub_10002D760(&v14);
}

void sub_10046ACE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  sub_10002D760(&a10);
  sub_10002D760((v16 - 24));
  _Unwind_Resume(a1);
}

void sub_10046AD18(capabilities::ct *a1)
{
  if (capabilities::ct::supportsRemoteCellularPlan(a1))
  {
    v2[0] = _NSConcreteStackBlock;
    v2[1] = 3221225472;
    v2[2] = sub_10046ADA0;
    v2[3] = &unk_101E4E7F0;
    v2[4] = a1;
    sub_10079D8A0(524552, v2);
  }
}

void sub_10046ADA0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(v1 + 8);
      if (v5)
      {
        (*(*v5 + 8))(v5);
      }

      sub_100004A34(v4);
    }
  }
}

void sub_10046AE34(uint64_t a1)
{
  v2 = capabilities::ct::supportsSequoia(a1);
  if (v2)
  {
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10046B0DC;
    v22[3] = &unk_101E4E7F0;
    v22[4] = a1;
    sub_10079D8A0(524524, v22);
  }

  if (capabilities::ct::supportedVinylSlotCount(v2))
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      v4 = std::__shared_weak_count::lock(v3);
      if (v4)
      {
        v5 = v4;
        v6 = *(a1 + 8);
        if (v6)
        {
          ServiceMap = Registry::getServiceMap(*(a1 + 24));
          v8 = ServiceMap;
          if ((v9 & 0x8000000000000000) != 0)
          {
            v10 = (v9 & 0x7FFFFFFFFFFFFFFFLL);
            v11 = 5381;
            do
            {
              v9 = v11;
              v12 = *v10++;
              v11 = (33 * v11) ^ v12;
            }

            while (v12);
          }

          std::mutex::lock(ServiceMap);
          v23 = v9;
          v13 = sub_100009510(&v8[1].__m_.__sig, &v23);
          if (v13)
          {
            v15 = v13[3];
            v14 = v13[4];
            if (v14)
            {
              atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
              std::mutex::unlock(v8);
              atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
              sub_100004A34(v14);
              if (!v15)
              {
LABEL_25:
                sub_100004A34(v14);
                goto LABEL_26;
              }

LABEL_16:
              v16 = *(a1 + 16);
              v20 = *(a1 + 8);
              v21 = v16;
              if (v16)
              {
                atomic_fetch_add_explicit(&v16->__shared_weak_owners_, 1uLL, memory_order_relaxed);
              }

              (*(*v6 + 24))(&object, v6);
              v17[0] = _NSConcreteStackBlock;
              v17[1] = 3321888768;
              v17[2] = sub_10046B304;
              v17[3] = &unk_101E4E810;
              v17[4] = v6;
              v18 = v5;
              atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
              sub_10046B170(v15, "commCenterCellularPlanProfilesStatus", 1, &v20, &object, v17);
              if (object)
              {
                dispatch_release(object);
              }

              if (v21)
              {
                std::__shared_weak_count::__release_weak(v21);
              }

              if (v18)
              {
                sub_100004A34(v18);
              }

              if (!v14)
              {
                goto LABEL_26;
              }

              goto LABEL_25;
            }

            std::mutex::unlock(v8);
            if (v15)
            {
              goto LABEL_16;
            }
          }

          else
          {
            std::mutex::unlock(v8);
          }
        }

LABEL_26:
        sub_100004A34(v5);
      }
    }
  }
}

void sub_10046B084(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, dispatch_object_t object, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a15)
  {
    sub_100004A34(a15);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_weak(a18);
  }

  if (v19)
  {
    sub_100004A34(v19);
  }

  sub_100004A34(v18);
  _Unwind_Resume(a1);
}

void sub_10046B0DC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(v1 + 8);
      if (v5)
      {
        (**v5)(v5);
      }

      sub_100004A34(v4);
    }
  }
}

void sub_10046B170(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, dispatch_object_t *a5, void *a6)
{
  v11 = a6;
  v12 = v11;
  if (a2 && v11 && *a5)
  {
    v13 = objc_retainBlock(v11);
    v14 = v13;
    object = *a5;
    *a5 = 0;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3321888768;
    v17[2] = sub_100471A98;
    v17[3] = &unk_101E4E878;
    v15 = a4[1];
    v17[4] = *a4;
    v18 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v19 = objc_retainBlock(v13);
    (*(*a1 + 40))(a1, a2, a3, &object, v17);
    if (object)
    {
      dispatch_release(object);
    }

    v16 = v19;
    v19 = 0;

    if (v18)
    {
      std::__shared_weak_count::__release_weak(v18);
    }
  }
}

void sub_10046B2C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *a15, dispatch_object_t object)
{
  if (a14)
  {
    std::__shared_weak_count::__release_weak(a14);
  }

  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10046B32C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10046B348(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

void sub_10046B358(uint64_t a1, BOOL *a2, uint64_t *a3, uint64_t *a4)
{
  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = sub_10046BAA8;
  v47[3] = &unk_101E4E840;
  v47[4] = a3;
  v47[5] = a4;
  v47[6] = a2;
  sub_10046B8E8(0x800D5u, v47);
  ServiceMap = Registry::getServiceMap(*(a1 + 24));
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
  v37 = v10;
  v14 = sub_100009510(&v9[1].__m_.__sig, &v37);
  if (v14)
  {
    v16 = v14[3];
    v15 = v14[4];
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v9);
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v15);
      v17 = 0;
      if (!v16)
      {
        goto LABEL_7;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v16 = 0;
  }

  std::mutex::unlock(v9);
  v15 = 0;
  v17 = 1;
  if (!v16)
  {
LABEL_7:
    ctu::OsLogContext::OsLogContext(&v37, kCtLoggingSystemName, "cp.awd");
    v18 = v38;
    ctu::OsLogContext::~OsLogContext(&v37);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_101771840(v18);
      if (v17)
      {
        return;
      }

      goto LABEL_46;
    }

LABEL_45:
    if (v17)
    {
      return;
    }

    goto LABEL_46;
  }

LABEL_12:
  memset(&v46, 0, sizeof(v46));
  memset(&v45, 0, sizeof(v45));
  memset(&v44, 0, sizeof(v44));
  v42 = "+";
  v43 = "_";
  v37 = &v46;
  v38 = &v43;
  v39 = &v45;
  v40 = &v44;
  v41 = &v42;
  sub_10046BD14(&v37, a3);
  std::string::append(&v46, "/", 1uLL);
  std::string::append(&v45, "/", 1uLL);
  std::string::append(&v44, "/", 1uLL);
  sub_10046BD14(&v37, a4);
  v36 = 0;
  v19 = xpc_dictionary_create(0, 0, 0);
  v20 = v19;
  if (v19)
  {
    v36 = v19;
  }

  else
  {
    v20 = xpc_null_create();
    v36 = v20;
    if (!v20)
    {
      v21 = xpc_null_create();
      v20 = 0;
      goto LABEL_19;
    }
  }

  if (xpc_get_type(v20) == &_xpc_type_dictionary)
  {
    xpc_retain(v20);
    goto LABEL_20;
  }

  v21 = xpc_null_create();
LABEL_19:
  v36 = v21;
LABEL_20:
  xpc_release(v20);
  if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = &v46;
  }

  else
  {
    v22 = v46.__r_.__value_.__r.__words[0];
  }

  v34 = xpc_string_create(v22);
  if (!v34)
  {
    v34 = xpc_null_create();
  }

  v32 = &v36;
  v33 = "profiles_from_to";
  sub_10000F688(&v32, &v34, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v34);
  v34 = 0;
  if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v23 = &v45;
  }

  else
  {
    v23 = v45.__r_.__value_.__r.__words[0];
  }

  v30 = xpc_string_create(v23);
  if (!v30)
  {
    v30 = xpc_null_create();
  }

  v32 = &v36;
  v33 = "profiles_from_to_sim_type";
  sub_10000F688(&v32, &v30, &v31);
  xpc_release(v31);
  v31 = 0;
  xpc_release(v30);
  v30 = 0;
  if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v24 = &v44;
  }

  else
  {
    v24 = v44.__r_.__value_.__r.__words[0];
  }

  v28 = xpc_string_create(v24);
  if (!v28)
  {
    v28 = xpc_null_create();
  }

  v32 = &v36;
  v33 = "profiles_from_to_is_bootstrap";
  sub_10000F688(&v32, &v28, &v29);
  xpc_release(v29);
  v29 = 0;
  xpc_release(v28);
  v28 = 0;
  v26 = xpc_BOOL_create(*a2);
  if (!v26)
  {
    v26 = xpc_null_create();
  }

  v32 = &v36;
  v33 = "is_buddy_flow";
  sub_10000F688(&v32, &v26, &v27);
  xpc_release(v27);
  v27 = 0;
  xpc_release(v26);
  v25 = v36;
  v26 = 0;
  if (v36)
  {
    xpc_retain(v36);
  }

  else
  {
    v25 = xpc_null_create();
  }

  (*(*v16 + 16))(v16, "commCenterCellularPlanProfileSwitch", &v25);
  xpc_release(v25);
  v25 = 0;
  xpc_release(v36);
  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  if ((SHIBYTE(v46.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_45;
  }

  operator delete(v46.__r_.__value_.__l.__data_);
  if (v17)
  {
    return;
  }

LABEL_46:
  sub_100004A34(v15);
}

void sub_10046B828(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, xpc_object_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if ((v41 & 1) == 0)
  {
    sub_100004A34(v40);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10046B8E8(unsigned int a1, void *a2)
{
  v3 = a2;
  SharedMetricFactory = wis::MetricFactory::getSharedMetricFactory(v3);
  v9 = wis::MetricFactory::newMetricContainerWithIdentifier(SharedMetricFactory, a1);
  if (v9)
  {
    v7 = 0;
    v8 = 0;
    sub_10001C610(&v7);
    v5 = v7 != 0;
    if (v7)
    {
      operator new();
    }

    if (v8)
    {
      sub_100004A34(v8);
    }
  }

  else
  {
    v5 = 0;
  }

  sub_10001C0A0(&v9);

  return v5;
}

void sub_10046BA1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t a5, uint64_t a6, std::__shared_weak_count *a7, ...)
{
  va_start(va, a7);
  if (a7)
  {
    sub_100004A34(a7);
  }

  sub_10001C0A0(va);

  _Unwind_Resume(a1);
}

uint64_t sub_10046BAA8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 32);
  v5 = *v4;
  v6 = v4[1];
  if (*v4 != v6)
  {
    do
    {
      v7 = *(a2 + 44);
      v8 = *(a2 + 40);
      if (v8 >= v7)
      {
        if (v7 == *(a2 + 48))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 32), v7 + 1);
          v7 = *(a2 + 44);
        }

        *(a2 + 44) = v7 + 1;
        sub_100471624();
      }

      v9 = *(a2 + 32);
      *(a2 + 40) = v8 + 1;
      v10 = *(v9 + 8 * v8);
      *(v10 + 48) |= 0x20u;
      v11 = *(v10 + 32);
      if (v11 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      std::string::operator=(v11, v5);
      v13 = v5[1].__r_.__value_.__s.__data_[0];
      *(v10 + 48) |= 4u;
      *(v10 + 24) = v13;
      if (v5[1].__r_.__value_.__s.__data_[1])
      {
        v14 = 2;
      }

      else
      {
        v14 = 1;
      }

      result = awd::metrics::CommCenterCellularSimType_IsValid(v14, v12);
      if ((result & 1) == 0)
      {
        sub_101771884();
      }

      *(v10 + 48) |= 0x40u;
      *(v10 + 40) = v14;
      v5 = (v5 + 32);
    }

    while (v5 != v6);
  }

  v15 = *(v3 + 40);
  v16 = *v15;
  v17 = v15[1];
  if (*v15 != v17)
  {
    do
    {
      v18 = *(a2 + 68);
      v19 = *(a2 + 64);
      if (v19 >= v18)
      {
        if (v18 == *(a2 + 72))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 56), v18 + 1);
          v18 = *(a2 + 68);
        }

        *(a2 + 68) = v18 + 1;
        sub_100471624();
      }

      v20 = *(a2 + 56);
      *(a2 + 64) = v19 + 1;
      v21 = *(v20 + 8 * v19);
      *(v21 + 48) |= 0x20u;
      v22 = *(v21 + 32);
      if (v22 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      std::string::operator=(v22, v16);
      v24 = v16[1].__r_.__value_.__s.__data_[0];
      *(v21 + 48) |= 4u;
      *(v21 + 24) = v24;
      if (v16[1].__r_.__value_.__s.__data_[1])
      {
        v25 = 2;
      }

      else
      {
        v25 = 1;
      }

      result = awd::metrics::CommCenterCellularSimType_IsValid(v25, v23);
      if ((result & 1) == 0)
      {
        sub_101771884();
      }

      *(v21 + 48) |= 0x40u;
      *(v21 + 40) = v25;
      v16 = (v16 + 32);
    }

    while (v16 != v17);
  }

  v26 = **(v3 + 48);
  *(a2 + 88) |= 0x20u;
  *(a2 + 80) = v26;
  return result;
}

void sub_10046BD14(std::string **a1, uint64_t *a2)
{
  v2 = *a2;
  if (a2[1] != *a2)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v33 = 0u;
      v34 = 0u;
      sub_100471688(&v33, (v2 + v5));
      __dst[0] = 0;
      __dst[1] = 0;
      v32 = 0;
      if (SBYTE7(v34) < 0)
      {
        sub_100005F2C(__dst, v33, *(&v33 + 1));
      }

      else
      {
        *__dst = v33;
        v32 = v34;
      }

      v28 = 0;
      v29 = 0;
      v30 = 0;
      if (BYTE8(v34))
      {
        v7 = "true";
      }

      else
      {
        v7 = "false";
      }

      sub_10000501C(&v28, v7);
      v25 = 0;
      v26 = 0;
      v27 = 0;
      if (BYTE9(v34))
      {
        v8 = "ESIM";
      }

      else
      {
        v8 = "PSIM";
      }

      sub_10000501C(&v25, v8);
      if (v32 >= 0)
      {
        v9 = HIBYTE(v32);
      }

      else
      {
        v9 = __dst[1];
      }

      memset(&v22, 0, sizeof(v22));
      sub_1000677C4(&v22, v9 + 1);
      if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v10 = &v22;
      }

      else
      {
        v10 = v22.__r_.__value_.__r.__words[0];
      }

      if (v9)
      {
        if (v32 >= 0)
        {
          v11 = __dst;
        }

        else
        {
          v11 = __dst[0];
        }

        memmove(v10, v11, v9);
      }

      *(&v10->__r_.__value_.__l.__data_ + v9) = 95;
      if (v27 >= 0)
      {
        v12 = &v25;
      }

      else
      {
        v12 = v25;
      }

      if (v27 >= 0)
      {
        v13 = HIBYTE(v27);
      }

      else
      {
        v13 = v26;
      }

      v14 = std::string::append(&v22, v12, v13);
      v15 = *&v14->__r_.__value_.__l.__data_;
      v24 = v14->__r_.__value_.__r.__words[2];
      *__p = v15;
      v14->__r_.__value_.__l.__size_ = 0;
      v14->__r_.__value_.__r.__words[2] = 0;
      v14->__r_.__value_.__r.__words[0] = 0;
      if (v24 >= 0)
      {
        v16 = __p;
      }

      else
      {
        v16 = __p[0];
      }

      if (v24 >= 0)
      {
        v17 = HIBYTE(v24);
      }

      else
      {
        v17 = __p[1];
      }

      std::string::append(*a1, v16, v17);
      if (SHIBYTE(v24) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v22.__r_.__value_.__l.__data_);
      }

      if (v27 >= 0)
      {
        v18 = &v25;
      }

      else
      {
        v18 = v25;
      }

      if (v27 >= 0)
      {
        v19 = HIBYTE(v27);
      }

      else
      {
        v19 = v26;
      }

      std::string::append(a1[2], v18, v19);
      if (v30 >= 0)
      {
        v20 = &v28;
      }

      else
      {
        v20 = v28;
      }

      if (v30 >= 0)
      {
        v21 = HIBYTE(v30);
      }

      else
      {
        v21 = v29;
      }

      std::string::append(a1[3], v20, v21);
      if (v6 != ((a2[1] - *a2) >> 5) - 1)
      {
        std::string::append(*a1, "+", 1uLL);
        std::string::append(a1[2], "+", 1uLL);
        std::string::append(a1[3], "+", 1uLL);
      }

      if (SHIBYTE(v27) < 0)
      {
        operator delete(v25);
      }

      if (SHIBYTE(v30) < 0)
      {
        operator delete(v28);
      }

      if (SHIBYTE(v32) < 0)
      {
        operator delete(__dst[0]);
      }

      if (SBYTE7(v34) < 0)
      {
        operator delete(v33);
      }

      ++v6;
      v2 = *a2;
      v5 += 32;
    }

    while (v6 < (a2[1] - *a2) >> 5);
  }
}

void sub_10046BFEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *__p, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (a47 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10046C084(uint64_t a1, BOOL a2, BOOL a3, BOOL a4, BOOL a5)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 24));
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
  v29 = v11;
  v15 = sub_100009510(&v10[1].__m_.__sig, &v29);
  if (!v15)
  {
    v17 = 0;
LABEL_9:
    std::mutex::unlock(v10);
    v16 = 0;
    v18 = 1;
    if (!v17)
    {
      goto LABEL_30;
    }

    goto LABEL_10;
  }

  v17 = v15[3];
  v16 = v15[4];
  if (!v16)
  {
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v10);
  atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v16);
  v18 = 0;
  if (!v17)
  {
    goto LABEL_30;
  }

LABEL_10:
  v33 = 0;
  v19 = xpc_dictionary_create(0, 0, 0);
  v20 = v19;
  if (v19)
  {
    v33 = v19;
  }

  else
  {
    v20 = xpc_null_create();
    v33 = v20;
    if (!v20)
    {
      v21 = xpc_null_create();
      v20 = 0;
      goto LABEL_17;
    }
  }

  if (xpc_get_type(v20) != &_xpc_type_dictionary)
  {
    v21 = xpc_null_create();
LABEL_17:
    v33 = v21;
    goto LABEL_18;
  }

  xpc_retain(v20);
LABEL_18:
  xpc_release(v20);
  v31 = xpc_BOOL_create(a3);
  if (!v31)
  {
    v31 = xpc_null_create();
  }

  v29 = &v33;
  v30 = "is_bootstrap_active";
  sub_10000F688(&v29, &v31, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v31);
  v31 = 0;
  v27 = xpc_BOOL_create(a4);
  if (!v27)
  {
    v27 = xpc_null_create();
  }

  v29 = &v33;
  v30 = "has_wifi";
  sub_10000F688(&v29, &v27, &v28);
  xpc_release(v28);
  v28 = 0;
  xpc_release(v27);
  v27 = 0;
  v25 = xpc_BOOL_create(a5);
  if (!v25)
  {
    v25 = xpc_null_create();
  }

  v29 = &v33;
  v30 = "has_internet";
  sub_10000F688(&v29, &v25, &v26);
  xpc_release(v26);
  v26 = 0;
  xpc_release(v25);
  v25 = 0;
  v23 = xpc_BOOL_create(a2);
  if (!v23)
  {
    v23 = xpc_null_create();
  }

  v29 = &v33;
  v30 = "is_renewal";
  sub_10000F688(&v29, &v23, &v24);
  xpc_release(v24);
  v24 = 0;
  xpc_release(v23);
  v22 = v33;
  v23 = 0;
  if (v33)
  {
    xpc_retain(v33);
  }

  else
  {
    v22 = xpc_null_create();
  }

  (*(*v17 + 16))(v17, "commCenterCellularPlanPurchaseComplete", &v22);
  xpc_release(v22);
  v22 = 0;
  xpc_release(v33);
LABEL_30:
  if ((v18 & 1) == 0)
  {
    sub_100004A34(v16);
  }
}

void sub_10046C3B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, xpc_object_t a20)
{
  xpc_release(object);
  xpc_release(a20);
  if ((v21 & 1) == 0)
  {
    sub_100004A34(v20);
  }

  _Unwind_Resume(a1);
}

BOOL sub_10046C42C(uint64_t a1, uint64_t a2)
{
  v2 = VinylSlotIdToInt();

  return sub_1007A0368(v2);
}

BOOL sub_10046C458(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a5;
  v7 = a4;
  v8 = a3;
  v10 = VinylSlotIdToInt();
  if (a2)
  {

    return sub_1007A00F0(v8, v7, v6, v10);
  }

  else
  {

    return sub_1007A0B98(v8, v7, v6, v10);
  }
}

void sub_10046C4D8(uint64_t a1, uint64_t a2, BOOL a3, BOOL a4, BOOL a5)
{
  v8 = a2;
  ServiceMap = Registry::getServiceMap(*(a1 + 24));
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
  __p = v11;
  v15 = sub_100009510(&v10[1].__m_.__sig, &__p);
  if (!v15)
  {
    v17 = 0;
LABEL_9:
    std::mutex::unlock(v10);
    v16 = 0;
    v18 = 1;
    if (!v17)
    {
      goto LABEL_35;
    }

    goto LABEL_10;
  }

  v17 = v15[3];
  v16 = v15[4];
  if (!v16)
  {
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v10);
  atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v16);
  v18 = 0;
  if (!v17)
  {
    goto LABEL_35;
  }

LABEL_10:
  v36 = 0;
  v19 = xpc_dictionary_create(0, 0, 0);
  v20 = v19;
  if (v19)
  {
    v36 = v19;
  }

  else
  {
    v20 = xpc_null_create();
    v36 = v20;
    if (!v20)
    {
      v21 = xpc_null_create();
      v20 = 0;
      goto LABEL_17;
    }
  }

  if (xpc_get_type(v20) != &_xpc_type_dictionary)
  {
    v21 = xpc_null_create();
LABEL_17:
    v36 = v21;
    goto LABEL_18;
  }

  xpc_retain(v20);
LABEL_18:
  xpc_release(v20);
  sub_1006327E0(v8, &__p);
  if (v33 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  object = xpc_string_create(p_p);
  if (!object)
  {
    object = xpc_null_create();
  }

  v30[0] = &v36;
  v30[1] = "failure";
  sub_10000F688(v30, &object, &v35);
  xpc_release(v35);
  v35 = 0;
  xpc_release(object);
  object = 0;
  if (v33 < 0)
  {
    operator delete(__p);
  }

  v28 = xpc_BOOL_create(a4);
  if (!v28)
  {
    v28 = xpc_null_create();
  }

  __p = &v36;
  v32 = "has_wifi";
  sub_10000F688(&__p, &v28, &v29);
  xpc_release(v29);
  v29 = 0;
  xpc_release(v28);
  v28 = 0;
  v26 = xpc_BOOL_create(a5);
  if (!v26)
  {
    v26 = xpc_null_create();
  }

  __p = &v36;
  v32 = "has_internet";
  sub_10000F688(&__p, &v26, &v27);
  xpc_release(v27);
  v27 = 0;
  xpc_release(v26);
  v26 = 0;
  v24 = xpc_BOOL_create(a3);
  if (!v24)
  {
    v24 = xpc_null_create();
  }

  __p = &v36;
  v32 = "is_bootstrap_active";
  sub_10000F688(&__p, &v24, &v25);
  xpc_release(v25);
  v25 = 0;
  xpc_release(v24);
  v23 = v36;
  v24 = 0;
  if (v36)
  {
    xpc_retain(v36);
  }

  else
  {
    v23 = xpc_null_create();
  }

  (*(*v17 + 16))(v17, "commCenterCellularPlanFailure", &v23);
  xpc_release(v23);
  v23 = 0;
  xpc_release(v36);
LABEL_35:
  if ((v18 & 1) == 0)
  {
    sub_100004A34(v16);
  }
}

void sub_10046C834(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(*(v12 - 88));
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  _Unwind_Resume(a1);
}

void sub_10046C8E8(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6)
{
  v6 = a6;
  v7 = a5;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v13 = *(a2 + 16);
  }

  if ((a3 - 1) >= 3)
  {
    v10 = 0;
  }

  else
  {
    v10 = a3;
  }

  if (a4 == 2)
  {
    v11 = 3;
  }

  else
  {
    v11 = 2 * (a4 == 1);
  }

  sub_1007A0814(__p, v10, v11, v7, v6);
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10046C994(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10046C9B0(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  sub_10000501C(__p, "");
  sub_1007A0814(__p, 1, 0, v2, 0);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10046CA10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10046CA2C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  ServiceMap = Registry::getServiceMap(*(a1 + 24));
  v4 = ServiceMap;
  if (v5 < 0)
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
  __p[0] = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, __p);
  if (!v9)
  {
    v11 = 0;
LABEL_9:
    std::mutex::unlock(v4);
    v10 = 0;
    v12 = 1;
    if (!v11)
    {
      goto LABEL_29;
    }

    goto LABEL_10;
  }

  v11 = v9[3];
  v10 = v9[4];
  if (!v10)
  {
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v4);
  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v10);
  v12 = 0;
  if (!v11)
  {
    goto LABEL_29;
  }

LABEL_10:
  v23 = 0;
  v13 = xpc_dictionary_create(0, 0, 0);
  v14 = v13;
  if (v13)
  {
    v23 = v13;
  }

  else
  {
    v14 = xpc_null_create();
    v23 = v14;
    if (!v14)
    {
      v15 = xpc_null_create();
      v14 = 0;
      goto LABEL_17;
    }
  }

  if (xpc_get_type(v14) != &_xpc_type_dictionary)
  {
    v15 = xpc_null_create();
LABEL_17:
    v23 = v15;
    goto LABEL_18;
  }

  xpc_retain(v14);
LABEL_18:
  xpc_release(v14);
  sub_1006327E0(v2, __p);
  if (v20 >= 0)
  {
    v16 = __p;
  }

  else
  {
    v16 = __p[0];
  }

  v21 = xpc_string_create(v16);
  if (!v21)
  {
    v21 = xpc_null_create();
  }

  v18[0] = &v23;
  v18[1] = "failure";
  sub_10000F688(v18, &v21, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v21);
  v21 = 0;
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  v17 = v23;
  if (v23)
  {
    xpc_retain(v23);
  }

  else
  {
    v17 = xpc_null_create();
  }

  (*(*v11 + 16))(v11, "commCenterCellularPlanFailure", &v17);
  xpc_release(v17);
  v17 = 0;
  xpc_release(v23);
LABEL_29:
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v10);
  }
}

void sub_10046CC74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(*(v12 - 56));
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  _Unwind_Resume(a1);
}

void sub_10046CCD0(uint64_t a1, uint64_t *a2, int a3, int a4)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 24));
  v8 = ServiceMap;
  if (v9 < 0)
  {
    v10 = (v9 & 0x7FFFFFFFFFFFFFFFLL);
    v11 = 5381;
    do
    {
      v9 = v11;
      v12 = *v10++;
      v11 = (33 * v11) ^ v12;
    }

    while (v12);
  }

  std::mutex::lock(ServiceMap);
  __p[0] = v9;
  v13 = sub_100009510(&v8[1].__m_.__sig, __p);
  if (!v13)
  {
    v15 = 0;
LABEL_9:
    std::mutex::unlock(v8);
    v14 = 0;
    v16 = 1;
    if (!v15)
    {
      goto LABEL_50;
    }

    goto LABEL_10;
  }

  v15 = v13[3];
  v14 = v13[4];
  if (!v14)
  {
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v8);
  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v14);
  v16 = 0;
  if (!v15)
  {
    goto LABEL_50;
  }

LABEL_10:
  v35 = 0;
  v17 = xpc_dictionary_create(0, 0, 0);
  v18 = v17;
  if (v17)
  {
    v35 = v17;
  }

  else
  {
    v18 = xpc_null_create();
    v35 = v18;
    if (!v18)
    {
      v19 = xpc_null_create();
      v18 = 0;
      goto LABEL_17;
    }
  }

  if (xpc_get_type(v18) == &_xpc_type_dictionary)
  {
    xpc_retain(v18);
    goto LABEL_18;
  }

  v19 = xpc_null_create();
LABEL_17:
  v35 = v19;
LABEL_18:
  xpc_release(v18);
  if ((*(a2 + 23) & 0x80000000) == 0)
  {
    if (!*(a2 + 23))
    {
      goto LABEL_26;
    }

LABEL_23:
    object = xpc_string_create(a2);
    if (!object)
    {
      object = xpc_null_create();
    }

    __p[0] = &v35;
    __p[1] = "carrier_name";
    sub_10000F688(__p, &object, &v34);
    xpc_release(v34);
    v34 = 0;
    xpc_release(object);
    object = 0;
    goto LABEL_26;
  }

  if (a2[1])
  {
    a2 = *a2;
    goto LABEL_23;
  }

LABEL_26:
  if ((a3 - 1) >= 3)
  {
    v20 = 0;
  }

  else
  {
    v20 = a3;
  }

  sub_1007A3D24(v20, __p);
  if (v30 >= 0)
  {
    v21 = __p;
  }

  else
  {
    v21 = __p[0];
  }

  v31 = xpc_string_create(v21);
  if (!v31)
  {
    v31 = xpc_null_create();
  }

  v27 = &v35;
  v28 = "flow_type";
  sub_10000F688(&v27, &v31, &v32);
  xpc_release(v32);
  v32 = 0;
  xpc_release(v31);
  v31 = 0;
  if (v30 < 0)
  {
    operator delete(__p[0]);
  }

  if (a4 == 2)
  {
    v22 = 3;
  }

  else
  {
    v22 = 2 * (a4 == 1);
  }

  sub_1007A3D10(v22, __p);
  if (v30 >= 0)
  {
    v23 = __p;
  }

  else
  {
    v23 = __p[0];
  }

  v25 = xpc_string_create(v23);
  if (!v25)
  {
    v25 = xpc_null_create();
  }

  v27 = &v35;
  v28 = "plan_type";
  sub_10000F688(&v27, &v25, &v26);
  xpc_release(v26);
  v26 = 0;
  xpc_release(v25);
  v25 = 0;
  if (v30 < 0)
  {
    operator delete(__p[0]);
  }

  v24 = v35;
  if (v35)
  {
    xpc_retain(v35);
  }

  else
  {
    v24 = xpc_null_create();
  }

  (*(*v15 + 16))(v15, "commCenterRemoteCellularPlanSignUpCallBackReceived", &v24);
  xpc_release(v24);
  v24 = 0;
  xpc_release(v35);
LABEL_50:
  if ((v16 & 1) == 0)
  {
    sub_100004A34(v14);
  }
}

void sub_10046D040(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(*(v12 - 72));
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  _Unwind_Resume(a1);
}

void sub_10046D0AC(uint64_t a1, uint64_t a2, int a3, int a4, BOOL a5)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 24));
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
  __p = v11;
  v15 = sub_100009510(&v10[1].__m_.__sig, &__p);
  if (!v15)
  {
    v17 = 0;
LABEL_9:
    std::mutex::unlock(v10);
    v16 = 0;
    v18 = 1;
    if (!v17)
    {
      goto LABEL_49;
    }

    goto LABEL_10;
  }

  v17 = v15[3];
  v16 = v15[4];
  if (!v16)
  {
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v10);
  atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v16);
  v18 = 0;
  if (!v17)
  {
    goto LABEL_49;
  }

LABEL_10:
  v41 = 0;
  v19 = xpc_dictionary_create(0, 0, 0);
  v20 = v19;
  if (v19)
  {
    v41 = v19;
  }

  else
  {
    v20 = xpc_null_create();
    v41 = v20;
    if (!v20)
    {
      v21 = xpc_null_create();
      v20 = 0;
      goto LABEL_17;
    }
  }

  if (xpc_get_type(v20) != &_xpc_type_dictionary)
  {
    v21 = xpc_null_create();
LABEL_17:
    v41 = v21;
    goto LABEL_18;
  }

  xpc_retain(v20);
LABEL_18:
  xpc_release(v20);
  if (*(a2 + 23) >= 0)
  {
    v22 = a2;
  }

  else
  {
    v22 = *a2;
  }

  object = xpc_string_create(v22);
  if (!object)
  {
    object = xpc_null_create();
  }

  __p = &v41;
  v35 = "carrier_name";
  sub_10000F688(&__p, &object, &v40);
  xpc_release(v40);
  v40 = 0;
  xpc_release(object);
  object = 0;
  if (a3 == 2)
  {
    v23 = 3;
  }

  else
  {
    v23 = 2 * (a3 == 1);
  }

  sub_1007A3D10(v23, &__p);
  if (v36 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  v37 = xpc_string_create(p_p);
  if (!v37)
  {
    v37 = xpc_null_create();
  }

  v32 = &v41;
  v33 = "plan_type";
  sub_10000F688(&v32, &v37, &v38);
  xpc_release(v38);
  v38 = 0;
  xpc_release(v37);
  v37 = 0;
  if (v36 < 0)
  {
    operator delete(__p);
  }

  if (a4 == 6)
  {
    v25 = 1;
  }

  else
  {
    v25 = 2 * (a4 == 7);
  }

  sub_1007A3D38(v25, &__p);
  if (v36 >= 0)
  {
    v26 = &__p;
  }

  else
  {
    v26 = __p;
  }

  v30 = xpc_string_create(v26);
  if (!v30)
  {
    v30 = xpc_null_create();
  }

  v32 = &v41;
  v33 = "prev_status";
  sub_10000F688(&v32, &v30, &v31);
  xpc_release(v31);
  v31 = 0;
  xpc_release(v30);
  v30 = 0;
  if (v36 < 0)
  {
    operator delete(__p);
  }

  v28 = xpc_BOOL_create(a5);
  if (!v28)
  {
    v28 = xpc_null_create();
  }

  __p = &v41;
  v35 = "did_released";
  sub_10000F688(&__p, &v28, &v29);
  xpc_release(v29);
  v29 = 0;
  xpc_release(v28);
  v27 = v41;
  v28 = 0;
  if (v41)
  {
    xpc_retain(v41);
  }

  else
  {
    v27 = xpc_null_create();
  }

  (*(*v17 + 16))(v17, "commCenterCellularPlanPendingProfileReleased", &v27);
  xpc_release(v27);
  v27 = 0;
  xpc_release(v41);
LABEL_49:
  if ((v18 & 1) == 0)
  {
    sub_100004A34(v16);
  }
}

void sub_10046D464(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(*(v12 - 88));
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  _Unwind_Resume(a1);
}

unsigned int *sub_10046D4E8(uint64_t a1, void *a2, uint64_t a3)
{
  v31[0] = 0;
  v31[1] = 0;
  sub_100471C54(v31, 524552);
  v6 = v31[0];
  if (v31[0])
  {
    v7 = *(a3 + 23);
    if ((v7 & 0x80u) != 0)
    {
      v7 = *(a3 + 8);
    }

    if (v7)
    {
      *(v31[0] + 13) |= 2u;
      v8 = *(v6 + 2);
      if (v8 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      std::string::operator=(v8, a3);
    }

    v9 = a2[1];
    if (*a2 != v9)
    {
      v10 = (*a2 + 32);
      v11 = "set_plan_type";
      while (1)
      {
        v12 = v31[0];
        v13 = *(v31[0] + 9);
        v14 = *(v31[0] + 8);
        if (v14 >= v13)
        {
          if (v13 == *(v31[0] + 10))
          {
            wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v31[0] + 24), v13 + 1);
            v13 = *(v12 + 9);
          }

          *(v12 + 9) = v13 + 1;
          sub_1004716E8();
        }

        v15 = *(v31[0] + 3);
        *(v31[0] + 8) = v14 + 1;
        v16 = *(v15 + 8 * v14);
        v17 = &v10[-2].__r_.__value_.__s.__data_[16];
        v18 = v10[-2].__r_.__value_.__s.__data_[16];
        v19 = v18 == 2 ? 3 : (2 * (v18 == 1));
        if ((awd::metrics::CommCenterCellularPlanType_IsValid(v19, v5) & 1) == 0)
        {
          break;
        }

        *(v16 + 32) |= 1u;
        *(v16 + 8) = v19;
        if ((v10[-2].__r_.__value_.__s.__data_[17] - 2) > 3u)
        {
          v21 = 1;
        }

        else
        {
          v21 = dword_101807D30[(v10[-2].__r_.__value_.__s.__data_[17] - 2)];
        }

        if (!awd::metrics::RemotePlanSubscriptionStatus_IsValid(v21, v20))
        {
          v27 = 6512;
          v11 = "set_subscription_status";
          v28 = "::awd::metrics::RemotePlanSubscriptionStatus_IsValid(value)";
LABEL_34:
          __assert_rtn(v11, "CCMetricsCP.pb.h", v27, v28);
        }

        v22 = *(v16 + 32);
        *(v16 + 12) = v21;
        *(v16 + 32) = v22 | 6;
        v23 = *(v16 + 16);
        if (v23 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        std::string::operator=(v23, v10 - 1);
        if (v10->__r_.__value_.__s.__data_[1] == 1)
        {
          v24 = v10->__r_.__value_.__s.__data_[0];
          *(v16 + 32) |= 8u;
          *(v16 + 24) = v24;
        }

        v10 = (v10 + 40);
        if (v17 + 40 == v9)
        {
          return sub_100471D3C(v31);
        }
      }

      v27 = 6489;
      v28 = "::awd::metrics::CommCenterCellularPlanType_IsValid(value)";
      goto LABEL_34;
    }
  }

  else
  {
    ctu::OsLogContext::OsLogContext(&v29, kCtLoggingSystemName, "cp.awd");
    v25 = v30;
    ctu::OsLogContext::~OsLogContext(&v29);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v29 = 0;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "CommCenterRemoteCellularPlanProfilesStatus metric is not collectable", &v29, 2u);
    }
  }

  return sub_100471D3C(v31);
}

void sub_10046D7CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100471D3C(va);
  _Unwind_Resume(a1);
}

void sub_10046D7EC(uint64_t a1, char a2, uint64_t *a3, BOOL a4, unsigned int a5)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 24));
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
  v30 = v11;
  v15 = sub_100009510(&v10[1].__m_.__sig, &v30);
  if (!v15)
  {
    v17 = 0;
LABEL_9:
    std::mutex::unlock(v10);
    v16 = 0;
    v18 = 1;
    if (!v17)
    {
      goto LABEL_39;
    }

    goto LABEL_10;
  }

  v17 = v15[3];
  v16 = v15[4];
  if (!v16)
  {
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v10);
  atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v16);
  v18 = 0;
  if (!v17)
  {
    goto LABEL_39;
  }

LABEL_10:
  v34 = 0;
  v19 = xpc_dictionary_create(0, 0, 0);
  v20 = v19;
  if (v19)
  {
    v34 = v19;
  }

  else
  {
    v20 = xpc_null_create();
    v34 = v20;
    if (!v20)
    {
      v21 = xpc_null_create();
      v20 = 0;
      goto LABEL_17;
    }
  }

  if (xpc_get_type(v20) == &_xpc_type_dictionary)
  {
    xpc_retain(v20);
    goto LABEL_18;
  }

  v21 = xpc_null_create();
LABEL_17:
  v34 = v21;
LABEL_18:
  xpc_release(v20);
  if ((a2 - 2) > 3u)
  {
    v22 = 1;
  }

  else
  {
    v22 = qword_101807C70[(a2 - 2)];
  }

  v32 = xpc_int64_create(v22);
  if (!v32)
  {
    v32 = xpc_null_create();
  }

  v30 = &v34;
  v31 = "subscription_status";
  sub_10000F688(&v30, &v32, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v32);
  v32 = 0;
  if ((*(a3 + 23) & 0x80000000) == 0)
  {
    if (!*(a3 + 23))
    {
      goto LABEL_31;
    }

LABEL_28:
    v28 = xpc_string_create(a3);
    if (!v28)
    {
      v28 = xpc_null_create();
    }

    v30 = &v34;
    v31 = "carrier_name";
    sub_10000F688(&v30, &v28, &v29);
    xpc_release(v29);
    v29 = 0;
    xpc_release(v28);
    v28 = 0;
    goto LABEL_31;
  }

  if (a3[1])
  {
    a3 = *a3;
    goto LABEL_28;
  }

LABEL_31:
  v26 = xpc_BOOL_create(a4);
  if (!v26)
  {
    v26 = xpc_null_create();
  }

  v30 = &v34;
  v31 = "esim_modification_allowed";
  sub_10000F688(&v30, &v26, &v27);
  xpc_release(v27);
  v27 = 0;
  xpc_release(v26);
  v26 = 0;
  v24 = xpc_int64_create(a5);
  if (!v24)
  {
    v24 = xpc_null_create();
  }

  v30 = &v34;
  v31 = "device_subtype";
  sub_10000F688(&v30, &v24, &v25);
  xpc_release(v25);
  v25 = 0;
  xpc_release(v24);
  v23 = v34;
  v24 = 0;
  if (v34)
  {
    xpc_retain(v34);
  }

  else
  {
    v23 = xpc_null_create();
  }

  (*(*v17 + 16))(v17, "commCenterCellularPlanProfilesStatus", &v23);
  xpc_release(v23);
  v23 = 0;
  xpc_release(v34);
LABEL_39:
  if ((v18 & 1) == 0)
  {
    sub_100004A34(v16);
  }
}

void sub_10046DB68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, xpc_object_t a20)
{
  xpc_release(object);
  xpc_release(a20);
  if ((v21 & 1) == 0)
  {
    sub_100004A34(v20);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10046DBD4(int a1)
{
  if ((a1 - 1) > 0x11)
  {
    return 0;
  }

  else
  {
    return dword_101807C90[(a1 - 1)];
  }
}

uint64_t sub_10046DBFC(char a1)
{
  if (((a1 - 1) & 0xF8) != 0)
  {
    return 0;
  }

  else
  {
    return (a1 - 1) + 1;
  }
}

uint64_t sub_10046DC10(uint64_t a1, unsigned int *a2)
{
  v12 = VinylSlotIdToInt();
  v3 = *(a2 + 4);
  if (((*(a2 + 32) - 1) & 0xFC) != 0)
  {
    v4 = 0;
  }

  else
  {
    v4 = (*(a2 + 32) - 1) + 1;
  }

  v5 = a2[34];
  if (*(a2 + 168) - 1 < 3)
  {
    v6 = (*(a2 + 168) - 1) + 1;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a2 + 169);
  if (*(a2 + 170) - 1 < 3)
  {
    v8 = (*(a2 + 170) - 1) + 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_10046DBFC(*(a2 + 5));
  v10 = sub_10046DBD4(v3);
  return sub_1007A12F4(v12, v10, v9, (a2 + 2), v4, (a2 + 10), (a2 + 16), (a2 + 22), (a2 + 28), v5, (a2 + 36), v6, v7, v8, *(a2 + 171));
}

uint64_t sub_10046DD0C(uint64_t result)
{
  if (result >= 8)
  {
    return 1;
  }

  else
  {
    return result;
  }
}

uint64_t sub_10046DD18(int a1)
{
  if ((a1 - 1) < 7)
  {
    return (a1 - 1) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10046DD2C(int a1)
{
  if ((a1 - 1) > 0x12)
  {
    return 0;
  }

  else
  {
    return dword_101807CD8[(a1 - 1)];
  }
}

void sub_10046DD54(uint64_t a1, uint64_t a2)
{
  v3 = sub_10046DD0C(*(a2 + 24));
  if (*(a2 + 25) == 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  if (*(a2 + 25))
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a2 + 26);
  v7 = *(a2 + 27);
  v8 = *(a2 + 28);
  v9 = *(a2 + 29);
  v10 = *(a2 + 30);
  v11 = *(a2 + 31);
  v12 = *(a2 + 36);
  v24 = *(a2 + 88);
  v25 = *(a2 + 44);
  if (*(a2 + 90) - 1 < 5)
  {
    v13 = (*(a2 + 90) - 1) + 1;
  }

  else
  {
    v13 = 0;
  }

  v23 = v13;
  sub_10006F264(&v47, (a2 + 56));
  if (*(a2 + 91) - 1 < 3)
  {
    v14 = (*(a2 + 91) - 1) + 1;
  }

  else
  {
    v14 = 0;
  }

  v21 = *(a2 + 92);
  v22 = v14;
  v19 = *(a2 + 96);
  v20 = *(a2 + 93);
  sub_10006F264(&v44, (a2 + 104));
  v18 = v12;
  sub_10006F264(&v41, (a2 + 136));
  v17 = v10;
  v15 = sub_10046DD18(*(a2 + 232));
  sub_10006F264(&v38, (a2 + 240));
  v16 = *(a2 + 32);
  sub_10006F264(&v35, (a2 + 272));
  sub_10006F264(v32, (a2 + 304));
  sub_10006F264(v29, (a2 + 336));
  sub_10006F264(__p, (a2 + 368));
  sub_1007A17E4(a2, v3, v5, v6, v7, v8, v9, v17, v11, v18, v25, v24, SHIDWORD(v24), v23, &v47, v22, v21, v20, v19, &v44, &v41, a2 + 168, a2 + 184, a2 + 208, a2 + 216, v15, &v38, v16, &v35, v32, v29, __p);
  if (v28 == 1 && v27 < 0)
  {
    operator delete(__p[0]);
  }

  if (v31 == 1 && v30 < 0)
  {
    operator delete(v29[0]);
  }

  if (v34 == 1 && v33 < 0)
  {
    operator delete(v32[0]);
  }

  if (v37 == 1 && v36 < 0)
  {
    operator delete(v35);
  }

  if (v40 == 1 && v39 < 0)
  {
    operator delete(v38);
  }

  if (v43 == 1 && v42 < 0)
  {
    operator delete(v41);
  }

  if (v46 == 1 && v45 < 0)
  {
    operator delete(v44);
  }

  if (v49 == 1 && v48 < 0)
  {
    operator delete(v47);
  }
}

void sub_10046E034(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *__p, uint64_t a39, int a40, __int16 a41, char a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, char a51, void *a52, uint64_t a53, int a54, __int16 a55, char a56, char a57, char a58)
{
  if (a44 == 1 && a43 < 0)
  {
    operator delete(__p);
  }

  if (a51 == 1 && a50 < 0)
  {
    operator delete(a45);
  }

  if (a58 == 1 && a57 < 0)
  {
    operator delete(a52);
  }

  if (*(v58 - 224) == 1 && *(v58 - 225) < 0)
  {
    operator delete(*(v58 - 248));
  }

  if (*(v58 - 192) == 1 && *(v58 - 193) < 0)
  {
    operator delete(*(v58 - 216));
  }

  if (*(v58 - 160) == 1 && *(v58 - 161) < 0)
  {
    operator delete(*(v58 - 184));
  }

  if (*(v58 - 128) == 1 && *(v58 - 129) < 0)
  {
    operator delete(*(v58 - 152));
  }

  if (*(v58 - 96) == 1 && *(v58 - 97) < 0)
  {
    operator delete(*(v58 - 120));
  }

  _Unwind_Resume(exception_object);
}

void sub_10046E164(uint64_t a1, uint64_t a2)
{
  v52 = 0u;
  v53 = 0u;
  if (*(a2 + 68) == 1)
  {
    v3 = sub_100649C94(*(a2 + 67));
    sub_10000501C(&v50, v3);
    if (BYTE8(v53) == 1)
    {
      if (SBYTE7(v53) < 0)
      {
        operator delete(v52);
      }

      v52 = v50;
      *&v53 = v51;
    }

    else
    {
      v52 = v50;
      *&v53 = v51;
      BYTE8(v53) = 1;
    }
  }

  v4 = *(a2 + 24);
  v5 = *(a2 + 64);
  v6 = *(a2 + 63);
  v7 = *(a2 + 66);
  v25 = *(a2 + 65);
  sub_10006F264(&v47, &v52);
  v8 = *(a2 + 56);
  v9 = *(a2 + 57);
  v10 = *(a2 + 58);
  v11 = *(a2 + 59);
  if (*(a2 + 69) - 1 < 3)
  {
    v12 = (*(a2 + 69) - 1) + 1;
  }

  else
  {
    v12 = 0;
  }

  sub_10006F264(&v44, (a2 + 72));
  v24 = v12;
  v22 = *(a2 + 112);
  v23 = *(a2 + 104);
  sub_10006F264(&v41, (a2 + 120));
  v19 = v10;
  v20 = v9;
  v21 = v8;
  v17 = *(a2 + 160);
  v18 = *(a2 + 152);
  v13 = *(a2 + 168);
  v14 = sub_10046DD18(*(a2 + 176));
  sub_10006F264(v38, (a2 + 184));
  v15 = *(a2 + 61);
  v16 = *(a2 + 62);
  sub_10006F264(v35, (a2 + 216));
  sub_10006F264(v32, (a2 + 248));
  sub_10006F264(v29, (a2 + 280));
  sub_10006F264(__p, (a2 + 312));
  sub_1007A2508(a2, &v47, a2 + 32, v21, v20, v19, v11, v5 & v6 & 1, v7 & v25 & 1, v4 | ((v4 != 0) << 32), v24, &v44, v23, v22, &v41, v18, v17, v13, v14, v38, v15, v16, v35, v32, v29, __p);
  if (v28 == 1 && v27 < 0)
  {
    operator delete(__p[0]);
  }

  if (v31 == 1 && v30 < 0)
  {
    operator delete(v29[0]);
  }

  if (v34 == 1 && v33 < 0)
  {
    operator delete(v32[0]);
  }

  if (v37 == 1 && v36 < 0)
  {
    operator delete(v35[0]);
  }

  if (v40 == 1 && v39 < 0)
  {
    operator delete(v38[0]);
  }

  if (v43 == 1 && v42 < 0)
  {
    operator delete(v41);
  }

  if (v46 == 1 && v45 < 0)
  {
    operator delete(v44);
  }

  if (v49 == 1 && v48 < 0)
  {
    operator delete(v47);
  }

  if (BYTE8(v53) == 1 && SBYTE7(v53) < 0)
  {
    operator delete(v52);
  }
}

void sub_10046E490(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41, char a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, char a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55, char a56, void *a57, uint64_t a58, int a59, __int16 a60, char a61, char a62, char a63)
{
  if (a42 == 1 && a41 < 0)
  {
    operator delete(__p);
  }

  if (a49 == 1 && a48 < 0)
  {
    operator delete(a43);
  }

  if (a56 == 1 && a55 < 0)
  {
    operator delete(a50);
  }

  if (a63 == 1 && a62 < 0)
  {
    operator delete(a57);
  }

  if (a66 == 1 && a65 < 0)
  {
    operator delete(a64);
  }

  if (*(v66 - 224) == 1 && *(v66 - 225) < 0)
  {
    operator delete(*(v66 - 248));
  }

  if (*(v66 - 192) == 1 && *(v66 - 193) < 0)
  {
    operator delete(*(v66 - 216));
  }

  if (*(v66 - 160) == 1 && *(v66 - 161) < 0)
  {
    operator delete(*(v66 - 184));
  }

  if (*(v66 - 104) == 1 && *(v66 - 105) < 0)
  {
    operator delete(*(v66 - 128));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10046E5DC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = a5;
  if (a4 == 2)
  {
    v7 = 3;
  }

  else
  {
    v7 = 2 * (a4 == 1);
  }

  v8 = sub_10046DD0C(a3);

  return sub_1007A3440(a2, v7, v8, v5);
}

void sub_10046E648(uint64_t a1, uint64_t a2)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 24));
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
  v52 = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, &v52);
  if (!v9)
  {
    v11 = 0;
LABEL_9:
    std::mutex::unlock(v4);
    v10 = 0;
    v12 = 1;
    if (!v11)
    {
      goto LABEL_68;
    }

    goto LABEL_10;
  }

  v11 = v9[3];
  v10 = v9[4];
  if (!v10)
  {
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v4);
  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v10);
  v12 = 0;
  if (!v11)
  {
    goto LABEL_68;
  }

LABEL_10:
  v56 = 0;
  v13 = xpc_dictionary_create(0, 0, 0);
  v14 = v13;
  if (v13)
  {
    v56 = v13;
  }

  else
  {
    v14 = xpc_null_create();
    v56 = v14;
    if (!v14)
    {
      v15 = xpc_null_create();
      v14 = 0;
      goto LABEL_17;
    }
  }

  if (xpc_get_type(v14) != &_xpc_type_dictionary)
  {
    v15 = xpc_null_create();
LABEL_17:
    v56 = v15;
    goto LABEL_18;
  }

  xpc_retain(v14);
LABEL_18:
  xpc_release(v14);
  v54 = xpc_BOOL_create(*a2);
  if (!v54)
  {
    v54 = xpc_null_create();
  }

  v52 = &v56;
  v53 = "in_buddy";
  sub_10000F688(&v52, &v54, &v55);
  xpc_release(v55);
  v55 = 0;
  xpc_release(v54);
  v54 = 0;
  v50 = xpc_int64_create(*(a2 + 4));
  if (!v50)
  {
    v50 = xpc_null_create();
  }

  v52 = &v56;
  v53 = "transferable_plans";
  sub_10000F688(&v52, &v50, &v51);
  xpc_release(v51);
  v51 = 0;
  xpc_release(v50);
  v50 = 0;
  v48 = xpc_int64_create(*(a2 + 8));
  if (!v48)
  {
    v48 = xpc_null_create();
  }

  v52 = &v56;
  v53 = "selected_transferable_plans";
  sub_10000F688(&v52, &v48, &v49);
  xpc_release(v49);
  v49 = 0;
  xpc_release(v48);
  v48 = 0;
  v46 = xpc_int64_create(*(a2 + 12));
  if (!v46)
  {
    v46 = xpc_null_create();
  }

  v52 = &v56;
  v53 = "als_plans";
  sub_10000F688(&v52, &v46, &v47);
  xpc_release(v47);
  v47 = 0;
  xpc_release(v46);
  v46 = 0;
  v44 = xpc_int64_create(*(a2 + 16));
  if (!v44)
  {
    v44 = xpc_null_create();
  }

  v52 = &v56;
  v53 = "selected_als_plans";
  sub_10000F688(&v52, &v44, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v44);
  v44 = 0;
  v42 = xpc_int64_create(*(a2 + 20));
  if (!v42)
  {
    v42 = xpc_null_create();
  }

  v52 = &v56;
  v53 = "oda_plans";
  sub_10000F688(&v52, &v42, &v43);
  xpc_release(v43);
  v43 = 0;
  xpc_release(v42);
  v42 = 0;
  v40 = xpc_int64_create(*(a2 + 24));
  if (!v40)
  {
    v40 = xpc_null_create();
  }

  v52 = &v56;
  v53 = "source_devices_count";
  sub_10000F688(&v52, &v40, &v41);
  xpc_release(v41);
  v41 = 0;
  xpc_release(v40);
  v40 = 0;
  v38 = xpc_int64_create(*(a2 + 28));
  if (!v38)
  {
    v38 = xpc_null_create();
  }

  v52 = &v56;
  v53 = "selected_source_devices_count";
  sub_10000F688(&v52, &v38, &v39);
  xpc_release(v39);
  v39 = 0;
  xpc_release(v38);
  v38 = 0;
  if (*(a2 + 55) >= 0)
  {
    v16 = (a2 + 32);
  }

  else
  {
    v16 = *(a2 + 32);
  }

  v36 = xpc_string_create(v16);
  if (!v36)
  {
    v36 = xpc_null_create();
  }

  v52 = &v56;
  v53 = "transferable_plans_carriers";
  sub_10000F688(&v52, &v36, &v37);
  xpc_release(v37);
  v37 = 0;
  xpc_release(v36);
  v36 = 0;
  if (*(a2 + 79) >= 0)
  {
    v17 = (a2 + 56);
  }

  else
  {
    v17 = *(a2 + 56);
  }

  v34 = xpc_string_create(v17);
  if (!v34)
  {
    v34 = xpc_null_create();
  }

  v52 = &v56;
  v53 = "selected_transferable_plans_carriers";
  sub_10000F688(&v52, &v34, &v35);
  xpc_release(v35);
  v35 = 0;
  xpc_release(v34);
  v34 = 0;
  if (*(a2 + 103) >= 0)
  {
    v18 = (a2 + 80);
  }

  else
  {
    v18 = *(a2 + 80);
  }

  v32 = xpc_string_create(v18);
  if (!v32)
  {
    v32 = xpc_null_create();
  }

  v52 = &v56;
  v53 = "als_plans_carriers";
  sub_10000F688(&v52, &v32, &v33);
  xpc_release(v33);
  v33 = 0;
  xpc_release(v32);
  v32 = 0;
  if (*(a2 + 127) >= 0)
  {
    v19 = (a2 + 104);
  }

  else
  {
    v19 = *(a2 + 104);
  }

  v30 = xpc_string_create(v19);
  if (!v30)
  {
    v30 = xpc_null_create();
  }

  v52 = &v56;
  v53 = "selected_als_plans_carriers";
  sub_10000F688(&v52, &v30, &v31);
  xpc_release(v31);
  v31 = 0;
  xpc_release(v30);
  v30 = 0;
  if (*(a2 + 151) >= 0)
  {
    v20 = (a2 + 128);
  }

  else
  {
    v20 = *(a2 + 128);
  }

  v28 = xpc_string_create(v20);
  if (!v28)
  {
    v28 = xpc_null_create();
  }

  v52 = &v56;
  v53 = "oda_plans_carriers";
  sub_10000F688(&v52, &v28, &v29);
  xpc_release(v29);
  v29 = 0;
  xpc_release(v28);
  v28 = 0;
  v23 = *(a2 + 152);
  v22 = a2 + 152;
  v21 = v23;
  if (*(v22 + 23) >= 0)
  {
    v24 = v22;
  }

  else
  {
    v24 = v21;
  }

  v26 = xpc_string_create(v24);
  if (!v26)
  {
    v26 = xpc_null_create();
  }

  v52 = &v56;
  v53 = "selected_oda_plans_carriers";
  sub_10000F688(&v52, &v26, &v27);
  xpc_release(v27);
  v27 = 0;
  xpc_release(v26);
  v25 = v56;
  v26 = 0;
  if (v56)
  {
    xpc_retain(v56);
  }

  else
  {
    v25 = xpc_null_create();
  }

  (*(*v11 + 16))(v11, "commCenterCellularPlanSimSetupUsage", &v25);
  xpc_release(v25);
  v25 = 0;
  xpc_release(v56);
LABEL_68:
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v10);
  }
}

void sub_10046ED08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(*(v11 - 72));
  if ((v10 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  _Unwind_Resume(a1);
}

void sub_10046EDF8(uint64_t a1, uint64_t a2)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 24));
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
  v21 = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, &v21);
  if (!v9)
  {
    v11 = 0;
LABEL_9:
    std::mutex::unlock(v4);
    v10 = 0;
    v12 = 1;
    if (!v11)
    {
      goto LABEL_28;
    }

    goto LABEL_10;
  }

  v11 = v9[3];
  v10 = v9[4];
  if (!v10)
  {
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v4);
  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v10);
  v12 = 0;
  if (!v11)
  {
    goto LABEL_28;
  }

LABEL_10:
  v25 = 0;
  v13 = xpc_dictionary_create(0, 0, 0);
  v14 = v13;
  if (v13)
  {
    v25 = v13;
  }

  else
  {
    v14 = xpc_null_create();
    v25 = v14;
    if (!v14)
    {
      v15 = xpc_null_create();
      v14 = 0;
      goto LABEL_17;
    }
  }

  if (xpc_get_type(v14) != &_xpc_type_dictionary)
  {
    v15 = xpc_null_create();
LABEL_17:
    v25 = v15;
    goto LABEL_18;
  }

  xpc_retain(v14);
LABEL_18:
  xpc_release(v14);
  v23 = xpc_BOOL_create(*a2);
  if (!v23)
  {
    v23 = xpc_null_create();
  }

  v21 = &v25;
  v22 = "success";
  sub_10000F688(&v21, &v23, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v23);
  v23 = 0;
  v19 = xpc_BOOL_create(*(a2 + 1));
  if (!v19)
  {
    v19 = xpc_null_create();
  }

  v21 = &v25;
  v22 = "skipped";
  sub_10000F688(&v21, &v19, &v20);
  xpc_release(v20);
  v20 = 0;
  xpc_release(v19);
  v19 = 0;
  v17 = xpc_int64_create(*(a2 + 4));
  if (!v17)
  {
    v17 = xpc_null_create();
  }

  v21 = &v25;
  v22 = "duration";
  sub_10000F688(&v21, &v17, &v18);
  xpc_release(v18);
  v18 = 0;
  xpc_release(v17);
  v16 = v25;
  v17 = 0;
  if (v25)
  {
    xpc_retain(v25);
  }

  else
  {
    v16 = xpc_null_create();
  }

  (*(*v11 + 16))(v11, "commCenterCellularPlanAutoReconnectionDetails", &v16);
  xpc_release(v16);
  v16 = 0;
  xpc_release(v25);
LABEL_28:
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v10);
  }
}

void sub_10046F0B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(*(v11 - 56));
  if ((v10 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  _Unwind_Resume(a1);
}

void sub_10046F124(uint64_t a1, unsigned int *a2, unsigned int a3)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 24));
  v6 = ServiceMap;
  if ((v7 & 0x8000000000000000) != 0)
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
  v29 = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, &v29);
  if (!v11)
  {
    v13 = 0;
LABEL_9:
    std::mutex::unlock(v6);
    v12 = 0;
    v14 = 1;
    if (!v13)
    {
      goto LABEL_34;
    }

    goto LABEL_10;
  }

  v13 = v11[3];
  v12 = v11[4];
  if (!v12)
  {
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v6);
  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v12);
  v14 = 0;
  if (!v13)
  {
    goto LABEL_34;
  }

LABEL_10:
  v33 = 0;
  v15 = xpc_dictionary_create(0, 0, 0);
  v16 = v15;
  if (v15)
  {
    v33 = v15;
  }

  else
  {
    v16 = xpc_null_create();
    v33 = v16;
    if (!v16)
    {
      v17 = xpc_null_create();
      v16 = 0;
      goto LABEL_17;
    }
  }

  if (xpc_get_type(v16) != &_xpc_type_dictionary)
  {
    v17 = xpc_null_create();
LABEL_17:
    v33 = v17;
    goto LABEL_18;
  }

  xpc_retain(v16);
LABEL_18:
  xpc_release(v16);
  v31 = xpc_int64_create(*a2);
  if (!v31)
  {
    v31 = xpc_null_create();
  }

  v29 = &v33;
  v30 = "upload_reasons";
  sub_10000F688(&v29, &v31, &v32);
  xpc_release(v32);
  v32 = 0;
  xpc_release(v31);
  v31 = 0;
  v27 = xpc_int64_create(a2[1]);
  if (!v27)
  {
    v27 = xpc_null_create();
  }

  v29 = &v33;
  v30 = "upload_type";
  sub_10000F688(&v29, &v27, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v27);
  v27 = 0;
  v25 = xpc_BOOL_create(*(a2 + 8));
  if (!v25)
  {
    v25 = xpc_null_create();
  }

  v29 = &v33;
  v30 = "result";
  sub_10000F688(&v29, &v25, &v26);
  xpc_release(v26);
  v26 = 0;
  xpc_release(v25);
  v25 = 0;
  v23 = xpc_BOOL_create(*(a2 + 9));
  if (!v23)
  {
    v23 = xpc_null_create();
  }

  v29 = &v33;
  v30 = "isBlocklisting";
  sub_10000F688(&v29, &v23, &v24);
  xpc_release(v24);
  v24 = 0;
  xpc_release(v23);
  v23 = 0;
  v21 = xpc_int64_create(a3);
  if (!v21)
  {
    v21 = xpc_null_create();
  }

  v29 = &v33;
  v30 = "upload_count";
  sub_10000F688(&v29, &v21, &v22);
  xpc_release(v22);
  v22 = 0;
  xpc_release(v21);
  v21 = 0;
  v19 = xpc_int64_create(a2[3]);
  if (!v19)
  {
    v19 = xpc_null_create();
  }

  v29 = &v33;
  v30 = "error_code";
  sub_10000F688(&v29, &v19, &v20);
  xpc_release(v20);
  v20 = 0;
  xpc_release(v19);
  v18 = v33;
  v19 = 0;
  if (v33)
  {
    xpc_retain(v33);
  }

  else
  {
    v18 = xpc_null_create();
  }

  (*(*v13 + 16))(v13, "commCenterCellularPlanCloudUploadDetails", &v18);
  xpc_release(v18);
  v18 = 0;
  xpc_release(v33);
LABEL_34:
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v12);
  }
}

void sub_10046F4EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(*(v11 - 72));
  if ((v10 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  _Unwind_Resume(a1);
}

void sub_10046F57C(uint64_t a1, uint64_t a2, int a3, int a4)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 24));
  v8 = ServiceMap;
  if (v9 < 0)
  {
    v10 = (v9 & 0x7FFFFFFFFFFFFFFFLL);
    v11 = 5381;
    do
    {
      v9 = v11;
      v12 = *v10++;
      v11 = (33 * v11) ^ v12;
    }

    while (v12);
  }

  std::mutex::lock(ServiceMap);
  __p[0] = v9;
  v13 = sub_100009510(&v8[1].__m_.__sig, __p);
  if (!v13)
  {
    v15 = 0;
LABEL_9:
    std::mutex::unlock(v8);
    v14 = 0;
    v16 = 1;
    if (!v15)
    {
      goto LABEL_47;
    }

    goto LABEL_10;
  }

  v15 = v13[3];
  v14 = v13[4];
  if (!v14)
  {
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v8);
  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v14);
  v16 = 0;
  if (!v15)
  {
    goto LABEL_47;
  }

LABEL_10:
  v36 = 0;
  v17 = xpc_dictionary_create(0, 0, 0);
  v18 = v17;
  if (v17)
  {
    v36 = v17;
  }

  else
  {
    v18 = xpc_null_create();
    v36 = v18;
    if (!v18)
    {
      v19 = xpc_null_create();
      v18 = 0;
      goto LABEL_17;
    }
  }

  if (xpc_get_type(v18) != &_xpc_type_dictionary)
  {
    v19 = xpc_null_create();
LABEL_17:
    v36 = v19;
    goto LABEL_18;
  }

  xpc_retain(v18);
LABEL_18:
  xpc_release(v18);
  if (*(a2 + 23) >= 0)
  {
    v20 = a2;
  }

  else
  {
    v20 = *a2;
  }

  object = xpc_string_create(v20);
  if (!object)
  {
    object = xpc_null_create();
  }

  __p[0] = &v36;
  __p[1] = "carrier_name";
  sub_10000F688(__p, &object, &v35);
  xpc_release(v35);
  v35 = 0;
  xpc_release(object);
  object = 0;
  if (a3 == 2)
  {
    v21 = 3;
  }

  else
  {
    v21 = 2 * (a3 == 1);
  }

  sub_1007A3D10(v21, __p);
  if (v31 >= 0)
  {
    v22 = __p;
  }

  else
  {
    v22 = __p[0];
  }

  v32 = xpc_string_create(v22);
  if (!v32)
  {
    v32 = xpc_null_create();
  }

  v28 = &v36;
  v29 = "plan_type";
  sub_10000F688(&v28, &v32, &v33);
  xpc_release(v33);
  v33 = 0;
  xpc_release(v32);
  v32 = 0;
  if (v31 < 0)
  {
    operator delete(__p[0]);
  }

  if ((a4 - 1) > 2)
  {
    v23 = 0;
  }

  else
  {
    v23 = dword_101807D24[(a4 - 1)];
  }

  sub_1007A3D4C(v23, __p);
  if (v31 >= 0)
  {
    v24 = __p;
  }

  else
  {
    v24 = __p[0];
  }

  v26 = xpc_string_create(v24);
  if (!v26)
  {
    v26 = xpc_null_create();
  }

  v28 = &v36;
  v29 = "notification_type";
  sub_10000F688(&v28, &v26, &v27);
  xpc_release(v27);
  v27 = 0;
  xpc_release(v26);
  v26 = 0;
  if (v31 < 0)
  {
    operator delete(__p[0]);
  }

  v25 = v36;
  if (v36)
  {
    xpc_retain(v36);
  }

  else
  {
    v25 = xpc_null_create();
  }

  (*(*v15 + 16))(v15, "commCenterCellularPlanCarrierPushNotification", &v25);
  xpc_release(v25);
  v25 = 0;
  xpc_release(v36);
LABEL_47:
  if ((v16 & 1) == 0)
  {
    sub_100004A34(v14);
  }
}

void sub_10046F8E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(*(v12 - 72));
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10046F960(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, unsigned __int8 *a7, uint64_t a8)
{
  v8 = a8;
  v11 = a5;
  ServiceMap = Registry::getServiceMap(*(a1 + 24));
  v16 = ServiceMap;
  if ((v17 & 0x8000000000000000) != 0)
  {
    v18 = (v17 & 0x7FFFFFFFFFFFFFFFLL);
    v19 = 5381;
    do
    {
      v17 = v19;
      v20 = *v18++;
      v19 = (33 * v19) ^ v20;
    }

    while (v20);
  }

  std::mutex::lock(ServiceMap);
  v37 = v17;
  v21 = sub_100009510(&v16[1].__m_.__sig, &v37);
  if (v21)
  {
    v23 = v21[3];
    v22 = v21[4];
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v16);
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v22);
      v24 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v23 = 0;
  }

  std::mutex::unlock(v16);
  v22 = 0;
  v24 = 1;
LABEL_9:
  (*(*v23 + 256))(v35, v23);
  if (v36 < 0)
  {
    v26 = v35[1] == 6 && *v35[0] == 1869107305 && *(v35[0] + 2) == 25966;
    operator delete(v35[0]);
    if (v24)
    {
      goto LABEL_31;
    }

LABEL_30:
    sub_100004A34(v22);
    goto LABEL_31;
  }

  if (v36 == 6)
  {
    v26 = LODWORD(v35[0]) == 1869107305 && WORD2(v35[0]) == 25966;
    if (v24)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  v26 = 0;
  if ((v24 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_31:
  if (v26)
  {
    v28 = sub_10046DD2C(*a7);
    if ((a2 - 1) < 5)
    {
      v29 = (a2 - 1) + 1;
    }

    else
    {
      v29 = 0;
    }

    v30 = a3;
    v31 = 1;
    v32 = v11;
    v33 = a6;
  }

  else
  {
    if (a4 == 2)
    {
      v31 = 3;
    }

    else
    {
      v31 = 2 * (a4 == 1);
    }

    if ((a2 - 1) < 5)
    {
      v29 = (a2 - 1) + 1;
    }

    else
    {
      v29 = 0;
    }

    v30 = a3;
    v32 = v11;
    v33 = a6;
    v28 = 0;
  }

  return sub_1007A0F64(v30, v31, v32, v33, v28, v29, v8);
}

void sub_10046FB94(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10046FBB0(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 24));
  v14 = ServiceMap;
  if ((v15 & 0x8000000000000000) != 0)
  {
    v16 = (v15 & 0x7FFFFFFFFFFFFFFFLL);
    v17 = 5381;
    do
    {
      v15 = v17;
      v18 = *v16++;
      v17 = (33 * v17) ^ v18;
    }

    while (v18);
  }

  std::mutex::lock(ServiceMap);
  v37 = v15;
  v19 = sub_100009510(&v14[1].__m_.__sig, &v37);
  if (!v19)
  {
    v21 = 0;
LABEL_9:
    std::mutex::unlock(v14);
    v20 = 0;
    v22 = 1;
    if (!v21)
    {
      goto LABEL_64;
    }

    goto LABEL_10;
  }

  v21 = v19[3];
  v20 = v19[4];
  if (!v20)
  {
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v14);
  atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v20);
  v22 = 0;
  if (!v21)
  {
    goto LABEL_64;
  }

LABEL_10:
  v41 = 0;
  v23 = xpc_dictionary_create(0, 0, 0);
  v24 = v23;
  if (v23)
  {
    v41 = v23;
  }

  else
  {
    v24 = xpc_null_create();
    v41 = v24;
    if (!v24)
    {
      v25 = xpc_null_create();
      v24 = 0;
      goto LABEL_17;
    }
  }

  if (xpc_get_type(v24) == &_xpc_type_dictionary)
  {
    xpc_retain(v24);
    goto LABEL_18;
  }

  v25 = xpc_null_create();
LABEL_17:
  v41 = v25;
LABEL_18:
  xpc_release(v24);
  if (*(a2 + 23) < 0)
  {
    if (!a2[1])
    {
      goto LABEL_26;
    }

    a2 = *a2;
  }

  else if (!*(a2 + 23))
  {
    goto LABEL_26;
  }

  object = xpc_string_create(a2);
  if (!object)
  {
    object = xpc_null_create();
  }

  v37 = &v41;
  v38 = "action";
  sub_10000F688(&v37, &object, &v40);
  xpc_release(v40);
  v40 = 0;
  xpc_release(object);
  object = 0;
LABEL_26:
  if (*(a3 + 23) < 0)
  {
    if (!a3[1])
    {
      goto LABEL_34;
    }

    a3 = *a3;
  }

  else if (!*(a3 + 23))
  {
    goto LABEL_34;
  }

  v35 = xpc_string_create(a3);
  if (!v35)
  {
    v35 = xpc_null_create();
  }

  v37 = &v41;
  v38 = "carrier_name";
  sub_10000F688(&v37, &v35, &v36);
  xpc_release(v36);
  v36 = 0;
  xpc_release(v35);
  v35 = 0;
LABEL_34:
  v33 = xpc_uint64_create(a4);
  if (!v33)
  {
    v33 = xpc_null_create();
  }

  v37 = &v41;
  v38 = "daysSinceNotification";
  sub_10000F688(&v37, &v33, &v34);
  xpc_release(v34);
  v34 = 0;
  xpc_release(v33);
  v33 = 0;
  if (*(a5 + 23) < 0)
  {
    if (!a5[1])
    {
      goto LABEL_44;
    }

    a5 = *a5;
  }

  else if (!*(a5 + 23))
  {
    goto LABEL_44;
  }

  v31 = xpc_string_create(a5);
  if (!v31)
  {
    v31 = xpc_null_create();
  }

  v37 = &v41;
  v38 = "eventResult";
  sub_10000F688(&v37, &v31, &v32);
  xpc_release(v32);
  v32 = 0;
  xpc_release(v31);
  v31 = 0;
LABEL_44:
  if (*(a6 + 23) < 0)
  {
    if (!a6[1])
    {
      goto LABEL_52;
    }

    a6 = *a6;
  }

  else if (!*(a6 + 23))
  {
    goto LABEL_52;
  }

  v29 = xpc_string_create(a6);
  if (!v29)
  {
    v29 = xpc_null_create();
  }

  v37 = &v41;
  v38 = "eventType";
  sub_10000F688(&v37, &v29, &v30);
  xpc_release(v30);
  v30 = 0;
  xpc_release(v29);
  v29 = 0;
LABEL_52:
  if ((*(a7 + 23) & 0x80000000) == 0)
  {
    if (!*(a7 + 23))
    {
      goto LABEL_60;
    }

LABEL_57:
    v27 = xpc_string_create(a7);
    if (!v27)
    {
      v27 = xpc_null_create();
    }

    v37 = &v41;
    v38 = "notificationResult";
    sub_10000F688(&v37, &v27, &v28);
    xpc_release(v28);
    v28 = 0;
    xpc_release(v27);
    v27 = 0;
    goto LABEL_60;
  }

  if (a7[1])
  {
    a7 = *a7;
    goto LABEL_57;
  }

LABEL_60:
  v26 = v41;
  if (v41)
  {
    xpc_retain(v41);
  }

  else
  {
    v26 = xpc_null_create();
  }

  (*(*v21 + 16))(v21, "commCenterCellularPlanInstallReplace", &v26);
  xpc_release(v26);
  v26 = 0;
  xpc_release(v41);
LABEL_64:
  if ((v22 & 1) == 0)
  {
    sub_100004A34(v20);
  }
}

void sub_100470060(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(*(v11 - 88));
  if ((v10 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  _Unwind_Resume(a1);
}

void sub_1004700B8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 96);
  v4 = *(a2 + 24);
  if (v4 == 1)
  {
    v5 = *(a2 + 104);
    v6 = v5 < v3;
    v7 = v5 - v3;
    if (v6)
    {
      v8 = 255;
    }

    else
    {
      v8 = v7;
    }

    if (v6)
    {
      v9 = -256;
    }

    else
    {
      v9 = v7 & 0xFFFFFFFFFFFFFF00;
    }
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  v10 = *(a2 + 32);
  v11 = *(a2 + 40);
  v13 = *(a2 + 48);
  v12 = *(a2 + 56);
  v15 = *(a2 + 64);
  v14 = *(a2 + 72);
  v33 = *(a2 + 80);
  v34 = *(a2 + 88);
  v16 = *(a2 + 26);
  v17 = *(a2 + 112);
  ServiceMap = Registry::getServiceMap(*(a1 + 24));
  v19 = ServiceMap;
  if ((v20 & 0x8000000000000000) != 0)
  {
    v21 = (v20 & 0x7FFFFFFFFFFFFFFFLL);
    v22 = 5381;
    do
    {
      v20 = v22;
      v23 = *v21++;
      v22 = (33 * v22) ^ v23;
    }

    while (v23);
  }

  std::mutex::lock(ServiceMap);
  v56 = v20;
  v24 = sub_100009510(&v19[1].__m_.__sig, &v56);
  if (!v24)
  {
    v26 = 0;
LABEL_17:
    std::mutex::unlock(v19);
    v25 = 0;
    v27 = 1;
    if (!v26)
    {
      goto LABEL_64;
    }

    goto LABEL_18;
  }

  v26 = v24[3];
  v25 = v24[4];
  if (!v25)
  {
    goto LABEL_17;
  }

  atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v19);
  atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v25);
  v27 = 0;
  if (!v26)
  {
    goto LABEL_64;
  }

LABEL_18:
  v60[0] = 0;
  v28 = xpc_dictionary_create(0, 0, 0);
  v29 = v28;
  if (v28)
  {
    v60[0] = v28;
  }

  else
  {
    v29 = xpc_null_create();
    v60[0] = v29;
    if (!v29)
    {
      v30 = xpc_null_create();
      v29 = 0;
      goto LABEL_25;
    }
  }

  if (xpc_get_type(v29) == &_xpc_type_dictionary)
  {
    xpc_retain(v29);
    goto LABEL_26;
  }

  v30 = xpc_null_create();
LABEL_25:
  v60[0] = v30;
LABEL_26:
  xpc_release(v29);
  if ((*(a2 + 23) & 0x80000000) == 0)
  {
    v31 = a2;
    if (!*(a2 + 23))
    {
      goto LABEL_34;
    }

LABEL_31:
    v58 = xpc_string_create(v31);
    if (!v58)
    {
      v58 = xpc_null_create();
    }

    v56 = v60;
    v57 = "carrier_name";
    sub_10000F688(&v56, &v58, &v59);
    xpc_release(v59);
    v59 = 0;
    xpc_release(v58);
    v58 = 0;
    goto LABEL_34;
  }

  if (*(a2 + 8))
  {
    v31 = *a2;
    goto LABEL_31;
  }

LABEL_34:
  v54 = xpc_BOOL_create(*(a2 + 24));
  if (!v54)
  {
    v54 = xpc_null_create();
  }

  v56 = v60;
  v57 = "is_enabled";
  sub_10000F688(&v56, &v54, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v54);
  v54 = 0;
  v32 = sub_10046DD0C(*(a2 + 27));
  v52 = xpc_int64_create(v32);
  if (!v52)
  {
    v52 = xpc_null_create();
  }

  v56 = v60;
  v57 = "transfer_type";
  sub_10000F688(&v56, &v52, &v53);
  xpc_release(v53);
  v53 = 0;
  xpc_release(v52);
  v52 = 0;
  v50 = xpc_uint64_create((v11 - v10));
  if (!v50)
  {
    v50 = xpc_null_create();
  }

  v56 = v60;
  v57 = "ta_duration";
  sub_10000F688(&v56, &v50, &v51);
  xpc_release(v51);
  v51 = 0;
  xpc_release(v50);
  v50 = 0;
  v48 = xpc_uint64_create((v12 - v13));
  if (!v48)
  {
    v48 = xpc_null_create();
  }

  v56 = v60;
  v57 = "ta_via_webservice_duration";
  sub_10000F688(&v56, &v48, &v49);
  xpc_release(v49);
  v49 = 0;
  xpc_release(v48);
  v48 = 0;
  v46 = xpc_uint64_create((v14 - v15));
  if (!v46)
  {
    v46 = xpc_null_create();
  }

  v56 = v60;
  v57 = "tss_duration";
  sub_10000F688(&v56, &v46, &v47);
  xpc_release(v47);
  v47 = 0;
  xpc_release(v46);
  v46 = 0;
  v44 = xpc_BOOL_create(*(a2 + 26));
  if (!v44)
  {
    v44 = xpc_null_create();
  }

  v56 = v60;
  v57 = "used_discover_service";
  sub_10000F688(&v56, &v44, &v45);
  xpc_release(v45);
  v45 = 0;
  xpc_release(v44);
  v44 = 0;
  if (v16)
  {
    v42 = xpc_uint64_create((v34 - v33));
    if (!v42)
    {
      v42 = xpc_null_create();
    }

    v56 = v60;
    v57 = "als_duration";
    sub_10000F688(&v56, &v42, &v43);
    xpc_release(v43);
    v43 = 0;
    xpc_release(v42);
    v42 = 0;
  }

  if (v17 != 0.0)
  {
    v40 = xpc_uint64_create((v34 - v17));
    if (!v40)
    {
      v40 = xpc_null_create();
    }

    v56 = v60;
    v57 = "websheet_duration";
    sub_10000F688(&v56, &v40, &v41);
    xpc_release(v41);
    v41 = 0;
    xpc_release(v40);
    v40 = 0;
  }

  v38 = xpc_uint64_create((v3 - v34));
  if (!v38)
  {
    v38 = xpc_null_create();
  }

  v56 = v60;
  v57 = "fetch_duration";
  sub_10000F688(&v56, &v38, &v39);
  xpc_release(v39);
  v39 = 0;
  xpc_release(v38);
  v38 = 0;
  if (v4)
  {
    v36 = xpc_uint64_create(v9 | v8);
    if (!v36)
    {
      v36 = xpc_null_create();
    }

    v56 = v60;
    v57 = "service_up_duration";
    sub_10000F688(&v56, &v36, &v37);
    xpc_release(v37);
    v37 = 0;
    xpc_release(v36);
    v36 = 0;
  }

  v35 = v60[0];
  if (v60[0])
  {
    xpc_retain(v60[0]);
  }

  else
  {
    v35 = xpc_null_create();
  }

  (*(*v26 + 16))(v26, "commCenterCellularPlanTransferDurations", &v35);
  xpc_release(v35);
  v35 = 0;
  xpc_release(v60[0]);
LABEL_64:
  if ((v27 & 1) == 0)
  {
    sub_100004A34(v25);
  }
}

void sub_100470730(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(*(v14 - 160));
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v12);
  }

  _Unwind_Resume(a1);
}

void sub_1004707D4(uint64_t a1, uint64_t a2, BOOL a3, uint64_t a4)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 24));
  v8 = ServiceMap;
  if (v9 < 0)
  {
    v10 = (v9 & 0x7FFFFFFFFFFFFFFFLL);
    v11 = 5381;
    do
    {
      v9 = v11;
      v12 = *v10++;
      v11 = (33 * v11) ^ v12;
    }

    while (v12);
  }

  std::mutex::lock(ServiceMap);
  v27 = v9;
  v13 = sub_100009510(&v8[1].__m_.__sig, &v27);
  if (!v13)
  {
    v15 = 0;
LABEL_9:
    std::mutex::unlock(v8);
    v14 = 0;
    v16 = 1;
    if (!v15)
    {
      goto LABEL_34;
    }

    goto LABEL_10;
  }

  v15 = v13[3];
  v14 = v13[4];
  if (!v14)
  {
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v8);
  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v14);
  v16 = 0;
  if (!v15)
  {
    goto LABEL_34;
  }

LABEL_10:
  v31 = 0;
  v17 = xpc_dictionary_create(0, 0, 0);
  v18 = v17;
  if (v17)
  {
    v31 = v17;
  }

  else
  {
    v18 = xpc_null_create();
    v31 = v18;
    if (!v18)
    {
      v19 = xpc_null_create();
      v18 = 0;
      goto LABEL_17;
    }
  }

  if (xpc_get_type(v18) != &_xpc_type_dictionary)
  {
    v19 = xpc_null_create();
LABEL_17:
    v31 = v19;
    goto LABEL_18;
  }

  xpc_retain(v18);
LABEL_18:
  xpc_release(v18);
  if (*(a2 + 23) >= 0)
  {
    v20 = a2;
  }

  else
  {
    v20 = *a2;
  }

  v29 = xpc_string_create(v20);
  if (!v29)
  {
    v29 = xpc_null_create();
  }

  v27 = &v31;
  v28 = "InstallType";
  sub_10000F688(&v27, &v29, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v29);
  v29 = 0;
  v25 = xpc_BOOL_create(a3);
  if (!v25)
  {
    v25 = xpc_null_create();
  }

  v27 = &v31;
  v28 = "ReceiptSent";
  sub_10000F688(&v27, &v25, &v26);
  xpc_release(v26);
  v26 = 0;
  xpc_release(v25);
  v25 = 0;
  if (*(a4 + 23) >= 0)
  {
    v21 = a4;
  }

  else
  {
    v21 = *a4;
  }

  v23 = xpc_string_create(v21);
  if (!v23)
  {
    v23 = xpc_null_create();
  }

  v27 = &v31;
  v28 = "Reason";
  sub_10000F688(&v27, &v23, &v24);
  xpc_release(v24);
  v24 = 0;
  xpc_release(v23);
  v22 = v31;
  v23 = 0;
  if (v31)
  {
    xpc_retain(v31);
  }

  else
  {
    v22 = xpc_null_create();
  }

  (*(*v15 + 16))(v15, "commCenterCellularPlanInstallReceipt", &v22);
  xpc_release(v22);
  v22 = 0;
  xpc_release(v31);
LABEL_34:
  if ((v16 & 1) == 0)
  {
    sub_100004A34(v14);
  }
}

void sub_100470ABC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, xpc_object_t a18)
{
  xpc_release(object);
  xpc_release(a18);
  if ((v19 & 1) == 0)
  {
    sub_100004A34(v18);
  }

  _Unwind_Resume(a1);
}

void sub_100470B28(uint64_t a1, uint64_t a2)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 24));
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
  v17[0] = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, v17);
  if (!v9)
  {
    v11 = 0;
LABEL_9:
    std::mutex::unlock(v4);
    v10 = 0;
    v12 = 1;
    if (!v11)
    {
      goto LABEL_24;
    }

    goto LABEL_10;
  }

  v11 = v9[3];
  v10 = v9[4];
  if (!v10)
  {
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v4);
  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v10);
  v12 = 0;
  if (!v11)
  {
    goto LABEL_24;
  }

LABEL_10:
  v20 = 0;
  v13 = xpc_dictionary_create(0, 0, 0);
  v14 = v13;
  if (v13)
  {
    v20 = v13;
  }

  else
  {
    v14 = xpc_null_create();
    v20 = v14;
    if (!v14)
    {
      v15 = xpc_null_create();
      v14 = 0;
      goto LABEL_17;
    }
  }

  if (xpc_get_type(v14) != &_xpc_type_dictionary)
  {
    v15 = xpc_null_create();
LABEL_17:
    v20 = v15;
    goto LABEL_18;
  }

  xpc_retain(v14);
LABEL_18:
  xpc_release(v14);
  v18 = xpc_uint64_create(a2);
  if (!v18)
  {
    v18 = xpc_null_create();
  }

  v17[0] = &v20;
  v17[1] = "ManateeAccessDurationSeconds";
  sub_10000F688(v17, &v18, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v18);
  v18 = 0;
  v16 = v20;
  if (v20)
  {
    xpc_retain(v20);
  }

  else
  {
    v16 = xpc_null_create();
  }

  (*(*v11 + 16))(v11, "commCenterCellularPlanManateeAccessDuration", &v16);
  xpc_release(v16);
  v16 = 0;
  xpc_release(v20);
LABEL_24:
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v10);
  }
}

void sub_100470D44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, xpc_object_t a14)
{
  xpc_release(object);
  xpc_release(a14);
  if ((v15 & 1) == 0)
  {
    sub_100004A34(v14);
  }

  _Unwind_Resume(a1);
}

void sub_100470D98(uint64_t a1, uint64_t a2)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 24));
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
  v27 = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, &v27);
  if (!v9)
  {
    v11 = 0;
LABEL_9:
    std::mutex::unlock(v4);
    v10 = 0;
    v12 = 1;
    if (!v11)
    {
      goto LABEL_38;
    }

    goto LABEL_10;
  }

  v11 = v9[3];
  v10 = v9[4];
  if (!v10)
  {
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v4);
  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v10);
  v12 = 0;
  if (!v11)
  {
    goto LABEL_38;
  }

LABEL_10:
  v31 = 0;
  v13 = xpc_dictionary_create(0, 0, 0);
  v14 = v13;
  if (v13)
  {
    v31 = v13;
  }

  else
  {
    v14 = xpc_null_create();
    v31 = v14;
    if (!v14)
    {
      v15 = xpc_null_create();
      v14 = 0;
      goto LABEL_17;
    }
  }

  if (xpc_get_type(v14) != &_xpc_type_dictionary)
  {
    v15 = xpc_null_create();
LABEL_17:
    v31 = v15;
    goto LABEL_18;
  }

  xpc_retain(v14);
LABEL_18:
  xpc_release(v14);
  if (*a2)
  {
    v16 = "Buddy";
  }

  else
  {
    v16 = "Postbuddy";
  }

  v29 = xpc_string_create(v16);
  if (!v29)
  {
    v29 = xpc_null_create();
  }

  v27 = &v31;
  v28 = "buddyState";
  sub_10000F688(&v27, &v29, &v30);
  xpc_release(v30);
  v30 = 0;
  xpc_release(v29);
  v29 = 0;
  if (*(a2 + 31) >= 0)
  {
    v17 = (a2 + 8);
  }

  else
  {
    v17 = *(a2 + 8);
  }

  v25 = xpc_string_create(v17);
  if (!v25)
  {
    v25 = xpc_null_create();
  }

  v27 = &v31;
  v28 = "carrierName";
  sub_10000F688(&v27, &v25, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v25);
  v25 = 0;
  v23 = xpc_int64_create(*(a2 + 32));
  if (!v23)
  {
    v23 = xpc_null_create();
  }

  v27 = &v31;
  v28 = "setupType";
  sub_10000F688(&v27, &v23, &v24);
  xpc_release(v24);
  v24 = 0;
  xpc_release(v23);
  v23 = 0;
  v21 = xpc_int64_create(*(a2 + 36));
  if (!v21)
  {
    v21 = xpc_null_create();
  }

  v27 = &v31;
  v28 = "setupResult";
  sub_10000F688(&v27, &v21, &v22);
  xpc_release(v22);
  v22 = 0;
  xpc_release(v21);
  v21 = 0;
  v19 = xpc_int64_create(*(a2 + 40));
  if (!v19)
  {
    v19 = xpc_null_create();
  }

  v27 = &v31;
  v28 = "setupDuration";
  sub_10000F688(&v27, &v19, &v20);
  xpc_release(v20);
  v20 = 0;
  xpc_release(v19);
  v18 = v31;
  v19 = 0;
  if (v31)
  {
    xpc_retain(v31);
  }

  else
  {
    v18 = xpc_null_create();
  }

  (*(*v11 + 16))(v11, "commCenterCellularPlanSetupTime", &v18);
  xpc_release(v18);
  v18 = 0;
  xpc_release(v31);
LABEL_38:
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v10);
  }
}

void sub_100471128(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(*(v11 - 56));
  if ((v10 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  _Unwind_Resume(a1);
}

void sub_1004711AC(uint64_t a1, BOOL a2, const char *a3, const char *a4, const char *a5, const char *a6)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 24));
  v12 = ServiceMap;
  if ((v13 & 0x8000000000000000) != 0)
  {
    v14 = (v13 & 0x7FFFFFFFFFFFFFFFLL);
    v15 = 5381;
    do
    {
      v13 = v15;
      v16 = *v14++;
      v15 = (33 * v15) ^ v16;
    }

    while (v16);
  }

  std::mutex::lock(ServiceMap);
  v33 = v13;
  v17 = sub_100009510(&v12[1].__m_.__sig, &v33);
  if (!v17)
  {
    v19 = 0;
LABEL_9:
    std::mutex::unlock(v12);
    v18 = 0;
    v20 = 1;
    if (!v19)
    {
      goto LABEL_40;
    }

    goto LABEL_10;
  }

  v19 = v17[3];
  v18 = v17[4];
  if (!v18)
  {
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v12);
  atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v18);
  v20 = 0;
  if (!v19)
  {
    goto LABEL_40;
  }

LABEL_10:
  v37 = 0;
  v21 = xpc_dictionary_create(0, 0, 0);
  v22 = v21;
  if (v21)
  {
    v37 = v21;
  }

  else
  {
    v22 = xpc_null_create();
    v37 = v22;
    if (!v22)
    {
      v23 = xpc_null_create();
      v22 = 0;
      goto LABEL_17;
    }
  }

  if (xpc_get_type(v22) != &_xpc_type_dictionary)
  {
    v23 = xpc_null_create();
LABEL_17:
    v37 = v23;
    goto LABEL_18;
  }

  xpc_retain(v22);
LABEL_18:
  xpc_release(v22);
  v35 = xpc_BOOL_create(a2);
  if (!v35)
  {
    v35 = xpc_null_create();
  }

  v33 = &v37;
  v34 = "dynamicBootstrap";
  sub_10000F688(&v33, &v35, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v35);
  v35 = 0;
  if (a3[23] < 0)
  {
    a3 = *a3;
  }

  v31 = xpc_string_create(a3);
  if (!v31)
  {
    v31 = xpc_null_create();
  }

  v33 = &v37;
  v34 = "registrationStatus";
  sub_10000F688(&v33, &v31, &v32);
  xpc_release(v32);
  v32 = 0;
  xpc_release(v31);
  v31 = 0;
  if (a4[23] < 0)
  {
    a4 = *a4;
  }

  v29 = xpc_string_create(a4);
  if (!v29)
  {
    v29 = xpc_null_create();
  }

  v33 = &v37;
  v34 = "roamingStatus";
  sub_10000F688(&v33, &v29, &v30);
  xpc_release(v30);
  v30 = 0;
  xpc_release(v29);
  v29 = 0;
  if (a5[23] < 0)
  {
    a5 = *a5;
  }

  v27 = xpc_string_create(a5);
  if (!v27)
  {
    v27 = xpc_null_create();
  }

  v33 = &v37;
  v34 = "internetStatus";
  sub_10000F688(&v33, &v27, &v28);
  xpc_release(v28);
  v28 = 0;
  xpc_release(v27);
  v27 = 0;
  if (a6[23] < 0)
  {
    a6 = *a6;
  }

  v25 = xpc_string_create(a6);
  if (!v25)
  {
    v25 = xpc_null_create();
  }

  v33 = &v37;
  v34 = "buddyState";
  sub_10000F688(&v33, &v25, &v26);
  xpc_release(v26);
  v26 = 0;
  xpc_release(v25);
  v24 = v37;
  v25 = 0;
  if (v37)
  {
    xpc_retain(v37);
  }

  else
  {
    v24 = xpc_null_create();
  }

  (*(*v19 + 16))(v19, "commCenterBootstrapAssertion", &v24);
  xpc_release(v24);
  v24 = 0;
  xpc_release(v37);
LABEL_40:
  if ((v20 & 1) == 0)
  {
    sub_100004A34(v18);
  }
}

void sub_100471564(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(*(v11 - 88));
  if ((v10 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  _Unwind_Resume(a1);
}

void sub_1004715EC(void *a1)
{
  sub_10047174C(a1);

  operator delete();
}

void *sub_100471688(void *__dst, __int128 *a2)
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
  *(__dst + 25) = *(a2 + 25);
  return __dst;
}

void sub_10047174C(void *a1)
{
  *a1 = off_101E4E6B8;
  v2 = a1[4];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  TMKXPCServer.shutdown()();
}

awd::metrics::CommCenterCellularPlanBootstrapDataUsage **sub_1004717B4(awd::metrics::CommCenterCellularPlanBootstrapDataUsage **a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 2) = a2;
  if (sub_10079D818(a2))
  {
    operator new();
  }

  return a1;
}

unsigned int *sub_10047189C(unsigned int *a1)
{
  sub_1004718F8(a1);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

unsigned int *sub_1004718F8(unsigned int *result)
{
  if (*result)
  {
    v1 = result;
    sub_100471970(result, result[2]);
    result = *v1;
    *v1 = 0;
    if (result)
    {
      v2 = *(*result + 8);

      return v2();
    }
  }

  return result;
}

void sub_100471970(uint64_t *a1, unsigned int a2)
{
  v10 = 0;
  v11 = 0;
  v4 = sub_10001C610(&v10);
  if (v10)
  {
    SharedMetricFactory = wis::MetricFactory::getSharedMetricFactory(v4);
    v6 = wis::MetricFactory::newMetricContainerWithIdentifier(SharedMetricFactory, a2);
    v7 = v6;
    if (v6)
    {
      v8 = *a1;
      *a1 = 0;
      if (v8)
      {
        if (*(v8 + 52))
        {
          WISTimestamp = *(v8 + 8);
        }

        else
        {
          WISTimestamp = wis::getWISTimestamp(v6);
          *(v8 + 52) |= 1u;
          *(v8 + 8) = WISTimestamp;
        }

        wis::MetricContainer::storeMetric(v7, WISTimestamp, *v7, v8);
        (*(*v8 + 8))(v8);
      }

      wis::WISServerConnection::SubmitMetric(v10, v7);
    }
  }

  if (v11)
  {
    sub_100004A34(v11);
  }
}

void sub_100471A50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  (*(*v10 + 8))(v10, a2, a3, a4, a5, a6, a7, a8);
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(a1);
}

void sub_100471A98(void *a1, uint64_t a2)
{
  v3 = a1[5];
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      if (a1[4])
      {
        sub_100471B24(a1 + 6, a2);
      }

      sub_100004A34(v6);
    }
  }
}

void sub_100471B24(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v4 = *(a2 + 16);
  }

  (*(v2 + 16))(v2, __p);
  if (SHIBYTE(v4) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100471B9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id sub_100471BB8(void *a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  a1[4] = *(a2 + 32);
  a1[5] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  result = objc_retainBlock(*(a2 + 48));
  a1[6] = result;
  return result;
}

void sub_100471BFC(uint64_t a1)
{
  v2 = *(a1 + 48);
  *(a1 + 48) = 0;

  v3 = *(a1 + 40);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

awd::metrics::CommCenterRemoteCellularPlanProfilesStatus **sub_100471C54(awd::metrics::CommCenterRemoteCellularPlanProfilesStatus **a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 2) = a2;
  if (sub_10079D818(a2))
  {
    operator new();
  }

  return a1;
}

unsigned int *sub_100471D3C(unsigned int *a1)
{
  sub_100471D98(a1);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

unsigned int *sub_100471D98(unsigned int *result)
{
  if (*result)
  {
    v1 = result;
    sub_100471E10(result, result[2]);
    result = *v1;
    *v1 = 0;
    if (result)
    {
      v2 = *(*result + 8);

      return v2();
    }
  }

  return result;
}

void sub_100471E10(uint64_t *a1, unsigned int a2)
{
  v10 = 0;
  v11 = 0;
  v4 = sub_10001C610(&v10);
  if (v10)
  {
    SharedMetricFactory = wis::MetricFactory::getSharedMetricFactory(v4);
    v6 = wis::MetricFactory::newMetricContainerWithIdentifier(SharedMetricFactory, a2);
    v7 = v6;
    if (v6)
    {
      v8 = *a1;
      *a1 = 0;
      if (v8)
      {
        if (*(v8 + 52))
        {
          WISTimestamp = *(v8 + 8);
        }

        else
        {
          WISTimestamp = wis::getWISTimestamp(v6);
          *(v8 + 52) |= 1u;
          *(v8 + 8) = WISTimestamp;
        }

        wis::MetricContainer::storeMetric(v7, WISTimestamp, *v7, v8);
        (*(*v8 + 8))(v8);
      }

      wis::WISServerConnection::SubmitMetric(v10, v7);
    }
  }

  if (v11)
  {
    sub_100004A34(v11);
  }
}

void sub_100471EF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  (*(*v10 + 8))(v10, a2, a3, a4, a5, a6, a7, a8);
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(a1);
}

void sub_100471F38()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

BOOL sub_100471F60(NSObject ***a1)
{
  v2 = a1[1];
  v3 = **a1;
  result = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (!v2)
  {
    if (!result)
    {
      return result;
    }

    LOWORD(v14) = 0;
    v7 = "#E lock: fPrefs nullptr !";
    v8 = v3;
    v9 = 2;
    goto LABEL_18;
  }

  if (result)
  {
    LOWORD(v14) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I lockPreferences start...", &v14, 2u);
  }

  if (SCPreferencesLock(a1[1], 1u))
  {
    v5 = 0;
LABEL_6:
    v6 = **a1;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 67109120;
      LODWORD(v15) = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I lockPreferences complete (attempt %u)", &v14, 8u);
    }

    result = 1;
    *(a1 + 16) = 1;
    return result;
  }

  v10 = 1;
  while (SCError() == 3005)
  {
    SCPreferencesSynchronize(a1[1]);
    if ((v10 & 1) == 0)
    {
      break;
    }

    v5 = 1;
    v10 = 0;
    if (SCPreferencesLock(a1[1], 1u))
    {
      goto LABEL_6;
    }
  }

  v11 = **a1;
  result = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    v12 = SCError();
    v13 = SCErrorString(v12);
    v14 = 136446210;
    v15 = v13;
    v7 = "#E Unable to lock SCPreferences: %{public}s";
    v8 = v11;
    v9 = 12;
LABEL_18:
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v7, &v14, v9);
    return 0;
  }

  return result;
}

BOOL sub_100472128(NSObject ***a1)
{
  v2 = a1[1];
  if (!v2)
  {
    v7 = **a1;
    result = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    LOWORD(v14) = 0;
    v8 = "#E apply: fPrefs nullptr !";
    v9 = v7;
    v10 = 2;
    goto LABEL_16;
  }

  v3 = SCPreferencesCommitChanges(v2);
  v4 = **a1;
  result = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (!v3)
  {
    if (!result)
    {
      return result;
    }

    v11 = SCError();
    v14 = 136446210;
    v15 = SCErrorString(v11);
    v8 = "#E SCPreferencesCommitChanges failed with %{public}s";
LABEL_15:
    v9 = v4;
    v10 = 12;
LABEL_16:
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v8, &v14, v10);
    return 0;
  }

  if (result)
  {
    LOWORD(v14) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I SCPreferencesCommitChanges succeeded", &v14, 2u);
  }

  v6 = SCPreferencesApplyChanges(a1[1]);
  v4 = **a1;
  result = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (!v6)
  {
    if (!result)
    {
      return result;
    }

    v12 = SCError();
    v13 = SCErrorString(v12);
    v14 = 136446210;
    v15 = v13;
    v8 = "#E SCPreferencesApplyChanges failed with %{public}s";
    goto LABEL_15;
  }

  if (result)
  {
    LOWORD(v14) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I SCPreferencesApplyChanges succeeded", &v14, 2u);
  }

  return 1;
}

BOOL sub_1004722E4(NSObject ***a1)
{
  v2 = a1[1];
  if (!v2)
  {
    v6 = **a1;
    result = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    LOWORD(v11) = 0;
    v7 = "#E unlock: fPrefs nullptr !";
    v8 = v6;
    v9 = 2;
LABEL_11:
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v7, &v11, v9);
    return 0;
  }

  if (*(a1 + 16) != 1)
  {
    return 0;
  }

  v3 = SCPreferencesUnlock(v2);
  v4 = **a1;
  result = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (!v3)
  {
    if (!result)
    {
      return result;
    }

    v10 = SCError();
    v11 = 136446210;
    v12 = SCErrorString(v10);
    v7 = "#E Unable to unlock SCPreferences: %{public}s";
    v8 = v4;
    v9 = 12;
    goto LABEL_11;
  }

  if (result)
  {
    LOWORD(v11) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I unlockPreferences complete", &v11, 2u);
  }

  *(a1 + 16) = 0;
  return 1;
}

void sub_1004724C4(void *a6@<X8>)
{
  *a6 = 0;
  a6[1] = 0;
  operator new();
}

void sub_1004725F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, dispatch_object_t object)
{
  v14 = *(v12 + 8);
  if (v14)
  {
    sub_100004A34(v14);
  }

  _Unwind_Resume(exception_object);
}

void sub_100472664(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DarwinPDPManager: bootstrap ...", buf, 2u);
  }

  sub_100473C84(a1);
  *(a1 + 416) = 1;
  *(a1 + 608) = 2;
  (*(*a1 + 24))(a1, a1 + 272, a1 + 276, a1 + 280, a1 + 284);
  v3 = *(a1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Created PDP manager", v4, 2u);
  }
}

void sub_100472754(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  if (*a2 && (v4 = *(*a2 + 8)) != 0)
  {
    v5 = SCNetworkSetCopyCurrent(v4);
    *a3 = v5;
    *v8 = 0;
    sub_1004865C4(v8);
    if (!v5)
    {
      Default = _SCNetworkSetCreateDefault();
      *a3 = Default;
      *v8 = 0;
      sub_1004865C4(v8);
      if (Default)
      {
        SCNetworkSetEstablishDefaultConfiguration();
      }
    }
  }

  else
  {
    v7 = *(a1 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#E copyNetworkSet: fPrefs nullptr !", v8, 2u);
    }
  }
}

const void **sub_100472844@<X0>(uint64_t a1@<X0>, SCNetworkSetRef *a2@<X1>, void *a3@<X8>)
{
  cf1 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"ip%d", (*(a1 + 120) + 1));
  if (cf1)
  {
    v5 = SCNetworkSetCopyServices(*a2);
    theArray = v5;
    if (v5 && (Count = CFArrayGetCount(v5), Count >= 1))
    {
      v7 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v7);
        Interface = SCNetworkServiceGetInterface(ValueAtIndex);
        if (Interface)
        {
          BSDName = SCNetworkInterfaceGetBSDName(Interface);
          if (BSDName)
          {
            if (CFEqual(cf1, BSDName))
            {
              break;
            }
          }
        }

        if (Count == ++v7)
        {
          goto LABEL_9;
        }
      }

      sub_100486AFC(a3, ValueAtIndex);
    }

    else
    {
LABEL_9:
      *a3 = 0;
    }

    sub_100010250(&theArray);
  }

  else
  {
    *a3 = 0;
  }

  return sub_100005978(&cf1);
}

void sub_100472938(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, const void *);
  sub_100010250(va);
  sub_100005978(va1);
  _Unwind_Resume(a1);
}

void sub_100472968(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  if (*a2 && *(*a2 + 8))
  {
    v5 = a2[1];
    v11[0] = *a2;
    v11[1] = v5;
    cf[0] = 0;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_100472754(a1, v11, cf);
    if (v5)
    {
      sub_100004A34(v5);
    }

    v6 = cf[0];
    if (cf[0])
    {
      *a3 = 0;
      v9 = v6;
      CFRetain(v6);
      sub_100472844(a1, &v9, a3);
      sub_1004865C4(&v9);
    }

    else
    {
      v8 = *(a1 + 40);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I copyServiceForUnit: cannot copy network set", buf, 2u);
      }

      *a3 = 0;
    }

    sub_1004865C4(cf);
  }

  else
  {
    v7 = *(a1 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(cf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#E copyServiceForUnit: no SCPreferencesRef", cf, 2u);
    }

    *a3 = 0;
  }
}