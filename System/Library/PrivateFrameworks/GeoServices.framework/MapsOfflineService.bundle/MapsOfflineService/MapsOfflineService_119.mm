void sub_76F538(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_5C0E04(va);
  sub_51B6E0((v8 - 144));
  sub_5706DC((v8 - 120));
  sub_5C0CC8(v7);
  _Unwind_Resume(a1);
}

void sub_76F610(_Unwind_Exception *a1)
{
  sub_5706DC((v2 - 120));
  sub_5C0CC8(v1);
  _Unwind_Resume(a1);
}

void sub_76FB18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  v17 = *(v15 - 120);
  if (v17)
  {
    *(v15 - 112) = v17;
    operator delete(v17);
    v18 = __p;
    if (!__p)
    {
LABEL_3:
      sub_772CE0(va);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v18 = __p;
    if (!__p)
    {
      goto LABEL_3;
    }
  }

  operator delete(v18);
  sub_772CE0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_76FBB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_4D0560();
  v5 = v4;
  v7 = v6;
  if (v4)
  {
    for (i = 0; ; i += sub_4D23F8(v5, v7++, v18))
    {
      sub_4D0568();
      v10 = v9;
      v12 = v11;
      v13 = sub_4D1DC0(v5);
      v14 = v13;
      if (v10)
      {
        v15 = sub_4D1DC0(v10);
        if (v7 >= v14 || v12 >= v15)
        {
          if (v7 < v14 == v12 < v15)
          {
            return 0x7FFFFFFFFFFFFFFFLL;
          }
        }

        else
        {
          v16 = sub_4D1F50(v5, v7);
          if (v16 == sub_4D1F50(v10, v12))
          {
            return 0x7FFFFFFFFFFFFFFFLL;
          }
        }
      }

      else if (v7 >= v13)
      {
        return 0x7FFFFFFFFFFFFFFFLL;
      }

      v17 = *(sub_4D1F50(v5, v7) + 32);
      if (__PAIR64__(*(a3 + 4), *a3) == __PAIR64__(WORD2(v17), v17) && *(a3 + 6) == BYTE6(v17))
      {
        break;
      }
    }
  }

  else
  {
    sub_4D0568();
    if (v19)
    {
      v21 = v20;
      i = 0;
      while (v21 < sub_4D1DC0(v19))
      {
        v23 = *(sub_4D1F50(0, v7) + 32);
        if (__PAIR64__(*(a3 + 4), *a3) == __PAIR64__(WORD2(v23), v23) && *(a3 + 6) == BYTE6(v23))
        {
          return i;
        }

        i += sub_4D23F8(0, v7++, v24);
        sub_4D0568();
        v21 = v22;
        if (!v19)
        {
          return 0x7FFFFFFFFFFFFFFFLL;
        }
      }
    }

    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return i;
}

uint64_t *sub_76FD70@<X0>(uint64_t *__return_ptr a1@<X8>, const char *a2@<X0>, const char *a3@<X1>, const char *a5@<X3>, const char *a7@<X5>, uint64_t a8@<X6>, const char *a9@<X7>, uint64_t **a10, char *__s, uint64_t **a12, char *a13, uint64_t **a14)
{
  sub_D7B0(v52);
  v21 = strlen(a2);
  v22 = sub_4A5C(&v53, a2, v21);
  v23 = strlen(a3);
  v24 = sub_4A5C(v22, a3, v23);
  std::ostream::operator<<();
  v25 = strlen(a5);
  v26 = sub_4A5C(v24, a5, v25);
  std::ostream::operator<<();
  v27 = strlen(a7);
  v28 = sub_4A5C(v26, a7, v27);
  v29 = sub_58948(v28, a8);
  v30 = strlen(a9);
  v31 = sub_4A5C(v29, a9, v30);
  v32 = *(a10 + 23);
  if (v32 >= 0)
  {
    v33 = a10;
  }

  else
  {
    v33 = *a10;
  }

  if (v32 >= 0)
  {
    v34 = *(a10 + 23);
  }

  else
  {
    v34 = a10[1];
  }

  v35 = sub_4A5C(v31, v33, v34);
  v36 = strlen(__s);
  v37 = sub_4A5C(v35, __s, v36);
  v38 = *(a12 + 23);
  if (v38 >= 0)
  {
    v39 = a12;
  }

  else
  {
    v39 = *a12;
  }

  if (v38 >= 0)
  {
    v40 = *(a12 + 23);
  }

  else
  {
    v40 = a12[1];
  }

  v41 = sub_4A5C(v37, v39, v40);
  v42 = strlen(a13);
  v43 = sub_4A5C(v41, a13, v42);
  v44 = *(a14 + 23);
  if (v44 >= 0)
  {
    v45 = a14;
  }

  else
  {
    v45 = *a14;
  }

  if (v44 >= 0)
  {
    v46 = *(a14 + 23);
  }

  else
  {
    v46 = a14[1];
  }

  sub_4A5C(v43, v45, v46);
  if ((v63 & 0x10) != 0)
  {
    v48 = v62;
    if (v62 < v59)
    {
      v62 = v59;
      v48 = v59;
    }

    v49 = __src;
    v47 = v48 - __src;
    if (v48 - __src >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_34;
    }
  }

  else
  {
    if ((v63 & 8) == 0)
    {
      v47 = 0;
      *(a1 + 23) = 0;
      goto LABEL_30;
    }

    v49 = v56;
    v47 = v57 - v56;
    if ((v57 - v56) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_34:
      sub_3244();
    }
  }

  if (v47 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v47;
  if (v47)
  {
    memmove(a1, v49, v47);
  }

LABEL_30:
  *(a1 + v47) = 0;
  v53 = v50;
  if (v61 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v55);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

uint64_t sub_770134@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, _BYTE *a5@<X8>)
{
  sub_770378(a1, a3, v40);
  sub_7704C8(a1, v40, a2, *a4, &v38);
  v9 = v38;
  if (v38 == v39)
  {
    *a5 = 0;
    a5[2000] = 0;
    if (!v9)
    {
      return sub_570440(v40);
    }

    goto LABEL_29;
  }

  sub_570E98(v40, &v20, &v38);
  sub_5D7978(a5, &v20);
  a5[2000] = 1;
  if (v37 < 0)
  {
    operator delete(__p);
    if (v35 != 1)
    {
      goto LABEL_21;
    }

LABEL_8:
    if (v34 < 0)
    {
      operator delete(v33);
    }

    v10 = v31;
    if (v31)
    {
      v11 = v32;
      v12 = v31;
      if (v32 != v31)
      {
        do
        {
          v13 = *(v11 - 1);
          v11 -= 3;
          if (v13 < 0)
          {
            operator delete(*v11);
          }
        }

        while (v11 != v10);
        v12 = v31;
      }

      v32 = v10;
      operator delete(v12);
    }

    if (v30 < 0)
    {
      operator delete(v29);
      if ((v28 & 0x80000000) == 0)
      {
LABEL_20:
        if ((v26 & 0x80000000) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_36;
      }
    }

    else if ((v28 & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

    operator delete(v27);
    if ((v26 & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

LABEL_36:
    operator delete(v25);
    v14 = v23;
    if (!v23)
    {
      goto LABEL_26;
    }

    goto LABEL_22;
  }

  if (v35 == 1)
  {
    goto LABEL_8;
  }

LABEL_21:
  v14 = v23;
  if (!v23)
  {
    goto LABEL_26;
  }

LABEL_22:
  v15 = v24;
  v16 = v14;
  if (v24 != v14)
  {
    do
    {
      v15 = sub_3A9518(v15 - 1120);
    }

    while (v15 != v14);
    v16 = v23;
  }

  v24 = v14;
  operator delete(v16);
LABEL_26:
  sub_570440(&v22);
  if (v21[1120] == 1)
  {
    sub_3A9518(v21);
  }

  v9 = v38;
  if (v38)
  {
LABEL_29:
    v17 = v39;
    v18 = v9;
    if (v39 != v9)
    {
      do
      {
        v17 = sub_3A9518(v17 - 1120);
      }

      while (v17 != v9);
      v18 = v38;
    }

    v39 = v9;
    operator delete(v18);
  }

  return sub_570440(v40);
}

void sub_770348(_Unwind_Exception *a1)
{
  sub_5706DC(&STACK[0x7D0]);
  sub_570440(&STACK[0x7E8]);
  _Unwind_Resume(a1);
}

double sub_770378@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a2[1];
  v5 = *a2;
  if (v5 != v4)
  {
    while (*(v5 + 80) < *(a1 + 40))
    {
      v5 += 616;
      if (v5 == v4)
      {
        goto LABEL_9;
      }
    }
  }

  if (v5 == v4)
  {
LABEL_9:
    bzero(a3, 0x268uLL);
    v7.f64[0] = NAN;
    v7.f64[1] = NAN;
    v8 = vnegq_f64(v7);
    *(a3 + 56) = 0;
    *(a3 + 8) = v8;
    *(a3 + 24) = -1;
    *(a3 + 32) = -1;
    *(a3 + 40) = v8;
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0x8000000080000000;
    sub_64B998(a3 + 96);
    sub_64B998(a3 + 256);
    *(a3 + 448) = 0;
    *(a3 + 456) = -1;
    *(a3 + 459) = -1;
    *(a3 + 471) = 0;
    *(a3 + 479) = 0;
    *(a3 + 463) = 0;
    *(a3 + 487) = 0;
    *(a3 + 504) = 0;
    *(a3 + 512) = 0;
    *(a3 + 496) = 0;
    *(a3 + 520) = 0;
    result = 0.0;
    *(a3 + 528) = 0u;
    *(a3 + 544) = 0u;
    *(a3 + 560) = 0u;
    *(a3 + 576) = 1;
    *(a3 + 584) = 0u;
    *(a3 + 600) = 0u;
  }

  else
  {

    sub_571154(a3, v5);
  }

  return result;
}

void sub_77049C(_Unwind_Exception *a1)
{
  sub_53A868((v2 + 5));
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 64) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

void sub_7704C8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v32 = a4;
  if (*(a1 + 64) != 1 || *a3 == a3[1] || !sub_685B80(a2) || (v9 = *(a2 + 8), v9 < *(a1 + 48)) || v9 > *(a1 + 56))
  {
    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
    return;
  }

  v29 = 0;
  v30 = 0;
  v31 = 0;
  v10 = a3;
  v11 = *a3;
  v12 = v10[1];
  if (v11 != v12)
  {
    while ((*(*(a1 + 8) + 1524) & 1) != 0 || !sub_770764(a1, v11, &v32))
    {
      v14 = *(v11 + 96);
      v18 = v14 > 5;
      v15 = (1 << v14) & 0x33;
      v16 = v18 || v15 == 0;
      if (!v16 && *(v11 + 472) == 1)
      {
        v17 = *(v11 + 464);
        v18 = v17 >= *(a2 + 8) && v17 <= *(a2 + 16);
        if (v18)
        {
          v19 = *(a1 + 8);
          sub_57480(v11, &__p);
          v20 = sub_614B0C(v19);
          if (v28 < 0)
          {
            v21 = v20;
            operator delete(__p);
            v20 = v21;
          }

          if ((v20 & 1) == 0)
          {
            v22 = v30;
            if (v30 >= v31)
            {
              v13 = sub_603684(&v29, v11);
            }

            else
            {
              sub_52B7D8(v30, v11);
              v13 = v22 + 1120;
            }

            v30 = v13;
          }
        }
      }

      v11 += 1120;
      if (v11 == v12)
      {
        v24 = v29;
        v23 = v30;
        if (v29 != v30)
        {
          if ((*(v30 - 648) & 1) == 0)
          {
            sub_4F0F0C();
          }

          if ((*(v30 - 82) - *(a2 + 8)) / (*(a2 + 16) - *(a2 + 8)) >= *(a1 + 72))
          {
            *a5 = v29;
            a5[1] = v23;
            a5[2] = v31;
            return;
          }
        }

        goto LABEL_35;
      }
    }

    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
    v24 = v29;
    if (!v29)
    {
      return;
    }

    goto LABEL_38;
  }

  v24 = 0;
LABEL_35:
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  if (v24)
  {
LABEL_38:
    v25 = v30;
    v26 = v24;
    if (v30 != v24)
    {
      do
      {
        v25 = sub_3A9518((v25 - 1120));
      }

      while (v25 != v24);
      v26 = v29;
    }

    v30 = v24;
    operator delete(v26);
  }
}

BOOL sub_770764(uint64_t a1, uint64_t a2, void *a3)
{
  if (sub_38F674(a2))
  {
    return 0;
  }

  result = sub_38F78C(a2);
  if (result)
  {
    if (sub_659540(a2))
    {
      if (sub_614B10())
      {
        return 0;
      }
    }

    else if (sub_614B08())
    {
      return 0;
    }

    if ((*(a2 + 472) & 1) == 0)
    {
      sub_4F0F0C();
    }

    v7 = *(a2 + 464);
    v8 = *(a1 + 24);
    if (v7 >= v8)
    {
      return *a3 >= v8 + v7 && v7 <= *(a1 + 32);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

double sub_770870@<D0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 64) = 0;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  sub_770948(a2, &v10);
  v6 = v11;
  *a3 = v10;
  *(a3 + 16) = v6;
  sub_771110(a2, &v10);
  v7 = v11;
  *(a3 + 24) = v10;
  *(a3 + 40) = v7;
  sub_771808(a1, a2, &v10);
  v8 = v11;
  result = *&v10;
  *(a3 + 48) = v10;
  *(a3 + 64) = v8;
  return result;
}

void sub_770948(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = sub_68F328(a1);
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v4 = *v3;
  v5 = v3[1];
  v24 = &v42;
  v25[0] = 0;
  if (v5 != v4)
  {
    if (0xAF8AF8AF8AF8AF8BLL * ((v5 - v4) >> 5) < 0x3A83A83A83A83BLL)
    {
      operator new();
    }

    sub_1794();
  }

  v6 = sub_772D50(v42, v43, &v42);
  v7 = v43;
  if (v6 != v43)
  {
    v8 = v43;
    v7 = v6;
    while (v8 != v6)
    {
      v8 = sub_3A9518(v8 - 1120);
    }

    v43 = v6;
  }

  sub_7720C4(a2, 0xAF8AF8AF8AF8AF8BLL * ((v7 - v42) >> 5));
  v9 = v42;
  v10 = v43;
  if (v42 != v43)
  {
    while (1)
    {
      sub_570FB0(v9, &v24);
      v11 = a2[1];
      if (v11 >= a2[2])
      {
        v12 = sub_772EFC(a2, &v24);
      }

      else
      {
        v12 = sub_5D7978(v11, &v24) + 2000;
      }

      a2[1] = v12;
      if (v41 < 0)
      {
        operator delete(__p);
        if (v39 != 1)
        {
          goto LABEL_36;
        }
      }

      else if (v39 != 1)
      {
        goto LABEL_36;
      }

      if (v38 < 0)
      {
        operator delete(v37);
        v13 = v35;
        if (!v35)
        {
LABEL_33:
          if (v34 < 0)
          {
            goto LABEL_23;
          }

          goto LABEL_34;
        }
      }

      else
      {
        v13 = v35;
        if (!v35)
        {
          goto LABEL_33;
        }
      }

      v14 = v36;
      if (v36 == v13)
      {
        v36 = v13;
        operator delete(v13);
        if (v34 < 0)
        {
          goto LABEL_23;
        }
      }

      else
      {
        do
        {
          v16 = *(v14 - 1);
          v14 -= 3;
          if (v16 < 0)
          {
            operator delete(*v14);
          }
        }

        while (v14 != v13);
        v36 = v13;
        operator delete(v35);
        if (v34 < 0)
        {
LABEL_23:
          operator delete(v33);
          if (v32 < 0)
          {
            goto LABEL_24;
          }

          goto LABEL_35;
        }
      }

LABEL_34:
      if (v32 < 0)
      {
LABEL_24:
        operator delete(v31);
        if (v30 < 0)
        {
          goto LABEL_25;
        }

        goto LABEL_36;
      }

LABEL_35:
      if (v30 < 0)
      {
LABEL_25:
        operator delete(v29);
        v15 = v27;
        if (!v27)
        {
          goto LABEL_83;
        }

LABEL_37:
        v17 = v28;
        v18 = v15;
        if (v28 == v15)
        {
LABEL_82:
          v28 = v15;
          operator delete(v18);
          goto LABEL_83;
        }

        while (2)
        {
          if (*(v17 - 16) != 1)
          {
            *(v17 - 416) = off_26696C8;
            if (*(v17 - 385) < 0)
            {
              goto LABEL_61;
            }

            goto LABEL_68;
          }

          v19 = *(v17 - 40);
          if (!v19)
          {
            goto LABEL_55;
          }

          v20 = *(v17 - 32);
          v21 = *(v17 - 40);
          if (v20 == v19)
          {
LABEL_54:
            *(v17 - 32) = v19;
            operator delete(v21);
LABEL_55:
            if (*(v17 - 49) < 0)
            {
              operator delete(*(v17 - 72));
              if (*(v17 - 81) < 0)
              {
                goto LABEL_77;
              }

LABEL_57:
              if ((*(v17 - 113) & 0x80000000) == 0)
              {
                goto LABEL_58;
              }

LABEL_78:
              operator delete(*(v17 - 136));
              if (*(v17 - 137) < 0)
              {
                goto LABEL_79;
              }

LABEL_59:
              if (*(v17 - 161) < 0)
              {
LABEL_80:
                operator delete(*(v17 - 184));
              }
            }

            else
            {
              if ((*(v17 - 81) & 0x80000000) == 0)
              {
                goto LABEL_57;
              }

LABEL_77:
              operator delete(*(v17 - 104));
              if (*(v17 - 113) < 0)
              {
                goto LABEL_78;
              }

LABEL_58:
              if ((*(v17 - 137) & 0x80000000) == 0)
              {
                goto LABEL_59;
              }

LABEL_79:
              operator delete(*(v17 - 160));
              if (*(v17 - 161) < 0)
              {
                goto LABEL_80;
              }
            }

            sub_33D080(v17 - 376);
            *(v17 - 416) = off_26696C8;
            if (*(v17 - 385) < 0)
            {
LABEL_61:
              operator delete(*(v17 - 408));
              if (*(v17 - 465) < 0)
              {
                goto LABEL_62;
              }

LABEL_69:
              if ((*(v17 - 497) & 0x80000000) == 0)
              {
                goto LABEL_70;
              }

LABEL_63:
              operator delete(*(v17 - 520));
              if (*(v17 - 521) < 0)
              {
                goto LABEL_64;
              }

LABEL_71:
              if ((*(v17 - 561) & 0x80000000) == 0)
              {
                goto LABEL_72;
              }

LABEL_65:
              operator delete(*(v17 - 584));
              if (*(v17 - 593) < 0)
              {
                goto LABEL_39;
              }

LABEL_73:
              if ((*(v17 - 617) & 0x80000000) == 0)
              {
LABEL_40:
                v17 -= 1120;
                sub_2C0F28(v17);
                if (v17 == v15)
                {
                  goto LABEL_81;
                }

                continue;
              }

              goto LABEL_74;
            }

LABEL_68:
            if ((*(v17 - 465) & 0x80000000) == 0)
            {
              goto LABEL_69;
            }

LABEL_62:
            operator delete(*(v17 - 488));
            if (*(v17 - 497) < 0)
            {
              goto LABEL_63;
            }

LABEL_70:
            if ((*(v17 - 521) & 0x80000000) == 0)
            {
              goto LABEL_71;
            }

LABEL_64:
            operator delete(*(v17 - 544));
            if (*(v17 - 561) < 0)
            {
              goto LABEL_65;
            }

LABEL_72:
            if ((*(v17 - 593) & 0x80000000) == 0)
            {
              goto LABEL_73;
            }

LABEL_39:
            operator delete(*(v17 - 616));
            if ((*(v17 - 617) & 0x80000000) == 0)
            {
              goto LABEL_40;
            }

LABEL_74:
            operator delete(*(v17 - 640));
            v17 -= 1120;
            sub_2C0F28(v17);
            if (v17 == v15)
            {
LABEL_81:
              v18 = v27;
              goto LABEL_82;
            }

            continue;
          }

          break;
        }

        while (2)
        {
          while (2)
          {
            if (*(v20 - 1) < 0)
            {
              operator delete(*(v20 - 3));
              if ((*(v20 - 25) & 0x80000000) == 0)
              {
                goto LABEL_51;
              }

LABEL_45:
              operator delete(*(v20 - 6));
              if ((*(v20 - 49) & 0x80000000) == 0)
              {
                goto LABEL_46;
              }
            }

            else
            {
              if (*(v20 - 25) < 0)
              {
                goto LABEL_45;
              }

LABEL_51:
              if ((*(v20 - 49) & 0x80000000) == 0)
              {
LABEL_46:
                v20 -= 31;
                sub_33D5A0(v20);
                if (v20 == v19)
                {
                  goto LABEL_53;
                }

                continue;
              }
            }

            break;
          }

          operator delete(*(v20 - 9));
          v20 -= 31;
          sub_33D5A0(v20);
          if (v20 == v19)
          {
LABEL_53:
            v21 = *(v17 - 40);
            goto LABEL_54;
          }

          continue;
        }
      }

LABEL_36:
      v15 = v27;
      if (v27)
      {
        goto LABEL_37;
      }

LABEL_83:
      sub_570440(&v26);
      if (v25[1120] == 1)
      {
        sub_3A9518(v25);
      }

      v9 += 1120;
      if (v9 == v10)
      {
        v9 = v42;
        break;
      }
    }
  }

  if (v9)
  {
    v22 = v43;
    v23 = v9;
    if (v43 != v9)
    {
      do
      {
        v22 = sub_3A9518(v22 - 1120);
      }

      while (v22 != v9);
      v23 = v42;
    }

    v43 = v9;
    operator delete(v23);
  }
}

void sub_771068(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_571510(va);
  sub_5C0CC8(v3);
  _Unwind_Resume(a1);
}

void sub_771084(_Unwind_Exception *a1)
{
  sub_5706DC((v2 - 104));
  sub_5C0CC8(v1);
  _Unwind_Resume(a1);
}

void sub_7710D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (v6)
  {
    v9 = v5 - 1120;
    v10 = -v6;
    do
    {
      v9 = sub_3A9518(v9) - 1120;
      v10 += 1120;
    }

    while (v10);
  }

  *(v7 - 96) = v4;
  sub_571510(va);
  sub_5C0CC8(v3);
  _Unwind_Resume(a1);
}

void sub_771110(void *a1@<X1>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = sub_68C454(a1, 0);
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v4 = *(v3 + 7416);
  v5 = *(v3 + 7424);
  v23 = &v41;
  v24[0] = 0;
  v6 = v5 - v4;
  if (v5 != v4)
  {
    if (0xAF8AF8AF8AF8AF8BLL * (v6 >> 5) < 0x3A83A83A83A83BLL)
    {
      operator new();
    }

    sub_1794();
  }

  v7 = v42;
  if (v6 != v42)
  {
    while (v7 != v6)
    {
      v7 -= 1120;
      sub_3A9518(v7);
    }

    v42 = v5 - v4;
  }

  sub_7720C4(a2, 0xAF8AF8AF8AF8AF8BLL * ((v6 - v41) >> 5));
  v8 = v41;
  v9 = v42;
  if (v41 != v42)
  {
    while (1)
    {
      sub_570E84(v8, &v23);
      v10 = a2[1];
      if (v10 >= a2[2])
      {
        v11 = sub_772EFC(a2, &v23);
      }

      else
      {
        v11 = sub_5D7978(v10, &v23) + 2000;
      }

      a2[1] = v11;
      if (v40 < 0)
      {
        operator delete(__p);
        if (v38 != 1)
        {
          goto LABEL_36;
        }
      }

      else if (v38 != 1)
      {
        goto LABEL_36;
      }

      if (v37 < 0)
      {
        operator delete(v36);
        v12 = v34;
        if (!v34)
        {
LABEL_33:
          if (v33 < 0)
          {
            goto LABEL_23;
          }

          goto LABEL_34;
        }
      }

      else
      {
        v12 = v34;
        if (!v34)
        {
          goto LABEL_33;
        }
      }

      v13 = v35;
      if (v35 == v12)
      {
        v35 = v12;
        operator delete(v12);
        if (v33 < 0)
        {
          goto LABEL_23;
        }
      }

      else
      {
        do
        {
          v15 = *(v13 - 1);
          v13 -= 3;
          if (v15 < 0)
          {
            operator delete(*v13);
          }
        }

        while (v13 != v12);
        v35 = v12;
        operator delete(v34);
        if (v33 < 0)
        {
LABEL_23:
          operator delete(v32);
          if (v31 < 0)
          {
            goto LABEL_24;
          }

          goto LABEL_35;
        }
      }

LABEL_34:
      if (v31 < 0)
      {
LABEL_24:
        operator delete(v30);
        if (v29 < 0)
        {
          goto LABEL_25;
        }

        goto LABEL_36;
      }

LABEL_35:
      if (v29 < 0)
      {
LABEL_25:
        operator delete(v28);
        v14 = v26;
        if (!v26)
        {
          goto LABEL_83;
        }

LABEL_37:
        v16 = v27;
        v17 = v14;
        if (v27 == v14)
        {
LABEL_82:
          v27 = v14;
          operator delete(v17);
          goto LABEL_83;
        }

        while (2)
        {
          if (*(v16 - 16) != 1)
          {
            *(v16 - 416) = off_26696C8;
            if (*(v16 - 385) < 0)
            {
              goto LABEL_61;
            }

            goto LABEL_68;
          }

          v18 = *(v16 - 40);
          if (!v18)
          {
            goto LABEL_55;
          }

          v19 = *(v16 - 32);
          v20 = *(v16 - 40);
          if (v19 == v18)
          {
LABEL_54:
            *(v16 - 32) = v18;
            operator delete(v20);
LABEL_55:
            if (*(v16 - 49) < 0)
            {
              operator delete(*(v16 - 72));
              if (*(v16 - 81) < 0)
              {
                goto LABEL_77;
              }

LABEL_57:
              if ((*(v16 - 113) & 0x80000000) == 0)
              {
                goto LABEL_58;
              }

LABEL_78:
              operator delete(*(v16 - 136));
              if (*(v16 - 137) < 0)
              {
                goto LABEL_79;
              }

LABEL_59:
              if (*(v16 - 161) < 0)
              {
LABEL_80:
                operator delete(*(v16 - 184));
              }
            }

            else
            {
              if ((*(v16 - 81) & 0x80000000) == 0)
              {
                goto LABEL_57;
              }

LABEL_77:
              operator delete(*(v16 - 104));
              if (*(v16 - 113) < 0)
              {
                goto LABEL_78;
              }

LABEL_58:
              if ((*(v16 - 137) & 0x80000000) == 0)
              {
                goto LABEL_59;
              }

LABEL_79:
              operator delete(*(v16 - 160));
              if (*(v16 - 161) < 0)
              {
                goto LABEL_80;
              }
            }

            sub_33D080(v16 - 376);
            *(v16 - 416) = off_26696C8;
            if (*(v16 - 385) < 0)
            {
LABEL_61:
              operator delete(*(v16 - 408));
              if (*(v16 - 465) < 0)
              {
                goto LABEL_62;
              }

LABEL_69:
              if ((*(v16 - 497) & 0x80000000) == 0)
              {
                goto LABEL_70;
              }

LABEL_63:
              operator delete(*(v16 - 520));
              if (*(v16 - 521) < 0)
              {
                goto LABEL_64;
              }

LABEL_71:
              if ((*(v16 - 561) & 0x80000000) == 0)
              {
                goto LABEL_72;
              }

LABEL_65:
              operator delete(*(v16 - 584));
              if (*(v16 - 593) < 0)
              {
                goto LABEL_39;
              }

LABEL_73:
              if ((*(v16 - 617) & 0x80000000) == 0)
              {
LABEL_40:
                v16 -= 1120;
                sub_2C0F28(v16);
                if (v16 == v14)
                {
                  goto LABEL_81;
                }

                continue;
              }

              goto LABEL_74;
            }

LABEL_68:
            if ((*(v16 - 465) & 0x80000000) == 0)
            {
              goto LABEL_69;
            }

LABEL_62:
            operator delete(*(v16 - 488));
            if (*(v16 - 497) < 0)
            {
              goto LABEL_63;
            }

LABEL_70:
            if ((*(v16 - 521) & 0x80000000) == 0)
            {
              goto LABEL_71;
            }

LABEL_64:
            operator delete(*(v16 - 544));
            if (*(v16 - 561) < 0)
            {
              goto LABEL_65;
            }

LABEL_72:
            if ((*(v16 - 593) & 0x80000000) == 0)
            {
              goto LABEL_73;
            }

LABEL_39:
            operator delete(*(v16 - 616));
            if ((*(v16 - 617) & 0x80000000) == 0)
            {
              goto LABEL_40;
            }

LABEL_74:
            operator delete(*(v16 - 640));
            v16 -= 1120;
            sub_2C0F28(v16);
            if (v16 == v14)
            {
LABEL_81:
              v17 = v26;
              goto LABEL_82;
            }

            continue;
          }

          break;
        }

        while (2)
        {
          while (2)
          {
            if (*(v19 - 1) < 0)
            {
              operator delete(*(v19 - 3));
              if ((*(v19 - 25) & 0x80000000) == 0)
              {
                goto LABEL_51;
              }

LABEL_45:
              operator delete(*(v19 - 6));
              if ((*(v19 - 49) & 0x80000000) == 0)
              {
                goto LABEL_46;
              }
            }

            else
            {
              if (*(v19 - 25) < 0)
              {
                goto LABEL_45;
              }

LABEL_51:
              if ((*(v19 - 49) & 0x80000000) == 0)
              {
LABEL_46:
                v19 -= 31;
                sub_33D5A0(v19);
                if (v19 == v18)
                {
                  goto LABEL_53;
                }

                continue;
              }
            }

            break;
          }

          operator delete(*(v19 - 9));
          v19 -= 31;
          sub_33D5A0(v19);
          if (v19 == v18)
          {
LABEL_53:
            v20 = *(v16 - 40);
            goto LABEL_54;
          }

          continue;
        }
      }

LABEL_36:
      v14 = v26;
      if (v26)
      {
        goto LABEL_37;
      }

LABEL_83:
      sub_570440(&v25);
      if (v24[1120] == 1)
      {
        sub_3A9518(v24);
      }

      v8 += 1120;
      if (v8 == v9)
      {
        v8 = v41;
        break;
      }
    }
  }

  if (v8)
  {
    v21 = v42;
    v22 = v8;
    if (v42 != v8)
    {
      do
      {
        v21 = sub_3A9518(v21 - 1120);
      }

      while (v21 != v8);
      v22 = v41;
    }

    v42 = v8;
    operator delete(v22);
  }
}

void sub_771750(_Unwind_Exception *a1)
{
  sub_5706DC((v2 - 104));
  sub_5C0CC8(v1);
  _Unwind_Resume(a1);
}

void sub_7717CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (v6)
  {
    v9 = v4 - 1120;
    v10 = -v6;
    do
    {
      v9 = sub_3A9518(v9) - 1120;
      v10 += 1120;
    }

    while (v10);
  }

  *(v7 - 96) = v5;
  sub_571510(va);
  sub_5C0CC8(v3);
  _Unwind_Resume(a1);
}

void sub_771808(uint64_t *a1@<X0>, uint64_t a2@<X1>, void **a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v5 = sub_68F438(a2);
  v6 = *v5;
  v7 = v5[1];
  if (*v5 != v7)
  {
    v38 = a1;
    do
    {
      if (sub_67DFE4(v6))
      {
        v8 = sub_67E004(v6);
        sub_570E70(v8, v41);
        v9 = a3[1];
        if (v9 >= a3[2])
        {
          v10 = sub_772EFC(a3, v41);
        }

        else
        {
          v10 = sub_5D7978(v9, v41) + 2000;
        }

        a3[1] = v10;
        if (v59 < 0)
        {
          operator delete(__p);
          if (v57 != 1)
          {
            goto LABEL_22;
          }
        }

        else if (v57 != 1)
        {
LABEL_22:
          v17 = v45;
          if (v45)
          {
            goto LABEL_23;
          }

LABEL_68:
          sub_570440(v44);
          if (v43 == 1)
          {
            sub_3A9518(v42);
          }

          goto LABEL_5;
        }

        if (v56 < 0)
        {
          operator delete(v55);
          v16 = v53;
          if (v53)
          {
            goto LABEL_75;
          }

LABEL_19:
          if ((v52 & 0x80000000) == 0)
          {
            goto LABEL_20;
          }
        }

        else
        {
          v16 = v53;
          if (!v53)
          {
            goto LABEL_19;
          }

LABEL_75:
          v23 = v54;
          if (v54 == v16)
          {
            v54 = v16;
            operator delete(v16);
            if (v52 < 0)
            {
              goto LABEL_82;
            }

LABEL_20:
            if ((v50 & 0x80000000) == 0)
            {
LABEL_21:
              if ((v48 & 0x80000000) == 0)
              {
                goto LABEL_22;
              }

              goto LABEL_84;
            }

LABEL_83:
            operator delete(v49);
            if ((v48 & 0x80000000) == 0)
            {
              goto LABEL_22;
            }

LABEL_84:
            operator delete(v47);
            v17 = v45;
            if (!v45)
            {
              goto LABEL_68;
            }

LABEL_23:
            v18 = v46;
            v19 = v17;
            if (v46 == v17)
            {
LABEL_67:
              v46 = v17;
              operator delete(v19);
              goto LABEL_68;
            }

            while (2)
            {
              if (*(v18 - 16) != 1)
              {
                *(v18 - 416) = off_26696C8;
                if ((*(v18 - 385) & 0x80000000) == 0)
                {
                  goto LABEL_28;
                }

LABEL_54:
                operator delete(*(v18 - 408));
                if (*(v18 - 465) < 0)
                {
                  goto LABEL_55;
                }

LABEL_29:
                if ((*(v18 - 497) & 0x80000000) == 0)
                {
                  goto LABEL_30;
                }

LABEL_56:
                operator delete(*(v18 - 520));
                if (*(v18 - 521) < 0)
                {
                  goto LABEL_57;
                }

LABEL_31:
                if ((*(v18 - 561) & 0x80000000) == 0)
                {
                  goto LABEL_32;
                }

LABEL_58:
                operator delete(*(v18 - 584));
                if (*(v18 - 593) < 0)
                {
                  goto LABEL_59;
                }

LABEL_33:
                if (*(v18 - 617) < 0)
                {
                  goto LABEL_60;
                }

                goto LABEL_25;
              }

              v20 = *(v18 - 40);
              if (v20)
              {
                v21 = *(v18 - 32);
                v22 = *(v18 - 40);
                if (v21 == v20)
                {
LABEL_47:
                  *(v18 - 32) = v20;
                  operator delete(v22);
                  goto LABEL_48;
                }

                while (2)
                {
                  if (*(v21 - 1) < 0)
                  {
                    operator delete(*(v21 - 3));
                    if (*(v21 - 25) < 0)
                    {
                      goto LABEL_44;
                    }

LABEL_41:
                    if (*(v21 - 49) < 0)
                    {
LABEL_45:
                      operator delete(*(v21 - 9));
                    }
                  }

                  else
                  {
                    if ((*(v21 - 25) & 0x80000000) == 0)
                    {
                      goto LABEL_41;
                    }

LABEL_44:
                    operator delete(*(v21 - 6));
                    if (*(v21 - 49) < 0)
                    {
                      goto LABEL_45;
                    }
                  }

                  v21 -= 31;
                  sub_33D5A0(v21);
                  if (v21 == v20)
                  {
                    v22 = *(v18 - 40);
                    goto LABEL_47;
                  }

                  continue;
                }
              }

LABEL_48:
              if (*(v18 - 49) < 0)
              {
                operator delete(*(v18 - 72));
                if (*(v18 - 81) < 0)
                {
                  goto LABEL_62;
                }

LABEL_50:
                if ((*(v18 - 113) & 0x80000000) == 0)
                {
                  goto LABEL_51;
                }

LABEL_63:
                operator delete(*(v18 - 136));
                if (*(v18 - 137) < 0)
                {
                  goto LABEL_64;
                }

LABEL_52:
                if (*(v18 - 161) < 0)
                {
LABEL_65:
                  operator delete(*(v18 - 184));
                }
              }

              else
              {
                if ((*(v18 - 81) & 0x80000000) == 0)
                {
                  goto LABEL_50;
                }

LABEL_62:
                operator delete(*(v18 - 104));
                if (*(v18 - 113) < 0)
                {
                  goto LABEL_63;
                }

LABEL_51:
                if ((*(v18 - 137) & 0x80000000) == 0)
                {
                  goto LABEL_52;
                }

LABEL_64:
                operator delete(*(v18 - 160));
                if (*(v18 - 161) < 0)
                {
                  goto LABEL_65;
                }
              }

              sub_33D080(v18 - 376);
              *(v18 - 416) = off_26696C8;
              if (*(v18 - 385) < 0)
              {
                goto LABEL_54;
              }

LABEL_28:
              if ((*(v18 - 465) & 0x80000000) == 0)
              {
                goto LABEL_29;
              }

LABEL_55:
              operator delete(*(v18 - 488));
              if (*(v18 - 497) < 0)
              {
                goto LABEL_56;
              }

LABEL_30:
              if ((*(v18 - 521) & 0x80000000) == 0)
              {
                goto LABEL_31;
              }

LABEL_57:
              operator delete(*(v18 - 544));
              if (*(v18 - 561) < 0)
              {
                goto LABEL_58;
              }

LABEL_32:
              if ((*(v18 - 593) & 0x80000000) == 0)
              {
                goto LABEL_33;
              }

LABEL_59:
              operator delete(*(v18 - 616));
              if (*(v18 - 617) < 0)
              {
LABEL_60:
                operator delete(*(v18 - 640));
              }

LABEL_25:
              v18 -= 1120;
              sub_2C0F28(v18);
              if (v18 == v17)
              {
                v19 = v45;
                goto LABEL_67;
              }

              continue;
            }
          }

          do
          {
            v24 = *(v23 - 1);
            v23 -= 3;
            if (v24 < 0)
            {
              operator delete(*v23);
            }
          }

          while (v23 != v16);
          v54 = v16;
          operator delete(v53);
          if ((v52 & 0x80000000) == 0)
          {
            goto LABEL_20;
          }
        }

LABEL_82:
        operator delete(v51);
        if ((v50 & 0x80000000) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_83;
      }

      if (!sub_67DFF4(v6))
      {
        goto LABEL_5;
      }

      v11 = sub_3AF6B4(*a1);
      v12 = sub_67E020(v6);
      v13 = sub_31DDCC(v11, *v12);
      sub_40C59C(v11, v13, v39);
      sub_570FF0(v39, v41);
      v14 = a3[1];
      if (v14 >= a3[2])
      {
        v15 = sub_772EFC(a3, v41);
      }

      else
      {
        v15 = sub_5D7978(v14, v41) + 2000;
      }

      a3[1] = v15;
      if (v59 < 0)
      {
        operator delete(__p);
        if (v57 != 1)
        {
          goto LABEL_92;
        }
      }

      else if (v57 != 1)
      {
        goto LABEL_92;
      }

      if (v56 < 0)
      {
        operator delete(v55);
        v25 = v53;
        if (!v53)
        {
LABEL_89:
          if ((v52 & 0x80000000) == 0)
          {
            goto LABEL_90;
          }

          goto LABEL_135;
        }
      }

      else
      {
        v25 = v53;
        if (!v53)
        {
          goto LABEL_89;
        }
      }

      v36 = v54;
      if (v54 == v25)
      {
        v54 = v25;
        operator delete(v25);
        if ((v52 & 0x80000000) == 0)
        {
          goto LABEL_90;
        }
      }

      else
      {
        do
        {
          v37 = *(v36 - 1);
          v36 -= 3;
          if (v37 < 0)
          {
            operator delete(*v36);
          }
        }

        while (v36 != v25);
        v54 = v25;
        operator delete(v53);
        if ((v52 & 0x80000000) == 0)
        {
LABEL_90:
          if ((v50 & 0x80000000) == 0)
          {
            goto LABEL_91;
          }

          goto LABEL_136;
        }
      }

LABEL_135:
      operator delete(v51);
      if ((v50 & 0x80000000) == 0)
      {
LABEL_91:
        if (v48 < 0)
        {
          goto LABEL_137;
        }

        goto LABEL_92;
      }

LABEL_136:
      operator delete(v49);
      if (v48 < 0)
      {
LABEL_137:
        operator delete(v47);
        v26 = v45;
        if (!v45)
        {
          goto LABEL_125;
        }

        goto LABEL_93;
      }

LABEL_92:
      v26 = v45;
      if (!v45)
      {
        goto LABEL_125;
      }

LABEL_93:
      v27 = v46;
      v28 = v26;
      if (v46 == v26)
      {
        goto LABEL_124;
      }

      v29 = 0;
      do
      {
        v30 = &v27[v29];
        if (v27[v29 - 16] != 1)
        {
          goto LABEL_103;
        }

        v60 = (v30 - 40);
        sub_5293E8(&v60);
        if (*(v30 - 49) < 0)
        {
          operator delete(*&v27[v29 - 72]);
          v31 = &v27[v29];
          if ((v27[v29 - 81] & 0x80000000) == 0)
          {
LABEL_99:
            if ((*(v31 - 113) & 0x80000000) == 0)
            {
              goto LABEL_100;
            }

            goto LABEL_120;
          }
        }

        else
        {
          v31 = &v27[v29];
          if ((v27[v29 - 81] & 0x80000000) == 0)
          {
            goto LABEL_99;
          }
        }

        operator delete(*(v31 - 13));
        if ((*(v31 - 113) & 0x80000000) == 0)
        {
LABEL_100:
          v32 = &v27[v29];
          if ((v27[v29 - 137] & 0x80000000) == 0)
          {
            goto LABEL_101;
          }

          goto LABEL_121;
        }

LABEL_120:
        operator delete(*&v27[v29 - 136]);
        v32 = &v27[v29];
        if ((v27[v29 - 137] & 0x80000000) == 0)
        {
LABEL_101:
          if (*(v32 - 161) < 0)
          {
            goto LABEL_122;
          }

          goto LABEL_102;
        }

LABEL_121:
        operator delete(*(v31 - 20));
        if (*(v32 - 161) < 0)
        {
LABEL_122:
          operator delete(*&v27[v29 - 184]);
        }

LABEL_102:
        sub_33D080((v30 - 376));
LABEL_103:
        *(v30 - 52) = off_26696C8;
        if (*(v30 - 385) < 0)
        {
          operator delete(*&v27[v29 - 408]);
          v33 = &v27[v29];
          if ((v27[v29 - 465] & 0x80000000) == 0)
          {
LABEL_105:
            if ((*(v33 - 497) & 0x80000000) == 0)
            {
              goto LABEL_106;
            }

            goto LABEL_113;
          }
        }

        else
        {
          v33 = &v27[v29];
          if ((v27[v29 - 465] & 0x80000000) == 0)
          {
            goto LABEL_105;
          }
        }

        operator delete(*(v33 - 61));
        if ((*(v33 - 497) & 0x80000000) == 0)
        {
LABEL_106:
          v34 = &v27[v29];
          if ((v27[v29 - 521] & 0x80000000) == 0)
          {
            goto LABEL_107;
          }

          goto LABEL_114;
        }

LABEL_113:
        operator delete(*&v27[v29 - 520]);
        v34 = &v27[v29];
        if ((v27[v29 - 521] & 0x80000000) == 0)
        {
LABEL_107:
          if ((*(v34 - 561) & 0x80000000) == 0)
          {
            goto LABEL_108;
          }

          goto LABEL_115;
        }

LABEL_114:
        operator delete(*(v34 - 68));
        if ((*(v34 - 561) & 0x80000000) == 0)
        {
LABEL_108:
          v35 = &v27[v29];
          if (v27[v29 - 593] < 0)
          {
            goto LABEL_116;
          }

          goto LABEL_109;
        }

LABEL_115:
        operator delete(*&v27[v29 - 584]);
        v35 = &v27[v29];
        if (v27[v29 - 593] < 0)
        {
LABEL_116:
          operator delete(*(v33 - 77));
          if ((*(v35 - 617) & 0x80000000) == 0)
          {
            goto LABEL_95;
          }

          goto LABEL_117;
        }

LABEL_109:
        if ((*(v35 - 617) & 0x80000000) == 0)
        {
          goto LABEL_95;
        }

LABEL_117:
        operator delete(*&v27[v29 - 640]);
LABEL_95:
        sub_2C0F28((v30 - 1120));
        v29 -= 1120;
      }

      while (&v27[v29] != v26);
      v28 = v45;
      a1 = v38;
LABEL_124:
      v46 = v26;
      operator delete(v28);
LABEL_125:
      sub_570440(v44);
      if (v43 == 1)
      {
        sub_3A9518(v42);
      }

      if (v40 < 0)
      {
        operator delete(v39[0]);
      }

LABEL_5:
      v6 += 1128;
    }

    while (v6 != v7);
  }
}

void sub_7720C4(uint64_t *a1, unint64_t a2)
{
  if (0x1CAC083126E978D5 * ((a1[2] - *a1) >> 4) < a2)
  {
    if (a2 < 0x20C49BA5E353F8)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_772608(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_772648(void **a1, uint64_t a2)
{
  v2 = 0x1CAC083126E978D5 * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x20C49BA5E353F7)
  {
    sub_1794();
  }

  if (0x395810624DD2F1AALL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x395810624DD2F1AALL * ((a1[2] - *a1) >> 4);
  }

  if ((0x1CAC083126E978D5 * ((a1[2] - *a1) >> 4)) >= 0x10624DD2F1A9FBLL)
  {
    v5 = 0x20C49BA5E353F7;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x20C49BA5E353F7)
    {
      operator new();
    }

    sub_1808();
  }

  v15 = 16 * ((a1[1] - *a1) >> 4);
  sub_5C3640(v15, a2);
  v6 = 2000 * v2 + 2000;
  v7 = *a1;
  v8 = a1[1];
  v9 = *a1 - v8;
  v10 = &v9[v15];
  if (v8 != *a1)
  {
    v11 = *a1;
    v12 = &v9[v15];
    do
    {
      v13 = sub_5D7978(v12, v11);
      v11 += 2000;
      v12 = v13 + 2000;
    }

    while (v11 != v8);
    do
    {
      sub_5C0D2C(v7);
      v7 += 2000;
    }

    while (v7 != v8);
    v7 = *a1;
  }

  *a1 = v10;
  a1[1] = v6;
  a1[2] = 0;
  if (v7)
  {
    operator delete(v7);
  }

  return v6;
}

void sub_7727C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_7727D4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_7727D4(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 2000;
    sub_5C0D2C(i - 2000);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_772828(uint64_t a1)
{
  if (*(a1 + 655) < 0)
  {
    operator delete(*(a1 + 632));
    if ((*(a1 + 599) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(a1 + 519) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

LABEL_11:
      operator delete(*(a1 + 496));
      v2 = *(a1 + 432);
      if (!v2)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  else if ((*(a1 + 599) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 576));
  if (*(a1 + 519) < 0)
  {
    goto LABEL_11;
  }

LABEL_4:
  v2 = *(a1 + 432);
  if (!v2)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_5:
    v3 = *v2;
    sub_253B4((v2 + 2));
    operator delete(v2);
    v2 = v3;
  }

  while (v3);
LABEL_6:
  v4 = *(a1 + 416);
  *(a1 + 416) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

char *sub_7728D4(uint64_t *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if (0x1CAC083126E978D5 * ((v9 - v10) >> 4) >= a5)
    {
      v15 = v10 - a2;
      if (0x1CAC083126E978D5 * ((v10 - a2) >> 4) >= a5)
      {
        v19 = &a2[2000 * a5];
        v20 = v10 - 2000 * a5;
        for (i = a1[1]; v20 < v10; i = v22 + 2000)
        {
          v22 = sub_5D7978(i, v20);
          v20 += 2000;
        }

        a1[1] = i;
        if (v10 != v19)
        {
          v23 = v10 - 2000;
          v24 = &v5[2000 * a5 - v10];
          v25 = v10 - 2000 - 2000 * a5;
          do
          {
            sub_5D82BC(v23, v25);
            v23 -= 2000;
            v25 -= 2000;
            v24 += 2000;
          }

          while (v24);
        }

        v26 = v7 + 2000 * a5;
        v27 = v5;
        do
        {
          sub_5D8878(v27, v7);
          v7 += 2000;
          v27 += 2000;
        }

        while (v7 != v26);
      }

      else
      {
        v17 = v15 + a3;
        if (v15 + a3 == a4)
        {
          v18 = a1[1];
          a1[1] = v10;
          if (v15 < 1)
          {
            return v5;
          }
        }

        else
        {
          v44 = 0;
          do
          {
            sub_5C3640(v10 + v44, v17 + v44);
            v44 += 2000;
          }

          while (v17 + v44 != a4);
          v18 = v10 + v44;
          a1[1] = v10 + v44;
          if (v15 < 1)
          {
            return v5;
          }
        }

        v45 = v18 - 2000 * a5;
        for (j = v18; v45 < v10; j = v47 + 2000)
        {
          v47 = sub_5D7978(j, v45);
          v45 += 2000;
        }

        a1[1] = j;
        if (v18 != &v5[2000 * a5])
        {
          v48 = v18 - 2000;
          v49 = &v5[2000 * a5 - v18];
          v50 = v18 - 2000 - 2000 * a5;
          do
          {
            sub_5D82BC(v48, v50);
            v48 -= 2000;
            v50 -= 2000;
            v49 += 2000;
          }

          while (v49);
        }

        v51 = v5;
        do
        {
          sub_5D8878(v51, v7);
          v7 += 2000;
          v51 += 2000;
        }

        while (v7 != v17);
      }
    }

    else
    {
      v11 = *a1;
      v12 = a5 + 0x1CAC083126E978D5 * ((v10 - *a1) >> 4);
      if (v12 > 0x20C49BA5E353F7)
      {
        sub_1794();
      }

      v13 = 0x1CAC083126E978D5 * ((v9 - v11) >> 4);
      if (2 * v13 > v12)
      {
        v12 = 2 * v13;
      }

      if (v13 >= 0x10624DD2F1A9FBLL)
      {
        v14 = 0x20C49BA5E353F7;
      }

      else
      {
        v14 = v12;
      }

      if (v14)
      {
        if (v14 <= 0x20C49BA5E353F7)
        {
          operator new();
        }

        sub_1808();
      }

      v28 = 16 * (&a2[-v11] >> 4);
      v53 = v28;
      v29 = 2000 * a5;
      v30 = v28 + 2000 * a5;
      do
      {
        sub_5C3640(v28, v7);
        v28 += 2000;
        v7 += 2000;
        v29 -= 2000;
      }

      while (v29);
      v31 = a1[1];
      v32 = v5;
      if (v31 != v5)
      {
        v33 = v5;
        v34 = v30;
        do
        {
          v35 = sub_5D7978(v34, v33);
          v33 += 2000;
          v34 = v35 + 2000;
        }

        while (v33 != v31);
        v36 = v5;
        do
        {
          sub_5C0D2C(v36);
          v36 += 2000;
        }

        while (v36 != v31);
        v32 = a1[1];
      }

      v37 = v30 + v32 - v5;
      a1[1] = v5;
      v38 = *a1;
      v39 = *a1 - v5;
      v40 = v53 + v39;
      if (*a1 != v5)
      {
        v41 = *a1;
        v42 = v53 + v39;
        do
        {
          v43 = sub_5D7978(v42, v41);
          v41 += 2000;
          v42 = v43 + 2000;
        }

        while (v41 != v5);
        do
        {
          sub_5C0D2C(v38);
          v38 += 2000;
        }

        while (v38 != v5);
        v38 = *a1;
      }

      *a1 = v40;
      a1[1] = v37;
      a1[2] = 0;
      if (v38)
      {
        operator delete(v38);
      }

      return v53;
    }
  }

  return v5;
}

void sub_772CC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_7727D4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_772CE0(uint64_t a1)
{
  if (*(a1 + 519) < 0)
  {
    operator delete(*(a1 + 496));
  }

  v2 = *(a1 + 432);
  if (v2)
  {
    do
    {
      v3 = *v2;
      sub_253B4((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(a1 + 416);
  *(a1 + 416) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_772D50(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = a1;
  if (a2 != a1)
  {
    v6 = a3[1];
    if (*a3 == v6)
    {
      v5 = a1 + 1120 * ((a2 - a1 - 1120) / 0x460uLL) + 1120;
    }

    else
    {
      while (1)
      {
        v14 = *a3;
        if (*a3 != v6)
        {
          while (1)
          {
            if (sub_6591C4(v14, v5))
            {
              v15 = *(v14 + 236);
              v16 = *(v5 + 236);
              if (v15 > v16 || v15 == v16 && (sub_658FC4(v14, v5) & 1) != 0)
              {
                break;
              }
            }

            v14 += 1120;
            if (v14 == v6)
            {
              v14 = v6;
              break;
            }
          }

          v6 = a3[1];
          if (v14 != v6)
          {
            break;
          }
        }

        v5 += 1120;
        if (v5 == a2)
        {
          return a2;
        }
      }
    }
  }

  if (v5 == a2)
  {
    return a2;
  }

  v7 = v5 + 1120;
  if (v5 + 1120 == a2)
  {
    return v5;
  }

  v8 = v5;
  do
  {
    v9 = v7;
    v10 = *a3;
    v11 = a3[1];
    if (*a3 == v11)
    {
      goto LABEL_18;
    }

    while (1)
    {
      if (sub_6591C4(v10, v9))
      {
        v12 = *(v10 + 236);
        v13 = *(v5 + 1356);
        if (v12 > v13 || v12 == v13 && (sub_658FC4(v10, v9) & 1) != 0)
        {
          break;
        }
      }

      v10 += 1120;
      if (v10 == v11)
      {
        v10 = v11;
        break;
      }
    }

    if (v10 == a3[1])
    {
LABEL_18:
      sub_52BE74(v8, v9);
      v8 += 1120;
    }

    v7 = v9 + 1120;
    v5 = v9;
  }

  while (v9 + 1120 != a2);
  return v8;
}

uint64_t sub_772EFC(void **a1, uint64_t a2)
{
  v2 = 0x1CAC083126E978D5 * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x20C49BA5E353F7)
  {
    sub_1794();
  }

  if (0x395810624DD2F1AALL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x395810624DD2F1AALL * ((a1[2] - *a1) >> 4);
  }

  if ((0x1CAC083126E978D5 * ((a1[2] - *a1) >> 4)) >= 0x10624DD2F1A9FBLL)
  {
    v5 = 0x20C49BA5E353F7;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x20C49BA5E353F7)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 16 * ((a1[1] - *a1) >> 4);
  sub_5D7978(v6, a2);
  v7 = 2000 * v2 + 2000;
  v8 = *a1;
  v9 = a1[1];
  v10 = *a1 + v6 - v9;
  if (v9 != *a1)
  {
    v11 = *a1;
    v12 = v10;
    do
    {
      v13 = sub_5D7978(v12, v11);
      v11 += 2000;
      v12 = v13 + 2000;
    }

    while (v11 != v9);
    do
    {
      sub_5C0D2C(v8);
      v8 += 2000;
    }

    while (v8 != v9);
    v8 = *a1;
  }

  *a1 = v10;
  a1[1] = v7;
  a1[2] = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return v7;
}

void *sub_773060(void **a1, uint64_t a2)
{
  v2 = 0xCF3CF3CF3CF3CF3DLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x186186186186186)
  {
    sub_1794();
  }

  if (0x9E79E79E79E79E7ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x9E79E79E79E79E7ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCF3CF3CF3CF3CF3DLL * ((a1[2] - *a1) >> 3) >= 0xC30C30C30C30C3)
  {
    v5 = 0x186186186186186;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x186186186186186)
    {
      operator new();
    }

    sub_1808();
  }

  v18 = 8 * ((a1[1] - *a1) >> 3);
  sub_52A464(v18, a2);
  v6 = (168 * v2 + 168);
  v7 = *a1;
  v8 = a1[1];
  v9 = (v18 + *a1 - v8);
  if (v8 != *a1)
  {
    v10 = *a1;
    v11 = (v18 + *a1 - v8);
    do
    {
      *v11 = *v10;
      v12 = *(v10 + 8);
      *(v11 + 3) = *(v10 + 3);
      *(v11 + 8) = v12;
      *(v10 + 2) = 0;
      *(v10 + 3) = 0;
      *(v10 + 1) = 0;
      v13 = *(v10 + 2);
      *(v11 + 12) = *(v10 + 12);
      *(v11 + 2) = v13;
      v14 = *(v10 + 56);
      *(v11 + 9) = *(v10 + 9);
      *(v11 + 56) = v14;
      *(v10 + 8) = 0;
      *(v10 + 9) = 0;
      *(v10 + 7) = 0;
      v15 = *(v10 + 5);
      *(v11 + 12) = *(v10 + 12);
      *(v11 + 5) = v15;
      *(v10 + 10) = 0;
      *(v10 + 11) = 0;
      *(v10 + 12) = 0;
      *(v11 + 13) = 0;
      *(v11 + 14) = 0;
      *(v11 + 15) = 0;
      *(v11 + 104) = *(v10 + 104);
      *(v11 + 15) = *(v10 + 15);
      *(v10 + 13) = 0;
      *(v10 + 14) = 0;
      *(v10 + 15) = 0;
      *(v11 + 16) = *(v10 + 16);
      v16 = *(v10 + 136);
      *(v11 + 19) = *(v10 + 19);
      *(v11 + 136) = v16;
      *(v10 + 18) = 0;
      *(v10 + 19) = 0;
      *(v10 + 17) = 0;
      *(v11 + 80) = *(v10 + 80);
      v10 += 168;
      v11 += 168;
    }

    while (v10 != v8);
    do
    {
      v7 = (sub_52A624(v7) + 168);
    }

    while (v7 != v8);
    v7 = *a1;
  }

  *a1 = v9;
  a1[1] = v6;
  a1[2] = 0;
  if (v7)
  {
    operator delete(v7);
  }

  return v6;
}

void sub_773268(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_530BBC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_77327C(uint64_t result, unint64_t a2, uint64_t a3, char a4)
{
  v6 = result;
  v7 = 0x1CAC083126E978D5;
LABEL_2:
  v30 = a2 - 2000;
  v8 = v6;
LABEL_3:
  v9 = 1 - a3;
  while (1)
  {
    v6 = v8;
    v10 = v9;
    v11 = a2 - v8;
    v12 = ((a2 - v8) >> 4) * v7;
    if (v12 > 2)
    {
      break;
    }

    if (v12 < 2)
    {
      return result;
    }

    if (v12 == 2)
    {
      v24 = sub_570CBC(v30);
      result = sub_570CBC(v8);
      if (v24 < result)
      {
        v25 = v8;
        v26 = v30;
        goto LABEL_34;
      }

      return result;
    }

LABEL_11:
    if (v11 <= 47999)
    {
      if (a4)
      {

        return sub_77394C(v8, a2);
      }

      else
      {

        return sub_773DFC(v8, a2);
      }
    }

    if (v10 == 1)
    {

      return sub_774280(v8, a2, a2);
    }

    v13 = v12 >> 1;
    v14 = v8 + 2000 * (v12 >> 1);
    if (v11 < 0x3E801)
    {
      sub_7736A4(v14, v8, v30);
      if (a4)
      {
        goto LABEL_18;
      }
    }

    else
    {
      sub_7736A4(v8, v14, v30);
      v15 = v8 + 2000;
      v16 = v7;
      v17 = 2000 * v13;
      v18 = 2000 * v13 + v6 - 2000;
      sub_7736A4(v6 + 2000, v18, a2 - 4000);
      sub_7736A4(v6 + 4000, v15 + v17, a2 - 6000);
      v19 = v15 + v17;
      v7 = v16;
      sub_7736A4(v18, v14, v19);
      sub_77560C(v6, v14);
      if (a4)
      {
        goto LABEL_18;
      }
    }

    v20 = sub_570CBC(v6 - 2000);
    if (v20 >= sub_570CBC(v6))
    {
      result = sub_774C50(v6, a2);
      v8 = result;
      goto LABEL_23;
    }

LABEL_18:
    v21 = sub_774F54(v6, a2);
    if ((v22 & 1) == 0)
    {
      goto LABEL_21;
    }

    v23 = sub_775254(v6, v21);
    v8 = v21 + 2000;
    result = sub_775254(v21 + 2000, a2);
    if (result)
    {
      a3 = -v10;
      a2 = v21;
      if (v23)
      {
        return result;
      }

      goto LABEL_2;
    }

    v9 = v10 + 1;
    if (!v23)
    {
LABEL_21:
      result = sub_77327C(v6, v21, -v10, a4 & 1);
      v8 = v21 + 2000;
LABEL_23:
      a4 = 0;
      a3 = -v10;
      goto LABEL_3;
    }
  }

  if (v12 == 3)
  {

    return sub_7736A4(v8, v8 + 2000, v30);
  }

  if (v12 != 4)
  {
    if (v12 == 5)
    {

      return sub_7737D0(v8, v8 + 2000, v8 + 4000, v8 + 6000, v30);
    }

    goto LABEL_11;
  }

  sub_7736A4(v8, v8 + 2000, v8 + 4000);
  v27 = sub_570CBC(v30);
  result = sub_570CBC(v8 + 4000);
  if (v27 < result)
  {
    sub_77560C(v8 + 4000, v30);
    v28 = sub_570CBC(v8 + 4000);
    result = sub_570CBC(v8 + 2000);
    if (v28 < result)
    {
      sub_77560C(v8 + 2000, v8 + 4000);
      v29 = sub_570CBC(v8 + 2000);
      result = sub_570CBC(v8);
      if (v29 < result)
      {
        v26 = v8 + 2000;
        v25 = v8;
LABEL_34:

        return sub_77560C(v25, v26);
      }
    }
  }

  return result;
}

uint64_t sub_7736A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_570CBC(a2);
  v7 = sub_570CBC(a1);
  v8 = sub_570CBC(a3);
  result = sub_570CBC(a2);
  if (v6 >= v7)
  {
    if (v8 < result)
    {
      sub_77560C(a2, a3);
      v11 = sub_570CBC(a2);
      result = sub_570CBC(a1);
      if (v11 < result)
      {
        v10 = a1;
        v12 = a2;

        return sub_77560C(v10, v12);
      }
    }
  }

  else
  {
    if (v8 < result)
    {
      v10 = a1;
      goto LABEL_11;
    }

    sub_77560C(a1, a2);
    v13 = sub_570CBC(a3);
    result = sub_570CBC(a2);
    if (v13 < result)
    {
      v10 = a2;
LABEL_11:
      v12 = a3;

      return sub_77560C(v10, v12);
    }
  }

  return result;
}

uint64_t sub_7737D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_7736A4(a1, a2, a3);
  v10 = sub_570CBC(a4);
  if (v10 < sub_570CBC(a3))
  {
    sub_77560C(a3, a4);
    v11 = sub_570CBC(a3);
    if (v11 < sub_570CBC(a2))
    {
      sub_77560C(a2, a3);
      v12 = sub_570CBC(a2);
      if (v12 < sub_570CBC(a1))
      {
        sub_77560C(a1, a2);
      }
    }
  }

  v13 = sub_570CBC(a5);
  result = sub_570CBC(a4);
  if (v13 < result)
  {
    sub_77560C(a4, a5);
    v15 = sub_570CBC(a4);
    result = sub_570CBC(a3);
    if (v15 < result)
    {
      sub_77560C(a3, a4);
      v16 = sub_570CBC(a3);
      result = sub_570CBC(a2);
      if (v16 < result)
      {
        sub_77560C(a2, a3);
        v17 = sub_570CBC(a2);
        result = sub_570CBC(a1);
        if (v17 < result)
        {

          return sub_77560C(a1, a2);
        }
      }
    }
  }

  return result;
}

uint64_t sub_77394C(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v3 = result;
    v4 = result + 2000;
    if (result + 2000 != a2)
    {
      v5 = 0;
      v6 = result;
      while (1)
      {
        v7 = v6;
        v6 = v4;
        v8 = sub_570CBC(v4);
        result = sub_570CBC(v7);
        if (v8 < result)
        {
          break;
        }

LABEL_4:
        v4 = v6 + 2000;
        v5 += 2000;
        if (v6 + 2000 == a2)
        {
          return result;
        }
      }

      sub_5D7978(&v21, v6);
      v9 = v5;
      while (1)
      {
        sub_5D82BC(v3 + v9 + 2000, v3 + v9);
        if (!v9)
        {
          break;
        }

        v10 = sub_570CBC(&v21);
        v11 = sub_570CBC(v3 + v9 - 2000);
        v9 -= 2000;
        if (v10 >= v11)
        {
          sub_5D82BC(v3 + v9 + 2000, &v21);
          if ((v38 & 0x80000000) == 0)
          {
            goto LABEL_13;
          }

          goto LABEL_12;
        }
      }

      sub_5D82BC(v3, &v21);
      if ((v38 & 0x80000000) == 0)
      {
        goto LABEL_13;
      }

LABEL_12:
      operator delete(__p);
LABEL_13:
      if (v36 != 1)
      {
        goto LABEL_19;
      }

      if (v35 < 0)
      {
        operator delete(v34);
        v12 = v32;
        if (!v32)
        {
LABEL_16:
          if ((v31 & 0x80000000) == 0)
          {
            goto LABEL_17;
          }

LABEL_75:
          operator delete(v30);
          if ((v29 & 0x80000000) == 0)
          {
LABEL_18:
            if ((v27 & 0x80000000) == 0)
            {
              goto LABEL_19;
            }

LABEL_77:
            operator delete(v26);
            v13 = v24;
            if (!v24)
            {
LABEL_65:
              result = sub_570440(&v23);
              if (v22[1120] == 1)
              {
                result = sub_3A9518(v22);
              }

              goto LABEL_4;
            }

LABEL_20:
            v14 = v25;
            v15 = v13;
            if (v25 == v13)
            {
              goto LABEL_64;
            }

            while (1)
            {
              if (*(v14 - 16) != 1)
              {
                *(v14 - 416) = off_26696C8;
                if ((*(v14 - 385) & 0x80000000) == 0)
                {
                  goto LABEL_25;
                }

                goto LABEL_51;
              }

              v16 = *(v14 - 40);
              if (v16)
              {
                break;
              }

LABEL_45:
              if (*(v14 - 49) < 0)
              {
                operator delete(*(v14 - 72));
                if ((*(v14 - 81) & 0x80000000) == 0)
                {
LABEL_47:
                  if ((*(v14 - 113) & 0x80000000) == 0)
                  {
                    goto LABEL_48;
                  }

                  goto LABEL_60;
                }
              }

              else if ((*(v14 - 81) & 0x80000000) == 0)
              {
                goto LABEL_47;
              }

              operator delete(*(v14 - 104));
              if ((*(v14 - 113) & 0x80000000) == 0)
              {
LABEL_48:
                if ((*(v14 - 137) & 0x80000000) == 0)
                {
                  goto LABEL_49;
                }

LABEL_61:
                operator delete(*(v14 - 160));
                if ((*(v14 - 161) & 0x80000000) == 0)
                {
                  goto LABEL_50;
                }

                goto LABEL_62;
              }

LABEL_60:
              operator delete(*(v14 - 136));
              if (*(v14 - 137) < 0)
              {
                goto LABEL_61;
              }

LABEL_49:
              if ((*(v14 - 161) & 0x80000000) == 0)
              {
                goto LABEL_50;
              }

LABEL_62:
              operator delete(*(v14 - 184));
LABEL_50:
              sub_33D080(v14 - 376);
              *(v14 - 416) = off_26696C8;
              if ((*(v14 - 385) & 0x80000000) == 0)
              {
LABEL_25:
                if ((*(v14 - 465) & 0x80000000) == 0)
                {
                  goto LABEL_26;
                }

                goto LABEL_52;
              }

LABEL_51:
              operator delete(*(v14 - 408));
              if ((*(v14 - 465) & 0x80000000) == 0)
              {
LABEL_26:
                if ((*(v14 - 497) & 0x80000000) == 0)
                {
                  goto LABEL_27;
                }

                goto LABEL_53;
              }

LABEL_52:
              operator delete(*(v14 - 488));
              if ((*(v14 - 497) & 0x80000000) == 0)
              {
LABEL_27:
                if ((*(v14 - 521) & 0x80000000) == 0)
                {
                  goto LABEL_28;
                }

                goto LABEL_54;
              }

LABEL_53:
              operator delete(*(v14 - 520));
              if ((*(v14 - 521) & 0x80000000) == 0)
              {
LABEL_28:
                if ((*(v14 - 561) & 0x80000000) == 0)
                {
                  goto LABEL_29;
                }

                goto LABEL_55;
              }

LABEL_54:
              operator delete(*(v14 - 544));
              if ((*(v14 - 561) & 0x80000000) == 0)
              {
LABEL_29:
                if ((*(v14 - 593) & 0x80000000) == 0)
                {
                  goto LABEL_30;
                }

                goto LABEL_56;
              }

LABEL_55:
              operator delete(*(v14 - 584));
              if ((*(v14 - 593) & 0x80000000) == 0)
              {
LABEL_30:
                if (*(v14 - 617) < 0)
                {
                  goto LABEL_57;
                }

                goto LABEL_22;
              }

LABEL_56:
              operator delete(*(v14 - 616));
              if (*(v14 - 617) < 0)
              {
LABEL_57:
                operator delete(*(v14 - 640));
              }

LABEL_22:
              v14 -= 1120;
              sub_2C0F28(v14);
              if (v14 == v13)
              {
                v15 = v24;
LABEL_64:
                v25 = v13;
                operator delete(v15);
                goto LABEL_65;
              }
            }

            v17 = *(v14 - 32);
            v18 = *(v14 - 40);
            if (v17 == v16)
            {
LABEL_44:
              *(v14 - 32) = v16;
              operator delete(v18);
              goto LABEL_45;
            }

            while (1)
            {
              if (*(v17 - 1) < 0)
              {
                operator delete(*(v17 - 3));
                if ((*(v17 - 25) & 0x80000000) == 0)
                {
LABEL_38:
                  if (*(v17 - 49) < 0)
                  {
                    goto LABEL_42;
                  }

                  goto LABEL_35;
                }
              }

              else if ((*(v17 - 25) & 0x80000000) == 0)
              {
                goto LABEL_38;
              }

              operator delete(*(v17 - 6));
              if (*(v17 - 49) < 0)
              {
LABEL_42:
                operator delete(*(v17 - 9));
              }

LABEL_35:
              v17 -= 31;
              sub_33D5A0(v17);
              if (v17 == v16)
              {
                v18 = *(v14 - 40);
                goto LABEL_44;
              }
            }
          }

          goto LABEL_76;
        }
      }

      else
      {
        v12 = v32;
        if (!v32)
        {
          goto LABEL_16;
        }
      }

      v19 = v33;
      if (v33 == v12)
      {
        v33 = v12;
        operator delete(v12);
        if (v31 < 0)
        {
          goto LABEL_75;
        }
      }

      else
      {
        do
        {
          v20 = *(v19 - 1);
          v19 -= 3;
          if (v20 < 0)
          {
            operator delete(*v19);
          }
        }

        while (v19 != v12);
        v33 = v12;
        operator delete(v32);
        if (v31 < 0)
        {
          goto LABEL_75;
        }
      }

LABEL_17:
      if ((v29 & 0x80000000) == 0)
      {
        goto LABEL_18;
      }

LABEL_76:
      operator delete(v28);
      if (v27 < 0)
      {
        goto LABEL_77;
      }

LABEL_19:
      v13 = v24;
      if (!v24)
      {
        goto LABEL_65;
      }

      goto LABEL_20;
    }
  }

  return result;
}

uint64_t sub_773DFC(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v3 = result;
    v4 = result + 2000;
    if (result + 2000 != a2)
    {
      while (1)
      {
        v5 = v4;
        v6 = sub_570CBC(v4);
        result = sub_570CBC(v3);
        if (v6 < result)
        {
          break;
        }

LABEL_4:
        v4 = v5 + 2000;
        v3 = v5;
        if (v5 + 2000 == a2)
        {
          return result;
        }
      }

      sub_5D7978(&v17, v5);
      do
      {
        sub_5D82BC(v3 + 2000, v3);
        v7 = sub_570CBC(&v17);
        v3 -= 2000;
      }

      while (v7 < sub_570CBC(v3));
      sub_5D82BC(v3 + 2000, &v17);
      if (v34 < 0)
      {
        operator delete(__p);
        if (v32 != 1)
        {
          goto LABEL_17;
        }
      }

      else if (v32 != 1)
      {
LABEL_17:
        v9 = v20;
        if (!v20)
        {
          goto LABEL_63;
        }

        goto LABEL_18;
      }

      if (v31 < 0)
      {
        operator delete(v30);
        v8 = v28;
        if (!v28)
        {
LABEL_14:
          if ((v27 & 0x80000000) == 0)
          {
            goto LABEL_15;
          }

LABEL_73:
          operator delete(v26);
          if ((v25 & 0x80000000) == 0)
          {
LABEL_16:
            if ((v23 & 0x80000000) == 0)
            {
              goto LABEL_17;
            }

            goto LABEL_75;
          }

LABEL_74:
          operator delete(v24);
          if ((v23 & 0x80000000) == 0)
          {
            goto LABEL_17;
          }

LABEL_75:
          operator delete(v22);
          v9 = v20;
          if (!v20)
          {
LABEL_63:
            result = sub_570440(&v19);
            if (v18[1120] == 1)
            {
              result = sub_3A9518(v18);
            }

            goto LABEL_4;
          }

LABEL_18:
          v10 = v21;
          v11 = v9;
          if (v21 == v9)
          {
            goto LABEL_62;
          }

          while (1)
          {
            if (*(v10 - 16) != 1)
            {
              *(v10 - 416) = off_26696C8;
              if ((*(v10 - 385) & 0x80000000) == 0)
              {
                goto LABEL_23;
              }

              goto LABEL_49;
            }

            v12 = *(v10 - 40);
            if (v12)
            {
              break;
            }

LABEL_43:
            if (*(v10 - 49) < 0)
            {
              operator delete(*(v10 - 72));
              if ((*(v10 - 81) & 0x80000000) == 0)
              {
LABEL_45:
                if ((*(v10 - 113) & 0x80000000) == 0)
                {
                  goto LABEL_46;
                }

                goto LABEL_58;
              }
            }

            else if ((*(v10 - 81) & 0x80000000) == 0)
            {
              goto LABEL_45;
            }

            operator delete(*(v10 - 104));
            if ((*(v10 - 113) & 0x80000000) == 0)
            {
LABEL_46:
              if ((*(v10 - 137) & 0x80000000) == 0)
              {
                goto LABEL_47;
              }

LABEL_59:
              operator delete(*(v10 - 160));
              if ((*(v10 - 161) & 0x80000000) == 0)
              {
                goto LABEL_48;
              }

              goto LABEL_60;
            }

LABEL_58:
            operator delete(*(v10 - 136));
            if (*(v10 - 137) < 0)
            {
              goto LABEL_59;
            }

LABEL_47:
            if ((*(v10 - 161) & 0x80000000) == 0)
            {
              goto LABEL_48;
            }

LABEL_60:
            operator delete(*(v10 - 184));
LABEL_48:
            sub_33D080(v10 - 376);
            *(v10 - 416) = off_26696C8;
            if ((*(v10 - 385) & 0x80000000) == 0)
            {
LABEL_23:
              if ((*(v10 - 465) & 0x80000000) == 0)
              {
                goto LABEL_24;
              }

              goto LABEL_50;
            }

LABEL_49:
            operator delete(*(v10 - 408));
            if ((*(v10 - 465) & 0x80000000) == 0)
            {
LABEL_24:
              if ((*(v10 - 497) & 0x80000000) == 0)
              {
                goto LABEL_25;
              }

              goto LABEL_51;
            }

LABEL_50:
            operator delete(*(v10 - 488));
            if ((*(v10 - 497) & 0x80000000) == 0)
            {
LABEL_25:
              if ((*(v10 - 521) & 0x80000000) == 0)
              {
                goto LABEL_26;
              }

              goto LABEL_52;
            }

LABEL_51:
            operator delete(*(v10 - 520));
            if ((*(v10 - 521) & 0x80000000) == 0)
            {
LABEL_26:
              if ((*(v10 - 561) & 0x80000000) == 0)
              {
                goto LABEL_27;
              }

              goto LABEL_53;
            }

LABEL_52:
            operator delete(*(v10 - 544));
            if ((*(v10 - 561) & 0x80000000) == 0)
            {
LABEL_27:
              if ((*(v10 - 593) & 0x80000000) == 0)
              {
                goto LABEL_28;
              }

              goto LABEL_54;
            }

LABEL_53:
            operator delete(*(v10 - 584));
            if ((*(v10 - 593) & 0x80000000) == 0)
            {
LABEL_28:
              if (*(v10 - 617) < 0)
              {
                goto LABEL_55;
              }

              goto LABEL_20;
            }

LABEL_54:
            operator delete(*(v10 - 616));
            if (*(v10 - 617) < 0)
            {
LABEL_55:
              operator delete(*(v10 - 640));
            }

LABEL_20:
            v10 -= 1120;
            sub_2C0F28(v10);
            if (v10 == v9)
            {
              v11 = v20;
LABEL_62:
              v21 = v9;
              operator delete(v11);
              goto LABEL_63;
            }
          }

          v13 = *(v10 - 32);
          v14 = *(v10 - 40);
          if (v13 == v12)
          {
LABEL_42:
            *(v10 - 32) = v12;
            operator delete(v14);
            goto LABEL_43;
          }

          while (1)
          {
            if (*(v13 - 1) < 0)
            {
              operator delete(*(v13 - 3));
              if ((*(v13 - 25) & 0x80000000) == 0)
              {
LABEL_36:
                if (*(v13 - 49) < 0)
                {
                  goto LABEL_40;
                }

                goto LABEL_33;
              }
            }

            else if ((*(v13 - 25) & 0x80000000) == 0)
            {
              goto LABEL_36;
            }

            operator delete(*(v13 - 6));
            if (*(v13 - 49) < 0)
            {
LABEL_40:
              operator delete(*(v13 - 9));
            }

LABEL_33:
            v13 -= 31;
            sub_33D5A0(v13);
            if (v13 == v12)
            {
              v14 = *(v10 - 40);
              goto LABEL_42;
            }
          }
        }
      }

      else
      {
        v8 = v28;
        if (!v28)
        {
          goto LABEL_14;
        }
      }

      v15 = v29;
      if (v29 == v8)
      {
        v29 = v8;
        operator delete(v8);
        if (v27 < 0)
        {
          goto LABEL_73;
        }
      }

      else
      {
        do
        {
          v16 = *(v15 - 1);
          v15 -= 3;
          if (v16 < 0)
          {
            operator delete(*v15);
          }
        }

        while (v15 != v8);
        v29 = v8;
        operator delete(v28);
        if (v27 < 0)
        {
          goto LABEL_73;
        }
      }

LABEL_15:
      if ((v25 & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_74;
    }
  }

  return result;
}

uint64_t sub_774280(uint64_t result, uint64_t a2, uint64_t a3)
{
  v53 = a2;
  if (result != a2)
  {
    v4 = result;
    v5 = a2 - result;
    v6 = 0x1CAC083126E978D5 * ((a2 - result) >> 4);
    if (a2 - result >= 2001)
    {
      v7 = (v6 - 2) >> 1;
      v8 = v7 + 1;
      v9 = result + 2000 * v7;
      do
      {
        result = sub_77578C(v4, v6, v9);
        v9 -= 2000;
        --v8;
      }

      while (v8);
    }

    if (v53 != a3)
    {
      v10 = v53;
      do
      {
        v11 = sub_570CBC(v10);
        result = sub_570CBC(v4);
        if (v11 < result)
        {
          sub_77560C(v10, v4);
          result = sub_77578C(v4, v6, v4);
        }

        v10 += 2000;
      }

      while (v10 != a3);
    }

    if (v5 >= 2001)
    {
      v12 = 0x1CAC083126E978D5 * (v5 >> 4);
      do
      {
        sub_5D7978(v54, v4);
        v14 = 0;
        v15 = v4;
        do
        {
          v16 = v15 + 2000 * v14;
          v17 = v16 + 2000;
          v18 = (2 * v14) | 1;
          v19 = 2 * v14 + 2;
          if (v19 < v12)
          {
            v20 = sub_570CBC(v16 + 2000);
            v21 = v16 + 4000;
            if (v20 < sub_570CBC(v21))
            {
              v17 = v21;
              v18 = v19;
            }
          }

          sub_5D82BC(v15, v17);
          v15 = v17;
          v14 = v18;
        }

        while (v18 <= ((v12 - 2) >> 1));
        v22 = v53 - 2000;
        v23 = v17 == v53 - 2000;
        v53 -= 2000;
        if (v23)
        {
          sub_5D82BC(v17, v54);
          goto LABEL_29;
        }

        sub_5D82BC(v17, v22);
        sub_5D82BC(v22, v54);
        v24 = v17 - v4 + 2000;
        if (v24 >= 2001)
        {
          v25 = (0x1CAC083126E978D5 * (v24 >> 4) - 2) >> 1;
          v26 = v4 + 2000 * v25;
          v27 = sub_570CBC(v26);
          if (v27 < sub_570CBC(v17))
          {
            sub_5D7978(v72, v17);
            do
            {
              v28 = v26;
              sub_5D82BC(v17, v26);
              if (!v25)
              {
                break;
              }

              v25 = (v25 - 1) >> 1;
              v26 = v4 + 2000 * v25;
              v29 = sub_570CBC(v26);
              v17 = v28;
            }

            while (v29 < sub_570CBC(v72));
            sub_5D82BC(v28, v72);
            if (v89 < 0)
            {
              operator delete(v88);
              if (v87 != 1)
              {
                goto LABEL_112;
              }
            }

            else if (v87 != 1)
            {
LABEL_112:
              v43 = v75;
              if (!v75)
              {
                goto LABEL_145;
              }

              goto LABEL_113;
            }

            if (v86 < 0)
            {
              operator delete(v85);
            }

            v39 = v83;
            if (v83)
            {
              v40 = v84;
              v41 = v83;
              if (v84 != v83)
              {
                do
                {
                  v42 = *(v40 - 1);
                  v40 -= 3;
                  if (v42 < 0)
                  {
                    operator delete(*v40);
                  }
                }

                while (v40 != v39);
                v41 = v83;
              }

              v84 = v39;
              operator delete(v41);
            }

            if (v82 < 0)
            {
              operator delete(v81);
              if ((v80 & 0x80000000) == 0)
              {
LABEL_111:
                if ((v78 & 0x80000000) == 0)
                {
                  goto LABEL_112;
                }

                goto LABEL_149;
              }
            }

            else if ((v80 & 0x80000000) == 0)
            {
              goto LABEL_111;
            }

            operator delete(v79);
            if ((v78 & 0x80000000) == 0)
            {
              goto LABEL_112;
            }

LABEL_149:
            operator delete(v77);
            v43 = v75;
            if (!v75)
            {
              goto LABEL_145;
            }

LABEL_113:
            v44 = v76;
            v45 = v43;
            if (v76 == v43)
            {
              goto LABEL_144;
            }

            v46 = 0;
            while (1)
            {
              v47 = &v44[v46];
              if (v44[v46 - 16] != 1)
              {
                goto LABEL_123;
              }

              v90 = (v47 - 40);
              sub_5293E8(&v90);
              if (*(v47 - 49) < 0)
              {
                operator delete(*&v44[v46 - 72]);
                v48 = &v44[v46];
                if ((v44[v46 - 81] & 0x80000000) == 0)
                {
LABEL_119:
                  if ((*(v48 - 113) & 0x80000000) == 0)
                  {
                    goto LABEL_120;
                  }

                  goto LABEL_140;
                }
              }

              else
              {
                v48 = &v44[v46];
                if ((v44[v46 - 81] & 0x80000000) == 0)
                {
                  goto LABEL_119;
                }
              }

              operator delete(*(v48 - 13));
              if ((*(v48 - 113) & 0x80000000) == 0)
              {
LABEL_120:
                v49 = &v44[v46];
                if ((v44[v46 - 137] & 0x80000000) == 0)
                {
                  goto LABEL_121;
                }

                goto LABEL_141;
              }

LABEL_140:
              operator delete(*&v44[v46 - 136]);
              v49 = &v44[v46];
              if ((v44[v46 - 137] & 0x80000000) == 0)
              {
LABEL_121:
                if (*(v49 - 161) < 0)
                {
                  goto LABEL_142;
                }

                goto LABEL_122;
              }

LABEL_141:
              operator delete(*(v48 - 20));
              if (*(v49 - 161) < 0)
              {
LABEL_142:
                operator delete(*&v44[v46 - 184]);
              }

LABEL_122:
              sub_33D080((v47 - 376));
LABEL_123:
              *(v47 - 52) = off_26696C8;
              if (*(v47 - 385) < 0)
              {
                operator delete(*&v44[v46 - 408]);
                v50 = &v44[v46];
                if ((v44[v46 - 465] & 0x80000000) == 0)
                {
LABEL_125:
                  if ((*(v50 - 497) & 0x80000000) == 0)
                  {
                    goto LABEL_126;
                  }

                  goto LABEL_133;
                }
              }

              else
              {
                v50 = &v44[v46];
                if ((v44[v46 - 465] & 0x80000000) == 0)
                {
                  goto LABEL_125;
                }
              }

              operator delete(*(v50 - 61));
              if ((*(v50 - 497) & 0x80000000) == 0)
              {
LABEL_126:
                v51 = &v44[v46];
                if ((v44[v46 - 521] & 0x80000000) == 0)
                {
                  goto LABEL_127;
                }

                goto LABEL_134;
              }

LABEL_133:
              operator delete(*&v44[v46 - 520]);
              v51 = &v44[v46];
              if ((v44[v46 - 521] & 0x80000000) == 0)
              {
LABEL_127:
                if ((*(v51 - 561) & 0x80000000) == 0)
                {
                  goto LABEL_128;
                }

                goto LABEL_135;
              }

LABEL_134:
              operator delete(*(v51 - 68));
              if ((*(v51 - 561) & 0x80000000) == 0)
              {
LABEL_128:
                v52 = &v44[v46];
                if ((v44[v46 - 593] & 0x80000000) == 0)
                {
                  goto LABEL_129;
                }

                goto LABEL_136;
              }

LABEL_135:
              operator delete(*&v44[v46 - 584]);
              v52 = &v44[v46];
              if ((v44[v46 - 593] & 0x80000000) == 0)
              {
LABEL_129:
                if (*(v52 - 617) < 0)
                {
                  goto LABEL_137;
                }

                goto LABEL_115;
              }

LABEL_136:
              operator delete(*(v50 - 77));
              if (*(v52 - 617) < 0)
              {
LABEL_137:
                operator delete(*&v44[v46 - 640]);
              }

LABEL_115:
              sub_2C0F28((v47 - 1120));
              v46 -= 1120;
              if (&v44[v46] == v43)
              {
                v45 = v75;
LABEL_144:
                v76 = v43;
                operator delete(v45);
LABEL_145:
                sub_570440(&v74);
                if (v73[1120] == 1)
                {
                  sub_3A9518(v73);
                }

                break;
              }
            }
          }
        }

LABEL_29:
        if (v71 < 0)
        {
          operator delete(__p);
          if (v69 != 1)
          {
            goto LABEL_38;
          }
        }

        else if (v69 != 1)
        {
          goto LABEL_38;
        }

        if (v68 < 0)
        {
          operator delete(v67);
          v30 = v65;
          if (!v65)
          {
LABEL_35:
            if ((v64 & 0x80000000) == 0)
            {
              goto LABEL_36;
            }

            goto LABEL_94;
          }
        }

        else
        {
          v30 = v65;
          if (!v65)
          {
            goto LABEL_35;
          }
        }

        v37 = v66;
        if (v66 == v30)
        {
          v66 = v30;
          operator delete(v30);
          if ((v64 & 0x80000000) == 0)
          {
            goto LABEL_36;
          }
        }

        else
        {
          do
          {
            v38 = *(v37 - 1);
            v37 -= 3;
            if (v38 < 0)
            {
              operator delete(*v37);
            }
          }

          while (v37 != v30);
          v66 = v30;
          operator delete(v65);
          if ((v64 & 0x80000000) == 0)
          {
LABEL_36:
            if ((v62 & 0x80000000) == 0)
            {
              goto LABEL_37;
            }

            goto LABEL_95;
          }
        }

LABEL_94:
        operator delete(v63);
        if ((v62 & 0x80000000) == 0)
        {
LABEL_37:
          if (v60 < 0)
          {
            goto LABEL_96;
          }

          goto LABEL_38;
        }

LABEL_95:
        operator delete(v61);
        if (v60 < 0)
        {
LABEL_96:
          operator delete(v59);
          v31 = v57;
          if (!v57)
          {
            goto LABEL_84;
          }

LABEL_39:
          v32 = v58;
          v33 = v31;
          if (v58 == v31)
          {
LABEL_83:
            v58 = v31;
            operator delete(v33);
            goto LABEL_84;
          }

          while (2)
          {
            if (*(v32 - 16) != 1)
            {
              *(v32 - 416) = off_26696C8;
              if ((*(v32 - 385) & 0x80000000) == 0)
              {
                goto LABEL_44;
              }

LABEL_70:
              operator delete(*(v32 - 408));
              if (*(v32 - 465) < 0)
              {
                goto LABEL_71;
              }

LABEL_45:
              if ((*(v32 - 497) & 0x80000000) == 0)
              {
                goto LABEL_46;
              }

LABEL_72:
              operator delete(*(v32 - 520));
              if (*(v32 - 521) < 0)
              {
                goto LABEL_73;
              }

LABEL_47:
              if ((*(v32 - 561) & 0x80000000) == 0)
              {
                goto LABEL_48;
              }

LABEL_74:
              operator delete(*(v32 - 584));
              if (*(v32 - 593) < 0)
              {
                goto LABEL_75;
              }

LABEL_49:
              if (*(v32 - 617) < 0)
              {
                goto LABEL_76;
              }

              goto LABEL_41;
            }

            v34 = *(v32 - 40);
            if (v34)
            {
              v35 = *(v32 - 32);
              v36 = *(v32 - 40);
              if (v35 == v34)
              {
LABEL_63:
                *(v32 - 32) = v34;
                operator delete(v36);
                goto LABEL_64;
              }

              while (2)
              {
                if (*(v35 - 1) < 0)
                {
                  operator delete(*(v35 - 3));
                  if (*(v35 - 25) < 0)
                  {
                    goto LABEL_60;
                  }

LABEL_57:
                  if (*(v35 - 49) < 0)
                  {
LABEL_61:
                    operator delete(*(v35 - 9));
                  }
                }

                else
                {
                  if ((*(v35 - 25) & 0x80000000) == 0)
                  {
                    goto LABEL_57;
                  }

LABEL_60:
                  operator delete(*(v35 - 6));
                  if (*(v35 - 49) < 0)
                  {
                    goto LABEL_61;
                  }
                }

                v35 -= 31;
                sub_33D5A0(v35);
                if (v35 == v34)
                {
                  v36 = *(v32 - 40);
                  goto LABEL_63;
                }

                continue;
              }
            }

LABEL_64:
            if (*(v32 - 49) < 0)
            {
              operator delete(*(v32 - 72));
              if (*(v32 - 81) < 0)
              {
                goto LABEL_78;
              }

LABEL_66:
              if ((*(v32 - 113) & 0x80000000) == 0)
              {
                goto LABEL_67;
              }

LABEL_79:
              operator delete(*(v32 - 136));
              if (*(v32 - 137) < 0)
              {
                goto LABEL_80;
              }

LABEL_68:
              if (*(v32 - 161) < 0)
              {
LABEL_81:
                operator delete(*(v32 - 184));
              }
            }

            else
            {
              if ((*(v32 - 81) & 0x80000000) == 0)
              {
                goto LABEL_66;
              }

LABEL_78:
              operator delete(*(v32 - 104));
              if (*(v32 - 113) < 0)
              {
                goto LABEL_79;
              }

LABEL_67:
              if ((*(v32 - 137) & 0x80000000) == 0)
              {
                goto LABEL_68;
              }

LABEL_80:
              operator delete(*(v32 - 160));
              if (*(v32 - 161) < 0)
              {
                goto LABEL_81;
              }
            }

            sub_33D080(v32 - 376);
            *(v32 - 416) = off_26696C8;
            if (*(v32 - 385) < 0)
            {
              goto LABEL_70;
            }

LABEL_44:
            if ((*(v32 - 465) & 0x80000000) == 0)
            {
              goto LABEL_45;
            }

LABEL_71:
            operator delete(*(v32 - 488));
            if (*(v32 - 497) < 0)
            {
              goto LABEL_72;
            }

LABEL_46:
            if ((*(v32 - 521) & 0x80000000) == 0)
            {
              goto LABEL_47;
            }

LABEL_73:
            operator delete(*(v32 - 544));
            if (*(v32 - 561) < 0)
            {
              goto LABEL_74;
            }

LABEL_48:
            if ((*(v32 - 593) & 0x80000000) == 0)
            {
              goto LABEL_49;
            }

LABEL_75:
            operator delete(*(v32 - 616));
            if (*(v32 - 617) < 0)
            {
LABEL_76:
              operator delete(*(v32 - 640));
            }

LABEL_41:
            v32 -= 1120;
            sub_2C0F28(v32);
            if (v32 == v31)
            {
              v33 = v57;
              goto LABEL_83;
            }

            continue;
          }
        }

LABEL_38:
        v31 = v57;
        if (v57)
        {
          goto LABEL_39;
        }

LABEL_84:
        result = sub_570440(&v56);
        if (v55[1120] == 1)
        {
          result = sub_3A9518(v55);
        }
      }

      while (v12-- > 2);
    }
  }

  return result;
}

void sub_774C0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_5C3A5C(va);
  _Unwind_Resume(a1);
}

void sub_774C20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_5C3A5C(&STACK[0x7E0]);
  sub_5C3A5C(va);
  _Unwind_Resume(a1);
}

void sub_774C3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_5C3A5C(va);
  _Unwind_Resume(a1);
}

unint64_t sub_774C50(unint64_t a1, unint64_t a2)
{
  sub_5D7978(&v21, a1);
  v4 = sub_570CBC(&v21);
  if (v4 >= sub_570CBC(a2 - 2000))
  {
    v7 = a1 + 2000;
    do
    {
      v5 = v7;
      if (v7 >= a2)
      {
        break;
      }

      v8 = sub_570CBC(&v21);
      v9 = sub_570CBC(v5);
      v7 = v5 + 2000;
    }

    while (v8 >= v9);
  }

  else
  {
    v5 = a1;
    do
    {
      v6 = sub_570CBC(&v21);
      v5 += 2000;
    }

    while (v6 >= sub_570CBC(v5));
  }

  if (v5 < a2)
  {
    do
    {
      v10 = sub_570CBC(&v21);
      a2 -= 2000;
    }

    while (v10 < sub_570CBC(a2));
  }

  while (v5 < a2)
  {
    sub_77560C(v5, a2);
    do
    {
      v11 = sub_570CBC(&v21);
      v5 += 2000;
    }

    while (v11 >= sub_570CBC(v5));
    do
    {
      v12 = sub_570CBC(&v21);
      a2 -= 2000;
    }

    while (v12 < sub_570CBC(a2));
  }

  if (v5 - 2000 != a1)
  {
    sub_5D82BC(a1, v5 - 2000);
  }

  sub_5D82BC(v5 - 2000, &v21);
  if (v38 < 0)
  {
    operator delete(__p);
    if (v36 != 1)
    {
      goto LABEL_34;
    }

LABEL_21:
    if (v35 < 0)
    {
      operator delete(v34);
    }

    v13 = v32;
    if (v32)
    {
      v14 = v33;
      v15 = v32;
      if (v33 != v32)
      {
        do
        {
          v16 = *(v14 - 1);
          v14 -= 3;
          if (v16 < 0)
          {
            operator delete(*v14);
          }
        }

        while (v14 != v13);
        v15 = v32;
      }

      v33 = v13;
      operator delete(v15);
    }

    if (v31 < 0)
    {
      operator delete(v30);
      if ((v29 & 0x80000000) == 0)
      {
LABEL_33:
        if ((v27 & 0x80000000) == 0)
        {
          goto LABEL_34;
        }

        goto LABEL_44;
      }
    }

    else if ((v29 & 0x80000000) == 0)
    {
      goto LABEL_33;
    }

    operator delete(v28);
    if ((v27 & 0x80000000) == 0)
    {
      goto LABEL_34;
    }

LABEL_44:
    operator delete(v26);
    v17 = v24;
    if (!v24)
    {
      goto LABEL_39;
    }

    goto LABEL_35;
  }

  if (v36 == 1)
  {
    goto LABEL_21;
  }

LABEL_34:
  v17 = v24;
  if (!v24)
  {
    goto LABEL_39;
  }

LABEL_35:
  v18 = v25;
  v19 = v17;
  if (v25 != v17)
  {
    do
    {
      v18 = sub_3A9518(v18 - 1120);
    }

    while (v18 != v17);
    v19 = v24;
  }

  v25 = v17;
  operator delete(v19);
LABEL_39:
  sub_570440(&v23);
  if (v22[1120] == 1)
  {
    sub_3A9518(v22);
  }

  return v5;
}

uint64_t sub_774F54(uint64_t a1, unint64_t a2)
{
  sub_5D7978(&v22, a1);
  v4 = 0;
  do
  {
    v5 = sub_570CBC(a1 + v4 + 2000);
    v4 += 2000;
  }

  while (v5 < sub_570CBC(&v22));
  v6 = a1 + v4;
  if (v4 == 2000)
  {
    do
    {
      if (v6 >= a2)
      {
        break;
      }

      a2 -= 2000;
      v8 = sub_570CBC(a2);
    }

    while (v8 >= sub_570CBC(&v22));
  }

  else
  {
    do
    {
      a2 -= 2000;
      v7 = sub_570CBC(a2);
    }

    while (v7 >= sub_570CBC(&v22));
  }

  if (v6 >= a2)
  {
    v13 = v6 - 2000;
    if (v6 - 2000 == a1)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v9 = a1 + v4;
  v10 = a2;
  do
  {
    sub_77560C(v9, v10);
    do
    {
      v9 += 2000;
      v11 = sub_570CBC(v9);
    }

    while (v11 < sub_570CBC(&v22));
    do
    {
      v10 -= 2000;
      v12 = sub_570CBC(v10);
    }

    while (v12 >= sub_570CBC(&v22));
  }

  while (v9 < v10);
  v13 = v9 - 2000;
  if (v13 != a1)
  {
LABEL_17:
    sub_5D82BC(a1, v13);
  }

LABEL_18:
  sub_5D82BC(v13, &v22);
  if (v39 < 0)
  {
    operator delete(__p);
    if (v37 != 1)
    {
      goto LABEL_35;
    }

LABEL_22:
    if (v36 < 0)
    {
      operator delete(v35);
    }

    v14 = v33;
    if (v33)
    {
      v15 = v34;
      v16 = v33;
      if (v34 != v33)
      {
        do
        {
          v17 = *(v15 - 1);
          v15 -= 3;
          if (v17 < 0)
          {
            operator delete(*v15);
          }
        }

        while (v15 != v14);
        v16 = v33;
      }

      v34 = v14;
      operator delete(v16);
    }

    if (v32 < 0)
    {
      operator delete(v31);
      if ((v30 & 0x80000000) == 0)
      {
LABEL_34:
        if ((v28 & 0x80000000) == 0)
        {
          goto LABEL_35;
        }

        goto LABEL_45;
      }
    }

    else if ((v30 & 0x80000000) == 0)
    {
      goto LABEL_34;
    }

    operator delete(v29);
    if ((v28 & 0x80000000) == 0)
    {
      goto LABEL_35;
    }

LABEL_45:
    operator delete(v27);
    v18 = v25;
    if (!v25)
    {
      goto LABEL_40;
    }

    goto LABEL_36;
  }

  if (v37 == 1)
  {
    goto LABEL_22;
  }

LABEL_35:
  v18 = v25;
  if (!v25)
  {
    goto LABEL_40;
  }

LABEL_36:
  v19 = v26;
  v20 = v18;
  if (v26 != v18)
  {
    do
    {
      v19 = sub_3A9518(v19 - 1120);
    }

    while (v19 != v18);
    v20 = v25;
  }

  v26 = v18;
  operator delete(v20);
LABEL_40:
  sub_570440(&v24);
  if (v23[1120] == 1)
  {
    sub_3A9518(v23);
  }

  return v13;
}

BOOL sub_775254(uint64_t a1, uint64_t a2)
{
  v4 = 0x1CAC083126E978D5 * ((a2 - a1) >> 4);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        sub_7736A4(a1, a1 + 2000, a2 - 2000);
        return 1;
      case 4:
        v26 = a2 - 2000;
        sub_7736A4(a1, a1 + 2000, a1 + 4000);
        v27 = sub_570CBC(v26);
        if (v27 >= sub_570CBC(a1 + 4000))
        {
          return 1;
        }

        sub_77560C(a1 + 4000, v26);
        v28 = sub_570CBC(a1 + 4000);
        if (v28 >= sub_570CBC(a1 + 2000))
        {
          return 1;
        }

        sub_77560C(a1 + 2000, a1 + 4000);
        v29 = sub_570CBC(a1 + 2000);
        if (v29 >= sub_570CBC(a1))
        {
          return 1;
        }

        v8 = a1 + 2000;
        v7 = a1;
        goto LABEL_6;
      case 5:
        sub_7737D0(a1, a1 + 2000, a1 + 4000, a1 + 6000, a2 - 2000);
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
      v5 = a2 - 2000;
      v6 = sub_570CBC(a2 - 2000);
      if (v6 < sub_570CBC(a1))
      {
        v7 = a1;
        v8 = v5;
LABEL_6:
        sub_77560C(v7, v8);
      }

      return 1;
    }
  }

  v9 = a1 + 4000;
  sub_7736A4(a1, a1 + 2000, a1 + 4000);
  v10 = a1 + 6000;
  if (a1 + 6000 == a2)
  {
    return 1;
  }

  v11 = 0;
  for (i = -4000; ; i -= 2000)
  {
    v13 = sub_570CBC(v10);
    if (v13 < sub_570CBC(v9))
    {
      break;
    }

LABEL_15:
    v9 = v10;
    v10 += 2000;
    if (v10 == a2)
    {
      return 1;
    }
  }

  sub_5D7978(v31, v10);
  v14 = i;
  v15 = v10;
  while (1)
  {
    v16 = v15 - 2000;
    sub_5D82BC(v15, v15 - 2000);
    if (!v14)
    {
      break;
    }

    v17 = sub_570CBC(v31);
    v18 = sub_570CBC(v15 - 4000);
    v14 += 2000;
    v15 -= 2000;
    if (v17 >= v18)
    {
      sub_5D82BC(v16, v31);
      if ((v48 & 0x80000000) == 0)
      {
        goto LABEL_21;
      }

LABEL_24:
      operator delete(__p);
      if (v46 == 1)
      {
        goto LABEL_25;
      }

LABEL_38:
      v23 = v34;
      if (!v34)
      {
        goto LABEL_43;
      }

      goto LABEL_39;
    }
  }

  sub_5D82BC(a1, v31);
  if (v48 < 0)
  {
    goto LABEL_24;
  }

LABEL_21:
  if (v46 != 1)
  {
    goto LABEL_38;
  }

LABEL_25:
  if (v45 < 0)
  {
    operator delete(v44);
  }

  v19 = v42;
  if (v42)
  {
    v20 = v43;
    v21 = v42;
    if (v43 != v42)
    {
      do
      {
        v22 = *(v20 - 1);
        v20 -= 3;
        if (v22 < 0)
        {
          operator delete(*v20);
        }
      }

      while (v20 != v19);
      v21 = v42;
    }

    v43 = v19;
    operator delete(v21);
  }

  if (v41 < 0)
  {
    operator delete(v40);
    if ((v39 & 0x80000000) == 0)
    {
LABEL_37:
      if ((v37 & 0x80000000) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_47;
    }
  }

  else if ((v39 & 0x80000000) == 0)
  {
    goto LABEL_37;
  }

  operator delete(v38);
  if ((v37 & 0x80000000) == 0)
  {
    goto LABEL_38;
  }

LABEL_47:
  operator delete(v36);
  v23 = v34;
  if (!v34)
  {
    goto LABEL_43;
  }

LABEL_39:
  v24 = v35;
  v25 = v23;
  if (v35 != v23)
  {
    do
    {
      v24 = sub_3A9518(v24 - 1120);
    }

    while (v24 != v23);
    v25 = v34;
  }

  v35 = v23;
  operator delete(v25);
LABEL_43:
  sub_570440(&v33);
  if (v32[1120] == 1)
  {
    sub_3A9518(v32);
  }

  if (++v11 != 8)
  {
    goto LABEL_15;
  }

  return v10 + 2000 == a2;
}

void sub_7755F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_5C3A5C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_77560C(uint64_t a1, uint64_t a2)
{
  sub_5D7978(&v12, a1);
  sub_5D82BC(a1, a2);
  sub_5D82BC(a2, &v12);
  if (v29 < 0)
  {
    operator delete(__p);
    if (v27 != 1)
    {
      goto LABEL_18;
    }

LABEL_5:
    if (v26 < 0)
    {
      operator delete(v25);
    }

    v4 = v23;
    if (v23)
    {
      v5 = v24;
      v6 = v23;
      if (v24 != v23)
      {
        do
        {
          v7 = *(v5 - 1);
          v5 -= 3;
          if (v7 < 0)
          {
            operator delete(*v5);
          }
        }

        while (v5 != v4);
        v6 = v23;
      }

      v24 = v4;
      operator delete(v6);
    }

    if (v22 < 0)
    {
      operator delete(v21);
      if ((v20 & 0x80000000) == 0)
      {
LABEL_17:
        if ((v18 & 0x80000000) == 0)
        {
          goto LABEL_18;
        }

        goto LABEL_28;
      }
    }

    else if ((v20 & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    operator delete(v19);
    if ((v18 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

LABEL_28:
    operator delete(v17);
    v8 = v15;
    if (!v15)
    {
      goto LABEL_23;
    }

    goto LABEL_19;
  }

  if (v27 == 1)
  {
    goto LABEL_5;
  }

LABEL_18:
  v8 = v15;
  if (!v15)
  {
    goto LABEL_23;
  }

LABEL_19:
  v9 = v16;
  v10 = v8;
  if (v16 != v8)
  {
    do
    {
      v9 = sub_3A9518(v9 - 1120);
    }

    while (v9 != v8);
    v10 = v15;
  }

  v16 = v8;
  operator delete(v10);
LABEL_23:
  result = sub_570440(&v14);
  if (v13[1120] == 1)
  {
    return sub_3A9518(v13);
  }

  return result;
}

uint64_t sub_77578C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a2 - 2;
  if (a2 >= 2)
  {
    v4 = a3;
    v5 = result;
    v6 = v3 >> 1;
    if ((v3 >> 1) >= 0x1CAC083126E978D5 * ((a3 - result) >> 4))
    {
      v8 = (0x395810624DD2F1AALL * ((a3 - result) >> 4)) | 1;
      v9 = result + 2000 * v8;
      v10 = 0x395810624DD2F1AALL * ((a3 - result) >> 4) + 2;
      if (v10 < a2)
      {
        v11 = sub_570CBC(result + 2000 * v8);
        if (v11 < sub_570CBC(v9 + 2000))
        {
          v9 += 2000;
          v8 = v10;
        }
      }

      v12 = sub_570CBC(v9);
      result = sub_570CBC(v4);
      if (v12 >= result)
      {
        sub_5D7978(v24, v4);
        do
        {
          v13 = v9;
          sub_5D82BC(v4, v9);
          if (v6 < v8)
          {
            break;
          }

          v14 = (2 * v8) | 1;
          v9 = v5 + 2000 * v14;
          v8 = 2 * v8 + 2;
          if (v8 >= a2)
          {
            v8 = v14;
          }

          else
          {
            v15 = sub_570CBC(v5 + 2000 * v14);
            if (v15 >= sub_570CBC(v9 + 2000))
            {
              v8 = v14;
            }

            else
            {
              v9 += 2000;
            }
          }

          v16 = sub_570CBC(v9);
          v4 = v13;
        }

        while (v16 >= sub_570CBC(v24));
        sub_5D82BC(v13, v24);
        if (v41 < 0)
        {
          operator delete(__p);
        }

        if (v39 == 1)
        {
          if (v38 < 0)
          {
            operator delete(v37);
          }

          v17 = v35;
          if (v35)
          {
            v18 = v36;
            v19 = v35;
            if (v36 != v35)
            {
              do
              {
                v20 = *(v18 - 1);
                v18 -= 3;
                if (v20 < 0)
                {
                  operator delete(*v18);
                }
              }

              while (v18 != v17);
              v19 = v35;
            }

            v36 = v17;
            operator delete(v19);
          }

          if (v34 < 0)
          {
            operator delete(v33);
            if ((v32 & 0x80000000) == 0)
            {
LABEL_30:
              if ((v30 & 0x80000000) == 0)
              {
                goto LABEL_31;
              }

LABEL_41:
              operator delete(v29);
              v21 = v27;
              if (v27)
              {
                goto LABEL_32;
              }

              goto LABEL_36;
            }
          }

          else if ((v32 & 0x80000000) == 0)
          {
            goto LABEL_30;
          }

          operator delete(v31);
          if (v30 < 0)
          {
            goto LABEL_41;
          }
        }

LABEL_31:
        v21 = v27;
        if (v27)
        {
LABEL_32:
          v22 = v28;
          v23 = v21;
          if (v28 != v21)
          {
            do
            {
              v22 = sub_3A9518(v22 - 1120);
            }

            while (v22 != v21);
            v23 = v27;
          }

          v28 = v21;
          operator delete(v23);
        }

LABEL_36:
        result = sub_570440(&v26);
        if (v25[1120] == 1)
        {
          return sub_3A9518(v25);
        }
      }
    }
  }

  return result;
}

void sub_775A20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_5C3A5C(va);
  _Unwind_Resume(a1);
}

void sub_775A34()
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
  xmmword_27A6540 = 0u;
  *algn_27A6550 = 0u;
  dword_27A6560 = 1065353216;
  sub_3A9A34(&xmmword_27A6540, v0, v0);
  sub_3A9A34(&xmmword_27A6540, v3, v3);
  sub_3A9A34(&xmmword_27A6540, __p, __p);
  sub_3A9A34(&xmmword_27A6540, v9, v9);
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
    byte_27A657F = 3;
    LODWORD(qword_27A6568) = 5136193;
    byte_27A6597 = 3;
    LODWORD(qword_27A6580) = 5136194;
    byte_27A65AF = 3;
    LODWORD(qword_27A6598) = 5136195;
    byte_27A65C7 = 15;
    strcpy(&qword_27A65B0, "vehicle_mass_kg");
    byte_27A65DF = 21;
    strcpy(&xmmword_27A65C8, "vehicle_cargo_mass_kg");
    byte_27A65F7 = 19;
    strcpy(&qword_27A65E0, "vehicle_aux_power_w");
    byte_27A660F = 15;
    strcpy(&qword_27A65F8, "dcdc_efficiency");
    strcpy(&qword_27A6610, "drive_train_efficiency");
    HIBYTE(word_27A6626) = 22;
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

void sub_775E4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_objecta, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27A6528)
  {
    qword_27A6530 = qword_27A6528;
    operator delete(qword_27A6528);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_775F40(uint64_t a1, uint64_t a2)
{
  *&v2 = -1;
  *(&v2 + 1) = -1;
  *(a1 + 68) = -1;
  *(a1 + 76) = -1;
  *a1 = v2;
  *(a1 + 16) = v2;
  *(a1 + 32) = v2;
  *(a1 + 48) = v2;
  HIBYTE(v11[2]) = 16;
  strcpy(v11, "RouteCameraInput");
  __p = 0;
  v9 = 0;
  v10 = 0;
  v3 = sub_3AEC94(a2, v11, &__p);
  sub_5ADDC(&v12, v3);
  v4 = __p;
  if (__p)
  {
    v5 = v9;
    v6 = __p;
    if (v9 != __p)
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = __p;
    }

    v9 = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v11[2]) < 0)
  {
    operator delete(v11[0]);
  }

  operator new();
}

void sub_776E7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  sub_6BB60(&a23);
  _Unwind_Resume(a1);
}

void sub_776F8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  sub_1A104(&a14);
  if (a22 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x776F7CLL);
}

void sub_776FB8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = a2;
  a1[1] = sub_3AF6B4(a2);
  v5 = *a1;
  v9 = 13;
  strcpy(v8, "RouteGuidance");
  memset(v7, 0, sizeof(v7));
  v6 = sub_3AEC94(v5, v8, v7);
  sub_41D598(v6, v10);
  a1[2] = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 6) = 0;
  *(a1 + 14) = 0;
  sub_77CC20((a1 + 2), v10);
}

void sub_777EB4()
{
  v1 = *(v0 + 1648);
  *(v0 + 1648) = 0;
  if (v1)
  {
    JUMPOUT(0x777E68);
  }

  JUMPOUT(0x777E14);
}

uint64_t *sub_777EF4(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 + 1752);
    if (v2)
    {
      if (!atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v2->__on_zero_shared)(v2);
        std::__shared_weak_count::__release_weak(v2);
      }
    }

    sub_528AB4(v1 + 168);
    operator delete();
  }

  return result;
}

uint64_t sub_777F98(uint64_t a1)
{
  v2 = *(a1 + 4912);
  if (v2)
  {
    *(a1 + 4920) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 1856);
  *(a1 + 1856) = 0;
  if (v3)
  {
    operator delete();
  }

  v4 = *(a1 + 1848);
  *(a1 + 1848) = 0;
  if (v4)
  {
    sub_5135D0((v4 + 1288));
    operator delete();
  }

  v5 = *(a1 + 1840);
  *(a1 + 1840) = 0;
  if (v5)
  {
    if (*(v5 + 31) < 0)
    {
      operator delete(*(v5 + 8));
    }

    operator delete();
  }

  v6 = *(a1 + 1832);
  *(a1 + 1832) = 0;
  if (v6)
  {
    sub_78C74C(a1 + 1832, v6);
  }

  v7 = *(a1 + 1824);
  *(a1 + 1824) = 0;
  if (v7)
  {
    if (*(v7 + 31) < 0)
    {
      operator delete(*(v7 + 8));
    }

    operator delete();
  }

  v8 = *(a1 + 1816);
  *(a1 + 1816) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = *(a1 + 1808);
  *(a1 + 1808) = 0;
  if (v9)
  {
    sub_528AB4(v9 + 160);
    operator delete();
  }

  v10 = *(a1 + 1800);
  *(a1 + 1800) = 0;
  if (v10)
  {
    operator delete();
  }

  v11 = *(a1 + 1792);
  *(a1 + 1792) = 0;
  if (v11)
  {
    v12 = *(v11 + 1752);
    if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
    }

    sub_528AB4(v11 + 168);
    operator delete();
  }

  v13 = *(a1 + 1784);
  *(a1 + 1784) = 0;
  if (v13)
  {
    operator delete();
  }

  v14 = *(a1 + 1776);
  *(a1 + 1776) = 0;
  if (v14)
  {
    operator delete();
  }

  v15 = *(a1 + 1768);
  *(a1 + 1768) = 0;
  if (v15)
  {
    sub_F26220(v15);
    operator delete();
  }

  v16 = *(a1 + 1760);
  *(a1 + 1760) = 0;
  if (v16)
  {
    sub_78C414(v16);
    operator delete();
  }

  v17 = *(a1 + 1752);
  *(a1 + 1752) = 0;
  if (v17)
  {
    operator delete();
  }

  v18 = *(a1 + 1744);
  *(a1 + 1744) = 0;
  if (v18)
  {
    nullsub_1();
    operator delete();
  }

  v19 = *(a1 + 1736);
  *(a1 + 1736) = 0;
  if (v19)
  {
    operator delete();
  }

  v20 = *(a1 + 1728);
  *(a1 + 1728) = 0;
  if (v20)
  {
    sub_6D2D60(v20);
    operator delete();
  }

  v21 = *(a1 + 1720);
  *(a1 + 1720) = 0;
  if (v21)
  {
    sub_78C26C(a1 + 1720, v21);
  }

  v22 = *(a1 + 1712);
  *(a1 + 1712) = 0;
  if (v22)
  {
    sub_5135D0((v22 + 1312));
    operator delete();
  }

  v23 = *(a1 + 1704);
  *(a1 + 1704) = 0;
  if (v23)
  {
    sub_5135D0((v23 + 4848));
    sub_5135D0((v23 + 1312));
    operator delete();
  }

  v24 = *(a1 + 1696);
  *(a1 + 1696) = 0;
  if (v24)
  {
    operator delete();
  }

  v25 = *(a1 + 1688);
  *(a1 + 1688) = 0;
  if (v25)
  {
    sub_624E38(v25);
    operator delete();
  }

  v26 = *(a1 + 1680);
  *(a1 + 1680) = 0;
  if (v26)
  {
    v27 = *(v26 + 3896);
    if (v27 && !atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v27->__on_zero_shared)(v27);
      std::__shared_weak_count::__release_weak(v27);
    }

    v28 = *(v26 + 24);
    if (v28 && !atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v28->__on_zero_shared)(v28);
      std::__shared_weak_count::__release_weak(v28);
    }

    operator delete();
  }

  v29 = *(a1 + 1672);
  *(a1 + 1672) = 0;
  if (v29)
  {
    v30 = *(v29 + 24);
    if (v30 && !atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v30->__on_zero_shared)(v30);
      std::__shared_weak_count::__release_weak(v30);
    }

    operator delete();
  }

  v31 = *(a1 + 1664);
  *(a1 + 1664) = 0;
  if (v31)
  {
    sub_78BCF8(a1 + 1664, v31);
  }

  v32 = *(a1 + 1656);
  *(a1 + 1656) = 0;
  if (v32)
  {
    (*(*v32 + 8))(v32);
  }

  v33 = *(a1 + 1648);
  *(a1 + 1648) = 0;
  if (v33)
  {
    sub_78BB3C(a1 + 1648, v33);
  }

  v34 = *(a1 + 1640);
  *(a1 + 1640) = 0;
  if (v34)
  {
    operator delete();
  }

  v35 = *(a1 + 1632);
  *(a1 + 1632) = 0;
  if (v35)
  {
    sub_6926D4((v35 + 3568));
    sub_5135D0((v35 + 1304));
    operator delete();
  }

  if (*(a1 + 1631) < 0)
  {
    operator delete(*(a1 + 1608));
  }

  sub_528AB4(a1 + 32);
  return a1;
}

void sub_77853C()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = v0;
  v9 = v8;
  sub_7E9A4(v51);
  *v9 = 0;
  v9[1] = 0;
  v9[2] = 0;
  v49[1] = 0;
  v49[0] = 0;
  v50 = 0;
  sub_60BAC4(v49, 0x86BCA1AF286BCA1BLL * (v6[1] - *v6));
  sub_78C8FC(*v6, v6[1], v49);
  v10 = v49[1];
  v11 = v49[0];
  if (v49[0] != v49[1])
  {
    while (sub_4C5A80(v11) && !sub_4C49D0(v11))
    {
      v11 += 128;
      if (v11 == v10)
      {
        v12 = sub_3AF4C0(*v7);
        sub_778C38();
        v13 = *v9;
        if (*v9)
        {
          v14 = v9[1];
          v15 = *v9;
          if (v14 != v13)
          {
            do
            {
              v14 = sub_789448(v14 - 7808);
            }

            while (v14 != v13);
            v15 = *v9;
          }

          v9[1] = v13;
          operator delete(v15);
        }

        v16 = v36;
        *v9 = v36;
        v9[2] = v37;
        if (*(v7 + 25) == 1 && *(v7 + 1562) == 1)
        {
          v17 = *(v7 + 1631);
          v18 = v17;
          if (v17 < 0)
          {
            v17 = v7[202];
          }

          if (v17 == (&dword_0 + 3))
          {
            v19 = v18 >= 0 ? (v7 + 201) : v7[201];
            v20 = *v19;
            v21 = *(v19 + 2);
            if (v20 == 21062 && v21 == 65)
            {
              v24 = *(&v16 + 1);
              v23 = v16;
              if (v16 == *(&v16 + 1))
              {
LABEL_26:
                sub_6A0400(v9);
              }

              else
              {
                while ((sub_6905BC(v23) & 1) == 0)
                {
                  v23 += 976;
                  if (v23 == v24)
                  {
                    goto LABEL_26;
                  }
                }
              }
            }
          }
        }

        nullsub_1();
        nullsub_1();
        sub_7E974(v51);
        sub_518B44(v52, *v7, v12, (v7 + 4));
        sub_518BA4(v52, v9);
        v7[251] = (round(sub_7EA60(v51)) + v7[251]);
        sub_7E974(v51);
        sub_7FDC4C(v7[226], v7 + 1252, v9);
        v7[252] = (round(sub_7EA60(v51)) + v7[252]);
        sub_7E974(v51);
        sub_7E04F4(v7[225], v9);
        v7[253] = (round(sub_7EA60(v51)) + v7[253]);
        sub_77A358(v7, v9);
        sub_7E974(v51);
        sub_67A1F8(v46, *v7, 3u, *(v7 + 1598), v7 + 201);
        if ((atomic_load_explicit(&qword_27331B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27331B0))
        {
          sub_787F9C(&unk_2732FA8);
        }

        if (*(v2 + 8))
        {
          v25 = *v2;
        }

        else
        {
          v25 = &unk_2732FA8;
        }

        sub_61491C(v45);
        sub_5D9A10(&v36, *v7, v45, v25, v46);
        if (v49[1] != v49[0])
        {
          v26 = 0;
          v27 = 0;
          v28 = (v49[1] - v49[0]) >> 7;
          do
          {
            sub_5D9A90(&v36, v49[0] + v27, v4, (*v9 + v26));
            v27 += 128;
            v26 += 7808;
            --v28;
          }

          while (v28);
        }

        v7[257] = (round(sub_7EA60(v51)) + v7[257]);
        v29 = *(v7 + 1445);
        sub_7E974(v51);
        if (v29)
        {
          sub_58C3D4(v7[227], v25, v9);
          v30 = *v9;
          v31 = v9[1];
          if (*v9 == v31 || *(v7 + 1554) != 1)
          {
            v32 = 254;
          }

          else
          {
            v32 = 254;
            do
            {
              if (*(v7 + 1554) == 1 && *(v7 + 26) == 1)
              {
                sub_6555B4();
              }

              v30 += 7808;
            }

            while (v30 != v31);
          }
        }

        else
        {
          sub_58C3D4(v7[207], v25, v9);
          v32 = 255;
        }

        v7[v32] = (round(sub_7EA60(v51)) + v7[v32]);
        sub_7E974(v51);
        sub_7D0A00(v7[232], v9);
        v7[259] = (round(sub_7EA60(v51)) + v7[259]);
        if (v44 < 0)
        {
          operator delete(__p);
        }

        sub_528AB4(&v42);
        sub_559B98(&v41);
        v33 = v40;
        if (v40 && !atomic_fetch_add(&v40->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v33->__on_zero_shared)(v33);
          std::__shared_weak_count::__release_weak(v33);
        }

        if (v38)
        {
          v39 = v38;
          operator delete(v38);
        }

        sub_77B480(v45);
        if (v48 < 0)
        {
          operator delete(v47);
        }

        sub_7881CC(v52);
        break;
      }
    }

    v11 = v49[0];
  }

  if (v11)
  {
    v34 = v49[1];
    v35 = v11;
    if (v49[1] != v11)
    {
      do
      {
        v34 -= 128;
        sub_60B38C(v34);
      }

      while (v34 != v11);
      v35 = v49[0];
    }

    v49[1] = v11;
    operator delete(v35);
  }
}

void sub_778B80(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_27331B0);
  if (SLOBYTE(STACK[0x306F]) < 0)
  {
    operator delete(STACK[0x3058]);
  }

  sub_7881CC(&STACK[0x3168]);
  sub_60A84C(&STACK[0x3130]);
  sub_77A2F0(v1);
  _Unwind_Resume(a1);
}

void sub_778C38()
{
  v0 = __chkstk_darwin();
  v144 = v1;
  v3 = v2;
  v5 = v4;
  v6 = v0;
  v8 = v7;
  sub_7E9A4(v196);
  *v8 = 0;
  v8[1] = 0;
  v8[2] = 0;
  sub_77C290(v8, 0x86BCA1AF286BCA1BLL * ((v5[1] - *v5) >> 3));
  v10 = *v3;
  v9 = v3[1];
  v148 = v8;
  v145 = v3;
  if (*v3 != v9)
  {
    while (v10[44] != 2)
    {
      v10 += 110;
      if (v10 == v9)
      {
        goto LABEL_6;
      }
    }
  }

  if (v10 == v9)
  {
LABEL_6:
    if (atomic_load_explicit(&qword_27339A0, memory_order_acquire))
    {
      v10 = &unk_27337E8;
    }

    else
    {
      if (__cxa_guard_acquire(&qword_27339A0))
      {
        sub_78922C(&unk_27337E8);
        __cxa_guard_release(&qword_27339A0);
      }

      v10 = &unk_27337E8;
    }
  }

  sub_FA06C4(v191, *v6);
  v11 = *v5;
  v143 = v5[1];
  if (*v5 != v143)
  {
    v147 = 0;
    v142 = v10;
    while (1)
    {
      v13 = v11;
      sub_68FECC(v190, v11);
      ++*(v6 + 2080);
      v149 = v13;
      *(v6 + 2084) += sub_4C35B0(v13);
      v14 = sub_4C5154(v13);
      sub_68DB34(v190, v14);
      v15 = sub_4C4AC8(v13);
      sub_68DB2C(v190, v15);
      v16 = sub_4C514C(v13);
      sub_68F8A4(v190, v16);
      nullsub_1();
      v18 = v17;
      v19 = sub_4C35B0(v149);
      sub_77C3C8(v18, v19);
      v20 = *(v6 + 1680);
      nullsub_1();
      v23 = *v21;
      v22 = *(v21 + 8);
      if (*v21 != v22)
      {
        do
        {
          sub_78D890(v20, v23);
          v23 += 1582;
        }

        while (v23 != v22);
      }

      v24 = *(v6 + 1592);
      v25 = sub_68C590(v190);
      if (v25)
      {
        for (i = 0; i != v25; ++i)
        {
          v27 = sub_68C454(v190, i);
          sub_77CA60(v6, v149, i, v3, v24, v27);
        }
      }

      v28 = *v6;
      nullsub_1();
      v31 = *v29;
      v30 = v29[1];
      if (*v29 != v30)
      {
        do
        {
          sub_78E308(v31, v28);
          v31 += 12656;
        }

        while (v31 != v30);
      }

      nullsub_1();
      v33 = *v32;
      v34 = v32[1];
      while (v33 != v34)
      {
        v35 = sub_3CF22C(v33);
        v36 = *(v35 + 24) - *(v35 + 16);
        v37 = v36 >> 2;
        v38 = *(v33 + 1208);
        v39 = *(v33 + 1200);
        v40 = (v38 - v39) >> 2;
        v41 = (v36 >> 2) - v40;
        if (v36 >> 2 <= v40)
        {
          if (v36 >> 2 >= v40)
          {
            goto LABEL_36;
          }

          v45 = v39 + v36;
        }

        else
        {
          v42 = *(v33 + 1216);
          if (v41 > (v42 - v38) >> 2)
          {
            if (!(v37 >> 62))
            {
              v43 = v42 - v39;
              if (v43 >> 1 > v37)
              {
                v37 = v43 >> 1;
              }

              if (v43 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v44 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v44 = v37;
              }

              if (!(v44 >> 62))
              {
                operator new();
              }

              sub_1808();
            }

            sub_1794();
          }

          memset_pattern16(*(v33 + 1208), &unk_2266850, 4 * v41);
          v45 = v38 + 4 * v41;
        }

        *(v33 + 1208) = v45;
LABEL_36:
        v46 = sub_4D26AC(v33);
        v47 = sub_3CF22C(v33);
        v48 = *(v33 + 1208) - *(v33 + 1200);
        v8 = v148;
        if (v48)
        {
          v49 = 0;
          v50 = *(v47 + 256);
          v51 = v48 >> 2;
          v52 = v50 / 10 + v46;
          v53 = v50 < 0;
          v54 = v50 % 10;
          if (v53)
          {
            v55 = -5;
          }

          else
          {
            v55 = 5;
          }

          v56 = v52 + (((103 * (v55 + v54)) >> 15) & 1) + ((103 * (v55 + v54)) >> 10);
          do
          {
            v57 = sub_4D2720(v33, v49, 0);
            v58 = sub_617018((v33 + 1200), v49);
            if (v57 < 0)
            {
              v59 = -5;
            }

            else
            {
              v59 = 5;
            }

            v60 = 103 * (v59 + v57 % 10);
            v56 += v57 / 10 + ((v60 >> 15) & 1) + (v60 >> 10);
            *v58 = v56;
            ++v49;
          }

          while (v51 != v49);
        }

        v33 += 12656;
      }

      sub_7E974(v196);
      nullsub_1();
      *(v6 + 1920) = (round(sub_7EA60(v196)) + *(v6 + 1920));
      sub_7D4160(*(v6 + 1792));
      sub_7E974(v196);
      sub_86CEB0(*(v6 + 1840), v149, v190);
      *(v6 + 1904) = (round(sub_7EA60(v196)) + *(v6 + 1904));
      nullsub_1();
      nullsub_1();
      v62 = *v61;
      v63 = v61[1];
      while (v62 != v63)
      {
        v64 = *(v62 + 1104);
        v65 = *(v62 + 1112);
        if (v64 == v65)
        {
LABEL_47:
          *(v62 + 1096) = 2;
        }

        else
        {
          while (1)
          {
            v66 = *(v64 + 384);
            if (v66 != 4 && v66 != 2)
            {
              break;
            }

            v64 += 2616;
            if (v64 == v65)
            {
              goto LABEL_47;
            }
          }
        }

        v62 += 12656;
      }

      nullsub_1();
      v69 = *v68;
      v70 = v68[1];
      if (*v68 != v70)
      {
        v71 = v147;
        do
        {
          v72 = *(v69 + 1104);
          v73 = *(v69 + 1112);
          if (v72 != v73)
          {
            v74 = v73 - v72 - 2616;
            if (v74 >= 0xA38)
            {
              v77 = v74 / 0xA38 + 1;
              v75 = v71 + (v77 & 0xFFFFFFFE);
              v76 = &v72[2616 * (v77 & 0x3FFFFFFFFFFFFELL)];
              v78 = v71;
              v79 = *(v69 + 1104);
              v80 = v77 & 0x3FFFFFFFFFFFFELL;
              do
              {
                *v79 = v78;
                v79[654] = v78 + 1;
                v79 += 1308;
                v78 += 2;
                v80 -= 2;
              }

              while (v80);
              if (v77 == (v77 & 0x3FFFFFFFFFFFFELL))
              {
                goto LABEL_60;
              }
            }

            else
            {
              v75 = v71;
              v76 = *(v69 + 1104);
            }

            do
            {
              *v76 = v75++;
              v76 += 2616;
            }

            while (v76 != v73);
          }

LABEL_60:
          v71 -= 210151305 * ((v73 - v72) >> 3);
          v69 += 12656;
        }

        while (v69 != v70);
      }

      v146 = sub_690078(v190);
      if (*(v6 + 1520) == 1)
      {
        nullsub_1();
        v83 = *v81;
        v82 = *(v81 + 8);
        if (*v81 != v82)
        {
          do
          {
            sub_77C500(v6, v83);
            v83 += 1582;
          }

          while (v83 != v82);
        }
      }

      v84 = sub_68C590(v190);
      if (v84)
      {
        for (j = 0; j != v84; ++j)
        {
          v86 = sub_68C454(v190, j);
          v87 = *(v86 + 1104);
          v88 = *(v86 + 1112);
          if (v87 != v88)
          {
            v89 = v88 - v87 - 2616;
            if (v89 >= 0xA38)
            {
              v91 = v89 / 0xA38 + 1;
              v90 = v87 + 2616 * (v91 & 0x3FFFFFFFFFFFFELL);
              v92 = v91 & 0x3FFFFFFFFFFFFELL;
              do
              {
                *(v87 + 8) = j;
                *(v87 + 2624) = j;
                v87 += 5232;
                v92 -= 2;
              }

              while (v92);
              if (v91 == (v91 & 0x3FFFFFFFFFFFFELL))
              {
                continue;
              }
            }

            else
            {
              v90 = *(v86 + 1104);
            }

            do
            {
              *(v90 + 8) = j;
              v90 += 2616;
            }

            while (v90 != v88);
          }
        }
      }

      v93 = *v6;
      nullsub_1();
      v96 = *v94;
      v95 = *(v94 + 8);
      if (*v94 != v95)
      {
        do
        {
          sub_78E6E8(v96, v93, v6 + 1000);
          v96 += 1582;
        }

        while (v96 != v95);
      }

      sub_7E974(v196);
      sub_87E084(*(v6 + 1824), v190, v6 + 1000);
      *(v6 + 1912) = (round(sub_7EA60(v196)) + *(v6 + 1912));
      sub_7E974(v196);
      sub_813798(*(v6 + 1832));
      *(v6 + 1936) = (round(sub_7EA60(v196)) + *(v6 + 1936));
      v97 = sub_813AFC(*(v6 + 1832));
      *(v6 + 2104) |= v98;
      *(v6 + 2105) |= v99;
      *(v6 + 2096) += v97;
      *(v6 + 2100) += HIDWORD(v97);
      if ((v144 & 1) == 0)
      {
        sub_7E974(v196);
        nullsub_1();
        *(v6 + 1944) = (round(sub_7EA60(v196)) + *(v6 + 1944));
      }

      sub_92A608();
      sub_6A50F4(*(v6 + 1704));
      sub_59C118(*(v6 + 1712));
      nullsub_1();
      v103 = *v101;
      v102 = *(v101 + 8);
      if (*v101 != v102)
      {
        do
        {
          sub_77BD1C(v6, v103, v100);
          v103 += 1582;
        }

        while (v103 != v102);
      }

      sub_50E5B8(*(v6 + 1632));
      sub_7E974(v196);
      v104 = *(v6 + 1760);
      __p[0].n128_u8[0] = 0;
      v153 = 0;
      v154 = 0;
      v155 = 0;
      v164 = 0;
      v162 = 0;
      v163 = 0;
      v165 = 0u;
      v166 = 0u;
      v167 = 0u;
      v156 = 0u;
      v157 = 0u;
      v158 = 0u;
      v159 = 0u;
      v160 = 0u;
      memset(v161, 0, sizeof(v161));
      v168 = 0x3FF0000000000000;
      v169 = 0;
      v170 = 0;
      v171 = 0;
      v172 = 5;
      v173 = 0u;
      v174 = 0u;
      v175 = 0u;
      v176 = 0x7FFFFFFF;
      v181 = 0;
      v182 = 0;
      v177 = 0u;
      v178 = 0u;
      v179 = 0u;
      memset(v180, 0, sizeof(v180));
      v183 = -1;
      v184 = 0x7FFFFFFF;
      v185 = 0;
      v186 = 0;
      v187 = -1;
      v188 = -1;
      v189 = 0;
      sub_7BECFC(v104, v190, __p);
      sub_5287C0(__p);
      nullsub_1();
      v107 = *v105;
      v106 = v105[1];
      while (v107 != v106)
      {
        v108 = *(v107 + 7416);
        v109 = *(v107 + 7424);
        if (v108 != v109)
        {
          while (!sub_38F64C(v108, 3) || sub_38F538(v108, 3))
          {
            v108 += 1120;
            if (v108 == v109)
            {
              v108 = v109;
              goto LABEL_107;
            }
          }

          if (v108 != v109)
          {
            for (k = v108 + 1120; k != v109; k += 1120)
            {
              if (!sub_38F64C(k, 3) || sub_38F538(k, 3))
              {
                sub_52BE74(v108, k);
                v108 += 1120;
              }
            }
          }
        }

LABEL_107:
        v111 = *(v107 + 7424);
        if (v108 != v111)
        {
          while (v111 != v108)
          {
            if (*(v111 - 16) != 1)
            {
              *(v111 - 416) = off_26696C8;
              if ((*(v111 - 385) & 0x80000000) == 0)
              {
                goto LABEL_113;
              }

              goto LABEL_139;
            }

            v112 = *(v111 - 40);
            if (v112)
            {
              v113 = *(v111 - 32);
              v114 = *(v111 - 40);
              if (v113 == v112)
              {
LABEL_132:
                *(v111 - 32) = v112;
                operator delete(v114);
                goto LABEL_133;
              }

              while (2)
              {
                if (*(v113 - 1) < 0)
                {
                  operator delete(*(v113 - 3));
                  if (*(v113 - 25) < 0)
                  {
                    goto LABEL_129;
                  }

LABEL_126:
                  if (*(v113 - 49) < 0)
                  {
LABEL_130:
                    operator delete(*(v113 - 9));
                  }
                }

                else
                {
                  if ((*(v113 - 25) & 0x80000000) == 0)
                  {
                    goto LABEL_126;
                  }

LABEL_129:
                  operator delete(*(v113 - 6));
                  if (*(v113 - 49) < 0)
                  {
                    goto LABEL_130;
                  }
                }

                v113 -= 31;
                sub_33D5A0(v113);
                if (v113 == v112)
                {
                  v114 = *(v111 - 40);
                  goto LABEL_132;
                }

                continue;
              }
            }

LABEL_133:
            if (*(v111 - 49) < 0)
            {
              operator delete(*(v111 - 72));
              if ((*(v111 - 81) & 0x80000000) == 0)
              {
LABEL_135:
                if ((*(v111 - 113) & 0x80000000) == 0)
                {
                  goto LABEL_136;
                }

                goto LABEL_148;
              }
            }

            else if ((*(v111 - 81) & 0x80000000) == 0)
            {
              goto LABEL_135;
            }

            operator delete(*(v111 - 104));
            if ((*(v111 - 113) & 0x80000000) == 0)
            {
LABEL_136:
              if ((*(v111 - 137) & 0x80000000) == 0)
              {
                goto LABEL_137;
              }

LABEL_149:
              operator delete(*(v111 - 160));
              if ((*(v111 - 161) & 0x80000000) == 0)
              {
                goto LABEL_138;
              }

              goto LABEL_150;
            }

LABEL_148:
            operator delete(*(v111 - 136));
            if (*(v111 - 137) < 0)
            {
              goto LABEL_149;
            }

LABEL_137:
            if ((*(v111 - 161) & 0x80000000) == 0)
            {
              goto LABEL_138;
            }

LABEL_150:
            operator delete(*(v111 - 184));
LABEL_138:
            sub_33D080(v111 - 376);
            *(v111 - 416) = off_26696C8;
            if ((*(v111 - 385) & 0x80000000) == 0)
            {
LABEL_113:
              if ((*(v111 - 465) & 0x80000000) == 0)
              {
                goto LABEL_114;
              }

              goto LABEL_140;
            }

LABEL_139:
            operator delete(*(v111 - 408));
            if ((*(v111 - 465) & 0x80000000) == 0)
            {
LABEL_114:
              if ((*(v111 - 497) & 0x80000000) == 0)
              {
                goto LABEL_115;
              }

              goto LABEL_141;
            }

LABEL_140:
            operator delete(*(v111 - 488));
            if ((*(v111 - 497) & 0x80000000) == 0)
            {
LABEL_115:
              if ((*(v111 - 521) & 0x80000000) == 0)
              {
                goto LABEL_116;
              }

              goto LABEL_142;
            }

LABEL_141:
            operator delete(*(v111 - 520));
            if ((*(v111 - 521) & 0x80000000) == 0)
            {
LABEL_116:
              if ((*(v111 - 561) & 0x80000000) == 0)
              {
                goto LABEL_117;
              }

              goto LABEL_143;
            }

LABEL_142:
            operator delete(*(v111 - 544));
            if ((*(v111 - 561) & 0x80000000) == 0)
            {
LABEL_117:
              if (*(v111 - 593) < 0)
              {
                goto LABEL_144;
              }

              goto LABEL_118;
            }

LABEL_143:
            operator delete(*(v111 - 584));
            if (*(v111 - 593) < 0)
            {
LABEL_144:
              operator delete(*(v111 - 616));
              if ((*(v111 - 617) & 0x80000000) == 0)
              {
                goto LABEL_109;
              }

              goto LABEL_145;
            }

LABEL_118:
            if ((*(v111 - 617) & 0x80000000) == 0)
            {
              goto LABEL_109;
            }

LABEL_145:
            operator delete(*(v111 - 640));
LABEL_109:
            v111 -= 1120;
            sub_2C0F28(v111);
          }

          *(v107 + 7424) = v108;
        }

        v107 += 12656;
      }

      *(v6 + 1928) = (round(sub_7EA60(v196)) + *(v6 + 1928));
      sub_7E974(v196);
      nullsub_1();
      *(v6 + 1952) = (round(sub_7EA60(v196)) + *(v6 + 1952));
      sub_7E974(v196);
      sub_57480C(*(v6 + 1648));
      *(v6 + 1968) = (round(sub_7EA60(v196)) + *(v6 + 1968));
      sub_7E974(v196);
      sub_61A820(*(v6 + 1672));
      *(v6 + 1976) = (round(sub_7EA60(v196)) + *(v6 + 1976));
      sub_7E974(v196);
      sub_7DAB90(*(v6 + 1784));
      *(v6 + 1992) = (round(sub_7EA60(v196)) + *(v6 + 1992));
      sub_7E974(v196);
      nullsub_1();
      *(v6 + 2064) = (round(sub_7EA60(v196)) + *(v6 + 2064));
      sub_7E974(v196);
      nullsub_1();
      *(v6 + 1960) = (round(sub_7EA60(v196)) + *(v6 + 1960));
      sub_7E974(v196);
      sub_628E40(*(v6 + 1688));
      *(v6 + 1984) = (round(sub_7EA60(v196)) + *(v6 + 1984));
      sub_7E974(v196);
      sub_754C20(*(v6 + 1752), v190);
      *(v6 + 2000) = (round(sub_7EA60(v196)) + *(v6 + 2000));
      sub_7E974(v196);
      sub_514AD4(*(v6 + 1640), v142, v190);
      *(v6 + 2048) = (round(sub_7EA60(v196)) + *(v6 + 2048));
      sub_7E974(v196);
      sub_7BF024(*(v6 + 1760), v190, __p);
      sub_68F334(v190, __p);
      v115 = __p[0].n128_u64[0];
      if (__p[0].n128_u64[0])
      {
        break;
      }

LABEL_197:
      *(v6 + 1928) = (round(sub_7EA60(v196)) + *(v6 + 1928));
      nullsub_1();
      if (*v121 != v121[1])
      {
        nullsub_1();
        v123 = *v122;
        v124 = sub_4D26AC(*v122);
        v125 = sub_4D26B4(v123, 0);
        v126 = sub_4D26B4(v123, 1);
        v127 = sub_4D1DB8(v123);
        v150 = 0x8000000080000000;
        v151 = xmmword_2297C00;
        LODWORD(v151) = 0x7FFFFFFF;
        sub_FA06C8(v191, v124, v125, v126, v127, &v150, __p);
        sub_68DB3C(v190, __p);
      }

      sub_68C448(v190, __p);
      v129 = __p[0].n128_u64[1];
      for (m = __p[0].n128_u64[0]; m != v129; m += 12656)
      {
        v130 = *(m + 1112) - *(m + 1104);
        if (v130)
        {
          v131 = 0;
          v132 = 0x3795876FF3795877 * (v130 >> 3);
          v133 = 1;
          do
          {
            v135 = v133-- != 0;
            sub_721C84(v6 + 2112, *(m + 1104) + v131, *(m + 1096), v135);
            v131 += 2616;
            --v132;
          }

          while (v132);
        }
      }

      v136 = sub_73ED4(v149);
      v3 = v145;
      v137 = *(v136 + 23);
      if ((v137 & 0x80u) != 0)
      {
        v137 = *(v136 + 8);
      }

      if (!v137)
      {
        goto LABEL_224;
      }

      v138 = sub_73ED4(v149);
      if (*(v138 + 23) >= 0)
      {
        v139 = *(v138 + 23);
      }

      else
      {
        v139 = *(v138 + 8);
      }

      if (v139 + 8 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_3244();
      }

      if (v139 + 8 >= 0x17)
      {
        operator new();
      }

      v151 = 0uLL;
      HIBYTE(v151) = v139 + 8;
      v150 = 0x203A475542454420;
      if (v139)
      {
        if (*(v138 + 23) >= 0)
        {
          v140 = v138;
        }

        else
        {
          v140 = *v138;
        }

        memmove(&v151, v140, v139);
      }

      __p[-1].n128_u8[v139] = 0;
      sub_64BC20(__p, &v150);
      sub_68DD20(v190, __p);
      v3 = v145;
      sub_53A868(__p);
      if (SHIBYTE(v151) < 0)
      {
        operator delete(v150);
        v141 = v8[1];
        if (v141 >= v8[2])
        {
          goto LABEL_225;
        }
      }

      else
      {
LABEL_224:
        v141 = v8[1];
        if (v141 >= v8[2])
        {
LABEL_225:
          v12 = sub_7892DC(v8, v190);
          goto LABEL_11;
        }
      }

      v12 = sub_78871C(v141, v190) + 7808;
LABEL_11:
      v147 += v146;
      v8[1] = v12;
      sub_789448(v190);
      v11 = v149 + 152;
      if (v149 + 152 == v143)
      {
        goto LABEL_229;
      }
    }

    v116 = __p[0].n128_i64[1];
    v117 = __p[0].n128_u64[0];
    if (__p[0].n128_u64[1] == __p[0].n128_u64[0])
    {
LABEL_196:
      __p[0].n128_u64[1] = v115;
      operator delete(v117);
      goto LABEL_197;
    }

    while (1)
    {
      if (*(v116 - 16) != 1)
      {
        *(v116 - 416) = off_26696C8;
        if ((*(v116 - 385) & 0x80000000) == 0)
        {
          goto LABEL_157;
        }

        goto LABEL_183;
      }

      v118 = *(v116 - 40);
      if (v118)
      {
        break;
      }

LABEL_177:
      if (*(v116 - 49) < 0)
      {
        operator delete(*(v116 - 72));
        if ((*(v116 - 81) & 0x80000000) == 0)
        {
LABEL_179:
          if ((*(v116 - 113) & 0x80000000) == 0)
          {
            goto LABEL_180;
          }

          goto LABEL_192;
        }
      }

      else if ((*(v116 - 81) & 0x80000000) == 0)
      {
        goto LABEL_179;
      }

      operator delete(*(v116 - 104));
      if ((*(v116 - 113) & 0x80000000) == 0)
      {
LABEL_180:
        if ((*(v116 - 137) & 0x80000000) == 0)
        {
          goto LABEL_181;
        }

LABEL_193:
        operator delete(*(v116 - 160));
        if ((*(v116 - 161) & 0x80000000) == 0)
        {
          goto LABEL_182;
        }

        goto LABEL_194;
      }

LABEL_192:
      operator delete(*(v116 - 136));
      if (*(v116 - 137) < 0)
      {
        goto LABEL_193;
      }

LABEL_181:
      if ((*(v116 - 161) & 0x80000000) == 0)
      {
        goto LABEL_182;
      }

LABEL_194:
      operator delete(*(v116 - 184));
LABEL_182:
      sub_33D080(v116 - 376);
      *(v116 - 416) = off_26696C8;
      if ((*(v116 - 385) & 0x80000000) == 0)
      {
LABEL_157:
        if ((*(v116 - 465) & 0x80000000) == 0)
        {
          goto LABEL_158;
        }

        goto LABEL_184;
      }

LABEL_183:
      operator delete(*(v116 - 408));
      if ((*(v116 - 465) & 0x80000000) == 0)
      {
LABEL_158:
        if ((*(v116 - 497) & 0x80000000) == 0)
        {
          goto LABEL_159;
        }

        goto LABEL_185;
      }

LABEL_184:
      operator delete(*(v116 - 488));
      if ((*(v116 - 497) & 0x80000000) == 0)
      {
LABEL_159:
        if ((*(v116 - 521) & 0x80000000) == 0)
        {
          goto LABEL_160;
        }

        goto LABEL_186;
      }

LABEL_185:
      operator delete(*(v116 - 520));
      if ((*(v116 - 521) & 0x80000000) == 0)
      {
LABEL_160:
        if ((*(v116 - 561) & 0x80000000) == 0)
        {
          goto LABEL_161;
        }

        goto LABEL_187;
      }

LABEL_186:
      operator delete(*(v116 - 544));
      if ((*(v116 - 561) & 0x80000000) == 0)
      {
LABEL_161:
        if ((*(v116 - 593) & 0x80000000) == 0)
        {
          goto LABEL_162;
        }

        goto LABEL_188;
      }

LABEL_187:
      operator delete(*(v116 - 584));
      if ((*(v116 - 593) & 0x80000000) == 0)
      {
LABEL_162:
        if (*(v116 - 617) < 0)
        {
          goto LABEL_189;
        }

        goto LABEL_154;
      }

LABEL_188:
      operator delete(*(v116 - 616));
      if (*(v116 - 617) < 0)
      {
LABEL_189:
        operator delete(*(v116 - 640));
      }

LABEL_154:
      v116 -= 1120;
      sub_2C0F28(v116);
      if (v116 == v115)
      {
        v117 = __p[0].n128_u64[0];
        goto LABEL_196;
      }
    }

    v119 = *(v116 - 32);
    v120 = *(v116 - 40);
    if (v119 == v118)
    {
LABEL_176:
      *(v116 - 32) = v118;
      operator delete(v120);
      goto LABEL_177;
    }

    while (1)
    {
      if (*(v119 - 1) < 0)
      {
        operator delete(*(v119 - 3));
        if ((*(v119 - 25) & 0x80000000) == 0)
        {
LABEL_170:
          if (*(v119 - 49) < 0)
          {
            goto LABEL_174;
          }

          goto LABEL_167;
        }
      }

      else if ((*(v119 - 25) & 0x80000000) == 0)
      {
        goto LABEL_170;
      }

      operator delete(*(v119 - 6));
      if (*(v119 - 49) < 0)
      {
LABEL_174:
        operator delete(*(v119 - 9));
      }

LABEL_167:
      v119 -= 31;
      sub_33D5A0(v119);
      if (v119 == v118)
      {
        v120 = *(v116 - 40);
        goto LABEL_176;
      }
    }
  }

  v147 = 0;
LABEL_229:
  *(v6 + 2092) = 0;
  *(v6 + 2088) = v147;
  sub_7E974(v196);
  sub_61AC44(*(v6 + 1672), v8);
  *(v6 + 1976) = (round(sub_7EA60(v196)) + *(v6 + 1976));
  if (v194)
  {
    v195 = v194;
    operator delete(v194);
  }

  if (v192)
  {
    v193 = v192;
    operator delete(v192);
  }
}

void sub_77A1A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void **a25)
{
  __cxa_guard_abort(&qword_27339A0);
  sub_77A2F0(a25);
  _Unwind_Resume(a1);
}

void sub_77A1C4(_Unwind_Exception *a1)
{
  sub_60B0D4((v2 - 232));
  sub_77A2F0(v1);
  _Unwind_Resume(a1);
}

void sub_77A2CC(_Unwind_Exception *a1)
{
  sub_789448(&STACK[0x358]);
  sub_60B0D4((v2 - 232));
  sub_77A2F0(v1);
  _Unwind_Resume(a1);
}

void **sub_77A2F0(void **a1)
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
        v3 = sub_789448(v3 - 7808);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_77A358(uint64_t a1, char ***a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (*a2 == v4)
  {
    v7 = 0;
  }

  else
  {
    v5 = v3 + 976;
    do
    {
      v6 = sub_68E170(v3);
      v7 = v6 != 0;
      if (v6)
      {
        break;
      }

      v3 += 976;
      v14 = v5 == v4;
      v5 += 976;
    }

    while (!v14);
    v3 = *a2;
    v4 = a2[1];
    if (*a2 != v4)
    {
      v8 = v3 + 976;
      do
      {
        v9 = sub_68DFF0(v3);
        if (v9)
        {
          break;
        }

        v3 += 976;
        v14 = v8 == v4;
        v8 += 976;
      }

      while (!v14);
      v3 = *a2;
      v4 = a2[1];
      v106 = v9 != 0;
      v107 = v7;
      if (*a2 != v4)
      {
        goto LABEL_12;
      }

      goto LABEL_22;
    }
  }

  v106 = 0;
  v107 = v7;
  if (v3 != v4)
  {
LABEL_12:
    v10 = v3 + 976;
    do
    {
      v11 = sub_68F328(v3);
      v12 = v11[1];
      v14 = v12 == *v11;
      v13 = v12 != *v11;
      v3 += 976;
      v14 = !v14 || v10 == v4;
      v10 += 976;
    }

    while (!v14);
    v109 = v13;
    v112 = *a2;
    v110 = a2[1];
    if (*a2 == v110)
    {
      return;
    }

    goto LABEL_23;
  }

LABEL_22:
  v109 = 0;
  v112 = v3;
  v110 = v4;
  if (v3 == v4)
  {
    return;
  }

LABEL_23:
  if (v107)
  {
    v15 = 2;
  }

  else
  {
    v15 = 1;
  }

  if (v106)
  {
    v16 = 2;
  }

  else
  {
    v16 = 1;
  }

  v104 = v16;
  v105 = v15;
  if (v109)
  {
    v17 = 2;
  }

  else
  {
    v17 = 1;
  }

  v108 = v17;
  do
  {
    if (*(a1 + 24) != 1)
    {
      goto LABEL_189;
    }

    sub_690E18(v112, __p);
    sub_690D80(v112, &v120);
    v124 = 0uLL;
    v125 = 0;
    v19 = __p[0];
    v114 = __p[1];
    if (__p[0] == __p[1])
    {
      v117[0] = 0;
      v117[1] = 0;
      v36 = v105;
      v118 = 0;
    }

    else
    {
      do
      {
        v20 = *(&v124 + 1);
        if (*(&v124 + 1) >= v125)
        {
          v22 = v124;
          v23 = 0x70913F8BCD29C245 * ((*(&v124 + 1) - v124) >> 3) + 1;
          if (v23 > 0x3A196B1EDD80E8)
          {
            sub_1794();
          }

          if (0xE1227F179A53848ALL * ((v125 - v124) >> 3) > v23)
          {
            v23 = 0xE1227F179A53848ALL * ((v125 - v124) >> 3);
          }

          if ((0x70913F8BCD29C245 * ((v125 - v124) >> 3)) >= 0x1D0CB58F6EC074)
          {
            v24 = 0x3A196B1EDD80E8;
          }

          else
          {
            v24 = v23;
          }

          if (v24)
          {
            if (v24 <= 0x3A196B1EDD80E8)
            {
              operator new();
            }

            sub_1808();
          }

          v25 = 8 * ((*(&v124 + 1) - v124) >> 3);
          *v25 = 0u;
          *(v25 + 16) = 0u;
          *(v25 + 32) = 0u;
          *(v25 + 48) = 0u;
          *(v25 + 64) = 0u;
          *(v25 + 80) = 0u;
          *(v25 + 96) = 0u;
          *(v25 + 112) = 0u;
          *(v25 + 160) = 0;
          *(v25 + 128) = 0u;
          *(v25 + 144) = 0u;
          *(v25 + 4) = -1;
          *(v25 + 16) = 0;
          *(v25 + 24) = 0;
          *(v25 + 8) = 0;
          *(v25 + 32) = 0x7FFFFFFFFFFFFFFFLL;
          *(v25 + 40) = -1;
          *(v25 + 48) = 0x7FFFFFFF;
          *(v25 + 56) = 0u;
          *(v25 + 72) = 0u;
          *(v25 + 88) = 0u;
          *(v25 + 104) = 0u;
          *(v25 + 113) = 0u;
          *(v25 + 140) = 0;
          *(v25 + 132) = 0;
          *(v25 + 154) = 0;
          *(v25 + 148) = 0;
          v26 = v25 - (v20 - v22);
          *(v25 + 1120) = 0;
          if (v22 != v20)
          {
            v27 = v25 - (v20 - v22);
            v28 = v22;
            do
            {
              *v27 = 0;
              *(v27 + 1120) = -1;
              v29 = v28[280];
              if (v29 != -1)
              {
                v126[0] = v27;
                (off_266C810[v29])(v126, v28);
                *(v27 + 1120) = v29;
              }

              v28 += 282;
              v27 += 1128;
            }

            while (v28 != v20);
            v26 = v25 - (v20 - v22);
            do
            {
              v30 = v22[280];
              if (v30 != -1)
              {
                (off_266C800[v30])(v126, v22);
              }

              v22[280] = -1;
              v22 += 282;
            }

            while (v22 != v20);
            v22 = v124;
          }

          v21 = v25 + 1128;
          *&v124 = v26;
          v125 = 0;
          if (v22)
          {
            operator delete(v22);
          }
        }

        else
        {
          **(&v124 + 1) = 0u;
          *(v20 + 16) = 0u;
          *(v20 + 32) = 0u;
          *(v20 + 48) = 0u;
          *(v20 + 64) = 0u;
          *(v20 + 80) = 0u;
          *(v20 + 96) = 0u;
          *(v20 + 112) = 0u;
          *(v20 + 160) = 0;
          *(v20 + 128) = 0u;
          *(v20 + 144) = 0u;
          *(v20 + 4) = -1;
          *(v20 + 16) = 0;
          *(v20 + 24) = 0;
          *(v20 + 8) = 0;
          *(v20 + 32) = 0x7FFFFFFFFFFFFFFFLL;
          *(v20 + 40) = -1;
          *(v20 + 48) = 0x7FFFFFFF;
          *(v20 + 56) = 0u;
          *(v20 + 72) = 0u;
          *(v20 + 88) = 0u;
          *(v20 + 104) = 0u;
          *(v20 + 113) = 0u;
          *(v20 + 140) = 0;
          *(v20 + 132) = 0;
          *(v20 + 154) = 0;
          *(v20 + 148) = 0;
          *(v20 + 1120) = 0;
          v21 = v20 + 1128;
        }

        *(&v124 + 1) = v21;
        v31 = *(v21 - 8);
        if (v31 != -1)
        {
          (off_266C800[v31])(v126, v21 - 1128);
        }

        *(v21 - 8) = -1;
        sub_52A464(v21 - 1128, v19);
        *(v21 - 8) = 0;
        v19 += 168;
      }

      while (v19 != v114);
      v32 = v124;
      *v117 = v124;
      v118 = v125;
      LOBYTE(v124) = 0;
      if (v107)
      {
        v33 = *(&v32 + 1);
        v34 = v32;
        if (*(&v32 + 1) == v32)
        {
          v36 = 2;
        }

        else
        {
          v35 = v32;
          do
          {
            if (sub_78ED2C(&v124, v35, 0) && (sub_78ED2C(&v124, v35, 1) & 1) != 0)
            {
              v36 = 6;
              goto LABEL_82;
            }

            v35 += 1128;
          }

          while (v35 != v33);
          v37 = v34;
          do
          {
            if (sub_78ED2C(&v124, v37, 1))
            {
              v36 = 4;
              goto LABEL_82;
            }

            v37 += 1128;
          }

          while (v37 != v33);
          while (!sub_78ED2C(&v124, v34, 0))
          {
            v34 += 1128;
            if (v34 == v33)
            {
              v36 = 7;
              goto LABEL_82;
            }
          }

          v36 = 5;
        }
      }

      else
      {
        v36 = 1;
      }
    }

LABEL_82:
    v119 = v36;
    sub_68DFA4(v112, &v119);
    v38 = v117[0];
    if (v117[0])
    {
      v39 = v117[1];
      if (v117[1] != v117[0])
      {
        do
        {
          v40 = v39 - 1128;
          v41 = *(v39 - 2);
          if (v41 != -1)
          {
            (off_266C800[v41])(&v124, v39 - 1128);
          }

          *(v39 - 2) = -1;
          v39 -= 1128;
        }

        while (v40 != v38);
        v38 = v117[0];
      }

      operator delete(v38);
    }

    v124 = 0uLL;
    v125 = 0;
    v42 = v120;
    v115 = v121;
    if (v120 == v121)
    {
      v117[0] = 0;
      v117[1] = 0;
      v59 = v104;
      v118 = 0;
    }

    else
    {
      do
      {
        v43 = *(&v124 + 1);
        if (*(&v124 + 1) >= v125)
        {
          v45 = v124;
          v46 = 0x70913F8BCD29C245 * ((*(&v124 + 1) - v124) >> 3) + 1;
          if (v46 > 0x3A196B1EDD80E8)
          {
            sub_1794();
          }

          if (0xE1227F179A53848ALL * ((v125 - v124) >> 3) > v46)
          {
            v46 = 0xE1227F179A53848ALL * ((v125 - v124) >> 3);
          }

          if ((0x70913F8BCD29C245 * ((v125 - v124) >> 3)) >= 0x1D0CB58F6EC074)
          {
            v47 = 0x3A196B1EDD80E8;
          }

          else
          {
            v47 = v46;
          }

          if (v47)
          {
            if (v47 <= 0x3A196B1EDD80E8)
            {
              operator new();
            }

            sub_1808();
          }

          v48 = 8 * ((*(&v124 + 1) - v124) >> 3);
          *v48 = 0u;
          *(v48 + 16) = 0u;
          *(v48 + 32) = 0u;
          *(v48 + 48) = 0u;
          *(v48 + 64) = 0u;
          *(v48 + 80) = 0u;
          *(v48 + 96) = 0u;
          *(v48 + 112) = 0u;
          *(v48 + 160) = 0;
          *(v48 + 128) = 0u;
          *(v48 + 144) = 0u;
          *(v48 + 4) = -1;
          *(v48 + 16) = 0;
          *(v48 + 24) = 0;
          *(v48 + 8) = 0;
          *(v48 + 32) = 0x7FFFFFFFFFFFFFFFLL;
          *(v48 + 40) = -1;
          *(v48 + 48) = 0x7FFFFFFF;
          *(v48 + 56) = 0u;
          *(v48 + 72) = 0u;
          *(v48 + 88) = 0u;
          *(v48 + 104) = 0u;
          *(v48 + 113) = 0u;
          *(v48 + 140) = 0;
          *(v48 + 132) = 0;
          *(v48 + 154) = 0;
          *(v48 + 148) = 0;
          v49 = v48 - (v43 - v45);
          *(v48 + 1120) = 0;
          if (v45 != v43)
          {
            v50 = v48 - (v43 - v45);
            v51 = v45;
            do
            {
              *v50 = 0;
              *(v50 + 1120) = -1;
              v52 = v51[280];
              if (v52 != -1)
              {
                v126[0] = v50;
                (off_266C810[v52])(v126, v51);
                *(v50 + 1120) = v52;
              }

              v51 += 282;
              v50 += 1128;
            }

            while (v51 != v43);
            v49 = v48 - (v43 - v45);
            do
            {
              v53 = v45[280];
              if (v53 != -1)
              {
                (off_266C800[v53])(v126, v45);
              }

              v45[280] = -1;
              v45 += 282;
            }

            while (v45 != v43);
            v45 = v124;
          }

          v44 = v48 + 1128;
          *&v124 = v49;
          v125 = 0;
          if (v45)
          {
            operator delete(v45);
          }
        }

        else
        {
          **(&v124 + 1) = 0u;
          *(v43 + 16) = 0u;
          *(v43 + 32) = 0u;
          *(v43 + 48) = 0u;
          *(v43 + 64) = 0u;
          *(v43 + 80) = 0u;
          *(v43 + 96) = 0u;
          *(v43 + 112) = 0u;
          *(v43 + 160) = 0;
          *(v43 + 128) = 0u;
          *(v43 + 144) = 0u;
          *(v43 + 4) = -1;
          *(v43 + 16) = 0;
          *(v43 + 24) = 0;
          *(v43 + 8) = 0;
          *(v43 + 32) = 0x7FFFFFFFFFFFFFFFLL;
          *(v43 + 40) = -1;
          *(v43 + 48) = 0x7FFFFFFF;
          *(v43 + 56) = 0u;
          *(v43 + 72) = 0u;
          *(v43 + 88) = 0u;
          *(v43 + 104) = 0u;
          *(v43 + 113) = 0u;
          *(v43 + 140) = 0;
          *(v43 + 132) = 0;
          *(v43 + 154) = 0;
          *(v43 + 148) = 0;
          *(v43 + 1120) = 0;
          v44 = v43 + 1128;
        }

        *(&v124 + 1) = v44;
        v54 = *(v44 - 8);
        if (v54 != -1)
        {
          (off_266C800[v54])(v126, v44 - 1128);
        }

        *(v44 - 8) = -1;
        sub_52A464(v44 - 1128, v42);
        *(v44 - 8) = 0;
        v42 += 168;
      }

      while (v42 != v115);
      v55 = v124;
      *v117 = v124;
      v118 = v125;
      LOBYTE(v124) = 0;
      if (v106)
      {
        v56 = *(&v55 + 1);
        v57 = v55;
        if (*(&v55 + 1) == v55)
        {
          v59 = 2;
        }

        else
        {
          v58 = v55;
          do
          {
            if (sub_78ED2C(&v124, v58, 0) && (sub_78ED2C(&v124, v58, 1) & 1) != 0)
            {
              v59 = 6;
              goto LABEL_135;
            }

            v58 += 1128;
          }

          while (v58 != v56);
          v60 = v57;
          do
          {
            if (sub_78ED2C(&v124, v60, 1))
            {
              v59 = 4;
              goto LABEL_135;
            }

            v60 += 1128;
          }

          while (v60 != v56);
          while (!sub_78ED2C(&v124, v57, 0))
          {
            v57 += 1128;
            if (v57 == v56)
            {
              v59 = 7;
              goto LABEL_135;
            }
          }

          v59 = 5;
        }
      }

      else
      {
        v59 = 1;
      }
    }

LABEL_135:
    v119 = v59;
    sub_68DFC4(v112, &v119);
    v61 = v117[0];
    if (v117[0])
    {
      v62 = v117[1];
      if (v117[1] != v117[0])
      {
        do
        {
          v63 = v62 - 1128;
          v64 = *(v62 - 2);
          if (v64 != -1)
          {
            (off_266C800[v64])(&v124, v62 - 1128);
          }

          *(v62 - 2) = -1;
          v62 -= 1128;
        }

        while (v63 != v61);
        v61 = v117[0];
      }

      operator delete(v61);
    }

    v65 = v120;
    if (v120)
    {
      v66 = v121;
      v67 = v120;
      if (v121 == v120)
      {
LABEL_165:
        v121 = v65;
        operator delete(v67);
        goto LABEL_166;
      }

      while (1)
      {
        if (*(v66 - 9) < 0)
        {
          operator delete(*(v66 - 4));
          v68 = *(v66 - 8);
          if (!v68)
          {
LABEL_149:
            if ((*(v66 - 65) & 0x80000000) == 0)
            {
              goto LABEL_150;
            }

            goto LABEL_161;
          }
        }

        else
        {
          v68 = *(v66 - 8);
          if (!v68)
          {
            goto LABEL_149;
          }
        }

        v69 = *(v66 - 7);
        v70 = v68;
        if (v69 != v68)
        {
          do
          {
            v71 = *(v69 - 1);
            v69 -= 3;
            if (v71 < 0)
            {
              operator delete(*v69);
            }
          }

          while (v69 != v68);
          v70 = *(v66 - 8);
        }

        *(v66 - 7) = v68;
        operator delete(v70);
        if ((*(v66 - 65) & 0x80000000) == 0)
        {
LABEL_150:
          if ((*(v66 - 89) & 0x80000000) == 0)
          {
            goto LABEL_151;
          }

          goto LABEL_162;
        }

LABEL_161:
        operator delete(*(v66 - 11));
        if ((*(v66 - 89) & 0x80000000) == 0)
        {
LABEL_151:
          if (*(v66 - 137) < 0)
          {
            goto LABEL_163;
          }

          goto LABEL_146;
        }

LABEL_162:
        operator delete(*(v66 - 14));
        if (*(v66 - 137) < 0)
        {
LABEL_163:
          operator delete(*(v66 - 20));
        }

LABEL_146:
        v66 -= 21;
        if (v66 == v65)
        {
          v67 = v120;
          goto LABEL_165;
        }
      }
    }

LABEL_166:
    v72 = __p[0];
    if (!__p[0])
    {
      goto LABEL_189;
    }

    v73 = __p[1];
    v74 = __p[0];
    if (__p[1] != __p[0])
    {
      while (1)
      {
        if (*(v73 - 9) < 0)
        {
          operator delete(*(v73 - 4));
          v75 = *(v73 - 8);
          if (!v75)
          {
LABEL_172:
            if ((*(v73 - 65) & 0x80000000) == 0)
            {
              goto LABEL_173;
            }

            goto LABEL_184;
          }
        }

        else
        {
          v75 = *(v73 - 8);
          if (!v75)
          {
            goto LABEL_172;
          }
        }

        v76 = *(v73 - 7);
        v77 = v75;
        if (v76 != v75)
        {
          do
          {
            v78 = *(v76 - 1);
            v76 -= 3;
            if (v78 < 0)
            {
              operator delete(*v76);
            }
          }

          while (v76 != v75);
          v77 = *(v73 - 8);
        }

        *(v73 - 7) = v75;
        operator delete(v77);
        if ((*(v73 - 65) & 0x80000000) == 0)
        {
LABEL_173:
          if ((*(v73 - 89) & 0x80000000) == 0)
          {
            goto LABEL_174;
          }

          goto LABEL_185;
        }

LABEL_184:
        operator delete(*(v73 - 11));
        if ((*(v73 - 89) & 0x80000000) == 0)
        {
LABEL_174:
          if (*(v73 - 137) < 0)
          {
            goto LABEL_186;
          }

          goto LABEL_169;
        }

LABEL_185:
        operator delete(*(v73 - 14));
        if (*(v73 - 137) < 0)
        {
LABEL_186:
          operator delete(*(v73 - 20));
        }

LABEL_169:
        v73 -= 21;
        if (v73 == v72)
        {
          v74 = __p[0];
          break;
        }
      }
    }

    __p[1] = v72;
    operator delete(v74);
LABEL_189:
    v79 = sub_68F328(v112);
    v124 = 0uLL;
    v125 = 0;
    v80 = *v79;
    v116 = v79[1];
    if (*v79 == v116)
    {
      __p[0] = 0;
      __p[1] = 0;
      v99 = v108;
      v123 = 0;
      goto LABEL_235;
    }

    do
    {
      v81 = *(&v124 + 1);
      if (*(&v124 + 1) >= v125)
      {
        v85 = v124;
        v87 = 0x70913F8BCD29C245 * ((*(&v124 + 1) - v124) >> 3) + 1;
        if (v87 > 0x3A196B1EDD80E8)
        {
          sub_1794();
        }

        if (0xE1227F179A53848ALL * ((v125 - v124) >> 3) > v87)
        {
          v87 = 0xE1227F179A53848ALL * ((v125 - v124) >> 3);
        }

        if ((0x70913F8BCD29C245 * ((v125 - v124) >> 3)) >= 0x1D0CB58F6EC074)
        {
          v88 = 0x3A196B1EDD80E8;
        }

        else
        {
          v88 = v87;
        }

        if (v88)
        {
          if (v88 <= 0x3A196B1EDD80E8)
          {
            operator new();
          }

          sub_1808();
        }

        v89 = 8 * ((*(&v124 + 1) - v124) >> 3);
        *v89 = 0u;
        *(v89 + 16) = 0u;
        *(v89 + 32) = 0u;
        *(v89 + 48) = 0u;
        *(v89 + 64) = 0u;
        *(v89 + 80) = 0u;
        *(v89 + 96) = 0u;
        *(v89 + 112) = 0u;
        *(v89 + 160) = 0;
        *(v89 + 128) = 0u;
        *(v89 + 144) = 0u;
        *(v89 + 4) = -1;
        *(v89 + 16) = 0;
        *(v89 + 24) = 0;
        *(v89 + 8) = 0;
        *(v89 + 32) = 0x7FFFFFFFFFFFFFFFLL;
        *(v89 + 40) = -1;
        *(v89 + 48) = 0x7FFFFFFF;
        *(v89 + 56) = 0u;
        *(v89 + 72) = 0u;
        *(v89 + 88) = 0u;
        *(v89 + 104) = 0u;
        *(v89 + 113) = 0u;
        *(v89 + 140) = 0;
        *(v89 + 132) = 0;
        *(v89 + 154) = 0;
        *(v89 + 148) = 0;
        v86 = v81 - v85;
        v90 = v89 - (v81 - v85);
        *(v89 + 1120) = 0;
        if (v85 != v81)
        {
          v113 = v89 - v86;
          v91 = (v89 - v86);
          v92 = v85;
          do
          {
            *v91 = 0;
            v91[280] = -1;
            v93 = v92[280];
            if (v93 != -1)
            {
              v120 = v91;
              (off_266C810[v93])(&v120, v92);
              v91[280] = v93;
            }

            v92 += 282;
            v91 += 282;
          }

          while (v92 != v81);
          do
          {
            v94 = v85[280];
            if (v94 != -1)
            {
              (off_266C800[v94])(&v120, v85);
            }

            v85[280] = -1;
            v85 += 282;
          }

          while (v85 != v81);
          v85 = v124;
          v90 = v113;
        }

        v82 = v89 + 1128;
        *&v124 = v90;
        v125 = 0;
        if (v85)
        {
          operator delete(v85);
        }

        *(&v124 + 1) = v89 + 1128;
        v83 = v89;
        v84 = *(v89 + 1120);
        if (v84 != -1)
        {
LABEL_215:
          (off_266C800[v84])(&v120, v83);
        }
      }

      else
      {
        **(&v124 + 1) = 0u;
        *(v81 + 16) = 0u;
        *(v81 + 32) = 0u;
        *(v81 + 48) = 0u;
        *(v81 + 64) = 0u;
        *(v81 + 80) = 0u;
        *(v81 + 96) = 0u;
        *(v81 + 112) = 0u;
        *(v81 + 160) = 0;
        *(v81 + 128) = 0u;
        *(v81 + 144) = 0u;
        *(v81 + 4) = -1;
        *(v81 + 16) = 0;
        *(v81 + 24) = 0;
        *(v81 + 8) = 0;
        *(v81 + 32) = 0x7FFFFFFFFFFFFFFFLL;
        *(v81 + 40) = -1;
        *(v81 + 48) = 0x7FFFFFFF;
        *(v81 + 56) = 0u;
        *(v81 + 72) = 0u;
        *(v81 + 88) = 0u;
        *(v81 + 104) = 0u;
        *(v81 + 113) = 0u;
        *(v81 + 140) = 0;
        *(v81 + 132) = 0;
        *(v81 + 154) = 0;
        *(v81 + 148) = 0;
        *(v81 + 1120) = 0;
        v82 = v81 + 1128;
        *(&v124 + 1) = v82;
        v83 = v82 - 1128;
        v84 = *(v82 - 8);
        if (v84 != -1)
        {
          goto LABEL_215;
        }
      }

      *(v82 - 8) = -1;
      sub_52B7D8(v83, v80);
      *(v82 - 8) = 1;
      v80 += 1120;
    }

    while (v80 != v116);
    v95 = v124;
    *__p = v124;
    v123 = v125;
    LOBYTE(v124) = 0;
    if (v109)
    {
      v96 = *(&v95 + 1);
      v97 = v95;
      if (*(&v95 + 1) == v95)
      {
        v99 = 2;
      }

      else
      {
        v98 = v95;
        do
        {
          if (sub_78ED2C(&v124, v98, 0) && (sub_78ED2C(&v124, v98, 1) & 1) != 0)
          {
            v99 = 6;
            goto LABEL_235;
          }

          v98 += 1128;
        }

        while (v98 != v96);
        v100 = v97;
        do
        {
          if (sub_78ED2C(&v124, v100, 1))
          {
            v99 = 4;
            goto LABEL_235;
          }

          v100 += 1128;
        }

        while (v100 != v96);
        while (!sub_78ED2C(&v124, v97, 0))
        {
          v97 += 1128;
          if (v97 == v96)
          {
            v99 = 7;
            goto LABEL_235;
          }
        }

        v99 = 5;
      }
    }

    else
    {
      v99 = 1;
    }

LABEL_235:
    LODWORD(v117[0]) = v99;
    sub_68DFE4(v112, v117);
    v18 = __p[0];
    if (__p[0])
    {
      v101 = __p[1];
      if (__p[1] != __p[0])
      {
        do
        {
          v102 = v101 - 1128;
          v103 = *(v101 - 2);
          if (v103 != -1)
          {
            (off_266C800[v103])(&v124, v101 - 1128);
          }

          *(v101 - 2) = -1;
          v101 -= 1128;
        }

        while (v102 != v18);
        v18 = __p[0];
      }

      operator delete(v18);
    }

    v112 += 976;
  }

  while (v112 != v110);
}

void sub_77B36C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va2, a16);
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, char *);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  va_copy(va2, va1);
  v23 = va_arg(va2, void *);
  v25 = va_arg(va2, void);
  v26 = va_arg(va2, void);
  sub_77CB78(va);
  sub_51B6E0(va1);
  sub_51B6E0(va2);
  _Unwind_Resume(a1);
}

uint64_t sub_77B480(uint64_t a1)
{
  v2 = *(a1 + 1784);
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *(a1 + 1704);
  if (v3)
  {
    *(a1 + 1712) = v3;
    operator delete(v3);
  }

  if (*(a1 + 1631) < 0)
  {
    operator delete(*(a1 + 1608));
  }

  v4 = *(a1 + 1584);
  if (v4)
  {
    v5 = *(a1 + 1592);
    v6 = *(a1 + 1584);
    if (v5 != v4)
    {
      v7 = *(a1 + 1592);
      do
      {
        v10 = *(v7 - 3);
        v7 -= 3;
        v9 = v10;
        if (v10)
        {
          v11 = *(v5 - 2);
          v8 = v9;
          if (v11 != v9)
          {
            do
            {
              v12 = *(v11 - 9);
              if (v12)
              {
                *(v11 - 8) = v12;
                operator delete(v12);
              }

              v13 = *(v11 - 12);
              if (v13)
              {
                *(v11 - 11) = v13;
                operator delete(v13);
              }

              v11 -= 176;
            }

            while (v11 != v9);
            v8 = *v7;
          }

          *(v5 - 2) = v9;
          operator delete(v8);
        }

        v5 = v7;
      }

      while (v7 != v4);
      v6 = *(a1 + 1584);
    }

    *(a1 + 1592) = v4;
    operator delete(v6);
  }

  return sub_528AB4(a1);
}

uint64_t *sub_77B580()
{
  result = __chkstk_darwin();
  v4 = v3;
  LODWORD(v3) = *(result + 1264);
  v4[1] = 0;
  v4[2] = 0;
  *v4 = 0;
  if (v3 == 2)
  {
    v5 = v2;
    v6 = v1;
    v7 = result;
    sub_77B990(v4, *(v1 + 24));
    sub_112D984(v41, *(v7 + 1264), *v7);
    for (i = *(v6 + 16); i; i = *i)
    {
      if (!sub_4C2B90((i + 2)))
      {
        v9 = sub_4C2C3C((i + 2));
        v10 = v9;
        v11 = *(v9 + 232) ? 228 : 96;
        if (*(v9 + v11) <= *(v7 + 365) && (*(v9 + 167) != 1 || (*(v7 + 27) & 1) != 0) && (!sub_38F6F0(v9) || sub_1131728(v41, v10)))
        {
          sub_737E50((v10 + 72), (v7 + 125), __p);
          v12 = sub_4C2C84((i + 2));
          LOBYTE(v34) = v12;
          v13 = v4[1];
          if (v13 >= v4[2])
          {
            v14 = sub_7883E4(v4, v10, __p, &v34);
          }

          else
          {
            sub_658D94(v4[1], v10, __p, v12);
            v14 = v13 + 1120;
          }

          v4[1] = v14;
          if (SBYTE7(v37) < 0)
          {
            operator delete(__p[0]);
          }
        }
      }
    }

    if (*(v7 + 28))
    {
      sub_78D4A4(*v5, v5[1], v4, __p);
      v34 = *__p;
      v35 = v37;
      v15 = v38;
      v16 = v39;
      v17 = v40;
      while (1)
      {
        v18 = v34 == v15 && *(&v34 + 1) == v16;
        if (v18 && v35 == v17)
        {
          break;
        }

        v20 = ***(&v34 + 1) + 464 * *(*(&v34 + 1) + 8);
        sub_737E50((v20 + 72), (v7 + 125), v32);
        LOBYTE(v31) = 0;
        BYTE8(v31) = 0;
        v21 = v4[1];
        if (v21 >= v4[2])
        {
          v22 = sub_788580(v4, &v31, v20, v32);
        }

        else
        {
          sub_658C94(v4[1], &v31, v20, v32);
          v22 = v21 + 1120;
        }

        v4[1] = v22;
        if (v33 < 0)
        {
          operator delete(v32[0]);
        }

        sub_77BAC0(&v34);
      }
    }

    else if (*(v7 + 29) == 1)
    {
      sub_78D4A4(*v5, v5[1], v4, __p);
      v34 = *__p;
      v35 = v37;
      v23 = v38;
      v24 = v39;
      v25 = v40;
      while (1)
      {
        v26 = v34 == v23 && *(&v34 + 1) == v24;
        if (v26 && v35 == v25)
        {
          break;
        }

        v28 = ***(&v34 + 1) + 464 * *(*(&v34 + 1) + 8);
        if (*(v28 + 352) == 1 && sub_1131728(v41, v28))
        {
          sub_737E50((v28 + 72), (v7 + 125), v32);
          LOBYTE(v31) = 0;
          BYTE8(v31) = 0;
          v29 = v4[1];
          if (v29 >= v4[2])
          {
            v30 = sub_788580(v4, &v31, v28, v32);
          }

          else
          {
            sub_658C94(v4[1], &v31, v28, v32);
            v30 = v29 + 1120;
          }

          v4[1] = v30;
          if (v33 < 0)
          {
            operator delete(v32[0]);
          }
        }

        sub_77BAC0(&v34);
      }
    }

    return sub_3E3DF0(v41);
  }

  return result;
}

void sub_77B8C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  sub_3E3DF0(&a33);
  sub_5706DC(v33);
  _Unwind_Resume(a1);
}

void sub_77B990(uint64_t *a1, unint64_t a2)
{
  if (0xAF8AF8AF8AF8AF8BLL * ((a1[2] - *a1) >> 5) < a2)
  {
    if (a2 < 0x3A83A83A83A83BLL)
    {
      operator new();
    }

    sub_1794();
  }
}

void *sub_77BAC0(void *a1)
{
  v3 = a1[1];
  v2 = a1[2];
  v4 = v3 + 152;
  a1[1] = v3 + 152;
  if (v3 + 152 != v2)
  {
    v5 = a1[3];
    v6 = v5[1];
    if (*v5 != v6)
    {
      v7 = *v5 + 48;
      do
      {
        v8 = *(v3 + 152);
        v9 = *(v3 + 160);
        v3 = v4;
        v10 = *v8 + 464 * v9;
        if (*(v10 + 71) >= 0)
        {
          v11 = *(v10 + 71);
        }

        else
        {
          v11 = *(v10 + 56);
        }

        v12 = v7;
        if ((*(v10 + 71) & 0x80) != 0)
        {
          for (i = v7; ; i += 1120)
          {
            v19 = *(i + 23);
            v20 = v19;
            if ((v19 & 0x80u) != 0)
            {
              v19 = *(i + 8);
            }

            if (v19 == v11)
            {
              v21 = v20 >= 0 ? i : *i;
              if (!memcmp(v21, *(v10 + 48), v11))
              {
                break;
              }
            }

            v18 = i + 1072;
            if (v18 == v6)
            {
              return a1;
            }
          }
        }

        else
        {
          while (1)
          {
            v15 = *(v12 + 23);
            v16 = v15;
            if ((v15 & 0x80u) != 0)
            {
              v15 = *(v12 + 8);
            }

            if (v15 == v11)
            {
              v17 = v16 >= 0 ? v12 : *v12;
              if (!memcmp(v17, (v10 + 48), v11))
              {
                break;
              }
            }

            v14 = v12 + 1072;
            v12 += 1120;
            if (v14 == v6)
            {
              return a1;
            }
          }
        }

        v4 = v3 + 152;
        a1[1] = v3 + 152;
      }

      while (v3 + 152 != v2);
    }
  }

  return a1;
}

void *sub_77BC0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 2064);
  *(a2 + 160) = *(a1 + 2048);
  *(a2 + 176) = v4;
  *(a2 + 192) = *(a1 + 2080);
  v5 = *(a1 + 2000);
  *(a2 + 96) = *(a1 + 1984);
  *(a2 + 112) = v5;
  v6 = *(a1 + 2032);
  *(a2 + 128) = *(a1 + 2016);
  *(a2 + 144) = v6;
  v7 = *(a1 + 1936);
  *(a2 + 32) = *(a1 + 1920);
  *(a2 + 48) = v7;
  v8 = *(a1 + 1968);
  *(a2 + 64) = *(a1 + 1952);
  *(a2 + 80) = v8;
  v9 = *(a1 + 1904);
  *a2 = *(a1 + 1888);
  *(a2 + 16) = v9;
  *(a2 + 202) = *(a1 + 2090);
  result = memcpy((a2 + 224), (a1 + 2112), 0xAF0uLL);
  *(a2 + 3024) = 0;
  *(a2 + 3040) = 0;
  *(a2 + 3032) = 0;
  v11 = *(a1 + 4912);
  v12 = *(a1 + 4920);
  if (v12 != v11)
  {
    if (0xCCCCCCCCCCCCCCCDLL * ((v12 - v11) >> 3) < 0x666666666666667)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_77BD1C(uint64_t a1, void *a2, double a3)
{
  v3 = a2[156];
  v4 = a2[157];
  if (v3 != v4)
  {
    v7 = a2 + 512;
    while (1)
    {
      v8 = *(v3 + 152);
      if (v8)
      {
        v9 = 0;
        for (i = 0; i != v8; ++i)
        {
          v9 += sub_4D23F8(a2, i, a3);
        }

        if (v9 > *(a1 + 16))
        {
          return;
        }
      }

      else if (*(a1 + 16) < 0)
      {
        return;
      }

      if (sub_734C10(v3))
      {
        break;
      }

      v3 += 160;
      if (v3 == v4)
      {
        return;
      }
    }

    v11 = *(v3 + 152);
    sub_5139E8(&v25, v3);
    sub_78D600(a2[138] + 392, &v25, &v35, 1uLL);
    if (v34 < 0)
    {
      operator delete(__p);
      if ((v32 & 0x80000000) == 0)
      {
LABEL_14:
        if ((v30 & 0x80000000) == 0)
        {
          goto LABEL_15;
        }

        goto LABEL_21;
      }
    }

    else if ((v32 & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

    operator delete(v31);
    if ((v30 & 0x80000000) == 0)
    {
LABEL_15:
      if ((v28 & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_22;
    }

LABEL_21:
    operator delete(v29);
    if ((v28 & 0x80000000) == 0)
    {
LABEL_16:
      if ((SHIBYTE(v26) & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_23;
    }

LABEL_22:
    operator delete(v27);
    if ((SHIBYTE(v26) & 0x80000000) == 0)
    {
LABEL_17:
      if (v11 == -1)
      {
        return;
      }

LABEL_24:
      if (v11 >= *(sub_578320(a2 + 138, 1uLL) + 24))
      {
        return;
      }

      v12 = sub_4D1F50(a2, v11);
      sub_2B7A20(*(a1 + 8), *(v12 + 32) & 0xFFFFFFFFFFFFFFLL, &v25);
      sub_31BF20(&v25, &v23);
      if (*(&v25 + 1))
      {
        v26 = *(&v25 + 1);
        operator delete(*(&v25 + 1));
      }

      if (0xAAAAAAAAAAAAAAABLL * ((v24 - v23) >> 2) < 2)
      {
        goto LABEL_86;
      }

      v13 = sub_41224(&v23, 0);
      v14 = sub_41224(&v23, 1uLL);
      if (*v14 == *v13)
      {
        v15 = v13[1];
        v16 = v14[1];
        j = 0.0;
        if (v15 == v16)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v16 = v14[1];
        v15 = v13[1];
      }

      v18 = -(*v13 - *v14);
      if (*v14 - *v13 < (*v13 - *v14))
      {
        v18 = (*v14 - *v13);
      }

        ;
      }

        ;
      }

LABEL_38:
      v19 = (j + 180.0) / 45.0 + 0.5;
      if (v19 <= 0)
      {
        v20 = -(-v19 & 7);
      }

      else
      {
        v20 = v19 & 7;
      }

      v21 = v7 + 418;
      v22 = *(v7 + 3367);
      if (v20 > 3)
      {
        if (v20 <= 5)
        {
          if (v20 == 4)
          {
            if (v22 < 0)
            {
              a2[931] = 1;
              v21 = a2[930];
            }

            else
            {
              *(v7 + 3367) = 1;
            }

            *v21++ = 78;
          }

          else
          {
            if (v22 < 0)
            {
              a2[931] = 2;
              v21 = a2[930];
            }

            else
            {
              *(v7 + 3367) = 2;
            }

            *v21 = 17742;
            v21 += 2;
          }

          goto LABEL_85;
        }

        if (v20 == 6)
        {
          if (v22 < 0)
          {
            a2[931] = 1;
            v21 = a2[930];
          }

          else
          {
            *(v7 + 3367) = 1;
          }

          *v21++ = 69;
          goto LABEL_85;
        }

        if (v20 == 7)
        {
          if (v22 < 0)
          {
            a2[931] = 2;
            v21 = a2[930];
          }

          else
          {
            *(v7 + 3367) = 2;
          }

          *v21 = 17747;
          v21 += 2;
          goto LABEL_85;
        }
      }

      else
      {
        if (v20 > 1)
        {
          if (v20 == 2)
          {
            if (v22 < 0)
            {
              a2[931] = 1;
              v21 = a2[930];
            }

            else
            {
              *(v7 + 3367) = 1;
            }

            *v21++ = 87;
          }

          else
          {
            if (v22 < 0)
            {
              a2[931] = 2;
              v21 = a2[930];
            }

            else
            {
              *(v7 + 3367) = 2;
            }

            *v21 = 22350;
            v21 += 2;
          }

          goto LABEL_85;
        }

        if (!v20)
        {
          if (v22 < 0)
          {
            a2[931] = 1;
            v21 = a2[930];
          }

          else
          {
            *(v7 + 3367) = 1;
          }

          *v21++ = 83;
          goto LABEL_85;
        }

        if (v20 == 1)
        {
          if (v22 < 0)
          {
            a2[931] = 2;
            v21 = a2[930];
          }

          else
          {
            *(v7 + 3367) = 2;
          }

          *v21 = 22355;
          v21 += 2;
          goto LABEL_85;
        }
      }

      if (v22 < 0)
      {
        a2[931] = 0;
        v21 = a2[930];
      }

      else
      {
        *(v7 + 3367) = 0;
      }

LABEL_85:
      *v21 = 0;
LABEL_86:
      if (v23)
      {
        v24 = v23;
        operator delete(v23);
      }

      return;
    }

LABEL_23:
    operator delete(v25);
    if (v11 == -1)
    {
      return;
    }

    goto LABEL_24;
  }
}