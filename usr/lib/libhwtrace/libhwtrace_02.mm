unint64_t sub_298AF6520(void *a1, int a2)
{
  v2 = a1[8];
  if (v2 >= a1[31])
  {
    return 0;
  }

  v3 = *(a1[30] + 8 * v2);
  v4 = a1[4];
  if (a2)
  {
    v5 = v4 + 1;
  }

  else
  {
    v5 = v4 - 1;
  }

  if (*(v3 + 176) > v5)
  {
    return v2 - 1;
  }

  if (v5 < *(v3 + 184))
  {
    return a1[8];
  }

  return v2 + 1;
}

uint64_t sub_298AF6574(uint64_t a1)
{
  v1 = *(a1 + 248);
  v2 = v1 != 0;
  v3 = v1 - 1;
  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_298AF6584(int8x8_t *a1, unint64_t a2)
{
  v2 = a1[19];
  if (v2)
  {
    v3 = 0x9DDFEA08EB382D69 * (((((a2 >> 3) & 0x3FFFFFF) << 6) | 8) ^ HIDWORD(a2));
    v4 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v3 >> 47) ^ v3)) ^ ((0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v3 >> 47) ^ v3)) >> 47));
    v5 = vcnt_s8(v2);
    v5.i16[0] = vaddlv_u8(v5);
    if (v5.u32[0] <= 1uLL)
    {
      v6 = (*&v2 - 1) & v4;
    }

    else
    {
      v6 = v4 < *&v2 ? v4 : v4 % *&v2;
    }

    v7 = *(*&a1[18] + 8 * v6);
    if (v7)
    {
      v8 = *v7;
      if (v8)
      {
        if (v5.u32[0] < 2uLL)
        {
          v9 = *&v2 - 1;
          while (1)
          {
            v12 = v8[1];
            if (v4 == v12)
            {
              if (v8[2] == a2)
              {
                return v8[3];
              }
            }

            else if ((v12 & v9) != v6)
            {
              return 0;
            }

            result = 0;
            v8 = *v8;
            if (!v8)
            {
              return result;
            }
          }
        }

        do
        {
          v10 = v8[1];
          if (v4 == v10)
          {
            if (v8[2] == a2)
            {
              return v8[3];
            }
          }

          else
          {
            if (v10 >= *&v2)
            {
              v10 %= *&v2;
            }

            if (v10 != v6)
            {
              return 0;
            }
          }

          v8 = *v8;
        }

        while (v8);
      }
    }
  }

  return 0;
}

uint64_t sub_298AF66B8(uint64_t a1)
{
  *a1 = &unk_2A1F1BAB0;
  if (*(a1 + 448) == 1)
  {
    sub_298AF679C(a1 + 256);
  }

  *a1 = &unk_2A1F1BA60;
  v2 = *(a1 + 112);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = v2[3];
      v2[3] = 0;
      if (v4)
      {
        v7 = v2;
        (*(*v4 + 8))(v4);
        v2 = v7;
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *(a1 + 96);
  *(a1 + 96) = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}

uint64_t sub_298AF679C(uint64_t a1)
{
  v2 = *(a1 + 128);
  if (v2 != (a1 + 144))
  {
    free(v2);
  }

  sub_298AF67DC(a1 + 72);
  return a1;
}

uint64_t sub_298AF67DC(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *(a1 + 40) = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    operator delete(*v2);
    v3 = *(a1 + 16);
    v2 = (*(a1 + 8) + 8);
    *(a1 + 8) = v2;
    v4 = v3 - v2;
    if (v4 >= 3)
    {
      do
      {
        operator delete(*v2);
        v3 = *(a1 + 16);
        v2 = (*(a1 + 8) + 8);
        *(a1 + 8) = v2;
        v4 = v3 - v2;
      }

      while (v4 > 2);
    }
  }

  if (v4 == 1)
  {
    v5 = 256;
    goto LABEL_9;
  }

  if (v4 == 2)
  {
    v5 = 512;
LABEL_9:
    *(a1 + 32) = v5;
  }

  if (v2 != v3)
  {
    do
    {
      v6 = *v2++;
      operator delete(v6);
    }

    while (v2 != v3);
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7 != v8)
    {
      *(a1 + 16) = v7 + ((v8 - v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_298AF68D4(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  v5 = *(a2 + 24);
  v6 = *(a2 + 40);
  v7 = *(a2 + 56);
  *(a1 + 72) = 0u;
  v8 = a1 + 72;
  *(v8 - 32) = v6;
  *(v8 - 16) = v7;
  *(v8 - 48) = v5;
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0u;
  v9 = *(a2 + 13);
  v10 = (v9 >> 6) & 0x3FFFFFFFFFFFFF8;
  v11 = *(a2 + 10);
  if (*(a2 + 11) == v11)
  {
    v12 = 0;
    goto LABEL_5;
  }

  v12 = (*(v11 + v10) + 8 * (*(a2 + 13) & 0x1FFLL));
  v13 = *(a2 + 14) + v9;
  v14 = (v13 >> 6) & 0x3FFFFFFFFFFFFF8;
  v15 = v13 & 0x1FF;
  if ((*(v11 + v14) + 8 * v15) == v12)
  {
LABEL_5:
    v16 = 0;
    goto LABEL_6;
  }

  v16 = v15 - (*(a2 + 13) & 0x1FFLL) + ((v14 - v10) << 6);
LABEL_6:
  sub_298AF6A10(v8, (v11 + v10), v12, v16);
  *(a1 + 120) = *(a2 + 15);
  v17 = (a1 + 144);
  *(a1 + 128) = a1 + 144;
  *(a1 + 136) = 0x600000000;
  if (a1 != a2)
  {
    v18 = *(a2 + 34);
    if (v18)
    {
      if (v18 < 7)
      {
        v19 = *(a2 + 34);
      }

      else
      {
        sub_298B90A44(a1 + 128, (a1 + 144), *(a2 + 34), 8);
        v19 = *(a2 + 34);
        if (!v19)
        {
LABEL_13:
          *(a1 + 136) = v18;
          return a1;
        }

        v17 = *(a1 + 128);
      }

      memcpy(v17, *(a2 + 16), 8 * v19);
      goto LABEL_13;
    }
  }

  return a1;
}

void sub_298AF6A10(unint64_t *a1, char **a2, char *a3, unint64_t a4)
{
  v8 = a1[1];
  v9 = a1[2];
  v10 = v9 - v8;
  if (v9 == v8)
  {
    v11 = 0;
  }

  else
  {
    v11 = ((v9 - v8) << 6) - 1;
  }

  v13 = a1[4];
  v12 = a1[5];
  v14 = v12 + v13;
  v15 = v11 - (v12 + v13);
  v16 = a4 >= v15;
  v17 = a4 - v15;
  if (v17 != 0 && v16)
  {
    if (v9 == v8)
    {
      v18 = v17 + 1;
    }

    else
    {
      v18 = v17;
    }

    if ((v18 & 0x1FF) != 0)
    {
      v19 = (v18 >> 9) + 1;
    }

    else
    {
      v19 = v18 >> 9;
    }

    if (v19 >= v13 >> 9)
    {
      v20 = v13 >> 9;
    }

    else
    {
      v20 = v19;
    }

    if (v19 <= v13 >> 9)
    {
      for (a1[4] = v13 - (v20 << 9); v20; --v20)
      {
        v25 = a1[1];
        v39 = *v25;
        a1[1] = (v25 + 1);
        sub_298AF71FC(a1, &v39);
      }
    }

    else
    {
      v21 = v19 - v20;
      v22 = a1[3] - *a1;
      v23 = v10 >> 3;
      if (v19 - v20 > (v22 >> 3) - (v10 >> 3))
      {
        if (v22 >> 2 <= v21 + v23)
        {
          v24 = v21 + v23;
        }

        else
        {
          v24 = v22 >> 2;
        }

        if (v24)
        {
          if (!(v24 >> 61))
          {
            operator new();
          }

          sub_298ADDDA0();
        }

        operator new();
      }

      if (v21)
      {
        if (a1[3] != a1[2])
        {
          operator new();
        }

        operator new();
      }

      for (a1[4] = v13 - (v20 << 9); v20; --v20)
      {
        v26 = a1[1];
        v39 = *v26;
        a1[1] = (v26 + 1);
        sub_298AF71FC(a1, &v39);
      }
    }

    v12 = a1[5];
    v8 = a1[1];
    v9 = a1[2];
    v14 = a1[4] + v12;
  }

  v27 = (v8 + 8 * (v14 >> 9));
  if (v9 != v8)
  {
    v28 = *v27 + 8 * (v14 & 0x1FF);
    v29 = v28;
    if (a4)
    {
      goto LABEL_36;
    }

LABEL_39:
    v31 = v27;
    goto LABEL_52;
  }

  v28 = 0;
  v29 = 0;
  if (!a4)
  {
    goto LABEL_39;
  }

LABEL_36:
  v30 = a4 + ((v29 - *v27) >> 3);
  if (v30 < 1)
  {
    v32 = 511 - v30;
    v31 = &v27[-(v32 >> 9)];
    v29 = *v31 + 8 * (~v32 & 0x1FF);
  }

  else
  {
    v31 = &v27[v30 >> 9];
    v29 = *v31 + 8 * (v30 & 0x1FF);
  }

LABEL_52:
  while (v28 != v29)
  {
    v33 = v29;
    if (v27 != v31)
    {
      v33 = *v27 + 4096;
    }

    if (v28 == v33)
    {
      a1[5] = v12;
      if (v27 == v31)
      {
        return;
      }
    }

    else
    {
      v34 = *a2;
      v35 = v28;
      do
      {
        v36 = *a3;
        a3 += 8;
        *v35++ = v36;
        if (a3 - v34 == 4096)
        {
          v37 = a2[1];
          ++a2;
          v34 = v37;
          a3 = v37;
        }
      }

      while (v35 != v33);
      v12 = a1[5] + ((v33 - v28) >> 3);
      a1[5] = v12;
      if (v27 == v31)
      {
        return;
      }
    }

    v38 = v27[1];
    ++v27;
    v28 = v38;
  }
}

void sub_298AF71FC(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      v11 = &v4[-*a1] >> 2;
      if (v4 == *a1)
      {
        v11 = 1;
      }

      if (!(v11 >> 61))
      {
        operator new();
      }

      sub_298ADDDA0();
    }

    v7 = ((v6 >> 3) + 1) / 2;
    v8 = ((v6 >> 3) + 1) / -2;
    v9 = &v5[-8 * v7];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v7], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v8];
    a1[2] = &v9[v10];
  }

  *v4 = *a2;
  a1[2] += 8;
}

void sub_298AF7390(const void **a1, void *a2)
{
  v4 = a1[1];
  if (v4 == *a1)
  {
    v6 = a1[2];
    v7 = a1[3];
    if (v6 >= v7)
    {
      v9 = (v7 - v4) >> 2;
      if (v7 == v4)
      {
        v9 = 1;
      }

      if (!(v9 >> 61))
      {
        operator new();
      }

      sub_298ADDDA0();
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = a1[2];
    }

    a1[1] = v5;
    a1[2] = (v6 + 8 * v8);
  }

  else
  {
    v5 = a1[1];
  }

  *(v5 - 8) = *a2;
  a1[1] = a1[1] - 8;
}

unint64_t sub_298AF7530(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  if (*(a1 + 8) <= a5)
  {
    return a3;
  }

  v6 = a5;
  if (a4 + 1 != a5 || (v8 = a3 + 1, a3 + 1 >= *(a1 + 16)))
  {
LABEL_4:
    if (a4 - 1 == v6)
    {
      v23 = a3;
      v24 = a2;
      sub_298C09708(&v23, &v21);
      if (v21.n128_u64[1] > v6)
      {
        return sub_298AF777C(a2, a3) - 1;
      }
    }

    return a3;
  }

  v10 = *(a2 + 88);
  if (v10 > v8)
  {
    v11 = a4;
    v12 = *(a2 + 128);
    if (v12 <= v8)
    {
      v10 = a3 - v12 + 2;
    }

    else
    {
      v10 = 0;
    }

    goto LABEL_13;
  }

  v15 = *(a2 + 96);
  if (v15 + v10 <= v8)
  {
    v11 = a4;
    v10 = a3 + 1;
LABEL_13:
    v13 = (a2 + 104);
    *(a2 + 112) = *(a2 + 104);
    (*(**(a2 + 72) + 40))(*(a2 + 72), v10);
    v14 = *v13;
    v15 = 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 112) - *(a2 + 104)) >> 3);
    *(a2 + 88) = v10;
    *(a2 + 96) = v15;
    a4 = v11;
    goto LABEL_14;
  }

  v14 = *(a2 + 104);
LABEL_14:
  if (*(v14 + 24 * (v8 - v10) + 8) != v6)
  {
    goto LABEL_4;
  }

  if (v8 < v10)
  {
    v16 = *(a2 + 128);
    if (v16 <= v8)
    {
      v17 = a3 - v16 + 2;
    }

    else
    {
      v17 = 0;
    }

    goto LABEL_19;
  }

  if (v15 + v10 <= v8)
  {
    v17 = a3 + 1;
LABEL_19:
    *(a2 + 112) = v14;
    (*(**(a2 + 72) + 40))(*(a2 + 72), v17);
    v18 = *(a2 + 104);
    v19 = 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 112) - v18) >> 3);
    *(a2 + 88) = v17;
    *(a2 + 96) = v19;
    v6 = *(v18 + 24 * (v8 - v17) + 8);
  }

  for (i = a3 + 2; i < *(*(a2 + 328) + 16); ++i)
  {
    v21 = 0uLL;
    v22 = 0;
    v23 = i;
    v24 = a2;
    sub_298C09708(&v23, &v21);
    if (v6 != v21.n128_u64[1])
    {
      break;
    }

    v8 = i;
  }

  return v8;
}

unint64_t sub_298AF777C(unint64_t a1, unint64_t a2)
{
  v2 = a2;
  v9 = 0uLL;
  v10 = 0;
  v7.n128_u64[0] = a2;
  v7.n128_u64[1] = a1;
  sub_298C09708(v7.n128_u64, &v9);
  v4 = v9.n128_u64[1];
  do
  {
    v5 = v2;
    if (!v2)
    {
      break;
    }

    --v2;
    v7 = 0uLL;
    v8 = 0;
    v11[0] = v5 - 1;
    v11[1] = a1;
    sub_298C09708(v11, &v7);
  }

  while (v4 == v7.n128_u64[1]);
  return v5;
}

uint64_t sub_298AF7800(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = vcnt_s8(a2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] <= 1uLL)
  {
    v4 = (a2 - 1) & a3;
    v5 = *(a1 + 8 * v4);
    if (!v5)
    {
      return 0;
    }
  }

  else
  {
    v4 = a3;
    if (a2 <= a3)
    {
      v4 = a3 % a2;
    }

    v5 = *(a1 + 8 * v4);
    if (!v5)
    {
      return 0;
    }
  }

  v6 = *v5;
  if (v6)
  {
    if (v3.u32[0] < 2uLL)
    {
      while (1)
      {
        v9 = v6[1];
        if (v9 == a3)
        {
          if (v6[2] == a3)
          {
            return v6[3];
          }
        }

        else if ((v9 & (a2 - 1)) != v4)
        {
          return 0;
        }

        result = 0;
        v6 = *v6;
        if (!v6)
        {
          return result;
        }
      }
    }

    do
    {
      v7 = v6[1];
      if (v7 == a3)
      {
        if (v6[2] == a3)
        {
          return v6[3];
        }
      }

      else
      {
        if (v7 >= a2)
        {
          v7 %= a2;
        }

        if (v7 != v4)
        {
          return 0;
        }
      }

      v6 = *v6;
    }

    while (v6);
  }

  return 0;
}

uint64_t sub_298AF78E0(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 192) == 1)
  {
    sub_298AF679C(a1);
    *(a1 + 192) = 0;
  }

  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  v5 = *(a2 + 24);
  v6 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v6;
  *(a1 + 24) = v5;
  *(a1 + 72) = *(a2 + 9);
  *(a1 + 80) = *(a2 + 10);
  *(a1 + 88) = *(a2 + 11);
  v7 = *(a2 + 13);
  *(a1 + 96) = *(a2 + 12);
  *(a2 + 88) = 0u;
  *(a2 + 72) = 0u;
  *(a1 + 104) = v7;
  v8 = *(a2 + 15);
  *(a1 + 112) = *(a2 + 14);
  *(a2 + 13) = 0;
  *(a2 + 14) = 0;
  *(a1 + 128) = a1 + 144;
  *(a1 + 120) = v8;
  *(a1 + 136) = 0x600000000;
  if (*(a2 + 34))
  {
    sub_298AF7A74(a1 + 128, a2 + 16);
  }

  *(a1 + 192) = 1;
  return a1;
}

uint64_t sub_298AF79B8(uint64_t result, __int128 *a2)
{
  v2 = *a2;
  *(result + 16) = *(a2 + 2);
  *result = v2;
  v3 = *(a2 + 24);
  v4 = *(a2 + 40);
  *(result + 56) = *(a2 + 56);
  *(result + 40) = v4;
  *(result + 24) = v3;
  *(result + 72) = *(a2 + 72);
  *(result + 88) = *(a2 + 11);
  v5 = *(a2 + 13);
  *(result + 96) = *(a2 + 12);
  *(a2 + 88) = 0u;
  *(a2 + 72) = 0u;
  *(result + 104) = v5;
  v6 = *(a2 + 15);
  *(result + 112) = *(a2 + 14);
  *(a2 + 104) = 0uLL;
  *(result + 128) = result + 144;
  *(result + 120) = v6;
  *(result + 136) = 0x600000000;
  if (*(a2 + 34))
  {
    v7 = result;
    sub_298AF7A74(result + 128, a2 + 16);
    return v7;
  }

  return result;
}

uint64_t sub_298AF7A74(uint64_t result, const void **a2)
{
  if (result != a2)
  {
    v3 = a2 + 2;
    v2 = *a2;
    if (*a2 != a2 + 2)
    {
      if (*result != result + 16)
      {
        v4 = result;
        v5 = a2;
        free(*result);
        a2 = v5;
        result = v4;
        v2 = *v5;
      }

      *result = v2;
      v6 = a2 + 1;
      *(result + 8) = a2[1];
      *a2 = v3;
      *(a2 + 3) = 0;
      goto LABEL_17;
    }

    v6 = a2 + 1;
    v7 = *(a2 + 2);
    v8 = *(result + 8);
    if (v8 >= v7)
    {
      if (v7)
      {
        v12 = result;
        memmove(*result, *a2, 8 * v7);
        result = v12;
      }

      *(result + 8) = v7;
      goto LABEL_17;
    }

    if (*(result + 12) >= v7)
    {
      if (v8)
      {
        v10 = result;
        v13 = a2;
        memmove(*result, *a2, 8 * v8);
        a2 = v13;
        v11 = *v6 - v8;
        if (!v11)
        {
LABEL_16:
          result = v10;
          *(v10 + 8) = v7;
LABEL_17:
          *v6 = 0;
          return result;
        }
      }

      else
      {
        v10 = result;
        v8 = 0;
        v11 = *v6;
        if (!*v6)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
      *(result + 8) = 0;
      v9 = a2;
      v10 = result;
      sub_298B90A44(result, (result + 16), v7, 8);
      a2 = v9;
      v8 = 0;
      v11 = *v6;
      if (!*v6)
      {
        goto LABEL_16;
      }
    }

    memcpy((*v10 + 8 * v8), *a2 + 8 * v8, 8 * v11);
    goto LABEL_16;
  }

  return result;
}

double sub_298AF7C64(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *(a2 + 16);
  v6[0] = *a2;
  v6[1] = v3;
  v6[2] = *(a2 + 32);
  v7 = *(a2 + 48);
  v4 = sub_298AF4B68(a1, v6, a3);
  *v4 = &unk_2A1F1BB18;
  result = 0.0;
  *(v4 + 216) = 0u;
  *(v4 + 232) = 0u;
  *(v4 + 248) = -1;
  *(v4 + 256) = -1;
  *(v4 + 264) = 1065353216;
  *(v4 + 280) = 0;
  *(v4 + 288) = 0;
  *(v4 + 272) = 0;
  return result;
}

void sub_298AF7CE4(void *a1)
{
  sub_298AF94A8(a1);

  JUMPOUT(0x29C2945F0);
}

uint64_t sub_298AF837C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 56);
  v4 = *(a1 + 88);
  *&v11 = v3;
  *(&v11 + 1) = v4;
  sub_298C097E4(&v11, v17);
  v5 = *(a1 + 32);
  v6 = v5 - 1;
  if (v17[3] <= (v5 - 1))
  {
    goto LABEL_4;
  }

  if (v3)
  {
    --v3;
    v7 = *(a1 + 88);
    *&v11 = v3;
    *(&v11 + 1) = v7;
    sub_298C097E4(&v11, v17);
    v2 = sub_298AE6950(*(a1 + 8), ***(a1 + 24), v17[0], v17[1]);
    v5 = *(a1 + 32);
LABEL_4:
    v8 = sub_298AF7530(*(*(a1 + 72) + 96), *(a1 + 88), *(a1 + 48), v5, v6);
    v9 = *(a1 + 24);
    *&v11 = v2;
    *(&v11 + 1) = v9;
    v12 = v6;
    v13 = 0;
    v14 = v8;
    v15 = v3;
    v16 = 0;
    return sub_298AF1DB0(a1, &v11);
  }

  return 0;
}

uint64_t sub_298AF846C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 56);
  v4 = *(a1 + 32);
  v5 = v4 + 1;
  v6 = v3 + 1;
  v7 = *(a1 + 88);
  if ((v3 + 1) >= *(v7[41] + 24))
  {
    goto LABEL_9;
  }

  v8 = v7[19];
  if (v8 > v6)
  {
    v9 = v7[24];
    if (v9 <= v6)
    {
      v10 = v3 - v9 + 2;
    }

    else
    {
      v10 = 0;
    }

    goto LABEL_6;
  }

  if (v7[20] + v8 <= v6)
  {
    v9 = v7[24];
    v10 = v3 + 1;
LABEL_6:
    sub_298C0EAF8(v7 + 17, v10, v9);
    v8 = v7[19];
  }

  v11 = (v7[21] + 56 * (v6 - v8));
  if (v11[3] == v5)
  {
    v2 = sub_298AE6950(*(a1 + 8), ***(a1 + 24), *v11, v11[1]);
    ++v3;
  }

LABEL_9:
  v12 = *(a1 + 48);
  v13 = *(*(a1 + 72) + 96);
  v14 = v4 + 2;
  if (*(v13 + 8) <= v5)
  {
LABEL_15:
    v17 = v12;
    goto LABEL_16;
  }

  v15 = *(a1 + 88);
  v16 = *(a1 + 32);
  if (v16 != v4 || (v17 = v12 + 1, v12 + 1 >= *(v13 + 16)))
  {
LABEL_12:
    if (v16 == v14)
    {
      *&v67 = v12;
      *(&v67 + 1) = v15;
      sub_298C09708(&v67, v66);
      if (*&v66[8] > v5)
      {
        v17 = sub_298AF777C(v15, v12) - 1;
        goto LABEL_16;
      }
    }

    goto LABEL_15;
  }

  v37 = *(v15 + 88);
  if (v37 > v17)
  {
    v65 = v3;
    v38 = v14;
    v39 = v2;
    v40 = *(v15 + 128);
    if (v40 <= v17)
    {
      v37 = v12 - v40 + 2;
    }

    else
    {
      v37 = 0;
    }

    goto LABEL_43;
  }

  v42 = *(v15 + 96);
  if (v42 + v37 <= v17)
  {
    v65 = v3;
    v38 = v14;
    v39 = v2;
    v37 = v12 + 1;
LABEL_43:
    *(v15 + 112) = *(v15 + 104);
    (*(**(v15 + 72) + 40))(*(v15 + 72), v37);
    v41 = *(v15 + 104);
    v42 = 0xAAAAAAAAAAAAAAABLL * ((*(v15 + 112) - v41) >> 3);
    *(v15 + 88) = v37;
    *(v15 + 96) = v42;
    v2 = v39;
    v14 = v38;
    v3 = v65;
    goto LABEL_44;
  }

  v41 = *(v15 + 104);
LABEL_44:
  if (*(v41 + 24 * (v17 - v37) + 8) != v5)
  {
    goto LABEL_12;
  }

  if (v17 < v37)
  {
    v43 = *(v15 + 128);
    if (v43 <= v17)
    {
      v44 = v12 - v43 + 2;
    }

    else
    {
      v44 = 0;
    }

    goto LABEL_49;
  }

  v47 = v5;
  if (v37 + v42 <= v17)
  {
    v44 = v12 + 1;
LABEL_49:
    *(v15 + 112) = v41;
    (*(**(v15 + 72) + 40))(*(v15 + 72), v44);
    v45 = *(v15 + 104);
    v46 = 0xAAAAAAAAAAAAAAABLL * ((*(v15 + 112) - v45) >> 3);
    *(v15 + 88) = v44;
    *(v15 + 96) = v46;
    v47 = *(v45 + 24 * (v17 - v44) + 8);
  }

  for (i = v12 + 2; i < *(*(v15 + 328) + 16); ++i)
  {
    memset(v66, 0, 24);
    *&v67 = i;
    *(&v67 + 1) = v15;
    sub_298C09708(&v67, v66);
    if (v47 != *&v66[8])
    {
      break;
    }

    v17 = i;
  }

LABEL_16:
  v18 = *(a1 + 24);
  v19 = *(a1 + 88);
  if (v5 >= *(v19[41] + 8))
  {
    goto LABEL_79;
  }

  v20 = v19[3];
  if (v20 <= v5)
  {
    if (v19[4] + v20 > v5)
    {
      v24 = v19[5];
      goto LABEL_22;
    }

    v20 = v5;
  }

  else
  {
    v21 = v19[8];
    if (v21 <= v5)
    {
      v20 = v14 - v21;
    }

    else
    {
      v20 = 0;
    }
  }

  v23 = v19[5];
  v22 = v19 + 5;
  v22[1] = v23;
  (*(**(v22 - 4) + 32))(*(v22 - 4), v20);
  v24 = *v22;
  v25 = 0xAAAAAAAAAAAAAAABLL * ((v22[1] - *v22) >> 2);
  *(v22 - 2) = v20;
  *(v22 - 1) = v25;
LABEL_22:
  if (*(v24 + 12 * (v5 - v20)) >> 47)
  {
    if (*(a1 + 16) != v2)
    {
      *(a1 + 184) = *(*v2 + 40);
      *(a1 + 208) = 0;
    }

    *(a1 + 16) = v2;
    *(a1 + 24) = v18;
    *(a1 + 32) = v5;
    *(a1 + 40) = 0;
    *(a1 + 48) = v17;
    *(a1 + 56) = v3;
    *(a1 + 64) = 0;
    v26 = *(a1 + 88);
    v27 = *(v26 + 24);
    if (v27 <= v5)
    {
      if (*(v26 + 32) + v27 > v5)
      {
        v29 = *(v26 + 40);
LABEL_30:
        v31 = (v29 + 12 * (v5 - v27));
        v32 = *v31;
        v33 = *(v31 + 2);
        v34 = *(v26 + 88);
        if (v34 <= v17)
        {
          if (*(v26 + 96) + v34 > v17)
          {
            v36 = *(v26 + 104);
            goto LABEL_61;
          }

          v35 = *(v26 + 128);
          v34 = v17;
        }

        else
        {
          v35 = *(v26 + 128);
          if (v35 <= v17)
          {
            v34 = v17 - v35 + 1;
          }

          else
          {
            v34 = 0;
          }
        }

        v50 = *(v26 + 104);
        v49 = (v26 + 104);
        v49[1] = v50;
        (*(**(v49 - 4) + 40))(*(v49 - 4), v34, v35, v49, *(v49 - 3));
        v36 = *v49;
        v51 = 0xAAAAAAAAAAAAAAABLL * ((v49[1] - *v49) >> 3);
        *(v49 - 2) = v34;
        *(v49 - 1) = v51;
LABEL_61:
        v52 = (v36 + 24 * (v17 - v34));
        v67 = *v52;
        v68 = *(v52 + 2);
        v53 = *(a1 + 32) + 1;
        v54 = *(a1 + 88);
        v55 = v54[41];
        if (v53 == *(v55 + 8))
        {
          v61 = 1;
          goto LABEL_73;
        }

        v56 = *(a1 + 56);
        v57 = v56 + 1;
        if ((v56 + 1) >= *(v55 + 24))
        {
          v61 = 0;
          goto LABEL_73;
        }

        v58 = v54[19];
        if (v58 <= v57)
        {
          if (v54[20] + v58 > v57)
          {
LABEL_72:
            v61 = *(v54[21] + 56 * (v57 - v58) + 24) == v53;
LABEL_73:
            *&v66[4] = v67;
            *&v66[20] = v68;
            *(a1 + 136) = v32;
            *(a1 + 144) = v33;
            *(a1 + 148) = *v66;
            *(a1 + 160) = *&v66[12];
            *(a1 + 176) = v61;
            return 1;
          }

          v59 = v54[24];
          v60 = v56 + 1;
        }

        else
        {
          v59 = v54[24];
          if (v59 <= v57)
          {
            v60 = v56 - v59 + 2;
          }

          else
          {
            v60 = 0;
          }
        }

        sub_298C0EAF8(v54 + 17, v60, v59);
        v58 = v54[19];
        goto LABEL_72;
      }

      v27 = v5;
    }

    else
    {
      v28 = *(v26 + 64);
      if (v28 <= v5)
      {
        v27 = v14 - v28;
      }

      else
      {
        v27 = 0;
      }
    }

    *(v26 + 48) = *(v26 + 40);
    (*(**(v26 + 8) + 32))(*(v26 + 8), v27);
    v29 = *(v26 + 40);
    v30 = 0xAAAAAAAAAAAAAAABLL * ((*(v26 + 48) - v29) >> 2);
    *(v26 + 24) = v27;
    *(v26 + 32) = v30;
    v17 = *(a1 + 48);
    goto LABEL_30;
  }

  v18 = *(a1 + 24);
LABEL_79:
  v63 = *****v18;
  *&v67 = v18;
  *v66 = &v67;
  v64 = sub_298AE90FC((v63 + 8), &v67, &unk_298CF78C8, v66)[3];
  *(a1 + 72) = v64;
  sub_298C09510((a1 + 80), v64);
  return 0;
}

uint64_t sub_298AF8B34(uint64_t a1)
{
  v76[6] = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 16);
  v3 = *(a1 + 88);
  v4 = *(a1 + 56);
  v5 = v3[19];
  if (v5 > v4)
  {
    v6 = v3[24];
    if (v6 <= v4)
    {
      v7 = v4 - v6 + 1;
    }

    else
    {
      v7 = 0;
    }

    goto LABEL_5;
  }

  if (v3[20] + v5 <= v4)
  {
    v6 = v3[24];
    v7 = *(a1 + 56);
LABEL_5:
    sub_298C0EAF8(v3 + 17, v7, v6);
    v5 = v3[19];
  }

  v8 = *(v2 + 48);
  if (!*&v8)
  {
    goto LABEL_16;
  }

  v9 = *(a1 + 72);
  v10 = 0x9DDFEA08EB382D69 * ((8 * (v9 & 0x1FFFFFFF) + 8) ^ HIDWORD(v9));
  v11 = 0x9DDFEA08EB382D69 * (HIDWORD(v9) ^ (v10 >> 47) ^ v10);
  v12 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
  v13 = vcnt_s8(v8);
  v13.i16[0] = vaddlv_u8(v13);
  if (v13.u32[0] <= 1uLL)
  {
    v14 = v12 & (*&v8 - 1);
  }

  else
  {
    v14 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
    if (v12 >= *&v8)
    {
      v14 = v12 % *&v8;
    }
  }

  v15 = *(*(v2 + 40) + 8 * v14);
  if (!v15)
  {
    goto LABEL_16;
  }

  v16 = *v15;
  if (!*v15)
  {
    goto LABEL_16;
  }

  v17 = *(v3[21] + 56 * (v4 - v5) + 16);
  v18 = v17;
  while (1)
  {
    v19 = v16[1];
    if (v19 == v12)
    {
      break;
    }

    if (v13.u32[0] <= 1uLL)
    {
      v19 &= *&v8 - 1;
    }

    else if (v19 >= *&v8)
    {
      v19 %= *&v8;
    }

    if (v19 != v14)
    {
      goto LABEL_16;
    }

LABEL_146:
    v16 = *v16;
    if (!v16)
    {
      goto LABEL_16;
    }
  }

  if (v16[2] != v9)
  {
    goto LABEL_146;
  }

  v20 = v16[4];
  if (!*&v20)
  {
    goto LABEL_16;
  }

  v21 = vcnt_s8(v20);
  v21.i16[0] = vaddlv_u8(v21);
  if (v21.u32[0] <= 1uLL)
  {
    v18 = (*&v20 - 1) & v17;
  }

  else if (v17 >= *&v20)
  {
    v18 = v17 % *&v20;
  }

  v22 = *(v16[3] + 8 * v18);
  if (!v22)
  {
    goto LABEL_16;
  }

  do
  {
    while (1)
    {
      v22 = *v22;
      if (!v22)
      {
        goto LABEL_16;
      }

      v23 = v22[1];
      if (v23 == v17)
      {
        break;
      }

      if (v21.u32[0] <= 1uLL)
      {
        v23 &= *&v20 - 1;
      }

      else if (v23 >= *&v20)
      {
        v23 %= *&v20;
      }

      if (v23 != v18)
      {
        goto LABEL_16;
      }
    }
  }

  while (v22[2] != v17);
  v24 = v22[3];
  v25 = *(v2 + 8);
  v26 = *(*v2 + 16);
  v27 = *(a1 + 224);
  if (v27)
  {
    v28 = *(a1 + 256) ^ *(a1 + 248);
    v29 = v28;
    v30 = vcnt_s8(v27);
    v30.i16[0] = vaddlv_u8(v30);
    if (v30.u32[0] <= 1uLL)
    {
      v31 = (v27 - 1) & v28;
    }

    else
    {
      v31 = v28;
      if (v28 >= v27)
      {
        v31 = v28 % v27;
      }
    }

    v32 = *(*(a1 + 216) + 8 * v31);
    if (v32)
    {
      v33 = *v32;
      if (v33)
      {
        if (v30.u32[0] < 2uLL)
        {
          while (1)
          {
            v70 = v33[1];
            if (v28 == v70)
            {
              if (v33[2] == v26 && v33[3] == v25)
              {
                goto LABEL_95;
              }
            }

            else if ((v70 & (v27 - 1)) != v31)
            {
              goto LABEL_50;
            }

            v33 = *v33;
            if (!v33)
            {
              goto LABEL_50;
            }
          }
        }

        do
        {
          v35 = v33[1];
          if (v28 == v35)
          {
            if (v33[2] == v26 && v33[3] == v25)
            {
              goto LABEL_95;
            }
          }

          else
          {
            if (v35 >= v27)
            {
              v35 %= v27;
            }

            if (v35 != v31)
            {
              break;
            }
          }

          v33 = *v33;
        }

        while (v33);
      }
    }
  }

LABEL_50:
  std::mutex::lock((v2 + 80));
  if (!*(v2 + 144) && (*(***(v2 + 16) + 16))(**(v2 + 16)) != 1)
  {
    v36 = *(*v2 + 8);
    v37 = **v36;
    v38 = *v37;
    v39 = (*v37)[12];
    if (v39)
    {
      v40 = 0x9DDFEA08EB382D69 * ((8 * (*(*v2 + 8) & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*(*v2 + 8)));
      v41 = 0x9DDFEA08EB382D69 * (HIDWORD(v36) ^ (v40 >> 47) ^ v40);
      v42 = 0x9DDFEA08EB382D69 * (v41 ^ (v41 >> 47));
      v43 = vcnt_s8(v39);
      v43.i16[0] = vaddlv_u8(v43);
      if (v43.u32[0] <= 1uLL)
      {
        v44 = v42 & (*&v39 - 1);
      }

      else
      {
        v44 = v42;
        if (v42 >= *&v39)
        {
          v44 = v42 % *&v39;
        }
      }

      v45 = *(*&v38[11] + 8 * v44);
      if (v45)
      {
        v46 = *v45;
        if (v46)
        {
          if (v43.u32[0] < 2uLL)
          {
            v47 = *&v39 - 1;
            while (1)
            {
              v49 = v46[1];
              if (v42 == v49)
              {
                if (v46[2] == v36)
                {
                  goto LABEL_73;
                }
              }

              else if ((v49 & v47) != v44)
              {
                goto LABEL_16;
              }

              v46 = *v46;
              if (!v46)
              {
                goto LABEL_16;
              }
            }
          }

          while (1)
          {
            v48 = v46[1];
            if (v42 == v48)
            {
              if (v46[2] == v36)
              {
LABEL_73:
                sub_298BB33B0(*(v2 + 16), (*(v2 + 24) - *(v2 + 16)) >> 3, *(v46[3] + 8), (a1 + 80));
              }
            }

            else
            {
              if (v48 >= *&v39)
              {
                v48 %= *&v39;
              }

              if (v48 != v44)
              {
                goto LABEL_16;
              }
            }

            v46 = *v46;
            if (!v46)
            {
              goto LABEL_16;
            }
          }
        }
      }
    }

    goto LABEL_16;
  }

  memset(v73, 0, sizeof(v73));
  v74 = v76;
  v75 = 0x600000000;
  std::mutex::unlock((v2 + 80));
  v50 = *(a1 + 256) ^ *(a1 + 248);
  v51 = v50;
  v52 = *(a1 + 224);
  if (!v52)
  {
    goto LABEL_91;
  }

  v53 = vcnt_s8(v52);
  v53.i16[0] = vaddlv_u8(v53);
  if (v53.u32[0] <= 1uLL)
  {
    v54 = (v52 - 1) & v50;
  }

  else
  {
    v54 = v50;
    if (v50 >= v52)
    {
      v54 = v50 % v52;
    }
  }

  v55 = *(*(a1 + 216) + 8 * v54);
  if (!v55 || (v56 = *v55) == 0)
  {
LABEL_91:
    operator new();
  }

  if (v53.u32[0] < 2uLL)
  {
    while (1)
    {
      v72 = v56[1];
      if (v72 == v51)
      {
        if (v56[2] == v26 && v56[3] == v25)
        {
          goto LABEL_92;
        }
      }

      else if ((v72 & (v52 - 1)) != v54)
      {
        goto LABEL_91;
      }

      v56 = *v56;
      if (!v56)
      {
        goto LABEL_91;
      }
    }
  }

  while (2)
  {
    v58 = v56[1];
    if (v58 != v51)
    {
      if (v58 >= v52)
      {
        v58 %= v52;
      }

      if (v58 != v54)
      {
        goto LABEL_91;
      }

      goto LABEL_86;
    }

    if (v56[2] != v26 || v56[3] != v25)
    {
LABEL_86:
      v56 = *v56;
      if (!v56)
      {
        goto LABEL_91;
      }

      continue;
    }

    break;
  }

LABEL_92:
  if (v74 != v76)
  {
    free(v74);
  }

  sub_298AF67DC(v73 + 8);
  v27 = *(a1 + 224);
  v28 = *(a1 + 256) ^ *(a1 + 248);
  v29 = v28;
LABEL_95:
  if (!v27)
  {
    goto LABEL_16;
  }

  v59 = vcnt_s8(v27);
  v59.i16[0] = vaddlv_u8(v59);
  if (v59.u32[0] <= 1uLL)
  {
    v60 = (v27 - 1) & v29;
  }

  else
  {
    v60 = v29;
    if (v29 >= v27)
    {
      v60 = v28 % v27;
    }
  }

  v61 = *(*(a1 + 216) + 8 * v60);
  if (!v61 || (v62 = *v61) == 0)
  {
LABEL_16:
    abort();
  }

  if (v59.u32[0] < 2uLL)
  {
    v63 = v27 - 1;
    while (1)
    {
      v66 = v62[1];
      if (v66 == v29)
      {
        if (v62[2] == v26 && v62[3] == v25)
        {
          goto LABEL_121;
        }
      }

      else if ((v66 & v63) != v60)
      {
        goto LABEL_16;
      }

      v62 = *v62;
      if (!v62)
      {
        goto LABEL_16;
      }
    }
  }

  while (2)
  {
    v65 = v62[1];
    if (v65 != v29)
    {
      if (v65 >= v27)
      {
        v65 %= v27;
      }

      if (v65 != v60)
      {
        goto LABEL_16;
      }

      goto LABEL_107;
    }

    if (v62[2] != v26 || v62[3] != v25)
    {
LABEL_107:
      v62 = *v62;
      if (!v62)
      {
        goto LABEL_16;
      }

      continue;
    }

    break;
  }

LABEL_121:
  sub_298BB1C78((v62 + 4), v24, *(a1 + 32), (a1 + 80));
  return v62[20];
}

void *sub_298AF94A8(void *a1)
{
  *a1 = &unk_2A1F1BB18;
  v2 = a1[34];
  if (v2)
  {
    a1[35] = v2;
    operator delete(v2);
  }

  sub_298AF9524((a1 + 27));
  *a1 = &unk_2A1F1BA60;
  sub_298AF4350((a1 + 10));
  return a1;
}

uint64_t sub_298AF9524(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v5 = *v2;
      v6 = v2[20];
      if (v6 != v2 + 22)
      {
        free(v6);
      }

      sub_298AF67DC((v2 + 13));
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

void sub_298AF95A0(uint64_t a1)
{
  sub_298AF66B8(a1);

  JUMPOUT(0x29C2945F0);
}

uint64_t sub_298AF9730(uint64_t a1, int a2, _BYTE *a3)
{
  if (a2)
  {
    if (a2 != 1)
    {
      return 0;
    }

    return sub_298AF2784(a1, a3);
  }

  else
  {
    v3 = *(*(*(a1 + 224) + 8 * *(a1 + 216)) + 200);
    if (!v3)
    {
      return 0;
    }

    v4 = *(a1 + 32);
    v5 = *v3;
    v6 = *(v3 + 8);
    if (!v6)
    {
      return 0;
    }

    v7 = v5;
    v8 = v6;
    do
    {
      v9 = v8 >> 1;
      v10 = &v7[2 * (v8 >> 1)];
      v12 = *v10;
      v11 = v10 + 2;
      v8 += ~(v8 >> 1);
      if (v12 < v4)
      {
        v7 = v11;
      }

      else
      {
        v8 = v9;
      }
    }

    while (v8);
    if (v7 == &v5[2 * v6] || *v7 > v4)
    {
      return 0;
    }

    v15 = (*(***(a1 + 16) + 16))(**(a1 + 16));
    v16 = *(v15 + 256);
    if (v16)
    {
      v17 = v7[1];
      v18 = vcnt_s8(v16);
      v18.i16[0] = vaddlv_u8(v18);
      v19 = a3;
      if (v18.u32[0] <= 1uLL)
      {
        v20 = (*&v16 - 1) & v17;
      }

      else if (*&v16 > v17)
      {
        v20 = v7[1];
      }

      else
      {
        v20 = v17 % *&v16;
      }

      v21 = *(*(v15 + 248) + 8 * v20);
      if (!v21 || (v22 = *v21) == 0)
      {
LABEL_32:
        *a3 = 0;
        return 1;
      }

      if (v18.u32[0] < 2uLL)
      {
        v23 = *&v16 - 1;
        while (1)
        {
          v25 = v22[1];
          if (v25 == v17)
          {
            if (v22[2] == v17)
            {
              goto LABEL_40;
            }
          }

          else if ((v25 & v23) != v20)
          {
            goto LABEL_32;
          }

          v22 = *v22;
          if (!v22)
          {
            goto LABEL_34;
          }
        }
      }

      while (1)
      {
        v24 = v22[1];
        if (v24 == v17)
        {
          if (v22[2] == v17)
          {
LABEL_40:
            *a3 = v22[3];
            return 1;
          }
        }

        else
        {
          if (v24 >= *&v16)
          {
            v24 %= *&v16;
          }

          if (v24 != v20)
          {
            goto LABEL_32;
          }
        }

        v22 = *v22;
        if (!v22)
        {
          goto LABEL_32;
        }
      }
    }

    v19 = a3;
LABEL_34:
    *v19 = 0;
    return 1;
  }
}

uint64_t sub_298AF9950(uint64_t a1)
{
  v6[6] = *MEMORY[0x29EDCA608];
  if ((*(a1 + 448) & 1) == 0)
  {
    sub_298AEC9A0(*(a1 + 456), (a1 + 80), v3);
    sub_298AF78E0(a1 + 256, v3);
    if (v5 != v6)
    {
      free(v5);
    }

    sub_298AF67DC(&v4);
  }

  sub_298BB1C78(a1 + 256, *(a1 + 216), *(a1 + 32), (a1 + 80));
  return *(a1 + 384);
}

uint64_t sub_298AF9A04(uint64_t a1, uint64_t a2)
{
  v3 = (*(***(a1 + 16) + 16))(**(a1 + 16));
  v4 = *(v3 + 184);
  if (!*&v4)
  {
    return 0;
  }

  v5 = *(a2 + 32);
  v6 = vcnt_s8(v4);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] <= 1uLL)
  {
    v7 = (*&v4 - 1) & v5;
  }

  else
  {
    v7 = *&v4 > v5 ? *(a2 + 32) : v5 % *&v4;
  }

  v8 = *(*(v3 + 176) + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  v9 = *v8;
  if (!v9)
  {
    return 0;
  }

  if (v6.u32[0] < 2uLL)
  {
    v10 = *&v4 - 1;
    while (1)
    {
      v13 = v9[1];
      if (v13 == v5)
      {
        if (v9[2] == v5)
        {
          return v9[3];
        }
      }

      else if ((v13 & v10) != v7)
      {
        return 0;
      }

      result = 0;
      v9 = *v9;
      if (!v9)
      {
        return result;
      }
    }
  }

  while (1)
  {
    v11 = v9[1];
    if (v11 == v5)
    {
      break;
    }

    if (v11 >= *&v4)
    {
      v11 %= *&v4;
    }

    if (v11 != v7)
    {
      return 0;
    }

LABEL_10:
    v9 = *v9;
    if (!v9)
    {
      return 0;
    }
  }

  if (v9[2] != v5)
  {
    goto LABEL_10;
  }

  return v9[3];
}

void hwtrace_live_recording_session_uuid(unsigned __int8 *src, unsigned __int8 *a2)
{
  v4 = *MEMORY[0x29EDCA608];
  memset(dst, 0, sizeof(dst));
  uuid_copy(dst, src);
  uuid_copy(a2, dst);
}

uint64_t hwtrace_live_recording_session_serialize(uint64_t a1)
{
  result = a1 + 16;
  if (*(a1 + 39) < 0)
  {
    return *result;
  }

  return result;
}

void hwtrace_live_recording_session_init(char *__s, uint64_t *a2)
{
  if (qword_2A13C2B88 == -1)
  {
    if (!__s)
    {
      goto LABEL_5;
    }
  }

  else
  {
    dispatch_once(&qword_2A13C2B88, &unk_2A1F1BBC0);
    if (!__s)
    {
LABEL_5:
      sub_298C53CD0();
    }
  }

  strlen(__s);
  goto LABEL_5;
}

uint64_t hwtrace_live_topology()
{
  if (qword_2A13C2B88 != -1)
  {
    dispatch_once(&qword_2A13C2B88, &unk_2A1F1BBC0);
  }

  return qword_2A13C2B80;
}

uint64_t hwtrace_live_recording_session_deinit(uint64_t result)
{
  if (result)
  {
    if (*(result + 39) < 0)
    {
      operator delete(*(result + 16));
    }

    JUMPOUT(0x29C2945F0);
  }

  return result;
}

void hwtrace_live_recording_init_from_session(uint64_t a1, void *a2)
{
  if (qword_2A13C2B88 == -1)
  {
    v2 = (a1 + 16);
    if ((*(a1 + 39) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }
  }

  else
  {
    dispatch_once(&qword_2A13C2B88, &unk_2A1F1BBC0);
    v2 = (a1 + 16);
    if ((*(a1 + 39) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }
  }

  v2 = *v2;
  if (!v2)
  {
LABEL_5:
    sub_298C53CD0();
  }

LABEL_4:
  strlen(v2);
  goto LABEL_5;
}

void sub_298AFA064()
{
  v3 = *MEMORY[0x29EDCA608];
  sub_298C7AE20(256, &v1);
  if (v2)
  {
    v0 = v1;
    v1 = 0;
    if (v0)
    {
      sub_298ADD988(&v0);
      operator new();
    }
  }

  else
  {
    v0 = 0;
  }

  operator new();
}

void *sub_298AFA304(void **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    v4 = sub_298AE8A50(v2);
    MEMORY[0x29C2945F0](v4, 0x1020C4095A5CCACLL);
    return v3;
  }

  return v1;
}

uint64_t hwtrace_live_topology_systems(uint64_t result, void *a2, uint64_t *a3)
{
  v3 = *(result + 16);
  *a2 = v3;
  *(result + 8) = 0;
  *a3 = (*(result + 24) - v3) >> 3;
  return result;
}

uint64_t hwtrace_live_system_name(uint64_t a1)
{
  if (*(*a1 + 31) >= 0)
  {
    return *a1 + 8;
  }

  else
  {
    return *(*a1 + 8);
  }
}

BOOL hwtrace_live_system_has_capability(uint64_t *a1, int a2)
{
  v77 = *MEMORY[0x29EDCA608];
  v65 = 0u;
  v66 = 0u;
  v67 = 1065353216;
  v68 = 1;
  v69 = 2;
  v71[1] = 0;
  v71[0] = 0;
  v70 = v71;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  v43 = 1;
  v44 = 0u;
  v45 = 0u;
  v47 = 0u;
  v48 = 0u;
  v46 = 1065353216;
  v49 = 1065353216;
  v51 = 0;
  v52 = 0;
  v53 = 0;
  v54 = 0;
  v50[0] = 0;
  *(v50 + 7) = 0;
  v56 = 0;
  memset(v57, 0, 14);
  v55 = 2;
  v57[14] = 1;
  v58 = 0;
  v59 = 0;
  v60 = 0;
  v61 = 0;
  v62 = 0;
  v63 = 0;
  v64 = 0;
  v3 = *a1;
  sub_298AFD4AC(v32, v39);
  sub_298AFDFE4(v73, v3, &v65, v32, 0);
  v4 = __p;
  if (__p)
  {
    do
    {
      v5 = *v4;
      operator delete(v4);
      v4 = v5;
    }

    while (v5);
  }

  v6 = v37;
  v37 = 0;
  if (v6)
  {
    operator delete(v6);
  }

  v7 = v36;
  if (v36)
  {
    do
    {
      v8 = *v7;
      operator delete(v7);
      v7 = v8;
    }

    while (v8);
  }

  v9 = v35;
  v35 = 0;
  if (v9)
  {
    operator delete(v9);
  }

  if (v33)
  {
    v34 = v33;
    operator delete(v33);
  }

  v10 = 0;
  if (a2 <= 2)
  {
    switch(a2)
    {
      case 0:
        sub_298C5E550(v73, &v75);
        if (v76)
        {
          if (v75)
          {
            v72 = v75;
            sub_298AE72FC(&v72, &v75);
            v12 = v72;
            if (!v72)
            {
              goto LABEL_40;
            }

            break;
          }
        }

        else if (v75)
        {
          (*(*v75 + 8))(v75);
        }

        goto LABEL_68;
      case 1:
        sub_298C5EAE8(v73, &v31);
        v26 = v31;
        if (!v31)
        {
          goto LABEL_68;
        }

        v31 = 0;
        v72 = v26;
        sub_298AE72FC(&v72, &v75);
        if (v72)
        {
          (*(*v72 + 8))(v72);
        }

        v12 = v31;
        if (!v31)
        {
          goto LABEL_40;
        }

        break;
      case 2:
        sub_298C5E870(v73, &v30);
        v13 = v30;
        if (!v30)
        {
          goto LABEL_68;
        }

        v30 = 0;
        v72 = v13;
        sub_298AE72FC(&v72, &v75);
        if (v72)
        {
          (*(*v72 + 8))(v72);
        }

        v12 = v30;
        if (!v30)
        {
          goto LABEL_40;
        }

        break;
      default:
        goto LABEL_41;
    }

LABEL_39:
    (*(*v12 + 8))(v12);
LABEL_40:
    v10 = 0;
    goto LABEL_41;
  }

  if (a2 <= 4)
  {
    if (a2 != 3)
    {
      sub_298C5EF5C(v73, &v28);
      v11 = v28;
      if (v28)
      {
        v28 = 0;
        v72 = v11;
        sub_298AE72FC(&v72, &v75);
        if (v72)
        {
          (*(*v72 + 8))(v72);
        }

        v12 = v28;
        if (!v28)
        {
          goto LABEL_40;
        }

        goto LABEL_39;
      }

LABEL_68:
      v10 = 1;
      sub_298AFEAD8(v73);
      v14 = v48;
      if (!v48)
      {
        goto LABEL_43;
      }

      goto LABEL_42;
    }

    sub_298C5ED60(v73, &v29);
    v15 = v29;
    if (!v29)
    {
      goto LABEL_68;
    }

    v29 = 0;
    v72 = v15;
    sub_298AE72FC(&v72, &v75);
    if (v72)
    {
      (*(*v72 + 8))(v72);
    }

    v12 = v29;
    if (!v29)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

  if (a2 == 5)
  {
    sub_298C5F144(v73, &v27);
    v25 = v27;
    if (!v27)
    {
      goto LABEL_68;
    }

    v27 = 0;
    v72 = v25;
    sub_298AE72FC(&v72, &v75);
    if (v72)
    {
      (*(*v72 + 8))(v72);
    }

    v12 = v27;
    if (!v27)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

  if (a2 == 6)
  {
    v10 = (*(*v74 + 56) - 9) < 2;
    sub_298AFEAD8(v73);
    v14 = v48;
    if (!v48)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

LABEL_41:
  sub_298AFEAD8(v73);
  v14 = v48;
  if (!v48)
  {
    goto LABEL_43;
  }

  do
  {
LABEL_42:
    v16 = *v14;
    operator delete(v14);
    v14 = v16;
  }

  while (v16);
LABEL_43:
  v17 = v47;
  *&v47 = 0;
  if (v17)
  {
    operator delete(v17);
  }

  v18 = v45;
  if (v45)
  {
    do
    {
      v19 = *v18;
      operator delete(v18);
      v18 = v19;
    }

    while (v19);
  }

  v20 = v44;
  *&v44 = 0;
  if (v20)
  {
    operator delete(v20);
  }

  if (v40)
  {
    v41 = v40;
    operator delete(v40);
  }

  sub_298AFEF9C(&v70, v71[0]);
  v21 = v66;
  if (v66)
  {
    do
    {
      v22 = *v21;
      sub_298AFE6E4(v21 + 2);
      operator delete(v21);
      v21 = v22;
    }

    while (v22);
  }

  v23 = v65;
  *&v65 = 0;
  if (v23)
  {
    operator delete(v23);
  }

  return v10;
}

void ***hwtrace_live_recording_options_deinit(void ***result)
{
  if (result)
  {
    v1 = result;
    v2 = result[12];
    if (v2)
    {
      v3 = result[13];
      v4 = result[12];
      if (v3 != v2)
      {
        do
        {
          v6 = *--v3;
          v5 = v6;
          *v3 = 0;
          if (v6)
          {
            sub_298AFF020(v5);
          }
        }

        while (v3 != v2);
        v4 = v1[12];
      }

      v1[13] = v2;
      operator delete(v4);
    }

    sub_298AFEF9C((v1 + 9), v1[10]);
    v7 = v1[5];
    if (v7)
    {
      do
      {
        v8 = *v7;
        sub_298AFE6E4(v7 + 2);
        operator delete(v7);
        v7 = v8;
      }

      while (v8);
    }

    v9 = v1[3];
    v1[3] = 0;
    if (v9)
    {
      operator delete(v9);
    }

    v10 = *v1;
    if (*v1)
    {
      v11 = v1[1];
      v12 = *v1;
      if (v11 != v10)
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
        v12 = *v1;
      }

      v1[1] = v10;
      operator delete(v12);
    }

    JUMPOUT(0x29C2945F0);
  }

  return result;
}

uint64_t hwtrace_live_recording_options_set_session_policy(uint64_t result, unsigned int a2)
{
  if (a2 <= 2)
  {
    *(result + 68) = dword_298CF7930[a2];
  }

  return result;
}

void hwtrace_live_recording_options_set_image_override(uint64_t a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_298ADDDA0();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  v7 = v4;
  if (v4)
  {
    memcpy(&__dst, __s, v4);
  }

  *(&__dst + v5) = 0;
  sub_298AFAB64(a1, &__dst);
  if (v7 < 0)
  {
    operator delete(__dst);
  }
}

void sub_298AFAB64(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 < v4)
  {
    v5 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v5;
    *(a2 + 8) = 0uLL;
    *a2 = 0;
    v6 = v3 + 24;
LABEL_3:
    *(a1 + 8) = v6;
    return;
  }

  v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v8 = v7 + 1;
  if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_298ADDDA0();
  }

  v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
  if (2 * v9 > v8)
  {
    v8 = 2 * v9;
  }

  if (v9 >= 0x555555555555555)
  {
    v10 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    if (v10 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_298ADDDA0();
  }

  v11 = 24 * v7;
  *v11 = *a2;
  *(v11 + 16) = *(a2 + 2);
  *(a2 + 8) = 0uLL;
  *a2 = 0;
  v6 = 24 * v7 + 24;
  v12 = *a1;
  v13 = *(a1 + 8) - *a1;
  v14 = v11 - v13;
  memcpy((v11 - v13), *a1, v13);
  *a1 = v14;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  if (!v12)
  {
    goto LABEL_3;
  }

  operator delete(v12);
  *(a1 + 8) = v6;
}

uint64_t hwtrace_live_recording_system_options_set_trace_mode(uint64_t result, unsigned int a2)
{
  if (a2 <= 4)
  {
    *(result + 136) = dword_298CF793C[a2];
  }

  return result;
}

uint64_t hwtrace_live_recording_system_options_set_trace_buffer_size(uint64_t a1, uint64_t a2)
{
  if ((*(**(**a1 + 32) + 56) - 11) <= 0xFFFFFFFD)
  {
    v22[8] = v7;
    v22[9] = v6;
    v22[10] = v5;
    v22[11] = v4;
    v22[12] = v3;
    v22[13] = v2;
    v22[14] = v8;
    v22[15] = v9;
    std::generic_category();
    v14[0] = "lib_recording.cpp";
    v14[2] = ":";
    v15 = 771;
    v13 = 3;
    LODWORD(__p) = 3223603;
    v16[0] = v14;
    v16[2] = &__p;
    v17 = 1026;
    v18[0] = v16;
    v18[2] = ": ";
    v19 = 770;
    v20[0] = v18;
    v20[2] = "System does not support trace-to-VA, cannot changed wired trace allocation";
    v21 = 770;
    sub_298B996A4(v20, v22);
    operator new();
  }

  result = 0;
  *(a1 + 152) = a2;
  *(a1 + 160) = 1;
  return result;
}

unint64_t sub_298AFB090@<X0>(unint64_t result@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v9 = *MEMORY[0x29EDCA608];
  if (result)
  {
    v4 = 20;
    do
    {
      v8[v4--] = (result % 0xA) | 0x30;
      v5 = result > 9;
      result /= 0xAuLL;
    }

    while (v5);
    v6 = v4 + 1;
    if (a2)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v8[20] = 48;
    v6 = 20;
    if (a2)
    {
LABEL_5:
      v8[--v6] = 45;
    }
  }

  v7 = 21 - v6;
  if ((21 - v6) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_298ADDDA0();
  }

  if (v7 > 0x16)
  {
    operator new();
  }

  *(a3 + 23) = v7;
  if (v6 != 21)
  {
    result = memcpy(a3, &v8[v6], 21 - v6);
  }

  *(a3 + v7) = 0;
  return result;
}

uint64_t hwtrace_live_recording_system_options_set_context_target(uint64_t result, unsigned int a2)
{
  if (a2 <= 1)
  {
    *(result + 16) = a2;
  }

  return result;
}

void sub_298AFB228(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 3;
  v9 = (v7 >> 3) + 1;
  if (v9 >> 61)
  {
    sub_298ADDDA0();
  }

  v10 = v3 - v6;
  if (v10 >> 2 > v9)
  {
    v9 = v10 >> 2;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    v11 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 61))
    {
      operator new();
    }

    sub_298ADDDA0();
  }

  *(8 * v8) = *a2;
  v5 = 8 * v8 + 8;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

uint64_t hwtrace_live_recording_system_options_set_exception_level_target(uint64_t result, unsigned int a2)
{
  if (a2 <= 2)
  {
    *(result + 8) = a2;
  }

  return result;
}

uint64_t hwtrace_live_recording_system_options_set_throttling(uint64_t result, char a2, uint64_t a3, uint64_t a4)
{
  *(result + 232) = a2;
  *(result + 240) = a3;
  *(result + 248) = a4;
  return result;
}

uint64_t hwtrace_live_recording_system_options_set_rate_limit(uint64_t result, int a2)
{
  *(result + 168) = a2;
  *(result + 172) = 1;
  return result;
}

uint64_t hwtrace_live_recording_init_with_options(uint64_t *a1, void *a2)
{
  v23[2] = *MEMORY[0x29EDCA608];
  if (qword_2A13C2B88 != -1)
  {
    dispatch_once(&qword_2A13C2B88, &unk_2A1F1BBC0);
  }

  sub_298C51414((a1 + 3), *a1, 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3), v23);
  v3 = v23[0];
  if (!v23[0])
  {
    v6 = a1[12];
    v7 = a1[13];
    if (v6 == v7)
    {
LABEL_20:
      sub_298AFE1C0(&v15, (a1 + 3));
      sub_298C5243C();
    }

    while (1)
    {
      v8 = ***v6;
      sub_298AFD4AC(v16, (*v6 + 1));
      sub_298C50958(a1 + 3, v8, v16, v23);
      v9 = __p;
      if (__p)
      {
        do
        {
          v10 = *v9;
          operator delete(v9);
          v9 = v10;
        }

        while (v10);
      }

      v11 = v21;
      v21 = 0;
      if (v11)
      {
        operator delete(v11);
      }

      v12 = v20;
      if (v20)
      {
        do
        {
          v13 = *v12;
          operator delete(v12);
          v12 = v13;
        }

        while (v13);
      }

      v14 = v19;
      v19 = 0;
      if (v14)
      {
        operator delete(v14);
      }

      if (v17)
      {
        v18 = v17;
        operator delete(v17);
      }

      v3 = v23[0];
      if (v23[0])
      {
        break;
      }

      if (++v6 == v7)
      {
        goto LABEL_20;
      }
    }
  }

  v16[0] = v3;
  result = sub_298ADD988(v16);
  if (v16[0])
  {
    v5 = result;
    (*(**v16 + 8))(*v16);
    return v5;
  }

  return result;
}

uint64_t *hwtrace_live_recording_deinit(uint64_t *result)
{
  if (result)
  {
    v2 = *result;
    *result = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
      v1 = vars8;
    }

    JUMPOUT(0x29C2945F0);
  }

  return result;
}

uint64_t hwtrace_live_recording_start(uint64_t *a1, uint64_t *a2)
{
  sub_298C57068(*a1, &v5);
  if (v5)
  {
    result = sub_298ADD988(&v5);
    if (v5)
    {
      v4 = result;
      (*(*v5 + 8))(v5);
      return v4;
    }
  }

  else
  {
    if (a2)
    {
      operator new();
    }

    return 0;
  }

  return result;
}

uint64_t hwtrace_live_recording_pause(uint64_t *a1)
{
  sub_298C57660(*a1, &v3);
  if (!v3)
  {
    return 0;
  }

  result = sub_298ADD988(&v3);
  if (v3)
  {
    v2 = result;
    (*(*v3 + 8))(v3);
    return v2;
  }

  return result;
}

uint64_t hwtrace_live_recording_resume(uint64_t *a1)
{
  sub_298C571A8(*a1, 0, &v3);
  if (!v3)
  {
    return 0;
  }

  result = sub_298ADD988(&v3);
  if (v3)
  {
    v2 = result;
    (*(*v3 + 8))(v3);
    return v2;
  }

  return result;
}

uint64_t hwtrace_live_recording_stop(uint64_t *a1)
{
  sub_298C57998(*a1, &v3);
  if (!v3)
  {
    return 0;
  }

  result = sub_298ADD988(&v3);
  if (v3)
  {
    v2 = result;
    (*(*v3 + 8))(v3);
    return v2;
  }

  return result;
}

uint64_t hwtrace_live_recording_postprocess(uint64_t *a1, uint64_t *a2)
{
  sub_298C589AC(*a1, *a2, a2[1], &v4);
  if (!v4)
  {
    return 0;
  }

  result = sub_298ADD988(&v4);
  if (v4)
  {
    v3 = result;
    (*(*v4 + 8))(v4);
    return v3;
  }

  return result;
}

uint64_t hwtrace_live_recording_finalize_postprocessing(uint64_t *a1)
{
  sub_298C58CB4(*a1, &v3);
  if (!v3)
  {
    return 0;
  }

  result = sub_298ADD988(&v3);
  if (v3)
  {
    v2 = result;
    (*(*v3 + 8))(v3);
    return v2;
  }

  return result;
}

uint64_t hwtrace_live_recording_postprocess_options_deinit(uint64_t result)
{
  if (result)
  {
    JUMPOUT(0x29C2945F0);
  }

  return result;
}

void hwtrace_recording_init_from_live_recording(uint64_t *a1, void *a2)
{
  sub_298C58CB4(*a1, &v2);
  if (v2)
  {
    sub_298ADD988(&v2);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  operator new();
}

void hwtrace_recording_init_from_directory(char *__s, void *a2)
{
  v4 = *MEMORY[0x29EDCA608];
  if (__s)
  {
    v3 = strlen(__s);
  }

  else
  {
    v3 = 0;
  }

  sub_298B9CDFC();
  sub_298C1E528(__s, v3);
}

uint64_t hwtrace_recording_init_from_corefile(int a1, char *__s, void *a3)
{
  v3 = __s;
  v17 = *MEMORY[0x29EDCA608];
  if (__s)
  {
    __s = strlen(__s);
  }

  sub_298B81B58(v3, __s, &v14);
  v5 = v14;
  if (v16)
  {
    v14 = 0;
    v12 = v5;
    v6 = sub_298ADD988(&v12);
    v7 = v12;
    if (!v12)
    {
LABEL_19:
      if (v16)
      {
        goto LABEL_20;
      }

LABEL_23:
      v9 = v15;
      v15 = 0;
      if (v9)
      {
        (*(*v9 + 8))(v9);
      }

      v8 = v14;
      v14 = 0;
      if (v8)
      {
        goto LABEL_26;
      }

      return v6;
    }

LABEL_15:
    (*(*v7 + 8))(v7);
    if (v16)
    {
      goto LABEL_20;
    }

    goto LABEL_23;
  }

  if ((a1 - 1) > 2)
  {
    sub_298C204AC(0, v14, &v12);
    if ((v13 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  else
  {
    sub_298C204AC(dword_298CF7950[a1 - 1], v14, &v12);
    if ((v13 & 1) == 0)
    {
LABEL_17:
      operator new();
    }
  }

  v11 = v12;
  v12 = 0;
  if (!v11)
  {
    goto LABEL_17;
  }

  v6 = sub_298ADD988(&v11);
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  v7 = v12;
  v12 = 0;
  if (v13)
  {
    if (!v7)
    {
      goto LABEL_19;
    }

    goto LABEL_15;
  }

  if (!v7)
  {
    goto LABEL_19;
  }

  (*(*v7 + 8))(v7);
  if ((v16 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_20:
  v8 = v14;
  v14 = 0;
  if (v8)
  {
LABEL_26:
    (*(*v8 + 8))(v8);
  }

  return v6;
}

uint64_t hwtrace_recording_deinit(uint64_t result)
{
  if (result)
  {
    sub_298AE89BC(result);

    JUMPOUT(0x29C2945F0);
  }

  return result;
}

uint64_t hwtrace_recording_save_options_deinit(uint64_t result)
{
  if (result)
  {
    if (*(result + 24) == 1 && *(result + 23) < 0)
    {
      operator delete(*result);
    }

    JUMPOUT(0x29C2945F0);
  }

  return result;
}

uint64_t hwtrace_recording_save_options_set_ktrace_file(uint64_t result, uint64_t a2)
{
  *(result + 32) = a2;
  *(result + 40) = 1;
  if (*(result + 24) == 1)
  {
    if (*(result + 23) < 0)
    {
      v2 = result;
      operator delete(*result);
      result = v2;
    }

    *(result + 24) = 0;
  }

  return result;
}

unint64_t hwtrace_recording_save_options_set_path(_BYTE *a1, char *__s)
{
  if (a1[24] == 1)
  {
    result = MEMORY[0x29C294300](a1, __s);
    if (a1[40] != 1)
    {
      return result;
    }

    goto LABEL_3;
  }

  result = strlen(__s);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_298ADDDA0();
  }

  v5 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  a1[23] = result;
  if (result)
  {
    result = memmove(a1, __s, result);
  }

  a1[v5] = 0;
  a1[24] = 1;
  if (a1[40] == 1)
  {
LABEL_3:
    a1[40] = 0;
  }

  return result;
}

uint64_t hwtrace_recording_save_options_set_port_mode(uint64_t result, int a2)
{
  if (a2)
  {
    if (a2 != 1)
    {
      return result;
    }

    a2 = 2;
  }

  *(result + 56) = a2;
  return result;
}

uint64_t hwtrace_recording_save_options_set_decode_compression(uint64_t result, char a2, char *__s)
{
  v3 = result;
  if (a2)
  {
    if (__s)
    {
      v5 = strlen(__s);
      if (v5 == 7)
      {
        if (!memcmp("LZ4_RAW", __s, 7uLL))
        {
          v6 = 1;
          goto LABEL_16;
        }
      }

      else if (v5 == 5)
      {
        if (!memcmp("LZFSE", __s, 5uLL))
        {
          v6 = 2;
          goto LABEL_16;
        }
      }

      else if (v5 == 3 && !memcmp("LZ4", __s, 3uLL))
      {
        v6 = 0;
LABEL_16:
        sub_298C3C108(1);
        result = v6;
        *(v3 + 50) = v6 | 0x100;
        return result;
      }
    }

    result = sub_298C3C108(1);
    *(v3 + 50) = result | 0x100;
    return result;
  }

  if (*(result + 51) == 1)
  {
    *(result + 51) = 0;
  }

  return result;
}

void hwtrace_recording_save(uint64_t a1, uint64_t *a2)
{
  v2 = *(a2 + 24);
  if (v2 == 1)
  {
    if (*(a2 + 40))
    {
      std::generic_category();
      v6[0] = "lib_recording.cpp";
      v7 = ":";
      v8 = 771;
      v5 = 3;
      __p[0] = 3224374;
      v9[0] = v6;
      v10 = __p;
      v11 = 1026;
      v12 = v9;
      v13 = ": ";
      v14 = 770;
      v3 = "hwtrace_recording_save_options_t path and ktrace_file are mutually exclusive";
      goto LABEL_8;
    }
  }

  else if ((a2[5] & 1) == 0)
  {
    std::generic_category();
    v6[0] = "lib_recording.cpp";
    v7 = ":";
    v8 = 771;
    v5 = 3;
    __p[0] = 3617590;
    v9[0] = v6;
    v10 = __p;
    v11 = 1026;
    v12 = v9;
    v13 = ": ";
    v14 = 770;
    v3 = "hwtrace_recording_save_options_t path or ktrace_file is not specified";
LABEL_8:
    v15[0] = &v12;
    v15[2] = v3;
    v16 = 770;
    sub_298B996A4(v15, &v17);
    operator new();
  }

  v18 = *(a2 + 14);
  v19 = *(a2 + 49);
  v20 = *(a2 + 25);
  v21 = *(a2 + 52);
  v22 = *(a2 + 48);
  if (v2)
  {
    sub_298B9CF40();
    operator new();
  }

  sub_298B9CF40();
  operator new();
}

void hwtrace_recording_save_to_path(uint64_t a1, const char *a2)
{
  LOBYTE(__p[0]) = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 1;
  v14 = 0;
  v15 = 2;
  *(&v14 + 1) = sub_298C3C108(0);
  v4 = strlen(a2);
  if (v4 < 0x7FFFFFFFFFFFFFF8)
  {
    v5 = v4;
    if (v4 < 0x17)
    {
      HIBYTE(v7) = v4;
      if (v4)
      {
        memcpy(&__dst, a2, v4);
      }

      *(&__dst + v5) = 0;
      if (v10 == 1)
      {
        if (SHIBYTE(v9) < 0)
        {
          operator delete(__p[0]);
        }

        *__p = __dst;
        v9 = v7;
        hwtrace_recording_save(a1, __p);
      }

      *__p = __dst;
      v9 = v7;
      v10 = 1;
      hwtrace_recording_save(a1, __p);
    }

    operator new();
  }

  sub_298ADDDA0();
}

void hwtrace_recording_save_to_ktrace(uint64_t a1, uint64_t a2)
{
  LOBYTE(__p) = 0;
  v5 = 0;
  v8 = 1;
  v9 = 0;
  v10 = 2;
  *(&v9 + 1) = sub_298C3C108(0);
  v6 = a2;
  v7 = 1;
  hwtrace_recording_save(a1, &__p);
}

uint64_t hwtrace_recording_start_timestamps(uint64_t result, void *a2, uint64_t *a3)
{
  *a2 = *(*(result + 8) + 104);
  *a3 = (*(*(result + 8) + 112) - *(*(result + 8) + 104)) >> 3;
  return result;
}

uint64_t hwtrace_recording_stop_timestamps(uint64_t result, void *a2, uint64_t *a3)
{
  *a2 = *(*(result + 8) + 80);
  *a3 = (*(*(result + 8) + 88) - *(*(result + 8) + 80)) >> 3;
  return result;
}

uint64_t hwtrace_system_add_shared_image(void *a1, char *__s, uint64_t a3)
{
  v12 = __s;
  v11 = a3;
  if (__s)
  {
    v4 = __s;
    v5 = strlen(__s);
    __s = v4;
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v10[0] = a1;
  v10[1] = &v11;
  v10[2] = &v12;
  sub_298AFF0C4(&v9, __s, v6, sub_298AFFA18, v10);
  result = sub_298ADD988(&v9);
  if (v9)
  {
    v8 = result;
    (*(*v9 + 8))(v9);
    return v8;
  }

  return result;
}

uint64_t hwtrace_system_set_image_path(void *a1, char *__s)
{
  v10 = __s;
  if (__s)
  {
    v3 = __s;
    v4 = strlen(__s);
    __s = v3;
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v9[0] = a1;
  v9[1] = &v10;
  sub_298AFF0C4(&v8, __s, v5, sub_298AFFB74, v9);
  result = sub_298ADD988(&v8);
  if (v8)
  {
    v7 = result;
    (*(*v8 + 8))(v8);
    return v7;
  }

  return result;
}

uint64_t hwtrace_task_add_thread(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 8) + 8);
  v3 = v2[58];
  if (!*&v3 || ((v4 = *(a1 + 16), v5 = vcnt_s8(v3), v5.i16[0] = vaddlv_u8(v5), v5.u32[0] <= 1uLL) ? (v6 = (*&v3 - 1) & v4) : *&v3 > v4 ? (v6 = *(a1 + 16)) : (v6 = v4 % *&v3), (v7 = *(v2[57] + 8 * v6)) == 0 || (v8 = *v7) == 0))
  {
LABEL_15:
    v11 = (v2 + 63);
    goto LABEL_16;
  }

  if (v5.u32[0] < 2uLL)
  {
    v9 = *&v3 - 1;
    while (1)
    {
      v15 = v8[1];
      if (v15 == v4)
      {
        if (v8[2] == v4)
        {
          goto LABEL_24;
        }
      }

      else if ((v15 & v9) != v6)
      {
        goto LABEL_15;
      }

      v8 = *v8;
      if (!v8)
      {
        goto LABEL_15;
      }
    }
  }

  while (1)
  {
    v10 = v8[1];
    if (v10 == v4)
    {
      break;
    }

    if (v10 >= *&v3)
    {
      v10 %= *&v3;
    }

    if (v10 != v6)
    {
      goto LABEL_15;
    }

LABEL_10:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_15;
    }
  }

  if (v8[2] != v4)
  {
    goto LABEL_10;
  }

LABEL_24:
  v11 = (v8 + 3);
LABEL_16:
  v12 = *(v2[62] + 16 * *v11 + 8);
  v16 = a2;
  sub_298AFFBE8(v12 + 88, &v16);
  v16 = 0;
  result = sub_298ADD988(&v16);
  if (v16)
  {
    v14 = result;
    (*(*v16 + 8))(v16);
    return v14;
  }

  return result;
}

uint64_t hwtrace_task_add_image(uint64_t a1, char *__s, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v17 = __s;
  v18 = v5;
  v15 = a4;
  v16 = a3;
  v14 = a5;
  if (__s)
  {
    v7 = __s;
    v8 = strlen(__s);
    __s = v7;
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v13[0] = v6;
  v13[1] = &v18;
  v13[2] = &v17;
  v13[3] = &v16;
  v13[4] = &v15;
  v13[5] = &v14;
  sub_298AFF0C4(&v12, __s, v9, sub_298B00014, v13);
  result = sub_298ADD988(&v12);
  if (v12)
  {
    v11 = result;
    (*(*v12 + 8))(v12);
    return v11;
  }

  return result;
}

void *hwtrace_system_images(uint64_t a1, void **a2, void *a3)
{
  *a2 = sub_298AFD27C(a1);
  result = sub_298AFD27C(a1);
  *a3 = v6;
  return result;
}

void *sub_298AFD27C(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = *(a1 + 112);
  v4 = *(a1 + 120);
  v5 = (a1 + 112);
  if (v4 == result)
  {
    v6 = 1;
    *(a1 + 104) = 1;
    if (result)
    {
      *(a1 + 120) = result;
      operator delete(result);
    }

    *v5 = 0;
    v5[1] = 0;
    v5[2] = 0;
    memset(v7, 0, sizeof(v7));
    *&v8 = v7;
    sub_298AE8FE0(&v8);
    sub_298C17278(*(a1 + 8), &v6);
    if (v6 != v7[0])
    {
      v8 = *v6;
      v9 = *(v6 + 16);
      operator new();
    }

    if (v6)
    {
      v7[0] = v6;
      operator delete(v6);
    }

    result = *(a1 + 112);
  }

  *(a1 + 104) = 0;
  return result;
}

uint64_t sub_298AFD4AC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  if (v4 != v5)
  {
    if (((v4 - v5) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_298ADDDA0();
  }

  v6 = *(a2 + 40);
  *(a1 + 48) = 0u;
  *(a1 + 40) = v6;
  *(a1 + 64) = 0u;
  *(a1 + 80) = *(a2 + 80);
  prime = *(a2 + 56);
  if (prime == 1)
  {
    prime = 2;
LABEL_23:
    sub_298AFD77C(a1 + 48, prime);
    goto LABEL_24;
  }

  if ((prime & (prime - 1)) != 0)
  {
    prime = std::__next_prime(*(a2 + 56));
    v8 = *(a1 + 56);
    v9 = prime >= *&v8;
    if (prime > *&v8)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v8 = 0;
    v9 = 1;
    if (prime)
    {
      goto LABEL_23;
    }
  }

  if (v9)
  {
    goto LABEL_24;
  }

  v10 = vcvtps_u32_f32(*(a1 + 72) / *(a1 + 80));
  if (*&v8 < 3uLL || (v11 = vcnt_s8(v8), v11.i16[0] = vaddlv_u8(v11), v11.u32[0] > 1uLL))
  {
    v13 = prime;
    v14 = std::__next_prime(v10);
    if (v13 <= v14)
    {
      prime = v14;
    }

    else
    {
      prime = v13;
    }

    if (prime < *&v8)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v12 = 1 << -__clz(v10 - 1);
    if (v10 >= 2)
    {
      v10 = v12;
    }

    if (prime <= v10)
    {
      prime = v10;
    }

    if (prime < *&v8)
    {
      goto LABEL_23;
    }
  }

LABEL_24:
  for (i = *(a2 + 64); i; i = *i)
  {
    sub_298AFD920((a1 + 48), i + 2, i + 2);
  }

  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = *(a2 + 120);
  v16 = *(a2 + 96);
  if (v16 == 1)
  {
    v16 = 2;
LABEL_45:
    sub_298AFD77C(a1 + 88, v16);
    goto LABEL_46;
  }

  if ((v16 & (v16 - 1)) != 0)
  {
    v16 = std::__next_prime(*(a2 + 96));
    v17 = *(a1 + 96);
    v18 = v16 >= *&v17;
    if (v16 > *&v17)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v17 = 0;
    v18 = 1;
    if (v16)
    {
      goto LABEL_45;
    }
  }

  if (v18)
  {
    goto LABEL_46;
  }

  v19 = vcvtps_u32_f32(*(a1 + 112) / *(a1 + 120));
  if (*&v17 < 3uLL || (v20 = vcnt_s8(v17), v20.i16[0] = vaddlv_u8(v20), v20.u32[0] > 1uLL))
  {
    v22 = v16;
    v23 = std::__next_prime(v19);
    if (v22 <= v23)
    {
      v16 = v23;
    }

    else
    {
      v16 = v22;
    }

    if (v16 < *&v17)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v21 = 1 << -__clz(v19 - 1);
    if (v19 >= 2)
    {
      v19 = v21;
    }

    if (v16 <= v19)
    {
      v16 = v19;
    }

    if (v16 < *&v17)
    {
      goto LABEL_45;
    }
  }

LABEL_46:
  for (j = *(a2 + 104); j; j = *j)
  {
    sub_298AFDC9C((a1 + 88), j + 4, j + 4);
  }

  v25 = *(a2 + 128);
  v26 = *(a2 + 144);
  v27 = *(a2 + 176);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = v27;
  *(a1 + 128) = v25;
  *(a1 + 144) = v26;
  v28 = *(a2 + 192);
  v29 = *(a2 + 208);
  v30 = *(a2 + 224);
  *(a1 + 233) = *(a2 + 233);
  *(a1 + 208) = v29;
  *(a1 + 224) = v30;
  *(a1 + 192) = v28;
  return a1;
}

void sub_298AFD77C(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_298ADDDA0();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void *sub_298AFD920(void *a1, unint64_t *a2, void *a3)
{
  v3 = *a2;
  v4 = HIDWORD(*a2);
  v5 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFF) + 8) ^ v4);
  v6 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_23;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
    if (v6 >= *&v7)
    {
      v9 = v6 % *&v7;
    }
  }

  else
  {
    v9 = v6 & (*&v7 - 1);
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (result = *v10) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v8.u32[0] < 2uLL)
  {
    while (1)
    {
      v13 = result[1];
      if (v13 == v6)
      {
        if (result[2] == v3)
        {
          return result;
        }
      }

      else if ((v13 & (*&v7 - 1)) != v9)
      {
        goto LABEL_23;
      }

      result = *result;
      if (!result)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v12 = result[1];
    if (v12 == v6)
    {
      break;
    }

    if (v12 >= *&v7)
    {
      v12 %= *&v7;
    }

    if (v12 != v9)
    {
      goto LABEL_23;
    }

LABEL_12:
    result = *result;
    if (!result)
    {
      goto LABEL_23;
    }
  }

  if (result[2] != v3)
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_298AFDC9C(void *a1, unsigned int *a2, _DWORD *a3)
{
  v3 = *a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_23;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = *a2;
    if (*&v4 <= v3)
    {
      v6 = v3 % v4.i32[0];
    }
  }

  else
  {
    v6 = (v4.i32[0] - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (result = *v7) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v5.u32[0] < 2uLL)
  {
    while (1)
    {
      v10 = *(result + 8);
      if (v10 == v3)
      {
        if (*(result + 16) == v3)
        {
          return result;
        }
      }

      else if ((v10 & (*&v4 - 1)) != v6)
      {
        goto LABEL_23;
      }

      result = *result;
      if (!result)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v9 = *(result + 8);
    if (v9 == v3)
    {
      break;
    }

    if (v9 >= *&v4)
    {
      v9 %= *&v4;
    }

    if (v9 != v6)
    {
      goto LABEL_23;
    }

LABEL_12:
    result = *result;
    if (!result)
    {
      goto LABEL_23;
    }
  }

  if (*(result + 16) != v3)
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_298AFDFE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *a1 = *a2;
  v10 = a1 + 8;
  if (*(a2 + 31) < 0)
  {
    sub_298AFE11C(v10, *(a2 + 8), *(a2 + 16));
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    v12 = *(a2 + 32);
    v11 = *(a2 + 40);
    v13 = v11 - v12;
    if (v11 == v12)
    {
      goto LABEL_7;
    }

LABEL_5:
    if ((v13 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_298ADDDA0();
  }

  v14 = *(a2 + 8);
  *(v10 + 16) = *(a2 + 24);
  *v10 = v14;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v16 = *(a2 + 32);
  v15 = *(a2 + 40);
  v13 = v15 - v16;
  if (v15 != v16)
  {
    goto LABEL_5;
  }

LABEL_7:
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = 0;
  sub_298AFE1C0(a1 + 88, a3);
  sub_298AFD4AC(a1 + 160, a4);
  *(a1 + 416) = a5;
  *(a1 + 417) = 0;
  *(a1 + 448) = 0;
  *(a1 + 424) = 0;
  *(a1 + 432) = 0;
  *(a1 + 440) = 0;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 0;
  *(a1 + 496) = a1 + 512;
  *(a1 + 504) = 0;
  *(a1 + 520) = 0;
  *(a1 + 536) = 0;
  *(a1 + 528) = 0;
  return a1;
}

void *sub_298AFE11C(_BYTE *a1, const void *a2, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_298ADDDA0();
  }

  a1[23] = a3;
  v3 = a3 + 1;

  return memmove(a1, a2, v3);
}

uint64_t sub_298AFE1C0(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  prime = *(a2 + 8);
  if (prime == 1)
  {
    prime = 2;
LABEL_20:
    sub_298AFD77C(a1, prime);
    goto LABEL_21;
  }

  if ((prime & (prime - 1)) != 0)
  {
    prime = std::__next_prime(prime);
    v5 = *(a1 + 8);
    v6 = prime >= *&v5;
    if (prime > *&v5)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v5 = 0;
    v6 = 1;
    if (prime)
    {
      goto LABEL_20;
    }
  }

  if (v6)
  {
    goto LABEL_21;
  }

  v7 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
  if (*&v5 < 3uLL || (v8 = vcnt_s8(v5), v8.i16[0] = vaddlv_u8(v8), v8.u32[0] > 1uLL))
  {
    v10 = prime;
    v11 = std::__next_prime(v7);
    if (v10 <= v11)
    {
      prime = v11;
    }

    else
    {
      prime = v10;
    }

    if (prime < *&v5)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v9 = 1 << -__clz(v7 - 1);
    if (v7 >= 2)
    {
      v7 = v9;
    }

    if (prime <= v7)
    {
      prime = v7;
    }

    if (prime < *&v5)
    {
      goto LABEL_20;
    }
  }

LABEL_21:
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_298AFE370(a1, i + 2, i + 2);
  }

  v13 = *(a2 + 40);
  *(a1 + 56) = 0;
  *(a1 + 48) = a1 + 56;
  *(a1 + 40) = v13;
  *(a1 + 64) = 0;
  v14 = *(a2 + 48);
  v15 = (a2 + 56);
  if (v14 != v15)
  {
    do
    {
      sub_298AFE77C((a1 + 48), (a1 + 56), v14 + 32, (v14 + 32));
      v17 = *(v14 + 1);
      if (v17)
      {
        do
        {
          v18 = v17;
          v17 = *v17;
        }

        while (v17);
      }

      else
      {
        do
        {
          v18 = *(v14 + 2);
          v19 = *v18 == v14;
          v14 = v18;
        }

        while (!v19);
      }

      v14 = v18;
    }

    while (v18 != v15);
  }

  return a1;
}

void *sub_298AFE370(void *a1, unint64_t *a2, void *a3)
{
  v3 = *a2;
  v4 = HIDWORD(*a2);
  v5 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFF) + 8) ^ v4);
  v6 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_23;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
    if (v6 >= *&v7)
    {
      v9 = v6 % *&v7;
    }
  }

  else
  {
    v9 = v6 & (*&v7 - 1);
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v8.u32[0] < 2uLL)
  {
    while (1)
    {
      v13 = v11[1];
      if (v13 == v6)
      {
        if (v11[2] == v3)
        {
          return v11;
        }
      }

      else if ((v13 & (*&v7 - 1)) != v9)
      {
        goto LABEL_23;
      }

      v11 = *v11;
      if (!v11)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v6)
    {
      break;
    }

    if (v12 >= *&v7)
    {
      v12 %= *&v7;
    }

    if (v12 != v9)
    {
      goto LABEL_23;
    }

LABEL_12:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_23;
    }
  }

  if (v11[2] != v3)
  {
    goto LABEL_12;
  }

  return v11;
}

void sub_298AFE6E4(void *a1)
{
  v2 = a1[14];
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = a1[12];
  a1[12] = 0;
  if (v4)
  {
    operator delete(v4);
  }

  v5 = a1[9];
  if (v5)
  {
    do
    {
      v6 = *v5;
      operator delete(v5);
      v5 = v6;
    }

    while (v6);
  }

  v7 = a1[7];
  a1[7] = 0;
  if (v7)
  {
    operator delete(v7);
  }

  v8 = a1[3];
  if (v8)
  {
    a1[4] = v8;

    operator delete(v8);
  }
}

uint64_t *sub_298AFE77C(const unsigned __int8 **a1, const unsigned __int8 *a2, unsigned __int8 *uu2, uint64_t a4)
{
  v4 = sub_298AFE878(a1, a2, &v7, &v6, uu2);
  if (!*v4)
  {
    operator new();
  }

  return *v4;
}

const unsigned __int8 *sub_298AFE878(const unsigned __int8 **a1, const unsigned __int8 *a2, const unsigned __int8 **a3, const unsigned __int8 **a4, unsigned __int8 *uu2)
{
  v9 = (a1 + 1);
  if (a1 + 1 == a2 || uuid_compare(uu2, a2 + 32) < 0)
  {
    if (*a1 == a2)
    {
      v13 = a2;
    }

    else
    {
      v12 = *a2;
      if (*a2)
      {
        do
        {
          v13 = v12;
          v12 = *(v12 + 8);
        }

        while (v12);
      }

      else
      {
        v17 = a2;
        do
        {
          v13 = *(v17 + 2);
          v18 = *v13 == v17;
          v17 = v13;
        }

        while (v18);
      }

      if ((uuid_compare(v13 + 32, uu2) & 0x80000000) == 0)
      {
        v19 = *v9;
        if (*v9)
        {
          do
          {
            while (1)
            {
              v20 = v19;
              if ((uuid_compare(uu2, v19 + 32) & 0x80000000) == 0)
              {
                break;
              }

              v19 = *v20;
              v9 = v20;
              if (!*v20)
              {
                goto LABEL_23;
              }
            }

            if ((uuid_compare(v20 + 32, uu2) & 0x80000000) == 0)
            {
              break;
            }

            v9 = v20 + 8;
            v19 = *(v20 + 1);
          }

          while (v19);
          goto LABEL_23;
        }

        goto LABEL_18;
      }
    }

    if (*a2)
    {
      *a3 = v13;
      return v13 + 8;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  else
  {
    if ((uuid_compare(a2 + 32, uu2) & 0x80000000) == 0)
    {
      *a3 = a2;
      *a4 = a2;
      return a4;
    }

    v14 = *(a2 + 1);
    if (v14)
    {
      v15 = *(a2 + 1);
      do
      {
        v16 = v15;
        v15 = *v15;
      }

      while (v15);
    }

    else
    {
      v21 = a2;
      do
      {
        v16 = *(v21 + 2);
        v18 = *v16 == v21;
        v21 = v16;
      }

      while (!v18);
    }

    if (v16 != v9)
    {
      if ((uuid_compare(uu2, v16 + 32) & 0x80000000) == 0)
      {
        v22 = *v9;
        if (*v9)
        {
          do
          {
            while (1)
            {
              v20 = v22;
              if ((uuid_compare(uu2, v22 + 32) & 0x80000000) == 0)
              {
                break;
              }

              v22 = *v20;
              v9 = v20;
              if (!*v20)
              {
                goto LABEL_23;
              }
            }

            if ((uuid_compare(v20 + 32, uu2) & 0x80000000) == 0)
            {
              break;
            }

            v9 = v20 + 8;
            v22 = *(v20 + 1);
          }

          while (v22);
          goto LABEL_23;
        }

LABEL_18:
        v20 = v9;
LABEL_23:
        *a3 = v20;
        return v9;
      }

      v14 = *(a2 + 1);
    }

    if (v14)
    {
      *a3 = v16;
      return v16;
    }

    else
    {
      *a3 = a2;
      return a2 + 8;
    }
  }
}

uint64_t sub_298AFEAD8(uint64_t a1)
{
  v2 = *(a1 + 536);
  *(a1 + 536) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 528);
  *(a1 + 528) = 0;
  if (v3)
  {
    sub_298AFECF0(a1 + 528, v3);
  }

  v4 = *(a1 + 520);
  *(a1 + 520) = 0;
  if (v4)
  {
    v5 = *(v4 + 72);
    if (v5)
    {
      v6 = *(v4 + 80);
      v7 = *(v4 + 72);
      if (v6 != v5)
      {
        do
        {
          v10 = *--v6;
          v9 = v10;
          *v6 = 0;
          if (v10)
          {
            v11 = *(v9 + 48);
            *(v9 + 48) = 0;
            if (v11)
            {
              (*(*v11 + 16))(v11);
            }

            v8 = sub_298AFEDE4(v9);
            MEMORY[0x29C2945F0](v8, 0x10A0C406CD7DBD9);
          }
        }

        while (v6 != v5);
        v7 = *(v4 + 72);
      }

      *(v4 + 80) = v5;
      operator delete(v7);
    }

    MEMORY[0x29C2945F0](v4, 0x1070C40970A9985);
  }

  sub_298AFEEB0(a1 + 496);
  MEMORY[0x29C2945E0](*(a1 + 472), 8);
  v12 = *(a1 + 264);
  if (v12)
  {
    do
    {
      v13 = *v12;
      operator delete(v12);
      v12 = v13;
    }

    while (v13);
  }

  v14 = *(a1 + 248);
  *(a1 + 248) = 0;
  if (v14)
  {
    operator delete(v14);
  }

  v15 = *(a1 + 224);
  if (v15)
  {
    do
    {
      v16 = *v15;
      operator delete(v15);
      v15 = v16;
    }

    while (v16);
  }

  v17 = *(a1 + 208);
  *(a1 + 208) = 0;
  if (v17)
  {
    operator delete(v17);
  }

  v18 = *(a1 + 176);
  if (v18)
  {
    *(a1 + 184) = v18;
    operator delete(v18);
  }

  sub_298AFEF9C(a1 + 136, *(a1 + 144));
  v19 = *(a1 + 104);
  if (v19)
  {
    do
    {
      v20 = *v19;
      sub_298AFE6E4(v19 + 2);
      operator delete(v19);
      v19 = v20;
    }

    while (v20);
  }

  v21 = *(a1 + 88);
  *(a1 + 88) = 0;
  if (v21)
  {
    operator delete(v21);
  }

  v22 = *(a1 + 32);
  if (v22)
  {
    *(a1 + 40) = v22;
    operator delete(v22);
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_298AFECF0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 112);
    if (v3)
    {
      v4 = *(a2 + 120);
      v5 = *(a2 + 112);
      if (v4 != v3)
      {
        do
        {
          v7 = *(v4 - 8);
          v4 -= 8;
          v6 = v7;
          if (v7)
          {
            (*(*v6 + 8))(v6);
          }
        }

        while (v4 != v3);
        v5 = *(a2 + 112);
      }

      *(a2 + 120) = v3;
      operator delete(v5);
    }

    std::mutex::~mutex((a2 + 48));
    v8 = *(a2 + 16);
    if (v8)
    {
      v9 = *(a2 + 24);
      v10 = *(a2 + 16);
      if (v9 != v8)
      {
        do
        {
          std::thread::~thread((v9 - 8));
        }

        while (v9 != v8);
        v10 = *(a2 + 16);
      }

      *(a2 + 24) = v8;
      operator delete(v10);
    }

    JUMPOUT(0x29C2945F0);
  }
}

uint64_t sub_298AFEDE4(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *(a1 + 40) = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 64;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 128;
LABEL_7:
    *(a1 + 32) = v5;
  }

  if (v2 != v3)
  {
    do
    {
      v6 = *v2++;
      operator delete(v6);
    }

    while (v2 != v3);
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7 != v8)
    {
      *(a1 + 16) = v7 + ((v8 - v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_298AFEEB0(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = -200 * v3;
    v5 = v2 + 200 * v3 - 88;
    do
    {
      while (1)
      {
        v6 = *(v5 + 80);
        *(v5 + 80) = 0;
        if (v6)
        {
          (*(*v6 + 16))(v6);
        }

        v7 = *(v5 + 56);
        if (v7)
        {
          *(v5 + 64) = v7;
          operator delete(v7);
        }

        if (*(v5 + 24) == 1 && *(v5 + 23) < 0)
        {
          operator delete(*v5);
        }

        if (*(v5 - 73) < 0)
        {
          break;
        }

        v5 -= 200;
        v4 += 200;
        if (!v4)
        {
          goto LABEL_13;
        }
      }

      operator delete(*(v5 - 96));
      v5 -= 200;
      v4 += 200;
    }

    while (v4);
LABEL_13:
    v2 = *a1;
  }

  if (v2 != (a1 + 16))
  {
    free(v2);
  }

  return a1;
}

void sub_298AFEF9C(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_298AFEF9C(a1, *a2);
    sub_298AFEF9C(a1, *(a2 + 1));
    if (a2[71] < 0)
    {
      operator delete(*(a2 + 6));
      v4 = a2;
    }

    else
    {
      v4 = a2;
    }

    operator delete(v4);
  }
}

void sub_298AFF020(void *a1)
{
  v2 = a1[14];
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = a1[12];
  a1[12] = 0;
  if (v4)
  {
    operator delete(v4);
  }

  v5 = a1[9];
  if (v5)
  {
    do
    {
      v6 = *v5;
      operator delete(v5);
      v5 = v6;
    }

    while (v6);
  }

  v7 = a1[7];
  a1[7] = 0;
  if (v7)
  {
    operator delete(v7);
  }

  v8 = a1[3];
  if (v8)
  {
    a1[4] = v8;
    operator delete(v8);
  }

  JUMPOUT(0x29C2945F0);
}

void sub_298AFF0C4(uint64_t **a1, _BYTE *__src, size_t __len, void (*a4)(uint64_t, __int128 *), uint64_t a5)
{
  v42 = *MEMORY[0x29EDCA608];
  v34 = 0uLL;
  v20 = 257;
  v21 = 1;
  if (__src)
  {
    if (__len >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_298ADDDA0();
    }

    if (__len >= 0x17)
    {
      operator new();
    }

    HIBYTE(v24) = __len;
    if (__len)
    {
      memmove(&__p, __src, __len);
    }

    *(&__p + __len) = 0;
  }

  else
  {
    __p = 0;
    v23 = 0;
    v24 = 0;
  }

  v25 = 0;
  v26 = 0;
  v27 = 0;
  sub_298AFF468(&v20, &v35);
  if (!v35)
  {
    v23 = 0;
    v24 = 0;
    __p = 0;
    v11 = v27;
    v27 = 0;
    v35 = v11;
    sub_298C39D18();
  }

  v33 |= 1u;
  v32 = v35;
  v10 = v27;
  v27 = 0;
  if (v10)
  {
    (*(*v10 + 16))(v10);
  }

  if (SHIBYTE(v24) < 0)
  {
    operator delete(__p);
    v12 = v32;
    if (v33)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v12 = v32;
    if (v33)
    {
LABEL_17:
      *a1 = v12;
      return;
    }
  }

  sub_298BD96DC(v12, __src, __len, 0, 0, &v35);
  if (v41)
  {
    v13 = v35;
    v35 = 0;
    *a1 = v13;
    if (v13)
    {
      sub_298BE5B3C(&v35);
      v14 = v12->n128_u64[1];
      v12->n128_u64[1] = 0;
      if (!v14)
      {
        goto LABEL_34;
      }

LABEL_31:
      v18 = *(v14 + 40);
      *(v14 + 40) = 0;
      if (v18)
      {
        MEMORY[0x29C2945C0](v18, 0x1000C8077774924);
      }

      MEMORY[0x29C2945F0](v14, 0x1070C4001F9CED1);
      goto LABEL_34;
    }

    v15 = 0;
  }

  else
  {
    *a1 = 0;
    v15 = v35;
  }

  v16 = v36;
  v35 = 0;
  v36 = 0;
  v28[0] = v15;
  v28[1] = v16;
  v28[2] = v37;
  LOBYTE(v29) = 0;
  v31 = 0;
  if (v40 == 1)
  {
    v29 = v38;
    v30 = v39;
    v39 = 0;
    v38 = 0uLL;
    v31 = 1;
    v17 = *(v37 + 336);
    if (v17)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v17 = *(v37 + 336);
    if (v17)
    {
LABEL_27:
      v34 = *(v17 + 8);
      goto LABEL_30;
    }
  }

  v34 = 0uLL;
LABEL_30:
  *a1 = 0;
  sub_298BD9AA8(v28);
  sub_298BE5B3C(&v35);
  a4(a5, &v34);
  v14 = v12->n128_u64[1];
  v12->n128_u64[1] = 0;
  if (v14)
  {
    goto LABEL_31;
  }

LABEL_34:
  v19 = v12->n128_u64[0];
  v12->n128_u64[0] = 0;
  if (v19)
  {
    (*(*v19 + 16))(v19);
  }

  MEMORY[0x29C2945F0](v12, 0x1070C401CED0764);
}

void sub_298AFF468(uint64_t a1@<X0>, void *a2@<X8>)
{
  v49 = *MEMORY[0x29EDCA608];
  if (!*(a1 + 48))
  {
    if (*(a1 + 1))
    {
      if (*a1 == 1)
      {
        v4 = a1 + 8;
        v3 = *(a1 + 8);
        v5 = *(a1 + 31);
        if (v5 >= 0)
        {
          v3 = (a1 + 8);
        }

        if (v5 < 0)
        {
          v5 = *(a1 + 16);
        }

        v48 = 261;
        v47[0] = v3;
        v47[1] = v5;
        sub_298B8D930(v47, 0, v44, 0xFFFFFFFFFFFFFFFFLL, 0, 0, 0, 0);
        if (v45)
        {
          v6 = std::generic_category();
          v38[0] = "StorageLayer.h";
          v39 = 259;
          v36[0] = ":";
          v37 = 259;
          sub_298ADC860(v38, v36, v40);
          sub_298AFB090(0x29EuLL, 0, __p);
          v35 = 260;
          v34[0] = __p;
          sub_298ADC860(v40, v34, v41);
          v32[0] = ": ";
          v33 = 259;
          sub_298ADC860(v41, v32, v42);
          v30[0] = "failed to open file: ";
          v31 = 259;
          sub_298ADC860(v42, v30, v43);
          v7 = *(a1 + 31);
          v8 = *(a1 + 8);
          if (v7 >= 0)
          {
            v8 = v4;
          }

          if (v7 < 0)
          {
            v7 = *(a1 + 16);
          }

          v28 = 261;
          v27[0] = v8;
          v27[1] = v7;
          sub_298ADC860(v43, v27, v47);
          sub_298ADDCA4(45, v6, v47);
        }

        operator new();
      }

      v16 = a1 + 8;
      v17 = *(a1 + 31);
      if (v17 >= 0)
      {
        v18 = a1 + 8;
      }

      else
      {
        v18 = *(a1 + 8);
      }

      v19 = *(v16 + 8);
      if (v17 >= 0)
      {
        v20 = v17;
      }

      else
      {
        v20 = v19;
      }

      sub_298C39F04(v18, v20);
    }

    v10 = std::generic_category();
    v34[0] = "StorageLayer.h";
    v35 = 259;
    v32[0] = ":";
    v33 = 259;
    sub_298ADC860(v34, v32, v36);
    sub_298AFB090(0x298uLL, 0, v29);
    v31 = 260;
    v30[0] = v29;
    sub_298ADC860(v36, v30, v38);
    v27[0] = ": ";
    v28 = 259;
    sub_298ADC860(v38, v27, v40);
    v44[0] = "did not find ";
    v46 = 259;
    sub_298ADC860(v40, v44, v41);
    v13 = *(a1 + 8);
    v12 = a1 + 8;
    v11 = v13;
    v14 = *(v12 + 23);
    if (v14 >= 0)
    {
      v11 = v12;
    }

    if (v14 < 0)
    {
      v14 = *(v12 + 8);
    }

    v26 = 261;
    __p[0] = v11;
    __p[1] = v14;
    sub_298ADC860(v41, __p, v42);
    v23 = ", and couldn't search for it on the local filesystem: ";
    v24 = 259;
    sub_298ADC860(v42, &v23, v43);
    v22 = 261;
    v15 = *(v12 + 32);
    v21[0] = *(v12 + 24);
    v21[1] = v15;
    sub_298ADC860(v43, v21, v47);
    sub_298ADDCA4(45, v10, v47);
  }

  *a2 = 0;
}

void *sub_298AFF8F8(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = *(v1 + 16);
    *(v1 + 16) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    MEMORY[0x29C2945F0](v1, 0x10A1C406B6A53AFLL);
    return v2;
  }

  return result;
}

uint64_t sub_298AFF970(uint64_t result)
{
  v1 = *(result + 8);
  v2 = *result;
  *result = 0;
  if (v1)
  {
    if (v2)
    {
      v3 = result;
      (*(*v2 + 8))(v2);
      return v3;
    }
  }

  else if (v2)
  {
    v4 = result;
    v5 = v2;
    sub_298BAC580(v2[3]);
    v5[3] = 0;
    *(v5 + 2) = 0;
    MEMORY[0x29C2945F0](v5, 0x1081C40468F112ELL);
    return v4;
  }

  return result;
}

void sub_298AFFA18(uint64_t *a1, uint64_t a2)
{
  v3 = *(*a1 + 8);
  v7[1] = 0;
  v7[2] = 0;
  v7[0] = a2;
  v4 = 2 * *a1[1];
  v5 = *a1[2];
  if (v5)
  {
    v6 = strlen(*a1[2]);
  }

  else
  {
    v6 = 0;
  }

  v8[0] = 0;
  v9 = 0;
  sub_298C16C08(v3, 0, v7, v4, 1, v5, v6, v8);
}

void sub_298AFFB74(const char ***a1@<X0>, const unsigned __int8 *a2@<X1>, void *a3@<X8>)
{
  v3 = (*a1)[1];
  v8[1] = 0;
  v8[2] = 0;
  v8[0] = a2;
  v4 = *a1[1];
  if (v4)
  {
    v5 = a3;
    v6 = strlen(*a1[1]);
    a3 = v5;
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  sub_298C16F0C(v3, v8, v4, v7, a3);
}

uint64_t sub_298AFFBE8(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (37 * *a2) & (v2 - 1);
    v4 = (*a1 + 8 * v3);
    v5 = *v4;
    if (*a2 == *v4)
    {
      return 0;
    }

    v14 = 0;
    v15 = 1;
    while (v5 != -1)
    {
      if (v14)
      {
        v16 = 0;
      }

      else
      {
        v16 = v5 == -2;
      }

      if (v16)
      {
        v14 = v4;
      }

      v17 = v3 + v15++;
      v3 = v17 & (v2 - 1);
      v4 = (*a1 + 8 * v3);
      v5 = *v4;
      if (*a2 == *v4)
      {
        return 0;
      }
    }

    if (v14)
    {
      v7 = v14;
    }

    else
    {
      v7 = v4;
    }
  }

  else
  {
    v7 = 0;
  }

  v10 = sub_298AFFD94(a1, a2, a2, v7);
  v11 = a1;
  v12 = *a2;
  *v10 = v12;
  v13 = *(a1 + 32);
  if (v13 >= *(a1 + 36))
  {
    sub_298B90A44(a1 + 24, (a1 + 40), v13 + 1, 8);
    v11 = a1;
    LODWORD(v13) = *(a1 + 32);
  }

  *(*(v11 + 24) + 8 * v13) = v12;
  ++*(v11 + 32);
  return 1;
}

uint64_t sub_298AFFCFC(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = (37 * *a2) & (v3 - 1);
    v7 = (*a1 + 8 * v6);
    v8 = *v7;
    if (*a2 == *v7)
    {
      result = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      result = 1;
      while (v8 != -1)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v8 == -2;
        }

        if (v12)
        {
          v10 = v7;
        }

        v13 = v6 + v11++;
        v6 = v13 & v5;
        v7 = (v4 + 8 * (v13 & v5));
        v8 = *v7;
        if (*a2 == *v7)
        {
          goto LABEL_4;
        }
      }

      result = 0;
      if (v10)
      {
        v7 = v10;
      }
    }
  }

  else
  {
    v7 = 0;
    result = 0;
  }

LABEL_4:
  *a3 = v7;
  return result;
}

void *sub_298AFFD94(uint64_t *a1, uint64_t a2, void *a3, void *a4)
{
  v9 = a4;
  v4 = *(a1 + 2);
  v5 = *(a1 + 4);
  if (4 * v4 + 4 >= 3 * v5)
  {
    v7 = a3;
    v5 *= 2;
  }

  else
  {
    if (v5 + ~v4 - *(a1 + 3) > v5 >> 3)
    {
      goto LABEL_3;
    }

    v7 = a3;
  }

  v8 = a1;
  sub_298AFFE4C(a1, v5);
  sub_298AFFCFC(v8, v7, &v9);
  a1 = v8;
  v4 = *(v8 + 2);
  a4 = v9;
LABEL_3:
  *(a1 + 2) = v4 + 1;
  if (*a4 != -1)
  {
    --*(a1 + 3);
  }

  return a4;
}

unint64_t *sub_298AFFE4C(unint64_t **a1, int a2)
{
  v3 = *(a1 + 4);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 4) = v8;
  result = operator new(8 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    sub_298AFFF2C(a1, v4, &v4[v3]);

    JUMPOUT(0x29C2945E0);
  }

  a1[1] = 0;
  v10 = *(a1 + 4);
  if (v10)
  {

    return memset(result, 255, 8 * v10);
  }

  return result;
}

void **sub_298AFFF2C(void **result, unint64_t *a2, unint64_t *a3)
{
  v5 = result;
  result[1] = 0;
  v6 = *(result + 4);
  if (v6)
  {
    result = memset(*result, 255, 8 * v6);
  }

  if (a2 != a3)
  {
    v7 = 0;
    v8 = v6 - 1;
    do
    {
      v10 = *a2;
      if (*a2 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v11 = (37 * v10) & v8;
        v9 = (*v5 + 8 * v11);
        v12 = *v9;
        if (v10 != *v9)
        {
          v13 = 0;
          v14 = 1;
          while (v12 != -1)
          {
            if (v13)
            {
              v15 = 0;
            }

            else
            {
              v15 = v12 == -2;
            }

            if (v15)
            {
              v13 = v9;
            }

            v16 = v11 + v14++;
            v11 = v16 & v8;
            v9 = (*v5 + 8 * (v16 & v8));
            v12 = *v9;
            if (v10 == *v9)
            {
              goto LABEL_7;
            }
          }

          if (v13)
          {
            v9 = v13;
          }
        }

LABEL_7:
        *v9 = v10;
        *(v5 + 2) = ++v7;
      }

      ++a2;
    }

    while (a2 != a3);
  }

  return result;
}

void sub_298B00014(uint64_t *a1, uint64_t a2)
{
  v4 = *(*a1 + 8);
  v5 = *(v4 + 464);
  if (!*&v5)
  {
    goto LABEL_15;
  }

  v6 = *a1[1];
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] <= 1uLL)
  {
    v8 = (*&v5 - 1) & v6;
  }

  else
  {
    v8 = *&v5 > v6 ? *a1[1] : v6 % *&v5;
  }

  v9 = *(*(v4 + 456) + 8 * v8);
  if (!v9)
  {
    goto LABEL_15;
  }

  v10 = *v9;
  if (!v10)
  {
    goto LABEL_15;
  }

  if (v7.u32[0] < 2uLL)
  {
    v11 = *&v5 - 1;
    while (1)
    {
      v16 = v10[1];
      if (v16 == v6)
      {
        if (v10[2] == v6)
        {
          goto LABEL_22;
        }
      }

      else if ((v16 & v11) != v8)
      {
        goto LABEL_15;
      }

      v10 = *v10;
      if (!v10)
      {
        goto LABEL_15;
      }
    }
  }

  while (1)
  {
    v12 = v10[1];
    if (v12 == v6)
    {
      if (v10[2] == v6)
      {
LABEL_22:
        v17 = *(v10 + 6);
        if (v17 != *(v4 + 504))
        {
          v13 = *(*(v4 + 496) + 16 * v17 + 8);
          v19 = 0;
          v20 = 0;
          v18 = a2;
          v14 = *a1[2];
          if (!v14)
          {
LABEL_24:
            v15 = 0;
LABEL_25:
            sub_298C177D8(v4, v13, &v18, v14, v15, 2 * *a1[3], *a1[4], 1);
          }

LABEL_16:
          v15 = strlen(v14);
          goto LABEL_25;
        }

LABEL_15:
        v13 = 0;
        v19 = 0;
        v20 = 0;
        v18 = a2;
        v14 = *a1[2];
        if (!v14)
        {
          goto LABEL_24;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (v12 >= *&v5)
      {
        v12 %= *&v5;
      }

      if (v12 != v8)
      {
        goto LABEL_15;
      }
    }

    v10 = *v10;
    if (!v10)
    {
      goto LABEL_15;
    }
  }
}

uint64_t sub_298B0036C(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x29EDCA608];
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  v4 = a1 + 16;
  uuid_copy(a1, (a2 + 264));
  v7 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 1;
  v9 = 0;
  v10 = 0;
  v8 = 0;
  v6 = &unk_2A1F1E040;
  v14 = v4;
  sub_298ADDDB0(&v6);
  v17[17] = 0;
  v17[18] = &v6;
  v17[19] = 0;
  v17[16] = 0;
  v16[0] = v17;
  v16[1] = 0x1000000001;
  v17[0] = 0;
  memset(out, 0, 37);
  uuid_unparse_upper((a2 + 264), out);
  v15[0] = v16;
  v15[1] = a2;
  v15[2] = out;
  sub_298B89BA0(v16);
  sub_298C5B5D0(v15);
  sub_298B89C2C(v16);
  if (v16[0] != v17)
  {
    free(v16[0]);
  }

  sub_298B9AE14(&v6);
  return a1;
}

void hwtrace_create_decoder()
{
  v0 = getenv("RC_XBS");
  if (!v0)
  {
    dword_2A13C2B68 = 1;
    operator new();
  }

  v1 = sub_298B9A258(v0);
  v2 = sub_298B00584(v1, "Please do not use this library in XBS.\n");
  v3 = sub_298B00584(v2, off_2A13C2B70);
  sub_298B00584(v3, "\n");
  exit(1);
}

uint64_t sub_298B00584(uint64_t a1, char *__s)
{
  if (!__s)
  {
    return a1;
  }

  v4 = strlen(__s);
  v5 = *(a1 + 32);
  if (v4 > *(a1 + 24) - v5)
  {
    sub_298B9BCEC(a1, __s, v4);
    return a1;
  }

  if (!v4)
  {
    return a1;
  }

  memcpy(v5, __s, v4);
  *(a1 + 32) += v4;
  return a1;
}

uint64_t hwtrace_destroy_decoder(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 200);
    if (v2)
    {
      v3 = *(result + 208);
      v4 = *(result + 200);
      if (v3 != v2)
      {
        do
        {
          MEMORY[0x29C2945E0](*(v3 - 40), 8);
          MEMORY[0x29C2945E0](*(v3 - 64), 8);
          v5 = *(v3 - 72);
          *(v3 - 72) = 0;
          if (v5)
          {
            sub_298B07DB0((v5 + 28));
            MEMORY[0x29C2945F0](v5, 0x1020C40CE35E8ABLL);
          }

          v3 -= 88;
        }

        while (v3 != v2);
        v4 = *(v1 + 200);
      }

      *(v1 + 208) = v2;
      operator delete(v4);
    }

    v6 = *(v1 + 176);
    if (v6)
    {
      *(v1 + 184) = v6;
      operator delete(v6);
    }

    if (*(v1 + 175) < 0)
    {
      operator delete(*(v1 + 152));
      sub_298B06740((v1 + 104));
      v7 = *(v1 + 80);
      if (!v7)
      {
LABEL_37:
        v18 = *(v1 + 72);
        *(v1 + 72) = 0;
        if (v18)
        {
          v19 = sub_298AE99FC(v18);
          MEMORY[0x29C2945F0](v19, 0x10F0C40C4A041C6);
        }

        if (*(v1 + 63) < 0)
        {
          operator delete(*(v1 + 40));
          v20 = *(v1 + 32);
          *(v1 + 32) = 0;
          if (!v20)
          {
LABEL_42:
            v21 = *(v1 + 24);
            *(v1 + 24) = 0;
            if (v21)
            {
              (*(*v21 + 8))(v21);
            }

            v22 = *v1;
            if (*v1)
            {
              v23 = *(v1 + 8);
              v24 = *v1;
              if (v23 != v22)
              {
                do
                {
                  while (1)
                  {
                    v25 = *(v23 - 1);
                    v23 -= 3;
                    if (v25 < 0)
                    {
                      break;
                    }

                    if (v23 == v22)
                    {
                      goto LABEL_50;
                    }
                  }

                  operator delete(*v23);
                }

                while (v23 != v22);
LABEL_50:
                v24 = *v1;
              }

              *(v1 + 8) = v22;
              operator delete(v24);
            }

            JUMPOUT(0x29C2945F0);
          }
        }

        else
        {
          v20 = *(v1 + 32);
          *(v1 + 32) = 0;
          if (!v20)
          {
            goto LABEL_42;
          }
        }

        (*(*v20 + 8))(v20);
        goto LABEL_42;
      }
    }

    else
    {
      sub_298B06740((v1 + 104));
      v7 = *(v1 + 80);
      if (!v7)
      {
        goto LABEL_37;
      }
    }

    v8 = *(v1 + 88);
    v9 = v7;
    if (v8 == v7)
    {
LABEL_36:
      *(v1 + 88) = v7;
      operator delete(v9);
      goto LABEL_37;
    }

    while (1)
    {
      v10 = *(v8 - 3);
      if (v10)
      {
        *(v8 - 2) = v10;
        operator delete(v10);
        v11 = *(v8 - 6);
        if (!v11)
        {
LABEL_20:
          v12 = *(v8 - 9);
          if (!v12)
          {
            goto LABEL_21;
          }

          goto LABEL_29;
        }
      }

      else
      {
        v11 = *(v8 - 6);
        if (!v11)
        {
          goto LABEL_20;
        }
      }

      *(v8 - 5) = v11;
      operator delete(v11);
      v12 = *(v8 - 9);
      if (!v12)
      {
LABEL_21:
        v13 = *(v8 - 12);
        if (!v13)
        {
          goto LABEL_22;
        }

        goto LABEL_30;
      }

LABEL_29:
      *(v8 - 8) = v12;
      operator delete(v12);
      v13 = *(v8 - 12);
      if (!v13)
      {
LABEL_22:
        v14 = *(v8 - 15);
        if (!v14)
        {
          goto LABEL_23;
        }

        goto LABEL_31;
      }

LABEL_30:
      *(v8 - 11) = v13;
      operator delete(v13);
      v14 = *(v8 - 15);
      if (!v14)
      {
LABEL_23:
        v15 = *(v8 - 18);
        if (!v15)
        {
          goto LABEL_24;
        }

        goto LABEL_32;
      }

LABEL_31:
      *(v8 - 14) = v14;
      operator delete(v14);
      v15 = *(v8 - 18);
      if (!v15)
      {
LABEL_24:
        v16 = *(v8 - 21);
        if (v16)
        {
          goto LABEL_33;
        }

        goto LABEL_25;
      }

LABEL_32:
      *(v8 - 17) = v15;
      operator delete(v15);
      v16 = *(v8 - 21);
      if (v16)
      {
LABEL_33:
        *(v8 - 20) = v16;
        operator delete(v16);
        v17 = *(v8 - 24);
        if (!v17)
        {
          goto LABEL_17;
        }

LABEL_26:
        *(v8 - 23) = v17;
        operator delete(v17);
        goto LABEL_17;
      }

LABEL_25:
      v17 = *(v8 - 24);
      if (v17)
      {
        goto LABEL_26;
      }

LABEL_17:
      v8 -= 200;
      if (v8 == v7)
      {
        v9 = *(v1 + 80);
        goto LABEL_36;
      }
    }
  }

  return result;
}

uint64_t hwtrace_set_kernelcache_stub_optimization(uint64_t result, int a2)
{
  if (*(result + 32))
  {
    v20[8] = v7;
    v20[9] = v6;
    v20[10] = v5;
    v20[11] = v4;
    v20[12] = v3;
    v20[13] = v2;
    v20[14] = v8;
    v20[15] = v9;
    std::generic_category();
    v12[0] = "libapplehwtrace.cpp";
    v12[2] = ":";
    v13 = 771;
    v11 = 3;
    v10 = 3486773;
    v14[0] = v12;
    v14[2] = &v10;
    v15 = 1026;
    v16[0] = v14;
    v16[2] = ": ";
    v17 = 770;
    v18[0] = v16;
    v18[2] = "Set KCSO before registering a trace";
    v19 = 770;
    sub_298B996A4(v18, v20);
    operator new();
  }

  *(result + 64) = a2 != 0;
  return result;
}

void hwtrace_register_trace_dir(uint64_t a1, char *__s)
{
  v6 = *MEMORY[0x29EDCA608];
  v4 = __s;
  if (__s)
  {
    v3 = strlen(__s);
  }

  else
  {
    v3 = 0;
  }

  v5 = v3;
  sub_298B9CDFC();
  sub_298C1E528(__s, v3);
}

uint64_t *sub_298B00CB0(void ***a1, uint64_t **a2)
{
  v4 = sub_298B9CEA8();
  v5 = sub_298B9A354(v4, &unk_298EAC9FE, 0, 0);
  v6 = v5;
  v7 = v5[4];
  if (v5[3] - v7 > 0x15uLL)
  {
    qmemcpy(v7, "Could not load trace (", 22);
    v10 = (v5[4] + 22);
    *(v6 + 32) = v10;
    v8 = **a1;
    v9 = (*a1)[1];
    if (v9 <= *(v6 + 24) - v10)
    {
LABEL_3:
      if (v9)
      {
        v11 = v9;
        memcpy(v10, v8, v9);
        v10 = &v11[*(v6 + 32)];
        *(v6 + 32) = v10;
      }

      if (*(v6 + 24) - v10 <= 2uLL)
      {
        goto LABEL_6;
      }

      goto LABEL_9;
    }
  }

  else
  {
    sub_298B9BCEC(v5, "Could not load trace (", 0x16uLL);
    v8 = **a1;
    v9 = (*a1)[1];
    v10 = *(v6 + 32);
    if (v9 <= *(v6 + 24) - v10)
    {
      goto LABEL_3;
    }
  }

  sub_298B9BCEC(v6, v8, v9);
  v10 = *(v6 + 32);
  if (*(v6 + 24) - v10 <= 2uLL)
  {
LABEL_6:
    sub_298B9BCEC(v6, "): ", 3uLL);
    goto LABEL_10;
  }

LABEL_9:
  v10[2] = 32;
  *v10 = 14889;
  *(v6 + 32) += 3;
LABEL_10:
  v16 = *a2;
  *a2 = 0;
  sub_298B851B0(&v16, &__p);
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
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  sub_298B9BCEC(v6, p_p, size);
  v14 = *(v6 + 32);
  if (*(v6 + 24) == v14)
  {
    sub_298B9BCEC(v6, "\n", 1uLL);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_18:
      result = v16;
      if (!v16)
      {
        return result;
      }

      return (*(*result + 8))(result);
    }
  }

  else
  {
    *v14 = 10;
    ++*(v6 + 32);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  result = v16;
  if (!v16)
  {
    return result;
  }

  return (*(*result + 8))(result);
}

void sub_298B00EAC(void **a1, uint64_t a2, uint64_t *a3)
{
  __p[3] = *MEMORY[0x29EDCA608];
  v4 = *a3;
  *a3 = 0;
  v5 = *(a2 + 32);
  *(a2 + 32) = v4;
  if (v5)
  {
    (*(*v5 + 8))(v5);
    v4 = *(a2 + 32);
  }

  sub_298C207BC(v4, __p);
  v6 = *__p[0];
  __p[1] = __p[0];
  operator delete(__p[0]);
  *(v6 + 352) = *(a2 + 64);
  sub_298BD60CC();
}

uint64_t hwtrace_register_trace_bin(uint64_t a1, char *__s, char *a3, uint64_t a4)
{
  v86 = *MEMORY[0x29EDCA608];
  if (__s)
  {
    v8 = strlen(__s);
    if (a3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = 0;
    if (a3)
    {
LABEL_3:
      v9 = strlen(a3);
      v10 = sub_298BE6DC0(a3, v9);
      if ((v10 & 0x100000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  v10 = sub_298BE6DC0(a3, 0);
  if ((v10 & 0x100000000) == 0)
  {
LABEL_4:
    v11 = sub_298B9CEA8();
    v12 = sub_298B9A354(v11, &unk_298EAC9FE, 0, 0);
    v13 = v12;
    v14 = v12[4];
    if (v12[3] - v14 > 0x1BuLL)
    {
      qmemcpy(v14, "Unknown PlatformGeneration: ", 28);
      v15 = (v12[4] + 28);
      v12[4] = v15;
      if (!a3)
      {
        goto LABEL_23;
      }
    }

    else
    {
      sub_298B9BCEC(v12, "Unknown PlatformGeneration: ", 0x1CuLL);
      v15 = *(v13 + 32);
      if (!a3)
      {
LABEL_23:
        if (*(v13 + 24) == v15)
        {
          sub_298B9BCEC(v13, "\n", 1uLL);
        }

        else
        {
          *v15 = 10;
          ++*(v13 + 32);
        }

        return 1;
      }
    }

    v21 = strlen(a3);
    v22 = v21;
    if (v21 <= *(v13 + 24) - v15)
    {
      if (v21)
      {
        memcpy(v15, a3, v21);
        v15 = (*(v13 + 32) + v22);
        *(v13 + 32) = v15;
      }
    }

    else
    {
      sub_298B9BCEC(v13, a3, v21);
      v15 = *(v13 + 32);
    }

    goto LABEL_23;
  }

LABEL_9:
  v16 = v10;
  LOWORD(v74) = 261;
  v72.__r_.__value_.__r.__words[0] = __s;
  v72.__r_.__value_.__l.__size_ = v8;
  sub_298B8D930(&v72, 0, &v84, 0xFFFFFFFFFFFFFFFFLL, 0, 0, 0, 0);
  if ((v85 & 1) == 0)
  {
    v23 = v84;
    v24 = *(v84 + 8);
    v25 = *(v84 + 16) - v24;
    v26 = (*(*v84 + 16))(v84);
    v72.__r_.__value_.__r.__words[0] = v24;
    v72.__r_.__value_.__l.__size_ = v25;
    v72.__r_.__value_.__r.__words[2] = v26;
    v73 = v27;
    sub_298B819BC(&v72, 0, &v82);
    if (v83)
    {
      v28 = v82;
      v82 = 0;
      v65.__r_.__value_.__r.__words[0] = v28;
      sub_298AE72FC(&v65, &v72);
      if (v65.__r_.__value_.__r.__words[0])
      {
        (*(*v65.__r_.__value_.__l.__data_ + 8))(v65.__r_.__value_.__r.__words[0]);
      }

      *&v84 = 0;
      v29 = *(a1 + 24);
      *(a1 + 24) = v23;
      if (v29)
      {
        (*(*v29 + 8))(v29);
      }

      memset(&v65, 0, sizeof(v65));
      LODWORD(v72.__r_.__value_.__l.__data_) = v16;
      *(v72.__r_.__value_.__r.__words + 4) = 0x4343415000000000;
      HIBYTE(v73) = 4;
      v72.__r_.__value_.__s.__data_[12] = 0;
      v74 = 0x100000001;
      v75 = 1;
      v78[24] = 0;
      v78[48] = 0;
      v76 = 0u;
      v77 = 0u;
      memset(v78, 0, 19);
      v79 = 0u;
      v80 = 0u;
      *__p_8 = 0u;
      operator new();
    }

    v61[0] = 0;
    v61[1] = 0;
    v59 = 0;
    v60 = 0;
    sub_298C10DE4(v82, 0, v61, &v59, a4, &v65);
    if (v65.__r_.__value_.__r.__words[0])
    {
      v33 = sub_298B9CEA8();
      v34 = sub_298B9A354(v33, &unk_298EAC9FE, 0, 0);
      v35 = v34[4];
      if (v8 <= v34[3] - v35)
      {
        if (v8)
        {
          memcpy(v35, __s, v8);
          v35 = (v34[4] + v8);
          v34[4] = v35;
        }
      }

      else
      {
        sub_298B9BCEC(v34, __s, v8);
        v35 = v34[4];
      }

      if (v34[3] - v35 > 1uLL)
      {
        *v35 = 8250;
        v34[4] += 2;
      }

      else
      {
        sub_298B9BCEC(v34, ": ", 2uLL);
      }

      v58 = v65.__r_.__value_.__r.__words[0];
      v65.__r_.__value_.__r.__words[0] = 0;
      sub_298B851B0(&v58, &v72);
      if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v41 = &v72;
      }

      else
      {
        v41 = v72.__r_.__value_.__r.__words[0];
      }

      if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v72.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v72.__r_.__value_.__l.__size_;
      }

      sub_298B9BCEC(v34, v41, size);
      v43 = v34[4];
      if (v34[3] == v43)
      {
        sub_298B9BCEC(v34, "\n", 1uLL);
      }

      else
      {
        *v43 = 10;
        ++v34[4];
      }

      if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v72.__r_.__value_.__l.__data_);
        v44 = v58;
        if (!v58)
        {
LABEL_65:
          if (v65.__r_.__value_.__r.__words[0])
          {
            (*(*v65.__r_.__value_.__l.__data_ + 8))(v65.__r_.__value_.__r.__words[0]);
          }

          goto LABEL_107;
        }
      }

      else
      {
        v44 = v58;
        if (!v58)
        {
          goto LABEL_65;
        }
      }

      (*(*v44 + 8))(v44);
      goto LABEL_65;
    }

    LODWORD(v65.__r_.__value_.__r.__words[1]) = 0;
    v68 = 0;
    v69 = 0;
    v70 = 1;
    v66 = 0;
    v67 = 0;
    v65.__r_.__value_.__r.__words[2] = 0;
    v65.__r_.__value_.__r.__words[0] = &unk_2A1F1E040;
    v71 = a1 + 40;
    sub_298ADDDB0(&v65);
    v63 = v61[0];
    v64 = v61[0];
    *&v80 = 0;
    *(&v80 + 1) = &v65;
    __p_8[0] = 2;
    *(&v79 + 1) = 0;
    v72.__r_.__value_.__r.__words[0] = &v72.__r_.__value_.__r.__words[2];
    *&v72.__r_.__value_.__r.__words[1] = 0x1000000001uLL;
    v62[0] = &v64;
    v62[1] = &v72;
    v62[2] = &v63;
    sub_298B89BA0(&v72);
    sub_298C13DBC(v62);
    sub_298B89C2C(&v72);
    if (v72.__r_.__value_.__l.__data_ != &v72.__r_.__value_.__r.__words[2])
    {
      free(v72.__r_.__value_.__l.__data_);
    }

    sub_298B9AE14(&v65);
    sub_298C112C0(0, v16 & 0x1FFFFFFFFLL, v61[0], v59, v60, &v72);
    if ((v73 & 1) == 0 || (v36 = v72.__r_.__value_.__r.__words[0], v72.__r_.__value_.__r.__words[0] = 0, !v36))
    {
      sub_298C1FAD8();
    }

    v37 = sub_298B9CEA8();
    v38 = sub_298B9A354(v37, &unk_298EAC9FE, 0, 0);
    v39 = v38;
    v40 = v38[4];
    if (v38[3] - v40 > 0x2BuLL)
    {
      qmemcpy(v40, "Failed to extract trace data from coredump: ", 44);
      v38[4] += 44;
    }

    else
    {
      sub_298B9BCEC(v38, "Failed to extract trace data from coredump: ", 0x2CuLL);
    }

    v57 = v36;
    sub_298B851B0(&v57, &v65);
    if ((v65.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v45 = &v65;
    }

    else
    {
      v45 = v65.__r_.__value_.__r.__words[0];
    }

    if ((v65.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v46 = HIBYTE(v65.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v46 = v65.__r_.__value_.__l.__size_;
    }

    sub_298B9BCEC(v39, v45, v46);
    v47 = *(v39 + 32);
    if (*(v39 + 24) - v47 > 1uLL)
    {
      *v47 = 10272;
      v48 = (*(v39 + 32) + 2);
      *(v39 + 32) = v48;
    }

    else
    {
      sub_298B9BCEC(v39, " (", 2uLL);
      v48 = *(v39 + 32);
    }

    if (v8 <= *(v39 + 24) - v48)
    {
      if (v8)
      {
        memcpy(v48, __s, v8);
        v48 = (*(v39 + 32) + v8);
        *(v39 + 32) = v48;
      }
    }

    else
    {
      sub_298B9BCEC(v39, __s, v8);
      v48 = *(v39 + 32);
    }

    if (*(v39 + 24) - v48 > 1uLL)
    {
      *v48 = 2601;
      *(v39 + 32) += 2;
    }

    else
    {
      sub_298B9BCEC(v39, ")\n", 2uLL);
    }

    if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v65.__r_.__value_.__l.__data_);
      v49 = v57;
      if (!v57)
      {
        goto LABEL_90;
      }
    }

    else
    {
      v49 = v57;
      if (!v57)
      {
LABEL_90:
        v50 = v72.__r_.__value_.__r.__words[0];
        if (v73)
        {
          v72.__r_.__value_.__r.__words[0] = 0;
          if (v50)
          {
            (*(*v50 + 8))(v50);
          }

          goto LABEL_107;
        }

        if (!v72.__r_.__value_.__r.__words[0])
        {
          goto LABEL_107;
        }

        v51 = v72.__r_.__value_.__l.__size_;
        v52 = v72.__r_.__value_.__r.__words[0];
        if (v72.__r_.__value_.__l.__size_ == v72.__r_.__value_.__r.__words[0])
        {
          goto LABEL_106;
        }

        while (1)
        {
          v53 = *(v51 - 8);
          *(v51 - 8) = 0;
          if (v53)
          {
            (*(*v53 + 16))(v53);
            v54 = *(v51 - 32);
            if (!v54)
            {
LABEL_95:
              if (*(v51 - 64) == 1)
              {
                goto LABEL_96;
              }

              goto LABEL_98;
            }
          }

          else
          {
            v54 = *(v51 - 32);
            if (!v54)
            {
              goto LABEL_95;
            }
          }

          *(v51 - 24) = v54;
          operator delete(v54);
          if (*(v51 - 64) == 1)
          {
LABEL_96:
            if (*(v51 - 65) < 0)
            {
              operator delete(*(v51 - 88));
            }
          }

LABEL_98:
          if (*(v51 - 161) < 0)
          {
            operator delete(*(v51 - 184));
            v51 -= 192;
            if (v51 == v50)
            {
LABEL_105:
              v52 = v72.__r_.__value_.__r.__words[0];
LABEL_106:
              v72.__r_.__value_.__l.__size_ = v50;
              operator delete(v52);
LABEL_107:
              v55 = v82;
              v82 = 0;
              if (v83)
              {
                if (v55)
                {
                  (*(*v55 + 8))(v55);
                  if (v85)
                  {
                    return 1;
                  }

LABEL_113:
                  if (v84)
                  {
                    (*(*v84 + 8))(v84);
                  }

                  return 1;
                }
              }

              else if (v55)
              {
                (*(*v55 + 8))(v55);
                if (v85)
                {
                  return 1;
                }

                goto LABEL_113;
              }

              if ((v85 & 1) == 0)
              {
                goto LABEL_113;
              }

              return 1;
            }
          }

          else
          {
            v51 -= 192;
            if (v51 == v50)
            {
              goto LABEL_105;
            }
          }
        }
      }
    }

    (*(*v49 + 8))(v49);
    goto LABEL_90;
  }

  v17 = sub_298B9CEA8();
  v18 = sub_298B9A354(v17, &unk_298EAC9FE, 0, 0);
  v19 = v18;
  v20 = v18[4];
  if (v18[3] - v20 > 0x14uLL)
  {
    qmemcpy(v20, "Could not open file: ", 21);
    v18[4] += 21;
  }

  else
  {
    sub_298B9BCEC(v18, "Could not open file: ", 0x15uLL);
  }

  *&v65.__r_.__value_.__l.__data_ = v84;
  std::error_code::message(&v72, &v65);
  if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v30 = &v72;
  }

  else
  {
    v30 = v72.__r_.__value_.__r.__words[0];
  }

  if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v31 = HIBYTE(v72.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v31 = v72.__r_.__value_.__l.__size_;
  }

  sub_298B9BCEC(v19, v30, v31);
  v32 = *(v19 + 32);
  if (*(v19 + 24) == v32)
  {
    sub_298B9BCEC(v19, "\n", 1uLL);
    if ((SHIBYTE(v72.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return 1;
    }
  }

  else
  {
    *v32 = 10;
    ++*(v19 + 32);
    if ((SHIBYTE(v72.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return 1;
    }
  }

  operator delete(v72.__r_.__value_.__l.__data_);
  return 1;
}

void hwtrace_register_recording(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  *(a2 + 8) = 0;
  v3 = v2;
  sub_298B00EAC(&v4, a1, &v3);
}

uint64_t hwtrace_get_cluster_type(uint64_t a1, unsigned int a2)
{
  v2 = *(*(*(*(a1 + 80) + 200 * a2) + 40) + 32);
  if (v2 - 1 >= 4)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t hwtrace_get_unit_count(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 80);
  if (0x8F5C28F5C28F5C29 * ((*(a1 + 88) - v5) >> 3) <= a2)
  {
    v9 = sub_298B9A258(a1);
    v10 = sub_298B00584(v9, "Cluster index ");
    v11 = sub_298B06C38(v10, a2);
    sub_298B00584(v11, " out of bounds");
    abort();
  }

  v6 = *(**(*(v5 + 200 * a2) + 48) + 24);

  return v6();
}

uint64_t hwtrace_get_logical_cpuid(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = (a2 >> 3);
  v5 = a1[10];
  if (0x8F5C28F5C28F5C29 * ((a1[11] - v5) >> 3) <= v4)
  {
    v7 = sub_298B9A258(a1);
    v8 = sub_298B00584(v7, "Cluster index ");
    v9 = sub_298B06C38(v8, v4);
    sub_298B00584(v9, " out of bounds");
    abort();
  }

  return *(*(a1[9] + 96) + 4 * (a2 & 7 | (8 * *(*(*(v5 + 200 * (a2 >> 3)) + 40) + 4))));
}

double hwtrace_register_object_with_loadaddr(uint64_t a1, char *a2, uint64_t a3)
{
  if (*(a1 + 32))
  {
    sub_298B024D4(&v17, a1, a2, 0, a3);
    if (!v17)
    {
      return result;
    }

    v4 = sub_298B9CEA8();
    v5 = sub_298B9A354(v4, &unk_298EAC9FE, 0, 0);
    v6 = v5;
    v7 = v5[4];
    if (v5[3] - v7 > 0x19uLL)
    {
      qmemcpy(v7, "Failed to register image: ", 26);
      v5[4] += 26;
    }

    else
    {
      sub_298B9BCEC(v5, "Failed to register image: ", 0x1AuLL);
    }

    v15 = v17;
    v17 = 0;
    sub_298B851B0(&v15, &__p);
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
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    sub_298B9BCEC(v6, p_p, size);
    v13 = *(v6 + 32);
    if (*(v6 + 24) == v13)
    {
      sub_298B9BCEC(v6, "\n", 1uLL);
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_18:
        v14 = v15;
        if (!v15)
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      }
    }

    else
    {
      *v13 = 10;
      ++*(v6 + 32);
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_18;
      }
    }

    operator delete(__p.__r_.__value_.__l.__data_);
    v14 = v15;
    if (!v15)
    {
LABEL_20:
      if (v17)
      {
        (*(v17->n128_u64[0] + 8))(v17);
      }

      return result;
    }

LABEL_19:
    (*(*v14 + 8))(v14);
    goto LABEL_20;
  }

  v8 = sub_298B9CEA8();
  v9 = sub_298B9A354(v8, &unk_298EAC9FE, 0, 0);
  v10 = v9[4];
  if (v9[3] - v10 > 0x2CuLL)
  {
    qmemcpy(v10, "Cannot register object: no trace registered.\n", 45);
    result = *"ace registered.\n";
    v9[4] += 45;
  }

  else
  {

    sub_298B9BCEC(v9, "Cannot register object: no trace registered.\n", 0x2DuLL);
  }

  return result;
}

void sub_298B024D4(__n128 **a1, uint64_t a2, char *a3, const char *a4, uint64_t a5)
{
  v91 = *MEMORY[0x29EDCA608];
  sub_298B06794((a2 + 104), 0);
  if (*(a2 + 144) == 1)
  {
    *(a2 + 144) = 0;
  }

  v10 = -9;
  v12 = *(a2 + 8);
  v11 = *(a2 + 16);
  v54 = a5;
  if (v12 >= v11)
  {
    v15 = 0xAAAAAAAAAAAAAAABLL * (&v12[-*a2] >> 3);
    if (v15 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_298ADDDA0();
    }

    v16 = 0xAAAAAAAAAAAAAAABLL * ((v11 - *a2) >> 3);
    v17 = 2 * v16;
    if (2 * v16 <= v15 + 1)
    {
      v17 = v15 + 1;
    }

    if (v16 >= 0x555555555555555)
    {
      v18 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v18 = v17;
    }

    if (v18)
    {
      if (v18 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_298ADDDA0();
    }

    v20 = strlen(a3);
    if (v20 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_119;
    }

    v21 = v20;
    v22 = 24 * v15;
    if (v20 >= 0x17)
    {
      operator new();
    }

    *(24 * v15 + 0x17) = v20;
    if (v20)
    {
      memmove(v22, a3, v20);
    }

    *(v22 + v21) = 0;
    v19 = (v22 + 24);
    v23 = *a2;
    v24 = *(a2 + 8) - *a2;
    v25 = v22 - v24;
    memcpy((v22 - v24), *a2, v24);
    *a2 = v25;
    *(a2 + 8) = v22 + 24;
    *(a2 + 16) = 0;
    if (v23)
    {
      operator delete(v23);
    }
  }

  else
  {
    v13 = strlen(a3);
    if (v13 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_119;
    }

    v14 = v13;
    if (v13 >= 0x17)
    {
      operator new();
    }

    v12[23] = v13;
    if (v13)
    {
      memmove(v12, a3, v13);
    }

    v12[v14] = 0;
    v19 = v12 + 24;
  }

  *(a2 + 8) = v19;
  v84 = 0uLL;
  if (a3)
  {
    v26 = strlen(a3);
    v71 = 257;
    v72 = 1;
    if (v26 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_119;
    }

    v27 = v26;
    if (v26 >= 0x17)
    {
      operator new();
    }

    BYTE7(v74) = v26;
    if (v26)
    {
      memcpy(v73, a3, v26);
    }

    *(v73 + v27) = 0;
    *(&v74 + 1) = 0;
    v75 = 0uLL;
    v28 = strlen(a3);
    v63 = 257;
    v64 = 1;
    if (v28 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_119;
    }

    v29 = v28;
    if (v28 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v67) = v28;
    if (v28)
    {
      memcpy(&__p, a3, v28);
    }

    *(&__p + v29) = 0;
  }

  else
  {
    v71 = 257;
    v72 = 1;
    *v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v63 = 257;
    v64 = 1;
    v66 = 0;
    v67 = 0;
    __p = 0;
  }

  v68 = 0;
  v69 = 0;
  v70 = 0;
  sub_298AFF468(&v63, &v85);
  if (!v85)
  {
    v66 = 0;
    v67 = 0;
    __p = 0;
    v34 = v70;
    v70 = 0;
    *&v85 = v34;
    sub_298C39D18();
  }

  v83 |= 1u;
  v82 = v85;
  v30 = v70;
  v70 = 0;
  if (v30)
  {
    (*(*v30 + 16))(v30);
    if (SHIBYTE(v67) < 0)
    {
      goto LABEL_46;
    }
  }

  else if (SHIBYTE(v67) < 0)
  {
LABEL_46:
    operator delete(__p);
    v31 = v83;
    if ((v83 & 1) == 0)
    {
      goto LABEL_47;
    }

LABEL_52:
    v35 = v82;
    v82 = 0;
    *a1 = v35;
    if (v35)
    {
      goto LABEL_112;
    }

    v32 = 0;
    if (a3)
    {
      goto LABEL_48;
    }

    goto LABEL_54;
  }

  v31 = v83;
  if (v83)
  {
    goto LABEL_52;
  }

LABEL_47:
  *a1 = 0;
  v32 = v82;
  if (a3)
  {
LABEL_48:
    v33 = strlen(a3);
    goto LABEL_55;
  }

LABEL_54:
  v33 = 0;
LABEL_55:
  sub_298BD96DC(v32, a3, v33, 0, 0, &v85);
  if ((v90 & 1) == 0)
  {
    *a1 = 0;
    v37 = v85;
    goto LABEL_61;
  }

  v36 = v85;
  *&v85 = 0;
  *a1 = v36;
  if (!v36)
  {
    v37 = 0;
LABEL_61:
    v38 = *(&v85 + 1);
    v85 = 0uLL;
    *&v76 = v37;
    *(&v76 + 1) = v38;
    v77 = v86;
    LOBYTE(v78) = 0;
    v80 = 0;
    if (v89 == 1)
    {
      v78 = v87;
      v79 = v88;
      v88 = 0;
      v87 = 0uLL;
      v80 = 1;
      v39 = *(v86 + 42);
      if (v39)
      {
        goto LABEL_63;
      }
    }

    else
    {
      v39 = *(v86 + 42);
      if (v39)
      {
LABEL_63:
        v84 = *(v39 + 8);
LABEL_66:
        *a1 = 0;
        sub_298BD9AA8(&v76);
        sub_298BE5B3C(&v85);
        sub_298C207BC(*(a2 + 32), &v85);
        v53 = *v85;
        *(&v85 + 1) = v85;
        operator delete(v85);
        if (!a4)
        {
          v42 = 0;
          if (a3)
          {
LABEL_76:
            v43 = strlen(a3);
LABEL_77:
            v86 = 0;
            *&v87 = 0;
            *&v85 = a3;
            *(&v85 + 1) = v43;
            *(&v87 + 1) = v43;
            LODWORD(v88) = 0;
            sub_298BA8288(&v85);
            if (v87 >= 5)
            {
              if (*v86 == 1836347507 && v86[4] == 46)
              {
                v44 = 6;
                *(&v85 + 1) = 0;
                v86 = 0;
                *&v85 = &v84;
                v45 = 2 * v54;
                if (!a3)
                {
                  goto LABEL_106;
                }

                goto LABEL_103;
              }

              if (*v86 == 778926196)
              {
                v44 = 7;
                *(&v85 + 1) = 0;
                v86 = 0;
                *&v85 = &v84;
                v45 = 2 * v54;
                if (!a3)
                {
                  goto LABEL_106;
                }

                goto LABEL_103;
              }

              v47 = *v86 == 1751343469 && v86[4] == 46;
              if (v47 || v87 >= 7 && (*v86 == 1852990827 ? (v48 = *(v86 + 3) == 778855790) : (v48 = 0), v48))
              {
                v44 = 4;
                *(&v85 + 1) = 0;
                v86 = 0;
                *&v85 = &v84;
                v45 = 2 * v54;
                if (!a3)
                {
                  goto LABEL_106;
                }

                goto LABEL_103;
              }
            }

            else if (v87 == 4)
            {
              if (*v86 == 778926196)
              {
                v44 = 7;
              }

              else
              {
                v44 = 0;
              }

              *(&v85 + 1) = 0;
              v86 = 0;
              *&v85 = &v84;
              v45 = 2 * v54;
              if (!a3)
              {
LABEL_106:
                v49 = 0;
                v55 = 0;
                v61 = 0;
                if (!a4)
                {
                  goto LABEL_111;
                }

LABEL_107:
                v55 = v42;
                *v56 = v81[0];
                *&v56[7] = *(v81 + 7);
                if (v10 < 0)
                {
                  v50 = v49;
                  sub_298AFE11C(v57, v52, v51);
                  v49 = v50;
                }

                else
                {
                  v57[0] = v52;
                  v57[1] = v51;
                  *v58 = v62[0];
                  *&v58[3] = *(v62 + 3);
                  v59 = v10;
                }

                v60 = v76;
                v61 = 1;
LABEL_111:
                sub_298C16C08(v53, v44, &v85, v45, 1, a3, v49, &v55);
              }

LABEL_103:
              v49 = strlen(a3);
              v55 = 0;
              v61 = 0;
              if (!a4)
              {
                goto LABEL_111;
              }

              goto LABEL_107;
            }

            v44 = 0;
            *(&v85 + 1) = 0;
            v86 = 0;
            *&v85 = &v84;
            v45 = 2 * v54;
            if (!a3)
            {
              goto LABEL_106;
            }

            goto LABEL_103;
          }

LABEL_72:
          v43 = 0;
          goto LABEL_77;
        }

        v40 = strlen(a4);
        v85 = xmmword_298CF7980;
        if (v40 <= 0x7FFFFFFFFFFFFFF7)
        {
          v41 = v40;
          if (v40 >= 0x17)
          {
            operator new();
          }

          HIBYTE(v87) = v40;
          if (v40)
          {
            memcpy(&v86, a4, v40);
          }

          *(&v86 + v41) = 0;
          v42 = v85;
          v81[0] = *(&v85 + 1);
          *(v81 + 7) = *(&v85 + 1);
          v51 = v87;
          v52 = v86;
          v62[0] = DWORD2(v87);
          *(v62 + 3) = *(&v87 + 11);
          v10 = HIBYTE(v87);
          v76 = 0uLL;
          if (a3)
          {
            goto LABEL_76;
          }

          goto LABEL_72;
        }

LABEL_119:
        sub_298ADDDA0();
      }
    }

    v84 = 0uLL;
    goto LABEL_66;
  }

  sub_298BE5B3C(&v85);
  if ((v31 & 1) == 0)
  {
    sub_298AEAEBC(&v82);
    goto LABEL_114;
  }

LABEL_112:
  if (v82)
  {
    (*(v82->n128_u64[0] + 8))(v82);
  }

LABEL_114:
  if (!*(&v75 + 1))
  {
    if ((SBYTE7(v74) & 0x80000000) == 0)
    {
      return;
    }

LABEL_118:
    operator delete(v73[0]);
    return;
  }

  (*(**(&v75 + 1) + 16))(*(&v75 + 1));
  if (SBYTE7(v74) < 0)
  {
    goto LABEL_118;
  }
}

double hwtrace_register_segment_with_loadaddr(uint64_t a1, char *a2, const char *a3, uint64_t a4)
{
  if (*(a1 + 32))
  {
    sub_298B024D4(&v18, a1, a2, a3, a4);
    if (!v18)
    {
      return result;
    }

    v5 = sub_298B9CEA8();
    v6 = sub_298B9A354(v5, &unk_298EAC9FE, 0, 0);
    v7 = v6;
    v8 = v6[4];
    if (v6[3] - v8 > 0x19uLL)
    {
      qmemcpy(v8, "Failed to register image: ", 26);
      v6[4] += 26;
    }

    else
    {
      sub_298B9BCEC(v6, "Failed to register image: ", 0x1AuLL);
    }

    v16 = v18;
    v18 = 0;
    sub_298B851B0(&v16, &__p);
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
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    sub_298B9BCEC(v7, p_p, size);
    v14 = *(v7 + 32);
    if (*(v7 + 24) == v14)
    {
      sub_298B9BCEC(v7, "\n", 1uLL);
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_18:
        v15 = v16;
        if (!v16)
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      }
    }

    else
    {
      *v14 = 10;
      ++*(v7 + 32);
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_18;
      }
    }

    operator delete(__p.__r_.__value_.__l.__data_);
    v15 = v16;
    if (!v16)
    {
LABEL_20:
      if (v18)
      {
        (*(v18->n128_u64[0] + 8))(v18);
      }

      return result;
    }

LABEL_19:
    (*(*v15 + 8))(v15);
    goto LABEL_20;
  }

  v9 = sub_298B9CEA8();
  v10 = sub_298B9A354(v9, &unk_298EAC9FE, 0, 0);
  v11 = v10[4];
  if (v10[3] - v11 > 0x2DuLL)
  {
    qmemcpy(v11, "Cannot register segment: no trace registered.\n", 46);
    result = *"ace registered.\n";
    v10[4] += 46;
  }

  else
  {

    sub_298B9BCEC(v10, "Cannot register segment: no trace registered.\n", 0x2EuLL);
  }

  return result;
}

uint64_t hwtrace_dump_panic_coredump_metadata(uint64_t a1)
{
  v2 = sub_298B9CDFC();
  v5 = *(a1 + 40);
  v4 = a1 + 40;
  v3 = v5;
  v6 = *(v4 + 23);
  if (v6 >= 0)
  {
    v7 = v4;
  }

  else
  {
    v7 = v3;
  }

  if (v6 >= 0)
  {
    v8 = *(v4 + 23);
  }

  else
  {
    v8 = *(v4 + 8);
  }

  result = sub_298B9BCEC(v2, v7, v8);
  v10 = *(result + 32);
  if (*(result + 24) == v10)
  {

    return sub_298B9BCEC(result, "\n", 1uLL);
  }

  else
  {
    *v10 = 10;
    ++*(result + 32);
  }

  return result;
}

void *hwtrace_dump_symbolication_map(void *result)
{
  v6[20] = *MEMORY[0x29EDCA608];
  v1 = result[9];
  if (v1)
  {
    v2 = *(v1 + 8);
    sub_298B9CDFC();
    v6[17] = 0;
    v6[18] = sub_298B9CDFC();
    v6[19] = 2;
    v6[16] = 0;
    v4[1] = v2;
    v5[0] = v6;
    v5[1] = 0x1000000001;
    v6[0] = 0;
    v4[0] = v5;
    sub_298B89BA0(v5);
    sub_298BE5BA4(v4);
    sub_298B89C2C(v5);
    if (v5[0] != v6)
    {
      free(v5[0]);
    }

    result = sub_298B9CDFC();
    v3 = result[4];
    if (result[3] == v3)
    {

      return sub_298B9BCEC(result, "\n", 1uLL);
    }

    else
    {
      *v3 = 10;
      ++result[4];
    }
  }

  return result;
}

double hwtrace_decoder_save(size_t a1, char *__s, int a3)
{
  if (*(a1 + 32))
  {
    if (__s)
    {
      strlen(__s);
    }

    sub_298B9CDFC();
    operator new();
  }

  v3 = sub_298B9CEA8();
  v4 = sub_298B9A354(v3, &unk_298EAC9FE, 0, 0);
  v5 = v4[4];
  if (v4[3] - v5 > 0x19uLL)
  {
    qmemcpy(v5, "No decoder state to save.\n", 26);
    result = *" state to save.\n";
    v4[4] += 26;
  }

  else
  {

    sub_298B9BCEC(v4, "No decoder state to save.\n", 0x1AuLL);
  }

  return result;
}

uint64_t hwtrace_decode(void *a1, uint64_t a2, std::string::size_type a3, uint64_t a4)
{
  v5 = a2;
  v6 = a1[10];
  if (0x8F5C28F5C28F5C29 * ((a1[11] - v6) >> 3) <= a2)
  {
LABEL_49:
    v43 = sub_298B9A258(a1);
    v44 = sub_298B00584(v43, "Cluster index ");
    v45 = sub_298B06C38(v44, a2);
    sub_298B00584(v45, " out of bounds");
    abort();
  }

  v7 = a1;
  v8 = a1[9];
  LODWORD(__p.__r_.__value_.__l.__data_) = 0;
  HIDWORD(__p.__r_.__value_.__r.__words[0]) = *(*(v8[5] + (a2 << 6) + 40) + 4);
  __p.__r_.__value_.__s.__data_[8] = 1;
  __p.__r_.__value_.__r.__words[2] = a3;
  v49 = 1;
  v50 = a4;
  v51 = 1;
  v53 = 0;
  v52 = 0;
  v54 = 64;
  memset(v55, 0, sizeof(v55));
  v56 = 1065353216;
  v57 = 0;
  v58 = 0;
  v59 = 0x3FC999999999999ALL;
  sub_298BC5F20(v8, &__p, &v47);
  sub_298AE88F0(v55);
  if (v47)
  {
    v9 = sub_298B9CEA8();
    v10 = sub_298B9A4EC(v9, &unk_298EAC9FE, 0, 0);
    v11 = v10;
    v12 = v10[4];
    if (v10[3] - v12 > 7uLL)
    {
      *v12 = 0x2072657473756C43;
      v10[4] += 8;
    }

    else
    {
      sub_298B9BCEC(v10, "Cluster ", 8uLL);
    }

    sub_298B8FC48(v11, a2, 0, 0, 0);
    v17 = v11[4];
    if (v11[3] - v17 > 0x23uLL)
    {
      qmemcpy(v17, " trace data will be ignored due to: ", 36);
      v11[4] += 36;
    }

    else
    {
      sub_298B9BCEC(v11, " trace data will be ignored due to: ", 0x24uLL);
    }

    v46 = v47;
    v47 = 0;
    sub_298B851B0(&v46, &__p);
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
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    sub_298B9BCEC(v11, p_p, size);
    v20 = v11[4];
    if (v11[3] == v20)
    {
      sub_298B9BCEC(v11, "\n", 1uLL);
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_23:
        v21 = v46;
        if (!v46)
        {
          goto LABEL_25;
        }

        goto LABEL_24;
      }
    }

    else
    {
      *v20 = 10;
      ++v11[4];
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_23;
      }
    }

    operator delete(__p.__r_.__value_.__l.__data_);
    v21 = v46;
    if (!v46)
    {
LABEL_25:
      a1 = v47;
      if (v47)
      {
        a1 = (*(*v47 + 8))(v47);
      }

      goto LABEL_27;
    }

LABEL_24:
    (*(*v21 + 8))(v21);
    goto LABEL_25;
  }

  v7[23] = v7[22];
  v13 = v7[25];
  for (i = v7[26]; i != v13; i -= 88)
  {
    MEMORY[0x29C2945E0](*(i - 40), 8);
    MEMORY[0x29C2945E0](*(i - 64), 8);
    v15 = *(i - 72);
    *(i - 72) = 0;
    if (v15)
    {
      sub_298B07DB0((v15 + 28));
      MEMORY[0x29C2945F0](v15, 0x1020C40CE35E8ABLL);
    }
  }

  v7[26] = v13;
  v16 = *(*(v6 + 200 * v5) + 56);
  __p.__r_.__value_.__r.__words[0] = v6 + 200 * v5;
  a1 = sub_298B06C6C(v16 + 112, sub_298B06FA0, &__p);
LABEL_27:
  v22 = v7[10];
  if (0x8F5C28F5C28F5C29 * ((v7[11] - v22) >> 3) <= v5)
  {
    goto LABEL_49;
  }

  v23 = (v22 + 200 * v5);
  v24 = v23[2];
  if (v23[1] == v24)
  {
    v25 = 0;
    v26 = v23[5];
    if (v23[4] != v26)
    {
LABEL_30:
      v27 = *(v26 - 8);
      v28 = v23[8];
      if (v23[7] != v28)
      {
        goto LABEL_31;
      }

      goto LABEL_39;
    }
  }

  else
  {
    v25 = *(v24 - 8);
    v26 = v23[5];
    if (v23[4] != v26)
    {
      goto LABEL_30;
    }
  }

  v27 = 0;
  v28 = v23[8];
  if (v23[7] != v28)
  {
LABEL_31:
    v29 = *(v28 - 8);
    v30 = v23[11];
    if (v23[10] != v30)
    {
      goto LABEL_32;
    }

    goto LABEL_40;
  }

LABEL_39:
  v29 = 0;
  v30 = v23[11];
  if (v23[10] != v30)
  {
LABEL_32:
    v31 = *(v30 - 8);
    v32 = v23[14];
    if (v23[13] != v32)
    {
      goto LABEL_33;
    }

    goto LABEL_41;
  }

LABEL_40:
  v31 = 0;
  v32 = v23[14];
  if (v23[13] != v32)
  {
LABEL_33:
    v33 = *(v32 - 8);
    v34 = v23[17];
    if (v23[16] != v34)
    {
      goto LABEL_34;
    }

    goto LABEL_42;
  }

LABEL_41:
  v33 = 0;
  v34 = v23[17];
  if (v23[16] != v34)
  {
LABEL_34:
    v35 = *(v34 - 8);
    v36 = v23[20];
    if (v23[19] != v36)
    {
      goto LABEL_35;
    }

LABEL_43:
    v37 = 0;
    v41 = v23[22];
    v38 = v23[23];
    if (v41 != v38)
    {
      goto LABEL_36;
    }

LABEL_44:
    v40 = 0;
    return v40 + v37 + v35 + v33 + v31 + v29 + v27 + v25;
  }

LABEL_42:
  v35 = 0;
  v36 = v23[20];
  if (v23[19] == v36)
  {
    goto LABEL_43;
  }

LABEL_35:
  v37 = *(v36 - 8);
  v39 = v23[22];
  v38 = v23[23];
  if (v39 == v38)
  {
    goto LABEL_44;
  }

LABEL_36:
  v40 = *(v38 - 8);
  return v40 + v37 + v35 + v33 + v31 + v29 + v27 + v25;
}

uint64_t *hwtrace_print_decode_status(uint64_t *result)
{
  v22 = 0;
  v1 = result[9];
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  if (v2 == v3)
  {
    return result;
  }

  v4 = result;
  do
  {
    v5 = *(v2 + 56);
    v23[0] = v2;
    v23[1] = &v22;
    result = sub_298B06C6C(v5 + 112, sub_298B07144, v23);
    v2 += 64;
  }

  while (v2 != v3);
  if ((v22 & 1) == 0)
  {
    return result;
  }

  v6 = sub_298B9CDFC();
  v7 = *(v6 + 32);
  if (*(v6 + 24) - v7 > 0x37uLL)
  {
    qmemcpy(v7, "PLEASE file a radar, include the error (^), and attach:\n", 56);
    v9 = *(v6 + 24);
    v8 = (*(v6 + 32) + 56);
    *(v6 + 32) = v8;
    if ((v9 - v8) > 0x37)
    {
      goto LABEL_8;
    }

LABEL_10:
    sub_298B9BCEC(v6, " - The directory containing the trace file or coredump.\n", 0x38uLL);
    goto LABEL_11;
  }

  v6 = sub_298B9BCEC(v6, "PLEASE file a radar, include the error (^), and attach:\n", 0x38uLL);
  v8 = *(v6 + 32);
  if (*(v6 + 24) - v8 <= 0x37uLL)
  {
    goto LABEL_10;
  }

LABEL_8:
  qmemcpy(v8, " - The directory containing the trace file or coredump.\n", 56);
  *(v6 + 32) += 56;
LABEL_11:
  v10 = *v4;
  v11 = v4[1];
  if (*v4 != v11)
  {
    do
    {
      while (1)
      {
        v12 = sub_298B9CDFC();
        v13 = *(v12 + 32);
        if ((*(v12 + 24) - v13) > 2)
        {
          *(v13 + 2) = 32;
          *v13 = 11552;
          *(v12 + 32) += 3;
        }

        else
        {
          v12 = sub_298B9BCEC(v12, " - ", 3uLL);
        }

        v14 = *(v10 + 23);
        v15 = v14 >= 0 ? v10 : *v10;
        v16 = v14 >= 0 ? *(v10 + 23) : *(v10 + 8);
        v17 = sub_298B9BCEC(v12, v15, v16);
        v18 = *(v17 + 32);
        if (*(v17 + 24) == v18)
        {
          break;
        }

        *v18 = 10;
        ++*(v17 + 32);
        v10 += 24;
        if (v10 == v11)
        {
          goto LABEL_25;
        }
      }

      sub_298B9BCEC(v17, "\n", 1uLL);
      v10 += 24;
    }

    while (v10 != v11);
  }

LABEL_25:
  result = sub_298B9CDFC();
  v19 = result;
  if (off_2A13C2B70)
  {
    v20 = strlen(off_2A13C2B70);
    result = v19[4];
    if (v20 <= v19[3] - result)
    {
      if (v20)
      {
        result = memcpy(result, off_2A13C2B70, v20);
        v19[4] += v20;
      }
    }

    else
    {
      result = sub_298B9BCEC(v19, off_2A13C2B70, v20);
    }
  }

  v21 = v19[4];
  if (v19[3] == v21)
  {
    return sub_298B9BCEC(v19, "\n", 1uLL);
  }

  *v21 = 10;
  ++v19[4];
  return result;
}

uint64_t hwtrace_print_decode_debug_messages(uint64_t result)
{
  v1 = *(result + 72);
  v2 = *(v1 + 40);
  for (i = *(v1 + 48); v2 != i; v2 += 64)
  {
    v4 = *(v2 + 56);
    v5 = v2;
    result = sub_298B06C6C(v4 + 112, sub_298B07410, &v5);
  }

  return result;
}

uint64_t hwtrace_get_inst_count_for_core(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = (a2 >> 3);
  v5 = *(a1 + 80);
  if (0x8F5C28F5C28F5C29 * ((*(a1 + 88) - v5) >> 3) <= v4)
  {
    v10 = sub_298B9A258(a1);
    v11 = sub_298B00584(v10, "Cluster index ");
    v12 = sub_298B06C38(v11, v4);
    sub_298B00584(v12, " out of bounds");
    abort();
  }

  v6 = v5 + 200 * (a2 >> 3) + 24 * (a2 & 7);
  v8 = *(v6 + 8);
  v7 = *(v6 + 16);
  if (v8 == v7)
  {
    return 0;
  }

  else
  {
    return *(v7 - 8);
  }
}

uint64_t hwtrace_get_pc(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = (a2 & 7) << 16;
  v6 = v5 | (a2 << 32);
  v7 = (a2 >> 3);
  v9 = sub_298B04364(*(a1 + 80), *(a1 + 88), v6 | v7, a3);
  v10 = *(a1 + 80);
  v11 = *(a1 + 88);
  if (v9)
  {
    if (0x8F5C28F5C28F5C29 * ((v11 - v10) >> 3) <= v7)
    {
      v23 = sub_298B9A258(v10);
      v24 = sub_298B00584(v23, "Cluster index ");
      v25 = sub_298B06C38(v24, v7);
      sub_298B00584(v25, " out of bounds");
      abort();
    }

    v12 = *(*(v10 + 200 * v7 + 24 * (v5 >> 16) + 8) + 8 * v9 - 8);
  }

  else
  {
    LODWORD(v12) = 0;
  }

  v13 = sub_298B078C0(v10, v11, v6 | v7, v8);
  (*(**(v13 + 432) + 24))(&v26);
  v14 = v26;
  v15 = v26[3];
  if (v9 < v15)
  {
    v16 = v26[8];
    if (v16 <= v9)
    {
      v17 = v9 - v16 + 1;
    }

    else
    {
      v17 = 0;
    }

LABEL_12:
    v19 = v26 + 5;
    v26[6] = v26[5];
    (*(**(v19 - 4) + 32))(*(v19 - 4), v17, v16, v19, *(v19 - 3));
    v20 = *v19;
    v21 = 0xAAAAAAAAAAAAAAABLL * ((v19[1] - *v19) >> 2);
    *(v19 - 2) = v17;
    *(v19 - 1) = v21;
    v14 = v26;
    v18 = *(v20 + 12 * (v9 - v17));
    v26 = 0;
    if (!v14)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (v26[4] + v15 <= v9)
  {
    v16 = v26[8];
    v17 = v9;
    goto LABEL_12;
  }

  v18 = *(v26[5] + 12 * (v9 - v15));
  v26 = 0;
LABEL_13:
  (*(*v14 + 8))(v14);
LABEL_14:
  if (v18 << 17)
  {
    return (4 * (v3 - v12)) + (v18 << 17 >> 15);
  }

  else
  {
    return -1;
  }
}

uint64_t sub_298B0417C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = sub_298B04364(*(a1 + 80), *(a1 + 88), a2, a3);
  v7 = sub_298B078C0(*(a1 + 80), *(a1 + 88), a2, v6);
  (*(**(v7 + 432) + 24))(&v15);
  v9 = v15;
  v10 = *(*(v15 + 328) + 24);
  if (v10)
  {
    v11 = 0;
    do
    {
      v19 = (v10 >> 1) + v11;
      v20 = v9;
      v8 = sub_298C097E4(&v19, v16);
      if (v18 > v5)
      {
        v10 >>= 1;
      }

      else
      {
        v11 += (v10 >> 1) + 1;
        v10 += ~(v10 >> 1);
      }
    }

    while (v10);
    if (v11)
    {
      v19 = v11 - 1;
      v20 = v9;
      v8 = sub_298C097E4(&v19, v16);
      v12 = v17;
      v13 = v15;
      v15 = 0;
      if (!v13)
      {
        return v12;
      }

      goto LABEL_11;
    }
  }

  v12 = -1;
  v13 = v15;
  v15 = 0;
  if (v13)
  {
LABEL_11:
    (*(*v13 + 8))(v13, v8);
  }

  return v12;
}

uint64_t hwtrace_get_range_count(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = (a2 >> 3);
  v5 = *(a1 + 80);
  if (0x8F5C28F5C28F5C29 * ((*(a1 + 88) - v5) >> 3) <= v4)
  {
    v7 = sub_298B9A258(a1);
    v8 = sub_298B00584(v7, "Cluster index ");
    v9 = sub_298B06C38(v8, v4);
    sub_298B00584(v9, " out of bounds");
    abort();
  }

  return (*(v5 + 200 * (a2 >> 3) + 24 * (a2 & 7) + 16) - *(v5 + 200 * (a2 >> 3) + 24 * (a2 & 7) + 8)) >> 3;
}

uint64_t sub_298B04364(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (0x8F5C28F5C28F5C29 * ((a2 - a1) >> 3) <= a3)
  {
    v17 = a3;
    v18 = sub_298B9A258(a1);
    v19 = sub_298B00584(v18, "Cluster index ");
    v20 = sub_298B06C38(v19, v17);
    sub_298B00584(v20, " out of bounds");
    abort();
  }

  v4 = a1 + 200 * a3 + 24 * WORD1(a3);
  v6 = *(v4 + 8);
  v5 = *(v4 + 16);
  v7 = v5 - v6;
  if (v5 == v6)
  {
    v9 = v5;
  }

  else
  {
    v8 = v7 >> 3;
    v9 = v6;
    do
    {
      v10 = v8 >> 1;
      v11 = &v9[8 * (v8 >> 1)];
      v13 = *v11;
      v12 = (v11 + 1);
      v8 += ~(v8 >> 1);
      if (v13 > a4)
      {
        v8 = v10;
      }

      else
      {
        v9 = v12;
      }
    }

    while (v8);
  }

  v14 = (v9 - v6) >> 3;
  v15 = (v7 >> 3) - 1;
  if (v5 == v9)
  {
    return v15;
  }

  else
  {
    return v14;
  }
}

uint64_t hwtrace_get_range_start_inst_index(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return 0;
  }

  v4 = (a2 >> 3);
  v5 = *(a1 + 80);
  if (0x8F5C28F5C28F5C29 * ((*(a1 + 88) - v5) >> 3) <= v4)
  {
    v7 = sub_298B9A258(a1);
    v8 = sub_298B00584(v7, "Cluster index ");
    v9 = sub_298B06C38(v8, v4);
    sub_298B00584(v9, " out of bounds");
    abort();
  }

  return *(*(v5 + 200 * (a2 >> 3) + 24 * (a2 & 7) + 8) + 8 * a3 - 8);
}

uint64_t hwtrace_get_range_terminator(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = sub_298B078C0(*(a1 + 80), *(a1 + 88), ((a2 & 7) << 16) | (a2 << 32) | (a2 >> 3), a4);
  (*(**(v5 + 432) + 24))(&v17);
  v6 = v17;
  v7 = v17[3];
  if (a3 < v7)
  {
    v8 = v17[8];
    if (v8 <= a3)
    {
      v9 = a3 - v8 + 1;
    }

    else
    {
      v9 = 0;
    }

LABEL_8:
    v11 = v17 + 5;
    v17[6] = v17[5];
    (*(**(v11 - 4) + 32))(*(v11 - 4), v9, v8, v11, *(v11 - 3));
    v12 = *v11;
    v13 = 0xAAAAAAAAAAAAAAABLL * ((v11[1] - *v11) >> 2);
    *(v11 - 2) = v9;
    *(v11 - 1) = v13;
    v6 = v17;
    v10 = *(v12 + 12 * (a3 - v9) + 8);
    v17 = 0;
    if (!v6)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (v17[4] + v7 <= a3)
  {
    v8 = v17[8];
    v9 = a3;
    goto LABEL_8;
  }

  v10 = *(v17[5] + 12 * (a3 - v7) + 8);
  v17 = 0;
LABEL_9:
  (*(*v6 + 8))(v6);
LABEL_10:
  v14 = (v10 >> 22) & 0xF;
  if (v14 <= 4)
  {
    v15 = 0x201000304uLL >> (8 * v14);
  }

  else
  {
    v15 = 4;
  }

  return v15 & 7;
}

uint64_t hwtrace_get_range_cycle_count(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = sub_298B078C0(*(a1 + 80), *(a1 + 88), ((a2 & 7) << 16) | (a2 << 32) | (a2 >> 3), a4);
  (*(**(v5 + 432) + 24))(&v15);
  v6 = v15;
  v7 = v15[3];
  if (a3 >= v7)
  {
    if (v15[4] + v7 > a3)
    {
      v10 = *(v15[5] + 12 * (a3 - v7) + 8);
      v15 = 0;
LABEL_9:
      (*(*v6 + 8))(v6);
      return v10 & 0x3FFFFF;
    }

    v8 = v15[8];
    v9 = a3;
  }

  else
  {
    v8 = v15[8];
    if (v8 <= a3)
    {
      v9 = a3 - v8 + 1;
    }

    else
    {
      v9 = 0;
    }
  }

  v11 = v15 + 5;
  v15[6] = v15[5];
  (*(**(v11 - 4) + 32))(*(v11 - 4), v9, v8, v11, *(v11 - 3));
  v12 = *v11;
  v13 = 0xAAAAAAAAAAAAAAABLL * ((v11[1] - *v11) >> 2);
  *(v11 - 2) = v9;
  *(v11 - 1) = v13;
  v6 = v15;
  v10 = *(v12 + 12 * (a3 - v9) + 8);
  v15 = 0;
  if (v6)
  {
    goto LABEL_9;
  }

  return v10 & 0x3FFFFF;
}

uint64_t hwtrace_get_range_approx_time(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = sub_298B078C0(*(a1 + 80), *(a1 + 88), ((a2 & 7) << 16) | (a2 << 32) | (a2 >> 3), a4);
  (*(**(v5 + 432) + 24))(&v23);
  v6 = v23;
  v7 = *(*(v23 + 328) + 16);
  if (v7)
  {
    v8 = 0;
    v9 = *(v23 + 88);
    while (1)
    {
      v13 = (v7 >> 1) + v8;
      if (v9 > v13)
      {
        v10 = *(v6 + 128);
        if (v10 <= v13)
        {
          v9 = v13 - v10 + 1;
        }

        else
        {
          v9 = 0;
        }
      }

      else
      {
        if (*(v6 + 96) + v9 > v13)
        {
          v11 = *(v6 + 104);
          goto LABEL_7;
        }

        v9 = (v7 >> 1) + v8;
      }

      *(v6 + 112) = *(v6 + 104);
      (*(**(v6 + 72) + 40))(*(v6 + 72), v9);
      v11 = *(v6 + 104);
      v12 = 0xAAAAAAAAAAAAAAABLL * ((*(v6 + 112) - v11) >> 3);
      *(v6 + 88) = v9;
      *(v6 + 96) = v12;
LABEL_7:
      if (*(v11 + 24 * (v13 - v9) + 8) > a3)
      {
        v7 >>= 1;
      }

      else
      {
        v8 = v13 + 1;
        v7 += ~(v7 >> 1);
      }

      if (!v7)
      {
        goto LABEL_16;
      }
    }
  }

  v8 = 0;
  v9 = *(v23 + 88);
LABEL_16:
  if (v8)
  {
    v14 = v8 - 1;
  }

  else
  {
    v14 = 0;
  }

  if (v9 <= v14)
  {
    if (*(v6 + 96) + v9 > v14)
    {
      v16 = *(v6 + 104);
      goto LABEL_27;
    }

    v15 = *(v6 + 128);
    v9 = v14;
  }

  else
  {
    v15 = *(v6 + 128);
    if (v15 <= v14)
    {
      v9 = v14 - v15 + 1;
    }

    else
    {
      v9 = 0;
    }
  }

  v18 = *(v6 + 104);
  v17 = (v6 + 104);
  v17[1] = v18;
  (*(**(v17 - 4) + 40))(*(v17 - 4), v9, v15, v17, *(v17 - 3));
  v16 = *v17;
  v19 = 0xAAAAAAAAAAAAAAABLL * ((v17[1] - *v17) >> 3);
  *(v17 - 2) = v9;
  *(v17 - 1) = v19;
LABEL_27:
  v20 = *(v16 + 24 * (v14 - v9) + 16);
  v21 = v23;
  v23 = 0;
  if (v21)
  {
    (*(*v21 + 8))(v21);
  }

  return v20;
}

unint64_t hwtrace_find_range_at_approx_time(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = a4 != 0;
  v6 = sub_298B078C0(*(a1 + 80), *(a1 + 88), ((a2 & 7) << 16) | (a2 << 32) | (a2 >> 3), a4);
  (*(**(v6 + 432) + 24))(&v12);
  v7 = sub_298BFC9BC(v12, a3, v5);
  v9 = v8;
  v10 = v12;
  v12 = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  if (v9)
  {
    return v7;
  }

  else
  {
    return -1;
  }
}

uint64_t hwtrace_get_start_of_range_index(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = (a2 & 7) << 16;
  v5 = (a2 >> 3);
  result = sub_298B04364(*(a1 + 80), *(a1 + 88), v4 | (a2 << 32) | v5, a3);
  if (result)
  {
    v7 = *(a1 + 80);
    if (0x8F5C28F5C28F5C29 * ((*(a1 + 88) - v7) >> 3) <= v5)
    {
      v8 = sub_298B9A258(result);
      v9 = sub_298B00584(v8, "Cluster index ");
      v10 = sub_298B06C38(v9, v5);
      sub_298B00584(v10, " out of bounds");
      abort();
    }

    return *(*(v7 + 200 * v5 + 24 * (v4 >> 16) + 8) + 8 * result - 8);
  }

  return result;
}

uint64_t hwtrace_get_end_of_range_index(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = (a2 & 7) << 16;
  v5 = (a2 >> 3);
  v6 = sub_298B04364(*(a1 + 80), *(a1 + 88), v4 | (a2 << 32) | v5, a3);
  v7 = *(a1 + 80);
  if (0x8F5C28F5C28F5C29 * ((*(a1 + 88) - v7) >> 3) <= v5)
  {
    v9 = sub_298B9A258(v6);
    v10 = sub_298B00584(v9, "Cluster index ");
    v11 = sub_298B06C38(v10, v5);
    sub_298B00584(v11, " out of bounds");
    abort();
  }

  return *(*(v7 + 200 * v5 + 24 * (v4 >> 16) + 8) + 8 * v6);
}

uint64_t sub_298B04C78(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, int a5)
{
  v10 = sub_298B078C0(*(a1 + 80), *(a1 + 88), a2, a4);
  (*(**(v10 + 432) + 24))(&v42);
  v11 = v42;
  v12 = sub_298B04364(*(a1 + 80), *(a1 + 88), a2, a3);
  v13 = v12;
  v14 = *(v11 + 24);
  if (v14 > v12)
  {
    v15 = *(v11 + 64);
    if (v15 <= v12)
    {
      v14 = v12 - v15 + 1;
    }

    else
    {
      v14 = 0;
    }

    goto LABEL_8;
  }

  v16 = *(v11 + 32);
  if (v16 + v14 <= v12)
  {
    v15 = *(v11 + 64);
    v14 = v12;
LABEL_8:
    *(v11 + 48) = *(v11 + 40);
    v12 = (*(**(v11 + 8) + 32))(*(v11 + 8), v14, v15, v11 + 40, *(v11 + 16));
    v17 = *(v11 + 40);
    v16 = 0xAAAAAAAAAAAAAAABLL * ((*(v11 + 48) - v17) >> 2);
    *(v11 + 24) = v14;
    *(v11 + 32) = v16;
    goto LABEL_9;
  }

  v17 = *(v11 + 40);
LABEL_9:
  v18 = *(v17 + 12 * (v13 - v14));
  v19 = (v18 << 17) >> 15;
  v20 = a4 - v19;
  v21 = v19 + 4 * (v18 >> 47);
  if (a4 >= v19 && v21 > a4)
  {
    if (v13)
    {
      v36 = *(a1 + 80);
      if (0x8F5C28F5C28F5C29 * ((*(a1 + 88) - v36) >> 3) <= a2)
      {
        goto LABEL_49;
      }

      v33 = *(*(v36 + 200 * a2 + 24 * WORD1(a2) + 8) + 8 * v13 - 8) + (v20 >> 2);
      if (v33 != a3)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v33 = (v20 >> 2);
      if (v33 != a3)
      {
        goto LABEL_35;
      }
    }
  }

  if (a5)
  {
    v23 = v13 - 1;
  }

  else
  {
    v23 = v13 + 1;
  }

  if (a5)
  {
    v24 = -1;
    v25 = -1;
    if (v23 == -1)
    {
LABEL_34:
      v33 = -1;
      goto LABEL_35;
    }
  }

  else
  {
    v26 = *(a1 + 80);
    if (0x8F5C28F5C28F5C29 * ((*(a1 + 88) - v26) >> 3) <= a2)
    {
      goto LABEL_49;
    }

    v25 = (*(v26 + 200 * a2 + 24 * WORD1(a2) + 16) - *(v26 + 200 * a2 + 24 * WORD1(a2) + 8)) >> 3;
    v24 = 1;
    if (v23 == v25)
    {
      goto LABEL_34;
    }
  }

  v27 = 12 * v23;
  while (1)
  {
    if (v14 <= v23)
    {
      if (v16 + v14 > v23)
      {
        goto LABEL_29;
      }

      v28 = *(v11 + 64);
      v14 = v23;
    }

    else
    {
      v28 = *(v11 + 64);
      v14 = v28 <= v23 ? v23 - v28 + 1 : 0;
    }

    *(v11 + 48) = v17;
    v12 = (*(**(v11 + 8) + 32))(*(v11 + 8), v14, v28, v11 + 40, *(v11 + 16));
    v17 = *(v11 + 40);
    v16 = 0xAAAAAAAAAAAAAAABLL * ((*(v11 + 48) - v17) >> 2);
    *(v11 + 24) = v14;
    *(v11 + 32) = v16;
LABEL_29:
    v29 = *(v17 - 12 * v14 + v27);
    v30 = (v29 << 17) >> 15;
    v31 = v30 + 4 * (v29 >> 47);
    if (a4 >= v30 && v31 > a4)
    {
      break;
    }

    v23 += v24;
    v27 += 12 * v24;
    if (v25 == v23)
    {
      goto LABEL_34;
    }
  }

  if (v23)
  {
    v37 = *(a1 + 80);
    if (0x8F5C28F5C28F5C29 * ((*(a1 + 88) - v37) >> 3) > a2)
    {
      v38 = *(*(v37 + 200 * a2 + 24 * WORD1(a2) + 8) + 8 * v23 - 8);
      goto LABEL_48;
    }

LABEL_49:
    v39 = sub_298B9A258(v12);
    v40 = sub_298B00584(v39, "Cluster index ");
    v41 = sub_298B06C38(v40, a2);
    sub_298B00584(v41, " out of bounds");
    abort();
  }

  v38 = 0;
LABEL_48:
  v33 = v38 + ((a4 - v30) >> 2);
LABEL_35:
  v34 = v42;
  v42 = 0;
  if (v34)
  {
    (*(*v34 + 8))(v34);
  }

  return v33;
}

char *hwtrace_symbolicate_pc(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 104);
  if (!v3)
  {
    operator new();
  }

  result = sub_298BF7B4C(v3, a2, a1 + 112);
  if (!result)
  {
    return off_2A13C2B60;
  }

  return result;
}

uint64_t hwtrace_find_image_name_backing_pc(uint64_t a1, unint64_t a2)
{
  v3 = *(*(a1 + 72) + 8);
  v17[0] = v3 + 8;
  v17[3] = 0;
  v5 = sub_298BDA86C(v3, 0, a2, v17);
  if (v5)
  {
    v6 = sub_298B9CEA8();
    v7 = v6;
    v8 = v6[4];
    if (v6[3] - v8 > 0x21uLL)
    {
      qmemcpy(v8, "error: failed to find section for ", 34);
      v6[4] += 34;
      if (HIDWORD(a2))
      {
LABEL_4:
        sub_298B8FEA0(v6, a2, 0, 0, 0);
        v9 = *(v7 + 32);
        if (*(v7 + 24) - v9 > 1uLL)
        {
          goto LABEL_5;
        }

        goto LABEL_14;
      }
    }

    else
    {
      v6 = sub_298B9BCEC(v6, "error: failed to find section for ", 0x22uLL);
      if (HIDWORD(a2))
      {
        goto LABEL_4;
      }
    }

    sub_298B8FC48(v6, a2, 0, 0, 0);
    v9 = *(v7 + 32);
    if (*(v7 + 24) - v9 > 1uLL)
    {
LABEL_5:
      *v9 = 8236;
      *(v7 + 32) += 2;
      if (v5 > 4)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }

LABEL_14:
    sub_298B9BCEC(v7, ", ", 2uLL);
    if (v5 > 4)
    {
LABEL_6:
      v10 = "InSection";
      v11 = 9;
      v12 = *(v7 + 32);
      if (*(v7 + 24) - v12 >= 9uLL)
      {
        goto LABEL_7;
      }

      goto LABEL_16;
    }

LABEL_15:
    v16 = v5 - 1;
    v11 = qword_298CF7990[v16];
    v10 = off_29EEB4A10[v16];
    v12 = *(v7 + 32);
    if (v11 <= *(v7 + 24) - v12)
    {
LABEL_7:
      memcpy(v12, v10, v11);
      v13 = *(v7 + 24);
      v14 = (*(v7 + 32) + v11);
      *(v7 + 32) = v14;
      if (v13 != v14)
      {
LABEL_8:
        result = 0;
        *v14 = 10;
        ++*(v7 + 32);
        return result;
      }

LABEL_17:
      sub_298B9BCEC(v7, "\n", 1uLL);
      return 0;
    }

LABEL_16:
    sub_298B9BCEC(v7, v10, v11);
    v14 = *(v7 + 32);
    if (*(v7 + 24) != v14)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

  result = v4 + 8;
  if (*(v4 + 31) < 0)
  {
    return *result;
  }

  return result;
}

uint64_t hwtrace_find_image_loadaddr_backing_pc(uint64_t a1, unint64_t a2)
{
  v3 = *(*(a1 + 72) + 8);
  v17[0] = v3 + 8;
  v17[3] = 0;
  v5 = sub_298BDA86C(v3, 0, a2, v17);
  if (!v5)
  {
    return *(v4 + 72);
  }

  v6 = sub_298B9CEA8();
  v7 = v6;
  v8 = v6[4];
  if (v6[3] - v8 > 0x20uLL)
  {
    qmemcpy(v8, "error: section lookup failed for ", 33);
    v6[4] += 33;
    if (HIDWORD(a2))
    {
LABEL_4:
      sub_298B8FEA0(v6, a2, 0, 0, 0);
      v9 = *(v7 + 32);
      if (*(v7 + 24) - v9 > 1uLL)
      {
        goto LABEL_5;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v6 = sub_298B9BCEC(v6, "error: section lookup failed for ", 0x21uLL);
    if (HIDWORD(a2))
    {
      goto LABEL_4;
    }
  }

  sub_298B8FC48(v6, a2, 0, 0, 0);
  v9 = *(v7 + 32);
  if (*(v7 + 24) - v9 > 1uLL)
  {
LABEL_5:
    *v9 = 8236;
    *(v7 + 32) += 2;
    if (v5 > 4)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  sub_298B9BCEC(v7, ", ", 2uLL);
  if (v5 > 4)
  {
LABEL_6:
    v10 = "InSection";
    v11 = 9;
    v12 = *(v7 + 32);
    if (*(v7 + 24) - v12 >= 9uLL)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  v16 = v5 - 1;
  v11 = qword_298CF7990[v16];
  v10 = off_29EEB4A10[v16];
  v12 = *(v7 + 32);
  if (v11 <= *(v7 + 24) - v12)
  {
LABEL_7:
    memcpy(v12, v10, v11);
    v13 = *(v7 + 24);
    v14 = (*(v7 + 32) + v11);
    *(v7 + 32) = v14;
    if (v13 != v14)
    {
LABEL_8:
      *v14 = 10;
      ++*(v7 + 32);
      return -1;
    }

    goto LABEL_15;
  }

LABEL_14:
  sub_298B9BCEC(v7, v10, v11);
  v14 = *(v7 + 32);
  if (*(v7 + 24) != v14)
  {
    goto LABEL_8;
  }

LABEL_15:
  sub_298B9BCEC(v7, "\n", 1uLL);
  return -1;
}