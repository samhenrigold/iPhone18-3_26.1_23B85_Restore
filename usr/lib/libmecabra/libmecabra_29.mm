void sub_299365A58(uint64_t a1)
{
  sub_299365ED4(a1, &v11);
  v2 = v11;
  v3 = v12;
  if (v11 != v12)
  {
    do
    {
      (*(**v2 + 48))(*v2, *(a1 + 248));
      ++v2;
    }

    while (v2 != v3);
    v2 = v11;
  }

  if (v2)
  {
    v12 = v2;
    operator delete(v2);
  }

  sub_299365D74(&v11, a1);
  v4 = v11;
  v5 = v12;
  if (v11 != v12)
  {
    do
    {
      (*(**v4 + 48))(*v4, *(a1 + 248));
      ++v4;
    }

    while (v4 != v5);
    v4 = v11;
  }

  if (v4)
  {
    v12 = v4;
    operator delete(v4);
  }

  v6 = *(a1 + 72);
  v7 = *(a1 + 80);
  while (v6 != v7)
  {
    v9 = *v6++;
    v8 = v9;
    if ((*(*a1 + 24) & 0x800) != 0)
    {
      v10 = 252;
    }

    else
    {
      v10 = 248;
    }

    (*(*v8 + 48))(v8, *(a1 + v10));
  }
}

void sub_299365BAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unsigned int **sub_299365BCC(unsigned int **result)
{
  if (!result[42] && !result[41] && (*(*result + 27) & 8) == 0)
  {
    operator new();
  }

  return result;
}

char *sub_299365D74@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  v4 = 15;
  if ((*(*a2 + 24) & 0x4000) == 0)
  {
    v4 = 12;
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  sub_299367070(a1, a2[v4], a2[v4 + 1], (a2[v4 + 1] - a2[v4]) >> 3);
  return sub_2993670EC(a1, *(a1 + 8), *(a2[1] + 72), *(a2[1] + 80), (*(a2[1] + 80) - *(a2[1] + 72)) >> 3);
}

void sub_299365DEC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_299365E08(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  while (v4 != v5)
  {
    v6 = *v4;
    if (!(*(*v6 + 16))(v6))
    {
      sub_29931C308(a2, &v6);
    }

    ++v4;
  }

  if ((*(a1 + 345) & 1) != 0 && *(a1 + 240))
  {
    v6 = *(a1 + 240);
    sub_29931C308(a2, &v6);
  }
}

void sub_299365EB4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_299365ED4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = 48;
  if ((*(*a1 + 24) & 0x4000) == 0)
  {
    v4 = 24;
  }

  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  sub_299367070(a2, *(a1 + v4), *(a1 + v4 + 8), (*(a1 + v4 + 8) - *(a1 + v4)) >> 3);
  sub_2993670EC(a2, *(a2 + 8), *(*(a1 + 8) + 48), *(*(a1 + 8) + 56), (*(*(a1 + 8) + 56) - *(*(a1 + 8) + 48)) >> 3);
  if (*(a1 + 345) == 1)
  {
    if (*(a1 + 240))
    {
      v5 = *(a1 + 240);
      sub_29931C308(a2, &v5);
    }
  }
}

void sub_299365F78(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_299365F98(uint64_t a1, uint64_t a2)
{
  v7 = a2;
  if (!a2)
  {
    return;
  }

  v4 = (*(*a2 + 16))(a2);
  if ((*(*a2 + 24))(a2))
  {
    sub_29931C308(a1 + 120, &v7);
    if (v4 == 6)
    {
      return;
    }

    sub_29931C308(a1 + 96, &v7);
    if (v4 != 9)
    {
      if (v4 == 12)
      {
        v5 = 168;
        goto LABEL_22;
      }

      if (v4 != 14)
      {
        return;
      }
    }

LABEL_21:
    v5 = 144;
LABEL_22:
    sub_29931C308(a1 + v5, &v7);
    return;
  }

  if (v4 > 0x11)
  {
    goto LABEL_7;
  }

  if (((1 << v4) & 0x24C08) != 0)
  {
    goto LABEL_16;
  }

  if (v4 == 5)
  {
    sub_29931C308(a1 + 24, &v7);
    v5 = 48;
    goto LABEL_22;
  }

  if (v4 != 9)
  {
LABEL_7:
    if (v4)
    {
      if (v4 != 1)
      {
        return;
      }

      v5 = 72;
      goto LABEL_22;
    }
  }

  sub_29931C308(a1 + 192, &v7);
LABEL_16:
  sub_29931C308(a1 + 24, &v7);
  sub_29931C308(a1 + 48, &v7);
  if (v4 == 14 || v4 == 9)
  {
    goto LABEL_21;
  }
}

uint64_t sub_299366108(uint64_t result)
{
  v1 = result;
  v2 = *(result + 144);
  v3 = *(result + 152);
  if (v2 != v3)
  {
    while (1)
    {
      v4 = *v2;
      result = (*(**v2 + 24))(*v2);
      if (result)
      {
        v8 = v1[12];
        v7 = v1[13];
        if (v8 != v7)
        {
          while (*v8 != v4)
          {
            if (++v8 == v7)
            {
              goto LABEL_21;
            }
          }

          if (v8 != v7)
          {
            v9 = v8 + 1;
            if (v8 + 1 != v7)
            {
              do
              {
                if (*v9 != v4)
                {
                  *v8++ = *v9;
                }

                ++v9;
              }

              while (v9 != v7);
              v7 = v1[13];
            }
          }
        }

        if (v8 != v7)
        {
          v1[13] = v8;
        }

LABEL_21:
        v11 = v1[15];
        v10 = v1[16];
        if (v11 != v10)
        {
          while (*v11 != v4)
          {
            if (++v11 == v10)
            {
              goto LABEL_65;
            }
          }

          if (v11 != v10)
          {
            v12 = v11 + 1;
            if (v11 + 1 != v10)
            {
              do
              {
                if (*v12 != v4)
                {
                  *v11++ = *v12;
                }

                ++v12;
              }

              while (v12 != v10);
              v10 = v1[16];
            }
          }
        }

        if (v11 != v10)
        {
          v1[16] = v11;
        }

        goto LABEL_65;
      }

      result = (*(*v4 + 16))(v4);
      if (result == 14)
      {
        goto LABEL_41;
      }

      if (result == 9)
      {
        break;
      }

LABEL_65:
      if (++v2 == v3)
      {
        v2 = v1[18];
        goto LABEL_67;
      }
    }

    v6 = v1[24];
    v5 = v1[25];
    if (v6 != v5)
    {
      while (*v6 != v4)
      {
        if (++v6 == v5)
        {
          goto LABEL_41;
        }
      }

      if (v6 != v5)
      {
        v13 = v6 + 1;
        if (v6 + 1 != v5)
        {
          do
          {
            if (*v13 != v4)
            {
              *v6++ = *v13;
            }

            ++v13;
          }

          while (v13 != v5);
          v5 = v1[25];
        }
      }
    }

    if (v6 != v5)
    {
      v1[25] = v6;
    }

LABEL_41:
    v15 = v1[3];
    v14 = v1[4];
    if (v15 != v14)
    {
      while (*v15 != v4)
      {
        if (++v15 == v14)
        {
          goto LABEL_53;
        }
      }

      if (v15 != v14)
      {
        v16 = v15 + 1;
        if (v15 + 1 != v14)
        {
          do
          {
            if (*v16 != v4)
            {
              *v15++ = *v16;
            }

            ++v16;
          }

          while (v16 != v14);
          v14 = v1[4];
        }
      }
    }

    if (v15 != v14)
    {
      v1[4] = v15;
    }

LABEL_53:
    v18 = v1[6];
    v17 = v1[7];
    if (v18 != v17)
    {
      while (*v18 != v4)
      {
        if (++v18 == v17)
        {
          goto LABEL_65;
        }
      }

      if (v18 != v17)
      {
        v19 = v18 + 1;
        if (v18 + 1 != v17)
        {
          do
          {
            if (*v19 != v4)
            {
              *v18++ = *v19;
            }

            ++v19;
          }

          while (v19 != v17);
          v17 = v1[7];
        }
      }
    }

    if (v18 != v17)
    {
      v1[7] = v18;
    }

    goto LABEL_65;
  }

LABEL_67:
  v1[19] = v2;
  return result;
}

void sub_29936646C(uint64_t a1, int a2)
{
  sub_2993481C4((a1 + 264), a2, &v5);
  v3 = v5;
  v4 = v6;
  if (v5 != v6)
  {
    do
    {
      sub_299365F98(a1, *v3++);
    }

    while (v3 != v4);
    v3 = v5;
  }

  if (v3)
  {
    v6 = v3;
    operator delete(v3);
  }
}

void sub_2993664E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2993664FC(_BYTE *a1, const void *a2, int a3)
{
  sub_2993480B0(a1 + 264, a2, a3);
  if (a3 == 2)
  {
    if ((a1[258] & 1) == 0)
    {
      sub_29936646C(a1, 2);
      a1[258] = 1;
    }
  }

  else if (a3 == 1)
  {
    if ((a1[257] & 1) == 0)
    {
      sub_29936646C(a1, 1);
      a1[257] = 1;
    }
  }

  else if (!a3 && (a1[256] & 1) == 0)
  {
    sub_29936646C(a1, 0);
    a1[256] = 1;
  }
}

uint64_t sub_299366598(uint64_t a1)
{
  v2 = sub_299347F2C((a1 + 264), 0);
  v3 = v2 | sub_299347F2C((a1 + 264), 1);
  return v3 | sub_299347F2C((a1 + 264), 2);
}

void sub_299366708(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    MEMORY[0x29C29BF70](v1, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

void sub_299366744(unsigned int **a1, uint64_t a2)
{
  if (!a1[39])
  {
    operator new();
  }

  if ((a1[43] & 1) == 0 && !a1[40])
  {
    operator new();
  }
}

uint64_t sub_2993668BC(uint64_t a1, void *a2, void *a3)
{
  if (a3[1] != *a3)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v14 = 0;
      __p = 0;
      v12 = 0;
      v13 = 0;
      sub_2992B82DC(*a2 + v6, *(a1 + 16), *(a1 + 344), &__p, &v14);
      if (v14)
      {
        v8 = 312;
      }

      else
      {
        v8 = 320;
      }

      v9 = *(a1 + v8);
      if (v9)
      {
        sub_2993DB090(v9, &__p, *(*a3 + 4 * v7));
      }

      if (__p)
      {
        v12 = __p;
        operator delete(__p);
      }

      ++v7;
      v6 += 24;
    }

    while (v7 < (a3[1] - *a3) >> 2);
  }

  return 1;
}

void sub_299366998(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2993669B8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 312);
  if (v4)
  {
    sub_2993DAE48(v4);
  }

  v5 = *(a1 + 320);
  if (v5)
  {
    sub_2993DAE48(v5);
  }

  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 0x40000000;
  v6[2] = sub_299366A68;
  v6[3] = &unk_29EF13588;
  v6[4] = a1;
  sub_2992C8FE4(a2, v6);
}

void sub_299366A68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  if (sub_2992B8118(a2))
  {
    v12 = 0;
    v10 = 0;
    v11 = 0;
    __p = 0;
    sub_2992B82DC(a2, *(v6 + 16), *(v6 + 344), &__p, &v12);
    v7 = 320;
    if (v12)
    {
      v7 = 312;
    }

    v8 = *(v6 + v7);
    if (v8)
    {
      sub_2993DAED4(v8, &__p, a4);
    }

    if (__p)
    {
      v10 = __p;
      operator delete(__p);
    }
  }
}

void sub_299366B08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_299366B28(void *a1)
{
  sub_299366108(a1);
  v2 = a1[39];
  a1[39] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[40];
  a1[40] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[41];
  a1[41] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  result = a1[42];
  a1[42] = 0;
  if (result)
  {
    v6 = *(*result + 8);

    return v6();
  }

  return result;
}

void *sub_299366C24(uint64_t a1)
{
  result = *(a1 + 328);
  if (result)
  {
    if (*(a1 + 336))
    {
      sub_2993DAE48(result);
      v3 = *(a1 + 336);
      v4[0] = MEMORY[0x29EDCA5F8];
      v4[1] = 0x40000000;
      v4[2] = sub_299366CBC;
      v4[3] = &unk_29EF135A8;
      v4[4] = a1;
      sub_29927B9D4(v3, v4);
      return sub_2993DAE94(*(a1 + 328));
    }
  }

  return result;
}

void sub_299366CBC(uint64_t a1, uint64_t a2, CFDictionaryRef theDict)
{
  v4 = *(a1 + 32);
  v8 = 0;
  v6 = 0;
  v7 = 0;
  __p = 0;
  if (sub_2992B855C(theDict, *(v4 + 16), &__p, *(v4 + 344), &v8) && v8 == 1)
  {
    sub_2993DAED4(*(v4 + 328), &__p, a2);
  }

  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }
}

void sub_299366D40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_299366D5C(uint64_t a1, const __CFDictionary *a2)
{
  if (*(a1 + 328))
  {
    __p = 0;
    v8 = 0;
    v9 = 0;
    v6 = 0;
    v3 = *(a1 + 336);
    if (v3 && sub_29927B98C(v3) && sub_2992B855C(a2, *(a1 + 16), &__p, *(a1 + 344), &v6) && v6 == 1)
    {
      sub_2993DAED4(*(a1 + 328), &__p, 0);
    }

    if (__p)
    {
      v8 = __p;
      operator delete(__p);
    }
  }

  return 0;
}

void sub_299366E0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_299366E28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = 0;
  __p = 0;
  v7 = 0;
  v8 = 0;
  sub_2992B82DC(a2, *(a1 + 16), *(a1 + 344), &__p, &v9);
  if (v9 == 1)
  {
    sub_2993DAED4(*(a1 + 312), &__p, a3);
  }

  else
  {
    v5 = *(a1 + 320);
    if (v5)
    {
      sub_2993DAED4(v5, &__p, a3);
    }
  }

  if (__p)
  {
    v7 = __p;
    operator delete(__p);
  }
}

void sub_299366EC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_299366EDC(uint64_t result)
{
  v1 = *(result + 312);
  if (v1)
  {
    v2 = v1[6];
    if (*v2)
    {
      v1[3] = v1[2];
      v3 = *(result + 320);
      if (v3)
      {
        *(v3 + 24) = *(v3 + 16);
      }

      sub_2993669B8(result, v2);
    }
  }

  return result;
}

void sub_299366F10(int **a1)
{
  v1 = sub_299277300(**a1);
  v2 = sub_29936C2B8();
  v3 = sub_29936C350(v2, v1, off_2A145F738[0], @"sys.dic");
  v4 = *(v3 + 23);
  if ((v4 & 0x80u) != 0)
  {
    v4 = v3[1];
  }

  if (v4)
  {
    sub_299366FE4(v1, v3);
  }

  v5 = sub_29936C350(v2, v1, off_2A145F738[0], @"supplement.dic");
  v6 = *(v5 + 23);
  if ((v6 & 0x80u) != 0)
  {
    v6 = v5[1];
  }

  if (v6)
  {

    sub_299366FE4(v1, v5);
  }
}

void sub_299366FE4(int a1, uint64_t a2)
{
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 0x40000000;
  v4[2] = sub_299234CE0;
  v4[3] = &unk_29EF0DD50;
  v5 = a1;
  v4[4] = a2;
  sub_299234450(a2, v4, 0, &v2);
  if (v3)
  {
    sub_2991A893C(v3);
  }
}

uint64_t *sub_299367070(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_299273C64(result, a4);
  }

  return result;
}

void sub_2993670D0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

char *sub_2993670EC(void *a1, char *__src, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  if (a5 < 1)
  {
    return __src;
  }

  v7 = a3;
  v10 = a1[1];
  v9 = a1[2];
  if (a5 <= (v9 - v10) >> 3)
  {
    v16 = (v10 - __src) >> 3;
    if (v16 >= a5)
    {
      v20 = &__src[8 * a5];
      v21 = &v10[-8 * a5];
      v22 = a1[1];
      while (v21 < v10)
      {
        v23 = *v21;
        v21 += 8;
        *v22++ = v23;
      }

      a1[1] = v22;
      if (v10 != v20)
      {
        memmove(&__src[8 * a5], __src, v10 - v20);
      }

      v24 = &v7[a5];
      v25 = __src;
      do
      {
        v26 = *v7++;
        *v25 = v26;
        v25 += 8;
      }

      while (v7 != v24);
    }

    else
    {
      v17 = (a3 + v10 - __src);
      v18 = a1[1];
      if (v17 == a4)
      {
        v19 = a1[1];
      }

      else
      {
        v36 = (a3 + v10 - __src);
        v19 = a1[1];
        do
        {
          v37 = *v36++;
          *v19++ = v37;
          ++v18;
        }

        while (v36 != a4);
      }

      a1[1] = v18;
      if (v16 >= 1)
      {
        v38 = &__src[8 * a5];
        v39 = &v18[-a5];
        v40 = v18;
        while (v39 < v10)
        {
          v41 = *v39;
          v39 += 8;
          *v40++ = v41;
        }

        a1[1] = v40;
        if (v19 != v38)
        {
          memmove(&__src[8 * a5], __src, v18 - v38);
        }

        if (v10 != __src)
        {
          v42 = __src;
          do
          {
            v43 = *v7++;
            *v42 = v43;
            v42 += 8;
          }

          while (v7 != v17);
        }
      }
    }

    return __src;
  }

  v11 = *a1;
  v12 = a5 + (&v10[-*a1] >> 3);
  if (v12 >> 61)
  {
    sub_299212A8C();
  }

  v13 = __src - v11;
  v14 = v9 - v11;
  if (v14 >> 2 > v12)
  {
    v12 = v14 >> 2;
  }

  if (v14 >= 0x7FFFFFFFFFFFFFF8)
  {
    v15 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v15 = v12;
  }

  if (v15)
  {
    sub_29920B86C(a1, v15);
  }

  v27 = 8 * (v13 >> 3);
  v28 = 8 * a5;
  v29 = v27;
  do
  {
    v30 = *v7++;
    *v29++ = v30;
    v28 -= 8;
  }

  while (v28);
  memcpy((v27 + 8 * a5), __src, a1[1] - __src);
  v31 = *a1;
  v32 = v27 + 8 * a5 + a1[1] - __src;
  a1[1] = __src;
  v33 = (__src - v31);
  v34 = (v27 - (__src - v31));
  memcpy(v34, v31, v33);
  v35 = *a1;
  *a1 = v34;
  a1[1] = v32;
  a1[2] = 0;
  if (v35)
  {
    operator delete(v35);
  }

  return v27;
}

void sub_29936730C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = &unk_2A1F73CB8;
  *(a5 + 8) = 0;
  *(a5 + 16) = a2;
  *(a5 + 24) = a3;
  *(a5 + 40) = 0xFFFFFFFFLL;
  *(a5 + 32) = 32;
  v15 = 0;
  v8 = (a1 + 2 * a2);
  sub_299321FD8(*(*(a4 + 88) + 8), v8, a3, &v15);
  v9 = v15;
  if (!v15)
  {
    v10 = CFStringCreateWithCharacters(*MEMORY[0x29EDB8ED8], v8, a3);
    if (v10)
    {
      v11 = v10;
      v12 = *(a4 + 8);
      if (*(v12 + 5) != 1 || (v13 = *(v12 + 40)) == 0)
      {
        v13 = *(v12 + 32);
      }

      v14 = (*(*v13 + 16))(v13, v11);
      if (v14 <= 0x1F3)
      {
        if (v14 == 3)
        {
          v14 = 501;
        }

        else
        {
          v14 = sub_29927954C(v11);
        }
      }

      v15 = v14;
      CFRelease(v11);
    }

    v9 = v15;
  }

  *(a5 + 8) = v9;
}

uint64_t sub_299367458(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  *a1 = &unk_2A1F73CB8;
  *(a1 + 8) = (*(*a2 + 24))(a2);
  v8 = *((*(*a2 + 56))(a2) + 8);
  *(a1 + 16) = a3;
  *(a1 + 24) = v8;
  *(a1 + 32) = 0;
  *(a1 + 40) = a4;
  *(a1 + 44) = 0;
  v9 = *((*(*a2 + 72))(a2) + 8);
  if (v9)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v11 = v11 + *(*(*(*a2 + 72))(a2) + 2 * v10) - 48;
      if (v11 <= 0x20)
      {
        *(a1 + 44) |= 1 << (v11 - 1);
      }

      ++v10;
    }

    while (v9 != v10);
  }

  return a1;
}

uint64_t sub_2993675B4(uint64_t result, int a2, uint64_t a3, uint64_t a4, unsigned __int16 *a5, uint64_t a6, int a7)
{
  *result = &unk_2A1F73CB8;
  *(result + 8) = a2;
  *(result + 16) = 0;
  *(result + 24) = a4;
  *(result + 32) = 0;
  *(result + 40) = a7;
  *(result + 44) = 0;
  if (a6 >= 1)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = *a5++;
      v8 = v8 + v9 - 48;
      if (v8 <= 0x20)
      {
        v7 |= 1 << (v8 - 1);
        *(result + 44) = v7;
      }

      --a6;
    }

    while (a6);
  }

  return result;
}

uint64_t sub_299367624(uint64_t a1, int a2, uint64_t a3)
{
  v12 = 0;
  v13 = 0;
  v14 = 0;
  sub_299215EC0(&v12, *a3, *(a3 + 8), (*(a3 + 8) - *a3) >> 1);
  *a1 = &unk_2A1F73CB8;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0xFFFFFFFFLL;
  v5 = v12;
  if (v13 != v12)
  {
    v6 = 0;
    v7 = 0;
    v8 = v13 - v12;
    if (v8 <= 1)
    {
      v8 = 1;
    }

    v9 = v12;
    do
    {
      v10 = *v9++;
      v7 += v10;
      if (v7 <= 0x20)
      {
        v6 |= 1 << (v7 - 1);
        *(a1 + 44) = v6;
      }

      --v8;
    }

    while (v8);
    goto LABEL_10;
  }

  if (v13)
  {
LABEL_10:
    v13 = v5;
    operator delete(v5);
  }

  return a1;
}

BOOL sub_299367708(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((v1 & 0x20) != 0)
  {
    return 0;
  }

  if ((v1 & 0x40) != 0)
  {
    return *(a1 + 8) != 0;
  }

  return *(a1 + 40) == 0;
}

CFStringRef sub_29936773C(uint64_t a1)
{
  if ((*(a1 + 32) & 0x60) != 0)
  {
    return 0;
  }

  if (*(a1 + 44))
  {
    Mutable = CFStringCreateMutable(*MEMORY[0x29EDB8ED8], 0);
    v7[0] = MEMORY[0x29EDCA5F8];
    v7[1] = 0x40000000;
    v7[2] = sub_299367B88;
    v7[3] = &unk_29EF135C8;
    v7[4] = Mutable;
    sub_299367848(a1, 0, v3, 0, 0, 0, v7);
  }

  else
  {
    (*(*a1 + 24))(a1);
    chars = v4 + 48;
    return CFStringCreateWithCharacters(0, &chars, 1);
  }

  return Mutable;
}

UniChar *sub_299367848(unsigned int *a1, uint64_t *a2, uint64_t a3, const __CFString *a4, const __CFString *a5, int a6, uint64_t a7)
{
  v11 = a1[11];
  if (v11)
  {
    v12 = 0;
    v13 = 0;
LABEL_3:
    v14 = v12;
    if (v13 <= 0x20)
    {
      v15 = 32;
    }

    else
    {
      v15 = v13;
    }

    while (v15 != v13)
    {
      v16 = v13++;
      if ((v11 >> v16))
      {
        v12 = v14 + 1;
        if (v13 - 1 < 0xFFFFFFFFFFFFFFFELL)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    v14 = 0;
  }

  (*(*a1 + 24))(a1, a2, a3);
  v18 = v17;
  v27 = 0;
  if (v14 < 2)
  {
    return (*(a7 + 16))(a7, 0, v17, a1[2], &v27);
  }

  v19 = 0;
  while (v19 != 32)
  {
    v20 = a1[11] << v19++;
    if ((v20 & 0x80000000) != 0)
    {
      goto LABEL_17;
    }
  }

  v19 = -1;
LABEL_17:
  if (33 - v19 != v17)
  {
    return (*(a7 + 16))(a7, 0, v17, a1[2], &v27);
  }

  if (a4)
  {
    (*(*a1 + 24))(a1);
    sub_299276B44();
  }

  v26 = 0;
  v22 = 0;
  do
  {
    v23 = sub_29933CB60(a1[11], &v26, a6);
    if (!v23)
    {
      break;
    }

    if (a5 && v23 == 1)
    {
      (*(*a1 + 24))(a1);
      sub_299276B44();
    }

    v24 = v23 + v22;
    if (a6)
    {
      v22 = v18 - (v23 + v22);
    }

    (*(a7 + 16))(a7, v22, v23, 0, &v27);
    if (v26 == -1)
    {
      break;
    }

    v22 = v24;
  }

  while ((v27 & 1) == 0);
  return 0;
}

void sub_299367B38(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MEMORY[0x29C29BF70](a10, 0x1000C80BDFB0063, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_299367B88(uint64_t a1, uint64_t a2, __int16 a3)
{
  chars = a3 + 48;
  v4 = CFStringCreateWithCharacters(*MEMORY[0x29EDB8ED8], &chars, 1);
  CFStringAppend(*(a1 + 32), v4);
  if (v4)
  {
    CFRelease(v4);
  }
}

CFStringRef sub_299367C0C(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  if ((a1[32] & 0x10) == 0)
  {
    return 0;
  }

  v3 = (*(*a1 + 64))(a1);
  if (!v3)
  {
    return v3;
  }

  (*(*a1 + 24))(a1);
  if (a3 < v7)
  {
    v18 = 0;
    (*(*a1 + 56))(&__p, a1);
    v8 = a2 + a3;
    if (a2 + a3 >= ((v17 - __p) >> 1))
    {
      goto LABEL_20;
    }

    if (v8)
    {
      v9 = 0;
      v10 = 0;
      v11 = 0;
      do
      {
        v12 = *(__p + v9);
        if (v9 >= a2)
        {
          v13 = *(__p + v9);
        }

        else
        {
          v13 = 0;
        }

        v11 += v13;
        if (v9 >= a2)
        {
          v12 = 0;
        }

        v10 += v12;
        ++v9;
      }

      while (v8 != v9);
    }

    else
    {
      v11 = 0;
      v10 = 0;
    }

    if (v10 + v11 <= CFStringGetLength(v3))
    {
      v20.location = v10;
      v20.length = v11;
      v3 = CFStringCreateWithSubstring(*MEMORY[0x29EDB8ED8], v3, v20);
    }

    else
    {
LABEL_20:
      v3 = 0;
    }

    if (__p)
    {
      v17 = __p;
      operator delete(__p);
    }

    return v3;
  }

  v14 = *MEMORY[0x29EDB8ED8];

  return CFStringCreateCopy(v14, v3);
}

void sub_299367DB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, const void *a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_299219AB4(&a12, 0);
  _Unwind_Resume(a1);
}

__CFString *sub_299367DE8(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  if ((a1[32] & 0x10) == 0)
  {
    return 0;
  }

  (*(*a1 + 56))(&__p);
  v7 = __p;
  v8 = v17 - __p;
  if (v17 == __p)
  {
    Mutable = 0;
    if (!__p)
    {
      return Mutable;
    }

    goto LABEL_16;
  }

  v15 = 0;
  (*(*a1 + 24))(a1);
  if (a3 >= v9)
  {
    Mutable = sub_29927A080(&__p);
  }

  else
  {
    v10 = v8 >> 1;
    Mutable = CFStringCreateMutable(*MEMORY[0x29EDB8ED8], v10);
    v15 = Mutable;
    v11 = a2 + a3;
    if (v11 && v11 < v10)
    {
      for (i = 0; i != v11; ++i)
      {
        if (i >= a2)
        {
          chars = *(__p + i) + 48;
          CFStringAppendCharacters(Mutable, &chars, 1);
        }
      }
    }
  }

  v7 = __p;
  if (__p)
  {
LABEL_16:
    v17 = v7;
    operator delete(v7);
  }

  return Mutable;
}

void sub_299367F30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, const void *a11, void *__p, uint64_t a13)
{
  sub_299219AB4(&a11, 0);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

double sub_299367F78(uint64_t a1, unsigned __int16 **a2, unsigned __int16 **a3, uint64_t *a4, uint64_t a5, int a6, int a7, char a8)
{
  v10 = a2;
  v11 = 32;
  if (a7)
  {
    v11 = 24;
  }

  v94 = *(a1 + v11);
  __p = 0;
  v105 = 0uLL;
  v12 = *a4;
  if (a4[1] == *a4)
  {
    v37 = 0;
    v34 = 0;
    v35 = 0;
    goto LABEL_40;
  }

  v13 = 0;
  v14 = *a2;
  do
  {
    v15 = (v12 + 40 * v13);
    if (!v15[17] && v15[15] == v15[16])
    {
      if (!v14)
      {
        goto LABEL_35;
      }

      v16 = v15[12];
      if (!v15[12])
      {
        goto LABEL_35;
      }

      v17 = v14;
      while (1)
      {
        v19 = *v17++;
        v18 = v19;
        v20 = (v19 + 240);
        v21 = (v19 - 48) >= 0xA && v20 >= 0xA;
        if (!v21 || sub_299281CA8(v18))
        {
          break;
        }

        if (!--v16)
        {
          v12 = *a4;
          goto LABEL_35;
        }
      }

      v12 = *a4;
    }

    if (*(v12 + 40 * v13 + 24) >= 2u)
    {
      v22 = 0;
      do
      {
        if (ublock_getCode(v14[v22]) != UBLOCK_HIGH_SURROGATES)
        {
          v23 = v105;
          if (v105 >= *(&v105 + 1))
          {
            v25 = 0xAAAAAAAAAAAAAAABLL * ((v105 - __p) >> 2);
            v26 = v25 + 1;
            if ((v25 + 1) > 0x1555555555555555)
            {
              sub_299212A8C();
            }

            if (0x5555555555555556 * ((*(&v105 + 1) - __p) >> 2) > v26)
            {
              v26 = 0x5555555555555556 * ((*(&v105 + 1) - __p) >> 2);
            }

            if (0xAAAAAAAAAAAAAAABLL * ((*(&v105 + 1) - __p) >> 2) >= 0xAAAAAAAAAAAAAAALL)
            {
              v27 = 0x1555555555555555;
            }

            else
            {
              v27 = v26;
            }

            sub_299369A48(&v106, v27, v25, &__p);
            v28 = v108;
            *v108 = v13;
            *(v28 + 4) = v22;
            *(v28 + 8) = -1;
            *&v108 = v28 + 12;
            v29 = &v107[-(v105 - __p)];
            memcpy(v29, __p, v105 - __p);
            v30 = __p;
            v31 = *(&v105 + 1);
            __p = v29;
            v32 = v108;
            v105 = v108;
            *&v108 = v30;
            *(&v108 + 1) = v31;
            v106 = v30;
            v107 = v30;
            if (v30)
            {
              v96 = v32;
              operator delete(v30);
              v32 = v96;
            }

            v24 = v32;
          }

          else
          {
            *v105 = v13;
            *(v23 + 4) = v22;
            v24 = v23 + 12;
            *(v23 + 8) = -1;
          }

          *&v105 = v24;
        }

        ++v22;
        v12 = *a4;
      }

      while (v22 < *(*a4 + 40 * v13 + 24) - 1);
    }

LABEL_35:
    v14 += *(v12 + 40 * v13++ + 24);
    v33 = 0xCCCCCCCCCCCCCCCDLL * ((a4[1] - v12) >> 3);
  }

  while (v33 > v13);
  v35 = *(&v105 + 1);
  v34 = v105;
  if (v105 < *(&v105 + 1))
  {
    *v105 = -1;
    *(v34 + 8) = -1;
    v36 = v34 + 12;
    v10 = a2;
    goto LABEL_49;
  }

  v37 = __p;
  v10 = a2;
LABEL_40:
  v38 = 0xAAAAAAAAAAAAAAABLL * ((v34 - v37) >> 2);
  v39 = v38 + 1;
  if ((v38 + 1) > 0x1555555555555555)
  {
    sub_299212A8C();
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

  sub_299369A48(&v106, v41, v38, &__p);
  v42 = v108;
  *v108 = -1;
  *(v42 + 8) = -1;
  *&v108 = v42 + 12;
  v43 = &v107[-(v105 - __p)];
  memcpy(v43, __p, v105 - __p);
  v44 = __p;
  v45 = *(&v105 + 1);
  v36 = v108;
  __p = v43;
  v105 = v108;
  v106 = v44;
  *&v108 = v44;
  *(&v108 + 1) = v45;
  v107 = v44;
  if (v44)
  {
    operator delete(v44);
  }

  v33 = 0xCCCCCCCCCCCCCCCDLL * ((a4[1] - *a4) >> 3);
LABEL_49:
  *&v105 = v36;
  v106 = 0;
  v107 = 0;
  *&v108 = 0;
  sub_2991B6CFC(&v106, v33 + 1);
  v46 = __p;
  v89 = v105;
  if (__p == v105)
  {
    v48 = -1.79769313e308;
  }

  else
  {
    v97 = a5 + 1;
    v47 = 0.0;
    v48 = -1.79769313e308;
    do
    {
      v49 = *v10;
      v50 = *a3;
      v103 = 0;
      v107 = v106;
      if (a6)
      {
        sub_2992141C0(&v106, dword_29941E920);
      }

      v51 = *a4;
      v52 = a4[1] - *a4;
      v53 = v94;
      if (v52)
      {
        v54 = 0;
        v55 = 0xCCCCCCCCCCCCCCCDLL * (v52 >> 3);
        v95 = v46;
        do
        {
          if (v54 == a5 && v54 < v55 - 1)
          {
            v56 = v51 + 40 * a5;
            v57 = v51 + 40 * v97;
            v58 = *(v57 + 24);
            v59 = *(v56 + 28);
            v60 = *(v57 + 28);
            v61 = (v58 + *(v56 + 24));
            if (v49)
            {
              v62 = (v58 + *(v56 + 24));
            }

            else
            {
              v62 = 0;
            }

            v103 = sub_2993F5A44(v53, v49, v62, *v56);
            sub_2992141C0(&v106, &v103);
            v101 = v49;
            v102 = v62;
            v63 = (v60 + v59);
            if (v50)
            {
              v64 = (v60 + v59);
            }

            else
            {
              v64 = 0;
            }

            v99 = v50;
            v100 = v64;
            v47 = v47 + sub_29936871C(v103, &v101, &v99, *(*a4 + 40 * a5), *(*a4 + 40 * a5 + 32), **(a1 + 16));
            v49 += v61;
            v46 = v95;
            v54 = v97;
            v50 += v63;
          }

          else if (v54 == *v46)
          {
            v65 = v46[2] + 1;
            v66 = v46[4];
            v67 = v65;
            if (v49)
            {
              v68 = v65;
            }

            else
            {
              v68 = 0;
            }

            v103 = sub_2993F5A44(v53, v49, v68, *(v51 + 40 * v54));
            sub_2992141C0(&v106, &v103);
            v69 = a5;
            v70 = v66 + 1;
            v101 = v49;
            v102 = v68;
            v71 = (v66 + 1);
            if (v50)
            {
              v72 = (v66 + 1);
            }

            else
            {
              v72 = 0;
            }

            v99 = v50;
            v100 = v72;
            v73 = sub_29936871C(v103, &v101, &v99, *(*a4 + 40 * v54), *(*a4 + 40 * v54 + 32), **(a1 + 16));
            v74 = &v49[v67];
            v75 = *a4 + 40 * v54;
            v76 = *(v75 + 28);
            v77 = (*(v75 + 24) - v67);
            if (v49)
            {
              v78 = v77;
            }

            else
            {
              v78 = 0;
            }

            v103 = sub_2993F5A44(v94, v74, v78, *v75);
            sub_2992141C0(&v106, &v103);
            v79 = &v50[v71];
            v101 = v74;
            v102 = v78;
            v80 = (v76 - v70);
            if (v50)
            {
              v81 = v80;
            }

            else
            {
              v81 = 0;
            }

            v99 = v79;
            v100 = v81;
            v47 = v47 + v73 + sub_29936871C(v103, &v101, &v99, *(*a4 + 40 * v54), *(*a4 + 40 * v54 + 32), **(a1 + 16));
            v49 = &v74[v77];
            v50 = &v79[v80];
            a5 = v69;
            v53 = v94;
            v46 = v95;
          }

          else
          {
            v82 = v51 + 40 * v54;
            v83 = *(v82 + 24);
            v84 = *(v82 + 28);
            if (v49)
            {
              v85 = *(v82 + 24);
            }

            else
            {
              v85 = 0;
            }

            v103 = sub_2993F5A44(v53, v49, v85, *v82);
            sub_2992141C0(&v106, &v103);
            v101 = v49;
            v102 = v85;
            if (v50)
            {
              v86 = v84;
            }

            else
            {
              v86 = 0;
            }

            v99 = v50;
            v100 = v86;
            v47 = v47 + sub_29936871C(v103, &v101, &v99, *(*a4 + 40 * v54), *(*a4 + 40 * v54 + 32), **(a1 + 16));
            v49 += v83;
            v50 += v84;
          }

          ++v54;
          v51 = *a4;
          v55 = 0xCCCCCCCCCCCCCCCDLL * ((a4[1] - *a4) >> 3);
        }

        while (v54 < v55);
      }

      v87 = v47;
      v10 = a2;
      if ((a8 & 1) == 0)
      {
        v87 = v47 + sub_2993F62C8(v94, v106, (v107 - v106) >> 2);
      }

      if (v48 < v87)
      {
        v48 = v87;
      }

      v46 += 6;
    }

    while (v46 != v89);
  }

  if (v106)
  {
    v107 = v106;
    operator delete(v106);
  }

  if (__p)
  {
    *&v105 = __p;
    operator delete(__p);
  }

  return v48;
}

void sub_2993686B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a26)
  {
    operator delete(a26);
  }

  _Unwind_Resume(exception_object);
}

double sub_29936871C(int a1, unsigned __int16 **a2, unsigned __int16 **a3, int a4, int a5, int a6)
{
  if (a3[1] == 1)
  {
    v11 = **a3;
    if (v11 != 9787 && (u_charType(v11) - 19) <= 0xA)
    {
      if ((a6 & 0x1000000) != 0)
      {
        v13 = a2[1];
        if (*a2 && v13)
        {
          v18 = 0;
          while ((*a2)[v18] - 48 < 0xA)
          {
            if (v13 == ++v18)
            {
              goto LABEL_21;
            }
          }
        }
      }

      else
      {
        v13 = a2[1];
      }

      if (v13 != 1 || (v14 = **a3, v14 != **a2) && ((IntPropertyValue = u_getIntPropertyValue(v14, UCHAR_EAST_ASIAN_WIDTH), IntPropertyValue != 3) ? (v16 = IntPropertyValue == 5) : (v16 = 1), v16 || (v51 = u_getIntPropertyValue(**a2, UCHAR_EAST_ASIAN_WIDTH), v51 != 5 ? (v52 = v51 == 3) : (v52 = 1), !v52 || (v53 = **a3, v53 != sub_29928199C(**a2)))))
      {
        if ((a6 & 0x4000000) != 0)
        {
          return -100.0;
        }

        else
        {
          return -10.0;
        }
      }
    }
  }

LABEL_21:
  if (a1)
  {
    if (a1 == 3 && a2[1] == 3)
    {
      v19 = *a2;
      if ((*a2)[1] == 12289)
      {
        v20 = *v19;
        v21 = (v20 - 48) >= 0xA && (v20 + 240) >= 0xAu;
        if (!v21 || sub_299281B98(v20))
        {
          v22 = v19[2];
          v17 = -2.0;
          v23 = (v22 - 48) >= 0xA && (v22 + 240) >= 0xAu;
          if (!v23 || sub_299281B98(v22))
          {
            return v17;
          }
        }
      }
    }

    return 0.0;
  }

  if ((a4 - 3) < 4)
  {
    return 0.0;
  }

  v26 = *a2;
  v25 = a2[1];
  if (v25)
  {
    v27 = 0;
    v28 = 1;
    v29 = v26;
    v30 = v25;
    do
    {
      v31 = *v29++;
      v32 = (v31 + 191);
      v33 = v31 + 223;
      if (((v31 & 0xFFDF) - 65) >= 0x1Au && v32 >= 0x1A && v33 > 0x19u)
      {
        break;
      }

      v27 = v28++ >= v25;
      v30 = (v30 - 1);
    }

    while (v30);
    if (!v27)
    {
      goto LABEL_65;
    }
  }

  v36 = a3[1];
  if (!v36)
  {
    goto LABEL_65;
  }

  v37 = 0;
  v38 = *a3;
  v39 = 1;
  v40 = a3[1];
  do
  {
    v41 = *v38++;
    v42 = (v41 + 191);
    v43 = v41 + 223;
    if (((v41 & 0xFFDF) - 65) >= 0x1Au && v42 >= 0x1A && v43 > 0x19u)
    {
      break;
    }

    v37 = v39++ >= v36;
    v40 = (v40 - 1);
  }

  while (v40);
  v17 = -1.0;
  if (v37)
  {
LABEL_65:
    if (v25 <= 2 && v26 && v25)
    {
      while (1)
      {
        Code = ublock_getCode(*v26);
        v47 = (Code - 58) > 0x25 || ((1 << (Code - 58)) & 0x3000203003) == 0;
        if (v47 || sub_299281CA8(*v26))
        {
          break;
        }

        ++v26;
        v25 = (v25 - 1);
        if (!v25)
        {
          sub_299255778(0);
          v48 = (&off_29EF0DFF0 + 2 * word_299403FCA[7 * a5 + 1]);
          if (v48[1] == 4)
          {
            v49 = 0;
            v50 = *v48;
            v17 = -2.5;
            while (asc_29945B382[v49] == *(v50 + v49 * 2))
            {
              if (++v49 == 4)
              {
                return v17;
              }
            }
          }

          return -1.0;
        }
      }
    }

    return 0.0;
  }

  return v17;
}

void sub_299368A78(uint64_t a1, uint64_t a2, uint64_t *a3, int a4, int a5)
{
  if (!a3 || !(*(*a3 + 24))(a3))
  {
    return;
  }

  v10 = 32;
  if (a4)
  {
    v10 = 24;
  }

  v11 = *(a1 + v10);
  v12 = (*(*a3 + 96))(a3);
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  __p = 0;
  v23 = 0;
  v24 = 0;
  sub_299382E10(a2, a3, &v28, &v25, &__p, *(v11 + 32) - 1);
  if (v12 == 76 || v12 == 74)
  {
    if (!(*(*a3 + 408))(a3) && (a5 & 1) == 0)
    {
      sub_299367F78(a1, &v28, &v25, &__p, -1, 0, a4, 1);
      goto LABEL_26;
    }

LABEL_13:
    v14 = *(a2 + 8);
    v13 = *(a2 + 16);
    if (v12 != 70 || v13 == v14)
    {
      v16 = -1;
    }

    else
    {
      v16 = 0xCCCCCCCCCCCCCCCDLL * ((v13 - v14) >> 3) - 1;
    }

    sub_299367F78(a1, &v28, &v25, &__p, v16, 0, a4, 0);
    if (v13 == v14)
    {
      sub_299367F78(a1, &v28, &v25, &__p, v16, 1, a4, 0);
    }

    v17 = *(a1 + 40);
    v18 = (*(*a3 + 408))(a3);
    (*(*v17 + 24))(v17, &v28, &v25, &__p, v18);
    if (0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 16) - *(a2 + 8)) >> 3) >= *(v11 + 32) - 1)
    {
      v19 = *(v11 + 32) - 1;
    }

    else
    {
      v19 = 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 16) - *(a2 + 8)) >> 3);
    }

    sub_29929EF74(&__p, v19);
    if (v13 != v14)
    {
      sub_299367F78(a1, &v28, &v25, &__p, -1, 0, a4, 0);
    }

    goto LABEL_26;
  }

  if (v12 != 71)
  {
    goto LABEL_13;
  }

  (*(*a3 + 392))(a3);
LABEL_26:
  v20 = *a3;
  if (a5)
  {
    v21 = (v20 + 384);
  }

  else
  {
    v21 = (v20 + 112);
  }

  (*v21)(a3);
  sub_299237120();
  if (__p)
  {
    v23 = __p;
    operator delete(__p);
  }

  if (v25)
  {
    v26 = v25;
    operator delete(v25);
  }

  if (v28)
  {
    v29 = v28;
    operator delete(v28);
  }
}

void sub_299368EEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_299368F3C(void *a1, uint64_t **a2, uint64_t a3)
{
  v99 = *MEMORY[0x29EDCA608];
  if (!a1[3] || !a1[4])
  {
    return;
  }

  v6 = a1[1];
  if (*(v6 + 304))
  {
    sub_299369AD4(*(v6 + 304));
  }

  v7 = 0;
  v8 = a2[6];
  if (a2[7] == v8)
  {
    goto LABEL_103;
  }

  v9 = 0;
  __src = 0;
  v10 = 0;
  do
  {
    v11 = v8[v9];
    if ((*(*v11 + 408))(v11) == 1)
    {
      break;
    }

    sub_299368A78(a1, a3, v11, 1, 0);
    v14 = v13;
    sub_299368A78(a1, a3, v11, 0, 1);
    v16 = v10 - __src;
    v17 = 0xAAAAAAAAAAAAAAABLL * ((v10 - __src) >> 3);
    v18 = v17 + 1;
    if (v17 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_299212A8C();
    }

    if (0x5555555555555556 * (-__src >> 3) > v18)
    {
      v18 = 0x5555555555555556 * (-__src >> 3);
    }

    if (0xAAAAAAAAAAAAAAABLL * (-__src >> 3) >= 0x555555555555555)
    {
      v19 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v19 = v18;
    }

    if (v19)
    {
      sub_299369AD4(v19);
    }

    v20 = 24 * v17;
    *v20 = v9;
    *(v20 + 8) = v14;
    *(v20 + 16) = v15;
    v10 = (24 * v17 + 24);
    v21 = (v20 - v16);
    memcpy((v20 - v16), __src, v16);
    if (__src)
    {
      operator delete(__src);
    }

    __src = v21;
    ++v9;
    v8 = a2[6];
  }

  while (v9 < a2[7] - v8);
  v7 = __src;
  if (__src == v10)
  {
    goto LABEL_103;
  }

  *buf = sub_2993699F4;
  v85 = 0xAAAAAAAAAAAAAAABLL * ((v10 - __src) >> 3);
  sub_299369B2C(__src, v10, buf, 126 - 2 * __clz(v85), 1, v12);
  v22 = sub_2993652F8(0xCu);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    v23 = sub_2993652F8(0xCu);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_29918C000, v23, OS_LOG_TYPE_DEBUG, "## Sorted ##", buf, 2u);
    }

    v24 = 0;
    do
    {
      v25 = &v7[3 * v24];
      v26 = a2[6][*v25];
      v27 = sub_2993652F8(0xCu);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        v28 = (*(*v26 + 24))(v26);
        v29 = (*(*v26 + 112))(v26);
        ++v24;
        v30 = *(v25 + 1);
        v31 = *(v25 + 2);
        *buf = 134219010;
        *&buf[4] = v24;
        *&buf[12] = 2112;
        *&buf[14] = v28;
        *&buf[22] = 1024;
        v90 = v29;
        v91 = 2048;
        v92 = v30;
        v93 = 2048;
        v94 = v31;
        _os_log_debug_impl(&dword_29918C000, v27, OS_LOG_TYPE_DEBUG, "index: %lu, surface: %@, cost: %d, dynamic-score: %lf, static-score: %lf", buf, 0x30u);
      }

      else
      {
        ++v24;
      }

      v7 = __src;
    }

    while (v24 < v85);
  }

  v32 = v7;
  while (1)
  {
    v33 = a2[6][v32->n128_i32[0]];
    if (v33)
    {
      v34 = (*(*v33 + 96))(v33);
      if (v34 != 76 && v34 != 74)
      {
        break;
      }

      v35 = (*(*v33 + 384))(v33);
      if (v35 != (*(*v33 + 112))(v33) && (*(*v33 + 408))(v33) != 2)
      {
        break;
      }
    }

    v32 = (v32 + 24);
    if (v32 == v10)
    {
      goto LABEL_38;
    }
  }

  if ((*(*v33 + 408))(v33) == 1)
  {
LABEL_38:
    v36 = 0;
    goto LABEL_39;
  }

  v36 = __dynamic_cast(v33, &unk_2A1F72C30, &unk_2A1F6D008, 0);
LABEL_39:
  sub_299368A78(a1, a3, v36, 0, 1);
  v83 = v37 + 15000;
  v84 = v37;
  if (v85 <= 1)
  {
    v38 = 1;
  }

  else
  {
    v38 = 0xAAAAAAAAAAAAAAABLL * ((v10 - __src) >> 3);
  }

  v39 = v7 + 2;
  memset(buf, 0, sizeof(buf));
  v87 = 0;
  v88 = 0;
  v40 = v38;
  do
  {
    v41 = *(v39 - 4);
    v42 = a2[6][v41];
    if (v42)
    {
      v43 = *v39;
      v44 = (*(*v42 + 96))(v42);
      if ((v44 - 66) <= 0x11 && ((1 << (v44 - 66)) & 0x24521) != 0)
      {
        goto LABEL_78;
      }

      v46 = (*(*v42 + 408))(v42);
      sub_299255778(0);
      v47 = (*(*v42 + 48))(v42);
      v48 = sub_299283910(&qword_2A1461DC0, v42);
      v49 = (*(*v42 + 232))(v42);
      Length = CFStringGetLength(v49);
      v51 = v43;
      if (v46 != 2)
      {
        if (v46)
        {
          v52 = 1;
        }

        else
        {
          v52 = v47 == 1;
        }

        if (v52)
        {
          goto LABEL_78;
        }

        v53 = Length >= 5 && v48 >= 2;
        if (v53)
        {
          v54 = 13000;
        }

        else
        {
          v54 = 20000;
        }

        if (v54 + v84 < v51)
        {
          goto LABEL_66;
        }

        v55 = &v88;
        v56 = 6;
        goto LABEL_65;
      }

      if (v44 == 70)
      {
        goto LABEL_78;
      }

      if (v83 >= v51)
      {
        v55 = &v87;
        v56 = 5;
LABEL_65:
        v57 = *v55 + 1;
        *v55 = v57;
        if (v57 <= v56)
        {
          goto LABEL_78;
        }
      }
    }

LABEL_66:
    v58 = *&buf[8];
    if (*&buf[8] >= *&buf[16])
    {
      v60 = *buf;
      v61 = *&buf[8] - *buf;
      v62 = (*&buf[8] - *buf) >> 3;
      v63 = v62 + 1;
      if ((v62 + 1) >> 61)
      {
        sub_299212A8C();
      }

      v64 = *&buf[16] - *buf;
      if ((*&buf[16] - *buf) >> 2 > v63)
      {
        v63 = v64 >> 2;
      }

      v53 = v64 >= 0x7FFFFFFFFFFFFFF8;
      v65 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v53)
      {
        v65 = v63;
      }

      if (v65)
      {
        sub_299236FB8(buf, v65);
      }

      *(8 * v62) = v41;
      v59 = 8 * v62 + 8;
      memcpy(0, v60, v61);
      v66 = *buf;
      *buf = 0;
      *&buf[8] = v59;
      if (v66)
      {
        operator delete(v66);
      }
    }

    else
    {
      **&buf[8] = v41;
      v59 = v58 + 8;
    }

    *&buf[8] = v59;
LABEL_78:
    v39 += 3;
    --v40;
  }

  while (v40);
  v67 = *buf;
  if (v85 == (*&buf[8] - *buf) >> 3)
  {
    if (*buf == *&buf[8])
    {
      v68 = *buf;
    }

    else
    {
      v68 = *buf;
      while (*v67 != __src->n128_u32[0])
      {
        ++v67;
        v68 += 8;
        if (v67 == *&buf[8])
        {
          v68 = *&buf[8];
          break;
        }
      }
    }

    v69 = *&buf[8] - (v68 + 8);
    if (*&buf[8] != v68 + 8)
    {
      memmove(v68, (v68 + 8), *&buf[8] - (v68 + 8));
    }

    *&buf[8] = v68 + v69;
  }

  v70 = &__src->n128_f64[1];
  do
  {
    v71 = a2[6][*(v70 - 2)];
    v72 = *v70;
    v73 = (*(*v71 + 112))(v71);
    v74 = sub_299237120();
    (*(*v71 + 400))(v71, -(v72 - v74[1] * v73) / *(v74 + 1));
    v70 += 3;
    --v38;
  }

  while (v38);
  v75 = sub_2993652F8(0xBu);
  if (os_log_type_enabled(v75, OS_LOG_TYPE_DEBUG))
  {
    v77 = *buf;
    for (i = *&buf[8]; v77 != i; ++v77)
    {
      v79 = a2[6][*v77];
      v80 = sub_2993652F8(0xBu);
      if (os_log_type_enabled(v80, OS_LOG_TYPE_DEBUG))
      {
        v81 = (*(*v79 + 24))(v79);
        if ((*(*v79 + 96))(v79))
        {
          v82 = (*(*v79 + 96))(v79);
        }

        else
        {
          v82 = 48;
        }

        *v95 = 138412546;
        v96 = v81;
        v97 = 1024;
        v98 = v82;
        _os_log_debug_impl(&dword_29918C000, v80, OS_LOG_TYPE_DEBUG, "Pruning %@ (kind:%c) (after reranking)", v95, 0x12u);
      }
    }
  }

  sub_2992AC390(a2, buf, v76);
  v7 = __src;
  if (*buf)
  {
    *&buf[8] = *buf;
    operator delete(*buf);
  }

LABEL_103:
  if (v7)
  {
    operator delete(v7);
  }
}

void sub_299369994(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_2993699F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  v4 = v2 < v3;
  if (v2 == v3)
  {
    v5 = *(a1 + 16);
    v6 = *(a2 + 16);
    v4 = v5 < v6;
    if (v5 == v6)
    {
      return *a1 > *a2;
    }
  }

  return v4;
}

uint64_t *sub_299369A48(uint64_t *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  a1[3] = 0;
  a1[4] = a4;
  if (a2)
  {
    if (a2 < 0x1555555555555556)
    {
      operator new();
    }

    sub_29919600C();
  }

  *a1 = 0;
  a1[1] = 12 * a3;
  a1[2] = 12 * a3;
  a1[3] = 0;
  return a1;
}

void sub_299369AD4(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_29919600C();
}

double sub_299369B2C(__n128 *a1, __n128 *a2, uint64_t (**a3)(__n128 *, __n128 *), uint64_t a4, char a5, __n128 a6)
{
  while (2)
  {
    v10 = (a2 - 24);
    v191 = a2 - 3;
    v192 = a2;
    v11 = (a2 - 72);
    v12 = a1;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          a1 = v12;
          v13 = a2 - v12;
          v14 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v12) >> 3);
          if (v14 <= 2)
          {
            if (v14 < 2)
            {
              return a6.n128_f64[0];
            }

            if (v14 == 2)
            {
              if (!(*a3)(v10, v12, a6))
              {
                return a6.n128_f64[0];
              }

LABEL_108:
              v123 = *v12;
              v198 = v12[1].n128_u64[0];
              v197 = v123;
              v124 = *v10;
              v12[1].n128_u64[0] = v10[1].n128_u64[0];
              *v12 = v124;
              a6 = v197;
              v125 = v198;
              goto LABEL_109;
            }

            goto LABEL_9;
          }

          switch(v14)
          {
            case 3:
              v121 = (*a3)(&v12[1].n128_i8[8], v12, a6);
              v122 = (*a3)(v10, (v12 + 24));
              if (v121)
              {
                if (v122)
                {
                  goto LABEL_108;
                }

                v181 = *v12;
                v198 = v12[1].n128_u64[0];
                v197 = v181;
                *v12 = *(v12 + 24);
                v12[1].n128_u64[0] = v12[2].n128_u64[1];
                *(v12 + 24) = v197;
                v12[2].n128_u64[1] = v198;
                if (!(*a3)(v10, (v12 + 24)))
                {
                  return a6.n128_f64[0];
                }

                a6 = *(v12 + 24);
                v197 = a6;
                v125 = v12[2].n128_u64[1];
                v198 = v125;
                v182 = v10[1].n128_u64[0];
                *(v12 + 24) = *v10;
                v12[2].n128_u64[1] = v182;
LABEL_109:
                v10[1].n128_u64[0] = v125;
                *v10 = a6;
                return a6.n128_f64[0];
              }

              if (!v122)
              {
                return a6.n128_f64[0];
              }

              v197 = *(v12 + 24);
              v170 = v197;
              v198 = v12[2].n128_u64[1];
              v171 = v198;
              v172 = v10[1].n128_u64[0];
              *(v12 + 24) = *v10;
              v12[2].n128_u64[1] = v172;
              v10[1].n128_u64[0] = v171;
              *v10 = v170;
LABEL_184:
              if ((*a3)((v12 + 24), v12))
              {
                a6 = *v12;
                v198 = v12[1].n128_u64[0];
                v197 = a6;
                *v12 = *(v12 + 24);
                v12[1].n128_u64[0] = v12[2].n128_u64[1];
                a6.n128_u64[0] = v197.n128_u64[0];
                *(v12 + 24) = v197;
                v12[2].n128_u64[1] = v198;
              }

              return a6.n128_f64[0];
            case 4:
              v126 = (*a3)(&v12[1].n128_i8[8], v12, a6);
              v127 = (*a3)(v12 + 3, (v12 + 24));
              if ((v126 & 1) == 0)
              {
                if (v127)
                {
                  v173 = v12[2].n128_u64[1];
                  v174 = *(v12 + 24);
                  *(v12 + 24) = v12[3];
                  v12[2].n128_u64[1] = v12[4].n128_u64[0];
                  v12[3] = v174;
                  v12[4].n128_u64[0] = v173;
                  if ((*a3)((v12 + 24), v12))
                  {
                    v175 = *v12;
                    v198 = v12[1].n128_u64[0];
                    v197 = v175;
                    *v12 = *(v12 + 24);
                    v12[1].n128_u64[0] = v12[2].n128_u64[1];
                    *(v12 + 24) = v197;
                    v12[2].n128_u64[1] = v198;
                  }
                }

                goto LABEL_181;
              }

              if (v127)
              {
                v128 = *v12;
                v198 = v12[1].n128_u64[0];
                v197 = v128;
                *v12 = v12[3];
                v12[1].n128_u64[0] = v12[4].n128_u64[0];
                v12[3] = v197;
                v129 = v198;
              }

              else
              {
                v183 = *v12;
                v198 = v12[1].n128_u64[0];
                v197 = v183;
                *v12 = *(v12 + 24);
                v12[1].n128_u64[0] = v12[2].n128_u64[1];
                *(v12 + 24) = v197;
                v12[2].n128_u64[1] = v198;
                if (!(*a3)(v12 + 3, (v12 + 24)))
                {
                  goto LABEL_181;
                }

                v129 = v12[2].n128_u64[1];
                v184 = *(v12 + 24);
                *(v12 + 24) = v12[3];
                v12[2].n128_u64[1] = v12[4].n128_u64[0];
                v12[3] = v184;
              }

              v12[4].n128_u64[0] = v129;
LABEL_181:
              if (!(*a3)(v10, v12 + 3))
              {
                return a6.n128_f64[0];
              }

              v197 = v12[3];
              v185 = v197;
              v198 = v12[4].n128_u64[0];
              v186 = v198;
              v187 = v10[1].n128_u64[0];
              v12[3] = *v10;
              v12[4].n128_u64[0] = v187;
              v10[1].n128_u64[0] = v186;
              *v10 = v185;
              if (!(*a3)(v12 + 3, (v12 + 24)))
              {
                return a6.n128_f64[0];
              }

              v188 = v12[2].n128_u64[1];
              v189 = *(v12 + 24);
              *(v12 + 24) = v12[3];
              v12[2].n128_u64[1] = v12[4].n128_u64[0];
              v12[3] = v189;
              v12[4].n128_u64[0] = v188;
              goto LABEL_184;
            case 5:

              a6.n128_u64[0] = sub_29936AC98(v12, (v12 + 24), v12 + 3, (v12 + 72), v10, a3).n128_u64[0];
              return a6.n128_f64[0];
          }

LABEL_9:
          if (v13 <= 575)
          {
            v130 = (v12 + 24);
            v131 = v12 == a2 || v130 == a2;
            v132 = v131;
            if (a5)
            {
              if ((v132 & 1) == 0)
              {
                v133 = 0;
                v134 = v12;
                do
                {
                  v135 = v134;
                  v134 = v130;
                  if ((*a3)(v130, v135, a6))
                  {
                    v136 = *v134;
                    v198 = v134[1].n128_u64[0];
                    v197 = v136;
                    v137 = v133;
                    while (1)
                    {
                      v138 = v12 + v137;
                      *(v138 + 24) = *(v12 + v137);
                      *(v138 + 5) = *(v12[1].n128_u64 + v137);
                      if (!v137)
                      {
                        break;
                      }

                      v137 -= 24;
                      if (((*a3)(&v197, (v12 + v137)) & 1) == 0)
                      {
                        v139 = (v12 + v137 + 24);
                        goto LABEL_128;
                      }
                    }

                    v139 = v12;
LABEL_128:
                    a6 = v197;
                    v139[1].n128_u64[0] = v198;
                    *v139 = a6;
                  }

                  v130 = (v134 + 24);
                  v133 += 24;
                }

                while (&v134[1].n128_i8[8] != a2);
              }
            }

            else if ((v132 & 1) == 0)
            {
              v176 = &v12[-2].n128_i8[8];
              do
              {
                v177 = a1;
                a1 = v130;
                if ((*a3)(v130, v177, a6))
                {
                  v178 = *a1;
                  v198 = a1[1].n128_u64[0];
                  v197 = v178;
                  v179 = v176;
                  do
                  {
                    *(v179 + 48) = *(v179 + 24);
                    *(v179 + 64) = *(v179 + 40);
                    v180 = (*a3)(&v197, v179);
                    v179 -= 24;
                  }

                  while ((v180 & 1) != 0);
                  a6 = v197;
                  *(v179 + 64) = v198;
                  *(v179 + 48) = a6;
                }

                v130 = (a1 + 24);
                v176 += 24;
              }

              while (&a1[1].n128_i8[8] != a2);
            }

            return a6.n128_f64[0];
          }

          if (!a4)
          {
            if (v12 != a2)
            {
              v140 = (v14 - 2) >> 1;
              v194 = v140;
              do
              {
                v141 = v140;
                if (v194 >= v140)
                {
                  v142 = (2 * v140) | 1;
                  v143 = (a1 + 24 * v142);
                  if (2 * v140 + 2 < v14 && (*a3)(a1 + 24 * v142, &v143[1].n128_i8[8], a6))
                  {
                    v143 = (v143 + 24);
                    v142 = 2 * v141 + 2;
                  }

                  v144 = (a1 + 24 * v141);
                  if (((*a3)(v143, v144) & 1) == 0)
                  {
                    v145 = *v144;
                    v198 = v144[1].n128_u64[0];
                    v197 = v145;
                    do
                    {
                      v146 = v143;
                      v147 = *v143;
                      v144[1].n128_u64[0] = v143[1].n128_u64[0];
                      *v144 = v147;
                      if (v194 < v142)
                      {
                        break;
                      }

                      v148 = (2 * v142) | 1;
                      v143 = (a1 + 24 * v148);
                      v149 = 2 * v142 + 2;
                      if (v149 < v14 && (*a3)((a1 + 24 * v148), (v143 + 24)))
                      {
                        v143 = (v143 + 24);
                        v148 = v149;
                      }

                      v144 = v146;
                      v142 = v148;
                    }

                    while (!(*a3)(v143, &v197));
                    a6 = v197;
                    v146[1].n128_u64[0] = v198;
                    *v146 = a6;
                    a2 = v192;
                  }
                }

                v140 = v141 - 1;
              }

              while (v141);
              v150 = 0xAAAAAAAAAAAAAAABLL * (v13 >> 3);
              do
              {
                v151 = 0;
                v152 = *a1;
                v196 = a1[1].n128_u64[0];
                v195 = v152;
                v153 = a1;
                do
                {
                  v154 = v153 + 24 * v151;
                  v155 = (v154 + 24);
                  v156 = (2 * v151) | 1;
                  v157 = 2 * v151 + 2;
                  if (v157 < v150)
                  {
                    v158 = (v154 + 48);
                    if ((*a3)((v154 + 24), v154 + 3))
                    {
                      v155 = v158;
                      v156 = v157;
                    }
                  }

                  v159 = *v155;
                  v153[1].n128_u64[0] = v155[1].n128_u64[0];
                  *v153 = v159;
                  v153 = v155;
                  v151 = v156;
                }

                while (v156 <= ((v150 - 2) >> 1));
                v160 = (a2 - 24);
                if (v155 == &a2[-2].n128_i8[8])
                {
                  v162 = (a2 - 24);
                  a6 = v195;
                  v155[1].n128_u64[0] = v196;
                  *v155 = a6;
                }

                else
                {
                  v161 = *v160;
                  v155[1].n128_u64[0] = a2[-1].n128_u64[1];
                  *v155 = v161;
                  a6 = v195;
                  a2[-1].n128_u64[1] = v196;
                  v162 = (a2 - 24);
                  *v160 = a6;
                  v163 = v155 - a1 + 24;
                  if (v163 >= 25)
                  {
                    v164 = (-2 - 0x5555555555555555 * (v163 >> 3)) >> 1;
                    v165 = (a1 + 24 * v164);
                    if ((*a3)(v165, v155))
                    {
                      v166 = *v155;
                      v198 = v155[1].n128_u64[0];
                      v197 = v166;
                      do
                      {
                        v167 = v165;
                        v168 = *v165;
                        v155[1].n128_u64[0] = v165[1].n128_u64[0];
                        *v155 = v168;
                        if (!v164)
                        {
                          break;
                        }

                        v164 = (v164 - 1) >> 1;
                        v165 = (a1 + 24 * v164);
                        v155 = v167;
                      }

                      while (((*a3)(v165, &v197) & 1) != 0);
                      a6 = v197;
                      v167[1].n128_u64[0] = v198;
                      *v167 = a6;
                    }
                  }
                }

                v169 = v150-- <= 2;
                a2 = v162;
              }

              while (!v169);
            }

            return a6.n128_f64[0];
          }

          v15 = v14 >> 1;
          v16 = (v12 + 24 * v15);
          v17 = *a3;
          if (v13 >= 0xC01)
          {
            v18 = (v17)(a1 + 24 * v15, a1, a6);
            v19 = (*a3)(v10, (a1 + 24 * v15));
            if (v18)
            {
              if (v19)
              {
                v20 = *a1;
                v198 = a1[1].n128_u64[0];
                v197 = v20;
                v21 = *v10;
                a1[1].n128_u64[0] = v10[1].n128_u64[0];
                *a1 = v21;
                goto LABEL_26;
              }

              v38 = *a1;
              v198 = a1[1].n128_u64[0];
              v197 = v38;
              v39 = *v16;
              a1[1].n128_u64[0] = v16[1].n128_u64[0];
              *a1 = v39;
              v40 = v197;
              v16[1].n128_u64[0] = v198;
              *v16 = v40;
              if ((*a3)(v10, (a1 + 24 * v15)))
              {
                v41 = *v16;
                v198 = v16[1].n128_u64[0];
                v197 = v41;
                v42 = *v10;
                v16[1].n128_u64[0] = v10[1].n128_u64[0];
                *v16 = v42;
LABEL_26:
                v43 = v197;
                v10[1].n128_u64[0] = v198;
                *v10 = v43;
              }
            }

            else if (v19)
            {
              v26 = *v16;
              v198 = v16[1].n128_u64[0];
              v197 = v26;
              v27 = *v10;
              v16[1].n128_u64[0] = v10[1].n128_u64[0];
              *v16 = v27;
              v28 = v197;
              v10[1].n128_u64[0] = v198;
              *v10 = v28;
              if ((*a3)((a1 + 24 * v15), a1))
              {
                v29 = *a1;
                v198 = a1[1].n128_u64[0];
                v197 = v29;
                v30 = *v16;
                a1[1].n128_u64[0] = v16[1].n128_u64[0];
                *a1 = v30;
                v31 = v197;
                v16[1].n128_u64[0] = v198;
                *v16 = v31;
              }
            }

            v44 = (a1 + 24 * v15 - 24);
            v45 = (*a3)(v44, (a1 + 24));
            v46 = (*a3)(v191, v44);
            if (v45)
            {
              if (v46)
              {
                v197 = *(a1 + 24);
                v47 = v197;
                v198 = a1[2].n128_u64[1];
                v48 = v198;
                v49 = v191[1].n128_u64[0];
                *(a1 + 24) = *v191;
                a1[2].n128_u64[1] = v49;
                v191[1].n128_u64[0] = v48;
                *v191 = v47;
              }

              else
              {
                v197 = *(a1 + 24);
                v62 = v197;
                v198 = a1[2].n128_u64[1];
                v63 = v198;
                v64 = a1->n128_u64[3 * v15 - 1];
                *(a1 + 24) = *v44;
                a1[2].n128_u64[1] = v64;
                a1->n128_u64[3 * v15 - 1] = v63;
                *v44 = v62;
                if ((*a3)(v191, (a1 + 24 * v15 - 24)))
                {
                  v65 = *v44;
                  v198 = a1->n128_u64[3 * v15 - 1];
                  v197 = v65;
                  v66 = *v191;
                  a1->n128_u64[3 * v15 - 1] = v191[1].n128_u64[0];
                  *v44 = v66;
                  v67 = v197;
                  v191[1].n128_u64[0] = v198;
                  *v191 = v67;
                }
              }
            }

            else if (v46)
            {
              v50 = *v44;
              v198 = a1->n128_u64[3 * v15 - 1];
              v197 = v50;
              v51 = *v191;
              a1->n128_u64[3 * v15 - 1] = v191[1].n128_u64[0];
              *v44 = v51;
              v52 = v197;
              v191[1].n128_u64[0] = v198;
              *v191 = v52;
              if ((*a3)((a1 + 24 * v15 - 24), (a1 + 24)))
              {
                v197 = *(a1 + 24);
                v53 = v197;
                v198 = a1[2].n128_u64[1];
                v54 = v198;
                v55 = a1->n128_u64[3 * v15 - 1];
                *(a1 + 24) = *v44;
                a1[2].n128_u64[1] = v55;
                a1->n128_u64[3 * v15 - 1] = v54;
                *v44 = v53;
              }
            }

            v68 = a1 + 24 * v15;
            v69 = (*a3)((v68 + 24), a1 + 3);
            v70 = (*a3)(v11, (v68 + 24));
            if (v69)
            {
              if (v70)
              {
                v71 = a1[3];
                v197 = v71;
                v72 = a1[4].n128_u64[0];
                v198 = v72;
                v73 = v11[1].n128_u64[0];
                a1[3] = *v11;
                a1[4].n128_u64[0] = v73;
                goto LABEL_46;
              }

              v197 = a1[3];
              v80 = v197;
              v198 = a1[4].n128_u64[0];
              v81 = v198;
              v82 = *(v68 + 5);
              a1[3] = *(v68 + 24);
              a1[4].n128_u64[0] = v82;
              *(v68 + 5) = v81;
              *(v68 + 24) = v80;
              if ((*a3)(v11, (v68 + 24)))
              {
                v83 = *(v68 + 24);
                v198 = *(v68 + 5);
                v197 = v83;
                v84 = *v11;
                *(v68 + 5) = v11[1].n128_u64[0];
                *(v68 + 24) = v84;
                v71 = v197;
                v72 = v198;
LABEL_46:
                v11[1].n128_u64[0] = v72;
                *v11 = v71;
              }
            }

            else if (v70)
            {
              v74 = *(v68 + 24);
              v198 = *(v68 + 5);
              v197 = v74;
              v75 = *v11;
              *(v68 + 5) = v11[1].n128_u64[0];
              *(v68 + 24) = v75;
              v76 = v197;
              v11[1].n128_u64[0] = v198;
              *v11 = v76;
              if ((*a3)((v68 + 24), a1 + 3))
              {
                v197 = a1[3];
                v77 = v197;
                v198 = a1[4].n128_u64[0];
                v78 = v198;
                v79 = *(v68 + 5);
                a1[3] = *(v68 + 24);
                a1[4].n128_u64[0] = v79;
                *(v68 + 5) = v78;
                *(v68 + 24) = v77;
              }
            }

            v85 = (*a3)(v16, v44);
            v86 = (*a3)((v68 + 24), v16);
            if (v85)
            {
              if (v86)
              {
                v87 = *v44;
                v198 = v44[1].n128_u64[0];
                v197 = v87;
                *v44 = *(v68 + 24);
                v44[1].n128_u64[0] = *(v68 + 5);
                goto LABEL_55;
              }

              v92 = *v44;
              v198 = v44[1].n128_u64[0];
              v197 = v92;
              *v44 = *v16;
              v44[1].n128_u64[0] = v16[1].n128_u64[0];
              v93 = v197;
              v16[1].n128_u64[0] = v198;
              *v16 = v93;
              if ((*a3)((v68 + 24), v16))
              {
                v94 = *v16;
                v198 = v16[1].n128_u64[0];
                v197 = v94;
                *v16 = *(v68 + 24);
                v16[1].n128_u64[0] = *(v68 + 5);
LABEL_55:
                v95 = v197;
                *(v68 + 5) = v198;
                *(v68 + 24) = v95;
              }
            }

            else if (v86)
            {
              v88 = *v16;
              v198 = v16[1].n128_u64[0];
              v197 = v88;
              *v16 = *(v68 + 24);
              v16[1].n128_u64[0] = *(v68 + 5);
              v89 = v197;
              *(v68 + 5) = v198;
              *(v68 + 24) = v89;
              if ((*a3)(v16, v44))
              {
                v90 = *v44;
                v198 = v44[1].n128_u64[0];
                v197 = v90;
                *v44 = *v16;
                v44[1].n128_u64[0] = v16[1].n128_u64[0];
                v91 = v197;
                v16[1].n128_u64[0] = v198;
                *v16 = v91;
              }
            }

            v96 = *a1;
            v198 = a1[1].n128_u64[0];
            v197 = v96;
            v97 = *v16;
            a1[1].n128_u64[0] = v16[1].n128_u64[0];
            *a1 = v97;
            v98 = v197;
            v16[1].n128_u64[0] = v198;
            *v16 = v98;
            goto LABEL_57;
          }

          v22 = (v17)(a1, a1 + 24 * v15, a6);
          v23 = (*a3)(v10, a1);
          if (v22)
          {
            if (v23)
            {
              v24 = *v16;
              v198 = v16[1].n128_u64[0];
              v197 = v24;
              v25 = *v10;
              v16[1].n128_u64[0] = v10[1].n128_u64[0];
              *v16 = v25;
LABEL_35:
              v61 = v197;
              v10[1].n128_u64[0] = v198;
              *v10 = v61;
              goto LABEL_57;
            }

            v56 = *v16;
            v198 = v16[1].n128_u64[0];
            v197 = v56;
            v57 = *a1;
            v16[1].n128_u64[0] = a1[1].n128_u64[0];
            *v16 = v57;
            v58 = v197;
            a1[1].n128_u64[0] = v198;
            *a1 = v58;
            if ((*a3)(v10, a1))
            {
              v59 = *a1;
              v198 = a1[1].n128_u64[0];
              v197 = v59;
              v60 = *v10;
              a1[1].n128_u64[0] = v10[1].n128_u64[0];
              *a1 = v60;
              goto LABEL_35;
            }
          }

          else if (v23)
          {
            v32 = *a1;
            v198 = a1[1].n128_u64[0];
            v197 = v32;
            v33 = *v10;
            a1[1].n128_u64[0] = v10[1].n128_u64[0];
            *a1 = v33;
            v34 = v197;
            v10[1].n128_u64[0] = v198;
            *v10 = v34;
            if ((*a3)(a1, (a1 + 24 * v15)))
            {
              v35 = *v16;
              v198 = v16[1].n128_u64[0];
              v197 = v35;
              v36 = *a1;
              v16[1].n128_u64[0] = a1[1].n128_u64[0];
              *v16 = v36;
              v37 = v197;
              a1[1].n128_u64[0] = v198;
              *a1 = v37;
            }
          }

LABEL_57:
          --a4;
          if (a5 & 1) != 0 || ((*a3)((a1 - 24), a1))
          {
            break;
          }

          v111 = *a1;
          v196 = a1[1].n128_u64[0];
          v195 = v111;
          if ((*a3)(&v195, v10))
          {
            v12 = a1;
            a2 = v192;
            do
            {
              v12 = (v12 + 24);
            }

            while (((*a3)(&v195, v12) & 1) == 0);
          }

          else
          {
            v112 = (a1 + 24);
            a2 = v192;
            do
            {
              v12 = v112;
              if (v112 >= v192)
              {
                break;
              }

              v113 = (*a3)(&v195, v112);
              v112 = (v12 + 24);
            }

            while (!v113);
          }

          v114 = a2;
          if (v12 < a2)
          {
            v114 = a2;
            do
            {
              v114 = (v114 - 24);
            }

            while (((*a3)(&v195, v114) & 1) != 0);
          }

          while (v12 < v114)
          {
            v115 = *v12;
            v198 = v12[1].n128_u64[0];
            v197 = v115;
            v116 = *v114;
            v12[1].n128_u64[0] = v114[1].n128_u64[0];
            *v12 = v116;
            v117 = v197;
            v114[1].n128_u64[0] = v198;
            *v114 = v117;
            do
            {
              v12 = (v12 + 24);
            }

            while (!(*a3)(&v195, v12));
            do
            {
              v114 = (v114 - 24);
            }

            while (((*a3)(&v195, v114) & 1) != 0);
          }

          v118 = (v12 - 24);
          if (&v12[-2].n128_i8[8] != a1)
          {
            v119 = *v118;
            a1[1].n128_u64[0] = v12[-1].n128_u64[1];
            *a1 = v119;
          }

          a5 = 0;
          a6 = v195;
          v12[-1].n128_u64[1] = v196;
          *v118 = a6;
        }

        v99 = 0;
        v100 = *a1;
        v196 = a1[1].n128_u64[0];
        v195 = v100;
        do
        {
          v99 += 24;
        }

        while (((*a3)((a1 + v99), &v195) & 1) != 0);
        v101 = (a1 + v99);
        v102 = v192;
        v131 = v99 == 24;
        a2 = v192;
        if (v131)
        {
          v102 = v192;
          do
          {
            if (v101 >= v102)
            {
              break;
            }

            v102 = (v102 - 24);
          }

          while (((*a3)(v102, &v195) & 1) == 0);
        }

        else
        {
          do
          {
            v102 = (v102 - 24);
          }

          while (!(*a3)(v102, &v195));
        }

        if (v101 >= v102)
        {
          v108 = (v101 - 24);
        }

        else
        {
          v103 = v101;
          v104 = v102;
          do
          {
            v105 = *v103;
            v198 = v103[1].n128_u64[0];
            v197 = v105;
            v106 = *v104;
            v103[1].n128_u64[0] = v104[1].n128_u64[0];
            *v103 = v106;
            v107 = v197;
            v104[1].n128_u64[0] = v198;
            *v104 = v107;
            do
            {
              v103 = (v103 + 24);
            }

            while (((*a3)(v103, &v195) & 1) != 0);
            do
            {
              v104 = (v104 - 24);
            }

            while (!(*a3)(v104, &v195));
          }

          while (v103 < v104);
          v108 = (v103 - 24);
        }

        if (v108 != a1)
        {
          v109 = *v108;
          a1[1].n128_u64[0] = v108[1].n128_u64[0];
          *a1 = v109;
        }

        a6 = v195;
        v108[1].n128_u64[0] = v196;
        *v108 = a6;
        if (v101 >= v102)
        {
          break;
        }

LABEL_80:
        a6.n128_f64[0] = sub_299369B2C(a1, v108, a3, a4, a5 & 1, a6);
        a5 = 0;
        v12 = (v108 + 24);
      }

      v110 = sub_29936AF50(a1, v108, a3);
      v12 = (v108 + 24);
      if (sub_29936AF50(&v108[1].n128_i64[1], v192, a3))
      {
        break;
      }

      if (!v110)
      {
        goto LABEL_80;
      }
    }

    a2 = v108;
    if (!v110)
    {
      continue;
    }

    return a6.n128_f64[0];
  }
}

__n128 sub_29936AC98(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5, uint64_t (**a6)(__n128 *, __n128 *))
{
  v12 = (*a6)(a2, a1);
  v13 = (*a6)(a3, a2);
  if (v12)
  {
    if (v13)
    {
      v14 = a1[1].n128_u64[0];
      v15 = *a1;
      v16 = a3[1].n128_u64[0];
      *a1 = *a3;
      a1[1].n128_u64[0] = v16;
LABEL_9:
      *a3 = v15;
      a3[1].n128_u64[0] = v14;
      goto LABEL_10;
    }

    v23 = a1[1].n128_u64[0];
    v24 = *a1;
    v25 = a2[1].n128_u64[0];
    *a1 = *a2;
    a1[1].n128_u64[0] = v25;
    *a2 = v24;
    a2[1].n128_u64[0] = v23;
    if ((*a6)(a3, a2))
    {
      v14 = a2[1].n128_u64[0];
      v15 = *a2;
      v26 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v26;
      goto LABEL_9;
    }
  }

  else if (v13)
  {
    v17 = a2[1].n128_u64[0];
    v18 = *a2;
    v19 = a3[1].n128_u64[0];
    *a2 = *a3;
    a2[1].n128_u64[0] = v19;
    *a3 = v18;
    a3[1].n128_u64[0] = v17;
    if ((*a6)(a2, a1))
    {
      v20 = a1[1].n128_u64[0];
      v21 = *a1;
      v22 = a2[1].n128_u64[0];
      *a1 = *a2;
      a1[1].n128_u64[0] = v22;
      *a2 = v21;
      a2[1].n128_u64[0] = v20;
    }
  }

LABEL_10:
  if ((*a6)(a4, a3))
  {
    v27 = a3[1].n128_u64[0];
    v28 = *a3;
    v29 = a4[1].n128_u64[0];
    *a3 = *a4;
    a3[1].n128_u64[0] = v29;
    *a4 = v28;
    a4[1].n128_u64[0] = v27;
    if ((*a6)(a3, a2))
    {
      v30 = a2[1].n128_u64[0];
      v31 = *a2;
      v32 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v32;
      *a3 = v31;
      a3[1].n128_u64[0] = v30;
      if ((*a6)(a2, a1))
      {
        v33 = a1[1].n128_u64[0];
        v34 = *a1;
        v35 = a2[1].n128_u64[0];
        *a1 = *a2;
        a1[1].n128_u64[0] = v35;
        *a2 = v34;
        a2[1].n128_u64[0] = v33;
      }
    }
  }

  if ((*a6)(a5, a4))
  {
    v37 = a4[1].n128_u64[0];
    v38 = *a4;
    v39 = a5[1].n128_u64[0];
    *a4 = *a5;
    a4[1].n128_u64[0] = v39;
    *a5 = v38;
    a5[1].n128_u64[0] = v37;
    if ((*a6)(a4, a3))
    {
      v40 = a3[1].n128_u64[0];
      v41 = *a3;
      v42 = a4[1].n128_u64[0];
      *a3 = *a4;
      a3[1].n128_u64[0] = v42;
      *a4 = v41;
      a4[1].n128_u64[0] = v40;
      if ((*a6)(a3, a2))
      {
        v43 = a2[1].n128_u64[0];
        v44 = *a2;
        v45 = a3[1].n128_u64[0];
        *a2 = *a3;
        a2[1].n128_u64[0] = v45;
        *a3 = v44;
        a3[1].n128_u64[0] = v43;
        if ((*a6)(a2, a1))
        {
          v46 = a1[1].n128_u64[0];
          result = *a1;
          v47 = a2[1].n128_u64[0];
          *a1 = *a2;
          a1[1].n128_u64[0] = v47;
          *a2 = result;
          a2[1].n128_u64[0] = v46;
        }
      }
    }
  }

  return result;
}

BOOL sub_29936AF50(uint64_t a1, __n128 *a2, uint64_t (**a3)(__n128 *, __n128 *))
{
  v6 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v6 > 2)
  {
    if (v6 == 3)
    {
      v11 = (a2 - 24);
      v12 = (*a3)((a1 + 24), a1);
      v13 = (*a3)(v11, (a1 + 24));
      if (v12)
      {
        if (v13)
        {
          v14 = *(a1 + 16);
          v15 = *a1;
          v16 = v11[1].n128_u64[0];
          *a1 = *v11;
          *(a1 + 16) = v16;
        }

        else
        {
          v38 = *(a1 + 16);
          v39 = *a1;
          *a1 = *(a1 + 24);
          *(a1 + 16) = *(a1 + 40);
          *(a1 + 24) = v39;
          *(a1 + 40) = v38;
          if (!(*a3)(v11, (a1 + 24)))
          {
            return 1;
          }

          v14 = *(a1 + 40);
          v15 = *(a1 + 24);
          v40 = v11[1].n128_u64[0];
          *(a1 + 24) = *v11;
          *(a1 + 40) = v40;
        }

        *v11 = v15;
        v11[1].n128_u64[0] = v14;
        return 1;
      }

      if (!v13)
      {
        return 1;
      }

      v27 = *(a1 + 40);
      v28 = *(a1 + 24);
      v29 = v11[1].n128_u64[0];
      *(a1 + 24) = *v11;
      *(a1 + 40) = v29;
      *v11 = v28;
      v11[1].n128_u64[0] = v27;
LABEL_50:
      if ((*a3)((a1 + 24), a1))
      {
        v56 = *(a1 + 16);
        v57 = *a1;
        *a1 = *(a1 + 24);
        *(a1 + 16) = *(a1 + 40);
        *(a1 + 24) = v57;
        *(a1 + 40) = v56;
      }

      return 1;
    }

    if (v6 != 4)
    {
      if (v6 != 5)
      {
        goto LABEL_13;
      }

      sub_29936AC98(a1, (a1 + 24), (a1 + 48), (a1 + 72), (a2 - 24), a3);
      return 1;
    }

    v22 = (a2 - 24);
    v23 = (*a3)((a1 + 24), a1);
    v24 = (*a3)((a1 + 48), (a1 + 24));
    if ((v23 & 1) == 0)
    {
      if (v24)
      {
        v34 = *(a1 + 40);
        v35 = *(a1 + 24);
        *(a1 + 24) = *(a1 + 48);
        *(a1 + 40) = *(a1 + 64);
        *(a1 + 48) = v35;
        *(a1 + 64) = v34;
        if ((*a3)((a1 + 24), a1))
        {
          v36 = *(a1 + 16);
          v37 = *a1;
          *a1 = *(a1 + 24);
          *(a1 + 16) = *(a1 + 40);
          *(a1 + 24) = v37;
          *(a1 + 40) = v36;
        }
      }

      goto LABEL_47;
    }

    if (v24)
    {
      v25 = *(a1 + 16);
      v26 = *a1;
      *a1 = *(a1 + 48);
      *(a1 + 16) = *(a1 + 64);
    }

    else
    {
      v49 = *(a1 + 16);
      v50 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v50;
      *(a1 + 40) = v49;
      if (!(*a3)((a1 + 48), (a1 + 24)))
      {
        goto LABEL_47;
      }

      v25 = *(a1 + 40);
      v26 = *(a1 + 24);
      *(a1 + 24) = *(a1 + 48);
      *(a1 + 40) = *(a1 + 64);
    }

    *(a1 + 48) = v26;
    *(a1 + 64) = v25;
LABEL_47:
    if (!(*a3)(v22, (a1 + 48)))
    {
      return 1;
    }

    v51 = *(a1 + 64);
    v52 = *(a1 + 48);
    v53 = v22[1].n128_u64[0];
    *(a1 + 48) = *v22;
    *(a1 + 64) = v53;
    *v22 = v52;
    v22[1].n128_u64[0] = v51;
    if (!(*a3)((a1 + 48), (a1 + 24)))
    {
      return 1;
    }

    v54 = *(a1 + 40);
    v55 = *(a1 + 24);
    *(a1 + 24) = *(a1 + 48);
    *(a1 + 40) = *(a1 + 64);
    *(a1 + 48) = v55;
    *(a1 + 64) = v54;
    goto LABEL_50;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = (a2 - 24);
    if ((*a3)((a2 - 24), a1))
    {
      v8 = *(a1 + 16);
      v9 = *a1;
      v10 = a2[-1].n128_u64[1];
      *a1 = *v7;
      *(a1 + 16) = v10;
      *v7 = v9;
      a2[-1].n128_u64[1] = v8;
    }

    return 1;
  }

LABEL_13:
  v17 = (a1 + 48);
  v18 = (*a3)((a1 + 24), a1);
  v19 = (*a3)((a1 + 48), (a1 + 24));
  if (v18)
  {
    if (v19)
    {
      v20 = *(a1 + 16);
      v21 = *a1;
      *a1 = *v17;
      *(a1 + 16) = *(a1 + 64);
    }

    else
    {
      v41 = *(a1 + 16);
      v42 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v42;
      *(a1 + 40) = v41;
      if (!(*a3)((a1 + 48), (a1 + 24)))
      {
        goto LABEL_33;
      }

      v20 = *(a1 + 40);
      v21 = *(a1 + 24);
      *(a1 + 24) = *v17;
      *(a1 + 40) = *(a1 + 64);
    }

    *v17 = v21;
    *(a1 + 64) = v20;
  }

  else if (v19)
  {
    v30 = *(a1 + 40);
    v31 = *(a1 + 24);
    *(a1 + 24) = *v17;
    *(a1 + 40) = *(a1 + 64);
    *v17 = v31;
    *(a1 + 64) = v30;
    if ((*a3)((a1 + 24), a1))
    {
      v32 = *(a1 + 16);
      v33 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v33;
      *(a1 + 40) = v32;
    }
  }

LABEL_33:
  v43 = (a1 + 72);
  if ((a1 + 72) == a2)
  {
    return 1;
  }

  v44 = 0;
  v45 = 0;
  while (1)
  {
    if ((*a3)(v43, v17))
    {
      v59 = *v43;
      v60 = v43[1].n128_u64[0];
      v46 = v44;
      while (1)
      {
        v47 = a1 + v46;
        *(v47 + 72) = *(a1 + v46 + 48);
        *(v47 + 88) = *(a1 + v46 + 64);
        if (v46 == -48)
        {
          break;
        }

        v46 -= 24;
        if (((*a3)(&v59, (v47 + 24)) & 1) == 0)
        {
          v48 = a1 + v46 + 72;
          goto LABEL_41;
        }
      }

      v48 = a1;
LABEL_41:
      *v48 = v59;
      *(v48 + 16) = v60;
      if (++v45 == 8)
      {
        return &v43[1].n128_i8[8] == a2;
      }
    }

    v17 = v43;
    v44 += 24;
    v43 = (v43 + 24);
    if (v43 == a2)
    {
      return 1;
    }
  }
}

uint64_t sub_29936B460(UChar *a1, UChar *s, unint64_t a3)
{
  v3 = a3 >> 1;
  if (a3 >> 1 == 1)
  {
    goto LABEL_7;
  }

  v4 = s;
  while (1)
  {
    v5 = *v4;
    if (!*v4)
    {
      break;
    }

    ++v4;
    *a1++ = v5;
    if (--v3 == 1)
    {
      goto LABEL_7;
    }
  }

  if (v3)
  {
LABEL_7:
    *a1 = 0;
  }

  return 2 * u_strlen(s);
}

uint64_t sub_29936B4BC(uint64_t a1, UChar *s, unint64_t a3)
{
  v4 = s;
  v6 = u_strlen(s);
  v7 = u_strlen(a1);
  v8 = a3 >> 1;
  if (*a1)
  {
    do
    {
      v9 = *(a1 + 2);
      a1 += 2;
      --v8;
    }

    while (v9);
  }

  while (1)
  {
    if (v8 == 1)
    {
      goto LABEL_7;
    }

    v10 = *v4;
    if (!*v4)
    {
      break;
    }

    ++v4;
    *a1 = v10;
    a1 += 2;
    --v8;
  }

  if (v8)
  {
LABEL_7:
    *a1 = 0;
  }

  return 2 * v7 + (2 * v6);
}

void sub_29936B554(uint64_t result, const __CFURL *a2, int a3, uint64_t a4, const __CFString *a5)
{
  if (a2 && a5 && *(result + 40) == a3)
  {
    sub_29936B57C(a2, a5, *(result + 32));
  }
}

void sub_29936B57C(const __CFURL *a1, const __CFString *a2, void *a3)
{
  v6 = CFURLCopyFileSystemPath(a1, kCFURLPOSIXPathStyle);
  v30 = v6;
  if (!v6)
  {
    return;
  }

  v7 = v6;
  PathComponent = CFURLCopyLastPathComponent(a1);
  v29 = PathComponent;
  if (!PathComponent)
  {
    goto LABEL_38;
  }

  sub_299278568(a2, &v26);
  v9 = std::string::append(&v26, "-", 1uLL);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v31.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
  *&v31.__r_.__value_.__l.__data_ = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  sub_299278568(PathComponent, __p);
  if ((v25 & 0x80u) == 0)
  {
    v11 = __p;
  }

  else
  {
    v11 = __p[0];
  }

  if ((v25 & 0x80u) == 0)
  {
    v12 = v25;
  }

  else
  {
    v12 = __p[1];
  }

  v13 = std::string::append(&v31, v11, v12);
  v14 = *&v13->__r_.__value_.__l.__data_;
  v28 = v13->__r_.__value_.__r.__words[2];
  *v27 = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  if (v25 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  sub_299278568(v7, &v26);
  v15 = sub_2991C0548(a3, v27);
  v16 = v15;
  v17 = a3[1];
  if (!*&v17)
  {
    goto LABEL_32;
  }

  v18 = vcnt_s8(v17);
  v18.i16[0] = vaddlv_u8(v18);
  v19 = v18.u32[0];
  if (v18.u32[0] > 1uLL)
  {
    v20 = v15;
    if (v15 >= *&v17)
    {
      v20 = v15 % *&v17;
    }
  }

  else
  {
    v20 = (*&v17 - 1) & v15;
  }

  v21 = *(*a3 + 8 * v20);
  if (!v21 || (v22 = *v21) == 0)
  {
LABEL_32:
    operator new();
  }

  while (1)
  {
    v23 = v22[1];
    if (v23 == v16)
    {
      break;
    }

    if (v19 > 1)
    {
      if (v23 >= *&v17)
      {
        v23 %= *&v17;
      }
    }

    else
    {
      v23 &= *&v17 - 1;
    }

    if (v23 != v20)
    {
      goto LABEL_32;
    }

LABEL_31:
    v22 = *v22;
    if (!v22)
    {
      goto LABEL_32;
    }
  }

  if (!sub_2991C09F4(a3, v22 + 2, v27))
  {
    goto LABEL_31;
  }

  if (*(v22 + 63) < 0)
  {
    operator delete(v22[5]);
  }

  *(v22 + 5) = v26;
  if (SHIBYTE(v28) < 0)
  {
    operator delete(v27[0]);
  }

  CFRelease(PathComponent);
LABEL_38:
  CFRelease(v7);
}

void sub_29936BB10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, const void *a28, const void *a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  sub_29936D490(&a30);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  sub_299219AB4(&a28, 0);
  sub_299219AB4(&a29, 0);
  _Unwind_Resume(a1);
}

void *sub_29936BBCC(uint64_t *a1, const __CFString *a2, const __CFString *a3, int a4)
{
  if ((atomic_load_explicit(qword_2A14612A8, memory_order_acquire) & 1) == 0)
  {
    v17 = a2;
    v18 = __cxa_guard_acquire(qword_2A14612A8);
    a2 = v17;
    if (v18)
    {
      __cxa_atexit(MEMORY[0x29EDC9388], &unk_2A14612C0, &dword_29918C000);
      __cxa_guard_release(qword_2A14612A8);
      a2 = v17;
    }
  }

  sub_299278568(a2, &v21);
  v7 = std::string::append(&v21, "-", 1uLL);
  v8 = *&v7->__r_.__value_.__l.__data_;
  v24.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v24.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  sub_299278568(a3, __p);
  if ((v20 & 0x80u) == 0)
  {
    v9 = __p;
  }

  else
  {
    v9 = __p[0];
  }

  if ((v20 & 0x80u) == 0)
  {
    v10 = v20;
  }

  else
  {
    v10 = __p[1];
  }

  v11 = std::string::append(&v24, v9, v10);
  v12 = *&v11->__r_.__value_.__l.__data_;
  v23 = v11->__r_.__value_.__r.__words[2];
  *v22 = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  if (a4 == 1)
  {
    if (*(a1 + 2) == 5)
    {
      v13 = a1 + 7;
      goto LABEL_20;
    }
  }

  else if (!a4)
  {
    v13 = a1 + 2;
    goto LABEL_20;
  }

  sub_29936D698((a1 + 7));
  v24.__r_.__value_.__r.__words[0] = MEMORY[0x29EDCA5F8];
  v24.__r_.__value_.__l.__size_ = 0x40000000;
  v24.__r_.__value_.__r.__words[2] = sub_29936B554;
  v25 = &unk_29EF135E8;
  v27 = a4;
  v26 = a1 + 7;
  LDEnumerateAssetDataItems();
  v13 = a1 + 7;
LABEL_20:
  v14 = sub_29921517C(v13, v22);
  if (v14)
  {
    v15 = v14 + 5;
  }

  else
  {
    v15 = &unk_2A14612C0;
  }

  if (SHIBYTE(v23) < 0)
  {
    operator delete(v22[0]);
  }

  return v15;
}

void sub_29936BDE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

CFURLRef sub_29936BE40(uint64_t *a1, int a2)
{
  v3 = sub_29936BBCC(a1, qword_2A145F730, off_2A145F6A0[0], a2);
  v4 = *(v3 + 23);
  if (v4 >= 0)
  {
    v5 = *(v3 + 23);
  }

  else
  {
    v5 = v3[1];
  }

  if (!v5)
  {
    return 0;
  }

  v6 = v4 >= 0 ? v3 : *v3;
  v7 = CFURLCreateFromFileSystemRepresentation(0, v6, v5, 0);
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  PathComponent = CFURLCreateCopyDeletingLastPathComponent(0, v7);
  if (PathComponent)
  {
    v2 = CFURLCreateCopyDeletingLastPathComponent(0, PathComponent);
    CFRelease(PathComponent);
  }

  CFRelease(v8);
  if (!PathComponent)
  {
    return 0;
  }

  return v2;
}

void sub_29936BF0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_29920FE30(&a9, 0);
  sub_29920FE30(&a10, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_29936BF3C(uint64_t a1, const __CFURL *a2)
{
  v5[4] = *MEMORY[0x29EDCA608];
  sub_29936D698(a1 + 56);
  v5[0] = &unk_2A1F73D78;
  v5[1] = a1;
  v5[3] = v5;
  sub_29936BFE8(a2, v5);
  return sub_29936D804(v5);
}

void sub_29936BFD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29936D804(va);
  _Unwind_Resume(a1);
}

void sub_29936BFE8(const __CFURL *a1, uint64_t a2)
{
  v26 = *MEMORY[0x29EDCA608];
  v4 = sub_29936D4DC(a1);
  v22 = v4;
  if (!v4)
  {
    return;
  }

  v5 = v4;
  v6 = CFURLCreateCopyAppendingPathComponent(0, a1, qword_2A145F740, 1u);
  v7 = 0;
  v21 = v6;
  v20 = 0;
LABEL_3:
  if (v7 < CFArrayGetCount(v5))
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v5, v7);
    Value = CFDictionaryGetValue(ValueAtIndex, @"ContentPath");
    v10 = CFDictionaryGetValue(ValueAtIndex, @"ContentType");
    if (!Value)
    {
      goto LABEL_15;
    }

    v11 = v10;
    if (!v10)
    {
      goto LABEL_15;
    }

    v12 = CFURLCreateCopyAppendingPathComponent(0, v6, Value, 0);
    v24 = v12;
    if (!CFURLGetFileSystemRepresentation(v12, 1u, buffer, 1024) || stat(buffer, &v23))
    {
      if (v12)
      {
        CFRelease(v12);
      }

      v13 = 0;
      goto LABEL_11;
    }

    v16 = 0;
    v17 = 0;
    v18 = (v23.st_mode & 0xF000) == 0x4000;
    while (1)
    {
      v19 = buffer[v16];
      if (v19 != 47)
      {
        break;
      }

      if (buffer[++v16] != 47)
      {
        goto LABEL_21;
      }

LABEL_22:
      if (v16 == 1024)
      {
LABEL_23:
        v13 = CFURLCreateFromFileSystemRepresentation(0, buffer, v17, v18);
        if (v12)
        {
          CFRelease(v12);
        }

LABEL_11:
        v14 = *(a2 + 24);
        *&v23.st_dev = v11;
        v24 = &v20;
        *buffer = v13;
        if (!v14)
        {
          sub_2991A2240();
        }

        (*(*v14 + 48))(v14, buffer, &v23, &v24);
        v15 = v20;
        if (v13)
        {
          CFRelease(v13);
        }

        if (v15)
        {
          goto LABEL_25;
        }

LABEL_15:
        ++v7;
        goto LABEL_3;
      }
    }

    if (!buffer[v16])
    {
      goto LABEL_23;
    }

    ++v16;
LABEL_21:
    buffer[v17++] = v19;
    goto LABEL_22;
  }

LABEL_25:
  if (v6)
  {
    CFRelease(v6);
  }

  CFRelease(v5);
}

void sub_29936C234(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  if (a2)
  {
    sub_2991EDA10(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29936C2B8()
{
  if ((atomic_load_explicit(&qword_2A14622A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A14622A0))
  {
    operator new();
  }

  return qword_2A1462298;
}

void *sub_29936C350(float *a1, uint64_t a2, const __CFString *a3, const __CFString *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a1;
  if (a2 != 5)
  {
    v9 = 0;
LABEL_8:

    return sub_29936C3FC(a1, a2, a3, a4, v9);
  }

  result = sub_29936C3FC(a1, a2, a3, a4, 0);
  v8 = *(result + 23);
  if ((v8 & 0x80u) != 0)
  {
    v8 = result[1];
  }

  if (!v8)
  {
    a1 = v6;
    a2 = 5;
    a3 = v5;
    a4 = v4;
    v9 = 1;
    goto LABEL_8;
  }

  return result;
}

void *sub_29936C3FC(float *a1, uint64_t a2, const __CFString *a3, const __CFString *a4, int a5)
{
  if ((atomic_load_explicit(&qword_2A14612B0, memory_order_acquire) & 1) == 0)
  {
    v10 = a1;
    v11 = a2;
    v12 = __cxa_guard_acquire(&qword_2A14612B0);
    a2 = v11;
    v13 = v12;
    a1 = v10;
    if (v13)
    {
      __cxa_atexit(MEMORY[0x29EDC9388], &unk_2A14612D8, &dword_29918C000);
      __cxa_guard_release(&qword_2A14612B0);
      a1 = v10;
      a2 = v11;
    }
  }

  v8 = &unk_2A14612D8;
  if (a3)
  {
    if (a4)
    {
      sub_29936C500(a1, a2, &v14);
      v8 = sub_29936BBCC(v14, a3, a4, a5);
      if (v15)
      {
        sub_2991A893C(v15);
      }
    }
  }

  return v8;
}

void sub_29936C4E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2991A893C(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29936C500(float *a1@<X0>, uint64_t a2@<X1>, uint64_t **a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  v4 = *(a1 + 1);
  if (!v4)
  {
    goto LABEL_17;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = a2;
    if (v4 <= a2)
    {
      v6 = a2 % v4;
    }
  }

  else
  {
    v6 = (v4 - 1) & a2;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_17:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == a2)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= v4)
      {
        v9 %= v4;
      }
    }

    else
    {
      v9 &= v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_17;
    }

LABEL_16:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_17;
    }
  }

  if (v8[2] != a2)
  {
    goto LABEL_16;
  }

  v11 = v8[3];
  v10 = v8[4];
  if (v10)
  {
    atomic_fetch_add_explicit(v10 + 1, 1uLL, memory_order_relaxed);
  }

  *a3 = v11;
  a3[1] = v10;
}

void sub_29936CB74(_Unwind_Exception *a1)
{
  sub_29936D948(1, v2);
  sub_2991A893C(v1);
  _Unwind_Resume(a1);
}

CFURLRef sub_29936CBC8(float *a1, uint64_t a2, int a3)
{
  sub_29936C500(a1, a2, &v6);
  v4 = sub_29936BE40(v6, a3);
  if (v7)
  {
    sub_2991A893C(v7);
  }

  return v4;
}

void sub_29936CC18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2991A893C(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29936CC30(float *a1, uint64_t a2, const __CFURL *a3)
{
  sub_29936C500(a1, a2, &v5);
  sub_29936BF3C(v5, a3);
  v4 = v6;
  if (v6)
  {

    sub_2991A893C(v4);
  }
}

void sub_29936CC94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2991A893C(a10);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_29936CCAC(const __CFURL *a1)
{
  v1 = sub_29936CD48(a1);
  v7 = v1;
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  Value = CFDictionaryGetValue(v1, qword_2A145F750);
  if (Value)
  {
    valuePtr = 0;
    CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
    v4 = valuePtr != 0;
  }

  else
  {
    v4 = 0;
  }

  CFRelease(v2);
  return v4;
}

void sub_29936CD28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_299215B18(va, 0);
  _Unwind_Resume(a1);
}

CFDictionaryRef sub_29936CD48(CFURLRef bundleURL)
{
  v1 = CFBundleCreate(0, bundleURL);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  InfoDictionary = CFBundleGetInfoDictionary(v1);
  if (InfoDictionary && (Value = CFDictionaryGetValue(InfoDictionary, qword_2A145F748)) != 0)
  {
    Copy = CFDictionaryCreateCopy(0, Value);
  }

  else
  {
    Copy = 0;
  }

  CFRelease(v2);
  return Copy;
}

void sub_29936CDCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29936D570(va, 0);
  _Unwind_Resume(a1);
}

CFArrayRef sub_29936CDE8(const __CFArray *a1)
{
  v25 = *MEMORY[0x29EDCA608];
  allocator = *MEMORY[0x29EDB8ED8];
  idx = 0;
  values[0] = CFArrayCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9000]);
  while (idx < CFArrayGetCount(a1))
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, idx);
    v2 = sub_29936D4DC(ValueAtIndex);
    if (!v2)
    {
      goto LABEL_25;
    }

    v3 = CFURLCreateCopyAppendingPathComponent(0, ValueAtIndex, qword_2A145F740, 1u);
    for (i = 0; i < CFArrayGetCount(v2); ++i)
    {
      v5 = CFArrayGetValueAtIndex(v2, i);
      Value = CFDictionaryGetValue(v5, @"ContentType");
      if ((atomic_load_explicit(&qword_2A14612B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A14612B8))
      {
        qword_2A14612F0 = qword_2A145F730;
        unk_2A14612F8 = @"SiriLanguageModel";
        qword_2A1461300 = @"RNNLanguageModel";
        unk_2A1461308 = @"SiriRNNLanguageModel";
        qword_2A1461310 = off_2A145F738[0];
        unk_2A1461318 = @"SiriLexicon";
        qword_2A1461320 = @"LexiconDelta";
        unk_2A1461328 = @"CharacterConversionTrie";
        qword_2A1461330 = @"MorphemeLexicon";
        unk_2A1461338 = @"ContinuousPath";
        __cxa_guard_release(&qword_2A14612B8);
      }

      v7 = 0;
      do
      {
        v8 = CFStringCompare(Value, qword_2A14612A8[v7 + 9], 0);
        if (v8 == kCFCompareEqualTo)
        {
          break;
        }
      }

      while (v7++ != 9);
      v10 = sub_2993652F8(9u);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        *&buf[4] = "getPathsForLMAndLexiconAssets";
        v21 = 2112;
        v22 = Value;
        v23 = 1024;
        v24 = v8 == kCFCompareEqualTo;
        _os_log_debug_impl(&dword_29918C000, v10, OS_LOG_TYPE_DEBUG, "[%s] contentType:%@ isSupportedAssetType:0x%x", buf, 0x1Cu);
        if (v8)
        {
          continue;
        }
      }

      else if (v8)
      {
        continue;
      }

      v11 = CFDictionaryGetValue(v5, @"ContentPath");
      v12 = CFURLCreateCopyAppendingPathComponent(0, v3, v11, 0);
      *buf = v12;
      v13 = CFURLCopyFileSystemPath(v12, kCFURLPOSIXPathStyle);
      values[1] = v13;
      CFArrayAppendValue(values[0], v13);
      if (v13)
      {
        CFRelease(v13);
      }

      if (v12)
      {
        CFRelease(v12);
      }
    }

    if (v3)
    {
      CFRelease(v3);
    }

    CFRelease(v2);
LABEL_25:
    ++idx;
  }

  *buf = CFDictionaryCreate(allocator, &kMecabraAssetDataFilePathsKey, values, 1, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v14 = CFArrayCreate(allocator, buf, 1, MEMORY[0x29EDB9000]);
  if (*buf)
  {
    CFRelease(*buf);
  }

  if (values[0])
  {
    CFRelease(values[0]);
  }

  return v14;
}

void sub_29936D140(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, CFTypeRef cf, char a16, int a17, __int16 a18, char a19, char a20)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_2991EDA10(exception_object);
}

const __CFString *sub_29936D208(CFStringRef theString)
{
  v1 = theString;
  if (theString)
  {
    v2 = CFStringFind(theString, qword_2A145F740, 0);
    if (v2.length)
    {
      v5.length = v2.length + v2.location + 1;
      v5.location = 0;
      v3 = CFStringCreateWithSubstring(0, v1, v5);
      v1 = CFURLCreateWithFileSystemPath(0, v3, kCFURLPOSIXPathStyle, 1u);
      if (v3)
      {
        CFRelease(v3);
      }
    }

    else
    {
      return 0;
    }
  }

  return v1;
}

void sub_29936D2A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_299219AB4(va, 0);
  _Unwind_Resume(a1);
}

const __CFString *sub_29936D2B8(CFLocaleIdentifier localeIdentifier)
{
  v1 = CFLocaleCreate(0, localeIdentifier);
  v5 = 0;
  v6 = &v5;
  v7 = 0x3002000000;
  v8 = sub_29936D5A8;
  v9 = sub_29936D5B8;
  cf = 0;
  LDEnumerateAssetDataItems();
  v2 = v6[5];
  v6[5] = 0;
  _Block_object_dispose(&v5, 8);
  if (cf)
  {
    CFRelease(cf);
  }

  v3 = sub_29936D208(v2);
  if (v2)
  {
    CFRelease(v2);
  }

  if (v1)
  {
    CFRelease(v1);
  }

  return v3;
}

void sub_29936D3E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  sub_299219AB4(va, 0);
  sub_299253084(va1, 0);
  _Unwind_Resume(a1);
}

const __CFString *sub_29936D41C(char *cStr)
{
  v1 = CFStringCreateWithCString(0, cStr, 0x8000100u);
  v2 = sub_29936D2B8(v1);
  if (v1)
  {
    CFRelease(v1);
  }

  return v2;
}

void sub_29936D478(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_299219AB4(va, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_29936D490(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_2992327A4(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

CFArrayRef sub_29936D4DC(const __CFURL *a1)
{
  v1 = sub_29936CD48(a1);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  Value = CFDictionaryGetValue(v1, @"Contents");
  if (Value)
  {
    Copy = CFArrayCreateCopy(*MEMORY[0x29EDB8ED8], Value);
  }

  else
  {
    Copy = 0;
  }

  CFRelease(v2);
  return Copy;
}

void sub_29936D558(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_299215B18(va, 0);
  _Unwind_Resume(a1);
}

void sub_29936D570(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

uint64_t sub_29936D5A8(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a2 + 40) = 0;
  *(result + 40) = v2;
  return result;
}

void sub_29936D5C4(uint64_t a1, CFURLRef anURL, int a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  if (!a3)
  {
    v7 = *(*(a1 + 32) + 8);
    v8 = CFURLCopyFileSystemPath(anURL, kCFURLPOSIXPathStyle);
    sub_299219AB4((v7 + 40), v8);
    *a6 = 1;
  }
}

uint64_t sub_29936D618(uint64_t a1)
{
  sub_29936D654(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29936D654(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_2992327A4((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_29936D698(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_29936D654(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

uint64_t sub_29936D764(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F73D78;
  a2[1] = v2;
  return result;
}

void sub_29936D790(uint64_t a1, const __CFURL **a2, const __CFString **a3)
{
  v4 = *a2;
  v5 = *a3;
  if (v4)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    sub_29936B57C(v4, v5, (*(a1 + 8) + 56));
  }
}

uint64_t sub_29936D7B8(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F73DE8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29936D804(uint64_t a1)
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

void sub_29936D8A4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1F73E08;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_29936D8F8(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    CFRelease(v2);
  }

  sub_29936D618(a1 + 80);

  return sub_29936D618(a1 + 40);
}

void sub_29936D948(char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[4];
    if (v3)
    {
      sub_2991A893C(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t sub_29936D9A0(uint64_t a1, const __CFURL *a2, uint64_t *a3)
{
  v23 = *MEMORY[0x29EDCA608];
  *(a1 + 16) = 0;
  v5 = (a1 + 16);
  *a1 = &unk_2A1F73E58;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = &unk_2A1F73EF0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  v6 = *a3;
  *a3 = 0;
  v7 = *(a1 + 8);
  *(a1 + 8) = v6;
  if (v7)
  {
    (*(*v7 + 8))(v7);
    v6 = *(a1 + 8);
  }

  if (v6 && *(v6 + 8))
  {
    v8 = sub_2991A7F10(0x2000000000, *(v6 + 48));
    v9 = v8;
    v10 = 0;
    error = 0;
    if (a2 && v8)
    {
      if (!CFURLResourceIsReachable(a2, &error))
      {
        if (error)
        {
          CFRelease(error);
        }

        v10 = 0;
        goto LABEL_30;
      }

      if (CFURLGetFileSystemRepresentation(a2, 1u, buffer, 1024))
      {
        v11 = buffer;
      }

      else
      {
        v11 = &unk_29943AA03;
      }

      sub_2991C6CA8(__p, v11);
      if (v20 < 0)
      {
        if (!__p[1])
        {
          v10 = 0;
LABEL_28:
          operator delete(__p[0]);
          goto LABEL_29;
        }

        v12 = __p[0];
      }

      else
      {
        if (!v20)
        {
          v10 = 0;
          goto LABEL_29;
        }

        v12 = __p;
      }

      v13 = (*(*v9 + 16))(v9, v12);
      if (v13)
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }

      if (v13)
      {
        v9 = 0;
      }

      if (v20 < 0)
      {
        goto LABEL_28;
      }
    }

LABEL_29:
    if (!v9)
    {
LABEL_31:
      v14 = *v5;
      *v5 = v10;
      if (v14)
      {
        (*(*v14 + 8))(v14);
        v10 = *v5;
      }

      if (v10)
      {
        (*(*v10 + 64))(buffer, v10, 32);
        v15 = *buffer;
      }

      else
      {
        v15 = 0;
      }

      *buffer = 0;
      v16 = *(a1 + 24);
      *(a1 + 24) = v15;
      if (v16)
      {
        (*(*v16 + 8))(v16);
        v17 = *buffer;
        *buffer = 0;
        if (v17)
        {
          (*(*v17 + 8))(v17);
        }
      }

      *(a1 + 72) = 1;
      return a1;
    }

LABEL_30:
    (*(*v9 + 8))(v9);
    goto LABEL_31;
  }

  return a1;
}

void sub_29936DCD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  (*(*v18 + 8))(v18, a2, a3, a4, a5, a6, a7, a8);
  *v20 = v17;
  v23 = *v21;
  if (*v21)
  {
    v15[7] = v23;
    operator delete(v23);
  }

  v24 = v15[4];
  v15[4] = 0;
  if (v24)
  {
    (*(*v24 + 8))(v24);
  }

  v25 = v15[3];
  v15[3] = 0;
  if (v25)
  {
    (*(*v25 + 8))(v25);
  }

  v26 = *v19;
  *v19 = 0;
  if (v26)
  {
    (*(*v26 + 8))(v26);
  }

  v27 = v15[1];
  *v15 = v16;
  v15[1] = 0;
  if (v27)
  {
    (*(*v27 + 8))(v27);
  }

  _Unwind_Resume(a1);
}

void *sub_29936DDFC(void *a1)
{
  *a1 = &unk_2A1F73EF0;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_29936DE54(uint64_t a1@<X0>, uint64_t **a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  v11 = *MEMORY[0x29EDCA608];
  v4 = -1431655765 * (a2[1] - *a2);
  if (v4)
  {
    sub_29936E198(v9, a2, v4, *(*(a1 + 8) + 48));
    v5 = sub_2993652F8(0xCu);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = sub_2993652F8(7u);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        sub_29936E46C(&__p, v9[0], v9[1]);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        *buf = 136315138;
        *&buf[4] = p_p;
        _os_log_debug_impl(&dword_29918C000, v6, OS_LOG_TYPE_DEBUG, "batches:\n%s", buf, 0xCu);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }
    }

    sub_2991A51B0(&__p);
  }

  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (a3)
  {
    sub_29936E104(a1);
  }
}

void sub_29936E070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, void **a15)
{
  a15 = &a12;
  sub_29920E060(&a15);
  _Unwind_Resume(a1);
}

uint64_t sub_29936E104(uint64_t a1)
{
  v2 = (*(**(a1 + 24) + 24))(*(a1 + 24));
  result = *(a1 + 32);
  *(a1 + 32) = v2;
  if (result)
  {
    v4 = *(*result + 8);

    return v4();
  }

  return result;
}

void sub_29936E198(void *a1, uint64_t **a2, int a3, int a4)
{
  v4 = *a2;
  v5 = a2[1];
  if (*a2 == v5)
  {
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  else
  {
    v6 = 0;
    do
    {
      v8 = *v4;
      v7 = v4[1];
      v4 += 3;
      v9 = (v7 - v8) >> 2;
      if (v6 <= v9)
      {
        v6 = v9;
      }
    }

    while (v4 != v5);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
    if (v6)
    {
      if (v6 <= 0xAAAAAAAAAAAAAAALL)
      {
        v10 = a1;
        sub_29920DDE0(a1, v6);
      }

      sub_29920D90C();
    }
  }
}

void sub_29936E46C(std::string *a1, unsigned int **a2, unsigned int **a3)
{
  *&a1->__r_.__value_.__l.__data_ = 0uLL;
  a1->__r_.__value_.__r.__words[2] = 0;
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      memset(&__p, 0, sizeof(__p));
      v6 = *v4;
      if (*v4 == v4[1])
      {
        v9 = *v4;
      }

      else
      {
        std::to_string(&v16, *v6);
        if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v7 = &v16;
        }

        else
        {
          v7 = v16.__r_.__value_.__r.__words[0];
        }

        if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v16.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v16.__r_.__value_.__l.__size_;
        }

        std::string::append(&__p, v7, size);
        if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v16.__r_.__value_.__l.__data_);
        }

        v6 = *v4;
        v9 = v4[1];
      }

      if ((v9 - v6) >= 5)
      {
        v10 = 1;
        do
        {
          std::string::append(&__p, " ", 1uLL);
          std::to_string(&v16, (*v4)[v10]);
          if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v11 = &v16;
          }

          else
          {
            v11 = v16.__r_.__value_.__r.__words[0];
          }

          if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v12 = HIBYTE(v16.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v12 = v16.__r_.__value_.__l.__size_;
          }

          std::string::append(&__p, v11, v12);
          if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v16.__r_.__value_.__l.__data_);
          }

          ++v10;
        }

        while (v10 < v4[1] - *v4);
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v14 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v14 = __p.__r_.__value_.__l.__size_;
      }

      std::string::append(a1, p_p, v14);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      std::string::push_back(a1, 10);
      v4 += 3;
    }

    while (v4 != a3);
  }
}

void sub_29936E5EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v20 + 23) < 0)
  {
    operator delete(*v20);
  }

  _Unwind_Resume(exception_object);
}

void sub_29936E648(uint64_t a1, const void ***a2)
{
  memset(v9, 0, sizeof(v9));
  sub_2991B6CFC(v9, a2[1] - *a2);
  v6 = *a2;
  v7 = a2[1];
  while (v6 != v7)
  {
    LODWORD(v8) = (*(**v6 + 32))();
    sub_2992141C0(v9, &v8);
    ++v6;
  }

  sub_2991A51B0(&v8);
}

void sub_29936ECFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v24 = *v22;
  if (*v22)
  {
    *(v22 + 8) = v24;
    operator delete(v24);
  }

  _Unwind_Resume(exception_object);
}

void sub_29936EDC0(uint64_t a1)
{
  v14 = *MEMORY[0x29EDCA608];
  (*(**(a1 + 8) + 16))(&v8);
  v11 = 0;
  v12 = 0;
  v13 = 0;
  sub_2991D82D0(&v11, v8, v9, (v9 - v8) >> 2);
  v5 = 0uLL;
  v6 = 0;
  sub_29921ED74(&v5, &v11, &v14, 1uLL);
  sub_29936E198(v7, &v5, 1, *(*(a1 + 8) + 48));
  v10 = &v5;
  sub_29920E060(&v10);
  if (v11)
  {
    v12 = v11;
    operator delete(v11);
  }

  (*(**(a1 + 24) + 16))(*(a1 + 24), 1);
  (*(**(a1 + 16) + 40))(__p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v2 = (*(**(a1 + 24) + 24))(*(a1 + 24));
  sub_2991BB350(v2, 0, &v5);
  v3 = *(a1 + 48);
  if (v3)
  {
    *(a1 + 56) = v3;
    operator delete(v3);
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
  }

  *(a1 + 48) = v5;
  *(a1 + 64) = v6;
  *(a1 + 72) = *(v9 - 1);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *&v5 = v7;
  sub_29920E060(&v5);
  if (v8)
  {
    v9 = v8;
    operator delete(v8);
  }
}

void sub_29936EFE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char *a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (v20)
  {
    (*(*v20 + 8))(v20, a2, a3, a4, a5, a6, a7, a8);
  }

  a13 = &a16;
  sub_29920E060(&a13);
  if (__p)
  {
    a20 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_29936F104(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29936F124(void *a1)
{
  sub_29936F3D4(a1);

  JUMPOUT(0x29C29BFB0);
}

void sub_29936F1A4(void *a1)
{
  *a1 = &unk_2A1F73EF0;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x29C29BFB0);
}

void sub_29936F2D8(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 16) = v5;
    operator delete(v5);
  }

  MEMORY[0x29C29BFB0](v1, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_29936F308(uint64_t result, uint64_t *a2, uint64_t a3, int *a4)
{
  if (a3 >= 2)
  {
    v4 = (a3 - 2) >> 1;
    if (v4 >= (a4 - result) >> 2)
    {
      v5 = (a4 - result) >> 1;
      v6 = v5 | 1;
      v7 = (result + 4 * (v5 | 1));
      v8 = v5 + 2;
      v9 = *a2;
      if (v8 < a3 && *(v9 + 4 * *v7) > *(v9 + 4 * v7[1]))
      {
        ++v7;
        v6 = v8;
      }

      v10 = *v7;
      v11 = *a4;
      v12 = *(v9 + 4 * v11);
      if (*(v9 + 4 * v10) <= v12)
      {
        do
        {
          *a4 = v10;
          a4 = v7;
          if (v4 < v6)
          {
            break;
          }

          v13 = 2 * v6;
          v6 = (2 * v6) | 1;
          v7 = (result + 4 * v6);
          v14 = v13 + 2;
          if (v14 < a3 && *(v9 + 4 * *v7) > *(v9 + 4 * v7[1]))
          {
            ++v7;
            v6 = v14;
          }

          v10 = *v7;
        }

        while (*(v9 + 4 * v10) <= v12);
        *a4 = v11;
      }
    }
  }

  return result;
}

void *sub_29936F3D4(void *a1)
{
  *a1 = &unk_2A1F73E58;
  a1[5] = &unk_2A1F73EF0;
  v2 = a1[6];
  if (v2)
  {
    a1[7] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  a1[4] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[3];
  a1[3] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = a1[2];
  a1[2] = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = a1[1];
  *a1 = &unk_2A1F6F568;
  a1[1] = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  return a1;
}

void sub_29936F51C(void *a1, uint64_t a2)
{
  *a1 = &unk_2A1F73F40;
  a1[1] = a2;
  operator new[]();
}

void *sub_29936F5C4(void *a1)
{
  *a1 = &unk_2A1F73F40;
  v2 = a1[2];
  if (v2)
  {
    v3 = *(v2 - 8);
    if (v3)
    {
      v4 = v2 + 56 * v3;
      do
      {
        v5 = *(v4 - 24);
        if (v5)
        {
          v6 = *(v4 - 16);
          v7 = *(v4 - 24);
          if (v6 != v5)
          {
            do
            {
              v6 -= 32;
              sub_2993715D8(v6);
            }

            while (v6 != v5);
            v7 = *(v4 - 24);
          }

          *(v4 - 16) = v5;
          operator delete(v7);
        }

        v4 -= 56;
      }

      while (v4 != v2);
    }

    MEMORY[0x29C29BF70](v2 - 16, 0x1020C80097B8DA0);
  }

  v8 = a1[5];
  if (v8)
  {
    MEMORY[0x29C29BF70](v8, 0x1000C80BDFB0063);
  }

  return a1;
}

void sub_29936F6AC(void *a1)
{
  sub_29936F5C4(a1);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_29936F6E4(uint64_t a1, uint64_t *a2, uint64_t a3, int a4, uint64_t a5)
{
  v6 = a1;
  *(a1 + 24) = 0;
  *(a1 + 32) = a4;
  v40 = 0;
  v39 = a3;
  result = sub_29936FC74(a1, a2, (a3 + 1), &v40, 1);
  if (*(v6 + 32))
  {
    if (*(v6 + 35) != 1 || (v8 = *(v6 + 8), *(*(*(v8 + 16) - 8) + 16) == *(*(*(v8 + 16) - 8) + 8)))
    {
      v9 = 0;
    }

    else
    {
      v9 = (v39 > 0) & *(v8 + 536);
    }

    *(v6 + 36) = v9;
    if (!*(v6 + 24))
    {
      return result;
    }

    while (1)
    {
      while (1)
      {
        result = sub_29936FC74(v6, a2, v39, &v40, 0);
        if ((result & 1) == 0)
        {
          break;
        }

        v28 = *(v6 + 16);
        v29 = *(v6 + 24);
        v30 = v28 + 56 * v29;
        if (*(v6 + 33) != 1 || !*(v30 - 48))
        {
          goto LABEL_46;
        }

        result = *(v30 - 56);
        if (result)
        {
          if (*(v30 - 48) + 1 == (*(*result + 40))(result))
          {
            v28 = *(v6 + 16);
            v29 = *(v6 + 24);
LABEL_46:
            (*(a5 + 16))(a5, v28, v29);
          }

          result = *(v30 - 56);
          if (result)
          {
            v31 = *(v30 - 48);
            result = (*(*result + 40))(result);
            v39 = (v31 - result);
          }
        }

LABEL_57:
        v40 = 0;
LABEL_59:
        if (!*(v6 + 24))
        {
          return result;
        }
      }

      if (v40 != 0xFFFF)
      {
        ++v40;
        goto LABEL_59;
      }

      result = sub_299370088(v6, a2);
      if (result)
      {
        v32 = *(v6 + 16);
        v33 = *(v6 + 24);
        if (*(v6 + 33) == 1)
        {
          v34 = v32 + 56 * v33;
          if (*(v34 - 48))
          {
            result = *(v34 - 56);
            if (!result)
            {
              goto LABEL_57;
            }

            result = (*(*result + 40))(result);
            if (*(v34 - 48) + 1 != result)
            {
              goto LABEL_57;
            }

            v32 = *(v6 + 16);
            v33 = *(v6 + 24);
          }
        }

        result = (*(a5 + 16))(a5, v32, v33);
        goto LABEL_57;
      }

      v35 = *(v6 + 24);
      v36 = *(v6 + 16) + 56 * v35;
      v39 = *(v36 - 48);
      v40 = *(v36 - 40) + 1;
      *(v6 + 24) = v35 - 1;
      if (v35 == 1)
      {
        return result;
      }
    }
  }

  *(v6 + 36) = 0;
  v10 = *(v6 + 24);
  if (!v10)
  {
    return result;
  }

  v11 = 0;
  v12 = *(v6 + 16);
  v38 = v6;
  do
  {
    v52 = -1;
    v13 = v12 + 56 * v10;
    while (1)
    {
      result = sub_2993A2A74(*(v6 + 8), v39, v11);
      v52 = result;
      if (result == 0xFFFF)
      {
LABEL_29:
        v12 = *(v6 + 16);
        v25 = *(v6 + 24);
        v26 = v12 + 56 * v25;
        LODWORD(v39) = *(v26 - 48);
        v11 = *(v26 - 40) + 1;
        v10 = v25 - 1;
        *(v6 + 24) = v25 - 1;
        goto LABEL_36;
      }

      v14 = *(v13 + 32);
      for (i = *(v13 + 40); i != v14; result = sub_2993715D8(i))
      {
        i -= 32;
      }

      *(v13 + 40) = v14;
      v16 = *(v13 - 24);
      v17 = *(v13 - 16);
      if (v16 == v17)
      {
        v24 = v52;
        goto LABEL_28;
      }

      v18 = 0;
      do
      {
        v19 = *(*a2 + 8 * *v16);
        sub_299359338(v16 + 1, v19, 2, &v50);
        if ((*(*v19 + 88))(v19, &v50))
        {
          sub_2992A5E4C(&v41, &v50);
          v20 = (*(*v19 + 104))(v19, &v50);
          sub_2992A5E4C(&v43, &v41);
          LOBYTE(v45) = 0;
          HIBYTE(v45) = v20 != 0;
          v46[0] = *v16;
          v47 = 0;
          v48 = 0;
          sub_2992B0BA8(&v47, &v43);
          v49 = v45;
          sub_29937087C((v13 + 32), v46);
          sub_2992A5BA0(&v48);
          v21 = v47;
          v47 = 0;
          if (v21)
          {
            MEMORY[0x29C29BFB0](v21, 0x1010C40E4C6A875);
          }

          sub_2992A5BA0(&v44);
          v22 = v43;
          v43 = 0;
          if (v22)
          {
            MEMORY[0x29C29BFB0](v22, 0x1010C40E4C6A875);
          }

          sub_2992A5BA0(&v42);
          v23 = v41;
          v41 = 0;
          if (v23)
          {
            MEMORY[0x29C29BFB0](v23, 0x1010C40E4C6A875);
          }

          v18 = 1;
        }

        sub_2992A5BA0(&v51);
        result = v50;
        v50 = 0;
        if (result)
        {
          result = MEMORY[0x29C29BFB0](result, 0x1010C40E4C6A875);
        }

        v16 += 32;
      }

      while (v16 != v17);
      v24 = v52;
      if (v18)
      {
        break;
      }

      v6 = v38;
LABEL_28:
      ++v11;
      if (v24 == 0xFFFF)
      {
        goto LABEL_29;
      }
    }

    v6 = v38;
    *(v13 + 8) = v39;
    *(v13 + 16) = v11;
    *(v13 + 26) = v24;
    *v13 = 0;
    v12 = *(v38 + 16);
    v10 = *(v38 + 24) + 1;
    *(v38 + 24) = v10;
    if (*(v38 + 33) != 1 || (v27 = v12 + 56 * v10, !*(v27 - 48)) || (result = *(v27 - 56)) != 0 && (result = (*(*result + 40))(result), v12 = *(v38 + 16), v10 = *(v38 + 24), *(v27 - 48) + 1 == result))
    {
      result = (*(a5 + 16))(a5, v12);
      v12 = *(v38 + 16);
      v10 = *(v38 + 24);
    }

    v11 = 0;
    LODWORD(v39) = *(v12 + 56 * v10 - 48) - 1;
LABEL_36:
    ;
  }

  while (v10);
  return result;
}

uint64_t sub_29936FC74(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int *a4, int a5)
{
  v7 = a3;
  v10 = *(a1 + 24);
  if (!v10)
  {
    v12 = 0;
LABEL_6:
    v13 = 0;
    if ((a5 & 1) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v11 = *(a1 + 16) + 56 * v10;
  v12 = *(v11 - 56);
  if (v10 == 1)
  {
    goto LABEL_6;
  }

  v13 = *(v11 - 112);
  if ((a5 & 1) == 0)
  {
LABEL_4:
    v14 = sub_2993A2AF8(*(a1 + 8), a3, a4, v12, v13, 0);
    v10 = *(a1 + 24);
    goto LABEL_8;
  }

LABEL_7:
  v14 = 0;
LABEL_8:
  v51 = 0;
  if (v10)
  {
    v15 = *(*(a1 + 16) + 56 * v10 - 28);
    v16 = v15;
    if (!v14)
    {
      v21 = 1;
      goto LABEL_41;
    }

    if (((*(*v14 + 88))(v14) & 1) == 0)
    {
      v17 = *(v14[1] + 8);
      v18 = (*(*v14 + 64))(v14);
      v19 = v15 | 0x10;
      if (v18 != 4)
      {
        v19 = v15;
      }

      if (v17)
      {
        v22 = *(a1 + 24);
        if (v22 == 1)
        {
          v23 = 6;
        }

        else
        {
          v23 = 2;
        }

        if ((v15 & 2) != 0)
        {
          v23 = 0;
        }

        v24 = v23 | v19;
        if ((v15 & 8) != 0 && v22 >= 3)
        {
          LOWORD(v16) = v24 & 0xF7;
        }

        else
        {
          LOWORD(v16) = v24;
        }
      }

      else
      {
        if ((v15 & 4) != 0)
        {
          v19 &= 0xFBu;
        }

        if ((v15 & 2) != 0 && *(a1 + 24) == 2)
        {
          LOWORD(v16) = v19 | 8;
        }

        else
        {
          LOWORD(v16) = v19;
        }
      }

      if ((*(*v14 + 64))(v14) == 8)
      {
        LOWORD(v16) = 2 * (*(a1 + 24) != 1);
      }
    }
  }

  else
  {
    LOWORD(v16) = *(a1 + 35);
  }

  v16 = v16;
  v21 = v14 == 0;
  if (v14 && (a5 & 1) == 0)
  {
    v26 = sub_299370AAC(a1, a2, v14, *(a1 + 24) - 1, &v51, v16);
    if (v26 == 0xFFFF)
    {
      return 0;
    }

    v40 = a5;
    v21 = 0;
    v27 = v51;
    goto LABEL_43;
  }

LABEL_41:
  if (!a5)
  {
    v41 = a4;
    result = 0;
    if (!v21)
    {
      return result;
    }

    goto LABEL_59;
  }

  v40 = a5;
  v27 = 0;
  LOWORD(v26) = -1;
LABEL_43:
  v28 = *(a1 + 16) + 56 * *(a1 + 24);
  *(v28 + 24) = v27;
  *v28 = v14;
  *(v28 + 8) = v7;
  v41 = a4;
  *(v28 + 16) = *a4;
  *(v28 + 26) = v26;
  *(v28 + 28) = v16;
  v39 = v21;
  if (v21)
  {
    v30 = *a2;
    v29 = a2[1];
    v32 = *(v28 + 32);
    for (i = *(v28 + 40); i != v32; sub_2993715D8(i))
    {
      i -= 32;
    }

    *(v28 + 40) = v32;
    if (v29 != v30)
    {
      v34 = 0;
      v35 = 0;
      do
      {
        (*(**(*a2 + 8 * v34) + 56))(&v42);
        sub_2992A5E4C(&v44, &v42);
        v46 = 256;
        v47[0] = v35;
        v48 = 0;
        v49 = 0;
        sub_2992B0BA8(&v48, &v44);
        v50 = v46;
        sub_29937087C((v28 + 32), v47);
        sub_2992A5BA0(&v49);
        v36 = v48;
        v48 = 0;
        if (v36)
        {
          MEMORY[0x29C29BFB0](v36, 0x1010C40E4C6A875);
        }

        sub_2992A5BA0(&v45);
        v37 = v44;
        v44 = 0;
        if (v37)
        {
          MEMORY[0x29C29BFB0](v37, 0x1010C40E4C6A875);
        }

        sub_2992A5BA0(&v43);
        v38 = v42;
        v42 = 0;
        if (v38)
        {
          MEMORY[0x29C29BFB0](v38, 0x1010C40E4C6A875);
        }

        v34 = ++v35;
      }

      while ((v29 - v30) >> 3 > v35);
    }
  }

  ++*(a1 + 24);
  result = 1;
  LOBYTE(a5) = v40;
  if (v39)
  {
LABEL_59:
    if ((a5 & 1) == 0)
    {
      *v41 = 0xFFFF;
    }
  }

  return result;
}

void sub_29937005C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_2992AB338(va);
  _Unwind_Resume(a1);
}

uint64_t sub_299370088(uint64_t a1, void *a2)
{
  v2 = *(a1 + 24);
  if (v2 < 2)
  {
    return 0;
  }

  v3 = *(a1 + 16) + 56 * v2;
  v4 = *(v3 - 56);
  ++*(v3 - 32);
  v5 = sub_299370AAC(a1, a2, v4, v2 - 2, (v3 - 32), *(v3 - 28));
  if (v5 == 0xFFFF)
  {
    return 0;
  }

  *(v3 - 30) = v5;
  return 1;
}

void sub_299370100(void *a1, uint64_t **a2, uint64_t a3, uint64_t a4)
{
  v5 = a1[1];
  v40 = 0;
  v41 = 0;
  v39 = 0;
  sub_299215EC0(&v39, *a3, *(a3 + 8), (*(a3 + 8) - *a3) >> 1);
  sub_2993A3420(v5, &v39, 7uLL, &v42);
  if (v39)
  {
    v40 = v39;
    operator delete(v39);
  }

  v6 = v43;
  v7 = v42;
  v8 = v43 - v42;
  if (v43 != v42)
  {
    v9 = ((*(a1[1] + 16) - *(a1[1] + 8)) >> 3) - 1;
    v10 = 56 * (v8 >> 3);
    v26 = v8 >> 3;
    v11 = 2 * (v8 >> 3) - 2;
    do
    {
      v12 = *v7;
      v13 = **v7;
      v14 = *((*v7)[1] + 2);
      *(a1[5] + v11) = v14;
      v15 = a1[2] + v10;
      *(v15 - 30) = v14;
      *(v15 - 56) = v12;
      *(v15 - 48) = v9;
      v9 -= (*(v13 + 40))();
      ++v7;
      v10 -= 56;
      v11 -= 2;
    }

    while (v7 != v6);
    v16 = 0;
    v17 = 1;
    if ((v43 - v42) <= 0x10)
    {
      v17 = 2;
    }

    v27 = v17;
    v35 = 0;
    v36 = &v35;
    v37 = 0x2000000000;
    v38 = 0;
    v31 = 0;
    v32 = &v31;
    v33 = 0x2000000000;
    v34 = 0;
    v18 = &v31;
    v19 = v26;
    do
    {
      if (v36[3] > 2)
      {
        break;
      }

      v20 = v19 - v16;
      if (v19 - v16 < v27)
      {
        break;
      }

      v22 = *a2;
      v21 = a2[1];
      if (*a2 != v21)
      {
        v23 = MEMORY[0x29EDCA5F8];
        do
        {
          v24 = *v22;
          v25 = a1[5] + 2 * v16;
          v30[0] = v23;
          v30[1] = 0x40000000;
          v30[2] = sub_299370404;
          v30[3] = &unk_29EF13638;
          v30[8] = v16;
          v30[9] = v20;
          v30[10] = v24;
          v30[4] = a4;
          v30[5] = &v31;
          v30[6] = &v35;
          v30[7] = a1;
          (*(*v24 + 128))(v24, v25, 2 * v20, 2 * v20, v30);
          ++v22;
        }

        while (v22 != v21);
        v18 = v32;
        v19 = v26;
      }

      if (v18[3])
      {
        break;
      }

      ++v16;
    }

    while (v16 < v19);
    _Block_object_dispose(&v31, 8);
    _Block_object_dispose(&v35, 8);
    v7 = v42;
  }

  if (v7)
  {
    v43 = v7;
    operator delete(v7);
  }
}

void sub_2993703B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  v32 = *(v30 - 152);
  if (v32)
  {
    *(v30 - 144) = v32;
    operator delete(v32);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_299370404(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, _BYTE *a5)
{
  v8 = *(a1 + 32);
  v9 = *(*(a1 + 56) + 16) + 56 * *(a1 + 64);
  v10 = a4 >> 1;
  if (!a3)
  {
    v10 = 0;
  }

  v16[0] = a3;
  v16[1] = v10;
  v11 = *(a1 + 72);
  v12 = (*(**(a1 + 80) + 16))(*(a1 + 80));
  result = (*(v8 + 16))(v8, v9, v11, v16, a2, v12, *(*(a1 + 40) + 8) + 24);
  v14 = *(a1 + 72);
  v15 = *(*(a1 + 48) + 8);
  if (v14 > *(v15 + 24))
  {
    *(v15 + 24) = v14;
  }

  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a5 = 1;
  }

  return result;
}

void sub_2993704F4(void *a1, void *a2, int a3, uint64_t a4)
{
  v46 = 0;
  v47 = 0;
  v48 = 0;
  v7 = a1[1];
  if (a3)
  {
    v8 = sub_2993AAFA4(v7, &v46);
  }

  else
  {
    v8 = sub_2993AAB74(v7, &v46);
  }

  if (v8 && ((*(a1[1] + 16) - *(a1[1] + 8)) >> 3) >= 2)
  {
    v35 = *(a1[1] + 16) - *(a1[1] + 8);
    v36 = a4;
    v33 = v46;
    v34 = v47;
    v9 = a1[2];
    v10 = *(v9 + 32);
    for (i = *(v9 + 40); i != v10; sub_2993715D8(i))
    {
      i -= 32;
    }

    *(v9 + 40) = v10;
    v12 = a2[1];
    v13 = v12 - *a2;
    if (v12 != *a2)
    {
      v14 = 0;
      v15 = 0;
      v16 = v13 >> 3;
      do
      {
        (*(**(*a2 + 8 * v14) + 56))(&v37);
        sub_2992A5E4C(&v39, &v37);
        v41 = 256;
        LOBYTE(v42) = v15;
        v43 = 0;
        v44 = 0;
        sub_2992B0BA8(&v43, &v39);
        v45 = v41;
        sub_29937087C((v9 + 32), &v42);
        sub_2992A5BA0(&v44);
        v17 = v43;
        v43 = 0;
        if (v17)
        {
          MEMORY[0x29C29BFB0](v17, 0x1010C40E4C6A875);
        }

        sub_2992A5BA0(&v40);
        v18 = v39;
        v39 = 0;
        if (v18)
        {
          MEMORY[0x29C29BFB0](v18, 0x1010C40E4C6A875);
        }

        sub_2992A5BA0(&v38);
        v19 = v37;
        v37 = 0;
        if (v19)
        {
          MEMORY[0x29C29BFB0](v19, 0x1010C40E4C6A875);
        }

        v14 = ++v15;
      }

      while (v16 > v15);
    }

    v20 = 0;
    v21 = v36;
    v22 = 1;
    a1[3] = 1;
    v23 = (v35 >> 3) - 1;
    do
    {
      while (v22 < ((v34 - v33) >> 4) + 1)
      {
        if (v20 > 0)
        {
          break;
        }

        v28 = *(v46 + 16 * v22 - 16);
        LOWORD(v39) = 0;
        if (!v28)
        {
          break;
        }

        v29 = sub_299370AAC(a1, a2, v28, v22 - 1, &v39, 36);
        if (v29 == 0xFFFF)
        {
          break;
        }

        v30 = a1[3];
        v31 = a1[2] + 56 * v30;
        *v31 = v28;
        *(v31 + 24) = v39;
        *(v31 + 8) = v23;
        *(v31 + 16) = 0;
        *(v31 + 26) = v29;
        *(v31 + 28) = 36;
        a1[3] = v30 + 1;
        if (v23 || ((*(v36 + 16))(), (v28 = *v31) != 0))
        {
          v32 = *(v31 + 8);
          v23 = v32 - (*(*v28 + 40))(v28);
        }

        else
        {
          v23 = 0;
        }

        v21 = v36;
LABEL_32:
        v20 = 0;
        v22 = a1[3];
        if (!v22)
        {
          goto LABEL_35;
        }
      }

      v24 = sub_299370088(a1, a2);
      v25 = a1[3];
      v26 = a1[2] + 56 * v25;
      v27 = *(v26 - 48);
      if (v24)
      {
        if (!v27)
        {
          (*(v21 + 16))(v21);
        }

        goto LABEL_32;
      }

      v20 = *(v26 - 40) + 1;
      v22 = v25 - 1;
      a1[3] = v25 - 1;
      v23 = v27;
    }

    while (v25 != 1);
  }

LABEL_35:
  v42 = &v46;
  sub_299291260(&v42);
}

void sub_29937082C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void **a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  a18 = &a22;
  sub_299291260(&a18);
  _Unwind_Resume(a1);
}

uint64_t sub_29937087C(uint64_t *a1, uint64_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v8 = (v5 - *a1) >> 5;
    if ((v8 + 1) >> 59)
    {
      sub_299212A8C();
    }

    v9 = v4 - *a1;
    v10 = v9 >> 4;
    if (v9 >> 4 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFE0)
    {
      v11 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    v24 = a1;
    if (v11)
    {
      if (!(v11 >> 59))
      {
        operator new();
      }

      sub_29919600C();
    }

    v12 = 32 * v8;
    v20 = 0;
    v21 = v12;
    v13 = 0;
    v23 = 0;
    *v12 = *a2;
    *(v12 + 16) = 0;
    *(v12 + 8) = 0;
    sub_2992B0BA8((v12 + 8), (a2 + 8));
    *(v12 + 24) = *(a2 + 24);
    v7 = v12 + 32;
    v22 = v12 + 32;
    v14 = *a1;
    v15 = a1[1];
    v16 = v12 + *a1 - v15;
    if (*a1 != v15)
    {
      v17 = 0;
      do
      {
        v18 = v14 + v17;
        *(v16 + v17) = *(v14 + v17);
        sub_2992A5E4C((v16 + v17 + 8), (v14 + v17 + 8));
        *(v16 + v17 + 24) = *(v14 + v17 + 24);
        v17 += 32;
      }

      while (v18 + 32 != v15);
      do
      {
        sub_2993715D8(v14);
        v14 += 32;
      }

      while (v14 != v15);
      v14 = *a1;
      v7 = v22;
      v13 = v23;
    }

    *a1 = v16;
    a1[1] = v7;
    v19 = a1[2];
    a1[2] = v13;
    v22 = v14;
    v23 = v19;
    v20 = v14;
    v21 = v14;
    result = sub_299371638(&v20);
  }

  else
  {
    *v5 = *a2;
    *(v5 + 16) = 0;
    *(v5 + 8) = 0;
    result = sub_2992B0BA8((v5 + 8), (a2 + 8));
    *(v5 + 24) = *(a2 + 24);
    v7 = v5 + 32;
    a1[1] = v5 + 32;
  }

  a1[1] = v7;
  return result;
}

uint64_t sub_299370A60(uint64_t a1)
{
  sub_2992A5BA0((a1 + 16));
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C29BFB0](v2, 0x1010C40E4C6A875);
  }

  return a1;
}

uint64_t sub_299370AAC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _WORD *a5, uint64_t a6)
{
  if (*(a1 + 36) == 1 && a4 == 1 && (a6 & 8) != 0)
  {
    v16 = sub_2993A30D8(*(a1 + 8), a3, *(*(a1 + 16) + 56));
    if (v16)
    {
      return 0xFFFFLL;
    }
  }

  v12 = 0;
  v58 = 0;
  v13 = *(*(a1 + 8) + 40);
  v41 = a1;
  if ((v13 - 3) >= 2)
  {
    if (v13 == 5)
    {
      v14 = (a6 >> 5) & 1;
      v15 = 2;
      goto LABEL_16;
    }

    v12 = 1;
  }

  v14 = v12 & (a6 >> 5);
  v15 = (v13 - 3) < 2;
LABEL_16:
  v17 = (*(*a3 + 48))(a3, v15, v14);
  v18 = *a5;
  v19 = 0xFFFFLL;
  v44 = v17;
  if (v18 < v17)
  {
    v20 = *(a1 + 16) + 56 * a4;
    v40 = a5;
    while (1)
    {
      v21 = *(v20 + 88);
      v22 = *(v20 + 96);
      if (v22 != v21)
      {
        do
        {
          v22 -= 32;
          sub_2993715D8(v22);
        }

        while (v22 != v21);
        LOWORD(v18) = *a5;
      }

      *(v20 + 96) = v21;
      v23 = (*(*a3 + 56))(a3, v18);
      if (v23 != 0xFFFF)
      {
        v24 = v23;
        if (*(v41 + 34) == 1)
        {
          v25 = (&unk_299421A3C + 2 * v23 - 28);
          if (v23 >= 0x1AC)
          {
            v25 = &aXxxxxfffffyyyy[v23 - 428];
          }

          v24 = *v25;
        }

        v43 = v23;
        v57 = v24;
        v26 = *(v41 + 16) + 56 * a4;
        v28 = *(v26 + 32);
        v27 = *(v26 + 40);
        if (v28 == v27)
        {
          a5 = v40;
        }

        else
        {
          v29 = 0;
          do
          {
            v30 = *(*a2 + 8 * *v28);
            if ((a6 & 6) == 0 || ((v31 = (*(*v30 + 16))(v30), v31 <= 0x11) ? (v32 = ((1 << v31) & 0x24E83) == 0) : (v32 = 1), !v32))
            {
              if ((v28[24] & 1) == 0)
              {
                sub_299359338(v28 + 1, v30, 2, &v55);
                if ((*(*v30 + 96))(v30, &v55, a6, &v58 + 1, &v58))
                {
                  sub_2992A5E4C(&v46, &v55);
                  v33 = HIBYTE(v58);
                  v34 = v58;
                  sub_2992A5E4C(&v48, &v46);
                  LOBYTE(v50) = v33;
                  HIBYTE(v50) = v34;
                  v51[0] = *v28;
                  v52 = 0;
                  v53 = 0;
                  sub_2992B0BA8(&v52, &v48);
                  v54 = v50;
                  sub_29937087C((v20 + 88), v51);
                  sub_2992A5BA0(&v53);
                  v35 = v52;
                  v52 = 0;
                  if (v35)
                  {
                    MEMORY[0x29C29BFB0](v35, 0x1010C40E4C6A875);
                  }

                  sub_2992A5BA0(&v49);
                  v36 = v48;
                  v48 = 0;
                  if (v36)
                  {
                    MEMORY[0x29C29BFB0](v36, 0x1010C40E4C6A875);
                  }

                  sub_2992A5BA0(&v47);
                  v37 = v46;
                  v46 = 0;
                  if (v37)
                  {
                    MEMORY[0x29C29BFB0](v37, 0x1010C40E4C6A875);
                  }

                  v29 = 1;
                }

                sub_2992A5BA0(&v56);
                v38 = v55;
                v55 = 0;
                if (v38)
                {
                  MEMORY[0x29C29BFB0](v38, 0x1010C40E4C6A875);
                }
              }
            }

            v28 += 32;
          }

          while (v28 != v27);
          a5 = v40;
          v19 = v43;
          if (v29)
          {
            return v19;
          }
        }
      }

      LOWORD(v18) = *a5 + 1;
      *a5 = v18;
      if (v44 <= v18)
      {
        return 0xFFFFLL;
      }
    }
  }

  return v19;
}

void sub_299370E74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_2992AB338(va);
  sub_2992AB338((v13 - 104));
  _Unwind_Resume(a1);
}

const __CFArray *sub_299370EB4(uint64_t a1, CFIndex a2)
{
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x29EDB9000]);
  alloc = *MEMORY[0x29EDB8ED8];
  v5 = CFSetCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9030]);
  v62 = v5;
  v6 = sub_2993ACB1C(*(a1 + 8));
  v7 = v6;
  v61 = v6;
  v54 = *(a1 + 35) == 1 && CFStringGetLength(v6) > 0;
  ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(alloc, v7, @"'");
  cf = ArrayBySeparatingStrings;
  Count = CFArrayGetCount(ArrayBySeparatingStrings);
  *(a1 + 24) = 0;
  v9 = *(*(a1 + 8) + 16) - *(*(a1 + 8) + 8);
  if (v9)
  {
    v49 = v7;
    v55 = Count - 1;
    v59 = 0;
    v10 = *(a1 + 16);
    LODWORD(v7) = (v9 >> 3) - 1;
    v57 = a1;
    *(a1 + 24) = 1;
    *(v10 + 24) = -65536;
    *v10 = 0;
    *(v10 + 8) = (v9 >> 3);
    *(v10 + 16) = 0;
    v52 = v5;
    v53 = Mutable;
    v51 = a2;
    while (1)
    {
      if (CFArrayGetCount(Mutable) >= a2)
      {
LABEL_63:
        v7 = v49;
        goto LABEL_64;
      }

      v11 = v57[3];
      if (!v11)
      {
        break;
      }

      v12 = v57[2] + 56 * v11;
      v13 = *(v12 - 56);
      if (v11 == 1)
      {
        goto LABEL_11;
      }

      v14 = *(v12 - 112);
LABEL_12:
      v15 = sub_2993A2AF8(v57[1], v7, &v59, v13, v14, 1);
      if (v15)
      {
        v17 = v57[2];
        v16 = v57[3];
        v57[3] = v16 + 1;
        v18 = v17 + 56 * v16;
        *(v18 + 24) = -65536;
        *v18 = v15;
        *(v18 + 8) = v7;
        *(v18 + 16) = v59;
        if (v7 - (*(*v15 + 40))(v15) == -1)
        {
          theArray = CFArrayCreateMutable(alloc, 0, MEMORY[0x29EDB9000]);
          v19 = v57[3];
          v20 = v19 - 1;
          if (v19 == 1)
          {
            v5 = v52;
            Mutable = v53;
            a2 = v51;
            v36 = CFStringCreateByCombiningStrings(alloc, theArray, @" ");
            if (v54)
            {
              goto LABEL_44;
            }
          }

          else
          {
            v21 = 0;
            v22 = 56 * v19 - 56;
            do
            {
              v23 = *(v57[2] + v22);
              if (v23)
              {
                v24 = (*(*v23 + 64))(v23);
                v25 = (*(*v23 + 64))(v23);
                v26 = (*(*v23 + 64))(v23);
                v27 = (*(*v23 + 64))(v23) == 2;
                v28 = CFArrayCreateMutable(alloc, 0, MEMORY[0x29EDB9000]);
                v29 = v28;
                v30 = v24 == 5 || v25 == 6;
                v31 = v30;
                if (v30)
                {
                  if (v24 == 5)
                  {
                    v32 = CFSTR("(");
                  }

                  else
                  {
                    v32 = @"[";
                  }

                  CFArrayAppendValue(v28, v32);
                }

                v33 = @"Mixed";
                if (v26 != 7)
                {
                  v33 = (*(*v23 + 16))(v23, 1);
                }

                CFArrayAppendValue(v29, v33);
                if (v31)
                {
                  if (v24 == 5)
                  {
                    v34 = @"");
                  }

                  else
                  {
                    v34 = @"]";
                  }

                  CFArrayAppendValue(v29, v34);
                }

                v35 = CFStringCreateByCombiningStrings(alloc, v29, &stru_2A1F7E6E8);
                CFArrayAppendValue(theArray, v35);
                CFRelease(v33);
                CFRelease(v35);
                CFRelease(v29);
                v21 |= v27;
              }

              v22 -= 56;
              --v20;
            }

            while (v20);
            v5 = v52;
            Mutable = v53;
            a2 = v51;
            v36 = CFStringCreateByCombiningStrings(alloc, theArray, @" ");
            if (v54)
            {
              if (v21)
              {
                goto LABEL_61;
              }

LABEL_44:
              v39 = CFStringCreateArrayBySeparatingStrings(alloc, v36, @"'");
              v65 = v39;
              v40 = CFArrayCreateMutable(alloc, 0, MEMORY[0x29EDB9000]);
              v41 = 0;
              v64 = v40;
              while (v41 < CFArrayGetCount(v39))
              {
                ValueAtIndex = CFArrayGetValueAtIndex(v39, v41);
                MutableCopy = CFStringCreateMutableCopy(alloc, 0, ValueAtIndex);
                v44 = MutableCopy;
                v63 = MutableCopy;
                if (v41 >= v55)
                {
                  CFStringTrimWhitespace(MutableCopy);
                }

                else
                {
                  v66.length = CFStringGetLength(ValueAtIndex);
                  v66.location = 0;
                  CFStringFindAndReplace(v44, @" ", &stru_2A1F7E6E8, v66, 0);
                }

                CFArrayAppendValue(v40, v44);
                if (v44)
                {
                  CFRelease(v44);
                }

                ++v41;
              }

              v45 = CFStringCreateByCombiningStrings(alloc, v40, @"' ");
              v63 = v45;
              if (!CFSetContainsValue(v5, v45))
              {
                CFArrayAppendValue(Mutable, v45);
                CFSetAddValue(v5, v45);
              }

              if (v45)
              {
                CFRelease(v45);
              }

              if (v40)
              {
                CFRelease(v40);
              }

              if (v39)
              {
                CFRelease(v39);
              }

              goto LABEL_61;
            }
          }

          CFArrayAppendValue(Mutable, v36);
LABEL_61:
          CFRelease(v36);
          CFRelease(theArray);
        }

        v46 = v57[2] + 56 * v57[3];
        v47 = *(v46 - 48);
        LODWORD(v7) = v47 - (*(**(v46 - 56) + 40))(*(v46 - 56));
        v59 = 0;
        if (!v57[3])
        {
          goto LABEL_63;
        }
      }

      else
      {
        v37 = v57[3];
        v38 = v57[2] + 56 * v37;
        v7 = *(v38 - 48);
        v59 = *(v38 - 40) + 1;
        v57[3] = v37 - 1;
        if (v37 == 1)
        {
          goto LABEL_63;
        }
      }
    }

    v13 = 0;
LABEL_11:
    v14 = 0;
    goto LABEL_12;
  }

LABEL_64:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return Mutable;
}

void sub_29937151C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va1, a21);
  va_start(va, a21);
  v22 = va_arg(va1, const void *);
  sub_299219AB4(va, 0);
  sub_299229EC8(va1, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_2993715D8(uint64_t a1)
{
  sub_2992A5BA0((a1 + 16));
  result = *(a1 + 8);
  *(a1 + 8) = 0;
  if (result)
  {

    JUMPOUT(0x29C29BFB0);
  }

  return result;
}

uint64_t sub_299371638(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 32;
    sub_2993715D8(i - 32);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_299371688(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  *(a1 + 4) = sub_299277300(a2);
  *(a1 + 8) = a3;
  operator new();
}

void sub_299371730(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  *(v1 + 16) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29937176C(uint64_t a1)
{
  v2 = *(a1 + 88);
  *(a1 + 88) = 0;
  if (v2)
  {
    v3 = sub_2993B2378(v2);
    MEMORY[0x29C29BFB0](v3, 0x10B0C40A1109CE3);
  }

  v4 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return a1;
}

uint64_t sub_2993717E4(uint64_t result, unsigned int a2, int a3, uint64_t a4)
{
  if ((a2 & 0xA000) == 0)
  {
    if ((a2 & 0x10000) != 0)
    {
      *(result + 28) = 1;
    }

    else if (a4)
    {
      v4 = *(a4 + 68);
      *(result + 28) = v4;
      if (v4)
      {
        a2 |= 0x10000u;
      }
    }

    else
    {
      *(result + 28) = 0;
    }
  }

  v5 = a2 & 0x38000 | (((a2 >> 4) & 1) << 10) & 0xFFFFB7FE | (((a2 >> 13) & 1) << 14) | (((a2 >> 5) & 1) << 11) | (a2 >> 2) & 0x10 | (a2 >> 12) & 4 | (a2 >> 2) & 1 | (a2 >> 1) & 0x80000 | (a2 << 9) & 0x200000 | (a2 >> 1) & 0x400000;
  if (a3)
  {
    v5 |= 0x8000004u;
  }

  *(result + 24) = v5;
  return result;
}

void sub_299371890(uint64_t *a1, uint64_t *a2, void *a3, const void **a4, uint64_t *a5, int a6)
{
  v9 = a3[1];
  if (v9 > 1)
  {
    a6 = 1;
  }

  if (a1[6])
  {
    v11 = a6;
  }

  else
  {
    v11 = 0;
  }

  if (a5)
  {
    v48 = *a5;
  }

  else
  {
    v48 = 0;
  }

  if (v9 >= 1)
  {
    v12 = 0;
    v13 = 0;
    v49 = a2[1];
    v50 = *a2;
    v47 = *MEMORY[0x29EDB8ED8];
    v46 = *MEMORY[0x29EDB8EE8];
    v45 = v11;
    while (1)
    {
      v14 = *(*a3 + 2 * v13);
      v15 = v14 - 48;
      v16 = v14 - 48 + v12;
      if (v14 < 0x31 || v16 > v49)
      {
        break;
      }

      v18 = (v50 + 2 * v12);
      if (!v11)
      {
        goto LABEL_60;
      }

      if (v14 != 49 || v48 == 0)
      {
        goto LABEL_34;
      }

      if (*(v48 + 8) <= v12)
      {
        goto LABEL_34;
      }

      v20 = a1[5];
      v23 = *(v20 + 32);
      v21 = v20 + 32;
      v22 = v23;
      if (!v23)
      {
        goto LABEL_34;
      }

      v24 = *(v50 + 2 * v12);
      v25 = v21;
      do
      {
        v26 = *(v22 + 32);
        v27 = v26 >= v24;
        v28 = v26 < v24;
        if (v27)
        {
          v25 = v22;
        }

        v22 = *(v22 + 8 * v28);
      }

      while (v22);
      if (v25 == v21 || *(v25 + 32) > v24)
      {
        goto LABEL_34;
      }

      v29 = *(v48 + 24);
      if (!v29)
      {
        v29 = *(v48 + 16);
      }

      v30 = sub_2993A1488(*(v29 + 2 * v12), *v48);
      sub_29922E478(a1[5], v24, v30);
      CursorByAdvancingWithCharacters = LMLexiconGetCursorByAdvancingWithCharacters();
      if (!CursorByAdvancingWithCharacters)
      {
LABEL_34:
        CursorByAdvancingWithCharacters = LMLexiconGetCursorByAdvancingWithCharacters();
      }

      v32 = !CursorByAdvancingWithCharacters || *a1[6] == 0;
      if (v32 || (TokenID = LMLexiconCursorFirstTokenID()) == 0)
      {
LABEL_60:
        if (a1[7])
        {
          v34 = CFStringCreateWithCharactersNoCopy(v47, v18, v15, v46);
          TokenID = sub_29927B7AC(a1[7], v34);
          CFRelease(v34);
        }

        else
        {
          TokenID = 0;
        }
      }

      v36 = a4[1];
      v35 = a4[2];
      if (v36 >= v35)
      {
        v38 = *a4;
        v39 = v36 - *a4;
        v40 = v39 >> 2;
        v41 = (v39 >> 2) + 1;
        if (v41 >> 62)
        {
          sub_299212A8C();
        }

        v42 = v35 - v38;
        if (v42 >> 1 > v41)
        {
          v41 = v42 >> 1;
        }

        v27 = v42 >= 0x7FFFFFFFFFFFFFFCLL;
        v43 = 0x3FFFFFFFFFFFFFFFLL;
        if (!v27)
        {
          v43 = v41;
        }

        if (v43)
        {
          sub_2992F86B0(a4, v43);
        }

        *(4 * v40) = TokenID;
        v37 = (4 * v40 + 4);
        memcpy(0, v38, v39);
        v44 = *a4;
        *a4 = 0;
        a4[1] = v37;
        a4[2] = 0;
        if (v44)
        {
          operator delete(v44);
        }

        v11 = v45;
      }

      else
      {
        *v36 = TokenID;
        v37 = v36 + 4;
      }

      a4[1] = v37;
      ++v13;
      v12 = v16;
      if (v13 == v9)
      {
        return;
      }
    }

    a4[1] = *a4;
  }
}

uint64_t sub_299371B6C(uint64_t a1, unsigned __int16 **a2, const __CFString *a3)
{
  if (!*(a1 + 48))
  {
    return 0;
  }

  if (!a3 || a2[1] != 1)
  {
    if (LMLexiconGetCursorByAdvancingWithCharacters())
    {
      v5 = **(a1 + 48) == 0;
    }

    else
    {
      v5 = 1;
    }

    if (!v5)
    {

      return LMLexiconCursorFirstTokenID();
    }

    return 0;
  }

  sub_29922E478(*(a1 + 40), **a2, a3);
  if (LMLexiconGetCursorByAdvancingWithCharacters())
  {
    v4 = **(a1 + 48) == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return 0;
  }

  return LMLexiconCursorFirstTokenID();
}

void sub_299372258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29932E9B0(va);
  sub_29932C230(v3);
  _Unwind_Resume(a1);
}

void *sub_299372324(void *a1)
{
  *a1 = &unk_2A1F73F70;
  v2 = a1[16];
  if (v2)
  {
    _Block_release(v2);
  }

  return sub_29932C230(a1);
}

BOOL sub_29937239C(uint64_t a1)
{
  v2 = sub_29932C330(a1);
  if (v2)
  {
    v3 = (*(*a1 + 160))(a1, *(a1 + 40));
    if (v3)
    {
      v4 = v3;
      Count = CFArrayGetCount(v3);
      if (Count >= 1)
      {
        v6 = Count;
        for (i = 0; i != v6; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v4, i);
          sub_2992EED88(ValueAtIndex, v9, v10, v11);
        }
      }

      CFRelease(v4);
    }
  }

  return v2;
}

uint64_t sub_299372440(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  AnalysisString = MecabraCandidateGetAnalysisString(a2, a2, a3, a4);
  Surface = MecabraCandidateGetSurface(a2, v7, v8, v9);
  v11 = *(*a1 + 104);

  return v11(a1, AnalysisString, Surface);
}

uint64_t sub_2993724BC(uint64_t a1, uint64_t a2, const __CFString *a3)
{
  if (*(a1 + 8))
  {
    if (a2)
    {
      v3 = *(a1 + 128);
      if (v3)
      {
        if ((*(v3 + 16))())
        {
          v8[0] = 0;
          v8[1] = 0;
          v7 = v8;
          sub_2991C6CA8(&__p, off_2A145F3B8);
          sub_2992B7C70(&v7, a3);
        }
      }
    }
  }

  return 0;
}

void sub_29937261C(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_2A1461340, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1461340))
  {
    sub_2991C6CA8(&qword_2A1461350, off_2A145F3B0[0]);
    dword_2A1461368 = 0;
    word_2A146136C = 1;
    byte_2A146136E = 0;
    sub_2991C6CA8(qword_2A1461370, off_2A145F3B8);
    *(&dword_2A1461388 + 3) = 0;
    dword_2A1461388 = 0;
    __cxa_atexit(sub_29937359C, 0, &dword_29918C000);
    __cxa_guard_release(&qword_2A1461340);
  }

  v3 = 0uLL;
  v4 = 0;
  sub_299332338(&v3, &qword_2A1461350, qword_2A1461390, 2uLL);
  sub_29921EF84(a2);
  *a2 = v3;
  *(a2 + 16) = v4;
  v4 = 0;
  v3 = 0uLL;
  v5 = &v3;
  sub_29921EB1C(&v5);
}

void sub_299372730(_Unwind_Exception *a1)
{
  if (byte_2A1461367 < 0)
  {
    operator delete(qword_2A1461350);
  }

  __cxa_guard_abort(&qword_2A1461340);
  _Unwind_Resume(a1);
}

void sub_299372768(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      v5[0] = 0;
      v5[1] = 0;
      v4 = v5;
      v3 = *(a3 + 8);
      memset(&__p, 0, sizeof(__p));
      sub_299248D7C(&__p, off_2A145F3B0[0]);
      sub_2992B7C70(&v4, v3);
    }
  }
}

BOOL sub_299372860(void *a1, uint64_t a2)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*a1 + 208))(a1, a1[1], a2);
  }

  return v2 != 0;
}

void sub_2993728BC(void *a1, uint64_t a2)
{
  v4 = (*(*a2 + 24))(a2);
  v5 = (*(*a2 + 56))(a2);
  v6 = a1[16];
  if (v6)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v8 = (*(v6 + 16))();
    v9 = v8;
    v11[4] = v8;
    if (v8)
    {
      v10 = v4 == 0;
    }

    else
    {
      v10 = 1;
    }

    if (!v10)
    {
      if (CFStringGetLength(v8) >= 1 && CFStringGetLength(v4) >= 1)
      {
        sub_29933219C(v11, v9, v4, 1);
        v11[0] = &unk_2A1F747F8;
        (*(*a1 + 216))(a1, v11);
        sub_2993321FC(v11);
      }

      goto LABEL_15;
    }

    if (v8)
    {
LABEL_15:
      CFRelease(v9);
    }
  }
}

void sub_299372A10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_2993321FC(va);
  sub_299219AB4(va1, 0);
  _Unwind_Resume(a1);
}

void sub_299372BE4(_Unwind_Exception *a1)
{
  MEMORY[0x29C29BFB0](v2, 0x81C40B8603338);
  sub_299372324(v1);
  _Unwind_Resume(a1);
}

void *sub_299372C1C(void *a1)
{
  *a1 = &unk_2A1F74090;
  v2 = a1[17];
  if (v2)
  {
    _Block_release(v2);
  }

  return sub_299372324(a1);
}

void sub_299372C80(void *a1)
{
  sub_299372C1C(a1);

  JUMPOUT(0x29C29BFB0);
}

void sub_299372CC4(uint64_t *a1, uint64_t a2)
{
  if (!a1[1])
  {
    return;
  }

  v4 = (*(*a2 + 24))(a2);
  v5 = (*(*a2 + 56))(a2);
  v6 = a1[16];
  if (!v6 || v5 == 0)
  {
    return;
  }

  v8 = (*(v6 + 16))();
  v14 = v8;
  if (!v8)
  {
    return;
  }

  v9 = v8;
  if (((*(*a2 + 104))(a2) & 0x10000) != 0)
  {
    v11 = a1[17];
    if (!v11)
    {
      goto LABEL_12;
    }

    v12 = (*(*a2 + 24))(a2);
    v10 = (*(v11 + 16))(v11, v9, v12);
  }

  else
  {
    v10 = CFRetain(v9);
  }

  v11 = v10;
LABEL_12:
  CFRelease(v9);
  v15[2] = v11;
  if (v11 && v4)
  {
    if (CFStringGetLength(v11) >= 1 && CFStringGetLength(v4) >= 1)
    {
      v15[0] = 0;
      v15[1] = 0;
      v14 = v15;
      sub_2991C6CA8(&__p, off_2A145F3B0[0]);
      sub_2992B7C70(&v14, v11);
    }
  }

  else if (!v11)
  {
    return;
  }

  CFRelease(v11);
}

void sub_299372F68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, const void *a19)
{
  sub_299227884(&a16, a17);
  sub_299219AB4(&a19, 0);
  _Unwind_Resume(a1);
}

void sub_299372FC4(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_2A1461348, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1461348))
  {
    sub_2991C6CA8(qword_2A1461390, off_2A145F3B0[0]);
    dword_2A14613A8 = 0;
    word_2A14613AC = 1;
    byte_2A14613AE = 0;
    sub_2991C6CA8(qword_2A14613B0, off_2A145F3B8);
    *(&dword_2A14613C8 + 3) = 0;
    dword_2A14613C8 = 0;
    sub_2991C6CA8(qword_2A14613D0, off_2A145F3A0);
    dword_2A14613E8 = 1;
    word_2A14613EC = 0;
    byte_2A14613EE = 0;
    __cxa_atexit(sub_2993735E4, 0, &dword_29918C000);
    __cxa_guard_release(&qword_2A1461348);
  }

  v3 = 0uLL;
  v4 = 0;
  sub_299332338(&v3, qword_2A1461390, &qword_2A14613F0, 3uLL);
  sub_29921EF84(a2);
  *a2 = v3;
  *(a2 + 16) = v4;
  v4 = 0;
  v3 = 0uLL;
  v5 = &v3;
  sub_29921EB1C(&v5);
}

CFArrayRef sub_299373154(int a1, CFURLRef url)
{
  if (!url)
  {
    return 0;
  }

  values = sub_2992772AC(url, @"DynamicPhraseLexicon_zh_Hans_Wubixing.db");
  if (!values)
  {
    return 0;
  }

  v2 = CFArrayCreate(*MEMORY[0x29EDB8ED8], &values, 1, MEMORY[0x29EDB9000]);
  if (values)
  {
    CFRelease(values);
  }

  return v2;
}

void sub_2993731D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29920FE30(va, 0);
  _Unwind_Resume(a1);
}

void sub_2993731F4(void *a1)
{
  sub_299372324(a1);

  JUMPOUT(0x29C29BFB0);
}

void sub_299373264(void *a1)
{
  sub_299372324(a1);

  JUMPOUT(0x29C29BFB0);
}

void sub_2993732A8(void *a1)
{
  sub_299372324(a1);

  JUMPOUT(0x29C29BFB0);
}

void sub_2993732EC(void *a1)
{
  sub_299372324(a1);

  JUMPOUT(0x29C29BFB0);
}

void sub_299373330(void *a1)
{
  sub_299372324(a1);

  JUMPOUT(0x29C29BFB0);
}

void sub_299373378(void *a1)
{
  sub_2993321FC(a1);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_299373420(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F74830;
  a2[1] = v2;
  return result;
}

uint64_t sub_299373474(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F74890))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_299373550(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F74910))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29937359C()
{
  v0 = &byte_2A1461387;
  v1 = -64;
  v2 = &byte_2A1461387;
  do
  {
    v3 = *v2;
    v2 -= 32;
    if (v3 < 0)
    {
      operator delete(*(v0 - 23));
    }

    v0 = v2;
    v1 += 32;
  }

  while (v1);
}

void sub_2993735E4()
{
  v0 = &byte_2A14613E7;
  v1 = -96;
  v2 = &byte_2A14613E7;
  do
  {
    v3 = *v2;
    v2 -= 32;
    if (v3 < 0)
    {
      operator delete(*(v0 - 23));
    }

    v0 = v2;
    v1 += 32;
  }

  while (v1);
}

CFIndex sub_29937362C(CFIndex a1, CFStringRef theString, int a3)
{
  v3 = a1;
  if (theString)
  {
    v6 = 0;
    if (a3)
    {
      v7 = 0;
    }

    else
    {
      v7 = 4;
    }

    v8 = a1;
    if ((a3 & 1) == 0)
    {
      v8 = CFStringGetLength(theString) - a1;
      v6 = v3;
    }

    Predefined = CFCharacterSetGetPredefined(kCFCharacterSetWhitespace);
    v14.location = v6;
    v14.length = v8;
    CharacterFromSet = CFStringFindCharacterFromSet(theString, Predefined, v14, v7, &v13);
    length = v13.length;
    if (a3)
    {
      length = 0;
    }

    if (CharacterFromSet)
    {
      return length + v13.location;
    }
  }

  return v3;
}

void sub_2993736D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return;
  }

  if (*(a1 + 112) != 3)
  {
    return;
  }

  v6 = sub_2993243CC(a2);
  v23 = v6;
  v7 = *(a2 + 88);
  if (!(v6 | v7))
  {
    return;
  }

  v8 = v6;
  Mutable = CFStringCreateMutable(0, 0);
  v10 = Mutable;
  v22 = Mutable;
  if (v8)
  {
    CFStringAppend(Mutable, v8);
  }

  if (v7)
  {
    CFStringAppend(v10, v7);
  }

  if (!v8)
  {
    Length = 0;
    if (v7)
    {
      goto LABEL_10;
    }

LABEL_12:
    v12 = 0;
    goto LABEL_13;
  }

  Length = CFStringGetLength(v8);
  if (!v7)
  {
    goto LABEL_12;
  }

LABEL_10:
  v12 = CFStringGetLength(v7);
LABEL_13:
  v13 = *(a1 + 120);
  if (Length >= v13)
  {
    v14 = Length - v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = sub_29937362C(v14, v8, 0);
  if (v12 >= v13)
  {
    v16 = v13;
  }

  else
  {
    v16 = v12;
  }

  v24.length = Length - v15 + sub_29937362C(v16, v7, 1);
  v24.location = v15;
  v17 = CFStringCreateWithSubstring(0, v10, v24);
  v21 = v17;
  sub_299276BDC(v17, &__p);
  if (v8)
  {
    v18 = CFStringGetLength(v8);
  }

  else
  {
    v18 = 0;
  }

  sub_2992A2F00(a1, __p, (v20 - __p) >> 1, v18 - v15, a3);
  if (__p)
  {
    v20 = __p;
    operator delete(__p);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v8)
  {
    CFRelease(v8);
  }
}

void sub_299373880(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, const void *a12, const void *a13, const void *a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_299219AB4(&a12, 0);
  sub_29924A4BC(&a13, 0);
  sub_299219AB4(&a14, 0);
  _Unwind_Resume(a1);
}

void *sub_2993738E4(void *__dst, void *__src, unint64_t a3, uint64_t a4, int a5, __int16 a6, char a7, char a8, double a9)
{
  if (a3 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_299212A30();
  }

  if (a3 >= 0xB)
  {
    if ((a3 | 3) == 0xB)
    {
      v18 = 13;
    }

    else
    {
      v18 = (a3 | 3) + 1;
    }

    sub_299212A48(__dst, v18);
  }

  *(__dst + 23) = a3;
  if (a3)
  {
    memmove(__dst, __src, 2 * a3);
  }

  *(__dst + a3) = 0;
  *(__dst + 3) = a9;
  __dst[4] = a4;
  *(__dst + 10) = a5;
  *(__dst + 22) = a6;
  *(__dst + 46) = a7;
  *(__dst + 47) = a8;
  return __dst;
}

void sub_2993739CC(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_2A1F74930;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  if (a2 != result)
  {
    sub_29937416C(a2 + 8, *(result + 8), *(result + 16), 0xAAAAAAAAAAAAAAABLL * ((*(result + 16) - *(result + 8)) >> 3));
  }

  *(a2 + 32) = *(result + 32);
}

void sub_299373A60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  *v3 = v4;
  sub_299259FC8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_299373A7C(uint64_t a1)
{
  *a1 = &unk_2A1F74930;
  v3 = (a1 + 8);
  sub_299259FC8(&v3);
  return a1;
}

char *sub_299373B58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*(*(a1 + 8) + 24 * a2) + 48 * a3);
  if ((result[23] & 0x8000000000000000) != 0)
  {
    return *result;
  }

  return result;
}

uint64_t sub_299373B84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (*(*(a1 + 8) + 24 * a2) + 48 * a3);
  if (v3[40] > 4u || v3[41] == 255 || v3[42] == 255)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3[43] ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_299373BD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[4] = *MEMORY[0x29EDCA608];
  v5 = *(*(*(a1 + 8) + 24 * a2) + 48 * a3 + 40);
  v6[0] = &unk_2A1F749A8;
  v6[1] = a4;
  v6[3] = v6;
  sub_29935A274(&off_2A1A99FA8, &v5, v6);
  return sub_299375238(v6);
}

void sub_299373C8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_299375238(va);
  _Unwind_Resume(a1);
}

BOOL sub_299373CA0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 8);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - v5) >> 3) <= a2)
  {
    return 1;
  }

  v6 = (*(v5 + 24 * a2) + 48 * a3);
  v7 = (*(v5 + 24 * a4) + 48 * a5);
  v8 = *(v6 + 46);
  if (v8 != 255)
  {
    v9 = *(v7 + 46);
    if (v9 != 255 && v8 != v9 && *(v6 + 47) == *(v7 + 47))
    {
      return 0;
    }
  }

  if (v6[4] != 1)
  {
    return 1;
  }

  v11 = *(v6 + 23);
  if (v11 < 0)
  {
    if (v6[1] != 1)
    {
      return 1;
    }

    v12 = **v6;
  }

  else
  {
    if (v11 != 1)
    {
      return 1;
    }

    v12 = *v6;
  }

  if (v12 != 12387)
  {
    if (v12 == 12435)
    {
      v15 = v7[22];
      if (!v7[22])
      {
        if (*(v7 + 23) < 0)
        {
          v7 = *v7;
        }

        v15 = *v7;
      }

      if ((atomic_load_explicit(&qword_2A14613F8, memory_order_acquire) & 1) == 0)
      {
        v18 = v15;
        v17 = __cxa_guard_acquire(&qword_2A14613F8);
        v15 = v18;
        if (v17)
        {
          qword_2A14613F0 = L"'aeinouyxa";
          __cxa_guard_release(&qword_2A14613F8);
          v15 = v18;
        }
      }

      for (i = 0; i != 16; i += 2)
      {
        if (*(qword_2A14613F0 + i) == v15)
        {
          break;
        }
      }

      return i == 16;
    }

    return 1;
  }

  return *(v6 + 22) == v7[22];
}

void sub_299373E34(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    sub_299374948(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 24 * a2;
    while (v3 != v7)
    {
      v3 -= 3;
      v8 = v3;
      sub_29925A03C(&v8);
    }

    a1[1] = v7;
  }
}

uint64_t sub_299373EDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != a2)
  {
    sub_299374B14(&v9, a3, *(a1 + 8), a2);
    v6 = v5;
    v7 = *(a1 + 8);
    if (v7 != v5)
    {
      do
      {
        v7 -= 3;
        v10 = v7;
        sub_29925A03C(&v10);
      }

      while (v7 != v6);
    }

    *(a1 + 8) = v6;
  }

  return a2;
}

uint64_t sub_299373F60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 8);
  sub_2993752B8(v10, a3);
  v5 = v4 + 24 * a2;
  v7 = *v5;
  v6 = *(v5 + 8);
  sub_2993752B8(v11, v10);
  v8 = sub_299374C30(v7, v6, v11);
  sub_299374B88(v5, v8, *(v5 + 8));
  sub_299375350(v11);
  return sub_299375350(v10);
}

void sub_299374014(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_299375350(va1);
  sub_299375350(va);
  _Unwind_Resume(a1);
}

uint64_t sub_299374044(uint64_t a1)
{
  *a1 = &unk_2A1F74930;
  v3 = (a1 + 8);
  sub_299259FC8(&v3);
  return MEMORY[0x29C29BFB0](a1, 0x10A1C407F0BD61ELL);
}

void sub_2993740B0(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_299374114(a1, a2);
  }

  sub_2993740FC();
}

void sub_299374114(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_29919600C();
}

void sub_29937416C(uint64_t a1, __int128 **a2, __int128 **a3, unint64_t a4)
{
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) < a4)
  {
    sub_2992726D0(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      sub_2993740B0(a1, v10);
    }

    sub_2993740FC();
  }

  v11 = *(a1 + 8) - v8;
  if (0xAAAAAAAAAAAAAAABLL * (v11 >> 3) >= a4)
  {
    v12 = sub_299374590(a2, a3, v8);
    v13 = *(a1 + 8);
    while (v13 != v12)
    {
      v13 -= 3;
      v14 = v13;
      sub_29925A03C(&v14);
    }

    *(a1 + 8) = v12;
  }

  else
  {
    sub_299374590(a2, (a2 + v11), v8);
    *(a1 + 8) = sub_2993742D4(a1, (a2 + v11), a3, *(a1 + 8));
  }
}

uint64_t *sub_2993742D4(uint64_t a1, void *a2, void *a3, uint64_t *a4)
{
  v4 = a4;
  v8 = a4;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      sub_299374384(v4, *v6, v6[1], 0xAAAAAAAAAAAAAAABLL * ((v6[1] - *v6) >> 4));
      v6 += 3;
      v4 = v8 + 3;
      v8 += 3;
    }

    while (v6 != a3);
  }

  return v4;
}

uint64_t *sub_299374384(uint64_t *result, int a2, int a3, unint64_t a4)
{
  if (a4)
  {
    sub_29937440C(result, a4);
  }

  return result;
}

void sub_2993743EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_29925A03C(&a9);
  _Unwind_Resume(a1);
}

void sub_29937440C(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    sub_29925A258(a1, a2);
  }

  sub_299212A8C();
}

char *sub_299374458(uint64_t a1, __int128 *a2, __int128 *a3, char *__dst)
{
  v4 = __dst;
  v13 = __dst;
  v14 = __dst;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  v12 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        sub_29922C89C(v4, *v6, *(v6 + 1));
        v8 = v14;
      }

      else
      {
        v7 = *v6;
        *(v4 + 2) = *(v6 + 2);
        *v4 = v7;
        v8 = v4;
      }

      v9 = *(v6 + 24);
      *(v4 + 5) = *(v6 + 5);
      *(v4 + 24) = v9;
      v6 += 3;
      v4 = v8 + 48;
      v14 = v8 + 48;
    }

    while (v6 != a3);
  }

  v12 = 1;
  sub_29925A3AC(v11);
  return v4;
}

uint64_t sub_29937452C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 8);
    v4 = **(a1 + 16);
    while (v4 != v3)
    {
      v4 -= 3;
      v5 = v4;
      sub_29925A03C(&v5);
    }
  }

  return a1;
}

uint64_t *sub_299374590(__int128 **a1, __int128 **a2, uint64_t *a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      if (v5 != a3)
      {
        sub_299374604(a3, *v5, v5[1], 0xAAAAAAAAAAAAAAABLL * (v5[1] - *v5));
      }

      v5 += 3;
      a3 += 3;
    }

    while (v5 != a2);
  }

  return a3;
}

void sub_299374604(uint64_t *a1, __int128 *a2, __int128 *a3, unint64_t a4)
{
  v6 = a2;
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) < a4)
  {
    sub_2993747B8(a1);
    if (a4 <= 0x555555555555555)
    {
      v9 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
      {
        v10 = 0x555555555555555;
      }

      else
      {
        v10 = v9;
      }

      sub_29937440C(a1, v10);
    }

    sub_299212A8C();
  }

  v11 = a1[1];
  if (0xAAAAAAAAAAAAAAABLL * ((v11 - v8) >> 4) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        sub_2993747F8(v8, v6);
        v14 = *(v6 + 5);
        *(v8 + 24) = *(v6 + 24);
        *(v8 + 40) = v14;
        v6 += 3;
        v8 += 48;
      }

      while (v6 != a3);
      v11 = a1[1];
    }

    while (v11 != v8)
    {
      v15 = *(v11 - 25);
      v11 -= 6;
      if (v15 < 0)
      {
        operator delete(*v11);
      }
    }

    a1[1] = v8;
  }

  else
  {
    v12 = (v11 + a2 - v8);
    if (v11 != v8)
    {
      do
      {
        sub_2993747F8(v8, v6);
        v13 = *(v6 + 5);
        *(v8 + 24) = *(v6 + 24);
        *(v8 + 40) = v13;
        v6 += 3;
        v8 += 48;
      }

      while (v6 != v12);
      v11 = a1[1];
    }

    a1[1] = sub_299374458(a1, v12, a3, v11);
  }
}

void sub_2993747B8(uint64_t a1)
{
  if (*a1)
  {
    sub_29925A090(a1);
    operator delete(*a1);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

void **sub_2993747F8(void **result, void ***a2)
{
  if (result != a2)
  {
    if (*(result + 23) < 0)
    {
      v3 = a2[1];
      if (*(a2 + 23) >= 0)
      {
        v4 = *(a2 + 23);
      }

      else
      {
        a2 = *a2;
        v4 = v3;
      }

      return sub_2993748BC(result, a2, v4);
    }

    else if ((*(a2 + 23) & 0x80) != 0)
    {
      return sub_299374848(result, *a2, a2[1]);
    }

    else
    {
      v2 = *a2;
      result[2] = a2[2];
      *result = v2;
    }
  }

  return result;
}

_BYTE *sub_299374848(_BYTE *__dst, void *__src, unint64_t a3)
{
  v5 = a3 > 0xA;
  v6 = a3 - 10;
  if (v5)
  {
    sub_29922C6D8(__dst, 0xAuLL, v6, __dst[23] & 0x7F, 0, __dst[23] & 0x7F, a3, __src);
  }

  __dst[23] = a3;
  if (a3)
  {
    memmove(__dst, __src, 2 * a3);
  }

  *&__dst[2 * a3] = 0;
  return __dst;
}

void **sub_2993748BC(void **a1, void *__src, unint64_t a3)
{
  v5 = a1[2] & 0x7FFFFFFFFFFFFFFFLL;
  if (v5 <= a3)
  {
    sub_29922C6D8(a1, v5 - 1, a3 - v5 + 1, a1[1], 0, a1[1], a3, __src);
  }

  v6 = *a1;
  a1[1] = a3;
  if (a3)
  {
    memmove(v6, __src, 2 * a3);
  }

  *(v6 + a3) = 0;
  return a1;
}

void sub_299374948(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_2993740FC();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
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

    v18[4] = a1;
    if (v9)
    {
      sub_299374114(a1, v9);
    }

    v11 = 24 * v6;
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v13;
    v17 = *(a1 + 16);
    *(a1 + 16) = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    sub_299374AB4(v18);
  }
}

uint64_t sub_299374AB4(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v6 = v4;
    sub_29925A03C(&v6);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_299374B14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      sub_2993747B8(a4);
      *a4 = *v5;
      *(a4 + 16) = *(v5 + 16);
      *v5 = 0;
      *(v5 + 8) = 0;
      *(v5 + 16) = 0;
      v5 += 24;
      a4 += 24;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void **sub_299374B88(uint64_t a1, void **a2, void **a3)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *(a1 + 8);
    v7 = a2;
    if (a3 != v6)
    {
      do
      {
        sub_2993747F8(v7, v4);
        v8 = v4[5];
        *(v7 + 3) = *(v4 + 3);
        v7[5] = v8;
        v4 += 6;
        v7 += 6;
      }

      while (v4 != v6);
      v6 = *(a1 + 8);
    }

    while (v6 != v7)
    {
      v9 = *(v6 - 25);
      v6 -= 6;
      if (v9 < 0)
      {
        operator delete(*v6);
      }
    }

    *(a1 + 8) = v7;
  }

  return a2;
}

uint64_t sub_299374C30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  if (a1 != a2)
  {
    v3 = a1;
    while (1)
    {
      v7 = *(a3 + 24);
      if (!v7)
      {
LABEL_15:
        sub_2991A2240();
      }

      if ((*(*v7 + 48))(v7, v3))
      {
        break;
      }

      v3 += 48;
      if (v3 == a2)
      {
        v3 = a2;
        break;
      }
    }

    if (v3 != a2)
    {
      for (i = v3 + 48; i != a2; i += 48)
      {
        v9 = *(a3 + 24);
        if (!v9)
        {
          goto LABEL_15;
        }

        if (((*(*v9 + 48))(v9, i) & 1) == 0)
        {
          sub_2993747F8(v3, i);
          v10 = *(i + 40);
          *(v3 + 24) = *(i + 24);
          *(v3 + 40) = v10;
          v3 += 48;
        }
      }
    }
  }

  return v3;
}

char *sub_299374D28(void *a1, char *a2, __int128 **a3, void *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = a3;
  v10 = a1[1];
  v9 = a1[2];
  if ((0xAAAAAAAAAAAAAAABLL * ((v9 - v10) >> 3)) < a5)
  {
    v11 = *a1;
    v12 = a5 - 0x5555555555555555 * ((v10 - *a1) >> 3);
    if (v12 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_2993740FC();
    }

    v13 = &a2[-v11];
    v14 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v11) >> 3);
    if (2 * v14 > v12)
    {
      v12 = 2 * v14;
    }

    if (v14 >= 0x555555555555555)
    {
      v15 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v15 = v12;
    }

    v38 = a1;
    if (v15)
    {
      sub_299374114(a1, v15);
    }

    v23 = (8 * (v13 >> 3));
    v34 = 0;
    v35 = v23;
    v36 = v23;
    v37 = 0;
    v24 = &v23[3 * a5];
    v25 = 24 * a5;
    do
    {
      *v23 = 0;
      v23[1] = 0;
      v23[2] = 0;
      sub_299374384(v23, *v7, v7[1], 0xAAAAAAAAAAAAAAABLL * (v7[1] - *v7));
      v23 += 3;
      v7 += 3;
      v25 -= 24;
    }

    while (v25);
    v26 = v35;
    memcpy(v24, v5, a1[1] - v5);
    v27 = *a1;
    v28 = v24 + a1[1] - v5;
    a1[1] = v5;
    v29 = v5 - v27;
    v30 = v26 - (v5 - v27);
    memcpy(v30, v27, v29);
    v31 = *a1;
    *a1 = v30;
    a1[1] = v28;
    v32 = a1[2];
    a1[2] = v37;
    v36 = v31;
    v37 = v32;
    v34 = v31;
    v35 = v31;
    sub_299374AB4(&v34);
    return v26;
  }

  v16 = v10 - a2;
  if ((0xAAAAAAAAAAAAAAABLL * ((v10 - a2) >> 3)) >= a5)
  {
    v22 = 3 * a5;
    sub_299374FDC(a1, a2, a1[1], &a2[24 * a5]);
    v21 = &v7[v22];
    v20 = v7;
    goto LABEL_18;
  }

  v39 = a1[1];
  v40 = v10;
  v34 = a1;
  v35 = &v39;
  v36 = &v40;
  v18 = v10;
  LOBYTE(v37) = 0;
  if ((a3 + v16) != a4)
  {
    v18 = v10;
    v19 = (a3 + v16);
    do
    {
      *v18 = 0;
      v18[1] = 0;
      v18[2] = 0;
      sub_299374384(v18, *v19, v19[1], 0xAAAAAAAAAAAAAAABLL * ((v19[1] - *v19) >> 4));
      v19 += 3;
      v18 = (v40 + 24);
      v40 += 24;
    }

    while (v19 != a4);
  }

  a1[1] = v18;
  if (v16 >= 1)
  {
    sub_299374FDC(a1, v5, v10, &v5[24 * a5]);
    v20 = v7;
    v21 = (v7 + v16);
LABEL_18:
    sub_2993750A4(v20, v21, v5);
  }

  return v5;
}