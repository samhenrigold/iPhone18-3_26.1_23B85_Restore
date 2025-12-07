void sub_122C0F4(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_122C148(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_122C148(uint64_t result, uint64_t *a2)
{
  v4 = *(result + 8);
  if (v4 != a2)
  {
    v5 = v4 - 1;
    do
    {
      v6 = *v5;
      *v5 = 0;
      if (v6)
      {
        sub_122C1AC(v5, v6);
      }

      v7 = v5 - 1;
      v5 -= 2;
    }

    while (v7 != a2);
  }

  *(result + 8) = a2;
}

void sub_122C1AC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 8);
    if (v2)
    {
      *(a2 + 16) = v2;
      operator delete(v2);
    }

    operator delete();
  }
}

void sub_122C208(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_122C25C(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_122C25C(uint64_t result, uint64_t *a2)
{
  v4 = *(result + 8);
  if (v4 != a2)
  {
    v5 = v4 - 1;
    do
    {
      v6 = *v5;
      *v5 = 0;
      if (v6)
      {
        sub_122C2C0(v5, v6);
      }

      v7 = v5 - 1;
      v5 -= 2;
    }

    while (v7 != a2);
  }

  *(result + 8) = a2;
}

void sub_122C2C0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 8);
    if (v2)
    {
      *(a2 + 16) = v2;
      operator delete(v2);
    }

    operator delete();
  }
}

void sub_122C31C(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_122C370(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t sub_122C370(uint64_t result, void *a2)
{
  v2 = result;
  v3 = *(result + 8);
  while (v3 != a2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      operator delete();
    }
  }

  *(v2 + 8) = a2;
  return result;
}

void sub_122C3D8(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_122C42C(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t sub_122C42C(uint64_t result, uint64_t a2)
{
  v2 = result;
  for (i = *(result + 8); i != a2; i -= 16)
  {
    result = *(i - 8);
    *(i - 8) = 0;
    if (result)
    {
      operator delete();
    }
  }

  *(v2 + 8) = a2;
  return result;
}

void sub_122C498(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_122C4EC(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t sub_122C4EC(uint64_t result, uint64_t a2)
{
  v2 = result;
  for (i = *(result + 8); i != a2; i -= 16)
  {
    result = *(i - 8);
    *(i - 8) = 0;
    if (result)
    {
      operator delete();
    }
  }

  *(v2 + 8) = a2;
  return result;
}

double sub_122C558@<D0>(_BYTE *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = a1;
  v16 = 0;
  v14 = 0u;
  v15 = 0u;
  if (a2 == 95 || a2 == 45)
  {
    v6 = *a1;
    if (*a1)
    {
      v7 = 0;
      do
      {
        if (v7 <= 0x17)
        {
          if (v6 == 95)
          {
            break;
          }

          if ((*(&v14 + 1) + 1) <= 0x17)
          {
            sub_122C6C8(&v14, v6);
          }
        }

        ++v7;
        v8 = *++v4;
        v6 = v8;
      }

      while (v8);
      if (v7)
      {
        goto LABEL_22;
      }
    }
  }

  if (a2 == 64)
  {
LABEL_12:
    LOBYTE(v9) = *v4;
    if (*v4)
    {
      v10 = 0;
      v11 = v4 + 1;
      do
      {
        if (v10 <= 0x17 && (*(&v14 + 1) + 1) <= 0x17)
        {
          if ((v9 - 97) < 0x1Au)
          {
            LOBYTE(v9) = v9 - 32;
          }

          if ((v9 & 0xFE) == 0x2C)
          {
            LOBYTE(v9) = 95;
          }

          sub_122C6C8(&v14, v9);
        }

        v9 = v11[v10++];
      }

      while (v9);
    }

LABEL_22:
    result = *&v14;
    v13 = v15;
    *a3 = v14;
    *(a3 + 16) = v13;
    *(a3 + 32) = v16;
    return result;
  }

  if (v4)
  {
    while (*v4++ != 64)
    {
      if (!*(v4 - 1))
      {
        goto LABEL_26;
      }
    }

    goto LABEL_12;
  }

LABEL_26:
  *(a3 + 32) = 0;
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

unint64_t *sub_122C6C8(unint64_t *result, int a2)
{
  v2 = result[1];
  if (v2 + 1 > 7)
  {
    v3 = result + 2;
    if (v2 == 7)
    {
      v4 = 0;
      v5 = *result;
      do
      {
        *(result + v4 + 16) = v5;
        v6 = result[1];
        v5 = *result >> 8;
        *result = v5;
        ++v4;
      }

      while (v4 < v6);
      *(v3 + v6) = a2;
      v7 = result[1] + 1;
      result[1] = v7;
      *(v3 + v7) = 0;
      v8 = result[1];
      if (v8 < 1)
      {
        v9 = 0;
      }

      else
      {
        v9 = 0;
        do
        {
          v10 = *v3;
          v3 = (v3 + 1);
          v9 ^= (v9 << 6) - 0x61C8864680B583EDLL + (v9 >> 2) + v10;
          --v8;
        }

        while (v8);
      }

      *result = v9;
    }

    else
    {
      *(v3 + v2) = a2;
      v11 = result[1] + 1;
      result[1] = v11;
      *(v3 + v11) = 0;
      *result ^= (*result << 6) + (*result >> 2) + a2 - 0x61C8864680B583EDLL;
    }
  }

  else
  {
    *result |= a2 << (8 * v2);
    result[1] = v2 + 1;
  }

  return result;
}

unint64_t *sub_122C7CC(unint64_t *a1, unint64_t *a2)
{
  v3 = *a2;
  if (7 - HIBYTE(*a2) >= 4u)
  {
    v4 = 4;
  }

  else
  {
    v4 = 7 - HIBYTE(*a2);
  }

  if (HIBYTE(*a2) != 7 && *a2 != 0)
  {
    v6 = v3 & 0xFFFFFFFFFFFFFFLL;
    v7 = 1;
    do
    {
      if (a1[1] + 1 <= 0x1F)
      {
        sub_122C6C8(a1, v3);
      }

      if (v7 >= v4)
      {
        break;
      }

      v3 = v6 >> 8;
      ++v7;
      v6 = v3;
    }

    while (v3);
  }

  return a1;
}

unint64_t *sub_122C864(unint64_t *a1, unsigned int *a2)
{
  v3 = *a2;
  v4 = 3 - HIBYTE(*a2);
  if (v4 >= 3)
  {
    v5 = 3;
  }

  else
  {
    v5 = v4;
  }

  if (HIBYTE(*a2) != 3 && *a2 != 0)
  {
    v7 = v3 & 0xFFFFFF;
    v8 = 1;
    do
    {
      if (a1[1] + 1 <= 0x1F)
      {
        sub_122C6C8(a1, v3);
      }

      if (v8 >= v5)
      {
        break;
      }

      v3 = v7 >> 8;
      ++v8;
      v7 = v3;
    }

    while (v3);
  }

  return a1;
}

unint64_t *sub_122C8F8(unint64_t *a1, unint64_t *a2)
{
  v3 = a2[1];
  if (v3 >= 0x17)
  {
    v4 = 23;
  }

  else
  {
    v4 = a2[1];
  }

  if (v3 > 7)
  {
    v8 = a2 + 2;
    do
    {
      v10 = *v8;
      v8 = (v8 + 1);
      v9 = v10;
      if (!v10)
      {
        break;
      }

      if (a1[1] + 1 <= 0x1F)
      {
        sub_122C6C8(a1, v9);
      }

      --v4;
    }

    while (v4);
  }

  else
  {
    v5 = *a2;
    if (v3)
    {
      v6 = *a2 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (!v6)
    {
      v7 = 1;
      do
      {
        if (a1[1] + 1 <= 0x1F)
        {
          sub_122C6C8(a1, v5);
        }

        if (v7 >= v4)
        {
          break;
        }

        v5 >>= 8;
        ++v7;
      }

      while (v5);
    }
  }

  return a1;
}

uint64_t sub_122C9B8(uint64_t a1)
{
  sub_122C9F0(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_122C9F0(uint64_t result, void *a2)
{
  v2 = *(result + 16);
  if (v2 != a2)
  {
    v3 = result;
    do
    {
      v4 = *--v2;
      result = v4;
      *(v3 + 16) = v2;
      *v2 = 0;
      if (v4)
      {
        operator delete();
      }
    }

    while (v2 != a2);
  }

  return result;
}

void sub_122CA60(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_1808();
}

void sub_122CAA8(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_1808();
}

void sub_122CB00(uint64_t *a1, void *a2, uint64_t *a3, uint64_t a4)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 < v4)
  {
    if (a2 != v5)
    {
      operator new();
    }

    *v5 = *a3;
    operator new();
  }

  v6 = *a1;
  v7 = ((v5 - *a1) >> 4) + 1;
  if (!(v7 >> 60))
  {
    v8 = a2 - v6;
    v9 = v4 - v6;
    v10 = v9 >> 3;
    if (v9 >> 3 <= v7)
    {
      v10 = ((v5 - *a1) >> 4) + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    v12 = v8 >> 4;
    v13[4] = a1;
    if (v11)
    {
      sub_1223168(a1, v11);
    }

    v13[0] = 0;
    v13[1] = 16 * v12;
    v13[2] = 16 * v12;
    v13[3] = 0;
    sub_122CD3C(v13, a3, a4);
  }

  sub_1794();
}

uint64_t sub_122CCD4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = a2 + v6 - a4;
  v8 = v6;
  if (v7 < a3)
  {
    v9 = v7;
    v8 = *(a1 + 8);
    do
    {
      v10 = *v9;
      v11 = v9[1];
      v9[1] = 0;
      *v8 = v10;
      v8[1] = v11;
      v8 += 2;
      v9 += 2;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v8;
  return sub_122CF64(&v13, a2, v7, v6);
}

void sub_122CD3C(unint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = a1[2];
  if (v5 == a1[3])
  {
    v6 = a1[1];
    if (v6 <= *a1)
    {
      if (v5 == *a1)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v5 - *a1) >> 3;
      }

      v10 = a1[4];
      v11[4] = a1[4];
      sub_1223168(v10, v9);
    }

    v7 = (((v6 - *a1) >> 4) + 1 + ((((v6 - *a1) >> 4) + 1) >> 63)) >> 1;
    sub_122CFEC(v11, v6, v5, &v6[-2 * v7]);
    v5 = v8;
    a1[1] -= 16 * v7;
    a1[2] = v8;
  }

  *v5 = *a2;
  operator new();
}

uint64_t sub_122CEA8(uint64_t **a1, void *a2, uint64_t *a3)
{
  v6 = a2[1];
  sub_122D06C(a1, a3, a1[1], a2[2]);
  v7 = *a1;
  v8 = a2[1];
  a2[2] += a1[1] - a3;
  a1[1] = a3;
  v9 = (v8 + v7 - a3);
  sub_122D06C(a1, v7, a3, v9);
  a2[1] = v9;
  v10 = *a1;
  a1[1] = *a1;
  *a1 = a2[1];
  a2[1] = v10;
  v11 = a1[1];
  a1[1] = a2[2];
  a2[2] = v11;
  v12 = a1[2];
  a1[2] = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
  return v6;
}

uint64_t sub_122CF64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v5 = a3;
    do
    {
      v6 = *(v5 - 16);
      v5 -= 16;
      *(a4 - 16) = v6;
      a4 -= 16;
      v7 = *(v5 + 8);
      *(v5 + 8) = 0;
      v8 = *(a4 + 8);
      *(a4 + 8) = v7;
      if (v8)
      {
        operator delete();
      }
    }

    while (v5 != a2);
  }

  return a3;
}

uint64_t *sub_122CFEC(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v6 = *v5;
      v7 = v5[1];
      v5[1] = 0;
      v8 = a4[1];
      *a4 = v6;
      a4[1] = v7;
      if (v8)
      {
        operator delete();
      }

      v5 += 2;
      a4 += 2;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t sub_122D06C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v12 = a4;
  v13 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v4 = a2;
    v5 = a2;
    do
    {
      v6 = *v5;
      v7 = v5[1];
      v5[1] = 0;
      *a4 = v6;
      a4[1] = v7;
      a4 += 2;
      v5 += 2;
    }

    while (v5 != a3);
    v13 = a4;
    v11 = 1;
    if (a2 != a3)
    {
      do
      {
        v8 = v4[1];
        v4[1] = 0;
        if (v8)
        {
          operator delete();
        }

        v4 += 2;
      }

      while (v4 != a3);
    }
  }

  return sub_122D130(v10);
}

uint64_t sub_122D130(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_122D168(a1);
  }

  return a1;
}

uint64_t sub_122D168(uint64_t result)
{
  v2 = *(result + 8);
  v1 = *(result + 16);
  v3 = *v1;
  for (i = *v2; v3 != i; v3 -= 16)
  {
    result = *(v3 - 8);
    *(v3 - 8) = 0;
    if (result)
    {
      operator delete();
    }
  }

  return result;
}

uint64_t sub_122D1D0(uint64_t a1)
{
  sub_122D208(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_122D208(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != a2)
  {
    v3 = result;
    do
    {
      *(v3 + 16) = v2 - 16;
      result = *(v2 - 8);
      *(v2 - 8) = 0;
      if (result)
      {
        operator delete();
      }

      v2 -= 16;
    }

    while (v2 != a2);
  }

  return result;
}

void sub_122D284(uint64_t *a1, void *a2, uint64_t *a3, _OWORD *a4)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 < v4)
  {
    if (a2 != v5)
    {
      operator new();
    }

    *v5 = *a3;
    operator new();
  }

  v6 = *a1;
  v7 = ((v5 - *a1) >> 4) + 1;
  if (!(v7 >> 60))
  {
    v8 = a2 - v6;
    v9 = v4 - v6;
    v10 = v9 >> 3;
    if (v9 >> 3 <= v7)
    {
      v10 = ((v5 - *a1) >> 4) + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    v12 = v8 >> 4;
    v13[4] = a1;
    if (v11)
    {
      sub_1223168(a1, v11);
    }

    v13[0] = 0;
    v13[1] = 16 * v12;
    v13[2] = 16 * v12;
    v13[3] = 0;
    sub_122D450(v13, a3, a4);
  }

  sub_1794();
}

void sub_122D450(unint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = a1[2];
  if (v5 == a1[3])
  {
    v6 = a1[1];
    if (v6 <= *a1)
    {
      if (v5 == *a1)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v5 - *a1) >> 3;
      }

      v10 = a1[4];
      v11[4] = a1[4];
      sub_1223168(v10, v9);
    }

    v7 = (((v6 - *a1) >> 4) + 1 + ((((v6 - *a1) >> 4) + 1) >> 63)) >> 1;
    sub_122CFEC(v11, v6, v5, &v6[-2 * v7]);
    v5 = v8;
    a1[1] -= 16 * v7;
    a1[2] = v8;
  }

  *v5 = *a2;
  operator new();
}

void sub_122D5B8(uint64_t *a1, void *a2, uint64_t *a3, __n128 *a4)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 < v4)
  {
    if (a2 != v5)
    {
      operator new();
    }

    *v5 = *a3;
    operator new();
  }

  v6 = *a1;
  v7 = ((v5 - *a1) >> 4) + 1;
  if (!(v7 >> 60))
  {
    v8 = a2 - v6;
    v9 = v4 - v6;
    v10 = v9 >> 3;
    if (v9 >> 3 <= v7)
    {
      v10 = ((v5 - *a1) >> 4) + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    v12 = v8 >> 4;
    v13[4] = a1;
    if (v11)
    {
      sub_1223168(a1, v11);
    }

    v13[0] = 0;
    v13[1] = 16 * v12;
    v13[2] = 16 * v12;
    v13[3] = 0;
    sub_122D7D4(v13, a3, a4);
  }

  sub_1794();
}

uint64_t sub_122D76C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = a2 + v6 - a4;
  v8 = v6;
  if (v7 < a3)
  {
    v9 = v7;
    v8 = *(a1 + 8);
    do
    {
      v10 = *v9;
      v11 = v9[1];
      v9[1] = 0;
      *v8 = v10;
      v8[1] = v11;
      v8 += 2;
      v9 += 2;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v8;
  return sub_122D9EC(&v13, a2, v7, v6);
}

void sub_122D7D4(unint64_t *a1, uint64_t *a2, __n128 *a3)
{
  v5 = a1[2];
  if (v5 == a1[3])
  {
    v6 = a1[1];
    if (v6 <= *a1)
    {
      if (v5 == *a1)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v5 - *a1) >> 3;
      }

      v10 = a1[4];
      v11[4] = a1[4];
      sub_1223168(v10, v9);
    }

    v7 = (((v6 - *a1) >> 4) + 1 + ((((v6 - *a1) >> 4) + 1) >> 63)) >> 1;
    sub_122DA74(v11, v6, v5, &v6[-2 * v7]);
    v5 = v8;
    a1[1] -= 16 * v7;
    a1[2] = v8;
  }

  *v5 = *a2;
  operator new();
}

uint64_t sub_122D930(uint64_t **a1, void *a2, uint64_t *a3)
{
  v6 = a2[1];
  sub_122DAF4(a1, a3, a1[1], a2[2]);
  v7 = *a1;
  v8 = a2[1];
  a2[2] += a1[1] - a3;
  a1[1] = a3;
  v9 = (v8 + v7 - a3);
  sub_122DAF4(a1, v7, a3, v9);
  a2[1] = v9;
  v10 = *a1;
  a1[1] = *a1;
  *a1 = a2[1];
  a2[1] = v10;
  v11 = a1[1];
  a1[1] = a2[2];
  a2[2] = v11;
  v12 = a1[2];
  a1[2] = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
  return v6;
}

uint64_t sub_122D9EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v5 = a3;
    do
    {
      v6 = *(v5 - 16);
      v5 -= 16;
      *(a4 - 16) = v6;
      a4 -= 16;
      v7 = *(v5 + 8);
      *(v5 + 8) = 0;
      v8 = *(a4 + 8);
      *(a4 + 8) = v7;
      if (v8)
      {
        operator delete();
      }
    }

    while (v5 != a2);
  }

  return a3;
}

uint64_t *sub_122DA74(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v6 = *v5;
      v7 = v5[1];
      v5[1] = 0;
      v8 = a4[1];
      *a4 = v6;
      a4[1] = v7;
      if (v8)
      {
        operator delete();
      }

      v5 += 2;
      a4 += 2;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t sub_122DAF4(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v12 = a4;
  v13 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v4 = a2;
    v5 = a2;
    do
    {
      v6 = *v5;
      v7 = v5[1];
      v5[1] = 0;
      *a4 = v6;
      a4[1] = v7;
      a4 += 2;
      v5 += 2;
    }

    while (v5 != a3);
    v13 = a4;
    v11 = 1;
    if (a2 != a3)
    {
      do
      {
        v8 = v4[1];
        v4[1] = 0;
        if (v8)
        {
          operator delete();
        }

        v4 += 2;
      }

      while (v4 != a3);
    }
  }

  return sub_122DBB8(v10);
}

uint64_t sub_122DBB8(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_122DBF0(a1);
  }

  return a1;
}

uint64_t sub_122DBF0(uint64_t result)
{
  v2 = *(result + 8);
  v1 = *(result + 16);
  v3 = *v1;
  for (i = *v2; v3 != i; v3 -= 16)
  {
    result = *(v3 - 8);
    *(v3 - 8) = 0;
    if (result)
    {
      operator delete();
    }
  }

  return result;
}

uint64_t sub_122DC58(uint64_t a1)
{
  sub_122DC90(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_122DC90(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != a2)
  {
    v3 = result;
    do
    {
      *(v3 + 16) = v2 - 16;
      result = *(v2 - 8);
      *(v2 - 8) = 0;
      if (result)
      {
        operator delete();
      }

      v2 -= 16;
    }

    while (v2 != a2);
  }

  return result;
}

void sub_122DD0C(void *a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 < v4)
  {
    if (a2 != v5)
    {
      v14 = a1;
      sub_122E11C(v13, *a3, a4);
    }

    sub_122E11C(a1[1], *a3, a4);
  }

  v6 = *a1;
  v7 = ((v5 - *a1) >> 4) + 1;
  if (!(v7 >> 60))
  {
    v8 = a2 - v6;
    v9 = v4 - v6;
    v10 = v9 >> 3;
    if (v9 >> 3 <= v7)
    {
      v10 = ((v5 - *a1) >> 4) + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    v12 = v8 >> 4;
    v16 = a1;
    if (v11)
    {
      sub_1223168(a1, v11);
    }

    v13[0] = 0;
    v13[1] = 16 * v12;
    v14 = (16 * v12);
    v15 = 0;
    sub_122DF2C(v13, a3, a4);
  }

  sub_1794();
}

uint64_t sub_122DEC4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = a2 + v6 - a4;
  v8 = v6;
  if (v7 < a3)
  {
    v9 = v7;
    v8 = *(a1 + 8);
    do
    {
      v10 = *v9;
      v11 = v9[1];
      v9[1] = 0;
      *v8 = v10;
      v8[1] = v11;
      v8 += 2;
      v9 += 2;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v8;
  return sub_122E264(&v13, a2, v7, v6);
}

void sub_122DF2C(unint64_t *a1, uint64_t *a2, void *a3)
{
  v6 = a1[2];
  if (v6 == a1[3])
  {
    v7 = a1[1];
    if (v7 <= *a1)
    {
      if (v6 == *a1)
      {
        v10 = 1;
      }

      else
      {
        v10 = (v6 - *a1) >> 3;
      }

      v11 = a1[4];
      v12[4] = a1[4];
      sub_1223168(v11, v10);
    }

    v8 = (((v7 - *a1) >> 4) + 1 + ((((v7 - *a1) >> 4) + 1) >> 63)) >> 1;
    sub_122E2D4(v12, v7, v6, &v7[-2 * v8]);
    v6 = v9;
    a1[1] -= 16 * v8;
    a1[2] = v9;
  }

  sub_122E11C(v6, *a2, a3);
}

uint64_t sub_122E060(uint64_t **a1, void *a2, uint64_t *a3)
{
  v6 = a2[1];
  sub_122E34C(a1, a3, a1[1], a2[2]);
  v7 = *a1;
  v8 = a2[1];
  a2[2] += a1[1] - a3;
  a1[1] = a3;
  v9 = (v8 + v7 - a3);
  sub_122E34C(a1, v7, a3, v9);
  a2[1] = v9;
  v10 = *a1;
  a1[1] = *a1;
  *a1 = a2[1];
  a2[1] = v10;
  v11 = a1[1];
  a1[1] = a2[2];
  a2[2] = v11;
  v12 = a1[2];
  a1[2] = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
  return v6;
}

uint64_t *sub_122E1AC(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_122E228(result, a4);
  }

  return result;
}

void sub_122E20C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_122E228(uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_122CA60(a1, a2);
  }

  sub_1794();
}

uint64_t sub_122E264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v6 = (a4 - 8);
    v7 = a3;
    do
    {
      v8 = *(v7 - 16);
      v9 = *(v7 - 8);
      v7 -= 16;
      *(v7 + 8) = 0;
      v10 = *v6;
      *(v6 - 1) = v8;
      *v6 = v9;
      if (v10)
      {
        sub_122C2C0(v6, v10);
      }

      v6 -= 2;
    }

    while (v7 != a2);
  }

  return a3;
}

uint64_t *sub_122E2D4(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v4 = a2;
  if (a2 == a3)
  {
    return a2;
  }

  v5 = a3;
  v6 = (a4 + 8);
  do
  {
    v7 = *v4;
    v8 = v4[1];
    v4[1] = 0;
    v9 = *v6;
    *(v6 - 1) = v7;
    *v6 = v8;
    if (v9)
    {
      sub_122C2C0(v6, v9);
    }

    v4 += 2;
    v6 += 2;
  }

  while (v4 != v5);
  return v5;
}

uint64_t sub_122E34C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v15 = a4;
  v14 = a4;
  v12[0] = a1;
  v12[1] = &v14;
  v12[2] = &v15;
  if (a2 == a3)
  {
    v13 = 1;
  }

  else
  {
    v5 = a2;
    do
    {
      v6 = *v5;
      v7 = v5[1];
      v5[1] = 0;
      *a4 = v6;
      a4[1] = v7;
      a4 += 2;
      v5 += 2;
    }

    while (v5 != a3);
    v15 = a4;
    v13 = 1;
    if (a2 != a3)
    {
      v8 = a2 + 1;
      do
      {
        v9 = *v8;
        *v8 = 0;
        if (v9)
        {
          sub_122C2C0(v8, v9);
        }

        v10 = v8 + 1;
        v8 += 2;
      }

      while (v10 != a3);
    }
  }

  return sub_122E400(v12);
}

uint64_t sub_122E400(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_122E438(a1);
  }

  return a1;
}

void sub_122E438(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    v3 = v1 - 1;
    do
    {
      v4 = *v3;
      *v3 = 0;
      if (v4)
      {
        sub_122C2C0(v3, v4);
      }

      v5 = v3 - 1;
      v3 -= 2;
    }

    while (v5 != v2);
  }
}

uint64_t sub_122E490(uint64_t a1)
{
  sub_122E4C8(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_122E4C8(uint64_t a1, void *a2)
{
  result = *(a1 + 16);
  while (result != a2)
  {
    v7 = *(result - 1);
    v5 = result - 1;
    v6 = v7;
    *(a1 + 16) = v5 - 1;
    *v5 = 0;
    if (v7)
    {
      sub_122C2C0(v5, v6);
      result = *(a1 + 16);
    }

    else
    {
      result = v5 - 1;
    }
  }

  return result;
}

void sub_122E524(void *a1, uint64_t *a2, uint64_t *a3, _DWORD *a4)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 < v4)
  {
    if (a2 != v5)
    {
      v14 = a1;
      sub_122E934(v13, *a3, a4);
    }

    sub_122E934(a1[1], *a3, a4);
  }

  v6 = *a1;
  v7 = ((v5 - *a1) >> 4) + 1;
  if (!(v7 >> 60))
  {
    v8 = a2 - v6;
    v9 = v4 - v6;
    v10 = v9 >> 3;
    if (v9 >> 3 <= v7)
    {
      v10 = ((v5 - *a1) >> 4) + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    v12 = v8 >> 4;
    v16 = a1;
    if (v11)
    {
      sub_1223168(a1, v11);
    }

    v13[0] = 0;
    v13[1] = 16 * v12;
    v14 = (16 * v12);
    v15 = 0;
    sub_122E744(v13, a3, a4);
  }

  sub_1794();
}

uint64_t sub_122E6DC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = a2 + v6 - a4;
  v8 = v6;
  if (v7 < a3)
  {
    v9 = v7;
    v8 = *(a1 + 8);
    do
    {
      v10 = *v9;
      v11 = v9[1];
      v9[1] = 0;
      *v8 = v10;
      v8[1] = v11;
      v8 += 2;
      v9 += 2;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v8;
  return sub_122EA8C(&v13, a2, v7, v6);
}

void sub_122E744(unint64_t *a1, uint64_t *a2, _DWORD *a3)
{
  v6 = a1[2];
  if (v6 == a1[3])
  {
    v7 = a1[1];
    if (v7 <= *a1)
    {
      if (v6 == *a1)
      {
        v10 = 1;
      }

      else
      {
        v10 = (v6 - *a1) >> 3;
      }

      v11 = a1[4];
      v12[4] = a1[4];
      sub_1223168(v11, v10);
    }

    v8 = (((v7 - *a1) >> 4) + 1 + ((((v7 - *a1) >> 4) + 1) >> 63)) >> 1;
    sub_122EAFC(v12, v7, v6, &v7[-2 * v8]);
    v6 = v9;
    a1[1] -= 16 * v8;
    a1[2] = v9;
  }

  sub_122E934(v6, *a2, a3);
}

uint64_t sub_122E878(uint64_t **a1, void *a2, uint64_t *a3)
{
  v6 = a2[1];
  sub_122EB74(a1, a3, a1[1], a2[2]);
  v7 = *a1;
  v8 = a2[1];
  a2[2] += a1[1] - a3;
  a1[1] = a3;
  v9 = (v8 + v7 - a3);
  sub_122EB74(a1, v7, a3, v9);
  a2[1] = v9;
  v10 = *a1;
  a1[1] = *a1;
  *a1 = a2[1];
  a2[1] = v10;
  v11 = a1[1];
  a1[1] = a2[2];
  a2[2] = v11;
  v12 = a1[2];
  a1[2] = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
  return v6;
}

uint64_t *sub_122E9C4(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_122EA40(result, a4);
  }

  return result;
}

void sub_122EA24(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_122EA40(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_122CAA8(a1, a2);
  }

  sub_1794();
}

uint64_t sub_122EA8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v6 = (a4 - 8);
    v7 = a3;
    do
    {
      v8 = *(v7 - 16);
      v9 = *(v7 - 8);
      v7 -= 16;
      *(v7 + 8) = 0;
      v10 = *v6;
      *(v6 - 1) = v8;
      *v6 = v9;
      if (v10)
      {
        sub_122C1AC(v6, v10);
      }

      v6 -= 2;
    }

    while (v7 != a2);
  }

  return a3;
}

uint64_t *sub_122EAFC(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v4 = a2;
  if (a2 == a3)
  {
    return a2;
  }

  v5 = a3;
  v6 = (a4 + 8);
  do
  {
    v7 = *v4;
    v8 = v4[1];
    v4[1] = 0;
    v9 = *v6;
    *(v6 - 1) = v7;
    *v6 = v8;
    if (v9)
    {
      sub_122C1AC(v6, v9);
    }

    v4 += 2;
    v6 += 2;
  }

  while (v4 != v5);
  return v5;
}

uint64_t sub_122EB74(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v15 = a4;
  v14 = a4;
  v12[0] = a1;
  v12[1] = &v14;
  v12[2] = &v15;
  if (a2 == a3)
  {
    v13 = 1;
  }

  else
  {
    v5 = a2;
    do
    {
      v6 = *v5;
      v7 = v5[1];
      v5[1] = 0;
      *a4 = v6;
      a4[1] = v7;
      a4 += 2;
      v5 += 2;
    }

    while (v5 != a3);
    v15 = a4;
    v13 = 1;
    if (a2 != a3)
    {
      v8 = a2 + 1;
      do
      {
        v9 = *v8;
        *v8 = 0;
        if (v9)
        {
          sub_122C1AC(v8, v9);
        }

        v10 = v8 + 1;
        v8 += 2;
      }

      while (v10 != a3);
    }
  }

  return sub_122EC28(v12);
}

uint64_t sub_122EC28(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_122EC60(a1);
  }

  return a1;
}

void sub_122EC60(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    v3 = v1 - 1;
    do
    {
      v4 = *v3;
      *v3 = 0;
      if (v4)
      {
        sub_122C1AC(v3, v4);
      }

      v5 = v3 - 1;
      v3 -= 2;
    }

    while (v5 != v2);
  }
}

uint64_t sub_122ECB8(uint64_t a1)
{
  sub_122ECF0(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_122ECF0(uint64_t a1, void *a2)
{
  result = *(a1 + 16);
  while (result != a2)
  {
    v7 = *(result - 1);
    v5 = result - 1;
    v6 = v7;
    *(a1 + 16) = v5 - 1;
    *v5 = 0;
    if (v7)
    {
      sub_122C1AC(v5, v6);
      result = *(a1 + 16);
    }

    else
    {
      result = v5 - 1;
    }
  }

  return result;
}

void sub_122ED4C(uint64_t *a1, void *a2, uint64_t *a3, void *a4)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 < v4)
  {
    if (a2 != v5)
    {
      operator new();
    }

    sub_122EED4(a1, a3, a4);
  }

  v6 = *a1;
  v7 = ((v5 - *a1) >> 4) + 1;
  if (!(v7 >> 60))
  {
    v8 = a2 - v6;
    v9 = v4 - v6;
    v10 = v9 >> 3;
    if (v9 >> 3 <= v7)
    {
      v10 = v7;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    v12 = v8 >> 4;
    v13[4] = a1;
    if (v11)
    {
      sub_1223168(a1, v11);
    }

    v13[0] = 0;
    v13[1] = 16 * v12;
    v13[2] = 16 * v12;
    v13[3] = 0;
    sub_122EF40(v13, a3, a4);
  }

  sub_1794();
}

void sub_122EF40(unint64_t *a1, uint64_t *a2, void *a3)
{
  v5 = a1[2];
  if (v5 == a1[3])
  {
    v6 = a1[1];
    if (v6 <= *a1)
    {
      if (v5 == *a1)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v5 - *a1) >> 3;
      }

      v10 = a1[4];
      v11[4] = a1[4];
      sub_1223168(v10, v9);
    }

    v7 = (((v6 - *a1) >> 4) + 1 + ((((v6 - *a1) >> 4) + 1) >> 63)) >> 1;
    sub_122DA74(v11, v6, v5, &v6[-2 * v7]);
    v5 = v8;
    a1[1] -= 16 * v7;
    a1[2] = v8;
  }

  *v5 = *a2;
  operator new();
}

unint64_t *sub_122F09C(void *a1, unint64_t *a2, unint64_t *a3)
{
  if ((*a1 + 1) <= 0x1F)
  {
    sub_122C6C8(a2, 45);
  }

  return sub_122C8F8(a2, a3);
}

_OWORD *sub_122F0F4(uint64_t a1, __int128 *a2)
{
  if ((atomic_load_explicit(&qword_27C4180, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27C4180))
  {
    qword_27C4178 = sub_122F1E0();
    __cxa_guard_release(&qword_27C4180);
  }

  v3 = qword_27C4178;
  std::mutex::lock(qword_27C4178);
  v4 = sub_12237BC(qword_27C4178, a2);
  std::mutex::unlock(v3);
  return v4;
}

uint64_t sub_122F1A8(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(byte_27C4190, memory_order_acquire) & 1) == 0)
  {
    sub_122F258();
  }

  return qword_27C4188;
}

void *sub_122F1E0()
{
  if ((atomic_load_explicit(&qword_2738CB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2738CB8))
  {
    sub_12237B8(&unk_2734C20);
    __cxa_guard_release(&qword_2738CB8);
  }

  return &unk_2734C20;
}

void sub_122F258()
{
  if (__cxa_guard_acquire(byte_27C4190))
  {
    qword_27C4188 = &unk_23221B0;

    __cxa_guard_release(byte_27C4190);
  }
}

_DWORD *sub_122F2A8(uint64_t a1, int *a2)
{
  if ((atomic_load_explicit(byte_27C41A0, memory_order_acquire) & 1) == 0)
  {
    sub_122F53C();
  }

  v3 = qword_27C4198;
  std::mutex::lock(qword_27C4198);
  v4 = sub_1227DDC(qword_27C4198, a2);
  std::mutex::unlock(v3);
  return v4;
}

char *sub_122F328(uint64_t a1, int *a2)
{
  if ((atomic_load_explicit(byte_27C41B0, memory_order_acquire) & 1) == 0)
  {
    sub_122F58C();
  }

  v3 = qword_27C41A8;
  std::mutex::lock(qword_27C41A8);
  v4 = sub_1227F64(qword_27C41A8, a2);
  std::mutex::unlock(v3);
  return v4;
}

void *sub_122F3A8(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(byte_273CD40, memory_order_acquire) & 1) == 0)
  {
    sub_122F5DC();
  }

  return &unk_2738CC0;
}

uint64_t sub_122F3E0(uint64_t a1)
{
  *a1 = 850045863;
  *(a1 + 8264) = 0;
  *(a1 + 8272) = 0u;
  bzero((a1 + 8), 0x203CuLL);
  sub_122F464(a1 + 8264, 0);
  *(a1 + 16504) = 0;
  *(a1 + 16488) = 0u;
  bzero((a1 + 8288), 0x2004uLL);
  sub_122F4D0(a1 + 16488, 0);
  return a1;
}

uint64_t sub_122F464(uint64_t result, uint64_t a2)
{
  v2 = result;
  for (i = *(result + 8); i != a2; i -= 16)
  {
    result = *(i - 8);
    *(i - 8) = 0;
    if (result)
    {
      operator delete();
    }
  }

  *(v2 + 8) = a2;
  return result;
}

uint64_t sub_122F4D0(uint64_t result, uint64_t a2)
{
  v2 = result;
  for (i = *(result + 8); i != a2; i -= 16)
  {
    result = *(i - 8);
    *(i - 8) = 0;
    if (result)
    {
      operator delete();
    }
  }

  *(v2 + 8) = a2;
  return result;
}

void sub_122F53C()
{
  v0 = __cxa_guard_acquire(byte_27C41A0);
  if (v0)
  {
    qword_27C4198 = sub_122F3A8(v0, v1);

    __cxa_guard_release(byte_27C41A0);
  }
}

void sub_122F58C()
{
  v0 = __cxa_guard_acquire(byte_27C41B0);
  if (v0)
  {
    qword_27C41A8 = sub_122F3A8(v0, v1);

    __cxa_guard_release(byte_27C41B0);
  }
}

void sub_122F5DC()
{
  if (__cxa_guard_acquire(byte_273CD40))
  {
    sub_122F3E0(&unk_2738CC0);

    __cxa_guard_release(byte_273CD40);
  }
}

uint64_t sub_122F62C(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_27C41D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27C41D0))
  {
    qword_27C41C8 = sub_122FB38();
    __cxa_guard_release(&qword_27C41D0);
  }

  v3 = qword_27C41C8;
  std::mutex::lock(qword_27C41C8);
  v4 = sub_122A6DC(qword_27C41C8, a2);
  std::mutex::unlock(v3);
  return v4;
}

uint64_t sub_122F6E0(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_27C41E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27C41E0))
  {
    qword_27C41D8 = sub_122FB38();
    __cxa_guard_release(&qword_27C41E0);
  }

  v3 = qword_27C41D8;
  std::mutex::lock(qword_27C41D8);
  v4 = sub_122AAC4(qword_27C41D8, a2);
  std::mutex::unlock(v3);
  return v4;
}

uint64_t sub_122F794(uint64_t a1, unsigned int a2)
{
  if ((atomic_load_explicit(&qword_27C41F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27C41F0))
  {
    qword_27C41E8 = sub_122FB38();
    __cxa_guard_release(&qword_27C41F0);
  }

  v3 = qword_27C41E8;
  std::mutex::lock(qword_27C41E8);
  v4 = sub_122AC88(qword_27C41E8, a2);
  std::mutex::unlock(v3);
  return v4;
}

uint64_t sub_122F848(uint64_t a1, unsigned int a2)
{
  if ((atomic_load_explicit(&qword_27C4200, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27C4200))
  {
    qword_27C41F8 = sub_122FB38();
    __cxa_guard_release(&qword_27C4200);
  }

  v3 = qword_27C41F8;
  std::mutex::lock(qword_27C41F8);
  v4 = sub_122AD2C(qword_27C41F8, a2);
  std::mutex::unlock(v3);
  return v4;
}

uint64_t sub_122F8FC(uint64_t a1, uint64_t *a2)
{
  if ((atomic_load_explicit(&qword_27C4210, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27C4210))
  {
    qword_27C4208 = sub_122FB38();
    __cxa_guard_release(&qword_27C4210);
  }

  v3 = qword_27C4208;
  std::mutex::lock(qword_27C4208);
  v4 = sub_122ADD0(qword_27C4208, a2);
  std::mutex::unlock(v3);
  return v4;
}

uint64_t sub_122F9B0(uint64_t a1, uint64_t *a2)
{
  if ((atomic_load_explicit(&qword_27C4220, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27C4220))
  {
    qword_27C4218 = sub_122FB38();
    __cxa_guard_release(&qword_27C4220);
  }

  v3 = qword_27C4218;
  std::mutex::lock(qword_27C4218);
  v4 = sub_122AFC4(qword_27C4218, a2);
  std::mutex::unlock(v3);
  return v4;
}

uint64_t sub_122FA64(unint64_t *a1, unint64_t *a2, unsigned int *a3, unint64_t *a4)
{
  if ((atomic_load_explicit(&qword_27C41C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27C41C0))
  {
    qword_27C41B8 = sub_122FB38();
    __cxa_guard_release(&qword_27C41C0);
  }

  v8 = qword_27C41B8;
  std::mutex::lock(qword_27C41B8);
  v9 = sub_122A950(qword_27C41B8, a1, a2, a3, a4);
  std::mutex::unlock(v8);
  return v9;
}

void *sub_122FB38()
{
  if ((atomic_load_explicit(&qword_2751558, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2751558))
  {
    sub_122A23C(&unk_273CD48);
    __cxa_guard_release(&qword_2751558);
  }

  return &unk_273CD48;
}

uint64_t sub_122FBB0(uint64_t a1, _BYTE *a2)
{
  if ((atomic_load_explicit(&qword_27C4230, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27C4230))
  {
    qword_27C4228 = sub_122FB38();
    __cxa_guard_release(&qword_27C4230);
  }

  v3 = qword_27C4228;
  std::mutex::lock(qword_27C4228);
  v4 = sub_122B2B4(qword_27C4228, a2);
  std::mutex::unlock(v3);
  return v4;
}

const void **sub_122FC64(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_27C4240, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27C4240))
  {
    qword_27C4238 = sub_122FB38();
    __cxa_guard_release(&qword_27C4240);
  }

  v3 = qword_27C4238;
  std::mutex::lock(qword_27C4238);
  v4 = sub_122B5C0(qword_27C4238, a2);
  std::mutex::unlock(v3);
  return v4;
}

const void **sub_122FD18(uint64_t a1, int *a2)
{
  if ((atomic_load_explicit(&qword_27C4250, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27C4250))
  {
    qword_27C4248 = sub_122FB38();
    __cxa_guard_release(&qword_27C4250);
  }

  v3 = qword_27C4248;
  std::mutex::lock(qword_27C4248);
  v4 = sub_122B9D4(qword_27C4248, a2);
  std::mutex::unlock(v3);
  return v4;
}

uint64_t sub_122FDCC(uint64_t a1, int *a2)
{
  if ((atomic_load_explicit(byte_27C4260, memory_order_acquire) & 1) == 0)
  {
    sub_123010C();
  }

  v3 = qword_27C4258;
  std::mutex::lock(qword_27C4258);
  v4 = sub_122558C(qword_27C4258, a2);
  std::mutex::unlock(v3);
  return v4;
}

uint64_t sub_122FE4C(uint64_t a1, uint64_t *a2)
{
  if ((atomic_load_explicit(byte_27C4270, memory_order_acquire) & 1) == 0)
  {
    sub_123015C();
  }

  v3 = qword_27C4268;
  std::mutex::lock(qword_27C4268);
  v4 = sub_1225678(qword_27C4268, a2);
  std::mutex::unlock(v3);
  return v4;
}

uint64_t sub_122FECC(uint64_t a1, int *a2)
{
  if ((atomic_load_explicit(byte_27C4280, memory_order_acquire) & 1) == 0)
  {
    sub_12301AC();
  }

  v3 = qword_27C4278;
  std::mutex::lock(qword_27C4278);
  v4 = sub_1225768(qword_27C4278, a2);
  std::mutex::unlock(v3);
  return v4;
}

void *sub_122FF4C(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(byte_2757600, memory_order_acquire) & 1) == 0)
  {
    sub_12301FC();
  }

  return &unk_2751560;
}

uint64_t sub_122FF84(uint64_t a1)
{
  *a1 = 850045863;
  *(a1 + 8264) = 0;
  *(a1 + 8272) = 0u;
  bzero((a1 + 8), 0x203CuLL);
  sub_1230034(a1 + 8264, 0);
  *(a1 + 16504) = 0;
  *(a1 + 16488) = 0u;
  bzero((a1 + 8288), 0x2004uLL);
  sub_12300A0(a1 + 16488, 0);
  *(a1 + 24728) = 0;
  *(a1 + 24712) = 0u;
  bzero((a1 + 16512), 0x2004uLL);
  sub_1230034(a1 + 24712, 0);
  return a1;
}

uint64_t sub_1230034(uint64_t result, uint64_t a2)
{
  v2 = result;
  for (i = *(result + 8); i != a2; i -= 16)
  {
    result = *(i - 8);
    *(i - 8) = 0;
    if (result)
    {
      operator delete();
    }
  }

  *(v2 + 8) = a2;
  return result;
}

uint64_t sub_12300A0(uint64_t result, uint64_t a2)
{
  v2 = result;
  for (i = *(result + 8); i != a2; i -= 16)
  {
    result = *(i - 8);
    *(i - 8) = 0;
    if (result)
    {
      operator delete();
    }
  }

  *(v2 + 8) = a2;
  return result;
}

void sub_123010C()
{
  v0 = __cxa_guard_acquire(byte_27C4260);
  if (v0)
  {
    qword_27C4258 = sub_122FF4C(v0, v1);

    __cxa_guard_release(byte_27C4260);
  }
}

void sub_123015C()
{
  v0 = __cxa_guard_acquire(byte_27C4270);
  if (v0)
  {
    qword_27C4268 = sub_122FF4C(v0, v1);

    __cxa_guard_release(byte_27C4270);
  }
}

void sub_12301AC()
{
  v0 = __cxa_guard_acquire(byte_27C4280);
  if (v0)
  {
    qword_27C4278 = sub_122FF4C(v0, v1);

    __cxa_guard_release(byte_27C4280);
  }
}

void sub_12301FC()
{
  if (__cxa_guard_acquire(byte_2757600))
  {
    sub_122FF84(&unk_2751560);

    __cxa_guard_release(byte_2757600);
  }
}

uint64_t sub_123024C(uint64_t a1, uint64_t *a2)
{
  if ((atomic_load_explicit(&qword_27C4290, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27C4290))
  {
    qword_27C4288 = sub_1230684();
    __cxa_guard_release(&qword_27C4290);
  }

  v3 = qword_27C4288;
  std::mutex::lock(qword_27C4288);
  v4 = sub_1226DA8(qword_27C4288, a2);
  std::mutex::unlock(v3);
  return v4;
}

_OWORD *sub_1230300(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_27C42A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27C42A0))
  {
    qword_27C4298 = sub_1230684();
    __cxa_guard_release(&qword_27C42A0);
  }

  v3 = qword_27C4298;
  std::mutex::lock(qword_27C4298);
  v4 = sub_1227000(qword_27C4298, a2);
  std::mutex::unlock(v3);
  return v4;
}

uint64_t *sub_12303B4(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_27C42B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27C42B0))
  {
    qword_27C42A8 = sub_1230684();
    __cxa_guard_release(&qword_27C42B0);
  }

  v3 = qword_27C42A8;
  std::mutex::lock(qword_27C42A8);
  v4 = sub_12270E8(qword_27C42A8, a2);
  std::mutex::unlock(v3);
  return v4;
}

uint64_t *sub_1230468(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_27C42C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27C42C0))
  {
    qword_27C42B8 = sub_1230684();
    __cxa_guard_release(&qword_27C42C0);
  }

  v3 = qword_27C42B8;
  std::mutex::lock(qword_27C42B8);
  v4 = sub_12271A4(qword_27C42B8, a2);
  std::mutex::unlock(v3);
  return v4;
}

uint64_t sub_123051C(uint64_t a1, uint64_t *a2)
{
  if ((atomic_load_explicit(&qword_27C42D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27C42D0))
  {
    qword_27C42C8 = sub_1230684();
    __cxa_guard_release(&qword_27C42D0);
  }

  v3 = qword_27C42C8;
  std::mutex::lock(qword_27C42C8);
  v4 = sub_1227260(qword_27C42C8, a2);
  std::mutex::unlock(v3);
  return v4;
}

uint64_t sub_12305D0(uint64_t a1, uint64_t *a2)
{
  if ((atomic_load_explicit(&qword_27C42E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27C42E0))
  {
    qword_27C42D8 = sub_1230684();
    __cxa_guard_release(&qword_27C42E0);
  }

  v3 = qword_27C42D8;
  std::mutex::lock(qword_27C42D8);
  v4 = sub_12272D0(qword_27C42D8, a2);
  std::mutex::unlock(v3);
  return v4;
}

void *sub_1230684()
{
  if ((atomic_load_explicit(&qword_27643F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27643F8))
  {
    sub_1226DA4(&unk_2757608);
    __cxa_guard_release(&qword_27643F8);
  }

  return &unk_2757608;
}

uint64_t *sub_12306FC(uint64_t a1, uint64_t *a2)
{
  if ((atomic_load_explicit(byte_27C4300, memory_order_acquire) & 1) == 0)
  {
    sub_1230898();
  }

  v3 = qword_27C42F8;
  std::mutex::lock(qword_27C42F8);
  v4 = sub_1229088(qword_27C42F8, a2);
  std::mutex::unlock(v3);
  return v4;
}

uint64_t sub_123077C()
{
  if ((atomic_load_explicit(&qword_27C42F0, memory_order_acquire) & 1) == 0)
  {
    v1 = __cxa_guard_acquire(&qword_27C42F0);
    if (v1)
    {
      sub_12307F4(v1, v2);
      qword_27C42E8 = sub_12294C0();
      __cxa_guard_release(&qword_27C42F0);
    }
  }

  return qword_27C42E8;
}

uint64_t *sub_12307F4(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(byte_2766478, memory_order_acquire) & 1) == 0)
  {
    sub_12308E8();
  }

  return &qword_2764400;
}

uint64_t sub_123082C(uint64_t result, uint64_t a2)
{
  v2 = result;
  for (i = *(result + 8); i != a2; i -= 16)
  {
    result = *(i - 8);
    *(i - 8) = 0;
    if (result)
    {
      operator delete();
    }
  }

  *(v2 + 8) = a2;
  return result;
}

void sub_1230898()
{
  v0 = __cxa_guard_acquire(byte_27C4300);
  if (v0)
  {
    qword_27C42F8 = sub_12307F4(v0, v1);

    __cxa_guard_release(byte_27C4300);
  }
}

void sub_12308E8()
{
  if (__cxa_guard_acquire(byte_2766478))
  {
    qword_2764400 = 850045863;
    qword_2766448 = 0;
    xmmword_2766450 = 0u;
    bzero(&unk_2764408, 0x203CuLL);
    sub_123082C(&qword_2764400 + &loc_2048, 0);
    qword_2766470 = 0;
    xmmword_2766460 = 0u;

    __cxa_guard_release(byte_2766478);
  }
}

void *sub_1230980(uint64_t a1, unsigned __int8 *a2)
{
  if ((atomic_load_explicit(byte_27C4310, memory_order_acquire) & 1) == 0)
  {
    sub_1230A38();
  }

  v3 = qword_27C4308;
  std::mutex::lock(qword_27C4308);
  v4 = sub_1222388(qword_27C4308, a2);
  std::mutex::unlock(v3);
  return v4;
}

uint64_t *sub_1230A00(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(byte_27684E0, memory_order_acquire) & 1) == 0)
  {
    sub_1230A88();
  }

  return &qword_2766480;
}

void sub_1230A38()
{
  v0 = __cxa_guard_acquire(byte_27C4310);
  if (v0)
  {
    qword_27C4308 = sub_1230A00(v0, v1);

    __cxa_guard_release(byte_27C4310);
  }
}

void sub_1230A88()
{
  if (__cxa_guard_acquire(byte_27684E0))
  {
    qword_2766480 = 850045863;
    qword_27684C8 = 0;
    qword_27684D8 = 0;
    qword_27684D0 = 0;
    bzero(&unk_2766488, 0x203CuLL);
    sub_123082C(&qword_2766480 + &loc_2048, 0);

    __cxa_guard_release(byte_27684E0);
  }
}

void sub_1230B34()
{
  if ((atomic_load_explicit(&qword_27C4330, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27C4330))
  {
    sub_1230BB8(&qword_27C4320);

    __cxa_guard_release(&qword_27C4330);
  }
}

void sub_1230BB8(void *a1@<X8>)
{
  if ((atomic_load_explicit(&qword_27C4348, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27C4348))
  {
    operator new();
  }

  v2 = unk_27C4340;
  *a1 = qword_27C4338;
  a1[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }
}

void sub_1230CBC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_26C73E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

unint64_t sub_1230D6C(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t *a5)
{
  sub_1230FC8(a3, a5, &v27);
  sub_1231290(&v25, &v27);
  sub_123130C(&v25, &__p);
  v22 = *(a4 + 2);
  v21 = *a4;
  if ((v22 & 0x8000000000000000) == 0)
  {
    v8 = *(v27 + HIDWORD(v22));
    if (v8)
    {
      v9 = v25;
      if (v25 != v26)
      {
        while (*v9 != v8)
        {
          v9 += 8;
          if (v9 == v26)
          {
            v9 = v26;
            break;
          }
        }
      }

      v10 = (v9 - v25) >> 3;
    }

    else
    {
      LODWORD(v10) = -1;
    }

    HIDWORD(v22) = v10;
  }

  v11 = *(a1 + 8);
  v29[0] = __p;
  v29[1] = v24;
  v30 = 2;
  v31 = (v24 - __p) >> 3;
  v12 = (*(*v11 + 48))(v11, a2, v29, &v21);
  v13 = v12;
  v14 = HIDWORD(v12);
  if ((v12 & 0x80000000) != 0)
  {
    v16 = __p;
    if (v24 != __p)
    {
      v17 = 0;
      v18 = 0;
      while (*sub_45AC50(v16 + v17) != 6581877)
      {
        ++v18;
        v16 = __p;
        v17 += 8;
        if (v18 >= (v24 - __p) >> 3)
        {
          if ((v13 & 0x80000000) == 0)
          {
            goto LABEL_11;
          }

          goto LABEL_25;
        }
      }

      v14 = 1;
      v13 = v18;
      if ((v18 & 0x80000000) == 0)
      {
        goto LABEL_11;
      }
    }

LABEL_25:
    v19 = v13 | (v14 << 32);
  }

  else
  {
LABEL_11:
    if (v27 == v28)
    {
      v15 = v27;
    }

    else
    {
      v15 = v27;
      while (*v15 != *(v25 + v13))
      {
        v15 += 8;
        if (v15 == v28)
        {
          v15 = v28;
          break;
        }
      }
    }

    v19 = (v14 << 32) | ((v15 - v27) >> 3);
  }

  if (__p)
  {
    v24 = __p;
    operator delete(__p);
  }

  if (v25)
  {
    v26 = v25;
    operator delete(v25);
  }

  if (v27)
  {
    v28 = v27;
    operator delete(v27);
  }

  return v19;
}

void sub_1230F78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  if (a18)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

void sub_1230FC8(uint64_t a1@<X0>, uint64_t *a2@<X1>, const void **a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  sub_1231A2C(a3, 0);
  v6 = *a1;
  v7 = *(a1 + 8);
  if (*a1 != v7)
  {
    do
    {
      v8 = *v6;
      v9 = a2[1];
      v42 = *a2;
      v43 = v9;
      v10 = v8[3];
      v40 = v8[2];
      v41 = v10;
      if (!sub_1231A5C(&v42, &v40))
      {
        goto LABEL_12;
      }

      v11 = a2[3];
      v38 = a2[2];
      v39 = v11;
      v12 = v8[5];
      v36 = v8[4];
      v37 = v12;
      if (!sub_1231A5C(&v38, &v36))
      {
        goto LABEL_12;
      }

      v14 = a2[4];
      v13 = a2[5];
      v15 = v8[7];
      v34 = v8[6];
      v35 = v15;
      if ((atomic_load_explicit(&qword_27C4368, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27C4368))
      {
        sub_1231C70(&v44, "XX");
        qword_27C4360 = sub_1234374(&v44);
        __cxa_guard_release(&qword_27C4368);
      }

      v16 = qword_27C4360;
      if (v13)
      {
        v16 = v14;
      }

      v44 = v16;
      if (v35 != 1 || sub_123441C(&v44, &v34) || sub_1234494(&v34) == 0x500000000005A5ALL)
      {
        v18 = a3[1];
        v17 = a3[2];
        if (v18 >= v17)
        {
          v27 = (v18 - *a3) >> 3;
          if ((v27 + 1) >> 61)
          {
LABEL_39:
            sub_1794();
          }

          v28 = v17 - *a3;
          v29 = v28 >> 2;
          if (v28 >> 2 <= (v27 + 1))
          {
            v29 = v27 + 1;
          }

          if (v28 >= 0x7FFFFFFFFFFFFFF8)
          {
            v30 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v30 = v29;
          }

          if (v30)
          {
            sub_122422C(a3, v30);
          }

          v26 = 8 * v27;
          *(8 * v27) = v8;
          v19 = 8 * v27 + 8;
          goto LABEL_32;
        }

        *v18 = v8;
        v19 = (v18 + 8);
      }

      else
      {
LABEL_12:
        v21 = a3[1];
        v20 = a3[2];
        if (v21 >= v20)
        {
          v22 = (v21 - *a3) >> 3;
          if ((v22 + 1) >> 61)
          {
            goto LABEL_39;
          }

          v23 = v20 - *a3;
          v24 = v23 >> 2;
          if (v23 >> 2 <= (v22 + 1))
          {
            v24 = v22 + 1;
          }

          if (v23 >= 0x7FFFFFFFFFFFFFF8)
          {
            v25 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v25 = v24;
          }

          if (v25)
          {
            sub_122422C(a3, v25);
          }

          v26 = 8 * v22;
          *(8 * v22) = 0;
          v19 = 8 * v22 + 8;
LABEL_32:
          v31 = a3[1] - *a3;
          v32 = v26 - v31;
          memcpy((v26 - v31), *a3, v31);
          v33 = *a3;
          *a3 = v32;
          a3[1] = v19;
          a3[2] = 0;
          if (v33)
          {
            operator delete(v33);
          }

          goto LABEL_34;
        }

        *v21 = 0;
        v19 = (v21 + 8);
      }

LABEL_34:
      a3[1] = v19;
      ++v6;
    }

    while (v6 != v7);
  }
}

void sub_123124C(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_27C4368);
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(a1);
}

void sub_1231290(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_1231D00(a1, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1231CC8;
  sub_1231DB8(v3, v4, &v5);
}

void sub_12312F0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_123130C(uint64_t ***a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  sub_1232CA0(a2, 0);
  v4 = *a1;
  v5 = a1[1];
  if (*a1 != v5)
  {
    do
    {
      v6 = *v4;
      if (*v4)
      {
        v8 = *(a2 + 8);
        v7 = *(a2 + 16);
        if (v6[1])
        {
          v9 = *v6;
          if (v8 >= v7)
          {
            v15 = (v8 - *a2) >> 3;
            if ((v15 + 1) >> 61)
            {
              sub_1794();
            }

            v16 = v7 - *a2;
            v17 = v16 >> 2;
            if (v16 >> 2 <= (v15 + 1))
            {
              v17 = v15 + 1;
            }

            if (v16 >= 0x7FFFFFFFFFFFFFF8)
            {
              v18 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v18 = v17;
            }

            if (v18)
            {
              sub_122422C(a2, v18);
            }

            v24 = (8 * v15);
            *v24 = v9;
            v10 = 8 * v15 + 8;
            v25 = *(a2 + 8) - *a2;
            v26 = v24 - v25;
            memcpy(v24 - v25, *a2, v25);
            v23 = *a2;
            *a2 = v26;
            *(a2 + 8) = v10;
            *(a2 + 16) = 0;
            if (!v23)
            {
              goto LABEL_27;
            }

            goto LABEL_26;
          }

          *v8 = v9;
          v10 = (v8 + 1);
          goto LABEL_27;
        }
      }

      else
      {
        v8 = *(a2 + 8);
        v7 = *(a2 + 16);
      }

      if (v8 >= v7)
      {
        v11 = (v8 - *a2) >> 3;
        if ((v11 + 1) >> 61)
        {
          sub_1794();
        }

        v12 = v7 - *a2;
        v13 = v12 >> 2;
        if (v12 >> 2 <= (v11 + 1))
        {
          v13 = v11 + 1;
        }

        if (v12 >= 0x7FFFFFFFFFFFFFF8)
        {
          v14 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v13;
        }

        if (v14)
        {
          sub_122422C(a2, v14);
        }

        v19 = sub_12331FC();
        v20 = *a2;
        v21 = *(a2 + 8) - *a2;
        v22 = (8 * v11 - v21);
        *(8 * v11) = v19;
        v10 = 8 * v11 + 8;
        memcpy(v22, v20, v21);
        v23 = *a2;
        *a2 = v22;
        *(a2 + 8) = v10;
        *(a2 + 16) = 0;
        if (!v23)
        {
          goto LABEL_27;
        }

LABEL_26:
        operator delete(v23);
        goto LABEL_27;
      }

      *v8 = sub_12331FC();
      v10 = (v8 + 1);
LABEL_27:
      *(a2 + 8) = v10;
      ++v4;
    }

    while (v4 != v5);
  }
}

void sub_12314E0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1231530(uint64_t a1@<X0>, uint64_t a2@<X2>, __int128 *a3@<X3>, uint64_t *a4@<X4>, const void **a5@<X8>)
{
  sub_1230FC8(a2, a4, &v52);
  sub_1231290(&v50, &v52);
  sub_123130C(&v50, &v48);
  v47 = *(a3 + 2);
  v46 = *a3;
  if ((v47 & 0x8000000000000000) == 0)
  {
    v8 = *(v52 + HIDWORD(v47));
    if (v8)
    {
      v9 = v50;
      if (v50 != v51)
      {
        while (*v9 != v8)
        {
          v9 += 8;
          if (v9 == v51)
          {
            v9 = v51;
            break;
          }
        }
      }

      v10 = (v9 - v50) >> 3;
    }

    else
    {
      LODWORD(v10) = -1;
    }

    HIDWORD(v47) = v10;
  }

  v11 = *(a1 + 8);
  v54 = v48;
  v55 = v49;
  v56 = 2;
  v57 = (v49 - v48) >> 3;
  (*(*v11 + 72))(&__p);
  v12 = __p;
  v13 = v44;
  if (__p == v44)
  {
    v14 = v48;
    v13 = __p;
    if (v49 != v48)
    {
      v15 = 0;
      v16 = 0;
      do
      {
        if (*sub_45AC50(v14 + v15) == 6581877)
        {
          v17 = v16 | 0x100000000;
          v18 = v44;
          if (v44 >= v45)
          {
            v20 = (v44 - __p) >> 3;
            if ((v20 + 1) >> 61)
            {
              sub_1794();
            }

            v21 = (v45 - __p) >> 2;
            if (v21 <= v20 + 1)
            {
              v21 = v20 + 1;
            }

            if (v45 - __p >= 0x7FFFFFFFFFFFFFF8)
            {
              v22 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v22 = v21;
            }

            if (v22)
            {
              sub_1232E30(&__p, v22);
            }

            v23 = (8 * v20);
            *v23 = v17;
            v19 = 8 * v20 + 8;
            v24 = v23 - (v44 - __p);
            memcpy(v24, __p, v44 - __p);
            v25 = __p;
            __p = v24;
            v44 = v19;
            v45 = 0;
            if (v25)
            {
              operator delete(v25);
            }
          }

          else
          {
            *v44 = v17;
            v19 = (v18 + 1);
          }

          v44 = v19;
        }

        ++v16;
        v14 = v48;
        v15 += 8;
      }

      while (v16 < (v49 - v48) >> 3);
      v12 = __p;
      v13 = v44;
    }
  }

  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  sub_123196C(a5, (v13 - v12) >> 3);
  v26 = __p;
  v27 = v44;
  if (__p != v44)
  {
    do
    {
      v28 = *v26;
      if ((v28 & 0x80000000) != 0)
      {
        v31 = *v26;
      }

      else
      {
        if (v52 == v53)
        {
          v30 = v52;
        }

        else
        {
          v29 = *(v50 + v28);
          v30 = v52;
          while (*v30 != v29)
          {
            v30 += 8;
            if (v30 == v53)
            {
              v30 = v53;
              break;
            }
          }
        }

        v31 = ((v30 - v52) >> 3) | (v26[1] << 32);
      }

      v33 = a5[1];
      v32 = a5[2];
      if (v33 >= v32)
      {
        v35 = (v33 - *a5) >> 3;
        if ((v35 + 1) >> 61)
        {
          sub_1794();
        }

        v36 = v32 - *a5;
        v37 = v36 >> 2;
        if (v36 >> 2 <= (v35 + 1))
        {
          v37 = v35 + 1;
        }

        if (v36 >= 0x7FFFFFFFFFFFFFF8)
        {
          v38 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v38 = v37;
        }

        if (v38)
        {
          sub_1232E30(a5, v38);
        }

        v39 = (8 * v35);
        *v39 = v31;
        v34 = 8 * v35 + 8;
        v40 = a5[1] - *a5;
        v41 = v39 - v40;
        memcpy(v39 - v40, *a5, v40);
        v42 = *a5;
        *a5 = v41;
        a5[1] = v34;
        a5[2] = 0;
        if (v42)
        {
          operator delete(v42);
        }
      }

      else
      {
        *v33 = v31;
        v34 = (v33 + 1);
      }

      a5[1] = v34;
      v26 += 2;
    }

    while (v26 != v27);
    v26 = __p;
  }

  if (v26)
  {
    v44 = v26;
    operator delete(v26);
  }

  if (v48)
  {
    v49 = v48;
    operator delete(v48);
  }

  if (v50)
  {
    v51 = v50;
    operator delete(v50);
  }

  if (v52)
  {
    v53 = v52;
    operator delete(v52);
  }
}

void sub_12318E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23)
{
  v25 = *v23;
  if (*v23)
  {
    *(v23 + 8) = v25;
    operator delete(v25);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  if (a19)
  {
    operator delete(a19);
  }

  if (a22)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void sub_123196C(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 3)
  {
    if (!(a2 >> 61))
    {
      sub_1232E30(a1, a2);
    }

    sub_1794();
  }
}

void sub_1231A2C(void *result, unint64_t a2)
{
  v2 = (result[1] - *result) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      result[1] = *result + 8 * a2;
    }
  }

  else
  {
    sub_1231B5C(result, a2 - v2);
  }
}

BOOL sub_1231A5C(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_27C4358, memory_order_acquire) & 1) == 0)
  {
    v6 = a1;
    v5 = __cxa_guard_acquire(&qword_27C4358);
    a1 = v6;
    if (v5)
    {
      sub_1231C70(&v7, "XX");
      qword_27C4350 = sub_12340BC(&v7);
      __cxa_guard_release(&qword_27C4358);
      a1 = v6;
    }
  }

  if (*(a1 + 8))
  {
    v3 = a1;
  }

  else
  {
    v3 = &qword_27C4350;
  }

  v7 = *v3;
  return *(a2 + 8) != 1 || sub_12340B0(&v7, a2) || *sub_45AC50(a2) == 0x500000000005A5ALL;
}

void sub_1231B5C(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 3);
    if (v7 >> 61)
    {
      sub_1794();
    }

    v8 = v4 - *a1;
    if (v8 >> 2 > v7)
    {
      v7 = v8 >> 2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_122422C(a1, v9);
    }

    v10 = (8 * (v6 >> 3));
    bzero(v10, 8 * a2);
    v11 = &v10[8 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void *sub_1231C70(void *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 7)
  {
    v5 = 7;
  }

  else
  {
    v5 = v4;
  }

  sub_12244D0(&v7, __s, v5);
  *a1 = v7;
  return a1;
}

uint64_t *sub_1231D00(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1231D7C(result, a4);
  }

  return result;
}

void sub_1231D60(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1231D7C(uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_122422C(a1, a2);
  }

  sub_1794();
}

void sub_1231DB8(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  v6 = a2 - a1;
  if (v6 < 129)
  {
    v11 = 0;
    v7 = 0;
  }

  else
  {
    v7 = a2 - a1;
    while (1)
    {
      v8 = operator new(8 * v7, &std::nothrow);
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
        goto LABEL_8;
      }
    }

    v11 = v8;
  }

LABEL_8:
  sub_1231EB4(a1, a2, a3, v6, v11, v7);
  if (v11)
  {

    operator delete(v11);
  }
}

void sub_1231E9C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1231EB4(uint64_t *result, uint64_t *a2, uint64_t (**a3)(uint64_t, uint64_t), unint64_t a4, uint64_t *a5, int64_t a6)
{
  if (a4 >= 2)
  {
    v8 = result;
    if (a4 == 2)
    {
      v9 = a2 - 1;
      result = (*a3)(a2 - 1, result, a3, 2, a5, a6);
      if (result)
      {
        v10 = *v8;
        *v8 = *v9;
        *v9 = v10;
      }
    }

    else if (a4 > 128)
    {
      v14 = a4 >> 1;
      v15 = &result[a4 >> 1];
      v16 = a4 >> 1;
      if (a4 <= a6)
      {
        sub_123214C(result, v15, a3, v16, a5);
        sub_123214C(&v8[a4 >> 1], a2, a3, a4 - (a4 >> 1), &a5[v14]);

        return sub_12322AC(a5, &a5[v14], &a5[v14], &a5[a4], v8, a3);
      }

      else
      {
        sub_1231EB4(result, v15, a3, v16, a5, a6);
        sub_1231EB4(&v8[a4 >> 1], a2, a3, a4 - (a4 >> 1), a5, a6);

        return sub_123236C(v8, &v8[a4 >> 1], a2, a3, a4 >> 1, a4 - (a4 >> 1), a5, a6);
      }
    }

    else
    {

      return sub_1232078(result, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1232078(uint64_t result, void *a2, uint64_t (**a3)(void *, void))
{
  if (result != a2)
  {
    v14[7] = v3;
    v14[8] = v4;
    v6 = result;
    v7 = (result + 8);
    if ((result + 8) != a2)
    {
      v9 = 0;
      v10 = result;
      do
      {
        v11 = v10;
        v10 = v7;
        result = (*a3)(v7, v11);
        if (result)
        {
          v14[0] = *v10;
          v12 = v9;
          while (1)
          {
            *(v6 + v12 + 8) = *(v6 + v12);
            if (!v12)
            {
              break;
            }

            v12 -= 8;
            result = (*a3)(v14, v12 + v6);
            if ((result & 1) == 0)
            {
              v13 = (v6 + v12 + 8);
              goto LABEL_10;
            }
          }

          v13 = v6;
LABEL_10:
          *v13 = v14[0];
        }

        v7 = v10 + 1;
        v9 += 8;
      }

      while (v10 + 1 != a2);
    }
  }

  return result;
}

uint64_t *sub_123214C(uint64_t *result, uint64_t *a2, uint64_t (**a3)(uint64_t, uint64_t), unint64_t a4, uint64_t *a5)
{
  if (a4)
  {
    v9 = result;
    if (a4 == 2)
    {
      v10 = a2 - 1;
      result = (*a3)((a2 - 1), result);
      if (result)
      {
        *a5 = *v10;
        v11 = *v9;
      }

      else
      {
        *a5 = *v9;
        v11 = *v10;
      }

      a5[1] = v11;
    }

    else if (a4 == 1)
    {
      *a5 = *result;
    }

    else if (a4 > 8)
    {
      sub_1231EB4(result, &result[a4 >> 1], a3, a4 >> 1, a5, a4 >> 1);
      sub_1231EB4(&v9[a4 >> 1], a2, a3, a4 - (a4 >> 1), &a5[a4 >> 1], a4 - (a4 >> 1));

      return sub_1232744(v9, &v9[a4 >> 1], &v9[a4 >> 1], a2, a5, a3);
    }

    else
    {

      return sub_1232658(result, a2, a5, a3);
    }
  }

  return result;
}

uint64_t *sub_12322AC(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t (**a6)(uint64_t *, uint64_t *))
{
  if (result == a2)
  {
LABEL_16:
    while (a3 != a4)
    {
      v15 = *a3++;
      *a5++ = v15;
    }
  }

  else
  {
    v11 = result;
    while (a3 != a4)
    {
      result = (*a6)(a3, v11);
      if (result)
      {
        v12 = a3;
      }

      else
      {
        v12 = v11;
      }

      if (result)
      {
        v13 = 0;
      }

      else
      {
        v13 = 8;
      }

      v11 = (v11 + v13);
      if (result)
      {
        v14 = 8;
      }

      else
      {
        v14 = 0;
      }

      a3 = (a3 + v14);
      *a5++ = *v12;
      if (v11 == a2)
      {
        goto LABEL_16;
      }
    }

    while (v11 != a2)
    {
      v16 = *v11++;
      *a5++ = v16;
    }
  }

  return result;
}

uint64_t sub_123236C(uint64_t result, char *a2, char *a3, uint64_t (**a4)(char *, char *), uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  if (a6)
  {
    v10 = a6;
    v14 = result;
    while (v10 > a8 && a5 > a8)
    {
      if (!a5)
      {
        return result;
      }

      v15 = 0;
      v16 = -a5;
      while (1)
      {
        v17 = &v15[v14];
        result = (*a4)(a2, &v15[v14]);
        if (result)
        {
          break;
        }

        v15 += 8;
        if (__CFADD__(v16++, 1))
        {
          return result;
        }
      }

      v19 = -v16;
      v37 = a8;
      v36 = v10;
      if (-v16 >= v10)
      {
        if (v16 == -1)
        {
          v35 = *&v15[v14];
          *&v15[v14] = *a2;
          *a2 = v35;
          return result;
        }

        v24 = v19 / 2;
        v22 = &v14[8 * (v19 / 2) + v15];
        v21 = a2;
        if (a2 != a3)
        {
          v38 = v19 / 2;
          v42 = *a4;
          v44 = a4;
          v25 = (a3 - a2) >> 3;
          v21 = a2;
          do
          {
            v26 = &v21[8 * (v25 >> 1)];
            v27 = v42(v26, v22);
            if (v27)
            {
              v25 += ~(v25 >> 1);
            }

            else
            {
              v25 >>= 1;
            }

            if (v27)
            {
              v21 = v26 + 8;
            }
          }

          while (v25);
          a4 = v44;
          v24 = v38;
        }

        v20 = (v21 - a2) >> 3;
      }

      else
      {
        v20 = v10 / 2;
        v21 = &a2[8 * (v10 / 2)];
        v22 = a2;
        if ((a2 - v14) != v15)
        {
          v41 = v20;
          v43 = a4;
          v23 = (a2 - v14 - v15) >> 3;
          v22 = &v15[v14];
          do
          {
            if ((*v43)(v21, &v22[8 * (v23 >> 1)]))
            {
              v23 >>= 1;
            }

            else
            {
              v22 += 8 * (v23 >> 1) + 8;
              v23 += ~(v23 >> 1);
            }
          }

          while (v23);
          v20 = v41;
          a4 = v43;
        }

        v24 = (v22 - v14 - v15) >> 3;
      }

      v39 = v24;
      a5 = -(v24 + v16);
      v45 = v36 - v20;
      v28 = a2;
      v29 = v20;
      v30 = sub_1232988(v22, v28, v21);
      v31 = v29;
      v32 = v30;
      if (v39 + v31 >= v36 - (v39 + v31) - v16)
      {
        v34 = v31;
        result = sub_123236C(v30, v21, a3, a4, a5, v45, a7, v37);
        v21 = v22;
        a8 = v37;
        a5 = v39;
        a3 = v32;
      }

      else
      {
        v33 = v22;
        a8 = v37;
        result = sub_123236C(&v15[v14], v33, v30, a4, v39, v31, a7, v37);
        v17 = v32;
        v34 = v45;
      }

      v14 = v17;
      a2 = v21;
      v10 = v34;
      if (!v34)
      {
        return result;
      }
    }

    return sub_1232804(v14, a2, a3, a4, a5, v10, a7);
  }

  return result;
}

uint64_t *sub_1232658(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t (**a4)(uint64_t *, uint64_t *))
{
  if (result != a2)
  {
    v6 = result + 1;
    *a3 = *result;
    if (result + 1 != a2)
    {
      v8 = 0;
      v9 = a3;
      do
      {
        v10 = v9++;
        result = (*a4)(v6, v10);
        v11 = v9;
        if (result)
        {
          v10[1] = *v10;
          v11 = a3;
          if (v10 != a3)
          {
            v12 = v8;
            while (1)
            {
              v11 = (a3 + v12);
              result = (*a4)(v6, (a3 + v12 - 8));
              if (!result)
              {
                break;
              }

              *(a3 + v12) = *(a3 + v12 - 8);
              v12 -= 8;
              if (!v12)
              {
                v11 = a3;
                break;
              }
            }
          }
        }

        v13 = *v6++;
        *v11 = v13;
        v8 += 8;
      }

      while (v6 != a2);
    }
  }

  return result;
}

uint64_t *sub_1232744(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t (**a6)(uint64_t *, uint64_t *))
{
  if (result == a2)
  {
LABEL_16:
    while (a3 != a4)
    {
      v15 = *a3++;
      *a5++ = v15;
    }
  }

  else
  {
    v11 = result;
    while (a3 != a4)
    {
      result = (*a6)(a3, v11);
      if (result)
      {
        v12 = a3;
      }

      else
      {
        v12 = v11;
      }

      if (result)
      {
        v13 = 8;
      }

      else
      {
        v13 = 0;
      }

      a3 = (a3 + v13);
      if (result)
      {
        v14 = 0;
      }

      else
      {
        v14 = 8;
      }

      v11 = (v11 + v14);
      *a5++ = *v12;
      if (v11 == a2)
      {
        goto LABEL_16;
      }
    }

    while (v11 != a2)
    {
      v16 = *v11++;
      *a5++ = v16;
    }
  }

  return result;
}

uint64_t *sub_1232804(uint64_t *__dst, uint64_t *a2, uint64_t *a3, uint64_t (**a4)(uint64_t *, char *), uint64_t a5, uint64_t a6, char *__src)
{
  v7 = __src;
  v9 = a3;
  v10 = a2;
  v11 = __dst;
  if (a5 <= a6)
  {
    if (__dst != a2)
    {
      v15 = -__src;
      v16 = __src;
      v17 = __dst;
      do
      {
        v18 = *v17++;
        *v16++ = v18;
        v15 -= 8;
      }

      while (v17 != a2);
      while (v10 != v9)
      {
        __dst = (*a4)(v10, v7);
        if (__dst)
        {
          v19 = v10;
        }

        else
        {
          v19 = v7;
        }

        if (__dst)
        {
          v20 = 8;
        }

        else
        {
          v20 = 0;
        }

        v10 = (v10 + v20);
        if (__dst)
        {
          v21 = 0;
        }

        else
        {
          v21 = 8;
        }

        v7 += v21;
        *v11++ = *v19;
        if (v16 == v7)
        {
          return __dst;
        }
      }

      return memmove(v11, v7, -&v7[v15]);
    }
  }

  else if (a2 != a3)
  {
    v12 = 0;
    do
    {
      *&__src[v12 * 8] = a2[v12];
      ++v12;
    }

    while (&a2[v12] != a3);
    v13 = &__src[v12 * 8];
    while (v10 != v11)
    {
      __dst = (*a4)(v13 - 1, v10 - 8);
      if (__dst)
      {
        v14 = v10;
      }

      else
      {
        v14 = v13;
      }

      if (__dst)
      {
        --v10;
      }

      else
      {
        v13 -= 8;
      }

      *--v9 = *(v14 - 1);
      if (v13 == v7)
      {
        return __dst;
      }
    }

    if (v13 != v7)
    {
      v22 = 0x1FFFFFFFFFFFFFFFLL;
      do
      {
        v23 = *(v13 - 1);
        v13 -= 8;
        v9[v22--] = v23;
      }

      while (v13 != v7);
    }
  }

  return __dst;
}

char *sub_1232988(char *__src, char *a2, char *a3)
{
  v4 = a3;
  if (__src != a2)
  {
    v6 = a3 - a2;
    if (a3 == a2)
    {
      return __src;
    }

    else if (__src + 8 == a2)
    {
      v7 = *__src;
      memmove(__src, __src + 8, v6);
      v4 = &__src[v6];
      *v4 = v7;
    }

    else if (a2 + 8 == a3)
    {
      v8 = *(a3 - 1);
      v4 = __src + 8;
      v9 = a3 - 8 - __src;
      if (a3 - 8 != __src)
      {
        memmove(__src + 8, __src, v9);
      }

      *__src = v8;
    }

    else
    {
      return sub_1232A4C(__src, a2, a3);
    }
  }

  return v4;
}

char *sub_1232A4C(char *a1, char *a2, char *a3)
{
  v3 = (a2 - a1) >> 3;
  v4 = a3 - a2;
  if (v3 == (a3 - a2) >> 3)
  {
    if (a2 != a1 && a3 != a2)
    {
      v5 = a1 + 8;
      v6 = a2 + 8;
      do
      {
        v7 = *(v5 - 1);
        *(v5 - 1) = *(v6 - 1);
        *(v6 - 1) = v7;
        if (v5 == a2)
        {
          break;
        }

        v5 += 8;
        v8 = v6 == a3;
        v6 += 8;
      }

      while (!v8);
    }
  }

  else
  {
    v9 = v4 >> 3;
    v10 = (a2 - a1) >> 3;
    do
    {
      v11 = v10;
      v10 = v9;
      v9 = v11 % v9;
    }

    while (v9);
    v12 = &a1[8 * v10];
    do
    {
      v14 = *(v12 - 1);
      v12 -= 8;
      v13 = v14;
      v15 = &v12[a2 - a1];
      v16 = v12;
      do
      {
        v17 = v15;
        *v16 = *v15;
        v18 = &v15[8 * v3];
        v19 = __OFSUB__(v3, (a3 - v15) >> 3);
        v21 = v3 - ((a3 - v15) >> 3);
        v20 = (v21 < 0) ^ v19;
        v15 = &a1[8 * v21];
        if (v20)
        {
          v15 = v18;
        }

        v16 = v17;
      }

      while (v15 != v12);
      *v17 = v13;
    }

    while (v12 != a1);
    return &a1[v4];
  }

  return a2;
}

uint64_t sub_1232B18(void *a1)
{
  if ((atomic_load_explicit(&qword_27C4378, memory_order_acquire) & 1) == 0)
  {
    v12 = a1;
    v13 = __cxa_guard_acquire(&qword_27C4378);
    a1 = v12;
    if (v13)
    {
      sub_1231C70(&v16, "ZZ");
      qword_27C4370 = sub_12340BC(&v16);
      __cxa_guard_release(&qword_27C4378);
      a1 = v12;
    }
  }

  if ((atomic_load_explicit(&qword_27C4388, memory_order_acquire) & 1) == 0)
  {
    v14 = a1;
    v15 = __cxa_guard_acquire(&qword_27C4388);
    a1 = v14;
    if (v15)
    {
      sub_1231C70(&v16, "ZZ");
      qword_27C4380 = sub_1234374(&v16);
      __cxa_guard_release(&qword_27C4388);
      a1 = v14;
    }
  }

  v1 = *a1;
  if (*a1)
  {
    v2 = *(v1 + 16);
    v3 = *(v1 + 24);
    v4 = *(v1 + 32);
    v5 = *(v1 + 40);
    v7 = *(v1 + 48);
    v6 = *(v1 + 56);
    v16 = v7;
    v17 = v6;
    v8 = v3 & (qword_27C4370 != v2);
    if (v8)
    {
      v9 = 2;
    }

    else
    {
      v9 = 1;
    }

    if (qword_27C4370 == v4)
    {
      v9 = v8;
    }

    if (v5)
    {
      v10 = v9;
    }

    else
    {
      v10 = v8;
    }

    if (v6)
    {
      v10 += sub_1234458(&v16, &qword_27C4380);
    }
  }

  else
  {
    return 0;
  }

  return v10;
}

void sub_1232CA0(const void **result, unint64_t a2)
{
  v2 = (result[1] - *result) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      result[1] = *result + 8 * a2;
    }
  }

  else
  {
    sub_1232CD0(result, a2 - v2);
  }
}

void sub_1232CD0(const void **a1, unint64_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      v11 = 8 * a2;
      v12 = &v5[a2];
      do
      {
        *v5++ = sub_12331FC();
        v11 -= 8;
      }

      while (v11);
      v5 = v12;
    }

    a1[1] = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 3);
    if (v7 >> 61)
    {
      sub_1794();
    }

    v8 = v6 >> 3;
    v9 = v4 - *a1;
    if (v9 >> 2 > v7)
    {
      v7 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    if (v10)
    {
      sub_122422C(a1, v10);
    }

    v13 = 8 * v8;
    v14 = (8 * v8);
    v15 = 8 * a2;
    v16 = (8 * v8 + 8 * a2);
    do
    {
      *v14++ = sub_12331FC();
      v15 -= 8;
    }

    while (v15);
    v17 = a1[1] - *a1;
    v18 = (v13 - v17);
    memcpy((v13 - v17), *a1, v17);
    v19 = *a1;
    *a1 = v18;
    a1[1] = v16;
    a1[2] = 0;
    if (v19)
    {

      operator delete(v19);
    }
  }
}

void sub_1232E30(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_1808();
}

uint64_t sub_1232F28(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  if ((atomic_load_explicit(&qword_2734C08, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_2734C08))
    {
      nullsub_1();
      __cxa_guard_release(&qword_2734C08);
    }
  }

  if (v2 <= 1)
  {
    if (!v2)
    {
      return sub_122F62C(&unk_2734C00, a1);
    }

    if (v2 == 1)
    {
      return sub_122F6E0(&unk_2734C00, a1);
    }

LABEL_9:
    LODWORD(v5.__locale_) = 2;
    v6 = off_26C7490;
    v7 = "/Library/Caches/com.apple.xbs/Sources/MapsOfflineServices/submodules/maps-lang-cpp/src/lib/locale.cpp";
    v8 = "createFromString";
    v9 = 137;
    sub_D7B0(&v10);
    std::ostream::operator<<();
    sub_4A5C(v11, " localeString: ", 16);
    std::ostream::write();
    sub_4A5C(v11, "", 1);
    sub_12229BC(&v5);
    return sub_122F62C(&unk_2734C00, a1);
  }

  if (v2 != 2)
  {
    if (v2 == 3)
    {
      return sub_122F9B0(&unk_2734C00, a1);
    }

    goto LABEL_9;
  }

  return sub_122F8FC(&unk_2734C00, a1);
}

uint64_t sub_12330DC(unsigned int a1)
{
  if ((atomic_load_explicit(&qword_2734C08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2734C08))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2734C08);
  }

  return sub_122F794(&unk_2734C00, a1);
}

uint64_t sub_123316C(unsigned int a1)
{
  if ((atomic_load_explicit(&qword_2734C08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2734C08))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2734C08);
  }

  return sub_122F848(&unk_2734C00, a1);
}

uint64_t sub_12331FC()
{
  if ((atomic_load_explicit(&qword_27C4398, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27C4398))
  {
    v1[0] = xmmword_2322220;
    memset(&v1[1], 0, 32);
    qword_27C4390 = sub_1232F28(v1, 0);
    __cxa_guard_release(&qword_27C4398);
  }

  return qword_27C4390;
}

uint64_t sub_12332C0(uint64_t a1)
{
  result = *(a1 + 140);
  if (result == 144)
  {
    result = sub_1233300(a1);
    *(a1 + 140) = result;
  }

  return result;
}

uint64_t sub_1233300(int *a1)
{
  v2 = *(a1 + 1);
  v3 = *a1;
  v4 = a1[1];
  v5 = &dword_22B4410;
  v6 = 3624;
  while (1)
  {
    v7 = *(v5 - 4);
    if (v7 == 50331648 || v7 == v3)
    {
      v9 = *(v5 - 1);
      if (v9 == 0x700000000000000 || v9 == v2)
      {
        v11 = *(v5 - 3);
        v12 = v11 == 50331648 || v11 == v4;
        if (v12 && (v9 != 0x700000000000000 || v11 != 50331648 || *v5 == 1))
        {
          result = *v5;
          if (result != 11 && result != 121 && result != 93)
          {
            break;
          }
        }
      }
    }

    v5 += 6;
    v6 -= 24;
    if (!v6)
    {
      if ((atomic_load_explicit(&qword_27C43A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27C43A8))
      {
        sub_12338F0();
      }

      v15 = a1;
      v19[0] = &v15;
      v19[1] = v16;
      v20 = 2;
      v21 = 1;
      v16[0] = dword_27684F8;
      v16[1] = &unk_2768738;
      v17 = 3;
      v18 = 144;
      v14 = (*(*qword_27C43A0 + 40))(qword_27C43A0, v19, v16);
      if (v14 > 0x8F)
      {
        return 0;
      }

      else
      {
        return dword_27684F8[v14];
      }
    }
  }

  return result;
}

uint64_t sub_1233494(uint64_t a1)
{
  result = *(a1 + 144);
  if (result == 63)
  {
    result = sub_12334D4(a1);
    *(a1 + 144) = result;
  }

  return result;
}

uint64_t sub_12334D4(uint64_t a1)
{
  v2 = &qword_22B3950;
  v3 = 1512;
  do
  {
    v4 = *(v2 - 2);
    if (v4 == 50331648 || v4 == *a1)
    {
      v6 = *v2;
      if (*v2 == 0x700000000000000 || v6 == *(a1 + 8))
      {
        v8 = v6 == 0x700000000000000;
        v9 = *(v2 - 1);
        if (v9 != 50331648)
        {
          v8 = v9 != *(a1 + 4);
        }

        if (!v8)
        {
          return *(v2 + 2);
        }
      }
    }

    v2 += 3;
    v3 -= 24;
  }

  while (v3);
  if ((atomic_load_explicit(&qword_27C43B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27C43B8))
  {
    sub_12338F0();
  }

  v12 = a1;
  v16[0] = &v12;
  v16[1] = v13;
  v17 = 2;
  v18 = 1;
  v13[0] = dword_2322308;
  v13[1] = "N4maps4lang12VERSION_3_126LoggerE";
  v14 = 4;
  v15 = 63;
  v10 = (*(*qword_27C43B0 + 40))(qword_27C43B0, v16, v13);
  if (v10 > 0x3E)
  {
    return 0;
  }

  else
  {
    return dword_2322308[v10 & 0x3F];
  }
}

uint64_t sub_123364C(uint64_t a1)
{
  result = *(a1 + 152);
  if (!result)
  {
    v3 = sub_1226EA4();
    result = sub_122FBB0(v3, a1);
    *(a1 + 152) = result;
  }

  return result;
}

uint64_t sub_1233688(uint64_t a1)
{
  if (*(a1 + 168))
  {
    return *(a1 + 168) == 2;
  }

  v3 = sub_12336DC();
  result = sub_122FDCC(v3, a1);
  if (result)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 168) = v4;
  return result;
}

void *sub_12336DC()
{
  if ((atomic_load_explicit(&qword_27684F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27684F0))
  {
    nullsub_1();
    __cxa_guard_release(&qword_27684F0);
  }

  return &unk_27684E8;
}

uint64_t sub_1233754(uint64_t a1)
{
  if (*(a1 + 169))
  {
    return *(a1 + 169) == 2;
  }

  v3 = sub_12336DC();
  result = sub_122FE4C(v3, (a1 + 8));
  if (result)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 169) = v4;
  return result;
}

uint64_t sub_12337A8(uint64_t a1)
{
  if (*(a1 + 170))
  {
    return *(a1 + 170) == 2;
  }

  v3 = sub_12336DC();
  result = sub_122FECC(v3, (a1 + 4));
  if (result)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 170) = v4;
  return result;
}

BOOL sub_12337FC(uint64_t a1)
{
  if (*(a1 + 171))
  {
    return *(a1 + 171) == 2;
  }

  v5 = v1;
  v6 = v2;
  sub_1233A3C(a1, (a1 + 171), &v4);
  return v4;
}

uint64_t sub_1233840(uint64_t a1)
{
  if (*(a1 + 172))
  {
    return *(a1 + 172) == 2;
  }

  v5 = v1;
  v6 = v2;
  sub_1233B00(a1, (a1 + 172), &v4);
  return v4;
}

uint64_t sub_1233884(uint64_t a1)
{
  if (*(a1 + 173))
  {
    v1 = *(a1 + 173) == 2;
  }

  else
  {
    v4 = 1;
    if (*a1 == 6581877)
    {
      v1 = 0;
    }

    else
    {
      v1 = sub_1233840(a1);
      if (v1)
      {
        v4 = 2;
      }

      else
      {
        v4 = 1;
      }
    }

    *(a1 + 173) = v4;
  }

  return v1 & 1;
}

void sub_12339E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  v16 = *(v14 - 24);
  if (v16)
  {
    sub_1220A18(v16);
  }

  if (a14)
  {
    sub_1220A18(a14);
  }

  if (a12)
  {
    sub_1220A18(a12);
  }

  if (a10)
  {
    sub_1220A18(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1233A3C(uint64_t a1, char *a2, BOOL *a3)
{
  result = sub_12337A8(a1);
  if (result)
  {
    v7 = 2;
    v8 = 1;
  }

  else
  {
    v9 = *(a1 + 4);
    v10 = word_230F54C[v9 & 0x7F];
    v11 = word_230F54C[(v9 + 1) & 0x7F];
    if (v10 == v11)
    {
      v8 = 0;
LABEL_8:
      v7 = 1;
    }

    else
    {
      v12 = v11;
      v13 = (&unk_230F4C0 + 4 * v10);
      v14 = *(a1 + 4);
      v15 = 4 * v12 - 4 * v10;
      while (1)
      {
        v8 = v14 == *v13;
        if (v14 == *v13)
        {
          break;
        }

        ++v13;
        v15 -= 4;
        if (!v15)
        {
          goto LABEL_8;
        }
      }

      v7 = 2;
    }
  }

  *a3 = v8;
  *a2 = v7;
  return result;
}

BOOL sub_1233B00(uint64_t a1, char *a2, _BYTE *a3)
{
  v6 = sub_1233688(a1);
  if (*(a1 + 8) == 0x700000000000000)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1233754(a1);
  }

  result = 1;
  if (*(a1 + 4) != 50331648)
  {
    result = sub_12337FC(a1);
  }

  *a3 = v6 & v7 & result;
  if (v6 & v7 & result)
  {
    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

  *a2 = v9;
  return result;
}

uint64_t sub_1233B9C(uint64_t a1, int *a2)
{
  if ((atomic_load_explicit(&qword_2768740, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768740))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768740);
  }

  v4 = sub_122F2A8(&unk_2768738, a2);
  v5 = *v4;
  *a1 = *v4;
  if (v5 != 50331648 && !*(a1 + 8))
  {
    v7 = (*&v5 & 0xFFFFFFLL | ((HIBYTE(v5) + 253) << 56)) + 0x700000000000000;
    sub_1233C7C(a1, &v7);
  }

  return a1;
}

uint64_t sub_1233C7C(uint64_t a1, unsigned __int8 *a2)
{
  if ((atomic_load_explicit(&qword_2768750, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768750))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768750);
  }

  v4 = sub_1230980(&unk_2768748, a2);
  *(a1 + 8) = v4;
  if (v4 != &unk_26C74F0 && *a1 == 50331648)
  {
    v5 = 7 - HIBYTE(*v4);
    if (v5 >= 3)
    {
      LODWORD(v5) = 3;
    }

    v7 = (*v4 & 0xFFFFFF | 0x3000000) - (v5 << 24);
    sub_1233B9C(a1, &v7);
  }

  return a1;
}

BOOL sub_1233D6C(_BYTE *a1)
{
  v1 = word_230EC20[*a1 & 0x7F];
  v2 = word_230EC20[(*a1 + 1) & 0x7F];
  if (v1 == v2)
  {
    return 0;
  }

  v4 = v1;
  v5 = v2;
  v6 = (&unk_23077D0 + 4 * v1);
  v7 = *a1;
  v8 = 4 * v5 - 4 * v4 - 4;
  do
  {
    v9 = *v6++;
    result = v7 == v9;
    v10 = v7 == v9 || v8 == 0;
    v8 -= 4;
  }

  while (!v10);
  return result;
}

BOOL sub_1233DDC(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 == 0x700000000000000)
  {
    return 1;
  }

  v3 = word_230F3C0[*a1 & 0x7F];
  v4 = word_230F3C0[(v1 + 1) & 0x7F];
  if (v3 == v4)
  {
    return 0;
  }

  v5 = v3;
  v6 = &aAdlm[8 * v3];
  v7 = 8 * v4 - 8 * v5 - 8;
  do
  {
    v8 = *v6;
    v6 += 8;
    result = v1 == v8;
    v9 = v1 == v8 || v7 == 0;
    v7 -= 8;
  }

  while (!v9);
  return result;
}

BOOL sub_1233E5C(_DWORD *a1)
{
  if (*a1 == 50331648)
  {
    return 1;
  }

  v2 = sub_21F24F4(a1, 0);
  v3 = (&unk_22BC828 + 2 * (v2 & 0x7F));
  v4 = *v3;
  v5 = v3[1];
  if (v4 == v5)
  {
    return v2 == 16797249;
  }

  v6 = 5 * v4;
  v7 = 40 * v5 - 8 * v6;
  v8 = (&unk_26C0CE8 + 8 * v6 + 4);
  while (1)
  {
    v9 = *v8;
    v8 += 10;
    if (v9 == v2)
    {
      break;
    }

    v7 -= 40;
    if (!v7)
    {
      return v2 == 16797249;
    }
  }

  return 1;
}

uint64_t sub_1233F08(unsigned int *a1)
{
  result = *a1;
  if (!BYTE3(result))
  {
    v2 = word_230FCB4[result & 0x7F];
    v3 = word_230FCB4[(result + 1) & 0x7F];
    if (v2 != v3)
    {
      v4 = v2;
      v5 = (&unk_230F64C + 8 * v2 + 4);
      v6 = 8 * v3 - 8 * v4;
      while (result != *(v5 - 1))
      {
        v5 += 2;
        v6 -= 8;
        if (!v6)
        {
          return result;
        }
      }

      return *v5;
    }
  }

  return result;
}

uint64_t sub_1233F7C(unsigned int *a1)
{
  result = *a1;
  if (!BYTE3(result))
  {
    v2 = word_231107C[result & 0x7F];
    v3 = word_231107C[(result + 1) & 0x7F];
    if (v2 != v3)
    {
      v4 = v2;
      v5 = (&unk_230FDB4 + 8 * v2 + 4);
      v6 = 8 * v3 - 8 * v4;
      while (result != *(v5 - 1))
      {
        v5 += 2;
        v6 -= 8;
        if (!v6)
        {
          return result;
        }
      }

      return *v5;
    }
  }

  return result;
}

char *sub_1234008(int *a1)
{
  if ((atomic_load_explicit(&qword_2768740, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768740))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768740);
  }

  return sub_122F328(&unk_2768738, a1);
}

void *sub_12340BC(unsigned __int8 *a1)
{
  if ((atomic_load_explicit(&qword_2768750, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768750))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768750);
  }

  return sub_1230980(&unk_2768748, a1);
}

void *sub_12341B8(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  if (a2 >= 2)
  {
    v7 = &std::cerr;
  }

  else
  {
    v7 = &std::cout;
  }

  v8 = sub_4A5C(v7, *a7, a7[1]);
  v10 = 10;
  return sub_4A5C(v8, &v10, 1);
}

uint64_t sub_1234220(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_2734C08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2734C08))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2734C08);
  }

  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = strlen(v2);
    if (v3 >= 0x1F)
    {
      v4 = 31;
    }

    else
    {
      v4 = v3;
    }

    sub_1224458(v2, v4, v6);
    return sub_122F62C(&unk_2734C00, v6);
  }

  else
  {
    sub_123432C(v6, "und");
    return sub_122F62C(&unk_2734C00, v6);
  }
}

uint64_t sub_123432C(uint64_t a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x1F)
  {
    v5 = 31;
  }

  else
  {
    v5 = v4;
  }

  sub_1224458(__s, v5, a1);
  return a1;
}

uint64_t *sub_1234374(uint64_t *a1)
{
  if ((atomic_load_explicit(&qword_2734C18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2734C18))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2734C18);
  }

  return sub_12306FC(&unk_2734C10, a1);
}

BOOL sub_123441C(uint64_t **a1, uint64_t **a2)
{
  v2 = **a1;
  v3 = **a2;
  return !(v2 | v3) && (*a1)[1] == (*a2)[1] || (v3 & v2) != 0;
}

BOOL sub_1234458(uint64_t **a1, uint64_t **a2)
{
  v2 = **a1;
  v3 = **a2;
  return (v2 | v3 || (*a1)[1] != (*a2)[1]) && (v3 & v2) == 0;
}

__int128 *sub_12344FC(__int128 **a1, void *a2)
{
  v3 = (*a1)[3];
  v5 = **a1;
  v4 = (*a1)[1];
  v8[2] = (*a1)[2];
  v8[3] = v3;
  v8[0] = v5;
  v8[1] = v4;
  v6 = a2[1];
  *&v8[0] = *a2;
  BYTE8(v8[0]) = v6;
  result = sub_122F0F4(&unk_2768758, v8);
  *a1 = result;
  return result;
}

__int128 *sub_1234558(__int128 **a1, uint64_t *a2)
{
  v3 = (*a1)[3];
  v5 = **a1;
  v4 = (*a1)[1];
  v10 = (*a1)[2];
  v11 = v3;
  v8 = v5;
  v9 = v4;
  v6 = a2[1];
  v12 = *a2;
  v13 = v6;
  if ((v6 & 1) != 0 && sub_1234098(&v12))
  {
    *&v9 = v12;
    BYTE8(v9) = v13;
  }

  else if (BYTE8(v9) == 1)
  {
    BYTE8(v9) = 0;
  }

  result = sub_122F0F4(&unk_2768758, &v8);
  *a1 = result;
  return result;
}

__int128 *sub_12345E4(__int128 **a1, uint64_t *a2)
{
  v3 = (*a1)[3];
  v5 = **a1;
  v4 = (*a1)[1];
  v9 = (*a1)[2];
  v10 = v3;
  v8[0] = v5;
  v8[1] = v4;
  v6 = a2[1];
  v11 = *a2;
  v12 = v6;
  if ((v6 & 1) != 0 && sub_1234098(&v11))
  {
    *&v9 = v11;
    BYTE8(v9) = v12;
  }

  else if (BYTE8(v9) == 1)
  {
    BYTE8(v9) = 0;
  }

  result = sub_122F0F4(&unk_2768758, v8);
  *a1 = result;
  return result;
}

__int128 *sub_1234670(__int128 **a1, uint64_t *a2)
{
  v3 = (*a1)[3];
  v5 = **a1;
  v4 = (*a1)[1];
  v8[2] = (*a1)[2];
  v9 = v3;
  v8[0] = v5;
  v8[1] = v4;
  v6 = a2[1];
  v10 = *a2;
  v11 = v6;
  if ((v6 & 1) != 0 && !sub_1234404(&v10))
  {
    *&v9 = v10;
    BYTE8(v9) = v11;
  }

  else if (BYTE8(v9) == 1)
  {
    BYTE8(v9) = 0;
  }

  result = sub_122F0F4(&unk_2768758, v8);
  *a1 = result;
  return result;
}

uint64_t sub_12346FC()
{
  result = qword_27C43C0;
  if (!qword_27C43C0)
  {
    v1.__m_.__sig = 850045863;
    memset(v1.__m_.__opaque, 0, sizeof(v1.__m_.__opaque));
    std::mutex::lock(&v1);
    if (!qword_27C43C0)
    {
      sub_1221F0C();
    }

    std::mutex::unlock(&v1);
    std::mutex::~mutex(&v1);
    return qword_27C43C0;
  }

  return result;
}

void sub_12347F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, std::mutex *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14)
{
  if (a13)
  {
    sub_1220A18(a13);
  }

  if (a11)
  {
    sub_1220A18(a11);
  }

  std::mutex::unlock(&a14);
  std::mutex::~mutex(&a14);
  _Unwind_Resume(a1);
}

uint64_t (***sub_123483C(unsigned int **a1))()
{
  v2 = sub_3F80(*a1);
  result = 0;
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        v13 = sub_5AAC4(*a1);
        result = 0;
        if (v13 > 1)
        {
          if (v13 == 2)
          {
            v28 = sub_4566A4(*a1);
            result = 0;
            if (v28 > 1)
            {
              if (v28 == 2)
              {
                v6 = sub_456D7C(*a1);
                v7 = &off_26CAFF0;
                v8 = &off_26CB070;
              }

              else
              {
                if (v28 != 3)
                {
                  return result;
                }

                v6 = sub_456D7C(*a1);
                v7 = &off_26CB0F0;
                v8 = &off_26CB170;
              }
            }

            else if (v28)
            {
              if (v28 != 1)
              {
                return result;
              }

              v6 = sub_456D7C(*a1);
              v7 = &off_26CAEF0;
              v8 = &off_26CAF70;
            }

            else
            {
              v6 = sub_456D7C(*a1);
              v7 = &off_26CADF0;
              v8 = &off_26CAE70;
            }
          }

          else
          {
            if (v13 != 3)
            {
              return result;
            }

            v20 = sub_4566A4(*a1);
            result = 0;
            if (v20 > 1)
            {
              if (v20 == 2)
              {
                v6 = sub_456D7C(*a1);
                v7 = &off_26CB3F0;
                v8 = &off_26CB470;
              }

              else
              {
                if (v20 != 3)
                {
                  return result;
                }

                v6 = sub_456D7C(*a1);
                v7 = &off_26CB4F0;
                v8 = &off_26CB570;
              }
            }

            else if (v20)
            {
              if (v20 != 1)
              {
                return result;
              }

              v6 = sub_456D7C(*a1);
              v7 = &off_26CB2F0;
              v8 = &off_26CB370;
            }

            else
            {
              v6 = sub_456D7C(*a1);
              v7 = &off_26CB1F0;
              v8 = &off_26CB270;
            }
          }
        }

        else if (v13)
        {
          if (v13 != 1)
          {
            return result;
          }

          v14 = sub_4566A4(*a1);
          result = 0;
          if (v14 > 1)
          {
            if (v14 == 2)
            {
              v6 = sub_456D7C(*a1);
              v7 = &off_26CABF0;
              v8 = &off_26CAC70;
            }

            else
            {
              if (v14 != 3)
              {
                return result;
              }

              v6 = sub_456D7C(*a1);
              v7 = &off_26CACF0;
              v8 = &off_26CAD70;
            }
          }

          else if (v14)
          {
            if (v14 != 1)
            {
              return result;
            }

            v6 = sub_456D7C(*a1);
            v7 = &off_26CAAF0;
            v8 = &off_26CAB70;
          }

          else
          {
            v6 = sub_456D7C(*a1);
            v7 = &off_26CA9F0;
            v8 = &off_26CAA70;
          }
        }

        else
        {
          v26 = sub_4566A4(*a1);
          result = 0;
          if (v26 > 1)
          {
            if (v26 == 2)
            {
              v6 = sub_456D7C(*a1);
              v7 = &off_26CA7F0;
              v8 = &off_26CA870;
            }

            else
            {
              if (v26 != 3)
              {
                return result;
              }

              v6 = sub_456D7C(*a1);
              v7 = &off_26CA8F0;
              v8 = &off_26CA970;
            }
          }

          else if (v26)
          {
            if (v26 != 1)
            {
              return result;
            }

            v6 = sub_456D7C(*a1);
            v7 = &off_26CA6F0;
            v8 = &off_26CA770;
          }

          else
          {
            v6 = sub_456D7C(*a1);
            v7 = &off_26CA5F0;
            v8 = &off_26CA670;
          }
        }

        break;
      case 4:
        v17 = sub_5AAC4(*a1);
        result = 0;
        if (v17 > 1)
        {
          if (v17 == 2)
          {
            v36 = sub_4566A4(*a1);
            result = 0;
            if (v36 > 1)
            {
              if (v36 == 2)
              {
                v6 = sub_456D7C(*a1);
                v7 = &off_26CBFF0;
                v8 = &off_26CC070;
              }

              else
              {
                if (v36 != 3)
                {
                  return result;
                }

                v6 = sub_456D7C(*a1);
                v7 = &off_26CC0F0;
                v8 = &off_26CC170;
              }
            }

            else if (v36)
            {
              if (v36 != 1)
              {
                return result;
              }

              v6 = sub_456D7C(*a1);
              v7 = &off_26CBEF0;
              v8 = &off_26CBF70;
            }

            else
            {
              v6 = sub_456D7C(*a1);
              v7 = &off_26CBDF0;
              v8 = &off_26CBE70;
            }
          }

          else
          {
            if (v17 != 3)
            {
              return result;
            }

            v24 = sub_4566A4(*a1);
            result = 0;
            if (v24 > 1)
            {
              if (v24 == 2)
              {
                v6 = sub_456D7C(*a1);
                v7 = &off_26CC3F0;
                v8 = &off_26CC470;
              }

              else
              {
                if (v24 != 3)
                {
                  return result;
                }

                v6 = sub_456D7C(*a1);
                v7 = &off_26CC4F0;
                v8 = &off_26CC570;
              }
            }

            else if (v24)
            {
              if (v24 != 1)
              {
                return result;
              }

              v6 = sub_456D7C(*a1);
              v7 = &off_26CC2F0;
              v8 = &off_26CC370;
            }

            else
            {
              v6 = sub_456D7C(*a1);
              v7 = &off_26CC1F0;
              v8 = &off_26CC270;
            }
          }
        }

        else if (v17)
        {
          if (v17 != 1)
          {
            return result;
          }

          v18 = sub_4566A4(*a1);
          result = 0;
          if (v18 > 1)
          {
            if (v18 == 2)
            {
              v6 = sub_456D7C(*a1);
              v7 = &off_26CBBF0;
              v8 = &off_26CBC70;
            }

            else
            {
              if (v18 != 3)
              {
                return result;
              }

              v6 = sub_456D7C(*a1);
              v7 = &off_26CBCF0;
              v8 = &off_26CBD70;
            }
          }

          else if (v18)
          {
            if (v18 != 1)
            {
              return result;
            }

            v6 = sub_456D7C(*a1);
            v7 = &off_26CBAF0;
            v8 = &off_26CBB70;
          }

          else
          {
            v6 = sub_456D7C(*a1);
            v7 = &off_26CB9F0;
            v8 = &off_26CBA70;
          }
        }

        else
        {
          v34 = sub_4566A4(*a1);
          result = 0;
          if (v34 > 1)
          {
            if (v34 == 2)
            {
              v6 = sub_456D7C(*a1);
              v7 = &off_26CB7F0;
              v8 = &off_26CB870;
            }

            else
            {
              if (v34 != 3)
              {
                return result;
              }

              v6 = sub_456D7C(*a1);
              v7 = &off_26CB8F0;
              v8 = &off_26CB970;
            }
          }

          else if (v34)
          {
            if (v34 != 1)
            {
              return result;
            }

            v6 = sub_456D7C(*a1);
            v7 = &off_26CB6F0;
            v8 = &off_26CB770;
          }

          else
          {
            v6 = sub_456D7C(*a1);
            v7 = &off_26CB5F0;
            v8 = &off_26CB670;
          }
        }

        break;
      case 5:
        v9 = sub_5AAC4(*a1);
        result = 0;
        if (v9 > 1)
        {
          if (v9 == 2)
          {
            v32 = sub_4566A4(*a1);
            result = 0;
            if (v32 > 1)
            {
              if (v32 == 2)
              {
                v6 = sub_456D7C(*a1);
                v7 = &off_26CCFF0;
                v8 = &off_26CD070;
              }

              else
              {
                if (v32 != 3)
                {
                  return result;
                }

                v6 = sub_456D7C(*a1);
                v7 = &off_26CD0F0;
                v8 = &off_26CD170;
              }
            }

            else if (v32)
            {
              if (v32 != 1)
              {
                return result;
              }

              v6 = sub_456D7C(*a1);
              v7 = &off_26CCEF0;
              v8 = &off_26CCF70;
            }

            else
            {
              v6 = sub_456D7C(*a1);
              v7 = &off_26CCDF0;
              v8 = &off_26CCE70;
            }
          }

          else
          {
            if (v9 != 3)
            {
              return result;
            }

            v22 = sub_4566A4(*a1);
            result = 0;
            if (v22 > 1)
            {
              if (v22 == 2)
              {
                v6 = sub_456D7C(*a1);
                v7 = &off_26CD3F0;
                v8 = &off_26CD470;
              }

              else
              {
                if (v22 != 3)
                {
                  return result;
                }

                v6 = sub_456D7C(*a1);
                v7 = &off_26CD4F0;
                v8 = &off_26CD570;
              }
            }

            else if (v22)
            {
              if (v22 != 1)
              {
                return result;
              }

              v6 = sub_456D7C(*a1);
              v7 = &off_26CD2F0;
              v8 = &off_26CD370;
            }

            else
            {
              v6 = sub_456D7C(*a1);
              v7 = &off_26CD1F0;
              v8 = &off_26CD270;
            }
          }
        }

        else if (v9)
        {
          if (v9 != 1)
          {
            return result;
          }

          v10 = sub_4566A4(*a1);
          result = 0;
          if (v10 > 1)
          {
            if (v10 == 2)
            {
              v6 = sub_456D7C(*a1);
              v7 = &off_26CCBF0;
              v8 = &off_26CCC70;
            }

            else
            {
              if (v10 != 3)
              {
                return result;
              }

              v6 = sub_456D7C(*a1);
              v7 = &off_26CCCF0;
              v8 = &off_26CCD70;
            }
          }

          else if (v10)
          {
            if (v10 != 1)
            {
              return result;
            }

            v6 = sub_456D7C(*a1);
            v7 = &off_26CCAF0;
            v8 = &off_26CCB70;
          }

          else
          {
            v6 = sub_456D7C(*a1);
            v7 = &off_26CC9F0;
            v8 = &off_26CCA70;
          }
        }

        else
        {
          v30 = sub_4566A4(*a1);
          result = 0;
          if (v30 > 1)
          {
            if (v30 == 2)
            {
              v6 = sub_456D7C(*a1);
              v7 = &off_26CC7F0;
              v8 = &off_26CC870;
            }

            else
            {
              if (v30 != 3)
              {
                return result;
              }

              v6 = sub_456D7C(*a1);
              v7 = &off_26CC8F0;
              v8 = &off_26CC970;
            }
          }

          else if (v30)
          {
            if (v30 != 1)
            {
              return result;
            }

            v6 = sub_456D7C(*a1);
            v7 = &off_26CC6F0;
            v8 = &off_26CC770;
          }

          else
          {
            v6 = sub_456D7C(*a1);
            v7 = &off_26CC5F0;
            v8 = &off_26CC670;
          }
        }

        break;
      default:
        return result;
    }
  }

  else if (v2)
  {
    if (v2 == 1)
    {
      v15 = sub_5AAC4(*a1);
      result = 0;
      if (v15 > 1)
      {
        if (v15 == 2)
        {
          v35 = sub_4566A4(*a1);
          result = 0;
          if (v35 > 1)
          {
            if (v35 == 2)
            {
              v6 = sub_456D7C(*a1);
              v7 = &off_26C8FF0;
              v8 = &off_26C9070;
            }

            else
            {
              if (v35 != 3)
              {
                return result;
              }

              v6 = sub_456D7C(*a1);
              v7 = &off_26C90F0;
              v8 = &off_26C9170;
            }
          }

          else if (v35)
          {
            if (v35 != 1)
            {
              return result;
            }

            v6 = sub_456D7C(*a1);
            v7 = &off_26C8EF0;
            v8 = &off_26C8F70;
          }

          else
          {
            v6 = sub_456D7C(*a1);
            v7 = &off_26C8DF0;
            v8 = &off_26C8E70;
          }
        }

        else
        {
          if (v15 != 3)
          {
            return result;
          }

          v23 = sub_4566A4(*a1);
          result = 0;
          if (v23 > 1)
          {
            if (v23 == 2)
            {
              v6 = sub_456D7C(*a1);
              v7 = &off_26C93F0;
              v8 = &off_26C9470;
            }

            else
            {
              if (v23 != 3)
              {
                return result;
              }

              v6 = sub_456D7C(*a1);
              v7 = &off_26C94F0;
              v8 = &off_26C9570;
            }
          }

          else if (v23)
          {
            if (v23 != 1)
            {
              return result;
            }

            v6 = sub_456D7C(*a1);
            v7 = &off_26C92F0;
            v8 = &off_26C9370;
          }

          else
          {
            v6 = sub_456D7C(*a1);
            v7 = &off_26C91F0;
            v8 = &off_26C9270;
          }
        }
      }

      else if (v15)
      {
        if (v15 != 1)
        {
          return result;
        }

        v16 = sub_4566A4(*a1);
        result = 0;
        if (v16 > 1)
        {
          if (v16 == 2)
          {
            v6 = sub_456D7C(*a1);
            v7 = &off_26C8BF0;
            v8 = &off_26C8C70;
          }

          else
          {
            if (v16 != 3)
            {
              return result;
            }

            v6 = sub_456D7C(*a1);
            v7 = &off_26C8CF0;
            v8 = &off_26C8D70;
          }
        }

        else if (v16)
        {
          if (v16 != 1)
          {
            return result;
          }

          v6 = sub_456D7C(*a1);
          v7 = &off_26C8AF0;
          v8 = &off_26C8B70;
        }

        else
        {
          v6 = sub_456D7C(*a1);
          v7 = &off_26C89F0;
          v8 = &off_26C8A70;
        }
      }

      else
      {
        v33 = sub_4566A4(*a1);
        result = 0;
        if (v33 > 1)
        {
          if (v33 == 2)
          {
            v6 = sub_456D7C(*a1);
            v7 = &off_26C87F0;
            v8 = &off_26C8870;
          }

          else
          {
            if (v33 != 3)
            {
              return result;
            }

            v6 = sub_456D7C(*a1);
            v7 = &off_26C88F0;
            v8 = &off_26C8970;
          }
        }

        else if (v33)
        {
          if (v33 != 1)
          {
            return result;
          }

          v6 = sub_456D7C(*a1);
          v7 = &off_26C86F0;
          v8 = &off_26C8770;
        }

        else
        {
          v6 = sub_456D7C(*a1);
          v7 = &off_26C85F0;
          v8 = &off_26C8670;
        }
      }
    }

    else
    {
      if (v2 != 2)
      {
        return result;
      }

      v4 = sub_5AAC4(*a1);
      result = 0;
      if (v4 > 1)
      {
        if (v4 == 2)
        {
          v31 = sub_4566A4(*a1);
          result = 0;
          if (v31 > 1)
          {
            if (v31 == 2)
            {
              v6 = sub_456D7C(*a1);
              v7 = &off_26C9FF0;
              v8 = &off_26CA070;
            }

            else
            {
              if (v31 != 3)
              {
                return result;
              }

              v6 = sub_456D7C(*a1);
              v7 = &off_26CA0F0;
              v8 = &off_26CA170;
            }
          }

          else if (v31)
          {
            if (v31 != 1)
            {
              return result;
            }

            v6 = sub_456D7C(*a1);
            v7 = &off_26C9EF0;
            v8 = &off_26C9F70;
          }

          else
          {
            v6 = sub_456D7C(*a1);
            v7 = &off_26C9DF0;
            v8 = &off_26C9E70;
          }
        }

        else
        {
          if (v4 != 3)
          {
            return result;
          }

          v21 = sub_4566A4(*a1);
          result = 0;
          if (v21 > 1)
          {
            if (v21 == 2)
            {
              v6 = sub_456D7C(*a1);
              v7 = &off_26CA3F0;
              v8 = &off_26CA470;
            }

            else
            {
              if (v21 != 3)
              {
                return result;
              }

              v6 = sub_456D7C(*a1);
              v7 = &off_26CA4F0;
              v8 = &off_26CA570;
            }
          }

          else if (v21)
          {
            if (v21 != 1)
            {
              return result;
            }

            v6 = sub_456D7C(*a1);
            v7 = &off_26CA2F0;
            v8 = &off_26CA370;
          }

          else
          {
            v6 = sub_456D7C(*a1);
            v7 = &off_26CA1F0;
            v8 = &off_26CA270;
          }
        }
      }

      else if (v4)
      {
        if (v4 != 1)
        {
          return result;
        }

        v5 = sub_4566A4(*a1);
        result = 0;
        if (v5 > 1)
        {
          if (v5 == 2)
          {
            v6 = sub_456D7C(*a1);
            v7 = &off_26C9BF0;
            v8 = &off_26C9C70;
          }

          else
          {
            if (v5 != 3)
            {
              return result;
            }

            v6 = sub_456D7C(*a1);
            v7 = &off_26C9CF0;
            v8 = &off_26C9D70;
          }
        }

        else if (v5)
        {
          if (v5 != 1)
          {
            return result;
          }

          v6 = sub_456D7C(*a1);
          v7 = &off_26C9AF0;
          v8 = &off_26C9B70;
        }

        else
        {
          v6 = sub_456D7C(*a1);
          v7 = &off_26C99F0;
          v8 = &off_26C9A70;
        }
      }

      else
      {
        v29 = sub_4566A4(*a1);
        result = 0;
        if (v29 > 1)
        {
          if (v29 == 2)
          {
            v6 = sub_456D7C(*a1);
            v7 = &off_26C97F0;
            v8 = &off_26C9870;
          }

          else
          {
            if (v29 != 3)
            {
              return result;
            }

            v6 = sub_456D7C(*a1);
            v7 = &off_26C98F0;
            v8 = &off_26C9970;
          }
        }

        else if (v29)
        {
          if (v29 != 1)
          {
            return result;
          }

          v6 = sub_456D7C(*a1);
          v7 = &off_26C96F0;
          v8 = &off_26C9770;
        }

        else
        {
          v6 = sub_456D7C(*a1);
          v7 = &off_26C95F0;
          v8 = &off_26C9670;
        }
      }
    }
  }

  else
  {
    v11 = sub_5AAC4(*a1);
    result = 0;
    if (v11 > 1)
    {
      if (v11 == 2)
      {
        v27 = sub_4566A4(*a1);
        result = 0;
        if (v27 > 1)
        {
          if (v27 == 2)
          {
            v6 = sub_456D7C(*a1);
            v7 = &off_26C7FF0;
            v8 = &off_26C8070;
          }

          else
          {
            if (v27 != 3)
            {
              return result;
            }

            v6 = sub_456D7C(*a1);
            v7 = &off_26C80F0;
            v8 = &off_26C8170;
          }
        }

        else if (v27)
        {
          if (v27 != 1)
          {
            return result;
          }

          v6 = sub_456D7C(*a1);
          v7 = &off_26C7EF0;
          v8 = &off_26C7F70;
        }

        else
        {
          v6 = sub_456D7C(*a1);
          v7 = &off_26C7DF0;
          v8 = &off_26C7E70;
        }
      }

      else
      {
        if (v11 != 3)
        {
          return result;
        }

        v19 = sub_4566A4(*a1);
        result = 0;
        if (v19 > 1)
        {
          if (v19 == 2)
          {
            v6 = sub_456D7C(*a1);
            v7 = &off_26C83F0;
            v8 = &off_26C8470;
          }

          else
          {
            if (v19 != 3)
            {
              return result;
            }

            v6 = sub_456D7C(*a1);
            v7 = &off_26C84F0;
            v8 = &off_26C8570;
          }
        }

        else if (v19)
        {
          if (v19 != 1)
          {
            return result;
          }

          v6 = sub_456D7C(*a1);
          v7 = &off_26C82F0;
          v8 = &off_26C8370;
        }

        else
        {
          v6 = sub_456D7C(*a1);
          v7 = &off_26C81F0;
          v8 = &off_26C8270;
        }
      }
    }

    else if (v11)
    {
      if (v11 != 1)
      {
        return result;
      }

      v12 = sub_4566A4(*a1);
      result = 0;
      if (v12 > 1)
      {
        if (v12 == 2)
        {
          v6 = sub_456D7C(*a1);
          v7 = &off_26C7BF0;
          v8 = &off_26C7C70;
        }

        else
        {
          if (v12 != 3)
          {
            return result;
          }

          v6 = sub_456D7C(*a1);
          v7 = &off_26C7CF0;
          v8 = &off_26C7D70;
        }
      }

      else if (v12)
      {
        if (v12 != 1)
        {
          return result;
        }

        v6 = sub_456D7C(*a1);
        v7 = &off_26C7AF0;
        v8 = &off_26C7B70;
      }

      else
      {
        v6 = sub_456D7C(*a1);
        v7 = &off_26C79F0;
        v8 = &off_26C7A70;
      }
    }

    else
    {
      v25 = sub_4566A4(*a1);
      result = 0;
      if (v25 > 1)
      {
        if (v25 == 2)
        {
          v6 = sub_456D7C(*a1);
          v7 = &off_26C7790;
          v8 = &off_26C7840;
        }

        else
        {
          if (v25 != 3)
          {
            return result;
          }

          v6 = sub_456D7C(*a1);
          v7 = &off_26C78C0;
          v8 = &off_26C7970;
        }
      }

      else if (v25)
      {
        if (v25 != 1)
        {
          return result;
        }

        v6 = sub_456D7C(*a1);
        v7 = &off_26C7660;
        v8 = &off_26C7710;
      }

      else
      {
        v6 = sub_456D7C(*a1);
        v7 = &off_26C7520;
        v8 = &off_26C75E0;
      }
    }
  }

  if (v6)
  {
    return v7;
  }

  else
  {
    return v8;
  }
}

unint64_t sub_123596C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v8);
  sub_1235FAC(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F2B80(v8, __p, 0, &v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v5;
}

unint64_t sub_1235A8C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v10);
  sub_1235FAC(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F2B80(v10, __p, a4, &v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v7;
}

unint64_t sub_1235BB0(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v12);
  sub_1235FAC(a3, &unk_2768760, __p);
  v9 = sub_21F2C04(v12, __p, a4, a5);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v12[0])
  {
    v12[1] = v12[0];
    operator delete(v12[0]);
  }

  return v9;
}

void sub_1235CDC(uint64_t a2@<X1>, uint64_t a3@<X2>, const void **x8_0@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v8);
  sub_1235FAC(a3, &unk_2768760, __p);
  sub_123A474(v8, __p, 0, x8_0);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }
}

void sub_1235DF4(uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, const void **x8_0@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v10);
  sub_1235FAC(a3, &unk_2768760, __p);
  sub_123A474(v10, __p, a4, x8_0);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }
}

uint64_t sub_1235F18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v6[0] = a2;
  v6[1] = a3;
  sub_1239DB8(a3, 0);
  v4 = *(a1 + 16);
  if (v4 == -1)
  {
    sub_5AF20();
  }

  v7 = v6;
  return (off_26C75B0[v4])(&v7, a1);
}

void sub_1235F90(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1235FAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v6[0] = a2;
  v6[1] = a3;
  sub_1239DB8(a3, 0);
  v4 = *(a1 + 16);
  if (v4 == -1)
  {
    sub_5AF20();
  }

  v7 = v6;
  return (off_26C75B0[v4])(&v7, a1);
}

void sub_1236024(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1236040(uint64_t **a1, uint64_t **a2, _DWORD *a3, int *a4, _BYTE *a5, unsigned int a6, unsigned int a7)
{
  v7 = a7;
  v9 = a4;
  v10 = a3;
  v12 = a1;
  if (a4)
  {
    v13 = *a4;
  }

  else
  {
    v13 = 50331648;
  }

  v14 = a2[1];
  v104 = *a2;
  v110 = v13;
  *a5 = a6;
  if (a6 > a7)
  {
LABEL_5:
    *v10 = 1;
    *a5 = 0;
    return v14;
  }

  v108 = v14;
  while (2)
  {
    switch(a6)
    {
      case 1:
        v17 = sub_1236C2C(v12, a2, &v110);
        goto LABEL_204;
      case 2:
        v17 = sub_1236DD0(v12, a2, &v110);
        goto LABEL_204;
      case 3:
        if (!v9)
        {
          goto LABEL_211;
        }

        v17 = sub_1236F58(v12, a2, v9[5]);
        goto LABEL_204;
      case 4:
        if (!v9)
        {
          goto LABEL_211;
        }

        v59 = *(v9 + 1);
        if (!v59 || !*(v59 + 40))
        {
          goto LABEL_211;
        }

        v60 = sub_1234220(v59);
        v17 = sub_1236FB0(v12, a2, v60);
        goto LABEL_204;
      case 5:
        if (v110 == 50331648)
        {
          goto LABEL_211;
        }

        v38 = sub_1237028(&v110);
        if ((v9[4] & 2) == 0)
        {
          goto LABEL_211;
        }

        v39 = a2[1];
        v112 = 0;
        v40 = *v38;
        v100 = v38[1];
        if (*v38 == v100)
        {
          goto LABEL_205;
        }

        v41 = 0.0;
        v42 = v39;
        do
        {
          if ((v40[2] & 2) != 0)
          {
            v43 = *v40;
            v111 = *v40;
            v44 = *a1;
            v45 = a1[1];
            while (v44 != v45)
            {
              if (*(v44[1] + 8) == *(v43 + 8))
              {
                for (i = *a2; i != v39; i += 2)
                {
                  v46 = i[1];
                  if (*v46 != 16803962 || *(v46 + 8) != 0x3000000746E6148 || (v47 = v44[1], *v47 != 16803962) || *(v47 + 8) != 0x3000000736E6148)
                  {
                    if (*v43 == *v46 && *(v43 + 8) == *(v46 + 8))
                    {
                      v112 = i[1];
                      v48 = sub_12374D8(&v111);
                      if (v48 > v41)
                      {
                        v42 = i;
                        v41 = v48;
                        if (v48 >= 1.0)
                        {
                          goto LABEL_206;
                        }
                      }
                    }
                  }

                  v39 = a2[1];
                }

                i = v42;
                v42 = v39;
                if (i != v39)
                {
                  goto LABEL_206;
                }
              }

              v44 += 2;
            }
          }

          v40 += 3;
          i = v42;
        }

        while (v40 != v100);
        goto LABEL_206;
      case 6:
        if (v110 == 50331648)
        {
          goto LABEL_211;
        }

        v72 = sub_1237028(&v110);
        if ((v9[4] & 4) == 0)
        {
          goto LABEL_211;
        }

        v39 = a2[1];
        v112 = 0;
        v73 = *v72;
        v102 = v72[1];
        if (*v72 == v102)
        {
          goto LABEL_205;
        }

        v74 = 0.0;
        v75 = v39;
        do
        {
          if ((v73[2] & 4) != 0)
          {
            v76 = *v73;
            v111 = *v73;
            v77 = *a1;
            v78 = a1[1];
            while (v77 != v78)
            {
              if (*(v77[1] + 8) == *(v76 + 8))
              {
                for (i = *a2; i != v39; i += 2)
                {
                  v79 = i[1];
                  if (*v79 != 16803962 || *(v79 + 8) != 0x3000000746E6148 || (v80 = v77[1], *v80 != 16803962) || *(v80 + 8) != 0x3000000736E6148)
                  {
                    if (*v76 == *v79 && *(v76 + 8) == *(v79 + 8))
                    {
                      v112 = i[1];
                      v81 = sub_12374D8(&v111);
                      if (v81 > v74)
                      {
                        v75 = i;
                        v74 = v81;
                        if (v81 >= 1.0)
                        {
                          goto LABEL_206;
                        }
                      }
                    }
                  }

                  v39 = a2[1];
                }

                i = v75;
                v75 = v39;
                if (i != v39)
                {
                  goto LABEL_206;
                }
              }

              v77 += 2;
            }
          }

          v73 += 3;
          i = v75;
        }

        while (v73 != v102);
        goto LABEL_206;
      case 7:
        if (v110 == 50331648)
        {
          goto LABEL_211;
        }

        v90 = sub_1237028(&v110);
        if ((v9[4] & 8) == 0)
        {
          goto LABEL_211;
        }

        v39 = a2[1];
        v112 = 0;
        v91 = *v90;
        v103 = v90[1];
        if (*v90 == v103)
        {
          goto LABEL_205;
        }

        v92 = 0.0;
        v93 = v39;
        do
        {
          if ((v91[2] & 8) != 0)
          {
            v94 = *v91;
            v111 = *v91;
            v95 = *a1;
            v96 = a1[1];
            while (v95 != v96)
            {
              if (*(v95[1] + 8) == *(v94 + 8))
              {
                for (i = *a2; i != v39; i += 2)
                {
                  v97 = i[1];
                  if (*v97 != 16803962 || *(v97 + 8) != 0x3000000746E6148 || (v98 = v95[1], *v98 != 16803962) || *(v98 + 8) != 0x3000000736E6148)
                  {
                    if (*v94 == *v97 && *(v94 + 8) == *(v97 + 8))
                    {
                      v112 = i[1];
                      v99 = sub_12374D8(&v111);
                      if (v99 > v92)
                      {
                        v93 = i;
                        v92 = v99;
                        if (v99 >= 1.0)
                        {
                          goto LABEL_206;
                        }
                      }
                    }
                  }

                  v39 = a2[1];
                }

                i = v93;
                v93 = v39;
                if (i != v39)
                {
                  goto LABEL_206;
                }
              }

              v95 += 2;
            }
          }

          v91 += 3;
          i = v93;
        }

        while (v91 != v103);
LABEL_206:
        v10 = a3;
        v7 = a7;
        goto LABEL_208;
      case 8:
        if (v110 == 50331648)
        {
          goto LABEL_211;
        }

        v61 = sub_1237028(&v110);
        if ((v9[4] & 1) == 0)
        {
          goto LABEL_211;
        }

        v39 = a2[1];
        v112 = 0;
        v62 = *v61;
        v101 = v61[1];
        if (*v61 == v101)
        {
LABEL_205:
          i = v39;
          goto LABEL_206;
        }

        v63 = 0.0;
        v64 = v39;
        while (2)
        {
          v65 = *(v62 + 4);
          if ((v65 & 0xF) == 0)
          {
            goto LABEL_133;
          }

          v66 = *v62;
          if (v65 == 1 && v62[1] <= 0.5)
          {
            goto LABEL_133;
          }

          v111 = *v62;
          v67 = *a1;
          v68 = a1[1];
LABEL_118:
          if (v67 == v68)
          {
LABEL_133:
            v62 += 3;
            i = v64;
            if (v62 == v101)
            {
              goto LABEL_206;
            }

            continue;
          }

          break;
        }

        if (*(v67[1] + 8) != *(v66 + 8))
        {
          goto LABEL_132;
        }

        for (i = *a2; ; i += 2)
        {
          if (i == v39)
          {
            i = v64;
            v64 = v39;
            if (i != v39)
            {
              goto LABEL_206;
            }

LABEL_132:
            v67 += 2;
            goto LABEL_118;
          }

          v69 = i[1];
          if (*v69 != 16803962 || *(v69 + 8) != 0x3000000746E6148 || (v70 = v67[1], *v70 != 16803962) || *(v70 + 8) != 0x3000000736E6148)
          {
            if (*v66 == *v69 && *(v66 + 8) == *(v69 + 8))
            {
              v112 = i[1];
              v71 = sub_12374D8(&v111);
              if (v71 > v63)
              {
                v64 = i;
                v63 = v71;
                if (v71 >= 1.0)
                {
                  break;
                }
              }
            }
          }

          v39 = a2[1];
        }

        goto LABEL_206;
      case 9:
        v17 = sub_12370B4(v12, a2);
        goto LABEL_204;
      case 10:
        v17 = sub_12372C0(v12, a2);
        goto LABEL_204;
      case 11:
        v17 = sub_1237370(v12, a2);
        goto LABEL_204;
      case 12:
        if (!v9)
        {
          goto LABEL_211;
        }

        v37 = v9[5];
        if ((v37 & 0x80000000) != 0 || v37 >= ((a2[1] - *a2) >> 4))
        {
          goto LABEL_211;
        }

        i = &v104[2 * v37];
        goto LABEL_210;
      case 13:
        if (!v9)
        {
          goto LABEL_211;
        }

        v49 = *(v9 + 1);
        if (!v49 || !*(v49 + 40))
        {
          goto LABEL_211;
        }

        v50 = sub_1234220(v49);
        v17 = sub_1237414(a2, v50, &v110);
LABEL_204:
        i = v17;
        goto LABEL_210;
      case 14:
        if (v110 == 50331648)
        {
          goto LABEL_211;
        }

        v82 = sub_1237028(&v110);
        if ((v9[4] & 2) == 0)
        {
          goto LABEL_211;
        }

        v29 = a2[1];
        v112 = 0;
        v83 = *v82;
        v84 = v82[1];
        if (*v82 == v84)
        {
          goto LABEL_207;
        }

        v85 = 0.0;
        v86 = v29;
        do
        {
          if ((v83[16] & 2) == 0)
          {
            goto LABEL_177;
          }

          v111 = *v83;
          for (i = *a2; i != v29; i += 2)
          {
            v87 = i[1];
            v88 = *v87;
            if (*v87 == 16803962)
            {
              if (*(v87 + 8) == 0x3000000746E6148 || **v83 != 16803962)
              {
                goto LABEL_174;
              }
            }

            else
            {
              if (**v83 != v88)
              {
                goto LABEL_174;
              }

              if (v88 == 16802154)
              {
                v85 = 100.0;
                v86 = i;
                break;
              }
            }

            v112 = i[1];
            v89 = sub_12374D8(&v111);
            if (v89 > v85)
            {
              v86 = i;
              v85 = v89;
              if (v89 >= 1.0)
              {
                goto LABEL_208;
              }
            }

LABEL_174:
            v29 = a2[1];
          }

          i = v86;
          v86 = v29;
          if (i != v29)
          {
            break;
          }

LABEL_177:
          v83 += 24;
          i = v86;
        }

        while (v83 != v84);
LABEL_208:
        v9 = a4;
LABEL_209:
        v14 = v108;
        v12 = a1;
LABEL_210:
        if (i == v14)
        {
LABEL_211:
          LOBYTE(a6) = *a5 + 1;
          *a5 = a6;
          if (v7 < a6)
          {
            goto LABEL_5;
          }

          continue;
        }

        *v10 = *a5 > 9u;
        return i;
      case 15:
        if (v110 == 50331648)
        {
          goto LABEL_211;
        }

        v28 = sub_1237028(&v110);
        if ((v9[4] & 4) == 0)
        {
          goto LABEL_211;
        }

        v29 = a2[1];
        v112 = 0;
        v30 = *v28;
        v31 = v28[1];
        if (*v28 == v31)
        {
          goto LABEL_207;
        }

        v32 = 0.0;
        v33 = v29;
        while (2)
        {
          if ((v30[16] & 4) == 0)
          {
            goto LABEL_50;
          }

          v111 = *v30;
          i = *a2;
LABEL_38:
          if (i == v29)
          {
            goto LABEL_49;
          }

          v34 = i[1];
          v35 = *v34;
          if (*v34 == 16803962)
          {
            if (*(v34 + 8) == 0x3000000746E6148 || **v30 != 16803962)
            {
              goto LABEL_47;
            }
          }

          else
          {
            if (**v30 != v35)
            {
              goto LABEL_47;
            }

            if (v35 == 16802154)
            {
              v32 = 100.0;
              v33 = i;
LABEL_49:
              i = v33;
              v33 = v29;
              if (i != v29)
              {
                goto LABEL_208;
              }

LABEL_50:
              v30 += 24;
              i = v33;
              if (v30 == v31)
              {
                goto LABEL_208;
              }

              continue;
            }
          }

          break;
        }

        v112 = i[1];
        v36 = sub_12374D8(&v111);
        if (v36 > v32)
        {
          v33 = i;
          v32 = v36;
          if (v36 >= 1.0)
          {
            goto LABEL_208;
          }
        }

LABEL_47:
        i += 2;
        v29 = a2[1];
        goto LABEL_38;
      case 16:
        if (v110 == 50331648)
        {
          goto LABEL_211;
        }

        v51 = sub_1237028(&v110);
        if ((v9[4] & 8) == 0)
        {
          goto LABEL_211;
        }

        v29 = a2[1];
        v112 = 0;
        v52 = *v51;
        v53 = v51[1];
        if (*v51 == v53)
        {
LABEL_207:
          i = v29;
          goto LABEL_208;
        }

        v54 = 0.0;
        v55 = v29;
        while (2)
        {
          if ((v52[16] & 8) == 0)
          {
            goto LABEL_104;
          }

          v111 = *v52;
          i = *a2;
LABEL_92:
          if (i == v29)
          {
            goto LABEL_103;
          }

          v56 = i[1];
          v57 = *v56;
          if (*v56 == 16803962)
          {
            if (*(v56 + 8) == 0x3000000746E6148 || **v52 != 16803962)
            {
              goto LABEL_101;
            }
          }

          else
          {
            if (**v52 != v57)
            {
              goto LABEL_101;
            }

            if (v57 == 16802154)
            {
              v54 = 100.0;
              v55 = i;
LABEL_103:
              i = v55;
              v55 = v29;
              if (i != v29)
              {
                goto LABEL_208;
              }

LABEL_104:
              v52 += 24;
              i = v55;
              if (v52 == v53)
              {
                goto LABEL_208;
              }

              continue;
            }
          }

          break;
        }

        v112 = i[1];
        v58 = sub_12374D8(&v111);
        if (v58 > v54)
        {
          v55 = i;
          v54 = v58;
          if (v58 >= 1.0)
          {
            goto LABEL_208;
          }
        }

LABEL_101:
        i += 2;
        v29 = a2[1];
        goto LABEL_92;
      case 17:
        if (v110 == 50331648)
        {
          goto LABEL_211;
        }

        v18 = sub_1237028(&v110);
        if ((v9[4] & 1) == 0)
        {
          goto LABEL_211;
        }

        v19 = a2[1];
        v112 = 0;
        v20 = *v18;
        v21 = v18[1];
        if (*v18 == v21)
        {
          i = v19;
          goto LABEL_214;
        }

        v22 = 0.0;
        v23 = v19;
        while (2)
        {
          v24 = *(v20 + 4);
          if ((v24 & 0xF) == 0 || v24 == 1 && v20[1] <= 0.5)
          {
            goto LABEL_30;
          }

          v111 = *v20;
          i = *a2;
LABEL_18:
          if (i == v19)
          {
            goto LABEL_29;
          }

          v25 = i[1];
          v26 = *v25;
          if (*v25 == 16803962)
          {
            if (*(v25 + 8) == 0x3000000746E6148 || **v20 != 16803962)
            {
              goto LABEL_27;
            }
          }

          else
          {
            if (**v20 != v26)
            {
              goto LABEL_27;
            }

            if (v26 == 16802154)
            {
              v22 = 100.0;
              v23 = i;
LABEL_29:
              i = v23;
              v23 = v19;
              if (i != v19)
              {
                goto LABEL_214;
              }

LABEL_30:
              v20 += 3;
              i = v23;
              if (v20 == v21)
              {
                goto LABEL_214;
              }

              continue;
            }
          }

          break;
        }

        v112 = i[1];
        v27 = sub_12374D8(&v111);
        if (v27 > v22)
        {
          v23 = i;
          v22 = v27;
          if (v27 >= 1.0)
          {
LABEL_214:
            v7 = a7;
            goto LABEL_209;
          }
        }

LABEL_27:
        i += 2;
        v19 = a2[1];
        goto LABEL_18;
      default:
        goto LABEL_211;
    }
  }
}

uint64_t *sub_1236C2C(uint64_t **a1, uint64_t **a2, int *a3)
{
  v3 = a2[1];
  v4 = *a1;
  v19 = a1[1];
  if (*a1 == v19)
  {
    return a2[1];
  }

  v6 = *a2;
  v7 = *a3;
  v8 = 0.0;
  v9 = 0.5;
  v10 = a2[1];
  v11 = 1.0;
  v18 = *a2;
  do
  {
    v20[0] = *v4;
    while (v6 != v3)
    {
      v20[1] = *v6;
      v12 = sub_12374D8(v20);
      if (v7 != 50331648 && *(v6[1] + 4) == *a3)
      {
        v12 = v12 + 0.0011;
      }

      v13 = v4[1];
      if (*v13 == 16803962 && *(v13 + 8) == 0x3000000736E6148 && (v14 = v6[1], *v14 == 16803962) && *(v14 + 8) == 0x3000000746E6148)
      {
        v15 = 0.0;
      }

      else
      {
        v15 = v12 - v8;
      }

      if (v15 > v9)
      {
        v9 = v15;
        v10 = v6;
        if (v15 >= v11)
        {
          return v6;
        }
      }

      v6 += 2;
    }

    v8 = v8 + 0.07000001;
    v11 = 1.0 - v8;
    v4 += 2;
    v6 = v18;
  }

  while (v9 < 1.0 - v8 && v4 != v19);
  return v10;
}

void *sub_1236DD0(uint64_t **a1, void *a2, int *a3)
{
  v4 = *a2;
  v3 = a2[1];
  v5 = *a3;
  v20 = 0;
  v6 = *a1;
  v7 = a1[1];
  if (*a1 == v7)
  {
    return v3;
  }

  v9 = 0.0;
  v10 = 0.5;
  v11 = v3;
  v12 = 1.0;
  while (1)
  {
    v19 = *v6;
    if (v4 != v3)
    {
      break;
    }

LABEL_16:
    v9 = v9 + 0.07000001;
    v12 = 1.0 - v9;
    v6 += 2;
    if (v10 >= 1.0 - v9 || v6 == v7)
    {
      return v11;
    }
  }

  v13 = v4;
  while (1)
  {
    if (*(v13[1] + 8) == 0x30000006E74614CLL)
    {
      v20 = *v13;
      v14 = sub_1237B74(&v19);
      v15 = *(v13[1] + 4);
      if (v5 != 50331648 && v15 == *a3)
      {
        v14 = v14 + 0.0011;
      }

      if (*(v6[1] + 4) == v15)
      {
        v14 = v14 + 0.002;
      }

      v16 = v14 - v9;
      if (v16 > v10)
      {
        v10 = v16;
        v11 = v13;
        if (v16 >= v12)
        {
          return v13;
        }
      }
    }

    v13 += 2;
    if (v13 == v3)
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_1236F58(uint64_t *a1, void *a2, int a3)
{
  if (a3 < 0)
  {
    return a2[1];
  }

  if (((a2[1] - *a2) >> 4) <= a3)
  {
    return a2[1];
  }

  v3 = *a1;
  v4 = a1[1];
  if (*a1 == v4)
  {
    return a2[1];
  }

  result = *a2 + 16 * a3;
  while (*(*(v3 + 8) + 8) != *(*(result + 8) + 8))
  {
    v3 += 16;
    if (v3 == v4)
    {
      return a2[1];
    }
  }

  return result;
}

uint64_t sub_1236FB0(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1 == v4)
  {
    return a2[1];
  }

  v5 = a2[1];
  while (1)
  {
    if (*a2 != v5)
    {
      v6 = *(*(v3 + 8) + 8);
      if (v6 == *(a3 + 8))
      {
        break;
      }
    }

LABEL_9:
    v3 += 16;
    if (v3 == v4)
    {
      return a2[1];
    }
  }

  result = *a2;
  while (1)
  {
    v8 = *(result + 8);
    if (*v8 == *a3 && *(v8 + 8) == v6)
    {
      return result;
    }

    result += 16;
    if (result == v5)
    {
      goto LABEL_9;
    }
  }
}

const void **sub_1237028(int *a1)
{
  if ((atomic_load_explicit(&qword_2734C08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2734C08))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2734C08);
  }

  return sub_122FD18(&unk_2734C00, a1);
}

uint64_t sub_12370B4(uint64_t *a1, uint64_t *a2)
{
  __p = 0;
  v28 = 0;
  v29 = 0;
  sub_12381C8(&__p, 0);
  v5 = *a1;
  v6 = a1[1];
  if (*a1 != v6)
  {
    do
    {
      v7 = sub_12381F8(*(v5 + 8));
      v8 = *v7;
      v9 = v7[1];
      while (v8 != v9)
      {
        v4.n128_u64[0] = v8->n128_u64[1];
        if (v4.n128_f64[0] < 0.25)
        {
          break;
        }

        v10 = v28;
        if (v28 >= v29)
        {
          v12 = (v28 - __p) >> 4;
          v13 = v12 + 1;
          if ((v12 + 1) >> 60)
          {
            sub_1794();
          }

          v14 = v29 - __p;
          if ((v29 - __p) >> 3 > v13)
          {
            v13 = v14 >> 3;
          }

          if (v14 >= 0x7FFFFFFFFFFFFFF0)
          {
            v15 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v15 = v13;
          }

          if (v15)
          {
            sub_122CA60(&__p, v15);
          }

          v16 = (16 * v12);
          *v16 = *v8;
          v11 = (16 * v12 + 16);
          v17 = (16 * v12 - (v28 - __p));
          memcpy(v16 - (v28 - __p), __p, v28 - __p);
          v18 = __p;
          __p = v17;
          v28 = v11;
          v29 = 0;
          if (v18)
          {
            operator delete(v18);
          }
        }

        else
        {
          v4 = *v8;
          *v28 = *v8;
          v11 = v10 + 1;
        }

        v28 = v11;
        ++v8;
      }

      v5 += 16;
    }

    while (v5 != v6);
  }

  v19 = 126 - 2 * __clz((v28 - __p) >> 4);
  if (v28 == __p)
  {
    v20 = 0;
  }

  else
  {
    v20 = v19;
  }

  sub_1238398(__p, v28, &v30, v20, 1, v4);
  if (__p == v28)
  {
    v24 = a2[1];
  }

  else
  {
    v21 = *a2;
    v22 = a2[1];
    v23 = __p;
    while (v21 == v22)
    {
LABEL_29:
      if (++v23 == v28)
      {
        v24 = v22;
        goto LABEL_32;
      }
    }

    v24 = v21;
    while (1)
    {
      v25 = *(v24 + 8);
      if (*v23->n128_u64[0] == *v25 && *(v23->n128_u64[0] + 8) == *(v25 + 8))
      {
        break;
      }

      v24 += 16;
      if (v24 == v22)
      {
        goto LABEL_29;
      }
    }
  }

LABEL_32:
  if (__p)
  {
    v28 = __p;
    operator delete(__p);
  }

  return v24;
}

uint64_t sub_12372C0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  while (1)
  {
    if (v3 == v4)
    {
      return a2[1];
    }

    v5 = *(v3 + 8);
    v6 = sub_12381F8(v5);
    v7 = *v6;
    v8 = v6[1];
    if (*v6 != v8)
    {
      break;
    }

LABEL_14:
    v3 += 16;
  }

  v9 = *(v5 + 8);
  v10 = a2[1];
  while (v9 != *(*v7 + 8) || *a2 == v10)
  {
LABEL_13:
    v7 += 16;
    if (v7 == v8)
    {
      goto LABEL_14;
    }
  }

  result = *a2;
  while (1)
  {
    v13 = *(result + 8);
    if (v9 == *(v13 + 8) && **v7 == *v13)
    {
      return result;
    }

    result += 16;
    if (result == v10)
    {
      goto LABEL_13;
    }
  }
}

uint64_t sub_1237370(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1 == v3)
  {
    return a2[1];
  }

  v4 = *a2;
  v5 = a2[1];
  while (v4 == v5)
  {
LABEL_17:
    v2 += 16;
    if (v2 == v3)
    {
      return v5;
    }
  }

  v6 = *(v2 + 8);
  v7 = *v6;
  result = v4;
  while (1)
  {
    v9 = v7 == 16804725 || v7 == 16803682;
    if (!v9 || ((v10 = **(result + 8), v10 != 16807282) ? (v11 = v10 == 16804725) : (v11 = 1), !v11))
    {
      v12 = *(v6 + 1);
      if (v12 != 0x700000000000000 && v12 == *(*(result + 8) + 8))
      {
        return result;
      }
    }

    result += 16;
    if (result == v5)
    {
      goto LABEL_17;
    }
  }
}

uint64_t *sub_1237414(uint64_t **a1, uint64_t a2, int *a3)
{
  *&v10 = a2;
  *(&v10 + 1) = sub_123364C(a2);
  v8 = 0;
  v9 = 0;
  __p = 0;
  sub_1239538(&__p, &v10, &v11, 1uLL);
  v5 = sub_1236C2C(&__p, a1, a3);
  if (__p)
  {
    v8 = __p;
    operator delete(__p);
  }

  return v5;
}

void sub_12374CC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_4A48(a1);
}

double sub_12374D8(uint64_t *a1)
{
  v14 = 1.0;
  v2 = a1[1];
  if (*v2 == 6581877)
  {
    v11 = sub_123364C(v2);
    sub_1226EA4();
    v12 = sub_122FA64("und", (v11 + 8), (v11 + 4), (v11 + 16));
    v13 = *a1;
    v8 = sub_123364C(*a1);
    v9 = a1[1];
    v7 = v13;
    v6 = v12;
  }

  else
  {
    v3 = *a1;
    v4 = sub_123364C(*a1);
    v5 = a1[1];
    v6 = sub_123364C(v5);
    v7 = v3;
    v8 = v4;
    v9 = v5;
  }

  sub_12375AC(v7, v8, v9, v6, &v14);
  return v14;
}

BOOL sub_12375AC(_BOOL8 result, uint64_t a2, _DWORD *a3, uint64_t a4, double *a5)
{
  if (*a4 == 6581877)
  {
    v10 = 0.0;
LABEL_6:
    *a5 = v10;
    return result;
  }

  v9 = result;
  sub_1237664(result, a2, a3, a4, a5);
  sub_12376BC(v9, a2, a3, a4, a5);
  sub_1237718(v9, a2, a3, a4, a5);
  result = sub_12274C0((a2 + 16), (a4 + 16));
  if (!result)
  {
    v10 = *a5 + -0.01;
    goto LABEL_6;
  }

  return result;
}

double sub_1237664(_DWORD *a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, double *a5)
{
  if (*a2 == *a4)
  {
    if (*a2 == 16807024 && *a1 != *a3)
    {
      result = *a5 + -0.001;
      *a5 = result;
    }
  }

  else
  {
    sub_1237774(a2, a4, a5);
  }

  return result;
}

double sub_12376BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double *a5)
{
  if (*(a2 + 8) == *(a4 + 8))
  {
    if (*(a1 + 8) != *(a3 + 8) && *a2 == 16807024)
    {
      result = *a5 + -0.001;
      *a5 = result;
    }
  }

  else
  {
    sub_1237858(a2, a4, a5);
  }

  return result;
}

double sub_1237718(uint64_t a1, int *a2, uint64_t a3, int *a4, double *a5)
{
  if (a2[1] == a4[1])
  {
    if (*(a1 + 4) != *(a3 + 4) && *a2 == 16807024)
    {
      result = *a5 + -0.001;
      *a5 = result;
    }
  }

  else
  {
    sub_12379C0(a2, a4, a5);
  }

  return result;
}

_BYTE *sub_1237774(_BYTE *result, _DWORD *a2, double *a3)
{
  v3 = word_2312750[*result & 0x7F];
  v4 = word_2312750[(*result + 1) & 0x7F];
  if (v3 == v4)
  {
LABEL_13:
    v12 = 0.8;
  }

  else
  {
    v5 = v3;
    v6 = (&unk_2311280 + 16 * v3 + 8);
    v7 = 16 * v4 - 16 * v5;
    while (1)
    {
      v8 = *(v6 - 2);
      if (v8 == 50331648 || v8 == *result)
      {
        v10 = *(v6 - 1);
        if (v10 == 50331648 || v10 == *a2)
        {
          break;
        }
      }

      v6 += 2;
      v7 -= 16;
      if (!v7)
      {
        goto LABEL_13;
      }
    }

    v12 = *v6;
  }

  *a3 = *a3 - v12;
  return result;
}

uint64_t sub_1237858(uint64_t result, uint64_t a2, double *a3)
{
  v3 = word_2313070[*result & 0x7F];
  v4 = word_2313070[(*result + 1) & 0x7F];
  if (v3 == v4)
  {
LABEL_21:
    v13 = 0.4;
  }

  else
  {
    v5 = &unk_2312850 + 40 * v3 + 16;
    v6 = 40 * v4 - 40 * v3;
    while (1)
    {
      v7 = *(v5 - 4);
      if (v7 == 50331648 || v7 == *result)
      {
        v9 = *(v5 - 1);
        if ((v9 == 0x700000000000000 || v9 == *(result + 8)) && (*v5 == 50331648 || *v5 == *a2))
        {
          v12 = *(v5 + 1);
          if (v12 == 0x700000000000000 || v12 == *(a2 + 8))
          {
            break;
          }
        }
      }

      v5 += 40;
      v6 -= 40;
      if (!v6)
      {
        goto LABEL_21;
      }
    }

    v13 = *(v5 + 2);
  }

  *a3 = *a3 - v13;
  return result;
}

uint64_t sub_12379C0(int *a1, int *a2, double *a3)
{
  v3 = word_2318C38[*a1 & 0x7F];
  v4 = word_2318C38[(*a1 + 1) & 0x7F];
  v5 = *a1;
  if (v3 == v4)
  {
    v6 = *(a1 + 1);
    v7 = a1[1];
    v8 = *(a2 + 1);
    v9 = *a2;
    v10 = a2[1];
LABEL_26:
    v24 = 80;
    v25 = &qword_2318C08;
    while (1)
    {
      result = *(v25 - 8);
      if (result == 50331648 || result == v5)
      {
        result = *(v25 - 3);
        if (result == 0x700000000000000 || result == v6)
        {
          result = *(v25 - 7);
          if (result == 50331648 || result == v7)
          {
            result = *(v25 - 4);
            if (result == 50331648 || result == v9)
            {
              result = *(v25 - 1);
              if (result == 0x700000000000000 || result == v8)
              {
                result = *(v25 - 3);
                if (result == 50331648 || result == v10)
                {
                  break;
                }
              }
            }
          }
        }
      }

      v25 += 5;
      v24 -= 40;
      if (!v24)
      {
        v29 = *a3 + -0.4;
        goto LABEL_50;
      }
    }

    v30 = *v25;
  }

  else
  {
    v11 = v3;
    v12 = v4;
    v6 = *(a1 + 1);
    v7 = a1[1];
    v8 = *(a2 + 1);
    v9 = *a2;
    v10 = a2[1];
    v13 = 5 * v11;
    v14 = &unk_2313170 + 40 * v11 + 16;
    v15 = 40 * v12 - 8 * v13;
    while (1)
    {
      v16 = *(v14 - 4);
      if (v16 == 50331648 || v16 == v5)
      {
        v18 = *(v14 - 1);
        if (v18 == 0x700000000000000 || v18 == v6)
        {
          v20 = *(v14 - 3);
          v21 = v20 == 50331648 || v20 == v7;
          if (v21 && (*v14 == 50331648 || *v14 == v9))
          {
            v22 = *(v14 + 1);
            if (v22 == 0x700000000000000 || v22 == v8)
            {
              result = *(v14 + 1);
              if (result == 50331648 || result == v10)
              {
                break;
              }
            }
          }
        }
      }

      v14 += 40;
      v15 -= 40;
      if (!v15)
      {
        goto LABEL_26;
      }
    }

    v30 = *(v14 + 2);
  }

  v29 = *a3 - v30;
LABEL_50:
  *a3 = v29;
  return result;
}

double sub_1237B74(uint64_t *a1)
{
  v14 = 1.0;
  v2 = a1[1];
  if (*v2 == 6581877)
  {
    v11 = sub_123364C(v2);
    sub_1226EA4();
    v12 = sub_122FA64("und", (v11 + 8), (v11 + 4), (v11 + 16));
    v13 = *a1;
    v8 = sub_123364C(*a1);
    v9 = a1[1];
    v7 = v13;
    v6 = v12;
  }

  else
  {
    v3 = *a1;
    v4 = sub_123364C(*a1);
    v5 = a1[1];
    v6 = sub_123364C(v5);
    v7 = v3;
    v8 = v4;
    v9 = v5;
  }

  sub_1237C48(v7, v8, v9, v6, &v14);
  return v14;
}

BOOL sub_1237C48(_BOOL8 result, uint64_t a2, _DWORD *a3, uint64_t a4, double *a5)
{
  if (*a4 == 6581877)
  {
    v10 = 0.0;
LABEL_6:
    *a5 = v10;
    return result;
  }

  v9 = result;
  sub_1237D00(result, a2, a3, a4, a5);
  sub_1237D58(v9, a2, a3, a4, a5);
  sub_1237DB4(v9, a2, a3, a4, a5);
  result = sub_12274C0((a2 + 16), (a4 + 16));
  if (!result)
  {
    v10 = *a5 + -0.01;
    goto LABEL_6;
  }

  return result;
}

double sub_1237D00(_DWORD *a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, double *a5)
{
  if (*a2 == *a4)
  {
    if (*a2 == 16807024 && *a1 != *a3)
    {
      result = *a5 + -0.001;
      *a5 = result;
    }
  }

  else
  {
    sub_1237E10(a2, a4, a5);
  }

  return result;
}

double sub_1237D58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double *a5)
{
  if (*(a2 + 8) == *(a4 + 8))
  {
    if (*(a1 + 8) != *(a3 + 8) && *a2 == 16807024)
    {
      result = *a5 + -0.001;
      *a5 = result;
    }
  }

  else
  {
    sub_1237EB8(a2, a4, a5);
  }

  return result;
}

double sub_1237DB4(uint64_t a1, int *a2, uint64_t a3, int *a4, double *a5)
{
  if (a2[1] == a4[1])
  {
    if (*(a1 + 4) != *(a3 + 4) && *a2 == 16807024)
    {
      result = *a5 + -0.001;
      *a5 = result;
    }
  }

  else
  {
    sub_1238014(a2, a4, a5);
  }

  return result;
}

_BYTE *sub_1237E10(_BYTE *result, _DWORD *a2, double *a3)
{
  v3 = word_231AE38[*result & 0x7F];
  v4 = word_231AE38[(*result + 1) & 0x7F];
  if (v3 == v4)
  {
LABEL_13:
    v11 = *a3 + -0.99;
  }

  else
  {
    v5 = (&unk_2318D38 + 16 * v3 + 8);
    v6 = 16 * v4 - 16 * v3;
    while (1)
    {
      v7 = *(v5 - 2);
      if (v7 == 50331648 || v7 == *result)
      {
        v9 = *(v5 - 1);
        if (v9 == 50331648 || v9 == *a2)
        {
          break;
        }
      }

      v5 += 2;
      v6 -= 16;
      if (!v6)
      {
        goto LABEL_13;
      }
    }

    v11 = *a3 - *v5;
  }

  *a3 = v11;
  return result;
}

int *sub_1237EB8(int *result, int *a2, double *a3)
{
  v3 = word_231B640[*result & 0x7F];
  v4 = word_231B640[(*result + 1) & 0x7F];
  v5 = *result;
  if (v3 == v4)
  {
    v6 = *(result + 1);
    v7 = *a2;
    v8 = *(a2 + 1);
LABEL_22:
    v20 = 800;
    v21 = &qword_231B340;
    while (1)
    {
      v22 = *(v21 - 8);
      if (v22 == 50331648 || v22 == v5)
      {
        v24 = *(v21 - 3);
        if (v24 == 0x700000000000000 || v24 == v6)
        {
          v26 = *(v21 - 4);
          if (v26 == 50331648 || v26 == v7)
          {
            v28 = *(v21 - 1);
            if (v28 == 0x700000000000000 || v28 == v8)
            {
              break;
            }
          }
        }
      }

      v21 += 5;
      v20 -= 40;
      if (!v20)
      {
        v29 = *a3 + -0.2;
        goto LABEL_42;
      }
    }

    v30 = *v21;
  }

  else
  {
    v9 = v3;
    v10 = v4;
    v6 = *(result + 1);
    v7 = *a2;
    v8 = *(a2 + 1);
    v11 = 5 * v9;
    v12 = &unk_231AF38 + 40 * v9 + 16;
    v13 = 40 * v10 - 8 * v11;
    while (1)
    {
      v14 = *(v12 - 4);
      if (v14 == 50331648 || v14 == v5)
      {
        v16 = *(v12 - 1);
        if ((v16 == 0x700000000000000 || v16 == v6) && (*v12 == 50331648 || *v12 == v7))
        {
          v19 = *(v12 + 1);
          if (v19 == 0x700000000000000 || v19 == v8)
          {
            break;
          }
        }
      }

      v12 += 40;
      v13 -= 40;
      if (!v13)
      {
        goto LABEL_22;
      }
    }

    v30 = *(v12 + 2);
  }

  v29 = *a3 - v30;
LABEL_42:
  *a3 = v29;
  return result;
}

uint64_t sub_1238014(int *a1, int *a2, double *a3)
{
  v3 = word_231C140[*a1 & 0x7F];
  v4 = word_231C140[(*a1 + 1) & 0x7F];
  v5 = *a1;
  if (v3 == v4)
  {
    v6 = *(a1 + 1);
    v7 = a1[1];
    v8 = *(a2 + 1);
    v9 = *a2;
    v10 = a2[1];
LABEL_26:
    v24 = 800;
    v25 = &qword_231BE40;
    while (1)
    {
      result = *(v25 - 8);
      if (result == 50331648 || result == v5)
      {
        result = *(v25 - 3);
        if (result == 0x700000000000000 || result == v6)
        {
          result = *(v25 - 7);
          if (result == 50331648 || result == v7)
          {
            result = *(v25 - 4);
            if (result == 50331648 || result == v9)
            {
              result = *(v25 - 1);
              if (result == 0x700000000000000 || result == v8)
              {
                result = *(v25 - 3);
                if (result == 50331648 || result == v10)
                {
                  break;
                }
              }
            }
          }
        }
      }

      v25 += 5;
      v24 -= 40;
      if (!v24)
      {
        v29 = *a3 + -0.4;
        goto LABEL_50;
      }
    }

    v30 = *v25;
  }

  else
  {
    v11 = v3;
    v12 = v4;
    v6 = *(a1 + 1);
    v7 = a1[1];
    v8 = *(a2 + 1);
    v9 = *a2;
    v10 = a2[1];
    v13 = 5 * v11;
    v14 = &unk_231B740 + 40 * v11 + 16;
    v15 = 40 * v12 - 8 * v13;
    while (1)
    {
      v16 = *(v14 - 4);
      if (v16 == 50331648 || v16 == v5)
      {
        v18 = *(v14 - 1);
        if (v18 == 0x700000000000000 || v18 == v6)
        {
          v20 = *(v14 - 3);
          v21 = v20 == 50331648 || v20 == v7;
          if (v21 && (*v14 == 50331648 || *v14 == v9))
          {
            v22 = *(v14 + 1);
            if (v22 == 0x700000000000000 || v22 == v8)
            {
              result = *(v14 + 1);
              if (result == 50331648 || result == v10)
              {
                break;
              }
            }
          }
        }
      }

      v14 += 40;
      v15 -= 40;
      if (!v15)
      {
        goto LABEL_26;
      }
    }

    v30 = *(v14 + 2);
  }

  v29 = *a3 - v30;
LABEL_50:
  *a3 = v29;
  return result;
}

void sub_12381C8(void *result, unint64_t a2)
{
  v2 = (result[1] - *result) >> 4;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      result[1] = *result + 16 * a2;
    }
  }

  else
  {
    sub_1238284(result, a2 - v2);
  }
}

const void **sub_12381F8(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_2734C08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2734C08))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2734C08);
  }

  return sub_122FC64(&unk_2734C00, a1);
}

void sub_1238284(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 4)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 16 * a2);
      v5 += 16 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 4);
    if (v7 >> 60)
    {
      sub_1794();
    }

    v8 = v4 - *a1;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_122CA60(a1, v9);
    }

    v10 = (16 * (v6 >> 4));
    bzero(v10, 16 * a2);
    v11 = &v10[16 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

__n128 sub_1238398(__n128 *a1, __n128 *a2, uint64_t a3, uint64_t a4, char a5, __n128 result)
{
LABEL_1:
  v10 = a2 - 1;
  v46 = a2 - 2;
  v11 = a2 - 3;
  v12 = a1;
LABEL_2:
  v13 = 1 - a4;
  while (1)
  {
    a1 = v12;
    v14 = v13;
    v15 = a2 - v12;
    if (v15 <= 2)
    {
      if (v15 < 2)
      {
        return result;
      }

      if (v15 == 2)
      {
        result.n128_u64[0] = a2[-1].n128_u64[1];
        if (result.n128_f64[0] > v12->n128_f64[1])
        {
          v65 = *v12;
          *v12 = a2[-1];
          result = v65;
          a2[-1] = v65;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v15 == 3)
    {
      break;
    }

    if (v15 == 4)
    {
      v39 = v12[1].n128_f64[1];
      v40 = v12[2].n128_f64[1];
      if (v39 <= v12->n128_f64[1])
      {
        if (v40 > v39)
        {
          result = v12[1];
          v12[1] = v12[2];
          v12[2] = result;
          if (v12[1].n128_f64[1] > v12->n128_f64[1])
          {
            v67 = *v12;
            *v12 = v12[1];
            v12[1] = v67;
          }
        }
      }

      else
      {
        if (v40 > v39)
        {
          v66 = *v12;
          *v12 = v12[2];
          result = v66;
          goto LABEL_108;
        }

        v69 = *v12;
        *v12 = v12[1];
        v12[1] = v69;
        if (v40 > v12[1].n128_f64[1])
        {
          result = v12[1];
          v12[1] = v12[2];
LABEL_108:
          v12[2] = result;
        }
      }

      result.n128_u64[0] = a2[-1].n128_u64[1];
      if (result.n128_f64[0] <= v12[2].n128_f64[1])
      {
        return result;
      }

      result = v12[2];
      v12[2] = *v10;
      *v10 = result;
      result.n128_u64[0] = v12[2].n128_u64[1];
      if (result.n128_f64[0] <= v12[1].n128_f64[1])
      {
        return result;
      }

      result = v12[1];
      v12[1] = v12[2];
      v12[2] = result;
LABEL_112:
      result.n128_u64[0] = v12[1].n128_u64[1];
      if (result.n128_f64[0] > v12->n128_f64[1])
      {
        v70 = *v12;
        *v12 = v12[1];
        result = v70;
        v12[1] = v70;
      }

      return result;
    }

    if (v15 == 5)
    {

      result.n128_u64[0] = sub_1238BAC(v12, v12 + 1, v12 + 2, v12 + 3, a2 - 1, result).n128_u64[0];
      return result;
    }

LABEL_10:
    if (v15 <= 23)
    {
      if (a5)
      {

        sub_1238D30(v12, a2);
      }

      else if (v12 != a2)
      {
        while (&a1[1] != a2)
        {
          result.n128_u64[0] = a1[1].n128_u64[1];
          v41 = a1->n128_f64[1];
          v45 = ++a1;
          if (result.n128_f64[0] > v41)
          {
            v42 = v45->n128_u64[0];
            v43 = a1;
            do
            {
              *v43 = *(v43 - 16);
              v44 = *(v43 - 24);
              v43 -= 16;
            }

            while (result.n128_f64[0] > v44);
            *v43 = v42;
            *(v43 + 8) = result.n128_u64[0];
          }
        }
      }

      return result;
    }

    if (v13 == 1)
    {
      if (v12 != a2)
      {

        sub_123927C(v12->n128_f64, a2->n128_f64, a2->n128_f64, a3);
      }

      return result;
    }

    v16 = &v12[v15 >> 1];
    v17 = a2[-1].n128_f64[1];
    if (v15 >= 0x81)
    {
      v18 = v16->n128_f64[1];
      if (v18 <= v12->n128_f64[1])
      {
        if (v17 > v18)
        {
          v49 = *v16;
          *v16 = *v10;
          *v10 = v49;
          if (v16->n128_f64[1] > v12->n128_f64[1])
          {
            v50 = *v12;
            *v12 = *v16;
            *v16 = v50;
          }
        }
      }

      else
      {
        if (v17 > v18)
        {
          v47 = *v12;
          *v12 = *v10;
          goto LABEL_28;
        }

        v53 = *v12;
        *v12 = *v16;
        *v16 = v53;
        if (a2[-1].n128_f64[1] > v16->n128_f64[1])
        {
          v47 = *v16;
          *v16 = *v10;
LABEL_28:
          *v10 = v47;
        }
      }

      v20 = v16 - 1;
      v21 = v16[-1].n128_f64[1];
      v22 = a2[-2].n128_f64[1];
      if (v21 <= v12[1].n128_f64[1])
      {
        if (v22 > v21)
        {
          v54 = *v20;
          *v20 = *v46;
          *v46 = v54;
          if (v16[-1].n128_f64[1] > v12[1].n128_f64[1])
          {
            v25 = v12[1];
            v12[1] = *v20;
            *v20 = v25;
          }
        }
      }

      else
      {
        if (v22 > v21)
        {
          v23 = v12[1];
          v24 = a2 - 2;
          v12[1] = *v46;
          goto LABEL_42;
        }

        v26 = v12[1];
        v12[1] = *v20;
        *v20 = v26;
        if (a2[-2].n128_f64[1] > v16[-1].n128_f64[1])
        {
          v56 = *v20;
          v24 = a2 - 2;
          *v20 = *v46;
          v23 = v56;
LABEL_42:
          *v24 = v23;
        }
      }

      v27 = v16[1].n128_f64[1];
      v28 = a2[-3].n128_f64[1];
      if (v27 <= v12[2].n128_f64[1])
      {
        if (v28 > v27)
        {
          v57 = v16[1];
          v16[1] = *v11;
          *v11 = v57;
          if (v16[1].n128_f64[1] > v12[2].n128_f64[1])
          {
            v30 = v12[2];
            v12[2] = v16[1];
            v16[1] = v30;
          }
        }
      }

      else
      {
        if (v28 > v27)
        {
          v29 = v12[2];
          v12[2] = *v11;
          goto LABEL_51;
        }

        v31 = v12[2];
        v12[2] = v16[1];
        v16[1] = v31;
        if (a2[-3].n128_f64[1] > v16[1].n128_f64[1])
        {
          v58 = v16[1];
          v16[1] = *v11;
          v29 = v58;
LABEL_51:
          *v11 = v29;
        }
      }

      v32 = v16->n128_f64[1];
      v33 = v16[1].n128_f64[1];
      if (v32 <= v16[-1].n128_f64[1])
      {
        if (v33 > v32)
        {
          v60 = *v16;
          *v16 = v16[1];
          v16[1] = v60;
          if (v16->n128_f64[1] > v16[-1].n128_f64[1])
          {
            v61 = *v20;
            *v20 = *v16;
            *v16 = v61;
          }
        }
      }

      else
      {
        if (v33 > v32)
        {
          v59 = *v20;
          *v20 = v16[1];
          goto LABEL_60;
        }

        v62 = *v20;
        *v20 = *v16;
        *v16 = v62;
        if (v16[1].n128_f64[1] > v16->n128_f64[1])
        {
          v59 = *v16;
          *v16 = v16[1];
LABEL_60:
          v16[1] = v59;
        }
      }

      v63 = *v12;
      *v12 = *v16;
      *v16 = v63;
      if (a5)
      {
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    v19 = v12->n128_f64[1];
    if (v19 > v16->n128_f64[1])
    {
      if (v17 > v19)
      {
        v48 = *v16;
        *v16 = *v10;
        goto LABEL_37;
      }

      v55 = *v16;
      *v16 = *v12;
      *v12 = v55;
      if (a2[-1].n128_f64[1] > v12->n128_f64[1])
      {
        v48 = *v12;
        *v12 = *v10;
LABEL_37:
        *v10 = v48;
      }

LABEL_38:
      if (a5)
      {
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    if (v17 <= v19)
    {
      goto LABEL_38;
    }

    v51 = *v12;
    *v12 = *v10;
    *v10 = v51;
    if (v12->n128_f64[1] <= v16->n128_f64[1])
    {
      goto LABEL_38;
    }

    v52 = *v16;
    *v16 = *v12;
    *v12 = v52;
    if (a5)
    {
      goto LABEL_63;
    }

LABEL_62:
    if (v12[-1].n128_f64[1] <= v12->n128_f64[1])
    {
      v12 = sub_1238DB4(v12->n128_f64, a2->n128_f64);
      goto LABEL_68;
    }

LABEL_63:
    v34 = sub_1238E98(v12->n128_f64, a2->n128_f64);
    if ((v35 & 1) == 0)
    {
      goto LABEL_66;
    }

    v36 = sub_1238F7C(v12, v34, result);
    v12 = v34 + 1;
    if (sub_1238F7C(v34 + 1, a2, v37))
    {
      a4 = -v14;
      a2 = v34;
      if (v36)
      {
        return result;
      }

      goto LABEL_1;
    }

    v13 = v14 + 1;
    if (!v36)
    {
LABEL_66:
      result = sub_1238398(a1, v34, a3, -v14, a5 & 1, result);
      v12 = v34 + 1;
LABEL_68:
      a5 = 0;
      a4 = -v14;
      goto LABEL_2;
    }
  }

  result.n128_u64[0] = v12[1].n128_u64[1];
  v38 = a2[-1].n128_f64[1];
  if (result.n128_f64[0] <= v12->n128_f64[1])
  {
    if (v38 <= result.n128_f64[0])
    {
      return result;
    }

    result = v12[1];
    v12[1] = *v10;
    *v10 = result;
    goto LABEL_112;
  }

  if (v38 <= result.n128_f64[0])
  {
    v68 = *v12;
    *v12 = v12[1];
    v12[1] = v68;
    result.n128_u64[0] = a2[-1].n128_u64[1];
    if (result.n128_f64[0] <= v12[1].n128_f64[1])
    {
      return result;
    }

    result = v12[1];
    v12[1] = *v10;
  }

  else
  {
    v64 = *v12;
    *v12 = *v10;
    result = v64;
  }

  *v10 = result;
  return result;
}