void sub_A2B948(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_42F8B4(va);
  _Unwind_Resume(a1);
}

void sub_A2B95C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v16 = *v14;
  if (*v14)
  {
    *(v14 + 8) = v16;
    operator delete(v16);
  }

  a14 = v14;
  sub_42F8B4(&a12);
  _Unwind_Resume(a1);
}

uint64_t sub_A2B988(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 40);
    if (v3 != v2)
    {
      v5 = *(a1 + 48);
      do
      {
        v7 = *(v5 - 24);
        v5 -= 24;
        v6 = v7;
        if (v7)
        {
          *(v3 - 16) = v6;
          operator delete(v6);
        }

        v3 = v5;
      }

      while (v5 != v2);
      v4 = *(a1 + 40);
    }

    *(a1 + 48) = v2;
    operator delete(v4);
  }

  v8 = *(a1 + 16);
  if (v8)
  {
    do
    {
      v11 = *v8;
      v12 = v8[2];
      if (v12)
      {
        v8[3] = v12;
        operator delete(v12);
      }

      operator delete(v8);
      v8 = v11;
    }

    while (v11);
  }

  v9 = *a1;
  *a1 = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return a1;
}

void *sub_A2BA40(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_3B4B4(a1, a2);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_35;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v8)
    {
      v10 = v6 % *&v8;
    }
  }

  else
  {
    v10 = (*&v8 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (result = *v11) == 0)
  {
LABEL_35:
    sub_A2BE18();
  }

  v13 = *(a2 + 8) - *a2;
  if (v9.u32[0] < 2uLL)
  {
    while (1)
    {
      v18 = result[1];
      if (v18 == v7)
      {
        v20 = result[2];
        v19 = result[3];
        if (v19 - v20 == v13)
        {
          if (v20 == v19)
          {
            return result;
          }

          for (i = *a2; *v20 == *i && *(v20 + 1) == i[1] && *(v20 + 2) == i[2]; i += 3)
          {
            v20 += 12;
            if (v20 == v19)
            {
              return result;
            }
          }
        }
      }

      else if ((v18 & (*&v8 - 1)) != v10)
      {
        goto LABEL_35;
      }

      result = *result;
      if (!result)
      {
        goto LABEL_35;
      }
    }
  }

  while (1)
  {
    v14 = result[1];
    if (v14 == v7)
    {
      break;
    }

    if (v14 >= *&v8)
    {
      v14 %= *&v8;
    }

    if (v14 != v10)
    {
      goto LABEL_35;
    }

LABEL_12:
    result = *result;
    if (!result)
    {
      goto LABEL_35;
    }
  }

  v16 = result[2];
  v15 = result[3];
  if (v15 - v16 != v13)
  {
    goto LABEL_12;
  }

  if (v16 != v15)
  {
    for (j = *a2; *v16 == *j && *(v16 + 1) == j[1] && *(v16 + 2) == j[2]; j += 3)
    {
      v16 += 12;
      if (v16 == v15)
      {
        return result;
      }
    }

    goto LABEL_12;
  }

  return result;
}

void sub_A2BE04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_9BB5DC(va);
  _Unwind_Resume(a1);
}

void sub_A2BF08(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    *(v2 + 24) = v5;
    operator delete(v5);
  }

  sub_9BB5DC(v1);
  _Unwind_Resume(a1);
}

void sub_A2BF2C()
{
  v1 = 7;
  strcpy(v0, "UNKNOWN");
  v2 = 0;
  v4 = 14;
  strcpy(v3, "ROUTES_THROUGH");
  v5 = 1;
  v7 = 9;
  strcpy(__p, "ROUTES_TO");
  v8 = 3;
  v10 = 11;
  strcpy(v9, "ROUTES_FROM");
  v11 = 2;
  xmmword_27B3E08 = 0u;
  unk_27B3E18 = 0u;
  dword_27B3E28 = 1065353216;
  sub_3A9A34(&xmmword_27B3E08, v0, v0);
  sub_3A9A34(&xmmword_27B3E08, v3, v3);
  sub_3A9A34(&xmmword_27B3E08, __p, __p);
  sub_3A9A34(&xmmword_27B3E08, v9, v9);
  if (v10 < 0)
  {
    operator delete(v9[0]);
    if ((v7 & 0x80000000) == 0)
    {
LABEL_3:
      if ((v4 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p[0]);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_4:
    if ((v1 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    operator delete(v0[0]);
LABEL_5:
    qword_27B3DE0 = 0;
    qword_27B3DE8 = 0;
    qword_27B3DD8 = 0;
    operator new();
  }

LABEL_8:
  operator delete(v3[0]);
  if ((v1 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  goto LABEL_9;
}

void sub_A2C174(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B3DF0)
  {
    qword_27B3DF8 = qword_27B3DF0;
    operator delete(qword_27B3DF0);
  }

  _Unwind_Resume(exception_object);
}

void sub_A2C414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_506524((v9 + 24));
  sub_3B889C(&a9);
  sub_1F1A8(v10 - 64);
  sub_1F1A8(v9);
  _Unwind_Resume(a1);
}

void sub_A2C464(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t sub_A2C494@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_7E9A4(v88);
  if (!sub_C7C6B0(*(a1 + 16), a2))
  {
    result = sub_7E7E4(3u);
    if (!result)
    {
LABEL_25:
      *a3 = 0;
      *(a3 + 8) = 1;
      *(a3 + 16) = &off_2669FE0;
      return result;
    }

    sub_19594F8(&v37);
    sub_4A5C(&v37, "Inconsistent request provided to journey planner; failing request.", 66);
    if ((v44 & 0x10) != 0)
    {
      v32 = *(&v43 + 1);
      if (*(&v43 + 1) < v41)
      {
        *(&v43 + 1) = v41;
        v32 = v41;
      }

      v33 = v40;
      v9 = v32 - v40;
      if ((v32 - v40) > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_27;
      }
    }

    else
    {
      if ((v44 & 8) == 0)
      {
        v8 = a3;
        v9 = 0;
        HIBYTE(v36) = 0;
LABEL_20:
        *(v35 + v9) = 0;
        sub_7E854(v35, 3u);
        if (SHIBYTE(v36) < 0)
        {
          operator delete(v35[0]);
        }

        if (SBYTE7(v43) < 0)
        {
          operator delete(v42);
        }

        std::locale::~locale(&v38);
        std::ostream::~ostream();
        result = std::ios::~ios();
        a3 = v8;
        goto LABEL_25;
      }

      v33 = *(&v38 + 1);
      v9 = *(&v39 + 1) - *(&v38 + 1);
      if (*(&v39 + 1) - *(&v38 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
      {
LABEL_27:
        sub_3244();
      }
    }

    v8 = a3;
    if (v9 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v36) = v9;
    if (v9)
    {
      memmove(v35, v33, v9);
    }

    goto LABEL_20;
  }

  sub_CC3658(&v37);
  v87 = 0;
  *v86 = 0u;
  v6 = a2[8] - a2[7];
  if (v6)
  {
    v34 = 0;
    do
    {
      if (a2[11] != a2[10])
      {
        sub_A2DA54(a1);
      }

      ++v34;
    }

    while (v34 != 0x8E38E38E38E38E39 * (v6 >> 5));
  }

  v10 = sub_7EA60(v88);
  *a3 = 1;
  v11 = v56;
  *(a3 + 56) = v40;
  v12 = v54;
  *&v37 = v10;
  v13 = v37;
  *(a3 + 24) = v38;
  *(a3 + 8) = v13;
  *(a3 + 40) = v39;
  v14 = v52;
  *(a3 + 224) = v51;
  *(a3 + 240) = v14;
  *(a3 + 256) = v53;
  *(a3 + 272) = v12;
  v15 = v48;
  *(a3 + 160) = v47;
  *(a3 + 176) = v15;
  v16 = v50;
  *(a3 + 192) = v49;
  *(a3 + 208) = v16;
  v17 = v44;
  *(a3 + 96) = v43;
  *(a3 + 112) = v17;
  v18 = v46;
  *(a3 + 128) = v45;
  *(a3 + 144) = v18;
  v19 = v42;
  *(a3 + 64) = v41;
  *(a3 + 80) = v19;
  *(a3 + 288) = v55;
  *(a3 + 304) = v11;
  v20 = v62;
  *(a3 + 376) = v61;
  *(a3 + 392) = v20;
  v21 = v64;
  *(a3 + 408) = v63;
  *(a3 + 424) = v21;
  v22 = v58;
  *(a3 + 312) = v57;
  *(a3 + 328) = v22;
  v23 = v60;
  *(a3 + 344) = v59;
  *(a3 + 360) = v23;
  v24 = v66;
  *(a3 + 440) = v65;
  *(a3 + 456) = v24;
  v25 = v69;
  *(a3 + 472) = v67;
  *(a3 + 480) = v68;
  *(a3 + 496) = v25;
  v26 = v75;
  *(a3 + 568) = v74;
  *(a3 + 584) = v26;
  v27 = v77;
  *(a3 + 600) = v76;
  *(a3 + 616) = v27;
  v28 = v71;
  *(a3 + 504) = v70;
  *(a3 + 520) = v28;
  v29 = v73;
  *(a3 + 536) = v72;
  *(a3 + 552) = v29;
  result = memcpy((a3 + 632), v78, 0x220uLL);
  *(a3 + 1176) = v79;
  v30 = v81;
  *(a3 + 1216) = v82;
  v31 = v84;
  *(a3 + 1232) = v83;
  *(a3 + 1248) = v31;
  *(a3 + 1192) = v80;
  *(a3 + 1264) = v85;
  *(a3 + 1200) = v30;
  *(a3 + 1272) = *v86;
  *(a3 + 1288) = v87;
  return result;
}

void sub_A2D870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a39 < 0)
  {
    operator delete(__p);
    sub_1959728(&STACK[0x260]);
    _Unwind_Resume(a1);
  }

  sub_1959728(&STACK[0x260]);
  _Unwind_Resume(a1);
}

void sub_A2D8BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *__p, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_1959728(&a34);
  sub_A30CBC(&a65);
  sub_A31C9C(&STACK[0x260]);
  _Unwind_Resume(a1);
}

void sub_A2D968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_A31C48(&a34);
  sub_A30CBC(&a65);
  sub_A31C9C(&STACK[0x260]);
  _Unwind_Resume(a1);
}

void sub_A2D98C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x758] = v65;
  sub_A30CBC(&a65);
  sub_A31C9C(&STACK[0x260]);
  _Unwind_Resume(a1);
}

void sub_A2D9AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void **a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, void *__p, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a40)
  {
    operator delete(a40);
  }

  sub_A3091C(a20);
  sub_A30CBC(&a65);
  sub_A31C9C(&STACK[0x260]);
  _Unwind_Resume(a1);
}

void sub_A2D9F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_A30CBC(&a65);
  sub_A31C9C(&STACK[0x260]);
  _Unwind_Resume(a1);
}

void sub_A2DA54(uint64_t a1)
{
  sub_CC3658(v25);
  v6 = v25[1];
  *(a1 + 4280) = v25[0];
  *(a1 + 4296) = v6;
  v7 = (a1 + 4312);
  if (*(a1 + 4335) < 0)
  {
    operator delete(*v7);
  }

  *v7 = v26;
  *(a1 + 4328) = v27;
  HIBYTE(v27) = 0;
  LOBYTE(v26) = 0;
  *(a1 + 4496) = v38;
  *(a1 + 4512) = v39;
  *(a1 + 4528) = v40;
  *(a1 + 4432) = v34;
  *(a1 + 4448) = v35;
  *(a1 + 4464) = v36;
  *(a1 + 4480) = v37;
  *(a1 + 4368) = v30;
  *(a1 + 4384) = v31;
  *(a1 + 4400) = v32;
  *(a1 + 4416) = v33;
  *(a1 + 4336) = v28;
  *(a1 + 4352) = v29;
  *(a1 + 4544) = v41;
  v8 = (a1 + 4560);
  if (*(a1 + 4583) < 0)
  {
    operator delete(*v8);
  }

  *v8 = v42;
  *(a1 + 4576) = v43;
  HIBYTE(v43) = 0;
  LOBYTE(v42) = 0;
  v9 = v49;
  *(a1 + 4648) = v48;
  *(a1 + 4664) = v9;
  v10 = v51;
  *(a1 + 4680) = v50;
  *(a1 + 4696) = v10;
  v11 = v45;
  *(a1 + 4584) = v44;
  *(a1 + 4600) = v11;
  v12 = v47;
  *(a1 + 4616) = v46;
  *(a1 + 4632) = v12;
  v13 = v53;
  *(a1 + 4712) = v52;
  *(a1 + 4728) = v13;
  *(a1 + 4744) = v54;
  v14 = (a1 + 4752);
  if (*(a1 + 4775) < 0)
  {
    operator delete(*v14);
  }

  *(a1 + 4768) = v56;
  *v14 = v55;
  HIBYTE(v56) = 0;
  LOBYTE(v55) = 0;
  v15 = v62;
  *(a1 + 4840) = v61;
  *(a1 + 4856) = v15;
  v16 = v64;
  *(a1 + 4872) = v63;
  *(a1 + 4888) = v16;
  v17 = v58;
  *(a1 + 4776) = v57;
  *(a1 + 4792) = v17;
  v18 = v60;
  *(a1 + 4808) = v59;
  *(a1 + 4824) = v18;
  memcpy((a1 + 4904), v65, 0x220uLL);
  v19 = (a1 + 5448);
  if (*(a1 + 5471) < 0)
  {
    operator delete(*(a1 + 5448));
    *v19 = v66;
    v22 = v68;
    *(a1 + 5488) = v69;
    v23 = v71;
    *(a1 + 5504) = v70;
    *(a1 + 5520) = v23;
    v24 = SHIBYTE(v56);
    *(a1 + 5464) = v67;
    HIBYTE(v67) = 0;
    LOBYTE(v66) = 0;
    *(a1 + 5536) = v72;
    *(a1 + 5472) = v22;
    if (v24 < 0)
    {
      operator delete(v55);
      if (SHIBYTE(v43) < 0)
      {
        goto LABEL_15;
      }
    }

    else if (SHIBYTE(v43) < 0)
    {
      goto LABEL_15;
    }
  }

  else
  {
    *v19 = v66;
    v20 = v68;
    *(a1 + 5488) = v69;
    v21 = v71;
    *(a1 + 5504) = v70;
    *(a1 + 5520) = v21;
    *(a1 + 5464) = v67;
    HIBYTE(v67) = 0;
    LOBYTE(v66) = 0;
    *(a1 + 5536) = v72;
    *(a1 + 5472) = v20;
    if (SHIBYTE(v43) < 0)
    {
LABEL_15:
      operator delete(v42);
      if ((SHIBYTE(v27) & 0x80000000) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_16;
    }
  }

  if ((SHIBYTE(v27) & 0x80000000) == 0)
  {
    goto LABEL_13;
  }

LABEL_16:
  operator delete(v26);
LABEL_13:
  sub_C9E4D8(a1 + 3920);
  operator new();
}

void sub_A2EA74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 q0_0, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48, void *a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58)
{
  if (SLOBYTE(STACK[0x967]) < 0)
  {
    operator delete(STACK[0x950]);
  }

  sub_A300F8(&a15, q0_0);
  if (a48)
  {
    a49 = a48;
    operator delete(a48);
    sub_A324A8(&a58);
    _Unwind_Resume(a1);
  }

  sub_A324A8(&a58);
  _Unwind_Resume(a1);
}

void sub_A2EBFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 > 27)
  {
    if ((v2 - 28) >= 2)
    {
      if ((v2 - 35) >= 2)
      {
        if (v2 != 40 || !sub_7E7E4(1u))
        {
          return;
        }

        sub_19594F8(&v16);
        sub_4A5C(&v16, "Transit journey planner solution aborted for the time point being out of the validity period of the data", 104);
        if ((v26 & 0x10) != 0)
        {
          v11 = v25;
          if (v25 < v22)
          {
            v25 = v22;
            v11 = v22;
          }

          v12 = &v21;
        }

        else
        {
          if ((v26 & 8) == 0)
          {
            v3 = 0;
            v15 = 0;
            goto LABEL_78;
          }

          v12 = v19;
          v11 = v20;
        }

        v6 = *v12;
        v3 = v11 - *v12;
        if (v3 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_3244();
        }

        if (v3 >= 0x17)
        {
          operator new();
        }

        v15 = v11 - *v12;
        if (!v3)
        {
          goto LABEL_78;
        }
      }

      else
      {
        if (!sub_7E7E4(1u))
        {
          return;
        }

        sub_19594F8(&v16);
        sub_4A5C(&v16, "Transit journey planner solution aborted for the destination being out of transit coverage", 90);
        if ((v26 & 0x10) != 0)
        {
          v8 = v25;
          if (v25 < v22)
          {
            v25 = v22;
            v8 = v22;
          }

          v6 = v21;
          v3 = v8 - v21;
          if (v8 - v21 > 0x7FFFFFFFFFFFFFF7)
          {
            goto LABEL_62;
          }
        }

        else
        {
          if ((v26 & 8) == 0)
          {
            v3 = 0;
            v15 = 0;
LABEL_78:
            *(&__p + v3) = 0;
            sub_7E854(&__p, 1u);
            goto LABEL_79;
          }

          v6 = v19[0];
          v3 = v20 - v19[0];
          if (v20 - v19[0] > 0x7FFFFFFFFFFFFFF7)
          {
LABEL_62:
            sub_3244();
          }
        }

        if (v3 >= 0x17)
        {
          operator new();
        }

        v15 = v3;
        if (!v3)
        {
          goto LABEL_78;
        }
      }

LABEL_77:
      memmove(&__p, v6, v3);
      goto LABEL_78;
    }

    if (!sub_7E7E4(1u))
    {
      return;
    }

    sub_19594F8(&v16);
    sub_4A5C(&v16, "Transit journey planner solution aborted for the origin being out of transit coverage", 85);
    if ((v26 & 0x10) != 0)
    {
      v5 = v25;
      if (v25 < v22)
      {
        v25 = v22;
        v5 = v22;
      }

      v6 = v21;
      v3 = v5 - v21;
      if (v5 - v21 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_55;
      }
    }

    else
    {
      if ((v26 & 8) == 0)
      {
        v3 = 0;
        v15 = 0;
        goto LABEL_78;
      }

      v6 = v19[0];
      v3 = v20 - v19[0];
      if (v20 - v19[0] > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_55:
        sub_3244();
      }
    }

    if (v3 >= 0x17)
    {
      operator new();
    }

    v15 = v3;
    if (!v3)
    {
      goto LABEL_78;
    }

    goto LABEL_77;
  }

  if ((v2 - 18) < 2)
  {
    if (!sub_7E7E4(1u))
    {
      return;
    }

    sub_19594F8(&v16);
    sub_4A5C(&v16, "Transit journey planner solution aborted for being out of transit coverage", 74);
    if ((v26 & 0x10) != 0)
    {
      v7 = v25;
      if (v25 < v22)
      {
        v25 = v22;
        v7 = v22;
      }

      v6 = v21;
      v3 = v7 - v21;
      if (v7 - v21 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_57;
      }
    }

    else
    {
      if ((v26 & 8) == 0)
      {
        v3 = 0;
        v15 = 0;
        goto LABEL_78;
      }

      v6 = v19[0];
      v3 = v20 - v19[0];
      if (v20 - v19[0] > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_57:
        sub_3244();
      }
    }

    if (v3 >= 0x17)
    {
      operator new();
    }

    v15 = v3;
    if (!v3)
    {
      goto LABEL_78;
    }

    goto LABEL_77;
  }

  if (v2 != 3 || !sub_7E7E4(3u))
  {
    return;
  }

  sub_19594F8(&v16);
  sub_4A5C(&v16, "Transit journey planner produced an inconsistent solution", 57);
  if ((v26 & 0x10) != 0)
  {
    v9 = v25;
    if (v25 < v22)
    {
      v25 = v22;
      v9 = v22;
    }

    v10 = &v21;
    goto LABEL_64;
  }

  if ((v26 & 8) != 0)
  {
    v10 = v19;
    v9 = v20;
LABEL_64:
    v13 = *v10;
    v4 = v9 - *v10;
    if (v4 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v4 >= 0x17)
    {
      operator new();
    }

    v15 = v9 - *v10;
    if (v4)
    {
      memmove(&__p, v13, v4);
    }

    goto LABEL_70;
  }

  v4 = 0;
  v15 = 0;
LABEL_70:
  *(&__p + v4) = 0;
  sub_7E854(&__p, 3u);
LABEL_79:
  if (v15 < 0)
  {
    operator delete(__p);
  }

  if (v24 < 0)
  {
    operator delete(v23);
  }

  std::locale::~locale(&v18);
  std::ostream::~ostream();
  std::ios::~ios();
}

void sub_A2F2E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1959728(&a15);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a15);
  _Unwind_Resume(a1);
}

void sub_A2F4D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A2F4F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(*a1 + 25) == 1)
  {
    sub_7E974(a1 + 4256);
    operator new();
  }

  return 0;
}

void sub_A2F620(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_A2F63C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = __chkstk_darwin(a1, a2, a3, a4, a5, a6, a7, a8);
  v10 = v9;
  v12 = v11;
  v13 = v8;
  v14 = *v8;
  v15 = *(*v8 + 27) & *(v11 + 188);
  if (v15)
  {
    v16 = *(v14 + 28);
    if (*(v14 + 29) != 1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v16 = 0;
    if (*(v14 + 29) != 1)
    {
LABEL_3:
      v17 = 0;
      v20.__t_ = 0;
      v21 = 0;
      v22 = 0;
      if ((v16 & 1) == 0)
      {
        goto LABEL_14;
      }

LABEL_13:
      sub_C9E54C(v13 + 3920, 0);
      sub_A35B68(&v20, v13, v12, v10);
    }
  }

  if (*(v14 + 13))
  {
    v17 = 0;
    if (!sub_3B68A0(v8[2]))
    {
      v20.__t_ = 0;
      v21 = 0;
      v22 = 0;
      if (v16)
      {
        goto LABEL_13;
      }

LABEL_14:
      if (v17)
      {
        v19 = 2;
      }

      else
      {
        v19 = v15 & 1;
      }

      sub_C9E54C(v13 + 3920, v19);
      sub_A36188(v13, v12, v10);
    }

    if (*(v12 + 184) == 1)
    {
      v17 = 1;
      v18 = v16 | *(*v13 + 57);
      v20.__t_ = 0;
      v21 = 0;
      v22 = 0;
      if (v18)
      {
        goto LABEL_13;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v17 = 0;
  }

  v20.__t_ = 0;
  v21 = 0;
  v22 = 0;
  if ((v16 & 1) == 0)
  {
    goto LABEL_14;
  }

  goto LABEL_13;
}

void sub_A2F874(_Unwind_Exception *a1, __n128 a2)
{
  sub_A30180(&STACK[0x5F8], a2);
  sub_A30180(&STACK[0xBF0], v4);
  sub_A35904((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_A2F908(void **a1, uint64_t a2, uint64_t a3)
{
  v13 = 0;
  v16 = 0;
  v14 = 0;
  v15 = 0;
  v12 = 0;
  LOBYTE(__p) = 0;
  sub_CC9264(&v17, &__p);
  if (v12 < 0)
  {
    operator delete(__p);
  }

  v18 = 0;
  *v19 = 0u;
  *v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0;
  v7 = *a1;
  if (*(*a1 + 27) == 1 && *(a2 + 188) == 1)
  {
    v8 = v7[28] ^ 1;
    if (*(a2 + 184) != 1)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v8 = 0;
    if (*(a2 + 184) != 1)
    {
      goto LABEL_12;
    }
  }

  if (v7[29] == 1)
  {
    v9 = v8;
    v10 = sub_3B68A0(a1[2]);
    v8 = v9;
    if (v10)
    {
      if (*(*a1 + 13) == 2)
      {
        v8 = 2;
      }
    }
  }

LABEL_12:
  sub_C9E54C((a1 + 490), v8);
  sub_A36188(a1, a2, a3);
}

void sub_A2FE48(_Unwind_Exception *a1, __n128 a2)
{
  sub_A30180(&STACK[0x5F8], a2);
  sub_A300F8(&STACK[0xBF0], v3);
  _Unwind_Resume(a1);
}

void sub_A2FF04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(*a1 + 124) == 1)
  {
    sub_7E974(a1 + 4256);
    operator new();
  }
}

void sub_A300BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  *(v21 + 248) = v22;
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A300F8(uint64_t a1, __n128 a2)
{
  v7 = (a1 + 240);
  sub_A31F30(&v7);
  v3 = *(a1 + 216);
  if (v3)
  {
    *(a1 + 224) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 192);
  if (v4)
  {
    *(a1 + 200) = v4;
    operator delete(v4);
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v5 = *(a1 + 8);
  if (v5)
  {
    sub_A32000(a1 + 8, v5);
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_A30180(uint64_t a1, __n128 a2)
{
  if (*(a1 + 1455) < 0)
  {
    operator delete(*(a1 + 1432));
    if ((*(a1 + 759) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(a1 + 567) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((*(a1 + 759) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 736));
  if ((*(a1 + 567) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(a1 + 319) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(*(a1 + 544));
  if ((*(a1 + 319) & 0x80000000) == 0)
  {
LABEL_5:
    v7 = (a1 + 240);
    sub_A31F30(&v7);
    v3 = *(a1 + 216);
    if (!v3)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_17:
  operator delete(*(a1 + 296));
  v7 = (a1 + 240);
  sub_A31F30(&v7);
  v3 = *(a1 + 216);
  if (v3)
  {
LABEL_6:
    *(a1 + 224) = v3;
    operator delete(v3);
  }

LABEL_7:
  v4 = *(a1 + 192);
  if (v4)
  {
    *(a1 + 200) = v4;
    operator delete(v4);
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v5 = *(a1 + 8);
  if (v5)
  {
    sub_A32000(a1 + 8, v5);
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_A3027C(uint64_t result, uint64_t a2)
{
  v3 = result;
  *result = *a2;
  if (result == a2)
  {
    v6 = *(a2 + 56);
    v7 = *(a2 + 72);
    v8 = *(a2 + 88);
    *(result + 104) = *(a2 + 104);
    *(result + 88) = v8;
    *(result + 72) = v7;
    *(result + 56) = v6;
    v9 = *(a2 + 120);
    v10 = *(a2 + 136);
    v11 = *(a2 + 152);
    *(result + 168) = *(a2 + 168);
    *(result + 152) = v11;
    *(result + 136) = v10;
    *(result + 120) = v9;
    *(result + 184) = *(a2 + 184);
  }

  else
  {
    sub_A33A78((result + 8), *(a2 + 8), *(a2 + 16), 0x14C1BACF914C1BADLL * ((*(a2 + 16) - *(a2 + 8)) >> 3));
    v4 = *(a2 + 55);
    if (*(v3 + 55) < 0)
    {
      if (v4 >= 0)
      {
        v12 = (a2 + 32);
      }

      else
      {
        v12 = *(a2 + 32);
      }

      if (v4 >= 0)
      {
        v13 = *(a2 + 55);
      }

      else
      {
        v13 = *(a2 + 40);
      }

      sub_13B38((v3 + 32), v12, v13);
    }

    else if ((*(a2 + 55) & 0x80) != 0)
    {
      sub_13A68((v3 + 32), *(a2 + 32), *(a2 + 40));
    }

    else
    {
      v5 = *(a2 + 32);
      *(v3 + 48) = *(a2 + 48);
      *(v3 + 32) = v5;
    }

    v14 = *(a2 + 56);
    v15 = *(a2 + 72);
    v16 = *(a2 + 88);
    *(v3 + 104) = *(a2 + 104);
    *(v3 + 88) = v16;
    *(v3 + 72) = v15;
    *(v3 + 56) = v14;
    v17 = *(a2 + 120);
    v18 = *(a2 + 136);
    v19 = *(a2 + 152);
    *(v3 + 168) = *(a2 + 168);
    *(v3 + 152) = v19;
    *(v3 + 136) = v18;
    *(v3 + 120) = v17;
    *(v3 + 184) = *(a2 + 184);
    sub_A34DB4((v3 + 192), *(a2 + 192), *(a2 + 200), (*(a2 + 200) - *(a2 + 192)) >> 3);
    sub_31F64((v3 + 216), *(a2 + 216), *(a2 + 224), (*(a2 + 224) - *(a2 + 216)) >> 3);
    sub_A34F14((v3 + 240), *(a2 + 240), *(a2 + 248), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 248) - *(a2 + 240)) >> 5));
    return v3;
  }

  return result;
}

void sub_A30418(uint64_t *a1, __int128 *a2, uint64_t a3, __int128 *a4)
{
  v9 = *a2;
  *a2 = 0uLL;
  v4 = *a4;
  v5 = a4[1];
  *a4 = 0uLL;
  v8[0] = v4;
  v8[1] = v5;
  a4[1] = 0uLL;
  v6 = a4[2];
  v7 = a4[3];
  a4[2] = 0uLL;
  v8[2] = v6;
  v8[3] = v7;
  a4[3] = 0uLL;
  v8[4] = a4[4];
  a4[4] = 0uLL;
  sub_A30554(a1, &v9, a3, v8);
}

void sub_A30538(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_3B889C(&a9);
  sub_1F1A8(v9 - 32);
  _Unwind_Resume(a1);
}

void sub_A30554(uint64_t *a1, uint64_t a2, char a3, uint64_t a4)
{
  *a1 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a1 + 16) = sub_2D5658(*a1);
  *(a1 + 17) = a3;
  v7 = *a1;
  v6 = a1[1];
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = 0;
  a1[3] = v7;
  a1[4] = v6;
  do
  {
    v9 = &a1[v8];
    *(v9 + 10) = 0;
    *(v9 + 16) = 0;
    v9[6] = 0;
    v9[9] = 0;
    v8 += 6;
  }

  while (v8 != 480);
  *(a1 + 485) = 0u;
  sub_C9E2C0((a1 + 487));
}

void sub_A306C0(_Unwind_Exception *a1)
{
  sub_1F1A8(v1 + 24);
  sub_1F1A8(v1);
  _Unwind_Resume(a1);
}

void sub_A306F0(_Unwind_Exception *a1)
{
  sub_3B889C(v2);
  sub_A3071C(v1 + 3896);
  sub_1F1A8(v1 + 24);
  sub_1F1A8(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_A3071C(uint64_t result)
{
  v1 = *(result + 24);
  *(result + 24) = 0;
  if (v1)
  {
    v2 = v1[2];
    if (v2)
    {
      do
      {
        v3 = *v2;
        sub_A307A8(v1, v2 + 2);
        operator delete(v2);
        v2 = v3;
      }

      while (v3);
    }

    v4 = *v1;
    *v1 = 0;
    if (v4)
    {
      operator delete(v4);
    }

    operator delete();
  }

  return result;
}

void sub_A307A8(uint64_t a1, void *a2)
{
  v3 = a2[11];
  a2[11] = 0;
  if (v3)
  {
    v4 = *v3;
    if (*v3)
    {
      *(v3 + 8) = v4;
      operator delete(v4);
    }

    operator delete();
  }

  v5 = a2[8];
  if (v5)
  {
    a2[9] = v5;
    operator delete(v5);
  }

  v6 = a2[5];
  if (v6)
  {
    a2[6] = v6;
    operator delete(v6);
  }

  v7 = a2[2];
  if (v7)
  {
    a2[3] = v7;

    operator delete(v7);
  }
}

void *sub_A30844(void *a1)
{
  v2 = a1[529];
  if (v2)
  {
    v3 = a1[530];
    v4 = a1[529];
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
      v4 = a1[529];
    }

    a1[530] = v2;
    operator delete(v4);
  }

  sub_506524(a1 + 3);
  v6 = a1[1];
  if (!v6 || atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v6->__on_zero_shared)(v6);
  std::__shared_weak_count::__release_weak(v6);
  return a1;
}

void **sub_A3091C(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = v2;
    if (v3 != v2)
    {
      do
      {
        v3 = sub_A30978(v3 - 29);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void *sub_A30978(void *a1)
{
  v2 = a1[26];
  if (v2)
  {
    v3 = a1[27];
    v4 = a1[26];
    if (v3 != v2)
    {
      do
      {
        v3 -= 80;
        sub_3ED230(v3);
      }

      while (v3 != v2);
      v4 = a1[26];
    }

    a1[27] = v2;
    operator delete(v4);
  }

  v5 = a1[21];
  if (v5)
  {
    a1[22] = v5;
    operator delete(v5);
  }

  v6 = a1[15];
  if (v6)
  {
    a1[16] = v6;
    operator delete(v6);
  }

  v7 = a1[12];
  if (v7)
  {
    a1[13] = v7;
    operator delete(v7);
  }

  v8 = a1[9];
  if (v8)
  {
    a1[10] = v8;
    operator delete(v8);
  }

  v10 = (a1 + 6);
  sub_A30A34(&v10);
  return a1;
}

void sub_A30A34(void ****a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v20 = a1;
      v21 = v1;
      do
      {
        v7 = *(v4 - 5);
        if (v7)
        {
          *(v4 - 4) = v7;
          operator delete(v7);
        }

        v8 = v4 - 8;
        v9 = *(v4 - 8);
        if (v9)
        {
          v10 = *(v4 - 7);
          v6 = *(v4 - 8);
          if (v10 != v9)
          {
            do
            {
              v12 = *(v10 - 5);
              if (v12)
              {
                *(v10 - 4) = v12;
                operator delete(v12);
              }

              v13 = *(v10 - 8);
              if (v13)
              {
                *(v10 - 7) = v13;
                operator delete(v13);
              }

              v14 = *(v10 - 11);
              if (v14)
              {
                *(v10 - 10) = v14;
                operator delete(v14);
              }

              v15 = *(v10 - 14);
              if (v15)
              {
                *(v10 - 13) = v15;
                operator delete(v15);
              }

              v16 = *(v10 - 17);
              if (v16)
              {
                v17 = *(v10 - 16);
                v11 = *(v10 - 17);
                if (v17 != v16)
                {
                  do
                  {
                    v18 = v17 - 1136;
                    v19 = *(v17 - 8);
                    if (v19 != -1)
                    {
                      (off_2670058[v19])(&v22, v17 - 1136);
                    }

                    *(v17 - 8) = -1;
                    v17 -= 1136;
                  }

                  while (v18 != v16);
                  v11 = *(v10 - 17);
                }

                *(v10 - 16) = v16;
                operator delete(v11);
              }

              v10 -= 144;
            }

            while (v10 != v9);
            v6 = *v8;
          }

          *(v4 - 7) = v9;
          operator delete(v6);
        }

        v4 -= 8;
      }

      while (v8 != v2);
      v5 = **v20;
      v1 = v21;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void **sub_A30BB8(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = v2;
    if (v3 != v2)
    {
      do
      {
        v3 = sub_9FFEB4(v3 - 18);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

char **sub_A30C14(char **a1)
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
        v5 = v3 - 1136;
        v6 = *(v3 - 2);
        if (v6 != -1)
        {
          (off_2670058[v6])(&v8, v3 - 1136);
        }

        *(v3 - 2) = -1;
        v3 -= 1136;
      }

      while (v5 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void *sub_A30CBC(void *a1)
{
  v2 = a1[14];
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = *(v2 + 12);
      if (v4 != -1)
      {
        (off_2670080[v4])(&v12, v2 + 5);
      }

      *(v2 + 12) = -1;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = a1[12];
  a1[12] = 0;
  if (v5)
  {
    operator delete(v5);
  }

  v6 = a1[9];
  if (v6)
  {
    a1[10] = v6;
    operator delete(v6);
  }

  v7 = a1[6];
  if (v7)
  {
    a1[7] = v7;
    operator delete(v7);
  }

  v8 = a1[3];
  if (v8)
  {
    v9 = a1[4];
    v10 = a1[3];
    if (v9 != v8)
    {
      do
      {
        v9 = sub_A30978(v9 - 29);
      }

      while (v9 != v8);
      v10 = a1[3];
    }

    a1[4] = v8;
    operator delete(v10);
  }

  return a1;
}

uint64_t sub_A30DC4(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  sub_A30F68(a1 + 24, *(a2 + 3), *(a2 + 4), 0x34F72C234F72C235 * ((*(a2 + 4) - *(a2 + 3)) >> 3));
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v6 = *(a2 + 6);
  v5 = *(a2 + 7);
  if (v5 != v6)
  {
    if (((v5 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  v8 = *(a2 + 9);
  v7 = *(a2 + 10);
  if (v7 != v8)
  {
    if (((v7 - v8) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  sub_5ADDC(a1 + 96, (a2 + 6));
  return a1;
}

void sub_A30F08(_Unwind_Exception *a1)
{
  v6 = *v4;
  if (*v4)
  {
    *(v2 + 80) = v6;
    operator delete(v6);
    v7 = *v3;
    if (!*v3)
    {
LABEL_3:
      sub_A3091C(v1);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v7 = *v3;
    if (!*v3)
    {
      goto LABEL_3;
    }
  }

  *(v2 + 56) = v7;
  operator delete(v7);
  sub_A3091C(v1);
  _Unwind_Resume(a1);
}

void sub_A30F68(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x11A7B9611A7B962)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_A31050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (v12)
  {
    v14 = (v11 - 232);
    v15 = -v12;
    do
    {
      v14 = sub_A30978(v14) - 29;
      v15 += 232;
    }

    while (v15);
  }

  *(v9 + 8) = v10;
  sub_A31BD0(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_A31084(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = a2[1];
  *(a1 + 30) = *(a2 + 30);
  *a1 = v4;
  *(a1 + 16) = v5;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  sub_A313B0(a1 + 48, *(a2 + 6), *(a2 + 7), (*(a2 + 7) - *(a2 + 6)) >> 6);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  v7 = *(a2 + 9);
  v6 = *(a2 + 10);
  if (v6 != v7)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v6 - v7) >> 2) <= 0x1555555555555555)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  v9 = *(a2 + 12);
  v8 = *(a2 + 13);
  if (v8 != v9)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v8 - v9) >> 2) <= 0x1555555555555555)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  v11 = *(a2 + 15);
  v10 = *(a2 + 16);
  if (v10 != v11)
  {
    if (0xCCCCCCCCCCCCCCCDLL * ((v10 - v11) >> 3) < 0x666666666666667)
    {
      operator new();
    }

    sub_1794();
  }

  v12 = a2[9];
  v13 = *(a2 + 157);
  *(a1 + 168) = 0;
  *(a1 + 157) = v13;
  *(a1 + 144) = v12;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  v15 = *(a2 + 21);
  v14 = *(a2 + 22);
  if (v14 != v15)
  {
    if (((v14 - v15) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v16 = a2[12];
  *(a1 + 208) = 0;
  *(a1 + 192) = v16;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  sub_3ECFD8(a1 + 208, *(a2 + 26), *(a2 + 27), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 27) - *(a2 + 26)) >> 4));
  return a1;
}

void sub_A312F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  v9 = *v7;
  if (*v7)
  {
    v3[22] = v9;
    operator delete(v9);
    v10 = *v6;
    if (!*v6)
    {
LABEL_3:
      v11 = *v5;
      if (!*v5)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v10 = *v6;
    if (!*v6)
    {
      goto LABEL_3;
    }
  }

  v3[16] = v10;
  operator delete(v10);
  v11 = *v5;
  if (!*v5)
  {
LABEL_4:
    v12 = *v4;
    if (!*v4)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  v3[13] = v11;
  operator delete(v11);
  v12 = *v4;
  if (!*v4)
  {
LABEL_5:
    sub_A30A34(va);
    _Unwind_Resume(a1);
  }

LABEL_9:
  v3[10] = v12;
  operator delete(v12);
  sub_A30A34(va);
  _Unwind_Resume(a1);
}

void sub_A313B0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 58))
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_A3149C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_A31A40(va);
  *(v10 + 8) = v11;
  sub_A30A34(&a9);
  _Unwind_Resume(a1);
}

void *sub_A314BC(void *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_A315D0(a1, *a2, a2[1], 0x8E38E38E38E38E39 * ((a2[1] - *a2) >> 4));
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  v5 = a2[3];
  v4 = a2[4];
  if (v4 != v5)
  {
    if (0xCCCCCCCCCCCCCCCDLL * ((v4 - v5) >> 3) < 0x666666666666667)
    {
      operator new();
    }

    sub_1794();
  }

  v6 = a2[6];
  *(a1 + 54) = *(a2 + 54);
  a1[6] = v6;
  return a1;
}

void sub_A315AC(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v4;
    operator delete(v4);
  }

  sub_A30BB8(v1);
  _Unwind_Resume(a1);
}

void sub_A315D0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x1C71C71C71C71C8)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_A316B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (v12)
  {
    v14 = (v11 - 144);
    v15 = -v12;
    do
    {
      v14 = sub_9FFEB4(v14) - 18;
      v15 += 144;
    }

    while (v15);
  }

  *(v9 + 8) = v10;
  sub_A319C8(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_A316EC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  sub_93BED8((a1 + 8), (a2 + 8));
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v5 = *(a2 + 32);
  v4 = *(a2 + 40);
  if (v4 != v5)
  {
    if ((0x6DB6DB6DB6DB6DB7 * ((v4 - v5) >> 2)) <= 0x924924924924924)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  v7 = *(a2 + 56);
  v6 = *(a2 + 64);
  if (v6 != v7)
  {
    if ((0x6DB6DB6DB6DB6DB7 * ((v6 - v7) >> 2)) <= 0x924924924924924)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  v9 = *(a2 + 80);
  v8 = *(a2 + 88);
  if (v8 != v9)
  {
    if ((0x6DB6DB6DB6DB6DB7 * ((v8 - v9) >> 2)) <= 0x924924924924924)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  v11 = *(a2 + 104);
  v10 = *(a2 + 112);
  if (v10 != v11)
  {
    if (0xCCCCCCCCCCCCCCCDLL * ((v10 - v11) >> 3) < 0x666666666666667)
    {
      operator new();
    }

    sub_1794();
  }

  v12 = *(a2 + 128);
  *(a1 + 133) = *(a2 + 133);
  *(a1 + 128) = v12;
  return a1;
}

void sub_A3191C(_Unwind_Exception *a1)
{
  v8 = *v5;
  if (*v5)
  {
    v1[14] = v8;
    operator delete(v8);
    v9 = *v6;
    if (!*v6)
    {
LABEL_3:
      v10 = *v4;
      if (!*v4)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v9 = *v6;
    if (!*v6)
    {
      goto LABEL_3;
    }
  }

  v1[11] = v9;
  operator delete(v9);
  v10 = *v4;
  if (!*v4)
  {
LABEL_4:
    v11 = *v3;
    if (!*v3)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  v1[8] = v10;
  operator delete(v10);
  v11 = *v3;
  if (!*v3)
  {
LABEL_5:
    sub_A30C14(v2);
    _Unwind_Resume(a1);
  }

LABEL_9:
  v1[5] = v11;
  operator delete(v11);
  sub_A30C14(v2);
  _Unwind_Resume(a1);
}

void ***sub_A319C8(void ***result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v3 = result;
      v4 = v1[1];
      v5 = v2;
      if (v4 != v2)
      {
        do
        {
          v4 = sub_9FFEB4(v4 - 18);
        }

        while (v4 != v2);
        v5 = **v3;
      }

      v1[1] = v2;
      operator delete(v5);
      return v3;
    }
  }

  return result;
}

uint64_t sub_A31A40(uint64_t result)
{
  if ((*(result + 24) & 1) == 0)
  {
    v1 = result;
    sub_A31A74(result);
    return v1;
  }

  return result;
}

void sub_A31A74(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    do
    {
      v6 = *(v3 - 5);
      if (v6)
      {
        *(v3 - 4) = v6;
        operator delete(v6);
      }

      v7 = v3 - 8;
      v8 = *(v3 - 8);
      if (v8)
      {
        v9 = *(v3 - 7);
        v5 = *(v3 - 8);
        if (v9 != v8)
        {
          do
          {
            v11 = *(v9 - 5);
            if (v11)
            {
              *(v9 - 4) = v11;
              operator delete(v11);
            }

            v12 = *(v9 - 8);
            if (v12)
            {
              *(v9 - 7) = v12;
              operator delete(v12);
            }

            v13 = *(v9 - 11);
            if (v13)
            {
              *(v9 - 10) = v13;
              operator delete(v13);
            }

            v14 = *(v9 - 14);
            if (v14)
            {
              *(v9 - 13) = v14;
              operator delete(v14);
            }

            v15 = *(v9 - 17);
            if (v15)
            {
              v16 = *(v9 - 16);
              v10 = *(v9 - 17);
              if (v16 != v15)
              {
                do
                {
                  v17 = v16 - 1136;
                  v18 = *(v16 - 8);
                  if (v18 != -1)
                  {
                    (off_2670058[v18])(&v19, v16 - 1136);
                  }

                  *(v16 - 8) = -1;
                  v16 -= 1136;
                }

                while (v17 != v15);
                v10 = *(v9 - 17);
              }

              *(v9 - 16) = v15;
              operator delete(v10);
            }

            v9 -= 144;
          }

          while (v9 != v8);
          v5 = *v7;
        }

        *(v3 - 7) = v8;
        operator delete(v5);
      }

      v3 -= 8;
    }

    while (v7 != v4);
  }
}

void ***sub_A31BD0(void ***result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v3 = result;
      v4 = v1[1];
      v5 = v2;
      if (v4 != v2)
      {
        do
        {
          v4 = sub_A30978(v4 - 29);
        }

        while (v4 != v2);
        v5 = **v3;
      }

      v1[1] = v2;
      operator delete(v5);
      return v3;
    }
  }

  return result;
}

uint64_t sub_A31C48(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 136;
    sub_A30CBC((i - 136));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_A31C9C(uint64_t a1)
{
  v2 = *(a1 + 1264);
  if (v2)
  {
    v3 = *(a1 + 1272);
    v4 = v2;
    if (v3 != v2)
    {
      do
      {
        v3 = sub_A30CBC(v3 - 17);
      }

      while (v3 != v2);
      v4 = *(a1 + 1264);
    }

    *(a1 + 1272) = v2;
    operator delete(v4);
  }

  if (*(a1 + 1191) < 0)
  {
    operator delete(*(a1 + 1168));
    if ((*(a1 + 495) & 0x80000000) == 0)
    {
LABEL_8:
      if ((*(a1 + 303) & 0x80000000) == 0)
      {
        goto LABEL_9;
      }

LABEL_13:
      operator delete(*(a1 + 280));
      if ((*(a1 + 55) & 0x80000000) == 0)
      {
        return a1;
      }

      goto LABEL_14;
    }
  }

  else if ((*(a1 + 495) & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  operator delete(*(a1 + 472));
  if (*(a1 + 303) < 0)
  {
    goto LABEL_13;
  }

LABEL_9:
  if ((*(a1 + 55) & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_14:
  operator delete(*(a1 + 32));
  return a1;
}

uint64_t sub_A31DF0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN3msl7routing16journey_planning16JourneyPredicate3anyEvEUlRKNS1_10SpaJourneyEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN3msl7routing16journey_planning16JourneyPredicate3anyEvEUlRKNS1_10SpaJourneyEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3msl7routing16journey_planning16JourneyPredicate3anyEvEUlRKNS1_10SpaJourneyEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3msl7routing16journey_planning16JourneyPredicate3anyEvEUlRKNS1_10SpaJourneyEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_A31E68(uint64_t a1)
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

void **sub_A31EF4(void **a1)
{
  if (*a1)
  {
    sub_A32000(a1, *a1);
    operator delete(*a1);
  }

  return a1;
}

void sub_A31F30(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (!v2)
  {
    return;
  }

  v4 = v1[1];
  v5 = **a1;
  if (v4 == v2)
  {
    goto LABEL_13;
  }

  v6 = v4 - 3;
  do
  {
    if (*v6)
    {
      sub_A32000(v6, *v6);
      operator delete(*v6);
    }

    if (*(v6 - 25) < 0)
    {
      operator delete(*(v6 - 6));
      if ((*(v6 - 49) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }
    }

    else if ((*(v6 - 49) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    operator delete(*(v6 - 9));
LABEL_4:
    v7 = v6 - 9;
    v6 -= 12;
  }

  while (v7 != v2);
  v5 = **a1;
LABEL_13:
  v1[1] = v2;

  operator delete(v5);
}

void sub_A32000(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; i -= 296)
  {
    v5 = *(i - 24);
    if (v5)
    {
      *(i - 16) = v5;
      operator delete(v5);
    }

    v6 = *(i - 48);
    if (v6)
    {
      *(i - 40) = v6;
      operator delete(v6);
    }

    v7 = *(i - 72);
    if (v7)
    {
      *(i - 64) = v7;
      operator delete(v7);
    }

    v8 = (i - 96);
    sub_A3212C(&v8);
    if (*(i - 161) < 0)
    {
      operator delete(*(i - 184));
    }
  }

  *(a1 + 8) = a2;
}

void sub_A320A4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 272);
  if (v3)
  {
    *(a2 + 280) = v3;
    operator delete(v3);
  }

  v4 = *(a2 + 248);
  if (v4)
  {
    *(a2 + 256) = v4;
    operator delete(v4);
  }

  v5 = *(a2 + 224);
  if (v5)
  {
    *(a2 + 232) = v5;
    operator delete(v5);
  }

  v6 = (a2 + 200);
  sub_A3212C(&v6);
  if (*(a2 + 135) < 0)
  {
    operator delete(*(a2 + 112));
  }
}

void sub_A3212C(void ****a1)
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
        v7 = *(v4 - 5);
        if (v7)
        {
          *(v4 - 4) = v7;
          operator delete(v7);
        }

        v8 = v4 - 9;
        v9 = *(v4 - 9);
        if (v9)
        {
          v10 = *(v4 - 8);
          v6 = *(v4 - 9);
          if (v10 != v9)
          {
            do
            {
              v11 = v10 - 168;
              v12 = *(v10 - 2);
              if (v12 != -1)
              {
                (off_2670158[v12])(&v13, v10 - 168);
              }

              *(v10 - 2) = -1;
              v10 -= 168;
            }

            while (v11 != v9);
            v6 = *v8;
          }

          *(v4 - 8) = v9;
          operator delete(v6);
        }

        v4 -= 9;
      }

      while (v8 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void sub_A32230(uint64_t a1, char **a2)
{
  v3 = a2[4];
  if (v3)
  {
    a2[5] = v3;
    operator delete(v3);
  }

  v4 = *a2;
  if (*a2)
  {
    v5 = a2[1];
    v6 = *a2;
    if (v5 != v4)
    {
      do
      {
        v7 = v5 - 168;
        v8 = *(v5 - 2);
        if (v8 != -1)
        {
          (off_2670158[v8])(&v9, v5 - 168);
        }

        *(v5 - 2) = -1;
        v5 -= 168;
      }

      while (v7 != v4);
      v6 = *a2;
    }

    a2[1] = v4;
    operator delete(v6);
  }
}

char **sub_A322E4(char **a1)
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
        v5 = v3 - 168;
        v6 = *(v3 - 2);
        if (v6 != -1)
        {
          (off_2670158[v6])(&v8, v3 - 168);
        }

        *(v3 - 2) = -1;
        v3 -= 168;
      }

      while (v5 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_A3238C(uint64_t a1)
{
  v2 = *(a1 + 160);
  if (v2 != -1)
  {
    (off_2670158[v2])(&v4, a1);
  }

  *(a1 + 160) = -1;
  return a1;
}

void sub_A323E8(uint64_t a1, void *a2)
{
  v3 = a2[15];
  if (v3)
  {
    a2[16] = v3;
    operator delete(v3);
  }

  v4 = a2[11];
  if (v4)
  {
    a2[12] = v4;
    operator delete(v4);
  }

  v5 = a2[8];
  if (v5)
  {
    a2[9] = v5;

    operator delete(v5);
  }
}

void *sub_A32454(void *a1)
{
  v2 = a1[15];
  if (v2)
  {
    a1[16] = v2;
    operator delete(v2);
  }

  v3 = a1[11];
  if (v3)
  {
    a1[12] = v3;
    operator delete(v3);
  }

  v4 = a1[8];
  if (v4)
  {
    a1[9] = v4;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_A324A8(uint64_t a1)
{
  sub_A325C4(a1 + 1408);
  sub_A327E4((a1 + 1296));
  sub_A327E4((a1 + 1184));
  if (*(a1 + 1023) < 0)
  {
    operator delete(*(a1 + 1000));
    if ((*(a1 + 999) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(a1 + 975) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*(a1 + 999) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 976));
  if ((*(a1 + 975) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(a1 + 951) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(*(a1 + 952));
  if ((*(a1 + 951) & 0x80000000) == 0)
  {
LABEL_5:
    if ((*(a1 + 927) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(*(a1 + 928));
  if ((*(a1 + 927) & 0x80000000) == 0)
  {
LABEL_6:
    if ((*(a1 + 735) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(*(a1 + 904));
  if ((*(a1 + 735) & 0x80000000) == 0)
  {
LABEL_7:
    if ((*(a1 + 711) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(*(a1 + 712));
  if ((*(a1 + 711) & 0x80000000) == 0)
  {
LABEL_8:
    if ((*(a1 + 383) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_18:
    operator delete(*(a1 + 360));
    if ((*(a1 + 359) & 0x80000000) == 0)
    {
      return a1;
    }

    goto LABEL_19;
  }

LABEL_17:
  operator delete(*(a1 + 688));
  if (*(a1 + 383) < 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  if ((*(a1 + 359) & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_19:
  operator delete(*(a1 + 336));
  return a1;
}

uint64_t sub_A325C4(uint64_t a1)
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
            if (v7 != -1)
            {
              (off_2670168[v7])(&v10, v6 - 1632);
            }

            *(v6 - 8) = -1;
            v6 -= 1640;
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

void sub_A326A8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 520);
  if (v3)
  {
    *(a2 + 528) = v3;
    operator delete(v3);
  }

  v4 = *(a2 + 496);
  if (v4 != -1)
  {
    (off_2670188[v4])(&v6, a2 + 256);
  }

  *(a2 + 496) = -1;
  v5 = *(a2 + 240);
  if (v5 != -1)
  {
    (off_2670188[v5])(&v7, a2);
  }

  *(a2 + 240) = -1;
}

uint64_t sub_A32740(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 1608) == 1)
  {
    result = sub_3EEA68(a2 + 512);
  }

  v4 = *(a2 + 496);
  if (v4 != -1)
  {
    result = (off_2670188[v4])(&v6, a2 + 256);
  }

  *(a2 + 496) = -1;
  v5 = *(a2 + 240);
  if (v5 != -1)
  {
    result = (off_2670188[v5])(&v7, a2);
  }

  *(a2 + 240) = -1;
  return result;
}

void *sub_A327E4(void *a1)
{
  v2 = a1[11];
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = a1[9];
  a1[9] = 0;
  if (v4)
  {
    operator delete(v4);
  }

  v5 = a1[6];
  if (v5)
  {
    do
    {
      v6 = *v5;
      operator delete(v5);
      v5 = v6;
    }

    while (v6);
  }

  v7 = a1[4];
  a1[4] = 0;
  if (v7)
  {
    operator delete(v7);
  }

  v8 = a1[1];
  if (v8)
  {
    v9 = a1[2];
    v10 = a1[1];
    if (v9 != v8)
    {
      v11 = v9 - 1920;
      do
      {
        v13 = *(v11 + 1896);
        if (v13 != -1)
        {
          (off_2670168[v13])(&v16, v11 + 272);
        }

        *(v11 + 1896) = -1;
        v14 = *(v11 + 240);
        if (v14 != -1)
        {
          (off_2670188[v14])(&v17, v11);
        }

        *(v11 + 240) = -1;
        v12 = v11 == v8;
        v11 -= 1920;
      }

      while (!v12);
      v10 = a1[1];
    }

    a1[2] = v8;
    operator delete(v10);
  }

  return a1;
}

uint64_t sub_A3290C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  sub_A32B60(a1 + 8, *(a2 + 8), *(a2 + 16), 0x14C1BACF914C1BADLL * ((*(a2 + 16) - *(a2 + 8)) >> 3));
  if (*(a2 + 55) < 0)
  {
    sub_325C((a1 + 32), *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v4 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v4;
  }

  v5 = *(a2 + 56);
  v6 = *(a2 + 72);
  v7 = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 88) = v7;
  *(a1 + 72) = v6;
  *(a1 + 56) = v5;
  v8 = *(a2 + 120);
  v9 = *(a2 + 136);
  v10 = *(a2 + 152);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 152) = v10;
  *(a1 + 136) = v9;
  *(a1 + 120) = v8;
  v11 = *(a2 + 184);
  *(a1 + 192) = 0;
  *(a1 + 184) = v11;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  v13 = *(a2 + 192);
  v12 = *(a2 + 200);
  if (v12 != v13)
  {
    if (((v12 - v13) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  v15 = *(a2 + 216);
  v14 = *(a2 + 224);
  if (v14 != v15)
  {
    if (((v14 - v15) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  sub_A337A8(a1 + 240, *(a2 + 240), *(a2 + 248), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 248) - *(a2 + 240)) >> 5));
  return a1;
}

void sub_A32AE8(_Unwind_Exception *a1)
{
  v6 = *v4;
  if (*v4)
  {
    *(v2 + 224) = v6;
    operator delete(v6);
    v7 = *v3;
    if (!*v3)
    {
LABEL_3:
      if ((*(v2 + 55) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v7 = *v3;
    if (!*v3)
    {
      goto LABEL_3;
    }
  }

  *(v2 + 200) = v7;
  operator delete(v7);
  if ((*(v2 + 55) & 0x80000000) == 0)
  {
LABEL_4:
    sub_A31EF4(v1);
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(*(v2 + 32));
  sub_A31EF4(v1);
  _Unwind_Resume(a1);
}

void sub_A32B60(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0xDD67C8A60DD67DLL)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_A32C64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_A336F0(va);
  *(v10 + 8) = v11;
  sub_A33758(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_A32C84(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v5;
  *a1 = v4;
  v6 = a2[3];
  v7 = a2[4];
  v8 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v7;
  *(a1 + 80) = v8;
  *(a1 + 48) = v6;
  *(a1 + 104) = *(a2 + 26);
  if (*(a2 + 135) < 0)
  {
    sub_325C((a1 + 112), *(a2 + 14), *(a2 + 15));
  }

  else
  {
    v9 = a2[7];
    *(a1 + 128) = *(a2 + 16);
    *(a1 + 112) = v9;
  }

  *(a1 + 136) = *(a2 + 34);
  v10 = a2[9];
  v11 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v11;
  *(a1 + 144) = v10;
  *&v10 = *(a2 + 24);
  *(a1 + 200) = 0;
  *(a1 + 192) = v10;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  sub_A32F30(a1 + 200, *(a2 + 25), *(a2 + 26), 0x8E38E38E38E38E39 * ((*(a2 + 26) - *(a2 + 25)) >> 3));
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  v13 = *(a2 + 28);
  v12 = *(a2 + 29);
  if (v12 != v13)
  {
    if (((v12 - v13) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  v15 = *(a2 + 31);
  v14 = *(a2 + 32);
  if (v14 != v15)
  {
    if (0xCCCCCCCCCCCCCCCDLL * ((v14 - v15) >> 3) < 0x666666666666667)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  v17 = *(a2 + 34);
  v16 = *(a2 + 35);
  if (v16 != v17)
  {
    if (((v16 - v17) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return a1;
}

void sub_A32E9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (*(v10 + 135) < 0)
  {
    operator delete(*(v10 + 112));
  }

  _Unwind_Resume(exception_object);
}

void sub_A32F00()
{
  if (*v0)
  {
    JUMPOUT(0xA32F0CLL);
  }

  JUMPOUT(0xA32EB8);
}

void sub_A32F20()
{
  if (!*v0)
  {
    JUMPOUT(0xA32EC8);
  }

  JUMPOUT(0xA32EC0);
}

void sub_A32F30(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x38E38E38E38E38FLL)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_A33034(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_A33688(va);
  *(v10 + 8) = v11;
  sub_A3212C(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_A33054(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_A33170(a1, *a2, *(a2 + 8), 0xCF3CF3CF3CF3CF3DLL * ((*(a2 + 8) - *a2) >> 3));
  v4 = *(a2 + 24);
  *(a1 + 32) = 0;
  *(a1 + 24) = v4;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v6 = *(a2 + 32);
  v5 = *(a2 + 40);
  if (v5 != v6)
  {
    if (0xCCCCCCCCCCCCCCCDLL * ((v5 - v6) >> 3) < 0x666666666666667)
    {
      operator new();
    }

    sub_1794();
  }

  v7 = *(a2 + 56);
  *(a1 + 63) = *(a2 + 63);
  *(a1 + 56) = v7;
  return a1;
}

void sub_A3314C(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 40) = v4;
    operator delete(v4);
  }

  sub_A322E4(v1);
  _Unwind_Resume(a1);
}

void sub_A33170(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x186186186186187)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_A3329C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_A335C8(va);
  _Unwind_Resume(a1);
}

void sub_A332B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v7 = va_arg(va1, void **);
  v9 = va_arg(va1, void);
  sub_A3238C(v5);
  sub_A33528(va1);
  *(v3 + 8) = v4;
  sub_A335C8(va);
  _Unwind_Resume(a1);
}

__n128 sub_A332E0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  result = *a2;
  *(v2 + 12) = *(a2 + 12);
  *v2 = result;
  return result;
}

uint64_t sub_A332F8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *(a1 + 64) = 0;
  *a1 = v2;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  v6 = *(a2 + 8);
  v5 = *(a2 + 9);
  if (v5 != v6)
  {
    if (0xEEEEEEEEEEEEEEEFLL * ((v5 - v6) >> 2) <= 0x444444444444444)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  v8 = *(a2 + 11);
  v7 = *(a2 + 12);
  if (v7 != v8)
  {
    if (0xEEEEEEEEEEEEEEEFLL * ((v7 - v8) >> 2) <= 0x444444444444444)
    {
      operator new();
    }

    sub_1794();
  }

  v9 = *(a2 + 28);
  *(a1 + 120) = 0;
  *(a1 + 112) = v9;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  v11 = *(a2 + 15);
  v10 = *(a2 + 16);
  if (v10 != v11)
  {
    if (0xCCCCCCCCCCCCCCCDLL * ((v10 - v11) >> 3) < 0x666666666666667)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 144) = a2[9];
  return a1;
}

void sub_A334B8(_Unwind_Exception *exception_object)
{
  v6 = *v4;
  if (*v4)
  {
    v1[16] = v6;
    operator delete(v6);
    v7 = *v3;
    if (!*v3)
    {
LABEL_3:
      v8 = *v2;
      if (!*v2)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else
  {
    v7 = *v3;
    if (!*v3)
    {
      goto LABEL_3;
    }
  }

  v1[12] = v7;
  operator delete(v7);
  v8 = *v2;
  if (!*v2)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_4:
  v1[9] = v8;
  operator delete(v8);
  goto LABEL_5;
}

void sub_A33518()
{
  if (!*v0)
  {
    JUMPOUT(0xA334DCLL);
  }

  JUMPOUT(0xA334D4);
}

uint64_t sub_A33528(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *v2;
    v5 = *v3;
    if (*v2 != *v3)
    {
      do
      {
        v6 = v4 - 168;
        v7 = *(v4 - 8);
        if (v7 != -1)
        {
          (off_2670158[v7])(&v9, v4 - 168);
        }

        *(v4 - 8) = -1;
        v4 -= 168;
      }

      while (v6 != v5);
    }
  }

  return a1;
}

void ***sub_A335C8(void ***a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 != v3)
      {
        do
        {
          v6 = v4 - 42;
          v7 = *(v4 - 2);
          if (v7 != -1)
          {
            (off_2670158[v7])(&v9, v4 - 42);
          }

          *(v4 - 2) = -1;
          v4 -= 42;
        }

        while (v6 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

uint64_t sub_A33688(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *v2;
    v5 = *v3;
    if (*v2 != *v3)
    {
      v6 = *a1;
      do
      {
        v4 -= 9;
        sub_A32230(v6, v4);
      }

      while (v4 != v5);
    }
  }

  return a1;
}

uint64_t sub_A336F0(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *v2;
    v5 = *v3;
    if (*v2 != *v3)
    {
      v6 = *a1;
      do
      {
        v4 -= 296;
        sub_A320A4(v6, v4);
      }

      while (v4 != v5);
    }
  }

  return a1;
}

uint64_t **sub_A33758(uint64_t **result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = **result;
    if (v1)
    {
      v2 = result;
      sub_A32000(*result, v1);
      operator delete(**v2);
      return v2;
    }
  }

  return result;
}

void sub_A337A8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x2AAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_A338A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_A338C8(va);
  *(v10 + 8) = v11;
  sub_A31F30(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_A338C8(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v2 = **(a1 + 16);
    v3 = **(a1 + 8);
    if (v2 != v3)
    {
      v4 = v2 - 3;
      do
      {
        if (*v4)
        {
          sub_A32000(v4, *v4);
          operator delete(*v4);
        }

        if (*(v4 - 25) < 0)
        {
          operator delete(*(v4 - 6));
          if (*(v4 - 49) < 0)
          {
LABEL_11:
            operator delete(*(v4 - 9));
          }
        }

        else if (*(v4 - 49) < 0)
        {
          goto LABEL_11;
        }

        v5 = v4 - 9;
        v4 -= 12;
      }

      while (v5 != v3);
    }
  }

  return a1;
}

uint64_t sub_A33970(uint64_t a1, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_325C(a1, *a2, *(a2 + 1));
    if ((*(a2 + 47) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_325C((a1 + 24), *(a2 + 3), *(a2 + 4));
    goto LABEL_6;
  }

  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  if (*(a2 + 47) < 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 5);
  *(a1 + 24) = v5;
LABEL_6:
  v6 = a2[3];
  v7 = *(a2 + 16);
  *(a1 + 72) = 0;
  *(a1 + 64) = v7;
  *(a1 + 48) = v6;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  sub_A32B60(a1 + 72, *(a2 + 9), *(a2 + 10), 0x14C1BACF914C1BADLL * ((*(a2 + 10) - *(a2 + 9)) >> 3));
  return a1;
}

void sub_A33A2C(_Unwind_Exception *exception_object)
{
  if ((*(v1 + 23) & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(*v1);
  _Unwind_Resume(exception_object);
}

void sub_A33A78(uint64_t *a1, __int128 *a2, __int128 *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  v8 = *a1;
  if (0x14C1BACF914C1BADLL * ((v7 - *a1) >> 3) < a4)
  {
    if (v8)
    {
      v9 = a4;
      sub_A32000(a1, *a1);
      operator delete(*a1);
      a4 = v9;
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a4 <= 0xDD67C8A60DD67CLL)
    {
      v10 = 0x14C1BACF914C1BADLL * (v7 >> 3);
      v11 = 2 * v10;
      if (2 * v10 <= a4)
      {
        v11 = a4;
      }

      if (v10 >= 0x6EB3E45306EB3ELL)
      {
        v12 = 0xDD67C8A60DD67CLL;
      }

      else
      {
        v12 = v11;
      }

      if (v12 <= 0xDD67C8A60DD67CLL)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v13 = a1[1];
  v14 = v13 - v8;
  if (0x14C1BACF914C1BADLL * ((v13 - v8) >> 3) >= a4)
  {
    while (v5 != a3)
    {
      sub_A33D08(v8, v5);
      v5 = (v5 + 296);
      v8 += 296;
    }

    sub_A32000(a1, v8);
  }

  else
  {
    v15 = (a2 + v14);
    if (v13 != v8)
    {
      do
      {
        sub_A33D08(v8, v5);
        v5 = (v5 + 296);
        v8 += 296;
        v14 -= 296;
      }

      while (v14);
      v13 = a1[1];
    }

    v17 = v13;
    v16 = v13;
    if (v15 != a3)
    {
      v16 = v13;
      do
      {
        sub_A32C84(v16, v15);
        v15 = (v15 + 296);
        v16 = v17 + 296;
        v17 += 296;
      }

      while (v15 != a3);
    }

    a1[1] = v16;
  }
}

void sub_A33CD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_A336F0(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_A33CF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_A336F0(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

uint64_t sub_A33D08(uint64_t result, __int128 *a2)
{
  v3 = result;
  v4 = *a2;
  v5 = a2[2];
  *(result + 16) = a2[1];
  *(result + 32) = v5;
  *result = v4;
  v6 = a2[3];
  v7 = a2[4];
  v8 = a2[5];
  *(result + 96) = *(a2 + 12);
  *(result + 64) = v7;
  *(result + 80) = v8;
  *(result + 48) = v6;
  *(result + 104) = *(a2 + 26);
  if (result == a2)
  {
    *(result + 136) = *(a2 + 34);
    v11 = a2[9];
    v12 = a2[11];
    *(result + 160) = a2[10];
    *(result + 176) = v12;
    *(result + 144) = v11;
    *(result + 192) = *(a2 + 24);
  }

  else
  {
    v9 = *(a2 + 135);
    if (*(result + 135) < 0)
    {
      if (v9 >= 0)
      {
        v13 = a2 + 7;
      }

      else
      {
        v13 = *(a2 + 14);
      }

      if (v9 >= 0)
      {
        v14 = *(a2 + 135);
      }

      else
      {
        v14 = *(a2 + 15);
      }

      sub_13B38((result + 112), v13, v14);
    }

    else if ((*(a2 + 135) & 0x80) != 0)
    {
      sub_13A68((result + 112), *(a2 + 14), *(a2 + 15));
    }

    else
    {
      v10 = a2[7];
      *(result + 128) = *(a2 + 16);
      *(result + 112) = v10;
    }

    *(v3 + 136) = *(a2 + 34);
    v15 = a2[9];
    v16 = a2[11];
    *(v3 + 160) = a2[10];
    *(v3 + 176) = v16;
    *(v3 + 144) = v15;
    *(v3 + 192) = *(a2 + 24);
    sub_A33E7C((v3 + 200), *(a2 + 25), *(a2 + 26), 0x8E38E38E38E38E39 * ((*(a2 + 26) - *(a2 + 25)) >> 3));
    sub_A34C54((v3 + 224), *(a2 + 28), *(a2 + 29), (*(a2 + 29) - *(a2 + 28)) >> 4);
    sub_956400((v3 + 248), *(a2 + 31), *(a2 + 32), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 32) - *(a2 + 31)) >> 3));
    sub_31F64((v3 + 272), *(a2 + 34), *(a2 + 35), (*(a2 + 35) - *(a2 + 34)) >> 3);
    return v3;
  }

  return result;
}

void sub_A33E7C(void ***a1, void **a2, void **a3, unint64_t a4)
{
  v6 = a1;
  v7 = a1[2];
  v8 = *a1;
  if (0x8E38E38E38E38E39 * ((v7 - *a1) >> 3) < a4)
  {
    if (v8)
    {
      v40 = a4;
      v9 = a1[1];
      v10 = *a1;
      if (v9 != v8)
      {
        do
        {
          v12 = *(v9 - 5);
          if (v12)
          {
            *(v9 - 4) = v12;
            operator delete(v12);
          }

          v13 = v9 - 9;
          v14 = *(v9 - 9);
          if (v14)
          {
            v15 = *(v9 - 8);
            v11 = *(v9 - 9);
            if (v15 != v14)
            {
              do
              {
                v16 = v15 - 168;
                v17 = *(v15 - 2);
                if (v17 != -1)
                {
                  (off_2670158[v17])(v42, v15 - 168);
                }

                *(v15 - 2) = -1;
                v15 -= 168;
              }

              while (v16 != v14);
              v11 = *v13;
            }

            *(v9 - 8) = v14;
            operator delete(v11);
          }

          v9 -= 9;
        }

        while (v13 != v8);
        v10 = *v6;
      }

      v6[1] = v8;
      operator delete(v10);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
      a4 = v40;
    }

    if (a4 <= 0x38E38E38E38E38ELL)
    {
      v29 = 0x8E38E38E38E38E39 * (v7 >> 3);
      v30 = 2 * v29;
      if (2 * v29 <= a4)
      {
        v30 = a4;
      }

      if (v29 >= 0x1C71C71C71C71C7)
      {
        v31 = 0x38E38E38E38E38ELL;
      }

      else
      {
        v31 = v30;
      }

      if (v31 <= 0x38E38E38E38E38ELL)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v18 = a1[1];
  v19 = (v18 - v8);
  if (0x8E38E38E38E38E39 * (v18 - v8) >= a4)
  {
    if (a2 != a3)
    {
      v25 = 0;
      do
      {
        v28 = &v8[v25];
        if (a2 == v8)
        {
          *(v28 + 24) = a2[v25 + 3];
        }

        else
        {
          sub_A34348(&v8[v25], a2[v25], a2[v25 + 1], 0xCF3CF3CF3CF3CF3DLL * ((a2[v25 + 1] - a2[v25]) >> 3));
          *(v28 + 24) = a2[v25 + 3];
          sub_956400(v28 + 4, a2[v25 + 4], a2[v25 + 5], 0xCCCCCCCCCCCCCCCDLL * ((a2[v25 + 5] - a2[v25 + 4]) >> 3));
        }

        v26 = &v8[v25];
        v27 = a2[v25 + 7];
        *(v26 + 63) = *(&a2[v25 + 7] + 7);
        v26[7] = v27;
        v25 += 9;
      }

      while (&a2[v25] != a3);
      v18 = v6[1];
      v8 = (v8 + v25 * 8);
    }

    if (v18 != v8)
    {
      do
      {
        v34 = *(v18 - 5);
        if (v34)
        {
          *(v18 - 4) = v34;
          operator delete(v34);
        }

        v35 = v18 - 9;
        v36 = *(v18 - 9);
        if (v36)
        {
          v37 = *(v18 - 8);
          v33 = *(v18 - 9);
          if (v37 != v36)
          {
            do
            {
              v38 = v37 - 168;
              v39 = *(v37 - 2);
              if (v39 != -1)
              {
                (off_2670158[v39])(v42, v37 - 168);
              }

              *(v37 - 2) = -1;
              v37 -= 168;
            }

            while (v38 != v36);
            v33 = *v35;
          }

          *(v18 - 8) = v36;
          operator delete(v33);
        }

        v18 -= 9;
      }

      while (v35 != v8);
    }

    v6[1] = v8;
  }

  else
  {
    v20 = &v19[a2];
    if (v18 != v8)
    {
      v21 = 0;
      do
      {
        v24 = &v21[v8];
        if (a2 == v8)
        {
          *(v24 + 24) = v21[a2 + 24];
        }

        else
        {
          sub_A34348(&v21[v8], *&v21[a2], *&v21[a2 + 8], 0xCF3CF3CF3CF3CF3DLL * ((*&v21[a2 + 8] - *&v21[a2]) >> 3));
          *(v24 + 24) = v21[a2 + 24];
          sub_956400(v24 + 4, *&v21[a2 + 32], *&v21[a2 + 40], 0xCCCCCCCCCCCCCCCDLL * ((*&v21[a2 + 40] - *&v21[a2 + 32]) >> 3));
        }

        v22 = &v21[v8];
        v23 = *&v21[a2 + 56];
        *(v22 + 63) = *&v21[a2 + 63];
        v22[7] = v23;
        v21 += 72;
      }

      while (v19 != v21);
      v6 = a1;
      v18 = a1[1];
    }

    v44 = v18;
    v45 = v18;
    v42[0] = v6;
    v42[1] = &v44;
    v42[2] = &v45;
    v32 = v18;
    v43 = 0;
    if (v20 != a3)
    {
      v32 = v18;
      do
      {
        sub_A33054(v32, v20);
        v20 += 72;
        v32 = (v45 + 9);
        v45 += 9;
      }

      while (v20 != a3);
    }

    v6[1] = v32;
  }
}

void sub_A34310(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_A33688(va);
  *(v6 + 8) = v5;
  _Unwind_Resume(a1);
}

void sub_A34328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_A33688(va);
  *(v6 + 8) = v5;
  _Unwind_Resume(a1);
}

void **sub_A34348(void **result, char *a2, char *a3, unint64_t a4)
{
  v5 = a2;
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0xCF3CF3CF3CF3CF3DLL * ((v7 - *result) >> 3) < a4)
  {
    if (v8)
    {
      v9 = a4;
      v10 = result[1];
      v11 = *result;
      if (v10 != v8)
      {
        do
        {
          v12 = (v10 - 168);
          v13 = *(v10 - 2);
          if (v13 != -1)
          {
            (off_2670158[v13])(v30, v10 - 168);
          }

          *(v10 - 2) = -1;
          v10 -= 168;
        }

        while (v12 != v8);
        v11 = *v6;
      }

      v6[1] = v8;
      operator delete(v11);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
      a4 = v9;
    }

    if (a4 <= 0x186186186186186)
    {
      v27 = 0xCF3CF3CF3CF3CF3DLL * (v7 >> 3);
      v28 = 2 * v27;
      if (2 * v27 <= a4)
      {
        v28 = a4;
      }

      if (v27 >= 0xC30C30C30C30C3)
      {
        v29 = 0x186186186186186;
      }

      else
      {
        v29 = v28;
      }

      if (v29 <= 0x186186186186186)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v14 = result[1];
  v15 = (v14 - v8);
  if (0xCF3CF3CF3CF3CF3DLL * ((v14 - v8) >> 3) >= a4)
  {
    if (a2 == a3)
    {
LABEL_32:
      if (v14 != v8)
      {
        do
        {
          v25 = (v14 - 168);
          v26 = *(v14 - 2);
          if (v26 != -1)
          {
            result = (off_2670158[v26])(v30, v14 - 168);
          }

          *(v14 - 2) = -1;
          v14 -= 168;
        }

        while (v25 != v8);
      }

      v6[1] = v8;
      return result;
    }

    while (1)
    {
      while (1)
      {
        v23 = v8[40];
        v24 = *(v5 + 160);
        if (v23 != -1)
        {
          break;
        }

        if (v24 != -1)
        {
          goto LABEL_26;
        }

LABEL_27:
        v5 += 168;
        v8 += 42;
        if (v5 == a3)
        {
          goto LABEL_31;
        }
      }

      if (v24 != -1)
      {
LABEL_26:
        v30[0] = v8;
        result = (off_26701A8[v24])(v30, v8, v5);
        goto LABEL_27;
      }

      result = (off_2670158[v23])(v30, v8);
      v8[40] = -1;
      v5 += 168;
      v8 += 42;
      if (v5 == a3)
      {
LABEL_31:
        v14 = v6[1];
        goto LABEL_32;
      }
    }
  }

  if (v14 == v8)
  {
    goto LABEL_18;
  }

  v16 = (v14 - v8);
  v17 = a2;
  do
  {
    while (1)
    {
      v18 = v8[40];
      v19 = *(v17 + 160);
      if (v18 != -1)
      {
        break;
      }

      if (v19 != -1)
      {
        goto LABEL_12;
      }

LABEL_13:
      v17 += 168;
      v8 += 42;
      v16 -= 168;
      if (!v16)
      {
        goto LABEL_17;
      }
    }

    if (v19 != -1)
    {
LABEL_12:
      v30[0] = v8;
      result = (off_26701A8[v19])(v30, v8, v17);
      goto LABEL_13;
    }

    result = (off_2670158[v18])(v30, v8);
    v8[40] = -1;
    v17 += 168;
    v8 += 42;
    v16 -= 168;
  }

  while (v16);
LABEL_17:
  v14 = v6[1];
LABEL_18:
  v20 = &v15[v5];
  v32 = v14;
  v33 = v14;
  v30[0] = v6;
  v30[1] = &v32;
  v30[2] = &v33;
  v21 = v14;
  v31 = 0;
  if (v20 != a3)
  {
    v21 = v14;
    do
    {
      *v21 = 0;
      v21[40] = -1;
      v22 = *(v20 + 40);
      if (v22 != -1)
      {
        v34 = v21;
        result = (off_2670198[v22])(&v34, v20);
        v21[40] = v22;
        v21 = v33;
      }

      v20 += 168;
      v21 += 42;
      v33 = v21;
    }

    while (v20 != a3);
  }

  v6[1] = v21;
  return result;
}

void sub_A3476C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_A3238C(v4);
  sub_A33528(va);
  *(v3 + 8) = v5;
  _Unwind_Resume(a1);
}

void sub_A34790(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_A3238C(v5);
  sub_A33528(va);
  *(v3 + 8) = v4;
  _Unwind_Resume(a1);
}

__n128 sub_A347B0(uint64_t a1, uint64_t a2, __int128 *a3)
{
  if (*(*a1 + 160))
  {
    v9[0] = *a1;
    v9[1] = a3;
    sub_A34954(v9);
  }

  else
  {
    v4 = *a3;
    v5 = a3[1];
    v6 = a3[2];
    *(a2 + 44) = *(a3 + 44);
    *(a2 + 16) = v5;
    *(a2 + 32) = v6;
    *a2 = v4;
    if (a2 == a3)
    {
      *(a2 + 112) = *(a3 + 28);
    }

    else
    {
      v7 = a2;
      v8 = a3;
      sub_A349D4((a2 + 64), *(a3 + 8), *(a3 + 9), 0xEEEEEEEEEEEEEEEFLL * ((*(a3 + 9) - *(a3 + 8)) >> 2));
      sub_A349D4((v7 + 88), *(v8 + 11), *(v8 + 12), 0xEEEEEEEEEEEEEEEFLL * ((*(v8 + 12) - *(v8 + 11)) >> 2));
      *(v7 + 112) = *(v8 + 28);
      sub_956400((v7 + 120), *(v8 + 15), *(v8 + 16), 0xCCCCCCCCCCCCCCCDLL * ((*(v8 + 16) - *(v8 + 15)) >> 3));
      a2 = v7;
      a3 = v8;
    }

    result = a3[9];
    *(a2 + 144) = result;
  }

  return result;
}

__n128 sub_A348B4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *(*a1 + 160);
  if (v4 != -1)
  {
    if (v4 == 1)
    {
      result = *a3;
      *(a2 + 12) = *(a3 + 12);
      *a2 = result;
      return result;
    }

    v6 = a3;
    (off_2670158[v4])(&v7, v3);
    a3 = v6;
  }

  *(v3 + 160) = -1;
  result = *a3;
  *(v3 + 12) = *(a3 + 12);
  *v3 = result;
  *(v3 + 160) = 1;
  return result;
}

void sub_A34954(uint64_t *a1)
{
  v1 = *a1;
  sub_A332F8(v2, a1[1]);
  sub_A34B68(v1, v2);
  if (__p)
  {
    v8 = __p;
    operator delete(__p);
  }

  if (v5)
  {
    v6 = v5;
    operator delete(v5);
  }

  if (v3)
  {
    v4 = v3;
    operator delete(v3);
  }
}

char *sub_A349D4(char **a1, char *a2, _BYTE *a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (0xEEEEEEEEEEEEEEEFLL * ((v6 - result) >> 2) < a4)
  {
    if (result)
    {
      a1[1] = result;
      v8 = a4;
      operator delete(result);
      a4 = v8;
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a4 <= 0x444444444444444)
    {
      v9 = 0xEEEEEEEEEEEEEEEFLL * (v6 >> 2);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x222222222222222)
      {
        v11 = 0x444444444444444;
      }

      else
      {
        v11 = v10;
      }

      if (v11 <= 0x444444444444444)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (0xEEEEEEEEEEEEEEEFLL * ((v12 - result) >> 2) >= a4)
  {
    v16 = a3 - a2;
    if (a3 != a2)
    {
      v17 = result;
      memmove(result, a2, v16 - 3);
      result = v17;
    }

    a1[1] = &result[v16];
  }

  else
  {
    v14 = &a2[v13];
    if (v12 != result)
    {
      result = memmove(result, a2, v13 - 3);
      v12 = a1[1];
    }

    v15 = (a3 - v14);
    if (v15)
    {
      result = memmove(v12, v14, (v15 - 3));
    }

    a1[1] = &v15[v12];
  }

  return result;
}

uint64_t sub_A34B68(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 160);
  if (v4 != -1)
  {
    (off_2670158[v4])(&v9, a1);
  }

  *(a1 + 160) = -1;
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 16) = v6;
  *(a1 + 32) = v7;
  *a1 = v5;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  *(a1 + 64) = a2[4];
  *(a1 + 80) = *(a2 + 10);
  *(a2 + 8) = 0;
  *(a2 + 9) = 0;
  *(a2 + 10) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 13);
  *(a2 + 12) = 0;
  *(a2 + 13) = 0;
  *(a2 + 11) = 0;
  *(a1 + 112) = *(a2 + 28);
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 120) = 0;
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 17);
  *(a2 + 16) = 0;
  *(a2 + 17) = 0;
  *(a2 + 15) = 0;
  *(a1 + 144) = a2[9];
  *(a1 + 160) = 0;
  return a1;
}

char *sub_A34C54(char **a1, char *a2, _BYTE *a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (a4 > (v6 - result) >> 4)
  {
    if (result)
    {
      a1[1] = result;
      v8 = a4;
      operator delete(result);
      a4 = v8;
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 60))
    {
      v9 = v6 >> 3;
      if (v6 >> 3 <= a4)
      {
        v9 = a4;
      }

      v10 = v6 >= 0x7FFFFFFFFFFFFFF0;
      v11 = 0xFFFFFFFFFFFFFFFLL;
      if (!v10)
      {
        v11 = v9;
      }

      if (!(v11 >> 60))
      {
        operator new();
      }
    }

    sub_1794();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (a4 <= (v12 - result) >> 4)
  {
    v16 = a3 - a2;
    if (a3 != a2)
    {
      v17 = result;
      memmove(result, a2, v16 - 3);
      result = v17;
    }

    a1[1] = &result[v16];
  }

  else
  {
    v14 = &a2[v13];
    if (v12 != result)
    {
      result = memmove(result, a2, v13 - 3);
      v12 = a1[1];
    }

    v15 = (a3 - v14);
    if (v15)
    {
      result = memmove(v12, v14, (v15 - 3));
    }

    a1[1] = &v15[v12];
  }

  return result;
}

char *sub_A34DB4(char **a1, char *a2, _BYTE *a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (a4 > (v6 - result) >> 3)
  {
    if (result)
    {
      a1[1] = result;
      v8 = a4;
      operator delete(result);
      a4 = v8;
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v6 >> 2;
      if (v6 >> 2 <= a4)
      {
        v9 = a4;
      }

      v10 = v6 >= 0x7FFFFFFFFFFFFFF8;
      v11 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v10)
      {
        v11 = v9;
      }

      if (!(v11 >> 61))
      {
        operator new();
      }
    }

    sub_1794();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (a4 <= (v12 - result) >> 3)
  {
    v16 = a3 - a2;
    if (a3 != a2)
    {
      v17 = result;
      memmove(result, a2, v16 - 3);
      result = v17;
    }

    a1[1] = &result[v16];
  }

  else
  {
    v14 = &a2[v13];
    if (v12 != result)
    {
      result = memmove(result, a2, v13 - 3);
      v12 = a1[1];
    }

    v15 = (a3 - v14);
    if (v15)
    {
      result = memmove(v12, v14, (v15 - 3));
    }

    a1[1] = &v15[v12];
  }

  return result;
}

void sub_A34F14(unsigned __int8 **a1, unsigned __int8 *a2, __int128 *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - *a1) >> 5) < a4)
  {
    if (!v8)
    {
      goto LABEL_37;
    }

    v9 = a4;
    v10 = a1[1];
    v11 = *a1;
    if (v10 == v8)
    {
      goto LABEL_36;
    }

    v12 = (v10 - 24);
    while (1)
    {
      if (*v12)
      {
        sub_A32000(v12, *v12);
        operator delete(*v12);
      }

      if (*(v12 - 25) < 0)
      {
        operator delete(*(v12 - 6));
        if (*(v12 - 49) < 0)
        {
LABEL_12:
          operator delete(*(v12 - 9));
        }
      }

      else if (*(v12 - 49) < 0)
      {
        goto LABEL_12;
      }

      v13 = (v12 - 9);
      v12 -= 12;
      if (v13 == v8)
      {
        v11 = *a1;
LABEL_36:
        a1[1] = v8;
        operator delete(v11);
        v7 = 0;
        *a1 = 0;
        a1[1] = 0;
        a1[2] = 0;
        a4 = v9;
LABEL_37:
        if (a4 <= 0x2AAAAAAAAAAAAAALL)
        {
          v20 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 5);
          v21 = 2 * v20;
          if (2 * v20 <= a4)
          {
            v21 = a4;
          }

          if (v20 >= 0x155555555555555)
          {
            v22 = 0x2AAAAAAAAAAAAAALL;
          }

          else
          {
            v22 = v21;
          }

          if (v22 <= 0x2AAAAAAAAAAAAAALL)
          {
            operator new();
          }
        }

        sub_1794();
      }
    }
  }

  v14 = a1[1];
  v15 = v14 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v14 - v8) >> 5) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        sub_A35240(v8, v5);
        v5 += 96;
        v8 += 96;
      }

      while (v5 != a3);
      v14 = a1[1];
    }

    if (v14 == v8)
    {
LABEL_34:
      a1[1] = v8;
      return;
    }

    v18 = (v14 - 24);
    while (1)
    {
      if (*v18)
      {
        sub_A32000(v18, *v18);
        operator delete(*v18);
      }

      if (*(v18 - 25) < 0)
      {
        operator delete(*(v18 - 6));
        if (*(v18 - 49) < 0)
        {
LABEL_33:
          operator delete(*(v18 - 9));
        }
      }

      else if (*(v18 - 49) < 0)
      {
        goto LABEL_33;
      }

      v19 = (v18 - 9);
      v18 -= 12;
      if (v19 == v8)
      {
        goto LABEL_34;
      }
    }
  }

  v16 = &a2[v15];
  if (v14 != v8)
  {
    do
    {
      sub_A35240(v8, v5);
      v5 += 96;
      v8 += 96;
      v15 -= 96;
    }

    while (v15);
    v14 = a1[1];
  }

  v23 = v14;
  v17 = v14;
  if (v16 != a3)
  {
    v17 = v14;
    do
    {
      sub_A33970(v17, v16);
      v16 += 6;
      v17 = v23 + 96;
      v23 += 96;
    }

    while (v16 != a3);
  }

  a1[1] = v17;
}

void sub_A35210(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_A338C8(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_A35228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_A338C8(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

unsigned __int8 *sub_A35240(unsigned __int8 *result, unsigned __int8 *a2)
{
  v2 = a2;
  v3 = result;
  if (result == a2)
  {
    v7 = *(a2 + 3);
    *(result + 16) = *(a2 + 16);
    *(result + 3) = v7;
    return result;
  }

  if (result[23] < 0)
  {
    if ((a2[23] & 0x80u) == 0)
    {
      v8 = a2[23];
    }

    else
    {
      a2 = *a2;
      v8 = *(v2 + 1);
    }

    sub_13B38(result, a2, v8);
    v5 = v2 + 24;
    v6 = v2[47];
    if (v3[47] < 0)
    {
      goto LABEL_14;
    }
  }

  else if ((a2[23] & 0x80) != 0)
  {
    sub_13A68(result, *a2, *(a2 + 1));
    v5 = v2 + 24;
    v6 = v2[47];
    if (v3[47] < 0)
    {
LABEL_14:
      if ((v6 & 0x80u) == 0)
      {
        v10 = v5;
      }

      else
      {
        v10 = *(v2 + 3);
      }

      if ((v6 & 0x80u) == 0)
      {
        v11 = v6;
      }

      else
      {
        v11 = *(v2 + 4);
      }

      sub_13B38(v3 + 3, v10, v11);
      goto LABEL_22;
    }
  }

  else
  {
    v4 = *a2;
    *(result + 2) = *(a2 + 2);
    *result = v4;
    v5 = a2 + 24;
    v6 = a2[47];
    if (result[47] < 0)
    {
      goto LABEL_14;
    }
  }

  if ((v6 & 0x80) != 0)
  {
    sub_13A68(v3 + 3, *(v2 + 3), *(v2 + 4));
  }

  else
  {
    v9 = *v5;
    *(v3 + 5) = *(v5 + 2);
    *(v3 + 24) = v9;
  }

LABEL_22:
  v12 = *(v2 + 3);
  *(v3 + 16) = *(v2 + 16);
  *(v3 + 3) = v12;
  sub_A33A78(v3 + 9, *(v2 + 9), *(v2 + 10), 0x14C1BACF914C1BADLL * ((*(v2 + 10) - *(v2 + 9)) >> 3));
  return v3;
}

void *sub_A35388(void **a1, __int128 *a2, char *a3, unsigned int *a4, uint64_t a5)
{
  v5 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5);
  v6 = v5 + 1;
  if (v5 + 1 > 0x2AAAAAAAAAAAAAALL)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 5) > v6)
  {
    v6 = 0x5555555555555556 * ((a1[2] - *a1) >> 5);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 5) >= 0x155555555555555)
  {
    v8 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v8 = v6;
  }

  if (v8)
  {
    if (v8 <= 0x2AAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1808();
  }

  v14 = 32 * ((a1[1] - *a1) >> 5);
  sub_A354EC(v14, a2, a3, a4, a5);
  v9 = (96 * v5 + 96);
  v10 = a1[1];
  v11 = (v14 + *a1 - v10);
  sub_A35604(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  a1[1] = v9;
  a1[2] = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v9;
}

void sub_A354D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_A3570C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_A354EC(uint64_t a1, __int128 *a2, char *__s, unsigned int *a4, uint64_t a5)
{
  v10 = strlen(__s);
  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v11 = v10;
  if (v10 >= 0x17)
  {
    operator new();
  }

  v14 = v10;
  if (v10)
  {
    memcpy(&__dst, __s, v10);
  }

  *(&__dst + v11) = 0;
  sub_C7BDA8(a1, a2, &__dst, *a4, a5);
  if (v14 < 0)
  {
    operator delete(__dst);
  }

  return a1;
}

void sub_A355E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_A35604(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      v6 = *v5;
      *(a4 + 16) = v5[2];
      *a4 = v6;
      v5[1] = 0;
      v5[2] = 0;
      *v5 = 0;
      v7 = *(v5 + 3);
      *(a4 + 40) = v5[5];
      *(a4 + 24) = v7;
      v5[4] = 0;
      v5[5] = 0;
      v5[3] = 0;
      v8 = *(v5 + 3);
      *(a4 + 64) = *(v5 + 16);
      *(a4 + 48) = v8;
      *(a4 + 80) = 0;
      *(a4 + 88) = 0;
      *(a4 + 72) = 0;
      *(a4 + 72) = *(v5 + 9);
      *(a4 + 88) = v5[11];
      v5[9] = 0;
      v5[10] = 0;
      v5[11] = 0;
      v5 += 12;
      a4 += 96;
    }

    while (v5 != a3);
    if (a2 != a3)
    {
      v9 = a2 + 9;
      do
      {
        if (*v9)
        {
          sub_A32000(v9, *v9);
          operator delete(*v9);
        }

        if (*(v9 - 25) < 0)
        {
          operator delete(*(v9 - 6));
          if (*(v9 - 49) < 0)
          {
LABEL_13:
            operator delete(*(v9 - 9));
          }
        }

        else if (*(v9 - 49) < 0)
        {
          goto LABEL_13;
        }

        v10 = v9 + 3;
        v9 += 12;
      }

      while (v10 != a3);
    }
  }
}

void **sub_A3570C(void **a1)
{
  sub_A35740(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_A35740(uint64_t a1)
{
  v1 = *(a1 + 8);
  for (i = *(a1 + 16); i != v1; i = *(a1 + 16))
  {
    v4 = *(i - 24);
    *(a1 + 16) = i - 96;
    if (v4)
    {
      sub_A32000(i - 24, v4);
      operator delete(*(i - 24));
    }

    if (*(i - 49) < 0)
    {
      operator delete(*(i - 72));
      if (*(i - 73) < 0)
      {
LABEL_10:
        operator delete(*(i - 96));
      }
    }

    else if (*(i - 73) < 0)
    {
      goto LABEL_10;
    }
  }
}

void sub_A35800(std::__shared_weak_count *a1)
{
  a1->__vftable = off_26701C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_A35854(uint64_t a1)
{
  v2 = a1 + 112;
  v3 = *(a1 + 136);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    if ((*(a1 + 47) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_7;
  }

  if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  if (*(a1 + 47) < 0)
  {
LABEL_7:
    v4 = *(a1 + 24);

    operator delete(v4);
  }
}

std::thread *sub_A35904(std::thread *this)
{
  v2 = this + 2;
  if (this[2].__t_)
  {
    std::thread::join(this + 2);
  }

  std::thread::~thread(v2);
  t = this[1].__t_;
  if (!t || atomic_fetch_add(&t->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return this;
  }

  (t->__on_zero_shared)(t);
  std::__shared_weak_count::__release_weak(t);
  return this;
}

void sub_A359A0(uint64_t **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = *v3;
    if (!*v3)
    {
      sub_2D328(3u);
    }

    std::mutex::lock((v4 + 24));
    v5 = *(v4 + 136);
    if ((v5 & 2) != 0)
    {
      sub_2D328(1u);
    }

    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    *(v4 + 136) = v5 | 2;
    std::mutex::unlock((v4 + 24));
    sub_A38504(v4, a2);
    if (!atomic_fetch_add((v4 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      v6 = *(*v4 + 16);

      v6(v4);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    v8 = 0;
    LOBYTE(__p) = 0;
    sub_CC9264(a2 + 32, &__p);
    *(a2 + 184) = 0;
    *(a2 + 192) = 0u;
    *(a2 + 208) = 0u;
    *(a2 + 224) = 0u;
    *(a2 + 240) = 0u;
    *(a2 + 256) = 0;
    sub_CC3658(a2 + 264);
    if (v8 < 0)
    {
      operator delete(__p);
    }
  }
}

void sub_A35AE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  sub_A37AFC(v15);
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_A36040(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::future<void> a21)
{
  std::future<void>::~future(&a21);
  sub_A360C0(&a10);
  sub_1F1A8(&a17);
  sub_1F1A8(&a19);
  _Unwind_Resume(a1);
}

void sub_A36074(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  std::__shared_weak_count::~__shared_weak_count(v18);
  operator delete(v20);
  sub_1F1A8(va);
  _Unwind_Resume(a1);
}

void sub_A36094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_1F1A8(va);
  _Unwind_Resume(a1);
}

void sub_A360A8(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t sub_A360C0(uint64_t result)
{
  v1 = *(result + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = result;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    result = v2;
  }

  v3 = *(result + 32);
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

void sub_A36188(uint64_t a1, uint64_t a2, uint64_t a3)
{
  strcpy(v5, "main");
  v6 = 4;
  v7 = a1;
  sub_CC3658(&v8);
  sub_7E9A4(&v9);
  sub_A362D4(v5, a2, a3);
}

void sub_A36294(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_A37334(va);
  _Unwind_Resume(a1);
}

void sub_A362A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  sub_A37CA8(v15 + 32);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_A37298(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_A31E68(v9 - 88);
  sub_A37AFC(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_A37334(uint64_t a1)
{
  if (*(a1 + 1223) < 0)
  {
    operator delete(*(a1 + 1200));
    if ((*(a1 + 527) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(a1 + 335) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*(a1 + 527) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 504));
  if ((*(a1 + 335) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(a1 + 87) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    operator delete(*(a1 + 64));
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      return a1;
    }

    goto LABEL_11;
  }

LABEL_9:
  operator delete(*(a1 + 312));
  if (*(a1 + 87) < 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_11:
  operator delete(*a1);
  return a1;
}

void sub_A373D8(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  strcpy(v9, "merge");
  v10 = 5;
  v11 = a1;
  sub_CC3658(&v12);
  sub_7E9A4(&v21);
  sub_A37530(v9, a2, a3, a4, a5);
  if (v20 < 0)
  {
    operator delete(__p);
    if ((v18 & 0x80000000) == 0)
    {
LABEL_3:
      if ((v16 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((v18 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(v17);
  if ((v16 & 0x80000000) == 0)
  {
LABEL_4:
    if ((v14 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  operator delete(v15);
  if ((v14 & 0x80000000) == 0)
  {
LABEL_5:
    if ((v10 & 0x80000000) == 0)
    {
      return;
    }

LABEL_11:
    operator delete(v9[0]);
    return;
  }

LABEL_10:
  operator delete(v13);
  if (v10 < 0)
  {
    goto LABEL_11;
  }
}

void sub_A374F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_A37334(va);
  _Unwind_Resume(a1);
}

void sub_A37504(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  sub_A37CA8(v15 + 32);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_A37530@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *(a1 + 288) = *(a1 + 288) + 1.0;
  sub_A3290C(v30, a4);
  sub_CC92D8(&v31, (a3 + 4), &__p);
  v27 = a2;
  if (v29 < 0)
  {
    operator delete(__p);
    v9 = a3[24];
    v10 = a3[25];
    if (v9 == v10)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v9 = a3[24];
    v10 = a3[25];
    if (v9 == v10)
    {
      goto LABEL_20;
    }
  }

  v11 = v33;
  do
  {
    if (v11 < v34)
    {
      *v11 = *v9;
      v11 += 8;
    }

    else
    {
      v12 = v32;
      v13 = v11 - v32;
      v14 = (v11 - v32) >> 3;
      v15 = v14 + 1;
      if ((v14 + 1) >> 61)
      {
        sub_1794();
      }

      v16 = v34 - v32;
      if ((v34 - v32) >> 2 > v15)
      {
        v15 = v16 >> 2;
      }

      if (v16 >= 0x7FFFFFFFFFFFFFF8)
      {
        v17 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v17 = v15;
      }

      if (v17)
      {
        if (!(v17 >> 61))
        {
          operator new();
        }

        sub_1808();
      }

      v18 = v14;
      v19 = (8 * v14);
      v20 = &v19[-v18];
      *v19 = *v9;
      v11 = (v19 + 1);
      memcpy(v20, v12, v13);
      v32 = v20;
      v33 = v11;
      v34 = 0;
      if (v12)
      {
        operator delete(v12);
      }
    }

    v33 = v11;
    ++v9;
  }

  while (v9 != v10);
LABEL_20:
  v21 = *(**(a1 + 24) + 120);
  if ((v21 - 1) >= 3)
  {
    goto LABEL_38;
  }

  if (v21 == 2)
  {
    v22 = off_2670398;
  }

  else
  {
    v22 = off_26700D8;
  }

  v39 = v38;
  v38[0] = v22;
  sub_A3FAC0(a1, a3, v30, v38);
  if (v39 != v38)
  {
    if (v39)
    {
      (*(*v39 + 40))();
    }

    v24 = a3[30];
    v23 = a3[31];
    if (v24 == v23)
    {
      goto LABEL_35;
    }

    goto LABEL_30;
  }

  (*(*v39 + 32))(v39);
  v24 = a3[30];
  v23 = a3[31];
  if (v24 != v23)
  {
LABEL_30:
    v25 = v36;
    do
    {
      if (v25 >= v37)
      {
        v25 = sub_A39CF8(&v35, v24);
      }

      else
      {
        sub_A39E78(v25, v24);
        v25 += 96;
      }

      v36 = v25;
      v24 += 6;
    }

    while (v24 != v23);
  }

LABEL_35:
  sub_A3C19C(a1, v30);
  if (*(**(a1 + 24) + 120) == 3)
  {
    sub_A3B270(a1, v27, v30, 1);
    v39 = v38;
    v38[0] = off_2670418;
    sub_A3AB2C(a1, v27, v30, v38);
  }

  sub_A3B600(a1, v30, 3);
  sub_A3B600(a1, v30, 0);
  sub_A3B600(a1, v30, 2);
  sub_A3B600(a1, v30, 1);
  sub_A3B600(a1, v30, 4);
  sub_A3F558(a1, v30);
  sub_A3EAEC(a1, v27, v30);
LABEL_38:
  sub_A3290C(a5, v30);
  sub_A38068(a5 + 264, a1 + 32);
  return sub_A37AFC(v30);
}

void sub_A37A64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, ...)
{
  va_start(va, a31);
  sub_A31E68(v31 - 128);
  sub_A37AFC(va);
  _Unwind_Resume(a1);
}

void sub_A37A88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, ...)
{
  va_start(va, a31);
  sub_A37AFC(v31);
  sub_A37AFC(va);
  _Unwind_Resume(a1);
}

void sub_A37AA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, ...)
{
  va_start(va, a31);
  sub_A37AFC(va);
  _Unwind_Resume(a1);
}

void sub_A37AD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, ...)
{
  va_start(va, a31);
  sub_A37AFC(va);
  _Unwind_Resume(a1);
}

void sub_A37AE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, ...)
{
  va_start(va, a31);
  sub_A37AFC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_A37AFC(uint64_t a1)
{
  v2 = *(a1 + 240);
  if (!v2)
  {
    goto LABEL_12;
  }

  v3 = *(a1 + 248);
  v4 = *(a1 + 240);
  if (v3 == v2)
  {
    goto LABEL_11;
  }

  v5 = v3 - 3;
  do
  {
    v10 = v5;
    sub_A37BE8(&v10);
    if (*(v5 - 25) < 0)
    {
      operator delete(*(v5 - 6));
      if ((*(v5 - 49) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }
    }

    else if ((*(v5 - 49) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    operator delete(*(v5 - 9));
LABEL_4:
    v6 = v5 - 9;
    v5 -= 12;
  }

  while (v6 != v2);
  v4 = *(a1 + 240);
LABEL_11:
  *(a1 + 248) = v2;
  operator delete(v4);
LABEL_12:
  v7 = *(a1 + 216);
  if (v7)
  {
    *(a1 + 224) = v7;
    operator delete(v7);
  }

  v8 = *(a1 + 192);
  if (v8)
  {
    *(a1 + 200) = v8;
    operator delete(v8);
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v10 = (a1 + 8);
  sub_A37BE8(&v10);
  return a1;
}

void sub_A37BE8(void ***a1)
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
        v6 = *(v4 - 3);
        if (v6)
        {
          *(v4 - 2) = v6;
          operator delete(v6);
        }

        v7 = *(v4 - 6);
        if (v7)
        {
          *(v4 - 5) = v7;
          operator delete(v7);
        }

        v8 = *(v4 - 9);
        if (v8)
        {
          *(v4 - 8) = v8;
          operator delete(v8);
        }

        v9 = (v4 - 96);
        sub_A3212C(&v9);
        if (*(v4 - 161) < 0)
        {
          operator delete(*(v4 - 23));
        }

        v4 -= 296;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

uint64_t sub_A37CA8(uint64_t a1)
{
  if (*(a1 + 1191) < 0)
  {
    operator delete(*(a1 + 1168));
    if ((*(a1 + 495) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(a1 + 303) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      operator delete(*(a1 + 280));
      if ((*(a1 + 55) & 0x80000000) == 0)
      {
        return a1;
      }

      goto LABEL_9;
    }
  }

  else if ((*(a1 + 495) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 472));
  if (*(a1 + 303) < 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((*(a1 + 55) & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_9:
  operator delete(*(a1 + 32));
  return a1;
}

uint64_t sub_A37DCC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN3msl7routing16journey_planning16JourneyPredicate4mainEvEUlRKNS1_10SpaJourneyEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN3msl7routing16journey_planning16JourneyPredicate4mainEvEUlRKNS1_10SpaJourneyEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3msl7routing16journey_planning16JourneyPredicate4mainEvEUlRKNS1_10SpaJourneyEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3msl7routing16journey_planning16JourneyPredicate4mainEvEUlRKNS1_10SpaJourneyEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_A37EDC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN3msl7routing16journey_planning16JourneyPredicate7fill_inEvEUlRKNS1_10SpaJourneyEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN3msl7routing16journey_planning16JourneyPredicate7fill_inEvEUlRKNS1_10SpaJourneyEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3msl7routing16journey_planning16JourneyPredicate7fill_inEvEUlRKNS1_10SpaJourneyEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3msl7routing16journey_planning16JourneyPredicate7fill_inEvEUlRKNS1_10SpaJourneyEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_A37FF0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN3msl7routing16journey_planning16JourneyPredicate17realtime_upgradedEvEUlRKNS1_10SpaJourneyEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN3msl7routing16journey_planning16JourneyPredicate17realtime_upgradedEvEUlRKNS1_10SpaJourneyEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3msl7routing16journey_planning16JourneyPredicate17realtime_upgradedEvEUlRKNS1_10SpaJourneyEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3msl7routing16journey_planning16JourneyPredicate17realtime_upgradedEvEUlRKNS1_10SpaJourneyEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_A38068(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  if (*(a2 + 55) < 0)
  {
    sub_325C((a1 + 32), *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v5 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v5;
  }

  v6 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 56) = v6;
  v7 = *(a2 + 88);
  v8 = *(a2 + 104);
  v9 = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 120) = v9;
  *(a1 + 104) = v8;
  *(a1 + 88) = v7;
  v10 = *(a2 + 152);
  v11 = *(a2 + 168);
  v12 = *(a2 + 184);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 184) = v12;
  *(a1 + 168) = v11;
  *(a1 + 152) = v10;
  v13 = *(a2 + 216);
  v14 = *(a2 + 232);
  v15 = *(a2 + 248);
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 248) = v15;
  *(a1 + 232) = v14;
  *(a1 + 216) = v13;
  if (*(a2 + 303) < 0)
  {
    sub_325C((a1 + 280), *(a2 + 280), *(a2 + 288));
  }

  else
  {
    v16 = *(a2 + 280);
    *(a1 + 296) = *(a2 + 296);
    *(a1 + 280) = v16;
  }

  v17 = *(a2 + 304);
  v18 = *(a2 + 320);
  v19 = *(a2 + 352);
  *(a1 + 336) = *(a2 + 336);
  *(a1 + 352) = v19;
  *(a1 + 304) = v17;
  *(a1 + 320) = v18;
  v20 = *(a2 + 368);
  v21 = *(a2 + 384);
  v22 = *(a2 + 416);
  *(a1 + 400) = *(a2 + 400);
  *(a1 + 416) = v22;
  *(a1 + 368) = v20;
  *(a1 + 384) = v21;
  v23 = *(a2 + 432);
  v24 = *(a2 + 448);
  *(a1 + 464) = *(a2 + 464);
  *(a1 + 432) = v23;
  *(a1 + 448) = v24;
  if (*(a2 + 495) < 0)
  {
    sub_325C((a1 + 472), *(a2 + 472), *(a2 + 480));
  }

  else
  {
    v25 = *(a2 + 472);
    *(a1 + 488) = *(a2 + 488);
    *(a1 + 472) = v25;
  }

  v26 = *(a2 + 496);
  v27 = *(a2 + 512);
  v28 = *(a2 + 544);
  *(a1 + 528) = *(a2 + 528);
  *(a1 + 544) = v28;
  *(a1 + 496) = v26;
  *(a1 + 512) = v27;
  v29 = *(a2 + 560);
  v30 = *(a2 + 576);
  v31 = *(a2 + 608);
  *(a1 + 592) = *(a2 + 592);
  *(a1 + 608) = v31;
  *(a1 + 560) = v29;
  *(a1 + 576) = v30;
  memcpy((a1 + 624), (a2 + 624), 0x220uLL);
  v32 = (a1 + 1168);
  if (*(a2 + 1191) < 0)
  {
    sub_325C(v32, *(a2 + 1168), *(a2 + 1176));
  }

  else
  {
    v33 = *(a2 + 1168);
    *(a1 + 1184) = *(a2 + 1184);
    *v32 = v33;
  }

  *(a1 + 1192) = *(a2 + 1192);
  v34 = *(a2 + 1208);
  v35 = *(a2 + 1224);
  v36 = *(a2 + 1240);
  *(a1 + 1256) = *(a2 + 1256);
  *(a1 + 1224) = v35;
  *(a1 + 1240) = v36;
  *(a1 + 1208) = v34;
  return a1;
}

void sub_A38258(_Unwind_Exception *exception_object)
{
  if (*(v1 + 495) < 0)
  {
    operator delete(*v3);
    if ((*(v1 + 303) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v1 + 55) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((*(v1 + 303) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*v2);
  if ((*(v1 + 55) & 0x80000000) == 0)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(*(v1 + 32));
  _Unwind_Resume(exception_object);
}

uint64_t sub_A38364(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN3msl7routing16journey_planning16JourneyPredicate7at_riskEvEUlRKNS1_10SpaJourneyEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN3msl7routing16journey_planning16JourneyPredicate7at_riskEvEUlRKNS1_10SpaJourneyEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3msl7routing16journey_planning16JourneyPredicate7at_riskEvEUlRKNS1_10SpaJourneyEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3msl7routing16journey_planning16JourneyPredicate7at_riskEvEUlRKNS1_10SpaJourneyEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_A3848C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN3msl7routing16journey_planning16JourneyPredicate14direct_walkingEvEUlRKNS1_10SpaJourneyEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN3msl7routing16journey_planning16JourneyPredicate14direct_walkingEvEUlRKNS1_10SpaJourneyEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3msl7routing16journey_planning16JourneyPredicate14direct_walkingEvEUlRKNS1_10SpaJourneyEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3msl7routing16journey_planning16JourneyPredicate14direct_walkingEvEUlRKNS1_10SpaJourneyEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_A38504(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __lk.__m_ = (a1 + 24);
  __lk.__owns_ = 1;
  std::mutex::lock((a1 + 24));
  std::__assoc_sub_state::__sub_wait(a1, &__lk);
  v4 = *(a1 + 16);
  v35.__ptr_ = 0;
  std::exception_ptr::~exception_ptr(&v35);
  if (v4)
  {
    std::exception_ptr::exception_ptr(&v34, (a1 + 16));
    v33.__ptr_ = &v34;
    std::rethrow_exception(v33);
    __break(1u);
  }

  else
  {
    *a2 = *(a1 + 144);
    *(a2 + 8) = *(a1 + 152);
    *(a2 + 24) = *(a1 + 168);
    *(a1 + 152) = 0u;
    v5 = *(a1 + 176);
    *(a1 + 168) = 0u;
    *(a2 + 32) = v5;
    *(a2 + 48) = *(a1 + 192);
    *(a1 + 184) = 0u;
    v6 = *(a1 + 200);
    v7 = *(a1 + 216);
    v8 = *(a1 + 232);
    *(a2 + 104) = *(a1 + 248);
    *(a2 + 88) = v8;
    *(a2 + 72) = v7;
    *(a2 + 56) = v6;
    v9 = *(a1 + 264);
    v10 = *(a1 + 280);
    v11 = *(a1 + 296);
    *(a2 + 168) = *(a1 + 312);
    *(a2 + 152) = v11;
    *(a2 + 136) = v10;
    *(a2 + 120) = v9;
    *(a2 + 184) = *(a1 + 328);
    *(a2 + 192) = *(a1 + 336);
    *(a2 + 208) = *(a1 + 352);
    *(a1 + 336) = 0u;
    *(a1 + 352) = 0;
    *(a2 + 216) = *(a1 + 360);
    *(a2 + 232) = *(a1 + 376);
    *(a1 + 360) = 0u;
    *(a1 + 376) = 0;
    *(a2 + 240) = *(a1 + 384);
    *(a2 + 256) = *(a1 + 400);
    *(a1 + 384) = 0u;
    *(a1 + 400) = 0;
    v12 = *(a1 + 424);
    *(a2 + 264) = *(a1 + 408);
    *(a2 + 280) = v12;
    v13 = *(a1 + 440);
    *(a2 + 312) = *(a1 + 456);
    *(a2 + 296) = v13;
    *(a1 + 456) = 0;
    *(a1 + 440) = 0u;
    v14 = *(a1 + 480);
    *(a2 + 320) = *(a1 + 464);
    *(a2 + 336) = v14;
    v15 = *(a1 + 496);
    v16 = *(a1 + 512);
    v17 = *(a1 + 544);
    *(a2 + 384) = *(a1 + 528);
    *(a2 + 400) = v17;
    *(a2 + 352) = v15;
    *(a2 + 368) = v16;
    v18 = *(a1 + 560);
    v19 = *(a1 + 576);
    v20 = *(a1 + 608);
    *(a2 + 448) = *(a1 + 592);
    *(a2 + 464) = v20;
    *(a2 + 416) = v18;
    *(a2 + 432) = v19;
    v21 = *(a1 + 624);
    v22 = *(a1 + 640);
    v23 = *(a1 + 672);
    *(a2 + 512) = *(a1 + 656);
    *(a2 + 528) = v23;
    *(a2 + 480) = v21;
    *(a2 + 496) = v22;
    *(a2 + 544) = *(a1 + 688);
    *(a2 + 560) = *(a1 + 704);
    *(a1 + 688) = 0;
    *(a1 + 696) = 0u;
    v24 = *(a1 + 792);
    *(a2 + 632) = *(a1 + 776);
    *(a2 + 648) = v24;
    v25 = *(a1 + 824);
    *(a2 + 664) = *(a1 + 808);
    *(a2 + 680) = v25;
    v26 = *(a1 + 728);
    *(a2 + 568) = *(a1 + 712);
    *(a2 + 584) = v26;
    v27 = *(a1 + 760);
    *(a2 + 600) = *(a1 + 744);
    *(a2 + 616) = v27;
    v28 = *(a1 + 856);
    *(a2 + 696) = *(a1 + 840);
    *(a2 + 712) = v28;
    *(a2 + 728) = *(a1 + 872);
    *(a2 + 736) = *(a1 + 880);
    *(a2 + 752) = *(a1 + 896);
    *(a1 + 880) = 0u;
    *(a1 + 896) = 0;
    v29 = *(a1 + 952);
    *(a2 + 792) = *(a1 + 936);
    *(a2 + 808) = v29;
    v30 = *(a1 + 920);
    *(a2 + 760) = *(a1 + 904);
    *(a2 + 776) = v30;
    v31 = *(a1 + 1016);
    *(a2 + 856) = *(a1 + 1000);
    *(a2 + 872) = v31;
    v32 = *(a1 + 984);
    *(a2 + 824) = *(a1 + 968);
    *(a2 + 840) = v32;
    memcpy((a2 + 888), (a1 + 1032), 0x238uLL);
    *(a1 + 1576) = 0u;
    *(a1 + 1592) = 0;
    *(a2 + 1472) = *(a1 + 1616);
    *(a2 + 1488) = *(a1 + 1632);
    *(a2 + 1504) = *(a1 + 1648);
    *(a2 + 1520) = *(a1 + 1664);
    *(a2 + 1456) = *(a1 + 1600);
    if (__lk.__owns_)
    {
      std::mutex::unlock(__lk.__m_);
    }
  }
}

void sub_A387D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::mutex *a11, char a12)
{
  std::exception_ptr::~exception_ptr(&a9);
  if (a12 == 1)
  {
    std::mutex::unlock(a11);
  }

  _Unwind_Resume(a1);
}

void sub_A38820(std::__shared_weak_count *a1)
{
  a1->__vftable = off_2670498;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_A38880(uint64_t a1)
{
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);

  std::__shared_count::~__shared_count(a1);
}

void sub_A388EC(uint64_t a1)
{
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);
  std::__shared_count::~__shared_count(a1);

  operator delete();
}

uint64_t sub_A3896C(uint64_t a1)
{
  if (*(a1 + 136))
  {
    if (*(a1 + 1599) < 0)
    {
      operator delete(*(a1 + 1576));
      if ((*(a1 + 903) & 0x80000000) == 0)
      {
LABEL_4:
        if ((*(a1 + 711) & 0x80000000) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_12;
      }
    }

    else if ((*(a1 + 903) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    operator delete(*(a1 + 880));
    if ((*(a1 + 711) & 0x80000000) == 0)
    {
LABEL_5:
      if ((*(a1 + 463) & 0x80000000) == 0)
      {
LABEL_6:
        sub_A37AFC(a1 + 144);
        goto LABEL_7;
      }

LABEL_13:
      operator delete(*(a1 + 440));
      goto LABEL_6;
    }

LABEL_12:
    operator delete(*(a1 + 688));
    if ((*(a1 + 463) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_7:
  v2 = *(*a1 + 8);

  return v2(a1);
}

uint64_t sub_A38A2C(uint64_t a1)
{
  if (*(a1 + 1455) < 0)
  {
    operator delete(*(a1 + 1432));
    if ((*(a1 + 759) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(a1 + 567) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*(a1 + 759) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 736));
  if ((*(a1 + 567) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(a1 + 319) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(*(a1 + 544));
  if ((*(a1 + 319) & 0x80000000) == 0)
  {
LABEL_5:
    v2 = a1;

    return sub_A37AFC(v2);
  }

LABEL_11:
  operator delete(*(a1 + 296));
  v2 = a1;

  return sub_A37AFC(v2);
}

void *sub_A38AD8(void *result)
{
  v1 = *result;
  if (*result)
  {
    if ((*(v1 + 136) & 1) == 0)
    {
      v11.__ptr_ = 0;
      v2 = *(v1 + 16);
      v3 = result;
      std::exception_ptr::~exception_ptr(&v11);
      result = v3;
      v1 = *v3;
      if (!v2 && *(v1 + 8) >= 1)
      {
        v12.__cat_ = std::future_category();
        *&v12.__val_ = 4;
        std::future_error::future_error(&v9, v12);
        exception = __cxa_allocate_exception(0x20uLL);
        __cxa_init_primary_exception();
        v5 = std::logic_error::logic_error(exception, &v9);
        exception[1] = v9.__ec_;
        std::exception_ptr::__from_native_exception_pointer(v5, v6);
        v7.__ptr_ = &v10;
        std::__assoc_sub_state::set_exception(v1, v7);
        std::exception_ptr::~exception_ptr(&v10);
        std::future_error::~future_error(&v9);
        result = v3;
        v1 = *v3;
      }
    }

    if (!atomic_fetch_add((v1 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      v8 = result;
      (*(*v1 + 16))(v1);
      return v8;
    }
  }

  return result;
}

void sub_A38C50(std::__shared_weak_count *a1)
{
  a1->__vftable = off_2670530;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_A38CB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = __chkstk_darwin(a1, a2, a3, a4, a5, a6, a7, a8);
  sub_3AC57C(*(*(v8 + 32) + 16), v26);
  v9 = *(v8 + 32);
  v10 = v9[1];
  v23[0] = *v9;
  v23[1] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    v9 = *(v8 + 32);
  }

  v23[2] = v26;
  sub_A393A8(v24, (v9 + 3));
  v24[501] = v24;
  v24[502] = v24;
  v24[503] = v24;
  v24[504] = v24;
  v24[505] = v24;
  v24[506] = v24;
  v24[507] = v24;
  v24[508] = v24;
  v24[509] = v24;
  v24[510] = v24;
  v24[511] = v24;
  v24[512] = v24;
  v24[513] = v24;
  v24[514] = v24;
  v24[515] = v24;
  v24[516] = v24;
  v24[517] = v24;
  v24[518] = v24;
  v24[519] = v24;
  v24[520] = v24;
  v24[521] = v24;
  v24[522] = v24;
  v24[523] = v24;
  v11 = *(v8 + 32);
  v24[525] = *(v11 + 4224);
  v24[524] = v24;
  sub_99A14(&v25, (v11 + 4232));
  sub_A394EC(v22, *(v8 + 40));
  v12 = *(v8 + 48);
  v14 = v12[1];
  v13 = v12[2];
  v15 = *v12;
  v21 = *(v12 + 6);
  v20[2] = v13;
  v20[0] = v15;
  v20[1] = v14;
  std::promise<void>::set_value(*(v8 + 72));
  strcpy(v16, "main async");
  v16[23] = 10;
  v17 = v23;
  sub_CC3658(&v18);
  sub_7E9A4(&v19);
  sub_A362D4(v16, v22, v20);
}

void sub_A390F0(void *a1)
{
  sub_A37334(&v5);
  __cxa_begin_catch(a1);
  v3 = *(v1 + 56);
  std::current_exception();
  sub_A39344(v3, v4);
  std::exception_ptr::~exception_ptr(v4);
  __cxa_end_catch();
  JUMPOUT(0xA38F38);
}

void sub_A39198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::exception_ptr a9)
{
  std::exception_ptr::~exception_ptr(&a9);
  __cxa_end_catch();
  sub_A39C84(&STACK[0xB60]);
  JUMPOUT(0xA391B8);
}

void sub_A39210(_Unwind_Exception *a1)
{
  std::exception_ptr::~exception_ptr(&STACK[0xC20]);
  __cxa_end_catch();
  _Unwind_Resume(a1);
}

uint64_t sub_A3922C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  *(result + 48) = *(a2 + 48);
  *(result + 32) = v2;
  v3 = *(a2 + 64);
  *(result + 56) = *(a2 + 56);
  *(result + 64) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a2 + 80);
  *(result + 72) = *(a2 + 72);
  *(result + 80) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_A39270(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    v2 = *(a1 + 64);
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = *(a1 + 64);
    if (!v2)
    {
      return;
    }
  }

  if (!atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);

    std::__shared_weak_count::__release_weak(v2);
  }
}

void sub_A39344(std::__assoc_sub_state **a1, const std::exception_ptr *a2)
{
  v2 = *a1;
  if (!*a1)
  {
    sub_2D328(3u);
  }

  std::exception_ptr::exception_ptr(&v4, a2);
  v3.__ptr_ = &v4;
  std::__assoc_sub_state::set_exception(v2, v3);
  std::exception_ptr::~exception_ptr(&v4);
}

uint64_t sub_A393A8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 16) = *(a2 + 16);
  v5 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  memcpy((a1 + 40), (a2 + 40), 0xF10uLL);
  sub_C9E484(a1 + 3896, (a2 + 3896));
  *(a1 + 3928) = *(a2 + 3928);
  v6 = *(a2 + 3936);
  *(a1 + 3936) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 3944) = *(a2 + 3944);
  v7 = *(a2 + 3952);
  *(a1 + 3952) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 3960) = *(a2 + 3960);
  v8 = *(a2 + 3968);
  *(a1 + 3968) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 3976) = *(a2 + 3976);
  v9 = *(a2 + 3984);
  *(a1 + 3984) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 3992) = *(a2 + 3992);
  v10 = *(a2 + 4000);
  *(a1 + 4000) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

void sub_A394D0(_Unwind_Exception *a1)
{
  sub_1F1A8(v2);
  sub_1F1A8(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_A394EC(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  if (*(a2 + 47) < 0)
  {
    sub_325C((a1 + 24), *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 5);
    *(a1 + 24) = v5;
  }

  v6 = *(a2 + 48);
  *(a1 + 56) = 0;
  *(a1 + 48) = v6;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  sub_A39750((a1 + 56), *(a2 + 7), *(a2 + 8), 0x8E38E38E38E38E39 * ((*(a2 + 8) - *(a2 + 7)) >> 5));
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  sub_A39750((a1 + 80), *(a2 + 10), *(a2 + 11), 0x8E38E38E38E38E39 * ((*(a2 + 11) - *(a2 + 10)) >> 5));
  v7 = *(a2 + 104);
  *(a1 + 120) = 0;
  *(a1 + 104) = v7;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  v9 = *(a2 + 15);
  v8 = *(a2 + 16);
  if (v8 != v9)
  {
    if (((v8 - v9) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 144) = *(a2 + 72);
  v10 = *(a2 + 76);
  *(a1 + 154) = *(a2 + 154);
  *(a1 + 152) = v10;
  if (*(a2 + 183) < 0)
  {
    sub_325C((a1 + 160), *(a2 + 20), *(a2 + 21));
  }

  else
  {
    v11 = a2[10];
    *(a1 + 176) = *(a2 + 22);
    *(a1 + 160) = v11;
  }

  v12 = *(a2 + 46);
  *(a1 + 188) = *(a2 + 188);
  *(a1 + 184) = v12;
  return a1;
}

void sub_A39674(_Unwind_Exception *a1)
{
  v6 = *v4;
  if (*v4)
  {
    *(v1 + 128) = v6;
    operator delete(v6);
  }

  sub_A396C4(v3);
  sub_A396C4(v2);
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  _Unwind_Resume(a1);
}

void *sub_A396C4(void *a1)
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
        v5 = *(v3 - 3);
        if (v5)
        {
          *(v3 - 2) = v5;
          operator delete(v5);
        }

        v6 = *(v3 - 6);
        if (v6)
        {
          *(v3 - 5) = v6;
          operator delete(v6);
        }

        v3 -= 36;
        sub_49AEC0(v3);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_A39750(void *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0xE38E38E38E38E4)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_A39854(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_A39874(va);
  *(v10 + 8) = v11;
  sub_A398F0(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_A39874(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 3);
      if (v5)
      {
        *(v3 - 2) = v5;
        operator delete(v5);
      }

      v6 = *(v3 - 6);
      if (v6)
      {
        *(v3 - 5) = v6;
        operator delete(v6);
      }

      v3 -= 36;
      sub_49AEC0(v3);
    }
  }

  return a1;
}

void ***sub_A398F0(void ***result)
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
        do
        {
          v6 = *(v4 - 3);
          if (v6)
          {
            *(v4 - 2) = v6;
            operator delete(v6);
          }

          v7 = *(v4 - 6);
          if (v7)
          {
            *(v4 - 5) = v7;
            operator delete(v7);
          }

          v4 -= 36;
          sub_49AEC0(v4);
        }

        while (v4 != v2);
        v5 = **v3;
      }

      v1[1] = v2;
      operator delete(v5);
      return v3;
    }
  }

  return result;
}

void sub_A39990(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 24));
  if ((*(a1 + 136) & 1) != 0 || (v44.__ptr_ = 0, v4 = *(a1 + 16), std::exception_ptr::~exception_ptr(&v44), v4))
  {
    sub_2D328(2u);
  }

  *(a1 + 144) = *a2;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0u;
  *(a1 + 152) = *(a2 + 8);
  *(a1 + 168) = *(a2 + 24);
  *(a2 + 24) = 0;
  *(a2 + 8) = 0u;
  v5 = *(a2 + 32);
  *(a1 + 192) = *(a2 + 48);
  *(a1 + 176) = v5;
  *(a2 + 40) = 0u;
  *(a2 + 32) = 0;
  v6 = *(a2 + 136);
  v7 = *(a2 + 152);
  v8 = *(a2 + 120);
  *(a1 + 312) = *(a2 + 168);
  v9 = *(a2 + 56);
  v10 = *(a2 + 72);
  v11 = *(a2 + 88);
  *(a1 + 248) = *(a2 + 104);
  *(a1 + 232) = v11;
  *(a1 + 216) = v10;
  *(a1 + 200) = v9;
  *(a1 + 280) = v6;
  *(a1 + 296) = v7;
  *(a1 + 264) = v8;
  *(a1 + 328) = *(a2 + 184);
  *(a1 + 336) = 0;
  *(a1 + 344) = 0u;
  *(a1 + 336) = *(a2 + 192);
  *(a1 + 352) = *(a2 + 208);
  *(a2 + 208) = 0;
  *(a2 + 192) = 0u;
  *(a1 + 376) = 0;
  *(a1 + 360) = 0u;
  *(a1 + 360) = *(a2 + 216);
  *(a1 + 376) = *(a2 + 232);
  *(a2 + 232) = 0;
  *(a2 + 216) = 0u;
  *(a1 + 400) = 0;
  *(a1 + 384) = 0u;
  *(a1 + 384) = *(a2 + 240);
  *(a1 + 400) = *(a2 + 256);
  *(a2 + 256) = 0;
  *(a2 + 240) = 0u;
  v12 = *(a2 + 280);
  *(a1 + 408) = *(a2 + 264);
  *(a1 + 424) = v12;
  v13 = *(a2 + 296);
  *(a1 + 456) = *(a2 + 312);
  *(a1 + 440) = v13;
  *(a2 + 304) = 0u;
  *(a2 + 296) = 0;
  v15 = *(a2 + 480);
  v14 = *(a2 + 496);
  v16 = *(a2 + 512);
  *(a1 + 672) = *(a2 + 528);
  v17 = *(a2 + 400);
  v19 = *(a2 + 352);
  v18 = *(a2 + 368);
  *(a1 + 528) = *(a2 + 384);
  *(a1 + 544) = v17;
  *(a1 + 496) = v19;
  *(a1 + 512) = v18;
  v20 = *(a2 + 464);
  v22 = *(a2 + 416);
  v21 = *(a2 + 432);
  *(a1 + 592) = *(a2 + 448);
  *(a1 + 608) = v20;
  *(a1 + 560) = v22;
  *(a1 + 576) = v21;
  v23 = *(a2 + 336);
  *(a1 + 464) = *(a2 + 320);
  *(a1 + 480) = v23;
  *(a1 + 640) = v14;
  *(a1 + 656) = v16;
  *(a1 + 624) = v15;
  v24 = *(a2 + 544);
  *(a1 + 704) = *(a2 + 560);
  *(a1 + 688) = v24;
  *(a2 + 552) = 0u;
  *(a2 + 544) = 0;
  v26 = *(a2 + 632);
  v25 = *(a2 + 648);
  v27 = *(a2 + 664);
  *(a1 + 824) = *(a2 + 680);
  v28 = *(a2 + 568);
  v29 = *(a2 + 584);
  v30 = *(a2 + 616);
  *(a1 + 744) = *(a2 + 600);
  *(a1 + 760) = v30;
  *(a1 + 712) = v28;
  *(a1 + 728) = v29;
  *(a1 + 792) = v25;
  *(a1 + 808) = v27;
  *(a1 + 776) = v26;
  v31 = *(a2 + 696);
  v32 = *(a2 + 712);
  *(a1 + 872) = *(a2 + 728);
  *(a1 + 840) = v31;
  *(a1 + 856) = v32;
  v33 = *(a2 + 736);
  *(a1 + 896) = *(a2 + 752);
  *(a1 + 880) = v33;
  *(a2 + 752) = 0;
  *(a2 + 736) = 0u;
  v34 = *(a2 + 872);
  v36 = *(a2 + 824);
  v35 = *(a2 + 840);
  *(a1 + 1000) = *(a2 + 856);
  *(a1 + 1016) = v34;
  *(a1 + 968) = v36;
  *(a1 + 984) = v35;
  v37 = *(a2 + 760);
  v38 = *(a2 + 776);
  v39 = *(a2 + 808);
  *(a1 + 936) = *(a2 + 792);
  *(a1 + 952) = v39;
  *(a1 + 904) = v37;
  *(a1 + 920) = v38;
  memcpy((a1 + 1032), (a2 + 888), 0x220uLL);
  v40 = *(a2 + 1432);
  *(a1 + 1592) = *(a2 + 1448);
  *(a1 + 1576) = v40;
  *(a2 + 1448) = 0;
  *(a2 + 1440) = 0;
  *(a2 + 1432) = 0;
  v41 = *(a2 + 1520);
  v42 = *(a2 + 1504);
  v43 = *(a2 + 1488);
  *(a1 + 1616) = *(a2 + 1472);
  *(a1 + 1632) = v43;
  *(a1 + 1648) = v42;
  *(a1 + 1664) = v41;
  *(a1 + 1600) = *(a2 + 1456);
  *(a1 + 136) |= 5u;
  std::condition_variable::notify_all((a1 + 88));
  std::mutex::unlock((a1 + 24));
}

uint64_t sub_A39C84(uint64_t a1)
{
  if (*(a1 + 183) < 0)
  {
    operator delete(*(a1 + 160));
  }

  v2 = *(a1 + 120);
  if (v2)
  {
    *(a1 + 128) = v2;
    operator delete(v2);
  }

  sub_A396C4((a1 + 80));
  sub_A396C4((a1 + 56));
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

uint64_t sub_A39CF8(uint64_t *a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x2AAAAAAAAAAAAAALL)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 5) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 5);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 5) >= 0x155555555555555)
  {
    v5 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v3;
  }

  v14 = a1;
  if (v5)
  {
    if (v5 <= 0x2AAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1808();
  }

  __p = 0;
  v11 = 96 * v2;
  v13 = 0;
  sub_A39E78(96 * v2, a2);
  v12 = 96 * v2 + 96;
  sub_A39F80(a1, &__p);
  v6 = a1[1];
  v7 = v11;
  while (1)
  {
    v8 = v12;
    if (v12 == v7)
    {
      break;
    }

    v12 -= 96;
    v15 = (v8 - 24);
    sub_A37BE8(&v15);
    if (*(v8 - 49) < 0)
    {
      operator delete(*(v8 - 72));
      if (*(v8 - 73) < 0)
      {
        goto LABEL_16;
      }
    }

    else if (*(v8 - 73) < 0)
    {
LABEL_16:
      operator delete(*(v8 - 96));
    }
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v6;
}

uint64_t sub_A39E78(uint64_t a1, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_325C(a1, *a2, *(a2 + 1));
    if ((*(a2 + 47) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_325C((a1 + 24), *(a2 + 3), *(a2 + 4));
    goto LABEL_6;
  }

  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  if (*(a2 + 47) < 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 5);
  *(a1 + 24) = v5;
LABEL_6:
  v6 = a2[3];
  v7 = *(a2 + 16);
  *(a1 + 72) = 0;
  *(a1 + 64) = v7;
  *(a1 + 48) = v6;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  sub_A32B60(a1 + 72, *(a2 + 9), *(a2 + 10), 0x14C1BACF914C1BADLL * ((*(a2 + 10) - *(a2 + 9)) >> 3));
  return a1;
}

void sub_A39F34(_Unwind_Exception *exception_object)
{
  if ((*(v1 + 23) & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(*v1);
  _Unwind_Resume(exception_object);
}

void sub_A39F80(uint64_t *a1, void *a2)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a2[1] + *a1 - v4;
  if (v4 != *a1)
  {
    v7 = *a1;
    v8 = a2[1] + *a1 - v4;
    do
    {
      v9 = *v7;
      *(v8 + 16) = *(v7 + 16);
      *v8 = v9;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      *v7 = 0;
      v10 = *(v7 + 24);
      *(v8 + 40) = *(v7 + 40);
      *(v8 + 24) = v10;
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      *(v7 + 24) = 0;
      v11 = *(v7 + 48);
      *(v8 + 64) = *(v7 + 64);
      *(v8 + 48) = v11;
      *(v8 + 80) = 0;
      *(v8 + 88) = 0;
      *(v8 + 72) = 0;
      *(v8 + 72) = *(v7 + 72);
      *(v8 + 88) = *(v7 + 88);
      *(v7 + 72) = 0;
      *(v7 + 80) = 0;
      *(v7 + 88) = 0;
      v7 += 96;
      v8 += 96;
    }

    while (v7 != v4);
    do
    {
      v15 = (v5 + 72);
      sub_A37BE8(&v15);
      if (*(v5 + 47) < 0)
      {
        operator delete(*(v5 + 24));
        if (*(v5 + 23) < 0)
        {
LABEL_10:
          operator delete(*v5);
        }
      }

      else if (*(v5 + 23) < 0)
      {
        goto LABEL_10;
      }

      v5 += 96;
    }

    while (v5 != v4);
  }

  a2[1] = v6;
  v12 = *a1;
  *a1 = v6;
  a1[1] = v12;
  a2[1] = v12;
  v13 = a1[1];
  a1[1] = a2[2];
  a2[2] = v13;
  v14 = a1[2];
  a1[2] = a2[3];
  a2[3] = v14;
  *a2 = a2[1];
}

void sub_A3A0D4(uint64_t a1, uint64_t a2, __int128 *a3)
{
  sub_7E974(a1 + 1296);
  v6 = *(a3 + 23);
  v7 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a3 + 1);
  }

  if (v6)
  {
    if ((v7 & 0x80) == 0)
    {
LABEL_5:
      v8 = *a3;
      v10 = *(a3 + 2);
      v9 = v8;
      goto LABEL_8;
    }
  }

  else
  {
    a3 = **(a1 + 24);
    if ((*(a3 + 23) & 0x80) == 0)
    {
      goto LABEL_5;
    }
  }

  sub_325C(&v9, *a3, *(a3 + 1));
LABEL_8:
  sub_A7CDD8(*(a1 + 24) + 24, *(*(a1 + 24) + 16), &v9);
}

void sub_A3A438(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  *(v21 + 248) = v22;
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  sub_A37AFC(v21);
  v25 = *(v23 - 88);
  *(v23 - 88) = 0;
  if (v25)
  {
    (*(*v25 + 8))(v25);
    if (*(v23 - 57) < 0)
    {
LABEL_7:
      operator delete(*(v23 - 80));
      _Unwind_Resume(a1);
    }
  }

  else if (*(v23 - 57) < 0)
  {
    goto LABEL_7;
  }

  _Unwind_Resume(a1);
}

void sub_A3A4F4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*(**(a1 + 24) + 34) == 1)
  {
    sub_7E974(a1 + 1296);
    sub_501CE8(&v12, *(a1 + 24) + 24);
    sub_BD58E0(&v12, a2, a3);
    *(a1 + 96) = sub_7EA60(a1 + 1296) + *(a1 + 96);
    v11 = 18;
    strcpy(__p, "Journey Tightening");
    v6 = *(a1 + 24);
    if (*(*v6 + 125) == 1)
    {
      v7 = sub_4F96D0(v6 + 3920);
      v13 = v7;
      v8 = a2[31];
      if (v8 >= a2[32])
      {
        v9 = sub_A40650(a2 + 30, __p, a1, &v13, a2);
      }

      else
      {
        sub_C7BDA8(a2[31], __p, a1, v7, a2);
        v9 = v8 + 96;
        a2[31] = v8 + 96;
      }

      a2[31] = v9;
      if (v11 < 0)
      {
        operator delete(*__p);
      }
    }
  }
}

void sub_A3A630(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  *(v14 + 248) = v15;
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_A3A658(uint64_t a1, uint64_t *a2)
{
  if (*(**(a1 + 24) + 35) == 1)
  {
    sub_7E974(a1 + 1296);
    sub_501CE8(&v10, *(a1 + 24) + 24);
    sub_C15444(&v10, a2);
    *(a1 + 104) = sub_7EA60(a1 + 1296) + *(a1 + 104);
    v9 = 20;
    strcpy(__p, "Transfer Preferences");
    v4 = *(a1 + 24);
    if (*(*v4 + 125) == 1)
    {
      v5 = sub_4F96D0(v4 + 3920);
      v11 = v5;
      v6 = a2[31];
      if (v6 >= a2[32])
      {
        v7 = sub_A40650(a2 + 30, __p, a1, &v11, a2);
      }

      else
      {
        sub_C7BDA8(a2[31], __p, a1, v5, a2);
        v7 = v6 + 96;
        a2[31] = v6 + 96;
      }

      a2[31] = v7;
      if (v9 < 0)
      {
        operator delete(*__p);
      }
    }
  }
}

void sub_A3A790(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  *(v14 + 248) = v15;
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_A3A7B8(uint64_t a1, uint64_t *a2)
{
  if (*(**(a1 + 24) + 72) == 1)
  {
    sub_7E974(a1 + 1296);
    v10 = 0;
    v11 = 0;
    v12 = 0;
    sub_C18EB4(&v10, a2);
    *(a1 + 152) = sub_7EA60(a1 + 1296) + *(a1 + 152);
    v9 = 18;
    strcpy(__p, "Double Trip Filter");
    v4 = *(a1 + 24);
    if (*(*v4 + 125) == 1)
    {
      v5 = sub_4F96D0(v4 + 3920);
      v13 = v5;
      v6 = a2[31];
      if (v6 >= a2[32])
      {
        v7 = sub_A40650(a2 + 30, __p, a1, &v13, a2);
      }

      else
      {
        sub_C7BDA8(a2[31], __p, a1, v5, a2);
        v7 = v6 + 96;
        a2[31] = v6 + 96;
      }

      a2[31] = v7;
      if (v9 < 0)
      {
        operator delete(*__p);
      }
    }

    if (v10)
    {
      v11 = v10;
      operator delete(v10);
    }
  }
}

void sub_A3A8E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17)
{
  *(v17 + 248) = v18;
  if (a14 < 0)
  {
    operator delete(__p);
    v20 = a16;
    if (!a16)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v20 = a16;
    if (!a16)
    {
      goto LABEL_3;
    }
  }

  operator delete(v20);
  _Unwind_Resume(exception_object);
}

void sub_A3A938(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(**(a1 + 24) + 30) == 1)
  {
    operator new();
  }
}

void sub_A3AB00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  *(v14 + 248) = v15;
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_A3AD08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_A3FCA4(va);
  _Unwind_Resume(a1);
}

void sub_A3AD1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_A3AD38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(**(a1 + 24) + 32) == 1)
  {
    sub_7E974(a1 + 1296);
    sub_681624(v6, *(*(a1 + 24) + 16), *(a1 + 24) + 24, *(*(a1 + 24) + 4224));
    sub_BC7C6C(v6, a2 + 152, a3);
  }
}

void sub_A3AE9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  *(v15 + 248) = v16;
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_A3AEC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(**(a1 + 24) + 33) == 1 && *(a2 + 184) != 0)
  {
    sub_7E974(a1 + 1296);
    sub_501CE8(&v6, *(a1 + 24) + 24);
    sub_BD9AA4(&v6, a3);
    *(a1 + 128) = sub_7EA60(a1 + 1296) + *(a1 + 128);
    operator new();
  }
}

void sub_A3B020(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  *(v15 + 248) = v16;
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A3B048(uint64_t result, uint64_t a2)
{
  if (*(**(result + 24) + 36) == 1)
  {
    sub_7E974(result + 1296);
    operator new();
  }

  return result;
}

void sub_A3B21C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16)
{
  *(v16 + 248) = v17;
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_A3FD8C(&a16);
  _Unwind_Resume(a1);
}

void sub_A3B254(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_A3B270(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (*(**(a1 + 24) + 31) == 1)
  {
    sub_BA7534(&v4, a2, a3, a4);
    operator new();
  }
}

void sub_A3B394(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  *(v14 + 248) = v15;
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A3B3BC(uint64_t result, uint64_t a2)
{
  if (*(**(result + 24) + 36) == 1)
  {
    sub_7E974(result + 1296);
    operator new();
  }

  return result;
}

void sub_A3B5A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16)
{
  *(v16 + 248) = v17;
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_A3FD8C(&a16);
  _Unwind_Resume(a1);
}

void sub_A3B5E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_A3B600(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = **(a1 + 24);
  if (!a3 && (v6[39] & 1) != 0 || a3 == 1 && (v6[37] & 1) != 0 || a3 == 2 && (v6[38] & 1) != 0 || a3 == 3 && (v6[66] & 1) != 0 || a3 == 4 && (v6[67] & 1) != 0)
  {
    sub_7E974(a1 + 1296);
    v7 = sub_B6D0(&v20, a3);
    sub_BD287C(v7, a2);
    *(a1 + 144) = sub_7EA60(a1 + 1296) + *(a1 + 144);
    sub_BD2D2C(a3, &v16);
    v8 = std::string::insert(&v16, 0, "Journey Ordering (", 0x12uLL);
    v9 = *&v8->__r_.__value_.__l.__data_;
    v17.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
    *&v17.__r_.__value_.__l.__data_ = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    v10 = std::string::append(&v17, ")", 1uLL);
    v11 = *&v10->__r_.__value_.__l.__data_;
    v19 = v10->__r_.__value_.__r.__words[2];
    *__p = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    v12 = *(a1 + 24);
    if (*(*v12 + 125) == 1)
    {
      v13 = sub_4F96D0(v12 + 3920);
      v21 = v13;
      v14 = a2[31];
      if (v14 >= a2[32])
      {
        v15 = sub_A40650(a2 + 30, __p, a1, &v21, a2);
      }

      else
      {
        sub_C7BDA8(a2[31], __p, a1, v13, a2);
        v15 = v14 + 96;
        a2[31] = v14 + 96;
      }

      a2[31] = v15;
    }

    if (SHIBYTE(v19) < 0)
    {
      operator delete(__p[0]);
      if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_18:
        if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          return;
        }

LABEL_22:
        operator delete(v16.__r_.__value_.__l.__data_);
        return;
      }
    }

    else if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    operator delete(v17.__r_.__value_.__l.__data_);
    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_22;
    }
  }
}

void sub_A3B7E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  *(v28 + 248) = v29;
  if (a28 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a15 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a16);
  if ((a15 & 0x80000000) == 0)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(a10);
  _Unwind_Resume(exception_object);
}

void sub_A3B864(uint64_t a1, uint64_t a2)
{
  if (*(**(a1 + 24) + 76) == 1)
  {
    sub_7E974(a1 + 1296);
    operator new();
  }
}

void sub_A3BA0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  *(v14 + 248) = v15;
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A3BA38(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a2 + 145) == 1 && *(**(result + 24) + 40) == 1)
  {
    sub_7E974(result + 1296);
    operator new();
  }

  return result;
}

void sub_A3BC78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  *(v16 + 248) = v17;
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_A31E68(&a16);
  _Unwind_Resume(a1);
}

void sub_A3BCB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double *sub_A3BCCC(double *result, uint64_t a2, uint64_t a3)
{
  if (*(**(result + 3) + 42) == 1)
  {
    v4 = result;
    sub_7E974((result + 162));
    sub_BBEA9C(v6, *(v4 + 3) + 24, a3);
    sub_BBEB64(v6, a2);
    v4[25] = sub_7EA60((v4 + 162)) + v4[25];
    operator new();
  }

  return result;
}

void sub_A3BEB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  *(v16 + 248) = v17;
  if (a14 < 0)
  {
    operator delete(__p);
    sub_A31E68(&a16);
    _Unwind_Resume(a1);
  }

  sub_A31E68(&a16);
  _Unwind_Resume(a1);
}

double *sub_A3BF0C(double *result, uint64_t a2, uint64_t a3)
{
  if (*(**(result + 3) + 41) == 1)
  {
    sub_7E974((result + 162));
    operator new();
  }

  return result;
}

void sub_A3C148(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  *(v16 + 248) = v17;
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_A31E68(&a16);
  _Unwind_Resume(a1);
}

void sub_A3C180(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A3C19C(uint64_t result, uint64_t a2)
{
  if (*(**(result + 24) + 73) == 1)
  {
    sub_7E974(result + 1296);
    operator new();
  }

  return result;
}

void sub_A3C360(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  *(v15 + 248) = v16;
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_A3FF40(&a15);
  _Unwind_Resume(a1);
}

void sub_A3C39C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_A3C3B8(uint64_t a1, uint64_t a2)
{
  if (*(**(a1 + 24) + 68) == 1)
  {
    sub_7E974(a1 + 1296);
    nullsub_1();
    sub_C198F4(&v4, a2);
    *(a1 + 152) = sub_7EA60(a1 + 1296) + *(a1 + 152);
    operator new();
  }
}

void sub_A3C504(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  *(v14 + 248) = v15;
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_A3C52C(uint64_t a1, uint64_t *a2)
{
  if (*(**(a1 + 24) + 71) == 1)
  {
    sub_7E974(a1 + 1296);
    sub_C18314(&v16, *(a1 + 24) + 24);
    sub_C18338(&v16, a2);
    *(a1 + 152) = sub_7EA60(a1 + 1296) + *(a1 + 152);
    v15 = 21;
    strcpy(__p, "Double Station Filter");
    v4 = *(a1 + 24);
    if (*(*v4 + 125) == 1)
    {
      v5 = sub_4F96D0(v4 + 3920);
      v21 = v5;
      v6 = a2[31];
      if (v6 >= a2[32])
      {
        v7 = sub_A40650(a2 + 30, __p, a1, &v21, a2);
      }

      else
      {
        sub_C7BDA8(a2[31], __p, a1, v5, a2);
        v7 = v6 + 96;
        a2[31] = v6 + 96;
      }

      a2[31] = v7;
      if (v15 < 0)
      {
        operator delete(*__p);
      }
    }

    v8 = v20;
    if (v20)
    {
      do
      {
        v9 = *v8;
        operator delete(v8);
        v8 = v9;
      }

      while (v9);
    }

    v10 = v19;
    v19 = 0;
    if (v10)
    {
      operator delete(v10);
    }

    v11 = v18;
    if (v18)
    {
      do
      {
        v12 = *v11;
        operator delete(v11);
        v11 = v12;
      }

      while (v12);
    }

    v13 = v17;
    v17 = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }
}

void sub_A3C69C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16)
{
  *(v16 + 248) = v17;
  if (a14 < 0)
  {
    operator delete(__p);
    sub_A4008C(&a16);
    _Unwind_Resume(a1);
  }

  sub_A4008C(&a16);
  _Unwind_Resume(a1);
}

double *sub_A3C6E0(double *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(**(result + 3) + 44) == 1)
  {
    sub_7E974((result + 162));
    operator new();
  }

  return result;
}

void sub_A3C950(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, char a17)
{
  *(v17 + 248) = v18;
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_A31E68(&a17);
  _Unwind_Resume(a1);
}

void sub_A3C98C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_A3C9A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(**(a1 + 24) + 45) == 1)
  {
    sub_7E974(a1 + 1296);
    operator new();
  }
}

void sub_A3CC10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  *(v21 + 248) = v22;
  if (a21 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

double *sub_A3CC68(double *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(**(result + 3) + 46) == 1)
  {
    sub_7E974((result + 162));
    operator new();
  }

  return result;
}

void sub_A3CEE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, char a17)
{
  *(v17 + 248) = v18;
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_A31E68(&a17);
  _Unwind_Resume(a1);
}

void sub_A3CF1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_A3CF38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(**(a1 + 24) + 47) == 1)
  {
    sub_7E974(a1 + 1296);
    operator new();
  }
}

void sub_A3D128(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  *(v15 + 248) = v16;
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_A3D154(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(**(a1 + 24) + 48) == 1)
  {
    sub_7E974(a1 + 1296);
    operator new();
  }
}

void sub_A3D334(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  *(v15 + 248) = v16;
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_A3D360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = **(a1 + 24);
  if (*(v4 + 49) == 1)
  {
    if (*(v4 + 52))
    {
      v5 = *(a2 + 184) == 1;
    }

    else
    {
      v5 = 0;
    }

    if (v5)
    {
      sub_7E974(a1 + 1296);
      operator new();
    }
  }
}

void sub_A3D548(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  *(v20 + 248) = v21;
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_A3D594(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(**(a1 + 24) + 56) == 1)
  {
    sub_7E974(a1 + 1296);
    operator new();
  }
}

void sub_A3D76C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  *(v15 + 248) = v16;
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_A3D798(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(**(a1 + 24) + 58) == 1)
  {
    sub_7E974(a1 + 1296);
    operator new();
  }
}

void sub_A3D974(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  *(v15 + 248) = v16;
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_A3D9A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(**(a1 + 24) + 59) == 1)
  {
    sub_7E974(a1 + 1296);
    operator new();
  }
}

void sub_A3DB7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  *(v14 + 248) = v15;
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_A3DBA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(**(a1 + 24) + 60) == 1)
  {
    sub_7E974(a1 + 1296);
    sub_C283C8(&__p, a2, a3);
    *(a1 + 152) = sub_7EA60(a1 + 1296) + *(a1 + 152);
    operator new();
  }
}

void sub_A3DCEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  *(v14 + 248) = v15;
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_A3DD14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(**(a1 + 24) + 61) == 1)
  {
    sub_7E974(a1 + 1296);
    operator new();
  }
}

void sub_A3DEE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17)
{
  *(v17 + 248) = v18;
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_A3DF3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(**(a1 + 24) + 62) == 1)
  {
    sub_7E974(a1 + 1296);
    nullsub_1();
    sub_C1A170(&__p, a2, a3);
    *(a1 + 152) = sub_7EA60(a1 + 1296) + *(a1 + 152);
    operator new();
  }
}

void sub_A3E088(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  *(v14 + 248) = v15;
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_A3E0B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(**(a1 + 24) + 57) == 1 && *(a2 + 184) == 1)
  {
    sub_7E974(a1 + 1296);
    operator new();
  }
}

void sub_A3E290(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  *(v14 + 248) = v15;
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_A3E2BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(**(a1 + 24) + 63) == 1)
  {
    sub_7E974(a1 + 1296);
    operator new();
  }
}

void sub_A3E518(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  *(v21 + 248) = v22;
  if (a21 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_A3E570(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(**(a1 + 24) + 43) == 1)
  {
    sub_7E974(a1 + 1296);
    operator new();
  }
}

void sub_A3E750(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  *(v15 + 248) = v16;
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_A3E77C(uint64_t a1, uint64_t a2)
{
  if (*(**(a1 + 24) + 70) == 1)
  {
    sub_7E974(a1 + 1296);
    v4[0] = xmmword_22A7120;
    v4[1] = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    sub_C17D78(v4, a2);
    *(a1 + 152) = sub_7EA60(a1 + 1296) + *(a1 + 152);
    operator new();
  }
}

void sub_A3E8D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  *(v15 + 248) = v16;
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_A3E8FC(uint64_t a1, uint64_t a2)
{
  if (*(**(a1 + 24) + 74) == 1)
  {
    sub_7E974(a1 + 1296);
    operator new();
  }
}

void sub_A3EAC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  *(v15 + 248) = v16;
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_A3EAEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(**(a1 + 24) + 75) == 1)
  {
    sub_7E974(a1 + 1296);
    operator new();
  }
}

void sub_A3ECA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  *(v14 + 248) = v15;
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_A3ECD0(uint64_t a1, uint64_t a2)
{
  if (*(**(a1 + 24) + 64) == 1)
  {
    sub_7E974(a1 + 1296);
    operator new();
  }
}

void sub_A3EF40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  *(v23 + 248) = v24;
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A3EF84(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(**(result + 24) + 65) == 1)
  {
    sub_7E974(result + 1296);
    operator new();
  }

  return result;
}

void sub_A3F18C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38, char a39)
{
  *(v39 + 248) = v40;
  if (a38 < 0)
  {
    operator delete(__p);
  }

  sub_A404BC(&a39);
  _Unwind_Resume(a1);
}

void sub_A3F1E4(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = **(a1 + 24);
  if (*(v3 + 27) == 1 && *(a2 + 188) == 1 && *(v3 + 28) == 1)
  {
    sub_7E974(a1 + 1296);
    sub_BA538C(v6, *(*(a1 + 24) + 16), *(a1 + 24) + 24);
    sub_BA53C0(v6, a3);
    *(a1 + 248) = sub_7EA60(a1 + 1296) + *(a1 + 248);
    operator new();
  }
}

void sub_A3F340(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  *(v14 + 248) = v15;
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_A3F368(uint64_t a1, uint64_t a2)
{
  if (*(**(a1 + 24) + 77) == 1)
  {
    sub_7E974(a1 + 1296);
    operator new();
  }
}

void sub_A3F52C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  *(v14 + 248) = v15;
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_A3F558(uint64_t a1, uint64_t *a2)
{
  if (*(**(a1 + 24) + 78) == 1)
  {
    sub_7E974(a1 + 1296);
    sub_C27310(__p, a2);
    *(a1 + 152) = sub_7EA60(a1 + 1296) + *(a1 + 152);
    v9 = 20;
    strcpy(__p, "Risky Journey Filter");
    v4 = *(a1 + 24);
    if (*(*v4 + 125) == 1)
    {
      v5 = sub_4F96D0(v4 + 3920);
      v10 = v5;
      v6 = a2[31];
      if (v6 >= a2[32])
      {
        v7 = sub_A40650(a2 + 30, __p, a1, &v10, a2);
      }

      else
      {
        sub_C7BDA8(a2[31], __p, a1, v5, a2);
        v7 = v6 + 96;
        a2[31] = v6 + 96;
      }

      a2[31] = v7;
      if (v9 < 0)
      {
        operator delete(*__p);
      }
    }
  }
}

void sub_A3F680(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  *(v14 + 248) = v15;
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_A3F6A8(uint64_t a1, uint64_t a2)
{
  if (*(**(a1 + 24) + 79) == 1)
  {
    sub_7E974(a1 + 1296);
    operator new();
  }
}

void sub_A3F85C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  *(v14 + 248) = v15;
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_A3F888(uint64_t a1, uint64_t a2)
{
  if (*(**(a1 + 24) + 80) == 1)
  {
    sub_7E974(a1 + 1296);
    operator new();
  }
}

void sub_A3FA78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  *(v21 + 248) = v22;
  if (a21 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_A3FAC0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  sub_7E974(a1 + 1296);
  sub_BBE5B0(__p, a4);
  sub_BBE66C(__p, a2, a3);
  if (v15 == __p)
  {
    (*(*v15 + 32))(v15);
  }

  else if (v15)
  {
    (*(*v15 + 40))();
  }

  *(a1 + 264) = sub_7EA60(a1 + 1296) + *(a1 + 264);
  v14 = 16;
  strcpy(__p, "Journey Blending");
  v8 = *(a1 + 24);
  if (*(*v8 + 125) == 1)
  {
    v9 = sub_4F96D0(v8 + 3920);
    v12 = v9;
    v10 = a3[31];
    if (v10 >= a3[32])
    {
      v11 = sub_A40650(a3 + 30, __p, a1, &v12, a3);
    }

    else
    {
      sub_C7BDA8(a3[31], __p, a1, v9, a3);
      v11 = v10 + 96;
      a3[31] = v10 + 96;
    }

    a3[31] = v11;
    if (v14 < 0)
    {
      operator delete(*__p);
    }
  }
}

void sub_A3FC5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  *(v16 + 248) = v17;
  if (a16 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_A3FCA4(void *a1)
{
  v2 = a1[14];
  if (v2)
  {
    a1[15] = v2;
    operator delete(v2);
  }

  v3 = a1[7];
  if (v3)
  {
    do
    {
      v7 = *v3;
      if (*(v3 + 39) < 0)
      {
        operator delete(v3[2]);
      }

      operator delete(v3);
      v3 = v7;
    }

    while (v7);
  }

  v4 = a1[5];
  a1[5] = 0;
  if (v4)
  {
    operator delete(v4);
  }

  v5 = a1[3];
  if (v5 == a1)
  {
    (*(*v5 + 32))(v5);
    return a1;
  }

  else
  {
    if (v5)
    {
      (*(*v5 + 40))(v5);
    }

    return a1;
  }
}

void *sub_A3FD8C(void *a1)
{
  v2 = a1[8];
  if (!v2)
  {
    goto LABEL_16;
  }

  v3 = a1[9];
  v4 = a1[8];
  if (v3 == v2)
  {
    goto LABEL_15;
  }

  v5 = 0;
  do
  {
    v6 = *(v3 + v5 - 8);
    if (v3 + v5 - 32 == v6)
    {
      (*(*v6 + 32))(v6);
      v7 = *(v3 + v5 - 40);
      if (v3 + v5 - 64 == v7)
      {
        goto LABEL_4;
      }
    }

    else
    {
      if (v6)
      {
        (*(*v6 + 40))(v6);
      }

      v7 = *(v3 + v5 - 40);
      if (v3 + v5 - 64 == v7)
      {
LABEL_4:
        (*(*v7 + 32))(v7);
        goto LABEL_5;
      }
    }

    if (v7)
    {
      (*(*v7 + 40))(v7);
    }

LABEL_5:
    v5 -= 72;
  }

  while (v3 + v5 != v2);
  v4 = a1[8];
LABEL_15:
  a1[9] = v2;
  operator delete(v4);
LABEL_16:
  v8 = a1[5];
  if (v8 == a1 + 2)
  {
    (*(*v8 + 32))(v8);
    return a1;
  }

  else
  {
    if (v8)
    {
      (*(*v8 + 40))(v8);
    }

    return a1;
  }
}

void *sub_A3FF40(void *a1)
{
  v2 = a1[9];
  if (v2)
  {
    a1[10] = v2;
    operator delete(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    v4 = a1[7];
    v5 = a1[6];
    if (v4 != v3)
    {
      v6 = a1[7];
      do
      {
        v9 = *(v6 - 3);
        v6 -= 3;
        v8 = v9;
        if (v9)
        {
          v10 = *(v4 - 2);
          v7 = v8;
          if (v10 != v8)
          {
            v11 = *(v4 - 2);
            do
            {
              v13 = *(v11 - 3);
              v11 -= 24;
              v12 = v13;
              if (v13)
              {
                *(v10 - 2) = v12;
                operator delete(v12);
              }

              v10 = v11;
            }

            while (v11 != v8);
            v7 = *v6;
          }

          *(v4 - 2) = v8;
          operator delete(v7);
        }

        v4 = v6;
      }

      while (v6 != v3);
      v5 = a1[6];
    }

    a1[7] = v3;
    operator delete(v5);
  }

  v14 = a1[3];
  if (v14)
  {
    v15 = a1[4];
    v16 = a1[3];
    if (v15 != v14)
    {
      v17 = a1[4];
      do
      {
        v20 = *(v17 - 3);
        v17 -= 3;
        v19 = v20;
        if (v20)
        {
          v21 = *(v15 - 2);
          v18 = v19;
          if (v21 != v19)
          {
            v22 = *(v15 - 2);
            do
            {
              v24 = *(v22 - 3);
              v22 -= 24;
              v23 = v24;
              if (v24)
              {
                *(v21 - 2) = v23;
                operator delete(v23);
              }

              v21 = v22;
            }

            while (v22 != v19);
            v18 = *v17;
          }

          *(v15 - 2) = v19;
          operator delete(v18);
        }

        v15 = v17;
      }

      while (v17 != v14);
      v16 = a1[3];
    }

    a1[4] = v14;
    operator delete(v16);
  }

  return a1;
}

void *sub_A4008C(void *a1)
{
  v2 = a1[8];
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = a1[6];
  a1[6] = 0;
  if (v4)
  {
    operator delete(v4);
  }

  v5 = a1[3];
  if (v5)
  {
    do
    {
      v6 = *v5;
      operator delete(v5);
      v5 = v6;
    }

    while (v6);
  }

  v7 = a1[1];
  a1[1] = 0;
  if (v7)
  {
    operator delete(v7);
  }

  return a1;
}

void *sub_A40100(void *a1)
{
  sub_A40284((a1 + 44));
  v2 = a1[43];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[41];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = a1[35];
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = a1[33];
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  v6 = a1[28];
  if (v6)
  {
    a1[29] = v6;
    operator delete(v6);
  }

  v7 = a1[27];
  if (v7)
  {
    free(v7);
  }

  v8 = a1[13];
  if (v8)
  {
    a1[14] = v8;
    operator delete(v8);
  }

  v9 = a1[12];
  if (v9)
  {
    free(v9);
  }

  return a1;
}

uint64_t sub_A40284(uint64_t a1)
{
  if (*(a1 + 615) < 0)
  {
    operator delete(*(a1 + 592));
  }

  v2 = *(a1 + 560);
  if (v2)
  {
    *(a1 + 568) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 536);
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(a1 + 512);
  if (v4)
  {
    operator delete(v4);
  }

  v5 = *(a1 + 464);
  if (v5)
  {
    operator delete(v5);
  }

  v6 = *(a1 + 432);
  if (v6)
  {
    *(a1 + 440) = v6;
    operator delete(v6);
  }

  v7 = *(a1 + 408);
  if (v7)
  {
    operator delete(v7);
  }

  v8 = *(a1 + 384);
  if (v8)
  {
    *(a1 + 392) = v8;
    operator delete(v8);
  }

  v9 = *(a1 + 360);
  if (v9)
  {
    *(a1 + 368) = v9;
    operator delete(v9);
  }

  v10 = *(a1 + 336);
  if (v10)
  {
    operator delete(v10);
  }

  v11 = *(a1 + 312);
  if (v11)
  {
    *(a1 + 320) = v11;
    operator delete(v11);
  }

  v12 = *(a1 + 288);
  if (v12)
  {
    operator delete(v12);
  }

  v13 = *(a1 + 264);
  if (v13)
  {
    *(a1 + 272) = v13;
    operator delete(v13);
  }

  v14 = *(a1 + 240);
  if (v14)
  {
    operator delete(v14);
  }

  v15 = *(a1 + 216);
  if (v15)
  {
    *(a1 + 224) = v15;
    operator delete(v15);
  }

  v16 = *(a1 + 192);
  if (v16)
  {
    *(a1 + 200) = v16;
    operator delete(v16);
  }

  v17 = *(a1 + 184);
  if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
  }

  v18 = *(a1 + 104);
  if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
  }

  v19 = *(a1 + 88);
  if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
  }

  v20 = *(a1 + 72);
  if (!v20 || atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v20->__on_zero_shared)(v20);
  std::__shared_weak_count::__release_weak(v20);
  return a1;
}

uint64_t sub_A404BC(uint64_t a1)
{
  if (*(a1 + 1183) < 0)
  {
    operator delete(*(a1 + 1160));
  }

  sub_A40284(a1 + 376);
  v2 = *(a1 + 368);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 352);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = *(a1 + 304);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = *(a1 + 288);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  v6 = *(a1 + 248);
  if (v6)
  {
    *(a1 + 256) = v6;
    operator delete(v6);
  }

  v7 = *(a1 + 240);
  if (v7)
  {
    free(v7);
  }

  v8 = *(a1 + 128);
  if (v8)
  {
    *(a1 + 136) = v8;
    operator delete(v8);
  }

  v9 = *(a1 + 120);
  if (v9)
  {
    free(v9);
  }

  return a1;
}