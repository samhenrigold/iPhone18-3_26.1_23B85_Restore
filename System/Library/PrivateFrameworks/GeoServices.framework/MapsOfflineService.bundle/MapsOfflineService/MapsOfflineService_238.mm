BOOL sub_E88F4C(uint64_t a1)
{
  v1 = *(a1 + 360);
  if (!v1)
  {
    v1 = &off_2773F38;
  }

  return *(v1 + 8) != 0;
}

uint64_t sub_E88F70(_DWORD *a1)
{
  v1 = a1[2];
  switch(v1)
  {
    case 3:
      v5 = *a1;
      v6 = *(*a1 + 40);
      result = (v6 >> 9) & 1;
      if ((v6 & 0x200) == 0)
      {
        v7 = *(v5 + 424);
        if ((v6 & 0x400000) == 0 || v7)
        {
          v8 = (v6 & 0x10000 | v7) == 0;
          if ((v6 & 0x400) != 0)
          {
            v8 = (v6 >> 9) & 1;
          }

          if ((v6 & 0x800) != 0)
          {
            return result;
          }

          else
          {
            return v8;
          }
        }

        else
        {
          return 1;
        }
      }

      break;
    case 2:
      v4 = *(*a1 + 312);
      if (!v4)
      {
        v4 = &off_2772E28;
      }

      return *(v4 + 32) == 0;
    case 1:
      v2 = *(*a1 + 336);
      if (!v2)
      {
        v2 = &off_2772E28;
      }

      return *(v2 + 32) == 0;
    default:
      return 0;
  }

  return result;
}

uint64_t sub_E8902C(uint64_t a1)
{
  v1 = *(a1 + 448);
  if (!v1)
  {
    return 0x7FFFFFFFFFFFFFFELL;
  }

  v2 = v1 * 100.0;
  if (v2 >= 4.50359963e15)
  {
    if (v2 >= 9.22337204e18)
    {
      return 0x7FFFFFFFFFFFFFFELL;
    }
  }

  else
  {
    v2 = (((v2 + v2) + 1) >> 1);
    if (v2 >= 9.22337204e18)
    {
      return 0x7FFFFFFFFFFFFFFELL;
    }
  }

  return v2;
}

uint64_t sub_E89098(uint64_t a1)
{
  v2 = sub_1950CD0(a1 + 16, dword_278D168, qword_278D170);
  v3 = sub_1950CD0(a1 + 16, dword_278D168, qword_278D170);
  if ((*(a1 + 42) & 1) == 0 && !*(a1 + 88) && !*(v2 + 24) && *(v3 + 40) == 0)
  {
    return *(a1 + 536);
  }

  v5 = sub_E7A5E0(a1);
  result = 1;
  if (((1 << v5) & 0x35FE) == 0)
  {
    return *(a1 + 536);
  }

  return result;
}

void sub_E8932C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_5C010(&a19);
  _Unwind_Resume(a1);
}

void sub_E89358(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_1A104(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

unint64_t sub_E89380(unsigned int a1)
{
  v1 = 0x60503030200uLL >> (8 * a1);
  if (a1 >= 6)
  {
    LOBYTE(v1) = 0;
  }

  return v1 & 7;
}

unint64_t sub_E893A4(uint64_t a1)
{
  v1 = *(a1 + 376);
  if (!v1)
  {
    v1 = &off_2773488;
  }

  return v1[4] & 0xFFFFFFFFFFFFFFFELL;
}

unint64_t sub_E893C4(uint64_t a1)
{
  v1 = *(a1 + 176);
  if (!v1)
  {
    v1 = &off_278B8D0;
  }

  return v1[6] & 0xFFFFFFFFFFFFFFFELL;
}

unint64_t sub_E893E4(uint64_t a1)
{
  v1 = *(a1 + 136);
  if (!v1)
  {
    v1 = &off_2776700;
  }

  return v1[20] & 0xFFFFFFFFFFFFFFFELL;
}

uint64_t sub_E89410@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if ((*(result + 40) & 0x80) != 0)
  {
    return sub_58558(a2, *(*(result + 176) + 32), *(*(result + 176) + 24));
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return result;
}

uint64_t sub_E89434@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if ((*(result + 41) & 0x10) != 0)
  {
    return sub_E83794(*(result + 360), a2);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return result;
}

void sub_E89450(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 80) < 1)
  {
    if ((*(a1 + 41) & 0x10) != 0)
    {
      v6 = *(a1 + 360);
      v7 = *(v6 + 32);
      v8 = *(v6 + 40);
      v9 = v8 ? v8 + 8 : 0;
      if (v7)
      {
        v10 = 8 * v7;
        while (*(*v9 + 80) >= 1)
        {
          v11 = *(*(*v9 + 88) + 8);
          v12 = *(v11 + 23);
          if (v12 < 0)
          {
            v12 = *(v11 + 8);
          }

          if (!v12)
          {
            break;
          }

          v9 += 8;
          v10 -= 8;
          if (!v10)
          {
            *a2 = 0;
            a2[1] = 0;
            a2[2] = 0;
            if ((v7 & 0x80000000) == 0)
            {
              operator new();
            }

            sub_1794();
          }
        }
      }
    }

    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  else
  {
    v3 = *(*(a1 + 88) + 8);
    v4 = *(v3 + 88);
    if (v4)
    {
      v5 = (v4 + 8);
    }

    else
    {
      v5 = 0;
    }

    sub_E8BE00(a2, v5, &v5[*(v3 + 80)]);
  }
}

void sub_E8960C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_1A104(v14);
  _Unwind_Resume(a1);
}

uint64_t sub_E89630(uint64_t a1)
{
  if ((*(a1 + 42) & 1) != 0 && (v1 = *(a1 + 424), (*(v1 + 16) & 4) != 0))
  {
    return *(v1 + 56);
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

uint64_t sub_E89654(uint64_t a1)
{
  if ((*(a1 + 41) & 0x10) != 0 && (v1 = *(a1 + 360), (*(v1 + 16) & 8) != 0))
  {
    return *(v1 + 164);
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

BOOL sub_E89A2C(uint64_t a1)
{
  v2 = sub_3B6890(a1);
  v19 = 13;
  v17 = 0;
  strcpy(v18, "RequestParser");
  v15 = 0;
  v16 = 0;
  v3 = sub_3AEC94(a1, v18, &v15);
  v14 = 14;
  strcpy(__p, "leave_at_slack");
  v4 = sub_352470(v3, __p);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  v5 = v15;
  if (v15)
  {
    v6 = v16;
    v7 = v15;
    if (v16 != v15)
    {
      do
      {
        v8 = *(v6 - 1);
        v6 -= 3;
        if (v8 < 0)
        {
          operator delete(*v6);
        }
      }

      while (v6 != v5);
      v7 = v15;
    }

    v16 = v5;
    operator delete(v7);
  }

  if (v19 < 0)
  {
    operator delete(v18[0]);
    if (v2[2] == 1)
    {
      return 1;
    }
  }

  else if (v2[2] == 1)
  {
    return 1;
  }

  v10 = v2[1];
  v11 = v10 + v4;
  v12 = *v2 < v10 - v4;
  return *v2 > v11 || v12;
}

void sub_E89B84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void **a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a15 < 0)
  {
    operator delete(__p);
    sub_1A104(&a16);
    if ((a24 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    sub_1A104(&a16);
    if ((a24 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  operator delete(a19);
  _Unwind_Resume(a1);
}

unint64_t sub_E89BE8(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    v1 = &off_278B830;
  }

  v2 = v1[3];
  if (!v2)
  {
    v2 = &off_277E5E8;
  }

  if ((~*(v2 + 10) & 3) != 0)
  {
    return -1;
  }

  v3 = *(v2 + 7);
  result = -1;
  if (v3 <= 180.0)
  {
    v5 = *(v2 + 6);
    if (fabs(v5) <= 85.0511288 && v3 >= -180.0)
    {
      v6 = sin(fmin(fmax(v5, -85.0511288), 85.0511288) * 3.14159265 / 180.0);
      LODWORD(v7) = ((log((v6 + 1.0) / (1.0 - v6)) / -12.5663706 + 0.5) * 4294967300.0);
      if (v7 >= 0xFFFFFFFE)
      {
        v7 = 4294967294;
      }

      else
      {
        v7 = v7;
      }

      return ((v3 + 180.0) / 360.0 * 4294967300.0) | (v7 << 32);
    }
  }

  return result;
}

uint64_t sub_E89D34(uint64_t a1, int a2, void *a3, int a4, void *a5, __int128 *a6, char a7)
{
  *(a1 + 8) = 0;
  *a1 = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v9 = a3[1];
  if (v9 != *a3)
  {
    if (((v9 - *a3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 40) = 0;
  *(a1 + 32) = a4;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v10 = a5[1] - *a5;
  if (v10)
  {
    if ((v10 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  if (*(a6 + 23) < 0)
  {
    sub_325C((a1 + 64), *a6, *(a6 + 1));
  }

  else
  {
    v11 = *a6;
    *(a1 + 80) = *(a6 + 2);
    *(a1 + 64) = v11;
  }

  *(a1 + 88) = a7;
  return a1;
}

void sub_E89E6C(_Unwind_Exception *exception_object)
{
  v5 = *v2;
  if (*v2)
  {
    *(v1 + 48) = v5;
    operator delete(v5);
  }

  v6 = *v3;
  if (*v3)
  {
    *(v1 + 16) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_E89EA4(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 88;
    sub_154CF7C((i - 88));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_E89EF8(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      sub_154CB9C(a4, 0, 0);
      if (a4 != v7)
      {
        v8 = *(a4 + 8);
        if ((v8 & 2) != 0)
        {
          v8 = 0;
        }

        else if (v8)
        {
          v8 = *(v8 & 0xFFFFFFFFFFFFFFFCLL);
        }

        v9 = *(v7 + 8);
        if ((v9 & 2) != 0)
        {
          v9 = 0;
        }

        else if (v9)
        {
          v9 = *(v9 & 0xFFFFFFFFFFFFFFFCLL);
        }

        if (v8 == v9)
        {
          sub_154DD6C(a4, v7);
        }

        else
        {
          sub_154DD20(a4, v7);
        }
      }

      v7 += 88;
      a4 += 88;
    }

    while (v7 != a3);
    while (v6 != a3)
    {
      sub_154CF7C(v6);
      v6 += 11;
    }
  }
}

void sub_E89FD8()
{
  if ((atomic_load_explicit(&qword_27B9BD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27B9BD0))
  {
    sub_3608D0(&v1, "ar");
    sub_3608D0(v2, "bg");
    sub_3608D0(v3, "bn");
    sub_3608D0(v4, "ca");
    sub_3608D0(v5, "cs");
    sub_3608D0(v6, "da");
    sub_3608D0(v7, "de");
    sub_3608D0(v8, "el");
    sub_3608D0(v9, "en-au");
    sub_3608D0(v10, "en-gb");
    sub_3608D0(v11, "en-in");
    sub_3608D0(v12, "en");
    sub_3608D0(v13, "es-mx");
    sub_3608D0(v14, "es");
    sub_3608D0(v15, "fi");
    sub_3608D0(v16, "fr-ca");
    sub_3608D0(v17, "fr");
    sub_3608D0(v18, "gu");
    sub_3608D0(v19, "he");
    sub_3608D0(v20, "hi");
    sub_3608D0(v21, "hr");
    sub_3608D0(v22, "hu");
    sub_3608D0(v23, "id");
    sub_3608D0(v24, "it");
    sub_3608D0(v25, "ja");
    sub_3608D0(v26, "kk");
    sub_3608D0(v27, "kn");
    sub_3608D0(v28, "ko");
    sub_3608D0(v29, "lt");
    sub_3608D0(v30, "ml");
    sub_3608D0(v31, "mr");
    sub_3608D0(v32, "ms");
    sub_3608D0(v33, "nl");
    sub_3608D0(v34, "no");
    sub_3608D0(v35, "or");
    sub_3608D0(v36, "pa");
    sub_3608D0(v37, "pl");
    sub_3608D0(v38, "pt-pt");
    sub_3608D0(v39, "pt");
    sub_3608D0(v40, "ro");
    sub_3608D0(v41, "ru");
    sub_3608D0(v42, "sk");
    sub_3608D0(v43, "sl");
    sub_3608D0(v44, "sv");
    sub_3608D0(v45, "ta");
    sub_3608D0(v46, "te");
    sub_3608D0(v47, "th");
    sub_3608D0(v48, "tr");
    sub_3608D0(v49, "uk");
    sub_3608D0(v50, "ur");
    sub_3608D0(v51, "vi");
    sub_3608D0(v52, "zh-cn");
    sub_3608D0(v53, "zh-hk");
    sub_3608D0(v54, "zh-tw");
    sub_5275EC(qword_27BAC28, &v1, 0x36uLL);
    v0 = 162;
    do
    {
      if (*(&v2[v0 - 1] - 1) < 0)
      {
        operator delete(v2[v0 - 4]);
      }

      v0 -= 3;
    }

    while (v0 * 8);
    __cxa_guard_release(&qword_27B9BD0);
  }
}

void sub_E8A540(_Unwind_Exception *a1)
{
  v3 = (v1 + 1295);
  v4 = -1296;
  v5 = v3;
  while (1)
  {
    v6 = *v5;
    v5 -= 24;
    if (v6 < 0)
    {
      operator delete(*(v3 - 23));
    }

    v3 = v5;
    v4 += 24;
    if (!v4)
    {
      __cxa_guard_abort(&qword_27B9BD0);
      _Unwind_Resume(a1);
    }
  }
}

void sub_E8A58C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  while (1)
  {
    v11 = *(v10 - 1);
    v10 -= 3;
    if (v11 < 0)
    {
      operator delete(*v10);
    }

    if (v10 == &a10)
    {
      JUMPOUT(0xE8A578);
    }
  }
}

void sub_E8A5B8(__int128 **a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = a1[1];
  if (v2 != *a1)
  {
    if (!((0xAAAAAAAAAAAAAAABLL * ((v2 - *a1) >> 3)) >> 61))
    {
      operator new();
    }

    sub_1794();
  }

  a2[2] = 0;
  *a2 = 0;
}

void sub_E8A8B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  v14[2] = v16;
  *v14 = v15;
  if (!v15)
  {
    _Unwind_Resume(exception_object);
  }

  v14[1] = v15;
  operator delete(v15);
  _Unwind_Resume(exception_object);
}

uint64_t sub_E8A910(uint64_t a1, char a2, char a3, char a4, char a5, char a6, void *a7, char a8, char a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, int a18, uint64_t a19, int a20, int a21, int a22, int *a23, int a24, char a25, char a26, char a27, char a28, char a29, void *a30, char a31)
{
  *a1 = a2;
  *(a1 + 1) = a3;
  *(a1 + 2) = a4;
  *(a1 + 3) = a5;
  *(a1 + 4) = a6;
  *(a1 + 5) = a31;
  *(a1 + 8) = 0;
  *(a1 + 6) = a31;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v32 = a7[1];
  if (v32 != *a7)
  {
    if (((v32 - *a7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 32) = a8;
  *(a1 + 33) = a9;
  *(a1 + 34) = a10;
  *(a1 + 35) = a11;
  *(a1 + 36) = a12;
  *(a1 + 37) = a13;
  *(a1 + 38) = a14;
  *(a1 + 39) = a15;
  *(a1 + 40) = a16;
  *(a1 + 41) = a17;
  *(a1 + 44) = a18;
  *(a1 + 48) = a19;
  *(a1 + 56) = a20;
  *(a1 + 60) = a22;
  sub_528460(a1 + 64, a23);
  *(a1 + 176) = 0;
  *(a1 + 160) = a24;
  *(a1 + 164) = a25;
  *(a1 + 165) = a26;
  *(a1 + 166) = a27;
  *(a1 + 167) = a28;
  *(a1 + 168) = a29;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  v33 = a30[1];
  if (v33 != *a30)
  {
    if (((v33 - *a30) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return a1;
}

void sub_E8AAC0(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_E8AB00(__int128 **a1, __int128 *a2, __int128 *a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1) + 1;
  if (v3 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v3)
  {
    v3 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (v6 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v7 = 16 * (a1[1] - *a1);
  if (*(a2 + 23) < 0)
  {
    sub_325C(&v19, *a2, *(a2 + 1));
  }

  else
  {
    v19 = *a2;
    v20 = *(a2 + 2);
  }

  if (*(a3 + 23) < 0)
  {
    sub_325C(&v17, *a3, *(a3 + 1));
  }

  else
  {
    v17 = *a3;
    v18 = *(a3 + 2);
  }

  *v7 = v19;
  *(v7 + 16) = v20;
  *(v7 + 24) = v17;
  *(v7 + 40) = v18;
  v8 = v7 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = &(*a1)[v7 / 0x10] - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v11;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 5);
      *(v13 + 24) = v15;
      *(v12 + 4) = 0;
      *(v12 + 5) = 0;
      *(v12 + 3) = 0;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    while (1)
    {
      if (*(v9 + 47) < 0)
      {
        operator delete(*(v9 + 3));
        if (*(v9 + 23) < 0)
        {
LABEL_25:
          operator delete(*v9);
        }
      }

      else if (*(v9 + 23) < 0)
      {
        goto LABEL_25;
      }

      v9 += 3;
      if (v9 == v10)
      {
        v9 = *a1;
        break;
      }
    }
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_E8AD18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
    sub_84E7C(&a10);
    _Unwind_Resume(a1);
  }

  sub_84E7C(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_E8AD50(void *a1, int *a2, int *a3, int *a4)
{
  v4 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if ((v4 + 1) > 0x1745D1745D1745DLL)
  {
    sub_1794();
  }

  if (0x5D1745D1745D1746 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 4);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 4)) >= 0xBA2E8BA2E8BA2ELL)
  {
    v7 = 0x1745D1745D1745DLL;
  }

  else
  {
    v7 = v5;
  }

  v18 = a1;
  if (v7)
  {
    if (v7 <= 0x1745D1745D1745DLL)
    {
      operator new();
    }

    sub_1808();
  }

  __p = 0;
  v15 = 176 * v4;
  v17 = 0;
  sub_E8AEE4(176 * v4, a2, a3, a4);
  v16 = 176 * v4 + 176;
  sub_E8AFD4(a1, &__p);
  v8 = a1[1];
  v9 = v15;
  while (1)
  {
    v10 = v16;
    if (v16 == v9)
    {
      break;
    }

    v16 -= 176;
    v11 = *(v10 - 72);
    if (v11)
    {
      *(v10 - 64) = v11;
      operator delete(v11);
    }

    v12 = *(v10 - 96);
    if (v12)
    {
      *(v10 - 88) = v12;
      operator delete(v12);
    }
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_E8AED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_E8B118(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E8AEE4(uint64_t a1, int *a2, int *a3, int *a4)
{
  v5 = *a2;
  v6 = *a3;
  v7 = *a4;
  *&v11[4] = 0u;
  v16 = 0;
  v19 = 0;
  v20 = 0;
  v9 = 0x7FFFFFFFLL;
  v10 = 0x7FFFFFFF;
  *v11 = 0x7FFFFFFF7FFFFFFFLL;
  v12 = 0x8000000080000000;
  *v13 = 0u;
  v14 = 0u;
  *__p_8 = 0u;
  v17 = 0x8000000080000000;
  v18 = 0x7FFFFFFF;
  v21 = xmmword_2297C00;
  *a1 = v5;
  *(a1 + 4) = 10 * v6;
  *(a1 + 8) = v7;
  *(a1 + 16) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 24) = 0x7FFFFFFF;
  *(a1 + 28) = 0x7FFFFFFF7FFFFFFFLL;
  sub_3EDBB0(a1 + 40, &v9);
  if (*(&v14 + 1))
  {
    __p_8[0] = *(&v14 + 1);
    operator delete(*(&v14 + 1));
  }

  if (v13[0])
  {
    v13[1] = v13[0];
    operator delete(v13[0]);
  }

  return a1;
}

void sub_E8AFD4(void *a1, void *a2)
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
      v10 = *(v7 + 1);
      *(v8 + 32) = *(v7 + 8);
      *v8 = v9;
      *(v8 + 16) = v10;
      v11 = *(v7 + 5);
      v12 = v7[9];
      *(v8 + 56) = *(v7 + 7);
      *(v8 + 40) = v11;
      *(v8 + 72) = v12;
      *(v8 + 80) = 0;
      *(v8 + 88) = 0;
      *(v8 + 96) = 0;
      *(v8 + 80) = *(v7 + 5);
      *(v8 + 96) = v7[12];
      v7[10] = 0;
      v7[11] = 0;
      v7[12] = 0;
      *(v8 + 104) = 0;
      *(v8 + 112) = 0;
      *(v8 + 120) = 0;
      *(v8 + 104) = *(v7 + 13);
      *(v8 + 120) = v7[15];
      v7[13] = 0;
      v7[14] = 0;
      v7[15] = 0;
      v13 = *(v7 + 8);
      v14 = *(v7 + 10);
      *(v8 + 144) = *(v7 + 9);
      *(v8 + 160) = v14;
      *(v8 + 128) = v13;
      v7 += 22;
      v8 += 176;
    }

    while (v7 != v4);
    do
    {
      v15 = v5[13];
      if (v15)
      {
        v5[14] = v15;
        operator delete(v15);
      }

      v16 = v5[10];
      if (v16)
      {
        v5[11] = v16;
        operator delete(v16);
      }

      v5 += 22;
    }

    while (v5 != v4);
  }

  a2[1] = v6;
  v17 = *a1;
  *a1 = v6;
  a1[1] = v17;
  a2[1] = v17;
  v18 = a1[1];
  a1[1] = a2[2];
  a2[2] = v18;
  v19 = a1[2];
  a1[2] = a2[3];
  a2[3] = v19;
  *a2 = a2[1];
}

uint64_t sub_E8B118(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 176;
    v4 = *(i - 72);
    if (v4)
    {
      *(i - 64) = v4;
      operator delete(v4);
    }

    v5 = *(i - 96);
    if (v5)
    {
      *(i - 88) = v5;
      operator delete(v5);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_E8B190(void *a1, int *a2, int *a3, uint64_t *a4)
{
  v4 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if ((v4 + 1) > 0x1745D1745D1745DLL)
  {
    sub_1794();
  }

  if (0x5D1745D1745D1746 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 4);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 4)) >= 0xBA2E8BA2E8BA2ELL)
  {
    v7 = 0x1745D1745D1745DLL;
  }

  else
  {
    v7 = v5;
  }

  v18 = a1;
  if (v7)
  {
    if (v7 <= 0x1745D1745D1745DLL)
    {
      operator new();
    }

    sub_1808();
  }

  __p = 0;
  v15 = 176 * v4;
  v17 = 0;
  sub_E8B324(176 * v4, a2, a3, a4);
  v16 = 176 * v4 + 176;
  sub_E8AFD4(a1, &__p);
  v8 = a1[1];
  v9 = v15;
  while (1)
  {
    v10 = v16;
    if (v16 == v9)
    {
      break;
    }

    v16 -= 176;
    v11 = *(v10 - 72);
    if (v11)
    {
      *(v10 - 64) = v11;
      operator delete(v11);
    }

    v12 = *(v10 - 96);
    if (v12)
    {
      *(v10 - 88) = v12;
      operator delete(v12);
    }
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_E8B310(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_E8B118(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E8B324(uint64_t a1, int *a2, int *a3, uint64_t *a4)
{
  v5 = *a2;
  v6 = *a3;
  v7 = *a4;
  *&v11[4] = 0u;
  v16 = 0;
  v19 = 0;
  v20 = 0;
  v9 = 0x7FFFFFFFLL;
  v10 = 0x7FFFFFFF;
  *v11 = 0x7FFFFFFF7FFFFFFFLL;
  v12 = 0x8000000080000000;
  *v13 = 0u;
  v14 = 0u;
  *__p_8 = 0u;
  v17 = 0x8000000080000000;
  v18 = 0x7FFFFFFF;
  v21 = xmmword_2297C00;
  *a1 = v5;
  *(a1 + 4) = 10 * v6;
  *(a1 + 8) = -1;
  *(a1 + 16) = v7;
  *(a1 + 24) = 0x7FFFFFFF;
  *(a1 + 28) = 0x7FFFFFFF7FFFFFFFLL;
  sub_3EDBB0(a1 + 40, &v9);
  if (*(&v14 + 1))
  {
    __p_8[0] = *(&v14 + 1);
    operator delete(*(&v14 + 1));
  }

  if (v13[0])
  {
    v13[1] = v13[0];
    operator delete(v13[0]);
  }

  return a1;
}

uint64_t sub_E8B414(void *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v3;
  }

  v22 = a1;
  if (v5)
  {
    if (v5 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 24 * v2;
  __p = 0;
  v19 = v6;
  *v6 = *a2;
  *(v6 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v20 = 24 * v2 + 24;
  v21 = 0;
  sub_E8B5C8(a1, &__p);
  v7 = a1[1];
  v8 = v19;
  v9 = v20;
  if (v20 != v19)
  {
    v10 = v20;
    do
    {
      v13 = *(v10 - 3);
      v10 -= 3;
      v12 = v13;
      v20 = v10;
      if (v13)
      {
        v14 = *(v9 - 16);
        v11 = v12;
        if (v14 != v12)
        {
          do
          {
            v15 = *(v14 - 9);
            if (v15)
            {
              *(v14 - 8) = v15;
              operator delete(v15);
            }

            v16 = *(v14 - 12);
            if (v16)
            {
              *(v14 - 11) = v16;
              operator delete(v16);
            }

            v14 -= 176;
          }

          while (v14 != v12);
          v11 = *v10;
        }

        *(v9 - 16) = v12;
        operator delete(v11);
        v10 = v20;
      }

      v9 = v10;
    }

    while (v10 != v8);
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v7;
}

void sub_E8B5B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_E8B6F4(va);
  _Unwind_Resume(a1);
}

void sub_E8B5C8(uint64_t a1, void *a2)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = a2[1] + *a1 - v4;
  if (v4 != *a1)
  {
    v7 = *a1;
    v8 = (a2[1] + *a1 - v4);
    do
    {
      *v8 = 0;
      v8[1] = 0;
      v8[2] = 0;
      *v8 = *v7;
      v8[2] = v7[2];
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
      v7 += 3;
      v8 += 3;
    }

    while (v7 != v4);
    do
    {
      v10 = *v5;
      if (*v5)
      {
        v11 = v5[1];
        v9 = *v5;
        if (v11 != v10)
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

          while (v11 != v10);
          v9 = *v5;
        }

        v5[1] = v10;
        operator delete(v9);
      }

      v5 += 3;
    }

    while (v5 != v4);
  }

  a2[1] = v6;
  v14 = *a1;
  *a1 = v6;
  *(a1 + 8) = v14;
  a2[1] = v14;
  v15 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v15;
  v16 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v16;
  *a2 = a2[1];
}

void **sub_E8B6F4(void **a1)
{
  sub_E8B728(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_E8B728(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v1)
  {
    v4 = *(a1 + 16);
    do
    {
      v7 = *(v4 - 3);
      v4 -= 3;
      v6 = v7;
      *(a1 + 16) = v4;
      if (v7)
      {
        v8 = *(v2 - 2);
        v5 = v6;
        if (v8 != v6)
        {
          do
          {
            v9 = *(v8 - 9);
            if (v9)
            {
              *(v8 - 8) = v9;
              operator delete(v9);
            }

            v10 = *(v8 - 12);
            if (v10)
            {
              *(v8 - 11) = v10;
              operator delete(v10);
            }

            v8 -= 176;
          }

          while (v8 != v6);
          v5 = *v4;
        }

        *(v2 - 2) = v6;
        operator delete(v5);
        v4 = *(a1 + 16);
      }

      v2 = v4;
    }

    while (v4 != v1);
  }
}

uint64_t sub_E8B7D8(uint64_t *a1, uint64_t a2)
{
  v2 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x2E8BA2E8BA2E8BALL)
  {
    sub_1794();
  }

  if (0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 3)) >= 0x1745D1745D1745DLL)
  {
    v5 = 0x2E8BA2E8BA2E8BALL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x2E8BA2E8BA2E8BALL)
    {
      operator new();
    }

    sub_1808();
  }

  v11 = 8 * ((a1[1] - *a1) >> 3);
  sub_14CD334(v11, a2);
  v6 = 88 * v2 + 88;
  v7 = a1[1];
  v8 = v11 + *a1 - v7;
  sub_E89EF8(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  a1[1] = v6;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v6;
}

void sub_E8B918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_E89EA4(va);
  _Unwind_Resume(a1);
}

void ***sub_E8B92C(void ***result)
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
          v4 = sub_154CF7C(v4 - 11);
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

void sub_E8B9A4(void *a1, unint64_t a2)
{
  if (0xF0F0F0F0F0F0F0F1 * ((a1[2] - *a1) >> 3) < a2)
  {
    if (a2 < 0x1E1E1E1E1E1E1E2)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_E8BA9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_E8BBE4(va);
  _Unwind_Resume(a1);
}

void sub_E8BAB0(void *a1, void *a2)
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
      v9 = *(v7 + 1);
      v10 = v7[4];
      *v8 = *v7;
      *(v8 + 16) = v9;
      *(v8 + 32) = v10;
      *(v8 + 40) = 0;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 40) = *(v7 + 5);
      *(v8 + 56) = v7[7];
      v7[5] = 0;
      v7[6] = 0;
      v7[7] = 0;
      *(v8 + 64) = 0;
      *(v8 + 72) = 0;
      *(v8 + 80) = 0;
      *(v8 + 64) = *(v7 + 4);
      *(v8 + 80) = v7[10];
      v7[8] = 0;
      v7[9] = 0;
      v7[10] = 0;
      v11 = *(v7 + 11);
      v12 = *(v7 + 13);
      *(v8 + 120) = *(v7 + 15);
      *(v8 + 104) = v12;
      *(v8 + 88) = v11;
      v7 += 17;
      v8 += 136;
    }

    while (v7 != v4);
    do
    {
      v13 = v5[8];
      if (v13)
      {
        v5[9] = v13;
        operator delete(v13);
      }

      v14 = v5[5];
      if (v14)
      {
        v5[6] = v14;
        operator delete(v14);
      }

      v5 += 17;
    }

    while (v5 != v4);
  }

  a2[1] = v6;
  v15 = *a1;
  *a1 = v6;
  a1[1] = v15;
  a2[1] = v15;
  v16 = a1[1];
  a1[1] = a2[2];
  a2[2] = v16;
  v17 = a1[2];
  a1[2] = a2[3];
  a2[3] = v17;
  *a2 = a2[1];
}

uint64_t sub_E8BBE4(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 136;
    v4 = *(i - 72);
    if (v4)
    {
      *(i - 64) = v4;
      operator delete(v4);
    }

    v5 = *(i - 96);
    if (v5)
    {
      *(i - 88) = v5;
      operator delete(v5);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_E8BC5C(void *a1, uint64_t a2)
{
  v2 = 0xF0F0F0F0F0F0F0F1 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x1E1E1E1E1E1E1E1)
  {
    sub_1794();
  }

  if (0xE1E1E1E1E1E1E1E2 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xE1E1E1E1E1E1E1E2 * ((a1[2] - *a1) >> 3);
  }

  if (0xF0F0F0F0F0F0F0F1 * ((a1[2] - *a1) >> 3) >= 0xF0F0F0F0F0F0F0)
  {
    v5 = 0x1E1E1E1E1E1E1E1;
  }

  else
  {
    v5 = v3;
  }

  v20 = a1;
  if (v5)
  {
    if (v5 <= 0x1E1E1E1E1E1E1E1)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 136 * v2;
  __p = 0;
  v17 = v6;
  v7 = *(a2 + 16);
  *v6 = *a2;
  *(v6 + 16) = v7;
  *(v6 + 32) = *(a2 + 32);
  *(v6 + 40) = *(a2 + 40);
  *(v6 + 56) = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(v6 + 64) = *(a2 + 64);
  *(v6 + 80) = *(a2 + 80);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  v8 = *(a2 + 88);
  v9 = *(a2 + 104);
  *(v6 + 120) = *(a2 + 120);
  *(v6 + 104) = v9;
  *(v6 + 88) = v8;
  v18 = 136 * v2 + 136;
  v19 = 0;
  sub_E8BAB0(a1, &__p);
  v10 = a1[1];
  v11 = v17;
  while (1)
  {
    v12 = v18;
    if (v18 == v11)
    {
      break;
    }

    v18 -= 136;
    v13 = *(v12 - 72);
    if (v13)
    {
      *(v12 - 64) = v13;
      operator delete(v13);
    }

    v14 = *(v12 - 96);
    if (v14)
    {
      *(v12 - 88) = v14;
      operator delete(v14);
    }
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v10;
}

void sub_E8BDEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_E8BBE4(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_E8BE00(uint64_t *a1, __int128 **a2, __int128 **a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a3 != a2)
  {
    if ((a3 - a2) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }

  return a1;
}

void sub_E8BF2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void ***a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_746A0(va);
  *(v10 + 8) = v11;
  sub_99B5C(&a9);
  _Unwind_Resume(a1);
}

void sub_E8BF4C(uint64_t *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 6)
  {
    if (!(a2 >> 58))
    {
      operator new();
    }

    sub_1794();
  }
}

uint64_t sub_E8C050(uint64_t a1, uint64_t a2)
{
  sub_15F4680(a1, 0, 0);
  if (a1 != a2)
  {
    v4 = *(a1 + 8);
    if ((v4 & 2) != 0)
    {
      v4 = 0;
    }

    else if (v4)
    {
      v4 = *(v4 & 0xFFFFFFFFFFFFFFFCLL);
    }

    v5 = *(a2 + 8);
    if ((v5 & 2) != 0)
    {
      v5 = 0;
    }

    else if (v5)
    {
      v5 = *(v5 & 0xFFFFFFFFFFFFFFFCLL);
    }

    if (v4 == v5)
    {
      sub_12D952C(a1, a2);
    }

    else
    {
      sub_15F51F8(a1, a2);
    }
  }

  return a1;
}

uint64_t sub_E8C0F0(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v6 = a1;
    do
    {
      v8 = *v6;
      sub_15F4680(v11, 0, 0);
      sub_194DB28(v11, v8);
      sub_E8C050(v10, v11);
      sub_15F4790(v11);
      v9 = *(a3 + 8);
      if (v9 < *(a3 + 16))
      {
        v7 = sub_E8C050(v9, v10) + 64;
      }

      else
      {
        v7 = sub_E8C1D4(a3, v10);
      }

      *(a3 + 8) = v7;
      sub_15F4790(v10);
      ++v6;
    }

    while (v6 != a2);
  }

  return a3;
}

void sub_E8C1C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_15F4790(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E8C1D4(void **a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 6;
  v3 = v2 + 1;
  if ((v2 + 1) >> 58)
  {
    sub_1794();
  }

  v5 = a1[2] - *a1;
  if (v5 >> 5 > v3)
  {
    v3 = v5 >> 5;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFC0)
  {
    v6 = 0x3FFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (!(v6 >> 58))
    {
      operator new();
    }

    sub_1808();
  }

  v7 = v2 << 6;
  sub_E8C050(v2 << 6, a2);
  v8 = (v2 << 6) + 64;
  v9 = *a1;
  v10 = a1[1];
  v11 = *a1 + v7 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v11;
    do
    {
      v14 = sub_E8C050(v13, v12);
      v12 += 64;
      v13 = v14 + 64;
    }

    while (v12 != v10);
    do
    {
      sub_15F4790(v9);
      v9 += 64;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void **sub_E8C2FC(uint64_t *a1, uint64_t *a2, void **a3)
{
  if (a1 != a2)
  {
    v6 = a1;
    do
    {
      v8 = *v6;
      sub_15F4680(v11, 0, 0);
      sub_194DB28(v11, v8);
      sub_E8C050(v10, v11);
      sub_15F4790(v11);
      v9 = a3[1];
      if (v9 < a3[2])
      {
        v7 = sub_E8C050(v9, v10) + 64;
      }

      else
      {
        v7 = sub_E8C1D4(a3, v10);
      }

      a3[1] = v7;
      sub_15F4790(v10);
      ++v6;
    }

    while (v6 != a2);
  }

  return a3;
}

void sub_E8C3CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_15F4790(va);
  _Unwind_Resume(a1);
}

void **sub_E8C3E0(uint64_t *a1, uint64_t *a2, void **a3)
{
  if (a1 != a2)
  {
    v6 = a1;
    do
    {
      v8 = *v6;
      sub_15F4680(v11, 0, 0);
      sub_194DB28(v11, v8);
      sub_E8C050(v10, v11);
      sub_15F4790(v11);
      v9 = a3[1];
      if (v9 < a3[2])
      {
        v7 = sub_E8C050(v9, v10) + 64;
      }

      else
      {
        v7 = sub_E8C1D4(a3, v10);
      }

      a3[1] = v7;
      sub_15F4790(v10);
      ++v6;
    }

    while (v6 != a2);
  }

  return a3;
}

void sub_E8C4B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_15F4790(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E8C4C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (v2 + 8);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a1 + 8);
  v12 = a2;
  if (v4)
  {
    v5 = 8 * v4;
    do
    {
      v6 = *(*v3 + 23);
      if (v6 >= 0)
      {
        v7 = *v3;
      }

      else
      {
        v7 = **v3;
      }

      if (v6 >= 0)
      {
        v8 = *(*v3 + 23);
      }

      else
      {
        v8 = (*v3)[1];
      }

      sub_E8C584(v7, v8, __p);
      sub_9A5A0(&v12, __p);
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }

      ++v3;
      v5 -= 8;
    }

    while (v5);
    return v12;
  }

  return a2;
}

void sub_E8C568(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_E8C584@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = result;
  v6 = (result + a2);
  if (a2)
  {
    v7 = a2;
    v8 = result;
    do
    {
      v9 = *v8;
      if (v9 < 0)
      {
        result = __maskrune(v9, 0x4000uLL);
        if (!result)
        {
          goto LABEL_10;
        }
      }

      else
      {
        result = _DefaultRuneLocale.__runetype[v9] & 0x4000;
        if (!result)
        {
          goto LABEL_10;
        }
      }

      ++v8;
      --v7;
    }

    while (v7);
    v8 = v6;
  }

  else
  {
    v8 = result;
  }

LABEL_10:
  v10 = a2 + v4 - v8;
  v11 = a2 + v4;
  v12 = a2 + v4 + 1;
  v13 = v11 - v8;
  while (v13)
  {
    v14 = *(v12 - 2);
    if (v14 < 0)
    {
      result = __maskrune(v14, 0x4000uLL);
      --v12;
      --v13;
      if (!result)
      {
        goto LABEL_17;
      }
    }

    else
    {
      result = _DefaultRuneLocale.__runetype[v14] & 0x4000;
      --v12;
      --v13;
      if (!result)
      {
        goto LABEL_17;
      }
    }
  }

  v12 = v8;
LABEL_17:
  v15 = v12 - v6 + v10;
  if (v15 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  if (v15 >= 0x17)
  {
    operator new();
  }

  *(a3 + 23) = v15;
  if (v15)
  {
    result = memmove(a3, v8, v15);
  }

  *(a3 + v15) = 0;
  return result;
}

uint64_t sub_E8C6EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (v2 + 8);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a1 + 8);
  v12 = a2;
  if (v4)
  {
    v5 = 8 * v4;
    do
    {
      v6 = *(*v3 + 23);
      if (v6 >= 0)
      {
        v7 = *v3;
      }

      else
      {
        v7 = **v3;
      }

      if (v6 >= 0)
      {
        v8 = *(*v3 + 23);
      }

      else
      {
        v8 = (*v3)[1];
      }

      sub_E8C584(v7, v8, __p);
      sub_9A5A0(&v12, __p);
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }

      ++v3;
      v5 -= 8;
    }

    while (v5);
    return v12;
  }

  return a2;
}

void sub_E8C790(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_E8C7AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (v2 + 8);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a1 + 8);
  v12 = a2;
  if (v4)
  {
    v5 = 8 * v4;
    do
    {
      v6 = *(*v3 + 23);
      if (v6 >= 0)
      {
        v7 = *v3;
      }

      else
      {
        v7 = **v3;
      }

      if (v6 >= 0)
      {
        v8 = *(*v3 + 23);
      }

      else
      {
        v8 = (*v3)[1];
      }

      sub_E8C584(v7, v8, __p);
      sub_9A5A0(&v12, __p);
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }

      ++v3;
      v5 -= 8;
    }

    while (v5);
    return v12;
  }

  return a2;
}

void sub_E8C850(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_E8C86C(uint64_t a1, uint64_t a2, void *a3, int *a4)
{
  if (a1 != a2)
  {
    for (i = a1; i != a2; i += 8)
    {
      if ((*(*i + 40) & 8) != 0)
      {
        sub_E88560(a4, *(*i + 72), v16);
        v9 = a3[1];
        if (v9 >= a3[2])
        {
LABEL_7:
          v10 = sub_E8BC5C(a3, v16);
          v11 = *&v19[8];
          a3[1] = v10;
          if (v11)
          {
            *&v19[16] = v11;
            operator delete(v11);
          }

          goto LABEL_11;
        }
      }

      else
      {
        *&v16[16] = 0u;
        v20 = 0uLL;
        *v16 = 0x7FFFFFFFLL;
        *&v16[8] = 0x7FFFFFFF;
        *&v16[12] = 0x7FFFFFFF7FFFFFFFLL;
        v17 = 0x8000000080000000;
        *v18 = 0u;
        memset(v19, 0, 36);
        *&v19[36] = 0x8000000080000000;
        *&v19[44] = 0x7FFFFFFF;
        v21 = xmmword_2297C00;
        v9 = a3[1];
        if (v9 >= a3[2])
        {
          goto LABEL_7;
        }
      }

      v12 = *&v16[16];
      v13 = v17;
      *v9 = *v16;
      *(v9 + 16) = v12;
      *(v9 + 32) = v13;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 40) = *v18;
      *v18 = 0uLL;
      *(v9 + 56) = *v19;
      *(v9 + 64) = 0;
      *(v9 + 72) = 0;
      *(v9 + 80) = 0;
      *(v9 + 64) = *&v19[8];
      *(v9 + 80) = *&v19[24];
      memset(v19, 0, 32);
      v14 = *&v19[32];
      v15 = v20;
      *(v9 + 120) = v21;
      *(v9 + 104) = v15;
      *(v9 + 88) = v14;
      a3[1] = v9 + 136;
LABEL_11:
      if (v18[0])
      {
        v18[1] = v18[0];
        operator delete(v18[0]);
      }
    }
  }

  return a3;
}

void sub_E8CA14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_49A8F8(va);
  _Unwind_Resume(a1);
}

void sub_E8CA28(void ***a1, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }
}

uint64_t sub_E8CBA0(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v6 = a1;
    do
    {
      v7 = *v6;
      __p[0] = 0;
      __p[1] = 0;
      v17 = 0;
      v8 = *(v7 + 24);
      if (v8)
      {
        if ((v8 & 0x80000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }

      v9 = *(v7 + 32);
      if (v9)
      {
        v10 = (v9 + 8);
      }

      else
      {
        v10 = 0;
      }

      sub_E8CDE8(v10, &v10[*(v7 + 24)], __p);
      v11 = *(a3 + 8);
      if (v11 < *(a3 + 16))
      {
        *v11 = 0;
        v11[1] = 0;
        v11[2] = 0;
        *v11 = *__p;
        v11[2] = v17;
        *(a3 + 8) = v11 + 3;
      }

      else
      {
        v12 = sub_E8D154(a3, __p);
        v13 = __p[0];
        *(a3 + 8) = v12;
        if (v13)
        {
          v14 = __p[1];
          v15 = v13;
          if (__p[1] != v13)
          {
            do
            {
              if (*(v14 - 17) < 0)
              {
                operator delete(*(v14 - 5));
              }

              v14 -= 6;
            }

            while (v14 != v13);
            v15 = __p[0];
          }

          __p[1] = v13;
          operator delete(v15);
        }
      }

      ++v6;
    }

    while (v6 != a2);
  }

  return a3;
}

unint64_t *sub_E8CDE8(int32x2_t **a1, int32x2_t **a2, unint64_t *a3)
{
  if (a1 != a2)
  {
    v6 = a1;
    v7 = vdup_n_s32(0x3A4FC880u);
    do
    {
      v10 = *v6;
      v21 = 5;
      v23 = 0;
      v22 = 0uLL;
      v24 = 0x8000000080000000;
      v25 = 0x7FFFFFFF;
      v21 = sub_899A0(v10[5].u32[0]);
      v11 = *&v10[3] & 0xFFFFFFFFFFFFFFFELL;
      if (&v22 != v11)
      {
        if (*(v11 + 23) < 0)
        {
          sub_13A68(&v22, *v11, *(v11 + 8));
        }

        else
        {
          v12 = *v11;
          v23 = *(v11 + 16);
          v22 = v12;
        }
      }

      if ((~v10[2].i32[0] & 6) == 0)
      {
        v24 = vadd_s32(v10[4], v7);
      }

      v25 = 10 * v10[5].i32[1];
      v16[0] = v21;
      __p = v22;
      v18 = v23;
      v19 = v24;
      v20 = v25;
      v13 = a3[1];
      if (v13 < a3[2])
      {
        *v13 = v21;
        v8 = __p;
        *(v13 + 24) = v18;
        *(v13 + 8) = v8;
        v18 = 0;
        __p = 0uLL;
        v9 = v20;
        *(v13 + 32) = v19;
        *(v13 + 40) = v9;
        a3[1] = v13 + 48;
      }

      else
      {
        v14 = sub_E8CFC0(a3, v16);
        v15 = SHIBYTE(v18);
        a3[1] = v14;
        if (v15 < 0)
        {
          operator delete(__p);
        }
      }

      ++v6;
    }

    while (v6 != a2);
  }

  return a3;
}

void sub_E8CF90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_E8CFC0(unint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v5 = 0x555555555555555;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 16 * ((a1[1] - *a1) >> 4);
  *v6 = *a2;
  *(v6 + 8) = *(a2 + 8);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  *(v6 + 24) = v7;
  *(v6 + 32) = v8;
  *(v6 + 40) = *(a2 + 40);
  v9 = 48 * v2 + 48;
  v10 = *a1;
  v11 = a1[1];
  v12 = v6 + *a1 - v11;
  if (*a1 != v11)
  {
    v13 = *a1;
    v14 = v6 + *a1 - v11;
    do
    {
      *v14 = *v13;
      v15 = *(v13 + 8);
      *(v14 + 24) = *(v13 + 24);
      *(v14 + 8) = v15;
      *(v13 + 16) = 0;
      *(v13 + 24) = 0;
      *(v13 + 8) = 0;
      v16 = *(v13 + 32);
      *(v14 + 40) = *(v13 + 40);
      *(v14 + 32) = v16;
      v13 += 48;
      v14 += 48;
    }

    while (v13 != v11);
    do
    {
      if (*(v10 + 31) < 0)
      {
        operator delete(*(v10 + 8));
      }

      v10 += 48;
    }

    while (v10 != v11);
    v10 = *a1;
  }

  *a1 = v12;
  a1[1] = v9;
  a1[2] = 0;
  if (v10)
  {
    operator delete(v10);
  }

  return v9;
}

void **sub_E8D154(void ***a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v3)
  {
    v3 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 8 * (a1[1] - *a1);
  *v6 = *a2;
  *(v6 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v7 = (24 * v2 + 24);
  v8 = *a1;
  v9 = a1[1];
  v10 = (v6 + *a1 - v9);
  if (*a1 != v9)
  {
    v11 = *a1;
    v12 = (v6 + *a1 - v9);
    do
    {
      *v12 = *v11;
      *(v12 + 2) = *(v11 + 2);
      *v11 = 0;
      *(v11 + 1) = 0;
      *(v11 + 2) = 0;
      v11 += 24;
      v12 += 24;
    }

    while (v11 != v9);
    do
    {
      v14 = *v8;
      if (*v8)
      {
        v15 = *(v8 + 1);
        v13 = *v8;
        if (v15 != v14)
        {
          do
          {
            if (*(v15 - 17) < 0)
            {
              operator delete(*(v15 - 5));
            }

            v15 -= 6;
          }

          while (v15 != v14);
          v13 = *v8;
        }

        *(v8 + 1) = v14;
        operator delete(v13);
      }

      v8 += 24;
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

uint64_t sub_E8D2FC(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v6 = a1;
    do
    {
      v7 = *v6;
      __p[0] = 0;
      __p[1] = 0;
      v17 = 0;
      v8 = *(v7 + 24);
      if (v8)
      {
        if ((v8 & 0x80000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }

      v9 = *(v7 + 32);
      if (v9)
      {
        v10 = (v9 + 8);
      }

      else
      {
        v10 = 0;
      }

      sub_E8D544(v10, &v10[*(v7 + 24)], __p);
      v11 = *(a3 + 8);
      if (v11 < *(a3 + 16))
      {
        *v11 = 0;
        v11[1] = 0;
        v11[2] = 0;
        *v11 = *__p;
        v11[2] = v17;
        *(a3 + 8) = v11 + 3;
      }

      else
      {
        v12 = sub_E8D154(a3, __p);
        v13 = __p[0];
        *(a3 + 8) = v12;
        if (v13)
        {
          v14 = __p[1];
          v15 = v13;
          if (__p[1] != v13)
          {
            do
            {
              if (*(v14 - 17) < 0)
              {
                operator delete(*(v14 - 5));
              }

              v14 -= 6;
            }

            while (v14 != v13);
            v15 = __p[0];
          }

          __p[1] = v13;
          operator delete(v15);
        }
      }

      ++v6;
    }

    while (v6 != a2);
  }

  return a3;
}

unint64_t *sub_E8D544(int32x2_t **a1, int32x2_t **a2, unint64_t *a3)
{
  if (a1 != a2)
  {
    v6 = a1;
    v7 = vdup_n_s32(0x3A4FC880u);
    do
    {
      v10 = *v6;
      v21 = 5;
      v23 = 0;
      v22 = 0uLL;
      v24 = 0x8000000080000000;
      v25 = 0x7FFFFFFF;
      v21 = sub_899A0(v10[5].u32[0]);
      v11 = *&v10[3] & 0xFFFFFFFFFFFFFFFELL;
      if (&v22 != v11)
      {
        if (*(v11 + 23) < 0)
        {
          sub_13A68(&v22, *v11, *(v11 + 8));
        }

        else
        {
          v12 = *v11;
          v23 = *(v11 + 16);
          v22 = v12;
        }
      }

      if ((~v10[2].i32[0] & 6) == 0)
      {
        v24 = vadd_s32(v10[4], v7);
      }

      v25 = 10 * v10[5].i32[1];
      v16[0] = v21;
      __p = v22;
      v18 = v23;
      v19 = v24;
      v20 = v25;
      v13 = a3[1];
      if (v13 < a3[2])
      {
        *v13 = v21;
        v8 = __p;
        *(v13 + 24) = v18;
        *(v13 + 8) = v8;
        v18 = 0;
        __p = 0uLL;
        v9 = v20;
        *(v13 + 32) = v19;
        *(v13 + 40) = v9;
        a3[1] = v13 + 48;
      }

      else
      {
        v14 = sub_E8CFC0(a3, v16);
        v15 = SHIBYTE(v18);
        a3[1] = v14;
        if (v15 < 0)
        {
          operator delete(__p);
        }
      }

      ++v6;
    }

    while (v6 != a2);
  }

  return a3;
}

void sub_E8D6EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_E8D71C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v6 = a1;
    do
    {
      v7 = *v6;
      __p[0] = 0;
      __p[1] = 0;
      v17 = 0;
      v8 = *(v7 + 24);
      if (v8)
      {
        if ((v8 & 0x80000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }

      v9 = *(v7 + 32);
      if (v9)
      {
        v10 = (v9 + 8);
      }

      else
      {
        v10 = 0;
      }

      sub_E8D964(v10, &v10[*(v7 + 24)], __p);
      v11 = *(a3 + 8);
      if (v11 < *(a3 + 16))
      {
        *v11 = 0;
        v11[1] = 0;
        v11[2] = 0;
        *v11 = *__p;
        v11[2] = v17;
        *(a3 + 8) = v11 + 3;
      }

      else
      {
        v12 = sub_E8D154(a3, __p);
        v13 = __p[0];
        *(a3 + 8) = v12;
        if (v13)
        {
          v14 = __p[1];
          v15 = v13;
          if (__p[1] != v13)
          {
            do
            {
              if (*(v14 - 17) < 0)
              {
                operator delete(*(v14 - 5));
              }

              v14 -= 6;
            }

            while (v14 != v13);
            v15 = __p[0];
          }

          __p[1] = v13;
          operator delete(v15);
        }
      }

      ++v6;
    }

    while (v6 != a2);
  }

  return a3;
}

unint64_t *sub_E8D964(int32x2_t **a1, int32x2_t **a2, unint64_t *a3)
{
  if (a1 != a2)
  {
    v6 = a1;
    v7 = vdup_n_s32(0x3A4FC880u);
    do
    {
      v10 = *v6;
      v21 = 5;
      v23 = 0;
      v22 = 0uLL;
      v24 = 0x8000000080000000;
      v25 = 0x7FFFFFFF;
      v21 = sub_899A0(v10[5].u32[0]);
      v11 = *&v10[3] & 0xFFFFFFFFFFFFFFFELL;
      if (&v22 != v11)
      {
        if (*(v11 + 23) < 0)
        {
          sub_13A68(&v22, *v11, *(v11 + 8));
        }

        else
        {
          v12 = *v11;
          v23 = *(v11 + 16);
          v22 = v12;
        }
      }

      if ((~v10[2].i32[0] & 6) == 0)
      {
        v24 = vadd_s32(v10[4], v7);
      }

      v25 = 10 * v10[5].i32[1];
      v16[0] = v21;
      __p = v22;
      v18 = v23;
      v19 = v24;
      v20 = v25;
      v13 = a3[1];
      if (v13 < a3[2])
      {
        *v13 = v21;
        v8 = __p;
        *(v13 + 24) = v18;
        *(v13 + 8) = v8;
        v18 = 0;
        __p = 0uLL;
        v9 = v20;
        *(v13 + 32) = v19;
        *(v13 + 40) = v9;
        a3[1] = v13 + 48;
      }

      else
      {
        v14 = sub_E8CFC0(a3, v16);
        v15 = SHIBYTE(v18);
        a3[1] = v14;
        if (v15 < 0)
        {
          operator delete(__p);
        }
      }

      ++v6;
    }

    while (v6 != a2);
  }

  return a3;
}

void sub_E8DB0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_E8DB3C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = v2 + 8;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a1 + 8);
  v11 = a2;
  if (v4)
  {
    v5 = 8 * v4;
    do
    {
      v6 = *(*v3 + 48) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v6 + 23) < 0)
      {
        sub_325C(__p, *v6, *(v6 + 8));
      }

      else
      {
        v7 = *v6;
        v10 = *(v6 + 16);
        *__p = v7;
      }

      sub_9A5A0(&v11, __p);
      if (SHIBYTE(v10) < 0)
      {
        operator delete(__p[0]);
      }

      v3 += 8;
      v5 -= 8;
    }

    while (v5);
    return v11;
  }

  return a2;
}

void sub_E8DBEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_E8DC08(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = v2 + 8;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a1 + 8);
  v11 = a2;
  if (v4)
  {
    v5 = 8 * v4;
    do
    {
      v6 = *(*v3 + 48) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v6 + 23) < 0)
      {
        sub_325C(__p, *v6, *(v6 + 8));
      }

      else
      {
        v7 = *v6;
        v10 = *(v6 + 16);
        *__p = v7;
      }

      sub_9A5A0(&v11, __p);
      if (SHIBYTE(v10) < 0)
      {
        operator delete(__p[0]);
      }

      v3 += 8;
      v5 -= 8;
    }

    while (v5);
    return v11;
  }

  return a2;
}

void sub_E8DCB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_E8DCD4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = v2 + 8;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a1 + 8);
  v11 = a2;
  if (v4)
  {
    v5 = 8 * v4;
    do
    {
      v6 = *(*v3 + 56) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v6 + 23) < 0)
      {
        sub_325C(__p, *v6, *(v6 + 8));
      }

      else
      {
        v7 = *v6;
        v10 = *(v6 + 16);
        *__p = v7;
      }

      sub_9A5A0(&v11, __p);
      if (SHIBYTE(v10) < 0)
      {
        operator delete(__p[0]);
      }

      v3 += 8;
      v5 -= 8;
    }

    while (v5);
    return v11;
  }

  return a2;
}

void sub_E8DD84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_E8DDA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = v2 + 8;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a1 + 8);
  v11 = a2;
  if (v4)
  {
    v5 = 8 * v4;
    do
    {
      v6 = *(*v3 + 464) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v6 + 23) < 0)
      {
        sub_325C(__p, *v6, *(v6 + 8));
      }

      else
      {
        v7 = *v6;
        v10 = *(v6 + 16);
        *__p = v7;
      }

      sub_9A5A0(&v11, __p);
      if (SHIBYTE(v10) < 0)
      {
        operator delete(__p[0]);
      }

      v3 += 8;
      v5 -= 8;
    }

    while (v5);
    return v11;
  }

  return a2;
}

void sub_E8DE50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_E90CB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, void *a63)
{
  if (SLOBYTE(STACK[0x3A7]) < 0)
  {
    operator delete(STACK[0x390]);
    if ((SLOBYTE(STACK[0x38F]) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((SLOBYTE(STACK[0x38F]) & 0x80000000) == 0)
  {
LABEL_3:
    if (SLOBYTE(STACK[0x377]) < 0)
    {
      goto LABEL_4;
    }

    goto LABEL_18;
  }

  operator delete(STACK[0x378]);
  if (SLOBYTE(STACK[0x377]) < 0)
  {
LABEL_4:
    operator delete(STACK[0x360]);
    if ((SLOBYTE(STACK[0x35F]) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  if ((SLOBYTE(STACK[0x35F]) & 0x80000000) == 0)
  {
LABEL_5:
    if (SLOBYTE(STACK[0x347]) < 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(STACK[0x348]);
  if (SLOBYTE(STACK[0x347]) < 0)
  {
LABEL_6:
    operator delete(STACK[0x330]);
    if ((SLOBYTE(STACK[0x32F]) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  if ((SLOBYTE(STACK[0x32F]) & 0x80000000) == 0)
  {
LABEL_7:
    if (SLOBYTE(STACK[0x317]) < 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  operator delete(STACK[0x318]);
  if (SLOBYTE(STACK[0x317]) < 0)
  {
LABEL_8:
    operator delete(STACK[0x300]);
    if ((SLOBYTE(STACK[0x2FF]) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  if ((SLOBYTE(STACK[0x2FF]) & 0x80000000) == 0)
  {
LABEL_9:
    if (SLOBYTE(STACK[0x2E7]) < 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  operator delete(STACK[0x2E8]);
  if (SLOBYTE(STACK[0x2E7]) < 0)
  {
LABEL_10:
    operator delete(STACK[0x2D0]);
    if ((SLOBYTE(STACK[0x2CF]) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  if ((SLOBYTE(STACK[0x2CF]) & 0x80000000) == 0)
  {
LABEL_11:
    if (SLOBYTE(STACK[0x2B7]) < 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  operator delete(STACK[0x2B8]);
  if (SLOBYTE(STACK[0x2B7]) < 0)
  {
LABEL_12:
    operator delete(STACK[0x2A0]);
    if ((SLOBYTE(STACK[0x29F]) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  if ((SLOBYTE(STACK[0x29F]) & 0x80000000) == 0)
  {
LABEL_13:
    if (SLOBYTE(STACK[0x287]) < 0)
    {
      goto LABEL_14;
    }

    goto LABEL_28;
  }

LABEL_27:
  operator delete(STACK[0x288]);
  if (SLOBYTE(STACK[0x287]) < 0)
  {
LABEL_14:
    operator delete(STACK[0x270]);
    if (SLOBYTE(STACK[0x26F]) < 0)
    {
LABEL_37:
      operator delete(STACK[0x258]);
      if ((SLOBYTE(STACK[0x257]) & 0x80000000) == 0)
      {
LABEL_38:
        if (SLOBYTE(STACK[0x23F]) < 0)
        {
LABEL_39:
          operator delete(STACK[0x228]);
          if ((SLOBYTE(STACK[0x227]) & 0x80000000) == 0)
          {
LABEL_40:
            if (SLOBYTE(STACK[0x20F]) < 0)
            {
LABEL_41:
              operator delete(a70);
              if ((a69 & 0x80000000) == 0)
              {
LABEL_42:
                if (a67 < 0)
                {
LABEL_43:
                  operator delete(a66);
                  if ((a65 & 0x80000000) == 0)
                  {
LABEL_44:
                    _Unwind_Resume(a1);
                  }

LABEL_36:
                  operator delete(a63);
                  _Unwind_Resume(a1);
                }

LABEL_35:
                if ((a65 & 0x80000000) == 0)
                {
                  goto LABEL_44;
                }

                goto LABEL_36;
              }

LABEL_34:
              operator delete(a68);
              if (a67 < 0)
              {
                goto LABEL_43;
              }

              goto LABEL_35;
            }

LABEL_33:
            if ((a69 & 0x80000000) == 0)
            {
              goto LABEL_42;
            }

            goto LABEL_34;
          }

LABEL_32:
          operator delete(STACK[0x210]);
          if (SLOBYTE(STACK[0x20F]) < 0)
          {
            goto LABEL_41;
          }

          goto LABEL_33;
        }

LABEL_31:
        if ((SLOBYTE(STACK[0x227]) & 0x80000000) == 0)
        {
          goto LABEL_40;
        }

        goto LABEL_32;
      }

LABEL_30:
      operator delete(STACK[0x240]);
      if (SLOBYTE(STACK[0x23F]) < 0)
      {
        goto LABEL_39;
      }

      goto LABEL_31;
    }

LABEL_29:
    if ((SLOBYTE(STACK[0x257]) & 0x80000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_30;
  }

LABEL_28:
  if (SLOBYTE(STACK[0x26F]) < 0)
  {
    goto LABEL_37;
  }

  goto LABEL_29;
}

void sub_E90ECC(uint64_t a1@<X0>, uint64_t a2@<X2>, __n128 *a3@<X8>)
{
  *v7 = 0;
  *&v7[8] = &off_2669FE0;
  v6 = sub_434934(a3, v7);
  sub_E9B4D4(v8, a1, 4u, a3, v6);
  sub_E81754(a1, a2);
}

void sub_E915CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (*(v15 - 105) < 0)
  {
    operator delete(*(v15 - 128));
  }

  sub_1959728(&__p);
  if (*(v15 - 73) < 0)
  {
    operator delete(*(v15 - 96));
    sub_CF3C94(v14);
    _Unwind_Resume(a1);
  }

  sub_CF3C94(v14);
  _Unwind_Resume(a1);
}

void sub_E91740(uint64_t a1, unsigned int a2, __int128 *a3)
{
  *&v8 = a2;
  *(&v8 + 1) = &off_2669FE0;
  v9[0] = 1;
  if (*(a3 + 23) < 0)
  {
    sub_325C(&v10, *a3, *(a3 + 1));
  }

  else
  {
    v10 = *a3;
    v11 = *(a3 + 2);
  }

  sub_435A00(&__p, v9, 1uLL);
  sub_4349A4(a1, &v8, &__p);
  v4 = __p.n128_u64[0];
  if (__p.n128_u64[0])
  {
    v5 = __p.n128_u64[1];
    v6 = __p.n128_u64[0];
    if (__p.n128_u64[1] != __p.n128_u64[0])
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
      v6 = __p.n128_u64[0];
    }

    __p.n128_u64[1] = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(v10);
  }
}

void sub_E91858(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  sub_2430CC(&a11);
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_E91884(uint64_t a1@<X0>, __n128 *a3@<X8>)
{
  v9[0] = 0;
  v9[1] = &off_2669FE0;
  sub_434934(a3, v9);
  sub_E9BBEC(v10, a1, 4u, a3);
  nullsub_1();
  if (*(v5 + 128) == 1)
  {
    nullsub_1();
    sub_4F96C0(v6);
  }

  nullsub_1();
  if (*(v7 + 128) == 1)
  {
    nullsub_1();
    sub_4F96C8(v8);
  }

  operator new();
}

void sub_E91B78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25)
{
  sub_CF3C94(&a10);
  operator delete(v26);
  if ((*(v27 - 57) & 0x80000000) == 0)
  {
    sub_CF3C94(v25);
    _Unwind_Resume(a1);
  }

  operator delete(*(v27 - 80));
  sub_CF3C94(v25);
  _Unwind_Resume(a1);
}

void sub_E91C74(_DWORD *a1@<X0>, __n128 *a2@<X8>)
{
  v11.n128_u64[0] = 0;
  v11.n128_u64[1] = &off_2669FE0;
  sub_434934(a2, &v11);
  sub_E9B860(v21, a1, 4u, a2);
  v4 = a1[10];
  if ((v4 & 0x20) != 0)
  {
    if ((v4 & 0x100) == 0 || a1[22] <= 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v5 = a1[16];
    if ((v4 & 0x100) == 0)
    {
      if (v5 <= 0)
      {
LABEL_14:
        if ((v23 & 0x80000000) == 0)
        {
          return;
        }

LABEL_29:
        operator delete(v22);
        return;
      }

      goto LABEL_13;
    }

    if (v5 <= 0)
    {
      goto LABEL_14;
    }

    if (a1[22] < 1)
    {
LABEL_13:
      operator new();
    }
  }

  if (!sub_7E7E4(1u))
  {
    goto LABEL_14;
  }

  sub_19594F8(v11.n128_f64);
  sub_4A5C(&v11, "Got an ETARequest with current and deprecated waypoints.", 56);
  if ((v20 & 0x10) != 0)
  {
    v7 = v19;
    if (v19 < v16)
    {
      v19 = v16;
      v7 = v16;
    }

    v8 = v15;
    v6 = v7 - v15;
    if (v7 - v15 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_31;
    }
  }

  else
  {
    if ((v20 & 8) == 0)
    {
      v6 = 0;
      HIBYTE(v10) = 0;
      goto LABEL_24;
    }

    v8 = v13;
    v6 = v14 - v13;
    if ((v14 - v13) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_31:
      sub_3244();
    }
  }

  if (v6 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v10) = v6;
  if (v6)
  {
    memmove(&__dst, v8, v6);
  }

LABEL_24:
  *(&__dst + v6) = 0;
  sub_7E854(&__dst, 1u);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__dst);
  }

  if (v18 < 0)
  {
    operator delete(v17);
  }

  std::locale::~locale(&__p);
  std::ostream::~ostream();
  std::ios::~ios();
  if (v23 < 0)
  {
    goto LABEL_29;
  }
}

void sub_E92010(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a16);
  if (*(v17 - 57) < 0)
  {
    operator delete(*(v17 - 80));
    sub_CF3C94(v16);
    _Unwind_Resume(a1);
  }

  sub_CF3C94(v16);
  _Unwind_Resume(a1);
}

void sub_E9209C(uint64_t a1@<X0>, int *a2@<X1>, void *a3@<X8>)
{
  *(a1 + 40) |= 0x20u;
  v6 = *(a1 + 336);
  if (v6)
  {
    *(v6 + 16) |= 2u;
    v7 = *(v6 + 80);
    if (v7)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v8 = *(a1 + 8);
  v9 = (v8 & 0xFFFFFFFFFFFFFFFCLL);
  if (v8)
  {
    v9 = *v9;
  }

  v6 = sub_14BD814(v9);
  *(a1 + 336) = v6;
  *(v6 + 16) |= 2u;
  v7 = *(v6 + 80);
  if (!v7)
  {
LABEL_7:
    v10 = *(v6 + 8);
    v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
    if (v10)
    {
      v11 = *v11;
    }

    v7 = sub_14BD794(v11);
    *(v6 + 80) = v7;
  }

LABEL_10:
  v12 = *a2 + -978307200.0;
  v13 = *(v7 + 16);
  *(v7 + 16) = v13 | 1;
  v14 = a2[1] + -978307200.0;
  *(v7 + 24) = v12;
  *(v7 + 32) = v14;
  v15 = a2[2] == 1;
  *(v7 + 16) = v13 | 7;
  *(v7 + 40) = v15;
  sub_1957E24(a1, __p);
  sub_12201C0(__p, 0, a3);
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_E921E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_E921FC(uint64_t a1@<X0>, int *a2@<X1>, void *a3@<X8>)
{
  *(a1 + 40) |= 0x40u;
  v6 = *(a1 + 312);
  if (v6)
  {
    *(v6 + 16) |= 2u;
    v7 = *(v6 + 80);
    if (v7)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v8 = *(a1 + 8);
  v9 = (v8 & 0xFFFFFFFFFFFFFFFCLL);
  if (v8)
  {
    v9 = *v9;
  }

  v6 = sub_14BD814(v9);
  *(a1 + 312) = v6;
  *(v6 + 16) |= 2u;
  v7 = *(v6 + 80);
  if (!v7)
  {
LABEL_7:
    v10 = *(v6 + 8);
    v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
    if (v10)
    {
      v11 = *v11;
    }

    v7 = sub_14BD794(v11);
    *(v6 + 80) = v7;
  }

LABEL_10:
  v12 = *a2 + -978307200.0;
  v13 = *(v7 + 16);
  *(v7 + 16) = v13 | 1;
  v14 = a2[1] + -978307200.0;
  *(v7 + 24) = v12;
  *(v7 + 32) = v14;
  v15 = a2[2] == 1;
  *(v7 + 16) = v13 | 7;
  *(v7 + 40) = v15;
  sub_1957E24(a1, __p);
  sub_12201C0(__p, 0, a3);
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_E92340(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_E9235C(uint64_t a1@<X0>, int *a2@<X1>, void *a3@<X8>)
{
  *(a1 + 40) |= 0x10u;
  v5 = *(a1 + 280);
  if (!v5)
  {
    v6 = a1;
    v7 = *(a1 + 8);
    v8 = (v7 & 0xFFFFFFFFFFFFFFFCLL);
    if (v7)
    {
      v8 = *v8;
    }

    v5 = sub_14BD794(v8);
    a1 = v6;
    *(v6 + 280) = v5;
  }

  v9 = *a2 + -978307200.0;
  v10 = *(v5 + 16);
  *(v5 + 16) = v10 | 1;
  v11 = a2[1] + -978307200.0;
  *(v5 + 24) = v9;
  *(v5 + 32) = v11;
  v12 = a2[2] == 1;
  *(v5 + 16) = v10 | 7;
  *(v5 + 40) = v12;
  sub_1957E24(a1, __p);
  sub_12201C0(__p, 0, a3);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_E92458(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_E92474(uint64_t a1@<X0>, int *a2@<X1>, void *a3@<X8>)
{
  *(a1 + 40) |= 0x10u;
  v6 = *(a1 + 152);
  if (v6)
  {
    *(v6 + 16) |= 2u;
    v7 = *(v6 + 80);
    if (v7)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v8 = *(a1 + 8);
  v9 = (v8 & 0xFFFFFFFFFFFFFFFCLL);
  if (v8)
  {
    v9 = *v9;
  }

  v6 = sub_14BD814(v9);
  *(a1 + 152) = v6;
  *(v6 + 16) |= 2u;
  v7 = *(v6 + 80);
  if (!v7)
  {
LABEL_7:
    v10 = *(v6 + 8);
    v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
    if (v10)
    {
      v11 = *v11;
    }

    v7 = sub_14BD794(v11);
    *(v6 + 80) = v7;
  }

LABEL_10:
  v12 = *a2 + -978307200.0;
  v13 = *(v7 + 16);
  *(v7 + 16) = v13 | 1;
  v14 = a2[1] + -978307200.0;
  *(v7 + 24) = v12;
  *(v7 + 32) = v14;
  v15 = a2[2] == 1;
  *(v7 + 16) = v13 | 7;
  *(v7 + 40) = v15;
  sub_1957E24(a1, __p);
  sub_12201C0(__p, 0, a3);
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_E925B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *sub_E925D4@<X0>(int a1@<W0>, uint64_t a2@<X1>, int *a3@<X2>, void *a4@<X8>)
{
  if (a1 <= 51)
  {
    if (a1 != 44)
    {
      if (a1 == 48)
      {
        sub_14C5B60(v22, 0, 0);
        sub_122030C(a2, 0, __p);
        v7 = sub_194DB28(v22, __p);
        if (v21 < 0)
        {
          v11 = v7;
          operator delete(__p[0]);
          if (v11)
          {
            goto LABEL_6;
          }
        }

        else if (v7)
        {
LABEL_6:
          sub_14C65CC(v18, v22);
          sub_E921FC(v18, a3, a4);
          sub_14C6928(v18);
          return sub_14C6928(v22);
        }

        operator new();
      }

LABEL_12:
      operator new();
    }

    sub_1753618(v22, 0, 0);
    sub_122030C(a2, 0, __p);
    v9 = sub_194DB28(v22, __p);
    if (v21 < 0)
    {
      v14 = v9;
      operator delete(__p[0]);
      if (v14)
      {
        goto LABEL_15;
      }
    }

    else if (v9)
    {
LABEL_15:
      sub_17541D0(v19, v22);
      sub_E9209C(v19, a3, a4);
      sub_1754598(v19);
      return sub_1754598(v22);
    }

    operator new();
  }

  if (a1 != 52)
  {
    if (a1 != 1026)
    {
      goto LABEL_12;
    }

    sub_1438EE8(v22, 0, 0);
    sub_122030C(a2, 0, __p);
    v8 = sub_194DB28(v22, __p);
    if (v21 < 0)
    {
      v13 = v8;
      operator delete(__p[0]);
      if (v13)
      {
        goto LABEL_11;
      }
    }

    else if (v8)
    {
LABEL_11:
      sub_1439378(v16, v22);
      sub_E92474(v16, a3, a4);
      sub_1439560(v16);
      return sub_1439560(v22);
    }

    operator new();
  }

  sub_14CC850(v22, 0, 0);
  sub_122030C(a2, 0, __p);
  v10 = sub_194DB28(v22, __p);
  if (v21 < 0)
  {
    v15 = v10;
    operator delete(__p[0]);
    if (v15)
    {
      goto LABEL_18;
    }

LABEL_26:
    operator new();
  }

  if ((v10 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_18:
  sub_14CD338(v17, v22);
  sub_E9235C(v17, a3, a4);
  sub_14CD6F8(v17);
  return sub_14CD6F8(v22);
}

void sub_E929E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  sub_14CD6F8(&a33);
  sub_14CD6F8(&STACK[0x690]);
  _Unwind_Resume(a1);
}

void sub_E92A04(_Unwind_Exception *a1)
{
  sub_1754598(&STACK[0x458]);
  sub_1754598(&STACK[0x690]);
  _Unwind_Resume(a1);
}

void sub_E92A20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1439560(&a9);
  sub_1439560(&STACK[0x690]);
  _Unwind_Resume(a1);
}

void sub_E92A3C(_Unwind_Exception *a1)
{
  sub_14C6928(&STACK[0x288]);
  sub_14C6928(&STACK[0x690]);
  _Unwind_Resume(a1);
}

void sub_E92B48(uint64_t a1@<X0>, const void ***a2@<X1>, __n128 *a3@<X8>)
{
  v3 = a2;
  if ((*(a1 + 40) & 4) != 0)
  {
    v6 = *(a1 + 312) & 0xFFFFFFFFFFFFFFFELL;
    if ((*(v6 + 23) & 0x8000000000000000) != 0)
    {
      if (*(v6 + 8))
      {
LABEL_4:
        sub_11FD59C(&v30, 0, 0);
        if (sub_194DB28(&v30, *(a1 + 312) & 0xFFFFFFFFFFFFFFFELL))
        {
          __p.__r_.__value_.__r.__words[0] = 0;
          __p.__r_.__value_.__l.__size_ = &off_2669FE0;
          sub_434934(a3, &__p);
LABEL_63:
          sub_11FD994(&v30);
          return;
        }

        if (*(v3 + 23) >= 0)
        {
          v15 = *(v3 + 23);
        }

        else
        {
          v15 = v3[1];
        }

        if (v15 + 6 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_3244();
        }

        if (v15 + 6 >= 0x17)
        {
          operator new();
        }

        __p.__r_.__value_.__r.__words[2] = 0;
        *(&__p.__r_.__value_.__s + 23) = v15 + 6;
        *&__p.__r_.__value_.__l.__data_ = 0x206120746F47uLL;
        if (v15)
        {
          if (*(v3 + 23) >= 0)
          {
            v16 = v3;
          }

          else
          {
            v16 = *v3;
          }

          memmove(__p.__r_.__value_.__r.__words + 6, v16, v15);
        }

        *(__p.__r_.__value_.__r.__words + v15 + 6) = 0;
        v17 = std::string::append(&__p, " with a malformed session_state.", 0x20uLL);
        v18 = v17->__r_.__value_.__r.__words[0];
        size = v17->__r_.__value_.__l.__size_;
        v26[0] = v17->__r_.__value_.__r.__words[2];
        *(v26 + 3) = *(&v17->__r_.__value_.__r.__words[2] + 3);
        v20 = SHIBYTE(v17->__r_.__value_.__r.__words[2]);
        v17->__r_.__value_.__l.__size_ = 0;
        v17->__r_.__value_.__r.__words[2] = 0;
        v17->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
          *&v25 = 7;
          *(&v25 + 1) = &off_2669FE0;
          __p.__r_.__value_.__s.__data_[0] = 0;
          if ((v20 & 0x80000000) == 0)
          {
            goto LABEL_48;
          }
        }

        else
        {
          *&v25 = 7;
          *(&v25 + 1) = &off_2669FE0;
          __p.__r_.__value_.__s.__data_[0] = 0;
          if ((v20 & 0x80000000) == 0)
          {
LABEL_48:
            __p.__r_.__value_.__l.__size_ = v18;
            __p.__r_.__value_.__r.__words[2] = size;
            *v28 = v26[0];
            *&v28[3] = *(v26 + 3);
            v29 = v20;
LABEL_51:
            sub_435A00(&v24, &__p, 1uLL);
            sub_4349A4(a3, &v25, &v24);
            v21 = v24.n128_u64[0];
            if (v24.n128_u64[0])
            {
              v22 = v24.n128_u64[1];
              v23 = v24.n128_u64[0];
              if (v24.n128_u64[1] != v24.n128_u64[0])
              {
                do
                {
                  if (*(v22 - 1) < 0)
                  {
                    operator delete(*(v22 - 24));
                  }

                  v22 -= 32;
                }

                while (v22 != v21);
                v23 = v24.n128_u64[0];
              }

              v24.n128_u64[1] = v21;
              operator delete(v23);
            }

            if (v29 < 0)
            {
              operator delete(__p.__r_.__value_.__l.__size_);
            }

            if (v20 < 0)
            {
              operator delete(v18);
            }

            goto LABEL_63;
          }
        }

        sub_325C(&__p.__r_.__value_.__s.__data_[8], v18, size);
        goto LABEL_51;
      }
    }

    else if (*(v6 + 23))
    {
      goto LABEL_4;
    }
  }

  if (*(a2 + 23) >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = a2[1];
  }

  if (v7 + 6 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v7 + 6 >= 0x17)
  {
    operator new();
  }

  *&v30.__r_.__value_.__r.__words[1] = 0uLL;
  *(&v30.__r_.__value_.__s + 23) = v7 + 6;
  v30.__r_.__value_.__r.__words[0] = 0x206120746F47;
  if (v7)
  {
    if (*(a2 + 23) < 0)
    {
      a2 = *a2;
    }

    memmove(v30.__r_.__value_.__r.__words + 6, a2, v7);
  }

  *(v30.__r_.__value_.__r.__words + v7 + 6) = 0;
  v8 = std::string::append(&v30, " with missing session_state where routing expects one.", 0x36uLL);
  v9 = v8->__r_.__value_.__r.__words[0];
  v10 = v8->__r_.__value_.__l.__size_;
  LODWORD(v25) = v8->__r_.__value_.__r.__words[2];
  *(&v25 + 3) = *(&v8->__r_.__value_.__r.__words[2] + 3);
  v11 = SHIBYTE(v8->__r_.__value_.__r.__words[2]);
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
    v24.n128_u64[0] = 6;
    v24.n128_u64[1] = &off_2669FE0;
    v30.__r_.__value_.__s.__data_[0] = 0;
    if ((v11 & 0x80000000) == 0)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v24.n128_u64[0] = 6;
    v24.n128_u64[1] = &off_2669FE0;
    v30.__r_.__value_.__s.__data_[0] = 0;
    if ((v11 & 0x80000000) == 0)
    {
LABEL_19:
      v30.__r_.__value_.__l.__size_ = v9;
      v30.__r_.__value_.__r.__words[2] = v10;
      *v31 = v25;
      *&v31[3] = *(&v25 + 3);
      v32 = v11;
      goto LABEL_22;
    }
  }

  sub_325C(&v30.__r_.__value_.__s.__data_[8], v9, v10);
LABEL_22:
  sub_435A00(&__p, &v30, 1uLL);
  sub_4349A4(a3, &v24, &__p);
  v12 = __p.__r_.__value_.__r.__words[0];
  if (__p.__r_.__value_.__r.__words[0])
  {
    v13 = __p.__r_.__value_.__l.__size_;
    v14 = __p.__r_.__value_.__r.__words[0];
    if (__p.__r_.__value_.__l.__size_ != __p.__r_.__value_.__r.__words[0])
    {
      do
      {
        if (*(v13 - 1) < 0)
        {
          operator delete(*(v13 - 24));
        }

        v13 -= 32;
      }

      while (v13 != v12);
      v14 = __p.__r_.__value_.__r.__words[0];
    }

    __p.__r_.__value_.__l.__size_ = v12;
    operator delete(v14);
  }

  if ((v32 & 0x80000000) == 0)
  {
    if ((v11 & 0x80000000) == 0)
    {
      return;
    }

LABEL_34:
    operator delete(v9);
    return;
  }

  operator delete(v30.__r_.__value_.__l.__size_);
  if (v11 < 0)
  {
    goto LABEL_34;
  }
}

void sub_E93054(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  operator delete(v19);
  sub_11FD994(va);
  _Unwind_Resume(a1);
}

void sub_E93070(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *__p, int a18, __int16 a19, char a20, char a21, int a22, __int16 a23, char a24, char a25, uint64_t a26)
{
  sub_2430CC(&a10);
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (v27 < 0)
  {
    operator delete(v26);
    sub_11FD994(&a26);
    _Unwind_Resume(a1);
  }

  sub_11FD994(&a26);
  _Unwind_Resume(a1);
}

void sub_E93108(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, void *__p, int a22, __int16 a23, char a24, char a25, int a26, __int16 a27, char a28, char a29)
{
  sub_2430CC(&a16);
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (v30 < 0)
  {
    operator delete(v29);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_E9315C(uint64_t a1@<X0>, const void ***a2@<X1>, __n128 *a3@<X8>)
{
  v3 = a2;
  if ((*(a1 + 40) & 2) != 0)
  {
    v6 = *(a1 + 272) & 0xFFFFFFFFFFFFFFFELL;
    if ((*(v6 + 23) & 0x8000000000000000) != 0)
    {
      if (*(v6 + 8))
      {
LABEL_4:
        sub_11FD59C(&v30, 0, 0);
        if (sub_194DB28(&v30, *(a1 + 272) & 0xFFFFFFFFFFFFFFFELL))
        {
          __p.__r_.__value_.__r.__words[0] = 0;
          __p.__r_.__value_.__l.__size_ = &off_2669FE0;
          sub_434934(a3, &__p);
LABEL_63:
          sub_11FD994(&v30);
          return;
        }

        if (*(v3 + 23) >= 0)
        {
          v15 = *(v3 + 23);
        }

        else
        {
          v15 = v3[1];
        }

        if (v15 + 6 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_3244();
        }

        if (v15 + 6 >= 0x17)
        {
          operator new();
        }

        __p.__r_.__value_.__r.__words[2] = 0;
        *(&__p.__r_.__value_.__s + 23) = v15 + 6;
        *&__p.__r_.__value_.__l.__data_ = 0x206120746F47uLL;
        if (v15)
        {
          if (*(v3 + 23) >= 0)
          {
            v16 = v3;
          }

          else
          {
            v16 = *v3;
          }

          memmove(__p.__r_.__value_.__r.__words + 6, v16, v15);
        }

        *(__p.__r_.__value_.__r.__words + v15 + 6) = 0;
        v17 = std::string::append(&__p, " with a malformed session_state.", 0x20uLL);
        v18 = v17->__r_.__value_.__r.__words[0];
        size = v17->__r_.__value_.__l.__size_;
        v26[0] = v17->__r_.__value_.__r.__words[2];
        *(v26 + 3) = *(&v17->__r_.__value_.__r.__words[2] + 3);
        v20 = SHIBYTE(v17->__r_.__value_.__r.__words[2]);
        v17->__r_.__value_.__l.__size_ = 0;
        v17->__r_.__value_.__r.__words[2] = 0;
        v17->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
          *&v25 = 7;
          *(&v25 + 1) = &off_2669FE0;
          __p.__r_.__value_.__s.__data_[0] = 0;
          if ((v20 & 0x80000000) == 0)
          {
            goto LABEL_48;
          }
        }

        else
        {
          *&v25 = 7;
          *(&v25 + 1) = &off_2669FE0;
          __p.__r_.__value_.__s.__data_[0] = 0;
          if ((v20 & 0x80000000) == 0)
          {
LABEL_48:
            __p.__r_.__value_.__l.__size_ = v18;
            __p.__r_.__value_.__r.__words[2] = size;
            *v28 = v26[0];
            *&v28[3] = *(v26 + 3);
            v29 = v20;
LABEL_51:
            sub_435A00(&v24, &__p, 1uLL);
            sub_4349A4(a3, &v25, &v24);
            v21 = v24.n128_u64[0];
            if (v24.n128_u64[0])
            {
              v22 = v24.n128_u64[1];
              v23 = v24.n128_u64[0];
              if (v24.n128_u64[1] != v24.n128_u64[0])
              {
                do
                {
                  if (*(v22 - 1) < 0)
                  {
                    operator delete(*(v22 - 24));
                  }

                  v22 -= 32;
                }

                while (v22 != v21);
                v23 = v24.n128_u64[0];
              }

              v24.n128_u64[1] = v21;
              operator delete(v23);
            }

            if (v29 < 0)
            {
              operator delete(__p.__r_.__value_.__l.__size_);
            }

            if (v20 < 0)
            {
              operator delete(v18);
            }

            goto LABEL_63;
          }
        }

        sub_325C(&__p.__r_.__value_.__s.__data_[8], v18, size);
        goto LABEL_51;
      }
    }

    else if (*(v6 + 23))
    {
      goto LABEL_4;
    }
  }

  if (*(a2 + 23) >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = a2[1];
  }

  if (v7 + 6 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v7 + 6 >= 0x17)
  {
    operator new();
  }

  *&v30.__r_.__value_.__r.__words[1] = 0uLL;
  *(&v30.__r_.__value_.__s + 23) = v7 + 6;
  v30.__r_.__value_.__r.__words[0] = 0x206120746F47;
  if (v7)
  {
    if (*(a2 + 23) < 0)
    {
      a2 = *a2;
    }

    memmove(v30.__r_.__value_.__r.__words + 6, a2, v7);
  }

  *(v30.__r_.__value_.__r.__words + v7 + 6) = 0;
  v8 = std::string::append(&v30, " with missing session_state where routing expects one.", 0x36uLL);
  v9 = v8->__r_.__value_.__r.__words[0];
  v10 = v8->__r_.__value_.__l.__size_;
  LODWORD(v25) = v8->__r_.__value_.__r.__words[2];
  *(&v25 + 3) = *(&v8->__r_.__value_.__r.__words[2] + 3);
  v11 = SHIBYTE(v8->__r_.__value_.__r.__words[2]);
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
    v24.n128_u64[0] = 6;
    v24.n128_u64[1] = &off_2669FE0;
    v30.__r_.__value_.__s.__data_[0] = 0;
    if ((v11 & 0x80000000) == 0)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v24.n128_u64[0] = 6;
    v24.n128_u64[1] = &off_2669FE0;
    v30.__r_.__value_.__s.__data_[0] = 0;
    if ((v11 & 0x80000000) == 0)
    {
LABEL_19:
      v30.__r_.__value_.__l.__size_ = v9;
      v30.__r_.__value_.__r.__words[2] = v10;
      *v31 = v25;
      *&v31[3] = *(&v25 + 3);
      v32 = v11;
      goto LABEL_22;
    }
  }

  sub_325C(&v30.__r_.__value_.__s.__data_[8], v9, v10);
LABEL_22:
  sub_435A00(&__p, &v30, 1uLL);
  sub_4349A4(a3, &v24, &__p);
  v12 = __p.__r_.__value_.__r.__words[0];
  if (__p.__r_.__value_.__r.__words[0])
  {
    v13 = __p.__r_.__value_.__l.__size_;
    v14 = __p.__r_.__value_.__r.__words[0];
    if (__p.__r_.__value_.__l.__size_ != __p.__r_.__value_.__r.__words[0])
    {
      do
      {
        if (*(v13 - 1) < 0)
        {
          operator delete(*(v13 - 24));
        }

        v13 -= 32;
      }

      while (v13 != v12);
      v14 = __p.__r_.__value_.__r.__words[0];
    }

    __p.__r_.__value_.__l.__size_ = v12;
    operator delete(v14);
  }

  if ((v32 & 0x80000000) == 0)
  {
    if ((v11 & 0x80000000) == 0)
    {
      return;
    }

LABEL_34:
    operator delete(v9);
    return;
  }

  operator delete(v30.__r_.__value_.__l.__size_);
  if (v11 < 0)
  {
    goto LABEL_34;
  }
}

void sub_E93668(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  operator delete(v19);
  sub_11FD994(va);
  _Unwind_Resume(a1);
}

void sub_E93684(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *__p, int a18, __int16 a19, char a20, char a21, int a22, __int16 a23, char a24, char a25, uint64_t a26)
{
  sub_2430CC(&a10);
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (v27 < 0)
  {
    operator delete(v26);
    sub_11FD994(&a26);
    _Unwind_Resume(a1);
  }

  sub_11FD994(&a26);
  _Unwind_Resume(a1);
}

void sub_E9371C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, void *__p, int a22, __int16 a23, char a24, char a25, int a26, __int16 a27, char a28, char a29)
{
  sub_2430CC(&a16);
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (v30 < 0)
  {
    operator delete(v29);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_E93770(void *a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X8>)
{
  v3 = a2;
  v30.n128_u64[0] = 0;
  v30.n128_u64[1] = &off_2669FE0;
  v6 = sub_434934(a3, &v30);
  sub_E9B4D4(&v30, a1, v3, a3, v6);
  if (sub_585D8(&v30))
  {
    v7 = a1[45];
    if (!v7)
    {
      v7 = &off_2776700;
    }

    if ((*(v7 + 246) & 1) == 0)
    {
      v8 = a1[42];
      if (!v8)
      {
        v8 = &off_2772E28;
      }

      v9 = v8[11];
      if (!v9)
      {
        v9 = &off_2773678;
      }

      v10 = v9[4];
      if (!v10)
      {
        v10 = &off_2773608;
      }

      if ((v10[2] & 2) != 0)
      {
        operator new();
      }
    }

    if (!sub_E79FF8(a1))
    {
      if (sub_E7A5E0(a1) == 7)
      {
        operator new();
      }

      v11 = &off_27721B8;
      if (a1[53])
      {
        v11 = a1[53];
      }

      v12 = *(v11 + 8);
      if (v12 >= 2)
      {
        v13 = v11[5];
        v14 = v13 ? (v13 + 1) : 0;
        v15 = 8 * v12;
        if (8 * v12 != 8)
        {
          v16 = v14 + 8;
          v17 = v14 + v15;
          while (1)
          {
            v18 = *(*v16 + 72);
            if (!v18)
            {
              v18 = &off_2772310;
            }

            if (*(v18 + 26) == 1)
            {
              break;
            }

            v16 += 8;
            if (v16 == v17)
            {
              goto LABEL_31;
            }
          }

          if (!sub_E816E4(a1))
          {
            operator new();
          }
        }
      }
    }

LABEL_31:
    if (a1[45])
    {
      v19 = a1[45];
    }

    else
    {
      v19 = &off_2776700;
    }

    v20 = *(v19 + 18);
    if (v20)
    {
      v21 = 0;
      v22 = v19[10];
      v23 = 4 * v20;
      do
      {
        v24 = sub_899A0(*v22);
        if (v24 == 5)
        {
          operator new();
        }

        if (((1 << v24) & v21) != 0)
        {
          if (v24 > 5)
          {
            v25 = 0;
            v26 = "";
          }

          else
          {
            v25 = qword_22ACDE0[v24];
            v26 = off_2674408[v24];
          }

          v27[0] = v26;
          v27[1] = v25;
          sub_E93C68("The field clientCapabilities.supports_multipoint_routing contains duplicate entry for ", v27, __p);
          sub_E9BF80(&v30, 5, __p);
          if (v29 < 0)
          {
            operator delete(__p[0]);
          }
        }

        v21 |= 1 << v24;
        v22 = (v22 + 4);
        v23 -= 4;
      }

      while (v23);
    }
  }

  if (v31 < 0)
  {
    operator delete(v30.n128_u64[1]);
  }
}

void sub_E93BCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if ((a27 & 0x80000000) == 0)
    {
LABEL_3:
      sub_CF3C94(a10);
      _Unwind_Resume(a1);
    }
  }

  else if ((a27 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a22);
  sub_CF3C94(a10);
  _Unwind_Resume(a1);
}

uint64_t sub_E93C68@<X0>(const char *a1@<X0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  sub_D7B0(v13);
  v6 = strlen(a1);
  v7 = sub_4A5C(&v14, a1, v6);
  sub_4A5C(v7, *a2, a2[1]);
  if ((v24 & 0x10) != 0)
  {
    v9 = v23;
    if (v23 < v20)
    {
      v23 = v20;
      v9 = v20;
    }

    v10 = v19;
    v8 = v9 - v19;
    if (v9 - v19 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if ((v24 & 8) == 0)
    {
      v8 = 0;
      a3[23] = 0;
      goto LABEL_12;
    }

    v10 = v17;
    v8 = v18 - v17;
    if ((v18 - v17) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_16:
      sub_3244();
    }
  }

  if (v8 >= 0x17)
  {
    operator new();
  }

  a3[23] = v8;
  if (v8)
  {
    memmove(a3, v10, v8);
  }

LABEL_12:
  a3[v8] = 0;
  v14 = v11;
  if (v22 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v16);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_E93ED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

void sub_E93EE4(void *a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X8>)
{
  v3 = a2;
  v29.n128_u64[0] = 0;
  v29.n128_u64[1] = &off_2669FE0;
  sub_434934(a3, &v29);
  sub_E9BBEC(&v29, a1, v3, a3);
  if (sub_585D8(&v29))
  {
    v6 = a1[40];
    if (!v6)
    {
      v6 = &off_2776700;
    }

    if ((*(v6 + 246) & 1) == 0)
    {
      v7 = a1[39];
      if (!v7)
      {
        v7 = &off_2772E28;
      }

      v8 = v7[11];
      if (!v8)
      {
        v8 = &off_2773678;
      }

      v9 = v8[4];
      if (!v9)
      {
        v9 = &off_2773608;
      }

      if ((v9[2] & 2) != 0)
      {
        operator new();
      }
    }

    if ((sub_E7C0C0(a1) & 1) == 0)
    {
      if (sub_394BD0() == 7)
      {
        operator new();
      }

      v10 = &off_2773F38;
      if (a1[45])
      {
        v10 = a1[45];
      }

      v11 = *(v10 + 8);
      if (v11 >= 2)
      {
        v12 = v10[5];
        v13 = v12 ? (v12 + 1) : 0;
        v14 = 8 * v11;
        if (8 * v11 != 8)
        {
          v15 = v13 + 8;
          v16 = v13 + v14;
          while (1)
          {
            v17 = *(*v15 + 480);
            if (!v17)
            {
              v17 = &off_2772310;
            }

            if (*(v17 + 26) == 1)
            {
              break;
            }

            v15 += 8;
            if (v15 == v16)
            {
              goto LABEL_31;
            }
          }

          if ((sub_394BD0() & 1) == 0)
          {
            operator new();
          }
        }
      }
    }

LABEL_31:
    if (a1[40])
    {
      v18 = a1[40];
    }

    else
    {
      v18 = &off_2776700;
    }

    v19 = *(v18 + 18);
    if (v19)
    {
      v20 = 0;
      v21 = v18[10];
      v22 = 4 * v19;
      do
      {
        v23 = sub_899A0(*v21);
        if (v23 == 5)
        {
          operator new();
        }

        if (((1 << v23) & v20) != 0)
        {
          if (v23 > 5)
          {
            v24 = 0;
            v25 = "";
          }

          else
          {
            v24 = qword_22ACDE0[v23];
            v25 = off_2674408[v23];
          }

          v26[0] = v25;
          v26[1] = v24;
          sub_E93C68("The field clientCapabilities.supports_multipoint_routing contains duplicate entry for ", v26, __p);
          sub_E9BF80(&v29, 5, __p);
          if (v28 < 0)
          {
            operator delete(__p[0]);
          }
        }

        v20 |= 1 << v23;
        v21 = (v21 + 4);
        v22 -= 4;
      }

      while (v22);
    }
  }

  if (v30 < 0)
  {
    operator delete(v29.n128_u64[1]);
  }
}

void sub_E94340(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if ((a27 & 0x80000000) == 0)
    {
LABEL_3:
      sub_CF3C94(a10);
      _Unwind_Resume(a1);
    }
  }

  else if ((a27 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a22);
  sub_CF3C94(a10);
  _Unwind_Resume(a1);
}

void sub_E943DC(void *a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X8>)
{
  v3 = a2;
  v28.n128_u64[0] = 0;
  v28.n128_u64[1] = &off_2669FE0;
  sub_434934(a3, &v28);
  sub_E9B860(&v28, a1, v3, a3);
  if (sub_585D8(&v28))
  {
    v6 = a1[44];
    if (!v6)
    {
      v6 = &off_2776700;
    }

    if ((*(v6 + 246) & 1) == 0)
    {
      v7 = a1[40];
      if (!v7)
      {
        v7 = &off_2773678;
      }

      v8 = v7[4];
      if (!v8)
      {
        v8 = &off_2773608;
      }

      if ((v8[2] & 2) != 0)
      {
        operator new();
      }
    }

    if ((sub_E81C28(a1) & 1) == 0)
    {
      if (sub_394BD0() == 7)
      {
        operator new();
      }

      v9 = &off_27721B8;
      if (a1[48])
      {
        v9 = a1[48];
      }

      v10 = *(v9 + 8);
      if (v10 >= 2)
      {
        v11 = v9[5];
        v12 = v11 ? (v11 + 1) : 0;
        v13 = 8 * v10;
        if (8 * v10 != 8)
        {
          v14 = v12 + 8;
          v15 = v12 + v13;
          while (1)
          {
            v16 = *(*v14 + 72);
            if (!v16)
            {
              v16 = &off_2772310;
            }

            if (*(v16 + 26) == 1)
            {
              break;
            }

            v14 += 8;
            if (v14 == v15)
            {
              goto LABEL_29;
            }
          }

          if (!sub_E81708(a1))
          {
            operator new();
          }
        }
      }
    }

LABEL_29:
    if (a1[44])
    {
      v17 = a1[44];
    }

    else
    {
      v17 = &off_2776700;
    }

    v18 = *(v17 + 18);
    if (v18)
    {
      v19 = 0;
      v20 = v17[10];
      v21 = 4 * v18;
      do
      {
        v22 = sub_899A0(*v20);
        if (v22 == 5)
        {
          operator new();
        }

        if (((1 << v22) & v19) != 0)
        {
          if (v22 > 5)
          {
            v23 = 0;
            v24 = "";
          }

          else
          {
            v23 = qword_22ACDE0[v22];
            v24 = off_2674408[v22];
          }

          v25[0] = v24;
          v25[1] = v23;
          sub_E93C68("The field clientCapabilities.supports_multipoint_routing contains duplicate entry for ", v25, __p);
          sub_E9BF80(&v28, 5, __p);
          if (v27 < 0)
          {
            operator delete(__p[0]);
          }
        }

        v19 |= 1 << v22;
        v20 = (v20 + 4);
        v21 -= 4;
      }

      while (v21);
    }
  }

  if (v29 < 0)
  {
    operator delete(v28.n128_u64[1]);
  }
}

void sub_E94824(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if ((a27 & 0x80000000) == 0)
    {
LABEL_3:
      sub_CF3C94(a10);
      _Unwind_Resume(a1);
    }
  }

  else if ((a27 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a22);
  sub_CF3C94(a10);
  _Unwind_Resume(a1);
}

void sub_E948C0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __n128 *a4@<X8>)
{
  v4 = a3;
  *__p = 0;
  *&__p[8] = &off_2669FE0;
  sub_434934(a4, __p);
  sub_E9BBEC(v36, a1, v4, a4);
  if ((sub_585D8(v36) & 1) == 0)
  {
    goto LABEL_58;
  }

  v40 = 17;
  strcpy(__p, "RequestValidation");
  __dst = 0;
  v50 = 0;
  v51 = 0;
  v8 = sub_3AEC94(a2, __p, &__dst);
  v9 = __dst;
  if (__dst)
  {
    v10 = v50;
    v11 = __dst;
    if (v50 != __dst)
    {
      do
      {
        v12 = *(v10 - 1);
        v10 -= 3;
        if (v12 < 0)
        {
          operator delete(*v10);
        }
      }

      while (v10 != v9);
      v11 = __dst;
    }

    v50 = v9;
    operator delete(v11);
  }

  if (v40 < 0)
  {
    operator delete(*__p);
  }

  v40 = 15;
  strcpy(__p, "invalid_app_ids");
  v13 = sub_5F680(v8, __p);
  if (v40 < 0)
  {
    operator delete(*__p);
  }

  v14 = sub_E82FAC(a1);
  v15 = v14;
  v16 = *(v14 + 23);
  if ((v16 & 0x80u) != 0)
  {
    v16 = *(v14 + 8);
  }

  if (!v16)
  {
    v17 = sub_E83004(a1);
    sub_E8305C(a1);
    sub_E830B0(a1);
    if (sub_7E7E4(1u))
    {
      sub_19594F8(__p);
      sub_4A5C(__p, "App id missing in proto message (is_internal_client: ", 53);
      v18 = std::ostream::operator<<();
      sub_4A5C(v18, ", is_internal_tool: ", 20);
      v19 = std::ostream::operator<<();
      v20 = sub_4A5C(v19, ", os_version: ", 14);
      v21 = *(v17 + 23);
      if (v21 >= 0)
      {
        v22 = v17;
      }

      else
      {
        v22 = *v17;
      }

      if (v21 >= 0)
      {
        v23 = *(v17 + 23);
      }

      else
      {
        v23 = *(v17 + 8);
      }

      v24 = sub_4A5C(v20, v22, v23);
      sub_4A5C(v24, ").", 2);
      if ((v48 & 0x10) != 0)
      {
        v26 = v47;
        if (v47 < v44)
        {
          v47 = v44;
          v26 = v44;
        }

        v27 = v43;
        v25 = v26 - v43;
        if (v26 - v43 >= 0x7FFFFFFFFFFFFFF8)
        {
          goto LABEL_62;
        }
      }

      else
      {
        if ((v48 & 8) == 0)
        {
          v25 = 0;
          HIBYTE(v51) = 0;
LABEL_35:
          *(&__dst + v25) = 0;
          sub_7E854(&__dst, 1u);
          if (SHIBYTE(v51) < 0)
          {
            operator delete(__dst);
          }

          if (v46 < 0)
          {
            operator delete(v45);
          }

          std::locale::~locale(&__p[16]);
          std::ostream::~ostream();
          std::ios::~ios();
          goto LABEL_40;
        }

        v27 = v41;
        v25 = v42 - v41;
        if ((v42 - v41) >= 0x7FFFFFFFFFFFFFF8)
        {
LABEL_62:
          sub_3244();
        }
      }

      if (v25 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v51) = v25;
      if (v25)
      {
        memmove(&__dst, v27, v25);
      }

      goto LABEL_35;
    }
  }

LABEL_40:
  v28 = *v13;
  v29 = v13[1];
  if (*v13 != v29)
  {
    v30 = *(v15 + 23);
    if (v30 >= 0)
    {
      v31 = *(v15 + 23);
    }

    else
    {
      v31 = *(v15 + 8);
    }

    if (v30 >= 0)
    {
      v32 = v15;
    }

    else
    {
      v32 = *v15;
    }

    while (1)
    {
      if (v28[2] != 1)
      {
        sub_5AF20();
      }

      v33 = *(*v28 + 23);
      v34 = v33;
      if ((v33 & 0x80u) != 0)
      {
        v33 = *(*v28 + 8);
      }

      if (v33 == v31)
      {
        v35 = v34 >= 0 ? *v28 : **v28;
        if (!memcmp(v35, v32, v31))
        {
          break;
        }
      }

      v28 += 4;
      if (v28 == v29)
      {
        goto LABEL_58;
      }
    }

    sub_E99C18("Request denied based on its app id: ", v15, __p);
    sub_E9BF80(v36, 3, __p);
    if (v40 < 0)
    {
      operator delete(*__p);
    }
  }

LABEL_58:
  if (v38 < 0)
  {
    operator delete(v37);
  }
}

void sub_E94D9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (*(v24 - 65) < 0)
  {
    operator delete(*(v24 - 88));
  }

  sub_1959728(&a18);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_CF3C94(v23);
  _Unwind_Resume(a1);
}

void sub_E94E2C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __n128 *a4@<X8>)
{
  v4 = a3;
  *__p = 0;
  *&__p[8] = &off_2669FE0;
  sub_434934(a4, __p);
  sub_E9B860(v36, a1, v4, a4);
  if ((sub_585D8(v36) & 1) == 0)
  {
    goto LABEL_58;
  }

  v40 = 17;
  strcpy(__p, "RequestValidation");
  __dst = 0;
  v50 = 0;
  v51 = 0;
  v8 = sub_3AEC94(a2, __p, &__dst);
  v9 = __dst;
  if (__dst)
  {
    v10 = v50;
    v11 = __dst;
    if (v50 != __dst)
    {
      do
      {
        v12 = *(v10 - 1);
        v10 -= 3;
        if (v12 < 0)
        {
          operator delete(*v10);
        }
      }

      while (v10 != v9);
      v11 = __dst;
    }

    v50 = v9;
    operator delete(v11);
  }

  if (v40 < 0)
  {
    operator delete(*__p);
  }

  v40 = 15;
  strcpy(__p, "invalid_app_ids");
  v13 = sub_5F680(v8, __p);
  if (v40 < 0)
  {
    operator delete(*__p);
  }

  v14 = sub_E82FA0(a1);
  v15 = v14;
  v16 = *(v14 + 23);
  if ((v16 & 0x80u) != 0)
  {
    v16 = *(v14 + 8);
  }

  if (!v16)
  {
    v17 = sub_E82FE4(a1);
    sub_E83040(a1);
    sub_E83094(a1);
    if (sub_7E7E4(1u))
    {
      sub_19594F8(__p);
      sub_4A5C(__p, "App id missing in proto message (is_internal_client: ", 53);
      v18 = std::ostream::operator<<();
      sub_4A5C(v18, ", is_internal_tool: ", 20);
      v19 = std::ostream::operator<<();
      v20 = sub_4A5C(v19, ", os_version: ", 14);
      v21 = *(v17 + 23);
      if (v21 >= 0)
      {
        v22 = v17;
      }

      else
      {
        v22 = *v17;
      }

      if (v21 >= 0)
      {
        v23 = *(v17 + 23);
      }

      else
      {
        v23 = *(v17 + 8);
      }

      v24 = sub_4A5C(v20, v22, v23);
      sub_4A5C(v24, ").", 2);
      if ((v48 & 0x10) != 0)
      {
        v26 = v47;
        if (v47 < v44)
        {
          v47 = v44;
          v26 = v44;
        }

        v27 = v43;
        v25 = v26 - v43;
        if (v26 - v43 >= 0x7FFFFFFFFFFFFFF8)
        {
          goto LABEL_62;
        }
      }

      else
      {
        if ((v48 & 8) == 0)
        {
          v25 = 0;
          HIBYTE(v51) = 0;
LABEL_35:
          *(&__dst + v25) = 0;
          sub_7E854(&__dst, 1u);
          if (SHIBYTE(v51) < 0)
          {
            operator delete(__dst);
          }

          if (v46 < 0)
          {
            operator delete(v45);
          }

          std::locale::~locale(&__p[16]);
          std::ostream::~ostream();
          std::ios::~ios();
          goto LABEL_40;
        }

        v27 = v41;
        v25 = v42 - v41;
        if ((v42 - v41) >= 0x7FFFFFFFFFFFFFF8)
        {
LABEL_62:
          sub_3244();
        }
      }

      if (v25 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v51) = v25;
      if (v25)
      {
        memmove(&__dst, v27, v25);
      }

      goto LABEL_35;
    }
  }

LABEL_40:
  v28 = *v13;
  v29 = v13[1];
  if (*v13 != v29)
  {
    v30 = *(v15 + 23);
    if (v30 >= 0)
    {
      v31 = *(v15 + 23);
    }

    else
    {
      v31 = *(v15 + 8);
    }

    if (v30 >= 0)
    {
      v32 = v15;
    }

    else
    {
      v32 = *v15;
    }

    while (1)
    {
      if (v28[2] != 1)
      {
        sub_5AF20();
      }

      v33 = *(*v28 + 23);
      v34 = v33;
      if ((v33 & 0x80u) != 0)
      {
        v33 = *(*v28 + 8);
      }

      if (v33 == v31)
      {
        v35 = v34 >= 0 ? *v28 : **v28;
        if (!memcmp(v35, v32, v31))
        {
          break;
        }
      }

      v28 += 4;
      if (v28 == v29)
      {
        goto LABEL_58;
      }
    }

    sub_E99C18("Request denied based on its app id: ", v15, __p);
    sub_E9BF80(v36, 3, __p);
    if (v40 < 0)
    {
      operator delete(*__p);
    }
  }

LABEL_58:
  if (v38 < 0)
  {
    operator delete(v37);
  }
}

void sub_E95308(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (*(v24 - 65) < 0)
  {
    operator delete(*(v24 - 88));
  }

  sub_1959728(&a18);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_CF3C94(v23);
  _Unwind_Resume(a1);
}

BOOL sub_E95398(uint64_t a1)
{
  if ((*(a1 + 16) & 2) == 0)
  {
    result = 1;
    if ((*(a1 + 16) & 1) == 0)
    {
      return result;
    }

    goto LABEL_17;
  }

  v3 = *(a1 + 32);
  v4 = v3 + 978307200.0;
  if (v3 + 978307200.0 <= 2147483650.0 && v4 >= v3 && v4 >= -2147483650.0)
  {
    result = 1;
    goto LABEL_16;
  }

  result = sub_7E7E4(3u);
  if (!result)
  {
LABEL_16:
    if ((*(a1 + 16) & 1) == 0)
    {
      return result;
    }

LABEL_17:
    v9 = *(a1 + 24);
    v10 = v9 + 978307200.0;
    if (v9 + 978307200.0 <= 2147483650.0 && v10 >= v9 && v10 >= -2147483650.0)
    {
      return result;
    }

    result = sub_7E7E4(3u);
    if (!result)
    {
      return result;
    }

    sub_19594F8(&v21);
    sub_4A5C(&v21, "Got a request with an invalid routeAttributes.timepoint.time (", 62);
    v13 = std::ostream::operator<<();
    sub_4A5C(v13, ").", 2);
    if ((v31 & 0x10) != 0)
    {
      v17 = v30;
      if (v30 < v27)
      {
        v30 = v27;
        v17 = v27;
      }

      v18 = v26;
      v14 = v17 - v26;
      if (v17 - v26 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_59;
      }
    }

    else
    {
      if ((v31 & 8) == 0)
      {
        v14 = 0;
        v20 = 0;
LABEL_51:
        *(&__p + v14) = 0;
        sub_7E854(&__p, 3u);
        if (v20 < 0)
        {
          operator delete(__p);
        }

        if (v29 < 0)
        {
          operator delete(v28);
        }

        std::locale::~locale(&v23);
        std::ostream::~ostream();
        std::ios::~ios();
        return 0;
      }

      v18 = v24;
      v14 = v25 - v24;
      if ((v25 - v24) > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_59:
        sub_3244();
      }
    }

    if (v14 >= 0x17)
    {
      operator new();
    }

    v20 = v14;
    if (v14)
    {
      memmove(&__p, v18, v14);
    }

    goto LABEL_51;
  }

  sub_19594F8(&v21);
  sub_4A5C(&v21, "Got a request with an invalid routeAttributes.timepoint.current_user_time (", 75);
  v7 = std::ostream::operator<<();
  sub_4A5C(v7, ").", 2);
  if ((v31 & 0x10) != 0)
  {
    v15 = v30;
    if (v30 < v27)
    {
      v30 = v27;
      v15 = v27;
    }

    v16 = v26;
    v8 = v15 - v26;
    if (v15 - v26 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_57;
    }
  }

  else
  {
    if ((v31 & 8) == 0)
    {
      v8 = 0;
      v20 = 0;
      goto LABEL_43;
    }

    v16 = v24;
    v8 = v25 - v24;
    if ((v25 - v24) > 0x7FFFFFFFFFFFFFF7)
    {
LABEL_57:
      sub_3244();
    }
  }

  if (v8 >= 0x17)
  {
    operator new();
  }

  v20 = v8;
  if (v8)
  {
    memmove(&__p, v16, v8);
  }

LABEL_43:
  *(&__p + v8) = 0;
  sub_7E854(&__p, 3u);
  if (v20 < 0)
  {
    operator delete(__p);
  }

  if (v29 < 0)
  {
    operator delete(v28);
  }

  std::locale::~locale(&v23);
  std::ostream::~ostream();
  std::ios::~ios();
  result = 0;
  if (*(a1 + 16))
  {
    goto LABEL_17;
  }

  return result;
}

void sub_E958EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
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

void sub_E95964(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  v20.n128_u64[0] = 0;
  v20.n128_u64[1] = &off_2669FE0;
  sub_434934(a2, &v20);
  if (fabs(*(a1 + 48)) > 90.0)
  {
    v4 = a2[1].n128_u64[1];
    if (v4 >= a2[2].n128_u64[0])
    {
      v5 = sub_E98D8C(&a2[1], "LatLng has a latitude outside of [-90,+90].");
    }

    else
    {
      sub_E98F04(a2[1].n128_u64[1], "LatLng has a latitude outside of [-90,+90].");
      v5 = v4 + 32;
    }

    a2[1].n128_u64[1] = v5;
  }

  v6 = *(a1 + 56);
  if (fabs(v6) > 180.0)
  {
    v7 = a2[1].n128_u64[1];
    if (v7 >= a2[2].n128_u64[0])
    {
      v8 = sub_E99020(&a2[1], "LatLng has a longitude outside of [-180,+180].");
    }

    else
    {
      sub_E99198(a2[1].n128_u64[1], "LatLng has a longitude outside of [-180,+180].");
      v8 = v7 + 32;
    }

    a2[1].n128_u64[1] = v8;
    v6 = *(a1 + 56);
  }

  if (*(a1 + 48) == 0.0 && v6 == 0.0 && sub_7E7E4(1u))
  {
    sub_19594F8(v20.n128_f64);
    v9 = sub_4A5C(&v20, "LatLng 0,0 is a suspicious default coordinate: ", 47);
    v10 = sub_74700();
    v11 = sub_73F1C(v10);
    v12 = *(v11 + 23);
    if (v12 >= 0)
    {
      v13 = v11;
    }

    else
    {
      v13 = *v11;
    }

    if (v12 >= 0)
    {
      v14 = *(v11 + 23);
    }

    else
    {
      v14 = *(v11 + 8);
    }

    sub_4A5C(v9, v13, v14);
    if ((v29 & 0x10) != 0)
    {
      v16 = v28;
      if (v28 < v25)
      {
        v28 = v25;
        v16 = v25;
      }

      v17 = v24;
      v15 = v16 - v24;
      if (v16 - v24 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_38;
      }
    }

    else
    {
      if ((v29 & 8) == 0)
      {
        v15 = 0;
        v19 = 0;
LABEL_31:
        *(&__p + v15) = 0;
        sub_7E854(&__p, 1u);
        if (v19 < 0)
        {
          operator delete(__p);
        }

        if (v27 < 0)
        {
          operator delete(v26);
        }

        std::locale::~locale(&v21);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_36;
      }

      v17 = v22;
      v15 = v23 - v22;
      if ((v23 - v22) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_38:
        sub_3244();
      }
    }

    if (v15 >= 0x17)
    {
      operator new();
    }

    v19 = v15;
    if (v15)
    {
      memmove(&__p, v17, v15);
    }

    goto LABEL_31;
  }

LABEL_36:
  a2->n128_u64[0] = a2[1].n128_u64[0] != a2[1].n128_u64[1];
  a2->n128_u64[1] = &off_2669FE0;
}

void sub_E95CD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1959728(&a15);
    sub_CF3C94(v15);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a15);
  sub_CF3C94(v15);
  _Unwind_Resume(a1);
}

void sub_E95D74(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  if (*(a1 + 48))
  {
    v4 = *(a1 + 48);
  }

  else
  {
    v4 = &off_277E5E8;
  }

  sub_E95964(v4, a2);
  v5 = *(a1 + 40);
  if ((v5 & 4) != 0)
  {
    v6 = *(a1 + 64);
    v7 = v6 + 978307200.0;
    v8 = v6 + 978307200.0 > 2147483650.0 || v7 < v6;
    if (v8 || v7 < -2147483650.0)
    {
      v10 = a2[1].n128_u64[1];
      if (v10 >= a2[2].n128_u64[0])
      {
        v11 = sub_E992B4(&a2[1], "Location timestamp not within bounds of common::TimeStamp.");
      }

      else
      {
        sub_E9942C(a2[1].n128_u64[1], "Location timestamp not within bounds of common::TimeStamp.");
        v11 = v10 + 32;
      }

      a2[1].n128_u64[1] = v11;
      v5 = *(a1 + 40);
    }
  }

  if ((v5 & 0x20) != 0)
  {
    v12 = *(a1 + 88);
    if (v12 < 0.0)
    {
      v13 = a2[1].n128_u64[1];
      if (v13 >= a2[2].n128_u64[0])
      {
        v14 = sub_E99548(&a2[1], "Location has a negative speed.");
      }

      else
      {
        sub_E996C0(a2[1].n128_u64[1], "Location has a negative speed.");
        v14 = v13 + 32;
      }

      a2[1].n128_u64[1] = v14;
      v12 = *(a1 + 88);
    }

    if (v12 > 140.0 && sub_7E7E4(1u))
    {
      sub_19594F8(&v30);
      v15 = sub_4A5C(&v30, "Location has a speed of more than 140 m/s (504 km/h): ", 54);
      v16 = sub_74700();
      v17 = sub_73F1C(v16);
      v18 = *(v17 + 23);
      if (v18 >= 0)
      {
        v19 = v17;
      }

      else
      {
        v19 = *v17;
      }

      if (v18 >= 0)
      {
        v20 = *(v17 + 23);
      }

      else
      {
        v20 = *(v17 + 8);
      }

      sub_4A5C(v15, v19, v20);
      if ((v40 & 0x10) != 0)
      {
        v22 = v39;
        if (v39 < v36)
        {
          v39 = v36;
          v22 = v36;
        }

        v23 = v35;
        v21 = v22 - v35;
        if (v22 - v35 >= 0x7FFFFFFFFFFFFFF8)
        {
          goto LABEL_59;
        }
      }

      else
      {
        if ((v40 & 8) == 0)
        {
          v21 = 0;
          v29 = 0;
LABEL_42:
          *(&__p + v21) = 0;
          sub_7E854(&__p, 1u);
          if (v29 < 0)
          {
            operator delete(__p);
          }

          if (v38 < 0)
          {
            operator delete(v37);
          }

          std::locale::~locale(&v32);
          std::ostream::~ostream();
          std::ios::~ios();
          goto LABEL_47;
        }

        v23 = v33;
        v21 = v34 - v33;
        if ((v34 - v33) >= 0x7FFFFFFFFFFFFFF8)
        {
LABEL_59:
          sub_3244();
        }
      }

      if (v21 >= 0x17)
      {
        operator new();
      }

      v29 = v21;
      if (v21)
      {
        memmove(&__p, v23, v21);
      }

      goto LABEL_42;
    }
  }

LABEL_47:
  if ((*(a1 + 41) & 2) != 0)
  {
    v24 = *(a1 + 112);
    if (v24 != -1.0 && (v24 < 0.0 || v24 > 360.0))
    {
      v26 = a2[1].n128_u64[1];
      if (v26 >= a2[2].n128_u64[0])
      {
        v27 = sub_E997DC(&a2[1], "Location has a course outside of [0,360].");
      }

      else
      {
        sub_E99954(a2[1].n128_u64[1], "Location has a course outside of [0,360].");
        v27 = v26 + 32;
      }

      a2[1].n128_u64[1] = v27;
    }
  }

  a2->n128_u64[0] = a2[1].n128_u64[0] != a2[1].n128_u64[1];
  a2->n128_u64[1] = &off_2669FE0;
}

void sub_E9616C(_Unwind_Exception *a1)
{
  *(v1 + 24) = v2;
  sub_CF3C94(v1);
  _Unwind_Resume(a1);
}

void sub_E96184(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1959728(&a15);
    sub_CF3C94(v15);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a15);
  sub_CF3C94(v15);
  _Unwind_Resume(a1);
}

void sub_E96228(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __n128 *a4@<X8>)
{
  v4 = a3;
  *__p = 0;
  *&__p[8] = &off_2669FE0;
  v8 = sub_434934(a4, __p);
  sub_E9B4D4(v37, a1, v4, a4, v8);
  if ((sub_585D8(v37) & 1) == 0)
  {
    goto LABEL_60;
  }

  v41 = 17;
  strcpy(__p, "RequestValidation");
  __dst = 0;
  v51 = 0uLL;
  v9 = sub_3AEC94(a2, __p, &__dst);
  v10 = __dst;
  if (__dst)
  {
    v11 = v51;
    v12 = __dst;
    if (v51 != __dst)
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
      v12 = __dst;
    }

    *&v51 = v10;
    operator delete(v12);
  }

  if (v41 < 0)
  {
    operator delete(*__p);
  }

  v41 = 15;
  strcpy(__p, "invalid_app_ids");
  v14 = sub_5F680(v9, __p);
  if (v41 < 0)
  {
    operator delete(*__p);
  }

  v15 = sub_E893A4(a1);
  v16 = v15;
  v17 = *(v15 + 23);
  if ((v17 & 0x80u) != 0)
  {
    v17 = *(v15 + 8);
  }

  if (!v17)
  {
    v18 = sub_E82FC4(a1);
    sub_E83024(a1);
    sub_E83078(a1);
    if (sub_7E7E4(1u))
    {
      sub_19594F8(__p);
      sub_4A5C(__p, "App id missing in proto message (is_internal_client: ", 53);
      v19 = std::ostream::operator<<();
      sub_4A5C(v19, ", is_internal_tool: ", 20);
      v20 = std::ostream::operator<<();
      v21 = sub_4A5C(v20, ", os_version: ", 14);
      v22 = *(v18 + 23);
      if (v22 >= 0)
      {
        v23 = v18;
      }

      else
      {
        v23 = *v18;
      }

      if (v22 >= 0)
      {
        v24 = *(v18 + 23);
      }

      else
      {
        v24 = *(v18 + 8);
      }

      v25 = sub_4A5C(v21, v23, v24);
      sub_4A5C(v25, ").", 2);
      if ((v49 & 0x10) != 0)
      {
        v27 = v48;
        if (v48 < v45)
        {
          v48 = v45;
          v27 = v45;
        }

        v28 = v44;
        v26 = v27 - v44;
        if (v27 - v44 >= 0x7FFFFFFFFFFFFFF8)
        {
          goto LABEL_64;
        }
      }

      else
      {
        if ((v49 & 8) == 0)
        {
          v26 = 0;
          HIBYTE(v51) = 0;
LABEL_35:
          *(&__dst + v26) = 0;
          sub_7E854(&__dst, 1u);
          if (SHIBYTE(v51) < 0)
          {
            operator delete(__dst);
          }

          if (v47 < 0)
          {
            operator delete(v46);
          }

          std::locale::~locale(&__p[16]);
          std::ostream::~ostream();
          std::ios::~ios();
          goto LABEL_40;
        }

        v28 = v42;
        v26 = v43 - v42;
        if ((v43 - v42) >= 0x7FFFFFFFFFFFFFF8)
        {
LABEL_64:
          sub_3244();
        }
      }

      if (v26 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v51) = v26;
      if (v26)
      {
        memmove(&__dst, v28, v26);
      }

      goto LABEL_35;
    }
  }

LABEL_40:
  v29 = *v14;
  v30 = v14[1];
  if (*v14 != v30)
  {
    v31 = *(v16 + 23);
    if (v31 >= 0)
    {
      v32 = *(v16 + 23);
    }

    else
    {
      v32 = *(v16 + 8);
    }

    if (v31 >= 0)
    {
      v33 = v16;
    }

    else
    {
      v33 = *v16;
    }

    while (1)
    {
      if (v29[2] != 1)
      {
        sub_5AF20();
      }

      v34 = *(*v29 + 23);
      v35 = v34;
      if ((v34 & 0x80u) != 0)
      {
        v34 = *(*v29 + 8);
      }

      if (v34 == v32)
      {
        v36 = v35 >= 0 ? *v29 : **v29;
        if (!memcmp(v36, v33, v32))
        {
          break;
        }
      }

      v29 += 4;
      if (v29 == v30)
      {
        goto LABEL_58;
      }
    }

    sub_E99C18("Request denied based on its app id: ", v16, __p);
    sub_E9BF80(v37, 3, __p);
    if (v41 < 0)
    {
      operator delete(*__p);
    }
  }

LABEL_58:
  if (!*(a1 + 536))
  {
    operator new();
  }

LABEL_60:
  if (v39 < 0)
  {
    operator delete(v38);
  }
}

void sub_E967E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (*(v24 - 81) < 0)
  {
    operator delete(*(v24 - 104));
  }

  sub_1959728(&a18);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_CF3C94(v23);
  _Unwind_Resume(a1);
}

void sub_E968A0(uint64_t a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X8>)
{
  v3 = a2;
  v10.n128_u64[0] = 0;
  v10.n128_u64[1] = &off_2669FE0;
  v6 = sub_434934(a3, &v10);
  sub_E9B4D4(v11, a1, v3, a3, v6);
  if (sub_585D8(v11))
  {
    if ((*(a1 + 40) & 0x20) == 0)
    {
      operator new();
    }

    if (sub_E7A5E0(a1) != 8)
    {
      v7 = *(a1 + 336);
      if (!v7)
      {
        v7 = &off_2772E28;
      }

      v8 = v7[10];
      if (v8)
      {
        v9 = v8;
      }

      else
      {
        v9 = &off_2772DF8;
      }

      if (!sub_E95398(v9))
      {
        operator new();
      }
    }
  }

  if (v13 < 0)
  {
    operator delete(v12);
  }
}

void sub_E96AF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  sub_CF3C94(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
    if (a27 < 0)
    {
LABEL_5:
      operator delete(a22);
      sub_CF3C94(v27);
      _Unwind_Resume(a1);
    }
  }

  else if (a27 < 0)
  {
    goto LABEL_5;
  }

  sub_CF3C94(v27);
  _Unwind_Resume(a1);
}

void sub_E96B88(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v13 = a2;
  if (a1 >= 0)
  {
    v4 = 50000;
  }

  else
  {
    v4 = -50000;
  }

  v14 = a1 / 100000 + (v4 + a1 % 100000) / 100000;
  sub_E96DA4("Total distance to reach waypoint ", " exceeds the maximum allowed value of ", " km.", v11);
  *&v10 = 16;
  *(&v10 + 1) = &off_2669FE0;
  LOBYTE(v14) = 14;
  if (SHIBYTE(v12) < 0)
  {
    sub_325C(&v15, v11[0], v11[1]);
  }

  else
  {
    v15 = *v11;
    v16 = v12;
  }

  sub_435A00(&__p, &v14, 1uLL);
  sub_4349F4(a3, &v10, &__p, v13);
  v5 = __p;
  if (__p)
  {
    v6 = v9;
    v7 = __p;
    if (v9 != __p)
    {
      do
      {
        if (*(v6 - 1) < 0)
        {
          operator delete(*(v6 - 3));
        }

        v6 -= 4;
      }

      while (v6 != v5);
      v7 = __p;
    }

    v9 = v5;
    operator delete(v7);
  }

  if ((SHIBYTE(v16) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      return;
    }

LABEL_19:
    operator delete(v11[0]);
    return;
  }

  operator delete(v15);
  if (SHIBYTE(v12) < 0)
  {
    goto LABEL_19;
  }
}

void sub_E96D54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_E96DA4@<X0>(const char *a1@<X0>, const char *a3@<X2>, const char *a5@<X4>, _BYTE *a6@<X8>)
{
  sub_D7B0(v20);
  v10 = strlen(a1);
  v11 = sub_4A5C(&v21, a1, v10);
  std::ostream::operator<<();
  v12 = strlen(a3);
  sub_4A5C(v11, a3, v12);
  v13 = std::ostream::operator<<();
  v14 = strlen(a5);
  sub_4A5C(v13, a5, v14);
  if ((v31 & 0x10) != 0)
  {
    v16 = v30;
    if (v30 < v27)
    {
      v30 = v27;
      v16 = v27;
    }

    v17 = v26;
    v15 = v16 - v26;
    if (v16 - v26 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if ((v31 & 8) == 0)
    {
      v15 = 0;
      a6[23] = 0;
      goto LABEL_12;
    }

    v17 = v24;
    v15 = v25 - v24;
    if ((v25 - v24) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_16:
      sub_3244();
    }
  }

  if (v15 >= 0x17)
  {
    operator new();
  }

  a6[23] = v15;
  if (v15)
  {
    memmove(a6, v17, v15);
  }

LABEL_12:
  a6[v15] = 0;
  v21 = v18;
  if (v29 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v23);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_E97060(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

void sub_E97074(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __n128 *a5@<X8>)
{
  v20 = a4;
  v19 = 0;
  v18 = 0;
  v16 = 0;
  v17 = 0;
  v13.n128_u64[0] = 0;
  v13.n128_u64[1] = &off_2669FE0;
  sub_434934(a5, &v13);
  v13.n128_u64[0] = &v19;
  v13.n128_u64[1] = &v18;
  v14 = &v16;
  v15 = &v20;
  if (a1)
  {
    sub_E971A0(&v13, a1, *(*(a2 + 16) + 8), a5);
  }

  v9 = 0;
  v10 = *(a2 + 8);
  if (v10 <= 1)
  {
    v10 = 1;
  }

  v11 = 8 * (v10 - 1);
  while (v11 != v9)
  {
    v12 = *(a2 + 16) + v9;
    v9 += 8;
    sub_E971A0(&v13, *(v12 + 8), *(v12 + 16), a5);
  }

  if (a3)
  {
    sub_E971A0(&v13, *(*(a2 + 16) + 8 * *(a2 + 8)), a3, a5);
  }
}

void sub_E971A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 8) != &off_2669FE0 || *a4 != 0)
  {
    return;
  }

  v8 = sub_E99A70(a2);
  v9 = sub_E99A70(a3);
  if (v8 >= 0xFFFFFFFF00000000 && v8 == -1 || v9 >= 0xFFFFFFFF00000000 && v9 == -1)
  {
    operator new();
  }

  if (v8 != -1 || HIDWORD(v8) != 0xFFFFFFFF)
  {
    v10 = HIDWORD(v9);
    if (v9 != -1 || v10 != 0xFFFFFFFF)
    {
      v17 = v9;
      v18 = exp(3.14159265 - HIDWORD(v8) * 6.28318531 / 4294967300.0);
      v19 = atan((v18 - 1.0 / v18) * 0.5) * 57.2957795 * 0.0174532925;
      v20.i64[0] = v8;
      v20.i64[1] = v17;
      v21 = exp(3.14159265 - v10 * 6.28318531 / 4294967300.0);
      v22 = atan((v21 - 1.0 / v21) * 0.5) * 57.2957795 * 0.0174532925;
      v23 = vmulq_f64(vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v20), vdupq_n_s64(0x4076800000000000uLL)), vdupq_n_s64(0x41EFFFFFFFE00000uLL)), vdupq_n_s64(0xC066800000000000)), vdupq_n_s64(0x3F91DF46A2529D39uLL));
      v34 = vsubq_f64(v23, vdupq_laneq_s64(v23, 1)).f64[0];
      v24 = sin((v19 - v22) * 0.5);
      v25 = v24 * v24;
      v26 = cos(v19);
      v27 = v26 * cos(v22);
      v28 = sin(0.5 * v34);
      v29 = atan2(sqrt(v28 * v28 * v27 + v25), sqrt(1.0 - (v28 * v28 * v27 + v25)));
      v30 = (v29 + v29) * 6372797.56 * 100.0;
      if (v30 >= 0.0)
      {
        v31 = v30;
        if (v30 >= 4.50359963e15)
        {
          goto LABEL_32;
        }

        v32 = (v30 + v30) + 1;
      }

      else
      {
        v31 = v30;
        if (v30 <= -4.50359963e15)
        {
          goto LABEL_32;
        }

        v32 = (v30 + v30) - 1 + (((v30 + v30) - 1) >> 63);
      }

      v31 = (v32 >> 1);
LABEL_32:
      if (v31 >= 9.22337204e18)
      {
        v11 = 0x7FFFFFFFFFFFFFFELL;
        goto LABEL_16;
      }

      if (v30 >= 0.0)
      {
        if (v30 < 4.50359963e15)
        {
          v33 = (v30 + v30) + 1;
          goto LABEL_39;
        }
      }

      else if (v30 > -4.50359963e15)
      {
        v33 = (v30 + v30) - 1 + (((v30 + v30) - 1) >> 63);
LABEL_39:
        v30 = (v33 >> 1);
      }

      v11 = v30;
      goto LABEL_16;
    }
  }

  v11 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_16:
  **(a1 + 8) += v11;
  v12 = *(a1 + 16);
  ++*v12;
  v13 = **(a1 + 24);
  if (**(a1 + 8) > v13)
  {
    sub_E96B88(v13, *v12, &v35);
    sub_434BB0(a4, &v35);
    v14 = __p;
    if (__p)
    {
      v15 = v37;
      v16 = __p;
      if (v37 != __p)
      {
        do
        {
          if (*(v15 - 1) < 0)
          {
            operator delete(*(v15 - 3));
          }

          v15 -= 4;
        }

        while (v15 != v14);
        v16 = __p;
      }

      v37 = v14;
      operator delete(v16);
    }
  }
}

void sub_E97600(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_CF3C94(va);
  _Unwind_Resume(a1);
}

void sub_E97614(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  sub_CF3C94(&a18);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_E97640(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v12.n128_u64[0] = 0;
  v12.n128_u64[1] = &off_2669FE0;
  v6 = sub_434934(a3, &v12);
  if ((*(a1 + 40) & 0x40) != 0)
  {
    sub_E9B4D4(v15, a1, v3, a3, v6);
    if (sub_585D8(v15))
    {
      if (*(a1 + 344))
      {
        v7 = *(a1 + 344);
      }

      else
      {
        v7 = &off_277E738;
      }

      sub_E95D74(v7, &v12);
      sub_E9BBFC(v15, &v12);
      v8 = __p;
      if (__p)
      {
        v9 = v14;
        v10 = __p;
        if (v14 != __p)
        {
          do
          {
            if (*(v9 - 1) < 0)
            {
              operator delete(*(v9 - 3));
            }

            v9 -= 4;
          }

          while (v9 != v8);
          v10 = __p;
        }

        v14 = v8;
        operator delete(v10);
      }

      if (*(a3 + 8) != &off_2669FE0 || *a3 != 0)
      {
        operator new();
      }
    }

    if (v17 < 0)
    {
      operator delete(v16);
    }
  }
}

void sub_E97818(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  sub_CF3C94(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a27 & 0x80000000) == 0)
    {
LABEL_3:
      sub_CF3C94(v27);
      _Unwind_Resume(a1);
    }
  }

  else if ((a27 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a22);
  sub_CF3C94(v27);
  _Unwind_Resume(a1);
}

void sub_E978B8(uint64_t a1@<X0>, __int16 a2@<W3>, __n128 *a3@<X8>)
{
  v51[0] = 0;
  v51[1] = &off_2669FE0;
  sub_434934(a3, v51);
  v6 = sub_E7A5E0(a1);
  v8 = v6;
  if (v6 > 0xD)
  {
    v9 = 0;
  }

  else if (((1 << v6) & 0x37F9) != 0)
  {
    v9 = 3;
  }

  else
  {
    if (((1 << v6) & 6) == 0)
    {
      v10 = 0;
      goto LABEL_18;
    }

    v9 = 4;
  }

  if (v9 >= a2)
  {
    v10 = a2;
  }

  else
  {
    v10 = v9;
  }

  if (v6 > 0xD)
  {
    goto LABEL_13;
  }

  if (((1 << v6) & 0x2E0) != 0)
  {
    v11 = 3;
    goto LABEL_19;
  }

  if (((1 << v6) & 0x3408) != 0)
  {
    v11 = 2;
    goto LABEL_19;
  }

  if (((1 << v6) & 0x910) == 0)
  {
LABEL_13:
    if (v6 - 1 < 2)
    {
      v11 = 4;
      goto LABEL_19;
    }
  }

LABEL_18:
  v11 = 0;
LABEL_19:
  sub_E9B4D4(v57, a1, v10, a3, v7);
  if (v11 >= HIBYTE(a2))
  {
    v13 = HIBYTE(a2);
  }

  else
  {
    v13 = v11;
  }

  sub_E9B4D4(v54, a1, v13, a3, v12);
  if ((*(a1 + 40) & 4) == 0)
  {
    operator new();
  }

  HIBYTE(v50[2]) = 17;
  strcpy(v50, "DirectionsRequest");
  sub_E92B48(a1, v50, v51);
  sub_E9BBFC(v54, v51);
  v14 = __p_8;
  if (__p_8)
  {
    v15 = v53;
    v16 = __p_8;
    if (v53 != __p_8)
    {
      do
      {
        if (*(v15 - 1) < 0)
        {
          operator delete(*(v15 - 3));
        }

        v15 -= 4;
      }

      while (v15 != v14);
      v16 = __p_8;
    }

    v53 = v14;
    operator delete(v16);
  }

  if (SHIBYTE(v50[2]) < 0)
  {
    operator delete(v50[0]);
  }

  nullsub_1();
  if ((*(v17 + 128) & 1) == 0)
  {
    operator new();
  }

  if ((*(a1 + 42) & 1) == 0)
  {
    if (v8)
    {
      if (!*(a1 + 88))
      {
        operator new();
      }
    }

    goto LABEL_111;
  }

  if (sub_E81B98(a1) && (sub_E7FD98(a1) & 0x100000000) == 0)
  {
    operator new();
  }

  if (*(a1 + 424))
  {
    v18 = *(a1 + 424);
  }

  else
  {
    v18 = &off_27721B8;
  }

  if ((v18[2] & 0x10) == 0)
  {
    operator new();
  }

  if (!*(v18 + 16))
  {
    operator new();
  }

  if ((v18[2] & 2) != 0 && !*(v18 + 13))
  {
    operator new();
  }

  sub_3AF114();
  v20 = sub_2D5630(*v19);
  if (*(v18 + 13) == 2 && (v20 & 1) == 0 && (*(v18 + 16) - 9) >= 2)
  {
    operator new();
  }

  if ((v18[2] & 2) != 0)
  {
    nullsub_1();
    if (*(v21 + 128) == 1)
    {
      v22 = sub_E84AD8(*(v18 + 13));
      nullsub_1();
      v24 = sub_4F96C0(v23);
      if (v22 != v24)
      {
        sub_EA7178(v22, v50);
        sub_EA7178(v24, v48);
        sub_E98558("Different route source in the OriginalWaypointRoute (", v50, ") and the session state (", v48, ") of the request.", v51);
        sub_E9BF80(v57, 7, v51);
        if (SHIBYTE(__p_8) < 0)
        {
          operator delete(v51[0]);
          if ((v49 & 0x80000000) == 0)
          {
LABEL_62:
            if ((SHIBYTE(v50[2]) & 0x80000000) == 0)
            {
              goto LABEL_68;
            }

LABEL_67:
            operator delete(v50[0]);
            goto LABEL_68;
          }
        }

        else if ((v49 & 0x80000000) == 0)
        {
          goto LABEL_62;
        }

        operator delete(v48[0]);
        if ((SHIBYTE(v50[2]) & 0x80000000) == 0)
        {
          goto LABEL_68;
        }

        goto LABEL_67;
      }
    }
  }

LABEL_68:
  v25 = *(v18 + 16);
  if (v25 == 10)
  {
    if ((v18[2] & 2) == 0)
    {
      operator new();
    }

    goto LABEL_80;
  }

  if (v25 == 13)
  {
    if ((v18[2] & 4) == 0)
    {
      operator new();
    }

    goto LABEL_80;
  }

  if (v25 != 11)
  {
LABEL_80:
    v34 = v18 + 4;
    v33 = *(v18 + 8);
    if (!v33)
    {
      operator new();
    }

    v36 = v18[5];
    v35 = v18 + 5;
    v37 = v36 + 1;
    if (v36)
    {
      v31 = v37;
    }

    else
    {
      v31 = 0;
    }

    v32 = &v31[v33];
    v30 = v35;
    v27 = v34;
    goto LABEL_85;
  }

  v28 = *(v18 + 8);
  v27 = v18 + 4;
  v26 = v28;
  v30 = v27 + 1;
  v29 = v27[1];
  if (v29)
  {
    v31 = v29 + 1;
  }

  else
  {
    v31 = 0;
  }

  if (!v26)
  {
    goto LABEL_89;
  }

  v32 = &v31[v26];
  do
  {
LABEL_85:
    if ((*(*v31 + 40) & 3) == 0)
    {
      operator new();
    }

    ++v31;
  }

  while (v31 != v32);
LABEL_89:
  if (sub_585D8(v54) && (nullsub_1(), *(v38 + 128) == 1))
  {
    nullsub_1();
    v40 = sub_4F9718(v39);
    v41 = *v27;
    if (v40 < v41)
    {
      operator new();
    }

    if (*v30)
    {
      v42 = (*v30 + 1);
    }

    else
    {
      v42 = 0;
    }

    if (!*v27)
    {
      goto LABEL_111;
    }
  }

  else
  {
    v41 = *v27;
    if (*v30)
    {
      v42 = (*v30 + 1);
    }

    else
    {
      v42 = 0;
    }

    if (!*v27)
    {
      goto LABEL_111;
    }
  }

  v43 = 8 * v41;
  v44 = v42 + 8 * v41;
  while (1)
  {
    v45 = *(*v42 + 72);
    if (!v45)
    {
      v45 = &off_2772310;
    }

    if ((*(v45 + 17) & 4) != 0)
    {
      break;
    }

    v46 = *(*v42 + 80);
    if (!v46)
    {
      v46 = &off_2772310;
    }

    if ((*(v46 + 17) & 4) != 0)
    {
      break;
    }

    v42 += 8;
    v43 -= 8;
    if (!v43)
    {
      goto LABEL_111;
    }
  }

  v47 = *(*(v44 - 8) + 80);
  if (!v47)
  {
    v47 = &off_2772310;
  }

  if (*(v47 + 26) != 1)
  {
    operator new();
  }

LABEL_111:
  if ((v56 & 0x80000000) == 0)
  {
    if ((v59 & 0x80000000) == 0)
    {
      return;
    }

LABEL_115:
    operator delete(v58);
    return;
  }

  operator delete(v55);
  if (v59 < 0)
  {
    goto LABEL_115;
  }
}

void sub_E983A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a38 < 0)
  {
    operator delete(a33);
    if ((*(v39 - 73) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else if ((*(v39 - 73) & 0x80000000) == 0)
  {
LABEL_5:
    sub_CF3C94(v38);
    _Unwind_Resume(a1);
  }

  operator delete(*(v39 - 96));
  sub_CF3C94(v38);
  _Unwind_Resume(a1);
}

void sub_E98520()
{
  if (*(v0 - 73) < 0)
  {
    JUMPOUT(0xE98508);
  }

  JUMPOUT(0xE984F0);
}

uint64_t sub_E98558@<X0>(const char *a1@<X0>, uint64_t **a2@<X1>, const char *a3@<X2>, uint64_t **a4@<X3>, const char *a5@<X4>, _BYTE *a6@<X8>)
{
  sub_D7B0(v30);
  v12 = strlen(a1);
  v13 = sub_4A5C(&v31, a1, v12);
  v14 = *(a2 + 23);
  if (v14 >= 0)
  {
    v15 = a2;
  }

  else
  {
    v15 = *a2;
  }

  if (v14 >= 0)
  {
    v16 = *(a2 + 23);
  }

  else
  {
    v16 = a2[1];
  }

  v17 = sub_4A5C(v13, v15, v16);
  v18 = strlen(a3);
  v19 = sub_4A5C(v17, a3, v18);
  v20 = *(a4 + 23);
  if (v20 >= 0)
  {
    v21 = a4;
  }

  else
  {
    v21 = *a4;
  }

  if (v20 >= 0)
  {
    v22 = *(a4 + 23);
  }

  else
  {
    v22 = a4[1];
  }

  v23 = sub_4A5C(v19, v21, v22);
  v24 = strlen(a5);
  sub_4A5C(v23, a5, v24);
  if ((v41 & 0x10) != 0)
  {
    v26 = v40;
    if (v40 < v37)
    {
      v40 = v37;
      v26 = v37;
    }

    v27 = v36;
    v25 = v26 - v36;
    if (v26 - v36 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_28;
    }
  }

  else
  {
    if ((v41 & 8) == 0)
    {
      v25 = 0;
      a6[23] = 0;
      goto LABEL_24;
    }

    v27 = v34;
    v25 = v35 - v34;
    if ((v35 - v34) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_28:
      sub_3244();
    }
  }

  if (v25 >= 0x17)
  {
    operator new();
  }

  a6[23] = v25;
  if (v25)
  {
    memmove(a6, v27, v25);
  }

LABEL_24:
  a6[v25] = 0;
  v31 = v28;
  if (v39 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v33);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_E9883C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

void sub_E98850(uint64_t a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X8>)
{
  v3 = a2;
  v39.n128_u64[0] = 0;
  v39.n128_u64[1] = &off_2669FE0;
  sub_434934(a3, &v39);
  if (sub_E7AAB8(a1))
  {
    v7 = sub_E9B4D4(v42, a1, v3, a3, v6);
    if ((sub_585D8(v7) & 1) == 0)
    {
LABEL_46:
      if (v44 < 0)
      {
        operator delete(v43);
      }

      return;
    }

    v8 = *(a1 + 464);
    if (v8)
    {
      v9 = *(a1 + 464);
    }

    else
    {
      v9 = &off_2772200;
    }

    v10 = *(v9 + 12) + 1;
    if (*(a1 + 112) == v10)
    {
LABEL_28:
      if (!v8)
      {
        v8 = &off_2772200;
      }

      v24 = *(v8 + 12);
      v25 = v8[7];
      if (v25)
      {
        v26 = v25 + 1;
      }

      else
      {
        v26 = 0;
      }

      if (v24)
      {
        v27 = &v26[v24];
        do
        {
          v28 = *(*v26 + 6);
          v29 = *(*v26 + 4);
          if (v29)
          {
            v30 = v29 + 8;
          }

          else
          {
            v30 = 0;
          }

          if (v28)
          {
            v31 = 8 * v28;
            do
            {
              if (((*(*v30 + 16) >> 2) & 1) != (*(*v30 + 16) & 2u) >> 1 || *(*v30 + 36) < *(*v30 + 32))
              {
                operator new();
              }

              v30 += 8;
              v31 -= 8;
            }

            while (v31);
          }

          ++v26;
        }

        while (v26 != v27);
      }

      goto LABEL_46;
    }

    std::to_string(&v33, v10);
    v11 = std::string::insert(&v33, 0, "Wrong number of familiar route legs (expected: ", 0x2FuLL);
    v12 = *&v11->__r_.__value_.__l.__data_;
    v34.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
    *&v34.__r_.__value_.__l.__data_ = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    v13 = std::string::append(&v34, ", got: ", 7uLL);
    v14 = *&v13->__r_.__value_.__l.__data_;
    v35.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
    *&v35.__r_.__value_.__l.__data_ = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v32, *(a1 + 112));
    if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v15 = &v32;
    }

    else
    {
      v15 = v32.__r_.__value_.__r.__words[0];
    }

    if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v32.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v32.__r_.__value_.__l.__size_;
    }

    v17 = std::string::append(&v35, v15, size);
    v18 = *&v17->__r_.__value_.__l.__data_;
    v36.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
    *&v36.__r_.__value_.__l.__data_ = v18;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    v19 = std::string::append(&v36, ")", 1uLL);
    v20 = *&v19->__r_.__value_.__l.__data_;
    v38 = v19->__r_.__value_.__r.__words[2];
    *__p = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    sub_434A40(8, __p, &v39);
    sub_E9BBFC(v42, &v39);
    v21 = v40;
    if (v40)
    {
      v22 = v41;
      v23 = v40;
      if (v41 != v40)
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
        v23 = v40;
      }

      v41 = v21;
      operator delete(v23);
    }

    if (SHIBYTE(v38) < 0)
    {
      operator delete(__p[0]);
      if ((SHIBYTE(v36.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_23:
        if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_24;
        }

        goto LABEL_51;
      }
    }

    else if ((SHIBYTE(v36.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_23;
    }

    operator delete(v36.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_24:
      if ((SHIBYTE(v35.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_52;
    }

LABEL_51:
    operator delete(v32.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v35.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_25:
      if ((SHIBYTE(v34.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_53;
    }

LABEL_52:
    operator delete(v35.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v34.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_26:
      if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_27:
        v8 = *(a1 + 464);
        goto LABEL_28;
      }

LABEL_54:
      operator delete(v33.__r_.__value_.__l.__data_);
      goto LABEL_27;
    }

LABEL_53:
    operator delete(v34.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_54;
  }
}

void sub_E98C2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *__p, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  sub_CF3C94(v48 - 136);
  if (a47 < 0)
  {
    operator delete(__p);
    if ((a40 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a14 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((a40 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a35);
  if ((a14 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a33 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(a9);
  if ((a33 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a26 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(a28);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a20 & 0x80000000) == 0)
    {
LABEL_14:
      if (*(v48 - 57) < 0)
      {
        operator delete(*(v48 - 80));
        sub_CF3C94(v47);
        _Unwind_Resume(a1);
      }

      sub_CF3C94(v47);
      _Unwind_Resume(a1);
    }

LABEL_13:
    operator delete(a15);
    goto LABEL_14;
  }

LABEL_12:
  operator delete(a21);
  if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_14;
  }

  goto LABEL_13;
}

uint64_t sub_E98D8C(uint64_t *a1, char *a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_1794();
  }

  v5 = a1[2] - *a1;
  if (v5 >> 4 > v3)
  {
    v3 = v5 >> 4;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFE0)
  {
    v6 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (!(v6 >> 59))
    {
      operator new();
    }

    sub_1808();
  }

  v15 = 32 * v2;
  sub_E98F04((32 * v2), a2);
  v7 = 32 * v2 + 32;
  v8 = *a1;
  v9 = a1[1];
  v10 = v15 + *a1 - v9;
  if (v9 != *a1)
  {
    v11 = *a1;
    v12 = v15 + *a1 - v9;
    do
    {
      *v12 = *v11;
      v13 = *(v11 + 8);
      *(v12 + 24) = *(v11 + 24);
      *(v12 + 8) = v13;
      *(v11 + 16) = 0;
      *(v11 + 24) = 0;
      *(v11 + 8) = 0;
      v11 += 32;
      v12 += 32;
    }

    while (v11 != v9);
    do
    {
      if (*(v8 + 31) < 0)
      {
        operator delete(*(v8 + 8));
      }

      v8 += 32;
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

void sub_E98EF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_243064(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_E98F04(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v10) = v4;
  if (v4)
  {
    memcpy(&__dst, __s, v4);
    *(&__dst + v5) = 0;
    *a1 = 0;
    v6 = a1 + 8;
    if ((SHIBYTE(v10) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v7 = __dst;
    sub_325C(v6, __dst, *(&__dst + 1));
    operator delete(v7);
    return a1;
  }

  LOBYTE(__dst) = 0;
  *a1 = 0;
  v6 = a1 + 8;
  if (SHIBYTE(v10) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *v6 = __dst;
  *(v6 + 2) = v10;
  return a1;
}

uint64_t sub_E99020(uint64_t *a1, char *a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_1794();
  }

  v5 = a1[2] - *a1;
  if (v5 >> 4 > v3)
  {
    v3 = v5 >> 4;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFE0)
  {
    v6 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (!(v6 >> 59))
    {
      operator new();
    }

    sub_1808();
  }

  v15 = 32 * v2;
  sub_E99198((32 * v2), a2);
  v7 = 32 * v2 + 32;
  v8 = *a1;
  v9 = a1[1];
  v10 = v15 + *a1 - v9;
  if (v9 != *a1)
  {
    v11 = *a1;
    v12 = v15 + *a1 - v9;
    do
    {
      *v12 = *v11;
      v13 = *(v11 + 8);
      *(v12 + 24) = *(v11 + 24);
      *(v12 + 8) = v13;
      *(v11 + 16) = 0;
      *(v11 + 24) = 0;
      *(v11 + 8) = 0;
      v11 += 32;
      v12 += 32;
    }

    while (v11 != v9);
    do
    {
      if (*(v8 + 31) < 0)
      {
        operator delete(*(v8 + 8));
      }

      v8 += 32;
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

void sub_E99184(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_243064(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_E99198(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v10) = v4;
  if (v4)
  {
    memcpy(&__dst, __s, v4);
    *(&__dst + v5) = 0;
    *a1 = 0;
    v6 = a1 + 8;
    if ((SHIBYTE(v10) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v7 = __dst;
    sub_325C(v6, __dst, *(&__dst + 1));
    operator delete(v7);
    return a1;
  }

  LOBYTE(__dst) = 0;
  *a1 = 0;
  v6 = a1 + 8;
  if (SHIBYTE(v10) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *v6 = __dst;
  *(v6 + 2) = v10;
  return a1;
}

uint64_t sub_E992B4(uint64_t *a1, char *a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_1794();
  }

  v5 = a1[2] - *a1;
  if (v5 >> 4 > v3)
  {
    v3 = v5 >> 4;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFE0)
  {
    v6 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (!(v6 >> 59))
    {
      operator new();
    }

    sub_1808();
  }

  v15 = 32 * v2;
  sub_E9942C((32 * v2), a2);
  v7 = 32 * v2 + 32;
  v8 = *a1;
  v9 = a1[1];
  v10 = v15 + *a1 - v9;
  if (v9 != *a1)
  {
    v11 = *a1;
    v12 = v15 + *a1 - v9;
    do
    {
      *v12 = *v11;
      v13 = *(v11 + 8);
      *(v12 + 24) = *(v11 + 24);
      *(v12 + 8) = v13;
      *(v11 + 16) = 0;
      *(v11 + 24) = 0;
      *(v11 + 8) = 0;
      v11 += 32;
      v12 += 32;
    }

    while (v11 != v9);
    do
    {
      if (*(v8 + 31) < 0)
      {
        operator delete(*(v8 + 8));
      }

      v8 += 32;
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

void sub_E99418(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_243064(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_E9942C(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v10) = v4;
  if (v4)
  {
    memcpy(&__dst, __s, v4);
    *(&__dst + v5) = 0;
    *a1 = 0;
    v6 = a1 + 8;
    if ((SHIBYTE(v10) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v7 = __dst;
    sub_325C(v6, __dst, *(&__dst + 1));
    operator delete(v7);
    return a1;
  }

  LOBYTE(__dst) = 0;
  *a1 = 0;
  v6 = a1 + 8;
  if (SHIBYTE(v10) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *v6 = __dst;
  *(v6 + 2) = v10;
  return a1;
}

uint64_t sub_E99548(uint64_t *a1, char *a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_1794();
  }

  v5 = a1[2] - *a1;
  if (v5 >> 4 > v3)
  {
    v3 = v5 >> 4;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFE0)
  {
    v6 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (!(v6 >> 59))
    {
      operator new();
    }

    sub_1808();
  }

  v15 = 32 * v2;
  sub_E996C0((32 * v2), a2);
  v7 = 32 * v2 + 32;
  v8 = *a1;
  v9 = a1[1];
  v10 = v15 + *a1 - v9;
  if (v9 != *a1)
  {
    v11 = *a1;
    v12 = v15 + *a1 - v9;
    do
    {
      *v12 = *v11;
      v13 = *(v11 + 8);
      *(v12 + 24) = *(v11 + 24);
      *(v12 + 8) = v13;
      *(v11 + 16) = 0;
      *(v11 + 24) = 0;
      *(v11 + 8) = 0;
      v11 += 32;
      v12 += 32;
    }

    while (v11 != v9);
    do
    {
      if (*(v8 + 31) < 0)
      {
        operator delete(*(v8 + 8));
      }

      v8 += 32;
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

void sub_E996AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_243064(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_E996C0(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v10) = v4;
  if (v4)
  {
    memcpy(&__dst, __s, v4);
    *(&__dst + v5) = 0;
    *a1 = 0;
    v6 = a1 + 8;
    if ((SHIBYTE(v10) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v7 = __dst;
    sub_325C(v6, __dst, *(&__dst + 1));
    operator delete(v7);
    return a1;
  }

  LOBYTE(__dst) = 0;
  *a1 = 0;
  v6 = a1 + 8;
  if (SHIBYTE(v10) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *v6 = __dst;
  *(v6 + 2) = v10;
  return a1;
}

uint64_t sub_E997DC(uint64_t *a1, char *a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_1794();
  }

  v5 = a1[2] - *a1;
  if (v5 >> 4 > v3)
  {
    v3 = v5 >> 4;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFE0)
  {
    v6 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (!(v6 >> 59))
    {
      operator new();
    }

    sub_1808();
  }

  v15 = 32 * v2;
  sub_E99954((32 * v2), a2);
  v7 = 32 * v2 + 32;
  v8 = *a1;
  v9 = a1[1];
  v10 = v15 + *a1 - v9;
  if (v9 != *a1)
  {
    v11 = *a1;
    v12 = v15 + *a1 - v9;
    do
    {
      *v12 = *v11;
      v13 = *(v11 + 8);
      *(v12 + 24) = *(v11 + 24);
      *(v12 + 8) = v13;
      *(v11 + 16) = 0;
      *(v11 + 24) = 0;
      *(v11 + 8) = 0;
      v11 += 32;
      v12 += 32;
    }

    while (v11 != v9);
    do
    {
      if (*(v8 + 31) < 0)
      {
        operator delete(*(v8 + 8));
      }

      v8 += 32;
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

void sub_E99940(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_243064(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_E99954(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v10) = v4;
  if (v4)
  {
    memcpy(&__dst, __s, v4);
    *(&__dst + v5) = 0;
    *a1 = 0;
    v6 = a1 + 8;
    if ((SHIBYTE(v10) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v7 = __dst;
    sub_325C(v6, __dst, *(&__dst + 1));
    operator delete(v7);
    return a1;
  }

  LOBYTE(__dst) = 0;
  *a1 = 0;
  v6 = a1 + 8;
  if (SHIBYTE(v10) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *v6 = __dst;
  *(v6 + 2) = v10;
  return a1;
}

unint64_t sub_E99A70(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (v1 == 2)
  {
    v6 = *(a1 + 24);
    if (!v6)
    {
      v6 = &off_2776E58;
    }

    v5 = v6[10];
  }

  else
  {
    if (v1 == 4)
    {
      v4 = &off_2776F10;
      if (*(a1 + 40))
      {
        v4 = *(a1 + 40);
      }

      v2 = v4[6];
      v3 = &off_277E738;
    }

    else
    {
      if (v1 != 3)
      {
        return -1;
      }

      v2 = *(a1 + 32);
      v3 = &off_2776ED0;
    }

    if (!v2)
    {
      v2 = v3;
    }

    v5 = v2[6];
  }

  v7 = &off_277E5E8;
  if (v5)
  {
    v7 = v5;
  }

  v8 = *(v7 + 7);
  v9 = -1;
  if (v8 <= 180.0)
  {
    v10 = *(v7 + 6);
    if (fabs(v10) <= 85.0511288 && v8 >= -180.0)
    {
      v11 = sin(fmin(fmax(v10, -85.0511288), 85.0511288) * 3.14159265 / 180.0);
      LODWORD(v12) = ((log((v11 + 1.0) / (1.0 - v11)) / -12.5663706 + 0.5) * 4294967300.0);
      if (v12 >= 0xFFFFFFFE)
      {
        v12 = 4294967294;
      }

      else
      {
        v12 = v12;
      }

      return ((v8 + 180.0) / 360.0 * 4294967300.0) | (v12 << 32);
    }
  }

  return v9;
}

uint64_t sub_E99C18@<X0>(const char *a1@<X0>, uint64_t **a2@<X1>, _BYTE *a3@<X8>)
{
  sub_D7B0(v16);
  v6 = strlen(a1);
  v7 = sub_4A5C(&v17, a1, v6);
  v8 = *(a2 + 23);
  if (v8 >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  if (v8 >= 0)
  {
    v10 = *(a2 + 23);
  }

  else
  {
    v10 = a2[1];
  }

  sub_4A5C(v7, v9, v10);
  if ((v27 & 0x10) != 0)
  {
    v12 = v26;
    if (v26 < v23)
    {
      v26 = v23;
      v12 = v23;
    }

    v13 = v22;
    v11 = v12 - v22;
    if (v12 - v22 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if ((v27 & 8) == 0)
    {
      v11 = 0;
      a3[23] = 0;
      goto LABEL_18;
    }

    v13 = v20;
    v11 = v21 - v20;
    if ((v21 - v20) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_22:
      sub_3244();
    }
  }

  if (v11 >= 0x17)
  {
    operator new();
  }

  a3[23] = v11;
  if (v11)
  {
    memmove(a3, v13, v11);
  }

LABEL_18:
  a3[v11] = 0;
  v17 = v14;
  if (v25 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v19);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_E99E94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

void sub_E99EA8(uint64_t a1@<X0>, uint64_t *x8_0@<X8>)
{
  sub_5F328(v11);
  if (sub_E81B98(a1))
  {
    operator new();
  }

  if (sub_E81BBC(a1))
  {
    operator new();
  }

  if (sub_E816E4(a1))
  {
    operator new();
  }

  v5 = sub_E839F4(a1);
  sub_E9A230(v11, v5, x8_0);
  v6 = v12;
  if (v12)
  {
    do
    {
      v7 = *v6;
      v8 = *(v6 + 12);
      if (v8 != -1)
      {
        (off_2674438[v8])(&v10, v6 + 5);
      }

      *(v6 + 12) = -1;
      if (*(v6 + 39) < 0)
      {
        operator delete(v6[2]);
      }

      operator delete(v6);
      v6 = v7;
    }

    while (v7);
  }

  v9 = v11[0];
  v11[0] = 0;
  if (v9)
  {
    operator delete(v9);
  }
}

void sub_E9A230(void *a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  if ((atomic_load_explicit(&qword_27BAC60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27BAC60))
  {
    sub_5F328(&unk_27BAC68);
    __cxa_guard_release(&qword_27BAC60);
  }

  *(&__p.__r_.__value_.__s + 23) = 3;
  LODWORD(__p.__r_.__value_.__l.__data_) = 7958113;
  v6 = sub_5FAAC(a1, &__p, &unk_27BAC68);
  sub_5ADDC(a3, v6);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v7 = 0;
  do
  {
    std::to_string(&__p, v7);
    v8 = sub_5FAAC(a1, &__p, &unk_27BAC68);
    sub_5FC7C(a3, v8);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    ++v7;
  }

  while (a2 + 1 != v7);
}

void sub_E9A364(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_E9A3AC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  HIBYTE(v14[2]) = 21;
  strcpy(v14, "ETAURequestValidation");
  __p = 0;
  v12 = 0;
  v13 = 0;
  v5 = sub_3AEC94(a2, v14, &__p);
  v6 = sub_E83A98(a1);
  sub_E9A230(v5, v6, a3);
  v7 = __p;
  if (__p)
  {
    v8 = v12;
    v9 = __p;
    if (v12 != __p)
    {
      do
      {
        v10 = *(v8 - 1);
        v8 -= 3;
        if (v10 < 0)
        {
          operator delete(*v8);
        }
      }

      while (v8 != v7);
      v9 = __p;
    }

    v12 = v7;
    operator delete(v9);
  }

  if (SHIBYTE(v14[2]) < 0)
  {
    operator delete(v14[0]);
  }
}

void sub_E9A4A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_1A104(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_E9A4CC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  HIBYTE(v14[2]) = 20;
  strcpy(v14, "ETARequestValidation");
  __p = 0;
  v12 = 0;
  v13 = 0;
  v5 = sub_3AEC94(a2, v14, &__p);
  v6 = sub_E83B3C(a1);
  sub_E9A230(v5, v6, a3);
  v7 = __p;
  if (__p)
  {
    v8 = v12;
    v9 = __p;
    if (v12 != __p)
    {
      do
      {
        v10 = *(v8 - 1);
        v8 -= 3;
        if (v10 < 0)
        {
          operator delete(*v8);
        }
      }

      while (v8 != v7);
      v9 = __p;
    }

    v12 = v7;
    operator delete(v9);
  }

  if (SHIBYTE(v14[2]) < 0)
  {
    operator delete(v14[0]);
  }
}

void sub_E9A5CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_1A104(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_E9A5F0(uint64_t *a1)
{
  v2 = sub_E9AD14(&xmmword_27BAC90, a1);
  if (v2)
  {
    return *(v2 + 40);
  }

  result = sub_7E7E4(3u);
  if (result)
  {
    sub_19594F8(&v14);
    v4 = sub_4A5C(&v14, "The Level ", 10);
    v5 = *(a1 + 23);
    if (v5 >= 0)
    {
      v6 = a1;
    }

    else
    {
      v6 = *a1;
    }

    if (v5 >= 0)
    {
      v7 = *(a1 + 23);
    }

    else
    {
      v7 = a1[1];
    }

    v8 = sub_4A5C(v4, v6, v7);
    sub_4A5C(v8, " is not a valid RequestValidationLevel.", 39);
    if ((v24 & 0x10) != 0)
    {
      v10 = v23;
      if (v23 < v20)
      {
        v23 = v20;
        v10 = v20;
      }

      v11 = v19;
      v9 = v10 - v19;
      if (v10 - v19 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_28;
      }
    }

    else
    {
      if ((v24 & 8) == 0)
      {
        v9 = 0;
        v13 = 0;
LABEL_22:
        *(&__p + v9) = 0;
        sub_7E854(&__p, 3u);
        if (v13 < 0)
        {
          operator delete(__p);
        }

        if (v22 < 0)
        {
          operator delete(v21);
        }

        std::locale::~locale(&v16);
        std::ostream::~ostream();
        std::ios::~ios();
        return 0;
      }

      v11 = v17;
      v9 = v18 - v17;
      if ((v18 - v17) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_28:
        sub_3244();
      }
    }

    if (v9 >= 0x17)
    {
      operator new();
    }

    v13 = v9;
    if (v9)
    {
      memmove(&__p, v11, v9);
    }

    goto LABEL_22;
  }

  return result;
}

void sub_E9A8A0(_Unwind_Exception *a1, void *__p, uint64_t a3, int a4, __int16 a5, char a6, char a7, char a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  if (SHIBYTE(a11) < 0)
  {
    operator delete(a9);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t **sub_E9A8E4(void *a1, uint64_t *a2, uint64_t a3)
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

  v7 = sub_AAD8(&v25, a2, v6);
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
    operator new();
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

void sub_E9ACE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23D34(va);
  _Unwind_Resume(a1);
}

void sub_E9ACFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23D34(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_E9AD14(void *a1, uint64_t *a2)
{
  v2 = a2;
  v4 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = sub_AAD8(&v25, a2, v5);
  v7 = a1[1];
  if (!*&v7)
  {
    return 0;
  }

  v8 = v6;
  v9 = vcnt_s8(v7);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v7)
    {
      v10 = v6 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  v12 = *v11;
  if (*v11)
  {
    v13 = *(v2 + 23);
    if (v13 >= 0)
    {
      v14 = *(v2 + 23);
    }

    else
    {
      v14 = v2[1];
    }

    if (v13 < 0)
    {
      v2 = *v2;
    }

    if (v9.u32[0] < 2uLL)
    {
      v15 = *&v7 - 1;
      while (1)
      {
        v20 = v12[1];
        if (v8 == v20)
        {
          v21 = *(v12 + 39);
          v22 = v21;
          if (v21 < 0)
          {
            v21 = v12[3];
          }

          if (v21 == v14)
          {
            v23 = v22 >= 0 ? (v12 + 2) : v12[2];
            if (!memcmp(v23, v2, v14))
            {
              return v12;
            }
          }
        }

        else if ((v20 & v15) != v10)
        {
          return 0;
        }

        v12 = *v12;
        if (!v12)
        {
          return v12;
        }
      }
    }

    do
    {
      v16 = v12[1];
      if (v8 == v16)
      {
        v17 = *(v12 + 39);
        v18 = v17;
        if (v17 < 0)
        {
          v17 = v12[3];
        }

        if (v17 == v14)
        {
          v19 = v18 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v19, v2, v14))
          {
            return v12;
          }
        }
      }

      else
      {
        if (v16 >= *&v7)
        {
          v16 %= *&v7;
        }

        if (v16 != v10)
        {
          return 0;
        }
      }

      v12 = *v12;
    }

    while (v12);
  }

  return v12;
}