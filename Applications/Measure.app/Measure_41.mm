uint64_t sub_1002B7FB4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v49 = result;
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v3 = 416;
  v4 = &dword_100000004;
  v62 = 0u;
  v63 = 0u;
  while (1)
  {
    v15 = *(&unk_1003E60E8 + v4 + 1);
    v16 = *(&unk_1003E60E8 + v4 + 2);
    v17 = *(&unk_1003E60E8 + v4 + 3);
    v18 = *(&unk_1003E60E8 + v4 + 4);
    v19 = *(&unk_1003E60E8 + v4 + 5);
    v20 = *(&unk_1003E60E8 + v4 + 6);
    v21 = *(&unk_1003E60E8 + v4 + 7);
    LODWORD(v22) = *(&unk_1003E60E8 + v4 + 8);
    v23 = *(&unk_1003E60E8 + v4 + 9);
    v24 = *(&unk_1003E60E8 + v4 + 10);
    v25 = *(&unk_1003E60E8 + v4 + 11);
    v26 = *(&unk_1003E60E8 + v4 + 12);
    LODWORD(v27) = *(&unk_1003E60E8 + v4 + 13);
    v28 = *(&unk_1003E60E8 + v4 + 14);
    v29 = *(&unk_1003E60E8 + v4 + 15);
    v30 = *(&unk_1003E60E8 + v4 + 16);
    v31 = v15 + v16 + v17 + v18 + v19 + v20 + v21 + v22 + v23 + v24 + v25 + v26 + v27 + v28 + v29 + v30;
    v32 = v3 - 17;
    if (v31 > 0x100 || v32 < v31)
    {
      return result;
    }

    v34 = v4 + 17;
    if (!v31)
    {
      v36 = v4 + 17;
      goto LABEL_16;
    }

    if (v31 < 0x20 || -18 - v4 < v31 - 1)
    {
      v35 = 0;
      v36 = v4 + 17;
LABEL_12:
      v37 = v36;
      do
      {
        v36 = v37 + 1;
        *(&v62 + v35++) = *(&unk_1003E60E8 + v37++);
      }

      while (v35 < v31);
      goto LABEL_16;
    }

    v44 = *(&unk_1003E60E8 + v4 + 16);
    result = *(&unk_1003E60E8 + v4 + 15);
    v35 = (v15 + v16 + v17 + v18 + v19 + v20 + v21 + v22 + v23 + v24 + v25 + v26 + v27 + v28 + v29 + v30) & 0x1E0;
    v36 = v34 + ((v15 + v16 + v17 + v18 + v19 + v20 + v21 + v22 + v23 + v24 + v25 + v26 + v27 + v28 + v29 + v30) & 0x1E0);
    v45 = v35;
    v46 = &v63;
    do
    {
      v47 = (&unk_1003E60E8 + v34);
      v48 = v47[1];
      *(v46 - 1) = *v47;
      *v46 = v48;
      v46 += 2;
      v34 += 32;
      v45 -= 32;
    }

    while (v45);
    LOBYTE(v29) = result;
    LOBYTE(v30) = v44;
    if (v35 != v31)
    {
      goto LABEL_12;
    }

LABEL_16:
    v38 = *(&unk_1003E60E8 + v4);
    v39 = (a2 + 8 * (v38 & 0xFFFFFFFFFFFFFFEFLL));
    if ((v38 & 0x10) != 0)
    {
      LODWORD(v38) = v38 & 0xFFFFFFEF;
      v40 = v39;
    }

    else
    {
      v40 = (a3 + 8 * v38);
    }

    if (v38 <= 3)
    {
      result = *v40;
      if (*v40 || (v56 = v23, v57 = v22, v22 = a3, v52 = v27, v53 = v26, v27 = a2, v26 = v32, v54 = v25, v55 = v24, v41 = v15, v42 = v16, v43 = v17, v60 = v19, v61 = v18, v58 = v21, v59 = v20, v51 = v29, v50 = v30, result = sub_10039D4C0(v49), LOBYTE(v30) = v50, LOBYTE(v29) = v51, LOBYTE(v21) = v58, LOBYTE(v20) = v59, LOBYTE(v19) = v60, LOBYTE(v18) = v61, LOBYTE(v17) = v43, LOBYTE(v16) = v42, LOBYTE(v24) = v55, LOBYTE(v23) = v56, LOBYTE(v15) = v41, v32 = v26, LOBYTE(v26) = v53, LOBYTE(v25) = v54, a2 = v27, LOBYTE(v27) = v52, a3 = v22, LOBYTE(v22) = v57, (*v40 = result) != 0))
      {
        *result = 0;
        *(result + 1) = v15;
        *(result + 2) = v16;
        *(result + 3) = v17;
        *(result + 4) = v18;
        *(result + 5) = v19;
        *(result + 6) = v20;
        *(result + 7) = v21;
        *(result + 8) = v22;
        *(result + 9) = v23;
        *(result + 10) = v24;
        *(result + 11) = v25;
        *(result + 12) = v26;
        *(result + 13) = v27;
        *(result + 14) = v28;
        *(result + 15) = v29;
        *(result + 16) = v30;
        v5 = *v40;
        v6 = v75;
        *(v5 + 209) = v74;
        *(v5 + 225) = v6;
        v7 = v77;
        *(v5 + 241) = v76;
        v8 = v71;
        *(v5 + 145) = v70;
        *(v5 + 161) = v8;
        v9 = v73;
        *(v5 + 177) = v72;
        *(v5 + 193) = v9;
        v10 = v67;
        *(v5 + 81) = v66;
        *(v5 + 97) = v10;
        v11 = v69;
        *(v5 + 113) = v68;
        *(v5 + 129) = v11;
        v12 = v63;
        *(v5 + 17) = v62;
        *(v5 + 33) = v12;
        v13 = v65;
        *(v5 + 49) = v64;
        *(v5 + 65) = v13;
        v3 = v32 - v31;
        v14 = v5 + 17;
        v4 = v36;
        *(v14 + 240) = v7;
        if (v32 - v31 > 0x10)
        {
          continue;
        }
      }
    }

    return result;
  }
}

uint64_t sub_1002B833C(uint64_t a1)
{
  sub_1002B4744(a1);
  *v2 = off_100475F48;
  v3 = v2 + 1;
  sub_1002A8124(v2 + 1);
  qmemcpy(sub_1002A80E0(v3, 31), "JPEG files (*.jpeg;*.jpg;*.jpe)", 31);
  *(a1 + 48) = 1;
  return a1;
}

uint64_t *sub_1002B83CC(uint64_t *a1)
{
  *a1 = off_100475B70;
  sub_1002A8124(a1 + 7);
  sub_1002A8124(a1 + 3);
  sub_1002A8124(a1 + 1);
  return a1;
}

void sub_1002B842C(uint64_t *a1)
{
  *a1 = off_100475B70;
  sub_1002A8124(a1 + 7);
  sub_1002A8124(a1 + 3);
  sub_1002A8124(a1 + 1);

  operator delete();
}

void sub_1002B8CF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p)
{
  v20 = v19;
  if (STACK[0x4D8] != a11 && STACK[0x4D8] != 0)
  {
    operator delete[]();
  }

  if (__p)
  {
    operator delete(__p);
    if (!v20)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v20)
  {
    goto LABEL_8;
  }

  fclose(v20);
  _Unwind_Resume(a1);
}

uint64_t sub_1002B8D90(uint64_t result, uint64_t a2)
{
  v2 = *(result + 40);
  v4 = *v2;
  v3 = v2[1];
  v5 = a2 - v3;
  v6 = v3 - a2;
  if (v3 < a2)
  {
    v6 = 0;
  }

  else
  {
    v3 = a2;
    v5 = 0;
  }

  *(v2 + 14) = v5;
  *v2 = v4 + v3;
  v2[1] = v6;
  return result;
}

uint64_t sub_1002B8DC0(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(v1 + 48);
  v3 = v2[1];
  v4 = &v3[-*v2];
  v5 = *(*(v1 + 40) + 8) - **(v1 + 40);
  v6 = &v4[v5];
  if (v4 >= &v4[v5])
  {
    if (v4 > v6)
    {
      v2[1] = *v2 + v6;
    }
  }

  else
  {
    v7 = v2[2];
    if (v7 - v3 < v5)
    {
      if ((v6 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_10000918C();
    }

    v8 = &v3[v5];
    bzero(v3, v5);
    v2[1] = v8;
  }

  memcpy(&v4[**(v1 + 48)], **(v1 + 40), v5);
  *v1 = **(v1 + 40);
  *(v1 + 8) = v5;
  return 1;
}

void *sub_1002B8F18(void *result)
{
  v1 = result[5];
  v2 = *(v1[5] + 8) - *v1[5];
  v3 = v1[1];
  v4 = v2 - v3;
  if (v2 != v3)
  {
    v5 = v1[6];
    v6 = v5[1];
    v7 = &v6[-*v5];
    v8 = &v7[v4];
    if (v7 >= &v7[v4])
    {
      if (v7 > &v7[v4])
      {
        v5[1] = &v8[*v5];
      }
    }

    else
    {
      v9 = v5[2];
      if (v9 - v6 < v4)
      {
        if ((v8 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_10000918C();
      }

      v10 = &v6[v4];
      bzero(v6, v4);
      v5[1] = v10;
    }

    v11 = *v1[5];
    v12 = &v7[*v1[6]];

    return memcpy(v12, v11, v4);
  }

  return result;
}

uint64_t sub_1002B90B4(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v2 = a1;
    (*(*v1 + 8))(a1[2]);
    a1 = v2;
  }

  v3 = *(*a1 + 8);

  return v3();
}

uint64_t sub_1002B9150(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v2 = a1;
    (*(*v1 + 8))(a1[2]);
    a1 = v2;
  }

  v3 = *(*a1 + 8);

  return v3();
}

uint64_t sub_1002B91D4(uint64_t a1)
{
  sub_1002B43DC(a1);
  *v2 = off_100476050;
  sub_1002B2A0C((v2 + 20));
  *(a1 + 160) = off_100475928;
  *(a1 + 152) = 1;
  *(a1 + 244) = 0;
  *(a1 + 240) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0xFFFFFFFF00000000;
  return a1;
}

uint64_t sub_1002B9264(void *a1)
{
  *a1 = off_100476050;
  v2 = a1 + 20;
  sub_1002B30EC((a1 + 20));
  sub_1002B31A0(v2);

  return sub_1002B4AA0(a1);
}

void sub_1002B92CC(void *a1)
{
  *a1 = off_100476050;
  v2 = a1 + 20;
  sub_1002B30EC((a1 + 20));
  sub_1002B31A0(v2);
  sub_1002B4AA0(a1);

  operator delete();
}

BOOL sub_1002B9350(uint64_t a1, void *a2)
{
  if (a2[1] < 3uLL)
  {
    return 0;
  }

  v2 = *a2;
  if (**a2 != 80 || v2[1] != 55)
  {
    return 0;
  }

  v3 = v2[2];
  if (v3 < 0)
  {
    return __maskrune(v3, 0x4000uLL) != 0;
  }

  else
  {
    return (_DefaultRuneLocale.__runetype[v3] & 0x4000) != 0;
  }
}

FILE *sub_1002B9578(uint64_t a1)
{
  if (!*(a1 + 72))
  {
    goto LABEL_13;
  }

  v2 = *(a1 + 60);
  if (v2 >= 3)
  {
    v4 = *(a1 + 120);
    v5 = (v4 + 4);
    v6 = 1;
    v7 = v2 & 0x7FFFFFFE;
    v8 = 1;
    do
    {
      v6 *= *(v5 - 1);
      v8 *= *v5;
      v5 += 2;
      v7 -= 2;
    }

    while (v7);
    v3 = v8 * v6;
    v9 = v2 - (v2 & 0x7FFFFFFE);
    if (v9)
    {
      v10 = (v4 + 8 * ((v2 >> 1) & 0x3FFFFFFF));
      do
      {
        v11 = *v10++;
        v3 *= v11;
        --v9;
      }

      while (v9);
    }
  }

  else
  {
    v3 = *(a1 + 68) * *(a1 + 64);
  }

  if (v2 && v3)
  {
    if ((sub_1002B2F4C(a1 + 160, a1 + 56) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
LABEL_13:
    result = sub_1002B2E6C(a1 + 160, (a1 + 24));
    if (!result)
    {
      return result;
    }
  }

  if (sub_1002B32E0((a1 + 160)) != 80)
  {
    exception = __cxa_allocate_exception(0x58uLL);
    sub_1001FA81C(__str, "Invalid header");
    sub_1001FA81C(&__endptr, "readHeader");
    sub_1001FA81C(v80, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgcodecs/src/grfmt_pam.cpp");
    sub_1002A833C(exception, -2, __str, &__endptr, v80, 381);
    *exception = &off_100476820;
  }

  if (sub_1002B32E0((a1 + 160)) != 55)
  {
    v75 = __cxa_allocate_exception(0x58uLL);
    sub_1001FA81C(__str, "Invalid header");
    sub_1001FA81C(&__endptr, "readHeader");
    sub_1001FA81C(v80, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgcodecs/src/grfmt_pam.cpp");
    sub_1002A833C(v75, -2, __str, &__endptr, v80, 385);
    *v75 = &off_100476820;
  }

  v13 = sub_1002B32E0((a1 + 160));
  if (v13 != 10 && v13 != 13)
  {
    v76 = __cxa_allocate_exception(0x58uLL);
    sub_1001FA81C(__str, "Invalid header");
    sub_1001FA81C(&__endptr, "readHeader");
    sub_1001FA81C(v80, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgcodecs/src/grfmt_pam.cpp");
    sub_1002A833C(v76, -2, __str, &__endptr, v80, 389);
    *v76 = &off_100476820;
  }

  v14 = 0;
  v77 = 0;
  v78 = 0;
  while (1)
  {
    do
    {
      while (1)
      {
        while (1)
        {
          v82 = 0;
          do
          {
            v17 = sub_1002B32E0((a1 + 160));
            v18 = v17;
            if (v17 <= 0x7F)
            {
              v16 = _DefaultRuneLocale.__runetype[v17] & 0x4000;
            }

            else
            {
              v16 = __maskrune(v17, 0x4000uLL);
            }
          }

          while (v16);
          v15 = 0;
          if (v18 != 10 && v18 != 13)
          {
            break;
          }

LABEL_20:
          v14 = v15;
        }

        if (v18 == 35)
        {
          do
          {
            v19 = sub_1002B32E0((a1 + 160));
          }

          while (v19 != 10 && v19 != 13);
          v15 = 1;
          goto LABEL_20;
        }

        __endptr = 0;
        if (v18 <= 0x7F)
        {
          if ((_DefaultRuneLocale.__runetype[v18] & 0x4000) != 0)
          {
            goto LABEL_62;
          }
        }

        else if (__maskrune(v18, 0x4000uLL))
        {
          goto LABEL_62;
        }

        LOBYTE(__endptr) = v18;
        v20 = sub_1002B32E0((a1 + 160));
        v18 = v20;
        if (v20 <= 0x7F)
        {
          if ((_DefaultRuneLocale.__runetype[v20] & 0x4000) != 0)
          {
            goto LABEL_62;
          }
        }

        else if (__maskrune(v20, 0x4000uLL))
        {
          goto LABEL_62;
        }

        BYTE1(__endptr) = v18;
        v21 = sub_1002B32E0((a1 + 160));
        v18 = v21;
        if (v21 <= 0x7F)
        {
          if ((_DefaultRuneLocale.__runetype[v21] & 0x4000) != 0)
          {
            goto LABEL_62;
          }
        }

        else if (__maskrune(v21, 0x4000uLL))
        {
          goto LABEL_62;
        }

        BYTE2(__endptr) = v18;
        v22 = sub_1002B32E0((a1 + 160));
        v18 = v22;
        if (v22 <= 0x7F)
        {
          if ((_DefaultRuneLocale.__runetype[v22] & 0x4000) != 0)
          {
            goto LABEL_62;
          }
        }

        else if (__maskrune(v22, 0x4000uLL))
        {
          goto LABEL_62;
        }

        BYTE3(__endptr) = v18;
        v23 = sub_1002B32E0((a1 + 160));
        v18 = v23;
        if (v23 <= 0x7F)
        {
          if ((_DefaultRuneLocale.__runetype[v23] & 0x4000) != 0)
          {
            goto LABEL_62;
          }
        }

        else if (__maskrune(v23, 0x4000uLL))
        {
          goto LABEL_62;
        }

        BYTE4(__endptr) = v18;
        v24 = sub_1002B32E0((a1 + 160));
        v18 = v24;
        if (v24 <= 0x7F)
        {
          if ((_DefaultRuneLocale.__runetype[v24] & 0x4000) != 0)
          {
            goto LABEL_62;
          }
        }

        else if (__maskrune(v24, 0x4000uLL))
        {
          goto LABEL_62;
        }

        BYTE5(__endptr) = v18;
        v25 = sub_1002B32E0((a1 + 160));
        v18 = v25;
        if (v25 <= 0x7F)
        {
          if ((_DefaultRuneLocale.__runetype[v25] & 0x4000) != 0)
          {
            goto LABEL_62;
          }
        }

        else if (__maskrune(v25, 0x4000uLL))
        {
          goto LABEL_62;
        }

        BYTE6(__endptr) = v18;
        v26 = sub_1002B32E0((a1 + 160));
        v18 = v26;
        if (v26 <= 0x7F)
        {
          if ((_DefaultRuneLocale.__runetype[v26] & 0x4000) != 0)
          {
LABEL_62:
            if (v18 > 0x7F)
            {
              goto LABEL_63;
            }

            goto LABEL_66;
          }
        }

        else if (__maskrune(v26, 0x4000uLL))
        {
          goto LABEL_62;
        }

        HIBYTE(__endptr) = v18;
        v18 = sub_1002B32E0((a1 + 160));
        if (v18 > 0x7F)
        {
LABEL_63:
          v27 = __maskrune(v18, 0x4000uLL);
          goto LABEL_67;
        }

LABEL_66:
        v27 = _DefaultRuneLocale.__runetype[v18] & 0x4000;
LABEL_67:
        if (!v27)
        {
          goto LABEL_187;
        }

        v28 = __endptr == 1448624461 && *(&__endptr + 3) == 4997462;
        if (v28)
        {
          if (__endptr ^ 0x455059544C505554 | v82)
          {
            v14 = 6;
          }

          else
          {
            v14 = 7;
          }
        }

        else
        {
          v29 = WORD2(__endptr) ^ 0x48;
          v30 = __endptr ^ 0x54504544 | v29;
          v31 = __endptr ^ 0x48444E45 | *(&__endptr + 3) ^ 0x524448;
          v28 = v31 == 0;
          v32 = v31 != 0;
          v33 = __endptr ^ 0x47494548 | *(&__endptr + 3) ^ 0x544847;
          if (v28)
          {
            v34 = 2;
          }

          else
          {
            v34 = v14;
          }

          v28 = v33 == 0;
          v35 = v33 != 0;
          v36 = __endptr ^ 0x54444957 | v29;
          if (v28)
          {
            v37 = 3;
          }

          else
          {
            v37 = v34;
          }

          v28 = v36 == 0;
          v38 = v36 != 0;
          if (v28)
          {
            v39 = 4;
          }

          else
          {
            v39 = v37;
          }

          v40 = v30 != 0;
          if (v30)
          {
            v41 = v39;
          }

          else
          {
            v41 = 5;
          }

          v42 = __endptr ^ 0x455059544C505554 | v82;
          if (v42)
          {
            v14 = v41;
          }

          else
          {
            v14 = 7;
          }

          if (v42 && v40 && v38 && v35 && v32)
          {
            goto LABEL_187;
          }
        }

        v96 = 0u;
        memset(v97, 0, sizeof(v97));
        v94 = 0u;
        v95 = 0u;
        v92 = 0u;
        v93 = 0u;
        v90 = 0u;
        v91 = 0u;
        v88 = 0u;
        v89 = 0u;
        v86 = 0u;
        v87 = 0u;
        v84 = 0u;
        v85 = 0u;
        *__str = 0u;
        if (v18 != 10 && v18 != 13)
        {
          do
          {
            v44 = sub_1002B32E0((a1 + 160));
            v45 = v44;
            if (v44 <= 0x7F)
            {
              v43 = _DefaultRuneLocale.__runetype[v44] & 0x4000;
            }

            else
            {
              v43 = __maskrune(v44, 0x4000uLL);
            }
          }

          while (v43);
          for (i = 0; i != 255; ++i)
          {
            if (v45 == 10 || v45 == 13)
            {
              goto LABEL_109;
            }

            __str[i] = v45;
            v47 = sub_1002B32E0((a1 + 160));
            v45 = v47;
          }

          i = 255;
          if (v47 != 10 && v47 != 13)
          {
LABEL_187:
            v64 = __cxa_allocate_exception(0x58uLL);
            sub_1001FA81C(&__endptr, "Invalid header");
            sub_1001FA81C(v80, "readHeader");
            sub_1001FA81C(v79, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgcodecs/src/grfmt_pam.cpp");
            sub_1002A833C(v64, -2, &__endptr, v80, v79, 395);
            *v64 = &off_100476820;
          }

          do
          {
LABEL_109:
            v48 = __str[i];
            if (v48 < 0)
            {
              v49 = __maskrune(v48, 0x4000uLL);
            }

            else
            {
              v49 = _DefaultRuneLocale.__runetype[v48] & 0x4000;
            }

            if (!v49)
            {
              break;
            }

            __str[i--] = 0;
          }

          while (i != -1);
        }

        if (v14 <= 3)
        {
          break;
        }

        if (v14 > 5)
        {
          if (v14 == 6)
          {
            if (v77)
            {
              v70 = __cxa_allocate_exception(0x58uLL);
              sub_1001FA81C(&__endptr, "Invalid header");
              sub_1001FA81C(v80, "readHeader");
              sub_1001FA81C(v79, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgcodecs/src/grfmt_pam.cpp");
              sub_1002A833C(v70, -2, &__endptr, v80, v79, 426);
              *v70 = &off_100476820;
            }

            __endptr = 0;
            v56 = strtol(__str, &__endptr, 0);
            if (*__error() == 34 && (v56 - 0x7FFFFFFFFFFFFFFFLL) < 2 || ((v57 = *__error(), !v56) ? (v58 = v57 == 0) : (v58 = 1), !v58 || __endptr == __str))
            {
              v65 = __cxa_allocate_exception(0x58uLL);
              sub_1001FA81C(&__endptr, "Invalid header");
              sub_1001FA81C(v80, "readHeader");
              sub_1001FA81C(v79, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgcodecs/src/grfmt_pam.cpp");
              sub_1002A833C(v65, -2, &__endptr, v80, v79, 428);
              *v65 = &off_100476820;
            }

            *(a1 + 224) = v56;
            if (v56 >= 0x10000)
            {
              v73 = __cxa_allocate_exception(0x58uLL);
              sub_1001FA81C(&__endptr, "Invalid header");
              sub_1001FA81C(v80, "readHeader");
              sub_1001FA81C(v79, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgcodecs/src/grfmt_pam.cpp");
              sub_1002A833C(v73, -2, &__endptr, v80, v79, 430);
              *v73 = &off_100476820;
            }

            if (v56 < 256)
            {
              *(a1 + 232) = 0;
              LODWORD(v77) = 1;
              v14 = 6;
              if (v56 == 1)
              {
                *(a1 + 244) = 1;
              }
            }

            else
            {
              *(a1 + 232) = 2;
              LODWORD(v77) = 1;
              v14 = 6;
            }
          }

          else
          {
            if (!strncmp(byte_1004760CC, __str, 0x100uLL))
            {
              *(a1 + 240) = 0;
              if (strncmp("BLACKANDWHITE", __str, 0x100uLL))
              {
LABEL_164:
                if (strncmp("GRAYSCALE", __str, 0x100uLL))
                {
                  goto LABEL_165;
                }

                goto LABEL_173;
              }
            }

            else if (strncmp("BLACKANDWHITE", __str, 0x100uLL))
            {
              goto LABEL_164;
            }

            *(a1 + 240) = 1;
            if (strncmp("GRAYSCALE", __str, 0x100uLL))
            {
LABEL_165:
              if (strncmp("GRAYSCALE_ALPHA", __str, 0x100uLL))
              {
                goto LABEL_166;
              }

              goto LABEL_174;
            }

LABEL_173:
            *(a1 + 240) = 2;
            if (strncmp("GRAYSCALE_ALPHA", __str, 0x100uLL))
            {
LABEL_166:
              if (!strncmp("RGB", __str, 0x100uLL))
              {
                goto LABEL_175;
              }

              goto LABEL_167;
            }

LABEL_174:
            *(a1 + 240) = 3;
            if (!strncmp("RGB", __str, 0x100uLL))
            {
LABEL_175:
              *(a1 + 240) = 4;
            }

LABEL_167:
            v14 = 7;
            if (!strncmp("RGB_ALPHA", __str, 0x100uLL))
            {
              *(a1 + 240) = 5;
            }
          }
        }

        else if (v14 == 4)
        {
          if (v78)
          {
            v72 = __cxa_allocate_exception(0x58uLL);
            sub_1001FA81C(&__endptr, "Invalid header");
            sub_1001FA81C(v80, "readHeader");
            sub_1001FA81C(v79, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgcodecs/src/grfmt_pam.cpp");
            sub_1002A833C(v72, -2, &__endptr, v80, v79, 412);
            *v72 = &off_100476820;
          }

          __endptr = 0;
          v50 = strtol(__str, &__endptr, 0);
          if (*__error() == 34 && (v50 - 0x7FFFFFFFFFFFFFFFLL) < 2 || ((v51 = *__error(), !v50) ? (v52 = v51 == 0) : (v52 = 1), !v52 || __endptr == __str))
          {
            v68 = __cxa_allocate_exception(0x58uLL);
            sub_1001FA81C(&__endptr, "Invalid header");
            sub_1001FA81C(v80, "readHeader");
            sub_1001FA81C(v79, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgcodecs/src/grfmt_pam.cpp");
            sub_1002A833C(v68, -2, &__endptr, v80, v79, 414);
            *v68 = &off_100476820;
          }

          *(a1 + 8) = v50;
          LODWORD(v78) = 1;
          v14 = 4;
        }

        else
        {
          if ((v77 & 0x100000000) != 0)
          {
            v69 = __cxa_allocate_exception(0x58uLL);
            sub_1001FA81C(&__endptr, "Invalid header");
            sub_1001FA81C(v80, "readHeader");
            sub_1001FA81C(v79, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgcodecs/src/grfmt_pam.cpp");
            sub_1002A833C(v69, -2, &__endptr, v80, v79, 419);
            *v69 = &off_100476820;
          }

          __endptr = 0;
          v59 = strtol(__str, &__endptr, 0);
          if (*__error() == 34 && (v59 - 0x7FFFFFFFFFFFFFFFLL) < 2 || ((v60 = *__error(), !v59) ? (v61 = v60 == 0) : (v61 = 1), !v61 || __endptr == __str))
          {
            v67 = __cxa_allocate_exception(0x58uLL);
            sub_1001FA81C(&__endptr, "Invalid header");
            sub_1001FA81C(v80, "readHeader");
            sub_1001FA81C(v79, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgcodecs/src/grfmt_pam.cpp");
            sub_1002A833C(v67, -2, &__endptr, v80, v79, 421);
            *v67 = &off_100476820;
          }

          *(a1 + 228) = v59;
          HIDWORD(v77) = 1;
          v14 = 5;
        }
      }
    }

    while (v14 < 2);
    if (v14 != 3)
    {
      break;
    }

    if ((v78 & 0x100000000) != 0)
    {
      v71 = __cxa_allocate_exception(0x58uLL);
      sub_1001FA81C(&__endptr, "Invalid header");
      sub_1001FA81C(v80, "readHeader");
      sub_1001FA81C(v79, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgcodecs/src/grfmt_pam.cpp");
      sub_1002A833C(v71, -2, &__endptr, v80, v79, 405);
      *v71 = &off_100476820;
    }

    __endptr = 0;
    v53 = strtol(__str, &__endptr, 0);
    if (*__error() == 34 && (v53 - 0x7FFFFFFFFFFFFFFFLL) < 2 || ((v54 = *__error(), !v53) ? (v55 = v54 == 0) : (v55 = 1), !v55 || __endptr == __str))
    {
      v66 = __cxa_allocate_exception(0x58uLL);
      sub_1001FA81C(&__endptr, "Invalid header");
      sub_1001FA81C(v80, "readHeader");
      sub_1001FA81C(v79, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgcodecs/src/grfmt_pam.cpp");
      sub_1002A833C(v66, -2, &__endptr, v80, v79, 407);
      *v66 = &off_100476820;
    }

    *(a1 + 12) = v53;
    HIDWORD(v78) = 1;
    v14 = 3;
  }

  if ((HIDWORD(v78) & v78 & HIDWORD(v77) & v77 & 1) == 0)
  {
    *(a1 + 236) = -1;
    *(a1 + 8) = -1;
    sub_1002B30EC(a1 + 160);
    return 0;
  }

  v62 = *(a1 + 228);
  if (*(a1 + 240))
  {
    goto LABEL_178;
  }

  if (v62 == 3)
  {
    if (*(a1 + 224) <= 255)
    {
      v63 = 4;
LABEL_186:
      *(a1 + 240) = v63;
    }
  }

  else if (v62 == 1)
  {
    v63 = *(a1 + 224);
    if (v63 == 1)
    {
      goto LABEL_186;
    }

    if (v63 < 256)
    {
      v63 = 2;
      goto LABEL_186;
    }
  }

LABEL_178:
  *(a1 + 16) = (*(a1 + 232) & 7 | (8 * v62)) - 8;
  *(a1 + 236) = sub_1002B2E50((a1 + 160));
  return 1;
}

uint64_t sub_1002BAC90(uint64_t a1, int *a2)
{
  v4 = *(a2 + 2);
  v5 = *a2;
  v6 = *(a2 + 10);
  v7 = *(a1 + 16);
  v8 = (*(a1 + 228) * *(a1 + 8));
  v132 = &v134;
  v133 = 2 * v8;
  if ((2 * v8) >= 0x409)
  {
    operator new[]();
  }

  if ((*(a1 + 236) & 0x80000000) != 0 || (sub_1002B29A4(a1 + 160) & 1) == 0)
  {
    v14 = 0;
    goto LABEL_145;
  }

  v9 = *(a1 + 240);
  if (v9)
  {
    v126 = 0;
    v127 = 0;
    v10 = &unk_1004760C8 + 288 * v9;
  }

  else
  {
    v10 = 0;
    v127 = *(a1 + 228) > 2;
    v126 = 2 * v127;
  }

  sub_1002B2E24(a1 + 160, *(a1 + 236));
  v11 = (v5 >> 3) & 0x1FF;
  v128 = v11 + 1;
  v130 = ((0x88442211 >> (4 * (v7 & 7))) & 0xF) * v8;
  v12 = *(a1 + 232);
  if (v12 != (*a2 & 7) || v128 != *(a1 + 228) || (*(a1 + 244) & 1) != 0)
  {
    if (*(a1 + 244))
    {
      if (v11 == 2)
      {
        sub_1002C7958(v138, 1, 0);
        if (*(a1 + 12) >= 1)
        {
          v86 = 0;
          do
          {
            sub_1002B33BC(a1 + 160, &v134, v130);
            sub_1002C815C(v4, &v134, *(a1 + 8), v138);
            ++v86;
            v4 = (v4 + v6);
            v14 = 1;
          }

          while (v86 < *(a1 + 12));
          goto LABEL_145;
        }
      }

      else if (!v11)
      {
        v131[0] = -256;
        if (*(a1 + 12) >= 1)
        {
          v13 = 0;
          do
          {
            sub_1002B33BC(a1 + 160, &v134, v130);
            sub_1002C8260(v4, &v134, *(a1 + 8), v131);
            ++v13;
            v4 = (v4 + v6);
            v14 = 1;
          }

          while (v13 < *(a1 + 12));
          goto LABEL_145;
        }
      }

      goto LABEL_123;
    }

    if (*(a1 + 12) >= 1)
    {
      v124 = (v5 >> 3) & 0x1FF;
      v15 = 0;
      v125 = v8 & 0x7FFFFFE0;
      v16 = v4 + 1;
      v17 = v4 + 2;
      while (1)
      {
        sub_1002B33BC(a1 + 160, &v134, v130);
        if (*(a1 + 232) != 2 || v8 < 1)
        {
          v19 = *a2;
          v20 = *a2 & 7;
          v21 = *(a1 + 228);
          if (v128 == v21)
          {
            goto LABEL_20;
          }

          goto LABEL_44;
        }

        if (v8 < 8)
        {
          v22 = 0;
LABEL_40:
          v32 = &v135[2 * v22];
          v33 = v8 - v22;
          do
          {
            v34 = *(v32 - 1);
            *(v32 - 1) = *v32;
            *v32 = v34;
            v32 += 2;
            --v33;
          }

          while (v33);
          goto LABEL_42;
        }

        if (v8 >= 0x20)
        {
          v24 = v8 & 0x7FFFFFE0;
          v25 = v137;
          do
          {
            v26 = v25 - 32;
            v141 = vld2q_s8(v26);
            v143 = vld2q_s8(v25);
            v27 = v141.val[0];
            v28 = v143.val[0];
            vst2q_s8(v26, *(&v141 + 16));
            vst2q_s8(v25, *(&v143 + 16));
            v25 += 64;
            v24 -= 32;
          }

          while (v24);
          if (v125 == v8)
          {
            goto LABEL_42;
          }

          v22 = v8 & 0x7FFFFFE0;
          v23 = v22;
          if ((v8 & 0x18) == 0)
          {
            goto LABEL_40;
          }
        }

        else
        {
          v23 = 0;
        }

        v29 = &v135[2 * v23 - 1];
        v30 = v23 - (v8 & 0x7FFFFFF8);
        do
        {
          v139 = vld2_s8(v29);
          v31 = v139.val[0];
          vst2_s8(v29, *(&v139 + 8));
          v29 += 16;
          v30 += 8;
        }

        while (v30);
        v22 = v8 & 0x7FFFFFF8;
        if (v22 != v8)
        {
          goto LABEL_40;
        }

LABEL_42:
        v19 = *a2;
        v20 = *a2 & 7;
        if ((*a2 & 7) != 0)
        {
          v21 = *(a1 + 228);
          if (v128 == v21)
          {
            goto LABEL_20;
          }

          goto LABEL_44;
        }

        if (v8 < 4)
        {
          v41 = 0;
          do
          {
LABEL_86:
            v135[v41 - 1] = v135[2 * v41];
            ++v41;
          }

          while (v8 != v41);
          goto LABEL_87;
        }

        if (v8 >= 0x20)
        {
          v59 = v8 & 0x7FFFFFE0;
          v60 = &v136;
          v61 = v137;
          do
          {
            v63 = v61[-2];
            v62 = v61[-1];
            v65 = *v61;
            v64 = v61[1];
            v61 += 4;
            v60[-1] = vuzp2q_s8(v63, v62);
            *v60 = vuzp2q_s8(v65, v64);
            v60 += 2;
            v59 -= 32;
          }

          while (v59);
          v41 = v8 & 0x7FFFFFE0;
          if (v125 == v8)
          {
            goto LABEL_87;
          }

          v47 = v8 & 0x7FFFFFE0;
          if ((v8 & 0x1C) == 0)
          {
            goto LABEL_86;
          }
        }

        else
        {
          v47 = 0;
        }

        v66 = &v135[2 * v47 - 1];
        v67 = &v135[v47 - 1];
        v68 = v47 - (v8 & 0x7FFFFFFC);
        do
        {
          v69 = *v66++;
          v70 = vshr_n_u16(v69, 8uLL);
          *v67++ = vuzp1_s8(v70, v70).u32[0];
          v68 += 4;
        }

        while (v68);
        v41 = v8 & 0x7FFFFFFC;
        if (v41 != v8)
        {
          goto LABEL_86;
        }

LABEL_87:
        v20 = 0;
        v21 = *(a1 + 228);
        if (v128 == v21)
        {
LABEL_20:
          memcpy(v4, &v134, v6);
          goto LABEL_21;
        }

LABEL_44:
        if (!v10)
        {
          v42 = v21;
          v43 = *(a1 + 8);
          if (v20 == 2)
          {
            v55 = &v135[2 * v43 - 1];
            if (v124)
            {
              if (v124 == 2 && v43 >= 1)
              {
                v56 = 2 * v42;
                v57 = &v134;
                v58 = v4;
                do
                {
                  *v58 = *v57;
                  *(v58 + 1) = *&v57[2 * v127];
                  *(v58 + 2) = *&v57[2 * v126];
                  v58 = (v58 + 6);
                  v57 += v56;
                }

                while (v57 < v55);
              }
            }

            else if (v43 >= 1)
            {
              v82 = 2 * v42;
              v83 = v16;
              v84 = &v134;
              do
              {
                v85 = *v84;
                *v83 = *v84;
                *(v83 - 1) = v85;
                *(v83 - 2) = v85;
                v84 += v82;
                v83 = (v83 + 6);
              }

              while (v84 < v55);
            }
          }

          else if (!v20)
          {
            v44 = &v135[v43 - 1];
            if (v124)
            {
              if (v124 == 2)
              {
                v45 = v4;
                v46 = &v134;
                if (v43 >= 1)
                {
                  do
                  {
                    *v45 = *v46;
                    v45[1] = v46[v127];
                    v45[2] = v46[v126];
                    v45 += 3;
                    v46 += v42;
                  }

                  while (v46 < v44);
                }
              }
            }

            else if (v43 >= 1)
            {
              v79 = v17;
              v80 = &v134;
              do
              {
                v81 = *v80;
                *v79 = *v80;
                *(v79 - 1) = v81;
                *(v79 - 2) = v81;
                v80 += v42;
                v79 += 3;
              }

              while (v80 < v44);
            }
          }

          goto LABEL_21;
        }

        v35 = *(v10 + 33);
        if (!v35)
        {
          goto LABEL_48;
        }

        if ((v35(&v134, v4, *(a1 + 8), v128, v20) & 1) == 0)
        {
          v21 = *(a1 + 228);
          v19 = *a2;
LABEL_48:
          v36 = *(a1 + 8);
          v37 = v19 & 7;
          if (v37 == 2)
          {
            v48 = &v135[2 * v36 - 1];
            if (v124)
            {
              if (v124 == 2 && v36 >= 1)
              {
                v49 = *(v10 + 70);
                v50 = *(v10 + 69);
                v51 = *(v10 + 68);
                v52 = 2 * v21;
                v53 = &v134;
                v54 = v4;
                do
                {
                  *v54 = *&v53[2 * v49];
                  *(v54 + 1) = *&v53[2 * v50];
                  *(v54 + 2) = *&v53[2 * v51];
                  v54 = (v54 + 6);
                  v53 += v52;
                }

                while (v53 < v48);
              }
            }

            else if (v36 >= 1)
            {
              v74 = *(v10 + 71);
              v75 = 2 * v21;
              v76 = v16;
              v77 = &v134;
              do
              {
                v78 = *&v77[2 * v74];
                *v76 = v78;
                *(v76 - 1) = v78;
                *(v76 - 2) = v78;
                v77 += v75;
                v76 = (v76 + 6);
              }

              while (v77 < v48);
            }
          }

          else if (!v37)
          {
            v38 = &v135[v36 - 1];
            if (v124)
            {
              if (v124 == 2 && v36 >= 1)
              {
                v39 = v4;
                v40 = &v134;
                do
                {
                  *v39 = v40[*(v10 + 70)];
                  *(v39 + 1) = v40[*(v10 + 69)];
                  *(v39 + 2) = v40[*(v10 + 68)];
                  v39 = (v39 + 3);
                  v40 += v21;
                }

                while (v40 < v38);
              }
            }

            else if (v36 >= 1)
            {
              v71 = v17;
              v72 = &v134;
              do
              {
                v73 = v72[*(v10 + 71)];
                *v71 = v73;
                *(v71 - 1) = v73;
                *(v71 - 2) = v73;
                v72 += v21;
                v71 += 3;
              }

              while (v72 < v38);
            }
          }
        }

LABEL_21:
        ++v15;
        v4 = (v4 + v6);
        v16 = (v16 + v6);
        v17 += v6;
        if (v15 >= *(a1 + 12))
        {
          goto LABEL_123;
        }
      }
    }

    goto LABEL_123;
  }

  v87 = *(a1 + 12);
  if (v12 != 2)
  {
    sub_1002B33BC(a1 + 160, v4, v87 * v130);
    goto LABEL_123;
  }

  if (v87 < 1)
  {
LABEL_123:
    v14 = 1;
    goto LABEL_145;
  }

  if (v8 <= 0)
  {
    v97 = 0;
    do
    {
      sub_1002B33BC(a1 + 160, &v134, v130);
      ++v97;
      v14 = 1;
    }

    while (v97 < *(a1 + 12));
    goto LABEL_145;
  }

  if (v8 >= 8)
  {
    v98 = 0;
    v99 = 2 * v8;
    v100 = &v135[v99 - 1];
    v129 = v4 + v99;
    v101 = (v4 + 8);
    while (1)
    {
      sub_1002B33BC(a1 + 160, &v134, v130);
      if (v4 >= v100 || &v134 >= &v129[v6 * v98])
      {
        if (v8 < 0x20)
        {
          v103 = 0;
LABEL_138:
          v111 = 2 * v103;
          v112 = v103 - (v8 & 0x7FFFFFF8);
          do
          {
            v113 = &v135[v111 - 1];
            v140 = vld2_s8(v113);
            v114 = v140.val[0];
            v115 = v4 + v111;
            vst2_s8(v115, *(&v140 + 8));
            v111 += 16;
            v112 += 8;
          }

          while (v112);
          v102 = v8 & 0x7FFFFFF8;
          if (v102 == v8)
          {
            goto LABEL_128;
          }

          goto LABEL_141;
        }

        v104 = v8 & 0x7FFFFFE0;
        v105 = v137;
        v106 = v101;
        do
        {
          v107 = v105 - 32;
          v142 = vld2q_s8(v107);
          v144 = vld2q_s8(v105);
          v108 = v142.val[0];
          v109 = v106 - 32;
          vst2q_s8(v109, *(&v142 + 16));
          v110 = v144.val[0];
          vst2q_s8(v106, *(&v144 + 16));
          v106 += 64;
          v105 += 64;
          v104 -= 32;
        }

        while (v104);
        if ((v8 & 0x7FFFFFE0) == v8)
        {
          goto LABEL_128;
        }

        v103 = v8 & 0x7FFFFFE0;
        v102 = v103;
        if ((v8 & 0x18) != 0)
        {
          goto LABEL_138;
        }
      }

      else
      {
        v102 = 0;
      }

LABEL_141:
      v116 = v8 - v102;
      v117 = 2 * v102;
      v118 = v4 + 2 * v102;
      v119 = &v135[v117];
      do
      {
        v120 = *(v119 - 1);
        v121 = *v119;
        v119 += 2;
        *v118 = v121;
        v118[1] = v120;
        v118 += 2;
        --v116;
      }

      while (v116);
LABEL_128:
      ++v98;
      v4 = (v4 + v6);
      v101 += v6;
      v14 = 1;
      if (v98 >= *(a1 + 12))
      {
        goto LABEL_145;
      }
    }
  }

  v88 = 0;
  v89 = v4 + 6;
  do
  {
    sub_1002B33BC(a1 + 160, &v134, v130);
    v90 = v134;
    *(v89 - 6) = v135[0];
    *(v89 - 5) = v90;
    if (v8 != 1)
    {
      v91 = v135[1];
      *(v89 - 4) = v135[2];
      *(v89 - 3) = v91;
      if (v8 != 2)
      {
        v92 = v135[3];
        *(v89 - 2) = v135[4];
        *(v89 - 1) = v92;
        if (v8 != 3)
        {
          v93 = v135[5];
          *v89 = v135[6];
          v89[1] = v93;
          if (v8 != 4)
          {
            v94 = v135[7];
            v89[2] = v135[8];
            v89[3] = v94;
            if (v8 != 5)
            {
              v95 = v135[9];
              v89[4] = v135[10];
              v89[5] = v95;
              if (v8 != 6)
              {
                v96 = v135[11];
                v89[6] = v135[12];
                v89[7] = v96;
              }
            }
          }
        }
      }
    }

    ++v88;
    v89 += v6;
    v14 = 1;
  }

  while (v88 < *(a1 + 12));
LABEL_145:
  if (v132 != &v134 && v132 != 0)
  {
    operator delete[]();
  }

  return v14;
}

void sub_1002BB790(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  if (a27 != a24 && a27)
  {
    operator delete[]();
  }

  if (STACK[0x4A8] != a21)
  {
    if (STACK[0x4A8])
    {
      operator delete[]();
    }
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1002BB7EC(uint64_t a1)
{
  sub_1002B4744(a1);
  *v2 = off_100476798;
  v3 = v2 + 1;
  sub_1002A8124(v2 + 1);
  qmemcpy(sub_1002A80E0(v3, 33), "Portable arbitrary format (*.pam)", 33);
  *(a1 + 48) = 1;
  return a1;
}

uint64_t *sub_1002BB87C(uint64_t *a1)
{
  *a1 = off_100475B70;
  sub_1002A8124(a1 + 7);
  sub_1002A8124(a1 + 3);
  sub_1002A8124(a1 + 1);
  return a1;
}

void sub_1002BB8DC(uint64_t *a1)
{
  *a1 = off_100475B70;
  sub_1002A8124(a1 + 7);
  sub_1002A8124(a1 + 3);
  sub_1002A8124(a1 + 1);

  operator delete();
}

uint64_t sub_1002BBB0C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_1002B3710(v51);
  v51[0] = off_100475A08;
  v6 = *(a2 + 4);
  if (v6 >= 1)
  {
    v7 = *(*(a2 + 72) + 8 * v6 - 8);
    v8 = *(a2 + 8);
    v9 = *(a2 + 12);
    v10 = *a3;
    v11 = a3[1];
    v12 = v11 - *a3;
    if (v11 != *a3)
    {
      goto LABEL_3;
    }

LABEL_9:
    v14 = 0;
    goto LABEL_10;
  }

  v7 = 0;
  v8 = *(a2 + 8);
  v9 = *(a2 + 12);
  v10 = *a3;
  v17 = a3[1];
  v12 = v17 - *a3;
  if (v17 == *a3)
  {
    goto LABEL_9;
  }

LABEL_3:
  v13 = 0;
  v14 = 0;
  v15 = v12 >> 2;
  do
  {
    if (*(v10 + 4 * v13) == 128)
    {
      v16 = *(v10 + 4 * v13 + 4);
      if (v16 - 1 <= 4)
      {
        v14 = &unk_1004760C8 + 288 * v16;
      }
    }

    v13 += 2;
  }

  while (v13 < v15);
LABEL_10:
  v18 = v7 * v9;
  __src = *(a2 + 16);
  v19 = *(a1 + 40);
  if (!v19)
  {
    if (sub_1002B3A90(v51, (a1 + 24)))
    {
      goto LABEL_16;
    }

LABEL_18:
    v22 = 0;
    goto LABEL_42;
  }

  if ((sub_1002B3B44(v51, v19) & 1) == 0)
  {
    goto LABEL_18;
  }

  if (*(*(a1 + 40) + 16) - **(a1 + 40) < ((v18 * v8 + 511) & 0xFFFFFFFFFFFFFF00))
  {
    if (v18 * v8 > -512)
    {
      operator new();
    }

    sub_10000918C();
  }

LABEL_16:
  v20 = *(a2 + 4);
  if (v20 < 1)
  {
    v21 = 0;
  }

  else
  {
    v21 = *(*(a2 + 72) + 8 * v20 - 8);
  }

  v23 = v21 * v9;
  if (v23 <= 256)
  {
    v24 = 256;
  }

  else
  {
    v24 = v23;
  }

  v52 = v54;
  v53 = v24;
  if (v23 >= 1033)
  {
    operator new[]();
  }

  v54[0] = 669520;
  v25 = sprintf(v54 + 3, "WIDTH %d\n", v9) + 3;
  v26 = v25 + sprintf(v54 + v25, "HEIGHT %d\n", v8);
  LODWORD(v26) = sprintf(v54 + v26, "DEPTH %d\n", ((*a2 >> 3) & 0x1FF) + 1) + v26;
  v27 = sprintf(v54 + v26, "MAXVAL %d\n", ~(-1 << (8 * ((0x88442211 >> (4 * (*a2 & 7))) & 0xF)))) + v26;
  if (v14)
  {
    v27 += sprintf(v54 + v27, "TUPLTYPE %s\n", v14 + 4);
  }

  *(v54 + v27) = 0xA524448444E45;
  v28 = strlen(v54);
  sub_1002B3DD0(v51, v54, v28);
  if ((*a2 & 7) != 0)
  {
    if ((*a2 & 7) == 2 && v8 >= 1)
    {
      if (v18 > 0)
      {
        if (v18 <= 0xE)
        {
          for (i = 0; i != v8; ++i)
          {
            memcpy(v54, (*(a2 + 16) + **(a2 + 72) * i), v18);
            for (j = 0; j < v18; j += 2)
            {
              v31 = v54 + j;
              v32 = *(v54 + j);
              *v31 = *(v54 + j + 1);
              v31[1] = v32;
            }

            sub_1002B3DD0(v51, v54, v18);
          }

          goto LABEL_38;
        }

        v35 = 0;
        v36 = ((v18 - 1) >> 1) + 1;
        while (1)
        {
          memcpy(v54, (*(a2 + 16) + **(a2 + 72) * v35), v18);
          if (v18 < 0x3F)
          {
            break;
          }

          v38 = v36 & 0xFFFFFFFFFFFFFFE0;
          v39 = &v55;
          do
          {
            v40 = v39 - 32;
            v57 = vld2q_s8(v40);
            v58 = vld2q_s8(v39);
            v41 = v57.val[0];
            v42 = v58.val[0];
            vst2q_s8(v40, *(&v57 + 16));
            vst2q_s8(v39, *(&v58 + 16));
            v39 += 64;
            v38 -= 32;
          }

          while (v38);
          if (v36 == (v36 & 0xFFFFFFFFFFFFFFE0))
          {
            goto LABEL_58;
          }

          v37 = v36 & 0xFFFFFFFFFFFFFFE0;
          v43 = v36 & 0xFFFFFFFFFFFFFFE0;
          if ((v36 & 0x18) != 0)
          {
            goto LABEL_53;
          }

LABEL_56:
          v47 = 2 * v43;
          v48 = v54 + v47 + 1;
          do
          {
            v49 = *(v48 - 1);
            *(v48 - 1) = *v48;
            *v48 = v49;
            v48 += 2;
            v47 += 2;
          }

          while (v47 < v18);
LABEL_58:
          sub_1002B3DD0(v51, v54, v18);
          if (++v35 == v8)
          {
            goto LABEL_38;
          }
        }

        v37 = 0;
LABEL_53:
        v44 = v54 + 2 * v37;
        v45 = v37 - (v36 & 0xFFFFFFFFFFFFFFF8);
        do
        {
          v56 = vld2_s8(v44);
          v46 = v56.val[0];
          vst2_s8(v44, *(&v56 + 8));
          v44 += 16;
          v45 += 8;
        }

        while (v45);
        v43 = v36 & 0xFFFFFFFFFFFFFFF8;
        if (v36 == (v36 & 0xFFFFFFFFFFFFFFF8))
        {
          goto LABEL_58;
        }

        goto LABEL_56;
      }

      for (k = 0; k != v8; ++k)
      {
        memcpy(v54, (*(a2 + 16) + **(a2 + 72) * k), v18);
        sub_1002B3DD0(v51, v54, v18);
      }
    }
  }

  else
  {
    sub_1002B3DD0(v51, __src, v18 * v8);
  }

LABEL_38:
  sub_1002B3BD0(v51);
  if (v52 != v54 && v52)
  {
    operator delete[]();
  }

  v22 = 1;
LABEL_42:
  sub_1002B3C80(v51);
  return v22;
}

void sub_1002BC098(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_1002B3C80(va);
  _Unwind_Resume(a1);
}

void sub_1002BC0FC(uint64_t a1)
{
  sub_1002A85B8(a1);

  operator delete();
}

uint64_t sub_1002BC134(char *a1, char *a2, unsigned int a3, int a4, int a5)
{
  if (a4 == 1)
  {
    if (a5 != 2)
    {
      if (!a5)
      {
        sub_1002C5924(a1, 0, a2, 0, a3 | &_mh_execute_header, 2);
        return 1;
      }

      return 0;
    }

    sub_1002C5BE4(a1, 0, a2, 0, a3 | &_mh_execute_header, 3, 2);
    return 1;
  }

  else
  {
    if (a4 != 3)
    {
      return 0;
    }

    if (a5 != 2)
    {
      if (!a5)
      {
        sub_1002C6134(a1, 0, a2, 0, a3 | &_mh_execute_header);
        return 1;
      }

      return 0;
    }

    sub_1002C62D4(a1, 0, a2, 0, a3 | &_mh_execute_header);
    return 1;
  }
}

uint64_t sub_1002BC22C(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v2 = a1;
    (*(*v1 + 8))(a1[2]);
    a1 = v2;
  }

  v3 = *(*a1 + 8);

  return v3();
}

uint64_t sub_1002BC2C8(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v2 = a1;
    (*(*v1 + 8))(a1[2]);
    a1 = v2;
  }

  v3 = *(*a1 + 8);

  return v3();
}

uint64_t sub_1002BC34C(uint64_t a1)
{
  sub_1002B43DC(a1);
  *v2 = off_1004768C8;
  v3 = v2 + 5;
  sub_1002A8124(v2 + 5);
  *sub_1002A80E0(v3, 8) = 0xA1A0A0D474E5089;
  *(a1 + 192) = 0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 152) = 1;
  *(a1 + 200) = 0;
  *(a1 + 156) = 0;
  return a1;
}

uint64_t sub_1002BC3EC(void *a1)
{
  *a1 = off_1004768C8;
  v2 = a1[23];
  if (v2)
  {
    fclose(v2);
    a1[23] = 0;
  }

  if (a1[20])
  {
    v7 = a1[20];
    v3 = a1[21];
    v5 = a1[22];
    v6 = v3;
    sub_10037CE44(&v7, &v6, &v5);
    a1[20] = 0;
    a1[21] = 0;
    a1[22] = 0;
  }

  return sub_1002B4AA0(a1);
}

void sub_1002BC47C(void *a1)
{
  *a1 = off_1004768C8;
  v2 = a1[23];
  if (v2)
  {
    fclose(v2);
    a1[23] = 0;
  }

  if (a1[20])
  {
    v6 = a1[20];
    v3 = a1[21];
    v4 = a1[22];
    v5 = v3;
    sub_10037CE44(&v6, &v5, &v4);
    a1[20] = 0;
    a1[21] = 0;
    a1[22] = 0;
  }

  sub_1002B4AA0(a1);
  operator delete();
}

void *sub_1002BC6D4(uint64_t a1, void *a2, size_t a3)
{
  v6 = sub_100376E68(a1);
  v7 = v6;
  if (!v6)
  {
    v13[0] = 0;
    v13[1] = 0;
    v8 = sub_1002A80E0(v13, 7);
    *v8 = 1868784996;
    *(v8 + 3) = 1919247471;
    sub_1002A8980(-215, v13, "readDataFromBuf", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgcodecs/src/grfmt_png.cpp", 131);
  }

  v9 = *(v6 + 200);
  v10 = v9 + a3;
  v11 = *(v6 + 60);
  if (v11 < 1)
  {
    if (!v10)
    {
      goto LABEL_5;
    }

LABEL_7:
    sub_10037A948(a1, "PNG input buffer is incomplete");
  }

  if (v10 > *(*(v6 + 128) + 8 * v11 - 8) * *(v6 + 64) * *(v6 + 68))
  {
    goto LABEL_7;
  }

LABEL_5:
  result = memcpy(a2, (*(v6 + 72) + v9), a3);
  *(v7 + 200) += a3;
  return result;
}

uint64_t sub_1002BC7F8(uint64_t a1)
{
  v48 = 0;
  v2 = *(a1 + 184);
  if (v2)
  {
    fclose(v2);
    *(a1 + 184) = 0;
  }

  v3 = (a1 + 160);
  if (*(a1 + 160))
  {
    v51 = *(a1 + 160);
    v4 = *(a1 + 168);
    v49 = *(a1 + 176);
    v50 = v4;
    sub_10037CE44(&v51, &v50, &v49);
    *v3 = 0;
    *(a1 + 168) = 0;
    *(a1 + 176) = 0;
  }

  v5 = sub_10037BDE8("1.6.34", 0, 0, 0);
  if (v5)
  {
    v6 = v5;
    v7 = sub_100376918(v5);
    v8 = sub_100376918(v6);
    *(a1 + 160) = v6;
    *(a1 + 168) = v7;
    *(a1 + 176) = v8;
    *(a1 + 200) = 0;
    if (v7)
    {
      if (v8)
      {
        v9 = sub_10037B6FC(v6, &_longjmp, 0xC0uLL);
        if (!setjmp(v9))
        {
          if (!*(a1 + 72))
          {
            goto LABEL_59;
          }

          v13 = *(a1 + 60);
          if (v13 >= 3)
          {
            v15 = *(a1 + 120);
            v16 = v13 & 0x7FFFFFFE;
            v17 = (v15 + 4);
            v18 = 1;
            v19 = 1;
            do
            {
              v20 = v18 * *(v17 - 1);
              v18 = v20;
              v21 = v19 * *v17;
              v19 = v21;
              v17 += 2;
              v16 -= 2;
            }

            while (v16);
            v22 = v21 * v20;
            if (v13 == (v13 & 0x7FFFFFFE))
            {
              v14 = v21 * v20;
            }

            else
            {
              v23 = (v15 + 8 * ((v13 >> 1) & 0x3FFFFFFF));
              v24 = v13 - (v13 & 0x7FFFFFFE);
              do
              {
                v25 = *v23++;
                v22 *= v25;
                v14 = v22;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v14 = *(a1 + 68) * *(a1 + 64);
          }

          if (v13 && v14)
          {
            sub_10037D010(v6, a1, sub_1002BC6D4);
          }

          else
          {
LABEL_59:
            if (*(a1 + 24))
            {
              v26 = *(a1 + 24);
            }

            else
            {
              v26 = "";
            }

            v27 = fopen(v26, "rb");
            *(a1 + 184) = v27;
            if (v27)
            {
              sub_100376E74(v6, v27);
            }
          }

          if (*(a1 + 72))
          {
            v28 = *(a1 + 60);
            if (v28 >= 3)
            {
              v30 = *(a1 + 120);
              v31 = v28 & 0x7FFFFFFE;
              v32 = (v30 + 4);
              v33 = 1;
              v34 = 1;
              do
              {
                v35 = v33 * *(v32 - 1);
                v33 = v35;
                v36 = v34 * *v32;
                v34 = v36;
                v32 += 2;
                v31 -= 2;
              }

              while (v31);
              v37 = v36 * v35;
              if (v28 == (v28 & 0x7FFFFFFE))
              {
                v29 = v36 * v35;
              }

              else
              {
                v38 = (v30 + 8 * ((v28 >> 1) & 0x3FFFFFFF));
                v39 = v28 - (v28 & 0x7FFFFFFE);
                do
                {
                  v40 = *v38++;
                  v37 *= v40;
                  v29 = v37;
                  --v39;
                }

                while (v39);
              }
            }

            else
            {
              v29 = *(a1 + 68) * *(a1 + 64);
            }

            if (v28 && v29)
            {
              goto LABEL_45;
            }
          }

          if (*(a1 + 184))
          {
LABEL_45:
            LODWORD(v49) = 0;
            v47 = 0;
            v46 = 0;
            v45 = 0;
            v50 = 0;
            v51 = 0;
            sub_10037BE48(v6, v7);
            sub_10037B8E8(v6, v7, &v49, &v47, &v46 + 1, &v46, 0, 0, 0);
            v41 = HIDWORD(v46);
            v42 = v47;
            *(a1 + 8) = v49;
            *(a1 + 12) = v42;
            v43 = v46;
            *(a1 + 192) = v46;
            *(a1 + 156) = v41;
            if (v41 < 9 || v41 == 16)
            {
              if ((v43 - 2) < 2)
              {
                sub_10037B988(v6, v7, &v51, &v45, &v50);
                if (v45 < 1)
                {
                  *(a1 + 16) = 16;
                  v44 = 18;
                  if (HIDWORD(v46) != 16)
                  {
                    goto LABEL_54;
                  }

                  goto LABEL_53;
                }
              }

              else if (v43 != 4 && v43 != 6)
              {
                *(a1 + 16) = 0;
                v44 = 2;
                if (HIDWORD(v46) != 16)
                {
                  goto LABEL_54;
                }

                goto LABEL_53;
              }

              *(a1 + 16) = 24;
              v44 = 26;
              if (HIDWORD(v46) != 16)
              {
LABEL_54:
                v48 = 1;
                goto LABEL_9;
              }

LABEL_53:
              *(a1 + 16) = v44;
              goto LABEL_54;
            }
          }
        }
      }
    }
  }

LABEL_9:
  if ((v48 & 1) == 0)
  {
    v10 = *(a1 + 184);
    if (v10)
    {
      fclose(v10);
      *(a1 + 184) = 0;
    }

    if (*v3)
    {
      v51 = *v3;
      v11 = *(a1 + 168);
      v49 = *(a1 + 176);
      v50 = v11;
      sub_10037CE44(&v51, &v50, &v49);
      *v3 = 0;
      *(a1 + 168) = 0;
      *(a1 + 176) = 0;
    }
  }

  return v48;
}

uint64_t sub_1002BCBC4(uint64_t a1, int *a2)
{
  v28 = 0;
  if (*(a1 + 12) >= 0x89u)
  {
    operator new[]();
  }

  v5 = (a1 + 160);
  v4 = *(a1 + 160);
  if (v4)
  {
    v6 = *(a1 + 168);
    if (v6)
    {
      v7 = *(a1 + 176);
      if (v7)
      {
        if (*(a1 + 8))
        {
          if (*(a1 + 12))
          {
            v8 = *a2;
            v9 = sub_10037B6FC(*(a1 + 160), &_longjmp, 0xC0uLL);
            if (!setjmp(v9))
            {
              if ((*a2 & 7) != 0 || *(a1 + 156) != 16)
              {
                sub_1003888FC(v4);
              }

              else
              {
                sub_10037D070(v4);
              }

              if ((*a2 & 0xFF8u) > 0x17)
              {
                sub_10037D0D0(v4);
              }

              else
              {
                sub_10037D0A0(v4);
              }

              v10 = *(a1 + 192);
              if (v10 == 3)
              {
                sub_10037D0D0(v4);
                v10 = *(a1 + 192);
              }

              v11 = v8 & 0xFF8;
              if ((v10 & 2) != 0)
              {
                if (!v11)
                {
LABEL_26:
                  sub_10037D2BC(v4, 1, 0.299, 0.587);
LABEL_27:
                  sub_100388944(v4);
                  sub_10037C320(v4, v6);
                  v12 = *(a1 + 12);
                  if (v12 >= 1)
                  {
                    v13 = *(a2 + 10);
                    v14 = *(a2 + 2);
                    if (v12 == 1)
                    {
                      v15 = 0;
                    }

                    else
                    {
                      v16 = *(a2 + 2);
                      v15 = v12 & 0x7FFFFFFE;
                      v17 = &v27;
                      v18 = v15;
                      do
                      {
                        *(v17 - 1) = v16;
                        *v17 = v16 + v13;
                        v16 += 2 * v13;
                        v17 += 2;
                        v18 -= 2;
                      }

                      while (v18);
                      if ((v12 & 0x7FFFFFFE) == v12)
                      {
                        goto LABEL_35;
                      }
                    }

                    v19 = &(&v26)[v15];
                    v20 = (v14 + v15 * v13);
                    v21 = v12 - v15;
                    v22 = v20;
                    do
                    {
                      *v19++ = v22;
                      v22 += v13;
                      --v21;
                    }

                    while (v21);
                  }

LABEL_35:
                  sub_10037C7A0(v4, &v26);
                  sub_10037C8A4(v4, v7);
                  v28 = 1;
                  goto LABEL_36;
                }
              }

              else if (*(a1 + 156) > 7 || (sub_10037D108(v4), (*(a1 + 192) & 2) == 0) || !v11)
              {
                if (v11)
                {
                  sub_10037D138(v4);
                  goto LABEL_27;
                }

                goto LABEL_26;
              }

              sub_1003888E8(v4);
              goto LABEL_27;
            }
          }
        }
      }
    }
  }

LABEL_36:
  v23 = *(a1 + 184);
  if (v23)
  {
    fclose(v23);
    *(a1 + 184) = 0;
  }

  if (*v5)
  {
    v31 = *v5;
    v24 = *(a1 + 168);
    v29 = *(a1 + 176);
    v30 = v24;
    sub_10037CE44(&v31, &v30, &v29);
    *v5 = 0;
    *(a1 + 168) = 0;
    *(a1 + 176) = 0;
  }

  return v28;
}

void sub_1002BCEA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9 != v9 && a9 != 0)
  {
    operator delete[]();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002BCED8(uint64_t a1)
{
  sub_1002B4744(a1);
  *v2 = off_100476938;
  v3 = v2 + 1;
  sub_1002A8124(v2 + 1);
  qmemcpy(sub_1002A80E0(v3, 39), "Portable Network Graphics files (*.png)", 39);
  *(a1 + 48) = 1;
  return a1;
}

uint64_t *sub_1002BCF68(uint64_t *a1)
{
  *a1 = off_100475B70;
  sub_1002A8124(a1 + 7);
  sub_1002A8124(a1 + 3);
  sub_1002A8124(a1 + 1);
  return a1;
}

void sub_1002BCFC8(uint64_t *a1)
{
  *a1 = off_100475B70;
  sub_1002A8124(a1 + 7);
  sub_1002A8124(a1 + 3);
  sub_1002A8124(a1 + 1);

  operator delete();
}

void sub_1002BD1F8(uint64_t a1, const void *a2, size_t a3)
{
  if (a3)
  {
    v5 = sub_100376E68(a1);
    v6 = v5;
    if (!v5 || (v7 = *(v5 + 40)) == 0)
    {
      v13[0] = 0;
      v13[1] = 0;
      qmemcpy(sub_1002A80E0(v13, 25), "encoder && encoder->m_buf", 25);
      sub_1002A8980(-215, v13, "writeDataToBuf", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgcodecs/src/grfmt_png.cpp", 328);
    }

    v8 = v7[1];
    v9 = v8 - *v7;
    v10 = v9 + a3;
    if (v9 >= v9 + a3)
    {
      if (v9 > v9 + a3)
      {
        v7[1] = *v7 + v10;
      }
    }

    else
    {
      v11 = v7[2];
      if (v11 - v8 < a3)
      {
        if ((v10 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_10000918C();
      }

      v12 = v8 + a3;
      bzero(v8, a3);
      v7[1] = v12;
    }

    memcpy((**(v6 + 40) + v9), a2, a3);
  }
}

void sub_1002BD3C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1002A8124(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002BD3DC(uint64_t a1, unsigned int *a2, uint64_t *a3)
{
  v6 = sub_100389B3C("1.6.34", 0, 0, 0);
  v43 = 0;
  v44 = v6;
  v42 = 0;
  v7 = a2[3];
  v8 = a2[2];
  v9 = *a2;
  v41 = 0;
  v10 = 0;
  if ((v9 & 5) == 0)
  {
    if (v6)
    {
      v11 = v6;
      v12 = sub_100376918(v6);
      v43 = v12;
      if (v12)
      {
        v13 = v12;
        v14 = sub_10037B6FC(v11, &_longjmp, 0xC0uLL);
        if (!setjmp(v14))
        {
          if (*(a1 + 40))
          {
            sub_10038935C(v11, a1, sub_1002BD1F8, nullsub_34);
          }

          else
          {
            if (*(a1 + 24))
            {
              v15 = *(a1 + 24);
            }

            else
            {
              v15 = "";
            }

            v42 = fopen(v15, "wb");
            if (v42)
            {
              sub_100376E74(v11, v42);
            }
          }

          v16 = *a3;
          v17 = a3[1];
          if (v17 != *a3)
          {
            v18 = 0;
            v19 = (v17 - *a3) >> 2;
            v20 = -1;
            v21 = 3;
            v22 = 0;
            while (1)
            {
              v27 = v22;
              v28 = *(v16 + 4 * v22);
              switch(v28)
              {
                case 18:
                  v18 = *(v16 + 4 * v27 + 4) != 0;
                  break;
                case 17:
                  v23 = *(v16 + 4 * v27 + 4) & ~(*(v16 + 4 * v27 + 4) >> 31);
                  if (v23 >= 4)
                  {
                    v24 = 4;
                  }

                  else
                  {
                    v24 = v23;
                  }

                  goto LABEL_17;
                case 16:
                  v24 = 0;
                  if ((*(v16 + 4 * v27 + 4) & ~(*(v16 + 4 * v27 + 4) >> 31)) >= 9)
                  {
                    v20 = 9;
                  }

                  else
                  {
                    v20 = *(v16 + 4 * v27 + 4) & ~(*(v16 + 4 * v27 + 4) >> 31);
                  }

                  goto LABEL_17;
              }

              v24 = v21;
LABEL_17:
              v25 = v18;
              v22 = v27 + 2;
              v26 = v20;
              v21 = v24;
              if (v22 >= v19)
              {
                goto LABEL_27;
              }
            }
          }

          LODWORD(v24) = 3;
          v26 = -1;
          v25 = 0;
LABEL_27:
          if (*(a1 + 40) || v42)
          {
            v29 = v26;
            if (v26 < 0)
            {
              sub_10038A10C(v11, 0, 0x10u);
              v29 = 1;
            }

            sub_10038A310(v11, v29);
            sub_10038A31C(v11, v24);
            v30 = (v9 >> 3) & 0x1FF;
            if (v25)
            {
              v31 = 1;
            }

            else
            {
              v31 = 8;
            }

            if ((v9 & 7) != 0)
            {
              v32 = 16;
            }

            else
            {
              v32 = v31;
            }

            if (v30 == 2)
            {
              v33 = 2;
            }

            else
            {
              v33 = 6;
            }

            if (v30)
            {
              v34 = v33;
            }

            else
            {
              v34 = 0;
            }

            sub_100387868(v11, v13, v7, v8, v32, v34, 0, 0, 0);
            sub_100389590(v11, v13);
            if (v25)
            {
              sub_10038891C(v11);
            }

            sub_1003888E8(v11);
            sub_1003888FC(v11);
            if (v8 > 0x88)
            {
              operator new[]();
            }

            if (v8 >= 1)
            {
              v35 = *(a2 + 10);
              v36 = v8;
              v37 = 0;
              v38 = v40;
              do
              {
                *v38++ = *(a2 + 2) + v37;
                v37 += v35;
                --v36;
              }

              while (v36);
            }

            sub_100389F50(v11, v40);
            sub_100389908(v11, v13);
            v41 = 1;
          }
        }
      }
    }

    sub_10038A044(&v44, &v43);
    if (v42)
    {
      fclose(v42);
    }

    return v41;
  }

  return v10;
}

void sub_1002BD7D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10 != v10 && a10 != 0)
  {
    operator delete[]();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002BD824(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v2 = a1;
    (*(*v1 + 8))(a1[2]);
    a1 = v2;
  }

  v3 = *(*a1 + 8);

  return v3();
}

uint64_t sub_1002BD8C0(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v2 = a1;
    (*(*v1 + 8))(a1[2]);
    a1 = v2;
  }

  v3 = *(*a1 + 8);

  return v3();
}

uint64_t sub_1002BD944(uint64_t a1)
{
  sub_1002B43DC(a1);
  *v2 = off_100476A40;
  sub_1002B2A0C((v2 + 20));
  *(a1 + 160) = off_100475928;
  *(a1 + 152) = 1;
  *(a1 + 1248) = 0xFFFFFFFF00000000;
  *(a1 + 1256) = 0;
  *(a1 + 1260) = 0;
  return a1;
}

uint64_t sub_1002BD9D4(void *a1)
{
  *a1 = off_100476A40;
  v2 = a1 + 20;
  sub_1002B30EC((a1 + 20));
  sub_1002B31A0(v2);

  return sub_1002B4AA0(a1);
}

void sub_1002BDA3C(void *a1)
{
  *a1 = off_100476A40;
  v2 = a1 + 20;
  sub_1002B30EC((a1 + 20));
  sub_1002B31A0(v2);
  sub_1002B4AA0(a1);

  operator delete();
}

BOOL sub_1002BDAC0(uint64_t a1, void *a2)
{
  if (a2[1] < 3uLL)
  {
    return 0;
  }

  v2 = *a2;
  if (**a2 != 80 || v2[1] - 49 > 5)
  {
    return 0;
  }

  v3 = v2[2];
  if (v3 < 0)
  {
    return __maskrune(v3, 0x4000uLL) != 0;
  }

  else
  {
    return (_DefaultRuneLocale.__runetype[v3] & 0x4000) != 0;
  }
}

FILE *sub_1002BDCEC(uint64_t a1)
{
  if (!*(a1 + 72))
  {
    goto LABEL_13;
  }

  v2 = *(a1 + 60);
  if (v2 >= 3)
  {
    v4 = *(a1 + 120);
    v5 = (v4 + 4);
    v6 = 1;
    v7 = v2 & 0x7FFFFFFE;
    v8 = 1;
    do
    {
      v6 *= *(v5 - 1);
      v8 *= *v5;
      v5 += 2;
      v7 -= 2;
    }

    while (v7);
    v3 = v8 * v6;
    v9 = v2 - (v2 & 0x7FFFFFFE);
    if (v9)
    {
      v10 = (v4 + 8 * ((v2 >> 1) & 0x3FFFFFFF));
      do
      {
        v11 = *v10++;
        v3 *= v11;
        --v9;
      }

      while (v9);
    }
  }

  else
  {
    v3 = *(a1 + 68) * *(a1 + 64);
  }

  if (v2 && v3)
  {
    if ((sub_1002B2F4C(a1 + 160, a1 + 56) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
LABEL_13:
    result = sub_1002B2E6C(a1 + 160, (a1 + 24));
    if (!result)
    {
      return result;
    }
  }

  if (sub_1002B32E0((a1 + 160)) != 80)
  {
    exception = __cxa_allocate_exception(0x58uLL);
    sub_1001FA81C(v23, "Invalid header");
    sub_1001FA81C(v22, "readHeader");
    sub_1001FA81C(v21, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgcodecs/src/grfmt_pxm.cpp");
    sub_1002A833C(exception, -2, v23, v22, v21, 155);
    *exception = &off_100476820;
  }

  v13 = sub_1002B32E0((a1 + 160));
  v14 = v13 - 49;
  if (v13 - 49 >= 6)
  {
    v19 = __cxa_allocate_exception(0x58uLL);
    sub_1001FA81C(v23, "Invalid header");
    sub_1001FA81C(v22, "readHeader");
    sub_1001FA81C(v21, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgcodecs/src/grfmt_pxm.cpp");
    sub_1002A833C(v19, -2, v23, v22, v21, 163);
    *v19 = &off_100476820;
  }

  v15 = dword_1003E658C[v14];
  v16 = dword_1003E65A4[v14];
  *(a1 + 1248) = v15;
  *(a1 + 1256) = v13 > 0x33;
  *(a1 + 16) = v16;
  *(a1 + 8) = sub_1002BE240((a1 + 160), 0);
  *(a1 + 12) = sub_1002BE240((a1 + 160), 0);
  if (*(a1 + 1248) == 1)
  {
    v17 = 1;
    *(a1 + 1260) = 1;
  }

  else
  {
    v17 = sub_1002BE240((a1 + 160), 0);
    *(a1 + 1260) = v17;
    if (v17 >= 0x10000)
    {
      v20 = __cxa_allocate_exception(0x58uLL);
      sub_1001FA81C(v23, "Invalid header");
      sub_1001FA81C(v22, "readHeader");
      sub_1001FA81C(v21, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgcodecs/src/grfmt_pxm.cpp");
      sub_1002A833C(v20, -2, v23, v22, v21, 174);
      *v20 = &off_100476820;
    }

    if (v17 >= 256)
    {
      *(a1 + 16) = *(a1 + 16) & 0xFF8 | 2;
    }
  }

  if (*(a1 + 8) < 1 || *(a1 + 12) < 1 || v17 < 1)
  {
    *(a1 + 1252) = -1;
    *(a1 + 8) = -1;
    sub_1002B30EC(a1 + 160);
    return 0;
  }

  else
  {
    *(a1 + 1252) = sub_1002B2E50((a1 + 160));
    return 1;
  }
}

void sub_1002BE0C8(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  sub_1002A8124(&a9);
  sub_1002A8124(&a11);
  sub_1002A8124(&a13);
  if (v14)
  {
    __cxa_free_exception(v13);
  }

  __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    __cxa_rethrow();
  }

  v17 = sub_100241184(&std::cerr, "PXM::readHeader(): unknown C++ exception", 40);
  sub_100241C10(v17);
  std::ostream::flush();
  __cxa_rethrow();
}

uint64_t sub_1002BE240(void *a1, int a2)
{
LABEL_1:
  v4 = sub_1002B32E0(a1);
  while (1)
  {
LABEL_2:
    if (v4 > 0xFF)
    {
LABEL_6:
      if (!__maskrune(v4, 0x4000uLL))
      {
        goto LABEL_26;
      }

      goto LABEL_7;
    }

    v5 = _DefaultRuneLocale.__runetype[v4];
    if ((v5 & 0x400) != 0)
    {
      break;
    }

    if (v4 == 35)
    {
      do
      {
        v6 = sub_1002B32E0(a1);
      }

      while (v6 != 10 && v6 != 13);
      goto LABEL_1;
    }

    if (v4 > 0x7F)
    {
      goto LABEL_6;
    }

    if ((v5 & 0x4000) == 0)
    {
LABEL_26:
      sub_1002A8688(v10, "PXM: Unexpected code in ReadNumber(): 0x%x (%d)", v4, HIDWORD(v4));
      sub_1002BF15C(v10, "ReadNumber", 80);
    }

LABEL_7:
    if (v4 <= 0x7F)
    {
      goto LABEL_10;
    }

    while (__maskrune(v4, 0x4000uLL))
    {
      while (1)
      {
        v4 = sub_1002B32E0(a1);
        if (v4 > 0x7F)
        {
          break;
        }

LABEL_10:
        if ((_DefaultRuneLocale.__runetype[v4] & 0x4000) == 0)
        {
          goto LABEL_2;
        }
      }
    }
  }

  if (a2)
  {
    return (v4 - 48);
  }

  v7 = 0;
  do
  {
    v7 = 10 * v7 + v4 - 48;
    if (v7 >= 0x80000000)
    {
      v10[0] = 0;
      v10[1] = 0;
      qmemcpy(sub_1002A80E0(v10, 61), "val <= 2147483647 && PXM: ReadNumber(): result is too large", 61);
      sub_1002A8980(-215, v10, "ReadNumber", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgcodecs/src/grfmt_pxm.cpp", 90);
    }

    v8 = sub_1002B32E0(a1);
    if (v8 > 0xFF)
    {
      break;
    }

    LODWORD(v4) = v8;
  }

  while ((_DefaultRuneLocale.__runetype[v8] & 0x400) != 0);
  return v7;
}

void sub_1002BE420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1002A8124(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002BE44C(uint64_t a1, int *a2)
{
  if ((*(a1 + 1252) & 0x80000000) != 0)
  {
    return 0;
  }

  v4 = *a2;
  v5 = *(a2 + 2);
  v6 = *(a1 + 16);
  v7 = *(a1 + 8);
  v8 = *(a1 + 1248);
  result = sub_1002B29A4(a1 + 160);
  if (!result)
  {
    return result;
  }

  v10 = 0x442211088uLL >> (4 * (v6 & 7));
  v11 = v10 & 0x78;
  memset(v122, 0, 256);
  if (v11 == 8)
  {
    v12 = *(a1 + 1260);
    if (v12 >= 256)
    {
      v116 = 0;
      v117 = 0;
      qmemcpy(sub_1002A80E0(&v116, 14), "m_maxval < 256", 14);
      sub_1002A8980(-215, &v116, "readData", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgcodecs/src/grfmt_pxm.cpp", 226);
    }

    v13 = *(a1 + 1248);
    if ((v12 & 0x80000000) != 0)
    {
      goto LABEL_20;
    }

    if (v13 == 1)
    {
      v14 = -1;
    }

    else
    {
      v14 = 0;
    }

    v15 = v12 + 1;
    if (v12)
    {
      v16 = 0;
      v17 = v15 & 0xFFFFFFFE;
      v18 = &v122[1];
      do
      {
        *(v18 - 1) = (v16 / v12) ^ v14;
        *v18 = ((v16 + 255) / v12) ^ v14;
        v18 += 2;
        v16 += 510;
      }

      while (510 * (v15 >> 1) != v16);
      if (v17 == v15)
      {
LABEL_20:
        if (v13 == 1)
        {
          v22 = 1;
        }

        else
        {
          v22 = 8;
        }

        sub_1002C7958(v123, v22, v13 == 1);
        goto LABEL_24;
      }
    }

    else
    {
      v17 = 0;
    }

    v19 = 255 * v17;
    v20 = &v122[v17];
    v21 = v15 - v17;
    do
    {
      *v20++ = (v19 / v12) ^ v14;
      v19 += 255;
      --v21;
    }

    while (v21);
    goto LABEL_20;
  }

LABEL_24:
  sub_1002B2E24(a1 + 160, *(a1 + 1252));
  v23 = v4 & 0xFF8;
  v115 = (v8 * v7 * ((v10 >> 3) & 0xF) + 7) >> 3;
  v24 = *(a1 + 1248);
  if (v24 == 1)
  {
    if ((*(a1 + 16) & 7) != 0)
    {
      v116 = 0;
      v117 = 0;
      qmemcpy(sub_1002A80E0(&v116, 32), "((m_type) & ((1 << 3) - 1)) == 0", 32);
      sub_1002A8980(-215, &v116, "readData", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgcodecs/src/grfmt_pxm.cpp", 242);
    }

    if (*(a1 + 1256))
    {
      v116 = &v118;
      v117 = (v8 * v7 * ((v10 >> 3) & 0xF) + 7) >> 3;
      if (v115 >= 0x409)
      {
        operator new[]();
      }

      if (*(a1 + 12) >= 1)
      {
        if ((v4 & 0xFF8) != 0)
        {
          v103 = 0;
          do
          {
            sub_1002B33BC(a1 + 160, &v118, v115);
            sub_1002C815C(v5, &v118, *(a1 + 8), v123);
            ++v103;
            v5 = (v5 + *(a2 + 10));
          }

          while (v103 < *(a1 + 12));
        }

        else
        {
          do
          {
            sub_1002B33BC(a1 + 160, &v118, v115);
            sub_1002C8260(v5, &v118, *(a1 + 8), v122);
            ++v23;
            v5 = (v5 + *(a2 + 10));
          }

          while (v23 < *(a1 + 12));
        }
      }

      if (v116 != &v118 && v116 != 0)
      {
        goto LABEL_176;
      }
    }

    else
    {
      v105 = *(a1 + 8);
      v116 = &v118;
      v117 = v105;
      if (v105 >= 0x409)
      {
        operator new[]();
      }

      if (*(a1 + 12) >= 1)
      {
        v106 = 0;
        if ((v4 & 0xFF8) != 0)
        {
          do
          {
            LODWORD(v107) = *(a1 + 8);
            if (v107 >= 1)
            {
              v108 = 0;
              do
              {
                v119[v108++ - 2] = sub_1002BE240((a1 + 160), 1) != 0;
                v107 = *(a1 + 8);
              }

              while (v108 < v107);
            }

            sub_1002C7FE4(v5, &v118, v107, v123);
            ++v106;
            v5 = (v5 + *(a2 + 10));
          }

          while (v106 < *(a1 + 12));
        }

        else
        {
          do
          {
            LODWORD(v109) = *(a1 + 8);
            if (v109 >= 1)
            {
              v110 = 0;
              do
              {
                v119[v110++ - 2] = sub_1002BE240((a1 + 160), 1) != 0;
                v109 = *(a1 + 8);
              }

              while (v110 < v109);
            }

            sub_1002C8034(v5, &v118, v109, v122);
            ++v106;
            v5 = (v5 + *(a2 + 10));
          }

          while (v106 < *(a1 + 12));
        }
      }

      if (v116 != &v118 && v116 != 0)
      {
        goto LABEL_176;
      }
    }
  }

  else
  {
    if (v24 != 8 && v24 != 24)
    {
      sub_1001FA81C(&v116, "m_bpp is not supported");
      sub_1002BF15C(&v116, "readData", 357);
    }

    v25 = v7 + v7 * ((v6 >> 3) & 0x1FF);
    if (2 * v25 <= v115)
    {
      v26 = v115;
    }

    else
    {
      v26 = 2 * v25;
    }

    v116 = &v118;
    v117 = v26;
    v27 = &v118;
    if (v26 >= 0x409)
    {
      operator new[]();
    }

    if (*(a1 + 12) >= 1)
    {
      v28 = 0;
      v30 = v11 != 16 || v25 < 1;
      v114 = v30;
      v112 = ~&v118;
      v113 = v25 & 0x7FFFFFE0;
      while ((*(a1 + 1256) & 1) == 0)
      {
        if (v25 < 1)
        {
          goto LABEL_82;
        }

        for (i = 0; i != v25; ++i)
        {
          while (1)
          {
            v33 = sub_1002BE240((a1 + 160), 0);
            v34 = *(a1 + 1260);
            if (v33 < v34)
            {
              v34 = v33;
            }

            if (v11 == 8)
            {
              break;
            }

            *&v119[2 * i++ - 2] = v34;
            if (v25 == i)
            {
              goto LABEL_65;
            }
          }

          v119[i - 2] = v122[v34];
        }

LABEL_65:
        if (v11 == 16 && (*a2 & 7) == 0 && v25 >= 1)
        {
          if (v25 < 4)
          {
            v48 = 0;
            do
            {
LABEL_81:
              v119[v48 - 2] = v119[2 * v48 - 1];
              ++v48;
            }

            while (v25 != v48);
            goto LABEL_82;
          }

          if (v25 >= 0x20)
          {
            v50 = v25 & 0x7FFFFFE0;
            v51 = v120;
            v52 = v121;
            do
            {
              v54 = v52[-2];
              v53 = v52[-1];
              v56 = *v52;
              v55 = v52[1];
              v52 += 4;
              v51[-1] = vuzp2q_s8(v54, v53);
              *v51 = vuzp2q_s8(v56, v55);
              v51 += 2;
              v50 -= 32;
            }

            while (v50);
            if (v113 == v25)
            {
              goto LABEL_82;
            }

            v48 = v25 & 0x7FFFFFE0;
            v49 = v48;
            if ((v25 & 0x1C) == 0)
            {
              goto LABEL_81;
            }
          }

          else
          {
            v49 = 0;
          }

          v57 = &v119[2 * v49 - 2];
          v58 = &v119[v49 - 2];
          v59 = v49 - (v25 & 0x7FFFFFFC);
          do
          {
            v60 = *v57++;
            v61 = vshr_n_u16(v60, 8uLL);
            *v58++ = vuzp1_s8(v61, v61).u32[0];
            v59 += 4;
          }

          while (v59);
          v48 = v25 & 0x7FFFFFFC;
          if (v48 != v25)
          {
            goto LABEL_81;
          }
        }

LABEL_82:
        v62 = *a2;
        if (*(a1 + 1248) != 8)
        {
          v72 = *a2 & 7;
          v73 = *(a1 + 8);
          if (v23)
          {
            if (v72)
            {
              sub_1002C62D4(&v118, 0, v5, 0, v73 | &_mh_execute_header);
            }

            else
            {
              sub_1002C6134(&v118, 0, v5, 0, v73 | &_mh_execute_header);
            }
          }

          else if (v72)
          {
            sub_1002C5BE4(&v118, 0, v5, 0, v73 | &_mh_execute_header, 3, 2);
          }

          else
          {
            sub_1002C5924(&v118, 0, v5, 0, v73 | &_mh_execute_header, 2);
          }

          goto LABEL_41;
        }

        if (v23)
        {
          v63 = *(a1 + 8);
          if ((v62 & 7) != 0)
          {
            if (v63 >= 1)
            {
              v64 = &v119[2 * v63 - 2];
              v65 = v119;
              if (v64 > v119)
              {
                v65 = v64;
              }

              v66 = &v65[v112];
              v67 = &v118;
              v68 = v5;
              if (&v65[v112] < 6)
              {
                goto LABEL_129;
              }

              v69 = v5 >= &v119[v66 & 0xFFFFFFFFFFFFFFFELL] || &v118 >= v5 + 3 * (v66 >> 1) + 3;
              v67 = &v118;
              v68 = v5;
              if (!v69)
              {
                goto LABEL_129;
              }

              v70 = (v66 >> 1) + 1;
              if (v66 >= 0x1E)
              {
                v71 = v70 & 0xFFFFFFFFFFFFFFF0;
                v80 = v5;
                v81 = v70 & 0xFFFFFFFFFFFFFFF0;
                v82 = v120;
                do
                {
                  v129.val[0] = v82[-1];
                  v131.val[0] = *v82;
                  v129.val[1] = v129.val[0];
                  v129.val[2] = v129.val[0];
                  v131.val[1] = *v82;
                  v131.val[2] = *v82;
                  v83 = v80 + 48;
                  vst3q_s16(v80, v129);
                  v84 = v80 + 24;
                  vst3q_s16(v84, v131);
                  v82 += 2;
                  v80 = v83;
                  v81 -= 16;
                }

                while (v81);
                if (v70 == v71)
                {
                  goto LABEL_41;
                }

                if ((v70 & 0xC) == 0)
                {
                  v68 = (v5 + 6 * v71);
                  v67 = &v119[2 * v71 - 2];
LABEL_129:
                  v98 = v68 + 1;
                  do
                  {
                    v99 = *v67++;
                    *v98 = v99;
                    *(v98 - 1) = v99;
                    *(v98 - 2) = v99;
                    v98 += 3;
                  }

                  while (v67 < v64);
                  goto LABEL_41;
                }
              }

              else
              {
                v71 = 0;
              }

              v67 = &v119[2 * (v70 & 0xFFFFFFFFFFFFFFFCLL) - 2];
              v68 = (v5 + 6 * (v70 & 0xFFFFFFFFFFFFFFFCLL));
              v85 = &v119[2 * v71 - 2];
              v86 = v71 - (v70 & 0xFFFFFFFFFFFFFFFCLL);
              v87 = v5 + 3 * v71;
              do
              {
                v88 = *v85++;
                v127.val[0] = v88;
                v127.val[1] = v88;
                v127.val[2] = v88;
                vst3_s16(v87, v127);
                v87 += 12;
                v86 += 4;
              }

              while (v86);
              if (v70 == (v70 & 0xFFFFFFFFFFFFFFFCLL))
              {
                goto LABEL_41;
              }

              goto LABEL_129;
            }
          }

          else if (v63 >= 1)
          {
            v74 = &v119[v63 - 2];
            if (v74 <= (&v118 + 1))
            {
              v75 = (&v118 + 1);
            }

            else
            {
              v75 = v74;
            }

            v76 = v75 - &v118;
            v77 = &v118;
            v78 = v5;
            if ((v75 - &v118) >= 8)
            {
              if (v5 >= v75 || (v77 = &v118, v78 = v5, &v118 >= (v5 + 3 * v75 + -3 * &v118)))
              {
                if (v76 >= 0x20)
                {
                  v79 = v76 & 0xFFFFFFFFFFFFFFE0;
                  v89 = v5;
                  v90 = v76 & 0xFFFFFFFFFFFFFFE0;
                  v91 = v120;
                  do
                  {
                    v130.val[0] = v91[-1];
                    v132.val[0] = *v91;
                    v130.val[1] = v130.val[0];
                    v130.val[2] = v130.val[0];
                    v132.val[1] = *v91;
                    v132.val[2] = *v91;
                    v92 = v89 + 96;
                    vst3q_s8(v89, v130);
                    v93 = v89 + 48;
                    vst3q_s8(v93, v132);
                    v91 += 2;
                    v89 = v92;
                    v90 -= 32;
                  }

                  while (v90);
                  if (v76 == v79)
                  {
                    goto LABEL_41;
                  }

                  if ((v76 & 0x18) != 0)
                  {
                    goto LABEL_124;
                  }

                  v78 = (v5 + 3 * v79);
                  v77 = &v119[v79 - 2];
                }

                else
                {
                  v79 = 0;
LABEL_124:
                  v77 = &v119[(v76 & 0xFFFFFFFFFFFFFFF8) - 2];
                  v78 = (v5 + 3 * (v76 & 0xFFFFFFFFFFFFFFF8));
                  v94 = &v119[v79 - 2];
                  v95 = v79 - (v76 & 0xFFFFFFFFFFFFFFF8);
                  v96 = v5 + 3 * v79;
                  do
                  {
                    v97 = *v94++;
                    v128.val[0] = v97;
                    v128.val[1] = v97;
                    v128.val[2] = v97;
                    vst3_s8(v96, v128);
                    v96 += 24;
                    v95 += 8;
                  }

                  while (v95);
                  if (v76 == (v76 & 0xFFFFFFFFFFFFFFF8))
                  {
                    goto LABEL_41;
                  }
                }
              }
            }

            v100 = v78 + 2;
            do
            {
              v101 = *v77;
              v77 = (v77 + 1);
              *v100 = v101;
              *(v100 - 1) = v101;
              *(v100 - 2) = v101;
              v100 += 3;
            }

            while (v77 < v74);
          }
        }

        else
        {
          memcpy(v5, &v118, ((0x88442211uLL >> (4 * (v62 & 7u))) & 0xF) * *(a1 + 8));
        }

LABEL_41:
        ++v28;
        v5 = (v5 + *(a2 + 10));
        if (v28 >= *(a1 + 12))
        {
          v27 = v116;
          goto LABEL_137;
        }
      }

      sub_1002B33BC(a1 + 160, &v118, v115);
      if (v114)
      {
        goto LABEL_82;
      }

      if (v25 < 8)
      {
        v31 = 0;
LABEL_63:
        v44 = &v119[2 * v31 - 1];
        v45 = v25 - v31;
        do
        {
          v46 = *(v44 - 1);
          *(v44 - 1) = *v44;
          *v44 = v46;
          v44 += 2;
          --v45;
        }

        while (v45);
        goto LABEL_65;
      }

      if (v25 >= 0x20)
      {
        v36 = v25 & 0x7FFFFFE0;
        v37 = v121;
        do
        {
          v38 = v37 - 32;
          v125 = vld2q_s8(v38);
          v126 = vld2q_s8(v37);
          v39 = v125.val[0];
          v40 = v126.val[0];
          vst2q_s8(v38, *(&v125 + 16));
          vst2q_s8(v37, *(&v126 + 16));
          v37 += 64;
          v36 -= 32;
        }

        while (v36);
        if (v113 == v25)
        {
          goto LABEL_65;
        }

        v31 = v25 & 0x7FFFFFE0;
        v35 = v31;
        if ((v25 & 0x18) == 0)
        {
          goto LABEL_63;
        }
      }

      else
      {
        v35 = 0;
      }

      v41 = &v119[2 * v35 - 2];
      v42 = v35 - (v25 & 0x7FFFFFF8);
      do
      {
        v124 = vld2_s8(v41);
        v43 = v124.val[0];
        vst2_s8(v41, *(&v124 + 8));
        v41 += 16;
        v42 += 8;
      }

      while (v42);
      v31 = v25 & 0x7FFFFFF8;
      if (v31 == v25)
      {
        goto LABEL_65;
      }

      goto LABEL_63;
    }

LABEL_137:
    if (v27 != &v118 && v27 != 0)
    {
LABEL_176:
      operator delete[]();
    }
  }

  return 1;
}

uint64_t sub_1002BF188(uint64_t a1)
{
  sub_1002B4744(a1);
  *v2 = off_100476AB0;
  v3 = v2 + 1;
  sub_1002A8124(v2 + 1);
  qmemcpy(sub_1002A80E0(v3, 53), "Portable image format (*.pbm;*.pgm;*.ppm;*.pxm;*.pnm)", 53);
  *(a1 + 48) = 1;
  return a1;
}

uint64_t *sub_1002BF220(uint64_t *a1)
{
  *a1 = off_100475B70;
  sub_1002A8124(a1 + 7);
  sub_1002A8124(a1 + 3);
  sub_1002A8124(a1 + 1);
  return a1;
}

void sub_1002BF280(uint64_t *a1)
{
  *a1 = off_100475B70;
  sub_1002A8124(a1 + 7);
  sub_1002A8124(a1 + 3);
  sub_1002A8124(a1 + 1);

  operator delete();
}

uint64_t sub_1002BF4B8(uint64_t a1, unsigned int *a2, uint64_t *a3)
{
  v5 = *a2;
  v4 = a2[1];
  v6 = (*a2 >> 3) & 0x1FF;
  if (v6)
  {
    v7 = 3;
  }

  else
  {
    v7 = 1;
  }

  if (v4 >= 1)
  {
    v8 = *(*(a2 + 9) + 8 * v4 - 8);
    v9 = *a3;
    v10 = a3[1];
    v11 = v10 - *a3;
    if (v10 != *a3)
    {
      goto LABEL_6;
    }

LABEL_11:
    v14 = 1;
    goto LABEL_12;
  }

  v8 = 0;
  v9 = *a3;
  v15 = a3[1];
  v11 = v15 - *a3;
  if (v15 == *a3)
  {
    goto LABEL_11;
  }

LABEL_6:
  v12 = 0;
  v13 = v11 >> 2;
  v14 = 1;
  do
  {
    if (*(v9 + 4 * v12) == 32)
    {
      v14 = *(v9 + 4 * v12 + 4) != 0;
    }

    v12 += 2;
  }

  while (v12 < v13);
LABEL_12:
  v16 = a2[3];
  v69 = a2[2];
  sub_1002B3710(v72);
  v68 = v8 * v16;
  v72[0] = off_100475A08;
  v17 = *(a1 + 40);
  if (v17)
  {
    if (sub_1002B3B44(v72, v17))
    {
      v18 = v8 * v16;
      if (!v14)
      {
        switch(*a2 & 7 | (8 * v7))
        {
          case 8u:
            v19 = 4;
            break;
          case 0x18u:
            v19 = 14;
            break;
          case 0xAu:
            v19 = 6;
            break;
          default:
            v19 = 20;
            break;
        }

        v18 = (v19 * v16) | 1;
      }

      v21 = v18 * v69;
      if (*(*(a1 + 40) + 16) - **(a1 + 40) < ((v21 + 511) & 0xFFFFFFFFFFFFFF00))
      {
        if (v21 > -512)
        {
          operator new();
        }

        sub_10000918C();
      }

      goto LABEL_28;
    }

LABEL_19:
    v20 = 0;
    goto LABEL_112;
  }

  if (!sub_1002B3A90(v72, (a1 + 24)))
  {
    goto LABEL_19;
  }

LABEL_28:
  if (v14)
  {
    v22 = a2[1];
    v23 = v69;
    if (v22 < 1)
    {
      v24 = 0;
    }

    else
    {
      v24 = *(*(a2 + 9) + 8 * v22 - 8) * v16;
    }
  }

  else
  {
    v24 = (6 * v7 + 2 * (v6 != 0)) * v16 + 32;
    v23 = v69;
  }

  if (v24 <= 128)
  {
    v25 = 128;
  }

  else
  {
    v25 = v24;
  }

  v73 = v75;
  v74 = v25;
  if (v24 >= 1033)
  {
    operator new[]();
  }

  v70 = v14;
  v71 = (0x88442211 >> (4 * (v5 & 7))) & 0xF;
  if (v6)
  {
    v26 = 51;
  }

  else
  {
    v26 = 50;
  }

  if (v14)
  {
    v27 = 3;
  }

  else
  {
    v27 = 0;
  }

  v67 = v16;
  sprintf(v75, "P%c\n# Generated by OpenCV %s\n%d %d\n%d\n", (v27 + v26), "3.4.0", v16, v23, ~(-1 << (8 * v71)));
  v28 = strlen(v75);
  sub_1002B3DD0(v72, v75, v28);
  v29 = a2;
  if (v23 >= 1)
  {
    v30 = 0;
    v31 = v7 * v16;
    if (v6)
    {
      v32 = 1;
    }

    else
    {
      v32 = v71 > 1;
    }

    v33 = v32;
    v65 = v33;
    v34 = 2 * v31;
    v36 = v71 != 2 || 2 * v31 < 1;
    v63 = v36;
    v37 = 2;
    if (v34 > 2)
    {
      v37 = 2 * v31;
    }

    v62 = ((v37 - 1) >> 1) + 1;
    v66 = v6;
    do
    {
      v39 = **(v29 + 9);
      v40 = (*(v29 + 2) + v39 * v30);
      if (v70)
      {
        if (v6 == 2)
        {
          if (v71 == 1)
          {
            sub_1002C6134(v40, 0, v75, 0, v67 | &_mh_execute_header);
          }

          else
          {
            sub_1002C62D4((*(v29 + 2) + v39 * v30), 0, v75, 0, v67 | &_mh_execute_header);
            if (!v63)
            {
              goto LABEL_81;
            }
          }

LABEL_61:
          if (v65)
          {
            v38 = v75;
          }

          else
          {
            v38 = v40;
          }

          sub_1002B3DD0(v72, v38, v68);
          goto LABEL_65;
        }

        if (v71 != 2)
        {
          goto LABEL_61;
        }

        if (!v6)
        {
          memcpy(v75, (*(v29 + 2) + v39 * v30), v68);
        }

        if (v34 < 1)
        {
          goto LABEL_61;
        }

LABEL_81:
        if (v34 < 0xF)
        {
          v43 = 0;
          goto LABEL_105;
        }

        if (v34 < 0x3F)
        {
          v50 = 0;
          goto LABEL_102;
        }

        v51 = v62 & 0x7FFFFFFFFFFFFFE0;
        v52 = &v76;
        do
        {
          v53 = v52 - 32;
          v78 = vld2q_s8(v53);
          v79 = vld2q_s8(v52);
          v54 = v78.val[0];
          v55 = v79.val[0];
          vst2q_s8(v53, *(&v78 + 16));
          vst2q_s8(v52, *(&v79 + 16));
          v52 += 64;
          v51 -= 32;
        }

        while (v51);
        if (v62 == (v62 & 0x7FFFFFFFFFFFFFE0))
        {
          goto LABEL_61;
        }

        v50 = v62 & 0x7FFFFFFFFFFFFFE0;
        v43 = 2 * (v62 & 0x7FFFFFFFFFFFFFE0);
        if ((v62 & 0x18) != 0)
        {
LABEL_102:
          v56 = &v75[v50];
          v57 = v50 - (v62 & 0x7FFFFFFFFFFFFFF8);
          do
          {
            v77 = vld2_s8(v56);
            v58 = v77.val[0];
            vst2_s8(v56, *(&v77 + 8));
            v56 += 16;
            v57 += 8;
          }

          while (v57);
          v43 = 2 * (v62 & 0x7FFFFFFFFFFFFFF8);
          if (v62 == (v62 & 0x7FFFFFFFFFFFFFF8))
          {
            goto LABEL_61;
          }
        }

LABEL_105:
        v59 = &v75[v43 / 2] + 1;
        do
        {
          v60 = *(v59 - 1);
          *(v59 - 1) = *v59;
          *v59 = v60;
          v59 += 2;
          v43 += 2;
        }

        while (v43 < v34);
        goto LABEL_61;
      }

      if (!v6)
      {
        v41 = v75;
        if (v71 == 1)
        {
          if (v67 >= 1)
          {
            v44 = v67;
            v41 = v75;
            do
            {
              v45 = *v40++;
              sprintf(v41, "% 4d", v45);
              v41 += 2;
              --v44;
            }

            while (v44);
          }
        }

        else if (v67 >= 1)
        {
          v48 = v67;
          v41 = v75;
          do
          {
            v49 = *v40;
            v40 += 2;
            sprintf(v41, "% 6d", v49);
            v41 += 3;
            --v48;
          }

          while (v48);
        }

        goto LABEL_95;
      }

      v41 = v75;
      if (v71 == 1)
      {
        if (v31 >= 1)
        {
          v42 = 0;
          v41 = v75;
          do
          {
            sprintf(v41, "% 4d", v40[v42 + 2]);
            sprintf(v41 + 4, "% 4d", v40[v42 + 1]);
            sprintf(v41 + 8, "% 4d", v40[v42]);
            v41[6] = 8224;
            v41 += 7;
            v42 += v7;
          }

          while (v31 > v42);
LABEL_91:
          v34 = 2 * v31;
          v29 = a2;
        }
      }

      else if (v31 >= 1)
      {
        v46 = 0;
        v41 = v75;
        do
        {
          v47 = &v40[2 * v46];
          sprintf(v41, "% 6d", v47[2]);
          sprintf(v41 + 6, "% 6d", v47[1]);
          sprintf(v41 + 12, "% 6d", *v47);
          v41[9] = 8224;
          v41 += 10;
          v46 += v7;
        }

        while (v31 > v46);
        goto LABEL_91;
      }

LABEL_95:
      *v41 = 10;
      sub_1002B3DD0(v72, v75, v41 - v75 + 1);
      v6 = v66;
      v23 = v69;
LABEL_65:
      ++v30;
    }

    while (v30 != v23);
  }

  sub_1002B3BD0(v72);
  if (v73 != v75 && v73)
  {
    operator delete[]();
  }

  v20 = 1;
LABEL_112:
  sub_1002B3C80(v72);
  return v20;
}

void sub_1002BFC38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, ...)
{
  va_start(va, a33);
  sub_1002B3C80(va);
  _Unwind_Resume(a1);
}

void sub_1002BFC4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, ...)
{
  va_start(va, a33);
  sub_1002B3C80(va);
  _Unwind_Resume(a1);
}

void sub_1002BFC60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  if (a42 != a21 && a42 != 0)
  {
    operator delete[]();
  }

  sub_1002B3C80(&a34);
  _Unwind_Resume(a1);
}

uint64_t sub_1002BFCD4(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v2 = a1;
    (*(*v1 + 8))(a1[2]);
    a1 = v2;
  }

  v3 = *(*a1 + 8);

  return v3();
}

uint64_t sub_1002BFD70(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v2 = a1;
    (*(*v1 + 8))(a1[2]);
    a1 = v2;
  }

  v3 = *(*a1 + 8);

  return v3();
}

uint64_t sub_1002BFDF4(uint64_t a1)
{
  sub_1002B43DC(a1);
  *v2 = off_100476BB8;
  sub_1002B2A0C((v2 + 20));
  *(a1 + 160) = off_100475990;
  *(a1 + 1252) = -1;
  sub_1002A8124((a1 + 40));
  *sub_1002A80E0((a1 + 40), 4) = -1788172711;
  *(a1 + 1248) = 0;
  *(a1 + 1256) = 1;
  *(a1 + 1264) = 0;
  return a1;
}

void sub_1002BFEB8(_Unwind_Exception *a1)
{
  sub_1002B3490(v2);
  sub_1002B4AA0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1002BFED8(void *a1)
{
  *a1 = off_100476BB8;
  sub_1002B3490((a1 + 20));

  return sub_1002B4AA0(a1);
}

void sub_1002BFF2C(void *a1)
{
  *a1 = off_100476BB8;
  sub_1002B3490((a1 + 20));
  sub_1002B4AA0(a1);

  operator delete();
}

FILE *sub_1002C007C(uint64_t a1)
{
  result = sub_1002B2E6C(a1 + 160, (a1 + 24));
  if (result)
  {
    sub_1002B3190(a1 + 160, 4);
    *(a1 + 8) = sub_1002B3698((a1 + 160));
    *(a1 + 12) = sub_1002B3698((a1 + 160));
    v3 = sub_1002B3698((a1 + 160));
    v4 = v3;
    *(a1 + 1248) = v3;
    sub_1002B3190(a1 + 160, 4);
    *(a1 + 1256) = sub_1002B3698((a1 + 160));
    *(a1 + 1260) = sub_1002B3698((a1 + 160));
    v5 = sub_1002B3698((a1 + 160));
    *(a1 + 1264) = v5;
    if (*(a1 + 8) < 1)
    {
      goto LABEL_40;
    }

    if (*(a1 + 12) < 1)
    {
      goto LABEL_40;
    }

    v6 = *(a1 + 1248);
    if (v6 > 0x20)
    {
      goto LABEL_40;
    }

    if (((1 << v6) & 0x101000102) == 0)
    {
      goto LABEL_40;
    }

    if (*(a1 + 1256) >= 2u)
    {
      v7 = *(a1 + 16);
      if (v7 != 3 && (v7 != 2 || v6 != 8))
      {
        goto LABEL_40;
      }
    }

    v8 = *(a1 + 1260);
    if (v8 != 1)
    {
      if (!v8 && !v5)
      {
        bzero((a1 + 224), 0x400uLL);
        *(a1 + 16) = 16 * (v6 > 8);
        if (v6 <= 8)
        {
          sub_1002C7958(a1 + 224, v6, 0);
        }

        v9 = sub_1002B2E50((a1 + 160));
LABEL_39:
        *(a1 + 1252) = v9;
        return 1;
      }

      goto LABEL_40;
    }

    if (v5 > 3 << v4 || v5 < 1 || v6 > 8 || (v10 = v5, bzero((a1 + 224), 0x400uLL), v11 = sub_1002B33BC(a1 + 160, __dst, v10), v11 != *(a1 + 1264)))
    {
LABEL_40:
      *(a1 + 1252) = -1;
      *(a1 + 8) = -1;
      sub_1002B30EC(a1 + 160);
      return 0;
    }

    if (v11 >= 3)
    {
      v12 = v11 / 3uLL;
      v13 = 2 * v12;
      if (v11 < 0x18)
      {
        v14 = 0;
        goto LABEL_33;
      }

      if (v11 >= 0x30)
      {
        v14 = v12 & 0x3FFFFFF0;
        v24 = __dst;
        v25 = 0uLL;
        v26 = v14;
        v27 = (a1 + 224);
        do
        {
          v28 = *&v24[v13];
          v29 = *&v24[v12];
          v30 = *v24;
          v24 += 16;
          v31 = v30;
          vst4q_s8(v27, *(&v25 - 3));
          v27 += 64;
          v26 -= 16;
        }

        while (v26);
        if (v14 == v12)
        {
          goto LABEL_35;
        }

        if ((v12 & 8) == 0)
        {
LABEL_33:
          v32 = &__dst[v14];
          v33 = (a1 + 4 * v14 + 227);
          do
          {
            *(v33 - 3) = v32[v13];
            *(v33 - 2) = v32[v12];
            v34 = *v32++;
            *(v33 - 1) = v34;
            *v33 = 0;
            v33 += 4;
            ++v14;
          }

          while (v12 != v14);
          goto LABEL_35;
        }
      }

      else
      {
        v14 = 0;
      }

      v15 = v14;
      v14 = v12 & 0x3FFFFFF8;
      v16 = (a1 + 4 * v15 + 224);
      v17 = &__dst[v15];
      v18 = v15 - v14;
      v19 = 0;
      do
      {
        v20 = *&v17[v13];
        v21 = *&v17[v12];
        v22 = *v17;
        v17 += 8;
        v23 = v22;
        vst4_s8(v16, *(&v19 - 3));
        v16 += 32;
        v18 += 8;
      }

      while (v18);
      if (v14 != v12)
      {
        goto LABEL_33;
      }
    }

LABEL_35:
    if (sub_1002C79E4((a1 + 224), *(a1 + 1248)))
    {
      v35 = 16;
    }

    else
    {
      v35 = 0;
    }

    *(a1 + 16) = v35;
    v9 = sub_1002B2E50((a1 + 160));
    goto LABEL_39;
  }

  return result;
}

uint64_t sub_1002C03B4(uint64_t a1, int *a2)
{
  v2 = *a2;
  v3 = *(a2 + 2);
  v47 = *(a2 + 10);
  v4 = *(a1 + 8);
  v5 = *(a1 + 1248) * v4;
  v7 = v5 + 7;
  v6 = v5 < -7;
  v8 = v5 + 14;
  if (v6)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

  v48 = *a2 & 0xFF8;
  memset(&v59, 0, 256);
  if ((v2 & 0xFF8) != 0)
  {
    v10 = 3;
  }

  else
  {
    v10 = 1;
  }

  if ((*(a1 + 1252) & 0x80000000) != 0)
  {
    return 0;
  }

  result = sub_1002B29A4(a1 + 160);
  if (result)
  {
    v13 = ((v9 >> 3) + 1) & 0xFFFFFFFE;
    v50 = 0;
    v54 = v56;
    v55 = (v13 + 32);
    if (v13 + 32 >= 0x409)
    {
      operator new[]();
    }

    v14 = 3 * *(a1 + 8) + 32;
    v51 = v53;
    v52 = v14;
    if (v14 >= 0x409)
    {
      operator new[]();
    }

    if (!v48 && *(a1 + 1260) == 1)
    {
      sub_1002C7778((a1 + 224), &v59, 1 << *(a1 + 1248));
    }

    sub_1002B2E24(a1 + 160, *(a1 + 1252));
    result = 0;
    v15 = *(a1 + 1248);
    if (v15 > 23)
    {
      if (v15 == 24)
      {
        v50 = 0;
        if (*(a1 + 12) >= 1)
        {
          if (v48)
          {
            do
            {
              sub_1002B33BC(a1 + 160, v3, ((v9 >> 3) + 1) & 0xFFFFFFFE);
              if (*(a1 + 16) == 3)
              {
                sub_1002C6134(v3, 0, v3, 0, *(a1 + 8) | &_mh_execute_header);
              }

              ++v50;
              v3 += v47;
            }

            while (v50 < *(a1 + 12));
          }

          else
          {
            do
            {
              sub_1002B33BC(a1 + 160, v53, ((v9 >> 3) + 1) & 0xFFFFFFFE);
              sub_1002C5924(v53, 0, v3, 0, *(a1 + 8) | &_mh_execute_header, 2 * (*(a1 + 16) == 3));
              ++v50;
              v3 += v47;
            }

            while (v50 < *(a1 + 12));
          }
        }
      }

      else
      {
        if (v15 != 32)
        {
          goto LABEL_91;
        }

        v50 = 0;
        if (*(a1 + 12) >= 1)
        {
          if (v48)
          {
            do
            {
              sub_1002B33BC(a1 + 160, &v57, v13);
              sub_1002C5F3C(v58, 0, v3, 0, *(a1 + 8) | &_mh_execute_header, 2 * (*(a1 + 16) == 3));
              ++v50;
              v3 += v47;
            }

            while (v50 < *(a1 + 12));
          }

          else
          {
            do
            {
              sub_1002B33BC(a1 + 160, &v57, v13);
              sub_1002C5C78(v58, 0, v3, 0, *(a1 + 8) | &_mh_execute_header, 2 * (*(a1 + 16) == 3));
              ++v50;
              v3 += v47;
            }

            while (v50 < *(a1 + 12));
          }
        }
      }

      goto LABEL_90;
    }

    if (v15 == 1)
    {
      if (*(a1 + 16) == 2)
      {
        v29 = *(a1 + 8);
        v30 = v29 + 7;
        v6 = v29 < -7;
        v31 = v29 + 14;
        if (!v6)
        {
          v31 = v30;
        }

        v32 = &v56[v31 >> 3];
        v50 = 0;
        do
        {
          v33 = v56;
          v34 = v56;
          while (2)
          {
            v35 = v32 - v33;
            if (v32 - v33 <= 1)
            {
              v36 = 1;
            }

            else
            {
              v36 = v35;
            }

            v37 = v36;
            while (1)
            {
              v38 = sub_1002B32E0((a1 + 160));
              v39 = v38;
              if (v38 == 128)
              {
                v40 = sub_1002B32E0((a1 + 160));
                v41 = v40;
                if (v40)
                {
                  break;
                }
              }

              *v34++ = v39;
              --v35;
              if (!--v37)
              {
                v34 = &v33[v36];
                goto LABEL_62;
              }
            }

            if (v40 >= 1)
            {
              v42 = sub_1002B32E0((a1 + 160));
              v43 = (v41 + 1);
              if (v35 < v43)
              {
                goto LABEL_99;
              }

              memset(v34, v42, (v41 + 1));
              v34 += v43;
            }

LABEL_62:
            v33 = v34;
            if (v34 < v32)
            {
              continue;
            }

            break;
          }

          v44 = *(a1 + 8);
          if (v48)
          {
            sub_1002C815C(v3, v56, v44, a1 + 224);
          }

          else
          {
            sub_1002C8260(v3, v56, v44, &v59);
          }

          v3 += v47;
          ++v50;
          result = 1;
        }

        while (v50 < *(a1 + 12));
        goto LABEL_91;
      }

      v50 = 0;
      if (*(a1 + 12) >= 1)
      {
        if (v48)
        {
          do
          {
            sub_1002B33BC(a1 + 160, v56, v13);
            sub_1002C815C(v3, v56, *(a1 + 8), a1 + 224);
            ++v50;
            v3 += v47;
          }

          while (v50 < *(a1 + 12));
          goto LABEL_90;
        }

        do
        {
          sub_1002B33BC(a1 + 160, v56, ((v9 >> 3) + 1) & 0xFFFFFFFE);
          sub_1002C8260(v3, v56, *(a1 + 8), &v59);
          ++v50;
          v3 += v47;
          result = 1;
        }

        while (v50 < *(a1 + 12));
        goto LABEL_91;
      }
    }

    else
    {
      if (v15 != 8)
      {
        goto LABEL_91;
      }

      if (*(a1 + 16) == 2)
      {
        v16 = v4 * v10;
        LODWORD(v17) = v3 + v4 * v10;
        v49 = &v3[v4 * v10];
        v50 = 0;
        v46 = -(v4 * v10);
        while (2)
        {
          while (2)
          {
            v18 = v17 - v3;
            v19 = v56;
            do
            {
              v21 = sub_1002B32E0((a1 + 160));
              v22 = v21;
              if (v21 == 128)
              {
                v23 = sub_1002B32E0((a1 + 160));
                if (v23)
                {
                  v24 = v19 - v56;
                  if (v24 < 1)
                  {
                    goto LABEL_29;
                  }

                  goto LABEL_26;
                }
              }

              *v19++ = v22;
              v20 = __OFSUB__(v18, v10);
              v18 -= v10;
            }

            while (!((v18 < 0) ^ v20 | (v18 == 0)));
            v23 = 0;
            v24 = v19 - v56;
            if (v24 < 1)
            {
LABEL_29:
              if (v23 < 1)
              {
                goto LABEL_37;
              }

              goto LABEL_33;
            }

LABEL_26:
            if (v48)
            {
              sub_1002C7FE4(v3, v56, v24, a1 + 224);
            }

            else
            {
              sub_1002C8034(v3, v56, v24, &v59);
            }

            v3 += (v10 * v24);
            if (v23 < 1)
            {
              goto LABEL_37;
            }

LABEL_33:
            v25 = sub_1002B32E0((a1 + 160));
            v26 = v10 + v10 * v23;
            v27 = sub_1002C5884(v47);
            if (v48)
            {
              v4 = v4 & 0xFFFFFFFF00000000 | *(a1 + 224 + 4 * v25);
              v28 = sub_1002C7A50(v3, &v49, v27, v16, &v50, *(a1 + 12), v26, v4);
            }

            else
            {
              v28 = sub_1002C7F14(v3, &v49, v27, v16, &v50, *(a1 + 12), v26, v59.u8[v25]);
            }

            v3 = v28;
            if (v50 >= *(a1 + 12))
            {
              goto LABEL_90;
            }

LABEL_37:
            LODWORD(v17) = v49;
            if (v3 != v49)
            {
              continue;
            }

            break;
          }

          if (sub_1002B32E0((a1 + 160)))
          {
LABEL_99:
            result = 0;
            v45 = v51;
            if (v51 != v53)
            {
              goto LABEL_92;
            }

            goto LABEL_95;
          }

          v17 = &v49[v47];
          v49 = v17;
          v3 = &v17[v46];
          if (++v50 < *(a1 + 12))
          {
            continue;
          }

          goto LABEL_90;
        }
      }

      v50 = 0;
      if (*(a1 + 12) >= 1)
      {
        if (v48)
        {
          do
          {
            sub_1002B33BC(a1 + 160, v56, v13);
            sub_1002C7FE4(v3, v56, *(a1 + 8), a1 + 224);
            ++v50;
            v3 += v47;
          }

          while (v50 < *(a1 + 12));
          goto LABEL_90;
        }

        do
        {
          sub_1002B33BC(a1 + 160, v56, ((v9 >> 3) + 1) & 0xFFFFFFFE);
          sub_1002C8034(v3, v56, *(a1 + 8), &v59);
          ++v50;
          v3 += v47;
          result = 1;
        }

        while (v50 < *(a1 + 12));
LABEL_91:
        v45 = v51;
        if (v51 != v53)
        {
LABEL_92:
          if (v45)
          {
            operator delete[]();
          }

          v51 = v53;
        }

LABEL_95:
        if (v54 != v56)
        {
          if (v54)
          {
            operator delete[]();
          }
        }

        return result;
      }
    }

LABEL_90:
    result = 1;
    goto LABEL_91;
  }

  return result;
}

void sub_1002C0CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (a17 != a10)
  {
    if (a17)
    {
      operator delete[]();
    }
  }

  JUMPOUT(0x1002C0C2CLL);
}

uint64_t sub_1002C0CF8(uint64_t a1)
{
  sub_1002B4744(a1);
  *v2 = off_100476C28;
  v3 = v2 + 1;
  sub_1002A8124(v2 + 1);
  qmemcpy(sub_1002A80E0(v3, 29), "Sun raster files (*.sr;*.ras)", 29);
  return a1;
}

uint64_t *sub_1002C0F20(uint64_t *a1)
{
  *a1 = off_100475B70;
  sub_1002A8124(a1 + 7);
  sub_1002A8124(a1 + 3);
  sub_1002A8124(a1 + 1);
  return a1;
}

void sub_1002C0F80(uint64_t *a1)
{
  *a1 = off_100475B70;
  sub_1002A8124(a1 + 7);
  sub_1002A8124(a1 + 3);
  sub_1002A8124(a1 + 1);

  operator delete();
}

BOOL sub_1002C1000(uint64_t a1, unsigned int *a2)
{
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a2;
  sub_1002B3710(v12);
  v12[0] = off_100475A70;
  v7 = sub_1002B3A90(v12, (a1 + 24));
  if (v7)
  {
    sub_1002B3DD0(v12, "Y\xA6j\x95", 4);
    sub_1002B4228(v12, v5);
    sub_1002B4228(v12, v4);
    v8 = ((v6 >> 3) & 0x1FF) + 1;
    sub_1002B4228(v12, 8 * v8);
    v9 = (v8 * v5 + 1) & 0xFFFFFFFE;
    sub_1002B4228(v12, v9 * v4);
    sub_1002B4228(v12, 1u);
    sub_1002B4228(v12, 0);
    sub_1002B4228(v12, 0);
    if (v4 >= 1)
    {
      for (i = 0; i != v4; ++i)
      {
        sub_1002B3DD0(v12, (*(a2 + 2) + **(a2 + 9) * i), v9);
      }
    }

    sub_1002B3BD0(v12);
  }

  sub_1002B40D8(v12);
  return v7;
}

uint64_t sub_1002C1184(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v2 = a1;
    (*(*v1 + 8))(a1[2]);
    a1 = v2;
  }

  v3 = *(*a1 + 8);

  return v3();
}

uint64_t sub_1002C1220(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v2 = a1;
    (*(*v1 + 8))(a1[2]);
    a1 = v2;
  }

  v3 = *(*a1 + 8);

  return v3();
}

UIImage *sub_1002C12A4(uint64_t a1)
{
  v2 = [NSData dataWithBytes:*(a1 + 16) length:**(a1 + 72) * *(a1 + 8)];
  v3 = *(a1 + 4);
  if (v3 >= 1 && *(*(a1 + 72) + 8 * v3 - 8) == 1)
  {
    DeviceGray = CGColorSpaceCreateDeviceGray();
  }

  else
  {
    DeviceGray = CGColorSpaceCreateDeviceRGB();
  }

  v5 = DeviceGray;
  v6 = CGDataProviderCreateWithCFData(v2);
  v7 = *(a1 + 4);
  v8 = *(a1 + 72);
  if (v7 < 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = 8 * v8[v7 - 1];
  }

  if ((*a1 & 0xFF8) == 0x18)
  {
    v10 = 3;
  }

  else
  {
    v10 = 0;
  }

  v11 = CGImageCreate(*(a1 + 12), *(a1 + 8), (0x442211088uLL >> (4 * (*a1 & 7u))) & 0x78, v9, *v8, v5, v10, v6, 0, 0, kCGRenderingIntentDefault);
  v12 = [UIImage imageWithCGImage:v11];
  CGImageRelease(v11);
  CGDataProviderRelease(v6);
  CGColorSpaceRelease(v5);
  return v12;
}

void sub_1002C13D4(void *a1, uint64_t a2, int a3)
{
  ColorSpace = CGImageGetColorSpace([a1 CGImage]);
  Width = CGImageGetWidth([a1 CGImage]);
  Height = CGImageGetHeight([a1 CGImage]);
  Model = CGColorSpaceGetModel(ColorSpace);
  v12 = *(a2 + 8) == Height && *(a2 + 12) == Width && *(a2 + 4) < 3;
  if (Model == kCGColorSpaceModelMonochrome)
  {
    if (v12 && (*a2 & 0xFFF) == 0 && *(a2 + 16))
    {
      if (!a3)
      {
LABEL_23:
        v13 = 0;
        goto LABEL_24;
      }
    }

    else
    {
      v16.i64[0] = __PAIR64__(Width, Height);
      sub_100268ED0(a2, 2, v16.i64, 0);
      if (!a3)
      {
        goto LABEL_23;
      }
    }

    v16 = 0u;
    v17 = 0u;
    sub_10022CAFC(a2, &v16);
    goto LABEL_23;
  }

  if (!v12 || (*a2 & 0xFFF) != 0x18 || !*(a2 + 16))
  {
    v16.i64[0] = __PAIR64__(Width, Height);
    sub_100268ED0(a2, 2, v16.i64, 24);
    if (a3)
    {
      goto LABEL_15;
    }

LABEL_17:
    v13 = 5;
    goto LABEL_24;
  }

  if (!a3)
  {
    goto LABEL_17;
  }

LABEL_15:
  v16 = 0u;
  v17 = 0u;
  sub_10022CAFC(a2, &v16);
  v13 = 1;
LABEL_24:
  v14 = CGBitmapContextCreate(*(a2 + 16), *(a2 + 12), *(a2 + 8), 8uLL, **(a2 + 72), ColorSpace, v13);
  v15 = [a1 CGImage];
  v18.origin.x = 0.0;
  v18.origin.y = 0.0;
  v18.size.width = Width;
  v18.size.height = Height;
  CGContextDrawImage(v14, v18, v15);
  CGContextRelease(v14);
}

uint64_t sub_1002C15A4(const char **a1, uint64_t a2, void *a3)
{
  sub_1002ACE7C(v24, &off_100476D20);
  if (sub_100271148(a2) != 0x10000)
  {
    sub_1002703C0(a2, 0xFFFFFFFFLL, &v16);
    goto LABEL_8;
  }

  v6 = *(a2 + 8);
  v7 = *v6;
  v8 = *(v6 + 16);
  v16 = *v6;
  v17 = v8;
  v18 = *(v6 + 32);
  v9 = *(v6 + 56);
  v19 = *(v6 + 48);
  v20 = v9;
  v21 = &v16 + 8;
  v22 = v23;
  v23[0] = 0;
  v23[1] = 0;
  if (!v9)
  {
    if (SDWORD1(v7) <= 2)
    {
      goto LABEL_4;
    }

LABEL_7:
    DWORD1(v16) = 0;
    sub_100269B58(&v16, v6);
    goto LABEL_8;
  }

  atomic_fetch_add((v9 + 20), 1u);
  if (*(v6 + 4) > 2)
  {
    goto LABEL_7;
  }

LABEL_4:
  v10 = *(v6 + 72);
  v11 = v22;
  *v22 = *v10;
  v11[1] = v10[1];
LABEL_8:
  v12 = sub_1002C1764(a1, &v16, a3, 0);
  if (v20 && atomic_fetch_add((v20 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v16);
  }

  v20 = 0;
  v17 = 0u;
  v18 = 0u;
  if (SDWORD1(v16) >= 1)
  {
    v13 = 0;
    v14 = v21;
    do
    {
      *&v14[4 * v13++] = 0;
    }

    while (v13 < SDWORD1(v16));
  }

  if (v22 != v23)
  {
    j__free(v22);
  }

  if (v24[2])
  {
    sub_1002ACC1C(v24);
  }

  return v12;
}

void sub_1002C1734(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_100006D14(&a9);
  sub_1001D8BF4(v9 - 48);
  _Unwind_Resume(a1);
}

uint64_t sub_1002C1764(const char **a1, unsigned int *a2, void *a3, int a4)
{
  v6 = a2;
  LODWORD(v23[0]) = 1124007936;
  memset(v23 + 4, 0, 48);
  v23[3] = 0u;
  v24 = v23 + 8;
  v25 = v26;
  v26[0] = 0;
  v26[1] = 0;
  v8 = (*a2 >> 3) & 0x1FF;
  if (v8 > 3 || v8 == 1)
  {
    v18 = 0;
    v19 = 0;
    qmemcpy(sub_1002A80E0(&v18, 71), "image.channels() == 1 || image.channels() == 3 || image.channels() == 4", 71);
    sub_1002A8980(-215, &v18, "imwrite_", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgcodecs/src/loadsave.cpp", 673);
  }

  sub_1002C1BF8(&v21, *a1, a1[1]);
  if (!v22)
  {
    v18 = 0;
    v19 = 0;
    qmemcpy(sub_1002A80E0(&v18, 51), "could not find a writer for the specified extension", 51);
    sub_1002A8980(-2, &v18, "imwrite_", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgcodecs/src/loadsave.cpp", 677);
  }

  if (((*(*v22 + 16))(v22, *v6 & 7) & 1) == 0)
  {
    if (((*(*v22 + 16))(v22, 0) & 1) == 0)
    {
      v18 = 0;
      v19 = 0;
      qmemcpy(sub_1002A80E0(&v18, 29), "encoder->isFormatSupported(0)", 29);
      sub_1002A8980(-215, &v18, "imwrite_", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgcodecs/src/loadsave.cpp", 680);
    }

    LODWORD(v18) = 33619968;
    v19 = v23;
    v20 = 0;
    sub_10020EF14(v6, &v18, 0, 1.0, 0.0);
    v6 = v23;
  }

  if (a4)
  {
    v19 = v6;
    v20 = 0;
    LODWORD(v18) = 16842752;
    v15 = 33619968;
    v16 = v23;
    v17 = 0;
    sub_10022D718(&v18, &v15, 0);
    v6 = v23;
  }

  (*(*v22 + 24))(v22, a1);
  if (a3[1] - *a3 >= 0x194uLL)
  {
    v18 = 0;
    v19 = 0;
    qmemcpy(sub_1002A80E0(&v18, 23), "params.size() <= (50)*2", 23);
    sub_1002A8980(-215, &v18, "imwrite_", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgcodecs/src/loadsave.cpp", 692);
  }

  v10 = (*(*v22 + 40))(v22, v6, a3);
  v11 = v21;
  if (v21 && atomic_fetch_add((v21 + 8), 0xFFFFFFFF) == 1)
  {
    (*(*v11 + 16))(v11);
  }

  if (*(&v23[3] + 1) && atomic_fetch_add((*(&v23[3] + 1) + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v23);
  }

  *(&v23[3] + 1) = 0;
  memset(&v23[1], 0, 32);
  if (SDWORD1(v23[0]) >= 1)
  {
    v12 = 0;
    v13 = v24;
    do
    {
      *&v13[4 * v12++] = 0;
    }

    while (v12 < SDWORD1(v23[0]));
  }

  if (v25 != v26)
  {
    j__free(v25);
  }

  return v10;
}

void sub_1002C1B38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va2, a7);
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  va_copy(va2, va1);
  v12 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  sub_1002A8124(va);
  sub_1002C1F3C(va1);
  sub_100006D14(va2);
  _Unwind_Resume(a1);
}

void sub_1002C1BF8(void *a1, const char *a2, unint64_t a3)
{
  if (a3 <= 1)
  {
    goto LABEL_50;
  }

  v4 = "";
  v5 = a2 ? a2 : "";
  v6 = strrchr(v5, 46);
  if (!v6)
  {
    goto LABEL_50;
  }

  v7 = 0;
  v8 = v6 + 1;
  do
  {
    v9 = v8[v7];
    if (v9 < 0)
    {
      if (!__maskrune(v9, 0x500uLL))
      {
        break;
      }
    }

    else if ((_DefaultRuneLocale.__runetype[v9] & 0x500) == 0)
    {
      break;
    }

    ++v7;
  }

  while (v7 != 128);
  v10 = qword_1004BE4F8;
  if (unk_1004BE500 == qword_1004BE4F8)
  {
    goto LABEL_50;
  }

  v11 = 0;
  v12 = v7;
  if (!v7)
  {
    do
    {
      (*(**(v10 + 16 * v11 + 8) + 48))(v31);
      if (v31[0])
      {
        v25 = v31[0];
      }

      else
      {
        v25 = "";
      }

      v26 = strchr(v25, 40);
      if (v26)
      {
        v27 = strchr(v26 + 1, 46);
        if (v27)
        {
          v28 = v27;
          do
          {
            v29 = v28[1];
            if (v29 < 0)
            {
              v30 = __maskrune(v29, 0x500uLL);
            }

            else
            {
              v30 = _DefaultRuneLocale.__runetype[v29] & 0x500;
            }

            if (!v30)
            {
              goto LABEL_51;
            }

            v28 = strchr(v28 + 2, 46);
          }

          while (v28);
        }
      }

      sub_1002A8124(v31);
      ++v11;
      v10 = qword_1004BE4F8;
    }

    while (v11 < (unk_1004BE500 - qword_1004BE4F8) >> 4);
LABEL_50:
    *a1 = 0;
    a1[1] = 0;
    return;
  }

  while (1)
  {
    (*(**(v10 + 16 * v11 + 8) + 48))(v31);
    v13 = v4;
    v14 = v31[0] ? v31[0] : v4;
    v15 = strchr(v14, 40);
    if (v15)
    {
      v16 = v15 + 1;
LABEL_21:
      v18 = strchr(v16, 46);
      if (v18)
      {
        break;
      }
    }

    sub_1002A8124(v31);
    ++v11;
    v10 = qword_1004BE4F8;
    v4 = v13;
    if (v11 >= (unk_1004BE500 - qword_1004BE4F8) >> 4)
    {
      goto LABEL_50;
    }
  }

  v19 = 0;
  v20 = v18 + 1;
  while (1)
  {
    v21 = v20[v19];
    if (!(v21 < 0 ? __maskrune(v21, 0x500uLL) : _DefaultRuneLocale.__runetype[v21] & 0x500))
    {
      break;
    }

    v23 = __tolower(v8[v19]);
    if (v23 != __tolower(v20[v19]))
    {
      break;
    }

    if (v12 == ++v19)
    {
      v17 = v12;
      v24 = v20[v12];
      if (v24 < 0)
      {
        goto LABEL_30;
      }

LABEL_34:
      if ((_DefaultRuneLocale.__runetype[v24] & 0x500) == 0)
      {
        goto LABEL_51;
      }

      goto LABEL_20;
    }
  }

  if (v12 != v19)
  {
    v17 = v19;
    goto LABEL_20;
  }

  v17 = v19;
  v24 = v20[v12];
  if ((v24 & 0x80000000) == 0)
  {
    goto LABEL_34;
  }

LABEL_30:
  if (__maskrune(v24, 0x500uLL))
  {
LABEL_20:
    v16 = &v20[v17 + 1];
    goto LABEL_21;
  }

LABEL_51:
  (*(**(qword_1004BE4F8 + 16 * v11 + 8) + 56))(*(qword_1004BE4F8 + 16 * v11 + 8));
  sub_1002A8124(v31);
}

uint64_t sub_1002C1F3C(uint64_t result)
{
  v1 = *result;
  if (*result && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
  }

  *result = 0;
  *(result + 8) = 0;
  return result;
}

uint64_t sub_1002C1FAC(uint64_t result)
{
  v1 = *result;
  if (*result && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
  }

  *result = 0;
  *(result + 8) = 0;
  return result;
}

void sub_1002C201C(_OWORD *a1)
{
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  operator new();
}

void sub_1002C30BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_1002C1F3C(va);
  sub_1002C3A38(&a9);
  sub_1002C3AA8(v10 + 3);
  sub_1002C3B50(v10);
  _Unwind_Resume(a1);
}

void sub_1002C30E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_1002C1FAC(va);
  sub_1002C39C8(&a9);
  sub_1002C3AA8(v10 + 3);
  sub_1002C3B50(v10);
  _Unwind_Resume(a1);
}

void sub_1002C3114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_1002C1F3C(va);
  sub_1002C3958(&a9);
  sub_1002C3AA8(v10 + 3);
  sub_1002C3B50(v10);
  _Unwind_Resume(a1);
}

void sub_1002C3140(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_1002C1FAC(va);
  sub_1002C38E8(&a9);
  sub_1002C3AA8(v10 + 3);
  sub_1002C3B50(v10);
  _Unwind_Resume(a1);
}

void sub_1002C316C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_1002C1F3C(va);
  sub_1002C3878(&a9);
  sub_1002C3AA8(v10 + 3);
  sub_1002C3B50(v10);
  _Unwind_Resume(a1);
}

void sub_1002C3198(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_1002C1FAC(va);
  sub_1002C3808(&a9);
  sub_1002C3AA8(v10 + 3);
  sub_1002C3B50(v10);
  _Unwind_Resume(a1);
}

void sub_1002C31C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_1002C1F3C(va);
  sub_1002C3798(&a9);
  sub_1002C3AA8(v10 + 3);
  sub_1002C3B50(v10);
  _Unwind_Resume(a1);
}

void sub_1002C31F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_1002C1FAC(va);
  sub_1002C3728(&a9);
  sub_1002C3AA8(v10 + 3);
  sub_1002C3B50(v10);
  _Unwind_Resume(a1);
}

void sub_1002C321C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_1002C1F3C(va);
  sub_1002C36B8(&a9);
  sub_1002C3AA8(v10 + 3);
  sub_1002C3B50(v10);
  _Unwind_Resume(a1);
}

void sub_1002C3248(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_1002C1FAC(va);
  sub_1002C3648(&a9);
  sub_1002C3AA8(v10 + 3);
  sub_1002C3B50(v10);
  _Unwind_Resume(a1);
}

void sub_1002C3274(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_1002C1F3C(va);
  sub_1002C35D8(&a9);
  sub_1002C3AA8(v10 + 3);
  sub_1002C3B50(v10);
  _Unwind_Resume(a1);
}

void sub_1002C32A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_1002C1FAC(va);
  sub_1002C3568(&a9);
  sub_1002C3AA8(v10 + 3);
  sub_1002C3B50(v10);
  _Unwind_Resume(a1);
}

void sub_1002C32CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_1002C1F3C(va);
  sub_1002C34F8(&a9);
  sub_1002C3AA8(v10 + 3);
  sub_1002C3B50(v10);
  _Unwind_Resume(a1);
}

void sub_1002C32F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_1002C1FAC(va);
  sub_1002C3488(&a9);
  sub_1002C3AA8(v10 + 3);
  sub_1002C3B50(v10);
  _Unwind_Resume(a1);
}

void sub_1002C3438(_Unwind_Exception *a1)
{
  sub_1002C3AA8(v1 + 3);
  sub_1002C3B50(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1002C3488(uint64_t result)
{
  v1 = *result;
  if (*result && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
  }

  *result = 0;
  *(result + 8) = 0;
  return result;
}

uint64_t sub_1002C34F8(uint64_t result)
{
  v1 = *result;
  if (*result && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
  }

  *result = 0;
  *(result + 8) = 0;
  return result;
}

uint64_t sub_1002C3568(uint64_t result)
{
  v1 = *result;
  if (*result && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
  }

  *result = 0;
  *(result + 8) = 0;
  return result;
}

uint64_t sub_1002C35D8(uint64_t result)
{
  v1 = *result;
  if (*result && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
  }

  *result = 0;
  *(result + 8) = 0;
  return result;
}

uint64_t sub_1002C3648(uint64_t result)
{
  v1 = *result;
  if (*result && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
  }

  *result = 0;
  *(result + 8) = 0;
  return result;
}

uint64_t sub_1002C36B8(uint64_t result)
{
  v1 = *result;
  if (*result && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
  }

  *result = 0;
  *(result + 8) = 0;
  return result;
}

uint64_t sub_1002C3728(uint64_t result)
{
  v1 = *result;
  if (*result && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
  }

  *result = 0;
  *(result + 8) = 0;
  return result;
}

uint64_t sub_1002C3798(uint64_t result)
{
  v1 = *result;
  if (*result && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
  }

  *result = 0;
  *(result + 8) = 0;
  return result;
}

uint64_t sub_1002C3808(uint64_t result)
{
  v1 = *result;
  if (*result && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
  }

  *result = 0;
  *(result + 8) = 0;
  return result;
}

uint64_t sub_1002C3878(uint64_t result)
{
  v1 = *result;
  if (*result && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
  }

  *result = 0;
  *(result + 8) = 0;
  return result;
}

uint64_t sub_1002C38E8(uint64_t result)
{
  v1 = *result;
  if (*result && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
  }

  *result = 0;
  *(result + 8) = 0;
  return result;
}

uint64_t sub_1002C3958(uint64_t result)
{
  v1 = *result;
  if (*result && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
  }

  *result = 0;
  *(result + 8) = 0;
  return result;
}

uint64_t sub_1002C39C8(uint64_t result)
{
  v1 = *result;
  if (*result && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
  }

  *result = 0;
  *(result + 8) = 0;
  return result;
}

uint64_t sub_1002C3A38(uint64_t result)
{
  v1 = *result;
  if (*result && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
  }

  *result = 0;
  *(result + 8) = 0;
  return result;
}

void *sub_1002C3AA8(void *a1)
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
        v6 = *(v3 - 2);
        v3 -= 2;
        v5 = v6;
        if (v6 && atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v5 + 16))(v5);
        }

        *v3 = 0;
        v3[1] = 0;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void *sub_1002C3B50(void *a1)
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
        v6 = *(v3 - 2);
        v3 -= 2;
        v5 = v6;
        if (v6 && atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v5 + 16))(v5);
        }

        *v3 = 0;
        v3[1] = 0;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

__int128 *sub_1002C3BF8(char **a1, __int128 *a2)
{
  v2 = (a1[1] - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    sub_10000918C();
  }

  v5 = a1[2] - *a1;
  if (v5 >> 3 > v3)
  {
    v3 = v5 >> 3;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFF0)
  {
    v6 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (!(v6 >> 60))
    {
      operator new();
    }

    sub_10000927C();
  }

  v7 = 16 * v2;
  v8 = *a2;
  *a2 = 0uLL;
  v9 = *a1;
  v10 = a1[1];
  v11 = *a1 == v10;
  v12 = (v7 + *a1 - v10);
  *v7 = v8;
  v13 = (v7 + 16);
  if (!v11)
  {
    v14 = v12;
    v15 = v9;
    do
    {
      v16 = *v15;
      *v14 = *v15;
      if (v16)
      {
        atomic_fetch_add((v16 + 8), 1u);
      }

      ++v15;
      ++v14;
    }

    while (v15 != v10);
    do
    {
      v17 = *v9;
      if (*v9 && atomic_fetch_add(v17 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v17 + 16))(v17);
      }

      *v9 = 0;
      *(v9 + 1) = 0;
      v9 += 16;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v12;
  a1[1] = v13;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v13;
}

__int128 *sub_1002C3D80(char **a1, __int128 *a2)
{
  v2 = (a1[1] - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    sub_10000918C();
  }

  v5 = a1[2] - *a1;
  if (v5 >> 3 > v3)
  {
    v3 = v5 >> 3;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFF0)
  {
    v6 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (!(v6 >> 60))
    {
      operator new();
    }

    sub_10000927C();
  }

  v7 = 16 * v2;
  v8 = *a2;
  *a2 = 0uLL;
  v9 = *a1;
  v10 = a1[1];
  v11 = *a1 == v10;
  v12 = (v7 + *a1 - v10);
  *v7 = v8;
  v13 = (v7 + 16);
  if (!v11)
  {
    v14 = v12;
    v15 = v9;
    do
    {
      v16 = *v15;
      *v14 = *v15;
      if (v16)
      {
        atomic_fetch_add((v16 + 8), 1u);
      }

      ++v15;
      ++v14;
    }

    while (v15 != v10);
    do
    {
      v17 = *v9;
      if (*v9 && atomic_fetch_add(v17 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v17 + 16))(v17);
      }

      *v9 = 0;
      *(v9 + 1) = 0;
      v9 += 16;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v12;
  a1[1] = v13;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v13;
}

void *sub_1002C3F08(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    v3 = a1[4];
    v4 = a1[3];
    if (v3 != v2)
    {
      do
      {
        v6 = *(v3 - 2);
        v3 -= 2;
        v5 = v6;
        if (v6 && atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v5 + 16))(v5);
        }

        *v3 = 0;
        v3[1] = 0;
      }

      while (v3 != v2);
      v4 = a1[3];
    }

    a1[4] = v2;
    operator delete(v4);
  }

  v7 = *a1;
  if (*a1)
  {
    v8 = a1[1];
    v9 = *a1;
    if (v8 != v7)
    {
      do
      {
        v11 = *(v8 - 2);
        v8 -= 2;
        v10 = v11;
        if (v11 && atomic_fetch_add(v10 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v10 + 16))(v10);
        }

        *v8 = 0;
        v8[1] = 0;
      }

      while (v8 != v7);
      v9 = *a1;
    }

    a1[1] = v7;
    operator delete(v9);
  }

  return a1;
}

uint64_t sub_1002C4084(FILE *a1, int a2, int a3, float *a4)
{
  if (a4)
  {
    v8 = (a4 + 1);
    if ((*a4 & 1) == 0)
    {
      v8 = "RGBE";
    }

    if (fprintf(a1, "#?%s\n", v8) < 0)
    {
      goto LABEL_15;
    }

    v9 = *a4;
    if ((*a4 & 2) != 0)
    {
      if (fprintf(a1, "GAMMA=%g\n", a4[5]) < 0)
      {
        goto LABEL_15;
      }

      v9 = *a4;
    }

    if ((LOBYTE(v9) & 4) != 0 && fprintf(a1, "EXPOSURE=%g\n", a4[6]) < 0)
    {
LABEL_15:
      sub_1002C41BC(1, 0);
    }
  }

  else if (fprintf(a1, "#?%s\n", "RGBE") < 0)
  {
    goto LABEL_15;
  }

  if (fprintf(a1, "FORMAT=32-bit_rle_rgbe\n\n") < 0 || fprintf(a1, "-Y %d +X %d\n", a3, a2) < 0)
  {
    goto LABEL_15;
  }

  return 0;
}

void sub_1002C41BC(int a1, const void *a2)
{
  if (a1 != 2)
  {
    if (a1 != 1)
    {
      if (!a1)
      {
        __dst = 0;
        v16 = 0;
        qmemcpy(sub_1002A80E0(&__dst, 15), "RGBE read error", 15);
        sub_1002A8980(-2, &__dst, "rgbe_error", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgcodecs/src/rgbe.cpp", 88);
      }

      __src = 0;
      __n = 0;
      qmemcpy(sub_1002A80E0(&__src, 13), "RGBE error: \n", 13);
      v11 = 0;
      v12 = 0;
      if (a2 && (v7 = strlen(a2)) != 0)
      {
        v8 = v7;
        v9 = sub_1002A80E0(&v11, v7);
        memcpy(v9, a2, v8);
        v10 = v12;
      }

      else
      {
        v10 = 0;
      }

      __dst = 0;
      v16 = 0;
      sub_1002A80E0(&__dst, v10 + __n);
      if (__n)
      {
        memcpy(__dst, __src, __n);
      }

      if (v12)
      {
        memcpy(__dst + __n, v11, v12);
      }

      sub_1002A8980(-2, &__dst, "rgbe_error", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgcodecs/src/rgbe.cpp", 100);
    }

    __dst = 0;
    v16 = 0;
    *sub_1002A80E0(&__dst, 16) = *"RGBE write error";
    sub_1002A8980(-2, &__dst, "rgbe_error", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgcodecs/src/rgbe.cpp", 91);
  }

  __src = 0;
  __n = 0;
  qmemcpy(sub_1002A80E0(&__src, 22), "RGBE bad file format: ", 22);
  v11 = 0;
  v12 = 0;
  if (a2 && (v3 = strlen(a2)) != 0)
  {
    v4 = v3;
    v5 = sub_1002A80E0(&v11, v3);
    memcpy(v5, a2, v4);
    v6 = v12;
  }

  else
  {
    v6 = 0;
  }

  __dst = 0;
  v16 = 0;
  sub_1002A80E0(&__dst, v6 + __n);
  if (__n)
  {
    memcpy(__dst, __src, __n);
  }

  if (v12)
  {
    memcpy(__dst + __n, v11, v12);
  }

  sub_1002A8980(-2, &__dst, "rgbe_error", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgcodecs/src/rgbe.cpp", 95);
}

void sub_1002C442C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  sub_1002A8124(&a13);
  sub_1002A8124(&a9);
  sub_1002A8124(&a11);
  JUMPOUT(0x1002C4444);
}

void sub_1002C4454(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1002A8124(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002C4530(FILE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    *a4 = 0;
    *(a4 + 4) = 0;
    __asm { FMOV            V0.2S, #1.0 }

    *(a4 + 20) = _D0;
  }

  v39 = 0;
  v12 = fgets(v40, 128, a1);
  if (!v12)
  {
    goto LABEL_51;
  }

  v38 = a2;
  if (a4 && LOBYTE(v40[0]) == 35 && BYTE1(v40[0]) == 63)
  {
    *a4 |= 1u;
    v13 = (a4 + 4);
    if (!BYTE2(v40[0]))
    {
LABEL_10:
      v14 = 0;
LABEL_11:
      v15 = a3;
      v13[v14] = 0;
LABEL_13:
      i = 0;
      while (1)
      {
        while (1)
        {
          do
          {
            if (!fgets(v40, 128, a1))
            {
              goto LABEL_44;
            }
          }

          while (LOBYTE(v40[0]) == 35);
          if (LOBYTE(v40[0]) == 10)
          {
            goto LABEL_45;
          }

          _ZF = *v40 == 0x333D54414D524F46 && *v41 == 0x6C725F7469622D32;
          if (!_ZF || *v42 != 0xA656267725F65)
          {
            break;
          }

          i = 1;
        }

        if (sscanf(v40, "GAMMA=%g", &v39) == 1)
        {
          break;
        }

        if (sscanf(v40, "EXPOSURE=%g", &v39) == 1)
        {
          *(a4 + 24) = v39;
          v17 = 4;
LABEL_15:
          *a4 |= v17;
        }
      }

      *(a4 + 20) = v39;
      v17 = 2;
      goto LABEL_15;
    }

    if (SBYTE2(v40[0]) < 0)
    {
      if (__maskrune(SBYTE2(v40[0]), 0x4000uLL))
      {
        goto LABEL_10;
      }
    }

    else if ((_DefaultRuneLocale.__runetype[SBYTE2(v40[0])] & 0x4000) != 0)
    {
      goto LABEL_10;
    }

    *v13 = BYTE2(v40[0]);
    if (HIBYTE(v40[0]))
    {
      if (SHIBYTE(v40[0]) < 0)
      {
        if (__maskrune(SHIBYTE(v40[0]), 0x4000uLL))
        {
          goto LABEL_56;
        }
      }

      else if ((_DefaultRuneLocale.__runetype[SHIBYTE(v40[0])] & 0x4000) != 0)
      {
        goto LABEL_56;
      }

      *(a4 + 5) = HIBYTE(v40[0]);
      if (LOBYTE(v40[1]) && (SLOBYTE(v40[1]) < 0 ? (v24 = __maskrune(SLOBYTE(v40[1]), 0x4000uLL)) : (v24 = _DefaultRuneLocale.__runetype[SLOBYTE(v40[1])] & 0x4000), !v24))
      {
        *(a4 + 6) = v40[1];
        if (BYTE1(v40[1]) && (SBYTE1(v40[1]) < 0 ? (v26 = __maskrune(SBYTE1(v40[1]), 0x4000uLL)) : (v26 = _DefaultRuneLocale.__runetype[SBYTE1(v40[1])] & 0x4000), !v26))
        {
          *(a4 + 7) = BYTE1(v40[1]);
          if (BYTE2(v40[1]) && (SBYTE2(v40[1]) < 0 ? (v27 = __maskrune(SBYTE2(v40[1]), 0x4000uLL)) : (v27 = _DefaultRuneLocale.__runetype[SBYTE2(v40[1])] & 0x4000), !v27))
          {
            *(a4 + 8) = BYTE2(v40[1]);
            if (HIBYTE(v40[1]) && (SHIBYTE(v40[1]) < 0 ? (v28 = __maskrune(SHIBYTE(v40[1]), 0x4000uLL)) : (v28 = _DefaultRuneLocale.__runetype[SHIBYTE(v40[1])] & 0x4000), !v28))
            {
              *(a4 + 9) = HIBYTE(v40[1]);
              if (LOBYTE(v41[0]) && (SLOBYTE(v41[0]) < 0 ? (v29 = __maskrune(SLOBYTE(v41[0]), 0x4000uLL)) : (v29 = _DefaultRuneLocale.__runetype[SLOBYTE(v41[0])] & 0x4000), !v29))
              {
                *(a4 + 10) = v41[0];
                if (BYTE1(v41[0]) && (SBYTE1(v41[0]) < 0 ? (v30 = __maskrune(SBYTE1(v41[0]), 0x4000uLL)) : (v30 = _DefaultRuneLocale.__runetype[SBYTE1(v41[0])] & 0x4000), !v30))
                {
                  *(a4 + 11) = BYTE1(v41[0]);
                  if (BYTE2(v41[0]) && (SBYTE2(v41[0]) < 0 ? (v31 = __maskrune(SBYTE2(v41[0]), 0x4000uLL)) : (v31 = _DefaultRuneLocale.__runetype[SBYTE2(v41[0])] & 0x4000), !v31))
                  {
                    *(a4 + 12) = BYTE2(v41[0]);
                    if (HIBYTE(v41[0]) && (SHIBYTE(v41[0]) < 0 ? (v32 = __maskrune(SHIBYTE(v41[0]), 0x4000uLL)) : (v32 = _DefaultRuneLocale.__runetype[SHIBYTE(v41[0])] & 0x4000), !v32))
                    {
                      *(a4 + 13) = HIBYTE(v41[0]);
                      if (LOBYTE(v41[1]) && (SLOBYTE(v41[1]) < 0 ? (v33 = __maskrune(SLOBYTE(v41[1]), 0x4000uLL)) : (v33 = _DefaultRuneLocale.__runetype[SLOBYTE(v41[1])] & 0x4000), !v33))
                      {
                        *(a4 + 14) = v41[1];
                        if (BYTE1(v41[1]) && (SBYTE1(v41[1]) < 0 ? (v34 = __maskrune(SBYTE1(v41[1]), 0x4000uLL)) : (v34 = _DefaultRuneLocale.__runetype[SBYTE1(v41[1])] & 0x4000), !v34))
                        {
                          *(a4 + 15) = BYTE1(v41[1]);
                          if (BYTE2(v41[1]) && (SBYTE2(v41[1]) < 0 ? (v35 = __maskrune(SBYTE2(v41[1]), 0x4000uLL)) : (v35 = _DefaultRuneLocale.__runetype[SBYTE2(v41[1])] & 0x4000), !v35))
                          {
                            *(a4 + 16) = BYTE2(v41[1]);
                            if (HIBYTE(v41[1]) && (SHIBYTE(v41[1]) < 0 ? (v36 = __maskrune(SHIBYTE(v41[1]), 0x4000uLL)) : (v36 = _DefaultRuneLocale.__runetype[SHIBYTE(v41[1])] & 0x4000), !v36))
                            {
                              *(a4 + 17) = HIBYTE(v41[1]);
                              if (LOBYTE(v42[0]) && (SLOBYTE(v42[0]) < 0 ? (v37 = __maskrune(SLOBYTE(v42[0]), 0x4000uLL)) : (v37 = _DefaultRuneLocale.__runetype[SLOBYTE(v42[0])] & 0x4000), !v37))
                              {
                                *(a4 + 18) = v42[0];
                                v14 = 15;
                              }

                              else
                              {
                                v14 = 14;
                              }
                            }

                            else
                            {
                              v14 = 13;
                            }
                          }

                          else
                          {
                            v14 = 12;
                          }
                        }

                        else
                        {
                          v14 = 11;
                        }
                      }

                      else
                      {
                        v14 = 10;
                      }
                    }

                    else
                    {
                      v14 = 9;
                    }
                  }

                  else
                  {
                    v14 = 8;
                  }
                }

                else
                {
                  v14 = 7;
                }
              }

              else
              {
                v14 = 6;
              }
            }

            else
            {
              v14 = 5;
            }
          }

          else
          {
            v14 = 4;
          }
        }

        else
        {
          v14 = 3;
        }
      }

      else
      {
        v14 = 2;
      }

      goto LABEL_11;
    }

LABEL_56:
    v14 = 1;
    goto LABEL_11;
  }

  v15 = a3;
  if (a4)
  {
    goto LABEL_13;
  }

  for (i = 0; ; i |= v22)
  {
    do
    {
      if (!fgets(v40, 128, a1))
      {
LABEL_44:
        LODWORD(v12) = 0;
        v23 = 0;
        goto LABEL_59;
      }
    }

    while (LOBYTE(v40[0]) == 35);
    if (LOBYTE(v40[0]) == 10)
    {
      break;
    }

    v22 = *v40 == 0x333D54414D524F46 && *v41 == 0x6C725F7469622D32 && *v42 == 0xA656267725F65;
  }

LABEL_45:
  if (LOWORD(v40[0]) != 10)
  {
    v23 = "missing blank line after FORMAT specifier";
    goto LABEL_58;
  }

  if ((i & 1) == 0)
  {
    v23 = "missing FORMAT specifier";
LABEL_58:
    LODWORD(v12) = 2;
LABEL_59:
    sub_1002C41BC(v12, v23);
  }

  v12 = fgets(v40, 128, a1);
  if (!v12)
  {
LABEL_51:
    v23 = 0;
    goto LABEL_59;
  }

  if (sscanf(v40, "-Y %d +X %d", v15, v38) <= 1)
  {
    v23 = "missing image size specifier";
    goto LABEL_58;
  }

  return 0;
}

uint64_t sub_1002C4BEC(FILE *a1, uint64_t a2, int a3)
{
  v4 = (a2 + 4);
  v5 = a3 + 1;
  while (--v5 >= 1)
  {
    v11 = *v4;
    v12 = v4[1];
    v13 = *(v4 - 1);
    if (*v4 <= v12)
    {
      v14 = v4[1];
    }

    else
    {
      v14 = *v4;
    }

    if (v14 < v13)
    {
      v14 = *(v4 - 1);
    }

    if (v14 >= 1.0e-32)
    {
      v6 = frexpf(v14, &v16) * 256.0 / v14;
      v7 = (v12 * v6);
      v8 = (v11 * v6);
      v9 = (v13 * v6);
      v10 = v16 ^ 0x80;
    }

    else
    {
      v10 = 0;
      LOBYTE(v9) = 0;
      LOBYTE(v8) = 0;
      LOBYTE(v7) = 0;
    }

    v4 += 3;
    __ptr[3] = v10;
    __ptr[2] = v9;
    __ptr[1] = v8;
    __ptr[0] = v7;
    if (!fwrite(__ptr, 4uLL, 1uLL, a1))
    {
      sub_1002C41BC(1, 0);
    }
  }

  return 0;
}

uint64_t sub_1002C4D10(FILE *a1, float *a2, int a3, int a4)
{
  if ((a3 - 0x8000) > 0xFFFF8007 && (v8 = malloc_type_malloc((4 * a3), 0x100004077774924uLL)) != 0)
  {
    v9 = v8;
    if (a4 >= 1)
    {
      v10 = &v8[a3];
      v11 = &v8[2 * a3];
      v12 = &v8[3 * a3];
      v13 = a3 >> 8;
      do
      {
        __ptr = 514;
        v43 = v13;
        v44 = a3;
        if (!fwrite(&__ptr, 4uLL, 1uLL, a1))
        {
          free(v9);
          sub_1002C41BC(1, 0);
        }

        v35 = v13;
        v14 = 0;
        v34 = a4 - 1;
        do
        {
          v20 = a2[1];
          v21 = a2[2];
          v22 = *a2;
          if (v20 <= v21)
          {
            v23 = a2[2];
          }

          else
          {
            v23 = a2[1];
          }

          if (v23 < v22)
          {
            v23 = *a2;
          }

          if (v23 >= 1.0e-32)
          {
            v15 = frexpf(v23, &v41) * 256.0 / v23;
            v16 = (v21 * v15);
            v17 = (v20 * v15);
            v18 = (v22 * v15);
            v19 = v41 ^ 0x80;
          }

          else
          {
            v19 = 0;
            LOBYTE(v18) = 0;
            LOBYTE(v17) = 0;
            LOBYTE(v16) = 0;
          }

          v44 = v19;
          v43 = v18;
          HIBYTE(__ptr) = v17;
          LOBYTE(__ptr) = v16;
          v9[v14] = v16;
          v10[v14] = HIBYTE(__ptr);
          v11[v14] = v43;
          v12[v14] = v44;
          a2 += 3;
          ++v14;
        }

        while (a3 != v14);
        v36 = v12;
        v37 = v11;
        v38 = v10;
        v39 = a4;
        v24 = 0;
        do
        {
          v25 = 0;
          v40 = v24;
          v26 = &v9[v24 * a3];
          do
          {
            LODWORD(v27) = 0;
            LODWORD(v28) = v25;
            do
            {
              v30 = v27;
              v28 = v28 + v27;
              if (v28 + 1 >= a3)
              {
                LODWORD(v27) = 1;
              }

              else
              {
                v31 = 1;
                while (v26[v28] == v26[v28 + v31])
                {
                  v27 = v31 + 1;
                  if (v31 <= 0x7D)
                  {
                    ++v31;
                    if ((v27 + v28) < a3)
                    {
                      continue;
                    }
                  }

                  goto LABEL_22;
                }

                LODWORD(v27) = v31;
              }

LABEL_22:
              ;
            }

            while (v28 < a3 && v27 < 4);
            if (v30 >= 2 && v30 == v28 - v25)
            {
              v45 = v30 | 0x80;
              v46 = v26[v25];
              v25 = v28;
              if (!fwrite(&v45, 2uLL, 1uLL, a1))
              {
                goto LABEL_53;
              }
            }

            else if (v28 > v25)
            {
              while (1)
              {
                v32 = v28 - v25 >= 128 ? 128 : v28 - v25;
                v45 = v32;
                if (!fwrite(&v45, 1uLL, 1uLL, a1) || !fwrite(&v26[v25], v32, 1uLL, a1))
                {
                  break;
                }

                v25 += v32;
                if (v25 >= v28)
                {
                  goto LABEL_44;
                }
              }

LABEL_53:
              sub_1002C41BC(1, 0);
            }

LABEL_44:
            if (v27 >= 4)
            {
              v45 = v27 ^ 0x80;
              v46 = v26[v28];
              if (!fwrite(&v45, 2uLL, 1uLL, a1))
              {
                goto LABEL_53;
              }

              v25 += v27;
            }
          }

          while (v25 < a3);
          v24 = v40 + 1;
        }

        while (v40 != 3);
        a4 = v34;
        v13 = v35;
        v11 = v37;
        v10 = v38;
        v12 = v36;
      }

      while (v39 >= 2);
    }

    free(v9);
    return 0;
  }

  else
  {

    return sub_1002C4BEC(a1, a2, a4 * a3);
  }
}

uint64_t sub_1002C50EC(FILE *__stream, float *a2, uint64_t a3, int a4)
{
  v4 = a4;
  v5 = a3;
  if ((a3 - 0x8000) >= 0xFFFF8008)
  {
    if (a4 < 1)
    {
      v14 = 0;
      goto LABEL_107;
    }

    v14 = 0;
    v15 = (4 * a3);
    v100 = (2 * a3);
    v99 = (3 * a3);
    v103 = 2 * a3;
    v104 = a3;
    v102 = 3 * a3;
    v101 = 4 * a3;
    while (1)
    {
      if (!fread(&v107, 4uLL, 1uLL, __stream))
      {
LABEL_109:
        free(v14);
        LODWORD(v13) = 0;
LABEL_110:
        v84 = 0;
        goto LABEL_113;
      }

      v16 = v107;
      v17 = v108;
      if (v107 != 2 || v108 != 2)
      {
        goto LABEL_115;
      }

      if (v109 < 0)
      {
        v17 = 2;
LABEL_115:
        if (v110)
        {
          v85 = ldexp(1.0, v110 - 136);
          v86 = v16 * v85;
          v87 = v17 * v85;
          LOBYTE(v88) = v109;
          v89 = v85 * v88;
        }

        else
        {
          v89 = 0.0;
          v87 = 0.0;
          v86 = 0.0;
        }

        *a2 = v89;
        a2[1] = v87;
        a2[2] = v86;
        free(v14);
        v90 = v4 * v5;
        if (v90 >= 2)
        {
          v91 = a2 + 5;
          while (1)
          {
            v13 = fread(v113, 4uLL, 1uLL, __stream);
            if (!v13)
            {
              break;
            }

            if (v114)
            {
              v92 = ldexp(1.0, v114 - 136);
              v93 = v92;
              LOBYTE(v92) = v113[0];
              LOBYTE(v94) = v113[1];
              LOBYTE(v95) = v113[2];
              --v90;
              *(v91 - 2) = v93 * v95;
              *(v91 - 1) = v93 * v94;
              *v91 = v93 * LODWORD(v92);
              v91 += 3;
              if (v90 <= 1)
              {
                return 0;
              }
            }

            else
            {
              --v90;
              *(v91 - 2) = 0.0;
              *(v91 - 1) = 0.0;
              *v91 = 0.0;
              v91 += 3;
              if (v90 <= 1)
              {
                return 0;
              }
            }
          }

          goto LABEL_110;
        }

        return 0;
      }

      if ((v110 | (v109 << 8)) != v5)
      {
        free(v14);
        v84 = "wrong scanline width";
LABEL_112:
        LODWORD(v13) = 2;
LABEL_113:
        sub_1002C41BC(v13, v84);
      }

      if (!v14)
      {
        v14 = malloc_type_malloc(v15, 0x100004077774924uLL);
        if (!v14)
        {
          v84 = "unable to allocate buffer space";
          LODWORD(v13) = 3;
          goto LABEL_113;
        }
      }

      v19 = (v14 + v104);
      v20 = v14;
      do
      {
        if (!fread(&v105, 2uLL, 1uLL, __stream))
        {
          goto LABEL_109;
        }

        v21 = v105;
        v22 = v19 - v20;
        if (v105 < 0x81u)
        {
          if (!v105 || v22 < v105)
          {
LABEL_111:
            free(v14);
            v84 = "bad scanline data";
            goto LABEL_112;
          }

          v20->i8[0] = v106;
          v20 = (v20 + 1);
          v27 = (v21 - 1);
          if (v21 != 1)
          {
            if (!fread(v20, (v21 - 1), 1uLL, __stream))
            {
              goto LABEL_109;
            }

            v20 = (v20 + v27);
          }
        }

        else
        {
          v23 = v105 - 128;
          if (v22 < v23)
          {
            goto LABEL_111;
          }

          v24 = v106;
          if (v23 <= 0xF)
          {
            v25 = v105 - 128;
            v26 = v20;
LABEL_37:
            v31 = v25 + 1;
            v20 = v26;
            do
            {
              v20->i8[0] = v24;
              v20 = (v20 + 1);
              --v31;
            }

            while (v31 > 1);
            continue;
          }

          v25 = v105 - 128 - ((v105 + 0x80) & 0x70);
          v26 = (v20 + ((v105 + 0x80) & 0x70));
          v28 = vdup_n_s8(v106);
          v29 = v20 + 1;
          v30 = (v105 + 0x80) & 0x70;
          do
          {
            v29[-1] = v28;
            *v29 = v28;
            v29 += 2;
            v30 -= 16;
          }

          while (v30);
          v20 = (v20 + (v23 & 0x70));
          if ((v23 & 0x70) != v23)
          {
            goto LABEL_37;
          }
        }
      }

      while (v20 < v19);
      v32 = (v14 + v103);
      if (v20 < &v14->i8[v103])
      {
        while (1)
        {
          if (!fread(&v105, 2uLL, 1uLL, __stream))
          {
            goto LABEL_109;
          }

          v49 = v105;
          v50 = v32 - v20;
          v51 = v105 - 128;
          if (v105 <= 0x80u)
          {
            if (!v105 || v50 < v105)
            {
              goto LABEL_111;
            }

            v20->i8[0] = v106;
            v54 = (v20 + 1);
            v55 = (v49 - 1);
            if (v49 == 1)
            {
              v33 = v54;
            }

            else
            {
              if (!fread(v54, (v49 - 1), 1uLL, __stream))
              {
                goto LABEL_109;
              }

              v33 = (v54 + v55);
            }
          }

          else
          {
            if (v50 < v51)
            {
              goto LABEL_111;
            }

            v52 = v106;
            if (v51 >= 0x10)
            {
              v53 = v105 - 128 - ((v105 + 0x80) & 0x70);
              v33 = (v20 + ((v105 + 0x80) & 0x70));
              v56 = vdup_n_s8(v106);
              v57 = v20 + 1;
              v58 = (v105 + 0x80) & 0x70;
              do
              {
                v57[-1] = v56;
                *v57 = v56;
                v57 += 2;
                v58 -= 16;
              }

              while (v58);
              if ((v51 & 0x70) == v51)
              {
                goto LABEL_51;
              }
            }

            else
            {
              v53 = v105 - 128;
              v33 = v20;
            }

            v59 = v53 + 1;
            do
            {
              v33->i8[0] = v52;
              v33 = (v33 + 1);
              --v59;
            }

            while (v59 > 1);
          }

LABEL_51:
          v20 = v33;
          if (v33 >= v32)
          {
            goto LABEL_42;
          }
        }
      }

      v33 = v20;
LABEL_42:
      v34 = (v14 + v102);
      if (v33 < &v14->i8[v102])
      {
        while (1)
        {
          if (!fread(&v105, 2uLL, 1uLL, __stream))
          {
            goto LABEL_109;
          }

          v60 = v105;
          v61 = v34 - v33;
          v62 = v105 - 128;
          if (v105 <= 0x80u)
          {
            if (!v105 || v61 < v105)
            {
              goto LABEL_111;
            }

            v33->i8[0] = v106;
            v65 = (v33 + 1);
            v66 = (v60 - 1);
            if (v60 == 1)
            {
              v35 = v65;
            }

            else
            {
              if (!fread(v65, (v60 - 1), 1uLL, __stream))
              {
                goto LABEL_109;
              }

              v35 = (v65 + v66);
            }
          }

          else
          {
            if (v61 < v62)
            {
              goto LABEL_111;
            }

            v63 = v106;
            if (v62 >= 0x10)
            {
              v64 = v105 - 128 - ((v105 + 0x80) & 0x70);
              v35 = (v33 + ((v105 + 0x80) & 0x70));
              v67 = vdup_n_s8(v106);
              v68 = v33 + 1;
              v69 = (v105 + 0x80) & 0x70;
              do
              {
                v68[-1] = v67;
                *v68 = v67;
                v68 += 2;
                v69 -= 16;
              }

              while (v69);
              if ((v62 & 0x70) == v62)
              {
                goto LABEL_69;
              }
            }

            else
            {
              v64 = v105 - 128;
              v35 = v33;
            }

            v70 = v64 + 1;
            do
            {
              v35->i8[0] = v63;
              v35 = (v35 + 1);
              --v70;
            }

            while (v70 > 1);
          }

LABEL_69:
          v33 = v35;
          if (v35 >= v34)
          {
            goto LABEL_44;
          }
        }
      }

      v35 = v33;
LABEL_44:
      v36 = v14 + v101;
      if (v35 < &v14->i8[v101])
      {
        do
        {
          if (!fread(&v105, 2uLL, 1uLL, __stream))
          {
            goto LABEL_109;
          }

          v72 = v105;
          v73 = v36 - v35;
          v74 = v105 - 128;
          if (v105 <= 0x80u)
          {
            if (!v105 || v73 < v105)
            {
              goto LABEL_111;
            }

            v35->i8[0] = v106;
            v77 = (v35 + 1);
            v78 = (v72 - 1);
            if (v72 == 1)
            {
              v71 = v77;
            }

            else
            {
              if (!fread(v77, (v72 - 1), 1uLL, __stream))
              {
                goto LABEL_109;
              }

              v71 = (v77 + v78);
            }
          }

          else
          {
            if (v73 < v74)
            {
              goto LABEL_111;
            }

            v75 = v106;
            if (v74 >= 0x10)
            {
              v76 = v105 - 128 - ((v105 + 0x80) & 0x70);
              v71 = (v35 + ((v105 + 0x80) & 0x70));
              v79 = vdup_n_s8(v106);
              v80 = v35 + 1;
              v81 = (v105 + 0x80) & 0x70;
              do
              {
                v80[-1] = v79;
                *v80 = v79;
                v80 += 2;
                v81 -= 16;
              }

              while (v81);
              if ((v74 & 0x70) == v74)
              {
                goto LABEL_87;
              }
            }

            else
            {
              v76 = v105 - 128;
              v71 = v35;
            }

            v82 = v76 + 1;
            do
            {
              v71->i8[0] = v75;
              v71 = (v71 + 1);
              --v82;
            }

            while (v82 > 1);
          }

LABEL_87:
          v35 = v71;
        }

        while (v71 < v36);
      }

      v96 = v15;
      v97 = v5;
      v98 = v4;
      v37 = 0;
      v38 = v14 + v99;
      v39 = v14 + v100;
      v40 = v14 + v104;
      do
      {
        v45 = v14;
        v46 = v14->u8[v37];
        v107 = v14->u8[v37];
        v47 = v40[v37];
        v108 = v40[v37];
        v48 = v39[v37];
        v109 = v39[v37];
        v110 = v38[v37];
        if (v110)
        {
          v41 = ldexp(1.0, v110 - 136);
          v42 = v46 * v41;
          v43 = v47 * v41;
          v44 = v48 * v41;
        }

        else
        {
          v44 = 0.0;
          v43 = 0.0;
          v42 = 0.0;
        }

        *a2 = v44;
        a2[1] = v43;
        a2[2] = v42;
        a2 += 3;
        ++v37;
        v14 = v45;
      }

      while (v104 != v37);
      v4 = v98 - 1;
      v15 = v96;
      v5 = v97;
      if (v98 <= 1)
      {
LABEL_107:
        free(v14);
        return 0;
      }
    }
  }

  if (a4 * a3 >= 1)
  {
    v8 = a4 * a3 + 1;
    while (1)
    {
      v13 = fread(__ptr, 4uLL, 1uLL, __stream);
      if (!v13)
      {
        break;
      }

      if (v112)
      {
        v9 = ldexp(1.0, v112 - 136);
        v10 = v9;
        LOBYTE(v9) = __ptr[0];
        LOBYTE(v11) = __ptr[1];
        LOBYTE(v12) = __ptr[2];
        *a2 = v10 * v12;
        a2[1] = v10 * v11;
        a2[2] = v10 * LODWORD(v9);
        a2 += 3;
        if (--v8 <= 1)
        {
          return 0;
        }
      }

      else
      {
        *a2 = 0.0;
        a2[1] = 0.0;
        a2[2] = 0.0;
        a2 += 3;
        if (--v8 <= 1)
        {
          return 0;
        }
      }
    }

    goto LABEL_110;
  }

  return 0;
}

uint64_t sub_1002C5884(uint64_t result)
{
  if (result != result)
  {
    v1[0] = 0;
    v1[1] = 0;
    qmemcpy(sub_1002A80E0(v1, 22), "(size_t)valueInt == sz", 22);
    sub_1002A8980(-215, v1, "validateToInt", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgcodecs/src/utils.cpp", 48);
  }

  return result;
}

uint64_t sub_1002C5924(uint64_t result, int a2, unint64_t a3, int a4, unint64_t a5, int a6)
{
  v6 = HIDWORD(a5);
  if (HIDWORD(a5) && a5 >= 1)
  {
    v7 = 2 * (a6 != 0);
    v8 = v7 ^ 2;
    v9 = -3 * a5 + a2;
    v10 = a5 & 0x7FFFFFFF;
    if ((a5 & 0xF) != 0)
    {
      v11 = a5 & 0xF;
    }

    else
    {
      v11 = 16;
    }

    if (v10 > 0x10)
    {
      if (a4 < 0)
      {
        do
        {
          v46 = 0;
          v47 = result;
          LODWORD(v6) = v6 - 1;
          result += v9;
          do
          {
            *(a3 + v46++) = (9617 * *(v47 + 1) + 1868 * *(v47 + v7) + 4899 * *(v47 + v8) + 0x2000) >> 14;
            v47 += 3;
            result += 3;
          }

          while (v10 != v46);
          a3 += a4;
        }

        while (v6);
      }

      else
      {
        v14 = a3 + (HIDWORD(a5) - 1) * a4 + v10;
        v15 = v10 - v11;
        v16 = vdupq_n_s16(0x74Cu);
        v17 = vdupq_n_s16(0x2591u);
        v18 = vdupq_n_s16(0x1323u);
        v19.i64[0] = 0x200000002000;
        v19.i64[1] = 0x200000002000;
        v20 = a3;
        do
        {
          v21 = 0;
          v23 = result + 3 * v10 + v8 - 2 > a3 && result + v8 < v14;
          v25 = result + 3 * v10 - 1 > a3 && result + 1 < v14;
          v26 = result + v7 < v14 && result + 3 * v10 + v7 - 2 > a3;
          if (!v26 && !v23 && !v25)
          {
            v27 = 0;
            v28 = result + 3 * v15;
            do
            {
              v29 = (result + v7);
              v30 = vld3q_s8(v29);
              v31 = vmovl_u8(*&v30);
              v32 = vmovl_high_u8(v30);
              v33 = vmull_high_u16(v32, v16);
              v34 = (result + 1);
              v35 = vld3q_s8(v34);
              v36 = vmull_high_u16(v31, v16);
              v37 = vmovl_high_u8(v35);
              v38 = vmovl_u8(*&v35);
              v39 = (result + v8);
              v40 = vld3q_s8(v39);
              v41 = vmovl_u8(*&v40);
              v42 = vmovl_high_u8(v40);
              v43 = vaddq_s32(vmlal_u16(vmlal_u16(vmull_u16(*v31.i8, *v16.i8), *v38.i8, *v17.i8), *v41.i8, *v18.i8), v19);
              v44 = vaddq_s32(vmlal_u16(vmlal_u16(vmull_u16(*v32.i8, *v16.i8), *v37.i8, *v17.i8), *v42.i8, *v18.i8), v19);
              v48.val[3] = vshrq_n_u32(vaddq_s32(vmlal_high_u16(vmlal_high_u16(v33, v37, v17), v42, v18), v19), 0xEuLL);
              v48.val[2] = vshrq_n_u32(v44, 0xEuLL);
              v48.val[1] = vshrq_n_u32(vaddq_s32(vmlal_high_u16(vmlal_high_u16(v36, v38, v17), v41, v18), v19), 0xEuLL);
              v48.val[0] = vshrq_n_u32(v43, 0xEuLL);
              *(v20 + v27) = vqtbl4q_s8(v48, xmmword_1003E36F0);
              v27 += 16;
              result += 48;
            }

            while (v15 != v27);
            v21 = v15;
            result = v28;
          }

          v45 = result;
          LODWORD(v6) = v6 - 1;
          result += v9;
          do
          {
            *(v20 + v21++) = (9617 * *(v45 + 1) + 1868 * *(v45 + v7) + 4899 * *(v45 + v8) + 0x2000) >> 14;
            v45 += 3;
            result += 3;
          }

          while (v10 != v21);
          v20 += a4;
        }

        while (v6);
      }
    }

    else
    {
      do
      {
        v12 = 0;
        v13 = result;
        LODWORD(v6) = v6 - 1;
        result += v9;
        do
        {
          *(a3 + v12++) = (9617 * *(v13 + 1) + 1868 * *(v13 + v7) + 4899 * *(v13 + v8) + 0x2000) >> 14;
          v13 += 3;
          result += 3;
        }

        while (v10 != v12);
        a3 += a4;
      }

      while (v6);
    }
  }

  return result;
}

uint64_t sub_1002C5BE4(uint64_t result, int a2, uint64_t a3, int a4, unint64_t a5, int a6, int a7)
{
  v7 = HIDWORD(a5);
  if (HIDWORD(a5) && a5 >= 1)
  {
    v8 = a2 - a5 * a6;
    do
    {
      v9 = 0;
      LODWORD(v7) = v7 - 1;
      do
      {
        *(a3 + 2 * v9++) = (9617 * *(result + 2) + 1868 * *(result + 4 * (a7 != 0)) + 4899 * *(result + 2 * ((2 * (a7 != 0)) ^ 2u)) + 0x2000) >> 14;
        result += 2 * a6;
      }

      while ((a5 & 0x7FFFFFFF) != v9);
      result += 2 * v8;
      a3 += 2 * a4;
    }

    while (v7);
  }

  return result;
}

uint64_t sub_1002C5C78(uint64_t result, int a2, unint64_t a3, int a4, unint64_t a5, int a6)
{
  v6 = HIDWORD(a5);
  if (HIDWORD(a5) && a5 >= 1)
  {
    v7 = 2 * (a6 != 0);
    v8 = v7 ^ 2;
    v9 = a2 - 4 * a5;
    v10 = a5 & 0x7FFFFFFF;
    if ((a5 & 0xF) != 0)
    {
      v11 = a5 & 0xF;
    }

    else
    {
      v11 = 16;
    }

    if (v10 > 0x10)
    {
      if (a4 < 0)
      {
        do
        {
          v45 = 0;
          v46 = result;
          LODWORD(v6) = v6 - 1;
          result += v9;
          do
          {
            *(a3 + v45++) = (9617 * *(v46 + 1) + 1868 * *(v46 + v7) + 4899 * *(v46 + v8) + 0x2000) >> 14;
            v46 += 4;
            result += 4;
          }

          while (v10 != v45);
          a3 += a4;
        }

        while (v6);
      }

      else
      {
        v14 = a3 + (HIDWORD(a5) - 1) * a4 + v10;
        v15 = v10 - v11;
        v16 = vdupq_n_s16(0x74Cu);
        v17 = vdupq_n_s16(0x2591u);
        v18 = vdupq_n_s16(0x1323u);
        v19.i64[0] = 0x200000002000;
        v19.i64[1] = 0x200000002000;
        v20 = a3;
        do
        {
          v21 = 0;
          v23 = result + (v8 & 0xFFFFFFFE00000003 | (4 * (a5 & 0x7FFFFFFF))) - 3 > a3 && result + v8 < v14;
          v25 = result + 4 * v10 - 2 > a3 && result + 1 < v14;
          v26 = result + v7 < v14 && result + (v7 & 0xFFFFFFFE00000003 | (4 * (a5 & 0x7FFFFFFF))) - 3 > a3;
          if (!v26 && !v23 && !v25)
          {
            v27 = 0;
            v28 = result + 4 * v15;
            do
            {
              v29 = (result + v7);
              v30 = vld4q_s8(v29);
              v31 = vmovl_u8(*&v30);
              v32 = vmovl_high_u8(v30);
              v33 = (result + 1);
              v34 = vld4q_s8(v33);
              v35 = vmull_high_u16(v31, v16);
              v36 = vmovl_high_u8(v34);
              v37 = vmovl_u8(*&v34);
              v38 = (result + v8);
              v39 = vld4q_s8(v38);
              v40 = vmovl_u8(*&v39);
              v41 = vmovl_high_u8(v39);
              v42 = vaddq_s32(vmlal_u16(vmlal_u16(vmull_u16(*v31.i8, *v16.i8), *v37.i8, *v17.i8), *v40.i8, *v18.i8), v19);
              v43 = vaddq_s32(vmlal_high_u16(vmlal_high_u16(v35, v37, v17), v40, v18), v19);
              v47.val[3] = vshrq_n_u32(vaddq_s32(vmlal_high_u16(vmlal_high_u16(vmull_high_u16(v32, v16), v36, v17), v41, v18), v19), 0xEuLL);
              v47.val[2] = vshrq_n_u32(vaddq_s32(vmlal_u16(vmlal_u16(vmull_u16(*v32.i8, *v16.i8), *v36.i8, *v17.i8), *v41.i8, *v18.i8), v19), 0xEuLL);
              v47.val[1] = vshrq_n_u32(v43, 0xEuLL);
              v47.val[0] = vshrq_n_u32(v42, 0xEuLL);
              *(v20 + v27) = vqtbl4q_s8(v47, xmmword_1003E36F0);
              v27 += 16;
              result += 64;
            }

            while (v15 != v27);
            v21 = v15;
            result = v28;
          }

          v44 = result;
          LODWORD(v6) = v6 - 1;
          result += v9;
          do
          {
            *(v20 + v21++) = (9617 * *(v44 + 1) + 1868 * *(v44 + v7) + 4899 * *(v44 + v8) + 0x2000) >> 14;
            v44 += 4;
            result += 4;
          }

          while (v10 != v21);
          v20 += a4;
        }

        while (v6);
      }
    }

    else
    {
      do
      {
        v12 = 0;
        v13 = result;
        LODWORD(v6) = v6 - 1;
        result += v9;
        do
        {
          *(a3 + v12++) = (9617 * *(v13 + 1) + 1868 * *(v13 + v7) + 4899 * *(v13 + v8) + 0x2000) >> 14;
          v13 += 4;
          result += 4;
        }

        while (v10 != v12);
        a3 += a4;
      }

      while (v6);
    }
  }

  return result;
}

uint64_t sub_1002C5F3C(uint64_t result, int a2, char *a3, int a4, unint64_t a5, int a6)
{
  v6 = HIDWORD(a5);
  if (HIDWORD(a5) && a5 >= 1)
  {
    v7 = 2 * (a6 != 0);
    v8 = v7 ^ 2;
    v9 = -3 * a5 + a4;
    v10 = a2 - 4 * a5;
    v11 = a5 & 0x7FFFFFFF;
    if ((a5 & 0xF) != 0)
    {
      v12 = a5 & 0xF;
    }

    else
    {
      v12 = 16;
    }

    if (v11 >= 0x11)
    {
      v17 = v11 - v12;
      do
      {
        v18 = 0;
        v19 = &a3[3 * (a5 - 1) + 3];
        v21 = a3 < result + ((4 * (a5 - 1)) | 2uLL) && result + 1 < v19;
        v23 = a3 < result + (v7 | (4 * (a5 - 1)) | 1uLL) && result + v7 < v19;
        v24 = result + v8 >= v19 || a3 >= result + (v8 & 0xFFFFFFFC00000003 | (4 * (a5 - 1)) | 1);
        if (v24 && !v21 && !v23)
        {
          v25 = result + 4 * v17;
          v26 = &a3[3 * v17];
          v27 = v17;
          do
          {
            v28 = (result + v8);
            v29 = vld4q_s8(v28);
            v34.val[0].i64[0] = vqtbl2q_s8(*(result + v7), xmmword_1003E3780).u64[0];
            v34.val[0].i64[1] = vqtbl2q_s8(*(result + v7 + 32), xmmword_1003E6690).i64[1];
            v34.val[1].i64[0] = vqtbl2q_s8(*(result + 1), xmmword_1003E3780).u64[0];
            v34.val[1].i64[1] = vqtbl2q_s8(*(result + 33), xmmword_1003E6690).i64[1];
            v34.val[2] = v29;
            vst3q_s8(a3, v34);
            a3 += 48;
            result += 64;
            v27 -= 16;
          }

          while (v27);
          result = v25;
          a3 = v26;
          v18 = v17;
        }

        v30 = a3;
        v31 = result;
        LODWORD(v6) = v6 - 1;
        result += v10;
        a3 += v9;
        v32 = a5 - v18;
        do
        {
          v33 = *(v31 + 1);
          *v30 = *(v31 + v7);
          v30[1] = v33;
          v30[2] = *(v31 + v8);
          v30 += 3;
          v31 += 4;
          result += 4;
          a3 += 3;
          --v32;
        }

        while (v32);
      }

      while (v6);
    }

    else
    {
      do
      {
        v13 = a3;
        v14 = result;
        LODWORD(v6) = v6 - 1;
        result += v10;
        a3 += v9;
        v15 = a5;
        do
        {
          v16 = *(v14 + 1);
          *v13 = *(v14 + v7);
          v13[1] = v16;
          v13[2] = *(v14 + v8);
          v13 += 3;
          v14 += 4;
          result += 4;
          a3 += 3;
          --v15;
        }

        while (v15);
      }

      while (v6);
    }
  }

  return result;
}

char *sub_1002C6134(char *result, int a2, char *a3, int a4, unint64_t a5)
{
  v5 = HIDWORD(a5);
  if (!HIDWORD(a5) || a5 < 1)
  {
    return result;
  }

  v6 = a2 - 3 * a5;
  v7 = a4 - 3 * a5;
  if ((a5 & 0x7FFFFFFF) >= 0x20)
  {
    v13 = 3 * (a5 - 1) + 3;
    v14 = 3 * ((a5 & 0x7FFFFFFF) - (a5 & 0x1F));
    while (1)
    {
      if (a3 >= &result[v13] || result >= &a3[v13])
      {
        v16 = &result[v14];
        v17 = &a3[v14];
        v18 = (a5 & 0x7FFFFFFF) - (a5 & 0x1F);
        do
        {
          v23.val[1] = *(result + 2);
          v24 = *(result + 48);
          v25.val[1] = *(result + 5);
          v23.val[0] = vqtbl2q_s8(*result, xmmword_1003E66A0);
          v26.val[0] = vqtbl2q_s8(v23, xmmword_1003E66B0);
          v23.val[0] = vqtbl2q_s8(*result, xmmword_1003E66C0);
          v26.val[1] = vqtbl2q_s8(v23, xmmword_1003E66D0);
          v23.val[0] = vqtbl2q_s8(*result, xmmword_1003E66E0);
          v26.val[2] = vqtbl2q_s8(v23, xmmword_1003E66F0);
          v19 = a3;
          vst3q_s8(v19, v26);
          v19 += 48;
          v25.val[0] = vqtbl2q_s8(v24, xmmword_1003E66A0);
          v26.val[0] = vqtbl2q_s8(v25, xmmword_1003E66B0);
          v25.val[0] = vqtbl2q_s8(v24, xmmword_1003E66C0);
          v26.val[1] = vqtbl2q_s8(v25, xmmword_1003E66D0);
          v25.val[0] = vqtbl2q_s8(v24, xmmword_1003E66E0);
          v26.val[2] = vqtbl2q_s8(v25, xmmword_1003E66F0);
          vst3q_s8(v19, v26);
          a3 += 96;
          result += 96;
          v18 -= 32;
        }

        while (v18);
        v15 = (a5 & 0x7FFFFFFF) - (a5 & 0x1F);
        if ((a5 & 0x1F) == 0)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v15 = 0;
        v16 = result;
        v17 = a3;
      }

      v20 = a5 - v15;
      do
      {
        v21 = v16[1];
        v22 = v16[2];
        v17[2] = *v16;
        v17[1] = v21;
        *v17 = v22;
        v17 += 3;
        v16 += 3;
        --v20;
      }

      while (v20);
LABEL_9:
      result = &v16[v6];
      a3 = &v17[v7];
      LODWORD(v5) = v5 - 1;
      if (!v5)
      {
        return result;
      }
    }
  }

  do
  {
    v8 = result;
    LODWORD(v5) = v5 - 1;
    result += v6;
    v9 = a3 + 2;
    a3 += v7;
    v10 = a5;
    do
    {
      v11 = v8[1];
      v12 = v8[2];
      *v9 = *v8;
      result += 3;
      *(v9 - 1) = v11;
      *(v9 - 2) = v12;
      a3 += 3;
      v9 += 3;
      v8 += 3;
      --v10;
    }

    while (v10);
  }

  while (v5);
  return result;
}

__int16 *sub_1002C62D4(__int16 *result, int a2, __int16 *a3, int a4, unint64_t a5)
{
  v5 = HIDWORD(a5);
  if (!HIDWORD(a5) || a5 < 1)
  {
    return result;
  }

  v6 = 3 * a5;
  if ((a5 & 0x7FFFFFFF) >= 0x10)
  {
    v15 = a2 - v6;
    v16 = a4 - v6;
    v17 = 6 * (a5 - 1) + 6;
    v18 = 3 * ((a5 & 0x7FFFFFFF) - (a5 & 0xF));
    while (1)
    {
      if (a3 >= (result + v17) || result >= (a3 + v17))
      {
        v20 = &result[v18];
        v21 = &a3[v18];
        v22 = (a5 & 0x7FFFFFFF) - (a5 & 0xF);
        do
        {
          v27.val[0] = vqtbl2q_s8(*result, xmmword_1003E6700);
          v29 = *(result + 24);
          v28.val[1] = *(result + 5);
          v27.val[1] = *(result + 2);
          v30.val[0] = vqtbl2q_s8(v27, xmmword_1003E6710);
          v27.val[0] = vqtbl2q_s8(*result, xmmword_1003E6720);
          v30.val[1] = vqtbl2q_s8(v27, xmmword_1003E6730);
          v27.val[0] = vqtbl2q_s8(*result, xmmword_1003E6740);
          v30.val[2] = vqtbl2q_s8(v27, xmmword_1003E6750);
          v23 = a3;
          vst3q_s16(v23, v30);
          v23 += 24;
          v28.val[0] = vqtbl2q_s8(v29, xmmword_1003E6700);
          v30.val[0] = vqtbl2q_s8(v28, xmmword_1003E6710);
          v28.val[0] = vqtbl2q_s8(v29, xmmword_1003E6720);
          v30.val[1] = vqtbl2q_s8(v28, xmmword_1003E6730);
          v28.val[0] = vqtbl2q_s8(v29, xmmword_1003E6740);
          v30.val[2] = vqtbl2q_s8(v28, xmmword_1003E6750);
          vst3q_s16(v23, v30);
          a3 += 48;
          result += 48;
          v22 -= 16;
        }

        while (v22);
        v19 = (a5 & 0x7FFFFFFF) - (a5 & 0xF);
        if ((a5 & 0xF) == 0)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v19 = 0;
        v20 = result;
        v21 = a3;
      }

      v24 = a5 - v19;
      do
      {
        v25 = v20[1];
        v26 = v20[2];
        v21[2] = *v20;
        v21[1] = v25;
        *v21 = v26;
        v21 += 3;
        v20 += 3;
        --v24;
      }

      while (v24);
LABEL_10:
      result = &v20[v15];
      a3 = &v21[v16];
      LODWORD(v5) = v5 - 1;
      if (!v5)
      {
        return result;
      }
    }
  }

  v7 = 2 * v6;
  v8 = 2 * a2 - v7;
  v9 = 2 * a4 - v7;
  do
  {
    v10 = result;
    LODWORD(v5) = v5 - 1;
    result = (result + v8);
    v11 = a3 + 2;
    a3 = (a3 + v9);
    v12 = a5;
    do
    {
      v13 = v10[1];
      v14 = v10[2];
      *v11 = *v10;
      result += 3;
      *(v11 - 1) = v13;
      *(v11 - 2) = v14;
      a3 += 3;
      v11 += 3;
      v10 += 3;
      --v12;
    }

    while (v12);
  }

  while (v5);
  return result;
}

uint16x8_t *sub_1002C648C(uint16x8_t *result, int a2, unint64_t a3, int a4, unint64_t a5)
{
  v5 = HIDWORD(a5);
  if (HIDWORD(a5) && a5 >= 1)
  {
    v6 = a4;
    v7 = a5 & 0x7FFFFFFF;
    if (v7 > 3)
    {
      v9 = (HIDWORD(a5) - 1);
      v10 = a3 + v9 * a4 + v7 > result && result + 2 * v7 + v9 * a2 > a3;
      if (v10 || (a4 | a2) < 0)
      {
        do
        {
          v23 = 0;
          LODWORD(v5) = v5 - 1;
          do
          {
            *(a3 + v23) = (14944 * (result->i16[v23] & 0x1F) + 9617 * ((result->u16[v23] >> 2) & 0xF8) + 4899 * ((result->u16[v23] >> 7) & 0xF8u) + 0x2000) >> 14;
            ++v23;
          }

          while (v7 != v23);
          a3 += a4;
          result = (result + a2);
        }

        while (v5);
      }

      else
      {
        v11 = a5 & 3;
        v12 = v7 - v11;
        if (v7 >= 0x10)
        {
          v24 = a5 & 0xF;
          v25.i64[0] = 0xF8000000F8;
          v25.i64[1] = 0xF8000000F8;
          v26 = vdup_n_s16(0x74Cu);
          v27 = vdup_n_s16(0x2591u);
          v28 = vdup_n_s16(0x1323u);
          v29.i64[0] = 0x200000002000;
          v29.i64[1] = 0x200000002000;
          do
          {
            v30 = 0;
            LODWORD(v5) = v5 - 1;
            v31 = result;
            do
            {
              v33 = *v31;
              v32 = v31[1];
              v31 += 2;
              v34 = vmovl_u16(*v33.i8);
              v35 = vmovl_u16(*v32.i8);
              v36 = vmovl_high_u16(v33);
              v37 = vmovl_high_u16(v32);
              v44.val[3] = vshrq_n_u32(vaddq_s32(vmlal_u16(vmlal_u16(vmull_u16(vmovn_s32(vandq_s8(vshrq_n_u32(v37, 2uLL), v25)), v27), vmovn_s32(vandq_s8(vshll_high_n_u16(v32, 3uLL), v25)), v26), vmovn_s32(vandq_s8(vshrq_n_u32(v37, 7uLL), v25)), v28), v29), 0xEuLL);
              v44.val[1] = vshrq_n_u32(vaddq_s32(vmlal_u16(vmlal_u16(vmull_u16(vmovn_s32(vandq_s8(vshrq_n_u32(v36, 2uLL), v25)), v27), vmovn_s32(vandq_s8(vshll_high_n_u16(v33, 3uLL), v25)), v26), vmovn_s32(vandq_s8(vshrq_n_u32(v36, 7uLL), v25)), v28), v29), 0xEuLL);
              v44.val[2] = vshrq_n_u32(vaddq_s32(vmlal_u16(vmlal_u16(vmull_u16(vmovn_s32(vandq_s8(vshrq_n_u32(v35, 2uLL), v25)), v27), vmovn_s32(vandq_s8(vshll_n_u16(*v32.i8, 3uLL), v25)), v26), vmovn_s32(vandq_s8(vshrq_n_u32(v35, 7uLL), v25)), v28), v29), 0xEuLL);
              v44.val[0] = vshrq_n_u32(vaddq_s32(vmlal_u16(vmlal_u16(vmull_u16(vmovn_s32(vandq_s8(vshrq_n_u32(v34, 2uLL), v25)), v27), vmovn_s32(vandq_s8(vshll_n_u16(*v33.i8, 3uLL), v25)), v26), vmovn_s32(vandq_s8(vshrq_n_u32(v34, 7uLL), v25)), v28), v29), 0xEuLL);
              *(a3 + v30) = vqtbl4q_s8(v44, xmmword_1003E36F0);
              v30 += 16;
            }

            while (v7 - v24 != v30);
            if (v24)
            {
              v38 = v7 - v24;
              if (v24 < 4)
              {
                goto LABEL_39;
              }

              v39 = v24 - v11;
              v40 = 2 * v7 - 2 * v24;
              v41 = v7 - v24;
              do
              {
                v42 = *&result->i8[v40];
                v43 = vmovl_u16(v42);
                *(a3 + v41) = vuzp1_s8(vrshrn_n_s32(vmlal_u16(vmlal_u16(vmull_u16(vmovn_s32(vandq_s8(vshrq_n_u32(v43, 2uLL), v25)), v27), vmovn_s32(vandq_s8(vshll_n_u16(v42, 3uLL), v25)), v26), vmovn_s32(vandq_s8(vshrq_n_u32(v43, 7uLL), v25)), v28), 0xEuLL), *v25.i8).u32[0];
                v41 += 4;
                v40 += 8;
                v39 -= 4;
              }

              while (v39);
              v38 = v7 - v11;
              if (v11)
              {
LABEL_39:
                do
                {
                  *(a3 + v38) = (14944 * (result->i16[v38] & 0x1F) + 9617 * ((result->u16[v38] >> 2) & 0xF8) + 4899 * ((result->u16[v38] >> 7) & 0xF8u) + 0x2000) >> 14;
                  ++v38;
                }

                while (v7 != v38);
              }
            }

            a3 += a4;
            result = (result + a2);
          }

          while (v5);
        }

        else
        {
          v13 = v12 + 1;
          v14 = v12 + 2;
          v15.i64[0] = 0xF8000000F8;
          v15.i64[1] = 0xF8000000F8;
          v16 = vdup_n_s16(0x74Cu);
          v17 = vdup_n_s16(0x2591u);
          v18 = vdup_n_s16(0x1323u);
          do
          {
            v19 = 0;
            LODWORD(v5) = v5 - 1;
            v20 = result;
            do
            {
              v21 = *v20++;
              v22 = vmovl_u16(v21);
              *(a3 + v19) = vuzp1_s8(vrshrn_n_s32(vmlal_u16(vmlal_u16(vmull_u16(vmovn_s32(vandq_s8(vshrq_n_u32(v22, 2uLL), v15)), v17), vmovn_s32(vandq_s8(vshll_n_u16(v21, 3uLL), v15)), v16), vmovn_s32(vandq_s8(vshrq_n_u32(v22, 7uLL), v15)), v18), 0xEuLL), *v15.i8).u32[0];
              v19 += 4;
            }

            while (v12 != v19);
            if (v11)
            {
              *(a3 + v12) = (14944 * (result->i16[v12] & 0x1F) + 9617 * ((result->u16[v12] >> 2) & 0xF8) + 4899 * ((result->u16[v12] >> 7) & 0xF8u) + 0x2000) >> 14;
              if (v13 != v7)
              {
                *(a3 + v13) = (14944 * (result->i16[v13] & 0x1F) + 9617 * ((result->u16[v13] >> 2) & 0xF8) + 4899 * ((result->u16[v13] >> 7) & 0xF8u) + 0x2000) >> 14;
                if (v14 != v7)
                {
                  *(a3 + v14) = (14944 * (result->i16[v14] & 0x1F) + 9617 * ((result->u16[v14] >> 2) & 0xF8) + 4899 * ((result->u16[v14] >> 7) & 0xF8u) + 0x2000) >> 14;
                }
              }
            }

            a3 += v6;
            result = (result + a2);
          }

          while (v5);
        }
      }
    }

    else
    {
      do
      {
        v8 = 0;
        LODWORD(v5) = v5 - 1;
        do
        {
          *(a3 + v8) = (14944 * (result->i16[v8] & 0x1F) + 9617 * ((result->u16[v8] >> 2) & 0xF8) + 4899 * ((result->u16[v8] >> 7) & 0xF8u) + 0x2000) >> 14;
          ++v8;
        }

        while (v7 != v8);
        a3 += a4;
        result = (result + a2);
      }

      while (v5);
    }
  }

  return result;
}

uint16x8_t *sub_1002C6900(uint16x8_t *result, int a2, unint64_t a3, int a4, unint64_t a5)
{
  v5 = HIDWORD(a5);
  if (HIDWORD(a5) && a5 >= 1)
  {
    v6 = a4;
    v7 = a5 & 0x7FFFFFFF;
    if (v7 > 3)
    {
      v9 = (HIDWORD(a5) - 1);
      v10 = a3 + v9 * a4 + v7 > result && result + 2 * v7 + v9 * a2 > a3;
      if (v10 || (a4 | a2) < 0)
      {
        do
        {
          v24 = 0;
          LODWORD(v5) = v5 - 1;
          do
          {
            *(a3 + v24) = (14944 * (result->i16[v24] & 0x1F) + 9617 * ((result->u16[v24] >> 3) & 0xFC) + 4899 * (HIBYTE(result->u16[v24]) & 0xF8u) + 0x2000) >> 14;
            ++v24;
          }

          while (v7 != v24);
          a3 += a4;
          result = (result + a2);
        }

        while (v5);
      }

      else
      {
        v11 = a5 & 3;
        v12 = v7 - v11;
        if (v7 >= 0x10)
        {
          v25.i64[0] = 0xF8000000F8;
          v25.i64[1] = 0xF8000000F8;
          v26 = vdup_n_s16(0x74Cu);
          v27.i64[0] = 0xFC000000FCLL;
          v27.i64[1] = 0xFC000000FCLL;
          v28 = vdup_n_s16(0x2591u);
          v29 = vdup_n_s16(0x1323u);
          v30.i64[0] = 0x200000002000;
          v30.i64[1] = 0x200000002000;
          do
          {
            v31 = 0;
            LODWORD(v5) = v5 - 1;
            v32 = result;
            do
            {
              v34 = *v32;
              v33 = v32[1];
              v32 += 2;
              v35 = vmovl_u16(*v34.i8);
              v36 = vmovl_u16(*v33.i8);
              v37 = vmovl_high_u16(v34);
              v38 = vmovl_high_u16(v33);
              v45.val[3] = vshrq_n_u32(vaddq_s32(vmlal_u16(vmlal_u16(vmull_u16(vmovn_s32(vandq_s8(vshrq_n_u32(v38, 3uLL), v27)), v28), vmovn_s32(vandq_s8(vshll_high_n_u16(v33, 3uLL), v25)), v26), vmovn_s32((*&vshrq_n_u32(v38, 8uLL) & __PAIR128__(0xFFFFFFF8FFFFFFF8, 0xFFFFFFF8FFFFFFF8))), v29), v30), 0xEuLL);
              v45.val[1] = vshrq_n_u32(vaddq_s32(vmlal_u16(vmlal_u16(vmull_u16(vmovn_s32(vandq_s8(vshrq_n_u32(v37, 3uLL), v27)), v28), vmovn_s32(vandq_s8(vshll_high_n_u16(v34, 3uLL), v25)), v26), vmovn_s32((*&vshrq_n_u32(v37, 8uLL) & __PAIR128__(0xFFFFFFF8FFFFFFF8, 0xFFFFFFF8FFFFFFF8))), v29), v30), 0xEuLL);
              v45.val[2] = vshrq_n_u32(vaddq_s32(vmlal_u16(vmlal_u16(vmull_u16(vmovn_s32(vandq_s8(vshrq_n_u32(v36, 3uLL), v27)), v28), vmovn_s32(vandq_s8(vshll_n_u16(*v33.i8, 3uLL), v25)), v26), vmovn_s32((*&vshrq_n_u32(v36, 8uLL) & __PAIR128__(0xFFFFFFF8FFFFFFF8, 0xFFFFFFF8FFFFFFF8))), v29), v30), 0xEuLL);
              v45.val[0] = vshrq_n_u32(vaddq_s32(vmlal_u16(vmlal_u16(vmull_u16(vmovn_s32(vandq_s8(vshrq_n_u32(v35, 3uLL), v27)), v28), vmovn_s32(vandq_s8(vshll_n_u16(*v34.i8, 3uLL), v25)), v26), vmovn_s32((*&vshrq_n_u32(v35, 8uLL) & __PAIR128__(0xFFFFFFF8FFFFFFF8, 0xFFFFFFF8FFFFFFF8))), v29), v30), 0xEuLL);
              *(a3 + v31) = vqtbl4q_s8(v45, xmmword_1003E36F0);
              v31 += 16;
            }

            while (v7 - (a5 & 0xF) != v31);
            if ((a5 & 0xF) != 0)
            {
              v39 = v7 - (a5 & 0xF);
              if ((a5 & 0xF) < 4)
              {
                goto LABEL_39;
              }

              v40 = (a5 & 0xF) - v11;
              v41 = 2 * v7 - 2 * (a5 & 0xF);
              v42 = v7 - (a5 & 0xF);
              do
              {
                v43 = *&result->i8[v41];
                v44 = vmovl_u16(v43);
                *(a3 + v42) = vuzp1_s8(vrshrn_n_s32(vmlal_u16(vmlal_u16(vmull_u16(vmovn_s32(vandq_s8(vshrq_n_u32(v44, 3uLL), v27)), v28), vmovn_s32(vandq_s8(vshll_n_u16(v43, 3uLL), v25)), v26), vmovn_s32((*&vshrq_n_u32(v44, 8uLL) & __PAIR128__(0xFFFFFFF8FFFFFFF8, 0xFFFFFFF8FFFFFFF8))), v29), 0xEuLL), *v25.i8).u32[0];
                v42 += 4;
                v41 += 8;
                v40 -= 4;
              }

              while (v40);
              v39 = v7 - (a5 & 3);
              if ((a5 & 3) != 0)
              {
LABEL_39:
                do
                {
                  *(a3 + v39) = (14944 * (result->i16[v39] & 0x1F) + 9617 * ((result->u16[v39] >> 3) & 0xFC) + 4899 * (HIBYTE(result->u16[v39]) & 0xF8u) + 0x2000) >> 14;
                  ++v39;
                }

                while (v7 != v39);
              }
            }

            a3 += a4;
            result = (result + a2);
          }

          while (v5);
        }

        else
        {
          v13 = v12 + 1;
          v14 = v12 + 2;
          v15.i64[0] = 0xF8000000F8;
          v15.i64[1] = 0xF8000000F8;
          v16 = vdup_n_s16(0x74Cu);
          v17.i64[0] = 0xFC000000FCLL;
          v17.i64[1] = 0xFC000000FCLL;
          v18 = vdup_n_s16(0x2591u);
          v19 = vdup_n_s16(0x1323u);
          do
          {
            v20 = 0;
            LODWORD(v5) = v5 - 1;
            v21 = result;
            do
            {
              v22 = *v21++;
              v23 = vmovl_u16(v22);
              *(a3 + v20) = vuzp1_s8(vrshrn_n_s32(vmlal_u16(vmlal_u16(vmull_u16(vmovn_s32(vandq_s8(vshrq_n_u32(v23, 3uLL), v17)), v18), vmovn_s32(vandq_s8(vshll_n_u16(v22, 3uLL), v15)), v16), vmovn_s32((*&vshrq_n_u32(v23, 8uLL) & __PAIR128__(0xFFFFFFF8FFFFFFF8, 0xFFFFFFF8FFFFFFF8))), v19), 0xEuLL), *v15.i8).u32[0];
              v20 += 4;
            }

            while (v12 != v20);
            if (v11)
            {
              *(a3 + v12) = (14944 * (result->i16[v12] & 0x1F) + 9617 * ((result->u16[v12] >> 3) & 0xFC) + 4899 * (HIBYTE(result->u16[v12]) & 0xF8u) + 0x2000) >> 14;
              if (v13 != v7)
              {
                *(a3 + v13) = (14944 * (result->i16[v13] & 0x1F) + 9617 * ((result->u16[v13] >> 3) & 0xFC) + 4899 * (HIBYTE(result->u16[v13]) & 0xF8u) + 0x2000) >> 14;
                if (v14 != v7)
                {
                  *(a3 + v14) = (14944 * (result->i16[v14] & 0x1F) + 9617 * ((result->u16[v14] >> 3) & 0xFC) + 4899 * (HIBYTE(result->u16[v14]) & 0xF8u) + 0x2000) >> 14;
                }
              }
            }

            a3 += v6;
            result = (result + a2);
          }

          while (v5);
        }
      }
    }

    else
    {
      do
      {
        v8 = 0;
        LODWORD(v5) = v5 - 1;
        do
        {
          *(a3 + v8) = (14944 * (result->i16[v8] & 0x1F) + 9617 * ((result->u16[v8] >> 3) & 0xFC) + 4899 * (HIBYTE(result->u16[v8]) & 0xF8u) + 0x2000) >> 14;
          ++v8;
        }

        while (v7 != v8);
        a3 += a4;
        result = (result + a2);
      }

      while (v5);
    }
  }

  return result;
}

int16x8_t *sub_1002C6D7C(int16x8_t *result, int a2, char *a3, int a4, unint64_t a5)
{
  v5 = HIDWORD(a5);
  if (!HIDWORD(a5) || a5 < 1)
  {
    return result;
  }

  v6 = -3 * a5 + a4;
  v7 = a2;
  v8 = a5 & 0x7FFFFFFF;
  if (v8 <= 0x1F)
  {
    do
    {
      v9 = 0;
      v10 = a3;
      LODWORD(v5) = v5 - 1;
      a3 += v6;
      do
      {
        v11 = result->u16[v9];
        *v10 = 8 * v11;
        v10[1] = (v11 >> 2) & 0xF8;
        v10[2] = (v11 >> 7) & 0xF8;
        ++v9;
        v10 += 3;
        a3 += 3;
      }

      while (v8 != v9);
      result = (result + a2);
    }

    while (v5);
    return result;
  }

  v12 = 2 * v8;
  if ((a2 & 0x80000000) == 0)
  {
    v13 = result->u64 + (HIDWORD(a5) - 1) * a2 + v12;
    v14 = a5 & 0x1F;
    v15 = result + 2;
    v16.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v16.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v17 = result;
    while (1)
    {
      if (a3 >= v13 || &a3[3 * v8] <= result)
      {
        v19 = &a3[3 * (v8 - v14)];
        v20 = v8 - v14;
        v21 = v15;
        do
        {
          v23 = v21[-2];
          v22 = v21[-1];
          v25 = *v21;
          v24 = v21[1];
          v21 += 4;
          v33.val[0] = vshlq_n_s8(vuzp1q_s8(v23, v22), 3uLL);
          v33.val[1] = vandq_s8(vshrn_high_n_s16(vshrn_n_s16(v23, 2uLL), v22, 2uLL), v16);
          v33.val[2] = vandq_s8(vshrn_high_n_s16(vshrn_n_s16(v23, 7uLL), v22, 7uLL), v16);
          v32.val[0] = vshlq_n_s8(vuzp1q_s8(v25, v24), 3uLL);
          v32.val[1] = vandq_s8(vshrn_high_n_s16(vshrn_n_s16(v25, 2uLL), v24, 2uLL), v16);
          v32.val[2] = vandq_s8(vshrn_high_n_s16(vshrn_n_s16(v25, 7uLL), v24, 7uLL), v16);
          v26 = a3 + 96;
          vst3q_s8(a3, v33);
          v27 = a3 + 48;
          vst3q_s8(v27, v32);
          a3 = v26;
          v20 -= 32;
        }

        while (v20);
        v18 = v8 - v14;
        if (!v14)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v18 = 0;
        v19 = a3;
      }

      do
      {
        v28 = *(v17 + 2 * v18);
        *v19 = 8 * v28;
        v19[1] = (v28 >> 2) & 0xF8;
        v19[2] = (v28 >> 7) & 0xF8;
        ++v18;
        v19 += 3;
      }

      while (v8 != v18);
LABEL_10:
      a3 = &v19[v6];
      v17 += v7;
      v15 = (v15 + v7);
      LODWORD(v5) = v5 - 1;
      if (!v5)
      {
        return result;
      }
    }
  }

  do
  {
    v29 = 0;
    v30 = a3;
    LODWORD(v5) = v5 - 1;
    a3 += v6;
    do
    {
      v31 = result->u16[v29 / 2];
      *v30 = 8 * v31;
      v30[1] = (v31 >> 2) & 0xF8;
      v30[2] = (v31 >> 7) & 0xF8;
      v30 += 3;
      v29 += 2;
      a3 += 3;
    }

    while (v12 != v29);
    result = (result + a2);
  }

  while (v5);
  return result;
}

int16x8_t *sub_1002C6F64(int16x8_t *result, int a2, char *a3, int a4, unint64_t a5)
{
  v5 = HIDWORD(a5);
  if (!HIDWORD(a5) || a5 < 1)
  {
    return result;
  }

  v6 = -3 * a5 + a4;
  v7 = a2;
  v8 = a5 & 0x7FFFFFFF;
  if (v8 <= 0x1F)
  {
    do
    {
      v9 = 0;
      v10 = a3;
      LODWORD(v5) = v5 - 1;
      a3 += v6;
      do
      {
        v11 = result->u16[v9];
        *v10 = 8 * v11;
        v10[1] = (v11 >> 3) & 0xFC;
        v10[2] = BYTE1(v11) & 0xF8;
        ++v9;
        v10 += 3;
        a3 += 3;
      }

      while (v8 != v9);
      result = (result + a2);
    }

    while (v5);
    return result;
  }

  v12 = 2 * v8;
  if ((a2 & 0x80000000) == 0)
  {
    v13 = result->u64 + (HIDWORD(a5) - 1) * a2 + v12;
    v14 = a5 & 0x1F;
    v15 = result + 2;
    v16.i64[0] = 0xFCFCFCFCFCFCFCFCLL;
    v16.i64[1] = 0xFCFCFCFCFCFCFCFCLL;
    v17.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v17.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v18 = result;
    while (1)
    {
      if (a3 >= v13 || &a3[3 * v8] <= result)
      {
        v20 = &a3[3 * (v8 - v14)];
        v21 = v8 - v14;
        v22 = v15;
        do
        {
          v24 = v22[-2];
          v23 = v22[-1];
          v26 = *v22;
          v25 = v22[1];
          v22 += 4;
          v33.val[0] = vshlq_n_s8(vuzp1q_s8(v24, v23), 3uLL);
          v33.val[1] = vandq_s8(vshrn_high_n_s16(vshrn_n_s16(v24, 3uLL), v23, 3uLL), v16);
          v33.val[2] = vandq_s8(vuzp2q_s8(v24, v23), v17);
          v34.val[0] = vshlq_n_s8(vuzp1q_s8(v26, v25), 3uLL);
          v34.val[1] = vandq_s8(vshrn_high_n_s16(vshrn_n_s16(v26, 3uLL), v25, 3uLL), v16);
          v34.val[2] = vandq_s8(vuzp2q_s8(v26, v25), v17);
          v27 = a3 + 96;
          vst3q_s8(a3, v33);
          v28 = a3 + 48;
          vst3q_s8(v28, v34);
          a3 = v27;
          v21 -= 32;
        }

        while (v21);
        v19 = v8 - v14;
        if (!v14)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v19 = 0;
        v20 = a3;
      }

      do
      {
        v29 = *(v18 + 2 * v19);
        *v20 = 8 * v29;
        v20[1] = (v29 >> 3) & 0xFC;
        v20[2] = BYTE1(v29) & 0xF8;
        ++v19;
        v20 += 3;
      }

      while (v8 != v19);
LABEL_10:
      a3 = &v20[v6];
      v18 += v7;
      v15 = (v15 + v7);
      LODWORD(v5) = v5 - 1;
      if (!v5)
      {
        return result;
      }
    }
  }

  do
  {
    v30 = 0;
    v31 = a3;
    LODWORD(v5) = v5 - 1;
    a3 += v6;
    do
    {
      v32 = result->u16[v30 / 2];
      *v31 = 8 * v32;
      v31[1] = (v32 >> 3) & 0xFC;
      v31[2] = BYTE1(v32) & 0xF8;
      v31 += 3;
      v30 += 2;
      a3 += 3;
    }

    while (v12 != v30);
    result = (result + a2);
  }

  while (v5);
  return result;
}

char *sub_1002C7148(char *result, int a2, char *a3, int a4, unint64_t a5)
{
  v5 = HIDWORD(a5);
  if (!HIDWORD(a5) || a5 < 1)
  {
    return result;
  }

  v6 = -3 * a5 + a4;
  v7 = a2 - 4 * a5;
  if ((a5 & 0x7FFFFFFF) >= 0x10)
  {
    v14 = (a5 & 0x7FFFFFFF) - (a5 & 0xF);
    while (1)
    {
      if (a3 >= &result[4 * (a5 - 1) + 4] || result >= &a3[3 * (a5 - 1) + 3])
      {
        v16 = &result[4 * v14];
        v17 = &a3[3 * v14];
        v18 = (a5 & 0x7FFFFFFF) - (a5 & 0xF);
        do
        {
          v36 = vld4q_s8(result);
          result += 64;
          v19 = vmvnq_s8(v36.val[0]);
          v20 = vmovl_high_u8(v19);
          v21 = vmovl_u8(*v19.i8);
          v22 = vuzp1q_s16(vqtbl1q_s8(v36.val[3], xmmword_1003E3720), vqtbl1q_s8(v36.val[3], xmmword_1003E3730));
          v23 = vuzp1q_s16(vqtbl1q_s8(v36.val[3], xmmword_1003E3700), vqtbl1q_s8(v36.val[3], xmmword_1003E3710));
          v37.val[3] = vshrq_n_u32(vmull_high_u16(v23, v20), 8uLL);
          v37.val[2] = vshrq_n_u32(vmull_u16(*v23.i8, *v20.i8), 8uLL);
          v37.val[1] = vshrq_n_u32(vmull_high_u16(v22, v21), 8uLL);
          v37.val[0] = vshrq_n_u32(vmull_u16(*v22.i8, *v21.i8), 8uLL);
          v24 = vmvnq_s8(v36.val[1]);
          v25 = vmovl_high_u8(v24);
          v26 = vmovl_u8(*v24.i8);
          v38.val[3] = vshrq_n_u32(vmull_high_u16(v23, v25), 8uLL);
          v38.val[2] = vshrq_n_u32(vmull_u16(*v23.i8, *v25.i8), 8uLL);
          v38.val[1] = vshrq_n_u32(vmull_high_u16(v22, v26), 8uLL);
          v38.val[0] = vshrq_n_u32(vmull_u16(*v22.i8, *v26.i8), 8uLL);
          v27 = vmvnq_s8(v36.val[2]);
          v28 = vmovl_high_u8(v27);
          v29 = vmovl_u8(*v27.i8);
          v35.val[3] = vshrq_n_u32(vmull_high_u16(v23, v28), 8uLL);
          v35.val[2] = vshrq_n_u32(vmull_u16(*v23.i8, *v28.i8), 8uLL);
          v35.val[1] = vshrq_n_u32(vmull_high_u16(v22, v29), 8uLL);
          v35.val[0] = vshrq_n_u32(vmull_u16(*v22.i8, *v29.i8), 8uLL);
          v34.val[2] = vsubq_s8(v36.val[3], vqtbl4q_s8(v37, xmmword_1003E36F0));
          v34.val[1] = vsubq_s8(v36.val[3], vqtbl4q_s8(v38, xmmword_1003E36F0));
          v34.val[0] = vsubq_s8(v36.val[3], vqtbl4q_s8(v35, xmmword_1003E36F0));
          vst3q_s8(a3, v34);
          a3 += 48;
          v18 -= 16;
        }

        while (v18);
        v15 = (a5 & 0x7FFFFFFF) - (a5 & 0xF);
        if ((a5 & 0xF) == 0)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v15 = 0;
        v16 = result;
        v17 = a3;
      }

      v30 = a5 - v15;
      do
      {
        v31 = v16[3];
        v32 = v31 * (v16[1] ^ 0xFF);
        v33 = v31 * (v16[2] ^ 0xFF);
        v17[2] = v31 - ((v31 * (*v16 ^ 0xFF)) >> 8);
        v17[1] = v31 - HIBYTE(v32);
        *v17 = v31 - HIBYTE(v33);
        v17 += 3;
        v16 += 4;
        --v30;
      }

      while (v30);
LABEL_9:
      a3 = &v17[v6];
      result = &v16[v7];
      LODWORD(v5) = v5 - 1;
      if (!v5)
      {
        return result;
      }
    }
  }

  do
  {
    v8 = result;
    LODWORD(v5) = v5 - 1;
    result += v7;
    v9 = a3 + 2;
    a3 += v6;
    v10 = a5;
    do
    {
      v11 = v8[3];
      v12 = v11 * (v8[1] ^ 0xFF);
      v13 = v11 * (v8[2] ^ 0xFF);
      *v9 = v11 - ((v11 * (*v8 ^ 0xFF)) >> 8);
      *(v9 - 1) = v11 - HIBYTE(v12);
      v8 += 4;
      *(v9 - 2) = v11 - HIBYTE(v13);
      result += 4;
      a3 += 3;
      v9 += 3;
      --v10;
    }

    while (v10);
  }

  while (v5);
  return result;
}

const char *sub_1002C73B8(const char *result, int a2, unint64_t a3, int a4, unint64_t a5, double a6, double a7, int8x8_t a8)
{
  v9 = HIDWORD(a5);
  if (!HIDWORD(a5) || a5 < 1)
  {
    return result;
  }

  v10 = a4;
  v11 = a2 - 4 * a5;
  v12 = a5 & 0x7FFFFFFF;
  if (v12 <= 0xF)
  {
    do
    {
      v13 = 0;
      v14 = result;
      LODWORD(v9) = v9 - 1;
      result += v11;
      do
      {
        v15 = *(v14 + 3);
        a8.i8[0] = v14[1];
        a8.i8[4] = v14[2];
        v16 = vdup_n_s32(v15);
        a8 = vmul_s32(vsub_s32(v16, vshr_n_u32(vmul_s32(v16, vbic_s8(0xFF000000FFLL, a8)), 8uLL)), 0x74C00002591);
        *(a3 + v13++) = (a8.i32[0] + a8.i32[1] + 4899 * (v15 - ((v15 * (*v14 ^ 0xFF)) >> 8)) + 0x2000) >> 14;
        v14 += 4;
        result += 4;
      }

      while (v12 != v13);
      a3 += a4;
    }

    while (v9);
    return result;
  }

  if ((a4 & 0x80000000) == 0)
  {
    v17 = a3 + (HIDWORD(a5) - 1) * a4 + v12;
    v18 = a5 & 0xF;
    v19 = v12 - v18;
    v20 = vdupq_n_s32(0x74Cu);
    v21 = vdupq_n_s32(0x2591u);
    v22 = vdupq_n_s32(0x1323u);
    v23.i64[0] = 0x200000002000;
    v23.i64[1] = 0x200000002000;
    v24 = a3;
    while (1)
    {
      v25 = 0;
      if (&result[4 * v12] <= a3 || result >= v17)
      {
        v39 = &result[4 * v19];
        do
        {
          v46 = vld4q_s8(result);
          result += 64;
          v27 = vqtbl1q_s8(v46.val[3], xmmword_1003E3730);
          v28 = vqtbl1q_s8(v46.val[3], xmmword_1003E3720);
          v29 = vqtbl1q_s8(v46.val[3], xmmword_1003E3710);
          v30 = vqtbl1q_s8(v46.val[3], xmmword_1003E3700);
          v31 = vmvnq_s8(v46.val[0]);
          v32 = vmovl_u8(*v31.i8);
          v33 = vmovl_high_u8(v31);
          v34 = vuzp1q_s16(v30, v29);
          v35 = vuzp1q_s16(v28, v27);
          v36 = vmvnq_s8(v46.val[1]);
          v37 = vmovl_high_u8(v36);
          v38 = vmovl_u8(*v36.i8);
          v46.val[0] = vmvnq_s8(v46.val[2]);
          v46.val[1] = vmovl_high_u8(v46.val[0]);
          v46.val[0] = vmovl_u8(*v46.val[0].i8);
          v46.val[2] = vaddq_s32(vmlaq_s32(vmlaq_s32(vmulq_s32(vsubq_s32(v28, vshrq_n_u32(vmull_u16(*v35.i8, *v46.val[0].i8), 8uLL)), v20), vsubq_s32(v28, vshrq_n_u32(vmull_u16(*v35.i8, *v38.i8), 8uLL)), v21), vsubq_s32(v28, vshrq_n_u32(vmull_u16(*v35.i8, *v32.i8), 8uLL)), v22), v23);
          v46.val[3] = vaddq_s32(vmlaq_s32(vmlaq_s32(vmulq_s32(vsubq_s32(v30, vshrq_n_u32(vmull_u16(*v34.i8, *v46.val[1].i8), 8uLL)), v20), vsubq_s32(v30, vshrq_n_u32(vmull_u16(*v34.i8, *v37.i8), 8uLL)), v21), vsubq_s32(v30, vshrq_n_u32(vmull_u16(*v34.i8, *v33.i8), 8uLL)), v22), v23);
          v47.val[3] = vshrq_n_u32(vaddq_s32(vmlaq_s32(vmlaq_s32(vmulq_s32(vsubq_s32(v29, vshrq_n_u32(vmull_high_u16(v34, v46.val[1]), 8uLL)), v20), vsubq_s32(v29, vshrq_n_u32(vmull_high_u16(v34, v37), 8uLL)), v21), vsubq_s32(v29, vshrq_n_u32(vmull_high_u16(v34, v33), 8uLL)), v22), v23), 0xEuLL);
          v47.val[2] = vshrq_n_u32(v46.val[3], 0xEuLL);
          v47.val[1] = vshrq_n_u32(vaddq_s32(vmlaq_s32(vmlaq_s32(vmulq_s32(vsubq_s32(v27, vshrq_n_u32(vmull_high_u16(v35, v46.val[0]), 8uLL)), v20), vsubq_s32(v27, vshrq_n_u32(vmull_high_u16(v35, v38), 8uLL)), v21), vsubq_s32(v27, vshrq_n_u32(vmull_high_u16(v35, v32), 8uLL)), v22), v23), 0xEuLL);
          v47.val[0] = vshrq_n_u32(v46.val[2], 0xEuLL);
          v8 = vqtbl4q_s8(v47, xmmword_1003E36F0);
          *(v24 + v25) = v8;
          v25 += 16;
        }

        while (v19 != v25);
        v25 = v12 - v18;
        if (!v18)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v39 = result;
      }

      do
      {
        v40 = *(v39 + 3);
        v8.i8[0] = v39[1];
        v8.i8[4] = v39[2];
        v41 = vdup_n_s32(v40);
        *v8.i8 = vmul_s32(vsub_s32(v41, vshr_n_u32(vmul_s32(v41, vbic_s8(0xFF000000FFLL, *v8.i8)), 8uLL)), 0x74C00002591);
        *(v24 + v25++) = (v8.i32[0] + v8.i32[1] + 4899 * (v40 - ((v40 * (*v39 ^ 0xFF)) >> 8)) + 0x2000) >> 14;
        v39 += 4;
      }

      while (v12 != v25);
LABEL_10:
      v24 += v10;
      result = &v39[v11];
      LODWORD(v9) = v9 - 1;
      if (!v9)
      {
        return result;
      }
    }
  }

  do
  {
    v42 = 0;
    v43 = result;
    LODWORD(v9) = v9 - 1;
    result += v11;
    do
    {
      v44 = *(v43 + 3);
      a8.i8[0] = v43[1];
      a8.i8[4] = v43[2];
      v45 = vdup_n_s32(v44);
      a8 = vmul_s32(vsub_s32(v45, vshr_n_u32(vmul_s32(v45, vbic_s8(0xFF000000FFLL, a8)), 8uLL)), 0x74C00002591);
      *(a3 + v42++) = (a8.i32[0] + a8.i32[1] + 4899 * (v44 - ((v44 * (*v43 ^ 0xFF)) >> 8)) + 0x2000) >> 14;
      v43 += 4;
      result += 4;
    }

    while (v12 != v42);
    a3 += a4;
  }

  while (v9);
  return result;
}

const char *sub_1002C7778(const char *result, int8x16_t *a2, int a3)
{
  if (a3 >= 1)
  {
    if (a3 < 9 || (&result[4 * a3 - 1] > a2 ? (v3 = &a2->i8[a3] > result) : (v3 = 0), v3))
    {
      v4 = 0;
    }

    else
    {
      if (a3 >= 0x11)
      {
        v11 = 16;
        if ((a3 & 0xF) != 0)
        {
          v11 = a3 & 0xF;
        }

        v4 = a3 - v11;
        v12 = vdupq_n_s16(0x74Cu);
        v13 = vdupq_n_s16(0x2591u);
        v14 = vdupq_n_s16(0x1323u);
        v15.i64[0] = 0x200000002000;
        v15.i64[1] = 0x200000002000;
        v16 = v4;
        v17 = a2;
        v18 = result;
        do
        {
          v40 = vld4q_s8(v18);
          v18 += 64;
          v19 = vmovl_u8(*v40.val[0].i8);
          v20 = vmovl_high_u8(v40.val[0]);
          v21 = vmovl_high_u8(v40.val[1]);
          v22 = vmovl_u8(*v40.val[1].i8);
          v23 = vmovl_u8(*v40.val[2].i8);
          v40.val[0] = vmovl_high_u8(v40.val[2]);
          v24 = vshrq_n_u32(vaddq_s32(vmlal_high_u16(vmlal_high_u16(vmull_high_u16(v20, v12), v21, v13), v40.val[0], v14), v15), 0xEuLL);
          v40.val[3] = vshrq_n_u32(vaddq_s32(vmlal_u16(vmlal_u16(vmull_u16(*v20.i8, *v12.i8), *v21.i8, *v13.i8), *v40.val[0].i8, *v14.i8), v15), 0xEuLL);
          v40.val[2] = vshrq_n_u32(vaddq_s32(vmlal_high_u16(vmlal_high_u16(vmull_high_u16(v19, v12), v22, v13), v23, v14), v15), 0xEuLL);
          v40.val[1] = vshrq_n_u32(vaddq_s32(vmlal_u16(vmlal_u16(vmull_u16(*v19.i8, *v12.i8), *v22.i8, *v13.i8), *v23.i8, *v14.i8), v15), 0xEuLL);
          *v17++ = vqtbl4q_s8(*(&v40 + 16), xmmword_1003E36F0);
          v16 -= 16;
        }

        while (v16);
        if (v11 < 9)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v4 = 0;
      }

      if ((a3 & 7) != 0)
      {
        v25 = a3 & 7;
      }

      else
      {
        v25 = 8;
      }

      v26 = &result[4 * v4];
      v27 = (a2->i64 + v4);
      v28 = v25 + v4;
      v4 = a3 - v25;
      v29 = v28 - a3;
      v30 = vdupq_n_s16(0x74Cu);
      v31 = vdupq_n_s16(0x2591u);
      v32 = vdupq_n_s16(0x1323u);
      v33.i64[0] = 0x200000002000;
      v33.i64[1] = 0x200000002000;
      do
      {
        v39 = vld4_s8(v26);
        v26 += 32;
        v34 = vmovl_u8(v39.val[0]);
        v35 = vmull_high_u16(v34, v30);
        v36 = vmovl_u8(v39.val[1]);
        *v39.val[0].i8 = vmovl_u8(v39.val[2]);
        v37 = vaddq_s32(vmlal_u16(vmlal_u16(vmull_u16(*v34.i8, *v30.i8), *v36.i8, *v31.i8), v39.val[0], *v32.i8), v33);
        v38.val[1] = vshrq_n_u32(vaddq_s32(vmlal_high_u16(vmlal_high_u16(v35, v36, v31), *v39.val[0].i8, v32), v33), 0xEuLL);
        v38.val[0] = vshrq_n_u32(v37, 0xEuLL);
        *v27++ = vqtbl2q_s8(v38, xmmword_1003E3780).u64[0];
        v29 += 8;
      }

      while (v29);
    }

LABEL_10:
    v5 = &a2->i8[v4];
    v6 = &result[4 * v4 + 2];
    v7 = a3 - v4;
    do
    {
      v8 = *(v6 - 2);
      v9 = 9617 * *(v6 - 1);
      v10 = *v6;
      v6 += 4;
      *v5++ = (v9 + 1868 * v8 + 4899 * v10 + 0x2000) >> 14;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t sub_1002C7958(uint64_t result, int a2, int a3)
{
  if (a3)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  if (a2 != 31)
  {
    v4 = (1 << a2);
    if (a2)
    {
      v5 = 0;
      v6 = v4 - 1;
      v7 = v4 & 0x7FFFFFFE;
      v8 = (result + 3);
      do
      {
        *(v8 - 1) = (v5 / v6) ^ v3;
        v8[3] = ((v5 + 255) / v6) ^ v3;
        *(v8 - 2) = (v5 / v6) ^ v3;
        v8[2] = ((v5 + 255) / v6) ^ v3;
        *(v8 - 3) = (v5 / v6) ^ v3;
        v8[1] = ((v5 + 255) / v6) ^ v3;
        *v8 = 0;
        v8[4] = 0;
        v5 += 510;
        v8 += 8;
        v7 -= 2;
      }

      while (v7);
    }

    else
    {
      v9 = (result + 3);
      do
      {
        *v9 = 0;
        v9 += 4;
        --v4;
      }

      while (v4);
    }
  }

  return result;
}

BOOL sub_1002C79E4(unsigned __int8 *a1, int a2)
{
  if (a2 == 31)
  {
    return 0;
  }

  v3 = 1;
  v4 = *a1;
  if (v4 == a1[1])
  {
    v5 = (1 << a2);
    v6 = a1 + 5;
    v7 = 1;
    do
    {
      if (v4 != *(v6 - 3))
      {
        break;
      }

      v3 = v7 < v5;
      if (v5 == v7)
      {
        break;
      }

      v4 = *(v6 - 1);
      v8 = *v6;
      v6 += 4;
      ++v7;
    }

    while (v4 == v8);
  }

  return v3;
}