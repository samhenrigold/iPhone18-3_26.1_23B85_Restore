void sub_240B913A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, unint64_t *a30)
{
  sub_240B7BB60(&a30);
  v31 = STACK[0x328];
  if (STACK[0x328])
  {
    STACK[0x330] = v31;
    operator delete(v31);
  }

  a30 = &STACK[0x340];
  sub_240B916A4(&a30);
  sub_240B7BB60(&STACK[0x358]);
  _Unwind_Resume(a1);
}

BOOL sub_240B91420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {

    return sub_240BA33EC(a1, a2, a3);
  }

  else
  {
    v6[2] = v3;
    v6[3] = v4;
    v6[0] = 0;
    v6[1] = v6;
    return sub_240BA33EC(v6, a2, a3);
  }
}

uint64_t sub_240B91460(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (a1 == a2)
  {
    v19 = *(a2 + 32);
    v20 = *(a2 + 64);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 64) = v20;
    *(a1 + 32) = v19;
    v21 = *(a2 + 80);
    v22 = *(a2 + 96);
    v23 = *(a2 + 128);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 128) = v23;
    *(a1 + 80) = v21;
    *(a1 + 96) = v22;
    v24 = *(a2 + 144);
    v25 = *(a2 + 160);
    v26 = *(a2 + 176);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 160) = v25;
    *(a1 + 176) = v26;
    *(a1 + 144) = v24;
    v27 = *(a2 + 200);
    *(a1 + 216) = *(a2 + 216);
    *(a1 + 200) = v27;
    v28 = *(a2 + 248);
    v29 = *(a2 + 264);
    *(a1 + 280) = *(a2 + 280);
    *(a1 + 264) = v29;
    *(a1 + 248) = v28;
    *(a1 + 288) = *(a2 + 288);
    v30 = *(a2 + 328);
    *(a1 + 333) = *(a2 + 333);
    *(a1 + 328) = v30;
    *(a1 + 344) = *(a2 + 344);
    v31 = *(a2 + 352);
    v32 = *(a2 + 368);
    v33 = *(a2 + 384);
    *(a1 + 393) = *(a2 + 393);
    *(a1 + 368) = v32;
    *(a1 + 384) = v33;
    *(a1 + 352) = v31;
  }

  else
  {
    sub_240B343B0((a1 + 8), *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 2);
    v4 = *(a2 + 32);
    v5 = *(a2 + 64);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 64) = v5;
    *(a1 + 32) = v4;
    v6 = *(a2 + 80);
    v7 = *(a2 + 96);
    v8 = *(a2 + 128);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 128) = v8;
    *(a1 + 80) = v6;
    *(a1 + 96) = v7;
    v9 = *(a2 + 144);
    v10 = *(a2 + 160);
    v11 = *(a2 + 176);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 160) = v10;
    *(a1 + 176) = v11;
    *(a1 + 144) = v9;
    v12 = *(a2 + 200);
    *(a1 + 216) = *(a2 + 216);
    *(a1 + 200) = v12;
    sub_240B343B0((a1 + 224), *(a2 + 224), *(a2 + 232), (*(a2 + 232) - *(a2 + 224)) >> 2);
    v13 = *(a2 + 248);
    v14 = *(a2 + 264);
    *(a1 + 280) = *(a2 + 280);
    *(a1 + 264) = v14;
    *(a1 + 248) = v13;
    *(a1 + 288) = *(a2 + 288);
    sub_240BA2C68((a1 + 304), *(a2 + 304), *(a2 + 312), (*(a2 + 312) - *(a2 + 304)) >> 3);
    v15 = *(a2 + 328);
    *(a1 + 333) = *(a2 + 333);
    *(a1 + 328) = v15;
    *(a1 + 344) = *(a2 + 344);
    v16 = *(a2 + 352);
    v17 = *(a2 + 368);
    v18 = *(a2 + 384);
    *(a1 + 393) = *(a2 + 393);
    *(a1 + 368) = v17;
    *(a1 + 384) = v18;
    *(a1 + 352) = v16;
    sub_240B343B0((a1 + 416), *(a2 + 416), *(a2 + 424), (*(a2 + 424) - *(a2 + 416)) >> 2);
    sub_240B343B0((a1 + 440), *(a2 + 440), *(a2 + 448), (*(a2 + 448) - *(a2 + 440)) >> 2);
    sub_240BA2D94((a1 + 464), *(a2 + 464), *(a2 + 472), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 472) - *(a2 + 464)) >> 3));
  }

  sub_240BA2EF4((a1 + 488), a2 + 488);
  v34 = *(a2 + 616);
  *(a1 + 632) = *(a2 + 632);
  *(a1 + 616) = v34;
  return a1;
}

void sub_240B916A4(void ***a1)
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
        v4 = sub_240B7BB60(v4 - 640);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

BOOL sub_240B91728(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v4 = *(a1 + 404);
  if (!v4)
  {
    return 0;
  }

  if (v4 == -1)
  {
    v7 = *(a1 + 48);
    if (v7 < 1)
    {
      return 0;
    }

    v8 = *a1;
    v9 = v7 > 2 || v8 <= 0.5;
    if (!v9 || v7 == 3 && v8 >= 3.0)
    {
      return 0;
    }
  }

  if (*a4 <= 0x800uLL && *(a4 + 8) < 0x801uLL || (*(a4 + 368) & 1) != 0)
  {
    return 0;
  }

  result = 0;
  if (*(a1 + 77) != 1 && *(a1 + 79) != 1)
  {
    result = 0;
    if (!*(a1 + 112) && !a2)
    {
      result = 0;
      if (*(a1 + 380) == 1 && *(a1 + 384) == 1)
      {
        if ((*(a1 + 32) & 1) == 0)
        {
          if (sub_240B97DD0(a1) && *(a1 + 352) <= 0)
          {
            v11 = *(a1 + 68);
            return *(a1 + 64) == v11;
          }

          if (!a3)
          {
            v11 = *(a1 + 68);
            if ((v11 & 1) == 0)
            {
              return *(a1 + 64) == v11;
            }
          }
        }

        return 0;
      }
    }
  }

  return result;
}

void sub_240B9184C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  sub_240B50E0C(v8);
  v9 = 256;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0;
  v14 = 1;
  memcpy(v15, &unk_240C83BC8, sizeof(v15));
  sub_240B94630(&v16);
}

void sub_240B9342C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, uint64_t a44, uint64_t a45, void *__p, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54)
{
  STACK[0x1E40] = 0;
  if (v54)
  {
    atomic_fetch_add(&qword_27E519020, -*(v54 - 24));
    free(*(v54 - 32));
  }

  v56 = STACK[0x1E18];
  STACK[0x1E18] = 0;
  if (v56)
  {
    atomic_fetch_add(&qword_27E519020, -*(v56 - 24));
    free(*(v56 - 32));
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a51)
  {
    atomic_fetch_add(&qword_27E519020, -*(a51 - 24));
    free(*(a51 - 32));
  }

  if (a54)
  {
    atomic_fetch_add(&qword_27E519020, -*(a54 - 24));
    free(*(a54 - 32));
  }

  if (a42)
  {
    operator delete(a42);
  }

  if (STACK[0x200])
  {
    operator delete(STACK[0x200]);
  }

  sub_240B7B9D4(&STACK[0x218]);
  if (a23)
  {
    (*(*a23 + 8))(a23);
  }

  sub_240B56CA4(&STACK[0x700]);
  sub_240B96DF4(&STACK[0x940]);
  _Unwind_Resume(a1);
}

void sub_240B93770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  sub_240B50E0C(v8);
  v9 = 256;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0;
  v14 = 1;
  memcpy(v15, &unk_240C83BC8, sizeof(v15));
  sub_240B94630(&v16);
}

void sub_240B944C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28)
{
  v31 = *(v29 - 232);
  if (v31)
  {
    *(v29 - 224) = v31;
    operator delete(v31);
  }

  v32 = *(v29 - 176);
  if (v32)
  {
    *(v29 - 168) = v32;
    operator delete(v32);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a26)
  {
    atomic_fetch_add(&qword_27E519020, -*(a26 - 24));
    free(*(a26 - 32));
  }

  sub_240B7B9D4(&a28);
  if (v28)
  {
    (*(*v28 + 8))(v28);
  }

  sub_240B56CA4(&STACK[0x580]);
  a28 = &STACK[0x7C0];
  sub_240B30C38(&a28);
  sub_240B96DF4(&STACK[0x7D8]);
  _Unwind_Resume(a1);
}

void sub_240B94630(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  *a1 = 1065353216;
  *(a1 + 8) = 0;
  *(a1 + 40) = 0;
  *(a1 + 36) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 48) = 0xFFFFFFFF00000003;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 68) = 0;
  *(a1 + 84) = -1;
  *(a1 + 88) = -1;
  *(a1 + 72) = -1;
  *(a1 + 80) = -1;
  *(a1 + 90) = 0;
  *(a1 + 96) = -1;
  *(a1 + 104) = -1;
  *(a1 + 109) = -1;
  *(a1 + 184) = 0;
  *(a1 + 185) = 16843009;
  *(a1 + 189) = 1;
  *(a1 + 192) = 0;
  *(a1 + 200) = xmmword_240C11540;
  *(a1 + 216) = 1056964608;
  v2[0] = xmmword_240C84F6C;
  v2[1] = unk_240C84F7C;
  *(a1 + 224) = 0;
  v1 = (a1 + 224);
  v1[1] = 0;
  v1[2] = 0;
  sub_240B43818(v1, v2, &v3);
}

void sub_240B94804(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_240B94820(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    for (i = v1[1]; i != v2; sub_240B7BEFC(i))
    {
      --i;
    }

    v1[1] = v2;
    v5 = **a1;

    operator delete(v5);
  }
}

void sub_240B9489C(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_240BA1E88(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t sub_240B94A54(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, void *a6, uint64_t a7)
{
  *(a7 + 560) = *(a5 + 17);
  *(a7 + 392) = *(a5 + 16);
  *(a7 + 400) = *a5;
  *(a7 + 16) = *(a5 + 4);
  std::string::operator=((a7 + 80), (a5 + 88));
  v14 = *a4;
  *(a7 + 112) = *a4;
  *(a7 + 208 + 4 * (v14 - 1)) = 0;
  if (v14 != 1)
  {
    v15 = v14 - 1;
    if (v15)
    {
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = a4 + 1;
      do
      {
        v20 = v19[3 * v17 + 2];
        *(a7 + 208 + 4 * v17) = v19[3 * v17 + 1];
        if (v20 - 2 >= 0xFFFFFFFFFFFFFFFDLL)
        {
          v17 = ++v18;
        }

        else
        {
          *(a7 + 120 + 4 * v16) = v20;
          *(a7 + 164 + 4 * v16) = v18;
          v17 = (v18 + 1);
          v18 = v17;
          if (v19[3 * v17 + 2] < v20)
          {
            *(a7 + 116) = ++v16;
          }
        }
      }

      while (v15 > v17);
    }
  }

  v21 = *(a3 + 68);
  if (v21 == 1)
  {
    *(a7 + 12) = 1;
    if (a2 < 0x191 && a1 < 0x191)
    {
      v21 = 2;
    }

    if (*(a3 + 72) != -1)
    {
      v21 = *(a3 + 72);
    }

    *(a7 + 64) = v21;
    if (!a6)
    {
      v23 = *(a3 + 64);
      *(a7 + 32) = v23;
LABEL_19:
      v24 = 1;
      goto LABEL_24;
    }
  }

  else if (!a6)
  {
    v23 = *(a3 + 64);
    *(a7 + 32) = v23;
    if (*(a7 + 60))
    {
      return 1;
    }

    result = 1;
    if (*(a7 + 61))
    {
      return result;
    }

    goto LABEL_19;
  }

  *(a7 + 12) = 0;
  *(a7 + 68) = 0x200000002;
  if (sub_240BD30B0(a6[18], a6[19], a7 + 40) || sub_240BD324C(a6, (a7 + 32)))
  {
    return 1;
  }

  v24 = 0;
  v23 = *(a7 + 32);
LABEL_24:
  if (v23 != 2 && (*(a7 + 60) || *(a7 + 61)))
  {
    return 1;
  }

  v25 = *(a3 + 77);
  if (*(a3 + 77))
  {
    if (v25 == 1)
    {
      v26 = *(a3 + 192);
LABEL_38:
      v28 = 1;
      goto LABEL_39;
    }

    LOBYTE(v25) = *a3 >= 99.0;
  }

  v26 = *(a3 + 192);
  if ((v25 & 1) != 0 || v26 > 0.0 || *(a3 + 424) - *(a3 + 416) == 32)
  {
    goto LABEL_38;
  }

  v28 = 0;
LABEL_39:
  v29 = *(a3 + 112);
  v30 = *(a3 + 68);
  if (v30)
  {
    v31 = 1;
  }

  else
  {
    v31 = v29 <= 0;
  }

  v32 = v28 | 0x20;
  if (v31)
  {
    v32 = v28;
  }

  *(a7 + 24) = v32;
  v33 = *(a7 + 12);
  if (v33 && v26 == 0.0)
  {
    if (*(a3 + 416) == *(a3 + 424))
    {
      *(a7 + 24) = v32 & 0x20;
    }

    v34 = 0;
    v35 = *(a3 + 80);
  }

  else
  {
    v34 = 0;
    v35 = *(a3 + 80);
    if (!v33 && *(a3 + 48) <= 5)
    {
      v34 = *(a3 + 56) < 4uLL;
    }
  }

  if (v35 == 1)
  {
    v34 = 1;
  }

  else if (!v35)
  {
    v34 = 0;
  }

  *(a7 + 425) = v34;
  v36 = *(a3 + 84);
  if (v36 != -1)
  {
    *(a7 + 452) = v36;
    goto LABEL_59;
  }

  *(a7 + 452) = 0;
  if (v33 != 1)
  {
    v38 = *(a3 + 56);
    v39 = v38 == 2;
    if (v38 > 2)
    {
      goto LABEL_78;
    }

    v40 = 0;
    v41 = v39;
    v42 = *a3;
    v43 = 4 * v41;
    do
    {
      if (v42 >= *&a333[v43])
      {
        *(a7 + 452) = ++v40;
      }

      v43 += 4;
    }

    while (v43 != 12);
LABEL_59:
    if (v33 != 1)
    {
      goto LABEL_78;
    }
  }

  if ((v30 & 1) == 0 || (sub_240B97DD0(a3) & 1) == 0)
  {
    v37 = *a3;
    if (*a3 < 1.0)
    {
      v37 = 1.0;
    }

    *(a7 + 536) = v37;
  }

  if (*(a3 + 376) == 1)
  {
    *(a7 + 536) = 1065353216;
  }

LABEL_78:
  v44 = *(a5 + 8);
  *(a7 + 404) = v44;
  if (v44 > 2)
  {
    return 1;
  }

  if (v29 >= 1)
  {
    result = 1;
    if (*(a3 + 384) != 1 || *(a3 + 380) != 1)
    {
      return result;
    }

    v45 = (a3 + 384);
    v46 = 1;
    v47 = 1;
    goto LABEL_85;
  }

  v47 = *(a3 + 380);
  v57 = v47 - 1;
  if ((v47 - 1) > 7 || ((0x8Bu >> v57) & 1) == 0)
  {
    return 1;
  }

  v58 = *(a3 + 384);
  result = 1;
  if (v58 <= 8 && ((1 << v58) & 0x116) != 0)
  {
    v46 = dword_240C83E88[v57];
    v45 = (a3 + 384);
LABEL_85:
    if (*(a5 + 4) != 1)
    {
      v48 = *(a5 + 48);
      *(a7 + 296) = v48;
      if (!*(a3 + 388))
      {
        v46 = 1;
      }

      v49 = v46 * a1;
      *(a7 + 260) = v49;
      v50 = v46 * a2;
      *(a7 + 264) = v50;
      if (v48 || sub_240B3CD44(a7) != v49 || sub_240B56664(a7) != v50)
      {
        *(a7 + 256) = 1;
      }
    }

    *(a7 + 268) = v47;
    v51 = *(a7 + 408);
    *(a7 + 280) = *(a7 + 272);
    v52 = 0xAAAAAAAAAAAAAAABLL * ((*(v51 + 336) - *(v51 + 328)) >> 5);
    v72 = *v45;
    sub_240B2B4A8((a7 + 272), v52, &v72);
    *(a7 + 396) = *(a5 + 24);
    v53 = *(a5 + 56);
    if ((v53 & 1) != 0 || *(a7 + 256) == 1)
    {
      v54 = *(a5 + 44);
      if (v54 == -1)
      {
        v56 = *(v51 + 328);
        v55 = *(v51 + 336);
        v59 = 0xAAAAAAAAAAAAAAABLL * ((v55 - v56) >> 5);
        if (v59 < 2)
        {
LABEL_106:
          v54 = 0;
        }

        else
        {
          v54 = 0;
          v60 = 12;
          while (*(v56 + v60))
          {
            ++v54;
            v60 += 96;
            if (v59 == v54)
            {
              goto LABEL_106;
            }
          }
        }
      }

      else
      {
        v56 = *(v51 + 328);
        v55 = *(v51 + 336);
      }

      *(a7 + 316) = v54;
      if (v53)
      {
        v61 = *(a5 + 60);
      }

      else
      {
        v61 = 0;
      }

      *(a7 + 312) = v61;
      *(a7 + 324) = *(a5 + 32);
      *(a7 + 320) = *(a5 + 40);
      if (v55 != v56)
      {
        v62 = 0;
        v63 = 0;
        v64 = 12;
        do
        {
          v65 = *(a5 + 112);
          v66 = *(a7 + 344);
          if (v63 >= 0xCCCCCCCCCCCCCCCDLL * ((*(a5 + 120) - v65) >> 3))
          {
            v69 = (v66 + v62);
            v70 = *(a5 + 60);
            if (*(v56 + v64) != 4 && v54 != v63)
            {
              v70 = 1;
            }

            if (!*(a5 + 56))
            {
              v70 = 0;
            }

            v69[2] = v70;
            v69[3] = v54;
            v69[5] = 1;
          }

          else
          {
            v67 = v66 + v62;
            v68 = *(v65 + v62 + 8);
            *(v67 + 17) = *(v65 + v62 + 17);
            *(v67 + 8) = v68;
            v56 = *(v51 + 328);
            v55 = *(v51 + 336);
          }

          ++v63;
          v62 += 40;
          v64 += 96;
        }

        while (v63 < 0xAAAAAAAAAAAAAAABLL * ((v55 - v56) >> 5));
      }
    }

    *(a7 + 376) = *(a5 + 76);
    result = 0;
    if ((v24 & 1) == 0)
    {
      *(a7 + 24) = *(a7 + 24) & 0xFFFFFFFFFFFFFF5FLL | 0x80;
    }
  }

  return result;
}

uint64_t sub_240B95048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, unint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, __int128 *a10, uint64_t *a11, uint64_t a12, void *a13, uint64_t a14, unint64_t **a15, char **a16)
{
  *a14 = a3;
  if (*(a14 + 4208) == 1)
  {
    sub_240B3CD70((a14 + 8), a8, a9, *(a12 + 64), 0, 0, *(a12 + 12) == 1, 1uLL);
  }

  else
  {
    sub_240B3CC4C(v153, a12);
    v20 = v156;
    *(a14 + 88) = v157;
    v21 = v159;
    *(a14 + 104) = v158;
    *(a14 + 120) = v21;
    *(a14 + 136) = v160;
    v22 = v153[0];
    *(a14 + 24) = v153[1];
    v23 = v155;
    *(a14 + 40) = __p;
    *(a14 + 56) = v23;
    *(a14 + 72) = v20;
    *(a14 + 8) = v22;
  }

  *(a14 + 1256) = a14;
  sub_240B221C8(&v191, *(a14 + 72), *(a14 + 80));
  v24 = v196;
  if (v196)
  {
    return v24;
  }

  v26 = v192;
  v25 = v193;
  v193 = 0;
  v27 = v194;
  v153[0] = v195;
  *(a14 + 152) = v191;
  v28 = *(a14 + 176);
  *(a14 + 168) = v26;
  *(a14 + 176) = v25;
  if (v28)
  {
    atomic_fetch_add(&qword_27E519020, -*(v28 - 24));
    free(*(v28 - 32));
  }

  *(a14 + 184) = v27;
  *(a14 + 192) = v153[0];
  sub_240B3AC2C(&v186, *(a14 + 72), *(a14 + 80));
  v24 = v190;
  if (!v190)
  {
    v122 = a1;
    v29 = v187;
    v30 = v188;
    v188 = 0;
    v31 = v189;
    *(a14 + 1024) = v186;
    *(a14 + 1040) = v29;
    v32 = *(a14 + 1048);
    *(a14 + 1048) = v30;
    if (v32)
    {
      atomic_fetch_add(&qword_27E519020, -*(v32 - 24));
      free(*(v32 - 32));
    }

    *(a14 + 1056) = v31;
    sub_240B22220(&v181, *(a14 + 72), *(a14 + 80));
    v24 = v185;
    if (v185)
    {
      goto LABEL_115;
    }

    v33 = v183;
    v183 = 0;
    v34 = v184;
    *(a14 + 1080) = v182;
    *(a14 + 1064) = v181;
    v35 = *(a14 + 1088);
    *(a14 + 1088) = v33;
    if (v35)
    {
      atomic_fetch_add(&qword_27E519020, -*(v35 - 24));
      free(*(v35 - 32));
    }

    *(a14 + 1096) = v34;
    sub_240B23694(&v169, *(a14 + 8), *(a14 + 16), 1);
    v24 = v180;
    if (v180)
    {
      goto LABEL_112;
    }

    v36 = v172;
    v37 = v175;
    v38 = v171;
    v39 = v170;
    v171 = 0;
    v175 = 0;
    v116 = v176;
    v118 = v37;
    *(a14 + 1104) = v169;
    *(a14 + 1120) = v39;
    sub_240B2453C((a14 + 1128), v38);
    *(a14 + 1136) = v36;
    *(a14 + 1144) = v173;
    *(a14 + 1160) = v174;
    sub_240B2453C((a14 + 1168), v118);
    *(a14 + 1176) = v116;
    *(a14 + 1216) = v179;
    v40 = v177;
    *(a14 + 1200) = v178;
    *(a14 + 1184) = v40;
    *(a14 + 1560) = 393984;
    if (!*(a12 + 12))
    {
      sub_240B245C8((a14 + 1568), 393984 * *(a12 + 112));
    }

    sub_240B22220(&v164, *(a14 + 72), *(a14 + 80));
    v24 = v168;
    if (v168)
    {
LABEL_112:
      sub_240B6701C(&v169);
      if (!v185)
      {
        v86 = v183;
        v183 = 0;
        if (v86)
        {
          atomic_fetch_add(&qword_27E519020, -*(v86 - 24));
          free(*(v86 - 32));
        }
      }

LABEL_115:
      if (!v190)
      {
        v87 = v188;
        v188 = 0;
        if (v87)
        {
          atomic_fetch_add(&qword_27E519020, -*(v87 - 24));
          free(*(v87 - 32));
        }
      }

      goto LABEL_118;
    }

    v41 = v166;
    v166 = 0;
    v42 = v167;
    *(a14 + 1608) = v165;
    *(a14 + 1592) = v164;
    sub_240B2453C((a14 + 1616), v41);
    *(a14 + 1624) = v42;
    sub_240B2A11C(v161, *(a14 + 72), *(a14 + 80));
    v24 = v163;
    if (v163)
    {
LABEL_109:
      if (!v168)
      {
        v85 = v166;
        v166 = 0;
        if (v85)
        {
          atomic_fetch_add(&qword_27E519020, -*(v85 - 24));
          free(*(v85 - 32));
        }
      }

      goto LABEL_112;
    }

    sub_240B2A358(v153, v161);
    sub_240B30D80(a14 + 1632, v153);
    for (i = 13; i != -2; i -= 5)
    {
      sub_240B22320(&v153[0].i64[i]);
    }

    *(a14 + 1752) = a14 + 1632;
    v45 = *(a3 + 328);
    v44 = *(a3 + 336);
    if (v45 == v44)
    {
      v47 = 0;
LABEL_29:
      v111 = 0;
    }

    else
    {
      v46 = *(a3 + 328);
      v47 = v46;
      do
      {
        if (!*(v47 + 12))
        {
          goto LABEL_25;
        }

        v47 += 96;
      }

      while (v47 != v44);
      v47 = 0;
LABEL_25:
      while (*(v46 + 12) != 4)
      {
        v46 += 96;
        if (v46 == v44)
        {
          goto LABEL_29;
        }
      }

      v111 = v46;
    }

    v119 = *(a3 + 320);
    sub_240B9766C(v153, a3 + 48);
    v110 = v47;
    v48 = *(a14 + 4208);
    v49 = *a4;
    v50 = *(a4 + 8);
    v152[0] = a6;
    v152[1] = a7;
    v152[2] = a8;
    v152[3] = a9;
    v51 = v48 == 0;
    v52 = 8;
    if (v51)
    {
      v52 = 0;
    }

    if (a6 >= v52)
    {
      v53 = a6 - v52;
    }

    else
    {
      v53 = 0;
    }

    if (a7 >= v52)
    {
      v54 = a7 - v52;
    }

    else
    {
      v54 = 0;
    }

    if (a8 + a6 + v52 < v49)
    {
      v49 = a8 + a6 + v52;
    }

    v55 = a9 + a7 + v52;
    if (v55 >= v50)
    {
      v55 = v50;
    }

    v108 = v54;
    v109 = v53;
    v115 = v55 - v54;
    v117 = v49 - v53;
    sub_240B2A11C(v149, (v49 - v53 + 7) & 0xFFFFFFF8, (v55 - v54 + 7) & 0xFFFFFFF8);
    v24 = v151;
    if (v151)
    {
LABEL_104:
      v153[0].i64[0] = &unk_2852A1CB8;
      if (__p)
      {
        *(&__p + 1) = __p;
        operator delete(__p);
      }

      if (!v163)
      {
        v83 = &v162;
        v84 = -120;
        do
        {
          sub_240B22320(v83);
          v83 -= 5;
          v84 += 40;
        }

        while (v84);
      }

      goto LABEL_109;
    }

    v104 = 0xAAAAAAAAAAAAAAABLL * ((v110 - v45) >> 5);
    v106 = 0xAAAAAAAAAAAAAAABLL * ((v111 - v45) >> 5);
    sub_240B2A358(v148, v149);
    for (j = 0; j != 15; j += 5)
    {
      v57 = &v148[j];
      *v57 = v117;
      v57[1] = v115;
    }

    sub_240B977BC(&v146, v119);
    v58 = v146;
    v113 = v147;
    if (v146 != v147)
    {
      while (1)
      {
        sub_240B23590(&v130, v117, v115);
        v24 = v134;
        if (v134)
        {
          goto LABEL_99;
        }

        v59 = v132;
        v120 = v133;
        v132 = 0;
        *v58 = v130;
        *(v58 + 16) = v131;
        v60 = v58 + 24;
        sub_240B2453C((v58 + 24), v59);
        *(v58 + 32) = v120;
        if (!v134)
        {
          v61 = v132;
          v132 = 0;
          if (v61)
          {
            atomic_fetch_add(&qword_27E519020, -*(v61 - 3));
            free(*(v61 - 4));
          }
        }

        v58 += 40;
        if (v60 + 16 == v113)
        {
          v58 = v146;
          break;
        }
      }
    }

    v114 = v58 + 40 * v104;
    if (v110)
    {
      v62 = (v58 + 40 * v104);
    }

    else
    {
      v62 = 0;
    }

    if (v111)
    {
      v63 = v58 + 40 * v106;
    }

    else
    {
      v63 = 0;
    }

    v145 = 0;
    v64 = nullsub_31;
    v65 = sub_240BA2AE8;
    v66 = sub_240BA2B1C;
    v67 = sub_240BA2B3C;
    v68 = sub_240BA2B68;
    if (*(a4 + 64) == 1)
    {
      v69 = *(a4 + 16);
      v68 = *(a4 + 24);
      v67 = *(a4 + 32);
      v66 = *(a4 + 40);
      v65 = *(a4 + 48);
      v64 = *(a4 + 56);
    }

    else
    {
      v69 = a4;
    }

    v121 = v62;
    v112 = v63;
    if (*(a4 + 368))
    {
      v70 = 0;
    }

    else
    {
      *&v130 = v69;
      *(&v130 + 1) = v68;
      v102 = v68;
      v103 = v67;
      v131 = v67;
      v132 = v66;
      v105 = v66;
      v107 = v65;
      v133 = v65;
      v134 = v64;
      v71 = v64;
      *&v137 = v109;
      *(&v137 + 1) = v108;
      *&v138 = v117;
      *(&v138 + 1) = v115;
      v24 = sub_240B97884(&v130, &v137, a2, a3, a11, v148, v62, &v145);
      if (v24)
      {
        goto LABEL_99;
      }

      v70 = v145;
      v64 = v71;
      v66 = v105;
      v65 = v107;
      v68 = v102;
      v67 = v103;
    }

    *&v130 = v69;
    *(&v130 + 1) = v68;
    v131 = v67;
    v132 = v66;
    v133 = v65;
    v134 = v64;
    *&v137 = v109;
    *(&v137 + 1) = v108;
    *&v138 = v117;
    *(&v138 + 1) = v115;
    v24 = sub_240B97B7C(&v130, &v137, a2, a3, v70, a11, &v146);
    if (v24)
    {
      goto LABEL_99;
    }

    *(a14 + 1256) = a14;
    sub_240B91460(a14 + 4544, v122);
    v72 = 0;
    v144 = 0;
    v73 = 0;
    v142 = 0u;
    v143 = 0u;
    v140 = 0u;
    v141 = 0u;
    v138 = 0u;
    v139 = 0u;
    v137 = 0u;
    v74 = a5;
    if (!a5)
    {
      if (*(a12 + 32) || *(a2 + 1) != 1)
      {
        v72 = 0;
      }

      else
      {
        v72 = 0;
        if (!*(a12 + 12) && *(v122 + 48) <= 2)
        {
          sub_240B2A11C(&v130, v117, v115);
          v24 = v136;
          if (v136)
          {
            goto LABEL_97;
          }

          sub_240B2A358(&v127, &v130);
          sub_240B30D80(&v137, &v127);
          for (k = 104; k != -16; k -= 40)
          {
            sub_240B22320((&v127 + k));
          }

          if (!v136)
          {
            v76 = &v135;
            v77 = -120;
            do
            {
              sub_240B22320(v76);
              v76 -= 5;
              v77 += 40;
            }

            while (v77);
          }

          v72 = &v137;
        }

        sub_240BC1D58(v153, v112, a11, v148, a10, v72, *(a3 + 300));
      }

      if (*(v122 + 68) == 1)
      {
        v78 = sub_240B97DD0(v122);
      }

      else
      {
        v78 = 0;
      }

      if (v121)
      {
        if ((*(v110 + 72) & 1) == 0 && !*(a12 + 16) && !*(v122 + 116) && *(v122 + 384) == *(v122 + 380))
        {
          sub_240B97E30(v148, *(v114 + 16), *(v114 + 24), v78);
          if (v72)
          {
            sub_240B97E30(v72, *(v114 + 16), *(v114 + 24), v78);
          }
        }
      }

      sub_240C105C8(v148, v73);
      v74 = 0;
    }

    v127 = a6 - v109;
    v128 = a7 - v108;
    *&v129 = (a8 + 7) & 0xFFFFFFFFFFFFFFF8;
    *(&v129 + 1) = (a9 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (!v74 && (*(a14 + 4209) & 1) != 0)
    {
      sub_240B98048(v122, v148, &v127, a12);
    }

    sub_240B98344(v122, *(a14 + 4208), v74 != 0, v148, *(a14 + 8), *(a14 + 16), a12, (a14 + 1224));
    v24 = sub_240B99108(*(v122 + 48), *(v122 + 388), a12, v74 != 0, v148);
    if (!v24)
    {
      if (*(v122 + 384) != 1 && (*(v122 + 388) & 1) == 0)
      {
        v90 = v146;
        v91 = v147;
        if (v146 != v147)
        {
          do
          {
            sub_240C107A4(&v130, v90, *(v122 + 384));
            v24 = v134;
            if (v134)
            {
              goto LABEL_97;
            }

            v92 = v132;
            v93 = v133;
            v132 = 0;
            *v90 = v130;
            *(v90 + 16) = v131;
            v94 = v90 + 24;
            sub_240B2453C((v90 + 24), v92);
            *(v90 + 32) = v93;
            if (!v134)
            {
              v95 = v132;
              v132 = 0;
              if (v95)
              {
                atomic_fetch_add(&qword_27E519020, -*(v95 - 3));
                free(*(v95 - 4));
              }
            }

            v90 += 40;
          }

          while (v94 + 16 != v91);
        }
      }

      if ((*(a14 + 4208) & 1) == 0)
      {
        v127 = 0;
        v128 = 0;
        *&v96 = LODWORD(v148[0]);
        *(&v96 + 1) = HIDWORD(v148[0]);
        v129 = v96;
      }

      v97 = v122;
      if (*(a12 + 12))
      {
        goto LABEL_161;
      }

      sub_240B9A67C((a14 + 5184), *(a14 + 4272));
      v99 = *(a14 + 5184);
      v100 = *(a14 + 5192);
      while (v99 != v100)
      {
        sub_240B81C8C(v99, *(a14 + 120));
        v99 += 22;
      }

      v101 = a5 ? sub_240B9A990(a5, a12, a11, a13, a14) : sub_240B9BD9C(a12, v72, v148, &v127, a10, a11, a13, a14, a16);
      v97 = v122;
      v24 = v101;
      if (!v101)
      {
        sub_240B9D414(a14, (a14 + 8));
        if ((*(a14 + 4208) & 1) == 0)
        {
          *(a14 + 4200) = 1;
          sub_240B38D70((a14 + 5208), *(a14 + 120));
        }

        v24 = sub_240B9DD94(a12, a11, a14);
        if (!v24)
        {
LABEL_161:
          if ((*(v97 + 68) & 1) == 0 && v146 == v147 || (v24 = sub_240BAF358(a13, a12, a3, v148, &v146, &v127, (a14 + 8), v152, a14, a10, a11, a16, *(v97 + 68)), !v24))
          {
            if (*(a14 + 4208))
            {
              goto LABEL_137;
            }

            if (*(v122 + 48) >= 1 && sub_240B97DD0(v122) && !*(v122 + 352) && *(v122 + 464) == *(v122 + 472) || (v24 = sub_240BB3E4C(a13, a11), !v24) && (v24 = sub_240BB686C(a13, a11), !v24))
            {
              *(a12 + 24) = *(a12 + 24) & 0xFFFFFFFFFFFFFFEDLL | (2 * (*(a14 + 1264) != *(a14 + 1272))) | (16 * (*(a14 + 1440) != *(a14 + 1448)));
LABEL_137:
              v24 = sub_240B9DE54(a12, a14, a13, a11, a15, a16);
              if (!v24)
              {
                if (*(a14 + 4208) == 1)
                {
                  v98 = *(a14 + 4216);
                  LODWORD(v130) = 1;
                  *(&v130 + 1) = 0;
                  v131 = v98;
                  v132 = 0;
                  sub_240BB6E50(a13, &v130);
                  LODWORD(v130) = 3;
                  *(&v130 + 1) = 0;
                  v131 = v98;
                  v132 = 0;
                  sub_240BB6E50(a13, &v130);
                  sub_240BB6F50(a13);
                }

                v24 = 0;
              }
            }
          }
        }
      }
    }

LABEL_97:
    for (m = 104; m != -16; m -= 40)
    {
      sub_240B22320((&v137 + m));
    }

LABEL_99:
    *&v130 = &v146;
    sub_240B30C38(&v130);
    for (n = 13; n != -2; n -= 5)
    {
      sub_240B22320(&v148[n]);
    }

    if (!v151)
    {
      v81 = &v150;
      v82 = -120;
      do
      {
        sub_240B22320(v81);
        v81 -= 5;
        v82 += 40;
      }

      while (v82);
    }

    goto LABEL_104;
  }

LABEL_118:
  if (!v196)
  {
    v88 = v193;
    v193 = 0;
    if (v88)
    {
      atomic_fetch_add(&qword_27E519020, -*(v88 - 24));
      free(*(v88 - 32));
    }
  }

  return v24;
}

void sub_240B95DF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, unint64_t *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  for (i = 104; i != -16; i -= 40)
  {
    sub_240B22320((&a65 + i));
  }

  a36 = &STACK[0x250];
  sub_240B30C38(&a36);
  for (j = 104; j != -16; j -= 40)
  {
    sub_240B22320((&STACK[0x268] + j));
  }

  if (!LODWORD(STACK[0x358]))
  {
    v69 = &STACK[0x348];
    v70 = -120;
    do
    {
      sub_240B22320(v69);
      v69 -= 5;
      v70 += 40;
    }

    while (v70);
  }

  STACK[0x380] = &unk_2852A1CB8;
  v71 = STACK[0x3A0];
  if (STACK[0x3A0])
  {
    STACK[0x3A8] = v71;
    operator delete(v71);
  }

  if (!LODWORD(STACK[0x4C8]))
  {
    v72 = &STACK[0x4B8];
    v73 = -120;
    do
    {
      sub_240B22320(v72);
      v72 -= 5;
      v73 += 40;
    }

    while (v73);
  }

  if (!LODWORD(STACK[0x4F8]))
  {
    v74 = STACK[0x4E8];
    STACK[0x4E8] = 0;
    if (v74)
    {
      atomic_fetch_add(&qword_27E519020, -*(v74 - 24));
      free(*(v74 - 32));
    }
  }

  sub_240B6701C(&STACK[0x500]);
  if (!*(v65 - 216))
  {
    v75 = *(v65 - 232);
    *(v65 - 232) = 0;
    if (v75)
    {
      atomic_fetch_add(&qword_27E519020, -*(v75 - 24));
      free(*(v75 - 32));
    }
  }

  if (!*(v65 - 168))
  {
    v76 = *(v65 - 184);
    *(v65 - 184) = 0;
    if (v76)
    {
      atomic_fetch_add(&qword_27E519020, -*(v76 - 24));
      free(*(v76 - 32));
    }
  }

  if (!*(v65 - 104))
  {
    v77 = *(v65 - 136);
    *(v65 - 136) = 0;
    if (v77)
    {
      atomic_fetch_add(&qword_27E519020, -*(v77 - 24));
      free(*(v77 - 32));
    }
  }

  _Unwind_Resume(a1);
}

uint64_t sub_240B95FEC(uint64_t result, unsigned int *a2, void *a3, uint64_t a4, char a5)
{
  v6 = result;
LABEL_2:
  v7 = a2;
  v151 = a2 - 1;
  v8 = v6;
  while (1)
  {
    v6 = v8;
    v9 = v7 - v8;
    v10 = v9 - 2;
    if (v9 <= 2)
    {
      if (v9 < 2)
      {
        return result;
      }

      v7 = a2;
      if (v9 == 2)
      {
        v86 = *v151;
        v87 = *v8;
        result = sub_240B97084(*a3, *v151, *v8);
        if (result)
        {
          *v8 = v86;
          *v151 = v87;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v9 == 3)
    {
      break;
    }

    if (v9 == 4)
    {
      v93 = *a3;

      return sub_240B971C8(v8, v8 + 1, v8 + 2, v151, v93);
    }

    if (v9 == 5)
    {
      sub_240B971C8(v8, v8 + 1, v8 + 2, v8 + 3, *a3);
      v79 = *v151;
      v80 = v8[3];
      v81 = *a3;
      result = sub_240B97084(*a3, *v151, v80);
      if (!result)
      {
        return result;
      }

      v8[3] = v79;
      *v151 = v80;
      v83 = v8[2];
      v82 = v8[3];
      result = sub_240B97084(v81, v82, v83);
      if (!result)
      {
        return result;
      }

      v8[2] = v82;
      v8[3] = v83;
      v84 = v8[1];
      result = sub_240B97084(v81, v82, v84);
      if (!result)
      {
        return result;
      }

      v8[1] = v82;
      v8[2] = v84;
      v85 = *v8;
      result = sub_240B97084(v81, v82, *v8);
      if (!result)
      {
        return result;
      }

      *v8 = v82;
      goto LABEL_172;
    }

LABEL_10:
    if (v9 <= 23)
    {
      v94 = v8 + 1;
      v95 = v8 == v7 || v94 == v7;
      v96 = v95;
      if (a5)
      {
        if ((v96 & 1) == 0)
        {
          v97 = *a3;
          v98 = 4;
          v99 = v8;
          do
          {
            v101 = *v99;
            v100 = v99[1];
            v99 = v94;
            result = sub_240B97084(v97, v100, v101);
            if (result)
            {
              v102 = *a3;
              v103 = v98;
              v104 = v6;
              while (1)
              {
                *(v104 + v103) = v101;
                v105 = v103 - 4;
                if (v103 == 4)
                {
                  break;
                }

                v101 = *(v104 + v103 - 8);
                result = sub_240B97084(v102, v100, v101);
                v103 = v105;
                if ((result & 1) == 0)
                {
                  v106 = (v104 + v105);
                  goto LABEL_129;
                }
              }

              v106 = v104;
LABEL_129:
              v6 = v104;
              *v106 = v100;
            }

            v94 = v99 + 1;
            v98 += 4;
          }

          while (v99 + 1 != a2);
        }
      }

      else if ((v96 & 1) == 0)
      {
        v144 = *a3;
        do
        {
          v146 = *v6;
          v145 = v6[1];
          v6 = v94;
          result = sub_240B97084(v144, v145, v146);
          if (result)
          {
            v147 = v6;
            do
            {
              *v6 = v146;
              v146 = *(v6 - 2);
              result = sub_240B97084(v144, v145, v146);
              --v6;
            }

            while ((result & 1) != 0);
            *v6 = v145;
            v6 = v147;
          }

          v94 = v6 + 1;
        }

        while (v6 + 1 != a2);
      }

      return result;
    }

    v160 = v8;
    if (!a4)
    {
      if (v8 == v7)
      {
        return result;
      }

      v107 = *a3;
      v156 = v10 >> 1;
      v108 = v10 >> 1;
      v150 = *a3;
      do
      {
        v109 = v108;
        if (v156 >= v108)
        {
          v110 = (2 * v108) | 1;
          v111 = &v6[v110];
          v112 = *v111;
          if (2 * v108 + 2 < v9)
          {
            v113 = v111[1];
            if (sub_240B97084(v107, *v111, v113))
            {
              v112 = v113;
              ++v111;
              v110 = 2 * v109 + 2;
            }
          }

          v114 = &v6[v109];
          v115 = *v114;
          result = sub_240B97084(v107, v112, *v114);
          if ((result & 1) == 0)
          {
            v152 = v109;
            v116 = *a3;
            do
            {
              v117 = v111;
              *v114 = v112;
              if (v156 < v110)
              {
                break;
              }

              v118 = (2 * v110) | 1;
              v111 = &v6[v118];
              v119 = 2 * v110 + 2;
              v112 = *v111;
              if (v119 < v9)
              {
                v120 = v111[1];
                v121 = sub_240B97084(v116, *v111, v120);
                if (v121)
                {
                  v112 = v120;
                  ++v111;
                }

                v6 = v160;
                if (v121)
                {
                  v118 = v119;
                }
              }

              result = sub_240B97084(v116, v112, v115);
              v114 = v117;
              v110 = v118;
            }

            while (!result);
            *v117 = v115;
            v107 = v150;
            v109 = v152;
          }
        }

        v108 = v109 - 1;
      }

      while (v109);
      v153 = *a3;
      while (2)
      {
        v122 = 0;
        v157 = *v6;
        v123 = *a3;
        v124 = v6;
        do
        {
          v125 = &v124[v122];
          v126 = v125 + 1;
          v127 = v125[1];
          v128 = (2 * v122) | 1;
          v129 = 2 * v122 + 2;
          if (v129 >= v9)
          {
            v122 = (2 * v122) | 1;
          }

          else
          {
            v132 = v125[2];
            v130 = v125 + 2;
            v131 = v132;
            result = sub_240B97084(v123, v127, v132);
            if (result)
            {
              v127 = v131;
              v126 = v130;
              v122 = v129;
            }

            else
            {
              v122 = v128;
            }
          }

          *v124 = v127;
          v124 = v126;
        }

        while (v122 <= ((v9 - 2) >> 1));
        v133 = a2 - 1;
        v95 = v126 == --a2;
        if (!v95)
        {
          *v126 = *v133;
          *v133 = v157;
          v6 = v160;
          v134 = (v126 - v160 + 4) >> 2;
          v135 = v134 < 2;
          v136 = v134 - 2;
          if (!v135)
          {
            v137 = v136 >> 1;
            v138 = &v160[v136 >> 1];
            v139 = *v138;
            v140 = *v126;
            result = sub_240B97084(v153, *v138, *v126);
            if (result)
            {
              v141 = *a3;
              do
              {
                v142 = v138;
                *v126 = v139;
                if (!v137)
                {
                  break;
                }

                v137 = (v137 - 1) >> 1;
                v138 = &v160[v137];
                v139 = *v138;
                result = sub_240B97084(v141, *v138, v140);
                v126 = v142;
              }

              while ((result & 1) != 0);
              *v142 = v140;
LABEL_165:
              v6 = v160;
            }
          }

          v135 = v9-- <= 2;
          if (v135)
          {
            return result;
          }

          continue;
        }

        break;
      }

      *v126 = v157;
      goto LABEL_165;
    }

    v11 = &v8[v9 >> 1];
    v12 = v11;
    v13 = *v151;
    v14 = *a3;
    if (v9 >= 0x81)
    {
      v15 = *v11;
      v16 = *v6;
      v17 = sub_240B97084(*a3, *v11, *v6);
      v18 = sub_240B97084(v14, v13, v15);
      v154 = a4;
      if (v17)
      {
        if (v18)
        {
          *v6 = v13;
          goto LABEL_27;
        }

        *v6 = v15;
        *v11 = v16;
        v27 = *v151;
        if (sub_240B97084(v14, *v151, v16))
        {
          *v11 = v27;
LABEL_27:
          *v151 = v16;
        }
      }

      else if (v18)
      {
        *v11 = v13;
        *v151 = v15;
        v23 = *v11;
        v24 = *v6;
        if (sub_240B97084(v14, *v11, *v6))
        {
          *v6 = v23;
          *v11 = v24;
        }
      }

      v28 = v11 - 1;
      v29 = *(v11 - 1);
      v30 = v6[1];
      v31 = sub_240B97084(v14, v29, v30);
      v32 = *(v7 - 2);
      v33 = sub_240B97084(v14, v32, v29);
      if (v31)
      {
        if (v33)
        {
          v6[1] = v32;
          goto LABEL_39;
        }

        v6[1] = v29;
        *v28 = v30;
        v37 = *(v7 - 2);
        if (sub_240B97084(v14, v37, v30))
        {
          *v28 = v37;
LABEL_39:
          *(v7 - 2) = v30;
        }
      }

      else if (v33)
      {
        *v28 = v32;
        *(v7 - 2) = v29;
        v34 = *v28;
        v35 = v6[1];
        if (sub_240B97084(v14, *v28, v35))
        {
          v6[1] = v34;
          *v28 = v35;
        }
      }

      v40 = v11[1];
      v38 = v11 + 1;
      v39 = v40;
      v41 = v6[2];
      v42 = sub_240B97084(v14, v40, v41);
      v43 = *(v7 - 3);
      v44 = sub_240B97084(v14, v43, v40);
      if (v42)
      {
        if (v44)
        {
          v6[2] = v43;
          goto LABEL_48;
        }

        v6[2] = v39;
        *v38 = v41;
        v47 = *(v7 - 3);
        if (sub_240B97084(v14, v47, v41))
        {
          *v38 = v47;
LABEL_48:
          *(v7 - 3) = v41;
        }
      }

      else if (v44)
      {
        *v38 = v43;
        *(v7 - 3) = v39;
        v45 = *v38;
        v46 = v6[2];
        if (sub_240B97084(v14, *v38, v46))
        {
          v6[2] = v45;
          *v38 = v46;
        }
      }

      v48 = *v12;
      v49 = *v28;
      v50 = sub_240B97084(v14, *v12, *v28);
      v51 = *v38;
      v52 = sub_240B97084(v14, *v38, v48);
      if (v50)
      {
        if (!v52)
        {
          *v28 = v48;
          *v12 = v49;
          v28 = v12;
          v48 = v51;
          if (!sub_240B97084(v14, v51, v49))
          {
            v48 = v49;
LABEL_56:
            v53 = *v6;
            *v6 = v48;
            *v12 = v53;
            a4 = v154;
            goto LABEL_57;
          }
        }
      }

      else
      {
        if (!v52)
        {
          goto LABEL_56;
        }

        *v12 = v51;
        *v38 = v48;
        v38 = v12;
        v48 = v49;
        if (!sub_240B97084(v14, v51, v49))
        {
          v48 = v51;
          goto LABEL_56;
        }
      }

      *v28 = v51;
      *v38 = v49;
      goto LABEL_56;
    }

    v19 = *v6;
    v20 = *v11;
    v21 = sub_240B97084(*a3, *v6, *v11);
    v22 = sub_240B97084(v14, v13, v19);
    if (!v21)
    {
      if (v22)
      {
        *v6 = v13;
        *v151 = v19;
        v25 = *v6;
        v26 = *v11;
        if (sub_240B97084(v14, *v6, *v11))
        {
          *v11 = v25;
          *v6 = v26;
        }
      }

      goto LABEL_57;
    }

    if (v22)
    {
      *v11 = v13;
    }

    else
    {
      *v11 = v19;
      *v6 = v20;
      v36 = *v151;
      if (!sub_240B97084(v14, *v151, v20))
      {
        goto LABEL_57;
      }

      *v6 = v36;
    }

    *v151 = v20;
LABEL_57:
    --a4;
    v54 = *v6;
    if ((a5 & 1) != 0 || sub_240B97084(v14, *(v6 - 1), *v6))
    {
      v55 = *a3;
      v56 = v6;
      do
      {
        v57 = v56;
        v59 = v56[1];
        ++v56;
        v58 = v59;
      }

      while (sub_240B97084(v55, v59, v54));
      v60 = v7;
      if (v57 == v6)
      {
        v60 = v7;
        do
        {
          if (v56 >= v60)
          {
            break;
          }

          v62 = *--v60;
        }

        while (!sub_240B97084(v55, v62, v54));
      }

      else
      {
        do
        {
          v61 = *--v60;
        }

        while (!sub_240B97084(v55, v61, v54));
      }

      v155 = a4;
      if (v56 < v60)
      {
        v63 = *v60;
        v64 = v56;
        v65 = v60;
        do
        {
          *v64 = v63;
          *v65 = v58;
          do
          {
            v57 = v64;
            v66 = v64[1];
            ++v64;
            v58 = v66;
          }

          while (sub_240B97084(v55, v66, v54));
          do
          {
            v67 = *--v65;
            v63 = v67;
          }

          while (!sub_240B97084(v55, v67, v54));
        }

        while (v64 < v65);
      }

      if (v57 != v6)
      {
        *v6 = *v57;
      }

      *v57 = v54;
      a4 = v155;
      v7 = a2;
      if (v56 < v60)
      {
        goto LABEL_78;
      }

      v68 = sub_240B9732C(v6, v57, a3);
      v8 = v57 + 1;
      result = sub_240B9732C(v57 + 1, a2, a3);
      if (result)
      {
        a2 = v57;
        if (v68)
        {
          return result;
        }

        goto LABEL_2;
      }

      if (!v68)
      {
LABEL_78:
        result = sub_240B95FEC(v6, v57, a3, v155, a5 & 1);
        a5 = 0;
        v8 = v57 + 1;
      }
    }

    else
    {
      result = sub_240B97084(v14, v54, *v151);
      v69 = *a3;
      if (result)
      {
        v8 = v6;
        do
        {
          v70 = v8[1];
          ++v8;
          result = sub_240B97084(v69, v54, v70);
        }

        while ((result & 1) == 0);
      }

      else
      {
        v71 = v6 + 1;
        do
        {
          v8 = v71;
          if (v71 >= v7)
          {
            break;
          }

          ++v71;
          result = sub_240B97084(v69, v54, *v8);
        }

        while (!result);
      }

      v72 = v7;
      if (v8 < v7)
      {
        v72 = v7;
        do
        {
          v73 = *--v72;
          result = sub_240B97084(v69, v54, v73);
        }

        while ((result & 1) != 0);
      }

      if (v8 < v72)
      {
        v74 = *v8;
        v75 = *v72;
        do
        {
          *v8 = v75;
          *v72 = v74;
          do
          {
            v76 = v8[1];
            ++v8;
            v74 = v76;
          }

          while (!sub_240B97084(v69, v54, v76));
          do
          {
            v77 = *--v72;
            v75 = v77;
            result = sub_240B97084(v69, v54, v77);
          }

          while ((result & 1) != 0);
        }

        while (v8 < v72);
      }

      v78 = v8 - 1;
      if (v8 - 1 != v160)
      {
        *v160 = *v78;
      }

      a5 = 0;
      *v78 = v54;
    }
  }

  v88 = *v8;
  v89 = v8[1];
  v90 = *a3;
  v91 = sub_240B97084(*a3, v89, *v8);
  v92 = *v151;
  result = sub_240B97084(v90, *v151, v89);
  if (!v91)
  {
    if (!result)
    {
      return result;
    }

    v6[1] = v92;
    *v151 = v89;
    v85 = *v6;
    v143 = v6[1];
    result = sub_240B97084(v90, v143, *v6);
    if (!result)
    {
      return result;
    }

    *v6 = v143;
LABEL_172:
    v6[1] = v85;
    return result;
  }

  if (result)
  {
    *v6 = v92;
  }

  else
  {
    *v6 = v89;
    v6[1] = v88;
    v148 = *v151;
    result = sub_240B97084(v90, *v151, v88);
    if (!result)
    {
      return result;
    }

    v6[1] = v148;
  }

  *v151 = v88;
  return result;
}

void *sub_240B96BCC(void *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    if (a2 < 0x666666666666667)
    {
      sub_240B839AC(a2);
    }

    sub_240B228BC();
  }

  return a1;
}

uint64_t sub_240B96C94(uint64_t a1, unint64_t *a2)
{
  v2 = *a2;
  if (!*a2)
  {
    return 0;
  }

  v5 = 0;
  while (1)
  {
    v6 = v2 - v5;
    sub_240BC219C(&__dst, a1, 1uLL, v2 - v5);
    result = v15;
    if (v15)
    {
      break;
    }

    v8 = __dst;
    v9 = __dst;
    v10 = v13;
    v11 = v14;
    __dst = 0;
    *&v13 = 0;
    if (v10 < v6)
    {
      v6 = v10;
    }

    memcpy(v8, (a2[2] + v5), v6);
    v9 += v6;
    *&v10 = v10 - v6;
    *(&v10 + 1) += v6;
    sub_240B96F0C(&v9);
    if (!v15)
    {
      sub_240B96F0C(&__dst);
    }

    v5 += v6;
    if (v5 >= v2)
    {
      return 0;
    }
  }

  return result;
}

void sub_240B96D78(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    for (i = v1[1]; i != v2; sub_240B96E98(i))
    {
      i -= 176;
    }

    v1[1] = v2;
    v5 = **a1;

    operator delete(v5);
  }
}

uint64_t sub_240B96DF4(uint64_t a1)
{
  v2 = *(a1 + 5240);
  if (v2)
  {
    *(a1 + 5248) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 5208);
  if (v3)
  {
    *(a1 + 5216) = v3;
    operator delete(v3);
  }

  v5 = (a1 + 5184);
  sub_240B96D78(&v5);
  sub_240B7BB60(a1 + 4544);
  v5 = (a1 + 4248);
  sub_240B94820(&v5);
  v5 = (a1 + 4224);
  sub_240B9489C(&v5);

  return sub_240B4BA48(a1);
}

void sub_240B96E98(uint64_t a1)
{
  v2 = (a1 + 48);
  v5 = (a1 + 152);
  sub_240B30C38(&v5);
  v3 = *(a1 + 80);
  if (v3)
  {
    *(a1 + 88) = v3;
    operator delete(v3);
  }

  v5 = v2;
  sub_240B7BC3C(&v5);
  v4 = *(a1 + 24);
  if (v4)
  {
    *(a1 + 32) = v4;
    operator delete(v4);
  }

  v5 = a1;
  sub_240B31E8C(&v5);
}

void *sub_240B96F0C(void *a1)
{
  if (*a1)
  {
    v3 = a1[2];
    v2 = a1[3];
    *(v2 + 65) = 0;
    v4 = *(v2 + 8);
    if (!v4)
    {
      goto LABEL_10;
    }

    v5 = *(v2 + 40);
    v6 = (v2 + 8);
    do
    {
      v7 = v4[4];
      v8 = v7 >= v5;
      v9 = v7 < v5;
      if (v8)
      {
        v6 = v4;
      }

      v4 = v4[v9];
    }

    while (v4);
    if (v6 == (v2 + 8) || v5 < v6[4])
    {
LABEL_10:
      v6 = (v2 + 8);
    }

    if (v3)
    {
      v6[5] = v3;
      *(v2 + 40) += v3;
      v10 = *(v2 + 72);
      if (v10)
      {
        if (v6[6])
        {
          v11 = v10[3];
          if (v11)
          {
            v11(*v10);
            *(v2 + 56) = *(v2 + 40) - v3;
            while (1)
            {
              v12 = *(v2 + 56);
              v13 = *(v2 + 40);
              if (v13 <= v12)
              {
                break;
              }

              if ((sub_240BC2700(v2, (v6[8] + v12 - v13 + v3), v13 - v12) & 1) == 0)
              {
                goto LABEL_22;
              }
            }

            sub_240B4ADF0(v6 + 6, 0);
            v6[6] = 0;
          }
        }

        else
        {
          (v10[2])(*v10, v3);
          if (*(*(v2 + 72) + 24))
          {
            *(v2 + 56) += v3;
          }

          else
          {
            sub_240BC2554(v2);
          }
        }
      }
    }

    else
    {
      v14 = *(v2 + 72);
      if (v14)
      {
        (*(v14 + 16))(*v14, 0);
      }

      sub_240BC27A8(v2, v6);
    }
  }

LABEL_22:
  *a1 = 0;
  a1[1] = 0;
  return a1;
}

BOOL sub_240B97084(void **a1, unsigned int a2, unsigned int a3)
{
  v3 = (*a1)[10];
  v4 = (*a1)[16];
  v5 = *a1[1] >> 1;
  v6 = v4 * (a2 % v3) + v5;
  v7 = *a1[2];
  v8 = v6 - v7;
  v9 = *a1[3];
  v10 = v4 * (a2 / v3) + v5 - v9;
  if (v6 - v7 >= 0)
  {
    v11 = v6 - v7;
  }

  else
  {
    v11 = v7 - v6;
  }

  if (v10 >= 0)
  {
    v12 = v4 * (a2 / v3) + v5 - v9;
  }

  else
  {
    v12 = v9 - (v4 * (a2 / v3) + v5);
  }

  if (v11 <= v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = v11;
  }

  v14 = v5 - v7 + a3 % v3 * v4;
  v15 = v5 - v9 + a3 / v3 * v4;
  if (v14 >= 0)
  {
    v16 = v14;
  }

  else
  {
    v16 = -v14;
  }

  if (v15 >= 0)
  {
    v17 = v15;
  }

  else
  {
    v17 = -v15;
  }

  if (v16 <= v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = v16;
  }

  if (v13 < v18)
  {
    return 1;
  }

  v20 = *a1[4];
  v21 = atan2(v15, v14);
  v22 = remainder(v21 + 0.785398163 + v20 * 1.57079633, 6.28318531);
  v23 = atan2(v10, v8);
  return remainder(v23 + 0.785398163 + v20 * 1.57079633, 6.28318531) < v22 && v18 >= v13;
}

BOOL sub_240B971C8(unsigned int *a1, unsigned int *a2, unsigned int *a3, unsigned int *a4, void **a5)
{
  v10 = *a2;
  v11 = *a1;
  v12 = sub_240B97084(a5, *a2, *a1);
  v13 = *a3;
  v14 = sub_240B97084(a5, *a3, v10);
  if (v12)
  {
    if (v14)
    {
      *a1 = v13;
LABEL_9:
      *a3 = v11;
      v10 = v11;
      goto LABEL_11;
    }

    *a1 = v10;
    *a2 = v11;
    v10 = *a3;
    if (sub_240B97084(a5, *a3, v11))
    {
      *a2 = v10;
      goto LABEL_9;
    }
  }

  else if (v14)
  {
    *a2 = v13;
    *a3 = v10;
    v15 = *a2;
    v16 = *a1;
    if (sub_240B97084(a5, *a2, *a1))
    {
      *a1 = v15;
      *a2 = v16;
      v10 = *a3;
    }
  }

  else
  {
    v10 = v13;
  }

LABEL_11:
  v17 = *a4;
  result = sub_240B97084(a5, *a4, v10);
  if (result)
  {
    *a3 = v17;
    *a4 = v10;
    v19 = *a3;
    v20 = *a2;
    result = sub_240B97084(a5, *a3, *a2);
    if (result)
    {
      *a2 = v19;
      *a3 = v20;
      v21 = *a2;
      v22 = *a1;
      result = sub_240B97084(a5, *a2, *a1);
      if (result)
      {
        *a1 = v21;
        *a2 = v22;
      }
    }
  }

  return result;
}

BOOL sub_240B9732C(unsigned int *a1, unsigned int *a2, void ***a3)
{
  v3 = a3;
  v4 = a2;
  v6 = a2 - a1;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v15 = *a1;
        v16 = a1[1];
        v11 = *a3;
        v17 = sub_240B97084(*a3, v16, *a1);
        v18 = *(v4 - 1);
        v19 = sub_240B97084(v11, v18, v16);
        if (v17)
        {
          if (v19)
          {
            *a1 = v18;
          }

          else
          {
            *a1 = v16;
            a1[1] = v15;
            v45 = *(v4 - 1);
            if (!sub_240B97084(v11, v45, v15))
            {
              return 1;
            }

            a1[1] = v45;
          }

          *(v4 - 1) = v15;
          return 1;
        }

        if (!v19)
        {
          return 1;
        }

        a1[1] = v18;
        *(v4 - 1) = v16;
        v12 = a1[1];
        break;
      case 4:
        sub_240B971C8(a1, a1 + 1, a1 + 2, a2 - 1, *a3);
        return 1;
      case 5:
        sub_240B971C8(a1, a1 + 1, a1 + 2, a1 + 3, *a3);
        v9 = *(v4 - 1);
        v10 = a1[3];
        v11 = *v3;
        if (!sub_240B97084(v11, v9, v10))
        {
          return 1;
        }

        a1[3] = v9;
        *(v4 - 1) = v10;
        v13 = a1[2];
        v12 = a1[3];
        if (!sub_240B97084(v11, v12, v13))
        {
          return 1;
        }

        a1[2] = v12;
        a1[3] = v13;
        v14 = a1[1];
        if (!sub_240B97084(v11, v12, v14))
        {
          return 1;
        }

        a1[1] = v12;
        a1[2] = v14;
        break;
      default:
        goto LABEL_16;
    }

    v31 = *a1;
    if (sub_240B97084(v11, v12, *a1))
    {
      *a1 = v12;
      a1[1] = v31;
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = *(a2 - 1);
    v8 = *a1;
    if (sub_240B97084(*a3, v7, *a1))
    {
      *a1 = v7;
      *(v4 - 1) = v8;
    }

    return 1;
  }

LABEL_16:
  v21 = a1 + 1;
  v20 = a1[1];
  v22 = *a1;
  v23 = *a3;
  v24 = sub_240B97084(*a3, v20, *a1);
  v25 = a1 + 2;
  v26 = a1[2];
  v27 = sub_240B97084(v23, v26, v20);
  if (v24)
  {
    v28 = a1;
    v29 = a1 + 2;
    if (!v27)
    {
      *a1 = v20;
      a1[1] = v22;
      v30 = sub_240B97084(v23, v26, v22);
      v28 = a1 + 1;
      v29 = a1 + 2;
      if (!v30)
      {
        goto LABEL_28;
      }
    }

LABEL_27:
    *v28 = v26;
    *v29 = v22;
    goto LABEL_28;
  }

  if (v27)
  {
    *v21 = v26;
    *v25 = v20;
    v32 = sub_240B97084(v23, v26, v22);
    v28 = a1;
    v29 = a1 + 1;
    if (v32)
    {
      goto LABEL_27;
    }
  }

LABEL_28:
  v33 = a1 + 3;
  if (a1 + 3 == v4)
  {
    return 1;
  }

  v34 = 0;
  v35 = 12;
  v47 = v4;
  while (1)
  {
    v36 = *v33;
    v37 = *v25;
    if (sub_240B97084(v23, *v33, v37))
    {
      v38 = v23;
      v39 = v3;
      v40 = *v3;
      v41 = v35;
      while (1)
      {
        *(a1 + v41) = v37;
        v42 = v41 - 4;
        if (v41 == 4)
        {
          break;
        }

        v37 = *(a1 + v41 - 8);
        v43 = sub_240B97084(v40, v36, v37);
        v41 = v42;
        if (!v43)
        {
          v44 = (a1 + v42);
          goto LABEL_36;
        }
      }

      v44 = a1;
LABEL_36:
      *v44 = v36;
      ++v34;
      v3 = v39;
      v23 = v38;
      v4 = v47;
      if (v34 == 8)
      {
        return v33 + 1 == v47;
      }
    }

    v25 = v33;
    v35 += 4;
    if (++v33 == v4)
    {
      return 1;
    }
  }
}

uint64_t sub_240B9766C(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2852A1CB8;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 16);
  *(a1 + 21) = *(a2 + 21);
  *(a1 + 16) = v4;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = 0;
  sub_240B28D90((a1 + 32), *(a2 + 32), *(a2 + 40), *(a2 + 40) - *(a2 + 32));
  v5 = *(a2 + 56);
  v6 = *(a2 + 72);
  v7 = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 88) = v7;
  *(a1 + 72) = v6;
  *(a1 + 56) = v5;
  *(a1 + 112) = &unk_2852A1260;
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = &unk_2852A1A10;
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = &unk_2852A1260;
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = &unk_2852A1260;
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 184) = &unk_2852A1260;
  *(a1 + 192) = *(a2 + 192);
  return a1;
}

void *sub_240B977BC(void *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    if (a2 < 0x666666666666667)
    {
      sub_240B59980(a2);
    }

    sub_240B228BC();
  }

  return a1;
}

uint64_t sub_240B97884(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, unsigned int *a6, unsigned int *a7, BOOL *a8)
{
  v46 = *MEMORY[0x277D85DE8];
  v39 = xmmword_240C85160;
  v40 = 0;
  (a1[1])(*a1, &v39);
  v17 = v39 == 2 || v39 == 4;
  *a8 = v17;
  v18 = *(a3 + 64);
  if (v18 == 2)
  {
    v19 = *(a3 + 68);
  }

  else if (v18 == 1)
  {
    v19 = *(a4 + 28);
  }

  else if (v18 || DWORD1(v39) >= 6)
  {
    v19 = 0;
  }

  else
  {
    v19 = dword_240C83EA8[DWORD1(v39)];
  }

  v38 = 0;
  v20 = (a1[2])(*a1, *a2, a2[1], a2[2], a2[3], &v38);
  *&v43 = &unk_2852A3770;
  *(&v43 + 1) = a1;
  v45 = &v43;
  v41 = v20;
  sub_240BA271C(v42, &v43);
  sub_240BA279C(&v43);
  v21 = v41;
  if (v41 && ((*(a3 + 1) & (*(a4 + 104) == 1)) != 0 ? (v22 = 1) : (v22 = 3), v22 <= v39))
  {
    v36 = *(a3 + 1) & (*(a4 + 104) == 1);
    v37 = a7;
    v25 = 0;
    v26 = v19;
    v27 = a6;
    while (1)
    {
      v28 = a2[2];
      v29 = a2[3];
      v43 = v39;
      v44 = v40;
      v23 = sub_240B90560(v21, v28, v29, v38, v26, &v43, v25, a5, *&v39, v27);
      if (v23)
      {
        break;
      }

      ++v25;
      v27 += 40;
      if (v22 == v25)
      {
        if (v36)
        {
          sub_240BA297C(a6, (a6 + 10));
          sub_240BA297C(a6, (a6 + 20));
        }

        if (v37)
        {
          if (*a8)
          {
            v30 = a2[2];
            v31 = a2[3];
            v43 = v39;
            v44 = v40;
            if (sub_240B90560(v21, v30, v31, v38, v26, &v43, (v39 - 1), a5, *&v39, v37))
            {
              goto LABEL_20;
            }
          }

          else
          {
            v32 = v37[1];
            if (v32)
            {
              v34 = *(v37 + 2);
              v33 = *(v37 + 3);
              v35 = *v37;
              do
              {
                if (v35)
                {
                  memset_pattern16(v33, &unk_240C11AC0, 4 * v35);
                }

                v33 += v34;
                --v32;
              }

              while (v32);
            }
          }
        }

        v23 = 0;
        break;
      }
    }
  }

  else
  {
LABEL_20:
    v23 = 1;
  }

  sub_240BA281C(&v41);
  sub_240BA279C(v42);
  return v23;
}

void sub_240B97B50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va1, a15);
  va_start(va, a15);
  v16 = va_arg(va1, void);
  sub_240BA281C(va);
  sub_240BA279C(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_240B97B7C(void *a1, void *a2, uint64_t a3, uint64_t a4, char a5, void *a6, void *a7)
{
  v33 = *MEMORY[0x277D85DE8];
  v7 = *(a4 + 320);
  if (!v7)
  {
    return 0;
  }

  v13 = 0;
  v14 = 0;
  v15 = 0;
  while (1)
  {
    if ((a5 & 1) != 0 && !*(*(a4 + 328) + v13 + 12))
    {
      a5 = 0;
      goto LABEL_16;
    }

    v27 = 0;
    v26 = xmmword_240C83DA0;
    (a1[3])(*a1, v15, &v26);
    LODWORD(v26) = 1;
    v25 = 0;
    v16 = (a1[4])(*a1, v15, *a2, a2[1], a2[2], a2[3], &v25);
    *&v30 = &off_2852A37F0;
    *(&v30 + 1) = a1;
    v32 = &v30;
    v28 = v16;
    sub_240BA271C(v29, &v30);
    sub_240BA279C(&v30);
    if (!v28)
    {
      break;
    }

    v17 = *(a3 + 64);
    if (v17 == 2)
    {
      v18 = HIDWORD(v17);
    }

    else if (v17 == 1)
    {
      v18 = *(*(a4 + 328) + v13 + 28);
    }

    else if (v17 || DWORD1(v26) >= 6)
    {
      v18 = 0;
    }

    else
    {
      v18 = dword_240C83EA8[DWORD1(v26)];
    }

    v19 = a2[2];
    v20 = a2[3];
    v30 = v26;
    v31 = v27;
    v21 = sub_240B90560(v28, v19, v20, v25, v18, &v30, 0, a6, *&v26, *a7 + v14);
    sub_240BA281C(&v28);
    sub_240BA279C(v29);
    if (v21)
    {
      return 1;
    }

    v7 = *(a4 + 320);
LABEL_16:
    ++v15;
    v14 += 40;
    v13 += 96;
    if (v15 >= v7)
    {
      return 0;
    }
  }

  sub_240BA281C(&v28);
  sub_240BA279C(v29);
  return 1;
}

void sub_240B97DA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va1, a15);
  va_start(va, a15);
  v16 = va_arg(va1, void);
  sub_240BA281C(va);
  sub_240BA279C(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_240B97DD0(uint64_t a1)
{
  if (*(a1 + 68) == 1 && (*a1 != 0.0 || !*(a1 + 64)))
  {
    return 0;
  }

  for (i = *(a1 + 8); i != *(a1 + 16); ++i)
  {
    if (*i > 0.0 || *i < 0.0 && *a1 != 0.0)
    {
      return 0;
    }
  }

  return 1;
}

unsigned int *sub_240B97E30(unsigned int *result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = 0;
  v5 = result[1];
  do
  {
    if (v5)
    {
      v6 = 0;
      v7 = *(result + 2);
      v8 = *&result[10 * v4 + 6];
      v9 = *result;
      v10 = v8 + 4;
      v11 = a3 + 4;
      do
      {
        if (v6)
        {
          v12 = v8 + v7 * (v6 - 1);
        }

        else
        {
          v12 = 0;
        }

        v13 = v6 + 1;
        if (v6 + 1 < v5)
        {
          v14 = v8 + v7 * (v6 + 1);
        }

        else
        {
          v14 = 0;
        }

        v15 = a3 + (v6 - 1) * a2;
        if (!v6)
        {
          v15 = 0;
        }

        if (v13 < v5)
        {
          v16 = a3 + v13 * a2;
        }

        else
        {
          v16 = 0;
        }

        if (v9)
        {
          v17 = 0;
          v18 = v14 + 4;
          v19 = v16 + 4;
          v20 = 1;
          do
          {
            if (*(v11 + v17 - 4) == 0.0)
            {
              v21 = v10 + v17;
              *(v10 + v17 - 4) = 0;
              if ((a4 & 1) == 0)
              {
                if (v17)
                {
                  v22 = *(v10 + v17 - 8);
                  v23 = v22 + 0.0;
                  *(v21 - 4) = v22 + 0.0;
                  v24 = 1.0;
                  if (*(v11 + v17 - 8) > 0.0)
                  {
                    v23 = v22 + v23;
                    *(v21 - 4) = v23;
                    v24 = 2.0;
                  }
                }

                else
                {
                  v23 = 0.0;
                  v24 = 0.0;
                }

                if (v20 < v9)
                {
                  if (v6)
                  {
                    v23 = *(v12 + v17 + 4) + v23;
                    *(v21 - 4) = v23;
                    v24 = v24 + 1.0;
                  }

                  if (*(v11 + v17) > 0.0)
                  {
                    v23 = v23 + (*(v10 + v17) * 2.0);
                    *(v21 - 4) = v23;
                    v24 = v24 + 2.0;
                  }

                  if (v6 && *(v15 + v17 + 4) > 0.0)
                  {
                    v23 = v23 + (*(v12 + v17 + 4) * 2.0);
                    *(v21 - 4) = v23;
                    v24 = v24 + 2.0;
                  }

                  if (v13 < v5 && *(v19 + v17) > 0.0)
                  {
                    v23 = v23 + (*(v18 + v17) * 2.0);
                    *(v21 - 4) = v23;
                    v24 = v24 + 2.0;
                  }
                }

                if (v6 && *(v15 + v17) > 0.0)
                {
                  v23 = v23 + (*(v12 + v17) * 2.0);
                  *(v21 - 4) = v23;
                  v24 = v24 + 2.0;
                }

                if (v13 < v5 && *(v19 + v17 - 4) > 0.0)
                {
                  v23 = v23 + (*(v18 + v17 - 4) * 2.0);
                  *(v21 - 4) = v23;
                  v24 = v24 + 2.0;
                }

                if (v24 > 1.0)
                {
                  *(v21 - 4) = v23 / v24;
                }
              }
            }

            v17 += 4;
            ++v20;
          }

          while (4 * v9 != v17);
        }

        v11 += a2;
        v10 += v7;
        ++v6;
      }

      while (v13 != v5);
    }

    ++v4;
  }

  while (v4 != 3);
  return result;
}

uint64_t sub_240B98048(uint64_t result, void *a2, uint64_t *a3, _DWORD *a4)
{
  if (!a4[3] && (*(result + 32) & 1) == 0)
  {
    v4 = 0;
    v5 = 2;
    a4[17] = 2;
    v6 = *(result + 392);
    do
    {
      if (v6 > *&dword_240C11A90[v4])
      {
        a4[17] = ++v5;
      }

      ++v4;
    }

    while (v4 != 4);
    if (*result < 0.299)
    {
      a4[17] = ++v5;
    }

    if (*(result + 48) > 3)
    {
      v46 = 0;
      v45 = 0.0;
      v47 = 0.0;
    }

    else
    {
      v7 = a3[3];
      if (v7 < 2)
      {
        v46 = 0;
        v33 = 0.0;
        v45 = 0.0;
        v32 = 0.0;
      }

      else
      {
        v9 = a3[1];
        v8 = a3[2];
        v10 = *a3;
        v11 = a2[2];
        v12 = v9 * v11 + 4 * *a3 + a2[3];
        v13 = (v12 + v11);
        v14 = (v12 + 4);
        v15 = 0;
        for (i = 1; i != v7; ++i)
        {
          v17 = v14;
          v18 = v13;
          v19 = v8 - 1;
          if (v8 >= 2)
          {
            do
            {
              v20 = *v18;
              v18 = (v18 + 4);
              v21.i32[0] = vdup_lane_s32(v20, 1).u32[0];
              v21.i32[1] = *v17++;
              v22 = vabd_f32(v20, v21);
              v15 = vbsl_s8(vcgt_f32(v22, v15), v22, v15);
              --v19;
            }

            while (v19);
          }

          v13 = (v13 + v11);
          v14 = (v14 + v11);
        }

        v24 = a2[7];
        v23 = a2[8];
        v26 = a2[12];
        v25 = a2[13];
        result = v9 * v24 + 4 * v10 + v23 + 4;
        v27 = v9 * v26 + 4 * v10 + v25 + 4;
        v28 = v26 * (v9 + 1) + 4 * v10 + v25 + 4;
        v29 = v24 * (v9 + 1) + 4 * v10 + v23 + 4;
        v30 = 0.0;
        v31 = 1;
        v32 = 0.0;
        v33 = 0.0;
        do
        {
          if (v8 >= 2)
          {
            v34 = 0;
            v35 = *(v25 + v26 * (v31 + v9) + 4 * v10);
            v36 = *(v23 + v24 * (v31 + v9) + 4 * v10);
            do
            {
              v37 = v36;
              v36 = *(v29 + 4 * v34);
              v38 = *(v28 + 4 * v34);
              v39 = v35 - v37;
              v40 = v38 + v36 * -1.2;
              v41 = *(v27 + 4 * v34);
              v42 = vabds_f32(v38 - v36, v39);
              if (v32 < v42)
              {
                v32 = v42;
              }

              v43 = vabds_f32(v38 - v36, v41 - *(result + 4 * v34));
              if (v33 < v43)
              {
                v33 = v43;
              }

              if (v40 >= 0.0)
              {
                v44 = (vabds_f32(v38, v35) + vabds_f32(v38, v41)) * v40;
                if (v30 < v44)
                {
                  v30 = v44;
                }
              }

              ++v34;
              v35 = v38;
            }

            while (v8 - 1 != v34);
          }

          ++v31;
          result += v24;
          v27 += v26;
          v28 += v26;
          v29 += v24;
        }

        while (v31 != v7);
        if (v15.f32[0] < v15.f32[1])
        {
          v15.f32[0] = v15.f32[1];
        }

        v45 = v15.f32[0];
        v46 = v30 >= 0.13;
      }

      if (v32 >= v33)
      {
        v48 = v32;
      }

      else
      {
        v48 = v33;
      }

      v47 = v48;
    }

    if (v45 < 0.017)
    {
      v49 = 2;
    }

    else
    {
      v49 = 3;
    }

    if (v45 >= 0.03)
    {
      v49 = 4;
    }

    if (v5 <= v49)
    {
      v5 = v49;
    }

    a4[17] = v5;
    if (v47 <= 0.38)
    {
      if (v47 <= 0.33)
      {
        v50 = v47 > 0.28 && v46;
      }

      else if (v46)
      {
        v50 = 2;
      }

      else
      {
        v50 = 1;
      }
    }

    else if (v46)
    {
      v50 = 3;
    }

    else
    {
      v50 = 2;
    }

    a4[18] = v50 + 2;
  }

  return result;
}

void sub_240B98344(uint64_t a1, char a2, char a3, unsigned int *a4, uint64_t a5, uint64_t a6, uint64_t a7, _OWORD *a8)
{
  v9 = *(a1 + 192);
  if (v9 <= 0.0)
  {
    v21 = *(a1 + 416);
    if (*(a1 + 424) - v21 == 32)
    {
      for (i = 0; i != 32; i += 4)
      {
        *(a8 + i) = *(v21 + i);
      }
    }

    else if (!*(a7 + 12) && (*(a7 + 24) & 1) != 0 && (a3 & 1) == 0 && (a2 & 1) == 0)
    {
      v24 = (*a1 + -1.0) / 0.6;
      v25 = (v24 * 0.75) + 0.25;
      if (v24 >= 1.0)
      {
        v25 = 1.0;
      }

      if (v24 >= 0.0)
      {
        v26 = v25;
      }

      else
      {
        v26 = 1.0;
      }

      bzero(v180, 0x400uLL);
      v27 = (*a4 >> 3) * (a4[1] >> 3);
      v207.i32[0] = 0;
      sub_240B83618(__p, v27, v207.i32);
      v28 = a4[1];
      if (v28 >= 8)
      {
        LODWORD(v29) = 0;
        LODWORD(v30) = 0;
        LODWORD(v31) = *a4;
        v32 = 8;
        do
        {
          v33 = v29;
          v29 = v32;
          if (v31 >= 8)
          {
            v34 = 0;
            v35 = v33;
            v36 = v33 + 2;
            v30 = v30;
            v37 = 8;
            do
            {
              v203.i32[0] = 0;
              sub_240B83618(v207.i64, 0x14uLL, v203.i32);
              v38 = 0;
              v39 = 0;
              v40 = 4 * v34;
              v41 = *(a4 + 8);
              v42 = *(a4 + 2);
              v43 = *(a4 + 3);
              v44 = v40 + v36 * v42;
              v45 = v43 + v44;
              v46 = v41 + v44;
              v47 = v40 + v35 * v42;
              v48 = v43 + v47;
              v49 = v41 + v47;
              v50 = v207.i64[0];
              v51 = v45 + 8;
              v52 = v46 + 8;
              do
              {
                v53 = 0;
                v54 = v39;
                v55 = v49;
                v56 = v48;
                do
                {
                  v57 = 0;
                  v58 = 0.0;
                  v59 = v55;
                  v60 = v56;
                  v61 = v52;
                  v62 = v51;
                  do
                  {
                    for (j = 0; j != 12; j += 4)
                    {
                      v58 = v58 + vabds_f32((*(v61 + j) + *(v62 + j)) * 0.5, (*(v59 + j) + *(v60 + j)) * 0.5);
                    }

                    ++v57;
                    v62 += v42;
                    v61 += v42;
                    v60 += v42;
                    v59 += v42;
                  }

                  while (v57 != 4);
                  *(v50 + 4 * v54) = v58;
                  v39 = v54 + 1;
                  ++v53;
                  v56 += 4;
                  v55 += 4;
                  ++v54;
                }

                while (v53 != 5);
                ++v38;
                v48 += v42;
                v49 += v42;
              }

              while (v38 != 4);
              std::__sort<std::__less<float,float> &,float *>();
              v64 = 0.0;
              v65 = v207.i64[0];
              do
              {
                v66 = *v65++;
                v64 = v64 + v66;
              }

              while (v65 != (v207.i64[0] + 40));
              if (v207.i64[0])
              {
                v207.i64[1] = v207.i64[0];
                operator delete(v207.i64[0]);
              }

              *(__p[0] + v30) = v64 / 10.0;
              v67 = vcvts_n_s32_f32(v64 / 10.0, 8uLL);
              v68 = v67 & ~(v67 >> 31);
              if (v68 >= 255)
              {
                v68 = 255;
              }

              ++*(v180 + v68);
              ++v30;
              v37 += 8;
              v31 = *a4;
              v34 += 8;
            }

            while (v37 <= v31);
            v28 = a4[1];
          }

          v32 = v29 + 8;
        }

        while (v29 + 8 <= v28);
      }

      v69 = 0;
      v70 = 0;
      do
      {
        if (*(v180 + v69) > *(v180 + v70))
        {
          v70 = v69;
        }

        ++v69;
      }

      while (v69 != 256);
      v71 = vcvts_n_f32_s32(v70, 8uLL);
      if (v71 > 0.15 || v71 <= 0.0)
      {
        v74 = 0;
        *a8 = 0u;
        a8[1] = 0u;
      }

      else
      {
        v72 = 0.0;
        v170 = v26;
        if (v28 >= 8)
        {
          v75 = 0;
          __src = 0;
          v76 = 0;
          v77 = 0;
          v78 = 0;
          v79 = *a4;
          v80 = 8;
          v81.i64[0] = 0x3F0000003F000000;
          v81.i64[1] = 0x3F0000003F000000;
          do
          {
            if (v79 >= 8)
            {
              v173 = v80;
              v82 = 0;
              v83 = 0;
              v84 = 8;
              do
              {
                v85 = v84;
                if (*(__p[0] + v78) <= v71)
                {
                  v86 = 0;
                  v87 = *(a4 + 8);
                  v88 = *(a4 + 2);
                  v89 = *(a4 + 3);
                  v90 = v82 + v75 * v88;
                  v91 = 0.0;
                  do
                  {
                    v92 = v90;
                    v93 = 8;
                    do
                    {
                      v94 = vmulq_f32(vaddq_f32(*(v87 + v92), *(v89 + v92)), v81);
                      v91 = (((v91 + v94.f32[0]) + v94.f32[1]) + v94.f32[2]) + v94.f32[3];
                      v92 += 16;
                      v93 -= 4;
                    }

                    while (v93);
                    ++v86;
                    v90 += v88;
                  }

                  while (v86 != 8);
                  v95 = 0;
                  v96 = 0.0;
                  do
                  {
                    v97 = 0;
                    v98 = v95 + v75;
                    do
                    {
                      v99 = v97 | v83;
                      v100 = 0.0;
                      v101 = -1;
                      v102 = &dword_240C84FC8;
                      do
                      {
                        if ((v101 + v95) >= 8)
                        {
                          v109 = (v98 - v101) * v88;
                          v110 = v87 + v109;
                          v111 = v89 + v109;
                          v112 = -1;
                          v113 = v102;
                          v114 = 1;
                          do
                          {
                            if ((v97 + v112) >= 8)
                            {
                              v115 = v114;
                            }

                            else
                            {
                              v115 = v112;
                            }

                            v116 = *v113++;
                            v100 = v100 + (((*(v110 + 4 * (v115 + v99)) + *(v111 + 4 * (v115 + v99))) * 0.5) * v116);
                            --v114;
                            ++v112;
                          }

                          while (v112 != 2);
                        }

                        else
                        {
                          v103 = 0;
                          v104 = (v101 + v98) * v88;
                          v105 = v87 + v104;
                          v106 = v89 + v104;
                          v107 = 1;
                          do
                          {
                            v108 = v103 - 1;
                            if ((v103 - 1 + v97) >= 8)
                            {
                              v108 = v107;
                            }

                            v100 = v100 + (((*(v105 + 4 * (v108 + v99)) + *(v106 + 4 * (v108 + v99))) * 0.5) * *&v102[v103++]);
                            --v107;
                          }

                          while (v103 != 3);
                        }

                        ++v101;
                        v102 += 3;
                      }

                      while (v101 != 2);
                      v96 = v96 + fabsf(v100);
                      ++v97;
                    }

                    while (v97 != 8);
                    ++v95;
                  }

                  while (v95 != 8);
                  v117 = (v77 - __src) >> 3;
                  v118 = v117 + 1;
                  if ((v117 + 1) >> 61)
                  {
                    sub_240B228BC();
                  }

                  if (-__src >> 2 > v118)
                  {
                    v118 = -__src >> 2;
                  }

                  if (-__src >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v119 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v119 = v118;
                  }

                  if (v119)
                  {
                    sub_240B299F4(v119);
                  }

                  v120 = (8 * v117);
                  *v120 = v96 * 0.015625;
                  v120[1] = v91 * 0.015625;
                  v77 = 8 * v117 + 8;
                  v121 = 8 * v117 - (v76 - __src);
                  memcpy(v120 - (v76 - __src), __src, v76 - __src);
                  if (__src)
                  {
                    operator delete(__src);
                  }

                  __src = v121;
                  v79 = *a4;
                  v76 = v77;
                  v81.i64[0] = 0x3F0000003F000000;
                  v81.i64[1] = 0x3F0000003F000000;
                }

                ++v78;
                v84 = v85 + 8;
                v82 += 32;
                v83 = v85;
              }

              while (v85 + 8 <= v79);
              v28 = a4[1];
              v80 = v173;
            }

            v80 += 8;
            v75 += 8;
          }

          while (v80 <= v28);
          v122 = __src;
          v169 = v76;
          if (__src == v77)
          {
            v73 = (v77 - __src) >> 3;
          }

          else
          {
            v72 = 0.0;
            do
            {
              v123 = *v122;
              v122 += 2;
              v72 = v72 + v123;
            }

            while (v122 != v77);
            v73 = (v77 - __src) >> 3;
            if (v77 != __src)
            {
              if (!(v73 >> 61))
              {
                sub_240B299F4((v77 - __src) >> 3);
              }

              sub_240B228BC();
            }
          }
        }

        else
        {
          __src = 0;
          v169 = 0;
          v73 = 0;
        }

        v185 = vdupq_lane_s64(COERCE__INT64((v72 / v73)), 0);
        v186 = v185;
        v187 = v185;
        v188 = v185;
        v181 = v185;
        v182 = v185;
        v183 = v185;
        v184 = v185;
        v124 = sub_240BB8524(0, 0, &v181, v203.i64, 0);
        v174 = 0;
        v198 = v203;
        v199 = v204;
        v200 = v205;
        v201 = v206;
        v194 = v203;
        v195 = v204;
        v125 = 0.0;
        v126 = 1.0;
        v127 = 1;
        v128 = 1;
        v129 = 0.0;
        v196 = v205;
        v197 = v206;
        v130 = 0.0;
        do
        {
          if (v128)
          {
            v131 = 0;
            v132 = 0.0;
            do
            {
              v133 = vmulq_f64(*(&v194 + v131), *(&v203 + v131));
              v132 = v132 + v133.f64[0] + v133.f64[1];
              v131 += 16;
            }

            while (v131 != 64);
            if (v132 <= 0.0)
            {
              v134 = 0;
              v194 = v203;
              v195 = v204;
              v196 = v205;
              v197 = v206;
              v132 = 0.0;
              do
              {
                v135 = vmulq_f64(*(&v194 + v134), *(&v203 + v134));
                v132 = v132 + v135.f64[0] + v135.f64[1];
                v134 += 16;
              }

              while (v134 != 64);
            }

            v129 = -v132;
            v136 = 0;
            v130 = 0.0;
            do
            {
              v130 = v130 + *&v194.i64[v136] * *&v194.i64[v136];
              ++v136;
            }

            while (v136 != 8);
            v137 = 0;
            v138 = 0.0001 / sqrt(v130);
            do
            {
              *&v189[v137] = vmulq_n_f64(*(&v194 + v137), v138);
              v137 += 16;
            }

            while (v137 != 64);
            v176 = v138;
            for (k = 0; k != 64; k += 16)
            {
              *(&v190 + k) = vaddq_f64(*(&v181 + k), *&v189[k]);
            }

            sub_240BB8524(0, 0, &v190, v202[0].i64, 0);
            for (m = 0; m != 4; ++m)
            {
              *(&v190 + m * 16) = vsubq_f64(*(&v203 + m * 16), v202[m]);
            }

            v141 = 0;
            v142 = 0.0;
            do
            {
              v143 = vmulq_f64(*(&v194 + v141), *(&v190 + v141));
              v142 = v142 + v143.f64[0] + v143.f64[1];
              v141 += 16;
            }

            while (v141 != 64);
            v125 = v142 / v176;
          }

          v144 = v125 + v126 * v130;
          if (v144 <= 0.0)
          {
            v144 = v126 * v130;
            v126 = v126 - v125 / v130;
          }

          for (n = 0; n != 64; n += 16)
          {
            *&v189[n] = vmulq_n_f64(*(&v194 + n), -v129 / v144);
          }

          v177 = -v129 / v144;
          for (ii = 0; ii != 64; ii += 16)
          {
            *(&v190 + ii) = vaddq_f64(*(&v181 + ii), *&v189[ii]);
          }

          v207 = v190;
          v208 = v191;
          v209 = v192;
          v210 = v193;
          v147 = sub_240BB8524(0, 0, &v207, v202[0].i64, 0);
          v148 = (v147 - v124 + v147 - v124) / (v129 * v177);
          v128 = v148 >= 0.0;
          if (v148 >= 0.0)
          {
            v149 = 0;
            v181 = v207;
            v182 = v208;
            v183 = v209;
            v184 = v210;
            v198 = v203;
            v199 = v204;
            v200 = v205;
            v201 = v206;
            v205 = v202[2];
            v206 = v202[3];
            v150 = 0.0;
            v203 = v202[0];
            v204 = v202[1];
            do
            {
              v150 = v150 + *&v203.i64[v149] * *&v203.i64[v149];
              ++v149;
            }

            while (v149 != 8);
            if (v150 <= 1.0e-16)
            {
              break;
            }

            ++v174;
            v124 = v147;
          }

          if (v148 >= 0.25)
          {
            if (v148 > 0.75)
            {
              if (v126 * 0.25 >= 1.0e-15)
              {
                v126 = v126 * 0.25;
              }

              else
              {
                v126 = 1.0e-15;
              }
            }
          }

          else if (v126 * 4.0 <= 1.0e15)
          {
            v126 = v126 * 4.0;
          }

          else
          {
            v126 = 1.0e15;
          }

          if ((v174 & 7) != 0)
          {
            if (v148 >= 0.0)
            {
              for (jj = 0; jj != 64; jj += 16)
              {
                *(&v190 + jj) = vsubq_f64(*(&v198 + jj), *(&v203 + jj));
              }

              v152 = 0;
              v153 = 0.0;
              do
              {
                v154 = vmulq_f64(*(&v190 + v152), *(&v203 + v152));
                v153 = v153 + v154.f64[0] + v154.f64[1];
                v152 += 16;
              }

              while (v152 != 64);
              v155 = 0;
              v156 = v153 / v129;
              do
              {
                *&v189[v155] = vmulq_n_f64(*(&v194 + v155), v156);
                v155 += 16;
              }

              while (v155 != 64);
              for (kk = 0; kk != 64; kk += 16)
              {
                *(&v190 + kk) = vaddq_f64(*&v189[kk], *(&v203 + kk));
              }

              v194 = v190;
              v195 = v191;
              v196 = v192;
              v197 = v193;
            }
          }

          else
          {
            v194 = v203;
            v195 = v204;
            v196 = v205;
            v197 = v206;
            v126 = 1.0;
          }

          ++v127;
        }

        while (v127 != 41);
        v185 = v181;
        v186 = v182;
        v187 = v183;
        v188 = v184;
        v207 = v181;
        v208 = v182;
        v209 = v183;
        v210 = v184;
        v158 = sub_240BB8524(0, 0, &v185, v207.i64, 1) / ((v169 - __src) >> 3);
        if (v158 <= 0.001)
        {
          v161 = 0;
          v162 = &v185;
          v159 = a8;
          v160 = v170;
          do
          {
            v164 = *v162;
            v163 = v162[1];
            v162 += 2;
            a8[v161++] = vcvt_hight_f32_f64(vcvt_f32_f64(vbicq_s8(v164, vcltzq_f64(v164))), vbicq_s8(v163, vcltzq_f64(v163)));
          }

          while (v161 != 2);
        }

        else
        {
          v159 = a8;
          *a8 = 0u;
          a8[1] = 0u;
          v160 = v170;
        }

        for (mm = 0; mm != 2; ++mm)
        {
          v159[mm] = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*&v159[mm]), v160 * 1.4)), vmulq_n_f64(vcvt_hight_f64_f32(v159[mm]), v160 * 1.4));
        }

        v166 = 0;
        do
        {
          v167 = fabsf(*(v159 + v166));
          v74 = v167 > 0.001;
          v168 = v167 > 0.001 || v166 == 28;
          v166 += 4;
        }

        while (!v168);
        if (__src)
        {
          operator delete(__src);
        }
      }

      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      if (!v74)
      {
        *(a7 + 24) &= ~1uLL;
      }
    }
  }

  else
  {
    v175 = cbrtf(0.0037931);
    for (nn = 0; nn != 8; ++nn)
    {
      v13 = ((nn / 6.0) + (nn / 6.0)) - v175;
      v14 = fmaxf((v13 * (v13 * v13)) + 0.0037931, 0.0);
      v172 = ((10.0 / v9) * 2252.0) * (864000000.0 / (a6 * a5));
      v15 = (0.18 / v172) * sqrtf(((v172 * (v14 / 0.18)) + 9.0) + (((v172 * (v14 / 0.18)) * 0.005) * ((v172 * (v14 / 0.18)) * 0.005)));
      v16 = cbrtf(v14 + -0.0037931);
      v17 = (v15 * (0.33333 / (v16 * v16))) / 0.35157;
      if (v17 <= 1.0)
      {
        v18 = v17;
      }

      else
      {
        v18 = 1.0;
      }

      if (v17 >= 0.0)
      {
        v19 = v18;
      }

      else
      {
        v19 = 0.0;
      }

      *(v180 + nn) = v19;
    }

    v20 = v180[1];
    *a8 = v180[0];
    a8[1] = v20;
  }
}

void sub_240B990B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, void *a18, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_240B99108(int a1, char a2, uint64_t a3, char a4, unsigned int *a5)
{
  if (a4)
  {
    return 0;
  }

  v6 = *(a3 + 268);
  if (v6 == 1 || (a2 & 1) != 0)
  {
    return 0;
  }

  if (v6 == 2 && *(a3 + 12) == 0)
  {
    if (a1 > 3)
    {
      sub_240B2A11C(v45, ((*a5 + 1) >> 1) + 8, ((a5[1] + 1) >> 1) + 8);
      v7 = v47;
      if (v47)
      {
        return v7;
      }

      sub_240B2A358(v57, v45);
      v23 = 0;
      v57[0] = vadd_s32(v57[0], 0x700000007);
      v57[5] = v57[0];
      v57[10] = v57[0];
      while (1)
      {
        v7 = sub_240BAA3B8(&a5[v23 / 4], &v57[v23 / 8]);
        if (v7)
        {
          break;
        }

        v23 += 40;
        if (v23 == 120)
        {
          sub_240B30D80(a5, v57);
          v7 = 0;
          break;
        }
      }

      for (i = 13; i != -2; i -= 5)
      {
        sub_240B22320(&v57[i]);
      }

      if (!v47)
      {
        v25 = v46;
        v26 = -120;
        do
        {
          sub_240B22320(v25);
          v25 -= 5;
          v26 += 40;
        }

        while (v26);
      }
    }

    else
    {
      sub_240B2A11C(v57, ((*a5 + 1) >> 1) + 8, ((a5[1] + 1) >> 1) + 8);
      v7 = v59;
      if (v59)
      {
        return v7;
      }

      sub_240B2A358(v62, v57);
      v62[0] = vadd_s32(v62[0], 0x700000007);
      v62[5] = v62[0];
      v62[10] = v62[0];
      sub_240B2A11C(v49, *a5, a5[1]);
      v7 = v56;
      if (!v56)
      {
        sub_240B2A358(v48, v49);
        sub_240B49900(v45);
        v60[1] = 0;
        v60[0] = 0;
        *&v11 = v48[0];
        *(&v11 + 1) = v48[1];
        v61 = v11;
        sub_240B4988C(a5, v60, v48, v45);
        sub_240B23590(&v41, *a5, a5[1]);
        v7 = v44;
        if (!v44)
        {
          v38 = v41;
          v39 = v42;
          *(&v42 + 1) = 0;
          v40 = v43;
          __asm { FMOV            V0.2S, #1.0 }

          v36 = _D0;
          v37 = 1117782016;
          sub_240B7218C(&v35, v48, &v36);
        }

        for (j = 26; j != -4; j -= 10)
        {
          sub_240B22320(&v48[j]);
        }

        if (!v56)
        {
          v17 = &v54 + 1;
          v18 = -120;
          do
          {
            sub_240B22320(v17);
            v17 -= 5;
            v18 += 40;
          }

          while (v18);
        }
      }

      for (k = 13; k != -2; k -= 5)
      {
        sub_240B22320(&v62[k]);
      }

      if (!v59)
      {
        v21 = v58;
        v22 = -120;
        do
        {
          sub_240B22320(v21);
          v21 -= 5;
          v22 += 40;
        }

        while (v22);
      }
    }

    if (v7)
    {
      return v7;
    }

    goto LABEL_55;
  }

  v55 = 0;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v50 = 0u;
  memset(v49, 0, sizeof(v49));
  sub_240B2A11C(v45, (v6 - 1 + *a5) / v6 + 8, (v6 - 1 + a5[1]) / v6 + 8);
  if (v47)
  {
    v59 = v47;
  }

  else
  {
    sub_240B2A358(v62, v45);
    sub_240B30D80(v49, v62);
    for (m = 13; m != -2; m -= 5)
    {
      sub_240B22320(&v62[m]);
    }

    v28 = 0;
    *&v49[0] = vadd_s32(*&v49[0], 0x700000007);
    *(&v50 + 1) = *&v49[0];
    *&v53 = *&v49[0];
    do
    {
      sub_240C10860(&a5[v28], v6, v49 + v28 * 4);
      v28 += 10;
    }

    while (v28 != 30);
    v59 = 0;
    sub_240B2A358(v57, v49);
    if (!v47)
    {
      v29 = v46;
      v30 = -120;
      do
      {
        sub_240B22320(v29);
        v29 -= 5;
        v30 += 40;
      }

      while (v30);
    }
  }

  for (n = 104; n != -16; n -= 40)
  {
    sub_240B22320((v49 + n));
  }

  v7 = v59;
  if (!v59)
  {
    sub_240B2A358(v45, v57);
    sub_240B30D80(a5, v45);
    for (ii = 104; ii != -16; ii -= 40)
    {
      sub_240B22320(&v45[ii]);
    }

    if (!v59)
    {
      v33 = v58;
      v34 = -120;
      do
      {
        sub_240B22320(v33);
        v33 -= 5;
        v34 += 40;
      }

      while (v34);
    }

LABEL_55:
    if (!*(a3 + 12))
    {
      sub_240C105C8(a5, v20);
    }

    return 0;
  }

  return v7;
}

void sub_240B9A054(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, uint64_t a29, int a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, int a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v67 = STACK[0x428];
  STACK[0x428] = 0;
  if (v67)
  {
    atomic_fetch_add(&qword_27E519020, -*(v67 - 24));
    free(*(v67 - 32));
  }

  if (!LODWORD(STACK[0x468]))
  {
    v68 = STACK[0x458];
    STACK[0x458] = 0;
    if (v68)
    {
      atomic_fetch_add(&qword_27E519020, -*(v68 - 24));
      free(*(v68 - 32));
    }
  }

  v69 = STACK[0x488];
  STACK[0x488] = 0;
  if (v69)
  {
    atomic_fetch_add(&qword_27E519020, -*(v69 - 24));
    free(*(v69 - 32));
  }

  if (!LODWORD(STACK[0x4C8]))
  {
    v70 = STACK[0x4B8];
    STACK[0x4B8] = 0;
    if (v70)
    {
      atomic_fetch_add(&qword_27E519020, -*(v70 - 24));
      free(*(v70 - 32));
    }
  }

  v71 = STACK[0x4E8];
  STACK[0x4E8] = 0;
  if (v71)
  {
    atomic_fetch_add(&qword_27E519020, -*(v71 - 24));
    free(*(v71 - 32));
  }

  if (!LODWORD(STACK[0x528]))
  {
    v72 = STACK[0x518];
    STACK[0x518] = 0;
    if (v72)
    {
      atomic_fetch_add(&qword_27E519020, -*(v72 - 24));
      free(*(v72 - 32));
    }
  }

  v73 = STACK[0x548];
  STACK[0x548] = 0;
  if (v73)
  {
    atomic_fetch_add(&qword_27E519020, -*(v73 - 24));
    free(*(v73 - 32));
  }

  if (!LODWORD(STACK[0x588]))
  {
    v74 = STACK[0x578];
    STACK[0x578] = 0;
    if (v74)
    {
      atomic_fetch_add(&qword_27E519020, -*(v74 - 24));
      free(*(v74 - 32));
    }
  }

  v75 = STACK[0x5A8];
  STACK[0x5A8] = 0;
  if (v75)
  {
    atomic_fetch_add(&qword_27E519020, -*(v75 - 24));
    free(*(v75 - 32));
  }

  if (!LODWORD(STACK[0x5E8]))
  {
    v76 = STACK[0x5D8];
    STACK[0x5D8] = 0;
    if (v76)
    {
      atomic_fetch_add(&qword_27E519020, -*(v76 - 24));
      free(*(v76 - 32));
    }
  }

  v88 = STACK[0x608];
  STACK[0x608] = 0;
  if (v88)
  {
    atomic_fetch_add(&qword_27E519020, -*(v88 - 24));
    free(*(v88 - 32));
  }

  if (!LODWORD(STACK[0x648]))
  {
    v77 = STACK[0x638];
    STACK[0x638] = 0;
    if (v77)
    {
      atomic_fetch_add(&qword_27E519020, -*(v77 - 24));
      free(*(v77 - 32));
    }
  }

  if (a21)
  {
    atomic_fetch_add(&qword_27E519020, -*(a21 - 24));
    free(*(a21 - 32));
  }

  if (!LODWORD(STACK[0x678]))
  {
    v78 = STACK[0x668];
    STACK[0x668] = 0;
    if (v78)
    {
      atomic_fetch_add(&qword_27E519020, -*(v78 - 24));
      free(*(v78 - 32));
    }
  }

  if (!LODWORD(STACK[0x6A8]))
  {
    v79 = STACK[0x698];
    STACK[0x698] = 0;
    if (v79)
    {
      atomic_fetch_add(&qword_27E519020, -*(v79 - 24));
      free(*(v79 - 32));
    }
  }

  v80 = STACK[0x6C8];
  STACK[0x6C8] = 0;
  if (v80)
  {
    atomic_fetch_add(&qword_27E519020, -*(v80 - 24));
    free(*(v80 - 32));
  }

  if (!LODWORD(STACK[0x700]))
  {
    v81 = STACK[0x6F0];
    STACK[0x6F0] = 0;
    if (v81)
    {
      atomic_fetch_add(&qword_27E519020, -*(v81 - 24));
      free(*(v81 - 32));
    }
  }

  if (a19)
  {
    atomic_fetch_add(&qword_27E519020, -*(a19 - 24));
    free(*(a19 - 32));
  }

  if (!a28 && a26)
  {
    atomic_fetch_add(&qword_27E519020, -*(a26 - 24));
    free(*(a26 - 32));
  }

  if (a20)
  {
    (*(*a20 + 8))(a20, a2, a3, a4, a5, a6, a7, a8);
  }

  if (!a30 && a29)
  {
    (*(*a29 + 8))(a29, a2, a3, a4, a5, a6, a7, a8);
  }

  if (a36)
  {
    atomic_fetch_add(&qword_27E519020, -*(a36 - 24));
    free(*(a36 - 32));
  }

  if (!a43 && a41)
  {
    atomic_fetch_add(&qword_27E519020, -*(a41 - 24));
    free(*(a41 - 32));
  }

  for (i = 104; i != -16; i -= 40)
  {
    sub_240B22320((&a65 + i));
  }

  if (!LODWORD(STACK[0x2C8]))
  {
    v83 = &STACK[0x2B8];
    v84 = -120;
    do
    {
      sub_240B22320(v83);
      v83 -= 5;
      v84 += 40;
    }

    while (v84);
  }

  for (j = 104; j != -16; j -= 40)
  {
    sub_240B22320((v65 - 232 + j));
  }

  if (!LODWORD(STACK[0x348]))
  {
    v86 = &STACK[0x338];
    v87 = -120;
    do
    {
      sub_240B22320(v86);
      v86 -= 5;
      v87 += 40;
    }

    while (v87);
  }

  _Unwind_Resume(a1);
}

void sub_240B9A67C(uint64_t *a1, unint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = 0x2E8BA2E8BA2E8BA3 * ((v3 - *a1) >> 4);
  v6 = a2 - v5;
  if (a2 <= v5)
  {
    if (a2 < v5)
    {
      v10 = v4 + 176 * a2;
      while (v3 != v10)
      {
        v3 -= 176;
        sub_240B96E98(v3);
      }

      a1[1] = v10;
    }
  }

  else
  {
    v7 = a1[2];
    if (0x2E8BA2E8BA2E8BA3 * ((v7 - v3) >> 4) < v6)
    {
      if (a2 <= 0x1745D1745D1745DLL)
      {
        v8 = 0x5D1745D1745D1746 * ((v7 - v4) >> 4);
        if (v8 <= a2)
        {
          v8 = a2;
        }

        if ((0x2E8BA2E8BA2E8BA3 * ((v7 - v4) >> 4)) >= 0xBA2E8BA2E8BA2ELL)
        {
          v9 = 0x1745D1745D1745DLL;
        }

        else
        {
          v9 = v8;
        }

        if (v9 <= 0x1745D1745D1745DLL)
        {
          operator new();
        }

        sub_240B2291C();
      }

      sub_240B228BC();
    }

    v11 = v3 + 176 * v6;
    v12 = 176 * a2 - 16 * ((v3 - *a1) >> 4);
    do
    {
      sub_240BA2628(v3);
      v3 += 176;
      v12 -= 176;
    }

    while (v12);
    a1[1] = v11;
  }
}

void sub_240B9A96C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_240BA26CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_240B9A990(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v69 = *MEMORY[0x277D85DE8];
  v37 = a5;
  v38 = a4;
  sub_240B23694(&v25, a5[7], a5[8], 0);
  v6 = v36;
  if (!v36)
  {
    *v67 = v29;
    v7 = v27;
    v8 = v28;
    v9 = v31;
    *&v67[16] = v30;
    v10 = a5;
    v11 = v32;
    *&__src[32] = v35;
    v27 = 0;
    v31 = 0;
    *__src = v33;
    *&__src[16] = v34;
    v12 = v25;
    v10[140] = v26;
    v13 = v10[141];
    v10[141] = v7;
    v23 = v10;
    *(v10 + 69) = v12;
    if (v13)
    {
      atomic_fetch_add(&qword_27E519020, -*(v13 - 24));
      free(*(v13 - 32));
    }

    v23[142] = v8;
    v23[145] = *&v67[16];
    *(v23 + 143) = *v67;
    v14 = v23[146];
    v23[146] = v9;
    if (v14)
    {
      atomic_fetch_add(&qword_27E519020, -*(v14 - 24));
      free(*(v14 - 32));
    }

    v23[147] = v11;
    v15 = *&__src[16];
    *(v23 + 74) = *__src;
    *(v23 + 75) = v15;
    v23[152] = *&__src[32];
    v16 = *(v23 + 39);
    if (v16)
    {
      v17 = 0;
      v18 = *(v23 + 38);
      if (v18 <= 1)
      {
        v19 = 1;
      }

      else
      {
        v19 = *(v23 + 38);
      }

      v20 = *(v23 + 38);
      do
      {
        if (v20)
        {
          memset((v23[22] + v23[21] * v17), 1, v19);
          v20 = v18;
        }

        ++v17;
      }

      while (v16 != v17);
    }

    sub_240B3C7C4(0, v23 + 266);
    v21 = v37;
    sub_240BA1E88(v37 + 528);
    if (0x2E8BA2E8BA2E8BA3 * ((v21[649] - v21[648]) >> 4) > ((v21[529] - v21[528]) >> 3))
    {
      sub_240B3B11C(v67, 0x10000, v23[15]);
    }

    memset(&v67[4], 0, 208);
    v68 = 0;
    memset(&v66[4], 0, 108);
    v65 = 0;
    memset(&v64[4], 0, 208);
    *__src = 0;
    *&__src[4] = *v67;
    *&__src[20] = *&v67[16];
    v40[2] = *&v67[80];
    v40[1] = *&v67[64];
    v40[0] = *&v67[48];
    *&__src[36] = *&v67[32];
    v40[6] = *&v67[144];
    v40[5] = *&v67[128];
    v40[4] = *&v67[112];
    v40[3] = *&v67[96];
    v41 = 0;
    v40[9] = *&v67[192];
    v40[8] = *&v67[176];
    v40[7] = *&v67[160];
    v45 = *&v66[48];
    v46 = *&v66[64];
    v47 = *&v66[80];
    v48 = 0u;
    v42 = *v66;
    v43 = *&v66[16];
    v44 = *&v66[32];
    v49 = *v64;
    v50 = *&v64[16];
    v53 = *&v64[64];
    v54 = *&v64[80];
    v51 = *&v64[32];
    v52 = *&v64[48];
    v57 = *&v64[128];
    v58 = *&v64[144];
    v55 = *&v64[96];
    v56 = *&v64[112];
    v62 = 0;
    v60 = *&v64[176];
    v61 = *&v64[192];
    v59 = *&v64[160];
    v63 = 0;
    sub_240BA1EF4(&__dst, __src);
  }

  sub_240B6701C(&v25);
  return v6;
}

void sub_240B9BC5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v66 = 0;
  while (1)
  {
    v67 = *(&a65 + v66 + 48);
    if (v67)
    {
      *(&a65 + v66 + 56) = v67;
      operator delete(v67);
    }

    v66 -= 24;
    if (v66 == -72)
    {
      for (i = 104; i != -16; i -= 40)
      {
        sub_240B22320((&STACK[0x478] + i));
      }

      if (!LODWORD(STACK[0x638]))
      {
        v69 = &STACK[0x628];
        v70 = -120;
        do
        {
          sub_240B22320(v69);
          v69 -= 5;
          v70 += 40;
        }

        while (v70);
      }

      if (__p)
      {
        operator delete(__p);
      }

      if (a36)
      {
        operator delete(a36);
      }

      STACK[0x230] = &a41;
      sub_240B3CBC8(&STACK[0x230]);
      sub_240B6701C(&a44);
      _Unwind_Resume(a1);
    }
  }
}

uint64_t sub_240B9BD9C(uint64_t a1, unsigned int *a2, unsigned int *a3, uint64_t *a4, __int128 *a5, void *a6, uint64_t a7, uint64_t a8, void *a9)
{
  v10 = a7;
  v14 = a3;
  v15 = a9;
  v229 = *MEMORY[0x277D85DE8];
  v193 = a3;
  v16 = *(a8 + 4208);
  v166 = a8 + 4096;
  v164 = *(a8 + 4209);
  v17 = (a8 + 1104);
  v18 = *(a8 + 5040);
  v19 = *(a8 + 5048);
  if (v18 != v19)
  {
    *(a8 + 1432) = *(a8 + 5032);
    sub_240BA2FA8(a8 + 1440, v18, v19, 0xF0B7672A07A44C6BLL * (v19 - v18));
    sub_240BA2C68((a8 + 1464), *(a8 + 5064), *(a8 + 5072), (*(a8 + 5072) - *(a8 + 5064)) >> 3);
    sub_240BA3124((a8 + 1488), *(a8 + 5088), *(a8 + 5096), (*(a8 + 5096) - *(a8 + 5088)) >> 5);
    sub_240BA2C68((a8 + 1512), *(a8 + 5112), *(a8 + 5120), (*(a8 + 5120) - *(a8 + 5112)) >> 3);
    sub_240BA2C68((a8 + 1536), *(a8 + 5136), *(a8 + 5144), (*(a8 + 5144) - *(a8 + 5136)) >> 3);
  }

  v165 = v17;
  if ((v16 & 1) == 0)
  {
    if (*(a8 + 4592) > 3)
    {
      v85 = 0;
    }

    else
    {
      v62 = v14;
      if (*(a8 + 5040) == *(a8 + 5048))
      {
        v162 = a5;
        v63 = v10;
        v64 = v16;
        v65 = a4;
        memset(&v224[32], 0, 96);
        *v224 = 0;
        *(a8 + 1432) = 0;
        sub_240BA33AC((a8 + 1440));
        *(a8 + 1456) = 0;
        *(a8 + 1440) = 0u;
        memset(&v224[8], 0, 24);
        v66 = (a8 + 1464);
        v67 = *(a8 + 1464);
        if (v67)
        {
          *(a8 + 1472) = v67;
          operator delete(v67);
          *v66 = 0;
          *(a8 + 1472) = 0;
          *(a8 + 1480) = 0;
        }

        *v66 = 0;
        *(a8 + 1472) = 0;
        *(a8 + 1480) = 0;
        memset(&v224[32], 0, 24);
        v68 = (a8 + 1488);
        v69 = *(a8 + 1488);
        if (v69)
        {
          *(a8 + 1496) = v69;
          operator delete(v69);
          *v68 = 0;
          *(a8 + 1496) = 0;
          *(a8 + 1504) = 0;
        }

        *v68 = 0;
        *(a8 + 1496) = 0;
        *(a8 + 1504) = 0;
        memset(&v224[56], 0, 24);
        v70 = (a8 + 1512);
        v71 = *(a8 + 1512);
        if (v71)
        {
          *(a8 + 1520) = v71;
          operator delete(v71);
          *v70 = 0;
          *(a8 + 1520) = 0;
          *(a8 + 1528) = 0;
        }

        *v70 = 0;
        *(a8 + 1520) = 0;
        *(a8 + 1528) = 0;
        memset(&v224[80], 0, 24);
        v72 = (a8 + 1536);
        v73 = *(a8 + 1536);
        if (v73)
        {
          *(a8 + 1544) = v73;
          operator delete(v73);
          *v72 = 0;
          *(a8 + 1544) = 0;
          *(a8 + 1552) = 0;
        }

        *v72 = 0;
        *(a8 + 1544) = 0;
        *(a8 + 1552) = 0;
        memset(&v224[104], 0, 24);
        *v227 = &v224[8];
        sub_240B4BC78(v227);
        v62 = v193;
        a4 = v65;
        v16 = v64;
        v10 = v63;
        a5 = v162;
        v17 = v165;
      }

      v26 = sub_240B6ADAC((a8 + 1432), *v62, v62[1], v17);
      if (v26)
      {
        return v26;
      }

      v157 = v16;
      v158 = a4;
      v74 = a5;
      v75 = a6;
      v76 = v10;
      if (*(a8 + 1488) != *(a8 + 1496))
      {
        v77 = v193[1];
        if (v77)
        {
          v78 = 0;
          v79 = *v193;
          do
          {
            v80 = *(a8 + 1488);
            if (v80 != *(a8 + 1496))
            {
              v81 = *(v193 + 3);
              v82 = *(v193 + 8);
              v83 = *(v193 + 13);
              v84 = *(v193 + 2) * v78;
              *v224 = 0;
              *&v224[8] = v78;
              *&v224[16] = v79;
              *&v224[24] = 1;
              sub_240B6A9F0((v81 + v84), v82 + v84, v83 + v84, v224, 0, v80, *(a8 + 1512), *(a8 + 1536));
            }

            ++v78;
          }

          while (v77 != v78);
        }
      }

      v85 = *(a8 + 4592) < 4;
      v10 = v76;
      a6 = v75;
      a5 = v74;
      v15 = a9;
      a4 = v158;
      v16 = v157;
    }

    if (*(v166 + 527))
    {
      if (*(v166 + 527) == 1 || v85)
      {
        v26 = sub_240BB88F4(v193, a8, a5, a6, v15, 1, a7, a8);
        if (v26)
        {
          return v26;
        }

        sub_240BB8708((a8 + 1256), v193);
      }
    }
  }

  v156 = v16;
  v160 = a8 + 952;
  v20 = &v183;
  v21 = *(a8 + 4544);
  v22 = powf(v21 * 3.3333, 0.83) * 0.3;
  if (v22 >= v21)
  {
    v22 = v21;
  }

  if ((v21 * 0.5) >= v22)
  {
    v23 = v21 * 0.5;
  }

  else
  {
    v23 = v22;
  }

  memset(v192, 0, sizeof(v192));
  v161 = (a8 + 4544);
  v183 = a8 + 4544;
  v184 = 0u;
  v185 = 0u;
  v186 = 0u;
  v187 = 0u;
  v188 = 0u;
  v189 = 0u;
  v190 = 0.0;
  memset(v191, 0, sizeof(v191));
  v24 = 1.0959 / v23;
  if (v24 <= 50.0)
  {
    v25 = v24;
  }

  else
  {
    v25 = 50.0;
  }

  memset(v182, 0, sizeof(v182));
  v180 = 0uLL;
  v181 = 0uLL;
  v179 = 0;
  v177 = 0uLL;
  v178 = 0uLL;
  v176 = 0;
  v174 = 0uLL;
  v175 = 0uLL;
  v173 = 0;
  v171 = 0uLL;
  v172 = 0uLL;
  if (*(a8 + 4592) < 6)
  {
    v86 = v14;
    v87 = v15;
    v88 = a5;
    v89 = a6;
    v90 = v10;
    v91 = v21 * 0.73;
    if (*(a1 + 425))
    {
      v91 = v21;
    }

    v155 = v193;
    v214 = v91;
    v213 = 0.73815 / v91;
    v212 = &v174;
    v211 = &v171;
    memset(v224, 0, 104);
    v92 = a4[3];
    v159 = a4;
    v93 = a4[2] >> 3;
    v210 = v93;
    v94 = v92 >> 3;
    v209 = v92 >> 3;
    sub_240B23590(&v204, v93, v92 >> 3);
    v26 = v208;
    if (v208)
    {
      v10 = v90;
      a6 = v89;
      a5 = v88;
      v15 = v87;
      v14 = v86;
    }

    else
    {
      *&v224[24] = v204;
      v96 = v206;
      v206 = 0;
      v97 = v207;
      v98 = *&v224[48];
      *&v224[40] = v205;
      *&v224[48] = v96;
      if (v98)
      {
        atomic_fetch_add(&qword_27E519020, -*(v98 - 24));
        free(*(v98 - 32));
        v93 = v210;
        LODWORD(v94) = v209;
      }

      *&v224[56] = v97;
      sub_240B23590(&v199, v93, v94);
      v26 = v203;
      v10 = v90;
      if (v203)
      {
        a6 = v89;
        a5 = v88;
        v15 = v87;
        v14 = v86;
      }

      else
      {
        v99 = v201;
        v100 = v200;
        v201 = 0;
        v101 = v202;
        v93 = v212;
        *v212 = v199;
        v102 = *(v93 + 24);
        *(v93 + 16) = v100;
        *(v93 + 24) = v99;
        a6 = v89;
        if (v102)
        {
          atomic_fetch_add(&qword_27E519020, -*(v102 - 24));
          free(*(v102 - 32));
        }

        *(v93 + 32) = v101;
        sub_240B23590(&v194, *v155, v155[1]);
        a5 = v88;
        v26 = v198;
        v15 = v87;
        if (v198)
        {
          v14 = v86;
        }

        else
        {
          v103 = v196;
          v104 = v195;
          v196 = 0;
          v105 = v197;
          v106 = v211;
          *v211 = v194;
          v107 = *(v106 + 3);
          *(v106 + 2) = v104;
          *(v106 + 3) = v103;
          v14 = v86;
          if (v107)
          {
            atomic_fetch_add(&qword_27E519020, -*(v107 - 24));
            free(*(v107 - 32));
          }

          *(v106 + 4) = v105;
          v108 = ((v209 + 7) >> 3) * ((v210 + 7) >> 3);
          *&v215 = v224;
          *v227 = &v210;
          *&v227[8] = &v209;
          *&v227[16] = v224;
          *&v227[24] = &v214;
          *&v227[32] = &v213;
          *&v227[40] = v155;
          *&v227[48] = v159;
          *&v227[56] = &v212;
          *&v227[64] = &v211;
          if (a6)
          {
            sub_240B78AC4(a6, v108, &v215, v227);
          }

          else
          {
            *&v218 = 0;
            *(&v218 + 1) = &v218;
            sub_240B78AC4(&v218, v108, &v215, v227);
          }

          v93 = v211;
          *v227 = vdupq_n_s32(0x3E6D1351u);
          *&v227[16] = vdupq_n_s32(0x3D73362Cu);
          *&v227[32] = vdupq_n_s32(0x3D121DC5u);
          *&v227[48] = vdupq_n_s32(0x3D426843u);
          *&v227[64] = vdupq_n_s32(0x3C427F2Bu);
          *&v227[80] = vdupq_n_s32(0x3C9A90AFu);
          sub_240B23590(&v218, v159[2], v159[3]);
          v26 = v221;
          if (!v221)
          {
            v215 = v218;
            v216 = v219;
            *(&v219 + 1) = 0;
            v217 = v220;
            v222[1] = 0;
            v222[0] = 0;
            *&v109 = v218;
            *(&v109 + 1) = DWORD1(v218);
            v223 = v109;
            sub_240BEB2A8(v93, v159, v227, a6, &v215, v222);
            v110 = v215;
            *(v93 + 16) = v216;
            *v93 = v110;
            v111 = *(&v216 + 1);
            *(&v216 + 1) = 0;
            sub_240B2453C((v93 + 24), v111);
            v112 = *(&v216 + 1);
            *(v93 + 32) = v217;
            *(&v216 + 1) = 0;
            if (!v112 || (atomic_fetch_add(&qword_27E519020, -*(v112 - 24)), free(*(v112 - 32)), !v221))
            {
              v113 = *(&v219 + 1);
              *(&v219 + 1) = 0;
              if (v113)
              {
                atomic_fetch_add(&qword_27E519020, -*(v113 - 24));
                free(*(v113 - 32));
              }
            }

            v26 = 0;
            v169 = *&v224[24];
            v170 = *&v224[40];
            v20 = *&v224[56];
            v93 = *&v224[48];
            *&v224[48] = 0;
          }

          if (!v198)
          {
            v114 = v196;
            v196 = 0;
            if (v114)
            {
              atomic_fetch_add(&qword_27E519020, -*(v114 - 24));
              free(*(v114 - 32));
            }
          }
        }

        if (!v203)
        {
          v115 = v201;
          v201 = 0;
          if (v115)
          {
            atomic_fetch_add(&qword_27E519020, -*(v115 - 24));
            free(*(v115 - 32));
          }
        }
      }

      if (!v208)
      {
        v116 = v206;
        v206 = 0;
        if (v116)
        {
          atomic_fetch_add(&qword_27E519020, -*(v116 - 24));
          free(*(v116 - 32));
        }
      }
    }

    v117 = *&v224[88];
    *&v224[88] = 0;
    if (v117)
    {
      atomic_fetch_add(&qword_27E519020, -*(v117 - 24));
      free(*(v117 - 32));
    }

    v118 = *&v224[48];
    *&v224[48] = 0;
    if (v118)
    {
      atomic_fetch_add(&qword_27E519020, -*(v118 - 24));
      free(*(v118 - 32));
    }

    *v227 = v224;
    sub_240B30C38(v227);
    if (v26)
    {
      a4 = v159;
      goto LABEL_154;
    }

    v177 = v169;
    v119 = *(&v178 + 1);
    *&v178 = v170;
    *(&v178 + 1) = v93;
    if (v119)
    {
      atomic_fetch_add(&qword_27E519020, -*(v119 - 24));
      free(*(v119 - 32));
    }

    v179 = v20;
    v120 = 0.39 / *v161;
    sub_240B6A1A4(v160, v25, v120, 0.0);
    a4 = v159;
    goto LABEL_119;
  }

  sub_240B23590(v224, *(a8 + 72), *(a8 + 80));
  v26 = *&v224[40];
  if (!*&v224[40])
  {
    v177 = *v224;
    v27 = *&v224[24];
    *&v224[24] = 0;
    v28 = *&v224[32];
    v29 = *(&v178 + 1);
    *&v178 = *&v224[16];
    *(&v178 + 1) = v27;
    if (v29)
    {
      atomic_fetch_add(&qword_27E519020, -*(v29 - 24));
      free(*(v29 - 32));
    }

    v179 = v28;
    sub_240B23590(v227, *(a8 + 72), *(a8 + 80));
    v26 = *&v227[40];
    if (!*&v227[40])
    {
      v174 = *v227;
      v30 = *&v227[24];
      *&v227[24] = 0;
      v31 = *&v227[32];
      v32 = *(&v175 + 1);
      *&v175 = *&v227[16];
      *(&v175 + 1) = v30;
      if (v32)
      {
        atomic_fetch_add(&qword_27E519020, -*(v32 - 24));
        free(*(v32 - 32));
      }

      v176 = v31;
      *v33.i64 = 0.79 / *v161;
      v34 = *v33.i64;
      v35 = DWORD1(v177);
      if (DWORD1(v177))
      {
        v36 = 0;
        v37 = v178;
        v38 = v177;
        v39 = (v177 + 3) & 0x1FFFFFFFCLL;
        v33 = vdupq_n_s64(v177 - 1);
        v40 = *(&v178 + 1) + 8;
        v41 = vdupq_n_s64(4uLL);
        do
        {
          if (v38)
          {
            v42 = v40;
            v43 = v39;
            v44 = xmmword_240C111D0;
            v45 = xmmword_240C111C0;
            do
            {
              v46 = vmovn_s64(vcgeq_u64(v33, v44));
              if (vuzp1_s16(v46, *v33.i8).u8[0])
              {
                *(v42 - 2) = v34;
              }

              if (vuzp1_s16(v46, *&v33).i8[2])
              {
                *(v42 - 1) = v34;
              }

              if (vuzp1_s16(*&v33, vmovn_s64(vcgeq_u64(v33, *&v45))).i32[1])
              {
                *v42 = v34;
                v42[1] = v34;
              }

              v45 = vaddq_s64(v45, v41);
              v44 = vaddq_s64(v44, v41);
              v42 += 4;
              v43 -= 4;
            }

            while (v43);
          }

          ++v36;
          v40 += v37;
        }

        while (v36 != v35);
      }

      v47 = DWORD1(v174);
      if (DWORD1(v174))
      {
        v48 = 0;
        *v33.i32 = 1.0 / (v34 + 0.001);
        v49 = v175;
        v50 = v174;
        v51 = vdupq_n_s64(v174 - 1);
        v52 = (v174 + 3) & 0x1FFFFFFFCLL;
        v53 = *(&v175 + 1) + 8;
        v54 = vdupq_n_s64(4uLL);
        do
        {
          if (v50)
          {
            v55 = v53;
            v56 = v52;
            v57 = xmmword_240C111D0;
            v58 = xmmword_240C111C0;
            do
            {
              v59 = vmovn_s64(vcgeq_u64(v51, v57));
              if (vuzp1_s16(v59, *v33.i8).u8[0])
              {
                *(v55 - 2) = v33.i32[0];
              }

              if (vuzp1_s16(v59, *&v33).i8[2])
              {
                *(v55 - 1) = v33.i32[0];
              }

              if (vuzp1_s16(*&v33, vmovn_s64(vcgeq_u64(v51, *&v58))).i32[1])
              {
                *v55 = v33.i32[0];
                v55[1] = v33.i32[0];
              }

              v58 = vaddq_s64(v58, v54);
              v57 = vaddq_s64(v57, v54);
              v55 += 4;
              v56 -= 4;
            }

            while (v56);
          }

          ++v48;
          v53 += v49;
        }

        while (v48 != v47);
      }

      sub_240B6A1A4(v160, v25, v34, 0.0);
      if (!*&v227[40])
      {
        v60 = *&v227[24];
        *&v227[24] = 0;
        if (v60)
        {
          atomic_fetch_add(&qword_27E519020, -*(v60 - 24));
          free(*(v60 - 32));
        }
      }
    }

    if (!*&v224[40])
    {
      v61 = *&v224[24];
      *&v224[24] = 0;
      if (v61)
      {
        atomic_fetch_add(&qword_27E519020, -*(v61 - 24));
        free(*(v61 - 32));
      }
    }

    if (!v26)
    {
LABEL_119:
      if (*(a1 + 425) != 1 || (v26 = sub_240C0F1B0(v193, a4, flt_240C848B8, a6), !v26))
      {
        if (v164)
        {
          sub_240B699B4(v224);
          *(a8 + 208) = *v224;
          v121 = *&v224[8];
          *&v224[8] = 0;
          sub_240B3ABD8((a8 + 216), v121);
          *(a8 + 224) = *&v224[16];
          memcpy((a8 + 240), &v224[32], 0x2B0uLL);
          sub_240B3CB68((a8 + 928));
          *(a8 + 928) = v225;
          *(a8 + 944) = v226;
          v226 = 0;
          v225 = 0u;
          *v227 = &v225;
          sub_240B3CBC8(v227);
          sub_240B38BD0(&v224[8]);
          if (*(v166 + 480) == 1)
          {
            v122 = *(a8 + 4580);
            v123 = *(a8 + 4584);
            v124 = *(a8 + 4588);
            memset(&v224[20], 0, 64);
            memset(&v224[88], 0, 64);
            memset(&v224[156], 0, 64);
            memset(&v224[224], 0, 108);
            memset(&v227[4], 0, 208);
            v228 = 0;
            *v224 = 6;
            *&v224[8] = 1;
            *&v224[16] = 1.0 / v122;
            *&v224[84] = 1.0 / v123;
            *&v224[152] = 1.0 / v124;
            *&v224[492] = *&v227[160];
            *&v224[508] = *&v227[176];
            *&v224[524] = *&v227[192];
            *&v224[540] = 0;
            *&v224[428] = *&v227[96];
            *&v224[444] = *&v227[112];
            *&v224[460] = *&v227[128];
            *&v224[476] = *&v227[144];
            *&v224[364] = *&v227[32];
            *&v224[380] = *&v227[48];
            *&v224[396] = *&v227[64];
            *&v224[412] = *&v227[80];
            *&v224[332] = *v227;
            *&v224[348] = *&v227[16];
            v224[552] = 0;
            sub_240BA1EF4(&v218, v224);
          }
        }

        sub_240B23590(v224, ((a4[3] >> 3) * (a4[2] >> 3) + 3) & 0xFFFFFFFC, 4u);
        v26 = *&v224[40];
        if (!*&v224[40])
        {
          v167 = (a8 + 152);
          v125 = *&v224[24];
          *&v224[24] = 0;
          v126 = *&v224[32];
          v180 = *v224;
          v127 = *(&v181 + 1);
          *&v181 = *&v224[16];
          *(&v181 + 1) = v125;
          if (v127)
          {
            atomic_fetch_add(&qword_27E519020, -*(v127 - 24));
            free(*(v127 - 32));
            v125 = *(&v181 + 1);
          }

          v128 = 0;
          *&v182[0] = v126;
          v129 = v180;
          v130 = v181;
          v131 = v125 + 4 * v180 - 16;
          v132 = 4;
          do
          {
            if (v129 >= 4)
            {
              v133 = (v131 + v128);
              *v133 = 0;
              v133[1] = 0;
            }

            v128 += v130;
            --v132;
          }

          while (v132);
          if (!*&v224[40])
          {
            v134 = *&v224[24];
            *&v224[24] = 0;
            if (v134)
            {
              atomic_fetch_add(&qword_27E519020, -*(v134 - 24));
              free(*(v134 - 32));
            }
          }

          v135 = v193;
          *&v184 = a8 + 208;
          if (*(v183 + 48) > 5)
          {
            v136 = 1;
          }

          else
          {
            v136 = 0x1FFFFF;
          }

          sub_240B69D34(a8 + 208, v136);
          *(&v184 + 1) = *(&v178 + 1);
          *&v185 = v178 >> 2;
          if (v174 && DWORD1(v174))
          {
            *(&v185 + 1) = *(&v175 + 1);
            *&v186 = v175 >> 2;
          }

          if (v171 && DWORD1(v171))
          {
            *(&v186 + 1) = *(&v172 + 1);
            *&v187 = v172 >> 2;
          }

          v137 = *(v135 + 2);
          v138 = *a4;
          v139 = v137 * a4[1];
          *(&v187 + 1) = *(v135 + 3) + v139 + 4 * *a4;
          v140 = *(v135 + 8) + v139 + 4 * v138;
          v141 = *(v135 + 13) + v139 + 4 * v138;
          *&v188 = v140;
          *(&v188 + 1) = v141;
          *&v189 = v137 >> 2;
          v142 = (*v183 + 0.13732) / 1.1373;
          *(&v189 + 2) = powf(v142, 0.33678) * 1.2;
          v190 = powf(v142, 0.50991) * 9.3089;
          *(&v189 + 3) = powf(v142, 0.36703) * 10.833;
          LOBYTE(v204) = 0;
          *v224 = &v204;
          *&v224[8] = a8 + 8;
          *&v224[16] = a8 + 4544;
          *&v224[24] = &v180;
          *&v224[32] = &v193;
          *&v224[40] = a4;
          *&v224[48] = a8 + 208;
          *&v224[56] = v165;
          *&v224[64] = &v183;
          *&v224[72] = a8 + 152;
          *&v224[80] = v192;
          *&v224[88] = a1;
          *&v224[96] = &v177;
          *&v224[104] = a8 + 1064;
          *&v224[112] = a8 + 952;
          *&v224[120] = a8 + 1024;
          v147 = ((*(a8 + 80) + 7) >> 3) * ((*(a8 + 72) + 7) >> 3);
          *v227 = &v183;
          *&v227[8] = v192;
          *&v227[16] = &v180;
          if (a6)
          {
            v148 = sub_240BAAED0(a6, v147, v227, v224, v143, v144, v145, v146);
          }

          else
          {
            *&v218 = 0;
            *(&v218 + 1) = &v218;
            v148 = sub_240BAAED0(&v218, v147, v227, v224, v143, v144, v145, v146);
          }

          v26 = v148;
          if (!v148)
          {
            v149 = atomic_load(&v204);
            if (v149)
            {
              v26 = 1;
            }

            else
            {
              sub_240B786F4(v167, v15);
              if ((v156 & 1) != 0 || (v26 = sub_240B79F5C(a1, a2, v193, &v177, a8, a5, a6, v15), !v26))
              {
                v26 = 0;
                if (*(a8 + 4592) <= 6)
                {
                  if (v164)
                  {
                    sub_240BA8880(v161, (a8 + 1024), v167, a8 + 1760);
                    v26 = 0;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_154:
  v150 = *(&v172 + 1);
  *(&v172 + 1) = 0;
  if (v150)
  {
    atomic_fetch_add(&qword_27E519020, -*(v150 - 24));
    free(*(v150 - 32));
  }

  v151 = *(&v175 + 1);
  *(&v175 + 1) = 0;
  if (v151)
  {
    atomic_fetch_add(&qword_27E519020, -*(v151 - 24));
    free(*(v151 - 32));
  }

  v152 = *(&v178 + 1);
  *(&v178 + 1) = 0;
  if (v152)
  {
    atomic_fetch_add(&qword_27E519020, -*(v152 - 24));
    free(*(v152 - 32));
  }

  sub_240B38BD0(v182 + 1);
  v153 = *(&v181 + 1);
  *(&v181 + 1) = 0;
  if (v153)
  {
    atomic_fetch_add(&qword_27E519020, -*(v153 - 24));
    free(*(v153 - 32));
  }

  sub_240B786A0(&v191[5]);
  sub_240B38BD0(&v191[1]);
  *v224 = v192;
  sub_240BAAF84(v224);
  if (v26)
  {
    return v26;
  }

  return sub_240B8565C(a1, v14, a4, a5, a6, a8, v10, v15);
}

void sub_240B9D1A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char *a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a26)
  {
    atomic_fetch_add(&qword_27E519020, -*(a26 - 24));
    free(*(a26 - 32));
  }

  if (a32)
  {
    atomic_fetch_add(&qword_27E519020, -*(a32 - 24));
    free(*(a32 - 32));
  }

  if (a38)
  {
    atomic_fetch_add(&qword_27E519020, -*(a38 - 24));
    free(*(a38 - 32));
  }

  sub_240B38BD0(&a46);
  if (a44)
  {
    atomic_fetch_add(&qword_27E519020, -*(a44 - 24));
    free(*(a44 - 32));
  }

  sub_240B786A0(&a66);
  sub_240B38BD0(&a65);
  a50 = &a67;
  sub_240BAAF84(&a50);
  _Unwind_Resume(a1);
}

void sub_240B9D414(uint64_t a1, void *a2)
{
  v3 = a1;
  v137[3] = *MEMORY[0x277D85DE8];
  if (*(a1 + 4592) <= 6)
  {
    v5 = *(a1 + 1024);
    v6 = HIDWORD(v5);
    if (HIDWORD(v5))
    {
      v7 = 0;
      LODWORD(v8) = 0;
      v9 = 0;
      v10 = *(a1 + 176);
      do
      {
        v11 = v10;
        v12 = v5;
        if (v5)
        {
          do
          {
            v13 = *v11++;
            v14 = v13 >> 1;
            LODWORD(v8) = (1 << byte_240C848C4[v14]) | v8;
            if (v14 - 18 >= 9)
            {
              v15 = 1 << byte_240C848C4[v14];
            }

            else
            {
              v15 = 0;
            }

            v9 = v15 | v9;
            --v12;
          }

          while (v12);
        }

        ++v7;
        v10 += *(v3 + 168);
      }

      while (v7 != HIDWORD(v5));
      v6 = v9 << 32;
      v8 = v8;
    }

    else
    {
      v8 = 0;
    }

    v16 = *(v3 + 156) >= 5u || *(v3 + 152) >= 5u;
    if (!v16)
    {
      v6 = 0;
    }

    v4 = v6 | v8;
  }

  else
  {
    v4 = 0x100000001;
  }

  sub_240B245C8((v3 + 5240), *(v3 + 4272));
  if (*(v3 + 4272))
  {
    v17 = 0;
    v104 = HIDWORD(v4);
    v105 = 0;
    v111 = v3;
    v118 = a2;
    v106 = v4;
    do
    {
      v18 = *(v3 + 4592);
      v108 = v17;
      v109 = *(*(v3 + 4224) + 8 * v17);
      v107 = *(v3 + 5240);
      v110 = *(v3 + 5232);
      v102 = *(v3 + 1568);
      v103 = *(v3 + 1560);
      sub_240B2B9C0(v136, 0x60300uLL);
      if (v104)
      {
        v19 = v18 > 2 && v104 == 1;
        v20 = v19;
        if (a2[14])
        {
          v21 = 0;
          v22 = 0xBF58476D1CE4E5B9;
          v23 = 0x94D049BB133111EBLL;
          v119 = v20;
          do
          {
            v25 = a2[9];
            v24 = a2[10];
            v26 = v21 / v24;
            v27 = 32 * (v21 / v24);
            v28 = a2[8];
            v114 = v27;
            v115 = 32 * (v21 % v24);
            v29 = v28 - v115;
            if (v28 < v115)
            {
              v29 = 0;
            }

            if (v115 + 32 <= v28)
            {
              v30 = 32;
            }

            else
            {
              v30 = v29;
            }

            v16 = v25 >= 32 * v26;
            v31 = v25 - 32 * v26;
            if (!v16)
            {
              v31 = 0;
            }

            if (v27 + 32 <= v25)
            {
              v32 = 32;
            }

            else
            {
              v32 = v31;
            }

            v116 = v32;
            v129 = (*(*v109 + 16))(v109);
            for (i = 0; i != 3; ++i)
            {
              v137[i] = (*(*v109 + 32))(v109, i, v21, 0);
            }

            if (v116)
            {
              v131 = 0;
              v117 = 0;
              v112 = *(v111 + 168);
              v113 = *(v111 + 176);
              v120 = v30;
              v121 = v21;
              do
              {
                if (v30)
                {
                  v34 = 0;
                  v35 = v113 + v112 * (v117 + v114) + v115;
                  do
                  {
                    v36 = *(v35 + v34);
                    if (v36)
                    {
                      v37 = (v22 >> 5) ^ ((v23 ^ (v23 << 23)) >> 18) ^ v22 ^ v23 ^ (v23 << 23);
                      if ((v22 + v23) < 0 && v20)
                      {
                        v23 = v22;
                      }

                      else
                      {
                        v125 = (v22 >> 5) ^ ((v23 ^ (v23 << 23)) >> 18) ^ v22 ^ v23 ^ (v23 << 23);
                        v127 = v34;
                        v39 = 0;
                        v40 = v36 >> 1;
                        v41 = 64 << byte_240C83828[v40];
                        v42 = 3 * byte_240C848C4[v40];
                        v43 = byte_240C87EA0[v40];
                        v44 = byte_240C87EBB[v40];
                        if (v44 >= v43)
                        {
                          v45 = v43;
                        }

                        else
                        {
                          v45 = v44;
                        }

                        if (v44 <= v43)
                        {
                          v46 = v43;
                        }

                        else
                        {
                          v46 = v44;
                        }

                        v47 = v136[0];
                        v123 = v41;
                        if (v41 <= 1)
                        {
                          v48 = 1;
                        }

                        else
                        {
                          v48 = v41;
                        }

                        do
                        {
                          v49 = qword_240C83970[v42 + v39];
                          v50 = v137[v39];
                          v51 = &v47[256 * v49];
                          if (v129)
                          {
                            v52 = (v50 + 4 * v131);
                            v53 = v48;
                            do
                            {
                              v54 = *v52++;
                              v55 = *v51;
                              if (!v54)
                              {
                                ++v55;
                              }

                              *v51 = v55;
                              v51 += 4;
                              --v53;
                            }

                            while (v53);
                          }

                          else
                          {
                            v56 = (v50 + 2 * v131);
                            v57 = v48;
                            do
                            {
                              v58 = *v56++;
                              v59 = *v51;
                              if (!v58)
                              {
                                ++v59;
                              }

                              *v51 = v59;
                              v51 += 4;
                              --v57;
                            }

                            while (v57);
                          }

                          if (v45)
                          {
                            v60 = v136[0] + 256 * v49;
                            v61 = v45;
                            do
                            {
                              if (v46)
                              {
                                memset(v60, 255, 4 * v46);
                              }

                              v60 += 32 * v46;
                              --v61;
                            }

                            while (v61);
                          }

                          ++v39;
                        }

                        while (v39 != 3);
                        v37 = v125;
                        v131 += v123;
                        v34 = v127;
                        v23 = v22;
                        a2 = v118;
                        v20 = v119;
                        v30 = v120;
                        v21 = v121;
                        v35 = v113 + v112 * (v117 + v114) + v115;
                      }
                    }

                    else
                    {
                      v37 = v22;
                    }

                    ++v34;
                    v22 = v37;
                  }

                  while (v34 != v30);
                }

                else
                {
                  v37 = v22;
                }

                v22 = v37;
                ++v117;
              }

              while (v117 != v116);
            }

            else
            {
              v37 = v22;
            }

            ++v21;
            v22 = v37;
          }

          while (v21 < a2[14]);
        }
      }

      atomic_fetch_add_explicit(&qword_27E5165E0, 1uLL, memory_order_relaxed);
      v62 = malloc_type_malloc(0x80100uLL, 0xF0EBF2FBuLL);
      LODWORD(v4) = v106;
      if (v62)
      {
        v63 = v62 & 0xFFFFFFFFFFFFFF80;
        v64 = (v62 & 0xFFFFFFFFFFFFFF80) + 256;
        *(v63 + 240) = v62;
        *(v63 + 248) = 0x80000;
      }

      else
      {
        v64 = 0;
      }

      v65 = 0;
      v66 = 0;
      v67 = 0;
      v68 = v102 + 4 * v103 * v108;
      v137[0] = v64;
      v137[1] = 0;
      v137[2] = 0;
      v133 = 0;
      v134 = 0;
      v135 = 0;
      v126 = v104;
      v3 = v111;
      do
      {
        v69 = byte_240C848C4[v66];
        v70 = 1 << v69;
        if (((1 << v69) & v67) == 0)
        {
          v67 |= (1 << v69);
          v71 = (v70 & v4) != 0 && (v70 & v110) == 0;
          if (v71 && (*(v107 + 4 * v108) & v70) == 0)
          {
            v124 = 1 << v69;
            v72 = (byte_240C87EA0[v66] * byte_240C87EBB[v66]) << 6;
            if (v72 > (v134 - v65) >> 2)
            {
              sub_240B245C8(&v133, (byte_240C87EA0[v66] * byte_240C87EBB[v66]) << 6);
              v65 = v133;
            }

            sub_240B220A4(v66, v65);
            if ((v124 & v126) == 0)
            {
              v99 = 0;
              v65 = v133;
              v100 = 4 * v72;
              v101 = &qword_240C83970[3 * v69];
              do
              {
                memcpy((v68 + (v101[v99++] << 8)), v65, v100);
              }

              while (v99 != 3);
              LODWORD(v4) = v106;
              goto LABEL_97;
            }

            v122 = v67;
            v73 = 0;
            v132 = 0;
            v74 = 3 * v69;
            v75 = 1.0 / sqrt(v72);
            v65 = v133;
            v130 = v133;
            v128 = 3 * v69;
            while (1)
            {
              v76 = v137[0];
              v77 = qword_240C83970[v74 + v73];
              if (v72)
              {
                v78 = v136[0] + 256 * v77;
                v79 = (v137[0] + 4);
                v80 = v72;
                do
                {
                  v81 = *v65;
                  v65 += 4;
                  *(v79 - 1) = v81;
                  *v79 = ((*&v78[4 * v81] * v75) + 0.1);
                  v79 += 2;
                  --v80;
                }

                while (v80);
                v82 = &v76[8 * v72];
                if (v72 >= 0x81)
                {
                  v83 = v68;
                  v84 = v72;
                  while (1)
                  {
                    v85 = operator new(8 * v84, MEMORY[0x277D826F0]);
                    if (v85)
                    {
                      break;
                    }

                    v86 = v84 >> 1;
                    v87 = v84 > 1;
                    v84 >>= 1;
                    if (!v87)
                    {
                      v3 = v111;
                      v74 = v128;
                      goto LABEL_113;
                    }
                  }

                  v97 = v85;
                  sub_240B8B638(v76, &v76[8 * v72], v72, v85, v84);
                  operator delete(v97);
                  v3 = v111;
                  v68 = v83;
                  v74 = v128;
                  goto LABEL_114;
                }

                v86 = 0;
              }

              else
              {
                v86 = 0;
                v82 = v137[0];
              }

LABEL_113:
              sub_240B8B638(v76, v82, v72, 0, v86);
LABEL_114:
              v65 = v130;
              if (v72)
              {
                v88 = v132;
                v89 = (v102 + v103 * v105 + (v77 << 8));
                v90 = (v76 + 64);
                v91 = v130;
                v92 = v72;
                do
                {
                  v93.i32[0] = *(v90 - 16);
                  v93.i32[1] = *(v90 - 14);
                  v93.i32[2] = *(v90 - 12);
                  v93.i32[3] = *(v90 - 10);
                  v94.i32[0] = *(v90 - 8);
                  v94.i32[1] = *(v90 - 6);
                  v94.i32[2] = *(v90 - 4);
                  v94.i32[3] = *(v90 - 2);
                  v95.i32[0] = *v90;
                  v95.i32[1] = v90[2];
                  v95.i32[2] = v90[4];
                  v95.i32[3] = v90[6];
                  v96.i32[0] = v90[8];
                  v96.i32[1] = v90[10];
                  v96.i32[2] = v90[12];
                  v96.i32[3] = v90[14];
                  v89[2] = v95;
                  v89[3] = v96;
                  *v89 = v93;
                  v89[1] = v94;
                  v89 += 4;
                  v88 = vornq_s8(v88, vuzp1q_s8(vuzp1q_s16(vceqq_s32(*v91, v93), vceqq_s32(v91[1], v94)), vuzp1q_s16(vceqq_s32(v91[2], v95), vceqq_s32(v91[3], v96))));
                  v91 += 4;
                  v90 += 32;
                  v92 -= 16;
                }

                while (v92);
                v132 = vmaxvq_u8(vcltzq_s8(vshlq_n_s8(v88, 7uLL))) & 1;
              }

              if (++v73 == 3)
              {
                if (v132)
                {
                  v98 = -1;
                }

                else
                {
                  v98 = ~v124;
                }

                v126 &= v98;
                LODWORD(v4) = v106;
                v67 = v122;
                break;
              }
            }
          }
        }

LABEL_97:
        ++v66;
      }

      while (v66 != 27);
      *(v107 + 4 * v108) |= v126;
      if (v65)
      {
        v134 = v65;
        operator delete(v65);
      }

      sub_240B8B5E4(v137);
      if (v136[0])
      {
        v136[1] = v136[0];
        operator delete(v136[0]);
      }

      v17 = v108 + 1;
      v105 += 4;
    }

    while ((v108 + 1) < *(v3 + 4272));
  }

  *(v3 + 5232) |= v4;
}

void sub_240B9DD4C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 176);
  if (v3)
  {
    *(v1 - 168) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_240B9DD94(char **a1, uint64_t a2, uint64_t a3)
{
  v12 = a3;
  memset(v11, 0, sizeof(v11));
  v10 = v11;
  v9 = 0;
  v8[0] = &v9;
  v8[1] = a3;
  v8[2] = &v12;
  v8[3] = v11;
  v8[4] = a1;
  v3 = *(a3 + 120);
  if (a2)
  {
    v4 = sub_240BA0F44(a2, v3, &v10, v8);
  }

  else
  {
    v13[0] = 0;
    v13[1] = v13;
    v4 = sub_240BA0F44(v13, v3, &v10, v8);
  }

  v5 = v4;
  if (!v4)
  {
    v6 = atomic_load(&v9);
    v5 = v6 & 1;
  }

  sub_240BA0FF8(v11);
  return v5;
}

void sub_240B9DE40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_240BA0FF8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_240B9DE54(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unint64_t **a5, char **a6)
{
  v7 = a2;
  v118 = *MEMORY[0x277D85DE8];
  v8 = a2 + 4096;
  v100 = a3;
  v101 = a2;
  v9 = *(a2 + 4272);
  v98 = v9;
  v99 = a5;
  v10 = *(a2 + 120);
  v11 = *(a2 + 128);
  v86 = v11;
  v87 = v10;
  if ((*(a2 + 4208) & 1) != 0 || v10 != 1)
  {
    v97 = 0;
  }

  else
  {
    v97 = v9 == 1;
    if (v9 == 1)
    {
      goto LABEL_7;
    }
  }

  v9 = v11 + v9 * v10 + 2;
LABEL_7:
  v12 = *a5;
  v13 = a5[1];
  v14 = 0xCCCCCCCCCCCCCCCDLL * ((v13 - *a5) >> 3);
  v15 = v9 - v14;
  if (v9 <= v14)
  {
    if (v9 < v14)
    {
      for (i = &v12[5 * v9]; v13 != i; v13 -= 5)
      {
        sub_240B22320(v13 - 2);
      }

      a5[1] = i;
    }
  }

  else
  {
    v16 = a5[2];
    if (0xCCCCCCCCCCCCCCCDLL * ((v16 - v13) >> 3) < v15)
    {
      if (v9 <= 0x666666666666666)
      {
        v106 = a5;
        v17 = 0xCCCCCCCCCCCCCCCDLL * (v16 - v12);
        if (2 * v17 > v9)
        {
          v9 = 2 * v17;
        }

        if (v17 >= 0x333333333333333)
        {
          v18 = 0x666666666666666;
        }

        else
        {
          v18 = v9;
        }

        sub_240B839AC(v18);
      }

      sub_240B228BC();
    }

    bzero(v13, 40 * ((40 * v15 - 40) / 0x28) + 40);
    a5[1] = &v13[5 * ((40 * v15 - 40) / 0x28) + 5];
  }

  v95 = &v99;
  v96 = &v97;
  v94[0] = &v95;
  v94[1] = v7 + 8;
  if (*(v8 + 113) != 1)
  {
    goto LABEL_44;
  }

  v20 = *(a1 + 24);
  if ((v20 & 2) != 0)
  {
    sub_240B8C03C(&v116);
  }

  v21 = &v99;
  if ((v20 & 0x10) != 0)
  {
    v111 = xmmword_240C117D0;
    v113 = 0;
    v114 = 0;
    v112 = 0;
    v115 = xmmword_240C117E0;
    BYTE9(v115) = 1;
    BYTE11(v115) = 0;
    sub_240B8C03C(&v116);
  }

  if (v20)
  {
    v22 = *v99;
    sub_240B53650(v105, *v99, 128);
    v23 = 0;
    v24 = *v22;
    do
    {
      *(v22[3] + (v24 >> 3)) = (llroundf(*(v7 + 1224 + v23) * 1024.0) << (v24 & 7)) | *(v22[3] + (v24 >> 3));
      v24 = *v22 + 10;
      *v22 = v24;
      v23 += 4;
    }

    while (v23 != 32);
    sub_240B536C8(v105, v22, 4, a6);
    v21 = v95;
  }

  v25 = sub_240BC0AC0(v7 + 208, **v21, 5, a6);
  if (!v25)
  {
    if (!*(a1 + 12))
    {
      v56 = **v95;
      *&v111 = &unk_2852A1B18;
      *&v105[0] = &unk_2852A2120;
      *(v105 + 8) = xmmword_240C112C0;
      *(&v105[1] + 1) = 0;
      sub_240B6A048(&v111, v105);
      *(&v111 + 1) = *(v7 + 984);
      v25 = sub_240C0EB88(&v111, v56, 5, a6);
      if (v25)
      {
        return v25;
      }

      sub_240B53650(v105, v56, 10 * (*(v7 + 1864) - *(v7 + 1856)) + 34 * (((*(v7 + 1792) - *(v7 + 1784)) >> 2) + ((*(v7 + 1768) - *(v7 + 1760)) >> 2) + ((*(v7 + 1816) - *(v7 + 1808)) >> 2) + ((*(v7 + 1840) - *(v7 + 1832)) >> 2)) + 1033);
      if (*(v7 + 1760) == *(v7 + 1768) && *(v7 + 1784) == *(v7 + 1792) && *(v7 + 1808) == *(v7 + 1816) && *(v7 + 1832) == *(v7 + 1840) && (v57 = *(v7 + 1856), *(v7 + 1864) - v57 == 21) && ((v58 = *v57, v59 = v57[1], v60 = *(v57 + 13), v58 == 0x504030302020100) ? (v61 = v59 == 0x908070606060606) : (v61 = 0), v61 ? (v62 = v60 == 0xD0C0B0A09090807) : (v62 = 0), v62))
      {
        *(v56[3] + (*v56 >> 3)) = (1 << (*v56 & 7)) | *(v56[3] + (*v56 >> 3));
        ++*v56;
        v77 = a6;
      }

      else
      {
        v63 = 0;
        *(v56[3] + (*v56 >> 3)) = *(v56[3] + (*v56 >> 3));
        ++*v56;
        v116 = 0x100000000;
        LODWORD(v117) = 2;
        do
        {
          v64 = (v7 + 1760 + 24 * *(&v116 + v63));
          *(v56[3] + (*v56 >> 3)) = ((v64[1] - *v64) << (*v56 & 7)) | *(v56[3] + (*v56 >> 3));
          *v56 += 4;
          v65 = *v64;
          v66 = v64[1];
          while (v65 != v66)
          {
            v67 = *v65++;
            sub_240C0F0B8(0x20700000003, 0x20221F0000220FLL, (2 * v67) ^ (v67 >> 31), v56);
          }

          v63 += 4;
        }

        while (v63 != 12);
        v7 = a2;
        *(v56[3] + (*v56 >> 3)) = ((*(a2 + 1840) - *(a2 + 1832)) >> 2 << (*v56 & 7)) | *(v56[3] + (*v56 >> 3));
        *v56 += 4;
        v68 = *(a2 + 1832);
        v69 = *(a2 + 1840);
        while (v68 != v69)
        {
          v70 = *v68++;
          sub_240C0F0B8(0x8200000001, 0x58700000184, v70 - 1, v56);
        }

        v77 = a6;
        sub_240B8D74C((a2 + 1856), *(a2 + 1880), v56, 12, a6);
      }

      sub_240B536C8(v105, v56, 12, v77);
      v78 = *(v7 + 1200);
      v79 = *(v7 + 1208);
      v80 = *(v7 + 1212);
      v81 = *(v7 + 1216);
      v82 = *(v7 + 1220);
      sub_240B53650(v105, v56, 61);
      v83 = *v56;
      if (!v81 && !v82 && v78 == 84 && v79 == 0.0 && v80 == 1.0)
      {
        v84 = 1;
        v85 = 1;
      }

      else
      {
        *(v56[3] + (v83 >> 3)) = *(v56[3] + (v83 >> 3));
        ++*v56;
        sub_240C0F0B8(0x8000010080000054, 0x204F00000047, v78, v56);
        sub_240C0EF60(v56, v79);
        sub_240C0EF60(v56, v80);
        *(v56[3] + (*v56 >> 3)) = ((v81 + 128) << (*v56 & 7)) | *(v56[3] + (*v56 >> 3));
        v83 = *v56 + 8;
        *v56 = v83;
        v85 = v82 + 128;
        v84 = 8;
      }

      *(v56[3] + (v83 >> 3)) = (v85 << (v83 & 7)) | *(v56[3] + (v83 >> 3));
      *v56 += v84;
      sub_240B536C8(v105, v56, 8, a6);
    }

    v26 = v100;
    v27 = *(v101 + 4208);
    v28 = **v95;
    v29 = sub_240B53650(&v116, v28, 1);
    v30 = v26[18];
    if (v30 == v26[19] || *v30 == v30[1])
    {
      *(v28[3] + (*v28 >> 3)) = *(v28[3] + (*v28 >> 3));
      ++*v28;
      v31 = a6;
      sub_240B536C8(v29, v28, 6, a6);
    }

    else
    {
      *(v28[3] + (*v28 >> 3)) = (1 << (*v28 & 7)) | *(v28[3] + (*v28 >> 3));
      ++*v28;
      sub_240B536C8(v29, v28, 6, a6);
      sub_240B8464C(&v111, (v26 + 64), v26[3], v26[4], v27);
      memset(v105, 0, 24);
      v107 = 0;
      v108 = 0;
      v106 = 0;
      sub_240B2BCB4(&v109);
      memset(v110, 0, sizeof(v110));
      __p = 0;
      v103 = 0;
      v104 = 0;
      sub_240B7DFCC(&v111, 6uLL, v26 + 18, v105, &__p, v28, 6, a6);
      sub_240B84584(v26[18], v105, &__p, 0, v28, 6, a6);
      if (__p)
      {
        operator delete(__p);
      }

      __p = v110;
      sub_240B30C38(&__p);
      if (v106)
      {
        v107 = v106;
        operator delete(v106);
      }

      __p = v105;
      sub_240B7BC3C(&__p);
      BYTE10(v115) = v27;
      BYTE11(v115) = v27;
      sub_240BA2C68(&v112, v26[150], v26[151], (v26[151] - v26[150]) >> 3);
      sub_240B7DFCC(&v111, (0xCCCCCCCCCCCCCCCDLL * ((v26[16] - v26[15]) >> 3) + 1) >> 1, v26 + 24, v26 + 27, (v26 + 43), v28, 7, a6);
      if (v112)
      {
        operator delete(v112);
      }

      v31 = a6;
    }

    v32 = **v95;
    memset(v105, 0, sizeof(v105));
    v25 = sub_240BB6D54(v100, v32, v31, 7, v105);
    if (!v25)
    {
LABEL_44:
      __p = 0;
      v103 = 0;
      v104 = 0;
      v93[0] = &__p;
      v93[1] = a6;
      *&v111 = &__p;
      *(&v111 + 1) = &v95;
      v112 = &v101;
      v113 = a1;
      v114 = &v100;
      v33 = *(v7 + 128);
      if (a4)
      {
        v34 = sub_240BA04B8(a4, v33, v93, &v111);
      }

      else
      {
        *&v105[0] = 0;
        *(&v105[0] + 1) = v105;
        v34 = sub_240BA04B8(v105, v33, v93, &v111);
      }

      v25 = v34;
      if (v34)
      {
        goto LABEL_121;
      }

      if (!*(a1 + 12))
      {
        v36 = v86 + 1;
        v37 = v101;
        if (*v96)
        {
          v36 = 0;
        }

        v38 = &(**v95)[5 * v36];
        v25 = sub_240BC0330(v101 + 208, v38, 5, a6, v100);
        if (v25)
        {
          goto LABEL_121;
        }

        v39 = *(v37 + 120);
        v40 = __clz(v39) ^ 0x3F;
        if ((v39 & (v39 - 1)) != 0)
        {
          v41 = v40 + 1;
        }

        else
        {
          v41 = v40;
        }

        if ((*(v37 + 4208) & 1) == 0 && v41)
        {
          sub_240B53650(v105, v38, v41);
          *(v38[3] + (*v38 >> 3)) = ((*(v37 + 4200) - 1) << (*v38 & 7)) | *(v38[3] + (*v38 >> 3));
          *v38 += v41;
          sub_240B536C8(v105, v38, 12, a6);
        }

        if (*(v37 + 4272))
        {
          v42 = 0;
          v43 = 0;
          while (1)
          {
            if ((*(v37 + 4208) & 1) == 0)
            {
              v44 = *(*(v37 + 5240) + 4 * v43);
              *&v105[0] = 0;
              if (!sub_240B545F8(0x800000138000005FLL, 0xC80000000, v44, &v116, v105))
              {
                sub_240B53650(v105, v38, *&v105[0]);
                sub_240C0F0B8(0x800000138000005FLL, 0xC80000000, *(*(v37 + 5240) + 4 * v43), v38);
                sub_240B536C8(v105, v38, 11, a6);
                sub_240B8C480(*(*(v37 + 5240) + 4 * v43), *(v37 + 1568) + 4 * *(v37 + 1560) * v43, v38, a6);
              }

LABEL_114:
              v25 = 1;
              goto LABEL_121;
            }

            v45 = *(v37 + 4592);
            v46 = *(v37 + 1880);
            *(v105 + 4) = 0x100000004;
            HIDWORD(v105[0]) = 2;
            v106 = 0;
            v105[1] = 0uLL;
            v107 = -1;
            LOBYTE(v108) = 0;
            *(&v108 + 3) = 0;
            if (v45 >= 8)
            {
              break;
            }

            if (v45 < 2)
            {
              LODWORD(v105[0]) = 2;
              goto LABEL_73;
            }

            *&v105[0] = 1;
            if (v45 != 2)
            {
              goto LABEL_67;
            }

LABEL_68:
            DWORD2(v105[0]) = 0;
LABEL_73:
            if (*(v37 + 4600))
            {
              v107 = 6;
              v47 = 6;
            }

            else
            {
              v47 = -1;
            }

            v48 = *(v37 + 4208);
            v49 = *(v37 + 4209);
            v50 = *(v37 + 5184);
            if (v48 == 1)
            {
              v51 = 0xAAAAAAAAAAAAAAABLL * ((*(v50 + v42 + 56) - *(v50 + v42 + 48)) >> 3);
              if (*(v37 + 4209))
              {
                ++v51;
                BYTE4(v108) = 1;
              }

              v52 = 128 - v51;
              v53 = 4;
              if (v52 < 4)
              {
                v53 = v52;
              }

              if (v52 >= 0x14)
              {
                v54 = v52 >> 2;
              }

              else
              {
                v54 = v53;
              }

              if (v47 >= v54)
              {
                v47 = v54;
              }

              v107 = v47;
              v55 = 1;
            }

            else
            {
              v55 = *(v37 + 4200);
            }

            BYTE2(v108) = v48;
            BYTE1(v108) = v49;
            sub_240B7DFCC(v105, v55 * (495 * v46), (v50 + v42), (v50 + v42 + 48), v50 + v42 + 24, v38, 12, a6);
            ++v43;
            v42 += 176;
            if (v43 >= *(v37 + 4272))
            {
              goto LABEL_49;
            }
          }

          *&v105[0] = 0;
LABEL_67:
          HIDWORD(v105[0]) = 1;
          goto LABEL_68;
        }
      }

LABEL_49:
      v92 = 0;
      *&v105[0] = &v92;
      *(&v105[0] + 1) = &__p;
      *&v105[1] = &v101;
      *(&v105[1] + 1) = &v100;
      v106 = a2;
      v107 = &v98;
      v108 = a1;
      v109 = v94;
      if (a4)
      {
        v35 = sub_240BA056C(a4, v87, v93, v105);
      }

      else
      {
        v116 = 0;
        v117 = &v116;
        v35 = sub_240BA056C(&v116, v87, v93, v105);
      }

      v25 = v35;
      if (!v35)
      {
        v71 = atomic_load(&v92);
        if (v71)
        {
          goto LABEL_114;
        }

        sub_240BA0620(v93, 0);
        v73 = *v99;
        v72 = v99[1];
        while (v73 != v72)
        {
          v74 = sub_240B53650(&v116, v73, 8);
          v75 = ((*v73 + 7) & 0xFFFFFFFFFFFFFFF8) - *v73;
          if (v75)
          {
            *(v73[3] + (*v73 >> 3)) = *(v73[3] + (*v73 >> 3));
            *v73 += v75;
          }

          sub_240B536C8(v74, v73, 12, a6);
          v73 += 5;
        }

        v25 = 0;
      }

LABEL_121:
      *&v105[0] = &__p;
      sub_240BA08EC(v105);
    }
  }

  return v25;
}

void sub_240BA02F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void **p_p)
{
  p_p = &__p;
  sub_240BA08EC((v53 - 224));
  _Unwind_Resume(a1);
}

BOOL sub_240BA04B8(uint64_t a1, uint64_t a2, char ***a3, uint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  v4 = a2;
  v7[0] = a3;
  v7[1] = a4;
  if (*a1)
  {
    return (*a1)(*(a1 + 8), v7, sub_240BA0F24, sub_240BA0CAC, 0, a2) != 0;
  }

  sub_240BA0620(a3, 1uLL);
  for (i = 0; i != v4; ++i)
  {
    sub_240BA0CAC(v7, i, 0);
  }

  return 0;
}

BOOL sub_240BA056C(uint64_t a1, uint64_t a2, char ***a3, uint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  v4 = a2;
  v7[0] = a3;
  v7[1] = a4;
  if (*a1)
  {
    return (*a1)(*(a1 + 8), v7, sub_240BA0C8C, sub_240BA0A20, 0, a2) != 0;
  }

  sub_240BA0620(a3, 1uLL);
  for (i = 0; i != v4; ++i)
  {
    sub_240BA0A20(v7, i, 0);
  }

  return 0;
}

void sub_240BA0620(char ***a1, unint64_t a2)
{
  v3 = *a1;
  v4 = **a1;
  v5 = (*a1)[1];
  v6 = &v5[-v4] >> 3;
  if (a1[1])
  {
    for (; v6 > a2; v6 = (v5 - **a1) >> 3)
    {
      sub_240C0DCF8(a1[1], *(v5 - 1));
      sub_240BA0940(*a1, (*a1)[1] - 1);
      v5 = (*a1)[1];
    }

    if (v6 < a2)
    {
      operator new();
    }
  }

  else
  {
    v8 = a2 - v6;
    if (a2 <= v6)
    {
      if (a2 < v6)
      {
        v13 = (v4 + 8 * a2);
        v14 = *a1;

        sub_240BA0940(v14, v13);
      }
    }

    else
    {
      v9 = v3[2];
      if (v8 > (v9 - v5) >> 3)
      {
        if (!(a2 >> 61))
        {
          v10 = v9 - v4;
          v11 = v10 >> 2;
          if (v10 >> 2 <= a2)
          {
            v11 = a2;
          }

          if (v10 >= 0x7FFFFFFFFFFFFFF8)
          {
            v12 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v12 = v11;
          }

          sub_240B7BF5C(v12);
        }

        sub_240B228BC();
      }

      bzero((*a1)[1], 8 * v8);
      v3[1] = &v5[8 * v8];
    }
  }
}

void sub_240BA08EC(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_240BA0940(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t sub_240BA0940(uint64_t result, void *a2)
{
  v3 = result;
  v4 = *(result + 8);
  while (v4 != a2)
  {
    v5 = *--v4;
    result = v5;
    *v4 = 0;
    if (v5)
    {
      result = MEMORY[0x245CCE590](result, 0x1000C40BB8981BBLL);
    }
  }

  *(v3 + 8) = a2;
  return result;
}

uint64_t sub_240BA09A8(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v5 = *--v2;
    v4 = v5;
    *(a1 + 16) = v2;
    *v2 = 0;
    if (v5)
    {
      MEMORY[0x245CCE590](v4, 0x1000C40BB8981BBLL);
      v2 = *(a1 + 16);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_240BA0A20(uint64_t result, unsigned int a2, uint64_t a3)
{
  v3 = *(result + 8);
  v4 = atomic_load(*v3);
  if ((v4 & 1) == 0)
  {
    v5 = **(v3 + 16);
    v6 = *(v5 + 4208) == 1 ? a2 % *(*(v3 + 32) + 88) + 8 * (*(v5 + 4216) % *(**(v3 + 24) + 464)) + (a2 / *(*(v3 + 32) + 88) + 8 * (*(v5 + 4216) / *(**(v3 + 24) + 464))) * *(**(v3 + 24) + 448) : a2;
    if (**(v3 + 40))
    {
      v7 = 0;
      v8 = 0;
      v9 = *(**(v3 + 8) + 8 * a3);
      v10 = a2;
      v11 = a2 + 2;
      v27 = v6;
      while (1)
      {
        if (!*(*(v3 + 48) + 12))
        {
          v12 = **(v3 + 16);
          v13 = v10;
          v14 = *(*(v12 + 5208) + 8 * v10);
          v15 = *(v3 + 56);
          v16 = *v15;
          v17 = *(v15[1] + 120) + v11 + *(v15[1] + 112) * v8;
          if (**(v16 + 8))
          {
            v17 = 0;
          }

          v18 = (***v16 + 40 * v17);
          v19 = *(v12 + 4200);
          v20 = __clz(v19) ^ 0x3F;
          if ((v19 & (v19 - 1)) != 0)
          {
            v21 = v20 + 1;
          }

          else
          {
            v21 = v20;
          }

          if (v21)
          {
            sub_240B53650(&v28, v18, v21);
            *(v18[3] + (*v18 >> 3)) = (v14 << (*v18 & 7)) | *(v18[3] + (*v18 >> 3));
            *v18 += v21;
            sub_240B536C8(&v28, v18, 12, v9);
          }

          v10 = v13;
          sub_240B84584(*(*(v12 + 5184) + v7) + 24 * v13, *(v12 + 5184) + v7 + 48, (*(v12 + 5184) + v7 + 24), (495 * *(v12 + 1880)) * v14, v18, 13, v9);
          v6 = v27;
        }

        v22 = **(v3 + 24);
        v23 = *(v3 + 56);
        v24 = *v23;
        v25 = *(v23[1] + 120) + v11 + *(v23[1] + 112) * v8;
        if (**(v24 + 8))
        {
          v25 = 0;
        }

        v26 = (***v24 + 40 * v25);
        v28 = 5;
        v29 = 0;
        v30 = v6;
        v31 = v8;
        result = sub_240BB6D54(v22, v26, v9, 14, &v28);
        if (result)
        {
          break;
        }

        ++v8;
        v7 += 176;
        if (v8 >= **(v3 + 40))
        {
          return result;
        }
      }

      atomic_store(1u, *v3);
    }
  }

  return result;
}

uint64_t sub_240BA0CAC(uint64_t a1, signed int a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  v5 = *(v4 + 8);
  v6 = *(**v4 + 8 * a3);
  v7 = a2 + 1;
  if (**(v5 + 8))
  {
    v7 = 0;
  }

  v8 = (***v5 + 40 * v7);
  v9 = **(v4 + 16);
  v10 = a2;
  if (*(v9 + 4208) == 1)
  {
    v10 = *(v9 + 4216);
  }

  v11 = *(v4 + 24);
  if (!*(v11 + 12) && (*(v11 + 24) & 0x20) == 0)
  {
    sub_240B53650(&v38, v8, 2);
    *(v8[3] + (*v8 >> 3)) = (*(*(**(v4 + 32) + 24) + v10) << (*v8 & 7)) | *(v8[3] + (*v8 >> 3));
    *v8 += 2;
    sub_240B536C8(&v38, v8, 8, v6);
    v12 = **(v4 + 32);
    v34 = 1;
    v35 = 0;
    v36 = v10;
    v37 = 0;
    sub_240BB6D54(v12, v8, v6, 8, &v34);
  }

  v13 = **(v4 + 32);
  v38 = 2;
  v39 = 0;
  v40 = v10;
  v41 = 0;
  result = sub_240BB6D54(v13, v8, v6, 9, &v38);
  if (!*(*(v4 + 24) + 12))
  {
    v15 = **(v4 + 16);
    v16 = v15[13];
    v17 = a2 / v16;
    v18 = a2 % v16;
    v19 = v15[17];
    v20 = v19 * v18;
    v21 = v19 * v17;
    v23 = v15[9];
    v22 = v15[10];
    v24 = v20 + v19;
    v25 = v23 >= v20;
    v26 = v23 - v20;
    if (!v25)
    {
      v26 = 0;
    }

    if (v24 <= v23)
    {
      v26 = v19;
    }

    v27 = v21 + v19;
    v25 = v22 >= v21;
    v28 = v22 - v21;
    if (!v25)
    {
      v28 = 0;
    }

    if (v27 <= v22)
    {
      v29 = v19;
    }

    else
    {
      v29 = v28;
    }

    v30 = v26 * v29;
    v31 = __clz(v30) ^ 0x3F;
    if ((v30 & (v30 - 1)) != 0)
    {
      v32 = v31 + 1;
    }

    else
    {
      v32 = v31;
    }

    if (v32)
    {
      sub_240B53650(&v38, v8, v32);
      *(v8[3] + (*v8 >> 3)) = ((*(***(v4 + 32) + 8 * v10) - 1) << (*v8 & 7)) | *(v8[3] + (*v8 >> 3));
      *v8 += v32;
      sub_240B536C8(&v38, v8, 10, v6);
    }

    v33 = **(v4 + 32);
    v38 = 3;
    v39 = 0;
    v40 = v10;
    v41 = 0;
    return sub_240BB6D54(v33, v8, v6, 10, &v38);
  }

  return result;
}

BOOL sub_240BA0F44(uint64_t a1, uint64_t a2, char ***a3, char ***a4)
{
  if (!a2)
  {
    return 0;
  }

  v4 = a2;
  v7[0] = a3;
  v7[1] = a4;
  if (*a1)
  {
    return (*a1)(*(a1 + 8), v7, sub_240BA106C, sub_240BA1278, 0, a2) != 0;
  }

  sub_240BA106C(v7, 1uLL);
  for (i = 0; i != v4; ++i)
  {
    sub_240BA1278(v7, i, 0);
  }

  return 0;
}

char **sub_240BA0FF8(char **a1)
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
        for (i = -16; i != -136; i -= 40)
        {
          sub_240B22320(&v3[i]);
        }

        v3 -= 120;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_240BA106C(char ****a1, unint64_t a2)
{
  v2 = **a1;
  v3 = *v2;
  v4 = v2[1];
  v5 = 0xEEEEEEEEEEEEEEEFLL * ((v4 - *v2) >> 3);
  v6 = a2 - v5;
  if (a2 <= v5)
  {
    if (a2 < v5)
    {
      v11 = v3 + 120 * a2;
      while (v4 != v11)
      {
        for (i = -16; i != -136; i -= 40)
        {
          sub_240B22320((v4 + i));
        }

        v4 -= 120;
      }

      v2[1] = v11;
    }
  }

  else
  {
    v7 = v2[2];
    if (0xEEEEEEEEEEEEEEEFLL * ((v7 - v4) >> 3) < v6)
    {
      if (a2 <= 0x222222222222222)
      {
        v8 = 0xEEEEEEEEEEEEEEEFLL * ((v7 - v3) >> 3);
        v9 = 2 * v8;
        if (2 * v8 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x111111111111111)
        {
          v10 = 0x222222222222222;
        }

        else
        {
          v10 = v9;
        }

        if (v10 <= 0x222222222222222)
        {
          operator new();
        }

        sub_240B2291C();
      }

      sub_240B228BC();
    }

    bzero(v2[1], 120 * ((120 * v6 - 120) / 0x78) + 120);
    v2[1] = v4 + 120 * ((120 * v6 - 120) / 0x78) + 120;
  }

  return 0;
}

void sub_240BA1278(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v195[128] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 8);
  v4 = atomic_load(*v3);
  if ((v4 & 1) == 0)
  {
    v5 = *(v3 + 8);
    v6 = *(v3 + 16);
    v7 = v5[11];
    v8 = a2 / v7;
    v140 = a2;
    v9 = v5[17];
    v10 = (v9 >> 3) * (a2 % v7);
    v12 = v5[9];
    v11 = v5[10];
    v13 = v10 + (v9 >> 3);
    v143 = v10;
    v14 = v12 >= v10;
    v15 = v12 - v10;
    if (!v14)
    {
      v15 = 0;
    }

    v16 = (v9 >> 3) * v8;
    if (v13 <= v12)
    {
      v17 = v9 >> 3;
    }

    else
    {
      v17 = v15;
    }

    v150 = v17;
    v18 = v16 + (v9 >> 3);
    v142 = v16;
    v14 = v11 >= v16;
    v19 = v11 - v16;
    if (!v14)
    {
      v19 = 0;
    }

    v20 = v18 <= v11 ? v9 >> 3 : v19;
    v148 = v20;
    v21 = *v6;
    if (*(*v6 + 5192) != *(*v6 + 5184))
    {
      v138 = 0;
      v22 = 0;
      v139 = *(a1 + 8);
      do
      {
        v141 = v22;
        v23 = *(v21[528] + 8 * v22);
        v183[0] = (*(*v23 + 24))(v23, 0, v140, 0);
        v24 = *(*(**(v139 + 16) + 4224) + 8 * v141);
        v183[1] = (*(*v24 + 24))(v24, 1, v140, 0);
        v25 = *(*(**(v139 + 16) + 4224) + 8 * v141);
        v183[2] = (*(*v25 + 24))(v25, 2, v140, 0);
        v26 = v139;
        v27 = **(v139 + 24);
        v28 = (v27 + 120 * a3);
        if (!*v28)
        {
          sub_240B3A99C(v191, 32, 32);
          if (v194)
          {
            atomic_store(1u, *v139);
            return;
          }

          sub_240B2A358(v184, v191);
          sub_240B30D80(v28, v184);
          v29 = 13;
          v26 = v139;
          do
          {
            sub_240B22320(&v184[v29]);
            v29 -= 5;
          }

          while (v29 != -2);
          if (!v194)
          {
            v30 = -120;
            v31 = &v193;
            do
            {
              sub_240B22320(v31);
              v31 -= 5;
              v30 += 40;
            }

            while (v30);
          }

          v27 = **(v139 + 24);
        }

        v33 = *(v26 + 8);
        v32 = *(v26 + 16);
        v34 = v26;
        v35 = *(v33 + 1560);
        v168 = v33;
        v36 = *(v33 + 1568);
        v165 = *(v34 + 32);
        v37 = (*(*(*v32 + 5184) + 176 * v141) + 24 * v140);
        v37[1] = *v37;
        v177 = v37;
        sub_240B49544(v37, 192 * v150 * v148);
        memset(v184, 0, 24);
        if (v148)
        {
          v38 = 0;
          v39 = (v27 + 120 * a3);
          v146 = v39[3];
          v147 = v39[2];
          v40 = v165 + 48;
          v144 = v39[13];
          v145 = v39[8];
          v153 = v36 + v35 * v138;
          do
          {
            v41 = v165;
            v42 = *(v165 + 61);
            v43 = v38 >> (v42 - byte_240C85338[*(v165 + 48)]);
            v44 = v38 >> (v42 - byte_240C85338[*(v165 + 52)]);
            v190[0] = v43;
            v190[1] = v44;
            v45 = v38 >> (v42 - byte_240C85338[*(v165 + 56)]);
            v190[2] = v45;
            v189[0] = v146 + v43 * v147;
            v189[1] = v145 + v44 * v147;
            v189[2] = v144 + v45 * v147;
            if (v43)
            {
              v46 = v146 + (v43 - 1) * v147;
            }

            else
            {
              v46 = 0;
            }

            if (v44)
            {
              v47 = v145 + (v44 - 1) * v147;
            }

            else
            {
              v47 = 0;
            }

            v188[0] = v46;
            v188[1] = v47;
            v48 = v144 + (v45 - 1) * v147;
            if (!v45)
            {
              v48 = 0;
            }

            v188[2] = v48;
            if (v150)
            {
              v49 = 0;
              v164 = *(v168 + 1616) + *(v168 + 1608) * (v142 + v38) + v143;
              v162 = v38;
              v163 = *(v168 + 1048) + *(v168 + 1040) * (v142 + v38) + 4 * v143;
              v50 = *(v168 + 176) + *(v168 + 168) * (v142 + v38) + v143;
              v149 = v50;
              do
              {
                v51 = *(v50 + v49);
                if (v51)
                {
                  v52 = 0;
                  v53 = v51 >> 1;
                  v54 = *(v41 + 60);
                  v55 = v49 >> (v54 - byte_240C85334[*(v41 + 52)]);
                  v187[0] = v49 >> (v54 - byte_240C85334[*(v41 + 48)]);
                  v187[1] = v55;
                  v56 = byte_240C87EA0[v53];
                  v187[2] = v49 >> (v54 - byte_240C85334[*(v41 + 56)]);
                  v167 = v53;
                  v57 = byte_240C87EBB[v53];
                  v58 = v57 * v56;
                  v179 = __clz(__rbit64(v58));
                  v175 = v58 << 6;
                  if (v57 >= v56)
                  {
                    v59 = v56;
                  }

                  else
                  {
                    v59 = v57;
                  }

                  if (v57 <= v56)
                  {
                    v60 = v56;
                  }

                  else
                  {
                    v60 = v57;
                  }

                  v185 = 1;
                  v186 = 2;
                  v154 = 4 * v58;
                  v178 = v58 - 1;
                  v152 = (v195 - 4 * v60);
                  v159 = 32 * v60;
                  v160 = v60;
                  v61 = 8 * v60;
                  v158 = 8 * v59;
                  v171 = v57 * v56;
                  v157 = v58 << 6;
                  if (v56 <= 1)
                  {
                    v56 = 1;
                  }

                  else
                  {
                    v56 = v56;
                  }

                  if (v57 <= 1)
                  {
                    v57 = 1;
                  }

                  else
                  {
                    v57 = v57;
                  }

                  v156 = v57;
                  v155 = (v56 + 3) & 0x1FC;
                  v182 = vdupq_n_s64(v56 - 1);
                  v161 = v59;
                  v151 = 32 * v59 * v60;
                  v166 = v49;
                  do
                  {
                    v62 = *(&v185 + v52);
                    v63 = v187[v62];
                    v64 = *(v40 + 4 * v62);
                    if (v63 << (*(v41 + 60) - byte_240C85334[v64]) == v49)
                    {
                      v172 = *(&v185 + v52);
                      if (v190[v62] << (*(v41 + 61) - byte_240C85338[v64]) == v38)
                      {
                        v65 = v183[v62];
                        v170 = v184[v62];
                        v66 = v65 + 4 * v170;
                        v67 = v189[v62];
                        v176 = v66;
                        if (v171 == 1)
                        {
                          v68 = 0;
                          v69 = 1;
                          v70 = 0uLL;
                          do
                          {
                            v71 = v69;
                            v70 = vaddq_s32(v70, vceqzq_s32(vbicq_s8(*(v66 + 1 * v68), xmmword_240C83950[v68])));
                            v68 = 1;
                            v69 = 0;
                          }

                          while ((v71 & 1) != 0);
                          for (i = 1; i != 8; ++i)
                          {
                            v73 = 0;
                            v74 = 1;
                            do
                            {
                              v75 = v74;
                              v70 = vaddq_s32(v70, vceqzq_s32(*(v66 + 32 * i + 4 * v73)));
                              v73 = 4;
                              v74 = 0;
                            }

                            while ((v75 & 1) != 0);
                          }

                          v180 = vaddvq_s32(v70) + 64;
                          *(v67 + 4 * v63) = v180;
                        }

                        else
                        {
                          bzero(&v192, 0x470uLL);
                          v191[1] = -1;
                          v191[0] = -1;
                          if (v161)
                          {
                            v76 = 0;
                            v77 = 0uLL;
                            v78 = (v65 + 4 * v170);
                            v79 = 4 * (v147 >> 2);
                            v80 = v159;
                            v81 = v160;
                            do
                            {
                              if (v160)
                              {
                                v82 = 0;
                                v83 = v152;
                                v84 = v78;
                                do
                                {
                                  v85 = *v83++;
                                  v86 = v85;
                                  v87 = *v84++;
                                  v77 = vaddq_s32(v77, vceqzq_s32(vbicq_s8(v87, v86)));
                                  v82 += 4;
                                }

                                while (v82 < v61);
                              }

                              ++v76;
                              v78 = (v78 + v159);
                            }

                            while (v76 != v161);
                          }

                          else
                          {
                            v77 = 0uLL;
                            v79 = 4 * (v147 >> 2);
                            v80 = v159;
                            v81 = v160;
                          }

                          if (v158 <= v161)
                          {
                            v90 = v155;
                          }

                          else
                          {
                            v88 = v65 + v151 + 4 * v170;
                            v89 = v161;
                            v90 = v155;
                            do
                            {
                              if (v81)
                              {
                                v91 = 0;
                                v92 = v88;
                                do
                                {
                                  v93 = *v92++;
                                  v77 = vaddq_s32(v77, vceqzq_s32(v93));
                                  v91 += 4;
                                }

                                while (v91 < v61);
                              }

                              ++v89;
                              v88 += v80;
                            }

                            while (v89 != v158);
                          }

                          v94 = 0;
                          v180 = vaddvq_s32(v77) + v157;
                          v95 = (v178 + v180) >> v179;
                          v96 = v67 + 4 * v63 + 8;
                          do
                          {
                            v97 = v96;
                            v98 = v90;
                            v99 = xmmword_240C111D0;
                            v100 = xmmword_240C111C0;
                            do
                            {
                              v101 = vmovn_s64(vcgeq_u64(v182, v99));
                              if (vuzp1_s16(v101, *v99.i8).u8[0])
                              {
                                *(v97 - 2) = v95;
                              }

                              if (vuzp1_s16(v101, *&v99).i8[2])
                              {
                                *(v97 - 1) = v95;
                              }

                              if (vuzp1_s16(*&v99, vmovn_s64(vcgeq_u64(v182, *&v100))).i32[1])
                              {
                                *v97 = v95;
                                v97[1] = v95;
                              }

                              v102 = vdupq_n_s64(4uLL);
                              v100 = vaddq_s64(v100, v102);
                              v99 = vaddq_s64(v99, v102);
                              v97 += 4;
                              v98 -= 4;
                            }

                            while (v98);
                            ++v94;
                            v96 += v79;
                          }

                          while (v94 != v156);
                        }

                        v103 = byte_240C848C4[v167];
                        v104 = qword_240C83970[3 * v103 + v172];
                        v105 = v188[v172];
                        if (v63)
                        {
                          if (v105)
                          {
                            v106 = (v105[v63] + *(v67 + 4 * v63 - 4) + 1) / 2;
                          }

                          else
                          {
                            v106 = *(v67 + 4 * v63 - 4);
                          }
                        }

                        else if (v105)
                        {
                          v106 = *v105;
                        }

                        else
                        {
                          v106 = 32;
                        }

                        v107 = v180;
                        v108 = sub_240B426A4((v168 + 1760), *(v164 + v49), *(v163 + 4 * v63), v103, v172);
                        v109 = v108;
                        if (v106 >= 0x40)
                        {
                          v110 = 64;
                        }

                        else
                        {
                          v110 = v106;
                        }

                        if (v106 >= 8)
                        {
                          v110 = (v110 >> 1) + 4;
                        }

                        v111 = v108 + v110 * *(v168 + 1880);
                        v112 = v177;
                        v114 = v177[1];
                        v113 = v177[2];
                        v169 = v52;
                        if (v114 >= v113)
                        {
                          v118 = *v177;
                          v119 = v114 - *v177;
                          v120 = (v119 >> 3) + 1;
                          if (v120 >> 61)
                          {
                            sub_240B228BC();
                          }

                          v121 = v113 - v118;
                          if (v121 >> 2 > v120)
                          {
                            v120 = v121 >> 2;
                          }

                          if (v121 >= 0x7FFFFFFFFFFFFFF8)
                          {
                            v122 = 0x1FFFFFFFFFFFFFFFLL;
                          }

                          else
                          {
                            v122 = v120;
                          }

                          if (v122)
                          {
                            sub_240B299F4(v122);
                          }

                          v123 = (8 * (v119 >> 3));
                          *v123 = 2 * v111;
                          v123[1] = v180;
                          v115 = v123 + 2;
                          memcpy(0, v118, v119);
                          v112 = v177;
                          *v177 = 0;
                          v177[2] = 0;
                          if (v118)
                          {
                            operator delete(v118);
                            v112 = v177;
                          }

                          v116 = v175;
                          v117 = v176;
                          v107 = v180;
                        }

                        else
                        {
                          *v114 = 2 * v111;
                          v114[1] = v180;
                          v115 = v114 + 2;
                          v116 = v175;
                          v117 = v176;
                        }

                        v112[1] = v115;
                        if (v171 < v116 && v107)
                        {
                          v124 = 458 * v109 + 37 * *(v168 + 1880);
                          LOBYTE(v125) = v154 >= v107;
                          v126 = v112[2];
                          v127 = v153 + (v104 << 8);
                          v128 = v171;
                          v173 = v127;
                          v174 = v124;
                          do
                          {
                            v129 = *(v117 + 4 * *(v127 + 4 * v128));
                            v130 = v124 + (v125 & 1) + 2 * (word_240C83B30[v128 >> v179] + word_240C83AB0[(v178 + v107) >> v179]);
                            v131 = (2 * v129) ^ (v129 >> 31);
                            if (v115 >= v126)
                            {
                              v181 = v107;
                              v132 = *v112;
                              v133 = v115 - *v112;
                              v134 = (v133 >> 3) + 1;
                              if (v134 >> 61)
                              {
                                sub_240B228BC();
                              }

                              if ((v126 - v132) >> 2 > v134)
                              {
                                v134 = (v126 - v132) >> 2;
                              }

                              if (v126 - v132 >= 0x7FFFFFFFFFFFFFF8)
                              {
                                v135 = 0x1FFFFFFFFFFFFFFFLL;
                              }

                              else
                              {
                                v135 = v134;
                              }

                              if (v135)
                              {
                                sub_240B299F4(v135);
                              }

                              v136 = (8 * (v133 >> 3));
                              v126 = 0;
                              *v136 = 2 * v130;
                              v136[1] = v131;
                              v115 = v136 + 2;
                              memcpy(0, v132, v133);
                              v112 = v177;
                              *v177 = 0;
                              v177[2] = 0;
                              if (v132)
                              {
                                operator delete(v132);
                                v112 = v177;
                              }

                              v116 = v175;
                              v117 = v176;
                              v107 = v181;
                              v127 = v173;
                              LODWORD(v124) = v174;
                            }

                            else
                            {
                              *v115 = 2 * v130;
                              v115[1] = v131;
                              v115 += 2;
                            }

                            v112[1] = v115;
                            v125 = v129 != 0;
                            if (++v128 >= v116)
                            {
                              break;
                            }

                            v107 -= v125;
                          }

                          while (v107);
                        }

                        v52 = v169;
                        v184[v172] = v170 + v116;
                        v41 = v165;
                        v49 = v166;
                        v40 = v165 + 48;
                        v38 = v162;
                      }
                    }

                    v52 += 4;
                  }

                  while (v52 != 12);
                  v50 = v149;
                }

                ++v49;
              }

              while (v49 != v150);
            }

            ++v38;
          }

          while (v38 != v148);
        }

        v22 = v141 + 1;
        v21 = **(v139 + 16);
        v138 += 4;
      }

      while (v141 + 1 < (0x2E8BA2E8BA2E8BA3 * ((v21[649] - v21[648]) >> 4)));
    }
  }
}

void *sub_240BA1E88(void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      result = (*(*result + 8))(result);
    }
  }

  v1[1] = v2;
  return result;
}

void sub_240BA1EF4(void *a1, void *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  operator new();
}

void *sub_240BA1FAC(void *__dst, void *__src)
{
  if (*__dst == 7)
  {
    v4 = __dst[28];
    if (v4)
    {
      v5 = *v4;
      if (*v4)
      {
        *(v4 + 8) = v5;
        operator delete(v5);
      }

      MEMORY[0x245CCE590](v4, 0x10C402FEFCB83);
    }
  }

  memmove(__dst, __src, 0x229uLL);
  if (*__dst == 7 && __dst[28])
  {
    operator new();
  }

  return __dst;
}

BOOL sub_240BA2094(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = a2;
  v6[0] = sub_240B2AC64;
  v6[1] = a3;
  if (*a1)
  {
    return (*a1)(*(a1 + 8), v6, sub_240BA2600, sub_240BA22F0, 0, a2) != 0;
  }

  for (i = 0; i != v3; ++i)
  {
    sub_240BA22F0(v6, i);
  }

  return 0;
}

BOOL sub_240BA2144(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = a2;
  v6[0] = sub_240B2AC64;
  v6[1] = a3;
  if (*a1)
  {
    return (*a1)(*(a1 + 8), v6, sub_240BA22C8, sub_240BA21F4, 0, a2) != 0;
  }

  for (i = 0; i != v3; ++i)
  {
    sub_240BA21F4(v6, i);
  }

  return 0;
}

uint64_t sub_240BA21F4(uint64_t result, unsigned int a2)
{
  v2 = *(result + 8);
  v3 = atomic_load(*v2);
  if ((v3 & 1) == 0)
  {
    v4 = *(v2 + 16);
    v5 = **(v2 + 8);
    v6 = a2;
    v7 = v5[13];
    v8 = a2 / v7;
    v9 = v5[17];
    v10 = v9 * (a2 % v7);
    v11 = v5[9];
    v12 = v5[10];
    v13 = v11 - v10;
    if (v11 < v10)
    {
      v13 = 0;
    }

    v14 = v9 * v8;
    v19[0] = v10;
    v19[1] = v14;
    if (v10 + v9 <= v11)
    {
      v15 = v9;
    }

    else
    {
      v15 = v13;
    }

    v16 = v14 + v9;
    v17 = v12 >= v14;
    v18 = v12 - v14;
    if (!v17)
    {
      v18 = 0;
    }

    if (v16 <= v12)
    {
      v18 = v9;
    }

    v19[2] = v15;
    v19[3] = v18;
    result = sub_240BB7520(*v4, *(v2 + 24), *(v2 + 32), v19, a2, 0, v5);
    if (result || (result = sub_240BB8058(**(v2 + 16), v19, v6, 1, **(v2 + 8)), result))
    {
      atomic_store(1u, *v2);
    }
  }

  return result;
}

uint64_t sub_240BA22C8(unsigned int (**a1)(uint64_t), uint64_t a2)
{
  if ((*a1)(a2))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

void sub_240BA22F0(uint64_t a1, unsigned int a2)
{
  v58 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 8);
  v3 = **v2;
  if (*v3)
  {
    v4 = 0;
    v54 = *(v3 + 24) + *(v3 + 16) * a2;
    v55 = 8 * a2;
    v53 = a2 << 10;
    v5 = 2;
    do
    {
      v6 = v2[1];
      v8 = v6[8];
      v7 = v6[9];
      if (v55 + 8 >= v7)
      {
        v9 = v6[9];
      }

      else
      {
        v9 = v55 + 8;
      }

      v56 = v4 + 1;
      if (8 * (v4 + 1) >= v8)
      {
        v10 = v6[8];
      }

      else
      {
        v10 = 8 * (v4 + 1);
      }

      bzero(v57, 0x404uLL);
      if (v7 > v55)
      {
        v11 = v2[2];
        v13 = *v11;
        v12 = v11[1];
        v14 = *(v13 + 18);
        v15 = v14 + 48 * v12[1];
        v16 = *(v15 + 24);
        v17 = *v2[3];
        v18 = *(v15 + 16);
        v19 = v14 + 48 * v12[v17];
        v20 = *(v19 + 24);
        v21 = *(v19 + 16);
        v22 = v17 << 8;
        v23 = v20 + v5 + v53 * v21;
        v24 = v21 << 7;
        v25 = v16 + v5 + v53 * v18;
        v26 = v18 << 7;
        v27 = v55;
        do
        {
          if (v8 > 8 * v4)
          {
            v28 = (*v2[6] * -84.0) + 127.0;
            v29 = *v2[4] + v22 + 4;
            v30 = v25;
            v31 = v23;
            v32 = 8 * v4;
            do
            {
              for (i = 0; i != 63; ++i)
              {
                v34 = vcvts_n_f32_s32(*(v29 + 4 * i) * *(v30 + 2 * i), 0xBuLL);
                if (fabsf(v34) > 0.00000001)
                {
                  v35 = (v28 * v34) + (*(v31 + 2 * i) * 84.0);
                  v36 = v2[7];
                  v37 = *v36;
                  if (v34 <= 0.0)
                  {
                    v38 = *v36;
                  }

                  else
                  {
                    v38 = -*v36;
                  }

                  v39 = v35 + v38;
                  if (v34 <= 0.0)
                  {
                    v37 = -*v36;
                  }

                  v40 = (v35 + v37) / v34;
                  v41 = v39 / v34;
                  if (v41 >= 0.0)
                  {
                    v42 = v41;
                  }

                  else
                  {
                    v42 = 0.0;
                  }

                  v43 = 255.0;
                  if (v40 <= 255.0)
                  {
                    v43 = v40;
                  }

                  if (v42 <= v43)
                  {
                    v44 = vcvtps_s32_f32(v42);
                    ++v57[v44];
                    v45 = vcvtms_s32_f32(v43 + 1.0);
                    --v57[v45];
                  }
                }
              }

              ++v32;
              v31 += 128;
              v30 += 128;
            }

            while (v32 < v10);
          }

          ++v27;
          v23 += v24;
          v25 += v26;
        }

        while (v27 < v9);
      }

      v46 = 0;
      v47 = 0;
      v48 = 0;
      v49 = 0;
      do
      {
        v48 += v57[v46];
        if (v48 > v49)
        {
          v49 = v48;
          v47 = v46;
        }

        ++v46;
      }

      while (v46 != 256);
      v50 = 0;
      v51 = 0;
      do
      {
        if (v50 <= 0x7F)
        {
          v51 += v57[v50];
        }

        ++v50;
      }

      while (v50 != 256);
      v52 = v47 - 127;
      if (v49 <= v51 + 1)
      {
        v52 = 0;
      }

      *(v54 + v4) = v52;
      v5 += 1024;
      ++v4;
    }

    while (v56 < ***v2);
  }
}

uint64_t sub_240BA2600(unsigned int (**a1)(uint64_t), uint64_t a2)
{
  if ((*a1)(a2))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_240BA2628(uint64_t a1)
{
  *(a1 + 48) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  result = sub_240B2BCB4(a1 + 104);
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  return result;
}

void sub_240BA2688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v12 = *(v10 + 80);
  if (v12)
  {
    *(v10 + 88) = v12;
    operator delete(v12);
  }

  sub_240B7BC3C(&a10);
  v13 = *(v10 + 24);
  if (v13)
  {
    *(v10 + 32) = v13;
    operator delete(v13);
  }

  a10 = v10;
  sub_240B31E8C(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_240BA26CC(uint64_t a1)
{
  v2 = *(a1 + 8);
  while (1)
  {
    v3 = *(a1 + 16);
    if (v3 == v2)
    {
      break;
    }

    *(a1 + 16) = v3 - 176;
    sub_240B96E98(v3 - 176);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_240BA271C(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t sub_240BA279C(uint64_t a1)
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

uint64_t *sub_240BA281C(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v3 = v1;
    v2 = result[4];
    if (!v2)
    {
      sub_240B51630();
    }

    return (*(*v2 + 48))(v2, &v3);
  }

  return result;
}

uint64_t sub_240BA2890(uint64_t a1, uint64_t a2)
{
  if (sub_240B516C4(*(a2 + 8), "ZN3jxlL21GetExtraChannelBufferER26JxlChunkedFrameInputSourcemmmmmPmEUlPKvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_240BA28E8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &off_2852A37F0;
  a2[1] = v2;
  return result;
}

unsigned int *sub_240BA297C(unsigned int *result, uint64_t a2)
{
  if (result[1])
  {
    v2 = *result == 0;
  }

  else
  {
    v2 = 1;
  }

  if (!v2)
  {
    v3 = result;
    v4 = 0;
    v6 = *(a2 + 16);
    v5 = *(a2 + 24);
    do
    {
      result = memcpy(v5, (*(v3 + 3) + *(v3 + 2) * v4++), 4 * *v3);
      v5 += v6;
    }

    while (v4 < v3[1]);
  }

  return result;
}

uint64_t sub_240BA29F8(uint64_t a1, uint64_t a2)
{
  if (sub_240B516C4(*(a2 + 8), "ZN3jxlL14GetColorBufferER26JxlChunkedFrameInputSourcemmmmPmEUlPKvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_240BA2A50(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2852A3770;
  a2[1] = v2;
  return result;
}

uint64_t sub_240BA2AE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v7 = (*(a1 + 376) + 96 * a2);
  v8 = v7[21];
  if (v8 == v7[22])
  {
    v8 = v7[12];
  }

  v9 = v7[20];
  *a7 = v9;
  return v8 + v9 * a4 + v7[19] * a3;
}

__n128 sub_240BA2B1C(uint64_t a1, uint64_t a2, __n128 *a3)
{
  v3 = (*(a1 + 376) + 96 * a2);
  result = v3[7];
  a3[1].n128_u64[0] = v3[8].n128_u64[0];
  *a3 = result;
  return result;
}

uint64_t sub_240BA2B3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v6 = *(a1 + 376);
  v7 = v6[9];
  if (v7 == v6[10])
  {
    v7 = *v6;
  }

  v8 = v6[8];
  *a6 = v8;
  return v7 + v8 * a3 + v6[7] * a2;
}

__n128 sub_240BA2B68(uint64_t a1, __n128 *a2)
{
  v2 = *(a1 + 376);
  result = v2[1];
  a2[1].n128_u64[0] = v2[2].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_240BA2B80(uint64_t a1, void *a2)
{
  v2 = a2[1];
  v3 = v2 - *a2;
  if (v2 == *a2)
  {
    return 0;
  }

  v6 = 0;
  while (1)
  {
    v7 = v3 - v6;
    sub_240BC219C(&__dst, a1, 1uLL, v3 - v6);
    result = v16;
    if (v16)
    {
      break;
    }

    v9 = __dst;
    v10 = __dst;
    v11 = v14;
    v12 = v15;
    __dst = 0;
    *&v14 = 0;
    if (v11 < v7)
    {
      v7 = v11;
    }

    memcpy(v9, (*a2 + v6), v7);
    v10 += v7;
    *&v11 = v11 - v7;
    *(&v11 + 1) += v7;
    sub_240B96F0C(&v10);
    if (!v16)
    {
      sub_240B96F0C(&__dst);
    }

    v6 += v7;
    if (v6 >= v3)
    {
      return 0;
    }
  }

  return result;
}

uint64_t *sub_240BA2C68(uint64_t *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
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

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_240B3C80C(v6, v10);
    }

    sub_240B228BC();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
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

uint64_t *sub_240BA2D94(uint64_t *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0xCCCCCCCCCCCCCCCDLL * ((v7 - *result) >> 3) < a4)
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

    if (a4 <= 0x666666666666666)
    {
      v9 = 0xCCCCCCCCCCCCCCCDLL * (v7 >> 3);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x333333333333333)
      {
        v11 = 0x666666666666666;
      }

      else
      {
        v11 = v10;
      }

      sub_240B87204(v6, v11);
    }

    sub_240B228BC();
  }

  v12 = result[1];
  v13 = v12 - v8;
  if (0xCCCCCCCCCCCCCCCDLL * ((v12 - v8) >> 3) >= a4)
  {
    v17 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v17 - 4);
    }

    v16 = &v8[v17];
  }

  else
  {
    v14 = &__src[v13];
    if (v12 != v8)
    {
      result = memmove(*result, __src, v13 - 4);
      v12 = v6[1];
    }

    v15 = (a3 - v14);
    if (a3 != v14)
    {
      result = memmove(v12, v14, (v15 - 4));
    }

    v16 = &v15[v12];
  }

  v6[1] = v16;
  return result;
}

uint64_t *sub_240BA2EF4(uint64_t *a1, uint64_t a2)
{
  *a1 = *a2;
  if (a1 != a2)
  {
    sub_240BA2FA8((a1 + 1), *(a2 + 8), *(a2 + 16), 0xF0B7672A07A44C6BLL * ((*(a2 + 16) - *(a2 + 8)) >> 3));
    sub_240BA2C68(a1 + 4, *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 3);
    sub_240BA3124(a1 + 7, *(a2 + 56), *(a2 + 64), (*(a2 + 64) - *(a2 + 56)) >> 5);
    sub_240BA2C68(a1 + 10, *(a2 + 80), *(a2 + 88), (*(a2 + 88) - *(a2 + 80)) >> 3);
    sub_240BA2C68(a1 + 13, *(a2 + 104), *(a2 + 112), (*(a2 + 112) - *(a2 + 104)) >> 3);
  }

  return a1;
}

void sub_240BA2FA8(uint64_t a1, __int128 **a2, __int128 **a3, unint64_t a4)
{
  v8 = *a1;
  if (0xF0B7672A07A44C6BLL * ((*(a1 + 16) - *a1) >> 3) < a4)
  {
    sub_240BA33AC(a1);
    if (a4 <= 0x7A44C6AFC2DD9CLL)
    {
      v9 = 0xE16ECE540F4898D6 * ((*(a1 + 16) - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xF0B7672A07A44C6BLL * ((*(a1 + 16) - *a1) >> 3) >= 0x3D226357E16ECELL)
      {
        v10 = 0x7A44C6AFC2DD9CLL;
      }

      else
      {
        v10 = v9;
      }

      sub_240B87074(a1, v10);
    }

    sub_240B228BC();
  }

  v11 = *(a1 + 8) - v8;
  if (0xF0B7672A07A44C6BLL * (v11 >> 3) >= a4)
  {
    v12 = sub_240BA3250(a2, a3, v8);
    v13 = *(a1 + 8);
    if (v13 != v12)
    {
      v14 = v13 - 67;
      do
      {
        v15 = *v14;
        if (*v14)
        {
          v14[1] = v15;
          operator delete(v15);
        }

        v16 = v14 == v12;
        v14 -= 67;
      }

      while (!v16);
    }

    *(a1 + 8) = v12;
  }

  else
  {
    sub_240BA3250(a2, (a2 + v11), v8);
    *(a1 + 8) = sub_240B870C8(a1, (a2 + v11), a3, *(a1 + 8));
  }
}

uint64_t *sub_240BA3124(uint64_t *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 5)
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

    if (!(a4 >> 59))
    {
      v9 = v7 >> 4;
      if (v7 >> 4 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFE0)
      {
        v10 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_240B87034(v6, v10);
    }

    sub_240B228BC();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 5)
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

char **sub_240BA3250(uint64_t *a1, uint64_t *a2, char **a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      if (a3 != v5)
      {
        v7 = *v5;
        v6 = v5[1];
        v8 = v6 - *v5;
        v9 = a3[2];
        v10 = *a3;
        if (v9 - *a3 < v8)
        {
          if (v10)
          {
            a3[1] = v10;
            operator delete(v10);
            v9 = 0;
            *a3 = 0;
            a3[1] = 0;
            a3[2] = 0;
          }

          v11 = v8 >> 4;
          if (!((v8 >> 4) >> 60))
          {
            if (v9 >> 3 > v11)
            {
              v11 = v9 >> 3;
            }

            if (v9 >= 0x7FFFFFFFFFFFFFF0)
            {
              v12 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v12 = v11;
            }

            sub_240B871C4(a3, v12);
          }

          sub_240B228BC();
        }

        v13 = a3[1];
        v14 = v13 - v10;
        if (v13 - v10 >= v8)
        {
          while (v7 != v6)
          {
            v20 = *v7++;
            *v10 = v20;
            v10 += 16;
          }

          a3[1] = v10;
        }

        else
        {
          if (v13 != v10)
          {
            v15 = v13 - v10;
            v16 = *v5;
            do
            {
              v17 = *v16++;
              *v10 = v17;
              v10 += 16;
              v15 -= 16;
            }

            while (v15);
          }

          for (i = (v7 + v14); i != v6; ++i)
          {
            v19 = *i;
            *v13 = v19;
            v13 += 16;
          }

          a3[1] = v13;
        }
      }

      memcpy(a3 + 3, v5 + 3, 0x200uLL);
      v5 += 67;
      a3 += 67;
    }

    while (v5 != a2);
  }

  return a3;
}

void sub_240BA33AC(uint64_t *a1)
{
  if (*a1)
  {
    sub_240B4BD60(a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

BOOL sub_240BA33EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  v7[0] = sub_240B2AC64;
  v7[1] = a3;
  if (*a1)
  {
    return (*a1)(*(a1 + 8), v7, sub_240BA35E8, sub_240BA35DC, 0, a2) != 0;
  }

  v5 = 0;
  v6 = a2;
  do
  {
    sub_240BA34A8(a3, v5++);
  }

  while (v6 != v5);
  return 0;
}

void sub_240BA34A8(uint64_t a1, uint64_t a2)
{
  v2 = atomic_load(*a1);
  if ((v2 & 1) == 0)
  {
    sub_240B7D1B4(&v15, 64);
    v14 = v15;
    v13 = v16 - v15;
    v6 = v7;
    v7[0] = 0;
    v12 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v7[3] = &v13;
    v8 = 0;
    v7[1] = 0;
    v7[2] = &v14;
    sub_240BC25B0(&v6);
    if (sub_240B909DC(**(a1 + 8) + 640 * a2, *(a1 + 16), **(a1 + 24), *(a1 + 32), *(a1 + 40), 0, &v6, **(a1 + 48)))
    {
      atomic_store(1u, *a1);
    }

    else
    {
      *(**(a1 + 56) + 8 * a2) = v8;
    }

    v5 = v12;
    v12 = 0;
    if (v5)
    {
      MEMORY[0x245CCE590](v5, 0x80C402FCC0CB6);
    }

    sub_240BA3610(v7[0]);
    if (v15)
    {
      v16 = v15;
      operator delete(v15);
    }
  }
}

void sub_240BA35B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_240BA3664(va);
  v5 = *(v3 - 40);
  if (v5)
  {
    *(v3 - 32) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_240BA35E8(unsigned int (**a1)(uint64_t), uint64_t a2)
{
  if ((*a1)(a2))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

void sub_240BA3610(void *a1)
{
  if (a1)
  {
    sub_240BA3610(*a1);
    sub_240BA3610(a1[1]);
    sub_240B22320(a1 + 8);

    operator delete(a1);
  }
}

uint64_t sub_240BA3664(uint64_t a1)
{
  v2 = *(a1 + 72);
  *(a1 + 72) = 0;
  if (v2)
  {
    MEMORY[0x245CCE590](v2, 0x80C402FCC0CB6);
  }

  sub_240BA3610(*(a1 + 8));
  return a1;
}

uint64_t sub_240BA36B0(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 640;
    sub_240B7BB60(i - 640);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_240BA3700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t *a7, uint64_t a8)
{
  v101 = *MEMORY[0x277D85DE8];
  v16 = (a4 + 96);
  v15 = *(a4 + 96);
  if (!v15)
  {
    v17 = *(a4 + 416);
    if (v17 == *(a4 + 424))
    {
      v15 = 0;
    }

    else
    {
      v15 = *v17;
    }
  }

  v18 = v15;
  v19 = *(a4 + 100);
  if (v19)
  {
    v20 = *(a4 + 416);
    v21 = *(a4 + 424);
  }

  else
  {
    v20 = *(a4 + 416);
    v21 = *(a4 + 424);
    if (v20 == v21)
    {
      v19 = 0;
      v21 = *(a4 + 416);
    }

    else
    {
      v19 = *(v20 + 4);
    }
  }

  sub_240BA3EBC(v87, v18, v19, 0xCCCCCCCCCCCCCCCDLL * ((v21 - v20) >> 3));
  v84 = 0;
  v85 = 0;
  v86 = 0;
  v22 = *(a4 + 272) == 1;
  v23 = *(a2 + 1);
  v24 = v22 & v23;
  if ((v22 & v23) != 0)
  {
    v25 = 1;
  }

  else
  {
    v25 = 3;
  }

  v26 = *(a4 + 96);
  if (!v26)
  {
    v27 = *(a4 + 416);
    if (v27 == *(a4 + 424))
    {
      v26 = 0;
    }

    else
    {
      v26 = *v27;
    }
  }

  v70 = a7;
  v28 = 4 * v25 * v26;
  v29 = *(a4 + 100);
  if (!v29)
  {
    v30 = *(a4 + 416);
    if (v30 == *(a4 + 424))
    {
      v29 = 0;
    }

    else
    {
      v29 = *(v30 + 4);
    }
  }

  v31 = v28 * v29;
  if (v31)
  {
    sub_240B26918(&v84, v31);
    v32 = v84;
    v33 = v85;
  }

  else
  {
    v33 = 0;
    v32 = 0;
  }

  *__p = 0u;
  v83 = 0u;
  v81[0] = 0;
  v79 = 0u;
  memset(v80, 0, sizeof(v80));
  v78 = 0u;
  memset(v77, 0, sizeof(v77));
  v34 = *(a4 + 88);
    ;
  }

  v36 = v33 - v32;
  v92 = 0;
  v93 = 0;
  v94 = 0;
  v91 = v16;
  if ((v24 & 1) == 0)
  {
    v92 = (a4 + 136);
    v93 = a4 + 176;
  }

  v37 = sub_240B31610(&v91, v25, 32, 1, 0, v28, a6, v32, v36, __p);
  v71 = a5;
  v72 = a8;
  for (j = 104; j != -16; j -= 40)
  {
    sub_240B22320((v77 + j));
  }

  v74 = v84;
  if (!v37)
  {
    v39 = v89[0];
    if (v89[1] != v89[0])
    {
      v40 = (v85 - v84);
      LODWORD(v77[0]) = v25;
      memset(v77 + 4, 0, 20);
      sub_240BA3FD4(v89[0], v77, v87[0], v87[1]);
      *v39 = v74;
      v39[1] = v40;
    }

    v42 = *(a4 + 416);
    v41 = *(a4 + 424);
    if (v41 == v42)
    {
LABEL_52:
      v50 = *(a2 + 48);
      v78 = *(a2 + 32);
      v79 = v50;
      *&v80[0].__r_.__value_.__l.__data_ = *(a2 + 64);
      LODWORD(v80[0].__r_.__value_.__r.__words[2]) = *(a2 + 80);
      v51 = *(a2 + 16);
      v77[0] = *a2;
      v77[1] = v51;
      if (*(a2 + 111) < 0)
      {
        sub_240B4B67C(&v80[1], *(a2 + 88), *(a2 + 96));
      }

      else
      {
        v80[1] = *(a2 + 88);
      }

      memset(v81, 0, 24);
      v52 = *(a2 + 112);
      v53 = *(a2 + 120);
      v91 = v81;
      LOBYTE(v92) = 0;
      if (v53 != v52)
      {
        v54 = 0xCCCCCCCCCCCCCCCDLL * ((v53 - v52) >> 3);
        if (v54 < 0x666666666666667)
        {
          sub_240B3C974(v54);
        }

        sub_240B228BC();
      }

      *&v79 = *(a4 + 40);
      BYTE8(v79) = *(a4 + 57);
      HIDWORD(v79) = *(a4 + 60);
      *(&v80[0].__r_.__value_.__r.__words[1] + 4) = *(a4 + 48);
      std::string::operator=(&v80[1], (a4 + 64));
      sub_240B7D1B4(__p, 64);
      v76 = __p[0];
      v75 = __p[1] - __p[0];
      v91 = &v92;
      v92 = 0;
      v100 = 0;
      v97 = 0;
      v98 = 0;
      v99 = 0;
      v95 = &v75;
      v96 = 0;
      v93 = 0;
      v94 = &v76;
      sub_240BC25B0(&v91);
      if (!sub_240B909DC(a1, v77, a3, v87, v71, a6, &v91, v72))
      {
        sub_240BC2554(&v91);
        v90 = v76;
        if (v98 >= v97)
        {
          v55 = v75;
        }

        else
        {
          do
          {
            if (!v100)
            {
              v94 = &v90;
              v95 = &v75;
              sub_240BC25B0(&v91);
            }

            v55 = v75;
            if (!v75)
            {
              v56 = v90;
              v58 = __p[0];
              v57 = __p[1];
              v59 = __p[1] - __p[0];
              if (__p[1] - __p[0] < 1)
              {
                if ((v59 & 0x8000000000000000) != 0)
                {
                  v57 = __p[0] + 2 * v59;
                  __p[1] = v57;
                }

                v60 = __p[0];
              }

              else
              {
                sub_240B26918(__p, v59);
                v60 = __p[0];
                v57 = __p[1];
              }

              v90 = &v60[v56 - v58];
              v55 = v57 - v60 - (v56 - v58);
              v75 = v55;
            }
          }

          while (v98 < v97);
        }

        v62 = __p[0];
        v61 = __p[1];
        if (__p[1] - __p[0] >= v55)
        {
          if (__p[1] - __p[0] > __p[1] - __p[0] - v55)
          {
            v61 = __p[1] - v55;
            __p[1] = __p[1] - v55;
          }
        }

        else
        {
          sub_240B26918(__p, -v55);
          v62 = __p[0];
          v61 = __p[1];
        }

        if (v61 != v62)
        {
          v63 = v61 - v62;
          v64 = v61 - v62 + v70[1] + 1;
          sub_240B4ADF0(v70 + 1, v64);
          v65 = v70[3];
          if (v65)
          {
            v66 = v64;
          }

          else
          {
            v66 = 0;
          }

          v70[1] = v66;
          v67 = *v70;
          memcpy((v65 + (*v70 >> 3)), v62, v63);
          *(v70[3] + (v67 >> 3) + v63) = 0;
          *v70 += 8 * v63;
        }
      }

      v68 = v100;
      v100 = 0;
      if (v68)
      {
        MEMORY[0x245CCE590](v68, 0x80C402FCC0CB6);
      }

      sub_240BA3610(v92);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      v91 = v81;
      sub_240B37840(&v91);
      if (SHIBYTE(v80[1].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v80[1].__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v43 = 0;
      v44 = 1;
      while (1)
      {
        v45 = *v16;
        if (!v45)
        {
          if (v42 == v41)
          {
            v45 = 0;
          }

          else
          {
            v45 = *v42;
          }
        }

        v46 = *(a4 + 100);
        if (!v46)
        {
          if (v42 == v41)
          {
            v46 = 0;
          }

          else
          {
            v46 = v42[1];
          }
        }

        v47 = 4 * v45;
        sub_240B7D1B4(&v91, 4 * v45 * v46);
        __p[0] = (*(a4 + 416) + v43);
        memset(v77, 0, sizeof(v77));
        v48 = sub_240B31610(__p, 1uLL, 32, 1, 0, v47, a6, v91, v92 - v91, v77);
        if (!v48)
        {
          sub_240BA403C(v87, v44, v91, v92 - v91, &xmmword_240C83BB0);
        }

        if (v91)
        {
          v92 = v91;
          operator delete(v91);
        }

        if (v48)
        {
          break;
        }

        v42 = *(a4 + 416);
        v41 = *(a4 + 424);
        v43 += 40;
        if (v44++ >= 0xCCCCCCCCCCCCCCCDLL * ((v41 - v42) >> 3))
        {
          goto LABEL_52;
        }
      }
    }
  }

  if (v74)
  {
    operator delete(v74);
  }

  *&v77[0] = v89;
  sub_240BA4110(v77);
  return sub_240B8D650(&v88);
}