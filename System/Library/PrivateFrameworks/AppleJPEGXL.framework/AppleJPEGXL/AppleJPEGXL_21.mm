void *sub_240BBE0C0(void *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    if (!(a2 >> 60))
    {
      sub_240B2D470(a2);
    }

    sub_240B228BC();
  }

  return a1;
}

void sub_240BBE134(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_240BBE150(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 2);
    v8 = v7 + 1;
    if (v7 + 1 > 0x1555555555555555)
    {
      sub_240B228BC();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 2);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0xAAAAAAAAAAAAAAALL)
    {
      v10 = 0x1555555555555555;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      sub_240B45DEC(v10);
    }

    v11 = 12 * v7;
    v12 = *a2;
    *(v11 + 8) = *(a2 + 2);
    *v11 = v12;
    v6 = 12 * v7 + 12;
    v13 = *(a1 + 8) - *a1;
    v14 = v11 - v13;
    memcpy((v11 - v13), *a1, v13);
    v15 = *a1;
    *a1 = v14;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    v5 = *a2;
    *(v4 + 8) = *(a2 + 2);
    *v4 = v5;
    v6 = v4 + 12;
  }

  *(a1 + 8) = v6;
}

void sub_240BBE254(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = a1 + 1;
  v8 = a1[1];
  if (v8)
  {
    a1[2] = v8;
    operator delete(v8);
    *v9 = 0;
    v9[1] = 0;
    v9[2] = 0;
  }

  *(a1 + 1) = *a2;
  a1[3] = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v10 = a1[4];
  if (v10)
  {
    a1[5] = v10;
    operator delete(v10);
    a1[4] = 0;
    a1[5] = 0;
    a1[6] = 0;
  }

  *(a1 + 2) = *a3;
  a1[6] = *(a3 + 16);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v11 = a1[7];
  if (v11)
  {
    a1[8] = v11;
    operator delete(v11);
    a1[7] = 0;
    a1[8] = 0;
    a1[9] = 0;
  }

  *(a1 + 7) = *a4;
  a1[9] = *(a4 + 16);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;

  sub_240B45F80(a1);
}

void sub_240BBE340(_OWORD *a1, _OWORD *a2)
{
  v4 = 0;
  v32[0] = *a1;
  do
  {
    v5 = v32 + v4;
    v6 = (a1 + v4);
    *(v5 + 1) = *(a1 + v4 + 16);
    *(v5 + 4) = *(a1 + v4 + 32);
    v6[3] = 0;
    v6[4] = 0;
    v6[2] = 0;
    v4 += 24;
  }

  while (v4 != 72);
  for (i = 0; i != 72; i += 24)
  {
    v8 = v32 + i;
    v9 = (a1 + i);
    *(v8 + 88) = *(a1 + i + 88);
    *(v8 + 13) = *(a1 + i + 104);
    v9[12] = 0;
    v9[13] = 0;
    v9[11] = 0;
  }

  v10 = 0;
  *a1 = *a2;
  do
  {
    v11 = a1 + v10;
    v13 = (a1 + v10 + 16);
    v12 = *v13;
    if (*v13)
    {
      *(v11 + 3) = v12;
      operator delete(v12);
      *v13 = 0;
      *(a1 + v10 + 24) = 0;
      *(a1 + v10 + 32) = 0;
    }

    v14 = (a2 + v10);
    *v13 = *(a2 + v10 + 16);
    *(v11 + 4) = *(a2 + v10 + 32);
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = 0;
    v10 += 24;
  }

  while (v10 != 72);
  for (j = 0; j != 72; j += 24)
  {
    v16 = a1 + j;
    v18 = (a1 + j + 88);
    v17 = *v18;
    if (*v18)
    {
      *(v16 + 12) = v17;
      operator delete(v17);
      *v18 = 0;
      *(a1 + j + 96) = 0;
      *(a1 + j + 104) = 0;
    }

    v19 = (a2 + j);
    *v18 = *(a2 + j + 88);
    *(v16 + 13) = *(a2 + j + 104);
    v19[11] = 0;
    v19[12] = 0;
    v19[13] = 0;
  }

  v20 = 0;
  *a2 = v32[0];
  do
  {
    v21 = a2 + v20;
    v22 = *(a2 + v20 + 16);
    if (v22)
    {
      *(v21 + 3) = v22;
      operator delete(v22);
    }

    v23 = (v32 + v20);
    *(v21 + 1) = *(&v32[1] + v20);
    *(v21 + 4) = *(&v32[2] + v20);
    v23[2] = 0;
    v23[3] = 0;
    v23[4] = 0;
    v20 += 24;
  }

  while (v20 != 72);
  for (k = 0; k != 72; k += 24)
  {
    v25 = a2 + k;
    v26 = *(a2 + k + 88);
    if (v26)
    {
      *(v25 + 12) = v26;
      operator delete(v26);
    }

    v27 = (v32 + k);
    *(v25 + 88) = *(&v32[5] + k + 8);
    *(v25 + 13) = *(&v32[6] + k + 8);
    v27[11] = 0;
    v27[12] = 0;
    v27[13] = 0;
  }

  for (m = 0; m != -72; m -= 24)
  {
    v29 = *(&v32[8] + m + 8);
    if (v29)
    {
      *(&v32[9] + m) = v29;
      operator delete(v29);
    }
  }

  for (n = 0; n != -72; n -= 24)
  {
    v31 = *(&v32[4] + n);
    if (v31)
    {
      *(&v32[4] + n + 8) = v31;
      operator delete(v31);
    }
  }
}

void sub_240BBE56C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 8) * *a2;
  v7 = *(a3 + 8) * *a3;
  if (v6 > *(a1 + 8) * *a1)
  {
    if (v7 <= v6)
    {
      sub_240BBE340(a1, a2);
      v17 = *(a1 + 160);
      *(a1 + 160) = *(a2 + 160);
      *(a2 + 160) = v17;
      v18 = *(a1 + 168);
      *(a1 + 168) = *(a2 + 168);
      *(a2 + 168) = v18;
      v8 = (a2 + 176);
      v19 = *(a1 + 176);
      *(a1 + 176) = *(a2 + 176);
      *(a2 + 176) = v19;
      if (*(a3 + 8) * *a3 <= *(a2 + 8) * *a2)
      {
        return;
      }

      sub_240BBE340(a2, a3);
      v20 = *(a2 + 160);
      *(a2 + 160) = *(a3 + 160);
      *(a3 + 160) = v20;
      v10 = *(a2 + 168);
      *(a2 + 168) = *(a3 + 168);
    }

    else
    {
      v8 = (a1 + 176);
      sub_240BBE340(a1, a3);
      v9 = *(a1 + 160);
      *(a1 + 160) = *(a3 + 160);
      *(a3 + 160) = v9;
      v10 = *(a1 + 168);
      *(a1 + 168) = *(a3 + 168);
    }

    *(a3 + 168) = v10;
    v14 = (a3 + 176);
    goto LABEL_10;
  }

  if (v7 > v6)
  {
    sub_240BBE340(a2, a3);
    v11 = *(a2 + 160);
    *(a2 + 160) = *(a3 + 160);
    *(a3 + 160) = v11;
    v12 = *(a2 + 168);
    *(a2 + 168) = *(a3 + 168);
    *(a3 + 168) = v12;
    v14 = (a2 + 176);
    v13 = *(a2 + 176);
    *(a2 + 176) = *(a3 + 176);
    *(a3 + 176) = v13;
    if (*(a2 + 8) * *a2 > *(a1 + 8) * *a1)
    {
      sub_240BBE340(a1, a2);
      v15 = *(a1 + 160);
      *(a1 + 160) = *(a2 + 160);
      *(a2 + 160) = v15;
      v16 = *(a1 + 168);
      *(a1 + 168) = *(a2 + 168);
      *(a2 + 168) = v16;
      v8 = (a1 + 176);
LABEL_10:
      v21 = *v8;
      *v8 = *v14;
      *v14 = v21;
    }
  }
}

void sub_240BBE728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_240BBE56C(a1, a2, a3);
  if (*(a4 + 8) * *a4 > *(a3 + 8) * *a3)
  {
    sub_240BBE340(a3, a4);
    v8 = *(a3 + 160);
    *(a3 + 160) = *(a4 + 160);
    *(a4 + 160) = v8;
    v9 = *(a3 + 168);
    *(a3 + 168) = *(a4 + 168);
    *(a4 + 168) = v9;
    v10 = *(a3 + 176);
    *(a3 + 176) = *(a4 + 176);
    *(a4 + 176) = v10;
    if (*(a3 + 8) * *a3 > *(a2 + 8) * *a2)
    {
      sub_240BBE340(a2, a3);
      v11 = *(a2 + 160);
      *(a2 + 160) = *(a3 + 160);
      *(a3 + 160) = v11;
      v12 = *(a2 + 168);
      *(a2 + 168) = *(a3 + 168);
      *(a3 + 168) = v12;
      v13 = *(a2 + 176);
      *(a2 + 176) = *(a3 + 176);
      *(a3 + 176) = v13;
      if (*(a2 + 8) * *a2 > *(a1 + 8) * *a1)
      {
        sub_240BBE340(a1, a2);
        v14 = *(a1 + 160);
        *(a1 + 160) = *(a2 + 160);
        *(a2 + 160) = v14;
        v15 = *(a1 + 168);
        *(a1 + 168) = *(a2 + 168);
        *(a2 + 168) = v15;
        v16 = *(a1 + 176);
        *(a1 + 176) = *(a2 + 176);
        *(a2 + 176) = v16;
      }
    }
  }
}

void sub_240BBE85C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_240BBE728(a1, a2, a3, a4);
  if (*(a5 + 8) * *a5 > *(a4 + 8) * *a4)
  {
    sub_240BBE340(a4, a5);
    v10 = *(a4 + 160);
    *(a4 + 160) = *(a5 + 160);
    *(a5 + 160) = v10;
    v11 = *(a4 + 168);
    *(a4 + 168) = *(a5 + 168);
    *(a5 + 168) = v11;
    v12 = *(a4 + 176);
    *(a4 + 176) = *(a5 + 176);
    *(a5 + 176) = v12;
    if (*(a4 + 8) * *a4 > *(a3 + 8) * *a3)
    {
      sub_240BBE340(a3, a4);
      v13 = *(a3 + 160);
      *(a3 + 160) = *(a4 + 160);
      *(a4 + 160) = v13;
      v14 = *(a3 + 168);
      *(a3 + 168) = *(a4 + 168);
      *(a4 + 168) = v14;
      v15 = *(a3 + 176);
      *(a3 + 176) = *(a4 + 176);
      *(a4 + 176) = v15;
      if (*(a3 + 8) * *a3 > *(a2 + 8) * *a2)
      {
        sub_240BBE340(a2, a3);
        v16 = *(a2 + 160);
        *(a2 + 160) = *(a3 + 160);
        *(a3 + 160) = v16;
        v17 = *(a2 + 168);
        *(a2 + 168) = *(a3 + 168);
        *(a3 + 168) = v17;
        v18 = *(a2 + 176);
        *(a2 + 176) = *(a3 + 176);
        *(a3 + 176) = v18;
        if (*(a2 + 8) * *a2 > *(a1 + 8) * *a1)
        {
          sub_240BBE340(a1, a2);
          v19 = *(a1 + 160);
          *(a1 + 160) = *(a2 + 160);
          *(a2 + 160) = v19;
          v20 = *(a1 + 168);
          *(a1 + 168) = *(a2 + 168);
          *(a2 + 168) = v20;
          v21 = *(a1 + 176);
          *(a1 + 176) = *(a2 + 176);
          *(a2 + 176) = v21;
        }
      }
    }
  }
}

__n128 sub_240BBE9F0(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  *a1 = *a2;
  do
  {
    v3 = (a1 + v2);
    v4 = (a2 + v2);
    v3[2] = 0;
    v3[3] = 0;
    v3[4] = 0;
    *(v3 + 1) = *(a2 + v2 + 16);
    v3[4] = *(a2 + v2 + 32);
    v4[2] = 0;
    v4[3] = 0;
    v4[4] = 0;
    v2 += 24;
  }

  while (v2 != 72);
  for (i = 0; i != 72; i += 24)
  {
    v6 = (a1 + i);
    v7 = (a2 + i);
    v6[11] = 0;
    v6[12] = 0;
    v6[13] = 0;
    *(v6 + 11) = *(a2 + i + 88);
    v6[13] = *(a2 + i + 104);
    v7[11] = 0;
    v7[12] = 0;
    v7[13] = 0;
  }

  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  result = *(a2 + 160);
  *(a1 + 160) = result;
  *(a1 + 176) = *(a2 + 176);
  *(a2 + 160) = 0;
  *(a2 + 168) = 0;
  *(a2 + 176) = 0;
  return result;
}

uint64_t sub_240BBEA8C(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  *a1 = *a2;
  do
  {
    v5 = a1 + v4;
    v7 = (a1 + v4 + 16);
    v6 = *v7;
    if (*v7)
    {
      *(v5 + 24) = v6;
      operator delete(v6);
      *v7 = 0;
      *(a1 + v4 + 24) = 0;
      *(a1 + v4 + 32) = 0;
    }

    v8 = (a2 + v4);
    *v7 = *(a2 + v4 + 16);
    *(v5 + 32) = *(a2 + v4 + 32);
    v8[2] = 0;
    v8[3] = 0;
    v8[4] = 0;
    v4 += 24;
  }

  while (v4 != 72);
  for (i = 0; i != 72; i += 24)
  {
    v10 = a1 + i;
    v12 = (a1 + i + 88);
    v11 = *v12;
    if (*v12)
    {
      *(v10 + 96) = v11;
      operator delete(v11);
      *v12 = 0;
      *(a1 + i + 96) = 0;
      *(a1 + i + 104) = 0;
    }

    v13 = (a2 + i);
    *v12 = *(a2 + i + 88);
    *(v10 + 104) = *(a2 + i + 104);
    v13[11] = 0;
    v13[12] = 0;
    v13[13] = 0;
  }

  v14 = *(a1 + 160);
  if (v14)
  {
    *(a1 + 168) = v14;
    operator delete(v14);
    *(a1 + 160) = 0;
    *(a1 + 168) = 0;
    *(a1 + 176) = 0;
  }

  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = *(a2 + 176);
  *(a2 + 160) = 0;
  *(a2 + 168) = 0;
  *(a2 + 176) = 0;
  return a1;
}

BOOL sub_240BBEB98(uint64_t a1, void *a2)
{
  v4 = 0xD37A6F4DE9BD37A7 * ((a2 - a1) >> 3);
  if (v4 <= 2)
  {
    if (v4 >= 2)
    {
      if (v4 == 2)
      {
        v5 = a2 - 23;
        if (*(a2 - 22) * *(a2 - 23) > *(a1 + 8) * *a1)
        {
          sub_240BBE340(a1, v5);
          v6 = *(a1 + 160);
          *(a1 + 160) = *(a2 - 3);
          *(a2 - 3) = v6;
          v7 = *(a1 + 168);
          *(a1 + 168) = *(a2 - 2);
          *(a2 - 2) = v7;
          v8 = *(a1 + 176);
          *(a1 + 176) = *(a2 - 1);
          *(a2 - 1) = v8;
        }

        return 1;
      }

      goto LABEL_11;
    }

    return 1;
  }

  switch(v4)
  {
    case 3:
      sub_240BBE56C(a1, a1 + 184, (a2 - 23));
      return 1;
    case 4:
      sub_240BBE728(a1, a1 + 184, a1 + 368, (a2 - 23));
      return 1;
    case 5:
      sub_240BBE85C(a1, a1 + 184, a1 + 368, a1 + 552, (a2 - 23));
      return 1;
  }

LABEL_11:
  v9 = (a1 + 368);
  sub_240BBE56C(a1, a1 + 184, a1 + 368);
  v10 = (a1 + 552);
  if ((a1 + 552) == a2)
  {
    return 1;
  }

  v11 = 0;
  v12 = 0;
  while (1)
  {
    if (v10[1] * *v10 > v9[1] * *v9)
    {
      sub_240BBE9F0(v21, v10);
      v13 = v11;
      while (1)
      {
        sub_240BBEA8C(a1 + v13 + 552, a1 + v13 + 368);
        if (v13 == -368)
        {
          break;
        }

        v14 = *(a1 + v13 + 192) * *(a1 + v13 + 184);
        v13 -= 184;
        if (v21[1] * v21[0] <= v14)
        {
          v15 = a1 + v13 + 552;
          goto LABEL_19;
        }
      }

      v15 = a1;
LABEL_19:
      sub_240BBEA8C(v15, v21);
      if (__p)
      {
        v23 = __p;
        operator delete(__p);
      }

      v16 = 0;
      ++v12;
      do
      {
        v17 = v21[v16 + 17];
        if (v17)
        {
          v21[v16 + 18] = v17;
          operator delete(v17);
        }

        v16 -= 3;
      }

      while (v16 != -9);
      for (i = 0; i != -9; i -= 3)
      {
        v19 = v21[i + 8];
        if (v19)
        {
          v21[i + 9] = v19;
          operator delete(v19);
        }
      }

      if (v12 == 8)
      {
        return v10 + 23 == a2;
      }
    }

    v9 = v10;
    v11 += 184;
    v10 += 23;
    if (v10 == a2)
    {
      return 1;
    }
  }
}

void sub_240BBEDFC(void *a1, void *a2, uint64_t a3, char a4)
{
  while (2)
  {
    v96 = a2;
    v98 = a2 - 23;
    v94 = a2 - 69;
    v95 = a2 - 46;
    v8 = a1;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          a1 = v8;
          v9 = a2 - v8;
          v10 = 0xD37A6F4DE9BD37A7 * (a2 - v8);
          if (v10 > 2)
          {
            switch(v10)
            {
              case 3:

                sub_240BBF9CC(v8, v8 + 23, v98);
                return;
              case 4:

                sub_240BBFB70(v8, v8 + 23, v8 + 46, v98);
                return;
              case 5:

                sub_240BBFC8C(v8, v8 + 23, v8 + 46, (v8 + 69), v98);
                return;
            }
          }

          else
          {
            if (v10 < 2)
            {
              return;
            }

            if (v10 == 2)
            {
              if (sub_240BBF924(v98, v8))
              {
                sub_240BBE340(v8, v98);
                v40 = v8[20];
                v8[20] = *(a2 - 3);
                *(a2 - 3) = v40;
                v41 = v8[21];
                v8[21] = *(a2 - 2);
                *(a2 - 2) = v41;
                v42 = v8[22];
                v8[22] = *(a2 - 1);
                *(a2 - 1) = v42;
              }

              return;
            }
          }

          if (v9 <= 4415)
          {
            if (a4)
            {
              if (v8 != a2)
              {
                v43 = v8 + 23;
                if (v8 + 23 != a2)
                {
                  v44 = 0;
                  v45 = v8;
                  do
                  {
                    v46 = v45;
                    v45 = v43;
                    if (sub_240BBF924(v43, v46))
                    {
                      sub_240BBE9F0(v103, v45);
                      v47 = v44;
                      while (1)
                      {
                        sub_240BBEA8C(v8 + v47 + 184, v8 + v47);
                        if (!v47)
                        {
                          break;
                        }

                        v47 -= 184;
                        if ((sub_240BBF924(v103, (v8 + v47)) & 1) == 0)
                        {
                          v48 = v8 + v47 + 184;
                          goto LABEL_96;
                        }
                      }

                      v48 = v8;
LABEL_96:
                      sub_240BBEA8C(v48, v103);
                      if (__p)
                      {
                        v105 = __p;
                        operator delete(__p);
                      }

                      for (i = 0; i != -9; i -= 3)
                      {
                        v50 = v103[i + 17];
                        if (v50)
                        {
                          v103[i + 18] = v50;
                          operator delete(v50);
                        }
                      }

                      for (j = 0; j != -9; j -= 3)
                      {
                        v52 = v103[j + 8];
                        if (v52)
                        {
                          v103[j + 9] = v52;
                          operator delete(v52);
                        }
                      }
                    }

                    v43 = (v45 + 184);
                    v44 += 184;
                  }

                  while ((v45 + 184) != a2);
                }
              }
            }

            else if (v8 != a2)
            {
              v87 = v8 + 23;
              if (v8 + 23 != a2)
              {
                do
                {
                  v88 = v87;
                  if (sub_240BBF924(v87, a1))
                  {
                    sub_240BBE9F0(v103, v88);
                    do
                    {
                      v89 = a1;
                      sub_240BBEA8C((a1 + 23), a1);
                      a1 -= 23;
                    }

                    while ((sub_240BBF924(v103, a1) & 1) != 0);
                    sub_240BBEA8C(v89, v103);
                    if (__p)
                    {
                      v105 = __p;
                      operator delete(__p);
                    }

                    for (k = 0; k != -9; k -= 3)
                    {
                      v91 = v103[k + 17];
                      if (v91)
                      {
                        v103[k + 18] = v91;
                        operator delete(v91);
                      }
                    }

                    for (m = 0; m != -9; m -= 3)
                    {
                      v93 = v103[m + 8];
                      if (v93)
                      {
                        v103[m + 9] = v93;
                        operator delete(v93);
                      }
                    }
                  }

                  v87 = v88 + 23;
                  a1 = v88;
                }

                while (v88 + 23 != a2);
              }
            }

            return;
          }

          if (!a3)
          {
            if (v8 != a2)
            {
              v53 = (v10 - 2) >> 1;
              v99 = v53;
              do
              {
                v54 = v53;
                if (v99 >= v53)
                {
                  v55 = (2 * v53) | 1;
                  v56 = &a1[23 * v55];
                  if (2 * v53 + 2 < v10 && sub_240BBF924(&a1[23 * v55], v56 + 23))
                  {
                    v56 += 23;
                    v55 = 2 * v54 + 2;
                  }

                  v57 = &a1[23 * v54];
                  if ((sub_240BBF924(v56, v57) & 1) == 0)
                  {
                    sub_240BBE9F0(v103, &a1[23 * v54]);
                    do
                    {
                      v58 = v56;
                      sub_240BBEA8C(v57, v56);
                      if (v99 < v55)
                      {
                        break;
                      }

                      v59 = (2 * v55) | 1;
                      v56 = &a1[23 * v59];
                      v60 = 2 * v55 + 2;
                      if (v60 < v10 && sub_240BBF924(&a1[23 * v59], v56 + 23))
                      {
                        v56 += 23;
                        v59 = v60;
                      }

                      v57 = v58;
                      v55 = v59;
                    }

                    while (!sub_240BBF924(v56, v103));
                    sub_240BBEA8C(v58, v103);
                    if (__p)
                    {
                      v105 = __p;
                      operator delete(__p);
                    }

                    for (n = 0; n != -9; n -= 3)
                    {
                      v62 = v103[n + 17];
                      if (v62)
                      {
                        v103[n + 18] = v62;
                        operator delete(v62);
                      }
                    }

                    for (ii = 0; ii != -9; ii -= 3)
                    {
                      v64 = v103[ii + 8];
                      if (v64)
                      {
                        v103[ii + 9] = v64;
                        operator delete(v64);
                      }
                    }
                  }
                }

                v53 = v54 - 1;
              }

              while (v54);
              v65 = 0xD37A6F4DE9BD37A7 * (v9 >> 3);
              v66 = v96;
              do
              {
                if (v65 >= 2)
                {
                  v97 = v66;
                  sub_240BBE9F0(v100, a1);
                  v67 = 0;
                  v68 = a1;
                  do
                  {
                    v69 = &v68[23 * v67];
                    v70 = v69 + 23;
                    v71 = (2 * v67) | 1;
                    v72 = 2 * v67 + 2;
                    if (v72 < v65)
                    {
                      v73 = v69 + 46;
                      if (sub_240BBF924(v69 + 23, v69 + 46))
                      {
                        v70 = v73;
                        v71 = v72;
                      }
                    }

                    sub_240BBEA8C(v68, v70);
                    v68 = v70;
                    v67 = v71;
                  }

                  while (v71 <= ((v65 - 2) >> 1));
                  v66 = v97;
                  if (v70 == v97 - 23)
                  {
                    sub_240BBEA8C(v70, v100);
                  }

                  else
                  {
                    sub_240BBEA8C(v70, (v97 - 23));
                    sub_240BBEA8C((v97 - 23), v100);
                    v74 = v70 - a1 + 184;
                    if (v74 >= 185)
                    {
                      v75 = (-2 - 0x2C8590B21642C859 * (v74 >> 3)) >> 1;
                      v76 = &a1[23 * v75];
                      if (sub_240BBF924(v76, v70))
                      {
                        sub_240BBE9F0(v103, v70);
                        do
                        {
                          v77 = v76;
                          sub_240BBEA8C(v70, v76);
                          if (!v75)
                          {
                            break;
                          }

                          v75 = (v75 - 1) >> 1;
                          v76 = &a1[23 * v75];
                          v70 = v77;
                        }

                        while ((sub_240BBF924(v76, v103) & 1) != 0);
                        sub_240BBEA8C(v77, v103);
                        if (__p)
                        {
                          v105 = __p;
                          operator delete(__p);
                        }

                        for (jj = 0; jj != -9; jj -= 3)
                        {
                          v79 = v103[jj + 17];
                          if (v79)
                          {
                            v103[jj + 18] = v79;
                            operator delete(v79);
                          }
                        }

                        for (kk = 0; kk != -9; kk -= 3)
                        {
                          v81 = v103[kk + 8];
                          if (v81)
                          {
                            v103[kk + 9] = v81;
                            operator delete(v81);
                          }
                        }
                      }
                    }
                  }

                  if (v101)
                  {
                    v102 = v101;
                    operator delete(v101);
                  }

                  for (mm = 0; mm != -72; mm -= 24)
                  {
                    v83 = *&v100[mm + 136];
                    if (v83)
                    {
                      *&v100[mm + 144] = v83;
                      operator delete(v83);
                    }
                  }

                  for (nn = 0; nn != -72; nn -= 24)
                  {
                    v85 = *&v100[nn + 64];
                    if (v85)
                    {
                      *&v100[nn + 72] = v85;
                      operator delete(v85);
                    }
                  }
                }

                v66 -= 23;
              }

              while (v65-- > 2);
            }

            return;
          }

          v11 = v10 >> 1;
          v12 = &v8[23 * (v10 >> 1)];
          if (v9 < 0x5C01)
          {
            sub_240BBF9CC(&v8[23 * v11], v8, v98);
          }

          else
          {
            sub_240BBF9CC(v8, &v8[23 * v11], v98);
            v13 = 23 * v11;
            sub_240BBF9CC(v8 + 23, &v8[v13 - 23], v95);
            sub_240BBF9CC(v8 + 46, &v8[v13 + 23], v94);
            sub_240BBF9CC(&v8[v13 - 23], v12, &v8[v13 + 23]);
            sub_240BBE340(v8, v12);
            v14 = *(v8 + 10);
            *(v8 + 10) = *(v12 + 10);
            *(v12 + 10) = v14;
            v15 = v8[22];
            v8[22] = v12[22];
            v12[22] = v15;
          }

          --a3;
          if (a4 & 1) != 0 || (sub_240BBF924(v8 - 23, v8))
          {
            break;
          }

          sub_240BBE9F0(v103, v8);
          if (sub_240BBF924(v103, v98))
          {
            do
            {
              v8 += 23;
            }

            while ((sub_240BBF924(v103, v8) & 1) == 0);
          }

          else
          {
            v29 = v8 + 23;
            do
            {
              v8 = v29;
              if (v29 >= a2)
              {
                break;
              }

              v30 = sub_240BBF924(v103, v29);
              v29 = v8 + 23;
            }

            while (!v30);
          }

          v31 = a2;
          if (v8 < a2)
          {
            v31 = a2;
            do
            {
              v31 -= 23;
            }

            while ((sub_240BBF924(v103, v31) & 1) != 0);
          }

          while (v8 < v31)
          {
            sub_240BBE340(v8, v31);
            v32 = v8[20];
            v8[20] = v31[20];
            v31[20] = v32;
            v33 = v8[21];
            v8[21] = v31[21];
            v31[21] = v33;
            v34 = v8[22];
            v8[22] = v31[22];
            v31[22] = v34;
            do
            {
              v8 += 23;
            }

            while (!sub_240BBF924(v103, v8));
            do
            {
              v31 -= 23;
            }

            while ((sub_240BBF924(v103, v31) & 1) != 0);
          }

          if (v8 - 23 != a1)
          {
            sub_240BBEA8C(a1, (v8 - 23));
          }

          sub_240BBEA8C((v8 - 23), v103);
          if (__p)
          {
            v105 = __p;
            operator delete(__p);
          }

          for (i1 = 0; i1 != -9; i1 -= 3)
          {
            v36 = v103[i1 + 17];
            if (v36)
            {
              v103[i1 + 18] = v36;
              operator delete(v36);
            }
          }

          for (i2 = 0; i2 != -9; i2 -= 3)
          {
            v38 = v103[i2 + 8];
            if (v38)
            {
              v103[i2 + 9] = v38;
              operator delete(v38);
            }
          }

          a4 = 0;
        }

        sub_240BBE9F0(v103, v8);
        v16 = v8;
        do
        {
          v17 = v16;
          v16 += 23;
        }

        while ((sub_240BBF924(v16, v103) & 1) != 0);
        v18 = a2;
        if (v17 == v8)
        {
          v18 = a2;
          do
          {
            if (v16 >= v18)
            {
              break;
            }

            v18 -= 23;
          }

          while ((sub_240BBF924(v18, v103) & 1) == 0);
        }

        else
        {
          do
          {
            v18 -= 23;
          }

          while (!sub_240BBF924(v18, v103));
        }

        if (v16 < v18)
        {
          v19 = v16;
          v20 = v18;
          do
          {
            sub_240BBE340(v19, v20);
            v21 = v19[20];
            v19[20] = v20[20];
            v20[20] = v21;
            v22 = v19[21];
            v19[21] = v20[21];
            v20[21] = v22;
            v23 = v19[22];
            v19[22] = v20[22];
            v20[22] = v23;
            do
            {
              v17 = v19;
              v19 += 23;
            }

            while ((sub_240BBF924(v19, v103) & 1) != 0);
            do
            {
              v20 -= 23;
            }

            while (!sub_240BBF924(v20, v103));
          }

          while (v19 < v20);
        }

        if (v17 != a1)
        {
          sub_240BBEA8C(a1, v17);
        }

        sub_240BBEA8C(v17, v103);
        if (__p)
        {
          v105 = __p;
          operator delete(__p);
        }

        v24 = 0;
        a2 = v96;
        do
        {
          v25 = v103[v24 + 17];
          if (v25)
          {
            v103[v24 + 18] = v25;
            operator delete(v25);
          }

          v24 -= 3;
        }

        while (v24 != -9);
        for (i3 = 0; i3 != -9; i3 -= 3)
        {
          v27 = v103[i3 + 8];
          if (v27)
          {
            v103[i3 + 9] = v27;
            operator delete(v27);
          }
        }

        if (v16 >= v18)
        {
          break;
        }

LABEL_45:
        sub_240BBEDFC(a1, v17, a3, a4 & 1);
        a4 = 0;
        v8 = v17 + 23;
      }

      v28 = sub_240BBFE00(a1, v17);
      v8 = v17 + 23;
      if (sub_240BBFE00((v17 + 23), v96))
      {
        break;
      }

      if (!v28)
      {
        goto LABEL_45;
      }
    }

    a2 = v17;
    if (!v28)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_240BBF924(void *a1, void *a2)
{
  if (sub_240BC0050(a1, a2))
  {
    return 1;
  }

  if (!sub_240BC0050(a2, a1))
  {
    v5 = a2[20];
    v6 = a2[21];
    if (v5 != v6)
    {
      v7 = a1[20];
      while (v7 != a1[21] && *v7 >= *v5)
      {
        if (*v5 < *v7)
        {
          return 0;
        }

        v8 = v7[1];
        v9 = v5[1];
        if (v8 < v9)
        {
          break;
        }

        result = 0;
        if (v9 >= v8)
        {
          v7 += 2;
          v5 += 2;
          if (v5 != v6)
          {
            continue;
          }
        }

        return result;
      }

      return 1;
    }
  }

  return 0;
}

void sub_240BBF9CC(void *a1, void *a2, void *a3)
{
  v6 = sub_240BBF924(a2, a1);
  v7 = sub_240BBF924(a3, a2);
  if (v6)
  {
    if (v7)
    {
      v8 = a1 + 22;
      sub_240BBE340(a1, a3);
      v9 = a1[20];
      a1[20] = a3[20];
      a3[20] = v9;
      v10 = a1[21];
      a1[21] = a3[21];
    }

    else
    {
      sub_240BBE340(a1, a2);
      v17 = a1[20];
      a1[20] = a2[20];
      a2[20] = v17;
      v18 = a1[21];
      a1[21] = a2[21];
      a2[21] = v18;
      v8 = a2 + 22;
      v19 = a1[22];
      a1[22] = a2[22];
      a2[22] = v19;
      if (!sub_240BBF924(a3, a2))
      {
        return;
      }

      sub_240BBE340(a2, a3);
      v20 = a2[20];
      a2[20] = a3[20];
      a3[20] = v20;
      v10 = a2[21];
      a2[21] = a3[21];
    }

    a3[21] = v10;
    v14 = a3 + 22;
    goto LABEL_10;
  }

  if (v7)
  {
    sub_240BBE340(a2, a3);
    v11 = a2[20];
    a2[20] = a3[20];
    a3[20] = v11;
    v12 = a2[21];
    a2[21] = a3[21];
    a3[21] = v12;
    v14 = a2 + 22;
    v13 = a2[22];
    a2[22] = a3[22];
    a3[22] = v13;
    if (sub_240BBF924(a2, a1))
    {
      sub_240BBE340(a1, a2);
      v15 = a1[20];
      a1[20] = a2[20];
      a2[20] = v15;
      v16 = a1[21];
      a1[21] = a2[21];
      a2[21] = v16;
      v8 = a1 + 22;
LABEL_10:
      v21 = *v8;
      *v8 = *v14;
      *v14 = v21;
    }
  }
}

void sub_240BBFB70(void *a1, void *a2, void *a3, uint64_t a4)
{
  sub_240BBF9CC(a1, a2, a3);
  if (sub_240BBF924(a4, a3))
  {
    sub_240BBE340(a3, a4);
    v8 = a3[20];
    a3[20] = *(a4 + 160);
    *(a4 + 160) = v8;
    v9 = a3[21];
    a3[21] = *(a4 + 168);
    *(a4 + 168) = v9;
    v10 = a3[22];
    a3[22] = *(a4 + 176);
    *(a4 + 176) = v10;
    if (sub_240BBF924(a3, a2))
    {
      sub_240BBE340(a2, a3);
      v11 = a2[20];
      a2[20] = a3[20];
      a3[20] = v11;
      v12 = a2[21];
      a2[21] = a3[21];
      a3[21] = v12;
      v13 = a2[22];
      a2[22] = a3[22];
      a3[22] = v13;
      if (sub_240BBF924(a2, a1))
      {
        sub_240BBE340(a1, a2);
        v14 = a1[20];
        a1[20] = a2[20];
        a2[20] = v14;
        v15 = a1[21];
        a1[21] = a2[21];
        a2[21] = v15;
        v16 = a1[22];
        a1[22] = a2[22];
        a2[22] = v16;
      }
    }
  }
}

void sub_240BBFC8C(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  sub_240BBFB70(a1, a2, a3, a4);
  if (sub_240BBF924(a5, a4))
  {
    sub_240BBE340(a4, a5);
    v10 = *(a4 + 160);
    *(a4 + 160) = *(a5 + 160);
    *(a5 + 160) = v10;
    v11 = *(a4 + 168);
    *(a4 + 168) = *(a5 + 168);
    *(a5 + 168) = v11;
    v12 = *(a4 + 176);
    *(a4 + 176) = *(a5 + 176);
    *(a5 + 176) = v12;
    if (sub_240BBF924(a4, a3))
    {
      sub_240BBE340(a3, a4);
      v13 = a3[20];
      a3[20] = *(a4 + 160);
      *(a4 + 160) = v13;
      v14 = a3[21];
      a3[21] = *(a4 + 168);
      *(a4 + 168) = v14;
      v15 = a3[22];
      a3[22] = *(a4 + 176);
      *(a4 + 176) = v15;
      if (sub_240BBF924(a3, a2))
      {
        sub_240BBE340(a2, a3);
        v16 = a2[20];
        a2[20] = a3[20];
        a3[20] = v16;
        v17 = a2[21];
        a2[21] = a3[21];
        a3[21] = v17;
        v18 = a2[22];
        a2[22] = a3[22];
        a3[22] = v18;
        if (sub_240BBF924(a2, a1))
        {
          sub_240BBE340(a1, a2);
          v19 = a1[20];
          a1[20] = a2[20];
          a2[20] = v19;
          v20 = a1[21];
          a1[21] = a2[21];
          a2[21] = v20;
          v21 = a1[22];
          a1[22] = a2[22];
          a2[22] = v21;
        }
      }
    }
  }
}

BOOL sub_240BBFE00(uint64_t a1, void *a2)
{
  v4 = 0xD37A6F4DE9BD37A7 * ((a2 - a1) >> 3);
  if (v4 <= 2)
  {
    if (v4 >= 2)
    {
      if (v4 == 2)
      {
        if (sub_240BBF924(a2 - 23, a1))
        {
          sub_240BBE340(a1, a2 - 23);
          v5 = *(a1 + 160);
          *(a1 + 160) = *(a2 - 3);
          *(a2 - 3) = v5;
          v6 = *(a1 + 168);
          *(a1 + 168) = *(a2 - 2);
          *(a2 - 2) = v6;
          v7 = *(a1 + 176);
          *(a1 + 176) = *(a2 - 1);
          *(a2 - 1) = v7;
        }

        return 1;
      }

      goto LABEL_11;
    }

    return 1;
  }

  switch(v4)
  {
    case 3:
      sub_240BBF9CC(a1, (a1 + 184), a2 - 23);
      return 1;
    case 4:
      sub_240BBFB70(a1, (a1 + 184), (a1 + 368), (a2 - 23));
      return 1;
    case 5:
      sub_240BBFC8C(a1, (a1 + 184), (a1 + 368), a1 + 552, (a2 - 23));
      return 1;
  }

LABEL_11:
  v8 = (a1 + 368);
  sub_240BBF9CC(a1, (a1 + 184), (a1 + 368));
  v9 = (a1 + 552);
  if ((a1 + 552) == a2)
  {
    return 1;
  }

  v10 = 0;
  v11 = 0;
  while (1)
  {
    if (sub_240BBF924(v9, v8))
    {
      sub_240BBE9F0(v20, v9);
      v12 = v10;
      while (1)
      {
        sub_240BBEA8C(a1 + v12 + 552, a1 + v12 + 368);
        if (v12 == -368)
        {
          break;
        }

        v13 = sub_240BBF924(v20, (a1 + v12 + 184));
        v12 -= 184;
        if ((v13 & 1) == 0)
        {
          v14 = a1 + v12 + 552;
          goto LABEL_19;
        }
      }

      v14 = a1;
LABEL_19:
      sub_240BBEA8C(v14, v20);
      if (__p)
      {
        v22 = __p;
        operator delete(__p);
      }

      v15 = 0;
      ++v11;
      do
      {
        v16 = v20[v15 + 17];
        if (v16)
        {
          v20[v15 + 18] = v16;
          operator delete(v16);
        }

        v15 -= 3;
      }

      while (v15 != -9);
      for (i = 0; i != -9; i -= 3)
      {
        v18 = v20[i + 8];
        if (v18)
        {
          v20[i + 9] = v18;
          operator delete(v18);
        }
      }

      if (v11 == 8)
      {
        return v9 + 23 == a2;
      }
    }

    v8 = v9;
    v10 += 184;
    v9 += 23;
    if (v9 == a2)
    {
      return 1;
    }
  }
}

BOOL sub_240BC0050(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return *a1 < *a2;
  }

  v4 = a1[1];
  v5 = a2[1];
  if (v4 != v5)
  {
    return v4 < v5;
  }

  v6 = v4 * *a1;
  v7 = 2;
  while (1)
  {
    v8 = memcmp(a1[v7], a2[v7], v6);
    if (v8 > 0)
    {
      return 0;
    }

    if (v8)
    {
      break;
    }

    v7 += 3;
    if (v7 == 11)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_240BC00EC(uint64_t result, unsigned int a2)
{
  v2 = *(result + 8);
  v3 = *v2;
  v4 = **v2;
  if (v4 >= 4)
  {
    v5 = 0;
    v6 = a2;
    v7 = 4 * a2;
    v8 = 4 * a2;
    do
    {
      v9 = 0;
      v10 = 4 * v5;
      v11 = *(v2 + 8);
      v12 = *v11;
      v13 = *(v11 + 8);
      result = (4 * v5);
      v14 = v13 * v8;
      v15 = *v12;
      v16 = *(*v12 + 4 * v13 * v8 + 4 * result);
      v17 = 1;
LABEL_4:
      while (2)
      {
        v18 = 0;
        v19 = (v9 + v8) * v13;
        while (vabds_f32(*(v15 + 4 * v19 + 4 * (v18 | result)), v16) <= 0.0001)
        {
          v20 = 0;
          while (v20 != 2)
          {
            v21 = v20 + 1;
            v22 = vabds_f32(*(v12[v20 + 1] + 4 * v19 + 4 * (v18 | result)), *(v12[v20 + 1] + 4 * v14 + 4 * result));
            ++v20;
            if (v22 > 0.0001)
            {
              if ((v21 - 1) <= 1)
              {
                goto LABEL_13;
              }

              break;
            }
          }

          if (++v18 == 4)
          {
            if (++v9 != 4)
            {
              goto LABEL_4;
            }

            if (v17)
            {
              v23 = 0;
              v24 = 0;
              v25 = v12 + 1;
              for (i = -4; i != 8; ++i)
              {
                v27 = i + v7;
                v28 = (i + v7) * v13;
                for (j = -4; j != 8; ++j)
                {
                  v30 = j + v10;
                  if (j + v10 >= 0 && v30 < v4 && (v27 & 0x8000000000000000) == 0 && v27 < v3[1])
                  {
                    v31 = 0;
                    if (vabds_f32(*(v15 + 4 * v28 + 4 * v30), v16) <= 0.0001)
                    {
                      while (v31 != 2)
                      {
                        v32 = vabds_f32(*(v25[v31] + 4 * v28 + 4 * v30), *(v25[v31] + 4 * v14 + 4 * result));
                        ++v31;
                        if (v32 > 0.0001)
                        {
                          --v31;
                          break;
                        }
                      }

                      v31 = v31 > 1;
                    }

                    ++v24;
                    v23 += v31;
                  }
                }
              }

              if (7 * v24 <= (8 * v23))
              {
                *(**(v2 + 16) + **(v2 + 24) * v6 + v5) = 1;
                atomic_store(1u, *(v2 + 32));
                v3 = *v2;
                v4 = **v2;
              }
            }

            goto LABEL_32;
          }
        }

LABEL_13:
        v17 = 0;
        if (++v9 != 4)
        {
          continue;
        }

        break;
      }

LABEL_32:
      ++v5;
    }

    while (v5 < v4 >> 2);
  }

  return result;
}

uint64_t sub_240BC0308(unsigned int (**a1)(uint64_t), uint64_t a2)
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

uint64_t sub_240BC0330(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v77 = *MEMORY[0x277D85DE8];
  v9 = *(a1 + 720);
  v10 = *(a1 + 728) - v9;
  if (v10)
  {
    v11 = 0xAF8AF8AF8AF8AF8BLL * (v10 >> 4);
    if (v11 <= 1)
    {
      v11 = 1;
    }

    v12 = 1;
    do
    {
      if (*v9 || *(v9 + 552))
      {
        v12 = 0;
      }

      v9 += 560;
      --v11;
    }

    while (v11);
  }

  else
  {
    v12 = 1;
  }

  sub_240B53650(v56, a2, 0x80000);
  *(a2[3] + (*a2 >> 3)) = ((v12 & 1) << (*a2 & 7)) | *(a2[3] + (*a2 >> 3));
  ++*a2;
  if ((v12 & 1) != 0 || (v13 = *(a1 + 720), *(a1 + 728) == v13))
  {
LABEL_73:
    sub_240B536C8(v56, a2, a3, a4);
    return 0;
  }

  v14 = 0;
  v15 = 224;
  v52 = a3;
  v53 = a4;
  while (1)
  {
    v16 = dword_240C85038[v14];
    v17 = dword_240C8507C[v14];
    v18 = (v13 + 560 * v14);
    *(a2[3] + (*a2 >> 3)) = (*v18 << (*a2 & 7)) | *(a2[3] + (*a2 >> 3));
    v19 = *a2 + 3;
    *a2 = v19;
    v20 = *v18;
    v54 = v15;
    if (*v18 > 3)
    {
      break;
    }

    if (v20 > 1)
    {
      if (v20 == 2)
      {
        v35 = 0;
        v36 = v13 + v15;
LABEL_56:
        v37 = 0;
        while (!sub_240C0EF60(a2, *(v36 + v37) * 0.015625))
        {
          v37 += 4;
          if (v37 == 24)
          {
            ++v35;
            v36 += 24;
            if (v35 != 3)
            {
              goto LABEL_56;
            }

            goto LABEL_72;
          }
        }

        return 1;
      }

      if (v20 == 3)
      {
        v29 = 0;
LABEL_39:
        v30 = 0;
        v31 = 1;
        while (1)
        {
          v32 = v31;
          if (sub_240C0EF60(a2, *&v18[2 * v29 + 56 + v30]))
          {
            return 1;
          }

          v31 = 0;
          v30 = 1;
          if ((v32 & 1) == 0)
          {
            if (++v29 != 3)
            {
              goto LABEL_39;
            }

            goto LABEL_52;
          }
        }
      }
    }

    else if (v20)
    {
      if (v20 == 1)
      {
        v21 = 0;
        v22 = v13 + v15;
LABEL_19:
        v23 = 0;
        while (!sub_240C0EF60(a2, *(v22 + v23) * 0.015625))
        {
          v23 += 4;
          if (v23 == 12)
          {
            ++v21;
            v22 += 12;
            if (v21 != 3)
            {
              goto LABEL_19;
            }

            goto LABEL_72;
          }
        }

        return 1;
      }
    }

    else
    {
      *(a2[3] + (v19 >> 3)) = (*(v18 + 552) << (v19 & 7)) | *(a2[3] + (v19 >> 3));
    }

LABEL_72:
    ++v14;
    v13 = *(a1 + 720);
    a4 = v53;
    v15 = v54 + 560;
    a3 = v52;
    if (v14 >= 0xAF8AF8AF8AF8AF8BLL * ((*(a1 + 728) - v13) >> 4))
    {
      goto LABEL_73;
    }
  }

  if (v20 <= 5)
  {
    if (v20 == 4)
    {
      v33 = 0;
      v34 = v13 + v15;
      while (!sub_240C0EF60(a2, *(v34 + v33)))
      {
        v33 += 4;
        if (v33 == 12)
        {
LABEL_52:
          v28 = (v18 + 2);
LABEL_53:
          if (!sub_240BC09E8(v28, a2))
          {
            goto LABEL_72;
          }

          return 1;
        }
      }

      return 1;
    }

    if (v20 == 5)
    {
      v24 = 0;
      v25 = v13 + v15;
LABEL_28:
      v26 = 0;
      while (1)
      {
        v27 = 0.015625;
        if (v26 >= 6)
        {
          v27 = 1.0;
        }

        if (sub_240C0EF60(a2, *(v25 + 4 * v26) * v27))
        {
          return 1;
        }

        if (++v26 == 9)
        {
          ++v24;
          v25 += 36;
          if (v24 != 3)
          {
            goto LABEL_28;
          }

          if (!sub_240BC09E8(v18 + 1, a2))
          {
            v28 = (v18 + 84);
            goto LABEL_53;
          }

          return 1;
        }
      }
    }

    goto LABEL_72;
  }

  if (v20 == 6)
  {
    v38 = sub_240BC09E8(v18 + 1, a2);
    if (v38)
    {
      return v38;
    }

    goto LABEL_72;
  }

  if (v20 != 7)
  {
    goto LABEL_72;
  }

  sub_240C0EF60(a2, *(v18 + 58));
  if (a5)
  {
    LODWORD(v57) = 4;
    *(&v57 + 1) = v14;
    v58 = 0;
    __p[0] = 0;
    sub_240BB6D54(a5, a2, 0, 0, &v57);
    goto LABEL_72;
  }

  sub_240B64760(&v67, 8 * v16, 8 * v17, 8, 3);
  v51 = v74;
  if (!v74)
  {
    v39 = 0;
    v40 = 0;
    v60 = v67;
    v41 = v67;
    v67 = 0uLL;
    v42 = v68;
    v68 = 0;
    v62 = v69;
    v61 = v42;
    v63 = v70;
    v70 = 0;
    v69 = 0uLL;
    v66 = v73;
    v64 = v71;
    v65 = v72;
    while (1)
    {
      if (v17)
      {
        v43 = 0;
        v45 = *(v41 + (v40 << 6) + 16);
        v44 = *(v41 + (v40 << 6) + 24);
        v46 = v39;
        do
        {
          v47 = v46;
          v48 = v44;
          v49 = 8 * v16;
          if (v16)
          {
            do
            {
              *v48++ = *(**(v18 + 28) + v47);
              v47 += 4;
              --v49;
            }

            while (v49);
          }

          ++v43;
          v44 = (v44 + v45);
          v46 += 32 * v16;
        }

        while (v43 != 8 * v17);
      }

      ++v40;
      v39 += (v17 * v16) << 8;
      if (v40 == 3)
      {
        v57 = xmmword_240C11540;
        v58 = 1056964608;
        v75[0] = xmmword_240C84F6C;
        v75[1] = unk_240C84F7C;
        memset(__p, 0, sizeof(__p));
        sub_240B43818(__p, v75, &v76);
      }
    }
  }

  sub_240B43B14(&v67);
  return v51;
}

void sub_240BC09AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49)
{
  sub_240B43AD0(&a29);
  sub_240B3CF1C(&a49);
  sub_240B43B14(v49 - 256);
  _Unwind_Resume(a1);
}

uint64_t sub_240BC09E8(unint64_t *a1, unint64_t *a2)
{
  v4 = 0;
  *(a2[3] + (*a2 >> 3)) = ((*a1 - 1) << (*a2 & 7)) | *(a2[3] + (*a2 >> 3));
  *a2 += 4;
  v6 = (a1 + 1);
  v5 = *a1;
  while (!v5)
  {
LABEL_8:
    ++v4;
    v6 = (v6 + 68);
    if (v4 == 3)
    {
      return 0;
    }
  }

  v7 = 0;
  while (1)
  {
    v8 = 0.015625;
    if (v7)
    {
      v8 = 1.0;
    }

    if (sub_240C0EF60(a2, v8 * *(v6 + v7)))
    {
      return 1;
    }

    ++v7;
    v5 = *a1;
    if (v7 >= *a1)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_240BC0AC0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = 0;
  v8 = a1 + 48;
  LOBYTE(v9) = 1;
  do
  {
    v9 = (*(v8 + v7 * 4) == *&dword_240C850C0[v7]) & v9;
    ++v7;
  }

  while (v7 != 3);
  sub_240B53650(v12, a2, 97);
  *(a2[3] + (*a2 >> 3)) = (v9 << (*a2 & 7)) | *(a2[3] + (*a2 >> 3));
  ++*a2;
  if (v9)
  {
LABEL_7:
    sub_240B536C8(v12, a2, a3, a4);
    return 0;
  }

  else
  {
    v10 = 0;
    while (!sub_240C0EF60(a2, *(v8 + v10) * 128.0))
    {
      v10 += 4;
      if (v10 == 12)
      {
        goto LABEL_7;
      }
    }

    return 1;
  }
}

void sub_240BC0BC8(uint64_t a1, uint64_t a2)
{
  for (i = 0; i != 12; i += 4)
  {
    v4 = a1 + i;
    *(v4 + 48) = 1.0 / *(a2 + i);
    *(v4 + 60) = *(a2 + i);
  }

  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  sub_240BC0AC0(a1, &v10, 0, 0);
  v5 = v10;
  v6 = ((v10 + 7) & 0xFFFFFFFFFFFFFFF8) - v10;
  if (v6)
  {
    *(*(&v11 + 1) + (v10 >> 3)) = *(*(&v11 + 1) + (v10 >> 3));
    v5 = v10 + v6;
    *&v10 = v10 + v6;
  }

  v7 = *(&v11 + 1);
  v8[0] = *(&v11 + 1);
  v8[1] = v5 >> 3;
  sub_240B335C4(v9, v8);
  sub_240B68C38(a1, v9);
  *(&v11 + 1) = 0;
  if (v7)
  {
    atomic_fetch_add(&qword_27E519020, -*(v7 - 24));
    free(*(v7 - 32));
  }
}

void sub_240BC0CB4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  *(v1 - 40) = 0;
  if (v3)
  {
    atomic_fetch_add(&qword_27E519020, -*(v3 - 24));
    free(*(v3 - 32));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_240BC0CE8(uint64_t a1, void **a2, void *a3)
{
  v5 = (a1 + 720);
  if (v5 != a2)
  {
    v6 = *a2;
    v7 = a2[1];
    v8 = v7 - *a2;
    v9 = *(a1 + 720);
    if (*(a1 + 736) - v9 < v8)
    {
      v10 = 0xAF8AF8AF8AF8AF8BLL * (v8 >> 4);
      sub_240B3CB68(v5);
      if (v10 <= 0x75075075075075)
      {
        v11 = 0x5F15F15F15F15F16 * ((*(a1 + 736) - *(a1 + 720)) >> 4);
        if (v11 <= v10)
        {
          v11 = v10;
        }

        if (0xAF8AF8AF8AF8AF8BLL * ((*(a1 + 736) - *(a1 + 720)) >> 4) >= 0x3A83A83A83A83ALL)
        {
          v12 = 0x75075075075075;
        }

        else
        {
          v12 = v11;
        }

        if (v12 <= 0x75075075075075)
        {
          sub_240B68B8C(v12);
        }
      }

      sub_240B228BC();
    }

    v13 = *(a1 + 728);
    v14 = v13 - v9;
    if (v13 - v9 >= v8)
    {
      if (v6 != v7)
      {
        do
        {
          sub_240BA1FAC(v9, v6);
          v6 += 560;
          v9 += 560;
        }

        while (v6 != v7);
        v13 = *(a1 + 728);
      }

      while (v13 != v9)
      {
        v13 -= 560;
        sub_240B3CE44(v13);
      }

      *(a1 + 728) = v9;
    }

    else
    {
      if (v13 != v9)
      {
        v15 = v13 - v9;
        v16 = *a2;
        do
        {
          sub_240BA1FAC(v9, v16);
          v16 += 560;
          v9 += 560;
          v15 -= 560;
        }

        while (v15);
        v13 = *(a1 + 728);
      }

      *(a1 + 728) = sub_240BC11AC(&v6[v14], v7, v13);
    }
  }

  v40 = a1;
  *a1 = 0;
  v18 = *a2;
  v17 = a2[1];
  v41 = a2;
  if (v17 != *a2)
  {
    for (i = 0; i < 0xAF8AF8AF8AF8AF8BLL * ((v17 - v18) >> 4); ++i)
    {
      v20 = &v18[560 * i];
      if (*v20 == 7)
      {
        v21 = dword_240C85038[i];
        v22 = dword_240C8507C[i];
        LODWORD(v48) = 4;
        *(&v48 + 1) = i;
        v49 = 0;
        *&v50 = 0;
        v23 = sub_240B438A0(&v48, a3[60], a3[61]);
        v24 = a3[6];
        sub_240B64760(&v48, 8 * v21, 8 * v22, 8, 3);
        v25 = v55;
        if (v55)
        {
          sub_240B43B14(&v48);
          return v25;
        }

        *v43 = v48;
        v26 = (v24 + 88 * v23);
        *&v43[16] = v49;
        v48 = 0uLL;
        v49 = 0;
        *&v43[24] = v50;
        v44 = v51;
        v51 = 0;
        v50 = 0uLL;
        v45 = v52;
        v46 = v53;
        v47 = v54;
        sub_240B649A8(v26, v43);
        v56[0] = &v43[24];
        sub_240B37900(v56);
        v56[0] = v43;
        sub_240B379C0(v56);
        v27 = 0;
        for (j = 0; j != 3; ++j)
        {
          if (v22)
          {
            v29 = 0;
            v31 = *(*v26 + (j << 6) + 16);
            v30 = *(*v26 + (j << 6) + 24);
            v32 = v27;
            do
            {
              v33 = v32;
              v34 = v30;
              v35 = 8 * v21;
              if (v21)
              {
                do
                {
                  *v34++ = *(**(v20 + 28) + v33);
                  v33 += 4;
                  --v35;
                }

                while (v35);
              }

              ++v29;
              v30 = (v30 + v31);
              v32 += 32 * v21;
            }

            while (v29 != 8 * v22);
          }

          v27 += (v22 * v21) << 8;
        }

        sub_240B43B14(&v48);
        v18 = *v41;
        v17 = v41[1];
      }
    }
  }

  memset(v43, 0, sizeof(v43));
  sub_240BC0330(v40, v43, 0, 0, 0);
  v36 = *v43;
  v37 = ((*v43 + 7) & 0xFFFFFFFFFFFFFFF8) - *v43;
  if (v37)
  {
    *(*&v43[24] + (*v43 >> 3)) = *(*&v43[24] + (*v43 >> 3));
    v36 = *v43 + v37;
    *v43 += v37;
  }

  v56[0] = *&v43[24];
  v56[1] = (v36 >> 3);
  sub_240B335C4(&v48, v56);
  sub_240B67D50(v40, &v48, 0);
  v38 = *&v43[24];
  *&v43[24] = 0;
  if (v38)
  {
    atomic_fetch_add(&qword_27E519020, -*(v38 - 24));
    free(*(v38 - 32));
  }

  return 0;
}

void *sub_240BC11AC(void *a1, void *a2, void *a3)
{
  if (a1 == a2)
  {
    return a3;
  }

  v4 = a1;
  v5 = 0;
  v6 = a3;
  do
  {
    sub_240B68AE8(v6, v4);
    v4 += 70;
    v6 += 70;
    v5 -= 560;
  }

  while (v4 != a2);
  return v6;
}

float32x4_t sub_240BC1248(float32x4_t *a1, float32x4_t *a2, float32x4_t *a3, float32x4_t *a4, float32x4_t a5, float32x4_t a6, float32x4_t a7)
{
  v7 = vdupq_n_s32(0x3B789536u);
  v8 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v7, a7, a1[2]), a6, a1[1]), a5, *a1);
  v9 = vmlaq_f32(vmlaq_f32(v7, a7, a1[5]), a6, a1[4]);
  v10 = vmlaq_f32(v7, a7, a1[8]);
  v11 = vmaxnmq_f32(v8, 0);
  v12 = vbicq_s8(vmlaq_s32(vdupq_n_s32(0x54800000u), vshrq_n_s32(v11, 0x17uLL), vdupq_n_s32(0xFFD55556)), vceqzq_s32(v11));
  v13 = vmulq_f32(v11, vdupq_n_s32(0xBEAAAAAB));
  v14 = 3;
  v15 = vdupq_n_s32(0x3FAAAAABu);
  do
  {
    v16 = vmulq_f32(v12, v12);
    v12 = vmlaq_f32(vmulq_f32(v12, v15), vmulq_f32(v16, v16), v13);
    --v14;
  }

  while (v14);
  v17 = vmaxnmq_f32(vmlaq_f32(v9, a5, a1[3]), 0);
  v18 = vbicq_s8(vmlaq_s32(vdupq_n_s32(0x54800000u), vshrq_n_s32(v17, 0x17uLL), vdupq_n_s32(0xFFD55556)), vceqzq_s32(v17));
  v19 = vmulq_f32(v17, vdupq_n_s32(0xBEAAAAAB));
  v20 = 3;
  v21 = vdupq_n_s32(0x3FAAAAABu);
  do
  {
    v22 = vmulq_f32(v18, v18);
    v18 = vmlaq_f32(vmulq_f32(v18, v21), vmulq_f32(v22, v22), v19);
    --v20;
  }

  while (v20);
  v23 = vmaxnmq_f32(vmlaq_f32(vmlaq_f32(v10, a6, a1[7]), a5, a1[6]), 0);
  v24 = vbicq_s8(vmlaq_s32(vdupq_n_s32(0x54800000u), vshrq_n_s32(v23, 0x17uLL), vdupq_n_s32(0xFFD55556)), vceqzq_s32(v23));
  v25 = vmulq_f32(v23, vdupq_n_s32(0xBEAAAAAB));
  v26 = 3;
  v27 = vdupq_n_s32(0x3FAAAAABu);
  do
  {
    v28 = vmulq_f32(v24, v24);
    v24 = vmlaq_f32(vmulq_f32(v24, v27), vmulq_f32(v28, v28), v25);
    --v26;
  }

  while (v26);
  v29 = vmulq_f32(v18, v18);
  v30 = vmlsq_f32(v18, vmulq_f32(v29, v29), v17);
  v31 = vdupq_n_s32(0x3EAAAAABu);
  v32 = vmlaq_f32(v18, v31, v30);
  v33 = vmlaq_f32(a1[10], v17, vmulq_f32(v32, v32));
  v34 = vmulq_f32(v12, v12);
  v35 = vmlaq_f32(v12, v31, vmlsq_f32(v12, vmulq_f32(v34, v34), v11));
  v36 = vmlaq_f32(a1[9], v11, vmulq_f32(v35, v35));
  v37 = vmulq_f32(v24, v24);
  v38 = vmlaq_f32(v24, v31, vmlsq_f32(v24, vmulq_f32(v37, v37), v23));
  result = vmlaq_f32(a1[11], v23, vmulq_f32(v38, v38));
  v37.i64[0] = 0x3F0000003F000000;
  v37.i64[1] = 0x3F0000003F000000;
  *a2 = vmulq_f32(vsubq_f32(v36, v33), v37);
  *a3 = vmulq_f32(vaddq_f32(v36, v33), v37);
  *a4 = result;
  return result;
}

BOOL sub_240BC144C(uint64_t a1, void *a2, unsigned int *a3)
{
  v10 = a3;
  v11 = a1;
  v4 = a3[1];
  v9 = *a3;
  v7[0] = &v10;
  v7[1] = &v9;
  v7[2] = &v8;
  v7[3] = &v11;
  if (a2)
  {
    v5 = a2;
  }

  else
  {
    v12[0] = 0;
    v12[1] = v12;
    v5 = v12;
  }

  return sub_240BC14B4(v5, v4, v7);
}

BOOL sub_240BC14B4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    return (*a1)(*(a1 + 8), v6, sub_240BC1610, sub_240BC1564, 0, a2) != 0;
  }

  for (i = 0; i != v3; ++i)
  {
    sub_240BC1564(v6, i);
  }

  return 0;
}

void sub_240BC1564(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 8);
  if (**(v2 + 8))
  {
    v3 = 0;
    v4 = **v2;
    v5 = v4[2] * a2;
    v6 = (v4[3] + v5);
    v7 = (v4[8] + v5);
    v8 = (v4[13] + v5);
    v9 = v6;
    v10 = v7;
    v11 = v8;
    do
    {
      v12 = *v9++;
      v13 = v12;
      v14 = *v10++;
      v15 = v14;
      v16 = *v11++;
      sub_240BC1248(**(v2 + 24), v6, v7, v8, v13, v15, v16);
      v3 += 4;
      v6 = v9;
      v7 = v10;
      v8 = v11;
    }

    while (v3 < **(v2 + 8));
  }
}

uint64_t sub_240BC1610(unsigned int (**a1)(uint64_t), uint64_t a2)
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

BOOL sub_240BC1638(uint64_t a1, uint64_t a2, uint64_t a3)
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
    return (*a1)(*(a1 + 8), v6, sub_240BC1980, sub_240BC16E8, 0, a2) != 0;
  }

  for (i = 0; i != v3; ++i)
  {
    sub_240BC16E8(v6, i);
  }

  return 0;
}

void sub_240BC16E8(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 8);
  if (**(v2 + 8))
  {
    v3 = 0;
    v4 = **v2;
    v5 = v4[2] * a2;
    v6 = (v4[3] + v5);
    v7 = (v4[8] + v5);
    v8 = (v4[13] + v5);
    v31 = vdupq_n_s32(0x3F522E0Fu);
    v32 = vdupq_n_s32(0x3D9E8391u);
    v29 = vdupq_n_s32(0x3BD5AFDEu);
    v30 = vdupq_n_s32(0x3F4BD0EAu);
    v27 = vdupq_n_s32(0x3E2661B1u);
    v28 = vdupq_n_s32(0xBD61CABC);
    v25 = vdupq_n_s32(0x3C2AFD55u);
    v26 = vdupq_n_s32(0x3EFF5C88u);
    v23 = vdupq_n_s32(0x3966B677u);
    v24 = vdupq_n_s32(0x3F89DA5Eu);
    v21 = vdupq_n_s32(0x3D25AEE6u);
    v22 = vdupq_n_s32(0x3E86C025u);
    v9 = v6;
    v10 = v7;
    v11 = v8;
    do
    {
      v12 = *v9++;
      v13.i64[0] = 0x8000000080000000;
      v13.i64[1] = 0x8000000080000000;
      v14 = vandq_s8(v12, v13);
      v15 = vabsq_f32(v12);
      v16 = *v10++;
      v17 = vandq_s8(v16, v13);
      v18 = vabsq_f32(v16);
      v19 = *v11++;
      v20 = vabsq_f32(v19);
      sub_240BC1248(**(v2 + 24), v6, v7, v8, vorrq_s8(v14, vabsq_f32(vbslq_s8(vcgtq_f32(v15, v21), vdivq_f32(vmlaq_f32(v23, v15, vmlaq_f32(v25, v15, vmlaq_f32(v27, v15, vmlaq_f32(v30, v31, v15)))), vmlaq_f32(v22, v15, vmlaq_f32(v24, v15, vmlaq_f32(v26, v15, vmlaq_f32(v28, v29, v15))))), vmulq_f32(v15, v32)))), vorrq_s8(v17, vabsq_f32(vbslq_s8(vcgtq_f32(v18, v21), vdivq_f32(vmlaq_f32(v23, v18, vmlaq_f32(v25, v18, vmlaq_f32(v27, v18, vmlaq_f32(v30, v31, v18)))), vmlaq_f32(v22, v18, vmlaq_f32(v24, v18, vmlaq_f32(v26, v18, vmlaq_f32(v28, v29, v18))))), vmulq_f32(v18, v32)))), vorrq_s8(vandq_s8(v19, v13), vabsq_f32(vbslq_s8(vcgtq_f32(v20, v21), vdivq_f32(vmlaq_f32(v23, v20, vmlaq_f32(v25, v20, vmlaq_f32(v27, v20, vmlaq_f32(v30, v31, v20)))), vmlaq_f32(v22, v20, vmlaq_f32(v24, v20, vmlaq_f32(v26, v20, vmlaq_f32(v28, v29, v20))))), vmulq_f32(v20, v32)))));
      v3 += 4;
      v6 = v9;
      v7 = v10;
      v8 = v11;
    }

    while (v3 < **(v2 + 8));
  }
}

uint64_t sub_240BC1980(unsigned int (**a1)(uint64_t), uint64_t a2)
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

BOOL sub_240BC19A8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    return (*a1)(*(a1 + 8), v6, sub_240BC1D30, sub_240BC1A58, 0, a2) != 0;
  }

  for (i = 0; i != v3; ++i)
  {
    sub_240BC1A58(v6, i);
  }

  return 0;
}

void sub_240BC1A58(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 8);
  if (**(v2 + 16))
  {
    v3 = 0;
    v4 = 0;
    v5 = **v2;
    v6 = v5[2] * a2;
    v7 = v5[3] + v6;
    v8 = v5[8] + v6;
    v9 = v5[13] + v6;
    v10 = **(v2 + 8);
    v11 = v10[2] * a2;
    v12 = v10[3] + v11;
    v13 = v10[8] + v11;
    v14 = v10[13] + v11;
    v38 = vdupq_n_s32(0x3F522E0Fu);
    v39 = vdupq_n_s32(0x3D9E8391u);
    v37 = vdupq_n_s32(0x3F4BD0EAu);
    v35 = vdupq_n_s32(0xBD61CABC);
    v36 = vdupq_n_s32(0x3BD5AFDEu);
    v33 = vdupq_n_s32(0x3EFF5C88u);
    v34 = vdupq_n_s32(0x3E2661B1u);
    v31 = vdupq_n_s32(0x3F89DA5Eu);
    v32 = vdupq_n_s32(0x3C2AFD55u);
    v29 = vdupq_n_s32(0x3E86C025u);
    v30 = vdupq_n_s32(0x3966B677u);
    v28 = vdupq_n_s32(0x3D25AEE6u);
    do
    {
      v15 = *(v7 + v3);
      v16.i64[0] = 0x8000000080000000;
      v16.i64[1] = 0x8000000080000000;
      v17 = vandq_s8(v15, v16);
      v18 = vabsq_f32(v15);
      v19 = vorrq_s8(v17, vabsq_f32(vbslq_s8(vcgtq_f32(v18, v28), vdivq_f32(vmlaq_f32(v30, v18, vmlaq_f32(v32, v18, vmlaq_f32(v34, v18, vmlaq_f32(v37, v38, v18)))), vmlaq_f32(v29, v18, vmlaq_f32(v31, v18, vmlaq_f32(v33, v18, vmlaq_f32(v35, v36, v18))))), vmulq_f32(v18, v39))));
      v20 = *(v8 + v3);
      v21 = vandq_s8(v20, v16);
      v22 = vabsq_f32(v20);
      v23 = vorrq_s8(v21, vabsq_f32(vbslq_s8(vcgtq_f32(v22, v28), vdivq_f32(vmlaq_f32(v30, v22, vmlaq_f32(v32, v22, vmlaq_f32(v34, v22, vmlaq_f32(v37, v38, v22)))), vmlaq_f32(v29, v22, vmlaq_f32(v31, v22, vmlaq_f32(v33, v22, vmlaq_f32(v35, v36, v22))))), vmulq_f32(v22, v39))));
      v24 = *(v9 + v3);
      v25 = vandq_s8(v24, v16);
      v26 = vabsq_f32(v24);
      v27 = vorrq_s8(v25, vabsq_f32(vbslq_s8(vcgtq_f32(v26, v28), vdivq_f32(vmlaq_f32(v30, v26, vmlaq_f32(v32, v26, vmlaq_f32(v34, v26, vmlaq_f32(v37, v38, v26)))), vmlaq_f32(v29, v26, vmlaq_f32(v31, v26, vmlaq_f32(v33, v26, vmlaq_f32(v35, v36, v26))))), vmulq_f32(v26, v39))));
      *(v12 + v3) = v19;
      *(v13 + v3) = v23;
      *(v14 + v3) = v27;
      sub_240BC1248(**(v2 + 32), (v7 + v3), (v8 + v3), (v9 + v3), v19, v23, v27);
      v4 += 4;
      v3 += 16;
    }

    while (v4 < **(v2 + 16));
  }
}

uint64_t sub_240BC1D30(unsigned int (**a1)(uint64_t), uint64_t a2)
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

BOOL sub_240BC1D58(uint64_t a1, uint64_t a2, void *a3, unsigned int *a4, _OWORD *a5, unsigned int *a6, float a7)
{
  v52 = *MEMORY[0x277D85DE8];
  v14 = sub_240B29FC8(*(a1 + 56) == 1);
  if (sub_240B4A210((v14 + 16), a1 + 16))
  {
    for (i = 0; i != 9; ++i)
    {
      *v15.i32 = (a7 / 255.0) * flt_240C850F0[i];
      v15 = vdupq_lane_s32(*v15.i8, 0);
      *&v47[2 * i] = v15;
    }

    *v17.i32 = -cbrtf(0.0037931);
    v49 = vdupq_lane_s32(v17, 0);
    v50 = v49;
    v51 = v49;
    if (a6)
    {
      sub_240B32D14(a4, a6);
    }

    return sub_240BC144C(v47, a3, a4);
  }

  v19 = *(a1 + 56);
  v22 = *(a1 + 28) == 1 && v19 <= 1 && *(a1 + 16) == 1 && *(a1 + 20) == 1;
  if (v22 && (*(a1 + 64) & 1) == 0 && *(a1 + 72) == 13)
  {
    for (j = 0; j != 9; ++j)
    {
      *v15.i32 = (a7 / 255.0) * flt_240C850F0[j];
      v15 = vdupq_lane_s32(*v15.i8, 0);
      *&v47[2 * j] = v15;
    }

    *v27.i32 = -cbrtf(0.0037931);
    v49 = vdupq_lane_s32(v27, 0);
    v50 = v49;
    v51 = v49;
    if (a6)
    {
      v43 = a4;
      v44 = v47;
      v28 = a4[1];
      v41 = *a4;
      v42 = a6;
      v35 = &v43;
      v36 = &v42;
      v37 = &v41;
      v38 = &v40;
      v39 = &v44;
      if (a3)
      {
        return sub_240BC19A8(a3, v28, &v35);
      }

      else
      {
        v45 = 0;
        v46 = &v45;
        return sub_240BC19A8(&v45, v28, &v35);
      }
    }

    else
    {
      v43 = a4;
      v44 = v47;
      v34 = a4[1];
      v42 = *a4;
      v35 = &v43;
      v36 = &v42;
      v37 = &v41;
      v38 = &v44;
      if (a3)
      {
        return sub_240BC1638(a3, v34, &v35);
      }

      else
      {
        v45 = 0;
        v46 = &v45;
        return sub_240BC1638(&v45, v34, &v35);
      }
    }
  }

  else
  {
    if ((atomic_load_explicit(&qword_27E516AA8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E516AA8))
    {
      sub_240B29B14(&unk_27E516918, 9, 8);
      __cxa_atexit(sub_240B29EA4, &unk_27E516918, &dword_240ABC000);
      __cxa_guard_release(&qword_27E516AA8);
    }

    if (sub_240B4A210(&unk_27E516918 + 200 * (v19 == 1) + 16, a1 + 16))
    {
      for (k = 0; k != 9; ++k)
      {
        *v23.i32 = (a7 / 255.0) * flt_240C850CC[k];
        v23 = vdupq_lane_s32(*v23.i8, 0);
        *&v47[2 * k] = v23;
      }

      *v25.i32 = -cbrtf(0.0037931);
      v49 = vdupq_lane_s32(v25, 0);
      v50 = v49;
      v51 = v49;
      if (a6)
      {
        sub_240B32D14(a4, a6);
      }

      return sub_240BC144C(v47, a3, a4);
    }

    v47[0] = 0;
    v47[1] = 0;
    *&v29 = *a4;
    *(&v29 + 1) = HIDWORD(*a4);
    v48 = v29;
    if (a6)
    {
      v30 = a6;
    }

    else
    {
      v30 = a4;
    }

    sub_240BAD594(a1, a4, a2, v47, v14, a5, a3, v30, a7);
    if (a6)
    {
      sub_240B32D14(a6, a4);
    }

    for (m = 0; m != 9; ++m)
    {
      *v31.i32 = (a7 / 255.0) * flt_240C850F0[m];
      v31 = vdupq_lane_s32(*v31.i8, 0);
      *&v47[2 * m] = v31;
    }

    *v33.i32 = -cbrtf(0.0037931);
    v49 = vdupq_lane_s32(v33, 0);
    v50 = v49;
    v51 = v49;
    return sub_240BC144C(v47, a3, a4);
  }
}

uint64_t *sub_240BC219C(uint64_t *result, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = result;
  if (*(a2 + 64) == 1)
  {
    goto LABEL_2;
  }

  if (a3 <= a4)
  {
    v7 = a4;
  }

  else
  {
    v7 = a3;
  }

  v9 = (a2 + 40);
  v8 = *(a2 + 40);
  v10 = v9[4];
  v11 = v9[2];
  v12 = v8 - v11;
  if (v10)
  {
    if (v8 != v11)
    {
LABEL_16:
      v28 = 0u;
      v29 = 0u;
      v17 = sub_240BC245C(a2, v8, v9, &v28);
      v18 = *(&v29 + 1);
      *(&v29 + 1) = 0;
      if (v18)
      {
        atomic_fetch_add(&qword_27E519020, -*(v18 - 24));
        free(*(v18 - 32));
      }

      v19 = v17[1];
      if (v19)
      {
        do
        {
          v20 = v19;
          v19 = *v19;
        }

        while (v19);
      }

      else
      {
        v21 = v17;
        do
        {
          v20 = v21[2];
          v22 = *v20 == v21;
          v21 = v20;
        }

        while (!v22);
      }

      if (v20 != (a2 + 8))
      {
        v23 = v20[4] - *v9;
        if (v23 < v7)
        {
          v7 = v23;
        }
      }

      sub_240B4ADF0(v17 + 6, v7);
      v24 = v17[8];
      if (v24)
      {
        v25 = v7;
      }

      else
      {
        v25 = 0;
      }

      v17[6] = v25;
      *(a2 + 65) = 1;
      *(v4 + 8) = 0;
      *v4 = v24;
      v4[1] = v7;
      v4[2] = 0;
      v4[3] = a2;
      *&v29 = 0;
      *(&v29 + 1) = a2;
      goto LABEL_36;
    }

    v30 = v7;
    result = (*(v10 + 8))(*v10, &v30);
    if (!v30 || (v13 = result) == 0)
    {
      *(a2 + 64) = 1;
LABEL_2:
      *(v4 + 8) = -1;
      return result;
    }

    if (v30 < a3)
    {
      (*(*(a2 + 72) + 16))(**(a2 + 72), 0);
      v8 = *(a2 + 40);
      goto LABEL_16;
    }

    v28 = 0u;
    v29 = 0u;
    sub_240BC245C(a2, *(a2 + 40), v9, &v28);
    v26 = *(&v29 + 1);
    *(&v29 + 1) = 0;
    if (v26)
    {
      atomic_fetch_add(&qword_27E519020, -*(v26 - 24));
      free(*(v26 - 32));
    }

    *(a2 + 65) = 1;
    v27 = v30;
    *&v29 = 0;
    *(&v29 + 1) = a2;
    *(v4 + 8) = 0;
    *v4 = v13;
    v4[1] = v27;
  }

  else
  {
    if (v12 + a3 >= **(a2 + 32))
    {
      goto LABEL_16;
    }

    v28 = 0u;
    v29 = 0u;
    sub_240BC245C(a2, v8, v9, &v28);
    v14 = *(&v29 + 1);
    *(&v29 + 1) = 0;
    if (v14)
    {
      atomic_fetch_add(&qword_27E519020, -*(v14 - 24));
      free(*(v14 - 32));
    }

    *(a2 + 65) = 1;
    v15 = **(a2 + 24) + v12;
    v16 = **(a2 + 32) - v12;
    *&v29 = 0;
    *(&v29 + 1) = a2;
    *(v4 + 8) = 0;
    *v4 = v15;
    v4[1] = v16;
  }

  v4[2] = 0;
  v4[3] = a2;
LABEL_36:
  v28 = 0uLL;
  return sub_240B96F0C(&v28);
}

void sub_240BC2420(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    atomic_fetch_add(&qword_27E519020, -*(a12 - 24));
    free(*(a12 - 32));
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_240BC245C(uint64_t **a1, unint64_t a2, void *a3, uint64_t a4)
{
  v4 = a1[1];
  if (!v4)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v5 = v4;
      v6 = v4[4];
      if (v6 <= a2)
      {
        break;
      }

      v4 = *v5;
      if (!*v5)
      {
        goto LABEL_7;
      }
    }

    if (v6 >= a2)
    {
      return v5;
    }

    v4 = v5[1];
    if (!v4)
    {
      goto LABEL_7;
    }
  }
}

void sub_240BC2554(void *a1)
{
  v2 = a1[9];
  if (v2 && *(v2 + 24))
  {
    (*(v2 + 32))(*v2, a1[5]);
  }

  a1[6] = a1[5];

  sub_240BC25B0(a1);
}

void sub_240BC25B0(uint64_t result)
{
  v2 = *(result + 48);
  for (i = *(result + 56); i < v2; i = *(result + 56))
  {
    v4 = *(result + 32);
    if (v4 && !*v4)
    {
      break;
    }

    v5 = *result;
    v6 = *(*result + 32);
    v7 = *(*result + 40) + v6;
    if (*(*result + 48))
    {
      v8 = i - v6;
      if (v2 >= v7)
      {
        v2 = v7;
      }

      v9 = v2 - i;
      if (v4)
      {
        v10 = *v4 >= v9 ? v2 - i : *v4;
        memcpy(**(result + 24), (v5[8] + v8), v10);
        v11 = *(result + 24);
        **(result + 32) -= v10;
        *v11 += v10;
        *(result + 56) += v10;
      }

      else if ((sub_240BC2700(result, (v5[8] + v8), v9) & 1) == 0)
      {
        return;
      }
    }

    else
    {
      if (v2 >= v7)
      {
        v2 = *(*result + 40) + v6;
      }

      *(result + 56) = v2;
      if (v4)
      {
        v12 = v2 - i;
        **(result + 24) += v12;
        **(result + 32) -= v12;
      }
    }

    if (v7 == *(result + 56))
    {
      sub_240BC27A8(result, v5);
    }

    v13 = *(result + 72);
    if (v13)
    {
      if (!*(v13 + 24))
      {
        (*(v13 + 32))(*v13, *(result + 56));
      }
    }

    v2 = *(result + 48);
  }
}

uint64_t sub_240BC2700(uint64_t a1, const void *a2, size_t a3)
{
  v11 = a3;
  v6 = (*(*(a1 + 72) + 8))(**(a1 + 72), &v11);
  if (v6)
  {
    v7 = v11 == 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = !v7;
  if (v7)
  {
    *(a1 + 64) = 1;
  }

  else
  {
    if (v11 >= a3)
    {
      v9 = a3;
    }

    else
    {
      v9 = v11;
    }

    v11 = v9;
    memcpy(v6, a2, v9);
    (*(*(a1 + 72) + 16))(**(a1 + 72), v11);
    *(a1 + 56) += v11;
  }

  return v8;
}

void sub_240BC27A8(void **a1, void *a2)
{
  v3 = a2[1];
  if (v3)
  {
    do
    {
      v4 = v3;
      v3 = *v3;
    }

    while (v3);
  }

  else
  {
    v5 = a2;
    do
    {
      v4 = v5[2];
      v30 = *v4 == v5;
      v5 = v4;
    }

    while (!v30);
  }

  if (*a1 == a2)
  {
    *a1 = v4;
  }

  v6 = a1[1];
  a1[2] = a1[2] - 1;
  v7 = *a2;
  if (*a2)
  {
    v8 = a2[1];
    if (!v8)
    {
      v9 = a2;
      goto LABEL_17;
    }

    do
    {
      v9 = v8;
      v8 = *v8;
    }

    while (v8);
  }

  else
  {
    v9 = a2;
  }

  v7 = v9[1];
  if (v7)
  {
LABEL_17:
    v11 = 0;
    v10 = v9[2];
    *(v7 + 16) = v10;
    goto LABEL_18;
  }

  v10 = v9[2];
  v11 = 1;
LABEL_18:
  v12 = *v10;
  if (*v10 == v9)
  {
    *v10 = v7;
    if (v9 == v6)
    {
      v12 = 0;
      v6 = v7;
    }

    else
    {
      v12 = v10[1];
    }
  }

  else
  {
    v10[1] = v7;
  }

  v13 = *(v9 + 24);
  if (v9 != a2)
  {
    v14 = a2[2];
    v9[2] = v14;
    v14[*v14 != a2] = v9;
    v16 = *a2;
    v15 = a2[1];
    *(v16 + 16) = v9;
    *v9 = v16;
    v9[1] = v15;
    if (v15)
    {
      *(v15 + 16) = v9;
    }

    *(v9 + 24) = *(a2 + 24);
    if (v6 == a2)
    {
      v6 = v9;
    }
  }

  if (!v6 || !v13)
  {
    goto LABEL_81;
  }

  if (!v11)
  {
    *(v7 + 24) = 1;
    goto LABEL_81;
  }

  while (1)
  {
    v17 = v12[2];
    v18 = *v17;
    if (*v17 == v12)
    {
      break;
    }

    if ((v12[3] & 1) == 0)
    {
      *(v12 + 24) = 1;
      *(v17 + 24) = 0;
      v19 = *(v17 + 8);
      v20 = *v19;
      *(v17 + 8) = *v19;
      if (v20)
      {
        *(v20 + 16) = v17;
      }

      v21 = *(v17 + 16);
      v19[2] = v21;
      v21[*v21 != v17] = v19;
      *v19 = v17;
      *(v17 + 16) = v19;
      if (v6 == *v12)
      {
        v6 = v12;
      }

      v12 = *(*v12 + 8);
    }

    v22 = *v12;
    if (*v12 && *(v22 + 24) != 1)
    {
      v23 = v12[1];
      if (v23 && (v23[3] & 1) == 0)
      {
LABEL_67:
        v22 = v12;
      }

      else
      {
        *(v22 + 24) = 1;
        *(v12 + 24) = 0;
        v31 = v22[1];
        *v12 = v31;
        if (v31)
        {
          *(v31 + 16) = v12;
        }

        v32 = v12[2];
        v22[2] = v32;
        v32[*v32 != v12] = v22;
        v22[1] = v12;
        v12[2] = v22;
        v23 = v12;
      }

      v33 = v22[2];
      *(v22 + 24) = *(v33 + 24);
      *(v33 + 24) = 1;
      *(v23 + 24) = 1;
      v34 = *(v33 + 8);
      v35 = *v34;
      *(v33 + 8) = *v34;
      if (v35)
      {
        *(v35 + 16) = v33;
      }

      v36 = *(v33 + 16);
      v34[2] = v36;
      v36[*v36 != v33] = v34;
      *v34 = v33;
      goto LABEL_80;
    }

    v23 = v12[1];
    if (v23 && *(v23 + 24) != 1)
    {
      goto LABEL_67;
    }

    *(v12 + 24) = 0;
    v24 = v12[2];
    if (v24 == v6 || (v24[3] & 1) == 0)
    {
      goto LABEL_61;
    }

LABEL_59:
    v12 = *(v24[2] + 8 * (*v24[2] == v24));
  }

  if ((v12[3] & 1) == 0)
  {
    *(v12 + 24) = 1;
    *(v17 + 24) = 0;
    v25 = v18[1];
    *v17 = v25;
    if (v25)
    {
      *(v25 + 16) = v17;
    }

    v26 = *(v17 + 16);
    v18[2] = v26;
    v26[*v26 != v17] = v18;
    v18[1] = v17;
    *(v17 + 16) = v18;
    v27 = v12[1];
    if (v6 == v27)
    {
      v6 = v12;
    }

    v12 = *v27;
  }

  v28 = *v12;
  if (*v12 && *(v28 + 24) != 1)
  {
    goto LABEL_76;
  }

  v29 = v12[1];
  if (!v29 || *(v29 + 24) == 1)
  {
    *(v12 + 24) = 0;
    v24 = v12[2];
    v30 = *(v24 + 24) != 1 || v24 == v6;
    if (v30)
    {
LABEL_61:
      *(v24 + 24) = 1;
      goto LABEL_81;
    }

    goto LABEL_59;
  }

  if (v28 && (v28[3] & 1) == 0)
  {
LABEL_76:
    v29 = v12;
    goto LABEL_77;
  }

  *(v29 + 24) = 1;
  *(v12 + 24) = 0;
  v37 = *v29;
  v12[1] = *v29;
  if (v37)
  {
    *(v37 + 16) = v12;
  }

  v38 = v12[2];
  v29[2] = v38;
  v38[*v38 != v12] = v29;
  *v29 = v12;
  v12[2] = v29;
  v28 = v12;
LABEL_77:
  v33 = v29[2];
  *(v29 + 24) = *(v33 + 24);
  *(v33 + 24) = 1;
  *(v28 + 24) = 1;
  v34 = *v33;
  v39 = *(*v33 + 8);
  *v33 = v39;
  if (v39)
  {
    *(v39 + 16) = v33;
  }

  v40 = *(v33 + 16);
  v34[2] = v40;
  v40[*v40 != v33] = v34;
  v34[1] = v33;
LABEL_80:
  *(v33 + 16) = v34;
LABEL_81:
  sub_240B22320(a2 + 8);

  operator delete(a2);
}

uint64_t sub_240BC2BA8(uint64_t a1, uint64_t a2, int a3, int8x8_t *a4)
{
  v4 = 0;
  v5 = a2 + 16;
  v6 = a2 + 8;
  if (a3)
  {
    v6 = 1;
  }

  else
  {
    v5 = a2 + 8;
  }

  a4->i32[0] = bswap32(v6);
  do
  {
    a4->i8[v4 + 4] = *(a1 + v4);
    ++v4;
  }

  while (v4 != 4);
  if (!a3)
  {
    return 8;
  }

  v7 = vdupq_n_s64(v5);
  a4[1] = vmovn_s16(vuzp1q_s16(vuzp1q_s32(vshlq_u64(v7, xmmword_240C118D0), vshlq_u64(v7, xmmword_240C118C0)), vuzp1q_s32(vshlq_u64(v7, xmmword_240C118F0), vshlq_u64(v7, xmmword_240C118E0))));
  return 16;
}

uint64_t sub_240BC2C44(uint64_t a1)
{
  v398 = 0;
  v399 = 0;
  v400 = 0;
  v2 = (a1 + 80);
  v3 = *(a1 + 80);
  if (*(a1 + 2864))
  {
    goto LABEL_2;
  }

  __p[0] = 0;
  __p[1] = 0;
  v397 = 0;
  v20 = sub_240BC5BBC(a1, __p);
  v21 = *(a1 + 300);
  if (v21 == -1)
  {
    *(a1 + 300) = v20;
    v21 = v20;
  }

  if (v20 != 5 && v21 == 5 || v20 == -1)
  {
    *(a1 + 2852) = 129;
    goto LABEL_89;
  }

  if (*v3)
  {
    v33 = *(*v3 + 768);
  }

  else
  {
    v33 = 0;
  }

  v395 = 0;
  v393 = 0u;
  v394 = 0u;
  *__src = xmmword_240C11900;
  LOBYTE(v383) = 0;
  v381 = 0;
  sub_240B4ADF0(&v393 + 1, 2uLL);
  v384 = v395;
  *(&v393 + 1) = 2 * (*(&v394 + 1) != 0);
  v395 = &v381;
  **(&v394 + 1) = **(&v394 + 1) | 0xFFLL;
  v59 = v393;
  *&v393 = v393 + 8;
  *(*(&v394 + 1) + (v393 >> 3)) = (10 << (v59 & 7)) | *(*(&v394 + 1) + (v393 >> 3));
  *&v393 = v393 + 8;
  sub_240B536C8(&v381, &v393, 0, v33);
  if (sub_240C0EB88(a1 + 728, &v393, 0, v33))
  {
    goto LABEL_87;
  }

  if (sub_240C0EB88(a1 + 304, &v393, 0, v33))
  {
    goto LABEL_87;
  }

  *(a1 + 768) = *(a1 + 345);
  if (sub_240C0EB88(a1 + 760, &v393, 0, v33))
  {
    goto LABEL_87;
  }

  if (*(a1 + 361) != 1)
  {
    *__src = xmmword_240C11840;
    LOBYTE(v383) = 0;
    v381 = v393;
    v339 = *(&v393 + 1) + 1;
    sub_240B4ADF0(&v393 + 1, *(&v393 + 1) + 1);
    if (*(&v394 + 1))
    {
      v340 = v339;
    }

    else
    {
      v340 = 0;
    }

    v384 = v395;
    *(&v393 + 1) = v340;
    v395 = &v381;
    v341 = ((v393 + 7) & 0xFFFFFFFFFFFFFFF8) - v393;
    if (v341)
    {
      *(*(&v394 + 1) + (v393 >> 3)) = *(*(&v394 + 1) + (v393 >> 3));
      *&v393 = v393 + v341;
    }

    sub_240B536C8(&v381, &v393, 0, v33);
    v342 = v393 >> 3;
    sub_240B4ADF0(&v393 + 1, v393 >> 3);
    v343 = *(&v394 + 1);
    if (*(&v394 + 1))
    {
      v344 = v342;
    }

    else
    {
      v344 = 0;
    }

    v398 = v344;
    v399 = v394;
    *(&v393 + 1) = v344;
    *(&v394 + 1) = 0;
    v345 = v400;
    v400 = v343;
    if (v345)
    {
      atomic_fetch_add(&qword_27E519020, -*(v345 - 24));
      free(*(v345 - 32));
      v344 = v398;
    }

    *(&v393 + 1) = 0;
    *&v394 = 0;
    *(a1 + 184) += v344;
    if ((*(a1 + 297) & 1) != 0 || (v346 = *(a1 + 300), v346 != 5) && v346 != -1 || (*(a1 + 299) & 1) != 0 || *(a1 + 298) == 1)
    {
      sub_240BC219C(&v401, a1 + 104, 0x20uLL, 0);
      v42 = v404;
      if (v404)
      {
LABEL_636:
        v347 = *(&v394 + 1);
        *(&v394 + 1) = 0;
        if (v347)
        {
          atomic_fetch_add(&qword_27E519020, -*(v347 - 24));
          free(*(v347 - 32));
        }

        if (SHIBYTE(v397) < 0)
        {
          operator delete(__p[0]);
        }

        goto LABEL_175;
      }

      v348 = v401;
      v406 = v402;
      v405 = v401;
      v407 = v403;
      v401 = 0;
      v402.i64[0] = 0;
      *v405 = xmmword_240C85114;
      *&v348->__r_.__value_.__r.__words[2] = *"ftypjxl ";
      v405 += 32;
      v406 = vaddq_s64(v406, xmmword_240C11930);
      sub_240B96F0C(&v405);
      if (!v404)
      {
        sub_240B96F0C(&v401);
      }

      if (*(a1 + 300) != 5)
      {
        sub_240BC219C(&v401, a1 + 104, 9uLL, 0);
        v42 = v404;
        if (v404)
        {
          goto LABEL_636;
        }

        v406 = v402;
        v405 = v401;
        v407 = v403;
        v401 = 0;
        v402.i64[0] = 0;
        *v405 = 0x6C6C786A09000000;
        v351 = v405;
        v406 = vaddq_s64(v406, xmmword_240C11940);
        *(v405 + 8) = *(a1 + 300);
        v405 = v351 + 9;
        v406 = vaddq_s64(v406, xmmword_240C11950);
        sub_240B96F0C(&v405);
        if (!v404)
        {
          sub_240B96F0C(&v401);
        }
      }

      if ((*(a1 + 299) & 1) != 0 || *(a1 + 298) == 1 && !*v3 && !v3[4])
      {
        LODWORD(v405) = 1886156906;
        v401 = a1;
        v402.i64[0] = &v398;
        v42 = sub_240BC5D88(a1, &v405, v398 + 4, &v401);
        if (v42)
        {
          goto LABEL_636;
        }

        sub_240B4ADF0(&v398, 0);
        v398 = 0;
        if (*(a1 + 299))
        {
          v349 = *(a1 + 1992);
          v350 = *(a1 + 1984);
          if (v350 != v349)
          {
            LODWORD(v405) = 1685217898;
            v401 = a1;
            v402.i64[0] = a1 + 1984;
            v42 = sub_240BC5FB8(a1, &v405, v349 - v350, &v401);
            if (v42)
            {
              goto LABEL_636;
            }
          }
        }
      }
    }

    *(a1 + 2864) = 1;
    v352 = *(&v394 + 1);
    *(&v394 + 1) = 0;
    if (v352)
    {
      atomic_fetch_add(&qword_27E519020, -*(v352 - 24));
      free(*(v352 - 32));
    }

    if (SHIBYTE(v397) < 0)
    {
      operator delete(__p[0]);
    }

LABEL_2:
    sub_240BC2554((a1 + 104));
    v4 = *v3;
    v5 = v3[4];
    if (!(*v3 | v5))
    {
      v7 = v3[2];
      v6 = v3[3];
      v3[2] = 0;
      *&v393 = v7;
      *(&v393 + 1) = v6;
      v8 = sub_240BC6130((*(a1 + 80) + 48), *(a1 + 88), *(a1 + 80));
      sub_240BC61DC(v2, v8);
      --*(a1 + 72);
      if (*(v7 + 32) != 1)
      {
        v41 = *(v7 + 16) - *(v7 + 8);
        v381 = a1;
        __src[0] = (v7 + 8);
        v42 = sub_240BC5FB8(a1, v7, v41, &v381);
        if (!v42)
        {
LABEL_55:
          sub_240BC6990(&v393, 0);
LABEL_56:
          v42 = 0;
          goto LABEL_175;
        }

LABEL_120:
        sub_240BC6990(&v393, 0);
        goto LABEL_175;
      }

      sub_240B57EEC(&v405, 4uLL);
      for (i = 0; i != 4; ++i)
      {
        *(v406.i64[1] + i) = *(v7 + i);
      }

      if (*(a1 + 2872) < 0)
      {
        v10 = 4;
      }

      else
      {
        v10 = *(a1 + 2872);
      }

      v12 = *(v7 + 8);
      v11 = *(v7 + 16);
      sub_240B12F94();
      if (v13)
      {
        v14 = v13;
        v15 = (v11 - v12);
        if (!*(v13 + 6980))
        {
          *(v13 + 4) = v10;
          *(v13 + 24) = v15;
        }

        sub_240B57EEC(&v381, 0x20000uLL);
        v401 = v15;
        v419[0] = v12;
        v418[0] = 0;
        while (1)
        {
          v416 = 0x20000;
          v413[0] = __src[1];
          v16 = sub_240B13328(v14, 2, &v401, v419, &v416, v413, v418);
          if (!v16)
          {
            break;
          }

          v17 = v413[0] - __src[1];
          v18 = v413[0] - __src[1] + v405;
          sub_240B4ADF0(&v405, v18);
          if (v406.i64[1])
          {
            v19 = v18;
          }

          else
          {
            v19 = 0;
          }

          v405 = v19;
          memcpy((v406.i64[1] + v19 - v17), __src[1], v17);
          if (*(v14 + 6972) == 2 && !*(v14 + 6936))
          {
            goto LABEL_92;
          }
        }

        sub_240BC6954("%s:%d: Brotli compression failed\n", "/Library/Caches/com.apple.xbs/Sources/AppleJPEGXL/lib/jxl/encode.cc", 489);
LABEL_92:
        v61 = __src[1];
        __src[1] = 0;
        if (v61)
        {
          atomic_fetch_add(&qword_27E519020, -*(v61 - 3));
          free(*(v61 - 4));
        }

        sub_240B1314C(v14);
        if (v16)
        {
          LODWORD(v419[0]) = 1651470946;
          v62 = v405;
          v63 = *(a1 + 144);
          if (v405 <= 0xFFFFFFF7)
          {
            v64 = 8;
          }

          else
          {
            v64 = 16;
          }

          v65 = v63 + v64;
          v66 = *(a1 + 176);
          if (v66)
          {
            v67 = v66[3];
            if (v67)
            {
              v67(*v66, v63 + v64);
              *(a1 + 160) = v65;
            }
          }

          *(a1 + 144) = v65;
          v42 = sub_240B96C94(a1 + 104, &v405);
          if (v42)
          {
            goto LABEL_118;
          }

          v68 = *(a1 + 144);
          v69 = *(a1 + 176);
          if (v69)
          {
            v70 = v69[3];
            if (v70)
            {
              v70(*v69, v63);
              *(a1 + 160) = v63;
            }
          }

          *(a1 + 144) = v63;
          v71 = v68 - v65;
          if (v68 - v65 <= v62)
          {
            sub_240BC219C(&v381, a1 + 104, v64, 0);
            v42 = v384;
            if (!v384)
            {
              v72 = v62 > 0xFFFFFFF7;
              v73 = v381;
              v74 = __src[0];
              v75 = __src[1];
              v403 = v383;
              v381 = 0;
              __src[0] = 0;
              v76 = sub_240BC2BA8(v419, v71, v72, v73);
              v401 = (v73 + v76);
              v402.i64[0] = v74 - v76;
              v402.i64[1] = v75 + v76;
              sub_240B96F0C(&v401);
              sub_240B96F0C(&v381);
              v77 = *(a1 + 176);
              if (v77)
              {
                v78 = v77[3];
                if (v78)
                {
                  v78(*v77, v68);
                  *(a1 + 160) = v68;
                }
              }

              *(a1 + 144) = v68;
              sub_240BC2554((a1 + 104));
              v79 = v406.i64[1];
              v406.i64[1] = 0;
              if (v79)
              {
                atomic_fetch_add(&qword_27E519020, -*(v79 - 24));
                free(*(v79 - 32));
              }

              goto LABEL_55;
            }

            goto LABEL_118;
          }
        }
      }

      else
      {
        sub_240BC6954("%s:%d: BrotliEncoderCreateInstance failed\n", "/Library/Caches/com.apple.xbs/Sources/AppleJPEGXL/lib/jxl/encode.cc", 469);
      }

      v42 = 1;
      *(a1 + 2852) = 1;
LABEL_118:
      v80 = v406.i64[1];
      v406.i64[1] = 0;
      if (v80)
      {
        atomic_fetch_add(&qword_27E519020, -*(v80 - 24));
        free(*(v80 - 32));
      }

      goto LABEL_120;
    }

    *v3 = 0;
    v24 = v3[1];
    v405 = v4;
    v406.i64[0] = v24;
    v3[4] = 0;
    v25 = v3[5];
    v26 = sub_240BC6130((*(a1 + 80) + 48), *(a1 + 88), *(a1 + 80));
    sub_240BC61DC(v2, v26);
    v27 = *(a1 + 64) - 1;
    *(a1 + 64) = v27;
    if (!v4)
    {
      goto LABEL_40;
    }

    v28 = *(v4 + 1176);
    v29 = *(v4 + 1184) - v28;
    if (v29)
    {
      v30 = 0;
      v31 = 1;
      while (*(v28 + v30))
      {
        v30 = v31;
        v232 = v29 > v31++;
        if (!v232)
        {
          goto LABEL_36;
        }
      }

      *(a1 + 2852) = 129;
      if (v5)
      {
        v25(v5);
      }

      sub_240BC68B8(&v405, 0);
      goto LABEL_115;
    }

LABEL_36:
    *(v4 + 72) = *(a1 + 345) ^ 1;
    if (*(a1 + 557) == 1)
    {
      v32 = *(v4 + 648);
    }

    else
    {
LABEL_40:
      v32 = 0;
    }

    v378 = v32;
    if (v27)
    {
      v34 = 0;
    }

    else
    {
      v34 = *(a1 + 2865);
    }

    v35 = *(a1 + 332);
    for (j = *(a1 + 632); j != *(a1 + 640); j += 96)
    {
      if (v35 <= *(j + 28))
      {
        v35 = *(j + 28);
      }
    }

    v37 = v35 + 3;
    if (v37 <= 0x18)
    {
      v38 = 24;
    }

    else
    {
      v38 = v37;
    }

    v39 = sub_240B57820(a1 + 728);
    v379 = v25;
    if (*(a1 + 736) == 1)
    {
      v40 = 8 * *(a1 + 740) + 8;
    }

    else
    {
      v40 = *(a1 + 744);
    }

    v43 = *(a1 + 624);
    if (*(a1 + 408) == 1)
    {
      v44 = v43 + 1;
    }

    else
    {
      v44 = v43 + 3;
    }

    v372 = v39 * v38 * v40 * v44;
    if (v372 <= 0x7FF7FFFBFLL)
    {
      v45 = 8;
    }

    else
    {
      v45 = 16;
    }

    v46 = *(a1 + 144);
    v47 = v34;
    v374 = v46;
    if ((*(a1 + 297) & 1) != 0 || (v48 = *(a1 + 300), v48 != 5) && v48 != -1 || (*(a1 + 299) & 1) != 0 || *(a1 + 298) == 1)
    {
      if (!v34 || *(a1 + 2856))
      {
        v45 |= 4uLL;
      }

      v49 = v45 + v46;
      v50 = *(a1 + 176);
      if (v50)
      {
        v51 = v50[3];
        if (v51)
        {
          v51(*v50, v45 + v46);
          *(a1 + 160) = v49;
        }
      }

      *(a1 + 144) = v49;
    }

    else
    {
      v49 = *(a1 + 144);
    }

    v42 = sub_240B96C94(a1 + 104, &v398);
    if (v42)
    {
LABEL_172:
      if (v5)
      {
        v379(v5);
      }

      sub_240BC68B8(&v405, 0);
      goto LABEL_175;
    }

    if (v4)
    {
      v52 = *(a1 + 184);
      v53 = *(v4 + 764);
      v55 = *(a1 + 208);
      v54 = *(a1 + 216);
      v56 = v47;
      if (v54 - v55 == 16 && *(v55 + 1) == v52)
      {
        *(a1 + 216) = v55;
        v54 = v55;
      }

      v57 = *(a1 + 224);
      if (v54 >= v57)
      {
        v86 = v54 - v55;
        v87 = (v54 - v55) >> 4;
        v88 = v87 + 1;
        if ((v87 + 1) >> 60)
        {
          sub_240B228BC();
        }

        v89 = v57 - v55;
        if (v89 >> 3 > v88)
        {
          v88 = v89 >> 3;
        }

        if (v89 >= 0x7FFFFFFFFFFFFFF0)
        {
          v90 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v90 = v88;
        }

        if (v90)
        {
          if (!(v90 >> 60))
          {
            operator new();
          }

          sub_240B2291C();
        }

        v98 = 16 * v87;
        *v98 = v53;
        *(v98 + 4) = v378;
        *(v98 + 8) = v52;
        v58 = 16 * v87 + 16;
        memcpy(0, v55, v86);
        *(a1 + 208) = 0;
        *(a1 + 216) = v58;
        *(a1 + 224) = 0;
        if (v55)
        {
          operator delete(v55);
        }

        v56 = v47;
      }

      else
      {
        *v54 = v53;
        *(v54 + 1) = v378;
        v58 = (v54 + 16);
        *(v54 + 1) = v52;
      }

      *(a1 + 216) = v58;
      v99 = *(v4 + 700);
      if (v99 >= 3)
      {
        *(a1 + 2852) = 129;
LABEL_171:
        v42 = 1;
        goto LABEL_172;
      }

      LOWORD(v381) = 256;
      HIDWORD(v381) = 0;
      __src[0] = 0;
      v387 = 0;
      v388[0] = 0;
      v389 = 2;
      v390 = 0;
      memset(v391, 0, 12);
      memset(v392, 0, sizeof(v392));
      LOWORD(__src[1]) = v56;
      v100 = *(v4 + 688);
      v383 = v99;
      v384 = v100;
      v385 = *(v4 + 696) != 0;
      v386 = *(v4 + 692);
      sub_240B566C0(&v392[1], *(a1 + 624));
      v101 = *(v4 + 684);
      v102 = *(a1 + 624);
      v46 = v374;
      if (v102)
      {
        v103 = 0;
        v104 = *(v4 + 704);
        v105 = (*(v4 + 712) - v104) >> 4;
        v106 = (v392[1].__r_.__value_.__r.__words[0] + 20);
        do
        {
          v107 = v101;
          if (v103 < v105)
          {
            v107 = *(v104 + 16 * v103);
          }

          *(v106 - 3) = vzip1_s32(*v107.i8, *&vextq_s8(v107, v107, 8uLL));
          *v106 = v107.i32[1];
          *(v106 - 4) = v107.i32[3] != 0;
          ++v103;
          v106 += 10;
        }

        while (v102 != v103);
        v108 = *(v4 + 684);
      }

      else
      {
        v108 = *(v4 + 684);
      }

      v387 = *(v4 + 668);
      v389 = v108;
      v388[0] = v108 != 0;
      v390 = *(v4 + 752);
      LODWORD(v391[0]) = *(v4 + 760);
      *(v391 + 4) = v378;
      std::string::operator=(v392, (v4 + 728));
      if (sub_240B909DC(v4 + 8, &v381, a1 + 304, v4 + 776, a1 + 232, *(a1 + 24), a1 + 104, *(v4 + 768)))
      {
        *(a1 + 2852) = 1;
        v401 = &v392[1];
        sub_240B37840(&v401);
        if (SHIBYTE(v392[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v392[0].__r_.__value_.__l.__data_);
        }

        goto LABEL_171;
      }

      v401 = &v392[1];
      sub_240B37840(&v401);
      if (SHIBYTE(v392[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v392[0].__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v56 = v47;
      sub_240C02050(v5, v47, *(a1 + 24), sub_240BC69E4, (a1 + 104));
    }

    v81 = *(a1 + 144);
    v82 = v81 - v49;
    *(a1 + 184) += v82 - v398;
    if ((*(a1 + 297) & 1) != 0 || (v83 = *(a1 + 300), v83 != 5) && v83 != -1 || (*(a1 + 299) & 1) != 0 || *(a1 + 298) == 1)
    {
      v84 = *(a1 + 176);
      if (v84)
      {
        v85 = v84[3];
        if (v85)
        {
          v85(*v84, v46);
          *(a1 + 160) = v46;
        }
      }

      *(a1 + 144) = v46;
      sub_240B7D1B4(&v381, v45);
      if (v372 <= 0x7FF7FFFBFLL && v82 >= 0xFFFFFFF8)
      {
        v42 = 1;
        *(a1 + 2852) = 1;
        goto LABEL_148;
      }

      if (v56 && !*(a1 + 2856))
      {
        LODWORD(v401) = 1668053098;
        sub_240BC2BA8(&v401, v82, v372 > 0x7FF7FFFBFLL, v381);
      }

      else
      {
        LODWORD(v401) = 1886156906;
        sub_240BC2BA8(&v401, v82 + 4, v372 > 0x7FF7FFFBFLL, v381);
        v91 = *(a1 + 2856);
        *(a1 + 2856) = v91 + 1;
        if (v56)
        {
          LODWORD(v91) = v91 | 0x80000000;
        }

        *(v381 + v45 - 4) = bswap32(v91);
      }

      v42 = sub_240BA2B80(a1 + 104, &v381);
      if (v42)
      {
LABEL_148:
        v92 = v381;
        if (v381)
        {
          __src[0] = v381;
LABEL_150:
          operator delete(v92);
        }

        goto LABEL_172;
      }

      v111 = *(a1 + 176);
      if (v111)
      {
        v112 = v111[3];
        if (v112)
        {
          v112(*v111, v81);
          *(a1 + 160) = v81;
        }
      }

      *(a1 + 144) = v81;
      if (v381)
      {
        __src[0] = v381;
        operator delete(v381);
      }
    }

    sub_240BC2554((a1 + 104));
    if (v4)
    {
      sub_240B91460(a1 + 2008, v4 + 8);
    }

    if (v56)
    {
      for (k = *(a1 + 208); k != *(a1 + 216); k += 16)
      {
        if (*k)
        {
          v381 = 0;
          __src[0] = 0;
          __src[1] = 0;
          sub_240BC622C(a1 + 192, &v381);
          LODWORD(v419[0]) = 1768716394;
          v133 = v381;
          *&v393 = v381;
          *(&v393 + 1) = __src[0] - v381;
          v401 = a1;
          v402.i64[0] = &v393;
          v42 = sub_240BC6698(a1, v419, __src[0] - v381, &v401);
          if (!v42)
          {
            if (v133)
            {
              operator delete(v133);
            }

            break;
          }

          if (!v133)
          {
            goto LABEL_172;
          }

          v92 = v133;
          goto LABEL_150;
        }
      }
    }

    if (v5)
    {
      v379(v5);
    }

    sub_240BC68B8(&v405, 0);
    goto LABEL_56;
  }

  v94 = *(a1 + 384);
  v93 = *(a1 + 392);
  v95 = v94 - v93;
  if (v94 == v93)
  {
    goto LABEL_87;
  }

  v408[1] = 0;
  v408[0] = 0;
  v409 = 0;
  v96 = v93 - v94;
  v381 = 0;
  __src[0] = 0;
  __src[1] = 0;
  v401 = 0;
  v402 = 0uLL;
  if ((v93 - v94) >> 30)
  {
    v97 = 1;
    goto LABEL_613;
  }

  sub_240B4ADF0(v408, 9uLL);
  v114 = 0;
  v115 = v409;
  v116 = 9;
  if (!v409)
  {
    v116 = 0;
  }

  v408[0] = v116;
  LOBYTE(v117) = v96;
  if (v96 >= 0x80)
  {
    v118 = 0;
    v119 = v96;
    do
    {
      v114 = v118 + 1;
      *(v115 + v118) = v119 | 0x80;
      v117 = v119 >> 7;
      v120 = v119 >> 14;
      v119 >>= 7;
      ++v118;
    }

    while (v120);
  }

  v121 = v114 + 1;
  *(v115 + v114) = v117;
  sub_240B4ADF0(v408, v114 + 1);
  if (v409)
  {
    v122 = v121;
  }

  else
  {
    v122 = 0;
  }

  v408[0] = v122;
  v405 = 0;
  v406 = 0uLL;
  sub_240B4ADF0(&v405, 0x80uLL);
  v123 = v406.i64[1];
  v405 = 128;
  *(v406.i64[1] + 64) = xmmword_240C81A18;
  v123[5] = unk_240C81A28;
  v123[6] = xmmword_240C81A38;
  v123[7] = unk_240C81A48;
  *v123 = xmmword_240C819D8;
  v123[1] = *"RGB XYZ ";
  v123[2] = xmmword_240C819F8;
  v123[3] = unk_240C81A08;
  v124 = bswap32(v96);
  if (v96 >= 0x80)
  {
    v125 = 128;
  }

  else
  {
    v125 = v96;
  }

  *v123 = v124;
  if (!v96)
  {
    goto LABEL_208;
  }

  v380 = v96;
  v126 = 0;
  do
  {
    sub_240B594B8(v94, v380, v123, v126);
    sub_240B57E90(&v401, *(v94 + v126) - *(v123 + v126));
    ++v126;
  }

  while (v125 != v126);
  v127 = v380;
  if (v380 < 0x81)
  {
LABEL_208:
    sub_240B4ADF0(v408, v122 + 9);
    if (v409)
    {
      v128 = v122 + 9;
    }

    else
    {
      v128 = 0;
    }

    v408[0] = v128;
    *(v409 + v122) = 0;
    sub_240B4ADF0(v408, v122 + 1);
    if (v409)
    {
      v129 = v122 + 1;
    }

    else
    {
      v129 = 0;
    }

    v408[0] = v129;
    v130 = v401;
    if (v401)
    {
      v131 = v402.i64[1];
      do
      {
        v132 = *v131++;
        sub_240B57E90(v408, v132);
        v130 = (v130 - 1);
      }

      while (v130);
      v97 = 0;
    }

    else
    {
      v97 = 0;
    }

    goto LABEL_609;
  }

  memset(v419, 0, 24);
  memset(v418, 0, sizeof(v418));
  v417[0] = 0;
  v417[1] = 0;
  v415 = 128;
  v416 = v417;
  v373 = v94;
  v357 = v95;
  if (v380 >= 0x84)
  {
    v134 = *(v94 + 128);
    v415 = 132;
    sub_240B4ADF0(&v381, 9uLL);
    v135 = bswap32(v134);
    v136 = v135 + 1;
    v137 = __src[1];
    v138 = 9;
    if (!__src[1])
    {
      v138 = 0;
    }

    v381 = v138;
    v359 = v135;
    if (v135 < 0x7F)
    {
      v140 = 0;
      LOBYTE(v141) = v135 + 1;
    }

    else
    {
      v139 = 0;
      do
      {
        v140 = v139 + 1;
        v137[v139] = v136 | 0x80;
        v141 = v136 >> 7;
        v142 = v136 >> 14;
        v136 >>= 7;
        ++v139;
      }

      while (v142);
    }

    v143 = v140 + 1;
    v137[v140] = v141;
    sub_240B4ADF0(&v381, v140 + 1);
    v144 = __src[1] ? v143 : 0;
    v381 = v144;
    if (v134)
    {
      v377 = 0;
      v145 = 0;
      v146 = 0;
      v147 = 12 * v359 + 128;
      v356 = v94 + 4;
      v358 = v94 + 8;
      v355 = v94 + 12;
      v354 = v94 + 16;
      v353 = v94 + 20;
      do
      {
        v364 = v147;
        v366 = v145;
        v375 = v146;
        if (v415 + 12 > v127)
        {
          break;
        }

        v148 = 538976288;
        if (v415 + 4 <= v127)
        {
          v148 = *(v94 + v415);
        }

        LODWORD(v411[0]) = v148;
        if (v415 + 8 <= v127)
        {
          v149 = bswap32(*(v356 + v415));
        }

        else
        {
          v149 = 0;
        }

        v370 = *(v358 + v415);
        v415 += 12;
        v150 = v377;
        v151 = v377 >> 2;
        if (((v377 >> 2) + 1) >> 62)
        {
          sub_240B228BC();
        }

        if (v377 >> 2 != -1)
        {
          if (!(((v377 >> 2) + 1) >> 62))
          {
            operator new();
          }

          sub_240B2291C();
        }

        *(4 * v151) = v148;
        v377 = 4 * v151 + 4;
        memcpy(0, 0, v150);
        v362 = v149;
        v152 = v149;
        v413[0] = v149;
        sub_240B495E8(v419, v413);
        v153 = bswap32(v370);
        v413[0] = v153;
        sub_240B495E8(v418, v413);
        v154 = v417[0];
LABEL_251:
        if (!v154)
        {
LABEL_258:
          operator new();
        }

        while (1)
        {
          v155 = v154;
          v156 = v154[4];
          if (v156 > v152)
          {
            v154 = *v155;
            goto LABEL_251;
          }

          if (v156 >= v152)
          {
            break;
          }

          v154 = v155[1];
          if (!v154)
          {
            goto LABEL_258;
          }
        }

        v157 = 0;
        v155[5] = (v377 >> 2) - 1;
        while (LODWORD(v411[0]) != **(&off_278CB3178 + v157))
        {
          if (++v157 == 17)
          {
            v158 = 1;
            goto LABEL_263;
          }
        }

        v158 = v157 + 4;
LABEL_263:
        v159 = v411[0];
        if (LODWORD(v411[0]) == 1129469042)
        {
          if (v415 + 24 >= v380)
          {
            goto LABEL_321;
          }

          v160 = 538976288;
          if (v415 + 4 <= v380)
          {
            v160 = *(v373 + v415);
          }

          v161 = bswap32(v160);
          v221 = v161 >= 0x67545243;
          v162 = v161 > 0x67545243;
          v163 = !v221;
          v164 = 538976288;
          if (v415 + 16 <= v380)
          {
            v164 = *(v355 + v415);
          }

          v165 = v162 - v163;
          v166 = bswap32(v164);
          v221 = v166 >= 0x62545243;
          v167 = v166 > 0x62545243;
          v168 = !v221;
          if ((v167 - v168) | v165)
          {
            goto LABEL_321;
          }

          v169 = (v373 + v415 + 4);
          v170 = 1;
          v171 = 8;
          do
          {
            v172 = *(v169 - 12);
            v174 = v172 == v169[12] && v172 == *v169;
            v170 &= v174;
            ++v169;
            --v171;
          }

          while (v171);
          if (v170)
          {
            v415 += 24;
            v375 += 2;
            v158 = 2;
          }
        }

        if (LODWORD(v411[0]) == 1515804786 && v415 + 24 < v380)
        {
          v175 = 538976288;
          if (v415 + 4 <= v380)
          {
            v175 = *(v373 + v415);
          }

          v176 = bswap32(v175);
          v221 = v176 >= 0x6758595A;
          v177 = v176 > 0x6758595A;
          v178 = !v221;
          v179 = 538976288;
          if (v415 + 16 <= v380)
          {
            v179 = *(v355 + v415);
          }

          v180 = bswap32(v179);
          v221 = v180 >= 0x6258595A;
          v181 = v180 > 0x6258595A;
          v182 = !v221;
          if (v415 + 8 <= v380)
          {
            v183 = bswap32(*(v356 + v415));
          }

          else
          {
            v183 = 0;
          }

          if (v415 + 20 <= v380)
          {
            v184 = bswap32(*(v354 + v415));
          }

          else
          {
            v184 = 0;
          }

          v185 = v415 + 12 <= v380 && *(v358 + v415) == 335544320;
          v186 = v415 + 24 <= v380 && *(v353 + v415) == 335544320;
          v187 = (v181 - v182) | (v177 - v178);
          v189 = v370 == 335544320 && v187 == 0 && v185;
          if (v184 == v362 + 40 && v183 == v362 + 20 && v189 && v186)
          {
            v415 += 24;
            v375 += 2;
            v158 = 3;
          }
        }

LABEL_321:
        v190 = v366;
        if (v364 + v366 == v152)
        {
          v191 = v158;
        }

        else
        {
          v191 = v158 | 0x40;
        }

        v192 = vmaxv_u16(vmovn_s32(vceqq_s32(vdupq_n_s32(v411[0]), xmmword_240C11910)));
        v194 = (v411[0] & 0xFFFFFFEF) == 0x5A595862 || LODWORD(v411[0]) == 1768781164;
        if ((v194 | v192))
        {
          v190 = 20;
        }

        if (v190 == v153)
        {
          v195 = v191;
        }

        else
        {
          v195 = v191 | 0x80;
        }

        sub_240B57E90(&v381, v195);
        if (v158 == 1)
        {
          v196 = v401;
          v197 = (v401->__r_.__value_.__r.__words + 4);
          sub_240B4ADF0(&v401, v401->__r_.__value_.__r.__words + 4);
          if (v402.i64[1])
          {
            v198 = v197;
          }

          else
          {
            v198 = 0;
          }

          v401 = v198;
          *(&v196->__r_.__value_.__l.__data_ + v402.i64[1]) = v159;
        }

        if ((v195 & 0x40) != 0)
        {
          v199 = v381;
          v200 = v381 + 9;
          sub_240B4ADF0(&v381, v381 + 9);
          v201 = __src[1];
          if (__src[1])
          {
            v202 = v200;
          }

          else
          {
            v202 = 0;
          }

          v381 = v202;
          if (v362 < 0x80)
          {
            v204 = v199;
            LOBYTE(v205) = v152;
          }

          else
          {
            v203 = v152;
            do
            {
              v204 = v199 + 1;
              v199[v201] = v203 | 0x80;
              v205 = v203 >> 7;
              v206 = v203 >> 14;
              v203 >>= 7;
              ++v199;
            }

            while (v206);
          }

          v207 = v204 + 1;
          v204[v201] = v205;
          sub_240B4ADF0(&v381, (v204 + 1));
          if (__src[1])
          {
            v208 = v207;
          }

          else
          {
            v208 = 0;
          }

          v381 = v208;
        }

        if (v195 < 0)
        {
          v209 = v381;
          v210 = v381 + 9;
          sub_240B4ADF0(&v381, v381 + 9);
          v211 = __src[1];
          if (__src[1])
          {
            v212 = v210;
          }

          else
          {
            v212 = 0;
          }

          v381 = v212;
          if (v153 < 0x80)
          {
            v214 = v209;
            LOBYTE(v215) = v153;
          }

          else
          {
            v213 = v153;
            do
            {
              v214 = v209 + 1;
              v209[v211] = v213 | 0x80;
              v215 = v213 >> 7;
              v216 = v213 >> 14;
              v213 >>= 7;
              ++v209;
            }

            while (v216);
          }

          v217 = v214 + 1;
          v214[v211] = v215;
          sub_240B4ADF0(&v381, (v214 + 1));
          if (__src[1])
          {
            v218 = v217;
          }

          else
          {
            v218 = 0;
          }

          v381 = v218;
        }

        v146 = v375 + 1;
        v147 = v152;
        v145 = v153;
        v94 = v373;
        v127 = v380;
      }

      while (v375 + 1 < v359);
    }
  }

  sub_240B57E90(&v381, 0);
  v368 = 0;
  v371 = 0;
  v219 = 0;
  v376 = v415;
  v363 = v94 + 8;
  v365 = v94 + 4;
  do
  {
    v220 = v415;
    if (v415 > v127)
    {
      v319 = v381;
      v320 = v408[0];
      v321 = v408[0] + 9;
      sub_240B4ADF0(v408, v408[0] + 9);
      v322 = v409;
      if (v409)
      {
        v323 = v321;
      }

      else
      {
        v323 = 0;
      }

      v408[0] = v323;
      if (v319 < 0x80)
      {
        v325 = v320;
        LOBYTE(v326) = v319;
      }

      else
      {
        v324 = v319;
        do
        {
          v325 = v320 + 1;
          *(v322 + v320) = v324 | 0x80;
          v326 = v324 >> 7;
          v327 = v324 >> 14;
          v324 >>= 7;
          ++v320;
        }

        while (v327);
      }

      v328 = v325 + 1;
      *(v322 + v325) = v326;
      sub_240B4ADF0(v408, v325 + 1);
      if (v409)
      {
        v329 = v328;
      }

      else
      {
        v329 = 0;
      }

      v408[0] = v329;
      if (v319)
      {
        v330 = __src[1];
        do
        {
          v331 = *v330++;
          sub_240B57E90(v408, v331);
          --v319;
        }

        while (v319);
      }

      v332 = v401;
      if (v401)
      {
        v333 = v402.i64[1];
        do
        {
          v334 = *v333++;
          sub_240B57E90(v408, v334);
          v332 = (v332 - 1);
        }

        while (v332);
        v366 = 0;
      }

      else
      {
        v366 = 0;
      }

      break;
    }

    v413[0] = 0;
    v413[1] = 0;
    v414 = 0;
    v411[0] = 0;
    v411[1] = 0;
    v412 = 0;
    v221 = v415 <= v219 + v371 || v371 >= 0x3FFFFFFF;
    v222 = v377;
    if (!v221)
    {
      v222 = 0;
    }

    LODWORD(v377) = v222;
    v223 = v417[0];
    v224 = v417[0];
    if (!v417[0])
    {
LABEL_379:
      v226 = v415;
      goto LABEL_380;
    }

    while (1)
    {
      v225 = v224[4];
      if (v415 >= v225)
      {
        break;
      }

LABEL_378:
      v224 = *v224;
      if (!v224)
      {
        goto LABEL_379;
      }
    }

    if (v225 < v415)
    {
      ++v224;
      goto LABEL_378;
    }

    v226 = v415;
    if (v415 + 4 > v127)
    {
      goto LABEL_380;
    }

    while (1)
    {
      while (1)
      {
        v271 = v223;
        v272 = v223[4];
        if (v415 >= v272)
        {
          break;
        }

        v223 = *v271;
        if (!*v271)
        {
          goto LABEL_490;
        }
      }

      if (v272 >= v415)
      {
        break;
      }

      v223 = v271[1];
      if (!v223)
      {
LABEL_490:
        operator new();
      }
    }

    v226 = v415;
    v288 = 538976288;
    if (v415 + 4 <= v127)
    {
      v288 = *(v373 + v415);
    }

    v289 = v271[5];
    v219 = *(v419[0] + v289);
    v371 = *(v418[0] + 8 * v289);
    v290 = v371 - 9;
    LODWORD(v377) = v288;
    if (v288 == 1668639853 && v290 < 0x3FFFFFF6)
    {
      if (v415 + v371 > v127 || (v291 = (v373 + v415), *(v373 + v415 + 4)) || v291[5])
      {
        v243 = 1668639853;
        goto LABEL_421;
      }

      v361 = v219;
      if (v291[6] || v291[7])
      {
        v243 = 1668639853;
        goto LABEL_421;
      }

      sub_240B57E90(v413, 19);
      v226 += 8;
      v415 = v226;
      sub_240B57E90(v413, 2);
      sub_240BAD310(v371 - 8, v413);
      v316 = v371 - 8;
      do
      {
        sub_240B57E90(v411, *(v373 + v226++));
        --v316;
      }

      while (v316);
      v415 = v226;
      sub_240BAD3B4(v412, v371 - 8, 2uLL);
      v219 = v361;
    }

    v243 = 1987212643;
    if (v377 != 1987212643 || v290 >= 0x3FFFFFF6)
    {
      v127 = v380;
LABEL_380:
      if (v377 != 541213037 && v377 != 541147757)
      {
        goto LABEL_420;
      }

      v228 = v226 + 4;
      v229 = 538976288;
      if (v226 + 4 <= v127)
      {
        v229 = *(v373 + v226);
      }

      v230 = v226 + 12;
      if (v226 + 12 < v127 && (v229 == 1987212643 || v229 == 1952932726) && (v226 + 8 > v127 || !*(v365 + v226)) && v230 <= v127)
      {
        v231 = 2 * bswap32(*(v363 + v226));
        v232 = (v231 - 17) > 0xFFFFFEE || v230 + v231 > v127;
        if (!v232)
        {
          v360 = v219;
          v415 = v226 + 12;
          sub_240B57E90(v413, 4);
          sub_240B57E90(v413, 5);
          v292 = v413[0];
          sub_240B4ADF0(v413, v413[0] + 9);
          v293 = v414;
          if (v414)
          {
            v294 = v292 + 9;
          }

          else
          {
            v294 = 0;
          }

          v413[0] = v294;
          if (v231 < 0x80)
          {
            v296 = v292;
            LOBYTE(v297) = v231;
          }

          else
          {
            v295 = v231;
            do
            {
              v296 = v292 + 1;
              v292[v293] = v295 | 0x80;
              v297 = v295 >> 7;
              v298 = v295 >> 14;
              v295 >>= 7;
              ++v292;
            }

            while (v298);
          }

          v299 = v296 + 1;
          v296[v293] = v297;
          sub_240B4ADF0(v413, (v296 + 1));
          if (v414)
          {
            v300 = v299;
          }

          else
          {
            v300 = 0;
          }

          v413[0] = v300;
          if (sub_240BAD484(2uLL, 2uLL, 1, v231, v373, v380, &v415, v411))
          {
            v267 = 0;
            v366 = 1;
            v127 = v380;
            v219 = v360;
            goto LABEL_457;
          }

          v366 = 0;
          v226 = v415;
          v228 = v415 + 4;
          v220 = v230;
          v127 = v380;
          v219 = v360;
        }
      }

      if (v226 == v219 + 24 && v228 < v127)
      {
        v368 = v219 + bswap32(*(v373 + v226));
      }

      if (v226 != v368)
      {
LABEL_420:
        v243 = v377;
        goto LABEL_421;
      }

      if (v226 + 16 >= v127)
      {
        v243 = v377;
        v368 = v226;
        goto LABEL_421;
      }

      v233 = *(v373 + v219 + 8);
      v234 = *(v373 + v226 + 16);
      v235 = v234 * *(v373 + v219 + 9);
      if (*(v373 + v219 + 8))
      {
        v236 = (v373 + v226);
        v237 = v380;
        if (v226 < v380)
        {
          v237 = v226;
        }

        v238 = v357 + v237;
        v235 = v234 * *(v373 + v219 + 9);
        do
        {
          if (!v238)
          {
            break;
          }

          v239 = *v236++;
          v235 *= v239;
          ++v238;
          --v233;
        }

        while (v233);
      }

      if ((v234 - 1) > 1u || v235 - 65 >= 0xFFFFFBF || v235 + v226 > v380 || v226 <= 4 * v234 * *(v373 + v219 + 9))
      {
        v243 = v377;
        v368 = v226;
        goto LABEL_421;
      }

      v369 = v234 * *(v373 + v219 + 9);
      sub_240B57E90(v413, 4);
      v367 = v234;
      sub_240B57E90(v413, (v234 - 1) | (16 * (v369 != v234)) | 4);
      v281 = v413[0];
      if (v369 != v367)
      {
        sub_240B4ADF0(v413, v413[0] + 9);
        v282 = v414;
        if (v414)
        {
          v283 = v281 + 9;
        }

        else
        {
          v283 = 0;
        }

        v413[0] = v283;
        v284 = v369;
        if (v369 < 0x80)
        {
          v285 = v281;
          LOBYTE(v286) = v369;
        }

        else
        {
          do
          {
            v285 = v281 + 1;
            v281[v282] = v284 | 0x80;
            v286 = v284 >> 7;
            v287 = v284 >> 14;
            v284 >>= 7;
            ++v281;
          }

          while (v287);
        }

        v301 = v285 + 1;
        v285[v282] = v286;
        sub_240B4ADF0(v413, (v285 + 1));
        if (v414)
        {
          v281 = v301;
        }

        else
        {
          v281 = 0;
        }

        v413[0] = v281;
      }

      sub_240B4ADF0(v413, (v281 + 9));
      v302 = v414;
      if (v414)
      {
        v303 = v281 + 9;
      }

      else
      {
        v303 = 0;
      }

      v413[0] = v303;
      if (v235 < 0x80)
      {
        v305 = v281;
        LOBYTE(v306) = v235;
      }

      else
      {
        v304 = v235;
        do
        {
          v305 = v281 + 1;
          v281[v302] = v304 | 0x80;
          v306 = v304 >> 7;
          v307 = v304 >> 14;
          v304 >>= 7;
          ++v281;
        }

        while (v307);
      }

      v308 = v305 + 1;
      v305[v302] = v306;
      sub_240B4ADF0(v413, (v305 + 1));
      if (v414)
      {
        v244 = v308;
      }

      else
      {
        v244 = 0;
      }

      v413[0] = v244;
      if (sub_240BAD484(v369, v367, 1, v235, v373, v380, &v415, v411))
      {
        v267 = 0;
        v366 = 1;
        v368 = v226;
        goto LABEL_456;
      }

      v366 = 0;
      v368 = v226;
      goto LABEL_422;
    }

    if (v226 + v371 > v380)
    {
      goto LABEL_421;
    }

    v317 = (v373 + v226);
    if (*(v373 + v226 + 4))
    {
      goto LABEL_421;
    }

    if (v317[5])
    {
      goto LABEL_421;
    }

    if (v317[6])
    {
      goto LABEL_421;
    }

    if (v317[7])
    {
      goto LABEL_421;
    }

    if (v371 - 25 >= 0xFFFFFEF)
    {
      goto LABEL_421;
    }

    if (!v226)
    {
      goto LABEL_421;
    }

    v318 = v371 - 8;
    if (v226 + v371 - 8 > v380)
    {
      goto LABEL_421;
    }

    sub_240B57E90(v413, 21);
    v415 = v226 + 8;
    sub_240B57E90(v413, 4);
    sub_240B57E90(v413, 5);
    sub_240BAD310(v318, v413);
    v366 = sub_240BAD484(2uLL, 2uLL, 1, v318, v373, v380, &v415, v411);
    if (!v366)
    {
      v366 = 0;
LABEL_421:
      v244 = v413[0];
      LODWORD(v377) = v243;
LABEL_422:
      v127 = v380;
      if (v244)
      {
        v245 = v219;
        goto LABEL_426;
      }

      if (v411[0])
      {
LABEL_425:
        v245 = v219;
        v244 = 0;
        goto LABEL_426;
      }

      if (v377 == 543449703 && v371 - 9 < 0x3FFFFFF6 && v415 == v219 + 8 && v415 >= 0x11 && (v273 = v371 - 8, v371 - 8 + v415 <= v380))
      {
        v245 = v219;
        sub_240B57E90(v413, 4);
        sub_240B57E90(v413, 3);
        v274 = v413[0];
        sub_240B4ADF0(v413, v413[0] + 9);
        v275 = v414;
        if (v414)
        {
          v276 = v274 + 9;
        }

        else
        {
          v276 = 0;
        }

        v413[0] = v276;
        if (v273 < 0x80)
        {
          v278 = v274;
          LOBYTE(v279) = v371 - 8;
        }

        else
        {
          v277 = v371 - 8;
          do
          {
            v278 = v274 + 1;
            v274[v275] = v277 | 0x80;
            v279 = v277 >> 7;
            v280 = v277 >> 14;
            v277 >>= 7;
            ++v274;
          }

          while (v280);
        }

        v309 = v278 + 1;
        v278[v275] = v279;
        sub_240B4ADF0(v413, (v278 + 1));
        if (v414)
        {
          v244 = v309;
        }

        else
        {
          v244 = 0;
        }

        v413[0] = v244;
        if (sub_240BAD484(4uLL, 4uLL, 0, v273, v373, v380, &v415, v411))
        {
          v267 = 0;
          v366 = 1;
          LODWORD(v377) = 543449703;
          v127 = v380;
          goto LABEL_453;
        }

        if (v244)
        {
          v366 = 0;
          goto LABEL_565;
        }

        v366 = 0;
        if (!v411[0])
        {
          v127 = v380;
          v219 = v245;
          goto LABEL_545;
        }

LABEL_564:
        v244 = 0;
LABEL_565:
        v127 = v380;
LABEL_426:
        v232 = v220 > v376;
        v246 = v220 - v376;
        if (v232)
        {
          sub_240B57E90(&v381, 1);
          v247 = v381;
          v248 = v381 + 9;
          sub_240B4ADF0(&v381, v381 + 9);
          v249 = __src[1];
          if (__src[1])
          {
            v250 = v248;
          }

          else
          {
            v250 = 0;
          }

          v381 = v250;
          if (v246 < 0x80)
          {
            v252 = v247;
            LOBYTE(v253) = v246;
          }

          else
          {
            v251 = v246;
            do
            {
              v252 = v247 + 1;
              v247[v249] = v251 | 0x80;
              v253 = v251 >> 7;
              v254 = v251 >> 14;
              v251 >>= 7;
              ++v247;
            }

            while (v254);
          }

          v255 = v252 + 1;
          v252[v249] = v253;
          sub_240B4ADF0(&v381, (v252 + 1));
          if (__src[1])
          {
            v256 = v255;
          }

          else
          {
            v256 = 0;
          }

          v381 = v256;
          v257 = (v373 + v376);
          while (v246)
          {
            v258 = *v257++;
            --v246;
            sub_240B57E90(&v401, v258);
          }
        }

        if (v244)
        {
          v259 = v414;
          v260 = v244;
          do
          {
            v261 = *v259++;
            sub_240B57E90(&v381, v261);
            --v260;
          }

          while (v260);
          v262 = v244;
        }

        else
        {
          v262 = 0;
        }

        v263 = v411[0];
        if (v411[0])
        {
          v264 = v412;
          v265 = v411[0];
          do
          {
            v266 = *v264++;
            sub_240B57E90(&v401, v266);
            --v265;
          }

          while (v265);
          v262 = v244;
          v127 = v380;
        }

        v376 = v415;
        if (v262 | v263)
        {
          v267 = 1;
LABEL_453:
          v219 = v245;
          goto LABEL_457;
        }

        v268 = v415;
        v219 = v245;
      }

      else
      {
LABEL_545:
        v310 = v415;
        if (v415 + 20 <= v127)
        {
          if (v415 + 4 <= v127 && *(v373 + v415) == 542792024 && (v415 + 8 > v127 || !*(v365 + v415)))
          {
            v245 = v219;
            sub_240B57E90(v413, 10);
            v311 = 12;
            v310 += 8;
            do
            {
              v312 = *(v373 + v310++);
              sub_240B57E90(v411, v312);
              --v311;
            }

            while (v311);
            v415 = v310;
            v244 = v413[0];
            v127 = v380;
            v219 = v245;
            if (v413[0])
            {
              goto LABEL_426;
            }
          }

          if (v411[0])
          {
            goto LABEL_425;
          }
        }

        v313 = v127;
        v268 = v310 + 8;
        if (v310 + 8 > v313 || *(v365 + v310))
        {
LABEL_561:
          v268 = v310;
        }

        else
        {
          v314 = 538976288;
          if (v310 + 4 <= v380)
          {
            v314 = *(v373 + v310);
          }

          v315 = 0;
          v410 = v314;
          while (v410 != **(&off_278CB3200 + v315))
          {
            if (++v315 == 8)
            {
              goto LABEL_561;
            }
          }

          sub_240B57E90(v413, v315 | 0x10);
          v415 = v310 + 8;
          v244 = v413[0];
          if (v413[0])
          {
            v245 = v219;
            goto LABEL_565;
          }
        }

        if (v268 == v380)
        {
          v245 = v219;
          goto LABEL_564;
        }
      }

      v415 = v268 + 1;
      v267 = 1;
      goto LABEL_456;
    }

    v267 = 0;
    LODWORD(v377) = 1987212643;
LABEL_456:
    v127 = v380;
LABEL_457:
    v269 = v412;
    v412 = 0;
    if (v269)
    {
      atomic_fetch_add(&qword_27E519020, -*(v269 - 24));
      free(*(v269 - 32));
    }

    v270 = v414;
    v414 = 0;
    if (v270)
    {
      atomic_fetch_add(&qword_27E519020, -*(v270 - 3));
      free(*(v270 - 4));
    }
  }

  while ((v267 & 1) != 0);
  sub_240B8B3FC(v417[0]);
  if (v418[0])
  {
    operator delete(v418[0]);
  }

  v97 = v366;
  if (v419[0])
  {
    operator delete(v419[0]);
  }

LABEL_609:
  v335 = v406.i64[1];
  v406.i64[1] = 0;
  if (v335)
  {
    atomic_fetch_add(&qword_27E519020, -*(v335 - 24));
    free(*(v335 - 32));
  }

  v336 = v402.i64[1];
  v402.i64[1] = 0;
  if (v336)
  {
    atomic_fetch_add(&qword_27E519020, -*(v336 - 24));
    free(*(v336 - 32));
  }

LABEL_613:
  v337 = __src[1];
  __src[1] = 0;
  if (v337)
  {
    atomic_fetch_add(&qword_27E519020, -*(v337 - 3));
    free(*(v337 - 4));
  }

  if (!v97)
  {
    sub_240B8C03C(v419);
  }

  v338 = v409;
  v409 = 0;
  if (v338)
  {
    atomic_fetch_add(&qword_27E519020, -*(v338 - 24));
    free(*(v338 - 32));
  }

LABEL_87:
  *(a1 + 2852) = 1;
  v60 = *(&v394 + 1);
  *(&v394 + 1) = 0;
  if (v60)
  {
    atomic_fetch_add(&qword_27E519020, -*(v60 - 24));
    free(*(v60 - 32));
  }

LABEL_89:
  if (SHIBYTE(v397) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_115:
  v42 = 1;
LABEL_175:
  v109 = v400;
  v400 = 0;
  if (v109)
  {
    atomic_fetch_add(&qword_27E519020, -*(v109 - 24));
    free(*(v109 - 32));
  }

  return v42;
}

void sub_240BC57B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, int a59, __int16 a60, char a61, char a62, uint64_t a63)
{
  v69 = *(v67 - 224);
  *(v67 - 224) = 0;
  if (v69)
  {
    atomic_fetch_add(&qword_27E519020, -*(v69 - 24));
    free(*(v69 - 32));
  }

  v70 = *(v67 - 200);
  *(v67 - 200) = 0;
  if (v70)
  {
    atomic_fetch_add(&qword_27E519020, -*(v70 - 24));
    free(*(v70 - 32));
  }

  sub_240B8B3FC(*(v67 - 160));
  v71 = *(v67 - 144);
  if (v71)
  {
    operator delete(v71);
  }

  v72 = *(v67 - 120);
  if (v72)
  {
    operator delete(v72);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a67)
  {
    atomic_fetch_add(&qword_27E519020, -*(a67 - 24));
    free(*(a67 - 32));
  }

  if (a66)
  {
    atomic_fetch_add(&qword_27E519020, -*(a66 - 24));
    free(*(a66 - 32));
  }

  if (a36)
  {
    atomic_fetch_add(&qword_27E519020, -*(a36 - 24));
    free(*(a36 - 32));
  }

  v73 = STACK[0x220];
  STACK[0x220] = 0;
  if (v73)
  {
    atomic_fetch_add(&qword_27E519020, -*(v73 - 24));
    free(*(v73 - 32));
  }

  if (a54)
  {
    atomic_fetch_add(&qword_27E519020, -*(a54 - 24));
    free(*(a54 - 32));
  }

  if (a62 < 0)
  {
    operator delete(a57);
  }

  if (a65)
  {
    atomic_fetch_add(&qword_27E519020, -*(a65 - 24));
    free(*(a65 - 32));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_240BC5BBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_240B57820(a1 + 728);
  if (*(a1 + 736) == 1)
  {
    v5 = 8 * *(a1 + 740) + 8;
  }

  else
  {
    v5 = *(a1 + 744);
  }

  if (*(a1 + 361) == 1)
  {
    v6 = *(a1 + 392) - *(a1 + 384);
  }

  else
  {
    v6 = 0;
  }

  if (v4 > 0x40000000 || ((v7 = v5, v8 = v5 > 0x40000000, v9 = v4 * v5, !v8) ? (v10 = v9 >= 0x10000000001) : (v10 = 1), v10))
  {
    v11 = 0xFFFFFFFFLL;
    if (!a2)
    {
      return v11;
    }

LABEL_14:
    v12 = "Too large image dimensions";
LABEL_15:
    MEMORY[0x245CCE410](a2, v12);
    return v11;
  }

  if (v6 >= 0x10000001)
  {
    v11 = 0xFFFFFFFFLL;
    if (!a2)
    {
      return v11;
    }

    v12 = "Too large ICC profile size";
    goto LABEL_15;
  }

  v14 = *(a1 + 624);
  if (v14 >= 0x101)
  {
    v11 = 0xFFFFFFFFLL;
    if (!a2)
    {
      return v11;
    }

    goto LABEL_22;
  }

  if ((*(a1 + 344) & 1) == 0)
  {
    v11 = 10;
    if (!a2)
    {
      return v11;
    }

    v12 = "Too high modular bit depth";
    goto LABEL_15;
  }

  if (v4 > 0x40000 || v7 > 0x40000 || v9 >= 0x10000001)
  {
    v11 = 10;
    if (!a2)
    {
      return v11;
    }

    goto LABEL_14;
  }

  if (v6 > 0x400000)
  {
    v11 = 10;
    if (!a2)
    {
      return v11;
    }

    v12 = "Too large ICC profile";
    goto LABEL_15;
  }

  if (v14 > 4)
  {
    v11 = 10;
    if (!a2)
    {
      return v11;
    }

LABEL_22:
    v12 = "Too many extra channels";
    goto LABEL_15;
  }

  v15 = *(a1 + 632);
  v16 = *(a1 + 640) - v15;
  if (!v16)
  {
    return 5;
  }

  v17 = 0xAAAAAAAAAAAAAAABLL * (v16 >> 5);
  if (v17 <= 1)
  {
    v17 = 1;
  }

  v18 = (v15 + 12);
  v11 = 5;
  while (1)
  {
    v19 = *v18;
    v18 += 24;
    if (v19 == 4)
    {
      break;
    }

    if (!--v17)
    {
      return v11;
    }
  }

  v11 = 10;
  if (a2)
  {
    v12 = "CMYK channel not allowed";
    goto LABEL_15;
  }

  return v11;
}

uint64_t sub_240BC5D88(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4)
{
  v8 = *(a1 + 144);
  if (a3 <= 0xFFFFFFF7)
  {
    v9 = 8;
  }

  else
  {
    v9 = 16;
  }

  v10 = v8 + v9;
  v11 = *(a1 + 176);
  if (v11)
  {
    v12 = v11[3];
    if (v12)
    {
      v12(*v11, v8 + v9);
      *(a1 + 160) = v10;
    }
  }

  *(a1 + 144) = v10;
  v13 = *a4;
  sub_240BC219C(&v35, *a4 + 104, *a4[1] + 4, 0);
  result = v38;
  if (!v38)
  {
    v15 = v35;
    v34 = v37;
    v35 = 0;
    v16 = v15 + 4;
    v17 = v36;
    v36.i64[0] = 0;
    v18 = *(v13 + 2856);
    *(v13 + 2856) = v18 + 1;
    v15->i8[0] = BYTE3(v18);
    v15->i8[1] = BYTE2(v18);
    v15->i8[2] = BYTE1(v18);
    v15->i8[3] = v18;
    v31 = vaddq_s64(v17, xmmword_240C11960);
    v19 = a4[1];
    v20 = *v19;
    memcpy(v16, *(v19 + 16), *v19);
    v32 = &v16[v20];
    v21.i64[0] = v20;
    v21.i64[0] = vsubq_s64(v31, v21).u64[0];
    v21.i64[1] = vaddq_s64(v31, vdupq_n_s64(v20)).i64[1];
    v33 = v21;
    sub_240B96F0C(&v32);
    sub_240B96F0C(&v35);
    v22 = *(a1 + 144);
    v23 = *(a1 + 176);
    if (v23)
    {
      v24 = v23[3];
      if (v24)
      {
        v24(*v23, v8);
        *(a1 + 160) = v8;
      }
    }

    *(a1 + 144) = v8;
    if (v22 - v10 <= a3)
    {
      sub_240BC219C(&v35, a1 + 104, v9, 0);
      result = v38;
      if (!v38)
      {
        v25 = a3 > 0xFFFFFFF7;
        v26 = v35;
        v27 = v36;
        v34 = v37;
        v35 = 0;
        v36.i64[0] = 0;
        v28 = sub_240BC2BA8(a2, v22 - v10, v25, v26);
        v32 = v26 + v28;
        v33.i64[0] = v27.i64[0] - v28;
        v33.i64[1] = v27.i64[1] + v28;
        sub_240B96F0C(&v32);
        sub_240B96F0C(&v35);
        v29 = *(a1 + 176);
        if (v29)
        {
          v30 = v29[3];
          if (v30)
          {
            v30(*v29, v22);
            *(a1 + 160) = v22;
          }
        }

        *(a1 + 144) = v22;
        sub_240BC2554((a1 + 104));
        return 0;
      }
    }

    else
    {
      result = 1;
      *(a1 + 2852) = 1;
    }
  }

  return result;
}

uint64_t sub_240BC5FB8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 144);
  if (a3 <= 0xFFFFFFF7)
  {
    v9 = 8;
  }

  else
  {
    v9 = 16;
  }

  v10 = v8 + v9;
  v11 = *(a1 + 176);
  if (v11)
  {
    v12 = v11[3];
    if (v12)
    {
      v12(*v11, v8 + v9);
      *(a1 + 160) = v10;
    }
  }

  *(a1 + 144) = v10;
  result = sub_240BA2B80(*a4 + 104, *(a4 + 8));
  if (!result)
  {
    v14 = *(a1 + 144);
    v15 = *(a1 + 176);
    if (v15)
    {
      v16 = v15[3];
      if (v16)
      {
        v16(*v15, v8);
        *(a1 + 160) = v8;
      }
    }

    *(a1 + 144) = v8;
    v17 = v14 - v10;
    if (v14 - v10 <= a3)
    {
      sub_240BC219C(&v26, a1 + 104, v9, 0);
      result = v30;
      if (!v30)
      {
        v18 = a3 > 0xFFFFFFF7;
        v19 = v26;
        v20 = v27;
        v21 = v28;
        v25[3] = v29;
        v26 = 0;
        v27 = 0;
        v22 = sub_240BC2BA8(a2, v17, v18, v19);
        v25[0] = v19 + v22;
        v25[1] = v20 - v22;
        v25[2] = v21 + v22;
        sub_240B96F0C(v25);
        sub_240B96F0C(&v26);
        v23 = *(a1 + 176);
        if (v23)
        {
          v24 = v23[3];
          if (v24)
          {
            v24(*v23, v14);
            *(a1 + 160) = v14;
          }
        }

        *(a1 + 144) = v14;
        sub_240BC2554((a1 + 104));
        return 0;
      }
    }

    else
    {
      result = 1;
      *(a1 + 2852) = 1;
    }
  }

  return result;
}

void *sub_240BC6130(uint64_t *a1, uint64_t *a2, void *a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    do
    {
      v5 = a3;
      v6 = *v4;
      *v4 = 0;
      sub_240BC68B8(a3, v6);
      v5[1] = v4[1];
      v7 = v4[2];
      v4[2] = 0;
      sub_240BC6990(v5 + 2, v7);
      v5[3] = v4[3];
      v8 = v4[4];
      v4[4] = 0;
      v9 = v5[4];
      v5[4] = v8;
      if (v9)
      {
        (v5[5])();
      }

      v5[5] = v4[5];
      v4 += 6;
      a3 = v5 + 6;
    }

    while (v4 != a2);
    return v5 + 6;
  }

  return a3;
}

void *sub_240BC61DC(void *result, uint64_t a2)
{
  v3 = result;
  for (i = result[1]; i != a2; result = sub_240BC6B1C(i))
  {
    i -= 48;
  }

  v3[1] = a2;
  return result;
}

void sub_240BC622C(uint64_t a1, char **a2)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = 0;
  v7 = v5 - v4;
  if (v5 != v4)
  {
    v8 = 0;
    v9 = v7 >> 4;
    if (v9 <= 1)
    {
      v9 = 1;
    }

    do
    {
      if (!v8 || *v4 == 1)
      {
        ++v6;
      }

      ++v8;
      v4 += 16;
    }

    while (v9 != v8);
  }

  v10 = (30 * v6 + 18);
  v11 = *a2;
  v12 = a2[1];
  v13 = v12 - *a2;
  if (v10 <= v13)
  {
    if (v10 < v13)
    {
      v12 = &v11[v10];
      a2[1] = &v11[v10];
    }
  }

  else
  {
    sub_240B26918(a2, v10 - v13);
    v11 = *a2;
    v12 = a2[1];
  }

  LOBYTE(v14) = v6;
  if (v6 < 0x80)
  {
    v15 = 0;
LABEL_19:
    v11[v15++] = v14;
  }

  else
  {
    v15 = 0;
    v16 = v12 - v11;
    v17 = v6;
    while (1)
    {
      v18 = v15;
      if (v15 > v16)
      {
        break;
      }

      ++v15;
      v11[v18] = v17 | 0x80;
      v14 = v17 >> 7;
      v19 = v17 >> 14;
      v17 >>= 7;
      if (!v19)
      {
        if (v18 < v16)
        {
          goto LABEL_19;
        }

        break;
      }
    }
  }

  v20 = &v11[v15];
  *v20 = bswap32(*(a1 + 4));
  *(v20 + 1) = bswap32(*(a1 + 8));
  v21 = v15 + 8;
  v22 = *(a1 + 16);
  v23 = *(a1 + 24);
  v24 = (v23 - v22) >> 4;
  if (v24 < 2)
  {
    v35 = 0;
    v27 = 0;
    v46 = *(v22 + 8);
  }

  else
  {
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = -1;
    v29 = 1;
    do
    {
      if (*(v22 + 16 * v29) == 1)
      {
        v30 = *(v22 + 16 * v25 + 8);
        if (v28 != -1)
        {
          v30 -= *(v22 + 16 * v28 + 8);
        }

        v31 = a2[1] - *a2;
        if (v30 < 0x80)
        {
          v32 = v21;
          LOBYTE(v33) = v30;
LABEL_31:
          if (v32 <= v31)
          {
            v21 = v32 + 1;
            v11[v32] = v33;
          }

          else
          {
            v21 = v32;
          }
        }

        else
        {
          while (v21 <= v31)
          {
            v32 = v21 + 1;
            v11[v21] = v30 | 0x80;
            v33 = v30 >> 7;
            v34 = v30 >> 14;
            ++v21;
            v30 >>= 7;
            if (!v34)
            {
              goto LABEL_31;
            }
          }
        }

        v36 = v27;
        v37 = a2[1] - *a2;
        if (v27 < 0x80)
        {
          v38 = v21;
          LOBYTE(v39) = v36;
LABEL_39:
          if (v38 <= v37)
          {
            v21 = v38 + 1;
            v11[v38] = v39;
          }

          else
          {
            v21 = v38;
          }
        }

        else
        {
          while (v21 <= v37)
          {
            v38 = v21 + 1;
            v11[v21] = v36 | 0x80;
            v39 = v36 >> 7;
            v40 = v36 >> 14;
            ++v21;
            v36 >>= 7;
            if (!v40)
            {
              goto LABEL_39;
            }
          }
        }

        v41 = v29 - v25;
        v42 = a2[1] - *a2;
        if ((v29 - v25) < 0x80)
        {
          v43 = v21;
          LOBYTE(v44) = v29 - v25;
LABEL_47:
          if (v43 <= v42)
          {
            v21 = v43 + 1;
            v11[v43] = v44;
          }

          else
          {
            v21 = v43;
          }
        }

        else
        {
          while (v21 <= v42)
          {
            v43 = v21 + 1;
            v11[v21] = v41 | 0x80;
            v44 = v41 >> 7;
            v45 = v41 >> 14;
            ++v21;
            v41 >>= 7;
            if (!v45)
            {
              goto LABEL_47;
            }
          }
        }

        v22 = *(a1 + 16);
        v23 = *(a1 + 24);
        v27 = v26;
        v26 += *(v22 + 16 * v29 + 4);
        v35 = v29;
        v28 = v25;
        v25 = v29;
      }

      else
      {
        v35 = v25;
      }

      ++v29;
    }

    while (v29 < (v23 - v22) >> 4);
    v24 = (v23 - v22) >> 4;
    v46 = *(v22 + 16 * v35 + 8);
    if (v28 != -1)
    {
      v46 -= *(v22 + 16 * v28 + 8);
    }
  }

  v47 = a2[1] - *a2;
  if (v46 < 0x80)
  {
    v48 = v21;
    LOBYTE(v49) = v46;
LABEL_60:
    if (v48 <= v47)
    {
      v21 = v48 + 1;
      v11[v48] = v49;
    }

    else
    {
      v21 = v48;
    }
  }

  else
  {
    while (v21 <= v47)
    {
      v48 = v21 + 1;
      v11[v21] = v46 | 0x80;
      v49 = v46 >> 7;
      v50 = v46 >> 14;
      ++v21;
      v46 >>= 7;
      if (!v50)
      {
        goto LABEL_60;
      }
    }
  }

  v51 = v24 - v35;
  v52 = v27;
  v53 = a2[1] - *a2;
  if (v27 < 0x80)
  {
    v54 = v21;
    LOBYTE(v55) = v52;
LABEL_68:
    if (v54 <= v53)
    {
      v21 = v54 + 1;
      v11[v54] = v55;
    }

    else
    {
      v21 = v54;
    }
  }

  else
  {
    while (v21 <= v53)
    {
      v54 = v21 + 1;
      v11[v21] = v52 | 0x80;
      v55 = v52 >> 7;
      v56 = v52 >> 14;
      ++v21;
      v52 >>= 7;
      if (!v56)
      {
        goto LABEL_68;
      }
    }
  }

  v57 = v51;
  v58 = a2[1] - *a2;
  if (v51 < 0x80)
  {
    v59 = v21;
    LOBYTE(v60) = v57;
LABEL_76:
    if (v59 <= v58)
    {
      v21 = v59 + 1;
      v11[v59] = v60;
    }

    else
    {
      v21 = v59;
    }
  }

  else
  {
    while (v21 <= v58)
    {
      v59 = v21 + 1;
      v11[v21] = v57 | 0x80;
      v60 = v57 >> 7;
      v61 = v57 >> 14;
      ++v21;
      v57 >>= 7;
      if (!v61)
      {
        goto LABEL_76;
      }
    }
  }

  v62 = a2[1] - *a2;
  if (v21 <= v62)
  {
    if (v21 < v62)
    {
      a2[1] = &(*a2)[v21];
    }
  }

  else
  {

    sub_240B26918(a2, v21 - v62);
  }
}

uint64_t sub_240BC6698(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4)
{
  v7 = *(a1 + 144);
  if (a3 <= 0xFFFFFFF7)
  {
    v8 = 8;
  }

  else
  {
    v8 = 16;
  }

  v9 = v7 + v8;
  v10 = v7 + v8;
  v11 = *(a1 + 176);
  if (v11)
  {
    v12 = v11[3];
    if (v12)
    {
      v12(*v11, v7 + v8);
      *(a1 + 160) = v10;
    }
  }

  *(a1 + 144) = v10;
  v13 = a4[1];
  v14 = v13[1];
  if (v14)
  {
    v15 = 0;
    v16 = *a4;
    while (1)
    {
      v17 = v14 - v15;
      sub_240BC219C(&__dst, v16 + 104, 1uLL, v14 - v15);
      result = v35;
      if (v35)
      {
        break;
      }

      v19 = __dst;
      v29 = __dst;
      v30 = v33;
      v31 = v34;
      __dst = 0;
      *&v33 = 0;
      if (v30 < v17)
      {
        v17 = v30;
      }

      memcpy(v19, (*v13 + v15), v17);
      v29 += v17;
      *&v30 = v30 - v17;
      *(&v30 + 1) += v17;
      sub_240B96F0C(&v29);
      if (!v35)
      {
        sub_240B96F0C(&__dst);
      }

      v15 += v17;
      if (v15 >= v14)
      {
        v10 = *(a1 + 144);
        goto LABEL_16;
      }
    }
  }

  else
  {
LABEL_16:
    v20 = *(a1 + 176);
    if (v20)
    {
      v21 = v20[3];
      if (v21)
      {
        v21(*v20, v7);
        *(a1 + 160) = v7;
      }
    }

    *(a1 + 144) = v7;
    if (v10 - v9 <= a3)
    {
      sub_240BC219C(&__dst, a1 + 104, v8, 0);
      result = v35;
      if (!v35)
      {
        v22 = a3 > 0xFFFFFFF7;
        v23 = __dst;
        v24 = v33;
        v31 = v34;
        __dst = 0;
        *&v33 = 0;
        v25 = sub_240BC2BA8(a2, v10 - v9, v22, v23);
        v29 = v23 + v25;
        *&v30 = v24 - v25;
        *(&v30 + 1) = *(&v24 + 1) + v25;
        sub_240B96F0C(&v29);
        sub_240B96F0C(&__dst);
        v26 = *(a1 + 176);
        if (v26)
        {
          v27 = v26[3];
          if (v27)
          {
            v27(*v26, v10);
            *(a1 + 160) = v10;
          }
        }

        *(a1 + 144) = v10;
        sub_240BC2554((a1 + 104));
        return 0;
      }
    }

    else
    {
      result = 1;
      *(a1 + 2852) = 1;
    }
  }

  return result;
}

void *sub_240BC68B8(void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = result;
    v4 = *(v2 + 1176);
    if (v4)
    {
      *(v2 + 1184) = v4;
      operator delete(v4);
    }

    v6 = (v2 + 1152);
    sub_240BA4110(&v6);
    sub_240B8D650(v2 + 848);
    if (*(v2 + 751) < 0)
    {
      operator delete(*(v2 + 728));
    }

    v5 = *(v2 + 704);
    if (v5)
    {
      *(v2 + 712) = v5;
      operator delete(v5);
    }

    sub_240B7BB60(v2 + 8);
    return (*(v3[1] + 16))(*v3[1], v2);
  }

  return result;
}

void *sub_240BC6990(void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = result;
    v4 = *(v2 + 8);
    if (v4)
    {
      *(v2 + 16) = v4;
      operator delete(v4);
    }

    return (*(v3[1] + 16))(*v3[1], v2);
  }

  return result;
}

uint64_t sub_240BC69E4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a3;
  v7 = a2;
  v5[0] = &v6;
  v5[1] = &v7;
  if (!a1)
  {
    v8[0] = 0;
    v8[1] = v8;
    a1 = v8;
  }

  return sub_240BC6A2C(a1, a4, v5);
}

uint64_t sub_240BC6A2C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v6[0] = sub_240B2AC64;
    v6[1] = a3;
    if (*result)
    {
      return (*result)(*(result + 8), v6, sub_240BC6AF4, sub_240BC6ADC, 0, a2);
    }

    else
    {
      v4 = 0;
      v5 = a2;
      do
      {
        result = (**a3)(**(a3 + 8), v4++);
      }

      while (v5 != v4);
    }
  }

  return result;
}

uint64_t sub_240BC6AF4(unsigned int (**a1)(uint64_t), uint64_t a2)
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

void *sub_240BC6B1C(uint64_t a1)
{
  v2 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v2)
  {
    (*(a1 + 40))();
  }

  sub_240BC6990((a1 + 16), 0);

  return sub_240BC68B8(a1, 0);
}

uint64_t JxlEncoderSetColorEncoding(uint64_t a1, int *a2)
{
  if ((*(a1 + 2867) & 1) == 0 || *(a1 + 2868) == 1)
  {
    goto LABEL_3;
  }

  if (sub_240B52E74(a1 + 368, a2))
  {
    result = 1;
    *(a1 + 2852) = 1;
    return result;
  }

  sub_240B25034(a1 + 352);
  v4 = *(a1 + 2700);
  if (*(a1 + 408) != 1)
  {
    if (v4 == 3)
    {
      goto LABEL_10;
    }

LABEL_3:
    *(a1 + 2852) = 129;
    return 1;
  }

  if (v4 != 1)
  {
    goto LABEL_3;
  }

LABEL_10:
  *(a1 + 2868) = 1;
  if (*(a1 + 2869))
  {
    return 0;
  }

  if (*(a1 + 416))
  {
    v5 = 255.0;
  }

  else
  {
    v6 = *(a1 + 424);
    v5 = 255.0;
    if (v6 == 18)
    {
      v5 = 1000.0;
    }

    if (v6 == 16)
    {
      v5 = 10000.0;
    }
  }

  result = 0;
  *(a1 + 604) = v5;
  return result;
}

uint64_t JxlEncoderSetICCProfile(uint64_t a1, char *a2, unint64_t a3)
{
  if ((*(a1 + 2867) & 1) == 0 || *(a1 + 2868) == 1)
  {
    v4 = 129;
LABEL_4:
    *(a1 + 2852) = v4;
    return 1;
  }

  if (!a3)
  {
    v4 = 4;
    goto LABEL_4;
  }

  __p[0] = 0;
  __p[1] = 0;
  v13 = 0;
  sub_240B51508(__p, a2, &a2[a3], a3);
  if (*(a1 + 296) != 1)
  {
    v8 = *(a1 + 384);
    if (v8)
    {
      *(a1 + 392) = v8;
      operator delete(v8);
      *(a1 + 384) = 0;
      *(a1 + 392) = 0;
      *(a1 + 400) = 0;
    }

    *(a1 + 384) = *__p;
    *(a1 + 400) = v13;
    __p[1] = 0;
    v13 = 0;
    __p[0] = 0;
    *(a1 + 380) = 0;
    *(a1 + 361) = 1;
LABEL_14:
    v9 = *(a1 + 2700);
    if (*(a1 + 408) == 1)
    {
      if (v9 != 1)
      {
        goto LABEL_16;
      }
    }

    else if (v9 != 3)
    {
      goto LABEL_16;
    }

    *(a1 + 2868) = 1;
    if ((*(a1 + 2869) & 1) == 0)
    {
      if (*(a1 + 416))
      {
        v10 = 255.0;
      }

      else
      {
        v11 = *(a1 + 424);
        v10 = 255.0;
        if (v11 == 18)
        {
          v10 = 1000.0;
        }

        if (v11 == 16)
        {
          v10 = 10000.0;
        }
      }

      *(a1 + 604) = v10;
    }

    if (!*(a1 + 2684) && *(a1 + 296) == 1)
    {
      sub_240B2A078(a1 + 352, *(a1 + 232), *(a1 + 240));
    }

    v5 = 0;
    goto LABEL_30;
  }

  v7 = sub_240B52D9C(a1 + 368, __p, *(a1 + 232), *(a1 + 240));
  *(a1 + 361) = !v7;
  if (!v7)
  {
    goto LABEL_14;
  }

LABEL_16:
  *(a1 + 2852) = 4;
  v5 = 1;
LABEL_30:
  if (__p[0])
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_240BC6DF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double JxlEncoderInitBasicInfo(uint64_t a1)
{
  *a1 = xmmword_240C11970;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0x300000001;
  *(a1 + 96) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 56) = 0;
  *&result = 0x10000000ALL;
  *(a1 + 80) = xmmword_240C11980;
  return result;
}

double JxlEncoderInitFrameHeader(uint64_t a1)
{
  result = 0.0;
  *a1 = xmmword_240C11990;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  return result;
}

void *JxlEncoderInitBlendInfo(void *result)
{
  *result = 0;
  result[1] = 0;
  return result;
}

uint64_t JxlEncoderSetBasicInfo(uint64_t a1, uint64_t a2)
{
  if (sub_240B57890(a1 + 728, *(a2 + 4), *(a2 + 8)) || sub_240BC7174(*(a2 + 12), *(a2 + 16)))
  {
    goto LABEL_3;
  }

  v6 = *(a2 + 12);
  *(a1 + 332) = v6;
  v7 = *(a2 + 16);
  *(a1 + 336) = v7;
  *(a1 + 328) = v7 != 0;
  v8 = (!*(a2 + 36) || v6 <= 0xC) && *(a2 + 60) < 0xDu;
  *(a1 + 344) = v8;
  v9 = *(a2 + 96);
  if (*(a2 + 96) && *(a2 + 96) != *(a2 + 4))
  {
    if (v9 > 0x40000000)
    {
      goto LABEL_3;
    }

    v10 = *(a2 + 100);
    if (v10 > 0x40000000 || sub_240B57890(a1 + 560, v9, v10))
    {
      goto LABEL_3;
    }

    *(a1 + 558) = 1;
  }

  v11 = *(a2 + 56);
  *(a1 + 624) = v11;
  sub_240B5AAEC((a1 + 632), v11);
  v12 = *(a2 + 60);
  if (*(a2 + 56))
  {
    if (v12)
    {
      *&v31[4] = 0u;
      v32 = 0u;
      LODWORD(__p) = 0;
      HIDWORD(__p) = v12;
      *v31 = *(a2 + 64);
      if (JxlEncoderSetExtraChannelInfo(a1, 0, &__p))
      {
        goto LABEL_3;
      }
    }
  }

  else if (v12)
  {
    goto LABEL_3;
  }

  *(a1 + 345) = *(a2 + 36) == 0;
  v13 = *(a2 + 48);
  if ((v13 - 1) > 7)
  {
    goto LABEL_3;
  }

  *(a1 + 552) = v13;
  if ((*(a2 + 52) | 2) != 3)
  {
    goto LABEL_3;
  }

  v14 = *(a2 + 20);
  if (v14 != 0.0)
  {
    goto LABEL_23;
  }

  if (*(a1 + 2868) == 1)
  {
    if (*(a1 + 416))
    {
      v14 = 255.0;
    }

    else
    {
      v29 = *(a1 + 424);
      v14 = 255.0;
      if (v29 == 18)
      {
        v14 = 1000.0;
      }

      if (v29 == 16)
      {
        v14 = 10000.0;
      }
    }

LABEL_23:
    *(a1 + 604) = v14;
    *(a1 + 2869) = 1;
  }

  *(a1 + 608) = *(a2 + 24);
  *(a1 + 612) = *(a2 + 28) != 0;
  *(a1 + 616) = *(a2 + 32);
  v15 = *(a2 + 188);
  v17 = *(a2 + 160);
  v16 = *(a2 + 176);
  *(a1 + 2792) = *(a2 + 144);
  *(a1 + 2808) = v17;
  *(a1 + 2824) = v16;
  *(a1 + 2836) = v15;
  v19 = *(a2 + 112);
  v18 = *(a2 + 128);
  v20 = *(a2 + 96);
  *(a1 + 2728) = *(a2 + 80);
  *(a1 + 2744) = v20;
  *(a1 + 2760) = v19;
  *(a1 + 2776) = v18;
  v22 = *(a2 + 48);
  v21 = *(a2 + 64);
  v23 = *(a2 + 32);
  *(a1 + 2664) = *(a2 + 16);
  *(a1 + 2680) = v23;
  *(a1 + 2696) = v22;
  *(a1 + 2712) = v21;
  *(a1 + 2648) = *a2;
  *(a1 + 2867) = 1;
  v24 = *(a2 + 44);
  *(a1 + 557) = v24 != 0;
  if (!v24)
  {
    goto LABEL_28;
  }

  v25 = *(a2 + 84);
  if (!v25 || (v26 = *(a2 + 80)) == 0)
  {
LABEL_3:
    *(a1 + 2852) = 129;
    return 1;
  }

  *(a1 + 696) = v26;
  *(a1 + 700) = v25;
  *(a1 + 704) = *(a2 + 88);
  *(a1 + 708) = *(a2 + 92) != 0;
LABEL_28:
  __p = 0;
  *v31 = 0;
  *&v31[8] = 0;
  v27 = sub_240BC5BBC(a1, &__p);
  if (v27 == -1 || (v4 = 0, v28 = *(a1 + 300), v28 < v27) && v28 != -1)
  {
    *(a1 + 2852) = 129;
    v4 = 1;
  }

  if ((v31[15] & 0x80000000) != 0)
  {
    operator delete(__p);
  }

  return v4;
}

void sub_240BC7158(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_240BC7174(unsigned int a1, unsigned int a2)
{
  if (!a2)
  {
    if (a1 - 1 >= 0x18)
    {
      sub_240BC6954("%s:%d: Invalid value for bits_per_sample\n");
      return 1;
    }

    return 0;
  }

  if (a2 <= 8 && a2 + 24 >= a1 && a2 + 3 <= a1)
  {
    return 0;
  }

  sub_240BC6954("%s:%d: Invalid float description\n");
  return 1;
}

uint64_t JxlEncoderSetExtraChannelInfo(uint64_t a1, unint64_t a2, _DWORD *a3)
{
  if (*(a1 + 624) <= a2 || sub_240BC7174(a3[1], a3[2]))
  {
    *(a1 + 2852) = 129;
    return 1;
  }

  else
  {
    v8 = *(a1 + 632) + 96 * a2;
    v9 = a3[1];
    *(v8 + 12) = *a3;
    v10 = *(a1 + 344);
    if (v9 >= 0xD)
    {
      v10 = 0;
    }

    *(a1 + 344) = v10;
    v11 = a3[2];
    v12 = a3[3];
    *(v8 + 28) = v9;
    *(v8 + 32) = v11;
    *(v8 + 24) = v11 != 0;
    *(v8 + 40) = v12;
    MEMORY[0x245CCE410](v8 + 48, &unk_240C888E1);
    *(v8 + 72) = a3[5] != 0;
    *(v8 + 92) = a3[10];
    *(v8 + 76) = a3[6];
    *(v8 + 80) = a3[7];
    *(v8 + 84) = a3[8];
    *(v8 + 88) = a3[9];
    __p[0] = 0;
    __p[1] = 0;
    v16 = 0;
    v13 = sub_240BC5BBC(a1, __p);
    if (v13 == -1 || (v6 = 0, v14 = *(a1 + 300), v14 < v13) && v14 != -1)
    {
      *(a1 + 2852) = 129;
      v6 = 1;
    }

    if (SHIBYTE(v16) < 0)
    {
      operator delete(__p[0]);
    }
  }

  return v6;
}

void sub_240BC733C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double JxlEncoderInitExtraChannelInfo(int a1, uint64_t a2)
{
  *a2 = a1;
  *(a2 + 4) = 8;
  result = 0.0;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0;
  return result;
}

uint64_t JxlEncoderSetUpsamplingMode(_DWORD *a1, unint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  if (a2 > 3)
  {
    if (a2 != 4 && a2 != 8)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (a2 == 1)
    {
      return 0;
    }

    if (a2 != 2)
    {
      goto LABEL_8;
    }
  }

  if (a3 <= -2)
  {
LABEL_8:
    v5 = 129;
LABEL_11:
    a1[713] = v5;
    return 1;
  }

  if (a3 >= 2)
  {
    v5 = 128;
    goto LABEL_11;
  }

  v7 = 285;
  if (a2 == 4)
  {
    v7 = 230;
  }

  v8 = &a1[v7];
  if (a2 == 2)
  {
    v9 = a1 + 215;
  }

  else
  {
    v9 = &a1[v7];
  }

  if (!a3)
  {
    v10 = 840;
    if (a2 == 4)
    {
      v10 = 220;
    }

    if (a2 == 2)
    {
      v11 = 60;
    }

    else
    {
      v11 = v10;
    }

    a1[214] |= a2 >> 1;
    bzero(v9, v11);
    switch(a2)
    {
      case 2uLL:
        result = 0;
        a1[224] = 1065353216;
        return result;
      case 4uLL:
        v14 = 0;
        *&v15 = 0x1800000013;
        DWORD2(v15) = 49;
        do
        {
          v9[*(&v15 + v14)] = 1065353216;
          v14 += 4;
        }

        while (v14 != 12);
        break;
      case 8uLL:
        for (i = 0; i != 10; ++i)
        {
          result = 0;
          v9[dword_240C85134[i]] = 1065353216;
        }

        return result;
    }

    return 0;
  }

  if (a3 == -1)
  {
    result = 0;
    a1[214] &= ~(a2 >> 1);
    return result;
  }

  JxlEncoderSetUpsamplingMode(a1, a2, 0);
  if (a2 != 8)
  {
    if (a2 == 4)
    {
      result = 0;
      v8[19] = 0;
      v8[24] = 1056964608;
      return result;
    }

    return 0;
  }

  v13 = 0;
  v15 = xmmword_240C119A0;
  do
  {
    v9[*(&v15 + v13)] = 0;
    v13 += 4;
  }

  while (v13 != 16);
  result = 0;
  v9[54] = 1056964608;
  v9[124] = 1056964608;
  return result;
}

double JxlEncoderSetExtraChannelName(uint64_t a1, unint64_t a2, void *__src, size_t __n)
{
  if (*(a1 + 624) <= a2)
  {
    *(a1 + 2852) = 129;
  }

  else
  {
    if (__n >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_240B29A3C();
    }

    if (__n >= 0x17)
    {
      operator new();
    }

    HIBYTE(v10) = __n;
    if (__n)
    {
      memcpy(&__dst, __src, __n);
    }

    *(&__dst + __n) = 0;
    v7 = *(a1 + 632) + 96 * a2;
    if (*(v7 + 71) < 0)
    {
      operator delete(*(v7 + 48));
    }

    result = *&__dst;
    *(v7 + 48) = __dst;
    *(v7 + 64) = v10;
  }

  return result;
}

char *JxlEncoderFrameSettingsCreate(uint64_t a1, uint64_t a2)
{
  v3 = (*(a1 + 8))(*a1, 784, 0x10F2000DE42B6F0);
  v4 = v3;
  if (v3)
  {
    bzero(v3, 0x310uLL);
    sub_240B94630(v4 + 16);
  }

  v6[0] = 0;
  v6[1] = a1;
  sub_240BC7C18(v6);
  return 0;
}

void sub_240BC79B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_240BC7C18(va);
  _Unwind_Resume(a1);
}

void sub_240BC79D4(const void **a1, unint64_t a2, __int32 *a3, int16x4_t a4)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = (v4 - *a1) >> 2;
  if (a2 <= v6)
  {
    if (a2 >= v6)
    {
      return;
    }

    v12 = &v5[4 * a2];
  }

  else
  {
    v7 = a2 - v6;
    v8 = a1[2];
    if (v7 > (v8 - v4) >> 2)
    {
      if (!(a2 >> 62))
      {
        v9 = v8 - v5;
        v10 = (v8 - v5) >> 1;
        if (v10 <= a2)
        {
          v10 = a2;
        }

        if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v11 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v11 = v10;
        }

        sub_240B228D4(v11);
      }

      sub_240B228BC();
    }

    a4.i32[0] = *a3;
    v13 = (v7 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
    v14 = vdupq_n_s64(v13);
    v15 = v13 - ((v7 + 0x3FFFFFFFFFFFFFFFLL) & 3);
    v16 = v4 + 8;
    v17 = -4;
    do
    {
      v18 = vdupq_n_s64(v17 + 4);
      v19 = vmovn_s64(vcgeq_u64(v14, vorrq_s8(v18, xmmword_240C111D0)));
      if (vuzp1_s16(v19, a4).u8[0])
      {
        *(v16 - 2) = a4.i32[0];
      }

      if (vuzp1_s16(v19, a4).i8[2])
      {
        *(v16 - 1) = a4.i32[0];
      }

      if (vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v14, vorrq_s8(v18, xmmword_240C111C0)))).i32[1])
      {
        *v16 = a4.i32[0];
        v16[1] = a4.i32[0];
      }

      v17 += 4;
      v16 += 4;
    }

    while (v15 != v17);
    v12 = &v4[4 * v7];
  }

  a1[1] = v12;
}

void *sub_240BC7C18(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(v1 + 759) < 0)
    {
      operator delete(*(v1 + 736));
    }

    v3 = *(v1 + 712);
    if (v3)
    {
      *(v1 + 720) = v3;
      operator delete(v3);
    }

    sub_240B7BB60(v1 + 16);
    return (*(v2[1] + 16))(*v2[1], v1);
  }

  return result;
}

uint64_t JxlEncoderSetFrameLossless(_BYTE *a1, int a2)
{
  if (a2 && (v2 = *a1, *(*a1 + 2867) == 1) && *(v2 + 345) == 1)
  {
    *(v2 + 2852) = 129;
    return 1;
  }

  else
  {
    v3 = 0;
    a1[8] = a2 != 0;
  }

  return v3;
}

uint64_t JxlEncoderSetFrameDistance(float *a1, float a2)
{
  if (a2 >= 0.0 && a2 <= 25.0)
  {
    result = 0;
    if (a2 < 0.01 && a2 > 0.0)
    {
      a2 = 0.01;
    }

    a1[4] = a2;
  }

  else
  {
    *(*a1 + 2852) = 129;
    return 1;
  }

  return result;
}

uint64_t JxlEncoderSetExtraChannelDistance(const void **a1, unint64_t a2, double a3)
{
  v4 = *(*a1 + 156);
  if (v4 > a2 && (*&a3 == -1.0 || (*&a3 >= 0.0 ? (v5 = *&a3 <= 25.0) : (v5 = 0), v5)))
  {
    if (*&a3 >= 0.01 || *&a3 <= 0.0)
    {
      v8 = *&a3;
    }

    else
    {
      v8 = 0.01;
    }

    v9 = a1[3];
    v10 = a1 + 3;
    if (a2 >= (a1[4] - v9) >> 2)
    {
      v11 = 0;
      sub_240BC79D4(v10, v4, &v11, *&a3);
      v9 = *v10;
    }

    result = 0;
    *&v9[4 * a2] = v8;
  }

  else
  {
    *(*a1 + 713) = 129;
    return 1;
  }

  return result;
}

float JxlEncoderDistanceFromQuality(float a1)
{
  v1 = 0.0;
  if (a1 < 100.0)
  {
    if (a1 >= 30.0)
    {
      return (100.0 - a1) * 0.09 + 0.1;
    }

    else
    {
      return a1 * -1.15 + a1 * 0.0176666667 * a1 + 25.0;
    }
  }

  return v1;
}

uint64_t JxlEncoderFrameSettingsSetOption(uint64_t *a1, int a2, unint64_t a3)
{
  switch(a2)
  {
    case 0:
      if (*(*a1 + 2870) == 1)
      {
        if (a3 - 12 <= 0xFFFFFFFFFFFFFFF4)
        {
LABEL_21:
          *(*a1 + 2852) = 128;
          return 1;
        }
      }

      else if (a3 - 11 <= 0xFFFFFFFFFFFFFFF5)
      {
        goto LABEL_21;
      }

      result = 0;
      *(a1 + 16) = 10 - a3;
      return result;
    case 1:
      if (a3 >= 5)
      {
        goto LABEL_49;
      }

      result = 0;
      a1[9] = a3;
      return result;
    case 2:
      if (a3 + 1 > 9 || ((1 << (a3 + 1)) & 0x22D) == 0)
      {
        goto LABEL_3;
      }

      result = 0;
      *(a1 + 99) = a3;
      return result;
    case 3:
      if (a3 + 1 > 9 || ((1 << (a3 + 1)) & 0x22D) == 0)
      {
        goto LABEL_3;
      }

      result = 0;
      *(a1 + 100) = a3;
      return result;
    case 4:
      if (a3 > 1)
      {
        return 1;
      }

      result = 0;
      *(a1 + 404) = a3 == 1;
      return result;
    case 6:
    case 7:
    case 8:
    case 10:
    case 11:
    case 12:
    case 13:
    case 16:
    case 17:
    case 18:
    case 23:
    case 30:
    case 33:
    case 35:
    case 36:
    case 37:
      if (a3 - 2 <= 0xFFFFFFFFFFFFFFFCLL)
      {
        goto LABEL_3;
      }

      switch(a2)
      {
        case 6:
          result = 0;
          *(a1 + 93) = a3;
          break;
        case 7:
          result = 0;
          *(a1 + 94) = a3;
          break;
        case 8:
          result = 0;
          *(a1 + 95) = a3;
          break;
        case 9:
          goto LABEL_11;
        case 10:
          result = 0;
          *(a1 + 96) = a3;
          break;
        case 11:
          result = 0;
          *(a1 + 84) = a3 == 1;
          break;
        case 12:
          result = 0;
          *(a1 + 132) = a3;
          break;
        case 13:
          result = 0;
          *(a1 + 106) = a3 == 1;
          break;
        case 14:
          goto LABEL_13;
        case 15:
          goto LABEL_40;
        case 16:
          result = 0;
          *(a1 + 92) = a3;
          break;
        case 17:
          result = 0;
          *(a1 + 104) = a3;
          break;
        case 18:
          result = 0;
          *(a1 + 105) = a3;
          break;
        case 19:
          goto LABEL_36;
        case 22:
          goto LABEL_28;
        case 23:
          result = 0;
          *(a1 + 392) = a3 == 1;
          break;
        case 24:
          goto LABEL_42;
        case 25:
          goto LABEL_47;
        case 26:
          goto LABEL_9;
        case 27:
          goto LABEL_45;
        case 29:
          goto LABEL_17;
        case 30:
          result = 0;
          v7 = a3 == -1 || a3 != 0;
          *(a1 + 201) = v7;
          break;
        case 31:
          goto LABEL_6;
        case 32:
          goto LABEL_38;
        case 33:
          result = 0;
          *(a1 + 202) = a3 != 0;
          break;
        case 34:
          goto LABEL_52;
        case 35:
          result = 0;
          *(a1 + 203) = a3 != 0;
          break;
        case 36:
          result = 0;
          *(a1 + 204) = a3 != 0;
          break;
        case 37:
          result = 0;
          *(a1 + 205) = a3 != 0;
          break;
        default:
          goto LABEL_49;
      }

      return result;
    case 9:
      if (a3 - 4 <= 0xFFFFFFFFFFFFFFFALL)
      {
        goto LABEL_3;
      }

LABEL_11:
      result = 0;
      *(a1 + 25) = a3;
      return result;
    case 14:
      if (a3 <= -2)
      {
        goto LABEL_3;
      }

LABEL_13:
      result = 0;
      a1[14] = a3;
      return result;
    case 15:
      if (a3 <= -2)
      {
        goto LABEL_3;
      }

LABEL_40:
      result = 0;
      a1[15] = a3;
      return result;
    case 19:
      if (a3 - 3 <= 0xFFFFFFFFFFFFFFFBLL)
      {
        goto LABEL_3;
      }

LABEL_36:
      result = 0;
      *(a1 + 32) = a3;
      return result;
    case 22:
      if (a3 - 70914 < 0xFFFFFFFFFFFEEAFDLL)
      {
        goto LABEL_3;
      }

LABEL_28:
      result = 0;
      if (a3 == -1)
      {
        *(a1 + 97) = 1024;
      }

      else
      {
        *(a1 + 97) = a3;
      }

      return result;
    case 24:
      if (a3 - 3 <= 0xFFFFFFFFFFFFFFFBLL)
      {
        goto LABEL_3;
      }

LABEL_42:
      result = 0;
      if (a3 == -1)
      {
        *(a1 + 20) = 0;
      }

      else
      {
        *(a1 + 20) = a3;
      }

      return result;
    case 25:
      if (a3 - 42 <= 0xFFFFFFFFFFFFFFD4)
      {
        goto LABEL_3;
      }

LABEL_47:
      result = 0;
      *(a1 + 93) = a3;
      return result;
    case 26:
      if (a3 - 4 <= 0xFFFFFFFFFFFFFFFALL)
      {
        goto LABEL_3;
      }

LABEL_9:
      result = 0;
      *(a1 + 22) = a3;
      return result;
    case 27:
      if (a3 - 16 <= 0xFFFFFFFFFFFFFFEELL)
      {
        goto LABEL_3;
      }

LABEL_45:
      result = 0;
      *(a1 + 70) = a3;
      return result;
    case 29:
      if (a3 - 12 <= 0xFFFFFFFFFFFFFFF2)
      {
        goto LABEL_3;
      }

LABEL_17:
      result = 0;
      if (a3 == -1)
      {
        *(a1 + 59) = 0;
      }

      else
      {
        *(a1 + 59) = a3;
      }

      return result;
    case 31:
LABEL_6:
      if (a3 >= 2)
      {
        goto LABEL_49;
      }

      result = 0;
      *(a1 + 772) = 1;
      return result;
    case 32:
      if (a3 - 12 <= 0xFFFFFFFFFFFFFFF2)
      {
LABEL_3:
        v4 = *a1;
        v5 = 129;
LABEL_50:
        *(v4 + 2852) = v5;
        return 1;
      }

      else
      {
LABEL_38:
        result = 0;
        *(a1 + 17) = a3;
        *(*a1 + 2872) = a3;
      }

      return result;
    case 34:
      if (a3 - 4 <= 0xFFFFFFFFFFFFFFFALL)
      {
        goto LABEL_49;
      }

LABEL_52:
      result = 0;
      *(a1 + 105) = a3;
      return result;
    case 38:
      if (a3 >= 2)
      {
        goto LABEL_49;
      }

      result = 0;
      *(a1 + 424) = a3;
      return result;
    default:
LABEL_49:
      v4 = *a1;
      v5 = 128;
      goto LABEL_50;
  }
}

uint64_t JxlEncoderFrameSettingsSetFloatOption(float *a1, unsigned int a2, float a3)
{
  if (a2 <= 19)
  {
    if (a2 - 6 >= 0xE && a2 == 5)
    {
      if (a3 >= 0.0)
      {
        v3 = 0;
        a1[52] = a3;
        return v3;
      }

      return 1;
    }

    goto LABEL_8;
  }

  if (a2 > 0x26)
  {
    goto LABEL_21;
  }

  if (((1 << a2) & 0x7FEFC00000) != 0)
  {
LABEL_8:
    v4 = *a1;
    v5 = 128;
LABEL_9:
    *(v4 + 2852) = v5;
    return 1;
  }

  if (a2 == 21)
  {
    if (a3 < -1.0 || a3 > 100.0)
    {
      goto LABEL_33;
    }

    v3 = 0;
    if (a3 >= -0.5)
    {
      a1[96] = a3;
    }

    else
    {
      a1[96] = 80.0;
    }

    return v3;
  }

  if (a2 == 28)
  {
    if (a3 < -1.0 || a3 > 100.0)
    {
      goto LABEL_33;
    }

    v3 = 0;
    if (a3 >= -0.5)
    {
      a1[58] = a3 * 0.01;
    }

    else
    {
      a1[58] = 0.5;
    }
  }

  else
  {
LABEL_21:
    if (a2 != 20)
    {
      goto LABEL_8;
    }

    if (a3 < -1.0 || a3 > 100.0)
    {
LABEL_33:
      v4 = *a1;
      v5 = 129;
      goto LABEL_9;
    }

    v3 = 0;
    if (a3 >= -0.5)
    {
      a1[95] = a3;
    }

    else
    {
      a1[95] = 95.0;
    }
  }

  return v3;
}

char *JxlEncoderCreate(uint64_t *a1)
{
  if (a1)
  {
    v1 = a1[1];
    if ((v1 == 0) != (a1[2] == 0))
    {
      return 0;
    }

    v4 = *a1;
    if (v1)
    {
      v3 = (a1[1])(v4, 2880, 0x10F0040FCD377E1);
    }

    else
    {
      v3 = sub_240B5BFC8(v4, 2880, 0x10F0040FCD377E1);
    }
  }

  else
  {
    v3 = sub_240B5BFC8(0, 2880, 0x10F0040FCD377E1);
  }

  v2 = v3;
  if (v3)
  {
    bzero(v3, 0xB40uLL);
    *(v2 + 5) = 0;
    *(v2 + 4) = v2;
    *(v2 + 3) = 0u;
    *(v2 + 10) = 0;
    *(v2 + 88) = 0u;
    *(v2 + 7) = 0u;
    *(v2 + 13) = v2 + 112;
    *(v2 + 8) = 0u;
    *(v2 + 9) = 0u;
    *(v2 + 154) = 0u;
    *(v2 + 196) = 0x3E800000001;
    *(v2 + 26) = 0;
    *(v2 + 27) = 0;
    *(v2 + 28) = 0;
    sub_240B5B484((v2 + 304));
    sub_240B579D4(v2 + 91);
    sub_240B5B388((v2 + 760));
    *(v2 + 250) = 0;
    *(v2 + 124) = 0u;
    sub_240B94630((v2 + 2008));
  }

  return v2;
}

void sub_240BC8554(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  v8 = *v6;
  if (*v6)
  {
    v3[249] = v8;
    operator delete(v8);
  }

  sub_240B4C100((v3 + 38));
  v9 = *v5;
  if (*v5)
  {
    v3[27] = v9;
    operator delete(v9);
  }

  sub_240BA3664(v4);
  sub_240BC8D5C(va);
  sub_240BC8DB0(va);
  sub_240BC8D24(v3 + 3, 0);
  _Unwind_Resume(a1);
}

void JxlEncoderReset(uint64_t a1)
{
  sub_240BC8D24((a1 + 24), 0);
  sub_240BC61DC((a1 + 80), *(a1 + 80));
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  v3 = *(a1 + 40);
  for (i = *(a1 + 48); i != v3; sub_240BC7C18(i))
  {
    i -= 2;
  }

  *(a1 + 48) = v3;
  *(a1 + 184) = 0;
  *(a1 + 2864) = 0;
  *(a1 + 2856) = 0;
  bzero(&v13, 0x690uLL);
  sub_240B5B484(&v13);
  sub_240B579D4(&v44);
  sub_240B5B388(&v47);
  *(a1 + 312) = v14;
  *(a1 + 328) = v15;
  *(a1 + 336) = v16;
  *(a1 + 344) = v17;
  *(a1 + 360) = v19;
  *(a1 + 368) = v20;
  *(a1 + 373) = *(&v20 + 5);
  v4 = *(a1 + 384);
  if (v4)
  {
    *(a1 + 392) = v4;
    operator delete(v4);
    *(a1 + 384) = 0;
    *(a1 + 392) = 0;
    *(a1 + 400) = 0;
  }

  *(a1 + 384) = *__p;
  *(a1 + 400) = v22;
  __p[1] = 0;
  v22 = 0;
  __p[0] = 0;
  *(a1 + 456) = v26;
  v5 = v24;
  *(a1 + 408) = v23;
  *(a1 + 424) = v5;
  *(a1 + 440) = v25;
  v6 = v29;
  *(a1 + 472) = v27;
  *(a1 + 488) = v28;
  *(a1 + 512) = v6;
  v7 = v31;
  *(a1 + 528) = v30;
  *(a1 + 544) = v7;
  LODWORD(v7) = v32[0];
  *(a1 + 555) = *(v32 + 3);
  *(a1 + 552) = v7;
  v8 = v33;
  *(a1 + 584) = v34;
  *(a1 + 568) = v8;
  v9 = v35;
  *(a1 + 616) = v36;
  *(a1 + 600) = v9;
  *(a1 + 624) = v37;
  sub_240B4B0EC((a1 + 632));
  *(a1 + 632) = v38;
  *(a1 + 640) = v39;
  v39 = 0uLL;
  v38 = 0;
  *(a1 + 664) = v40;
  v10 = v42[0];
  *(a1 + 680) = v41;
  *(a1 + 696) = v10;
  *(a1 + 701) = *(v42 + 5);
  *(a1 + 720) = v43;
  *(a1 + 712) = v42[2];
  *(a1 + 736) = v45;
  *(a1 + 752) = v46;
  *(a1 + 768) = v48;
  v11 = v52;
  *(a1 + 816) = v51;
  *(a1 + 832) = v11;
  *(a1 + 848) = v53[0];
  v12 = v50;
  *(a1 + 784) = v49;
  *(a1 + 800) = v12;
  memcpy((a1 + 856), v53 + 8, 0x464uLL);
  v13 = &unk_2852A1C90;
  v54 = &v38;
  sub_240B4B18C(&v54);
  v18 = &unk_2852A1CB8;
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  bzero(&v13, 0x280uLL);
  sub_240B94630(&v13);
}

void sub_240BC8D0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_240B4C100(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_240BC8D24(uint64_t *result, uint64_t a2)
{
  v3 = *result;
  *result = a2;
  if (v3)
  {
    return (*(result[1] + 16))(*result[1]);
  }

  return result;
}

void sub_240BC8D5C(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_240BC61DC(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_240BC8DB0(void ***a1)
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
        v4 -= 2;
        sub_240BC7C18(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *JxlEncoderDestroy(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = *result;
    v7 = result[2];
    sub_240B7BB60((result + 251));
    v3 = v1[248];
    if (v3)
    {
      v1[249] = v3;
      operator delete(v3);
    }

    v1[38] = &unk_2852A1C90;
    v8 = (v1 + 79);
    sub_240B4B18C(&v8);
    v1[44] = &unk_2852A1CB8;
    v4 = v1[48];
    if (v4)
    {
      v1[49] = v4;
      operator delete(v4);
    }

    v5 = v1[26];
    if (v5)
    {
      v1[27] = v5;
      operator delete(v5);
    }

    v6 = v1[22];
    v1[22] = 0;
    if (v6)
    {
      MEMORY[0x245CCE590](v6, 0x80C402FCC0CB6);
    }

    sub_240BA3610(v1[14]);
    v8 = (v1 + 10);
    sub_240BC8D5C(&v8);
    v8 = (v1 + 5);
    sub_240BC8DB0(&v8);
    sub_240BC8D24(v1 + 3, 0);

    return v7(v2, v1);
  }

  return result;
}

uint64_t JxlEncoderUseContainer(uint64_t a1, int a2)
{
  if (*(a1 + 2864) == 1)
  {
    *(a1 + 2852) = 129;
    return 1;
  }

  else
  {
    result = 0;
    *(a1 + 297) = a2 != 0;
  }

  return result;
}

uint64_t JxlEncoderStoreJPEGMetadata(uint64_t a1, int a2)
{
  if (*(a1 + 2864) == 1)
  {
    *(a1 + 2852) = 129;
    return 1;
  }

  else
  {
    result = 0;
    *(a1 + 299) = a2 != 0;
  }

  return result;
}

uint64_t JxlEncoderSetCodestreamLevel(uint64_t a1, int a2)
{
  v2 = 1;
  v3 = 128;
  v4 = 2852;
  if ((a2 + 1) <= 0xB && ((1 << (a2 + 1)) & 0x841) != 0)
  {
    v2 = *(a1 + 2864);
    v4 = 300;
    if (*(a1 + 2864))
    {
      v4 = 2852;
      v3 = 129;
    }

    else
    {
      v3 = a2;
    }
  }

  *(a1 + v4) = v3;
  return v2;
}

__n128 JxlEncoderSetCms(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 264) = *(a2 + 32);
  *(a1 + 280) = v4;
  *(a1 + 248) = v3;
  *(a1 + 232) = result;
  *(a1 + 296) = 1;
  return result;
}

uint64_t JxlEncoderSetParallelRunner(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = (a1 + 24);
  if (*(a1 + 24))
  {
    v5 = 129;
LABEL_3:
    *(a1 + 2852) = v5;
    return 1;
  }

  v9 = (*(a1 + 8))(*a1, 16, 0xC0000D1025EB5);
  if (v9)
  {
    if (a2)
    {
      v10 = a3;
    }

    else
    {
      v10 = v9;
    }

    *v9 = a2;
    v9[1] = v10;
  }

  sub_240BC8D24(v4, v9);
  *(a1 + 32) = a1;
  if (!*(a1 + 24))
  {
    v5 = 1;
    goto LABEL_3;
  }

  return 0;
}

uint64_t JxlEncoderAddJPEGFrame()
{
  v0 = MEMORY[0x28223BE20]();
  __p[227] = *MEMORY[0x277D85DE8];
  if (*(*v0 + 2865) == 1)
  {
    *(*v0 + 2852) = 129;
  }

  else
  {
    v3 = v2;
    v4 = v1;
    v5 = v0;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    __dst = 0u;
    v13 = 0u;
    sub_240B5B484(v18);
    sub_240B579D4(v19);
    sub_240B5B388(&v20);
    sub_240B309B8(&v21, v18);
    v23 = 0;
    v22 = 0u;
    sub_240BCE214(&v22);
    __p[0] = v18;
    v6 = *(&v22 + 1);
    if (*(&v22 + 1) >= v23)
    {
      v7 = sub_240BCE2D4(&v22, __p);
    }

    else
    {
      sub_240B309B8(*(&v22 + 1), v18);
      v7 = v6 + 448;
    }

    *(&v22 + 1) = v7;
    if (v3 >= 2 && *v4 == 255 && v4[1] == 216)
    {
      v8 = v22;
      while (v7 != v8)
      {
        v7 -= 448;
        sub_240BCD904(v7);
      }

      *(&v22 + 1) = v8;
      sub_240BCE214(&v22);
      __p[0] = v18;
      v9 = *(&v22 + 1);
      if (*(&v22 + 1) >= v23)
      {
        v10 = sub_240BCE2D4(&v22, __p);
      }

      else
      {
        sub_240B309B8(*(&v22 + 1), v18);
        v10 = v9 + 448;
      }

      *(&v22 + 1) = v10;
      operator new();
    }

    *(*v5 + 2852) = 4;
    sub_240BCD6EC(&__dst);
  }

  return 1;
}

void sub_240BCC08C(_Unwind_Exception *a1)
{
  if (v1)
  {
    operator delete(v1);
  }

  sub_240B8D650(&STACK[0xBA0]);
  sub_240BCD6EC(&STACK[0x290]);
  _Unwind_Resume(a1);
}

void sub_240BCC2C8(void *a1, int a2)
{
  if (a2)
  {
    sub_240B2234C(a1);
  }

  JUMPOUT(0x240BCC2C0);
}

uint64_t sub_240BCC2D8(uint64_t *a1, void *a2, unint64_t *a3)
{
  v6 = *a1;
  *a2 = sub_240B57820(*a1 + 728);
  if (*(v6 + 736) == 1)
  {
    LODWORD(v7) = 8 * *(v6 + 740) + 8;
  }

  else
  {
    LODWORD(v7) = *(v6 + 744);
  }

  v7 = v7;
  *a3 = v7;
  if (*(a1 + 168))
  {
    *a2 = *(a1 + 171);
    v7 = *(a1 + 172);
    *a3 = v7;
  }

  if (*(a1 + 404) == 1)
  {
    v8 = *(a1 + 99);
    *a2 = (v8 - 1 + *a2) / v8;
    v7 = (v8 - 1 + *a3) / v8;
    *a3 = v7;
  }

  if (*a2 && v7)
  {
    return 0;
  }

  *(v6 + 2852) = 129;
  return 1;
}

uint64_t JxlEncoderAddBox(uint64_t a1, uint64_t a2, char *a3, unint64_t a4, int a5)
{
  if ((*(a1 + 298) & 1) == 0 || *(a1 + 2866) == 1 || a5 && (*a2 == 30826 ? (v11 = *(a2 + 2) == 108) : (v11 = 0), v11 || *a2 == 1685217898 || *a2 == 1651470946))
  {
    *(a1 + 2852) = 129;
    return 1;
  }

  else
  {
    v12 = (*(a1 + 8))(*a1, 40, 0x1010000AB59948ELL);
    v13 = v12;
    if (v12)
    {
      *(v12 + 32) = 0;
      *v12 = 0u;
      *(v12 + 16) = 0u;
    }

    v20[0] = v12;
    v20[1] = a1;
    *v12 = *a2;
    sub_240B51508((v12 + 8), a3, &a3[a4], a4);
    *(v13 + 32) = a5 != 0;
    v21 = 0;
    v22 = a1;
    v23 = 0;
    v24 = a1;
    v25 = 0;
    v26 = sub_240BFA4C4;
    v20[0] = 0;
    sub_240BC6990(&v23, v13);
    v24 = a1;
    v14 = *(a1 + 88);
    if (v14 >= *(a1 + 96))
    {
      v18 = sub_240BCD9E0((a1 + 80), &v21);
      v19 = v25;
      *(a1 + 88) = v18;
      ++*(a1 + 72);
      v25 = 0;
      if (v19)
      {
        (v26)(v19, v17);
      }
    }

    else
    {
      v15 = v21;
      v21 = 0;
      *v14 = v15;
      v14[1] = v22;
      v14[3] = a1;
      v16 = v23;
      v14[4] = v25;
      v23 = 0;
      v14[2] = v16;
      v14[5] = v26;
      *(a1 + 88) = v14 + 6;
      ++*(a1 + 72);
      v25 = 0;
    }

    sub_240BC6990(&v23, 0);
    sub_240BC68B8(&v21, 0);
    sub_240BC6990(v20, 0);
    return 0;
  }
}

void sub_240BCC5A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_240BCDBF0(va);
  sub_240BC6990(&a9, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_240BCC5CC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v4;
  if (a1 == a2)
  {
    *(a1 + 264) = *(a2 + 264);
  }

  else
  {
    sub_240BCDCF4((a1 + 24), *(a2 + 24), *(a2 + 32), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 32) - *(a2 + 24)) >> 3));
    v5 = *(a1 + 48);
    v6 = *(a2 + 48);
    v7 = *(a2 + 56);
    v8 = v7 - v6;
    v9 = *(a1 + 64);
    if (v9 - v5 < (v7 - v6))
    {
      v10 = v8 >> 2;
      if (v5)
      {
        *(a1 + 56) = v5;
        operator delete(v5);
        v9 = 0;
        *(a1 + 48) = 0;
        *(a1 + 56) = 0;
        *(a1 + 64) = 0;
      }

      if (!(v10 >> 62))
      {
        v11 = v9 >> 1;
        if (v9 >> 1 <= v10)
        {
          v11 = v8 >> 2;
        }

        if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v12 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = v11;
        }

        sub_240B2287C((a1 + 48), v12);
      }

      sub_240B228BC();
    }

    v13 = *(a1 + 56);
    v14 = v13 - v5;
    if (v13 - v5 >= v8)
    {
      if (v7 != v6)
      {
        memmove(*(a1 + 48), *(a2 + 48), v7 - v6);
      }

      v16 = &v5[v8];
    }

    else
    {
      v15 = &v6[v14];
      if (v13 != v5)
      {
        memmove(*(a1 + 48), *(a2 + 48), v14);
        v13 = *(a1 + 56);
      }

      if (v7 != v15)
      {
        memmove(v13, v15, v7 - v15);
      }

      v16 = &v13[v7 - v15];
    }

    *(a1 + 56) = v16;
    sub_240BCDCF4((a1 + 72), *(a2 + 72), *(a2 + 80), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 80) - *(a2 + 72)) >> 3));
    v17 = *(a1 + 96);
    v18 = *(a2 + 96);
    v19 = *(a2 + 104);
    v20 = v19 - v18;
    v21 = *(a1 + 112);
    if (v21 - v17 < (v19 - v18))
    {
      v22 = 0xF0B7672A07A44C6BLL * (v20 >> 2);
      if (v17)
      {
        *(a1 + 104) = v17;
        operator delete(v17);
        v21 = 0;
        *(a1 + 96) = 0;
        *(a1 + 104) = 0;
        *(a1 + 112) = 0;
      }

      if (v22 <= 0xF4898D5F85BB39)
      {
        v23 = 0xF0B7672A07A44C6BLL * (v21 >> 2);
        v24 = 2 * v23;
        if (2 * v23 <= v22)
        {
          v24 = 0xF0B7672A07A44C6BLL * (v20 >> 2);
        }

        if (v23 >= 0x7A44C6AFC2DD9CLL)
        {
          v25 = 0xF4898D5F85BB39;
        }

        else
        {
          v25 = v24;
        }

        sub_240B8D3FC((a1 + 96), v25);
      }

      sub_240B228BC();
    }

    v26 = *(a1 + 104);
    v27 = v26 - v17;
    if (v26 - v17 >= v20)
    {
      if (v19 != v18)
      {
        memmove(*(a1 + 96), *(a2 + 96), v20 - 3);
      }

      v30 = &v17[v20];
    }

    else
    {
      v28 = &v18[v27];
      if (v26 != v17)
      {
        memmove(*(a1 + 96), *(a2 + 96), v27 - 3);
        v26 = *(a1 + 104);
      }

      v29 = v19 - v28;
      if (v19 != v28)
      {
        memmove(v26, v28, v29 - 3);
      }

      v30 = &v26[v29];
    }

    *(a1 + 104) = v30;
    v31 = *(a1 + 120);
    v32 = *(a2 + 120);
    v33 = *(a2 + 128);
    v34 = v33 - v32;
    v35 = *(a1 + 136);
    if (v35 - v31 < (v33 - v32))
    {
      v36 = 0xF128CFC4A33F128DLL * (v34 >> 4);
      if (v31)
      {
        *(a1 + 128) = v31;
        operator delete(v31);
        v35 = 0;
        *(a1 + 120) = 0;
        *(a1 + 128) = 0;
        *(a1 + 136) = 0;
      }

      if (v36 <= 0x3B5CC0ED7303B5)
      {
        v37 = 0xF128CFC4A33F128DLL * (v35 >> 4);
        v38 = 2 * v37;
        if (2 * v37 <= v36)
        {
          v38 = 0xF128CFC4A33F128DLL * (v34 >> 4);
        }

        if (v37 >= 0x1DAE6076B981DALL)
        {
          v39 = 0x3B5CC0ED7303B5;
        }

        else
        {
          v39 = v38;
        }

        sub_240B8D34C((a1 + 120), v39);
      }

      sub_240B228BC();
    }

    v40 = *(a1 + 128);
    v41 = v40 - v31;
    if (v40 - v31 >= v34)
    {
      if (v33 != v32)
      {
        memmove(*(a1 + 120), *(a2 + 120), v34 - 3);
      }

      v44 = &v31[v34];
    }

    else
    {
      v42 = &v32[v41];
      if (v40 != v31)
      {
        memmove(*(a1 + 120), *(a2 + 120), v41 - 3);
        v40 = *(a1 + 128);
      }

      v43 = v33 - v42;
      if (v33 != v42)
      {
        memmove(v40, v42, v43 - 3);
      }

      v44 = &v40[v43];
    }

    *(a1 + 128) = v44;
    v46 = (a1 + 144);
    v45 = *(a1 + 144);
    v48 = *(a2 + 144);
    v47 = *(a2 + 152);
    v49 = v47 - v48;
    v50 = *(a1 + 160);
    if (v50 - v45 < v47 - v48)
    {
      v51 = 0xAAAAAAAAAAAAAAABLL * (v49 >> 4);
      if (v45)
      {
        sub_240B8CE44((a1 + 144));
        operator delete(*v46);
        v50 = 0;
        *v46 = 0;
        *(a1 + 152) = 0;
        *(a1 + 160) = 0;
      }

      if (v51 <= 0x555555555555555)
      {
        v52 = 0xAAAAAAAAAAAAAAABLL * (v50 >> 4);
        v53 = 2 * v52;
        if (2 * v52 <= v51)
        {
          v53 = v51;
        }

        if (v52 >= 0x2AAAAAAAAAAAAAALL)
        {
          v54 = 0x555555555555555;
        }

        else
        {
          v54 = v53;
        }

        sub_240B8D108((a1 + 144), v54);
      }

      sub_240B228BC();
    }

    v55 = *(a1 + 152) - v45;
    if (v55 >= v49)
    {
      v56 = sub_240BCE014(*(a2 + 144), *(a2 + 152), v45);
      for (i = *(a1 + 152); i != v56; i -= 48)
      {
        v58 = *(i - 24);
        if (v58)
        {
          *(i - 16) = v58;
          operator delete(v58);
        }
      }

      *(a1 + 152) = v56;
    }

    else
    {
      sub_240BCE014(*(a2 + 144), (v48 + v55), v45);
      *(a1 + 152) = sub_240B8D158(a1 + 144, (v48 + v55), v47, *(a1 + 152));
    }

    v59 = (a1 + 168);
    v60 = *(a1 + 168);
    v62 = *(a2 + 168);
    v61 = *(a2 + 176);
    v63 = v61 - v62;
    v64 = *(a1 + 184);
    if (v64 - v60 < v61 - v62)
    {
      v65 = 0xEEEEEEEEEEEEEEEFLL * (v63 >> 3);
      if (v60)
      {
        v66 = *(a1 + 176);
        v67 = *(a1 + 168);
        if (v66 != v60)
        {
          do
          {
            v66 -= 15;
            sub_240B8CE94(v66);
          }

          while (v66 != v60);
          v67 = *v59;
        }

        *(a1 + 176) = v60;
        operator delete(v67);
        v64 = 0;
        *v59 = 0;
        *(a1 + 176) = 0;
        *(a1 + 184) = 0;
      }

      if (v65 <= 0x222222222222222)
      {
        v68 = 0xEEEEEEEEEEEEEEEFLL * (v64 >> 3);
        v69 = 2 * v68;
        if (2 * v68 <= v65)
        {
          v69 = v65;
        }

        if (v68 >= 0x111111111111111)
        {
          v70 = 0x222222222222222;
        }

        else
        {
          v70 = v69;
        }

        sub_240B8CEEC((a1 + 168), v70);
      }

      sub_240B228BC();
    }

    v71 = *(a1 + 176) - v60;
    if (v71 >= v63)
    {
      v72 = sub_240BCDE68(*(a2 + 168), *(a2 + 176), *(a1 + 168));
      for (j = *(a1 + 176); j != v72; sub_240B8CE94(j))
      {
        j -= 15;
      }

      *(a1 + 176) = v72;
    }

    else
    {
      sub_240BCDE68(*(a2 + 168), v62 + v71, *(a1 + 168));
      *(a1 + 176) = sub_240B8CF3C(a1 + 168, (v62 + v71), v61, *(a1 + 176));
    }

    sub_240B28A14((a1 + 192), *(a2 + 192), *(a2 + 200), *(a2 + 200) - *(a2 + 192));
    sub_240BCDCF4((a1 + 216), *(a2 + 216), *(a2 + 224), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 224) - *(a2 + 216)) >> 3));
    sub_240B28A14((a1 + 240), *(a2 + 240), *(a2 + 248), *(a2 + 248) - *(a2 + 240));
    *(a1 + 264) = *(a2 + 264);
    sub_240B28A14((a1 + 272), *(a2 + 272), *(a2 + 280), *(a2 + 280) - *(a2 + 272));
  }

  return a1;
}

uint64_t sub_240BCCCD0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  sub_240B86714(a1 + 8, a2 + 8);
  v4 = *(a2 + 648);
  v5 = *(a2 + 664);
  v6 = *(a2 + 680);
  *(a1 + 696) = *(a2 + 696);
  *(a1 + 664) = v5;
  *(a1 + 680) = v6;
  *(a1 + 648) = v4;
  *(a1 + 704) = 0;
  *(a1 + 720) = 0;
  *(a1 + 712) = 0;
  v7 = *(a2 + 704);
  v8 = *(a2 + 712);
  if (v8 != v7)
  {
    sub_240B871C4((a1 + 704), (v8 - v7) >> 4);
  }

  v9 = (a1 + 728);
  if (*(a2 + 751) < 0)
  {
    sub_240B4B67C(v9, *(a2 + 728), *(a2 + 736));
  }

  else
  {
    v10 = *(a2 + 728);
    *(a1 + 744) = *(a2 + 744);
    *v9 = v10;
  }

  v11 = *(a2 + 752);
  *(a1 + 768) = *(a2 + 768);
  *(a1 + 752) = v11;
  return a1;
}