uint64_t *sub_239F316E4(uint64_t *a1, uint64_t *a2)
{
  *a2 = *a1;
  *a1 = 0;
  return sub_239F31874(a1);
}

unint64_t sub_239F316FC(unint64_t **a1)
{
  v1 = **a1;
  if (v1)
  {
    v2 = (*a1)[4];
    v3 = **a1;
    do
    {
      v4 = *v2++;
      v1 = v4 + ((v4 + v1 + (v4 + v1) * (v4 + v1)) >> 1);
      --v3;
    }

    while (v3);
    v1 *= 0x9E3779B97F4A7C55;
  }

  return bswap64(v1);
}

void sub_239F3185C(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  a2[1] = &off_284D159A8;
  sub_239ECA11C(a2, v2);
}

uint64_t *sub_239F31874(uint64_t *result)
{
  v1 = *result;
  if (*result && atomic_fetch_add_explicit((v1 + 40), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    sub_239E56C80(v1);

    JUMPOUT(0x23EE802C0);
  }

  return result;
}

BOOL sub_239F318EC(void *a1, uint64_t a2)
{
  if (a1[4] == *(a2 + 32) && sub_239EB5C18(a1, a2) && a1[3] == *(a2 + 24))
  {
    return 1;
  }

  result = sub_239EB5C18(a1, a2);
  if (!result)
  {
    return result;
  }

  if (!*a1)
  {
    return 1;
  }

  v5 = a1[4];
  v6 = *(a2 + 32);
  v7 = 8 * *a1 - 8;
  do
  {
    v8 = *v5++;
    v9 = v8;
    v10 = *v6++;
    result = v9 == v10;
    v11 = v9 != v10 || v7 == 0;
    v7 -= 8;
  }

  while (!v11);
  return result;
}

uint64_t sub_239F3198C(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 40));
  if (v1 != 1)
  {
    sub_239ECA0A0();
  }

  return *a1;
}

uint64_t sub_239F31A54(uint64_t result)
{
  if (result)
  {
    sub_239E56C80(result);

    JUMPOUT(0x23EE802C0);
  }

  return result;
}

void sub_239F31AB0(unint64_t *a1, unint64_t a2, int **a3)
{
  v3 = *a1;
  if (*a1 == a2)
  {
    return;
  }

  if (a2)
  {
    v7 = a1[4];
    if (v7)
    {
      if (!a1[3])
      {
        v8 = atomic_load((v7 - 16));
        if (v8 == 1)
        {
          if (v3 < a2)
          {
            v9 = a1[4];
            if (*(v9 - 8) < a2)
            {
              v10 = sub_239F31CD8(a1, a2);
              v7 = v10;
              if (v3)
              {
                v11 = 0;
                do
                {
                  v12 = v10 + v11;
                  v13 = *(v9 + v11);
                  *(v12 + 2) = *(v9 + v11 + 4);
                  *v12 = v13;
                  v11 += 6;
                }

                while (6 * v3 != v11);
              }
            }

            v14 = *a3;
            v15 = 6 * v3;
            do
            {
              v16 = v7 + v15;
              v17 = *v14;
              *(v16 + 4) = *(v14 + 2);
              *v16 = v17;
              v15 += 6;
            }

            while (6 * a2 != v15);
          }

          v18 = v7;
          goto LABEL_31;
        }

        v7 = a1[4];
      }

      if (v3 >= a2)
      {
        v24 = a2;
      }

      else
      {
        v24 = *a1;
      }

      v25 = sub_239F31CD8(a1, a2);
      v18 = v25;
      if (v3)
      {
        v26 = 6 * v24;
        v27 = v25;
        do
        {
          v28 = *v7;
          *(v27 + 2) = *(v7 + 4);
          *v27 = v28;
          v27 = (v27 + 6);
          v7 += 6;
          v26 -= 6;
        }

        while (v26);
      }

      if (v3 < a2)
      {
        v29 = *a3;
        v30 = 6 * v3;
        do
        {
          v31 = v25 + v30;
          v32 = *v29;
          *(v31 + 2) = *(v29 + 2);
          *v31 = v32;
          v30 += 6;
        }

        while (6 * a2 != v30);
      }

      goto LABEL_31;
    }

    if (a2 < 0x2AAAAAAAAAAAAAABLL)
    {
      v19 = sub_239F31CD8(a1, a2);
      v18 = v19;
      v20 = 0;
      v21 = *a3;
      do
      {
        v22 = v19 + v20;
        v23 = *v21;
        *(v22 + 2) = *(v21 + 2);
        *v22 = v23;
        v20 += 6;
      }

      while (6 * a2 != v20);
LABEL_31:
      if (v18 != a1[4])
      {
        sub_239E56C80(a1);
        a1[4] = v18;
      }

      *a1 = a2;
      return;
    }
  }

  sub_239E5B364(a1);
}

void *sub_239F31CD8(uint64_t a1, unint64_t a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_239E56D84(v6, "VtArray::_AllocateNew", "value_type *pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_AllocateNew(size_t) [T = pxrInternal__aapl__pxrReserved__::GfVec3h]");
  if (a2 > 0x1555555555555552)
  {
    v3 = -1;
  }

  else
  {
    v3 = 6 * a2 + 16;
  }

  v4 = operator new(v3);
  *v4 = 1;
  v4[1] = a2;
  if (v6[0])
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End();
  }

  return v4 + 2;
}

uint64_t *sub_239F31D78(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t *sub_239F31D98(uint64_t *a1, uint64_t *a2)
{
  *a2 = *a1;
  *a1 = 0;
  return sub_239F31F7C(a1);
}

unint64_t sub_239F31DB0(unint64_t **a1)
{
  v1 = **a1;
  if (v1)
  {
    v2 = (*a1)[4];
    v3 = **a1;
    do
    {
      --v3;
      v7[0] = 0;
      v7[1] = 0;
      sub_239F31FF4(v7, v2, v2 + 1, v2 + 2);
      v4 = bswap64(0x9E3779B97F4A7C55 * v7[0]);
      v1 = v4 + ((v4 + v1 + (v4 + v1) * (v4 + v1)) >> 1);
      v2 += 3;
    }

    while (v3);
    v5 = 0x9E3779B97F4A7C55 * v1;
  }

  else
  {
    v5 = 0;
  }

  return bswap64(v5);
}

void sub_239F31F64(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  a2[1] = &off_284D15BD0;
  sub_239EB5D90(a2, v2);
}

uint64_t *sub_239F31F7C(uint64_t *result)
{
  v1 = *result;
  if (*result && atomic_fetch_add_explicit((v1 + 40), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    sub_239E56C80(v1);

    JUMPOUT(0x23EE802C0);
  }

  return result;
}

uint64_t sub_239F31FF4(uint64_t a1, unsigned __int16 *a2, unsigned __int16 *a3, unsigned __int16 *a4)
{
  v4 = *a2;
  if (*(a1 + 8))
  {
    v4 += (*a1 + v4 + (*a1 + v4) * (*a1 + v4)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v4;
  return sub_239F3202C(a1, a3, a4);
}

uint64_t sub_239F3202C(uint64_t result, unsigned __int16 *a2, unsigned __int16 *a3)
{
  v3 = *a2;
  if (*(result + 8))
  {
    v3 += (*result + v3 + (*result + v3) * (*result + v3)) >> 1;
  }

  else
  {
    *(result + 8) = 1;
  }

  *result = *a3 + ((v3 + *a3 + (v3 + *a3) * (v3 + *a3)) >> 1);
  return result;
}

BOOL sub_239F3206C(uint64_t *a1, uint64_t a2)
{
  if (a1[4] == *(a2 + 32) && sub_239EB5C18(a1, a2) && a1[3] == *(a2 + 24))
  {
    return 1;
  }

  result = sub_239EB5C18(a1, a2);
  if (!result)
  {
    return result;
  }

  v5 = *a1;
  if (!*a1)
  {
    return 1;
  }

  v6 = a1[4];
  v7 = *(a2 + 32);
  v8 = 6 * v5 - 6;
  do
  {
    result = sub_239F32120(v6, v7);
    if (!result)
    {
      break;
    }

    v6 += 3;
    v7 += 3;
    v9 = v8;
    v8 -= 6;
  }

  while (v9);
  return result;
}

uint64_t sub_239F3217C(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 40));
  if (v1 != 1)
  {
    sub_239EB5CFC();
  }

  return *a1;
}

void sub_239F321FC(unint64_t *a1, unint64_t a2, __int128 **a3)
{
  v3 = *a1;
  if (*a1 == a2)
  {
    return;
  }

  if (a2)
  {
    v7 = a1[4];
    if (v7)
    {
      if (!a1[3])
      {
        v8 = atomic_load((v7 - 16));
        if (v8 == 1)
        {
          if (v3 < a2)
          {
            v9 = a1[4];
            if (*(v9 - 8) < a2)
            {
              v10 = sub_239F32428(a1, a2);
              v7 = v10;
              if (v3)
              {
                v11 = 0;
                do
                {
                  v12 = &v10[v11];
                  v13 = *(v9 + v11 * 8);
                  v12[2] = *(v9 + v11 * 8 + 16);
                  *v12 = v13;
                  v11 += 3;
                }

                while (3 * v3 != v11);
              }
            }

            v14 = *a3;
            v15 = 24 * v3;
            do
            {
              v16 = v7 + v15;
              v17 = *v14;
              *(v16 + 16) = *(v14 + 2);
              *v16 = v17;
              v15 += 24;
            }

            while (24 * a2 != v15);
          }

          v18 = v7;
          goto LABEL_31;
        }

        v7 = a1[4];
      }

      if (v3 >= a2)
      {
        v24 = a2;
      }

      else
      {
        v24 = *a1;
      }

      v25 = sub_239F32428(a1, a2);
      v18 = v25;
      if (v3)
      {
        v26 = 24 * v24;
        v27 = v25;
        do
        {
          v28 = *v7;
          v27[2] = *(v7 + 16);
          *v27 = v28;
          v27 += 3;
          v7 += 24;
          v26 -= 24;
        }

        while (v26);
      }

      if (v3 < a2)
      {
        v29 = *a3;
        v30 = 3 * v3;
        do
        {
          v31 = &v25[v30];
          v32 = *v29;
          v31[2] = *(v29 + 2);
          *v31 = v32;
          v30 += 3;
        }

        while (3 * a2 != v30);
      }

      goto LABEL_31;
    }

    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      v19 = sub_239F32428(a1, a2);
      v18 = v19;
      v20 = 0;
      v21 = *a3;
      do
      {
        v22 = &v19[v20];
        v23 = *v21;
        v22[2] = *(v21 + 2);
        *v22 = v23;
        v20 += 3;
      }

      while (3 * a2 != v20);
LABEL_31:
      if (v18 != a1[4])
      {
        sub_239E56C80(a1);
        a1[4] = v18;
      }

      *a1 = a2;
      return;
    }
  }

  sub_239E5B364(a1);
}

void *sub_239F32428(uint64_t a1, unint64_t a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_239E56D84(v6, "VtArray::_AllocateNew", "value_type *pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>::_AllocateNew(size_t) [T = pxrInternal__aapl__pxrReserved__::GfVec3d]");
  if (a2 > 0x555555555555554)
  {
    v3 = -1;
  }

  else
  {
    v3 = 24 * a2 + 16;
  }

  v4 = operator new(v3);
  *v4 = 1;
  v4[1] = a2;
  if (v6[0])
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End();
  }

  return v4 + 2;
}

uint64_t *sub_239F324C4(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t *sub_239F324E4(uint64_t *a1, uint64_t *a2)
{
  *a2 = *a1;
  *a1 = 0;
  return sub_239F326C8(a1);
}

unint64_t sub_239F324FC(unint64_t **a1)
{
  v1 = **a1;
  if (v1)
  {
    v2 = (*a1)[4];
    v3 = **a1;
    do
    {
      --v3;
      v7[0] = 0;
      v7[1] = 0;
      sub_239F226E0(v7, v2, v2 + 1, v2 + 2);
      v4 = bswap64(0x9E3779B97F4A7C55 * v7[0]);
      v1 = v4 + ((v4 + v1 + (v4 + v1) * (v4 + v1)) >> 1);
      v2 += 3;
    }

    while (v3);
    v5 = 0x9E3779B97F4A7C55 * v1;
  }

  else
  {
    v5 = 0;
  }

  return bswap64(v5);
}

void sub_239F326B0(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  a2[1] = &off_284D15D40;
  sub_239EB5D90(a2, v2);
}

uint64_t *sub_239F326C8(uint64_t *result)
{
  v1 = *result;
  if (*result && atomic_fetch_add_explicit((v1 + 40), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    sub_239E56C80(v1);

    JUMPOUT(0x23EE802C0);
  }

  return result;
}

BOOL sub_239F32740(void *a1, uint64_t a2)
{
  if (a1[4] == *(a2 + 32) && sub_239EB5C18(a1, a2) && a1[3] == *(a2 + 24))
  {
    return 1;
  }

  result = sub_239EB5C18(a1, a2);
  if (!result)
  {
    return result;
  }

  if (!*a1)
  {
    return 1;
  }

  v5 = a1[4];
  v6 = &v5[3 * *a1];
  for (i = *(a2 + 32); *v5 == *i && v5[1] == i[1] && v5[2] == i[2]; i += 3)
  {
    v5 += 3;
    if (v5 == v6)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_239F32808(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 40));
  if (v1 != 1)
  {
    sub_239EB5CFC();
  }

  return *a1;
}

void sub_239F32888(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    if (*(result + 24) || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      sub_239F75050();
    }
  }
}

uint64_t sub_239F3292C(uint64_t result)
{
  if (result)
  {
    sub_239E56C80(result);

    JUMPOUT(0x23EE802C0);
  }

  return result;
}

void sub_239F32988(unint64_t *a1, unint64_t a2, uint64_t **a3)
{
  v3 = *a1;
  if (*a1 == a2)
  {
    return;
  }

  if (a2)
  {
    v7 = a1[4];
    if (v7)
    {
      if (!a1[3])
      {
        v8 = atomic_load(v7 - 2);
        if (v8 == 1)
        {
          if (v3 < a2)
          {
            v9 = a1[4];
            if (*(v9 - 8) < a2)
            {
              v10 = sub_239F32B50(a1, a2);
              v7 = v10;
              if (v3)
              {
                for (i = 0; i != v3; ++i)
                {
                  v10[i] = *(v9 + i * 8);
                }
              }
            }

            v12 = *a3;
            v13 = v3;
            do
            {
              v7[v13++] = *v12;
            }

            while (a2 != v13);
          }

          v14 = v7;
          goto LABEL_31;
        }

        v7 = a1[4];
      }

      if (v3 >= a2)
      {
        v19 = a2;
      }

      else
      {
        v19 = *a1;
      }

      v20 = sub_239F32B50(a1, a2);
      v14 = v20;
      if (v3)
      {
        v21 = 8 * v19;
        v22 = v20;
        do
        {
          v23 = *v7++;
          *v22++ = v23;
          v21 -= 8;
        }

        while (v21);
      }

      if (v3 < a2)
      {
        v24 = *a3;
        v25 = v3;
        do
        {
          v20[v25++] = *v24;
        }

        while (a2 != v25);
      }

      goto LABEL_31;
    }

    v15 = 8 * a2;
    if (8 * a2 / a2 == 8)
    {
      v16 = sub_239F32B50(a1, a2);
      v14 = v16;
      v17 = 0;
      v18 = *a3;
      do
      {
        v16[v17 / 8] = *v18;
        v17 += 8;
      }

      while (v15 != v17);
LABEL_31:
      if (v14 != a1[4])
      {
        sub_239E56C80(a1);
        a1[4] = v14;
      }

      *a1 = a2;
      return;
    }
  }

  sub_239E5B364(a1);
}

void *sub_239F32B50(uint64_t a1, unint64_t a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_239E56D84(v6, "VtArray::_AllocateNew", "value_type *pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuath>::_AllocateNew(size_t) [T = pxrInternal__aapl__pxrReserved__::GfQuath]");
  if (a2 > 0xFFFFFFFFFFFFFFDLL)
  {
    v3 = -1;
  }

  else
  {
    v3 = 8 * a2 + 16;
  }

  v4 = operator new(v3);
  *v4 = 1;
  v4[1] = a2;
  if (v6[0])
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End();
  }

  return v4 + 2;
}

uint64_t *sub_239F32BE8(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t *sub_239F32C08(uint64_t *a1, uint64_t *a2)
{
  *a2 = *a1;
  *a1 = 0;
  return sub_239F32DF0(a1);
}

unint64_t sub_239F32C20(unint64_t **a1)
{
  v1 = **a1;
  if (v1)
  {
    v2 = (*a1)[4];
    v3 = **a1;
    do
    {
      --v3;
      v4 = v2 + 4;
      v8 = v2[3];
      v9[0] = 0;
      v9[1] = 0;
      sub_239F32E68(v9, &v8, v2);
      v5 = bswap64(0x9E3779B97F4A7C55 * v9[0]);
      v1 = v5 + ((v5 + v1 + (v5 + v1) * (v5 + v1)) >> 1);
      v2 = v4;
    }

    while (v3);
    v6 = 0x9E3779B97F4A7C55 * v1;
  }

  else
  {
    v6 = 0;
  }

  return bswap64(v6);
}

void sub_239F32DD8(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  a2[1] = &off_284D15EB0;
  sub_239EB5D90(a2, v2);
}

uint64_t *sub_239F32DF0(uint64_t *result)
{
  v1 = *result;
  if (*result && atomic_fetch_add_explicit((v1 + 40), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    sub_239E56C80(v1);

    JUMPOUT(0x23EE802C0);
  }

  return result;
}

uint64_t sub_239F32E68(uint64_t a1, unsigned __int16 *a2, unsigned __int16 *a3)
{
  v4 = *a2;
  if (*(a1 + 8))
  {
    v4 += (*a1 + v4 + (*a1 + v4) * (*a1 + v4)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v4;
  v7[0] = 0;
  v7[1] = 0;
  result = sub_239F31FF4(v7, a3, a3 + 1, a3 + 2);
  v6 = bswap64(0x9E3779B97F4A7C55 * v7[0]);
  if (*(a1 + 8))
  {
    v6 += (*a1 + v6 + (*a1 + v6) * (*a1 + v6)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v6;
  return result;
}

BOOL sub_239F32F1C(uint64_t *a1, uint64_t a2)
{
  if (a1[4] == *(a2 + 32) && sub_239EB5C18(a1, a2) && a1[3] == *(a2 + 24))
  {
    return 1;
  }

  result = sub_239EB5C18(a1, a2);
  if (!result)
  {
    return result;
  }

  v5 = *a1;
  if (!*a1)
  {
    return 1;
  }

  v6 = a1[4];
  v7 = *(a2 + 32);
  v8 = 8 * v5;
  v9 = MEMORY[0x277D86658];
  while (*(v9 + 4 * v6[3]) == *(v9 + 4 * v7[3]))
  {
    result = sub_239F32120(v6, v7);
    if (!result)
    {
      return result;
    }

    v6 += 4;
    v7 += 4;
    v8 -= 8;
    if (!v8)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_239F32FE8(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 40));
  if (v1 != 1)
  {
    sub_239EB5CFC();
  }

  return *a1;
}

void sub_239F33068(unint64_t *a1, unint64_t a2, _OWORD **a3)
{
  v3 = *a1;
  if (*a1 == a2)
  {
    return;
  }

  if (a2)
  {
    v7 = a1[4];
    if (v7)
    {
      if (!a1[3])
      {
        v8 = atomic_load(v7 - 2);
        if (v8 == 1)
        {
          if (v3 < a2)
          {
            v9 = a1[4];
            if (*(v9 - 8) < a2)
            {
              v10 = sub_239F33230(a1, a2);
              v7 = v10;
              if (v3)
              {
                v11 = 0;
                do
                {
                  *&v10[v11] = *(v9 + v11 * 8);
                  v11 += 2;
                }

                while (2 * v3 != v11);
              }
            }

            v12 = *a3;
            v13 = 2 * v3;
            do
            {
              *&v7[v13] = *v12;
              v13 += 2;
            }

            while (2 * a2 != v13);
          }

          v14 = v7;
          goto LABEL_31;
        }

        v7 = a1[4];
      }

      if (v3 >= a2)
      {
        v19 = a2;
      }

      else
      {
        v19 = *a1;
      }

      v20 = sub_239F33230(a1, a2);
      v14 = v20;
      if (v3)
      {
        v21 = 16 * v19;
        v22 = v20;
        do
        {
          v23 = *v7;
          v7 += 2;
          *v22++ = v23;
          v21 -= 16;
        }

        while (v21);
      }

      if (v3 < a2)
      {
        v24 = *a3;
        v25 = 2 * v3;
        do
        {
          *&v20[v25] = *v24;
          v25 += 2;
        }

        while (2 * a2 != v25);
      }

      goto LABEL_31;
    }

    v15 = 16 * a2;
    if (16 * a2 / a2 == 16)
    {
      v16 = sub_239F33230(a1, a2);
      v14 = v16;
      v17 = 0;
      v18 = *a3;
      do
      {
        *&v16[v17 / 8] = *v18;
        v17 += 16;
      }

      while (v15 != v17);
LABEL_31:
      if (v14 != a1[4])
      {
        sub_239E56C80(a1);
        a1[4] = v14;
      }

      *a1 = a2;
      return;
    }
  }

  sub_239E5B364(a1);
}

void *sub_239F33230(uint64_t a1, unint64_t a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_239E56D84(v6, "VtArray::_AllocateNew", "value_type *pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>::_AllocateNew(size_t) [T = pxrInternal__aapl__pxrReserved__::GfQuatf]");
  if (a2 > 0x7FFFFFFFFFFFFFELL)
  {
    v3 = -1;
  }

  else
  {
    v3 = 16 * a2 + 16;
  }

  v4 = operator new(v3);
  *v4 = 1;
  v4[1] = a2;
  if (v6[0])
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End();
  }

  return v4 + 2;
}

uint64_t *sub_239F332C4(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t *sub_239F332E4(uint64_t *a1, uint64_t *a2)
{
  *a2 = *a1;
  *a1 = 0;
  return sub_239F334CC(a1);
}

unint64_t sub_239F332FC(unint64_t **a1)
{
  v1 = **a1;
  if (v1)
  {
    v2 = (*a1)[4];
    v3 = **a1;
    do
    {
      --v3;
      v4 = v2 + 4;
      v8 = v2[3];
      v9[0] = 0;
      v9[1] = 0;
      sub_239F33544(v9, &v8, v2);
      v5 = bswap64(0x9E3779B97F4A7C55 * v9[0]);
      v1 = v5 + ((v5 + v1 + (v5 + v1) * (v5 + v1)) >> 1);
      v2 = v4;
    }

    while (v3);
    v6 = 0x9E3779B97F4A7C55 * v1;
  }

  else
  {
    v6 = 0;
  }

  return bswap64(v6);
}

void sub_239F334B4(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  a2[1] = &off_284D15F68;
  sub_239EB5D90(a2, v2);
}

uint64_t *sub_239F334CC(uint64_t *result)
{
  v1 = *result;
  if (*result && atomic_fetch_add_explicit((v1 + 40), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    sub_239E56C80(v1);

    JUMPOUT(0x23EE802C0);
  }

  return result;
}

uint64_t sub_239F33544(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  v4 = *a2;
  if (*(a1 + 8))
  {
    v4 += (*a1 + v4 + (*a1 + v4) * (*a1 + v4)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v4;
  v7[0] = 0;
  v7[1] = 0;
  result = sub_239EB5AD8(v7, a3, a3 + 1, a3 + 2);
  v6 = bswap64(0x9E3779B97F4A7C55 * v7[0]);
  if (*(a1 + 8))
  {
    v6 += (*a1 + v6 + (*a1 + v6) * (*a1 + v6)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v6;
  return result;
}

BOOL sub_239F335F8(void *a1, uint64_t a2)
{
  if (a1[4] == *(a2 + 32) && sub_239EB5C18(a1, a2) && a1[3] == *(a2 + 24))
  {
    return 1;
  }

  result = sub_239EB5C18(a1, a2);
  if (!result)
  {
    return result;
  }

  if (!*a1)
  {
    return 1;
  }

  v5 = (a1[4] + 8);
  v6 = 16 * *a1;
  for (i = (*(a2 + 32) + 8); v5[1] == i[1] && *(v5 - 2) == *(i - 2) && *(v5 - 1) == *(i - 1) && *v5 == *i; i += 4)
  {
    v5 += 4;
    v6 -= 16;
    if (!v6)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_239F336D4(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 40));
  if (v1 != 1)
  {
    sub_239EB5CFC();
  }

  return *a1;
}

void sub_239F33754(unint64_t *a1, unint64_t a2, _OWORD **a3)
{
  v3 = *a1;
  if (*a1 == a2)
  {
    return;
  }

  if (a2)
  {
    v7 = a1[4];
    if (v7)
    {
      if (!a1[3])
      {
        v8 = atomic_load(v7 - 2);
        if (v8 == 1)
        {
          if (v3 < a2)
          {
            v9 = a1[4];
            if (*(v9 - 8) < a2)
            {
              v10 = sub_239F33930(a1, a2);
              v7 = v10;
              if (v3)
              {
                v11 = 0;
                do
                {
                  v12 = &v10[v11];
                  v13 = *(v9 + v11 * 8 + 16);
                  *v12 = *(v9 + v11 * 8);
                  *(v12 + 1) = v13;
                  v11 += 4;
                }

                while (4 * v3 != v11);
              }
            }

            v14 = *a3;
            v15 = 4 * v3;
            do
            {
              v16 = &v7[v15];
              v17 = v14[1];
              *v16 = *v14;
              *(v16 + 1) = v17;
              v15 += 4;
            }

            while (4 * a2 != v15);
          }

          v18 = v7;
          goto LABEL_31;
        }

        v7 = a1[4];
      }

      if (v3 >= a2)
      {
        v25 = a2;
      }

      else
      {
        v25 = *a1;
      }

      v26 = sub_239F33930(a1, a2);
      v18 = v26;
      if (v3)
      {
        v27 = 32 * v25;
        v28 = v26;
        do
        {
          v29 = *v7;
          v30 = *(v7 + 1);
          v7 += 4;
          *v28 = v29;
          v28[1] = v30;
          v28 += 2;
          v27 -= 32;
        }

        while (v27);
      }

      if (v3 < a2)
      {
        v31 = *a3;
        v32 = 4 * v3;
        do
        {
          v33 = &v26[v32];
          v34 = v31[1];
          *v33 = *v31;
          v33[1] = v34;
          v32 += 4;
        }

        while (4 * a2 != v32);
      }

      goto LABEL_31;
    }

    v19 = 32 * a2;
    if (32 * a2 / a2 == 32)
    {
      v20 = sub_239F33930(a1, a2);
      v18 = v20;
      v21 = 0;
      v22 = *a3;
      do
      {
        v23 = &v20[v21 / 8];
        v24 = v22[1];
        *v23 = *v22;
        v23[1] = v24;
        v21 += 32;
      }

      while (v19 != v21);
LABEL_31:
      if (v18 != a1[4])
      {
        sub_239E56C80(a1);
        a1[4] = v18;
      }

      *a1 = a2;
      return;
    }
  }

  sub_239E5B364(a1);
}

void *sub_239F33930(uint64_t a1, unint64_t a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_239E56D84(v6, "VtArray::_AllocateNew", "value_type *pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatd>::_AllocateNew(size_t) [T = pxrInternal__aapl__pxrReserved__::GfQuatd]");
  if (a2 >> 58)
  {
    v3 = -1;
  }

  else
  {
    v3 = (32 * a2) | 0x10;
  }

  v4 = operator new(v3);
  *v4 = 1;
  v4[1] = a2;
  if (v6[0])
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End();
  }

  return v4 + 2;
}

uint64_t *sub_239F339C4(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t *sub_239F339E4(uint64_t *a1, uint64_t *a2)
{
  *a2 = *a1;
  *a1 = 0;
  return sub_239F33BCC(a1);
}

unint64_t sub_239F339FC(unint64_t **a1)
{
  v1 = **a1;
  if (v1)
  {
    v2 = (*a1)[4];
    v3 = **a1;
    do
    {
      --v3;
      v4 = v2 + 4;
      v8 = v2[3];
      v9[0] = 0;
      v9[1] = 0;
      sub_239F33C44(v9, &v8, v2);
      v5 = bswap64(0x9E3779B97F4A7C55 * v9[0]);
      v1 = v5 + ((v5 + v1 + (v5 + v1) * (v5 + v1)) >> 1);
      v2 = v4;
    }

    while (v3);
    v6 = 0x9E3779B97F4A7C55 * v1;
  }

  else
  {
    v6 = 0;
  }

  return bswap64(v6);
}

void sub_239F33BB4(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  a2[1] = &off_284D16020;
  sub_239EB5D90(a2, v2);
}

uint64_t *sub_239F33BCC(uint64_t *result)
{
  v1 = *result;
  if (*result && atomic_fetch_add_explicit((v1 + 40), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    sub_239E56C80(v1);

    JUMPOUT(0x23EE802C0);
  }

  return result;
}

uint64_t sub_239F33C44(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = *a2;
  if (*(a1 + 8))
  {
    v4 += (*a1 + v4 + (*a1 + v4) * (*a1 + v4)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v4;
  v7[0] = 0;
  v7[1] = 0;
  result = sub_239F226E0(v7, a3, a3 + 1, a3 + 2);
  v6 = bswap64(0x9E3779B97F4A7C55 * v7[0]);
  if (*(a1 + 8))
  {
    v6 += (*a1 + v6 + (*a1 + v6) * (*a1 + v6)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v6;
  return result;
}

BOOL sub_239F33CF8(void *a1, uint64_t a2)
{
  if (a1[4] == *(a2 + 32) && sub_239EB5C18(a1, a2) && a1[3] == *(a2 + 24))
  {
    return 1;
  }

  result = sub_239EB5C18(a1, a2);
  if (!result)
  {
    return result;
  }

  if (!*a1)
  {
    return 1;
  }

  v5 = (a1[4] + 16);
  v6 = 32 * *a1;
  for (i = (*(a2 + 32) + 16); v5[1] == i[1] && *(v5 - 2) == *(i - 2) && *(v5 - 1) == *(i - 1) && *v5 == *i; i += 4)
  {
    v5 += 4;
    v6 -= 32;
    if (!v6)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_239F33DD4(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 40));
  if (v1 != 1)
  {
    sub_239EB5CFC();
  }

  return *a1;
}

void sub_239F33E54(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    if (*(result + 24) || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      sub_239F750D0();
    }
  }
}

void sub_239F33E98(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    if (*(result + 24) || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      sub_239F75140();
    }
  }
}

uint64_t sub_239F33F3C(uint64_t result)
{
  if (result)
  {
    sub_239E56C80(result);

    JUMPOUT(0x23EE802C0);
  }

  return result;
}

uint64_t sub_239F33FF8(uint64_t result)
{
  if (result)
  {
    sub_239E56C80(result);

    JUMPOUT(0x23EE802C0);
  }

  return result;
}

_WORD *sub_239F34198@<X0>(_WORD *result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = &off_284D15610 + 3;
  *a2 = *result;
  return result;
}

float sub_239F341B4(float *a1, _DWORD *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

float sub_239F341C4(float *a1, _DWORD *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

float sub_239F342D0@<S0>(float *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = &unk_284D15333;
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_239F342EC(double *a1, void *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_239F342FC(double *a1, void *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_239F34408@<D0>(double *a1@<X0>, void *a2@<X8>)
{
  a2[1] = &unk_284D153EB;
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_239F3447C(uint64_t result)
{
  if (result)
  {
    JUMPOUT(0x23EE802C0);
  }

  return result;
}

_DWORD *sub_239F34634@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = &off_284D16750 + 3;
  *a2 = *result;
  return result;
}

void *sub_239F34790@<X0>(void *result@<X0>, void *a2@<X8>)
{
  *a2 = *result;
  a2[1] = &off_284D16808 + 3;
  return result;
}

uint64_t *sub_239F347A8(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_239F347C4(uint64_t *a1)
{
  result = *a1;
  if (result && atomic_fetch_add_explicit((result + 16), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    JUMPOUT(0x23EE802C0);
  }

  return result;
}

void *sub_239F347FC(void *result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return result;
}

uint64_t sub_239F349B4(uint64_t a1)
{
  v1 = atomic_load((*a1 + 16));
  if (v1 != 1)
  {
    operator new();
  }

  return *a1;
}

int *sub_239F34A64(int *result, uint64_t a2)
{
  v2 = *result;
  *(a2 + 4) = *(result + 2);
  *a2 = v2;
  return result;
}

int *sub_239F34A7C(int *result, uint64_t a2)
{
  v2 = *result;
  *(a2 + 4) = *(result + 2);
  *a2 = v2;
  return result;
}

unint64_t sub_239F34A98(unsigned __int16 *a1)
{
  v2[0] = 0;
  v2[1] = 0;
  sub_239F31FF4(v2, a1, a1 + 1, a1 + 2);
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v2[0]));
}

uint64_t sub_239F34BB0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = &off_284D16528 + 3;
  *a2 = *result;
  *(a2 + 4) = *(result + 4);
  return result;
}

uint64_t *sub_239F34BD4(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 12), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_239F34BF0(uint64_t *a1)
{
  result = *a1;
  if (result && atomic_fetch_add_explicit((result + 12), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    JUMPOUT(0x23EE802C0);
  }

  return result;
}

void *sub_239F34C28(void *result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return result;
}

unint64_t sub_239F34C40(unsigned int **a1)
{
  v1 = *a1;
  v3[0] = 0;
  v3[1] = 0;
  sub_239EB5AD8(v3, v1, v1 + 1, v1 + 2);
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v3[0]));
}

BOOL sub_239F34C98(float **a1, float **a2)
{
  v2 = *a1;
  v3 = *a2;
  return **a1 == **a2 && *(v2 + 4) == *(v3 + 4) && *(v2 + 8) == *(v3 + 8);
}

uint64_t sub_239F34E48(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 12));
  if (v1 != 1)
  {
    operator new();
  }

  return *a1;
}

uint64_t *sub_239F34F00(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 24), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_239F34F1C(uint64_t *a1)
{
  result = *a1;
  if (result && atomic_fetch_add_explicit((result + 24), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    JUMPOUT(0x23EE802C0);
  }

  return result;
}

void *sub_239F34F54(void *result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return result;
}

unint64_t sub_239F34F6C(uint64_t **a1)
{
  v1 = *a1;
  v3[0] = 0;
  v3[1] = 0;
  sub_239F226E0(v3, v1, v1 + 1, v1 + 2);
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v3[0]));
}

BOOL sub_239F34FC4(double **a1, double **a2)
{
  v2 = *a1;
  v3 = *a2;
  return **a1 == **a2 && *(v2 + 8) == *(v3 + 8) && *(v2 + 16) == *(v3 + 16);
}

uint64_t sub_239F35174(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 24));
  if (v1 != 1)
  {
    operator new();
  }

  return *a1;
}

unint64_t sub_239F35250(unsigned __int16 *a1)
{
  v2[0] = 0;
  v2[1] = 0;
  sub_239F35384(v2, a1, a1 + 1, a1 + 2, a1 + 3);
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v2[0]));
}

void *sub_239F3536C@<X0>(void *result@<X0>, void *a2@<X8>)
{
  *a2 = *result;
  a2[1] = &off_284D16300 + 3;
  return result;
}

uint64_t sub_239F35384(uint64_t a1, unsigned __int16 *a2, unsigned __int16 *a3, unsigned __int16 *a4, unsigned __int16 *a5)
{
  v5 = *a2;
  if (*(a1 + 8))
  {
    v5 += (*a1 + v5 + (*a1 + v5) * (*a1 + v5)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v5;
  return sub_239F31FF4(a1, a3, a4, a5);
}

uint64_t *sub_239F35434(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_239F35450(uint64_t *a1)
{
  result = *a1;
  if (result && atomic_fetch_add_explicit((result + 16), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    JUMPOUT(0x23EE802C0);
  }

  return result;
}

void *sub_239F35488(void *result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return result;
}

unint64_t sub_239F354A0(unsigned int **a1)
{
  v1 = *a1;
  v3[0] = 0;
  v3[1] = 0;
  sub_239EB619C(v3, v1, v1 + 1, v1 + 2, v1 + 3);
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v3[0]));
}

BOOL sub_239F354FC(float **a1, float **a2)
{
  v2 = *a1;
  v3 = *a2;
  return **a1 == **a2 && v2[1] == v3[1] && v2[2] == v3[2] && v2[3] == v3[3];
}

uint64_t sub_239F356C4(uint64_t a1)
{
  v1 = atomic_load((*a1 + 16));
  if (v1 != 1)
  {
    operator new();
  }

  return *a1;
}

uint64_t *sub_239F35774(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 32), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_239F35790(uint64_t *a1)
{
  result = *a1;
  if (result && atomic_fetch_add_explicit((result + 32), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    JUMPOUT(0x23EE802C0);
  }

  return result;
}

void *sub_239F357C8(void *result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return result;
}

unint64_t sub_239F357E0(uint64_t **a1)
{
  v1 = *a1;
  v3[0] = 0;
  v3[1] = 0;
  sub_239F226A4(v3, v1, v1 + 1, v1 + 2, v1 + 3);
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v3[0]));
}

BOOL sub_239F3583C(double **a1, double **a2)
{
  v2 = *a1;
  v3 = *a2;
  return **a1 == **a2 && v2[1] == v3[1] && v2[2] == v3[2] && v2[3] == v3[3];
}

uint64_t sub_239F35A04(uint64_t a1)
{
  v1 = atomic_load((*a1 + 32));
  if (v1 != 1)
  {
    operator new();
  }

  return *a1;
}

unint64_t sub_239F35AD8(unsigned __int16 *a1)
{
  v2 = a1[3];
  v3[0] = 0;
  v3[1] = 0;
  sub_239F32E68(v3, &v2, a1);
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v3[0]));
}

void *sub_239F35C44@<X0>(void *result@<X0>, void *a2@<X8>)
{
  *a2 = *result;
  a2[1] = &off_284D16978 + 1;
  return result;
}

uint64_t *sub_239F35C5C(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_239F35C78(uint64_t *a1)
{
  result = *a1;
  if (result && atomic_fetch_add_explicit((result + 16), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    JUMPOUT(0x23EE802C0);
  }

  return result;
}

void *sub_239F35CB0(void *result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return result;
}

unint64_t sub_239F35CC8(unsigned int **a1)
{
  v1 = *a1;
  v3 = (*a1)[3];
  v4[0] = 0;
  v4[1] = 0;
  sub_239F33544(v4, &v3, v1);
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v4[0]));
}

BOOL sub_239F35D24(float **a1, float **a2)
{
  v2 = *a1;
  v3 = *a2;
  return (*a1)[3] == (*a2)[3] && *v2 == *v3 && v2[1] == v3[1] && v2[2] == v3[2];
}

uint64_t *sub_239F35EE8(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 32), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_239F35F04(uint64_t *a1)
{
  result = *a1;
  if (result && atomic_fetch_add_explicit((result + 32), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    JUMPOUT(0x23EE802C0);
  }

  return result;
}

void *sub_239F35F3C(void *result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return result;
}

unint64_t sub_239F35F54(uint64_t **a1)
{
  v1 = *a1;
  v3 = (*a1)[3];
  v4[0] = 0;
  v4[1] = 0;
  sub_239F33C44(v4, &v3, v1);
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v4[0]));
}

BOOL sub_239F35FB0(double **a1, double **a2)
{
  v2 = *a1;
  v3 = *a2;
  return (*a1)[3] == (*a2)[3] && *v2 == *v3 && v2[1] == v3[1] && v2[2] == v3[2];
}

uint64_t *sub_239F36174(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 64), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_239F36190(uint64_t *a1)
{
  result = *a1;
  if (result && atomic_fetch_add_explicit((result + 64), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    JUMPOUT(0x23EE802C0);
  }

  return result;
}

void *sub_239F361C8(void *result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return result;
}

unint64_t sub_239F361E0(unsigned int **a1)
{
  v1 = *a1;
  v2 = *a1 + 7;
  v3 = *a1 + 8;
  v4 = *a1 + 9;
  v5 = *a1 + 10;
  v6 = *a1 + 11;
  v7 = *a1 + 12;
  v8 = *a1 + 13;
  v9 = *a1 + 14;
  v10 = *a1 + 15;
  v12[0] = 0;
  v12[1] = 0;
  sub_239F21768(v12, v1, v1 + 1, v1 + 2, v1 + 3, v1 + 4, v1 + 5, v1 + 6, v2, v3, v4, v5, v6, v7, v8, v9, v10);
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v12[0]));
}

uint64_t sub_239F363C0(__int128 **a1)
{
  v1 = atomic_load(*a1 + 16);
  if (v1 != 1)
  {
    operator new();
  }

  return *a1;
}

uint64_t *sub_239F36478(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 128), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_239F36494(uint64_t *a1)
{
  result = *a1;
  if (result && atomic_fetch_add_explicit((result + 128), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    JUMPOUT(0x23EE802C0);
  }

  return result;
}

void *sub_239F364CC(void *result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return result;
}

unint64_t sub_239F364E4(uint64_t **a1)
{
  v1 = *a1;
  v2 = *a1 + 7;
  v3 = *a1 + 8;
  v4 = *a1 + 9;
  v5 = *a1 + 10;
  v6 = *a1 + 11;
  v7 = *a1 + 12;
  v8 = *a1 + 13;
  v9 = *a1 + 14;
  v10 = *a1 + 15;
  v12[0] = 0;
  v12[1] = 0;
  sub_239F22278(v12, v1, v1 + 1, v1 + 2, v1 + 3, v1 + 4, v1 + 5, v1 + 6, v2, v3, v4, v5, v6, v7, v8, v9, v10);
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v12[0]));
}

uint64_t sub_239F366D4(__int128 **a1)
{
  v1 = atomic_load(*a1 + 32);
  if (v1 != 1)
  {
    operator new();
  }

  return *a1;
}

uint64_t sub_239F3679C(uint64_t a1, unint64_t a2, void *a3)
{
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 56) = 1065353216;
  *(a1 + 64) = 0;
  *(a1 + 80) = 0u;
  sub_239F368E4(a1, a2, a3, 0);
  for (i = 0; i != 3; ++i)
  {
    v6 = *a1;
    v7 = *(a1 + 8);
    if (*a1 == v7)
    {
      v8 = 0;
    }

    else
    {
      v8 = 0;
      v9 = 0.0;
      do
      {
        v10 = *v6;
        v11 = vmulq_f32(*(a1 + 80), sub_239EC3D28(*v6));
        if ((vaddv_f32(*v11.f32) + v11.f32[2]) > v9)
        {
          v12 = vmulq_f32(sub_239EC3D28(v10), *(a1 + 80));
          v9 = vaddv_f32(*v12.f32) + v12.f32[2];
          v8 = v10;
        }

        ++v6;
      }

      while (v6 != v7);
      v6 = *a1;
    }

    *(a1 + 8) = v6;
    sub_239F368E4(a1, v8, a3, 0);
  }

  v13 = *a1;
  v14 = *(a1 + 8);
  while (v13 != v14)
  {
    v15 = *v13++;
    *(v15 + 256) = a1;
  }

  return a1;
}

void sub_239F368C0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_239F368E4(uint64_t a1, unint64_t a2, void *a3, char a4)
{
  v97 = *MEMORY[0x277D85DE8];
  v90 = 0u;
  memset(v89, 0, sizeof(v89));
  v91.n128_u64[0] = a2;
  v91.n128_u64[1] = a2;
  sub_239F381B4(v89, &v91);
  v77 = *(a2 + 80);
  v74 = *(a2 + 64);
  v79 = sub_239EC3D28(a2);
  v76 = sub_239EC3D28(a2);
  v8 = *(&v90 + 1);
  if (*(&v90 + 1))
  {
    v9 = vsubq_f32(v77, v74);
    v10 = vmulq_f32(v9, v9);
    *&v11 = vaddv_f32(*v10.f32) + v10.f32[2];
    v12 = vrsqrte_f32(v11);
    v13 = vmul_f32(vrsqrts_f32(v11, vmul_f32(v12, v12)), v12);
    v75 = vmulq_n_f32(v9, vmul_f32(v13, vrsqrts_f32(v11, vmul_f32(v13, v13))).f32[0]);
    v14 = vmlaq_f32(vnegq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v75, v75), v75, 0xCuLL), v79)), vextq_s8(vuzp1q_s32(v79, v79), v79, 0xCuLL), v75);
    v15 = vmulq_f32(v14, v14);
    v10.f32[0] = (v15.f32[2] + v15.f32[0]) + v15.f32[1];
    v16 = vextq_s8(vuzp1q_s32(v14, v14), v14, 0xCuLL);
    *v14.f32 = vrsqrte_f32(v10.u32[0]);
    *v14.f32 = vmul_f32(vrsqrts_f32(v10.u32[0], vmul_f32(*v14.f32, *v14.f32)), *v14.f32);
    v73 = vmulq_n_f32(v16, vmul_f32(*v14.f32, vrsqrts_f32(v10.u32[0], vmul_f32(*v14.f32, *v14.f32))).f32[0]);
    v17 = vdup_n_s32(0x3EAAAAABu);
    do
    {
      v18 = (*(*(&v89[0] + 1) + ((v90 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v90);
      v19 = *v18;
      v20 = v18[1];
      *&v90 = v90 + 1;
      *(&v90 + 1) = v8 - 1;
      if (v90 >= 0x200)
      {
        operator delete(**(&v89[0] + 1));
        *(&v89[0] + 1) += 8;
        *&v90 = v90 - 256;
      }

      v21 = *a1;
      v22 = *(a1 + 8);
      if (*a1 != v22)
      {
        while (*v21 != v19)
        {
          if (++v21 == v22)
          {
            goto LABEL_10;
          }
        }
      }

      if (v21 == v22)
      {
LABEL_10:
        v80 = sub_239EC3D28(v19);
        v78 = sub_239EC3D28(v20);
        v23 = sub_239EC3D28(v19);
        if (*a1 == *(a1 + 8) || (v24 = vmulq_f32(v78, v80), v25 = vmulq_f32(*(a1 + 80), v23), v26 = vextq_s8(vzip1q_s32(v25, v25), vuzp1q_s32(v25, v24), 0xCuLL), ((*&v24.i32[1] + *&v24.i32[2]) + vaddv_f32(*&vpaddq_f32(v26, v26))) > 1.8))
        {
          v27 = *(a2 + 64);
          v28 = *(v19 + 64);
          v29 = *(v19 + 80);
          v30 = vmulq_f32(vsubq_f32(v28, v27), v76);
          v31 = vsubq_f32(v28, vmlaq_n_f32(v27, v76, vaddv_f32(*v30.f32) + v30.f32[2]));
          v32 = vmulq_f32(v31, v75);
          v33 = vmulq_f32(v31, v73);
          *(v19 + 16) = vmul_f32(vadd_f32(vadd_f32(vzip1_s32(*v32.i8, *v33.i8), vzip2_s32(*v32.i8, *v33.i8)), vzip1_s32(*&vextq_s8(v32, v32, 8uLL), *&vextq_s8(v33, v33, 8uLL))), v17);
          v34 = *(a2 + 64);
          v35 = vmulq_f32(vsubq_f32(v29, v34), v76);
          v36 = vsubq_f32(v29, vmlaq_n_f32(v34, v76, vaddv_f32(*v35.f32) + v35.f32[2]));
          v37 = vmulq_f32(v36, v75);
          v38 = vmulq_f32(v36, v73);
          *(v19 + 24) = vmul_f32(vadd_f32(vadd_f32(vzip1_s32(*v37.i8, *v38.i8), vzip2_s32(*v37.i8, *v38.i8)), vzip1_s32(*&vextq_s8(v37, v37, 8uLL), *&vextq_s8(v38, v38, 8uLL))), v17);
          v39 = *(v19 + 96);
          v40 = *(a2 + 64);
          v41 = vmulq_f32(vsubq_f32(v39, v40), v76);
          v42 = vsubq_f32(v39, vmlaq_n_f32(v40, v76, vaddv_f32(*v41.f32) + v41.f32[2]));
          v43 = vmulq_f32(v42, v75);
          v44 = vmulq_f32(v42, v73);
          *(v19 + 32) = vmul_f32(vadd_f32(vadd_f32(vzip1_s32(*v43.i8, *v44.i8), vzip2_s32(*v43.i8, *v44.i8)), vzip1_s32(*&vextq_s8(v43, v43, 8uLL), *&vextq_s8(v44, v44, 8uLL))), v17);
          v45 = *a1;
          v46 = *(a1 + 8);
          if (*a1 == v46)
          {
            goto LABEL_23;
          }

          v47 = 0;
          do
          {
            v48 = *v45;
            sub_239EC3880(*v45, &v91, *(v19 + 16));
            if (v92 && !sub_239EC3D30(v48, *(v19 + 64)) || (sub_239EC3880(v48, &v87, *(v19 + 24)), v88) && !sub_239EC3D30(v48, *(v19 + 80)) || (sub_239EC3880(v48, &v85, *(v19 + 32)), v86) && !sub_239EC3D30(v48, *(v19 + 96)))
            {
              v47 = 1;
            }

            ++v45;
          }

          while (v45 != v46);
          if ((v47 & 1) == 0)
          {
LABEL_23:
            v50 = *(a1 + 8);
            v49 = *(a1 + 16);
            if (v50 >= v49)
            {
              v52 = (v50 - *a1) >> 3;
              if ((v52 + 1) >> 61)
              {
                sub_239E797B4();
              }

              v53 = v49 - *a1;
              v54 = v53 >> 2;
              if (v53 >> 2 <= (v52 + 1))
              {
                v54 = v52 + 1;
              }

              if (v53 >= 0x7FFFFFFFFFFFFFF8)
              {
                v55 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v55 = v54;
              }

              if (v55)
              {
                sub_239E7C684(a1, v55);
              }

              *(8 * v52) = v19;
              v51 = 8 * v52 + 8;
              v56 = *(a1 + 8) - *a1;
              v57 = (8 * v52 - v56);
              memcpy(v57, *a1, v56);
              v58 = *a1;
              *a1 = v57;
              *(a1 + 8) = v51;
              *(a1 + 16) = 0;
              if (v58)
              {
                operator delete(v58);
              }
            }

            else
            {
              *v50 = v19;
              v51 = (v50 + 1);
            }

            *(a1 + 8) = v51;
            v59 = *a1;
            v81 = *(a1 + 80);
            v60 = sub_239EC3D28(v19);
            v61 = (v51 - v59) >> 3;
            *v62.i32 = v61;
            v63 = v61 + -1.0;
            v64 = vmlaq_n_f32(v60, v81, v63);
            __asm { FMOV            V1.4S, #1.0 }

            *(a1 + 80) = vmulq_f32(v64, vdivq_f32(_Q1, vdupq_lane_s32(v62, 0)));
            v87 = 0u;
            v88 = 0u;
            sub_239EC3480(&v87, *(v19 + 64), *(v19 + 80));
            v85 = 0u;
            v86 = 0u;
            sub_239EC3480(&v85, *(v19 + 80), *(v19 + 96));
            v83 = 0u;
            v84 = 0u;
            sub_239EC3480(&v83, *(v19 + 96), *(v19 + 64));
            v70 = 0;
            v91 = v87;
            v92 = v88;
            v93 = v85;
            v94 = v86;
            v95 = v83;
            v96 = v84;
            do
            {
              v71 = sub_239EC3C28(v19, a3, *(&v91 + v70), *(&v91 + v70 + 16));
              if (v71 && ((a4 & 1) != 0 || !*(v71 + 256)))
              {
                v82.n128_u64[0] = v71;
                v82.n128_u64[1] = v19;
                sub_239F381B4(v89, &v82);
              }

              v70 += 32;
            }

            while (v70 != 96);
          }
        }
      }

      v8 = *(&v90 + 1);
    }

    while (*(&v90 + 1));
  }

  return sub_239F38108(v89);
}

void sub_239F36E98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  sub_239F38108(va);
  _Unwind_Resume(a1);
}

float sub_239F36EE8(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*&v1 <= *(&v1 + 1))
  {
    LODWORD(v1) = HIDWORD(*(a1 + 32));
  }

  return *&v1;
}

void sub_239F36EFC(uint64_t a1)
{
  v18[3] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 64);
  __asm { FMOV            V9.2S, #1.0 }

  v8 = vdiv_f32(_D9, v2);
  *(a1 + 64) = vmul_f32(v8, v2);
  v9 = vmul_f32(v8, *(a1 + 32));
  *(a1 + 32) = v9;
  v10 = *a1;
  v11 = *(a1 + 8);
  if (*a1 != v11)
  {
    do
    {
      v12 = *v10++;
      sub_239EC3564(v12, v8);
    }

    while (v10 != v11);
    v9 = *(a1 + 32);
  }

  *(a1 + 64) = _D9;
  if (vcgt_f32(vdup_lane_s32(v9, 1), v9).u8[0])
  {
    *(a1 + 32) = vrev64_s32(v9);
    v13 = *a1;
    v14 = *(a1 + 8);
    if (*a1 != v14)
    {
      do
      {
        v15 = 0;
        v16 = *v13;
        v17 = &(*v13)[3];
        v18[0] = *v13 + 2;
        v18[1] = v17;
        v18[2] = v16 + 4;
        do
        {
          *v18[v15] = vrev64_s32(*v18[v15]);
          ++v15;
        }

        while (v15 != 3);
        ++v13;
      }

      while (v13 != v14);
    }
  }
}

void sub_239F37014(uint64_t a1, float32x2_t a2)
{
  *(a1 + 64) = vmul_f32(*(a1 + 64), a2);
  *(a1 + 32) = vmul_f32(*(a1 + 32), a2);
  v3 = *a1;
  v4 = *(a1 + 8);
  while (v3 != v4)
  {
    v5 = *v3++;
    sub_239EC3564(v5, a2);
  }
}

void sub_239F37070(float32x2_t ***a1)
{
  sub_239F37200(a1);
  *&v2 = vmul_lane_f32(*&v2, *&v2, 1);
  v3 = *a1;
  v4 = a1[1];
  while (v3 != v4)
  {
    v5 = *v3++;
    *(v5 + 40) = *(v5 + 16);
    *(v5 + 56) = *(v5 + 32);
  }

  v6 = 0.0;
  v7 = 0.0;
  v8 = 0.0;
  do
  {
    v26 = v2;
    v9 = __sincosf_stret(v8);
    v10 = *a1;
    v11 = a1[1];
    if (*a1 != v11)
    {
      v12.f32[0] = -v9.__sinval;
      v12.i32[1] = LODWORD(v9.__cosval);
      do
      {
        v13 = *v10++;
        v14 = vmla_lane_f32(vmul_n_f32(__PAIR64__(LODWORD(v9.__sinval), LODWORD(v9.__cosval)), COERCE_FLOAT(*&v13[3])), v12, v13[3], 1);
        v13[2] = vmla_lane_f32(vmul_n_f32(__PAIR64__(LODWORD(v9.__sinval), LODWORD(v9.__cosval)), COERCE_FLOAT(*&v13[2])), v12, v13[2], 1);
        v13[3] = v14;
        v13[4] = vmla_lane_f32(vmul_n_f32(__PAIR64__(LODWORD(v9.__sinval), LODWORD(v9.__cosval)), COERCE_FLOAT(*&v13[4])), v12, v13[4], 1);
      }

      while (v10 != v11);
    }

    sub_239F37200(a1);
    v16 = vmul_lane_f32(v15, v15, 1).f32[0];
    v2 = v26;
    if (v16 < *&v26)
    {
      v6 = v8;
      *&v2 = v16;
    }

    v17 = *a1;
    v18 = a1[1];
    while (v17 != v18)
    {
      v19 = *v17++;
      *(v19 + 16) = *(v19 + 40);
      *(v19 + 32) = *(v19 + 56);
    }

    v8 = v7 + 0.0436332313;
    v7 = v8;
  }

  while (v8 < 3.14159265);
  v20 = __sincosf_stret(v6);
  v21 = *a1;
  v22 = a1[1];
  if (*a1 != v22)
  {
    v23.f32[0] = -v20.__sinval;
    v23.i32[1] = LODWORD(v20.__cosval);
    do
    {
      v24 = *v21++;
      v25 = vmla_lane_f32(vmul_n_f32(__PAIR64__(LODWORD(v20.__sinval), LODWORD(v20.__cosval)), COERCE_FLOAT(*&v24[3])), v23, v24[3], 1);
      v24[2] = vmla_lane_f32(vmul_n_f32(__PAIR64__(LODWORD(v20.__sinval), LODWORD(v20.__cosval)), COERCE_FLOAT(*&v24[2])), v23, v24[2], 1);
      v24[3] = v25;
      v24[4] = vmla_lane_f32(vmul_n_f32(__PAIR64__(LODWORD(v20.__sinval), LODWORD(v20.__cosval)), COERCE_FLOAT(*&v24[4])), v23, v24[4], 1);
    }

    while (v21 != v22);
  }
}

double sub_239F37200(uint64_t **a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  v2 = a1[1];
  v3.i64[0] = *(**a1 + 16);
  v3.i64[1] = v3.i64[0];
  if (*a1 != v2)
  {
    do
    {
      v4 = 0;
      v5 = *v1;
      v11 = *(*v1 + 16);
      v12 = *(v5 + 32);
      do
      {
        v6.i64[0] = *(&v11 + v4);
        v7.i64[0] = v6.i64[0];
        v7.i64[1] = v6.i64[0];
        v8 = vcgtq_f32(v7, v3);
        v9 = vextq_s8(v3, v3, 8uLL).u64[0];
        v3.i64[1] = v6.i64[0];
        v6.i64[1] = v9;
        v3 = vbslq_s8(v8, v6, v3);
        v4 += 8;
      }

      while (v4 != 24);
      ++v1;
    }

    while (v1 != v2);
  }

  *&result = vextq_s8(v3, v3, 8uLL).u64[0];
  return result;
}

uint64_t sub_239F372BC(__n128 ***a1, __n128 a2)
{
  v3 = 0uLL;
  v40 = 0u;
  v41 = 0u;
  v42 = 1065353216;
  v4 = *a1;
  v5 = a1[1];
  if (*a1 != v5)
  {
    do
    {
      v6 = *v4;
      v43 = *v4 + 4;
      sub_239E9D254(&v40, v43, &unk_239F9BFF0, &v43)[2].i64[0] = 0;
      v43 = v6 + 5;
      sub_239E9D254(&v40, v6 + 5, &unk_239F9BFF0, &v43)[2].i64[0] = 0;
      v43 = v6 + 6;
      sub_239E9D254(&v40, v6 + 6, &unk_239F9BFF0, &v43)[2].i64[0] = 0;
      ++v4;
    }

    while (v4 != v5);
    v4 = *a1;
    v5 = a1[1];
    v3 = 0uLL;
  }

  if (v4 != v5)
  {
    do
    {
      v38 = v3;
      a2 = sub_239EC3D28(*v4);
      v3 = vaddq_f32(a2, v38);
      ++v4;
    }

    while (v4 != v5);
    v4 = *a1;
    v5 = a1[1];
  }

  v7 = *v4;
  if (v5 != v4)
  {
    a2.n128_f32[0] = ((v5 - v4) >> 3);
    __asm { FMOV            V1.4S, #1.0 }

    v39 = vmulq_f32(v3, vdivq_f32(_Q1, vdupq_lane_s32(a2.n128_u64[0], 0)));
    v13 = 0.0;
    do
    {
      v14 = *v4;
      v15 = vmulq_f32(sub_239EC3D28(*v4), v39);
      if ((vaddv_f32(*v15.f32) + v15.f32[2]) > v13)
      {
        v16 = vmulq_f32(sub_239EC3D28(v14), v39);
        v13 = vaddv_f32(*v16.f32) + v16.f32[2];
        v7 = v14;
      }

      ++v4;
    }

    while (v4 != v5);
  }

  v17 = sub_239EC3D28(v7);
  v18 = v41;
  if (v41)
  {
    v19 = vsubq_f32(v7[5], v7[4]);
    v20 = vmulq_f32(v19, v19);
    v21 = vaddv_f32(*v20.f32);
    *v20.f32 = vrsqrte_f32(COERCE_UNSIGNED_INT(v21 + v20.f32[2]));
    *v20.f32 = vmul_f32(vrsqrts_f32(COERCE_UNSIGNED_INT(v21 + v20.f32[2]), vmul_f32(*v20.f32, *v20.f32)), *v20.f32);
    v22 = vmulq_n_f32(v19, vmul_f32(*v20.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v21 + v20.f32[2]), vmul_f32(*v20.f32, *v20.f32))).f32[0]);
    v23 = vmlaq_f32(vnegq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v22, v22), v22, 0xCuLL), v17)), vextq_s8(vuzp1q_s32(v17, v17), v17, 0xCuLL), v22);
    v24 = vextq_s8(vuzp1q_s32(v23, v23), v23, 0xCuLL);
    v25 = vmulq_f32(v23, v23);
    *&v26 = (v25.f32[2] + v25.f32[0]) + v25.f32[1];
    *v25.f32 = vrsqrte_f32(v26);
    *v25.f32 = vmul_f32(vrsqrts_f32(v26, vmul_f32(*v25.f32, *v25.f32)), *v25.f32);
    v27 = vmulq_n_f32(v24, vmul_f32(*v25.f32, vrsqrts_f32(v26, vmul_f32(*v25.f32, *v25.f32))).f32[0]);
    do
    {
      v28 = v18[1];
      v29 = v7[4];
      v30 = vmulq_f32(vsubq_f32(v28, v29), v17);
      v31 = vsubq_f32(v28, vmlaq_n_f32(v29, v17, vaddv_f32(*v30.f32) + v30.f32[2]));
      v32 = vmulq_f32(v31, v22);
      v32.f32[0] = (vaddv_f32(*v32.f32) + v32.f32[2]) * 0.33333;
      v33 = vmulq_f32(v27, v31);
      v32.f32[1] = (vaddv_f32(*v33.f32) + v33.f32[2]) * 0.33333;
      v18[2].i64[0] = v32.i64[0];
      v18 = v18->i64[0];
    }

    while (v18);
  }

  v34 = *a1;
  v35 = a1[1];
  if (*a1 != v35)
  {
    do
    {
      v36 = *v34;
      v43 = *v34 + 4;
      v36[1].i64[0] = sub_239E9D254(&v40, v43, &unk_239F9BFF0, &v43)[2].i64[0];
      v43 = v36 + 5;
      v36[1].i64[1] = sub_239E9D254(&v40, v36 + 5, &unk_239F9BFF0, &v43)[2].i64[0];
      v43 = v36 + 6;
      v36[2].i64[0] = sub_239E9D254(&v40, v36 + 6, &unk_239F9BFF0, &v43)[2].i64[0];
      ++v34;
    }

    while (v34 != v35);
  }

  sub_239E7B644(&v40);
  return 1;
}

void sub_239F375F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_239E7B644(va);
  _Unwind_Resume(a1);
}

uint64_t sub_239F3761C(uint64_t a1, double a2)
{
  v29[7] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  if (vmvn_s8(vcge_f32(*&a2, v2)).u8[0])
  {
    return 0;
  }

  v4 = vcgt_f32(vadd_f32(*(a1 + 48), v2), *&a2);
  if ((v4.i8[0] & 1) == 0)
  {
    return 0;
  }

  result = 0;
  if (*(&a2 + 1) >= v2.f32[1] && (v4.i8[4] & 1) != 0)
  {
    v6 = &dword_27DF912D0;
    v7 = vld1_dup_f32(v6);
    v8 = vadd_f32(v7, *&a2);
    v28 = a2;
    v29[0] = __PAIR64__(v8.u32[1], LODWORD(a2));
    v29[1] = __PAIR64__(v8.u32[1], LODWORD(a2));
    v29[2] = v8;
    v22 = v8;
    v23 = a2;
    v29[3] = v8;
    v29[4] = __PAIR64__(HIDWORD(a2), v8.u32[0]);
    v29[5] = __PAIR64__(HIDWORD(a2), v8.u32[0]);
    *&v29[6] = a2;
    v9 = *a1;
    v10 = *(a1 + 8);
    if (*a1 != v10)
    {
      while (1)
      {
        sub_239EC3880(*v9, &v24, a2);
        if (v25)
        {
          return 1;
        }

        ++v9;
        a2 = v23;
        if (v9 == v10)
        {
          v9 = *a1;
          v10 = *(a1 + 8);
          break;
        }
      }
    }

    if (v9 != v10)
    {
      while (1)
      {
        v11 = *v9;
        v12 = sub_239EC3CE0(*v9);
        *v13.i64 = v23;
        *&v13.i64[1] = v12;
        v14.i64[1] = v22;
        if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vcgeq_f32(v14, v13)))) & 1) == 0)
        {
          break;
        }

LABEL_11:
        if (++v9 == v10)
        {
          return 0;
        }
      }

      v15 = 0;
      v16 = *v11[3].f32;
      v17 = v11[4];
      v24 = *v11[2].f32;
      v25 = v16;
      v26 = v17;
      v27 = v24;
LABEL_14:
      v18 = *(&v24 + v15);
      v19 = *(&v24 + v15 + 8);
      v20 = v29;
      v21 = 64;
      while (!sub_239EC2D34(v18, v19, v20[-1], *v20))
      {
        v20 += 2;
        v21 -= 16;
        if (!v21)
        {
          v15 += 16;
          if (v15 != 48)
          {
            goto LABEL_14;
          }

          goto LABEL_11;
        }
      }

      return 1;
    }

    return 0;
  }

  return result;
}

void sub_239F37800(float32x2_t ***a1@<X0>, void *a2@<X8>, float32x2_t a3@<D0>)
{
  v39[7] = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v5 = a1[1];
  if (*a1 == v5)
  {
LABEL_5:
    v8 = &dword_27DF912D0;
    v9 = vld1_dup_f32(v8);
    v10 = vadd_f32(v9, a3);
    v38 = a3;
    v39[0] = __PAIR64__(v10.u32[1], a3.u32[0]);
    v39[1] = __PAIR64__(a3.u32[1], v10.u32[0]);
    v39[2] = a3;
    v39[3] = __PAIR64__(v10.u32[1], a3.u32[0]);
    v39[4] = v10;
    v33 = v10;
    v39[5] = v10;
    for (v39[6] = __PAIR64__(a3.u32[1], v10.u32[0]); v4 != v5; ++v4)
    {
      v11 = *v4;
      v12 = sub_239EC3CE0(*v4);
      *v13.f32 = a3;
      *&v13.i64[1] = v12;
      v14.i64[1] = v33;
      if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vcgeq_f32(v14, v13)))) & 1) == 0)
      {
        v15 = 0;
        v16 = *v11[3].f32;
        v17 = v11[4];
        v35[0] = *v11[2].f32;
        v35[1] = v16;
        v36 = v17;
        v37 = *&v35[0];
        while (2)
        {
          v18 = *&v35[v15];
          v19 = *(&v35[v15] + 1);
          v20 = v39;
          v21 = 64;
          do
          {
            v22 = v20[-1];
            v23 = *v20;
            if (sub_239EC2D34(*&v18, *&v19, v22, *v20))
            {
              v24 = sub_239EC2D98(v18, v19, v22, v23);
              v25 = vsub_f32(sub_239EC3DB0(v11), *&v24);
              v26 = vmul_f32(v25, v25);
              v26.i32[0] = vadd_f32(v26, vdup_lane_s32(v26, 1)).u32[0];
              v27 = vrsqrte_f32(v26.u32[0]);
              v28 = vmul_f32(vrsqrts_f32(v26.u32[0], vmul_f32(v27, v27)), v27);
              v29 = vrsqrts_f32(v26.u32[0], vmul_f32(v28, v28));
              v30 = *&dword_27DF912D0 * 0.1;
              v31 = vsub_f32(*&v24, sub_239EC3DB0(v11));
              v32 = vmul_f32(v31, v31);
              v32.f32[0] = sqrtf(vaddv_f32(v32));
              if (v30 < v32.f32[0])
              {
                v32.f32[0] = v30;
              }

              a2[1] = 0;
              a2[2] = 0;
              *a2 = 0;
              sub_239EC3880(v11, a2, COERCE_DOUBLE(vmla_n_f32(*&v24, v25, vmul_f32(vmul_f32(v28, v32), v29).f32[0])));
              if (!a2[2])
              {
                a2[2] = v11;
                *a2 = vdup_n_s32(0x3EA8F5C3u);
                *(a2 + 2) = 1051595899;
              }

              return;
            }

            v20 += 2;
            v21 -= 16;
          }

          while (v21);
          if (++v15 != 3)
          {
            continue;
          }

          break;
        }
      }
    }

    *a2 = 0;
    a2[1] = 0;
    *a2 = -1082130432;
    a2[2] = 0;
  }

  else
  {
    while (1)
    {
      v7 = *v4;
      *a2 = 0;
      a2[1] = 0;
      a2[2] = 0;
      sub_239EC3880(v7, a2, *&a3);
      if (a2[2])
      {
        break;
      }

      if (++v4 == v5)
      {
        v4 = *a1;
        v5 = a1[1];
        goto LABEL_5;
      }
    }
  }
}

void sub_239F37AAC(uint64_t a1, double a2, double a3, double a4, double a5, double a6)
{
  v7 = *(a1 + 24);
  v6 = *(a1 + 32);
  LODWORD(a6) = dword_27DF912D0;
  v8 = vmul_n_f32(vrndm_f32(vmul_n_f32(v7, dword_27DF912CC)), *&dword_27DF912D0);
  v9 = vrndm_f32(vmul_n_f32(vadd_f32(v6, v7), dword_27DF912CC));
  v10 = vmla_n_f32(vneg_f32(v8), v9, *&dword_27DF912D0);
  *(a1 + 24) = v8;
  *(a1 + 32) = v10;
  v9.f32[0] = *&a6 + *&a6;
  v11 = vsub_f32(v10, vdup_lane_s32(v9, 0));
  *(a1 + 40) = vadd_f32(v8, vdup_lane_s32(*&a6, 0));
  *(a1 + 48) = v11;
  *(a1 + 56) = LODWORD(a6);
  v12 = *a1;
  v13 = *(a1 + 8);
  if (*a1 != v13)
  {
    v15 = vdiv_f32(v11, v6);
    do
    {
      v16 = *v12++;
      sub_239EC3564(v16, v15);
      sub_239EC3584(v16, *(a1 + 40));
    }

    while (v12 != v13);
  }
}

float sub_239F37B70(float32x4_t ***a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = 0.0;
  while (v1 != v2)
  {
    v4 = *v1++;
    v3 = sub_239EC361C(v4) + v3;
  }

  return v3;
}

float sub_239F37BB8(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = 0.0;
  while (v1 != v2)
  {
    v4 = *v1++;
    v3 = sub_239EC35A4(v4) + v3;
  }

  return v3;
}

void sub_239F37C10(uint64_t a1)
{
  v2 = sub_239F37200(a1);
  v4 = v3;
  v5 = *a1;
  v6 = *(a1 + 8);
  if (*a1 != v6)
  {
    v7 = vneg_f32(*&v2);
    do
    {
      v8 = *v5++;
      sub_239EC3584(v8, v7);
    }

    while (v5 != v6);
  }

  *(a1 + 32) = v4;
}

float32x2_t sub_239F37C70(float32x2_t **a1, __n128 a2)
{
  v3 = *a1;
  if (v3)
  {
    sub_239F37C70(v3, a2);
  }

  v4 = a1[1];
  if (v4)
  {
    sub_239F37C70(v4, a2);
  }

  v5 = a1[2];
  if (v5)
  {
    *(*&v5 + 64) = vmul_n_f32(*(*&v5 + 64), a2.n128_f32[0]);
    *(*&v5 + 32) = vmul_n_f32(*(*&v5 + 32), a2.n128_f32[0]);
    v6 = **&v5;
    v7 = *(*&v5 + 8);
    if (**&v5 != v7)
    {
      v8 = vdup_lane_s32(a2.n128_u64[0], 0);
      do
      {
        v9 = *v6++;
        sub_239EC3564(v9, v8);
      }

      while (v6 != v7);
    }
  }

  result = vmul_n_f32(a1[3], a2.n128_f32[0]);
  v11 = vmul_n_f32(a1[4], a2.n128_f32[0]);
  a1[3] = result;
  a1[4] = v11;
  return result;
}

uint64_t sub_239F37D2C(float32x2_t **a1, uint64_t **a2)
{
  v3 = a1;
  v14[3] = *MEMORY[0x277D85DE8];
  v4 = *a1;
  if (!v4)
  {
LABEL_4:
    v5 = v3[4];
    v6 = a2[4];
    if ((vcgt_f32(v6, v5).u32[0] & 1) != 0 || v5.f32[1] < v6.f32[1])
    {
      if (v5.f32[0] < v6.f32[1] || v5.f32[1] < v6.f32[0])
      {
        return 0;
      }

      a2[4] = vrev64_s32(v6);
      v9 = *a2;
      v10 = a2[1];
      if (*a2 != v10)
      {
        do
        {
          v11 = 0;
          v12 = *v9;
          v13 = *v9 + 24;
          v14[0] = *v9 + 16;
          v14[1] = v13;
          v14[2] = v12 + 32;
          do
          {
            *v14[v11] = vrev64_s32(*v14[v11]);
            ++v11;
          }

          while (v11 != 3);
          ++v9;
        }

        while (v9 != v10);
      }
    }

    operator new();
  }

  while ((sub_239F37D2C(v4, a2) & 1) == 0)
  {
    v3 = v3[1];
    v4 = *v3;
    if (!*v3)
    {
      goto LABEL_4;
    }
  }

  return 1;
}

void sub_239F37ED4(float32x2_t **a1, double a2, double a3, double a4, double a5, double a6)
{
  v7 = a1[3];
  v8 = vadd_f32(a1[4], v7);
  LODWORD(a5) = dword_27DF912D0;
  v9 = vmul_n_f32(vrndm_f32(vmul_n_f32(v7, dword_27DF912CC)), *&dword_27DF912D0);
  v10 = vrndm_f32(vmul_n_f32(v8, dword_27DF912CC));
  v11 = vmla_n_f32(vneg_f32(v9), v10, *&dword_27DF912D0);
  a1[3] = v9;
  a1[4] = v11;
  v12 = *a1;
  if (v12)
  {
    sub_239F37ED4(v12, *&v9, *&v10, *&v11, a5, a6);
  }

  v13 = a1[1];
  if (v13)
  {
    sub_239F37ED4(v13, *&v9, *&v10, *&v11, a5, a6);
  }

  v14 = a1[2];
  if (v14)
  {

    sub_239F37AAC(v14, *&v9, *&v10, *&v11, a5, a6);
  }
}

uint64_t sub_239F37F74(uint64_t result, double a2)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = a2;
  return result;
}

void *sub_239F37F84(void *a1)
{
  v2 = *a1;
  if (v2)
  {
    sub_239F37F84(v2);
    if (*a1)
    {
      MEMORY[0x23EE802C0](*a1, 0x1020C4084B17629);
    }
  }

  result = a1[1];
  if (result)
  {
    sub_239F37F84(result);
    result = a1[1];
    if (result)
    {
      result = MEMORY[0x23EE802C0](result, 0x1020C4084B17629);
    }
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  return result;
}

float32x2_t sub_239F37FFC(float32x2_t **a1)
{
  v2 = *a1;
  if (v2)
  {
    result = sub_239F37FFC(v2);
  }

  v4 = a1[1];
  if (v4)
  {
    result = sub_239F37FFC(v4);
  }

  v5 = a1[2];
  if (v5)
  {
    result = vadd_f32(v5[3], a1[3]);
    v5[3] = result;
  }

  return result;
}

float32x2_t sub_239F3804C(float32x2_t **a1, __n128 a2)
{
  a2.n128_u64[0] = a1[4];
  a2.n128_f32[0] = 1.0 / a2.n128_f32[0];
  return sub_239F37C70(a1, a2);
}

float32x2_t *sub_239F3805C(void *a1, double a2)
{
  for (i = a1[3]; (vmvn_s8(vcge_f32(*&a2, i)).u8[0] & 1) == 0; i = a1[3])
  {
    v5 = a1[4];
    if (*&a2 >= (v5.f32[0] + i.f32[0]))
    {
      break;
    }

    v3 = 0;
    if (*(&a2 + 1) < i.f32[1])
    {
      return v3;
    }

    if ((vcgt_f32(vadd_f32(v5, i), *&a2).i32[1] & 1) == 0)
    {
      return v3;
    }

    v3 = a1[2];
    if (!v3)
    {
      return v3;
    }

    if (!*a1)
    {
      return 0;
    }

    v6 = a1[1];
    if (!v6)
    {
      return 0;
    }

    v7 = v3[4];
    a1 = *a1;
    if (*&a2 < (v7.f32[0] + i.f32[0]))
    {
      a1 = v6;
      if (vcgt_f32(vadd_f32(v7, i), *&a2).i32[1])
      {
        return v3;
      }
    }
  }

  return 0;
}

uint64_t sub_239F38108(void *a1)
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
    v5 = 128;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 256;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return sub_239EFAD30(a1);
}

__n128 sub_239F381B4(unint64_t *a1, __n128 *a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 32 * (v4 - v5) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    sub_239F38240(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  result = *a2;
  *(*(v5 + ((v7 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v7) = *a2;
  ++a1[5];
  return result;
}

void sub_239F38240(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x100;
  v3 = v1 - 256;
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
    sub_239E7C684(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  sub_239F38414(a1, &v9);
}

void sub_239F383C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_239F38414(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 2;
      }

      sub_239E7C684(a1, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v7];
    a1[2] = &v9[v10];
  }

  *v4 = *a2;
  a1[2] += 8;
}

void sub_239F3851C(const void **a1, void *a2)
{
  v4 = a1[1];
  if (v4 == *a1)
  {
    v6 = a1[2];
    v7 = a1[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_239E7C684(a1, v9);
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

void sub_239F38628(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 2;
      }

      sub_239E7C684(a1[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v7];
    a1[2] = &v9[v10];
  }

  *v4 = *a2;
  a1[2] += 8;
}

void sub_239F38730(const void **a1, void *a2)
{
  v4 = a1[1];
  if (v4 == *a1)
  {
    v6 = a1[2];
    v7 = a1[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_239E7C684(a1[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = a1[2];
    }

    a1[1] = v5;
    a1[2] = &v6[8 * v8];
  }

  else
  {
    v5 = a1[1];
  }

  *(v5 - 1) = *a2;
  a1[1] = a1[1] - 8;
}

float sub_239F3883C(float a1, double a2)
{
  v2 = (*&a2 + a1) * 0.366025403;
  *&v2 = v2;
  *(&a2 + 1) = a1;
  v3 = vadd_f32(vdup_lane_s32(*&v2, 0), *&a2);
  v10 = vadd_s32(vmvn_s8(vcgtz_f32(v3)), vcvt_s32_f32(v3));
  v4 = v10.i8[0];
  v5 = (v10.i32[1] + v10.i32[0]) * 0.211324865;
  *&v5 = v5;
  _D4 = vadd_f32(vsub_f32(vdup_lane_s32(*&v5, 0), vcvt_f32_s32(v10)), *&a2);
  _S5 = _D4.i32[1];
  v8 = _D4.f32[1] <= _D4.f32[0];
  v9 = _D4.f32[1] > _D4.f32[0];
  v10.i32[0] = 0;
  v11 = 1.0;
  if (_D4.f32[1] <= _D4.f32[0])
  {
    v12 = 0.0;
  }

  else
  {
    v12 = 1.0;
  }

  v13 = (_D4.f32[1] - v12) + 0.211324865;
  if (_D4.f32[1] > _D4.f32[0])
  {
    v11 = 0.0;
  }

  v14 = (_D4.f32[0] - v11) + 0.211324865;
  __asm { FMOV            V1.2S, #-1.0 }

  v20 = vaddq_f64(vcvtq_f64_f32(vadd_f32(_D4, _D1)), vdupq_n_s64(0x3FDB0CB17400D8C3uLL));
  __asm { FMLA            S1, S5, V4.S[1] }

  v21 = 0.5 - _D1.f32[0];
  _NF = (0.5 - _D1.f32[0]) < 0.0;
  v22 = 0.0;
  if (!_NF)
  {
    v23 = (v21 * v21) * (v21 * v21);
    if ((byte_239F9E548[byte_239F9E548[v4] + v10.u8[4]] & 4) != 0)
    {
      v24 = _D4.f32[0];
    }

    else
    {
      v24 = _D4.f32[1];
    }

    if ((byte_239F9E548[byte_239F9E548[v4] + v10.u8[4]] & 4) != 0)
    {
      _D4.f32[0] = _D4.f32[1];
    }

    v25 = -v24;
    if ((byte_239F9E548[byte_239F9E548[v4] + v10.u8[4]] & 1) == 0)
    {
      v25 = v24;
    }

    v26 = -2.0;
    if ((byte_239F9E548[byte_239F9E548[v4] + v10.u8[4]] & 2) == 0)
    {
      v26 = 2.0;
    }

    v22 = v23 * (v25 + (_D4.f32[0] * v26));
  }

  v27 = vcvt_f32_f64(v20);
  v28 = 0.5 - ((v13 * v13) + (v14 * v14));
  if (v28 >= 0.0)
  {
    *v10.i32 = (v28 * v28) * (v28 * v28);
    v29 = byte_239F9E548[v10.u8[4] + v9 + byte_239F9E548[v4 + v8]];
    if ((v29 & 4) != 0)
    {
      v30 = v14;
    }

    else
    {
      v30 = v13;
    }

    if ((v29 & 4) == 0)
    {
      v13 = v14;
    }

    v31 = -v30;
    if ((v29 & 1) == 0)
    {
      v31 = v30;
    }

    v32 = -2.0;
    if ((v29 & 2) == 0)
    {
      v32 = 2.0;
    }

    *v10.i32 = *v10.i32 * (v31 + (v13 * v32));
  }

  v33 = 0.5 - vaddv_f32(vmul_f32(v27, v27));
  v34 = 0.0;
  if (v33 >= 0.0)
  {
    v35 = (v33 * v33) * (v33 * v33);
    v36 = v27.f32[1];
    if ((byte_239F9E548[v10.u8[4] + 1 + byte_239F9E548[v4 + 1]] & 4) != 0)
    {
      v37 = v27.f32[0];
    }

    else
    {
      v37 = v27.f32[1];
    }

    if ((byte_239F9E548[v10.u8[4] + 1 + byte_239F9E548[v4 + 1]] & 4) == 0)
    {
      v36 = v27.f32[0];
    }

    v38 = -v37;
    if ((byte_239F9E548[v10.u8[4] + 1 + byte_239F9E548[v4 + 1]] & 1) == 0)
    {
      v38 = v37;
    }

    v39 = -2.0;
    if ((byte_239F9E548[v10.u8[4] + 1 + byte_239F9E548[v4 + 1]] & 2) == 0)
    {
      v39 = 2.0;
    }

    v34 = v35 * (v38 + (v36 * v39));
  }

  return ((*v10.i32 + v22) + v34) * 40.0;
}

void sub_239F3C30C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28)
{
  _Block_object_dispose(&a23, 8);

  if (__p)
  {
    a28 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_239F3D66C(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, double a9, double a10, double a11, float32x4_t a12, float32x4_t a13, float32x4_t a14, float32x4_t a15, uint64_t a16, uint64_t a17, unint64_t a18, uint64_t a19, uint64_t a20, unint64_t a21, uint64_t a22, uint64_t a23, unint64_t a24, uint64_t a25, const char *a26)
{
  if (a2)
  {
    v29 = result;
    v30 = 0;
    result = a23;
    v37 = "ed";
    v38 = xmmword_239F9C090;
    v39 = xmmword_239F9C090;
    v40 = xmmword_239F9AD10;
    do
    {
      v41 = *(v29 + v30);
      v42 = *(v29 + v30 + 1);
      v43 = *(v29 + v30 + 2);
      if (v41 * a4 + 12 <= a5 && v42 * a4 + 12 <= a5 && v43 * a4 + 12 <= a5)
      {
        v46 = v41 * a17 + 8 > a18 || v42 * a17 + 8 > a18;
        if (!v46 && v43 * a17 + 8 <= a18)
        {
          v48 = *(a16 + v41 * a17);
          v49 = vsub_f32(*(a16 + v42 * a17), v48);
          v50 = vsub_f32(*(a16 + v43 * a17), v48);
          v51 = vmul_f32(vrev64_s32(v50), v49);
          v52 = vsub_f32(v51, vdup_lane_s32(v51, 1)).f32[0];
          if (v52 == 0.0)
          {
            a13 = 0uLL;
            a12 = 0uLL;
          }

          else
          {
            v53 = a3 + v41 * a4;
            a12.i64[0] = *v53;
            a12.i32[2] = *(v53 + 8);
            v54 = a3 + v42 * a4;
            a13.i64[0] = *v54;
            a13.i32[2] = *(v54 + 8);
            v55 = a3 + v43 * a4;
            a14.i64[0] = *v55;
            a14.i32[2] = *(v55 + 8);
            v56 = vsubq_f32(a14, a12);
            v57 = vsubq_f32(a13, a12);
            v58 = 1.0 / v52;
            a12 = vmulq_n_f32(vmlaq_lane_f32(vnegq_f32(vmulq_lane_f32(v56, v49, 1)), v57, v50, 1), v58);
            a13 = vmulq_n_f32(vmlaq_n_f32(vnegq_f32(vmulq_n_f32(v57, v50.f32[0])), v56, v49.f32[0]), v58);
            a12.i32[3] = 0;
          }

          v59 = vmulq_f32(a12, a12);
          v60 = vaddv_f32(*v59.f32) + v59.f32[2];
          if (v60 <= COERCE_FLOAT(512))
          {
            v64 = v40;
            v65 = v40;
            v66 = v40;
          }

          else
          {
            v61 = v60;
            v62 = vrsqrte_f32(LODWORD(v60));
            v63 = vmul_f32(vrsqrts_f32(LODWORD(v61), vmul_f32(v62, v62)), v62);
            v64 = vmulq_n_f32(a12, vmul_f32(v63, vrsqrts_f32(LODWORD(v61), vmul_f32(v63, v63))).f32[0]);
            v65 = v64;
            v66 = v64;
          }

          v67 = vmulq_f32(a13, a13);
          v68 = vaddv_f32(*v67.f32) + v67.f32[2];
          a14 = v39;
          v69 = v38;
          if (v68 > COERCE_FLOAT(512))
          {
            v70 = v68;
            v71 = vrsqrte_f32(LODWORD(v68));
            v72 = vmul_f32(vrsqrts_f32(LODWORD(v68), vmul_f32(v71, v71)), v71);
            *a15.f32 = vmul_f32(v72, v72);
            a14 = vmulq_n_f32(a13, vmul_f32(v72, vrsqrts_f32(LODWORD(v70), *a15.f32)).f32[0]);
            v69 = a14;
          }

          v64.i32[3] = a12.i32[3];
          v73 = v66;
          v73.i32[3] = a12.i32[3];
          if (a22)
          {
            if (v41 * result + 12 <= a24)
            {
              v74 = v42 * result;
              if (v42 * result + 12 <= a24)
              {
                v75 = v43 * result;
                if (v43 * result + 12 <= a24)
                {
                  v76 = a22 + v41 * result;
                  *(v76 + 8) = a14.i32[2];
                  *v76 = a14.i64[0];
                  *(a22 + v74) = a14.i64[0];
                  *(a22 + v74 + 8) = a14.i32[2];
                  *(a22 + v75) = v69.i64[0];
                  *(a22 + v75 + 8) = v69.i32[2];
                  v77 = v64;
LABEL_54:
                  if (v41 * a20 + 12 <= a21)
                  {
                    v117 = v42 * a20;
                    if (v42 * a20 + 12 <= a21)
                    {
                      v118 = v43 * a20;
                      if (v43 * a20 + 12 <= a21)
                      {
                        v119 = a19 + v41 * a20;
                        *v119 = v64.i64[0];
                        *(v119 + 8) = v64.i32[2];
                        if (a25 == 786436)
                        {
                          *(v119 + 12) = v64.i32[3];
                          *(a19 + v117) = v77;
                          *(a19 + v118) = v73.i64[0];
                          v120 = (a19 + v118 + 12);
                          *(a19 + v118 + 8) = v73.i32[2];
                          v121 = 3;
                        }

                        else
                        {
                          v122 = a19 + v117;
                          *v122 = v77.i64[0];
                          *(v122 + 8) = v77.i32[2];
                          *(a19 + v118) = v73.i64[0];
                          v120 = (a19 + v118 + 8);
                          v121 = 2;
                        }

                        v140 = v73;
                        *v120 = *(&v140 | (4 * v121));
                      }
                    }
                  }
                }
              }
            }
          }

          else
          {
            if (!a6)
            {
              v123 = v73;
              v124 = v64;
              v125 = v40;
              v126 = v39;
              v127 = v38;
              v128 = a20;
              v129 = a21;
              v130 = result;
              v131 = a24;
              v132 = a25;
              v133 = a3;
              v134 = a7;
              v135 = a8;
              v137 = MEMORY[0x277CBEAD8];
              v138 = a26;
              v107 = objc_opt_class();
              v139 = NSStringFromClass(v107);
              v136 = NSStringFromSelector(v138);
              objc_msgSend_raise_format_(v137, v108, @"ModelIOException", @"[%@ %@]: Must provide either a valid normal pointer or bitangent pointer.", v113, v114, v115, v116, v109, v110, v111, v112, v139, v136);

              v64 = v124;
              v40 = v125;
              v77 = v124;
              a7 = v134;
              a8 = v135;
              a3 = v133;
              a6 = 0;
              a26 = v138;
              a24 = v131;
              a25 = v132;
              a22 = 0;
              result = v130;
              a20 = v128;
              a21 = v129;
              v37 = "[%@ %@]: Tangent data not supplied or could not be created" + 56;
              v39 = v126;
              v38 = v127;
              v73 = v123;
              goto LABEL_54;
            }

            if (v41 * a7 + 12 <= a8 && v42 * a7 + 12 <= a8 && v43 * a7 + 12 <= a8)
            {
              v78 = a6 + v41 * a7;
              a12.i64[0] = *v78;
              v79 = a12;
              v79.i32[2] = *(v78 + 8);
              a12.i32[2] = v79.i32[2];
              v80 = vmulq_f32(a12, v65);
              a15.f32[0] = vaddv_f32(*v80.f32) + v80.f32[2];
              v81 = vmlsq_lane_f32(v66, v79, *a15.f32, 0);
              v82 = vmulq_f32(v81, v81);
              v83 = vaddv_f32(*v82.f32) + v82.f32[2];
              v73 = *(v37 + 209);
              v64 = v73;
              if (v83 > COERCE_FLOAT(512))
              {
                v84 = v83;
                v85 = vrsqrte_f32(LODWORD(v83));
                v86 = vmul_f32(vrsqrts_f32(LODWORD(v84), vmul_f32(v85, v85)), v85);
                v64 = vmulq_n_f32(v81, vmul_f32(v86, vrsqrts_f32(LODWORD(v84), vmul_f32(v86, v86))).f32[0]);
              }

              v87 = a6 + v42 * a7;
              v81.i64[0] = *v87;
              v81.i32[2] = *(v87 + 8);
              v88 = vmlaq_f32(vnegq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v64, v64), v64, 0xCuLL), a12)), vextq_s8(vuzp1q_s32(a12, a12), a12, 0xCuLL), v64);
              v89 = vmulq_f32(vextq_s8(vuzp1q_s32(v88, v88), v88, 0xCuLL), v69);
              if ((vaddv_f32(*v89.f32) + v89.f32[2]) >= 0.0)
              {
                v90 = 1.0;
              }

              else
              {
                v90 = -1.0;
              }

              v91 = vmulq_f32(v81, v65);
              v91.f32[0] = vaddv_f32(*v91.f32) + v91.f32[2];
              a14 = vmlsq_lane_f32(v66, v81, *v91.f32, 0);
              v92 = vmulq_f32(a14, a14);
              v93 = vaddv_f32(*v92.f32) + v92.f32[2];
              v77 = *(v37 + 209);
              if (v93 > COERCE_FLOAT(512))
              {
                v94 = v93;
                v95 = vrsqrte_f32(LODWORD(v93));
                v96 = vmul_f32(vrsqrts_f32(LODWORD(v94), vmul_f32(v95, v95)), v95);
                v77 = vmulq_n_f32(a14, vmul_f32(v96, vrsqrts_f32(LODWORD(v94), vmul_f32(v96, v96))).f32[0]);
              }

              v97 = a6 + v43 * a7;
              a14.i64[0] = *v97;
              a14.i32[2] = *(v97 + 8);
              v98 = vmlaq_f32(vnegq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v77, v77), v77, 0xCuLL), v81)), vextq_s8(vuzp1q_s32(v81, v81), v81, 0xCuLL), v77);
              a13 = vmulq_f32(vextq_s8(vuzp1q_s32(v98, v98), v98, 0xCuLL), v69);
              if ((vaddv_f32(*a13.f32) + a13.f32[2]) >= 0.0)
              {
                v99 = 1.0;
              }

              else
              {
                v99 = -1.0;
              }

              v100 = vmulq_f32(a14, v66);
              v100.f32[0] = vaddv_f32(*v100.f32) + v100.f32[2];
              v101 = vmlsq_lane_f32(v66, a14, *v100.f32, 0);
              a15 = vmulq_f32(v101, v101);
              a15.f32[0] = vaddv_f32(*a15.f32) + a15.f32[2];
              if (a15.f32[0] > COERCE_FLOAT(512))
              {
                v102 = a15.i32[0];
                v103 = vrsqrte_f32(a15.u32[0]);
                v104 = vmul_f32(vrsqrts_f32(v102, vmul_f32(v103, v103)), v103);
                *a15.f32 = vmul_f32(v104, vrsqrts_f32(v102, vmul_f32(v104, v104)));
                v73 = vmulq_n_f32(v101, a15.f32[0]);
              }

              v64.f32[3] = v90;
              v77.f32[3] = v99;
              a12 = vmlaq_f32(vnegq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v73, v73), v73, 0xCuLL), a14)), vextq_s8(vuzp1q_s32(a14, a14), a14, 0xCuLL), v73);
              v105 = vmulq_f32(vextq_s8(vuzp1q_s32(a12, a12), a12, 0xCuLL), v69);
              if ((vaddv_f32(*v105.f32) + v105.f32[2]) >= 0.0)
              {
                v106 = 1.0;
              }

              else
              {
                v106 = -1.0;
              }

              v73.f32[3] = v106;
              goto LABEL_54;
            }
          }
        }
      }

      v30 += 3;
    }

    while (v30 < a2);
  }

  return result;
}

void sub_239F3DCF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31)
{
  v32 = *(v31 - 152);

  _Unwind_Resume(a1);
}

float32x4_t *sub_239F3DD18(float32x4_t *result, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, double a9, double a10, double a11, float32x4_t a12, float32x4_t a13, float32x4_t a14, float32x4_t a15, uint64_t a16, uint64_t a17, unint64_t a18, uint64_t a19, uint64_t a20, unint64_t a21, uint64_t a22, uint64_t a23, unint64_t a24, uint64_t a25, const char *a26)
{
  if (a2)
  {
    v35 = &result->i8[4];
    v36 = 1;
    result = "ed";
    v37 = xmmword_239F9C090;
    v38 = xmmword_239F9C090;
    v39 = xmmword_239F9AD10;
    do
    {
      v40 = *(v35 - 2);
      v41 = *(v35 - 1);
      v42 = *v35;
      if (v40 * a4 + 12 <= a5 && v41 * a4 + 12 <= a5 && v42 * a4 + 12 <= a5)
      {
        v46 = v40 * a17 + 8 > a18 || v41 * a17 + 8 > a18;
        if (!v46 && v42 * a17 + 8 <= a18)
        {
          v48 = *(a16 + v40 * a17);
          v49 = vsub_f32(*(a16 + v41 * a17), v48);
          v50 = vsub_f32(*(a16 + v42 * a17), v48);
          v51 = vmul_f32(vrev64_s32(v50), v49);
          v52 = vsub_f32(v51, vdup_lane_s32(v51, 1)).f32[0];
          if (v52 == 0.0)
          {
            a13 = 0uLL;
            a12 = 0uLL;
          }

          else
          {
            v53 = a3 + v40 * a4;
            a12.i64[0] = *v53;
            a12.i32[2] = *(v53 + 8);
            v54 = a3 + v41 * a4;
            a13.i64[0] = *v54;
            a13.i32[2] = *(v54 + 8);
            v55 = a3 + v42 * a4;
            a14.i64[0] = *v55;
            a14.i32[2] = *(v55 + 8);
            v56 = vsubq_f32(a14, a12);
            v57 = vsubq_f32(a13, a12);
            v58 = 1.0 / v52;
            a12 = vmulq_n_f32(vmlaq_lane_f32(vnegq_f32(vmulq_lane_f32(v56, v49, 1)), v57, v50, 1), v58);
            a13 = vmulq_n_f32(vmlaq_n_f32(vnegq_f32(vmulq_n_f32(v57, v50.f32[0])), v56, v49.f32[0]), v58);
            a12.i32[3] = 0;
          }

          v59 = vmulq_f32(a12, a12);
          v60 = vaddv_f32(*v59.f32) + v59.f32[2];
          if (v60 <= COERCE_FLOAT(512))
          {
            v64 = v39;
            v65 = v39;
            v66 = v39;
          }

          else
          {
            v61 = v60;
            v62 = vrsqrte_f32(LODWORD(v60));
            v63 = vmul_f32(vrsqrts_f32(LODWORD(v61), vmul_f32(v62, v62)), v62);
            v64 = vmulq_n_f32(a12, vmul_f32(v63, vrsqrts_f32(LODWORD(v61), vmul_f32(v63, v63))).f32[0]);
            v65 = v64;
            v66 = v64;
          }

          v67 = vmulq_f32(a13, a13);
          v68 = vaddv_f32(*v67.f32) + v67.f32[2];
          a14 = v38;
          v69 = v37;
          if (v68 > COERCE_FLOAT(512))
          {
            v70 = v68;
            v71 = vrsqrte_f32(LODWORD(v68));
            v72 = vmul_f32(vrsqrts_f32(LODWORD(v68), vmul_f32(v71, v71)), v71);
            *a15.f32 = vmul_f32(v72, v72);
            a14 = vmulq_n_f32(a13, vmul_f32(v72, vrsqrts_f32(LODWORD(v70), *a15.f32)).f32[0]);
            v69 = a14;
          }

          v64.i32[3] = a12.i32[3];
          v73 = v66;
          v73.i32[3] = a12.i32[3];
          if (a22)
          {
            if (v40 * a23 + 12 <= a24)
            {
              v74 = v41 * a23;
              if (v41 * a23 + 12 <= a24)
              {
                v75 = v42 * a23;
                if (v42 * a23 + 12 <= a24)
                {
                  v76 = a22 + v40 * a23;
                  *(v76 + 8) = a14.i32[2];
                  *v76 = a14.i64[0];
                  *(a22 + v74) = a14.i64[0];
                  *(a22 + v74 + 8) = a14.i32[2];
                  *(a22 + v75) = v69.i64[0];
                  *(a22 + v75 + 8) = v69.i32[2];
                  v77 = v64;
LABEL_54:
                  if (v40 * a20 + 12 <= a21)
                  {
                    v117 = v41 * a20;
                    if (v41 * a20 + 12 <= a21)
                    {
                      v118 = v42 * a20;
                      if (v42 * a20 + 12 <= a21)
                      {
                        v119 = a19 + v40 * a20;
                        *v119 = v64.i64[0];
                        *(v119 + 8) = v64.i32[2];
                        if (a25 == 786436)
                        {
                          *(v119 + 12) = v64.i32[3];
                          *(a19 + v117) = v77;
                          *(a19 + v118) = v73.i64[0];
                          v120 = (a19 + v118 + 12);
                          *(a19 + v118 + 8) = v73.i32[2];
                          v121 = 3;
                        }

                        else
                        {
                          v122 = a19 + v117;
                          *v122 = v77.i64[0];
                          *(v122 + 8) = v77.i32[2];
                          *(a19 + v118) = v73.i64[0];
                          v120 = (a19 + v118 + 8);
                          v121 = 2;
                        }

                        v139 = v73;
                        *v120 = *(&v139 | (4 * v121));
                      }
                    }
                  }
                }
              }
            }
          }

          else
          {
            if (!a6)
            {
              v123 = v73;
              v124 = v64;
              v125 = v39;
              v126 = v38;
              v127 = v37;
              v128 = a21;
              v129 = a23;
              v130 = a24;
              v131 = a25;
              v132 = a3;
              v133 = a7;
              v134 = a8;
              v136 = MEMORY[0x277CBEAD8];
              v137 = a26;
              v107 = objc_opt_class();
              v138 = NSStringFromClass(v107);
              v135 = NSStringFromSelector(v137);
              objc_msgSend_raise_format_(v136, v108, @"ModelIOException", @"[%@ %@]: Must provide either a valid normal pointer or bitangent pointer.", v113, v114, v115, v116, v109, v110, v111, v112, v138, v135);

              v64 = v124;
              v39 = v125;
              v77 = v124;
              a7 = v133;
              a8 = v134;
              a3 = v132;
              a6 = 0;
              a26 = v137;
              a24 = v130;
              a25 = v131;
              a22 = 0;
              a23 = v129;
              a21 = v128;
              result = ("[%@ %@]: Tangent data not supplied or could not be created" + 56);
              v38 = v126;
              v37 = v127;
              v73 = v123;
              goto LABEL_54;
            }

            if (v40 * a7 + 12 <= a8 && v41 * a7 + 12 <= a8 && v42 * a7 + 12 <= a8)
            {
              v78 = a6 + v40 * a7;
              a12.i64[0] = *v78;
              v79 = a12;
              v79.i32[2] = *(v78 + 8);
              a12.i32[2] = v79.i32[2];
              v80 = vmulq_f32(a12, v65);
              a15.f32[0] = vaddv_f32(*v80.f32) + v80.f32[2];
              v81 = vmlsq_lane_f32(v66, v79, *a15.f32, 0);
              v82 = vmulq_f32(v81, v81);
              v83 = vaddv_f32(*v82.f32) + v82.f32[2];
              v73 = result[209];
              v64 = v73;
              if (v83 > COERCE_FLOAT(512))
              {
                v84 = v83;
                v85 = vrsqrte_f32(LODWORD(v83));
                v86 = vmul_f32(vrsqrts_f32(LODWORD(v84), vmul_f32(v85, v85)), v85);
                v64 = vmulq_n_f32(v81, vmul_f32(v86, vrsqrts_f32(LODWORD(v84), vmul_f32(v86, v86))).f32[0]);
              }

              v87 = a6 + v41 * a7;
              v81.i64[0] = *v87;
              v81.i32[2] = *(v87 + 8);
              v88 = vmlaq_f32(vnegq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v64, v64), v64, 0xCuLL), a12)), vextq_s8(vuzp1q_s32(a12, a12), a12, 0xCuLL), v64);
              v89 = vmulq_f32(vextq_s8(vuzp1q_s32(v88, v88), v88, 0xCuLL), v69);
              if ((vaddv_f32(*v89.f32) + v89.f32[2]) >= 0.0)
              {
                v90 = 1.0;
              }

              else
              {
                v90 = -1.0;
              }

              v91 = vmulq_f32(v81, v65);
              v91.f32[0] = vaddv_f32(*v91.f32) + v91.f32[2];
              a14 = vmlsq_lane_f32(v66, v81, *v91.f32, 0);
              v92 = vmulq_f32(a14, a14);
              v93 = vaddv_f32(*v92.f32) + v92.f32[2];
              v77 = result[209];
              if (v93 > COERCE_FLOAT(512))
              {
                v94 = v93;
                v95 = vrsqrte_f32(LODWORD(v93));
                v96 = vmul_f32(vrsqrts_f32(LODWORD(v94), vmul_f32(v95, v95)), v95);
                v77 = vmulq_n_f32(a14, vmul_f32(v96, vrsqrts_f32(LODWORD(v94), vmul_f32(v96, v96))).f32[0]);
              }

              v97 = a6 + v42 * a7;
              a14.i64[0] = *v97;
              a14.i32[2] = *(v97 + 8);
              v98 = vmlaq_f32(vnegq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v77, v77), v77, 0xCuLL), v81)), vextq_s8(vuzp1q_s32(v81, v81), v81, 0xCuLL), v77);
              a13 = vmulq_f32(vextq_s8(vuzp1q_s32(v98, v98), v98, 0xCuLL), v69);
              if ((vaddv_f32(*a13.f32) + a13.f32[2]) >= 0.0)
              {
                v99 = 1.0;
              }

              else
              {
                v99 = -1.0;
              }

              v100 = vmulq_f32(a14, v66);
              v100.f32[0] = vaddv_f32(*v100.f32) + v100.f32[2];
              v101 = vmlsq_lane_f32(v66, a14, *v100.f32, 0);
              a15 = vmulq_f32(v101, v101);
              a15.f32[0] = vaddv_f32(*a15.f32) + a15.f32[2];
              if (a15.f32[0] > COERCE_FLOAT(512))
              {
                v102 = a15.i32[0];
                v103 = vrsqrte_f32(a15.u32[0]);
                v104 = vmul_f32(vrsqrts_f32(v102, vmul_f32(v103, v103)), v103);
                *a15.f32 = vmul_f32(v104, vrsqrts_f32(v102, vmul_f32(v104, v104)));
                v73 = vmulq_n_f32(v101, a15.f32[0]);
              }

              v64.f32[3] = v90;
              v77.f32[3] = v99;
              a12 = vmlaq_f32(vnegq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v73, v73), v73, 0xCuLL), a14)), vextq_s8(vuzp1q_s32(a14, a14), a14, 0xCuLL), v73);
              v105 = vmulq_f32(vextq_s8(vuzp1q_s32(a12, a12), a12, 0xCuLL), v69);
              if ((vaddv_f32(*v105.f32) + v105.f32[2]) >= 0.0)
              {
                v106 = 1.0;
              }

              else
              {
                v106 = -1.0;
              }

              v73.f32[3] = v106;
              goto LABEL_54;
            }
          }
        }
      }

      v35 += 6;
      v45 = v36 + 2;
      v36 += 3;
    }

    while (v45 < a2);
  }

  return result;
}

void sub_239F3E3A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31)
{
  v32 = *(v31 - 152);

  _Unwind_Resume(a1);
}

float32x4_t *sub_239F3E3C8(float32x4_t *result, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, double a9, double a10, double a11, float32x4_t a12, float32x4_t a13, float32x4_t a14, float32x4_t a15, uint64_t a16, uint64_t a17, unint64_t a18, uint64_t a19, uint64_t a20, unint64_t a21, uint64_t a22, uint64_t a23, unint64_t a24, uint64_t a25, const char *a26)
{
  if (a2)
  {
    v35 = &result->i8[8];
    v36 = 1;
    result = "ed";
    v37 = xmmword_239F9C090;
    v38 = xmmword_239F9C090;
    v39 = xmmword_239F9AD10;
    do
    {
      v40 = *(v35 - 2);
      v41 = *(v35 - 1);
      v42 = *v35;
      if (v40 * a4 + 12 <= a5 && v41 * a4 + 12 <= a5 && v42 * a4 + 12 <= a5)
      {
        v46 = v40 * a17 + 8 > a18 || v41 * a17 + 8 > a18;
        if (!v46 && v42 * a17 + 8 <= a18)
        {
          v48 = *(a16 + v40 * a17);
          v49 = vsub_f32(*(a16 + v41 * a17), v48);
          v50 = vsub_f32(*(a16 + v42 * a17), v48);
          v51 = vmul_f32(vrev64_s32(v50), v49);
          v52 = vsub_f32(v51, vdup_lane_s32(v51, 1)).f32[0];
          if (v52 == 0.0)
          {
            a13 = 0uLL;
            a12 = 0uLL;
          }

          else
          {
            v53 = a3 + v40 * a4;
            a12.i64[0] = *v53;
            a12.i32[2] = *(v53 + 8);
            v54 = a3 + v41 * a4;
            a13.i64[0] = *v54;
            a13.i32[2] = *(v54 + 8);
            v55 = a3 + v42 * a4;
            a14.i64[0] = *v55;
            a14.i32[2] = *(v55 + 8);
            v56 = vsubq_f32(a14, a12);
            v57 = vsubq_f32(a13, a12);
            v58 = 1.0 / v52;
            a12 = vmulq_n_f32(vmlaq_lane_f32(vnegq_f32(vmulq_lane_f32(v56, v49, 1)), v57, v50, 1), v58);
            a13 = vmulq_n_f32(vmlaq_n_f32(vnegq_f32(vmulq_n_f32(v57, v50.f32[0])), v56, v49.f32[0]), v58);
            a12.i32[3] = 0;
          }

          v59 = vmulq_f32(a12, a12);
          v60 = vaddv_f32(*v59.f32) + v59.f32[2];
          if (v60 <= COERCE_FLOAT(512))
          {
            v64 = v39;
            v65 = v39;
            v66 = v39;
          }

          else
          {
            v61 = v60;
            v62 = vrsqrte_f32(LODWORD(v60));
            v63 = vmul_f32(vrsqrts_f32(LODWORD(v61), vmul_f32(v62, v62)), v62);
            v64 = vmulq_n_f32(a12, vmul_f32(v63, vrsqrts_f32(LODWORD(v61), vmul_f32(v63, v63))).f32[0]);
            v65 = v64;
            v66 = v64;
          }

          v67 = vmulq_f32(a13, a13);
          v68 = vaddv_f32(*v67.f32) + v67.f32[2];
          a14 = v38;
          v69 = v37;
          if (v68 > COERCE_FLOAT(512))
          {
            v70 = v68;
            v71 = vrsqrte_f32(LODWORD(v68));
            v72 = vmul_f32(vrsqrts_f32(LODWORD(v68), vmul_f32(v71, v71)), v71);
            *a15.f32 = vmul_f32(v72, v72);
            a14 = vmulq_n_f32(a13, vmul_f32(v72, vrsqrts_f32(LODWORD(v70), *a15.f32)).f32[0]);
            v69 = a14;
          }

          v64.i32[3] = a12.i32[3];
          v73 = v66;
          v73.i32[3] = a12.i32[3];
          if (a22)
          {
            if (v40 * a23 + 12 <= a24)
            {
              v74 = v41 * a23;
              if (v41 * a23 + 12 <= a24)
              {
                v75 = v42 * a23;
                if (v42 * a23 + 12 <= a24)
                {
                  v76 = a22 + v40 * a23;
                  *(v76 + 8) = a14.i32[2];
                  *v76 = a14.i64[0];
                  *(a22 + v74) = a14.i64[0];
                  *(a22 + v74 + 8) = a14.i32[2];
                  *(a22 + v75) = v69.i64[0];
                  *(a22 + v75 + 8) = v69.i32[2];
                  v77 = v64;
LABEL_54:
                  if (v40 * a20 + 12 <= a21)
                  {
                    v117 = v41 * a20;
                    if (v41 * a20 + 12 <= a21)
                    {
                      v118 = v42 * a20;
                      if (v42 * a20 + 12 <= a21)
                      {
                        v119 = a19 + v40 * a20;
                        *v119 = v64.i64[0];
                        *(v119 + 8) = v64.i32[2];
                        if (a25 == 786436)
                        {
                          *(v119 + 12) = v64.i32[3];
                          *(a19 + v117) = v77;
                          *(a19 + v118) = v73.i64[0];
                          v120 = (a19 + v118 + 12);
                          *(a19 + v118 + 8) = v73.i32[2];
                          v121 = 3;
                        }

                        else
                        {
                          v122 = a19 + v117;
                          *v122 = v77.i64[0];
                          *(v122 + 8) = v77.i32[2];
                          *(a19 + v118) = v73.i64[0];
                          v120 = (a19 + v118 + 8);
                          v121 = 2;
                        }

                        v139 = v73;
                        *v120 = *(&v139 | (4 * v121));
                      }
                    }
                  }
                }
              }
            }
          }

          else
          {
            if (!a6)
            {
              v123 = v73;
              v124 = v64;
              v125 = v39;
              v126 = v38;
              v127 = v37;
              v128 = a21;
              v129 = a23;
              v130 = a24;
              v131 = a25;
              v132 = a3;
              v133 = a7;
              v134 = a8;
              v136 = MEMORY[0x277CBEAD8];
              v137 = a26;
              v107 = objc_opt_class();
              v138 = NSStringFromClass(v107);
              v135 = NSStringFromSelector(v137);
              objc_msgSend_raise_format_(v136, v108, @"ModelIOException", @"[%@ %@]: Must provide either a valid normal pointer or bitangent pointer.", v113, v114, v115, v116, v109, v110, v111, v112, v138, v135);

              v64 = v124;
              v39 = v125;
              v77 = v124;
              a7 = v133;
              a8 = v134;
              a3 = v132;
              a6 = 0;
              a26 = v137;
              a24 = v130;
              a25 = v131;
              a22 = 0;
              a23 = v129;
              a21 = v128;
              result = ("[%@ %@]: Tangent data not supplied or could not be created" + 56);
              v38 = v126;
              v37 = v127;
              v73 = v123;
              goto LABEL_54;
            }

            if (v40 * a7 + 12 <= a8 && v41 * a7 + 12 <= a8 && v42 * a7 + 12 <= a8)
            {
              v78 = a6 + v40 * a7;
              a12.i64[0] = *v78;
              v79 = a12;
              v79.i32[2] = *(v78 + 8);
              a12.i32[2] = v79.i32[2];
              v80 = vmulq_f32(a12, v65);
              a15.f32[0] = vaddv_f32(*v80.f32) + v80.f32[2];
              v81 = vmlsq_lane_f32(v66, v79, *a15.f32, 0);
              v82 = vmulq_f32(v81, v81);
              v83 = vaddv_f32(*v82.f32) + v82.f32[2];
              v73 = result[209];
              v64 = v73;
              if (v83 > COERCE_FLOAT(512))
              {
                v84 = v83;
                v85 = vrsqrte_f32(LODWORD(v83));
                v86 = vmul_f32(vrsqrts_f32(LODWORD(v84), vmul_f32(v85, v85)), v85);
                v64 = vmulq_n_f32(v81, vmul_f32(v86, vrsqrts_f32(LODWORD(v84), vmul_f32(v86, v86))).f32[0]);
              }

              v87 = a6 + v41 * a7;
              v81.i64[0] = *v87;
              v81.i32[2] = *(v87 + 8);
              v88 = vmlaq_f32(vnegq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v64, v64), v64, 0xCuLL), a12)), vextq_s8(vuzp1q_s32(a12, a12), a12, 0xCuLL), v64);
              v89 = vmulq_f32(vextq_s8(vuzp1q_s32(v88, v88), v88, 0xCuLL), v69);
              if ((vaddv_f32(*v89.f32) + v89.f32[2]) >= 0.0)
              {
                v90 = 1.0;
              }

              else
              {
                v90 = -1.0;
              }

              v91 = vmulq_f32(v81, v65);
              v91.f32[0] = vaddv_f32(*v91.f32) + v91.f32[2];
              a14 = vmlsq_lane_f32(v66, v81, *v91.f32, 0);
              v92 = vmulq_f32(a14, a14);
              v93 = vaddv_f32(*v92.f32) + v92.f32[2];
              v77 = result[209];
              if (v93 > COERCE_FLOAT(512))
              {
                v94 = v93;
                v95 = vrsqrte_f32(LODWORD(v93));
                v96 = vmul_f32(vrsqrts_f32(LODWORD(v94), vmul_f32(v95, v95)), v95);
                v77 = vmulq_n_f32(a14, vmul_f32(v96, vrsqrts_f32(LODWORD(v94), vmul_f32(v96, v96))).f32[0]);
              }

              v97 = a6 + v42 * a7;
              a14.i64[0] = *v97;
              a14.i32[2] = *(v97 + 8);
              v98 = vmlaq_f32(vnegq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v77, v77), v77, 0xCuLL), v81)), vextq_s8(vuzp1q_s32(v81, v81), v81, 0xCuLL), v77);
              a13 = vmulq_f32(vextq_s8(vuzp1q_s32(v98, v98), v98, 0xCuLL), v69);
              if ((vaddv_f32(*a13.f32) + a13.f32[2]) >= 0.0)
              {
                v99 = 1.0;
              }

              else
              {
                v99 = -1.0;
              }

              v100 = vmulq_f32(a14, v66);
              v100.f32[0] = vaddv_f32(*v100.f32) + v100.f32[2];
              v101 = vmlsq_lane_f32(v66, a14, *v100.f32, 0);
              a15 = vmulq_f32(v101, v101);
              a15.f32[0] = vaddv_f32(*a15.f32) + a15.f32[2];
              if (a15.f32[0] > COERCE_FLOAT(512))
              {
                v102 = a15.i32[0];
                v103 = vrsqrte_f32(a15.u32[0]);
                v104 = vmul_f32(vrsqrts_f32(v102, vmul_f32(v103, v103)), v103);
                *a15.f32 = vmul_f32(v104, vrsqrts_f32(v102, vmul_f32(v104, v104)));
                v73 = vmulq_n_f32(v101, a15.f32[0]);
              }

              v64.f32[3] = v90;
              v77.f32[3] = v99;
              a12 = vmlaq_f32(vnegq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v73, v73), v73, 0xCuLL), a14)), vextq_s8(vuzp1q_s32(a14, a14), a14, 0xCuLL), v73);
              v105 = vmulq_f32(vextq_s8(vuzp1q_s32(a12, a12), a12, 0xCuLL), v69);
              if ((vaddv_f32(*v105.f32) + v105.f32[2]) >= 0.0)
              {
                v106 = 1.0;
              }

              else
              {
                v106 = -1.0;
              }

              v73.f32[3] = v106;
              goto LABEL_54;
            }
          }
        }
      }

      v35 += 12;
      v45 = v36 + 2;
      v36 += 3;
    }

    while (v45 < a2);
  }

  return result;
}

void sub_239F3EA4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31)
{
  v32 = *(v31 - 152);

  _Unwind_Resume(a1);
}

void **sub_239F3F98C(float32x4_t ***a1, float a2)
{
  v51 = 1065353216;
  v49 = 0u;
  v50 = 0u;
  v2 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    do
    {
      v46 = *v2;
      *&v37 = v46 + 4;
      v4 = sub_239E9D534(&v49, v46 + 4, &unk_239F9BFF0, &v37);
      sub_239E9BFD8(&v4[2], &v46);
      *&v37 = v46 + 5;
      v5 = sub_239E9D534(&v49, v46 + 5, &unk_239F9BFF0, &v37);
      sub_239E9BFD8(&v5[2], &v46);
      *&v37 = v46 + 6;
      v6 = sub_239E9D534(&v49, v46 + 6, &unk_239F9BFF0, &v37);
      sub_239E9BFD8(&v6[2], &v46);
      ++v2;
    }

    while (v2 != v3);
    v7 = v50;
    if (v50)
    {
      __asm { FMOV            V0.4S, #1.0 }

      do
      {
        v14 = v7[2].i64[0];
        v13 = v7[2].i64[1];
        v15 = (v13 - v14) >> 3;
        if (v15 >= 0x40)
        {
          v15 = 64;
        }

        v16 = v7[1];
        v46 = 0;
        v47 = 0;
        v48 = 0;
        if (v13 == v14)
        {
          v43 = &v43;
          v44 = &v43;
          v45 = 0;
          v40 = 0;
          v41 = 0;
          v42 = 0;
        }

        else
        {
          v30 = v16;
          v17 = 0;
          v29 = v15;
          if (v15 <= 1)
          {
            v18 = 1;
          }

          else
          {
            v18 = v15;
          }

          do
          {
            v19 = sub_239EC3D28(*(v7[2].i64[0] + v17));
            v20 = vmulq_f32(v19, v19);
            if ((vaddv_f32(*v20.f32) + v20.f32[2]) >= 1.0e-12)
            {
              LODWORD(v37) = 0;
            }

            else
            {
              LODWORD(v37) = -1;
            }

            sub_239E73254(&v46, &v37);
            v17 += 8;
          }

          while (8 * v18 != v17);
          for (i = 0; i != v18; ++i)
          {
            if (!v46->i32[i])
            {
              *&v37 = &v37;
              *(&v37 + 1) = &v37;
              *&v38 = 0;
              sub_239EC3D28(*(v7[2].i64[0] + 8 * i));
              operator new();
            }
          }

          v22 = 0;
          v43 = &v43;
          v44 = &v43;
          v45 = 0;
          v40 = 0;
          v41 = 0;
          v42 = 0;
          do
          {
            if (v46->i32[v22] == -1)
            {
              operator new();
            }

            LOBYTE(v37) = 0;
            sub_239EA84D8(&v40, &v37);
            ++v22;
          }

          while (v18 != v22);
          if (v45 != v29)
          {
            v23 = 0;
            v37 = 0u;
            v38 = 0u;
            v39 = 1065353216;
            do
            {
              v34 = 0;
              v35 = 0;
              v36 = 0;
              sub_239E8E4FC(&v34, (*(v7[2].i64[0] + 8 * v23) + 64));
              sub_239E8E4FC(&v34, (*(v7[2].i64[0] + 8 * v23) + 80));
              sub_239E8E4FC(&v34, (*(v7[2].i64[0] + 8 * v23) + 96));
              for (j = 0; j != 48; j += 16)
              {
                if (sub_239E99C68(&v37, (v34 + j)))
                {
                  __p = v34 + j;
                  v25 = sub_239E9D534(&v37, (v34 + j), &unk_239F9BFF0, &__p);
                  sub_239E9BFD8(&v25[2], (v7[2].i64[0] + 8 * v23));
                }

                else
                {
                  __p = 0;
                  v32 = 0;
                  v33 = 0;
                  sub_239E9BFD8(&__p, (v7[2].i64[0] + 8 * v23));
                  v52 = v34 + j;
                  v26 = sub_239E9D534(&v37, (v34 + j), &unk_239F9BFF0, &v52) + 2;
                  if (v26 != &__p)
                  {
                    sub_239F44724(v26, __p, v32, (v32 - __p) >> 3);
                  }

                  if (__p)
                  {
                    v32 = __p;
                    operator delete(__p);
                  }
                }
              }

              if (v34)
              {
                v35 = v34;
                operator delete(v34);
              }

              ++v23;
            }

            while (v23 != v18);
            while (v45)
            {
              v27 = v44[2];
              v34 = 0;
              v35 = 0;
              v36 = 0;
              sub_239F40070(v27, &v43, &v37, &v34, v29, v30);
              if (v34)
              {
                v35 = v34;
                operator delete(v34);
              }
            }

            v47 = v46;
            sub_239E9D4AC(&v37);
            goto LABEL_43;
          }
        }

        v47 = v46;
LABEL_43:
        if (v40)
        {
          operator delete(v40);
        }

        sub_239E9876C(&v43);
        if (v46)
        {
          v47 = v46;
          operator delete(v46);
        }

        v7 = v7->i64[0];
      }

      while (v7);
    }
  }

  return sub_239E9D4AC(&v49);
}

void sub_239F3FFC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_239E9D4AC(&a25);
  if (a30)
  {
    operator delete(a30);
  }

  sub_239E9876C(&a33);
  v35 = *(v33 - 200);
  if (v35)
  {
    *(v33 - 192) = v35;
    operator delete(v35);
  }

  sub_239E9D4AC((v33 - 176));
  _Unwind_Resume(a1);
}

void sub_239F40070(float32x4_t *a1, void *a2, void *a3, void *a4, uint64_t a5, float32x4_t a6)
{
  v71 = a1;
  v10 = a1[4];
  v11 = vsubq_f32(v10, a6);
  v12 = vmulq_f32(v11, v11);
  v13 = sqrtf(vaddv_f32(*v12.f32) + v12.f32[2]);
  if (v13 >= 0.000001)
  {
    v14 = a1[5];
    v20 = vsubq_f32(v14, a6);
    v21 = vmulq_f32(v20, v20);
    v22 = sqrtf(vaddv_f32(*v21.f32) + v21.f32[2]);
    v23 = v22 < 0.000001;
    if (v22 < 0.000001)
    {
      v15 = a1[6];
    }

    else
    {
      v15 = a1[5];
    }

    v69 = a1[4];
    v70 = v15;
    v17 = a4 + 1;
    v16 = a4[1];
    v18 = (v16 - *a4) >> 3;
    if (v18 == a5)
    {
      v19 = 9;
      if (v22 < 0.000001)
      {
        v19 = 8;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v14 = a1[5];
    v15 = a1[6];
    v69 = v14;
    v70 = v15;
    v17 = a4 + 1;
    v16 = a4[1];
    v18 = (v16 - *a4) >> 3;
    if (v18 == a5)
    {
      v19 = 7;
LABEL_11:
      a1[v19] = xmmword_239F9C090;
      sub_239EF4794(a2, &v71);
      return;
    }

    v23 = 0;
  }

  v24 = vmulq_f32(a1[12], a1[12]);
  if ((vaddv_f32(*v24.f32) + v24.f32[2]) <= 1.0e-12)
  {
    if (v18)
    {
      v25 = *(v16 - 8);
      __p = 0;
      v67 = 0;
      v68 = 0;
      v26 = vsubq_f32(v25[4], v15);
      v27 = vmulq_f32(v26, v26);
      if (sqrtf(vaddv_f32(*v27.f32) + v27.f32[2]) >= 0.000001 && (v28 = vsubq_f32(v25[5], v15), v29 = vmulq_f32(v28, v28), sqrtf(vaddv_f32(*v29.f32) + v29.f32[2]) >= 0.000001) && (v30 = vsubq_f32(v25[6], v15), v31 = vmulq_f32(v30, v30), sqrtf(vaddv_f32(*v31.f32) + v31.f32[2]) >= 0.000001))
      {
        v72 = &v70;
        v32 = sub_239E9D534(a3, &v70, &unk_239F9BFF0, &v72);
      }

      else
      {
        v72 = &v69;
        v32 = sub_239E9D534(a3, &v69, &unk_239F9BFF0, &v72);
      }

      if (&__p != &v32[2])
      {
        sub_239F44724(&__p, v32[2].i64[0], v32[2].i64[1], (v32[2].i64[1] - v32[2].i64[0]) >> 3);
      }

      v33 = __p;
      v34 = v67 - __p;
      if (v67 == __p)
      {
        if (!__p)
        {
          return;
        }

LABEL_64:
        v67 = v33;
        operator delete(v33);
        return;
      }

      v35 = 0;
      v36 = v34 >> 3;
      if ((v34 >> 3) <= 1)
      {
        v36 = 1;
      }

      while (*(__p + v35) == v71)
      {
        if (v36 == ++v35)
        {
          goto LABEL_63;
        }
      }

      sub_239E9BFD8(a4, &v71);
      sub_239F40070(*(__p + v35), a2, a3, a4, a5, a6);
      v42 = v41;
      *v17 -= 8;
      v43 = vmulq_f32(v41, v41);
      if ((vaddv_f32(*v43.f32) + v43.f32[2]) != 0.0)
      {
        v44 = 9;
        if (v23)
        {
          v44 = 8;
        }

        if (v13 < 0.000001)
        {
          v44 = 7;
        }

        v71[v44] = v42;
        sub_239EF4794(a2, &v71);
      }

LABEL_63:
      v33 = __p;
      if (!__p)
      {
        return;
      }

      goto LABEL_64;
    }

    if (v13 >= 0.000001)
    {
      if (v23)
      {
        v45 = vsubq_f32(v14, v10);
        v46 = vmulq_f32(v45, v45);
        v47 = vsubq_f32(v14, a1[6]);
        v48 = vmulq_f32(v47, v47);
        *v48.i8 = vsqrt_f32(vadd_f32(vadd_f32(vzip1_s32(*v46.i8, *v48.i8), vzip2_s32(*v46.i8, *v48.i8)), vzip1_s32(*&vextq_s8(v46, v46, 8uLL), *&vextq_s8(v48, v48, 8uLL))));
        if (vcgt_f32(*v48.i8, vdup_lane_s32(*v48.i8, 1)).u8[0])
        {
          v69 = a1[6];
          v70 = v10;
        }
      }

      else
      {
        v49 = a1[6];
        v50 = vsubq_f32(v49, v10);
        v51 = vmulq_f32(v50, v50);
        v52 = vsubq_f32(v49, v14);
        v53 = vmulq_f32(v52, v52);
        *v53.i8 = vsqrt_f32(vadd_f32(vadd_f32(vzip1_s32(*v51.i8, *v53.i8), vzip2_s32(*v51.i8, *v53.i8)), vzip1_s32(*&vextq_s8(v51, v51, 8uLL), *&vextq_s8(v53, v53, 8uLL))));
        if (vcgt_f32(*v53.i8, vdup_lane_s32(*v53.i8, 1)).u8[0])
        {
          v69 = v14;
          v70 = v10;
        }
      }
    }

    else
    {
      v37 = vsubq_f32(v10, v14);
      v38 = vmulq_f32(v37, v37);
      v39 = vsubq_f32(v10, a1[6]);
      v40 = vmulq_f32(v39, v39);
      *v40.i8 = vsqrt_f32(vadd_f32(vadd_f32(vzip1_s32(*v38.i8, *v40.i8), vzip2_s32(*v38.i8, *v40.i8)), vzip1_s32(*&vextq_s8(v38, v38, 8uLL), *&vextq_s8(v40, v40, 8uLL))));
      if (vcgt_f32(*v40.i8, vdup_lane_s32(*v40.i8, 1)).u8[0])
      {
        v69 = a1[6];
        v70 = v14;
      }
    }

    v72 = &v70;
    v54 = sub_239E9D534(a3, &v70, &unk_239F9BFF0, &v72);
    v67 = 0;
    v68 = 0;
    __p = 0;
    sub_239EC4064(&__p, v54[2].i64[0], v54[2].i64[1], (v54[2].i64[1] - v54[2].i64[0]) >> 3);
    if (v67 == __p)
    {
      goto LABEL_49;
    }

    v55 = 0;
    v56 = (v67 - __p) >> 3;
    if (v56 <= 1)
    {
      v56 = 1;
    }

    while (*(__p + v55) == v71)
    {
      if (v56 == ++v55)
      {
        goto LABEL_49;
      }
    }

    sub_239E9BFD8(a4, &v71);
    sub_239F40070(*(__p + v55), a2, a3, a4, a5, a6);
    *v17 -= 8;
    v58 = vmulq_f32(v57, v57);
    if ((vaddv_f32(*v58.f32) + v58.f32[2]) == 0.0)
    {
LABEL_49:
      v72 = &v69;
      v59 = sub_239E9D534(a3, &v69, &unk_239F9BFF0, &v72);
      if (&__p != &v59[2])
      {
        sub_239F44724(&__p, v59[2].i64[0], v59[2].i64[1], (v59[2].i64[1] - v59[2].i64[0]) >> 3);
      }

      if (v67 == __p)
      {
        goto LABEL_58;
      }

      v60 = 0;
      v61 = (v67 - __p) >> 3;
      if (v61 <= 1)
      {
        v61 = 1;
      }

      while (*(__p + v60) == v71)
      {
        if (v61 == ++v60)
        {
          goto LABEL_58;
        }
      }

      sub_239E9BFD8(a4, &v71);
      sub_239F40070(*(__p + v60), a2, a3, a4, a5, a6);
      *v17 -= 8;
      v62 = vmulq_f32(v57, v57);
      if ((vaddv_f32(*v62.f32) + v62.f32[2]) == 0.0)
      {
LABEL_58:
        v63 = 9;
        if (v23)
        {
          v63 = 8;
        }

        if (v13 < 0.000001)
        {
          v63 = 7;
        }

        v71[v63] = xmmword_239F9C090;
        sub_239EF4794(a2, &v71);
        goto LABEL_63;
      }

      v64 = 9;
      if (v23)
      {
        v64 = 8;
      }

      if (v13 < 0.000001)
      {
        v64 = 7;
      }
    }

    else
    {
      v64 = 9;
      if (v23)
      {
        v64 = 8;
      }

      if (v13 < 0.000001)
      {
        v64 = 7;
      }
    }

    v71[v64] = v57;
    sub_239EF4794(a2, &v71);
    goto LABEL_63;
  }
}

void sub_239F40714(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_239F40980(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, float32x4_t a7, float32x4_t a8, float32x4_t a9)
{
  v18 = 0;
  v19 = 0;
  v20 = 0;
  if (a2)
  {
    operator new();
  }

  sub_239F3F98C(&v18, a7.f32[0]);
  v11 = v18;
  v12 = v19;
  if (v18 != v19)
  {
    do
    {
      v13 = *v11++;
      v14 = v13[1];
      v15 = (a5 + *v13 * a6);
      *v15 = v13[28];
      v15[1] = v13[29];
      v15[2] = v13[30];
      v16 = (a5 + v14 * a6);
      *v16 = v13[32];
      v16[1] = v13[33];
      v17 = (a5 + v13[2] * a6);
      v16[2] = v13[34];
      *v17 = v13[36];
      v17[1] = v13[37];
      v17[2] = v13[38];
      MEMORY[0x23EE802C0]();
    }

    while (v11 != v12);
    v11 = v18;
  }

  if (v11)
  {
    v19 = v11;
    operator delete(v11);
  }
}

void sub_239F40C54(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 128);
  if (v3)
  {
    *(v1 - 120) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_239F40C94(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, float32x4_t a7, float32x4_t a8, float32x4_t a9)
{
  v18 = 0;
  v19 = 0;
  v20 = 0;
  if (a2)
  {
    operator new();
  }

  sub_239F3F98C(&v18, a7.f32[0]);
  v11 = v18;
  v12 = v19;
  if (v18 != v19)
  {
    do
    {
      v13 = *v11++;
      v14 = v13[1];
      v15 = (a5 + *v13 * a6);
      *v15 = v13[28];
      v15[1] = v13[29];
      v15[2] = v13[30];
      v16 = (a5 + v14 * a6);
      *v16 = v13[32];
      v16[1] = v13[33];
      v17 = (a5 + v13[2] * a6);
      v16[2] = v13[34];
      *v17 = v13[36];
      v17[1] = v13[37];
      v17[2] = v13[38];
      MEMORY[0x23EE802C0]();
    }

    while (v11 != v12);
    v11 = v18;
  }

  if (v11)
  {
    v19 = v11;
    operator delete(v11);
  }
}

void sub_239F40F6C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 128);
  if (v3)
  {
    *(v1 - 120) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_239F40FAC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, float32x4_t a7, float32x4_t a8, float32x4_t a9)
{
  v18 = 0;
  v19 = 0;
  v20 = 0;
  if (a2)
  {
    operator new();
  }

  sub_239F3F98C(&v18, a7.f32[0]);
  v11 = v18;
  v12 = v19;
  if (v18 != v19)
  {
    do
    {
      v13 = *v11++;
      v14 = v13[1];
      v15 = (a5 + *v13 * a6);
      *v15 = v13[28];
      v15[1] = v13[29];
      v15[2] = v13[30];
      v16 = (a5 + v14 * a6);
      *v16 = v13[32];
      v16[1] = v13[33];
      v17 = (a5 + v13[2] * a6);
      v16[2] = v13[34];
      *v17 = v13[36];
      v17[1] = v13[37];
      v17[2] = v13[38];
      MEMORY[0x23EE802C0]();
    }

    while (v11 != v12);
    v11 = v18;
  }

  if (v11)
  {
    v19 = v11;
    operator delete(v11);
  }
}

void sub_239F41280(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 128);
  if (v3)
  {
    *(v1 - 120) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_239F41ED8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a17)
  {
    operator delete(a17);
  }

  _Unwind_Resume(a1);
}

void sub_239F42F84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *__p, uint64_t a52, uint64_t a53, uint64_t a54, void *a55)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_239E79AAC(&a54, a55);
  _Unwind_Resume(a1);
}

uint64_t sub_239F43188(uint64_t a1, const void **a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v8 = 0;
    v9 = (a1 + 8);
    do
    {
      v10 = *(a3 + v8);
      v11 = *v9;
      if (!*v9)
      {
        goto LABEL_11;
      }

      v12 = v9;
      do
      {
        v13 = *(v11 + 28);
        v14 = v13 >= v10;
        v15 = v13 < v10;
        if (v14)
        {
          v12 = v11;
        }

        v11 = *(v11 + 8 * v15);
      }

      while (v11);
      if (v12 == v9 || *(v12 + 7) > v10)
      {
LABEL_11:
        v17 = *(a1 + 16);
        v18 = &v17;
        *(sub_239F44654(a1, &v17, &unk_239F9BFF0, &v18) + 8) = v10;
        v10 = *(a3 + v8);
      }

      LODWORD(v18) = v10;
      sub_239E73254(a2, &v18);
      ++v8;
    }

    while (v8 != a4);
  }

  return 1;
}

uint64_t sub_239F43280(uint64_t a1, const void **a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v8 = 0;
    v9 = (a1 + 8);
    do
    {
      v10 = *(a3 + 2 * v8);
      v11 = *v9;
      if (!*v9)
      {
        goto LABEL_11;
      }

      v12 = v9;
      do
      {
        v13 = *(v11 + 28);
        v14 = v13 >= v10;
        v15 = v13 < v10;
        if (v14)
        {
          v12 = v11;
        }

        v11 = *(v11 + 8 * v15);
      }

      while (v11);
      if (v12 == v9 || *(v12 + 7) > v10)
      {
LABEL_11:
        v17 = *(a1 + 16);
        v18 = &v17;
        *(sub_239F44654(a1, &v17, &unk_239F9BFF0, &v18) + 8) = v10;
        v10 = *(a3 + 2 * v8);
      }

      LODWORD(v18) = v10;
      sub_239E73254(a2, &v18);
      ++v8;
    }

    while (v8 != a4);
  }

  return 1;
}

uint64_t sub_239F43378(uint64_t a1, const void **a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v8 = 0;
    v9 = (a1 + 8);
    do
    {
      v10 = *v9;
      v11 = *(a3 + 4 * v8);
      if (!*v9)
      {
        goto LABEL_11;
      }

      v12 = v9;
      do
      {
        v13 = *(v10 + 28);
        v14 = v13 >= v11;
        v15 = v13 < v11;
        if (v14)
        {
          v12 = v10;
        }

        v10 = *(v10 + 8 * v15);
      }

      while (v10);
      if (v12 == v9 || v11 < *(v12 + 7))
      {
LABEL_11:
        v27 = *(a1 + 16);
        v28 = &v27;
        *(sub_239F44654(a1, &v27, &unk_239F9BFF0, &v28) + 8) = v11;
      }

      v17 = a2[1];
      v16 = a2[2];
      if (v17 >= v16)
      {
        v19 = *a2;
        v20 = v17 - *a2;
        v21 = v20 >> 2;
        v22 = (v20 >> 2) + 1;
        if (v22 >> 62)
        {
          sub_239E797B4();
        }

        v23 = v16 - v19;
        if (v23 >> 1 > v22)
        {
          v22 = v23 >> 1;
        }

        v14 = v23 >= 0x7FFFFFFFFFFFFFFCLL;
        v24 = 0x3FFFFFFFFFFFFFFFLL;
        if (!v14)
        {
          v24 = v22;
        }

        if (v24)
        {
          sub_239E79984(a2, v24);
        }

        *(4 * v21) = *(a3 + 4 * v8);
        v18 = (4 * v21 + 4);
        memcpy(0, v19, v20);
        v25 = *a2;
        *a2 = 0;
        a2[1] = v18;
        a2[2] = 0;
        if (v25)
        {
          operator delete(v25);
        }
      }

      else
      {
        *v17 = *(a3 + 4 * v8);
        v18 = v17 + 4;
      }

      a2[1] = v18;
      ++v8;
    }

    while (v8 != a4);
  }

  return 1;
}

void sub_239F43788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_239F44540(va);
  _Unwind_Resume(a1);
}

void sub_239F4386C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_239F44540(va);
  _Unwind_Resume(a1);
}

void sub_239F4399C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_239F44540(va);

  _Unwind_Resume(a1);
}

void sub_239F43ABC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_239F44540(va);

  _Unwind_Resume(a1);
}

uint64_t sub_239F44540(uint64_t a1)
{
  v2 = *(a1 + 160);
  if (v2)
  {
    *(a1 + 168) = v2;
    operator delete(v2);
  }

  sub_239F445CC((a1 + 120));
  v3 = *(a1 + 96);
  if (v3)
  {
    *(a1 + 104) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 72);
  if (v4)
  {
    *(a1 + 80) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    *(a1 + 56) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 24);
  if (v6)
  {
    *(a1 + 32) = v6;
    operator delete(v6);
  }

  v7 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v7;
    operator delete(v7);
  }

  return a1;
}

void **sub_239F445CC(void **a1)
{
  sub_239F44608(a1, a1[2]);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_239F44608(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[6];
      if (v4)
      {
        v2[7] = v4;
        operator delete(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t *sub_239F44654(uint64_t a1, unsigned int *a2, uint64_t a3, unsigned int **a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
LABEL_8:
    operator new();
  }

  v5 = *a2;
  while (1)
  {
    while (1)
    {
      v6 = v4;
      v7 = *(v4 + 28);
      if (v5 >= v7)
      {
        break;
      }

      v4 = *v6;
      if (!*v6)
      {
        goto LABEL_8;
      }
    }

    if (v7 >= v5)
    {
      return v6;
    }

    v4 = v6[1];
    if (!v4)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *sub_239F44724(uint64_t *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
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

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_239E7C648(v6, v10);
    }

    sub_239E797B4();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

uint64_t sub_239F44850(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  *a1 = &unk_284D17088;
  *(a1 + 16) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  *(a1 + 88) = xmmword_239F9E7D0;
  *(a1 + 104) = xmmword_239F9E7E0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  __asm { FMOV            V0.4S, #1.0 }

  *(a1 + 144) = _Q0;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v10[0] = xmmword_239F9E810;
  v10[1] = unk_239F9E820;
  v8 = CGColorCreate(DeviceRGB, v10);
  sub_239F44948(a1, v8);
  CGColorRelease(v8);
  CGColorSpaceRelease(DeviceRGB);
  return a1;
}

void sub_239F44948(uint64_t a1, CGColor *a2)
{
  v3 = *(a1 + 16);
  if (v3 != a2)
  {
    CGColorRelease(v3);
    *(a1 + 16) = CGColorRetain(a2);
    __asm { FMOV            V0.4S, #1.0 }

    v15 = _Q0;
    if (a2)
    {
      Components = CGColorGetComponents(a2);
      _Q0 = *Components;
      *&_Q0.f64[0] = vcvt_f32_f64(*Components);
      v11 = Components[1].f64[0];
      *&_Q0.f64[1] = v11;
    }

    *(a1 + 64) = _Q0;
    *v12.i32 = sub_239E848C4(a2);
    *(a1 + 48) = v12.i32[0];
    v13 = v15;
    if (*v12.i32 > 0.0)
    {
      __asm { FMOV            V2.4S, #1.0 }

      v13 = vmulq_f32(*(a1 + 64), vdivq_f32(_Q2, vdupq_lane_s32(v12, 0)));
    }

    *(a1 + 32) = v13;
  }
}

uint64_t sub_239F449EC(uint64_t a1)
{
  *a1 = &unk_284D17088;
  CGColorRelease(*(a1 + 16));
  CGColorRelease(*(a1 + 80));
  return a1;
}

CGColor *sub_239F44A48(uint64_t a1, CGColor *a2)
{
  result = *(a1 + 80);
  if (result != a2)
  {
    CGColorRelease(result);
    result = CGColorRetain(a2);
    *(a1 + 80) = result;
  }

  return result;
}

void sub_239F44A88(uint64_t a1, float32x4_t *a2, int32x2_t *a3, int32x2_t *a4, uint64_t a5)
{
  v7 = vaddq_f32(a2[2], a2[3]);
  v8 = vmulq_f32(v7, v7);
  *&v9 = vaddv_f32(*v8.f32) + v8.f32[2];
  *v8.f32 = vrsqrte_f32(v9);
  *v8.f32 = vmul_f32(vrsqrts_f32(v9, vmul_f32(*v8.f32, *v8.f32)), *v8.f32);
  v10 = vmulq_n_f32(v7, vmul_f32(*v8.f32, vrsqrts_f32(v9, vmul_f32(*v8.f32, *v8.f32))).f32[0]);
  *a5 = v10;
  v12 = a2[1];
  v11 = a2[2];
  v13 = vmulq_f32(v12, vnegq_f32(v11));
  v14 = vaddv_f32(*v13.f32);
  v15 = vnegq_f32(vmlaq_n_f32(v11, v12, (v14 + v13.f32[2]) + (v14 + v13.f32[2])));
  *(a5 + 16) = v15;
  v16 = vmulq_f32(a2[3], a2[1]);
  v16.f32[0] = vaddv_f32(*v16.f32) + v16.f32[2];
  if (v16.f32[0] < 0.001)
  {
    v16.f32[0] = 0.001;
  }

  *(a5 + 32) = v16.i32[0];
  v17 = vmulq_f32(a2[2], a2[1]);
  v18 = vaddv_f32(*v17.f32) + v17.f32[2];
  if (v18 < 0.001)
  {
    v18 = 0.001;
  }

  *(a5 + 36) = v18;
  v19 = vmulq_f32(v10, a2[1]);
  v20 = vaddv_f32(*v19.f32) + v19.f32[2];
  if (v20 < 0.001)
  {
    v20 = 0.001;
  }

  *(a5 + 40) = v20;
  v21 = vmulq_f32(a2[3], v10);
  v22 = vaddv_f32(*v21.f32) + v21.f32[2];
  if (v22 < 0.001)
  {
    v22 = 0.001;
  }

  *(a5 + 44) = v22;
  v16.f32[1] = v18;
  __asm { FMOV            V3.2S, #1.0 }

  v28 = vsub_f32(_D3, *v16.f32);
  *v16.f32 = vbic_s8(vbsl_s8(vcgt_f32(v28, _D3), _D3, v28), vcltz_f32(v28));
  v29 = vmul_f32(*v16.f32, *v16.f32);
  *(a5 + 48) = vmul_f32(*v16.f32, vmul_f32(v29, v29));
  v16.i32[0] = 1.0;
  v30 = 1.0 - v22;
  if (v30 <= 1.0)
  {
    v16.f32[0] = v30;
  }

  if (v30 < 0.0)
  {
    v16.f32[0] = 0.0;
  }

  v31 = *(a1 + 116);
  *(a5 + 56) = v16.f32[0] * ((v16.f32[0] * v16.f32[0]) * (v16.f32[0] * v16.f32[0]));
  *(a5 + 60) = v31;
  *&v32 = sub_239F6EED8(a4, v15, v31 * 0.0);
  v44 = v32;
  v33.f32[0] = powf(*&v32, 0.45455);
  v42 = v33;
  v40 = powf(*(&v44 + 1), 0.45455);
  v34 = powf(*(&v44 + 2), 0.45455);
  v35 = v42;
  v35.f32[1] = v40;
  v35.f32[2] = v34;
  *(a5 + 80) = vmulq_n_f32(v35, (*(a5 + 60) * -0.33) + 0.99);
  *&v36 = sub_239F6EA14(a3, *(a5 + 16));
  v45 = v36;
  *&v37 = powf(*&v36, 0.45455);
  v43 = v37;
  v41 = powf(*(&v45 + 1), 0.45455);
  v38 = powf(*(&v45 + 2), 0.45455);
  v39 = v43;
  *(&v39 + 1) = v41;
  *(&v39 + 2) = v38;
  *(a5 + 64) = v39;
}

double sub_239F44CD8(float32x4_t *a1, uint64_t a2, float *a3)
{
  v3 = a3[12];
  v4 = a3[15] * (a3[11] * a3[11]);
  v5 = a3[13];
  v6 = ((v5 + v3) * ((v4 * 2.0) + -0.5)) + 2.0;
  v7 = ((((v4 + -1.0) * v3) + 1.0) * (((v4 + -1.0) * v5) + 1.0)) * 1.25 * (1.0 / (a3[9] + a3[8]) + -0.5) + 0.625;
  v8 = (v6 + ((v7 - v6) * 0.1)) * 0.318309877;
  *&result = vmulq_n_f32(a1[3], (1.0 - a1[5].f32[2]) * v8).u64[0];
  return result;
}

double sub_239F44D88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(a1 + 116) * -0.599) + 0.6;
  if (v5 >= 1.0)
  {
    v9 = 0.31831;
  }

  else
  {
    v6 = v5 * v5;
    v7 = v6 + -1.0;
    v8 = *(a3 + 40) * *(a3 + 40) * v7 + 1.0;
    v9 = v7 / ((logf(v6) * 3.1416) * v8);
  }

  __asm { FMOV            V4.2S, #0.9375 }

  v15 = vadd_f32(vsqrt_f32(vmla_f32(vdup_n_s32(0x3D800000u), _D4, vmul_f32(*(a3 + 32), *(a3 + 32)))), *(a3 + 32));
  _D4.f32[0] = fminf(*(a3 + 48), 1.0);
  *&result = vmulq_n_f32(vaddq_f32(vdupq_lane_s32(_D4, 0), *(a3 + 64)), (((*(a3 + 56) * 0.3) + 0.1) * (v9 * *(a1 + 112))) / vmul_lane_f32(v15, v15, 1).f32[0]).u64[0];
  return result;
}

double sub_239F44E98(uint64_t a1, uint64_t a2, float32x4_t *a3)
{
  v5 = *(a1 + 100);
  v6 = *(a1 + 80);
  if (v6 >= 1.0)
  {
    v10 = 0.31831;
  }

  else
  {
    v7 = (v6 * v6) + -1.0;
    v8 = a3[2].f32[2] * a3[2].f32[2] * v7 + 1.0;
    v25 = *(a1 + 80);
    v9 = logf(v6 * v6);
    v6 = v25;
    v10 = v7 / ((v9 * 3.1416) * v8);
  }

  v11 = v5 * 0.5 + 0.5;
  *&v11 = v11;
  __asm { FMOV            V4.4S, #-1.0 }

  v17 = vaddq_f32(*(a1 + 16), _Q4);
  __asm { FMOV            V4.4S, #1.0 }

  v19 = vmulq_n_f32(vmlaq_n_f32(_Q4, v17, COERCE_FLOAT(*(a1 + 84))), v6);
  *&v11 = (*&v11 * *&v11) * (*&v11 * *&v11);
  v20 = *a3[2].f32;
  v21 = vmul_f32(v20, v20);
  v22 = vadd_f32(vsqrt_f32(vmls_lane_f32(vadd_f32(v21, vdup_lane_s32(*&v11, 0)), v21, *&v11, 0)), v20);
  v23 = vmulq_n_f32(*(a1 + 48), COERCE_FLOAT(*(a1 + 88)));
  *&result = vmulq_f32(vmlaq_n_f32(v23, vmulq_f32(vmlaq_n_f32(v19, vsubq_f32(_Q4, v19), COERCE_FLOAT(a3[3].i64[1])), vaddq_f32(v23, _Q4)), v10 / vmul_lane_f32(v22, v22, 1).f32[0]), a3[5]).u64[0];
  return result;
}

void *sub_239F44FD0(uint64_t a1)
{
  result = sub_239F44850(a1);
  *result = &unk_284D17170;
  return result;
}

double sub_239F45004(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  LODWORD(a4) = *(a3 + 32);
  v21 = vdupq_lane_s32(*&a4, 0);
  v22 = *(a3 + 80);
  v20 = vmulq_n_f32(v22, 1.0 - *&a4);
  v23 = *(a1 + 144);
  v26 = vmulq_f32(vmlaq_f32(v21, v23, v20), vdupq_n_s32(0x3FF1463Au));
  *v6.i64 = sub_239F44CD8((a1 + 16), a2, a3);
  v7 = vmulq_f32(v26, v6);
  v6.i64[0] = 0x3F0000003F000000;
  v6.i64[1] = 0x3F0000003F000000;
  v24 = vmlaq_f32(v6, v6, v23);
  v25 = v7;
  v18 = *(a1 + 64);
  *v9.i64 = sub_239F44D88(a1 + 16, v8, a3);
  v19 = v9;
  *v11.i64 = sub_239F44E98(a1 + 16, v10, a3);
  v12 = vaddq_f32(v20, v21);
  v13 = *(a1 + 112);
  v14 = vsubq_f32(v18, v12);
  v15 = vmlaq_n_f32(v12, v14, v13.f32[0]);
  v13.i64[0] = *(a3 + 52);
  v14.i64[0] = *(a1 + 108);
  v16 = vmulq_f32(v14, v13);
  v14.f32[0] = 1.0 - *(a1 + 104);
  *&result = vmlaq_f32(v25, v24, vmlaq_n_f32(vmlaq_f32(vaddq_f32(v11, v19), vdupq_n_s32(0x3DCCCCCDu), vmulq_f32(v18, v22)), vmulq_f32(v15, v26), vmulq_f32(v16, v14).f32[0])).u64[0];
  return result;
}

void *sub_239F4515C(uint64_t a1)
{
  result = sub_239F44850(a1);
  *result = &unk_284D170D8;
  return result;
}

double sub_239F45194(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  LODWORD(a4) = *(a3 + 32);
  v21 = vdupq_lane_s32(*&a4, 0);
  v22 = *(a3 + 80);
  v20 = vmulq_n_f32(v22, 1.0 - *&a4);
  v23 = *(a1 + 144);
  v26 = vmulq_f32(vmlaq_f32(v21, v23, v20), vdupq_n_s32(0x3FF1463Au));
  *v6.i64 = sub_239F44CD8((a1 + 16), a2, a3);
  v7 = vmulq_f32(v26, v6);
  v6.i64[0] = 0x3F0000003F000000;
  v6.i64[1] = 0x3F0000003F000000;
  v24 = vmlaq_f32(v6, v6, v23);
  v25 = v7;
  v18 = *(a1 + 64);
  *v9.i64 = sub_239F44D88(a1 + 16, v8, a3);
  v19 = v9;
  *v11.i64 = sub_239F44E98(a1 + 16, v10, a3);
  v12 = vaddq_f32(v20, v21);
  v13 = *(a1 + 112);
  v14 = vsubq_f32(v18, v12);
  v15 = vmlaq_n_f32(v12, v14, v13.f32[0]);
  v13.i64[0] = *(a3 + 52);
  v14.i64[0] = *(a1 + 108);
  v16 = vmulq_f32(v14, v13);
  v14.f32[0] = 1.0 - *(a1 + 104);
  *&result = vmlaq_f32(v25, v24, vmlaq_n_f32(vmlaq_f32(vaddq_f32(v11, v19), vdupq_n_s32(0x3DCCCCCDu), vmulq_f32(v18, v22)), vmulq_f32(v15, v26), vmulq_f32(v16, v14).f32[0])).u64[0];
  return result;
}

double sub_239F452DC(uint64_t a1, double a2, double a3, float32x4_t a4, float32x4_t a5, uint64_t a6, uint64_t a7)
{
  LODWORD(a2) = *(a7 + 32);
  v7 = vmlaq_n_f32(vdupq_lane_s32(*&a2, 0), *(a7 + 80), 1.0 - *&a2);
  v8 = vsubq_f32(*(a1 + 64), v7);
  v9 = vmlaq_n_f32(v7, v8, COERCE_FLOAT(*(a1 + 112)));
  v8.i64[0] = *(a7 + 52);
  a5.i64[0] = *(a1 + 108);
  a4.f32[0] = 1.0 - *(a1 + 104);
  *&result = vmulq_n_f32(v9, vmulq_f32(vmulq_f32(a5, v8), a4).f32[0]).u64[0];
  return result;
}

void sub_239F45338(uint64_t a1)
{
  sub_239F449EC(a1);

  JUMPOUT(0x23EE802C0);
}

void sub_239F45378(uint64_t a1)
{
  sub_239F449EC(a1);

  JUMPOUT(0x23EE802C0);
}

void sub_239F453B0(void *a1)
{
  v1 = a1;
  v14 = sub_239E55AE8(v9, v10, v11, v12, v1, v2, v3, v4, v5, v6, v7, v8);
  v15 = v1;
  v13 = v14;
  AnalyticsSendEventLazy();
}

id sub_239F454A0(uint64_t a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v16[2] = *MEMORY[0x277D85DE8];
  v15[0] = @"bundleIdentifier";
  v15[1] = @"fileExtension";
  v12 = *(a1 + 40);
  v16[0] = *(a1 + 32);
  v16[1] = v12;
  v13 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, v16, v15, a3, a4, a5, a6, 2, a10, a11, a12);

  return v13;
}

void sub_239F45530(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __n128 a10, __n128 a11, __n128 a12)
{
  v12 = a1;
  v13 = sub_239E55AE8(a9, a10, a11, a12, a1, a2, a3, a4, a5, a6, a7, a8);
  v14 = @"ModelIO";
  if (v12)
  {
    v14 = @"Custom";
  }

  v17 = v14;
  v18 = v13;
  v15 = v13;
  v16 = v17;
  AnalyticsSendEventLazy();
}

id sub_239F45630(uint64_t a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v16[2] = *MEMORY[0x277D85DE8];
  v15[0] = @"allocatorType";
  v15[1] = @"bundleIdentifier";
  v12 = *(a1 + 40);
  v16[0] = *(a1 + 32);
  v16[1] = v12;
  v13 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, v16, v15, a3, a4, a5, a6, 2, a10, a11, a12);

  return v13;
}

void sub_239F46B68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *__p, uint64_t a41)
{
  if (__p)
  {
    operator delete(__p);
  }

  v44 = *(v42 - 240);
  if (v44)
  {
    *(v42 - 232) = v44;
    operator delete(v44);
  }

  v45 = *(v42 - 216);
  if (v45)
  {
    *(v42 - 208) = v45;
    operator delete(v45);
  }

  v46 = *(v42 - 192);
  if (v46)
  {
    *(v42 - 184) = v46;
    operator delete(v46);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_239F46E54(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  sub_239E87900(a1);
  *a1 = &unk_284D171C0;
  *(a1 + 24) = a3;
  v6 = v5;
  *(a1 + 32) = v6;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  v18 = objc_msgSend_transform(v6, v7, v8, v9, v14, v15, v16, v17, v10, v11, v12, v13);

  if (v18)
  {
    v30 = objc_msgSend_transform(v6, v19, v20, v21, v26, v27, v28, v29, v22, v23, v24, v25);
    v31 = *(a1 + 8);
    *(a1 + 8) = v30;
  }

  (*(*a1 + 32))(v38, a1);
  v33 = v38[0];
  v32 = v38[1];
  *(a1 + 48) = v38[0];
  *(a1 + 64) = v32;
  v34 = vsubq_f32(v33, v32);
  v33.i64[0] = 0x3F0000003F000000;
  v33.i64[1] = 0x3F0000003F000000;
  v35 = vmulq_f32(v34, v33);
  v36 = v35.f32[1];
  if (v35.f32[1] < v35.f32[2])
  {
    v36 = v35.f32[2];
  }

  if (v35.f32[0] < v36)
  {
    v35.f32[0] = v36;
  }

  *(a1 + 16) = v35.i32[0];
  *(a1 + 20) = v35.f32[0] * v35.f32[0];

  return a1;
}

void sub_239F46F60(_Unwind_Exception *a1)
{
  sub_239E87998(v1);

  _Unwind_Resume(a1);
}

uint64_t sub_239F46F90(uint64_t a1)
{

  return sub_239E87998(a1);
}

void sub_239F46FCC(uint64_t a1)
{
  sub_239E87998(a1);

  JUMPOUT(0x23EE802C0);
}

uint64_t sub_239F4701C(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 88);
  if (!v1)
  {
    if (!atomic_fetch_add((a1 + 80), 1u))
    {
      operator new();
    }

    return 0;
  }

  return v1;
}

void sub_239F4717C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  sub_239E7B424(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_239F471B8@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>, const char *a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>, uint64_t a7@<X5>, uint64_t a8@<X6>, uint64_t a9@<X7>, __n128 a10@<Q0>, __n128 a11@<Q1>, __n128 a12@<Q2>, __n128 a13@<Q3>)
{
  result = *(a1 + 32);
  if (result)
  {
    a10.n128_u64[0] = 0;
    result = objc_msgSend_boundingBoxAtTime_(result, a3, a4, a5, a10, a11, a12, a13, a6, a7, a8, a9);
    *a2 = v15;
    a2[1] = v16;
  }

  return result;
}

BOOL sub_239F471F0(uint64_t a1, float32x4_t *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v14 = 0;
  v13 = 0;
  v4 = MDLAABB::intersect((a1 + 48), a2, &v14 + 1, &v14, &v13);
  v10 = *&v14 >= 0.0 && v4;
  result = 0;
  if (v10)
  {
    memset(v15, 0, sizeof(v15));
    LODWORD(v15[0]) = 2139095039;
    v11 = *(a1 + 88);
    if (v11)
    {
      if (sub_239E71C08(v11, a2, v15, 0.0, v5, v6, v7, v8, v9))
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_239F472C4(uint64_t a1, float32x4_t *a2, uint64_t a3)
{
  result = sub_239F4701C(a1);
  if (result)
  {
    v7 = result;
    v15 = 0;
    v14 = 0;
    result = MDLAABB::intersect((a1 + 48), a2, &v15 + 1, &v15, &v14);
    if (result)
    {
      LODWORD(v8) = v15;
      if (*&v15 >= 0.0)
      {
        result = sub_239E71C08(v7, a2, a3, v8, v9, v10, v11, v12, v13);
        if (result)
        {
          *(a3 + 64) = a1;
        }
      }
    }
  }

  return result;
}

uint64_t sub_239F4740C(uint64_t a1, uint64_t a2)
{
  if (sub_239E7B3D0(a2, &unk_284D17588))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_239F4766C(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_239F479A4(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_239F47D90(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, objc_super a11)
{
  a11.super_class = MDLMemoryMappedData;
  [(_Unwind_Exception *)&a11 dealloc:a3];
  _Unwind_Resume(a1);
}

char *sub_239F47E18@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  v2 = result;
  v5 = result + 63;
  v4 = result[63];
  v6 = result + 40;
  if ((v4 & 0x8000000000000000) == 0)
  {
    if (result[63])
    {
      goto LABEL_3;
    }

LABEL_6:
    if (result[39] >= 0)
    {
      v7 = result[39];
    }

    else
    {
      v7 = *(result + 3);
    }

    v13 = 0;
    v12 = 0uLL;
    v8 = &v12;
    sub_239E959D0(&v12, v7 + 5);
    if (v13 < 0)
    {
      v8 = v12;
    }

    if (v7)
    {
      if (v2[39] >= 0)
      {
        v9 = v2 + 16;
      }

      else
      {
        v9 = *(v2 + 2);
      }

      memmove(v8, v9, v7);
    }

    strcpy(v8 + v7, "/Geom");
    if (*v5 < 0)
    {
      operator delete(*v6);
    }

    *v6 = v12;
    *(v6 + 2) = v13;
    sub_239E56DF8(&v12, v2 + 14);
    MEMORY[0x23EE7ED00](&v10, v6);
    pxrInternal__aapl__pxrReserved__::UsdGeomScope::Define();
    MEMORY[0x23EE7E610](v11);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    result = sub_239F751B0(&v10);
    if ((v14 & 0x80) == 0)
    {
      goto LABEL_4;
    }

    return sub_239E5BAE0(a2, *(v2 + 5), *(v2 + 6));
  }

  if (!*(result + 6))
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v4 & 0x80) == 0)
  {
LABEL_4:
    *a2 = *v6;
    *(a2 + 16) = *(v6 + 2);
    return result;
  }

  return sub_239E5BAE0(a2, *(v2 + 5), *(v2 + 6));
}

void sub_239F47F94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_239EBE368(&a9);
  v15 = a14;
  if (a14)
  {
    if (atomic_fetch_add_explicit((a14 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v15 + 8))(v15);
    }
  }

  _Unwind_Resume(a1);
}

char *sub_239F47FF0@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  v2 = result;
  v5 = result + 87;
  v4 = result[87];
  v6 = result + 64;
  if ((v4 & 0x8000000000000000) == 0)
  {
    if (result[87])
    {
      goto LABEL_3;
    }

LABEL_6:
    if (result[39] >= 0)
    {
      v7 = result[39];
    }

    else
    {
      v7 = *(result + 3);
    }

    v13 = 0;
    v12 = 0uLL;
    v8 = &v12;
    sub_239E959D0(&v12, v7 + 10);
    if (v13 < 0)
    {
      v8 = v12;
    }

    if (v7)
    {
      if (v2[39] >= 0)
      {
        v9 = v2 + 16;
      }

      else
      {
        v9 = *(v2 + 2);
      }

      memmove(v8, v9, v7);
    }

    strcpy(v8 + v7, "/Materials");
    if (*v5 < 0)
    {
      operator delete(*v6);
    }

    *v6 = v12;
    *(v6 + 2) = v13;
    sub_239E56DF8(&v12, v2 + 14);
    MEMORY[0x23EE7ED00](&v10, v6);
    pxrInternal__aapl__pxrReserved__::UsdGeomScope::Define();
    MEMORY[0x23EE7E610](v11);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    result = sub_239F751B0(&v10);
    if ((v14 & 0x80) == 0)
    {
      goto LABEL_4;
    }

    return sub_239E5BAE0(a2, *(v2 + 8), *(v2 + 9));
  }

  if (!*(result + 9))
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v4 & 0x80) == 0)
  {
LABEL_4:
    *a2 = *v6;
    *(a2 + 16) = *(v6 + 2);
    return result;
  }

  return sub_239E5BAE0(a2, *(v2 + 8), *(v2 + 9));
}

void sub_239F48174(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_239EBE368(&a9);
  v15 = a14;
  if (a14)
  {
    if (atomic_fetch_add_explicit((a14 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v15 + 8))(v15);
    }
  }

  _Unwind_Resume(a1);
}

void sub_239F481D0(uint64_t a1@<X0>, pxrInternal__aapl__pxrReserved__::UsdShadeNodeGraph *a2@<X1>, pxrInternal__aapl__pxrReserved__::UsdShadeShader *a3@<X8>)
{
  v31 = *MEMORY[0x277D85DE8];
  __p[0] = 0;
  __p[1] = 0;
  v28 = 0;
  sub_239EEE934(a2, &v29);
  String = pxrInternal__aapl__pxrReserved__::SdfPath::GetString(&v29);
  if (*(String + 23) < 0)
  {
    sub_239E5BAE0(__p, *String, *(String + 8));
  }

  else
  {
    v7 = *String;
    v28 = *(String + 16);
    *__p = v7;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  v8 = sub_239E5B574(&v29);
  *a3 = 0;
  *(a3 + 1) = 0;
  *(a3 + 2) = 0;
  sub_239E56DF8(v8, (a1 + 112));
  if (v28 >= 0)
  {
    v9 = HIBYTE(v28);
  }

  else
  {
    v9 = __p[1];
  }

  v24[1] = 0;
  v25 = 0;
  v24[0] = 0;
  sub_239E959D0(v24, v9 + 14);
  if (v25 >= 0)
  {
    v10 = v24;
  }

  else
  {
    v10 = v24[0];
  }

  if (v9)
  {
    if (v28 >= 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = __p[0];
    }

    memmove(v10, v11, v9);
  }

  strcpy(v10 + v9, "/surfaceShader");
  MEMORY[0x23EE7ED00](v26, v24);
  pxrInternal__aapl__pxrReserved__::UsdShadeShader::Define();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_239F75210(v26);
  MEMORY[0x23EE7ED20](&v16, "UsdPreviewSurface");
  sub_239F75278(&v29, &v16);
  pxrInternal__aapl__pxrReserved__::UsdShadeShader::CreateIdAttr(&v20, a3, &v29);
  if ((v23 & 7) != 0)
  {
    atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_239E5B574(&v22);
  if (v21)
  {
    sub_239E5E560(v21);
  }

  sub_239E5B240(&v29);
  if ((v16 & 7) != 0)
  {
    atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v29 = 0u;
  v30 = 0u;
  MEMORY[0x23EE7ED20](&v16, "surface");
  v12 = MEMORY[0x277D86578];
  if (!atomic_load(MEMORY[0x277D86578]))
  {
    sub_239EB5678(MEMORY[0x277D86578]);
  }

  pxrInternal__aapl__pxrReserved__::UsdShadeShader::CreateOutput();
  if ((v16 & 7) != 0)
  {
    atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  MEMORY[0x23EE7ED20](&v15, "surface");
  v14 = atomic_load(v12);
  if (!v14)
  {
    v14 = sub_239EB5678(MEMORY[0x277D86578]);
  }

  pxrInternal__aapl__pxrReserved__::UsdShadeNodeGraph::CreateOutput(&v16, a2, &v15, (v14 + 88));
  MEMORY[0x23EE7F750](&v16, &v29);
  if ((v19 & 7) != 0)
  {
    atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_239E5B574(&v18);
  if (v17)
  {
    sub_239E5E560(v17);
  }

  if ((v15 & 7) != 0)
  {
    atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((BYTE8(v30) & 7) != 0)
  {
    atomic_fetch_add_explicit((*(&v30 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_239E5B574(&v30);
  if (*(&v29 + 1))
  {
    sub_239E5E560(*(&v29 + 1));
  }

  if (SHIBYTE(v28) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_239F48538(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a2)
  {
    sub_239E797CC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_239F48680(uint64_t a1, void *a2, uint64_t a3, pxrInternal__aapl__pxrReserved__::UsdShadeShader *a4)
{
  v7 = a2;
  __p[0] = 0;
  __p[1] = 0;
  v12 = 0;
  sub_239EEE934(a3, &v10);
  String = pxrInternal__aapl__pxrReserved__::SdfPath::GetString(&v10);
  if (*(String + 23) < 0)
  {
    sub_239E5BAE0(__p, *String, *(String + 8));
  }

  else
  {
    v9 = *String;
    v12 = *(String + 16);
    *__p = v9;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_239E5B574(&v10);
  v10 = 19;
  sub_239F48878(a1, 0, &v10, v7, a4, __p);
  v10 = 0;
  sub_239F48878(a1, 1, &v10, v7, a4, __p);
  v10 = 15;
  sub_239F48878(a1, 2, &v10, v7, a4, __p);
  v10 = 13;
  sub_239F48878(a1, 3, &v10, v7, a4, __p);
  v10 = 2;
  sub_239F48878(a1, 4, &v10, v7, a4, __p);
  v10 = 6;
  sub_239F48878(a1, 5, &v10, v7, a4, __p);
  v10 = 11;
  sub_239F48878(a1, 7, &v10, v7, a4, __p);
  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_239F48824(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_239F48878(uint64_t a1, int a2, uint64_t *a3, void *a4, pxrInternal__aapl__pxrReserved__::UsdShadeShader *a5, const void ***a6)
{
  v291 = *MEMORY[0x277D85DE8];
  v10 = a4;
  v21 = objc_msgSend_propertyWithSemantic_(v10, v11, *a3, v12, v17, v18, v19, v20, v13, v14, v15, v16);
  if (objc_msgSend_type(v21, v22, v23, v24, v29, v30, v31, v32, v25, v26, v27, v28) != 2 || (objc_msgSend_URLValue(v21, v33, v34, v35, v40, v41, v42, v43, v36, v37, v38, v39), v44 = objc_claimAutoreleasedReturnValue(), v44, !v44))
  {
    if (objc_msgSend_type(v21, v33, v34, v35, v40, v41, v42, v43, v36, v37, v38, v39) == 1)
    {
      v56 = objc_msgSend_stringValue(v21, v45, v46, v47, v52, v53, v54, v55, v48, v49, v50, v51);

      if (v56)
      {
        v57 = objc_msgSend_URLValue(v21, v45, v46, v47, v52, v53, v54, v55, v48, v49, v50, v51);

        if (v57)
        {
          v69 = objc_msgSend_URLValue(v21, v58, v59, v60, v65, v66, v67, v68, v61, v62, v63, v64);
          v81 = objc_msgSend_path(v69, v70, v71, v72, v77, v78, v79, v80, v73, v74, v75, v76);
        }

        else
        {
          v81 = objc_msgSend_stringValue(v21, v58, v59, v60, v65, v66, v67, v68, v61, v62, v63, v64);
        }

        memset(&__str, 0, sizeof(__str));
        v139 = v81;
        v151 = objc_msgSend_UTF8String(v139, v140, v141, v142, v147, v148, v149, v150, v143, v144, v145, v146);
        sub_239E552A0(&__str, v151);
        v163 = *(a1 + 8);
        if (!v163)
        {
          goto LABEL_53;
        }

        v287 = 0uLL;
        *&v288 = 0;
        v164 = objc_msgSend_URLByDeletingLastPathComponent(v163, v152, v153, v154, v159, v160, v161, v162, v155, v156, v157, v158);
        v176 = objc_msgSend_path(v164, v165, v166, v167, v172, v173, v174, v175, v168, v169, v170, v171);
        v177 = v176;
        v189 = objc_msgSend_UTF8String(v176, v178, v179, v180, v185, v186, v187, v188, v181, v182, v183, v184);
        sub_239E552A0(&v287, v189);

        std::string::append(&v287, "/");
        size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = __str.__r_.__value_.__l.__size_;
        }

        v154 = SBYTE7(v288);
        if ((SBYTE7(v288) & 0x8000000000000000) != 0)
        {
          v154 = *(&v287 + 1);
          if (size <= *(&v287 + 1))
          {
            goto LABEL_52;
          }
        }

        else if (size <= SBYTE7(v288))
        {
          goto LABEL_53;
        }

        std::string::basic_string(&v289, &__str, 0, v154, &v273);
        v205 = SBYTE7(v290);
        if ((SBYTE7(v290) & 0x80u) == 0)
        {
          v153 = BYTE7(v290);
        }

        else
        {
          v153 = *(&v289 + 1);
        }

        v206 = BYTE7(v288);
        v207 = BYTE7(v288);
        if (SBYTE7(v288) < 0)
        {
          v206 = *(&v287 + 1);
        }

        if (v153 == v206)
        {
          if ((SBYTE7(v290) & 0x80u) == 0)
          {
            v208 = &v289;
          }

          else
          {
            v208 = v289;
          }

          if ((SBYTE7(v288) & 0x80u) == 0)
          {
            v209 = &v287;
          }

          else
          {
            v209 = v287;
          }

          v210 = memcmp(v208, v209, v153) == 0;
          if ((v205 & 0x80000000) == 0)
          {
LABEL_43:
            if (v210)
            {
              if ((v207 & 0x80u) == 0)
              {
                v211 = v207;
              }

              else
              {
                v211 = *(&v287 + 1);
              }

              std::string::basic_string(&v289, &__str, v211, 0xFFFFFFFFFFFFFFFFLL, &v273);
              if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__str.__r_.__value_.__l.__data_);
              }

              *&__str.__r_.__value_.__l.__data_ = v289;
              __str.__r_.__value_.__r.__words[2] = v290;
              if (SBYTE7(v288) < 0)
              {
                operator delete(v287);
              }

LABEL_54:
              v262 = 0;
              v263 = 0;
              v264 = 0;
              v21;
              v284 = 0;
              v285 = 0;
              v286 = 0;
              sub_239E552A0(&v284, off_278B41148[a2]);
              memset(v283, 0, sizeof(v283));
              sub_239E552A0(v283, off_278B41190[a2]);
              v281 = 0uLL;
              v282 = 0;
              if (*(a6 + 23) >= 0)
              {
                v226 = *(a6 + 23);
              }

              else
              {
                v226 = a6[1];
              }

              *&v288 = 0;
              v287 = 0uLL;
              v227 = &v287;
              sub_239E959D0(&v287, v226 + 10);
              if (SBYTE7(v288) < 0)
              {
                v227 = v287;
              }

              if (v226)
              {
                if (*(a6 + 23) >= 0)
                {
                  v228 = a6;
                }

                else
                {
                  v228 = *a6;
                }

                memmove(v227, v228, v226);
              }

              strcpy(v227 + v226, "/uvReader_");
              sub_239E552A0(&v289, "st");
              if ((SBYTE7(v290) & 0x80u) == 0)
              {
                v229 = &v289;
              }

              else
              {
                v229 = v289;
              }

              if ((SBYTE7(v290) & 0x80u) == 0)
              {
                v230 = BYTE7(v290);
              }

              else
              {
                v230 = *(&v289 + 1);
              }

              v231 = std::string::append(&v287, v229, v230);
              v232 = *&v231->__r_.__value_.__l.__data_;
              v282 = v231->__r_.__value_.__r.__words[2];
              v281 = v232;
              v231->__r_.__value_.__l.__size_ = 0;
              v231->__r_.__value_.__r.__words[2] = 0;
              v231->__r_.__value_.__r.__words[0] = 0;
              if (SBYTE7(v290) < 0)
              {
                operator delete(v289);
              }

              if (SBYTE7(v288) < 0)
              {
                operator delete(v287);
              }

              v289 = 0u;
              v290 = 0u;
              v233 = sub_239E57038((a1 + 112));
              MEMORY[0x23EE7ED00](&v287, &v281);
              pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v289, v233, &v287);
              pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
              sub_239E5B574(&v287);
              v278 = 0;
              v279 = 0;
              v280 = 0;
              LODWORD(v287) = 1;
              *(&v287 + 1) = 0;
              pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
              pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
              *(&v288 + 1) = 0;
              pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
              v278 = MEMORY[0x277D86708] + 16;
              if ((BYTE8(v288) & 7) != 0)
              {
                atomic_fetch_add_explicit((*(&v288 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
              sub_239E5B574(&v288);
              if (*(&v287 + 1))
              {
                sub_239E5E560(*(&v287 + 1));
              }

              if (v279 && (*(v279 + 57) & 8) == 0 && (*(v278 + 32))(&v278))
              {
                pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
                *&v287 = MEMORY[0x277D86708] + 16;
                v234 = *(&v287 + 1);
                if (*(&v287 + 1))
                {
                  atomic_fetch_add_explicit((*(&v287 + 1) + 48), 1uLL, memory_order_relaxed);
                }

                if (v279)
                {
                  sub_239E5E560(v279);
                }

                v279 = v234;
                sub_239E57F68(&v280, &v288);
                sub_239E5B450(&v280 + 4, &v288 + 1);
                MEMORY[0x23EE7E820](&v287);
                v262 = 0;
                v263 = 0;
                v264 = 0;
                sub_239E56DF8(&v266, (a1 + 112));
                if (*(a6 + 23) >= 0)
                {
                  v237 = *(a6 + 23);
                }

                else
                {
                  v237 = a6[1];
                }

                memset(&v268, 0, sizeof(v268));
                v238 = &v268;
                sub_239E959D0(&v268, v237 + 1);
                if ((v268.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v238 = v268.__r_.__value_.__r.__words[0];
                }

                if (v237)
                {
                  if (*(a6 + 23) >= 0)
                  {
                    v239 = a6;
                  }

                  else
                  {
                    v239 = *a6;
                  }

                  memmove(v238, v239, v237);
                }

                *(&v238->__r_.__value_.__l.__data_ + v237) = 47;
                if (v286 >= 0)
                {
                  v240 = &v284;
                }

                else
                {
                  v240 = v284;
                }

                if (v286 >= 0)
                {
                  v241 = HIBYTE(v286);
                }

                else
                {
                  v241 = v285;
                }

                v242 = std::string::append(&v268, v240, v241);
                v243 = *&v242->__r_.__value_.__l.__data_;
                v269.__r_.__value_.__r.__words[2] = v242->__r_.__value_.__r.__words[2];
                *&v269.__r_.__value_.__l.__data_ = v243;
                v242->__r_.__value_.__l.__size_ = 0;
                v242->__r_.__value_.__r.__words[2] = 0;
                v242->__r_.__value_.__r.__words[0] = 0;
                v244 = std::string::append(&v269, "_texture");
                v245 = *&v244->__r_.__value_.__l.__data_;
                *&v288 = *(&v244->__r_.__value_.__l + 2);
                v287 = v245;
                v244->__r_.__value_.__l.__size_ = 0;
                v244->__r_.__value_.__r.__words[2] = 0;
                v244->__r_.__value_.__r.__words[0] = 0;
                MEMORY[0x23EE7ED00](&v271, &v287);
                pxrInternal__aapl__pxrReserved__::UsdShadeShader::Define();
                pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                sub_239E5B574(&v271);
                if (SBYTE7(v288) < 0)
                {
                  operator delete(v287);
                }

                if (SHIBYTE(v269.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v269.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v268.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v268.__r_.__value_.__l.__data_);
                }

                v246 = v267;
                if (v267 && atomic_fetch_add_explicit((v267 + 8), 0xFFFFFFFF, memory_order_release) == 1)
                {
                  (*(*v246 + 8))(v246);
                }

                MEMORY[0x23EE7ED20](&v268, "UsdUVTexture");
                sub_239F75278(&v287, &v268);
                pxrInternal__aapl__pxrReserved__::UsdShadeShader::CreateIdAttr(&v269, &v262, &v287);
                if ((v270 & 7) != 0)
                {
                  atomic_fetch_add_explicit((v270 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                }

                pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                sub_239E5B574(&v269.__r_.__value_.__r.__words[2]);
                if (v269.__r_.__value_.__l.__size_)
                {
                  sub_239E5E560(v269.__r_.__value_.__l.__size_);
                }

                sub_239E5B240(&v287);
                if ((v268.__r_.__value_.__s.__data_[0] & 7) != 0)
                {
                  atomic_fetch_add_explicit((v268.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                }

                MEMORY[0x23EE7ED20](&v266, "file");
                if (!atomic_load(MEMORY[0x277D86578]))
                {
                  sub_239EB5678(MEMORY[0x277D86578]);
                }

                pxrInternal__aapl__pxrReserved__::UsdShadeShader::CreateInput();
                MEMORY[0x23EE7E5B0](&v287, &__str);
                pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::SdfAssetPath>();
              }

              sub_239E56DF8(&v273, (a1 + 112));
              MEMORY[0x23EE7ED00](v277, &v281);
              pxrInternal__aapl__pxrReserved__::UsdShadeShader::Define();
              v235 = *(&v287 + 1);
              if (*(&v287 + 1))
              {
                atomic_fetch_add_explicit((*(&v287 + 1) + 48), 1uLL, memory_order_relaxed);
              }

              if (v279)
              {
                sub_239E5E560(v279);
              }

              v279 = v235;
              sub_239E57F68(&v280, &v288);
              sub_239E5B450(&v280 + 4, &v288 + 1);
              MEMORY[0x23EE7E820](&v287);
              pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
              sub_239F752B8(v277, &v273);
              MEMORY[0x23EE7ED20](&__p, "UsdPrimvarReader_float2");
              sub_239F75278(&v287, &__p);
              pxrInternal__aapl__pxrReserved__::UsdShadeShader::CreateIdAttr(&v273, &v278, &v287);
              if ((v276 & 7) != 0)
              {
                atomic_fetch_add_explicit((v276 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
              sub_239E5B574(&v275);
              if (v274)
              {
                sub_239E5E560(v274);
              }

              sub_239E5B240(&v287);
              if ((__p & 7) != 0)
              {
                atomic_fetch_add_explicit((__p & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              v287 = 0u;
              v288 = 0u;
              MEMORY[0x23EE7ED20](&__p, "varname");
              if (!atomic_load(MEMORY[0x277D86578]))
              {
                sub_239EB5678(MEMORY[0x277D86578]);
              }

              pxrInternal__aapl__pxrReserved__::UsdShadeShader::CreateInput();
              if ((__p & 7) != 0)
              {
                atomic_fetch_add_explicit((__p & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              sub_239E552A0(&__p, "st");
              MEMORY[0x23EE7ED30](&v269, &__p);
              pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::TfToken>();
            }

            if ((v207 & 0x80) == 0)
            {
LABEL_53:
              v212 = objc_msgSend_lastPathComponent(v81, v152, v153, v154, v159, v160, v161, v162, v155, v156, v157, v158);
              v213 = v212;
              v225 = objc_msgSend_UTF8String(v212, v214, v215, v216, v221, v222, v223, v224, v217, v218, v219, v220);
              MEMORY[0x23EE7FFA0](&__str, v225);

              goto LABEL_54;
            }

LABEL_52:
            operator delete(v287);
            goto LABEL_53;
          }
        }

        else
        {
          v210 = 0;
          if ((SBYTE7(v290) & 0x80000000) == 0)
          {
            goto LABEL_43;
          }
        }

        operator delete(v289);
        v207 = BYTE7(v288);
        goto LABEL_43;
      }
    }

    if (objc_msgSend_type(v21, v45, v46, v47, v52, v53, v54, v55, v48, v49, v50, v51) == 3)
    {
      v100 = objc_msgSend_textureSamplerValue(v21, v82, v83, v84, v89, v90, v91, v92, v85, v86, v87, v88);
      if (v100)
      {
        v105 = objc_msgSend_textureSamplerValue(v21, v93, v94, v95, v101, v102, v103, v104, v96, v97, v98, v99);
        objc_msgSend_texture(v105, v106, v107, v108, v113, v114, v115, v116, v109, v110, v111, v112);
      }
    }

    else
    {
      if (objc_msgSend_type(v21, v82, v83, v84, v89, v90, v91, v92, v85, v86, v87, v88) == 8)
      {
        objc_msgSend_float4Value(v21, v117, v118, v119, v124, v125, v126, v127, v120, v121, v122, v123);
        *&v289 = 0;
        *(&v289 + 1) = &off_284D165E0 + 2;
        operator new();
      }

      if (objc_msgSend_type(v21, v117, v118, v119, v124, v125, v126, v127, v120, v121, v122, v123) == 7)
      {
        objc_msgSend_float3Value(v21, v128, v129, v130, v135, v136, v137, v138, v131, v132, v133, v134);
        *&v289 = 0;
        *(&v289 + 1) = &off_284D165E0 + 2;
        operator new();
      }

      if (objc_msgSend_type(v21, v128, v129, v130, v135, v136, v137, v138, v131, v132, v133, v134) == 5)
      {
        objc_msgSend_floatValue(v21, v191, v192, v193, v198, v199, v200, v201, v194, v195, v196, v197);
        v203 = v202;
        MEMORY[0x23EE7ED20](&v273, off_278B41148[a2]);
        if (!atomic_load(MEMORY[0x277D86578]))
        {
          sub_239EB5678(MEMORY[0x277D86578]);
        }

        pxrInternal__aapl__pxrReserved__::UsdShadeShader::CreateInput();
        *(&v289 + 1) = &unk_284D15333;
        LODWORD(v289) = v203;
        pxrInternal__aapl__pxrReserved__::UsdAttribute::Set();
        sub_239E5B240(&v289);
        sub_239EF06E8(&v287);
        if ((v273 & 7) != 0)
        {
          atomic_fetch_add_explicit((v273 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      else if (objc_msgSend_type(v21, v191, v192, v193, v198, v199, v200, v201, v194, v195, v196, v197) == 4)
      {
        v259 = objc_msgSend_color(v21, v248, v249, v250, v255, v256, v257, v258, v251, v252, v253, v254);
        CGColorGetComponents(v259);
        ColorSpace = CGColorGetColorSpace(v259);
        if (CGColorSpaceGetModel(ColorSpace) == kCGColorSpaceModelRGB)
        {
          CGColorGetNumberOfComponents(v259);
        }

        MEMORY[0x23EE7ED20](&v273, off_278B41148[a2]);
        if (!atomic_load(MEMORY[0x277D86578]))
        {
          sub_239EB5678(MEMORY[0x277D86578]);
        }

        pxrInternal__aapl__pxrReserved__::UsdShadeShader::CreateInput();
        *(&v289 + 1) = &off_284D163B8 + 2;
        operator new();
      }
    }
  }
}

void sub_239F49DC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, __int16 a47, uint64_t a48, uint64_t a49, void *__p, uint64_t a51, int a52, __int16 a53, char a54, char a55, uint64_t a56, void *a57, uint64_t a58, int a59, __int16 a60, char a61, char a62)
{
  MEMORY[0x23EE7E820](&a14, a2, a3, a4, a5, a6, a7, a8);
  MEMORY[0x23EE7E820](&a47);
  sub_239ED1984(v64 - 176);
  if (a55 < 0)
  {
    operator delete(__p);
  }

  if (a62 < 0)
  {
    operator delete(a57);
  }

  if (*(v64 - 225) < 0)
  {
    operator delete(*(v64 - 248));
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(a1);
}

void sub_239F4A3A0(uint64_t a1@<X0>, void *a2@<X1>, pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a3@<X8>)
{
  v7 = a2;
  v8 = v7;
  v9 = *(a1 + 208);
  if (!v9)
  {
    goto LABEL_9;
  }

  v3 = (a1 + 208);
  do
  {
    v10 = v9[4];
    v11 = v10 >= v7;
    v12 = v10 < v7;
    if (v11)
    {
      v3 = v9;
    }

    v9 = v9[v12];
  }

  while (v9);
  if (v3 != (a1 + 208) && v3[4] <= v7)
  {

    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
    *a3 = MEMORY[0x277D86758] + 16;
  }

  else
  {
LABEL_9:

    v56 = 0uLL;
    v57 = 0;
    if (v8)
    {
      v3 = objc_msgSend_name(v8, v13, v14, v15, v20, v21, v22, v23, v16, v17, v18, v19);
      v4 = sub_239F4A888(v3);
      v24 = v4;
      v36 = objc_msgSend_UTF8String(v24, v25, v26, v27, v32, v33, v34, v35, v28, v29, v30, v31);
    }

    else
    {
      v36 = "Default";
    }

    sub_239E552A0(&v56, v36);
    if (v8)
    {
    }

    v37 = HIBYTE(v57);
    if (v57 < 0)
    {
      v37 = *(&v56 + 1);
    }

    if (v37)
    {
      sub_239F4A9EC(&v56, (a1 + 160), __p);
      if (SHIBYTE(v57) < 0)
      {
        operator delete(v56);
      }

      v56 = *__p;
      v57 = v54;
      __p[0] = 0;
      __p[1] = 0;
      v54 = 0;
      sub_239F47FF0(a1, &v51);
      v38 = std::string::append(&v51, "/");
      v39 = *&v38->__r_.__value_.__l.__data_;
      v52.__r_.__value_.__r.__words[2] = v38->__r_.__value_.__r.__words[2];
      *&v52.__r_.__value_.__l.__data_ = v39;
      v38->__r_.__value_.__l.__size_ = 0;
      v38->__r_.__value_.__r.__words[2] = 0;
      v38->__r_.__value_.__r.__words[0] = 0;
      if (v57 >= 0)
      {
        v40 = &v56;
      }

      else
      {
        v40 = v56;
      }

      if (v57 >= 0)
      {
        v41 = HIBYTE(v57);
      }

      else
      {
        v41 = *(&v56 + 1);
      }

      v42 = std::string::append(&v52, v40, v41);
      v43 = *&v42->__r_.__value_.__l.__data_;
      v54 = v42->__r_.__value_.__r.__words[2];
      *__p = v43;
      v42->__r_.__value_.__l.__size_ = 0;
      v42->__r_.__value_.__r.__words[2] = 0;
      v42->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v52.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v51.__r_.__value_.__l.__data_);
      }

      *a3 = 0;
      *(a3 + 1) = 0;
      *(a3 + 2) = 0;
      sub_239E56DF8(&v52, (a1 + 112));
      MEMORY[0x23EE7ED00](v50, __p);
      pxrInternal__aapl__pxrReserved__::UsdShadeMaterial::Define();
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      sub_239F752B8(v50, &v52);
      memset(&v52, 0, sizeof(v52));
      sub_239F481D0(a1, a3, &v52);
      if (v8)
      {
        sub_239F48680(a1, v8, a3, &v52);
      }

      v49 = v8;
      v51.__r_.__value_.__r.__words[0] = &v49;
      v44 = sub_239F51908(a1 + 200, &v49, &unk_239F9BFF0, &v51, &v58);
      v45 = v44;
      v46 = *(a3 + 1);
      if (v46)
      {
        atomic_fetch_add_explicit((v46 + 48), 1uLL, memory_order_relaxed);
      }

      v47 = v44[6];
      if (v47)
      {
        sub_239E5E560(v47);
      }

      v45[6] = v46;
      sub_239E57F68((v45 + 7), a3 + 4);
      sub_239E5B450(v45 + 60, a3 + 5);
      v48 = v49;
      v49 = 0;

      MEMORY[0x23EE7E820](&v52);
      if (SHIBYTE(v54) < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      LODWORD(__p[0]) = 1;
      __p[1] = 0;
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
      v55 = 0;
      pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
      *a3 = MEMORY[0x277D86758] + 16;
      if ((v55 & 7) != 0)
      {
        atomic_fetch_add_explicit((v55 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      sub_239E5B574(&v54);
      if (__p[1])
      {
        sub_239E5E560(__p[1]);
      }
    }

    if (SHIBYTE(v57) < 0)
    {
      operator delete(v56);
    }
  }
}

void sub_239F4A744(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  MEMORY[0x23EE7E820](&a18, a2, a3, a4, a5, a6, a7, a8);
  MEMORY[0x23EE7E910](v31);
  if (a30 < 0)
  {
    operator delete(__p);
  }

  if (*(v32 - 57) < 0)
  {
    operator delete(*(v32 - 80));
  }

  _Unwind_Resume(a1);
}

__CFString *sub_239F4A888(void *a1)
{
  v1 = a1;
  if (objc_msgSend_length(v1, v2, v3, v4, v9, v10, v11, v12, v5, v6, v7, v8))
  {
    v87 = 0;
    v21 = objc_msgSend_regularExpressionWithPattern_options_error_(MEMORY[0x277CCAC68], v13, @"[^A-Za-z0-9]", 1, v17, v18, v19, v20, &v87, v14, v15, v16);
    v22 = v87;
    v34 = objc_msgSend_length(v1, v23, v24, v25, v30, v31, v32, v33, v26, v27, v28, v29);
    v41 = objc_msgSend_stringByReplacingMatchesInString_options_range_withTemplate_(v21, v35, v1, 0, v37, v38, v39, v40, 0, v34, @"_", v36);
    v53 = objc_msgSend_decimalDigitCharacterSet(MEMORY[0x277CCA900], v42, v43, v44, v49, v50, v51, v52, v45, v46, v47, v48);
    v64 = objc_msgSend_characterAtIndex_(v41, v54, 0, v55, v60, v61, v62, v63, v56, v57, v58, v59);
    if (objc_msgSend_characterIsMember_(v53, v65, v64, v66, v71, v72, v73, v74, v67, v68, v69, v70))
    {
      v85 = objc_msgSend_stringByAppendingString_(@"_", v75, v41, v76, v81, v82, v83, v84, v77, v78, v79, v80);

      v41 = v85;
    }
  }

  else
  {
    v41 = &stru_284D18478;
  }

  return v41;
}

double sub_239F4A9EC@<D0>(__int128 *a1@<X0>, float *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a3;
  __dst = 0uLL;
  v32 = 0;
  LODWORD(a3) = *(a1 + 23);
  if ((a3 & 0x80000000) != 0)
  {
    sub_239E5BAE0(&__dst, *a1, *(a1 + 1));
    LOBYTE(a3) = *(a1 + 23);
  }

  else
  {
    __dst = *a1;
    v32 = *(a1 + 2);
  }

  a3 = a3;
  if ((a3 & 0x80u) != 0)
  {
    a3 = *(a1 + 1);
  }

  if (a3)
  {
    v5 = 0;
    v6 = 1;
    v7 = MEMORY[0x277D85DE0];
    do
    {
      if (v32 >= 0)
      {
        p_dst = &__dst;
      }

      else
      {
        p_dst = __dst;
      }

      v9 = *(p_dst + v5);
      if ((v9 & 0x80000000) != 0)
      {
        v10 = __maskrune(*(p_dst + v5), 0x100uLL);
      }

      else
      {
        v10 = *(v7 + 4 * v9 + 60) & 0x100;
      }

      if (!v10 && (v6 == 1 || (v9 & 0x80000000) != 0 || (*(v7 + 4 * v9 + 60) & 0x400) == 0) && v9 != 47 && v9 != 95)
      {
        if (v32 >= 0)
        {
          v13 = &__dst;
        }

        else
        {
          v13 = __dst;
        }

        *(v13 + v5) = 95;
      }

      v5 = v6;
      v11 = *(a1 + 23);
      if ((v11 & 0x80u) != 0)
      {
        v11 = *(a1 + 1);
      }
    }

    while (v11 > v6++);
  }

  if (sub_239F50B3C(a2, &__dst))
  {
    v14 = 0;
    v15 = *MEMORY[0x277D82818];
    v17 = *(MEMORY[0x277D82818] + 64);
    v16 = *(MEMORY[0x277D82818] + 72);
    while (1)
    {
      v30 = 0;
      v28 = 0u;
      memset(v29, 0, sizeof(v29));
      *__p = 0u;
      v27 = 0u;
      v24 = 0u;
      memset(v25, 0, sizeof(v25));
      v23 = 0u;
      sub_239EE76F8(&v23);
      v18 = v32 >= 0 ? &__dst : __dst;
      v19 = v32 >= 0 ? HIBYTE(v32) : *(&__dst + 1);
      v20 = sub_239E98B94(&v24, v18, v19);
      MEMORY[0x23EE80140](v20, v14);
      *v4 = 0;
      *(v4 + 8) = 0;
      *(v4 + 16) = 0;
      std::stringbuf::str();
      if (!sub_239F50B3C(a2, v4))
      {
        break;
      }

      if (*(v4 + 23) < 0)
      {
        operator delete(*v4);
      }

      *&v23 = v15;
      *(&v23 + *(v15 - 24)) = v17;
      *&v24 = v16;
      *(&v24 + 1) = MEMORY[0x277D82878] + 16;
      if (SHIBYTE(v27) < 0)
      {
        operator delete(__p[1]);
      }

      *(&v24 + 1) = MEMORY[0x277D82868] + 16;
      std::locale::~locale(v25);
      std::iostream::~basic_iostream();
      MEMORY[0x23EE80250](v29);
      v14 = (v14 + 1);
    }

    sub_239E6883C(a2, v4, v4);
    *&v23 = v15;
    *(&v23 + *(v15 - 24)) = v17;
    *&v24 = v16;
    *(&v24 + 1) = MEMORY[0x277D82878] + 16;
    if (SHIBYTE(v27) < 0)
    {
      operator delete(__p[1]);
    }

    *(&v24 + 1) = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v25);
    std::iostream::~basic_iostream();
    MEMORY[0x23EE80250](v29);
    if (SHIBYTE(v32) < 0)
    {
      operator delete(__dst);
    }
  }

  else
  {
    sub_239E6883C(a2, &__dst, &__dst);
    result = *&__dst;
    *v4 = __dst;
    *(v4 + 16) = v32;
  }

  return result;
}

void sub_239F4AE98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (*(v11 - 89) < 0)
  {
    operator delete(*(v11 - 112));
  }

  _Unwind_Resume(exception_object);
}

void sub_239F4AEFC(uint64_t a1, void *a2, __int128 *a3, uint64_t a4, __int128 *a5)
{
  v294 = *MEMORY[0x277D85DE8];
  v268 = a2;
  v284 = 0;
  v285 = 0;
  LODWORD(__str) = 1;
  *(&__str + 1) = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  *(&v291 + 1) = 0;
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
  v283 = MEMORY[0x277D866A8] + 16;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_239E5B574(&v291);
  v17 = objc_msgSend_submeshes(v268, v6, v7, v8, v13, v14, v15, v16, v9, v10, v11, v12);
  v263 = objc_msgSend_count(v17, v18, v19, v20, v25, v26, v27, v28, v21, v22, v23, v24);

  if (v263 <= 1)
  {
    sub_239E56DF8(&v286, (a1 + 112));
    pxrInternal__aapl__pxrReserved__::UsdGeomMesh::Define();
    v31 = *(&__str + 1);
    if (*(&__str + 1))
    {
      atomic_fetch_add_explicit((*(&__str + 1) + 48), 1uLL, memory_order_relaxed);
    }

    v284 = v31;
    sub_239E57F68(&v285, &v291);
    sub_239E5B450(&v285 + 4, &v291 + 1);
    MEMORY[0x23EE7E550](&__str);
    v32 = *(&v286 + 1);
    if (*(&v286 + 1) && atomic_fetch_add_explicit((*(&v286 + 1) + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v32 + 8))(v32);
    }

    sub_239E5815C(&__str, &v284, &v285);
    *a3 = __str;
    v33 = *(a3 + 1);
    if (v33)
    {
      sub_239E5E560(v33);
    }

    *(a3 + 1) = *(&__str + 1);
    *(&__str + 1) = 0;
    sub_239E650AC((a3 + 1), &v291);
    sub_239E65104(a3 + 20, &v291 + 1);
    if (&__str == a3)
    {
      if ((BYTE8(v291) & 7) != 0)
      {
        atomic_fetch_add_explicit((*(&v291 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    else
    {
      v34 = *(a3 + 3);
      if ((v34 & 7) != 0)
      {
        atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      *(a3 + 3) = *(&v291 + 1);
      *(&v291 + 1) = 0;
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_239E5B574(&v291);
    if (*(&__str + 1))
    {
      sub_239E5E560(*(&__str + 1));
    }
  }

  else
  {
    sub_239E56DF8(&__dst, (a1 + 112));
    pxrInternal__aapl__pxrReserved__::UsdGeomXform::Define();
    sub_239E5815C(&__str, &v286 + 1, &v287);
    *a3 = __str;
    v29 = *(a3 + 1);
    if (v29)
    {
      sub_239E5E560(v29);
    }

    *(a3 + 1) = *(&__str + 1);
    *(&__str + 1) = 0;
    sub_239E650AC((a3 + 1), &v291);
    sub_239E65104(a3 + 20, &v291 + 1);
    if (&__str == a3)
    {
      if ((BYTE8(v291) & 7) != 0)
      {
        atomic_fetch_add_explicit((*(&v291 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    else
    {
      v30 = *(a3 + 3);
      if ((v30 & 7) != 0)
      {
        atomic_fetch_add_explicit((v30 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      *(a3 + 3) = *(&v291 + 1);
      *(&v291 + 1) = 0;
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_239E5B574(&v291);
    if (*(&__str + 1))
    {
      sub_239E5E560(*(&__str + 1));
    }

    MEMORY[0x23EE7E640](&v286);
    v45 = __dst.n128_u64[1];
    if (__dst.n128_u64[1] && atomic_fetch_add_explicit((__dst.n128_u64[1] + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v45 + 8))(v45);
    }
  }

  v281 = 0u;
  v282 = 0u;
  v279 = 0u;
  v280 = 0u;
  obj = objc_msgSend_submeshes(v268, v35, v36, v37, 0, v42, v43, v44, v38, v39, v40, v41);
  v264 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v46, &v279, v293, v50, v51, v52, v53, 16, v47, v48, v49);
  if (v264)
  {
    v262 = *v280;
    do
    {
      for (i = 0; i != v264; ++i)
      {
        if (*v280 != v262)
        {
          objc_enumerationMutation(obj);
        }

        v267 = *(*(&v279 + 1) + 8 * i);
        if (v263 >= 2)
        {
          v286 = 0uLL;
          *&v287 = 0;
          sub_239E552A0(&v286, "");
          v73 = objc_msgSend_name(v267, v62, v63, v64, v69, v70, v71, v72, v65, v66, v67, v68);
          v74 = v73 == 0;

          if (!v74)
          {
            v86 = objc_msgSend_name(v267, v75, v76, v77, v82, v83, v84, v85, v78, v79, v80, v81);
            v87 = v86;
            v98 = objc_msgSend_cStringUsingEncoding_(v86, v88, 4, v89, v94, v95, v96, v97, v90, v91, v92, v93);
            MEMORY[0x23EE7FFA0](&v286, v98);
          }

          v99 = BYTE7(v287);
          if (SBYTE7(v287) < 0)
          {
            v99 = *(&v286 + 1);
          }

          if (!v99)
          {
            MEMORY[0x23EE7FFA0](&v286, "_");
          }

          __dst = 0uLL;
          *&__dst_16 = 0;
          if (*(a5 + 23) < 0)
          {
            sub_239E5BAE0(&__dst, *a5, *(a5 + 1));
            objc_msgSend_submeshes(v268, v100, v101, v102, v107, v108, v109, v110, v103, v104, v105, v106);
          }

          else
          {
            __dst = *a5;
            *&__dst_16 = *(a5 + 2);
            objc_msgSend_submeshes(v268, v75, v76, v77, __dst, v83, v84, v85, v78, v79, v80, v81);
          }
          v111 = ;
          v123 = objc_msgSend_count(v111, v112, v113, v114, v119, v120, v121, v122, v115, v116, v117, v118) > 0x10;

          if (v123)
          {
            __str = 0u;
            v291 = 0u;
            snprintf(&__str, 0x20uLL, "/_%d", 0);
            std::string::append(&__dst, &__str);
          }

          __str = 0uLL;
          *&v291 = 0;
          if ((SBYTE7(__dst_16) & 0x80u) == 0)
          {
            v124 = BYTE7(__dst_16);
          }

          else
          {
            v124 = __dst.n128_u64[1];
          }

          memset(&v289, 0, sizeof(v289));
          sub_239E959D0(&v289, v124 + 1);
          if ((v289.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v125 = &v289;
          }

          else
          {
            v125 = v289.__r_.__value_.__r.__words[0];
          }

          if (v124)
          {
            if ((SBYTE7(__dst_16) & 0x80u) == 0)
            {
              p_dst = &__dst;
            }

            else
            {
              p_dst = __dst.n128_u64[0];
            }

            memmove(v125, p_dst, v124);
          }

          *(&v125->__r_.__value_.__l.__data_ + v124) = 47;
          if ((SBYTE7(v287) & 0x80u) == 0)
          {
            v127 = &v286;
          }

          else
          {
            v127 = v286;
          }

          if ((SBYTE7(v287) & 0x80u) == 0)
          {
            v128 = BYTE7(v287);
          }

          else
          {
            v128 = *(&v286 + 1);
          }

          v129 = std::string::append(&v289, v127, v128);
          __p = *&v129->__r_.__value_.__l.__data_;
          *&v270 = *(&v129->__r_.__value_.__l + 2);
          v129->__r_.__value_.__l.__size_ = 0;
          v129->__r_.__value_.__r.__words[2] = 0;
          v129->__r_.__value_.__r.__words[0] = 0;
          sub_239F4A9EC(&__p, (a1 + 120), &__str);
          if (SBYTE7(v270) < 0)
          {
            operator delete(__p);
          }

          if (SHIBYTE(v289.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v289.__r_.__value_.__l.__data_);
          }

          sub_239E56DF8(&v289, (a1 + 112));
          MEMORY[0x23EE7ED00](&v288, &__str);
          pxrInternal__aapl__pxrReserved__::UsdGeomMesh::Define();
          v130 = *(&__p + 1);
          if (*(&__p + 1))
          {
            atomic_fetch_add_explicit((*(&__p + 1) + 48), 1uLL, memory_order_relaxed);
          }

          if (v284)
          {
            sub_239E5E560(v284);
          }

          v284 = v130;
          sub_239E57F68(&v285, &v270);
          sub_239E5B450(&v285 + 4, &v270 + 1);
          MEMORY[0x23EE7E550](&__p);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          sub_239E5B574(&v288);
          size = v289.__r_.__value_.__l.__size_;
          if (v289.__r_.__value_.__l.__size_ && atomic_fetch_add_explicit((v289.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFF, memory_order_release) == 1)
          {
            (*(*size + 8))(size);
          }

          if (SBYTE7(v291) < 0)
          {
            operator delete(__str);
          }

          if (SBYTE7(__dst_16) < 0)
          {
            operator delete(__dst.n128_u64[0]);
          }

          if (SBYTE7(v287) < 0)
          {
            operator delete(v286);
          }
        }

        if (v284 && (*(v284 + 57) & 8) == 0 && (*(v283 + 32))(&v283))
        {
          MEMORY[0x23EE7ED20](&v286, "none");
          *(&__str + 1) = &off_284D16248 + 1;
          *&__str = v286;
          if ((v286 & 7) != 0 && (atomic_fetch_add_explicit((v286 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            *&__str = __str & 0xFFFFFFFFFFFFFFF8;
          }

          pxrInternal__aapl__pxrReserved__::UsdGeomMesh::CreateSubdivisionSchemeAttr(&v275, &v283, &__str);
          if ((v278 & 7) != 0)
          {
            atomic_fetch_add_explicit((v278 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          sub_239E5B574(&v277);
          if (v276)
          {
            sub_239E5E560(v276);
          }

          sub_239E5B240(&__str);
          if ((v286 & 7) != 0)
          {
            atomic_fetch_add_explicit((v286 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          __dst = 0u;
          __dst_16 = 0u;
          v274 = 1065353216;
          __p = 0u;
          v270 = 0u;
          v271 = 1065353216;
          v142 = objc_msgSend_indexBuffer(v267, v132, v133, v134, 0, v139, v140, v141, v135, v136, v137, v138);
          v261 = objc_msgSend_map(v142, v143, v144, v145, v150, v151, v152, v153, v146, v147, v148, v149);

          v165 = objc_msgSend_bytes(v261, v154, v155, v156, v161, v162, v163, v164, v157, v158, v159, v160);
          v177 = objc_msgSend_indexType(v267, v166, v167, v168, v173, v174, v175, v176, v169, v170, v171, v172);
          switch(v177)
          {
            case 8:
              for (j = objc_msgSend_indexCount(v267, v178, v179, v180, v185, v186, v187, v188, v181, v182, v183, v184); j; --j)
              {
                v194 = *v165;
                v165 = (v165 + 1);
                *&__str = v194;
                sub_239F51BD4(&__p, &__str, &__str);
              }

              break;
            case 16:
              for (k = objc_msgSend_indexCount(v267, v178, v179, v180, v185, v186, v187, v188, v181, v182, v183, v184); k; --k)
              {
                v192 = *v165++;
                *&__str = v192;
                sub_239F51BD4(&__p, &__str, &__str);
              }

              break;
            case 32:
              for (m = objc_msgSend_indexCount(v267, v178, v179, v180, v185, v186, v187, v188, v181, v182, v183, v184); m; --m)
              {
                v190 = *v165;
                v165 += 2;
                *&__str = v190;
                sub_239F51BD4(&__p, &__str, &__str);
              }

              break;
          }

          v202 = objc_msgSend_topology(v267, v178, v179, v180, v185, v186, v187, v188, v181, v182, v183, v184);
          if (v202)
          {
            v207 = objc_msgSend_topology(v267, v195, v196, v197, v203, v204, v205, v206, v198, v199, v200, v201);
            v226 = objc_msgSend_faceTopology(v207, v208, v209, v210, v215, v216, v217, v218, v211, v212, v213, v214);
            if (v226)
            {
              v231 = objc_msgSend_topology(v267, v219, v220, v221, v227, v228, v229, v230, v222, v223, v224, v225);
              v243 = objc_msgSend_faceCount(v231, v232, v233, v234, v239, v240, v241, v242, v235, v236, v237, v238) != 0;

              v244 = v270;
              if (v270)
              {
                v245 = v243;
              }

              else
              {
                v245 = 1;
              }

              if (v245)
              {
                goto LABEL_116;
              }

              goto LABEL_113;
            }
          }

          v244 = v270;
          if (!v270)
          {
            goto LABEL_116;
          }

          do
          {
LABEL_113:
            *&v286 = v244[2];
            if (!sub_239E7C134(&__dst, &v286))
            {
              v246 = *(&__dst_16 + 1);
              *&__str = &v286;
              sub_239F51E04(&__dst, &v286, &unk_239F9BFF0, &__str)[3] = v246;
            }

            v244 = *v244;
          }

          while (v244);
LABEL_116:
          v247 = objc_msgSend_vertexDescriptor(v268, v195, v196, v197, v203, v204, v205, v206, v198, v199, v200, v201);
          v258 = objc_msgSend_attributeNamed_(v247, v248, @"position", v249, v254, v255, v256, v257, v250, v251, v252, v253);

          *&v292 = 0;
          __str = 0u;
          v291 = 0u;
          sub_239F4E0A4(v268, v258, &__str, &__dst);
          v286 = 0u;
          v287 = 0u;
          v289.__r_.__value_.__l.__size_ = off_284D15C88;
          sub_239EB5D90(&v289, &__str);
        }
      }

      v264 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v54, &v279, v293, v58, v59, v60, v61, 16, v55, v56, v57);
    }

    while (v264);
  }

  MEMORY[0x23EE7E550](&v283);
}

void sub_239F4D5D4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_239E797CC(a1);
  }

  _Unwind_Resume(a1);
}

void sub_239F4E0A4(void *a1, void *a2, unint64_t *a3, uint64_t a4)
{
  v7 = a1;
  v249 = a2;
  v251 = v7;
  v253 = objc_msgSend_bufferIndex(v249, v8, v9, v10, v15, v16, v17, v18, v11, v12, v13, v14);
  v30 = objc_msgSend_vertexBuffers(v7, v19, v20, v21, v26, v27, v28, v29, v22, v23, v24, v25);
  v41 = objc_msgSend_objectAtIndexedSubscript_(v30, v31, v253, v32, v37, v38, v39, v40, v33, v34, v35, v36);
  v53 = objc_msgSend_map(v41, v42, v43, v44, v49, v50, v51, v52, v45, v46, v47, v48);

  v252 = v53;
  v65 = objc_msgSend_bytes(v53, v54, v55, v56, v61, v62, v63, v64, v57, v58, v59, v60);
  v77 = objc_msgSend_offset(v249, v66, v67, v68, v73, v74, v75, v76, v69, v70, v71, v72);
  v89 = objc_msgSend_vertexDescriptor(v7, v78, v79, v80, v85, v86, v87, v88, v81, v82, v83, v84);
  v101 = objc_msgSend_layouts(v89, v90, v91, v92, v97, v98, v99, v100, v93, v94, v95, v96);
  v112 = objc_msgSend_objectAtIndexedSubscript_(v101, v102, v253, v103, v108, v109, v110, v111, v104, v105, v106, v107);
  v124 = objc_msgSend_stride(v112, v113, v114, v115, v120, v121, v122, v123, v116, v117, v118, v119);

  if (v124 <= 2)
  {
    v136 = objc_msgSend_name(v249, v125, v126, v127, v132, v133, v134, v135, v128, v129, v130, v131);
    NSLog(&cfstr_AttributeStrid.isa, v136);

    if (*a3)
    {
      sub_239E5B364(a3);
    }

    goto LABEL_36;
  }

  v137 = *(a4 + 24);
  if (!v137)
  {
    v138 = objc_msgSend_vertexBuffers(v7, v125, v126, v127, v132, v133, v134, v135, v128, v129, v130, v131);
    v149 = objc_msgSend_objectAtIndexedSubscript_(v138, v139, v253, v140, v145, v146, v147, v148, v141, v142, v143, v144);
    v137 = objc_msgSend_length(v149, v150, v151, v152, v157, v158, v159, v160, v153, v154, v155, v156) / v124;
  }

  v255 = 0;
  v254 = 0;
  v256 = &v254;
  sub_239E6D160(a3, v137, &v256);
  v250 = objc_msgSend_format(v249, v161, v162, v163, v168, v169, v170, v171, v164, v165, v166, v167);
  v183 = (v65 + v77);
  v248 = objc_msgSend_format(v249, v172, v173, v174, v179, v180, v181, v182, v175, v176, v177, v178);
  if (!*(a4 + 24))
  {
    if (!v137)
    {
      goto LABEL_36;
    }

    v234 = 0;
    while (v250 & 0x10000 | v248 & 0x20000)
    {
      if ((v250 & 0x10000) != 0)
      {
        v242 = *v183;
        v243 = *(v183 + 1);
        v244 = *(v183 + 2);
        sub_239E56B84(a3);
        v235 = v242 * 0.00392156863;
        v236 = v243 * 0.00392156863;
        v241 = v244 * 0.00392156863;
LABEL_28:
        v237 = v241;
        v53 = v252;
LABEL_29:
        v245 = (a3[4] + v234);
        *v245 = v235;
        v245[1] = v236;
        v245[2] = v237;
        goto LABEL_30;
      }

      if ((v248 & 0x20000) != 0)
      {
        v238 = *v183;
        v239 = *(v183 + 1);
        v240 = *(v183 + 2);
        sub_239E56B84(a3);
        v235 = v238 * 0.00787401575;
        v236 = v239 * 0.00787401575;
        v241 = v240 * 0.00787401575;
        goto LABEL_28;
      }

LABEL_30:
      v234 += 12;
      v183 = (v183 + v124);
      if (!--v137)
      {
        goto LABEL_36;
      }
    }

    v235 = *v183;
    v236 = v183[1];
    v237 = v183[2];
    sub_239E56B84(a3);
    goto LABEL_29;
  }

  v195 = *(a4 + 16);
  if (!v195)
  {
    goto LABEL_36;
  }

  while (1)
  {
    v196 = v195[3];
    if (v196 >= *a3)
    {
      v246 = objc_msgSend_name(v249, v184, v185, v186, v191, v192, v193, v194, v187, v188, v189, v190);
      NSLog(&cfstr_CorruptAttribu.isa, v246);

      if (!*a3)
      {
        goto LABEL_36;
      }

      goto LABEL_35;
    }

    v197 = v195[2];
    v198 = objc_msgSend_vertexBuffers(v251, v184, v185, v186, v191, v192, v193, v194, v187, v188, v189, v190);
    v209 = objc_msgSend_objectAtIndexedSubscript_(v198, v199, v253, v200, v205, v206, v207, v208, v201, v202, v203, v204);
    v221 = objc_msgSend_length(v209, v210, v211, v212, v217, v218, v219, v220, v213, v214, v215, v216);
    v222 = v197 * v124;

    if (v222 >= v221)
    {
      break;
    }

    v223 = (v183 + v222);
    if (!(v250 & 0x10000 | v248 & 0x20000))
    {
      v224 = *v223;
      v225 = v223[1];
      v226 = v223[2];
      v53 = v252;
      sub_239E56B84(a3);
      goto LABEL_17;
    }

    if ((v250 & 0x10000) != 0)
    {
      v230 = *v223;
      v231 = *(v223 + 1);
      v232 = *(v223 + 2);
      sub_239E56B84(a3);
      v224 = v230 * 0.00392156863;
      v225 = v231 * 0.00392156863;
      v191.n128_f64[0] = v232 * 0.00392156863;
LABEL_16:
      v226 = v191.n128_f64[0];
      v53 = v252;
LABEL_17:
      v233 = (a3[4] + 12 * v196);
      *v233 = v224;
      v233[1] = v225;
      v233[2] = v226;
      goto LABEL_18;
    }

    v53 = v252;
    if ((v248 & 0x20000) != 0)
    {
      v227 = *v223;
      v228 = *(v223 + 1);
      v229 = *(v223 + 2);
      sub_239E56B84(a3);
      v224 = v227 * 0.00787401575;
      v225 = v228 * 0.00787401575;
      v191.n128_f64[0] = v229 * 0.00787401575;
      goto LABEL_16;
    }

LABEL_18:
    v195 = *v195;
    if (!v195)
    {
      goto LABEL_36;
    }
  }

  v53 = v252;
  v247 = objc_msgSend_name(v249, v184, v185, v186, v191, v192, v193, v194, v187, v188, v189, v190);
  NSLog(&cfstr_CorruptAttribu.isa, v247);

  if (!*a3)
  {
    goto LABEL_36;
  }

LABEL_35:
  sub_239E5B364(a3);
LABEL_36:
}

void sub_239F4E5EC(void *a1, void *a2, unint64_t *a3, uint64_t a4)
{
  v7 = a1;
  v218 = a2;
  v219 = v7;
  v19 = objc_msgSend_bufferIndex(v218, v8, v9, v10, v15, v16, v17, v18, v11, v12, v13, v14);
  v31 = objc_msgSend_vertexBuffers(v7, v20, v21, v22, v27, v28, v29, v30, v23, v24, v25, v26);
  v42 = objc_msgSend_objectAtIndexedSubscript_(v31, v32, v19, v33, v38, v39, v40, v41, v34, v35, v36, v37);
  v54 = objc_msgSend_map(v42, v43, v44, v45, v50, v51, v52, v53, v46, v47, v48, v49);

  v217 = v54;
  v66 = objc_msgSend_bytes(v54, v55, v56, v57, v62, v63, v64, v65, v58, v59, v60, v61);
  v78 = objc_msgSend_offset(v218, v67, v68, v69, v74, v75, v76, v77, v70, v71, v72, v73);
  v90 = objc_msgSend_vertexDescriptor(v7, v79, v80, v81, v86, v87, v88, v89, v82, v83, v84, v85);
  v102 = objc_msgSend_layouts(v90, v91, v92, v93, v98, v99, v100, v101, v94, v95, v96, v97);
  v113 = objc_msgSend_objectAtIndexedSubscript_(v102, v103, v19, v104, v109, v110, v111, v112, v105, v106, v107, v108);
  v125 = objc_msgSend_stride(v113, v114, v115, v116, v121, v122, v123, v124, v117, v118, v119, v120);

  v137 = *(a4 + 24);
  if (!v137)
  {
    v138 = objc_msgSend_vertexBuffers(v7, v126, v127, v128, v133, v134, v135, v136, v129, v130, v131, v132);
    v149 = objc_msgSend_objectAtIndexedSubscript_(v138, v139, v19, v140, v145, v146, v147, v148, v141, v142, v143, v144);
    v137 = objc_msgSend_length(v149, v150, v151, v152, v157, v158, v159, v160, v153, v154, v155, v156) / v125;
  }

  v220 = 0;
  v221 = &v220;
  sub_239E6D4E8(a3, v137, &v221);
  v172 = (v66 + v78);
  if (*(a4 + 24))
  {
    v173 = *(a4 + 16);
    if (v173)
    {
      while (1)
      {
        v174 = v173[3];
        if (v174 >= *a3)
        {
          v215 = objc_msgSend_name(v218, v161, v162, v163, v168, v169, v170, v171, v164, v165, v166, v167);
          NSLog(&cfstr_CorruptAttribu.isa, v215);

          if (!*a3)
          {
            goto LABEL_17;
          }

          goto LABEL_16;
        }

        v175 = v173[2];
        v176 = objc_msgSend_vertexBuffers(v219, v161, v162, v163, v168, v169, v170, v171, v164, v165, v166, v167);
        v187 = objc_msgSend_objectAtIndexedSubscript_(v176, v177, v19, v178, v183, v184, v185, v186, v179, v180, v181, v182);
        v199 = objc_msgSend_length(v187, v188, v189, v190, v195, v196, v197, v198, v191, v192, v193, v194);
        v200 = v175 * v125;

        if (v200 >= v199)
        {
          break;
        }

        v212 = *(v172 + v200);
        sub_239E6DBE4(a3);
        *(a3[4] + 8 * v174) = v212;
        v173 = *v173;
        if (!v173)
        {
          goto LABEL_17;
        }
      }

      v216 = objc_msgSend_name(v218, v201, v202, v203, v208, v209, v210, v211, v204, v205, v206, v207);
      NSLog(&cfstr_CorruptAttribu.isa, v216);

      if (!*a3)
      {
        goto LABEL_17;
      }

LABEL_16:
      sub_239E5B364(a3);
    }
  }

  else if (v137)
  {
    for (i = 0; i != v137; ++i)
    {
      v214 = *v172;
      sub_239E6DBE4(a3);
      *(a3[4] + 8 * i) = v214;
      v172 = (v172 + v125);
    }
  }

LABEL_17:
}

void sub_239F4E92C(uint64_t a1, void *a2, int a3)
{
  v372 = *MEMORY[0x277D85DE8];
  v365 = 0u;
  v366 = 0u;
  v367 = 0u;
  v368 = 0u;
  obj = a2;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v4, &v365, v371, v8, v9, v10, v11, 16, v5, v6, v7);
  if (v12)
  {
    v314 = *v366;
    do
    {
      v24 = 0;
      v316 = v12;
      do
      {
        if (*v366 != v314)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v365 + 1) + 8 * v24);
        v363 = 0;
        v362 = 0;
        v364 = 0;
        v26 = objc_msgSend_path(v25, v13, v14, v15, v20, v21, v22, v23, v16, v17, v18, v19);
        v27 = v26;
        v38 = objc_msgSend_cStringUsingEncoding_(v26, v28, 4, v29, v34, v35, v36, v37, v30, v31, v32, v33);
        sub_239E552A0(&v362, v38);

        sub_239F47E18(a1, &v345);
        if (v364 >= 0)
        {
          v39 = &v362;
        }

        else
        {
          v39 = v362;
        }

        if (v364 >= 0)
        {
          v40 = HIBYTE(v364);
        }

        else
        {
          v40 = v363;
        }

        v41 = std::string::append(&v345, v39, v40);
        v361 = *v41;
        v41->__r_.__value_.__l.__size_ = 0;
        v41->__r_.__value_.__r.__words[2] = 0;
        v41->__r_.__value_.__r.__words[0] = 0;
        if (SBYTE7(v346[0]) < 0)
        {
          operator delete(v345);
        }

        v359 = 0u;
        v360 = 0u;
        LODWORD(v359) = 1;
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
        *(&v360 + 1) = 0;
        memset(&__str, 0, sizeof(__str));
        v42 = sub_239F4A9EC(&v361, (a1 + 120), &__str);
        v357 = 0;
        MEMORY[0x23EE7ED00](&v357, &__str, v42);
        v54 = objc_msgSend_instance(v25, v43, v44, v45, v50, v51, v52, v53, v46, v47, v48, v49);
        v55 = v54 == 0;

        if (v55)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            sub_239F4AEFC(a1, v25, &v359, &v357, &v361);
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v106 = sub_239E57038((a1 + 112));
              MEMORY[0x23EE7ED20](__p, "Camera");
              pxrInternal__aapl__pxrReserved__::UsdStage::DefinePrim(&v345, v106, &v357, __p);
              LODWORD(v359) = v345;
              if (*(&v359 + 1))
              {
                sub_239E5E560(*(&v359 + 1));
              }

              *(&v359 + 1) = *(&v345 + 1);
              *(&v345 + 1) = 0;
              sub_239E650AC(&v360, v346);
              sub_239E65104(&v360 + 4, v346 + 1);
              if ((BYTE8(v360) & 7) != 0)
              {
                atomic_fetch_add_explicit((*(&v360 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              *(&v360 + 1) = *(&v346[0] + 1);
              *(&v346[0] + 1) = 0;
              pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
              sub_239E5B574(v346);
              if (*(&v345 + 1))
              {
                sub_239E5E560(*(&v345 + 1));
              }

              if ((__p[0] & 7) != 0)
              {
                atomic_fetch_add_explicit((__p[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              v352 = v359;
              v353 = *(&v359 + 1);
              if (*(&v359 + 1))
              {
                atomic_fetch_add_explicit((*(&v359 + 1) + 48), 1uLL, memory_order_relaxed);
              }

              sub_239E57FC0(&v354, &v360);
              sub_239E5B49C(&v355, &v360 + 1);
              v356 = *(&v360 + 1);
              if ((BYTE8(v360) & 7) != 0 && (atomic_fetch_add_explicit((*(&v360 + 1) & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
              {
                v356 &= 0xFFFFFFFFFFFFFFF8;
              }

              sub_239F7321C(v25, &v352);
              if ((v356 & 7) != 0)
              {
                atomic_fetch_add_explicit((v356 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
              sub_239E5B574(&v354);
              if (v353)
              {
                sub_239E5E560(v353);
              }
            }

            else
            {
              v107 = objc_msgSend_transform(v25, v95, v96, v97, v102, v103, v104, v105, v98, v99, v100, v101);
              objc_opt_class();
              isKindOfClass = objc_opt_isKindOfClass();

              if ((isKindOfClass & 1) == 0)
              {
                sub_239E56DF8(&v349, (a1 + 112));
                pxrInternal__aapl__pxrReserved__::UsdGeomScope::Define();
                sub_239F7530C(v351, &v350);
                v93 = 0;
                goto LABEL_58;
              }

              sub_239E56DF8(&v321, (a1 + 112));
              pxrInternal__aapl__pxrReserved__::UsdGeomXform::Define();
              sub_239E5815C(&v345, &__p[1], &v338);
              LODWORD(v359) = v345;
              if (*(&v359 + 1))
              {
                sub_239E5E560(*(&v359 + 1));
              }

              *(&v359 + 1) = *(&v345 + 1);
              *(&v345 + 1) = 0;
              sub_239E650AC(&v360, v346);
              sub_239E65104(&v360 + 4, v346 + 1);
              if ((BYTE8(v360) & 7) != 0)
              {
                atomic_fetch_add_explicit((*(&v360 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              *(&v360 + 1) = *(&v346[0] + 1);
              *(&v346[0] + 1) = 0;
              pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
              sub_239E5B574(v346);
              if (*(&v345 + 1))
              {
                sub_239E5E560(*(&v345 + 1));
              }

              MEMORY[0x23EE7E640](__p);
              v109 = *(&v321 + 1);
              if (*(&v321 + 1) && atomic_fetch_add_explicit((*(&v321 + 1) + 8), 0xFFFFFFFF, memory_order_release) == 1)
              {
                (*(*v109 + 8))(v109);
              }
            }
          }

          v93 = 1;
        }

        else
        {
          __p[0] = 0;
          __p[1] = 0;
          v338.f64[0] = 0.0;
          v67 = objc_msgSend_instance(v25, v56, v57, v58, v63, v64, v65, v66, v59, v60, v61, v62);
          v79 = objc_msgSend_path(v67, v68, v69, v70, v75, v76, v77, v78, v71, v72, v73, v74);
          v80 = v79;
          v91 = objc_msgSend_cStringUsingEncoding_(v79, v81, 4, v82, v87, v88, v89, v90, v83, v84, v85, v86);
          sub_239E552A0(__p, v91);

          v92 = sub_239F50B3C((a1 + 224), __p);
          v93 = v92 != 0;
          if (v92)
          {
            v94 = sub_239E57038((a1 + 112));
            *&v321 = 0;
            pxrInternal__aapl__pxrReserved__::UsdStage::DefinePrim(&v345, v94, &v357, &v321);
            LODWORD(v359) = v345;
            if (*(&v359 + 1))
            {
              sub_239E5E560(*(&v359 + 1));
            }

            *(&v359 + 1) = *(&v345 + 1);
            *(&v345 + 1) = 0;
            sub_239E650AC(&v360, v346);
            sub_239E65104(&v360 + 4, v346 + 1);
            if ((BYTE8(v360) & 7) != 0)
            {
              atomic_fetch_add_explicit((*(&v360 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            *(&v360 + 1) = *(&v346[0] + 1);
            *(&v346[0] + 1) = 0;
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
            sub_239E5B574(v346);
            if (*(&v345 + 1))
            {
              sub_239E5E560(*(&v345 + 1));
            }

            if ((v321 & 7) != 0)
            {
              atomic_fetch_add_explicit((v321 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            sub_239F4F868(&v359, 1);
          }

          if (SHIBYTE(v338.f64[0]) < 0)
          {
            operator delete(__p[0]);
          }
        }

LABEL_58:
        if (sub_239E5E5B4(&v359))
        {
          v121 = objc_msgSend_transform(v25, v110, v111, v112, v117, v118, v119, v120, v113, v114, v115, v116);
          v122 = v121 && v93;

          if (v122)
          {
            memset(v348, 0, sizeof(v348));
            pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
            v348[0] = MEMORY[0x277D866D0] + 16;
            v347 = 0;
            v345 = 0u;
            memset(v346, 0, sizeof(v346));
            __p[0] = 0;
            pxrInternal__aapl__pxrReserved__::UsdGeomXformable::AddTransformOp();
            if ((__p[0] & 7) != 0)
            {
              atomic_fetch_add_explicit((__p[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            v313 = objc_msgSend_transform(v25, v123, v124, v125, v130, v131, v132, v133, v126, v127, v128, v129);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v145 = objc_msgSend_keyTimes(v313, v134, v135, v136, v141, v142, v143, v144, v137, v138, v139, v140);
              v146 = v145;
              if (v313 && v145)
              {
                v335 = 0u;
                v336 = 0u;
                v333 = 0u;
                v334 = 0u;
                v147 = v145;
                v163 = objc_msgSend_countByEnumeratingWithState_objects_count_(v147, v148, &v333, v370, v152, v153, v154, v155, 16, v149, v150, v151);
                if (v163)
                {
                  v168 = *v334;
                  do
                  {
                    for (i = 0; i != v163; ++i)
                    {
                      if (*v334 != v168)
                      {
                        objc_enumerationMutation(v147);
                      }

                      objc_msgSend_doubleValue(*(*(&v333 + 1) + 8 * i), v156, v157, v158, v164, v165, v166, v167, v159, v160, v161, v162);
                      v171 = v170.n128_f64[0];
                      v182 = objc_msgSend_transform(v25, v172, v173, v174, v170, v179, v180, v181, v175, v176, v177, v178);
                      v183.n128_f64[0] = v171;
                      objc_msgSend_localTransformAtTime_(v182, v184, v185, v186, v183, v191, v192, v193, v187, v188, v189, v190);
                      v317 = v194;
                      v318 = v195;
                      v319 = v196;
                      v320 = v197;

                      v209 = objc_msgSend_count(v147, v198, v199, v200, v205, v206, v207, v208, v201, v202, v203, v204);
                      v217 = vcvt_hight_f64_f32(v318);
                      v218 = vcvt_hight_f64_f32(v319);
                      v219 = vcvtq_f64_f32(*v320.f32);
                      v220 = vcvt_hight_f64_f32(v320);
                      *__p = vcvtq_f64_f32(*v317.f32);
                      v338 = vcvt_hight_f64_f32(v317);
                      v339 = vcvtq_f64_f32(*v318.f32);
                      v340 = v217;
                      v341 = vcvtq_f64_f32(*v319.f32);
                      v342 = v218;
                      v343 = v219;
                      v344 = v220;
                      if (v209 < 2)
                      {
                        sub_239F4F900(&v345, __p, NAN);
                      }

                      else
                      {
                        objc_msgSend__timeCodesPerSecond(*a1, v210, v211, v212, v220, v218, v219, v217, v213, v214, v215, v216);
                        sub_239F4F900(&v345, __p, v221 * v171);
                      }
                    }

                    v163 = objc_msgSend_countByEnumeratingWithState_objects_count_(v147, v156, &v333, v370, v164, v165, v166, v167, 16, v160, v161, v162);
                  }

                  while (v163);
                }

                v146 = v147;
              }

              else
              {
                v303 = *(MEMORY[0x277D860B8] + 16);
                v304 = vcvt_hight_f64_f32(*MEMORY[0x277D860B8]);
                *__p = vcvtq_f64_f32(*MEMORY[0x277D860B8]);
                v338 = v304;
                v339 = vcvtq_f64_f32(*v303.f32);
                v340 = vcvt_hight_f64_f32(v303);
                v305 = *(MEMORY[0x277D860B8] + 32);
                v306 = *(MEMORY[0x277D860B8] + 48);
                v341 = vcvtq_f64_f32(*v305.f32);
                v342 = vcvt_hight_f64_f32(v305);
                v343 = vcvtq_f64_f32(*v306.f32);
                v344 = vcvt_hight_f64_f32(v306);
                sub_239F4F900(&v345, __p, NAN);
              }

              goto LABEL_99;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v146 = objc_msgSend_transform(v25, v222, v223, v224, v229, v230, v231, v232, v225, v226, v227, v228);
              v244 = objc_msgSend_keyTimes(v146, v233, v234, v235, v240, v241, v242, v243, v236, v237, v238, v239);
              v256 = v244;
              if (v244 && objc_msgSend_count(v244, v245, v246, v247, v252, v253, v254, v255, v248, v249, v250, v251))
              {
                v331 = 0u;
                v332 = 0u;
                v329 = 0u;
                v330 = 0u;
                v257 = v256;
                v273 = objc_msgSend_countByEnumeratingWithState_objects_count_(v257, v258, &v329, v369, v262, v263, v264, v265, 16, v259, v260, v261);
                if (v273)
                {
                  v278 = *v330;
                  do
                  {
                    for (j = 0; j != v273; ++j)
                    {
                      if (*v330 != v278)
                      {
                        objc_enumerationMutation(v257);
                      }

                      objc_msgSend_doubleValue(*(*(&v329 + 1) + 8 * j), v266, v267, v268, v274, v275, v276, v277, v269, v270, v271, v272);
                      v291 = v290;
                      v292 = 0uLL;
                      v343 = 0u;
                      v344 = 0u;
                      v341 = 0u;
                      v342 = 0u;
                      v339 = 0u;
                      v340 = 0u;
                      *__p = 0u;
                      v338 = 0u;
                      if (v146)
                      {
                        v292.n128_f64[0] = v291;
                        objc_msgSend_double4x4AtTime_(v146, v292, v287, v288, v289, v280, v281, v282, v283, v284, v285, v286);
                      }

                      if (objc_msgSend_count(v257, v280, v281, v282, v292, v287, v288, v289, v283, v284, v285, v286) < 2)
                      {
                        v321 = *__p;
                        v322 = v338;
                        v323 = v339;
                        v324 = v340;
                        v325 = v341;
                        v326 = v342;
                        v327 = v343;
                        v328 = v344;
                        sub_239F4F900(&v345, &v321, NAN);
                      }

                      else
                      {
                        v321 = *__p;
                        v322 = v338;
                        v323 = v339;
                        v324 = v340;
                        v325 = v341;
                        v326 = v342;
                        v327 = v343;
                        v328 = v344;
                        objc_msgSend__timeCodesPerSecond(*a1, v293, v294, v295, v344, v343, v300, v301, v296, v297, v298, v299);
                        sub_239F4F900(&v345, &v321, v302 * v291);
                      }
                    }

                    v273 = objc_msgSend_countByEnumeratingWithState_objects_count_(v257, v266, &v329, v369, v274, v275, v276, v277, 16, v270, v271, v272);
                  }

                  while (v273);
                }
              }

              else
              {
                v307 = *(MEMORY[0x277D860B8] + 16);
                v308 = vcvt_hight_f64_f32(*MEMORY[0x277D860B8]);
                *__p = vcvtq_f64_f32(*MEMORY[0x277D860B8]);
                v338 = v308;
                v339 = vcvtq_f64_f32(*v307.f32);
                v340 = vcvt_hight_f64_f32(v307);
                v309 = *(MEMORY[0x277D860B8] + 32);
                v310 = *(MEMORY[0x277D860B8] + 48);
                v341 = vcvtq_f64_f32(*v309.f32);
                v342 = vcvt_hight_f64_f32(v309);
                v343 = vcvtq_f64_f32(*v310.f32);
                v344 = vcvt_hight_f64_f32(v310);
                sub_239F4F900(&v345, __p, NAN);
              }

LABEL_99:
            }

            sub_239ED16C4(&v345);
            MEMORY[0x23EE7E640](v348);
          }
        }

        if (a3)
        {
          *&v345 = &v362;
          v311 = sub_239F520EC((a1 + 224), &v362, &unk_239F9BFF0, &v345, __p);
          std::string::operator=((v311 + 5), &__str);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        sub_239E5B574(&v357);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        if ((BYTE8(v360) & 7) != 0)
        {
          atomic_fetch_add_explicit((*(&v360 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        sub_239E5B574(&v360);
        if (*(&v359 + 1))
        {
          sub_239E5E560(*(&v359 + 1));
        }

        if (SHIBYTE(v361.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v361.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v364) < 0)
        {
          operator delete(v362);
        }

        ++v24;
      }

      while (v24 != v316);
      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v13, &v365, v371, v20, v21, v22, v23, 16, v17, v18, v19);
    }

    while (v12);
  }
}

void sub_239F4F868(uint64_t a1, char a2)
{
  v4 = a2;
  v3 = atomic_load(MEMORY[0x277D86540]);
  if (v3)
  {
    v5 = 0;
    sub_239F50C38(a1, (v3 + 200), &v4, &v5);
  }

  sub_239F51470(MEMORY[0x277D86540]);
}

uint64_t sub_239F4F900(pxrInternal__aapl__pxrReserved__::UsdGeomXformOp *a1, uint64_t a2, double a3)
{
  if (*(a1 + 132) != 1)
  {
    sub_239ED0DC4(a1);

    pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::GfMatrix4d>();
  }

  v7[0] = "usdGeom/xformOp.h";
  v7[1] = "Set";
  v7[2] = 406;
  v7[3] = "BOOL pxrInternal__aapl__pxrReserved__::UsdGeomXformOp::Set(const T &, UsdTimeCode) const [T = pxrInternal__aapl__pxrReserved__::GfMatrix4d]";
  v8 = 0;
  pxrInternal__aapl__pxrReserved__::UsdGeomXformOp::GetOpName(&v6, a1);
  v3 = v6 & 0xFFFFFFFFFFFFFFF8;
  if ((v6 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v4 = (v3 + 16);
    if (*(v3 + 39) < 0)
    {
      v4 = *v4;
    }
  }

  else
  {
    v4 = "";
  }

  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v7, 1, "Cannot set a value on the inverse xformOp '%s'. Please set value on the paired non-inverse xformOp instead.", v4);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return 0;
}

void sub_239F4FA18(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v33 = 0;
  sub_239E552A0(v36, ".usda");
  v35[1] = 0;
  v35[2] = 0;
  v35[0] = &v35[1];
  pxrInternal__aapl__pxrReserved__::SdfLayer::CreateAnonymous();
  sub_239E91CE0(v35, v35[1]);
  if (v37 < 0)
  {
    operator delete(v36[0]);
  }

  sub_239F5249C(v31, &v33);
  pxrInternal__aapl__pxrReserved__::UsdStage::Open();
  v4 = *(a1 + 112);
  *(a1 + 112) = v32;
  v32 = 0;
  sub_239F74D14(a1 + 112, v4);
  if (!sub_239F75360(&v32, v31, (a1 + 112)))
  {
    v28 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v5, @"Model IO export preview %.02f", v6, v11, v12, v13, v14, v7, v8, v9, v10, 0x3FF19999A0000000);
    sub_239E57038((a1 + 112));
    MEMORY[0x23EE7ED20](v35, "customLayerData");
    MEMORY[0x23EE7ED20](__p, "creator");
    v15 = v28;
    v34 = objc_msgSend_UTF8String(v28, v16, v17, v18, v23, v24, v25, v26, v19, v20, v21, v22);
    v36[1] = 0;
    sub_239F52514(v36, &v34);
  }

  *a3 = 0;
  sub_239E57694(a3);
  sub_239F5246C(&v33);
}

void sub_239F502E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, char a42, int a43, __int16 a44, char a45, char a46, uint64_t a47)
{
  if (a2)
  {
    sub_239E797CC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_239F50658(uint64_t a1, uint64_t a2)
{
  v3 = atomic_load(MEMORY[0x277D86540]);
  if (v3)
  {
    v4 = 0;
    sub_239F5152C(a1, (v3 + 464), a2, &v4);
  }

  sub_239F51470(MEMORY[0x277D86540]);
}

void sub_239F506FC(uint64_t a1, int a2)
{
  v4 = a2;
  v3 = atomic_load(MEMORY[0x277D86540]);
  if (v3)
  {
    v5 = 0;
    sub_239F50F68(a1, (v3 + 320), &v4, &v5);
  }

  sub_239F51470(MEMORY[0x277D86540]);
}

void sub_239F50794(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  sub_239E566C0();
  *&v28[8] = 0u;
  *&v24[8] = 0u;
  v22 = 1065353216;
  v10 = v7;
  v11 = v9;
  v12[0] = v10;
  v12[1] = v11;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0;
  v23 = 0u;
  *v24 = 0u;
  *&v24[16] = 1065353216;
  v26[0] = 0;
  v26[1] = 0;
  v25 = v26;
  *v28 = 0u;
  v27 = 0u;
  *&v28[16] = 1065353216;
  *a4 = 0;
  sub_239F4FA18(v12, v8, a4);
  sub_239F512E0(v12);
}

void sub_239F508AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_239F512E0(va);

  _Unwind_Resume(a1);
}

void sub_239F508D4(void *a1@<X1>, void *a2@<X2>, void *a3@<X8>)
{
  v5 = a1;
  v13 = a2;
  if (v13)
  {
    v18 = objc_msgSend_URLByDeletingPathExtension(v5, v6, v7, v8, v14, v15, v16, v17, v9, v10, v11, v12);
    v30 = objc_msgSend_lastPathComponent(v18, v19, v20, v21, v26, v27, v28, v29, v22, v23, v24, v25);

    v48 = 0;
    sub_239F50794(v13, v30, v5, &v48);
    if (v48)
    {
      memset(v47, 0, sizeof(v47));
      sub_239E5663C(v5, v47, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41);
      v42 = sub_239E57038(&v48);
      pxrInternal__aapl__pxrReserved__::UsdStage::GetRootLayer(v46, v42);
      sub_239F50AEC(v46);
      memset(v45, 0, sizeof(v45));
      v44[0] = 0;
      v44[1] = 0;
      v43 = v44;
      pxrInternal__aapl__pxrReserved__::SdfLayer::Export();
      sub_239F753C4(v44, &v43, v45, v46);
      sub_239E552A0(a3, "");
      sub_239F75438(v47);
    }

    else
    {
      sub_239E552A0(a3, "Cannot create USD data for export");
    }

    sub_239F178C8(&v48);
  }

  else
  {
    sub_239E552A0(a3, "Cannot export nil asset");
  }
}

uint64_t sub_239F50AEC(uint64_t *a1)
{
  v3 = a1[1];
  v2 = a1 + 1;
  if (!v3)
  {
    return sub_239F75464(v7);
  }

  v4 = *(sub_239EF2C90(v2) + 14);
  result = *a1;
  if (v4 != 1 || result == 0)
  {
    return sub_239F75464(v7);
  }

  return result;
}

const void **sub_239F50B3C(void *a1, uint64_t *a2)
{
  v4 = sub_239E68B60(a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v12 == v6)
    {
      if (sub_239EF2FF8(a1, i + 2, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

void sub_239F50C38(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 8);
  if (!v4 || (*(v4 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  pxrInternal__aapl__pxrReserved__::UsdStage::_SetMetadataImpl<pxrInternal__aapl__pxrReserved__::SdfAbstractDataConstValue>();
}