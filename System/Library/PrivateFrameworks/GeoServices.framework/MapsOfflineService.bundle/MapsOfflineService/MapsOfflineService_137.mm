uint64_t sub_87B6F0(void **a1, uint64_t a2)
{
  v2 = 0x3795876FF3795877 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x190D4F120190D4)
  {
    sub_1794();
  }

  if (0x6F2B0EDFE6F2B0EELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x6F2B0EDFE6F2B0EELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x3795876FF3795877 * ((a1[2] - *a1) >> 3)) >= 0xC86A78900C86ALL)
  {
    v5 = 0x190D4F120190D4;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x190D4F120190D4)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 8 * ((a1[1] - *a1) >> 3);
  sub_6083DC(v6, a2);
  v7 = 2616 * v2 + 2616;
  v8 = *a1;
  v9 = a1[1];
  v10 = *a1 + v6 - v9;
  if (v9 != *a1)
  {
    v11 = *a1;
    v12 = v10;
    do
    {
      v13 = sub_6083DC(v12, v11);
      v11 += 2616;
      v12 = v13 + 2616;
    }

    while (v11 != v9);
    do
    {
      sub_5C25A8(v8);
      v8 += 2616;
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

void sub_87B854(uint64_t *a1, unint64_t a2)
{
  if (0xEF7BDEF7BDEF7BDFLL * ((a1[2] - *a1) >> 3) < a2)
  {
    if (a2 < 0x108421084210843)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_87B95C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_702A44(va);
  _Unwind_Resume(a1);
}

char *sub_87B970(char **a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    sub_1794();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v5 = 0x666666666666666;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x666666666666666)
    {
      operator new();
    }

    sub_1808();
  }

  v14 = 8 * ((a1[1] - *a1) >> 3);
  sub_F548B4(v14, a2);
  v6 = (40 * v2 + 40);
  v7 = *a1;
  v8 = a1[1];
  v9 = (v14 + *a1 - v8);
  v15 = v9;
  if (*a1 != v8)
  {
    v10 = v14 + v7 - v8;
    v11 = *a1;
    do
    {
      sub_F548B4(v10, v11);
      v11 += 40;
      v10 = (v15 + 40);
      v15 += 40;
    }

    while (v11 != v8);
    do
    {
      v12 = *v7;
      if (*v7)
      {
        *(v7 + 1) = v12;
        operator delete(v12);
      }

      v7 += 40;
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

void sub_87BB00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_4E6B8C(va);
  _Unwind_Resume(a1);
}

void sub_87BB14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_4E6B1C(va1);
  sub_4E6B8C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_87BB30(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if ((0xEF7BDEF7BDEF7BDFLL * ((v9 - v10) >> 3)) >= a5)
    {
      v15 = v10 - a2;
      if ((0xEF7BDEF7BDEF7BDFLL * ((v10 - a2) >> 3)) >= a5)
      {
        v31 = 248 * a5;
        sub_87BF84(a1, a2, a1[1], a2 + 248 * a5);
        v32 = 0;
        do
        {
          v42 = v5 + v32;
          if (v7 == v5)
          {
            *(v42 + 24) = *(v7 + v32 + 24);
          }

          else
          {
            sub_30945C((v5 + v32), *(v7 + v32), *(v7 + v32 + 8), (*(v7 + v32 + 8) - *(v7 + v32)) >> 3);
            *(v42 + 24) = *(v7 + v32 + 24);
            sub_596098((v42 + 40), *(v7 + v32 + 40), *(v7 + v32 + 48), (*(v7 + v32 + 48) - *(v7 + v32 + 40)) >> 2);
          }

          v33 = v5 + v32;
          *(v33 + 64) = *(v7 + v32 + 64);
          v34 = *(v7 + v32 + 72);
          v35 = *(v7 + v32 + 88);
          *(v33 + 104) = *(v7 + v32 + 104);
          *(v33 + 88) = v35;
          *(v33 + 72) = v34;
          v36 = *(v7 + v32 + 120);
          v37 = *(v7 + v32 + 136);
          v38 = *(v7 + v32 + 152);
          *(v33 + 168) = *(v7 + v32 + 168);
          *(v33 + 152) = v38;
          *(v33 + 136) = v37;
          *(v33 + 120) = v36;
          v39 = *(v7 + v32 + 184);
          v40 = *(v7 + v32 + 200);
          v41 = *(v7 + v32 + 216);
          *(v33 + 230) = *(v7 + v32 + 230);
          *(v33 + 216) = v41;
          *(v33 + 200) = v40;
          *(v33 + 184) = v39;
          v32 += 248;
        }

        while (v7 + v32 != v31 + v7);
      }

      else
      {
        v17 = v15 + a3;
        v57 = a1[1];
        v58 = v10;
        __p = a1;
        v53 = &v57;
        v54 = &v58;
        v18 = v10;
        LOBYTE(v55) = 0;
        if (v15 + a3 != a4)
        {
          v18 = v10;
          v19 = v15 + a3;
          do
          {
            sub_5EF9A8(v18, v19);
            v19 += 248;
            v18 = v58 + 248;
            v58 += 248;
          }

          while (v19 != a4);
        }

        a1[1] = v18;
        if (v15 >= 1)
        {
          sub_87BF84(a1, v5, v10, v5 + 248 * a5);
          v20 = 0;
          do
          {
            v30 = v5 + v20;
            if (v7 == v5)
            {
              *(v30 + 24) = *(v7 + v20 + 24);
            }

            else
            {
              sub_30945C((v5 + v20), *(v7 + v20), *(v7 + v20 + 8), (*(v7 + v20 + 8) - *(v7 + v20)) >> 3);
              *(v30 + 24) = *(v7 + v20 + 24);
              sub_596098((v30 + 40), *(v7 + v20 + 40), *(v7 + v20 + 48), (*(v7 + v20 + 48) - *(v7 + v20 + 40)) >> 2);
            }

            v21 = v5 + v20;
            *(v21 + 64) = *(v7 + v20 + 64);
            v22 = *(v7 + v20 + 72);
            v23 = *(v7 + v20 + 88);
            *(v21 + 104) = *(v7 + v20 + 104);
            *(v21 + 88) = v23;
            *(v21 + 72) = v22;
            v24 = *(v7 + v20 + 120);
            v25 = *(v7 + v20 + 136);
            v26 = *(v7 + v20 + 152);
            *(v21 + 168) = *(v7 + v20 + 168);
            *(v21 + 152) = v26;
            *(v21 + 136) = v25;
            *(v21 + 120) = v24;
            v27 = *(v7 + v20 + 184);
            v28 = *(v7 + v20 + 200);
            v29 = *(v7 + v20 + 216);
            *(v21 + 230) = *(v7 + v20 + 230);
            *(v21 + 216) = v29;
            *(v21 + 200) = v28;
            *(v21 + 184) = v27;
            v20 += 248;
          }

          while (v7 + v20 != v17);
        }
      }
    }

    else
    {
      v11 = *a1;
      v12 = a5 - 0x1084210842108421 * ((v10 - *a1) >> 3);
      if (v12 > 0x108421084210842)
      {
        sub_1794();
      }

      v13 = 0xEF7BDEF7BDEF7BDFLL * ((v9 - v11) >> 3);
      if (2 * v13 > v12)
      {
        v12 = 2 * v13;
      }

      if (v13 >= 0x84210842108421)
      {
        v14 = 0x108421084210842;
      }

      else
      {
        v14 = v12;
      }

      v56 = a1;
      if (v14)
      {
        if (v14 <= 0x108421084210842)
        {
          operator new();
        }

        sub_1808();
      }

      v43 = 8 * ((a2 - v11) >> 3);
      __p = 0;
      v53 = v43;
      v54 = v43;
      v55 = 0;
      v44 = 248 * a5;
      v45 = (v43 + 248 * a5);
      do
      {
        sub_5EF9A8(v43, v7);
        v43 += 248;
        v7 += 248;
        v44 -= 248;
      }

      while (v44);
      v54 = v45;
      v5 = sub_87C180(a1, &__p, v5);
      v46 = v53;
      while (1)
      {
        v47 = v54;
        if (v54 == v46)
        {
          break;
        }

        v48 = (v54 - 31);
        v54 -= 31;
        v49 = *(v47 - 26);
        if (v49)
        {
          *(v47 - 25) = v49;
          operator delete(v49);
        }

        v50 = *v48;
        if (*v48)
        {
          *(v47 - 30) = v50;
          operator delete(v50);
        }
      }

      if (__p)
      {
        operator delete(__p);
      }
    }
  }

  return v5;
}

void sub_87BF40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_702A44(va);
  _Unwind_Resume(a1);
}

void sub_87BF54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_5F5698(va);
  *(v3 + 8) = v4;
  _Unwind_Resume(a1);
}

void sub_87BF6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_702A44(va);
  _Unwind_Resume(a1);
}

__n128 sub_87BF84(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 8);
  v5 = a2 + v4 - a4;
  if (v5 >= a3)
  {
    *(a1 + 8) = v4;
    if (v4 == a4)
    {
      return result;
    }
  }

  else
  {
    v6 = a2 + v4 - a4;
    v7 = *(a1 + 8);
    do
    {
      *v7 = 0;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      *v7 = *v6;
      *(v7 + 16) = *(v6 + 16);
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      *v6 = 0;
      *(v7 + 24) = *(v6 + 24);
      *(v7 + 48) = 0;
      *(v7 + 56) = 0;
      *(v7 + 40) = 0;
      *(v7 + 40) = *(v6 + 40);
      *(v7 + 56) = *(v6 + 56);
      *(v6 + 40) = 0;
      *(v6 + 48) = 0;
      *(v6 + 56) = 0;
      *(v7 + 64) = *(v6 + 64);
      v8 = *(v6 + 72);
      v9 = *(v6 + 88);
      *(v7 + 104) = *(v6 + 104);
      *(v7 + 88) = v9;
      *(v7 + 72) = v8;
      v10 = *(v6 + 120);
      v11 = *(v6 + 136);
      v12 = *(v6 + 152);
      *(v7 + 168) = *(v6 + 168);
      *(v7 + 152) = v12;
      *(v7 + 136) = v11;
      *(v7 + 120) = v10;
      result = *(v6 + 184);
      v14 = *(v6 + 200);
      v15 = *(v6 + 216);
      *(v7 + 230) = *(v6 + 230);
      *(v7 + 216) = v15;
      *(v7 + 200) = v14;
      *(v7 + 184) = result;
      v6 += 248;
      v7 += 248;
    }

    while (v6 < a3);
    *(a1 + 8) = v7;
    if (v4 == a4)
    {
      return result;
    }
  }

  v16 = 0;
  v17 = a4 - v4;
  do
  {
    v27 = v4 + v16;
    v29 = (v4 + v16 - 248);
    v28 = *v29;
    if (*v29)
    {
      *(v27 - 240) = v28;
      operator delete(v28);
      *v29 = 0;
      *(v4 + v16 - 240) = 0;
      *(v4 + v16 - 232) = 0;
    }

    v30 = v5 + v16 - 248;
    *v29 = *v30;
    *(v27 - 232) = *(v5 + v16 - 232);
    *v30 = 0;
    *(v30 + 8) = 0;
    *(v30 + 16) = 0;
    v33 = *(v27 - 208);
    v32 = (v27 - 208);
    v31 = v33;
    *(v32 - 1) = *(v5 + v16 - 224);
    if (v33)
    {
      *(v4 + v16 - 200) = v31;
      operator delete(v31);
      *v32 = 0;
      v32[1] = 0;
      v32[2] = 0;
    }

    v18 = v5 + v16;
    *v32 = *(v5 + v16 - 208);
    v19 = v4 + v16;
    *(v19 - 192) = *(v5 + v16 - 192);
    *(v18 - 208) = 0;
    *(v18 - 200) = 0;
    *(v18 - 192) = 0;
    *(v19 - 184) = *(v5 + v16 - 184);
    v20 = *(v5 + v16 - 176);
    v21 = *(v5 + v16 - 144);
    *(v19 - 160) = *(v5 + v16 - 160);
    *(v19 - 144) = v21;
    *(v19 - 176) = v20;
    v22 = *(v5 + v16 - 128);
    v23 = *(v5 + v16 - 112);
    v24 = *(v5 + v16 - 80);
    *(v19 - 96) = *(v5 + v16 - 96);
    *(v19 - 80) = v24;
    *(v19 - 128) = v22;
    *(v19 - 112) = v23;
    result = *(v5 + v16 - 64);
    v25 = *(v5 + v16 - 48);
    v26 = *(v5 + v16 - 32);
    *(v19 - 18) = *(v5 + v16 - 18);
    *(v19 - 48) = v25;
    *(v19 - 32) = v26;
    *(v19 - 64) = result;
    v16 -= 248;
  }

  while (v17 != v16);
  return result;
}

uint64_t sub_87C180(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  v7 = a1[1];
  if (v7 != a3)
  {
    v8 = a2[2];
    v9 = a3;
    do
    {
      *v8 = 0;
      *(v8 + 8) = 0;
      *(v8 + 16) = 0;
      *v8 = *v9;
      *(v8 + 16) = *(v9 + 16);
      *(v9 + 8) = 0;
      *(v9 + 16) = 0;
      *v9 = 0;
      *(v8 + 24) = *(v9 + 24);
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 40) = 0;
      *(v8 + 40) = *(v9 + 40);
      *(v8 + 56) = *(v9 + 56);
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v8 + 64) = *(v9 + 64);
      v10 = *(v9 + 72);
      v11 = *(v9 + 88);
      *(v8 + 104) = *(v9 + 104);
      *(v8 + 88) = v11;
      *(v8 + 72) = v10;
      v12 = *(v9 + 120);
      v13 = *(v9 + 136);
      v14 = *(v9 + 152);
      *(v8 + 168) = *(v9 + 168);
      *(v8 + 152) = v14;
      *(v8 + 136) = v13;
      *(v8 + 120) = v12;
      v15 = *(v9 + 184);
      v16 = *(v9 + 200);
      v17 = *(v9 + 216);
      *(v8 + 230) = *(v9 + 230);
      *(v8 + 216) = v17;
      *(v8 + 200) = v16;
      *(v8 + 184) = v15;
      v9 += 248;
      v8 += 248;
    }

    while (v9 != v7);
    v18 = a3;
    do
    {
      v19 = *(v18 + 40);
      if (v19)
      {
        *(v18 + 48) = v19;
        operator delete(v19);
      }

      v20 = *v18;
      if (*v18)
      {
        *(v18 + 8) = v20;
        operator delete(v20);
      }

      v18 += 248;
    }

    while (v18 != v7);
  }

  v21 = *a1;
  v22 = a2[1];
  a2[2] += a1[1] - a3;
  a1[1] = a3;
  v23 = v22 + v21 - a3;
  if (v21 != a3)
  {
    v24 = v21;
    v25 = v22 + v21 - a3;
    do
    {
      *v25 = 0;
      *(v25 + 8) = 0;
      *(v25 + 16) = 0;
      *v25 = *v24;
      *(v25 + 16) = *(v24 + 16);
      *(v24 + 8) = 0;
      *(v24 + 16) = 0;
      *v24 = 0;
      *(v25 + 24) = *(v24 + 24);
      *(v25 + 48) = 0;
      *(v25 + 56) = 0;
      *(v25 + 40) = 0;
      *(v25 + 40) = *(v24 + 40);
      *(v25 + 56) = *(v24 + 56);
      *(v24 + 40) = 0;
      *(v24 + 48) = 0;
      *(v24 + 56) = 0;
      *(v25 + 64) = *(v24 + 64);
      v26 = *(v24 + 72);
      v27 = *(v24 + 88);
      *(v25 + 104) = *(v24 + 104);
      *(v25 + 88) = v27;
      *(v25 + 72) = v26;
      v28 = *(v24 + 120);
      v29 = *(v24 + 136);
      v30 = *(v24 + 152);
      *(v25 + 168) = *(v24 + 168);
      *(v25 + 152) = v30;
      *(v25 + 136) = v29;
      *(v25 + 120) = v28;
      v31 = *(v24 + 184);
      v32 = *(v24 + 200);
      v33 = *(v24 + 216);
      *(v25 + 230) = *(v24 + 230);
      *(v25 + 216) = v33;
      *(v25 + 200) = v32;
      *(v25 + 184) = v31;
      v24 += 248;
      v25 += 248;
    }

    while (v24 != a3);
    do
    {
      v34 = *(v21 + 40);
      if (v34)
      {
        *(v21 + 48) = v34;
        operator delete(v34);
      }

      v35 = *v21;
      if (*v21)
      {
        *(v21 + 8) = v35;
        operator delete(v35);
      }

      v21 += 248;
    }

    while (v21 != a3);
  }

  a2[1] = v23;
  v36 = *a1;
  *a1 = v23;
  a1[1] = v36;
  a2[1] = v36;
  v37 = a1[1];
  a1[1] = a2[2];
  a2[2] = v37;
  v38 = a1[2];
  a1[2] = a2[3];
  a2[3] = v38;
  *a2 = a2[1];
  return v6;
}

void sub_87C414(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 32);
  v6 = sub_2B51D8(a3, v5 & 0xFFFFFFFFFFFFLL);
  if (*(a3 + 7772) == 1)
  {
    v7 = sub_30C50C(a3 + 3896, v5, 0);
    v8 = &v7[-*v7];
    if (*v8 < 5u)
    {
      v9 = 0;
    }

    else
    {
      v9 = *(v8 + 2);
      if (v9)
      {
        v9 += &v7[*&v7[v9]];
      }
    }

    v10 = v9 + ((v5 >> 30) & 0x3FFFC) + 4 + *(v9 + ((v5 >> 30) & 0x3FFFC) + 4);
  }

  else
  {
    v10 = 0;
  }

  *&v12 = v6;
  *(&v12 + 1) = v10;
  v13 = sub_31D7E8(a3, v5 & 0xFFFFFFFFFFFFLL, 1);
  v14 = v11;
  v15 = v5 & 0xFFFFFFFFFFFFLL | (((v5 & 0xFF000000000000) == 0) << 61) | 0x4000000000000000;
  sub_69E968(a1, &v12);
}

void sub_87C50C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 32);
  v6 = *(a2 + 36);
  v7 = ((v6 & 0x20000000) << 19) & 0xFFFF0000FFFFFFFFLL | (v6 << 32) | v5;
  v8 = sub_2B51D8(a3, ((v6 & 0x20000000u) << 19) | (v6 << 32) & 0xFFFFFFFFFFFFLL | v5 & 0xFFFFFFFFFFFFLL);
  if (*(a3 + 7772) == 1)
  {
    v9 = sub_30C50C(a3 + 3896, v5, 0);
    v10 = &v9[-*v9];
    if (*v10 < 5u)
    {
      v11 = 0;
    }

    else
    {
      v11 = *(v10 + 2);
      if (v11)
      {
        v11 += &v9[*&v9[v11]];
      }
    }

    v12 = v11 + 4 * v6 + 4 + *(v11 + 4 * v6 + 4);
  }

  else
  {
    v12 = 0;
  }

  *&v14 = v8;
  *(&v14 + 1) = v12;
  v15 = sub_31D7E8(a3, v7 & 0xFFFFFFFFFFFFLL, 1);
  v16 = v13;
  v17 = v7 ^ 0x1000000000000;
  sub_69B1E0(a1, &v14);
}

void sub_87C600(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 32);
  v7 = *(a2 + 36);
  v8 = v6 | (v7 << 32);
  v9 = sub_2B51D8(a3, v8);
  if (*(a3 + 7772) == 1)
  {
    v10 = sub_30C50C(a3 + 3896, v6, 0);
    v11 = &v10[-*v10];
    if (*v11 < 5u)
    {
      v12 = 0;
    }

    else
    {
      v12 = *(v11 + 2);
      if (v12)
      {
        v12 += &v10[*&v10[v12]];
      }
    }

    v13 = v12 + 4 * v7 + 4 + *(v12 + 4 * v7 + 4);
  }

  else
  {
    v13 = 0;
  }

  v14 = sub_31D7E8(a3, v8, 1);
  v15 = *(a2 + 36);
  *&v17 = v9;
  *(&v17 + 1) = v13;
  v18 = v14;
  v19 = v16;
  v20 = ((v15 & 0x40000000 | v7 & 0x20000000) << 32) | ((v15 >> 30 == 2) << 63) | v8;
  sub_69E968(a1, &v17);
}

void sub_87C71C()
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
  xmmword_27AF098 = 0u;
  unk_27AF0A8 = 0u;
  dword_27AF0B8 = 1065353216;
  sub_3A9A34(&xmmword_27AF098, v0, v0);
  sub_3A9A34(&xmmword_27AF098, v3, v3);
  sub_3A9A34(&xmmword_27AF098, __p, __p);
  sub_3A9A34(&xmmword_27AF098, v9, v9);
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
    qword_27AF070 = 0;
    qword_27AF078 = 0;
    qword_27AF068 = 0;
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

void sub_87C964(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27AF080)
  {
    qword_27AF088 = qword_27AF080;
    operator delete(qword_27AF080);
  }

  _Unwind_Resume(exception_object);
}

void sub_87CA10(void *a1@<X0>, int *a2@<X1>, void *a3@<X8>)
{
  if (*a2 < 0)
  {
    v4 = -5;
  }

  else
  {
    v4 = 5;
  }

  if (*a2 / 10 + (((103 * (v4 + *a2 % 10)) >> 15) & 1) + ((103 * (v4 + *a2 % 10)) >> 10) < 0x78 || (v6 = (a1[1] - *a1) >> 4, v6 <= 2))
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    return;
  }

  __p = 0;
  v78 = 0;
  v79 = 0;
  LODWORD(v75) = 0;
  v76[0] = v6;
  sub_87D58C(&__p, &v75, v76);
  v7 = __p;
  v8 = v78;
  if (__p == v78)
  {
    goto LABEL_40;
  }

  v73 = a3;
  v9 = 0;
  v74 = a1;
  do
  {
    v10 = v7->n128_u64[0];
    v11 = v7->n128_u64[1];
    sub_87D918(v7, v8, v76, (v8 - v7) >> 4);
    --v78;
    if (v11 <= v10)
    {
      goto LABEL_28;
    }

    v12 = 16 * v11 + *a1;
    v13 = 16 * v10 + *a1;
    v14 = v12 - v13 - 16;
    if (v14 >= 0x10)
    {
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = (v14 >> 4) + 1;
      v17 = v13 + 16 * (v22 & 0x1FFFFFFFFFFFFFFELL);
      v23 = v13 + 16;
      v24 = v22 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        v18 += *(v23 - 16);
        v19 += *v23;
        v20 += *(v23 - 8);
        v21 += *(v23 + 8);
        v23 += 32;
        v24 -= 2;
      }

      while (v24);
      v15 = v19 + v18;
      v16 = v21 + v20;
      if (v22 == (v22 & 0x1FFFFFFFFFFFFFFELL))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v15 = 0;
      v16 = 0;
      v17 = 16 * v10 + *a1;
    }

    do
    {
      v15 += *v17;
      v16 += *(v17 + 8);
      v17 += 16;
    }

    while (v17 != v12);
LABEL_17:
    if (v15 < 0)
    {
      v25 = -50;
    }

    else
    {
      v25 = 50;
    }

    v26 = v15 / 100 + (((5243 * (v25 + v15 % 100)) >> 19) + ((5243 * (v25 + v15 % 100)) >> 31));
    if (v26)
    {
      v27 = v16 == 0;
    }

    else
    {
      v27 = 1;
    }

    if (!v27)
    {
      v28 = v26;
      v29 = v16 / 10;
      v30 = v16 % 10;
      v31 = v16 < 0 ? -5 : 5;
      if (v28 / (v29 + (((103 * (v31 + v30)) >> 15) & 1) + ((103 * (v31 + v30)) >> 10)) != 0.0)
      {
        v76[1] = 0;
        if (v11 >= v10)
        {
          v35 = v11 - v10;
        }

        else
        {
          v35 = 0;
        }

        if (!(v35 >> 61))
        {
          operator new();
        }

        sub_1794();
      }
    }

LABEL_28:
    v32 = v9;
    v33 = v9 >> 4;
    if (((v9 >> 4) + 1) >> 60)
    {
      sub_1794();
    }

    if (v9 >> 4 != -1)
    {
      if (!(((v9 >> 4) + 1) >> 60))
      {
        operator new();
      }

      sub_1808();
    }

    v34 = (16 * v33);
    *v34 = v10;
    v34[1] = v11;
    v9 = 16 * v33 + 16;
    memcpy(0, 0, v32);
    v7 = __p;
    v8 = v78;
  }

  while (__p != v78);
  if (v9 > 0x10)
  {
    *v73 = 0;
    v73[1] = 0;
    v73[2] = 0;
    v36 = 0;
    v37 = 0;
    for (i = 0; i != v9; i += 2)
    {
      while (1)
      {
        v39 = 16 * *i;
        v40 = 16 * i[1];
        if (v39 == v40)
        {
          v41 = 0;
          v42 = 0;
        }

        else
        {
          v43 = v40 + *v74;
          v44 = v39 + *v74;
          v45 = v43 - v44 - 16;
          if (v45 >= 0x80)
          {
            v47 = (v45 >> 4) + 1;
            v48 = v47 & 7;
            if ((v47 & 7) == 0)
            {
              v48 = 8;
            }

            v49 = v47 - v48;
            v46 = v44 + 16 * v49;
            v50 = v44 + 64;
            v51 = 0uLL;
            v52 = 0uLL;
            v53 = 0uLL;
            v54 = 0uLL;
            v55 = 0uLL;
            v56 = 0uLL;
            do
            {
              v57 = (v50 - 64);
              v58 = vld2q_f64(v57);
              v59 = (v50 - 32);
              v60 = vld2q_f64(v59);
              v61 = v50;
              v62 = vld2q_f64(v61);
              v61 += 4;
              v63 = vld2q_f64(v61);
              v52 = vaddq_s64(v60, v52);
              v51 = vaddq_s64(v58, v51);
              v64 = (v50 - 56);
              v65 = (v50 + 8);
              v66 = vld4q_f32(v64);
              v67 = vld4q_f32(v65);
              v53 = vaddq_s64(v62, v53);
              v54 = vaddq_s64(v63, v54);
              v55 = vaddq_s32(v66, v55);
              v56 = vaddq_s32(v67, v56);
              v50 += 128;
              v49 -= 8;
            }

            while (v49);
            v42 = vaddvq_s64(vaddq_s64(vaddq_s64(v53, v51), vaddq_s64(v54, v52)));
            v41 = vaddvq_s32(vaddq_s32(v56, v55));
          }

          else
          {
            v42 = 0;
            v41 = 0;
            v46 = v44;
          }

          do
          {
            v42 += *v46;
            v41 += *(v46 + 8);
            v46 += 16;
          }

          while (v46 != v43);
        }

        if (!v36)
        {
          break;
        }

        v68 = v41 < 0 ? -5 : 5;
        if ((v41 / 10 + (((103 * (v68 + v41 % 10)) >> 15) & 1) + ((103 * (v68 + v41 % 10)) >> 10)) >= 20)
        {
          v69 = v37 < 0 ? -5 : 5;
          if ((v37 / 10 + (((103 * (v69 + v37 % 10)) >> 15) & 1) + ((103 * (v69 + v37 % 10)) >> 10)) > 19)
          {
            break;
          }
        }

        *(v36 - 16) += v42;
        *(v36 - 8) += v41;
        v37 += v41;
        i += 2;
        if (i == v9)
        {
          goto LABEL_68;
        }
      }

      v70 = v36;
      v71 = v36 >> 4;
      if (((v36 >> 4) + 1) >> 60)
      {
        v73[1] = v36;
        v73[2] = 0;
        *v73 = 0;
        sub_1794();
      }

      if (v36 >> 4 != -1)
      {
        if (!(((v36 >> 4) + 1) >> 60))
        {
          operator new();
        }

        v73[1] = v36;
        v73[2] = 0;
        *v73 = 0;
        sub_1808();
      }

      v72 = 16 * v71;
      *v72 = v42;
      *(v72 + 8) = v41;
      v36 = 16 * v71 + 16;
      memcpy(0, 0, v70);
      v37 += v41;
    }

LABEL_68:
    v73[1] = v36;
    v73[2] = 0;
    *v73 = 0;
    v7 = __p;
  }

  else
  {
    a3 = v73;
LABEL_40:
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  if (v7)
  {
    v78 = v7;
    operator delete(v7);
  }
}

void sub_87D4C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26)
{
  if (__p)
  {
    operator delete(__p);
    if (!a13)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!a13)
  {
    goto LABEL_3;
  }

  operator delete(a13);
  _Unwind_Resume(exception_object);
}

void sub_87D58C(char **a1, int *a2, uint64_t *a3)
{
  v5 = a1[1];
  v6 = a1[2];
  if (v5 >= v6)
  {
    v9 = *a1;
    v10 = v5 - *a1;
    v11 = v10 >> 4;
    v12 = (v10 >> 4) + 1;
    if (v12 >> 60)
    {
      sub_1794();
    }

    v13 = v6 - v9;
    if (v13 >> 3 > v12)
    {
      v12 = v13 >> 3;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF0)
    {
      v14 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      if (!(v14 >> 60))
      {
        operator new();
      }

      sub_1808();
    }

    v15 = (16 * v11);
    v16 = *a3;
    *v15 = *a2;
    v15[1] = v16;
    v8 = (16 * v11 + 16);
    memcpy(0, v9, v10);
    *a1 = 0;
    a1[1] = v8;
    a1[2] = 0;
    if (v9)
    {
      operator delete(v9);
    }
  }

  else
  {
    v7 = *a3;
    *v5 = *a2;
    *(v5 + 1) = v7;
    v8 = v5 + 16;
  }

  a1[1] = v8;
  v17 = *a1;
  v18 = (v8 - *a1) >> 4;
  v19 = v18 < 2;
  v20 = v18 - 2;
  if (!v19)
  {
    v21 = v20 >> 1;
    v22 = &v17[16 * v21];
    v23 = v8 - 16;
    v24 = *(v8 - 2);
    v25 = *v22 < v24 ? -1 : 1;
    if (*v22 != v24 || ((v26 = *(v22 + 1), v27 = *(v8 - 1), v28 = v26 == v27, v26 < v27) ? (v25 = -1) : (v25 = 1), !v28))
    {
      if (v25 >= 1)
      {
        v29 = *(v8 - 1);
        do
        {
          v30 = v23;
          v23 = v22;
          *v30 = *v22;
          if (!v21)
          {
            break;
          }

          v21 = (v21 - 1) >> 1;
          v22 = &v17[16 * v21];
          v31 = *v22 < v24 ? -1 : 1;
          if (*v22 == v24)
          {
            v32 = *(v22 + 1);
            v33 = v32 == v29;
            v31 = v32 < v29 ? -1 : 1;
            if (v33)
            {
              break;
            }
          }
        }

        while (v31 > 0);
        *v23 = v24;
        *(v23 + 1) = v29;
      }
    }
  }
}

void sub_87D75C(char **a1, _OWORD *a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = v7 >> 4;
    v9 = (v7 >> 4) + 1;
    if (v9 >> 60)
    {
      sub_1794();
    }

    v10 = v3 - v6;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 60))
      {
        operator new();
      }

      sub_1808();
    }

    *(16 * v8) = *a2;
    v5 = (16 * v8 + 16);
    memcpy(0, v6, v7);
    *a1 = 0;
    a1[1] = v5;
    a1[2] = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 16;
  }

  a1[1] = v5;
  v12 = *a1;
  v13 = (v5 - *a1) >> 4;
  v14 = v13 < 2;
  v15 = v13 - 2;
  if (!v14)
  {
    v16 = v15 >> 1;
    v17 = &v12[16 * v16];
    v18 = v5 - 16;
    v19 = *(v5 - 2);
    v20 = *v17 < v19 ? -1 : 1;
    if (*v17 != v19 || ((v21 = *(v17 + 1), v22 = *(v5 - 1), v23 = v21 == v22, v21 < v22) ? (v20 = -1) : (v20 = 1), !v23))
    {
      if (v20 >= 1)
      {
        v24 = *(v5 - 1);
        do
        {
          v25 = v18;
          v18 = v17;
          *v25 = *v17;
          if (!v16)
          {
            break;
          }

          v16 = (v16 - 1) >> 1;
          v17 = &v12[16 * v16];
          v26 = *v17 < v19 ? -1 : 1;
          if (*v17 == v19)
          {
            v27 = *(v17 + 1);
            v28 = v27 == v24;
            v26 = v27 < v24 ? -1 : 1;
            if (v28)
            {
              break;
            }
          }
        }

        while (v26 > 0);
        *v18 = v19;
        *(v18 + 1) = v24;
      }
    }
  }
}

__n128 sub_87D918(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = 0;
    v32 = *a1;
    v5 = a1;
    do
    {
      v6 = v5;
      v5 += v4 + 1;
      v7 = 2 * v4;
      v4 = (2 * v4) | 1;
      v8 = v7 + 2;
      if (v7 + 2 < a4)
      {
        v9 = v5[1].n128_u64[0];
        v10 = v5->n128_u64[0] < v9 ? -1 : 1;
        if (v5->n128_u64[0] != v9 || ((v11 = v5->n128_u64[1], v12 = v5[1].n128_u64[1], v13 = v11 == v12, v11 < v12) ? (v10 = -1) : (v10 = 1), !v13))
        {
          v5 += v10 > 0;
          if (v10 > 0)
          {
            v4 = v8;
          }
        }
      }

      *v6 = *v5;
    }

    while (v4 <= ((a4 - 2) >> 1));
    v14 = (a2 - 16);
    if (v5 == (a2 - 16))
    {
      result = v32;
      *v5 = v32;
    }

    else
    {
      *v5 = *v14;
      result = v32;
      *v14 = v32;
      v16 = (v5 - a1 + 16) >> 4;
      v18 = __OFSUB__(v16, 2);
      v17 = v16 - 2 < 0;
      v19 = v16 - 2;
      if (v17 == v18)
      {
        v20 = v19 >> 1;
        v21 = &a1[v20];
        v22 = v5->n128_u64[0];
        v23 = v21->n128_u64[0] < v5->n128_u64[0] ? -1 : 1;
        if (v21->n128_u64[0] != v5->n128_u64[0] || ((v24 = v21->n128_u64[1], v25 = v5->n128_u64[1], v26 = v24 == v25, v24 < v25) ? (v23 = -1) : (v23 = 1), !v26))
        {
          if (v23 >= 1)
          {
            v27 = v5->n128_u64[1];
            do
            {
              v28 = v5;
              v5 = v21;
              result = *v21;
              *v28 = *v21;
              if (!v20)
              {
                break;
              }

              v20 = (v20 - 1) >> 1;
              v21 = &a1[v20];
              v29 = v21->n128_u64[0] < v22 ? -1 : 1;
              if (v21->n128_u64[0] == v22)
              {
                v30 = v21->n128_u64[1];
                v31 = v30 == v27;
                v29 = v30 < v27 ? -1 : 1;
                if (v31)
                {
                  break;
                }
              }
            }

            while (v29 > 0);
            v5->n128_u64[0] = v22;
            v5->n128_u64[1] = v27;
          }
        }
      }
    }
  }

  return result;
}

void sub_87DA90()
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
  xmmword_27AF0F0 = 0u;
  unk_27AF100 = 0u;
  dword_27AF110 = 1065353216;
  sub_3A9A34(&xmmword_27AF0F0, v0, v0);
  sub_3A9A34(&xmmword_27AF0F0, v3, v3);
  sub_3A9A34(&xmmword_27AF0F0, __p, __p);
  sub_3A9A34(&xmmword_27AF0F0, v9, v9);
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
    qword_27AF0C8 = 0;
    qword_27AF0D0 = 0;
    qword_27AF0C0 = 0;
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

void sub_87DCD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27AF0D8)
  {
    qword_27AF0E0 = qword_27AF0D8;
    operator delete(qword_27AF0D8);
  }

  _Unwind_Resume(exception_object);
}

void sub_87DD84(uint64_t *a1, uint64_t a2, char a3, __int128 *a4)
{
  *a1 = sub_3AF6B4(a2);
  sub_64AC90((a1 + 1), a4, a3);
  operator new();
}

void sub_87DFD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  if (a19 < 0)
  {
    operator delete(__p);
    if ((*(v20 + 31) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((*(v20 + 31) & 0x80000000) == 0)
  {
LABEL_6:
    _Unwind_Resume(exception_object);
  }

  operator delete(*(v20 + 8));
  _Unwind_Resume(exception_object);
}

void sub_87E084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  nullsub_1();
  v6 = *v5;
  v7 = *(v5 + 8);
  if (*v5 != v7)
  {
    do
    {
      v8 = v6[139] - v6[138];
      if (v8)
      {
        v9 = 0;
        v10 = 0x3795876FF3795877 * (v8 >> 3);
        do
        {
          sub_87E144(a1, v6, v9++, a3);
        }

        while (v10 != v9);
      }

      sub_87EE60(a1, v6);
      v6 += 1582;
    }

    while (v6 != v7);
  }
}

void sub_87E144(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  v7 = sub_578320(a2 + 138, a3);
  if ((*(v7 + 160) - 89) < 2)
  {
    return;
  }

  v8 = v7;
  nullsub_1();
  v10 = v9;
  v11 = *(v8 + 24);
  if (v11 >= 0xCCCCCCCCCCCCCCCDLL * ((v9[1] - *v9) >> 3))
  {
    v11 = sub_4D1DC0(a2) - 1;
  }

  v12 = sub_4D1F50(a2, v11);
  v13 = sub_53A634(a2 + 936, v11);
  sub_5EB5B8((a1 + 8), v13);
  v14 = *(v8 + 160);
  if (v14 <= 0x3F)
  {
    if (((1 << v14) & 0xC000000000300008) != 0)
    {
      if (*(v8 + 360) == 1 && *(v8 + 136) != *(v8 + 144))
      {
        sub_87F470(a1, (v8 + 136), a4, v113);
        if (sub_734C10(v113))
        {
          sub_87F408((v8 + 392), v113);
          if (*(v8 + 392) == *(v8 + 400))
          {
LABEL_66:
            sub_3E5388(v113);
            goto LABEL_77;
          }
        }

        else
        {
          v32 = *(sub_4D1F50(a2, *(v8 + 16)) + 32);
          BYTE6(v97[0]) = BYTE6(v32);
          WORD2(v97[0]) = WORD2(v32);
          LODWORD(v97[0]) = v32;
          v100[0] = 0;
          v100[1] = 0;
          v101[0] = 0;
          sub_87EFA8(a1, v97, v100, __p);
          if (SHIBYTE(v101[0]) < 0)
          {
            operator delete(v100[0]);
          }

          if (sub_734C10(__p))
          {
            sub_87F408((v8 + 392), __p);
          }

          sub_3E5388(__p);
          if (*(v8 + 392) == *(v8 + 400))
          {
            goto LABEL_66;
          }
        }

        v33 = v12[4];
        LODWORD(v97[0]) = v33;
        BYTE6(v97[0]) = BYTE6(v33);
        WORD2(v97[0]) = WORD2(v33);
        v100[0] = 0;
        v100[1] = 0;
        v101[0] = 0;
        sub_87EFA8(a1, v97, v100, __p);
        if (SHIBYTE(v101[0]) < 0)
        {
          operator delete(v100[0]);
        }

        if (sub_734C10(__p))
        {
          nullsub_1();
          v35 = v34;
          nullsub_1();
          if (!sub_BB4E4(v35, v36))
          {
            sub_87F408((v8 + 392), __p);
          }
        }

        sub_3E5388(__p);
        goto LABEL_66;
      }
    }

    else if (v14 == 4)
    {
      sub_87F13C(a1, v8, v10, v113);
      if (!sub_734C10(v113))
      {
        goto LABEL_49;
      }

      v15 = *(v8 + 400);
      if (v15 >= *(v8 + 408))
      {
        v16 = sub_6868D8((v8 + 392), v113);
      }

      else
      {
        sub_5139E8(*(v8 + 400), v113);
        v16 = (v15 + 152);
        *(v8 + 400) = v15 + 152;
      }

      *(v8 + 400) = v16;
      if (v122 < 0)
      {
        goto LABEL_72;
      }

LABEL_50:
      if ((v119 & 0x80000000) == 0)
      {
        goto LABEL_51;
      }

      goto LABEL_73;
    }
  }

  v17 = (*v12 - **v12);
  if (*v17 >= 0x2Fu)
  {
    v18 = v17[23];
    if (v18)
    {
      v19 = *(*v12 + v18);
      v20 = v19 > 0x2A;
      v21 = (1 << v19) & 0x50426810004;
      if (!v20 && v21 != 0)
      {
        goto LABEL_77;
      }
    }
  }

  v23 = v12[4];
  LODWORD(v100[0]) = v23;
  BYTE6(v100[0]) = BYTE6(v23);
  WORD2(v100[0]) = WORD2(v23);
  __p[0] = 0;
  __p[1] = 0;
  v104[0] = 0;
  sub_87EFA8(a1, v100, __p, v113);
  if (SHIBYTE(v104[0]) < 0)
  {
    operator delete(__p[0]);
  }

  if (!sub_734C10(v113))
  {
    goto LABEL_49;
  }

  v24 = *(v8 + 400);
  if (v24 >= *(v8 + 408))
  {
    v25 = sub_6868D8((v8 + 392), v113);
  }

  else
  {
    sub_5139E8(*(v8 + 400), v113);
    v25 = (v24 + 152);
    *(v8 + 400) = v24 + 152;
  }

  *(v8 + 400) = v25;
  v26 = *(sub_4D1F50(a2, *(v8 + 16)) + 32);
  LODWORD(v97[0]) = v26;
  BYTE6(v97[0]) = BYTE6(v26);
  WORD2(v97[0]) = WORD2(v26);
  v100[0] = 0;
  v100[1] = 0;
  v101[0] = 0;
  sub_87EFA8(a1, v97, v100, __p);
  if (SHIBYTE(v101[0]) < 0)
  {
    operator delete(v100[0]);
  }

  v27 = HIBYTE(v104[0]);
  if (SHIBYTE(v104[0]) < 0)
  {
    v27 = __p[1];
  }

  if (v27)
  {
    v28 = v113[23];
    if (v113[23] < 0)
    {
      v28 = *&v113[8];
    }

    if (v28)
    {
      *(v8 + 616) |= sub_BB4E4(__p, v113);
    }
  }

  v29 = v112;
  v30 = v112;
  if ((v112 & 0x80u) != 0)
  {
    v29 = v111[1];
  }

  if (v29)
  {
    v31 = v122;
    if ((v122 & 0x80u) != 0)
    {
      v31 = v121[1];
    }

    if (v31)
    {
      *(v8 + 616) |= sub_BB4E4(v111, v121);
      v30 = v112;
    }
  }

  if ((v30 & 0x80) != 0)
  {
    operator delete(v111[0]);
    if ((v110 & 0x80000000) == 0)
    {
LABEL_46:
      if ((v108 & 0x80000000) == 0)
      {
        goto LABEL_47;
      }

LABEL_69:
      operator delete(v107);
      if ((v106 & 0x80000000) == 0)
      {
LABEL_48:
        if ((SHIBYTE(v104[0]) & 0x80000000) == 0)
        {
          goto LABEL_49;
        }

        goto LABEL_71;
      }

      goto LABEL_70;
    }
  }

  else if ((v110 & 0x80000000) == 0)
  {
    goto LABEL_46;
  }

  operator delete(v109);
  if (v108 < 0)
  {
    goto LABEL_69;
  }

LABEL_47:
  if ((v106 & 0x80000000) == 0)
  {
    goto LABEL_48;
  }

LABEL_70:
  operator delete(v105);
  if (SHIBYTE(v104[0]) < 0)
  {
LABEL_71:
    operator delete(__p[0]);
    if (v122 < 0)
    {
      goto LABEL_72;
    }

    goto LABEL_50;
  }

LABEL_49:
  if ((v122 & 0x80000000) == 0)
  {
    goto LABEL_50;
  }

LABEL_72:
  operator delete(v121[0]);
  if ((v119 & 0x80000000) == 0)
  {
LABEL_51:
    if ((v117 & 0x80000000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_74;
  }

LABEL_73:
  operator delete(v118);
  if ((v117 & 0x80000000) == 0)
  {
LABEL_52:
    if ((v115 & 0x80000000) == 0)
    {
      goto LABEL_53;
    }

LABEL_75:
    operator delete(v114);
    if ((v113[23] & 0x80000000) == 0)
    {
      goto LABEL_77;
    }

LABEL_76:
    operator delete(*v113);
    goto LABEL_77;
  }

LABEL_74:
  operator delete(v116);
  if (v115 < 0)
  {
    goto LABEL_75;
  }

LABEL_53:
  if ((v113[23] & 0x80000000) != 0)
  {
    goto LABEL_76;
  }

LABEL_77:
  v37 = (v8 + 424);
  sub_880268(a1, v10, v8, a4, 0, v113);
  v38 = *(v8 + 416);
  if (v38)
  {
    sub_5ED940(v8 + 416, v38);
    operator delete(*(v8 + 416));
    *(v8 + 416) = 0;
    *(v8 + 424) = 0;
    *(v8 + 432) = 0;
  }

  v39 = *v113;
  *(v8 + 416) = *v113;
  v40 = *&v113[8];
  *v37 = *&v113[8];
  *__p = 0u;
  *v104 = 0u;
  LODWORD(v105) = 1065353216;
  *v100 = 0u;
  *v101 = 0u;
  v102 = 1065353216;
  *v97 = 0u;
  v98 = 0u;
  v99 = 1065353216;
  v41 = *(v8 + 392);
  if (v41 == *(v8 + 400))
  {
    v42 = v40;
  }

  else
  {
    sub_23914(__p, v41, *(v8 + 392));
    sub_23914(v100, (*(v8 + 392) + 128), *(v8 + 392) + 128);
    sub_88AF68(v97, (*(v8 + 392) + 64), *(v8 + 392) + 64);
    v39 = *(v8 + 416);
    v42 = *v37;
  }

  *v113 = __p;
  *&v113[8] = v100;
  *&v113[16] = v97;
  v43 = sub_88B4C0(v39, v42, v113);
  if (v43 != *v37)
  {
    sub_5ED940(v8 + 416, v43);
  }

  nullsub_1();
  v89 = v10;
  v44 = 0;
  v95 = v45;
  v96 = v46;
  while (*(v8 + 160) != 4 && *(v8 + 392) == *(v8 + 400) && *(v8 + 416) == *v37 && v44 < *(a1 + 40))
  {
    sub_4D0568();
    v49 = v48;
    v51 = v50;
    if (v95)
    {
      v52 = v96;
      v53 = sub_4D1DC0(v95);
      v54 = v52 >= v53;
      v55 = v52 < v53;
      if (!v49)
      {
        if (v54)
        {
          break;
        }

        goto LABEL_105;
      }
    }

    else
    {
      if (!v48)
      {
        break;
      }

      v55 = 0;
    }

    v56 = sub_4D1DC0(v49);
    if (v51 < v56 && v55)
    {
      v58 = sub_4D1F50(v95, v96);
      if (v58 == sub_4D1F50(v49, v51))
      {
        break;
      }
    }

    else if (((v55 ^ (v51 < v56)) & 1) == 0)
    {
      break;
    }

LABEL_105:
    v59 = sub_4D1F50(v95, v96);
    v60 = *v59;
    v61 = &(*v59)[-**v59];
    if (*v61 < 0x2Fu || !*(v61 + 23) || ((v62 = v60[*(v61 + 23)], v20 = v62 > 0x2A, v63 = (1 << v62) & 0x50426810004, !v20) ? (v64 = v63 == 0) : (v64 = 1), v64))
    {
      v66 = v59[4];
      v92 = v66;
      v94 = BYTE6(v66);
      v93 = WORD2(v66);
      v90[0] = 0;
      v90[1] = 0;
      v91 = 0;
      sub_87EFA8(a1, &v92, v90, v113);
      if (SHIBYTE(v91) < 0)
      {
        operator delete(v90[0]);
      }

      if (sub_734C10(v113))
      {
        v120 = 1;
        v67 = *(v8 + 424);
        if (v67 >= *(v8 + 432))
        {
          v68 = sub_8898E8(v8 + 416, v113);
        }

        else
        {
          sub_5139E8(*(v8 + 424), v113);
          v68 = v67 + 152;
          *v37 = v67 + 152;
        }

        *v37 = v68;
      }

      if (v122 < 0)
      {
        operator delete(v121[0]);
        if (v119 < 0)
        {
          goto LABEL_181;
        }

LABEL_122:
        if ((v117 & 0x80000000) == 0)
        {
          goto LABEL_123;
        }

LABEL_182:
        operator delete(v116);
        if (v115 < 0)
        {
          goto LABEL_183;
        }

LABEL_124:
        if ((v113[23] & 0x80000000) == 0)
        {
          break;
        }
      }

      else
      {
        if ((v119 & 0x80000000) == 0)
        {
          goto LABEL_122;
        }

LABEL_181:
        operator delete(v118);
        if (v117 < 0)
        {
          goto LABEL_182;
        }

LABEL_123:
        if ((v115 & 0x80000000) == 0)
        {
          goto LABEL_124;
        }

LABEL_183:
        operator delete(v114);
        if ((v113[23] & 0x80000000) == 0)
        {
          break;
        }
      }

      operator delete(*v113);
      break;
    }

    v65 = *(v61 + 4);
    if (v65)
    {
      v47 = *&v60[v65];
    }

    else
    {
      v47 = 0;
    }

    v44 += v47;
    sub_88B5F8(&v95);
  }

  sub_880268(a1, v89, v8, a4, 1, v113);
  v69 = *(v8 + 440);
  if (v69)
  {
    sub_5ED940(v8 + 440, v69);
    operator delete(*(v8 + 440));
    *(v8 + 440) = 0;
    *(v8 + 448) = 0;
    *(v8 + 456) = 0;
  }

  *(v8 + 440) = *v113;
  *(v8 + 456) = *&v113[16];
  sub_87F7A4(a1, v89, v8, v113);
  if (sub_734C10(v113))
  {
    v70 = *(v8 + 392);
    if (v70 != *(v8 + 400))
    {
      v71 = *(v8 + 424);
      if (v71 >= *(v8 + 432))
      {
        v72 = sub_8898E8(v8 + 416, v70);
      }

      else
      {
        sub_5139E8(*(v8 + 424), v70);
        v72 = v71 + 152;
        *v37 = v71 + 152;
      }

      *v37 = v72;
      *(v72 - 32) = 1;
      sub_5ED940(v8 + 392, *(v8 + 392));
    }

    v73 = *(v8 + 424);
    if (v73 >= *(v8 + 432))
    {
      v74 = sub_6868D8((v8 + 416), v113);
    }

    else
    {
      sub_5139E8(*(v8 + 424), v113);
      v74 = (v73 + 152);
      *v37 = v73 + 152;
    }

    *v37 = v74;
    *(v74 - 8) = 4;
  }

  if (*(a1 + 96) == 1)
  {
    sub_87FBE8(a1, a2, v8, a4, v90);
    v75 = *(v8 + 1984);
    if (v75)
    {
      v76 = (v8 + 1984);
      v77 = *(v8 + 1992);
      v78 = *(v8 + 1984);
      if (v77 != v75)
      {
        do
        {
          v79 = *(v77 - 17);
          v77 -= 5;
          if (v79 < 0)
          {
            operator delete(*v77);
          }
        }

        while (v77 != v75);
        v78 = *v76;
      }

      *(v8 + 1992) = v75;
      operator delete(v78);
      *v76 = 0;
      *(v8 + 1992) = 0;
      *(v8 + 2000) = 0;
    }

    *(v8 + 1984) = *v90;
    *(v8 + 2000) = v91;
  }

  if ((v122 & 0x80000000) == 0)
  {
    if ((v119 & 0x80000000) == 0)
    {
      goto LABEL_149;
    }

LABEL_155:
    operator delete(v118);
    if (v117 < 0)
    {
      goto LABEL_156;
    }

LABEL_150:
    if ((v115 & 0x80000000) == 0)
    {
      goto LABEL_151;
    }

LABEL_157:
    operator delete(v114);
    if ((v113[23] & 0x80000000) != 0)
    {
      goto LABEL_158;
    }

LABEL_152:
    v80 = v98;
    if (v98)
    {
      goto LABEL_162;
    }

    goto LABEL_165;
  }

  operator delete(v121[0]);
  if (v119 < 0)
  {
    goto LABEL_155;
  }

LABEL_149:
  if ((v117 & 0x80000000) == 0)
  {
    goto LABEL_150;
  }

LABEL_156:
  operator delete(v116);
  if (v115 < 0)
  {
    goto LABEL_157;
  }

LABEL_151:
  if ((v113[23] & 0x80000000) == 0)
  {
    goto LABEL_152;
  }

LABEL_158:
  operator delete(*v113);
  v80 = v98;
  if (v98)
  {
    while (1)
    {
LABEL_162:
      v81 = *v80;
      if (v80[71] < 0)
      {
        operator delete(*(v80 + 6));
        if ((v80[47] & 0x80000000) == 0)
        {
          goto LABEL_161;
        }

LABEL_164:
        operator delete(*(v80 + 3));
        operator delete(v80);
        v80 = v81;
        if (!v81)
        {
          break;
        }
      }

      else
      {
        if (v80[47] < 0)
        {
          goto LABEL_164;
        }

LABEL_161:
        operator delete(v80);
        v80 = v81;
        if (!v81)
        {
          break;
        }
      }
    }
  }

LABEL_165:
  v82 = v97[0];
  v97[0] = 0;
  if (v82)
  {
    operator delete(v82);
  }

  v83 = v101[0];
  if (v101[0])
  {
    do
    {
      v87 = *v83;
      if (*(v83 + 39) < 0)
      {
        operator delete(v83[2]);
      }

      operator delete(v83);
      v83 = v87;
    }

    while (v87);
  }

  v84 = v100[0];
  v100[0] = 0;
  if (v84)
  {
    operator delete(v84);
  }

  v85 = v104[0];
  if (v104[0])
  {
    do
    {
      v88 = *v85;
      if (*(v85 + 39) < 0)
      {
        operator delete(v85[2]);
      }

      operator delete(v85);
      v85 = v88;
    }

    while (v88);
  }

  v86 = __p[0];
  __p[0] = 0;
  if (v86)
  {
    operator delete(v86);
  }
}

void sub_87ED18(_Unwind_Exception *a1)
{
  *(v1 + 400) = v2;
  sub_3E5388(v3 - 240);
  _Unwind_Resume(a1);
}

void sub_87ED30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  *v41 = v40;
  sub_3E5388(v42 - 240);
  sub_8801E0(&a20);
  sub_23D9C(&__p);
  sub_23D9C(&a35);
  _Unwind_Resume(a1);
}

void sub_87EE60(uint64_t a1, uint64_t a2)
{
  for (i = *(a2 + 1112) - 2616; i != *(a2 + 1104); i -= 2616)
  {
    v5 = *(i - 2200);
    v6 = *(i - 2192);
    v12[0] = a1;
    v12[1] = i + 416;
    v12[2] = i + 392;
    if (v6 - v5 < 1)
    {
      v11 = 0;
      v7 = 0;
    }

    else
    {
      v7 = 0x86BCA1AF286BCA1BLL * (v6 - v5);
      while (1)
      {
        v8 = operator new(152 * v7, &std::nothrow);
        if (v8)
        {
          break;
        }

        v9 = v7 >> 1;
        v10 = v7 > 1;
        v7 >>= 1;
        if (!v10)
        {
          v11 = 0;
          v7 = v9;
          goto LABEL_11;
        }
      }

      v11 = v8;
    }

LABEL_11:
    sub_88B6E4(v5, v6, v12, 0x86BCA1AF286BCA1BLL * (v6 - v5), v11, v7);
    if (v11)
    {
      operator delete(v11);
    }
  }
}

void sub_87EF90(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_87EFA8(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_5E94A4(*a1, *a2, 1, &v22);
  v9 = sub_2B51D8(*a1, *a2 | (*(a2 + 2) << 32));
  v10 = (v9 - *v9);
  if (*v10 >= 0x25u && (v11 = v10[18]) != 0)
  {
    v12 = (v9 + v11 + *(v9 + v11));
  }

  else
  {
    v12 = 0;
  }

  sub_31077C(v12, &__p);
  v13 = *(a4 + 23);
  if ((v13 & 0x80u) != 0)
  {
    v13 = *(a4 + 8);
  }

  if (v13)
  {
    sub_5EB5B8((a1 + 8), a4);
  }

  sub_735048(&v22, a5);
  v14 = __p;
  if (__p)
  {
    v15 = v21;
    v16 = __p;
    if (v21 != __p)
    {
      do
      {
        if (*(v15 - 9) < 0)
        {
          operator delete(*(v15 - 4));
        }

        v15 -= 5;
      }

      while (v15 != v14);
      v16 = __p;
    }

    v21 = v14;
    operator delete(v16);
  }

  v17 = v22;
  if (v22)
  {
    v18 = v23;
    v19 = v22;
    if (v23 != v22)
    {
      do
      {
        v18 = sub_310F30(v18 - 144);
      }

      while (v18 != v17);
      v19 = v22;
    }

    v23 = v17;
    operator delete(v19);
  }
}

void sub_87F10C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, void *a12)
{
  sub_3108E8(&a9);
  sub_5E9738(&a12);
  _Unwind_Resume(a1);
}

void sub_87F128(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_5E9738(va);
  _Unwind_Resume(a1);
}

void sub_87F13C(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *(*a4 + 40 * *(a2 + 16) + 32);
  v25 = v9;
  v27 = BYTE6(v9);
  v26 = WORD2(v9);
  __p = 0;
  v23 = 0;
  v24 = 0;
  sub_87EFA8(a1, &v25, &__p, v28);
  if (SHIBYTE(v24) < 0)
  {
    operator delete(__p);
    v10 = *(a2 + 16);
    v11 = *(a2 + 24);
    v13 = v10 + 1 >= v11;
    if (v10 + 1 > v11)
    {
      v11 = v10 + 1;
    }

    if (!v13)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v10 = *(a2 + 16);
    v11 = *(a2 + 24);
    v12 = v10 + 1 >= v11;
    if (v10 + 1 > v11)
    {
      v11 = v10 + 1;
    }

    if (!v12)
    {
LABEL_10:
      v14 = ~v10 + v11;
      v15 = 40 * v10 + 72;
      do
      {
        v16 = *(*a4 + v15);
        v25 = v16;
        v27 = BYTE6(v16);
        v26 = WORD2(v16);
        __p = 0;
        v23 = 0;
        v24 = 0;
        sub_87EFA8(a1, &v25, &__p, a5);
        if (SHIBYTE(v24) < 0)
        {
          operator delete(__p);
        }

        v17 = *(a5 + 23);
        if (v17 >= 0)
        {
          v18 = *(a5 + 23);
        }

        else
        {
          v18 = *(a5 + 8);
        }

        v19 = v29;
        if ((v29 & 0x80u) != 0)
        {
          v19 = v28[1];
        }

        if (v18 != v19)
        {
          goto LABEL_39;
        }

        v20 = v17 >= 0 ? a5 : *a5;
        v21 = (v29 & 0x80u) == 0 ? v28 : v28[0];
        if (memcmp(v20, v21, v18))
        {
          goto LABEL_39;
        }

        if (*(a5 + 151) < 0)
        {
          operator delete(*(a5 + 128));
          if ((*(a5 + 119) & 0x80000000) == 0)
          {
LABEL_29:
            if ((*(a5 + 95) & 0x80000000) == 0)
            {
              goto LABEL_30;
            }

            goto LABEL_35;
          }
        }

        else if ((*(a5 + 119) & 0x80000000) == 0)
        {
          goto LABEL_29;
        }

        operator delete(*(a5 + 96));
        if ((*(a5 + 95) & 0x80000000) == 0)
        {
LABEL_30:
          if ((*(a5 + 55) & 0x80000000) == 0)
          {
            goto LABEL_31;
          }

          goto LABEL_36;
        }

LABEL_35:
        operator delete(*(a5 + 72));
        if ((*(a5 + 55) & 0x80000000) == 0)
        {
LABEL_31:
          if (*(a5 + 23) < 0)
          {
            goto LABEL_37;
          }

          goto LABEL_11;
        }

LABEL_36:
        operator delete(*(a5 + 32));
        if (*(a5 + 23) < 0)
        {
LABEL_37:
          operator delete(*a5);
        }

LABEL_11:
        v15 += 40;
        --v14;
      }

      while (v14);
    }
  }

  sub_734CE0(a5);
LABEL_39:
  if (v37 < 0)
  {
    operator delete(v36);
    if ((v35 & 0x80000000) == 0)
    {
LABEL_41:
      if ((v33 & 0x80000000) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_47;
    }
  }

  else if ((v35 & 0x80000000) == 0)
  {
    goto LABEL_41;
  }

  operator delete(v34);
  if ((v33 & 0x80000000) == 0)
  {
LABEL_42:
    if ((v31 & 0x80000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_48;
  }

LABEL_47:
  operator delete(v32);
  if ((v31 & 0x80000000) == 0)
  {
LABEL_43:
    if ((v29 & 0x80000000) == 0)
    {
      return;
    }

LABEL_49:
    operator delete(v28[0]);
    return;
  }

LABEL_48:
  operator delete(v30);
  if (v29 < 0)
  {
    goto LABEL_49;
  }
}

__int128 *sub_87F408(__int128 **a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    v5 = sub_6868D8(a1, a2);
    a1[1] = v5;
    return (v5 - 152);
  }

  else
  {
    sub_5139E8(a1[1], a2);
    a1[1] = (v3 + 152);
    a1[1] = (v3 + 152);
    return v3;
  }
}

void sub_87F470(uint64_t *a1@<X0>, unint64_t **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  v9 = *(a2[1] - 1);
  v10 = sub_2B51D8(*a1, v9 & 0xFFFFFFFFFFFFLL);
  if (*(v8 + 7772) == 1)
  {
    v11 = sub_30C50C(v8 + 3896, v9, 0);
    v12 = &v11[-*v11];
    if (*v12 < 5u)
    {
      v13 = 0;
    }

    else
    {
      v13 = *(v12 + 2);
      if (v13)
      {
        v13 += &v11[*&v11[v13]];
      }
    }

    v14 = v13 + ((v9 >> 30) & 0x3FFFC) + 4 + *(v13 + ((v9 >> 30) & 0x3FFFC) + 4);
  }

  else
  {
    v14 = 0;
  }

  v50[0] = v10;
  v50[1] = v14;
  v50[2] = sub_31D7E8(v8, v9 & 0xFFFFFFFFFFFFLL, 1);
  v50[3] = v15;
  v50[4] = v9;
  v16 = *a1;
  v17 = **a2;
  v18 = sub_2B51D8(*a1, v17 & 0xFFFFFFFFFFFFLL);
  if (*(v16 + 7772) == 1)
  {
    v19 = sub_30C50C(v16 + 3896, v17, 0);
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

    v22 = v21 + ((v17 >> 30) & 0x3FFFC) + 4 + *(v21 + ((v17 >> 30) & 0x3FFFC) + 4);
  }

  else
  {
    v22 = 0;
  }

  v49[0] = v18;
  v49[1] = v22;
  v49[2] = sub_31D7E8(v16, v17 & 0xFFFFFFFFFFFFLL, 1);
  v49[3] = v23;
  v49[4] = v17;
  sub_734CE0(v39);
  sub_734CE0(v29);
  v24 = *a2;
  v25 = a2[1];
  v51[0] = a1;
  v51[1] = v49;
  v51[2] = v50;
  v51[3] = a3;
  v51[4] = v39;
  v51[5] = v29;
  if (v24 != v25)
  {
    v26 = v24 + 1;
    do
    {
      if (v26 == v25)
      {
        break;
      }

      v27 = sub_88DEE0(v51, *(v26 - 1), *v26);
      ++v26;
    }

    while (!v27);
  }

  if (sub_734C10(v39))
  {
    v28 = v39;
  }

  else
  {
    v28 = v29;
  }

  sub_5139E8(a4, v28);
  if (v38 < 0)
  {
    operator delete(__p);
    if ((v36 & 0x80000000) == 0)
    {
LABEL_24:
      if ((v34 & 0x80000000) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_35;
    }
  }

  else if ((v36 & 0x80000000) == 0)
  {
    goto LABEL_24;
  }

  operator delete(v35);
  if ((v34 & 0x80000000) == 0)
  {
LABEL_25:
    if ((v32 & 0x80000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_36;
  }

LABEL_35:
  operator delete(v33);
  if ((v32 & 0x80000000) == 0)
  {
LABEL_26:
    if ((v30 & 0x80000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_37;
  }

LABEL_36:
  operator delete(v31);
  if ((v30 & 0x80000000) == 0)
  {
LABEL_27:
    if ((v48 & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_38;
  }

LABEL_37:
  operator delete(v29[0]);
  if ((v48 & 0x80000000) == 0)
  {
LABEL_28:
    if ((v46 & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_39;
  }

LABEL_38:
  operator delete(v47);
  if ((v46 & 0x80000000) == 0)
  {
LABEL_29:
    if ((v44 & 0x80000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_40;
  }

LABEL_39:
  operator delete(v45);
  if ((v44 & 0x80000000) == 0)
  {
LABEL_30:
    if ((v42 & 0x80000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_41;
  }

LABEL_40:
  operator delete(v43);
  if ((v42 & 0x80000000) == 0)
  {
LABEL_31:
    if ((v40 & 0x80000000) == 0)
    {
      return;
    }

LABEL_42:
    operator delete(v39[0]);
    return;
  }

LABEL_41:
  operator delete(v41);
  if (v40 < 0)
  {
    goto LABEL_42;
  }
}

void sub_87F770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, ...)
{
  va_start(va, a27);
  sub_3E5388(va);
  _Unwind_Resume(a1);
}

void sub_87F784(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, ...)
{
  va_start(va, a27);
  sub_3E5388(&a9);
  sub_3E5388(va);
  _Unwind_Resume(a1);
}

void sub_87F7A4(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a5@<X8>)
{
  if (a3[3] < 0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 3))
  {
    v8 = a3[2];
    while (1)
    {
      if (++v8 > a3[3])
      {
        sub_734CE0(a5);
        return;
      }

      v10 = sub_605E3C(a2, v8);
      v11 = *(v10 + 32);
      v12 = *(v10 + 16);
      v37[0] = *v10;
      v37[1] = v12;
      v38 = v11;
      v13 = *a1;
      v14 = sub_311544(v37);
      v15 = v14;
      v16 = sub_2AF704(v13 + 3896, v14, 1);
      if (v16 && (v17 = &v16[-*v16], *v17 >= 7u) && (v18 = *(v17 + 3)) != 0 && (v19 = &v16[4 * HIDWORD(v14) + v18 + *&v16[v18]], v20 = (v19 + 4 + *(v19 + 4)), v21 = (v20 - *v20), *v21 >= 9u) && (v22 = v21[4]) != 0 && (v23 = *(v20 + v22), v23 != -1))
      {
        v24 = sub_31DF78(v13, v15);
        sub_5E9E60(v13, v24, v23, 1, &__p);
      }

      else
      {
        __p = 0;
        v35 = 0;
        v36 = 0;
      }

      v33[0] = a2;
      v33[1] = a3;
      if (sub_880AB4(v33, &__p))
      {
        sub_734CE0(a5);
LABEL_18:
        v25 = 0;
        v26 = __p;
        if (!__p)
        {
          goto LABEL_5;
        }

        goto LABEL_32;
      }

      sub_735048(&__p, a5);
      if (sub_734C10(a5))
      {
        goto LABEL_18;
      }

      if (*(a5 + 151) < 0)
      {
        operator delete(*(a5 + 128));
        if ((*(a5 + 119) & 0x80000000) == 0)
        {
LABEL_22:
          if ((*(a5 + 95) & 0x80000000) == 0)
          {
            goto LABEL_23;
          }

          goto LABEL_29;
        }
      }

      else if ((*(a5 + 119) & 0x80000000) == 0)
      {
        goto LABEL_22;
      }

      operator delete(*(a5 + 96));
      if ((*(a5 + 95) & 0x80000000) == 0)
      {
LABEL_23:
        if (*(a5 + 55) < 0)
        {
          goto LABEL_30;
        }

        goto LABEL_24;
      }

LABEL_29:
      operator delete(*(a5 + 72));
      if (*(a5 + 55) < 0)
      {
LABEL_30:
        operator delete(*(a5 + 32));
        if ((*(a5 + 23) & 0x80000000) == 0)
        {
LABEL_25:
          v25 = 1;
          v26 = __p;
          if (!__p)
          {
            goto LABEL_5;
          }

          goto LABEL_32;
        }

        goto LABEL_31;
      }

LABEL_24:
      if ((*(a5 + 23) & 0x80000000) == 0)
      {
        goto LABEL_25;
      }

LABEL_31:
      operator delete(*a5);
      v25 = 1;
      v26 = __p;
      if (!__p)
      {
        goto LABEL_5;
      }

LABEL_32:
      v27 = v35;
      v9 = v26;
      if (v35 != v26)
      {
        while (1)
        {
          if (*(v27 - 1) < 0)
          {
            operator delete(*(v27 - 3));
            if (*(v27 - 33) < 0)
            {
LABEL_50:
              operator delete(*(v27 - 7));
              v28 = *(v27 - 10);
              if (!v28)
              {
LABEL_51:
                if (*(v27 - 89) < 0)
                {
                  goto LABEL_34;
                }

                goto LABEL_52;
              }

              goto LABEL_39;
            }
          }

          else if (*(v27 - 33) < 0)
          {
            goto LABEL_50;
          }

          v28 = *(v27 - 10);
          if (!v28)
          {
            goto LABEL_51;
          }

LABEL_39:
          v29 = *(v27 - 9);
          if (v29 == v28)
          {
            *(v27 - 9) = v28;
            operator delete(v28);
            if (*(v27 - 89) < 0)
            {
              goto LABEL_34;
            }

            goto LABEL_52;
          }

          do
          {
            while (*(v29 - 9) < 0)
            {
              operator delete(*(v29 - 4));
              v30 = v29 - 7;
              if (*(v29 - 33) < 0)
              {
                goto LABEL_46;
              }

LABEL_43:
              v29 = v30;
              if (v30 == v28)
              {
                goto LABEL_47;
              }
            }

            v30 = v29 - 7;
            if ((*(v29 - 33) & 0x80000000) == 0)
            {
              goto LABEL_43;
            }

LABEL_46:
            operator delete(*v30);
            v29 = v30;
          }

          while (v30 != v28);
LABEL_47:
          v31 = *(v27 - 10);
          *(v27 - 9) = v28;
          operator delete(v31);
          if (*(v27 - 89) < 0)
          {
LABEL_34:
            operator delete(*(v27 - 14));
            if ((*(v27 - 113) & 0x80000000) == 0)
            {
              goto LABEL_35;
            }

LABEL_53:
            operator delete(*(v27 - 17));
            v27 -= 18;
            if (v27 == v26)
            {
LABEL_3:
              v9 = __p;
              break;
            }
          }

          else
          {
LABEL_52:
            if (*(v27 - 113) < 0)
            {
              goto LABEL_53;
            }

LABEL_35:
            v27 -= 18;
            if (v27 == v26)
            {
              goto LABEL_3;
            }
          }
        }
      }

      v35 = v26;
      operator delete(v9);
LABEL_5:
      if ((v25 & 1) == 0)
      {
        return;
      }
    }
  }

  sub_734CE0(a5);
}

void sub_87FB9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_3E5388(v15);
  sub_5E9738(va);
  _Unwind_Resume(a1);
}

void sub_87FBB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void **);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  sub_3108E8(va);
  sub_5E9738(va1);
  _Unwind_Resume(a1);
}

void sub_87FBD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_5E9738(va);
  _Unwind_Resume(a1);
}

void sub_87FBE8(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, __int128 **a5@<X8>)
{
  if (a3[2] == -1)
  {
    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
    return;
  }

  nullsub_1();
  v41 = v8;
  a5[1] = 0;
  a5[2] = 0;
  *a5 = 0;
  v36 = a5;
  v9 = a3[5];
  v10 = a3[2];
  v11 = v9 >= v10;
  if (v9 > v10)
  {
    v10 = a3[5];
  }

  v38 = v10;
  if (!v11)
  {
    v39 = a1;
    while (1)
    {
      sub_6D3D8C(*a1, *(*v41 + 40 * v9 + 32) | (*(*v41 + 40 * v9 + 36) << 32), &v47);
      v13 = v47;
      v12 = v48;
      if (v47 != v48)
      {
        break;
      }

LABEL_53:
      if (v13)
      {
        v48 = v13;
        operator delete(v13);
      }

      if (++v9 == v38)
      {
        return;
      }
    }

    v40 = v48;
    while (1)
    {
      v14 = sub_30CC30(*a1, *v13);
      v15 = (v14 - *v14);
      if (*v15 < 5u)
      {
        goto LABEL_9;
      }

      v16 = v15[2];
      if (!v16 || *(v14 + v16) != 4)
      {
        goto LABEL_9;
      }

      v17 = sub_30CC30(*a1, *v13);
      v18 = (v17 - *v17);
      if (*v18 >= 7u)
      {
        v19 = v18[3];
        if (v19)
        {
          if (*(v17 + v19 + *(v17 + v19)))
          {
            operator new();
          }
        }
      }

      a1 = v39;
      v20 = sub_30CC30(*v39, *v13);
      v45[0] = 0;
      v45[1] = 0;
      v46 = 0;
      v21 = (v20 - *v20);
      v22 = *v21;
      if (v22 >= 5 && v21[2] && *(v20 + v21[2]) == 4)
      {
        break;
      }

LABEL_30:
      sub_7383C8(v45, a4, __p);
      if (sub_734F70(__p))
      {
        *(&v44 + 1) = sub_4D2544(a2, v9, 1, a3[3], 0, v27);
        v28 = v36[1];
        if (v28 >= v36[2])
        {
          v30 = sub_88AA00(v36, __p);
        }

        else
        {
          if (SHIBYTE(v43) < 0)
          {
            sub_325C(v36[1], __p[0], __p[1]);
          }

          else
          {
            v29 = *__p;
            *(v28 + 2) = v43;
            *v28 = v29;
          }

          *(v28 + 24) = v44;
          v30 = v28 + 40;
        }

        v36[1] = v30;
        sub_881950(v36);
      }

      if ((SHIBYTE(v43) & 0x80000000) == 0)
      {
        v31 = v45[0];
        if (!v45[0])
        {
          goto LABEL_51;
        }

LABEL_42:
        v32 = v45[1];
        v33 = v31;
        if (v45[1] == v31)
        {
LABEL_50:
          v45[1] = v31;
          operator delete(v33);
          goto LABEL_51;
        }

        while (1)
        {
          if (*(v32 - 1) < 0)
          {
            operator delete(*(v32 - 3));
            v34 = v32 - 6;
            if ((*(v32 - 25) & 0x80000000) == 0)
            {
              goto LABEL_45;
            }
          }

          else
          {
            v34 = v32 - 6;
            if ((*(v32 - 25) & 0x80000000) == 0)
            {
LABEL_45:
              v32 = v34;
              if (v34 == v31)
              {
                goto LABEL_49;
              }

              continue;
            }
          }

          operator delete(*v34);
          v32 = v34;
          if (v34 == v31)
          {
LABEL_49:
            v33 = v45[0];
            goto LABEL_50;
          }
        }
      }

      operator delete(__p[0]);
      v31 = v45[0];
      if (v45[0])
      {
        goto LABEL_42;
      }

LABEL_51:
      v12 = v40;
LABEL_9:
      if (++v13 == v12)
      {
        v13 = v47;
        goto LABEL_53;
      }
    }

    if (v22 < 0xD)
    {
      v23 = 0;
      v24 = (&loc_1120530 + 1);
      if (*(&loc_1120530 + 1) < 7u)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v23 = v21[6];
      if (v23)
      {
        v23 = (v23 + v20 + *(v23 + v20));
      }

      v24 = (v23 - *v23);
      if (*v24 < 7u)
      {
        goto LABEL_28;
      }
    }

    v25 = v24[3];
    if (v25)
    {
      v26 = (v23 + v25 + *(v23 + v25));
LABEL_29:
      sub_84804(v26, __p);
      *v45 = *__p;
      v46 = v43;
      goto LABEL_30;
    }

LABEL_28:
    v26 = 0;
    goto LABEL_29;
  }
}

void sub_88013C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28)
{
  *(a12 + 8) = v29;
  if (a24 < 0)
  {
    operator delete(__p);
  }

  sub_1AA90(&a28);
  if (v28)
  {
    operator delete(v28);
  }

  v32 = *(v30 - 112);
  if (v32)
  {
    *(v30 - 104) = v32;
    operator delete(v32);
  }

  sub_5ED73C(a12);
  _Unwind_Resume(a1);
}

uint64_t sub_8801E0(uint64_t a1)
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
        if (*(v2 + 47) < 0)
        {
LABEL_10:
          operator delete(v2[3]);
        }
      }

      else if (*(v2 + 47) < 0)
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

void sub_880268(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, __int128 **a6@<X8>)
{
  v6 = *(a3 + 16);
  if (v6 == -1 || (v9 = *(a3 + 24), v9 >= 0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 3)))
  {
    *a6 = 0;
    a6[1] = 0;
    a6[2] = 0;
    return;
  }

  v100 = 0;
  v101 = 0;
  v102 = 0;
  v12 = *(a3 + 32);
  if (v12 == -1)
  {
    if (v6 <= v9 + 1)
    {
      v14 = v9 + 1;
    }

    else
    {
      v14 = v6;
    }

    if (v6 <= v9)
    {
      do
      {
        v16 = *(sub_605E3C(a2, v6) + 32);
        v17 = v101;
        if (v101 < v102)
        {
          *v101 = v16 & 0xFFFFFFFFFFFFFFLL;
          v15 = (v17 + 8);
        }

        else
        {
          v18 = v100;
          v19 = v101 - v100;
          v20 = (v101 - v100) >> 3;
          v21 = v20 + 1;
          if ((v20 + 1) >> 61)
          {
            sub_1794();
          }

          v22 = v102 - v100;
          if ((v102 - v100) >> 2 > v21)
          {
            v21 = v22 >> 2;
          }

          if (v22 >= 0x7FFFFFFFFFFFFFF8)
          {
            v23 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v23 = v21;
          }

          if (v23)
          {
            if (!(v23 >> 61))
            {
              operator new();
            }

            sub_1808();
          }

          v24 = (8 * v20);
          v25 = v16 & 0xFFFFFFFFFFFFFFLL;
          v26 = &v24[-((v101 - v100) >> 3)];
          *v24 = v25;
          v15 = v24 + 1;
          memcpy(v26, v18, v19);
          v100 = v26;
          v102 = 0;
          if (v18)
          {
            operator delete(v18);
          }
        }

        v101 = v15;
        ++v6;
      }

      while (v14 != v6);
    }
  }

  else
  {
    v13 = *(sub_605E3C(a2, v12) + 32);
    v27 = v100;
    v28 = v101 - v100;
    v29 = (v101 - v100) >> 3;
    v30 = v29 + 1;
    if ((v29 + 1) >> 61)
    {
      sub_1794();
    }

    v31 = v102 - v100;
    if ((v102 - v100) >> 2 > v30)
    {
      v30 = v31 >> 2;
    }

    if (v31 >= 0x7FFFFFFFFFFFFFF8)
    {
      v32 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v32 = v30;
    }

    if (v32)
    {
      if (!(v32 >> 61))
      {
        operator new();
      }

      sub_1808();
    }

    *(8 * v29) = v13 & 0xFFFFFFFFFFFFFFLL;
    memcpy(0, v27, v28);
    v100 = 0;
    v102 = 0;
    v101 = 8 * v29 + 8;
    v33 = *(sub_605E3C(a2, *(a3 + 32) + 1) + 32);
    v34 = v101;
    v35 = v101 >> 3;
    v36 = (v101 >> 3) + 1;
    if (v36 >> 61)
    {
      sub_1794();
    }

    v37 = v102 - v100;
    if ((v102 - v100) >> 2 > v36)
    {
      v36 = v37 >> 2;
    }

    if (v37 >= 0x7FFFFFFFFFFFFFF8)
    {
      v38 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v38 = v36;
    }

    if (v38)
    {
      if (!(v38 >> 61))
      {
        operator new();
      }

      sub_1808();
    }

    *(8 * v35) = v33 & 0xFFFFFFFFFFFFFFLL;
    memcpy(0, 0, v34);
    v100 = 0;
    v102 = 0;
    v101 = 8 * v35 + 8;
  }

  v39 = 0;
  v40 = 0;
  __p = 0;
  v99 = 0uLL;
  v42 = *(a3 + 16);
  v41 = *(a3 + 24);
  if (v42 <= v41)
  {
    v43 = *(a3 + 24);
  }

  else
  {
    v43 = *(a3 + 16);
  }

  if (v42 < v41)
  {
    do
    {
      sub_880C38(a1, a2, v42, &v100, a5, &v96);
      v50 = __p;
      if (__p)
      {
        v51 = v99;
        v52 = __p;
        if (v99 != __p)
        {
          do
          {
            v51 = sub_31104C(v51 - 16);
          }

          while (v51 != v50);
          v52 = __p;
        }

        *&v99 = v50;
        operator delete(v52);
      }

      v40 = v96;
      __p = v96;
      v99 = v97;
      v39 = v97;
      ++v42;
    }

    while (v96 == v97 && v42 != v43);
  }

  v44 = *(a3 + 160);
  v45 = v44 > 0x3F;
  v46 = (1 << v44) & 0xF000000000000006;
  v47 = v45 || v46 == 0;
  if (v47 || (*(a3 + 1030) & 1) != 0 || (*(a3 + 1029) & 1) != 0 || (*(a3 + 1028) & 1) != 0)
  {
    v48 = (a1 + 48);
    if (v40 != v39)
    {
      goto LABEL_69;
    }

LABEL_71:
    v60 = *v48;
    if (*v48 >= 1)
    {
      v61 = 0;
      v62 = *(a3 + 16);
      while (v62 >= 1 && v62 > *(a3 + 40))
      {
        sub_880C38(a1, a2, --v62, &v100, a5, &v96);
        v63 = __p;
        if (__p)
        {
          v64 = v99;
          v65 = __p;
          if (v99 != __p)
          {
            do
            {
              v64 = sub_31104C(v64 - 16);
            }

            while (v64 != v63);
            v65 = __p;
          }

          *&v99 = v63;
          operator delete(v65);
        }

        v40 = v96;
        __p = v96;
        v99 = v97;
        v66 = *(*a2 + 40 * v62);
        v67 = (v66 - *v66);
        if (*v67 < 9u)
        {
          v68 = 0;
        }

        else
        {
          v68 = v67[4];
          if (v68)
          {
            v68 = *(v66 + v68);
          }
        }

        v39 = v97;
        if (v96 != v97)
        {
          goto LABEL_69;
        }

        v61 += v68;
        if (v61 >= v60)
        {
          break;
        }
      }
    }

    *a6 = 0;
    a6[1] = 0;
    a6[2] = 0;
    if (v40)
    {
      goto LABEL_131;
    }

    goto LABEL_135;
  }

  v53 = *(a3 + 2057);
  v54 = 8 * v53 + 8;
  v55 = v53 >= 4;
  v56 = 32;
  if (!v55)
  {
    v56 = v54;
  }

  v48 = (a1 + v56 + 40);
  if (v40 == v39)
  {
    goto LABEL_71;
  }

LABEL_69:
  v57 = v39 - v40 - 128;
  if (v57 < 0x80)
  {
    v58 = 0;
    v59 = v40;
    do
    {
LABEL_95:
      if (!*(v59 + 49))
      {
        ++v58;
      }

      v59 += 16;
    }

    while (v59 != v39);
    goto LABEL_98;
  }

  v69 = 0;
  v70 = 0;
  v71 = (v57 >> 7) + 1;
  v59 = &v40[16 * (v71 & 0x3FFFFFFFFFFFFFELL)];
  v72 = v40 + 177;
  v73 = v71 & 0x3FFFFFFFFFFFFFELL;
  do
  {
    if (!*(v72 - 128))
    {
      ++v69;
    }

    if (!*v72)
    {
      ++v70;
    }

    v72 += 256;
    v73 -= 2;
  }

  while (v73);
  v58 = v70 + v69;
  if (v71 != (v71 & 0x3FFFFFFFFFFFFFELL))
  {
    goto LABEL_95;
  }

LABEL_98:
  sub_88110C(a1, a2, *(a3 + 24), &v96);
  v93 = 0;
  v94 = 0;
  v95 = 0;
  v74 = __p;
  v75 = v99;
  if (__p == v99)
  {
    goto LABEL_119;
  }

  do
  {
    v77 = v96;
    v78 = v97;
    if (v96 == v97)
    {
LABEL_110:
      if (v77 != v97)
      {
        goto LABEL_111;
      }
    }

    else
    {
      do
      {
        v80 = *v74;
        v79 = v74[1];
        v81 = *v77;
        if ((v79 - *v74) == (v77[1] - *v77))
        {
          if (v80 == v79)
          {
            goto LABEL_110;
          }

          while (sub_58D9C(v80, v81))
          {
            v80 += 6;
            v81 += 6;
            if (v80 == v79)
            {
              goto LABEL_110;
            }
          }
        }

        v77 += 16;
      }

      while (v77 != v78);
      if (v78 != v97)
      {
LABEL_111:
        if (v58 != 1 || *(v74 + 49))
        {
          goto LABEL_102;
        }
      }
    }

    v82 = v94;
    if (v94 >= v95)
    {
      v76 = sub_88A424(&v93, v74);
    }

    else
    {
      sub_88A54C(v94, v74);
      v76 = v82 + 16;
    }

    v94 = v76;
LABEL_102:
    v74 += 16;
  }

  while (v74 != v75);
  if (v93 != v94)
  {
    sub_736B84((a1 + 8), &v93, a4, a6);
    goto LABEL_120;
  }

LABEL_119:
  sub_736B84((a1 + 8), &__p, a4, a6);
LABEL_120:
  v83 = v93;
  if (v93)
  {
    v84 = v94;
    v85 = v93;
    if (v94 != v93)
    {
      do
      {
        v84 = sub_31104C(v84 - 16);
      }

      while (v84 != v83);
      v85 = v93;
    }

    v94 = v83;
    operator delete(v85);
  }

  v86 = v96;
  if (v96)
  {
    v87 = v97;
    v88 = v96;
    if (v97 != v96)
    {
      do
      {
        v87 = sub_31104C(v87 - 16);
      }

      while (v87 != v86);
      v88 = v96;
    }

    *&v97 = v86;
    operator delete(v88);
  }

  v40 = __p;
  if (__p)
  {
LABEL_131:
    v89 = v99;
    v90 = v40;
    if (v99 != v40)
    {
      do
      {
        v89 = sub_31104C(v89 - 16);
      }

      while (v89 != v40);
      v90 = __p;
    }

    *&v99 = v40;
    operator delete(v90);
  }

LABEL_135:
  if (v100)
  {
    v101 = v100;
    operator delete(v100);
  }
}

void sub_880A3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  sub_703590(&a11);
  sub_703590(&a14);
  sub_703590(&a17);
  if (__p)
  {
    a21 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_880AB4(void **a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    while ((*(v2 + 113) & 1) == 0)
    {
      v2 += 144;
      if (v2 == v3)
      {
        return 0;
      }
    }
  }

  if (v2 == v3)
  {
    return 0;
  }

  v5 = *sub_605E3C(*a1, a1[1][2]);
  v6 = *sub_605E3C(*a1, a1[1][3]);
  v7 = (v5 - *v5);
  v8 = *v7;
  if (v8 >= 0x9B && v7[77])
  {
    v9 = *(v5 + v7[77] + 1) & 1;
    v10 = (v6 - *v6);
    v11 = *v10;
    if (v11 < 0x9B)
    {
LABEL_14:
      if (v9)
      {
        return 0;
      }

      goto LABEL_16;
    }
  }

  else
  {
    v9 = 0;
    v10 = (v6 - *v6);
    v11 = *v10;
    if (v11 < 0x9B)
    {
      goto LABEL_14;
    }
  }

  if (!v10[77])
  {
    goto LABEL_14;
  }

  if ((v9 ^ *(v6 + v10[77] + 1)))
  {
    return 0;
  }

LABEL_16:
  if (v8 >= 0x9B && v7[77])
  {
    v13 = v11 < 0x9B || (*(v5 + v7[77]) & 0x100) == 0;
    if (!v13 && v10[77] && (*(v6 + v10[77] + 1) & 1) != 0)
    {
      v14 = v7[23];
      if (v14)
      {
        v15 = *(v5 + v14);
        v16 = v10[23];
        if (v16)
        {
          if ((v15 == 0) != (*(v6 + v16) == 0))
          {
            return 0;
          }
        }

        else if (!v15)
        {
          return 0;
        }
      }

      else if (v10[23] && !*(v6 + v10[23]))
      {
        return 0;
      }
    }
  }

  return 1;
}

void sub_880C38(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t **a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = 0;
  a6[1] = 0;
  a6[2] = 0;
  sub_6D3D8C(*a1, *(*a2 + 40 * a3 + 32) | (*(*a2 + 40 * a3 + 36) << 32), &v45);
  v12 = v45;
  v13 = v46;
  if (v45 == v46)
  {
    goto LABEL_35;
  }

  do
  {
    v14 = sub_30CC30(*a1, *v12);
    v15 = (v14 - *v14);
    if (*v15 < 5u)
    {
      goto LABEL_3;
    }

    v16 = v15[2];
    if (!v16 || *(v14 + v16) != 3)
    {
      goto LABEL_3;
    }

    sub_320200(*a1, *v12, &v43);
    v17 = v43;
    v18 = (v44 - v43) >> 3;
    if (v18 <= (-a3 - 0x3333333333333333 * ((a2[1] - *a2) >> 3)))
    {
      if (v43 != v44)
      {
        v19 = (40 * a3 + *a2 + 32);
        v20 = v43;
        do
        {
          v22 = *v19;
          v19 += 5;
          v21 = BYTE6(v22);
          if (__PAIR64__(*(v20 + 4), *v20) != __PAIR64__(WORD2(v22), v22) || *(v20 + 6) != v21)
          {
            goto LABEL_8;
          }

          v20 += 8;
        }

        while (v20 != v44);
      }

      v23 = *a4;
      v24 = a4[1];
      v25 = v43;
      v26 = v24 - *a4;
      if (v24 == *a4)
      {
        goto LABEL_27;
      }

      v27 = v18 < v26 >> 3;
      v28 = v18 - (v26 >> 3);
      if (!v27)
      {
        v29 = &v43[8 * v28 + 8];
        if (v29 != v43)
        {
          v32 = *v23;
          v30 = (v23 + 8);
          v31 = v32;
          v25 = v43;
          while (__PAIR64__(*(v25 + 4), *v25) != __PAIR64__(WORD2(v31), v31) || *(v25 + 6) != BYTE6(v31))
          {
LABEL_19:
            v25 += 8;
            if (v25 == v29)
            {
              goto LABEL_8;
            }
          }

          v33 = (v25 + 14);
          v34 = v30;
          while (v34 != v24)
          {
            v35 = *v34;
            if (__PAIR64__(*(v33 - 1), *(v33 - 6)) == __PAIR64__(WORD2(*v34), *v34))
            {
              v36 = *v33;
              v33 += 8;
              ++v34;
              if (v36 == BYTE6(v35))
              {
                continue;
              }
            }

            goto LABEL_19;
          }

LABEL_27:
          if (v25 != v44)
          {
            sub_880F90(a1, v12, a5, &__p);
            v37 = a5;
            sub_889A34(a6, a6[1], __p, v42, (v42 - __p) >> 7);
            v38 = __p;
            if (__p)
            {
              v39 = v42;
              v40 = __p;
              if (v42 != __p)
              {
                do
                {
                  v39 = sub_31104C(v39 - 16);
                }

                while (v39 != v38);
                v40 = __p;
              }

              v42 = v38;
              operator delete(v40);
            }

            v17 = v43;
            a5 = v37;
          }
        }
      }
    }

LABEL_8:
    if (v17)
    {
      v44 = v17;
      operator delete(v17);
    }

LABEL_3:
    ++v12;
  }

  while (v12 != v13);
  v12 = v45;
LABEL_35:
  if (v12)
  {
    v46 = v12;
    operator delete(v12);
  }
}

void sub_880F00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  sub_703590(&a10);
  if (__p)
  {
    a14 = __p;
    operator delete(__p);
    v19 = a16;
    if (!a16)
    {
LABEL_3:
      sub_703590(v17);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v19 = a16;
    if (!a16)
    {
      goto LABEL_3;
    }
  }

  a17 = v19;
  operator delete(v19);
  sub_703590(v17);
  _Unwind_Resume(a1);
}

void ***sub_880F90@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  v17 = a3;
  v7 = sub_30CC30(*a1, *a2);
  v8 = (v7 - *v7);
  if (*v8 >= 0xBu && (v9 = v8[5]) != 0)
  {
    v10 = (v7 + v9 + *(v7 + v9));
    a4[1] = 0;
    a4[2] = 0;
    *a4 = 0;
    sub_7035EC(a4, *v10);
    v16[0] = (v10 + 1);
    v18 = &v10[*v10 + 1];
    sub_703864(v16, &v18, a4, sub_31095C);
    v11 = *a4;
  }

  else
  {
    a4[2] = 0;
    v11 = 0uLL;
    *a4 = 0u;
  }

  v12 = &xmmword_27AF170;
  if (a3)
  {
    v12 = &xmmword_27AF198;
  }

  v16[0] = a1;
  v16[1] = &v17;
  v16[2] = v12;
  result = sub_88168C(v11, *(&v11 + 1), v16);
  v14 = result;
  v15 = a4[1];
  if (result != v15)
  {
    while (v15 != v14)
    {
      v15 -= 16;
      result = sub_31104C(v15);
    }

    a4[1] = v14;
  }

  return result;
}

void sub_88110C(uint64_t *a1@<X0>, uint64_t *a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 3);
  if (a3 <= v4)
  {
    v5 = 0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 3);
  }

  else
  {
    v5 = a3;
  }

  v23 = v5;
  if (v4 > a3)
  {
    v6 = a1;
    v7 = a3;
    do
    {
      if (v6[6] < 0)
      {
        break;
      }

      v8 = sub_605E3C(a2, v7);
      v9 = (*v8 - **v8);
      if (*v9 < 0x2Fu)
      {
        break;
      }

      v10 = v9[23];
      if (!v10)
      {
        break;
      }

      v11 = *(*v8 + v10);
      v12 = v11 > 0x2A;
      v13 = (1 << v11) & 0x50426810004;
      if (v12 || v13 == 0)
      {
        break;
      }

      sub_6D3D8C(*v6, *(*a2 + 40 * v7 + 32) | (*(*a2 + 40 * v7 + 36) << 32), &v27);
      v16 = v27;
      v15 = v28;
      if (v27 != v28)
      {
        v25 = v28;
        do
        {
          v17 = sub_30CC30(*v6, *v16);
          v18 = (v17 - *v17);
          if (*v18 >= 5u)
          {
            v19 = v18[2];
            if (v19)
            {
              if (*(v17 + v19) == 3)
              {
                v20 = sub_30CC30(*v6, *v16);
                v21 = (v20 - *v20);
                if (*v21 >= 7u)
                {
                  v22 = v21[3];
                  if (v22)
                  {
                    if (*(v20 + v22 + *(v20 + v22)))
                    {
                      operator new();
                    }
                  }
                }

                v6 = a1;
                operator delete(0);
                v15 = v25;
              }
            }
          }

          ++v16;
        }

        while (v16 != v15);
        v16 = v27;
      }

      if (v16)
      {
        v28 = v16;
        operator delete(v16);
      }

      ++v7;
    }

    while (v7 != v23);
  }
}

void sub_8815F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void ****a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  sub_703590(&a17);
  operator delete(v21);
  if (__p)
  {
    a21 = __p;
    operator delete(__p);
    sub_703590(a10);
    _Unwind_Resume(a1);
  }

  sub_703590(a10);
  _Unwind_Resume(a1);
}

unsigned __int8 *sub_88168C(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = a2;
  if (a1 != a2)
  {
    v6 = a1;
    v7 = **(a3 + 8);
    while (1)
    {
      v8 = v6[48];
      v9 = v8 == 3 && v6[49] == 3;
      v10 = v9 || v8 == 1;
      v11 = v10;
      if (!v7 && v11)
      {
        break;
      }

      v12 = *(a3 + 16);
      v13 = v12[1];
      if (v13)
      {
        v14 = v6[48];
        v15 = vcnt_s8(v13);
        v15.i16[0] = vaddlv_u8(v15);
        if (v15.u32[0] > 1uLL)
        {
          v16 = v6[48];
          if (*&v13 <= v14)
          {
            v16 = v8 % v12[1];
          }
        }

        else
        {
          v16 = (v13.i32[0] - 1) & v14;
        }

        v17 = *(*v12 + 8 * v16);
        if (v17)
        {
          v18 = *v17;
          if (v18)
          {
            if (v15.u32[0] < 2uLL)
            {
              v19 = *&v13 - 1;
              while (1)
              {
                v20 = v18[1];
                if (v20 == v14)
                {
                  if (*(v18 + 16) == v8)
                  {
                    goto LABEL_37;
                  }
                }

                else if ((v20 & v19) != v16)
                {
                  goto LABEL_34;
                }

                v18 = *v18;
                if (!v18)
                {
                  goto LABEL_34;
                }
              }
            }

            do
            {
              v21 = v18[1];
              if (v21 == v14)
              {
                if (*(v18 + 16) == v8)
                {
                  goto LABEL_37;
                }
              }

              else
              {
                if (v21 >= *&v13)
                {
                  v21 %= *&v13;
                }

                if (v21 != v16)
                {
                  break;
                }
              }

              v18 = *v18;
            }

            while (v18);
          }
        }
      }

LABEL_34:
      v22 = !v11;
      if (v7 != 1)
      {
        v22 = 1;
      }

      if (v22)
      {
        break;
      }

LABEL_37:
      v6 += 128;
      if (v6 == a2)
      {
        v6 = a2;
        break;
      }
    }

    if (v6 == a2)
    {
      return v6;
    }

    v23 = v6 + 128;
    if (v6 + 128 == a2)
    {
      return v6;
    }

    else
    {
      v3 = v6;
      do
      {
        v24 = v6[176];
        v25 = v6[177];
        v6 = v23;
        v28 = v24 == 3 && v25 == 3 || v24 == 1;
        v29 = **(a3 + 8);
        if (v29 || !v28)
        {
          v30 = *(a3 + 16);
          v31 = v30[1];
          if (v31)
          {
            v32 = vcnt_s8(v31);
            v32.i16[0] = vaddlv_u8(v32);
            if (v32.u32[0] > 1uLL)
            {
              v33 = v24;
              if (v31 <= v24)
              {
                v33 = v24 % v30[1];
              }
            }

            else
            {
              v33 = (v31 - 1) & v24;
            }

            v34 = *(*v30 + 8 * v33);
            if (v34)
            {
              v35 = *v34;
              if (v35)
              {
                if (v32.u32[0] < 2uLL)
                {
                  v36 = v31 - 1;
                  while (1)
                  {
                    v38 = v35[1];
                    if (v38 == v24)
                    {
                      if (*(v35 + 16) == v24)
                      {
                        goto LABEL_42;
                      }
                    }

                    else if ((v38 & v36) != v33)
                    {
                      goto LABEL_75;
                    }

                    v35 = *v35;
                    if (!v35)
                    {
                      goto LABEL_75;
                    }
                  }
                }

                do
                {
                  v37 = v35[1];
                  if (v37 == v24)
                  {
                    if (*(v35 + 16) == v24)
                    {
                      goto LABEL_42;
                    }
                  }

                  else
                  {
                    if (v37 >= v31)
                    {
                      v37 %= v31;
                    }

                    if (v37 != v33)
                    {
                      break;
                    }
                  }

                  v35 = *v35;
                }

                while (v35);
              }
            }
          }

LABEL_75:
          v39 = !v28;
          if (v29 != 1)
          {
            v39 = 1;
          }

          if ((v39 & 1) == 0)
          {
LABEL_42:
            sub_88A13C(v3, v6);
            v3 += 128;
          }
        }

        v23 = v6 + 128;
      }

      while (v6 + 128 != a2);
    }
  }

  return v3;
}

void sub_881950(void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1 == v3)
  {
LABEL_12:
    v10 = a1[1];
    if (v2 == v10)
    {
      return;
    }
  }

  else
  {
    while (1)
    {
      v4 = v2 + 5;
      if (v2 + 5 == v3)
      {
        break;
      }

      v5 = sub_734F94(v2, v2 + 5);
      v2 += 5;
      if (v5)
      {
        v6 = (v4 + 5);
        v7 = (v4 - 5);
        if (v6 == v3)
        {
          v8 = v7;
        }

        else
        {
          do
          {
            while (sub_734F94(v7, v6))
            {
              v8 = v7;
              v6 += 5;
              if (v6 == v3)
              {
                goto LABEL_11;
              }
            }

            v8 = v7 + 5;
            if (*(v7 + 63) < 0)
            {
              operator delete(*v8);
            }

            v9 = *v6;
            v7[7] = v6[2];
            *v8 = v9;
            *(v6 + 23) = 0;
            *v6 = 0;
            *(v7 + 4) = *(v6 + 3);
            v7 += 5;
            v6 += 5;
          }

          while (v6 != v3);
        }

LABEL_11:
        v2 = v8 + 5;
        goto LABEL_12;
      }
    }

    v2 = v3;
    v10 = a1[1];
    if (v3 == v10)
    {
      return;
    }
  }

  while (v10 != v2)
  {
    v11 = *(v10 - 17);
    v10 -= 5;
    if (v11 < 0)
    {
      operator delete(*v10);
    }
  }

  a1[1] = v2;
}

void sub_881EC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_881F04(uint64_t *a1, uint64_t a2, char a3, __int128 *a4)
{
  *a1 = sub_3AF6B4(a2);
  sub_64AC90((a1 + 1), a4, a3);
  operator new();
}

void sub_882158(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  if (a19 < 0)
  {
    operator delete(__p);
    if ((*(v20 + 31) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((*(v20 + 31) & 0x80000000) == 0)
  {
LABEL_6:
    _Unwind_Resume(exception_object);
  }

  operator delete(*(v20 + 8));
  _Unwind_Resume(exception_object);
}

void sub_882204(uint64_t a1, uint64_t a2, uint64_t a3)
{
  nullsub_1();
  v6 = *v5;
  v7 = *(v5 + 8);
  if (*v5 != v7)
  {
    do
    {
      v8 = v6[139] - v6[138];
      if (v8)
      {
        v9 = 0;
        v10 = 0x3795876FF3795877 * (v8 >> 3);
        do
        {
          sub_8822C4(a1, v6, v9++, a3);
        }

        while (v10 != v9);
      }

      sub_882FE0(a1, v6);
      v6 += 1582;
    }

    while (v6 != v7);
  }
}

void sub_8822C4(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  v7 = sub_578320(a2 + 138, a3);
  if ((*(v7 + 160) - 89) < 2)
  {
    return;
  }

  v8 = v7;
  nullsub_1();
  v10 = v9;
  v11 = *(v8 + 24);
  if (v11 >= 0xCCCCCCCCCCCCCCCDLL * ((v9[1] - *v9) >> 3))
  {
    v11 = sub_4D1DC0(a2) - 1;
  }

  v12 = sub_4D1F50(a2, v11);
  v13 = sub_53A634(a2 + 936, v11);
  sub_5EB5B8((a1 + 8), v13);
  v14 = *(v8 + 160);
  if (v14 <= 0x3F)
  {
    if (((1 << v14) & 0xC000000000300008) != 0)
    {
      if (*(v8 + 360) == 1 && *(v8 + 136) != *(v8 + 144))
      {
        sub_883588(a1, (v8 + 136), a4, v113);
        if (sub_734C10(v113))
        {
          sub_87F408((v8 + 392), v113);
          if (*(v8 + 392) == *(v8 + 400))
          {
LABEL_66:
            sub_3E5388(v113);
            goto LABEL_77;
          }
        }

        else
        {
          v32 = *(sub_4D1F50(a2, *(v8 + 16)) + 32);
          BYTE6(v97[0]) = BYTE6(v32);
          WORD2(v97[0]) = WORD2(v32);
          LODWORD(v97[0]) = v32;
          v100[0] = 0;
          v100[1] = 0;
          v101[0] = 0;
          sub_883128(a1, v97, v100, __p);
          if (SHIBYTE(v101[0]) < 0)
          {
            operator delete(v100[0]);
          }

          if (sub_734C10(__p))
          {
            sub_87F408((v8 + 392), __p);
          }

          sub_3E5388(__p);
          if (*(v8 + 392) == *(v8 + 400))
          {
            goto LABEL_66;
          }
        }

        v33 = v12[4];
        LODWORD(v97[0]) = v33;
        BYTE6(v97[0]) = BYTE6(v33);
        WORD2(v97[0]) = WORD2(v33);
        v100[0] = 0;
        v100[1] = 0;
        v101[0] = 0;
        sub_883128(a1, v97, v100, __p);
        if (SHIBYTE(v101[0]) < 0)
        {
          operator delete(v100[0]);
        }

        if (sub_734C10(__p))
        {
          nullsub_1();
          v35 = v34;
          nullsub_1();
          if (!sub_BB4E4(v35, v36))
          {
            sub_87F408((v8 + 392), __p);
          }
        }

        sub_3E5388(__p);
        goto LABEL_66;
      }
    }

    else if (v14 == 4)
    {
      sub_8832BC(a1, v8, v10, v113);
      if (!sub_734C10(v113))
      {
        goto LABEL_49;
      }

      v15 = *(v8 + 400);
      if (v15 >= *(v8 + 408))
      {
        v16 = sub_6868D8((v8 + 392), v113);
      }

      else
      {
        sub_5139E8(*(v8 + 400), v113);
        v16 = (v15 + 152);
        *(v8 + 400) = v15 + 152;
      }

      *(v8 + 400) = v16;
      if (v122 < 0)
      {
        goto LABEL_72;
      }

LABEL_50:
      if ((v119 & 0x80000000) == 0)
      {
        goto LABEL_51;
      }

      goto LABEL_73;
    }
  }

  v17 = (*v12 - **v12);
  if (*v17 >= 0x2Fu)
  {
    v18 = v17[23];
    if (v18)
    {
      v19 = *(*v12 + v18);
      v20 = v19 > 0x2A;
      v21 = (1 << v19) & 0x50426810004;
      if (!v20 && v21 != 0)
      {
        goto LABEL_77;
      }
    }
  }

  v23 = v12[4];
  LODWORD(v100[0]) = v23;
  BYTE6(v100[0]) = BYTE6(v23);
  WORD2(v100[0]) = WORD2(v23);
  __p[0] = 0;
  __p[1] = 0;
  v104[0] = 0;
  sub_883128(a1, v100, __p, v113);
  if (SHIBYTE(v104[0]) < 0)
  {
    operator delete(__p[0]);
  }

  if (!sub_734C10(v113))
  {
    goto LABEL_49;
  }

  v24 = *(v8 + 400);
  if (v24 >= *(v8 + 408))
  {
    v25 = sub_6868D8((v8 + 392), v113);
  }

  else
  {
    sub_5139E8(*(v8 + 400), v113);
    v25 = (v24 + 152);
    *(v8 + 400) = v24 + 152;
  }

  *(v8 + 400) = v25;
  v26 = *(sub_4D1F50(a2, *(v8 + 16)) + 32);
  LODWORD(v97[0]) = v26;
  BYTE6(v97[0]) = BYTE6(v26);
  WORD2(v97[0]) = WORD2(v26);
  v100[0] = 0;
  v100[1] = 0;
  v101[0] = 0;
  sub_883128(a1, v97, v100, __p);
  if (SHIBYTE(v101[0]) < 0)
  {
    operator delete(v100[0]);
  }

  v27 = HIBYTE(v104[0]);
  if (SHIBYTE(v104[0]) < 0)
  {
    v27 = __p[1];
  }

  if (v27)
  {
    v28 = v113[23];
    if (v113[23] < 0)
    {
      v28 = *&v113[8];
    }

    if (v28)
    {
      *(v8 + 616) |= sub_BB4E4(__p, v113);
    }
  }

  v29 = v112;
  v30 = v112;
  if ((v112 & 0x80u) != 0)
  {
    v29 = v111[1];
  }

  if (v29)
  {
    v31 = v122;
    if ((v122 & 0x80u) != 0)
    {
      v31 = v121[1];
    }

    if (v31)
    {
      *(v8 + 616) |= sub_BB4E4(v111, v121);
      v30 = v112;
    }
  }

  if ((v30 & 0x80) != 0)
  {
    operator delete(v111[0]);
    if ((v110 & 0x80000000) == 0)
    {
LABEL_46:
      if ((v108 & 0x80000000) == 0)
      {
        goto LABEL_47;
      }

LABEL_69:
      operator delete(v107);
      if ((v106 & 0x80000000) == 0)
      {
LABEL_48:
        if ((SHIBYTE(v104[0]) & 0x80000000) == 0)
        {
          goto LABEL_49;
        }

        goto LABEL_71;
      }

      goto LABEL_70;
    }
  }

  else if ((v110 & 0x80000000) == 0)
  {
    goto LABEL_46;
  }

  operator delete(v109);
  if (v108 < 0)
  {
    goto LABEL_69;
  }

LABEL_47:
  if ((v106 & 0x80000000) == 0)
  {
    goto LABEL_48;
  }

LABEL_70:
  operator delete(v105);
  if (SHIBYTE(v104[0]) < 0)
  {
LABEL_71:
    operator delete(__p[0]);
    if (v122 < 0)
    {
      goto LABEL_72;
    }

    goto LABEL_50;
  }

LABEL_49:
  if ((v122 & 0x80000000) == 0)
  {
    goto LABEL_50;
  }

LABEL_72:
  operator delete(v121[0]);
  if ((v119 & 0x80000000) == 0)
  {
LABEL_51:
    if ((v117 & 0x80000000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_74;
  }

LABEL_73:
  operator delete(v118);
  if ((v117 & 0x80000000) == 0)
  {
LABEL_52:
    if ((v115 & 0x80000000) == 0)
    {
      goto LABEL_53;
    }

LABEL_75:
    operator delete(v114);
    if ((v113[23] & 0x80000000) == 0)
    {
      goto LABEL_77;
    }

LABEL_76:
    operator delete(*v113);
    goto LABEL_77;
  }

LABEL_74:
  operator delete(v116);
  if (v115 < 0)
  {
    goto LABEL_75;
  }

LABEL_53:
  if ((v113[23] & 0x80000000) != 0)
  {
    goto LABEL_76;
  }

LABEL_77:
  v37 = (v8 + 424);
  sub_8842F8(a1, v10, v8, a4, 0, v113);
  v38 = *(v8 + 416);
  if (v38)
  {
    sub_5ED940(v8 + 416, v38);
    operator delete(*(v8 + 416));
    *(v8 + 416) = 0;
    *(v8 + 424) = 0;
    *(v8 + 432) = 0;
  }

  v39 = *v113;
  *(v8 + 416) = *v113;
  v40 = *&v113[8];
  *v37 = *&v113[8];
  *__p = 0u;
  *v104 = 0u;
  LODWORD(v105) = 1065353216;
  *v100 = 0u;
  *v101 = 0u;
  v102 = 1065353216;
  *v97 = 0u;
  v98 = 0u;
  v99 = 1065353216;
  v41 = *(v8 + 392);
  if (v41 == *(v8 + 400))
  {
    v42 = v40;
  }

  else
  {
    sub_23914(__p, v41, *(v8 + 392));
    sub_23914(v100, (*(v8 + 392) + 128), *(v8 + 392) + 128);
    sub_88AF68(v97, (*(v8 + 392) + 64), *(v8 + 392) + 64);
    v39 = *(v8 + 416);
    v42 = *v37;
  }

  *v113 = __p;
  *&v113[8] = v100;
  *&v113[16] = v97;
  v43 = sub_88B4C0(v39, v42, v113);
  if (v43 != *v37)
  {
    sub_5ED940(v8 + 416, v43);
  }

  nullsub_1();
  v89 = v10;
  v44 = 0;
  v95 = v45;
  v96 = v46;
  while (*(v8 + 160) != 4 && *(v8 + 392) == *(v8 + 400) && *(v8 + 416) == *v37 && v44 < *(a1 + 40))
  {
    sub_4D0568();
    v49 = v48;
    v51 = v50;
    if (v95)
    {
      v52 = v96;
      v53 = sub_4D1DC0(v95);
      v54 = v52 >= v53;
      v55 = v52 < v53;
      if (!v49)
      {
        if (v54)
        {
          break;
        }

        goto LABEL_105;
      }
    }

    else
    {
      if (!v48)
      {
        break;
      }

      v55 = 0;
    }

    v56 = sub_4D1DC0(v49);
    if (v51 < v56 && v55)
    {
      v58 = sub_4D1F50(v95, v96);
      if (v58 == sub_4D1F50(v49, v51))
      {
        break;
      }
    }

    else if (((v55 ^ (v51 < v56)) & 1) == 0)
    {
      break;
    }

LABEL_105:
    v59 = sub_4D1F50(v95, v96);
    v60 = *v59;
    v61 = &(*v59)[-**v59];
    if (*v61 < 0x2Fu || !*(v61 + 23) || ((v62 = v60[*(v61 + 23)], v20 = v62 > 0x2A, v63 = (1 << v62) & 0x50426810004, !v20) ? (v64 = v63 == 0) : (v64 = 1), v64))
    {
      v66 = v59[4];
      v92 = v66;
      v94 = BYTE6(v66);
      v93 = WORD2(v66);
      v90[0] = 0;
      v90[1] = 0;
      v91 = 0;
      sub_883128(a1, &v92, v90, v113);
      if (SHIBYTE(v91) < 0)
      {
        operator delete(v90[0]);
      }

      if (sub_734C10(v113))
      {
        v120 = 1;
        v67 = *(v8 + 424);
        if (v67 >= *(v8 + 432))
        {
          v68 = sub_8898E8(v8 + 416, v113);
        }

        else
        {
          sub_5139E8(*(v8 + 424), v113);
          v68 = v67 + 152;
          *v37 = v67 + 152;
        }

        *v37 = v68;
      }

      if (v122 < 0)
      {
        operator delete(v121[0]);
        if (v119 < 0)
        {
          goto LABEL_181;
        }

LABEL_122:
        if ((v117 & 0x80000000) == 0)
        {
          goto LABEL_123;
        }

LABEL_182:
        operator delete(v116);
        if (v115 < 0)
        {
          goto LABEL_183;
        }

LABEL_124:
        if ((v113[23] & 0x80000000) == 0)
        {
          break;
        }
      }

      else
      {
        if ((v119 & 0x80000000) == 0)
        {
          goto LABEL_122;
        }

LABEL_181:
        operator delete(v118);
        if (v117 < 0)
        {
          goto LABEL_182;
        }

LABEL_123:
        if ((v115 & 0x80000000) == 0)
        {
          goto LABEL_124;
        }

LABEL_183:
        operator delete(v114);
        if ((v113[23] & 0x80000000) == 0)
        {
          break;
        }
      }

      operator delete(*v113);
      break;
    }

    v65 = *(v61 + 4);
    if (v65)
    {
      v47 = *&v60[v65];
    }

    else
    {
      v47 = 0;
    }

    v44 += v47;
    sub_88B5F8(&v95);
  }

  sub_8842F8(a1, v89, v8, a4, 1, v113);
  v69 = *(v8 + 440);
  if (v69)
  {
    sub_5ED940(v8 + 440, v69);
    operator delete(*(v8 + 440));
    *(v8 + 440) = 0;
    *(v8 + 448) = 0;
    *(v8 + 456) = 0;
  }

  *(v8 + 440) = *v113;
  *(v8 + 456) = *&v113[16];
  sub_8838BC(a1, v89, v8, v113);
  if (sub_734C10(v113))
  {
    v70 = *(v8 + 392);
    if (v70 != *(v8 + 400))
    {
      v71 = *(v8 + 424);
      if (v71 >= *(v8 + 432))
      {
        v72 = sub_8898E8(v8 + 416, v70);
      }

      else
      {
        sub_5139E8(*(v8 + 424), v70);
        v72 = v71 + 152;
        *v37 = v71 + 152;
      }

      *v37 = v72;
      *(v72 - 32) = 1;
      sub_5ED940(v8 + 392, *(v8 + 392));
    }

    v73 = *(v8 + 424);
    if (v73 >= *(v8 + 432))
    {
      v74 = sub_6868D8((v8 + 416), v113);
    }

    else
    {
      sub_5139E8(*(v8 + 424), v113);
      v74 = (v73 + 152);
      *v37 = v73 + 152;
    }

    *v37 = v74;
    *(v74 - 8) = 4;
  }

  if (*(a1 + 96) == 1)
  {
    sub_883D00(a1, a2, v8, a4, v90);
    v75 = *(v8 + 1984);
    if (v75)
    {
      v76 = (v8 + 1984);
      v77 = *(v8 + 1992);
      v78 = *(v8 + 1984);
      if (v77 != v75)
      {
        do
        {
          v79 = *(v77 - 17);
          v77 -= 5;
          if (v79 < 0)
          {
            operator delete(*v77);
          }
        }

        while (v77 != v75);
        v78 = *v76;
      }

      *(v8 + 1992) = v75;
      operator delete(v78);
      *v76 = 0;
      *(v8 + 1992) = 0;
      *(v8 + 2000) = 0;
    }

    *(v8 + 1984) = *v90;
    *(v8 + 2000) = v91;
  }

  if ((v122 & 0x80000000) == 0)
  {
    if ((v119 & 0x80000000) == 0)
    {
      goto LABEL_149;
    }

LABEL_155:
    operator delete(v118);
    if (v117 < 0)
    {
      goto LABEL_156;
    }

LABEL_150:
    if ((v115 & 0x80000000) == 0)
    {
      goto LABEL_151;
    }

LABEL_157:
    operator delete(v114);
    if ((v113[23] & 0x80000000) != 0)
    {
      goto LABEL_158;
    }

LABEL_152:
    v80 = v98;
    if (v98)
    {
      goto LABEL_162;
    }

    goto LABEL_165;
  }

  operator delete(v121[0]);
  if (v119 < 0)
  {
    goto LABEL_155;
  }

LABEL_149:
  if ((v117 & 0x80000000) == 0)
  {
    goto LABEL_150;
  }

LABEL_156:
  operator delete(v116);
  if (v115 < 0)
  {
    goto LABEL_157;
  }

LABEL_151:
  if ((v113[23] & 0x80000000) == 0)
  {
    goto LABEL_152;
  }

LABEL_158:
  operator delete(*v113);
  v80 = v98;
  if (v98)
  {
    while (1)
    {
LABEL_162:
      v81 = *v80;
      if (v80[71] < 0)
      {
        operator delete(*(v80 + 6));
        if ((v80[47] & 0x80000000) == 0)
        {
          goto LABEL_161;
        }

LABEL_164:
        operator delete(*(v80 + 3));
        operator delete(v80);
        v80 = v81;
        if (!v81)
        {
          break;
        }
      }

      else
      {
        if (v80[47] < 0)
        {
          goto LABEL_164;
        }

LABEL_161:
        operator delete(v80);
        v80 = v81;
        if (!v81)
        {
          break;
        }
      }
    }
  }

LABEL_165:
  v82 = v97[0];
  v97[0] = 0;
  if (v82)
  {
    operator delete(v82);
  }

  v83 = v101[0];
  if (v101[0])
  {
    do
    {
      v87 = *v83;
      if (*(v83 + 39) < 0)
      {
        operator delete(v83[2]);
      }

      operator delete(v83);
      v83 = v87;
    }

    while (v87);
  }

  v84 = v100[0];
  v100[0] = 0;
  if (v84)
  {
    operator delete(v84);
  }

  v85 = v104[0];
  if (v104[0])
  {
    do
    {
      v88 = *v85;
      if (*(v85 + 39) < 0)
      {
        operator delete(v85[2]);
      }

      operator delete(v85);
      v85 = v88;
    }

    while (v88);
  }

  v86 = __p[0];
  __p[0] = 0;
  if (v86)
  {
    operator delete(v86);
  }
}

void sub_882E98(_Unwind_Exception *a1)
{
  *(v1 + 400) = v2;
  sub_3E5388(v3 - 240);
  _Unwind_Resume(a1);
}

void sub_882EB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  *v41 = v40;
  sub_3E5388(v42 - 240);
  sub_8801E0(&a20);
  sub_23D9C(&__p);
  sub_23D9C(&a35);
  _Unwind_Resume(a1);
}

void sub_882FE0(uint64_t a1, uint64_t a2)
{
  for (i = *(a2 + 1112) - 2616; i != *(a2 + 1104); i -= 2616)
  {
    v5 = *(i - 2200);
    v6 = *(i - 2192);
    v12[0] = a1;
    v12[1] = i + 416;
    v12[2] = i + 392;
    if (v6 - v5 < 1)
    {
      v11 = 0;
      v7 = 0;
    }

    else
    {
      v7 = 0x86BCA1AF286BCA1BLL * (v6 - v5);
      while (1)
      {
        v8 = operator new(152 * v7, &std::nothrow);
        if (v8)
        {
          break;
        }

        v9 = v7 >> 1;
        v10 = v7 > 1;
        v7 >>= 1;
        if (!v10)
        {
          v11 = 0;
          v7 = v9;
          goto LABEL_11;
        }
      }

      v11 = v8;
    }

LABEL_11:
    sub_88E608(v5, v6, v12, 0x86BCA1AF286BCA1BLL * (v6 - v5), v11, v7);
    if (v11)
    {
      operator delete(v11);
    }
  }
}

void sub_883110(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_883128(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_5E94A4(*a1, *a2, 1, &v22);
  v9 = sub_2B51D8(*a1, *a2 | (*(a2 + 2) << 32));
  v10 = (v9 - *v9);
  if (*v10 >= 0x25u && (v11 = v10[18]) != 0)
  {
    v12 = (v9 + v11 + *(v9 + v11));
  }

  else
  {
    v12 = 0;
  }

  sub_31077C(v12, &__p);
  v13 = *(a4 + 23);
  if ((v13 & 0x80u) != 0)
  {
    v13 = *(a4 + 8);
  }

  if (v13)
  {
    sub_5EB5B8((a1 + 8), a4);
  }

  sub_738918(&v22, a5);
  v14 = __p;
  if (__p)
  {
    v15 = v21;
    v16 = __p;
    if (v21 != __p)
    {
      do
      {
        if (*(v15 - 9) < 0)
        {
          operator delete(*(v15 - 4));
        }

        v15 -= 5;
      }

      while (v15 != v14);
      v16 = __p;
    }

    v21 = v14;
    operator delete(v16);
  }

  v17 = v22;
  if (v22)
  {
    v18 = v23;
    v19 = v22;
    if (v23 != v22)
    {
      do
      {
        v18 = sub_310F30(v18 - 144);
      }

      while (v18 != v17);
      v19 = v22;
    }

    v23 = v17;
    operator delete(v19);
  }
}

void sub_88328C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, void *a12)
{
  sub_3108E8(&a9);
  sub_5E9738(&a12);
  _Unwind_Resume(a1);
}

void sub_8832A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_5E9738(va);
  _Unwind_Resume(a1);
}

void sub_8832BC(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *(*a4 + 40 * *(a2 + 16) + 32);
  v25 = v9;
  v27 = BYTE6(v9);
  v26 = WORD2(v9);
  __p = 0;
  v23 = 0;
  v24 = 0;
  sub_883128(a1, &v25, &__p, v28);
  if (SHIBYTE(v24) < 0)
  {
    operator delete(__p);
    v10 = *(a2 + 16);
    v11 = *(a2 + 24);
    v13 = v10 + 1 >= v11;
    if (v10 + 1 > v11)
    {
      v11 = v10 + 1;
    }

    if (!v13)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v10 = *(a2 + 16);
    v11 = *(a2 + 24);
    v12 = v10 + 1 >= v11;
    if (v10 + 1 > v11)
    {
      v11 = v10 + 1;
    }

    if (!v12)
    {
LABEL_10:
      v14 = ~v10 + v11;
      v15 = 40 * v10 + 72;
      do
      {
        v16 = *(*a4 + v15);
        v25 = v16;
        v27 = BYTE6(v16);
        v26 = WORD2(v16);
        __p = 0;
        v23 = 0;
        v24 = 0;
        sub_883128(a1, &v25, &__p, a5);
        if (SHIBYTE(v24) < 0)
        {
          operator delete(__p);
        }

        v17 = *(a5 + 23);
        if (v17 >= 0)
        {
          v18 = *(a5 + 23);
        }

        else
        {
          v18 = *(a5 + 8);
        }

        v19 = v29;
        if ((v29 & 0x80u) != 0)
        {
          v19 = v28[1];
        }

        if (v18 != v19)
        {
          goto LABEL_39;
        }

        v20 = v17 >= 0 ? a5 : *a5;
        v21 = (v29 & 0x80u) == 0 ? v28 : v28[0];
        if (memcmp(v20, v21, v18))
        {
          goto LABEL_39;
        }

        if (*(a5 + 151) < 0)
        {
          operator delete(*(a5 + 128));
          if ((*(a5 + 119) & 0x80000000) == 0)
          {
LABEL_29:
            if ((*(a5 + 95) & 0x80000000) == 0)
            {
              goto LABEL_30;
            }

            goto LABEL_35;
          }
        }

        else if ((*(a5 + 119) & 0x80000000) == 0)
        {
          goto LABEL_29;
        }

        operator delete(*(a5 + 96));
        if ((*(a5 + 95) & 0x80000000) == 0)
        {
LABEL_30:
          if ((*(a5 + 55) & 0x80000000) == 0)
          {
            goto LABEL_31;
          }

          goto LABEL_36;
        }

LABEL_35:
        operator delete(*(a5 + 72));
        if ((*(a5 + 55) & 0x80000000) == 0)
        {
LABEL_31:
          if (*(a5 + 23) < 0)
          {
            goto LABEL_37;
          }

          goto LABEL_11;
        }

LABEL_36:
        operator delete(*(a5 + 32));
        if (*(a5 + 23) < 0)
        {
LABEL_37:
          operator delete(*a5);
        }

LABEL_11:
        v15 += 40;
        --v14;
      }

      while (v14);
    }
  }

  sub_734CE0(a5);
LABEL_39:
  if (v37 < 0)
  {
    operator delete(v36);
    if ((v35 & 0x80000000) == 0)
    {
LABEL_41:
      if ((v33 & 0x80000000) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_47;
    }
  }

  else if ((v35 & 0x80000000) == 0)
  {
    goto LABEL_41;
  }

  operator delete(v34);
  if ((v33 & 0x80000000) == 0)
  {
LABEL_42:
    if ((v31 & 0x80000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_48;
  }

LABEL_47:
  operator delete(v32);
  if ((v31 & 0x80000000) == 0)
  {
LABEL_43:
    if ((v29 & 0x80000000) == 0)
    {
      return;
    }

LABEL_49:
    operator delete(v28[0]);
    return;
  }

LABEL_48:
  operator delete(v30);
  if (v29 < 0)
  {
    goto LABEL_49;
  }
}

void sub_883588(uint64_t *a1@<X0>, unint64_t **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  v9 = *(a2[1] - 1);
  v10 = sub_2B51D8(*a1, v9 & 0xFFFFFFFFFFFFLL);
  if (*(v8 + 7772) == 1)
  {
    v11 = sub_30C50C(v8 + 3896, v9, 0);
    v12 = &v11[-*v11];
    if (*v12 < 5u)
    {
      v13 = 0;
    }

    else
    {
      v13 = *(v12 + 2);
      if (v13)
      {
        v13 += &v11[*&v11[v13]];
      }
    }

    v14 = v13 + ((v9 >> 30) & 0x3FFFC) + 4 + *(v13 + ((v9 >> 30) & 0x3FFFC) + 4);
  }

  else
  {
    v14 = 0;
  }

  v50[0] = v10;
  v50[1] = v14;
  v50[2] = sub_31D7E8(v8, v9 & 0xFFFFFFFFFFFFLL, 1);
  v50[3] = v15;
  v50[4] = v9;
  v16 = *a1;
  v17 = **a2;
  v18 = sub_2B51D8(*a1, v17 & 0xFFFFFFFFFFFFLL);
  if (*(v16 + 7772) == 1)
  {
    v19 = sub_30C50C(v16 + 3896, v17, 0);
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

    v22 = v21 + ((v17 >> 30) & 0x3FFFC) + 4 + *(v21 + ((v17 >> 30) & 0x3FFFC) + 4);
  }

  else
  {
    v22 = 0;
  }

  v49[0] = v18;
  v49[1] = v22;
  v49[2] = sub_31D7E8(v16, v17 & 0xFFFFFFFFFFFFLL, 1);
  v49[3] = v23;
  v49[4] = v17;
  sub_734CE0(v39);
  sub_734CE0(v29);
  v24 = *a2;
  v25 = a2[1];
  v51[0] = a1;
  v51[1] = v49;
  v51[2] = v50;
  v51[3] = a3;
  v51[4] = v39;
  v51[5] = v29;
  if (v24 != v25)
  {
    v26 = v24 + 1;
    do
    {
      if (v26 == v25)
      {
        break;
      }

      v27 = sub_8908D0(v51, *(v26 - 1), *v26);
      ++v26;
    }

    while (!v27);
  }

  if (sub_734C10(v39))
  {
    v28 = v39;
  }

  else
  {
    v28 = v29;
  }

  sub_5139E8(a4, v28);
  if (v38 < 0)
  {
    operator delete(__p);
    if ((v36 & 0x80000000) == 0)
    {
LABEL_24:
      if ((v34 & 0x80000000) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_35;
    }
  }

  else if ((v36 & 0x80000000) == 0)
  {
    goto LABEL_24;
  }

  operator delete(v35);
  if ((v34 & 0x80000000) == 0)
  {
LABEL_25:
    if ((v32 & 0x80000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_36;
  }

LABEL_35:
  operator delete(v33);
  if ((v32 & 0x80000000) == 0)
  {
LABEL_26:
    if ((v30 & 0x80000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_37;
  }

LABEL_36:
  operator delete(v31);
  if ((v30 & 0x80000000) == 0)
  {
LABEL_27:
    if ((v48 & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_38;
  }

LABEL_37:
  operator delete(v29[0]);
  if ((v48 & 0x80000000) == 0)
  {
LABEL_28:
    if ((v46 & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_39;
  }

LABEL_38:
  operator delete(v47);
  if ((v46 & 0x80000000) == 0)
  {
LABEL_29:
    if ((v44 & 0x80000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_40;
  }

LABEL_39:
  operator delete(v45);
  if ((v44 & 0x80000000) == 0)
  {
LABEL_30:
    if ((v42 & 0x80000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_41;
  }

LABEL_40:
  operator delete(v43);
  if ((v42 & 0x80000000) == 0)
  {
LABEL_31:
    if ((v40 & 0x80000000) == 0)
    {
      return;
    }

LABEL_42:
    operator delete(v39[0]);
    return;
  }

LABEL_41:
  operator delete(v41);
  if (v40 < 0)
  {
    goto LABEL_42;
  }
}

void sub_883888(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, ...)
{
  va_start(va, a27);
  sub_3E5388(va);
  _Unwind_Resume(a1);
}

void sub_88389C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, ...)
{
  va_start(va, a27);
  sub_3E5388(&a9);
  sub_3E5388(va);
  _Unwind_Resume(a1);
}

void sub_8838BC(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a5@<X8>)
{
  if (a3[3] < 0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 3))
  {
    v8 = a3[2];
    while (1)
    {
      if (++v8 > a3[3])
      {
        sub_734CE0(a5);
        return;
      }

      v10 = sub_605E3C(a2, v8);
      v11 = *(v10 + 32);
      v12 = *(v10 + 16);
      v37[0] = *v10;
      v37[1] = v12;
      v38 = v11;
      v13 = *a1;
      v14 = sub_311544(v37);
      v15 = v14;
      v16 = sub_2AF704(v13 + 3896, v14, 1);
      if (v16 && (v17 = &v16[-*v16], *v17 >= 7u) && (v18 = *(v17 + 3)) != 0 && (v19 = &v16[4 * HIDWORD(v14) + v18 + *&v16[v18]], v20 = (v19 + 4 + *(v19 + 4)), v21 = (v20 - *v20), *v21 >= 9u) && (v22 = v21[4]) != 0 && (v23 = *(v20 + v22), v23 != -1))
      {
        v24 = sub_31DF78(v13, v15);
        sub_5E9E60(v13, v24, v23, 1, &__p);
      }

      else
      {
        __p = 0;
        v35 = 0;
        v36 = 0;
      }

      v33[0] = a2;
      v33[1] = a3;
      if (sub_880AB4(v33, &__p))
      {
        sub_734CE0(a5);
LABEL_18:
        v25 = 0;
        v26 = __p;
        if (!__p)
        {
          goto LABEL_5;
        }

        goto LABEL_32;
      }

      sub_738918(&__p, a5);
      if (sub_734C10(a5))
      {
        goto LABEL_18;
      }

      if (*(a5 + 151) < 0)
      {
        operator delete(*(a5 + 128));
        if ((*(a5 + 119) & 0x80000000) == 0)
        {
LABEL_22:
          if ((*(a5 + 95) & 0x80000000) == 0)
          {
            goto LABEL_23;
          }

          goto LABEL_29;
        }
      }

      else if ((*(a5 + 119) & 0x80000000) == 0)
      {
        goto LABEL_22;
      }

      operator delete(*(a5 + 96));
      if ((*(a5 + 95) & 0x80000000) == 0)
      {
LABEL_23:
        if (*(a5 + 55) < 0)
        {
          goto LABEL_30;
        }

        goto LABEL_24;
      }

LABEL_29:
      operator delete(*(a5 + 72));
      if (*(a5 + 55) < 0)
      {
LABEL_30:
        operator delete(*(a5 + 32));
        if ((*(a5 + 23) & 0x80000000) == 0)
        {
LABEL_25:
          v25 = 1;
          v26 = __p;
          if (!__p)
          {
            goto LABEL_5;
          }

          goto LABEL_32;
        }

        goto LABEL_31;
      }

LABEL_24:
      if ((*(a5 + 23) & 0x80000000) == 0)
      {
        goto LABEL_25;
      }

LABEL_31:
      operator delete(*a5);
      v25 = 1;
      v26 = __p;
      if (!__p)
      {
        goto LABEL_5;
      }

LABEL_32:
      v27 = v35;
      v9 = v26;
      if (v35 != v26)
      {
        while (1)
        {
          if (*(v27 - 1) < 0)
          {
            operator delete(*(v27 - 3));
            if (*(v27 - 33) < 0)
            {
LABEL_50:
              operator delete(*(v27 - 7));
              v28 = *(v27 - 10);
              if (!v28)
              {
LABEL_51:
                if (*(v27 - 89) < 0)
                {
                  goto LABEL_34;
                }

                goto LABEL_52;
              }

              goto LABEL_39;
            }
          }

          else if (*(v27 - 33) < 0)
          {
            goto LABEL_50;
          }

          v28 = *(v27 - 10);
          if (!v28)
          {
            goto LABEL_51;
          }

LABEL_39:
          v29 = *(v27 - 9);
          if (v29 == v28)
          {
            *(v27 - 9) = v28;
            operator delete(v28);
            if (*(v27 - 89) < 0)
            {
              goto LABEL_34;
            }

            goto LABEL_52;
          }

          do
          {
            while (*(v29 - 9) < 0)
            {
              operator delete(*(v29 - 4));
              v30 = v29 - 7;
              if (*(v29 - 33) < 0)
              {
                goto LABEL_46;
              }

LABEL_43:
              v29 = v30;
              if (v30 == v28)
              {
                goto LABEL_47;
              }
            }

            v30 = v29 - 7;
            if ((*(v29 - 33) & 0x80000000) == 0)
            {
              goto LABEL_43;
            }

LABEL_46:
            operator delete(*v30);
            v29 = v30;
          }

          while (v30 != v28);
LABEL_47:
          v31 = *(v27 - 10);
          *(v27 - 9) = v28;
          operator delete(v31);
          if (*(v27 - 89) < 0)
          {
LABEL_34:
            operator delete(*(v27 - 14));
            if ((*(v27 - 113) & 0x80000000) == 0)
            {
              goto LABEL_35;
            }

LABEL_53:
            operator delete(*(v27 - 17));
            v27 -= 18;
            if (v27 == v26)
            {
LABEL_3:
              v9 = __p;
              break;
            }
          }

          else
          {
LABEL_52:
            if (*(v27 - 113) < 0)
            {
              goto LABEL_53;
            }

LABEL_35:
            v27 -= 18;
            if (v27 == v26)
            {
              goto LABEL_3;
            }
          }
        }
      }

      v35 = v26;
      operator delete(v9);
LABEL_5:
      if ((v25 & 1) == 0)
      {
        return;
      }
    }
  }

  sub_734CE0(a5);
}

void sub_883CB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_3E5388(v15);
  sub_5E9738(va);
  _Unwind_Resume(a1);
}

void sub_883CD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void **);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  sub_3108E8(va);
  sub_5E9738(va1);
  _Unwind_Resume(a1);
}

void sub_883CEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_5E9738(va);
  _Unwind_Resume(a1);
}

void sub_883D00(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void ***a5@<X8>)
{
  if (a3[2] == -1)
  {
    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
    return;
  }

  nullsub_1();
  v41 = v8;
  a5[1] = 0;
  a5[2] = 0;
  *a5 = 0;
  v36 = a5;
  v9 = a3[5];
  v10 = a3[2];
  v11 = v9 >= v10;
  if (v9 > v10)
  {
    v10 = a3[5];
  }

  v38 = v10;
  if (!v11)
  {
    v39 = a1;
    while (1)
    {
      sub_6D3D8C(*a1, *(*v41 + 40 * v9 + 32) | (*(*v41 + 40 * v9 + 36) << 32), &v47);
      v13 = v47;
      v12 = v48;
      if (v47 != v48)
      {
        break;
      }

LABEL_53:
      if (v13)
      {
        v48 = v13;
        operator delete(v13);
      }

      if (++v9 == v38)
      {
        return;
      }
    }

    v40 = v48;
    while (1)
    {
      v14 = sub_30CC30(*a1, *v13);
      v15 = (v14 - *v14);
      if (*v15 < 5u)
      {
        goto LABEL_9;
      }

      v16 = v15[2];
      if (!v16 || *(v14 + v16) != 4)
      {
        goto LABEL_9;
      }

      v17 = sub_30CC30(*a1, *v13);
      v18 = (v17 - *v17);
      if (*v18 >= 7u)
      {
        v19 = v18[3];
        if (v19)
        {
          if (*(v17 + v19 + *(v17 + v19)))
          {
            operator new();
          }
        }
      }

      a1 = v39;
      v20 = sub_30CC30(*v39, *v13);
      v45[0] = 0;
      v45[1] = 0;
      v46 = 0;
      v21 = (v20 - *v20);
      v22 = *v21;
      if (v22 >= 5 && v21[2] && *(v20 + v21[2]) == 4)
      {
        break;
      }

LABEL_30:
      sub_73BB70(v45, a4, __p);
      if (sub_734F70(__p))
      {
        *(&v44 + 1) = sub_4D2544(a2, v9, 1, a3[3], 0, v27);
        v28 = v36[1];
        if (v28 >= v36[2])
        {
          v30 = sub_88AA00(v36, __p);
        }

        else
        {
          if (SHIBYTE(v43) < 0)
          {
            sub_325C(v36[1], __p[0], __p[1]);
          }

          else
          {
            v29 = *__p;
            v28[2] = v43;
            *v28 = v29;
          }

          *(v28 + 3) = v44;
          v30 = (v28 + 5);
        }

        v36[1] = v30;
        sub_881950(v36);
      }

      if ((SHIBYTE(v43) & 0x80000000) == 0)
      {
        v31 = v45[0];
        if (!v45[0])
        {
          goto LABEL_51;
        }

LABEL_42:
        v32 = v45[1];
        v33 = v31;
        if (v45[1] == v31)
        {
LABEL_50:
          v45[1] = v31;
          operator delete(v33);
          goto LABEL_51;
        }

        while (1)
        {
          if (*(v32 - 1) < 0)
          {
            operator delete(*(v32 - 3));
            v34 = v32 - 6;
            if ((*(v32 - 25) & 0x80000000) == 0)
            {
              goto LABEL_45;
            }
          }

          else
          {
            v34 = v32 - 6;
            if ((*(v32 - 25) & 0x80000000) == 0)
            {
LABEL_45:
              v32 = v34;
              if (v34 == v31)
              {
                goto LABEL_49;
              }

              continue;
            }
          }

          operator delete(*v34);
          v32 = v34;
          if (v34 == v31)
          {
LABEL_49:
            v33 = v45[0];
            goto LABEL_50;
          }
        }
      }

      operator delete(__p[0]);
      v31 = v45[0];
      if (v45[0])
      {
        goto LABEL_42;
      }

LABEL_51:
      v12 = v40;
LABEL_9:
      if (++v13 == v12)
      {
        v13 = v47;
        goto LABEL_53;
      }
    }

    if (v22 < 0xD)
    {
      v23 = 0;
      v24 = (&loc_1120530 + 1);
      if (*(&loc_1120530 + 1) < 7u)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v23 = v21[6];
      if (v23)
      {
        v23 = (v23 + v20 + *(v23 + v20));
      }

      v24 = (v23 - *v23);
      if (*v24 < 7u)
      {
        goto LABEL_28;
      }
    }

    v25 = v24[3];
    if (v25)
    {
      v26 = (v23 + v25 + *(v23 + v25));
LABEL_29:
      sub_84804(v26, __p);
      *v45 = *__p;
      v46 = v43;
      goto LABEL_30;
    }

LABEL_28:
    v26 = 0;
    goto LABEL_29;
  }
}

void sub_884254(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28)
{
  *(a12 + 8) = v29;
  if (a24 < 0)
  {
    operator delete(__p);
  }

  sub_1AA90(&a28);
  if (v28)
  {
    operator delete(v28);
  }

  v32 = *(v30 - 112);
  if (v32)
  {
    *(v30 - 104) = v32;
    operator delete(v32);
  }

  sub_5ED73C(a12);
  _Unwind_Resume(a1);
}

void sub_8842F8(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, __int128 **a6@<X8>)
{
  v6 = *(a3 + 16);
  if (v6 == -1 || (v9 = *(a3 + 24), v9 >= 0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 3)))
  {
    *a6 = 0;
    a6[1] = 0;
    a6[2] = 0;
    return;
  }

  v100 = 0;
  v101 = 0;
  v102 = 0;
  v12 = *(a3 + 32);
  if (v12 == -1)
  {
    if (v6 <= v9 + 1)
    {
      v14 = v9 + 1;
    }

    else
    {
      v14 = v6;
    }

    if (v6 <= v9)
    {
      do
      {
        v16 = *(sub_605E3C(a2, v6) + 32);
        v17 = v101;
        if (v101 < v102)
        {
          *v101 = v16 & 0xFFFFFFFFFFFFFFLL;
          v15 = (v17 + 8);
        }

        else
        {
          v18 = v100;
          v19 = v101 - v100;
          v20 = (v101 - v100) >> 3;
          v21 = v20 + 1;
          if ((v20 + 1) >> 61)
          {
            sub_1794();
          }

          v22 = v102 - v100;
          if ((v102 - v100) >> 2 > v21)
          {
            v21 = v22 >> 2;
          }

          if (v22 >= 0x7FFFFFFFFFFFFFF8)
          {
            v23 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v23 = v21;
          }

          if (v23)
          {
            if (!(v23 >> 61))
            {
              operator new();
            }

            sub_1808();
          }

          v24 = (8 * v20);
          v25 = v16 & 0xFFFFFFFFFFFFFFLL;
          v26 = &v24[-((v101 - v100) >> 3)];
          *v24 = v25;
          v15 = v24 + 1;
          memcpy(v26, v18, v19);
          v100 = v26;
          v102 = 0;
          if (v18)
          {
            operator delete(v18);
          }
        }

        v101 = v15;
        ++v6;
      }

      while (v14 != v6);
    }
  }

  else
  {
    v13 = *(sub_605E3C(a2, v12) + 32);
    v27 = v100;
    v28 = v101 - v100;
    v29 = (v101 - v100) >> 3;
    v30 = v29 + 1;
    if ((v29 + 1) >> 61)
    {
      sub_1794();
    }

    v31 = v102 - v100;
    if ((v102 - v100) >> 2 > v30)
    {
      v30 = v31 >> 2;
    }

    if (v31 >= 0x7FFFFFFFFFFFFFF8)
    {
      v32 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v32 = v30;
    }

    if (v32)
    {
      if (!(v32 >> 61))
      {
        operator new();
      }

      sub_1808();
    }

    *(8 * v29) = v13 & 0xFFFFFFFFFFFFFFLL;
    memcpy(0, v27, v28);
    v100 = 0;
    v102 = 0;
    v101 = 8 * v29 + 8;
    v33 = *(sub_605E3C(a2, *(a3 + 32) + 1) + 32);
    v34 = v101;
    v35 = v101 >> 3;
    v36 = (v101 >> 3) + 1;
    if (v36 >> 61)
    {
      sub_1794();
    }

    v37 = v102 - v100;
    if ((v102 - v100) >> 2 > v36)
    {
      v36 = v37 >> 2;
    }

    if (v37 >= 0x7FFFFFFFFFFFFFF8)
    {
      v38 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v38 = v36;
    }

    if (v38)
    {
      if (!(v38 >> 61))
      {
        operator new();
      }

      sub_1808();
    }

    *(8 * v35) = v33 & 0xFFFFFFFFFFFFFFLL;
    memcpy(0, 0, v34);
    v100 = 0;
    v102 = 0;
    v101 = 8 * v35 + 8;
  }

  v39 = 0;
  v40 = 0;
  __p = 0;
  v99 = 0uLL;
  v42 = *(a3 + 16);
  v41 = *(a3 + 24);
  if (v42 <= v41)
  {
    v43 = *(a3 + 24);
  }

  else
  {
    v43 = *(a3 + 16);
  }

  if (v42 < v41)
  {
    do
    {
      sub_884B44(a1, a2, v42, &v100, a5, &v96);
      v50 = __p;
      if (__p)
      {
        v51 = v99;
        v52 = __p;
        if (v99 != __p)
        {
          do
          {
            v51 = sub_31104C(v51 - 16);
          }

          while (v51 != v50);
          v52 = __p;
        }

        *&v99 = v50;
        operator delete(v52);
      }

      v40 = v96;
      __p = v96;
      v99 = v97;
      v39 = v97;
      ++v42;
    }

    while (v96 == v97 && v42 != v43);
  }

  v44 = *(a3 + 160);
  v45 = v44 > 0x3F;
  v46 = (1 << v44) & 0xF000000000000006;
  v47 = v45 || v46 == 0;
  if (v47 || (*(a3 + 1030) & 1) != 0 || (*(a3 + 1029) & 1) != 0 || (*(a3 + 1028) & 1) != 0)
  {
    v48 = (a1 + 48);
    if (v40 != v39)
    {
      goto LABEL_69;
    }

LABEL_71:
    v60 = *v48;
    if (*v48 >= 1)
    {
      v61 = 0;
      v62 = *(a3 + 16);
      while (v62 >= 1 && v62 > *(a3 + 40))
      {
        sub_884B44(a1, a2, --v62, &v100, a5, &v96);
        v63 = __p;
        if (__p)
        {
          v64 = v99;
          v65 = __p;
          if (v99 != __p)
          {
            do
            {
              v64 = sub_31104C(v64 - 16);
            }

            while (v64 != v63);
            v65 = __p;
          }

          *&v99 = v63;
          operator delete(v65);
        }

        v40 = v96;
        __p = v96;
        v99 = v97;
        v66 = *(*a2 + 40 * v62);
        v67 = (v66 - *v66);
        if (*v67 < 9u)
        {
          v68 = 0;
        }

        else
        {
          v68 = v67[4];
          if (v68)
          {
            v68 = *(v66 + v68);
          }
        }

        v39 = v97;
        if (v96 != v97)
        {
          goto LABEL_69;
        }

        v61 += v68;
        if (v61 >= v60)
        {
          break;
        }
      }
    }

    *a6 = 0;
    a6[1] = 0;
    a6[2] = 0;
    if (v40)
    {
      goto LABEL_131;
    }

    goto LABEL_135;
  }

  v53 = *(a3 + 2057);
  v54 = 8 * v53 + 8;
  v55 = v53 >= 4;
  v56 = 32;
  if (!v55)
  {
    v56 = v54;
  }

  v48 = (a1 + v56 + 40);
  if (v40 == v39)
  {
    goto LABEL_71;
  }

LABEL_69:
  v57 = v39 - v40 - 128;
  if (v57 < 0x80)
  {
    v58 = 0;
    v59 = v40;
    do
    {
LABEL_95:
      if (!*(v59 + 49))
      {
        ++v58;
      }

      v59 += 16;
    }

    while (v59 != v39);
    goto LABEL_98;
  }

  v69 = 0;
  v70 = 0;
  v71 = (v57 >> 7) + 1;
  v59 = &v40[16 * (v71 & 0x3FFFFFFFFFFFFFELL)];
  v72 = v40 + 177;
  v73 = v71 & 0x3FFFFFFFFFFFFFELL;
  do
  {
    if (!*(v72 - 128))
    {
      ++v69;
    }

    if (!*v72)
    {
      ++v70;
    }

    v72 += 256;
    v73 -= 2;
  }

  while (v73);
  v58 = v70 + v69;
  if (v71 != (v71 & 0x3FFFFFFFFFFFFFELL))
  {
    goto LABEL_95;
  }

LABEL_98:
  sub_885018(a1, a2, *(a3 + 24), &v96);
  v93 = 0;
  v94 = 0;
  v95 = 0;
  v74 = __p;
  v75 = v99;
  if (__p == v99)
  {
    goto LABEL_119;
  }

  do
  {
    v77 = v96;
    v78 = v97;
    if (v96 == v97)
    {
LABEL_110:
      if (v77 != v97)
      {
        goto LABEL_111;
      }
    }

    else
    {
      do
      {
        v80 = *v74;
        v79 = v74[1];
        v81 = *v77;
        if ((v79 - *v74) == (v77[1] - *v77))
        {
          if (v80 == v79)
          {
            goto LABEL_110;
          }

          while (sub_58D9C(v80, v81))
          {
            v80 += 6;
            v81 += 6;
            if (v80 == v79)
            {
              goto LABEL_110;
            }
          }
        }

        v77 += 16;
      }

      while (v77 != v78);
      if (v78 != v97)
      {
LABEL_111:
        if (v58 != 1 || *(v74 + 49))
        {
          goto LABEL_102;
        }
      }
    }

    v82 = v94;
    if (v94 >= v95)
    {
      v76 = sub_88A424(&v93, v74);
    }

    else
    {
      sub_88A54C(v94, v74);
      v76 = v82 + 16;
    }

    v94 = v76;
LABEL_102:
    v74 += 16;
  }

  while (v74 != v75);
  if (v93 != v94)
  {
    sub_73A114((a1 + 8), &v93, a4, a6);
    goto LABEL_120;
  }

LABEL_119:
  sub_73A114((a1 + 8), &__p, a4, a6);
LABEL_120:
  v83 = v93;
  if (v93)
  {
    v84 = v94;
    v85 = v93;
    if (v94 != v93)
    {
      do
      {
        v84 = sub_31104C(v84 - 16);
      }

      while (v84 != v83);
      v85 = v93;
    }

    v94 = v83;
    operator delete(v85);
  }

  v86 = v96;
  if (v96)
  {
    v87 = v97;
    v88 = v96;
    if (v97 != v96)
    {
      do
      {
        v87 = sub_31104C(v87 - 16);
      }

      while (v87 != v86);
      v88 = v96;
    }

    *&v97 = v86;
    operator delete(v88);
  }

  v40 = __p;
  if (__p)
  {
LABEL_131:
    v89 = v99;
    v90 = v40;
    if (v99 != v40)
    {
      do
      {
        v89 = sub_31104C(v89 - 16);
      }

      while (v89 != v40);
      v90 = __p;
    }

    *&v99 = v40;
    operator delete(v90);
  }

LABEL_135:
  if (v100)
  {
    v101 = v100;
    operator delete(v100);
  }
}

void sub_884ACC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  sub_703590(&a11);
  sub_703590(&a14);
  sub_703590(&a17);
  if (__p)
  {
    a21 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_884B44(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t **a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = 0;
  a6[1] = 0;
  a6[2] = 0;
  sub_6D3D8C(*a1, *(*a2 + 40 * a3 + 32) | (*(*a2 + 40 * a3 + 36) << 32), &v45);
  v12 = v45;
  v13 = v46;
  if (v45 == v46)
  {
    goto LABEL_35;
  }

  do
  {
    v14 = sub_30CC30(*a1, *v12);
    v15 = (v14 - *v14);
    if (*v15 < 5u)
    {
      goto LABEL_3;
    }

    v16 = v15[2];
    if (!v16 || *(v14 + v16) != 3)
    {
      goto LABEL_3;
    }

    sub_320200(*a1, *v12, &v43);
    v17 = v43;
    v18 = (v44 - v43) >> 3;
    if (v18 <= (-a3 - 0x3333333333333333 * ((a2[1] - *a2) >> 3)))
    {
      if (v43 != v44)
      {
        v19 = (40 * a3 + *a2 + 32);
        v20 = v43;
        do
        {
          v22 = *v19;
          v19 += 5;
          v21 = BYTE6(v22);
          if (__PAIR64__(*(v20 + 4), *v20) != __PAIR64__(WORD2(v22), v22) || *(v20 + 6) != v21)
          {
            goto LABEL_8;
          }

          v20 += 8;
        }

        while (v20 != v44);
      }

      v23 = *a4;
      v24 = a4[1];
      v25 = v43;
      v26 = v24 - *a4;
      if (v24 == *a4)
      {
        goto LABEL_27;
      }

      v27 = v18 < v26 >> 3;
      v28 = v18 - (v26 >> 3);
      if (!v27)
      {
        v29 = &v43[8 * v28 + 8];
        if (v29 != v43)
        {
          v32 = *v23;
          v30 = (v23 + 8);
          v31 = v32;
          v25 = v43;
          while (__PAIR64__(*(v25 + 4), *v25) != __PAIR64__(WORD2(v31), v31) || *(v25 + 6) != BYTE6(v31))
          {
LABEL_19:
            v25 += 8;
            if (v25 == v29)
            {
              goto LABEL_8;
            }
          }

          v33 = (v25 + 14);
          v34 = v30;
          while (v34 != v24)
          {
            v35 = *v34;
            if (__PAIR64__(*(v33 - 1), *(v33 - 6)) == __PAIR64__(WORD2(*v34), *v34))
            {
              v36 = *v33;
              v33 += 8;
              ++v34;
              if (v36 == BYTE6(v35))
              {
                continue;
              }
            }

            goto LABEL_19;
          }

LABEL_27:
          if (v25 != v44)
          {
            sub_884E9C(a1, v12, a5, &__p);
            v37 = a5;
            sub_889A34(a6, a6[1], __p, v42, (v42 - __p) >> 7);
            v38 = __p;
            if (__p)
            {
              v39 = v42;
              v40 = __p;
              if (v42 != __p)
              {
                do
                {
                  v39 = sub_31104C(v39 - 16);
                }

                while (v39 != v38);
                v40 = __p;
              }

              v42 = v38;
              operator delete(v40);
            }

            v17 = v43;
            a5 = v37;
          }
        }
      }
    }

LABEL_8:
    if (v17)
    {
      v44 = v17;
      operator delete(v17);
    }

LABEL_3:
    ++v12;
  }

  while (v12 != v13);
  v12 = v45;
LABEL_35:
  if (v12)
  {
    v46 = v12;
    operator delete(v12);
  }
}

void sub_884E0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  sub_703590(&a10);
  if (__p)
  {
    a14 = __p;
    operator delete(__p);
    v19 = a16;
    if (!a16)
    {
LABEL_3:
      sub_703590(v17);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v19 = a16;
    if (!a16)
    {
      goto LABEL_3;
    }
  }

  a17 = v19;
  operator delete(v19);
  sub_703590(v17);
  _Unwind_Resume(a1);
}

void ***sub_884E9C@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  v17 = a3;
  v7 = sub_30CC30(*a1, *a2);
  v8 = (v7 - *v7);
  if (*v8 >= 0xBu && (v9 = v8[5]) != 0)
  {
    v10 = (v7 + v9 + *(v7 + v9));
    a4[1] = 0;
    a4[2] = 0;
    *a4 = 0;
    sub_7035EC(a4, *v10);
    v16[0] = (v10 + 1);
    v18 = &v10[*v10 + 1];
    sub_703864(v16, &v18, a4, sub_31095C);
    v11 = *a4;
  }

  else
  {
    a4[2] = 0;
    v11 = 0uLL;
    *a4 = 0u;
  }

  v12 = &xmmword_27AF170;
  if (a3)
  {
    v12 = &xmmword_27AF198;
  }

  v16[0] = a1;
  v16[1] = &v17;
  v16[2] = v12;
  result = sub_88168C(v11, *(&v11 + 1), v16);
  v14 = result;
  v15 = a4[1];
  if (result != v15)
  {
    while (v15 != v14)
    {
      v15 -= 16;
      result = sub_31104C(v15);
    }

    a4[1] = v14;
  }

  return result;
}

void sub_885018(uint64_t *a1@<X0>, uint64_t *a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 3);
  if (a3 <= v4)
  {
    v5 = 0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 3);
  }

  else
  {
    v5 = a3;
  }

  v23 = v5;
  if (v4 > a3)
  {
    v6 = a1;
    v7 = a3;
    do
    {
      if (v6[6] < 0)
      {
        break;
      }

      v8 = sub_605E3C(a2, v7);
      v9 = (*v8 - **v8);
      if (*v9 < 0x2Fu)
      {
        break;
      }

      v10 = v9[23];
      if (!v10)
      {
        break;
      }

      v11 = *(*v8 + v10);
      v12 = v11 > 0x2A;
      v13 = (1 << v11) & 0x50426810004;
      if (v12 || v13 == 0)
      {
        break;
      }

      sub_6D3D8C(*v6, *(*a2 + 40 * v7 + 32) | (*(*a2 + 40 * v7 + 36) << 32), &v27);
      v16 = v27;
      v15 = v28;
      if (v27 != v28)
      {
        v25 = v28;
        do
        {
          v17 = sub_30CC30(*v6, *v16);
          v18 = (v17 - *v17);
          if (*v18 >= 5u)
          {
            v19 = v18[2];
            if (v19)
            {
              if (*(v17 + v19) == 3)
              {
                v20 = sub_30CC30(*v6, *v16);
                v21 = (v20 - *v20);
                if (*v21 >= 7u)
                {
                  v22 = v21[3];
                  if (v22)
                  {
                    if (*(v20 + v22 + *(v20 + v22)))
                    {
                      operator new();
                    }
                  }
                }

                v6 = a1;
                operator delete(0);
                v15 = v25;
              }
            }
          }

          ++v16;
        }

        while (v16 != v15);
        v16 = v27;
      }

      if (v16)
      {
        v28 = v16;
        operator delete(v16);
      }

      ++v7;
    }

    while (v7 != v23);
  }
}

void sub_885504(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void ****a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  sub_703590(&a17);
  operator delete(v21);
  if (__p)
  {
    a21 = __p;
    operator delete(__p);
    sub_703590(a10);
    _Unwind_Resume(a1);
  }

  sub_703590(a10);
  _Unwind_Resume(a1);
}

void sub_885988(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_8859C4(uint64_t *a1, uint64_t a2, char a3, __int128 *a4)
{
  *a1 = sub_3AF6B4(a2);
  sub_64AC90((a1 + 1), a4, a3);
  operator new();
}

void sub_885C18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  if (a19 < 0)
  {
    operator delete(__p);
    if ((*(v20 + 31) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((*(v20 + 31) & 0x80000000) == 0)
  {
LABEL_6:
    _Unwind_Resume(exception_object);
  }

  operator delete(*(v20 + 8));
  _Unwind_Resume(exception_object);
}

void sub_885CC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  nullsub_1();
  v6 = *v5;
  v7 = *(v5 + 8);
  if (*v5 != v7)
  {
    do
    {
      v8 = v6[139] - v6[138];
      if (v8)
      {
        v9 = 0;
        v10 = 0x3795876FF3795877 * (v8 >> 3);
        do
        {
          sub_885D84(a1, v6, v9++, a3);
        }

        while (v10 != v9);
      }

      sub_886AC4(a1, v6);
      v6 += 1582;
    }

    while (v6 != v7);
  }
}

void sub_885D84(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  v7 = sub_578320(a2 + 138, a3);
  if ((*(v7 + 160) - 89) < 2)
  {
    return;
  }

  v8 = v7;
  nullsub_1();
  v10 = v9;
  v11 = *(v8 + 24);
  if (v11 >= 0xCCCCCCCCCCCCCCCDLL * ((v9[1] - *v9) >> 3))
  {
    v11 = sub_4D1DC0(a2) - 1;
  }

  v12 = sub_4D1F50(a2, v11);
  v13 = sub_53A634(a2 + 936, v11);
  sub_5EB5B8((a1 + 8), v13);
  v14 = *(v8 + 160);
  if (v14 <= 0x3F)
  {
    if (((1 << v14) & 0xC000000000300008) != 0)
    {
      if (*(v8 + 360) == 1 && *(v8 + 136) != *(v8 + 144))
      {
        sub_887094(a1, (v8 + 136), a4, v116);
        if (sub_734C10(v116))
        {
          sub_87F408((v8 + 392), v116);
          if (*(v8 + 392) == *(v8 + 400))
          {
LABEL_66:
            sub_3E5388(v116);
            goto LABEL_77;
          }
        }

        else
        {
          v33 = sub_4D1F50(a2, *(v8 + 16));
          v34 = *(v33 + 36);
          v35 = ((*(v33 + 36) & 0x20000000) << 19) | (v34 << 32) | *(v33 + 32);
          LODWORD(v100[0]) = *(v33 + 32);
          WORD2(v100[0]) = v34;
          BYTE6(v100[0]) = (v35 ^ 0x1000000000000) >> 48;
          v103[0] = 0;
          v103[1] = 0;
          v104[0] = 0;
          sub_886C0C(a1, v100, v103, __p);
          if (SHIBYTE(v104[0]) < 0)
          {
            operator delete(v103[0]);
          }

          if (sub_734C10(__p))
          {
            sub_87F408((v8 + 392), __p);
          }

          sub_3E5388(__p);
          if (*(v8 + 392) == *(v8 + 400))
          {
            goto LABEL_66;
          }
        }

        v36 = *(v12 + 9);
        LODWORD(v100[0]) = *(v12 + 8);
        WORD2(v100[0]) = v36;
        BYTE6(v100[0]) = (v36 & 0x20000000) == 0;
        v103[0] = 0;
        v103[1] = 0;
        v104[0] = 0;
        sub_886C0C(a1, v100, v103, __p);
        if (SHIBYTE(v104[0]) < 0)
        {
          operator delete(v103[0]);
        }

        if (sub_734C10(__p))
        {
          nullsub_1();
          v38 = v37;
          nullsub_1();
          if (!sub_BB4E4(v38, v39))
          {
            sub_87F408((v8 + 392), __p);
          }
        }

        sub_3E5388(__p);
        goto LABEL_66;
      }
    }

    else if (v14 == 4)
    {
      sub_886DA0(a1, v8, v10, v116);
      if (!sub_734C10(v116))
      {
        goto LABEL_49;
      }

      v15 = *(v8 + 400);
      if (v15 >= *(v8 + 408))
      {
        v16 = sub_6868D8((v8 + 392), v116);
      }

      else
      {
        sub_5139E8(*(v8 + 400), v116);
        v16 = (v15 + 152);
        *(v8 + 400) = v15 + 152;
      }

      *(v8 + 400) = v16;
      if (v125 < 0)
      {
        goto LABEL_72;
      }

LABEL_50:
      if ((v122 & 0x80000000) == 0)
      {
        goto LABEL_51;
      }

      goto LABEL_73;
    }
  }

  v17 = (*v12 - **v12);
  if (*v17 >= 0x2Fu)
  {
    v18 = v17[23];
    if (v18)
    {
      v19 = *(*v12 + v18);
      v20 = v19 > 0x2A;
      v21 = (1 << v19) & 0x50426810004;
      if (!v20 && v21 != 0)
      {
        goto LABEL_77;
      }
    }
  }

  v23 = *(v12 + 9);
  LODWORD(v103[0]) = *(v12 + 8);
  WORD2(v103[0]) = v23;
  BYTE6(v103[0]) = (v23 & 0x20000000) == 0;
  __p[0] = 0;
  __p[1] = 0;
  v107[0] = 0;
  sub_886C0C(a1, v103, __p, v116);
  if (SHIBYTE(v107[0]) < 0)
  {
    operator delete(__p[0]);
  }

  if (!sub_734C10(v116))
  {
    goto LABEL_49;
  }

  v24 = *(v8 + 400);
  if (v24 >= *(v8 + 408))
  {
    v25 = sub_6868D8((v8 + 392), v116);
  }

  else
  {
    sub_5139E8(*(v8 + 400), v116);
    v25 = (v24 + 152);
    *(v8 + 400) = v24 + 152;
  }

  *(v8 + 400) = v25;
  v26 = sub_4D1F50(a2, *(v8 + 16));
  v27 = *(v26 + 36);
  LODWORD(v100[0]) = *(v26 + 32);
  WORD2(v100[0]) = v27;
  BYTE6(v100[0]) = (v27 & 0x20000000) == 0;
  v103[0] = 0;
  v103[1] = 0;
  v104[0] = 0;
  sub_886C0C(a1, v100, v103, __p);
  if (SHIBYTE(v104[0]) < 0)
  {
    operator delete(v103[0]);
  }

  v28 = HIBYTE(v107[0]);
  if (SHIBYTE(v107[0]) < 0)
  {
    v28 = __p[1];
  }

  if (v28)
  {
    v29 = v116[23];
    if (v116[23] < 0)
    {
      v29 = *&v116[8];
    }

    if (v29)
    {
      *(v8 + 616) |= sub_BB4E4(__p, v116);
    }
  }

  v30 = v115;
  v31 = v115;
  if ((v115 & 0x80u) != 0)
  {
    v30 = v114[1];
  }

  if (v30)
  {
    v32 = v125;
    if ((v125 & 0x80u) != 0)
    {
      v32 = v124[1];
    }

    if (v32)
    {
      *(v8 + 616) |= sub_BB4E4(v114, v124);
      v31 = v115;
    }
  }

  if ((v31 & 0x80) != 0)
  {
    operator delete(v114[0]);
    if ((v113 & 0x80000000) == 0)
    {
LABEL_46:
      if ((v111 & 0x80000000) == 0)
      {
        goto LABEL_47;
      }

LABEL_69:
      operator delete(v110);
      if ((v109 & 0x80000000) == 0)
      {
LABEL_48:
        if ((SHIBYTE(v107[0]) & 0x80000000) == 0)
        {
          goto LABEL_49;
        }

        goto LABEL_71;
      }

      goto LABEL_70;
    }
  }

  else if ((v113 & 0x80000000) == 0)
  {
    goto LABEL_46;
  }

  operator delete(v112);
  if (v111 < 0)
  {
    goto LABEL_69;
  }

LABEL_47:
  if ((v109 & 0x80000000) == 0)
  {
    goto LABEL_48;
  }

LABEL_70:
  operator delete(v108);
  if (SHIBYTE(v107[0]) < 0)
  {
LABEL_71:
    operator delete(__p[0]);
    if (v125 < 0)
    {
      goto LABEL_72;
    }

    goto LABEL_50;
  }

LABEL_49:
  if ((v125 & 0x80000000) == 0)
  {
    goto LABEL_50;
  }

LABEL_72:
  operator delete(v124[0]);
  if ((v122 & 0x80000000) == 0)
  {
LABEL_51:
    if ((v120 & 0x80000000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_74;
  }

LABEL_73:
  operator delete(v121);
  if ((v120 & 0x80000000) == 0)
  {
LABEL_52:
    if ((v118 & 0x80000000) == 0)
    {
      goto LABEL_53;
    }

LABEL_75:
    operator delete(v117);
    if ((v116[23] & 0x80000000) == 0)
    {
      goto LABEL_77;
    }

LABEL_76:
    operator delete(*v116);
    goto LABEL_77;
  }

LABEL_74:
  operator delete(v119);
  if (v118 < 0)
  {
    goto LABEL_75;
  }

LABEL_53:
  if ((v116[23] & 0x80000000) != 0)
  {
    goto LABEL_76;
  }

LABEL_77:
  v40 = (v8 + 424);
  sub_887E0C(a1, v10, v8, a4, 0, v116);
  v41 = *(v8 + 416);
  if (v41)
  {
    sub_5ED940(v8 + 416, v41);
    operator delete(*(v8 + 416));
    *(v8 + 416) = 0;
    *(v8 + 424) = 0;
    *(v8 + 432) = 0;
  }

  v42 = *v116;
  *(v8 + 416) = *v116;
  v43 = *&v116[8];
  *v40 = *&v116[8];
  *__p = 0u;
  *v107 = 0u;
  LODWORD(v108) = 1065353216;
  *v103 = 0u;
  *v104 = 0u;
  v105 = 1065353216;
  *v100 = 0u;
  v101 = 0u;
  v102 = 1065353216;
  v44 = *(v8 + 392);
  if (v44 == *(v8 + 400))
  {
    v45 = v43;
  }

  else
  {
    sub_23914(__p, v44, *(v8 + 392));
    sub_23914(v103, (*(v8 + 392) + 128), *(v8 + 392) + 128);
    sub_88AF68(v100, (*(v8 + 392) + 64), *(v8 + 392) + 64);
    v42 = *(v8 + 416);
    v45 = *v40;
  }

  *v116 = __p;
  *&v116[8] = v103;
  *&v116[16] = v100;
  v46 = sub_88B4C0(v42, v45, v116);
  if (v46 != *v40)
  {
    sub_5ED940(v8 + 416, v46);
  }

  nullsub_1();
  v92 = v10;
  v47 = 0;
  v98 = v48;
  v99 = v49;
  while (*(v8 + 160) != 4 && *(v8 + 392) == *(v8 + 400) && *(v8 + 416) == *v40 && v47 < *(a1 + 40))
  {
    sub_4D0568();
    v52 = v51;
    v54 = v53;
    if (v98)
    {
      v55 = v99;
      v56 = sub_4D1DC0(v98);
      v57 = v55 >= v56;
      v58 = v55 < v56;
      if (!v52)
      {
        if (v57)
        {
          break;
        }

        goto LABEL_105;
      }
    }

    else
    {
      if (!v51)
      {
        break;
      }

      v58 = 0;
    }

    v59 = sub_4D1DC0(v52);
    if (v54 < v59 && v58)
    {
      v61 = sub_4D1F50(v98, v99);
      if (v61 == sub_4D1F50(v52, v54))
      {
        break;
      }
    }

    else if (((v58 ^ (v54 < v59)) & 1) == 0)
    {
      break;
    }

LABEL_105:
    v62 = sub_4D1F50(v98, v99);
    v63 = *v62;
    v64 = (*v62 - **v62);
    if (*v64 < 0x2Fu || !v64[23] || ((v65 = v63[v64[23]], v20 = v65 > 0x2A, v66 = (1 << v65) & 0x50426810004, !v20) ? (v67 = v66 == 0) : (v67 = 1), v67))
    {
      v69 = *(v62 + 9);
      v95 = *(v62 + 8);
      v96 = v69;
      v97 = (v69 & 0x20000000) == 0;
      v93[0] = 0;
      v93[1] = 0;
      v94 = 0;
      sub_886C0C(a1, &v95, v93, v116);
      if (SHIBYTE(v94) < 0)
      {
        operator delete(v93[0]);
      }

      if (sub_734C10(v116))
      {
        v123 = 1;
        v70 = *(v8 + 424);
        if (v70 >= *(v8 + 432))
        {
          v71 = sub_8898E8(v8 + 416, v116);
        }

        else
        {
          sub_5139E8(*(v8 + 424), v116);
          v71 = v70 + 152;
          *v40 = v70 + 152;
        }

        *v40 = v71;
      }

      if (v125 < 0)
      {
        operator delete(v124[0]);
        if (v122 < 0)
        {
          goto LABEL_181;
        }

LABEL_122:
        if ((v120 & 0x80000000) == 0)
        {
          goto LABEL_123;
        }

LABEL_182:
        operator delete(v119);
        if (v118 < 0)
        {
          goto LABEL_183;
        }

LABEL_124:
        if ((v116[23] & 0x80000000) == 0)
        {
          break;
        }
      }

      else
      {
        if ((v122 & 0x80000000) == 0)
        {
          goto LABEL_122;
        }

LABEL_181:
        operator delete(v121);
        if (v120 < 0)
        {
          goto LABEL_182;
        }

LABEL_123:
        if ((v118 & 0x80000000) == 0)
        {
          goto LABEL_124;
        }

LABEL_183:
        operator delete(v117);
        if ((v116[23] & 0x80000000) == 0)
        {
          break;
        }
      }

      operator delete(*v116);
      break;
    }

    v68 = v64[4];
    if (v68)
    {
      v50 = *&v63[v68];
    }

    else
    {
      v50 = 0;
    }

    v47 += v50;
    sub_890FF8(&v98);
  }

  sub_887E0C(a1, v92, v8, a4, 1, v116);
  v72 = *(v8 + 440);
  if (v72)
  {
    sub_5ED940(v8 + 440, v72);
    operator delete(*(v8 + 440));
    *(v8 + 440) = 0;
    *(v8 + 448) = 0;
    *(v8 + 456) = 0;
  }

  *(v8 + 440) = *v116;
  *(v8 + 456) = *&v116[16];
  sub_8873C8(a1, v92, v8, v116);
  if (sub_734C10(v116))
  {
    v73 = *(v8 + 392);
    if (v73 != *(v8 + 400))
    {
      v74 = *(v8 + 424);
      if (v74 >= *(v8 + 432))
      {
        v75 = sub_8898E8(v8 + 416, v73);
      }

      else
      {
        sub_5139E8(*(v8 + 424), v73);
        v75 = v74 + 152;
        *v40 = v74 + 152;
      }

      *v40 = v75;
      *(v75 - 32) = 1;
      sub_5ED940(v8 + 392, *(v8 + 392));
    }

    v76 = *(v8 + 424);
    if (v76 >= *(v8 + 432))
    {
      v77 = sub_6868D8((v8 + 416), v116);
    }

    else
    {
      sub_5139E8(*(v8 + 424), v116);
      v77 = (v76 + 152);
      *v40 = v76 + 152;
    }

    *v40 = v77;
    *(v77 - 8) = 4;
  }

  if (*(a1 + 96) == 1)
  {
    sub_88780C(a1, a2, v8, a4, v93);
    v78 = *(v8 + 1984);
    if (v78)
    {
      v79 = (v8 + 1984);
      v80 = *(v8 + 1992);
      v81 = *(v8 + 1984);
      if (v80 != v78)
      {
        do
        {
          v82 = *(v80 - 17);
          v80 -= 5;
          if (v82 < 0)
          {
            operator delete(*v80);
          }
        }

        while (v80 != v78);
        v81 = *v79;
      }

      *(v8 + 1992) = v78;
      operator delete(v81);
      *v79 = 0;
      *(v8 + 1992) = 0;
      *(v8 + 2000) = 0;
    }

    *(v8 + 1984) = *v93;
    *(v8 + 2000) = v94;
  }

  if ((v125 & 0x80000000) == 0)
  {
    if ((v122 & 0x80000000) == 0)
    {
      goto LABEL_149;
    }

LABEL_155:
    operator delete(v121);
    if (v120 < 0)
    {
      goto LABEL_156;
    }

LABEL_150:
    if ((v118 & 0x80000000) == 0)
    {
      goto LABEL_151;
    }

LABEL_157:
    operator delete(v117);
    if ((v116[23] & 0x80000000) != 0)
    {
      goto LABEL_158;
    }

LABEL_152:
    v83 = v101;
    if (v101)
    {
      goto LABEL_162;
    }

    goto LABEL_165;
  }

  operator delete(v124[0]);
  if (v122 < 0)
  {
    goto LABEL_155;
  }

LABEL_149:
  if ((v120 & 0x80000000) == 0)
  {
    goto LABEL_150;
  }

LABEL_156:
  operator delete(v119);
  if (v118 < 0)
  {
    goto LABEL_157;
  }

LABEL_151:
  if ((v116[23] & 0x80000000) == 0)
  {
    goto LABEL_152;
  }

LABEL_158:
  operator delete(*v116);
  v83 = v101;
  if (v101)
  {
    while (1)
    {
LABEL_162:
      v84 = *v83;
      if (v83[71] < 0)
      {
        operator delete(*(v83 + 6));
        if ((v83[47] & 0x80000000) == 0)
        {
          goto LABEL_161;
        }

LABEL_164:
        operator delete(*(v83 + 3));
        operator delete(v83);
        v83 = v84;
        if (!v84)
        {
          break;
        }
      }

      else
      {
        if (v83[47] < 0)
        {
          goto LABEL_164;
        }

LABEL_161:
        operator delete(v83);
        v83 = v84;
        if (!v84)
        {
          break;
        }
      }
    }
  }

LABEL_165:
  v85 = v100[0];
  v100[0] = 0;
  if (v85)
  {
    operator delete(v85);
  }

  v86 = v104[0];
  if (v104[0])
  {
    do
    {
      v90 = *v86;
      if (*(v86 + 39) < 0)
      {
        operator delete(v86[2]);
      }

      operator delete(v86);
      v86 = v90;
    }

    while (v90);
  }

  v87 = v103[0];
  v103[0] = 0;
  if (v87)
  {
    operator delete(v87);
  }

  v88 = v107[0];
  if (v107[0])
  {
    do
    {
      v91 = *v88;
      if (*(v88 + 39) < 0)
      {
        operator delete(v88[2]);
      }

      operator delete(v88);
      v88 = v91;
    }

    while (v91);
  }

  v89 = __p[0];
  __p[0] = 0;
  if (v89)
  {
    operator delete(v89);
  }
}

void sub_88697C(_Unwind_Exception *a1)
{
  *(v1 + 400) = v2;
  sub_3E5388(v3 - 240);
  _Unwind_Resume(a1);
}

void sub_886994(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  *v41 = v40;
  sub_3E5388(v42 - 240);
  sub_8801E0(&a20);
  sub_23D9C(&__p);
  sub_23D9C(&a35);
  _Unwind_Resume(a1);
}

void sub_886AC4(uint64_t a1, uint64_t a2)
{
  for (i = *(a2 + 1112) - 2616; i != *(a2 + 1104); i -= 2616)
  {
    v5 = *(i - 2200);
    v6 = *(i - 2192);
    v12[0] = a1;
    v12[1] = i + 416;
    v12[2] = i + 392;
    if (v6 - v5 < 1)
    {
      v11 = 0;
      v7 = 0;
    }

    else
    {
      v7 = 0x86BCA1AF286BCA1BLL * (v6 - v5);
      while (1)
      {
        v8 = operator new(152 * v7, &std::nothrow);
        if (v8)
        {
          break;
        }

        v9 = v7 >> 1;
        v10 = v7 > 1;
        v7 >>= 1;
        if (!v10)
        {
          v11 = 0;
          v7 = v9;
          goto LABEL_11;
        }
      }

      v11 = v8;
    }

LABEL_11:
    sub_8910C8(v5, v6, v12, 0x86BCA1AF286BCA1BLL * (v6 - v5), v11, v7);
    if (v11)
    {
      operator delete(v11);
    }
  }
}

void sub_886BF4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_886C0C(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_5E94A4(*a1, *a2, 1, &v22);
  v9 = sub_2B51D8(*a1, *a2 | (*(a2 + 2) << 32));
  v10 = (v9 - *v9);
  if (*v10 >= 0x25u && (v11 = v10[18]) != 0)
  {
    v12 = (v9 + v11 + *(v9 + v11));
  }

  else
  {
    v12 = 0;
  }

  sub_31077C(v12, &__p);
  v13 = *(a4 + 23);
  if ((v13 & 0x80u) != 0)
  {
    v13 = *(a4 + 8);
  }

  if (v13)
  {
    sub_5EB5B8((a1 + 8), a4);
  }

  sub_73BE28(&v22, a5);
  v14 = __p;
  if (__p)
  {
    v15 = v21;
    v16 = __p;
    if (v21 != __p)
    {
      do
      {
        if (*(v15 - 9) < 0)
        {
          operator delete(*(v15 - 4));
        }

        v15 -= 5;
      }

      while (v15 != v14);
      v16 = __p;
    }

    v21 = v14;
    operator delete(v16);
  }

  v17 = v22;
  if (v22)
  {
    v18 = v23;
    v19 = v22;
    if (v23 != v22)
    {
      do
      {
        v18 = sub_310F30(v18 - 144);
      }

      while (v18 != v17);
      v19 = v22;
    }

    v23 = v17;
    operator delete(v19);
  }
}

void sub_886D70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, void *a12)
{
  sub_3108E8(&a9);
  sub_5E9738(&a12);
  _Unwind_Resume(a1);
}

void sub_886D8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_5E9738(va);
  _Unwind_Resume(a1);
}

void sub_886DA0(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *(*a4 + 40 * *(a2 + 16) + 36);
  v10 = ((*(*a4 + 40 * *(a2 + 16) + 36) & 0x20000000) << 19) | (v9 << 32) | *(*a4 + 40 * *(a2 + 16) + 32);
  v27 = *(*a4 + 40 * *(a2 + 16) + 32);
  v28 = v9;
  v29 = (v10 ^ 0x1000000000000) >> 48;
  __p = 0;
  v25 = 0;
  v26 = 0;
  sub_886C0C(a1, &v27, &__p, v30);
  if (SHIBYTE(v26) < 0)
  {
    operator delete(__p);
    v11 = *(a2 + 16);
    v12 = *(a2 + 24);
    v14 = v11 + 1 >= v12;
    if (v11 + 1 > v12)
    {
      v12 = v11 + 1;
    }

    if (!v14)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v11 = *(a2 + 16);
    v12 = *(a2 + 24);
    v13 = v11 + 1 >= v12;
    if (v11 + 1 > v12)
    {
      v12 = v11 + 1;
    }

    if (!v13)
    {
LABEL_10:
      v15 = 40 * v11;
      for (i = ~v11 + v12; i; --i)
      {
        v17 = *(*a4 + v15 + 76);
        v18 = ((*(*a4 + v15 + 76) & 0x20000000) << 19) | (v17 << 32) | *(*a4 + v15 + 72);
        v27 = *(*a4 + v15 + 72);
        v28 = v17;
        v29 = (v18 ^ 0x1000000000000) >> 48;
        __p = 0;
        v25 = 0;
        v26 = 0;
        sub_886C0C(a1, &v27, &__p, a5);
        if (SHIBYTE(v26) < 0)
        {
          operator delete(__p);
        }

        v19 = *(a5 + 23);
        if (v19 >= 0)
        {
          v20 = *(a5 + 23);
        }

        else
        {
          v20 = *(a5 + 8);
        }

        v21 = v31;
        if ((v31 & 0x80u) != 0)
        {
          v21 = v30[1];
        }

        if (v20 != v21)
        {
          goto LABEL_39;
        }

        v22 = v19 >= 0 ? a5 : *a5;
        v23 = (v31 & 0x80u) == 0 ? v30 : v30[0];
        if (memcmp(v22, v23, v20))
        {
          goto LABEL_39;
        }

        if (*(a5 + 151) < 0)
        {
          operator delete(*(a5 + 128));
          if ((*(a5 + 119) & 0x80000000) == 0)
          {
LABEL_29:
            if ((*(a5 + 95) & 0x80000000) == 0)
            {
              goto LABEL_30;
            }

            goto LABEL_35;
          }
        }

        else if ((*(a5 + 119) & 0x80000000) == 0)
        {
          goto LABEL_29;
        }

        operator delete(*(a5 + 96));
        if ((*(a5 + 95) & 0x80000000) == 0)
        {
LABEL_30:
          if ((*(a5 + 55) & 0x80000000) == 0)
          {
            goto LABEL_31;
          }

          goto LABEL_36;
        }

LABEL_35:
        operator delete(*(a5 + 72));
        if ((*(a5 + 55) & 0x80000000) == 0)
        {
LABEL_31:
          if (*(a5 + 23) < 0)
          {
            goto LABEL_37;
          }

          goto LABEL_11;
        }

LABEL_36:
        operator delete(*(a5 + 32));
        if (*(a5 + 23) < 0)
        {
LABEL_37:
          operator delete(*a5);
        }

LABEL_11:
        v15 += 40;
      }
    }
  }

  sub_734CE0(a5);
LABEL_39:
  if (v39 < 0)
  {
    operator delete(v38);
    if ((v37 & 0x80000000) == 0)
    {
LABEL_41:
      if ((v35 & 0x80000000) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_47;
    }
  }

  else if ((v37 & 0x80000000) == 0)
  {
    goto LABEL_41;
  }

  operator delete(v36);
  if ((v35 & 0x80000000) == 0)
  {
LABEL_42:
    if ((v33 & 0x80000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_48;
  }

LABEL_47:
  operator delete(v34);
  if ((v33 & 0x80000000) == 0)
  {
LABEL_43:
    if ((v31 & 0x80000000) == 0)
    {
      return;
    }

LABEL_49:
    operator delete(v30[0]);
    return;
  }

LABEL_48:
  operator delete(v32);
  if (v31 < 0)
  {
    goto LABEL_49;
  }
}

void sub_887094(uint64_t *a1@<X0>, unint64_t **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  v9 = *(a2[1] - 1);
  v10 = sub_2B51D8(*a1, v9 & 0xFFFFFFFFFFFFLL);
  if (*(v8 + 7772) == 1)
  {
    v11 = sub_30C50C(v8 + 3896, v9, 0);
    v12 = &v11[-*v11];
    if (*v12 < 5u)
    {
      v13 = 0;
    }

    else
    {
      v13 = *(v12 + 2);
      if (v13)
      {
        v13 += &v11[*&v11[v13]];
      }
    }

    v14 = v13 + ((v9 >> 30) & 0x3FFFC) + 4 + *(v13 + ((v9 >> 30) & 0x3FFFC) + 4);
  }

  else
  {
    v14 = 0;
  }

  v50[0] = v10;
  v50[1] = v14;
  v50[2] = sub_31D7E8(v8, v9 & 0xFFFFFFFFFFFFLL, 1);
  v50[3] = v15;
  v50[4] = v9;
  v16 = *a1;
  v17 = **a2;
  v18 = sub_2B51D8(*a1, v17 & 0xFFFFFFFFFFFFLL);
  if (*(v16 + 7772) == 1)
  {
    v19 = sub_30C50C(v16 + 3896, v17, 0);
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

    v22 = v21 + ((v17 >> 30) & 0x3FFFC) + 4 + *(v21 + ((v17 >> 30) & 0x3FFFC) + 4);
  }

  else
  {
    v22 = 0;
  }

  v49[0] = v18;
  v49[1] = v22;
  v49[2] = sub_31D7E8(v16, v17 & 0xFFFFFFFFFFFFLL, 1);
  v49[3] = v23;
  v49[4] = v17;
  sub_734CE0(v39);
  sub_734CE0(v29);
  v24 = *a2;
  v25 = a2[1];
  v51[0] = a1;
  v51[1] = v49;
  v51[2] = v50;
  v51[3] = a3;
  v51[4] = v39;
  v51[5] = v29;
  if (v24 != v25)
  {
    v26 = v24 + 1;
    do
    {
      if (v26 == v25)
      {
        break;
      }

      v27 = sub_893390(v51, *(v26 - 1), *v26);
      ++v26;
    }

    while (!v27);
  }

  if (sub_734C10(v39))
  {
    v28 = v39;
  }

  else
  {
    v28 = v29;
  }

  sub_5139E8(a4, v28);
  if (v38 < 0)
  {
    operator delete(__p);
    if ((v36 & 0x80000000) == 0)
    {
LABEL_24:
      if ((v34 & 0x80000000) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_35;
    }
  }

  else if ((v36 & 0x80000000) == 0)
  {
    goto LABEL_24;
  }

  operator delete(v35);
  if ((v34 & 0x80000000) == 0)
  {
LABEL_25:
    if ((v32 & 0x80000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_36;
  }

LABEL_35:
  operator delete(v33);
  if ((v32 & 0x80000000) == 0)
  {
LABEL_26:
    if ((v30 & 0x80000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_37;
  }

LABEL_36:
  operator delete(v31);
  if ((v30 & 0x80000000) == 0)
  {
LABEL_27:
    if ((v48 & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_38;
  }

LABEL_37:
  operator delete(v29[0]);
  if ((v48 & 0x80000000) == 0)
  {
LABEL_28:
    if ((v46 & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_39;
  }

LABEL_38:
  operator delete(v47);
  if ((v46 & 0x80000000) == 0)
  {
LABEL_29:
    if ((v44 & 0x80000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_40;
  }

LABEL_39:
  operator delete(v45);
  if ((v44 & 0x80000000) == 0)
  {
LABEL_30:
    if ((v42 & 0x80000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_41;
  }

LABEL_40:
  operator delete(v43);
  if ((v42 & 0x80000000) == 0)
  {
LABEL_31:
    if ((v40 & 0x80000000) == 0)
    {
      return;
    }

LABEL_42:
    operator delete(v39[0]);
    return;
  }

LABEL_41:
  operator delete(v41);
  if (v40 < 0)
  {
    goto LABEL_42;
  }
}

void sub_887394(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, ...)
{
  va_start(va, a27);
  sub_3E5388(va);
  _Unwind_Resume(a1);
}

void sub_8873A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, ...)
{
  va_start(va, a27);
  sub_3E5388(&a9);
  sub_3E5388(va);
  _Unwind_Resume(a1);
}

void sub_8873C8(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a5@<X8>)
{
  if (a3[3] < 0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 3))
  {
    v8 = a3[2];
    while (1)
    {
      if (++v8 > a3[3])
      {
        sub_734CE0(a5);
        return;
      }

      v10 = sub_8886B4(a2, v8);
      v11 = *(v10 + 32);
      v12 = *(v10 + 16);
      v37[0] = *v10;
      v37[1] = v12;
      v38 = v11;
      v13 = *a1;
      v14 = sub_314A00(v37);
      v15 = v14;
      v16 = sub_2AF704(v13 + 3896, v14, 1);
      if (v16 && (v17 = &v16[-*v16], *v17 >= 7u) && (v18 = *(v17 + 3)) != 0 && (v19 = &v16[4 * HIDWORD(v14) + v18 + *&v16[v18]], v20 = (v19 + 4 + *(v19 + 4)), v21 = (v20 - *v20), *v21 >= 9u) && (v22 = v21[4]) != 0 && (v23 = *(v20 + v22), v23 != -1))
      {
        v24 = sub_31DF78(v13, v15);
        sub_5E9E60(v13, v24, v23, 1, &__p);
      }

      else
      {
        __p = 0;
        v35 = 0;
        v36 = 0;
      }

      v33[0] = a2;
      v33[1] = a3;
      if (sub_8888D0(v33, &__p))
      {
        sub_734CE0(a5);
LABEL_18:
        v25 = 0;
        v26 = __p;
        if (!__p)
        {
          goto LABEL_5;
        }

        goto LABEL_32;
      }

      sub_73BE28(&__p, a5);
      if (sub_734C10(a5))
      {
        goto LABEL_18;
      }

      if (*(a5 + 151) < 0)
      {
        operator delete(*(a5 + 128));
        if ((*(a5 + 119) & 0x80000000) == 0)
        {
LABEL_22:
          if ((*(a5 + 95) & 0x80000000) == 0)
          {
            goto LABEL_23;
          }

          goto LABEL_29;
        }
      }

      else if ((*(a5 + 119) & 0x80000000) == 0)
      {
        goto LABEL_22;
      }

      operator delete(*(a5 + 96));
      if ((*(a5 + 95) & 0x80000000) == 0)
      {
LABEL_23:
        if (*(a5 + 55) < 0)
        {
          goto LABEL_30;
        }

        goto LABEL_24;
      }

LABEL_29:
      operator delete(*(a5 + 72));
      if (*(a5 + 55) < 0)
      {
LABEL_30:
        operator delete(*(a5 + 32));
        if ((*(a5 + 23) & 0x80000000) == 0)
        {
LABEL_25:
          v25 = 1;
          v26 = __p;
          if (!__p)
          {
            goto LABEL_5;
          }

          goto LABEL_32;
        }

        goto LABEL_31;
      }

LABEL_24:
      if ((*(a5 + 23) & 0x80000000) == 0)
      {
        goto LABEL_25;
      }

LABEL_31:
      operator delete(*a5);
      v25 = 1;
      v26 = __p;
      if (!__p)
      {
        goto LABEL_5;
      }

LABEL_32:
      v27 = v35;
      v9 = v26;
      if (v35 != v26)
      {
        while (1)
        {
          if (*(v27 - 1) < 0)
          {
            operator delete(*(v27 - 3));
            if (*(v27 - 33) < 0)
            {
LABEL_50:
              operator delete(*(v27 - 7));
              v28 = *(v27 - 10);
              if (!v28)
              {
LABEL_51:
                if (*(v27 - 89) < 0)
                {
                  goto LABEL_34;
                }

                goto LABEL_52;
              }

              goto LABEL_39;
            }
          }

          else if (*(v27 - 33) < 0)
          {
            goto LABEL_50;
          }

          v28 = *(v27 - 10);
          if (!v28)
          {
            goto LABEL_51;
          }

LABEL_39:
          v29 = *(v27 - 9);
          if (v29 == v28)
          {
            *(v27 - 9) = v28;
            operator delete(v28);
            if (*(v27 - 89) < 0)
            {
              goto LABEL_34;
            }

            goto LABEL_52;
          }

          do
          {
            while (*(v29 - 9) < 0)
            {
              operator delete(*(v29 - 4));
              v30 = v29 - 7;
              if (*(v29 - 33) < 0)
              {
                goto LABEL_46;
              }

LABEL_43:
              v29 = v30;
              if (v30 == v28)
              {
                goto LABEL_47;
              }
            }

            v30 = v29 - 7;
            if ((*(v29 - 33) & 0x80000000) == 0)
            {
              goto LABEL_43;
            }

LABEL_46:
            operator delete(*v30);
            v29 = v30;
          }

          while (v30 != v28);
LABEL_47:
          v31 = *(v27 - 10);
          *(v27 - 9) = v28;
          operator delete(v31);
          if (*(v27 - 89) < 0)
          {
LABEL_34:
            operator delete(*(v27 - 14));
            if ((*(v27 - 113) & 0x80000000) == 0)
            {
              goto LABEL_35;
            }

LABEL_53:
            operator delete(*(v27 - 17));
            v27 -= 18;
            if (v27 == v26)
            {
LABEL_3:
              v9 = __p;
              break;
            }
          }

          else
          {
LABEL_52:
            if (*(v27 - 113) < 0)
            {
              goto LABEL_53;
            }

LABEL_35:
            v27 -= 18;
            if (v27 == v26)
            {
              goto LABEL_3;
            }
          }
        }
      }

      v35 = v26;
      operator delete(v9);
LABEL_5:
      if ((v25 & 1) == 0)
      {
        return;
      }
    }
  }

  sub_734CE0(a5);
}