uint64_t sub_2990947AC(uint64_t a1)
{
  v2 = a1 + 72;
  v6 = *(a1 + 72 + 8 * *(a1 + 66));
  result = sub_29908F7A4(*(a1 + 24), *(v6 + *(v6 + 16)) | (*(v6 + *(v6 + 16) + 4) << 32), &v6, 0);
  if (!result)
  {
    *(a1 + 328 + 2 * *(a1 + 66)) = 0;
    v4 = *(a1 + 64);
    if (v4 >= 0x20)
    {
      *(*(a1 + 24) + 124) |= 2u;
      return 4294936509;
    }

    else
    {
      v5 = v6;
      *(a1 + 64) = v4 + 1;
      *(v2 + 8 * v4) = v5;
      *(a1 + 66) = v4;
      *(a1 + 328 + 2 * v4) = 0;

      return sub_29909310C(a1, 0, 4);
    }
  }

  return result;
}

uint64_t sub_29909487C(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = v2 + *a1;
  v4 = *a1 - *a2;
  v5 = v2 + (v4 & ~(v4 >> 63));
  if (v4 >= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = *a1 - *a2;
  }

  v7 = (*a2 + a2[1] - 1);
  while (v3 > v5)
  {
    v9 = *--v3;
    v8 = v9;
    v10 = *v7--;
    result = (v8 - v10);
    if (v8 != v10)
    {
      return result;
    }
  }

  if (v6 < 0)
  {
    return -1;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_2990948CC(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  v7 = v3 - v5;
  v6 = v3 <= v5;
  if (v3 < v5)
  {
    v7 = -1;
  }

  if (v3 > v5)
  {
    LODWORD(v3) = v5;
  }

  if (v6)
  {
    v8 = v7;
  }

  else
  {
    v8 = 1;
  }

  LODWORD(result) = memcmp(v2, v4, v3);
  if (result)
  {
    return result;
  }

  else
  {
    return v8;
  }
}

uint64_t mdb_midl_search(unsigned int *a1, unint64_t a2)
{
  v2 = *a1;
  if (!*a1)
  {
    return 1;
  }

  v3 = 0;
  do
  {
    v4 = v2 >> 1;
    v5 = v3 + (v2 >> 1) + 1;
    v6 = *&a1[2 * v5];
    if (v6 >= a2)
    {
      if (v6 <= a2)
      {
        return v5;
      }

      v4 = v2 + ~v4;
      v3 += (v2 >> 1) + 1;
    }

    v2 = v4;
  }

  while (v4);
  if (v6 <= a2)
  {
    return v5;
  }

  else
  {
    return (v5 + 1);
  }
}

void *mdb_midl_alloc(int a1)
{
  v2 = malloc_type_malloc(8 * a1 + 16, 0x100004000313F17uLL);
  if (!v2)
  {
    return 0;
  }

  v2[1] = 0;
  v3 = v2 + 1;
  *v2 = a1;
  return v3;
}

void mdb_midl_free(uint64_t a1)
{
  if (a1)
  {
    free((a1 - 8));
  }
}

void *mdb_midl_shrink(uint64_t *a1)
{
  v2 = *a1;
  v4 = *(v2 - 8);
  result = (v2 - 8);
  if (v4 >= 0x20000)
  {
    result = malloc_type_realloc(result, 0x100008uLL, 0x100004000313F17uLL);
    if (result)
    {
      *result++ = 0x1FFFFLL;
      *a1 = result;
    }
  }

  return result;
}

uint64_t mdb_midl_need(_DWORD **a1, int a2)
{
  v3 = *a1;
  v4 = (*v3 + a2);
  v6 = *(v3 - 1);
  v5 = v3 - 2;
  if (v6 >= v4)
  {
    return 0;
  }

  v7 = (v4 + (v4 >> 2) + 258) & 0xFFFFFF00;
  v8 = malloc_type_realloc(v5, 8 * v7, 0x100004000313F17uLL);
  if (!v8)
  {
    return 12;
  }

  v9 = v8;
  result = 0;
  *v9 = (v7 - 2);
  *a1 = v9 + 8;
  return result;
}

uint64_t mdb_midl_append(unint64_t **a1, unint64_t a2)
{
  v4 = *a1;
  v5 = **a1;
  v6 = *a1;
  v9 = *(v6 - 1);
  v7 = v6 - 1;
  v8 = v9;
  if (v5 < v9)
  {
    goto LABEL_4;
  }

  v10 = malloc_type_realloc(v7, 8 * v8 + 1048584, 0x100004000313F17uLL);
  if (v10)
  {
    v4 = v10 + 1;
    v5 = v10[1];
    *v10 += 0x1FFFFLL;
    *a1 = v10 + 1;
LABEL_4:
    result = 0;
    v12 = v5 + 1;
    *v4 = v12;
    v4[v12] = a2;
    return result;
  }

  return 12;
}

uint64_t mdb_midl_append_list(uint64_t **a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = **a1;
  v6 = *a2;
  v7 = *a1;
  v10 = *(v7 - 1);
  v8 = v7 - 1;
  v9 = v10;
  if (*a2 + v5 < v10)
  {
    goto LABEL_4;
  }

  v11 = malloc_type_realloc(v8, 8 * (v9 + v6) + 16, 0x100004000313F17uLL);
  if (v11)
  {
    v4 = v11 + 1;
    v5 = v11[1];
    *v11 += v6;
    *a1 = v11 + 1;
    v6 = *a2;
LABEL_4:
    memcpy(&v4[v5 + 1], a2 + 1, 8 * v6);
    result = 0;
    *v4 += *a2;
    return result;
  }

  return 12;
}

uint64_t mdb_midl_append_range(unint64_t **a1, uint64_t a2, unsigned int a3)
{
  v6 = *a1;
  v7 = *v6;
  v8 = *v6 + a3;
  v9 = *(v6 - 1);
  if (v8 > v9)
  {
    v10 = a3 | 0x1FFFF;
    v11 = malloc_type_realloc(v6 - 1, 8 * (v9 + (a3 | 0x1FFFF)) + 16, 0x100004000313F17uLL);
    if (!v11)
    {
      return 12;
    }

    *v11 += v10;
    v6 = v11 + 1;
    *a1 = v6;
  }

  *v6 = v8;
  if (a3)
  {
    v12 = 0;
    v13 = vdupq_n_s64(a3 - 1);
    v14 = &v6[v7 + a3];
    do
    {
      v15 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(vdupq_n_s64(v12), xmmword_2990981E0)));
      if (v15.i8[0])
      {
        *v14 = a2 + v12;
      }

      if (v15.i8[4])
      {
        *(v14 - 1) = a2 + v12 + 1;
      }

      v12 += 2;
      v14 -= 2;
    }

    while (((a3 + 1) & 0x1FFFFFFFELL) != v12);
  }

  return 0;
}

uint64_t *mdb_midl_xmerge(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = *result;
  v4 = *result + *a2;
  *result = -1;
  if (v2)
  {
    v5 = result[v3];
    v6 = v4;
    do
    {
      v7 = a2[v2];
      if (v5 >= v7)
      {
        v9 = v3;
        v8 = v6;
      }

      else
      {
        do
        {
          v8 = v6 - 1;
          result[v6] = v5;
          v9 = v3 - 1;
          v5 = result[v3 - 1];
          --v6;
          --v3;
        }

        while (v5 < v7);
      }

      v6 = v8 - 1;
      result[v8] = v7;
      v3 = v9;
      --v2;
    }

    while (v2);
  }

  *result = v4;
  return result;
}

int *mdb_midl_sort(int *result)
{
  LODWORD(v1) = 0;
  v27 = *MEMORY[0x29EDCA608];
  v2 = result + 2;
  v3 = *result;
  LODWORD(v4) = 1;
LABEL_2:
  while (2)
  {
    v5 = v4 + 1;
    while (v3 - v4 > 7)
    {
      v6 = (v3 + v4) >> 1;
      v7 = *&result[2 * v6];
      *&result[2 * v6] = *&result[2 * v5];
      *&result[2 * v5] = v7;
      v8 = *&result[2 * v4];
      v9 = *&result[2 * v3];
      if (v8 < v9)
      {
        *&result[2 * v4] = v9;
        *&result[2 * v3] = v8;
        v7 = *&result[2 * v5];
        v9 = v8;
      }

      if (v7 < v9)
      {
        *&result[2 * v5] = v9;
        *&result[2 * v3] = v7;
        v7 = *&result[2 * v5];
      }

      v10 = *&result[2 * v4];
      if (v10 < v7)
      {
        *&result[2 * v4] = v7;
        *&result[2 * v5] = v10;
        v7 = v10;
      }

      LODWORD(v11) = v4 + 1;
      v12 = v3;
      while (1)
      {
        v13 = &v2[2 * v11];
        v11 = v11;
        do
        {
          ++v11;
          v15 = *v13;
          v13 += 2;
          v14 = v15;
        }

        while (v15 > v7);
        v16 = v12 + 1;
        v17 = &result[2 * v12];
        do
        {
          v19 = *(v17 - 1);
          v17 -= 2;
          v18 = v19;
          --v12;
          --v16;
        }

        while (v19 < v7);
        if (v16 <= v11)
        {
          break;
        }

        *(v13 - 1) = v18;
        *v17 = v14;
      }

      *&result[2 * v5] = v18;
      *v17 = v7;
      v20 = v1;
      v1 = v1 + 2;
      v21 = &v26[v20];
      if (v3 - v11 + 1 < v12 - v4)
      {
        v26[v1] = v12 - 1;
        v21[1] = v4;
        LODWORD(v4) = v11;
        goto LABEL_2;
      }

      v26[v1] = v3;
      v21[1] = v11;
      v3 = v12 - 1;
    }

    if (v3 > v4)
    {
      v4 = v4;
      do
      {
        v22 = v4++;
        v23 = *&result[2 * v4];
        if (v22 >= 1)
        {
          while (1)
          {
            v24 = &result[2 * v22];
            if (*v24 >= v23)
            {
              break;
            }

            *(v24 + 1) = *v24;
            v25 = __OFSUB__(v22, 1);
            LODWORD(v22) = v22 - 1;
            if ((v22 < 0) ^ v25 | (v22 == 0))
            {
              LODWORD(v22) = 0;
              break;
            }
          }
        }

        *&v2[2 * v22] = v23;
      }

      while (v4 != v3);
    }

    if (v1)
    {
      LODWORD(v4) = v26[v1 - 1];
      v3 = v26[v1];
      LODWORD(v1) = v1 - 2;
      continue;
    }

    return result;
  }
}

uint64_t mdb_mid2l_search(unsigned int *a1, unint64_t a2)
{
  v2 = *a1;
  if (!*a1)
  {
    return 1;
  }

  v3 = 0;
  do
  {
    v4 = v2 >> 1;
    v5 = v3 + (v2 >> 1) + 1;
    v6 = *&a1[4 * v5];
    if (v6 <= a2)
    {
      if (v6 >= a2)
      {
        return v5;
      }

      v4 = v2 + ~v4;
      v3 += (v2 >> 1) + 1;
    }

    v2 = v4;
  }

  while (v4);
  if (v6 >= a2)
  {
    return v5;
  }

  else
  {
    return (v5 + 1);
  }
}

uint64_t mdb_mid2l_insert(unint64_t *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  if (*a1)
  {
    v4 = 0;
    v5 = *a1;
    do
    {
      v6 = v5 >> 1;
      v7 = v4 + (v5 >> 1) + 1;
      v8 = a1[2 * v7];
      if (v8 <= v2)
      {
        if (v8 >= v2)
        {
          goto LABEL_9;
        }

        v6 = v5 + ~v6;
        v4 += (v5 >> 1) + 1;
      }

      LODWORD(v5) = v6;
    }

    while (v6);
    if (v8 < v2)
    {
      ++v7;
    }

LABEL_9:
    if (!v7)
    {
      return 4294967294;
    }
  }

  else
  {
    v7 = 1;
  }

  if (v3 >= v7 && a1[2 * v7] == v2)
  {
    return 0xFFFFFFFFLL;
  }

  if (v3 > 0x1FFFE)
  {
    return 4294967294;
  }

  v10 = v3 + 1;
  *a1 = v3 + 1;
  if (v7 < v3 + 1)
  {
    v11 = &a1[2 * v3 + 2];
    do
    {
      *v11 = *(v11 - 1);
      v11 -= 2;
      --v10;
    }

    while (v7 < v10);
  }

  v9 = 0;
  *&a1[2 * v7] = *a2;
  return v9;
}

__n128 mdb_mid2l_append(unint64_t *a1, __n128 *a2)
{
  if (*a1 <= 0x1FFFE)
  {
    v2 = *a1 + 1;
    *a1 = v2;
    result = *a2;
    *&a1[2 * v2] = *a2;
  }

  return result;
}

const char *mdb_version(_DWORD *a1, _DWORD *a2, _DWORD *a3)
{
  if (a1)
  {
    *a1 = 0;
  }

  if (a2)
  {
    *a2 = 9;
  }

  if (a3)
  {
    *a3 = 29;
  }

  return "LMDB 0.9.29: (March 16, 2021)";
}

uint64_t mdb_env_create(void *a1)
{
  v2 = malloc_type_calloc(1uLL, 0x108uLL, 0x10B00408373FFB5uLL);
  if (!v2)
  {
    return 12;
  }

  v3 = v2;
  v2[6] = 126;
  *(v2 + 4) = 0x200000002;
  *v2 = -1;
  v2[2] = -1;
  *(v2 + 29) = -1;
  *(v2 + 30) = -1;
  v2[10] = getpid();
  v4 = sysconf(29);
  result = 0;
  v3[5] = v4;
  *a1 = v3;
  return result;
}

uint64_t mdb_env_set_mapsize(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 56);
  if (!v4)
  {
    goto LABEL_12;
  }

  if (*(a1 + 96))
  {
    return 22;
  }

  v6 = *(a1 + 72 + 8 * (*(*(a1 + 72) + 128) < *(*(a1 + 80) + 128)));
  if (!a2)
  {
    v2 = *(v6 + 16);
  }

  v7 = *(a1 + 16) + *(a1 + 16) * *(v6 + 120);
  if (v2 <= v7)
  {
    v2 = v7;
  }

  munmap(v4, *(a1 + 112));
  *(a1 + 112) = v2;
  v8 = (*(a1 + 12) & 1) != 0 ? *(a1 + 56) : 0;
  result = sub_299095258(a1, v8);
  if (!result)
  {
LABEL_12:
    *(a1 + 112) = v2;
    v9 = *(a1 + 16);
    result = 0;
    if (v9)
    {
      *(a1 + 128) = v2 / v9;
    }
  }

  return result;
}

uint64_t sub_299095258(uint64_t a1, char *a2)
{
  v4 = *(a1 + 12);
  if ((v4 & 0x80000) != 0)
  {
    if (ftruncate(*a1, *(a1 + 112)) < 0)
    {
      return *__error();
    }

    v5 = 3;
  }

  else
  {
    v5 = 1;
  }

  v6 = mmap(a2, *(a1 + 112), v5, 1, *a1, 0);
  *(a1 + 56) = v6;
  if (v6 == -1)
  {
    *(a1 + 56) = 0;
    return *__error();
  }

  if ((v4 & 0x800000) != 0)
  {
    madvise(v6, *(a1 + 112), 1);
    v6 = *(a1 + 56);
  }

  if (a2 && v6 != a2)
  {
    return 16;
  }

  v7 = 0;
  v8 = &v6[*(a1 + 16) + 16];
  *(a1 + 72) = v6 + 16;
  *(a1 + 80) = v8;
  return v7;
}

uint64_t mdb_env_set_maxdbs(uint64_t a1, int a2)
{
  if (*(a1 + 56))
  {
    return 22;
  }

  result = 0;
  *(a1 + 36) = a2 + 2;
  return result;
}

uint64_t mdb_env_set_maxreaders(uint64_t a1, int a2)
{
  result = 22;
  if (a2)
  {
    if (!*(a1 + 56))
    {
      result = 0;
      *(a1 + 24) = a2;
    }
  }

  return result;
}

uint64_t mdb_env_get_maxreaders(uint64_t a1, _DWORD *a2)
{
  result = 22;
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *a2 = *(a1 + 24);
    }
  }

  return result;
}

uint64_t mdb_env_open(uint64_t a1, const char *a2, unsigned int a3, uint64_t a4)
{
  v26 = -1;
  v4 = 22;
  if ((a3 & 0xFE00BFFE) != 0)
  {
    return v4;
  }

  if (*a1 != -1)
  {
    return v4;
  }

  v24 = 0;
  v25 = 0;
  v9 = *(a1 + 12) | a3;
  v4 = sub_2990956A8(a2, v9, &v24);
  if (v4)
  {
    return v4;
  }

  if ((v9 & 0x20000) != 0)
  {
    v9 &= ~0x80000u;
  }

  else
  {
    v10 = malloc_type_malloc(0x100008uLL, 0x100004000313F17uLL);
    if (!v10)
    {
      *(a1 + 200) = 0;
LABEL_29:
      *(a1 + 12) = v9 | 0x20000000;
LABEL_30:
      v4 = 12;
LABEL_31:
      sub_299095FAC(a1, v26);
      goto LABEL_32;
    }

    *v10 = xmmword_2990981C0;
    *(a1 + 200) = v10 + 8;
    v22 = malloc_type_calloc(0x20000uLL, 0x10uLL, 0x108004057E67DB5uLL);
    *(a1 + 208) = v22;
    if (!v22)
    {
      goto LABEL_29;
    }
  }

  *(a1 + 12) = v9 | 0x20000000;
  *(a1 + 48) = strdup(a2);
  *(a1 + 136) = malloc_type_calloc(*(a1 + 36), 0x30uLL, 0x1080040226B62D8uLL);
  *(a1 + 144) = malloc_type_calloc(*(a1 + 36), 2uLL, 0x1000040BDFB0063uLL);
  v11 = malloc_type_calloc(*(a1 + 36), 4uLL, 0x100004052888210uLL);
  *(a1 + 152) = v11;
  v12 = *(a1 + 136);
  if (!v12 || !*(a1 + 48))
  {
    goto LABEL_30;
  }

  v4 = 12;
  if (!*(a1 + 144) || !v11)
  {
    goto LABEL_31;
  }

  *(v12 + 16) = sub_29908D9A8;
  if ((v9 & 0x420000) == 0 && (v13 = sub_299095734(a1, &v24, a4, &v26), v13) || ((v14 = v9 & 0x20000, (v9 & 0x20000) != 0) ? (v15 = 0) : (v15 = 514), (v13 = sub_299095B28(a1, &v24, v15, a4, a1), v13) || (v9 & 0x420000) == 0x20000 && (v13 = sub_299095734(a1, &v24, a4, &v26), v13) || (v13 = sub_299095C14(a1), v13) || (v9 & 0xA0000) == 0 && (v13 = sub_299095B28(a1, &v24, 20971521, a4, (a1 + 8)), v13)))
  {
    v4 = v13;
    goto LABEL_31;
  }

  if (v26 >= 1)
  {
    v23 = sub_299095F08(a1, &v26);
    if (!(v23 | v14))
    {
      goto LABEL_25;
    }

    v4 = v23;
    if (v23)
    {
      goto LABEL_31;
    }
  }

  else
  {
    if (!v14)
    {
LABEL_25:
      v16 = *(a1 + 36);
      v17 = malloc_type_calloc(1uLL, *(a1 + 16), 0x7B17FFD2uLL);
      *(a1 + 88) = v17;
      if (v17)
      {
        v18 = malloc_type_calloc(1uLL, 61 * v16 + 136, 0xBDB793D3uLL);
        if (v18)
        {
          v4 = 0;
          v19 = *(a1 + 36);
          v20 = &v18[6 * v19 + 17];
          v21 = v20 + 8 * v19;
          v18[12] = v21;
          v18[13] = v20;
          v18[14] = v21 + 4 * v19;
          v18[4] = a1;
          v18[10] = *(a1 + 136);
          v18[11] = v18 + 17;
          *(v18 + 31) = 1;
          *(a1 + 104) = v18;
          goto LABEL_32;
        }
      }

      goto LABEL_31;
    }

    v4 = 0;
  }

LABEL_32:
  if (HIDWORD(v24))
  {
    free(v25);
  }

  return v4;
}

uint64_t sub_2990956A8(const char *a1, int a2, uint64_t a3)
{
  v5 = ~a2 & 0x404000;
  *(a3 + 4) = 0;
  v6 = strlen(a1);
  *a3 = v6;
  if (v5)
  {
    v8 = malloc_type_malloc(v6 + 10, 0x2195FA71uLL);
    *(a3 + 8) = v8;
    if (v8)
    {
      *(a3 + 4) = 1;
      strcpy(v8, a1);
      return 0;
    }

    else
    {
      return 12;
    }
  }

  else
  {
    result = 0;
    *(a3 + 8) = a1;
  }

  return result;
}

uint64_t sub_299095734(uint64_t a1, int *a2, uint64_t a3, int *a4)
{
  v25 = *MEMORY[0x29EDCA608];
  result = sub_299095B28(a1, a2, 16777734, a3, (a1 + 4));
  if (result)
  {
    if (result != 30)
    {
      return result;
    }

    if ((*(a1 + 14) & 2) == 0)
    {
      return 30;
    }

    return 0;
  }

  if ((*(a1 + 14) & 0x20) == 0)
  {
    result = pthread_key_create((a1 + 160), sub_299093370);
    if (result)
    {
      return result;
    }

    *(a1 + 12) |= 0x10000000u;
  }

  result = sub_299096F00(a1, a4);
  if (!result)
  {
    v8 = lseek(*(a1 + 4), 0, 2);
    if (v8 == -1)
    {
      return *__error();
    }

    v9 = ((*(a1 + 24) - 1) << 6) + 192;
    if (v8 >= v9 || *a4 < 1)
    {
      *(a1 + 24) = ((v8 + 0x3FFFFFFF40) >> 6) + 1;
      v9 = v8;
    }

    else if (ftruncate(*(a1 + 4), ((*(a1 + 24) - 1) << 6) + 192))
    {
      return *__error();
    }

    v10 = mmap(0, v9, 3, 1, *(a1 + 4), 0);
    if (v10 == -1)
    {
      return *__error();
    }

    *(a1 + 64) = v10;
    if (*a4 >= 1)
    {
      memset(&v23, 0, sizeof(v23));
      v21 = 0;
      if (!fstat(*(a1 + 4), &v23))
      {
        v13 = 0;
        LODWORD(v21) = v23.st_dev;
        st_ino = v23.st_ino;
        v14 = 0xCBF29CE484222325;
        do
        {
          v14 = 0x100000001B3 * (v14 ^ *(&v21 + v13++));
        }

        while (v13 != 16);
        v15 = 0;
        v16 = v14;
        do
        {
          v24[v15++] = a0123456789abcd[v16 % 0x55];
          v16 /= 0x55uLL;
        }

        while (v15 != 5);
        v17 = HIDWORD(v14);
        for (i = 5; i != 10; ++i)
        {
          v24[i] = a0123456789abcd[v17 % 0x55];
          v17 /= 0x55uLL;
        }

        v24[10] = 0;
        snprintf((*(a1 + 64) + 8), 0x1FuLL, "/MDBr%s", v24);
        snprintf((*(a1 + 64) + 64), 0x1FuLL, "/MDBw%s", v24);
        sem_unlink((*(a1 + 64) + 8));
        sem_unlink((*(a1 + 64) + 64));
        v19 = sem_open((*(a1 + 64) + 8), 2560, a3, 1, v21, st_ino);
        *(a1 + 232) = v19;
        if (v19 != -1)
        {
          v20 = sem_open((*(a1 + 64) + 64), 2560, a3, 1);
          *(a1 + 240) = v20;
          if (v20 != -1)
          {
            result = 0;
            **(a1 + 64) = -1091583778;
            *(*(a1 + 64) + 4) = 65537;
            *(*(a1 + 64) + 40) = 0;
            *(*(a1 + 64) + 48) = 0;
            return result;
          }
        }
      }

      return *__error();
    }

    if (*v10 != -1091583778)
    {
      return 4294936503;
    }

    if (v10[1] != 65537)
    {
      return 4294936502;
    }

    result = *__error();
    if (result <= 0x23 && ((1 << result) & 0x800002001) != 0)
    {
      v11 = sem_open((*(a1 + 64) + 8), 0);
      *(a1 + 232) = v11;
      if (v11 != -1)
      {
        v12 = sem_open((*(a1 + 64) + 64), 0);
        *(a1 + 240) = v12;
        if (v12 != -1)
        {
          return 0;
        }
      }

      return *__error();
    }
  }

  return result;
}

uint64_t sub_299095B28(unsigned int *a1, int *a2, int a3, uint64_t a4, int *a5)
{
  if (a2[1])
  {
    strcpy((*(a2 + 1) + *a2), (&(&off_29EF06920)[2 * (a3 == 16777734)])[(a1[3] >> 14) & 1]);
  }

  v10 = open(*(a2 + 1), a3 & 0x1400A03, a4);
  v11 = v10;
  if (v10 == -1)
  {
    result = *__error();
  }

  else
  {
    if (a3 == 16779777 && a1[4] >= a1[5])
    {
      fcntl(v10, 48, 1);
    }

    result = 0;
  }

  *a5 = v11;
  return result;
}

uint64_t sub_299095C14(uint64_t a1)
{
  v2 = 0;
  v25 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 12);
  memset(v14, 0, 136);
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = 1;
  __buf = 0u;
  while (1)
  {
    v5 = v4;
    v6 = pread(*a1, &__buf, 0x98uLL, v2);
    if (v6 != 152)
    {
      break;
    }

    result = 4294936503;
    if ((BYTE10(__buf) & 8) == 0 || v16 != -1091583778)
    {
      goto LABEL_17;
    }

    if (DWORD1(v16) != 1)
    {
      result = 4294936502;
      goto LABEL_17;
    }

    if (!v2 || v24 > v14[16])
    {
      *v14 = v16;
      *&v14[8] = v20;
      *&v14[6] = v19;
      *&v14[4] = v18;
      *&v14[2] = v17;
      v14[16] = v24;
      *&v14[14] = v23;
      *&v14[12] = v22;
      *&v14[10] = v21;
    }

    v4 = 0;
    v8 = v14[3];
    v2 += LODWORD(v14[3]);
    if ((v5 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  if (v2 | v6)
  {
    if (v6 < 0)
    {
      result = *__error();
      if (!result)
      {
        v8 = v14[3];
LABEL_10:
        *(a1 + 16) = v8;
        v9 = *(a1 + 112);
        v10 = 1;
        goto LABEL_22;
      }
    }

    else
    {
      result = 4294936503;
    }
  }

  else
  {
    result = 2;
  }

LABEL_17:
  if (result != 2)
  {
    return result;
  }

  v10 = 0;
  v8 = *(a1 + 20);
  if (v8 >= 0x8000)
  {
    v8 = 0x8000;
  }

  *(a1 + 16) = v8;
  memset(&v14[3], 0, 112);
  *&v14[1] = 0u;
  v14[0] = 0x1BEEFC0DELL;
  WORD2(v14[3]) = *(a1 + 12) | 8;
  v14[8] = -1;
  v14[2] = 0x100000;
  v9 = *(a1 + 112);
  LODWORD(v14[3]) = v8;
  *&v14[14] = xmmword_2990981F0;
LABEL_22:
  if (!v9)
  {
    v9 = v14[2];
    *(a1 + 112) = v14[2];
  }

  v11 = v8 * v14[15] + v8;
  if (v9 < v11)
  {
    *(a1 + 112) = v11;
    v9 = v11;
  }

  v14[2] = v9;
  if ((v10 & 1) == 0)
  {
    if (v3)
    {
      result = sub_299095258(a1, v14[1]);
      if (!result)
      {
        v14[1] = *(a1 + 56);
        result = sub_299096FC4(a1, v14);
        if (!result)
        {
          goto LABEL_34;
        }
      }

      return result;
    }

    result = sub_299096FC4(a1, v14);
    if (result)
    {
      return result;
    }

    goto LABEL_28;
  }

  if ((v3 & 1) == 0)
  {
LABEL_28:
    v12 = 0;
    goto LABEL_33;
  }

  v12 = v14[1];
LABEL_33:
  result = sub_299095258(a1, v12);
  if (!result)
  {
LABEL_34:
    result = 0;
    v13 = *(a1 + 16);
    *(a1 + 216) = ((v13 - 16) >> 3) - 1;
    *(a1 + 220) = (((v13 - 16) >> 1) & 0x7FFFFFFE) - 2;
    *(a1 + 128) = *(a1 + 112) / v13;
  }

  return result;
}

uint64_t sub_299095F08(uint64_t a1, int *a2)
{
  *(*(a1 + 64) + 40) = *(*(a1 + 72 + 8 * (*(*(a1 + 72) + 128) < *(*(a1 + 80) + 128))) + 128);
  v7 = 0x100000000;
  v6 = xmmword_2990981E0;
  do
  {
    result = fcntl(*(a1 + 4), 8, &v6);
    if (!result)
    {
      break;
    }

    result = *__error();
  }

  while (result == 4);
  if (result)
  {
    v5 = -1;
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_299095FAC(uint64_t result, int a2)
{
  v18 = a2;
  if ((*(result + 15) & 0x20) != 0)
  {
    v2 = a2;
    v3 = result;
    v4 = *(result + 136);
    if (v4)
    {
      v5 = *(v3 + 36);
      if (v5 >= 3)
      {
        v6 = v5 + 1;
        v7 = 48 * v5 - 40;
        do
        {
          free(*(*(v3 + 136) + v7));
          --v6;
          v7 -= 48;
        }

        while (v6 > 3);
        v4 = *(v3 + 136);
      }

      free(v4);
    }

    free(*(v3 + 88));
    free(*(v3 + 152));
    free(*(v3 + 144));
    free(*(v3 + 48));
    free(*(v3 + 208));
    free(*(v3 + 104));
    v8 = *(v3 + 200);
    if (v8)
    {
      free((v8 - 8));
    }

    if ((*(v3 + 15) & 0x10) != 0)
    {
      pthread_key_delete(*(v3 + 160));
    }

    v9 = *(v3 + 56);
    if (v9)
    {
      munmap(v9, *(v3 + 112));
    }

    v10 = *(v3 + 8);
    if (v10 != -1)
    {
      close(v10);
    }

    if (*v3 != -1)
    {
      close(*v3);
    }

    if (*(v3 + 64))
    {
      v11 = getpid();
      v12 = *(v3 + 28);
      if (v12 >= 1)
      {
        v13 = v12 + 1;
        v14 = (v12 << 6) + 72;
        do
        {
          v15 = *(v3 + 64);
          if (*(v15 + v14) == v11)
          {
            *(v15 + v14) = 0;
          }

          --v13;
          v14 -= 64;
        }

        while (v13 > 1);
      }

      v16 = *(v3 + 232);
      if (v16 != -1)
      {
        sem_close(v16);
        v17 = *(v3 + 240);
        if (v17 != -1)
        {
          sem_close(v17);
        }

        if (!v2)
        {
          sub_299096F00(v3, &v18);
          v2 = v18;
        }

        if (v2 >= 1)
        {
          sem_unlink((*(v3 + 64) + 8));
          sem_unlink((*(v3 + 64) + 64));
        }
      }

      munmap(*(v3 + 64), ((*(v3 + 24) - 1) << 6) + 192);
    }

    result = *(v3 + 4);
    if (result != -1)
    {
      result = close(result);
    }

    *(v3 + 12) &= 0xCFFFFFFF;
  }

  return result;
}

void mdb_env_close(void *a1)
{
  if (a1)
  {
    while (1)
    {
      v3 = a1[24];
      if (!v3)
      {
        break;
      }

      a1[24] = *v3;
      free(v3);
    }

    sub_299095FAC(a1, 0);

    free(a1);
  }
}

size_t mdb_env_copyfd2(sem_t **a1, int a2, char a3)
{
  v74 = *MEMORY[0x29EDCA608];
  if (a3)
  {
    v73 = 0;
    v71 = 0u;
    v72 = 0u;
    *v69 = 0u;
    v70 = 0u;
    memset(&v68, 0, sizeof(v68));
    *v66 = 0u;
    memset(&v67, 0, sizeof(v67));
    v64 = 0;
    v65 = 0;
    v63 = 0;
    v5 = pthread_mutex_init(&v67, 0);
    if (v5)
    {
      return v5;
    }

    v9 = pthread_cond_init(&v68, 0);
    if (v9)
    {
      v5 = v9;
      pthread_mutex_destroy(&v67);
      return v5;
    }

    *&memptr.st_dev = 0;
    v14 = malloc_type_posix_memalign(&memptr, *(a1 + 5), 0x200000uLL, 0xCDCB143FuLL);
    if (v14)
    {
      v5 = v14;
      goto LABEL_24;
    }

    v15 = *&memptr.st_dev;
    v69[0] = *&memptr.st_dev;
    bzero(*&memptr.st_dev, 0x200000uLL);
    *&v72 = 2;
    v69[1] = (v15 + 0x100000);
    v66[0] = a1;
    DWORD2(v72) = a2;
    v5 = pthread_create(&v64, 0, sub_299097120, v66);
    if (v5)
    {
LABEL_24:
      free(v69[0]);
      pthread_cond_destroy(&v68);
      pthread_mutex_destroy(&v67);
      if (!v5)
      {
        return HIDWORD(v73);
      }

      return v5;
    }

    v24 = mdb_txn_begin(a1, 0, 0x20000, &v65);
    if (v24)
    {
      v34 = v65;
      goto LABEL_68;
    }

    v25 = v69[0];
    bzero(v69[0], (2 * *(a1 + 4)));
    *v25 = 0;
    v25[5] = 8;
    *(v25 + 2) = 0x1BEEFC0DELL;
    *(v25 + 4) = a1[14];
    v26 = *(a1 + 4);
    *(v25 + 10) = v26;
    v25[22] = *(a1 + 6) | 8;
    *(v25 + 10) = -1;
    *(v25 + 8) = xmmword_2990981F0;
    *(v25 + 3) = *(a1[9] + 1);
    v27 = v69[0] + v26;
    *v27 = 1;
    *(v27 + 5) = 8;
    *(v27 + 1) = *(v25 + 1);
    v28 = *(v25 + 2);
    v29 = *(v25 + 3);
    v30 = *(v25 + 4);
    *(v27 + 5) = *(v25 + 5);
    *(v27 + 4) = v30;
    *(v27 + 3) = v29;
    *(v27 + 2) = v28;
    v31 = *(v25 + 6);
    v32 = *(v25 + 7);
    v33 = *(v25 + 8);
    *(v27 + 18) = *(v25 + 18);
    *(v27 + 8) = v33;
    *(v27 + 7) = v32;
    *(v27 + 6) = v31;
    v34 = v65;
    v35 = v65[11];
    v63 = *(v35 + 88);
    if (v63 == -1)
    {
      v36 = *(v35 + 52);
      *(v27 + 46) = v36;
      v37 = -1;
      if (!v36)
      {
LABEL_65:
        LODWORD(v71) = 2 * *(a1 + 4);
        v66[1] = v34;
        v24 = sub_299097274(v66, &v63, 0);
        if (!v24)
        {
          if (v63 == v37)
          {
LABEL_69:
            sub_299097828(v66, 17);
            v5 = pthread_join(v64, 0);
            mdb_txn_abort(v34);
            goto LABEL_24;
          }

          v24 = -30784;
        }

LABEL_68:
        HIDWORD(v73) = v24;
        goto LABEL_69;
      }
    }

    else
    {
      v62 = 0;
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v47 = 0u;
      memset(&memptr, 0, sizeof(memptr));
      v45[0] = 0;
      v45[1] = 0;
      v43 = 0;
      v44 = 0;
      sub_29908C704(&memptr, v65, 0, 0);
      if ((*(*&memptr.st_rdev + 124) & 0x13) != 0)
      {
LABEL_61:
        v24 = -30782;
        goto LABEL_68;
      }

      v38 = 0;
      while (1)
      {
        v24 = sub_29908E3AC(&memptr, v45, &v43, 8);
        if ((memptr.st_ctimespec.tv_sec & 0x800000000) != 0)
        {
          HIDWORD(memptr.st_ctimespec.tv_sec) &= ~8u;
        }

        if (v24)
        {
          break;
        }

        v38 += *v44;
        if ((*(*&memptr.st_rdev + 124) & 0x13) != 0)
        {
          goto LABEL_61;
        }
      }

      if (v24 != -30798)
      {
        goto LABEL_68;
      }

      v39 = v34[11];
      v37 = v34[2] + ~(*(v39 + 8) + v38 + *(v39 + 16) + *(v39 + 24));
      *(v27 + 17) = v37;
      v40 = *(v39 + 48);
      v41 = *(v39 + 64);
      v42 = *(v39 + 80);
      *(v27 + 104) = v41;
      *(v27 + 88) = v40;
      *(v27 + 15) = v42;
      *(v27 + 16) = v37;
    }

    *(v27 + 18) = 1;
    goto LABEL_65;
  }

  v66[0] = 0;
  v5 = mdb_txn_begin(a1, 0, 0x20000, v66);
  if (!v5)
  {
    if (a1[8])
    {
      v6 = v66[0];
      sub_29908B60C(v66[0], 4);
      v7 = a1[30];
      while (sem_wait(v7))
      {
        v5 = *__error();
        if (v5 != 4)
        {
          if (v5)
          {
            goto LABEL_31;
          }

          break;
        }
      }

      v8 = sub_29908AED0(v6);
      if (v8)
      {
        v5 = v8;
        sem_post(v7);
LABEL_31:
        mdb_txn_abort(v66[0]);
        return v5;
      }
    }

    else
    {
      v7 = 0;
    }

    v10 = *(a1 + 4);
    v11 = (2 * v10);
    v12 = a1[7];
    if (v11)
    {
      v5 = (2 * v10);
      while (1)
      {
        v13 = write(a2, v12, v5);
        if (v13 < 0)
        {
          v5 = *__error();
          goto LABEL_28;
        }

        if (!v13)
        {
          break;
        }

        v12 = (v12 + v13);
        v5 -= v13;
        if (!v5)
        {
          goto LABEL_28;
        }
      }

      v5 = 5;
    }

    else
    {
      v5 = 0;
    }

LABEL_28:
    if (v7)
    {
      sem_post(v7);
    }

    if (v5)
    {
      goto LABEL_31;
    }

    v17 = *(v66[0] + 2);
    v18 = *(a1 + 4);
    v19 = *a1;
    memset(&memptr, 0, sizeof(memptr));
    if (fstat(v19, &memptr))
    {
      v5 = *__error();
      if (v5)
      {
        goto LABEL_31;
      }

      st_size = 0;
    }

    else
    {
      st_size = memptr.st_size;
    }

    if (v17 * v18 < st_size)
    {
      st_size = v17 * v18;
    }

    v21 = st_size - v11;
    if (st_size == v11)
    {
      v5 = 0;
    }

    else
    {
      while (1)
      {
        if (v21 >= 0x40000000)
        {
          v22 = 0x40000000;
        }

        else
        {
          v22 = v21;
        }

        v23 = write(a2, v12, v22);
        if (v23 < 0)
        {
          v5 = *__error();
          goto LABEL_31;
        }

        if (!v23)
        {
          break;
        }

        v5 = 0;
        v12 = (v12 + v23);
        v21 -= v23;
        if (!v21)
        {
          goto LABEL_31;
        }
      }

      v5 = 5;
    }

    goto LABEL_31;
  }

  return v5;
}

size_t mdb_env_copy2(unsigned int *a1, const char *a2, char a3)
{
  v9 = 0;
  v10 = 0;
  v8 = -1;
  v5 = sub_2990956A8(a2, a1[3] | 0x400000, &v9);
  if (!v5)
  {
    v5 = sub_299095B28(a1, &v9, 16779777, 438, &v8);
    if (HIDWORD(v9))
    {
      free(v10);
    }

    if (!v5)
    {
      v7 = v8;
      v5 = mdb_env_copyfd2(a1, v8, a3);
      if (close(v7) < 0 && !v5)
      {
        return *__error();
      }
    }
  }

  return v5;
}

uint64_t mdb_env_set_flags(uint64_t a1, int a2, int a3)
{
  if ((a2 & 0xFEEAFFFF) != 0)
  {
    return 22;
  }

  result = 0;
  if (a3)
  {
    v5 = *(a1 + 12) | a2;
  }

  else
  {
    v5 = *(a1 + 12) & ~a2;
  }

  *(a1 + 12) = v5;
  return result;
}

uint64_t mdb_env_get_flags(uint64_t a1, int *a2)
{
  result = 22;
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *a2 = *(a1 + 12) & 0x1FF4001;
    }
  }

  return result;
}

uint64_t mdb_env_set_userctx(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 22;
  }

  result = 0;
  *(a1 + 248) = a2;
  return result;
}

uint64_t mdb_env_get_userctx(uint64_t result)
{
  if (result)
  {
    return *(result + 248);
  }

  return result;
}

uint64_t mdb_env_set_assert(uint64_t a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return 22;
  }
}

uint64_t mdb_env_get_path(uint64_t a1, void *a2)
{
  result = 22;
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *a2 = *(a1 + 48);
    }
  }

  return result;
}

uint64_t mdb_env_get_fd(_DWORD *a1, _DWORD *a2)
{
  result = 22;
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *a2 = *a1;
    }
  }

  return result;
}

__n128 mdb_env_stat(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      v2 = *(a1 + 72 + 8 * (*(*(a1 + 72) + 128) < *(*(a1 + 80) + 128)));
      v3 = *(v2 + 78);
      *a2 = *(a1 + 16);
      *(a2 + 4) = v3;
      *(a2 + 8) = *(v2 + 80);
      result = *(v2 + 96);
      *(a2 + 24) = result;
    }
  }

  return result;
}

uint64_t mdb_env_info(uint64_t a1, uint64_t a2)
{
  v2 = 22;
  if (a1 && a2)
  {
    v4 = *(a1 + 72);
    v5 = *(a1 + 80);
    v3 = a1 + 72;
    v6 = *(v3 + 8 * (*(v4 + 128) < *(v5 + 128)));
    *a2 = v6[1];
    *(a2 + 16) = v6[15];
    *(a2 + 24) = v6[16];
    *(a2 + 8) = *(v3 + 40);
    *(a2 + 32) = *(v3 - 48);
    v7 = *(v3 - 8);
    if (v7)
    {
      v8 = *(v7 + 48);
    }

    else
    {
      v8 = 0;
    }

    v2 = 0;
    *(a2 + 36) = v8;
  }

  return v2;
}

__n128 mdb_stat(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a1 && a3 && *(a1 + 120) > a2 && (*(*(a1 + 112) + a2) & 8) != 0 && (*(a1 + 124) & 0x13) == 0)
  {
    if ((*(*(a1 + 112) + a2) & 2) != 0)
    {
      v11 = 0;
      memset(v10, 0, sizeof(v10));
      memset(v9, 0, sizeof(v9));
      sub_29908C704(v10, a1, a2, v9);
    }

    v6 = *(a1 + 88) + 48 * a2;
    v7 = *(v6 + 6);
    *a3 = *(*(a1 + 32) + 16);
    *(a3 + 4) = v7;
    *(a3 + 8) = *(v6 + 8);
    result = *(v6 + 24);
    *(a3 + 24) = result;
  }

  return result;
}

uint64_t mdb_reader_list(uint64_t a1, uint64_t (*a2)(const char *, uint64_t), uint64_t a3)
{
  v16 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1)
  {
    v6 = a2;
    if (a2)
    {
      v7 = *(a1 + 64);
      if (v7)
      {
        v8 = *(v7 + 48);
        if (v8)
        {
          v9 = 0;
          v10 = 0;
          result = 0;
          v11 = -v8;
          v12 = v7 + 144;
          while (2)
          {
            for (i = v12 + (v9++ << 6); !*(i - 8); i += 64)
            {
              ++v9;
              if (v11 + v9 == 1)
              {
                if (v10)
                {
                  return result;
                }

                return v6("(no active readers)\n", a3);
              }
            }

            v14 = v6;
            if (*(i - 16) == -1)
            {
              snprintf(__str, 0x3FuLL, "%10d %zx -\n");
            }

            else
            {
              snprintf(__str, 0x3FuLL, "%10d %zx %zu\n");
            }

            if ((v10 & 1) != 0 || (result = v14("    pid     thread     txnid\n", a3), (result & 0x80000000) == 0))
            {
              result = v14(__str, a3);
              if ((result & 0x80000000) == 0)
              {
                v10 = 1;
                v6 = v14;
                if (v11 + v9)
                {
                  continue;
                }
              }
            }

            break;
          }
        }

        else
        {
          return v6("(no active readers)\n", a3);
        }
      }

      else
      {

        return a2("(no reader locks)\n", a3);
      }
    }
  }

  return result;
}

uint64_t mdb_reader_check(uint64_t a1, _DWORD *a2)
{
  if (!a1)
  {
    return 22;
  }

  if (a2)
  {
    *a2 = 0;
  }

  v4 = *(a1 + 64);
  if (!v4)
  {
    return 0;
  }

  v5 = *(a1 + 232);
  v6 = *(v4 + 48);
  v7 = malloc_type_malloc(4 * (v6 + 1), 0x100004052888210uLL);
  if (!v7)
  {
    return 12;
  }

  v8 = v7;
  *v7 = 0;
  if (v6)
  {
    v9 = 0;
    v10 = 0;
    v11 = *(a1 + 64);
    v12 = v11 + 128;
    v30 = v11 + 136;
    do
    {
      v13 = *(v12 + (v9 << 6) + 8);
      if (v13 && v13 != *(a1 + 40))
      {
        if (*v8)
        {
          v14 = 0;
          v15 = *v8;
          do
          {
            while (1)
            {
              v16 = v15 >> 1;
              v17 = v14 + (v15 >> 1) + 1;
              v18 = v13 - v8[v17];
              if (v18 >= 0)
              {
                break;
              }

              v15 >>= 1;
              if (!v16)
              {
                goto LABEL_17;
              }
            }

            if (!v18)
            {
              goto LABEL_40;
            }

            v15 += ~v16;
            v14 = v17;
          }

          while (v15);
LABEL_17:
          if (v18 <= 0)
          {
            v19 = v17;
          }

          else
          {
            v19 = v17 + 1;
          }
        }

        else
        {
          v19 = 1;
        }

        v20 = *v8 + 1;
        *v8 = v20;
        if (v20 > v19)
        {
          v21 = &v8[v20];
          v22 = v21;
          do
          {
            --v20;
            v23 = *--v22;
            *v21 = v23;
            v21 = v22;
          }

          while (v20 > v19);
        }

        v8[v20] = v13;
        if (!sub_299092974(a1, 7, v13))
        {
          if (v5)
          {
            while (sem_wait(v5))
            {
              v24 = *__error();
              if (v24 != 4)
              {
                if (v24)
                {
                  goto LABEL_47;
                }

                break;
              }
            }

            if (sub_299092974(a1, 7, v13))
            {
              v25 = v6;
            }

            else
            {
              v25 = v9;
            }
          }

          else
          {
            v25 = v9;
          }

          if (v25 < v6)
          {
            v26 = v25;
            v27 = v6 - v25;
            v28 = (v30 + (v26 << 6));
            do
            {
              if (*v28 == v13)
              {
                *v28 = 0;
                ++v10;
              }

              v28 += 16;
              --v27;
            }

            while (v27);
          }

          if (v5)
          {
            sem_post(v5);
          }
        }
      }

LABEL_40:
      ++v9;
    }

    while (v9 != v6);
  }

  else
  {
    v10 = 0;
  }

  v24 = 0;
LABEL_47:
  free(v8);
  if (a2)
  {
    *a2 = v10;
  }

  return v24;
}

uint64_t sub_299096F00(uint64_t a1, _DWORD *a2)
{
  v6 = 0x300000000;
  v5 = xmmword_2990981E0;
  do
  {
    if (!fcntl(*(a1 + 4), 8, &v5))
    {
      goto LABEL_5;
    }

    result = *__error();
  }

  while (result == 4);
  if (!result)
  {
LABEL_5:
    LODWORD(result) = 1;
LABEL_6:
    *a2 = result;
    return 0;
  }

  if ((*a2 & 0x80000000) != 0)
  {
    WORD2(v6) = 1;
    while (1)
    {
      LODWORD(result) = fcntl(*(a1 + 4), 9, &v5);
      if (!result)
      {
        goto LABEL_6;
      }

      result = *__error();
      if (result != 4)
      {
        if (!result)
        {
          goto LABEL_6;
        }

        return result;
      }
    }
  }

  return result;
}

uint64_t sub_299096FC4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = malloc_type_calloc(2uLL, v4, 0xA3121FC2uLL);
  if (!v5)
  {
    return 12;
  }

  v6 = v5;
  *v5 = 0;
  *(v5 + 5) = 8;
  *(v5 + 1) = *a2;
  v7 = *(a2 + 16);
  v8 = *(a2 + 32);
  v9 = *(a2 + 48);
  *(v5 + 5) = *(a2 + 64);
  *(v5 + 4) = v9;
  *(v5 + 3) = v8;
  *(v5 + 2) = v7;
  v10 = *(a2 + 80);
  v11 = *(a2 + 96);
  v12 = *(a2 + 112);
  *(v5 + 18) = *(a2 + 128);
  *(v5 + 8) = v12;
  *(v5 + 7) = v11;
  *(v5 + 6) = v10;
  v13 = &v5[v4];
  *v13 = 1;
  *(v13 + 5) = 8;
  *(v13 + 1) = *a2;
  v14 = *(a2 + 16);
  v15 = *(a2 + 32);
  v16 = *(a2 + 48);
  *(v13 + 5) = *(a2 + 64);
  *(v13 + 4) = v16;
  *(v13 + 3) = v15;
  *(v13 + 2) = v14;
  v17 = *(a2 + 80);
  v18 = *(a2 + 96);
  v19 = *(a2 + 112);
  *(v13 + 18) = *(a2 + 128);
  *(v13 + 8) = v19;
  *(v13 + 7) = v18;
  *(v13 + 6) = v17;
  v20 = (2 * v4);
  while (1)
  {
    v21 = pwrite(*a1, v6, v20, 0);
    if (v21 != -1)
    {
      break;
    }

    if (*__error() != 4)
    {
      goto LABEL_11;
    }
  }

  if (v21 < 0)
  {
LABEL_11:
    v22 = *__error();
    goto LABEL_12;
  }

  if (v20 == v21)
  {
    v22 = 0;
  }

  else
  {
    v22 = 28;
  }

LABEL_12:
  free(v6);
  return v22;
}

uint64_t sub_299097120(uint64_t a1)
{
  v14 = 4096;
  v2 = pthread_sigmask(1, &v14, 0);
  if (v2)
  {
    *(a1 + 196) = v2;
  }

  pthread_mutex_lock((a1 + 16));
  v3 = 0;
  v4 = a1 + 160;
  v5 = a1 + 168;
  while (1)
  {
    while (1)
    {
      v6 = *(a1 + 192);
      if (v6)
      {
        break;
      }

      pthread_cond_wait((a1 + 80), (a1 + 16));
    }

    if (v6 == 16)
    {
      break;
    }

    v7 = *(v4 + 4 * v3);
    v8 = *(a1 + 128 + 8 * v3);
    while (1)
    {
      if (v7 >= 1)
      {
        while (1)
        {
          if (*(a1 + 196))
          {
            goto LABEL_20;
          }

          v9 = write(*(a1 + 184), v8, v7);
          if (v9 < 0)
          {
            break;
          }

          if (!v9)
          {
            v11 = 5;
LABEL_19:
            *(a1 + 196) = v11;
            goto LABEL_20;
          }

          v8 += v9 & 0x7FFFFFFF;
          v10 = __OFSUB__(v7, v9);
          v7 -= v9;
          if ((v7 < 0) ^ v10 | (v7 == 0))
          {
            goto LABEL_20;
          }
        }

        v11 = *__error();
        if (!v11)
        {
          goto LABEL_20;
        }

        if (v11 == 32)
        {
          v13 = 0;
          sigwait(&v14, &v13);
          v11 = 32;
        }

        goto LABEL_19;
      }

LABEL_20:
      v7 = *(v5 + 4 * v3);
      if (!v7)
      {
        break;
      }

      v8 = *(a1 + 144 + 8 * v3);
      *(v5 + 4 * v3) = 0;
    }

    *(v4 + 4 * v3) = 0;
    v3 ^= 1uLL;
    --*(a1 + 192);
    pthread_cond_signal((a1 + 80));
  }

  pthread_mutex_unlock((a1 + 16));
  return 0;
}

uint64_t sub_299097274(uint64_t *a1, unint64_t *a2, char a3)
{
  v71 = 0;
  memset(v70, 0, sizeof(v70));
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v4 = *a2;
  if (v4 == -1)
  {
    return 0;
  }

  LOWORD(v70[0]) = 1;
  *(&v67 + 1) = a1[1];
  v7 = sub_29908F7A4(*(&v67 + 1), v4, v70 + 1, 0);
  if (v7)
  {
    return v7;
  }

  v7 = sub_29909310C(&v66, 0, 4);
  if (v7)
  {
    return v7;
  }

  v10 = malloc_type_malloc(*(*a1 + 16) * LOWORD(v70[0]), 0x15B65AEuLL);
  if (!v10)
  {
    return 12;
  }

  v11 = v10;
  v12 = WORD1(v70[0]);
  if (WORD1(v70[0]))
  {
    v13 = 0;
    LODWORD(v14) = *(*a1 + 16);
    v15 = v10;
    do
    {
      sub_2990932E0(v15, *(v70 + v13 + 1), v14);
      *(v70 + v13 + 1) = v15;
      v14 = *(*a1 + 16);
      v15 += v14;
      ++v13;
      v12 = WORD1(v70[0]);
    }

    while (v13 < WORD1(v70[0]));
  }

  else
  {
    v15 = v10;
  }

  if (!LOWORD(v70[0]))
  {
LABEL_59:
    v8 = 0;
    goto LABEL_60;
  }

  v60 = *(a1 + 47);
  v16 = a3 & 4;
  v61 = a1 + 20;
  v17 = a1 + 16;
  while (1)
  {
    v18 = *(v70 + v12 + 1);
    v19 = v18[5];
    v20 = v12;
    while (2)
    {
      v65 = v18;
      v21 = v18[6] - 16;
      v22 = v21 >> 1;
      if ((v19 & 2) != 0)
      {
        v58 = v11;
        v59 = v17;
        v57 = v16;
        if (!(v19 & 0x20 | v16) && v21 >= 2)
        {
          if (v22 <= 1)
          {
            v29 = 1;
          }

          else
          {
            v29 = v22;
          }

          v30 = 16;
          do
          {
            v31 = v65;
            v32 = v65 + *(v65 + v30);
            v33 = *(v32 + 2);
            if (v33)
            {
              __src[0] = 0;
              if (v65 != v15)
              {
                *(v70 + WORD1(v70[0]) + 1) = v15;
                sub_2990932E0(v15, v31, *(*a1 + 16));
                v65 = v15;
                v32 = &v15[*&v15[v30]];
              }

              v41 = &v32[*(v32 + 3)];
              v42 = *(v41 + 1);
              *(v41 + 1) = a1[22];
              v37 = sub_29908F7A4(*(&v67 + 1), v42, __src, 0);
              if (v37)
              {
                goto LABEL_61;
              }

              v43 = *(v61 + v60);
              if (v43 >= 0x100000)
              {
                v37 = sub_299097828(a1, 1);
                if (v37)
                {
                  goto LABEL_61;
                }

                v44 = *(a1 + 47);
                v43 = *(v61 + v44);
                v60 = *(a1 + 47);
              }

              else
              {
                v44 = v60;
              }

              v45 = (v59[v44] + v43);
              v46 = __src[0];
              memcpy(v45, __src[0], *(*a1 + 16));
              v47 = a1[22];
              *v45 = v47;
              a1[22] = v47 + v46[3];
              v48 = *a1;
              *(v61 + v44) += *(*a1 + 16);
              v49 = v46[3];
              if (v49 >= 2)
              {
                *(a1 + v44 + 42) = *(v48 + 16) * (v49 - 1);
                a1[v44 + 18] = v46 + *(v48 + 16);
                v37 = sub_299097828(a1, 1);
                if (v37)
                {
                  goto LABEL_61;
                }

                v60 = *(a1 + 47);
              }
            }

            else if ((v33 & 2) != 0)
            {
              v63 = 0u;
              v64 = 0u;
              *__src = 0u;
              if (v65 != v15)
              {
                *(v70 + WORD1(v70[0]) + 1) = v15;
                sub_2990932E0(v15, v31, *(*a1 + 16));
                v65 = v15;
                v32 = &v15[*&v15[v30]];
              }

              v34 = &v32[*(v32 + 3) + 8];
              v35 = *v34;
              v36 = *(v34 + 2);
              v63 = *(v34 + 1);
              v64 = v36;
              *__src = v35;
              *(a1 + 47) = v60;
              v37 = sub_299097274(a1, &v64 + 1, *(v32 + 2) & 4);
              if (v37)
              {
                goto LABEL_61;
              }

              v60 = *(a1 + 47);
              v38 = &v32[*(v32 + 3) + 8];
              v40 = v63;
              v39 = v64;
              *v38 = *__src;
              *(v38 + 1) = v40;
              *(v38 + 2) = v39;
            }

            v30 += 2;
            --v29;
          }

          while (v29);
        }
      }

      else
      {
        v23 = *(&v70[16] + v20 + 4) + 1;
        *(&v70[16] + v20 + 4) = v23;
        if (v22 > v23)
        {
          for (i = &v18[v23]; ; i = &v18[*(&v70[16] + WORD1(v70[0]) + 4)])
          {
            v25 = sub_29908F7A4(*(&v67 + 1), *(v18 + i[8]) | (*(v18 + i[8] + 4) << 32), &v65, 0);
            if (v25)
            {
              v8 = v25;
              goto LABEL_60;
            }

            v26 = ++WORD1(v70[0]);
            v27 = ++LOWORD(v70[0]);
            v28 = WORD1(v70[0]);
            *(&v70[16] + WORD1(v70[0]) + 4) = 0;
            v18 = v65;
            v19 = *(v65 + 5);
            if ((v19 & 1) == 0)
            {
              break;
            }

            sub_2990932E0(*(v70 + v28 + 1), v65, *(*a1 + 16));
          }

          *(v70 + v28 + 1) = v65;
          v20 = v26;
          if (v27)
          {
            continue;
          }

          goto LABEL_59;
        }

        v58 = v11;
        v59 = v17;
        v57 = v16;
      }

      break;
    }

    v50 = *(v61 + v60);
    if (v50 >= 0x100000)
    {
      v37 = sub_299097828(a1, 1);
      v17 = v59;
      if (v37)
      {
LABEL_61:
        v8 = v37;
LABEL_63:
        v11 = v58;
        goto LABEL_60;
      }

      v51 = *(a1 + 47);
      v50 = *(v61 + v51);
      v60 = *(a1 + 47);
    }

    else
    {
      v51 = v60;
      v17 = v59;
    }

    v52 = v17[v51] + v50;
    sub_2990932E0(v52, v65, *(*a1 + 16));
    v53 = a1[22];
    a1[22] = v53 + 1;
    *v52 = v53;
    *(v61 + v51) += *(*a1 + 16);
    v54 = WORD1(v70[0]);
    if (!WORD1(v70[0]))
    {
      v8 = 0;
      *a2 = *v52;
      goto LABEL_63;
    }

    v55 = *(v70 + WORD1(v70[0]));
    v56 = v55 + *(v55 + 2 * *(&v70[16] + WORD1(v70[0]) + 3) + 16);
    *v56 = *v52;
    *(v56 + 4) = *(v52 + 4);
    v11 = v58;
    v16 = v57;
    if (!LOWORD(v70[0]))
    {
      goto LABEL_59;
    }

    if (!--LOWORD(v70[0]))
    {
      break;
    }

    v12 = v54 - 1;
    WORD1(v70[0]) = v12;
  }

  v8 = 0;
  DWORD1(v70[0]) &= ~1u;
LABEL_60:
  free(v11);
  return v8;
}

uint64_t sub_299097828(uint64_t a1, int a2)
{
  pthread_mutex_lock((a1 + 16));
  *(a1 + 192) += a2;
  pthread_cond_signal((a1 + 80));
  while ((*(a1 + 192) & 2) != 0)
  {
    pthread_cond_wait((a1 + 80), (a1 + 16));
  }

  pthread_mutex_unlock((a1 + 16));
  v4 = *(a1 + 188) ^ a2 & 1;
  *(a1 + 188) = v4;
  *(a1 + 4 * v4 + 160) = 0;
  return *(a1 + 196);
}