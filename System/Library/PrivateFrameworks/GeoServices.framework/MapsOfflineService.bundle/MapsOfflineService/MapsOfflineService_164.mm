void sub_9F9E3C(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_9F9E5C(uint64_t *a1@<X1>, __int128 **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = *a1;
  v25 = a1[1];
  if (*a1 == v25)
  {
    v4 = 0;
    v17 = 0;
    v19 = 0;
LABEL_27:
    v24 = 0;
    v20 = 0;
    goto LABEL_29;
  }

  v4 = 0;
  do
  {
    v6 = *(v3 + 80);
    v5 = *(v3 + 88);
    v26 = v3;
    while (v6 != v5)
    {
      v8 = a2[2];
      if (v4 < v8)
      {
        v7 = *v6;
        *(v4 + 12) = *(v6 + 12);
        *v4 = v7;
        v4 = (v4 + 28);
      }

      else
      {
        v9 = *a2;
        v10 = v4 - *a2;
        v11 = 0x6DB6DB6DB6DB6DB7 * (v10 >> 2) + 1;
        if (v11 > 0x924924924924924)
        {
          sub_1794();
        }

        v12 = 0x6DB6DB6DB6DB6DB7 * ((v8 - v9) >> 2);
        if (2 * v12 > v11)
        {
          v11 = 2 * v12;
        }

        if (v12 >= 0x492492492492492)
        {
          v13 = 0x924924924924924;
        }

        else
        {
          v13 = v11;
        }

        if (v13)
        {
          if (v13 <= 0x924924924924924)
          {
            operator new();
          }

          sub_1808();
        }

        v14 = (4 * (v10 >> 2));
        v15 = *v6;
        *(v14 + 12) = *(v6 + 12);
        *v14 = v15;
        v4 = (v14 + 28);
        v16 = (v14 - v10);
        memcpy(v14 - v10, v9, v10);
        *a2 = v16;
        a2[1] = v4;
        a2[2] = 0;
        if (v9)
        {
          operator delete(v9);
        }
      }

      a2[1] = v4;
      v6 = (v6 + 28);
    }

    v3 = v26 + 144;
  }

  while (v26 + 144 != v25);
  v17 = *a2;
  v18 = v4 - *a2;
  v19 = 0x6DB6DB6DB6DB6DB7 * (v18 >> 2);
  if (v18 < 3585)
  {
    goto LABEL_27;
  }

  v20 = 0x6DB6DB6DB6DB6DB7 * (v18 >> 2);
  while (1)
  {
    v21 = operator new(28 * v20, &std::nothrow);
    if (v21)
    {
      break;
    }

    v22 = v20 >> 1;
    v23 = v20 > 1;
    v20 >>= 1;
    if (!v23)
    {
      v24 = 0;
      v20 = v22;
      goto LABEL_29;
    }
  }

  v24 = v21;
LABEL_29:
  sub_A04EC8(v17, v4, v19, v24, v20);
  if (v24)
  {

    operator delete(v24);
  }
}

void sub_9FA0E4(_Unwind_Exception *a1)
{
  if (v2)
  {
    operator delete(v2);
  }

  v4 = a1;
  v5 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v5;
    operator delete(v5);
    v4 = a1;
  }

  _Unwind_Resume(v4);
}

uint64_t sub_9FA120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int **a5, char a6, int a7)
{
  if (*(a1 + 7) != 1)
  {
    __p = 0;
    v34 = 0;
    v35.__locale_ = 0;
    v20 = 0x6DB6DB6DB6DB6DB7 * (a5[1] - *a5);
    if (v20 == -1)
    {
      operator new();
    }

    if (!((v20 + 1) >> 62))
    {
      operator new();
    }

    sub_1794();
  }

  v10 = (a4 + 60);
  if (!a7)
  {
    v10 = (a3 + 140);
  }

  if (*v10)
  {
    v11 = (a3 + 104);
    if (a7)
    {
      v11 = (a4 + 24);
    }

    if (*v11 != v11[1])
    {
      v12 = sub_B6C0(&v43, *(*v11 + 8), *(*v11 + 12));
      if (sub_B6E0(v12))
      {
        return v43;
      }

      if (sub_7E7E4(1u))
      {
        sub_19594F8(&__p);
        v13 = sub_4A5C(&__p, "Invalid service frequency found: ", 33);
        v14 = sub_B720(v13, v43);
        v15 = sub_4A5C(v14, " (trip_muid: ", 13);
        v16 = *(a1 + 32);
        v31 = vrev64_s32(*(a2 + 4));
        sub_9F957C(v16, &v31);
        v18 = std::ostream::operator<<(v15, v17);
        sub_4A5C(v18, ")", 1);
        if ((v42 & 0x10) != 0)
        {
          v21 = v41;
          if (v41 < v38)
          {
            v41 = v38;
            v21 = v38;
          }

          v22 = &v37;
        }

        else
        {
          if ((v42 & 8) == 0)
          {
            v19 = 0;
            v32 = 0;
LABEL_27:
            *(&v31 + v19) = 0;
            sub_7E854(&v31, 1u);
            if (v32 < 0)
            {
              operator delete(v31);
            }

            if (v40 < 0)
            {
              operator delete(v39);
            }

            std::locale::~locale(&v35);
            std::ostream::~ostream();
            std::ios::~ios();
            goto LABEL_32;
          }

          v22 = v36;
          v21 = v36[2];
        }

        v23 = *v22;
        v19 = v21 - *v22;
        if (v19 >= 0x7FFFFFFFFFFFFFF8)
        {
          sub_3244();
        }

        if (v19 >= 0x17)
        {
          operator new();
        }

        v32 = v21 - *v22;
        if (v19)
        {
          memmove(&v31, v23, v19);
        }

        goto LABEL_27;
      }
    }
  }

LABEL_32:
  if (a6)
  {
    return 0x7FFFFFFF7FFFFFFFLL;
  }

  v25 = *(a1 + 32);
  v26 = *(a2 + 48);
  v27 = sub_3A25A8(v25, *(a2 + 8) | (*(a2 + 4) << 32), 0, "trip");
  v28 = (v27 + *(v27 - *v27 + 18));
  v29 = sub_96AE18(*(&v28[3 * v26 + 1] + *v28));
  sub_B6C8(&__p, 10 * v29);
  return __p;
}

void sub_9FA748(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
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

void sub_9FA788(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (!__p)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void sub_9FA7C0(uint64_t a1@<X0>, unint64_t *a2@<X1>, unsigned int a3@<W2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v9 = sub_A0013C(a1, *a2, a3, a4);
  if (!v9)
  {
    goto LABEL_19;
  }

  v10 = (v9 - *v9);
  if (*v10 < 5u)
  {
    goto LABEL_19;
  }

  v11 = v10[2];
  if (!v11)
  {
    goto LABEL_19;
  }

  v12 = *(v9 + v11);
  if (v12 == 0xFFFF)
  {
    goto LABEL_19;
  }

  v13 = *a2;
  v14 = sub_3A231C(a1, v13, 0);
  v15 = &v14[-*v14];
  if (*v15 < 5u)
  {
    v16 = 0;
  }

  else
  {
    v16 = *(v15 + 2);
    if (*(v15 + 2))
    {
      v16 += &v14[*&v14[v16]];
    }
  }

  v17 = (v16 + 4 * HIDWORD(v13) + 4 + *(v16 + 4 * HIDWORD(v13) + 4));
  v18 = (v17 - *v17);
  if (*v18 >= 0xDu && (v19 = v18[6]) != 0)
  {
    v20 = *(v17 + v19);
  }

  else
  {
    v20 = -1;
  }

  v21 = sub_502FF8(a1, *&v14[24 * v20 + 4 + 24 * a3 + *(v15 + 3) + *&v14[*(v15 + 3)]], 0, "stop");
  v22 = (v21 - *v21);
  if (*v22 >= 0x35u && (v23 = v22[26]) != 0 && (v24 = (v21 + v23 + *(v21 + v23)), *v24 > v12))
  {
    v25 = (&v24[v12 + 1] + v24[v12 + 1]);

    sub_509164(v25, a5);
  }

  else
  {
LABEL_19:
    *a5 = 0;
    *(a5 + 8) = 0;
    *(a5 + 16) = 0;
    *(a5 + 24) = 2;
    *(a5 + 32) = sub_12331FC();
    *(a5 + 40) = 0;
    *(a5 + 48) = 0;
    *(a5 + 56) = 0;
  }
}

void sub_9FA970(uint64_t a1@<X0>, const void **a2@<X3>, uint64_t a3@<X8>, unint64_t a4@<X1>, uint64_t a5@<X2>)
{
  v7 = *(a1 + 24);
  if (*(a2 + 176) == 1)
  {
    sub_9FB830(v7, a4, a5, v18);
    if (v24 != 1)
    {
      goto LABEL_18;
    }
  }

  else
  {
    sub_9FB9D0(v7, a4, a5, v18);
    if (v24 != 1)
    {
LABEL_18:
      *(a3 + 32) = 0u;
      *(a3 + 48) = 0u;
      *(a3 + 64) = 0u;
      *(a3 + 80) = 0u;
      *(a3 + 96) = 0u;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      *(a3 + 40) = -1;
      *(a3 + 43) = -1;
      *(a3 + 47) = 0;
      *(a3 + 55) = 0;
      *(a3 + 63) = 0;
      *(a3 + 71) = 0;
      *(a3 + 80) = 0;
      *(a3 + 88) = 0;
      *(a3 + 96) = 0;
      *(a3 + 104) = 0;
      goto LABEL_19;
    }
  }

  if (v23 == 1)
  {
    v9 = *(a2 + 23);
    if (v9 < 0)
    {
      v9 = a2[1];
    }

    if (!v9)
    {
      goto LABEL_18;
    }

    v10 = *(a2 + 55);
    if (v10 < 0)
    {
      v10 = a2[5];
    }

    if (!v10)
    {
      goto LABEL_18;
    }
  }

  sub_9A77D0(v18, 0, a3, v8);
  if (v23 == 1)
  {
    if (*(a3 + 32) != 1)
    {
      sub_5AF20();
    }

    v11 = (a3 + 8);
    if ((a3 + 8) != a2)
    {
      v12 = *(a2 + 23);
      if (*(a3 + 31) < 0)
      {
        if (v12 >= 0)
        {
          v16 = a2;
        }

        else
        {
          v16 = *a2;
        }

        if (v12 >= 0)
        {
          v17 = *(a2 + 23);
        }

        else
        {
          v17 = a2[1];
        }

        sub_13B38(v11, v16, v17);
      }

      else if ((*(a2 + 23) & 0x80) != 0)
      {
        sub_13A68(v11, *a2, a2[1]);
      }

      else
      {
        *v11 = *a2;
        *(a3 + 24) = a2[2];
      }
    }
  }

LABEL_19:
  if (v24 == 1)
  {
    v13 = __p;
    if (__p)
    {
      v14 = v22;
      v15 = __p;
      if (v22 != __p)
      {
        do
        {
          if (*(v14 - 1) < 0)
          {
            operator delete(*(v14 - 3));
          }

          v14 -= 4;
        }

        while (v14 != v13);
        v15 = __p;
      }

      v22 = v13;
      operator delete(v15);
    }

    if (v20 < 0)
    {
      operator delete(v19);
    }
  }
}

void sub_9FAB64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_53E440(v3);
  sub_A01550(va);
  _Unwind_Resume(a1);
}

void sub_9FAB80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_A01550(va);
  _Unwind_Resume(a1);
}

void sub_9FAB94(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, __int128 **a6@<X8>)
{
  v11 = *a1;
  v60 = vrev64_s32(*(a2 + 4));
  sub_9586F4(v11, &v60, *(a2 + 16), &v69);
  sub_9D69F4(&v69, &v74);
  v12 = __p;
  if (__p)
  {
    v13 = v73;
    v14 = __p;
    if (v73 != __p)
    {
      do
      {
        if (*(v13 - 1) < 0)
        {
          operator delete(*(v13 - 3));
        }

        v13 -= 4;
      }

      while (v13 != v12);
      v14 = __p;
    }

    v73 = v12;
    operator delete(v14);
  }

  if (SHIBYTE(v71) < 0)
  {
    operator delete(v69);
    v16 = v76;
    if ((v76 & 0x80u) != 0)
    {
      v16 = v75;
    }

    if (!v16)
    {
      goto LABEL_58;
    }
  }

  else
  {
    v15 = v76;
    if ((v76 & 0x80u) != 0)
    {
      v15 = v75;
    }

    if (!v15)
    {
      goto LABEL_58;
    }
  }

  v17 = v79;
  if ((v79 & 0x80u) != 0)
  {
    v17 = v78;
  }

  if (!v17)
  {
LABEL_58:
    *a6 = 0;
    a6[1] = 0;
    a6[2] = 0;
    goto LABEL_121;
  }

  *a6 = 0;
  a6[1] = 0;
  a6[2] = 0;
  v57 = a6;
  a6[1] = sub_A02200(a6, &v74);
  *v66 = 0u;
  *v67 = 0u;
  v68 = 1065353216;
  v18 = a4[1];
  if (v18 != *a4)
  {
    v19 = 0x6DB6DB6DB6DB6DB7 * ((v18 - *a4) >> 2);
    do
    {
      if (*(a2 + 24) - *(v18 - 12) > 900)
      {
        break;
      }

      v20 = *a1;
      v58 = *(v18 - 24);
      v59 = *(v18 - 28);
      sub_9586F4(v20, &v58, *(v18 - 16), &v69);
      sub_9D69F4(&v69, &v60);
      v21 = __p;
      if (__p)
      {
        v22 = v73;
        v23 = __p;
        if (v73 != __p)
        {
          do
          {
            if (*(v22 - 1) < 0)
            {
              operator delete(*(v22 - 3));
            }

            v22 -= 4;
          }

          while (v22 != v21);
          v23 = __p;
        }

        v73 = v21;
        operator delete(v23);
      }

      if (SHIBYTE(v71) < 0)
      {
        operator delete(v69);
      }

      --v19;
      if ((v62 & 0x80u) == 0)
      {
        v24 = v62;
      }

      else
      {
        v24 = v61;
      }

      if (!v24)
      {
        goto LABEL_52;
      }

      v25 = v65;
      if ((v65 & 0x80u) != 0)
      {
        v25 = v64;
      }

      if (!v25)
      {
        goto LABEL_52;
      }

      v26 = v76;
      if ((v76 & 0x80u) != 0)
      {
        v26 = v75;
      }

      if (v24 == v26 && ((v62 & 0x80u) == 0 ? (v27 = &v60) : (v27 = v60), (v76 & 0x80u) == 0 ? (v28 = &v74) : (v28 = v74), !memcmp(v27, v28, v24)) || (v69 = &v60, v29 = sub_A024DC(v66, &v60, &unk_229EB70, &v69, &v58), v30 = *(v29 + 18), *(v29 + 18) = v30 + 1, v30))
      {
LABEL_52:
        if ((v65 & 0x80000000) == 0)
        {
          goto LABEL_53;
        }
      }

      else
      {
        v29[10] = v19;
        if ((v65 & 0x80000000) == 0)
        {
LABEL_53:
          if (v62 < 0)
          {
            goto LABEL_57;
          }

          goto LABEL_22;
        }
      }

      operator delete(v63);
      if (v62 < 0)
      {
LABEL_57:
        operator delete(v60);
      }

LABEL_22:
      v18 -= 28;
    }

    while (v18 != *a4);
  }

  v31 = a3[1] - *a3;
  if (v31)
  {
    v32 = 0;
    v33 = 0x6DB6DB6DB6DB6DB7 * (v31 >> 2);
    do
    {
      v34 = (*a3 + 28 * v32);
      if (v34[4] - *(a2 + 24) > 900)
      {
        break;
      }

      v35 = *a1;
      v58 = v34[1];
      v59 = *v34;
      sub_9586F4(v35, &v58, v34[3], &v69);
      sub_9D69F4(&v69, &v60);
      v36 = __p;
      if (__p)
      {
        v37 = v73;
        v38 = __p;
        if (v73 != __p)
        {
          do
          {
            if (*(v37 - 1) < 0)
            {
              operator delete(*(v37 - 3));
            }

            v37 -= 4;
          }

          while (v37 != v36);
          v38 = __p;
        }

        v73 = v36;
        operator delete(v38);
      }

      if (SHIBYTE(v71) < 0)
      {
        operator delete(v69);
        v39 = v62;
        if ((v62 & 0x80u) == 0)
        {
          v40 = v62;
        }

        else
        {
          v40 = v61;
        }

        if (!v40)
        {
          goto LABEL_95;
        }
      }

      else
      {
        v39 = v62;
        if ((v62 & 0x80u) == 0)
        {
          v40 = v62;
        }

        else
        {
          v40 = v61;
        }

        if (!v40)
        {
          goto LABEL_95;
        }
      }

      v41 = v65;
      if ((v65 & 0x80u) != 0)
      {
        v41 = v64;
      }

      if (!v41)
      {
        goto LABEL_95;
      }

      v42 = v76;
      if ((v76 & 0x80u) != 0)
      {
        v42 = v75;
      }

      if (v40 == v42 && (v39 >= 0 ? (v43 = &v60) : (v43 = v60), (v76 & 0x80u) == 0 ? (v44 = &v74) : (v44 = v74), !memcmp(v43, v44, v40)) || (v69 = &v60, v45 = sub_A024DC(v66, &v60, &unk_229EB70, &v69, &v58), v46 = *(v45 + 18), *(v45 + 18) = v46 + 1, v46))
      {
LABEL_95:
        if ((v65 & 0x80000000) == 0)
        {
          goto LABEL_96;
        }

        goto LABEL_99;
      }

      v45[10] = (v32 + 0x6DB6DB6DB6DB6DB7 * ((a4[1] - *a4) >> 2));
      if ((v65 & 0x80000000) == 0)
      {
LABEL_96:
        if (v62 < 0)
        {
          goto LABEL_100;
        }

        goto LABEL_61;
      }

LABEL_99:
      operator delete(v63);
      if (v62 < 0)
      {
LABEL_100:
        operator delete(v60);
      }

LABEL_61:
      ++v32;
    }

    while (v32 != v33);
  }

  if (v67[1])
  {
    v70 = 0;
    v71 = 0;
    v69 = 0;
    if (v67[0])
    {
      v47 = 0;
      v48 = -1;
      v49 = v67[0];
      do
      {
        v49 = *v49;
        ++v48;
        v47 += 72;
      }

      while (v49);
      v60 = &v69;
      LOBYTE(v61) = 0;
      if (v48 < 0x38E38E38E38E38ELL)
      {
        operator new();
      }

      sub_1794();
    }

    sub_A02C84(0, 0, &v60, 0, 1);
    sub_A02080(v57, 0x6DB6DB6DB6DB6DB7 * ((v57[1] - *v57) >> 3) - 0x71C71C71C71C71C7 * ((v70 - v69) >> 3));
    sub_A04C24(v69, v70, v57);
    v50 = v69;
    if (v69)
    {
      v51 = v70;
      v52 = v69;
      if (v70 == v69)
      {
LABEL_117:
        v70 = v50;
        operator delete(v52);
        goto LABEL_118;
      }

      while (1)
      {
        if (*(v51 - 17) < 0)
        {
          operator delete(*(v51 - 5));
          v53 = (v51 - 72);
          if (*(v51 - 49) < 0)
          {
LABEL_115:
            operator delete(*v53);
          }
        }

        else
        {
          v53 = (v51 - 72);
          if (*(v51 - 49) < 0)
          {
            goto LABEL_115;
          }
        }

        v51 = v53;
        if (v53 == v50)
        {
          v52 = v69;
          goto LABEL_117;
        }
      }
    }
  }

LABEL_118:
  v54 = v67[0];
  if (v67[0])
  {
    do
    {
      v56 = *v54;
      if (*(v54 + 71) < 0)
      {
        operator delete(v54[6]);
        if (*(v54 + 39) < 0)
        {
LABEL_129:
          operator delete(v54[2]);
        }
      }

      else if (*(v54 + 39) < 0)
      {
        goto LABEL_129;
      }

      operator delete(v54);
      v54 = v56;
    }

    while (v56);
  }

  v55 = v66[0];
  v66[0] = 0;
  if (v55)
  {
    operator delete(v55);
  }

LABEL_121:
  if ((v79 & 0x80000000) == 0)
  {
    if ((v76 & 0x80000000) == 0)
    {
      return;
    }

LABEL_131:
    operator delete(v74);
    return;
  }

  operator delete(v77);
  if (v76 < 0)
  {
    goto LABEL_131;
  }
}

void sub_9FB2F8(_Unwind_Exception *a1, uint64_t a2, void ***a3, uint64_t a4, uint64_t a5, void ***a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v9 = va_arg(va1, void ***);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  sub_A02BD4(va);
  sub_A04E40(va1);
  sub_9354C4(a6);
  sub_509680(v7 - 144);
  _Unwind_Resume(a1);
}

uint64_t sub_9FB3A8(uint64_t result, char *a2)
{
  v2 = a2;
  v3 = result;
  if (*(result + 56) != 1)
  {
    if (a2[23] < 0)
    {
      sub_325C(result, *a2, *(a2 + 1));
      *(v3 + 24) = v2[24];
      if ((v2[55] & 0x80000000) == 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v7 = *a2;
      *(result + 16) = *(a2 + 2);
      *result = v7;
      *(result + 24) = a2[24];
      if ((a2[55] & 0x80000000) == 0)
      {
LABEL_9:
        v8 = *(v2 + 2);
        *(v3 + 48) = *(v2 + 6);
        *(v3 + 32) = v8;
        *(v3 + 56) = 1;
        return v3;
      }
    }

    sub_325C((v3 + 32), *(v2 + 4), *(v2 + 5));
    *(v3 + 56) = 1;
    return v3;
  }

  if (result == a2)
  {
    *(result + 24) = a2[24];
    return result;
  }

  if (*(result + 23) < 0)
  {
    if (a2[23] >= 0)
    {
      v9 = a2[23];
    }

    else
    {
      a2 = *a2;
      v9 = *(v2 + 1);
    }

    sub_13B38(result, a2, v9);
    *(v3 + 24) = v2[24];
    v5 = v2 + 32;
    v6 = v2[55];
    if (*(v3 + 55) < 0)
    {
      goto LABEL_21;
    }
  }

  else if (a2[23] < 0)
  {
    sub_13A68(result, *a2, *(a2 + 1));
    *(v3 + 24) = v2[24];
    v5 = v2 + 32;
    v6 = v2[55];
    if (*(v3 + 55) < 0)
    {
LABEL_21:
      if ((v6 & 0x80u) == 0)
      {
        v11 = v5;
      }

      else
      {
        v11 = *(v2 + 4);
      }

      if ((v6 & 0x80u) == 0)
      {
        v12 = v6;
      }

      else
      {
        v12 = *(v2 + 5);
      }

      sub_13B38((v3 + 32), v11, v12);
      return v3;
    }
  }

  else
  {
    v4 = *a2;
    *(result + 16) = *(a2 + 2);
    *result = v4;
    *(result + 24) = a2[24];
    v5 = a2 + 32;
    v6 = a2[55];
    if (*(result + 55) < 0)
    {
      goto LABEL_21;
    }
  }

  if ((v6 & 0x80) != 0)
  {
    sub_13A68((v3 + 32), *(v2 + 4), *(v2 + 5));
  }

  else
  {
    v10 = *v5;
    *(v3 + 48) = *(v5 + 2);
    *(v3 + 32) = v10;
  }

  return v3;
}

void sub_9FB57C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_9FB598(uint64_t a1@<X0>, const void **a2@<X1>, const void **a3@<X2>, uint64_t a4@<X3>, std::string *a5@<X8>)
{
  sub_2A8074(a1, a3, a4, &v23);
  v8 = *(a2 + 23);
  v9 = v8;
  v10 = a2[1];
  if ((v8 & 0x80u) == 0)
  {
    v11 = *(a2 + 23);
  }

  else
  {
    v11 = a2[1];
  }

  if (!v11)
  {
    goto LABEL_10;
  }

  size = HIBYTE(v23.__r_.__value_.__r.__words[2]);
  if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v23.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    if (*(a1 + 23) < 0)
    {
      sub_325C(__p, *a1, *(a1 + 8));
      v8 = *(a2 + 23);
      v10 = a2[1];
      v9 = *(a2 + 23);
    }

    else
    {
      *__p = *a1;
      v22 = *(a1 + 16);
    }
  }

  else
  {
LABEL_10:
    HIBYTE(v22) = 0;
    LOBYTE(__p[0]) = 0;
  }

  if (v9 >= 0)
  {
    v13 = v8;
  }

  else
  {
    v13 = v10;
  }

  if (v22 >= 0)
  {
    v14 = HIBYTE(v22);
  }

  else
  {
    v14 = __p[1];
  }

  if (v14 + v13 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  if (v14 + v13 > 0x16)
  {
    operator new();
  }

  memset(&v20, 0, sizeof(v20));
  *(&v20.__r_.__value_.__s + 23) = v14 + v13;
  if (v13)
  {
    if (*(a2 + 23) >= 0)
    {
      v15 = a2;
    }

    else
    {
      v15 = *a2;
    }

    memmove(&v20, v15, v13);
  }

  if (v14)
  {
    if (v22 >= 0)
    {
      v16 = __p;
    }

    else
    {
      v16 = __p[0];
    }

    memmove(&v20 + v13, v16, v14);
  }

  v20.__r_.__value_.__s.__data_[v13 + v14] = 0;
  if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = &v23;
  }

  else
  {
    v17 = v23.__r_.__value_.__r.__words[0];
  }

  if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = HIBYTE(v23.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v18 = v23.__r_.__value_.__l.__size_;
  }

  v19 = std::string::append(&v20, v17, v18);
  *a5 = *v19;
  v19->__r_.__value_.__l.__size_ = 0;
  v19->__r_.__value_.__r.__words[2] = 0;
  v19->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v22) & 0x80000000) == 0)
    {
LABEL_38:
      if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return;
      }

LABEL_42:
      operator delete(v23.__r_.__value_.__l.__data_);
      return;
    }
  }

  else if ((SHIBYTE(v22) & 0x80000000) == 0)
  {
    goto LABEL_38;
  }

  operator delete(__p[0]);
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_42;
  }
}

void sub_9FB7BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if ((a27 & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void sub_9FB830(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = sub_502FF8(a1, a2, 0, "stop");
  v7 = (v6 - *v6);
  if (*v7 >= 0x47u && (v8 = v7[35]) != 0)
  {
    v9 = (v6 + v8 + *(v6 + v8));
    v20 = 0uLL;
    v21 = 0;
    sub_A00FA8(&v20, *v9);
    v23 = (v9 + 1);
    v22 = &v9[*v9 + 1];
    sub_A01258(&v23, &v22, &v20, sub_A00DC4);
    v10 = v20;
    v11 = v21;
  }

  else
  {
    v11 = 0;
    v10 = 0uLL;
  }

  *__p = v10;
  v19 = v11;
  sub_A00BFC(__p, a3, a4);
  v12 = __p[0];
  if (__p[0])
  {
    v13 = __p[1];
    v14 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v15 = *(v13 - 6);
        if (v15)
        {
          v16 = *(v13 - 5);
          v17 = *(v13 - 6);
          if (v16 != v15)
          {
            do
            {
              if (*(v16 - 1) < 0)
              {
                operator delete(*(v16 - 24));
              }

              v16 -= 32;
            }

            while (v16 != v15);
            v17 = *(v13 - 6);
          }

          *(v13 - 5) = v15;
          operator delete(v17);
        }

        if (*(v13 - 65) < 0)
        {
          operator delete(*(v13 - 11));
        }

        v13 -= 96;
      }

      while (v13 != v12);
      v14 = __p[0];
    }

    __p[1] = v12;
    operator delete(v14);
  }
}

void sub_9FB9A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_A00D00(va);
  _Unwind_Resume(a1);
}

void sub_9FB9D0(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = sub_502FF8(a1, a2, 0, "stop");
  v7 = (v6 - *v6);
  if (*v7 >= 0x41u && (v8 = v7[32]) != 0)
  {
    v9 = (v6 + v8 + *(v6 + v8));
    v20 = 0uLL;
    v21 = 0;
    sub_A00FA8(&v20, *v9);
    v23 = (v9 + 1);
    v22 = &v9[*v9 + 1];
    sub_A01258(&v23, &v22, &v20, sub_A00DC4);
    v10 = v20;
    v11 = v21;
  }

  else
  {
    v11 = 0;
    v10 = 0uLL;
  }

  *__p = v10;
  v19 = v11;
  sub_A00BFC(__p, a3, a4);
  v12 = __p[0];
  if (__p[0])
  {
    v13 = __p[1];
    v14 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v15 = *(v13 - 6);
        if (v15)
        {
          v16 = *(v13 - 5);
          v17 = *(v13 - 6);
          if (v16 != v15)
          {
            do
            {
              if (*(v16 - 1) < 0)
              {
                operator delete(*(v16 - 24));
              }

              v16 -= 32;
            }

            while (v16 != v15);
            v17 = *(v13 - 6);
          }

          *(v13 - 5) = v15;
          operator delete(v17);
        }

        if (*(v13 - 65) < 0)
        {
          operator delete(*(v13 - 11));
        }

        v13 -= 96;
      }

      while (v13 != v12);
      v14 = __p[0];
    }

    __p[1] = v12;
    operator delete(v14);
  }
}

void sub_9FBB48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_A00D00(va);
  _Unwind_Resume(a1);
}

void sub_9FBB70(uint64_t a1@<X0>, unsigned int *a2@<X1>, void *a3@<X8>)
{
  sub_2B3C60(a1, a2, 1, &__p);
  v5 = __p;
  if (__p == v20)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    if (!v5)
    {
      return;
    }

    goto LABEL_18;
  }

  v6 = sub_2B51D8(a1, *(__p + 1));
  v7 = (v6 - *v6);
  if (*v7 >= 0xDu && (v8 = v7[6]) != 0)
  {
    v9 = 4 * *(v6 + v8);
  }

  else
  {
    v9 = 0;
  }

  v10 = sub_2AF704(a1 + 3896, 1u, 0);
  v11 = &v10[-*v10];
  if (*v11 < 0xBu)
  {
    v12 = 0;
  }

  else
  {
    v12 = *(v11 + 5);
    if (v12)
    {
      v12 += &v10[*&v10[v12]];
    }
  }

  v13 = (v12 + v9 + 4 + *(v12 + v9 + 4));
  v14 = (v13 - *v13);
  if (*v14 < 7u || (v15 = v14[3]) == 0)
  {
    *(a3 + 23) = 0;
    *a3 = 0;
    v5 = __p;
    if (!__p)
    {
      return;
    }

    goto LABEL_18;
  }

  v16 = (v13 + v15);
  v17 = *v16;
  v18 = *(v16 + v17);
  if (v18 >= 0x17)
  {
    operator new();
  }

  *(a3 + 23) = v18;
  if (v18)
  {
    memcpy(a3, v16 + v17 + 4, v18);
  }

  *(a3 + v18) = 0;
  v5 = __p;
  if (__p)
  {
LABEL_18:
    v20 = v5;
    operator delete(v5);
  }
}

void sub_9FBD0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_9FBD28(uint64_t a1, _DWORD *a2)
{
  if (a2[282])
  {
    return 0;
  }

  v5 = sub_3A25A8(*(a1 + 32), a2[2] | (a2[1] << 32), 0, "trip");
  v6 = sub_92FC60(*(a1 + 32), *(v5 + *(v5 - *v5 + 6)), 0, "line");
  v7 = (v6 - *v6);
  if (*v7 >= 0x3Du)
  {
    v8 = v7[30];
    if (v8)
    {
      if (*(v6 + v8))
      {
        return 1;
      }
    }
  }

  v9 = *(a1 + 40);
  v10 = **(v9 + 3896);
  return v10 && sub_39F47C(v10, a2[2] | (a2[1] << 32), a2[3], *(v9 + 3904));
}

uint64_t *sub_9FBE1C(void *a1, uint64_t *a2)
{
  v2 = sub_62A70(a1, a2);
  if (!v2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::operator+<char>();
    if ((v15 & 0x80u) == 0)
    {
      v6 = &v13;
    }

    else
    {
      v6 = v13;
    }

    if ((v15 & 0x80u) == 0)
    {
      v7 = v15;
    }

    else
    {
      v7 = v14;
    }

    v8 = sub_2D390(exception, v6, v7);
  }

  v3 = *(v2 + 12);
  if (v3 == 4 || v3 == 3)
  {
    return v2[5];
  }

  if (v3 != 2)
  {
    v9 = __cxa_allocate_exception(0x40uLL);
    std::operator+<char>();
    if ((v15 & 0x80u) == 0)
    {
      v10 = &v13;
    }

    else
    {
      v10 = v13;
    }

    if ((v15 & 0x80u) == 0)
    {
      v11 = v15;
    }

    else
    {
      v11 = v14;
    }

    v12 = sub_2D390(v9, v10, v11);
  }

  return *(v2 + 5);
}

void sub_9FBF58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void **sub_9FBF90(void ***a1, uint64_t a2)
{
  v2 = 0xDAB7EC1DD3431B57 * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x13E22CBCE4A902)
  {
    sub_1794();
  }

  if (0xB56FD83BA68636AELL * ((a1[2] - *a1) >> 5) > v3)
  {
    v3 = 0xB56FD83BA68636AELL * ((a1[2] - *a1) >> 5);
  }

  if (0xDAB7EC1DD3431B57 * ((a1[2] - *a1) >> 5) >= 0x9F1165E725481)
  {
    v5 = 0x13E22CBCE4A902;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x13E22CBCE4A902)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 32 * ((a1[1] - *a1) >> 5);
  sub_9FC0F4(v6, a2);
  v7 = (3296 * v2 + 3296);
  v8 = *a1;
  v9 = a1[1];
  v10 = (v6 + *a1 - v9);
  if (v9 != *a1)
  {
    v11 = *a1;
    v12 = v10;
    do
    {
      v13 = sub_9FC0F4(v12, v11);
      v11 += 412;
      v12 = v13 + 3296;
    }

    while (v11 != v9);
    do
    {
      sub_9FC74C(v8);
      v8 += 412;
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

uint64_t sub_9FC0F4(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = 0;
  *a1 = 0u;
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = 0;
  *a2 = 0u;
  v4 = *(a2 + 24);
  v5 = *(a2 + 40);
  v6 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 56) = v6;
  *(a1 + 40) = v5;
  *(a1 + 24) = v4;
  sub_9C08B0(a1 + 80, a2 + 80);
  v7 = *(a2 + 1040);
  *(a1 + 1048) = *(a2 + 1048);
  *(a1 + 1040) = v7;
  *(a1 + 1056) = 0;
  *(a1 + 1064) = 0u;
  *(a1 + 1056) = *(a2 + 1056);
  *(a1 + 1072) = *(a2 + 1072);
  *(a2 + 1072) = 0;
  *(a2 + 1056) = 0u;
  *(a1 + 1096) = 0;
  *(a1 + 1080) = 0u;
  *(a1 + 1080) = *(a2 + 1080);
  *(a1 + 1088) = *(a2 + 1088);
  *(a2 + 1096) = 0;
  *(a2 + 1080) = 0u;
  *(a1 + 1120) = 0;
  *(a1 + 1104) = 0u;
  *(a1 + 1104) = *(a2 + 1104);
  *(a1 + 1120) = *(a2 + 1120);
  *(a2 + 1120) = 0;
  *(a2 + 1104) = 0u;
  v8 = *(a2 + 1128);
  *(a1 + 1144) = *(a2 + 1144);
  *(a1 + 1128) = v8;
  *(a2 + 1136) = 0u;
  *(a2 + 1128) = 0;
  *(a1 + 1152) = *(a2 + 1152);
  *(a1 + 1160) = *(a2 + 1160);
  v9 = *(a2 + 1168);
  *(a1 + 1184) = *(a2 + 1184);
  *(a1 + 1168) = v9;
  *(a2 + 1176) = 0u;
  *(a2 + 1168) = 0;
  *(a1 + 1192) = *(a2 + 1192);
  *(a1 + 1208) = 0u;
  *(a1 + 1200) = 0;
  *(a1 + 1200) = *(a2 + 1200);
  *(a1 + 1216) = *(a2 + 1216);
  *(a2 + 1216) = 0;
  *(a2 + 1200) = 0u;
  v10 = *(a2 + 1224);
  *(a1 + 1229) = *(a2 + 1229);
  *(a1 + 1224) = v10;
  *(a1 + 1240) = *(a2 + 1240);
  *(a1 + 1264) = 0u;
  *(a1 + 1256) = 0;
  *(a1 + 1256) = *(a2 + 1256);
  *(a1 + 1264) = *(a2 + 1264);
  *(a2 + 1272) = 0;
  *(a2 + 1256) = 0u;
  *(a1 + 1296) = 0;
  *(a1 + 1280) = 0u;
  *(a1 + 1280) = *(a2 + 1280);
  *(a1 + 1296) = *(a2 + 1296);
  *(a2 + 1296) = 0;
  *(a2 + 1280) = 0u;
  *(a1 + 1320) = 0;
  *(a1 + 1304) = 0u;
  *(a1 + 1304) = *(a2 + 1304);
  *(a1 + 1312) = *(a2 + 1312);
  *(a2 + 1320) = 0;
  *(a2 + 1304) = 0u;
  sub_55A4D0(a1 + 1328, a2 + 1328);
  sub_55A4D0(a1 + 1824, a2 + 1824);
  *(a1 + 2336) = 0;
  *(a1 + 2320) = 0u;
  *(a1 + 2320) = *(a2 + 2320);
  *(a1 + 2336) = *(a2 + 2336);
  *(a2 + 2336) = 0;
  *(a2 + 2320) = 0u;
  *(a1 + 2360) = 0;
  *(a1 + 2344) = 0u;
  *(a1 + 2344) = *(a2 + 2344);
  *(a1 + 2352) = *(a2 + 2352);
  *(a2 + 2360) = 0;
  *(a2 + 2344) = 0u;
  *(a1 + 2384) = 0;
  *(a1 + 2368) = 0u;
  *(a1 + 2368) = *(a2 + 2368);
  *(a1 + 2384) = *(a2 + 2384);
  *(a2 + 2384) = 0;
  *(a2 + 2368) = 0u;
  *(a1 + 2408) = 0;
  *(a1 + 2392) = 0u;
  *(a1 + 2392) = *(a2 + 2392);
  *(a1 + 2400) = *(a2 + 2400);
  *(a2 + 2408) = 0;
  *(a2 + 2392) = 0u;
  v11 = *(a2 + 2432);
  v12 = *(a2 + 2448);
  v13 = *(a2 + 2464);
  *(a1 + 2479) = *(a2 + 2479);
  *(a1 + 2464) = v13;
  *(a1 + 2448) = v12;
  *(a1 + 2432) = v11;
  *(a1 + 2416) = *(a2 + 2416);
  *(a1 + 2496) = 0u;
  *(a1 + 2488) = 0;
  *(a1 + 2488) = *(a2 + 2488);
  *(a1 + 2496) = *(a2 + 2496);
  *(a2 + 2504) = 0;
  *(a2 + 2488) = 0u;
  v14 = *(a2 + 2512);
  *(a1 + 2528) = *(a2 + 2528);
  *(a1 + 2512) = v14;
  v15 = *(a2 + 2552);
  *(a1 + 2536) = *(a2 + 2536);
  *(a1 + 2552) = v15;
  *(a1 + 2568) = *(a2 + 2568);
  *(a1 + 2576) = *(a2 + 2576);
  *(a2 + 2584) = 0;
  *(a2 + 2568) = 0u;
  v16 = *(a2 + 2592);
  *(a1 + 2600) = *(a2 + 2600);
  *(a1 + 2592) = v16;
  v17 = *(a2 + 2608);
  *(a1 + 2624) = *(a2 + 2624);
  *(a1 + 2608) = v17;
  *(a2 + 2616) = 0u;
  *(a2 + 2608) = 0;
  v18 = *(a2 + 2632);
  *(a1 + 2648) = *(a2 + 2648);
  *(a1 + 2632) = v18;
  *(a2 + 2640) = 0u;
  *(a2 + 2632) = 0;
  v19 = *(a2 + 2656);
  *(a1 + 2672) = *(a2 + 2672);
  *(a1 + 2656) = v19;
  *(a2 + 2672) = 0;
  *(a2 + 2656) = 0u;
  v20 = *(a2 + 2680);
  *(a1 + 2696) = *(a2 + 2696);
  *(a1 + 2680) = v20;
  *(a2 + 2696) = 0;
  *(a2 + 2680) = 0u;
  v21 = *(a2 + 2704);
  *(a1 + 2720) = *(a2 + 2720);
  *(a1 + 2704) = v21;
  *(a1 + 2728) = 0;
  *(a1 + 2736) = 0u;
  *(a1 + 2728) = *(a2 + 2728);
  *(a1 + 2736) = *(a2 + 2736);
  *(a2 + 2744) = 0;
  *(a2 + 2728) = 0u;
  *(a1 + 2768) = 0;
  *(a1 + 2752) = 0u;
  *(a1 + 2752) = *(a2 + 2752);
  *(a1 + 2768) = *(a2 + 2768);
  *(a2 + 2768) = 0;
  *(a2 + 2752) = 0u;
  *(a1 + 2792) = 0;
  *(a1 + 2776) = 0u;
  *(a1 + 2776) = *(a2 + 2776);
  *(a1 + 2784) = *(a2 + 2784);
  *(a2 + 2792) = 0;
  *(a2 + 2776) = 0u;
  *(a1 + 2800) = *(a2 + 2800);
  *(a1 + 2824) = 0u;
  *(a1 + 2816) = 0;
  *(a1 + 2816) = *(a2 + 2816);
  *(a1 + 2832) = *(a2 + 2832);
  *(a2 + 2832) = 0;
  *(a2 + 2816) = 0u;
  *(a1 + 2840) = *(a2 + 2840);
  *(a1 + 2848) = *(a2 + 2848);
  *(a1 + 2856) = *(a2 + 2856);
  v22 = *(a2 + 2872);
  v23 = *(a2 + 2888);
  v24 = *(a2 + 2904);
  *(a1 + 2919) = *(a2 + 2919);
  *(a1 + 2888) = v23;
  *(a1 + 2904) = v24;
  *(a1 + 2872) = v22;
  *(a1 + 2928) = 0;
  *(a1 + 2936) = 0u;
  *(a1 + 2928) = *(a2 + 2928);
  *(a1 + 2944) = *(a2 + 2944);
  *(a2 + 2944) = 0;
  *(a2 + 2928) = 0u;
  v25 = *(a2 + 2952);
  *(a1 + 2968) = *(a2 + 2968);
  *(a1 + 2952) = v25;
  v26 = *(a2 + 2976);
  *(a1 + 2992) = *(a2 + 2992);
  *(a1 + 2976) = v26;
  *(a1 + 3008) = *(a2 + 3008);
  *(a1 + 3024) = *(a2 + 3024);
  *(a2 + 3024) = 0;
  *(a2 + 3008) = 0u;
  v27 = *(a2 + 3032);
  *(a1 + 3040) = *(a2 + 3040);
  *(a1 + 3032) = v27;
  v28 = *(a2 + 3048);
  *(a1 + 3064) = *(a2 + 3064);
  *(a1 + 3048) = v28;
  *(a2 + 3056) = 0u;
  *(a2 + 3048) = 0;
  v29 = *(a2 + 3072);
  *(a1 + 3088) = *(a2 + 3088);
  *(a1 + 3072) = v29;
  *(a2 + 3080) = 0u;
  *(a2 + 3072) = 0;
  v30 = *(a2 + 3096);
  *(a1 + 3112) = *(a2 + 3112);
  *(a1 + 3096) = v30;
  *(a2 + 3112) = 0;
  *(a2 + 3096) = 0u;
  v31 = *(a2 + 3120);
  *(a1 + 3136) = *(a2 + 3136);
  *(a1 + 3120) = v31;
  *(a2 + 3136) = 0;
  *(a2 + 3120) = 0u;
  v32 = *(a2 + 3144);
  *(a1 + 3160) = *(a2 + 3160);
  *(a1 + 3144) = v32;
  *(a1 + 3168) = 0;
  *(a1 + 3176) = 0u;
  *(a1 + 3168) = *(a2 + 3168);
  *(a1 + 3184) = *(a2 + 3184);
  *(a2 + 3184) = 0;
  *(a2 + 3168) = 0u;
  *(a1 + 3208) = 0;
  *(a1 + 3192) = 0u;
  *(a1 + 3192) = *(a2 + 3192);
  *(a1 + 3200) = *(a2 + 3200);
  *(a2 + 3208) = 0;
  *(a2 + 3192) = 0u;
  *(a1 + 3232) = 0;
  *(a1 + 3216) = 0u;
  *(a1 + 3216) = *(a2 + 3216);
  *(a1 + 3232) = *(a2 + 3232);
  *(a2 + 3232) = 0;
  *(a2 + 3216) = 0u;
  *(a1 + 3240) = *(a2 + 3240);
  *(a1 + 3264) = 0u;
  *(a1 + 3256) = 0;
  *(a1 + 3256) = *(a2 + 3256);
  *(a1 + 3264) = *(a2 + 3264);
  *(a2 + 3272) = 0;
  *(a2 + 3256) = 0u;
  *(a1 + 3280) = *(a2 + 3280);
  *(a1 + 3288) = *(a2 + 3288);
  return a1;
}

void **sub_9FC74C(void **a1)
{
  v1 = a1;
  sub_44FDEC((a1 + 357));
  sub_44FDEC((v1 + 302));
  v2 = v1[299];
  if (v2)
  {
    v1[300] = v2;
    operator delete(v2);
  }

  v3 = v1[296];
  if (v3)
  {
    v1[297] = v3;
    operator delete(v3);
  }

  sub_559E70(v1 + 160);
  v4 = v1[157];
  if (v4)
  {
    v5 = v1[158];
    v6 = v1[157];
    if (v5 != v4)
    {
      do
      {
        v5 -= 80;
        sub_3ED230(v5);
      }

      while (v5 != v4);
      v6 = v1[157];
    }

    v1[158] = v4;
    operator delete(v6);
  }

  v7 = v1[150];
  if (v7)
  {
    v1[151] = v7;
    operator delete(v7);
  }

  if (*(v1 + 1191) < 0)
  {
    operator delete(v1[146]);
    if ((*(v1 + 1151) & 0x80000000) == 0)
    {
LABEL_14:
      v8 = v1[138];
      if (!v8)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }
  }

  else if ((*(v1 + 1151) & 0x80000000) == 0)
  {
    goto LABEL_14;
  }

  operator delete(v1[141]);
  v8 = v1[138];
  if (v8)
  {
LABEL_15:
    v1[139] = v8;
    operator delete(v8);
  }

LABEL_16:
  v9 = v1[135];
  if (v9)
  {
    v1[136] = v9;
    operator delete(v9);
  }

  v10 = v1[132];
  if (v10)
  {
    v11 = v1[133];
    v12 = v1[132];
    if (v11 != v10)
    {
      v50 = v1;
      v13 = v1[133];
      v54 = v1[132];
      do
      {
        v16 = *(v13 - 3);
        v13 -= 3;
        v15 = v16;
        if (v16)
        {
          v17 = *(v11 - 2);
          v14 = v15;
          if (v17 != v15)
          {
            v18 = *(v11 - 2);
            do
            {
              v21 = *(v18 - 3);
              v18 -= 3;
              v20 = v21;
              if (v21)
              {
                v22 = *(v17 - 2);
                v19 = v20;
                if (v22 != v20)
                {
                  do
                  {
                    v23 = v22 - 168;
                    v24 = *(v22 - 2);
                    if (v24 != -1)
                    {
                      (off_266F7B8[v24])(&v56, v22 - 168);
                    }

                    *(v22 - 2) = -1;
                    v22 -= 168;
                  }

                  while (v23 != v20);
                  v19 = *v18;
                }

                *(v17 - 2) = v20;
                operator delete(v19);
              }

              v17 = v18;
            }

            while (v18 != v15);
            v14 = *v13;
            v10 = v54;
          }

          *(v11 - 2) = v15;
          operator delete(v14);
        }

        v11 = v13;
      }

      while (v13 != v10);
      v1 = v50;
      v12 = v50[132];
    }

    v1[133] = v10;
    operator delete(v12);
  }

  sub_53A868((v1 + 110));
  sub_53A868((v1 + 90));
  sub_53A868((v1 + 70));
  sub_53A868((v1 + 50));
  sub_53A868((v1 + 30));
  sub_53A868((v1 + 10));
  v25 = *v1;
  if (*v1)
  {
    v26 = v1[1];
    v27 = *v1;
    if (v26 == v25)
    {
LABEL_82:
      v1[1] = v25;
      operator delete(v27);
      return v1;
    }

    v51 = v1;
    v52 = *v1;
    v28 = v1[1];
    while (1)
    {
      v31 = *(v28 - 4);
      v28 -= 4;
      v30 = v31;
      if (!v31)
      {
        goto LABEL_43;
      }

      v53 = v26;
      v55 = v28;
      v32 = *(v26 - 3);
      v29 = v30;
      if (v32 != v30)
      {
        break;
      }

LABEL_42:
      *(v53 - 3) = v30;
      operator delete(v29);
      v25 = v52;
      v28 = v55;
LABEL_43:
      v26 = v28;
      if (v28 == v25)
      {
        v1 = v51;
        v27 = *v51;
        goto LABEL_82;
      }
    }

    while (1)
    {
      v33 = *(v32 - 3);
      if (!v33)
      {
        goto LABEL_74;
      }

      v34 = *(v32 - 2);
      v35 = *(v32 - 3);
      if (v34 != v33)
      {
        break;
      }

LABEL_73:
      *(v32 - 2) = v33;
      operator delete(v35);
LABEL_74:
      if ((*(v32 - 49) & 0x80000000) == 0)
      {
        v46 = *(v32 - 12);
        if (!v46)
        {
          goto LABEL_48;
        }

LABEL_78:
        v47 = *(v32 - 11);
        v48 = v46;
        if (v47 != v46)
        {
          do
          {
            v47 = sub_9750F8(v47 - 5704);
          }

          while (v47 != v46);
          v48 = *(v32 - 12);
        }

        *(v32 - 11) = v46;
        operator delete(v48);
        goto LABEL_48;
      }

      operator delete(*(v32 - 9));
      v46 = *(v32 - 12);
      if (v46)
      {
        goto LABEL_78;
      }

LABEL_48:
      v32 -= 104;
      if (v32 == v30)
      {
        v29 = *v55;
        goto LABEL_42;
      }
    }

    while (1)
    {
      v36 = *(v34 - 3);
      if (v36)
      {
        v37 = *(v34 - 2);
        v38 = *(v34 - 3);
        if (v37 != v36)
        {
          v39 = *(v34 - 2);
          do
          {
            v42 = *(v39 - 3);
            v39 -= 3;
            v41 = v42;
            if (v42)
            {
              v43 = *(v37 - 2);
              v40 = v41;
              if (v43 != v41)
              {
                do
                {
                  v44 = *(v43 - 3);
                  if (v44)
                  {
                    *(v43 - 2) = v44;
                    operator delete(v44);
                  }

                  v43 -= 32;
                }

                while (v43 != v41);
                v40 = *v39;
              }

              *(v37 - 2) = v41;
              operator delete(v40);
            }

            v37 = v39;
          }

          while (v39 != v36);
          v38 = *(v34 - 3);
        }

        *(v34 - 2) = v36;
        operator delete(v38);
      }

      if (*(v34 - 25) < 0)
      {
        operator delete(*(v34 - 6));
        v45 = v34 - 9;
        if (*(v34 - 49) < 0)
        {
LABEL_71:
          operator delete(*v45);
        }
      }

      else
      {
        v45 = v34 - 9;
        if (*(v34 - 49) < 0)
        {
          goto LABEL_71;
        }
      }

      v34 = v45;
      if (v45 == v33)
      {
        v35 = *(v32 - 3);
        goto LABEL_73;
      }
    }
  }

  return v1;
}

uint64_t sub_9FCB58(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *(a1 + 24);
    v4 = *(a1 + 16);
    if (v3 != v2)
    {
      do
      {
        v3 -= 80;
        sub_3ED230(v3);
      }

      while (v3 != v2);
      v4 = *(a1 + 16);
    }

    *(a1 + 24) = v2;
    operator delete(v4);
  }

  return a1;
}

void ****sub_9FCBBC(void ****a1)
{
  v2 = *a1;
  if (*a1)
  {
    for (i = a1[1]; i != v2; sub_9FCC20(a1, i))
    {
      i -= 3;
    }

    a1[1] = v2;
    operator delete(*a1);
  }

  return a1;
}

void sub_9FCC20(uint64_t a1, void ***a2)
{
  v2 = *a2;
  if (*a2)
  {
    v4 = a2[1];
    v5 = *a2;
    if (v4 != v2)
    {
      v6 = a2[1];
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
            do
            {
              v11 = v10 - 168;
              v12 = *(v10 - 2);
              if (v12 != -1)
              {
                (off_266F7B8[v12])(&v13, v10 - 168);
              }

              *(v10 - 2) = -1;
              v10 -= 168;
            }

            while (v11 != v8);
            v7 = *v6;
          }

          *(v4 - 2) = v8;
          operator delete(v7);
        }

        v4 = v6;
      }

      while (v6 != v2);
      v5 = *a2;
    }

    a2[1] = v2;
    operator delete(v5);
  }
}

uint64_t sub_9FCD0C(uint64_t a1)
{
  sub_53A868(a1 + 800);
  sub_53A868(a1 + 640);
  sub_53A868(a1 + 480);
  sub_53A868(a1 + 320);
  sub_53A868(a1 + 160);

  return sub_53A868(a1);
}

void ***sub_9FCD68(void ***a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      v5 = a1[1];
      do
      {
        v7 = *(v5 - 4);
        v5 -= 4;
        v6 = v7;
        if (v7)
        {
          v8 = *(v3 - 3);
          v9 = v6;
          if (v8 != v6)
          {
            do
            {
              v8 -= 104;
              sub_9FCE10(v8);
            }

            while (v8 != v6);
            v9 = *v5;
          }

          *(v3 - 3) = v6;
          operator delete(v9);
        }

        v3 = v5;
      }

      while (v5 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_9FCE10(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    v3 = *(a1 + 88);
    v4 = *(a1 + 80);
    if (v3 != v2)
    {
      do
      {
        v3 -= 72;
        sub_9D2428(v3);
      }

      while (v3 != v2);
      v4 = *(a1 + 80);
    }

    *(a1 + 88) = v2;
    operator delete(v4);
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
    v5 = *(a1 + 8);
    if (!v5)
    {
      return;
    }
  }

  else
  {
    v5 = *(a1 + 8);
    if (!v5)
    {
      return;
    }
  }

  v6 = *(a1 + 16);
  v7 = v5;
  if (v6 != v5)
  {
    do
    {
      v6 = sub_9750F8(v6 - 5704);
    }

    while (v6 != v5);
    v7 = *(a1 + 8);
  }

  *(a1 + 16) = v5;

  operator delete(v7);
}

uint64_t sub_9FCEE0(uint64_t a1)
{
  v2 = *(a1 + 472);
  if (v2)
  {
    v3 = *(a1 + 480);
    v4 = *(a1 + 472);
    if (v3 != v2)
    {
      v5 = v3 - 568;
      do
      {
        sub_938500((v5 + 24));
        v7 = *v5;
        if (*v5)
        {
          *(v5 + 8) = v7;
          operator delete(v7);
        }

        v6 = v5 == v2;
        v5 -= 568;
      }

      while (!v6);
      v4 = *(a1 + 472);
    }

    *(a1 + 480) = v2;
    operator delete(v4);
  }

  v8 = *(a1 + 424);
  if (v8)
  {
    v9 = *(a1 + 432);
    v10 = *(a1 + 424);
    if (v9 != v8)
    {
      do
      {
        v11 = v9 - 168;
        sub_53A868(v9 - 160);
        v9 = v11;
      }

      while (v11 != v8);
      v10 = *(a1 + 424);
    }

    *(a1 + 432) = v8;
    operator delete(v10);
  }

  v12 = *(a1 + 400);
  if (v12)
  {
    *(a1 + 408) = v12;
    operator delete(v12);
  }

  v13 = *(a1 + 376);
  if (v13)
  {
    *(a1 + 384) = v13;
    operator delete(v13);
  }

  if (*(a1 + 375) < 0)
  {
    operator delete(*(a1 + 352));
    if ((*(a1 + 351) & 0x80000000) == 0)
    {
LABEL_20:
      if ((*(a1 + 327) & 0x80000000) == 0)
      {
        goto LABEL_21;
      }

LABEL_25:
      operator delete(*(a1 + 304));
      sub_942F5C((a1 + 24));
      v14 = *a1;
      if (!*a1)
      {
        return a1;
      }

      goto LABEL_26;
    }
  }

  else if ((*(a1 + 351) & 0x80000000) == 0)
  {
    goto LABEL_20;
  }

  operator delete(*(a1 + 328));
  if (*(a1 + 327) < 0)
  {
    goto LABEL_25;
  }

LABEL_21:
  sub_942F5C((a1 + 24));
  v14 = *a1;
  if (!*a1)
  {
    return a1;
  }

LABEL_26:
  v16 = *(a1 + 8);
  v17 = v14;
  if (v16 != v14)
  {
    do
    {
      v16 = sub_9FC74C(v16 - 412);
    }

    while (v16 != v14);
    v17 = *a1;
  }

  *(a1 + 8) = v14;
  operator delete(v17);
  return a1;
}

uint64_t sub_9FD064(uint64_t a1)
{
  *(a1 + 16) = 0;
  *a1 = 0u;
  *(a1 + 24) = 0x8000000080000000;
  *(a1 + 32) = 0;
  *(a1 + 36) = 0x8000000080000000;
  *(a1 + 44) = 0;
  *(a1 + 48) = 0x8000000080000000;
  *(a1 + 56) = 0;
  *(a1 + 60) = 0x8000000080000000;
  *(a1 + 68) = 0;
  *(a1 + 72) = 0x8000000080000000;
  sub_9C11B8(a1 + 80);
  *(a1 + 1040) = -1;
  *(a1 + 1044) = 0;
  *(a1 + 1048) = 0;
  *(a1 + 1056) = 0u;
  *(a1 + 1072) = 0u;
  *(a1 + 1088) = 0u;
  *(a1 + 1104) = 0u;
  *(a1 + 1120) = 0u;
  *(a1 + 1136) = 0u;
  *(a1 + 1152) = 0;
  *(a1 + 1160) = 0x7FFFFFFF;
  *(a1 + 1168) = 0;
  *(a1 + 1176) = 0u;
  *(a1 + 1192) = 100;
  *(a1 + 1200) = 0;
  *(a1 + 1224) = 0;
  *(a1 + 1208) = 0u;
  *(a1 + 1228) = 0xFFFFFFFFLL;
  *(a1 + 1236) = 0;
  *(a1 + 1240) = 0;
  *(a1 + 1248) = 0x3FF0000000000000;
  *(a1 + 1272) = 0;
  *(a1 + 1256) = 0u;
  sub_559C9C(a1 + 1280);
  *(a1 + 2400) = 0u;
  *(a1 + 2384) = 0u;
  *(a1 + 2368) = 0u;
  v2.f64[0] = NAN;
  v2.f64[1] = NAN;
  *(a1 + 2416) = -1;
  *(a1 + 2424) = 0x7FFFFFFF;
  *(a1 + 2432) = -1;
  *(a1 + 2440) = -1;
  *(a1 + 2448) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 2456) = 0;
  *(a1 + 2464) = -1935635296;
  *(a1 + 2472) = 0;
  *(a1 + 2479) = 0;
  *(a1 + 2488) = 0;
  *(a1 + 2496) = 0u;
  *(a1 + 2512) = 0;
  *(a1 + 2520) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 2528) = 100;
  *(a1 + 2536) = 0u;
  *(a1 + 2552) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 2560) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 2584) = 0;
  *(a1 + 2568) = 0u;
  *(a1 + 2592) = 1;
  *(a1 + 2600) = 0;
  *(a1 + 2608) = 0u;
  *(a1 + 2624) = 0u;
  *(a1 + 2640) = 0u;
  *(a1 + 2656) = 0u;
  *(a1 + 2672) = 0u;
  *(a1 + 2688) = 0u;
  *(a1 + 2704) = 0;
  *(a1 + 2712) = 0u;
  *(a1 + 2728) = 0u;
  *(a1 + 2744) = 0u;
  *(a1 + 2760) = 0u;
  *(a1 + 2776) = 0u;
  *(a1 + 2792) = 0;
  *(a1 + 2808) = -1;
  *(a1 + 2800) = -1;
  *(a1 + 2816) = 0u;
  *(a1 + 2840) = 0;
  *(a1 + 2832) = 0;
  *(a1 + 2848) = 0;
  *(a1 + 2852) = xmmword_2291330;
  *(a1 + 2872) = -1;
  *(a1 + 2880) = -1;
  *(a1 + 2888) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 2896) = 0;
  *(a1 + 2904) = -1935635296;
  *(a1 + 2919) = 0;
  *(a1 + 2912) = 0;
  *(a1 + 2928) = 0u;
  *(a1 + 2952) = 0;
  *(a1 + 2944) = 0;
  *(a1 + 2960) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 2968) = 100;
  *(a1 + 2976) = 0u;
  *(a1 + 2992) = vnegq_f64(v2);
  *(a1 + 3024) = 0;
  *(a1 + 3008) = 0u;
  *(a1 + 3032) = 1;
  *(a1 + 3040) = 0;
  *(a1 + 3144) = 0;
  *(a1 + 3112) = 0u;
  *(a1 + 3128) = 0u;
  *(a1 + 3080) = 0u;
  *(a1 + 3096) = 0u;
  *(a1 + 3048) = 0u;
  *(a1 + 3064) = 0u;
  *(a1 + 3232) = 0;
  *(a1 + 3216) = 0u;
  *(a1 + 3200) = 0u;
  *(a1 + 3184) = 0u;
  *(a1 + 3168) = 0u;
  *(a1 + 3152) = 0u;
  *(a1 + 3248) = -1;
  *(a1 + 3240) = -1;
  *(a1 + 3280) = 0;
  *(a1 + 3272) = 0;
  *(a1 + 3256) = 0u;
  *(a1 + 3288) = 0;
  *(a1 + 3292) = 0;
  return a1;
}

void sub_9FD2E0(_Unwind_Exception *a1)
{
  sub_9FCB58(v1 + 1240);
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 1208) = v5;
    operator delete(v5);
    if ((*(v1 + 1191) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v1 + 1151) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*(v1 + 1191) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*v2);
  if ((*(v1 + 1151) & 0x80000000) == 0)
  {
LABEL_4:
    v6 = *(v1 + 1104);
    if (!v6)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(*(v1 + 1128));
  v6 = *(v1 + 1104);
  if (!v6)
  {
LABEL_5:
    v7 = *(v1 + 1080);
    if (!v7)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_11:
  *(v1 + 1112) = v6;
  operator delete(v6);
  v7 = *(v1 + 1080);
  if (!v7)
  {
LABEL_7:
    sub_9FCBBC((v1 + 1056));
    sub_9FCD0C(v1 + 80);
    sub_9FCD68(v1);
    _Unwind_Resume(a1);
  }

LABEL_6:
  *(v1 + 1088) = v7;
  operator delete(v7);
  goto LABEL_7;
}

void sub_9FD394(size_t ***a1, size_t **a2, size_t **a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  v8 = *a1;
  if (0xCCCCCCCCCCCCCCCDLL * ((v7 - *a1) >> 4) < a4)
  {
    if (v8)
    {
      v9 = a4;
      v10 = a1[1];
      v11 = *a1;
      if (v10 != v8)
      {
        do
        {
          v10 -= 80;
          sub_3ED230(v10);
        }

        while (v10 != v8);
        v11 = *a1;
      }

      a1[1] = v8;
      operator delete(v11);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      a4 = v9;
    }

    if (a4 <= 0x333333333333333)
    {
      v12 = 0xCCCCCCCCCCCCCCCDLL * (v7 >> 4);
      v13 = 2 * v12;
      if (2 * v12 <= a4)
      {
        v13 = a4;
      }

      if (v12 >= 0x199999999999999)
      {
        v14 = 0x333333333333333;
      }

      else
      {
        v14 = v13;
      }

      if (v14 <= 0x333333333333333)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v15 = a1[1];
  v16 = v15 - v8;
  if (0xCCCCCCCCCCCCCCCDLL * ((v15 - v8) >> 4) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        sub_9FD62C(v8, v5);
        v5 += 10;
        v8 += 10;
      }

      while (v5 != a3);
      v15 = a1[1];
    }

    while (v15 != v8)
    {
      v15 -= 80;
      sub_3ED230(v15);
    }

    a1[1] = v8;
  }

  else
  {
    v17 = (a2 + v16);
    if (v15 != v8)
    {
      do
      {
        sub_9FD62C(v8, v5);
        v5 += 10;
        v8 += 10;
        v16 -= 80;
      }

      while (v16);
      v15 = a1[1];
    }

    v18 = v15;
    if (v17 != a3)
    {
      v19 = 0;
      do
      {
        sub_3ED0F4(v15 + v19 * 8, &v17[v19]);
        v19 += 10;
      }

      while (&v17[v19] != a3);
      v18 = v15 + v19 * 8;
    }

    a1[1] = v18;
  }
}

void sub_9FD5FC(_Unwind_Exception *exception_object)
{
  if (v4)
  {
    v6 = v3 - 80;
    v7 = -v4;
    do
    {
      sub_3ED230(v6);
      v6 -= 80;
      v7 += 80;
    }

    while (v7);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

size_t **sub_9FD62C(size_t **a1, size_t **a2)
{
  v2 = a2;
  if (a1 == a2)
  {
    goto LABEL_10;
  }

  if (*(a1 + 23) < 0)
  {
    if (*(a2 + 23) >= 0)
    {
      v8 = *(a2 + 23);
    }

    else
    {
      a2 = *a2;
      v8 = v2[1];
    }

    sub_13B38(a1, a2, v8);
LABEL_10:
    v5 = (a1 + 3);
    v6 = *(a1 + 12);
    v7 = *(v2 + 12);
    if (v6 == -1)
    {
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  if ((*(a2 + 23) & 0x80) != 0)
  {
    sub_13A68(a1, *a2, a2[1]);
    v5 = (a1 + 3);
    v6 = *(a1 + 12);
    v7 = *(v2 + 12);
    if (v6 == -1)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v4 = *a2;
    a1[2] = a2[2];
    *a1 = v4;
    v5 = (a1 + 3);
    v6 = *(a1 + 12);
    v7 = *(v2 + 12);
    if (v6 == -1)
    {
LABEL_14:
      if (v7 == -1)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }
  }

LABEL_11:
  if (v7 == -1)
  {
    (off_266F788[v6])(&v11, v5);
    *(a1 + 12) = -1;
    goto LABEL_16;
  }

LABEL_15:
  v10 = v5;
  (off_266F7F8[v7])(&v10);
LABEL_16:
  if (a1 != v2)
  {
    sub_9FDB1C(a1 + 7, v2[7], v2[8], (v2[8] - v2[7]) >> 5);
  }

  return a1;
}

uint64_t *sub_9FD758(uint64_t *result)
{
  v1 = *result;
  v2 = *(*result + 24);
  if (v2 != -1)
  {
    if (!v2)
    {
      return result;
    }

    result = (off_266F788[v2])(&v3, v1);
  }

  *(v1 + 24) = 0;
  return result;
}

uint64_t *sub_9FD7B0(uint64_t *result, _BYTE *a2, _BYTE *a3)
{
  v3 = *result;
  v4 = *(*result + 24);
  if (v4 != -1)
  {
    if (v4 == 1)
    {
      *a2 = *a3;
      return result;
    }

    v5 = a3;
    result = (off_266F788[v4])(&v6, v3);
    a3 = v5;
  }

  *v3 = *a3;
  *(v3 + 24) = 1;
  return result;
}

uint64_t *sub_9FD838(uint64_t *result, void *a2, void *a3)
{
  v3 = *result;
  v4 = *(*result + 24);
  if (v4 != -1)
  {
    if (v4 == 2)
    {
      *a2 = *a3;
      return result;
    }

    v5 = a3;
    result = (off_266F788[v4])(&v6, v3);
    a3 = v5;
  }

  *v3 = *a3;
  *(v3 + 24) = 2;
  return result;
}

uint64_t *sub_9FD8C0(uint64_t *result, void *a2, void *a3)
{
  v3 = *result;
  v4 = *(*result + 24);
  if (v4 != -1)
  {
    if (v4 == 3)
    {
      *a2 = *a3;
      return result;
    }

    v5 = a3;
    result = (off_266F788[v4])(&v6, v3);
    a3 = v5;
  }

  *v3 = *a3;
  *(v3 + 24) = 3;
  return result;
}

double sub_9FD948(uint64_t *a1, void *a2, double *a3)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  if (v4 != -1)
  {
    if (v4 == 4)
    {
      result = *a3;
      *a2 = *a3;
      return result;
    }

    v6 = a3;
    (off_266F788[v4])(&v7, v3);
    a3 = v6;
  }

  result = *a3;
  *v3 = *a3;
  *(v3 + 24) = 4;
  return result;
}

void **sub_9FD9D8(void **result, uint64_t a2, __int128 *a3)
{
  v3 = *(result + 6);
  if (v3 != 5)
  {
    v6 = result;
    if (*(a3 + 23) < 0)
    {
      result = sub_325C(&v11, *a3, *(a3 + 1));
      v3 = *(v6 + 6);
      if (v3 == -1)
      {
LABEL_12:
        *v6 = v11;
        v6[2] = v12;
        *(v6 + 6) = 5;
        return result;
      }
    }

    else
    {
      v11 = *a3;
      v12 = *(a3 + 2);
      if (v3 == -1)
      {
        goto LABEL_12;
      }
    }

    result = (off_266F788[v3])(&v13, v6);
    goto LABEL_12;
  }

  if (a2 != a3)
  {
    v4 = *(a3 + 23);
    if (*(a2 + 23) < 0)
    {
      if (v4 >= 0)
      {
        v7 = a3;
      }

      else
      {
        v7 = *a3;
      }

      if (v4 >= 0)
      {
        v8 = *(a3 + 23);
      }

      else
      {
        v8 = *(a3 + 1);
      }

      return sub_13B38(a2, v7, v8);
    }

    else if ((*(a3 + 23) & 0x80) != 0)
    {
      v10 = *a3;
      v9 = *(a3 + 1);

      return sub_13A68(a2, v10, v9);
    }

    else
    {
      v5 = *a3;
      *(a2 + 16) = *(a3 + 2);
      *a2 = v5;
    }
  }

  return result;
}

void **sub_9FDB1C(void **result, char *a2, char *a3, unint64_t a4)
{
  v5 = a2;
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 5)
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
          v12 = (v10 - 32);
          v13 = *(v10 - 2);
          if (v13 != -1)
          {
            (off_266F788[v13])(v30, v10 - 32);
          }

          *(v10 - 2) = -1;
          v10 -= 32;
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

    if (!(a4 >> 59))
    {
      v27 = v7 >> 4;
      if (v7 >> 4 <= a4)
      {
        v27 = a4;
      }

      v28 = v7 >= 0x7FFFFFFFFFFFFFE0;
      v29 = 0x7FFFFFFFFFFFFFFLL;
      if (!v28)
      {
        v29 = v27;
      }

      if (!(v29 >> 59))
      {
        operator new();
      }
    }

    sub_1794();
  }

  v14 = result[1];
  v15 = (v14 - v8);
  if (a4 <= (v14 - v8) >> 5)
  {
    if (a2 == a3)
    {
LABEL_32:
      if (v14 != v8)
      {
        do
        {
          v25 = (v14 - 32);
          v26 = *(v14 - 2);
          if (v26 != -1)
          {
            result = (off_266F788[v26])(v30, v14 - 32);
          }

          *(v14 - 2) = -1;
          v14 -= 32;
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
        v23 = v8[6];
        v24 = *(v5 + 24);
        if (v23 != -1)
        {
          break;
        }

        if (v24 != -1)
        {
          goto LABEL_26;
        }

LABEL_27:
        v5 += 32;
        v8 += 8;
        if (v5 == a3)
        {
          goto LABEL_31;
        }
      }

      if (v24 != -1)
      {
LABEL_26:
        v30[0] = v8;
        result = (off_266F7F8[v24])(v30, v8, v5);
        goto LABEL_27;
      }

      result = (off_266F788[v23])(v30, v8);
      v8[6] = -1;
      v5 += 32;
      v8 += 8;
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
      v18 = v8[6];
      v19 = *(v17 + 24);
      if (v18 != -1)
      {
        break;
      }

      if (v19 != -1)
      {
        goto LABEL_12;
      }

LABEL_13:
      v17 += 32;
      v8 += 8;
      v16 -= 32;
      if (!v16)
      {
        goto LABEL_17;
      }
    }

    if (v19 != -1)
    {
LABEL_12:
      v30[0] = v8;
      result = (off_266F7F8[v19])(v30, v8, v17);
      goto LABEL_13;
    }

    result = (off_266F788[v18])(v30, v8);
    v8[6] = -1;
    v17 += 32;
    v8 += 8;
    v16 -= 32;
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
      v21[6] = -1;
      v22 = *(v20 + 6);
      if (v22 != -1)
      {
        v34 = v21;
        result = (off_266F7C8[v22])(&v34, v20);
        v21[6] = v22;
        v21 = v33;
      }

      v20 += 32;
      v21 += 8;
      v33 = v21;
    }

    while (v20 != a3);
  }

  v6[1] = v21;
  return result;
}

void sub_9FDEFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_840B0(v4);
  sub_84254(va);
  *(v3 + 8) = v5;
  _Unwind_Resume(a1);
}

void sub_9FDF20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_840B0(v5);
  sub_84254(va);
  *(v3 + 8) = v4;
  _Unwind_Resume(a1);
}

double sub_9FDF40(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = (v2 - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    sub_1794();
  }

  v6 = a1[2] - v1;
  if (v6 >> 4 > v4)
  {
    v4 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v4;
  }

  if (v7)
  {
    if (!(v7 >> 59))
    {
      operator new();
    }

    sub_1808();
  }

  v11 = 32 * v3;
  *v11 = 0u;
  *(v11 + 16) = 0u;
  *(v11 + 24) = 1;
  sub_9FE060(a1, v1, v2, 0);
  v8 = *a1;
  *a1 = 0;
  v9 = (32 * v3 + 32);
  *(a1 + 1) = v9;
  if (v8)
  {
    operator delete(v8);
    *&v9 = 32 * v3 + 32;
  }

  return *&v9;
}

void sub_9FE04C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_9FE298(va);
  _Unwind_Resume(a1);
}

void sub_9FE060(uint64_t a1, void **a2, void **a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      *a4 = *v4;
      *(a4 + 16) = v4[2];
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      *(a4 + 24) = *(v4 + 24);
      v4 += 4;
      a4 += 32;
    }

    while (v4 != a3);
    if (a2 != a3)
    {
      v25 = a3;
      while (1)
      {
        v7 = *a2;
        if (!*a2)
        {
          goto LABEL_8;
        }

        v5 = a2;
        v8 = a2[1];
        v6 = *a2;
        if (v8 != v7)
        {
          break;
        }

LABEL_7:
        v5[1] = v7;
        operator delete(v6);
        a3 = v25;
        a2 = v5;
LABEL_8:
        a2 += 4;
        if (a2 == a3)
        {
          return;
        }
      }

      v26 = a2;
      while (1)
      {
        v9 = *(v8 - 3);
        if (!v9)
        {
          goto LABEL_39;
        }

        v10 = *(v8 - 2);
        v11 = *(v8 - 3);
        if (v10 != v9)
        {
          break;
        }

LABEL_38:
        *(v8 - 2) = v9;
        operator delete(v11);
LABEL_39:
        if ((*(v8 - 49) & 0x80000000) == 0)
        {
          v22 = *(v8 - 12);
          if (!v22)
          {
            goto LABEL_13;
          }

LABEL_43:
          v23 = *(v8 - 11);
          v24 = v22;
          if (v23 != v22)
          {
            do
            {
              v23 = sub_9750F8(v23 - 5704);
            }

            while (v23 != v22);
            v24 = *(v8 - 12);
          }

          *(v8 - 11) = v22;
          operator delete(v24);
          goto LABEL_13;
        }

        operator delete(*(v8 - 9));
        v22 = *(v8 - 12);
        if (v22)
        {
          goto LABEL_43;
        }

LABEL_13:
        v8 -= 104;
        if (v8 == v7)
        {
          v5 = v26;
          v6 = *v26;
          goto LABEL_7;
        }
      }

      while (1)
      {
        v12 = *(v10 - 3);
        if (v12)
        {
          v13 = *(v10 - 2);
          v14 = *(v10 - 3);
          if (v13 != v12)
          {
            v15 = *(v10 - 2);
            do
            {
              v18 = *(v15 - 3);
              v15 -= 3;
              v17 = v18;
              if (v18)
              {
                v19 = *(v13 - 2);
                v16 = v17;
                if (v19 != v17)
                {
                  do
                  {
                    v20 = *(v19 - 3);
                    if (v20)
                    {
                      *(v19 - 2) = v20;
                      operator delete(v20);
                    }

                    v19 -= 32;
                  }

                  while (v19 != v17);
                  v16 = *v15;
                }

                *(v13 - 2) = v17;
                operator delete(v16);
              }

              v13 = v15;
            }

            while (v15 != v12);
            v14 = *(v10 - 3);
          }

          *(v10 - 2) = v12;
          operator delete(v14);
        }

        if (*(v10 - 25) < 0)
        {
          operator delete(*(v10 - 6));
          v21 = v10 - 9;
          if (*(v10 - 49) < 0)
          {
LABEL_36:
            operator delete(*v21);
          }
        }

        else
        {
          v21 = v10 - 9;
          if (*(v10 - 49) < 0)
          {
            goto LABEL_36;
          }
        }

        v10 = v21;
        if (v21 == v9)
        {
          v11 = *(v8 - 3);
          goto LABEL_38;
        }
      }
    }
  }
}

uint64_t sub_9FE298(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 != v2)
  {
    v4 = *(a1 + 16);
    do
    {
      v6 = *(v4 - 4);
      v4 -= 4;
      v5 = v6;
      *(a1 + 16) = v4;
      if (v6)
      {
        v7 = *(v3 - 3);
        v8 = v5;
        if (v7 != v5)
        {
          do
          {
            v7 -= 104;
            sub_9FCE10(v7);
          }

          while (v7 != v5);
          v8 = *v4;
        }

        *(v3 - 3) = v5;
        operator delete(v8);
        v4 = *(a1 + 16);
      }

      v3 = v4;
    }

    while (v4 != v2);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_9FE33C(void **a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = v2 - *a1;
  v4 = 0x4EC4EC4EC4EC4EC5 * (v3 >> 3) + 1;
  if (v4 > 0x276276276276276)
  {
    sub_1794();
  }

  if (0x9D89D89D89D89D8ALL * ((a1[2] - v1) >> 3) > v4)
  {
    v4 = 0x9D89D89D89D89D8ALL * ((a1[2] - v1) >> 3);
  }

  if ((0x4EC4EC4EC4EC4EC5 * ((a1[2] - v1) >> 3)) >= 0x13B13B13B13B13BLL)
  {
    v6 = 0x276276276276276;
  }

  else
  {
    v6 = v4;
  }

  if (v6)
  {
    if (v6 <= 0x276276276276276)
    {
      operator new();
    }

    sub_1808();
  }

  v7 = 8 * (v3 >> 3);
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0u;
  *v7 = 0u;
  *(v7 + 48) = 0;
  *(v7 + 56) = -1;
  *(v7 + 64) = -1;
  *(v7 + 72) = -1;
  *(v7 + 88) = 0;
  *(v7 + 96) = 0;
  *(v7 + 80) = 0;
  v8 = v7 + 104;
  v9 = v7 - v3;
  if (v1 != v2)
  {
    v10 = v1;
    v11 = v9;
    do
    {
      *v11 = *v10;
      *(v11 + 16) = 0;
      *(v11 + 24) = 0;
      *(v11 + 8) = *(v10 + 8);
      *(v11 + 24) = *(v10 + 3);
      *(v10 + 1) = 0;
      *(v10 + 2) = 0;
      *(v10 + 3) = 0;
      v12 = *(v10 + 2);
      *(v11 + 48) = *(v10 + 6);
      *(v11 + 32) = v12;
      *(v10 + 5) = 0;
      *(v10 + 6) = 0;
      *(v10 + 4) = 0;
      v13 = *(v10 + 56);
      *(v11 + 72) = *(v10 + 9);
      *(v11 + 56) = v13;
      *(v11 + 88) = 0;
      *(v11 + 96) = 0;
      *(v11 + 80) = *(v10 + 5);
      *(v11 + 96) = *(v10 + 12);
      *(v10 + 10) = 0;
      *(v10 + 11) = 0;
      *(v10 + 12) = 0;
      v10 += 104;
      v11 += 104;
    }

    while (v10 != v2);
    do
    {
      sub_9FCE10(v1);
      v1 += 104;
    }

    while (v1 != v2);
    v1 = *a1;
  }

  *a1 = v9;
  a1[1] = v8;
  a1[2] = 0;
  if (v1)
  {
    operator delete(v1);
  }

  return v8;
}

uint64_t sub_9FE508(uint64_t result, uint64_t a2)
{
  v2 = result;
  if (*(result + 1136) == *(a2 + 1136))
  {
    if (!*(result + 1136))
    {
      return result;
    }

    v3 = *(result + 1128);
    v4 = *(a2 + 1128);
    if (v3 != -1)
    {
      if (v4 == -1)
      {
        result = (off_266F828[v3])(&v7, result, a2);
        *(v2 + 1128) = -1;
        return result;
      }

LABEL_15:
      v7 = result;
      return (off_266F850[v4])(&v7, result, a2);
    }

    if (v4 != -1)
    {
      goto LABEL_15;
    }
  }

  else if (*(result + 1136))
  {
    v5 = *(result + 1128);
    if (v5 != -1)
    {
      result = (off_266F828[v5])(&v7, result, a2);
    }

    *(v2 + 1128) = -1;
    *(v2 + 1136) = 0;
  }

  else
  {
    *result = 0;
    *(result + 1128) = -1;
    v6 = *(a2 + 1128);
    if (v6 != -1)
    {
      v7 = result;
      result = (off_266F878[v6])(&v7, a2);
      *(v2 + 1128) = v6;
    }

    *(v2 + 1136) = 1;
  }

  return result;
}

__n128 sub_9FE64C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *(*a1 + 1128);
  if (v4 != -1)
  {
    if (!v4)
    {
      result = *a3;
      v6 = *(a3 + 16);
      v7 = *(a3 + 48);
      *(a2 + 32) = *(a3 + 32);
      *(a2 + 48) = v7;
      *a2 = result;
      *(a2 + 16) = v6;
      return result;
    }

    v8 = a3;
    (off_266F828[v4])(&v11, v3);
    a3 = v8;
  }

  *(v3 + 1128) = -1;
  result = *a3;
  v9 = *(a3 + 16);
  v10 = *(a3 + 48);
  *(v3 + 32) = *(a3 + 32);
  *(v3 + 48) = v10;
  *v3 = result;
  *(v3 + 16) = v9;
  *(v3 + 1128) = 0;
  return result;
}

__n128 sub_9FE6E4(uint64_t *a1, uint64_t a2, __int128 *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 1128);
  if (v5 == -1)
  {
    goto LABEL_7;
  }

  if (v5 != 1)
  {
    (off_266F828[v5])(&v14, v4);
LABEL_7:
    *(v4 + 1128) = -1;
    v12 = *a3;
    v13 = a3[1];
    *(v4 + 28) = *(a3 + 28);
    *v4 = v12;
    *(v4 + 16) = v13;
    *(v4 + 56) = 0;
    *(v4 + 64) = 0;
    *(v4 + 48) = 0;
    result = a3[3];
    *(v4 + 48) = result;
    *(v4 + 64) = *(a3 + 8);
    *(a3 + 7) = 0;
    *(a3 + 8) = 0;
    *(a3 + 6) = 0;
    *(v4 + 72) = *(a3 + 72);
    *(v4 + 1128) = 1;
    return result;
  }

  v6 = *a3;
  v7 = a3[1];
  *(a2 + 28) = *(a3 + 28);
  *a2 = v6;
  *(a2 + 16) = v7;
  v9 = (a2 + 48);
  v8 = *(a2 + 48);
  if (v8)
  {
    *(a2 + 56) = v8;
    v10 = a2;
    operator delete(v8);
    a2 = v10;
    *v9 = 0;
    v9[1] = 0;
    v9[2] = 0;
  }

  result = a3[3];
  *(a2 + 48) = result;
  *(a2 + 64) = *(a3 + 8);
  *(a3 + 6) = 0;
  *(a3 + 7) = 0;
  *(a3 + 8) = 0;
  *(a2 + 72) = *(a3 + 72);
  return result;
}

__n128 sub_9FE7F8(__n128 **a1, __n128 *a2, __n128 *a3)
{
  v3 = *a1;
  v4 = (*a1)[70].n128_u32[2];
  if (v4 != -1)
  {
    if (v4 == 2)
    {
      result = *a3;
      a2[1].n128_u32[0] = a3[1].n128_u32[0];
      *a2 = result;
      return result;
    }

    v6 = a3;
    (off_266F828[v4])(&v7, v3);
    a3 = v6;
  }

  v3[70].n128_u32[2] = -1;
  result = *a3;
  v3[1].n128_u32[0] = a3[1].n128_u32[0];
  *v3 = result;
  v3[70].n128_u32[2] = 2;
  return result;
}

void sub_9FE898(uint64_t *a1, _OWORD *a2, _OWORD *a3)
{
  v3 = *a1;
  v4 = *(*a1 + 1128);
  if (v4 == -1)
  {
    goto LABEL_7;
  }

  if (v4 != 3)
  {
    v6 = a3;
    (off_266F828[v4])(&v8, v3);
    a3 = v6;
LABEL_7:
    *(v3 + 1128) = -1;
    v7 = *a3;
    *(v3 + 12) = *(a3 + 12);
    *v3 = v7;
    sub_4C6AE8(v3 + 32, (a3 + 2));
    *(v3 + 1128) = 3;
    return;
  }

  v5 = *a3;
  *(a2 + 12) = *(a3 + 12);
  *a2 = v5;

  sub_4192A0((a2 + 2), (a3 + 2));
}

__n128 sub_9FE95C(__n128 **a1, __n128 *a2, __n128 *a3)
{
  v3 = *a1;
  v4 = (*a1)[70].n128_u32[2];
  if (v4 != -1)
  {
    if (v4 == 4)
    {
      result = *a3;
      a2[1].n128_u32[0] = a3[1].n128_u32[0];
      *a2 = result;
      return result;
    }

    v6 = a3;
    (off_266F828[v4])(&v7, v3);
    a3 = v6;
  }

  v3[70].n128_u32[2] = -1;
  result = *a3;
  v3[1].n128_u32[0] = a3[1].n128_u32[0];
  *v3 = result;
  v3[70].n128_u32[2] = 4;
  return result;
}

__n128 sub_9FE9FC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  result = *a2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 48);
  *(v2 + 32) = *(a2 + 32);
  *(v2 + 48) = v5;
  *v2 = result;
  *(v2 + 16) = v4;
  return result;
}

__n128 sub_9FEA14(uint64_t *a1, __int128 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = a2[1];
  *(v2 + 28) = *(a2 + 28);
  *v2 = v3;
  *(v2 + 16) = v4;
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 48) = 0;
  result = a2[3];
  *(v2 + 48) = result;
  *(v2 + 64) = *(a2 + 8);
  a2[3] = 0uLL;
  *(a2 + 8) = 0;
  *(v2 + 72) = *(a2 + 72);
  return result;
}

__n128 sub_9FEA54(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  result = *a2;
  v2[1].n128_u32[0] = a2[1].n128_u32[0];
  *v2 = result;
  return result;
}

double sub_9FEA6C(_OWORD **a1, __int128 *a2)
{
  v2 = *a1;
  v3 = *a2;
  *(v2 + 12) = *(a2 + 12);
  *v2 = v3;
  return sub_4C6AE8((v2 + 2), (a2 + 2));
}

__n128 sub_9FEA8C(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  result = *a2;
  v2[1].n128_u32[0] = a2[1].n128_u32[0];
  *v2 = result;
  return result;
}

char *sub_9FEAA4(char **a1, char *a2, uint64_t a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (0x6DB6DB6DB6DB6DB7 * ((v6 - result) >> 2) < a4)
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

    if (a4 <= 0x924924924924924)
    {
      v9 = 0x6DB6DB6DB6DB6DB7 * (v6 >> 2);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x492492492492492)
      {
        v11 = 0x924924924924924;
      }

      else
      {
        v11 = v10;
      }

      if (v11 <= 0x924924924924924)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (0x6DB6DB6DB6DB6DB7 * ((v12 - result) >> 2) >= a4)
  {
    v16 = a3 - a2;
    if (v16)
    {
      v17 = result;
      memmove(result, a2, v16);
      result = v17;
    }

    a1[1] = &result[v16];
  }

  else
  {
    v14 = &a2[v13];
    if (v12 != result)
    {
      result = memmove(result, a2, v13);
      v12 = a1[1];
    }

    v15 = a3 - v14;
    if (v15)
    {
      result = memmove(v12, v14, v15);
    }

    a1[1] = &v12[v15];
  }

  return result;
}

char *sub_9FEC44(char **a1, unsigned int *a2)
{
  v2 = 0xBC7FD20AC579B779 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xB7D4EA19221C0)
  {
    sub_1794();
  }

  if (0x78FFA4158AF36EF2 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x78FFA4158AF36EF2 * ((a1[2] - *a1) >> 3);
  }

  if (0xBC7FD20AC579B779 * ((a1[2] - *a1) >> 3) >= 0x5BEA750C910E0)
  {
    v5 = 0xB7D4EA19221C0;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0xB7D4EA19221C0)
    {
      operator new();
    }

    sub_1808();
  }

  v15 = 8 * ((a1[1] - *a1) >> 3);
  sub_9FF7A0(v15, *a2);
  v6 = (5704 * v2 + 5704);
  v7 = *a1;
  v8 = a1[1];
  v9 = (*a1 - v8);
  v10 = &v9[v15];
  if (v8 != *a1)
  {
    v11 = *a1;
    v12 = &v9[v15];
    do
    {
      v13 = sub_9FEE44(v12, v11);
      v11 += 5704;
      v12 = v13 + 5704;
    }

    while (v11 != v8);
    do
    {
      sub_9750F8(v7);
      v7 += 5704;
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

void sub_9FEDD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_9FEDE4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_9FEDE4(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 5704;
    sub_9750F8(i - 5704);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_9FEE44(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 16) = v4;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = 0;
  v5 = *(a2 + 40);
  v6 = *(a2 + 56);
  v7 = *(a2 + 65);
  *(a1 + 88) = 0;
  v8 = a1 + 88;
  *(v8 - 23) = v7;
  *(v8 - 48) = v5;
  *(v8 - 32) = v6;
  *(v8 + 704) = 0;
  if (*(a2 + 792) == 1)
  {
    sub_9FF44C(v8, a2 + 88);
    *(a1 + 792) = 1;
    *(a1 + 800) = 0;
    *(a1 + 840) = 0;
    if (*(a2 + 840) != 1)
    {
LABEL_3:
      *(a1 + 848) = 0;
      *(a1 + 952) = 0;
      if (*(a2 + 952) != 1)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else
  {
    *(a1 + 800) = 0;
    *(a1 + 840) = 0;
    if (*(a2 + 840) != 1)
    {
      goto LABEL_3;
    }
  }

  v15 = *(a2 + 800);
  *(a1 + 808) = *(a2 + 808);
  *(a1 + 800) = v15;
  v16 = *(a2 + 816);
  *(a1 + 832) = *(a2 + 832);
  *(a1 + 816) = v16;
  *(a2 + 832) = 0;
  *(a2 + 824) = 0;
  *(a2 + 816) = 0;
  *(a1 + 840) = 1;
  *(a1 + 848) = 0;
  *(a1 + 952) = 0;
  if (*(a2 + 952) != 1)
  {
LABEL_4:
    *(a1 + 960) = 0;
    *(a1 + 1000) = 0;
    if (*(a2 + 1000) != 1)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_13:
  v17 = *(a2 + 848);
  *(a1 + 858) = *(a2 + 858);
  *(a1 + 848) = v17;
  *(a1 + 880) = 0;
  *(a1 + 888) = 0u;
  *(a1 + 880) = *(a2 + 880);
  *(a1 + 896) = *(a2 + 896);
  *(a2 + 896) = 0;
  *(a2 + 880) = 0u;
  *(a1 + 904) = *(a2 + 904);
  *(a1 + 912) = *(a2 + 912);
  *(a1 + 920) = 0;
  *(a1 + 928) = 0u;
  *(a1 + 920) = *(a2 + 920);
  *(a1 + 928) = *(a2 + 928);
  *(a2 + 936) = 0;
  *(a2 + 920) = 0u;
  *(a1 + 944) = *(a2 + 944);
  *(a1 + 952) = 1;
  *(a1 + 960) = 0;
  *(a1 + 1000) = 0;
  if (*(a2 + 1000) == 1)
  {
LABEL_5:
    v9 = *(a2 + 960);
    *(a1 + 964) = *(a2 + 964);
    *(a1 + 960) = v9;
    *(a1 + 968) = 0;
    *(a1 + 976) = 0u;
    *(a1 + 968) = *(a2 + 968);
    *(a1 + 976) = *(a2 + 976);
    *(a2 + 984) = 0;
    *(a2 + 968) = 0u;
    *(a1 + 992) = *(a2 + 992);
    *(a1 + 1000) = 1;
  }

LABEL_6:
  *(a1 + 1008) = *(a2 + 1008);
  sub_9C1C00(a1 + 1016, a2 + 1016);
  *(a1 + 1880) = 0;
  *(a1 + 1864) = 0u;
  *(a1 + 1864) = *(a2 + 1864);
  *(a1 + 1872) = *(a2 + 1872);
  *(a2 + 1880) = 0;
  *(a2 + 1864) = 0u;
  v10 = *(a2 + 1888);
  *(a1 + 1901) = *(a2 + 1901);
  *(a1 + 1888) = v10;
  *(a1 + 1920) = 0;
  *(a1 + 1928) = 0u;
  *(a1 + 1920) = *(a2 + 1920);
  *(a1 + 1936) = *(a2 + 1936);
  *(a2 + 1936) = 0;
  *(a2 + 1920) = 0u;
  *(a1 + 1960) = 0;
  *(a1 + 1944) = 0u;
  *(a1 + 1944) = *(a2 + 1944);
  *(a1 + 1952) = *(a2 + 1952);
  *(a2 + 1960) = 0;
  *(a2 + 1944) = 0u;
  v11 = *(a2 + 1968);
  *(a1 + 1984) = *(a2 + 1984);
  *(a1 + 1968) = v11;
  *(a1 + 2000) = 0;
  *(a1 + 2008) = 0u;
  *(a1 + 2000) = *(a2 + 2000);
  *(a1 + 2016) = *(a2 + 2016);
  *(a2 + 2016) = 0;
  *(a2 + 2000) = 0u;
  *(a1 + 2024) = 0;
  *(a1 + 2104) = 0;
  if (*(a2 + 2104) == 1)
  {
    *(a1 + 2024) = *(a2 + 2024);
    v12 = *(a2 + 2032);
    *(a1 + 2048) = *(a2 + 2048);
    *(a1 + 2032) = v12;
    *(a2 + 2040) = 0uLL;
    *(a2 + 2032) = 0;
    *(a1 + 2056) = *(a2 + 2056);
    *(a1 + 2064) = *(a2 + 2064);
    *(a1 + 2072) = 0;
    *(a1 + 2080) = 0uLL;
    *(a1 + 2072) = *(a2 + 2072);
    *(a1 + 2080) = *(a2 + 2080);
    *(a2 + 2088) = 0;
    *(a2 + 2072) = 0uLL;
    *(a1 + 2096) = *(a2 + 2096);
    *(a1 + 2104) = 1;
  }

  *(a1 + 2112) = 0;
  *(a1 + 2144) = 0;
  if (*(a2 + 2144) == 1)
  {
    *(a1 + 2128) = 0;
    *(a1 + 2112) = 0uLL;
    *(a1 + 2112) = *(a2 + 2112);
    *(a1 + 2128) = *(a2 + 2128);
    *(a2 + 2128) = 0;
    *(a2 + 2112) = 0uLL;
    *(a1 + 2136) = *(a2 + 2136);
    *(a1 + 2144) = 1;
  }

  *(a1 + 2168) = 0;
  *(a1 + 2152) = 0u;
  *(a1 + 2152) = *(a2 + 2152);
  *(a1 + 2160) = *(a2 + 2160);
  *(a2 + 2168) = 0;
  *(a2 + 2152) = 0u;
  v13 = *(a2 + 2176);
  *(a1 + 2192) = *(a2 + 2192);
  *(a1 + 2176) = v13;
  *(a1 + 2200) = 0;
  *(a1 + 2208) = 0u;
  *(a1 + 2200) = *(a2 + 2200);
  *(a1 + 2208) = *(a2 + 2208);
  *(a2 + 2216) = 0;
  *(a2 + 2200) = 0u;
  sub_9C209C(a1 + 2224, a2 + 2224);
  *(a1 + 3440) = 0;
  *(a1 + 3424) = 0u;
  *(a1 + 3424) = *(a2 + 3424);
  *(a1 + 3440) = *(a2 + 3440);
  *(a2 + 3440) = 0;
  *(a2 + 3424) = 0u;
  *(a1 + 3464) = 0;
  *(a1 + 3448) = 0u;
  *(a1 + 3448) = *(a2 + 3448);
  *(a1 + 3456) = *(a2 + 3456);
  *(a2 + 3464) = 0;
  *(a2 + 3448) = 0u;
  *(a1 + 3488) = 0;
  *(a1 + 3472) = 0u;
  *(a1 + 3472) = *(a2 + 3472);
  *(a1 + 3488) = *(a2 + 3488);
  *(a2 + 3488) = 0;
  *(a2 + 3472) = 0u;
  *(a1 + 3512) = 0;
  *(a1 + 3496) = 0u;
  *(a1 + 3496) = *(a2 + 3496);
  *(a1 + 3504) = *(a2 + 3504);
  *(a2 + 3512) = 0;
  *(a2 + 3496) = 0u;
  *(a1 + 3536) = 0;
  *(a1 + 3520) = 0u;
  *(a1 + 3520) = *(a2 + 3520);
  *(a1 + 3536) = *(a2 + 3536);
  *(a2 + 3536) = 0;
  *(a2 + 3520) = 0u;
  sub_55A4D0(a1 + 3544, a2 + 3544);
  sub_55A4D0(a1 + 4040, a2 + 4040);
  *(a1 + 4536) = 0u;
  *(a1 + 4552) = 0;
  *(a1 + 4536) = *(a2 + 4536);
  *(a1 + 4544) = *(a2 + 4544);
  *(a2 + 4536) = 0u;
  *(a2 + 4552) = 0;
  *(a1 + 4576) = 0;
  *(a1 + 4560) = 0u;
  *(a1 + 4560) = *(a2 + 4560);
  *(a1 + 4576) = *(a2 + 4576);
  *(a2 + 4576) = 0;
  *(a2 + 4560) = 0u;
  *(a1 + 4584) = 0u;
  *(a1 + 4600) = 0;
  *(a1 + 4584) = *(a2 + 4584);
  *(a1 + 4592) = *(a2 + 4592);
  *(a2 + 4584) = 0u;
  *(a2 + 4600) = 0;
  *(a1 + 4624) = 0;
  *(a1 + 4608) = 0u;
  *(a1 + 4608) = *(a2 + 4608);
  *(a1 + 4624) = *(a2 + 4624);
  *(a2 + 4624) = 0;
  *(a2 + 4608) = 0u;
  sub_55A4D0(a1 + 4632, a2 + 4632);
  sub_55A4D0(a1 + 5128, a2 + 5128);
  *(a1 + 5624) = 0u;
  *(a1 + 5640) = 0;
  *(a1 + 5624) = *(a2 + 5624);
  *(a1 + 5632) = *(a2 + 5632);
  *(a2 + 5624) = 0u;
  *(a2 + 5640) = 0;
  *(a1 + 5664) = 0;
  *(a1 + 5648) = 0u;
  *(a1 + 5648) = *(a2 + 5648);
  *(a1 + 5664) = *(a2 + 5664);
  *(a2 + 5664) = 0;
  *(a2 + 5648) = 0u;
  *(a1 + 5672) = *(a2 + 5672);
  *(a1 + 5688) = 0u;
  *(a1 + 5680) = 0;
  *(a1 + 5680) = *(a2 + 5680);
  *(a1 + 5696) = *(a2 + 5696);
  *(a2 + 5696) = 0;
  *(a2 + 5680) = 0u;
  return a1;
}

uint64_t sub_9FF44C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 32);
  v6 = *(a2 + 48);
  *(a1 + 63) = *(a2 + 63);
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  *(a1 + 16) = v4;
  *(a1 + 72) = 0;
  *(a1 + 128) = 0;
  if (*(a2 + 128) == 1)
  {
    v7 = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 72) = v7;
    *(a2 + 80) = 0;
    *(a2 + 88) = 0;
    *(a2 + 72) = 0;
    *(a1 + 96) = *(a2 + 96);
    v8 = *(a2 + 104);
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 104) = v8;
    *(a2 + 112) = 0;
    *(a2 + 120) = 0;
    *(a2 + 104) = 0;
    *(a1 + 128) = 1;
  }

  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a2 + 136) = 0;
  *(a2 + 144) = 0;
  *(a2 + 152) = 0;
  v9 = *(a2 + 160);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 160) = v9;
  *(a2 + 168) = 0;
  *(a2 + 176) = 0;
  *(a2 + 160) = 0;
  *(a1 + 184) = *(a2 + 184);
  v10 = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 192) = v10;
  *(a2 + 200) = 0;
  *(a2 + 208) = 0;
  *(a2 + 192) = 0;
  v11 = *(a2 + 216);
  *(a1 + 224) = 0;
  *(a1 + 216) = v11;
  *(a1 + 256) = -1;
  v12 = *(a2 + 256);
  if (v12 != -1)
  {
    v24 = a1 + 224;
    (off_266F760[v12])(&v24, a2 + 224);
    *(a1 + 256) = v12;
  }

  *(a1 + 264) = *(a2 + 264);
  v13 = *(a2 + 272);
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 272) = v13;
  *(a2 + 280) = 0;
  *(a2 + 288) = 0;
  *(a2 + 272) = 0;
  *(a1 + 296) = *(a2 + 296);
  v14 = *(a2 + 304);
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 304) = v14;
  *(a2 + 312) = 0;
  *(a2 + 320) = 0;
  *(a2 + 304) = 0;
  *(a1 + 328) = *(a2 + 328);
  *(a1 + 336) = *(a2 + 336);
  *(a1 + 344) = *(a2 + 344);
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  *(a1 + 352) = 0;
  *(a1 + 352) = *(a2 + 352);
  *(a1 + 368) = *(a2 + 368);
  *(a2 + 352) = 0;
  *(a2 + 360) = 0;
  *(a2 + 368) = 0;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  *(a1 + 392) = 0;
  *(a1 + 376) = *(a2 + 376);
  *(a1 + 384) = *(a2 + 384);
  *(a2 + 376) = 0;
  *(a2 + 384) = 0;
  *(a2 + 392) = 0;
  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  *(a1 + 416) = 0;
  *(a1 + 400) = *(a2 + 400);
  *(a1 + 416) = *(a2 + 416);
  *(a2 + 400) = 0;
  *(a2 + 408) = 0;
  *(a2 + 416) = 0;
  v15 = *(a2 + 424);
  *(a1 + 432) = *(a2 + 432);
  *(a1 + 424) = v15;
  *(a1 + 440) = 0;
  *(a1 + 496) = 0;
  if (*(a2 + 496) == 1)
  {
    v16 = *(a2 + 440);
    *(a1 + 456) = *(a2 + 456);
    *(a1 + 440) = v16;
    *(a2 + 448) = 0;
    *(a2 + 456) = 0;
    *(a2 + 440) = 0;
    *(a1 + 464) = *(a2 + 464);
    v17 = *(a2 + 472);
    *(a1 + 488) = *(a2 + 488);
    *(a1 + 472) = v17;
    *(a2 + 480) = 0;
    *(a2 + 488) = 0;
    *(a2 + 472) = 0;
    *(a1 + 496) = 1;
  }

  *(a1 + 504) = *(a2 + 504);
  *(a1 + 512) = 0;
  *(a1 + 544) = -1;
  v18 = *(a2 + 544);
  if (v18 != -1)
  {
    v24 = a1 + 512;
    (off_266F760[v18])(&v24, a2 + 512);
    *(a1 + 544) = v18;
  }

  *(a1 + 552) = *(a2 + 552);
  v19 = *(a2 + 560);
  *(a1 + 576) = *(a2 + 576);
  *(a1 + 560) = v19;
  *(a2 + 568) = 0u;
  *(a2 + 560) = 0;
  *(a1 + 584) = *(a2 + 584);
  v20 = *(a2 + 592);
  *(a1 + 608) = *(a2 + 608);
  *(a1 + 592) = v20;
  *(a2 + 600) = 0u;
  *(a2 + 592) = 0;
  *(a1 + 616) = *(a2 + 616);
  *(a1 + 624) = *(a2 + 624);
  *(a1 + 640) = 0u;
  *(a1 + 632) = 0;
  *(a1 + 632) = *(a2 + 632);
  *(a1 + 640) = *(a2 + 640);
  *(a2 + 648) = 0;
  *(a2 + 632) = 0u;
  v21 = *(a2 + 656);
  v22 = *(a2 + 672);
  *(a1 + 681) = *(a2 + 681);
  *(a1 + 656) = v21;
  *(a1 + 672) = v22;
  return a1;
}

uint64_t sub_9FF7A0(uint64_t a1, int a2)
{
  *a1 = a2;
  *(a1 + 8) = -1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0x7FFFFFFF;
  *(a1 + 48) = -1;
  *(a1 + 56) = -1;
  *(a1 + 64) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 792) = 0;
  *(a1 + 800) = 0;
  *(a1 + 840) = 0;
  *(a1 + 848) = 0;
  *(a1 + 952) = 0;
  *(a1 + 960) = 0;
  *(a1 + 1000) = 0;
  *(a1 + 1008) = 0;
  *(a1 + 1080) = 0u;
  *(a1 + 1096) = 0u;
  *(a1 + 1048) = 0u;
  *(a1 + 1064) = 0u;
  *(a1 + 1016) = 0u;
  *(a1 + 1032) = 0u;
  sub_64B998(a1 + 1112);
  sub_64B998(a1 + 1272);
  sub_64B998(a1 + 1432);
  *(a1 + 1592) = 0;
  *(a1 + 1600) = 0u;
  *(a1 + 1616) = 0u;
  *(a1 + 1632) = 0u;
  *(a1 + 1648) = 0u;
  *(a1 + 1664) = 0u;
  *(a1 + 1680) = 0u;
  sub_64B998(a1 + 1696);
  *(a1 + 1856) = 0;
  *(a1 + 1864) = 0;
  *(a1 + 1872) = 0u;
  *(a1 + 1888) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 1896) = -1;
  *(a1 + 1904) = -1;
  *(a1 + 1912) = 0;
  *(a1 + 1916) = 0;
  *(a1 + 1920) = 0u;
  *(a1 + 1936) = 0u;
  *(a1 + 1952) = 0u;
  *(a1 + 1968) = -1;
  *(a1 + 1976) = 0;
  *(a1 + 1980) = 0;
  *(a1 + 1984) = -1;
  *(a1 + 1992) = -1;
  *(a1 + 2104) = 0;
  *(a1 + 2112) = 0;
  *(a1 + 2144) = 0;
  *(a1 + 2024) = 0;
  *(a1 + 2016) = 0;
  *(a1 + 2000) = 0u;
  *(a1 + 2168) = 0;
  *(a1 + 2152) = 0u;
  *(a1 + 2176) = 0xFFFFFFFF00000000;
  *(a1 + 2184) = 0x8000000080000000;
  *(a1 + 2192) = -1;
  *(a1 + 2216) = 0;
  *(a1 + 2200) = 0u;
  sub_9C2868(a1 + 2224);
  *(a1 + 3488) = 0;
  *(a1 + 3472) = 0u;
  *(a1 + 3456) = 0u;
  *(a1 + 3440) = 0u;
  *(a1 + 3424) = 0u;
  sub_559C9C(a1 + 3496);
  sub_559C9C(a1 + 4584);
  *(a1 + 5672) = 0;
  *(a1 + 5680) = 0;
  *(a1 + 5696) = 0;
  *(a1 + 5688) = 0;
  return a1;
}

void sub_9FF968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  sub_559E70((v10 + 3496));
  v17 = *(v10 + 3472);
  if (v17)
  {
    *(v10 + 3480) = v17;
    operator delete(v17);
  }

  v18 = *(v10 + 3448);
  if (v18)
  {
    *(v10 + 3456) = v18;
    operator delete(v18);
  }

  sub_974EB8((v10 + 3424));
  sub_974F1C((v10 + 2224));
  v19 = *v15;
  if (*v15)
  {
    *(v10 + 2208) = v19;
    operator delete(v19);
    v20 = (v10 + 2000);
    v21 = *v14;
    if (!*v14)
    {
LABEL_7:
      sub_974FF4(v10 + 2024);
      v22 = *v20;
      if (!*v20)
      {
        goto LABEL_8;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v20 = (v10 + 2000);
    v21 = *v14;
    if (!*v14)
    {
      goto LABEL_7;
    }
  }

  *(v10 + 2160) = v21;
  operator delete(v21);
  sub_974FF4(v10 + 2024);
  v22 = *v20;
  if (!*v20)
  {
LABEL_8:
    v23 = (v10 + 1864);
    v24 = (v10 + 1920);
    v25 = *(v10 + 1944);
    if (!v25)
    {
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(v10 + 2008) = v22;
  operator delete(v22);
  v23 = (v10 + 1864);
  v24 = (v10 + 1920);
  v25 = *(v10 + 1944);
  if (!v25)
  {
LABEL_9:
    v26 = *v24;
    if (!*v24)
    {
LABEL_11:
      a10 = v23;
      sub_973FB8(&a10);
      sub_9750B4(v12);
      if (*(v10 + 1000) == 1)
      {
        v27 = *(v10 + 968);
        if (v27)
        {
          *(v10 + 976) = v27;
          operator delete(v27);
        }
      }

      sub_97373C(v10 + 848);
      if (*(v10 + 840) == 1 && *(v10 + 839) < 0)
      {
        operator delete(*(v10 + 816));
      }

      if (*(v10 + 792) == 1)
      {
        sub_973264(v11);
        if ((*(v10 + 39) & 0x80000000) == 0)
        {
LABEL_25:
          _Unwind_Resume(a1);
        }
      }

      else if ((*(v10 + 39) & 0x80000000) == 0)
      {
        goto LABEL_25;
      }

      operator delete(*v13);
      _Unwind_Resume(a1);
    }

LABEL_10:
    *(v10 + 1928) = v26;
    operator delete(v26);
    goto LABEL_11;
  }

LABEL_15:
  *(v10 + 1952) = v25;
  operator delete(v25);
  v26 = *v24;
  if (!*v24)
  {
    goto LABEL_11;
  }

  goto LABEL_10;
}

uint64_t sub_9FFB40(void **a1, uint64_t a2)
{
  v2 = 0xBC7FD20AC579B779 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xB7D4EA19221C0)
  {
    sub_1794();
  }

  if (0x78FFA4158AF36EF2 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x78FFA4158AF36EF2 * ((a1[2] - *a1) >> 3);
  }

  if (0xBC7FD20AC579B779 * ((a1[2] - *a1) >> 3) >= 0x5BEA750C910E0)
  {
    v5 = 0xB7D4EA19221C0;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0xB7D4EA19221C0)
    {
      operator new();
    }

    sub_1808();
  }

  v15 = 8 * ((a1[1] - *a1) >> 3);
  sub_9722E4(v15, a2);
  v6 = 5704 * v2 + 5704;
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
      v13 = sub_9FEE44(v12, v11);
      v11 += 5704;
      v12 = v13 + 5704;
    }

    while (v11 != v8);
    do
    {
      sub_9750F8(v7);
      v7 += 5704;
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

void sub_9FFCCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_9FEDE4(va);
  _Unwind_Resume(a1);
}

void sub_9FFCE0(_BYTE *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x555555555555556)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_9FFE28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_974398(va);
  *(v10 + 8) = v11;
  sub_9743FC(&a9);
  _Unwind_Resume(a1);
}

void **sub_9FFE48(void **a1)
{
  v2 = a1[3];
  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    v4 = a1[1];
    v5 = *a1;
    if (v4 != v3)
    {
      do
      {
        v4 = sub_9FFEB4(v4 - 18);
      }

      while (v4 != v3);
      v5 = *a1;
    }

    a1[1] = v3;
    operator delete(v5);
  }

  return a1;
}

void *sub_9FFEB4(void *a1)
{
  v2 = a1[13];
  if (v2)
  {
    a1[14] = v2;
    operator delete(v2);
  }

  v3 = a1[10];
  if (v3)
  {
    a1[11] = v3;
    operator delete(v3);
  }

  v4 = a1[7];
  if (v4)
  {
    a1[8] = v4;
    operator delete(v4);
  }

  v5 = a1[4];
  if (v5)
  {
    a1[5] = v5;
    operator delete(v5);
  }

  v6 = a1[1];
  if (v6)
  {
    v7 = a1[2];
    v8 = a1[1];
    if (v7 != v6)
    {
      do
      {
        v9 = v7 - 1136;
        v10 = *(v7 - 8);
        if (v10 != -1)
        {
          (off_266F828[v10])(&v12, v7 - 1136);
        }

        *(v7 - 8) = -1;
        v7 -= 1136;
      }

      while (v9 != v6);
      v8 = a1[1];
    }

    a1[2] = v6;
    operator delete(v8);
  }

  return a1;
}

char *sub_9FFF9C(char **a1, char *a2, uint64_t a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (0x6DB6DB6DB6DB6DB7 * ((v6 - result) >> 2) < a4)
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

    if (a4 <= 0x924924924924924)
    {
      v9 = 0x6DB6DB6DB6DB6DB7 * (v6 >> 2);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x492492492492492)
      {
        v11 = 0x924924924924924;
      }

      else
      {
        v11 = v10;
      }

      if (v11 <= 0x924924924924924)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (0x6DB6DB6DB6DB6DB7 * ((v12 - result) >> 2) >= a4)
  {
    v16 = a3 - a2;
    if (v16)
    {
      v17 = result;
      memmove(result, a2, v16);
      result = v17;
    }

    a1[1] = &result[v16];
  }

  else
  {
    v14 = &a2[v13];
    if (v12 != result)
    {
      result = memmove(result, a2, v13);
      v12 = a1[1];
    }

    v15 = a3 - v14;
    if (v15)
    {
      result = memmove(v12, v14, v15);
    }

    a1[1] = &v12[v15];
  }

  return result;
}

uint64_t sub_A0013C(uint64_t a1, unint64_t a2, unsigned int a3, int a4)
{
  v7 = sub_3A231C(a1, a2, 0);
  v8 = &v7[-*v7];
  if (*v8 < 5u)
  {
    v9 = 0;
  }

  else
  {
    v9 = *(v8 + 2);
    if (*(v8 + 2))
    {
      v9 += &v7[*&v7[v9]];
    }
  }

  v10 = (v9 + 4 * HIDWORD(a2) + 4 + *(v9 + 4 * HIDWORD(a2) + 4));
  v11 = (v10 - *v10);
  if (*v11 < 0x29u)
  {
    return 0;
  }

  v12 = v11[20];
  if (!v12)
  {
    return 0;
  }

  v13 = *(&v10[a3 + 1] + v12 + *(v10 + v12));
  if (v13 == -1)
  {
    return 0;
  }

  v14 = &v7[4 * v13 + *(v8 + 10) + *&v7[*(v8 + 10)]];
  v15 = (v14 + 4 + *(v14 + 4));
  v16 = (v15 - *v15);
  if (*v16 < 7u)
  {
    return 0;
  }

  v17 = v16[3];
  if (!v17)
  {
    return 0;
  }

  v18 = (v15 + v17 + *(v15 + v17));
  v19 = *v18;
  if (!v19)
  {
    return 0;
  }

  v20 = 0;
  v21 = v18 + 1;
  v22 = -1;
  while (1)
  {
    v24 = (&v21[v20] + v21[v20]);
    v25 = (v24 - *v24);
    if (*v25 >= 7u)
    {
      v26 = v25[3];
      if (v26)
      {
        v27 = (v24 + v26 + *(v24 + v26));
        v28 = *v27;
        if (v28)
        {
          break;
        }
      }
    }

    v22 = v20;
LABEL_13:
    ++v20;
    v23 = v22;
    if (v20 == v19)
    {
      goto LABEL_22;
    }
  }

  v29 = 2 * v28;
  v30 = (v27 + 1);
  while (a4 != *v30)
  {
    ++v30;
    v29 -= 2;
    if (!v29)
    {
      goto LABEL_13;
    }
  }

  v23 = v20;
  if (!v29)
  {
    goto LABEL_13;
  }

LABEL_22:
  if (v23 != -1)
  {
    return &v21[v23] + v21[v23];
  }

  return 0;
}

uint64_t *sub_A002F0(uint64_t a1, unint64_t a2, unsigned int a3, unsigned int a4, int a5)
{
  result = sub_95B1D4(a1, a2, a3, a5);
  if (result)
  {
    v10 = result;
    result = result[8];
    v11 = v10[9];
    if (v11 - result >= 72)
    {
      if (v11 - result != 72)
      {
        v12 = 0x8E38E38E38E38E39 * ((v11 - result) >> 3);
        do
        {
          v13 = 9 * (v12 >> 2);
          _X13 = &result[v13];
          __asm { PRFM            #0, [X13] }

          v20 = &result[9 * (v12 >> 1)];
          _X12 = &v20[v13];
          __asm { PRFM            #0, [X12] }

          if (*v20 >= a4)
          {
            v23 = 0;
          }

          else
          {
            v23 = v12 >> 1;
          }

          result += 9 * v23;
          v12 -= v12 >> 1;
        }

        while (v12 > 1);
      }

      result += 9 * (*result < a4);
    }

    if (result == v11 || *result != a4)
    {
      if (a5 == 1)
      {
        return 0;
      }

      else if (!a5)
      {
        v24 = HIDWORD(a2);
        exception = __cxa_allocate_exception(0x40uLL);
        v26 = a2;
        v27 = exception;
        v40.__r_.__value_.__r.__words[0] = __PAIR64__(v26, v24);
        sub_2FF494(&v40, &v41);
        sub_23E08("Could not obtain stop time update for trip ", &v41, &v42);
        sub_30F54(&v43, ", schedule index ", &v42);
        std::to_string(&v40, a3);
        if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v28 = &v40;
        }

        else
        {
          v28 = v40.__r_.__value_.__r.__words[0];
        }

        if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v40.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v40.__r_.__value_.__l.__size_;
        }

        v30 = std::string::append(&v43, v28, size);
        v31 = *&v30->__r_.__value_.__l.__data_;
        v44.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
        *&v44.__r_.__value_.__l.__data_ = v31;
        v30->__r_.__value_.__l.__size_ = 0;
        v30->__r_.__value_.__r.__words[2] = 0;
        v30->__r_.__value_.__r.__words[0] = 0;
        sub_30F54(&v45, ", and stop index ", &v44);
        std::to_string(&v39, a4);
        if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v32 = &v39;
        }

        else
        {
          v32 = v39.__r_.__value_.__r.__words[0];
        }

        if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v33 = HIBYTE(v39.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v33 = v39.__r_.__value_.__l.__size_;
        }

        v34 = std::string::append(&v45, v32, v33);
        v35 = *&v34->__r_.__value_.__l.__data_;
        v47 = v34->__r_.__value_.__r.__words[2];
        v46 = v35;
        v34->__r_.__value_.__l.__size_ = 0;
        v34->__r_.__value_.__r.__words[2] = 0;
        v34->__r_.__value_.__r.__words[0] = 0;
        if (v47 >= 0)
        {
          v36 = &v46;
        }

        else
        {
          v36 = v46;
        }

        if (v47 >= 0)
        {
          v37 = HIBYTE(v47);
        }

        else
        {
          v37 = *(&v46 + 1);
        }

        v38 = sub_2D390(v27, v36, v37);
      }
    }
  }

  return result;
}

void sub_A00540(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (*(v45 - 57) < 0)
  {
    operator delete(*(v45 - 80));
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((*(v45 - 81) & 0x80000000) == 0)
    {
LABEL_5:
      if ((a45 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    }
  }

  else if ((*(v45 - 81) & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(*(v45 - 104));
  if ((a45 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(a40);
  if ((a21 & 0x80000000) == 0)
  {
LABEL_7:
    if ((a39 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(a16);
  if ((a39 & 0x80000000) == 0)
  {
LABEL_8:
    if ((a33 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(a34);
  if ((a33 & 0x80000000) == 0)
  {
LABEL_9:
    if ((a27 & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_10;
  }

LABEL_16:
  operator delete(a28);
  if ((a27 & 0x80000000) == 0)
  {
LABEL_17:
    _Unwind_Resume(a1);
  }

LABEL_10:
  operator delete(__p);
  goto LABEL_17;
}

uint64_t sub_A006A4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 32);
  v6 = *(a2 + 48);
  *(a1 + 63) = *(a2 + 63);
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  *(a1 + 16) = v4;
  sub_A00AC8(a1 + 72, (a2 + 72));
  v7 = (a1 + 136);
  v8 = *(a1 + 136);
  if (v8)
  {
    v9 = *(a1 + 144);
    v10 = *(a1 + 136);
    if (v9 == v8)
    {
LABEL_11:
      *(a1 + 144) = v8;
      operator delete(v10);
      *v7 = 0;
      *(a1 + 144) = 0;
      *(a1 + 152) = 0;
      goto LABEL_12;
    }

    while (1)
    {
      if (*(v9 - 1) < 0)
      {
        operator delete(*(v9 - 3));
        v11 = v9 - 7;
        if (*(v9 - 33) < 0)
        {
LABEL_9:
          operator delete(*v11);
        }
      }

      else
      {
        v11 = v9 - 7;
        if (*(v9 - 33) < 0)
        {
          goto LABEL_9;
        }
      }

      v9 = v11;
      if (v11 == v8)
      {
        v10 = *v7;
        goto LABEL_11;
      }
    }
  }

LABEL_12:
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a2 + 136) = 0;
  *(a2 + 144) = 0;
  *(a2 + 152) = 0;
  if (*(a1 + 183) < 0)
  {
    operator delete(*(a1 + 160));
  }

  v12 = *(a2 + 160);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 160) = v12;
  *(a2 + 183) = 0;
  *(a2 + 160) = 0;
  *(a1 + 184) = *(a2 + 184);
  if (*(a1 + 215) < 0)
  {
    operator delete(*(a1 + 192));
  }

  v13 = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 192) = v13;
  *(a2 + 215) = 0;
  *(a2 + 192) = 0;
  *(a1 + 216) = *(a2 + 216);
  v14 = *(a1 + 256);
  v15 = *(a2 + 256);
  if (v14 == -1)
  {
    if (v15 == -1)
    {
      goto LABEL_21;
    }
  }

  else if (v15 == -1)
  {
    (off_266F738[v14])(&v32, a1 + 224);
    *(a1 + 256) = -1;
    goto LABEL_21;
  }

  v32 = a1 + 224;
  (off_266F8C8[v15])(&v32);
LABEL_21:
  *(a1 + 264) = *(a2 + 264);
  if (*(a1 + 295) < 0)
  {
    operator delete(*(a1 + 272));
  }

  v16 = *(a2 + 272);
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 272) = v16;
  *(a2 + 295) = 0;
  *(a2 + 272) = 0;
  *(a1 + 296) = *(a2 + 296);
  if (*(a1 + 327) < 0)
  {
    operator delete(*(a1 + 304));
  }

  v17 = *(a2 + 304);
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 304) = v17;
  *(a2 + 327) = 0;
  *(a2 + 304) = 0;
  *(a1 + 328) = *(a2 + 328);
  *(a1 + 336) = *(a2 + 336);
  *(a1 + 344) = *(a2 + 344);
  v18 = *(a1 + 352);
  if (v18)
  {
    *(a1 + 360) = v18;
    operator delete(v18);
    *(a1 + 352) = 0;
    *(a1 + 360) = 0;
    *(a1 + 368) = 0;
  }

  *(a1 + 352) = *(a2 + 352);
  *(a1 + 368) = *(a2 + 368);
  *(a2 + 352) = 0;
  *(a2 + 360) = 0;
  *(a2 + 368) = 0;
  v19 = *(a1 + 376);
  if (v19)
  {
    *(a1 + 384) = v19;
    operator delete(v19);
    *(a1 + 376) = 0;
    *(a1 + 384) = 0;
    *(a1 + 392) = 0;
  }

  *(a1 + 376) = *(a2 + 376);
  *(a1 + 384) = *(a2 + 384);
  *(a2 + 376) = 0;
  *(a2 + 384) = 0;
  *(a2 + 392) = 0;
  v20 = *(a1 + 400);
  if (v20)
  {
    *(a1 + 408) = v20;
    operator delete(v20);
    *(a1 + 400) = 0;
    *(a1 + 408) = 0;
    *(a1 + 416) = 0;
  }

  *(a1 + 400) = *(a2 + 400);
  *(a1 + 416) = *(a2 + 416);
  *(a2 + 400) = 0;
  *(a2 + 408) = 0;
  *(a2 + 416) = 0;
  v21 = *(a2 + 424);
  *(a1 + 432) = *(a2 + 432);
  *(a1 + 424) = v21;
  sub_A00AC8(a1 + 440, (a2 + 440));
  *(a1 + 504) = *(a2 + 504);
  v22 = *(a1 + 544);
  v23 = *(a2 + 544);
  if (v22 == -1)
  {
    if (v23 == -1)
    {
      goto LABEL_36;
    }
  }

  else if (v23 == -1)
  {
    (off_266F738[v22])(&v32, a1 + 512);
    *(a1 + 544) = -1;
    goto LABEL_36;
  }

  v32 = a1 + 512;
  (off_266F8C8[v23])(&v32);
LABEL_36:
  *(a1 + 552) = *(a2 + 552);
  v24 = (a1 + 560);
  if (*(a1 + 583) < 0)
  {
    operator delete(*v24);
  }

  v25 = *(a2 + 560);
  *(a1 + 576) = *(a2 + 576);
  *v24 = v25;
  *(a2 + 583) = 0;
  *(a2 + 560) = 0;
  *(a1 + 584) = *(a2 + 584);
  v26 = (a1 + 592);
  if (*(a1 + 615) < 0)
  {
    operator delete(*v26);
  }

  v27 = *(a2 + 592);
  *(a1 + 608) = *(a2 + 608);
  *v26 = v27;
  *(a2 + 615) = 0;
  *(a2 + 592) = 0;
  *(a1 + 616) = *(a2 + 616);
  *(a1 + 624) = *(a2 + 624);
  v28 = *(a1 + 632);
  if (v28)
  {
    *(a1 + 640) = v28;
    operator delete(v28);
    *(a1 + 632) = 0;
    *(a1 + 640) = 0;
    *(a1 + 648) = 0;
  }

  *(a1 + 632) = *(a2 + 632);
  *(a1 + 640) = *(a2 + 640);
  *(a2 + 648) = 0;
  *(a2 + 632) = 0u;
  v29 = *(a2 + 656);
  v30 = *(a2 + 672);
  *(a1 + 681) = *(a2 + 681);
  *(a1 + 656) = v29;
  *(a1 + 672) = v30;
  return a1;
}

void sub_A00AC8(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 56) != *(a2 + 56))
  {
    if (!*(a1 + 56))
    {
      v7 = *a2;
      *(a1 + 16) = *(a2 + 2);
      *a1 = v7;
      *(a2 + 8) = 0uLL;
      *a2 = 0;
      *(a1 + 24) = *(a2 + 24);
      v8 = a2[2];
      *(a1 + 48) = *(a2 + 6);
      *(a1 + 32) = v8;
      *(a2 + 40) = 0uLL;
      *(a2 + 4) = 0;
      *(a1 + 56) = 1;
      return;
    }

    if (*(a1 + 55) < 0)
    {
      operator delete(*(a1 + 32));
      if ((*(a1 + 23) & 0x80000000) == 0)
      {
        goto LABEL_12;
      }
    }

    else if ((*(a1 + 23) & 0x80000000) == 0)
    {
LABEL_12:
      *(a1 + 56) = 0;
      return;
    }

    operator delete(*a1);
    *(a1 + 56) = 0;
    return;
  }

  if (*(a1 + 56))
  {
    if (*(a1 + 23) < 0)
    {
      v3 = a2;
      operator delete(*a1);
      a2 = v3;
    }

    v4 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v4;
    *(a2 + 23) = 0;
    *a2 = 0;
    *(a1 + 24) = *(a2 + 24);
    if (*(a1 + 55) < 0)
    {
      v5 = a2;
      operator delete(*(a1 + 32));
      a2 = v5;
    }

    v6 = a2[2];
    *(a1 + 48) = *(a2 + 6);
    *(a1 + 32) = v6;
    *(a2 + 55) = 0;
    *(a2 + 32) = 0;
  }
}

__n128 sub_A00BFC@<Q0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    while (1)
    {
      v6 = *(v5 + 80);
      v7 = *(v5 + 84);
      if (!v6 || v7 == -1)
      {
        break;
      }

      if (v6 == a2 && v7 == HIDWORD(a2))
      {
        break;
      }

      v5 += 96;
      if (v5 == v4)
      {
        goto LABEL_15;
      }
    }
  }

  if (v5 == v4)
  {
LABEL_15:
    *a3 = 0;
    *(a3 + 96) = 0;
  }

  else
  {
    *a3 = *v5;
    if (*(v5 + 31) < 0)
    {
      sub_325C((a3 + 8), *(v5 + 8), *(v5 + 16));
    }

    else
    {
      v10 = *(v5 + 8);
      *(a3 + 24) = *(v5 + 24);
      *(a3 + 8) = v10;
    }

    *(a3 + 32) = *(v5 + 32);
    sub_39A3D8((a3 + 48), (v5 + 48));
    result = *(v5 + 72);
    *(a3 + 88) = *(v5 + 88);
    *(a3 + 72) = result;
    *(a3 + 96) = 1;
  }

  return result;
}

void sub_A00CE4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

char **sub_A00D00(char **a1)
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
        v5 = *(v3 - 6);
        if (v5)
        {
          v6 = *(v3 - 5);
          v7 = *(v3 - 6);
          if (v6 != v5)
          {
            do
            {
              if (*(v6 - 1) < 0)
              {
                operator delete(*(v6 - 24));
              }

              v6 -= 32;
            }

            while (v6 != v5);
            v7 = *(v3 - 6);
          }

          *(v3 - 5) = v5;
          operator delete(v7);
        }

        if (*(v3 - 65) < 0)
        {
          operator delete(*(v3 - 11));
        }

        v3 -= 96;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_A00DC4(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (a1 - *a1);
  if (*v4 < 9u)
  {
    v5 = 0;
    v6 = (&loc_1120530 + 1);
    v7 = *(&loc_1120530 + 1);
    if (*(&loc_1120530 + 1) >= 7u)
    {
      goto LABEL_5;
    }

LABEL_11:
    v8 = 0;
    v9 = 0xFFFFFFLL;
    if (v7 < 5)
    {
      goto LABEL_16;
    }

    v10 = v6[2];
    if (!v10)
    {
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  v5 = v4[4];
  if (v5)
  {
    v5 = (v5 + a1 + *(v5 + a1));
  }

  v6 = (v5 - *v5);
  v7 = *v6;
  if (v7 < 7)
  {
    goto LABEL_11;
  }

LABEL_5:
  if (v6[3])
  {
    v8 = *(v5 + v6[3]);
    if (v7 >= 9)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v8 = 0;
    if (v7 >= 9)
    {
LABEL_7:
      if (v6[4])
      {
        v9 = *(v5 + v6[4]);
        v10 = v6[2];
        if (!v10)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v9 = 0xFFFFFFLL;
        v10 = v6[2];
        if (!v10)
        {
          goto LABEL_16;
        }
      }

LABEL_13:
      v11 = (v5 + v10 + *(v5 + v10));
      goto LABEL_17;
    }
  }

  v9 = 0xFFFFFFLL;
  v10 = v6[2];
  if (v10)
  {
    goto LABEL_13;
  }

LABEL_16:
  v11 = 0;
LABEL_17:
  sub_509164(v11, &v21);
  v12 = v21;
  v27[0] = *v22;
  *(v27 + 7) = *&v22[7];
  v13 = v23;
  v14 = v25;
  v20 = v24;
  v15 = v26;
  v16 = (a1 - *a1);
  v17 = *(a1 + v16[2]);
  v18 = *(a1 + v16[3]);
  if (*v16 < 0xBu)
  {
    LOBYTE(v19) = 0;
  }

  else
  {
    v19 = v16[5];
    if (v19)
    {
      LOBYTE(v19) = *(a1 + v19) != 0;
    }
  }

  *a2 = v8 | (v9 << 32);
  *(a2 + 8) = v12;
  *(a2 + 16) = v27[0];
  *(a2 + 23) = *(v27 + 7);
  *(a2 + 31) = v13;
  *(a2 + 32) = v20;
  *(a2 + 48) = v14;
  *(a2 + 64) = v15;
  *(a2 + 72) = v17;
  *(a2 + 80) = v18;
  *(a2 + 88) = v19;
}

void sub_A00FA8(void **a1, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 5) < a2)
  {
    if (a2 < 0x2AAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_A0107C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_A01090(va);
  _Unwind_Resume(a1);
}

uint64_t sub_A01090(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 96;
    v4 = *(i - 48);
    if (v4)
    {
      v5 = *(i - 40);
      v6 = *(i - 48);
      if (v5 != v4)
      {
        do
        {
          if (*(v5 - 1) < 0)
          {
            operator delete(*(v5 - 24));
          }

          v5 -= 32;
        }

        while (v5 != v4);
        v6 = *(i - 48);
      }

      *(i - 40) = v4;
      operator delete(v6);
    }

    if (*(i - 65) < 0)
    {
      operator delete(*(i - 88));
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_A01148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      v7 = *(v6 + 8);
      *(a4 + 24) = *(v6 + 24);
      *(a4 + 8) = v7;
      *(v6 + 16) = 0;
      *(v6 + 24) = 0;
      *(v6 + 8) = 0;
      *(a4 + 32) = *(v6 + 32);
      *(a4 + 56) = 0;
      *(a4 + 64) = 0;
      *(a4 + 48) = 0;
      *(a4 + 48) = *(v6 + 48);
      *(a4 + 64) = *(v6 + 64);
      *(v6 + 48) = 0;
      *(v6 + 56) = 0;
      *(v6 + 64) = 0;
      v8 = *(v6 + 72);
      *(a4 + 88) = *(v6 + 88);
      *(a4 + 72) = v8;
      v6 += 96;
      a4 += 96;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      v9 = *(v5 + 48);
      if (v9)
      {
        v10 = *(v5 + 56);
        v11 = *(v5 + 48);
        if (v10 != v9)
        {
          do
          {
            if (*(v10 - 1) < 0)
            {
              operator delete(*(v10 - 24));
            }

            v10 -= 32;
          }

          while (v10 != v9);
          v11 = *(v5 + 48);
        }

        *(v5 + 56) = v9;
        operator delete(v11);
      }

      if (*(v5 + 31) < 0)
      {
        operator delete(*(v5 + 8));
      }

      v5 += 96;
    }
  }
}

uint64_t *sub_A01258(char **a1, unsigned int **a2, uint64_t *a3, void (*a4)(uint64_t *__return_ptr, char *))
{
  if (*a1 != *a2)
  {
    a4(&v17, &(*a1)[**a1]);
    while (1)
    {
      v9 = a3[1];
      if (v9 >= a3[2])
      {
        sub_A013D8(a3, &v17);
        v12 = __p[0];
        a3[1] = v13;
        if (v12)
        {
          v14 = __p[1];
          v15 = v12;
          if (__p[1] != v12)
          {
            do
            {
              if (*(v14 - 1) < 0)
              {
                operator delete(*(v14 - 3));
              }

              v14 -= 4;
            }

            while (v14 != v12);
            v15 = __p[0];
          }

          __p[1] = v12;
          operator delete(v15);
        }
      }

      else
      {
        *v9 = v17;
        v10 = v18;
        *(v9 + 24) = v19;
        *(v9 + 8) = v10;
        v19 = 0;
        v18 = 0uLL;
        *(v9 + 32) = v20;
        *(v9 + 56) = 0;
        *(v9 + 64) = 0;
        *(v9 + 48) = 0;
        *(v9 + 48) = *__p;
        *(v9 + 64) = v22;
        __p[0] = 0;
        __p[1] = 0;
        v22 = 0;
        v11 = v23;
        *(v9 + 88) = v24;
        *(v9 + 72) = v11;
        a3[1] = v9 + 96;
      }

      if (SHIBYTE(v19) < 0)
      {
        operator delete(v18);
      }

      v8 = (*a1 + 4);
      *a1 = v8;
      if (v8 == *a2)
      {
        break;
      }

      a4(&v17, v8 + *v8);
    }
  }

  return a3;
}

double sub_A013D8(uint64_t *a1, uint64_t a2)
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

  if (v5)
  {
    if (v5 <= 0x2AAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 32 * ((a1[1] - *a1) >> 5);
  *v6 = *a2;
  *(v6 + 8) = *(a2 + 8);
  *(v6 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v7 = *(a2 + 48);
  *(v6 + 32) = *(a2 + 32);
  *(v6 + 48) = v7;
  *(v6 + 64) = *(a2 + 64);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 48) = 0;
  v8 = *(a2 + 72);
  *(v6 + 88) = *(a2 + 88);
  *(v6 + 72) = v8;
  v9 = a1[1];
  v10 = 96 * v2 + *a1 - v9;
  sub_A01148(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = 96 * v2 + 96;
  *(a1 + 1) = v12;
  if (v11)
  {
    operator delete(v11);
    *&v12 = 96 * v2 + 96;
  }

  return *&v12;
}

void sub_A0153C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_A01090(va);
  _Unwind_Resume(a1);
}

uint64_t sub_A01550(uint64_t a1)
{
  if (*(a1 + 96) != 1)
  {
    return a1;
  }

  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(a1 + 56);
    v4 = *(a1 + 48);
    if (v3 != v2)
    {
      do
      {
        if (*(v3 - 1) < 0)
        {
          operator delete(*(v3 - 24));
        }

        v3 -= 32;
      }

      while (v3 != v2);
      v4 = *(a1 + 48);
    }

    *(a1 + 56) = v2;
    operator delete(v4);
  }

  if ((*(a1 + 31) & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(*(a1 + 8));
  return a1;
}

uint64_t sub_A015F4(void **a1, uint64_t a2)
{
  v2 = 0x34F72C234F72C235 * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x8D3DCB08D3DCB0)
  {
    sub_1794();
  }

  if (0x69EE58469EE5846ALL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x69EE58469EE5846ALL * ((a1[2] - *a1) >> 4);
  }

  if ((0x34F72C234F72C235 * ((a1[2] - *a1) >> 4)) >= 0x469EE58469EE58)
  {
    v5 = 0x8D3DCB08D3DCB0;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x8D3DCB08D3DCB0)
    {
      operator new();
    }

    sub_1808();
  }

  sub_974BCC(16 * ((a1[1] - *a1) >> 4), a2);
  v6 = 464 * v2;
  v7 = 464 * v2 + 464;
  v8 = *a1;
  v9 = a1[1];
  v10 = *a1 + v6 - v9;
  if (v9 != *a1)
  {
    v11 = 0;
    do
    {
      v12 = &v8[v11];
      sub_A017B4(v10 + v11, &v8[v11]);
      *(v13 + 432) = 0;
      *(v13 + 440) = 0;
      *(v13 + 448) = 0;
      *(v13 + 432) = *&v8[v11 + 432];
      *(v13 + 448) = *&v8[v11 + 448];
      *(v12 + 54) = 0;
      *(v12 + 55) = 0;
      *(v12 + 56) = 0;
      *(v13 + 456) = *&v8[v11 + 456];
      v11 += 464;
    }

    while (&v8[v11] != v9);
    do
    {
      sub_974D90(v8);
      v8 += 464;
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

void sub_A017A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_A01A04(va);
  _Unwind_Resume(a1);
}

__n128 sub_A017B4(uint64_t a1, uint64_t a2)
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
  v3 = *(a2 + 96);
  *(a1 + 88) = *(a2 + 88);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(a1 + 96) = v3;
  v4 = *(a2 + 104);
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 104) = v4;
  v5 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 112) = v5;
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  *(a2 + 112) = 0;
  v6 = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 136) = v6;
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
  v7 = *(a2 + 256);
  *(a1 + 248) = *(a2 + 248);
  *(a2 + 232) = 0;
  *(a2 + 240) = 0;
  *(a2 + 248) = 0;
  *(a2 + 256) = 0;
  *(a1 + 256) = v7;
  v8 = *(a2 + 264);
  *(a1 + 268) = *(a2 + 268);
  *(a1 + 264) = v8;
  v9 = *(a2 + 272);
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 272) = v9;
  *(a2 + 280) = 0;
  *(a2 + 288) = 0;
  *(a2 + 272) = 0;
  v10 = *(a2 + 296);
  *(a1 + 312) = *(a2 + 312);
  *(a1 + 296) = v10;
  *(a2 + 304) = 0;
  *(a2 + 312) = 0;
  *(a2 + 296) = 0;
  *(a1 + 320) = 0;
  *(a1 + 352) = -1;
  v11 = *(a2 + 352);
  if (v11 != -1)
  {
    v12 = a1;
    v15 = a1 + 320;
    (off_266F760[v11])(&v15, a2 + 320);
    a1 = v12;
    *(v12 + 352) = v11;
  }

  *(a1 + 360) = *(a2 + 360);
  v13 = *(a2 + 368);
  *(a1 + 384) = *(a2 + 384);
  *(a1 + 368) = v13;
  *(a2 + 376) = 0;
  *(a2 + 384) = 0;
  *(a2 + 368) = 0;
  *(a1 + 392) = *(a2 + 392);
  result = *(a2 + 400);
  *(a1 + 416) = *(a2 + 416);
  *(a1 + 400) = result;
  *(a2 + 408) = 0;
  *(a2 + 416) = 0;
  *(a2 + 400) = 0;
  *(a1 + 424) = *(a2 + 424);
  return result;
}

uint64_t sub_A01A04(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 464;
    sub_974D90(i - 464);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_A01A58(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 32) == *(a2 + 32))
  {
    if (*(a1 + 32))
    {
      if (a1 != a2)
      {
        v3 = a2;
        sub_A01B80(a1, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 4));
        a2 = v3;
      }

      *(a1 + 24) = a2[3];
    }
  }

  else if (*(a1 + 32))
  {
    v4 = *a1;
    if (*a1)
    {
      v5 = *(a1 + 8);
      v6 = *a1;
      if (v5 != v4)
      {
        do
        {
          if (*(v5 - 17) < 0)
          {
            operator delete(*(v5 - 5));
          }

          v5 -= 6;
        }

        while (v5 != v4);
        v6 = *a1;
      }

      *(a1 + 8) = v4;
      operator delete(v6);
    }

    *(a1 + 32) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    v7 = a2;
    sub_9FFCE0(a1, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 4));
    *(a1 + 24) = v7[3];
    *(a1 + 32) = 1;
  }
}

void sub_A01B80(void ***a1, void **a2, void **a3, unint64_t a4)
{
  v7 = a1[2];
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - *a1) >> 4) < a4)
  {
    if (v8)
    {
      v9 = a4;
      v10 = a1[1];
      v11 = *a1;
      if (v10 != v8)
      {
        do
        {
          if (*(v10 - 17) < 0)
          {
            operator delete(*(v10 - 40));
          }

          v10 -= 48;
        }

        while (v10 != v8);
        v11 = *a1;
      }

      a1[1] = v8;
      operator delete(v11);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      a4 = v9;
    }

    if (a4 <= 0x555555555555555)
    {
      v33 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 4);
      v34 = 2 * v33;
      if (2 * v33 <= a4)
      {
        v34 = a4;
      }

      if (v33 >= 0x2AAAAAAAAAAAAAALL)
      {
        v35 = 0x555555555555555;
      }

      else
      {
        v35 = v34;
      }

      if (v35 <= 0x555555555555555)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v12 = a1[1];
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - v8) >> 4) >= a4)
  {
    if (a2 != a3)
    {
      v24 = 0;
      do
      {
        v27 = &v8[v24];
        v28 = &a2[v24];
        v29 = &a2[v24 + 1];
        LODWORD(v8[v24]) = a2[v24];
        v30 = &v8[v24 + 1];
        if (v8 != a2)
        {
          v31 = *(v28 + 31);
          if (*(v27 + 31) < 0)
          {
            if (v31 >= 0)
            {
              v25 = &a2[v24 + 1];
            }

            else
            {
              v25 = *v29;
            }

            if (v31 >= 0)
            {
              v26 = *(v28 + 31);
            }

            else
            {
              v26 = a2[v24 + 2];
            }

            sub_13B38(v30, v25, v26);
          }

          else if ((*(v28 + 31) & 0x80) != 0)
          {
            sub_13A68(v30, *v29, a2[v24 + 2]);
          }

          else
          {
            v32 = *v29;
            v8[v24 + 3] = a2[v24 + 3];
            *v30 = v32;
          }
        }

        *(v27 + 8) = *(v28 + 8);
        *(v27 + 10) = *(v28 + 10);
        v24 += 6;
      }

      while (v28 + 6 != a3);
      v12 = a1[1];
      v8 = (v8 + v24 * 8);
    }

    while (v12 != v8)
    {
      if (*(v12 - 17) < 0)
      {
        operator delete(*(v12 - 40));
      }

      v12 -= 48;
    }

    a1[1] = v8;
  }

  else
  {
    v13 = (a2 + v12 - v8);
    v14 = v12 - v8;
    if (v12 != v8)
    {
      v15 = 0;
      do
      {
        v18 = &v8[v15];
        v19 = &a2[v15];
        v20 = &a2[v15 + 1];
        LODWORD(v8[v15]) = a2[v15];
        v21 = &v8[v15 + 1];
        if (v8 != a2)
        {
          v22 = *(v19 + 31);
          if (*(v18 + 31) < 0)
          {
            if (v22 >= 0)
            {
              v16 = &a2[v15 + 1];
            }

            else
            {
              v16 = *v20;
            }

            if (v22 >= 0)
            {
              v17 = *(v19 + 31);
            }

            else
            {
              v17 = a2[v15 + 2];
            }

            sub_13B38(v21, v16, v17);
          }

          else if ((*(v19 + 31) & 0x80) != 0)
          {
            sub_13A68(v21, *v20, a2[v15 + 2]);
          }

          else
          {
            v23 = *v20;
            v8[v15 + 3] = a2[v15 + 3];
            *v21 = v23;
          }
        }

        *(v18 + 8) = *(v19 + 8);
        *(v18 + 10) = *(v19 + 10);
        v15 += 6;
      }

      while (v19 + 6 != v13);
      v12 = a1[1];
    }

    v42 = v12;
    v36 = v12;
    if (v13 != a3)
    {
      v37 = a2 + v14 + 8;
      v36 = v12;
      do
      {
        v40 = v37 - 8;
        *v36 = *(v37 - 2);
        v41 = (v36 + 8);
        if (v37[23] < 0)
        {
          sub_325C(v41, *v37, *(v37 + 1));
          v39 = v42;
        }

        else
        {
          v38 = *v37;
          *(v36 + 24) = *(v37 + 2);
          *v41 = v38;
          v39 = v36;
        }

        *(v36 + 32) = *(v37 + 6);
        *(v36 + 40) = *(v37 + 8);
        v36 = v39 + 48;
        v42 = v39 + 48;
        v37 += 48;
      }

      while (v40 + 48 != a3);
    }

    a1[1] = v36;
  }
}

void sub_A01FA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_974398(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_A01FC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_974398(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

uint64_t *sub_A01FD8(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_942D1C(v2);
    operator delete();
  }

  return a1;
}

uint64_t *sub_A0202C(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_A0A66C(v2);
    operator delete();
  }

  return a1;
}

void sub_A02080(uint64_t *a1, unint64_t a2)
{
  if (0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3) < a2)
  {
    if (a2 < 0x492492492492493)
    {
      operator new();
    }

    sub_1794();
  }
}

uint64_t sub_A02200(__int128 **a1, uint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3) + 1;
  if (v2 > 0x492492492492492)
  {
    sub_1794();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v2)
  {
    v2 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
  {
    v5 = 0x492492492492492;
  }

  else
  {
    v5 = v2;
  }

  if (v5)
  {
    if (v5 <= 0x492492492492492)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 8 * ((a1[1] - *a1) >> 3);
  v16 = v6;
  v17 = v6;
  if (*(a2 + 23) < 0)
  {
    sub_325C(v6, *a2, *(a2 + 8));
  }

  else
  {
    *v6 = *a2;
    *(v6 + 16) = *(a2 + 16);
  }

  *(v6 + 24) = *(a2 + 24);
  if (*(a2 + 55) < 0)
  {
    sub_325C((v6 + 32), *(a2 + 32), *(a2 + 40));
  }

  else
  {
    *(v6 + 32) = *(a2 + 32);
    *(v6 + 48) = *(a2 + 48);
  }

  v7 = v6 + 56;
  v8 = *a1;
  v9 = a1[1];
  v10 = *a1 + v16 - v9;
  if (v9 != *a1)
  {
    v11 = *a1;
    v12 = *a1 + v16 - v9;
    do
    {
      v13 = *v11;
      *(v12 + 16) = *(v11 + 2);
      *v12 = v13;
      *(v11 + 1) = 0;
      *(v11 + 2) = 0;
      *v11 = 0;
      *(v12 + 24) = *(v11 + 24);
      v14 = v11[2];
      *(v12 + 48) = *(v11 + 6);
      *(v12 + 32) = v14;
      *(v11 + 5) = 0;
      *(v11 + 6) = 0;
      *(v11 + 4) = 0;
      v11 = (v11 + 56);
      v12 += 56;
    }

    while (v11 != v9);
    while (1)
    {
      if (*(v8 + 55) < 0)
      {
        operator delete(*(v8 + 4));
        if (*(v8 + 23) < 0)
        {
LABEL_25:
          operator delete(*v8);
        }
      }

      else if (*(v8 + 23) < 0)
      {
        goto LABEL_25;
      }

      v8 = (v8 + 56);
      if (v8 == v9)
      {
        v8 = *a1;
        break;
      }
    }
  }

  *a1 = v10;
  a1[1] = v7;
  a1[2] = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return v17 + 56;
}

void sub_A02420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (*(v3 + 23) < 0)
  {
    operator delete(*v3);
    sub_A02458(va);
    _Unwind_Resume(a1);
  }

  sub_A02458(va);
  _Unwind_Resume(a1);
}

uint64_t sub_A02458(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 56;
    if (*(i - 1) < 0)
    {
      operator delete(*(i - 24));
      if ((*(i - 33) & 0x80000000) == 0)
      {
        continue;
      }
    }

    else if ((*(i - 33) & 0x80000000) == 0)
    {
      continue;
    }

    operator delete(*(i - 56));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t **sub_A024DC(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  v7 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v8 = v7;
  }

  v9 = sub_AAD8(v27, a2, v8);
  v10 = v9;
  v11 = a1[1];
  if (!*&v11)
  {
    goto LABEL_43;
  }

  v12 = vcnt_s8(v11);
  v12.i16[0] = vaddlv_u8(v12);
  if (v12.u32[0] > 1uLL)
  {
    v13 = v9;
    if (v9 >= *&v11)
    {
      v13 = v9 % *&v11;
    }
  }

  else
  {
    v13 = (*&v11 - 1) & v9;
  }

  v14 = *(*a1 + 8 * v13);
  if (!v14 || (v15 = *v14) == 0)
  {
LABEL_43:
    sub_A028C0();
  }

  v16 = *(v5 + 23);
  if (v16 >= 0)
  {
    v17 = *(v5 + 23);
  }

  else
  {
    v17 = v5[1];
  }

  if (v16 < 0)
  {
    v5 = *v5;
  }

  if (v12.u32[0] < 2uLL)
  {
    while (1)
    {
      v18 = v15[1];
      if (v18 == v10)
      {
        v19 = *(v15 + 39);
        v20 = v19;
        if (v19 < 0)
        {
          v19 = v15[3];
        }

        if (v19 == v17)
        {
          v21 = v20 >= 0 ? (v15 + 2) : v15[2];
          if (!memcmp(v21, v5, v17))
          {
            return v15;
          }
        }
      }

      else if ((v18 & (*&v11 - 1)) != v13)
      {
        goto LABEL_43;
      }

      v15 = *v15;
      if (!v15)
      {
        goto LABEL_43;
      }
    }
  }

  while (1)
  {
    v22 = v15[1];
    if (v22 == v10)
    {
      break;
    }

    if (v22 >= *&v11)
    {
      v22 %= *&v11;
    }

    if (v22 != v13)
    {
      goto LABEL_43;
    }

LABEL_31:
    v15 = *v15;
    if (!v15)
    {
      goto LABEL_43;
    }
  }

  v23 = *(v15 + 39);
  v24 = v23;
  if (v23 < 0)
  {
    v23 = v15[3];
  }

  if (v23 != v17)
  {
    goto LABEL_31;
  }

  v25 = v24 >= 0 ? (v15 + 2) : v15[2];
  if (memcmp(v25, v5, v17))
  {
    goto LABEL_31;
  }

  return v15;
}

void sub_A028A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_A029C8(va);
  _Unwind_Resume(a1);
}

void sub_A02990(_Unwind_Exception *a1)
{
  if (*(v2 + 39) < 0)
  {
    operator delete(*(v2 + 16));
    sub_A029C8(v1);
    _Unwind_Resume(a1);
  }

  sub_A029C8(v1);
  _Unwind_Resume(a1);
}

uint64_t *sub_A029C8(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      if (*(v2 + 71) < 0)
      {
        operator delete(*(v2 + 48));
        if ((*(v2 + 39) & 0x80000000) == 0)
        {
          goto LABEL_5;
        }
      }

      else if ((*(v2 + 39) & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      operator delete(*(v2 + 16));
    }

LABEL_5:
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_A02A38(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v4 = a4;
  v10 = a4;
  if (a2 != a3)
  {
    v7 = a2;
    do
    {
      if (*(v7 + 39) < 0)
      {
        sub_325C(v4, v7[2], v7[3]);
      }

      else
      {
        v9 = *(v7 + 1);
        *(v4 + 16) = v7[4];
        *v4 = v9;
      }

      *(v4 + 24) = *(v7 + 40);
      if (*(v7 + 71) < 0)
      {
        sub_325C((v4 + 32), v7[6], v7[7]);
      }

      else
      {
        v8 = *(v7 + 3);
        *(v4 + 48) = v7[8];
        *(v4 + 32) = v8;
      }

      *(v4 + 56) = *(v7 + 9);
      v7 = *v7;
      v4 = v10 + 72;
      v10 += 72;
    }

    while (v7 != a3);
  }

  return v4;
}

void sub_A02B24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(v9 + 23) < 0)
  {
    operator delete(*v9);
  }

  sub_A02B48(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_A02B48(uint64_t a1)
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
        if (*(v4 - 17) < 0)
        {
          operator delete(*(v4 - 5));
          v7 = v4 - 9;
          if (*(v4 - 49) < 0)
          {
LABEL_9:
            operator delete(*v7);
          }
        }

        else
        {
          v7 = v4 - 9;
          if (*(v4 - 49) < 0)
          {
            goto LABEL_9;
          }
        }

        v4 = v7;
      }

      while (v7 != v5);
    }
  }

  return a1;
}

void ****sub_A02BD4(void ****a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 == v3)
      {
LABEL_12:
        v2[1] = v3;
        operator delete(v5);
        return a1;
      }

      while (1)
      {
        if (*(v4 - 17) < 0)
        {
          operator delete(*(v4 - 5));
          v6 = v4 - 9;
          if (*(v4 - 49) < 0)
          {
LABEL_10:
            operator delete(*v6);
          }
        }

        else
        {
          v6 = v4 - 9;
          if (*(v4 - 49) < 0)
          {
            goto LABEL_10;
          }
        }

        v4 = v6;
        if (v6 == v3)
        {
          v5 = **a1;
          goto LABEL_12;
        }
      }
    }
  }

  return a1;
}

void sub_A02C84(unint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = 0x8E38E38E38E38E39;
LABEL_2:
  v9 = (a2 - 9);
  v10 = result;
LABEL_3:
  v11 = 1 - a4;
  while (1)
  {
    result = v10;
    v12 = v11;
    v13 = a2 - v10;
    v14 = (v13 >> 3) * v8;
    if (v14 > 2)
    {
      break;
    }

    if (v14 < 2)
    {
      return;
    }

    if (v14 == 2)
    {
      v28 = *(a2 - 4);
      v29 = *(result + 56);
      v30 = v28 == v29;
      v31 = v28 > v29;
      if (v30)
      {
        v31 = *(a2 - 1) < *(result + 64);
      }

      if (v31)
      {
        v32 = result;
        v33 = v9;
        goto LABEL_38;
      }

      return;
    }

LABEL_11:
    if (v13 <= 1727)
    {
      if (a5)
      {

        sub_A03478(result, a2);
      }

      else
      {

        sub_A036CC(result, a2);
      }

      return;
    }

    if (v11 == 1)
    {
      if (result != a2)
      {
        v43 = (v14 - 2) >> 1;
        v44 = v43 + 1;
        v45 = (result + 72 * v43);
        do
        {
          sub_A04404(result, a3, (v13 >> 3) * v8, v45);
          v45 -= 9;
          --v44;
        }

        while (v44);
        v46 = (v13 >> 3) * v8;
        do
        {
          sub_A046E4(result, a2, a3, v46);
          a2 -= 9;
        }

        while (v46-- > 2);
      }

      return;
    }

    v15 = v14 >> 1;
    v16 = (result + 72 * (v14 >> 1));
    if (v13 < 0x2401)
    {
      sub_A03174(v16, result, v9);
      if (a5)
      {
        goto LABEL_20;
      }
    }

    else
    {
      sub_A03174(result, v16, v9);
      v17 = v9;
      v18 = v8;
      v19 = 72 * v15;
      v20 = 72 * v15 + result - 72;
      sub_A03174(result + 72, v20, (a2 - 18));
      sub_A03174(result + 144, result + 72 + v19, (a2 - 27));
      v21 = result + 72 + v19;
      v8 = v18;
      v9 = v17;
      sub_A03174(v20, v16, v21);
      sub_A04280(result, v16);
      if (a5)
      {
        goto LABEL_20;
      }
    }

    v22 = *(result - 16);
    v23 = *(result + 56);
    v30 = v22 == v23;
    v24 = v22 > v23;
    if (v30)
    {
      v24 = *(result - 8) < *(result + 64);
    }

    if (!v24)
    {
      v10 = sub_A038FC(result, a2);
      goto LABEL_25;
    }

LABEL_20:
    v25 = sub_A03BB8(result, a2);
    if ((v26 & 1) == 0)
    {
      goto LABEL_23;
    }

    v27 = sub_A03E74(result, v25);
    v10 = (v25 + 9);
    if (sub_A03E74((v25 + 9), a2))
    {
      a4 = -v12;
      a2 = v25;
      if (v27)
      {
        return;
      }

      goto LABEL_2;
    }

    v11 = v12 + 1;
    if (!v27)
    {
LABEL_23:
      sub_A02C84(result, v25, a3, -v12, a5 & 1);
      v10 = (v25 + 9);
LABEL_25:
      a5 = 0;
      a4 = -v12;
      goto LABEL_3;
    }
  }

  if (v14 == 3)
  {

    sub_A03174(result, result + 72, v9);
    return;
  }

  if (v14 != 4)
  {
    if (v14 == 5)
    {

      sub_A03288(result, result + 72, result + 144, result + 216, v9);
      return;
    }

    goto LABEL_11;
  }

  sub_A03174(result, result + 72, result + 144);
  v34 = *(a2 - 4);
  v35 = *(result + 200);
  v30 = v34 == v35;
  v36 = v34 > v35;
  if (v30)
  {
    v36 = *(a2 - 1) < *(result + 208);
  }

  if (v36)
  {
    sub_A04280((result + 144), v9);
    v37 = *(result + 200);
    v38 = *(result + 128);
    v30 = v37 == v38;
    v39 = v37 > v38;
    if (v30)
    {
      v39 = *(result + 208) < *(result + 136);
    }

    if (v39)
    {
      sub_A04280((result + 72), (result + 144));
      v40 = *(result + 128);
      v41 = *(result + 56);
      v30 = v40 == v41;
      v42 = v40 > v41;
      if (v30)
      {
        v42 = *(result + 136) < *(result + 64);
      }

      if (v42)
      {
        v33 = (result + 72);
        v32 = result;
LABEL_38:

        sub_A04280(v32, v33);
      }
    }
  }
}

uint64_t sub_A03174(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 56);
  v5 = *(a1 + 56);
  v6 = *(a2 + 64);
  v7 = v4 == v5;
  v8 = v4 > v5;
  if (v7)
  {
    v8 = v6 < *(a1 + 64);
  }

  v9 = *(a3 + 56);
  v10 = *(a3 + 64) < v6;
  v7 = v9 == v4;
  v11 = v9 > v4;
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
      sub_A04280(a1, a2);
      v18 = *(a3 + 56);
      v19 = *(a2 + 56);
      v7 = v18 == v19;
      v20 = v18 > v19;
      if (v7)
      {
        v20 = *(a3 + 64) < *(a2 + 64);
      }

      if (!v20)
      {
        return 1;
      }

      v12 = a3;
      a1 = a2;
    }

LABEL_17:
    sub_A04280(a1, v12);
    return 1;
  }

  if (v11)
  {
    v13 = a1;
    sub_A04280(a2, a3);
    v14 = *(a2 + 56);
    v15 = *(v13 + 56);
    v7 = v14 == v15;
    v16 = v14 > v15;
    if (v7)
    {
      v16 = *(a2 + 64) < *(v13 + 64);
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

void sub_A03288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_A03174(a1, a2, a3);
  v10 = *(a4 + 56);
  v11 = *(a3 + 56);
  v12 = v10 == v11;
  v13 = v10 > v11;
  if (v12)
  {
    v13 = *(a4 + 64) < *(a3 + 64);
  }

  if (v13)
  {
    sub_A04280(a3, a4);
    v14 = *(a3 + 56);
    v15 = *(a2 + 56);
    v12 = v14 == v15;
    v16 = v14 > v15;
    if (v12)
    {
      v16 = *(a3 + 64) < *(a2 + 64);
    }

    if (v16)
    {
      sub_A04280(a2, a3);
      v17 = *(a2 + 56);
      v18 = *(a1 + 56);
      v12 = v17 == v18;
      v19 = v17 > v18;
      if (v12)
      {
        v19 = *(a2 + 64) < *(a1 + 64);
      }

      if (v19)
      {
        sub_A04280(a1, a2);
      }
    }
  }

  v20 = *(a5 + 56);
  v21 = *(a4 + 56);
  v12 = v20 == v21;
  v22 = v20 > v21;
  if (v12)
  {
    v22 = *(a5 + 64) < *(a4 + 64);
  }

  if (v22)
  {
    sub_A04280(a4, a5);
    v23 = *(a4 + 56);
    v24 = *(a3 + 56);
    v12 = v23 == v24;
    v25 = v23 > v24;
    if (v12)
    {
      v25 = *(a4 + 64) < *(a3 + 64);
    }

    if (v25)
    {
      sub_A04280(a3, a4);
      v26 = *(a3 + 56);
      v27 = *(a2 + 56);
      v12 = v26 == v27;
      v28 = v26 > v27;
      if (v12)
      {
        v28 = *(a3 + 64) < *(a2 + 64);
      }

      if (v28)
      {
        sub_A04280(a2, a3);
        v29 = *(a2 + 56);
        v30 = *(a1 + 56);
        v12 = v29 == v30;
        v31 = v29 > v30;
        if (v12)
        {
          v31 = *(a2 + 64) < *(a1 + 64);
        }

        if (v31)
        {

          sub_A04280(a1, a2);
        }
      }
    }
  }
}

void sub_A03478(uint64_t *a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v3 = a1 + 9;
    if (a1 + 9 != a2)
    {
      v4 = 0;
      v5 = a1;
      v23 = a2;
      do
      {
        v7 = v3;
        v8 = *(v5 + 32);
        v9 = *(v5 + 14);
        v10 = v8 == v9;
        v11 = v8 > v9;
        if (v10)
        {
          v11 = v5[17] < v5[8];
        }

        if (v11)
        {
          v24 = *v7;
          *v28 = v7[1];
          *&v28[7] = *(v7 + 15);
          v12 = *(v7 + 23);
          v7[1] = 0;
          v7[2] = 0;
          *v7 = 0;
          v13 = *(v5 + 96);
          *v27 = *(v5 + 105);
          *&v27[14] = *(v5 + 119);
          v25 = *(v5 + 127);
          v26 = *(v5 + 104);
          v5[13] = 0;
          v5[14] = 0;
          v5[15] = 0;
          v14 = *(v5 + 32);
          v15 = v4;
          v16 = v5[17];
          while (1)
          {
            v17 = v15;
            v18 = (a1 + v15);
            if (*(a1 + v15 + 95) < 0)
            {
              operator delete(v18[9]);
            }

            *(v18 + 9) = *v18;
            v18[11] = v18[2];
            *(v18 + 23) = 0;
            *v18 = 0;
            *(v18 + 96) = *(v18 + 24);
            if (*(v18 + 127) < 0)
            {
              operator delete(v18[13]);
            }

            v19 = a1 + v17;
            *(v18 + 13) = *(a1 + v17 + 32);
            v18[15] = *(a1 + v17 + 48);
            v19[55] = 0;
            v19[32] = 0;
            *(v19 + 32) = *(a1 + v17 + 56);
            *(v19 + 17) = *(a1 + v17 + 64);
            if (!v17)
            {
              break;
            }

            v20 = *(v19 - 4);
            v10 = v14 == v20;
            v21 = v14 > v20;
            if (v10)
            {
              v21 = v16 < *(v19 - 1);
            }

            v15 = v17 - 72;
            if (!v21)
            {
              v22 = (a1 + v17);
              if ((*(a1 + v15 + 95) & 0x80000000) == 0)
              {
                goto LABEL_22;
              }

              goto LABEL_21;
            }
          }

          v22 = a1;
          if ((*(a1 + 23) & 0x80000000) == 0)
          {
            goto LABEL_22;
          }

LABEL_21:
          operator delete(*v22);
LABEL_22:
          *v22 = v24;
          v22[1] = *v28;
          *(v22 + 15) = *&v28[7];
          *(v22 + 23) = v12;
          *(v22 + 24) = v13;
          if (*(v22 + 55) < 0)
          {
            operator delete(*(v19 + 4));
          }

          v19[32] = v26;
          v6 = a1 + v17;
          *(v6 + 33) = *v27;
          *(v6 + 47) = *&v27[14];
          v19[55] = v25;
          *(v22 + 14) = v14;
          v22[8] = v16;
          a2 = v23;
        }

        v3 = v7 + 9;
        v4 += 72;
        v5 = v7;
      }

      while (v7 + 9 != a2);
    }
  }
}

uint64_t *sub_A036CC(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = a2;
    v3 = result + 9;
    if (result + 9 != a2)
    {
      v4 = result + 17;
      do
      {
        v5 = v3;
        v6 = *(result + 32);
        v7 = *(result + 14);
        v8 = v6 == v7;
        v9 = v6 > v7;
        if (v8)
        {
          v9 = result[17] < result[8];
        }

        if (v9)
        {
          v10 = *v5;
          *v25 = v5[1];
          *&v25[7] = *(v5 + 15);
          v11 = *(v5 + 23);
          v5[1] = 0;
          v5[2] = 0;
          *v5 = 0;
          v12 = *(result + 96);
          v23 = *(result + 104);
          *v24 = *(result + 105);
          *&v24[14] = *(result + 119);
          v13 = *(result + 127);
          result[13] = 0;
          result[14] = 0;
          result[15] = 0;
          v14 = *(result + 32);
          v15 = v4;
          v16 = result[17];
          do
          {
            v20 = (v15 - 8);
            if (*(v15 - 41) < 0)
            {
              operator delete(*v20);
            }

            *v20 = *(v15 - 17);
            *(v15 - 6) = *(v15 - 15);
            *(v15 - 113) = 0;
            *(v15 - 136) = 0;
            *(v15 - 40) = *(v15 - 112);
            v21 = (v15 - 4);
            if (*(v15 - 9) < 0)
            {
              operator delete(*v21);
            }

            *v21 = *(v15 - 13);
            *(v15 - 2) = *(v15 - 11);
            *(v15 - 81) = 0;
            *(v15 - 104) = 0;
            *(v15 - 2) = *(v15 - 20);
            v17 = (v15 - 9);
            *v15 = *(v15 - 9);
            v18 = *(v15 - 38);
            v8 = v14 == v18;
            v19 = v14 > v18;
            if (v8)
            {
              v19 = v16 < *(v15 - 18);
            }

            v15 -= 9;
          }

          while (v19);
          if (*(v17 - 41) < 0)
          {
            operator delete(*(v17 - 8));
          }

          *(v17 - 8) = v10;
          *(v17 - 7) = *v25;
          *(v17 - 49) = *&v25[7];
          *(v17 - 41) = v11;
          *(v17 - 40) = v12;
          v2 = a2;
          if (*(v17 - 9) < 0)
          {
            operator delete(*(v17 - 4));
          }

          *(v17 - 32) = v23;
          *(v17 - 31) = *v24;
          *(v17 - 17) = *&v24[14];
          *(v17 - 9) = v13;
          *(v17 - 2) = v14;
          *v17 = v16;
        }

        v3 = v5 + 9;
        v4 += 9;
        result = v5;
      }

      while (v5 + 9 != v2);
    }
  }

  return result;
}

unint64_t sub_A038FC(unint64_t a1, __int128 *a2)
{
  v3 = *a1;
  *v39 = *(a1 + 8);
  *&v39[7] = *(a1 + 15);
  v4 = *(a1 + 23);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  v5 = a1 + 32;
  v6 = *(a1 + 24);
  v37 = *(a1 + 32);
  *v38 = *(a1 + 40);
  *&v38[7] = *(a1 + 47);
  v7 = *(a1 + 55);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  v10 = *(a2 - 4);
  v11 = v8 == v10;
  v12 = v8 > v10;
  if (v11)
  {
    v12 = v9 < *(a2 - 1);
  }

  if (v12)
  {
    v13 = a1;
    do
    {
      v14 = v13 + 72;
      v15 = *(v13 + 128);
      v16 = v9 < *(v13 + 136);
      v11 = v8 == v15;
      v17 = v8 > v15;
      if (v11)
      {
        v17 = v16;
      }

      v13 = v14;
    }

    while (!v17);
  }

  else
  {
    v18 = a1 + 72;
    do
    {
      v14 = v18;
      if (v18 >= a2)
      {
        break;
      }

      v19 = *(v18 + 56);
      v20 = v9 < *(v14 + 64);
      v11 = v8 == v19;
      v21 = v8 > v19;
      if (!v11)
      {
        v20 = v21;
      }

      v18 = v14 + 72;
    }

    while (!v20);
  }

  if (v14 >= a2)
  {
    v22 = a2;
  }

  else
  {
    do
    {
      v22 = (a2 - 72);
      v23 = *(a2 - 4);
      v11 = v8 == v23;
      v24 = v8 > v23;
      if (v11)
      {
        v24 = v9 < *(a2 - 1);
      }

      a2 = (a2 - 72);
    }

    while (v24);
  }

  while (v14 < v22)
  {
    sub_A04280(v14, v22);
    do
    {
      v25 = *(v14 + 128);
      v26 = *(v14 + 136);
      v14 += 72;
      v27 = v9 < v26;
      v11 = v8 == v25;
      v28 = v8 > v25;
      if (v11)
      {
        v28 = v27;
      }
    }

    while (!v28);
    do
    {
      v29 = *(v22 - 4);
      v30 = *(v22 - 1);
      v22 = (v22 - 72);
      v31 = v9 < v30;
      v11 = v8 == v29;
      v32 = v8 > v29;
      if (v11)
      {
        v32 = v31;
      }
    }

    while (v32);
  }

  v33 = (v14 - 72);
  if (v14 - 72 != a1)
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v34 = *v33;
    *(a1 + 16) = *(v14 - 56);
    *a1 = v34;
    *(v14 - 49) = 0;
    *(v14 - 72) = 0;
    *(a1 + 24) = *(v14 - 48);
    if (*(a1 + 55) < 0)
    {
      operator delete(*v5);
    }

    v35 = *(v14 - 40);
    *(v5 + 16) = *(v14 - 24);
    *v5 = v35;
    *(v14 - 17) = 0;
    *(v14 - 40) = 0;
    *(a1 + 56) = *(v14 - 16);
    *(a1 + 64) = *(v14 - 8);
  }

  if (*(v14 - 49) < 0)
  {
    operator delete(*v33);
  }

  *(v14 - 72) = v3;
  *(v14 - 57) = *&v39[7];
  *(v14 - 64) = *v39;
  *(v14 - 49) = v4;
  *(v14 - 48) = v6;
  if (*(v14 - 17) < 0)
  {
    operator delete(*(v14 - 40));
  }

  *(v14 - 40) = v37;
  *(v14 - 25) = *&v38[7];
  *(v14 - 32) = *v38;
  *(v14 - 17) = v7;
  *(v14 - 16) = v8;
  *(v14 - 8) = v9;
  return v14;
}

unint64_t sub_A03BB8(uint64_t a1, unint64_t a2)
{
  v3 = 0;
  v4 = *a1;
  *v38 = *(a1 + 8);
  *&v38[7] = *(a1 + 15);
  v5 = *(a1 + 23);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  v6 = *(a1 + 24);
  v7 = a1 + 32;
  v35 = v4;
  v36 = *(a1 + 32);
  *v37 = *(a1 + 40);
  *&v37[7] = *(a1 + 47);
  v34 = *(a1 + 55);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  do
  {
    v10 = *(a1 + v3 + 128);
    v11 = *(a1 + v3 + 136) < v9;
    v12 = v10 == v8;
    v13 = v10 > v8;
    if (!v12)
    {
      v11 = v13;
    }

    v3 += 72;
  }

  while (v11);
  v14 = a1 + v3;
  if (v3 == 72)
  {
    while (v14 < a2)
    {
      v15 = a2 - 72;
      v18 = *(a2 - 16);
      v12 = v18 == v8;
      v19 = v18 > v8;
      if (v12)
      {
        v19 = *(a2 - 8) < v9;
      }

      a2 -= 72;
      if (v19)
      {
        goto LABEL_15;
      }
    }

    v15 = a2;
  }

  else
  {
    do
    {
      v15 = a2 - 72;
      v16 = *(a2 - 16);
      v12 = v16 == v8;
      v17 = v16 > v8;
      if (v12)
      {
        v17 = *(a2 - 8) < v9;
      }

      a2 -= 72;
    }

    while (!v17);
  }

LABEL_15:
  v20 = v14;
  if (v14 < v15)
  {
    v21 = v15;
    do
    {
      sub_A04280(v20, v21);
      do
      {
        v22 = *(v20 + 128);
        v23 = *(v20 + 136);
        v20 += 72;
        v24 = v23 < v9;
        v12 = v22 == v8;
        v25 = v22 > v8;
        if (v12)
        {
          v25 = v24;
        }
      }

      while (v25);
      do
      {
        v26 = *(v21 - 4);
        v27 = *(v21 - 1);
        v21 = (v21 - 72);
        v28 = v27 < v9;
        v12 = v26 == v8;
        v29 = v26 > v8;
        if (v12)
        {
          v29 = v28;
        }
      }

      while (!v29);
    }

    while (v20 < v21);
  }

  v30 = (v20 - 72);
  if (v20 - 72 != a1)
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v31 = *v30;
    *(a1 + 16) = *(v20 - 56);
    *a1 = v31;
    *(v20 - 49) = 0;
    *(v20 - 72) = 0;
    *(a1 + 24) = *(v20 - 48);
    if (*(a1 + 55) < 0)
    {
      operator delete(*v7);
    }

    v32 = *(v20 - 40);
    *(v7 + 16) = *(v20 - 24);
    *v7 = v32;
    *(v20 - 17) = 0;
    *(v20 - 40) = 0;
    *(a1 + 56) = *(v20 - 16);
    *(a1 + 64) = *(v20 - 8);
  }

  if (*(v20 - 49) < 0)
  {
    operator delete(*v30);
  }

  *(v20 - 72) = v35;
  *(v20 - 57) = *&v38[7];
  *(v20 - 64) = *v38;
  *(v20 - 49) = v5;
  *(v20 - 48) = v6;
  if (*(v20 - 17) < 0)
  {
    operator delete(*(v20 - 40));
  }

  *(v20 - 40) = v36;
  *(v20 - 25) = *&v37[7];
  *(v20 - 32) = *v37;
  *(v20 - 17) = v34;
  *(v20 - 16) = v8;
  *(v20 - 8) = v9;
  return v20 - 72;
}

BOOL sub_A03E74(uint64_t a1, uint64_t *a2)
{
  v4 = 0x8E38E38E38E38E39 * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        sub_A03174(a1, a1 + 72, (a2 - 9));
        return 1;
      case 4:
        sub_A03174(a1, a1 + 72, a1 + 144);
        v28 = *(a2 - 4);
        v29 = *(a1 + 200);
        v7 = v28 == v29;
        v30 = v28 > v29;
        if (v7)
        {
          v30 = *(a2 - 1) < *(a1 + 208);
        }

        if (!v30)
        {
          return 1;
        }

        sub_A04280((a1 + 144), (a2 - 9));
        v31 = *(a1 + 200);
        v32 = *(a1 + 128);
        v7 = v31 == v32;
        v33 = v31 > v32;
        if (v7)
        {
          v33 = *(a1 + 208) < *(a1 + 136);
        }

        if (!v33)
        {
          return 1;
        }

        sub_A04280((a1 + 72), (a1 + 144));
        v34 = *(a1 + 128);
        v35 = *(a1 + 56);
        v7 = v34 == v35;
        v36 = v34 > v35;
        if (v7)
        {
          v36 = *(a1 + 136) < *(a1 + 64);
        }

        if (!v36)
        {
          return 1;
        }

        v9 = (a1 + 72);
LABEL_8:
        sub_A04280(a1, v9);
        return 1;
      case 5:
        sub_A03288(a1, a1 + 72, a1 + 144, a1 + 216, (a2 - 9));
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
      v5 = *(a2 - 4);
      v6 = *(a1 + 56);
      v7 = v5 == v6;
      v8 = v5 > v6;
      if (v7)
      {
        v8 = *(a2 - 1) < *(a1 + 64);
      }

      if (!v8)
      {
        return 1;
      }

      v9 = (a2 - 9);
      goto LABEL_8;
    }
  }

  v10 = (a1 + 144);
  sub_A03174(a1, a1 + 72, a1 + 144);
  v11 = (a1 + 216);
  if ((a1 + 216) == a2)
  {
    return 1;
  }

  v12 = 0;
  v13 = 0;
  while (1)
  {
    v15 = *(v11 + 14);
    v16 = *(v10 + 14);
    v17 = v11[8];
    v7 = v15 == v16;
    v18 = v15 > v16;
    if (v7)
    {
      v18 = v17 < v10[8];
    }

    if (v18)
    {
      v40 = *v11;
      *v44 = v11[1];
      *&v44[7] = *(v11 + 15);
      v19 = *(v11 + 23);
      v11[1] = 0;
      v11[2] = 0;
      *v11 = 0;
      v38 = *(v11 + 24);
      v39 = v19;
      *v43 = *(v11 + 33);
      *&v43[14] = *(v11 + 47);
      v41 = *(v11 + 55);
      v42 = *(v11 + 32);
      v11[5] = 0;
      v11[6] = 0;
      v20 = v12;
      v11[4] = 0;
      while (1)
      {
        v21 = v20;
        v22 = a1 + v20;
        if (*(a1 + v20 + 239) < 0)
        {
          operator delete(*(v22 + 216));
        }

        *(v22 + 216) = *(v22 + 144);
        *(v22 + 232) = *(v22 + 160);
        *(v22 + 167) = 0;
        *(v22 + 144) = 0;
        *(v22 + 240) = *(v22 + 168);
        if (*(v22 + 271) < 0)
        {
          operator delete(*(v22 + 248));
        }

        v23 = a1 + v21;
        *(v22 + 248) = *(a1 + v21 + 176);
        *(v22 + 264) = *(a1 + v21 + 192);
        *(v23 + 199) = 0;
        *(v23 + 176) = 0;
        *(v23 + 272) = *(a1 + v21 + 200);
        *(v23 + 280) = *(a1 + v21 + 208);
        if (v21 == -144)
        {
          break;
        }

        v24 = *(v23 + 128);
        v25 = v17 < *(v23 + 136);
        v7 = v15 == v24;
        v26 = v15 > v24;
        if (!v7)
        {
          v25 = v26;
        }

        v20 = v21 - 72;
        if (!v25)
        {
          v27 = a1 + v20 + 216;
          if ((*(a1 + v20 + 239) & 0x80000000) == 0)
          {
            goto LABEL_34;
          }

          goto LABEL_33;
        }
      }

      v27 = a1;
      if ((*(a1 + 23) & 0x80000000) == 0)
      {
        goto LABEL_34;
      }

LABEL_33:
      operator delete(*v27);
LABEL_34:
      *v27 = v40;
      *(v27 + 8) = *v44;
      *(v27 + 15) = *&v44[7];
      *(v27 + 23) = v39;
      *(v27 + 24) = v38;
      if (*(v27 + 55) < 0)
      {
        operator delete(*(v23 + 176));
      }

      *(v23 + 176) = v42;
      v14 = a1 + v21;
      *(v14 + 177) = *v43;
      *(v14 + 191) = *&v43[14];
      *(v23 + 199) = v41;
      *(v27 + 56) = v15;
      *(v27 + 64) = v17;
      if (++v13 == 8)
      {
        return v11 + 9 == a2;
      }
    }

    v10 = v11;
    v12 += 72;
    v11 += 9;
    if (v11 == a2)
    {
      return 1;
    }
  }
}

void sub_A04280(uint64_t *a1, __int128 *a2)
{
  v4 = *a1;
  *v16 = a1[1];
  *&v16[7] = *(a1 + 15);
  v5 = *(a1 + 23);
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  v7 = a1 + 4;
  v6 = a1[4];
  v8 = *(a1 + 24);
  *v15 = a1[5];
  *&v15[7] = *(a1 + 47);
  v9 = *(a1 + 55);
  a1[4] = 0;
  a1[5] = 0;
  a1[6] = 0;
  v10 = *a2;
  a1[2] = *(a2 + 2);
  *a1 = v10;
  *(a2 + 23) = 0;
  *a2 = 0;
  *(a1 + 24) = *(a2 + 24);
  if (*(a1 + 55) < 0)
  {
    operator delete(*v7);
  }

  v11 = a2[2];
  v7[2] = *(a2 + 6);
  *v7 = v11;
  *(a2 + 55) = 0;
  *(a2 + 32) = 0;
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
    v12 = *(a2 + 55);
    *a2 = v4;
    *(a2 + 1) = *v16;
    *(a2 + 15) = *&v16[7];
    *(a2 + 23) = v5;
    *(a2 + 24) = v8;
    if (v12 < 0)
    {
      operator delete(*(a2 + 4));
    }
  }

  else
  {
    *a2 = v4;
    *(a2 + 1) = *v16;
    *(a2 + 15) = *&v16[7];
    *(a2 + 23) = v5;
    *(a2 + 24) = v8;
  }

  *(a2 + 4) = v6;
  *(a2 + 5) = *v15;
  *(a2 + 47) = *&v15[7];
  *(a2 + 55) = v9;
  v13 = *(a1 + 14);
  *(a1 + 14) = *(a2 + 14);
  *(a2 + 14) = v13;
  v14 = a1[8];
  a1[8] = *(a2 + 8);
  *(a2 + 8) = v14;
}

void sub_A04404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= (0x8E38E38E38E38E39 * ((a4 - a1) >> 3)))
    {
      v9 = (0x1C71C71C71C71C72 * ((a4 - a1) >> 3)) | 1;
      v10 = (a1 + 72 * v9);
      if (0x1C71C71C71C71C72 * ((a4 - a1) >> 3) + 2 < a3)
      {
        v11 = *(v10 + 14);
        v12 = *(v10 + 32);
        v14 = v11 == v12;
        v13 = v11 > v12;
        if (v14)
        {
          v13 = *(v10 + 8) < *(v10 + 17);
        }

        v14 = !v13;
        v15 = 72;
        if (v14)
        {
          v15 = 0;
        }

        v10 = (v10 + v15);
        if (!v14)
        {
          v9 = 0x1C71C71C71C71C72 * ((a4 - a1) >> 3) + 2;
        }
      }

      v16 = *(v10 + 14);
      v17 = *(a4 + 14);
      v18 = a4[8];
      v14 = v16 == v17;
      v19 = v16 > v17;
      if (v14)
      {
        v19 = *(v10 + 8) < v18;
      }

      if (!v19)
      {
        v33 = *a4;
        *v37 = a4[1];
        *&v37[7] = *(a4 + 15);
        v32 = *(a4 + 23);
        a4[1] = 0;
        a4[2] = 0;
        *a4 = 0;
        v20 = *(a4 + 24);
        *v36 = *(a4 + 33);
        *&v36[14] = *(a4 + 47);
        v34 = *(a4 + 55);
        v35 = *(a4 + 32);
        a4[5] = 0;
        a4[6] = 0;
        a4[4] = 0;
        do
        {
          v23 = v10;
          if (*(v5 + 23) < 0)
          {
            operator delete(*v5);
          }

          v24 = *v23;
          v5[2] = *(v23 + 2);
          *v5 = v24;
          *(v23 + 23) = 0;
          *v23 = 0;
          *(v5 + 24) = *(v23 + 24);
          if (*(v5 + 55) < 0)
          {
            operator delete(v5[4]);
          }

          v25 = v23[2];
          v5[6] = *(v23 + 6);
          *(v5 + 2) = v25;
          *(v23 + 55) = 0;
          *(v23 + 32) = 0;
          *(v5 + 14) = *(v23 + 14);
          v5[8] = *(v23 + 8);
          if (v7 < v9)
          {
            break;
          }

          v26 = (2 * v9) | 1;
          v10 = (a1 + 72 * v26);
          if (2 * v9 + 2 < a3)
          {
            v27 = *(v10 + 14);
            v28 = *(v10 + 32);
            v14 = v27 == v28;
            v29 = v27 > v28;
            if (v14)
            {
              v29 = *(v10 + 8) < *(v10 + 17);
            }

            v30 = !v29;
            if (v29)
            {
              v31 = 72;
            }

            else
            {
              v31 = 0;
            }

            v10 = (v10 + v31);
            if (!v30)
            {
              v26 = 2 * v9 + 2;
            }
          }

          v21 = *(v10 + 14);
          v14 = v21 == v17;
          v22 = v21 > v17;
          if (v14)
          {
            v22 = *(v10 + 8) < v18;
          }

          v5 = v23;
          v9 = v26;
        }

        while (!v22);
        if (*(v23 + 23) < 0)
        {
          operator delete(*v23);
        }

        *v23 = v33;
        *(v23 + 1) = *v37;
        *(v23 + 15) = *&v37[7];
        *(v23 + 23) = v32;
        *(v23 + 24) = v20;
        if (*(v23 + 55) < 0)
        {
          operator delete(*(v23 + 4));
        }

        *(v23 + 32) = v35;
        *(v23 + 33) = *v36;
        *(v23 + 47) = *&v36[14];
        *(v23 + 55) = v34;
        *(v23 + 14) = v17;
        *(v23 + 8) = v18;
      }
    }
  }
}

void sub_A046E4(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 < 2)
  {
    return;
  }

  v8 = 0;
  *v25 = *a1;
  v26 = *(a1 + 2);
  *(a1 + 8) = 0uLL;
  *a1 = 0;
  v27 = *(a1 + 24);
  *__p = a1[2];
  v29 = *(a1 + 6);
  a1[2] = 0uLL;
  *(a1 + 6) = 0;
  v9 = (a4 - 2) >> 1;
  v10 = a1;
  v30 = *(a1 + 56);
  do
  {
    v12 = v10 + 72 * v8;
    v13 = v12 + 72;
    if (2 * v8 + 2 >= a4)
    {
      v8 = (2 * v8) | 1;
      if ((*(v10 + 23) & 0x80000000) == 0)
      {
        goto LABEL_14;
      }

LABEL_13:
      operator delete(*v10);
      goto LABEL_14;
    }

    v14 = *(v12 + 32);
    v15 = *(v12 + 50);
    v16 = v14 == v15;
    v17 = v14 > v15;
    if (v16)
    {
      v17 = *(v12 + 17) < *(v12 + 26);
    }

    v18 = v12 + 144;
    if (v17)
    {
      v13 = v18;
      v8 = 2 * v8 + 2;
    }

    else
    {
      v8 = (2 * v8) | 1;
    }

    if (*(v10 + 23) < 0)
    {
      goto LABEL_13;
    }

LABEL_14:
    v19 = *v13;
    *(v10 + 2) = *(v13 + 2);
    *v10 = v19;
    v13[23] = 0;
    *v13 = 0;
    *(v10 + 24) = v13[24];
    if (*(v10 + 55) < 0)
    {
      operator delete(*(v10 + 4));
    }

    v11 = *(v13 + 2);
    *(v10 + 6) = *(v13 + 6);
    v10[2] = v11;
    v13[55] = 0;
    v13[32] = 0;
    *(v10 + 14) = *(v13 + 14);
    *(v10 + 8) = *(v13 + 8);
    v10 = v13;
  }

  while (v8 <= v9);
  v20 = (a2 - 72);
  v21 = v13[23];
  if (v13 == (a2 - 72))
  {
    if (v21 < 0)
    {
      operator delete(*v13);
    }

    *(v13 + 2) = v26;
    *v13 = *v25;
    v13[24] = v27;
    if (v13[55] < 0)
    {
      operator delete(*(v13 + 4));
    }

    *(v13 + 6) = v29;
    *(v13 + 2) = *__p;
    *(v13 + 14) = v30;
    *(v13 + 8) = *(&v30 + 1);
  }

  else
  {
    if (v21 < 0)
    {
      operator delete(*v13);
    }

    v22 = *v20;
    *(v13 + 2) = *(a2 - 56);
    *v13 = v22;
    *(a2 - 49) = 0;
    *(a2 - 72) = 0;
    v13[24] = *(a2 - 48);
    if (v13[55] < 0)
    {
      operator delete(*(v13 + 4));
    }

    v23 = (a2 - 40);
    v24 = *(a2 - 40);
    *(v13 + 6) = *(a2 - 24);
    *(v13 + 2) = v24;
    *(a2 - 17) = 0;
    *(a2 - 40) = 0;
    *(v13 + 14) = *(a2 - 16);
    *(v13 + 8) = *(a2 - 8);
    if (*(a2 - 49) < 0)
    {
      operator delete(*v20);
    }

    *v20 = *v25;
    *(a2 - 56) = v26;
    *(a2 - 48) = v27;
    if (*(a2 - 17) < 0)
    {
      operator delete(*v23);
    }

    *v23 = *__p;
    *(a2 - 24) = v29;
    *(a2 - 16) = v30;
    *(a2 - 8) = *(&v30 + 1);
    sub_A04A20(a1, (v13 + 72), a3, 0x8E38E38E38E38E39 * ((v13 + 72 - a1) >> 3));
  }
}

void sub_A04A20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v6 = v4 >> 1;
    v7 = (a1 + 72 * (v4 >> 1));
    v8 = *(v7 + 14);
    v9 = *(a2 - 16);
    v10 = *(a2 - 8);
    v11 = v8 == v9;
    v12 = v8 > v9;
    if (v11)
    {
      v12 = *(v7 + 8) < v10;
    }

    if (v12)
    {
      v13 = (a2 - 72);
      v22 = *(a2 - 72);
      *v25 = *(a2 - 64);
      *&v25[7] = *(a2 - 57);
      v14 = *(a2 - 49);
      *(v13 + 1) = 0;
      *(v13 + 2) = 0;
      *v13 = 0;
      v15 = *(a2 - 48);
      v23 = *(a2 - 40);
      *v24 = *(a2 - 39);
      *&v24[14] = *(a2 - 25);
      v16 = *(a2 - 17);
      *(v13 + 5) = 0;
      *(v13 + 6) = 0;
      *(v13 + 4) = 0;
      do
      {
        v17 = v7;
        if (*(v13 + 23) < 0)
        {
          operator delete(*v13);
        }

        v18 = *v17;
        *(v13 + 2) = *(v17 + 2);
        *v13 = v18;
        *(v17 + 23) = 0;
        *v17 = 0;
        *(v13 + 24) = *(v17 + 24);
        if (*(v13 + 55) < 0)
        {
          operator delete(*(v13 + 4));
        }

        v19 = v17[2];
        *(v13 + 6) = *(v17 + 6);
        v13[2] = v19;
        *(v17 + 55) = 0;
        *(v17 + 32) = 0;
        *(v13 + 14) = *(v17 + 14);
        *(v13 + 8) = *(v17 + 8);
        if (!v6)
        {
          break;
        }

        v6 = (v6 - 1) >> 1;
        v7 = (a1 + 72 * v6);
        v20 = *(v7 + 14);
        v11 = v20 == v9;
        v21 = v20 > v9;
        if (v11)
        {
          v21 = *(v7 + 8) < v10;
        }

        v13 = v17;
      }

      while (v21);
      if (*(v17 + 23) < 0)
      {
        operator delete(*v17);
      }

      *v17 = v22;
      *(v17 + 1) = *v25;
      *(v17 + 15) = *&v25[7];
      *(v17 + 23) = v14;
      *(v17 + 24) = v15;
      if (*(v17 + 55) < 0)
      {
        operator delete(*(v17 + 4));
      }

      *(v17 + 32) = v23;
      *(v17 + 33) = *v24;
      *(v17 + 47) = *&v24[14];
      *(v17 + 55) = v16;
      *(v17 + 14) = v9;
      *(v17 + 8) = v10;
    }
  }
}

__int128 **sub_A04C24(__int128 *a1, __int128 *a2, __int128 **a3)
{
  if (a1 != a2)
  {
    for (i = a1; i != a2; i = (i + 72))
    {
      if (*(i + 23) < 0)
      {
        sub_325C(__p, *i, *(i + 1));
        v16 = *(i + 24);
        if ((*(i + 55) & 0x80000000) == 0)
        {
LABEL_7:
          v8 = i[2];
          v18 = *(i + 6);
          v17 = v8;
          goto LABEL_10;
        }
      }

      else
      {
        v7 = *i;
        v15 = *(i + 2);
        *__p = v7;
        v16 = *(i + 24);
        if ((*(i + 55) & 0x80000000) == 0)
        {
          goto LABEL_7;
        }
      }

      sub_325C(&v17, *(i + 4), *(i + 5));
LABEL_10:
      v9 = a3[1];
      if (v9 >= a3[2])
      {
        v12 = sub_9D98F8(a3, __p);
        v13 = SHIBYTE(v18);
        a3[1] = v12;
        if (v13 < 0)
        {
          operator delete(v17);
          if ((SHIBYTE(v15) & 0x80000000) == 0)
          {
            continue;
          }

LABEL_15:
          operator delete(__p[0]);
          continue;
        }

        if (SHIBYTE(v15) < 0)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v10 = *__p;
        *(v9 + 16) = v15;
        *v9 = v10;
        __p[1] = 0;
        v15 = 0;
        __p[0] = 0;
        *(v9 + 24) = v16;
        v11 = v17;
        *(v9 + 48) = v18;
        *(v9 + 32) = v11;
        v18 = 0;
        v17 = 0uLL;
        a3[1] = (v9 + 56);
        if (SHIBYTE(v15) < 0)
        {
          goto LABEL_15;
        }
      }
    }
  }

  return a3;
}

void sub_A04D78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ***sub_A04DA8(void ***a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 == v2)
    {
LABEL_11:
      a1[1] = v2;
      operator delete(v4);
      return a1;
    }

    while (1)
    {
      if (*(v3 - 17) < 0)
      {
        operator delete(*(v3 - 5));
        v5 = v3 - 9;
        if (*(v3 - 49) < 0)
        {
LABEL_9:
          operator delete(*v5);
        }
      }

      else
      {
        v5 = v3 - 9;
        if (*(v3 - 49) < 0)
        {
          goto LABEL_9;
        }
      }

      v3 = v5;
      if (v5 == v2)
      {
        v4 = *a1;
        goto LABEL_11;
      }
    }
  }

  return a1;
}

uint64_t sub_A04E40(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v5 = *v2;
      if (*(v2 + 71) < 0)
      {
        operator delete(v2[6]);
        if (*(v2 + 39) < 0)
        {
LABEL_10:
          operator delete(v2[2]);
        }
      }

      else if (*(v2 + 39) < 0)
      {
        goto LABEL_10;
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return a1;
}

__int128 *sub_A04EC8(__int128 *result, __int128 *a2, unint64_t a3, __int128 *a4, int64_t a5)
{
  if (a3 >= 2)
  {
    if (a3 == 2)
    {
      v5 = *(a2 - 3);
      if (*(a2 - 2) != 0x7FFFFFFF)
      {
        v5 = *(a2 - 2);
      }

      if (*(result + 5) == 0x7FFFFFFF)
      {
        v6 = *(result + 4);
      }

      else
      {
        v6 = *(result + 5);
      }

      if (v5 < v6)
      {
        *v40 = *result;
        *&v40[12] = *(result + 12);
        v7 = *(a2 - 1);
        *result = *(a2 - 28);
        *(result + 12) = v7;
        *(a2 - 1) = *&v40[12];
        *(a2 - 28) = *v40;
      }
    }

    else if (a3 > 128)
    {
      v23 = a3 >> 1;
      v24 = (result + 28 * (a3 >> 1));
      v25 = a3 - (a3 >> 1);
      v26 = result;
      if (a3 <= a5)
      {
        v30 = a4;
        sub_A051A0(result, v24, a3 >> 1, a4);
        v31 = (v30 + 28 * v23);
        result = sub_A051A0(v24, a2, v25, v31);
        v32 = (v30 + 28 * a3);
        v33 = v31;
        while (v33 != v32)
        {
          v35 = *(v33 + 4);
          if (*(v33 + 5) != 0x7FFFFFFF)
          {
            v35 = *(v33 + 5);
          }

          if (*(v30 + 5) == 0x7FFFFFFF)
          {
            v36 = *(v30 + 4);
          }

          else
          {
            v36 = *(v30 + 5);
          }

          if (v35 >= v36)
          {
            v34 = *v30;
            *(v26 + 12) = *(v30 + 12);
            *v26 = v34;
            v26 = (v26 + 28);
            v30 = (v30 + 28);
            if (v30 == v31)
            {
              goto LABEL_49;
            }
          }

          else
          {
            v37 = *v33;
            *(v26 + 12) = *(v33 + 12);
            *v26 = v37;
            v26 = (v26 + 28);
            v33 = (v33 + 28);
            if (v30 == v31)
            {
LABEL_49:
              while (v33 != v32)
              {
                v39 = *v33;
                *(v26 + 12) = *(v33 + 12);
                *v26 = v39;
                v26 = (v26 + 28);
                v33 = (v33 + 28);
              }

              return result;
            }
          }
        }

        while (v30 != v31)
        {
          v38 = *v30;
          *(v26 + 12) = *(v30 + 12);
          *v26 = v38;
          v26 = (v26 + 28);
          v30 = (v30 + 28);
        }
      }

      else
      {
        sub_A04EC8(result, v24, a3 >> 1, a4, a5);
        sub_A04EC8(v24, a2, v25, a4, a5);

        return sub_A05460(v26, v24, a2, v23, v25, a4, a5);
      }
    }

    else if (result != a2)
    {
      v8 = (result + 28);
      if ((result + 28) != a2)
      {
        v9 = 0;
        v10 = result;
        do
        {
          v12 = v8;
          v13 = *(v10 + 11);
          v14 = *(v10 + 12);
          v15 = *(v10 + 4);
          if (v14 == 0x7FFFFFFF)
          {
            v16 = *(v10 + 11);
          }

          else
          {
            v16 = *(v10 + 12);
          }

          if (*(v10 + 5) != 0x7FFFFFFF)
          {
            v15 = *(v10 + 5);
          }

          if (v16 < v15)
          {
            v41 = *v12;
            v17 = *(v10 + 13);
            v18 = v9;
            do
            {
              v19 = result + v18;
              *(v19 + 28) = *(result + v18);
              *(v19 + 40) = *(result + v18 + 12);
              if (!v18)
              {
                v11 = result;
                goto LABEL_16;
              }

              v21 = *(v19 - 3);
              v20 = *(v19 - 2);
              if (v20 == 0x7FFFFFFF)
              {
                v20 = v21;
              }

              v18 -= 28;
            }

            while (v16 < v20);
            v11 = (result + v18 + 28);
LABEL_16:
            *v11 = v41;
            *(v11 + 4) = v13;
            *(v11 + 5) = v14;
            *(v11 + 6) = v17;
          }

          v8 = (v12 + 28);
          v9 += 28;
          v10 = v12;
        }

        while ((v12 + 28) != a2);
      }
    }
  }

  return result;
}