void sub_639734(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_63977C(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, int a5@<W4>, std::string *a6@<X8>)
{
  if (a1 != 6)
  {
    if (a1 == 20 || a1 == 15)
    {

      sub_6390F8(a1, a4, a6);
      return;
    }

    sub_638868(a1, 0, &v24);
    v11 = std::string::insert(&v24, 0, "Annotation_Details_", 0x13uLL);
    v12 = *&v11->__r_.__value_.__l.__data_;
    a6->__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
    *&a6->__r_.__value_.__l.__data_ = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    v13 = a3;
    v14 = a2;
    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
      v14 = a2;
      v13 = a3;
      if (a4)
      {
        goto LABEL_12;
      }
    }

    else if (a4)
    {
LABEL_12:
      v15 = 10;
      *(&v24.__r_.__value_.__s + 23) = 10;
      strcpy(&v24, "_NamedRoad");
      v16 = 0x6F5264656D614E5FLL;
LABEL_15:
      if ((v15 & 0x80u) == 0)
      {
        v17 = &v24;
      }

      else
      {
        v17 = v16;
      }

      if ((v15 & 0x80u) == 0)
      {
        size = v15;
      }

      else
      {
        size = v24.__r_.__value_.__l.__size_;
      }

      std::string::append(a6, v17, size);
      v19 = HIBYTE(v24.__r_.__value_.__r.__words[2]);
      if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v19 = v24.__r_.__value_.__l.__size_;
      }

      if (a5)
      {
        v20 = "_CrossStreet";
      }

      else
      {
        v20 = "_NoCrossStreet";
      }

      v21 = 14;
      if (a5)
      {
        v21 = 12;
      }

      if (v19)
      {
        v22 = v20;
      }

      else
      {
        v22 = "_NoLocation";
      }

      if (v19)
      {
        v23 = v21;
      }

      else
      {
        v23 = 11;
      }

      std::string::append(a6, v22, v23);
      std::string::append(a6, "_NoSecondary", 0xCuLL);
      if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v24.__r_.__value_.__l.__data_);
      }

      return;
    }

    sub_6393E8(v14, v13, &v24);
    v15 = HIBYTE(v24.__r_.__value_.__r.__words[2]);
    v16 = v24.__r_.__value_.__r.__words[0];
    goto LABEL_15;
  }

  sub_639014(a1, a5, a6);
}

void sub_6399A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_6399F0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v6 = a3;
    v9 = a1[1];
    v8 = a1[2];
    if (0x4FCACE213F2B3885 * ((v8 - v9) >> 3) >= a5)
    {
      v14 = v9 - a2;
      if (0x4FCACE213F2B3885 * ((v9 - a2) >> 3) >= a5)
      {
        v21 = 616 * a5;
        sub_639D4C(a1, a2, a1[1], a2 + 616 * a5);
        v22 = 0;
        v23 = v21 + v6;
        do
        {
          *(v22 + v5) = *v6;
          sub_5410A0(v22 + v5 + 16, v6 + 16);
          *(v22 + v5 + 128) = *(v6 + 128);
          sub_594568(v22 + v5 + 136, v6 + 136);
          sub_594568(v22 + v5 + 296, v6 + 296);
          sub_594568(v22 + v5 + 456, v6 + 456);
          v22 += 616;
          v6 += 616;
        }

        while (v6 != v23);
      }

      else
      {
        v16 = v14 + a3;
        v17 = a1[1];
        if (v14 + a3 != a4)
        {
          v18 = a5;
          v19 = 0;
          do
          {
            sub_63A19C(v9 + v19, v16 + v19);
            v19 += 616;
          }

          while (v16 + v19 != a4);
          v17 = v9 + v19;
          a5 = v18;
        }

        a1[1] = v17;
        if (v14 >= 1)
        {
          sub_639D4C(a1, v5, v9, v5 + 616 * a5);
          v20 = 0;
          do
          {
            *(v20 + v5) = *v6;
            sub_5410A0(v20 + v5 + 16, v6 + 16);
            *(v20 + v5 + 128) = *(v6 + 128);
            sub_594568(v20 + v5 + 136, v6 + 136);
            sub_594568(v20 + v5 + 296, v6 + 296);
            sub_594568(v20 + v5 + 456, v6 + 456);
            v20 += 616;
            v6 += 616;
          }

          while (v6 != v16);
        }
      }
    }

    else
    {
      v10 = *a1;
      v11 = a5 + 0x4FCACE213F2B3885 * ((v9 - *a1) >> 3);
      if (v11 > 0x6A63BD81A98EF6)
      {
        sub_1794();
      }

      v12 = 0x4FCACE213F2B3885 * ((v8 - v10) >> 3);
      if (2 * v12 > v11)
      {
        v11 = 2 * v12;
      }

      if (v12 >= 0x3531DEC0D4C77BLL)
      {
        v13 = 0x6A63BD81A98EF6;
      }

      else
      {
        v13 = v11;
      }

      v34 = a1;
      if (v13)
      {
        if (v13 <= 0x6A63BD81A98EF6)
        {
          operator new();
        }

        sub_1808();
      }

      v24 = 8 * ((a2 - v10) >> 3);
      __p = 0;
      v31 = v24;
      v32 = v24;
      v33 = 0;
      v25 = 616 * a5;
      v26 = v24 + 616 * a5;
      do
      {
        sub_63A19C(v24, v6);
        v24 += 616;
        v6 += 616;
        v25 -= 616;
      }

      while (v25);
      v32 = v26;
      v5 = sub_639EBC(a1, &__p, v5);
      v28 = v31;
      for (i = v32; v32 != v28; i = v32)
      {
        v32 = i - 616;
        sub_5C2320(i - 616);
      }

      if (__p)
      {
        operator delete(__p);
      }
    }
  }

  return v5;
}

void sub_639CF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_63A148(va);
  _Unwind_Resume(a1);
}

void sub_639D04(_Unwind_Exception *exception_object)
{
  if (v4)
  {
    v6 = v3 - 616;
    v7 = -v4;
    do
    {
      sub_5C2320(v6);
      v6 -= 616;
      v7 += 616;
    }

    while (v7);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

void sub_639D34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_63A148(va);
  _Unwind_Resume(a1);
}

uint64_t sub_639D4C(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = *(result + 8);
  v6 = a2 + v5 - a4;
  v7 = v5;
  if (v6 < a3)
  {
    v18 = result;
    v19 = a2;
    v9 = 0;
    do
    {
      v12 = v6 + v9;
      v13 = v5 + v9;
      *v13 = *(v6 + v9);
      *(v5 + v9 + 16) = 0;
      *(v13 + 48) = -1;
      v14 = *(v6 + v9 + 48);
      if (v14 != -1)
      {
        v20 = v5 + v9 + 16;
        (off_266BE50[v14])(&v20, v12 + 16);
        *(v13 + 48) = v14;
      }

      *(v13 + 56) = *(v12 + 56);
      v10 = *(v12 + 64);
      *(v13 + 80) = *(v12 + 80);
      *(v13 + 64) = v10;
      *(v12 + 72) = 0;
      *(v12 + 80) = 0;
      *(v12 + 64) = 0;
      *(v13 + 88) = *(v12 + 88);
      v11 = *(v12 + 96);
      *(v13 + 112) = *(v12 + 112);
      *(v13 + 96) = v11;
      *(v12 + 104) = 0;
      *(v12 + 112) = 0;
      *(v12 + 96) = 0;
      *(v13 + 120) = *(v12 + 120);
      *(v13 + 128) = *(v12 + 128);
      sub_63A2E8(v13 + 136, v12 + 136);
      v9 += 616;
    }

    while (v12 + 616 < a3);
    v7 = v5 + v9;
    result = v18;
    a2 = v19;
  }

  *(result + 8) = v7;
  if (v5 != a4)
  {
    v15 = v5 - 616;
    v16 = a4 - v5;
    v17 = a2 + v5 - 616 - a4;
    do
    {
      result = sub_63A54C(v15, v17);
      v15 -= 616;
      v17 -= 616;
      v16 += 616;
    }

    while (v16);
  }

  return result;
}

uint64_t sub_639EBC(uint64_t *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v27 = a2[1];
  v6 = a1[1];
  if (v6 != a3)
  {
    v7 = 0;
    v8 = a2[2];
    do
    {
      v11 = a3 + v7;
      v12 = v8 + v7;
      *v12 = *(a3 + v7);
      *(v8 + v7 + 16) = 0;
      *(v12 + 48) = -1;
      v13 = *(a3 + v7 + 48);
      if (v13 != -1)
      {
        v29 = v8 + v7 + 16;
        (off_266BE50[v13])(&v29, v11 + 16);
        *(v12 + 48) = v13;
      }

      *(v12 + 56) = *(v11 + 56);
      v9 = *(v11 + 64);
      *(v12 + 80) = *(v11 + 80);
      *(v12 + 64) = v9;
      *(v11 + 72) = 0;
      *(v11 + 80) = 0;
      *(v11 + 64) = 0;
      *(v12 + 88) = *(v11 + 88);
      v10 = *(v11 + 96);
      *(v12 + 112) = *(v11 + 112);
      *(v12 + 96) = v10;
      *(v11 + 104) = 0;
      *(v11 + 112) = 0;
      *(v11 + 96) = 0;
      *(v12 + 120) = *(v11 + 120);
      *(v12 + 128) = *(v11 + 128);
      sub_63A2E8(v12 + 136, v11 + 136);
      v7 += 616;
    }

    while (v11 + 616 != v6);
    v14 = a3;
    v5 = a1;
    do
    {
      sub_5C2320(v14);
      v14 += 616;
    }

    while (v14 != v6);
  }

  a2[2] += v5[1] - a3;
  v5[1] = a3;
  v15 = *v5;
  v16 = a2[1] + *v5 - a3;
  if (*v5 != a3)
  {
    v17 = 0;
    do
    {
      v20 = v15 + v17;
      v21 = v16 + v17;
      *v21 = *(v15 + v17);
      *(v16 + v17 + 16) = 0;
      *(v21 + 48) = -1;
      v22 = *(v15 + v17 + 48);
      if (v22 != -1)
      {
        v29 = v16 + v17 + 16;
        (off_266BE50[v22])(&v29, v20 + 16);
        *(v21 + 48) = v22;
      }

      *(v21 + 56) = *(v20 + 56);
      v18 = *(v20 + 64);
      *(v21 + 80) = *(v20 + 80);
      *(v21 + 64) = v18;
      *(v20 + 72) = 0;
      *(v20 + 80) = 0;
      *(v20 + 64) = 0;
      *(v21 + 88) = *(v20 + 88);
      v19 = *(v20 + 96);
      *(v21 + 112) = *(v20 + 112);
      *(v21 + 96) = v19;
      *(v20 + 104) = 0;
      *(v20 + 112) = 0;
      *(v20 + 96) = 0;
      *(v21 + 120) = *(v20 + 120);
      *(v21 + 128) = *(v20 + 128);
      sub_63A2E8(v21 + 136, v20 + 136);
      v17 += 616;
    }

    while (v20 + 616 != a3);
    v5 = a1;
    do
    {
      sub_5C2320(v15);
      v15 += 616;
    }

    while (v15 != a3);
  }

  a2[1] = v16;
  v23 = *v5;
  *v5 = v16;
  v5[1] = v23;
  a2[1] = v23;
  v24 = v5[1];
  v5[1] = a2[2];
  a2[2] = v24;
  v25 = v5[2];
  v5[2] = a2[3];
  a2[3] = v25;
  *a2 = a2[1];
  return v27;
}

uint64_t sub_63A148(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 616;
    sub_5C2320(i - 616);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_63A19C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  sub_55F1E8(a1 + 16, a2 + 16);
  *(a1 + 128) = *(a2 + 128);
  sub_55BD50(a1 + 136, a2 + 136);
  sub_55BD50(a1 + 296, a2 + 296);
  sub_55BD50(a1 + 456, a2 + 456);
  return a1;
}

void sub_63A1FC(_Unwind_Exception *a1)
{
  sub_53A868(v1 + 296);
  sub_53A868(v1 + 136);
  sub_53E440(v1 + 16);
  _Unwind_Resume(a1);
}

uint64_t sub_63A23C(uint64_t a1)
{
  sub_53A868(a1 + 456);
  sub_53A868(a1 + 296);
  sub_53A868(a1 + 136);
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
    if ((*(a1 + 87) & 0x80000000) == 0)
    {
LABEL_3:
      v2 = *(a1 + 48);
      if (v2 == -1)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  else if ((*(a1 + 87) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 64));
  v2 = *(a1 + 48);
  if (v2 != -1)
  {
LABEL_7:
    (off_266BE00[v2])(&v4, a1 + 16);
  }

LABEL_8:
  *(a1 + 48) = -1;
  return a1;
}

__n128 sub_63A2E8(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = *(a2 + 72);
  v2 = *(a2 + 96);
  *(a1 + 88) = *(a2 + 88);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(a1 + 96) = v2;
  v3 = *(a2 + 104);
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 104) = v3;
  v4 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 112) = v4;
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  *(a2 + 112) = 0;
  v5 = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 136) = v5;
  *(a2 + 144) = 0;
  *(a2 + 152) = 0;
  *(a2 + 136) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = *(a2 + 176);
  *(a2 + 160) = 0;
  *(a2 + 168) = 0;
  *(a2 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 200) = *(a2 + 200);
  *(a2 + 184) = 0;
  *(a2 + 192) = 0;
  *(a2 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 224) = *(a2 + 224);
  *(a2 + 208) = 0;
  *(a2 + 216) = 0;
  *(a2 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 232) = *(a2 + 232);
  v6 = *(a2 + 256);
  *(a1 + 248) = *(a2 + 248);
  *(a2 + 232) = 0;
  *(a2 + 240) = 0;
  *(a2 + 248) = 0;
  *(a2 + 256) = 0;
  *(a1 + 256) = v6;
  v7 = *(a2 + 264);
  *(a1 + 268) = *(a2 + 268);
  *(a1 + 264) = v7;
  v8 = *(a2 + 272);
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 272) = v8;
  *(a2 + 280) = 0;
  *(a2 + 288) = 0;
  *(a2 + 272) = 0;
  v9 = *(a2 + 296);
  *(a1 + 312) = *(a2 + 312);
  *(a1 + 296) = v9;
  *(a2 + 304) = 0;
  *(a2 + 312) = 0;
  *(a2 + 296) = 0;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 336) = *(a2 + 336);
  *(a2 + 320) = 0;
  *(a2 + 328) = 0;
  *(a2 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  *(a1 + 344) = *(a2 + 344);
  *(a1 + 352) = *(a2 + 352);
  *(a2 + 344) = 0;
  *(a2 + 352) = 0;
  *(a2 + 360) = 0;
  *(a1 + 368) = 0;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  *(a1 + 368) = *(a2 + 368);
  *(a1 + 384) = *(a2 + 384);
  *(a2 + 368) = 0;
  *(a2 + 376) = 0;
  *(a2 + 384) = 0;
  *(a1 + 392) = 0;
  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  *(a1 + 392) = *(a2 + 392);
  *(a1 + 400) = *(a2 + 400);
  *(a2 + 392) = 0;
  *(a2 + 400) = 0;
  v10 = *(a2 + 416);
  *(a2 + 408) = 0;
  *(a2 + 416) = 0;
  *(a1 + 416) = v10;
  LODWORD(v10) = *(a2 + 424);
  *(a1 + 428) = *(a2 + 428);
  *(a1 + 424) = v10;
  v11 = *(a2 + 432);
  *(a1 + 448) = *(a2 + 448);
  *(a1 + 432) = v11;
  *(a2 + 440) = 0;
  *(a2 + 448) = 0;
  *(a2 + 432) = 0;
  result = *(a2 + 456);
  *(a1 + 472) = *(a2 + 472);
  *(a1 + 456) = result;
  *(a2 + 464) = 0;
  *(a2 + 472) = 0;
  *(a2 + 456) = 0;
  return result;
}

uint64_t sub_63A54C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a1 + 48);
  v5 = *(a2 + 48);
  if (v4 == -1)
  {
    if (v5 == -1)
    {
      goto LABEL_6;
    }
  }

  else if (v5 == -1)
  {
    (off_266BE00[v4])(&v10, a1 + 16);
    *(a1 + 48) = -1;
    goto LABEL_6;
  }

  v9 = a1 + 16;
  (off_266BE78[v5])(&v9);
LABEL_6:
  *(a1 + 56) = *(a2 + 56);
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  v6 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 64) = v6;
  *(a2 + 87) = 0;
  *(a2 + 64) = 0;
  *(a1 + 88) = *(a2 + 88);
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  v7 = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 96) = v7;
  *(a2 + 119) = 0;
  *(a2 + 96) = 0;
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  sub_53D784(a1 + 136, a2 + 136);
  sub_53D784(a1 + 296, a2 + 296);
  sub_53D784(a1 + 456, a2 + 456);
  return a1;
}

uint64_t sub_63A680(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, _BYTE *a5, int *a6)
{
  v6 = 0x4FCACE213F2B3885 * ((a1[1] - *a1) >> 3);
  v7 = v6 + 1;
  if ((v6 + 1) > 0x6A63BD81A98EF6)
  {
    sub_1794();
  }

  if (0x9F959C427E56710ALL * ((a1[2] - *a1) >> 3) > v7)
  {
    v7 = 0x9F959C427E56710ALL * ((a1[2] - *a1) >> 3);
  }

  if ((0x4FCACE213F2B3885 * ((a1[2] - *a1) >> 3)) >= 0x3531DEC0D4C77BLL)
  {
    v9 = 0x6A63BD81A98EF6;
  }

  else
  {
    v9 = v7;
  }

  v18 = a1;
  if (v9)
  {
    if (v9 <= 0x6A63BD81A98EF6)
    {
      operator new();
    }

    sub_1808();
  }

  __p = 0;
  v15 = 616 * v6;
  v17 = 0;
  sub_63A814(616 * v6, a2, a3, a4, a5, a6);
  v16 = 616 * v6 + 616;
  sub_63A8CC(a1, &__p);
  v10 = a1[1];
  v12 = v15;
  for (i = v16; v16 != v12; i = v16)
  {
    v16 = i - 616;
    sub_5C2320(i - 616);
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v10;
}

void sub_63A800(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_63A148(va);
  _Unwind_Resume(a1);
}

uint64_t sub_63A814(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, _BYTE *a5, int *a6)
{
  v8 = *a2;
  v9 = *a6;
  *a1 = *a5;
  *(a1 + 8) = v8;
  sub_55F1E8(a1 + 16, a3);
  *(a1 + 128) = v9;
  sub_55BD50(a1 + 136, a4);
  sub_55BD50(a1 + 296, a4 + 160);
  sub_55BD50(a1 + 456, a4 + 320);
  return a1;
}

void sub_63A88C(_Unwind_Exception *a1)
{
  sub_53A868(v1 + 296);
  sub_53A868(v1 + 136);
  sub_53E440(v1 + 16);
  _Unwind_Resume(a1);
}

void sub_63A8CC(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a2[1] + *a1 - v5;
  if (v5 != *a1)
  {
    v7 = 0;
    do
    {
      v10 = v4 + v7;
      v11 = v6 + v7;
      *v11 = *(v4 + v7);
      *(v6 + v7 + 16) = 0;
      *(v11 + 48) = -1;
      v12 = *(v4 + v7 + 48);
      if (v12 != -1)
      {
        v16 = v6 + v7 + 16;
        (off_266BE50[v12])(&v16, v10 + 16);
        *(v11 + 48) = v12;
      }

      *(v11 + 56) = *(v10 + 56);
      v8 = *(v10 + 64);
      *(v11 + 80) = *(v10 + 80);
      *(v11 + 64) = v8;
      *(v10 + 72) = 0;
      *(v10 + 80) = 0;
      *(v10 + 64) = 0;
      *(v11 + 88) = *(v10 + 88);
      v9 = *(v10 + 96);
      *(v11 + 112) = *(v10 + 112);
      *(v11 + 96) = v9;
      *(v10 + 104) = 0;
      *(v10 + 112) = 0;
      *(v10 + 96) = 0;
      *(v11 + 120) = *(v10 + 120);
      *(v11 + 128) = *(v10 + 128);
      sub_63A2E8(v11 + 136, v10 + 136);
      v7 += 616;
    }

    while (v10 + 616 != v5);
    do
    {
      sub_5C2320(v4);
      v4 += 616;
    }

    while (v4 != v5);
  }

  a2[1] = v6;
  v13 = *a1;
  *a1 = v6;
  a1[1] = v13;
  a2[1] = v13;
  v14 = a1[1];
  a1[1] = a2[2];
  a2[2] = v14;
  v15 = a1[2];
  a1[2] = a2[3];
  a2[3] = v15;
  *a2 = a2[1];
}

uint64_t sub_63AA44(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, _BYTE *a5, int *a6)
{
  v6 = 0x4FCACE213F2B3885 * ((a1[1] - *a1) >> 3);
  v7 = v6 + 1;
  if ((v6 + 1) > 0x6A63BD81A98EF6)
  {
    sub_1794();
  }

  if (0x9F959C427E56710ALL * ((a1[2] - *a1) >> 3) > v7)
  {
    v7 = 0x9F959C427E56710ALL * ((a1[2] - *a1) >> 3);
  }

  if ((0x4FCACE213F2B3885 * ((a1[2] - *a1) >> 3)) >= 0x3531DEC0D4C77BLL)
  {
    v9 = 0x6A63BD81A98EF6;
  }

  else
  {
    v9 = v7;
  }

  v18 = a1;
  if (v9)
  {
    if (v9 <= 0x6A63BD81A98EF6)
    {
      operator new();
    }

    sub_1808();
  }

  __p = 0;
  v15 = 616 * v6;
  v17 = 0;
  sub_63ABD8(616 * v6, a2, a3, a4, a5, a6);
  v16 = 616 * v6 + 616;
  sub_63A8CC(a1, &__p);
  v10 = a1[1];
  v12 = v15;
  for (i = v16; v16 != v12; i = v16)
  {
    v16 = i - 616;
    sub_5C2320(i - 616);
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v10;
}

void sub_63ABC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_63A148(va);
  _Unwind_Resume(a1);
}

uint64_t sub_63ABD8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, _BYTE *a5, int *a6)
{
  v8 = *a2;
  v9 = *a6;
  *a1 = *a5;
  *(a1 + 8) = v8;
  sub_55F1E8(a1 + 16, a3);
  *(a1 + 128) = v9;
  sub_55BD50(a1 + 136, a4);
  sub_55BD50(a1 + 296, a4 + 160);
  sub_55BD50(a1 + 456, a4 + 320);
  return a1;
}

void sub_63AC50(_Unwind_Exception *a1)
{
  sub_53A868(v1 + 296);
  sub_53A868(v1 + 136);
  sub_53E440(v1 + 16);
  _Unwind_Resume(a1);
}

uint64_t sub_63AC90(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, _BYTE *a5, int *a6)
{
  v6 = 0x4FCACE213F2B3885 * ((a1[1] - *a1) >> 3);
  v7 = v6 + 1;
  if ((v6 + 1) > 0x6A63BD81A98EF6)
  {
    sub_1794();
  }

  if (0x9F959C427E56710ALL * ((a1[2] - *a1) >> 3) > v7)
  {
    v7 = 0x9F959C427E56710ALL * ((a1[2] - *a1) >> 3);
  }

  if ((0x4FCACE213F2B3885 * ((a1[2] - *a1) >> 3)) >= 0x3531DEC0D4C77BLL)
  {
    v9 = 0x6A63BD81A98EF6;
  }

  else
  {
    v9 = v7;
  }

  v18 = a1;
  if (v9)
  {
    if (v9 <= 0x6A63BD81A98EF6)
    {
      operator new();
    }

    sub_1808();
  }

  __p = 0;
  v15 = 616 * v6;
  v17 = 0;
  sub_63AE24(616 * v6, a2, a3, a4, a5, a6);
  v16 = 616 * v6 + 616;
  sub_63A8CC(a1, &__p);
  v10 = a1[1];
  v12 = v15;
  for (i = v16; v16 != v12; i = v16)
  {
    v16 = i - 616;
    sub_5C2320(i - 616);
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v10;
}

void sub_63AE10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_63A148(va);
  _Unwind_Resume(a1);
}

uint64_t sub_63AE24(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, _BYTE *a5, int *a6)
{
  v8 = *a2;
  v9 = *a6;
  *a1 = *a5;
  *(a1 + 8) = v8;
  sub_55F1E8(a1 + 16, a3);
  *(a1 + 128) = v9;
  sub_55BD50(a1 + 136, a4);
  sub_55BD50(a1 + 296, a4 + 160);
  sub_55BD50(a1 + 456, a4 + 320);
  return a1;
}

void sub_63AE9C(_Unwind_Exception *a1)
{
  sub_53A868(v1 + 296);
  sub_53A868(v1 + 136);
  sub_53E440(v1 + 16);
  _Unwind_Resume(a1);
}

uint64_t sub_63AEDC(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, _BYTE *a5, int *a6)
{
  v6 = 0x4FCACE213F2B3885 * ((a1[1] - *a1) >> 3);
  v7 = v6 + 1;
  if ((v6 + 1) > 0x6A63BD81A98EF6)
  {
    sub_1794();
  }

  if (0x9F959C427E56710ALL * ((a1[2] - *a1) >> 3) > v7)
  {
    v7 = 0x9F959C427E56710ALL * ((a1[2] - *a1) >> 3);
  }

  if ((0x4FCACE213F2B3885 * ((a1[2] - *a1) >> 3)) >= 0x3531DEC0D4C77BLL)
  {
    v9 = 0x6A63BD81A98EF6;
  }

  else
  {
    v9 = v7;
  }

  v18 = a1;
  if (v9)
  {
    if (v9 <= 0x6A63BD81A98EF6)
    {
      operator new();
    }

    sub_1808();
  }

  __p = 0;
  v15 = 616 * v6;
  v17 = 0;
  sub_63B070(616 * v6, a2, a3, a4, a5, a6);
  v16 = 616 * v6 + 616;
  sub_63A8CC(a1, &__p);
  v10 = a1[1];
  v12 = v15;
  for (i = v16; v16 != v12; i = v16)
  {
    v16 = i - 616;
    sub_5C2320(i - 616);
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v10;
}

void sub_63B05C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_63A148(va);
  _Unwind_Resume(a1);
}

uint64_t sub_63B070(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, _BYTE *a5, int *a6)
{
  v8 = *a2;
  v9 = *a6;
  *a1 = *a5;
  *(a1 + 8) = v8;
  sub_55F1E8(a1 + 16, a3);
  *(a1 + 128) = v9;
  sub_55BD50(a1 + 136, a4);
  sub_55BD50(a1 + 296, a4 + 160);
  sub_55BD50(a1 + 456, a4 + 320);
  return a1;
}

void sub_63B0E8(_Unwind_Exception *a1)
{
  sub_53A868(v1 + 296);
  sub_53A868(v1 + 136);
  sub_53E440(v1 + 16);
  _Unwind_Resume(a1);
}

void sub_63B128(unint64_t result, __int128 *a2, uint64_t a3, uint64_t a4, char a5)
{
LABEL_1:
  v8 = result;
LABEL_2:
  v9 = 1 - a4;
  while (1)
  {
    result = v8;
    v10 = v9;
    v11 = a2 - v8;
    v12 = 0x4FCACE213F2B3885 * (v11 >> 3);
    if (v12 > 2)
    {
      break;
    }

    if (v12 < 2)
    {
      return;
    }

    if (v12 == 2)
    {
      v21 = *(a2 - 76);
      v22 = *(result + 8);
      v23 = v21 == v22;
      v24 = v21 < v22;
      if (v23)
      {
        v24 = *(a2 - 122) > *(result + 128);
      }

      if (v24)
      {
        v25 = result;
        v26 = a2 - 616;
        goto LABEL_37;
      }

      return;
    }

LABEL_10:
    if (v11 <= 14783)
    {
      if (a5)
      {

        sub_63B940(result, a2);
      }

      else
      {

        sub_63BED8(result, a2);
      }

      return;
    }

    if (v9 == 1)
    {
      if (result != a2)
      {
        v36 = (v12 - 2) >> 1;
        v37 = v36 + 1;
        v38 = (result + 616 * v36);
        do
        {
          sub_63D594(result, a3, 0x4FCACE213F2B3885 * (v11 >> 3), v38);
          v38 = (v38 - 616);
          --v37;
        }

        while (v37);
        v39 = 0x4FCACE213F2B3885 * (v11 >> 3);
        do
        {
          sub_63DA00(result, a2, a3, v39);
          a2 = (a2 - 616);
        }

        while (v39-- > 2);
      }

      return;
    }

    v13 = v12 >> 1;
    v14 = result + 616 * (v12 >> 1);
    if (v11 < 0x13401)
    {
      sub_63B63C(v14, result, a2 - 616);
      if (a5)
      {
        goto LABEL_19;
      }
    }

    else
    {
      sub_63B63C(result, v14, a2 - 616);
      sub_63B63C(result + 616, 616 * v13 + result - 616, (a2 - 77));
      sub_63B63C(result + 1232, result + 616 + 616 * v13, a2 - 1848);
      sub_63B63C(616 * v13 + result - 616, v14, result + 616 + 616 * v13);
      sub_63D28C(result, v14);
      if (a5)
      {
        goto LABEL_19;
      }
    }

    v15 = *(result - 608);
    v16 = *(result + 8);
    v23 = v15 == v16;
    v17 = v15 < v16;
    if (v23)
    {
      v17 = *(result - 488) > *(result + 128);
    }

    if (!v17)
    {
      v8 = sub_63C444(result, a2);
      goto LABEL_24;
    }

LABEL_19:
    v18 = sub_63C894(result, a2);
    if ((v19 & 1) == 0)
    {
      goto LABEL_22;
    }

    v20 = sub_63CCE0(result, v18);
    v8 = v18 + 616;
    if (sub_63CCE0(v18 + 616, a2))
    {
      a4 = -v10;
      a2 = v18;
      if (v20)
      {
        return;
      }

      goto LABEL_1;
    }

    v9 = v10 + 1;
    if (!v20)
    {
LABEL_22:
      sub_63B128(result, v18, a3, -v10, a5 & 1);
      v8 = v18 + 616;
LABEL_24:
      a5 = 0;
      a4 = -v10;
      goto LABEL_2;
    }
  }

  if (v12 == 3)
  {

    sub_63B63C(result, result + 616, a2 - 616);
    return;
  }

  if (v12 != 4)
  {
    if (v12 == 5)
    {

      sub_63B750(result, result + 616, result + 1232, result + 1848, a2 - 616);
      return;
    }

    goto LABEL_10;
  }

  sub_63B63C(result, result + 616, result + 1232);
  v27 = *(a2 - 76);
  v28 = *(result + 1240);
  v23 = v27 == v28;
  v29 = v27 < v28;
  if (v23)
  {
    v29 = *(a2 - 122) > *(result + 1360);
  }

  if (v29)
  {
    sub_63D28C((result + 1232), a2 - 616);
    v30 = *(result + 1240);
    v31 = *(result + 624);
    v23 = v30 == v31;
    v32 = v30 < v31;
    if (v23)
    {
      v32 = *(result + 1360) > *(result + 744);
    }

    if (v32)
    {
      sub_63D28C((result + 616), result + 1232);
      v33 = *(result + 624);
      v34 = *(result + 8);
      v23 = v33 == v34;
      v35 = v33 < v34;
      if (v23)
      {
        v35 = *(result + 744) > *(result + 128);
      }

      if (v35)
      {
        v26 = result + 616;
        v25 = result;
LABEL_37:

        sub_63D28C(v25, v26);
      }
    }
  }
}

uint64_t sub_63B63C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 8);
  v5 = *(a1 + 8);
  v6 = *(a2 + 128);
  v7 = v4 == v5;
  v8 = v4 < v5;
  if (v7)
  {
    v8 = v6 > *(a1 + 128);
  }

  v9 = *(a3 + 8);
  v10 = *(a3 + 128) > v6;
  v7 = v9 == v4;
  v11 = v9 < v4;
  if (v7)
  {
    v11 = v10;
  }

  if (v8)
  {
    if (v11)
    {
      v12 = a3;
    }

    else
    {
      sub_63D28C(a1, a2);
      v18 = *(a3 + 8);
      v19 = *(a2 + 8);
      v7 = v18 == v19;
      v20 = v18 < v19;
      if (v7)
      {
        v20 = *(a3 + 128) > *(a2 + 128);
      }

      if (!v20)
      {
        return 1;
      }

      v12 = a3;
      a1 = a2;
    }

LABEL_17:
    sub_63D28C(a1, v12);
    return 1;
  }

  if (v11)
  {
    v13 = a1;
    sub_63D28C(a2, a3);
    v14 = *(a2 + 8);
    v15 = *(v13 + 8);
    v7 = v14 == v15;
    v16 = v14 < v15;
    if (v7)
    {
      v16 = *(a2 + 128) > *(v13 + 128);
    }

    if (!v16)
    {
      return 1;
    }

    a1 = v13;
    v12 = a2;
    goto LABEL_17;
  }

  return 0;
}

void sub_63B750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_63B63C(a1, a2, a3);
  v10 = *(a4 + 8);
  v11 = *(a3 + 8);
  v12 = v10 == v11;
  v13 = v10 < v11;
  if (v12)
  {
    v13 = *(a4 + 128) > *(a3 + 128);
  }

  if (v13)
  {
    sub_63D28C(a3, a4);
    v14 = *(a3 + 8);
    v15 = *(a2 + 8);
    v12 = v14 == v15;
    v16 = v14 < v15;
    if (v12)
    {
      v16 = *(a3 + 128) > *(a2 + 128);
    }

    if (v16)
    {
      sub_63D28C(a2, a3);
      v17 = *(a2 + 8);
      v18 = *(a1 + 8);
      v12 = v17 == v18;
      v19 = v17 < v18;
      if (v12)
      {
        v19 = *(a2 + 128) > *(a1 + 128);
      }

      if (v19)
      {
        sub_63D28C(a1, a2);
      }
    }
  }

  v20 = *(a5 + 8);
  v21 = *(a4 + 8);
  v12 = v20 == v21;
  v22 = v20 < v21;
  if (v12)
  {
    v22 = *(a5 + 128) > *(a4 + 128);
  }

  if (v22)
  {
    sub_63D28C(a4, a5);
    v23 = *(a4 + 8);
    v24 = *(a3 + 8);
    v12 = v23 == v24;
    v25 = v23 < v24;
    if (v12)
    {
      v25 = *(a4 + 128) > *(a3 + 128);
    }

    if (v25)
    {
      sub_63D28C(a3, a4);
      v26 = *(a3 + 8);
      v27 = *(a2 + 8);
      v12 = v26 == v27;
      v28 = v26 < v27;
      if (v12)
      {
        v28 = *(a3 + 128) > *(a2 + 128);
      }

      if (v28)
      {
        sub_63D28C(a2, a3);
        v29 = *(a2 + 8);
        v30 = *(a1 + 8);
        v12 = v29 == v30;
        v31 = v29 < v30;
        if (v12)
        {
          v31 = *(a2 + 128) > *(a1 + 128);
        }

        if (v31)
        {

          sub_63D28C(a1, a2);
        }
      }
    }
  }
}

void sub_63B940(_OWORD *a1, _OWORD *a2)
{
  if (a1 == a2)
  {
    return;
  }

  v3 = a1 + 616;
  if ((a1 + 616) == a2)
  {
    return;
  }

  v4 = 0;
  v5 = a1;
  v33 = a2;
  while (2)
  {
    v6 = v3;
    v7 = *(v5 + 78);
    v8 = *(v5 + 1);
    v9 = *(v5 + 186);
    v10 = v7 == v8;
    v11 = v7 < v8;
    if (v10)
    {
      v11 = v9 > *(v5 + 32);
    }

    if (!v11)
    {
      goto LABEL_5;
    }

    v34 = *v6;
    v35[0] = 0;
    v36 = -1;
    v12 = *(v5 + 166);
    if (v12 != -1)
    {
      v90[0] = v35;
      (off_266BE50[v12])(v90, v5 + 632);
      v36 = v12;
      v9 = *(v5 + 186);
    }

    v37 = *(v5 + 84);
    v39 = *(v5 + 87);
    v38 = *(v5 + 680);
    v5[43] = 0u;
    *(v5 + 85) = 0;
    v40 = *(v5 + 704);
    v42 = *(v5 + 91);
    __p = *(v5 + 712);
    *(v5 + 91) = 0;
    *(v5 + 712) = 0u;
    v43 = *(v5 + 736);
    v44 = v9;
    v45 = v5[47];
    v46 = *(v5 + 96);
    v5[47] = 0u;
    *(v5 + 96) = 0;
    v47 = *(v5 + 776);
    v48 = *(v5 + 99);
    *(v5 + 776) = 0u;
    *(v5 + 99) = 0;
    v49 = v5[50];
    v50 = *(v5 + 102);
    v5[50] = 0u;
    *(v5 + 102) = 0;
    v51 = *(v5 + 824);
    v52 = *(v5 + 105);
    *(v5 + 824) = 0u;
    *(v5 + 105) = 0;
    v13 = *(v5 + 106);
    *(v5 + 106) = 0;
    v54 = *(v5 + 214);
    v55 = *(v5 + 430);
    v56 = v5[54];
    v57 = *(v5 + 110);
    *(v5 + 110) = 0;
    v5[54] = 0u;
    v14 = *(v5 + 888);
    v59 = *(v5 + 113);
    v58 = v14;
    *(v5 + 113) = 0;
    *(v5 + 888) = 0u;
    v60 = v5[57];
    v15 = *(v5 + 116);
    v53 = v13;
    v61 = v15;
    v5[57] = 0u;
    *(v5 + 116) = 0;
    v62 = *(v5 + 936);
    v63 = *(v5 + 119);
    *(v5 + 936) = 0u;
    *(v5 + 119) = 0;
    v64 = v5[60];
    v65 = *(v5 + 122);
    v5[60] = 0u;
    *(v5 + 122) = 0;
    v66 = *(v5 + 984);
    v67 = *(v5 + 125);
    *(v5 + 984) = 0u;
    *(v5 + 125) = 0;
    v16 = *(v5 + 126);
    *(v5 + 126) = 0;
    v69 = *(v5 + 254);
    v70 = *(v5 + 510);
    v71 = v5[64];
    v72 = *(v5 + 130);
    *(v5 + 130) = 0;
    v5[64] = 0u;
    v17 = *(v5 + 1048);
    v74 = *(v5 + 133);
    v73 = v17;
    *(v5 + 133) = 0;
    *(v5 + 1048) = 0u;
    v75 = v5[67];
    v18 = *(v5 + 136);
    v68 = v16;
    v76 = v18;
    v5[67] = 0u;
    *(v5 + 136) = 0;
    v77 = *(v5 + 1096);
    v78 = *(v5 + 139);
    *(v5 + 1096) = 0u;
    *(v5 + 139) = 0;
    v79 = v5[70];
    v80 = *(v5 + 142);
    v5[70] = 0u;
    *(v5 + 142) = 0;
    v81 = *(v5 + 1144);
    v82 = *(v5 + 145);
    *(v5 + 1144) = 0u;
    *(v5 + 145) = 0;
    v19 = *(v5 + 146);
    *(v5 + 146) = 0;
    v83 = v19;
    v84 = *(v5 + 294);
    v85 = *(v5 + 590);
    v86 = v5[74];
    v87 = *(v5 + 150);
    *(v5 + 150) = 0;
    v5[74] = 0u;
    v20 = (v5 + 1208);
    v21 = *(v5 + 1208);
    v89 = *(v5 + 153);
    v88 = v21;
    *(v5 + 153) = 0;
    v22 = v4;
    *v20 = 0u;
    while (1)
    {
      *(a1 + v22 + 616) = *(a1 + v22);
      v23 = *(a1 + v22 + 664);
      v24 = *(a1 + v22 + 48);
      if (v23 == -1)
      {
        if (v24 == -1)
        {
          goto LABEL_17;
        }
      }

      else if (v24 == -1)
      {
        (off_266BE00[v23])(v90, a1 + v22 + 632);
        *(a1 + v22 + 664) = -1;
        goto LABEL_17;
      }

      v90[0] = a1 + v22 + 632;
      (off_266BE78[v24])(v90);
LABEL_17:
      v25 = a1 + v22;
      *(a1 + v22 + 672) = *(a1 + v22 + 56);
      v26 = (a1 + v22 + 680);
      if (*(a1 + v22 + 703) < 0)
      {
        operator delete(*v26);
      }

      *v26 = *(v25 + 4);
      *(a1 + v22 + 696) = *(v25 + 10);
      v25[87] = 0;
      v25[64] = 0;
      v25[704] = v25[88];
      v27 = v25 + 712;
      if (v25[735] < 0)
      {
        operator delete(*v27);
      }

      v28 = a1 + v22;
      *v27 = *(a1 + v22 + 96);
      *(v27 + 2) = *(a1 + v22 + 112);
      v28[119] = 0;
      v28[96] = 0;
      v28[736] = *(a1 + v22 + 120);
      *(v28 + 186) = *(a1 + v22 + 128);
      sub_53D784(a1 + v22 + 752, a1 + v22 + 136);
      sub_53D784((v28 + 912), (v28 + 296));
      sub_53D784((v28 + 1072), (v28 + 456));
      if (!v22)
      {
        break;
      }

      v29 = *(v28 - 76);
      v10 = *(&v34 + 1) == v29;
      v30 = *(&v34 + 1) < v29;
      if (v10)
      {
        v30 = v44 > *(v28 - 122);
      }

      v22 -= 616;
      if (!v30)
      {
        v31 = a1 + v22 + 616;
        goto LABEL_27;
      }
    }

    v31 = a1;
LABEL_27:
    sub_63A54C(v31, &v34);
    sub_53A868(&v75);
    sub_53A868(&v60);
    sub_53A868(&v45);
    if (SHIBYTE(v42) < 0)
    {
      operator delete(__p);
      if (SHIBYTE(v39) < 0)
      {
        goto LABEL_32;
      }

LABEL_29:
      v32 = v36;
      if (v36 != -1)
      {
LABEL_33:
        (off_266BE00[v32])(v90, v35);
      }
    }

    else
    {
      if ((SHIBYTE(v39) & 0x80000000) == 0)
      {
        goto LABEL_29;
      }

LABEL_32:
      operator delete(v38);
      v32 = v36;
      if (v36 != -1)
      {
        goto LABEL_33;
      }
    }

    a2 = v33;
LABEL_5:
    v3 = v6 + 616;
    v4 += 616;
    v5 = v6;
    if ((v6 + 616) != a2)
    {
      continue;
    }

    break;
  }
}

void sub_63BED8(_OWORD *a1, _OWORD *a2)
{
  if (a1 == a2)
  {
    return;
  }

  v3 = a1;
  v4 = a1 + 616;
  if ((a1 + 616) == a2)
  {
    return;
  }

  v5 = a1 - 38;
  while (2)
  {
    v6 = v4;
    v7 = *(v3 + 78);
    v8 = *(v3 + 1);
    v9 = *(v3 + 186);
    v10 = v7 == v8;
    v11 = v7 < v8;
    if (v10)
    {
      v11 = v9 > *(v3 + 32);
    }

    if (!v11)
    {
      goto LABEL_4;
    }

    v29 = *v6;
    v30[0] = 0;
    v31 = -1;
    v12 = *(v3 + 166);
    if (v12 != -1)
    {
      v85[0] = v30;
      (off_266BE50[v12])(v85, v3 + 632);
      v31 = v12;
      v9 = *(v3 + 186);
    }

    v32 = *(v3 + 84);
    v34 = *(v3 + 87);
    v33 = *(v3 + 680);
    v3[43] = 0u;
    *(v3 + 85) = 0;
    v35 = *(v3 + 704);
    v37 = *(v3 + 91);
    __p = *(v3 + 712);
    *(v3 + 91) = 0;
    *(v3 + 712) = 0u;
    v38 = *(v3 + 736);
    v39 = v9;
    v40 = v3[47];
    v41 = *(v3 + 96);
    v3[47] = 0u;
    *(v3 + 96) = 0;
    v42 = *(v3 + 776);
    v43 = *(v3 + 99);
    *(v3 + 776) = 0u;
    *(v3 + 99) = 0;
    v44 = v3[50];
    v45 = *(v3 + 102);
    v3[50] = 0u;
    *(v3 + 102) = 0;
    v46 = *(v3 + 824);
    v47 = *(v3 + 105);
    *(v3 + 824) = 0u;
    *(v3 + 105) = 0;
    v13 = *(v3 + 106);
    *(v3 + 106) = 0;
    v49 = *(v3 + 214);
    v50 = *(v3 + 430);
    v51 = v3[54];
    v52 = *(v3 + 110);
    *(v3 + 110) = 0;
    v3[54] = 0u;
    v14 = *(v3 + 888);
    v54 = *(v3 + 113);
    v53 = v14;
    *(v3 + 113) = 0;
    *(v3 + 888) = 0u;
    v55 = v3[57];
    v15 = *(v3 + 116);
    v48 = v13;
    v56 = v15;
    v3[57] = 0u;
    *(v3 + 116) = 0;
    v57 = *(v3 + 936);
    v58 = *(v3 + 119);
    *(v3 + 936) = 0u;
    *(v3 + 119) = 0;
    v59 = v3[60];
    v60 = *(v3 + 122);
    v3[60] = 0u;
    *(v3 + 122) = 0;
    v61 = *(v3 + 984);
    v62 = *(v3 + 125);
    *(v3 + 984) = 0u;
    *(v3 + 125) = 0;
    v16 = *(v3 + 126);
    *(v3 + 126) = 0;
    v64 = *(v3 + 254);
    v65 = *(v3 + 510);
    v66 = v3[64];
    v67 = *(v3 + 130);
    *(v3 + 130) = 0;
    v3[64] = 0u;
    v17 = *(v3 + 1048);
    v69 = *(v3 + 133);
    v68 = v17;
    *(v3 + 133) = 0;
    *(v3 + 1048) = 0u;
    v70 = v3[67];
    v18 = *(v3 + 136);
    v63 = v16;
    v71 = v18;
    v3[67] = 0u;
    *(v3 + 136) = 0;
    v72 = *(v3 + 1096);
    v73 = *(v3 + 139);
    *(v3 + 1096) = 0u;
    *(v3 + 139) = 0;
    v74 = v3[70];
    v75 = *(v3 + 142);
    v3[70] = 0u;
    *(v3 + 142) = 0;
    v76 = *(v3 + 1144);
    v77 = *(v3 + 145);
    *(v3 + 1144) = 0u;
    *(v3 + 145) = 0;
    v19 = *(v3 + 146);
    *(v3 + 146) = 0;
    v78 = v19;
    v79 = *(v3 + 294);
    v80 = *(v3 + 590);
    v81 = v3[74];
    v82 = *(v3 + 150);
    *(v3 + 150) = 0;
    v3[74] = 0u;
    v20 = (v3 + 1208);
    v21 = *(v3 + 1208);
    v84 = *(v3 + 153);
    v83 = v21;
    *(v3 + 153) = 0;
    v22 = v5;
    *v20 = 0u;
    do
    {
      *(v22 + 1224) = v22[38];
      v24 = *(v22 + 318);
      v25 = *(v22 + 164);
      if (v24 == -1)
      {
        if (v25 == -1)
        {
          goto LABEL_19;
        }
      }

      else if (v25 == -1)
      {
        (off_266BE00[v24])(v85, v22 + 1240);
        *(v22 + 318) = -1;
        goto LABEL_19;
      }

      v85[0] = v22 + 1240;
      (off_266BE78[v25])(v85);
LABEL_19:
      *(v22 + 160) = *(v22 + 83);
      v26 = v22 + 161;
      if (*(v22 + 1311) < 0)
      {
        operator delete(*v26);
      }

      *v26 = v22[42];
      *(v22 + 163) = *(v22 + 86);
      *(v22 + 695) = 0;
      *(v22 + 672) = 0;
      *(v22 + 1312) = *(v22 + 696);
      v27 = v22 + 165;
      if (*(v22 + 1343) < 0)
      {
        operator delete(*v27);
      }

      *v27 = v22[44];
      *(v22 + 167) = *(v22 + 90);
      *(v22 + 727) = 0;
      *(v22 + 704) = 0;
      *(v22 + 1344) = *(v22 + 728);
      *(v22 + 338) = *(v22 + 184);
      sub_53D784((v22 + 85), v22 + 744);
      sub_53D784((v22 + 95), v22 + 904);
      sub_53D784((v22 + 105), v22 + 1064);
      v23 = *(&v29 + 1) < *v22;
      if (*(&v29 + 1) == *v22)
      {
        v23 = v39 > *(v22 + 30);
      }

      v22 = (v22 - 616);
    }

    while (v23);
    sub_63A54C(v22 + 1224, &v29);
    sub_53A868(&v70);
    sub_53A868(&v55);
    sub_53A868(&v40);
    if (SHIBYTE(v37) < 0)
    {
      operator delete(__p);
      if (SHIBYTE(v34) < 0)
      {
        goto LABEL_28;
      }

LABEL_25:
      v28 = v31;
      if (v31 != -1)
      {
LABEL_29:
        (off_266BE00[v28])(v85, v30);
      }
    }

    else
    {
      if ((SHIBYTE(v34) & 0x80000000) == 0)
      {
        goto LABEL_25;
      }

LABEL_28:
      operator delete(v33);
      v28 = v31;
      if (v31 != -1)
      {
        goto LABEL_29;
      }
    }

LABEL_4:
    v4 = v6 + 616;
    v5 = (v5 + 616);
    v3 = v6;
    if ((v6 + 616) != a2)
    {
      continue;
    }

    break;
  }
}

unint64_t sub_63C444(__int128 *a1, unint64_t a2)
{
  v46 = *a1;
  v47[0] = 0;
  v48 = -1;
  v4 = *(a1 + 12);
  if (v4 != -1)
  {
    v102 = v47;
    (off_266BE50[v4])(&v102, a1 + 1);
    v48 = v4;
  }

  v49 = *(a1 + 7);
  *v50 = a1[4];
  v51 = *(a1 + 10);
  *(a1 + 72) = 0u;
  *(a1 + 8) = 0;
  v52 = *(a1 + 88);
  *__p = a1[6];
  v54 = *(a1 + 14);
  *(a1 + 14) = 0;
  a1[6] = 0u;
  v55 = *(a1 + 120);
  v56 = *(a1 + 32);
  v5 = v56;
  v57 = *(a1 + 136);
  v58 = *(a1 + 19);
  *(a1 + 136) = 0u;
  *(a1 + 19) = 0;
  v59 = a1[10];
  v6 = *(a1 + 22);
  a1[10] = 0u;
  *(a1 + 22) = 0;
  v61 = *(a1 + 184);
  v7 = *(a1 + 25);
  v60 = v6;
  v62 = v7;
  *(a1 + 184) = 0u;
  *(a1 + 25) = 0;
  v63 = a1[13];
  a1[13] = 0u;
  v8 = *(a1 + 28);
  v9 = *(a1 + 29);
  *(a1 + 28) = 0;
  *(a1 + 29) = 0;
  v64 = v8;
  v65 = v9;
  LODWORD(v8) = *(a1 + 60);
  v67 = *(a1 + 122);
  v66 = v8;
  v10 = *(a1 + 248);
  v69 = *(a1 + 33);
  v68 = v10;
  *(a1 + 33) = 0;
  *(a1 + 248) = 0u;
  v70 = a1[17];
  a1[17] = 0u;
  v11 = *(a1 + 37);
  v71 = *(a1 + 36);
  v72 = v11;
  *(a1 + 36) = 0;
  *(a1 + 37) = 0;
  v12 = a1[20];
  v73 = a1[19];
  v74 = v12;
  a1[19] = 0u;
  a1[20] = 0u;
  v13 = *(a1 + 43);
  v75 = *(a1 + 42);
  v76 = v13;
  *(a1 + 42) = 0;
  *(a1 + 43) = 0;
  v14 = a1[23];
  v77 = a1[22];
  v78 = v14;
  a1[22] = 0u;
  a1[23] = 0u;
  v15 = *(a1 + 48);
  v16 = *(a1 + 49);
  *(a1 + 48) = 0;
  *(a1 + 49) = 0;
  v79 = v15;
  v80 = v16;
  LODWORD(v15) = *(a1 + 100);
  v82 = *(a1 + 202);
  v81 = v15;
  v17 = *(a1 + 53);
  v83 = *(a1 + 408);
  v84 = v17;
  *(a1 + 53) = 0;
  *(a1 + 408) = 0u;
  v85 = a1[27];
  a1[27] = 0u;
  v18 = *(a1 + 57);
  v86 = *(a1 + 56);
  v87 = v18;
  *(a1 + 56) = 0;
  *(a1 + 57) = 0;
  v19 = a1[30];
  v88 = a1[29];
  v89 = v19;
  a1[29] = 0u;
  a1[30] = 0u;
  v20 = *(a1 + 63);
  v90 = *(a1 + 62);
  v91 = v20;
  *(a1 + 62) = 0;
  *(a1 + 63) = 0;
  v21 = a1[33];
  v92 = a1[32];
  v93 = v21;
  v94 = *(a1 + 68);
  a1[32] = 0u;
  a1[33] = 0u;
  *(a1 + 68) = 0;
  v22 = *(a1 + 69);
  *(a1 + 69) = 0;
  v95 = v22;
  LODWORD(v22) = *(a1 + 140);
  v97 = *(a1 + 282);
  v96 = v22;
  v23 = *(a1 + 73);
  v98 = *(a1 + 568);
  v99 = v23;
  *(a1 + 73) = 0;
  *(a1 + 568) = 0u;
  v24 = a1[37];
  v101 = *(a1 + 76);
  *(a1 + 76) = 0;
  a1[37] = 0u;
  v25 = a2 - 608;
  v26 = v5 > *(a2 - 488);
  if (*(&v46 + 1) != *(a2 - 608))
  {
    v26 = *(&v46 + 1) < *(a2 - 608);
  }

  v100 = v24;
  if (v26)
  {
    v27 = a1;
    do
    {
      v28 = v27 + 616;
      v29 = *(v27 + 624);
      v30 = v5 > *(v27 + 744);
      v31 = *(&v46 + 1) == v29;
      v32 = *(&v46 + 1) < v29;
      if (v31)
      {
        v32 = v30;
      }

      v27 = v28;
    }

    while (!v32);
  }

  else
  {
    v33 = a1 + 616;
    do
    {
      v28 = v33;
      if (v33 >= a2)
      {
        break;
      }

      v34 = *(v33 + 8);
      v35 = v5 > *(v28 + 128);
      v31 = *(&v46 + 1) == v34;
      v36 = *(&v46 + 1) < v34;
      if (!v31)
      {
        v35 = v36;
      }

      v33 = v28 + 616;
    }

    while (!v35);
  }

  if (v28 < a2)
  {
    do
    {
      v37 = *(&v46 + 1) < *v25;
      if (*(&v46 + 1) == *v25)
      {
        v37 = v5 > *(v25 + 120);
      }

      v25 -= 616;
    }

    while (v37);
    a2 = v25 + 608;
  }

  while (v28 < a2)
  {
    sub_63D28C(v28, a2);
    do
    {
      v38 = *(v28 + 624);
      v39 = *(v28 + 744);
      v28 += 616;
      v40 = v56 > v39;
      v31 = *(&v46 + 1) == v38;
      v41 = *(&v46 + 1) < v38;
      if (v31)
      {
        v41 = v40;
      }
    }

    while (!v41);
    v42 = a2 - 608;
    do
    {
      v43 = *(&v46 + 1) < *v42;
      if (*(&v46 + 1) == *v42)
      {
        v43 = v56 > *(v42 + 120);
      }

      v42 -= 616;
    }

    while (v43);
    a2 = v42 + 608;
  }

  if ((v28 - 616) != a1)
  {
    sub_63A54C(a1, v28 - 616);
  }

  sub_63A54C(v28 - 616, &v46);
  sub_53A868(&v87);
  sub_53A868(&v72);
  sub_53A868(&v57);
  if (SHIBYTE(v54) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v51) & 0x80000000) == 0)
    {
LABEL_35:
      v44 = v48;
      if (v48 == -1)
      {
        return v28;
      }

      goto LABEL_39;
    }
  }

  else if ((SHIBYTE(v51) & 0x80000000) == 0)
  {
    goto LABEL_35;
  }

  operator delete(v50[0]);
  v44 = v48;
  if (v48 != -1)
  {
LABEL_39:
    (off_266BE00[v44])(&v102, v47);
  }

  return v28;
}

uint64_t sub_63C894(__int128 *a1, uint64_t a2)
{
  v44 = *a1;
  v45[0] = 0;
  v46 = -1;
  v4 = *(a1 + 12);
  if (v4 != -1)
  {
    v100 = v45;
    (off_266BE50[v4])(&v100, a1 + 1);
    v46 = v4;
  }

  v5 = 0;
  v47 = *(a1 + 7);
  *v48 = a1[4];
  v49 = *(a1 + 10);
  *(a1 + 72) = 0u;
  *(a1 + 8) = 0;
  v50 = *(a1 + 88);
  *__p = a1[6];
  v52 = *(a1 + 14);
  *(a1 + 14) = 0;
  a1[6] = 0u;
  v53 = *(a1 + 120);
  v6 = *(a1 + 32);
  v54 = v6;
  v55 = *(a1 + 136);
  v56 = *(a1 + 19);
  *(a1 + 136) = 0u;
  *(a1 + 19) = 0;
  v57 = a1[10];
  v7 = *(a1 + 22);
  a1[10] = 0u;
  *(a1 + 22) = 0;
  v59 = *(a1 + 184);
  v8 = *(a1 + 25);
  v58 = v7;
  v60 = v8;
  *(a1 + 184) = 0u;
  *(a1 + 25) = 0;
  v61 = a1[13];
  a1[13] = 0u;
  v9 = *(a1 + 28);
  v10 = *(a1 + 29);
  *(a1 + 28) = 0;
  *(a1 + 29) = 0;
  v62 = v9;
  v63 = v10;
  LODWORD(v9) = *(a1 + 60);
  v65 = *(a1 + 122);
  v64 = v9;
  v11 = *(a1 + 248);
  v67 = *(a1 + 33);
  v66 = v11;
  *(a1 + 33) = 0;
  *(a1 + 248) = 0u;
  v68 = a1[17];
  a1[17] = 0u;
  v12 = *(a1 + 37);
  v69 = *(a1 + 36);
  v70 = v12;
  *(a1 + 36) = 0;
  *(a1 + 37) = 0;
  v13 = a1[20];
  v71 = a1[19];
  v72 = v13;
  a1[19] = 0u;
  a1[20] = 0u;
  v14 = *(a1 + 43);
  v73 = *(a1 + 42);
  v74 = v14;
  *(a1 + 42) = 0;
  *(a1 + 43) = 0;
  v15 = a1[23];
  v75 = a1[22];
  v76 = v15;
  a1[22] = 0u;
  a1[23] = 0u;
  v16 = *(a1 + 48);
  v17 = *(a1 + 49);
  *(a1 + 48) = 0;
  *(a1 + 49) = 0;
  v77 = v16;
  v78 = v17;
  LODWORD(v16) = *(a1 + 100);
  v80 = *(a1 + 202);
  v79 = v16;
  v81 = *(a1 + 408);
  v82 = *(a1 + 53);
  *(a1 + 53) = 0;
  *(a1 + 408) = 0u;
  v83 = a1[27];
  a1[27] = 0u;
  v18 = *(a1 + 57);
  v84 = *(a1 + 56);
  v85 = v18;
  *(a1 + 56) = 0;
  *(a1 + 57) = 0;
  v19 = a1[30];
  v86 = a1[29];
  v87 = v19;
  a1[29] = 0u;
  a1[30] = 0u;
  v20 = *(a1 + 63);
  v88 = *(a1 + 62);
  v89 = v20;
  *(a1 + 62) = 0;
  *(a1 + 63) = 0;
  v21 = a1[33];
  v90 = a1[32];
  v91 = v21;
  v92 = *(a1 + 68);
  a1[32] = 0u;
  a1[33] = 0u;
  *(a1 + 68) = 0;
  v22 = *(a1 + 69);
  *(a1 + 69) = 0;
  v93 = v22;
  LODWORD(v22) = *(a1 + 140);
  v95 = *(a1 + 282);
  v94 = v22;
  v96 = *(a1 + 568);
  v97 = *(a1 + 73);
  *(a1 + 73) = 0;
  *(a1 + 568) = 0u;
  v23 = a1[37];
  v99 = *(a1 + 76);
  v98 = v23;
  *(a1 + 76) = 0;
  a1[37] = 0u;
  do
  {
    v24 = *(a1 + v5 + 624);
    v25 = *(a1 + v5 + 744) > v6;
    v26 = v24 == *(&v44 + 1);
    v27 = v24 < *(&v44 + 1);
    if (!v26)
    {
      v25 = v27;
    }

    v5 += 616;
  }

  while (v25);
  v28 = a1 + v5;
  v29 = a1 + v5 - 616;
  if (v5 == 616)
  {
    v30 = a2 - 608;
    while (1)
    {
      v32 = v30 + 608;
      if (v28 >= v30 + 608)
      {
        break;
      }

      v33 = *v30 < *(&v44 + 1);
      if (*v30 == *(&v44 + 1))
      {
        v33 = *(v30 + 120) > v6;
      }

      v30 -= 616;
      if (v33)
      {
        goto LABEL_18;
      }
    }
  }

  else
  {
    v30 = a2 - 608;
    do
    {
      v31 = *v30 < *(&v44 + 1);
      if (*v30 == *(&v44 + 1))
      {
        v31 = *(v30 + 120) > v6;
      }

      v30 -= 616;
    }

    while (!v31);
LABEL_18:
    v32 = v30 + 608;
  }

  if (v28 < v32)
  {
    v34 = v28;
    v35 = v32;
    do
    {
      sub_63D28C(v34, v35);
      do
      {
        v36 = *(v34 + 624);
        v37 = *(v34 + 744);
        v34 += 616;
        v38 = v37 > v54;
        v26 = v36 == *(&v44 + 1);
        v39 = v36 < *(&v44 + 1);
        if (v26)
        {
          v39 = v38;
        }
      }

      while (v39);
      v40 = v35 - 608;
      do
      {
        v41 = *v40 < *(&v44 + 1);
        if (*v40 == *(&v44 + 1))
        {
          v41 = *(v40 + 120) > v54;
        }

        v40 -= 616;
      }

      while (!v41);
      v35 = v40 + 608;
    }

    while (v34 < v40 + 608);
    v29 = v34 - 616;
  }

  if (v29 != a1)
  {
    sub_63A54C(a1, v29);
  }

  sub_63A54C(v29, &v44);
  sub_53A868(&v85);
  sub_53A868(&v70);
  sub_53A868(&v55);
  if (SHIBYTE(v52) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v49) & 0x80000000) == 0)
    {
LABEL_35:
      v42 = v46;
      if (v46 == -1)
      {
        return v29;
      }

      goto LABEL_39;
    }
  }

  else if ((SHIBYTE(v49) & 0x80000000) == 0)
  {
    goto LABEL_35;
  }

  operator delete(v48[0]);
  v42 = v46;
  if (v46 != -1)
  {
LABEL_39:
    (off_266BE00[v42])(&v100, v45);
  }

  return v29;
}

BOOL sub_63CCE0(uint64_t a1, __int128 *a2)
{
  v4 = 0x4FCACE213F2B3885 * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        sub_63B63C(a1, a1 + 616, a2 - 616);
        return 1;
      case 4:
        sub_63B63C(a1, a1 + 616, a1 + 1232);
        v46 = *(a2 - 76);
        v47 = *(a1 + 1240);
        v7 = v46 == v47;
        v48 = v46 < v47;
        if (v7)
        {
          v48 = *(a2 - 122) > *(a1 + 1360);
        }

        if (!v48)
        {
          return 1;
        }

        sub_63D28C((a1 + 1232), a2 - 616);
        v49 = *(a1 + 1240);
        v50 = *(a1 + 624);
        v7 = v49 == v50;
        v51 = v49 < v50;
        if (v7)
        {
          v51 = *(a1 + 1360) > *(a1 + 744);
        }

        if (!v51)
        {
          return 1;
        }

        sub_63D28C((a1 + 616), a1 + 1232);
        v52 = *(a1 + 624);
        v53 = *(a1 + 8);
        v7 = v52 == v53;
        v54 = v52 < v53;
        if (v7)
        {
          v54 = *(a1 + 744) > *(a1 + 128);
        }

        if (!v54)
        {
          return 1;
        }

        v9 = a1 + 616;
LABEL_8:
        sub_63D28C(a1, v9);
        return 1;
      case 5:
        sub_63B750(a1, a1 + 616, a1 + 1232, a1 + 1848, a2 - 616);
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = *(a2 - 76);
      v6 = *(a1 + 8);
      v7 = v5 == v6;
      v8 = v5 < v6;
      if (v7)
      {
        v8 = *(a2 - 122) > *(a1 + 128);
      }

      if (!v8)
      {
        return 1;
      }

      v9 = a2 - 616;
      goto LABEL_8;
    }
  }

  v10 = (a1 + 1232);
  sub_63B63C(a1, a1 + 616, a1 + 1232);
  v11 = (a1 + 1848);
  if ((a1 + 1848) == a2)
  {
    return 1;
  }

  v12 = 0;
  v13 = 0;
  while (1)
  {
    v14 = *(v11 + 1);
    v15 = *(v10 + 1);
    v16 = *(v11 + 32);
    v7 = v14 == v15;
    v17 = v14 < v15;
    if (v7)
    {
      v17 = v16 > *(v10 + 32);
    }

    if (!v17)
    {
      goto LABEL_17;
    }

    v56 = *v11;
    v57[0] = 0;
    v58 = -1;
    v18 = *(v11 + 12);
    if (v18 != -1)
    {
      v112[0] = v57;
      (off_266BE50[v18])(v112, v11 + 1);
      v58 = v18;
      v16 = *(v11 + 32);
    }

    v59 = *(v11 + 7);
    v60 = v11[4];
    v61 = *(v11 + 10);
    *(v11 + 72) = 0u;
    *(v11 + 8) = 0;
    v62 = *(v11 + 88);
    __p = v11[6];
    v64 = *(v11 + 14);
    *(v11 + 14) = 0;
    v11[6] = 0u;
    v65 = *(v11 + 120);
    v66 = v16;
    v67 = *(v11 + 136);
    v68 = *(v11 + 19);
    *(v11 + 136) = 0u;
    *(v11 + 19) = 0;
    v69 = v11[10];
    v19 = *(v11 + 22);
    v11[10] = 0u;
    *(v11 + 22) = 0;
    v71 = *(v11 + 184);
    v20 = *(v11 + 25);
    v70 = v19;
    v72 = v20;
    *(v11 + 184) = 0u;
    *(v11 + 25) = 0;
    v73 = v11[13];
    v11[13] = 0u;
    v21 = *(v11 + 28);
    v22 = *(v11 + 29);
    *(v11 + 28) = 0;
    *(v11 + 29) = 0;
    v74 = v21;
    v75 = v22;
    LODWORD(v21) = *(v11 + 60);
    v77 = *(v11 + 122);
    v76 = v21;
    v23 = *(v11 + 248);
    v79 = *(v11 + 33);
    v78 = v23;
    *(v11 + 33) = 0;
    *(v11 + 248) = 0u;
    v24 = v11[17];
    v25 = *(v11 + 37);
    v81 = *(v11 + 36);
    v80 = v24;
    v11[17] = 0u;
    v82 = v25;
    *(v11 + 36) = 0;
    *(v11 + 37) = 0;
    v26 = v11[20];
    v83 = v11[19];
    v84 = v26;
    v11[19] = 0u;
    v11[20] = 0u;
    v27 = *(v11 + 43);
    v85 = *(v11 + 42);
    v86 = v27;
    *(v11 + 42) = 0;
    *(v11 + 43) = 0;
    v28 = v11[23];
    v87 = v11[22];
    v88 = v28;
    v11[22] = 0u;
    v11[23] = 0u;
    v29 = *(v11 + 48);
    v30 = *(v11 + 49);
    *(v11 + 48) = 0;
    *(v11 + 49) = 0;
    v89 = v29;
    v90 = v30;
    LODWORD(v29) = *(v11 + 100);
    v92 = *(v11 + 202);
    v91 = v29;
    v31 = *(v11 + 408);
    v94 = *(v11 + 53);
    v93 = v31;
    *(v11 + 53) = 0;
    *(v11 + 408) = 0u;
    v32 = v11[27];
    v33 = *(v11 + 57);
    v96 = *(v11 + 56);
    v95 = v32;
    v11[27] = 0u;
    v97 = v33;
    *(v11 + 56) = 0;
    *(v11 + 57) = 0;
    v34 = v11[30];
    v98 = v11[29];
    v99 = v34;
    v11[29] = 0u;
    v11[30] = 0u;
    v35 = *(v11 + 63);
    v100 = *(v11 + 62);
    v101 = v35;
    *(v11 + 62) = 0;
    *(v11 + 63) = 0;
    v36 = v11[33];
    v102 = v11[32];
    v103 = v36;
    v104 = *(v11 + 68);
    v11[32] = 0u;
    v11[33] = 0u;
    *(v11 + 68) = 0;
    v37 = *(v11 + 69);
    *(v11 + 69) = 0;
    v105 = v37;
    LODWORD(v37) = *(v11 + 140);
    v107 = *(v11 + 282);
    v106 = v37;
    v38 = *(v11 + 568);
    v109 = *(v11 + 73);
    v108 = v38;
    *(v11 + 73) = 0;
    *(v11 + 568) = 0u;
    v39 = v11[37];
    v111 = *(v11 + 76);
    v110 = v39;
    *(v11 + 76) = 0;
    v40 = v12;
    v11[37] = 0u;
    while (1)
    {
      v41 = a1 + v40;
      sub_63A54C(a1 + v40 + 1848, a1 + v40 + 1232);
      if (v40 == -1232)
      {
        break;
      }

      v42 = *(v41 + 624);
      v43 = *(&v56 + 1) < v42;
      if (*(&v56 + 1) == v42)
      {
        v43 = v66 > *(v41 + 744);
      }

      v40 -= 616;
      if (!v43)
      {
        v44 = a1 + v40 + 1848;
        goto LABEL_30;
      }
    }

    v44 = a1;
LABEL_30:
    sub_63A54C(v44, &v56);
    sub_53A868(&v97);
    sub_53A868(&v82);
    sub_53A868(&v67);
    if (SHIBYTE(v64) < 0)
    {
      operator delete(__p);
      if (SHIBYTE(v61) < 0)
      {
LABEL_35:
        operator delete(v60);
        v45 = v58;
        if (v58 == -1)
        {
          goto LABEL_16;
        }

LABEL_36:
        (off_266BE00[v45])(v112, v57);
        goto LABEL_16;
      }
    }

    else if (SHIBYTE(v61) < 0)
    {
      goto LABEL_35;
    }

    v45 = v58;
    if (v58 != -1)
    {
      goto LABEL_36;
    }

LABEL_16:
    if (++v13 == 8)
    {
      return (v11 + 616) == a2;
    }

LABEL_17:
    v10 = v11;
    v12 += 616;
    v11 = (v11 + 616);
    if (v11 == a2)
    {
      return 1;
    }
  }
}

void sub_63D28C(__int128 *a1, uint64_t a2)
{
  v25 = *a1;
  v26[0] = 0;
  v27 = -1;
  v4 = *(a1 + 12);
  if (v4 != -1)
  {
    v81 = v26;
    (off_266BE50[v4])(&v81, a1 + 1);
    v27 = v4;
  }

  v28 = *(a1 + 7);
  *v29 = a1[4];
  v30 = *(a1 + 10);
  *(a1 + 72) = 0u;
  *(a1 + 8) = 0;
  v31 = *(a1 + 88);
  *__p = a1[6];
  v33 = *(a1 + 14);
  *(a1 + 14) = 0;
  a1[6] = 0u;
  v34 = *(a1 + 120);
  v35 = *(a1 + 32);
  v36 = *(a1 + 136);
  v37 = *(a1 + 19);
  *(a1 + 136) = 0u;
  *(a1 + 19) = 0;
  v38 = a1[10];
  v5 = *(a1 + 22);
  a1[10] = 0u;
  *(a1 + 22) = 0;
  v40 = *(a1 + 184);
  v6 = *(a1 + 25);
  v39 = v5;
  v41 = v6;
  *(a1 + 184) = 0u;
  *(a1 + 25) = 0;
  v42 = a1[13];
  a1[13] = 0u;
  v7 = *(a1 + 28);
  v8 = *(a1 + 29);
  *(a1 + 28) = 0;
  *(a1 + 29) = 0;
  v43 = v7;
  v44 = v8;
  LODWORD(v7) = *(a1 + 60);
  v46 = *(a1 + 122);
  v45 = v7;
  v9 = *(a1 + 248);
  v48 = *(a1 + 33);
  v47 = v9;
  *(a1 + 33) = 0;
  *(a1 + 248) = 0u;
  v49 = a1[17];
  a1[17] = 0u;
  v10 = *(a1 + 37);
  v50 = *(a1 + 36);
  v51 = v10;
  *(a1 + 36) = 0;
  *(a1 + 37) = 0;
  v11 = a1[20];
  v52 = a1[19];
  v53 = v11;
  a1[19] = 0u;
  a1[20] = 0u;
  v12 = *(a1 + 43);
  v54 = *(a1 + 42);
  v55 = v12;
  *(a1 + 42) = 0;
  *(a1 + 43) = 0;
  v13 = a1[23];
  v56 = a1[22];
  v57 = v13;
  a1[22] = 0u;
  a1[23] = 0u;
  v14 = *(a1 + 48);
  v15 = *(a1 + 49);
  *(a1 + 48) = 0;
  *(a1 + 49) = 0;
  v58 = v14;
  v59 = v15;
  LODWORD(v14) = *(a1 + 100);
  v61 = *(a1 + 202);
  v60 = v14;
  v16 = *(a1 + 53);
  v62 = *(a1 + 408);
  v63 = v16;
  *(a1 + 53) = 0;
  *(a1 + 408) = 0u;
  v64 = a1[27];
  a1[27] = 0u;
  v17 = *(a1 + 57);
  v65 = *(a1 + 56);
  v66 = v17;
  *(a1 + 56) = 0;
  *(a1 + 57) = 0;
  v18 = a1[30];
  v67 = a1[29];
  v68 = v18;
  a1[29] = 0u;
  a1[30] = 0u;
  v19 = *(a1 + 63);
  v69 = *(a1 + 62);
  v70 = v19;
  *(a1 + 62) = 0;
  *(a1 + 63) = 0;
  v20 = a1[33];
  v71 = a1[32];
  v72 = v20;
  v73 = *(a1 + 68);
  a1[32] = 0u;
  a1[33] = 0u;
  *(a1 + 68) = 0;
  v21 = *(a1 + 69);
  *(a1 + 69) = 0;
  v74 = v21;
  LODWORD(v21) = *(a1 + 140);
  v76 = *(a1 + 282);
  v75 = v21;
  v22 = *(a1 + 73);
  v77 = *(a1 + 568);
  v78 = v22;
  *(a1 + 73) = 0;
  *(a1 + 568) = 0u;
  v23 = a1[37];
  v80 = *(a1 + 76);
  v79 = v23;
  *(a1 + 76) = 0;
  a1[37] = 0u;
  sub_63A54C(a1, a2);
  sub_63A54C(a2, &v25);
  sub_53A868(&v66);
  sub_53A868(&v51);
  sub_53A868(&v36);
  if ((SHIBYTE(v33) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v30) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    operator delete(v29[0]);
    v24 = v27;
    if (v27 == -1)
    {
      return;
    }

    goto LABEL_9;
  }

  operator delete(__p[0]);
  if (SHIBYTE(v30) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  v24 = v27;
  if (v27 != -1)
  {
LABEL_9:
    (off_266BE00[v24])(&v81, v26);
  }
}

void sub_63D594(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= 0x4FCACE213F2B3885 * ((a4 - a1) >> 3))
    {
      v9 = (0x9F959C427E56710ALL * ((a4 - a1) >> 3)) | 1;
      v10 = a1 + 616 * v9;
      if ((0x9F959C427E56710ALL * ((a4 - a1) >> 3) + 2) < a3)
      {
        v11 = *(v10 + 8);
        v12 = *(v10 + 624);
        v14 = v11 == v12;
        v13 = v11 < v12;
        if (v14)
        {
          v13 = *(v10 + 128) > *(v10 + 744);
        }

        v14 = !v13;
        v15 = 616;
        if (v14)
        {
          v15 = 0;
        }

        v10 += v15;
        if (!v14)
        {
          v9 = 0x9F959C427E56710ALL * ((a4 - a1) >> 3) + 2;
        }
      }

      v16 = *(v10 + 8);
      v17 = *(a4 + 1);
      v18 = *(a4 + 32);
      v14 = v16 == v17;
      v19 = v16 < v17;
      if (v14)
      {
        v19 = *(v10 + 128) > v18;
      }

      if (!v19)
      {
        v50 = *a4;
        v51[0] = 0;
        v52 = -1;
        v20 = *(a4 + 12);
        if (v20 != -1)
        {
          v106[0] = v51;
          (off_266BE50[v20])(v106, a4 + 1);
          v52 = v20;
          v18 = *(v5 + 128);
        }

        v53 = *(v5 + 56);
        *v54 = *(v5 + 64);
        v55 = *(v5 + 80);
        *(v5 + 72) = 0u;
        *(v5 + 64) = 0;
        v56 = *(v5 + 88);
        *__p = *(v5 + 96);
        v58 = *(v5 + 112);
        *(v5 + 112) = 0;
        *(v5 + 96) = 0u;
        v59 = *(v5 + 120);
        v60 = v18;
        v61 = *(v5 + 136);
        v62 = *(v5 + 152);
        *(v5 + 136) = 0u;
        *(v5 + 152) = 0;
        v63 = *(v5 + 160);
        v21 = *(v5 + 176);
        *(v5 + 160) = 0u;
        *(v5 + 176) = 0;
        v65 = *(v5 + 184);
        v22 = *(v5 + 200);
        v64 = v21;
        v66 = v22;
        *(v5 + 184) = 0u;
        *(v5 + 200) = 0;
        v67 = *(v5 + 208);
        *(v5 + 208) = 0u;
        v23 = *(v5 + 224);
        v24 = *(v5 + 232);
        *(v5 + 224) = 0;
        *(v5 + 232) = 0;
        v68 = v23;
        v69 = v24;
        LODWORD(v23) = *(v5 + 240);
        v71 = *(v5 + 244);
        v70 = v23;
        v25 = *(v5 + 248);
        v73 = *(v5 + 264);
        v72 = v25;
        *(v5 + 264) = 0;
        *(v5 + 248) = 0u;
        v74 = *(v5 + 272);
        *(v5 + 272) = 0u;
        v26 = *(v5 + 296);
        v75 = *(v5 + 288);
        v76 = v26;
        *(v5 + 288) = 0;
        *(v5 + 296) = 0;
        v27 = *(v5 + 320);
        v77 = *(v5 + 304);
        v78 = v27;
        *(v5 + 304) = 0u;
        *(v5 + 320) = 0u;
        v28 = *(v5 + 344);
        v79 = *(v5 + 336);
        v80 = v28;
        *(v5 + 336) = 0;
        *(v5 + 344) = 0;
        v29 = *(v5 + 368);
        v81 = *(v5 + 352);
        v82 = v29;
        *(v5 + 352) = 0u;
        *(v5 + 368) = 0u;
        v30 = *(v5 + 384);
        v31 = *(v5 + 392);
        *(v5 + 384) = 0;
        *(v5 + 392) = 0;
        v83 = v30;
        v84 = v31;
        LODWORD(v30) = *(v5 + 400);
        v86 = *(v5 + 404);
        v85 = v30;
        v32 = *(v5 + 424);
        v87 = *(v5 + 408);
        v88 = v32;
        *(v5 + 424) = 0;
        *(v5 + 408) = 0u;
        v89 = *(v5 + 432);
        *(v5 + 432) = 0u;
        v33 = *(v5 + 456);
        v90 = *(v5 + 448);
        v91 = v33;
        *(v5 + 448) = 0;
        *(v5 + 456) = 0;
        v34 = *(v5 + 480);
        v92 = *(v5 + 464);
        v93 = v34;
        *(v5 + 464) = 0u;
        *(v5 + 480) = 0u;
        v35 = *(v5 + 504);
        v94 = *(v5 + 496);
        v95 = v35;
        *(v5 + 496) = 0;
        *(v5 + 504) = 0;
        v36 = *(v5 + 528);
        v96 = *(v5 + 512);
        v97 = v36;
        v98 = *(v5 + 544);
        *(v5 + 512) = 0u;
        *(v5 + 528) = 0u;
        *(v5 + 544) = 0;
        v37 = *(v5 + 552);
        *(v5 + 552) = 0;
        v99 = v37;
        LODWORD(v37) = *(v5 + 560);
        v101 = *(v5 + 564);
        v100 = v37;
        v38 = *(v5 + 584);
        v102 = *(v5 + 568);
        v103 = v38;
        *(v5 + 584) = 0;
        *(v5 + 568) = 0u;
        v39 = *(v5 + 592);
        v105 = *(v5 + 608);
        v104 = v39;
        *(v5 + 608) = 0;
        *(v5 + 592) = 0u;
        do
        {
          v42 = v10;
          sub_63A54C(v5, v10);
          if (v7 < v9)
          {
            break;
          }

          v43 = (2 * v9) | 1;
          v10 = a1 + 616 * v43;
          if (2 * v9 + 2 < a3)
          {
            v44 = *(v10 + 8);
            v45 = *(v10 + 624);
            v14 = v44 == v45;
            v46 = v44 < v45;
            if (v14)
            {
              v46 = *(v10 + 128) > *(v10 + 744);
            }

            v47 = !v46;
            if (v46)
            {
              v48 = 616;
            }

            else
            {
              v48 = 0;
            }

            v10 += v48;
            if (!v47)
            {
              v43 = 2 * v9 + 2;
            }
          }

          v40 = *(v10 + 8);
          v14 = v40 == *(&v50 + 1);
          v41 = v40 < *(&v50 + 1);
          if (v14)
          {
            v41 = *(v10 + 128) > v60;
          }

          v5 = v42;
          v9 = v43;
        }

        while (!v41);
        sub_63A54C(v42, &v50);
        sub_53A868(&v91);
        sub_53A868(&v76);
        sub_53A868(&v61);
        if (SHIBYTE(v58) < 0)
        {
          operator delete(__p[0]);
          if ((SHIBYTE(v55) & 0x80000000) == 0)
          {
LABEL_32:
            v49 = v52;
            if (v52 == -1)
            {
              return;
            }

LABEL_36:
            (off_266BE00[v49])(v106, v51);
            return;
          }
        }

        else if ((SHIBYTE(v55) & 0x80000000) == 0)
        {
          goto LABEL_32;
        }

        operator delete(v54[0]);
        v49 = v52;
        if (v52 == -1)
        {
          return;
        }

        goto LABEL_36;
      }
    }
  }
}

void sub_63DA00(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v38 = *a1;
    v39[0] = 0;
    v40 = -1;
    v9 = *(a1 + 12);
    if (v9 != -1)
    {
      v94[0] = v39;
      (off_266BE50[v9])(v94, a1 + 1);
      v40 = v9;
    }

    v10 = 0;
    v41 = *(a1 + 7);
    *v42 = a1[4];
    v43 = *(a1 + 10);
    *(a1 + 72) = 0u;
    *(a1 + 8) = 0;
    v44 = *(a1 + 88);
    *__p = a1[6];
    v46 = *(a1 + 14);
    *(a1 + 14) = 0;
    a1[6] = 0u;
    v47 = *(a1 + 120);
    v48 = *(a1 + 32);
    v49 = *(a1 + 136);
    v50 = *(a1 + 19);
    *(a1 + 136) = 0u;
    *(a1 + 19) = 0;
    v51 = a1[10];
    v11 = *(a1 + 22);
    a1[10] = 0u;
    *(a1 + 22) = 0;
    v53 = *(a1 + 184);
    v12 = *(a1 + 25);
    v52 = v11;
    v54 = v12;
    *(a1 + 184) = 0u;
    *(a1 + 25) = 0;
    v55 = a1[13];
    a1[13] = 0u;
    v13 = *(a1 + 28);
    v14 = *(a1 + 29);
    *(a1 + 28) = 0;
    *(a1 + 29) = 0;
    v56 = v13;
    v57 = v14;
    v59 = *(a1 + 122);
    v58 = *(a1 + 60);
    v15 = *(a1 + 248);
    v61 = *(a1 + 33);
    v60 = v15;
    *(a1 + 33) = 0;
    *(a1 + 248) = 0u;
    v62 = a1[17];
    a1[17] = 0u;
    v16 = *(a1 + 37);
    v63 = *(a1 + 36);
    v64 = v16;
    *(a1 + 36) = 0;
    *(a1 + 37) = 0;
    v17 = a1[20];
    v65 = a1[19];
    v66 = v17;
    a1[19] = 0u;
    a1[20] = 0u;
    v18 = *(a1 + 43);
    v67 = *(a1 + 42);
    v68 = v18;
    *(a1 + 42) = 0;
    *(a1 + 43) = 0;
    v19 = a1[23];
    v69 = a1[22];
    v70 = v19;
    a1[22] = 0u;
    a1[23] = 0u;
    v20 = *(a1 + 48);
    v21 = *(a1 + 49);
    *(a1 + 48) = 0;
    *(a1 + 49) = 0;
    v71 = v20;
    v72 = v21;
    LODWORD(v20) = *(a1 + 100);
    v74 = *(a1 + 202);
    v73 = v20;
    v75 = *(a1 + 408);
    v76 = *(a1 + 53);
    *(a1 + 53) = 0;
    *(a1 + 408) = 0u;
    v77 = a1[27];
    a1[27] = 0u;
    v22 = *(a1 + 57);
    v78 = *(a1 + 56);
    v79 = v22;
    *(a1 + 56) = 0;
    *(a1 + 57) = 0;
    v23 = a1[30];
    v80 = a1[29];
    v81 = v23;
    a1[29] = 0u;
    a1[30] = 0u;
    v24 = *(a1 + 63);
    v82 = *(a1 + 62);
    v83 = v24;
    *(a1 + 62) = 0;
    *(a1 + 63) = 0;
    v25 = a1[33];
    v84 = a1[32];
    v85 = v25;
    v86 = *(a1 + 68);
    a1[32] = 0u;
    a1[33] = 0u;
    *(a1 + 68) = 0;
    v26 = *(a1 + 69);
    *(a1 + 69) = 0;
    v87 = v26;
    LODWORD(v26) = *(a1 + 140);
    v89 = *(a1 + 282);
    v88 = v26;
    v90 = *(a1 + 568);
    v91 = *(a1 + 73);
    *(a1 + 73) = 0;
    *(a1 + 568) = 0u;
    v27 = a1[37];
    v93 = *(a1 + 76);
    v92 = v27;
    *(a1 + 76) = 0;
    v28 = v4 >> 1;
    v29 = a1;
    a1[37] = 0u;
    do
    {
      while (1)
      {
        v36 = v29 + 616 * v10;
        v35 = v36 + 616;
        if (2 * v10 + 2 < a4)
        {
          break;
        }

        v10 = (2 * v10) | 1;
        sub_63A54C(v29, v36 + 616);
        v29 = v35;
        if (v10 > v28)
        {
          goto LABEL_13;
        }
      }

      v30 = *(v36 + 624);
      v31 = *(v36 + 1240);
      v32 = v30 == v31;
      v33 = v30 < v31;
      if (v32)
      {
        v33 = *(v36 + 744) > *(v36 + 1360);
      }

      v34 = v36 + 1232;
      if (v33)
      {
        v35 = v34;
        v10 = 2 * v10 + 2;
      }

      else
      {
        v10 = (2 * v10) | 1;
      }

      sub_63A54C(v29, v35);
      v29 = v35;
    }

    while (v10 <= v28);
LABEL_13:
    if (v35 == a2 - 616)
    {
      sub_63A54C(v35, &v38);
    }

    else
    {
      sub_63A54C(v35, a2 - 616);
      sub_63A54C(a2 - 616, &v38);
      sub_63DE20(a1, v35 + 616, a3, 0x4FCACE213F2B3885 * ((v35 + 616 - a1) >> 3));
    }

    sub_53A868(&v79);
    sub_53A868(&v64);
    sub_53A868(&v49);
    if (SHIBYTE(v46) < 0)
    {
      operator delete(__p[0]);
      if ((SHIBYTE(v43) & 0x80000000) == 0)
      {
LABEL_18:
        v37 = v40;
        if (v40 == -1)
        {
          return;
        }

LABEL_22:
        (off_266BE00[v37])(v94, v39);
        return;
      }
    }

    else if ((SHIBYTE(v43) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    operator delete(v42[0]);
    v37 = v40;
    if (v40 == -1)
    {
      return;
    }

    goto LABEL_22;
  }
}

void sub_63DE20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v6 = v4 >> 1;
    v7 = a1 + 616 * (v4 >> 1);
    v8 = *(v7 + 8);
    v9 = *(a2 - 608);
    v10 = (a2 - 488);
    v11 = *(a2 - 488);
    v12 = v8 == v9;
    v13 = v8 < v9;
    if (v12)
    {
      v13 = *(v7 + 128) > v11;
    }

    if (v13)
    {
      v14 = a2 - 616;
      v51 = *(a2 - 616);
      v52[0] = 0;
      v53 = -1;
      v15 = *(a2 - 568);
      if (v15 != -1)
      {
        v16 = a2 - 616;
        v17 = a2;
        v107 = v52;
        (off_266BE50[v15])(&v107, a2 - 600, a3);
        v53 = v15;
        v11 = *v10;
        a2 = v17;
        v14 = v16;
      }

      v54 = *(a2 - 560);
      v18 = a2 - 552;
      *v55 = *(a2 - 552);
      v56 = *(a2 - 536);
      *(v18 + 8) = 0u;
      *v18 = 0;
      v57 = *(a2 - 528);
      v19 = a2 - 520;
      *__p = *(a2 - 520);
      v59 = *(a2 - 504);
      *(v19 + 16) = 0;
      *v19 = 0u;
      v60 = *(a2 - 496);
      v61 = v11;
      v20 = (a2 - 480);
      v62 = *(a2 - 480);
      v63 = *(a2 - 464);
      *(a2 - 472) = 0;
      *v20 = 0;
      v20[2] = 0;
      v21 = (a2 - 456);
      v64 = *(a2 - 456);
      v22 = *(a2 - 440);
      *(a2 - 448) = 0;
      *v21 = 0;
      v21[2] = 0;
      v23 = (a2 - 432);
      v66 = *(a2 - 432);
      v24 = *(a2 - 416);
      v65 = v22;
      v67 = v24;
      *(a2 - 424) = 0;
      *v23 = 0;
      v23[2] = 0;
      v25 = (a2 - 408);
      v68 = *(a2 - 408);
      v26 = *(a2 - 392);
      *(a2 - 400) = 0;
      *v25 = 0;
      v25[2] = 0;
      v27 = *(a2 - 384);
      *(a2 - 384) = 0;
      v69 = v26;
      v70 = v27;
      LODWORD(v26) = *(a2 - 376);
      v72 = *(a2 - 372);
      v71 = v26;
      v28 = (a2 - 368);
      v29 = *(a2 - 368);
      v74 = *(a2 - 352);
      v73 = v29;
      *(a2 - 360) = 0;
      *v28 = 0;
      v28[2] = 0;
      v30 = (a2 - 344);
      v31 = *(a2 - 328);
      v75 = *(a2 - 344);
      *(a2 - 336) = 0;
      *v30 = 0;
      v30[2] = 0;
      v32 = (a2 - 320);
      v77 = *(a2 - 320);
      v33 = *(a2 - 304);
      v76 = v31;
      v78 = v33;
      *(a2 - 312) = 0;
      *v32 = 0;
      v32[2] = 0;
      v34 = (a2 - 296);
      v79 = *(a2 - 296);
      v35 = *(a2 - 280);
      *(a2 - 288) = 0;
      *v34 = 0;
      v34[2] = 0;
      v81 = *(a2 - 272);
      v36 = *(a2 - 256);
      v80 = v35;
      v82 = v36;
      *(a2 - 264) = 0;
      *(a2 - 272) = 0;
      v83 = *(a2 - 248);
      *(a2 - 256) = 0;
      *(a2 - 248) = 0;
      v37 = *(a2 - 232);
      v38 = *(a2 - 224);
      *(a2 - 240) = 0;
      *(a2 - 232) = 0;
      *(a2 - 224) = 0;
      v84 = v37;
      v85 = v38;
      LODWORD(v37) = *(a2 - 216);
      v87 = *(a2 - 212);
      v86 = v37;
      v39 = *(a2 - 192);
      v88 = *(a2 - 208);
      v89 = v39;
      *(a2 - 208) = 0;
      *(a2 - 200) = 0;
      v40 = *(a2 - 168);
      v90 = *(a2 - 184);
      *(a2 - 192) = 0;
      *(a2 - 184) = 0;
      *(a2 - 176) = 0;
      *(a2 - 168) = 0;
      v92 = *(a2 - 160);
      v41 = *(a2 - 144);
      v91 = v40;
      v93 = v41;
      *(a2 - 160) = 0;
      *(a2 - 152) = 0;
      v94 = *(a2 - 136);
      v42 = *(a2 - 120);
      *(a2 - 144) = 0;
      *(a2 - 136) = 0;
      *(a2 - 128) = 0;
      *(a2 - 120) = 0;
      v96 = *(a2 - 112);
      v43 = *(a2 - 96);
      v95 = v42;
      v97 = v43;
      *(a2 - 112) = 0;
      *(a2 - 104) = 0;
      v98 = *(a2 - 88);
      v44 = *(a2 - 64);
      v99 = *(a2 - 72);
      *(a2 - 96) = 0;
      *(a2 - 88) = 0;
      *(a2 - 80) = 0;
      *(a2 - 72) = 0;
      *(a2 - 64) = 0;
      v100 = v44;
      LODWORD(v42) = *(a2 - 56);
      v102 = *(a2 - 52);
      v101 = v42;
      v45 = *(a2 - 32);
      v103 = *(a2 - 48);
      v104 = v45;
      *(a2 - 48) = 0;
      *(a2 - 40) = 0;
      v46 = *(a2 - 24);
      v106 = *(a2 - 8);
      v105 = v46;
      *(a2 - 32) = 0;
      *(a2 - 24) = 0;
      *(a2 - 16) = 0;
      *(a2 - 8) = 0;
      do
      {
        v47 = v7;
        sub_63A54C(v14, v7);
        if (!v6)
        {
          break;
        }

        v6 = (v6 - 1) >> 1;
        v7 = a1 + 616 * v6;
        v48 = *(v7 + 8);
        v12 = v48 == *(&v51 + 1);
        v49 = v48 < *(&v51 + 1);
        if (v12)
        {
          v49 = *(v7 + 128) > v61;
        }

        v14 = v47;
      }

      while (v49);
      sub_63A54C(v47, &v51);
      sub_53A868(&v92);
      sub_53A868(&v77);
      sub_53A868(&v62);
      if (SHIBYTE(v59) < 0)
      {
        operator delete(__p[0]);
        if ((SHIBYTE(v56) & 0x80000000) == 0)
        {
LABEL_14:
          v50 = v53;
          if (v53 == -1)
          {
            return;
          }

LABEL_18:
          (off_266BE00[v50])(&v107, v52);
          return;
        }
      }

      else if ((SHIBYTE(v56) & 0x80000000) == 0)
      {
        goto LABEL_14;
      }

      operator delete(v55[0]);
      v50 = v53;
      if (v53 == -1)
      {
        return;
      }

      goto LABEL_18;
    }
  }
}

void sub_63E2CC(char *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, std::string *a5@<X5>, uint64_t a6@<X8>, uint64_t a7@<X4>)
{
  v14 = sub_4D1F50(a3, a4);
  sub_62AFEC(*(v14 + 32) & 0xFFFFFFFFFFFFFFLL, *(a1 + 16), v54);
  if (a2 == 15)
  {
    sub_734CE0(v44);
  }

  else
  {
    sub_62B1B8(v14, v44, a1, a7);
  }

  v15 = sub_734C10(v54);
  v16 = sub_734C10(v44);
  sub_639564(a2, a3, a4, v15, v16, &__p);
  sub_63E914(a5, &__p);
  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    sub_64B998(a6);
    goto LABEL_57;
  }

  v18 = sub_9274F4(*(a1 + 17), &__p);
  if (*(v18 + 23) < 0)
  {
    sub_325C(&v42, *v18, v18[1]);
  }

  else
  {
    v19 = *v18;
    v42.__r_.__value_.__r.__words[2] = v18[2];
    *&v42.__r_.__value_.__l.__data_ = v19;
  }

  if (sub_734C10(v54))
  {
    switch(a2)
    {
      case 0xF:
        v41 = 0x700000000000000;
        v21 = "{Ferry}";
        break;
      case 0x15:
        v41 = 0x600000000000000;
        *__c = *"{Road}";
        v20 = 6;
        goto LABEL_20;
      case 0x14:
        *__c = *"{Elevator}";
        v41 = 0xA00000000000000;
        v20 = 10;
        goto LABEL_20;
      default:
        v41 = 0x700000000000000;
        v21 = "{Road1}";
        break;
    }

    *__c = *v21;
    v20 = 7;
LABEL_20:
    v22 = HIBYTE(v42.__r_.__value_.__r.__words[2]);
    if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v23 = &v42;
    }

    else
    {
      v23 = v42.__r_.__value_.__r.__words[0];
    }

    if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v22 = v42.__r_.__value_.__l.__size_;
    }

    if (v22 >= v20)
    {
      v30 = v23 + v22;
      v31 = SLOBYTE(__c[0]);
      v32 = v23;
      do
      {
        v33 = v22 - v20;
        if (v33 == -1)
        {
          break;
        }

        v34 = memchr(v32, v31, v33 + 1);
        if (!v34)
        {
          break;
        }

        v35 = v34;
        if (!memcmp(v34, __c, v20))
        {
          if (v35 != v30 && v35 - v23 != -1)
          {
            v38 = (v55 & 0x80u) == 0 ? v54 : v54[0];
            v39 = (v55 & 0x80u) == 0 ? v55 : v54[1];
            std::string::replace(&v42, v35 - v23, v20, v38, v39);
            if (SHIBYTE(v41) < 0)
            {
              operator delete(*__c);
            }
          }

          break;
        }

        v32 = (v35 + 1);
        v22 = v30 - (v35 + 1);
      }

      while (v22 >= v20);
    }
  }

  if (sub_734C10(v44))
  {
    v24 = HIBYTE(v42.__r_.__value_.__r.__words[2]);
    if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v25 = &v42;
    }

    else
    {
      v25 = v42.__r_.__value_.__r.__words[0];
    }

    if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v24 = v42.__r_.__value_.__l.__size_;
    }

    if (v24 >= 7)
    {
      v26 = v25 + v24;
      v27 = v25;
      do
      {
        v28 = memchr(v27, 123, v24 - 6);
        if (!v28)
        {
          break;
        }

        if (*v28 == 1634685563 && *(v28 + 3) == 2100454497)
        {
          if (v28 != v26 && v28 - v25 != -1)
          {
            if ((v45 & 0x80u) == 0)
            {
              v36 = v44;
            }

            else
            {
              v36 = v44[0];
            }

            if ((v45 & 0x80u) == 0)
            {
              v37 = v45;
            }

            else
            {
              v37 = v44[1];
            }

            std::string::replace(&v42, v28 - v25, 7uLL, v36, v37);
          }

          break;
        }

        v27 = (v28 + 1);
        v24 = v26 - v27;
      }

      while (v26 - v27 >= 7);
    }
  }

  sub_64BC50(a6, &v42, (*(a1 + 15) + 1177));
  if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_57:
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_70;
  }

  operator delete(v42.__r_.__value_.__l.__data_);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_58:
    if ((v53 & 0x80000000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_71;
  }

LABEL_70:
  operator delete(__p.__r_.__value_.__l.__data_);
  if ((v53 & 0x80000000) == 0)
  {
LABEL_59:
    if ((v51 & 0x80000000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_72;
  }

LABEL_71:
  operator delete(v52);
  if ((v51 & 0x80000000) == 0)
  {
LABEL_60:
    if ((v49 & 0x80000000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_73;
  }

LABEL_72:
  operator delete(v50);
  if ((v49 & 0x80000000) == 0)
  {
LABEL_61:
    if ((v47 & 0x80000000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_74;
  }

LABEL_73:
  operator delete(v48);
  if ((v47 & 0x80000000) == 0)
  {
LABEL_62:
    if ((v45 & 0x80000000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_75;
  }

LABEL_74:
  operator delete(v46);
  if ((v45 & 0x80000000) == 0)
  {
LABEL_63:
    if ((v63 & 0x80000000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_76;
  }

LABEL_75:
  operator delete(v44[0]);
  if ((v63 & 0x80000000) == 0)
  {
LABEL_64:
    if ((v61 & 0x80000000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_77;
  }

LABEL_76:
  operator delete(v62);
  if ((v61 & 0x80000000) == 0)
  {
LABEL_65:
    if ((v59 & 0x80000000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_78;
  }

LABEL_77:
  operator delete(v60);
  if ((v59 & 0x80000000) == 0)
  {
LABEL_66:
    if ((v57 & 0x80000000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_79;
  }

LABEL_78:
  operator delete(v58);
  if ((v57 & 0x80000000) == 0)
  {
LABEL_67:
    if ((v55 & 0x80000000) == 0)
    {
      return;
    }

LABEL_80:
    operator delete(v54[0]);
    return;
  }

LABEL_79:
  operator delete(v56);
  if (v55 < 0)
  {
    goto LABEL_80;
  }
}

void sub_63E754(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a27 & 0x80000000) == 0)
      {
LABEL_8:
        sub_3E5388(&a28);
        sub_3E5388(&a47);
        _Unwind_Resume(a1);
      }

LABEL_7:
      operator delete(a22);
      sub_3E5388(&a28);
      sub_3E5388(&a47);
      _Unwind_Resume(a1);
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a16);
  if ((a27 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

uint64_t sub_63E808(uint64_t result, uint64_t a2)
{
  if (*(*result + 1) == 1 && **result == 21)
  {
    operator new();
  }

  return result;
}

void sub_63E8F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_63E914(std::string *result, std::string *a2)
{
  if (*(result->__r_.__value_.__r.__words[0] + 1) != 1 || *result->__r_.__value_.__l.__data_ != 21)
  {
    return result;
  }

  result = sub_6A0D84((result->__r_.__value_.__l.__size_ + 1104), *result->__r_.__value_.__r.__words[2], &v11);
  if (!v11)
  {
    sub_21E17C0();
  }

  v4 = *(v11 + 160);
  if (v4 - 23 <= 1)
  {
    v5 = "_Ferry";
    v6 = a2;
    v7 = 6;
    return std::string::append(v6, v5, v7);
  }

  if (v4 - 82 >= 3)
  {
    v8 = v4 > 0x27;
    v9 = (1 << v4) & 0x8600050000;
    if (v8 || v9 == 0)
    {
      v5 = "_Fallback";
      v6 = a2;
      v7 = 9;
      return std::string::append(v6, v5, v7);
    }
  }

  return result;
}

void sub_63E9E8(uint64_t a1, char *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_4D1F50(a4, a5);
  sub_62AFEC(*(v12 + 32) & 0xFFFFFFFFFFFFFFLL, *(a2 + 16), v52);
  if (a3 == 15)
  {
    sub_734CE0(v42);
  }

  else
  {
    sub_62B1B8(v12, v42, a2, a6);
  }

  v13 = sub_734C10(v52);
  v14 = sub_734C10(v42);
  sub_639564(a3, a4, a5, v13, v14, &__p);
  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    sub_64B998(a1);
    goto LABEL_57;
  }

  v16 = sub_9274F4(*(a2 + 17), &__p);
  if (*(v16 + 23) < 0)
  {
    sub_325C(&v40, *v16, v16[1]);
  }

  else
  {
    v17 = *v16;
    v40.__r_.__value_.__r.__words[2] = v16[2];
    *&v40.__r_.__value_.__l.__data_ = v17;
  }

  if (sub_734C10(v52))
  {
    switch(a3)
    {
      case 0xF:
        v39 = 0x700000000000000;
        v19 = "{Ferry}";
        break;
      case 0x15:
        v39 = 0x600000000000000;
        *__c = *"{Road}";
        v18 = 6;
        goto LABEL_20;
      case 0x14:
        *__c = *"{Elevator}";
        v39 = 0xA00000000000000;
        v18 = 10;
        goto LABEL_20;
      default:
        v39 = 0x700000000000000;
        v19 = "{Road1}";
        break;
    }

    *__c = *v19;
    v18 = 7;
LABEL_20:
    v20 = HIBYTE(v40.__r_.__value_.__r.__words[2]);
    if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v21 = &v40;
    }

    else
    {
      v21 = v40.__r_.__value_.__r.__words[0];
    }

    if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v20 = v40.__r_.__value_.__l.__size_;
    }

    if (v20 >= v18)
    {
      v28 = v21 + v20;
      v29 = SLOBYTE(__c[0]);
      v30 = v21;
      do
      {
        v31 = v20 - v18;
        if (v31 == -1)
        {
          break;
        }

        v32 = memchr(v30, v29, v31 + 1);
        if (!v32)
        {
          break;
        }

        v33 = v32;
        if (!memcmp(v32, __c, v18))
        {
          if (v33 != v28 && v33 - v21 != -1)
          {
            v36 = (v53 & 0x80u) == 0 ? v52 : v52[0];
            v37 = (v53 & 0x80u) == 0 ? v53 : v52[1];
            std::string::replace(&v40, v33 - v21, v18, v36, v37);
            if (SHIBYTE(v39) < 0)
            {
              operator delete(*__c);
            }
          }

          break;
        }

        v30 = (v33 + 1);
        v20 = v28 - (v33 + 1);
      }

      while (v20 >= v18);
    }
  }

  if (sub_734C10(v42))
  {
    v22 = HIBYTE(v40.__r_.__value_.__r.__words[2]);
    if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v23 = &v40;
    }

    else
    {
      v23 = v40.__r_.__value_.__r.__words[0];
    }

    if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v22 = v40.__r_.__value_.__l.__size_;
    }

    if (v22 >= 7)
    {
      v24 = v23 + v22;
      v25 = v23;
      do
      {
        v26 = memchr(v25, 123, v22 - 6);
        if (!v26)
        {
          break;
        }

        if (*v26 == 1634685563 && *(v26 + 3) == 2100454497)
        {
          if (v26 != v24 && v26 - v23 != -1)
          {
            if ((v43 & 0x80u) == 0)
            {
              v34 = v42;
            }

            else
            {
              v34 = v42[0];
            }

            if ((v43 & 0x80u) == 0)
            {
              v35 = v43;
            }

            else
            {
              v35 = v42[1];
            }

            std::string::replace(&v40, v26 - v23, 7uLL, v34, v35);
          }

          break;
        }

        v25 = (v26 + 1);
        v22 = v24 - v25;
      }

      while (v24 - v25 >= 7);
    }
  }

  sub_64BC50(a1, &v40, (*(a2 + 15) + 1177));
  if ((SHIBYTE(v40.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_57:
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_70;
  }

  operator delete(v40.__r_.__value_.__l.__data_);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_58:
    if ((v51 & 0x80000000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_71;
  }

LABEL_70:
  operator delete(__p.__r_.__value_.__l.__data_);
  if ((v51 & 0x80000000) == 0)
  {
LABEL_59:
    if ((v49 & 0x80000000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_72;
  }

LABEL_71:
  operator delete(v50);
  if ((v49 & 0x80000000) == 0)
  {
LABEL_60:
    if ((v47 & 0x80000000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_73;
  }

LABEL_72:
  operator delete(v48);
  if ((v47 & 0x80000000) == 0)
  {
LABEL_61:
    if ((v45 & 0x80000000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_74;
  }

LABEL_73:
  operator delete(v46);
  if ((v45 & 0x80000000) == 0)
  {
LABEL_62:
    if ((v43 & 0x80000000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_75;
  }

LABEL_74:
  operator delete(v44);
  if ((v43 & 0x80000000) == 0)
  {
LABEL_63:
    if ((v61 & 0x80000000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_76;
  }

LABEL_75:
  operator delete(v42[0]);
  if ((v61 & 0x80000000) == 0)
  {
LABEL_64:
    if ((v59 & 0x80000000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_77;
  }

LABEL_76:
  operator delete(v60);
  if ((v59 & 0x80000000) == 0)
  {
LABEL_65:
    if ((v57 & 0x80000000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_78;
  }

LABEL_77:
  operator delete(v58);
  if ((v57 & 0x80000000) == 0)
  {
LABEL_66:
    if ((v55 & 0x80000000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_79;
  }

LABEL_78:
  operator delete(v56);
  if ((v55 & 0x80000000) == 0)
  {
LABEL_67:
    if ((v53 & 0x80000000) == 0)
    {
      return;
    }

LABEL_80:
    operator delete(v52[0]);
    return;
  }

LABEL_79:
  operator delete(v54);
  if (v53 < 0)
  {
    goto LABEL_80;
  }
}

void sub_63EE58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a27 & 0x80000000) == 0)
      {
LABEL_8:
        sub_3E5388(&a28);
        sub_3E5388(v28 - 216);
        _Unwind_Resume(a1);
      }

LABEL_7:
      operator delete(a22);
      sub_3E5388(&a28);
      sub_3E5388(v28 - 216);
      _Unwind_Resume(a1);
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a16);
  if ((a27 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void sub_63EF0C(double **a1, uint64_t a2)
{
  if (*(*a1 + 7) == 1)
  {
    sub_64B9C4(__p, (*(*a1 + 15) + 1177));
    sub_53D784(a2 + 320, __p);
    sub_53A868(__p);
    operator new();
  }
}

void sub_63F174(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_63F1BC(unint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, char a5)
{
LABEL_1:
  v8 = a1;
LABEL_2:
  v9 = 1 - a4;
  while (1)
  {
    a1 = v8;
    v10 = v9;
    v11 = a2 - v8;
    v12 = 0x4FCACE213F2B3885 * (v11 >> 3);
    if (v12 > 2)
    {
      break;
    }

    if (v12 < 2)
    {
      return;
    }

    if (v12 == 2)
    {
      v21 = *(a2 - 76);
      v22 = *(a1 + 8);
      v23 = v21 == v22;
      v24 = v21 < v22;
      if (v23)
      {
        v24 = *(a2 - 122) > *(a1 + 128);
      }

      if (v24)
      {
        v25 = a1;
        v26 = a2 - 616;
        goto LABEL_37;
      }

      return;
    }

LABEL_10:
    if (v11 <= 14783)
    {
      if (a5)
      {

        sub_63F6D0(a1, a2);
      }

      else
      {

        sub_63FC68(a1, a2);
      }

      return;
    }

    if (v9 == 1)
    {
      if (a1 != a2)
      {
        v36 = (v12 - 2) >> 1;
        v37 = v36 + 1;
        v38 = (a1 + 616 * v36);
        do
        {
          sub_64101C(a1, a3, 0x4FCACE213F2B3885 * (v11 >> 3), v38);
          v38 = (v38 - 616);
          --v37;
        }

        while (v37);
        v39 = 0x4FCACE213F2B3885 * (v11 >> 3);
        do
        {
          sub_641488(a1, a2, a3, v39);
          a2 = (a2 - 616);
        }

        while (v39-- > 2);
      }

      return;
    }

    v13 = v12 >> 1;
    v14 = a1 + 616 * (v12 >> 1);
    if (v11 < 0x13401)
    {
      sub_63B63C(v14, a1, a2 - 616);
      if (a5)
      {
        goto LABEL_19;
      }
    }

    else
    {
      sub_63B63C(a1, v14, a2 - 616);
      sub_63B63C(a1 + 616, 616 * v13 + a1 - 616, (a2 - 77));
      sub_63B63C(a1 + 1232, a1 + 616 + 616 * v13, a2 - 1848);
      sub_63B63C(616 * v13 + a1 - 616, v14, a1 + 616 + 616 * v13);
      sub_63D28C(a1, v14);
      if (a5)
      {
        goto LABEL_19;
      }
    }

    v15 = *(a1 - 608);
    v16 = *(a1 + 8);
    v23 = v15 == v16;
    v17 = v15 < v16;
    if (v23)
    {
      v17 = *(a1 - 488) > *(a1 + 128);
    }

    if (!v17)
    {
      v8 = sub_6401D4(a1, a2);
      goto LABEL_24;
    }

LABEL_19:
    v18 = sub_640624(a1, a2);
    if ((v19 & 1) == 0)
    {
      goto LABEL_22;
    }

    v20 = sub_640A70(a1, v18);
    v8 = v18 + 616;
    if (sub_640A70(v18 + 616, a2))
    {
      a4 = -v10;
      a2 = v18;
      if (v20)
      {
        return;
      }

      goto LABEL_1;
    }

    v9 = v10 + 1;
    if (!v20)
    {
LABEL_22:
      sub_63F1BC(a1, v18, a3, -v10, a5 & 1);
      v8 = v18 + 616;
LABEL_24:
      a5 = 0;
      a4 = -v10;
      goto LABEL_2;
    }
  }

  if (v12 == 3)
  {

    sub_63B63C(a1, a1 + 616, a2 - 616);
    return;
  }

  if (v12 != 4)
  {
    if (v12 == 5)
    {

      sub_63B750(a1, a1 + 616, a1 + 1232, a1 + 1848, a2 - 616);
      return;
    }

    goto LABEL_10;
  }

  sub_63B63C(a1, a1 + 616, a1 + 1232);
  v27 = *(a2 - 76);
  v28 = *(a1 + 1240);
  v23 = v27 == v28;
  v29 = v27 < v28;
  if (v23)
  {
    v29 = *(a2 - 122) > *(a1 + 1360);
  }

  if (v29)
  {
    sub_63D28C((a1 + 1232), a2 - 616);
    v30 = *(a1 + 1240);
    v31 = *(a1 + 624);
    v23 = v30 == v31;
    v32 = v30 < v31;
    if (v23)
    {
      v32 = *(a1 + 1360) > *(a1 + 744);
    }

    if (v32)
    {
      sub_63D28C((a1 + 616), a1 + 1232);
      v33 = *(a1 + 624);
      v34 = *(a1 + 8);
      v23 = v33 == v34;
      v35 = v33 < v34;
      if (v23)
      {
        v35 = *(a1 + 744) > *(a1 + 128);
      }

      if (v35)
      {
        v26 = a1 + 616;
        v25 = a1;
LABEL_37:

        sub_63D28C(v25, v26);
      }
    }
  }
}

void sub_63F6D0(_OWORD *a1, _OWORD *a2)
{
  if (a1 == a2)
  {
    return;
  }

  v3 = a1 + 616;
  if ((a1 + 616) == a2)
  {
    return;
  }

  v4 = 0;
  v5 = a1;
  v33 = a2;
  while (2)
  {
    v6 = v3;
    v7 = *(v5 + 78);
    v8 = *(v5 + 1);
    v9 = *(v5 + 186);
    v10 = v7 == v8;
    v11 = v7 < v8;
    if (v10)
    {
      v11 = v9 > *(v5 + 32);
    }

    if (!v11)
    {
      goto LABEL_5;
    }

    v34 = *v6;
    v35[0] = 0;
    v36 = -1;
    v12 = *(v5 + 166);
    if (v12 != -1)
    {
      v90[0] = v35;
      (off_266BE50[v12])(v90, v5 + 632);
      v36 = v12;
      v9 = *(v5 + 186);
    }

    v37 = *(v5 + 84);
    v39 = *(v5 + 87);
    v38 = *(v5 + 680);
    v5[43] = 0u;
    *(v5 + 85) = 0;
    v40 = *(v5 + 704);
    v42 = *(v5 + 91);
    __p = *(v5 + 712);
    *(v5 + 91) = 0;
    *(v5 + 712) = 0u;
    v43 = *(v5 + 736);
    v44 = v9;
    v45 = v5[47];
    v46 = *(v5 + 96);
    v5[47] = 0u;
    *(v5 + 96) = 0;
    v47 = *(v5 + 776);
    v48 = *(v5 + 99);
    *(v5 + 776) = 0u;
    *(v5 + 99) = 0;
    v49 = v5[50];
    v50 = *(v5 + 102);
    v5[50] = 0u;
    *(v5 + 102) = 0;
    v51 = *(v5 + 824);
    v52 = *(v5 + 105);
    *(v5 + 824) = 0u;
    *(v5 + 105) = 0;
    v13 = *(v5 + 106);
    *(v5 + 106) = 0;
    v54 = *(v5 + 214);
    v55 = *(v5 + 430);
    v56 = v5[54];
    v57 = *(v5 + 110);
    *(v5 + 110) = 0;
    v5[54] = 0u;
    v14 = *(v5 + 888);
    v59 = *(v5 + 113);
    v58 = v14;
    *(v5 + 113) = 0;
    *(v5 + 888) = 0u;
    v60 = v5[57];
    v15 = *(v5 + 116);
    v53 = v13;
    v61 = v15;
    v5[57] = 0u;
    *(v5 + 116) = 0;
    v62 = *(v5 + 936);
    v63 = *(v5 + 119);
    *(v5 + 936) = 0u;
    *(v5 + 119) = 0;
    v64 = v5[60];
    v65 = *(v5 + 122);
    v5[60] = 0u;
    *(v5 + 122) = 0;
    v66 = *(v5 + 984);
    v67 = *(v5 + 125);
    *(v5 + 984) = 0u;
    *(v5 + 125) = 0;
    v16 = *(v5 + 126);
    *(v5 + 126) = 0;
    v69 = *(v5 + 254);
    v70 = *(v5 + 510);
    v71 = v5[64];
    v72 = *(v5 + 130);
    *(v5 + 130) = 0;
    v5[64] = 0u;
    v17 = *(v5 + 1048);
    v74 = *(v5 + 133);
    v73 = v17;
    *(v5 + 133) = 0;
    *(v5 + 1048) = 0u;
    v75 = v5[67];
    v18 = *(v5 + 136);
    v68 = v16;
    v76 = v18;
    v5[67] = 0u;
    *(v5 + 136) = 0;
    v77 = *(v5 + 1096);
    v78 = *(v5 + 139);
    *(v5 + 1096) = 0u;
    *(v5 + 139) = 0;
    v79 = v5[70];
    v80 = *(v5 + 142);
    v5[70] = 0u;
    *(v5 + 142) = 0;
    v81 = *(v5 + 1144);
    v82 = *(v5 + 145);
    *(v5 + 1144) = 0u;
    *(v5 + 145) = 0;
    v19 = *(v5 + 146);
    *(v5 + 146) = 0;
    v83 = v19;
    v84 = *(v5 + 294);
    v85 = *(v5 + 590);
    v86 = v5[74];
    v87 = *(v5 + 150);
    *(v5 + 150) = 0;
    v5[74] = 0u;
    v20 = (v5 + 1208);
    v21 = *(v5 + 1208);
    v89 = *(v5 + 153);
    v88 = v21;
    *(v5 + 153) = 0;
    v22 = v4;
    *v20 = 0u;
    while (1)
    {
      *(a1 + v22 + 616) = *(a1 + v22);
      v23 = *(a1 + v22 + 664);
      v24 = *(a1 + v22 + 48);
      if (v23 == -1)
      {
        if (v24 == -1)
        {
          goto LABEL_17;
        }
      }

      else if (v24 == -1)
      {
        (off_266BE00[v23])(v90, a1 + v22 + 632);
        *(a1 + v22 + 664) = -1;
        goto LABEL_17;
      }

      v90[0] = a1 + v22 + 632;
      (off_266BE78[v24])(v90);
LABEL_17:
      v25 = a1 + v22;
      *(a1 + v22 + 672) = *(a1 + v22 + 56);
      v26 = (a1 + v22 + 680);
      if (*(a1 + v22 + 703) < 0)
      {
        operator delete(*v26);
      }

      *v26 = *(v25 + 4);
      *(a1 + v22 + 696) = *(v25 + 10);
      v25[87] = 0;
      v25[64] = 0;
      v25[704] = v25[88];
      v27 = v25 + 712;
      if (v25[735] < 0)
      {
        operator delete(*v27);
      }

      v28 = a1 + v22;
      *v27 = *(a1 + v22 + 96);
      *(v27 + 2) = *(a1 + v22 + 112);
      v28[119] = 0;
      v28[96] = 0;
      v28[736] = *(a1 + v22 + 120);
      *(v28 + 186) = *(a1 + v22 + 128);
      sub_53D784(a1 + v22 + 752, a1 + v22 + 136);
      sub_53D784((v28 + 912), (v28 + 296));
      sub_53D784((v28 + 1072), (v28 + 456));
      if (!v22)
      {
        break;
      }

      v29 = *(v28 - 76);
      v10 = *(&v34 + 1) == v29;
      v30 = *(&v34 + 1) < v29;
      if (v10)
      {
        v30 = v44 > *(v28 - 122);
      }

      v22 -= 616;
      if (!v30)
      {
        v31 = a1 + v22 + 616;
        goto LABEL_27;
      }
    }

    v31 = a1;
LABEL_27:
    sub_63A54C(v31, &v34);
    sub_53A868(&v75);
    sub_53A868(&v60);
    sub_53A868(&v45);
    if (SHIBYTE(v42) < 0)
    {
      operator delete(__p);
      if (SHIBYTE(v39) < 0)
      {
        goto LABEL_32;
      }

LABEL_29:
      v32 = v36;
      if (v36 != -1)
      {
LABEL_33:
        (off_266BE00[v32])(v90, v35);
      }
    }

    else
    {
      if ((SHIBYTE(v39) & 0x80000000) == 0)
      {
        goto LABEL_29;
      }

LABEL_32:
      operator delete(v38);
      v32 = v36;
      if (v36 != -1)
      {
        goto LABEL_33;
      }
    }

    a2 = v33;
LABEL_5:
    v3 = v6 + 616;
    v4 += 616;
    v5 = v6;
    if ((v6 + 616) != a2)
    {
      continue;
    }

    break;
  }
}

void sub_63FC68(_OWORD *a1, _OWORD *a2)
{
  if (a1 == a2)
  {
    return;
  }

  v3 = a1;
  v4 = a1 + 616;
  if ((a1 + 616) == a2)
  {
    return;
  }

  v5 = a1 - 38;
  while (2)
  {
    v6 = v4;
    v7 = *(v3 + 78);
    v8 = *(v3 + 1);
    v9 = *(v3 + 186);
    v10 = v7 == v8;
    v11 = v7 < v8;
    if (v10)
    {
      v11 = v9 > *(v3 + 32);
    }

    if (!v11)
    {
      goto LABEL_4;
    }

    v29 = *v6;
    v30[0] = 0;
    v31 = -1;
    v12 = *(v3 + 166);
    if (v12 != -1)
    {
      v85[0] = v30;
      (off_266BE50[v12])(v85, v3 + 632);
      v31 = v12;
      v9 = *(v3 + 186);
    }

    v32 = *(v3 + 84);
    v34 = *(v3 + 87);
    v33 = *(v3 + 680);
    v3[43] = 0u;
    *(v3 + 85) = 0;
    v35 = *(v3 + 704);
    v37 = *(v3 + 91);
    __p = *(v3 + 712);
    *(v3 + 91) = 0;
    *(v3 + 712) = 0u;
    v38 = *(v3 + 736);
    v39 = v9;
    v40 = v3[47];
    v41 = *(v3 + 96);
    v3[47] = 0u;
    *(v3 + 96) = 0;
    v42 = *(v3 + 776);
    v43 = *(v3 + 99);
    *(v3 + 776) = 0u;
    *(v3 + 99) = 0;
    v44 = v3[50];
    v45 = *(v3 + 102);
    v3[50] = 0u;
    *(v3 + 102) = 0;
    v46 = *(v3 + 824);
    v47 = *(v3 + 105);
    *(v3 + 824) = 0u;
    *(v3 + 105) = 0;
    v13 = *(v3 + 106);
    *(v3 + 106) = 0;
    v49 = *(v3 + 214);
    v50 = *(v3 + 430);
    v51 = v3[54];
    v52 = *(v3 + 110);
    *(v3 + 110) = 0;
    v3[54] = 0u;
    v14 = *(v3 + 888);
    v54 = *(v3 + 113);
    v53 = v14;
    *(v3 + 113) = 0;
    *(v3 + 888) = 0u;
    v55 = v3[57];
    v15 = *(v3 + 116);
    v48 = v13;
    v56 = v15;
    v3[57] = 0u;
    *(v3 + 116) = 0;
    v57 = *(v3 + 936);
    v58 = *(v3 + 119);
    *(v3 + 936) = 0u;
    *(v3 + 119) = 0;
    v59 = v3[60];
    v60 = *(v3 + 122);
    v3[60] = 0u;
    *(v3 + 122) = 0;
    v61 = *(v3 + 984);
    v62 = *(v3 + 125);
    *(v3 + 984) = 0u;
    *(v3 + 125) = 0;
    v16 = *(v3 + 126);
    *(v3 + 126) = 0;
    v64 = *(v3 + 254);
    v65 = *(v3 + 510);
    v66 = v3[64];
    v67 = *(v3 + 130);
    *(v3 + 130) = 0;
    v3[64] = 0u;
    v17 = *(v3 + 1048);
    v69 = *(v3 + 133);
    v68 = v17;
    *(v3 + 133) = 0;
    *(v3 + 1048) = 0u;
    v70 = v3[67];
    v18 = *(v3 + 136);
    v63 = v16;
    v71 = v18;
    v3[67] = 0u;
    *(v3 + 136) = 0;
    v72 = *(v3 + 1096);
    v73 = *(v3 + 139);
    *(v3 + 1096) = 0u;
    *(v3 + 139) = 0;
    v74 = v3[70];
    v75 = *(v3 + 142);
    v3[70] = 0u;
    *(v3 + 142) = 0;
    v76 = *(v3 + 1144);
    v77 = *(v3 + 145);
    *(v3 + 1144) = 0u;
    *(v3 + 145) = 0;
    v19 = *(v3 + 146);
    *(v3 + 146) = 0;
    v78 = v19;
    v79 = *(v3 + 294);
    v80 = *(v3 + 590);
    v81 = v3[74];
    v82 = *(v3 + 150);
    *(v3 + 150) = 0;
    v3[74] = 0u;
    v20 = (v3 + 1208);
    v21 = *(v3 + 1208);
    v84 = *(v3 + 153);
    v83 = v21;
    *(v3 + 153) = 0;
    v22 = v5;
    *v20 = 0u;
    do
    {
      *(v22 + 1224) = v22[38];
      v24 = *(v22 + 318);
      v25 = *(v22 + 164);
      if (v24 == -1)
      {
        if (v25 == -1)
        {
          goto LABEL_19;
        }
      }

      else if (v25 == -1)
      {
        (off_266BE00[v24])(v85, v22 + 1240);
        *(v22 + 318) = -1;
        goto LABEL_19;
      }

      v85[0] = v22 + 1240;
      (off_266BE78[v25])(v85);
LABEL_19:
      *(v22 + 160) = *(v22 + 83);
      v26 = v22 + 161;
      if (*(v22 + 1311) < 0)
      {
        operator delete(*v26);
      }

      *v26 = v22[42];
      *(v22 + 163) = *(v22 + 86);
      *(v22 + 695) = 0;
      *(v22 + 672) = 0;
      *(v22 + 1312) = *(v22 + 696);
      v27 = v22 + 165;
      if (*(v22 + 1343) < 0)
      {
        operator delete(*v27);
      }

      *v27 = v22[44];
      *(v22 + 167) = *(v22 + 90);
      *(v22 + 727) = 0;
      *(v22 + 704) = 0;
      *(v22 + 1344) = *(v22 + 728);
      *(v22 + 338) = *(v22 + 184);
      sub_53D784((v22 + 85), v22 + 744);
      sub_53D784((v22 + 95), v22 + 904);
      sub_53D784((v22 + 105), v22 + 1064);
      v23 = *(&v29 + 1) < *v22;
      if (*(&v29 + 1) == *v22)
      {
        v23 = v39 > *(v22 + 30);
      }

      v22 = (v22 - 616);
    }

    while (v23);
    sub_63A54C(v22 + 1224, &v29);
    sub_53A868(&v70);
    sub_53A868(&v55);
    sub_53A868(&v40);
    if (SHIBYTE(v37) < 0)
    {
      operator delete(__p);
      if (SHIBYTE(v34) < 0)
      {
        goto LABEL_28;
      }

LABEL_25:
      v28 = v31;
      if (v31 != -1)
      {
LABEL_29:
        (off_266BE00[v28])(v85, v30);
      }
    }

    else
    {
      if ((SHIBYTE(v34) & 0x80000000) == 0)
      {
        goto LABEL_25;
      }

LABEL_28:
      operator delete(v33);
      v28 = v31;
      if (v31 != -1)
      {
        goto LABEL_29;
      }
    }

LABEL_4:
    v4 = v6 + 616;
    v5 = (v5 + 616);
    v3 = v6;
    if ((v6 + 616) != a2)
    {
      continue;
    }

    break;
  }
}

unint64_t sub_6401D4(__int128 *a1, unint64_t a2)
{
  v46 = *a1;
  v47[0] = 0;
  v48 = -1;
  v4 = *(a1 + 12);
  if (v4 != -1)
  {
    v102 = v47;
    (off_266BE50[v4])(&v102, a1 + 1);
    v48 = v4;
  }

  v49 = *(a1 + 7);
  *v50 = a1[4];
  v51 = *(a1 + 10);
  *(a1 + 72) = 0u;
  *(a1 + 8) = 0;
  v52 = *(a1 + 88);
  *__p = a1[6];
  v54 = *(a1 + 14);
  *(a1 + 14) = 0;
  a1[6] = 0u;
  v55 = *(a1 + 120);
  v56 = *(a1 + 32);
  v5 = v56;
  v57 = *(a1 + 136);
  v58 = *(a1 + 19);
  *(a1 + 136) = 0u;
  *(a1 + 19) = 0;
  v59 = a1[10];
  v6 = *(a1 + 22);
  a1[10] = 0u;
  *(a1 + 22) = 0;
  v61 = *(a1 + 184);
  v7 = *(a1 + 25);
  v60 = v6;
  v62 = v7;
  *(a1 + 184) = 0u;
  *(a1 + 25) = 0;
  v63 = a1[13];
  a1[13] = 0u;
  v8 = *(a1 + 28);
  v9 = *(a1 + 29);
  *(a1 + 28) = 0;
  *(a1 + 29) = 0;
  v64 = v8;
  v65 = v9;
  LODWORD(v8) = *(a1 + 60);
  v67 = *(a1 + 122);
  v66 = v8;
  v10 = *(a1 + 248);
  v69 = *(a1 + 33);
  v68 = v10;
  *(a1 + 33) = 0;
  *(a1 + 248) = 0u;
  v70 = a1[17];
  a1[17] = 0u;
  v11 = *(a1 + 37);
  v71 = *(a1 + 36);
  v72 = v11;
  *(a1 + 36) = 0;
  *(a1 + 37) = 0;
  v12 = a1[20];
  v73 = a1[19];
  v74 = v12;
  a1[19] = 0u;
  a1[20] = 0u;
  v13 = *(a1 + 43);
  v75 = *(a1 + 42);
  v76 = v13;
  *(a1 + 42) = 0;
  *(a1 + 43) = 0;
  v14 = a1[23];
  v77 = a1[22];
  v78 = v14;
  a1[22] = 0u;
  a1[23] = 0u;
  v15 = *(a1 + 48);
  v16 = *(a1 + 49);
  *(a1 + 48) = 0;
  *(a1 + 49) = 0;
  v79 = v15;
  v80 = v16;
  LODWORD(v15) = *(a1 + 100);
  v82 = *(a1 + 202);
  v81 = v15;
  v17 = *(a1 + 53);
  v83 = *(a1 + 408);
  v84 = v17;
  *(a1 + 53) = 0;
  *(a1 + 408) = 0u;
  v85 = a1[27];
  a1[27] = 0u;
  v18 = *(a1 + 57);
  v86 = *(a1 + 56);
  v87 = v18;
  *(a1 + 56) = 0;
  *(a1 + 57) = 0;
  v19 = a1[30];
  v88 = a1[29];
  v89 = v19;
  a1[29] = 0u;
  a1[30] = 0u;
  v20 = *(a1 + 63);
  v90 = *(a1 + 62);
  v91 = v20;
  *(a1 + 62) = 0;
  *(a1 + 63) = 0;
  v21 = a1[33];
  v92 = a1[32];
  v93 = v21;
  v94 = *(a1 + 68);
  a1[32] = 0u;
  a1[33] = 0u;
  *(a1 + 68) = 0;
  v22 = *(a1 + 69);
  *(a1 + 69) = 0;
  v95 = v22;
  LODWORD(v22) = *(a1 + 140);
  v97 = *(a1 + 282);
  v96 = v22;
  v23 = *(a1 + 73);
  v98 = *(a1 + 568);
  v99 = v23;
  *(a1 + 73) = 0;
  *(a1 + 568) = 0u;
  v24 = a1[37];
  v101 = *(a1 + 76);
  *(a1 + 76) = 0;
  a1[37] = 0u;
  v25 = a2 - 608;
  v26 = v5 > *(a2 - 488);
  if (*(&v46 + 1) != *(a2 - 608))
  {
    v26 = *(&v46 + 1) < *(a2 - 608);
  }

  v100 = v24;
  if (v26)
  {
    v27 = a1;
    do
    {
      v28 = v27 + 616;
      v29 = *(v27 + 624);
      v30 = v5 > *(v27 + 744);
      v31 = *(&v46 + 1) == v29;
      v32 = *(&v46 + 1) < v29;
      if (v31)
      {
        v32 = v30;
      }

      v27 = v28;
    }

    while (!v32);
  }

  else
  {
    v33 = a1 + 616;
    do
    {
      v28 = v33;
      if (v33 >= a2)
      {
        break;
      }

      v34 = *(v33 + 8);
      v35 = v5 > *(v28 + 128);
      v31 = *(&v46 + 1) == v34;
      v36 = *(&v46 + 1) < v34;
      if (!v31)
      {
        v35 = v36;
      }

      v33 = v28 + 616;
    }

    while (!v35);
  }

  if (v28 < a2)
  {
    do
    {
      v37 = *(&v46 + 1) < *v25;
      if (*(&v46 + 1) == *v25)
      {
        v37 = v5 > *(v25 + 120);
      }

      v25 -= 616;
    }

    while (v37);
    a2 = v25 + 608;
  }

  while (v28 < a2)
  {
    sub_63D28C(v28, a2);
    do
    {
      v38 = *(v28 + 624);
      v39 = *(v28 + 744);
      v28 += 616;
      v40 = v56 > v39;
      v31 = *(&v46 + 1) == v38;
      v41 = *(&v46 + 1) < v38;
      if (v31)
      {
        v41 = v40;
      }
    }

    while (!v41);
    v42 = a2 - 608;
    do
    {
      v43 = *(&v46 + 1) < *v42;
      if (*(&v46 + 1) == *v42)
      {
        v43 = v56 > *(v42 + 120);
      }

      v42 -= 616;
    }

    while (v43);
    a2 = v42 + 608;
  }

  if ((v28 - 616) != a1)
  {
    sub_63A54C(a1, v28 - 616);
  }

  sub_63A54C(v28 - 616, &v46);
  sub_53A868(&v87);
  sub_53A868(&v72);
  sub_53A868(&v57);
  if (SHIBYTE(v54) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v51) & 0x80000000) == 0)
    {
LABEL_35:
      v44 = v48;
      if (v48 == -1)
      {
        return v28;
      }

      goto LABEL_39;
    }
  }

  else if ((SHIBYTE(v51) & 0x80000000) == 0)
  {
    goto LABEL_35;
  }

  operator delete(v50[0]);
  v44 = v48;
  if (v48 != -1)
  {
LABEL_39:
    (off_266BE00[v44])(&v102, v47);
  }

  return v28;
}

uint64_t sub_640624(__int128 *a1, uint64_t a2)
{
  v44 = *a1;
  v45[0] = 0;
  v46 = -1;
  v4 = *(a1 + 12);
  if (v4 != -1)
  {
    v100 = v45;
    (off_266BE50[v4])(&v100, a1 + 1);
    v46 = v4;
  }

  v5 = 0;
  v47 = *(a1 + 7);
  *v48 = a1[4];
  v49 = *(a1 + 10);
  *(a1 + 72) = 0u;
  *(a1 + 8) = 0;
  v50 = *(a1 + 88);
  *__p = a1[6];
  v52 = *(a1 + 14);
  *(a1 + 14) = 0;
  a1[6] = 0u;
  v53 = *(a1 + 120);
  v6 = *(a1 + 32);
  v54 = v6;
  v55 = *(a1 + 136);
  v56 = *(a1 + 19);
  *(a1 + 136) = 0u;
  *(a1 + 19) = 0;
  v57 = a1[10];
  v7 = *(a1 + 22);
  a1[10] = 0u;
  *(a1 + 22) = 0;
  v59 = *(a1 + 184);
  v8 = *(a1 + 25);
  v58 = v7;
  v60 = v8;
  *(a1 + 184) = 0u;
  *(a1 + 25) = 0;
  v61 = a1[13];
  a1[13] = 0u;
  v9 = *(a1 + 28);
  v10 = *(a1 + 29);
  *(a1 + 28) = 0;
  *(a1 + 29) = 0;
  v62 = v9;
  v63 = v10;
  LODWORD(v9) = *(a1 + 60);
  v65 = *(a1 + 122);
  v64 = v9;
  v11 = *(a1 + 248);
  v67 = *(a1 + 33);
  v66 = v11;
  *(a1 + 33) = 0;
  *(a1 + 248) = 0u;
  v68 = a1[17];
  a1[17] = 0u;
  v12 = *(a1 + 37);
  v69 = *(a1 + 36);
  v70 = v12;
  *(a1 + 36) = 0;
  *(a1 + 37) = 0;
  v13 = a1[20];
  v71 = a1[19];
  v72 = v13;
  a1[19] = 0u;
  a1[20] = 0u;
  v14 = *(a1 + 43);
  v73 = *(a1 + 42);
  v74 = v14;
  *(a1 + 42) = 0;
  *(a1 + 43) = 0;
  v15 = a1[23];
  v75 = a1[22];
  v76 = v15;
  a1[22] = 0u;
  a1[23] = 0u;
  v16 = *(a1 + 48);
  v17 = *(a1 + 49);
  *(a1 + 48) = 0;
  *(a1 + 49) = 0;
  v77 = v16;
  v78 = v17;
  LODWORD(v16) = *(a1 + 100);
  v80 = *(a1 + 202);
  v79 = v16;
  v81 = *(a1 + 408);
  v82 = *(a1 + 53);
  *(a1 + 53) = 0;
  *(a1 + 408) = 0u;
  v83 = a1[27];
  a1[27] = 0u;
  v18 = *(a1 + 57);
  v84 = *(a1 + 56);
  v85 = v18;
  *(a1 + 56) = 0;
  *(a1 + 57) = 0;
  v19 = a1[30];
  v86 = a1[29];
  v87 = v19;
  a1[29] = 0u;
  a1[30] = 0u;
  v20 = *(a1 + 63);
  v88 = *(a1 + 62);
  v89 = v20;
  *(a1 + 62) = 0;
  *(a1 + 63) = 0;
  v21 = a1[33];
  v90 = a1[32];
  v91 = v21;
  v92 = *(a1 + 68);
  a1[32] = 0u;
  a1[33] = 0u;
  *(a1 + 68) = 0;
  v22 = *(a1 + 69);
  *(a1 + 69) = 0;
  v93 = v22;
  LODWORD(v22) = *(a1 + 140);
  v95 = *(a1 + 282);
  v94 = v22;
  v96 = *(a1 + 568);
  v97 = *(a1 + 73);
  *(a1 + 73) = 0;
  *(a1 + 568) = 0u;
  v23 = a1[37];
  v99 = *(a1 + 76);
  v98 = v23;
  *(a1 + 76) = 0;
  a1[37] = 0u;
  do
  {
    v24 = *(a1 + v5 + 624);
    v25 = *(a1 + v5 + 744) > v6;
    v26 = v24 == *(&v44 + 1);
    v27 = v24 < *(&v44 + 1);
    if (!v26)
    {
      v25 = v27;
    }

    v5 += 616;
  }

  while (v25);
  v28 = a1 + v5;
  v29 = a1 + v5 - 616;
  if (v5 == 616)
  {
    v30 = a2 - 608;
    while (1)
    {
      v32 = v30 + 608;
      if (v28 >= v30 + 608)
      {
        break;
      }

      v33 = *v30 < *(&v44 + 1);
      if (*v30 == *(&v44 + 1))
      {
        v33 = *(v30 + 120) > v6;
      }

      v30 -= 616;
      if (v33)
      {
        goto LABEL_18;
      }
    }
  }

  else
  {
    v30 = a2 - 608;
    do
    {
      v31 = *v30 < *(&v44 + 1);
      if (*v30 == *(&v44 + 1))
      {
        v31 = *(v30 + 120) > v6;
      }

      v30 -= 616;
    }

    while (!v31);
LABEL_18:
    v32 = v30 + 608;
  }

  if (v28 < v32)
  {
    v34 = v28;
    v35 = v32;
    do
    {
      sub_63D28C(v34, v35);
      do
      {
        v36 = *(v34 + 624);
        v37 = *(v34 + 744);
        v34 += 616;
        v38 = v37 > v54;
        v26 = v36 == *(&v44 + 1);
        v39 = v36 < *(&v44 + 1);
        if (v26)
        {
          v39 = v38;
        }
      }

      while (v39);
      v40 = v35 - 608;
      do
      {
        v41 = *v40 < *(&v44 + 1);
        if (*v40 == *(&v44 + 1))
        {
          v41 = *(v40 + 120) > v54;
        }

        v40 -= 616;
      }

      while (!v41);
      v35 = v40 + 608;
    }

    while (v34 < v40 + 608);
    v29 = v34 - 616;
  }

  if (v29 != a1)
  {
    sub_63A54C(a1, v29);
  }

  sub_63A54C(v29, &v44);
  sub_53A868(&v85);
  sub_53A868(&v70);
  sub_53A868(&v55);
  if (SHIBYTE(v52) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v49) & 0x80000000) == 0)
    {
LABEL_35:
      v42 = v46;
      if (v46 == -1)
      {
        return v29;
      }

      goto LABEL_39;
    }
  }

  else if ((SHIBYTE(v49) & 0x80000000) == 0)
  {
    goto LABEL_35;
  }

  operator delete(v48[0]);
  v42 = v46;
  if (v46 != -1)
  {
LABEL_39:
    (off_266BE00[v42])(&v100, v45);
  }

  return v29;
}

BOOL sub_640A70(uint64_t a1, __int128 *a2)
{
  v4 = 0x4FCACE213F2B3885 * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        sub_63B63C(a1, a1 + 616, a2 - 616);
        return 1;
      case 4:
        sub_63B63C(a1, a1 + 616, a1 + 1232);
        v46 = *(a2 - 76);
        v47 = *(a1 + 1240);
        v7 = v46 == v47;
        v48 = v46 < v47;
        if (v7)
        {
          v48 = *(a2 - 122) > *(a1 + 1360);
        }

        if (!v48)
        {
          return 1;
        }

        sub_63D28C((a1 + 1232), a2 - 616);
        v49 = *(a1 + 1240);
        v50 = *(a1 + 624);
        v7 = v49 == v50;
        v51 = v49 < v50;
        if (v7)
        {
          v51 = *(a1 + 1360) > *(a1 + 744);
        }

        if (!v51)
        {
          return 1;
        }

        sub_63D28C((a1 + 616), a1 + 1232);
        v52 = *(a1 + 624);
        v53 = *(a1 + 8);
        v7 = v52 == v53;
        v54 = v52 < v53;
        if (v7)
        {
          v54 = *(a1 + 744) > *(a1 + 128);
        }

        if (!v54)
        {
          return 1;
        }

        v9 = a1 + 616;
LABEL_8:
        sub_63D28C(a1, v9);
        return 1;
      case 5:
        sub_63B750(a1, a1 + 616, a1 + 1232, a1 + 1848, a2 - 616);
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = *(a2 - 76);
      v6 = *(a1 + 8);
      v7 = v5 == v6;
      v8 = v5 < v6;
      if (v7)
      {
        v8 = *(a2 - 122) > *(a1 + 128);
      }

      if (!v8)
      {
        return 1;
      }

      v9 = a2 - 616;
      goto LABEL_8;
    }
  }

  v10 = (a1 + 1232);
  sub_63B63C(a1, a1 + 616, a1 + 1232);
  v11 = (a1 + 1848);
  if ((a1 + 1848) == a2)
  {
    return 1;
  }

  v12 = 0;
  v13 = 0;
  while (1)
  {
    v14 = *(v11 + 1);
    v15 = *(v10 + 1);
    v16 = *(v11 + 32);
    v7 = v14 == v15;
    v17 = v14 < v15;
    if (v7)
    {
      v17 = v16 > *(v10 + 32);
    }

    if (!v17)
    {
      goto LABEL_17;
    }

    v56 = *v11;
    v57[0] = 0;
    v58 = -1;
    v18 = *(v11 + 12);
    if (v18 != -1)
    {
      v112[0] = v57;
      (off_266BE50[v18])(v112, v11 + 1);
      v58 = v18;
      v16 = *(v11 + 32);
    }

    v59 = *(v11 + 7);
    v60 = v11[4];
    v61 = *(v11 + 10);
    *(v11 + 72) = 0u;
    *(v11 + 8) = 0;
    v62 = *(v11 + 88);
    __p = v11[6];
    v64 = *(v11 + 14);
    *(v11 + 14) = 0;
    v11[6] = 0u;
    v65 = *(v11 + 120);
    v66 = v16;
    v67 = *(v11 + 136);
    v68 = *(v11 + 19);
    *(v11 + 136) = 0u;
    *(v11 + 19) = 0;
    v69 = v11[10];
    v19 = *(v11 + 22);
    v11[10] = 0u;
    *(v11 + 22) = 0;
    v71 = *(v11 + 184);
    v20 = *(v11 + 25);
    v70 = v19;
    v72 = v20;
    *(v11 + 184) = 0u;
    *(v11 + 25) = 0;
    v73 = v11[13];
    v11[13] = 0u;
    v21 = *(v11 + 28);
    v22 = *(v11 + 29);
    *(v11 + 28) = 0;
    *(v11 + 29) = 0;
    v74 = v21;
    v75 = v22;
    LODWORD(v21) = *(v11 + 60);
    v77 = *(v11 + 122);
    v76 = v21;
    v23 = *(v11 + 248);
    v79 = *(v11 + 33);
    v78 = v23;
    *(v11 + 33) = 0;
    *(v11 + 248) = 0u;
    v24 = v11[17];
    v25 = *(v11 + 37);
    v81 = *(v11 + 36);
    v80 = v24;
    v11[17] = 0u;
    v82 = v25;
    *(v11 + 36) = 0;
    *(v11 + 37) = 0;
    v26 = v11[20];
    v83 = v11[19];
    v84 = v26;
    v11[19] = 0u;
    v11[20] = 0u;
    v27 = *(v11 + 43);
    v85 = *(v11 + 42);
    v86 = v27;
    *(v11 + 42) = 0;
    *(v11 + 43) = 0;
    v28 = v11[23];
    v87 = v11[22];
    v88 = v28;
    v11[22] = 0u;
    v11[23] = 0u;
    v29 = *(v11 + 48);
    v30 = *(v11 + 49);
    *(v11 + 48) = 0;
    *(v11 + 49) = 0;
    v89 = v29;
    v90 = v30;
    LODWORD(v29) = *(v11 + 100);
    v92 = *(v11 + 202);
    v91 = v29;
    v31 = *(v11 + 408);
    v94 = *(v11 + 53);
    v93 = v31;
    *(v11 + 53) = 0;
    *(v11 + 408) = 0u;
    v32 = v11[27];
    v33 = *(v11 + 57);
    v96 = *(v11 + 56);
    v95 = v32;
    v11[27] = 0u;
    v97 = v33;
    *(v11 + 56) = 0;
    *(v11 + 57) = 0;
    v34 = v11[30];
    v98 = v11[29];
    v99 = v34;
    v11[29] = 0u;
    v11[30] = 0u;
    v35 = *(v11 + 63);
    v100 = *(v11 + 62);
    v101 = v35;
    *(v11 + 62) = 0;
    *(v11 + 63) = 0;
    v36 = v11[33];
    v102 = v11[32];
    v103 = v36;
    v104 = *(v11 + 68);
    v11[32] = 0u;
    v11[33] = 0u;
    *(v11 + 68) = 0;
    v37 = *(v11 + 69);
    *(v11 + 69) = 0;
    v105 = v37;
    LODWORD(v37) = *(v11 + 140);
    v107 = *(v11 + 282);
    v106 = v37;
    v38 = *(v11 + 568);
    v109 = *(v11 + 73);
    v108 = v38;
    *(v11 + 73) = 0;
    *(v11 + 568) = 0u;
    v39 = v11[37];
    v111 = *(v11 + 76);
    v110 = v39;
    *(v11 + 76) = 0;
    v40 = v12;
    v11[37] = 0u;
    while (1)
    {
      v41 = a1 + v40;
      sub_63A54C(a1 + v40 + 1848, a1 + v40 + 1232);
      if (v40 == -1232)
      {
        break;
      }

      v42 = *(v41 + 624);
      v43 = *(&v56 + 1) < v42;
      if (*(&v56 + 1) == v42)
      {
        v43 = v66 > *(v41 + 744);
      }

      v40 -= 616;
      if (!v43)
      {
        v44 = a1 + v40 + 1848;
        goto LABEL_30;
      }
    }

    v44 = a1;
LABEL_30:
    sub_63A54C(v44, &v56);
    sub_53A868(&v97);
    sub_53A868(&v82);
    sub_53A868(&v67);
    if (SHIBYTE(v64) < 0)
    {
      operator delete(__p);
      if (SHIBYTE(v61) < 0)
      {
LABEL_35:
        operator delete(v60);
        v45 = v58;
        if (v58 == -1)
        {
          goto LABEL_16;
        }

LABEL_36:
        (off_266BE00[v45])(v112, v57);
        goto LABEL_16;
      }
    }

    else if (SHIBYTE(v61) < 0)
    {
      goto LABEL_35;
    }

    v45 = v58;
    if (v58 != -1)
    {
      goto LABEL_36;
    }

LABEL_16:
    if (++v13 == 8)
    {
      return (v11 + 616) == a2;
    }

LABEL_17:
    v10 = v11;
    v12 += 616;
    v11 = (v11 + 616);
    if (v11 == a2)
    {
      return 1;
    }
  }
}

void sub_64101C(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= 0x4FCACE213F2B3885 * ((a4 - a1) >> 3))
    {
      v9 = (0x9F959C427E56710ALL * ((a4 - a1) >> 3)) | 1;
      v10 = a1 + 616 * v9;
      if ((0x9F959C427E56710ALL * ((a4 - a1) >> 3) + 2) < a3)
      {
        v11 = *(v10 + 8);
        v12 = *(v10 + 624);
        v14 = v11 == v12;
        v13 = v11 < v12;
        if (v14)
        {
          v13 = *(v10 + 128) > *(v10 + 744);
        }

        v14 = !v13;
        v15 = 616;
        if (v14)
        {
          v15 = 0;
        }

        v10 += v15;
        if (!v14)
        {
          v9 = 0x9F959C427E56710ALL * ((a4 - a1) >> 3) + 2;
        }
      }

      v16 = *(v10 + 8);
      v17 = *(a4 + 1);
      v18 = *(a4 + 32);
      v14 = v16 == v17;
      v19 = v16 < v17;
      if (v14)
      {
        v19 = *(v10 + 128) > v18;
      }

      if (!v19)
      {
        v50 = *a4;
        v51[0] = 0;
        v52 = -1;
        v20 = *(a4 + 12);
        if (v20 != -1)
        {
          v106[0] = v51;
          (off_266BE50[v20])(v106, a4 + 1);
          v52 = v20;
          v18 = *(v5 + 128);
        }

        v53 = *(v5 + 56);
        *v54 = *(v5 + 64);
        v55 = *(v5 + 80);
        *(v5 + 72) = 0u;
        *(v5 + 64) = 0;
        v56 = *(v5 + 88);
        *__p = *(v5 + 96);
        v58 = *(v5 + 112);
        *(v5 + 112) = 0;
        *(v5 + 96) = 0u;
        v59 = *(v5 + 120);
        v60 = v18;
        v61 = *(v5 + 136);
        v62 = *(v5 + 152);
        *(v5 + 136) = 0u;
        *(v5 + 152) = 0;
        v63 = *(v5 + 160);
        v21 = *(v5 + 176);
        *(v5 + 160) = 0u;
        *(v5 + 176) = 0;
        v65 = *(v5 + 184);
        v22 = *(v5 + 200);
        v64 = v21;
        v66 = v22;
        *(v5 + 184) = 0u;
        *(v5 + 200) = 0;
        v67 = *(v5 + 208);
        *(v5 + 208) = 0u;
        v23 = *(v5 + 224);
        v24 = *(v5 + 232);
        *(v5 + 224) = 0;
        *(v5 + 232) = 0;
        v68 = v23;
        v69 = v24;
        LODWORD(v23) = *(v5 + 240);
        v71 = *(v5 + 244);
        v70 = v23;
        v25 = *(v5 + 248);
        v73 = *(v5 + 264);
        v72 = v25;
        *(v5 + 264) = 0;
        *(v5 + 248) = 0u;
        v74 = *(v5 + 272);
        *(v5 + 272) = 0u;
        v26 = *(v5 + 296);
        v75 = *(v5 + 288);
        v76 = v26;
        *(v5 + 288) = 0;
        *(v5 + 296) = 0;
        v27 = *(v5 + 320);
        v77 = *(v5 + 304);
        v78 = v27;
        *(v5 + 304) = 0u;
        *(v5 + 320) = 0u;
        v28 = *(v5 + 344);
        v79 = *(v5 + 336);
        v80 = v28;
        *(v5 + 336) = 0;
        *(v5 + 344) = 0;
        v29 = *(v5 + 368);
        v81 = *(v5 + 352);
        v82 = v29;
        *(v5 + 352) = 0u;
        *(v5 + 368) = 0u;
        v30 = *(v5 + 384);
        v31 = *(v5 + 392);
        *(v5 + 384) = 0;
        *(v5 + 392) = 0;
        v83 = v30;
        v84 = v31;
        LODWORD(v30) = *(v5 + 400);
        v86 = *(v5 + 404);
        v85 = v30;
        v32 = *(v5 + 424);
        v87 = *(v5 + 408);
        v88 = v32;
        *(v5 + 424) = 0;
        *(v5 + 408) = 0u;
        v89 = *(v5 + 432);
        *(v5 + 432) = 0u;
        v33 = *(v5 + 456);
        v90 = *(v5 + 448);
        v91 = v33;
        *(v5 + 448) = 0;
        *(v5 + 456) = 0;
        v34 = *(v5 + 480);
        v92 = *(v5 + 464);
        v93 = v34;
        *(v5 + 464) = 0u;
        *(v5 + 480) = 0u;
        v35 = *(v5 + 504);
        v94 = *(v5 + 496);
        v95 = v35;
        *(v5 + 496) = 0;
        *(v5 + 504) = 0;
        v36 = *(v5 + 528);
        v96 = *(v5 + 512);
        v97 = v36;
        v98 = *(v5 + 544);
        *(v5 + 512) = 0u;
        *(v5 + 528) = 0u;
        *(v5 + 544) = 0;
        v37 = *(v5 + 552);
        *(v5 + 552) = 0;
        v99 = v37;
        LODWORD(v37) = *(v5 + 560);
        v101 = *(v5 + 564);
        v100 = v37;
        v38 = *(v5 + 584);
        v102 = *(v5 + 568);
        v103 = v38;
        *(v5 + 584) = 0;
        *(v5 + 568) = 0u;
        v39 = *(v5 + 592);
        v105 = *(v5 + 608);
        v104 = v39;
        *(v5 + 608) = 0;
        *(v5 + 592) = 0u;
        do
        {
          v42 = v10;
          sub_63A54C(v5, v10);
          if (v7 < v9)
          {
            break;
          }

          v43 = (2 * v9) | 1;
          v10 = a1 + 616 * v43;
          if (2 * v9 + 2 < a3)
          {
            v44 = *(v10 + 8);
            v45 = *(v10 + 624);
            v14 = v44 == v45;
            v46 = v44 < v45;
            if (v14)
            {
              v46 = *(v10 + 128) > *(v10 + 744);
            }

            v47 = !v46;
            if (v46)
            {
              v48 = 616;
            }

            else
            {
              v48 = 0;
            }

            v10 += v48;
            if (!v47)
            {
              v43 = 2 * v9 + 2;
            }
          }

          v40 = *(v10 + 8);
          v14 = v40 == *(&v50 + 1);
          v41 = v40 < *(&v50 + 1);
          if (v14)
          {
            v41 = *(v10 + 128) > v60;
          }

          v5 = v42;
          v9 = v43;
        }

        while (!v41);
        sub_63A54C(v42, &v50);
        sub_53A868(&v91);
        sub_53A868(&v76);
        sub_53A868(&v61);
        if (SHIBYTE(v58) < 0)
        {
          operator delete(__p[0]);
          if ((SHIBYTE(v55) & 0x80000000) == 0)
          {
LABEL_32:
            v49 = v52;
            if (v52 == -1)
            {
              return;
            }

LABEL_36:
            (off_266BE00[v49])(v106, v51);
            return;
          }
        }

        else if ((SHIBYTE(v55) & 0x80000000) == 0)
        {
          goto LABEL_32;
        }

        operator delete(v54[0]);
        v49 = v52;
        if (v52 == -1)
        {
          return;
        }

        goto LABEL_36;
      }
    }
  }
}

void sub_641488(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v38 = *a1;
    v39[0] = 0;
    v40 = -1;
    v9 = *(a1 + 12);
    if (v9 != -1)
    {
      v94[0] = v39;
      (off_266BE50[v9])(v94, a1 + 1);
      v40 = v9;
    }

    v10 = 0;
    v41 = *(a1 + 7);
    *v42 = a1[4];
    v43 = *(a1 + 10);
    *(a1 + 72) = 0u;
    *(a1 + 8) = 0;
    v44 = *(a1 + 88);
    *__p = a1[6];
    v46 = *(a1 + 14);
    *(a1 + 14) = 0;
    a1[6] = 0u;
    v47 = *(a1 + 120);
    v48 = *(a1 + 32);
    v49 = *(a1 + 136);
    v50 = *(a1 + 19);
    *(a1 + 136) = 0u;
    *(a1 + 19) = 0;
    v51 = a1[10];
    v11 = *(a1 + 22);
    a1[10] = 0u;
    *(a1 + 22) = 0;
    v53 = *(a1 + 184);
    v12 = *(a1 + 25);
    v52 = v11;
    v54 = v12;
    *(a1 + 184) = 0u;
    *(a1 + 25) = 0;
    v55 = a1[13];
    a1[13] = 0u;
    v13 = *(a1 + 28);
    v14 = *(a1 + 29);
    *(a1 + 28) = 0;
    *(a1 + 29) = 0;
    v56 = v13;
    v57 = v14;
    v59 = *(a1 + 122);
    v58 = *(a1 + 60);
    v15 = *(a1 + 248);
    v61 = *(a1 + 33);
    v60 = v15;
    *(a1 + 33) = 0;
    *(a1 + 248) = 0u;
    v62 = a1[17];
    a1[17] = 0u;
    v16 = *(a1 + 37);
    v63 = *(a1 + 36);
    v64 = v16;
    *(a1 + 36) = 0;
    *(a1 + 37) = 0;
    v17 = a1[20];
    v65 = a1[19];
    v66 = v17;
    a1[19] = 0u;
    a1[20] = 0u;
    v18 = *(a1 + 43);
    v67 = *(a1 + 42);
    v68 = v18;
    *(a1 + 42) = 0;
    *(a1 + 43) = 0;
    v19 = a1[23];
    v69 = a1[22];
    v70 = v19;
    a1[22] = 0u;
    a1[23] = 0u;
    v20 = *(a1 + 48);
    v21 = *(a1 + 49);
    *(a1 + 48) = 0;
    *(a1 + 49) = 0;
    v71 = v20;
    v72 = v21;
    LODWORD(v20) = *(a1 + 100);
    v74 = *(a1 + 202);
    v73 = v20;
    v75 = *(a1 + 408);
    v76 = *(a1 + 53);
    *(a1 + 53) = 0;
    *(a1 + 408) = 0u;
    v77 = a1[27];
    a1[27] = 0u;
    v22 = *(a1 + 57);
    v78 = *(a1 + 56);
    v79 = v22;
    *(a1 + 56) = 0;
    *(a1 + 57) = 0;
    v23 = a1[30];
    v80 = a1[29];
    v81 = v23;
    a1[29] = 0u;
    a1[30] = 0u;
    v24 = *(a1 + 63);
    v82 = *(a1 + 62);
    v83 = v24;
    *(a1 + 62) = 0;
    *(a1 + 63) = 0;
    v25 = a1[33];
    v84 = a1[32];
    v85 = v25;
    v86 = *(a1 + 68);
    a1[32] = 0u;
    a1[33] = 0u;
    *(a1 + 68) = 0;
    v26 = *(a1 + 69);
    *(a1 + 69) = 0;
    v87 = v26;
    LODWORD(v26) = *(a1 + 140);
    v89 = *(a1 + 282);
    v88 = v26;
    v90 = *(a1 + 568);
    v91 = *(a1 + 73);
    *(a1 + 73) = 0;
    *(a1 + 568) = 0u;
    v27 = a1[37];
    v93 = *(a1 + 76);
    v92 = v27;
    *(a1 + 76) = 0;
    v28 = v4 >> 1;
    v29 = a1;
    a1[37] = 0u;
    do
    {
      while (1)
      {
        v36 = v29 + 616 * v10;
        v35 = v36 + 616;
        if (2 * v10 + 2 < a4)
        {
          break;
        }

        v10 = (2 * v10) | 1;
        sub_63A54C(v29, v36 + 616);
        v29 = v35;
        if (v10 > v28)
        {
          goto LABEL_13;
        }
      }

      v30 = *(v36 + 624);
      v31 = *(v36 + 1240);
      v32 = v30 == v31;
      v33 = v30 < v31;
      if (v32)
      {
        v33 = *(v36 + 744) > *(v36 + 1360);
      }

      v34 = v36 + 1232;
      if (v33)
      {
        v35 = v34;
        v10 = 2 * v10 + 2;
      }

      else
      {
        v10 = (2 * v10) | 1;
      }

      sub_63A54C(v29, v35);
      v29 = v35;
    }

    while (v10 <= v28);
LABEL_13:
    if (v35 == a2 - 616)
    {
      sub_63A54C(v35, &v38);
    }

    else
    {
      sub_63A54C(v35, a2 - 616);
      sub_63A54C(a2 - 616, &v38);
      sub_6418A8(a1, v35 + 616, a3, 0x4FCACE213F2B3885 * ((v35 + 616 - a1) >> 3));
    }

    sub_53A868(&v79);
    sub_53A868(&v64);
    sub_53A868(&v49);
    if (SHIBYTE(v46) < 0)
    {
      operator delete(__p[0]);
      if ((SHIBYTE(v43) & 0x80000000) == 0)
      {
LABEL_18:
        v37 = v40;
        if (v40 == -1)
        {
          return;
        }

LABEL_22:
        (off_266BE00[v37])(v94, v39);
        return;
      }
    }

    else if ((SHIBYTE(v43) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    operator delete(v42[0]);
    v37 = v40;
    if (v40 == -1)
    {
      return;
    }

    goto LABEL_22;
  }
}

void sub_6418A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v6 = v4 >> 1;
    v7 = a1 + 616 * (v4 >> 1);
    v8 = *(v7 + 8);
    v9 = *(a2 - 608);
    v10 = (a2 - 488);
    v11 = *(a2 - 488);
    v12 = v8 == v9;
    v13 = v8 < v9;
    if (v12)
    {
      v13 = *(v7 + 128) > v11;
    }

    if (v13)
    {
      v14 = a2 - 616;
      v51 = *(a2 - 616);
      v52[0] = 0;
      v53 = -1;
      v15 = *(a2 - 568);
      if (v15 != -1)
      {
        v16 = a2 - 616;
        v17 = a2;
        v107 = v52;
        (off_266BE50[v15])(&v107, a2 - 600, a3);
        v53 = v15;
        v11 = *v10;
        a2 = v17;
        v14 = v16;
      }

      v54 = *(a2 - 560);
      v18 = a2 - 552;
      *v55 = *(a2 - 552);
      v56 = *(a2 - 536);
      *(v18 + 8) = 0u;
      *v18 = 0;
      v57 = *(a2 - 528);
      v19 = a2 - 520;
      *__p = *(a2 - 520);
      v59 = *(a2 - 504);
      *(v19 + 16) = 0;
      *v19 = 0u;
      v60 = *(a2 - 496);
      v61 = v11;
      v20 = (a2 - 480);
      v62 = *(a2 - 480);
      v63 = *(a2 - 464);
      *(a2 - 472) = 0;
      *v20 = 0;
      v20[2] = 0;
      v21 = (a2 - 456);
      v64 = *(a2 - 456);
      v22 = *(a2 - 440);
      *(a2 - 448) = 0;
      *v21 = 0;
      v21[2] = 0;
      v23 = (a2 - 432);
      v66 = *(a2 - 432);
      v24 = *(a2 - 416);
      v65 = v22;
      v67 = v24;
      *(a2 - 424) = 0;
      *v23 = 0;
      v23[2] = 0;
      v25 = (a2 - 408);
      v68 = *(a2 - 408);
      v26 = *(a2 - 392);
      *(a2 - 400) = 0;
      *v25 = 0;
      v25[2] = 0;
      v27 = *(a2 - 384);
      *(a2 - 384) = 0;
      v69 = v26;
      v70 = v27;
      LODWORD(v26) = *(a2 - 376);
      v72 = *(a2 - 372);
      v71 = v26;
      v28 = (a2 - 368);
      v29 = *(a2 - 368);
      v74 = *(a2 - 352);
      v73 = v29;
      *(a2 - 360) = 0;
      *v28 = 0;
      v28[2] = 0;
      v30 = (a2 - 344);
      v31 = *(a2 - 328);
      v75 = *(a2 - 344);
      *(a2 - 336) = 0;
      *v30 = 0;
      v30[2] = 0;
      v32 = (a2 - 320);
      v77 = *(a2 - 320);
      v33 = *(a2 - 304);
      v76 = v31;
      v78 = v33;
      *(a2 - 312) = 0;
      *v32 = 0;
      v32[2] = 0;
      v34 = (a2 - 296);
      v79 = *(a2 - 296);
      v35 = *(a2 - 280);
      *(a2 - 288) = 0;
      *v34 = 0;
      v34[2] = 0;
      v81 = *(a2 - 272);
      v36 = *(a2 - 256);
      v80 = v35;
      v82 = v36;
      *(a2 - 264) = 0;
      *(a2 - 272) = 0;
      v83 = *(a2 - 248);
      *(a2 - 256) = 0;
      *(a2 - 248) = 0;
      v37 = *(a2 - 232);
      v38 = *(a2 - 224);
      *(a2 - 240) = 0;
      *(a2 - 232) = 0;
      *(a2 - 224) = 0;
      v84 = v37;
      v85 = v38;
      LODWORD(v37) = *(a2 - 216);
      v87 = *(a2 - 212);
      v86 = v37;
      v39 = *(a2 - 192);
      v88 = *(a2 - 208);
      v89 = v39;
      *(a2 - 208) = 0;
      *(a2 - 200) = 0;
      v40 = *(a2 - 168);
      v90 = *(a2 - 184);
      *(a2 - 192) = 0;
      *(a2 - 184) = 0;
      *(a2 - 176) = 0;
      *(a2 - 168) = 0;
      v92 = *(a2 - 160);
      v41 = *(a2 - 144);
      v91 = v40;
      v93 = v41;
      *(a2 - 160) = 0;
      *(a2 - 152) = 0;
      v94 = *(a2 - 136);
      v42 = *(a2 - 120);
      *(a2 - 144) = 0;
      *(a2 - 136) = 0;
      *(a2 - 128) = 0;
      *(a2 - 120) = 0;
      v96 = *(a2 - 112);
      v43 = *(a2 - 96);
      v95 = v42;
      v97 = v43;
      *(a2 - 112) = 0;
      *(a2 - 104) = 0;
      v98 = *(a2 - 88);
      v44 = *(a2 - 64);
      v99 = *(a2 - 72);
      *(a2 - 96) = 0;
      *(a2 - 88) = 0;
      *(a2 - 80) = 0;
      *(a2 - 72) = 0;
      *(a2 - 64) = 0;
      v100 = v44;
      LODWORD(v42) = *(a2 - 56);
      v102 = *(a2 - 52);
      v101 = v42;
      v45 = *(a2 - 32);
      v103 = *(a2 - 48);
      v104 = v45;
      *(a2 - 48) = 0;
      *(a2 - 40) = 0;
      v46 = *(a2 - 24);
      v106 = *(a2 - 8);
      v105 = v46;
      *(a2 - 32) = 0;
      *(a2 - 24) = 0;
      *(a2 - 16) = 0;
      *(a2 - 8) = 0;
      do
      {
        v47 = v7;
        sub_63A54C(v14, v7);
        if (!v6)
        {
          break;
        }

        v6 = (v6 - 1) >> 1;
        v7 = a1 + 616 * v6;
        v48 = *(v7 + 8);
        v12 = v48 == *(&v51 + 1);
        v49 = v48 < *(&v51 + 1);
        if (v12)
        {
          v49 = *(v7 + 128) > v61;
        }

        v14 = v47;
      }

      while (v49);
      sub_63A54C(v47, &v51);
      sub_53A868(&v92);
      sub_53A868(&v77);
      sub_53A868(&v62);
      if (SHIBYTE(v59) < 0)
      {
        operator delete(__p[0]);
        if ((SHIBYTE(v56) & 0x80000000) == 0)
        {
LABEL_14:
          v50 = v53;
          if (v53 == -1)
          {
            return;
          }

LABEL_18:
          (off_266BE00[v50])(&v107, v52);
          return;
        }
      }

      else if ((SHIBYTE(v56) & 0x80000000) == 0)
      {
        goto LABEL_14;
      }

      operator delete(v55[0]);
      v50 = v53;
      if (v53 == -1)
      {
        return;
      }

      goto LABEL_18;
    }
  }
}

void sub_641D54(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, std::string *a5@<X5>, uint64_t a6@<X8>, uint64_t a7@<X4>)
{
  v12 = sub_4D1F50(a3, a4);
  sub_6317D0(*(v12 + 32) & 0xFFFFFFFFFFFFFFLL, a1[16], v51);
  if (a2 == 15)
  {
    sub_734CE0(v41);
  }

  else
  {
    sub_63199C(v12, v41, a1, a7);
  }

  v13 = sub_734C10(v51);
  sub_734C10(v41);
  if (a2 == 21 || a2 == 15)
  {
    sub_6390F8(a2, v13, &__p);
  }

  else
  {
    memset(&__p, 0, sizeof(__p));
  }

  sub_63E914(a5, &__p);
  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    sub_64B998(a6);
    goto LABEL_61;
  }

  v15 = sub_9274F4(a1[17], &__p);
  if (*(v15 + 23) < 0)
  {
    sub_325C(&v39, *v15, v15[1]);
  }

  else
  {
    v16 = *v15;
    v39.__r_.__value_.__r.__words[2] = v15[2];
    *&v39.__r_.__value_.__l.__data_ = v16;
  }

  if (sub_734C10(v51))
  {
    switch(a2)
    {
      case 0xF:
        v38 = 0x700000000000000;
        v18 = "{Ferry}";
        break;
      case 0x15:
        v38 = 0x600000000000000;
        *__c = *"{Road}";
        v17 = 6;
        goto LABEL_24;
      case 0x14:
        *__c = *"{Elevator}";
        v38 = 0xA00000000000000;
        v17 = 10;
        goto LABEL_24;
      default:
        v38 = 0x700000000000000;
        v18 = "{Road1}";
        break;
    }

    *__c = *v18;
    v17 = 7;
LABEL_24:
    v19 = HIBYTE(v39.__r_.__value_.__r.__words[2]);
    if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v20 = &v39;
    }

    else
    {
      v20 = v39.__r_.__value_.__r.__words[0];
    }

    if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v19 = v39.__r_.__value_.__l.__size_;
    }

    if (v19 >= v17)
    {
      v27 = v20 + v19;
      v28 = SLOBYTE(__c[0]);
      v29 = v20;
      do
      {
        v30 = v19 - v17;
        if (v30 == -1)
        {
          break;
        }

        v31 = memchr(v29, v28, v30 + 1);
        if (!v31)
        {
          break;
        }

        v32 = v31;
        if (!memcmp(v31, __c, v17))
        {
          if (v32 != v27 && v32 - v20 != -1)
          {
            v35 = (v52 & 0x80u) == 0 ? v51 : v51[0];
            v36 = (v52 & 0x80u) == 0 ? v52 : v51[1];
            std::string::replace(&v39, v32 - v20, v17, v35, v36);
            if (SHIBYTE(v38) < 0)
            {
              operator delete(*__c);
            }
          }

          break;
        }

        v29 = (v32 + 1);
        v19 = v27 - (v32 + 1);
      }

      while (v19 >= v17);
    }
  }

  if (sub_734C10(v41))
  {
    v21 = HIBYTE(v39.__r_.__value_.__r.__words[2]);
    if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v22 = &v39;
    }

    else
    {
      v22 = v39.__r_.__value_.__r.__words[0];
    }

    if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v21 = v39.__r_.__value_.__l.__size_;
    }

    if (v21 >= 7)
    {
      v23 = v22 + v21;
      v24 = v22;
      do
      {
        v25 = memchr(v24, 123, v21 - 6);
        if (!v25)
        {
          break;
        }

        if (*v25 == 1634685563 && *(v25 + 3) == 2100454497)
        {
          if (v25 != v23 && v25 - v22 != -1)
          {
            if ((v42 & 0x80u) == 0)
            {
              v33 = v41;
            }

            else
            {
              v33 = v41[0];
            }

            if ((v42 & 0x80u) == 0)
            {
              v34 = v42;
            }

            else
            {
              v34 = v41[1];
            }

            std::string::replace(&v39, v25 - v22, 7uLL, v33, v34);
          }

          break;
        }

        v24 = (v25 + 1);
        v21 = v23 - v24;
      }

      while (v23 - v24 >= 7);
    }
  }

  sub_64BC50(a6, &v39, (a1[15] + 1177));
  if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_61:
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_74;
  }

  operator delete(v39.__r_.__value_.__l.__data_);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_62:
    if ((v50 & 0x80000000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_75;
  }

LABEL_74:
  operator delete(__p.__r_.__value_.__l.__data_);
  if ((v50 & 0x80000000) == 0)
  {
LABEL_63:
    if ((v48 & 0x80000000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_76;
  }

LABEL_75:
  operator delete(v49);
  if ((v48 & 0x80000000) == 0)
  {
LABEL_64:
    if ((v46 & 0x80000000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_77;
  }

LABEL_76:
  operator delete(v47);
  if ((v46 & 0x80000000) == 0)
  {
LABEL_65:
    if ((v44 & 0x80000000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_78;
  }

LABEL_77:
  operator delete(v45);
  if ((v44 & 0x80000000) == 0)
  {
LABEL_66:
    if ((v42 & 0x80000000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_79;
  }

LABEL_78:
  operator delete(v43);
  if ((v42 & 0x80000000) == 0)
  {
LABEL_67:
    if ((v60 & 0x80000000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_80;
  }

LABEL_79:
  operator delete(v41[0]);
  if ((v60 & 0x80000000) == 0)
  {
LABEL_68:
    if ((v58 & 0x80000000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_81;
  }

LABEL_80:
  operator delete(v59);
  if ((v58 & 0x80000000) == 0)
  {
LABEL_69:
    if ((v56 & 0x80000000) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_82;
  }

LABEL_81:
  operator delete(v57);
  if ((v56 & 0x80000000) == 0)
  {
LABEL_70:
    if ((v54 & 0x80000000) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_83;
  }

LABEL_82:
  operator delete(v55);
  if ((v54 & 0x80000000) == 0)
  {
LABEL_71:
    if ((v52 & 0x80000000) == 0)
    {
      return;
    }

LABEL_84:
    operator delete(v51[0]);
    return;
  }

LABEL_83:
  operator delete(v53);
  if (v52 < 0)
  {
    goto LABEL_84;
  }
}

void sub_6421DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a27 & 0x80000000) == 0)
      {
LABEL_8:
        sub_3E5388(&a28);
        sub_3E5388(v28 - 216);
        _Unwind_Resume(a1);
      }

LABEL_7:
      operator delete(a22);
      sub_3E5388(&a28);
      sub_3E5388(v28 - 216);
      _Unwind_Resume(a1);
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a16);
  if ((a27 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

uint64_t sub_642290(uint64_t result, uint64_t a2)
{
  if (*(*result + 1) == 1 && **result == 21)
  {
    operator new();
  }

  return result;
}

void sub_642380(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_64239C(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_4D1F50(a4, a5);
  sub_6317D0(*(v10 + 32) & 0xFFFFFFFFFFFFFFLL, a2[16], v48);
  if (a3 == 15)
  {
    sub_734CE0(v38);
  }

  else
  {
    sub_63199C(v10, v38, a2, a6);
  }

  v11 = sub_734C10(v48);
  sub_734C10(v38);
  if (a3 != 21 && a3 != 15)
  {
    memset(&__p, 0, sizeof(__p));
LABEL_12:
    sub_64B998(a1);
    goto LABEL_55;
  }

  sub_6390F8(a3, v11, &__p);
  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    goto LABEL_12;
  }

  v13 = sub_9274F4(a2[17], &__p);
  if (*(v13 + 23) < 0)
  {
    sub_325C(&v36, *v13, v13[1]);
  }

  else
  {
    v14 = *v13;
    v36.__r_.__value_.__r.__words[2] = v13[2];
    *&v36.__r_.__value_.__l.__data_ = v14;
  }

  if (sub_734C10(v48))
  {
    if (a3 == 15)
    {
      v35 = 0x700000000000000;
      *__c = *"{Ferry}";
      v15 = 7;
    }

    else
    {
      v35 = 0x600000000000000;
      *__c = *"{Road}";
      v15 = 6;
    }

    v16 = HIBYTE(v36.__r_.__value_.__r.__words[2]);
    if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v17 = &v36;
    }

    else
    {
      v17 = v36.__r_.__value_.__r.__words[0];
    }

    if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v16 = v36.__r_.__value_.__l.__size_;
    }

    if (v16 >= v15)
    {
      v24 = v17 + v16;
      v25 = SLOBYTE(__c[0]);
      v26 = v17;
      do
      {
        v27 = v16 - v15;
        if (v27 == -1)
        {
          break;
        }

        v28 = memchr(v26, v25, v27 + 1);
        if (!v28)
        {
          break;
        }

        v29 = v28;
        if (!memcmp(v28, __c, v15))
        {
          if (v29 != v24 && v29 - v17 != -1)
          {
            v32 = (v49 & 0x80u) == 0 ? v48 : v48[0];
            v33 = (v49 & 0x80u) == 0 ? v49 : v48[1];
            std::string::replace(&v36, v29 - v17, v15, v32, v33);
            if (SHIBYTE(v35) < 0)
            {
              operator delete(*__c);
            }
          }

          break;
        }

        v26 = (v29 + 1);
        v16 = v24 - (v29 + 1);
      }

      while (v16 >= v15);
    }
  }

  if (sub_734C10(v38))
  {
    v18 = HIBYTE(v36.__r_.__value_.__r.__words[2]);
    if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v19 = &v36;
    }

    else
    {
      v19 = v36.__r_.__value_.__r.__words[0];
    }

    if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v18 = v36.__r_.__value_.__l.__size_;
    }

    if (v18 >= 7)
    {
      v20 = v19 + v18;
      v21 = v19;
      do
      {
        v22 = memchr(v21, 123, v18 - 6);
        if (!v22)
        {
          break;
        }

        if (*v22 == 1634685563 && *(v22 + 3) == 2100454497)
        {
          if (v22 != v20 && v22 - v19 != -1)
          {
            if ((v39 & 0x80u) == 0)
            {
              v30 = v38;
            }

            else
            {
              v30 = v38[0];
            }

            if ((v39 & 0x80u) == 0)
            {
              v31 = v39;
            }

            else
            {
              v31 = v38[1];
            }

            std::string::replace(&v36, v22 - v19, 7uLL, v30, v31);
          }

          break;
        }

        v21 = (v22 + 1);
        v18 = v20 - v21;
      }

      while (v20 - v21 >= 7);
    }
  }

  sub_64BC50(a1, &v36, (a2[15] + 1177));
  if ((SHIBYTE(v36.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_55:
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_68;
  }

  operator delete(v36.__r_.__value_.__l.__data_);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_56:
    if ((v47 & 0x80000000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_69;
  }

LABEL_68:
  operator delete(__p.__r_.__value_.__l.__data_);
  if ((v47 & 0x80000000) == 0)
  {
LABEL_57:
    if ((v45 & 0x80000000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_70;
  }

LABEL_69:
  operator delete(v46);
  if ((v45 & 0x80000000) == 0)
  {
LABEL_58:
    if ((v43 & 0x80000000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_71;
  }

LABEL_70:
  operator delete(v44);
  if ((v43 & 0x80000000) == 0)
  {
LABEL_59:
    if ((v41 & 0x80000000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_72;
  }

LABEL_71:
  operator delete(v42);
  if ((v41 & 0x80000000) == 0)
  {
LABEL_60:
    if ((v39 & 0x80000000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_73;
  }

LABEL_72:
  operator delete(v40);
  if ((v39 & 0x80000000) == 0)
  {
LABEL_61:
    if ((v57 & 0x80000000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_74;
  }

LABEL_73:
  operator delete(v38[0]);
  if ((v57 & 0x80000000) == 0)
  {
LABEL_62:
    if ((v55 & 0x80000000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_75;
  }

LABEL_74:
  operator delete(v56);
  if ((v55 & 0x80000000) == 0)
  {
LABEL_63:
    if ((v53 & 0x80000000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_76;
  }

LABEL_75:
  operator delete(v54);
  if ((v53 & 0x80000000) == 0)
  {
LABEL_64:
    if ((v51 & 0x80000000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_77;
  }

LABEL_76:
  operator delete(v52);
  if ((v51 & 0x80000000) == 0)
  {
LABEL_65:
    if ((v49 & 0x80000000) == 0)
    {
      return;
    }

LABEL_78:
    operator delete(v48[0]);
    return;
  }

LABEL_77:
  operator delete(v50);
  if (v49 < 0)
  {
    goto LABEL_78;
  }
}

void sub_642814(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a27 & 0x80000000) == 0)
      {
LABEL_8:
        sub_3E5388(&a28);
        sub_3E5388(v28 - 216);
        _Unwind_Resume(a1);
      }

LABEL_7:
      operator delete(a22);
      sub_3E5388(&a28);
      sub_3E5388(v28 - 216);
      _Unwind_Resume(a1);
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a16);
  if ((a27 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void sub_6428C8(double **a1, uint64_t a2)
{
  if (*(*a1 + 7) == 1)
  {
    sub_64B9C4(__p, (*(*a1 + 15) + 1177));
    sub_53D784(a2 + 320, __p);
    sub_53A868(__p);
    operator new();
  }
}

void sub_642B30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_642B78(unint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, char a5)
{
LABEL_1:
  v8 = a1;
LABEL_2:
  v9 = 1 - a4;
  while (1)
  {
    a1 = v8;
    v10 = v9;
    v11 = a2 - v8;
    v12 = 0x4FCACE213F2B3885 * (v11 >> 3);
    if (v12 > 2)
    {
      break;
    }

    if (v12 < 2)
    {
      return;
    }

    if (v12 == 2)
    {
      v21 = *(a2 - 76);
      v22 = *(a1 + 8);
      v23 = v21 == v22;
      v24 = v21 < v22;
      if (v23)
      {
        v24 = *(a2 - 122) > *(a1 + 128);
      }

      if (v24)
      {
        v25 = a1;
        v26 = a2 - 616;
        goto LABEL_37;
      }

      return;
    }

LABEL_10:
    if (v11 <= 14783)
    {
      if (a5)
      {

        sub_64308C(a1, a2);
      }

      else
      {

        sub_643624(a1, a2);
      }

      return;
    }

    if (v9 == 1)
    {
      if (a1 != a2)
      {
        v36 = (v12 - 2) >> 1;
        v37 = v36 + 1;
        v38 = (a1 + 616 * v36);
        do
        {
          sub_6449D8(a1, a3, 0x4FCACE213F2B3885 * (v11 >> 3), v38);
          v38 = (v38 - 616);
          --v37;
        }

        while (v37);
        v39 = 0x4FCACE213F2B3885 * (v11 >> 3);
        do
        {
          sub_644E44(a1, a2, a3, v39);
          a2 = (a2 - 616);
        }

        while (v39-- > 2);
      }

      return;
    }

    v13 = v12 >> 1;
    v14 = a1 + 616 * (v12 >> 1);
    if (v11 < 0x13401)
    {
      sub_63B63C(v14, a1, a2 - 616);
      if (a5)
      {
        goto LABEL_19;
      }
    }

    else
    {
      sub_63B63C(a1, v14, a2 - 616);
      sub_63B63C(a1 + 616, 616 * v13 + a1 - 616, (a2 - 77));
      sub_63B63C(a1 + 1232, a1 + 616 + 616 * v13, a2 - 1848);
      sub_63B63C(616 * v13 + a1 - 616, v14, a1 + 616 + 616 * v13);
      sub_63D28C(a1, v14);
      if (a5)
      {
        goto LABEL_19;
      }
    }

    v15 = *(a1 - 608);
    v16 = *(a1 + 8);
    v23 = v15 == v16;
    v17 = v15 < v16;
    if (v23)
    {
      v17 = *(a1 - 488) > *(a1 + 128);
    }

    if (!v17)
    {
      v8 = sub_643B90(a1, a2);
      goto LABEL_24;
    }

LABEL_19:
    v18 = sub_643FE0(a1, a2);
    if ((v19 & 1) == 0)
    {
      goto LABEL_22;
    }

    v20 = sub_64442C(a1, v18);
    v8 = v18 + 616;
    if (sub_64442C(v18 + 616, a2))
    {
      a4 = -v10;
      a2 = v18;
      if (v20)
      {
        return;
      }

      goto LABEL_1;
    }

    v9 = v10 + 1;
    if (!v20)
    {
LABEL_22:
      sub_642B78(a1, v18, a3, -v10, a5 & 1);
      v8 = v18 + 616;
LABEL_24:
      a5 = 0;
      a4 = -v10;
      goto LABEL_2;
    }
  }

  if (v12 == 3)
  {

    sub_63B63C(a1, a1 + 616, a2 - 616);
    return;
  }

  if (v12 != 4)
  {
    if (v12 == 5)
    {

      sub_63B750(a1, a1 + 616, a1 + 1232, a1 + 1848, a2 - 616);
      return;
    }

    goto LABEL_10;
  }

  sub_63B63C(a1, a1 + 616, a1 + 1232);
  v27 = *(a2 - 76);
  v28 = *(a1 + 1240);
  v23 = v27 == v28;
  v29 = v27 < v28;
  if (v23)
  {
    v29 = *(a2 - 122) > *(a1 + 1360);
  }

  if (v29)
  {
    sub_63D28C((a1 + 1232), a2 - 616);
    v30 = *(a1 + 1240);
    v31 = *(a1 + 624);
    v23 = v30 == v31;
    v32 = v30 < v31;
    if (v23)
    {
      v32 = *(a1 + 1360) > *(a1 + 744);
    }

    if (v32)
    {
      sub_63D28C((a1 + 616), a1 + 1232);
      v33 = *(a1 + 624);
      v34 = *(a1 + 8);
      v23 = v33 == v34;
      v35 = v33 < v34;
      if (v23)
      {
        v35 = *(a1 + 744) > *(a1 + 128);
      }

      if (v35)
      {
        v26 = a1 + 616;
        v25 = a1;
LABEL_37:

        sub_63D28C(v25, v26);
      }
    }
  }
}

void sub_64308C(_OWORD *a1, _OWORD *a2)
{
  if (a1 == a2)
  {
    return;
  }

  v3 = a1 + 616;
  if ((a1 + 616) == a2)
  {
    return;
  }

  v4 = 0;
  v5 = a1;
  v33 = a2;
  while (2)
  {
    v6 = v3;
    v7 = *(v5 + 78);
    v8 = *(v5 + 1);
    v9 = *(v5 + 186);
    v10 = v7 == v8;
    v11 = v7 < v8;
    if (v10)
    {
      v11 = v9 > *(v5 + 32);
    }

    if (!v11)
    {
      goto LABEL_5;
    }

    v34 = *v6;
    v35[0] = 0;
    v36 = -1;
    v12 = *(v5 + 166);
    if (v12 != -1)
    {
      v90[0] = v35;
      (off_266BE50[v12])(v90, v5 + 632);
      v36 = v12;
      v9 = *(v5 + 186);
    }

    v37 = *(v5 + 84);
    v39 = *(v5 + 87);
    v38 = *(v5 + 680);
    v5[43] = 0u;
    *(v5 + 85) = 0;
    v40 = *(v5 + 704);
    v42 = *(v5 + 91);
    __p = *(v5 + 712);
    *(v5 + 91) = 0;
    *(v5 + 712) = 0u;
    v43 = *(v5 + 736);
    v44 = v9;
    v45 = v5[47];
    v46 = *(v5 + 96);
    v5[47] = 0u;
    *(v5 + 96) = 0;
    v47 = *(v5 + 776);
    v48 = *(v5 + 99);
    *(v5 + 776) = 0u;
    *(v5 + 99) = 0;
    v49 = v5[50];
    v50 = *(v5 + 102);
    v5[50] = 0u;
    *(v5 + 102) = 0;
    v51 = *(v5 + 824);
    v52 = *(v5 + 105);
    *(v5 + 824) = 0u;
    *(v5 + 105) = 0;
    v13 = *(v5 + 106);
    *(v5 + 106) = 0;
    v54 = *(v5 + 214);
    v55 = *(v5 + 430);
    v56 = v5[54];
    v57 = *(v5 + 110);
    *(v5 + 110) = 0;
    v5[54] = 0u;
    v14 = *(v5 + 888);
    v59 = *(v5 + 113);
    v58 = v14;
    *(v5 + 113) = 0;
    *(v5 + 888) = 0u;
    v60 = v5[57];
    v15 = *(v5 + 116);
    v53 = v13;
    v61 = v15;
    v5[57] = 0u;
    *(v5 + 116) = 0;
    v62 = *(v5 + 936);
    v63 = *(v5 + 119);
    *(v5 + 936) = 0u;
    *(v5 + 119) = 0;
    v64 = v5[60];
    v65 = *(v5 + 122);
    v5[60] = 0u;
    *(v5 + 122) = 0;
    v66 = *(v5 + 984);
    v67 = *(v5 + 125);
    *(v5 + 984) = 0u;
    *(v5 + 125) = 0;
    v16 = *(v5 + 126);
    *(v5 + 126) = 0;
    v69 = *(v5 + 254);
    v70 = *(v5 + 510);
    v71 = v5[64];
    v72 = *(v5 + 130);
    *(v5 + 130) = 0;
    v5[64] = 0u;
    v17 = *(v5 + 1048);
    v74 = *(v5 + 133);
    v73 = v17;
    *(v5 + 133) = 0;
    *(v5 + 1048) = 0u;
    v75 = v5[67];
    v18 = *(v5 + 136);
    v68 = v16;
    v76 = v18;
    v5[67] = 0u;
    *(v5 + 136) = 0;
    v77 = *(v5 + 1096);
    v78 = *(v5 + 139);
    *(v5 + 1096) = 0u;
    *(v5 + 139) = 0;
    v79 = v5[70];
    v80 = *(v5 + 142);
    v5[70] = 0u;
    *(v5 + 142) = 0;
    v81 = *(v5 + 1144);
    v82 = *(v5 + 145);
    *(v5 + 1144) = 0u;
    *(v5 + 145) = 0;
    v19 = *(v5 + 146);
    *(v5 + 146) = 0;
    v83 = v19;
    v84 = *(v5 + 294);
    v85 = *(v5 + 590);
    v86 = v5[74];
    v87 = *(v5 + 150);
    *(v5 + 150) = 0;
    v5[74] = 0u;
    v20 = (v5 + 1208);
    v21 = *(v5 + 1208);
    v89 = *(v5 + 153);
    v88 = v21;
    *(v5 + 153) = 0;
    v22 = v4;
    *v20 = 0u;
    while (1)
    {
      *(a1 + v22 + 616) = *(a1 + v22);
      v23 = *(a1 + v22 + 664);
      v24 = *(a1 + v22 + 48);
      if (v23 == -1)
      {
        if (v24 == -1)
        {
          goto LABEL_17;
        }
      }

      else if (v24 == -1)
      {
        (off_266BE00[v23])(v90, a1 + v22 + 632);
        *(a1 + v22 + 664) = -1;
        goto LABEL_17;
      }

      v90[0] = a1 + v22 + 632;
      (off_266BE78[v24])(v90);
LABEL_17:
      v25 = a1 + v22;
      *(a1 + v22 + 672) = *(a1 + v22 + 56);
      v26 = (a1 + v22 + 680);
      if (*(a1 + v22 + 703) < 0)
      {
        operator delete(*v26);
      }

      *v26 = *(v25 + 4);
      *(a1 + v22 + 696) = *(v25 + 10);
      v25[87] = 0;
      v25[64] = 0;
      v25[704] = v25[88];
      v27 = v25 + 712;
      if (v25[735] < 0)
      {
        operator delete(*v27);
      }

      v28 = a1 + v22;
      *v27 = *(a1 + v22 + 96);
      *(v27 + 2) = *(a1 + v22 + 112);
      v28[119] = 0;
      v28[96] = 0;
      v28[736] = *(a1 + v22 + 120);
      *(v28 + 186) = *(a1 + v22 + 128);
      sub_53D784(a1 + v22 + 752, a1 + v22 + 136);
      sub_53D784((v28 + 912), (v28 + 296));
      sub_53D784((v28 + 1072), (v28 + 456));
      if (!v22)
      {
        break;
      }

      v29 = *(v28 - 76);
      v10 = *(&v34 + 1) == v29;
      v30 = *(&v34 + 1) < v29;
      if (v10)
      {
        v30 = v44 > *(v28 - 122);
      }

      v22 -= 616;
      if (!v30)
      {
        v31 = a1 + v22 + 616;
        goto LABEL_27;
      }
    }

    v31 = a1;
LABEL_27:
    sub_63A54C(v31, &v34);
    sub_53A868(&v75);
    sub_53A868(&v60);
    sub_53A868(&v45);
    if (SHIBYTE(v42) < 0)
    {
      operator delete(__p);
      if (SHIBYTE(v39) < 0)
      {
        goto LABEL_32;
      }

LABEL_29:
      v32 = v36;
      if (v36 != -1)
      {
LABEL_33:
        (off_266BE00[v32])(v90, v35);
      }
    }

    else
    {
      if ((SHIBYTE(v39) & 0x80000000) == 0)
      {
        goto LABEL_29;
      }

LABEL_32:
      operator delete(v38);
      v32 = v36;
      if (v36 != -1)
      {
        goto LABEL_33;
      }
    }

    a2 = v33;
LABEL_5:
    v3 = v6 + 616;
    v4 += 616;
    v5 = v6;
    if ((v6 + 616) != a2)
    {
      continue;
    }

    break;
  }
}

void sub_643624(_OWORD *a1, _OWORD *a2)
{
  if (a1 == a2)
  {
    return;
  }

  v3 = a1;
  v4 = a1 + 616;
  if ((a1 + 616) == a2)
  {
    return;
  }

  v5 = a1 - 38;
  while (2)
  {
    v6 = v4;
    v7 = *(v3 + 78);
    v8 = *(v3 + 1);
    v9 = *(v3 + 186);
    v10 = v7 == v8;
    v11 = v7 < v8;
    if (v10)
    {
      v11 = v9 > *(v3 + 32);
    }

    if (!v11)
    {
      goto LABEL_4;
    }

    v29 = *v6;
    v30[0] = 0;
    v31 = -1;
    v12 = *(v3 + 166);
    if (v12 != -1)
    {
      v85[0] = v30;
      (off_266BE50[v12])(v85, v3 + 632);
      v31 = v12;
      v9 = *(v3 + 186);
    }

    v32 = *(v3 + 84);
    v34 = *(v3 + 87);
    v33 = *(v3 + 680);
    v3[43] = 0u;
    *(v3 + 85) = 0;
    v35 = *(v3 + 704);
    v37 = *(v3 + 91);
    __p = *(v3 + 712);
    *(v3 + 91) = 0;
    *(v3 + 712) = 0u;
    v38 = *(v3 + 736);
    v39 = v9;
    v40 = v3[47];
    v41 = *(v3 + 96);
    v3[47] = 0u;
    *(v3 + 96) = 0;
    v42 = *(v3 + 776);
    v43 = *(v3 + 99);
    *(v3 + 776) = 0u;
    *(v3 + 99) = 0;
    v44 = v3[50];
    v45 = *(v3 + 102);
    v3[50] = 0u;
    *(v3 + 102) = 0;
    v46 = *(v3 + 824);
    v47 = *(v3 + 105);
    *(v3 + 824) = 0u;
    *(v3 + 105) = 0;
    v13 = *(v3 + 106);
    *(v3 + 106) = 0;
    v49 = *(v3 + 214);
    v50 = *(v3 + 430);
    v51 = v3[54];
    v52 = *(v3 + 110);
    *(v3 + 110) = 0;
    v3[54] = 0u;
    v14 = *(v3 + 888);
    v54 = *(v3 + 113);
    v53 = v14;
    *(v3 + 113) = 0;
    *(v3 + 888) = 0u;
    v55 = v3[57];
    v15 = *(v3 + 116);
    v48 = v13;
    v56 = v15;
    v3[57] = 0u;
    *(v3 + 116) = 0;
    v57 = *(v3 + 936);
    v58 = *(v3 + 119);
    *(v3 + 936) = 0u;
    *(v3 + 119) = 0;
    v59 = v3[60];
    v60 = *(v3 + 122);
    v3[60] = 0u;
    *(v3 + 122) = 0;
    v61 = *(v3 + 984);
    v62 = *(v3 + 125);
    *(v3 + 984) = 0u;
    *(v3 + 125) = 0;
    v16 = *(v3 + 126);
    *(v3 + 126) = 0;
    v64 = *(v3 + 254);
    v65 = *(v3 + 510);
    v66 = v3[64];
    v67 = *(v3 + 130);
    *(v3 + 130) = 0;
    v3[64] = 0u;
    v17 = *(v3 + 1048);
    v69 = *(v3 + 133);
    v68 = v17;
    *(v3 + 133) = 0;
    *(v3 + 1048) = 0u;
    v70 = v3[67];
    v18 = *(v3 + 136);
    v63 = v16;
    v71 = v18;
    v3[67] = 0u;
    *(v3 + 136) = 0;
    v72 = *(v3 + 1096);
    v73 = *(v3 + 139);
    *(v3 + 1096) = 0u;
    *(v3 + 139) = 0;
    v74 = v3[70];
    v75 = *(v3 + 142);
    v3[70] = 0u;
    *(v3 + 142) = 0;
    v76 = *(v3 + 1144);
    v77 = *(v3 + 145);
    *(v3 + 1144) = 0u;
    *(v3 + 145) = 0;
    v19 = *(v3 + 146);
    *(v3 + 146) = 0;
    v78 = v19;
    v79 = *(v3 + 294);
    v80 = *(v3 + 590);
    v81 = v3[74];
    v82 = *(v3 + 150);
    *(v3 + 150) = 0;
    v3[74] = 0u;
    v20 = (v3 + 1208);
    v21 = *(v3 + 1208);
    v84 = *(v3 + 153);
    v83 = v21;
    *(v3 + 153) = 0;
    v22 = v5;
    *v20 = 0u;
    do
    {
      *(v22 + 1224) = v22[38];
      v24 = *(v22 + 318);
      v25 = *(v22 + 164);
      if (v24 == -1)
      {
        if (v25 == -1)
        {
          goto LABEL_19;
        }
      }

      else if (v25 == -1)
      {
        (off_266BE00[v24])(v85, v22 + 1240);
        *(v22 + 318) = -1;
        goto LABEL_19;
      }

      v85[0] = v22 + 1240;
      (off_266BE78[v25])(v85);
LABEL_19:
      *(v22 + 160) = *(v22 + 83);
      v26 = v22 + 161;
      if (*(v22 + 1311) < 0)
      {
        operator delete(*v26);
      }

      *v26 = v22[42];
      *(v22 + 163) = *(v22 + 86);
      *(v22 + 695) = 0;
      *(v22 + 672) = 0;
      *(v22 + 1312) = *(v22 + 696);
      v27 = v22 + 165;
      if (*(v22 + 1343) < 0)
      {
        operator delete(*v27);
      }

      *v27 = v22[44];
      *(v22 + 167) = *(v22 + 90);
      *(v22 + 727) = 0;
      *(v22 + 704) = 0;
      *(v22 + 1344) = *(v22 + 728);
      *(v22 + 338) = *(v22 + 184);
      sub_53D784((v22 + 85), v22 + 744);
      sub_53D784((v22 + 95), v22 + 904);
      sub_53D784((v22 + 105), v22 + 1064);
      v23 = *(&v29 + 1) < *v22;
      if (*(&v29 + 1) == *v22)
      {
        v23 = v39 > *(v22 + 30);
      }

      v22 = (v22 - 616);
    }

    while (v23);
    sub_63A54C(v22 + 1224, &v29);
    sub_53A868(&v70);
    sub_53A868(&v55);
    sub_53A868(&v40);
    if (SHIBYTE(v37) < 0)
    {
      operator delete(__p);
      if (SHIBYTE(v34) < 0)
      {
        goto LABEL_28;
      }

LABEL_25:
      v28 = v31;
      if (v31 != -1)
      {
LABEL_29:
        (off_266BE00[v28])(v85, v30);
      }
    }

    else
    {
      if ((SHIBYTE(v34) & 0x80000000) == 0)
      {
        goto LABEL_25;
      }

LABEL_28:
      operator delete(v33);
      v28 = v31;
      if (v31 != -1)
      {
        goto LABEL_29;
      }
    }

LABEL_4:
    v4 = v6 + 616;
    v5 = (v5 + 616);
    v3 = v6;
    if ((v6 + 616) != a2)
    {
      continue;
    }

    break;
  }
}

unint64_t sub_643B90(__int128 *a1, unint64_t a2)
{
  v46 = *a1;
  v47[0] = 0;
  v48 = -1;
  v4 = *(a1 + 12);
  if (v4 != -1)
  {
    v102 = v47;
    (off_266BE50[v4])(&v102, a1 + 1);
    v48 = v4;
  }

  v49 = *(a1 + 7);
  *v50 = a1[4];
  v51 = *(a1 + 10);
  *(a1 + 72) = 0u;
  *(a1 + 8) = 0;
  v52 = *(a1 + 88);
  *__p = a1[6];
  v54 = *(a1 + 14);
  *(a1 + 14) = 0;
  a1[6] = 0u;
  v55 = *(a1 + 120);
  v56 = *(a1 + 32);
  v5 = v56;
  v57 = *(a1 + 136);
  v58 = *(a1 + 19);
  *(a1 + 136) = 0u;
  *(a1 + 19) = 0;
  v59 = a1[10];
  v6 = *(a1 + 22);
  a1[10] = 0u;
  *(a1 + 22) = 0;
  v61 = *(a1 + 184);
  v7 = *(a1 + 25);
  v60 = v6;
  v62 = v7;
  *(a1 + 184) = 0u;
  *(a1 + 25) = 0;
  v63 = a1[13];
  a1[13] = 0u;
  v8 = *(a1 + 28);
  v9 = *(a1 + 29);
  *(a1 + 28) = 0;
  *(a1 + 29) = 0;
  v64 = v8;
  v65 = v9;
  LODWORD(v8) = *(a1 + 60);
  v67 = *(a1 + 122);
  v66 = v8;
  v10 = *(a1 + 248);
  v69 = *(a1 + 33);
  v68 = v10;
  *(a1 + 33) = 0;
  *(a1 + 248) = 0u;
  v70 = a1[17];
  a1[17] = 0u;
  v11 = *(a1 + 37);
  v71 = *(a1 + 36);
  v72 = v11;
  *(a1 + 36) = 0;
  *(a1 + 37) = 0;
  v12 = a1[20];
  v73 = a1[19];
  v74 = v12;
  a1[19] = 0u;
  a1[20] = 0u;
  v13 = *(a1 + 43);
  v75 = *(a1 + 42);
  v76 = v13;
  *(a1 + 42) = 0;
  *(a1 + 43) = 0;
  v14 = a1[23];
  v77 = a1[22];
  v78 = v14;
  a1[22] = 0u;
  a1[23] = 0u;
  v15 = *(a1 + 48);
  v16 = *(a1 + 49);
  *(a1 + 48) = 0;
  *(a1 + 49) = 0;
  v79 = v15;
  v80 = v16;
  LODWORD(v15) = *(a1 + 100);
  v82 = *(a1 + 202);
  v81 = v15;
  v17 = *(a1 + 53);
  v83 = *(a1 + 408);
  v84 = v17;
  *(a1 + 53) = 0;
  *(a1 + 408) = 0u;
  v85 = a1[27];
  a1[27] = 0u;
  v18 = *(a1 + 57);
  v86 = *(a1 + 56);
  v87 = v18;
  *(a1 + 56) = 0;
  *(a1 + 57) = 0;
  v19 = a1[30];
  v88 = a1[29];
  v89 = v19;
  a1[29] = 0u;
  a1[30] = 0u;
  v20 = *(a1 + 63);
  v90 = *(a1 + 62);
  v91 = v20;
  *(a1 + 62) = 0;
  *(a1 + 63) = 0;
  v21 = a1[33];
  v92 = a1[32];
  v93 = v21;
  v94 = *(a1 + 68);
  a1[32] = 0u;
  a1[33] = 0u;
  *(a1 + 68) = 0;
  v22 = *(a1 + 69);
  *(a1 + 69) = 0;
  v95 = v22;
  LODWORD(v22) = *(a1 + 140);
  v97 = *(a1 + 282);
  v96 = v22;
  v23 = *(a1 + 73);
  v98 = *(a1 + 568);
  v99 = v23;
  *(a1 + 73) = 0;
  *(a1 + 568) = 0u;
  v24 = a1[37];
  v101 = *(a1 + 76);
  *(a1 + 76) = 0;
  a1[37] = 0u;
  v25 = a2 - 608;
  v26 = v5 > *(a2 - 488);
  if (*(&v46 + 1) != *(a2 - 608))
  {
    v26 = *(&v46 + 1) < *(a2 - 608);
  }

  v100 = v24;
  if (v26)
  {
    v27 = a1;
    do
    {
      v28 = v27 + 616;
      v29 = *(v27 + 624);
      v30 = v5 > *(v27 + 744);
      v31 = *(&v46 + 1) == v29;
      v32 = *(&v46 + 1) < v29;
      if (v31)
      {
        v32 = v30;
      }

      v27 = v28;
    }

    while (!v32);
  }

  else
  {
    v33 = a1 + 616;
    do
    {
      v28 = v33;
      if (v33 >= a2)
      {
        break;
      }

      v34 = *(v33 + 8);
      v35 = v5 > *(v28 + 128);
      v31 = *(&v46 + 1) == v34;
      v36 = *(&v46 + 1) < v34;
      if (!v31)
      {
        v35 = v36;
      }

      v33 = v28 + 616;
    }

    while (!v35);
  }

  if (v28 < a2)
  {
    do
    {
      v37 = *(&v46 + 1) < *v25;
      if (*(&v46 + 1) == *v25)
      {
        v37 = v5 > *(v25 + 120);
      }

      v25 -= 616;
    }

    while (v37);
    a2 = v25 + 608;
  }

  while (v28 < a2)
  {
    sub_63D28C(v28, a2);
    do
    {
      v38 = *(v28 + 624);
      v39 = *(v28 + 744);
      v28 += 616;
      v40 = v56 > v39;
      v31 = *(&v46 + 1) == v38;
      v41 = *(&v46 + 1) < v38;
      if (v31)
      {
        v41 = v40;
      }
    }

    while (!v41);
    v42 = a2 - 608;
    do
    {
      v43 = *(&v46 + 1) < *v42;
      if (*(&v46 + 1) == *v42)
      {
        v43 = v56 > *(v42 + 120);
      }

      v42 -= 616;
    }

    while (v43);
    a2 = v42 + 608;
  }

  if ((v28 - 616) != a1)
  {
    sub_63A54C(a1, v28 - 616);
  }

  sub_63A54C(v28 - 616, &v46);
  sub_53A868(&v87);
  sub_53A868(&v72);
  sub_53A868(&v57);
  if (SHIBYTE(v54) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v51) & 0x80000000) == 0)
    {
LABEL_35:
      v44 = v48;
      if (v48 == -1)
      {
        return v28;
      }

      goto LABEL_39;
    }
  }

  else if ((SHIBYTE(v51) & 0x80000000) == 0)
  {
    goto LABEL_35;
  }

  operator delete(v50[0]);
  v44 = v48;
  if (v48 != -1)
  {
LABEL_39:
    (off_266BE00[v44])(&v102, v47);
  }

  return v28;
}

uint64_t sub_643FE0(__int128 *a1, uint64_t a2)
{
  v44 = *a1;
  v45[0] = 0;
  v46 = -1;
  v4 = *(a1 + 12);
  if (v4 != -1)
  {
    v100 = v45;
    (off_266BE50[v4])(&v100, a1 + 1);
    v46 = v4;
  }

  v5 = 0;
  v47 = *(a1 + 7);
  *v48 = a1[4];
  v49 = *(a1 + 10);
  *(a1 + 72) = 0u;
  *(a1 + 8) = 0;
  v50 = *(a1 + 88);
  *__p = a1[6];
  v52 = *(a1 + 14);
  *(a1 + 14) = 0;
  a1[6] = 0u;
  v53 = *(a1 + 120);
  v6 = *(a1 + 32);
  v54 = v6;
  v55 = *(a1 + 136);
  v56 = *(a1 + 19);
  *(a1 + 136) = 0u;
  *(a1 + 19) = 0;
  v57 = a1[10];
  v7 = *(a1 + 22);
  a1[10] = 0u;
  *(a1 + 22) = 0;
  v59 = *(a1 + 184);
  v8 = *(a1 + 25);
  v58 = v7;
  v60 = v8;
  *(a1 + 184) = 0u;
  *(a1 + 25) = 0;
  v61 = a1[13];
  a1[13] = 0u;
  v9 = *(a1 + 28);
  v10 = *(a1 + 29);
  *(a1 + 28) = 0;
  *(a1 + 29) = 0;
  v62 = v9;
  v63 = v10;
  LODWORD(v9) = *(a1 + 60);
  v65 = *(a1 + 122);
  v64 = v9;
  v11 = *(a1 + 248);
  v67 = *(a1 + 33);
  v66 = v11;
  *(a1 + 33) = 0;
  *(a1 + 248) = 0u;
  v68 = a1[17];
  a1[17] = 0u;
  v12 = *(a1 + 37);
  v69 = *(a1 + 36);
  v70 = v12;
  *(a1 + 36) = 0;
  *(a1 + 37) = 0;
  v13 = a1[20];
  v71 = a1[19];
  v72 = v13;
  a1[19] = 0u;
  a1[20] = 0u;
  v14 = *(a1 + 43);
  v73 = *(a1 + 42);
  v74 = v14;
  *(a1 + 42) = 0;
  *(a1 + 43) = 0;
  v15 = a1[23];
  v75 = a1[22];
  v76 = v15;
  a1[22] = 0u;
  a1[23] = 0u;
  v16 = *(a1 + 48);
  v17 = *(a1 + 49);
  *(a1 + 48) = 0;
  *(a1 + 49) = 0;
  v77 = v16;
  v78 = v17;
  LODWORD(v16) = *(a1 + 100);
  v80 = *(a1 + 202);
  v79 = v16;
  v81 = *(a1 + 408);
  v82 = *(a1 + 53);
  *(a1 + 53) = 0;
  *(a1 + 408) = 0u;
  v83 = a1[27];
  a1[27] = 0u;
  v18 = *(a1 + 57);
  v84 = *(a1 + 56);
  v85 = v18;
  *(a1 + 56) = 0;
  *(a1 + 57) = 0;
  v19 = a1[30];
  v86 = a1[29];
  v87 = v19;
  a1[29] = 0u;
  a1[30] = 0u;
  v20 = *(a1 + 63);
  v88 = *(a1 + 62);
  v89 = v20;
  *(a1 + 62) = 0;
  *(a1 + 63) = 0;
  v21 = a1[33];
  v90 = a1[32];
  v91 = v21;
  v92 = *(a1 + 68);
  a1[32] = 0u;
  a1[33] = 0u;
  *(a1 + 68) = 0;
  v22 = *(a1 + 69);
  *(a1 + 69) = 0;
  v93 = v22;
  LODWORD(v22) = *(a1 + 140);
  v95 = *(a1 + 282);
  v94 = v22;
  v96 = *(a1 + 568);
  v97 = *(a1 + 73);
  *(a1 + 73) = 0;
  *(a1 + 568) = 0u;
  v23 = a1[37];
  v99 = *(a1 + 76);
  v98 = v23;
  *(a1 + 76) = 0;
  a1[37] = 0u;
  do
  {
    v24 = *(a1 + v5 + 624);
    v25 = *(a1 + v5 + 744) > v6;
    v26 = v24 == *(&v44 + 1);
    v27 = v24 < *(&v44 + 1);
    if (!v26)
    {
      v25 = v27;
    }

    v5 += 616;
  }

  while (v25);
  v28 = a1 + v5;
  v29 = a1 + v5 - 616;
  if (v5 == 616)
  {
    v30 = a2 - 608;
    while (1)
    {
      v32 = v30 + 608;
      if (v28 >= v30 + 608)
      {
        break;
      }

      v33 = *v30 < *(&v44 + 1);
      if (*v30 == *(&v44 + 1))
      {
        v33 = *(v30 + 120) > v6;
      }

      v30 -= 616;
      if (v33)
      {
        goto LABEL_18;
      }
    }
  }

  else
  {
    v30 = a2 - 608;
    do
    {
      v31 = *v30 < *(&v44 + 1);
      if (*v30 == *(&v44 + 1))
      {
        v31 = *(v30 + 120) > v6;
      }

      v30 -= 616;
    }

    while (!v31);
LABEL_18:
    v32 = v30 + 608;
  }

  if (v28 < v32)
  {
    v34 = v28;
    v35 = v32;
    do
    {
      sub_63D28C(v34, v35);
      do
      {
        v36 = *(v34 + 624);
        v37 = *(v34 + 744);
        v34 += 616;
        v38 = v37 > v54;
        v26 = v36 == *(&v44 + 1);
        v39 = v36 < *(&v44 + 1);
        if (v26)
        {
          v39 = v38;
        }
      }

      while (v39);
      v40 = v35 - 608;
      do
      {
        v41 = *v40 < *(&v44 + 1);
        if (*v40 == *(&v44 + 1))
        {
          v41 = *(v40 + 120) > v54;
        }

        v40 -= 616;
      }

      while (!v41);
      v35 = v40 + 608;
    }

    while (v34 < v40 + 608);
    v29 = v34 - 616;
  }

  if (v29 != a1)
  {
    sub_63A54C(a1, v29);
  }

  sub_63A54C(v29, &v44);
  sub_53A868(&v85);
  sub_53A868(&v70);
  sub_53A868(&v55);
  if (SHIBYTE(v52) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v49) & 0x80000000) == 0)
    {
LABEL_35:
      v42 = v46;
      if (v46 == -1)
      {
        return v29;
      }

      goto LABEL_39;
    }
  }

  else if ((SHIBYTE(v49) & 0x80000000) == 0)
  {
    goto LABEL_35;
  }

  operator delete(v48[0]);
  v42 = v46;
  if (v46 != -1)
  {
LABEL_39:
    (off_266BE00[v42])(&v100, v45);
  }

  return v29;
}

BOOL sub_64442C(uint64_t a1, __int128 *a2)
{
  v4 = 0x4FCACE213F2B3885 * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        sub_63B63C(a1, a1 + 616, a2 - 616);
        return 1;
      case 4:
        sub_63B63C(a1, a1 + 616, a1 + 1232);
        v46 = *(a2 - 76);
        v47 = *(a1 + 1240);
        v7 = v46 == v47;
        v48 = v46 < v47;
        if (v7)
        {
          v48 = *(a2 - 122) > *(a1 + 1360);
        }

        if (!v48)
        {
          return 1;
        }

        sub_63D28C((a1 + 1232), a2 - 616);
        v49 = *(a1 + 1240);
        v50 = *(a1 + 624);
        v7 = v49 == v50;
        v51 = v49 < v50;
        if (v7)
        {
          v51 = *(a1 + 1360) > *(a1 + 744);
        }

        if (!v51)
        {
          return 1;
        }

        sub_63D28C((a1 + 616), a1 + 1232);
        v52 = *(a1 + 624);
        v53 = *(a1 + 8);
        v7 = v52 == v53;
        v54 = v52 < v53;
        if (v7)
        {
          v54 = *(a1 + 744) > *(a1 + 128);
        }

        if (!v54)
        {
          return 1;
        }

        v9 = a1 + 616;
LABEL_8:
        sub_63D28C(a1, v9);
        return 1;
      case 5:
        sub_63B750(a1, a1 + 616, a1 + 1232, a1 + 1848, a2 - 616);
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = *(a2 - 76);
      v6 = *(a1 + 8);
      v7 = v5 == v6;
      v8 = v5 < v6;
      if (v7)
      {
        v8 = *(a2 - 122) > *(a1 + 128);
      }

      if (!v8)
      {
        return 1;
      }

      v9 = a2 - 616;
      goto LABEL_8;
    }
  }

  v10 = (a1 + 1232);
  sub_63B63C(a1, a1 + 616, a1 + 1232);
  v11 = (a1 + 1848);
  if ((a1 + 1848) == a2)
  {
    return 1;
  }

  v12 = 0;
  v13 = 0;
  while (1)
  {
    v14 = *(v11 + 1);
    v15 = *(v10 + 1);
    v16 = *(v11 + 32);
    v7 = v14 == v15;
    v17 = v14 < v15;
    if (v7)
    {
      v17 = v16 > *(v10 + 32);
    }

    if (!v17)
    {
      goto LABEL_17;
    }

    v56 = *v11;
    v57[0] = 0;
    v58 = -1;
    v18 = *(v11 + 12);
    if (v18 != -1)
    {
      v112[0] = v57;
      (off_266BE50[v18])(v112, v11 + 1);
      v58 = v18;
      v16 = *(v11 + 32);
    }

    v59 = *(v11 + 7);
    v60 = v11[4];
    v61 = *(v11 + 10);
    *(v11 + 72) = 0u;
    *(v11 + 8) = 0;
    v62 = *(v11 + 88);
    __p = v11[6];
    v64 = *(v11 + 14);
    *(v11 + 14) = 0;
    v11[6] = 0u;
    v65 = *(v11 + 120);
    v66 = v16;
    v67 = *(v11 + 136);
    v68 = *(v11 + 19);
    *(v11 + 136) = 0u;
    *(v11 + 19) = 0;
    v69 = v11[10];
    v19 = *(v11 + 22);
    v11[10] = 0u;
    *(v11 + 22) = 0;
    v71 = *(v11 + 184);
    v20 = *(v11 + 25);
    v70 = v19;
    v72 = v20;
    *(v11 + 184) = 0u;
    *(v11 + 25) = 0;
    v73 = v11[13];
    v11[13] = 0u;
    v21 = *(v11 + 28);
    v22 = *(v11 + 29);
    *(v11 + 28) = 0;
    *(v11 + 29) = 0;
    v74 = v21;
    v75 = v22;
    LODWORD(v21) = *(v11 + 60);
    v77 = *(v11 + 122);
    v76 = v21;
    v23 = *(v11 + 248);
    v79 = *(v11 + 33);
    v78 = v23;
    *(v11 + 33) = 0;
    *(v11 + 248) = 0u;
    v24 = v11[17];
    v25 = *(v11 + 37);
    v81 = *(v11 + 36);
    v80 = v24;
    v11[17] = 0u;
    v82 = v25;
    *(v11 + 36) = 0;
    *(v11 + 37) = 0;
    v26 = v11[20];
    v83 = v11[19];
    v84 = v26;
    v11[19] = 0u;
    v11[20] = 0u;
    v27 = *(v11 + 43);
    v85 = *(v11 + 42);
    v86 = v27;
    *(v11 + 42) = 0;
    *(v11 + 43) = 0;
    v28 = v11[23];
    v87 = v11[22];
    v88 = v28;
    v11[22] = 0u;
    v11[23] = 0u;
    v29 = *(v11 + 48);
    v30 = *(v11 + 49);
    *(v11 + 48) = 0;
    *(v11 + 49) = 0;
    v89 = v29;
    v90 = v30;
    LODWORD(v29) = *(v11 + 100);
    v92 = *(v11 + 202);
    v91 = v29;
    v31 = *(v11 + 408);
    v94 = *(v11 + 53);
    v93 = v31;
    *(v11 + 53) = 0;
    *(v11 + 408) = 0u;
    v32 = v11[27];
    v33 = *(v11 + 57);
    v96 = *(v11 + 56);
    v95 = v32;
    v11[27] = 0u;
    v97 = v33;
    *(v11 + 56) = 0;
    *(v11 + 57) = 0;
    v34 = v11[30];
    v98 = v11[29];
    v99 = v34;
    v11[29] = 0u;
    v11[30] = 0u;
    v35 = *(v11 + 63);
    v100 = *(v11 + 62);
    v101 = v35;
    *(v11 + 62) = 0;
    *(v11 + 63) = 0;
    v36 = v11[33];
    v102 = v11[32];
    v103 = v36;
    v104 = *(v11 + 68);
    v11[32] = 0u;
    v11[33] = 0u;
    *(v11 + 68) = 0;
    v37 = *(v11 + 69);
    *(v11 + 69) = 0;
    v105 = v37;
    LODWORD(v37) = *(v11 + 140);
    v107 = *(v11 + 282);
    v106 = v37;
    v38 = *(v11 + 568);
    v109 = *(v11 + 73);
    v108 = v38;
    *(v11 + 73) = 0;
    *(v11 + 568) = 0u;
    v39 = v11[37];
    v111 = *(v11 + 76);
    v110 = v39;
    *(v11 + 76) = 0;
    v40 = v12;
    v11[37] = 0u;
    while (1)
    {
      v41 = a1 + v40;
      sub_63A54C(a1 + v40 + 1848, a1 + v40 + 1232);
      if (v40 == -1232)
      {
        break;
      }

      v42 = *(v41 + 624);
      v43 = *(&v56 + 1) < v42;
      if (*(&v56 + 1) == v42)
      {
        v43 = v66 > *(v41 + 744);
      }

      v40 -= 616;
      if (!v43)
      {
        v44 = a1 + v40 + 1848;
        goto LABEL_30;
      }
    }

    v44 = a1;
LABEL_30:
    sub_63A54C(v44, &v56);
    sub_53A868(&v97);
    sub_53A868(&v82);
    sub_53A868(&v67);
    if (SHIBYTE(v64) < 0)
    {
      operator delete(__p);
      if (SHIBYTE(v61) < 0)
      {
LABEL_35:
        operator delete(v60);
        v45 = v58;
        if (v58 == -1)
        {
          goto LABEL_16;
        }

LABEL_36:
        (off_266BE00[v45])(v112, v57);
        goto LABEL_16;
      }
    }

    else if (SHIBYTE(v61) < 0)
    {
      goto LABEL_35;
    }

    v45 = v58;
    if (v58 != -1)
    {
      goto LABEL_36;
    }

LABEL_16:
    if (++v13 == 8)
    {
      return (v11 + 616) == a2;
    }

LABEL_17:
    v10 = v11;
    v12 += 616;
    v11 = (v11 + 616);
    if (v11 == a2)
    {
      return 1;
    }
  }
}

void sub_6449D8(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= 0x4FCACE213F2B3885 * ((a4 - a1) >> 3))
    {
      v9 = (0x9F959C427E56710ALL * ((a4 - a1) >> 3)) | 1;
      v10 = a1 + 616 * v9;
      if ((0x9F959C427E56710ALL * ((a4 - a1) >> 3) + 2) < a3)
      {
        v11 = *(v10 + 8);
        v12 = *(v10 + 624);
        v14 = v11 == v12;
        v13 = v11 < v12;
        if (v14)
        {
          v13 = *(v10 + 128) > *(v10 + 744);
        }

        v14 = !v13;
        v15 = 616;
        if (v14)
        {
          v15 = 0;
        }

        v10 += v15;
        if (!v14)
        {
          v9 = 0x9F959C427E56710ALL * ((a4 - a1) >> 3) + 2;
        }
      }

      v16 = *(v10 + 8);
      v17 = *(a4 + 1);
      v18 = *(a4 + 32);
      v14 = v16 == v17;
      v19 = v16 < v17;
      if (v14)
      {
        v19 = *(v10 + 128) > v18;
      }

      if (!v19)
      {
        v50 = *a4;
        v51[0] = 0;
        v52 = -1;
        v20 = *(a4 + 12);
        if (v20 != -1)
        {
          v106[0] = v51;
          (off_266BE50[v20])(v106, a4 + 1);
          v52 = v20;
          v18 = *(v5 + 128);
        }

        v53 = *(v5 + 56);
        *v54 = *(v5 + 64);
        v55 = *(v5 + 80);
        *(v5 + 72) = 0u;
        *(v5 + 64) = 0;
        v56 = *(v5 + 88);
        *__p = *(v5 + 96);
        v58 = *(v5 + 112);
        *(v5 + 112) = 0;
        *(v5 + 96) = 0u;
        v59 = *(v5 + 120);
        v60 = v18;
        v61 = *(v5 + 136);
        v62 = *(v5 + 152);
        *(v5 + 136) = 0u;
        *(v5 + 152) = 0;
        v63 = *(v5 + 160);
        v21 = *(v5 + 176);
        *(v5 + 160) = 0u;
        *(v5 + 176) = 0;
        v65 = *(v5 + 184);
        v22 = *(v5 + 200);
        v64 = v21;
        v66 = v22;
        *(v5 + 184) = 0u;
        *(v5 + 200) = 0;
        v67 = *(v5 + 208);
        *(v5 + 208) = 0u;
        v23 = *(v5 + 224);
        v24 = *(v5 + 232);
        *(v5 + 224) = 0;
        *(v5 + 232) = 0;
        v68 = v23;
        v69 = v24;
        LODWORD(v23) = *(v5 + 240);
        v71 = *(v5 + 244);
        v70 = v23;
        v25 = *(v5 + 248);
        v73 = *(v5 + 264);
        v72 = v25;
        *(v5 + 264) = 0;
        *(v5 + 248) = 0u;
        v74 = *(v5 + 272);
        *(v5 + 272) = 0u;
        v26 = *(v5 + 296);
        v75 = *(v5 + 288);
        v76 = v26;
        *(v5 + 288) = 0;
        *(v5 + 296) = 0;
        v27 = *(v5 + 320);
        v77 = *(v5 + 304);
        v78 = v27;
        *(v5 + 304) = 0u;
        *(v5 + 320) = 0u;
        v28 = *(v5 + 344);
        v79 = *(v5 + 336);
        v80 = v28;
        *(v5 + 336) = 0;
        *(v5 + 344) = 0;
        v29 = *(v5 + 368);
        v81 = *(v5 + 352);
        v82 = v29;
        *(v5 + 352) = 0u;
        *(v5 + 368) = 0u;
        v30 = *(v5 + 384);
        v31 = *(v5 + 392);
        *(v5 + 384) = 0;
        *(v5 + 392) = 0;
        v83 = v30;
        v84 = v31;
        LODWORD(v30) = *(v5 + 400);
        v86 = *(v5 + 404);
        v85 = v30;
        v32 = *(v5 + 424);
        v87 = *(v5 + 408);
        v88 = v32;
        *(v5 + 424) = 0;
        *(v5 + 408) = 0u;
        v89 = *(v5 + 432);
        *(v5 + 432) = 0u;
        v33 = *(v5 + 456);
        v90 = *(v5 + 448);
        v91 = v33;
        *(v5 + 448) = 0;
        *(v5 + 456) = 0;
        v34 = *(v5 + 480);
        v92 = *(v5 + 464);
        v93 = v34;
        *(v5 + 464) = 0u;
        *(v5 + 480) = 0u;
        v35 = *(v5 + 504);
        v94 = *(v5 + 496);
        v95 = v35;
        *(v5 + 496) = 0;
        *(v5 + 504) = 0;
        v36 = *(v5 + 528);
        v96 = *(v5 + 512);
        v97 = v36;
        v98 = *(v5 + 544);
        *(v5 + 512) = 0u;
        *(v5 + 528) = 0u;
        *(v5 + 544) = 0;
        v37 = *(v5 + 552);
        *(v5 + 552) = 0;
        v99 = v37;
        LODWORD(v37) = *(v5 + 560);
        v101 = *(v5 + 564);
        v100 = v37;
        v38 = *(v5 + 584);
        v102 = *(v5 + 568);
        v103 = v38;
        *(v5 + 584) = 0;
        *(v5 + 568) = 0u;
        v39 = *(v5 + 592);
        v105 = *(v5 + 608);
        v104 = v39;
        *(v5 + 608) = 0;
        *(v5 + 592) = 0u;
        do
        {
          v42 = v10;
          sub_63A54C(v5, v10);
          if (v7 < v9)
          {
            break;
          }

          v43 = (2 * v9) | 1;
          v10 = a1 + 616 * v43;
          if (2 * v9 + 2 < a3)
          {
            v44 = *(v10 + 8);
            v45 = *(v10 + 624);
            v14 = v44 == v45;
            v46 = v44 < v45;
            if (v14)
            {
              v46 = *(v10 + 128) > *(v10 + 744);
            }

            v47 = !v46;
            if (v46)
            {
              v48 = 616;
            }

            else
            {
              v48 = 0;
            }

            v10 += v48;
            if (!v47)
            {
              v43 = 2 * v9 + 2;
            }
          }

          v40 = *(v10 + 8);
          v14 = v40 == *(&v50 + 1);
          v41 = v40 < *(&v50 + 1);
          if (v14)
          {
            v41 = *(v10 + 128) > v60;
          }

          v5 = v42;
          v9 = v43;
        }

        while (!v41);
        sub_63A54C(v42, &v50);
        sub_53A868(&v91);
        sub_53A868(&v76);
        sub_53A868(&v61);
        if (SHIBYTE(v58) < 0)
        {
          operator delete(__p[0]);
          if ((SHIBYTE(v55) & 0x80000000) == 0)
          {
LABEL_32:
            v49 = v52;
            if (v52 == -1)
            {
              return;
            }

LABEL_36:
            (off_266BE00[v49])(v106, v51);
            return;
          }
        }

        else if ((SHIBYTE(v55) & 0x80000000) == 0)
        {
          goto LABEL_32;
        }

        operator delete(v54[0]);
        v49 = v52;
        if (v52 == -1)
        {
          return;
        }

        goto LABEL_36;
      }
    }
  }
}