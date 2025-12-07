BOOL sub_484034(uint64_t a1, void *a2, void *a3)
{
  ++*(a1 + 1064);
  v5 = sub_2B4EDC(*(a1 + 280), *a2 & 0xFFFFFFFFFFFFLL, (*a2 & 0xFF000000000000) == 0);
  v6 = *(a1 + 280);

  return sub_2B365C(v6, v5, 0, a3);
}

void sub_48409C(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = xmmword_2297CF0;
  *(a1 + 40) = xmmword_2297D00;
  *(a1 + 80) = 0x3E800002710;
  *(a1 + 96) = 0x3200000064;
  *(a1 + 120) = 0x7D000000000;
  *(a1 + 136) = 0xBB800000258;
  *(a1 + 216) = 0;
  *(a1 + 160) = unk_2297E48;
  *(a1 + 176) = xmmword_2297E58;
  *(a1 + 192) = unk_2297E68;
  *a1 = &off_266AB88;
  *(a1 + 8) = 0x4039000000000000;
  *(a1 + 16) = 5000;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 68) = 20000000;
  *(a1 + 72) = 0x3FF199999999999ALL;
  *(a1 + 88) = 10000;
  *(a1 + 92) = 10;
  *(a1 + 104) = 2;
  *(a1 + 112) = 0x4049000000000000;
  *(a1 + 128) = 0x3FF0000000000000;
  *(a1 + 208) = 0x3FD999999999999ALL;
  *(a1 + 144) = xmmword_2297E38;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  operator new();
}

void sub_48451C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  if (*(v21 - 57) < 0)
  {
    operator delete(*(v21 - 80));
  }

  sub_5C010(&a19);
  sub_1A104(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_4821F8(v19 + 36);
  *v19 = v20;
  v23 = v19[27];
  if (v23)
  {
    v19[28] = v23;
    operator delete(v23);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_48459C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = *(a1 + 280);
  if (a2 < 0)
  {
    a2 = -a2;
  }

  v4 = sub_335D84(v3, a2);
  v5 = v4 > 0xFFFFFFFEFFFFFFFFLL;
  if (v4 <= 0xFFFFFFFEFFFFFFFFLL)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  if (!v4)
  {
    v5 = 1;
  }

  v7 = v2 < 1 || v5;
  v8 = 0x1000000000000;
  if (!v7)
  {
    v8 = 0;
  }

  if (v5)
  {
    v9 = 0;
  }

  else
  {
    v9 = v4 & 0xFFFF00000000;
  }

  return v9 | v6 | v8;
}

uint64_t sub_48462C(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 280);
  v3 = *a2;
  v4 = sub_2B51D8(v2, *a2 & 0xFFFFFFFFFFFFLL);
  if (*(v2 + 7772) == 1)
  {
    sub_30C50C(v2 + 3896, v3, 0);
  }

  sub_31D7E8(v2, v3 & 0xFFFFFFFFFFFFLL, 1);
  v5 = (v4 - *v4);
  if (*v5 < 0x1Du)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5[14];
    if (v6)
    {
      v6 = *(v4 + v6);
    }
  }

  if ((v3 & 0xFF000000000000) != 0)
  {
    return -v6;
  }

  else
  {
    return v6;
  }
}

void sub_4846CC(uint64_t a1, unsigned int *a2, int a3, uint64_t a4)
{
  LODWORD(v6) = a2[1];
  v5 = a2[2];
  if (v6 >= 0xFFFFFFFE)
  {
    v6 = 4294967294;
  }

  else
  {
    v6 = v6;
  }

  v31 = *a2 | (v6 << 32);
  v32 = v5;
  sub_2B3C60(*(a1 + 280), &v31, 10, &v29);
  v7 = *a4;
  *(a4 + 8) = *a4;
  v8 = v29;
  v9 = v30;
  if (v29 != v30)
  {
    do
    {
      v10 = *(v8 + 2);
      v11 = *(v8 + 6);
      v12 = *(a4 + 16);
      if (v7 >= v12)
      {
        v14 = *a4;
        v15 = v7 - *a4;
        v16 = (v15 >> 3) + 1;
        if (v16 >> 61)
        {
          sub_1794();
        }

        v17 = v12 - v14;
        if (v17 >> 2 > v16)
        {
          v16 = v17 >> 2;
        }

        if (v17 >= 0x7FFFFFFFFFFFFFF8)
        {
          v18 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v18 = v16;
        }

        if (v18)
        {
          if (!(v18 >> 61))
          {
            operator new();
          }

          sub_1808();
        }

        v19 = (8 * (v15 >> 3));
        *v19 = v10 | (v11 << 32);
        v13 = v19 + 1;
        memcpy(0, v14, v15);
        *a4 = 0;
        *(a4 + 8) = v13;
        *(a4 + 16) = 0;
        if (v14)
        {
          operator delete(v14);
        }
      }

      else
      {
        *v7 = v10 | (v11 << 32);
        v13 = v7 + 1;
      }

      *(a4 + 8) = v13;
      v20 = *(v8 + 2);
      v21 = *(v8 + 6);
      v22 = *(a4 + 16);
      if (v13 < v22)
      {
        *v13 = v20 | (v21 << 32) | 0x1000000000000;
        v7 = v13 + 1;
      }

      else
      {
        v23 = *a4;
        v24 = v13 - *a4;
        v25 = (v24 >> 3) + 1;
        if (v25 >> 61)
        {
          sub_1794();
        }

        v26 = v22 - v23;
        if (v26 >> 2 > v25)
        {
          v25 = v26 >> 2;
        }

        if (v26 >= 0x7FFFFFFFFFFFFFF8)
        {
          v27 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v27 = v25;
        }

        if (v27)
        {
          if (!(v27 >> 61))
          {
            operator new();
          }

          sub_1808();
        }

        v28 = (8 * (v24 >> 3));
        *v28 = v20 | (v21 << 32) | 0x1000000000000;
        v7 = v28 + 1;
        memcpy(0, v23, v24);
        *a4 = 0;
        *(a4 + 8) = v7;
        *(a4 + 16) = 0;
        if (v23)
        {
          operator delete(v23);
        }
      }

      *(a4 + 8) = v7;
      v8 += 48;
    }

    while (v8 != v9);
    v8 = v29;
  }

  if (v8)
  {
    v30 = v8;
    operator delete(v8);
  }
}

void sub_48493C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_484964@<D0>(void **a1@<X0>, unint64_t *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  a1[132] = a1[132] + 1;
  v8 = a1[35];
  v9 = *a2;
  v10 = sub_2B51D8(v8, *a2 & 0xFFFFFFFFFFFFLL);
  if (v8[7772] == 1)
  {
    sub_30C50C((v8 + 3896), v9, 0);
  }

  sub_31D7E8(v8, v9 & 0xFFFFFFFFFFFFLL, 1);
  v11 = *v10;
  if (*(v10 - v11) < 9u)
  {
    v13 = 0;
    if (a3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v12 = *(v10 - v11 + 8);
    if (*(v10 - v11 + 8))
    {
      LODWORD(v12) = *(v10 + v12);
    }

    if (v12 >= 0x7FFFFFFF)
    {
      v13 = 0x7FFFFFFF;
    }

    else
    {
      v13 = v12;
    }

    if (a3)
    {
LABEL_10:
      sub_3079D0((a1 + 36), a2, v46);
      if (v46[0])
      {
        __p[1] = 0;
        v45 = 0;
        __p[0] = 0;
        v15 = *(v48 + 8);
        v14 = *(v48 + 16);
        if (v14 != v15)
        {
          if (0xAAAAAAAAAAAAAAABLL * ((v14 - v15) >> 2) <= 0x1555555555555555)
          {
            operator new();
          }

          sub_1794();
        }

        v16 = *(v48 + 8);
        v17 = *(v48 + 16);
        for (i = __p; v16 != v17; v16 += 3)
        {
          LODWORD(v19) = v16[1];
          v18 = v16[2];
          if (v19 >= 0xFFFFFFFE)
          {
            v19 = 4294967294;
          }

          else
          {
            v19 = v19;
          }

          *&v42 = *v16 | (v19 << 32);
          DWORD2(v42) = v18;
          sub_30FB4(&i, &v42);
        }

        v41 = *__p;
        v20 = v45;
      }

      else
      {
        sub_2B7A20(a1[35], *a2, __p);
        i = a1;
        v43 = 0;
        v42 = 0uLL;
        v22 = sub_4850F8(__p);
        if (v22)
        {
          if (v22 <= 0x1555555555555555)
          {
            operator new();
          }

          sub_1794();
        }

        sub_485350(__p, &v42);
        v41 = v42;
        v20 = v43;
        if (__p[1])
        {
          v45 = __p[1];
          operator delete(__p[1]);
        }
      }

      v21 = (v10 - *v10);
      if (*v21 < 0x1Bu)
      {
        goto LABEL_31;
      }

      goto LABEL_29;
    }
  }

  v20 = 0;
  v41 = 0u;
  v21 = (v10 - v11);
  if (*v21 < 0x1Bu)
  {
LABEL_31:
    v24 = 0;
    goto LABEL_32;
  }

LABEL_29:
  v23 = v21[13];
  if (!v23)
  {
    goto LABEL_31;
  }

  v24 = *(v10 + v23);
LABEL_32:
  v25 = sub_2B51D8(a1[35], *a2 | (*(a2 + 2) << 32));
  v26 = (v25 - *v25);
  if (*v26 >= 0x13u && (v27 = v26[9]) != 0)
  {
    v28 = *(v25 + v27);
  }

  else
  {
    v28 = 0;
  }

  v29 = *a2;
  v30 = sub_2B51D8(a1[35], *a2 & 0xFFFFFFFFFFFFLL);
  v31 = (v30 - *v30);
  v32 = *v31;
  if ((v29 & 0xFF000000000000) == 0)
  {
    if (v32 < 0x39)
    {
      goto LABEL_48;
    }

    v35 = v31[28];
    if (!v35)
    {
      goto LABEL_48;
    }

    v34 = *(v30 + v35);
    if (v34)
    {
      goto LABEL_45;
    }

LABEL_44:
    if ((v34 & 7) == 4)
    {
      goto LABEL_45;
    }

    if ((v34 & 3) == 0)
    {
      v36 = (v34 >> 5) & 1;
      if (*(a1 + 1072) != 1)
      {
        goto LABEL_46;
      }

      goto LABEL_49;
    }

LABEL_48:
    LOBYTE(v36) = 0;
    if (*(a1 + 1072) != 1)
    {
      goto LABEL_46;
    }

    goto LABEL_49;
  }

  if (v32 < 0x39)
  {
    goto LABEL_48;
  }

  v33 = v31[28];
  if (!v33)
  {
    goto LABEL_48;
  }

  v34 = *(v30 + v33);
  if ((v34 & 2) == 0)
  {
    goto LABEL_44;
  }

LABEL_45:
  LOBYTE(v36) = 1;
  if (*(a1 + 1072) != 1)
  {
LABEL_46:
    v37 = 0;
    HIBYTE(v47) = 0;
    LOBYTE(v46[0]) = 0;
    goto LABEL_50;
  }

LABEL_49:
  v38 = a1[35];
  v39 = sub_31DDCC(v38, *a2);
  sub_40C59C(v38, v39, v46);
  v37 = v47 < 0;
LABEL_50:
  *a4 = v24;
  *(a4 + 2) = v28;
  *(a4 + 4) = v13;
  *(a4 + 8) = v41;
  *(a4 + 24) = v20;
  *(a4 + 32) = 23593320;
  *(a4 + 36) = v36;
  if (v37)
  {
    sub_325C((a4 + 40), v46[0], v46[1]);
    if (SHIBYTE(v47) < 0)
    {
      operator delete(v46[0]);
    }
  }

  else
  {
    result = *v46;
    *(a4 + 40) = *v46;
    *(a4 + 56) = v47;
  }

  return result;
}

void sub_484E00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_484EC8(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 280);
  v3 = *a2;
  v4 = sub_2B51D8(v2, *a2 & 0xFFFFFFFFFFFFLL);
  if (*(v2 + 7772) == 1)
  {
    sub_30C50C(v2 + 3896, v3, 0);
  }

  sub_31D7E8(v2, v3 & 0xFFFFFFFFFFFFLL, 1);
  v6 = (v4 - *v4);
  v7 = *v6;
  if ((v3 & 0xFF000000000000) != 0)
  {
    if (v7 < 0x4B || (v8 = v6[37]) == 0)
    {
LABEL_10:
      v9 = 65535.0;
      goto LABEL_11;
    }
  }

  else
  {
    if (v7 < 0x49)
    {
      goto LABEL_10;
    }

    v8 = v6[36];
    if (!v8)
    {
      goto LABEL_10;
    }
  }

  LOWORD(v5) = *(v4 + v8);
  v9 = v5;
LABEL_11:
  v10 = llround(v9 / 100.0);
  return v10 - 360 * (((11651 * v10) >> 22) + ((11651 * v10) >> 31));
}

uint64_t sub_484FAC(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 280);
  v3 = *a2;
  v4 = sub_2B51D8(v2, *a2 & 0xFFFFFFFFFFFFLL);
  if (*(v2 + 7772) == 1)
  {
    sub_30C50C(v2 + 3896, v3, 0);
  }

  sub_31D7E8(v2, v3 & 0xFFFFFFFFFFFFLL, 1);
  v6 = (v4 - *v4);
  v7 = *v6;
  if ((v3 & 0xFF000000000000) != 0)
  {
    if (v7 < 0x49 || (v8 = v6[36]) == 0)
    {
LABEL_10:
      v9 = 65535.0;
      goto LABEL_11;
    }
  }

  else
  {
    if (v7 < 0x4B)
    {
      goto LABEL_10;
    }

    v8 = v6[37];
    if (!v8)
    {
      goto LABEL_10;
    }
  }

  LOWORD(v5) = *(v4 + v8);
  v9 = v5;
LABEL_11:
  v10 = llround(v9 / 100.0);
  return v10 - 360 * (((11651 * v10) >> 22) + ((11651 * v10) >> 31));
}

BOOL sub_485090(uint64_t a1, void *a2, void *a3)
{
  ++*(a1 + 1064);
  v5 = sub_2B4EDC(*(a1 + 280), *a2 & 0xFFFFFFFFFFFFLL, (*a2 & 0xFF000000000000) == 0);
  v6 = *(a1 + 280);

  return sub_2B365C(v6, v5, 0, a3);
}

uint64_t sub_4850F8(uint64_t a1)
{
  sub_31C60C(a1, v17);
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (*(a1 + 32))
  {
    if (v3 == v2)
    {
      LODWORD(v4) = 0;
    }

    else
    {
      LODWORD(v4) = -1;
    }

    v5 = v4;
  }

  else if (v3 == v2)
  {
    LODWORD(v4) = 0;
    v5 = 0;
  }

  else
  {
    v6 = *(v2 - 8);
    v7 = sub_2B4D24(*a1, v6, 0);
    v8 = &v7[*&v7[-*v7 + 4]];
    v9 = &v8[4 * HIDWORD(v6) + *v8];
    v10 = (v9 + 4 + *(v9 + 4));
    v4 = (*(a1 + 16) - *(a1 + 8)) >> 3;
    v11 = (v10 + *(v10 - *v10 + 6));
    v5 = *(v11 + *v11);
  }

  v19[0] = v17[0];
  v19[1] = v17[1];
  v19[2] = v17[2];
  v20 = v18;
  v12 = DWORD1(v18);
  v13 = v18 == v4;
  for (i = 0; !v13 || v12 != v5; ++i)
  {
    if (BYTE8(v20))
    {
      sub_31EA68(v19);
    }

    else
    {
      sub_31E948(v19);
    }

    v12 = DWORD1(v20);
    v13 = v20 == v4;
  }

  return sub_485218(i);
}

uint64_t sub_485218(uint64_t result)
{
  if (result < 0)
  {
    v1 = result;
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v6, v1);
    sub_23E08("narrowing ", &v6, &v7);
    sub_30F54(&v8, " failed", &v7);
    if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v3 = &v8;
    }

    else
    {
      v3 = v8.__r_.__value_.__r.__words[0];
    }

    if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v8.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v8.__r_.__value_.__l.__size_;
    }

    v5 = sub_2D390(exception, v3, size);
  }

  return result;
}

void sub_4852D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_485350(uint64_t a1, uint64_t a2)
{
  sub_31C60C(a1, v45);
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (*(a1 + 32))
  {
    if (v5 == v4)
    {
      LODWORD(v6) = 0;
    }

    else
    {
      LODWORD(v6) = -1;
    }

    v7 = v6;
    v8 = v51;
    if (v50 != v6 || v51 != v6)
    {
      goto LABEL_25;
    }

    return a2;
  }

  if (v5 == v4)
  {
    LODWORD(v6) = 0;
    v7 = 0;
    v8 = v51;
    if (v50)
    {
      v17 = 0;
    }

    else
    {
      v17 = v51 == 0;
    }

    if (v17)
    {
      return a2;
    }

LABEL_25:
    while (1)
    {
      v18 = v47 + 4 * v8;
      v19 = *(v18 + 4);
      v20 = *(v18 + 6);
      v21 = sub_57A90(v48);
      v22 = v48 & ~(-1 << (v21 & 0xFE));
      v23 = sub_581D8(v22);
      v24 = sub_581D8(v22 >> 1);
      v25 = (v46 - *v46);
      v26 = *v25;
      if (v26 < 0xD)
      {
        break;
      }

      if (!v25[6])
      {
        goto LABEL_29;
      }

      v27 = *(&v46[v51 + 1] + v25[6] + *(v46 + v25[6]));
LABEL_36:
      v31 = 1 << -(v21 >> 1);
      if (v21 < 2)
      {
        v31 = -2;
      }

      LODWORD(v32) = v31 * v24 + 4 * v20;
      if (v32 >= 0xFFFFFFFE)
      {
        v32 = 4294967294;
      }

      else
      {
        v32 = v32;
      }

      v33 = (v31 * v23 + 4 * v19) | (v32 << 32);
      v34 = *(a2 + 8);
      v35 = *(a2 + 16);
      if (v34 >= v35)
      {
        v37 = *a2;
        v38 = 0xAAAAAAAAAAAAAAABLL * ((v34 - *a2) >> 2);
        v39 = v38 + 1;
        if (v38 + 1 > 0x1555555555555555)
        {
          sub_1794();
        }

        v40 = 0xAAAAAAAAAAAAAAABLL * ((v35 - v37) >> 2);
        if (2 * v40 > v39)
        {
          v39 = 2 * v40;
        }

        if (v40 >= 0xAAAAAAAAAAAAAAALL)
        {
          v41 = 0x1555555555555555;
        }

        else
        {
          v41 = v39;
        }

        if (v41)
        {
          if (v41 <= 0x1555555555555555)
          {
            operator new();
          }

          sub_1808();
        }

        v42 = 4 * ((v34 - *a2) >> 2);
        *v42 = v33;
        *(v42 + 8) = v27;
        v36 = 12 * v38 + 12;
        v43 = (12 * v38 - (v34 - v37));
        memcpy(v43, v37, v34 - v37);
        *a2 = v43;
        *(a2 + 8) = v36;
        *(a2 + 16) = 0;
        if (v37)
        {
          operator delete(v37);
        }
      }

      else
      {
        *v34 = v33;
        *(v34 + 8) = v27;
        v36 = v34 + 12;
      }

      *(a2 + 8) = v36;
      if (v52)
      {
        sub_31EA68(v45);
        v8 = v51;
        if (v50 == v6)
        {
          goto LABEL_24;
        }
      }

      else
      {
        sub_31E948(v45);
        v8 = v51;
        if (v50 == v6)
        {
LABEL_24:
          if (v8 == v7)
          {
            return a2;
          }
        }
      }
    }

    if (v26 >= 0xB)
    {
LABEL_29:
      if (v25[5])
      {
        v28 = *(v46 + 2 * v51 + v25[5] + *(v46 + v25[5]) + 4);
        if (v28 != 0xFFFF)
        {
          v29 = v25[4];
          if (v29)
          {
            v30 = *(v46 + v29);
          }

          else
          {
            v30 = 0;
          }

          v27 = v49 + v28 + v30;
          goto LABEL_36;
        }
      }
    }

    v27 = 0x7FFFFFFF;
    goto LABEL_36;
  }

  v10 = *(v4 - 8);
  v11 = sub_2B4D24(*a1, v10, 0);
  v12 = &v11[*&v11[-*v11 + 4]];
  v13 = &v12[4 * HIDWORD(v10) + *v12];
  v14 = (v13 + 4 + *(v13 + 4));
  v6 = (*(a1 + 16) - *(a1 + 8)) >> 3;
  v15 = (v14 + *(v14 - *v14 + 6));
  v7 = *(v15 + *v15);
  v8 = v51;
  if (v50 != v6 || v51 != v7)
  {
    goto LABEL_25;
  }

  return a2;
}

void sub_4856A8(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v9 = 15;
  strcpy(v8, "UserPathDecoder");
  __p[0] = 0;
  __p[1] = 0;
  v7 = 0;
  v5 = sub_3AEC94(a2, v8, __p);
  sub_48BEFC(a1, v5);
}

void sub_485A60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  sub_5BF68((v25 - 72));
  sub_21DB4B4(v24);
  _Unwind_Resume(a1);
}

void sub_485A94(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void **a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  sub_1A104(&a22);
  JUMPOUT(0x485AD0);
}

void sub_485B0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  v22 = v19[9];
  if (v22)
  {
    v19[10] = v22;
    operator delete(v22);
  }

  v23 = *v20;
  if (*v20)
  {
    v19[7] = v23;
    operator delete(v23);
  }

  _Unwind_Resume(exception_object);
}

void sub_485B5C()
{
  v0 = __chkstk_darwin();
  v3 = 17;
  strcpy(__p, "RequestWithGeoIds");
  v1 = **(v0 + 96);
  if (v1)
  {
    sub_499F74(v4, v1);
  }

  else
  {
    sub_2C0888(v4);
  }

  sub_7BDA0(1, __p, v4);
  sub_2C1D4C(v4);
  if (v3 < 0)
  {
    operator delete(*__p);
  }

  sub_4E3D18(v5);
  sub_4E3D18(v6);
  v8 = 0;
  memset(&v6[3], 0, 48);
  LOBYTE(v7) = 0;
  v10 = 0;
  v9 = 0;
  sub_4A5960(v4, *(v0 + 24));
}

void sub_485FE0(_Unwind_Exception *a1)
{
  sub_454784(v1);
  sub_4870F0(&STACK[0x268]);
  sub_49AD08(&STACK[0x1350]);
  _Unwind_Resume(a1);
}

void sub_486084(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_3AF6B4(*(a1 + 24));
  v6 = sub_45AC50(a3);
  if (v6 != sub_588D8(a3))
  {
    v39.f64[0] = NAN;
    v39.f64[1] = NAN;
    v95 = vnegq_f64(v39);
    do
    {
      v44 = a3[16];
      if (v44 >= a3[17])
      {
        v45 = sub_49C7F4(a3 + 15);
      }

      else
      {
        *(v44 + 8) = 0u;
        *(v44 + 24) = 0u;
        *(v44 + 40) = 0u;
        *(v44 + 56) = 0u;
        *(v44 + 72) = 0u;
        *(v44 + 88) = 0u;
        *(v44 + 104) = 0u;
        *v44 = -1;
        *(v44 + 8) = 0x7FFFFFFF;
        *(v44 + 16) = -1;
        *(v44 + 24) = -1;
        *(v44 + 32) = 0x7FFFFFFFFFFFFFFFLL;
        *(v44 + 48) = -1935635296;
        *(v44 + 56) = 0;
        *(v44 + 63) = 0;
        *(v44 + 72) = 0;
        *(v44 + 80) = 0;
        *(v44 + 88) = 0;
        *(v44 + 96) = 0;
        *(v44 + 104) = 0x7FFFFFFFFFFFFFFFLL;
        *(v44 + 112) = 100;
        *(v44 + 120) = 0;
        *(v44 + 128) = 0;
        *(v44 + 136) = v95;
        *(v44 + 216) = 0;
        *(v44 + 200) = 0u;
        *(v44 + 184) = 0u;
        *(v44 + 168) = 0u;
        *(v44 + 152) = 0u;
        *(v44 + 224) = 1;
        *(v44 + 236) = 0;
        *(v44 + 228) = 0;
        v45 = v44 + 240;
      }

      a3[16] = v45;
      if (v6 == sub_45AC50(a3))
      {
        v46 = 1;
      }

      else
      {
        v46 = 3;
      }

      *(v45 - 16) = v46;
      v47 = sub_F69654(v6);
      v49 = (*v47 - **v47);
      v50 = 0.0;
      if (*v49 >= 9u)
      {
        v51 = v49[4];
        if (v51)
        {
          LODWORD(v48) = *(*v47 + v51);
          v50 = v48;
        }
      }

      LODWORD(v52) = *sub_73F1C(v6);
      v53 = v50 * (v52 / 1000000000.0);
      v54 = (v53 + v53);
      v55 = ((v54 - 1) / 2);
      if (v53 <= -4.50359963e15)
      {
        v55 = v53;
      }

      v56 = ((v54 + 1) >> 1);
      if (v53 >= 4.50359963e15)
      {
        v56 = v53;
      }

      if (v53 >= 0.0)
      {
        v57 = v56;
      }

      else
      {
        v57 = v55;
      }

      *&v96 = v57;
      v58 = sub_F69654(v6);
      v59 = *(v58 + 32) | (*(v58 + 36) << 32);
      v110 = 0;
      v111[0] = v59;
      *&v102 = -1;
      DWORD2(v102) = 0x7FFFFFFF;
      v60 = sub_F69654(v6);
      v61 = *(v60 + 38);
      LOBYTE(v109) = *(v60 + 38);
      v62 = *(v45 - 56);
      if (v62 >= *(v45 - 48))
      {
        v66 = sub_49CB7C(v45 - 64, v111, &v102, &v96, &v110, &v109);
      }

      else
      {
        v63 = v111[0];
        v64 = v96;
        *v62 = v110;
        v65 = DWORD2(v102);
        *(v62 + 8) = v102;
        *(v62 + 16) = v65;
        *(v62 + 24) = v64;
        *(v62 + 32) = v63;
        *(v62 + 40) = v61 | 0x100;
        *(v62 + 42) = 257;
        *(v62 + 48) = 0;
        *(v62 + 56) = 0;
        *(v62 + 64) = 0;
        *(v62 + 72) = 2139095039;
        *(v62 + 88) = 0;
        *(v62 + 96) = 0;
        *(v62 + 80) = 0;
        v66 = v62 + 104;
      }

      *(v45 - 56) = v66;
      v67 = sub_F69654(v6);
      v68 = sub_73F1C(v6);
      *(v45 - 240) = sub_48CA24(v5, v67, *v68);
      *(v45 - 232) = v69;
      if (v6 == sub_45AC50(a3) && sub_E67BDC(a2))
      {
        v70 = v45 - 240;
        *v70 = *a2;
        v71 = *(a2 + 16);
        v72 = *(a2 + 32);
        v73 = *(a2 + 48);
        *(v70 + 63) = *(a2 + 63);
        *(v70 + 32) = v72;
        *(v70 + 48) = v73;
        *(v70 + 16) = v71;
        if (v45 - 240 != a2)
        {
          sub_146EC((v45 - 168), *(a2 + 72), *(a2 + 80), (*(a2 + 80) - *(a2 + 72)) >> 2);
        }

        v74 = *(a2 + 96);
        *(v45 - 128) = *(a2 + 112);
        *(v45 - 144) = v74;
        v75 = *(a2 + 120);
        *(v45 - 104) = *(a2 + 136);
        *(v45 - 120) = v75;
        sub_3E428((v45 - 88), a2 + 152);
      }

      v76 = a3[16];
      if (v76 >= a3[17])
      {
        v77 = sub_49C7F4(a3 + 15);
      }

      else
      {
        *(v76 + 8) = 0u;
        *(v76 + 24) = 0u;
        *(v76 + 40) = 0u;
        *(v76 + 56) = 0u;
        *(v76 + 72) = 0u;
        *(v76 + 88) = 0u;
        *(v76 + 104) = 0u;
        *v76 = -1;
        *(v76 + 8) = 0x7FFFFFFF;
        *(v76 + 16) = -1;
        *(v76 + 24) = -1;
        *(v76 + 32) = 0x7FFFFFFFFFFFFFFFLL;
        *(v76 + 48) = -1935635296;
        *(v76 + 56) = 0;
        *(v76 + 63) = 0;
        *(v76 + 72) = 0;
        *(v76 + 80) = 0;
        *(v76 + 88) = 0;
        *(v76 + 96) = 0;
        *(v76 + 104) = 0x7FFFFFFFFFFFFFFFLL;
        *(v76 + 112) = 100;
        *(v76 + 120) = 0;
        *(v76 + 128) = 0;
        *(v76 + 136) = v95;
        *(v76 + 216) = 0;
        *(v76 + 200) = 0u;
        *(v76 + 184) = 0u;
        *(v76 + 168) = 0u;
        *(v76 + 152) = 0u;
        *(v76 + 224) = 1;
        *(v76 + 236) = 0;
        *(v76 + 228) = 0;
        v77 = v76 + 240;
      }

      a3[16] = v77;
      if (v6 == sub_588D8(a3) - 552)
      {
        v78 = 2;
      }

      else
      {
        v78 = 3;
      }

      *(v77 - 16) = v78;
      v79 = sub_F6966C(v6);
      v81 = (*v79 - **v79);
      v82 = 0.0;
      if (*v81 >= 9u)
      {
        v83 = v81[4];
        if (v83)
        {
          LODWORD(v80) = *(*v79 + v83);
          v82 = v80;
        }
      }

      LODWORD(v84) = *sub_F69058(v6);
      v85 = v82 * (v84 / 1000000000.0);
      if (v85 >= 0.0)
      {
        if (v85 < 4.50359963e15)
        {
          v86 = (v85 + v85) + 1;
          goto LABEL_54;
        }
      }

      else if (v85 > -4.50359963e15)
      {
        v86 = (v85 + v85) - 1 + (((v85 + v85) - 1) >> 63);
LABEL_54:
        v85 = (v86 >> 1);
      }

      v111[0] = v85;
      v87 = sub_F6966C(v6);
      v88 = *(v87 + 32) | (*(v87 + 36) << 32);
      v109 = 0;
      v110 = v88;
      *&v102 = -1;
      DWORD2(v102) = 0x7FFFFFFF;
      v89 = sub_F6966C(v6);
      v90 = *(v89 + 38);
      v108 = *(v89 + 38);
      v91 = *(v77 - 56);
      if (v91 >= *(v77 - 48))
      {
        v40 = sub_49CB7C(v77 - 64, &v110, &v102, v111, &v109, &v108);
      }

      else
      {
        v92 = v110;
        v93 = v111[0];
        *v91 = v109;
        v94 = DWORD2(v102);
        *(v91 + 8) = v102;
        *(v91 + 16) = v94;
        *(v91 + 24) = v93;
        *(v91 + 32) = v92;
        *(v91 + 40) = v90 | 0x100;
        *(v91 + 42) = 257;
        *(v91 + 48) = 0;
        *(v91 + 56) = 0;
        *(v91 + 64) = 0;
        *(v91 + 72) = 2139095039;
        *(v91 + 88) = 0;
        *(v91 + 96) = 0;
        *(v91 + 80) = 0;
        v40 = v91 + 104;
      }

      *(v77 - 56) = v40;
      v41 = sub_F6966C(v6);
      v42 = sub_F69058(v6);
      *(v77 - 240) = sub_48CA24(v5, v41, *v42);
      *(v77 - 232) = v43;
      v6 += 552;
    }

    while (v6 != sub_588D8(a3));
  }

  nullsub_1();
  v8 = v7[1];
  v9 = v8 - *v7;
  if (v8 != *v7)
  {
    nullsub_1();
    v11 = *v10;
    v12 = sub_73F1C(*v10);
    v13 = *(v12 + 80);
    v15 = *(v12 + 32);
    v14 = *(v12 + 48);
    v106 = *(v12 + 64);
    v16 = *(v12 + 16);
    v102 = *v12;
    v103 = v16;
    v107 = v13;
    v104 = v15;
    v105 = v14;
    HIDWORD(v106) = 1;
    sub_F68F20(v11, &v102);
    v17 = sub_F69058(v11);
    v18 = *(v17 + 16);
    v96 = *v17;
    v97 = v18;
    v20 = *(v17 + 48);
    v19 = *(v17 + 64);
    v21 = *(v17 + 32);
    v101 = *(v17 + 80);
    v99 = v20;
    v100 = v19;
    v98 = v21;
    v22 = sub_F63FF4(a3) == 1 ? 2 : 4;
    HIDWORD(v100) = v22;
    sub_F6901C(v11, &v96);
    if (v9 != 552)
    {
      v23 = 0xF128CFC4A33F128DLL * (v9 >> 3);
      v24 = 1;
      v25 = 552;
      do
      {
        nullsub_1();
        v27 = *v26;
        v28 = sub_73F1C(*v26 + v25);
        v29 = *(v28 + 80);
        v31 = *(v28 + 32);
        v30 = *(v28 + 48);
        v106 = *(v28 + 64);
        v32 = *(v28 + 16);
        v102 = *v28;
        v103 = v32;
        v107 = v29;
        v104 = v31;
        v105 = v30;
        HIDWORD(v106) = 4;
        sub_F68F20(v27 + v25, &v102);
        v33 = sub_F69058(v27 + v25);
        v34 = *(v33 + 16);
        v96 = *v33;
        v97 = v34;
        v36 = *(v33 + 48);
        v35 = *(v33 + 64);
        v37 = *(v33 + 32);
        v101 = *(v33 + 80);
        v99 = v36;
        v100 = v35;
        v98 = v37;
        if (v24 == sub_F63FF4(a3) - 1)
        {
          v38 = 2;
        }

        else
        {
          v38 = 4;
        }

        HIDWORD(v100) = v38;
        sub_F6901C(v27 + v25, &v96);
        ++v24;
        v25 += 552;
      }

      while (v23 != v24);
    }
  }
}

BOOL sub_4867C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!sub_E67BDC(a3))
  {
    return 1;
  }

  v4 = sub_45AC50(a2);
  v87 = a2;
  v5 = sub_588D8(a2);
  if (v4 == v5)
  {
LABEL_3:
    result = sub_7E7E4(3u);
    if (!result)
    {
      return result;
    }

    sub_19594F8(&v95);
    sub_4A5C(&v95, "Could not locate the user on the path", 37);
    if ((v105 & 0x10) != 0)
    {
      v12 = v104;
      if (v104 < v101)
      {
        v104 = v101;
        v12 = v101;
      }

      v13 = v100;
      v7 = v12 - v100;
      if (v12 - v100 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_86;
      }
    }

    else
    {
      if ((v105 & 8) == 0)
      {
        v7 = 0;
        v94 = 0;
LABEL_22:
        *(&__dst + v7) = 0;
        sub_7E854(&__dst, 3u);
        if (v94 < 0)
        {
          operator delete(__dst);
        }

        if (v103 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v97);
        std::ostream::~ostream();
        std::ios::~ios();
        return 0;
      }

      v13 = v98;
      v7 = v99 - v98;
      if ((v99 - v98) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_86:
        sub_3244();
      }
    }

    if (v7 >= 0x17)
    {
      operator new();
    }

    v94 = v7;
    if (v7)
    {
      memmove(&__dst, v13, v7);
    }

    goto LABEL_22;
  }

  v8 = v5;
  v9 = 0;
  while (1)
  {
    sub_48C14C(a1, a3, &v95);
    v10 = v96;
    if (v95 != v96)
    {
      break;
    }

    if (v95)
    {
      v96 = v95;
      operator delete(v95);
    }

    v4 += 69;
    v9 += 552;
    if (v4 == v8)
    {
      goto LABEL_3;
    }
  }

  sub_F69D2C(v4);
  if (sub_F695B8(v4))
  {
    v11 = 0;
    v10 = v95;
    goto LABEL_93;
  }

  sub_F68FDC();
  v88 = v15;
  v89 = v14;
  sub_F68FDC();
  v92 = v16;
  v18 = v17;
  sub_4D0560();
  v20 = v19;
  v22 = v21;
  while (2)
  {
    sub_F68FDC();
    v24 = v23;
    v26 = v25;
    if (!v20)
    {
      if (!v23)
      {
        goto LABEL_78;
      }

      v28 = 0;
LABEL_36:
      v29 = sub_F69D2C(v24);
      if (v26 < v29 && v28)
      {
        v31 = sub_F69DE0(v20, v22);
        if (v31 == sub_F69DE0(v24, v26))
        {
          goto LABEL_78;
        }
      }

      else if (((v28 ^ (v26 < v29)) & 1) == 0)
      {
        goto LABEL_78;
      }

      goto LABEL_43;
    }

    v27 = sub_F69D2C(v20);
    v28 = v22 < v27;
    if (v24)
    {
      goto LABEL_36;
    }

    if (v22 >= v27)
    {
      goto LABEL_78;
    }

LABEL_43:
    for (i = v95; i != v96; i += 104)
    {
      if (i[41] == 1)
      {
        v33 = sub_F69DE0(v20, v22)[4];
        if (*(i + 8) == v33 && i[40] == BYTE6(v33) && WORD2(v33) == *(i + 9))
        {
          v88 = v22;
          v89 = v20;
          v10 = i;
          break;
        }
      }

      sub_F68FDC();
      v35 = v34;
      v37 = v36;
      if (v18)
      {
        v38 = sub_F69D2C(v18);
        v39 = v92 < v38;
        if (!v35)
        {
          if (v92 < v38)
          {
            continue;
          }

          goto LABEL_63;
        }
      }

      else
      {
        if (!v34)
        {
          goto LABEL_63;
        }

        v39 = 0;
      }

      v40 = sub_F69D2C(v35);
      if (v37 < v40 && v39)
      {
        v42 = sub_F69DE0(v18, v92);
        if (v42 != sub_F69DE0(v35, v37))
        {
          continue;
        }
      }

      else if ((v39 ^ (v37 < v40)))
      {
        continue;
      }

LABEL_63:
      v43 = sub_F69DE0(v20, v22);
      if (*(v43 + 8) == *(i + 8) && *(i + 9) == *(v43 + 18))
      {
        v18 = v20;
        v92 = v22;
        v10 = i;
      }
    }

    sub_F68FDC();
    v45 = v44;
    v47 = v46;
    if (!v89)
    {
      if (v44)
      {
        v49 = 0;
LABEL_73:
        v50 = sub_F69D2C(v45);
        if (v47 < v50 && v49)
        {
          v52 = sub_F69DE0(v89, v88);
          if (v52 != sub_F69DE0(v45, v47))
          {
            goto LABEL_78;
          }
        }

        else if ((v49 ^ (v47 < v50)))
        {
          goto LABEL_78;
        }
      }

LABEL_29:
      ++v22;
      continue;
    }

    break;
  }

  v48 = sub_F69D2C(v89);
  v49 = v88 < v48;
  if (v45)
  {
    goto LABEL_73;
  }

  if (v88 >= v48)
  {
    goto LABEL_29;
  }

LABEL_78:
  sub_F68FDC();
  v54 = v53;
  v56 = v55;
  if (v89)
  {
    v57 = v88 < sub_F69D2C(v89);
    if (v54)
    {
      goto LABEL_80;
    }

LABEL_88:
    v59 = 0;
    goto LABEL_89;
  }

  v57 = 0;
  if (!v53)
  {
    goto LABEL_88;
  }

LABEL_80:
  v58 = sub_F69D2C(v54);
  v59 = v56 < v58;
  if (v56 < v58 && v57)
  {
    v61 = sub_F69DE0(v89, v88);
    v62 = v61 != sub_F69DE0(v54, v56);
  }

  else
  {
LABEL_89:
    v62 = v57 ^ v59;
  }

  sub_4D0560();
  v64 = v88;
  if (!v62)
  {
    v64 = v92;
  }

  v11 = v64 - v63;
LABEL_93:
  v65 = *(sub_F69DE0(v4, v11) + 38);
  v66 = sub_3AF6B4(*(a1 + 24));
  v67 = sub_2B51D8(v66, *(v10 + 8) | (*(v10 + 18) << 32));
  v68 = (v67 - *v67);
  if (*v68 < 9u || (v69 = v68[4]) == 0)
  {
    v70 = 0;
    goto LABEL_101;
  }

  v70 = 0;
  v71 = v10[3];
  if (v71 == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_101:
    v73 = v87;
    goto LABEL_102;
  }

  v72 = *(v67 + v69);
  v73 = v87;
  if (v72)
  {
    v74 = v71 / v72 * 1000000000.0;
    if (v74 >= 0.0)
    {
      if (v74 < 4.50359963e15)
      {
        v75 = (v74 + v74) + 1;
LABEL_123:
        v74 = (v75 >> 1);
      }
    }

    else if (v74 > -4.50359963e15)
    {
      v75 = (v74 + v74) - 1 + (((v74 + v74) - 1) >> 63);
      goto LABEL_123;
    }

    v84 = 1000000000.0;
    if (v74 <= 1000000000.0)
    {
      v84 = v74;
    }

    v85 = v74 < 0.0;
    v86 = 0.0;
    if (!v85)
    {
      v86 = v84;
    }

    v70 = v86;
  }

LABEL_102:
  if (v65)
  {
    v76 = 1000000000 - v70;
  }

  else
  {
    v76 = v70;
  }

  sub_48B780(a1, v73, a3, 0xF128CFC4A33F128DLL * (v9 >> 3), v11, v76);
  v77 = v95;
  if (v95)
  {
    v78 = v96;
    v79 = v95;
    if (v96 != v95)
    {
      do
      {
        v81 = *(v78 - 3);
        if (v81)
        {
          v82 = *(v78 - 2);
          v80 = *(v78 - 3);
          if (v82 != v81)
          {
            do
            {
              v83 = *(v82 - 9);
              v82 -= 4;
              if (v83 < 0)
              {
                operator delete(*v82);
              }
            }

            while (v82 != v81);
            v80 = *(v78 - 3);
          }

          *(v78 - 2) = v81;
          operator delete(v80);
        }

        v78 -= 104;
      }

      while (v78 != v77);
      v79 = v95;
    }

    v96 = v77;
    operator delete(v79);
  }

  return 1;
}

void sub_486F8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_48C8F4(va);
  _Unwind_Resume(a1);
}

void sub_486FA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_48C8F4(va);
  _Unwind_Resume(a1);
}

void sub_486FB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_48C8F4(va);
  _Unwind_Resume(a1);
}

void sub_486FC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_48C8F4(va);
  _Unwind_Resume(a1);
}

void sub_486FDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_48C8F4(va);
  _Unwind_Resume(a1);
}

void sub_486FF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_48C8F4(va);
  _Unwind_Resume(a1);
}

void sub_487004(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_48C8F4(va);
  _Unwind_Resume(a1);
}

void sub_487018(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a21 < 0)
  {
    operator delete(__p);
    sub_1959728(&a22);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a22);
  _Unwind_Resume(a1);
}

void sub_487064(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_48C8F4(va);
  _Unwind_Resume(a1);
}

void sub_487078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_48C8F4(va);
  _Unwind_Resume(a1);
}

void sub_48708C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_48C8F4(va);
  _Unwind_Resume(a1);
}

void sub_4870A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_48C8F4(va);
  _Unwind_Resume(a1);
}

void sub_4870B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_48C8F4(va);
  _Unwind_Resume(a1);
}

void sub_4870C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_48C8F4(va);
  _Unwind_Resume(a1);
}

void sub_4870DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_48C8F4(va);
  _Unwind_Resume(a1);
}

void *sub_4870F0(void *a1)
{
  v2 = a1[537];
  if (v2)
  {
    a1[538] = v2;
    operator delete(v2);
  }

  v3 = a1[534];
  if (v3)
  {
    a1[535] = v3;
    operator delete(v3);
  }

  v4 = a1[531];
  if (v4)
  {
    a1[532] = v4;
    operator delete(v4);
  }

  sub_3E3EF8(a1 + 4);
  return a1;
}

uint64_t sub_48714C()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v7 = v6;
  v27 = 20;
  strcpy(__p, "RequestWithZilchPath");
  v8 = **(v0 + 96);
  if (v8)
  {
    sub_499F74(v28, v8);
  }

  else
  {
    sub_2C0888(v28);
  }

  sub_7BDA0(1, __p, v28);
  sub_2C1D4C(v28);
  if (v27 < 0)
  {
    operator delete(*__p);
  }

  v25 = v2;
  sub_4E3D18(v37);
  sub_4E3D18(&v41);
  v49 = 0;
  v45 = 0u;
  memset(v46, 0, sizeof(v46));
  LOBYTE(v47) = 0;
  v50 = 0uLL;
  v35 = 0;
  v34 = 0;
  v36 = 0;
  v9 = *v4;
  if (*v4 != v4[1])
  {
    v10 = *(v9 + 23);
    if (v10 < 0)
    {
      v11 = *v9;
      v10 = *(v9 + 8);
    }

    else
    {
      v11 = *v4;
    }

    sub_120D19C(&v33, v11, v10);
    sub_120B450(&v32);
  }

  sub_F64D54(v28, &v34);
  v12 = v37[0];
  if (v37[0])
  {
    v13 = v37[1];
    v14 = v37[0];
    if (v37[1] != v37[0])
    {
      do
      {
        v13 = sub_4547F0(v13 - 552);
      }

      while (v13 != v12);
      v14 = v37[0];
    }

    v37[1] = v12;
    operator delete(v14);
  }

  *v37 = *v28;
  v38 = v29;
  v29 = 0;
  v28[1] = 0;
  v28[0] = 0;
  if (SHIBYTE(v40) < 0)
  {
    operator delete(v39);
    v39 = v30;
    v15 = v28[0];
    v40 = v31;
    HIBYTE(v31) = 0;
    LOBYTE(v30) = 0;
    if (v28[0])
    {
      v16 = v28[1];
      v17 = v28[0];
      if (v28[1] != v28[0])
      {
        do
        {
          v16 = sub_4547F0(v16 - 552);
        }

        while (v16 != v15);
        v17 = v28[0];
      }

      v28[1] = v15;
      operator delete(v17);
    }
  }

  else
  {
    v39 = v30;
    v40 = v31;
  }

  sub_486084(v5, v25, v37);
  if (!sub_4867C8(v5, v37, v25))
  {
    sub_4E3D18(v7);
    sub_4E3D18((v7 + 48));
    *(v7 + 168) = 0;
    *(v7 + 96) = 0u;
    *(v7 + 112) = 0u;
    *(v7 + 128) = 0u;
    *(v7 + 144) = 0;
    *(v7 + 176) = 0;
    *(v7 + 184) = 0;
    v21 = v34;
    if (!v34)
    {
      return sub_49AD08(v37);
    }

    goto LABEL_29;
  }

  *v7 = *v37;
  *(v7 + 16) = v38;
  v37[1] = 0;
  v37[0] = 0;
  *(v7 + 24) = v39;
  *(v7 + 40) = v40;
  v39 = 0uLL;
  v40 = 0;
  *(v7 + 48) = v41;
  v18 = v44;
  *(v7 + 64) = v42;
  v42 = 0;
  v41 = 0uLL;
  v19 = v43;
  *(v7 + 88) = v18;
  *(v7 + 72) = v19;
  v38 = 0;
  v43 = 0uLL;
  v44 = 0;
  *(v7 + 96) = v45;
  v20 = *(&v46[1] + 1);
  *(v7 + 112) = *&v46[0];
  v45 = 0uLL;
  *&v46[0] = 0;
  *(v7 + 120) = *(v46 + 8);
  *(v7 + 136) = v20;
  memset(v46 + 8, 0, 24);
  *(v7 + 144) = 0;
  *(v7 + 168) = 0;
  if (v49 == 1)
  {
    *(v7 + 144) = v47;
    *(v7 + 160) = v48;
    v48 = 0;
    v47 = 0uLL;
    *(v7 + 168) = 1;
  }

  *(v7 + 176) = v50;
  v21 = v34;
  if (v34)
  {
LABEL_29:
    v22 = v35;
    v23 = v21;
    if (v35 != v21)
    {
      do
      {
        v22 = sub_4547F0(v22 - 552);
      }

      while (v22 != v21);
      v23 = v34;
    }

    v35 = v21;
    operator delete(v23);
  }

  return sub_49AD08(v37);
}

void sub_487D48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&STACK[0x220]);
  sub_4AE168(&STACK[0x1308]);
  sub_487EC4(&STACK[0x1338]);
  sub_49AD08(&STACK[0x1350]);
  _Unwind_Resume(a1);
}

void **sub_487EC4(void **a1)
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
        v3 = sub_4547F0(v3 - 552);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_48A200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, void *__p)
{
  if (a65 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a66);
  if (a43 < 0)
  {
    operator delete(a38);
  }

  sub_1218EBC(&STACK[0x2B8]);
  sub_487EC4(&STACK[0x2F8]);
  sub_45B588(&STACK[0x310]);
  v67 = STACK[0x4F8];
  if (STACK[0x4F8])
  {
    STACK[0x500] = v67;
    operator delete(v67);
  }

  sub_47FADC(&STACK[0x538]);
  sub_49AD08(&STACK[0x970]);
  _Unwind_Resume(a1);
}

uint64_t sub_48A590@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (a3)
  {
    v7 = *(a1 + 64);
    v6 = *(a1 + 72);
    if (v7 == v6)
    {
      goto LABEL_18;
    }

    if (*v7)
    {
      v8 = 0;
    }

    else
    {
      v10 = *(v7 + 8);
      v11 = vabdd_f64(v10, *a1) < 2.22044605e-16 || v10 == *a1;
      v8 = 48;
      if (!v11)
      {
        v8 = 0;
      }
    }

    v7 += v8;
    if (*(v6 - 48) != ((*(a1 + 24) - *(a1 + 16)) >> 3) - 1)
    {
LABEL_18:
      v15 = 0;
    }

    else
    {
      v12 = *(v6 - 40);
      v13 = *(a1 + 8);
      if (vabdd_f64(v12, v13) < 2.22044605e-16 || v12 == v13)
      {
        v15 = -48;
      }

      else
      {
        v15 = 0;
      }
    }

    result = sub_4A1CF4(a4);
    a4[1] = result;
    *(result - 176) = *a1;
    v16 = *(a1 + 16);
    if (*(a1 + 24) != v16)
    {
      v17 = 0;
      v18 = v15 + v6;
      do
      {
        v19 = a4[1];
        v21 = *(v19 - 152);
        v20 = *(v19 - 144);
        if (v21 >= v20)
        {
          v23 = *(v19 - 160);
          v24 = v21 - v23;
          v25 = (v21 - v23) >> 3;
          v26 = v25 + 1;
          if ((v25 + 1) >> 61)
          {
            sub_1794();
          }

          v27 = v20 - v23;
          if (v27 >> 2 > v26)
          {
            v26 = v27 >> 2;
          }

          if (v27 >= 0x7FFFFFFFFFFFFFF8)
          {
            v28 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v28 = v26;
          }

          if (v28)
          {
            if (!(v28 >> 61))
            {
              operator new();
            }

            sub_1808();
          }

          v29 = v25;
          v30 = (8 * v25);
          v31 = *(v16 + 8 * v17);
          v32 = &v30[-v29];
          *v30 = v31;
          v22 = v30 + 1;
          memcpy(v32, v23, v24);
          *(v19 - 160) = v32;
          *(v19 - 152) = v22;
          *(v19 - 144) = 0;
          if (v23)
          {
            operator delete(v23);
          }
        }

        else
        {
          *v21 = *(v16 + 8 * v17);
          v22 = v21 + 8;
        }

        *(v19 - 152) = v22;
        if (v7 < v18 && *v7 == v17)
        {
          v33 = *(v7 + 8);
          v34 = a4[1];
          v35 = a4[2];
          *(v34 - 168) = v33;
          if (v34 >= v35)
          {
            v36 = sub_4A1CF4(a4);
          }

          else
          {
            *(v34 + 144) = 0u;
            *(v34 + 160) = 0u;
            *(v34 + 96) = 0u;
            *(v34 + 112) = 0u;
            *(v34 + 64) = 0u;
            *(v34 + 80) = 0u;
            *(v34 + 32) = 0u;
            *(v34 + 48) = 0u;
            *v34 = 0u;
            *(v34 + 16) = 0u;
            *(v34 + 128) = 0u;
            *(v34 + 120) = 1065353216;
            v36 = v34 + 176;
            *(v34 + 160) = 1065353216;
          }

          v7 += 48;
          a4[1] = v36;
          v37 = *(a1 + 16);
          if (v17 + 1 < (*(a1 + 24) - v37) >> 3 && (v38 = sub_48233C(a2, (v37 + 8 * v17)), v39 = v37 + 8 * (v17 + 1), __PAIR64__(*(v39 + 4), *v39) == __PAIR64__(WORD2(v38), v38)) && *(v39 + 6) == BYTE6(v38) && (v7 >= v18 || *v7 != v17))
          {
            *(a4[1] - 176) = 1.0 - v33;
          }

          else
          {
            *(a4[1] - 176) = v33;
            --v17;
          }
        }

        ++v17;
        v16 = *(a1 + 16);
      }

      while (v17 < (*(a1 + 24) - v16) >> 3);
      result = a4[1];
    }

    *(result - 168) = *(a1 + 8);
  }

  else
  {
    result = sub_4A0E48(a4, a1);
    a4[1] = result;
  }

  return result;
}

void sub_48A91C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, int a6)
{
  v7 = *(a1 + 16);
  v8 = *(a1 + 24) - v7;
  if (v8 == 8)
  {
    v9 = *v7;
    v10 = (*v7 >> 16) & 0xFFFF0000 | (*v7 << 32) | (2 * ((*v7 & 0xFF000000000000) == 0));
    v11 = sub_2B51D8(a2, *v7 & 0xFFFFFFFFFFFFLL);
    if (*(a2 + 7772) == 1)
    {
      v12 = sub_30C50C(a2 + 3896, v9, 0);
      v13 = &v12[-*v12];
      if (*v13 < 5u)
      {
        v14 = 0;
      }

      else
      {
        v14 = *(v13 + 2);
        if (v14)
        {
          v14 += &v12[*&v12[v14]];
        }
      }

      v56 = v14 + ((v9 >> 30) & 0x3FFFC) + 4 + *(v14 + ((v9 >> 30) & 0x3FFFC) + 4);
    }

    else
    {
      v56 = 0;
    }

    *&v60 = v11;
    *(&v60 + 1) = v56;
    *&v61 = sub_31D7E8(a2, v9 & 0xFFFFFFFFFFFFLL, 1);
    *(&v61 + 1) = v57;
    v62 = v9;
    sub_F69060(a5, v10, &v60, a6);
    return;
  }

  v15 = v8 >> 3;
  v74 = 0;
  v75 = 0;
  v76 = 0;
  if ((v8 >> 3) < 2)
  {
    return;
  }

  v19 = 1;
  do
  {
    v20 = *(*(a1 + 16) + 8 * v19 - 8);
    v21 = sub_2B51D8(a2, v20 & 0xFFFFFFFFFFFFLL);
    if (*(a2 + 7772) == 1)
    {
      v22 = sub_30C50C(a2 + 3896, v20, 0);
      v23 = &v22[-*v22];
      if (*v23 < 5u)
      {
        v24 = 0;
      }

      else
      {
        v24 = *(v23 + 2);
        if (v24)
        {
          v24 += &v22[*&v22[v24]];
        }
      }

      v25 = v24 + ((v20 >> 30) & 0x3FFFC) + 4 + *(v24 + ((v20 >> 30) & 0x3FFFC) + 4);
    }

    else
    {
      v25 = 0;
    }

    v26 = sub_31D7E8(a2, v20 & 0xFFFFFFFFFFFFLL, 1);
    *&v71 = v21;
    *(&v71 + 1) = v25;
    *&v72 = v26;
    *(&v72 + 1) = v27;
    v73 = v20;
    v28 = *(*(a1 + 16) + 8 * v19);
    v29 = sub_2B51D8(a2, v28 & 0xFFFFFFFFFFFFLL);
    if (*(a2 + 7772) == 1)
    {
      v30 = sub_30C50C(a2 + 3896, v28, 0);
      v31 = &v30[-*v30];
      if (*v31 < 5u)
      {
        v32 = 0;
      }

      else
      {
        v32 = *(v31 + 2);
        if (v32)
        {
          v32 += &v30[*&v30[v32]];
        }
      }

      v33 = v32 + ((v28 >> 30) & 0x3FFFC) + 4 + *(v32 + ((v28 >> 30) & 0x3FFFC) + 4);
    }

    else
    {
      v33 = 0;
    }

    v34 = sub_31D7E8(a2, v28 & 0xFFFFFFFFFFFFLL, 1);
    *&v68 = v29;
    *(&v68 + 1) = v33;
    *&v69 = v34;
    *(&v69 + 1) = v35;
    v70 = v28;
    v36 = sub_3116D0(&v71);
    sub_31BA24(a2, v36, &v74, 0, 0, 0);
    if (*(a3 + 8) != 1 || (v37 = sub_2BBF84(*a3, v73 & 0xFFFFFFFFFFFFFFLL, 0), (v38 & 1) == 0))
    {
      v37 = sub_30F984(a3, &v71);
    }

    v39 = v37;
    if (*(a3 + 8) != 1 || (v40 = sub_2BBF84(*a3, v70 & 0xFFFFFFFFFFFFFFLL, 0), (v41 & 1) == 0))
    {
      v40 = sub_30F984(a3, &v68);
    }

    v42 = v40;
    if (*(a3 + 8) != 1 || (v43 = sub_2BBF84(*a3, v73 & 0xFFFFFFFFFFFFFFLL, 0), (v44 & 1) == 0))
    {
      v43 = sub_30F984(a3, &v71);
    }

    v45 = v43;
    if (*(a3 + 8) != 1 || (v46 = sub_2BBF84(*a3, v70 & 0xFFFFFFFFFFFFFFLL, 0), (v47 & 1) == 0))
    {
      v46 = sub_30F984(a3, &v68);
    }

    v48 = v42 & v39;
    if ((v42 & v39) == v42)
    {
LABEL_35:
      v49 = 0;
      if (v48 == v39)
      {
        goto LABEL_49;
      }
    }

    else
    {
      for (i = *a4; i != *(a4 + 8); i += 4)
      {
        if ((i[3] & v39) == i[2] && (i[1] & v42) == *i)
        {
          goto LABEL_35;
        }
      }

      v49 = 1;
      if (v48 == v39)
      {
LABEL_49:
        v52 = 0;
        goto LABEL_58;
      }
    }

    for (j = *a4; j != *(a4 + 8); j += 4)
    {
      if ((j[1] & v39) == *j && (j[3] & v42) == j[2])
      {
        goto LABEL_49;
      }
    }

    v53 = *(a4 + 24);
    v54 = *(a4 + 32);
    if (v53 != v54)
    {
      while ((*(v53 + 8) & v39) != *v53 || (*(v53 + 24) & v42) != *(v53 + 16))
      {
        v53 += 40;
        if (v53 == v54)
        {
          goto LABEL_57;
        }
      }
    }

    if (v53 == v54)
    {
LABEL_57:
      v52 = 1;
    }

    else
    {
      v52 = *(v53 + 32) != 0;
    }

LABEL_58:
    v60 = v71;
    v61 = v72;
    v63 = v68;
    v62 = v73;
    v64 = v69;
    v65 = v70;
    v66 = 0;
    if (v49 | v52)
    {
      v55 = 8;
    }

    else
    {
      v55 = 0;
    }

    v67 = (v45 != 0) | (2 * (v46 != 0)) | v55 | (4 * (v75 - v74 == 80)) | v67 & 0xF0;
    sub_F692F8(a5, &v60, a6);
    ++v19;
  }

  while (v15 != v19);
  if (v74)
  {
    v75 = v74;
    operator delete(v74);
  }
}

void sub_48AE3C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 112);
  if (v3)
  {
    *(v1 - 104) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void **sub_48AE70(void **a1)
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
        v3 = sub_463370(v3 - 22);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

double sub_48AECC()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = v0;
  v13 = v12;
  if (!sub_F63D58(v9))
  {
    v14 = sub_F63FD8(v10);
    v15 = *(v14 + 16);
    v21 = *v14;
    v22 = v15;
    v16 = *(v14 + 32);
    v17 = *(v14 + 48);
    v18 = *(v14 + 64);
    v26 = *(v14 + 80);
    v24 = v17;
    v25 = v18;
    v23 = v16;
    *(&v22 + 1) = *(v8 + 56);
    v19 = sub_45AC50(v10);
    sub_F68F20(v19, &v21);
  }

  sub_486084(v11, v8, v10);
  if (!v4 || sub_48B2F0(v11, v10, v8, v6) || sub_4867C8(v11, v10, v8))
  {
    if (v2)
    {
      sub_F8E7AC(&v21, *(v11 + 24), 2);
    }

    sub_49CDB8(v13, v10);
  }

  else
  {
    sub_4E3D18(v13);
    sub_4E3D18((v13 + 48));
    *(v13 + 168) = 0;
    result = 0.0;
    *(v13 + 96) = 0u;
    *(v13 + 112) = 0u;
    *(v13 + 128) = 0u;
    *(v13 + 144) = 0;
    *(v13 + 176) = 0;
    *(v13 + 184) = 0;
  }

  return result;
}

double sub_48B0AC@<D0>(uint64_t a1@<X8>)
{
  sub_4E3D18(a1);
  sub_4E3D18((a1 + 48));
  *(a1 + 168) = 0;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  return result;
}

void sub_48B108(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  memset(v9, 0, sizeof(v9));
  v6 = a2[1];
  if (v6 != *a2)
  {
    if (0x8E38E38E38E38E39 * ((v6 - *a2) >> 4) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }

  v8 = *a2;
  v7 = a2[1];
  v12 = v9;
  while (v8 != v7)
  {
    sub_4A21A4(v8, __p);
    sub_9A5A0(&v12, __p);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }

    v8 += 144;
  }

  sub_487F20(a1, v9, a3, 0x7FFFFFFFFFFFFFFFLL, 1u, 1, 0, 0, 0);
}

void sub_48B2B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_48B2CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  sub_1A104(&a11);
  _Unwind_Resume(a1);
}

BOOL sub_48B2F0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v5 = a4;
  nullsub_1();
  v10 = v9[1] - *v9;
  if (!v10)
  {
LABEL_22:
    result = sub_7E7E4(3u);
    if (!result)
    {
      return result;
    }

    sub_19594F8(&v41);
    sub_4A5C(&v41, "Could not locate the user offset on the path", 44);
    if ((v51 & 0x10) != 0)
    {
      v32 = v50;
      if (v50 < v47)
      {
        v50 = v47;
        v32 = v47;
      }

      v33 = v46;
      v31 = v32 - v46;
      if (v32 - v46 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_42;
      }
    }

    else
    {
      if ((v51 & 8) == 0)
      {
        v31 = 0;
        v40 = 0;
LABEL_36:
        *(&__p + v31) = 0;
        sub_7E854(&__p, 3u);
        if (v40 < 0)
        {
          operator delete(__p);
        }

        if (v49 < 0)
        {
          operator delete(v48);
        }

        std::locale::~locale(&v43);
        std::ostream::~ostream();
        std::ios::~ios();
        return 0;
      }

      v33 = v44;
      v31 = v45 - v44;
      if ((v45 - v44) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_42:
        sub_3244();
      }
    }

    if (v31 >= 0x17)
    {
      operator new();
    }

    v40 = v31;
    if (v31)
    {
      memmove(&__p, v33, v31);
    }

    goto LABEL_36;
  }

  v11 = 0;
  v12 = 0xF128CFC4A33F128DLL * (v10 >> 3);
  while (1)
  {
    v14 = sub_F63CBC(a2, v11);
    v15 = sub_F6B804(v14);
    v13 = v5 - v15;
    if (v5 >= v15)
    {
      goto LABEL_6;
    }

    v16 = sub_F69D2C(v14);
    if (v16)
    {
      break;
    }

    v13 = v5;
LABEL_6:
    ++v11;
    v5 = v13;
    if (v11 == v12)
    {
      goto LABEL_22;
    }
  }

  v17 = v16;
  v18 = 0;
  while (1)
  {
    v19 = sub_F69E5C(v14, v18);
    v13 = v5 - v19;
    if (v5 < v19)
    {
      break;
    }

    ++v18;
    v5 -= v19;
    if (v17 == v18)
    {
      goto LABEL_6;
    }
  }

  v20 = *sub_73F1C(v14);
  if (v18)
  {
    v21 = 0;
  }

  else
  {
    v21 = v20;
  }

  v22 = sub_F69DE0(v14, v18);
  v23 = *v22;
  v24 = (*v22 - **v22);
  if (*v24 < 9u)
  {
    v28 = 0;
    v26 = a3;
    v27 = a1;
  }

  else
  {
    v25 = v24[4];
    v26 = a3;
    v27 = a1;
    if (v25)
    {
      v28 = *(v23 + v25);
      if (v28)
      {
        v29 = v5 / v28 * 1000000000.0;
        if (v29 >= 0.0)
        {
          if (v29 < 4.50359963e15)
          {
            v30 = (v29 + v29) + 1;
LABEL_45:
            v29 = (v30 >> 1);
          }
        }

        else if (v29 > -4.50359963e15)
        {
          v30 = (v29 + v29) - 1 + (((v29 + v29) - 1) >> 63);
          goto LABEL_45;
        }

        v34 = 1000000000.0;
        if (v29 <= 1000000000.0)
        {
          v34 = v29;
        }

        v35 = v29 < 0.0;
        v36 = 0.0;
        if (!v35)
        {
          v36 = v34;
        }

        v28 = v36;
      }
    }

    else
    {
      v28 = 0;
    }
  }

  v37 = v28 + v21;
  if (v37 >= 0x3B9ACA00)
  {
    v38 = 1000000000;
  }

  else
  {
    v38 = v37;
  }

  sub_48B780(v27, a2, v26, v11, v18, v38);
  return 1;
}

void sub_48B734(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
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

void sub_48B780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unsigned int a6)
{
  nullsub_1();
  v13 = *v12;
  nullsub_1();
  LODWORD(v94) = *sub_73F1C(*v14);
  LOBYTE(v97) = 0;
  v96 = 0uLL;
  v95 = 0;
  *(&v97 + 1) = 0x3FF0000000000000;
  v98[0] = 1;
  *&v98[8] = 0;
  *&v98[16] = 0;
  __p[0] = 2359296000;
  *(__p + 7) = 0;
  sub_F68F20(v13, &v94);
  nullsub_1();
  v16 = v15;
  nullsub_1();
  v18 = *(v17 + 8);
  v19 = sub_45AC50(a2);
  v20 = sub_45AC50(a2);
  v91 = a4;
  v21 = 552 * a4;
  sub_49BC88(v16, v18, v19, (v20 + v21), 0xF128CFC4A33F128DLL * ((v20 + v21 - v19) >> 3));
  nullsub_1();
  v23 = v22;
  v24 = v22[1];
  if (v24 >= v22[2])
  {
    v25 = sub_49B658(v22);
  }

  else
  {
    sub_F68960(v22[1]);
    v25 = v24 + 552;
    v23[1] = v24 + 552;
  }

  v23[1] = v25;
  nullsub_1();
  v27 = v26;
  v28 = sub_45AC50(a2);
  v29 = (sub_45AC50(a2) + v21);
  if (v29 != v28)
  {
    v30 = *(v27 + 8);
    if (v29 != v30)
    {
      do
      {
        sub_49C304(v28, v29);
        v29 = (v29 + 552);
        v28 += 552;
      }

      while (v29 != v30);
      v30 = *(v27 + 8);
    }

    while (v30 != v28)
    {
      v30 -= 552;
      sub_4547F0(v30);
    }

    *(v27 + 8) = v28;
  }

  v90 = a1;
  v31 = 24 * v91;
  if (v91)
  {
    v32 = *(a2 + 96);
    v33 = *(a2 + 104);
    if (v32 + v31 == v33)
    {
      if (v33 == v32)
      {
LABEL_23:
        *(a2 + 104) = v32;
        goto LABEL_24;
      }
    }

    else
    {
      do
      {
        v35 = *v32;
        if (*v32)
        {
          *(v32 + 8) = v35;
          operator delete(v35);
          *v32 = 0;
          *(v32 + 8) = 0;
          *(v32 + 16) = 0;
        }

        v34 = (v32 + v31);
        *v32 = *(v32 + 24 * v91);
        *(v32 + 16) = *(v32 + v31 + 16);
        *v34 = 0;
        v34[1] = 0;
        v34[2] = 0;
        v32 += 24;
      }

      while (v32 + v31 != v33);
      v33 = *(a2 + 104);
      if (v33 == v32)
      {
        goto LABEL_23;
      }
    }

    v36 = v33;
    do
    {
      v38 = *(v36 - 24);
      v36 -= 24;
      v37 = v38;
      if (v38)
      {
        *(v33 - 16) = v37;
        operator delete(v37);
      }

      v33 = v36;
    }

    while (v36 != v32);
    goto LABEL_23;
  }

LABEL_24:
  nullsub_1();
  v40 = *v39;
  nullsub_1();
  v42 = (*(v41 + 8) - 552);
  v43 = *(a2 + 96);
  if (a5)
  {
    v44 = sub_5FC64(v40);
    v45 = sub_5FC64(v40);
    sub_F6B080(v42, v44, v45 + 88 * a5);
    if (a5 + 1 == sub_F69D2C(v40))
    {
      goto LABEL_26;
    }

LABEL_29:
    v52 = sub_5FC64(v40);
    v53 = sub_5FC64(v40);
    sub_F6B74C(v40, v52, (v53 + 88 * a5), 1);
    if (!a5)
    {
      goto LABEL_33;
    }

    goto LABEL_30;
  }

  v49 = sub_F695C8(v40);
  v50 = sub_F69654(v40);
  v51 = sub_F692C8(v40, 0);
  sub_F69060(v42, v49, v50, v51);
  if (sub_F69D2C(v40) != 1)
  {
    goto LABEL_29;
  }

LABEL_26:
  v46 = sub_F69610(v40);
  v47 = sub_F6966C(v40);
  v48 = sub_F692C8(v40, a5);
  sub_F69060(v40, v46, v47, v48);
  if (!a5)
  {
    goto LABEL_33;
  }

LABEL_30:
  v55 = *v43;
  v54 = v43[1];
  v56 = *v43 + 4 * a5;
  v57 = v54 - v56;
  if (v54 != v56)
  {
    memmove(*v43, v56, v54 - v56);
  }

  v43[1] = &v55[v57];
LABEL_33:
  v108 = 0;
  v109 = 0;
  v111 = 0;
  v110 = 0;
  v112 = 0x3FF0000000000000;
  v113 = 1;
  v114 = 0;
  v115 = 0;
  v116 = 0x18CA00000;
  v117 = 0;
  v118 = 0;
  v107 = a6;
  if (sub_F695B8(v40))
  {
    v58 = sub_F69058(v40);
    if (v107 > *v58)
    {
      v107 = *sub_F69058(v40);
    }
  }

  v59 = sub_73F1C(v40);
  sub_F68F20(v42, v59);
  sub_F6901C(v42, &v107);
  v110 = *(a3 + 56);
  sub_F68F20(v40, &v107);
  v60 = *(a2 + 120);
  v61 = 480 * v91;
  if (480 * v91)
  {
    v62 = *(a2 + 128);
    if ((v60 + v61) != v62)
    {
      do
      {
        sub_49C5C0(v60, (v60 + v61));
        v60 += 240;
      }

      while ((v60 + v61) != v62);
      v62 = *(a2 + 128);
    }

    while (v62 != v60)
    {
      v62 -= 30;
      sub_49AEC0(v62);
    }

    *(a2 + 128) = v60;
    v60 = *(a2 + 120);
  }

  v63 = *(v60 + 176);
  v64 = sub_F69654(v40);
  v66 = (*v64 - **v64);
  v67 = 0.0;
  if (*v66 >= 9u)
  {
    v68 = v66[4];
    if (v68)
    {
      LODWORD(v67) = *(*v64 + v68);
      v67 = *&v67;
    }
  }

  LODWORD(v65) = v107;
  v69 = v67 * (v65 / 1000000000.0);
  if (v69 >= 0.0)
  {
    if (v69 >= 4.50359963e15)
    {
      goto LABEL_52;
    }

    v70 = (v69 + v69) + 1;
  }

  else
  {
    if (v69 <= -4.50359963e15)
    {
      goto LABEL_52;
    }

    v70 = (v69 + v69) - 1 + (((v69 + v69) - 1) >> 63);
  }

  v69 = (v70 >> 1);
LABEL_52:
  *(v63 + 24) = v69;
  v71 = sub_F69654(v40);
  *(v63 + 32) = *(v71 + 32) | (*(v71 + 36) << 32);
  *(v63 + 40) = *(sub_F69654(v40) + 38) | 0x100;
  *(v60 + 224) = 1;
  if (sub_E67BDC(a3))
  {
    *v60 = *a3;
    v72 = *(a3 + 16);
    v73 = *(a3 + 32);
    v74 = *(a3 + 48);
    *(v60 + 63) = *(a3 + 63);
    *(v60 + 32) = v73;
    *(v60 + 48) = v74;
    *(v60 + 16) = v72;
    if (v60 != a3)
    {
      sub_146EC((v60 + 72), *(a3 + 72), *(a3 + 80), (*(a3 + 80) - *(a3 + 72)) >> 2);
    }

    v75 = *(a3 + 96);
    *(v60 + 112) = *(a3 + 112);
    *(v60 + 96) = v75;
    v76 = *(a3 + 120);
    *(v60 + 136) = *(a3 + 136);
    *(v60 + 120) = v76;
    sub_3E428((v60 + 152), a3 + 152);
  }

  else
  {
    v77 = sub_3AF6B4(*(v90 + 24));
    v78 = sub_F69654(v40);
    v79 = sub_73F1C(v40);
    v92 = sub_48CA24(v77, v78, *v79);
    v93 = v80;
    sub_E6793C(&v94, &v92);
    v81 = v94;
    *(v60 + 8) = v95;
    *v60 = v81;
    v82 = v96;
    v83 = v97;
    v84 = *v98;
    *(v60 + 63) = *&v98[15];
    *(v60 + 32) = v83;
    *(v60 + 48) = v84;
    *(v60 + 16) = v82;
    v85 = *(v60 + 72);
    if (v85)
    {
      *(v60 + 80) = v85;
      operator delete(v85);
      *(v60 + 72) = 0;
      *(v60 + 80) = 0;
      *(v60 + 88) = 0;
    }

    v86 = *(v60 + 152);
    *(v60 + 72) = *__p;
    *(v60 + 88) = v100;
    __p[0] = 0;
    __p[1] = 0;
    v100 = 0;
    v87 = v102;
    *(v60 + 96) = v101;
    *(v60 + 112) = v87;
    *(v60 + 120) = v103;
    *(v60 + 136) = v104;
    if (v86)
    {
      operator delete(v86);
      *(v60 + 152) = 0;
      *(v60 + 160) = 0;
      *(v60 + 168) = 0;
      v86 = __p[0];
    }

    *(v60 + 152) = v105;
    *(v60 + 160) = v106;
    v105 = 0;
    v106 = 0uLL;
    if (v86)
    {
      __p[1] = v86;
      operator delete(v86);
    }
  }

  if (*(a2 + 168) == 1 && v91)
  {
    v88 = *(a2 + 144);
    for (i = *(a2 + 152); v88 + v31 != i; v88 += 24)
    {
      *v88 = *(v88 + 24 * v91);
      *(v88 + 8) = *(v88 + v31 + 8);
      *(v88 + 16) = *(v88 + v31 + 16);
    }

    *(a2 + 152) = v88;
  }
}

void sub_48C124(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_48C14C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a4@<X8>)
{
  v28 = 0u;
  v29 = 0u;
  v30 = 1065353216;
  sub_4D0560();
  v8 = v7;
  v10 = v9;
  sub_F68FDC();
  sub_48C354(v8, v10, v11, v12, &v28);
  sub_48C4E8(a1, a2, &v28, &v24);
  v13 = v24;
  a4[1] = 0;
  a4[2] = 0;
  *a4 = 0;
  if (v13)
  {
    sub_48C748(a4, 0x4EC4EC4EC4EC4EC5 * ((v27 - v26) >> 3));
    v14 = v26;
    v15 = v27;
    while (v14 != v15)
    {
      if (*v14 <= *(a1 + 8))
      {
        v17 = a4[1];
        if (v17 >= a4[2])
        {
          v16 = sub_4A2480(a4, v14);
        }

        else
        {
          *v17 = *v14;
          v18 = *(v14 + 16);
          v19 = *(v14 + 32);
          v20 = *(v14 + 48);
          *(v17 + 64) = *(v14 + 64);
          *(v17 + 32) = v19;
          *(v17 + 48) = v20;
          *(v17 + 16) = v18;
          *(v17 + 72) = *(v14 + 72);
          sub_49DD80((v17 + 80), (v14 + 80));
          v16 = v17 + 104;
        }

        a4[1] = v16;
      }

      v14 += 104;
    }
  }

  if (v24 == 1)
  {
    sub_49AEC0(v25);
  }

  v21 = v29;
  if (v29)
  {
    do
    {
      v22 = *v21;
      operator delete(v21);
      v21 = v22;
    }

    while (v22);
  }

  v23 = v28;
  *&v28 = 0;
  if (v23)
  {
    operator delete(v23);
  }
}

void sub_48C2EC(_Unwind_Exception *a1, uint64_t a2, char a3, uint64_t a4, char a5, ...)
{
  va_start(va, a5);
  sub_48C8F4(v5);
  if (a5)
  {
    sub_49AEC0(va);
    sub_11BD8(v6 - 112);
    _Unwind_Resume(a1);
  }

  sub_11BD8(v6 - 112);
  _Unwind_Resume(a1);
}

void *sub_48C354(void *a1, unint64_t a2, void *a3, unint64_t a4, void *a5)
{
  if (a1)
  {
    if (a3)
    {
      while (1)
      {
        v11 = sub_F69D2C(a1);
        v12 = sub_F69D2C(a3);
        if (a2 >= v11 || a4 >= v12)
        {
          if (a2 < v11 == a4 < v12)
          {
            return a5;
          }
        }

        else
        {
          v13 = sub_F69DE0(a1, a2);
          if (v13 == sub_F69DE0(a3, a4))
          {
            return a5;
          }
        }

        v10 = sub_F69DE0(a1, a2);
        v17 = *(v10 + 8) | (*(v10 + 18) << 32);
        sub_49B7A4(a5, &v17, &v17);
        ++a2;
      }
    }

    while (a2 < sub_F69D2C(a1))
    {
      v14 = sub_F69DE0(a1, a2);
      v17 = *(v14 + 8) | (*(v14 + 18) << 32);
      sub_49B7A4(a5, &v17, &v17);
      ++a2;
    }
  }

  else if (a3)
  {
    while (a4 < sub_F69D2C(a3))
    {
      v15 = sub_F69DE0(0, a2);
      v17 = *(v15 + 8) | (*(v15 + 18) << 32);
      sub_49B7A4(a5, &v17, &v17);
      ++a2;
    }
  }

  return a5;
}

uint64_t sub_48C4E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_11ABC60(v22, *(a1 + 24), 3, 1, 0);
  v7 = *(a2 + 48);
  v23[2] = *(a2 + 32);
  *v24 = v7;
  *&v24[15] = *(a2 + 63);
  v8 = *(a2 + 16);
  v23[0] = *a2;
  v23[1] = v8;
  v26 = 0;
  v27 = 0;
  v25 = 0;
  v10 = *(a2 + 72);
  v9 = *(a2 + 80);
  if (v9 != v10)
  {
    if (((v9 - v10) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v28 = *(a2 + 96);
  v29 = *(a2 + 112);
  v30 = *(a2 + 120);
  v31 = *(a2 + 136);
  sub_81988(&v32, a2 + 152);
  __p = 0;
  v20 = 0;
  v21 = 0;
  sub_4A0B4C(&__p, v23, &v33, 1uLL);
  v17 = -1;
  v18 = 0x7FFFFFFF;
  sub_11ABFD4(v22, a2, &__p, 1u, 0, 0, a3, a4, &v17);
  v11 = __p;
  if (__p)
  {
    v12 = v20;
    v13 = __p;
    if (v20 != __p)
    {
      do
      {
        v14 = *(v12 - 3);
        if (v14)
        {
          operator delete(v14);
        }

        v15 = *(v12 - 13);
        if (v15)
        {
          *(v12 - 12) = v15;
          operator delete(v15);
        }

        v12 -= 176;
      }

      while (v12 != v11);
      v13 = __p;
    }

    v20 = v11;
    operator delete(v13);
  }

  if (v32)
  {
    operator delete(v32);
  }

  if (v25)
  {
    v26 = v25;
    operator delete(v25);
  }

  return sub_11ABFD0(v22);
}

void sub_48C6E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  sub_48C9A4(&a11);
  sub_44D36C(&a37);
  sub_11ABFD0(&a14);
  _Unwind_Resume(a1);
}

void sub_48C70C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *__p, uint64_t a47)
{
  if (__p)
  {
    a47 = __p;
    operator delete(__p);
    sub_11ABFD0(&a14);
    _Unwind_Resume(a1);
  }

  sub_11ABFD0(&a14);
  _Unwind_Resume(a1);
}

void sub_48C748(void *a1, unint64_t a2)
{
  if (0x4EC4EC4EC4EC4EC5 * ((a1[2] - *a1) >> 3) < a2)
  {
    if (a2 < 0x276276276276277)
    {
      operator new();
    }

    sub_1794();
  }
}

char **sub_48C8F4(char **a1)
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
        v6 = *(v3 - 3);
        if (v6)
        {
          v7 = *(v3 - 2);
          v5 = *(v3 - 3);
          if (v7 != v6)
          {
            do
            {
              v8 = *(v7 - 9);
              v7 -= 4;
              if (v8 < 0)
              {
                operator delete(*v7);
              }
            }

            while (v7 != v6);
            v5 = *(v3 - 3);
          }

          *(v3 - 2) = v6;
          operator delete(v5);
        }

        v3 -= 104;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

char **sub_48C9A4(char **a1)
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
          operator delete(v5);
        }

        v6 = *(v3 - 13);
        if (v6)
        {
          *(v3 - 12) = v6;
          operator delete(v6);
        }

        v3 -= 176;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

unint64_t sub_48CA24(void *a1, uint64_t a2, unsigned int a3)
{
  sub_2B7A20(a1, *(a2 + 32) & 0xFFFFFFFFFFFFFFLL, &v8);
  v4 = v9;
  if (v9 == v10)
  {
    v6 = 0xFFFFFFFF00000000;
    v5 = 0xFFFFFFFFLL;
    if (!v9)
    {
      return v5 | v6;
    }

    goto LABEL_9;
  }

  sub_31BF20(&v8, v11);
  sub_31214(v11, 0, &v12, a3 / 1000000000.0);
  v5 = *(v13 - 12);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  if (v12)
  {
    v13 = v12;
    operator delete(v12);
  }

  if (v11[0])
  {
    v11[1] = v11[0];
    operator delete(v11[0]);
  }

  v6 = v5 & 0xFFFFFFFF00000000;
  v4 = v9;
  v5 = v5;
  if (v9)
  {
LABEL_9:
    v10 = v4;
    operator delete(v4);
  }

  return v5 | v6;
}

void sub_48CB10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
    v16 = a10;
    if (!a10)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v16 = a10;
    if (!a10)
    {
      goto LABEL_3;
    }
  }

  operator delete(v16);
  _Unwind_Resume(exception_object);
}

void sub_48CB5C(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v9 = 15;
  strcpy(v8, "UserPathDecoder");
  __p[0] = 0;
  __p[1] = 0;
  v7 = 0;
  v5 = sub_3AEC94(a2, v8, __p);
  sub_4932A4(a1, v5);
}

void sub_48CF14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  sub_5BF68((v25 - 72));
  sub_21DB4B4(v24);
  _Unwind_Resume(a1);
}

void sub_48CF48(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void **a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  sub_1A104(&a22);
  JUMPOUT(0x48CF84);
}

void sub_48CFC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  v22 = v19[9];
  if (v22)
  {
    v19[10] = v22;
    operator delete(v22);
  }

  v23 = *v20;
  if (*v20)
  {
    v19[7] = v23;
    operator delete(v23);
  }

  _Unwind_Resume(exception_object);
}

void sub_48D010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = __chkstk_darwin(a1, a2, a3, a4, a5, a6, a7, a8);
  v11 = 17;
  strcpy(__p, "RequestWithGeoIds");
  v9 = **(v8 + 96);
  if (v9)
  {
    sub_499F74(v12, v9);
  }

  else
  {
    sub_2C0888(v12);
  }

  sub_7BDA0(1, __p, v12);
  sub_2C1D4C(v12);
  if (v11 < 0)
  {
    operator delete(*__p);
  }

  sub_4E3D18(v13);
  sub_4E3D18(v14);
  v16 = 0;
  memset(&v14[3], 0, 48);
  LOBYTE(v15) = 0;
  v18 = 0;
  v17 = 0;
  sub_4A2FC8(v12, *(v8 + 24));
}

void sub_48D494(_Unwind_Exception *a1)
{
  sub_454784(v1);
  sub_4870F0(&STACK[0x268]);
  sub_49AD08(&STACK[0x1350]);
  _Unwind_Resume(a1);
}

void sub_48D538(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_3AF6B4(*(a1 + 24));
  v6 = sub_45AC50(a3);
  if (v6 != sub_588D8(a3))
  {
    v39.f64[0] = NAN;
    v39.f64[1] = NAN;
    v95 = vnegq_f64(v39);
    do
    {
      v44 = a3[16];
      if (v44 >= a3[17])
      {
        v45 = sub_49C7F4(a3 + 15);
      }

      else
      {
        *(v44 + 8) = 0u;
        *(v44 + 24) = 0u;
        *(v44 + 40) = 0u;
        *(v44 + 56) = 0u;
        *(v44 + 72) = 0u;
        *(v44 + 88) = 0u;
        *(v44 + 104) = 0u;
        *v44 = -1;
        *(v44 + 8) = 0x7FFFFFFF;
        *(v44 + 16) = -1;
        *(v44 + 24) = -1;
        *(v44 + 32) = 0x7FFFFFFFFFFFFFFFLL;
        *(v44 + 48) = -1935635296;
        *(v44 + 56) = 0;
        *(v44 + 63) = 0;
        *(v44 + 72) = 0;
        *(v44 + 80) = 0;
        *(v44 + 88) = 0;
        *(v44 + 96) = 0;
        *(v44 + 104) = 0x7FFFFFFFFFFFFFFFLL;
        *(v44 + 112) = 100;
        *(v44 + 120) = 0;
        *(v44 + 128) = 0;
        *(v44 + 136) = v95;
        *(v44 + 216) = 0;
        *(v44 + 200) = 0u;
        *(v44 + 184) = 0u;
        *(v44 + 168) = 0u;
        *(v44 + 152) = 0u;
        *(v44 + 224) = 1;
        *(v44 + 236) = 0;
        *(v44 + 228) = 0;
        v45 = v44 + 240;
      }

      a3[16] = v45;
      if (v6 == sub_45AC50(a3))
      {
        v46 = 1;
      }

      else
      {
        v46 = 3;
      }

      *(v45 - 16) = v46;
      v47 = sub_F69654(v6);
      v49 = (*v47 - **v47);
      v50 = 0.0;
      if (*v49 >= 9u)
      {
        v51 = v49[4];
        if (v51)
        {
          LODWORD(v48) = *(*v47 + v51);
          v50 = v48;
        }
      }

      LODWORD(v52) = *sub_73F1C(v6);
      v53 = v50 * (v52 / 1000000000.0);
      v54 = (v53 + v53);
      v55 = ((v54 - 1) / 2);
      if (v53 <= -4.50359963e15)
      {
        v55 = v53;
      }

      v56 = ((v54 + 1) >> 1);
      if (v53 >= 4.50359963e15)
      {
        v56 = v53;
      }

      if (v53 >= 0.0)
      {
        v57 = v56;
      }

      else
      {
        v57 = v55;
      }

      *&v96 = v57;
      v58 = sub_F69654(v6);
      v59 = *(v58 + 32) | (*(v58 + 36) << 32);
      v110 = 0;
      v111[0] = v59;
      *&v102 = -1;
      DWORD2(v102) = 0x7FFFFFFF;
      v60 = sub_F69654(v6);
      v61 = *(v60 + 38);
      LOBYTE(v109) = *(v60 + 38);
      v62 = *(v45 - 56);
      if (v62 >= *(v45 - 48))
      {
        v66 = sub_49CB7C(v45 - 64, v111, &v102, &v96, &v110, &v109);
      }

      else
      {
        v63 = v111[0];
        v64 = v96;
        *v62 = v110;
        v65 = DWORD2(v102);
        *(v62 + 8) = v102;
        *(v62 + 16) = v65;
        *(v62 + 24) = v64;
        *(v62 + 32) = v63;
        *(v62 + 40) = v61 | 0x100;
        *(v62 + 42) = 257;
        *(v62 + 48) = 0;
        *(v62 + 56) = 0;
        *(v62 + 64) = 0;
        *(v62 + 72) = 2139095039;
        *(v62 + 88) = 0;
        *(v62 + 96) = 0;
        *(v62 + 80) = 0;
        v66 = v62 + 104;
      }

      *(v45 - 56) = v66;
      v67 = sub_F69654(v6);
      v68 = sub_73F1C(v6);
      *(v45 - 240) = sub_48CA24(v5, v67, *v68);
      *(v45 - 232) = v69;
      if (v6 == sub_45AC50(a3) && sub_E67BDC(a2))
      {
        v70 = v45 - 240;
        *v70 = *a2;
        v71 = *(a2 + 16);
        v72 = *(a2 + 32);
        v73 = *(a2 + 48);
        *(v70 + 63) = *(a2 + 63);
        *(v70 + 32) = v72;
        *(v70 + 48) = v73;
        *(v70 + 16) = v71;
        if (v45 - 240 != a2)
        {
          sub_146EC((v45 - 168), *(a2 + 72), *(a2 + 80), (*(a2 + 80) - *(a2 + 72)) >> 2);
        }

        v74 = *(a2 + 96);
        *(v45 - 128) = *(a2 + 112);
        *(v45 - 144) = v74;
        v75 = *(a2 + 120);
        *(v45 - 104) = *(a2 + 136);
        *(v45 - 120) = v75;
        sub_3E428((v45 - 88), a2 + 152);
      }

      v76 = a3[16];
      if (v76 >= a3[17])
      {
        v77 = sub_49C7F4(a3 + 15);
      }

      else
      {
        *(v76 + 8) = 0u;
        *(v76 + 24) = 0u;
        *(v76 + 40) = 0u;
        *(v76 + 56) = 0u;
        *(v76 + 72) = 0u;
        *(v76 + 88) = 0u;
        *(v76 + 104) = 0u;
        *v76 = -1;
        *(v76 + 8) = 0x7FFFFFFF;
        *(v76 + 16) = -1;
        *(v76 + 24) = -1;
        *(v76 + 32) = 0x7FFFFFFFFFFFFFFFLL;
        *(v76 + 48) = -1935635296;
        *(v76 + 56) = 0;
        *(v76 + 63) = 0;
        *(v76 + 72) = 0;
        *(v76 + 80) = 0;
        *(v76 + 88) = 0;
        *(v76 + 96) = 0;
        *(v76 + 104) = 0x7FFFFFFFFFFFFFFFLL;
        *(v76 + 112) = 100;
        *(v76 + 120) = 0;
        *(v76 + 128) = 0;
        *(v76 + 136) = v95;
        *(v76 + 216) = 0;
        *(v76 + 200) = 0u;
        *(v76 + 184) = 0u;
        *(v76 + 168) = 0u;
        *(v76 + 152) = 0u;
        *(v76 + 224) = 1;
        *(v76 + 236) = 0;
        *(v76 + 228) = 0;
        v77 = v76 + 240;
      }

      a3[16] = v77;
      if (v6 == sub_588D8(a3) - 552)
      {
        v78 = 2;
      }

      else
      {
        v78 = 3;
      }

      *(v77 - 16) = v78;
      v79 = sub_F6C814(v6);
      v81 = (*v79 - **v79);
      v82 = 0.0;
      if (*v81 >= 9u)
      {
        v83 = v81[4];
        if (v83)
        {
          LODWORD(v80) = *(*v79 + v83);
          v82 = v80;
        }
      }

      LODWORD(v84) = *sub_F69058(v6);
      v85 = v82 * (v84 / 1000000000.0);
      if (v85 >= 0.0)
      {
        if (v85 < 4.50359963e15)
        {
          v86 = (v85 + v85) + 1;
          goto LABEL_54;
        }
      }

      else if (v85 > -4.50359963e15)
      {
        v86 = (v85 + v85) - 1 + (((v85 + v85) - 1) >> 63);
LABEL_54:
        v85 = (v86 >> 1);
      }

      v111[0] = v85;
      v87 = sub_F6C814(v6);
      v88 = *(v87 + 32) | (*(v87 + 36) << 32);
      v109 = 0;
      v110 = v88;
      *&v102 = -1;
      DWORD2(v102) = 0x7FFFFFFF;
      v89 = sub_F6C814(v6);
      v90 = *(v89 + 38);
      v108 = *(v89 + 38);
      v91 = *(v77 - 56);
      if (v91 >= *(v77 - 48))
      {
        v40 = sub_49CB7C(v77 - 64, &v110, &v102, v111, &v109, &v108);
      }

      else
      {
        v92 = v110;
        v93 = v111[0];
        *v91 = v109;
        v94 = DWORD2(v102);
        *(v91 + 8) = v102;
        *(v91 + 16) = v94;
        *(v91 + 24) = v93;
        *(v91 + 32) = v92;
        *(v91 + 40) = v90 | 0x100;
        *(v91 + 42) = 257;
        *(v91 + 48) = 0;
        *(v91 + 56) = 0;
        *(v91 + 64) = 0;
        *(v91 + 72) = 2139095039;
        *(v91 + 88) = 0;
        *(v91 + 96) = 0;
        *(v91 + 80) = 0;
        v40 = v91 + 104;
      }

      *(v77 - 56) = v40;
      v41 = sub_F6C814(v6);
      v42 = sub_F69058(v6);
      *(v77 - 240) = sub_48CA24(v5, v41, *v42);
      *(v77 - 232) = v43;
      v6 += 552;
    }

    while (v6 != sub_588D8(a3));
  }

  nullsub_1();
  v8 = v7[1];
  v9 = v8 - *v7;
  if (v8 != *v7)
  {
    nullsub_1();
    v11 = *v10;
    v12 = sub_73F1C(*v10);
    v13 = *(v12 + 80);
    v15 = *(v12 + 32);
    v14 = *(v12 + 48);
    v106 = *(v12 + 64);
    v16 = *(v12 + 16);
    v102 = *v12;
    v103 = v16;
    v107 = v13;
    v104 = v15;
    v105 = v14;
    HIDWORD(v106) = 1;
    sub_F68F20(v11, &v102);
    v17 = sub_F69058(v11);
    v18 = *(v17 + 16);
    v96 = *v17;
    v97 = v18;
    v20 = *(v17 + 48);
    v19 = *(v17 + 64);
    v21 = *(v17 + 32);
    v101 = *(v17 + 80);
    v99 = v20;
    v100 = v19;
    v98 = v21;
    v22 = sub_F63FF4(a3) == 1 ? 2 : 4;
    HIDWORD(v100) = v22;
    sub_F6901C(v11, &v96);
    if (v9 != 552)
    {
      v23 = 0xF128CFC4A33F128DLL * (v9 >> 3);
      v24 = 1;
      v25 = 552;
      do
      {
        nullsub_1();
        v27 = *v26;
        v28 = sub_73F1C(*v26 + v25);
        v29 = *(v28 + 80);
        v31 = *(v28 + 32);
        v30 = *(v28 + 48);
        v106 = *(v28 + 64);
        v32 = *(v28 + 16);
        v102 = *v28;
        v103 = v32;
        v107 = v29;
        v104 = v31;
        v105 = v30;
        HIDWORD(v106) = 4;
        sub_F68F20(v27 + v25, &v102);
        v33 = sub_F69058(v27 + v25);
        v34 = *(v33 + 16);
        v96 = *v33;
        v97 = v34;
        v36 = *(v33 + 48);
        v35 = *(v33 + 64);
        v37 = *(v33 + 32);
        v101 = *(v33 + 80);
        v99 = v36;
        v100 = v35;
        v98 = v37;
        if (v24 == sub_F63FF4(a3) - 1)
        {
          v38 = 2;
        }

        else
        {
          v38 = 4;
        }

        HIDWORD(v100) = v38;
        sub_F6901C(v27 + v25, &v96);
        ++v24;
        v25 += 552;
      }

      while (v23 != v24);
    }
  }
}

BOOL sub_48DC7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!sub_E67BDC(a3))
  {
    return 1;
  }

  v4 = sub_45AC50(a2);
  if (v4 != sub_588D8(a2))
  {
    sub_4934F4(a1, a3);
  }

  result = sub_7E7E4(3u);
  if (result)
  {
    sub_19594F8(&v13);
    sub_4A5C(&v13, "Could not locate the user on the path", 37);
    if ((v23 & 0x10) != 0)
    {
      v7 = v22;
      if (v22 < v19)
      {
        v22 = v19;
        v7 = v19;
      }

      v8 = v18;
      v6 = v7 - v18;
      if (v7 - v18 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_22;
      }
    }

    else
    {
      if ((v23 & 8) == 0)
      {
        v6 = 0;
        v12 = 0;
LABEL_16:
        *(&__dst + v6) = 0;
        sub_7E854(&__dst, 3u);
        if (v12 < 0)
        {
          operator delete(__dst);
        }

        if (v21 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v15);
        std::ostream::~ostream();
        std::ios::~ios();
        return 0;
      }

      v8 = v16;
      v6 = v17 - v16;
      if ((v17 - v16) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_22:
        sub_3244();
      }
    }

    if (v6 >= 0x17)
    {
      operator new();
    }

    v12 = v6;
    if (v6)
    {
      memmove(&__dst, v8, v6);
    }

    goto LABEL_16;
  }

  return result;
}

void sub_48E440(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_48C8F4(va);
  _Unwind_Resume(a1);
}

void sub_48E454(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_48C8F4(va);
  _Unwind_Resume(a1);
}

void sub_48E468(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_48C8F4(va);
  _Unwind_Resume(a1);
}

void sub_48E47C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_48C8F4(va);
  _Unwind_Resume(a1);
}

void sub_48E490(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_48C8F4(va);
  _Unwind_Resume(a1);
}

void sub_48E4A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_48C8F4(va);
  _Unwind_Resume(a1);
}

void sub_48E4B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_48C8F4(va);
  _Unwind_Resume(a1);
}

void sub_48E4CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a21 < 0)
  {
    operator delete(__p);
    sub_1959728(&a22);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a22);
  _Unwind_Resume(a1);
}

void sub_48E518(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_48C8F4(va);
  _Unwind_Resume(a1);
}

void sub_48E52C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_48C8F4(va);
  _Unwind_Resume(a1);
}

void sub_48E540(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_48C8F4(va);
  _Unwind_Resume(a1);
}

void sub_48E554(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_48C8F4(va);
  _Unwind_Resume(a1);
}

void sub_48E568(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_48C8F4(va);
  _Unwind_Resume(a1);
}

void sub_48E57C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_48C8F4(va);
  _Unwind_Resume(a1);
}

void sub_48E590(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_48C8F4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_48E5A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = __chkstk_darwin(a1, a2, a3, a4, a5, a6, a7, a8);
  v10 = v9;
  v12 = v11;
  v13 = v8;
  v15 = v14;
  v35 = 20;
  strcpy(__p, "RequestWithZilchPath");
  v16 = **(v8 + 96);
  if (v16)
  {
    sub_499F74(v36, v16);
  }

  else
  {
    sub_2C0888(v36);
  }

  sub_7BDA0(1, __p, v36);
  sub_2C1D4C(v36);
  if (v35 < 0)
  {
    operator delete(*__p);
  }

  v33 = v10;
  sub_4E3D18(v45);
  sub_4E3D18(&v49);
  v57 = 0;
  v53 = 0u;
  memset(v54, 0, sizeof(v54));
  LOBYTE(v55) = 0;
  v58 = 0uLL;
  v43 = 0;
  v42 = 0;
  v44 = 0;
  v17 = *v12;
  if (*v12 != v12[1])
  {
    v18 = *(v17 + 23);
    if (v18 < 0)
    {
      v19 = *v17;
      v18 = *(v17 + 8);
    }

    else
    {
      v19 = *v12;
    }

    sub_120D19C(&v41, v19, v18);
    sub_120B450(&v40);
  }

  sub_F63300(v36, &v42);
  v20 = v45[0];
  if (v45[0])
  {
    v21 = v45[1];
    v22 = v45[0];
    if (v45[1] != v45[0])
    {
      do
      {
        v21 = sub_4547F0(v21 - 552);
      }

      while (v21 != v20);
      v22 = v45[0];
    }

    v45[1] = v20;
    operator delete(v22);
  }

  *v45 = *v36;
  v46 = v37;
  v37 = 0;
  v36[1] = 0;
  v36[0] = 0;
  if (SHIBYTE(v48) < 0)
  {
    operator delete(v47);
    v47 = v38;
    v23 = v36[0];
    v48 = v39;
    HIBYTE(v39) = 0;
    LOBYTE(v38) = 0;
    if (v36[0])
    {
      v24 = v36[1];
      v25 = v36[0];
      if (v36[1] != v36[0])
      {
        do
        {
          v24 = sub_4547F0(v24 - 552);
        }

        while (v24 != v23);
        v25 = v36[0];
      }

      v36[1] = v23;
      operator delete(v25);
    }
  }

  else
  {
    v47 = v38;
    v48 = v39;
  }

  sub_48D538(v13, v33, v45);
  if (!sub_48DC7C(v13, v45, v33))
  {
    sub_4E3D18(v15);
    sub_4E3D18((v15 + 48));
    *(v15 + 168) = 0;
    *(v15 + 96) = 0u;
    *(v15 + 112) = 0u;
    *(v15 + 128) = 0u;
    *(v15 + 144) = 0;
    *(v15 + 176) = 0;
    *(v15 + 184) = 0;
    v29 = v42;
    if (!v42)
    {
      return sub_49AD08(v45);
    }

    goto LABEL_29;
  }

  *v15 = *v45;
  *(v15 + 16) = v46;
  v45[1] = 0;
  v45[0] = 0;
  *(v15 + 24) = v47;
  *(v15 + 40) = v48;
  v47 = 0uLL;
  v48 = 0;
  *(v15 + 48) = v49;
  v26 = v52;
  *(v15 + 64) = v50;
  v50 = 0;
  v49 = 0uLL;
  v27 = v51;
  *(v15 + 88) = v26;
  *(v15 + 72) = v27;
  v46 = 0;
  v51 = 0uLL;
  v52 = 0;
  *(v15 + 96) = v53;
  v28 = *(&v54[1] + 1);
  *(v15 + 112) = *&v54[0];
  v53 = 0uLL;
  *&v54[0] = 0;
  *(v15 + 120) = *(v54 + 8);
  *(v15 + 136) = v28;
  memset(v54 + 8, 0, 24);
  *(v15 + 144) = 0;
  *(v15 + 168) = 0;
  if (v57 == 1)
  {
    *(v15 + 144) = v55;
    *(v15 + 160) = v56;
    v56 = 0;
    v55 = 0uLL;
    *(v15 + 168) = 1;
  }

  *(v15 + 176) = v58;
  v29 = v42;
  if (v42)
  {
LABEL_29:
    v30 = v43;
    v31 = v29;
    if (v43 != v29)
    {
      do
      {
        v30 = sub_4547F0(v30 - 552);
      }

      while (v30 != v29);
      v31 = v42;
    }

    v43 = v29;
    operator delete(v31);
  }

  return sub_49AD08(v45);
}

void sub_48F1A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&STACK[0x220]);
  sub_4AE168(&STACK[0x1308]);
  sub_487EC4(&STACK[0x1338]);
  sub_49AD08(&STACK[0x1350]);
  _Unwind_Resume(a1);
}

void sub_4915FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, void *__p)
{
  if (a65 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a66);
  if (a43 < 0)
  {
    operator delete(a38);
  }

  sub_1218EBC(&STACK[0x2B8]);
  sub_487EC4(&STACK[0x2F8]);
  sub_45B588(&STACK[0x310]);
  v67 = STACK[0x4F8];
  if (STACK[0x4F8])
  {
    STACK[0x500] = v67;
    operator delete(v67);
  }

  sub_47FF64(&STACK[0x538]);
  sub_49AD08(&STACK[0x970]);
  _Unwind_Resume(a1);
}

uint64_t sub_49198C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (a3)
  {
    v7 = *(a1 + 64);
    v6 = *(a1 + 72);
    if (v7 == v6)
    {
      goto LABEL_18;
    }

    if (*v7)
    {
      v8 = 0;
    }

    else
    {
      v10 = *(v7 + 8);
      v11 = vabdd_f64(v10, *a1) < 2.22044605e-16 || v10 == *a1;
      v8 = 48;
      if (!v11)
      {
        v8 = 0;
      }
    }

    v7 += v8;
    if (*(v6 - 48) != ((*(a1 + 24) - *(a1 + 16)) >> 3) - 1)
    {
LABEL_18:
      v15 = 0;
    }

    else
    {
      v12 = *(v6 - 40);
      v13 = *(a1 + 8);
      if (vabdd_f64(v12, v13) < 2.22044605e-16 || v12 == v13)
      {
        v15 = -48;
      }

      else
      {
        v15 = 0;
      }
    }

    result = sub_4A1CF4(a4);
    a4[1] = result;
    *(result - 176) = *a1;
    v16 = *(a1 + 16);
    if (*(a1 + 24) != v16)
    {
      v17 = 0;
      v18 = v15 + v6;
      do
      {
        v19 = a4[1];
        v21 = *(v19 - 152);
        v20 = *(v19 - 144);
        if (v21 >= v20)
        {
          v23 = *(v19 - 160);
          v24 = v21 - v23;
          v25 = (v21 - v23) >> 3;
          v26 = v25 + 1;
          if ((v25 + 1) >> 61)
          {
            sub_1794();
          }

          v27 = v20 - v23;
          if (v27 >> 2 > v26)
          {
            v26 = v27 >> 2;
          }

          if (v27 >= 0x7FFFFFFFFFFFFFF8)
          {
            v28 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v28 = v26;
          }

          if (v28)
          {
            if (!(v28 >> 61))
            {
              operator new();
            }

            sub_1808();
          }

          v29 = v25;
          v30 = (8 * v25);
          v31 = *(v16 + 8 * v17);
          v32 = &v30[-v29];
          *v30 = v31;
          v22 = v30 + 1;
          memcpy(v32, v23, v24);
          *(v19 - 160) = v32;
          *(v19 - 152) = v22;
          *(v19 - 144) = 0;
          if (v23)
          {
            operator delete(v23);
          }
        }

        else
        {
          *v21 = *(v16 + 8 * v17);
          v22 = v21 + 8;
        }

        *(v19 - 152) = v22;
        if (v7 < v18 && *v7 == v17)
        {
          v33 = *(v7 + 8);
          v34 = a4[1];
          v35 = a4[2];
          *(v34 - 168) = v33;
          if (v34 >= v35)
          {
            v36 = sub_4A1CF4(a4);
          }

          else
          {
            *(v34 + 144) = 0u;
            *(v34 + 160) = 0u;
            *(v34 + 96) = 0u;
            *(v34 + 112) = 0u;
            *(v34 + 64) = 0u;
            *(v34 + 80) = 0u;
            *(v34 + 32) = 0u;
            *(v34 + 48) = 0u;
            *v34 = 0u;
            *(v34 + 16) = 0u;
            *(v34 + 128) = 0u;
            *(v34 + 120) = 1065353216;
            v36 = v34 + 176;
            *(v34 + 160) = 1065353216;
          }

          v7 += 48;
          a4[1] = v36;
          v37 = *(a1 + 16);
          if (v17 + 1 < (*(a1 + 24) - v37) >> 3 && (v38 = sub_4834B0(a2, (v37 + 8 * v17)), v39 = v37 + 8 * (v17 + 1), __PAIR64__(*(v39 + 4), *v39) == __PAIR64__(WORD2(v38), v38)) && *(v39 + 6) == BYTE6(v38) && (v7 >= v18 || *v7 != v17))
          {
            *(a4[1] - 176) = 1.0 - v33;
          }

          else
          {
            *(a4[1] - 176) = v33;
            --v17;
          }
        }

        ++v17;
        v16 = *(a1 + 16);
      }

      while (v17 < (*(a1 + 24) - v16) >> 3);
      result = a4[1];
    }

    *(result - 168) = *(a1 + 8);
  }

  else
  {
    result = sub_4A0E48(a4, a1);
    a4[1] = result;
  }

  return result;
}

void sub_491D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, int a6)
{
  v7 = *(a1 + 16);
  v8 = *(a1 + 24) - v7;
  if (v8 == 8)
  {
    v9 = *v7;
    v10 = (*v7 >> 16) & 0xFFFF0000 | (*v7 << 32) | (2 * ((*v7 & 0xFF000000000000) == 0));
    v11 = sub_2B51D8(a2, *v7 & 0xFFFFFFFFFFFFLL);
    if (*(a2 + 7772) == 1)
    {
      v12 = sub_30C50C(a2 + 3896, v9, 0);
      v13 = &v12[-*v12];
      if (*v13 < 5u)
      {
        v14 = 0;
      }

      else
      {
        v14 = *(v13 + 2);
        if (v14)
        {
          v14 += &v12[*&v12[v14]];
        }
      }

      v55 = v14 + ((v9 >> 30) & 0x3FFFC) + 4 + *(v14 + ((v9 >> 30) & 0x3FFFC) + 4);
    }

    else
    {
      v55 = 0;
    }

    *&v59 = v11;
    *(&v59 + 1) = v55;
    *&v60 = sub_31D7E8(a2, v9 & 0xFFFFFFFFFFFFLL, 1);
    *(&v60 + 1) = v56;
    v61 = v9;
    sub_F6C100(a5, v10, &v59, a6);
    return;
  }

  v15 = v8 >> 3;
  v73 = 0;
  v74 = 0;
  v75 = 0;
  if ((v8 >> 3) < 2)
  {
    return;
  }

  v19 = 1;
  do
  {
    v20 = *(*(a1 + 16) + 8 * v19 - 8);
    v21 = sub_2B51D8(a2, v20 & 0xFFFFFFFFFFFFLL);
    if (*(a2 + 7772) == 1)
    {
      v22 = sub_30C50C(a2 + 3896, v20, 0);
      v23 = &v22[-*v22];
      if (*v23 < 5u)
      {
        v24 = 0;
      }

      else
      {
        v24 = *(v23 + 2);
        if (v24)
        {
          v24 += &v22[*&v22[v24]];
        }
      }

      v25 = v24 + ((v20 >> 30) & 0x3FFFC) + 4 + *(v24 + ((v20 >> 30) & 0x3FFFC) + 4);
    }

    else
    {
      v25 = 0;
    }

    v26 = sub_31D7E8(a2, v20 & 0xFFFFFFFFFFFFLL, 1);
    *&v70 = v21;
    *(&v70 + 1) = v25;
    *&v71 = v26;
    *(&v71 + 1) = v27;
    v72 = v20;
    v28 = *(*(a1 + 16) + 8 * v19);
    v29 = sub_2B51D8(a2, v28 & 0xFFFFFFFFFFFFLL);
    if (*(a2 + 7772) == 1)
    {
      v30 = sub_30C50C(a2 + 3896, v28, 0);
      v31 = &v30[-*v30];
      if (*v31 < 5u)
      {
        v32 = 0;
      }

      else
      {
        v32 = *(v31 + 2);
        if (v32)
        {
          v32 += &v30[*&v30[v32]];
        }
      }

      v33 = v32 + ((v28 >> 30) & 0x3FFFC) + 4 + *(v32 + ((v28 >> 30) & 0x3FFFC) + 4);
    }

    else
    {
      v33 = 0;
    }

    v34 = sub_31D7E8(a2, v28 & 0xFFFFFFFFFFFFLL, 1);
    *&v67 = v29;
    *(&v67 + 1) = v33;
    *&v68 = v34;
    *(&v68 + 1) = v35;
    v69 = v28;
    v36 = sub_3116D0(&v70);
    sub_31BA24(a2, v36, &v73, 0, 0, 0);
    if (*(a3 + 8) != 1 || (v37 = sub_2BC10C(*a3, v72 & 0xFFFFFFFFFFFFFFLL, 0), (v38 & 1) == 0))
    {
      v37 = sub_30F8F8(a3, &v70);
    }

    v39 = v37;
    if (*(a3 + 8) != 1 || (v40 = sub_2BC10C(*a3, v69 & 0xFFFFFFFFFFFFFFLL, 0), (v41 & 1) == 0))
    {
      v40 = sub_30F8F8(a3, &v67);
    }

    v42 = v40;
    if (*(a3 + 8) != 1 || (v43 = sub_2BC10C(*a3, v72 & 0xFFFFFFFFFFFFFFLL, 0), (v44 & 1) == 0))
    {
      v43 = sub_30F8F8(a3, &v70);
    }

    v45 = v43;
    if (*(a3 + 8) != 1 || (v46 = sub_2BC10C(*a3, v69 & 0xFFFFFFFFFFFFFFLL, 0), (v47 & 1) == 0))
    {
      v46 = sub_30F8F8(a3, &v67);
    }

    v48 = v42 & v39;
    if ((v42 & v39) == v42)
    {
LABEL_35:
      v49 = 0;
      if (v48 == v39)
      {
        goto LABEL_49;
      }
    }

    else
    {
      for (i = *a4; i != *(a4 + 8); i += 4)
      {
        if ((i[3] & v39) == i[2] && (i[1] & v42) == *i)
        {
          goto LABEL_35;
        }
      }

      v49 = 32;
      if (v48 == v39)
      {
LABEL_49:
        v52 = 0;
        goto LABEL_58;
      }
    }

    for (j = *a4; j != *(a4 + 8); j += 4)
    {
      if ((j[1] & v39) == *j && (j[3] & v42) == j[2])
      {
        goto LABEL_49;
      }
    }

    v53 = *(a4 + 24);
    v54 = *(a4 + 32);
    if (v53 != v54)
    {
      while ((*(v53 + 8) & v39) != *v53 || (*(v53 + 24) & v42) != *(v53 + 16))
      {
        v53 += 40;
        if (v53 == v54)
        {
          goto LABEL_57;
        }
      }
    }

    if (v53 == v54)
    {
LABEL_57:
      v52 = 64;
    }

    else
    {
      v52 = (*(v53 + 32) != 0) << 6;
    }

LABEL_58:
    v59 = v70;
    v60 = v71;
    v62 = v67;
    v61 = v72;
    v63 = v68;
    v64 = v69;
    v65 = 0x28000000000;
    v66 = (v45 != 0) | (2 * (v46 != 0)) | v49 | v52 | (4 * (v74 - v73 == 80)) | v66 & 0x80;
    sub_F6C3B8(a5, &v59, a6);
    ++v19;
  }

  while (v15 != v19);
  if (v73)
  {
    v74 = v73;
    operator delete(v73);
  }
}

void sub_492240(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 128);
  if (v3)
  {
    *(v1 - 120) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

double sub_492274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = __chkstk_darwin(a1, a2, a3, a4, a5, a6, a7, a8);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = v8;
  v21 = v20;
  if (!sub_F63D58(v17))
  {
    v22 = sub_F63FD8(v18);
    v23 = *(v22 + 16);
    v29 = *v22;
    v30 = v23;
    v24 = *(v22 + 32);
    v25 = *(v22 + 48);
    v26 = *(v22 + 64);
    v34 = *(v22 + 80);
    v32 = v25;
    v33 = v26;
    v31 = v24;
    *(&v30 + 1) = *(v16 + 56);
    v27 = sub_45AC50(v18);
    sub_F68F20(v27, &v29);
  }

  sub_48D538(v19, v16, v18);
  if (!v12 || sub_492698(v19, v18, v16, v14) || sub_48DC7C(v19, v18, v16))
  {
    if (v10)
    {
      sub_F8FE74(&v29, *(v19 + 24), 2);
    }

    sub_49E67C(v21, v18);
  }

  else
  {
    sub_4E3D18(v21);
    sub_4E3D18((v21 + 48));
    *(v21 + 168) = 0;
    result = 0.0;
    *(v21 + 96) = 0u;
    *(v21 + 112) = 0u;
    *(v21 + 128) = 0u;
    *(v21 + 144) = 0;
    *(v21 + 176) = 0;
    *(v21 + 184) = 0;
  }

  return result;
}

double sub_492454@<D0>(uint64_t a1@<X8>)
{
  sub_4E3D18(a1);
  sub_4E3D18((a1 + 48));
  *(a1 + 168) = 0;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  return result;
}

void sub_4924B0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  memset(v9, 0, sizeof(v9));
  v6 = a2[1];
  if (v6 != *a2)
  {
    if (0x8E38E38E38E38E39 * ((v6 - *a2) >> 4) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }

  v8 = *a2;
  v7 = a2[1];
  v12 = v9;
  while (v8 != v7)
  {
    sub_4A2768(v8, __p);
    sub_9A5A0(&v12, __p);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }

    v8 += 144;
  }

  sub_48F31C(a1, v9, a3, 0x7FFFFFFFFFFFFFFFLL, 1u, 1, 0, 0, 0);
}

void sub_492658(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_492674(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  sub_1A104(&a11);
  _Unwind_Resume(a1);
}

BOOL sub_492698(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v5 = a4;
  nullsub_1();
  v10 = v9[1] - *v9;
  if (!v10)
  {
LABEL_22:
    result = sub_7E7E4(3u);
    if (!result)
    {
      return result;
    }

    sub_19594F8(&v41);
    sub_4A5C(&v41, "Could not locate the user offset on the path", 44);
    if ((v51 & 0x10) != 0)
    {
      v32 = v50;
      if (v50 < v47)
      {
        v50 = v47;
        v32 = v47;
      }

      v33 = v46;
      v31 = v32 - v46;
      if (v32 - v46 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_42;
      }
    }

    else
    {
      if ((v51 & 8) == 0)
      {
        v31 = 0;
        v40 = 0;
LABEL_36:
        *(&__p + v31) = 0;
        sub_7E854(&__p, 3u);
        if (v40 < 0)
        {
          operator delete(__p);
        }

        if (v49 < 0)
        {
          operator delete(v48);
        }

        std::locale::~locale(&v43);
        std::ostream::~ostream();
        std::ios::~ios();
        return 0;
      }

      v33 = v44;
      v31 = v45 - v44;
      if ((v45 - v44) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_42:
        sub_3244();
      }
    }

    if (v31 >= 0x17)
    {
      operator new();
    }

    v40 = v31;
    if (v31)
    {
      memmove(&__p, v33, v31);
    }

    goto LABEL_36;
  }

  v11 = 0;
  v12 = 0xF128CFC4A33F128DLL * (v10 >> 3);
  while (1)
  {
    v14 = sub_F63CBC(a2, v11);
    v15 = sub_F6E3D4(v14);
    v13 = v5 - v15;
    if (v5 >= v15)
    {
      goto LABEL_6;
    }

    v16 = sub_F6D024(v14);
    if (v16)
    {
      break;
    }

    v13 = v5;
LABEL_6:
    ++v11;
    v5 = v13;
    if (v11 == v12)
    {
      goto LABEL_22;
    }
  }

  v17 = v16;
  v18 = 0;
  while (1)
  {
    v19 = sub_F6D254(v14, v18);
    v13 = v5 - v19;
    if (v5 < v19)
    {
      break;
    }

    ++v18;
    v5 -= v19;
    if (v17 == v18)
    {
      goto LABEL_6;
    }
  }

  v20 = *sub_73F1C(v14);
  if (v18)
  {
    v21 = 0;
  }

  else
  {
    v21 = v20;
  }

  v22 = sub_F6D17C(v14, v18);
  v23 = *v22;
  v24 = (*v22 - **v22);
  if (*v24 < 9u)
  {
    v28 = 0;
    v26 = a3;
    v27 = a1;
  }

  else
  {
    v25 = v24[4];
    v26 = a3;
    v27 = a1;
    if (v25)
    {
      v28 = *(v23 + v25);
      if (v28)
      {
        v29 = v5 / v28 * 1000000000.0;
        if (v29 >= 0.0)
        {
          if (v29 < 4.50359963e15)
          {
            v30 = (v29 + v29) + 1;
LABEL_45:
            v29 = (v30 >> 1);
          }
        }

        else if (v29 > -4.50359963e15)
        {
          v30 = (v29 + v29) - 1 + (((v29 + v29) - 1) >> 63);
          goto LABEL_45;
        }

        v34 = 1000000000.0;
        if (v29 <= 1000000000.0)
        {
          v34 = v29;
        }

        v35 = v29 < 0.0;
        v36 = 0.0;
        if (!v35)
        {
          v36 = v34;
        }

        v28 = v36;
      }
    }

    else
    {
      v28 = 0;
    }
  }

  v37 = v28 + v21;
  if (v37 >= 0x3B9ACA00)
  {
    v38 = 1000000000;
  }

  else
  {
    v38 = v37;
  }

  sub_492B28(v27, a2, v26, v11, v18, v38);
  return 1;
}

void sub_492ADC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
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

void sub_492B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unsigned int a6)
{
  nullsub_1();
  v13 = *v12;
  nullsub_1();
  LODWORD(v94) = *sub_73F1C(*v14);
  LOBYTE(v97) = 0;
  v96 = 0uLL;
  v95 = 0;
  *(&v97 + 1) = 0x3FF0000000000000;
  v98[0] = 1;
  *&v98[8] = 0;
  *&v98[16] = 0;
  __p[0] = 2359296000;
  *(__p + 7) = 0;
  sub_F68F20(v13, &v94);
  nullsub_1();
  v16 = v15;
  nullsub_1();
  v18 = *(v17 + 8);
  v19 = sub_45AC50(a2);
  v20 = sub_45AC50(a2);
  v91 = a4;
  v21 = 552 * a4;
  sub_49E3C4(v16, v18, v19, (v20 + v21), 0xF128CFC4A33F128DLL * ((v20 + v21 - v19) >> 3));
  nullsub_1();
  v23 = v22;
  v24 = v22[1];
  if (v24 >= v22[2])
  {
    v25 = sub_49E278(v22);
  }

  else
  {
    sub_F6BEE8(v22[1]);
    v25 = v24 + 552;
    v23[1] = v24 + 552;
  }

  v23[1] = v25;
  nullsub_1();
  v27 = v26;
  v28 = sub_45AC50(a2);
  v29 = (sub_45AC50(a2) + v21);
  if (v29 != v28)
  {
    v30 = *(v27 + 8);
    if (v29 != v30)
    {
      do
      {
        sub_49C304(v28, v29);
        v29 = (v29 + 552);
        v28 += 552;
      }

      while (v29 != v30);
      v30 = *(v27 + 8);
    }

    while (v30 != v28)
    {
      v30 -= 552;
      sub_4547F0(v30);
    }

    *(v27 + 8) = v28;
  }

  v90 = a1;
  v31 = 24 * v91;
  if (v91)
  {
    v32 = *(a2 + 96);
    v33 = *(a2 + 104);
    if (v32 + v31 == v33)
    {
      if (v33 == v32)
      {
LABEL_23:
        *(a2 + 104) = v32;
        goto LABEL_24;
      }
    }

    else
    {
      do
      {
        v35 = *v32;
        if (*v32)
        {
          *(v32 + 8) = v35;
          operator delete(v35);
          *v32 = 0;
          *(v32 + 8) = 0;
          *(v32 + 16) = 0;
        }

        v34 = (v32 + v31);
        *v32 = *(v32 + 24 * v91);
        *(v32 + 16) = *(v32 + v31 + 16);
        *v34 = 0;
        v34[1] = 0;
        v34[2] = 0;
        v32 += 24;
      }

      while (v32 + v31 != v33);
      v33 = *(a2 + 104);
      if (v33 == v32)
      {
        goto LABEL_23;
      }
    }

    v36 = v33;
    do
    {
      v38 = *(v36 - 24);
      v36 -= 24;
      v37 = v38;
      if (v38)
      {
        *(v33 - 16) = v37;
        operator delete(v37);
      }

      v33 = v36;
    }

    while (v36 != v32);
    goto LABEL_23;
  }

LABEL_24:
  nullsub_1();
  v40 = *v39;
  nullsub_1();
  v42 = (*(v41 + 8) - 552);
  v43 = *(a2 + 96);
  if (a5)
  {
    v44 = sub_5FC64(v40);
    v45 = sub_5FC64(v40);
    sub_F6DCCC(v42, v44, (v45 + 96 * a5));
    if (a5 + 1 == sub_F6D024(v40))
    {
      goto LABEL_26;
    }

LABEL_29:
    v52 = sub_5FC64(v40);
    v53 = sub_5FC64(v40);
    sub_F6E314(v40, v52, (v53 + 96 * a5), 1);
    if (!a5)
    {
      goto LABEL_33;
    }

    goto LABEL_30;
  }

  v49 = sub_F6C788(v40);
  v50 = sub_F69654(v40);
  v51 = sub_F692C8(v40, 0);
  sub_F6C100(v42, v49, v50, v51);
  if (sub_F6D024(v40) != 1)
  {
    goto LABEL_29;
  }

LABEL_26:
  v46 = sub_F6C7D0(v40);
  v47 = sub_F6C814(v40);
  v48 = sub_F692C8(v40, a5);
  sub_F6C100(v40, v46, v47, v48);
  if (!a5)
  {
    goto LABEL_33;
  }

LABEL_30:
  v55 = *v43;
  v54 = v43[1];
  v56 = *v43 + 4 * a5;
  v57 = v54 - v56;
  if (v54 != v56)
  {
    memmove(*v43, v56, v54 - v56);
  }

  v43[1] = &v55[v57];
LABEL_33:
  v108 = 0;
  v109 = 0;
  v111 = 0;
  v110 = 0;
  v112 = 0x3FF0000000000000;
  v113 = 1;
  v114 = 0;
  v115 = 0;
  v116 = 0x18CA00000;
  v117 = 0;
  v118 = 0;
  v107 = a6;
  if (sub_F695B8(v40))
  {
    v58 = sub_F69058(v40);
    if (v107 > *v58)
    {
      v107 = *sub_F69058(v40);
    }
  }

  v59 = sub_73F1C(v40);
  sub_F68F20(v42, v59);
  sub_F6901C(v42, &v107);
  v110 = *(a3 + 56);
  sub_F68F20(v40, &v107);
  v60 = *(a2 + 120);
  v61 = 480 * v91;
  if (480 * v91)
  {
    v62 = *(a2 + 128);
    if ((v60 + v61) != v62)
    {
      do
      {
        sub_49C5C0(v60, (v60 + v61));
        v60 += 240;
      }

      while ((v60 + v61) != v62);
      v62 = *(a2 + 128);
    }

    while (v62 != v60)
    {
      v62 -= 30;
      sub_49AEC0(v62);
    }

    *(a2 + 128) = v60;
    v60 = *(a2 + 120);
  }

  v63 = *(v60 + 176);
  v64 = sub_F69654(v40);
  v66 = (*v64 - **v64);
  v67 = 0.0;
  if (*v66 >= 9u)
  {
    v68 = v66[4];
    if (v68)
    {
      LODWORD(v67) = *(*v64 + v68);
      v67 = *&v67;
    }
  }

  LODWORD(v65) = v107;
  v69 = v67 * (v65 / 1000000000.0);
  if (v69 >= 0.0)
  {
    if (v69 >= 4.50359963e15)
    {
      goto LABEL_52;
    }

    v70 = (v69 + v69) + 1;
  }

  else
  {
    if (v69 <= -4.50359963e15)
    {
      goto LABEL_52;
    }

    v70 = (v69 + v69) - 1 + (((v69 + v69) - 1) >> 63);
  }

  v69 = (v70 >> 1);
LABEL_52:
  *(v63 + 24) = v69;
  v71 = sub_F69654(v40);
  *(v63 + 32) = *(v71 + 32) | (*(v71 + 36) << 32);
  *(v63 + 40) = *(sub_F69654(v40) + 38) | 0x100;
  *(v60 + 224) = 1;
  if (sub_E67BDC(a3))
  {
    *v60 = *a3;
    v72 = *(a3 + 16);
    v73 = *(a3 + 32);
    v74 = *(a3 + 48);
    *(v60 + 63) = *(a3 + 63);
    *(v60 + 32) = v73;
    *(v60 + 48) = v74;
    *(v60 + 16) = v72;
    if (v60 != a3)
    {
      sub_146EC((v60 + 72), *(a3 + 72), *(a3 + 80), (*(a3 + 80) - *(a3 + 72)) >> 2);
    }

    v75 = *(a3 + 96);
    *(v60 + 112) = *(a3 + 112);
    *(v60 + 96) = v75;
    v76 = *(a3 + 120);
    *(v60 + 136) = *(a3 + 136);
    *(v60 + 120) = v76;
    sub_3E428((v60 + 152), a3 + 152);
  }

  else
  {
    v77 = sub_3AF6B4(*(v90 + 24));
    v78 = sub_F69654(v40);
    v79 = sub_73F1C(v40);
    v92 = sub_48CA24(v77, v78, *v79);
    v93 = v80;
    sub_E6793C(&v94, &v92);
    v81 = v94;
    *(v60 + 8) = v95;
    *v60 = v81;
    v82 = v96;
    v83 = v97;
    v84 = *v98;
    *(v60 + 63) = *&v98[15];
    *(v60 + 32) = v83;
    *(v60 + 48) = v84;
    *(v60 + 16) = v82;
    v85 = *(v60 + 72);
    if (v85)
    {
      *(v60 + 80) = v85;
      operator delete(v85);
      *(v60 + 72) = 0;
      *(v60 + 80) = 0;
      *(v60 + 88) = 0;
    }

    v86 = *(v60 + 152);
    *(v60 + 72) = *__p;
    *(v60 + 88) = v100;
    __p[0] = 0;
    __p[1] = 0;
    v100 = 0;
    v87 = v102;
    *(v60 + 96) = v101;
    *(v60 + 112) = v87;
    *(v60 + 120) = v103;
    *(v60 + 136) = v104;
    if (v86)
    {
      operator delete(v86);
      *(v60 + 152) = 0;
      *(v60 + 160) = 0;
      *(v60 + 168) = 0;
      v86 = __p[0];
    }

    *(v60 + 152) = v105;
    *(v60 + 160) = v106;
    v105 = 0;
    v106 = 0uLL;
    if (v86)
    {
      __p[1] = v86;
      operator delete(v86);
    }
  }

  if (*(a2 + 168) == 1 && v91)
  {
    v88 = *(a2 + 144);
    for (i = *(a2 + 152); v88 + v31 != i; v88 += 24)
    {
      *v88 = *(v88 + 24 * v91);
      *(v88 + 8) = *(v88 + v31 + 8);
      *(v88 + 16) = *(v88 + v31 + 16);
    }

    *(a2 + 152) = v88;
  }
}

void sub_4934CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_4934F4(uint64_t a1, uint64_t a2)
{
  memset(v12, 0, sizeof(v12));
  v13 = 1065353216;
  sub_4D0560();
  v7 = v6;
  v9 = v8;
  sub_F6C0C8();
  sub_4936FC(v7, v9, v10, v11, v12);
  sub_493890(a1, a2, v12);
}

void sub_493694(_Unwind_Exception *a1, uint64_t a2, char a3, uint64_t a4, char a5, ...)
{
  va_start(va, a5);
  sub_48C8F4(v5);
  if (a5)
  {
    sub_49AEC0(va);
    sub_11BD8(v6 - 112);
    _Unwind_Resume(a1);
  }

  sub_11BD8(v6 - 112);
  _Unwind_Resume(a1);
}

void *sub_4936FC(void *a1, unint64_t a2, void *a3, unint64_t a4, void *a5)
{
  if (a1)
  {
    if (a3)
    {
      while (1)
      {
        v11 = sub_F6D024(a1);
        v12 = sub_F6D024(a3);
        if (a2 >= v11 || a4 >= v12)
        {
          if (a2 < v11 == a4 < v12)
          {
            return a5;
          }
        }

        else
        {
          v13 = sub_F6D17C(a1, a2);
          if (v13 == sub_F6D17C(a3, a4))
          {
            return a5;
          }
        }

        v10 = sub_F6D17C(a1, a2);
        v17 = *(v10 + 8) | (*(v10 + 18) << 32);
        sub_49B7A4(a5, &v17, &v17);
        ++a2;
      }
    }

    while (a2 < sub_F6D024(a1))
    {
      v14 = sub_F6D17C(a1, a2);
      v17 = *(v14 + 8) | (*(v14 + 18) << 32);
      sub_49B7A4(a5, &v17, &v17);
      ++a2;
    }
  }

  else if (a3)
  {
    while (a4 < sub_F6D024(a3))
    {
      v15 = sub_F6D17C(0, a2);
      v17 = *(v15 + 8) | (*(v15 + 18) << 32);
      sub_49B7A4(a5, &v17, &v17);
      ++a2;
    }
  }

  return a5;
}

void sub_493A84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  sub_48C9A4(&a11);
  sub_44D36C(&a37);
  sub_11ABCB4(&a14);
  _Unwind_Resume(a1);
}

void sub_493AB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *__p, uint64_t a47)
{
  if (__p)
  {
    a47 = __p;
    operator delete(__p);
    sub_11ABCB4(&a14);
    _Unwind_Resume(a1);
  }

  sub_11ABCB4(&a14);
  _Unwind_Resume(a1);
}

void sub_493AEC(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v9 = 15;
  strcpy(v8, "UserPathDecoder");
  __p[0] = 0;
  __p[1] = 0;
  v7 = 0;
  v5 = sub_3AEC94(a2, v8, __p);
  sub_498140(a1, v5);
}

void sub_493EA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  sub_5BF68((v25 - 72));
  sub_21DB4B4(v24);
  _Unwind_Resume(a1);
}

void sub_493ED8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void **a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  sub_1A104(&a22);
  JUMPOUT(0x493F14);
}

void sub_493F50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  v22 = v19[9];
  if (v22)
  {
    v19[10] = v22;
    operator delete(v22);
  }

  v23 = *v20;
  if (*v20)
  {
    v19[7] = v23;
    operator delete(v23);
  }

  _Unwind_Resume(exception_object);
}

void sub_496258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, void *__p)
{
  if (a65 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a66);
  if (a43 < 0)
  {
    operator delete(a38);
  }

  sub_1218EBC(&STACK[0x2B8]);
  sub_487EC4(&STACK[0x2F8]);
  sub_45B588(&STACK[0x310]);
  v67 = STACK[0x4F8];
  if (STACK[0x4F8])
  {
    STACK[0x500] = v67;
    operator delete(v67);
  }

  sub_480074(&STACK[0x538]);
  sub_49AD08(&STACK[0x970]);
  _Unwind_Resume(a1);
}

uint64_t sub_4965E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (a3)
  {
    v7 = *(a1 + 64);
    v6 = *(a1 + 72);
    if (v7 == v6)
    {
      goto LABEL_18;
    }

    if (*v7)
    {
      v8 = 0;
    }

    else
    {
      v10 = *(v7 + 8);
      v11 = vabdd_f64(v10, *a1) < 2.22044605e-16 || v10 == *a1;
      v8 = 48;
      if (!v11)
      {
        v8 = 0;
      }
    }

    v7 += v8;
    if (*(v6 - 48) != ((*(a1 + 24) - *(a1 + 16)) >> 3) - 1)
    {
LABEL_18:
      v15 = 0;
    }

    else
    {
      v12 = *(v6 - 40);
      v13 = *(a1 + 8);
      if (vabdd_f64(v12, v13) < 2.22044605e-16 || v12 == v13)
      {
        v15 = -48;
      }

      else
      {
        v15 = 0;
      }
    }

    result = sub_4A1CF4(a4);
    a4[1] = result;
    *(result - 176) = *a1;
    v16 = *(a1 + 16);
    if (*(a1 + 24) != v16)
    {
      v17 = 0;
      v18 = v15 + v6;
      do
      {
        v19 = a4[1];
        v21 = *(v19 - 152);
        v20 = *(v19 - 144);
        if (v21 >= v20)
        {
          v23 = *(v19 - 160);
          v24 = v21 - v23;
          v25 = (v21 - v23) >> 3;
          v26 = v25 + 1;
          if ((v25 + 1) >> 61)
          {
            sub_1794();
          }

          v27 = v20 - v23;
          if (v27 >> 2 > v26)
          {
            v26 = v27 >> 2;
          }

          if (v27 >= 0x7FFFFFFFFFFFFFF8)
          {
            v28 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v28 = v26;
          }

          if (v28)
          {
            if (!(v28 >> 61))
            {
              operator new();
            }

            sub_1808();
          }

          v29 = v25;
          v30 = (8 * v25);
          v31 = *(v16 + 8 * v17);
          v32 = &v30[-v29];
          *v30 = v31;
          v22 = v30 + 1;
          memcpy(v32, v23, v24);
          *(v19 - 160) = v32;
          *(v19 - 152) = v22;
          *(v19 - 144) = 0;
          if (v23)
          {
            operator delete(v23);
          }
        }

        else
        {
          *v21 = *(v16 + 8 * v17);
          v22 = v21 + 8;
        }

        *(v19 - 152) = v22;
        if (v7 < v18 && *v7 == v17)
        {
          v33 = *(v7 + 8);
          v34 = a4[1];
          v35 = a4[2];
          *(v34 - 168) = v33;
          if (v34 >= v35)
          {
            v36 = sub_4A1CF4(a4);
          }

          else
          {
            *(v34 + 144) = 0u;
            *(v34 + 160) = 0u;
            *(v34 + 96) = 0u;
            *(v34 + 112) = 0u;
            *(v34 + 64) = 0u;
            *(v34 + 80) = 0u;
            *(v34 + 32) = 0u;
            *(v34 + 48) = 0u;
            *v34 = 0u;
            *(v34 + 16) = 0u;
            *(v34 + 128) = 0u;
            *(v34 + 120) = 1065353216;
            v36 = v34 + 176;
            *(v34 + 160) = 1065353216;
          }

          v7 += 48;
          a4[1] = v36;
          v37 = *(a1 + 16);
          if (v17 + 1 < (*(a1 + 24) - v37) >> 3 && (v38 = sub_484614(a2, (v37 + 8 * v17)), v39 = v37 + 8 * (v17 + 1), __PAIR64__(*(v39 + 4), *v39) == __PAIR64__(WORD2(v38), v38)) && *(v39 + 6) == BYTE6(v38) && (v7 >= v18 || *v7 != v17))
          {
            *(a4[1] - 176) = 1.0 - v33;
          }

          else
          {
            *(a4[1] - 176) = v33;
            --v17;
          }
        }

        ++v17;
        v16 = *(a1 + 16);
      }

      while (v17 < (*(a1 + 24) - v16) >> 3);
      result = a4[1];
    }

    *(result - 168) = *(a1 + 8);
  }

  else
  {
    result = sub_4A0E48(a4, a1);
    a4[1] = result;
  }

  return result;
}

void sub_496974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, int a6)
{
  v7 = *(a1 + 16);
  v8 = *(a1 + 24) - v7;
  if (v8 == 8)
  {
    v9 = *v7;
    v10 = sub_31B7C8(a2, *v7);
    v11 = v10;
    v12 = v10 == 1;
    v13 = (v10 == 2) << 62;
    v14 = v12 << 63;
    v15 = v9 & 0xFFFFFFFFFFFFLL;
    v16 = v13 | (((v9 & 0xFF000000000000) == 0) << 61);
    v17 = v16 & 0x7FFFFFFFFFFFFFFFLL | v9 & 0xFFFFFFFFFFFFLL | (v12 << 63);
    v18 = sub_2B51D8(a2, v9 & 0xFFFFFFFFFFFFLL);
    if (*(a2 + 7772))
    {
      v19 = sub_30C50C(a2 + 3896, v9, 0);
      v20 = &v19[-*v19];
      if (*v20 < 5u)
      {
        v21 = 0;
      }

      else
      {
        v21 = *(v20 + 2);
        if (v21)
        {
          v21 += &v19[*&v19[v21]];
        }
      }

      v89 = v21 + ((v9 >> 30) & 0x3FFFC) + 4 + *(v21 + ((v9 >> 30) & 0x3FFFC) + 4);
      v9 = v9;
    }

    else
    {
      v89 = 0;
      v9 = v9;
    }

    *&v102 = v18;
    *(&v102 + 1) = v89;
    *&v103 = sub_31D7E8(a2, v15, 1);
    *(&v103 + 1) = v90;
    v104 = v15 | (((v13 | v14) == 0x8000000000000000) << 63) | v16;
    v91 = HIDWORD(v17) & 0x40000000;
    if (v11 == 1 && v91 == 0)
    {
      v93 = 0x40000000;
    }

    else
    {
      v93 = 0;
    }

    sub_F69060(a5, v9 | (((v17 >> 33) & 0x10000000 | HIDWORD(v17) & 0xFFFFFFF | (v91 >> 1) | v93) << 32), &v102, a6);
    return;
  }

  v115 = 0;
  v116 = 0;
  v117 = 0;
  if ((v8 >> 3) < 2)
  {
    return;
  }

  v23 = 0;
  v94 = (v8 >> 3) - 1;
  do
  {
    v24 = *(*(a1 + 16) + 8 * v23);
    v25 = sub_31B7C8(a2, v24);
    v26 = (v24 & 0xFF000000000000) == 0;
    v27 = v25 == 1;
    v28 = v25 == 2;
    v29 = v24 & 0xFFFFFFFFFFFFLL;
    v30 = sub_2B51D8(a2, v24 & 0xFFFFFFFFFFFFLL);
    if (*(a2 + 7772) == 1)
    {
      v31 = sub_30C50C(a2 + 3896, v24, 0);
      v32 = &v31[-*v31];
      if (*v32 < 5u)
      {
        v33 = 0;
      }

      else
      {
        v33 = *(v32 + 2);
        if (v33)
        {
          v33 += &v31[*&v31[v33]];
        }
      }

      v34 = v33 + ((v24 >> 30) & 0x3FFFC) + 4 + *(v33 + ((v24 >> 30) & 0x3FFFC) + 4);
    }

    else
    {
      v34 = 0;
    }

    v35 = sub_31D7E8(a2, v29, 1);
    *&v112 = v30;
    *(&v112 + 1) = v34;
    *&v113 = v35;
    *(&v113 + 1) = v36;
    v114 = (v26 << 61) | ((((v28 << 62) | (v27 << 63)) == 0x8000000000000000) << 63) | v29 | (v28 << 62);
    v37 = *(*(a1 + 16) + 8 * v23 + 8);
    v38 = sub_31B7C8(a2, v37);
    v39 = (v37 & 0xFF000000000000) == 0;
    v40 = v38 == 1;
    v41 = v38 == 2;
    v42 = v37 & 0xFFFFFFFFFFFFLL;
    v43 = sub_2B51D8(a2, v37 & 0xFFFFFFFFFFFFLL);
    if (*(a2 + 7772) == 1)
    {
      v44 = sub_30C50C(a2 + 3896, v37, 0);
      v45 = &v44[-*v44];
      if (*v45 < 5u)
      {
        v46 = 0;
      }

      else
      {
        v46 = *(v45 + 2);
        if (v46)
        {
          v46 += &v44[*&v44[v46]];
        }
      }

      v47 = v46 + ((v37 >> 30) & 0x3FFFC) + 4 + *(v46 + ((v37 >> 30) & 0x3FFFC) + 4);
    }

    else
    {
      v47 = 0;
    }

    v48 = sub_31D7E8(a2, v42, 1);
    *&v109 = v43;
    *(&v109 + 1) = v47;
    *&v110 = v48;
    *(&v110 + 1) = v49;
    v111 = (v39 << 61) | ((((v41 << 62) | (v40 << 63)) == 0x8000000000000000) << 63) | v42 | (v41 << 62);
    v50 = sub_314B90(&v112);
    sub_31BA24(a2, v50, &v115, 0, 0, 0);
    v51 = sub_30F7C8(a3, &v112);
    v52 = sub_30F7C8(a3, &v109);
    v100 = 0u;
    v101 = 0u;
    v98 = 0u;
    v99 = 0u;
    if (*(a3 + 8) != 1 || (v53 = sub_2BC294(*a3, (((HIDWORD(v114) & 0x20000000) << 19) | (WORD2(v114) << 32) | v114) ^ 0x1000000000000, 0), (v54 & 1) == 0))
    {
      v53 = sub_30FA10(a3, &v112);
    }

    v55 = v53;
    if (*(a3 + 8) != 1 || (v56 = sub_2BC294(*a3, (((HIDWORD(v111) & 0x20000000) << 19) | (WORD2(v111) << 32) | v111) ^ 0x1000000000000, 0), (v57 & 1) == 0))
    {
      v56 = sub_30FA10(a3, &v109);
    }

    v102 = v112;
    v103 = v113;
    v105 = v109;
    v104 = v114;
    v106 = v110;
    v107 = v111;
    v58 = 30;
    if (v100 >= 0x1E)
    {
      v59 = 30;
    }

    else
    {
      v59 = v100;
    }

    v60 = 31;
    if (v100 != -1)
    {
      v60 = v59;
    }

    if (*(&v100 + 1) < 0x1EuLL)
    {
      v58 = *(&v100 + 1);
    }

    v61 = 32 * v58;
    v62 = 992;
    if (*(&v100 + 1) != -1)
    {
      v62 = v61;
    }

    if (v101 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v63 = 523264;
      v64 = *(&v101 + 1);
      if (*(&v101 + 1) == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v67 = v101 / 0x32;
      if (v101 / 0x32 >= 0x1FE)
      {
        v67 = 510;
      }

      v63 = v67 << 10;
      v64 = *(&v101 + 1);
      if (*(&v101 + 1) == 0x7FFFFFFFFFFFFFFFLL)
      {
LABEL_45:
        v66 = 267911168;
        goto LABEL_46;
      }
    }

    v65 = v64 / 0x32;
    if (v65 >= 0x1FE)
    {
      v65 = 510;
    }

    v66 = v65 << 19;
LABEL_46:
    if (v98 >= 0x1E)
    {
      v68 = 30;
    }

    else
    {
      v68 = v98;
    }

    v69 = v68 << 28;
    v70 = 0x1F0000000;
    if (v98 != -1)
    {
      v70 = v69;
    }

    if (*(&v98 + 1) >= 0x1EuLL)
    {
      v71 = 30;
    }

    else
    {
      v71 = *(&v98 + 1);
    }

    v72 = v71 << 33;
    v73 = 0x3E00000000;
    if (*(&v98 + 1) != -1)
    {
      v73 = v72;
    }

    if (v99 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v74 = 0x7FC000000000;
      v75 = *(&v99 + 1);
      if (*(&v99 + 1) == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_64;
      }
    }

    else
    {
      v78 = v99 / 0x32;
      if (v99 / 0x32 >= 0x1FE)
      {
        v78 = 510;
      }

      v74 = v78 << 38;
      v75 = *(&v99 + 1);
      if (*(&v99 + 1) == 0x7FFFFFFFFFFFFFFFLL)
      {
LABEL_64:
        v77 = 0xFF800000000000;
        goto LABEL_65;
      }
    }

    v76 = v75 / 0x32;
    if (v76 >= 0x1FE)
    {
      v76 = 510;
    }

    v77 = v76 << 47;
LABEL_65:
    v79 = ((v55 != 0) << 56) | ((v56 != 0) << 57) | ((v116 - v115 == 80) << 58) | v77 | v108 & 0xC000000000000000 | v60 & 0xC00000000FFFFC1FLL | v63 & 0xC00000000FFFFC1FLL | v66 & 0xC00000000FFFFC1FLL | v70 | v73 | v74 | v62;
    v80 = 0x2000000000000000;
    if (v51 == v52)
    {
      v80 = 0;
    }

    v108 = v79 + v80;
    v121[0] = &v112;
    v121[1] = &v109;
    if (v100 == -1)
    {
      v81 = -1;
    }

    else
    {
      v81 = v59;
    }

    v82 = v62 >> 5;
    if (v62 == 992)
    {
      v82 = -1;
    }

    v118.i64[0] = v81;
    v118.i64[1] = v82;
    if (((v79 >> 10) & 0x1FF) == 0x1FF)
    {
      v83 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v83 = 50 * ((v79 >> 10) & 0x1FF);
    }

    if (((v79 >> 19) & 0x1FF) == 0x1FF)
    {
      v84 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v84 = 50 * ((v79 >> 19) & 0x1FF);
    }

    v119 = v83;
    v120 = v84;
    sub_49FC9C(v121, &v118, &v100);
    v85 = vdupq_n_s64(0x1FuLL);
    v86 = vandq_s8(vshlq_u64(vdupq_n_s64(v108), xmmword_2297E80), v85);
    v118 = vorrq_s8(v86, vceqq_s64(v86, v85));
    if (((v108 >> 38) & 0x1FF) == 0x1FF)
    {
      v87 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v87 = 50 * ((v108 >> 38) & 0x1FF);
    }

    if (((v108 >> 47) & 0x1FF) == 0x1FF)
    {
      v88 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v88 = 50 * ((v108 >> 47) & 0x1FF);
    }

    v119 = v87;
    v120 = v88;
    sub_49FC9C(v121, &v118, &v98);
    sub_F6F284(a5, &v102, a6);
    ++v23;
  }

  while (v94 != v23);
  if (v115)
  {
    v116 = v115;
    operator delete(v115);
  }
}

void sub_497134(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 168);
  if (v3)
  {
    *(v1 - 160) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

double sub_497164@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, int a6@<W5>, uint64_t a7@<X8>)
{
  if (!sub_F64B34(a2))
  {
    v14 = sub_F63FD8(a2);
    v15 = *(v14 + 16);
    v25 = *v14;
    *v26 = v15;
    v16 = *(v14 + 32);
    v17 = *(v14 + 48);
    v18 = *(v14 + 64);
    v30 = *(v14 + 80);
    *v28 = v17;
    *v29 = v18;
    v27 = v16;
    v26[1] = *(a3 + 56);
    v19 = sub_45AC50(a2);
    sub_F68F20(v19, &v25);
  }

  sub_499400(a1, a3, a2);
  if (!a5 || sub_49752C(a1, a2, a3, a4) || sub_49898C(a1, a2, a3))
  {
    if (a6)
    {
      v20 = *(a1 + 24);
      sub_F92178(&v25, v20, 2);
      v34 = sub_3AF6B4(v20);
      sub_1182D14(a2, &v25);
      if (__p)
      {
        v33 = __p;
        operator delete(__p);
      }

      v21 = v31;
      if (v31)
      {
        do
        {
          v22 = *v21;
          operator delete(v21);
          v21 = v22;
        }

        while (v22);
      }

      v23 = v29[1];
      v29[1] = 0;
      if (v23)
      {
        operator delete(v23);
      }

      if (v28[0])
      {
        v28[1] = v28[0];
        operator delete(v28[0]);
      }

      if (v26[1])
      {
        *&v27 = v26[1];
        operator delete(v26[1]);
      }
    }

    sub_49F388(a7, a2);
  }

  else
  {
    sub_4E3D18(a7);
    sub_4E3D18((a7 + 48));
    *(a7 + 168) = 0;
    result = 0.0;
    *(a7 + 96) = 0u;
    *(a7 + 112) = 0u;
    *(a7 + 128) = 0u;
    *(a7 + 144) = 0;
    *(a7 + 176) = 0;
    *(a7 + 184) = 0;
  }

  return result;
}

void sub_497344(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  memset(v9, 0, sizeof(v9));
  v6 = a2[1];
  if (v6 != *a2)
  {
    if (0x8E38E38E38E38E39 * ((v6 - *a2) >> 4) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }

  v8 = *a2;
  v7 = a2[1];
  v12 = v9;
  while (v8 != v7)
  {
    sub_4A2AF0(v8, __p);
    sub_9A5A0(&v12, __p);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }

    v8 += 144;
  }

  sub_493FA0(a1, v9, a3, 0x7FFFFFFFFFFFFFFFLL, 1u, 1, 0, 0, 0);
}

void sub_4974EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_497508(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  sub_1A104(&a11);
  _Unwind_Resume(a1);
}

BOOL sub_49752C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v5 = a4;
  nullsub_1();
  v10 = v9[1] - *v9;
  if (!v10)
  {
LABEL_22:
    result = sub_7E7E4(3u);
    if (!result)
    {
      return result;
    }

    sub_19594F8(&v41);
    sub_4A5C(&v41, "Could not locate the user offset on the path", 44);
    if ((v51 & 0x10) != 0)
    {
      v32 = v50;
      if (v50 < v47)
      {
        v50 = v47;
        v32 = v47;
      }

      v33 = v46;
      v31 = v32 - v46;
      if (v32 - v46 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_42;
      }
    }

    else
    {
      if ((v51 & 8) == 0)
      {
        v31 = 0;
        v40 = 0;
LABEL_36:
        *(&__p + v31) = 0;
        sub_7E854(&__p, 3u);
        if (v40 < 0)
        {
          operator delete(__p);
        }

        if (v49 < 0)
        {
          operator delete(v48);
        }

        std::locale::~locale(&v43);
        std::ostream::~ostream();
        std::ios::~ios();
        return 0;
      }

      v33 = v44;
      v31 = v45 - v44;
      if ((v45 - v44) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_42:
        sub_3244();
      }
    }

    if (v31 >= 0x17)
    {
      operator new();
    }

    v40 = v31;
    if (v31)
    {
      memmove(&__p, v33, v31);
    }

    goto LABEL_36;
  }

  v11 = 0;
  v12 = 0xF128CFC4A33F128DLL * (v10 >> 3);
  while (1)
  {
    v14 = sub_F63CBC(a2, v11);
    v15 = sub_F70F54(v14);
    v13 = v5 - v15;
    if (v5 >= v15)
    {
      goto LABEL_6;
    }

    v16 = sub_F6FD88(v14);
    if (v16)
    {
      break;
    }

    v13 = v5;
LABEL_6:
    ++v11;
    v5 = v13;
    if (v11 == v12)
    {
      goto LABEL_22;
    }
  }

  v17 = v16;
  v18 = 0;
  while (1)
  {
    v19 = sub_F6FF10(v14, v18);
    v13 = v5 - v19;
    if (v5 < v19)
    {
      break;
    }

    ++v18;
    v5 -= v19;
    if (v17 == v18)
    {
      goto LABEL_6;
    }
  }

  v20 = *sub_73F1C(v14);
  if (v18)
  {
    v21 = 0;
  }

  else
  {
    v21 = v20;
  }

  v22 = sub_F6FE3C(v14, v18);
  v23 = *v22;
  v24 = &(*v22)[-**v22];
  if (*v24 < 9u)
  {
    v28 = 0;
    v26 = a3;
    v27 = a1;
  }

  else
  {
    v25 = *(v24 + 4);
    v26 = a3;
    v27 = a1;
    if (v25)
    {
      v28 = *&v23[v25];
      if (v28)
      {
        v29 = v5 / v28 * 1000000000.0;
        if (v29 >= 0.0)
        {
          if (v29 < 4.50359963e15)
          {
            v30 = (v29 + v29) + 1;
LABEL_45:
            v29 = (v30 >> 1);
          }
        }

        else if (v29 > -4.50359963e15)
        {
          v30 = (v29 + v29) - 1 + (((v29 + v29) - 1) >> 63);
          goto LABEL_45;
        }

        v34 = 1000000000.0;
        if (v29 <= 1000000000.0)
        {
          v34 = v29;
        }

        v35 = v29 < 0.0;
        v36 = 0.0;
        if (!v35)
        {
          v36 = v34;
        }

        v28 = v36;
      }
    }

    else
    {
      v28 = 0;
    }
  }

  v37 = v28 + v21;
  if (v37 >= 0x3B9ACA00)
  {
    v38 = 1000000000;
  }

  else
  {
    v38 = v37;
  }

  sub_4979BC(v27, a2, v26, v11, v18, v38);
  return 1;
}

void sub_497970(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
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

void sub_4979BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unsigned int a6)
{
  nullsub_1();
  v13 = *v12;
  nullsub_1();
  LODWORD(v95) = *sub_73F1C(*v14);
  LOBYTE(v98) = 0;
  v97 = 0uLL;
  v96 = 0;
  *(&v98 + 1) = 0x3FF0000000000000;
  v99[0] = 1;
  *&v99[8] = 0;
  *&v99[16] = 0;
  __p[0] = 2359296000;
  *(__p + 7) = 0;
  sub_F68F20(v13, &v95);
  nullsub_1();
  v16 = v15;
  nullsub_1();
  v18 = *(v17 + 8);
  v19 = sub_45AC50(a2);
  v20 = sub_45AC50(a2);
  v92 = a4;
  v21 = 552 * a4;
  sub_49F0D0(v16, v18, v19, (v20 + v21), 0xF128CFC4A33F128DLL * ((v20 + v21 - v19) >> 3));
  nullsub_1();
  v23 = v22;
  v24 = v22[1];
  if (v24 >= v22[2])
  {
    v25 = sub_49EF84(v22);
  }

  else
  {
    sub_F6EB3C(v22[1]);
    v25 = v24 + 552;
    v23[1] = v24 + 552;
  }

  v23[1] = v25;
  nullsub_1();
  v27 = v26;
  v28 = sub_45AC50(a2);
  v29 = (sub_45AC50(a2) + v21);
  if (v29 != v28)
  {
    v30 = *(v27 + 8);
    if (v29 != v30)
    {
      do
      {
        sub_49C304(v28, v29);
        v29 = (v29 + 552);
        v28 += 552;
      }

      while (v29 != v30);
      v30 = *(v27 + 8);
    }

    while (v30 != v28)
    {
      v30 -= 552;
      sub_4547F0(v30);
    }

    *(v27 + 8) = v28;
  }

  v91 = a1;
  v31 = 24 * v92;
  if (v92)
  {
    v32 = *(a2 + 96);
    v33 = *(a2 + 104);
    if (v32 + v31 == v33)
    {
      if (v33 == v32)
      {
LABEL_23:
        *(a2 + 104) = v32;
        goto LABEL_24;
      }
    }

    else
    {
      do
      {
        v35 = *v32;
        if (*v32)
        {
          *(v32 + 8) = v35;
          operator delete(v35);
          *v32 = 0;
          *(v32 + 8) = 0;
          *(v32 + 16) = 0;
        }

        v34 = (v32 + v31);
        *v32 = *(v32 + 24 * v92);
        *(v32 + 16) = *(v32 + v31 + 16);
        *v34 = 0;
        v34[1] = 0;
        v34[2] = 0;
        v32 += 24;
      }

      while (v32 + v31 != v33);
      v33 = *(a2 + 104);
      if (v33 == v32)
      {
        goto LABEL_23;
      }
    }

    v36 = v33;
    do
    {
      v38 = *(v36 - 24);
      v36 -= 24;
      v37 = v38;
      if (v38)
      {
        *(v33 - 16) = v37;
        operator delete(v37);
      }

      v33 = v36;
    }

    while (v36 != v32);
    goto LABEL_23;
  }

LABEL_24:
  nullsub_1();
  v40 = *v39;
  nullsub_1();
  v42 = (*(v41 + 8) - 552);
  v43 = *(a2 + 96);
  if (a5)
  {
    v44 = sub_5FC64(v40);
    v45 = sub_5FC64(v40);
    sub_F707C4(v42, v44, v45 + 88 * a5);
    if (a5 + 1 == sub_F6FD88(v40))
    {
      goto LABEL_26;
    }

LABEL_29:
    v52 = sub_5FC64(v40);
    v53 = sub_5FC64(v40);
    sub_F70DF4(v40, v52, (v53 + 88 * a5), 1);
    if (!a5)
    {
      goto LABEL_33;
    }

    goto LABEL_30;
  }

  v49 = sub_F6F638(v40);
  v50 = sub_F6F6F4(v40);
  v51 = sub_F692C8(v40, 0);
  sub_F69060(v42, v49, v50, v51);
  if (sub_F6FD88(v40) != 1)
  {
    goto LABEL_29;
  }

LABEL_26:
  v46 = sub_F6F698(v40);
  v47 = sub_F6F70C(v40);
  v48 = sub_F692C8(v40, a5);
  sub_F69060(v40, v46, v47, v48);
  if (!a5)
  {
    goto LABEL_33;
  }

LABEL_30:
  v55 = *v43;
  v54 = v43[1];
  v56 = *v43 + 4 * a5;
  v57 = v54 - v56;
  if (v54 != v56)
  {
    memmove(*v43, v56, v54 - v56);
  }

  v43[1] = &v55[v57];
LABEL_33:
  v109 = 0;
  v110 = 0;
  v112 = 0;
  v111 = 0;
  v113 = 0x3FF0000000000000;
  v114 = 1;
  v115 = 0;
  v116 = 0;
  v117 = 0x18CA00000;
  v118 = 0;
  v119 = 0;
  v108 = a6;
  if (sub_83EB8(v40))
  {
    v58 = sub_F69058(v40);
    if (v108 > *v58)
    {
      v108 = *sub_F69058(v40);
    }
  }

  v59 = sub_73F1C(v40);
  sub_F68F20(v42, v59);
  sub_F6901C(v42, &v108);
  v111 = *(a3 + 56);
  sub_F68F20(v40, &v108);
  v60 = *(a2 + 120);
  v61 = 480 * v92;
  if (480 * v92)
  {
    v62 = *(a2 + 128);
    if ((v60 + v61) != v62)
    {
      do
      {
        sub_49C5C0(v60, (v60 + v61));
        v60 += 240;
      }

      while ((v60 + v61) != v62);
      v62 = *(a2 + 128);
    }

    while (v62 != v60)
    {
      v62 -= 30;
      sub_49AEC0(v62);
    }

    *(a2 + 128) = v60;
    v60 = *(a2 + 120);
  }

  v63 = *(v60 + 176);
  v64 = sub_F6F6F4(v40);
  v66 = (*v64 - **v64);
  v67 = 0.0;
  if (*v66 >= 9u)
  {
    v68 = v66[4];
    if (v68)
    {
      LODWORD(v67) = *(*v64 + v68);
      v67 = *&v67;
    }
  }

  LODWORD(v65) = v108;
  v69 = v67 * (v65 / 1000000000.0);
  if (v69 >= 0.0)
  {
    if (v69 >= 4.50359963e15)
    {
      goto LABEL_52;
    }

    v70 = (v69 + v69) + 1;
  }

  else
  {
    if (v69 <= -4.50359963e15)
    {
      goto LABEL_52;
    }

    v70 = (v69 + v69) - 1 + (((v69 + v69) - 1) >> 63);
  }

  v69 = (v70 >> 1);
LABEL_52:
  *(v63 + 24) = v69;
  v71 = sub_F6F6F4(v40);
  *(v63 + 32) = *(v71 + 32) | ((*(v71 + 36) & 0x1FFFFFFF) << 32);
  if ((*(sub_F6F6F4(v40) + 36) & 0x20000000) != 0)
  {
    v72 = 256;
  }

  else
  {
    v72 = 257;
  }

  *(v63 + 40) = v72;
  *(v60 + 224) = 1;
  if (sub_E67BDC(a3))
  {
    *v60 = *a3;
    v73 = *(a3 + 16);
    v74 = *(a3 + 32);
    v75 = *(a3 + 48);
    *(v60 + 63) = *(a3 + 63);
    *(v60 + 32) = v74;
    *(v60 + 48) = v75;
    *(v60 + 16) = v73;
    if (v60 != a3)
    {
      sub_146EC((v60 + 72), *(a3 + 72), *(a3 + 80), (*(a3 + 80) - *(a3 + 72)) >> 2);
    }

    v76 = *(a3 + 96);
    *(v60 + 112) = *(a3 + 112);
    *(v60 + 96) = v76;
    v77 = *(a3 + 120);
    *(v60 + 136) = *(a3 + 136);
    *(v60 + 120) = v77;
    sub_3E428((v60 + 152), a3 + 152);
  }

  else
  {
    v78 = sub_3AF6B4(*(v91 + 24));
    v79 = sub_F6F6F4(v40);
    v80 = sub_73F1C(v40);
    v93 = sub_4992B4(v78, v79, *v80);
    v94 = v81;
    sub_E6793C(&v95, &v93);
    v82 = v95;
    *(v60 + 8) = v96;
    *v60 = v82;
    v83 = v97;
    v84 = v98;
    v85 = *v99;
    *(v60 + 63) = *&v99[15];
    *(v60 + 32) = v84;
    *(v60 + 48) = v85;
    *(v60 + 16) = v83;
    v86 = *(v60 + 72);
    if (v86)
    {
      *(v60 + 80) = v86;
      operator delete(v86);
      *(v60 + 72) = 0;
      *(v60 + 80) = 0;
      *(v60 + 88) = 0;
    }

    v87 = *(v60 + 152);
    *(v60 + 72) = *__p;
    *(v60 + 88) = v101;
    __p[0] = 0;
    __p[1] = 0;
    v101 = 0;
    v88 = v103;
    *(v60 + 96) = v102;
    *(v60 + 112) = v88;
    *(v60 + 120) = v104;
    *(v60 + 136) = v105;
    if (v87)
    {
      operator delete(v87);
      *(v60 + 152) = 0;
      *(v60 + 160) = 0;
      *(v60 + 168) = 0;
      v87 = __p[0];
    }

    *(v60 + 152) = v106;
    *(v60 + 160) = v107;
    v106 = 0;
    v107 = 0uLL;
    if (v87)
    {
      __p[1] = v87;
      operator delete(v87);
    }
  }

  if (*(a2 + 168) == 1 && v92)
  {
    v89 = *(a2 + 144);
    for (i = *(a2 + 152); v89 + v31 != i; v89 += 24)
    {
      *v89 = *(v89 + 24 * v92);
      *(v89 + 8) = *(v89 + v31 + 8);
      *(v89 + 16) = *(v89 + v31 + 16);
    }

    *(a2 + 152) = v89;
  }
}

void sub_498368(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_498390(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a4@<X8>)
{
  v28 = 0u;
  v29 = 0u;
  v30 = 1065353216;
  sub_4D0560();
  v8 = v7;
  v10 = v9;
  sub_F6F0F4();
  sub_498598(v8, v10, v11, v12, &v28);
  sub_49872C(a1, a2, &v28, &v24);
  v13 = v24;
  a4[1] = 0;
  a4[2] = 0;
  *a4 = 0;
  if (v13)
  {
    sub_48C748(a4, 0x4EC4EC4EC4EC4EC5 * ((v27 - v26) >> 3));
    v14 = v26;
    v15 = v27;
    while (v14 != v15)
    {
      if (*v14 <= *(a1 + 8))
      {
        v17 = a4[1];
        if (v17 >= a4[2])
        {
          v16 = sub_4A2480(a4, v14);
        }

        else
        {
          *v17 = *v14;
          v18 = *(v14 + 16);
          v19 = *(v14 + 32);
          v20 = *(v14 + 48);
          *(v17 + 64) = *(v14 + 64);
          *(v17 + 32) = v19;
          *(v17 + 48) = v20;
          *(v17 + 16) = v18;
          *(v17 + 72) = *(v14 + 72);
          sub_49DD80((v17 + 80), (v14 + 80));
          v16 = v17 + 104;
        }

        a4[1] = v16;
      }

      v14 += 104;
    }
  }

  if (v24 == 1)
  {
    sub_49AEC0(v25);
  }

  v21 = v29;
  if (v29)
  {
    do
    {
      v22 = *v21;
      operator delete(v21);
      v21 = v22;
    }

    while (v22);
  }

  v23 = v28;
  *&v28 = 0;
  if (v23)
  {
    operator delete(v23);
  }
}

void sub_498530(_Unwind_Exception *a1, uint64_t a2, char a3, uint64_t a4, char a5, ...)
{
  va_start(va, a5);
  sub_48C8F4(v5);
  if (a5)
  {
    sub_49AEC0(va);
    sub_11BD8(v6 - 112);
    _Unwind_Resume(a1);
  }

  sub_11BD8(v6 - 112);
  _Unwind_Resume(a1);
}

void *sub_498598(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  if (a1)
  {
    if (a3)
    {
      while (1)
      {
        v11 = sub_F6FD88(a1);
        v12 = sub_F6FD88(a3);
        if (a2 >= v11 || a4 >= v12)
        {
          if (a2 < v11 == a4 < v12)
          {
            return a5;
          }
        }

        else
        {
          v13 = sub_F6FE3C(a1, a2);
          if (v13 == sub_F6FE3C(a3, a4))
          {
            return a5;
          }
        }

        v10 = sub_F6FE3C(a1, a2);
        v17 = *(v10 + 32) | ((*(v10 + 36) & 0x1FFFFFFF) << 32);
        sub_49B7A4(a5, &v17, &v17);
        ++a2;
      }
    }

    while (a2 < sub_F6FD88(a1))
    {
      v14 = sub_F6FE3C(a1, a2);
      v17 = *(v14 + 32) | ((*(v14 + 36) & 0x1FFFFFFF) << 32);
      sub_49B7A4(a5, &v17, &v17);
      ++a2;
    }
  }

  else if (a3)
  {
    while (a4 < sub_F6FD88(a3))
    {
      v15 = sub_F6FE3C(0, a2);
      v17 = *(v15 + 32) | ((*(v15 + 36) & 0x1FFFFFFF) << 32);
      sub_49B7A4(a5, &v17, &v17);
      ++a2;
    }
  }

  return a5;
}

uint64_t sub_49872C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_11ABC60(v22, *(a1 + 24), 2, 1, 0);
  v7 = *(a2 + 48);
  v23[2] = *(a2 + 32);
  *v24 = v7;
  *&v24[15] = *(a2 + 63);
  v8 = *(a2 + 16);
  v23[0] = *a2;
  v23[1] = v8;
  v26 = 0;
  v27 = 0;
  v25 = 0;
  v10 = *(a2 + 72);
  v9 = *(a2 + 80);
  if (v9 != v10)
  {
    if (((v9 - v10) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v28 = *(a2 + 96);
  v29 = *(a2 + 112);
  v30 = *(a2 + 120);
  v31 = *(a2 + 136);
  sub_81988(&v32, a2 + 152);
  __p = 0;
  v20 = 0;
  v21 = 0;
  sub_4A0B4C(&__p, v23, &v33, 1uLL);
  v17 = -1;
  v18 = 0x7FFFFFFF;
  sub_11ABFD4(v22, a2, &__p, 1u, 0, 0, a3, a4, &v17);
  v11 = __p;
  if (__p)
  {
    v12 = v20;
    v13 = __p;
    if (v20 != __p)
    {
      do
      {
        v14 = *(v12 - 3);
        if (v14)
        {
          operator delete(v14);
        }

        v15 = *(v12 - 13);
        if (v15)
        {
          *(v12 - 12) = v15;
          operator delete(v15);
        }

        v12 -= 176;
      }

      while (v12 != v11);
      v13 = __p;
    }

    v20 = v11;
    operator delete(v13);
  }

  if (v32)
  {
    operator delete(v32);
  }

  if (v25)
  {
    v26 = v25;
    operator delete(v25);
  }

  return sub_11ABFD0(v22);
}

void sub_498924(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  sub_48C9A4(&a11);
  sub_44D36C(&a37);
  sub_11ABFD0(&a14);
  _Unwind_Resume(a1);
}

void sub_498950(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *__p, uint64_t a47)
{
  if (__p)
  {
    a47 = __p;
    operator delete(__p);
    sub_11ABFD0(&a14);
    _Unwind_Resume(a1);
  }

  sub_11ABFD0(&a14);
  _Unwind_Resume(a1);
}

BOOL sub_49898C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!sub_E67BDC(a3))
  {
    return 1;
  }

  v4 = sub_45AC50(a2);
  v89 = a2;
  v5 = sub_588D8(a2);
  if (v4 == v5)
  {
LABEL_3:
    result = sub_7E7E4(3u);
    if (!result)
    {
      return result;
    }

    sub_19594F8(&v97);
    sub_4A5C(&v97, "Could not locate the user on the path", 37);
    if ((v107 & 0x10) != 0)
    {
      v12 = v106;
      if (v106 < v103)
      {
        v106 = v103;
        v12 = v103;
      }

      v13 = v102;
      v7 = v12 - v102;
      if (v12 - v102 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_88;
      }
    }

    else
    {
      if ((v107 & 8) == 0)
      {
        v7 = 0;
        v96 = 0;
LABEL_22:
        *(&__dst + v7) = 0;
        sub_7E854(&__dst, 3u);
        if (v96 < 0)
        {
          operator delete(__dst);
        }

        if (v105 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v99);
        std::ostream::~ostream();
        std::ios::~ios();
        return 0;
      }

      v13 = v100;
      v7 = v101 - v100;
      if ((v101 - v100) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_88:
        sub_3244();
      }
    }

    if (v7 >= 0x17)
    {
      operator new();
    }

    v96 = v7;
    if (v7)
    {
      memmove(&__dst, v13, v7);
    }

    goto LABEL_22;
  }

  v8 = v5;
  v9 = 0;
  while (1)
  {
    sub_498390(a1, a3, &v97);
    v10 = v98;
    if (v97 != v98)
    {
      break;
    }

    if (v97)
    {
      v98 = v97;
      operator delete(v97);
    }

    v4 += 552;
    v9 += 552;
    if (v4 == v8)
    {
      goto LABEL_3;
    }
  }

  sub_F6FD88(v4);
  if (sub_83EB8(v4))
  {
    v11 = 0;
    v10 = v97;
    goto LABEL_95;
  }

  sub_F6F0F4();
  v90 = v15;
  v91 = v14;
  sub_F6F0F4();
  v94 = v16;
  v18 = v17;
  sub_4D0560();
  v20 = v19;
  v22 = v21;
  while (2)
  {
    sub_F6F0F4();
    v24 = v23;
    v26 = v25;
    if (!v20)
    {
      if (!v23)
      {
        goto LABEL_80;
      }

      v28 = 0;
LABEL_36:
      v29 = sub_F6FD88(v24);
      if (v26 < v29 && v28)
      {
        v31 = sub_F6FE3C(v20, v22);
        if (v31 == sub_F6FE3C(v24, v26))
        {
          goto LABEL_80;
        }
      }

      else if (((v28 ^ (v26 < v29)) & 1) == 0)
      {
        goto LABEL_80;
      }

      goto LABEL_43;
    }

    v27 = sub_F6FD88(v20);
    v28 = v22 < v27;
    if (v24)
    {
      goto LABEL_36;
    }

    if (v22 >= v27)
    {
      goto LABEL_80;
    }

LABEL_43:
    for (i = v97; i != v98; i += 104)
    {
      if (i[41] == 1)
      {
        v33 = sub_F6FE3C(v20, v22);
        if (*(v33 + 32) == *(i + 8))
        {
          v34 = *(v33 + 36);
          if (*(i + 18) == v34 && ((v34 >> 29) & 1 ^ i[40]) == 1)
          {
            v90 = v22;
            v91 = v20;
            v10 = i;
            break;
          }
        }
      }

      sub_F6F0F4();
      v37 = v36;
      v39 = v38;
      if (v18)
      {
        v40 = sub_F6FD88(v18);
        v41 = v94 < v40;
        if (!v37)
        {
          if (v94 < v40)
          {
            continue;
          }

          goto LABEL_65;
        }
      }

      else
      {
        if (!v36)
        {
          goto LABEL_65;
        }

        v41 = 0;
      }

      v42 = sub_F6FD88(v37);
      if (v39 < v42 && v41)
      {
        v44 = sub_F6FE3C(v18, v94);
        if (v44 != sub_F6FE3C(v37, v39))
        {
          continue;
        }
      }

      else if ((v41 ^ (v39 < v42)))
      {
        continue;
      }

LABEL_65:
      v45 = sub_F6FE3C(v20, v22);
      if (*(v45 + 32) == *(i + 8) && (*(v45 + 36) & 0x1FFFFFFF) == *(i + 9))
      {
        v18 = v20;
        v94 = v22;
        v10 = i;
      }
    }

    sub_F6F0F4();
    v47 = v46;
    v49 = v48;
    if (!v91)
    {
      if (v46)
      {
        v51 = 0;
LABEL_75:
        v52 = sub_F6FD88(v47);
        if (v49 < v52 && v51)
        {
          v54 = sub_F6FE3C(v91, v90);
          if (v54 != sub_F6FE3C(v47, v49))
          {
            goto LABEL_80;
          }
        }

        else if ((v51 ^ (v49 < v52)))
        {
          goto LABEL_80;
        }
      }

LABEL_29:
      ++v22;
      continue;
    }

    break;
  }

  v50 = sub_F6FD88(v91);
  v51 = v90 < v50;
  if (v47)
  {
    goto LABEL_75;
  }

  if (v90 >= v50)
  {
    goto LABEL_29;
  }

LABEL_80:
  sub_F6F0F4();
  v56 = v55;
  v58 = v57;
  if (v91)
  {
    v59 = v90 < sub_F6FD88(v91);
    if (v56)
    {
      goto LABEL_82;
    }

LABEL_90:
    v61 = 0;
    goto LABEL_91;
  }

  v59 = 0;
  if (!v55)
  {
    goto LABEL_90;
  }

LABEL_82:
  v60 = sub_F6FD88(v56);
  v61 = v58 < v60;
  if (v58 < v60 && v59)
  {
    v63 = sub_F6FE3C(v91, v90);
    v64 = v63 != sub_F6FE3C(v56, v58);
  }

  else
  {
LABEL_91:
    v64 = v59 ^ v61;
  }

  sub_4D0560();
  v66 = v90;
  if (!v64)
  {
    v66 = v94;
  }

  v11 = v66 - v65;
LABEL_95:
  v67 = *(sub_F6FE3C(v4, v11) + 36);
  v68 = sub_3AF6B4(*(a1 + 24));
  v69 = sub_2B51D8(v68, *(v10 + 8) | (*(v10 + 18) << 32));
  v70 = (v69 - *v69);
  if (*v70 < 9u || (v71 = v70[4]) == 0)
  {
    v72 = 0;
    goto LABEL_103;
  }

  v72 = 0;
  v73 = v10[3];
  if (v73 == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_103:
    v75 = v89;
    goto LABEL_104;
  }

  v74 = *(v69 + v71);
  v75 = v89;
  if (v74)
  {
    v76 = v73 / v74 * 1000000000.0;
    if (v76 >= 0.0)
    {
      if (v76 < 4.50359963e15)
      {
        v77 = (v76 + v76) + 1;
LABEL_125:
        v76 = (v77 >> 1);
      }
    }

    else if (v76 > -4.50359963e15)
    {
      v77 = (v76 + v76) - 1 + (((v76 + v76) - 1) >> 63);
      goto LABEL_125;
    }

    v86 = 1000000000.0;
    if (v76 <= 1000000000.0)
    {
      v86 = v76;
    }

    v87 = v76 < 0.0;
    v88 = 0.0;
    if (!v87)
    {
      v88 = v86;
    }

    v72 = v88;
  }

LABEL_104:
  if ((v67 & 0x20000000) != 0)
  {
    v78 = v72;
  }

  else
  {
    v78 = 1000000000 - v72;
  }

  sub_4979BC(a1, v75, a3, 0xF128CFC4A33F128DLL * (v9 >> 3), v11, v78);
  v79 = v97;
  if (v97)
  {
    v80 = v98;
    v81 = v97;
    if (v98 != v97)
    {
      do
      {
        v83 = *(v80 - 3);
        if (v83)
        {
          v84 = *(v80 - 2);
          v82 = *(v80 - 3);
          if (v84 != v83)
          {
            do
            {
              v85 = *(v84 - 9);
              v84 -= 4;
              if (v85 < 0)
              {
                operator delete(*v84);
              }
            }

            while (v84 != v83);
            v82 = *(v80 - 3);
          }

          *(v80 - 2) = v83;
          operator delete(v82);
        }

        v80 -= 104;
      }

      while (v80 != v79);
      v81 = v97;
    }

    v98 = v79;
    operator delete(v81);
  }

  return 1;
}

void sub_499150(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_48C8F4(va);
  _Unwind_Resume(a1);
}

void sub_499164(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_48C8F4(va);
  _Unwind_Resume(a1);
}

void sub_499178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_48C8F4(va);
  _Unwind_Resume(a1);
}

void sub_49918C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_48C8F4(va);
  _Unwind_Resume(a1);
}

void sub_4991A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_48C8F4(va);
  _Unwind_Resume(a1);
}

void sub_4991B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_48C8F4(va);
  _Unwind_Resume(a1);
}

void sub_4991C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_48C8F4(va);
  _Unwind_Resume(a1);
}

void sub_4991DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a21 < 0)
  {
    operator delete(__p);
    sub_1959728(&a22);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a22);
  _Unwind_Resume(a1);
}

void sub_499228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_48C8F4(va);
  _Unwind_Resume(a1);
}

void sub_49923C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_48C8F4(va);
  _Unwind_Resume(a1);
}

void sub_499250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_48C8F4(va);
  _Unwind_Resume(a1);
}

void sub_499264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_48C8F4(va);
  _Unwind_Resume(a1);
}

void sub_499278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_48C8F4(va);
  _Unwind_Resume(a1);
}

void sub_49928C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_48C8F4(va);
  _Unwind_Resume(a1);
}

void sub_4992A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_48C8F4(va);
  _Unwind_Resume(a1);
}

unint64_t sub_4992B4(void *a1, uint64_t a2, unsigned int a3)
{
  sub_2B7A20(a1, (((*(a2 + 36) & 0x20000000) << 19) | (*(a2 + 36) << 32) | *(a2 + 32)) ^ 0x1000000000000, &v8);
  v4 = v9;
  if (v9 == v10)
  {
    v6 = 0xFFFFFFFF00000000;
    v5 = 0xFFFFFFFFLL;
    if (!v9)
    {
      return v5 | v6;
    }

    goto LABEL_9;
  }

  sub_31BF20(&v8, v11);
  sub_31214(v11, 0, &v12, a3 / 1000000000.0);
  v5 = *(v13 - 12);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  if (v12)
  {
    v13 = v12;
    operator delete(v12);
  }

  if (v11[0])
  {
    v11[1] = v11[0];
    operator delete(v11[0]);
  }

  v6 = v5 & 0xFFFFFFFF00000000;
  v4 = v9;
  v5 = v5;
  if (v9)
  {
LABEL_9:
    v10 = v4;
    operator delete(v4);
  }

  return v5 | v6;
}

void sub_4993B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
    v16 = a10;
    if (!a10)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v16 = a10;
    if (!a10)
    {
      goto LABEL_3;
    }
  }

  operator delete(v16);
  _Unwind_Resume(exception_object);
}

void sub_499400(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_3AF6B4(*(a1 + 24));
  v6 = sub_45AC50(a3);
  if (v6 != sub_588D8(a3))
  {
    v39.f64[0] = NAN;
    v39.f64[1] = NAN;
    v96 = vnegq_f64(v39);
    do
    {
      v44 = a3[16];
      if (v44 >= a3[17])
      {
        v45 = sub_49C7F4(a3 + 15);
      }

      else
      {
        *(v44 + 8) = 0u;
        *(v44 + 24) = 0u;
        *(v44 + 40) = 0u;
        *(v44 + 56) = 0u;
        *(v44 + 72) = 0u;
        *(v44 + 88) = 0u;
        *(v44 + 104) = 0u;
        *v44 = -1;
        *(v44 + 8) = 0x7FFFFFFF;
        *(v44 + 16) = -1;
        *(v44 + 24) = -1;
        *(v44 + 32) = 0x7FFFFFFFFFFFFFFFLL;
        *(v44 + 48) = -1935635296;
        *(v44 + 56) = 0;
        *(v44 + 63) = 0;
        *(v44 + 72) = 0;
        *(v44 + 80) = 0;
        *(v44 + 88) = 0;
        *(v44 + 96) = 0;
        *(v44 + 104) = 0x7FFFFFFFFFFFFFFFLL;
        *(v44 + 112) = 100;
        *(v44 + 120) = 0;
        *(v44 + 128) = 0;
        *(v44 + 136) = v96;
        *(v44 + 216) = 0;
        *(v44 + 200) = 0u;
        *(v44 + 184) = 0u;
        *(v44 + 168) = 0u;
        *(v44 + 152) = 0u;
        *(v44 + 224) = 1;
        *(v44 + 236) = 0;
        *(v44 + 228) = 0;
        v45 = v44 + 240;
      }

      a3[16] = v45;
      if (v6 == sub_45AC50(a3))
      {
        v46 = 1;
      }

      else
      {
        v46 = 3;
      }

      *(v45 - 16) = v46;
      v47 = sub_F6F6F4(v6);
      v49 = (*v47 - **v47);
      v50 = 0.0;
      if (*v49 >= 9u)
      {
        v51 = v49[4];
        if (v51)
        {
          LODWORD(v48) = *(*v47 + v51);
          v50 = v48;
        }
      }

      LODWORD(v52) = *sub_73F1C(v6);
      v53 = v50 * (v52 / 1000000000.0);
      v54 = (v53 + v53);
      v55 = ((v54 - 1) / 2);
      if (v53 <= -4.50359963e15)
      {
        v55 = v53;
      }

      v56 = ((v54 + 1) >> 1);
      if (v53 >= 4.50359963e15)
      {
        v56 = v53;
      }

      if (v53 >= 0.0)
      {
        v57 = v56;
      }

      else
      {
        v57 = v55;
      }

      *&v97 = v57;
      v58 = sub_F6F6F4(v6);
      v59 = *(v58 + 32) | ((*(v58 + 36) & 0x1FFFFFFF) << 32);
      v111 = 0;
      v112[0] = v59;
      *&v103 = -1;
      DWORD2(v103) = 0x7FFFFFFF;
      v60 = *(sub_F6F6F4(v6) + 36);
      LOBYTE(v110) = (v60 & 0x20000000) == 0;
      v61 = *(v45 - 56);
      if (v61 >= *(v45 - 48))
      {
        v67 = sub_49CB7C(v45 - 64, v112, &v103, &v97, &v111, &v110);
      }

      else
      {
        v62 = (v60 & 0x20000000) == 0;
        v63 = v112[0];
        v64 = v97;
        if (v62)
        {
          v65 = 257;
        }

        else
        {
          v65 = 256;
        }

        *v61 = v111;
        v66 = DWORD2(v103);
        *(v61 + 8) = v103;
        *(v61 + 16) = v66;
        *(v61 + 24) = v64;
        *(v61 + 32) = v63;
        *(v61 + 40) = v65;
        *(v61 + 42) = 257;
        *(v61 + 48) = 0;
        *(v61 + 56) = 0;
        *(v61 + 64) = 0;
        *(v61 + 72) = 2139095039;
        *(v61 + 88) = 0;
        *(v61 + 96) = 0;
        *(v61 + 80) = 0;
        v67 = v61 + 104;
      }

      *(v45 - 56) = v67;
      v68 = sub_F6F6F4(v6);
      v69 = sub_73F1C(v6);
      *(v45 - 240) = sub_4992B4(v5, v68, *v69);
      *(v45 - 232) = v70;
      if (v6 == sub_45AC50(a3) && sub_E67BDC(a2))
      {
        v71 = v45 - 240;
        *v71 = *a2;
        v72 = *(a2 + 16);
        v73 = *(a2 + 32);
        v74 = *(a2 + 48);
        *(v71 + 63) = *(a2 + 63);
        *(v71 + 32) = v73;
        *(v71 + 48) = v74;
        *(v71 + 16) = v72;
        if (v45 - 240 != a2)
        {
          sub_146EC((v45 - 168), *(a2 + 72), *(a2 + 80), (*(a2 + 80) - *(a2 + 72)) >> 2);
        }

        v75 = *(a2 + 96);
        *(v45 - 128) = *(a2 + 112);
        *(v45 - 144) = v75;
        v76 = *(a2 + 120);
        *(v45 - 104) = *(a2 + 136);
        *(v45 - 120) = v76;
        sub_3E428((v45 - 88), a2 + 152);
      }

      v77 = a3[16];
      if (v77 >= a3[17])
      {
        v78 = sub_49C7F4(a3 + 15);
      }

      else
      {
        *(v77 + 8) = 0u;
        *(v77 + 24) = 0u;
        *(v77 + 40) = 0u;
        *(v77 + 56) = 0u;
        *(v77 + 72) = 0u;
        *(v77 + 88) = 0u;
        *(v77 + 104) = 0u;
        *v77 = -1;
        *(v77 + 8) = 0x7FFFFFFF;
        *(v77 + 16) = -1;
        *(v77 + 24) = -1;
        *(v77 + 32) = 0x7FFFFFFFFFFFFFFFLL;
        *(v77 + 48) = -1935635296;
        *(v77 + 56) = 0;
        *(v77 + 63) = 0;
        *(v77 + 72) = 0;
        *(v77 + 80) = 0;
        *(v77 + 88) = 0;
        *(v77 + 96) = 0;
        *(v77 + 104) = 0x7FFFFFFFFFFFFFFFLL;
        *(v77 + 112) = 100;
        *(v77 + 120) = 0;
        *(v77 + 128) = 0;
        *(v77 + 136) = v96;
        *(v77 + 216) = 0;
        *(v77 + 200) = 0u;
        *(v77 + 184) = 0u;
        *(v77 + 168) = 0u;
        *(v77 + 152) = 0u;
        *(v77 + 224) = 1;
        *(v77 + 236) = 0;
        *(v77 + 228) = 0;
        v78 = v77 + 240;
      }

      a3[16] = v78;
      if (v6 == sub_588D8(a3) - 552)
      {
        v79 = 2;
      }

      else
      {
        v79 = 3;
      }

      *(v78 - 16) = v79;
      v80 = sub_F6F70C(v6);
      v82 = (*v80 - **v80);
      v83 = 0.0;
      if (*v82 >= 9u)
      {
        v84 = v82[4];
        if (v84)
        {
          LODWORD(v81) = *(*v80 + v84);
          v83 = v81;
        }
      }

      LODWORD(v85) = *sub_F69058(v6);
      v86 = v83 * (v85 / 1000000000.0);
      if (v86 >= 0.0)
      {
        if (v86 < 4.50359963e15)
        {
          v87 = (v86 + v86) + 1;
          goto LABEL_57;
        }
      }

      else if (v86 > -4.50359963e15)
      {
        v87 = (v86 + v86) - 1 + (((v86 + v86) - 1) >> 63);
LABEL_57:
        v86 = (v87 >> 1);
      }

      v112[0] = v86;
      v88 = sub_F6F70C(v6);
      v89 = *(v88 + 32) | ((*(v88 + 36) & 0x1FFFFFFF) << 32);
      v110 = 0;
      v111 = v89;
      *&v103 = -1;
      DWORD2(v103) = 0x7FFFFFFF;
      v90 = *(sub_F6F70C(v6) + 36);
      v109 = (v90 & 0x20000000) == 0;
      v91 = *(v78 - 56);
      if (v91 >= *(v78 - 48))
      {
        v40 = sub_49CB7C(v78 - 64, &v111, &v103, v112, &v110, &v109);
      }

      else
      {
        v62 = (v90 & 0x20000000) == 0;
        v92 = v111;
        v93 = v112[0];
        if (v62)
        {
          v94 = 257;
        }

        else
        {
          v94 = 256;
        }

        *v91 = v110;
        v95 = DWORD2(v103);
        *(v91 + 8) = v103;
        *(v91 + 16) = v95;
        *(v91 + 24) = v93;
        *(v91 + 32) = v92;
        *(v91 + 40) = v94;
        *(v91 + 42) = 257;
        *(v91 + 48) = 0;
        *(v91 + 56) = 0;
        *(v91 + 64) = 0;
        *(v91 + 72) = 2139095039;
        *(v91 + 88) = 0;
        *(v91 + 96) = 0;
        *(v91 + 80) = 0;
        v40 = v91 + 104;
      }

      *(v78 - 56) = v40;
      v41 = sub_F6F70C(v6);
      v42 = sub_F69058(v6);
      *(v78 - 240) = sub_4992B4(v5, v41, *v42);
      *(v78 - 232) = v43;
      v6 += 552;
    }

    while (v6 != sub_588D8(a3));
  }

  nullsub_1();
  v8 = v7[1];
  v9 = v8 - *v7;
  if (v8 != *v7)
  {
    nullsub_1();
    v11 = *v10;
    v12 = sub_73F1C(*v10);
    v13 = *(v12 + 80);
    v15 = *(v12 + 32);
    v14 = *(v12 + 48);
    v107 = *(v12 + 64);
    v16 = *(v12 + 16);
    v103 = *v12;
    v104 = v16;
    v108 = v13;
    v105 = v15;
    v106 = v14;
    HIDWORD(v107) = 1;
    sub_F68F20(v11, &v103);
    v17 = sub_F69058(v11);
    v18 = *(v17 + 16);
    v97 = *v17;
    v98 = v18;
    v20 = *(v17 + 48);
    v19 = *(v17 + 64);
    v21 = *(v17 + 32);
    v102 = *(v17 + 80);
    v100 = v20;
    v101 = v19;
    v99 = v21;
    v22 = sub_F63FF4(a3) == 1 ? 2 : 4;
    HIDWORD(v101) = v22;
    sub_F6901C(v11, &v97);
    if (v9 != 552)
    {
      v23 = 0xF128CFC4A33F128DLL * (v9 >> 3);
      v24 = 1;
      v25 = 552;
      do
      {
        nullsub_1();
        v27 = *v26;
        v28 = sub_73F1C(*v26 + v25);
        v29 = *(v28 + 80);
        v31 = *(v28 + 32);
        v30 = *(v28 + 48);
        v107 = *(v28 + 64);
        v32 = *(v28 + 16);
        v103 = *v28;
        v104 = v32;
        v108 = v29;
        v105 = v31;
        v106 = v30;
        HIDWORD(v107) = 4;
        sub_F68F20(v27 + v25, &v103);
        v33 = sub_F69058(v27 + v25);
        v34 = *(v33 + 16);
        v97 = *v33;
        v98 = v34;
        v36 = *(v33 + 48);
        v35 = *(v33 + 64);
        v37 = *(v33 + 32);
        v102 = *(v33 + 80);
        v100 = v36;
        v101 = v35;
        v99 = v37;
        if (v24 == sub_F63FF4(a3) - 1)
        {
          v38 = 2;
        }

        else
        {
          v38 = 4;
        }

        HIDWORD(v101) = v38;
        sub_F6901C(v27 + v25, &v97);
        ++v24;
        v25 += 552;
      }

      while (v23 != v24);
    }
  }
}

double sub_499B64@<D0>(uint64_t a1@<X8>)
{
  sub_4E3D18(a1);
  sub_4E3D18((a1 + 48));
  *(a1 + 168) = 0;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  return result;
}

double sub_499BC0@<D0>(uint64_t a1@<X8>)
{
  sub_4E3D18(a1);
  sub_4E3D18((a1 + 48));
  *(a1 + 168) = 0;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  return result;
}

void sub_499C1C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  if (a2 == -1)
  {
    sub_4E3D18(a5);
    sub_4E3D18((a5 + 48));
    goto LABEL_22;
  }

  v8 = a2;
  v10 = sub_3B2978(*(a1 + 24));
  __p[0] = -1;
  LODWORD(__p[1]) = 0x7FFFFFFF;
  v11 = sub_4A084C((v10 + 2), 1u, 0);
  v12 = &v11[-*v11];
  if (*v12 >= 5u)
  {
    v13 = *(v12 + 2);
    if (v13)
    {
      v14 = &v11[v13 + *&v11[v13]];
      v15 = &v14[-*v14];
      if (*v15 >= 5u)
      {
        v16 = *(v15 + 2);
        if (v16)
        {
          if (v14[v16])
          {
            nullsub_1();
            v8 = v17;
          }
        }
      }
    }
  }

  v18 = sub_4A00CC(v10, v8, __p);
  if (v18 == -1 || (!v19 ? (v20 = HIDWORD(v18) == 0) : (v20 = 1), (v21 = __ROR8__(v18, 32), v20) ? (v22 = 0xFFFFFFFF00000000) : (v22 = v21), v22 <= 0xFFFFFFFEFFFFFFFFLL ? (v23 = v22 == 0) : (v23 = 1), v23))
  {
    sub_4E3D18(a5);
    sub_4E3D18((a5 + 48));
LABEL_22:
    *(a5 + 168) = 0;
    *(a5 + 96) = 0u;
    *(a5 + 112) = 0u;
    *(a5 + 128) = 0u;
    *(a5 + 144) = 0;
    *(a5 + 176) = 0;
    *(a5 + 184) = 0;
    return;
  }

  sub_4E3D18(__p);
  sub_4E3D18(v38);
  v41 = 0;
  memset(&v38[3], 0, 48);
  LOBYTE(v39[0]) = 0;
  v42 = 0;
  v43 = 0;
  sub_1160C14(*(a1 + 24), v22, v30);
  v24 = __p[0];
  if (__p[0])
  {
    v25 = __p[1];
    v26 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v25 = sub_4547F0(v25 - 552);
      }

      while (v25 != v24);
      v26 = __p[0];
    }

    __p[1] = v24;
    operator delete(v26);
  }

  *__p = *v30;
  v35 = v31;
  v30[1] = 0;
  v31 = 0;
  v30[0] = 0;
  if (SHIBYTE(v37) < 0)
  {
    operator delete(v36);
    v27 = v30[0];
    v36 = v32;
    v37 = v33;
    HIBYTE(v33) = 0;
    LOBYTE(v32) = 0;
    if (v30[0])
    {
      v28 = v30[1];
      v29 = v30[0];
      if (v30[1] != v30[0])
      {
        do
        {
          v28 = sub_4547F0(v28 - 552);
        }

        while (v28 != v27);
        v29 = v30[0];
      }

      v30[1] = v27;
      operator delete(v29);
    }
  }

  else
  {
    v36 = v32;
    v37 = v33;
  }

  sub_11612CC(__p, v30);
  if (v41 == 1)
  {
    if (v39[0])
    {
      v39[1] = v39[0];
      operator delete(v39[0]);
    }

    *v39 = *v30;
    v40 = v31;
  }

  else
  {
    *v39 = *v30;
    v40 = v31;
    v41 = 1;
  }

  sub_497164(a1, __p, a3, 0x7FFFFFFFFFFFFFFFLL, a4, 0, a5);
  sub_49AD08(__p);
}

void sub_499EFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_49AD08(va);
  _Unwind_Resume(a1);
}

void sub_499F10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_49AD08(va);
  _Unwind_Resume(a1);
}

void sub_499F24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_49AD08(va);
  _Unwind_Resume(a1);
}

void sub_499F38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_454784(va);
  _Unwind_Resume(a1);
}

uint64_t sub_499F74(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v4 = *(a2 + 8);
  if (v4 != *a2)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 4) < 0x555555555555556)
    {
      operator new();
    }

    sub_1794();
  }

  sub_2C1B08(a1 + 24, (a2 + 24));
  sub_2C1C04((a1 + 96), (a2 + 96));
  *(a1 + 120) = *(a2 + 120);
  v5 = *(a2 + 136);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a2 + 152);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = *(a2 + 160);
  *(a1 + 168) = 0u;
  *(a1 + 160) = v7;
  *(a1 + 184) = 0u;
  *(a1 + 200) = *(a2 + 200);
  prime = *(a2 + 176);
  if (prime == 1)
  {
    prime = 2;
LABEL_24:
    sub_B07C(a1 + 168, prime);
    goto LABEL_25;
  }

  if ((prime & (prime - 1)) != 0)
  {
    prime = std::__next_prime(*(a2 + 176));
    v9 = *(a1 + 176);
    v10 = prime >= *&v9;
    if (prime > *&v9)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v9 = 0;
    v10 = 1;
    if (prime)
    {
      goto LABEL_24;
    }
  }

  if (!v10)
  {
    v11 = vcvtps_u32_f32(*(a1 + 192) / *(a1 + 200));
    if (*&v9 < 3uLL || (v12 = vcnt_s8(v9), v12.i16[0] = vaddlv_u8(v12), v12.u32[0] > 1uLL))
    {
      v11 = std::__next_prime(v11);
    }

    else
    {
      v13 = 1 << -__clz(v11 - 1);
      if (v11 >= 2)
      {
        v11 = v13;
      }
    }

    if (prime <= v11)
    {
      prime = v11;
    }

    if (prime < *&v9)
    {
      goto LABEL_24;
    }
  }

LABEL_25:
  for (i = *(a2 + 184); i; i = *i)
  {
    sub_49A234((a1 + 168), i + 2, (i + 2));
  }

  return a1;
}

void sub_49A198(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void ***a9)
{
  *(v9 + 8) = v10;
  sub_2C1A58(&a9);
  _Unwind_Resume(a1);
}

void sub_49A1B0(_Unwind_Exception *a1)
{
  sub_2C13CC((v1 + 3));
  sub_1AA90(v1);
  _Unwind_Resume(a1);
}

void sub_49A1E0(_Unwind_Exception *a1)
{
  sub_2C1F20(v4);
  sub_1F1A8(v3);
  sub_1F1A8(v2);
  sub_1A104(v1 + 12);
  sub_2C13CC((v1 + 3));
  sub_1AA90(v1);
  _Unwind_Resume(a1);
}

uint64_t **sub_49A234(void *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2;
  v5 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v6 = v5;
  }

  v7 = sub_AAD8(v25, a2, v6);
  v8 = v7;
  v9 = a1[1];
  if (!*&v9)
  {
    goto LABEL_43;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  if (v10.u32[0] > 1uLL)
  {
    v11 = v7;
    if (v7 >= *&v9)
    {
      v11 = v7 % *&v9;
    }
  }

  else
  {
    v11 = (*&v9 - 1) & v7;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_43:
    sub_49A600();
  }

  v14 = *(v3 + 23);
  if (v14 >= 0)
  {
    v15 = *(v3 + 23);
  }

  else
  {
    v15 = v3[1];
  }

  if (v14 < 0)
  {
    v3 = *v3;
  }

  if (v10.u32[0] < 2uLL)
  {
    while (1)
    {
      v20 = v13[1];
      if (v20 == v8)
      {
        v21 = *(v13 + 39);
        v22 = v21;
        if (v21 < 0)
        {
          v21 = v13[3];
        }

        if (v21 == v15)
        {
          v23 = v22 >= 0 ? (v13 + 2) : v13[2];
          if (!memcmp(v23, v3, v15))
          {
            return v13;
          }
        }
      }

      else if ((v20 & (*&v9 - 1)) != v11)
      {
        goto LABEL_43;
      }

      v13 = *v13;
      if (!v13)
      {
        goto LABEL_43;
      }
    }
  }

  while (1)
  {
    v16 = v13[1];
    if (v16 == v8)
    {
      break;
    }

    if (v16 >= *&v9)
    {
      v16 %= *&v9;
    }

    if (v16 != v11)
    {
      goto LABEL_43;
    }

LABEL_20:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_43;
    }
  }

  v17 = *(v13 + 39);
  v18 = v17;
  if (v17 < 0)
  {
    v17 = v13[3];
  }

  if (v17 != v15)
  {
    goto LABEL_20;
  }

  v19 = v18 >= 0 ? (v13 + 2) : v13[2];
  if (memcmp(v19, v3, v15))
  {
    goto LABEL_20;
  }

  return v13;
}

void sub_49A5E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_7D330(va);
  _Unwind_Resume(a1);
}

void sub_49A6C0(_Unwind_Exception *a1)
{
  if (*(v2 + 39) < 0)
  {
    operator delete(*(v2 + 16));
  }

  sub_7D330(v1);
  _Unwind_Resume(a1);
}

uint64_t *sub_49A6E4(uint64_t *a1, __int128 **a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (((v2 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return a1;
}

void sub_49A7F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_49A814(va);
  *(v10 + 8) = v11;
  sub_49A874(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_49A814(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 9);
      v3 -= 4;
      if (v5 < 0)
      {
        operator delete(*v3);
      }
    }
  }

  return a1;
}

void ****sub_49A874(void ****a1)
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
          v6 = *(v4 - 9);
          v4 -= 4;
          if (v6 < 0)
          {
            operator delete(*v4);
          }
        }

        while (v4 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

void *sub_49A8F8(void *a1)
{
  v2 = a1[8];
  if (v2)
  {
    a1[9] = v2;
    operator delete(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    a1[6] = v3;
    operator delete(v3);
  }

  return a1;
}

char **sub_49A93C(char **a1)
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

        v3 -= 56;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_49A9B0(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v3 - v4) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v10);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = &v4[-*a1];
    v7 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3) + a2;
    if (v7 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1794();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v5) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (v9 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_1808();
    }

    v11 = (8 * (v6 >> 3));
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = &v11[v12];
    v14 = &v11[-v6];
    if (v5 != v4)
    {
      v15 = v5;
      v16 = v14;
      do
      {
        *v16 = *v15;
        *(v16 + 2) = *(v15 + 2);
        *v15 = 0;
        *(v15 + 1) = 0;
        *(v15 + 2) = 0;
        v15 += 24;
        v16 += 24;
      }

      while (v15 != v4);
      do
      {
        v17 = *v5;
        if (*v5)
        {
          *(v5 + 1) = v17;
          operator delete(v17);
        }

        v5 += 24;
      }

      while (v5 != v4);
      v5 = *a1;
    }

    *a1 = v14;
    *(a1 + 8) = v13;
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

void sub_49ABAC(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 2)
  {
    if (a2)
    {
      v10 = 4 * a2;
      memset(*(a1 + 8), 255, 4 * a2);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = (v6 >> 2) + a2;
    if (v7 >> 62)
    {
      sub_1794();
    }

    v8 = v3 - v5;
    if (v8 >> 1 > v7)
    {
      v7 = v8 >> 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v9 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 62))
      {
        operator new();
      }

      sub_1808();
    }

    v11 = (4 * (v6 >> 2));
    v12 = 4 * a2;
    memset(v11, 255, 4 * a2);
    memcpy(0, v5, v6);
    *a1 = 0;
    *(a1 + 8) = &v11[v12];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}