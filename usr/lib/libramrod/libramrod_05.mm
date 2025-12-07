uint64_t DEREncoderAddDataNoCopy(uint64_t *a1, unsigned int a2, unsigned int a3, const void *a4, unsigned int a5, int a6)
{
  v7 = sub_5AFA8(a2, a3, a4, a5, a6, 1);

  return sub_5AE34(a1, v7);
}

uint64_t DEREncoderAddUInt32(uint64_t *a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v5 = 0;
  v10 = bswap32(a4);
  v11 = 0;
  v12 = v10;
  while (!*(&v10 + v5))
  {
    if (++v5 == 4)
    {
      v6 = 0;
      goto LABEL_6;
    }
  }

  v6 = (*(&v10 + v5) >> 7) - v5 + 4;
LABEL_6:
  if (v6 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = v6;
  }

  v8 = sub_5AFA8(a2, a3, &v11 - v7 + 5, v7, 0, 3);
  return sub_5AE34(a1, v8);
}

uint64_t DEREncoderAddUInt64(uint64_t *a1, unsigned int a2, unsigned int a3, unint64_t a4)
{
  v5 = 0;
  v10 = bswap64(a4);
  v11 = 0;
  v12 = v10;
  while (!*(&v10 + v5))
  {
    if (++v5 == 8)
    {
      v6 = 0;
      goto LABEL_6;
    }
  }

  v6 = (*(&v10 + v5) >> 7) - v5 + 8;
LABEL_6:
  if (v6 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = v6;
  }

  v8 = sub_5AFA8(a2, a3, &v11 - v7 + 9, v7, 0, 3);
  return sub_5AE34(a1, v8);
}

uint64_t DEREncoderAddInt32AsData(uint64_t *a1, unsigned int a2, unsigned int a3, int a4)
{
  v7 = a4;
  v5 = sub_5AFA8(a2, a3, &v7, 4u, 0, 3);
  return sub_5AE34(a1, v5);
}

uint64_t DEREncoderAddInt64AsData(uint64_t *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = a4;
  v5 = sub_5AFA8(a2, a3, &v7, 8u, 0, 3);
  return sub_5AE34(a1, v5);
}

uint64_t DEREncoderAddIA5String(uint64_t *a1, const void *a2, unsigned int a3)
{
  v4 = sub_5AFA8(0, 0x16u, a2, a3, 0, 3);

  return sub_5AE34(a1, v4);
}

uint64_t DEREncoderAddBoolean(uint64_t *a1, int a2)
{
  v7 = -1;
  v6 = 0;
  if (a2)
  {
    v3 = &v7;
  }

  else
  {
    v3 = &v6;
  }

  v4 = sub_5AFA8(0, 1u, v3, 1u, 0, 3);
  return sub_5AE34(a1, v4);
}

uint64_t DEREncoderCreateEncodedBuffer(uint64_t **a1, void *a2, unsigned int *a3)
{
  if (!a1)
  {
    return 1;
  }

  v6 = *(a1 + 2);
  v7 = malloc(v6);
  if (!v7)
  {
    return 2;
  }

  v8 = v7;
  v9 = *a1;
  if (*a1)
  {
    v10 = v7;
    do
    {
      memcpy(v10, v9 + 28, *(v9 + 5));
      v11 = &v10[*(v9 + 5)];
      memcpy(v11, v9[1], *(v9 + 6));
      v10 = &v11[*(v9 + 6)];
      v9 = *v9;
    }

    while (v9);
  }

  if (a3)
  {
    *a3 = v6;
  }

  if (a2)
  {
    result = 0;
    *a2 = v8;
  }

  else
  {
    free(v8);
    return 0;
  }

  return result;
}

uint64_t DEREncoderAddDataFromEncoder(uint64_t **a1, uint64_t *a2, unsigned int a3, unsigned int a4)
{
  if (a1 && a2)
  {
    return sub_5B704(a1, a2, a3, a4, 1);
  }

  else
  {
    return 1;
  }
}

uint64_t sub_5B704(uint64_t **a1, uint64_t *a2, unsigned int a3, unsigned int a4, int a5)
{
  v13 = 0;
  v12 = 0;
  v9 = DEREncoderCreateEncodedBuffer(a1, &v12, &v13);
  if (!v9)
  {
    v9 = 2;
    v10 = sub_5AFA8(a3, a4, v12, v13, a5, 2);
    if (v10)
    {
      v12 = 0;
      v9 = sub_5AE34(a2, v10);
    }
  }

  if (v12)
  {
    free(v12);
  }

  return v9;
}

uint64_t DEREncoderAddDataFromEncoderNoCopy(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, int a5)
{
  result = 1;
  if (a1 && a2)
  {
    if (*(a2 + 12))
    {

      return sub_5B704(a1, a2, a3, a4, a5);
    }

    else
    {
      v8 = sub_5AFA8(a3, a4, 0, *(a1 + 8), 1, 0);
      if (v8)
      {
        v9 = v8;
        v10 = *a1;
        v21 = 0;
        v11 = &v21;
        while (v10)
        {
          v12 = malloc(0x38uLL);
          if (!v12)
          {
            v17 = v21;
            if (v21)
            {
              do
              {
                v18 = *v17;
                sub_5BA90(v17);
                v17 = v18;
              }

              while (v18);
            }

            *v9 = 0;
            goto LABEL_22;
          }

          v13 = v10[6];
          v15 = *(v10 + 1);
          v14 = *(v10 + 2);
          *v12 = *v10;
          v12[1] = v15;
          *(v12 + 6) = v13;
          v12[2] = v14;
          *v12 = 0;
          *(v12 + 4) = 1;
          v16 = v10[1];
          if (v10 + 28 > v16 || v16 >= (v10 + 7))
          {
            if (v13)
            {
              ++*(v13 + 16);
            }
          }

          else
          {
            *(v12 + 1) = v12 + v16 - v10;
          }

          *v11 = v12;
          v10 = *v10;
          v11 = v12;
        }

        v19 = v21;
        *v9 = v21;
        if (v19)
        {
          goto LABEL_26;
        }

LABEL_22:
        if (*a1)
        {
          do
          {
            v20 = *v9;
            sub_5BA90(v9);
            v9 = v20;
          }

          while (v20);
          return 2;
        }

LABEL_26:

        return sub_5AE34(a2, v9);
      }

      else
      {
        return 2;
      }
    }
  }

  return result;
}

uint64_t DEREncoderAddSequenceFromEncoder(uint64_t **a1, uint64_t *a2)
{
  if (a1 && a2)
  {
    return sub_5B704(a1, a2, 0, 0x10u, 1);
  }

  else
  {
    return 1;
  }
}

uint64_t DEREncoderAddSetFromEncoder(uint64_t **a1, uint64_t *a2)
{
  if (a1 && a2)
  {
    return sub_5B704(a1, a2, 0, 0x11u, 1);
  }

  else
  {
    return 1;
  }
}

uint64_t DEREncoderAddPrivateFromEncoder(uint64_t **a1, uint64_t *a2, unsigned int a3)
{
  v6 = calloc(1uLL, 0x10uLL);
  v7 = v6;
  if (!v6)
  {
    v8 = 0xFFFFFFFFLL;
    goto LABEL_8;
  }

  *(v6 + 3) = 0;
  if (!a1)
  {
    goto LABEL_7;
  }

  v8 = sub_5B704(a1, v6, 0, 0x10u, 1);
  if (!v8)
  {
    if (a2)
    {
      v8 = sub_5B704(v7, a2, 3u, a3, 1);
      goto LABEL_8;
    }

LABEL_7:
    v8 = 1;
  }

LABEL_8:
  DEREncoderDestroy(v7);
  return v8;
}

void sub_5BA90(uint64_t a1)
{
  v2 = *(a1 + 16) - 1;
  *(a1 + 16) = v2;
  if (!v2)
  {
    v4 = *(a1 + 8);
    if (v4)
    {
      v5 = *(a1 + 48);
      v6 = v4 >= a1 + 56 || a1 + 28 > v4;
      if (v6 && v5 != 0)
      {
        if (v5 == a1)
        {
          free(v4);
        }

        else
        {
          sub_5BA90(*(a1 + 48));
        }
      }
    }

    free(a1);
  }
}

uint64_t Img4EncodeItemBegin(uint64_t *a1, int a2)
{
  if (!a1)
  {
    return 101;
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = *(v4 + 32);
    if (*v5 || *(v5 + 8))
    {
      return 101;
    }
  }

  else
  {
    v7 = calloc(1uLL, 0x28uLL);
    *a1 = v7;
    if (!v7)
    {
      return 102;
    }

    *(*a1 + 8) = calloc(1uLL, 0x400uLL);
    v8 = *a1;
    v9 = *(*a1 + 8);
    if (!v9)
    {
      return 102;
    }

    *(v8 + 16) = 1024;
    *(v8 + 24) = v9;
    v4 = *a1;
  }

  *v4 = a2;
  *(*a1 + 32) = calloc(1uLL, 0x18uLL);
  if (*(*a1 + 32))
  {
    **(*a1 + 32) = calloc(1uLL, 0x400uLL);
    v10 = *(*a1 + 32);
    v11 = *v10;
    if (*v10)
    {
      *(v10 + 2) = 1024;
      v10[2] = v11;
      return 100;
    }
  }

  return 102;
}

uint64_t Img4EncodeItemEnd(uint64_t a1, uint64_t a2)
{
  LODWORD(__n) = 0;
  __src = 0;
  if (!a1 || *a1 != a2)
  {
    return 101;
  }

  if (*(a1 + 8) && *(a1 + 16) && (v3 = *(a1 + 32), *v3) && *(v3 + 8))
  {
    v4 = sub_5BD94(0, a2, *v3, *(v3 + 16) - *v3, &__src, &__n);
    if (v4 == 100)
    {
      v5 = __n;
      v6 = *(a1 + 16);
      v7 = *(a1 + 24);
      v8 = &v7[-*(a1 + 8)];
      if (v6 - v8 > __n)
      {
LABEL_14:
        memcpy(v7, __src, v5);
        *a1 = 0;
        v11 = *(a1 + 32);
        *(a1 + 24) += __n;
        if (*v11)
        {
          free(*v11);
          v11 = *(a1 + 32);
          *v11 = 0;
        }

        *(v11 + 8) = 0;
        *(v11 + 16) = 0;
        v4 = 100;
        goto LABEL_19;
      }

      if (__n <= 0x400)
      {
        v9 = 1024;
      }

      else
      {
        v9 = __n;
      }

      v10 = sub_5BFA0(*(a1 + 8), v6, v6 + v9);
      if (v10)
      {
        *(a1 + 8) = v10;
        v7 = &v8[v10];
        *(a1 + 24) = v7;
        *(a1 + 16) += v9;
        v5 = __n;
        goto LABEL_14;
      }

      v4 = 2;
    }
  }

  else
  {
    v4 = 101;
  }

LABEL_19:
  if (__src)
  {
    free(__src);
  }

  return v4;
}

uint64_t sub_5BD94(int a1, uint64_t a2, const void *a3, uint64_t a4, void *a5, unsigned int *a6)
{
  v22 = 0;
  v23 = 0;
  v20 = 0;
  v21 = 0;
  v6 = 101;
  if (!a5 || !a6)
  {
    goto LABEL_22;
  }

  v12 = bswap32(a2);
  if (a1 == 2)
  {
    v24 = v12;
    v13 = DEREncoderCreate(0);
    v14 = v13;
    if (!v13)
    {
      v6 = 102;
      goto LABEL_22;
    }

    v15 = DEREncoderAddData(v13, 0, 22, &v24, 4, 0);
    if (v15)
    {
      goto LABEL_17;
    }

    v15 = DEREncoderAddData(v14, 0, 16, a3, a4, 1);
    if (v15)
    {
      goto LABEL_17;
    }

    v15 = DEREncoderCreateEncodedBuffer(v14, &v21, &v23);
    if (v15)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v24 = v12;
    v16 = DEREncoderCreate(1);
    if (!v16)
    {
      DEREncoderDestroy(0);
      v6 = 102;
      goto LABEL_22;
    }

    v17 = v16;
    v18 = DEREncoderAddData(v16, 0, 22, &v24, 4, 0);
    if (v18 || (v18 = DEREncoderAddData(v17, 0, 17, a3, a4, 1), v18) || (v18 = DEREncoderCreateEncodedBuffer(v17, &v21, &v23), v18))
    {
      v6 = v18;
      DEREncoderDestroy(v17);
      if (v6 != 100)
      {
        goto LABEL_22;
      }
    }

    else
    {
      DEREncoderDestroy(v17);
    }

    v14 = 0;
  }

  v15 = sub_5CF28(v21, v23, &v20, &v22);
  if (v15 == 100)
  {
    v15 = sub_5CFE0(a2, v20, v22, a5, a6);
  }

LABEL_17:
  v6 = v15;
  if (v14)
  {
    DEREncoderDestroy(v14);
  }

LABEL_22:
  if (v21)
  {
    free(v21);
    v21 = 0;
  }

  if (v20)
  {
    free(v20);
  }

  return v6;
}

void *sub_5BFA0(void *a1, size_t a2, size_t __size)
{
  v6 = calloc(1uLL, __size);
  v7 = v6;
  if (a1 && v6)
  {
    if (a2 >= __size)
    {
      v8 = __size;
    }

    else
    {
      v8 = a2;
    }

    memcpy(v6, a1, v8);
    free(a1);
  }

  return v7;
}

uint64_t Img4EncodeItemPropertyData(_DWORD *a1, int a2, uint64_t a3, const void *a4, uint64_t a5)
{
  v5 = 0;
  v15 = bswap32(a3);
  v16 = 0;
  v14 = 0;
  v6 = 102;
  if (a1 && a4 && a5)
  {
    if (*a1 == a2)
    {
      v11 = DEREncoderCreate(0);
      v5 = v11;
      if (v11)
      {
        v12 = DEREncoderAddData(v11, 0, 22, &v15, 4, 0);
        if (!v12)
        {
          v12 = DEREncoderAddData(v5, 0, 4, a4, a5, 0);
          if (!v12)
          {
            v12 = DEREncoderCreateEncodedBuffer(v5, &v14, &v16);
            if (!v12)
            {
              v12 = sub_5C14C(a1, a3, v14, v16);
            }
          }
        }

        v6 = v12;
      }

      else
      {
        v6 = 2;
      }
    }

    else
    {
      v5 = 0;
      v6 = 101;
    }
  }

  DEREncoderDestroy(v5);
  if (v14)
  {
    free(v14);
  }

  return v6;
}

uint64_t sub_5C14C(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4)
{
  v19 = 0;
  __n = 0;
  __src = 0;
  v4 = 101;
  if (a1 && a3)
  {
    v7 = sub_5CF28(a3, a4, &v19, &__n + 1);
    if (v7 == 100 && (v7 = sub_5CFE0(a2, v19, HIDWORD(__n), &__src, &__n), v7 == 100))
    {
      v8 = __n;
      v9 = *(a1 + 32);
      v10 = *(v9 + 8);
      v11 = *(v9 + 16);
      v12 = *v9;
      v13 = v11 - v12;
      if (v10 - (v11 - v12) > __n)
      {
LABEL_11:
        memcpy(v11, __src, v8);
        *(*(a1 + 32) + 16) += __n;
        v4 = 100;
        goto LABEL_13;
      }

      if (__n <= 0x400)
      {
        v14 = 1024;
      }

      else
      {
        v14 = __n;
      }

      v15 = sub_5BFA0(v12, v10, v10 + v14);
      if (v15)
      {
        v16 = *(a1 + 32);
        *v16 = v15;
        v11 = &v15[v13];
        *(v16 + 16) = v11;
        *(v16 + 8) += v14;
        v8 = __n;
        goto LABEL_11;
      }

      v4 = 2;
    }

    else
    {
      v4 = v7;
    }
  }

LABEL_13:
  if (v19)
  {
    free(v19);
    v19 = 0;
  }

  if (__src)
  {
    free(__src);
  }

  return v4;
}

uint64_t Img4EncodeItemPropertyBool(_DWORD *a1, int a2, uint64_t a3, int a4)
{
  v13[4] = 0;
  *v13 = (a4 << 31 >> 31);
  v12 = bswap32(a3);
  v11 = 0;
  if (a1)
  {
    if (*a1 == a2)
    {
      v6 = DEREncoderCreate(0);
      v7 = v6;
      if (v6)
      {
        v8 = DEREncoderAddData(v6, 0, 22, &v12, 4, 0);
        if (!v8)
        {
          v8 = DEREncoderAddData(v7, 0, 1, v13, 1, 0);
          if (!v8)
          {
            v8 = DEREncoderCreateEncodedBuffer(v7, &v11, &v13[1]);
            if (!v8)
            {
              v8 = sub_5C14C(a1, a3, v11, *&v13[1]);
            }
          }
        }

        v9 = v8;
      }

      else
      {
        v9 = 2;
      }
    }

    else
    {
      v7 = 0;
      v9 = 101;
    }
  }

  else
  {
    v7 = 0;
    v9 = 102;
  }

  DEREncoderDestroy(v7);
  if (v11)
  {
    free(v11);
  }

  return v9;
}

uint64_t Img4EncodeItemPropertyInt32(_DWORD *a1, int a2, uint64_t a3, unsigned int a4)
{
  v13 = bswap32(a3);
  v14 = 0;
  v12 = 0;
  if (a1)
  {
    if (*a1 == a2)
    {
      v7 = DEREncoderCreate(0);
      v8 = v7;
      if (v7)
      {
        v9 = DEREncoderAddData(v7, 0, 22, &v13, 4, 0);
        if (!v9)
        {
          v9 = DEREncoderAddUInt32(v8, 0, 2u, a4);
          if (!v9)
          {
            v9 = DEREncoderCreateEncodedBuffer(v8, &v12, &v14);
            if (!v9)
            {
              v9 = sub_5C14C(a1, a3, v12, v14);
            }
          }
        }

        v10 = v9;
      }

      else
      {
        v10 = 2;
      }
    }

    else
    {
      v8 = 0;
      v10 = 101;
    }
  }

  else
  {
    v8 = 0;
    v10 = 102;
  }

  DEREncoderDestroy(v8);
  if (v12)
  {
    free(v12);
  }

  return v10;
}

uint64_t Img4EncodeItemPropertyInt64(_DWORD *a1, int a2, uint64_t a3, unint64_t a4)
{
  v13 = bswap32(a3);
  v14 = 0;
  v12 = 0;
  if (a1)
  {
    if (*a1 == a2)
    {
      v7 = DEREncoderCreate(0);
      v8 = v7;
      if (v7)
      {
        v9 = DEREncoderAddData(v7, 0, 22, &v13, 4, 0);
        if (!v9)
        {
          v9 = DEREncoderAddUInt64(v8, 0, 2u, a4);
          if (!v9)
          {
            v9 = DEREncoderCreateEncodedBuffer(v8, &v12, &v14);
            if (!v9)
            {
              v9 = sub_5C14C(a1, a3, v12, v14);
            }
          }
        }

        v10 = v9;
      }

      else
      {
        v10 = 2;
      }
    }

    else
    {
      v8 = 0;
      v10 = 101;
    }
  }

  else
  {
    v8 = 0;
    v10 = 102;
  }

  DEREncoderDestroy(v8);
  if (v12)
  {
    free(v12);
  }

  return v10;
}

void Img4EncodeItemDestroy(void *a1)
{
  if (a1)
  {
    v2 = a1[1];
    if (v2)
    {
      free(v2);
    }

    a1[1] = 0;
    v3 = a1[4];
    if (v3)
    {
      if (*v3)
      {
        free(*v3);
        v3 = a1[4];
        *v3 = 0;
      }

      free(v3);
    }

    free(a1);
  }
}

uint64_t Img4EncodeItemCopyBuffer(uint64_t a1, void *a2, unsigned int *a3)
{
  result = 102;
  if (a1 && a2 && a3)
  {
    v7 = *(a1 + 24) - *(a1 + 8);
    v8 = calloc(1uLL, v7);
    if (v8)
    {
      v9 = v8;
      memcpy(v8, *(a1 + 8), v7);
      *a2 = v9;
      *a3 = v7;
      return 100;
    }

    else
    {
      return 102;
    }
  }

  return result;
}

uint64_t Img4EncodeCreatePayload(const char *a1, const char *a2, const void *a3, unsigned int a4, const void *a5, unsigned int a6, void *a7, unsigned int *a8)
{
  v8 = 0;
  v9 = 101;
  if (!a1 || !a2)
  {
    v12 = 0;
    goto LABEL_16;
  }

  v12 = 0;
  if (a3)
  {
    if (strlen(a1) != 4)
    {
      v8 = 0;
      v12 = 0;
      goto LABEL_16;
    }

    v8 = DEREncoderCreate(0);
    if (v8)
    {
      v12 = DEREncoderCreate(0);
      if (v12)
      {
        v18 = DEREncoderAddData(v8, 0, 22, "IM4P", 4, 0);
        if (v18 || (v18 = DEREncoderAddData(v8, 0, 22, a1, 4, 0), v18) || (v19 = strlen(a2), v18 = DEREncoderAddData(v8, 0, 22, a2, v19, 0), v18) || (v18 = DEREncoderAddDataNoCopy(v8, 0, 4u, a3, a4, 0), v18) || a5 && (v18 = DEREncoderAddDataNoCopy(v8, 0, 4u, a5, a6, 0), v18) || (v18 = DEREncoderAddDataFromEncoderNoCopy(v8, v12, 0, 0x10u, 1), v18))
        {
          v9 = v18;
        }

        else
        {
          EncodedBuffer = DEREncoderCreateEncodedBuffer(v12, a7, a8);
          if (EncodedBuffer)
          {
            v9 = EncodedBuffer;
          }

          else
          {
            v9 = 100;
          }
        }

        goto LABEL_16;
      }
    }

    else
    {
      v12 = 0;
    }

    v9 = 2;
  }

LABEL_16:
  DEREncoderDestroy(v8);
  DEREncoderDestroy(v12);
  return v9;
}

uint64_t Img4EncodeCreateManifest(uint64_t a1, uint64_t (*a2)(void **, char *, uint64_t), uint64_t (*a3)(void **, size_t *, uint64_t), uint64_t (*a4)(uint64_t, void *, void, void **, uint64_t *, uint64_t), const void *a5, unsigned int a6, void *a7, unsigned int *a8, uint64_t a9, uint64_t a10)
{
  v10 = 0;
  v38 = 0;
  v37 = 0;
  v36 = 0;
  v35 = 1295273289;
  v33 = 0;
  v34 = 0;
  v31 = 0;
  v32 = 0;
  v11 = 101;
  if (!a2 || !a3 || !a7)
  {
    v15 = 0;
    goto LABEL_13;
  }

  v15 = 0;
  if (!a8)
  {
    goto LABEL_13;
  }

  v20 = DEREncoderCreate(0);
  v10 = v20;
  if (!v20)
  {
    v15 = 0;
LABEL_12:
    v11 = 2;
    goto LABEL_13;
  }

  v21 = DEREncoderAddData(v20, 0, 22, &v35, 4, 0);
  if (v21)
  {
    goto LABEL_8;
  }

  v21 = DEREncoderAddUInt32(v10, 0, 2u, a1);
  if (v21)
  {
    goto LABEL_8;
  }

  __n = 0;
  v39 = 0;
  __src = 0;
  v23 = a2(&__src, &__n + 4, a9);
  if (v23 == 100 && (v23 = a3(&v39, &__n, a9), v23 == 100))
  {
    v24 = (HIDWORD(__n) + __n);
    if (__CFADD__(HIDWORD(__n), __n))
    {
      v26 = 0;
      v11 = 106;
    }

    else
    {
      v25 = calloc(1uLL, (HIDWORD(__n) + __n));
      v26 = v25;
      if (v25)
      {
        memcpy(v25, __src, HIDWORD(__n));
        memcpy(&v26[HIDWORD(__n)], v39, __n);
        v11 = sub_5BD94(a1, 1296125506, v26, v24, &v34, &v38 + 1);
      }

      else
      {
        v11 = 102;
      }
    }
  }

  else
  {
    v11 = v23;
    v26 = 0;
  }

  if (__src)
  {
    free(__src);
    __src = 0;
  }

  if (v39)
  {
    free(v39);
    v39 = 0;
  }

  if (v26)
  {
    free(v26);
  }

  if (v11 != 100)
  {
    goto LABEL_9;
  }

  v21 = DEREncoderAddData(v10, 0, 17, v34, HIDWORD(v38), 1);
  if (v21 || (v21 = sub_5CCA8(v34, HIDWORD(v38), &v32, &v37), v21 != 100) || (v21 = a4(a1, v32, v37, &v31, &v36, a10), v21 != 100) || (v21 = DEREncoderAddData(v10, 0, 4, v31, v36, 0), v21) || (v21 = DEREncoderAddData(v10, 0, 16, a5, a6, 1), v21) || (v21 = DEREncoderCreateEncodedBuffer(v10, &v33, &v38), v21))
  {
LABEL_8:
    v11 = v21;
LABEL_9:
    v15 = 0;
    goto LABEL_13;
  }

  v27 = DEREncoderCreate(0);
  v15 = v27;
  if (!v27)
  {
    goto LABEL_12;
  }

  v28 = DEREncoderAddData(v27, 0, 16, v33, v38, 1);
  if (v28)
  {
    v11 = v28;
  }

  else
  {
    EncodedBuffer = DEREncoderCreateEncodedBuffer(v15, a7, a8);
    if (EncodedBuffer)
    {
      v11 = EncodedBuffer;
    }

    else
    {
      v11 = 100;
    }
  }

LABEL_13:
  DEREncoderDestroy(v10);
  DEREncoderDestroy(v15);
  if (v34)
  {
    free(v34);
    v34 = 0;
  }

  if (v33)
  {
    free(v33);
    v33 = 0;
  }

  if (v32)
  {
    free(v32);
    v32 = 0;
  }

  if (v31)
  {
    free(v31);
  }

  return v11;
}

uint64_t sub_5CCA8(const void *a1, uint64_t a2, void *a3, unsigned int *a4)
{
  v8 = DEREncoderCreate(0);
  v9 = v8;
  if (v8)
  {
    v10 = DEREncoderAddData(v8, 0, 17, a1, a2, 1);
    if (!v10)
    {
      EncodedBuffer = DEREncoderCreateEncodedBuffer(v9, a3, a4);
      if (EncodedBuffer)
      {
        v10 = EncodedBuffer;
      }

      else
      {
        v10 = 100;
      }
    }
  }

  else
  {
    v10 = 2;
  }

  DEREncoderDestroy(v9);
  return v10;
}

uint64_t Img4EncodeStitch(const void *a1, unsigned int a2, const void *a3, uint64_t a4, const void *a5, uint64_t a6, void *a7, unsigned int *a8)
{
  v8 = 0;
  v24 = 877088073;
  v9 = 101;
  if (!a1)
  {
    v11 = 0;
    goto LABEL_10;
  }

  v11 = 0;
  if (a7)
  {
    v18 = DEREncoderCreate(0);
    v11 = v18;
    if (v18)
    {
      v19 = DEREncoderAddData(v18, 0, 22, &v24, 4, 0);
      if (v19 || (v19 = DEREncoderAddDataNoCopy(v11, 0x103u, 0, a1, a2, 0), v19) || a3 && (v19 = DEREncoderAddData(v11, 2, 0, a3, a4, 1), v19) || a5 && (v19 = DEREncoderAddData(v11, 2, 1, a5, a6, 1), v19))
      {
        v9 = v19;
        v8 = 0;
        goto LABEL_10;
      }

      v8 = DEREncoderCreate(0);
      if (v8)
      {
        v21 = DEREncoderAddDataFromEncoderNoCopy(v11, v8, 0, 0x10u, 1);
        if (v21)
        {
          v9 = v21;
        }

        else
        {
          EncodedBuffer = DEREncoderCreateEncodedBuffer(v8, a7, a8);
          if (EncodedBuffer)
          {
            v9 = EncodedBuffer;
          }

          else
          {
            v9 = 100;
          }
        }

        goto LABEL_10;
      }
    }

    else
    {
      v8 = 0;
    }

    v9 = 102;
  }

LABEL_10:
  DEREncoderDestroy(v11);
  DEREncoderDestroy(v8);
  return v9;
}

uint64_t sub_5CF28(const void *a1, uint64_t a2, void *a3, unsigned int *a4)
{
  v4 = 0;
  v5 = 101;
  if (a1 && a3 && a4)
  {
    v10 = DEREncoderCreate(0);
    v4 = v10;
    if (v10)
    {
      v11 = DEREncoderAddData(v10, 0, 16, a1, a2, 1);
      if (v11)
      {
        v5 = v11;
      }

      else
      {
        EncodedBuffer = DEREncoderCreateEncodedBuffer(v4, a3, a4);
        if (EncodedBuffer)
        {
          v5 = EncodedBuffer;
        }

        else
        {
          v5 = 100;
        }
      }
    }

    else
    {
      v5 = 102;
    }
  }

  DEREncoderDestroy(v4);
  return v5;
}

uint64_t sub_5CFE0(uint64_t a1, const void *a2, uint64_t a3, void *a4, unsigned int *a5)
{
  v5 = 0;
  v6 = 101;
  if (a2 && a4 && a5)
  {
    v12 = DEREncoderCreate(0);
    v5 = v12;
    if (v12)
    {
      v13 = DEREncoderAddData(v12, 3, a1, a2, a3, 1);
      if (v13)
      {
        v6 = v13;
      }

      else
      {
        EncodedBuffer = DEREncoderCreateEncodedBuffer(v5, a4, a5);
        if (EncodedBuffer)
        {
          v6 = EncodedBuffer;
        }

        else
        {
          v6 = 100;
        }
      }
    }

    else
    {
      v6 = 102;
    }
  }

  DEREncoderDestroy(v5);
  return v6;
}

uint64_t sub_5D0A4(_BYTE *a1, unint64_t a2, char *a3)
{
  if (a2 < 4)
  {
    return -1;
  }

  *a1 = __toupper(*a3);
  a1[1] = __toupper(a3[1]);
  a1[2] = __toupper(a3[2]);
  a1[3] = __toupper(42);
  return 4;
}

uint64_t sub_5D110(_BYTE *a1, unint64_t a2, char *a3, unint64_t a4)
{
  if (a4 <= 0xFF)
  {
    if (a2 >= 5)
    {
      *a1 = __toupper(*a3);
      a1[1] = __toupper(a3[1]);
      a1[2] = __toupper(a3[2]);
      a1[3] = __toupper(49);
      a1[4] = a4;
      return 5;
    }

    return -1;
  }

  if (!(a4 >> 16))
  {
    if (a2 >= 6)
    {
      *a1 = __toupper(*a3);
      a1[1] = __toupper(a3[1]);
      a1[2] = __toupper(a3[2]);
      a1[3] = __toupper(50);
      *(a1 + 2) = a4;
      return 6;
    }

    return -1;
  }

  if (!HIDWORD(a4))
  {
    if (a2 >= 8)
    {
      *a1 = __toupper(*a3);
      a1[1] = __toupper(a3[1]);
      a1[2] = __toupper(a3[2]);
      a1[3] = __toupper(52);
      *(a1 + 1) = a4;
      return 8;
    }

    return -1;
  }

  if (a2 < 0xC)
  {
    return -1;
  }

  *a1 = __toupper(*a3);
  a1[1] = __toupper(a3[1]);
  a1[2] = __toupper(a3[2]);
  a1[3] = __toupper(56);
  *(a1 + 4) = a4;
  return 12;
}

uint64_t sub_5D26C(uint64_t a1, unint64_t a2, char *a3, unint64_t a4)
{
  if (!(a4 >> 16))
  {
    if (a2 >= 6)
    {
      *a1 = __toupper(*a3);
      *(a1 + 1) = __toupper(a3[1]);
      *(a1 + 2) = __toupper(a3[2]);
      *(a1 + 3) = __toupper(65);
      *(a1 + 4) = a4;
      return 6;
    }

    return -1;
  }

  if (!HIDWORD(a4))
  {
    if (a2 >= 8)
    {
      *a1 = __toupper(*a3);
      *(a1 + 1) = __toupper(a3[1]);
      *(a1 + 2) = __toupper(a3[2]);
      *(a1 + 3) = __toupper(66);
      *(a1 + 4) = a4;
      return 8;
    }

    return -1;
  }

  if (a2 < 0xC)
  {
    return -1;
  }

  *a1 = __toupper(*a3);
  *(a1 + 1) = __toupper(a3[1]);
  *(a1 + 2) = __toupper(a3[2]);
  *(a1 + 3) = __toupper(67);
  *(a1 + 4) = a4;
  return 12;
}

uint64_t sub_5D37C(uint64_t a1, unint64_t a2, char *a3, _DWORD *a4)
{
  if (a2 < 8)
  {
    return -1;
  }

  *a1 = __toupper(*a3);
  *(a1 + 1) = __toupper(a3[1]);
  *(a1 + 2) = __toupper(a3[2]);
  *(a1 + 3) = __toupper(70);
  *(a1 + 4) = *a4;
  return 8;
}

uint64_t sub_5D3FC(uint64_t a1, unint64_t a2, char *a3, uint64_t a4)
{
  if (a2 < 0x18)
  {
    return -1;
  }

  *a1 = __toupper(*a3);
  *(a1 + 1) = __toupper(a3[1]);
  *(a1 + 2) = __toupper(a3[2]);
  *(a1 + 3) = __toupper(71);
  v8 = *(a4 + 16);
  *(a1 + 4) = *a4;
  *(a1 + 20) = v8;
  return 24;
}

uint64_t sub_5D484(uint64_t a1, unint64_t a2, char *a3, _OWORD *a4)
{
  if (a2 < 0x24)
  {
    return -1;
  }

  *a1 = __toupper(*a3);
  *(a1 + 1) = __toupper(a3[1]);
  *(a1 + 2) = __toupper(a3[2]);
  *(a1 + 3) = __toupper(72);
  v8 = a4[1];
  *(a1 + 4) = *a4;
  *(a1 + 20) = v8;
  return 36;
}

size_t sub_5D508(uint64_t a1, size_t a2, char *a3, char *__s)
{
  v8 = strlen(__s);
  result = -1;
  if (!(v8 >> 16) && v8 + 6 <= a2)
  {
    *a1 = __toupper(*a3);
    *(a1 + 1) = __toupper(a3[1]);
    *(a1 + 2) = __toupper(a3[2]);
    *(a1 + 3) = __toupper(80);
    *(a1 + 4) = v8;
    memcpy((a1 + 6), __s, v8);
    return v8 + 6;
  }

  return result;
}

uint64_t sub_5D5B0(uint64_t a1, unint64_t a2, char *a3, uint64_t *a4)
{
  v6 = *a4;
  v7 = a4[1];
  if ((v7 - 1000000000) < 0xFFFFFFFFC4653601)
  {
    if (a2 >= 0xC)
    {
      *a1 = __toupper(*a3);
      *(a1 + 1) = __toupper(a3[1]);
      *(a1 + 2) = __toupper(a3[2]);
      *(a1 + 3) = __toupper(83);
      *(a1 + 4) = v6;
      return 12;
    }

    return -1;
  }

  if (a2 < 0x10)
  {
    return -1;
  }

  *a1 = __toupper(*a3);
  *(a1 + 1) = __toupper(a3[1]);
  *(a1 + 2) = __toupper(a3[2]);
  *(a1 + 3) = __toupper(84);
  *(a1 + 4) = v6;
  *(a1 + 12) = v7;
  return 16;
}

size_t sub_5D688(_BYTE *a1, size_t a2, uint64_t a3)
{
  v5 = *(a3 + 4);
  if (v5 > 4)
  {
    if (v5 > 6)
    {
      if (v5 == 7)
      {

        return sub_5D508(a1, a2, a3, (a3 + 8));
      }

      else
      {
        if (v5 != 8)
        {
          goto LABEL_34;
        }

        return sub_5D0A4(a1, a2, a3);
      }
    }

    else if (v5 == 5)
    {

      return sub_5D3FC(a1, a2, a3, a3 + 8);
    }

    else
    {

      return sub_5D484(a1, a2, a3, (a3 + 8));
    }
  }

  else if (v5 > 2)
  {
    if (v5 == 3)
    {

      return sub_5D5B0(a1, a2, a3, (a3 + 8));
    }

    else
    {

      return sub_5D37C(a1, a2, a3, (a3 + 8));
    }
  }

  else
  {
    if (v5 != 1)
    {
      if (v5 == 2)
      {
        v6 = *(a3 + 8);

        return sub_5D26C(a1, a2, a3, v6);
      }

LABEL_34:
      sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_encodeHeaderField", 190, 10, 0, "invalid valueType in field", v3, v4);
      return -1;
    }

    v8 = *(a3 + 8);

    return sub_5D110(a1, a2, a3, v8);
  }
}

uint64_t sub_5D7C0(uint64_t a1, unint64_t a2, int *a3, uint64_t a4, unint64_t a5)
{
  if (a2 >= 0xFFFF)
  {
    v5 = 0xFFFFLL;
  }

  else
  {
    v5 = a2;
  }

  if ((*a3 & 1) == 0)
  {
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_encodeHeader", 204, 10, 0, "invalid header, TYP must be set");
    return -1;
  }

  v7 = a3[1] - 66;
  v8 = v7 > 0x11;
  v9 = (1 << v7) & 0x24C57;
  if (v8 || v9 == 0)
  {
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_encodeHeader", 217, 10, 0, "invalid entryType");
    return -1;
  }

  if (a2 < 6)
  {
    return -1;
  }

  *(a1 + 4) = 30840;
  *a1 = 825246017;
  v15 = v5 - 6;
  v16 = *a3;
  if (*a3)
  {
    if (v15 < 5)
    {
      return -1;
    }

    v18 = a3[1];
    *(a1 + 6) = __toupper(84);
    *(a1 + 7) = __toupper(89);
    *(a1 + 8) = __toupper(80);
    *(a1 + 9) = __toupper(49);
    *(a1 + 10) = v18;
    v17 = a1 + 11;
    v15 = v5 - 11;
    v16 = *a3;
    if ((*a3 & 0x8000) == 0)
    {
LABEL_14:
      if ((v16 & 0x10000) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_26;
    }
  }

  else
  {
    v17 = a1 + 6;
    if ((v16 & 0x8000) == 0)
    {
      goto LABEL_14;
    }
  }

  v19 = sub_5D508(v17, v15, "PAT", a3 + 144);
  if ((v19 & 0x8000000000000000) != 0)
  {
    return -1;
  }

  v17 += v19;
  v15 -= v19;
  v16 = *a3;
  if ((*a3 & 0x10000) == 0)
  {
LABEL_15:
    if ((v16 & 2) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_28;
  }

LABEL_26:
  v20 = sub_5D508(v17, v15, "LNK", a3 + 1168);
  if ((v20 & 0x8000000000000000) != 0)
  {
    return -1;
  }

  v17 += v20;
  v15 -= v20;
  v16 = *a3;
  if ((*a3 & 2) == 0)
  {
LABEL_16:
    if ((v16 & 4) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_30;
  }

LABEL_28:
  v21 = sub_5D110(v17, v15, "UID", a3[2]);
  if (v21 < 0)
  {
    return -1;
  }

  v17 += v21;
  v15 -= v21;
  v16 = *a3;
  if ((*a3 & 4) == 0)
  {
LABEL_17:
    if ((v16 & 0x10) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_32;
  }

LABEL_30:
  v22 = sub_5D110(v17, v15, "GID", a3[3]);
  if (v22 < 0)
  {
    return -1;
  }

  v17 += v22;
  v15 -= v22;
  v16 = *a3;
  if ((*a3 & 0x10) == 0)
  {
LABEL_18:
    if ((v16 & 0x20) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_35;
  }

LABEL_32:
  v23 = v15 >= 6;
  v15 -= 6;
  if (!v23)
  {
    return -1;
  }

  v24 = a3[5];
  *v17 = __toupper(77);
  *(v17 + 1) = __toupper(79);
  *(v17 + 2) = __toupper(68);
  *(v17 + 3) = __toupper(50);
  *(v17 + 4) = v24;
  v17 += 6;
  v16 = *a3;
  if ((*a3 & 0x20) == 0)
  {
LABEL_19:
    if ((v16 & 0x40) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_37;
  }

LABEL_35:
  v25 = sub_5D110(v17, v15, "DEV", a3[6]);
  if (v25 < 0)
  {
    return -1;
  }

  v17 += v25;
  v15 -= v25;
  v16 = *a3;
  if ((*a3 & 0x40) == 0)
  {
LABEL_20:
    if ((v16 & 0x80) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_39;
  }

LABEL_37:
  v26 = sub_5D110(v17, v15, "INO", *(a3 + 4));
  if (v26 < 0)
  {
    return -1;
  }

  v17 += v26;
  v15 -= v26;
  v16 = *a3;
  if ((*a3 & 0x80) != 0)
  {
LABEL_39:
    v27 = sub_5D110(v17, v15, "SIZ", *(a3 + 5));
    if (v27 < 0)
    {
      return -1;
    }

    v17 += v27;
    v15 -= v27;
    v16 = *a3;
  }

LABEL_41:
  if ((v16 & 8) != 0)
  {
    v28 = sub_5D110(v17, v15, "FLG", a3[4]);
    if (v28 < 0)
    {
      return -1;
    }

    v17 += v28;
    v15 -= v28;
    v16 = *a3;
  }

  if ((v16 & 0x100) != 0)
  {
    v29 = sub_5D5B0(v17, v15, "MTM", a3 + 6);
    if (v29 < 0)
    {
      return -1;
    }

    v17 += v29;
    v15 -= v29;
    v16 = *a3;
  }

  if ((v16 & 0x1000) != 0)
  {
    v30 = sub_5D37C(v17, v15, "CKS", a3 + 22);
    if (v30 < 0)
    {
      return -1;
    }

    v17 += v30;
    v15 -= v30;
    v16 = *a3;
  }

  if ((v16 & 0x2000) != 0)
  {
    v31 = sub_5D3FC(v17, v15, "SH1", (a3 + 23));
    if (v31 < 0)
    {
      return -1;
    }

    v17 += v31;
    v15 -= v31;
    v16 = *a3;
  }

  if ((v16 & 0x4000) != 0)
  {
    v32 = sub_5D484(v17, v15, "SH2", a3 + 7);
    if (v32 < 0)
    {
      return -1;
    }

    v17 += v32;
    v15 -= v32;
    v16 = *a3;
  }

  if ((v16 & 0x200) != 0)
  {
    v33 = sub_5D26C(v17, v15, "DAT", *(a3 + 8));
    if (v33 < 0)
    {
      return -1;
    }

    v17 += v33;
    v15 -= v33;
    v16 = *a3;
  }

  if ((v16 & 0x400) != 0)
  {
    v34 = sub_5D26C(v17, v15, "XAT", *(a3 + 9));
    if (v34 < 0)
    {
      return -1;
    }

    v17 += v34;
    v15 -= v34;
    v16 = *a3;
  }

  if ((v16 & 0x800) != 0)
  {
    v35 = sub_5D26C(v17, v15, "ACL", *(a3 + 10));
    if (v35 < 0)
    {
      return -1;
    }

    v17 += v35;
    v15 -= v35;
  }

  if (a4 && a5)
  {
    v36 = 0;
    do
    {
      v37 = sub_5D688(v17, v15, a4);
      if ((v37 & 0x8000000000000000) != 0)
      {
        return -1;
      }

      v17 += v37;
      v15 -= v37;
      ++v36;
      a4 += 1032;
    }

    while (v36 < a5);
  }

  result = v17 - a1;
  *(a1 + 4) = v17 - a1;
  return result;
}

size_t sub_5DC4C(uint64_t a1, size_t a2, uint64_t a3)
{
  v3 = *a3 - 1;
  if (v3 >= 4)
  {
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_encodeACE", 281, 10, 0, "invalid ACE type");
    return -1;
  }

  v5 = *(a3 + 24) - 1;
  if (v5 >= 4)
  {
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_encodeACE", 298, 10, 0, "invalid ACE qualifier type");
    return -1;
  }

  v8 = strlen((a3 + 28));
  v9 = v8 + 22;
  result = -1;
  if (v8 + 22 <= a2 && !HIDWORD(v9))
  {
    *a1 = v9;
    *(a1 + 4) = 0x4C554441u >> (8 * v3);
    *(a1 + 5) = *(a3 + 16);
    *(a1 + 13) = *(a3 + 8);
    *(a1 + 21) = 0x69736775u >> (8 * v5);
    memcpy((a1 + 22), (a3 + 28), v8);
    return v9;
  }

  return result;
}

size_t sub_5DD64(uint64_t a1, uint64_t a2, size_t a3)
{
  bzero(a1, 0x408uLL);
  if (a3 < 4)
  {
    return -1;
  }

  for (i = 0; i != 3; ++i)
  {
    *(a1 + i) = __toupper(*(a2 + i));
  }

  v9 = *(a2 + 3);
  if (v9 <= 0x42)
  {
    if (*(a2 + 3) <= 0x33u)
    {
      if (v9 == 42)
      {
        *(a1 + 4) = 8;
        return 4;
      }

      if (v9 == 49)
      {
        if (a3 != 4)
        {
          *(a1 + 4) = 1;
          *(a1 + 8) = *(a2 + 4);
          return 5;
        }

        return -1;
      }

      if (v9 != 50)
      {
        goto LABEL_57;
      }

      if (a3 < 6)
      {
        return -1;
      }

      v12 = 1;
    }

    else
    {
      if (*(a2 + 3) <= 0x40u)
      {
        if (v9 != 52)
        {
          if (v9 == 56)
          {
            if (a3 >= 0xC)
            {
              v10 = 1;
LABEL_50:
              *(a1 + 4) = v10;
              *(a1 + 8) = *(a2 + 4);
              return 12;
            }

            return -1;
          }

LABEL_57:
          sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_decodeHeaderField", 404, 10, 0, "invalid fields storage type");
          return -1;
        }

        if (a3 < 8)
        {
          return -1;
        }

        v14 = 1;
LABEL_56:
        *(a1 + 4) = v14;
        *(a1 + 8) = *(a2 + 4);
        return 8;
      }

      if (v9 != 65)
      {
        if (v9 != 66)
        {
          goto LABEL_57;
        }

        if (a3 < 8)
        {
          return -1;
        }

        v14 = 2;
        goto LABEL_56;
      }

      if (a3 < 6)
      {
        return -1;
      }

      v12 = 2;
    }

    *(a1 + 4) = v12;
    *(a1 + 8) = *(a2 + 4);
    return 6;
  }

  if (*(a2 + 3) > 0x47u)
  {
    if (*(a2 + 3) > 0x52u)
    {
      if (v9 == 83)
      {
        if (a3 >= 0xC)
        {
          *(a1 + 4) = 3;
          *(a1 + 8) = *(a2 + 4);
          *(a1 + 16) = 0;
          return 12;
        }

        return -1;
      }

      if (v9 == 84)
      {
        if (a3 >= 0x10)
        {
          *(a1 + 4) = 3;
          *(a1 + 8) = *(a2 + 4);
          *(a1 + 16) = *(a2 + 12);
          return 16;
        }

        return -1;
      }
    }

    else
    {
      if (v9 == 72)
      {
        if (a3 >= 0x24)
        {
          *(a1 + 4) = 6;
          v15 = *(a2 + 4);
          *(a1 + 24) = *(a2 + 20);
          *(a1 + 8) = v15;
          return 36;
        }

        return -1;
      }

      if (v9 == 80)
      {
        if (a3 >= 6)
        {
          v11 = *(a2 + 4);
          if (v11 < 0x3FF)
          {
            v6 = v11 + 6;
            if (v11 + 6 <= a3)
            {
              *(a1 + 4) = 7;
              memcpy((a1 + 8), (a2 + 6), v11);
              return v6;
            }
          }

          else
          {
            sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_decodeHeaderField", 396, 10, 0, "path too long in header");
          }
        }

        return -1;
      }
    }

    goto LABEL_57;
  }

  if (v9 != 67)
  {
    if (v9 != 70)
    {
      if (v9 == 71)
      {
        if (a3 >= 0x18)
        {
          *(a1 + 4) = 5;
          v13 = *(a2 + 4);
          *(a1 + 24) = *(a2 + 20);
          *(a1 + 8) = v13;
          return 24;
        }

        return -1;
      }

      goto LABEL_57;
    }

    if (a3 < 8)
    {
      return -1;
    }

    v14 = 4;
    goto LABEL_56;
  }

  if (a3 >= 0xC)
  {
    v10 = 2;
    goto LABEL_50;
  }

  return -1;
}

uint64_t sub_5E04C(_DWORD *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, unint64_t *a6)
{
  bzero(a1, 0x890uLL);
  if (a3 < 6 || *a2 != 826360153 && *a2 != 825246017)
  {
    return -1;
  }

  v12 = *(a2 + 4);
  if (v12 < 6 || v12 > a3)
  {
    return -1;
  }

  v15 = a2 + 6;
  v16 = v12 - 6;
  if (v12 != 6)
  {
    v23 = 0;
    memset(__src, 0, 512);
    while (1)
    {
      v17 = sub_5DD64(__src, v15, v16);
      if ((v17 & 0x8000000000000000) != 0)
      {
        return -1;
      }

      v18 = v17;
      v19 = __src[0] & 0xDFDFDF;
      if ((__src[0] & 0xDFDFDF) <= 0x4D544C)
      {
        if ((__src[0] & 0xDFDFDF) > 0x444F4C)
        {
          if ((__src[0] & 0xDFDFDF) > 0x4B4E4B)
          {
            if (v19 == 4935244)
            {
              if (DWORD1(__src[0]) != 7)
              {
                sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_decodeHeader", 459, 10, 0, "invalid type for default field %s");
                return -1;
              }

              *a1 |= 0x10000u;
              strlcpy(a1 + 1168, __src + 8, 0x400uLL);
            }

            else
            {
              if (v19 != 4997953)
              {
                goto LABEL_73;
              }

              if (DWORD1(__src[0]) != 2)
              {
                sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_decodeHeader", 473, 10, 0, "invalid type for default field %s");
                return -1;
              }

              *a1 |= 0x800u;
              *(a1 + 10) = *(&__src[0] + 1);
            }
          }

          else if (v19 == 4476749)
          {
            if (DWORD1(__src[0]) != 1)
            {
              sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_decodeHeader", 463, 10, 0, "invalid type for default field %s");
              return -1;
            }

            *a1 |= 0x10u;
            a1[5] = DWORD2(__src[0]);
          }

          else
          {
            if (v19 != 4672582)
            {
              goto LABEL_73;
            }

            if (DWORD1(__src[0]) != 1)
            {
              sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_decodeHeader", 462, 10, 0, "invalid type for default field %s");
              return -1;
            }

            *a1 |= 8u;
            a1[4] = DWORD2(__src[0]);
          }
        }

        else if ((__src[0] & 0xDFDFDF) > 0x444946)
        {
          if (v19 == 4475207)
          {
            if (DWORD1(__src[0]) != 1)
            {
              sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_decodeHeader", 461, 10, 0, "invalid type for default field %s");
              return -1;
            }

            *a1 |= 4u;
            a1[3] = DWORD2(__src[0]);
          }

          else
          {
            if (v19 != 4475221)
            {
              goto LABEL_73;
            }

            if (DWORD1(__src[0]) != 1)
            {
              sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_decodeHeader", 460, 10, 0, "invalid type for default field %s");
              return -1;
            }

            *a1 |= 2u;
            a1[2] = DWORD2(__src[0]);
          }
        }

        else if (v19 == 1132627)
        {
          if (DWORD1(__src[0]) != 5)
          {
            sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_decodeHeader", 469, 10, 0, "invalid type for default field %s");
            return -1;
          }

          *a1 |= 0x2000u;
          *(a1 + 23) = *(__src + 8);
          a1[27] = DWORD2(__src[1]);
        }

        else
        {
          if (v19 != 1198163)
          {
            goto LABEL_73;
          }

          if (DWORD1(__src[0]) != 6)
          {
            sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_decodeHeader", 470, 10, 0, "invalid type for default field %s");
            return -1;
          }

          *a1 |= 0x4000u;
          v20 = *(&__src[1] + 8);
          *(a1 + 7) = *(__src + 8);
          *(a1 + 8) = v20;
        }
      }

      else if ((__src[0] & 0xDFDFDF) <= 0x544143)
      {
        if ((__src[0] & 0xDFDFDF) > 0x505953)
        {
          if (v19 == 5265748)
          {
            if (DWORD1(__src[0]) != 1)
            {
              sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_decodeHeader", 440, 10, 0, "invalid type for default field %s");
              return -1;
            }

            v21 = DWORD2(__src[0]);
            if ((*(&__src[0] + 1) - 66) > 0x11 || ((1 << (BYTE8(__src[0]) - 66)) & 0x24C57) == 0)
            {
              sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_decodeHeader", 455, 10, 0, "invalid entryType");
              return -1;
            }

            *a1 |= 1u;
            a1[1] = v21;
          }

          else
          {
            if (v19 != 5458755)
            {
              goto LABEL_73;
            }

            if (DWORD1(__src[0]) != 4)
            {
              sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_decodeHeader", 468, 10, 0, "invalid type for default field %s");
              return -1;
            }

            *a1 |= 0x1000u;
            a1[22] = DWORD2(__src[0]);
          }
        }

        else if (v19 == 5067853)
        {
          if (DWORD1(__src[0]) != 3)
          {
            sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_decodeHeader", 467, 10, 0, "invalid type for default field %s");
            return -1;
          }

          *a1 |= 0x100u;
          *(a1 + 3) = *(__src + 8);
        }

        else
        {
          if (v19 != 5197385)
          {
            goto LABEL_73;
          }

          if (DWORD1(__src[0]) != 1)
          {
            sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_decodeHeader", 465, 10, 0, "invalid type for default field %s");
            return -1;
          }

          *a1 |= 0x40u;
          *(a1 + 4) = *(&__src[0] + 1);
        }
      }

      else if ((__src[0] & 0xDFDFDF) <= 0x544157)
      {
        if (v19 == 5521732)
        {
          if (DWORD1(__src[0]) != 2)
          {
            sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_decodeHeader", 471, 10, 0, "invalid type for default field %s");
            return -1;
          }

          *a1 |= 0x200u;
          *(a1 + 8) = *(&__src[0] + 1);
        }

        else
        {
          if (v19 != 5521744)
          {
LABEL_73:
            v22 = v23;
            if (a4 && v23 < a5)
            {
              memcpy((a4 + 1032 * v23), __src, 0x408uLL);
              v22 = v23;
            }

            v23 = v22 + 1;
            goto LABEL_77;
          }

          if (DWORD1(__src[0]) != 7)
          {
            sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_decodeHeader", 458, 10, 0, "invalid type for default field %s");
            return -1;
          }

          *a1 |= 0x8000u;
          __strlcpy_chk();
        }
      }

      else
      {
        switch(v19)
        {
          case 5521752:
            if (DWORD1(__src[0]) != 2)
            {
              sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_decodeHeader", 472, 10, 0, "invalid type for default field %s");
              return -1;
            }

            *a1 |= 0x400u;
            *(a1 + 9) = *(&__src[0] + 1);
            break;
          case 5653828:
            if (DWORD1(__src[0]) != 1)
            {
              sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_decodeHeader", 464, 10, 0, "invalid type for default field %s");
              return -1;
            }

            *a1 |= 0x20u;
            a1[6] = DWORD2(__src[0]);
            break;
          case 5917011:
            if (DWORD1(__src[0]) != 1)
            {
              sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_decodeHeader", 466, 10, 0, "invalid type for default field %s");
              return -1;
            }

            *a1 |= 0x80u;
            *(a1 + 5) = *(&__src[0] + 1);
            break;
          default:
            goto LABEL_73;
        }
      }

LABEL_77:
      v15 += v18;
      v16 -= v18;
      if (!v16)
      {
        goto LABEL_80;
      }
    }
  }

  v23 = 0;
LABEL_80:
  if (a6)
  {
    *a6 = v23;
  }

  return v15 - a2;
}

unint64_t sub_5E8FC(uint64_t a1, unint64_t a2, void *a3, void *a4)
{
  if (a2 < 6 || *a1 != 826360153 && *a1 != 825246017)
  {
    return -1;
  }

  result = *(a1 + 4);
  if (result < 6 || result > a2)
  {
    return -1;
  }

  v22 = v4;
  v23 = v5;
  v9 = result - 6;
  if (result != 6)
  {
    v10 = 0;
    v11 = 0;
    v12 = (a1 + 6);
    while (1)
    {
      if (v9 < 4)
      {
        return -1;
      }

      v13 = *(v12 + 3);
      v21 = *v12;
      HIBYTE(v21) = 0;
      if (v13 > 66)
      {
        if (v13 <= 71)
        {
          if (v13 == 67)
          {
            if (v9 < 0xC)
            {
              return -1;
            }

            v18 = *(v12 + 1);
            v16 = __CFADD__(v10, v18);
            v10 += v18;
            if (v16)
            {
              return -1;
            }

LABEL_48:
            v14 = 12;
            goto LABEL_49;
          }

          if (v13 == 70)
          {
            goto LABEL_36;
          }

          if (v13 != 71)
          {
            goto LABEL_80;
          }

          v14 = 24;
        }

        else if (v13 > 82)
        {
          if (v13 == 83)
          {
            goto LABEL_48;
          }

          if (v13 != 84)
          {
LABEL_80:
            sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_decodeHeaderInfo", 558, 10, 0, "invalid storage type in YAA header: 0x%02x, key=%s", v13, &v21);
            return -1;
          }

          v14 = 16;
        }

        else if (v13 == 72)
        {
          v14 = 36;
        }

        else
        {
          if (v13 != 80)
          {
            goto LABEL_80;
          }

          if (v9 < 6)
          {
            return -1;
          }

          v14 = *(v12 + 2) + 6;
        }
      }

      else
      {
        if (v13 > 51)
        {
          if (v13 > 64)
          {
            if (v13 != 65)
            {
              if (v9 < 8)
              {
                return -1;
              }

              v15 = v12[1];
              v16 = __CFADD__(v10, v15);
              v10 += v15;
              if (v16)
              {
                return -1;
              }

LABEL_36:
              v14 = 8;
              goto LABEL_49;
            }

            if (v9 < 6)
            {
              return -1;
            }

            v17 = *(v12 + 2);
            v16 = __CFADD__(v10, v17);
            v10 += v17;
            if (v16)
            {
              return -1;
            }

            goto LABEL_43;
          }

          if (v13 == 52)
          {
            goto LABEL_36;
          }

          if (v13 != 56)
          {
            goto LABEL_80;
          }

          goto LABEL_48;
        }

        switch(v13)
        {
          case '*':
            v14 = 4;
            break;
          case '1':
            v14 = 5;
            break;
          case '2':
LABEL_43:
            v14 = 6;
            break;
          default:
            goto LABEL_80;
        }
      }

LABEL_49:
      if (v9 < v14)
      {
        return -1;
      }

      v19 = v21 & 0xDFDFDF;
      if ((v21 & 0xDFDFDFu) > 0x4F4E48)
      {
        if ((v21 & 0xDFDFDFu) <= 0x544143)
        {
          if (v19 == 5197385 || v19 == 5265748 || v19 == 5458755)
          {
            goto LABEL_76;
          }
        }

        else if ((v19 - 5521732) <= 0x14 && ((1 << (v19 - 68)) & 0x101001) != 0 || v19 == 5653828 || v19 == 5917011)
        {
          goto LABEL_76;
        }

LABEL_74:
        if (v19 != 4997953)
        {
          ++v11;
        }

        goto LABEL_76;
      }

      if ((v21 & 0xDFDFDFu) <= 0x444F4C)
      {
        if ((v21 & 0xDFDFDFu) > 0x444946)
        {
          if (v19 == 4475207)
          {
            goto LABEL_76;
          }

          v20 = 4475221;
        }

        else
        {
          if (v19 == 1132627)
          {
            goto LABEL_76;
          }

          v20 = 1198163;
        }

        goto LABEL_70;
      }

      if ((v21 & 0xDFDFDFu) > 0x4B4E4B)
      {
        if (v19 == 4935244 || v19 == 5067853)
        {
          goto LABEL_76;
        }

        goto LABEL_74;
      }

      if (v19 != 4476749)
      {
        v20 = 4672582;
LABEL_70:
        if (v19 != v20)
        {
          goto LABEL_74;
        }
      }

LABEL_76:
      v12 = (v12 + v14);
      v9 -= v14;
      if (!v9)
      {
        goto LABEL_79;
      }
    }
  }

  v11 = 0;
  v10 = 0;
LABEL_79:
  *a3 = v11;
  *a4 = v10;
  return result;
}

unint64_t sub_5ECBC(unsigned int *a1, unint64_t a2, uint64_t a3)
{
  *(a3 + 256) = 0u;
  *(a3 + 272) = 0u;
  *(a3 + 224) = 0u;
  *(a3 + 240) = 0u;
  *(a3 + 192) = 0u;
  *(a3 + 208) = 0u;
  *(a3 + 160) = 0u;
  *(a3 + 176) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 144) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  if (a2 > 3)
  {
    v3 = *a1;
    if (v3 > a2)
    {
      sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_decodeACE", 612, 10, 0, "invalid ACL blob");
      return -1;
    }

    v5 = *(a1 + 4);
    *(a3 + 16) = *(a1 + 5);
    *(a3 + 8) = *(a1 + 13);
    if (v3 - 22 >= 0x101)
    {
      sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_decodeACE", 622, 10, 0, "unsupported qualifier length");
      return -1;
    }

    v7 = *(a1 + 21);
    memcpy((a3 + 28), a1 + 22, v3 - 22);
    v8 = __toupper(v5);
    if (v8 > 75)
    {
      if (v8 == 76)
      {
        v9 = 4;
      }

      else
      {
        if (v8 != 85)
        {
          goto LABEL_16;
        }

        v9 = 3;
      }
    }

    else
    {
      if (v8 != 65)
      {
        if (v8 == 68)
        {
          v9 = 2;
          goto LABEL_19;
        }

LABEL_16:
        sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_decodeACE", 632, 10, 0, "invalid ACE type in ACL blob: %c");
        return -1;
      }

      v9 = 1;
    }

LABEL_19:
    *a3 = v9;
    HIDWORD(v11) = __toupper(v7) - 71;
    LODWORD(v11) = HIDWORD(v11);
    v10 = v11 >> 1;
    if (v10 > 5)
    {
      if (v10 == 6)
      {
        v12 = 3;
        goto LABEL_29;
      }

      if (v10 == 7)
      {
        v12 = 1;
        goto LABEL_29;
      }
    }

    else
    {
      if (!v10)
      {
        v12 = 2;
        goto LABEL_29;
      }

      if (v10 == 1)
      {
        v12 = 4;
LABEL_29:
        *(a3 + 24) = v12;
        return v3;
      }
    }

    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_decodeACE", 642, 10, 0, "invalid ACE qualifier type in ACL blob: %c");
    return -1;
  }

  sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_decodeACE", 610, 10, 0, "invalid ACL blob");
  return -1;
}

unint64_t sub_5EEBC(uint64_t a1, unint64_t *a2, void **a3, unint64_t a4, unsigned int *a5)
{
  v7 = *a2;
  v8 = *a3;
  if (a4)
  {
    v10 = a4;
    v11 = 0;
    v12 = 0;
    while (1)
    {
      if (v12 >= v7)
      {
        if (v7)
        {
          v7 += v7 >> 1;
        }

        else
        {
          v7 = 8;
        }

        v8 = reallocf(v8, 288 * v7);
        if (!v8)
        {
          break;
        }
      }

      v13 = sub_5ECBC(a5, v10, v8 + v11);
      if ((v13 & 0x8000000000000000) != 0)
      {
        sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_decodeACL", 670, 10, 0, "decoding ACE");
        goto LABEL_14;
      }

      ++v12;
      a5 = (a5 + v13);
      v11 += 288;
      v10 -= v13;
      if (!v10)
      {
        goto LABEL_15;
      }
    }

    v14 = *__error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_decodeACL", 665, 10, v14, "malloc");
LABEL_14:
    v12 = -1;
  }

  else
  {
    v12 = 0;
  }

LABEL_15:
  *a2 = v7;
  *a3 = v8;
  return v12;
}

uint64_t sub_5EFE4(char *a1, int *a2, uint64_t a3, int a4)
{
  v48[1] = 0;
  v48[2] = 0;
  v48[0] = 5;
  memset(v49, 0, sizeof(v49));
  if (a3 && (*a3 & 1) != 0)
  {
    v49[0] = *(a3 + 8);
    v8 = 512;
    HIDWORD(v48[0]) = 512;
    v9 = 16;
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  v10 = *a2;
  if ((*a2 & 0x100) != 0)
  {
    v11 = *(a2 + 3);
    v12 = (v49 + v9);
    *v12 = v11;
    v12[1] = v11;
    v9 |= 0x20u;
    v8 |= 0x1400u;
    HIDWORD(v48[0]) = v8;
  }

  if (a3 && (*a3 & 2) != 0)
  {
    *(v49 + v9) = *(a3 + 24);
    v9 += 16;
    HIDWORD(v48[0]) = v8 | 0x2000;
  }

  if ((v10 & 2) != 0)
  {
    v13 = a2[2];
    if ((v10 & 4) != 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v13 = -1;
    if ((v10 & 4) != 0)
    {
LABEL_12:
      v14 = a2[3];
      goto LABEL_15;
    }
  }

  v14 = -1;
LABEL_15:
  memset(&v47, 0, sizeof(v47));
  if (lstat(a1, &v47) < 0)
  {
    v17 = __error();
    if (a4 && *v17 == 13)
    {
      return 0;
    }

    v25 = *__error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_setEntryAttributes", 751, 10, v25, "%s");
    return 0xFFFFFFFFLL;
  }

  v15 = v47.st_mode & 0xF000;
  if (v15 == 0x8000 || v15 == 0x4000)
  {
    v16 = sub_64390();
  }

  else
  {
    v16 = 0;
  }

  v19 = a2[1] - 68;
  if (v19 > 8 || ((1 << v19) & 0x115) == 0)
  {
    if ((*a2 & 2) != 0 && v13 != v47.st_uid || (v22 = 1, (*a2 & 4) != 0) && v14 != v47.st_gid)
    {
      if (!lchown(a1, v13, v14) || (v26 = __error(), a4) && *v26 == 1)
      {
        v22 = 1;
      }

      else
      {
        v38 = __error();
        sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_setEntryAttributes", 814, 10, *v38, "%s", a1);
        v22 = 0;
      }
    }

    if ((*a2 & 0x10) != 0)
    {
      v39 = a2[5] & 0xFFF;
      if (v39 != (v47.st_mode & 0xFFF))
      {
        if (lchmod(a1, v39))
        {
          v40 = __error();
          if (!a4 || *v40 != 1)
          {
            v41 = __error();
            sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_setEntryAttributes", 819, 10, *v41, "%s", a1);
            v22 = 0;
          }
        }
      }
    }

    if (HIDWORD(v48[0]))
    {
      if (setattrlist(a1, v48, v49, v9, 1u))
      {
        v42 = __error();
        if (!a4 || *v42 != 1)
        {
          v43 = __error();
          sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_setEntryAttributes", 835, 10, "setattrlist error %d: %s", *v43, a1);
        }
      }
    }

    if ((*a2 & 8) != 0)
    {
      v44 = a2[4] & 0xFFFFFFDF | (32 * ((v47.st_flags >> 5) & 1));
      if (v47.st_flags != v44)
      {
        if (lchflags(a1, v44))
        {
          v45 = __error();
          if (!a4 || *v45 != 1)
          {
            v46 = __error();
            sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_setEntryAttributes", 849, 10, *v46, "%s", a1);
            v22 = 0;
          }
        }
      }
    }

    goto LABEL_69;
  }

  v20 = open(a1, 0x200000);
  if ((v20 & 0x80000000) != 0)
  {
    v24 = *__error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_setEntryAttributes", 770, 10, v24, "%s");
    return 0xFFFFFFFFLL;
  }

  v21 = v20;
  if ((*a2 & 2) != 0 && v13 != v47.st_uid || (v22 = 1, (*a2 & 4) != 0) && v14 != v47.st_gid)
  {
    if (!fchown(v20, v13, v14) || (v23 = __error(), a4) && *v23 == 1)
    {
      v22 = 1;
    }

    else
    {
      v27 = __error();
      sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_setEntryAttributes", 774, 10, *v27, "%s", a1);
      v22 = 0;
    }
  }

  if ((*a2 & 0x10) != 0)
  {
    v28 = a2[5] & 0xFFF;
    if (v28 != (v47.st_mode & 0xFFF))
    {
      if (fchmod(v21, v28))
      {
        v29 = __error();
        if (!a4 || *v29 != 1)
        {
          v30 = __error();
          sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_setEntryAttributes", 778, 10, *v30, "%s", a1);
          v22 = 0;
        }
      }
    }
  }

  if (HIDWORD(v48[0]))
  {
    if (fsetattrlist(v21, v48, v49, v9, 1u))
    {
      v31 = __error();
      if (!a4 || *v31 != 1)
      {
        v32 = __error();
        sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_setEntryAttributes", 783, 10, *v32, "%s", a1);
        v22 = 0;
      }
    }
  }

  if (a3)
  {
    if ((*a3 & 0x100) != 0)
    {
      v33 = *(a3 + 80);
      if (v16 != v33 && (sub_643A8(v21, v33) & 0x80000000) != 0)
      {
        v34 = __error();
        sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_setEntryAttributes", 794, 10, *v34, "%s", a1);
        v22 = 0;
      }
    }
  }

  if ((*a2 & 8) != 0)
  {
    v35 = a2[4] & 0xFFFFFFDF | (32 * ((v47.st_flags >> 5) & 1));
    if (v47.st_flags != v35)
    {
      if (fchflags(v21, v35))
      {
        v36 = __error();
        if (!a4 || *v36 != 1)
        {
          v37 = __error();
          sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_setEntryAttributes", 803, 10, *v37, "%s", a1);
          v22 = 0;
        }
      }
    }
  }

  close(v21);
LABEL_69:
  if (v22)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_5F658(char *path, uint64_t a2, int a3, unint64_t a4, unsigned int *a5)
{
  if ((*(a2 + 1) & 4) == 0)
  {
    return 0;
  }

  v6 = a4;
  if (*(a2 + 72) == a4)
  {
    if (a4)
    {
      v10 = 1;
      do
      {
        v11 = *a5;
        if (v6 < v11)
        {
          sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_setEntryXAT", 871, 10, 0, "invalid XAT entry size");
          return 0xFFFFFFFFLL;
        }

        if (v11 < 5)
        {
          goto LABEL_29;
        }

        v12 = a5;
        v13 = 0;
        a5 = (a5 + v11);
        v14 = (v12 + 1);
        while (v14[v13])
        {
          v15 = &v14[++v13];
          if (&v14[v13] >= a5)
          {
            goto LABEL_13;
          }
        }

        v15 = &v14[v13];
LABEL_13:
        if (!v13 || v15 == a5)
        {
LABEL_29:
          sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_setEntryXAT", 878, 10, 0, "invalid XAT entry key %zu");
          return 0xFFFFFFFFLL;
        }

        if (a5 == (v15 + 1))
        {
          v16 = 0;
        }

        else
        {
          v16 = v15 + 1;
        }

        if (setxattr(path, v14, v16, a5 - (v15 + 1), 0, 1) < 0)
        {
          v17 = __error();
          if (!a3 || *v17 != 1)
          {
            v18 = __error();
            sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_setEntryXAT", 891, 10, *v18, "setxattr: %s", path);
            v10 = 0;
          }
        }

        v6 -= v11;
      }

      while (v6);
      if (v10)
      {
        return 0;
      }

      else
      {
        return 0xFFFFFFFFLL;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_setEntryXAT", 863, 10, 0, "XAT blob size mismatch");
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_5F828(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((*(a2 + 1) & 8) == 0)
  {
    return 0;
  }

  memset(&v36, 0, sizeof(v36));
  if (lstat(a1, &v36))
  {
    if (!a4)
    {
      return 0;
    }
  }

  else if ((v36.st_mode & 0xF000) == 0xA000 || a4 == 0)
  {
    return 0;
  }

  v11 = 0;
  v12 = a5;
  v13 = a4;
  do
  {
    if ((*v12 - 1) < 2)
    {
      ++v11;
    }

    v12 += 72;
    --v13;
  }

  while (v13);
  if (!v11)
  {
    return 0;
  }

  acl_p = 0;
  v14 = sysconf(71);
  v15 = sysconf(70);
  if (v14 <= v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = v14;
  }

  if (v16 <= 4096)
  {
    v17 = 4096;
  }

  else
  {
    v17 = v16;
  }

  v18 = malloc(v17);
  if (!v18)
  {
    v26 = *__error();
    v27 = "malloc";
    v28 = 943;
LABEL_57:
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_setEntryACL", v28, 10, v26, v27, v29, v30);
    v5 = 0xFFFFFFFFLL;
    goto LABEL_58;
  }

  acl_p = acl_init(v11);
  if (!acl_p)
  {
    v26 = *__error();
    v27 = "acl_init";
    v28 = 946;
    goto LABEL_57;
  }

  v19 = (a5 + 28);
  do
  {
    flagset_p = 0;
    entry_p = 0;
    memset(uu, 0, sizeof(uu));
    v20 = *(v19 - 7);
    if (v20 - 1 > 1)
    {
      goto LABEL_52;
    }

    if ((*(v19 - 12) & 0xFFFFFFFFFFFDFE0FLL) != 0)
    {
      v29 = *(v19 - 12);
      v27 = "invalid ACE flags: 0x%016llx";
      v28 = 973;
      goto LABEL_72;
    }

    if ((*(v19 - 20) & 0xFFFFFFFFFFEFC001) != 0)
    {
      v29 = *(v19 - 20);
      v27 = "invalid ACE perms: 0x%016llx";
      v28 = 974;
      goto LABEL_72;
    }

    v21 = *(v19 - 1);
    if (v21 > 2)
    {
      if (v21 == 3)
      {
        memset(&v32, 0, sizeof(v32));
        if (mbr_string_to_sid(v19, &v32))
        {
          v23 = 0;
          goto LABEL_45;
        }

        v24 = mbr_sid_to_uuid(&v32, uu);
        goto LABEL_44;
      }

      if (v21 == 4)
      {
        if (uuid_parse(v19, uu))
        {
          goto LABEL_63;
        }

        goto LABEL_46;
      }

LABEL_71:
      v29 = *(v19 - 1);
      v27 = "invalid qualifier type: %d";
      v28 = 1007;
LABEL_72:
      v26 = 0;
      goto LABEL_57;
    }

    if (v21 == 1)
    {
      memset(&v32, 0, sizeof(v32));
      v31 = 0;
      v25 = getpwnam_r(v19, &v32, v18, v17, &v31);
      v23 = 0;
      if (!v25 && v31)
      {
        v24 = mbr_uid_to_uuid(v32.pw_uid, uu);
        goto LABEL_44;
      }
    }

    else
    {
      if (v21 != 2)
      {
        goto LABEL_71;
      }

      memset(&v32, 0, 32);
      v31 = 0;
      v22 = getgrnam_r(v19, &v32, v18, v17, &v31);
      v23 = 0;
      if (!v22 && v31)
      {
        v24 = mbr_gid_to_uuid(v32.pw_uid, uu);
LABEL_44:
        v23 = v24 == 0;
      }
    }

LABEL_45:
    if (!v23)
    {
LABEL_63:
      v29 = *(v19 - 1);
      v30 = v19;
      v27 = "could not resolve qualifier (type %d): %s";
      v28 = 1010;
      goto LABEL_72;
    }

LABEL_46:
    if (acl_create_entry(&acl_p, &entry_p))
    {
      v26 = *__error();
      v27 = "acl_create_entry";
      v28 = 1013;
      goto LABEL_57;
    }

    if (acl_set_tag_type(entry_p, v20))
    {
      v26 = *__error();
      v27 = "acl_set_tag_type";
      v28 = 1014;
      goto LABEL_57;
    }

    if (acl_set_permset_mask_np(entry_p, *(v19 - 20)))
    {
      v26 = *__error();
      v27 = "acl_set_permset_mask_np";
      v28 = 1015;
      goto LABEL_57;
    }

    if (acl_get_flagset_np(entry_p, &flagset_p))
    {
      v26 = *__error();
      v27 = "acl_get_flagset_np";
      v28 = 1016;
      goto LABEL_57;
    }

    if (acl_add_flag_np(flagset_p, *(v19 - 3)))
    {
      v26 = *__error();
      v27 = "acl_add_flag_np";
      v28 = 1017;
      goto LABEL_57;
    }

    if (acl_set_qualifier(entry_p, uu))
    {
      v26 = *__error();
      v27 = "acl_set_qualifier";
      v28 = 1018;
      goto LABEL_57;
    }

LABEL_52:
    v19 += 288;
    --a4;
  }

  while (a4);
  if (acl_set_file(a1, ACL_TYPE_EXTENDED, acl_p))
  {
    v26 = *__error();
    v29 = a1;
    v27 = "acl_set_file: %s";
    v28 = 1022;
    goto LABEL_57;
  }

  v5 = 0;
LABEL_58:
  if (acl_p)
  {
    acl_free(acl_p);
  }

  free(v18);
  return v5;
}

uint64_t ParallelArchiveGetPayloadSize(int *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *a1;
  if ((*a1 & 0x800) != 0)
  {
    v5 = *(a1 + 10);
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v5 = 0;
  if ((v4 & 0x200) != 0)
  {
LABEL_5:
    v5 += *(a1 + 8);
  }

LABEL_6:
  if ((v4 & 0x400) != 0)
  {
    v5 += *(a1 + 9);
    if (!a3)
    {
      goto LABEL_14;
    }
  }

  else if (!a3)
  {
    goto LABEL_14;
  }

  v6 = (a2 + 8);
  do
  {
    if (*(v6 - 1) == 2)
    {
      v5 += *v6;
    }

    v6 += 129;
    --a3;
  }

  while (a3);
LABEL_14:
  *a4 = v5;
  return 0;
}

size_t sub_5FDE0(uint8_t *a1, size_t a2, const uint8_t *a3, size_t a4)
{
  result = compression_encode_buffer(a1, a2, a3, a4, 0, COMPRESSION_LZ4);
  if (!result)
  {
    return -1;
  }

  return result;
}

size_t sub_5FE08(uint8_t *a1, size_t a2, const uint8_t *a3, size_t a4)
{
  result = compression_decode_buffer(a1, a2, a3, a4, 0, COMPRESSION_LZ4);
  if (!result)
  {
    return -1;
  }

  return result;
}

unsigned __int16 *sub_5FE30(uint64_t a1, uint64_t a2, __int16 a3, int a4, int a5, const char *a6, ...)
{
  va_start(va, a6);
  bzero(__str, 0x400uLL);
  v10 = ((a3 & 0x3FFF) << 10) | (a4 << 24);
  if (a5 >= 1)
  {
    v11 = strerror(a5);
    snprintf(__str, 0x400uLL, "%s: ", v11);
  }

  v12 = v10 & 0xFFFFFC00 | a5 & 0x3FF;
  v13 = strlen(__str);
  vsnprintf(&__str[v13], 1024 - v13, a6, va);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_6034C(__str, v12 | 0x80000000);
  }

  return ParallelCompressionUpdateError((v12 | 0x80000000), __str);
}

_DWORD *sub_5FF3C(uint64_t a1, uint64_t a2, __int16 a3, int a4, const char *a5, ...)
{
  va_start(va, a5);
  bzero(__s, 0x400uLL);
  v8 = (((a3 & 0x3FFF) << 10) | (a4 << 24) | 0x80000000);
  v9 = strlen(__s);
  vsnprintf(&__s[v9], 1024 - v9, a5, va);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v12 = v8;
    v13 = 2082;
    v14 = __s;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "[0x%08x](warning) %{public}s", buf, 0x12u);
  }

  return ParallelCompressionUpdateWarning(v8);
}

void sub_60050(uint64_t a1, uint64_t a2, __int16 a3, int a4, const char *a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  bzero(__s, 0x400uLL);
  v11 = strlen(__s);
  vsnprintf(&__s[v11], 1024 - v11, a5, va);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v13 = ((a3 & 0x3FFF) << 10) | (a4 << 24) | 0x80000000;
    v14 = 2082;
    v15 = __s;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "[0x%08x] %{public}s", buf, 0x12u);
  }
}

uint64_t sub_60158(const char *a1, const char *a2, int a3, uint64_t a4, const char *a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  bzero(__str, 0x400uLL);
  if (*a1)
  {
    v12 = a1;
    v13 = a1;
    do
    {
      if (v12 > a1 && *(v12 - 1) == 47)
      {
        v13 = v12;
      }
    }

    while (*++v12);
  }

  else
  {
    v13 = a1;
  }

  snprintf(__str, 0x400uLL, "%s:%s:%d: ", v13, a2, a3);
  v15 = strlen(__str);
  vsnprintf(&__str[v15], 1024 - v15, a5, va);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_603D8(__str);
  }

  return fputs(__str, __stderrp);
}

uint64_t sub_60284(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v11 = 0;
  *__s = 0u;
  v13 = 0u;
  time(&v11);
  ctime_r(&v11, __s);
  v9 = strlen(__s);
  if (v9)
  {
    __s[v9 - 1] = 0;
  }

  fprintf(__stderrp, "[%s] ", __s);
  return vfprintf(__stderrp, a1, va);
}

void sub_6034C(uint64_t a1, int a2)
{
  v2[0] = 67109378;
  v2[1] = a2;
  v3 = 2082;
  v4 = a1;
  _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "[0x%08x] %{public}s", v2, 0x12u);
}

void sub_603D8(uint64_t a1)
{
  v1 = 136446210;
  v2 = a1;
  _os_log_debug_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEBUG, "%{public}s", &v1, 0xCu);
}

unsigned __int16 *ParallelCompressionEnterThreadErrorContext_0()
{
  v0 = sub_61120();
  result = pthread_getspecific(v0);
  if (result)
  {
    ++result[2];
  }

  else
  {
    v2 = calloc(1uLL, 0x2000uLL);
    if (v2)
    {
      v2[2] = 1;
      *(v2 + 18) = 531890176;

      return sub_6050C(v2);
    }

    else
    {
      v3 = *__error();

      return sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Threads.c", "createThreadErrorContext", 76, 5, v3, "malloc");
    }
  }

  return result;
}

unsigned __int16 *sub_6050C(const void *a1)
{
  v2 = sub_61120();
  result = pthread_setspecific(v2, a1);
  if (result)
  {
    v4 = *__error();

    return sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Threads.c", "setThreadErrorContext", 65, 5, v4, "pthread_setspecific");
  }

  return result;
}

uint64_t ParallelCompressionLeaveThreadErrorContext_0(__CFError **a1, const __CFString **a2, int a3)
{
  v6 = sub_61120();
  v7 = pthread_getspecific(v6);
  if (v7)
  {
    v8 = v7;
    v9 = v7[2] - 1;
    v7[2] = v9;
    if (!v9)
    {
      v11 = v7[36];
      v10 = *v7;
      if (!v7[36] && (v10 & 0x80000000) == 0)
      {
        if (!v7[3] || !a2 && !a3)
        {
          goto LABEL_46;
        }

        bzero(userInfoKeys, 0x400uLL);
        v26 = 0;
        do
        {
          v27 = strlen(userInfoKeys);
          if (v27 + 20 > 0x3FF)
          {
            break;
          }

          if (v27)
          {
            snprintf(userInfoKeys + v27, 1024 - v27, ",0x%08x");
          }

          else
          {
            snprintf(userInfoKeys, 0x400uLL, "Warnings:0x%08x");
          }

          ++v26;
        }

        while (v26 < v8[3]);
        v28 = CFStringCreateWithCString(kCFAllocatorDefault, userInfoKeys, 0x600u);
        if (!v28)
        {
          goto LABEL_46;
        }

        v29 = v28;
        if (a2)
        {
          *a2 = v28;
          goto LABEL_46;
        }

        Length = CFStringGetLength(v28);
        v37 = calloc(1uLL, Length + 1);
        if (v37)
        {
          v38 = v37;
          CFStringGetCString(v29, v37, Length + 1, 0x600u);
          fprintf(__stderrp, "%s\n", v38);
          free(v38);
        }

        v35 = v29;
LABEL_45:
        CFRelease(v35);
        goto LABEL_46;
      }

      if (!a1 && !a3)
      {
        goto LABEL_46;
      }

      v12 = calloc(v11 + 32, 1uLL);
      if (!v12)
      {
        goto LABEL_46;
      }

      v13 = v12;
      v14 = v12;
      if ((v10 & 0x80000000) != 0)
      {
        snprintf(v12, v11 + 32, "Error 0x%08x\n", v10);
        v14 = &v13[strlen(v13)];
      }

      v15 = v8[36];
      if (v8[36])
      {
        v16 = 0;
        do
        {
          v17 = (v8 + v16 + 76);
          v18 = *v17;
          v19 = v18 + v16;
          if (v18 < 4 || v19 > v15)
          {
            break;
          }

          v21 = v18 - 3;
          memcpy(v14, v17 + 1, v21);
          v22 = &v14[v21];
          *v22 = 10;
          v14 = v22 + 1;
          v16 = v19;
          v15 = v8[36];
        }

        while (v15 > v19);
      }

      if (v14 > v13)
      {
        *(v14 - 1) = 0;
      }

      v23 = CFStringCreateWithCString(kCFAllocatorDefault, v13, 0x600u);
      if (!v23)
      {
        free(v13);
        goto LABEL_46;
      }

      v24 = v23;
      userInfoKeys[0] = kCFErrorLocalizedDescriptionKey;
      userInfoValues = v23;
      v25 = CFErrorCreateWithUserInfoKeysAndValues(kCFAllocatorDefault, @"com.apple.ParallelCompression", 1, userInfoKeys, &userInfoValues, 1);
      CFRelease(v24);
      free(v13);
      if (v25)
      {
        if (!a1)
        {
          v30 = CFErrorCopyDescription(v25);
          if (v30)
          {
            v31 = v30;
            v32 = CFStringGetLength(v30);
            v33 = calloc(1uLL, v32 + 1);
            if (v33)
            {
              v34 = v33;
              CFStringGetCString(v31, v33, v32 + 1, 0x600u);
              fprintf(__stderrp, "%s\n", v34);
              free(v34);
            }

            CFRelease(v31);
          }

          v35 = v25;
          goto LABEL_45;
        }

        *a1 = v25;
      }

LABEL_46:
      sub_6050C(0);
      free(v8);
      return v10;
    }
  }

  return 0;
}

unsigned __int16 *sub_60914(unsigned __int16 *result)
{
  if (result)
  {
    v1 = result;
    result = strlen(result);
    if (result - 8193 >= 0xFFFFFFFFFFFFE000)
    {
      v2 = result;
      v3 = sub_61120();
      result = pthread_getspecific(v3);
      if (result)
      {
        v4 = result;
        v5 = v2 + 3;
        v6 = result[36];
        if (v6 + (v2 + 3) <= result[37])
        {
          v7 = result + v6;
          *(v7 + 76) = v5;
          v8 = v7 + 78;
          result = memcpy((v7 + 78), v1, v2);
          *(v8 + v2) = 0;
          *(v4 + 72) += v5;
        }
      }
    }
  }

  return result;
}

_WORD *sub_609B8(_WORD *result)
{
  if ((result & 0x80000000) != 0)
  {
    v1 = result;
    v2 = sub_61120();
    result = pthread_getspecific(v2);
    if (result)
    {
      if ((*result & 0x80000000) == 0)
      {
        *result = v1;
        result[3] = 0;
      }
    }
  }

  return result;
}

_DWORD *sub_60A00(_DWORD *result)
{
  if ((result & 0x80000000) != 0)
  {
    v1 = result;
    v2 = sub_61120();
    result = pthread_getspecific(v2);
    if (result)
    {
      if ((*result & 0x80000000) == 0)
      {
        v3 = *(result + 3);
        if (v3 <= 0xF)
        {
          result[v3 + 2] = v1;
          *(result + 3) = v3 + 1;
        }
      }
    }
  }

  return result;
}

unsigned __int16 *sub_60A5C(void *a1)
{
  v2 = sub_61120();
  result = pthread_getspecific(v2);
  if (result)
  {
    v4 = result;
    bzero(a1, 0x2000uLL);
    v5 = v4[36];
    if (v5 <= 0x1FB4)
    {
      v6 = v5 + 76;
    }

    else
    {
      v6 = 0;
    }

    return memcpy(a1, v4, v6);
  }

  return result;
}

unsigned __int16 *sub_60AD0(__int128 *a1)
{
  v2 = sub_61120();
  result = pthread_getspecific(v2);
  if (result)
  {
    v4 = a1[1];
    v12 = *a1;
    v13 = v4;
    v5 = a1[3];
    v14 = a1[2];
    *v15 = v5;
    *&v15[12] = *(a1 + 60);
    if ((v12 & 0x80000000) == 0)
    {
      v6 = WORD3(v12);
      if ((*result & 0x80000000) != 0 && WORD3(v12) <= 0xFu)
      {
        v6 = WORD3(v12) + 1;
        *(&v12 + WORD3(v12) + 2) = *result;
      }

      v7 = result[3];
      if (result[3] && v6 <= 0xF)
      {
        v8 = 0;
        do
        {
          v9 = *&result[2 * v8 + 4];
          if (v8 >= v6 || *(&v12 + v8 + 2) != v9)
          {
            *(&v12 + v6++ + 2) = v9;
          }

          ++v8;
        }

        while (v8 < v7 && v6 < 0x10);
      }

      WORD3(v12) = v6;
    }

    v10 = *v15;
    *(result + 2) = v14;
    *(result + 3) = v10;
    *(result + 30) = *&v15[12];
    v11 = v13;
    *result = v12;
    *(result + 1) = v11;
    if (*&v15[24] <= 0x1FB4uLL)
    {
      return memcpy(result + 38, a1 + 76, *&v15[24]);
    }
  }

  return result;
}

uint64_t sub_60BD4(pthread_t *a1, uint64_t a2, uint64_t a3, size_t a4)
{
  *__relative_priority = 0;
  v8 = calloc(1uLL, 0x2000uLL);
  if (!v8)
  {
    v15 = __error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Threads.c", "createThread", 552, 5, *v15, "malloc");
    return -*__error();
  }

  v9 = v8;
  v10 = calloc(1uLL, 0x40uLL);
  if (!v10)
  {
    v16 = __error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Threads.c", "createThread", 555, 5, *v16, "malloc");
    v17 = __error();
    v13 = -*v17;
    if (!*v17)
    {
      return v13;
    }

    goto LABEL_9;
  }

  v11 = v10;
  v12 = pthread_attr_init(v10);
  if (v12)
  {
    v13 = v12;
    v14 = *__error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Threads.c", "createThread", 558, 5, v14, "pthread_attr_init");
  }

  else if (a4 && (v20 = pthread_attr_setstacksize(v11, a4), v20))
  {
    v13 = v20;
    v21 = *__error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Threads.c", "createThread", 564, 5, v21, "pthread_attr_setstacksize");
  }

  else
  {
    v22 = pthread_self();
    qos_class_np = pthread_get_qos_class_np(v22, &__relative_priority[1], __relative_priority);
    if (qos_class_np)
    {
      v13 = qos_class_np;
      v24 = *__error();
      sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Threads.c", "createThread", 570, 5, v24, "pthread_get_qos_class_np");
    }

    else
    {
      v25 = pthread_attr_set_qos_class_np(v11, __relative_priority[1], __relative_priority[0]);
      if (v25)
      {
        v13 = v25;
        v26 = *__error();
        sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Threads.c", "createThread", 572, 5, v26, "pthread_attr_set_qos_class_np");
      }

      else
      {
        v30[0] = _NSConcreteStackBlock;
        v30[1] = 0x40000000;
        v30[2] = sub_60EE4;
        v30[3] = &unk_1A9EA0;
        v30[4] = v9;
        v27 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, v30);
        v9[2] = v27;
        if (v27)
        {
          *v9 = a2;
          v9[1] = a3;
          *(v9 + 7) = 1;
          *(v9 + 24) = 530317312;
          v13 = pthread_create(a1, v11, sub_60EF0, v9);
          if (v13)
          {
            v28 = *__error();
            sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Threads.c", "createThread", 591, 5, v28, "pthread_create");
          }
        }

        else
        {
          v29 = __error();
          sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Threads.c", "createThread", 578, 5, *v29, "dispatch_block_create");
          v13 = -*__error();
        }
      }
    }
  }

  pthread_attr_destroy(v11);
  free(v11);
  if (v13)
  {
LABEL_9:
    v18 = v9[2];
    if (v18)
    {
      _Block_release(v18);
    }

    free(v9);
  }

  return v13;
}

uint64_t sub_60EF0(uint64_t a1)
{
  sub_6050C((a1 + 24));
  (*(*(a1 + 16) + 16))();
  sub_6050C(0);
  return a1;
}

uint64_t sub_60F34(_opaque_pthread_t *a1)
{
  v20 = 0;
  if (pthread_join(a1, &v20))
  {
    sub_611F0();
  }

  v1 = v20;
  if (*(v20 + 14) != 1)
  {
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Threads.c", "joinThread", 627, 5, 0, "expected ref_count=1 for terminating thread");
    v11 = 0xFFFFFFFFLL;
    goto LABEL_26;
  }

  v2 = sub_61120();
  v3 = pthread_getspecific(v2);
  if (!v3)
  {
    goto LABEL_25;
  }

  v4 = v3;
  v5 = *v3;
  if ((*v3 & 0x80000000) == 0)
  {
    v6 = v1[6];
    if (v6 < 0)
    {
      *v3 = v6;
      v5 = v6;
    }
  }

  v7 = *(v1 + 48);
  if (!*(v1 + 48))
  {
LABEL_14:
    if (v5)
    {
      v11 = 0;
      *(v4 + 3) = 0;
      goto LABEL_26;
    }

    if (*(v1 + 15))
    {
      v13 = 0;
      v14 = *(v4 + 3);
      LODWORD(v15) = 16 - v14;
      if (v14 <= 0x10)
      {
        v15 = v15;
      }

      else
      {
        v15 = 0;
      }

      v16 = &v4[v14 + 2];
      v17 = v14 + 1;
      while (v15 != v13)
      {
        v11 = 0;
        *(v16 + 4 * v13) = v1[v13 + 8];
        *(v4 + 3) = v17 + v13++;
        if (v13 >= *(v1 + 15))
        {
          goto LABEL_26;
        }
      }
    }

LABEL_25:
    v11 = 0;
    goto LABEL_26;
  }

  v8 = 0;
  v9 = 0;
  while (1)
  {
    v10 = (v1 + v9 + 100);
    v11 = *v10;
    if (!*v10)
    {
      break;
    }

    v8 += v11;
    if (v8 > v7)
    {
      goto LABEL_25;
    }

    v12 = *(v4 + 36);
    if (v12 + v11 <= *(v4 + 37))
    {
      memcpy(v4 + v12 + 76, v10, *v10);
      *(v4 + 36) += v11;
      v9 = v8;
      v7 = *(v1 + 48);
      if (v7 > v8)
      {
        continue;
      }
    }

    v5 = *v4;
    goto LABEL_14;
  }

LABEL_26:
  v18 = *(v1 + 2);
  if (v18)
  {
    _Block_release(v18);
  }

  free(v1);
  return v11;
}

unsigned __int16 *ParallelCompressionUpdateError(_WORD *a1, unsigned __int16 *a2)
{
  sub_609B8(a1);

  return sub_60914(a2);
}

uint64_t sub_61120()
{
  if (pthread_once(&stru_1C6408, sub_61188))
  {
    v0 = __error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Threads.c", "getErrorContextKey", 53, 5, *v0, "pthread_once");
  }

  return qword_1C6C88;
}

uint64_t sub_61188()
{
  result = pthread_key_create(&qword_1C6C88, 0);
  if (result)
  {
    v1 = *__error();

    return sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Threads.c", "createErrorContextKey", 42, 5, v1, "pthread_key_create");
  }

  return result;
}

void sub_611F0()
{
  v0 = __error();
  sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Threads.c", "joinThread", 623, 5, *v0, "pthread_join");
  __break(1u);
}

size_t sub_6122C(uint8_t *a1, size_t a2, const uint8_t *a3, size_t a4)
{
  result = compression_encode_buffer(a1, a2, a3, a4, 0, COMPRESSION_LZMA);
  if (!result)
  {
    return -1;
  }

  return result;
}

size_t sub_61254(uint8_t *a1, size_t a2, const uint8_t *a3, size_t a4)
{
  result = compression_decode_buffer(a1, a2, a3, a4, 0, COMPRESSION_LZMA);
  if (!result)
  {
    return -1;
  }

  return result;
}

size_t sub_6127C(uint64_t a1, unint64_t a2, const uint8_t *a3, size_t a4)
{
  v4 = a2 >= 2;
  v5 = a2 - 2;
  if (!v4)
  {
    return -1;
  }

  *a1 = 24184;
  v7 = compression_encode_buffer((a1 + 2), v5, a3, a4, 0, COMPRESSION_ZLIB);
  if (v7)
  {
    return v7 + 2;
  }

  else
  {
    return -1;
  }
}

size_t sub_612C4(uint8_t *a1, size_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >= 2;
  v5 = a4 - 2;
  if (!v4)
  {
    return -1;
  }

  result = compression_decode_buffer(a1, a2, (a3 + 2), v5, 0, COMPRESSION_ZLIB);
  if (!result)
  {
    return -1;
  }

  return result;
}

uint64_t ParallelArchiveRead(uint64_t a1)
{
  ParallelCompressionEnterThreadErrorContext_0();
  bzero(v38, 0x928uLL);
  v39 = 0x20000;
  v2 = malloc(0x20000uLL);
  v3 = *(a1 + 80);
  v40 = v2;
  v46 = v3;
  v4 = *(a1 + 48);
  v43 = *(a1 + 32);
  v44 = v4;
  v45 = *(a1 + 64);
  v5 = sub_66964(*(a1 + 8), *(a1 + 16), *(a1 + 24), 12);
  v6 = v5;
  if (!v5)
  {
    goto LABEL_58;
  }

  v7 = sub_66A4C(v5);
  v8 = sub_66A54(v6);
  if (v2)
  {
    if (v8 < 0xC)
    {
      if (v8 < 6)
      {
        if (v8 < 4)
        {
          if (!v8)
          {
LABEL_54:
            v21 = 1;
            goto LABEL_55;
          }

          goto LABEL_43;
        }

LABEL_32:
        if (*v7 == 826360153 || *v7 == 825246017)
        {
LABEL_34:
          if (*a1 >= 2)
          {
            fwrite("Raw cpio/yaa archive payload\n", 0x1DuLL, 1uLL, __stderrp);
          }

          v18 = sub_75AC4(": %s %s file with no ota-uuid\n", v31, v33);
          if (!v18)
          {
            goto LABEL_58;
          }

          v19 = v18;
          v20 = sub_76264(v18, 0xFFFFFFFFFFFFFFFFLL, sub_66A5C, v6, sub_6185C, v38);
          sub_75BD4(v19);
          if ((v20 & 0x8000000000000000) == 0)
          {
            if (*a1 >= 1)
            {
              fprintf(__stderrp, "%12lld raw archive\n");
            }

            goto LABEL_54;
          }

          sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Read.c", "ParallelArchiveRead", 550, 7, 0, "MemBufferTransmit");
          goto LABEL_41;
        }

LABEL_43:
        v22 = sub_72838(sub_66A5C, sub_66B40, v6, ": %s %s file with no ota-uuid\n", v31, v33);
        if (!v22)
        {
          v27 = "Could not identify payload format";
          v28 = 580;
LABEL_57:
          sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Read.c", "ParallelArchiveRead", v28, 7, 0, v27, v32);
          goto LABEL_58;
        }

        v23 = v22;
        if (*a1 >= 2)
        {
          fwrite("Compressed archive payload (gzip, bzip2, xz)\n", 0x2DuLL, 1uLL, __stderrp);
        }

        v24 = sub_75AC4(": %s %s file with no ota-uuid\n", v32, v34);
        if (!v24)
        {
          goto LABEL_58;
        }

        v25 = v24;
        v26 = sub_76264(v24, 0xFFFFFFFFFFFFFFFFLL, sub_72EE8, v23, sub_6185C, v38);
        sub_75BD4(v25);
        if ((v26 & 0x8000000000000000) != 0)
        {
          sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Read.c", "ParallelArchiveRead", 570, 7, 0, "MemBufferTransmit");
          v21 = 0;
        }

        else
        {
          if (*a1 >= 1)
          {
            fprintf(__stderrp, "%12lld raw archive size\n", v26);
          }

          v21 = 1;
        }

        sub_72DBC(v23);
LABEL_55:
        if (!v47)
        {
          goto LABEL_59;
        }

        v32 = v47;
        v27 = "Errors in archive: %u";
        v28 = 585;
        goto LABEL_57;
      }
    }

    else if (*v7 == 25200 && *(v7 + 2) == 122)
    {
      if (*a1 >= 1)
      {
        v10 = 0;
        v11 = *(v7 + 4);
        while (sub_758D4(v10) != *(v7 + 3))
        {
          if (++v10 == 7)
          {
            v10 = -1;
            break;
          }
        }

        v12 = __stderrp;
        v13 = sub_7590C(v10);
        fprintf(v12, "Input archive compression: %s %llum\n", v13, bswap64(v11) >> 20);
      }

      v37[1] = 0;
      v37[4] = 0;
      memset(v36, 0, sizeof(v36));
      v35[0] = 0;
      v35[1] = 0;
      v37[0] = sub_66A5C;
      v37[2] = v6;
      v37[3] = sub_6185C;
      v37[5] = v38;
      DWORD1(v36[0]) = 1;
      v14 = *(a1 + 4);
      if (!v14)
      {
        v14 = sub_62BA4();
      }

      DWORD2(v36[0]) = v14;
      if (!PCompressFilter(v36, v37, v35))
      {
        if (*a1 >= 1)
        {
          fprintf(__stderrp, "%12llu compressed archive size\n%12llu raw archive size\n%12.3f compression ratio\n");
        }

        goto LABEL_54;
      }

      sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Read.c", "ParallelArchiveRead", 530, 7, 0, "PCompressFilter");
LABEL_41:
      v21 = 0;
      goto LABEL_55;
    }

    if (*v7 == 925906736 && *(v7 + 4) == 12592)
    {
      goto LABEL_34;
    }

    if (*v7 == 925906736 && *(v7 + 4) == 14128)
    {
      goto LABEL_34;
    }

    goto LABEL_32;
  }

  v15 = *__error();
  sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Read.c", "ParallelArchiveRead", 500, 7, v15, "malloc");
LABEL_58:
  v21 = 0;
LABEL_59:
  j__free(v6);
  free(v40);
  free(v41);
  free(v42);
  LODWORD(result) = ParallelCompressionLeaveThreadErrorContext_0(0, 0, 0);
  if (v21)
  {
    v30 = 0;
  }

  else
  {
    v30 = -1;
  }

  if (result >= 0)
  {
    return v30;
  }

  else
  {
    return result;
  }
}

size_t sub_6185C(uint64_t a1, char *__src, size_t a3)
{
  v5 = (a1 + 2256);
  v6 = (a1 + 2232);
  v7 = a3;
LABEL_2:
  while (2)
  {
    while (2)
    {
      v142 = v7;
      while (1)
      {
        v8 = *a1;
        if (*a1 <= 0)
        {
          break;
        }

        if (v8 != 1)
        {
          if (v8 != 2)
          {
            if (v8 != 3)
            {
LABEL_205:
              v136 = "readProcessData";
              v137 = "invalid state";
              v138 = 436;
              goto LABEL_224;
            }

            v134 = *(a1 + 2320);
            if (v134)
            {
              v134(*(a1 + 2328), __src, v142);
            }

            return a3;
          }

          v122 = *(a1 + 2272) + 16 * *(a1 + 2264);
          v123 = *(v122 + 8);
          if (v142 >= v123)
          {
            v124 = *(v122 + 8);
          }

          else
          {
            v124 = v142;
          }

          if (*v122)
          {
            v125 = *(a1 + 2296);
            if (v125)
            {
              goto LABEL_172;
            }
          }

          else
          {
            v125 = *(a1 + 2304);
            if (v125)
            {
LABEL_172:
              v125(*(a1 + 2328), __src, v124);
              v123 = *(v122 + 8);
            }
          }

          v142 -= v124;
          __src += v124;
          v126 = v123 - v124;
          *(v122 + 8) = v126;
          if (!v126)
          {
            ++*(a1 + 2264);
            *a1 = 1;
            v7 = v142;
            goto LABEL_2;
          }

          v22 = 0;
          goto LABEL_186;
        }

        v9 = *(a1 + 2264);
        if (v9 == *(a1 + 2256))
        {
          v127 = *(a1 + 2312);
          if (v127)
          {
            v127(*(a1 + 2328));
          }

          v22 = 0;
          *a1 = 0;
          goto LABEL_186;
        }

        v10 = *(a1 + 2272) + 16 * v9;
        if (*v10)
        {
          v11 = *(a1 + 2288);
          if (v11)
          {
            v11(*(a1 + 2328), v10, *(v10 + 8));
          }
        }

        v12 = 2;
LABEL_165:
        *a1 = v12;
      }

      if (v8)
      {
        goto LABEL_205;
      }

      *(a1 + 2232) = 0;
      *v5 = 0;
      v5[1] = 0;
      v13 = *(a1 + 16);
      if (v13 <= 7)
      {
        v128 = 8;
        goto LABEL_185;
      }

      v14 = 0;
      v15 = 0;
      v16 = *(a1 + 24);
      do
      {
        v17 = v15;
        v15 = *(v16 + v14++) & 7 | (8 * v15);
      }

      while (v14 != 8);
      if (*v16 == 16)
      {
        if (v13 > 0x1D)
        {
          v18 = bswap32(*(v16 + 22)) >> 16;
          if (v18 >= 0x400)
          {
            v136 = "readProcessData";
            v137 = "invalid nameSize";
            v138 = 165;
            goto LABEL_224;
          }

          v19 = (v18 + 30);
          if (*(v16 + 1) - 3 <= 1)
          {
            v20 = bswap64(*(v16 + 2));
            if (v20 >= 0x400)
            {
              v136 = "readProcessData";
              v137 = "invalid linkSize";
              v138 = 169;
              goto LABEL_224;
            }

            v19 += v20;
          }

          v21 = v19 > v13;
          v22 = v19 - v13;
          if (v21)
          {
            goto LABEL_186;
          }

          sub_743F4((a1 + 32), v16);
          if ((*(a1 + 33) & 2) == 0)
          {
            goto LABEL_158;
          }

          v23 = *(a1 + 96);
          v24 = *(a1 + 2256);
          v25 = *(a1 + 2248);
          if (v24 >= v25)
          {
            *(a1 + 2248) = v25 + 16;
            v26 = reallocf(*(a1 + 2272), 16 * (v25 + 16));
            *(a1 + 2272) = v26;
            if (!v26)
            {
              goto LABEL_206;
            }

            v24 = *v5;
          }

          else
          {
            v26 = *(a1 + 2272);
          }

          v86 = &v26[16 * v24];
          *v86 = 0;
          *(v86 + 1) = 0;
          __strlcpy_chk();
          *(v86 + 1) = v23;
          goto LABEL_134;
        }

        v128 = 30;
LABEL_185:
        v22 = v128 - v13;
        goto LABEL_186;
      }

      v27 = ((8 * v17) >> 6) & 0x3FFFF;
      if (v27 != 29121)
      {
        if (v27 == 29127)
        {
          if (v13 <= 0x4B)
          {
            v128 = 76;
            goto LABEL_185;
          }

          v28 = 0;
          v29 = 0;
          do
          {
            v30 = *(v16 + 57 + v28++) & 7 | (8 * v29);
            v29 = v30;
          }

          while (v28 != 8);
          v31 = 0;
          v32 = 0;
          do
          {
            v33 = *(v16 + 64 + v31++) & 7 | (8 * v32);
            v32 = v33;
          }

          while (v31 != 4);
          v34 = __src;
          v35 = 0;
          v36 = 0;
          do
          {
            v37 = *(v16 + 68 + v35++) & 7 | (8 * v36);
            v36 = v37;
          }

          while (v35 != 8);
          v38 = 0;
          v39 = 0;
          v40 = v33 << 24;
          do
          {
            v41 = *(v16 + 16 + v38++) & 7 | (8 * v39);
            v39 = v41;
          }

          while (v38 != 8);
          v42 = v30 & 0x3FFFF;
          v43 = sub_73E1C(v41);
          if (v42 >= 0x400)
          {
            v136 = "readProcessData";
            v137 = "invalid nameSize";
            v138 = 191;
            goto LABEL_224;
          }

          v44 = v37 + (v40 & 0x1FF000000);
          v45 = v42 + 76;
          __src = v34;
          if ((v43 - 3) <= 1)
          {
            if (v44 >= 0x400)
            {
              v136 = "readProcessData";
              v137 = "invalid linkSize";
              v138 = 195;
              goto LABEL_224;
            }

            v45 += v44;
          }

          v46 = *(a1 + 16);
          v22 = v45 - v46;
          if (v45 > v46)
          {
            goto LABEL_186;
          }

          v47 = *(a1 + 24);
          if (v43)
          {
            v48 = 0;
          }

          else
          {
            v48 = v44 == 0;
          }

          if (v48 && v42 == 11 && *(v47 + 76) == 0x2152454C49415254 && *(v47 + 79) == 0x21212152454C49)
          {
            v132 = *(a1 + 2320);
            if (v132)
            {
              v133 = *(a1 + 2328);
LABEL_199:
              v132(v133);
            }

            goto LABEL_200;
          }

          sub_745B0((a1 + 32), v47);
          if ((*(a1 + 33) & 2) == 0)
          {
            goto LABEL_158;
          }

          v51 = *(a1 + 96);
          v52 = *(a1 + 2256);
          v53 = *(a1 + 2248);
          if (v52 >= v53)
          {
            *(a1 + 2248) = v53 + 16;
            v54 = reallocf(*(a1 + 2272), 16 * (v53 + 16));
            *(a1 + 2272) = v54;
            if (!v54)
            {
              goto LABEL_206;
            }

            v52 = *v5;
          }

          else
          {
            v54 = *(a1 + 2272);
          }

          v90 = &v54[16 * v52];
          *v90 = 0;
          *(v90 + 1) = 0;
LABEL_133:
          __strlcpy_chk();
          *(v90 + 1) = v51;
LABEL_134:
          ++*v5;
LABEL_158:
          v119 = *(a1 + 32);
          if ((v119 & 1) == 0)
          {
            v136 = "readProcessData";
            v137 = "Invalid entry, no TYP field";
            v138 = 309;
            goto LABEL_224;
          }

          if ((v119 & 0x8000) != 0 && *(a1 + 36) != 77)
          {
            v120 = strlen((a1 + 176));
            if (!sub_63334((a1 + 176), v120))
            {
              v136 = "readProcessData";
              v137 = "Invalid entry path";
              v138 = 315;
              goto LABEL_224;
            }
          }

          v121 = *(a1 + 2280);
          if (v121)
          {
            v121(*(a1 + 2328), a1 + 32, *(a1 + 2240), *(a1 + 2232), *(a1 + 24), *(a1 + 16));
          }

          *(a1 + 16) = 0;
          v12 = 1;
          goto LABEL_165;
        }

        if (*v16 != 826360153 && *v16 != 825246017)
        {
          v140 = 0;
          ++*(a1 + 2336);
          do
          {
            if (*(*(a1 + 24) + v140) > 31)
            {
              fputc(*(*(a1 + 24) + v140), __stderrp);
            }

            else
            {
              fprintf(__stderrp, "<%02x>", *(*(a1 + 24) + v140));
            }

            ++v140;
          }

          while (v140 < *(a1 + 16));
          fputc(10, __stderrp);
          v136 = "readProcessData";
          v137 = "Invalid header";
          v138 = 305;
          goto LABEL_224;
        }

        v78 = *(v16 + 4);
        v22 = v78 - v13;
        if (v78 > v13)
        {
          goto LABEL_186;
        }

        v143 = 0;
        v144 = 0;
        if ((sub_5E8FC(v16, v13, &v144, &v143) & 0x8000000000000000) != 0)
        {
          v136 = "readProcessData";
          v137 = "invalid YAA header";
          v138 = 268;
          goto LABEL_224;
        }

        v79 = *(a1 + 2224);
        v80 = v144;
        v81 = *(a1 + 2240);
        if (v79 < v144)
        {
          *(a1 + 2224) = v144;
          v82 = reallocf(v81, 1032 * v80);
          *(a1 + 2240) = v82;
          if (!v82)
          {
            v139 = *__error();
            v136 = "readProcessData";
            v137 = "malloc";
            v138 = 275;
            goto LABEL_225;
          }

          v81 = v82;
          v79 = *(a1 + 2224);
        }

        if (sub_5E04C((a1 + 32), *(a1 + 24), *(a1 + 16), v81, v79, v6) != v78)
        {
          v136 = "readProcessData";
          v137 = "invalid YAA header";
          v138 = 280;
          goto LABEL_224;
        }

        *v5 = 0;
        v5[1] = 0;
        v83 = *(a1 + 32);
        if ((v83 & 0x200) != 0)
        {
          v87 = *(a1 + 96);
          if (*(a1 + 2248))
          {
            v88 = 0;
            v89 = *(a1 + 2272);
          }

          else
          {
            *(a1 + 2248) = 16;
            v89 = reallocf(*(a1 + 2272), 0x100uLL);
            *(a1 + 2272) = v89;
            if (!v89)
            {
              goto LABEL_206;
            }

            v88 = *v5;
          }

          v102 = &v89[16 * v88];
          *v102 = 0;
          *(v102 + 1) = 0;
          __strlcpy_chk();
          *(v102 + 1) = v87;
          v84 = *v5 + 1;
          *v5 = v84;
          v83 = *(a1 + 32);
          if ((v83 & 0x400) == 0)
          {
LABEL_108:
            if ((v83 & 0x800) == 0)
            {
LABEL_109:
              v85 = __src;
LABEL_148:
              v111 = *v6;
              if (*v6)
              {
                v112 = 0;
                v113 = 0;
                do
                {
                  v114 = *(a1 + 2240) + v112;
                  if (*(v114 + 4) == 2)
                  {
                    v115 = *(v114 + 8);
                    v116 = *(a1 + 2248);
                    if (v84 >= v116)
                    {
                      *(a1 + 2248) = v116 + 16;
                      v117 = reallocf(*(a1 + 2272), 16 * (v116 + 16));
                      *(a1 + 2272) = v117;
                      if (!v117)
                      {
                        goto LABEL_206;
                      }

                      v84 = *v5;
                    }

                    else
                    {
                      v117 = *(a1 + 2272);
                    }

                    v118 = &v117[16 * v84];
                    *v118 = 0;
                    *(v118 + 1) = 0;
                    __strlcpy_chk();
                    *(v118 + 1) = v115;
                    v84 = *v5 + 1;
                    *v5 = v84;
                    v111 = *v6;
                  }

                  ++v113;
                  v112 += 1032;
                }

                while (v113 < v111);
              }

              __src = v85;
              goto LABEL_158;
            }

LABEL_143:
            v107 = *(a1 + 112);
            v108 = *(a1 + 2248);
            if (v84 >= v108)
            {
              *(a1 + 2248) = v108 + 16;
              v109 = reallocf(*(a1 + 2272), 16 * (v108 + 16));
              *(a1 + 2272) = v109;
              if (!v109)
              {
LABEL_206:
                v139 = *__error();
                v136 = "addBlob";
                v137 = "malloc";
                v138 = 111;
                goto LABEL_225;
              }

              v84 = *v5;
            }

            else
            {
              v109 = *(a1 + 2272);
            }

            v85 = __src;
            v110 = &v109[16 * v84];
            *v110 = 0;
            *(v110 + 1) = 0;
            __strlcpy_chk();
            *(v110 + 1) = v107;
            v84 = *v5 + 1;
            *v5 = v84;
            goto LABEL_148;
          }
        }

        else
        {
          v84 = 0;
          if ((v83 & 0x400) == 0)
          {
            goto LABEL_108;
          }
        }

        v103 = *(a1 + 104);
        v104 = *(a1 + 2248);
        if (v84 >= v104)
        {
          *(a1 + 2248) = v104 + 16;
          v105 = reallocf(*(a1 + 2272), 16 * (v104 + 16));
          *(a1 + 2272) = v105;
          if (!v105)
          {
            goto LABEL_206;
          }

          v84 = *v5;
        }

        else
        {
          v105 = *(a1 + 2272);
        }

        v106 = &v105[16 * v84];
        *v106 = 0;
        *(v106 + 1) = 0;
        __strlcpy_chk();
        *(v106 + 1) = v103;
        v84 = *v5 + 1;
        *v5 = v84;
        if ((*(a1 + 32) & 0x800) == 0)
        {
          goto LABEL_109;
        }

        goto LABEL_143;
      }

      if (v13 <= 0x6D)
      {
        v128 = 110;
        goto LABEL_185;
      }

      v55 = 0;
      v56 = 0;
      do
      {
        v57 = *(v16 + 94 + v55);
        v56 *= 16;
        v58 = v57 - 48;
        if ((v57 - 48) <= 0x36)
        {
          if (((1 << v58) & 0x3FF) != 0)
          {
            v56 = v56 + v57 - 48;
          }

          else if (((1 << v58) & 0x7E0000) != 0)
          {
            v56 = v56 + v57 - 55;
          }

          else if (((1 << v58) & 0x7E000000000000) != 0)
          {
            v56 = v56 + v57 - 87;
          }
        }

        ++v55;
      }

      while (v55 != 8);
      v59 = __src;
      v60 = 0;
      v61 = 0;
      do
      {
        v62 = *(v16 + 54 + v60);
        v61 *= 16;
        v63 = v62 - 48;
        if ((v62 - 48) <= 0x36)
        {
          if (((1 << v63) & 0x3FF) != 0)
          {
            v61 = v61 + v62 - 48;
          }

          else if (((1 << v63) & 0x7E0000) != 0)
          {
            v61 = v61 + v62 - 55;
          }

          else if (((1 << v63) & 0x7E000000000000) != 0)
          {
            v61 = v61 + v62 - 87;
          }
        }

        ++v60;
      }

      while (v60 != 8);
      v64 = 0;
      v65 = 0;
      do
      {
        v66 = *(v16 + 14 + v64);
        v65 *= 16;
        v67 = v66 - 48;
        if ((v66 - 48) <= 0x36)
        {
          if (((1 << v67) & 0x3FF) != 0)
          {
            v65 = v65 + v66 - 48;
          }

          else if (((1 << v67) & 0x7E0000) != 0)
          {
            v65 = v65 + v66 - 55;
          }

          else if (((1 << v67) & 0x7E000000000000) != 0)
          {
            v65 = v65 + v66 - 87;
          }
        }

        ++v64;
      }

      while (v64 != 8);
      v68 = sub_73E1C(v65);
      if (v56 >= 0x400)
      {
        v136 = "readProcessData";
        v137 = "invalid nameSize";
        v138 = 225;
        goto LABEL_224;
      }

      v69 = v56 + 110;
      v7 = v142;
      if ((v68 - 3) <= 1)
      {
        if (v61 >= 0x400)
        {
          v136 = "readProcessData";
          v137 = "invalid linkSize";
          v138 = 229;
          goto LABEL_224;
        }

        v69 += v61;
      }

      v70 = *(a1 + 16);
      v22 = v69 - v70;
      if (v69 > v70)
      {
        __src = v59;
        if (v142)
        {
          goto LABEL_187;
        }

        return a3;
      }

      v71 = *(a1 + 24);
      if (v68 || v61 || v56 != 11 || (*(v71 + 110) == 0x2152454C49415254 ? (v72 = *(v71 + 113) == 0x21212152454C49) : (v72 = 0), !v72))
      {
        sub_74880((a1 + 32), v71);
        v73 = (v69 + 3) & 0xFFFFFFFFFFFFFFFCLL;
        v74 = v73 - v69;
        __src = v59;
        if (v73 != v69)
        {
          v75 = *(a1 + 2256);
          v76 = *(a1 + 2248);
          if (v75 >= v76)
          {
            *(a1 + 2248) = v76 + 16;
            v77 = reallocf(*(a1 + 2272), 16 * (v76 + 16));
            *(a1 + 2272) = v77;
            if (!v77)
            {
              goto LABEL_206;
            }

            v75 = *v5;
          }

          else
          {
            v77 = *(a1 + 2272);
          }

          v91 = &v77[16 * v75];
          *v91 = 0;
          *(v91 + 1) = 0;
          __strlcpy_chk();
          *(v91 + 1) = v74;
          ++*v5;
        }

        if ((*(a1 + 33) & 2) != 0)
        {
          v92 = *(a1 + 96);
          v93 = *(a1 + 2256);
          v94 = *(a1 + 2248);
          if (v93 >= v94)
          {
            *(a1 + 2248) = v94 + 16;
            v95 = reallocf(*(a1 + 2272), 16 * (v94 + 16));
            *(a1 + 2272) = v95;
            if (!v95)
            {
              goto LABEL_206;
            }

            v93 = *v5;
          }

          else
          {
            v95 = *(a1 + 2272);
          }

          v96 = &v95[16 * v93];
          *v96 = 0;
          *(v96 + 1) = 0;
          __strlcpy_chk();
          *(v96 + 1) = v92;
          ++*v5;
        }

        v97 = *(a1 + 96);
        v98 = (v97 + 3) & 0xFFFFFFFFFFFFFFFCLL;
        v51 = v98 - v97;
        if (v98 == v97)
        {
          goto LABEL_158;
        }

        v99 = *(a1 + 2256);
        v100 = *(a1 + 2248);
        if (v99 >= v100)
        {
          *(a1 + 2248) = v100 + 16;
          v101 = reallocf(*(a1 + 2272), 16 * (v100 + 16));
          *(a1 + 2272) = v101;
          if (!v101)
          {
            goto LABEL_206;
          }

          v99 = *v5;
        }

        else
        {
          v101 = *(a1 + 2272);
        }

        v90 = &v101[16 * v99];
        *v90 = 0;
        *(v90 + 1) = 0;
        goto LABEL_133;
      }

      v132 = *(a1 + 2320);
      __src = v59;
      if (v132)
      {
        v133 = *(a1 + 2328);
        goto LABEL_199;
      }

LABEL_200:
      v22 = 0;
      *(a1 + 16) = 0;
      *a1 = 3;
LABEL_186:
      v7 = v142;
      if (!v142)
      {
        return a3;
      }

LABEL_187:
      if (!v22)
      {
        continue;
      }

      break;
    }

    if (v22 >= v7)
    {
      v129 = v7;
    }

    else
    {
      v129 = v22;
    }

    v130 = v7;
    v131 = *(a1 + 16);
    if (v131 + v129 <= *(a1 + 8))
    {
      memcpy((*(a1 + 24) + v131), __src, v129);
      *(a1 + 16) += v129;
      __src += v129;
      v7 = v130 - v129;
      continue;
    }

    break;
  }

  v136 = "readProcessData";
  v137 = "internal header buffer is too small";
  v138 = 452;
LABEL_224:
  v139 = 0;
LABEL_225:
  sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Read.c", v136, v138, 7, v139, v137);
  return -1;
}

uint64_t ParallelArchiveReadMetadata(uint64_t a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  ParallelCompressionEnterThreadErrorContext_0();
  v2 = sub_75AC4(&loc_10000);
  if (!v2)
  {
    v10 = 0;
    v4 = 0;
    goto LABEL_50;
  }

  v3 = sub_66964(*(a1 + 8), *(a1 + 16), *(a1 + 24), 8);
  v4 = v3;
  if (!v3)
  {
    goto LABEL_47;
  }

  v5 = sub_66A4C(v3);
  v6 = sub_66A54(v4);
  if (!v6)
  {
    v10 = 0;
    goto LABEL_19;
  }

  if (v6 < 6)
  {
    if (v6 < 4)
    {
LABEL_23:
      v12 = sub_72838(sub_66A5C, sub_66B40, v4, &loc_10000);
      if (v12)
      {
        v13 = v12;
        v14 = sub_72EE8;
        v10 = v12;
        goto LABEL_29;
      }

      sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Read.c", "ParallelArchiveReadMetadata", 642, 7, 0, "Could not identify payload format");
LABEL_47:
      v10 = 0;
      goto LABEL_50;
    }
  }

  else
  {
    if (*v5 == 925906736 && *(v5 + 4) == 12592)
    {
      goto LABEL_25;
    }

    if (*v5 == 925906736 && *(v5 + 4) == 14128)
    {
      goto LABEL_25;
    }
  }

  if (*v5 != 826360153 && *v5 != 825246017)
  {
    goto LABEL_23;
  }

LABEL_25:
  if (*a1 < 2)
  {
    v14 = sub_66A5C;
    v10 = 0;
  }

  else
  {
    fwrite("Raw cpio/yaa archive payload\n", 0x1DuLL, 1uLL, __stderrp);
    v10 = 0;
    v14 = sub_66A5C;
  }

  v13 = v4;
LABEL_29:
  if ((sub_75FD4(v2, 0x10000uLL, v14, v13) & 0x8000000000000000) != 0)
  {
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Read.c", "ParallelArchiveReadMetadata", 649, 7, 0, "Reading entry");
  }

  else
  {
    v15 = sub_75C80(v2);
    v16 = sub_75C6C(v2);
    v26 = 0;
    v27 = 0;
    v17 = sub_5E8FC(v15, v16, &v27, &v26);
    if ((v17 & 0x8000000000000000) != 0)
    {
      sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Read.c", "ParallelArchiveReadMetadata", 660, 7, 0, "Parsing YAA header");
    }

    else
    {
      v18 = v17;
      v19 = v26;
      *(a1 + 2240) = v27;
      *(a1 + 2264) = v19;
      if ((sub_5E04C((a1 + 32), v15, v17, *(a1 + 2224), *(a1 + 2232), (a1 + 2240)) & 0x8000000000000000) == 0)
      {
        sub_75CDC(v2, v18);
        if (v26 >= *(a1 + 2256))
        {
          v20 = *(a1 + 2256);
        }

        else
        {
          v20 = v26;
        }

        if (v20)
        {
          v21 = *(a1 + 2248);
          while (1)
          {
            v22 = sub_75C6C(v2);
            if (v20 > v22 && (sub_75FD4(v2, v20 - v22, v14, v13) & 0x8000000000000000) != 0)
            {
              break;
            }

            v23 = sub_75C6C(v2);
            if (v23 >= v20)
            {
              v24 = v20;
            }

            else
            {
              v24 = v23;
            }

            v25 = sub_75C80(v2);
            memcpy(v21, v25, v24);
            sub_75CDC(v2, v24);
            v21 += v24;
            v20 -= v24;
            if (!v20)
            {
              goto LABEL_19;
            }
          }

          sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Read.c", "ParallelArchiveReadMetadata", 678, 7, 0, "Reading entry");
          goto LABEL_50;
        }

LABEL_19:
        v11 = 0;
        goto LABEL_51;
      }

      sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Read.c", "ParallelArchiveReadMetadata", 665, 7, 0, "Decoding YAA header");
    }
  }

LABEL_50:
  v11 = -1;
LABEL_51:
  sub_72DBC(v10);
  j__free(v4);
  sub_75BD4(v2);
  LODWORD(result) = ParallelCompressionLeaveThreadErrorContext_0(0, 0, 0);
  if (result >= 0)
  {
    return v11;
  }

  else
  {
    return result;
  }
}

void *sub_629F8(void *a1, size_t __size)
{
  if (__size >= 0x1000)
  {
    v4 = malloc(__size);
    if (v4)
    {
      v5 = v4;
      memcpy(v4, a1, __size);
      free(a1);
      return v5;
    }
  }

  return a1;
}

uint64_t sub_62A58()
{
  v0 = sysconf(200);
  v1 = sysconf(29);
  if (v1 <= 0 || v0 <= 0)
  {
    return 0;
  }

  else
  {
    return v1 * v0;
  }
}

uint64_t sub_62A98(const char *a1)
{
  __endptr = 0;
  if ((*a1 - 48) > 9)
  {
    return -1;
  }

  result = strtoll(a1, &__endptr, 10);
  v3 = *__endptr;
  if (v3 > 0x66)
  {
    switch(v3)
    {
      case 'g':
        result <<= 30;
        return result;
      case 'm':
        result <<= 20;
        return result;
      case 'k':
        result <<= 10;
        return result;
    }

    goto LABEL_9;
  }

  if (*__endptr && v3 != 98)
  {
LABEL_9:
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "parseSize", 89, 3, 0, "invalid size: %s", a1);
    return -1;
  }

  return result;
}

double sub_62B5C()
{
  v1.tv_sec = 0;
  *&v1.tv_usec = 0;
  gettimeofday(&v1, 0);
  return v1.tv_sec + v1.tv_usec * 0.000001;
}

uint64_t sub_62BA4()
{
  v3 = 0;
  v2 = 4;
  if (!sysctlbyname("hw.physicalcpu", &v3, &v2, 0, 0))
  {
    return v3;
  }

  v0 = __error();
  sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "getDefaultNThreads", 107, 3, *v0, "sysctlbyname");
  return 1;
}

uint64_t sub_62C24(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = (result + 1);
  do
  {
    v4 = *(a2 + v2);
    *(v3 - 1) = a0123456789abcd_1[v4 >> 4];
    *v3 = a0123456789abcd_1[v4 & 0xF];
    v3 += 2;
    ++v2;
  }

  while (v2 != 20);
  *(result + 40) = 0;
  return result;
}

uint64_t sub_62C64(uint64_t result, unsigned int a2, unsigned __int8 *a3)
{
  if (a2)
  {
    v3 = 0;
    do
    {
      v4 = *a3++;
      *(result + v3) = a0123456789abcd_1[v4 >> 4];
      *(result + (v3 + 1)) = a0123456789abcd_1[v4 & 0xF];
      v3 += 2;
    }

    while (2 * a2 != v3);
  }

  *(result + 2 * a2) = 0;
  return result;
}

uint64_t sub_62CB0(uint64_t a1, uint64_t a2)
{
  v2 = bswap64(*a1);
  v3 = bswap64(*a2);
  if (v2 == v3)
  {
    v2 = bswap64(*(a1 + 8));
    v3 = bswap64(*(a2 + 8));
    if (v2 == v3)
    {
      v2 = bswap32(*(a1 + 16));
      v3 = bswap32(*(a2 + 16));
      if (v2 == v3)
      {
        return 0;
      }
    }
  }

  if (v2 < v3)
  {
    return 0xFFFFFFFFLL;
  }

  return 1;
}

uint64_t sub_62D10(uint64_t result, uint64_t a2)
{
  for (i = 0; i != 20; ++i)
  {
    *(result + i) ^= *(a2 + i);
  }

  return result;
}

const char *sub_62D40(const char *result, unint64_t a2)
{
  v3 = result;
  memset(&v6, 0, sizeof(v6));
  if (a2)
  {
    v4 = a2;
    do
    {
      if (v3[v4] == 47)
      {
        v3[v4] = 0;
        result = stat(v3, &v6);
        if (!result)
        {
          break;
        }
      }

      --v4;
    }

    while (v4);
  }

  else
  {
    v4 = 0;
  }

  if (v4 < a2)
  {
    v5 = 1;
    do
    {
      if (!v3[v4])
      {
        if (!v5)
        {
          result = mkdir(v3, 0x1EDu);
        }

        v5 = 0;
        v3[v4] = 47;
      }

      ++v4;
    }

    while (a2 != v4);
  }

  return result;
}

const char *sub_62E00(const char *result, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = result;
    memset(&v4, 0, sizeof(v4));
    do
    {
      if (v3[v2] == 47)
      {
        v3[v2] = 0;
        result = stat(v3, &v4);
        v3[v2] = 47;
      }

      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_62E80(uint64_t a1)
{
  v1 = 0;
  v2 = 0;
  v3 = a1 - 1;
  do
  {
LABEL_2:
    for (i = v2; ; i += 2)
    {
      while (1)
      {
        v2 = i + 1;
        v5 = *(a1 + i);
        if (v5 != 47)
        {
          break;
        }

        ++i;
        if (v1)
        {
          i = v2;
          if (*(v3 + v1) != 47)
          {
            LOBYTE(v5) = 47;
LABEL_28:
            *(a1 + v1++) = v5;
            goto LABEL_2;
          }
        }
      }

      if (!*(a1 + i))
      {
        goto LABEL_29;
      }

      if (v1)
      {
        v6 = *(v3 + v1) == 47;
      }

      else
      {
        v6 = 1;
      }

      if (v5 != 46 || !v6)
      {
        goto LABEL_28;
      }

      v8 = *(a1 + v2);
      if (v8 != 47)
      {
        break;
      }
    }

    if (!*(a1 + v2))
    {
      break;
    }

    if (v8 != 46 || *(a1 + 2 + i) != 47 && *(a1 + 2 + i))
    {
      LOBYTE(v5) = 46;
      goto LABEL_28;
    }

    if (!v1)
    {
      return 0xFFFFFFFFLL;
    }

    v9 = (a1 - 2 + v1);
    v10 = v1 - 1;
    do
    {
      v1 = v10;
      if (!v10)
      {
        break;
      }

      v11 = *v9--;
      --v10;
    }

    while (v11 != 47);
    v2 = i + 3;
  }

  while (*(a1 + 2 + i));
LABEL_29:
  while (v1)
  {
    if (*(v3 + v1) != 47)
    {
      break;
    }

    --v1;
  }

  v12 = 0;
  *(a1 + v1) = 0;
  return v12;
}

uint64_t sub_62F94(char *a1, size_t a2, char *__s, const char *a4)
{
  v8 = strlen(__s);
  v9 = strlen(a4);
  if (v8 + v9 + 2 > a2)
  {
    return 0xFFFFFFFFLL;
  }

  v11 = v9;
  if (a1 != __s)
  {
    memcpy(a1, __s, v8);
  }

  if (v11)
  {
    if (!v8 || a1[v8 - 1] != 47)
    {
      a1[v8++] = 47;
    }

    memcpy(&a1[v8], a4, v11);
    v8 += v11;
  }

  result = 0;
  a1[v8] = 0;
  return result;
}

uint64_t sub_63058(char *a1, size_t a2, char *__s, const char *a4)
{
  v8 = strlen(__s);
  v9 = strlen(a4);
  if (!v8)
  {
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "concatExtractPath", 278, 3, 0, "invalid dir: %s");
    return 0xFFFFFFFFLL;
  }

  v10 = v9;
  if (v8 + v9 + 1 >= a2)
  {
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "concatExtractPath", 279, 3, 0, "dir/path too long: %s");
    return 0xFFFFFFFFLL;
  }

  strlcpy(a1, __s, a2);
  if (!v10)
  {
    return 0;
  }

  v11 = 0;
  memset(&v22, 0, sizeof(v22));
  while (1)
  {
    v12 = &a4[v11];
    v13 = strchr(&a4[v11], 47);
    v14 = v13 - a4;
    if (v13)
    {
      v15 = v13 - a4;
    }

    else
    {
      v15 = v10;
    }

    v16 = v15 - v11;
    if (v15 == v11)
    {
      sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "concatExtractPath", 297, 3, 0, "invalid path: %s");
      return 0xFFFFFFFFLL;
    }

    v17 = v13;
    if (v16 != 2)
    {
      if (v16 == 1 && *v12 == 46)
      {
        goto LABEL_29;
      }

      goto LABEL_15;
    }

    if (*v12 == 46 && v12[1] == 46)
    {
      break;
    }

LABEL_15:
    v18 = lstat(a1, &v22);
    if (v11)
    {
      if (v18)
      {
        if (mkdir(a1, 0x1EDu) && (lstat(a1, &v22) || (v22.st_mode & 0xF000) != 0x4000))
        {
          sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "concatExtractPath", 326, 3, 0, "a parent of path is not a directory: %s");
          return 0xFFFFFFFFLL;
        }
      }

      else if ((v22.st_mode & 0xF000) != 0x4000)
      {
        sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "concatExtractPath", 316, 3, 0, "a parent of path is not a directory: %s");
        return 0xFFFFFFFFLL;
      }
    }

    else if (v18 || (v19 = v22.st_mode & 0xF000, v19 != 0x4000) && v19 != 40960)
    {
      sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "concatExtractPath", 311, 3, 0, "dir doesn't exist, or is invalid: %s");
      return 0xFFFFFFFFLL;
    }

    v20 = &a1[v8];
    if (a1[v8 - 1] != 47)
    {
      ++v8;
      *v20 = 47;
    }

    memcpy(&a1[v8], &a4[v11], v16);
    v8 += v16;
    a1[v8] = 0;
LABEL_29:
    if (v17)
    {
      v11 = v14 + 1;
      if (v14 + 1 < v10)
      {
        continue;
      }
    }

    return 0;
  }

  sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "concatExtractPath", 304, 3, 0, "invalid path: %s");
  return 0xFFFFFFFFLL;
}

BOOL sub_63334(_BYTE *a1, size_t __n)
{
  if (!__n)
  {
    return 1;
  }

  if (__n > 0x3FF || memchr(a1, 0, __n) || *a1 == 47)
  {
    return 0;
  }

  v5 = 0;
  do
  {
    v6 = &a1[v5];
    v7 = memchr(&a1[v5], 47, __n - v5);
    if (!v7)
    {
      break;
    }

    v8 = v7 - a1;
    v9 = v7 - a1 - v5;
    if (v7 - a1 == v5)
    {
      return 0;
    }

    if (v5 && v9 == 1)
    {
      v10 = *v6;
      goto LABEL_13;
    }

    if (v9 == 2 && *v6 == 46)
    {
      v10 = v6[1];
LABEL_13:
      if (v10 == 46)
      {
        return 0;
      }
    }

    v5 = v8 + 1;
  }

  while (v8 + 1 < __n);
  return v5 != __n;
}

uint64_t sub_63410(const char *a1, uint64_t a2, char *__s)
{
  result = strlen(__s);
  if (result)
  {
    if (*__s != 47)
    {
      return 0;
    }

    for (i = result; a2; --a2)
    {
      if (a1[a2] == 47)
      {
        break;
      }
    }

    if (a1[a2] != 47)
    {
      return 0;
    }

    a1[a2] = 0;
    result = realpath_DARWIN_EXTSN(a1, __sa);
    a1[a2] = 47;
    if (!result)
    {
      return result;
    }

    v8 = strlen(__sa);
    if (v8 >= i && (v9 = v8, !memcmp(__s, __sa, i)))
    {
      return v9 == i || __sa[i] == 47;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_63528(char *a1, size_t a2)
{
  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = confstr(65537, a1, a2);
  if (!v4)
  {
    if (issetugid())
    {
      v4 = 0;
    }

    else
    {
      v4 = getenv("TMPDIR");
      if (v4)
      {
        v4 = strlcpy(a1, v4, a2);
      }
    }
  }

  if (v4 >= a2)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = strlen(a1);
  if (v6)
  {
    do
    {
      v7 = a1[v6 - 1];
      if (v7 != 47)
      {
        break;
      }

      --v6;
    }

    while (v6);
    if (v7 == 47)
    {
      v5 = 0xFFFFFFFFLL;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0xFFFFFFFFLL;
  }

  a1[v6] = 0;
  return v5;
}

uint64_t sub_635EC(const char *a1)
{
  v2 = opendir(a1);
  if (v2)
  {
    v3 = v2;
    memset(&v11, 0, 512);
    v10 = 0;
    while (1)
    {
      if (readdir_r(v3, &v11, &v10))
      {
        v8 = __error();
        sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "isDirEmpty", 438, 3, *v8, "readdir_r");
        v4 = 0xFFFFFFFFLL;
        goto LABEL_24;
      }

      if (!v10)
      {
        break;
      }

      if (v11.d_namlen == 1 && v11.d_name[0] == 46)
      {
        v4 = 1;
      }

      else
      {
        v6 = v11.d_namlen == 2 && v11.d_name[0] == 46 && v11.d_name[1] == 46;
        v4 = v6;
        if (!v6)
        {
          goto LABEL_24;
        }
      }

      if (!v4)
      {
        goto LABEL_24;
      }
    }

    v4 = 1;
LABEL_24:
    closedir(v3);
  }

  else
  {
    v7 = __error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "isDirEmpty", 428, 3, *v7, "%s", a1);
    return 0xFFFFFFFFLL;
  }

  return v4;
}

uint64_t sub_63784(const char *a1, void *a2, off_t *a3, uint64_t a4)
{
  memset(&v21, 0, sizeof(v21));
  if (lstat(a1, &v21))
  {
    v8 = __error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "loadFileContents", 475, 3, *v8, "%s", a1);
    v9 = 0;
LABEL_3:
    free(v9);
    v9 = 0;
    st_size = 0;
    result = 0xFFFFFFFFLL;
    goto LABEL_4;
  }

  st_size = v21.st_size;
  if (v21.st_size)
  {
    v9 = malloc(v21.st_size + a4);
    if (v9)
    {
      v12 = open(a1, 0);
      if (v12 < 0)
      {
        v19 = *__error();
        sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "loadFileContents", 486, 3, v19, "%s");
      }

      else
      {
        v13 = v12;
        v14 = st_size;
        v15 = v9;
        while (1)
        {
          if (v14 >= 0x40000000)
          {
            v16 = 0x40000000;
          }

          else
          {
            v16 = v14;
          }

          v17 = read(v13, v15, v16);
          if (v17 < 0)
          {
            v20 = *__error();
            sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "loadFileContents", 499, 3, v20, "%s");
            goto LABEL_23;
          }

          if (v17 != v16)
          {
            break;
          }

          v15 += v16;
          v14 -= v16;
          if (!v14)
          {
            close(v13);
            goto LABEL_17;
          }
        }

        sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "loadFileContents", 500, 3, 0, "reading contents: %s");
LABEL_23:
        close(v13);
      }
    }

    else
    {
      v18 = *__error();
      sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "loadFileContents", 482, 3, v18, "malloc");
    }

    goto LABEL_3;
  }

  v9 = 0;
LABEL_17:
  result = 0;
LABEL_4:
  *a2 = v9;
  *a3 = st_size;
  return result;
}

uint64_t sub_63990(const char *a1, void *a2, size_t a3, off_t a4)
{
  v7 = open(a1, 0);
  if (v7 < 0)
  {
    v10 = *__error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "loadFileSegment", 521, 3, v10, "%s");
    return 0xFFFFFFFFLL;
  }

  v8 = v7;
  v9 = pread(v7, a2, a3, a4);
  close(v8);
  if ((v9 & 0x8000000000000000) != 0)
  {
    v11 = *__error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "loadFileSegment", 524, 3, v11, "%s");
    return 0xFFFFFFFFLL;
  }

  if (v9 < a3)
  {
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "loadFileSegment", 525, 3, 0, "truncated read");
    return 0xFFFFFFFFLL;
  }

  return 0;
}

uint64_t sub_63A9C(const char *a1, uint64_t a2, unint64_t a3)
{
  v6 = open(a1, 1537, 420);
  if (v6 < 0)
  {
    v12 = __error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "storeFileContents", 535, 3, *v12, "%s", a1);
    return 0xFFFFFFFFLL;
  }

  else
  {
    v7 = v6;
    if (a3)
    {
      v8 = 0;
      while (1)
      {
        if (a3 - v8 >= 0x10000000)
        {
          v9 = 0x10000000;
        }

        else
        {
          v9 = a3 - v8;
        }

        v10 = write(v7, (a2 + v8), v9);
        if (v10 < 0)
        {
          v13 = *__error();
          sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "storeFileContents", 544, 3, v13, "%s");
          goto LABEL_14;
        }

        if (!v10)
        {
          break;
        }

        v8 += v10;
        if (v8 >= a3)
        {
          goto LABEL_10;
        }
      }

      sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "storeFileContents", 545, 3, 0, "write error: %s");
LABEL_14:
      v11 = 0xFFFFFFFFLL;
    }

    else
    {
LABEL_10:
      v11 = 0;
    }

    close(v7);
  }

  return v11;
}

uint64_t sub_63BD8(const char *a1, unint64_t a2, unint64_t a3, const char *a4)
{
  v8 = sub_75AC4(": %s %s file with no ota-uuid\n", v13, v14);
  if (v8)
  {
    v9 = sub_66B80(a1, a2, a3);
    if (v9)
    {
      v10 = sub_673F4(a4, a3);
      if (v10)
      {
        if ((sub_76264(v8, a3, sub_6707C, v9, sub_675A0, v10) & 0x8000000000000000) == 0)
        {
          v11 = 0;
          goto LABEL_11;
        }

        sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "copyFileSegment", 569, 3, 0, "copy failed: %s to %s");
      }

      else
      {
        sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "copyFileSegment", 566, 3, 0, "opening file: %s");
      }
    }

    else
    {
      sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "copyFileSegment", 565, 3, 0, "opening file: %s", a1);
      v10 = 0;
    }
  }

  else
  {
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "copyFileSegment", 564, 3, 0, "mem buffer creation");
    v10 = 0;
    v9 = 0;
  }

  v11 = 1;
LABEL_11:
  sub_66F00(v9);
  sub_67550(v10);
  sub_75BD4(v8);
  if (v11)
  {
    unlink(a4);
  }

  return (v11 << 31 >> 31);
}

uint64_t sub_63D7C(const char *a1, uint64_t a2)
{
  v16.tv_sec = *(a2 + 32);
  v16.tv_usec = 0;
  v17 = *(a2 + 48);
  v18 = 0;
  memset(&v15, 0, sizeof(v15));
  if (stat(a1, &v15))
  {
    if (*__error() == 1)
    {
      return 0;
    }

    v7 = 604;
LABEL_24:
    v13 = __error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "updateFileAttributes", v7, 3, *v13, "%s", a1);
    return 0xFFFFFFFFLL;
  }

  v5 = *(a2 + 16);
  if (v15.st_uid == v5)
  {
    v6 = *(a2 + 20);
    if (v15.st_gid == v6)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v6 = *(a2 + 20);
  }

  if (chown(a1, v5, v6) && *__error() != 1)
  {
    v8 = __error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "updateFileAttributes", 610, 3, *v8, "%s", a1);
    v4 = 0xFFFFFFFFLL;
    goto LABEL_13;
  }

LABEL_11:
  v4 = 0;
LABEL_13:
  v9 = *(a2 + 4);
  if (v15.st_mode != v9 && chmod(a1, v9 & 0xFFF) && *__error() != 1)
  {
    v10 = __error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "updateFileAttributes", 614, 3, *v10, "%s", a1);
    v4 = 0xFFFFFFFFLL;
  }

  v11 = *(a2 + 116) & 0xFFFFFFDF | (32 * ((v15.st_flags >> 5) & 1));
  if (v15.st_flags != v11 && chflags(a1, v11) && *__error() != 1)
  {
    v12 = __error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "updateFileAttributes", 621, 3, *v12, "%s", a1);
    v4 = 0xFFFFFFFFLL;
  }

  if (utimes(a1, &v16) && *__error() != 1)
  {
    v7 = 624;
    goto LABEL_24;
  }

  return v4;
}

uint64_t sub_63FE0(const char *a1, const char *a2, uint64_t a3, uint64_t a4, int a5)
{
  memset(&v25, 0, sizeof(v25));
  v9 = open(a1, 0, a3, a4);
  if (v9 < 0)
  {
    v12 = __error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "copyFileWithAttributes", 645, 3, *v12, "%s", a1);
LABEL_19:
    v16 = 0;
LABEL_20:
    v18 = 0;
LABEL_21:
    v20 = 0;
LABEL_22:
    sub_66F00(v16);
    sub_67D08(v18);
    sub_75BD4(v20);
    unlink(a2);
    return 0xFFFFFFFFLL;
  }

  v10 = v9;
  if (fstat(v9, &v25))
  {
    v11 = *__error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "copyFileWithAttributes", 646, 3, v11, "%s");
LABEL_18:
    close(v10);
    goto LABEL_19;
  }

  if ((v25.st_mode & 0xF000) != 0x8000)
  {
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "copyFileWithAttributes", 647, 3, 0, "not a regular file: %s");
    goto LABEL_18;
  }

  v13 = sub_64300(v10);
  close(v10);
  st_size = v25.st_size;
  st_flags = v25.st_flags;
  v16 = sub_66B80(a1, 0, v25.st_size);
  if (!v16)
  {
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "copyFileWithAttributes", 666, 3, 0, "open failed: %s", a1);
    goto LABEL_20;
  }

  if ((st_flags & 0x40000020) == 0x20)
  {
    v17 = a5 | 4;
  }

  else
  {
    v17 = a5;
  }

  v18 = sub_67770(a2, st_size, v17 | 8u, v13, a3);
  if (!v18)
  {
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "copyFileWithAttributes", 667, 3, 0, "open failed: %s", a1);
    goto LABEL_21;
  }

  v19 = sub_75AC4(": %s %s file with no ota-uuid\n", v23, v24);
  v20 = v19;
  if (!v19)
  {
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "copyFileWithAttributes", 670, 3, 0, "alloc");
    goto LABEL_22;
  }

  v21 = sub_76264(v19, st_size, sub_6707C, v16, sub_67EFC, v18);
  if ((v21 & 0x8000000000000000) != 0 || v21 != st_size)
  {
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "copyFileWithAttributes", 674, 3, 0, "copy failed %lld");
    goto LABEL_22;
  }

  sub_66F00(v16);
  sub_67D08(v18);
  sub_75BD4(v20);
  if (!sub_63D7C(a2, &v25))
  {
    return 0;
  }

  sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "copyFileWithAttributes", 690, 3, 0, "update file attributes");
  return 0xFFFFFFFFLL;
}

uint64_t sub_64300(int a1)
{
  v4[1] = 0;
  v4[2] = 0;
  memset(v5, 0, sizeof(v5));
  v4[0] = 0x4000000000000005;
  v1 = fgetattrlist(a1, v4, v5, 0x40uLL, 1u);
  if (LODWORD(v5[0]) == 8 && v1 == 0)
  {
    return DWORD1(v5[0]);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_64398(unsigned int a1)
{
  if ((a1 & 0x40000000) != 0)
  {
    return 0;
  }

  else
  {
    return (a1 >> 5) & 1;
  }
}

uint64_t sub_643A8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_643B4(const char *a1, const char *a2)
{
  memset(&v24, 0, sizeof(v24));
  memset(&v23, 0, sizeof(v23));
  if (stat(a1, &v24))
  {
    v4 = *__error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "areFilesEqual", 708, 3, v4, "%s");
LABEL_5:
    v6 = 0;
    v7 = 0;
    v8 = 0xFFFFFFFFLL;
    goto LABEL_6;
  }

  if (stat(a2, &v23))
  {
    v5 = *__error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "areFilesEqual", 709, 3, v5, "%s");
    goto LABEL_5;
  }

  if ((v24.st_mode & 0xF000) != 0x8000 || (v23.st_mode & 0xF000) != 0x8000 || v24.st_size != v23.st_size)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    goto LABEL_6;
  }

  v10 = open(a1, 0);
  if (v10 < 0)
  {
    v18 = *__error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "areFilesEqual", 714, 3, v18, "%s");
    goto LABEL_5;
  }

  v11 = v10;
  v12 = open(a2, 0);
  if (v12 < 0)
  {
    v19 = __error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "areFilesEqual", 716, 3, *v19, "%s", a2);
    close(v11);
    goto LABEL_5;
  }

  v13 = v12;
  v7 = malloc(0x40000uLL);
  v14 = malloc(0x40000uLL);
  v6 = v14;
  if (v7 && v14)
  {
    while (1)
    {
      v15 = read(v11, v7, 0x40000uLL);
      if (v15 < 0)
      {
        v21 = *__error();
        sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "areFilesEqual", 723, 3, v21, "%s read");
        goto LABEL_24;
      }

      v16 = v15;
      v17 = read(v13, v6, 0x40000uLL);
      if (v17 < 0)
      {
        v22 = *__error();
        sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "areFilesEqual", 725, 3, v22, "%s read");
        goto LABEL_24;
      }

      if (v16 != v17)
      {
        goto LABEL_19;
      }

      if (!v16)
      {
        break;
      }

      if (memcmp(v7, v6, v16))
      {
LABEL_19:
        v8 = 0;
        goto LABEL_25;
      }
    }

    v8 = 1;
  }

  else
  {
    v20 = *__error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "areFilesEqual", 719, 3, v20, "malloc");
LABEL_24:
    v8 = 0xFFFFFFFFLL;
  }

LABEL_25:
  close(v11);
  close(v13);
LABEL_6:
  free(v7);
  free(v6);
  return v8;
}

uint64_t sub_646A0()
{
  v0 = off_1AD4E0();
  v2 = v1;
  v3 = v0;
  if (sub_62F94(v7, 0x800uLL, v0, v4) || sub_62F94(v6, 0x800uLL, v3, v2))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return sub_643B4(v7, v6);
  }
}

uint64_t sub_64760(const char *a1)
{
  memset(&v3, 0, 512);
  if ((statfs(a1, &v3) & 0x80000000) == 0)
  {
    return v3.f_bsize;
  }

  sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "getFilesystemBlockSize", 752, 3, "statfs failed: %s\n", a1);
  return 4096;
}

off_t sub_64838(const char *a1)
{
  memset(&v9, 0, sizeof(v9));
  if (lstat(a1, &v9))
  {
    sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "getFileDiskUsage", 765, 3, "stat failed: %s\n", a1);
    return -1;
  }

  else
  {
    if (v9.st_blocks << 9 >= v9.st_size)
    {
      st_size = v9.st_size;
    }

    else
    {
      st_size = v9.st_blocks << 9;
    }

    if (v9.st_blocks << 9)
    {
      v2 = st_size;
    }

    else
    {
      v2 = v9.st_size;
    }

    if ((v9.st_mode & 0xF000) == 0x8000)
    {
      v7 = 0;
      v8 = 0;
      v4 = ParallelCompressionAFSCGetMetadata(a1, &v8, &v7 + 1, &v7);
      if (HIDWORD(v7) != -1 && v4 == 0)
      {
        return v7;
      }
    }
  }

  return v2;
}

uint64_t sub_64908(const char *a1)
{
  v4[1] = 0;
  v4[2] = 0;
  memset(v5, 0, sizeof(v5));
  v4[0] = 0x4000000000000005;
  v1 = getattrlist(a1, v4, v5, 0x40uLL, 1u);
  if (LODWORD(v5[0]) == 8 && v1 == 0)
  {
    return DWORD1(v5[0]);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_64998(const char *a1)
{
  v2 = listxattr(a1, 0, 0, 1);
  if (v2 < 0)
  {
    v11 = __error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "clearEntryXAT", 912, 3, *v11, "listxattr failed: %s", a1);
    v4 = 0;
    goto LABEL_18;
  }

  v3 = v2;
  if (!v2)
  {
    v4 = 0;
LABEL_14:
    v12 = 0;
    goto LABEL_19;
  }

  v4 = malloc(v2);
  if (!v4)
  {
    v13 = *__error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "clearEntryXAT", 918, 3, v13, "malloc");
    goto LABEL_18;
  }

  v5 = listxattr(a1, v4, v3, 1);
  if (v5 < 0)
  {
    v14 = *__error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "clearEntryXAT", 927, 3, v14, "listxattr failed: %s");
    goto LABEL_18;
  }

  v6 = v5;
  if (!v5)
  {
    goto LABEL_14;
  }

  v7 = v4 + 1;
  v8 = v4;
  while (*(v7 - 1))
  {
    v9 = v8;
LABEL_10:
    ++v7;
    v8 = v9;
    if (!--v6)
    {
      goto LABEL_14;
    }
  }

  v10 = removexattr(a1, v8, 1);
  v9 = v7;
  if ((v10 & 0x80000000) == 0)
  {
    goto LABEL_10;
  }

  v15 = *__error();
  sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "clearEntryXAT", 941, 3, v15, "removexattr failed for name=%s: %s");
LABEL_18:
  v12 = 0xFFFFFFFFLL;
LABEL_19:
  free(v4);
  return v12;
}

uint64_t sub_64B38(char *a1, unint64_t a2, unsigned __int8 *a3)
{
  memset(&v10, 0, sizeof(v10));
  CC_SHA1_Init(&v10);
  if (a2)
  {
    v6 = 0;
    v7 = a2;
    do
    {
      v6 += 0x100000;
      if (v6 <= a2)
      {
        v8 = 0x100000;
      }

      else
      {
        v8 = v7;
      }

      CC_SHA1_Update(&v10, a1, v8);
      v7 -= 0x100000;
      a1 += 0x100000;
    }

    while (v6 < a2);
  }

  CC_SHA1_Final(a3, &v10);
  return 0;
}

uint64_t sub_64BD8(char *a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4)
{
  v4 = a4;
  if (a2 || a3 || a4)
  {
    memset(&c, 0, sizeof(c));
    memset(&v19, 0, sizeof(v19));
    v18[0] = 0;
    v18[1] = 0;
    v8 = open(a1, 0);
    if (v8 < 0)
    {
      v15 = __error();
      sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "getFileDigests", 983, 3, *v15, "%s", a1);
      return 0xFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
      v10 = valloc(0x100000uLL);
      if (v10)
      {
        v11 = v10;
        if (a2)
        {
          CC_SHA1_Init(&c);
        }

        if (a3)
        {
          CC_SHA256_Init(&v19);
        }

        if (v4)
        {
          sub_6B014(v18);
        }

        while (1)
        {
          v12 = read(v9, v11, 0x100000uLL);
          v13 = v12;
          if (v12 < 0)
          {
            v14 = __error();
            sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "getFileDigests", 997, 3, *v14, "read");
            goto LABEL_29;
          }

          if (!v12)
          {
            break;
          }

          if (a2)
          {
            CC_SHA1_Update(&c, v11, v12);
          }

          if (a3)
          {
            CC_SHA256_Update(&v19, v11, v13);
          }

          if (v4)
          {
            sub_6B024(v18, v11, v13);
          }
        }

        if (a2)
        {
          CC_SHA1_Final(a2, &c);
        }

        if (a3)
        {
          CC_SHA256_Final(a3, &v19);
        }

        if (v4)
        {
          sub_6B074(v4, v18);
        }

LABEL_29:
        free(v11);
        v4 = v13 >> 63;
      }

      else
      {
        v16 = __error();
        sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "getFileDigests", 987, 3, *v16, "malloc");
        v4 = 0xFFFFFFFFLL;
      }

      close(v9);
    }
  }

  return v4;
}

uint64_t sub_64DEC(const char *a1, off_t a2, unint64_t a3, uint64_t a4)
{
  v8 = open(a1, 0);
  if (v8 < 0)
  {
    v12 = __error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "getFileSegmentSHA1Digest", 1025, 3, *v12, "%s", a1);
    return 0xFFFFFFFFLL;
  }

  else
  {
    v9 = v8;
    v10 = sub_64E98(v8, a2, a3, a4);
    close(v9);
    return v10;
  }
}

uint64_t sub_64E98(int a1, off_t a2, unint64_t a3, uint64_t a4)
{
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  if (fcntl(a1, 48, 1))
  {
    sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "getFileSegmentSHA1DigestFD", 1044, 3, "Warning: couldn't set F_NOCACHE\n");
  }

  memset(&c, 0, sizeof(c));
  v8 = valloc(0x100000uLL);
  if (!v8)
  {
    v13 = *__error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "getFileSegmentSHA1DigestFD", 1049, 3, v13, "malloc", v16, v17, *&c.h0, *&c.h2, *&c.h4, *&c.Nh, *&c.data[1], *&c.data[3], *&c.data[5], *&c.data[7], *&c.data[9], *&c.data[11], *&c.data[13], *&c.data[15]);
LABEL_16:
    v12 = 0xFFFFFFFFLL;
    goto LABEL_17;
  }

  CC_SHA1_Init(&c);
  if (a3)
  {
    while (1)
    {
      v9 = a3 >= 0x100000 ? 0x100000 : a3;
      v10 = pread(a1, v8, v9, a2);
      if ((v10 & 0x8000000000000000) != 0)
      {
        break;
      }

      v11 = v10;
      if (!v10)
      {
        goto LABEL_12;
      }

      if (v10 > v9)
      {
        sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "getFileSegmentSHA1DigestFD", 1062, 3, 0, "error: read more bytes than requested: %zd (requested %zu)");
        goto LABEL_16;
      }

      CC_SHA1_Update(&c, v8, v10);
      a2 += v11;
      a3 -= v11;
      if (!a3)
      {
        goto LABEL_12;
      }
    }

    v14 = *__error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "getFileSegmentSHA1DigestFD", 1059, 3, v14, "read", v16, v17, *&c.h0, *&c.h2, *&c.h4, *&c.Nh, *&c.data[1], *&c.data[3], *&c.data[5], *&c.data[7], *&c.data[9], *&c.data[11], *&c.data[13], *&c.data[15]);
    goto LABEL_16;
  }

LABEL_12:
  CC_SHA1_Final(a4, &c);
  v12 = 0;
LABEL_17:
  free(v8);
  return v12;
}

uint64_t sub_65044(const char *a1)
{
  bzero(__s, 0x410uLL);
  memset(&v4, 0, sizeof(v4));
  if (realpath_DARWIN_EXTSN(a1, __s))
  {
    if (lstat(__s, &v4) || (v4.st_mode & 0xF000) != 0x4000)
    {
      sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "getDirectoryDiskUsage", 1106, 3, 0, "Not a directory: %s");
    }

    else
    {
      v7 = sub_64760(__s);
      v3[1] = 0;
      v3[2] = 0;
      v3[3] = sub_651AC;
      v3[0] = __s;
      if ((sub_65298(v3, __s) & 0x80000000) == 0)
      {
        return v6;
      }

      sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "getDirectoryDiskUsage", 1115, 3, 0, "enumerating directory: %s");
    }
  }

  else
  {
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "getDirectoryDiskUsage", 1105, 3, 0, "Invalid path: %s");
  }

  return -1;
}

uint64_t sub_651AC(uint64_t a1, char *a2)
{
  memset(&v10, 0, sizeof(v10));
  if (lstat(a2, &v10) < 0)
  {
    v9 = __error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "DirectoryDiskUsageProc", 1088, 3, *v9, "lstat: %s", a2);
    return 0xFFFFFFFFLL;
  }

  v4 = v10.st_mode & 0xF000;
  if (v4 == 0x8000 || v4 == 0x4000)
  {
    v5 = *(a1 + 1032);
    v6 = sub_64838(a2);
    v7 = (v6 + (v5 - 1)) & -v5;
    if (v6 < 0)
    {
      v7 = v6;
    }

    if ((v7 & 0x8000000000000000) == 0)
    {
      result = 0;
      *(a1 + 1024) += v7;
      return result;
    }

    return 0xFFFFFFFFLL;
  }

  return 0;
}

uint64_t sub_65298(void *a1, char *__s)
{
  v3 = strlen(__s);
  if (v3 - 1024 < 0xFFFFFFFFFFFFFBFFLL)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = v3;
  bzero(v7, 0x400uLL);
  __memcpy_chk();
  do
  {
    v6 = v5;
    if (!v5)
    {
      break;
    }

    --v5;
  }

  while (v7[v6 - 1] == 47);
  v7[v6] = 0;
  return sub_65400(a1, v7, v6);
}

uint64_t sub_65374(const char *a1)
{
  memset(&v3, 0, sizeof(v3));
  if (lstat(a1, &v3))
  {
    return 0;
  }

  if ((v3.st_mode & 0xF000) == 0x4000)
  {
    return 0xFFFFFFFFLL;
  }

  if ((v3.st_flags & 0x20002) != 0)
  {
    lchflags(a1, v3.st_flags & 0xFFFDFFFD);
  }

  return unlink(a1);
}

uint64_t sub_65400(void *a1, const char *a2, uint64_t a3)
{
  if (a3)
  {
    v6 = a2;
  }

  else
  {
    v6 = "/";
  }

  v7 = opendir(v6);
  if (v7)
  {
    memset(&v23, 0, 512);
    v22 = 0;
    v8 = a1[1];
    if (!v8 || (v8(*a1, a2) & 0x80000000) == 0)
    {
      if (!readdir_r(v7, &v23, &v22))
      {
        v14 = a3 + 1;
        v15 = &a2[a3];
        do
        {
          if (!v22)
          {
            v10 = 1;
            goto LABEL_10;
          }

          d_namlen = v23.d_namlen;
          if ((v23.d_namlen != 1 || v23.d_name[0] != 46) && (v23.d_namlen != 2 || v23.d_name[0] != 46 || v23.d_name[1] != 46))
          {
            v17 = v14 + v23.d_namlen;
            if (v17 > 0x3FF)
            {
              goto LABEL_9;
            }

            *v15 = 47;
            memcpy(v15 + 1, v23.d_name, d_namlen);
            a2[v17] = 0;
            memset(&v21, 0, sizeof(v21));
            if (lstat(a2, &v21))
            {
              sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "enumerateTree_rec", 1170, 3, "lstat after readdir failed (errno=%d): %s");
            }

            else if ((v21.st_flags & 0x40000000) != 0)
            {
              sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "enumerateTree_rec", 1175, 3, "skip dataless: %s");
            }

            else
            {
              d_type = v23.d_type;
              if (!v23.d_type)
              {
                if ((v21.st_mode & 0xF000) == 0x4000)
                {
                  d_type = 4;
                  v23.d_type = 4;
                }

                else
                {
                  d_type = 0;
                }
              }

              v19 = a1[3];
              if (v19)
              {
                v20 = v19(*a1, a2) >> 31;
                d_type = v23.d_type;
              }

              else
              {
                LOBYTE(v20) = 0;
              }

              if (d_type == 4 && (sub_65400(a1, a2, v17) & 0x80000000) != 0)
              {
                v10 = 0;
                *v15 = 0;
                goto LABEL_10;
              }

              *v15 = 0;
              if (v20)
              {
                goto LABEL_9;
              }
            }
          }
        }

        while (!readdir_r(v7, &v23, &v22));
      }

      v9 = __error();
      sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "enumerateTree_rec", 1143, 3, *v9, "readdir_r");
    }

LABEL_9:
    v10 = 0;
LABEL_10:
    closedir(v7);
    v11 = a1[2];
    if (v11 && v11(*a1, a2) < 0)
    {
      v10 = 0;
    }

    if (v10)
    {
      return 0;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    v13 = __error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "enumerateTree_rec", 1126, 3, *v13, "%s", a2);
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_65730(char *__s)
{
  v2[0] = 0;
  v2[1] = 0;
  v2[3] = sub_6577C;
  v2[2] = sub_65834;
  return sub_65298(v2, __s);
}

uint64_t sub_6577C(int a1, char *a2)
{
  memset(&v6, 0, sizeof(v6));
  if (lstat(a2, &v6))
  {
    v3 = 1247;
LABEL_3:
    v4 = __error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "removeEntryProc", v3, 3, *v4, "%s", a2);
    return 0xFFFFFFFFLL;
  }

  if ((v6.st_mode & 0xF000) == 0x4000)
  {
    return 0;
  }

  result = unlink(a2);
  if (result)
  {
    v3 = 1250;
    goto LABEL_3;
  }

  return result;
}

uint64_t sub_65834(int a1, char *a2)
{
  result = rmdir(a2);
  if (result)
  {
    v4 = __error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "removeLeaveDirProc", 1258, 3, *v4, "%s", a2);
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t sub_658A4(const char *a1)
{
  bzero(&v11, 0x878uLL);
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  if (statfs(a1, &v11) < 0)
  {
    return -1;
  }

  LOWORD(v8) = 5;
  LODWORD(v9) = -2147352576;
  v2 = getattrlist(v11.f_mntonname, &v8, v6, 0x24uLL, 1u);
  result = -1;
  if (!v2 && LODWORD(v6[0]) == 36)
  {
    v4.i64[0] = *(v6 + 4);
    v4.i64[1] = *(v6 + 4);
    v5 = vandq_s8(vshlq_u32(v4, xmmword_10B220), xmmword_10B230);
    *v5.i8 = vorr_s8(*v5.i8, *&vextq_s8(v5, v5, 8uLL));
    return (v5.i32[0] | v5.i32[1]);
  }

  return result;
}

char *sub_659B0(unint64_t a1)
{
  if (a1 - 0x100000000 > 0xFFFFFFFF00000000)
  {
    v2 = getpagesize();
    if (v2 <= 0x197)
    {
      sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedBuffer.c", "SharedBufferCreate", 252, 73, 0, "Incompatible page size");
      return 0;
    }

    v5 = v2;
    if (a1 >> 2 < v2)
    {
      v6 = 1;
    }

    else
    {
      v6 = (a1 >> 2) / v2;
    }

    v7 = v6 * v2;
    v8 = valloc(v2 + 4 * v7);
    v3 = v8;
    if (!v8)
    {
      v10 = __error();
      sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedBuffer.c", "SharedBufferCreate", 262, 73, *v10, "malloc");
      return v3;
    }

    *(v8 + 50) = 0;
    *(v8 + 23) = 0u;
    *(v8 + 24) = 0u;
    *(v8 + 21) = 0u;
    *(v8 + 22) = 0u;
    *(v8 + 19) = 0u;
    *(v8 + 20) = 0u;
    *(v8 + 17) = 0u;
    *(v8 + 18) = 0u;
    *(v8 + 15) = 0u;
    *(v8 + 16) = 0u;
    *(v8 + 13) = 0u;
    *(v8 + 14) = 0u;
    *(v8 + 11) = 0u;
    *(v8 + 12) = 0u;
    *(v8 + 9) = 0u;
    *(v8 + 10) = 0u;
    *(v8 + 7) = 0u;
    *(v8 + 8) = 0u;
    *(v8 + 5) = 0u;
    *(v8 + 6) = 0u;
    *(v8 + 3) = 0u;
    *(v8 + 4) = 0u;
    *(v8 + 1) = 0u;
    *(v8 + 2) = 0u;
    *v8 = 0u;
    *(v8 + 48) = -1;
    atomic_store(2u, v8 + 101);
    *v8 = 0x600000000;
    v9 = calloc(6uLL, 4uLL);
    *(v3 + 1) = v9;
    if (v9)
    {
      if (pthread_mutex_init((v3 + 4), 0))
      {
        sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayInit", 56, 0, "SharedArrayInit: pthread_mutex_init failed\n");
      }

      else
      {
        if (!pthread_cond_init((v3 + 20), 0))
        {
          *(v3 + 16) = 0x600000000;
          v11 = calloc(6uLL, 4uLL);
          *(v3 + 17) = v11;
          if (v11)
          {
            if (pthread_mutex_init((v3 + 36), 0))
            {
              sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayInit", 56, 0, "SharedArrayInit: pthread_mutex_init failed\n");
            }

            else
            {
              if (!pthread_cond_init((v3 + 52), 0))
              {
                v12 = 0;
                for (i = v3 + 68; ; i += 4)
                {
                  *i = 0;
                  i[1] = 0;
                  *(i - 2) = v3 + v5;
                  *(i - 1) = v7;
                  if ((sub_65D4C(v3 + 32, v12) & 0x80000000) != 0)
                  {
                    break;
                  }

                  ++v12;
                  v5 += v7;
                  if (v12 == 4)
                  {
                    return v3;
                  }
                }

                sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedBuffer.c", "SharedBufferCreate", 283, 73, 0, "SharedArrayPush");
                goto LABEL_19;
              }

              sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayInit", 57, 0, "SharedArrayInit: pthread_cond_init failed\n");
            }
          }

          else
          {
            sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayInit", 55, 0, "SharedArrayInit: malloc failed\n");
          }

          sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedBuffer.c", "SharedBufferCreate", 270, 73, 0, "SharedArrayInit");
LABEL_19:
          if (!pthread_mutex_destroy((v3 + 4)) && !pthread_cond_destroy((v3 + 20)))
          {
            free(*(v3 + 1));
          }

          if (!pthread_mutex_destroy((v3 + 36)) && !pthread_cond_destroy((v3 + 52)))
          {
            free(*(v3 + 17));
          }

          free(v3);
          return 0;
        }

        sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayInit", 57, 0, "SharedArrayInit: pthread_cond_init failed\n");
      }
    }

    else
    {
      sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayInit", 55, 0, "SharedArrayInit: malloc failed\n");
    }

    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedBuffer.c", "SharedBufferCreate", 269, 73, 0, "SharedArrayInit");
    goto LABEL_19;
  }

  sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedBuffer.c", "SharedBufferCreate", 247, 73, 0, "SharedBuffer invalid capacity: %zu");
  return 0;
}

uint64_t sub_65D4C(unsigned int *a1, int a2)
{
  if (pthread_mutex_lock((a1 + 4)))
  {
    sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPush", 117, 0, "SharedArrayPush: pthread_mutex_lock failed\n");
  }

  else
  {
    v4 = *a1;
    v5 = a1[1];
    v6 = *a1;
    if (*a1 < v5)
    {
      *(*(a1 + 1) + 4 * v4) = a2;
      v6 = *a1;
    }

    *a1 = v6 + 1;
    if (v6 || !pthread_cond_broadcast((a1 + 20)))
    {
      if (pthread_mutex_unlock((a1 + 4)))
      {
        sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPush", 124, 0, "SharedArrayPush: pthread_mutex_unlock failed\n");
      }

      else
      {
        if (v4 < v5)
        {
          return 0;
        }

        sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPush", 125, 0, "SharedArrayPush: stack is full\n");
      }
    }

    else
    {
      sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPush", 122, 0, "SharedArrayPush: pthread_cond_broadcast failed\n");
    }
  }

  return 0xFFFFFFFFLL;
}

void sub_65E5C(uint64_t a1)
{
  if (a1)
  {
    if (!pthread_mutex_destroy((a1 + 16)) && !pthread_cond_destroy((a1 + 80)))
    {
      free(*(a1 + 8));
    }

    if (!pthread_mutex_destroy((a1 + 144)) && !pthread_cond_destroy((a1 + 208)))
    {
      free(*(a1 + 136));
    }

    free(a1);
  }
}

uint64_t sub_65EF0(uint64_t a1, unint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t), uint64_t a4)
{
  if (a2)
  {
    if (!atomic_load((a1 + 400)))
    {
      if (atomic_load((a1 + 392)))
      {
        sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedBuffer.c", "SharedBufferFillFromStream", 365, 73, 0, "write after EOF");
      }

      else
      {
        v9 = a2;
        v10 = 0;
        v11 = a1 + 256;
        while (1)
        {
          v12 = *(a1 + 384);
          if (v12 <= 3)
          {
            v14 = *(v11 + 32 * v12 + 24);
          }

          else
          {
            if (pthread_mutex_lock((a1 + 144)))
            {
              sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPop", 91, 0, "SharedArrayPop: pthread_mutex_lock failed\n");
LABEL_24:
              sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedBuffer.c", "SharedBufferFillFromStream", 378, 73, 0, "SharedArrayPop");
              goto LABEL_25;
            }

            while (1)
            {
              v13 = *(a1 + 128);
              if (v13)
              {
                break;
              }

              if (pthread_cond_wait((a1 + 208), (a1 + 144)))
              {
                sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPop", 94, 0, "SharedArrayPop: pthread_cond_wait failed\n");
                goto LABEL_24;
              }
            }

            v15 = v13 - 1;
            *(a1 + 128) = v15;
            v12 = *(*(a1 + 136) + 4 * v15);
            if (pthread_mutex_unlock((a1 + 144)))
            {
              sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPop", 98, 0, "SharedArrayPop: pthread_mutex_unlock failed\n");
              goto LABEL_24;
            }

            if (v12 > 3)
            {
              goto LABEL_25;
            }

            v14 = 0;
            *(a1 + 384) = v12;
            v16 = (a1 + 272 + 32 * v12);
            *v16 = 0;
            v16[1] = 0;
          }

          v17 = (v11 + 32 * v12);
          if (v17[1] - v14 >= v9)
          {
            v18 = v9;
          }

          else
          {
            v18 = v17[1] - v14;
          }

          v19 = a3(a4, *v17 + v14, v18);
          if (v19 < 0)
          {
            sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedBuffer.c", "SharedBufferFillFromStream", 393, 73, 0, "stream read");
            goto LABEL_25;
          }

          v20 = v19;
          if (!v19)
          {
            break;
          }

          v21 = v17[3] + v19;
          v17[3] = v21;
          if (v21 == v17[1] && (sub_661B4(a1) & 0x80000000) != 0)
          {
            goto LABEL_25;
          }

          v10 += v20;
          v9 -= v20;
          if (!v9)
          {
            goto LABEL_30;
          }
        }

        if ((sub_66130(a1) & 0x80000000) == 0)
        {
LABEL_30:
          if ((sub_661B4(a1) & 0x80000000) == 0)
          {
            return v10;
          }
        }
      }

LABEL_25:
      sub_66224(a1);
    }
  }

  return -1;
}

uint64_t sub_66130(uint64_t a1)
{
  v1 = 0;
  atomic_compare_exchange_strong((a1 + 392), &v1, 1u);
  if (v1)
  {
    return 0;
  }

  if ((sub_661B4(a1) & 0x80000000) == 0)
  {
    if ((sub_66530(a1, -2) & 0x80000000) == 0)
    {
      return 0;
    }

    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedBuffer.c", "sendEOF", 351, 73, 0, "SharedArrayEnqueue");
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_661B4(unsigned int *a1)
{
  v3 = a1[96];
  a1[96] = -1;
  if (v3 > 3)
  {
    return 0;
  }

  if ((sub_66530(a1, v3) & 0x80000000) == 0)
  {
    return 0;
  }

  sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedBuffer.c", "currentWriteBufferFull", 324, 73, 0, "SharedArrayEnqueue", v1, v2);
  return 0xFFFFFFFFLL;
}

uint64_t sub_66224(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = 0;
    atomic_compare_exchange_strong((result + 400), &v2, 1u);
    if (!v2)
    {
      if ((sub_65D4C((result + 128), -1) & 0x80000000) != 0)
      {
        sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedBuffer.c", "SharedBufferAbort", 500, 73, 0, "SharedArrayPush");
      }

      result = sub_66530(v1, -1);
      if ((result & 0x80000000) != 0)
      {

        return sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedBuffer.c", "SharedBufferAbort", 501, 73, 0, "SharedArrayPush");
      }
    }
  }

  return result;
}

uint64_t sub_662E8(uint64_t a1, unint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t), uint64_t a4)
{
  if (!a2)
  {
    return -1;
  }

  if (atomic_load((a1 + 400)))
  {
    return -1;
  }

  if (!atomic_load((a1 + 396)))
  {
    v11 = a2;
    v6 = 0;
    while (1)
    {
      v12 = *(a1 + 388);
      if (v12 >= 4)
      {
        if (pthread_mutex_lock((a1 + 16)))
        {
          sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPop", 91, 0, "SharedArrayPop: pthread_mutex_lock failed\n");
          goto LABEL_26;
        }

        while (!*a1)
        {
          if (pthread_cond_wait((a1 + 80), (a1 + 16)))
          {
            sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPop", 94, 0, "SharedArrayPop: pthread_cond_wait failed\n");
            goto LABEL_26;
          }
        }

        v13 = *a1 - 1;
        *a1 = v13;
        v12 = *(*(a1 + 8) + 4 * v13);
        if (pthread_mutex_unlock((a1 + 16)))
        {
          sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPop", 98, 0, "SharedArrayPop: pthread_mutex_unlock failed\n");
LABEL_26:
          sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedBuffer.c", "SharedBufferFlushToStream", 448, 73, 0, "SharedArrayDequeue");
LABEL_27:
          sub_66224(a1);
          return -1;
        }

        if (v12 == 4294967294)
        {
          v22 = 0;
          atomic_compare_exchange_strong((a1 + 396), &v22, 1u);
          return v6;
        }

        if (v12 > 3)
        {
          goto LABEL_27;
        }

        *(a1 + 388) = v12;
      }

      v14 = (a1 + 256 + 32 * v12);
      v15 = v14[2];
      if (v14[3] - v15 >= v11)
      {
        v16 = v11;
      }

      else
      {
        v16 = v14[3] - v15;
      }

      v17 = a3(a4, *v14 + v15, v16);
      if (v17 <= 0)
      {
        sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedBuffer.c", "SharedBufferFlushToStream", 469, 73, 0, "stream write");
        goto LABEL_27;
      }

      v18 = v17;
      v19 = v14[3];
      v20 = v14[2] + v17;
      v14[2] = v20;
      if (v20 == v19)
      {
        v21 = *(a1 + 388);
        *(a1 + 388) = -1;
        if (v21 <= 3 && (sub_65D4C((a1 + 128), v21) & 0x80000000) != 0)
        {
          sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedBuffer.c", "currentReadBufferEmpty", 337, 73, 0, "SharedArrayPush");
          goto LABEL_27;
        }
      }

      v6 += v18;
      v11 -= v18;
      if (!v11)
      {
        return v6;
      }
    }
  }

  return 0;
}

uint64_t sub_66530(unsigned int *a1, int a2)
{
  if (pthread_mutex_lock((a1 + 4)))
  {
    sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayEnqueue", 157, 0, "SharedArrayPush: pthread_mutex_lock failed\n");
  }

  else
  {
    v4 = *a1;
    v5 = a1[1];
    if (v4 >= v5)
    {
      v6 = *a1;
    }

    else
    {
      if (v4)
      {
        memmove((*(a1 + 1) + 4), *(a1 + 1), 4 * v4);
      }

      **(a1 + 1) = a2;
      v6 = *a1;
    }

    *a1 = v6 + 1;
    if (v6 || !pthread_cond_broadcast((a1 + 20)))
    {
      if (pthread_mutex_unlock((a1 + 4)))
      {
        sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayEnqueue", 168, 0, "SharedArrayPush: pthread_mutex_unlock failed\n");
      }

      else
      {
        if (v4 < v5)
        {
          return 0;
        }

        sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayEnqueue", 169, 0, "SharedArrayPush: stack is full\n");
      }
    }

    else
    {
      sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayEnqueue", 166, 0, "SharedArrayPush: pthread_cond_broadcast failed\n");
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_66658(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (atomic_load((a1 + 400)))
  {
    return -1;
  }

  if (!a3)
  {
    return sub_66130(a1);
  }

  v5 = a2;
  return sub_65EF0(a1, a3, sub_666B8, &v5);
}

size_t sub_666B8(const void **a1, void *__dst, size_t a3)
{
  memcpy(__dst, *a1, a3);
  *a1 = *a1 + a3;
  return a3;
}

uint64_t sub_666FC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (atomic_load((a1 + 400)))
  {
    return -1;
  }

  v7[1] = v3;
  v7[2] = v4;
  v7[0] = a2;
  return sub_662E8(a1, a3, sub_66750, v7);
}

size_t sub_66750(void **a1, const void *a2, size_t a3)
{
  memcpy(*a1, a2, a3);
  *a1 = *a1 + a3;
  return a3;
}

void *sub_667C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = malloc(0x80uLL);
  v7 = v6;
  if (v6)
  {
    *(v6 + 6) = 0u;
    *(v6 + 7) = 0u;
    *(v6 + 4) = 0u;
    *(v6 + 5) = 0u;
    *(v6 + 2) = 0u;
    *(v6 + 3) = 0u;
    *v6 = 0u;
    *(v6 + 1) = 0u;
    j__CC_SHA1_Init(v6);
    v7[13] = a1;
    v7[14] = a2;
    v7[15] = a3;
  }

  else
  {
    v8 = __error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OSHA1StreamCreate", 76, 29, *v8, "malloc");
  }

  return v7;
}

void sub_6685C(CC_SHA1_CTX *c, unsigned __int8 *md)
{
  if (c)
  {
    j__CC_SHA1_Final(md, c);

    free(c);
  }
}

uint64_t sub_668A4(CC_SHA1_CTX *c, const void *a2, uint64_t a3)
{
  if (!c || c[1].h0)
  {
    return -1;
  }

  v4 = a3;
  j__CC_SHA1_Update(c, a2, a3);
  v7 = *&c[1].h2;
  if (!v7)
  {
    return v4;
  }

  v8 = *&c[1].Nh;

  return v7(v8, a2, v4);
}

uint64_t sub_66924(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 112);
    if (v2)
    {
      result = v2(*(result + 120));
    }

    *(v1 + 96) = 1;
  }

  return result;
}

uint64_t *sub_66964(uint64_t (*a1)(uint64_t, uint64_t *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = malloc(a4 + 48);
  v9 = v8;
  if (v8)
  {
    bzero(v8, a4 + 48);
    v10 = a1(a3, v9 + 6, a4);
    if (v10 < 0)
    {
      sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "IMagicStreamCreate", 138, 29, 0, "reading magic");
      free(v9);
      return 0;
    }

    else
    {
      *v9 = v10;
      v9[1] = v10;
      v9[3] = a1;
      v9[4] = a2;
      v9[5] = a3;
    }
  }

  else
  {
    v11 = __error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "IMagicStreamCreate", 133, 29, *v11, "malloc");
  }

  return v9;
}

uint64_t sub_66A5C(uint64_t a1, char *__dst, size_t a3)
{
  if (!a1 || *(a1 + 16))
  {
    return -1;
  }

  v8 = *(a1 + 8);
  if (v8)
  {
    if (v8 >= a3)
    {
      v4 = a3;
    }

    else
    {
      v4 = *(a1 + 8);
    }

    memcpy(__dst, (a1 + *a1 - v8 + 48), v4);
    *(a1 + 8) -= v4;
    if (v8 < a3)
    {
      v9 = (*(a1 + 24))(*(a1 + 40), &__dst[v4], a3 - v4);
      if (v9 < 0)
      {
        return -1;
      }

      else
      {
        v4 += v9;
      }
    }

    return v4;
  }

  v10 = *(a1 + 24);
  v11 = *(a1 + 40);

  return v10(v11);
}

uint64_t sub_66B40(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 32);
    if (v2)
    {
      result = v2(*(result + 40));
    }

    *(v1 + 16) = 1;
  }

  return result;
}

void *sub_66B80(const char *a1, unint64_t a2, uint64_t a3)
{
  v6 = malloc(0x70uLL);
  v7 = v6;
  if (v6)
  {
    *(v6 + 8) = 0u;
    *(v6 + 24) = 0u;
    *(v6 + 13) = 0;
    *(v6 + 88) = 0u;
    *(v6 + 72) = 0u;
    *(v6 + 56) = 0u;
    *(v6 + 40) = 0u;
    v8 = (v6 + 40);
    *v7 = 0x1FFFFFFFFLL;
    v9 = a2 + a3;
    if (__CFADD__(a2, a3))
    {
      v9 = -1;
    }

    *(v7 + 16) = a2;
    *(v7 + 24) = v9;
    if (pthread_mutex_init(v8, 0))
    {
      v10 = "pthread_mutex_init";
      v11 = 293;
    }

    else
    {
      v14 = open(a1, 0);
      *v7 = v14;
      if (v14 < 0)
      {
        v12 = *__error();
        v15 = a1;
        v10 = "%s";
        v11 = 297;
        goto LABEL_9;
      }

      sub_66CEC(v7);
      if ((sub_66D70(v7, a2) & 0x80000000) == 0)
      {
        return v7;
      }

      v10 = "seek error";
      v11 = 303;
    }

    v12 = 0;
  }

  else
  {
    v12 = *__error();
    v10 = "malloc";
    v11 = 282;
  }

LABEL_9:
  sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "IFileStreamCreateWithFilename", v11, 29, v12, v10, v15);
  sub_66F00(v7);
  return 0;
}

uint64_t sub_66CEC(uint64_t a1)
{
  memset(&v4, 0, sizeof(v4));
  result = fstat(*a1, &v4);
  if (!result && (v4.st_mode & 0xF000) == 0x8000)
  {
    st_size = v4.st_size;
    if (*(a1 + 16) > v4.st_size)
    {
      *(a1 + 16) = v4.st_size;
    }

    if (*(a1 + 24) > st_size)
    {
      *(a1 + 24) = st_size;
    }
  }

  return result;
}

uint64_t sub_66D70(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 32) == a2)
  {
    return 0;
  }

  v22 = v5;
  v23 = v4;
  v24 = v3;
  v25 = v2;
  v13 = lseek(*a1, a2, 0);
  if ((v13 & 0x8000000000000000) == 0)
  {
    v14 = v13;
    *(a1 + 32) = v13;
LABEL_5:
    if (v14 == a2)
    {
      return 0;
    }

    v15 = "pos not reached";
    v16 = 261;
    goto LABEL_11;
  }

  if (*__error() != 32)
  {
    v17 = *__error();
    v15 = "lseek failed";
    v16 = 258;
    goto LABEL_13;
  }

  v14 = *(a1 + 32);
  if (v14 <= a2)
  {
    v18 = valloc(0x4000uLL);
    if (!v18)
    {
      v17 = *__error();
      v15 = "malloc";
      v16 = 244;
      goto LABEL_13;
    }

    for (i = v18; v14 < a2; *(a1 + 32) = v14)
    {
      if (v14 + 0x4000 <= a2)
      {
        v20 = 0x4000;
      }

      else
      {
        v20 = a2 - v14;
      }

      v21 = read(*a1, i, v20);
      v14 = *(a1 + 32);
      if (v21 < 1)
      {
        break;
      }

      v14 += v21;
    }

    free(i);
    goto LABEL_5;
  }

  v15 = "lseek failed and pos < s->pos";
  v16 = 240;
LABEL_11:
  v17 = 0;
LABEL_13:
  sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "seekTo", v16, 29, v17, v15, v7, v6, v22, v23, v24, v25, v8, v9);
  return 0xFFFFFFFFLL;
}

void sub_66F00(char *a1)
{
  if (a1)
  {
    if (*(a1 + 1))
    {
      v2 = *a1;
      if ((v2 & 0x80000000) == 0)
      {
        close(v2);
      }
    }

    pthread_mutex_destroy((a1 + 40));

    free(a1);
  }
}

uint64_t sub_66F58(int a1, unint64_t a2, uint64_t a3)
{
  v6 = malloc(0x70uLL);
  v7 = v6;
  if (v6)
  {
    *(v6 + 8) = 0u;
    *(v6 + 24) = 0u;
    *(v6 + 13) = 0;
    *(v6 + 88) = 0u;
    *(v6 + 72) = 0u;
    *(v6 + 56) = 0u;
    *(v6 + 40) = 0u;
    v8 = (v6 + 40);
    *v7 = a1;
    *(v7 + 4) = 0;
    v9 = a2 + a3;
    if (__CFADD__(a2, a3))
    {
      v9 = -1;
    }

    *(v7 + 16) = a2;
    *(v7 + 24) = v9;
    if (pthread_mutex_init(v8, 0))
    {
      sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "IFileStreamCreateWithFD", 325, 29, 0, "pthread_mutex_init");
    }

    else
    {
      sub_66CEC(v7);
      if ((sub_66D70(v7, a2) & 0x80000000) == 0)
      {
        return v7;
      }

      sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "IFileStreamCreateWithFD", 331, 29, 0, "seek error");
    }

    sub_66F00(v7);
    return 0;
  }

  else
  {
    v10 = __error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "IFileStreamCreateWithFD", 314, 29, *v10, "malloc");
  }

  return v7;
}

unint64_t sub_6707C(uint64_t a1, char *a2, size_t a3)
{
  if (*(a1 + 8))
  {
    return -1;
  }

  if (!a3)
  {
    return 0;
  }

  v6 = *(a1 + 32);
  if (v6 < *(a1 + 16))
  {
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "IFileStreamRead", 358, 29, 0, "pos out of range");
    return -1;
  }

  if (~v6 < a3)
  {
    v7 = ~v6;
  }

  else
  {
    v7 = a3;
  }

  v8 = a3 + v6;
  if (__CFADD__(a3, v6))
  {
    v8 = -1;
  }

  v9 = *(a1 + 24);
  if (v8 <= v9)
  {
    v10 = v7;
  }

  else
  {
    v10 = v9 - v6;
  }

  if (v10)
  {
    v3 = 0;
    while (1)
    {
      v12 = read(*a1, a2, v10);
      if (v12 < 0)
      {
        break;
      }

      if (v12)
      {
        a2 += v12;
        v3 += v12;
        v10 -= v12;
        if (v10)
        {
          continue;
        }
      }

      v6 = *(a1 + 32);
      goto LABEL_24;
    }

    v13 = __error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "IFileStreamRead", 374, 29, *v13, "read");
    *(a1 + 32) += v3;
    atomic_fetch_add((a1 + 104), v3);
    return -1;
  }

  v3 = 0;
LABEL_24:
  *(a1 + 32) = v6 + v3;
  atomic_fetch_add((a1 + 104), v3);
  return v3;
}

unint64_t sub_671B8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 8))
  {
    return -1;
  }

  v5 = *(a1 + 16);
  v6 = v5 + a4;
  if (__CFADD__(v5, a4) || (v7 = *(a1 + 24), v6 > v7))
  {
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "IFileStreamPRead", 397, 29, 0, "invalid offset");
    return -1;
  }

  v11 = v6 + a3;
  if (v6 + a3 >= v7)
  {
    v11 = *(a1 + 24);
  }

  if (!__CFADD__(v6, a3))
  {
    v7 = v11;
  }

  v8 = v7 - v6;
  if (pread(*a1, a2, v7 - v6, v6) == v7 - v6)
  {
    atomic_fetch_add((a1 + 104), v8);
    return v8;
  }

  if (pthread_mutex_lock((a1 + 40)))
  {
    return -1;
  }

  v12 = *(a1 + 32);
  v13 = sub_66D70(a1, v6);
  v14 = sub_6707C(a1, a2, v8);
  v15 = sub_66D70(a1, v12);
  v8 = -1;
  if (!pthread_mutex_unlock((a1 + 40)) && (v15 & 0x80000000) == 0 && (v14 & 0x8000000000000000) == 0 && (v13 & 0x80000000) == 0)
  {
    atomic_fetch_add((a1 + 104), v14);
    return v14;
  }

  return v8;
}

uint64_t sub_672E8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    return -1;
  }

  v11 = v2;
  v8 = *(a1 + 16);
  v9 = __CFADD__(v8, a2);
  v10 = v8 + a2;
  if (v9 || v10 > *(a1 + 24))
  {
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "IFileStreamSetPos", 435, 29, 0, "invalid pos", v3, v11, v4, v5);
    return -1;
  }

  if ((sub_66D70(a1, v10) & 0x80000000) != 0)
  {
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "IFileStreamSetPos", 436, 29, 0, "changing pos", v3, v11, v4, v5);
    return -1;
  }

  return *(a1 + 32) - *(a1 + 16);
}

uint64_t sub_6739C(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return -1;
  }

  else
  {
    return *(a1 + 32) - *(a1 + 16);
  }
}

uint64_t sub_673C8(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return -1;
  }

  else
  {
    return *(a1 + 24) - *(a1 + 16);
  }
}

uint64_t sub_673E4(uint64_t result)
{
  if (result)
  {
    *(result + 8) = 1;
  }

  return result;
}

int *sub_673F4(const char *a1, uint64_t a2)
{
  v4 = malloc(0x20uLL);
  v5 = v4;
  if (v4)
  {
    *(v4 + 2) = a2;
    *(v4 + 3) = 0;
    v4[1] = 1;
    *(v4 + 1) = 0;
    v6 = open(a1, 1537, 420);
    *v5 = v6;
    if (v6 < 0)
    {
      v7 = __error();
      sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OFileStreamCreateWithFilename", 490, 29, *v7, "%s", a1);
      free(v5);
      return 0;
    }
  }

  else
  {
    v8 = __error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OFileStreamCreateWithFilename", 484, 29, *v8, "malloc");
  }

  return v5;
}

void *sub_674D4(int a1, uint64_t a2)
{
  v4 = malloc(0x20uLL);
  v5 = v4;
  if (v4)
  {
    v4[2] = a2;
    v4[3] = 0;
    *v4 = a1;
    *(v4 + 1) = 0;
    v4[1] = 0;
  }

  else
  {
    v6 = __error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OFileStreamCreateWithFD", 497, 29, *v6, "malloc");
  }

  return v5;
}

void sub_67550(int *a1)
{
  if (a1)
  {
    if (a1[1])
    {
      v2 = *a1;
      if ((v2 & 0x80000000) == 0)
      {
        close(v2);
      }
    }

    free(a1);
  }
}

uint64_t sub_675A0(uint64_t a1, char *__buf, unint64_t a3)
{
  if (*(a1 + 8))
  {
    return -1;
  }

  if (*(a1 + 16) >= a3)
  {
    v5 = a3;
  }

  else
  {
    v5 = *(a1 + 16);
  }

  if (v5)
  {
    v3 = 0;
    while (1)
    {
      v7 = v5 >= 0x7FFFFFFF ? 0x7FFFFFFFLL : v5;
      v8 = write(*a1, __buf, v7);
      if (v8 < 0)
      {
        break;
      }

      if (v8)
      {
        v9 = *(a1 + 16);
        if (v9 != -1)
        {
          *(a1 + 16) = v9 - v8;
        }

        __buf += v8;
        v3 += v8;
        v5 -= v8;
        if (v5)
        {
          continue;
        }
      }

      goto LABEL_18;
    }

    v11 = __error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OFileStreamWrite", 538, 29, *v11, "write");
    return -1;
  }

  v3 = 0;
LABEL_18:
  *(a1 + 24) += v3;
  return v3;
}

off_t sub_67684(int *a1, off_t a2)
{
  if (a1[2])
  {
    return -1;
  }

  result = lseek(*a1, a2, 0);
  if (result < 0)
  {
    v5 = __error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OFileStreamSetPos", 558, 29, *v5, "lseek", v2, v3);
    return -1;
  }

  return result;
}

off_t sub_676EC(int *a1)
{
  if (a1[2])
  {
    return -1;
  }

  result = lseek(*a1, 0, 1);
  if (result < 0)
  {
    v4 = __error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OFileStreamGetPos", 568, 29, *v4, "lseek", v1, v2);
    return -1;
  }

  return result;
}

uint64_t sub_67760(uint64_t result)
{
  if (result)
  {
    *(result + 8) = 1;
  }

  return result;
}

int *sub_67770(const char *a1, unint64_t a2, unsigned int a3, int a4, uint64_t a5)
{
  v5 = a5;
  v10 = malloc(0x60uLL);
  v11 = v10;
  if (v10)
  {
    *(v10 + 4) = 0u;
    *(v10 + 5) = 0u;
    *(v10 + 2) = 0u;
    *(v10 + 3) = 0u;
    *v10 = 0u;
    *(v10 + 1) = 0u;
    if ((a3 & 0x100) == 0)
    {
      unlink(a1);
    }

    v11[1] = (a3 >> 4) & 1;
    *(v11 + 2) = a2;
    if (a3)
    {
      v12 = 4;
    }

    else
    {
      v12 = a4;
    }

    if (v12 < 1)
    {
      v13 = open(a1, 1537, 420);
      *v11 = v13;
      if (v13 < 0)
      {
        v14 = 648;
        goto LABEL_31;
      }
    }

    else
    {
      v13 = open_dprotected_np(a1, 1537, v12, 0, 420);
      *v11 = v13;
      if (v13 < 0)
      {
        v14 = 640;
LABEL_31:
        v21 = __error();
        sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OArchiveFileStreamCreate", v14, 29, *v21, "%s", a1);
        ParallelCompressionAFSCStreamClose(0);
        goto LABEL_32;
      }
    }

    v16 = v13;
    if ((a3 & 8) != 0 && fcntl(v13, 48, 1))
    {
      sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OArchiveFileStreamCreate", 656, 29, "Warning: F_NOCACHE failed: %s\n", a1);
    }

    if ((a3 & 2) != 0 && fcntl(v16, 68, 1) == -1)
    {
      v17 = __error();
      sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OArchiveFileStreamCreate", 665, 29, "Warning: F_SETSTATICCONTENT failed with error %d: %s\n", *v17, a1);
    }

    if (a2 && (a3 & 4) != 0 && v5 != -1)
    {
      if ((a3 & 0x80) != 0)
      {
        v18 = 6;
      }

      else
      {
        v18 = 4;
      }

      v19 = ParallelCompressionAFSCStreamOpen(v16, a2, v5, v18);
      *(v11 + 3) = v19;
      if (!v19)
      {
        sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OArchiveFileStreamCreate", 677, 29, 0, "ParallelCompressionAFSCStreamOpen failed: %s", a1);
        ParallelCompressionAFSCStreamClose(0);
        close(v16);
LABEL_32:
        free(v11);
        return 0;
      }
    }

    else if ((a3 & 0x40) != 0)
    {
      v20 = fpathconf(v16, 27);
      if (v20 >= 1)
      {
        v11[10] = 1;
        if (v20 == 4096)
        {
          v11[18] = 4096;
        }

        else
        {
          v23 = 0x10000;
          if (v20 < 0x10000)
          {
            v23 = v20;
          }

          v24 = 1024;
          do
          {
            v25 = v24;
            v24 *= 2;
          }

          while (v25 < v23);
          v11[18] = v25;
        }
      }
    }
  }

  else
  {
    v15 = __error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OArchiveFileStreamCreate", 617, 29, *v15, "malloc");
  }

  return v11;
}

int *sub_67A2C(int a1, const char *a2, unint64_t a3, unsigned int a4, int a5, uint64_t a6)
{
  v6 = a6;
  v12 = malloc(0x60uLL);
  v13 = v12;
  if (!v12)
  {
    v19 = __error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OArchiveFileStreamCreateAt", 740, 29, *v19, "malloc");
    return v13;
  }

  *(v12 + 8) = 0u;
  *(v12 + 11) = 0;
  *(v12 + 72) = 0u;
  *(v12 + 56) = 0u;
  *(v12 + 40) = 0u;
  *(v12 + 24) = 0u;
  *v12 = -1;
  *(v12 + 1) = (a4 >> 4) & 1;
  *(v12 + 2) = a3;
  if ((a4 & 0x100) == 0)
  {
    unlinkat(a1, a2, 0);
  }

  if ((a4 & 1) != 0 || a5 >= 1)
  {
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OArchiveFileStreamCreateAt", 759, 29, 0, "non default protection class is not supported");
LABEL_24:
    ParallelCompressionAFSCStreamClose(0);
    goto LABEL_25;
  }

  v14 = openat(a1, a2, 1537, 420);
  *v13 = v14;
  if (v14 < 0)
  {
    v20 = *__error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OArchiveFileStreamCreateAt", 766, 29, v20, "%s");
    goto LABEL_24;
  }

  v15 = v14;
  if ((a4 & 8) != 0 && fcntl(v14, 48, 1))
  {
    sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OArchiveFileStreamCreateAt", 774, 29, "Warning: F_NOCACHE failed: %s\n", a2);
  }

  if ((a4 & 2) != 0 && fcntl(v15, 68, 1) == -1)
  {
    v16 = __error();
    sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OArchiveFileStreamCreateAt", 783, 29, "Warning: F_SETSTATICCONTENT failed with error %d: %s\n", *v16, a2);
  }

  if (a3 && (a4 & 4) != 0 && v6 != -1)
  {
    if ((a4 & 0x80) != 0)
    {
      v17 = 6;
    }

    else
    {
      v17 = 4;
    }

    v18 = ParallelCompressionAFSCStreamOpen(v15, a3, v6, v17);
    *(v13 + 3) = v18;
    if (!v18)
    {
      sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OArchiveFileStreamCreateAt", 795, 29, 0, "ParallelCompressionAFSCStreamOpen failed: %s", a2);
      ParallelCompressionAFSCStreamClose(0);
      close(v15);
LABEL_25:
      free(v13);
      return 0;
    }
  }

  else if ((a4 & 0x40) != 0)
  {
    v22 = fpathconf(v15, 27);
    if (v22 >= 1)
    {
      v13[10] = 1;
      if (v22 == 4096)
      {
        v13[18] = 4096;
      }

      else
      {
        v23 = 0x10000;
        if (v22 < 0x10000)
        {
          v23 = v22;
        }

        v24 = 1024;
        do
        {
          v25 = v24;
          v24 *= 2;
        }

        while (v25 < v23);
        v13[18] = v25;
      }
    }
  }

  return v13;
}

uint64_t sub_67D18(unsigned int *a1, int a2, void *a3, void *a4)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(a1 + 2))
  {
    sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OArchiveFileStreamDestroyEx", 863, 29, "OArchiveFileStream didn't receive enough data before being destroyed\n");
  }

  ParallelCompressionAFSCStreamClose(*(a1 + 3));
  if ((*a1 & 0x80000000) != 0)
  {
    v9 = 0;
    v12 = 0xFFFFFFFFLL;
  }

  else
  {
    if (*(a1 + 7))
    {
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = *(a1 + 8);
      while (fcntl(*a1, 99, v11 + v8) != -1)
      {
        v11 = *(a1 + 8);
        v9 += *(v11 + v8 + 16);
        ++v10;
        v8 += 24;
        if (v10 >= *(a1 + 7))
        {
          goto LABEL_14;
        }
      }

      sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OArchiveFileStreamDestroyEx", 875, 29, "F_PUNCHHOLE failed");
    }

    else
    {
      v9 = 0;
    }

LABEL_14:
    if (a1[1] && fcntl(*a1, 51, 0) == -1)
    {
      v13 = __error();
      sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OArchiveFileStreamDestroyEx", 883, 29, *v13, "Final FULLSYNC");
    }

    v12 = *a1;
    if (!a2)
    {
      if (close(*a1))
      {
        v14 = __error();
        sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OArchiveFileStreamDestroyEx", 890, 29, *v14, "close");
      }

      v12 = 0xFFFFFFFFLL;
      *a1 = -1;
    }
  }

  if (a3)
  {
    *a3 = *(a1 + 4) - v9;
  }

  if (a4)
  {
    *a4 = v9;
  }

  free(*(a1 + 8));
  free(a1);
  return v12;
}