void sub_1003BCADC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1003BCC14(va);
  _Unwind_Resume(a1);
}

void sub_1003BCAF0(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    operator new();
  }

  sub_100013B04();
}

void sub_1003BCB4C(uint64_t a1, void (***a2)(void, __n128), void (***a3)(void, __n128), uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    v8 = a2;
    do
    {
      v9 = sub_1003BBF40(a4 + v7, v8);
      v8 += 9;
      v7 += 72;
    }

    while (v8 != a3);
    if (v6 != a3)
    {
      v10 = v6;
      v11 = v6;
      do
      {
        v12 = *v11;
        v11 += 9;
        (*v12)(v6, v9);
        v10 += 9;
        v6 = v11;
      }

      while (v11 != a3);
    }
  }
}

void sub_1003BCBF8(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    sub_1004C9EBC(v1 + v2, v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003BCC14(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 72);
    *(a1 + 16) = i - 72;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1003BCC80(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 8;
      v7 = v4 - 8;
      v8 = v4 - 8;
      do
      {
        v9 = *v8;
        v8 -= 8;
        (*v9)(v7);
        v6 -= 8;
        v10 = v7 == v2;
        v7 = v8;
      }

      while (!v10);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_1003BCD40(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 6;
  v3 = v2 + 1;
  if ((v2 + 1) >> 58)
  {
    sub_100019B38();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 5 > v3)
  {
    v3 = v6 >> 5;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFC0)
  {
    v7 = 0x3FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v17 = a1;
  if (v7)
  {
    sub_1003BCE50(a1, v7);
  }

  v14 = 0;
  v15 = (v2 << 6);
  sub_1003BBC24(v2 << 6, a2);
  v16 = ((v2 << 6) + 64);
  v8 = a1[1];
  v9 = (v2 << 6) + *a1 - v8;
  sub_1003BCE98(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_1003BCF60(&v14);
  return v13;
}

void sub_1003BCE3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1003BCF60(va);
  _Unwind_Resume(a1);
}

void sub_1003BCE50(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    operator new();
  }

  sub_100013B04();
}

void sub_1003BCE98(uint64_t a1, void (***a2)(void, __n128), void (***a3)(void, __n128), uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    v8 = a2;
    do
    {
      v9 = sub_1003BBC24(a4 + v7, v8);
      v8 += 8;
      v7 += 64;
    }

    while (v8 != a3);
    if (v6 != a3)
    {
      v10 = v6;
      v11 = v6;
      do
      {
        v12 = *v11;
        v11 += 8;
        (*v12)(v6, v9);
        v10 += 8;
        v6 = v11;
      }

      while (v11 != a3);
    }
  }
}

void sub_1003BCF44(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    sub_1004C9F28(v1 + v2, v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003BCF60(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 64);
    *(a1 + 16) = i - 64;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1003BCFCC(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1003BD980(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1003BD020(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *v4 = *a2;
  sub_1003BBF40(v4 + 8, a2 + 8);
  sub_1003BBC24(v4 + 80, a2 + 80);
  sub_1003BBC24(v4 + 144, a2 + 144);
  sub_1003BC130(v4 + 208, a2 + 208);
  sub_1003BBDB4(v4 + 376, a2 + 376);
  sub_1003BBDB4(v4 + 488, a2 + 488);
  v5 = *(a2 + 600);
  *(v4 + 608) = *(a2 + 608);
  *(v4 + 600) = v5;
  *(a1 + 8) = v4 + 616;
}

void sub_1003BD0D8(_Unwind_Exception *a1)
{
  *v6 = off_1009991A0;
  *v5 = off_1009991A0;
  *v4 = off_1009991A0;
  *v3 = off_1009991A0;
  *v2 = off_1009991A0;
  *(v1 + 8) = v7;
  _Unwind_Resume(a1);
}

uint64_t sub_1003BD180(void *a1, uint64_t a2)
{
  v2 = 0x4FCACE213F2B3885 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x6A63BD81A98EF6)
  {
    sub_100019B38();
  }

  if (0x9F959C427E56710ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x9F959C427E56710ALL * ((a1[2] - *a1) >> 3);
  }

  if ((0x4FCACE213F2B3885 * ((a1[2] - *a1) >> 3)) >= 0x3531DEC0D4C77BLL)
  {
    v6 = 0x6A63BD81A98EF6;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    sub_1003BD3F4(a1, v6);
  }

  v15 = 0;
  v16 = 616 * v2;
  v17 = (616 * v2);
  v7 = 616 * v2;
  *v7 = *a2;
  sub_1003BBF40(616 * v2 + 8, a2 + 8);
  sub_1003BBC24(616 * v2 + 80, a2 + 80);
  sub_1003BBC24(616 * v2 + 144, a2 + 144);
  sub_1003BC130(616 * v2 + 208, a2 + 208);
  sub_1003BBDB4(616 * v2 + 376, a2 + 376);
  sub_1003BBDB4(616 * v2 + 488, a2 + 488);
  v8 = *(a2 + 600);
  *(v7 + 608) = *(a2 + 608);
  *(v7 + 600) = v8;
  *&v17 = v17 + 616;
  v9 = a1[1];
  v10 = v16 + *a1 - v9;
  sub_1003BD450(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_1003BD868(&v15);
  return v14;
}

void sub_1003BD32C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  *v11 = off_1009991A0;
  *v10 = off_1009991A0;
  *v9 = off_1009991A0;
  *v8 = off_1009991A0;
  *v7 = off_1009991A0;
  sub_1003BD868(va);
  _Unwind_Resume(a1);
}

void sub_1003BD3F4(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x6A63BD81A98EF7)
  {
    operator new();
  }

  sub_100013B04();
}

uint64_t sub_1003BD450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  v12 = 0;
  if (a2 == a3)
  {
    v12 = 1;
  }

  else
  {
    v7 = a2;
    do
    {
      sub_1003BD5E4(a1, a4, v7);
      v7 += 616;
      a4 = v14 + 616;
      v14 += 616;
    }

    while (v7 != a3);
    v12 = 1;
    if (a2 != a3)
    {
      v8 = 0;
      do
      {
        v9 = (a2 + v8);
        v9[61] = off_1009991A0;
        v9[47] = off_1009991A0;
        v9[26] = off_1009991A0;
        v9[18] = off_1009991A0;
        v9[10] = off_1009991A0;
        v9[1] = off_1009991A0;
        v8 += 616;
      }

      while (a2 + v8 != a3);
    }
  }

  return sub_1003BD738(v11);
}

void sub_1003BD5E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3 + 80;
  *a2 = *a3;
  v6 = a2 + 80;
  sub_1003BBF40(a2 + 8, a3 + 8);
  sub_1003BBC24(v6, v5);
  sub_1003BBC24(a2 + 144, a3 + 144);
  sub_1003BC130(a2 + 208, a3 + 208);
  sub_1003BBDB4(a2 + 376, a3 + 376);
  sub_1003BBDB4(a2 + 488, a3 + 488);
  v7 = *(a3 + 600);
  *(a2 + 608) = *(a3 + 608);
  *(a2 + 600) = v7;
}

void sub_1003BD698(_Unwind_Exception *a1)
{
  *v5 = off_1009991A0;
  *v4 = off_1009991A0;
  *v3 = off_1009991A0;
  *v2 = off_1009991A0;
  *v1 = off_1009991A0;
  _Unwind_Resume(a1);
}

uint64_t sub_1003BD738(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1003BD784(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void sub_1003BD784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 != a5)
  {
    v5 = 0;
    do
    {
      v6 = a3 + v5;
      *(v6 - 128) = off_1009991A0;
      *(v6 - 240) = off_1009991A0;
      *(a3 + v5 - 408) = off_1009991A0;
      *(a3 + v5 - 472) = off_1009991A0;
      *(a3 + v5 - 536) = off_1009991A0;
      *(a3 + v5 - 608) = off_1009991A0;
      v5 -= 616;
    }

    while (a3 + v5 != a5);
  }
}

uint64_t sub_1003BD868(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 != v2)
  {
    v4 = 0;
    do
    {
      v5 = v3 + v4;
      *(v5 - 128) = off_1009991A0;
      *(v5 - 240) = off_1009991A0;
      *(v3 + v4 - 408) = off_1009991A0;
      *(v3 + v4 - 472) = off_1009991A0;
      *(v3 + v4 - 536) = off_1009991A0;
      *(v3 + v4 - 608) = off_1009991A0;
      v4 -= 616;
    }

    while (v3 + v4 != v2);
    *(a1 + 16) = v3 + v4;
  }

  v6 = *a1;
  if (*a1)
  {
    operator delete(v6);
  }

  return a1;
}

uint64_t sub_1003BD980(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  if (v2 != a2)
  {
    v3 = 0;
    do
    {
      v4 = v2 + v3;
      *(v4 - 128) = off_1009991A0;
      *(v4 - 240) = off_1009991A0;
      *(v2 + v3 - 408) = off_1009991A0;
      *(v2 + v3 - 472) = off_1009991A0;
      *(v2 + v3 - 536) = off_1009991A0;
      *(v2 + v3 - 608) = off_1009991A0;
      v3 -= 616;
    }

    while (v2 + v3 != a2);
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_1003BDA6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  do
  {
    *a4 = *v5;
    sub_1003A8CFC(a4 + 8, v5 + 8);
    sub_1003A8CFC(a4 + 80, v5 + 80);
    sub_1003A8CFC(a4 + 144, v5 + 144);
    sub_1003A8CFC(a4 + 208, v5 + 208);
    sub_1003A8CFC(a4 + 376, v5 + 376);
    sub_1003A8CFC(a4 + 488, v5 + 488);
    v7 = *(v5 + 608);
    *(a4 + 600) = *(v5 + 600);
    *(a4 + 608) = v7;
    a4 += 616;
    v5 += 616;
  }

  while (v5 != v6);
  return v6;
}

double sub_1003BDB24(double *a1, double *a2, uint64_t a3, char a4, double result)
{
LABEL_1:
  v84 = a2 - 79;
  v85 = (a2 - 77);
  v83 = a2 - 156;
  v8 = a1;
  while (1)
  {
    a1 = v8;
    v9 = a2 - v8;
    v10 = 0x4FCACE213F2B3885 * (a2 - v8);
    if (v10 > 2)
    {
      break;
    }

    if (v10 < 2)
    {
      return result;
    }

    if (v10 == 2)
    {
      result = *(a2 - 2);
      if (result >= v8[75])
      {
        return result;
      }

LABEL_111:
      v67 = v8;
      goto LABEL_112;
    }

LABEL_9:
    if (v9 <= 14783)
    {
      if (a4)
      {
        if (v8 != a2)
        {
          v69 = v8 + 77;
          if (v8 + 77 != a2)
          {
            v70 = 0;
            v71 = v8;
            do
            {
              v72 = v69;
              result = v71[152];
              if (result < v71[75])
              {
                v89 = *v69;
                sub_1003BBF40(v91, (v71 + 78));
                sub_1003BBC24(v92, (v71 + 87));
                sub_1003BBC24(v93, (v71 + 95));
                sub_1003BC130(v94, (v71 + 103));
                sub_1003BBDB4(v95, (v71 + 124));
                sub_1003BBDB4(v96, (v71 + 138));
                v97 = v71[152];
                v98 = *(v71 + 306);
                v73 = v70;
                while (1)
                {
                  *(a1 + v73 + 616) = *(a1 + v73);
                  sub_1003A8CFC(a1 + v73 + 624, a1 + v73 + 8);
                  sub_1003A8CFC(a1 + v73 + 696, a1 + v73 + 80);
                  sub_1003A8CFC(a1 + v73 + 760, a1 + v73 + 144);
                  sub_1003A8CFC(a1 + v73 + 824, a1 + v73 + 208);
                  sub_1003A8CFC(a1 + v73 + 992, a1 + v73 + 376);
                  sub_1003A8CFC(a1 + v73 + 1104, a1 + v73 + 488);
                  v74 = (a1 + v73);
                  v74[152] = *(a1 + v73 + 600);
                  *(v74 + 306) = *(a1 + v73 + 608);
                  if (!v73)
                  {
                    break;
                  }

                  v73 -= 616;
                  if (v97 >= *(v74 - 2))
                  {
                    v75 = (a1 + v73 + 616);
                    goto LABEL_124;
                  }
                }

                v75 = a1;
LABEL_124:
                *v75 = v89;
                sub_1003A8CFC((v74 + 1), v91);
                sub_1003A8CFC((v74 + 10), v92);
                sub_1003A8CFC((v74 + 18), v93);
                sub_1003A8CFC((v74 + 26), v94);
                sub_1003A8CFC((v74 + 47), v95);
                *&result = sub_1003A8CFC((v74 + 61), v96).n128_u64[0];
                v76 = v97;
                *(v74 + 152) = v98;
                v74[75] = v76;
              }

              v69 = v72 + 616;
              v70 += 616;
              v71 = v72;
            }

            while (v72 + 616 != a2);
          }
        }
      }

      else if (v8 != a2)
      {
        v77 = v8 + 77;
        if (v8 + 77 != a2)
        {
          v78 = v8 - 2;
          do
          {
            v79 = v77;
            result = a1[152];
            if (result < a1[75])
            {
              v90 = *v77;
              sub_1003BBF40(v91, (a1 + 78));
              sub_1003BBC24(v92, (a1 + 87));
              sub_1003BBC24(v93, (a1 + 95));
              sub_1003BC130(v94, (a1 + 103));
              sub_1003BBDB4(v95, (a1 + 124));
              sub_1003BBDB4(v96, (a1 + 138));
              v97 = a1[152];
              v98 = *(a1 + 306);
              v80 = v78;
              do
              {
                *(v80 + 632) = *(v80 + 16);
                sub_1003A8CFC((v80 + 80), (v80 + 3));
                sub_1003A8CFC((v80 + 89), (v80 + 12));
                sub_1003A8CFC((v80 + 97), (v80 + 20));
                sub_1003A8CFC((v80 + 105), (v80 + 28));
                sub_1003A8CFC((v80 + 126), (v80 + 49));
                sub_1003A8CFC((v80 + 140), (v80 + 63));
                v80[154] = v80[77];
                *(v80 + 310) = *(v80 + 156);
                v81 = *v80;
                v80 -= 77;
              }

              while (v97 < v81);
              *(v80 + 632) = v90;
              sub_1003A8CFC((v80 + 80), v91);
              sub_1003A8CFC((v80 + 89), v92);
              sub_1003A8CFC((v80 + 97), v93);
              sub_1003A8CFC((v80 + 105), v94);
              sub_1003A8CFC((v80 + 126), v95);
              *&result = sub_1003A8CFC((v80 + 140), v96).n128_u64[0];
              v82 = v97;
              *(v80 + 310) = v98;
              v80[154] = v82;
            }

            v77 = v79 + 77;
            v78 += 77;
            a1 = v79;
          }

          while (v79 + 77 != a2);
        }
      }

      return result;
    }

    if (!a3)
    {
      sub_1003BE888(v8, a2, a2);
      return result;
    }

    v11 = v10 >> 1;
    v12 = &v8[77 * (v10 >> 1)];
    v13 = *(a2 - 2);
    if (v9 >= 0x13401)
    {
      v14 = v12[75];
      if (v14 >= a1[75])
      {
        if (v13 < v14)
        {
          sub_1003BF2A4(v12, v85);
          if (v12[75] < a1[75])
          {
            v15 = a1;
            v16 = v12;
            goto LABEL_25;
          }
        }
      }

      else
      {
        v15 = a1;
        if (v13 < v14)
        {
          goto LABEL_16;
        }

        sub_1003BF2A4(a1, v12);
        if (*(a2 - 2) < v12[75])
        {
          v15 = v12;
LABEL_16:
          v16 = (a2 - 77);
LABEL_25:
          sub_1003BF2A4(v15, v16);
        }
      }

      v20 = &a1[77 * v11];
      v21 = v20 - 77;
      v22 = *(v20 - 2);
      v23 = *v84;
      if (v22 >= a1[152])
      {
        if (v23 < v22)
        {
          sub_1003BF2A4(v21, a2 - 1232);
          if (v21[75] < a1[152])
          {
            v24 = (a1 + 77);
            v25 = v21;
            goto LABEL_37;
          }
        }
      }

      else
      {
        v24 = (a1 + 77);
        if (v23 < v22)
        {
          goto LABEL_30;
        }

        sub_1003BF2A4(v24, v21);
        if (*v84 < v21[75])
        {
          v24 = v21;
LABEL_30:
          v25 = (a2 - 154);
LABEL_37:
          sub_1003BF2A4(v24, v25);
        }
      }

      v26 = &a1[77 * v11];
      v27 = v26[152];
      v28 = *v83;
      if (v27 >= a1[229])
      {
        if (v28 < v27)
        {
          sub_1003BF2A4(v26 + 616, a2 - 1848);
          if (v26[152] < a1[229])
          {
            v29 = (a1 + 154);
            v30 = (v26 + 77);
            goto LABEL_46;
          }
        }
      }

      else
      {
        v29 = (a1 + 154);
        if (v28 < v27)
        {
          goto LABEL_42;
        }

        sub_1003BF2A4(v29, v26 + 616);
        if (*v83 < v26[152])
        {
          v29 = (v26 + 77);
LABEL_42:
          v30 = (a2 - 231);
LABEL_46:
          sub_1003BF2A4(v29, v30);
        }
      }

      v31 = v12[75];
      v32 = v26[152];
      if (v31 >= v21[75])
      {
        if (v32 < v31)
        {
          sub_1003BF2A4(v12, v26 + 616);
          if (v12[75] < v21[75])
          {
            v34 = v21;
            v33 = v12;
            goto LABEL_55;
          }
        }
      }

      else
      {
        if (v32 < v31)
        {
          v33 = (v26 + 77);
          v34 = v21;
          goto LABEL_55;
        }

        sub_1003BF2A4(v21, v12);
        if (v26[152] < v12[75])
        {
          v33 = (v26 + 77);
          v34 = v12;
LABEL_55:
          sub_1003BF2A4(v34, v33);
        }
      }

      v18 = a1;
      v19 = v12;
      goto LABEL_57;
    }

    v17 = a1[75];
    if (v17 >= v12[75])
    {
      if (v13 >= v17)
      {
        goto LABEL_58;
      }

      sub_1003BF2A4(a1, v85);
      if (a1[75] >= v12[75])
      {
        goto LABEL_58;
      }

      v18 = v12;
      v19 = a1;
    }

    else
    {
      v18 = v12;
      if (v13 >= v17)
      {
        sub_1003BF2A4(v12, a1);
        if (*(a2 - 2) >= a1[75])
        {
          goto LABEL_58;
        }

        v18 = a1;
      }

      v19 = a2 - 77;
    }

LABEL_57:
    sub_1003BF2A4(v18, v19);
LABEL_58:
    --a3;
    if ((a4 & 1) != 0 || *(a1 - 2) < a1[75])
    {
      v87 = *a1;
      sub_1003BBF40(v91, (a1 + 1));
      sub_1003BBC24(v92, (a1 + 10));
      sub_1003BBC24(v93, (a1 + 18));
      sub_1003BC130(v94, (a1 + 26));
      sub_1003BBDB4(v95, (a1 + 47));
      sub_1003BBDB4(v96, (a1 + 61));
      v35 = 0;
      v36 = a1[75];
      v98 = *(a1 + 152);
      v97 = v36;
      do
      {
        v37 = a1[v35 + 152];
        v35 += 77;
      }

      while (v37 < v97);
      v38 = &a1[v35];
      v39 = a2;
      if (v35 == 77)
      {
        v42 = a2;
        while (v38 < v42)
        {
          v40 = v42 - 77;
          v43 = *(v42 - 2);
          v42 -= 77;
          if (v43 < v97)
          {
            goto LABEL_70;
          }
        }

        v40 = v42;
      }

      else
      {
        do
        {
          v40 = v39 - 77;
          v41 = *(v39 - 2);
          v39 -= 77;
        }

        while (v41 >= v97);
      }

LABEL_70:
      v8 = v38;
      if (v38 < v40)
      {
        v44 = v40;
        do
        {
          sub_1003BF2A4(v8, v44);
          do
          {
            v45 = v8[152];
            v8 += 77;
          }

          while (v45 < v97);
          do
          {
            v46 = *(v44 - 2);
            v44 -= 616;
          }

          while (v46 >= v97);
        }

        while (v8 < v44);
      }

      v47 = v8 - 77;
      if (v8 - 77 != a1)
      {
        *a1 = *v47;
        sub_1003A8CFC((a1 + 1), (v8 - 76));
        sub_1003A8CFC((a1 + 10), (v8 - 67));
        sub_1003A8CFC((a1 + 18), (v8 - 59));
        sub_1003A8CFC((a1 + 26), (v8 - 51));
        sub_1003A8CFC((a1 + 47), (v8 - 30));
        sub_1003A8CFC((a1 + 61), (v8 - 16));
        v48 = *(v8 - 2);
        *(a1 + 152) = *(v8 - 2);
        *(a1 + 75) = v48;
      }

      *v47 = v87;
      sub_1003A8CFC((v8 - 76), v91);
      sub_1003A8CFC((v8 - 67), v92);
      sub_1003A8CFC((v8 - 59), v93);
      sub_1003A8CFC((v8 - 51), v94);
      sub_1003A8CFC((v8 - 30), v95);
      *&result = sub_1003A8CFC((v8 - 16), v96).n128_u64[0];
      v49 = v97;
      *(v8 - 2) = v98;
      *(v8 - 2) = v49;
      if (v38 < v40)
      {
        goto LABEL_81;
      }

      v50 = sub_1003BEE8C(a1, v8 - 77);
      if (sub_1003BEE8C(v8, a2))
      {
        a2 = v8 - 77;
        if (!v50)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v50)
      {
LABEL_81:
        result = sub_1003BDB24(a1, v8 - 77, a3, a4 & 1, result);
        a4 = 0;
      }
    }

    else
    {
      v88 = *a1;
      sub_1003BBF40(v91, (a1 + 1));
      sub_1003BBC24(v92, (a1 + 10));
      sub_1003BBC24(v93, (a1 + 18));
      sub_1003BC130(v94, (a1 + 26));
      sub_1003BBDB4(v95, (a1 + 47));
      sub_1003BBDB4(v96, (a1 + 61));
      v51 = a1[75];
      v98 = *(a1 + 152);
      v97 = v51;
      if (v51 >= *(a2 - 2))
      {
        v54 = a1 + 77;
        do
        {
          v8 = v54;
          if (v54 >= a2)
          {
            break;
          }

          v55 = v54[75];
          v54 += 77;
        }

        while (v97 >= v55);
      }

      else
      {
        v52 = a1;
        do
        {
          v8 = v52 + 77;
          v53 = v52[152];
          v52 += 77;
        }

        while (v97 >= v53);
      }

      v56 = a2;
      if (v8 < a2)
      {
        v57 = a2;
        do
        {
          v56 = (v57 - 77);
          v58 = *(v57 - 2);
          v57 -= 77;
        }

        while (v97 < v58);
      }

      while (v8 < v56)
      {
        sub_1003BF2A4(v8, v56);
        do
        {
          v59 = v8[152];
          v8 += 77;
        }

        while (v97 >= v59);
        do
        {
          v60 = *(v56 - 2);
          v56 -= 616;
        }

        while (v97 < v60);
      }

      v61 = v8 - 77;
      if (v8 - 77 != a1)
      {
        *a1 = *v61;
        sub_1003A8CFC((a1 + 1), (v8 - 76));
        sub_1003A8CFC((a1 + 10), (v8 - 67));
        sub_1003A8CFC((a1 + 18), (v8 - 59));
        sub_1003A8CFC((a1 + 26), (v8 - 51));
        sub_1003A8CFC((a1 + 47), (v8 - 30));
        sub_1003A8CFC((a1 + 61), (v8 - 16));
        v62 = *(v8 - 2);
        *(a1 + 152) = *(v8 - 2);
        *(a1 + 75) = v62;
      }

      *v61 = v88;
      sub_1003A8CFC((v8 - 76), v91);
      sub_1003A8CFC((v8 - 67), v92);
      sub_1003A8CFC((v8 - 59), v93);
      sub_1003A8CFC((v8 - 51), v94);
      sub_1003A8CFC((v8 - 30), v95);
      *&result = sub_1003A8CFC((v8 - 16), v96).n128_u64[0];
      a4 = 0;
      v63 = v97;
      *(v8 - 2) = v98;
      *(v8 - 2) = v63;
    }
  }

  if (v10 != 3)
  {
    if (v10 == 4)
    {
      sub_1003BE770(v8, (v8 + 77), (v8 + 154), v85);
      return result;
    }

    if (v10 == 5)
    {
      sub_1003BE770(v8, (v8 + 77), (v8 + 154), (v8 + 231));
      result = *(a2 - 2);
      if (result < v8[306])
      {
        sub_1003BF2A4(v8 + 1848, v85);
        result = v8[306];
        if (result < v8[229])
        {
          sub_1003BF2A4(v8 + 1232, v8 + 1848);
          result = v8[229];
          if (result < v8[152])
          {
            v64 = (v8 + 77);
            v65 = (v8 + 154);
            goto LABEL_130;
          }
        }
      }

      return result;
    }

    goto LABEL_9;
  }

  result = v8[152];
  v66 = *(a2 - 2);
  if (result < v8[75])
  {
    if (v66 < result)
    {
      goto LABEL_111;
    }

    sub_1003BF2A4(v8, v8 + 616);
    result = *(a2 - 2);
    if (result >= v8[152])
    {
      return result;
    }

    v67 = (v8 + 77);
LABEL_112:
    v68 = (a2 - 77);
LABEL_113:
    sub_1003BF2A4(v67, v68);
    return result;
  }

  if (v66 < result)
  {
    v64 = (v8 + 77);
    v65 = (a2 - 77);
LABEL_130:
    sub_1003BF2A4(v64, v65);
    result = v8[152];
    if (result < v8[75])
    {
      v68 = (v8 + 77);
      v67 = v8;
      goto LABEL_113;
    }
  }

  return result;
}

void sub_1003BE740(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_1003BA114(va);
  _Unwind_Resume(a1);
}

void sub_1003BE770(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = result;
  v8 = *(a2 + 600);
  v9 = *(a3 + 600);
  if (v8 >= *(result + 600))
  {
    if (v9 < v8)
    {
      sub_1003BF2A4(a2, a3);
      if (*(a2 + 600) < *(v7 + 600))
      {
        result = v7;
        v10 = a2;
        goto LABEL_9;
      }
    }
  }

  else
  {
    if (v9 < v8)
    {
LABEL_5:
      v10 = a3;
LABEL_9:
      sub_1003BF2A4(result, v10);
      goto LABEL_10;
    }

    sub_1003BF2A4(result, a2);
    if (*(a3 + 600) < *(a2 + 600))
    {
      result = a2;
      goto LABEL_5;
    }
  }

LABEL_10:
  if (*(a4 + 600) < *(a3 + 600))
  {
    sub_1003BF2A4(a3, a4);
    if (*(a3 + 600) < *(a2 + 600))
    {
      sub_1003BF2A4(a2, a3);
      if (*(a2 + 600) < *(v7 + 600))
      {

        sub_1003BF2A4(v7, a2);
      }
    }
  }
}

void sub_1003BE888(double *a1, double *a2, double *a3)
{
  if (a1 != a2)
  {
    v4 = a2;
    v5 = a1;
    v6 = a2 - a1;
    v7 = 0x4FCACE213F2B3885 * (a2 - a1);
    if (a2 - a1 >= 617)
    {
      v8 = (v7 - 2) >> 1;
      v9 = v8 + 1;
      v10 = &a1[77 * v8];
      do
      {
        sub_1003BF428(v5, v7, v10);
        v10 -= 77;
        --v9;
      }

      while (v9);
    }

    if (v4 != a3)
    {
      v11 = v4;
      do
      {
        if (v11[75] < *(v5 + 75))
        {
          sub_1003BF2A4(v11, v5);
          sub_1003BF428(v5, v7, v5);
        }

        v11 += 77;
      }

      while (v11 != a3);
    }

    if (v6 >= 617)
    {
      v12 = 0x4FCACE213F2B3885 * (v6 >> 3);
      v40 = v5;
      v39 = v5 + 600;
      do
      {
        v13 = v4;
        v43 = *v5;
        sub_1003BBF40(v44, (v5 + 8));
        sub_1003BBC24(v45, (v5 + 80));
        sub_1003BBC24(v46, (v5 + 144));
        sub_1003BC130(v47, (v5 + 208));
        sub_1003BBDB4(v48, (v5 + 376));
        sub_1003BBDB4(v49, (v5 + 488));
        v14 = 0;
        v50 = *v39;
        v51 = *(v39 + 2);
        v15 = v5;
        do
        {
          v16 = &v15[616 * v14];
          v17 = v16 + 616;
          if (2 * v14 + 2 >= v12)
          {
            v14 = (2 * v14) | 1;
          }

          else
          {
            v18 = *(v16 + 152);
            v19 = *(v16 + 229);
            v20 = v16 + 1232;
            if (v18 >= v19)
            {
              v14 = (2 * v14) | 1;
            }

            else
            {
              v17 = v20;
              v14 = 2 * v14 + 2;
            }
          }

          *v15 = *v17;
          sub_1003A8CFC((v15 + 8), (v17 + 8));
          sub_1003A8CFC((v15 + 80), (v17 + 80));
          sub_1003A8CFC((v15 + 144), (v17 + 144));
          sub_1003A8CFC((v15 + 208), (v17 + 208));
          sub_1003A8CFC((v15 + 376), (v17 + 376));
          sub_1003A8CFC((v15 + 488), (v17 + 488));
          v21 = *(v17 + 75);
          *(v15 + 152) = *(v17 + 152);
          *(v15 + 75) = v21;
          v15 = v17;
        }

        while (v14 <= ((v12 - 2) >> 1));
        v41 = (v17 + 600);
        v42 = v13 - 77;
        if (v17 == (v13 - 77))
        {
          *v17 = v43;
          sub_1003A8CFC((v17 + 8), v44);
          sub_1003A8CFC((v17 + 80), v45);
          sub_1003A8CFC((v17 + 144), v46);
          sub_1003A8CFC((v17 + 208), v47);
          sub_1003A8CFC((v17 + 376), v48);
          sub_1003A8CFC((v17 + 488), v49);
          v37 = v50;
          *(v17 + 152) = v51;
          *v41 = v37;
          v5 = v40;
        }

        else
        {
          *v17 = *(v13 - 616);
          v22 = (v13 - 76);
          sub_1003A8CFC((v17 + 8), (v13 - 76));
          v23 = (v13 - 67);
          sub_1003A8CFC((v17 + 80), (v13 - 67));
          v24 = (v13 - 59);
          sub_1003A8CFC((v17 + 144), (v13 - 59));
          v25 = (v13 - 51);
          sub_1003A8CFC((v17 + 208), (v13 - 51));
          v26 = (v13 - 30);
          sub_1003A8CFC((v17 + 376), (v13 - 30));
          v27 = (v13 - 16);
          sub_1003A8CFC((v17 + 488), (v13 - 16));
          v29 = *(v13 - 2);
          v28 = v13 - 2;
          *(v17 + 152) = *(v28 + 2);
          *v41 = v29;
          *v42 = v43;
          sub_1003A8CFC(v22, v44);
          sub_1003A8CFC(v23, v45);
          sub_1003A8CFC(v24, v46);
          sub_1003A8CFC(v25, v47);
          sub_1003A8CFC(v26, v48);
          sub_1003A8CFC(v27, v49);
          v5 = v40;
          *v28 = v50;
          *(v28 + 2) = v51;
          v30 = v17 - v40 + 616;
          if (v30 >= 617)
          {
            v31 = (0x4FCACE213F2B3885 * (v30 >> 3) - 2) >> 1;
            v32 = &v40[616 * v31];
            if (*(v32 + 75) < *v41)
            {
              v52 = *v17;
              sub_1003BBF40(v53, (v17 + 8));
              sub_1003BBC24(v54, (v17 + 80));
              sub_1003BBC24(v55, (v17 + 144));
              sub_1003BC130(v56, (v17 + 208));
              sub_1003BBDB4(v57, (v17 + 376));
              sub_1003BBDB4(v58, (v17 + 488));
              v33 = *v41;
              v60 = *(v17 + 152);
              v59 = v33;
              v5 = v40;
              do
              {
                v34 = v32;
                v35 = (v32 + 8);
                *v17 = *v32;
                sub_1003A8CFC((v17 + 8), (v32 + 8));
                sub_1003A8CFC((v17 + 80), (v32 + 80));
                sub_1003A8CFC((v17 + 144), (v32 + 144));
                sub_1003A8CFC((v17 + 208), (v32 + 208));
                sub_1003A8CFC((v17 + 376), (v32 + 376));
                sub_1003A8CFC((v17 + 488), (v32 + 488));
                v36 = *(v32 + 75);
                *(v17 + 152) = *(v32 + 152);
                *(v17 + 75) = v36;
                if (!v31)
                {
                  break;
                }

                v31 = (v31 - 1) >> 1;
                v32 = &v40[616 * v31];
                v17 = v34;
              }

              while (*(v32 + 75) < v59);
              *v34 = v52;
              sub_1003A8CFC(v35, v53);
              sub_1003A8CFC((v34 + 80), v54);
              sub_1003A8CFC((v34 + 144), v55);
              sub_1003A8CFC((v34 + 208), v56);
              sub_1003A8CFC((v34 + 376), v57);
              sub_1003A8CFC((v34 + 488), v58);
              *(v34 + 75) = v59;
              *(v34 + 152) = v60;
            }
          }
        }

        v38 = v12-- <= 2;
        v4 = v42;
      }

      while (!v38);
    }
  }
}

void sub_1003BEE60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_1003BA114(&STACK[0x2A0]);
  sub_1003BA114(va);
  _Unwind_Resume(a1);
}

BOOL sub_1003BEE8C(double *a1, double *a2)
{
  v3 = a1;
  v4 = 0x4FCACE213F2B3885 * (a2 - a1);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v8 = a1[152];
        v9 = *(a2 - 2);
        if (v8 < a1[75])
        {
          if (v9 >= v8)
          {
            sub_1003BF2A4(a1, a1 + 616);
            if (*(a2 - 2) >= v3[152])
            {
              return 1;
            }

            a1 = v3 + 77;
          }

          v5 = (a2 - 77);
          goto LABEL_31;
        }

        if (v9 >= v8)
        {
          return 1;
        }

        v6 = (a1 + 77);
        v7 = (a2 - 77);
        break;
      case 4:
        sub_1003BE770(a1, (a1 + 77), (a1 + 154), (a2 - 77));
        return 1;
      case 5:
        sub_1003BE770(a1, (a1 + 77), (a1 + 154), (a1 + 231));
        if (*(a2 - 2) >= v3[306])
        {
          return 1;
        }

        sub_1003BF2A4(v3 + 1848, a2 - 616);
        if (v3[306] >= v3[229])
        {
          return 1;
        }

        sub_1003BF2A4(v3 + 1232, v3 + 1848);
        if (v3[229] >= v3[152])
        {
          return 1;
        }

        v6 = (v3 + 77);
        v7 = (v3 + 154);
        break;
      default:
        goto LABEL_16;
    }

    sub_1003BF2A4(v6, v7);
    if (v3[152] < v3[75])
    {
      v5 = (v3 + 77);
      goto LABEL_24;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    if (*(a2 - 2) < a1[75])
    {
      v5 = (a2 - 77);
LABEL_24:
      a1 = v3;
LABEL_31:
      sub_1003BF2A4(a1, v5);
      return 1;
    }

    return 1;
  }

LABEL_16:
  v10 = a1 + 154;
  v11 = a1[152];
  v12 = a1[229];
  if (v11 < a1[75])
  {
    if (v12 >= v11)
    {
      sub_1003BF2A4(a1, a1 + 616);
      if (v3[229] >= v3[152])
      {
        goto LABEL_36;
      }

      a1 = v3 + 77;
    }

    v13 = (v3 + 154);
    goto LABEL_35;
  }

  if (v12 < v11)
  {
    sub_1003BF2A4(a1 + 616, a1 + 1232);
    if (v3[152] < v3[75])
    {
      v13 = (v3 + 77);
      a1 = v3;
LABEL_35:
      sub_1003BF2A4(a1, v13);
    }
  }

LABEL_36:
  v14 = v3 + 231;
  if (v3 + 231 == a2)
  {
    return 1;
  }

  v15 = 0;
  v16 = 0;
  while (1)
  {
    if (v14[75] < v10[75])
    {
      v21 = *v14;
      sub_1003BBF40(v22, (v14 + 1));
      sub_1003BBC24(v23, (v14 + 10));
      sub_1003BBC24(v24, (v14 + 18));
      sub_1003BC130(v25, (v14 + 26));
      sub_1003BBDB4(v26, (v14 + 47));
      sub_1003BBDB4(v27, (v14 + 61));
      v28 = v14[75];
      v29 = *(v14 + 152);
      v17 = v15;
      while (1)
      {
        *(v3 + v17 + 1848) = *(v3 + v17 + 1232);
        sub_1003A8CFC(v3 + v17 + 1856, v3 + v17 + 1240);
        sub_1003A8CFC(v3 + v17 + 1928, v3 + v17 + 1312);
        sub_1003A8CFC(v3 + v17 + 1992, v3 + v17 + 1376);
        sub_1003A8CFC(v3 + v17 + 2056, v3 + v17 + 1440);
        sub_1003A8CFC(v3 + v17 + 2224, v3 + v17 + 1608);
        sub_1003A8CFC(v3 + v17 + 2336, v3 + v17 + 1720);
        v18 = (v3 + v17);
        v18[306] = *(v3 + v17 + 1832);
        *(v18 + 614) = *(v3 + v17 + 1840);
        if (v17 == -1232)
        {
          break;
        }

        v17 -= 616;
        if (v28 >= v18[152])
        {
          v19 = (v3 + v17 + 1848);
          goto LABEL_44;
        }
      }

      v19 = v3;
LABEL_44:
      *v19 = v21;
      sub_1003A8CFC((v18 + 155), v22);
      sub_1003A8CFC((v18 + 164), v23);
      sub_1003A8CFC((v18 + 172), v24);
      sub_1003A8CFC((v18 + 180), v25);
      sub_1003A8CFC((v18 + 201), v26);
      sub_1003A8CFC((v18 + 215), v27);
      v18[229] = v28;
      *(v18 + 460) = v29;
      if (++v16 == 8)
      {
        return v14 + 77 == a2;
      }
    }

    v10 = v14;
    v15 += 616;
    v14 += 77;
    if (v14 == a2)
    {
      return 1;
    }
  }
}

void sub_1003BF28C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1003BA114(va);
  _Unwind_Resume(a1);
}

void sub_1003BF2A4(char *a1, char *a2)
{
  v5 = *a1;
  sub_1003BBF40(v6, (a1 + 8));
  sub_1003BBC24(v7, (a1 + 80));
  sub_1003BBC24(v8, (a1 + 144));
  sub_1003BC130(v9, (a1 + 208));
  sub_1003BBDB4(v10, (a1 + 376));
  sub_1003BBDB4(v11, (a1 + 488));
  v12 = *(a1 + 75);
  v13 = *(a1 + 152);
  *a1 = *a2;
  sub_1003A8CFC((a1 + 8), (a2 + 8));
  sub_1003A8CFC((a1 + 80), (a2 + 80));
  sub_1003A8CFC((a1 + 144), (a2 + 144));
  sub_1003A8CFC((a1 + 208), (a2 + 208));
  sub_1003A8CFC((a1 + 376), (a2 + 376));
  sub_1003A8CFC((a1 + 488), (a2 + 488));
  v4 = *(a2 + 75);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 75) = v4;
  *a2 = v5;
  sub_1003A8CFC((a2 + 8), v6);
  sub_1003A8CFC((a2 + 80), v7);
  sub_1003A8CFC((a2 + 144), v8);
  sub_1003A8CFC((a2 + 208), v9);
  sub_1003A8CFC((a2 + 376), v10);
  sub_1003A8CFC((a2 + 488), v11);
  *(a2 + 75) = v12;
  *(a2 + 152) = v13;
}

void sub_1003BF414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1003BA114(va);
  _Unwind_Resume(a1);
}

void sub_1003BF428(uint64_t a1, uint64_t a2, double *a3)
{
  v3 = a2 - 2;
  if (a2 >= 2)
  {
    v4 = a3;
    v6 = v3 >> 1;
    if ((v3 >> 1) >= 0x4FCACE213F2B3885 * ((a3 - a1) >> 3))
    {
      v8 = (0x9F959C427E56710ALL * ((a3 - a1) >> 3)) | 1;
      v9 = a1 + 616 * v8;
      if ((0x9F959C427E56710ALL * ((a3 - a1) >> 3) + 2) < a2 && *(v9 + 600) < *(v9 + 1216))
      {
        v9 += 616;
        v8 = 0x9F959C427E56710ALL * ((a3 - a1) >> 3) + 2;
      }

      if (*(v9 + 600) >= a3[75])
      {
        v16 = *a3;
        sub_1003BBF40(v17, (a3 + 1));
        sub_1003BBC24(v18, (v4 + 10));
        sub_1003BBC24(v19, (v4 + 18));
        sub_1003BC130(v20, (v4 + 26));
        sub_1003BBDB4(v21, (v4 + 47));
        sub_1003BBDB4(v22, (v4 + 61));
        v23 = v4[75];
        v24 = *(v4 + 152);
        do
        {
          v10 = v9;
          v11 = v9 + 8;
          *v4 = *v9;
          sub_1003A8CFC((v4 + 1), v9 + 8);
          sub_1003A8CFC((v4 + 10), v9 + 80);
          sub_1003A8CFC((v4 + 18), v9 + 144);
          sub_1003A8CFC((v4 + 26), v9 + 208);
          sub_1003A8CFC((v4 + 47), v9 + 376);
          sub_1003A8CFC((v4 + 61), v9 + 488);
          v12 = *(v9 + 600);
          *(v4 + 152) = *(v9 + 608);
          *(v4 + 75) = v12;
          if (v6 < v8)
          {
            break;
          }

          v13 = 2 * v8;
          v8 = (2 * v8) | 1;
          v9 = a1 + 616 * v8;
          v14 = v13 + 2;
          if (v14 < a2 && *(v9 + 600) < *(v9 + 1216))
          {
            v9 += 616;
            v8 = v14;
          }

          v4 = v10;
        }

        while (*(v9 + 600) >= v23);
        *v10 = v16;
        sub_1003A8CFC(v11, v17);
        sub_1003A8CFC(v10 + 80, v18);
        sub_1003A8CFC(v10 + 144, v19);
        sub_1003A8CFC(v10 + 208, v20);
        sub_1003A8CFC(v10 + 376, v21);
        sub_1003A8CFC(v10 + 488, v22);
        v15 = v23;
        *(v10 + 608) = v24;
        *(v10 + 600) = v15;
      }
    }
  }
}

void sub_1003BF68C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1003BA114(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1003BF6A4(uint64_t *a1, uint64_t a2)
{
  v2 = 0x4FCACE213F2B3885 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x6A63BD81A98EF6)
  {
    sub_100019B38();
  }

  if (0x9F959C427E56710ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x9F959C427E56710ALL * ((a1[2] - *a1) >> 3);
  }

  if ((0x4FCACE213F2B3885 * ((a1[2] - *a1) >> 3)) >= 0x3531DEC0D4C77BLL)
  {
    v6 = 0x6A63BD81A98EF6;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_1003BD3F4(a1, v6);
  }

  v13 = 0;
  v14 = 616 * v2;
  sub_1003BD5E4(a1, 616 * v2, a2);
  v15 = (616 * v2 + 616);
  v7 = a1[1];
  v8 = 616 * v2 + *a1 - v7;
  sub_1003BD450(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_1003BD868(&v13);
  return v12;
}

void sub_1003BF7DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1003BD868(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1003BF7F0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  if (v2 != a2)
  {
    v3 = 0;
    do
    {
      v4 = v2 + v3;
      *(v4 - 64) = off_1009991A0;
      *(v4 - 128) = off_1009991A0;
      *(v4 - 256) = off_1009991A0;
      *(v2 + v3 - 424) = off_1009991A0;
      *(v2 + v3 - 488) = off_1009991A0;
      *(v2 + v3 - 560) = off_1009991A0;
      v3 -= 560;
    }

    while (v2 + v3 != a2);
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_1003BF8DC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double *a6, int *a7, uint64_t a8, uint64_t a9)
{
  v9 = 0xAF8AF8AF8AF8AF8BLL * ((a1[1] - *a1) >> 4);
  v10 = v9 + 1;
  if (v9 + 1 > 0x75075075075075)
  {
    sub_100019B38();
  }

  if (0x5F15F15F15F15F16 * ((a1[2] - *a1) >> 4) > v10)
  {
    v10 = 0x5F15F15F15F15F16 * ((a1[2] - *a1) >> 4);
  }

  if (0xAF8AF8AF8AF8AF8BLL * ((a1[2] - *a1) >> 4) >= 0x3A83A83A83A83ALL)
  {
    v13 = 0x75075075075075;
  }

  else
  {
    v13 = v10;
  }

  v24 = a1;
  if (v13)
  {
    sub_1003BFBCC(a1, v13);
  }

  v21 = 0;
  v22 = 560 * v9;
  v23 = 560 * v9;
  sub_1003BFA74(560 * v9, a2, a3, a4, a5, *a7, a8, a9, *a6);
  *&v23 = 560 * v9 + 560;
  v14 = a1[1];
  v15 = 560 * v9 + *a1 - v14;
  sub_1003BFC28(a1, *a1, v14, v15, v16);
  v17 = *a1;
  *a1 = v15;
  v18 = a1[2];
  v20 = v23;
  *(a1 + 1) = v23;
  *&v23 = v17;
  *(&v23 + 1) = v18;
  v21 = v17;
  v22 = v17;
  sub_1003C0004(&v21);
  return v20;
}

void sub_1003BFA60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1003C0004(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1003BFA74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, double a9)
{
  sub_1003BBF40(a1, a2);
  sub_1003BBC24(v17 + 72, a3);
  sub_1003BC130(a1 + 136, a4);
  sub_1003BBDB4(a1 + 304, a5);
  *(a1 + 416) = a9;
  *(a1 + 424) = a6;
  sub_1003BBC24(a1 + 432, a7);
  sub_1003BBC24(a1 + 496, a8);
  return a1;
}

void sub_1003BFB2C(_Unwind_Exception *a1)
{
  *v5 = off_1009991A0;
  *v4 = off_1009991A0;
  *v3 = off_1009991A0;
  *v2 = off_1009991A0;
  *v1 = off_1009991A0;
  _Unwind_Resume(a1);
}

void sub_1003BFBCC(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x75075075075076)
  {
    operator new();
  }

  sub_100013B04();
}

uint64_t sub_1003BFC28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  v15 = a4;
  v16 = a4;
  v13[0] = a1;
  v13[1] = &v15;
  v13[2] = &v16;
  v14 = 0;
  if (a2 == a3)
  {
    v14 = 1;
  }

  else
  {
    v5 = a4;
    v8 = a2;
    do
    {
      sub_1003BBF40(v5, v8);
      sub_1003BBC24(v5 + 72, v8 + 72);
      sub_1003BC130(v5 + 136, v8 + 136);
      sub_1003BBDB4(v5 + 304, v8 + 304);
      v9 = *(v8 + 416);
      *(v5 + 424) = *(v8 + 424);
      *(v5 + 416) = v9;
      sub_1003BBC24(v5 + 432, v8 + 432);
      sub_1003BBC24(v5 + 496, v8 + 496);
      v8 += 560;
      v5 = v16 + 560;
      v16 += 560;
    }

    while (v8 != a3);
    v14 = 1;
    if (a2 != a3)
    {
      v10 = 0;
      do
      {
        v11 = (a2 + v10);
        v11[62] = off_1009991A0;
        v11[54] = off_1009991A0;
        v11[38] = off_1009991A0;
        v11[17] = off_1009991A0;
        v11[9] = off_1009991A0;
        *v11 = off_1009991A0;
        v10 += 560;
      }

      while (a2 + v10 != a3);
    }
  }

  return sub_1003BFED4(v13);
}

uint64_t sub_1003BFED4(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1003BFF20(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void sub_1003BFF20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 != a5)
  {
    v5 = 0;
    do
    {
      v6 = a3 + v5;
      *(v6 - 64) = off_1009991A0;
      *(v6 - 128) = off_1009991A0;
      *(v6 - 256) = off_1009991A0;
      *(a3 + v5 - 424) = off_1009991A0;
      *(a3 + v5 - 488) = off_1009991A0;
      *(a3 + v5 - 560) = off_1009991A0;
      v5 -= 560;
    }

    while (a3 + v5 != a5);
  }
}

uint64_t sub_1003C0004(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 != v2)
  {
    v4 = 0;
    do
    {
      v5 = v3 + v4;
      *(v5 - 64) = off_1009991A0;
      *(v5 - 128) = off_1009991A0;
      *(v5 - 256) = off_1009991A0;
      *(v3 + v4 - 424) = off_1009991A0;
      *(v3 + v4 - 488) = off_1009991A0;
      *(v3 + v4 - 560) = off_1009991A0;
      v4 -= 560;
    }

    while (v3 + v4 != v2);
    *(a1 + 16) = v3 + v4;
  }

  v6 = *a1;
  if (*a1)
  {
    operator delete(v6);
  }

  return a1;
}

void sub_1003C01D0(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = v1[1];
    if (v3 != v2)
    {
      v4 = v3 - 144;
      do
      {
        *(v3 - 9) = off_1009991A0;
        *(v3 - 18) = off_1009991A0;
        v4 -= 152;
        v3 -= 152;
      }

      while (v3 != v2);
    }

    v1[1] = v2;
    operator delete(v2);
  }
}

void sub_1003C0248(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1AF286BCA1AF287)
  {
    operator new();
  }

  sub_100013B04();
}

void sub_1003C02A4(uint64_t result, void *a2, void *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v8 = 0;
    v9 = a2;
    do
    {
      sub_1003C0384(result, (a4 + v8), v9);
      v9 += 19;
      v8 += 152;
    }

    while (v9 != a3);
    if (v6 != a3)
    {
      v10 = v6 + 80;
      do
      {
        *(v6 + 80) = off_1009991A0;
        *(v6 + 8) = off_1009991A0;
        v6 += 152;
        v10 += 152;
      }

      while (v6 != a3);
    }
  }
}

void sub_1003C0368(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1004C9F94();
  }

  _Unwind_Resume(exception_object);
}

double sub_1003C0384(uint64_t a1, void *a2, void *a3)
{
  v3 = a3 + 10;
  *a2 = *a3;
  v4 = a2 + 10;
  sub_1003C03F4((a2 + 1), (a3 + 1));
  *&result = sub_1003BBF40(v4, v3).n128_u64[0];
  return result;
}

__n128 sub_1003C03F4(uint64_t a1, uint64_t a2)
{
  result.n128_u64[0] = 0x400000001;
  *(a1 + 24) = 0x400000001;
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_1009A95C8;
  if (a1 == a2)
  {
    v16 = "this != &(A)";
    v17 = 603;
LABEL_21:
    v18 = "cnmatrix.h";
    v19 = "CNMatrix";
LABEL_22:
    __assert_rtn(v19, v18, v17, v16);
  }

  v3 = *(a2 + 8);
  if (v3 > 1)
  {
    v16 = "this->max_num_rows_ >= num_rows";
    v17 = 422;
LABEL_18:
    v18 = "cnmatrixbase.h";
    v19 = "SetMatrixSize";
    goto LABEL_22;
  }

  v4 = *(a2 + 12);
  if (v4 >= 5)
  {
    v16 = "this->max_num_cols_ >= num_cols";
    v17 = 423;
    goto LABEL_18;
  }

  *(a1 + 8) = v3;
  *(a1 + 12) = v4;
  v5 = v4 * v3;
  *(a1 + 16) = v5;
  *(a1 + 20) = v3;
  v6 = (a1 + 40);
  *(a1 + 32) = a1 + 40;
  if (*(a2 + 8) > 1u)
  {
    v16 = "this->max_num_rows_ >= A.num_rows_";
    v17 = 616;
    goto LABEL_21;
  }

  if (*(a2 + 12) > 4u)
  {
    v16 = "this->max_num_cols_ >= A.num_cols_";
    v17 = 617;
    goto LABEL_21;
  }

  v7 = *(a2 + 16);
  if (v7 > 3)
  {
    v10 = (v7 - 2);
    v11 = *(a2 + 32);
    v12 = (v6 + 8 * v10);
    v13 = (v7 - 1) >> 1;
    v14 = v11;
    do
    {
      v15 = *v14++;
      *v6++ = v15;
      --v13;
    }

    while (v13);
    result = *(v11 + 8 * v10);
    *v12 = result;
  }

  else if (v5)
  {
    v8 = *(a2 + 32);
    do
    {
      v9 = *v8++;
      result.n128_u64[0] = v9;
      *v6 = v9;
      v6 = (v6 + 8);
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_1003C0584(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 != v2)
  {
    v4 = v3 - 144;
    do
    {
      *(v3 - 72) = off_1009991A0;
      *(v3 - 144) = off_1009991A0;
      v3 -= 152;
      v4 -= 152;
    }

    while (v3 != v2);
    *(a1 + 16) = v3;
  }

  v5 = *a1;
  if (*a1)
  {
    operator delete(v5);
  }

  return a1;
}

float64x2_t sub_1003C07A0(uint64_t a1, uint64_t a2, double a3)
{
  if (a1 == a2)
  {
    sub_1004C9FE4();
  }

  sub_1003A8C00(a2, *(a1 + 8), *(a1 + 12));
  v6 = *(a2 + 16);
  if (v6 > 3)
  {
    v10 = *(a1 + 32);
    v11 = *(a2 + 32);
    v12 = (v10 + 8 * (v6 - 2));
    v13 = (v11 + 8 * (v6 - 2));
    v14 = (v6 - 1) >> 1;
    do
    {
      v15 = *v10++;
      *v11++ = vmulq_n_f64(v15, a3);
      --v14;
    }

    while (v14);
    result = vmulq_n_f64(*v12, a3);
    *v13 = result;
  }

  else if (v6 >= 1)
  {
    v7 = *(a1 + 32);
    v8 = *(a2 + 32);
    do
    {
      v9 = *v7++;
      result.f64[0] = v9 * a3;
      *v8++ = v9 * a3;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t sub_1003C0860(uint64_t *a1, double *a2, uint64_t a3, uint64_t a4)
{
  v4 = 0x86BCA1AF286BCA1BLL * ((a1[1] - *a1) >> 3);
  v5 = v4 + 1;
  if (v4 + 1 > 0x1AF286BCA1AF286)
  {
    sub_100019B38();
  }

  if (0xD79435E50D79436 * ((a1[2] - *a1) >> 3) > v5)
  {
    v5 = 0xD79435E50D79436 * ((a1[2] - *a1) >> 3);
  }

  if (0x86BCA1AF286BCA1BLL * ((a1[2] - *a1) >> 3) >= 0xD79435E50D7943)
  {
    v8 = 0x1AF286BCA1AF286;
  }

  else
  {
    v8 = v5;
  }

  v18 = a1;
  if (v8)
  {
    sub_1003C0248(a1, v8);
  }

  v15 = 0;
  v16 = 152 * v4;
  v17 = 152 * v4;
  sub_1003C09C0((152 * v4), a3, a4, *a2);
  *&v17 = 152 * v4 + 152;
  v9 = a1[1];
  v10 = 152 * v4 + *a1 - v9;
  sub_1003C02A4(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_1003C0584(&v15);
  return v14;
}

void sub_1003C09AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1003C0584(va);
  _Unwind_Resume(a1);
}

double *sub_1003C09C0(double *a1, uint64_t a2, uint64_t a3, double a4)
{
  *a1 = a4;
  v6 = a1 + 10;
  sub_1003C03F4((a1 + 1), a2);
  sub_1003BBF40(v6, a3);
  return a1;
}

void sub_1003C0A30(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 7;
      v7 = v4 - 7;
      v8 = v4 - 7;
      do
      {
        v9 = *v8;
        v8 -= 7;
        (*v9)(v7);
        v6 -= 7;
        v10 = v7 == v2;
        v7 = v8;
      }

      while (!v10);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_1003C0AF0(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  sub_100013B04();
}

void sub_1003C0B4C(uint64_t a1, uint64_t (***a2)(void), uint64_t (***a3)(void), uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    v8 = a2;
    do
    {
      v9 = sub_1003C0C14(a4 + v7, v8);
      v8 += 7;
      v7 += 56;
    }

    while (v8 != a3);
    if (v6 != a3)
    {
      v10 = v6;
      v11 = v6;
      do
      {
        v12 = *v11;
        v11 += 7;
        (*v12)(v6, v9);
        v10 += 7;
        v6 = v11;
      }

      while (v11 != a3);
    }
  }
}

void sub_1003C0BF8(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    sub_1004CA010(v1 + v2, v1);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_1003C0C14(uint64_t a1, uint64_t a2)
{
  result.n128_u64[0] = 0x100000002;
  *(a1 + 24) = 0x100000002;
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_1009A9730;
  if (a1 == a2)
  {
    v16 = "this != &(A)";
    v17 = 603;
LABEL_21:
    v18 = "cnmatrix.h";
    v19 = "CNMatrix";
LABEL_22:
    __assert_rtn(v19, v18, v17, v16);
  }

  v3 = *(a2 + 8);
  if (v3 > 2)
  {
    v16 = "this->max_num_rows_ >= num_rows";
    v17 = 422;
LABEL_18:
    v18 = "cnmatrixbase.h";
    v19 = "SetMatrixSize";
    goto LABEL_22;
  }

  v4 = *(a2 + 12);
  if (v4 >= 2)
  {
    v16 = "this->max_num_cols_ >= num_cols";
    v17 = 423;
    goto LABEL_18;
  }

  *(a1 + 8) = v3;
  *(a1 + 12) = v4;
  v5 = v4 * v3;
  *(a1 + 16) = v5;
  *(a1 + 20) = v3;
  v6 = (a1 + 40);
  *(a1 + 32) = a1 + 40;
  if (*(a2 + 8) > 2u)
  {
    v16 = "this->max_num_rows_ >= A.num_rows_";
    v17 = 616;
    goto LABEL_21;
  }

  if (*(a2 + 12) > 1u)
  {
    v16 = "this->max_num_cols_ >= A.num_cols_";
    v17 = 617;
    goto LABEL_21;
  }

  v7 = *(a2 + 16);
  if (v7 > 3)
  {
    v10 = (v7 - 2);
    v11 = *(a2 + 32);
    v12 = (v6 + 8 * v10);
    v13 = (v7 - 1) >> 1;
    v14 = v11;
    do
    {
      v15 = *v14++;
      *v6++ = v15;
      --v13;
    }

    while (v13);
    result = *(v11 + 8 * v10);
    *v12 = result;
  }

  else if (v5)
  {
    v8 = *(a2 + 32);
    do
    {
      v9 = *v8++;
      result.n128_u64[0] = v9;
      *v6 = v9;
      v6 = (v6 + 8);
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_1003C0E04(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 56);
    *(a1 + 16) = i - 56;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1003C0E70(uint64_t a1, uint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x492492492492492)
  {
    sub_100019B38();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *a1) >> 3)) >= 0x249249249249249)
  {
    v6 = 0x492492492492492;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_1003C0AF0(a1, v6);
  }

  v13 = 0;
  v14 = 56 * v2;
  sub_1003C0C14(56 * v2, a2);
  v15 = (56 * v2 + 56);
  v7 = *(a1 + 8);
  v8 = 56 * v2 + *a1 - v7;
  sub_1003C0B4C(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_1003C0E04(&v13);
  return v12;
}

void sub_1003C0FA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1003C0E04(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1003C106C(uint64_t result, unsigned int a2, unsigned int a3)
{
  *(result + 24) = 0x200000002;
  *(result + 32) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = off_1009A97C0;
  if (a2 > 2)
  {
    v3 = "this->max_num_rows_ >= num_rows";
    v4 = 422;
    goto LABEL_6;
  }

  if (a3 >= 3)
  {
    v3 = "this->max_num_cols_ >= num_cols";
    v4 = 423;
LABEL_6:
    __assert_rtn("SetMatrixSize", "cnmatrixbase.h", v4, v3);
  }

  *(result + 8) = a2;
  *(result + 12) = a3;
  *(result + 16) = a3 * a2;
  *(result + 20) = a2;
  *(result + 32) = result + 40;
  return result;
}

uint64_t sub_1003C1194(uint64_t result, unsigned int a2, unsigned int a3)
{
  *(result + 24) = 0x200000001;
  *(result + 32) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = off_1009A9808;
  if (a2 > 1)
  {
    v3 = "this->max_num_rows_ >= num_rows";
    v4 = 422;
    goto LABEL_6;
  }

  if (a3 >= 3)
  {
    v3 = "this->max_num_cols_ >= num_cols";
    v4 = 423;
LABEL_6:
    __assert_rtn("SetMatrixSize", "cnmatrixbase.h", v4, v3);
  }

  *(result + 8) = a2;
  *(result + 12) = a3;
  *(result + 16) = a3 * a2;
  *(result + 20) = a2;
  *(result + 32) = result + 40;
  return result;
}

double sub_1003C12C0(_DWORD *a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _DWORD *a7, _DWORD *a8, uint64_t a9)
{
  if (a1 == a2)
  {
    sub_1004CA96C();
  }

  if (a1 == a3)
  {
    sub_1004CA940();
  }

  if (a1 == a4)
  {
    sub_1004CA914();
  }

  if (a1 == a5)
  {
    sub_1004CA8E8();
  }

  if (a1 == a6)
  {
    sub_1004CA8BC();
  }

  if (a1 == a7)
  {
    sub_1004CA890();
  }

  if (a1 == a8)
  {
    sub_1004CA864();
  }

  if (a1 == a9)
  {
    sub_1004CA838();
  }

  if (a2 == a3)
  {
    sub_1004CA80C();
  }

  if (a2 == a4)
  {
    sub_1004CA7E0();
  }

  if (a2 == a5)
  {
    sub_1004CA7B4();
  }

  if (a2 == a6)
  {
    sub_1004CA788();
  }

  if (a2 == a7)
  {
    sub_1004CA75C();
  }

  if (a2 == a8)
  {
    sub_1004CA730();
  }

  if (a2 == a9)
  {
    sub_1004CA704();
  }

  if (a3 == a4)
  {
    sub_1004CA6D8();
  }

  if (a3 == a5)
  {
    sub_1004CA6AC();
  }

  if (a3 == a6)
  {
    sub_1004CA680();
  }

  if (a3 == a7)
  {
    sub_1004CA654();
  }

  if (a3 == a8)
  {
    sub_1004CA628();
  }

  if (a3 == a9)
  {
    sub_1004CA5FC();
  }

  if (a4 == a5)
  {
    sub_1004CA5D0();
  }

  if (a4 == a6)
  {
    sub_1004CA5A4();
  }

  if (a4 == a7)
  {
    sub_1004CA578();
  }

  if (a4 == a8)
  {
    sub_1004CA54C();
  }

  if (a4 == a9)
  {
    sub_1004CA520();
  }

  if (a5 == a6)
  {
    sub_1004CA4F4();
  }

  if (a5 == a7)
  {
    sub_1004CA4C8();
  }

  if (a5 == a8)
  {
    sub_1004CA49C();
  }

  if (a5 == a9)
  {
    sub_1004CA470();
  }

  if (a6 == a7)
  {
    sub_1004CA444();
  }

  if (a6 == a8)
  {
    sub_1004CA418();
  }

  if (a6 == a9)
  {
    sub_1004CA3EC();
  }

  if (a7 == a8)
  {
    sub_1004CA3C0();
  }

  if (a7 == a9)
  {
    sub_1004CA394();
  }

  if (a8 == a9)
  {
    sub_1004CA368();
  }

  v16 = a1[2];
  if (v16 != a1[3])
  {
    sub_1004CA07C();
  }

  v17 = a7[6];
  if (a7[7] * v17 < v16)
  {
    sub_1004CA33C();
  }

  v18 = a8[6];
  if (a8[7] * v18 < v16)
  {
    sub_1004CA310();
  }

  v37 = *(a9 + 28) * *(a9 + 24);
  if (v37 < 3 * v16)
  {
    sub_1004CA2E4();
  }

  if (a2[6] < v16)
  {
    sub_1004CA2B8();
  }

  if (a2[7] < v16)
  {
    sub_1004CA28C();
  }

  if (*(a3 + 24) < v16)
  {
    sub_1004CA260();
  }

  if (*(a3 + 28) < v16)
  {
    sub_1004CA234();
  }

  if (*(a4 + 24) < v16)
  {
    sub_1004CA208();
  }

  if (*(a4 + 28) < v16)
  {
    sub_1004CA1DC();
  }

  if (*(a5 + 24) < v16)
  {
    sub_1004CA1B0();
  }

  if (*(a5 + 28) < v16)
  {
    sub_1004CA184();
  }

  if (*(a6 + 24) < v16)
  {
    sub_1004CA158();
  }

  if (*(a6 + 28) < v16)
  {
    sub_1004CA12C();
  }

  if (v17 < v16)
  {
    sub_1004CA100();
  }

  if (v18 < v16)
  {
    sub_1004CA0D4();
  }

  sub_1003A8CFC(a2, a1);
  sub_1003A8C00(a3, v16, v16);
  sub_1003A8C50(a3, 0.0);
  sub_1003A8C00(a4, v16, v16);
  sub_1003A8C50(a4, 0.0);
  sub_1003A8C00(a5, v16, v16);
  sub_1003A8C50(a5, 0.0);
  sub_1003A8C00(a6, v16, v16);
  sub_1003A8C50(a6, 0.0);
  v19 = a2[2];
  qmemcpy(v40, "NVNB", sizeof(v40));
  v38 = v19;
  v39 = v16;
  v20 = dgeevx_NEWLAPACK();
  v21 = **(a9 + 32);
  if (v37 < v21 && cnprint::CNPrinter::GetLogLevel(v20) <= 1)
  {
    LOWORD(v39) = 4;
    LOBYTE(v38) = 1;
    cnprint::CNPrinter::Print(&v39, &v38, "Warning: Eig optimal workspace size %u is greater than provided workspace size %u; performance may suffer.", v21, v37);
  }

  sub_1003A8C00(a9, *(a9 + 24), *(a9 + 28));
  sub_1003A8C00(a8, v16, 2);
  sub_1003A8C00(a7, v16, 1);
  if (v16)
  {
    v23 = 0;
    v24 = *(a4 + 32);
    v25 = *(a5 + 32);
    v26 = *(a6 + 32);
    do
    {
      result = *(v24 + 8 * v23);
      if (result != 0.0)
      {
        v27 = v23 * v16;
        v28 = v16 + v23;
        v29 = v16;
        do
        {
          v30 = *(v25 + 8 * v28);
          *(v26 + 8 * v27) = v30;
          *(v26 + 8 * v28) = -v30;
          result = *(v25 + 8 * v27);
          *(v25 + 8 * v28) = result;
          ++v27;
          ++v28;
          --v29;
        }

        while (v29);
        ++v23;
      }

      ++v23;
    }

    while (v23 < v16);
    v31 = v16 - 1;
    if (v16 != 1)
    {
      v32 = *(a3 + 32);
      v33 = *(a4 + 32);
      v34 = (v33 + 8);
      v35 = (v32 + 8);
      v36 = v16 + 1;
      do
      {
        *(v32 + 8 * v36) = *v35;
        result = *v34;
        *(v33 + 8 * v36) = *v34;
        *v35++ = 0;
        *v34++ = 0.0;
        v36 += v16 + 1;
        --v31;
      }

      while (v31);
    }
  }

  return result;
}

uint64_t sub_1003C1940()
{
  v1 = xmmword_10056F270;
  v2[0] = unk_10056F280;
  v2[1] = xmmword_10056F290;
  v2[2] = unk_10056F2A0;
  qword_1009F7D10 = 0;
  unk_1009F7D18 = 0;
  qword_1009F7D08 = 0;
  sub_10004EEB8(&qword_1009F7D08, &v1, &v3, 4uLL);
  __cxa_atexit(sub_100045220, &qword_1009F7D08, &_mh_execute_header);
  v1 = xmmword_10056F2B0;
  qword_1009F7D28 = 0;
  unk_1009F7D30 = 0;
  qword_1009F7D20 = 0;
  sub_10004EEB8(&qword_1009F7D20, &v1, v2, 1uLL);
  return __cxa_atexit(sub_100045220, &qword_1009F7D20, &_mh_execute_header);
}

void sub_1003C1A44(uint64_t a1, double a2, double a3)
{
  *a1 = 0;
  *(a1 + 8) = a3;
  *(a1 + 16) = a2;
  if (a3 <= 0.0)
  {
    sub_1004CA9C4();
  }

  if (a2 <= 0.0)
  {
    sub_1004CA998();
  }

  *(a1 + 24) = 1.0 / a2 / (1.0 / a2 + 1.0 / (a3 * 6.28318531));
  sub_1003C1B54(a1);
  *a1 = 1;
  v6 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134218240;
    v8 = a2;
    v9 = 2048;
    v10 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#spatialGesturesPredictor #LPF configured with fs = %f and fc = %f", &v7, 0x16u);
  }
}

void sub_1003C1B54(uint64_t a1)
{
  *(a1 + 1) = 0;
  *(a1 + 32) = 0;
  v1 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "#spatialGesturesPredictor #LPF reset", v2, 2u);
  }
}

uint64_t sub_1003C1BC4(uint64_t a1, __int128 *a2, _DWORD *a3)
{
  *a1 = off_1009A9898;
  if (*(a2 + 23) < 0)
  {
    sub_1000056BC((a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v6 = *a2;
    *(a1 + 24) = *(a2 + 2);
    *(a1 + 8) = v6;
  }

  v7 = *(a2 + 24);
  v8 = *(a2 + 5);
  *(a1 + 56) = 0;
  *(a1 + 48) = v8;
  *(a1 + 32) = v7;
  *(a1 + 64) = 0;
  v9 = qword_1009F9820;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *a3 ? "PredictorSecondary_GestureClassifier" : "PredictorPrimary_GestureClassifier";
    sub_100004A08(&__p, v10);
    v11 = (__p.st_gid & 0x80000000) == 0 ? &__p : *&__p.st_dev;
    *buf = 136315138;
    v18 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#spatialGesturesPredictor Configuring GestureClassifier for Predictor %s", buf, 0xCu);
    if (SHIBYTE(__p.st_gid) < 0)
    {
      operator delete(*&__p.st_dev);
    }
  }

  if (*a3 == 1)
  {
    operator new();
  }

  if (!*a3)
  {
    operator new();
  }

  *(a1 + 104) = espresso_create_context();
  *(a1 + 96) = espresso_create_plan();
  if (*(a2 + 23) >= 0)
  {
    v12 = a2;
  }

  else
  {
    v12 = *a2;
  }

  if (stat(v12, &__p))
  {
    *(a1 + 72) = 0;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004CA9F0();
    }
  }

  else
  {
    *(a1 + 72) = 1;
    v13 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#spatialGesturesPredictor Successfully located model weights filepath.", buf, 2u);
    }

    if (espresso_plan_add_network())
    {
      *(a1 + 72) = 0;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004CAA24();
      }
    }

    else if (espresso_plan_build())
    {
      *(a1 + 72) = 0;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004CAA58();
      }
    }

    else
    {
      v14 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#spatialGesturesPredictor Espresso Model initialized", buf, 2u);
      }
    }
  }

  return a1;
}

void sub_1003C21B4(_Unwind_Exception *a1)
{
  v6 = *(v1 + 64);
  *(v1 + 64) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *v4;
  *v4 = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(a1);
}

void sub_1003C2288(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, void *a5@<X8>)
{
  v8 = qword_1009F9820;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    if (*(a3 + 32))
    {
      v9 = "PredictorSecondary_GestureClassifier";
    }

    else
    {
      v9 = "PredictorPrimary_GestureClassifier";
    }

    sub_100004A08(v69, v9);
    sub_1004CAA8C(v69, buf, v8);
  }

  sub_1003C2B28(a1);
  v68 = 0;
  v66 = 0u;
  v67 = 0u;
  v65 = 0u;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v58 = 0u;
  v10 = *(a3 + 32);
  v50 = a2;
  if (v10 == 1)
  {
    v70 = 1;
    v71 = (*(**(a1 + 56) + 24))(*(a1 + 56));
    v72 = (*(**(a1 + 56) + 16))(*(a1 + 56));
    if (espresso_buffer_pack_tensor_shape())
    {
      __assert_rtn("makePrediction", "NRBYSpatialGesturePredictor.mm", 177, "status == ESPRESSO_STATUS_SUCCESS");
    }

    v29 = (*(**(a1 + 56) + 24))(*(a1 + 56));
    v30 = (*(**(a1 + 56) + 16))(*(a1 + 56));
    sub_1003C66A4(&__src, v30 * v29);
    v11 = __src;
    if (a2[15056] != 1)
    {
      __assert_rtn("makePrediction", "NRBYSpatialGesturePredictor.mm", 182, "inputObject.deviceMotionBufferSecondary.has_value()");
    }

    for (i = 0; ; ++i)
    {
      v32 = (*(**(a1 + 56) + 24))(*(a1 + 56));
      if (i >= ((*(**(a1 + 56) + 16))(*(a1 + 56)) * v32))
      {
        break;
      }

      if ((a2[15056] & 1) == 0)
      {
        sub_1000195BC();
      }

      v33 = *&a2[8 * i + 10656];
      v11[i] = v33;
    }
  }

  else
  {
    v11 = 0;
    if (!v10)
    {
      v70 = 1;
      v71 = (*(**(a1 + 56) + 24))(*(a1 + 56));
      v72 = 9;
      v73 = ((*(**(a1 + 56) + 16))(*(a1 + 56)) + 2);
      if (espresso_buffer_pack_tensor_shape())
      {
        __assert_rtn("makePrediction", "NRBYSpatialGesturePredictor.mm", 147, "status == ESPRESSO_STATUS_SUCCESS");
      }

      v12 = (*(**(a1 + 56) + 24))(*(a1 + 56));
      v13 = (9 * v12 * ((*(**(a1 + 56) + 16))(*(a1 + 56)) + 2));
      sub_1003C66A4(&__src, v13);
      v14 = a2 + 9368;
      v11 = __src;
      if (a2[9368] != 1 || a2[9544] != 1)
      {
        __assert_rtn("makePrediction", "NRBYSpatialGesturePredictor.mm", 153, "inputObject.deviceMotionBufferAfterProcessingPrimary.has_value() and inputObject.deltaUwbBufferAfterProcessingPrimary.has_value()");
      }

      v48 = a3;
      v49 = v13;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = a2 + 4688;
      v19 = a2 + 9464;
      while (v16 < (*(**(a1 + 56) + 24))(*(a1 + 56)))
      {
        v20 = 0;
        v53 = v16;
        v21 = 2 * v16;
        v54 = v15;
        do
        {
          for (j = 0; j < (*(**(a1 + 56) + 16))(*(a1 + 56)); ++j)
          {
            v23 = (*(**(a1 + 56) + 16))(*(a1 + 56));
            if ((*v14 & 1) == 0)
            {
              sub_1000195BC();
            }

            v24 = *&v18[8 * j + 8 * v15 * v23];
            v11[v17++] = v24;
          }

          if (v14[176] != 1)
          {
            sub_1000195BC();
          }

          v25 = 0;
          v26 = 1;
          do
          {
            v27 = v26;
            v28 = *&v19[8 * (v25 | v21)];
            v11[v17++] = v28;
            v25 = 1;
            v26 = 0;
          }

          while ((v27 & 1) != 0);
          ++v20;
          ++v15;
        }

        while (v20 != 9);
        v16 = v53 + 1;
        v15 = v54 + 9;
      }

      if (v17 != v49)
      {
        __assert_rtn("makePrediction", "NRBYSpatialGesturePredictor.mm", 169, "m == flattenedVectorsize");
      }

      a3 = v48;
    }
  }

  *&v58 = v11;
  LODWORD(v68) = 65568;
  if (espresso_network_bind_buffer())
  {
    __assert_rtn("makePrediction", "NRBYSpatialGesturePredictor.mm", 197, "status == ESPRESSO_STATUS_SUCCESS");
  }

  if (espresso_network_bind_buffer())
  {
    v47 = 202;
    goto LABEL_61;
  }

  if (espresso_plan_execute_sync())
  {
    v47 = 206;
LABEL_61:
    __assert_rtn("makePrediction", "NRBYSpatialGesturePredictor.mm", v47, "status == ESPRESSO_STATUS_SUCCESS");
  }

  __src = 0;
  v56 = 0;
  v57 = 0;
  if (!*(a3 + 32))
  {
    v34 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
    {
      sub_1004CAB00(&v70, v34);
    }
  }

  v35 = 0;
  v36 = 0;
  do
  {
    if (v36 >= v57)
    {
      v37 = __src;
      v38 = v36 - __src;
      v39 = (v36 - __src) >> 2;
      v40 = v39 + 1;
      if ((v39 + 1) >> 62)
      {
        sub_100019B38();
      }

      v41 = v57 - __src;
      if ((v57 - __src) >> 1 > v40)
      {
        v40 = v41 >> 1;
      }

      if (v41 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v42 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v42 = v40;
      }

      if (v42)
      {
        sub_10004F51C(&__src, v42);
      }

      v43 = v39;
      v44 = (4 * v39);
      v45 = &v44[-v43];
      *v44 = *(v70 + v35);
      v36 = (v44 + 1);
      memcpy(v45, v37, v38);
      v46 = __src;
      __src = v45;
      v56 = v36;
      v57 = 0;
      if (v46)
      {
        operator delete(v46);
      }
    }

    else
    {
      *v36 = *(v70 + v35);
      v36 += 4;
    }

    v56 = v36;
    v35 += 4;
  }

  while (v35 != 12);
  ++*(a3 + 8);
  a5[1] = 0;
  a5[2] = 0;
  *a5 = 0;
  sub_1003C33FC(a1, v50, &__src, a3, a4, a5);
  if (__src)
  {
    v56 = __src;
    operator delete(__src);
  }

  if (v11)
  {
    operator delete(v11);
  }
}

void sub_1003C2B28(uint64_t a1)
{
  __chkstk_darwin(a1);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004CABA4();
  }

  if (!*(v2 + 32))
  {
    if ((*(v4 + 4680) & 1) == 0)
    {
      sub_1004CABD8();
    }

    v7 = (v4 + 9368);
    if ((*(v4 + 9456) & 1) == 0)
    {
      sub_1004CAC04();
    }

    if ((*(v4 + 10632) & 1) == 0)
    {
      sub_1004CAC30();
    }

    if (*(v2 + 4) == 1)
    {
      bzero(__dst, 0x1248uLL);
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v46 = 0u;
      v8 = 9 * (*(**(v6 + 56) + 16))(*(v6 + 56));
      LODWORD(v9) = (*(**(v6 + 56) + 32))(*(v6 + 56)) - v8;
      if (v9 < (*(**(v6 + 56) + 32))(*(v6 + 56)))
      {
        v9 = v9;
        do
        {
          (*(**(v6 + 64) + 24))(v44);
          v10 = v44[2 * (v9 % (*(**(v6 + 56) + 16))(*(v6 + 56)))];
          (*(**(v6 + 64) + 24))(v43);
          v11 = (*(**(v6 + 56) + 16))(*(v6 + 56));
          if ((*(v4 + 4680) & 1) == 0)
          {
            goto LABEL_55;
          }

          __dst[v9] = (*(v4 + 8 * v9) - v10) / *&v43[2 * (v9 % v11) + 1];
        }

        while (++v9 < (*(**(v6 + 56) + 32))(*(v6 + 56)));
      }

      LODWORD(v12) = (*(**(v6 + 56) + 40))(*(v6 + 56)) - 2;
      if (v12 < (*(**(v6 + 56) + 40))(*(v6 + 56)))
      {
        v12 = v12;
        do
        {
          v44[0] = (*(**(v6 + 64) + 32))(*(v6 + 64));
          v45 = v13;
          v14 = v12 & 1;
          if (v12 < 0)
          {
            v14 = -v14;
          }

          v15 = v44[2 * v14];
          (*(**(v6 + 64) + 32))(*(v6 + 64));
          if ((*(v4 + 9456) & 1) == 0)
          {
            goto LABEL_55;
          }

          v16 = *(v4 + 9376 + 8 * v12) - v15;
          *(&v46 + v12++) = v16 / (*(**(v6 + 64) + 16))(*(v6 + 64));
        }

        while (v12 < (*(**(v6 + 56) + 40))(*(v6 + 56)));
      }

      *(v2 + 4) = 0;
      goto LABEL_41;
    }

    if ((*v7 & 1) == 0)
    {
      sub_1004CAC5C();
    }

    if ((*(v4 + 9544) & 1) == 0)
    {
      sub_1004CAC88();
    }

    memcpy(__dst, (v4 + 4688), 0x1248uLL);
    v17 = *(v4 + 9512);
    v48 = *(v4 + 9496);
    v49 = v17;
    v50 = *(v4 + 9528);
    v18 = *(v4 + 9480);
    v46 = *(v4 + 9464);
    v47 = v18;
    v19 = 9 * (*(**(v6 + 56) + 16))(*(v6 + 56));
    if (v19 >= (*(**(v6 + 56) + 32))(*(v6 + 56)))
    {
LABEL_25:
      LODWORD(v22) = (*(**(v6 + 56) + 32))(*(v6 + 56)) - v19;
      if (v22 >= (*(**(v6 + 56) + 32))(*(v6 + 56)))
      {
LABEL_29:
        if ((*(v4 + 10648) & 1) == 0)
        {
          sub_1004CACB4();
        }

        v25 = *(v4 + 10640);
        v26 = *(v2 + 24);
        if ((*(**(v6 + 56) + 40))(*(v6 + 56)) < 3)
        {
LABEL_34:
          v30 = (*(**(v6 + 56) + 40))(*(v6 + 56)) - 2;
          if (v30 >= (*(**(v6 + 56) + 40))(*(v6 + 56)))
          {
LABEL_41:
            v39 = *v7;
            memcpy((v4 + 4688), __dst, 0x1248uLL);
            if ((v39 & 1) == 0)
            {
              *v7 = 1;
            }

            v40 = *(v4 + 9544);
            v41 = v49;
            *(v4 + 9496) = v48;
            *(v4 + 9512) = v41;
            *(v4 + 9528) = v50;
            v42 = v47;
            *(v4 + 9464) = v46;
            *(v4 + 9480) = v42;
            if ((v40 & 1) == 0)
            {
              *(v4 + 9544) = 1;
            }

            if ((*(v4 + 10648) & 1) == 0)
            {
              sub_1004CACE0();
            }

            *(v2 + 24) = *(v4 + 10640);
            return;
          }

          v31 = v30;
          v32 = v25 - v26;
          v33 = (v4 + 8 * v30 + 9376);
          while (1)
          {
            v44[0] = (*(**(v6 + 64) + 40))(*(v6 + 64));
            v45 = v34;
            v35 = v31 >= 0 ? v31 & 1 : -(v31 & 1);
            v36 = v44[2 * v35];
            (*(**(v6 + 64) + 40))(*(v6 + 64));
            v43[1] = v37;
            v43[3] = v38;
            if ((*(v4 + 9456) & 1) == 0)
            {
              break;
            }

            *(&v46 + v31++) = ((*v33 - *(v33 - 2)) / v32 - v36) / *&v43[2 * v35 + 1];
            ++v33;
            if (v31 >= (*(**(v6 + 56) + 40))(*(v6 + 56)))
            {
              goto LABEL_41;
            }
          }
        }

        else
        {
          v27 = 0;
          while ((*(v4 + 9544) & 1) != 0)
          {
            *(&v46 + v27) = *(v4 + 9480 + 8 * v27);
            v28 = (*(**(v6 + 56) + 40))(*(v6 + 56));
            v29 = v27 + 3;
            ++v27;
            if (v29 >= v28)
            {
              goto LABEL_34;
            }
          }
        }
      }

      else
      {
        v22 = v22;
        while (1)
        {
          (*(**(v6 + 64) + 24))(v44);
          v23 = v44[2 * (v22 % (*(**(v6 + 56) + 16))(*(v6 + 56)))];
          (*(**(v6 + 64) + 24))(v43);
          v24 = (*(**(v6 + 56) + 16))(*(v6 + 56));
          if ((*(v4 + 4680) & 1) == 0)
          {
            break;
          }

          __dst[v22] = (*(v4 + 8 * v22) - v23) / *&v43[2 * (v22 % v24) + 1];
          if (++v22 >= (*(**(v6 + 56) + 32))(*(v6 + 56)))
          {
            goto LABEL_29;
          }
        }
      }
    }

    else
    {
      v20 = v19;
      v21 = __dst;
      while ((*v7 & 1) != 0)
      {
        *v21++ = *(v4 + 4688 + 8 * v20);
        if (++v20 >= (*(**(v6 + 56) + 32))(*(v6 + 56)))
        {
          goto LABEL_25;
        }
      }
    }

LABEL_55:
    sub_1000195BC();
  }
}

void sub_1003C33FC(uint64_t a1@<X0>, uint64_t a2@<X1>, float **a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v7 = *(a4 + 32);
  if (v7 == 1)
  {
    v17 = (*a3)[1];
    *a6 = **a3 <= v17;
    *(a6 + 8) = v17;
    *(a6 + 16) = 0;
    return;
  }

  if (!v7)
  {
    v12 = *a3;
    v13 = **a3;
    v14 = (*a3)[1];
    if (v13 <= v14 || v13 <= v12[2])
    {
      v18 = v12[2];
      if (v14 <= v13 || ((v14 - v13) > 0.03 ? (v19 = v14 <= v18) : (v19 = 1), v19))
      {
        v15 = 0;
        v20 = v18 <= v13 || v18 <= v14;
        if (v20 || (v18 - v13) <= 0.03)
        {
          goto LABEL_26;
        }

        v21 = v18;
        v22 = *(a4 + 16);
        v23 = 0.0799999982;
      }

      else
      {
        v21 = v14;
        v22 = *(a4 + 16);
        v23 = 0.100000001;
      }

      v24 = v22 + v21 * v23;
      if (v24 > 1.0)
      {
        v24 = 1.0;
      }

      *(a4 + 16) = v24;
      v15 = 1;
    }

    else
    {
      v15 = 0;
      if (a5 > 1)
      {
        if (a5 == 3)
        {
          v15 = 0;
          v16 = *(a4 + 16) + -0.0799999982;
          if (v16 < 0.0)
          {
            v16 = 0.0;
          }

          *(a4 + 16) = v16;
          goto LABEL_26;
        }

        if (a5 != 2 && a5 != 4)
        {
          goto LABEL_26;
        }

LABEL_89:
        sub_1004CAD0C();
      }

      if (a5 == 1)
      {
        v15 = 0;
        *(a4 + 16) = 0;
        goto LABEL_26;
      }

      if (!a5)
      {
        goto LABEL_89;
      }
    }

LABEL_26:
    v25 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v26 = *(a4 + 16);
      *buf = 134217984;
      *&buf[4] = v26;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#spatialGesturesPredictor #probabilities hysteresisProb = %f", buf, 0xCu);
    }

    if ((*(a2 + 9456) & 1) == 0)
    {
      sub_1004CAD38();
    }

    v75 = 0.0;
    if ((atomic_load_explicit(&qword_1009F7D40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009F7D40))
    {
      dword_1009F7D38 = (*(**(a1 + 56) + 24))(*(a1 + 56));
      __cxa_guard_release(&qword_1009F7D40);
    }

    sub_1003C671C(&v73, dword_1009F7D38);
    sub_1003C671C(&v71, dword_1009F7D38);
    v27 = dword_1009F7D38;
    if (dword_1009F7D38 < 1)
    {
      __assert_rtn("_refineModelPrediction", "NRBYSpatialGesturePredictor.mm", 392, "_dimInputsModel > 0");
    }

    if (*(a2 + 9456) != 1)
    {
      sub_1000195BC();
    }

    v28 = v73;
    v29 = v71;
    v30 = (a2 + 9384);
    v31 = dword_1009F7D38;
    do
    {
      *v28++ = *(v30 - 1);
      v32 = *v30;
      v30 += 2;
      *v29++ = v32;
      --v31;
    }

    while (v31);
    sub_1003C671C(&v69, (v27 - 1));
    sub_1003C671C(__p, dword_1009F7D38 - 1);
    v33 = v69;
    if (dword_1009F7D38 >= 2)
    {
      v34 = __p[0];
      v35 = dword_1009F7D38 - 1;
      v36 = (v71 + 8);
      v37 = (v73 + 8);
      v38 = v69;
      do
      {
        *v38++ = *(v37 - 1) - *v37;
        *v34++ = *v36 - *(v36 - 1);
        ++v36;
        ++v37;
        --v35;
      }

      while (v35);
    }

    if (v70 == v33)
    {
      v46 = 0.0;
      v45 = 0.0;
    }

    else
    {
      v39 = 0;
      v40 = 0;
      v41 = v70 - v33;
      v42 = __p[0];
      if (v41 <= 1)
      {
        v41 = 1;
      }

      do
      {
        v43 = *v33++;
        if (v43 > 0.0)
        {
          ++v39;
        }

        v44 = *v42++;
        if (v44 > 0.0)
        {
          ++v40;
        }

        --v41;
      }

      while (v41);
      v45 = v39;
      v46 = v40;
    }

    if (a5 <= 1)
    {
      if (a5 == 1)
      {
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
        {
          sub_1004CAD64();
        }

        v52 = *(a4 + 16);
        if ((v15 & 1) == 0 && v52 <= *(a1 + 32) * 0.5)
        {
          v63 = v75;
          *a6 = 0;
          *(a6 + 8) = v63;
          *(a6 + 16) = 0;
          goto LABEL_73;
        }

        v53 = (*(**(a1 + 56) + 48))(*(a1 + 56));
        v54 = v53 * v45 + v52 * 0.55 + (*(**(a1 + 56) + 56))(*(a1 + 56)) * v46;
        v75 = v54;
        v55 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          *&buf[4] = v54;
          _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "#spatialGesturesPredictor #probabilities with range and rssi derivatives SinglePredictor handoffConfidence = %f", buf, 0xCu);
        }

        sub_1003C3C7C(a1, a2, v15, &v75, a4, 1, buf, v56);
        goto LABEL_62;
      }

      if (!a5)
      {
LABEL_65:
        __assert_rtn("_refineModelPrediction", "NRBYSpatialGesturePredictor.mm", 444, "0");
      }
    }

    else
    {
      if (a5 == 3)
      {
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
        {
          sub_1004CAD98();
        }

        v47 = *(a4 + 16);
        v48 = (*(**(a1 + 56) + 48))(*(a1 + 56));
        v49 = v48 * v45 + v47 * 0.55 + (*(**(a1 + 56) + 56))(*(a1 + 56)) * v46;
        v75 = v49;
        v50 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          *&buf[4] = v49;
          _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "#spatialGesturesPredictor #probabilities with range and rssi derivatives DualAnchorAntennaPredictor handoffConfidence = %f", buf, 0xCu);
        }

        sub_1003C3C7C(a1, a2, v15, &v75, a4, 3, buf, v51);
LABEL_62:
        *a6 = *buf;
        *(a6 + 16) = *&buf[16];
        goto LABEL_67;
      }

      if (a5 == 2 || a5 == 4)
      {
        goto LABEL_65;
      }
    }

LABEL_67:
    if (v15)
    {
      v57 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        v58 = *(v74 - 1);
        v59 = *(v72 - 1);
        v60 = *(a4 + 16);
        v61 = *(a6 + 8);
        *buf = 134218752;
        *&buf[4] = v58;
        *&buf[12] = 2048;
        *&buf[14] = v59;
        *&buf[22] = 2048;
        v77 = v60;
        v78 = 2048;
        v79 = v61;
        v62 = "#spatialGesturesPredictor #evaluation distance = %f, rssi = %f, prediction = Handoff, hysteresis prob = %f, handoff confidence = %f";
LABEL_75:
        _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, v62, buf, 0x2Au);
        goto LABEL_76;
      }

      goto LABEL_76;
    }

LABEL_73:
    v57 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v64 = *(v74 - 1);
      v65 = *(v72 - 1);
      v66 = *(a4 + 16);
      v67 = *(a6 + 8);
      *buf = 134218752;
      *&buf[4] = v64;
      *&buf[12] = 2048;
      *&buf[14] = v65;
      *&buf[22] = 2048;
      v77 = v66;
      v78 = 2048;
      v79 = v67;
      v62 = "#spatialGesturesPredictor #evaluation distance = %f, rssi = %f, prediction = Other, hysteresis prob = %f, handoff confidence = %f";
      goto LABEL_75;
    }

LABEL_76:
    *a4 = *a6;
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v69)
    {
      v70 = v69;
      operator delete(v69);
    }

    if (v71)
    {
      v72 = v71;
      operator delete(v71);
    }

    if (v73)
    {
      v74 = v73;
      operator delete(v73);
    }
  }
}

double sub_1003C3C24(uint64_t a1, uint64_t a2)
{
  if (a2 > 2)
  {
    if (a2 == 4)
    {
      v2 = 48;
    }

    else
    {
      if (a2 != 3)
      {
        return result;
      }

      v2 = 40;
    }

    return *(a1 + v2);
  }

  if (a2 == 1)
  {
    v2 = 32;
    return *(a1 + v2);
  }

  if (!a2 || a2 == 2)
  {
    sub_1004CADCC();
  }

  return result;
}

void sub_1003C3C7C(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, double *a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X8>, __n128 a8@<Q0>)
{
  v10 = a3;
  a8.n128_u64[0] = 0;
  if (a6 <= 1)
  {
    if (a6 == 1)
    {
      v14 = 32;
      goto LABEL_6;
    }

    if (a6)
    {
      goto LABEL_7;
    }

LABEL_43:
    sub_1004CADF8();
  }

  if (a6 == 3)
  {
    v14 = 40;
LABEL_6:
    a8.n128_u64[0] = *(a1 + v14);
    goto LABEL_7;
  }

  if (a6 == 2 || a6 == 4)
  {
    goto LABEL_43;
  }

LABEL_7:
  if (a3 == 1 || (v15 = *a4, *a4 > a8.n128_f64[0]))
  {
    v16 = (*(**(a1 + 56) + 24))(*(a1 + 56), a8);
    sub_1003C671C(&v39, 9 * v16);
    v17 = *(a5 + 32);
    if (v17)
    {
      if (v17 != 1)
      {
        goto LABEL_11;
      }

      v36 = "0";
      v37 = 500;
    }

    else
    {
      if (*(a2 + 4680) == 1)
      {
        for (i = 0; i < (9 * (*(**(a1 + 56) + 24))(*(a1 + 56))); ++i)
        {
          if ((*(a2 + 4680) & 1) == 0)
          {
            sub_1000195BC();
          }

          v24 = (*(**(a1 + 56) + 16))(*(a1 + 56));
          v39[i] = *(a2 + 8 * v24 * i);
        }

LABEL_11:
        v18 = v39;
        v19 = v39 + 1;
        v20 = *v39;
        if (v39 == v40 || v19 == v40)
        {
          v22 = v39;
        }

        else
        {
          v25 = *v39;
          v26 = v39 + 1;
          v27 = v39;
          v28 = v39 + 1;
          do
          {
            v29 = *v28++;
            v30 = v29;
            if (v29 < v25)
            {
              v25 = v30;
              v27 = v26;
            }

            v26 = v28;
          }

          while (v28 != v40);
          v31 = *v27;
          v22 = v39;
          v32 = v39 + 1;
          do
          {
            v33 = *v32++;
            v34 = v33;
            if (v20 < v33)
            {
              v20 = v34;
              v22 = v19;
            }

            v19 = v32;
          }

          while (v32 != v40);
          v20 = v31;
        }

        if (vabdd_f64(v20, *v22) <= 0.85)
        {
          v10 = 1;
          if (!v39)
          {
LABEL_37:
            v15 = *a4;
            goto LABEL_38;
          }
        }

        else
        {
          *a4 = 0.0;
          v35 = qword_1009F9820;
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
          {
            *v38 = 0;
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "#spatialGesturesPredictor #evaluation Speculating sideways motion", v38, 2u);
          }

          v10 = 0;
          v18 = v39;
          if (!v39)
          {
            goto LABEL_37;
          }
        }

        v40 = v18;
        operator delete(v18);
        goto LABEL_37;
      }

      v36 = "inputObject.deviceMotionBufferPrimary.has_value()";
      v37 = 492;
    }

    __assert_rtn("_evaluateHeuristics", "NRBYSpatialGesturePredictor.mm", v37, v36);
  }

LABEL_38:
  *a7 = v10;
  *(a7 + 8) = v15;
  *(a7 + 16) = 0;
}

void sub_1003C3F3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003C3F60(uint64_t a1)
{
  *a1 = off_1009A9898;
  if (espresso_plan_destroy())
  {
    v6 = 534;
    goto LABEL_14;
  }

  if (espresso_context_destroy())
  {
    v6 = 537;
LABEL_14:
    __assert_rtn("~GestureClassifier", "NRBYSpatialGesturePredictor.mm", v6, "status == ESPRESSO_STATUS_SUCCESS");
  }

  v2 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#spatialGesturesPredictor Deleted model network parameters", v7, 2u);
  }

  v3 = *(a1 + 64);
  *(a1 + 64) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(a1 + 56);
  *(a1 + 56) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_1003C40A8(uint64_t a1)
{
  sub_1003C3F60(a1);

  operator delete();
}

uint64_t sub_1003C40E0(uint64_t a1, uint64_t *a2, int a3)
{
  v5 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_1009A98C0;
  *(a1 + 24) = 0;
  *(a1 + 28) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v6 = a1 + 64;
  do
  {
    v7 = a1 + v5;
    *(v7 + 64) = 0;
    *(v7 + 88) = 0;
    *(v7 + 96) = 0;
    v5 += 40;
  }

  while (v5 != 360);
  *(a1 + 424) = 0;
  *(a1 + 488) = 0;
  *(a1 + 496) = 0;
  *(a1 + 448) = 0;
  *(a1 + 456) = 0;
  *(a1 + 464) = 0;
  *(a1 + 9864) = 0u;
  *(a1 + 9880) = 0u;
  *(a1 + 9896) = 0u;
  *(a1 + 11160) = 0u;
  *(a1 + 11176) = 0u;
  *(a1 + 11192) = 0u;
  *(a1 + 11208) = 0;
  v8 = *a2;
  v9 = a2[1];
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    v10 = *(a1 + 16);
    *(a1 + 8) = v8;
    *(a1 + 16) = v9;
    if (v10)
    {
      sub_10000AD84(v10);
    }
  }

  else
  {
    *(a1 + 16) = 0;
    *(a1 + 8) = v8;
  }

  bzero((a1 + 10080), 0x438uLL);
  *(a1 + 56) = 0;
  bzero((a1 + 504), 0x2490uLL);
  v11 = 0;
  *(a1 + 10040) = 0u;
  *(a1 + 10056) = 0u;
  *(a1 + 10008) = 0u;
  *(a1 + 10024) = 0u;
  *(a1 + 9976) = 0u;
  *(a1 + 9992) = 0u;
  *(a1 + 9944) = 0u;
  *(a1 + 9960) = 0u;
  *(a1 + 9912) = 0u;
  *(a1 + 9928) = 0u;
  *(a1 + 11212) = a3;
  do
  {
    sub_1003C1A44(v6, 100.0, 50.0);
    v12 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v20 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#spatialGesturesPredictor #LPF configured LPF for signal %d in device motion data", buf, 8u);
    }

    ++v11;
    v6 += 40;
  }

  while (v11 != 9);
  v13 = 0;
  v14 = 1;
  do
  {
    v15 = v14;
    sub_1003C1A44(a1 + 424 + 40 * v13, 50.0, 20.0);
    v16 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v20 = v13;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#spatialGesturesPredictor #LPF configured LPF for signal %d in UWB data", buf, 8u);
    }

    v14 = 0;
    v13 = 1;
  }

  while ((v15 & 1) != 0);
  v17 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#spatialGesturesPredictor GesturePredictor is created", buf, 2u);
  }

  return a1;
}

void sub_1003C43CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::__shared_weak_count **a9, void **a10)
{
  if (*(v10 + 11207) < 0)
  {
    operator delete(*(v10 + 11184));
  }

  v13 = *v11;
  if (*v11)
  {
    *(v10 + 11168) = v13;
    operator delete(v13);
  }

  v14 = *(v10 + 9888);
  if (v14)
  {
    *(v10 + 9896) = v14;
    operator delete(v14);
  }

  v15 = *a10;
  if (*a10)
  {
    *(v10 + 9872) = v15;
    operator delete(v15);
  }

  if (*a9)
  {
    sub_10000AD84(*a9);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003C4434(const void **a1, uint64_t a2)
{
  if (*(a1[1] + 72))
  {
    v4 = *(a2 + 24);
    v27[0] = *(a2 + 8);
    v27[1] = v4;
    v5 = *(a2 + 88);
    v27[2] = *(a2 + 40);
    v27[3] = v5;
    v28 = *(a2 + 104);
    v29 = *(a2 + 64);
    *&v5 = *(a2 + 56);
    v30 = *(a2 + 80);
    v31 = v5;
    v26 = 0;
    memset(v25, 0, sizeof(v25));
    sub_1003C466C(a1, v27, v25);
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
    {
      sub_1004CAE58();
    }

    sub_1003C4764((a1 + 1233), v25);
    sub_100009734(a1 + 1236, a2);
    v6 = *(a2 + 72);
    v24[0] = *(a2 + 56);
    v24[1] = v6;
    sub_1003C48B4(v7, v24);
    v11 = a1[1396];
    v12 = a1[1397];
    if (v11 >= v12)
    {
      v14 = a1[1395];
      v15 = 0xAAAAAAAAAAAAAAABLL * ((v11 - v14) >> 3);
      v16 = v15 + 1;
      if (v15 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        sub_100019B38();
      }

      v17 = 0xAAAAAAAAAAAAAAABLL * ((v12 - v14) >> 3);
      if (2 * v17 > v16)
      {
        v16 = 2 * v17;
      }

      if (v17 >= 0x555555555555555)
      {
        v18 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v18 = v16;
      }

      if (v18)
      {
        sub_1003C67F0((a1 + 1395), v18);
      }

      v19 = 24 * v15;
      *v19 = v8;
      *(v19 + 8) = v9;
      *(v19 + 16) = v10;
      v13 = 24 * v15 + 24;
      v20 = a1[1395];
      v21 = a1[1396] - v20;
      v22 = (24 * v15 - v21);
      memcpy((v19 - v21), v20, v21);
      v23 = a1[1395];
      a1[1395] = v22;
      a1[1396] = v13;
      a1[1397] = 0;
      if (v23)
      {
        operator delete(v23);
      }
    }

    else
    {
      *v11 = v8;
      *(v11 + 1) = v9;
      v13 = (v11 + 24);
      *(v11 + 2) = v10;
    }

    a1[1396] = v13;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
    {
      sub_1004CAE8C();
    }
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004CAE24();
  }
}

__n128 sub_1003C466C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = 0;
  v6 = (a1 + 96);
  do
  {
    if (*(v6 - 32) == 1)
    {
      v7 = *(a2 + v5);
      if (*(v6 - 31) == 1)
      {
        v7 = (1.0 - *(v6 - 1)) * *v6 + *(v6 - 1) * v7;
      }

      else
      {
        *(v6 - 31) = 1;
      }

      *v6 = v7;
    }

    else
    {
      v8 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004CAEC0(&v10, v11, v8);
      }

      v7 = *(a2 + v5);
    }

    *(a3 + v5) = v7;
    v5 += 8;
    v6 += 5;
  }

  while (v5 != 72);
  *(a3 + 72) = *(a2 + 72);
  result = *(a2 + 88);
  *(a3 + 88) = result;
  return result;
}

void sub_1003C4764(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v12 = 0x4EC4EC4EC4EC4EC5 * ((v4 - *a1) >> 3);
    v13 = v12 + 1;
    if ((v12 + 1) > 0x276276276276276)
    {
      sub_100019B38();
    }

    v14 = 0x4EC4EC4EC4EC4EC5 * ((v5 - *a1) >> 3);
    if (2 * v14 > v13)
    {
      v13 = 2 * v14;
    }

    if (v14 >= 0x13B13B13B13B13BLL)
    {
      v15 = 0x276276276276276;
    }

    else
    {
      v15 = v13;
    }

    if (v15)
    {
      sub_1003C6794(a1, v15);
    }

    v16 = 104 * v12;
    v17 = *a2;
    v18 = a2[2];
    *(v16 + 16) = a2[1];
    *(v16 + 32) = v18;
    *v16 = v17;
    v19 = a2[3];
    v20 = a2[4];
    v21 = a2[5];
    *(v16 + 96) = *(a2 + 12);
    *(v16 + 64) = v20;
    *(v16 + 80) = v21;
    *(v16 + 48) = v19;
    v11 = 104 * v12 + 104;
    v22 = *(a1 + 8) - *a1;
    v23 = v16 - v22;
    memcpy((v16 - v22), *a1, v22);
    v24 = *a1;
    *a1 = v23;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v24)
    {
      operator delete(v24);
    }
  }

  else
  {
    v6 = *a2;
    v7 = a2[2];
    *(v4 + 16) = a2[1];
    *(v4 + 32) = v7;
    *v4 = v6;
    v8 = a2[3];
    v9 = a2[4];
    v10 = a2[5];
    *(v4 + 96) = *(a2 + 12);
    *(v4 + 64) = v9;
    *(v4 + 80) = v10;
    *(v4 + 48) = v8;
    v11 = v4 + 104;
  }

  *(a1 + 8) = v11;
}

void sub_1003C48B4(uint64_t a1, double *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a2 * v5 - v4 * v3 + *a2 * v5 - v4 * v3;
  if (fabs(v6) < 1.0)
  {
    asin(v6);
  }

  atan2(v4 * v5 + v2 * v3 + v4 * v5 + v2 * v3, (v5 * v5 + v3 * v3) * -2.0 + 1.0);
  atan2(v3 * v5 + v2 * v4 + v3 * v5 + v2 * v4, (v4 * v4 + v5 * v5) * -2.0 + 1.0);
}

void sub_1003C4980(uint64_t a1)
{
  __chkstk_darwin(a1);
  if (*(*(v3 + 8) + 72))
  {
    v5 = v4;
    v6 = v3;
    v7 = *(v3 + 9944);
    v112 = *(v3 + 9928);
    v113 = v7;
    v8 = *(v3 + 9976);
    v114 = *(v3 + 9960);
    v115 = v8;
    if ((*(v4 + 72) & 1) == 0)
    {
      sub_1004CAF00();
    }

    v9 = *(v3 + 11212);
    if (v9 <= 1)
    {
      if (v9 == 1)
      {
        v2 = *(v4 + 16);
        v1 = *(v4 + 64);
        goto LABEL_15;
      }

      if (v9)
      {
LABEL_15:
        v13 = v113;
        *(v6 + 9912) = v112;
        *(v6 + 9928) = v13;
        v14 = v115;
        *(v6 + 9944) = v114;
        *(v6 + 9960) = v14;
        *(v6 + 9976) = v2;
        *(v6 + 9984) = v1;
        v15 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *__dst = 0;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#spatialGesturesPredictor GesturePredictor consumed UWB input", __dst, 2u);
        }

        bzero(__src, 0x3A8uLL);
        v108 = 0;
        v106 = 0u;
        v107 = 0u;
        v104 = 0u;
        v105 = 0u;
        v102 = 0u;
        v103 = 0u;
        v100 = 0u;
        v101 = 0u;
        v99 = 0u;
        v97 = 0u;
        v98 = 0u;
        v95 = 0u;
        v96 = 0u;
        v16 = *(v6 + 9888);
        v17 = *(v6 + 9896) - v16;
        v18 = v17 >> 3;
        if (v17)
        {
          v19 = 0;
          if (v18 <= 1)
          {
            v20 = 1;
          }

          else
          {
            v20 = v18;
          }

          while (*(v16 + 8 * v19) <= *(v5 + 8))
          {
            if (v20 == ++v19)
            {
              goto LABEL_25;
            }
          }

          LODWORD(v18) = v19;
        }

LABEL_25:
        if (v18 == 9)
        {
          v21 = 0;
          v22 = *(v6 + 9864);
          v23 = *(v6 + 11160);
          v24 = __src;
          do
          {
            v25 = &v95 + v21;
            v26 = v23 + v21;
            v27 = *(v22 + 80);
            *(v24 + 4) = *(v22 + 64);
            *(v24 + 5) = v27;
            *(v24 + 12) = *(v22 + 96);
            v28 = *(v22 + 16);
            *v24 = *v22;
            *(v24 + 1) = v28;
            v29 = *(v22 + 48);
            *(v24 + 2) = *(v22 + 32);
            *(v24 + 3) = v29;
            *v25 = *(v23 + v21);
            v21 += 24;
            v22 += 104;
            v24 += 104;
            *(v25 + 2) = *(v26 + 16);
          }

          while (v21 != 216);
        }

        else
        {
          if ((v18 - 1) > 7)
          {
            if (v18 < 10)
            {
              goto LABEL_63;
            }

            memset(__dst, 0, 24);
            *buf = 0;
            do
            {
              sub_1002856D8(__dst, buf);
              ++*buf;
            }

            while (*buf < v18);
            LODWORD(v92) = 5;
            sub_1003C6848(*__dst, *&__dst[8], &v92);
            v38 = 0;
            memset(buf, 0, 24);
            do
            {
              sub_1002856D8(buf, (*__dst + v38));
              v38 += 4;
            }

            while (v38 != 36);
            std::__sort<std::__less<int,int> &,int *>();
            v39 = 0;
            v40 = *buf;
            v41 = *(v6 + 9864);
            v42 = &v95;
            v43 = __src;
            v44 = *(v6 + 11160);
            do
            {
              v45 = *&v40[v39];
              v46 = v41 + 104 * v45;
              v47 = *(v46 + 80);
              *(v43 + 4) = *(v46 + 64);
              *(v43 + 5) = v47;
              *(v43 + 12) = *(v46 + 96);
              v48 = *(v46 + 16);
              *v43 = *v46;
              *(v43 + 1) = v48;
              v49 = *(v46 + 48);
              *(v43 + 2) = *(v46 + 32);
              *(v43 + 3) = v49;
              v50 = v44 + 24 * v45;
              *v42 = *v50;
              *(v42 + 2) = *(v50 + 16);
              v39 += 4;
              v42 = (v42 + 24);
              v43 += 104;
            }

            while (v39 != 36);
            *&buf[8] = v40;
            operator delete(v40);
            v51 = *__dst;
            if (!*__dst)
            {
              goto LABEL_63;
            }

            *&__dst[8] = *__dst;
          }

          else
          {
            v30 = (9 - v18);
            memset(buf, 0, 24);
            *__dst = 0;
            do
            {
              sub_1002856D8(buf, __dst);
              ++*__dst;
            }

            while (*__dst < v18);
            LODWORD(v92) = 5;
            sub_1003C6848(*buf, *&buf[8], &v92);
            v31 = *buf;
            if (v30 <= v18)
            {
              v52 = 0;
              if (v30 <= 1)
              {
                v53 = 1;
              }

              else
              {
                v53 = 9 - v18;
              }

              v54 = 4 * v53;
              do
              {
                *&__dst[v52] = v31[v52 / 4];
                v52 += 4;
              }

              while (v54 != v52);
              v55 = *buf;
              v56 = 1;
              do
              {
                v57 = *v55++;
                *&__dst[4 * v30] = v57;
                if (v30 > 7)
                {
                  break;
                }

                ++v30;
                v37 = v56++ >= v18;
              }

              while (!v37);
            }

            else
            {
              LODWORD(v32) = 0;
              do
              {
                v32 = v32;
                v33 = 1;
                v34 = v31;
                do
                {
                  v35 = v32;
                  v36 = *v34++;
                  *&__dst[4 * v32++] = v36;
                  if (v35 > 7)
                  {
                    break;
                  }

                  v37 = v33++ >= v18;
                }

                while (!v37);
              }

              while (v35 <= 7);
            }

            std::__sort<std::__less<int,int> &,int *>();
            v58 = 0;
            v59 = *(v6 + 9864);
            v60 = &v95;
            v61 = *(v6 + 11160);
            v62 = __src;
            do
            {
              v63 = *&__dst[v58];
              v64 = v59 + 104 * v63;
              v65 = *(v64 + 80);
              *(v62 + 4) = *(v64 + 64);
              *(v62 + 5) = v65;
              *(v62 + 12) = *(v64 + 96);
              v66 = *(v64 + 16);
              *v62 = *v64;
              *(v62 + 1) = v66;
              v67 = *(v64 + 48);
              *(v62 + 2) = *(v64 + 32);
              *(v62 + 3) = v67;
              v68 = v61 + 24 * v63;
              *v60 = *v68;
              *(v60 + 2) = *(v68 + 16);
              v58 += 4;
              v60 = (v60 + 24);
              v62 += 104;
            }

            while (v58 != 36);
            v51 = *buf;
            if (!*buf)
            {
              goto LABEL_63;
            }

            *&buf[8] = *buf;
          }

          operator delete(v51);
        }

LABEL_63:
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
        {
          sub_1004CAF58();
        }

        v69 = (v6 + 9888);
        memcpy(__dst, (v6 + 1440), 0xEA0uLL);
        memcpy(buf, (v6 + 10296), 0x360uLL);
        memcpy(&__dst[3744], __src, 0x3A8uLL);
        *&buf[1024] = v105;
        *&buf[1040] = v106;
        *&buf[1056] = v107;
        *&buf[960] = v101;
        *&buf[976] = v102;
        *&buf[992] = v103;
        *&buf[1008] = v104;
        *&buf[896] = v97;
        *&buf[912] = v98;
        *&buf[928] = v99;
        *&buf[944] = v100;
        *&buf[864] = v95;
        *&buf[1072] = v108;
        *&buf[880] = v96;
        memcpy((v6 + 504), __dst, 0x1248uLL);
        memcpy((v6 + 10080), buf, 0x438uLL);
        v92 = 0;
        v93 = 0;
        v94 = 0;
        __p = 0;
        v90 = 0;
        v91 = 0;
        v86 = 0;
        v87 = 0;
        v88 = 0;
        *(v6 + 10072) = *(v5 + 8);
        v70 = *(v6 + 9864);
        if (0x4EC4EC4EC4EC4EC5 * ((*(v6 + 9872) - v70) >> 3) > v18)
        {
          v18 = v18;
          v71 = 24 * v18;
          v72 = 8 * v18;
          v73 = 104 * v18;
          do
          {
            sub_1003C4764(&v92, (v70 + v73));
            sub_100009734(&v86, (*v69 + v72));
            v74 = *(v6 + 11160) + v71;
            v75 = v90;
            if (v90 >= v91)
            {
              v78 = 0xAAAAAAAAAAAAAAABLL * ((v90 - __p) >> 3);
              v79 = v78 + 1;
              if (v78 + 1 > 0xAAAAAAAAAAAAAAALL)
              {
                sub_100019B38();
              }

              if (0x5555555555555556 * ((v91 - __p) >> 3) > v79)
              {
                v79 = 0x5555555555555556 * ((v91 - __p) >> 3);
              }

              if (0xAAAAAAAAAAAAAAABLL * ((v91 - __p) >> 3) >= 0x555555555555555)
              {
                v80 = 0xAAAAAAAAAAAAAAALL;
              }

              else
              {
                v80 = v79;
              }

              if (v80)
              {
                sub_1003C67F0(&__p, v80);
              }

              v81 = 8 * ((v90 - __p) >> 3);
              v82 = *v74;
              *(v81 + 16) = *(v74 + 16);
              *v81 = v82;
              v77 = (24 * v78 + 24);
              v83 = (v81 - (v90 - __p));
              memcpy(v83, __p, v90 - __p);
              v84 = __p;
              __p = v83;
              v90 = v77;
              v91 = 0;
              if (v84)
              {
                operator delete(v84);
              }
            }

            else
            {
              v76 = *v74;
              *(v90 + 2) = *(v74 + 16);
              *v75 = v76;
              v77 = v75 + 24;
            }

            ++v18;
            v70 = *(v6 + 9864);
            v85 = 0x4EC4EC4EC4EC4EC5 * ((*(v6 + 9872) - v70) >> 3);
            v90 = v77;
            v71 += 24;
            v72 += 8;
            v73 += 104;
          }

          while (v85 > v18);
        }

        if ((v6 + 9864) != &v92)
        {
          sub_1003C6BA4((v6 + 9864), v92, v93, 0x4EC4EC4EC4EC4EC5 * ((v93 - v92) >> 3));
        }

        if (v69 != &v86)
        {
          sub_10017AF94((v6 + 9888), v86, v87, (v87 - v86) >> 3);
        }

        if ((v6 + 11160) != &__p)
        {
          sub_1003C6D68((v6 + 11160), __p, v90, 0xAAAAAAAAAAAAAAABLL * ((v90 - __p) >> 3));
        }

        if (v86)
        {
          v87 = v86;
          operator delete(v86);
        }

        if (__p)
        {
          v90 = __p;
          operator delete(__p);
        }

        if (v92)
        {
          v93 = v92;
          operator delete(v92);
        }

        return;
      }
    }

    else
    {
      if (v9 == 3)
      {
        v10 = *(v4 + 64);
        *__dst = *(v4 + 16);
        *&__dst[8] = v10;
        v2 = sub_1003C5314(v3, __dst);
        v1 = v11;
        v12 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#spatialGesturesPredictor #LPF UWB signals filtered for DualAnchorAntennaPredictor", buf, 2u);
        }

        goto LABEL_15;
      }

      if (v9 != 2 && v9 != 4)
      {
        goto LABEL_15;
      }
    }

    sub_1004CAF2C();
  }

  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004CAE24();
  }
}

void sub_1003C5274(_Unwind_Exception *a1)
{
  v2 = STACK[0x4D0];
  if (STACK[0x4D0])
  {
    STACK[0x4D8] = v2;
    operator delete(v2);
  }

  v3 = STACK[0x910];
  if (STACK[0x910])
  {
    STACK[0x918] = v3;
    operator delete(v3);
  }

  _Unwind_Resume(a1);
}

double sub_1003C5314(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = a1 + 424;
  v5 = &v15;
  v6 = 1;
  do
  {
    v7 = v6;
    v8 = v4 + 40 * v3;
    if (*v8 == 1)
    {
      v9 = *(a2 + 8 * v3);
      if (*(v8 + 1) == 1)
      {
        v9 = (1.0 - *(v8 + 24)) * *(v8 + 32) + *(v8 + 24) * v9;
      }

      else
      {
        *(v8 + 1) = 1;
      }

      *(v8 + 32) = v9;
    }

    else
    {
      v10 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004CAEC0(&v12, v13, v10);
      }

      v9 = *(a2 + 8 * v3);
    }

    v6 = 0;
    *v5 = v9;
    v5 = &v14;
    v3 = 1;
  }

  while ((v7 & 1) != 0);
  return v15;
}

void sub_1003C5418()
{
  v0 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "#spatialGesturesPredictor Gesture changed", v1, 2u);
  }
}

double sub_1003C5480(uint64_t a1)
{
  __chkstk_darwin(a1);
  *(v1 + 11208) = 0;
  v2 = *(v1 + 8);
  if (v2[72])
  {
    v3 = v1;
    memcpy(__dst, (v1 + 504), 0x1248uLL);
    __dst[4680] = 1;
    memcpy(v22, (v3 + 5184), sizeof(v22));
    v4 = *(v3 + 9912);
    v25 = *(v3 + 9928);
    v5 = *(v3 + 9960);
    v26 = *(v3 + 9944);
    v23 = 1;
    v27 = v5;
    v28 = *(v3 + 9976);
    v24 = v4;
    v29 = 1;
    v6 = *(v3 + 10040);
    v32 = *(v3 + 10024);
    v33 = v6;
    v34 = *(v3 + 10056);
    v7 = *(v3 + 10008);
    v30 = *(v3 + 9992);
    v31 = v7;
    v35 = 1;
    memcpy(v36, (v3 + 10080), 0x438uLL);
    v36[1080] = 1;
    v37 = *(v3 + 10072);
    v38 = 1;
    v39 = 0;
    v40 = 0;
    v18 = 0;
    v19 = 0.0;
    v20 = 0;
    (*(*v2 + 16))(&v18, v2, __dst, v3 + 24, *(v3 + 11212));
    if ((v23 & 1) == 0)
    {
      sub_1004CB00C();
    }

    memcpy((v3 + 5184), v22, 0x1248uLL);
    if ((v35 & 1) == 0)
    {
      sub_1004CB038();
    }

    v8 = v33;
    *(v3 + 10024) = v32;
    *(v3 + 10040) = v8;
    *(v3 + 10056) = v34;
    v9 = v31;
    *(v3 + 9992) = v30;
    *(v3 + 10008) = v9;
    if (v20 != 1)
    {
      v11 = v19;
      v13 = sub_1003C3C24(*(v3 + 8), *(v3 + 11212));
      v14 = qword_1009F9820;
      v15 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT);
      if (v11 <= v13)
      {
        if (!v15)
        {
          return v11;
        }

        *buf = 134217984;
        v42 = v11;
        v16 = "#spatialGesturesPredictor Gesture = Other, HandoffConfidence = %f";
      }

      else
      {
        if (!v15)
        {
          return v11;
        }

        *buf = 134217984;
        v42 = v11;
        v16 = "#spatialGesturesPredictor Gesture = Handoff, HandoffConfidence = %f";
      }

      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v16, buf, 0xCu);
      return v11;
    }

    v10 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#spatialGesturesPredictor #evaluation false positive alert", buf, 2u);
    }

    *(v3 + 11208) = 1;
    return 0.0;
  }

  else
  {
    v12 = qword_1009F9820;
    v11 = 1.0;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004CAF8C(v12);
    }
  }

  return v11;
}

uint64_t sub_1003C57B0(uint64_t a1, uint64_t *a2, int a3)
{
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_1009A9908;
  *(a1 + 28) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0;
  v6 = *a2;
  v5 = a2[1];
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    v7 = *(a1 + 16);
    *(a1 + 8) = v6;
    *(a1 + 16) = v5;
    if (v7)
    {
      sub_10000AD84(v7);
    }
  }

  else
  {
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
  }

  *(a1 + 56) = 1;
  *(a1 + 136) = a3;
  return a1;
}

uint64_t sub_1003C5854(uint64_t a1)
{
  *a1 = off_1009A9908;
  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  sub_1003C6F10((a1 + 64));
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_10000AD84(v2);
  }

  return a1;
}

void sub_1003C58BC(uint64_t a1)
{
  sub_1003C5854(a1);

  operator delete();
}

void sub_1003C58F4(void *a1, uint64_t a2)
{
  if (*(a1[1] + 72))
  {
    v3 = *(a2 + 24);
    v6[0] = *(a2 + 8);
    v6[1] = v3;
    v4 = vextq_s8(*(a2 + 120), *(a2 + 120), 8uLL);
    v6[2] = *(a2 + 40);
    v6[3] = v4;
    v6[4] = *(a2 + 88);
    v7 = *(a2 + 104);
    sub_1003C59C0(a1 + 8, v6);
    v5 = a1[13];
    if (v5 >= 0x33)
    {
      do
      {
        ++a1[12];
        a1[13] = v5 - 1;
        sub_1003C7190((a1 + 8), 1);
        v5 = a1[13];
      }

      while (v5 > 0x32);
    }
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004CAE24();
  }
}

__n128 sub_1003C59C0(unint64_t *a1, uint64_t a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 46 * ((v4 - v5) >> 3) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    sub_1003C6FBC(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  v8 = *(v5 + 8 * (v7 / 0x2E)) + 88 * (v7 % 0x2E);
  v9 = *(a2 + 16);
  *v8 = *a2;
  *(v8 + 16) = v9;
  result = *(a2 + 32);
  v11 = *(a2 + 48);
  v12 = *(a2 + 64);
  *(v8 + 80) = *(a2 + 80);
  *(v8 + 48) = v11;
  *(v8 + 64) = v12;
  *(v8 + 32) = result;
  ++a1[5];
  return result;
}

void sub_1003C5A8C()
{
  v0 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "#spatialGesturesPredictor Gesture changed", v1, 2u);
  }
}

double sub_1003C5AF4(uint64_t a1)
{
  __chkstk_darwin(a1);
  v2 = v1[1];
  if (v2[72])
  {
    v3 = v1;
    if (v1[13] == 50)
    {
      v4 = v1[12];
      v5 = v1[9];
      v6 = -4400;
      do
      {
        v7 = *(v5 + 8 * (v4 / 0x2E)) + 88 * (v4 % 0x2E);
        v8 = *(v7 + 48);
        v9 = &v18[v6];
        *(v9 + 277) = *(v7 + 32);
        *(v9 + 278) = v8;
        *(v9 + 279) = *(v7 + 64);
        v10 = *(v7 + 16);
        *(v9 + 275) = *v7;
        *(v9 + 560) = *(v7 + 80);
        *(v9 + 276) = v10;
        ++v4;
        v6 += 88;
      }

      while (v6);
      v16[0] = 0;
      v16[4680] = 0;
      v16[4688] = 0;
      v16[9368] = 0;
      v16[9376] = 0;
      v16[9456] = 0;
      v16[9464] = 0;
      v16[9544] = 0;
      v16[9552] = 0;
      v16[10632] = 0;
      v16[10640] = 0;
      v16[10648] = 0;
      memcpy(v17, v18, 0x1130uLL);
      v17[4400] = 1;
      v13 = 0;
      v14 = 0.0;
      v15 = 0;
      (*(*v2 + 16))(&v13, v2, v16, v3 + 3, *(v3 + 34));
      return v14;
    }

    else
    {
      v11 = 0.0;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
      {
        sub_1004CB098();
      }
    }
  }

  else
  {
    v11 = 0.0;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004CB064();
    }
  }

  return v11;
}

uint64_t sub_1003C5CF4(uint64_t a1, uint64_t *a2, int a3)
{
  *a1 = off_1009A9950;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  if (a3 > 2)
  {
    if (a3 != 4)
    {
      if (a3 != 3)
      {
        return a1;
      }

      goto LABEL_6;
    }

    if (a2[2])
    {
      operator new();
    }

    v3 = "gestureClassifiers[kIdxMotionBasedSpatialGesturePredictor] != NULL";
    v4 = 1042;
LABEL_15:
    __assert_rtn("GesturePredictorWrapper", "NRBYSpatialGesturePredictor.mm", v4, v3);
  }

  if (a3 == 1)
  {
LABEL_6:
    if (*a2)
    {
      operator new();
    }

    v3 = "gestureClassifiers[kIdxUwbSpatialGesturePredictor] != NULL";
    v4 = 1036;
    goto LABEL_15;
  }

  if (!a3 || a3 == 2)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004CB0CC();
    }

    v3 = "false";
    v4 = 1050;
    goto LABEL_15;
  }

  return a1;
}

void sub_1003C5F98(_Unwind_Exception *exception_object)
{
  v3 = 16;
  while (1)
  {
    v4 = *(v1 + v3);
    *(v1 + v3) = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v3 -= 8;
    if (!v3)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

uint64_t sub_1003C6018(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    (*(*v3 + 16))(v3, a2);
  }

  result = *(a1 + 16);
  if (result)
  {
    v5 = *(*result + 16);

    return v5();
  }

  return result;
}

uint64_t sub_1003C60B4(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = *(a2 + 16);
  result = *(a1 + 8);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

void sub_1003C60F0(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v8 = *(a1 + 8);
  if (v8)
  {
    sub_1003C6458(v25, a2);
    sub_1003C6458(v20, a3);
    (*(*v8 + 32))(v8, v25, v20, a4);
    if (v24 == 1 && v23 == 1 && v22 < 0)
    {
      operator delete(__p);
    }

    if (v29 == 1 && v28 == 1 && v27 < 0)
    {
      operator delete(v26);
    }
  }

  v9 = *(a1 + 16);
  if (v9)
  {
    sub_1003C6458(v15, a2);
    sub_1003C6458(v10, a3);
    (*(*v9 + 32))(v9, v15, v10, a4);
    if (v14 == 1 && v13 == 1 && v12 < 0)
    {
      operator delete(v11);
    }

    if (v19 == 1 && v18 == 1 && v17 < 0)
    {
      operator delete(v16);
    }
  }
}

void sub_1003C6284(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52, int a53, __int16 a54, char a55, char a56)
{
  if (a21 == 1 && a19 == 1 && a15 < 0)
  {
    operator delete(__p);
  }

  if (a39 == 1 && a37 == 1 && a33 < 0)
  {
    operator delete(a28);
  }

  _Unwind_Resume(exception_object);
}

double sub_1003C6348(uint64_t a1)
{
  v3 = *(a1 + 8);
  if (v3 || (v3 = *(a1 + 16)) != 0)
  {
    v4 = *(*v3 + 40);

    v4();
  }

  else
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
    {
      sub_1004CB100();
    }

    return -1.0;
  }

  return result;
}

void sub_1003C63D8(uint64_t a1)
{
  sub_1003C64E8(a1);

  operator delete();
}

void sub_1003C6420(void *a1)
{
  sub_1003C6578(a1);

  operator delete();
}

_BYTE *sub_1003C6458(_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[64] = 0;
  if (*(a2 + 64) == 1)
  {
    *a1 = *a2;
    sub_100012FB4(a1 + 8, (a2 + 8));
    a1[64] = 1;
  }

  return a1;
}

void sub_1003C64B4(_Unwind_Exception *exception_object)
{
  if (v1[64] == 1 && v1[56] == 1 && v1[31] < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003C64E8(uint64_t a1)
{
  *a1 = off_1009A98C0;
  if (*(a1 + 11207) < 0)
  {
    operator delete(*(a1 + 11184));
  }

  v2 = *(a1 + 11160);
  if (v2)
  {
    *(a1 + 11168) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 9888);
  if (v3)
  {
    *(a1 + 9896) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 9864);
  if (v4)
  {
    *(a1 + 9872) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 16);
  if (v5)
  {
    sub_10000AD84(v5);
  }

  return a1;
}

void *sub_1003C6578(void *a1)
{
  *a1 = off_1009A9950;
  v2 = 2;
  do
  {
    v3 = a1[v2];
    a1[v2] = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    --v2;
  }

  while (v2 * 8);
  return a1;
}

double sub_1003C6618@<D0>(_OWORD *a1@<X8>)
{
  a1[10] = xmmword_10056F760;
  a1[11] = unk_10056F770;
  a1[12] = xmmword_10056F780;
  a1[6] = xmmword_10056F720;
  a1[7] = unk_10056F730;
  a1[8] = xmmword_10056F740;
  a1[9] = unk_10056F750;
  a1[2] = xmmword_10056F6E0;
  a1[3] = unk_10056F6F0;
  a1[4] = xmmword_10056F700;
  a1[5] = unk_10056F710;
  result = 0.0290127614;
  *a1 = xmmword_10056F6C0;
  a1[1] = *dbl_10056F6D0;
  return result;
}

uint64_t *sub_1003C66A4(uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_10004F5E0(a1, a2);
  }

  return a1;
}

void sub_1003C6700(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1003C671C(uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_100013050(a1, a2);
  }

  return a1;
}

void sub_1003C6778(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003C6794(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x276276276276277)
  {
    operator new();
  }

  sub_100013B04();
}

void sub_1003C67F0(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_100013B04();
}

uint64_t sub_1003C6848(int *a1, uint64_t a2, uint64_t a3)
{
  v4 = (a2 - a1) >> 2;
  if (v4 >= 2)
  {
    v5 = a1;
    v14 = xmmword_10056F470;
    v6 = a2 - 4;
    if (a2 - 4 > a1)
    {
      v8 = v4 - 1;
      v9 = a1;
      do
      {
        v13[0] = 0;
        v13[1] = v8;
        v10 = sub_1003C68F8(&v14, a3, v13);
        if (v10)
        {
          v11 = *v9;
          *v9 = *(v5 + 4 * v10);
          *(v5 + 4 * v10) = v11;
        }

        ++v9;
        --v8;
        v5 += 4;
      }

      while (v9 < v6);
    }
  }

  return a2;
}

uint64_t sub_1003C68F8(uint64_t a1, uint64_t a2, void *a3)
{
  result = a3[1];
  v6 = result - *a3;
  if (result != *a3)
  {
    v12[10] = v3;
    v12[11] = v4;
    v7 = v6 + 1;
    if (v6 == -1)
    {
      sub_1003C6988(v12, a2, 0x40uLL);
      return sub_1003C6A7C(v12);
    }

    else
    {
      v9 = __clz(v7);
      v10 = 63;
      if (((v7 << v9) & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v10 = 64;
      }

      sub_1003C6988(v12, a2, v10 - v9);
      do
      {
        v11 = sub_1003C6A7C(v12);
      }

      while (v11 >= v7);
      return *a3 + v11;
    }
  }

  return result;
}

uint64_t sub_1003C6988(uint64_t result, uint64_t a2, unint64_t a3)
{
  *result = a2;
  *(result + 8) = a3;
  if (a3 % 0x1E)
  {
    v3 = a3 / 0x1E + 1;
  }

  else
  {
    v3 = a3 / 0x1E;
  }

  v4 = a3 / v3;
  *(result + 16) = a3 / v3;
  *(result + 24) = v3;
  v5 = (-1 << (a3 / v3)) & 0x7FFFFFFE;
  if (a3 / v3 >= 0x40)
  {
    v5 = 0;
  }

  *(result + 40) = v5;
  if ((v5 ^ 0x7FFFFFFE) > v5 / v3)
  {
    ++v3;
    v4 = a3 / v3;
    *(result + 16) = a3 / v3;
    *(result + 24) = v3;
    if (a3 / v3 > 0x3F)
    {
      v6 = 0;
      *(result + 32) = v3 + v4 * v3 - a3;
      *(result + 40) = 0;
      goto LABEL_13;
    }

    *(result + 40) = (-1 << v4) & 0x7FFFFFFE;
  }

  *(result + 32) = v3 + a3 / v3 * v3 - a3;
  if (v4 > 0x3E)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0x3FFFFFFFuLL >> v4 << (v4 + 1);
  }

LABEL_13:
  *(result + 48) = v6;
  v7 = 0xFFFFFFFF >> -v4;
  if (!v4)
  {
    v7 = 0;
  }

  if (v4 >= 0x1F)
  {
    v8 = -1;
  }

  else
  {
    v8 = 0xFFFFFFFF >> ~v4;
  }

  *(result + 56) = v7;
  *(result + 60) = v8;
  return result;
}

uint64_t sub_1003C6A7C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    result = 0;
    v4 = 0;
    v5 = *(a1 + 16);
    v6 = **a1;
    do
    {
      do
      {
        v7 = v6 / 0xADC8;
        v8 = 48271 * (v6 % 0xADC8);
        v7 *= 3399;
        v9 = v8 >= v7;
        v10 = v8 - v7;
        if (v9)
        {
          v11 = 0;
        }

        else
        {
          v11 = 0x7FFFFFFF;
        }

        v6 = v11 + v10;
        v12 = v6 - 1;
      }

      while (*(a1 + 40) <= v12);
      v13 = result << v5;
      if (v5 >= 0x40)
      {
        v13 = 0;
      }

      result = v13 + (*(a1 + 56) & v12);
      ++v4;
    }

    while (v4 != v2);
    **a1 = v6;
  }

  else
  {
    result = 0;
  }

  v14 = *(a1 + 24);
  if (v2 < v14)
  {
    v15 = *a1;
    v16 = *(a1 + 48);
    v17 = *(a1 + 16);
    v18 = *(a1 + 60);
    v19 = *v15;
    while (1)
    {
      v20 = v19 / 0xADC8;
      v21 = 48271 * (v19 % 0xADC8);
      v20 *= 3399;
      v9 = v21 >= v20;
      v22 = v21 - v20;
      if (v9)
      {
        v23 = 0;
      }

      else
      {
        v23 = 0x7FFFFFFF;
      }

      v19 = v23 + v22;
      v24 = v19 - 1;
      if (v16 > v24)
      {
        v25 = result << (v17 + 1);
        if (v17 >= 0x3F)
        {
          v25 = 0;
        }

        result = v25 + (v18 & v24);
        if (++v2 == v14)
        {
          break;
        }
      }
    }

    *v15 = v19;
  }

  return result;
}

void **sub_1003C6BA4(void **result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0x4EC4EC4EC4EC4EC5 * ((v7 - *result) >> 3) < a4)
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

    if (a4 <= 0x276276276276276)
    {
      v9 = 0x4EC4EC4EC4EC4EC5 * (v7 >> 3);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x13B13B13B13B13BLL)
      {
        v11 = 0x276276276276276;
      }

      else
      {
        v11 = v10;
      }

      sub_1003C6D18(v6, v11);
    }

    sub_100019B38();
  }

  v12 = result[1];
  v13 = v12 - v8;
  if (0x4EC4EC4EC4EC4EC5 * ((v12 - v8) >> 3) >= a4)
  {
    v16 = a3 - __src;
    if (v16)
    {
      result = memmove(*result, __src, v16);
    }

    v15 = &v8[v16];
  }

  else
  {
    v14 = &__src[v13];
    if (v12 != v8)
    {
      result = memmove(*result, __src, v13);
      v12 = v6[1];
    }

    if (a3 != v14)
    {
      result = memmove(v12, v14, a3 - v14);
    }

    v15 = &v12[a3 - v14];
  }

  v6[1] = v15;
  return result;
}

void sub_1003C6D18(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x276276276276277)
  {
    sub_1003C6794(a1, a2);
  }

  sub_100019B38();
}

void **sub_1003C6D68(void **result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - *result) >> 3) < a4)
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

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x555555555555555)
      {
        v11 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v11 = v10;
      }

      sub_1003C6EC4(v6, v11);
    }

    sub_100019B38();
  }

  v12 = result[1];
  v13 = v12 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - v8) >> 3) >= a4)
  {
    v16 = a3 - __src;
    if (v16)
    {
      result = memmove(*result, __src, v16);
    }

    v15 = &v8[v16];
  }

  else
  {
    v14 = &__src[v13];
    if (v12 != v8)
    {
      result = memmove(*result, __src, v13);
      v12 = v6[1];
    }

    if (a3 != v14)
    {
      result = memmove(v12, v14, a3 - v14);
    }

    v15 = &v12[a3 - v14];
  }

  v6[1] = v15;
  return result;
}

void sub_1003C6EC4(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_1003C67F0(a1, a2);
  }

  sub_100019B38();
}

uint64_t sub_1003C6F10(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 23;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 46;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return sub_10004EE68(a1);
}

void sub_1003C6FBC(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x2E;
  v3 = v1 - 46;
  if (!v2)
  {
    v5 = a1[2];
    v6 = a1[3];
    v7 = v6 - *a1;
    if (v5 - a1[1] < v7)
    {
      if (v6 != v5)
      {
        operator new();
      }

      operator new();
    }

    if (v6 == *a1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 >> 2;
    }

    v10 = a1;
    sub_10016F098(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  sub_10016EC70(a1, &v9);
}

void sub_1003C7144(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1003C7190(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x2E)
  {
    a2 = 1;
  }

  if (v2 < 0x5C)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 46;
  }

  return v4 ^ 1u;
}

void sub_1003C71F0()
{
  v0 = objc_autoreleasePoolPush();
  __cxa_atexit(nullsub_73, &off_1009EC220, &_mh_execute_header);
  __cxa_atexit(nullsub_74, &off_1009EC228, &_mh_execute_header);

  objc_autoreleasePoolPop(v0);
}

void sub_1003C7270(void *result, uint64_t a2)
{
  if (*(a2 + 240) == 1)
  {
    v3 = result + 7;
    if (*(result + 288) == 1)
    {
      if (*(result + 8) == *(a2 + 16))
      {
        return;
      }

      v4 = *(a2 + 8);
      v5 = *(a2 + 40);
      *(result + 9) = *(a2 + 24);
      *(result + 11) = v5;
      *v3 = v4;
      v6 = *(a2 + 56);
      v7 = *(a2 + 72);
      v8 = *(a2 + 104);
      *(result + 17) = *(a2 + 88);
      *(result + 19) = v8;
      *(result + 13) = v6;
      *(result + 15) = v7;
      v9 = *(a2 + 120);
      v10 = *(a2 + 136);
      v11 = *(a2 + 168);
      *(result + 25) = *(a2 + 152);
      *(result + 27) = v11;
      *(result + 21) = v9;
      *(result + 23) = v10;
      v12 = *(a2 + 184);
      v13 = *(a2 + 200);
      v14 = *(a2 + 216);
      result[35] = *(a2 + 232);
      *(result + 31) = v13;
      *(result + 33) = v14;
      *(result + 29) = v12;
    }

    else
    {
      v15 = *(a2 + 8);
      v16 = *(a2 + 40);
      *(result + 9) = *(a2 + 24);
      *(result + 11) = v16;
      *v3 = v15;
      v17 = *(a2 + 56);
      v18 = *(a2 + 72);
      v19 = *(a2 + 104);
      *(result + 17) = *(a2 + 88);
      *(result + 19) = v19;
      *(result + 13) = v17;
      *(result + 15) = v18;
      v20 = *(a2 + 120);
      v21 = *(a2 + 136);
      v22 = *(a2 + 168);
      *(result + 25) = *(a2 + 152);
      *(result + 27) = v22;
      *(result + 21) = v20;
      *(result + 23) = v21;
      v23 = *(a2 + 184);
      v24 = *(a2 + 200);
      v25 = *(a2 + 216);
      result[35] = *(a2 + 232);
      *(result + 31) = v24;
      *(result + 33) = v25;
      *(result + 29) = v23;
      *(result + 288) = 1;
    }

    if ((*(a2 + 240) & 1) == 0)
    {
      sub_1000195BC();
    }

    sub_1003CBD5C((result + 37), a2 + 8, v27);
    if (v28 == 1)
    {
      v26 = result[6];
      if (!v26 || v27[0] - *(*(result[2] + 8 * ((v26 + result[5] - 1) / 0x38uLL)) + 72 * ((v26 + result[5] - 1) % 0x38uLL)) >= 0.25)
      {
        sub_1003C7420(result + 1, v27);
      }
    }
  }
}

uint64_t sub_1003C7420(unint64_t *a1, uint64_t a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 56 * ((v4 - v5) >> 3) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    sub_1003C7C30(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  v8 = *(v5 + 8 * (v7 / 0x38)) + 72 * (v7 % 0x38);
  *v8 = *a2;
  v9 = *(a2 + 16);
  v10 = *(a2 + 32);
  v11 = *(a2 + 48);
  *(v8 + 64) = *(a2 + 64);
  *(v8 + 32) = v10;
  *(v8 + 48) = v11;
  *(v8 + 16) = v9;
  v12 = a1[4];
  v13 = a1[5] + 1;
  a1[5] = v13;
  v14 = v12 + v13;
  v15 = a1[1];
  v16 = (v15 + 8 * (v14 / 0x38));
  v17 = *v16 + 72 * (v14 % 0x38);
  if (a1[2] == v15)
  {
    v17 = 0;
  }

  if (v17 == *v16)
  {
    v17 = *(v16 - 1) + 4032;
  }

  return v17 - 72;
}

void sub_1003C7524(void *a1, float32x4_t *a2)
{
  v6 = 0;
  sub_1003CAE94((a1 + 37), a2, &v6, v4);
  if (v6 == 1)
  {
    sub_1003C75EC(a1);
  }

  else if (v5 == 1)
  {
    v3 = a1[6];
    if (!v3 || v4[0] - *(*(a1[2] + 8 * ((v3 + a1[5] - 1) / 0x38uLL)) + 72 * ((v3 + a1[5] - 1) % 0x38uLL)) >= 0.25)
    {
      sub_1003C7420(a1 + 1, v4);
    }
  }
}

void sub_1003C75EC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  *(a1 + 48) = 0;
  v4 = (v3 - v2) >> 3;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v5 = *(a1 + 24);
      v2 = (*(a1 + 16) + 8);
      *(a1 + 16) = v2;
      v4 = (v5 - v2) >> 3;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v6 = 28;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_8;
    }

    v6 = 56;
  }

  *(a1 + 40) = v6;
LABEL_8:
  if (*(a1 + 288) == 1)
  {
    *(a1 + 288) = 0;
  }
}

uint64_t sub_1003C7678(uint64_t a1, double *a2, uint64_t a3, int a4)
{
  if (*(a3 + 256) != 1)
  {
    return 0;
  }

  v5 = *(a1 + 48);
  if (v5 >= 5 && *a2 - *(*(*(a1 + 16) + 8 * ((v5 + *(a1 + 40) - 1) / 0x38)) + 72 * ((v5 + *(a1 + 40) - 1) % 0x38)) <= 5.0)
  {
    __src = 0;
    v61 = 0;
    v62 = 0;
    if (sub_1003C7B28(a1, a3, a2, &v59))
    {
      v57 = a4;
      v9 = *(a1 + 40);
      v10 = *(a1 + 16);
      v11 = *(a1 + 24);
      v12 = (v10 + 8 * (v9 / 0x38));
      if (v11 == v10)
      {
        v13 = 0;
      }

      else
      {
        v13 = *v12 + 72 * (v9 % 0x38);
      }

LABEL_14:
      v58 = v12;
      while (1)
      {
        if (v11 == v10)
        {
          v15 = 0;
        }

        else
        {
          v14 = *(a1 + 48) + *(a1 + 40);
          v15 = *(v10 + 8 * (v14 / 0x38)) + 72 * (v14 % 0x38);
        }

        if (v13 == v15)
        {
          break;
        }

        v16 = v13 - *v12;
        v17 = 0x8E38E38E38E38E39 * (v16 >> 3);
        if (v16 < -71)
        {
          v23 = 54 - v17;
          v24 = (54 - v17) / 0x38;
          v20 = &v12[-v24];
          v21 = *v20;
          v22 = *v20 + 72 * (56 * v24 - v23) + 3960;
        }

        else
        {
          v18 = v17 + 1;
          v19 = (v17 + 1) / 0x38;
          v20 = &v12[v19];
          v21 = *v20;
          v22 = *v20 + 72 * (v18 - 56 * v19);
        }

        while (1)
        {
          if (v11 == v10)
          {
            v50 = 0;
          }

          else
          {
            v49 = *(a1 + 48) + *(a1 + 40);
            v50 = *(v10 + 8 * (v49 / 0x38)) + 72 * (v49 % 0x38);
          }

          if (v22 == v50)
          {
            break;
          }

          v25 = 0.0;
          for (i = 16; i != 40; i += 8)
          {
            v27 = *(v13 + i) - *(v22 + i);
            v25 = v25 + v27 * v27;
          }

          v28 = sqrt(v25);
          if (v28 > 2.0 && v28 < 15.0)
          {
            v30 = 0;
            v31 = 0.0;
            do
            {
              v32 = v59.f64[v30] - *(v22 + 16 + v30 * 8);
              v31 = v31 + v32 * v32;
              ++v30;
            }

            while (v30 != 3);
            v33 = 0.0;
            v34 = &v59;
            for (j = 2; j != 5; ++j)
            {
              v36 = v34->f64[0];
              v34 = (v34 + 8);
              v33 = v33 + (v36 - *(v13 + 8 * j)) * (v36 - *(v13 + 8 * j));
            }

            v37 = fabs(sqrt(v31) - sqrt(v33) + *(v13 + 8) - *(v22 + 8));
            v38 = v61;
            if (v61 >= v62)
            {
              v40 = __src;
              v41 = v61 - __src;
              v42 = (v61 - __src) >> 3;
              v43 = v42 + 1;
              if ((v42 + 1) >> 61)
              {
                sub_100019B38();
              }

              v44 = v62 - __src;
              if ((v62 - __src) >> 2 > v43)
              {
                v43 = v44 >> 2;
              }

              v45 = v44 >= 0x7FFFFFFFFFFFFFF8;
              v46 = 0x1FFFFFFFFFFFFFFFLL;
              if (!v45)
              {
                v46 = v43;
              }

              if (v46)
              {
                sub_100012564(&__src, v46);
              }

              *(8 * v42) = v37;
              v39 = 8 * v42 + 8;
              memcpy(0, v40, v41);
              v47 = __src;
              __src = 0;
              v61 = v39;
              v62 = 0;
              if (v47)
              {
                operator delete(v47);
              }
            }

            else
            {
              *v61 = v37;
              v39 = (v38 + 1);
            }

            v61 = v39;
            v21 = *v20;
          }

          v22 += 72;
          if (v22 - v21 == 4032)
          {
            v48 = v20[1];
            ++v20;
            v21 = v48;
            v22 = v48;
          }

          v10 = *(a1 + 16);
          v11 = *(a1 + 24);
        }

        v13 += 72;
        v12 = v58;
        if (v13 - *v58 == 4032)
        {
          v12 = v58 + 1;
          v13 = v58[1];
          goto LABEL_14;
        }
      }

      v51 = __src;
      v52 = (v61 - __src) >> 3;
      if (v52 >= 5)
      {
        v53 = 0;
        *(a1 + 1) = 1;
        v54 = 0.0;
        do
        {
          v54 = v54 + v51[v53] * v51[v53];
          ++v53;
        }

        while (v52 != v53);
        v55 = v54 / v52;
        if (v55 < 3.0)
        {
          v56 = v57;
        }

        else
        {
          v56 = 0;
        }

        if (v55 < 0.5 || (v56 & 1) != 0)
        {
          *a1 = 0;
          v6 = 1;
        }

        else
        {
          if (v57)
          {
            sub_1003C75EC(a1);
          }

          v6 = 0;
          *a1 = 1;
        }
      }

      else if (*a1)
      {
        v6 = 0;
      }

      else
      {
        v6 = 2;
      }
    }

    else
    {
      v6 = 2;
    }

    if (__src)
    {
      v61 = __src;
      operator delete(__src);
    }
  }

  else if (*a1)
  {
    return 0;
  }

  else
  {
    return 2;
  }

  return v6;
}

void sub_1003C7B04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003C7B28(uint64_t a1, uint64_t a2, uint64_t a3, float64x2_t *a4)
{
  if (*(a3 + 80) != 2 || *(a2 + 256) != 1)
  {
    return 0;
  }

  v4 = *(a2 + 24);
  if (*(a2 + 240) != 1 || v4 == 1.1755e-38)
  {
    return 0;
  }

  v8 = v4;
  v9 = __sincos_stret(*(a2 + 248) * 3.14159265 / 180.0);
  v10 = v9.__cosval * v8;
  v11 = v9.__sinval * v8;
  v17 = v10;
  v18 = v11;
  v19.columns[0] = sub_1003AF418(a3);
  v12 = __invert_f2(v19);
  v13 = vmla_n_f32(vmul_n_f32(v12.columns[0], v17), v12.columns[1], v18);
  v14 = *(a3 + 64);
  v15 = COERCE_FLOAT(*(a3 + 72));
  *&v14 = *&v14 + v13.f32[1];
  *a4 = vcvtq_f64_f32(*&v14);
  a4[1].f64[0] = (v15 + v13.f32[0]);
  return 1;
}

void sub_1003C7C30(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x38;
  v3 = v1 - 56;
  if (!v2)
  {
    v5 = a1[2];
    v6 = a1[3];
    v7 = v6 - *a1;
    if (v5 - a1[1] < v7)
    {
      if (v6 != v5)
      {
        operator new();
      }

      operator new();
    }

    if (v6 == *a1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 >> 2;
    }

    v10 = a1;
    sub_10016F098(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  sub_10016EC70(a1, &v9);
}

void sub_1003C7DB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1003C7E04()
{
  v1 = xmmword_10056F790;
  v2[0] = unk_10056F7A0;
  v2[1] = xmmword_10056F7B0;
  v2[2] = unk_10056F7C0;
  qword_1009F7D50 = 0;
  unk_1009F7D58 = 0;
  qword_1009F7D48 = 0;
  sub_10004EEB8(&qword_1009F7D48, &v1, &v3, 4uLL);
  __cxa_atexit(sub_100045220, &qword_1009F7D48, &_mh_execute_header);
  v1 = xmmword_10056F7D0;
  qword_1009F7D68 = 0;
  unk_1009F7D70 = 0;
  qword_1009F7D60 = 0;
  sub_10004EEB8(&qword_1009F7D60, &v1, v2, 1uLL);
  return __cxa_atexit(sub_100045220, &qword_1009F7D60, &_mh_execute_header);
}

uint64_t sub_1003C7F08(uint64_t a1)
{
  sub_100193120(v10);
  *(&v10[2] + *(v10[0] - 3)) = 2;
  v2 = sub_10000EA44(&v11, "<", 1);
  v3 = *(a1 + 23);
  if (v3 >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = *a1;
  }

  if (v3 >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = *(a1 + 8);
  }

  v6 = sub_10000EA44(v2, v4, v5);
  sub_10000EA44(v6, " | ", 3);
  v7 = std::ostream::operator<<();
  sub_10000EA44(v7, ">", 1);
  std::stringbuf::str();
  v11 = v8;
  if (v14 < 0)
  {
    operator delete(v13[7].__locale_);
  }

  std::locale::~locale(v13);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_1003C8104(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_1003C8414(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *a1 = off_1009A9A98;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  operator new();
}

uint64_t sub_1003C864C(uint64_t a1)
{
  (*(**(a1 + 48) + 16))(*(a1 + 48));
  v2 = *(**(a1 + 56) + 16);

  return v2();
}

uint64_t sub_1003C86D0(uint64_t a1)
{
  (*(**(a1 + 56) + 24))(*(a1 + 56));
  v2 = *(**(a1 + 48) + 24);

  return v2();
}

uint64_t sub_1003C8754(uint64_t a1)
{
  (*(**(a1 + 56) + 48))(*(a1 + 56));
  v2 = *(**(a1 + 48) + 48);

  return v2();
}

void sub_1003C89A4(void *a1)
{
  sub_1003C89DC(a1);

  operator delete();
}

void *sub_1003C89DC(void *a1)
{
  *a1 = off_1009A9A98;
  v2 = a1[7];
  a1[7] = 0;
  if (v2)
  {
    (*(*v2 + 392))(v2);
  }

  v3 = a1[6];
  a1[6] = 0;
  if (v3)
  {
    (*(*v3 + 392))(v3);
  }

  return a1;
}

uint64_t sub_1003C8A8C()
{
  v1 = xmmword_10056F820;
  v2[0] = unk_10056F830;
  v2[1] = xmmword_10056F840;
  v2[2] = unk_10056F850;
  qword_1009F7D80 = 0;
  unk_1009F7D88 = 0;
  qword_1009F7D78 = 0;
  sub_10004EEB8(&qword_1009F7D78, &v1, &v3, 4uLL);
  __cxa_atexit(sub_100045220, &qword_1009F7D78, &_mh_execute_header);
  v1 = xmmword_10056F860;
  qword_1009F7D98 = 0;
  unk_1009F7DA0 = 0;
  qword_1009F7D90 = 0;
  sub_10004EEB8(&qword_1009F7D90, &v1, v2, 1uLL);
  return __cxa_atexit(sub_100045220, &qword_1009F7D90, &_mh_execute_header);
}

double *sub_1003C8B90(double *a1, uint64_t a2, double a3)
{
  *a1 = a3;
  sub_10003735C((a1 + 1), a2);
  return a1;
}

uint64_t sub_1003C8BC8()
{
  v8[0] = xmmword_10056F8A8;
  v8[1] = unk_10056F8B8;
  sub_1001BD0B0(qword_1009F7DA8, v8, 4);
  xmmword_1009F7DC0 = xmmword_100563BD0;
  *algn_1009F7DD0 = xmmword_100563BE0;
  qword_1009F7DE8 = 0;
  unk_1009F7DF0 = 0;
  qword_1009F7DE0 = 0x3FD999999999999ALL;
  unk_1009F7DF8 = xmmword_100563BF0;
  dword_1009F7E08 = 5;
  qword_1009F7E10 = 0x4000000000000000;
  dword_1009F7E18 = 5;
  byte_1009F7E20 = 0;
  *&algn_1009F7E21[3] = 0x30000000ALL;
  xmmword_1009F7E30 = xmmword_100563C00;
  unk_1009F7E40 = xmmword_100563C10;
  xmmword_1009F7E50 = xmmword_100563C20;
  qword_1009F7E60 = 0x3FE3333333333333;
  dword_1009F7E68 = 3;
  xmmword_1009F7E70 = xmmword_100563C30;
  unk_1009F7E80 = xmmword_100563C10;
  xmmword_1009F7E90 = xmmword_100563C00;
  qword_1009F7EA0 = 0x3FE3333333333333;
  byte_1009F7EA8 = 0;
  xmmword_1009F7EB0 = xmmword_100563C40;
  unk_1009F7EC0 = xmmword_100563C50;
  __asm { FMOV            V0.2D, #1.0 }

  v6 = _Q0;
  xmmword_1009F7ED0 = _Q0;
  qword_1009F7EE0 = 0xBFD3333333333333;
  xmmword_1009F7EE8 = xmmword_100563C60;
  qword_1009F7EF8 = 0x3E99999A40000000;
  xmmword_1009F7F00 = xmmword_100563BE0;
  qword_1009F7F18 = 0;
  unk_1009F7F20 = 0;
  qword_1009F7F10 = 0x3FD999999999999ALL;
  xmmword_1009F7F28 = xmmword_100563BF0;
  dword_1009F7F38 = 5;
  qword_1009F7F40 = 0x4000000000000000;
  dword_1009F7F48 = 4;
  qword_1009F7F50 = 0x300000008;
  qword_1009F7F58 = 0xC04E800000000000;
  v7 = 0xC04E800000000000;
  sub_1001BD370(qword_1009F7F60, &v7, 1);
  xmmword_1009F7F78 = xmmword_100563C70;
  qword_1009F7F88 = 0x4024000000000000;
  dword_1009F7F90 = 45;
  byte_1009F7F98 = 0;
  byte_1009F7FB0 = 0;
  qword_1009F7FB8 = 0;
  byte_1009F7FC0 = 0;
  dword_1009F7FC4 = 1;
  byte_1009F7FC8 = 1;
  xmmword_1009F7FD0 = xmmword_100563C80;
  xmmword_1009F7FE0 = xmmword_100563C90;
  xmmword_1009F7FF0 = v6;
  qword_1009F8000 = 0xC059000000000000;
  xmmword_1009F8008 = xmmword_100563CA0;
  qword_1009F8018 = vdup_n_s32(0x3DCCCCCDu);
  xmmword_1009F8020 = xmmword_100563BE0;
  qword_1009F8030 = 0x3FD999999999999ALL;
  xmmword_1009F8038 = 0u;
  unk_1009F8048 = xmmword_100563BF0;
  dword_1009F8058 = 5;
  qword_1009F8060 = 0x4000000000000000;
  dword_1009F8068 = 10;
  qword_1009F8070 = 0x4034000000000000;
  dword_1009F8078 = 3;
  xmmword_1009F8080 = xmmword_100563CB0;
  return __cxa_atexit(sub_1001BB564, qword_1009F7DA8, &_mh_execute_header);
}

uint64_t sub_1003C8EAC(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = xmmword_10056F8D0;
  v2 = a1 + 40;
  *(a1 + 64) = 0x100000003;
  *(a1 + 32) = 0;
  *(a1 + 40) = off_1009A8F78;
  *(a1 + 48) = xmmword_10056EDA0;
  *(a1 + 72) = a1 + 80;
  v3 = a1 + 104;
  *(a1 + 128) = 0x100000003;
  *(a1 + 104) = off_1009A8F78;
  *(a1 + 112) = xmmword_10056EDA0;
  *(a1 + 136) = a1 + 144;
  v4 = a1 + 168;
  *(a1 + 192) = 0x100000003;
  *(a1 + 168) = off_1009A8F78;
  *(a1 + 176) = xmmword_10056EDA0;
  *(a1 + 200) = a1 + 208;
  *(a1 + 232) = xmmword_10056F8E0;
  *(a1 + 248) = 0xBFFBB67AE8584CAALL;
  v5 = erf(1.73205081);
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0;
  *(a1 + 296) = v5;
  v6 = erf(-1.73205081);
  v7 = 0;
  *(a1 + 312) = xmmword_10056F950;
  *(a1 + 328) = unk_10056F960;
  *(a1 + 304) = v6;
  *(a1 + 344) = 0x3FC5555555555555;
  *(a1 + 352) = xmmword_10056F978;
  *(a1 + 368) = unk_10056F988;
  *(a1 + 384) = 0x3FC5555555555555;
  do
  {
    *sub_1003AFDBC(v3, v7) = 0;
    *sub_1003AFDBC(v4, v7) = 0;
    *sub_1003AFDBC(v2, v7++) = 0;
  }

  while (v7 != 3);
  v8 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#sa_algo_rangefilter,SyntheticApertureRangeFilter constructed", v10, 2u);
  }

  return a1;
}

void sub_1003C90A0(_Unwind_Exception *a1)
{
  *v3 = off_1009991A0;
  *v2 = off_1009991A0;
  *v1 = off_1009991A0;
  _Unwind_Resume(a1);
}

void sub_1003C90FC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *a2;
    v8 = *(a2 + 8);
    v9 = *(a2 + 16);
    v10 = *(a2 + 96);
    v11 = *(a2 + 104);
    v12 = *(a2 + 112);
    *buf = 134219264;
    v47 = v7;
    v48 = 2048;
    v49 = v8;
    v50 = 2048;
    v51 = v9;
    v52 = 2048;
    v53 = v10;
    v54 = 2048;
    v55 = v11;
    v56 = 2048;
    v57 = v12;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#sa_algo_rangefilter,Measurement added with VIO: timestamp %3.2f s, range %3.2f m, uncertainty %3.2f m, position [%3.2f, %3.2f, %3.2f] m", buf, 0x3Eu);
  }

  v40 = 0x100000003;
  v39 = xmmword_10056EDA0;
  v38 = off_1009A8F78;
  v41 = &v42;
  sub_1003A8C00(&v38, 3, 1);
  sub_1003A8C50(&v38, 0.0);
  v35 = 0x100000004;
  v33 = off_1009A8EE8;
  v34 = xmmword_10056ED80;
  v36 = &v37;
  sub_1003A8C00(&v33, 4, 1);
  sub_1003A8C50(&v33, 0.0);
  for (i = 0; i != 3; ++i)
  {
    v14 = a2 + 8 * i;
    v15 = *(v14 + 96);
    *sub_1003AFDBC(&v38, i) = v15;
    v16 = *(v14 + 120);
    *sub_1003AFDBC(&v33, i) = v16;
  }

  v17 = *(a2 + 144);
  *sub_1003AFDBC(&v33, 3) = v17;
  sub_10041511C(&v33, buf);
  v44 = 0x100000003;
  *&v43[8] = xmmword_10056EDA0;
  *v43 = off_1009A8F78;
  v45[0] = &v45[1];
  sub_1003A90A8(buf, a1 + 104, v43);
  v30 = 0x100000003;
  v28 = off_1009A8F78;
  v29 = xmmword_10056EDA0;
  v31 = &v32;
  sub_1003A8EBC(&v38, v43, &v28);
  if (*a1)
  {
    v18 = *(a1 + 8);
    if (v18 == 1)
    {
      sub_1003C9650(a1, &v28);
    }

    else if (!v18)
    {
      v19 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *v43 = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#sa_algo_rangefilter,Range filter transitioning from non-VIO to VIO mode", v43, 2u);
      }

      sub_1003C9550(a1, *a2);
      sub_1003A8CFC(a1 + 40, &v28);
    }

    sub_1003C9934(a1, 0, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    *(a1 + 16) = *(a2 + 8);
    sub_1003A8CFC(a1 + 40, &v28);
    *a1 = 1;
    v20 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v21 = *(a1 + 16);
      v22 = *(a1 + 24);
      *v43 = 134218240;
      *&v43[4] = v21;
      *&v43[12] = 2048;
      *&v43[14] = v22;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#sa_algo_rangefilter,Initializing range filter with VIO: range %f m, uncertainty %f m", v43, 0x16u);
    }
  }

  v23 = *a2;
  *(a1 + 8) = 1;
  *(a1 + 32) = v23;
  v24 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v25 = *(a1 + 16);
    v26 = *(a1 + 24);
    *v43 = 134218754;
    *&v43[4] = v23;
    *&v43[12] = 2048;
    *&v43[14] = v25;
    *&v43[22] = 2048;
    v44 = v26;
    LOWORD(v45[0]) = 2080;
    *(v45 + 2) = "YES";
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#sa_algo_rangefilter,Filter state after meas with VIO: timestamp %3.2f s, range %3.2f m, uncertainty %3.2f m, with VIO: %s", v43, 0x2Au);
  }

  v27 = *(a1 + 24);
  *a3 = *(a1 + 8);
  *(a3 + 16) = v27;
  *(a3 + 8) = fmax(*(a3 + 8), 0.0);
}

void sub_1003C9550(uint64_t a1, double a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 24) + (a2 - v3) * 0.25;
  *(a1 + 24) = v4;
  v5 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 16);
    if (*(a1 + 8) == 1)
    {
      v7 = "YES";
    }

    else
    {
      v7 = "NO";
    }

    v8 = 134218754;
    v9 = v3;
    v10 = 2048;
    v11 = v6;
    v12 = 2048;
    v13 = v4;
    v14 = 2080;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#sa_algo_rangefilter,Filter state after propagation with time: timestamp %3.2f s, range %3.2f m, uncertainty %3.2f m, with VIO: %s", &v8, 0x2Au);
  }
}

void sub_1003C9650(uint64_t a1, uint64_t a2)
{
  v20 = 0x100000003;
  v18 = off_1009A8F78;
  v19 = xmmword_10056EDA0;
  v21 = &v22;
  sub_1003A920C(a2, a1 + 40, &v18);
  v30 = 0x100000003;
  v29 = xmmword_10056EDA0;
  v28 = off_1009A8F78;
  v31 = &v32;
  v34 = 0x100000134;
  *&buf[8] = xmmword_10056EEA0;
  *buf = off_1009A9168;
  v35[0] = &v35[1];
  v25 = 0x100000003;
  v23 = off_1009A8F78;
  v24 = xmmword_10056EDA0;
  v26 = &v27;
  sub_1003AFEC0(&v18, &v28, buf, &v23, "2");
  v5 = v4;
  sub_1003A8CFC(a1 + 40, a2);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  if (v7 + v6 * -1.73205081 <= 0.0)
  {
    v14 = sqrt(v5 * 0.5 * (v5 * 0.5) + v6 * v6);
    *(a1 + 24) = v14;
  }

  else
  {
    v8 = 0;
    v9 = (a1 + 232);
    v10 = 0.0;
    do
    {
      v11 = sqrt(v5 * v5 + (v7 + v6 * *v9) * (v7 + v6 * *v9) + v5 * -2.0 * (v7 + v6 * *v9) * v9[5]);
      *&buf[v8] = v11;
      v10 = v10 + v9[10] * v11;
      ++v9;
      v8 += 8;
    }

    while (v8 != 40);
    v12 = 0;
    v13 = 0.0;
    do
    {
      v13 = v13 + *(a1 + 352 + v12) * (*&buf[v12] - v10) * (*&buf[v12] - v10);
      v12 += 8;
    }

    while (v12 != 40);
    v14 = sqrt(v13);
    *(a1 + 16) = v10;
    *(a1 + 24) = v14;
    v7 = v10;
  }

  v15 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(a1 + 32);
    if (*(a1 + 8) == 1)
    {
      v17 = "YES";
    }

    else
    {
      v17 = "NO";
    }

    *buf = 134218754;
    *&buf[4] = v16;
    *&buf[12] = 2048;
    *&buf[14] = v7;
    *&buf[22] = 2048;
    v34 = *&v14;
    LOWORD(v35[0]) = 2080;
    *(v35 + 2) = v17;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#sa_algo_rangefilter,Filter state after propagation with pose: timestamp %3.2f s, range %3.2f m, uncertainty %3.2f m, with VIO: %s", buf, 0x2Au);
  }
}

void sub_1003C9934(uint64_t a1, int a2, double a3, double a4)
{
  v7 = a4 * a4;
  v9 = *(a1 + 16);
  v8 = *(a1 + 24);
  v10 = v7 + v8 * v8;
  v11 = sqrt(v10);
  v12 = (a3 - v9) / v11;
  if (a2 && v12 > 8.0)
  {
    v13 = qword_1009F9820;
    if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v16 = 134218496;
    v17 = v9;
    v18 = 2048;
    v19 = a3;
    v20 = 2048;
    v21 = v12;
    v14 = "#sa_algo_rangefilter,LoS->nLoS event detected by the range filter for a moving target: Previous range %f m, Current range %f m, Normalized change %f";
LABEL_9:
    _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, v14, &v16, 0x20u);
    return;
  }

  if ((a2 & 1) == 0 && v12 > 6.0)
  {
    v13 = qword_1009F9820;
    if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v16 = 134218496;
    v17 = v9;
    v18 = 2048;
    v19 = a3;
    v20 = 2048;
    v21 = v12;
    v14 = "#sa_algo_rangefilter,LoS->nLoS event detected by the range filter for a static target: Previous range %f m, Current range %f m, Normalized change %f";
    goto LABEL_9;
  }

  if (v12 >= -6.0)
  {
    *(a1 + 16) = (v7 * v9 + a3 * (v8 * v8)) / v10;
    *(a1 + 24) = v8 * a4 / v11;
  }

  else
  {
    v15 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      v16 = 134218496;
      v17 = v9;
      v18 = 2048;
      v19 = a3;
      v20 = 2048;
      v21 = v12;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "#sa_algo_rangefilter,nLos->LoS event detected by the range filter: Previous range %f m, Current range %f m, Normalized change %f", &v16, 0x20u);
      v15 = qword_1009F9820;
    }

    *(a1 + 16) = a3;
    *(a1 + 24) = a4;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 134218240;
      v17 = a3;
      v18 = 2048;
      v19 = a4;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#sa_algo_rangefilter,Re-initializing range filter: range %f m, uncertainty %f m", &v16, 0x16u);
    }
  }
}

void sub_1003C9B88(uint64_t a1@<X0>, double *a2@<X1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v10 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *a2;
    v12 = *(a2 + 1);
    v13 = *(a2 + 2);
    v14 = "YES";
    if (a3)
    {
      v15 = "YES";
    }

    else
    {
      v15 = "NO";
    }

    if (!a4)
    {
      v14 = "NO";
    }

    v33 = 134219010;
    v34 = v11;
    v35 = 2048;
    v36 = v12;
    v37 = 2048;
    v38 = v13;
    v39 = 2080;
    v40 = v15;
    v41 = 2080;
    v42 = v14;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#sa_algo_rangefilter,Measurement added without VIO: timestamp %3.2f s, range %3.2f m, uncertainty %3.2f m, isCompanionMoving %s, isDeviceMoving %s", &v33, 0x34u);
  }

  if (*a1)
  {
    if (a3 & 1) != 0 || (a4)
    {
      sub_1003C9550(a1, *a2);
      v19 = a2[1];
      v20 = a2[2];
      v21 = a1;
      v22 = a3;
    }

    else
    {
      v16 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        v17 = *(a2 + 1);
        v18 = *(a2 + 2);
        v33 = 134218240;
        v34 = v17;
        v35 = 2048;
        v36 = v18;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#sa_algo_rangefilter,Range filter update with stationary companion and device: range %f m, uncertainty %f m", &v33, 0x16u);
      }

      v19 = a2[1];
      v20 = a2[2];
      v21 = a1;
      v22 = 0;
    }

    sub_1003C9934(v21, v22, v19, v20);
  }

  else
  {
    v23 = *(a2 + 1);
    *(a1 + 16) = v23;
    v24 = *(a2 + 2);
    *(a1 + 24) = v24;
    *a1 = 1;
    v25 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v33 = 134218240;
      v34 = v23;
      v35 = 2048;
      v36 = v24;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#sa_algo_rangefilter,Initializing range filter without VIO: range %f m, uncertainty %f m", &v33, 0x16u);
    }
  }

  v27 = (a1 + 8);
  v26 = *(a1 + 8);
  *(a1 + 32) = *a2;
  v28 = qword_1009F9820;
  if (v26 == 1 && os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v33) = 0;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#sa_algo_rangefilter,Range filter transitioning from VIO to non-VIO mode", &v33, 2u);
    v28 = qword_1009F9820;
  }

  *v27 = 0;
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v30 = *(a1 + 24);
    v29 = *(a1 + 32);
    v31 = *(a1 + 16);
    v33 = 134218754;
    v34 = v29;
    v35 = 2048;
    v36 = v31;
    v37 = 2048;
    v38 = v30;
    v39 = 2080;
    v40 = "NO";
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#sa_algo_rangefilter,Filter state after meas without VIO: timestamp %3.2f s, range %3.2f m, uncertainty %3.2f m, with VIO: %s", &v33, 0x2Au);
  }

  v32 = *(a1 + 24);
  *a5 = *v27;
  *(a5 + 16) = v32;
  *(a5 + 8) = fmax(*(a5 + 8), 0.0);
}

uint64_t sub_1003C9E94()
{
  v1 = xmmword_10056F900;
  v2[0] = unk_10056F910;
  v2[1] = xmmword_10056F920;
  v2[2] = unk_10056F930;
  qword_1009F8098 = 0;
  unk_1009F80A0 = 0;
  qword_1009F8090 = 0;
  sub_10004EEB8(&qword_1009F8090, &v1, &v3, 4uLL);
  __cxa_atexit(sub_100045220, &qword_1009F8090, &_mh_execute_header);
  v1 = xmmword_10056F940;
  qword_1009F80B0 = 0;
  unk_1009F80B8 = 0;
  qword_1009F80A8 = 0;
  sub_10004EEB8(&qword_1009F80A8, &v1, v2, 1uLL);
  return __cxa_atexit(sub_100045220, &qword_1009F80A8, &_mh_execute_header);
}

_BYTE *sub_1003C9F98(_BYTE *a1)
{
  *a1 = 0;
  a1[8] = 0;
  a1[16] = 0;
  a1[64] = 0;
  a1[72] = 0;
  a1[96] = 0;
  a1[104] = 0;
  a1[152] = 0;
  a1[160] = 0;
  a1[392] = 0;
  a1[400] = 0;
  a1[416] = 0;
  a1[424] = 0;
  a1[432] = 0;
  v2 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#cl_algo,CLLocationBasedArrowFilter initialized", v4, 2u);
  }

  return a1;
}

void sub_1003CA044(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 400) = 0u;
  *(a2 + 416) = 0u;
  *(a2 + 368) = 0u;
  *(a2 + 384) = 0u;
  *(a2 + 336) = 0u;
  *(a2 + 352) = 0u;
  *(a2 + 304) = 0u;
  *(a2 + 320) = 0u;
  *(a2 + 272) = 0u;
  *(a2 + 288) = 0u;
  *(a2 + 240) = 0u;
  *(a2 + 256) = 0u;
  *(a2 + 208) = 0u;
  *(a2 + 224) = 0u;
  *(a2 + 176) = 0u;
  *(a2 + 192) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 160) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 412) = 4;
  *(a2 + 416) = 1;
  if (*(a1 + 96) == 1 && *(a1 + 152) == 1 && *(a1 + 64) == 1 && *(a1 + 432) == 1)
  {
    v4 = *(a1 + 48);
    if (v4 > 3.0)
    {
      v5 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_INFO))
      {
        v46 = 134217984;
        *v47 = v4;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "#cl_algo,#clcc,self location speed exceeds a brisk walking pace,inflating uncertainty,%.1lf", &v46, 0xCu);
      }

      *(a1 + 40) = fmin(*(a1 + 40), 200.0);
    }

    v6 = *(a1 + 136);
    if (v6 > 3.0)
    {
      v7 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_INFO))
      {
        v46 = 134217984;
        *v47 = v6;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "#cl_algo,#clcc,peer location speed exceeds a brisk walking pace,inflating uncertainty,%.1lf", &v46, 0xCu);
      }

      *(a1 + 128) = fmin(*(a1 + 128), 200.0);
    }

    if ((*(a1 + 432) & 1) == 0 || (*(a1 + 96) & 1) == 0)
    {
      goto LABEL_64;
    }

    v8 = *(a1 + 424);
    v9 = *(a1 + 392);
    v10 = v9 == 1 ? v8 - *(a1 + 168) : INFINITY;
    if ((*(a1 + 64) & 1) == 0 || (*(a1 + 152) & 1) == 0)
    {
      goto LABEL_64;
    }

    v11 = *(a1 + 72);
    v12 = vabdd_f64(v8, v11);
    v13 = *(a1 + 16);
    v14 = vabdd_f64(v8, v13);
    v15 = *(a1 + 104);
    v16 = vabdd_f64(v8, v15);
    v17 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
    {
      if (v9)
      {
        v45 = *(a1 + 168);
      }

      else
      {
        v45 = 0x7FF0000000000000;
      }

      v46 = 134219520;
      *v47 = v8;
      *&v47[8] = 2048;
      v48 = v11;
      v49 = 2048;
      v50 = v13;
      v51 = 2048;
      v52 = v15;
      v53 = 2048;
      v54 = v45;
      v55 = 2048;
      v56 = v16;
      v57 = 2048;
      v58 = v14;
      _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "#cl_algo,event timestamp: %f, heading timestamp: %f, self loc timestamp: %f, peer loc timestamp: %f, range timestamp: %f, peer loc age, %.1lf, self loc age, %.1lf", &v46, 0x48u);
    }

    if (v12 > 1.0 || v14 > 12.0 || v16 > 12.0)
    {
      v22 = qword_1009F9820;
      if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v46 = 134218496;
      *v47 = v12;
      *&v47[8] = 2048;
      v48 = v14;
      v49 = 2048;
      v50 = v16;
      v23 = "#cl_algo,CLLocationBasedArrowFilter,data stale,not populating a solution,heading_age,%.1lf,abs_self_location_age_s,%.1lf,abs_peer_location_age_s,%.1lf";
      v24 = v22;
      v25 = OS_LOG_TYPE_DEFAULT;
      v26 = 32;
      goto LABEL_58;
    }

    if ((*(a1 + 152) & 1) == 0)
    {
      goto LABEL_64;
    }

    CLClientGetDistanceCoordinates();
    v19 = v18;
    v20 = *(a1 + 392);
    if (v20 == 1)
    {
      v21 = *(a1 + 176);
    }

    else
    {
      v21 = INFINITY;
    }

    v27 = 2.0;
    if (*(a1 + 416) == 1 && *(a1 + 432) == 1 && vabdd_f64(*(a1 + 424), *(a1 + 400)) < 12.0)
    {
      v28 = *(a1 + 408);
      v29 = 2.0;
      if (v28 == 1)
      {
        v29 = 1.0;
      }

      if (v28)
      {
        v27 = v29;
      }

      else
      {
        v27 = 0.5;
      }
    }

    if (v10 > 60.0)
    {
      LOBYTE(v20) = 0;
    }

    if ((v20 & (v21 + v10 * 2.0 < v18)) != 0)
    {
      v30 = v21 + v10 * 2.0;
    }

    else
    {
      v30 = v18;
    }

    v31 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_INFO))
    {
      v46 = 134218752;
      *v47 = v19;
      *&v47[8] = 2048;
      v48 = v21;
      v49 = 2048;
      v50 = fabs(v10);
      v51 = 2048;
      v52 = v30;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "#cl_algo,CLLocationBasedArrowFilter,location_range_m,%.1lf,uwb_range_m,%.1lf,abs_uwb_range_age,%.1lf,fused_range_m,%.1lf", &v46, 0x2Au);
    }

    v32 = *(a1 + 8) == 1 ? *a1 : 0;
    if ((*(a1 + 432) & 1) == 0 || (v33 = sqrt((*(a1 + 128) + v27 * v16) * (*(a1 + 128) + v27 * v16) + (*(a1 + 40) + v14 * 2.0) * (*(a1 + 40) + v14 * 2.0)), v34 = *(a1 + 424), v35 = v19, *(a2 + 8) = v32, *(a2 + 16) = v34, *(a2 + 24) = v35, *(a2 + 28) = 4, *(a2 + 56) = 0, *(a2 + 32) = 0, *(a2 + 40) = 0, *(a2 + 60) = 0, *(a2 + 64) = 0, *(a2 + 68) = 0, *(a2 + 72) = 0, *(a2 + 80) = 0, *(a2 + 88) = 0, *(a2 + 96) = 0, *(a2 + 104) = 0, v36 = v33 / 1.41421356, *(a2 + 112) = v33 / 1.41421356, *(a2 + 136) = 0, *(a2 + 120) = 1, *(a2 + 128) = 0, *(a2 + 160) = 0, *(a2 + 168) = 0u, *(a2 + 184) = 0u, *(a2 + 200) = 0u, *(a2 + 216) = 0u, *(a2 + 232) = 0, *(a2 + 240) = 1, (*(a1 + 152) & 1) == 0) || (v37 = sub_1003CA68C(a1 + 16, a1 + 104), (*(a1 + 96) & 1) == 0))
    {
LABEL_64:
      sub_1000195BC();
    }

    v38 = fmod(v37 + 360.0, 360.0);
    v39 = fmod(v38 - *(a1 + 80) + 180.0, 360.0);
    *(a2 + 256) = 1;
    if (v39 < 0.0)
    {
      v39 = v39 + 360.0;
    }

    *(a2 + 248) = v39 + -180.0;
    v40 = v36 / v30 * 57.2957795;
    *(a2 + 384) = v40;
    *(a2 + 392) = 1;
    *(a2 + 368) = sqrt(*(a1 + 88) * *(a1 + 88) + v40 * v40);
    *(a2 + 376) = 1;
    v41 = *(a1 + 56);
    if (v41 == 1)
    {
      v42 = *(a1 + 144);
    }

    else
    {
      v42 = 0;
    }

    *(a2 + 400) = v42 & 1 | 0x100;
    v43 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_INFO))
    {
      v44 = *(a1 + 144);
      v46 = 67109632;
      *v47 = v42 & 1;
      *&v47[4] = 1024;
      *&v47[6] = v41;
      LOWORD(v48) = 1024;
      *(&v48 + 2) = v44;
      v23 = "#cl_algo,#gri,findee,CLLocationBasedArrowFilter,producedInGoodEnvironmentalConditions,%d,self,%d,peer,%d";
      v24 = v43;
      v25 = OS_LOG_TYPE_INFO;
      v26 = 20;
LABEL_58:
      _os_log_impl(&_mh_execute_header, v24, v25, v23, &v46, v26);
    }
  }
}

long double sub_1003CA68C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8) * 3.14159265 / 180.0;
  v3 = *(a2 + 8) * 3.14159265 / 180.0;
  v4 = __sincos_stret(*(a2 + 16) * 3.14159265 / 180.0 - *(a1 + 16) * 3.14159265 / 180.0);
  v5 = __sincos_stret(v3);
  v6 = __sincos_stret(v2);
  return atan2(v5.__cosval * v4.__sinval, -(v6.__sinval * v5.__cosval) * v4.__cosval + v6.__cosval * v5.__sinval) * 180.0 / 3.14159265;
}

__n128 sub_1003CA740(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  if (*(a1 + 152) == 1)
  {
    *(a1 + 129) = *(a2 + 25);
    *(a1 + 120) = v3;
    *(a1 + 104) = result;
  }

  else
  {
    *(a1 + 136) = *(a2 + 32);
    *(a1 + 120) = v3;
    *(a1 + 104) = result;
    *(a1 + 152) = 1;
  }

  return result;
}

uint64_t sub_1003CA784(uint64_t result, uint64_t a2)
{
  v2 = *(result + 96);
  v3 = *(a2 + 16);
  *(result + 72) = *a2;
  *(result + 88) = v3;
  if ((v2 & 1) == 0)
  {
    *(result + 96) = 1;
  }

  v4 = *a2;
  if (*(result + 432) != 1 || *(result + 424) < v4)
  {
    *(result + 424) = v4;
    *(result + 432) = 1;
  }

  return result;
}

uint64_t sub_1003CA7D0(uint64_t result, __int128 *a2)
{
  if (*(result + 64) == 1)
  {
    v2 = *a2;
    v3 = a2[1];
    *(result + 41) = *(a2 + 25);
    *(result + 16) = v2;
    *(result + 32) = v3;
  }

  else
  {
    v4 = *a2;
    v5 = a2[2];
    *(result + 32) = a2[1];
    *(result + 48) = v5;
    *(result + 16) = v4;
    *(result + 64) = 1;
  }

  v6 = *a2;
  if (*(result + 432) != 1 || *(result + 424) < v6)
  {
    *(result + 424) = v6;
    *(result + 432) = 1;
  }

  return result;
}

uint64_t sub_1003CA834(uint64_t result, uint64_t a2)
{
  v2 = *(result + 392);
  v4 = *(a2 + 16);
  v3 = *(a2 + 32);
  *(result + 160) = *a2;
  *(result + 176) = v4;
  *(result + 192) = v3;
  v5 = *(a2 + 96);
  v7 = *(a2 + 48);
  v6 = *(a2 + 64);
  *(result + 240) = *(a2 + 80);
  *(result + 256) = v5;
  *(result + 208) = v7;
  *(result + 224) = v6;
  v8 = *(a2 + 160);
  v10 = *(a2 + 112);
  v9 = *(a2 + 128);
  *(result + 304) = *(a2 + 144);
  *(result + 320) = v8;
  *(result + 272) = v10;
  *(result + 288) = v9;
  v12 = *(a2 + 192);
  v11 = *(a2 + 208);
  v13 = *(a2 + 176);
  *(result + 384) = *(a2 + 224);
  *(result + 352) = v12;
  *(result + 368) = v11;
  *(result + 336) = v13;
  if ((v2 & 1) == 0)
  {
    *(result + 392) = 1;
  }

  v14 = *(a2 + 8);
  if (*(result + 432) != 1 || *(result + 424) < v14)
  {
    *(result + 424) = v14;
    *(result + 432) = 1;
  }

  return result;
}

uint64_t sub_1003CA8B8(uint64_t result, int *a2, double a3)
{
  if (*(result + 432) != 1 || *(result + 424) < a3)
  {
    *(result + 424) = a3;
    *(result + 432) = 1;
  }

  v3 = *a2;
  *(result + 400) = a3;
  *(result + 408) = v3;
  *(result + 416) = 1;
  return result;
}

uint64_t sub_1003CA8F4(uint64_t result, double a2, double a3, double a4, double a5)
{
  *result = off_1009A9C50;
  *(result + 8) = a2;
  *(result + 16) = a3;
  *(result + 24) = a4;
  *(result + 32) = a5;
  return result;
}

uint64_t sub_1003CA91C(double *a1, __int128 **a2)
{
  v4 = (*(*a1 + 16))(a1);
  v5 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 134217984;
    *&v9[4] = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#dec-proc, WRTT: Estimating shouldUnlock with unlockThreshold: %f", v9, 0xCu);
  }

  (*(*a1 + 32))(v9, a1);
  v6 = sub_1003CAA98(a1, v9, a2, v4);
  v7 = *v9;
  *v9 = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  return v6;
}

void sub_1003CAA74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    sub_1004CB1C8(a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003CAA98(double *a1, uint64_t *a2, __int128 **a3, double a4)
{
  v4 = *a3;
  v5 = a3[1];
  if (*a3 == v5)
  {
    return 0;
  }

  if (!*a2)
  {
    sub_1004CB200();
  }

  v9 = 0;
  __src = 0;
  v47 = 0;
  v48 = 0;
  do
  {
    v10 = *(v4 + 16);
    if (a1[1] < v10 && a1[2] > v10)
    {
      if (v9 >= v48)
      {
        v22 = __src;
        v23 = v9 - __src;
        v24 = 0x34F72C234F72C235 * ((v9 - __src) >> 3);
        v25 = v24 + 1;
        if ((v24 + 1) > 0x11A7B9611A7B961)
        {
          sub_100019B38();
        }

        if (0x69EE58469EE5846ALL * ((v48 - __src) >> 3) > v25)
        {
          v25 = 0x69EE58469EE5846ALL * ((v48 - __src) >> 3);
        }

        if ((0x34F72C234F72C235 * ((v48 - __src) >> 3)) >= 0x8D3DCB08D3DCB0)
        {
          v26 = 0x11A7B9611A7B961;
        }

        else
        {
          v26 = v25;
        }

        if (v26)
        {
          sub_1001BDD74(&__src, v26);
        }

        v27 = 8 * ((v9 - __src) >> 3);
        v28 = *v4;
        v29 = *(v4 + 32);
        *(v27 + 16) = *(v4 + 16);
        *(v27 + 32) = v29;
        *v27 = v28;
        v30 = *(v4 + 48);
        v31 = *(v4 + 64);
        v32 = *(v4 + 96);
        *(v27 + 80) = *(v4 + 80);
        *(v27 + 96) = v32;
        *(v27 + 48) = v30;
        *(v27 + 64) = v31;
        v33 = *(v4 + 112);
        v34 = *(v4 + 128);
        v35 = *(v4 + 160);
        *(v27 + 144) = *(v4 + 144);
        *(v27 + 160) = v35;
        *(v27 + 112) = v33;
        *(v27 + 128) = v34;
        v36 = *(v4 + 176);
        v37 = *(v4 + 192);
        v38 = *(v4 + 208);
        *(v27 + 224) = *(v4 + 224);
        *(v27 + 192) = v37;
        *(v27 + 208) = v38;
        *(v27 + 176) = v36;
        v9 = 232 * v24 + 232;
        v39 = (232 * v24 - v23);
        memcpy((v27 - v23), v22, v23);
        v40 = __src;
        __src = v39;
        v47 = v9;
        v48 = 0;
        if (v40)
        {
          operator delete(v40);
        }
      }

      else
      {
        v11 = *v4;
        v12 = *(v4 + 32);
        *(v9 + 16) = *(v4 + 16);
        *(v9 + 32) = v12;
        *v9 = v11;
        v13 = *(v4 + 48);
        v14 = *(v4 + 64);
        v15 = *(v4 + 96);
        *(v9 + 80) = *(v4 + 80);
        *(v9 + 96) = v15;
        *(v9 + 48) = v13;
        *(v9 + 64) = v14;
        v16 = *(v4 + 112);
        v17 = *(v4 + 128);
        v18 = *(v4 + 160);
        *(v9 + 144) = *(v4 + 144);
        *(v9 + 160) = v18;
        *(v9 + 112) = v16;
        *(v9 + 128) = v17;
        v19 = *(v4 + 176);
        v20 = *(v4 + 192);
        v21 = *(v4 + 208);
        *(v9 + 224) = *(v4 + 224);
        *(v9 + 192) = v20;
        *(v9 + 208) = v21;
        *(v9 + 176) = v19;
        v9 += 232;
      }

      v47 = v9;
    }

    v4 += 232;
  }

  while (v4 != v5);
  v41 = *a2;
  (*(*a1 + 48))(__p, a1, &__src);
  (*(*v41 + 16))(v45, v41, __p, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v42 = LOBYTE(v45[0]);
  if (__src)
  {
    v47 = __src;
    operator delete(__src);
  }

  return v42;
}

void sub_1003CAD48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
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

uint64_t *sub_1003CAD94@<X0>(const void **a1@<X1>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return sub_1003CADC8(a2, *a1, a1[1], 0x34F72C234F72C235 * ((a1[1] - *a1) >> 3));
}

uint64_t *sub_1003CADC8(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1003CAE44(result, a4);
  }

  return result;
}

void sub_1003CAE28(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003CAE44(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x11A7B9611A7B962)
  {
    sub_1001BDD74(a1, a2);
  }

  sub_100019B38();
}

void sub_1003CAE94(uint64_t a1@<X0>, float32x4_t *a2@<X1>, _BYTE *a3@<X2>, _BYTE *a4@<X8>)
{
  *a3 = 0;
  v9 = *(a1 + 280);
  if (!v9 || *a2->i64 > *(*(*(a1 + 248) + (((v9 + *(a1 + 272) - 1) >> 2) & 0x3FFFFFFFFFFFFFF8)) + (((v9 + *(a1 + 272) - 1) & 0x1F) << 7)))
  {
    v10 = *(a1 + 288);
    v11 = a2[5].i32[0];
    *(a1 + 288) = v11;
    if (v10 != v11)
    {
      switch(v11)
      {
        case 2:
          v12 = qword_1009F9820;
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
          {
            v17 = a2->i64[0];
            *buf = 134217984;
            *&buf[4] = v17;
            v14 = "#findalgs-rangeposeinterpolator,VIO Tracking State changed to Normal at %f s";
            goto LABEL_16;
          }

          break;
        case 1:
          v12 = qword_1009F9820;
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
          {
            v16 = a2->i64[0];
            *buf = 134217984;
            *&buf[4] = v16;
            v14 = "#findalgs-rangeposeinterpolator,VIO Tracking State changed to Limited at %f s";
            goto LABEL_16;
          }

          break;
        case 0:
          v12 = qword_1009F9820;
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
          {
            v13 = a2->i64[0];
            *buf = 134217984;
            *&buf[4] = v13;
            v14 = "#findalgs-rangeposeinterpolator,VIO Tracking State changed to Not Available at %f s";
LABEL_16:
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v14, buf, 0xCu);
          }

          break;
      }
    }

    v18 = a2[5].i32[0];
    if (v10 == 2 && v18 != 2)
    {
      v20 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#findalgs-rangeposeinterpolator,VIO Tracking not normal anymore - resetting", buf, 2u);
      }

      if (*(a1 + 232) == 1)
      {
        v21 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#findalgs-rangeposeinterpolator,VIO Tracking not normal before the cached measurement can be interpolated - passing the cached measurement to the range filter without VIO", buf, 2u);
        }
      }

      *a3 = 1;
      sub_1003CB360(a1);
      v18 = a2[5].i32[0];
    }

    if (v18 == 2)
    {
      if (a2[5].i8[4] == 1)
      {
        v22 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          v23 = a2->i64[0];
          v24 = "NO";
          if (a2[5].i8[4])
          {
            v25 = "YES";
          }

          else
          {
            v25 = "NO";
          }

          if (a2[5].i8[5])
          {
            v24 = "YES";
          }

          *buf = 134218498;
          *&buf[4] = v23;
          *&buf[12] = 2080;
          *&buf[14] = v25;
          *&buf[22] = 2080;
          *&buf[24] = v24;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#findalgs-rangeposeinterpolator,VIO reported relocalization event at %f s, MAJOR: %s, MINOR: %s - resetting", buf, 0x20u);
        }

        *a3 = 1;
        sub_1003CB360(a1);
      }

      else
      {
        if (a2[5].i8[5] == 1)
        {
          v26 = qword_1009F9820;
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
          {
            v27 = a2->i64[0];
            *buf = 134217984;
            *&buf[4] = v27;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#findalgs-rangeposeinterpolator,VIO reported MINOR relocalization event at %f s", buf, 0xCu);
          }
        }

        v28 = 0;
        v29 = a2[1];
        v30 = a2[2];
        v31 = a2[3];
        v32 = a2[4];
        v41[0] = xmmword_10056EE60;
        v41[1] = xmmword_10056EE70;
        v41[2] = xmmword_10056EE80;
        v41[3] = xmmword_10056EE90;
        do
        {
          *&buf[v28 * 16] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v29, COERCE_FLOAT(v41[v28])), v30, *&v41[v28], 1), v31, v41[v28], 2), v32, v41[v28], 3);
          ++v28;
        }

        while (v28 != 4);
        v33 = *buf;
        v34 = *&buf[16];
        v35 = v43;
        v36 = v44;
        v37 = a2[5].i32[0];
        v38 = a2[5].i16[2];
        *buf = a2->i64[0];
        *&buf[16] = v33;
        v43 = v34;
        v44 = v35;
        v45 = v36;
        v46 = v37;
        v47 = v38;
        v48 = 0;
        v49 = 0;
        v50 = 0;
        v51 = 0;
        v52 = 0;
        v53 = 0;
        sub_1003AAEB4((a1 + 240), buf);
      }
    }

    sub_1003CB3F0(a1, a4);
    sub_1003CBAA0(a1);
    return;
  }

  v15 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    v39 = *(a1 + 280) + *(a1 + 272) - 1;
    v40 = *(*(*(a1 + 248) + ((v39 >> 2) & 0x3FFFFFFFFFFFFFF8)) + ((v39 & 0x1F) << 7));
    *buf = 134217984;
    *&buf[4] = v40;
    _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "#findalgs-rangeposeinterpolator,Received pose earlier than the last pose in history with timestamp: %f - pose rejected", buf, 0xCu);
  }

  *a4 = 0;
  a4[72] = 0;
}

void sub_1003CB360(uint64_t a1)
{
  *(a1 + 288) = 0;
  if (*(a1 + 232) == 1)
  {
    *(a1 + 232) = 0;
  }

  v2 = *(a1 + 248);
  v3 = *(a1 + 256);
  *(a1 + 280) = 0;
  v4 = (v3 - v2) >> 3;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v5 = *(a1 + 256);
      v2 = (*(a1 + 248) + 8);
      *(a1 + 248) = v2;
      v4 = (v5 - v2) >> 3;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v6 = 16;
  }

  else
  {
    if (v4 != 2)
    {
      return;
    }

    v6 = 32;
  }

  *(a1 + 272) = v6;
}

void sub_1003CB3F0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 72) = 0;
  if (*(a1 + 232) != 1)
  {
    return;
  }

  v4 = *(a1 + 280);
  if (!v4)
  {
    return;
  }

  v5 = *(a1 + 8);
  v6 = *(a1 + 248);
  v7 = *(a1 + 256);
  if (v7 == v6)
  {
    goto LABEL_20;
  }

  v8 = *(a1 + 272);
  v9 = (v8 >> 2) & 0x3FFFFFFFFFFFFFF8;
  v10 = (v6 + v9);
  v11 = *(v6 + v9) + ((v8 & 0x1F) << 7);
  v12 = v8 + v4;
  v13 = ((v8 + v4) >> 2) & 0x3FFFFFFFFFFFFFF8;
  v14 = *(a1 + 16);
  v15 = *(v6 + v13) + ((v12 & 0x1F) << 7);
  *buf = v6 + v9;
  *&buf[8] = v11;
  if (v15 != v11)
  {
    v16 = ((v15 - *(v6 + v13)) >> 7) + 4 * (v13 - v9);
    v17 = v11 - *(v6 + v9);
    v18 = v16 - (v17 >> 7);
    if (v16 != v17 >> 7)
    {
      do
      {
        v19 = v18 >> 1;
        v20 = sub_1003B0628(buf, v18 >> 1);
        if (v5 >= *v21)
        {
          v22 = v21 + 16;
          if ((v21 - *v20 + 128) == 4096)
          {
            v23 = v20[1];
            ++v20;
            v22 = v23;
          }

          *buf = v20;
          *&buf[8] = v22;
          v19 = v18 + ~v19;
        }

        v18 = v19;
      }

      while (v19);
      v10 = *buf;
      v11 = *&buf[8];
      v8 = *(a1 + 272);
      v6 = *(a1 + 248);
      v7 = *(a1 + 256);
    }
  }

  if (v7 == v6)
  {
    if (v11)
    {
      v24 = 0;
      goto LABEL_17;
    }

LABEL_20:
    v30 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      v31 = *(*(*(a1 + 248) + ((*(a1 + 272) >> 2) & 0x3FFFFFFFFFFFFFF8)) + ((*(a1 + 272) & 0x1FLL) << 7));
      *buf = 134218240;
      *&buf[4] = v5;
      *&buf[12] = 2048;
      *&buf[14] = v31;
      _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "#findalgs-rangeposeinterpolator,Measurement at %f s earlier than the first pose in history at %f s - skipping interpolation and removing range measurement", buf, 0x16u);
    }

    goto LABEL_41;
  }

  if (*(v6 + ((v8 >> 2) & 0x3FFFFFFFFFFFFFF8)) + ((v8 & 0x1F) << 7) == v11)
  {
    goto LABEL_20;
  }

  v24 = *(v6 + (((*(a1 + 280) + v8) >> 2) & 0x3FFFFFFFFFFFFFF8)) + (((*(a1 + 280) + v8) & 0x1F) << 7);
LABEL_17:
  if (v24 != v11)
  {
    v25 = (v11 - *v10) >> 7;
    if (v25 < 2)
    {
      v35 = 32 - v25;
      v27 = &v10[-(v35 >> 5)];
      v28 = *v27;
      v29 = ~v35 & 0x1FLL;
    }

    else
    {
      v26 = v25 - 1;
      v27 = &v10[v26 >> 5];
      v28 = *v27;
      v29 = v26 & 0x1F;
    }

    v36 = v28 + (v29 << 7);
    v37 = (v5 - *v36) / (*v11 - *v36);
    v88 = v37;
    v84 = *(v36 + 64);
    *v38.i64 = sub_1003ADBF0(*(v36 + 16), *(v36 + 32), *(v36 + 48));
    v86 = v38;
    v83 = *(v11 + 64);
    *v39.i64 = sub_1003ADBF0(*(v11 + 16), *(v11 + 32), *(v11 + 48));
    v40 = vmulq_f32(v86, v39);
    v41 = vextq_s8(v40, v40, 8uLL);
    *v40.f32 = vadd_f32(*v40.f32, *v41.f32);
    v40.f32[0] = vaddv_f32(*v40.f32);
    v41.i64[0] = 0;
    v42 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vcgeq_f32(v40, v41)), 0), vnegq_f32(v39), v39);
    v43 = 1.0;
    v44 = 1.0 - v88;
    v45 = vsubq_f32(v86, v42);
    v46 = vmulq_f32(v45, v45);
    v82 = v42;
    v47 = vaddq_f32(v86, v42);
    v48 = vmulq_f32(v47, v47);
    v49 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v46.i8, *&vextq_s8(v46, v46, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v48.i8, *&vextq_s8(v48, v48, 8uLL)))));
    v50 = v49 + v49;
    v51 = (v49 + v49) == 0.0;
    v52 = 1.0;
    if (!v51)
    {
      v52 = sinf(v50) / v50;
    }

    v53 = v52;
    v54 = vrecpe_f32(LODWORD(v52));
    v55 = vmul_f32(v54, vrecps_f32(LODWORD(v53), v54));
    LODWORD(v56) = vmul_f32(v55, vrecps_f32(LODWORD(v53), v55)).u32[0];
    if ((v44 * v50) != 0.0)
    {
      v80 = v56;
      v55.f32[0] = sinf(v44 * v50);
      v56 = v80;
      v43 = v55.f32[0] / (v44 * v50);
    }

    v55.f32[0] = v44 * (v56 * v43);
    v57 = vdupq_lane_s32(v55, 0);
    v58 = v88;
    v59 = v50 * v88;
    v60 = 1.0;
    if (v59 != 0.0)
    {
      v79 = v57;
      v81 = v56;
      v61 = sinf(v59);
      v57 = v79;
      v56 = v81;
      v58 = v88;
      v60 = v61 / v59;
    }

    v62 = vmlaq_f32(vmulq_n_f32(v82, (v56 * v60) * v58), v86, v57);
    v63 = vmulq_f32(v62, v62);
    v64 = vadd_f32(*v63.i8, *&vextq_s8(v63, v63, 8uLL));
    if (vaddv_f32(v64) == 0.0)
    {
      v65 = xmmword_10056EE90;
    }

    else
    {
      v66 = vadd_f32(v64, vdup_lane_s32(v64, 1)).u32[0];
      v67 = vrsqrte_f32(v66);
      v68 = vmul_f32(v67, vrsqrts_f32(v66, vmul_f32(v67, v67)));
      v65 = vmulq_n_f32(v62, vmul_f32(v68, vrsqrts_f32(v66, vmul_f32(v68, v68))).f32[0]);
    }

    v69 = vmlaq_n_f32(v84, vsubq_f32(v83, v84), v58);
    v69.i32[3] = v65.i32[0];
    v87 = vcvtq_f64_f32(*v69.f32);
    v89 = vcvt_hight_f64_f32(v69);
    v85 = vcvtq_f64_f32(*&vextq_s8(v65, v65, 4uLL));
    v70 = *&v65.i32[3];
    v71 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134220032;
      *&buf[4] = v14;
      *&buf[12] = 2048;
      *&buf[14] = v5;
      v91 = 2048;
      v92 = v87.f64[0];
      v93 = 2048;
      v94 = v87.f64[1];
      v95 = 2048;
      v96 = v89.f64[0];
      v97 = 2048;
      v98 = v89.f64[1];
      v99 = 2048;
      v100 = v85.f64[0];
      v101 = 2048;
      v102 = v85.f64[1];
      v103 = 2048;
      v104 = v70;
      _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "#findalgs-rangeposeinterpolator,Passing range measurement to batch filter and range filter, range: %0.2f m, timestamp: %f s, device position:[%0.2f,%0.2f,%0.2f], device quat:[%0.2f,%0.2f,%0.2f,%0.2f]", buf, 0x5Cu);
    }

    *a2 = v5;
    *(a2 + 8) = v14;
    *(a2 + 16) = v87;
    *(a2 + 32) = v89;
    *(a2 + 48) = v85;
    *(a2 + 64) = v70;
    *(a2 + 72) = 1;
    v72 = *(a1 + 248);
    v73 = (v72 + 8 * (*(a1 + 272) >> 5));
    if (*(a1 + 256) == v72)
    {
      v74 = 0;
    }

    else
    {
      v74 = *v73 + ((*(a1 + 272) & 0x1FLL) << 7);
    }

    sub_1003AF1E0((a1 + 240), v73, v74, v27, v36);
    v75 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
    {
      v76 = *(a1 + 248);
      v77 = *(*(v76 + ((*(a1 + 272) >> 2) & 0x3FFFFFFFFFFFFFF8)) + ((*(a1 + 272) & 0x1FLL) << 7));
      v78 = *(*(v76 + (((*(a1 + 272) + *(a1 + 280) - 1) >> 2) & 0x3FFFFFFFFFFFFFF8)) + (((*(a1 + 272) + *(a1 + 280) - 1) & 0x1F) << 7));
      *buf = 134218240;
      *&buf[4] = v77;
      *&buf[12] = 2048;
      *&buf[14] = v78;
      _os_log_debug_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEBUG, "#findalgs-rangeposeinterpolator,Pose history now between %f s and %f s", buf, 0x16u);
    }

LABEL_41:
    if (*(a1 + 232) == 1)
    {
      *(a1 + 232) = 0;
    }

    return;
  }

  v32 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    v33 = *(a1 + 280) + *(a1 + 272) - 1;
    v34 = *(*(*(a1 + 248) + ((v33 >> 2) & 0x3FFFFFFFFFFFFFF8)) + ((v33 & 0x1F) << 7));
    *buf = 134218240;
    *&buf[4] = v5;
    *&buf[12] = 2048;
    *&buf[14] = v34;
    _os_log_debug_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEBUG, "#findalgs-rangeposeinterpolator,Measurement at %f s later than the last pose in history at %f s - skipping interpolation", buf, 0x16u);
  }
}

void sub_1003CBAA0(void *a1)
{
  v1 = a1[35];
  if (v1)
  {
    v3 = a1[34];
    v4 = *(*(a1[31] + (((v1 + v3 - 1) >> 2) & 0x3FFFFFFFFFFFFFF8)) + (((v1 + v3 - 1) & 0x1F) << 7)) - *(*(a1[31] + ((v3 >> 2) & 0x3FFFFFFFFFFFFFF8)) + ((v3 & 0x1F) << 7));
    if (v4 > 5.0)
    {
      v5 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *v32 = 134217984;
        *&v32[4] = v4;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#findalgs-rangeposeinterpolator,Pose history spans %f s - pruning down past poses from history", v32, 0xCu);
      }

      v6 = a1[34];
      v7 = (v6 >> 2) & 0x3FFFFFFFFFFFFFF8;
      v8 = a1[31];
      v9 = a1[32];
      v10 = (v8 + v7);
      if (v9 == v8)
      {
        v15 = 0;
        v27 = 0;
        v26 = (v8 + 8 * (v6 >> 5));
      }

      else
      {
        v11 = v6 + a1[35];
        v12 = *(*(v8 + (((v11 - 1) >> 2) & 0x3FFFFFFFFFFFFFF8)) + (((v11 - 1) & 0x1F) << 7));
        v13 = a1[34] & 0x1FLL;
        v14 = (v11 >> 2) & 0x3FFFFFFFFFFFFFF8;
        v15 = *v10 + (v13 << 7);
        v16 = v11 & 0x1F;
        v17 = *(v8 + v14) + (v16 << 7);
        *v32 = v8 + v7;
        *&v32[8] = v15;
        if (v17 != v15)
        {
          v18 = v16 | (4 * (v14 - v7));
          v19 = v18 - v13;
          if (v18 != v13)
          {
            v20 = v12 + -2.0;
            do
            {
              v21 = v19 >> 1;
              v22 = sub_1003B0628(v32, v19 >> 1);
              if (v20 >= *v23)
              {
                v24 = v23 + 16;
                if ((v23 - *v22 + 128) == 4096)
                {
                  v25 = v22[1];
                  ++v22;
                  v24 = v25;
                }

                *v32 = v22;
                *&v32[8] = v24;
                v21 = v19 + ~v21;
              }

              v19 = v21;
            }

            while (v21);
            v10 = *v32;
            v15 = *&v32[8];
            v6 = a1[34];
            v8 = a1[31];
            v9 = a1[32];
          }
        }

        v26 = (v8 + 8 * (v6 >> 5));
        if (v9 == v8)
        {
          v27 = 0;
        }

        else
        {
          v27 = *v26 + ((v6 & 0x1F) << 7);
        }
      }

      sub_1003AF1E0(a1 + 30, v26, v27, v10, v15);
      v28 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        v29 = a1[31];
        v30 = *(*(v29 + ((a1[34] >> 2) & 0x3FFFFFFFFFFFFFF8)) + ((a1[34] & 0x1FLL) << 7));
        v31 = *(*(v29 + (((a1[34] + a1[35] - 1) >> 2) & 0x3FFFFFFFFFFFFFF8)) + (((a1[34] + a1[35] - 1) & 0x1F) << 7));
        *v32 = 134218240;
        *&v32[4] = v30;
        *&v32[12] = 2048;
        *&v32[14] = v31;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#findalgs-rangeposeinterpolator,Pose history now between %f s and %f s", v32, 0x16u);
      }
    }
  }
}

void sub_1003CBD5C(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (*(a2 + 181) != 1 || *(a2 + 180) > 2u)
  {
    v6 = *(a1 + 232);
    v8 = *(a2 + 16);
    v7 = *(a2 + 32);
    *a1 = *a2;
    *(a1 + 16) = v8;
    *(a1 + 32) = v7;
    v9 = *(a2 + 96);
    v11 = *(a2 + 48);
    v10 = *(a2 + 64);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 96) = v9;
    *(a1 + 48) = v11;
    *(a1 + 64) = v10;
    v12 = *(a2 + 160);
    v14 = *(a2 + 112);
    v13 = *(a2 + 128);
    *(a1 + 144) = *(a2 + 144);
    *(a1 + 160) = v12;
    *(a1 + 112) = v14;
    *(a1 + 128) = v13;
    v16 = *(a2 + 192);
    v15 = *(a2 + 208);
    v17 = *(a2 + 176);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 192) = v16;
    *(a1 + 208) = v15;
    *(a1 + 176) = v17;
    if ((v6 & 1) == 0)
    {
      *(a1 + 232) = 1;
    }

    sub_1003CB3F0(a1, a3);
  }

  else
  {
    v18 = qword_1009F9820;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      if ((*(a2 + 181) & 1) == 0)
      {
        sub_1000195BC();
      }

      v20 = *(a2 + 180);
      v21[0] = 67109120;
      v21[1] = v20;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#findalgs-rangeposeinterpolator,mmsValStatus %d does not pass check, rejecting range result event", v21, 8u);
    }

    *a3 = 0;
    a3[72] = 0;
  }
}

void sub_1003CBF4C(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v5 = a2[1];
  if (v5 == *a2)
  {
    sub_1004CB354();
  }

  if (*(a3 + 200) == 1)
  {
    if (*(a3 + 80))
    {
      if ((*(a1 + 24) & 1) == 0)
      {
        v8 = *(a3 + 56);
        *(a1 + 9) = *(a3 + 65);
        *a1 = v8;
        if ((*(a1 + 24) & 1) == 0)
        {
          sub_1004CB2D0();
        }
      }

      if (*(a3 + 80))
      {
        v9 = sub_100400C60((a3 + 56), a1);
        v38[0] = *a3;
        v38[1] = v9;
        v38[2] = v10;
        v38[3] = v11;
        v38[4] = *(a3 + 88);
        v39 = 1;
        sub_1003E364C((a1 + 32), v38);
      }

LABEL_31:
      sub_1000195BC();
    }

    v17 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#loc-sf,sensor fusion supports geodetic coordinates now", &v18, 2u);
    }

    goto LABEL_26;
  }

  v12 = *(v5 - 240);
  v13 = *(v5 - 232);
  sub_1003E38AC(a1 + 32, v41);
  if (v42 != 1 || vabdd_f64(v41[0], v12) >= 120.0)
  {
    goto LABEL_26;
  }

  sub_1003E38C4((a1 + 32), v38);
  if ((v42 & 1) == 0)
  {
    goto LABEL_31;
  }

  if (v40 != 1 || v38[0] <= v12 + -1.0)
  {
LABEL_26:
    *a4 = 0;
    a4[200] = 0;
    return;
  }

  sub_1003CC278(v41, v38, &v35);
  v33 = v36;
  v34 = v37;
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1004CB328();
  }

  sub_1004010B8(&v33, a1);
  v18 = v12;
  v19 = v13;
  v20 = 4;
  LOBYTE(v21) = 0;
  v22 = 0;
  v23 = v14;
  v24 = v15;
  v25 = v16;
  v26 = 1;
  *v27 = 0u;
  v28 = 0u;
  *v29 = 0u;
  *v30 = 0u;
  v31 = 0u;
  memset(__p, 0, 25);
  sub_1003CC5B8(a4, &v18);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v30[1])
  {
    *&v31 = v30[1];
    operator delete(v30[1]);
  }

  if (v29[0])
  {
    v29[1] = v29[0];
    operator delete(v29[0]);
  }

  if (v27[1])
  {
    *&v28 = v27[1];
    operator delete(v27[1]);
  }
}

void sub_1003CC278(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v35 = 0x100000003;
  v34 = xmmword_10056EDA0;
  v33 = off_1009A8F78;
  v36 = &v37;
  sub_1003A8C00(&v33, 3, 1);
  sub_1003A8C50(&v33, 0.0);
  v6 = *(a2 + 8);
  *sub_1003A8DB0(&v33, 0, 0) = v6;
  v7 = *(a2 + 16);
  *sub_1003A8DB0(&v33, 1, 0) = v7;
  v8 = *(a2 + 24);
  *sub_1003A8DB0(&v33, 2, 0) = v8;
  v9 = __sincos_stret(*(a1 + 8));
  v30 = 0x300000003;
  v29 = xmmword_10056EDB0;
  v28 = off_1009A8FC0;
  v31 = &v32;
  sub_1003A8C00(&v28, 3, 3);
  sub_1003A8C50(&v28, 0.0);
  *sub_1003A8DB0(&v28, 0, 0) = v9.__cosval;
  *sub_1003A8DB0(&v28, 0, 1) = -v9.__sinval;
  *sub_1003A8DB0(&v28, 1, 0) = v9.__sinval;
  *sub_1003A8DB0(&v28, 1, 1) = v9.__cosval;
  *sub_1003A8DB0(&v28, 2, 2) = 0x3FF0000000000000;
  v25 = 0x100000003;
  v24 = xmmword_10056EDA0;
  v23 = off_1009A8F78;
  v26 = &v27;
  sub_1003A8C00(&v23, 3, 1);
  sub_1003A8C50(&v23, 0.0);
  v10 = *(a1 + 16);
  *sub_1003A8DB0(&v23, 0, 0) = v10;
  v11 = *(a1 + 24);
  *sub_1003A8DB0(&v23, 1, 0) = v11;
  v12 = *(a1 + 32);
  *sub_1003A8DB0(&v23, 2, 0) = v12;
  v15 = 0x100000003;
  v13 = off_1009A8F78;
  v14 = xmmword_10056EDA0;
  v16 = &v17;
  sub_1003A90A8(&v28, &v33, &v13);
  v20 = 0x100000003;
  v18 = off_1009A8F78;
  v19 = xmmword_10056EDA0;
  v21 = &v22;
  sub_1003A8EBC(&v13, &v23, &v18);
  *a3 = *a2;
  *(a3 + 8) = sub_1002EB6B8(&v18, 0, 0);
  *(a3 + 16) = sub_1002EB6B8(&v18, 1, 0);
  *(a3 + 24) = sub_1002EB6B8(&v18, 2, 0);
  *(a3 + 32) = *(a2 + 32);
  *(a3 + 40) = *(a2 + 40);
}

__n128 sub_1003CC5B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 96) = 0;
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  *(a2 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 160) = *(a2 + 160);
  *(a2 + 144) = 0;
  *(a2 + 152) = 0;
  *(a2 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  result = *(a2 + 168);
  *(a1 + 168) = result;
  *(a1 + 184) = *(a2 + 184);
  *(a2 + 176) = 0;
  *(a2 + 184) = 0;
  *(a2 + 168) = 0;
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 200) = 1;
  return result;
}

void *sub_1003CC664(void *a1)
{
  v2 = a1[21];
  if (v2)
  {
    a1[22] = v2;
    operator delete(v2);
  }

  v3 = a1[18];
  if (v3)
  {
    a1[19] = v3;
    operator delete(v3);
  }

  v4 = a1[15];
  if (v4)
  {
    a1[16] = v4;
    operator delete(v4);
  }

  v5 = a1[12];
  if (v5)
  {
    a1[13] = v5;
    operator delete(v5);
  }

  return a1;
}

void *sub_1003CC6C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = sub_1003EC7BC(a1, a2, a3, a4, a5, a6, a7, a8);
  *result = off_1009A9DA0;
  return result;
}

uint64_t sub_1003CC6FC@<X0>(uint64_t a1@<X0>, double *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a2;
  v5 = a2[1];
  v10[0] = 0;
  v10[88] = 0;
  result = (*(*a1 + 16))(a1, a3, v10, v5, v6);
  if (v8)
  {
    *a4 = result;
    v9 = 1;
    *(a4 + 8) = 1;
    *(a4 + 16) = 0;
    *(a4 + 24) = 0;
    *(a4 + 32) = 0;
    *(a4 + 36) = 0;
    *(a4 + 40) = 0;
    *(a4 + 48) = 0;
    *(a4 + 56) = 0;
    *(a4 + 64) = 0;
    *(a4 + 72) = 0;
    *(a4 + 76) = 0;
  }

  else
  {
    v9 = 0;
    *a4 = 0;
  }

  *(a4 + 80) = v9;
  return result;
}

__n128 sub_1003CC7A8(uint64_t a1, __n128 *a2)
{
  *(a1 + 8) = 1;
  *(a1 + 72) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  *a1 = off_1009A9DE0;
  result = *a2;
  *(a1 + 96) = a2[1].n128_u64[0];
  *(a1 + 80) = result;
  *(a1 + 104) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 112) = 0;
  return result;
}

uint64_t sub_1003CC800(uint64_t result)
{
  *(result + 120) = *(result + 112);
  *(result + 104) = 0;
  return result;
}

void sub_1003CC810(void *a1@<X0>, uint64_t *a2@<X1>, double *a3@<X8>)
{
  v6 = *a2;
  v5 = a2[1];
  v7 = *(a2 + 4);
  v8 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    v22 = 134218496;
    v23 = v6;
    v24 = 2048;
    v25 = v5;
    v26 = 1024;
    v27 = v7;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "#boundedregiongrange-estimator, Input time: %4.3f s, rssi: %3.1f, channel: %d", &v22, 0x1Cu);
  }

  v9 = a1[15];
  v10 = a1[16];
  if (v9 >= v10)
  {
    v12 = a1[14];
    v13 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v12) >> 3);
    v14 = v13 + 1;
    if (v13 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_100019B38();
    }

    v15 = 0xAAAAAAAAAAAAAAABLL * ((v10 - v12) >> 3);
    if (2 * v15 > v14)
    {
      v14 = 2 * v15;
    }

    if (v15 >= 0x555555555555555)
    {
      v16 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v16 = v14;
    }

    if (v16)
    {
      sub_100012410((a1 + 14), v16);
    }

    v17 = 24 * v13;
    *v17 = v6;
    *(v17 + 8) = v5;
    *(v17 + 16) = v7;
    *(v17 + 20) = 0;
    v11 = 24 * v13 + 24;
    v18 = a1[14];
    v19 = a1[15] - v18;
    v20 = 24 * v13 - v19;
    memcpy((v17 - v19), v18, v19);
    v21 = a1[14];
    a1[14] = v20;
    a1[15] = v11;
    a1[16] = 0;
    if (v21)
    {
      operator delete(v21);
    }
  }

  else
  {
    *v9 = v6;
    *(v9 + 8) = v5;
    v11 = v9 + 24;
    *(v9 + 16) = v7;
    *(v9 + 20) = 0;
  }

  a1[15] = v11;
  sub_1003CC9E4(a1);
  sub_1003CCA60(a1);
  sub_1003CCB7C(a1, a3);
}

void sub_1003CC9E4(uint64_t result)
{
  if ((*(result + 104) & 1) == 0)
  {
    v1 = *(result + 112);
    v2 = *(result + 120);
    if (v1 != v2)
    {
      v3 = *(v2 - 3) - *v1;
      v4 = *(result + 88);
      *(result + 104) = v3 >= v4;
      if (v3 >= v4)
      {
        v5 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
        {
          sub_1004CB380(v5);
        }
      }
    }
  }
}

void sub_1003CCA60(uint64_t result)
{
  v1 = (result + 112);
  v2 = *(result + 120);
  v3 = *(result + 112);
  if (v3 != v2)
  {
    v4 = *(v2 - 24);
    v5 = *(result + 96);
    if (v4 - *v3 >= v5)
    {
      while (v4 - *v3 <= v5)
      {
        v3 += 24;
        if (v3 == v2)
        {
          goto LABEL_14;
        }
      }

      if (v3 != v2)
      {
        v6 = v3 + 24;
        if (v3 + 24 != v2)
        {
          do
          {
            if (v4 - *v6 <= *(result + 96))
            {
              v7 = *v6;
              *(v3 + 16) = *(v6 + 16);
              *v3 = v7;
              v3 += 24;
            }

            v6 += 24;
          }

          while (v6 != v2);
          v2 = *(result + 120);
        }
      }

      if (v3 != v2)
      {
        v2 = v3;
        *(result + 120) = v3;
      }

LABEL_14:
      v8 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
      {
        sub_1004CB3C4(v2, v1, v8);
      }
    }
  }
}

void sub_1003CCB7C(uint64_t a1@<X0>, double *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 80) = 0;
  if (*(a1 + 104) == 1)
  {
    v3 = *(&off_1009EA9B0 + *(a1 + 80));
    v6 = 0;
    v7 = 0;
    __p = 0;
    sub_100012394(&__p, *(a1 + 112), *(a1 + 120), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 120) - *(a1 + 112)) >> 3));
    v4 = (*(*v3 + 16))(v3, &__p);
    if (__p)
    {
      v6 = __p;
      operator delete(__p);
    }

    *a2 = v4;
    *(a2 + 8) = 1;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 36) = 0;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    *(a2 + 76) = 0;
    *(a2 + 80) = 1;
  }
}