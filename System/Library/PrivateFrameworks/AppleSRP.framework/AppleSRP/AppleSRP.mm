char *t_serveropenraw(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = malloc_type_malloc(0x668uLL, 0x103004022E4922EuLL);
  if (v4)
  {
    memset(&v9, 0, sizeof(v9));
    *(v4 + 12) = cstr_new();
    CC_SHA1_Init((v4 + 392));
    *v4 = *(a2 + 8);
    *(v4 + 1) = v4 + 548;
    __memcpy_chk();
    CC_SHA1_Init(&v9);
    CC_SHA1_Update(&v9, *(v4 + 1), *v4);
    CC_SHA1_Final(md, &v9);
    *(v4 + 2) = *(a2 + 24);
    *(v4 + 3) = v4 + 804;
    __memcpy_chk();
    CC_SHA1_Init(&v9);
    CC_SHA1_Update(&v9, *(v4 + 3), *(v4 + 4));
    CC_SHA1_Final(v10, &v9);
    for (i = 0; i != 20; ++i)
    {
      md[i] ^= v10[i];
    }

    CC_SHA1_Update((v4 + 392), md, 0x14u);
    CC_SHA1_Init(&v9);
    v6 = strlen(*a1);
    CC_SHA1_Update(&v9, *a1, v6);
    CC_SHA1_Final(md, &v9);
    CC_SHA1_Update((v4 + 392), md, 0x14u);
    *(v4 + 4) = *(a1 + 8);
    *(v4 + 5) = v4 + 1060;
    __memcpy_chk();
    v7 = *(a1 + 24);
    *(v4 + 6) = v7;
    *(v4 + 7) = v4 + 1316;
    __memcpy_chk();
    CC_SHA1_Update((v4 + 392), v4 + 1316, v7);
    *(v4 + 9) = v4 + 1348;
    *(v4 + 11) = v4 + 1380;
    CC_SHA1_Init((v4 + 200));
    CC_SHA1_Init((v4 + 104));
    CC_SHA1_Init((v4 + 296));
  }

  return v4;
}

void t_servergenexp(unsigned int *a1)
{
  if (*a1 >= 0x20uLL)
  {
    v2 = 32;
  }

  else
  {
    v2 = *a1;
  }

  *(a1 + 8) = v2;
  t_random(*(a1 + 9), v2);
  BigIntegerFromBytes(*(a1 + 9), a1[16]);
  BigIntegerFromBytes(*(a1 + 1), *a1);
  BigIntegerFromBytes(*(a1 + 3), a1[4]);
  BigIntegerFromInt(0);
  BigIntegerModExp();
  BigIntegerFromBytes(*(a1 + 5), a1[8]);
  BigIntegerAdd();
  BigIntegerCmp();
}

uint64_t t_servergetkey(unsigned int *a1, const void **a2)
{
  v13 = *MEMORY[0x277D85DE8];
  memset(&c, 0, sizeof(c));
  CC_SHA1_Update((a1 + 98), a2[1], *a2);
  CC_SHA1_Update((a1 + 98), *(a1 + 11), a1[20]);
  CC_SHA1_Init(&c);
  CC_SHA1_Update(&c, *(a1 + 11), a1[20]);
  CC_SHA1_Final(md, &c);
  v4.i32[0] = *md;
  v5 = vmovl_u8(v4).u64[0];
  if (vuzp1_s8(v5, v5).u32[0])
  {
    v6 = BigIntegerFromBytes(md, 4);
    CC_SHA1_Update((a1 + 26), a2[1], *a2);
    CC_SHA1_Update((a1 + 50), a2[1], *a2);
    BigIntegerFromBytes(*(a1 + 1), *a1);
    BigIntegerFromBytes(*(a1 + 9), a1[16]);
    v7 = BigIntegerFromBytes(*(a1 + 5), a1[8]);
    v8 = BigIntegerFromBytes(a2[1], *a2);
    v9 = BigIntegerFromInt(0);
    BigIntegerModExp();
    BigIntegerFromInt(0);
    BigIntegerModMul();
    BigIntegerFree(v8);
    BigIntegerFree(v7);
    BigIntegerFree(v6);
    BigIntegerFree(v9);
    BigIntegerCmpInt();
  }

  return 0;
}

uint64_t t_serververify(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  CC_SHA1_Final(md, (a1 + 296));
  if (*md == *a2 && v12 == *(a2 + 8) && v13 == *(a2 + 16))
  {
    v9 = (a1 + 528);
    v10 = (a1 + 104);
    goto LABEL_16;
  }

  CC_SHA1_Final(md, (a1 + 392));
  v6 = bswap64(*md);
  v7 = bswap64(*a2);
  if (v6 == v7)
  {
    v6 = bswap64(v12);
    v7 = bswap64(*(a2 + 8));
    if (v6 == v7)
    {
      v6 = bswap32(v13);
      v7 = bswap32(*(a2 + 16));
      if (v6 == v7)
      {
        CC_SHA1_Update((a1 + 200), md, 0x14u);
        CC_SHA1_Update((a1 + 200), (a1 + 488), 0x28u);
        v9 = (a1 + 528);
        v10 = (a1 + 200);
LABEL_16:
        CC_SHA1_Final(v9, v10);
        return 0;
      }
    }
  }

  if (v6 < v7)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 1;
  }
}

void t_serverclose(uint64_t a1)
{
  *(a1 + 1348) = 0u;
  *(a1 + 1364) = 0u;
  *(a1 + 1060) = 0u;
  *(a1 + 1076) = 0u;
  *(a1 + 1092) = 0u;
  *(a1 + 1108) = 0u;
  *(a1 + 1124) = 0u;
  *(a1 + 1140) = 0u;
  *(a1 + 1156) = 0u;
  *(a1 + 1172) = 0u;
  *(a1 + 1188) = 0u;
  *(a1 + 1204) = 0u;
  *(a1 + 1220) = 0u;
  *(a1 + 1236) = 0u;
  *(a1 + 1252) = 0u;
  *(a1 + 1268) = 0u;
  *(a1 + 1284) = 0u;
  *(a1 + 1300) = 0u;
  *(a1 + 1316) = 0u;
  *(a1 + 1332) = 0u;
  *(a1 + 520) = 0;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  cstr_clear_free(*(a1 + 96));

  free(a1);
}

void *cstr_new_alloc()
{
  result = malloc_type_malloc(0x28uLL, 0x103004021F519B8uLL);
  if (result)
  {
    result[1] = 0;
    result[2] = 0;
    *result = &cstr_empty_string;
    *(result + 6) = 1;
    result[4] = 0;
  }

  return result;
}

void *cstr_new()
{
  result = malloc_type_malloc(0x28uLL, 0x103004021F519B8uLL);
  if (result)
  {
    result[1] = 0;
    result[2] = 0;
    *result = &cstr_empty_string;
    *(result + 6) = 1;
    result[4] = 0;
  }

  return result;
}

void *cstr_dup_alloc(const void **a1)
{
  v2 = malloc_type_malloc(0x28uLL, 0x103004021F519B8uLL);
  v3 = v2;
  if (v2)
  {
    v2[1] = 0;
    v2[2] = 0;
    *v2 = &cstr_empty_string;
    *(v2 + 6) = 1;
    v2[4] = 0;
    cstr_setn(v2, *a1, a1[1]);
  }

  return v3;
}

uint64_t cstr_setn(uint64_t a1, const void *a2, size_t a3)
{
  if ((cstr_alloc(a1, a3 + 1) & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  *(*a1 + a3) = 0;
  if (a2)
  {
    if (a3)
    {
      memmove(*a1, a2, a3);
    }
  }

  *(a1 + 8) = a3;
  return 1;
}

void *cstr_create(const char *a1)
{
  v2 = strlen(a1);

  return cstr_createn(a1, v2);
}

void *cstr_createn(const void *a1, int a2)
{
  v4 = malloc_type_malloc(0x28uLL, 0x103004021F519B8uLL);
  v5 = v4;
  if (v4)
  {
    v4[1] = 0;
    v4[2] = 0;
    *v4 = &cstr_empty_string;
    *(v4 + 6) = 1;
    v4[4] = 0;
    cstr_setn(v4, a1, a2);
  }

  return v5;
}

void cstr_clear_free(_DWORD *a1)
{
  v2 = a1[6] - 1;
  a1[6] = v2;
  if (!v2)
  {
    v4 = *(a1 + 2);
    if (v4)
    {
      bzero(*a1, v4);
      free(*a1);
    }

    free(a1);
  }
}

void cstr_free(_DWORD *a1)
{
  v2 = a1[6] - 1;
  a1[6] = v2;
  if (!v2)
  {
    if (*(a1 + 2))
    {
      free(*a1);
    }

    free(a1);
  }
}

void cstr_empty(uint64_t a1)
{
  if (*(a1 + 16))
  {
    free(*a1);
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &cstr_empty_string;
}

uint64_t cstr_set(uint64_t a1, char *__s)
{
  v4 = strlen(__s);

  return cstr_setn(a1, __s, v4);
}

uint64_t cstr_alloc(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 >= a2)
  {
    return 0;
  }

  v4 = 2 * v2;
  if (v4 <= a2)
  {
    v4 = a2;
  }

  if (v4 <= 4)
  {
    v5 = 4;
  }

  else
  {
    v5 = v4;
  }

  v6 = malloc_type_malloc(v5, 0x100004077774924uLL);
  if (!v6)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = v6;
  if (*a1)
  {
    v6[*(a1 + 8)] = 0;
    if (*(a1 + 16))
    {
      v8 = *(a1 + 8);
      if (v8)
      {
        memcpy(v6, *a1, v8);
      }

      free(*a1);
    }
  }

  *a1 = v7;
  *(a1 + 16) = v5;
  return 1;
}

uint64_t cstr_set_length(void *a1, int a2)
{
  v3 = a2;
  v4 = a1[1];
  if (v4 > a2)
  {
    *(*a1 + a2) = 0;
LABEL_6:
    a1[1] = v3;
    return 1;
  }

  if (v4 >= a2)
  {
    return 0;
  }

  if ((cstr_alloc(a1, a2 + 1) & 0x80000000) == 0)
  {
    bzero((*a1 + a1[1]), v3 - a1[1] + 1);
    goto LABEL_6;
  }

  return 0xFFFFFFFFLL;
}

uint64_t cstr_append(uint64_t *a1, char *__s)
{
  v4 = strlen(__s);

  return cstr_appendn(a1, __s, v4);
}

uint64_t cstr_appendn(uint64_t *a1, const void *a2, size_t a3)
{
  if ((cstr_alloc(a1, a3 + a1[1] + 1) & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  memcpy((*a1 + a1[1]), a2, a3);
  v6 = *a1;
  v7 = a1[1] + a3;
  a1[1] = v7;
  *(v6 + v7) = 0;
  return 1;
}

uint64_t SRP_initialize_library()
{
  if ((library_initialized & 1) == 0)
  {
    BigIntegerCtxFree();
    library_initialized = 1;
  }

  return 0;
}

uint64_t SRP_finalize_library(uint64_t a1, uint64_t a2)
{
  if (library_initialized == 1)
  {
    library_initialized = 0;
    BigIntegerCtxFree();
  }

  return 0;
}

void *SRP_SERVER_LOOKUP_new(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0xA0040AFF93C70uLL);
  v3 = v2;
  if (v2)
  {
    *v2 = a1;
    v2[1] = 0;
    v4 = *(a1 + 8);
    if (v4)
    {
      if (v4(v2))
      {
        free(v3);
        return 0;
      }
    }
  }

  return v3;
}

uint64_t SRP_SERVER_LOOKUP_free(void *a1)
{
  v2 = *(*a1 + 16);
  if (v2)
  {
    v2(a1);
  }

  free(a1);
  return 0;
}

void *SRP_new(uint64_t a1)
{
  v2 = malloc_type_malloc(0x90uLL, 0x10A004039E137EAuLL);
  v3 = v2;
  if (v2)
  {
    v2[1] = 0;
    *(v2 + 1) = cstr_new();
    v3[14] = BigIntegerCtxNew();
    v3[15] = 0;
    *(v3 + 1) = 0u;
    *(v3 + 2) = 0u;
    *(v3 + 3) = 0u;
    *(v3 + 4) = 0u;
    v3[10] = 0;
    v3[11] = cstr_new();
    v3[12] = a1;
    v3[13] = 0;
    v3[16] = 0;
    v3[17] = 0;
    v4 = *(a1 + 8);
    if (v4)
    {
      if (v4(v3))
      {
        free(v3);
        return 0;
      }
    }
  }

  return v3;
}

uint64_t SRP_free(void *a1, uint64_t a2)
{
  v3 = *(a1[12] + 16);
  if (v3)
  {
    v3(a1, a2);
  }

  v4 = a1[1];
  if (v4)
  {
    cstr_clear_free(v4);
  }

  v5 = a1[2];
  if (v5)
  {
    BigIntegerFree(v5);
  }

  if (a1[15])
  {
    BigIntegerCtxFree();
  }

  v6 = a1[3];
  if (v6)
  {
    BigIntegerFree(v6);
  }

  v7 = a1[4];
  if (v7)
  {
    cstr_clear_free(v7);
  }

  v8 = a1[5];
  if (v8)
  {
    BigIntegerClearFree(v8);
  }

  v9 = a1[6];
  if (v9)
  {
    BigIntegerClearFree(v9);
  }

  v10 = a1[7];
  if (v10)
  {
    BigIntegerFree(v10);
  }

  v11 = a1[8];
  if (v11)
  {
    BigIntegerClearFree(v11);
  }

  v12 = a1[9];
  if (v12)
  {
    BigIntegerFree(v12);
  }

  v13 = a1[10];
  if (v13)
  {
    BigIntegerClearFree(v13);
  }

  if (a1[14])
  {
    BigIntegerCtxFree();
  }

  v14 = a1[11];
  if (v14)
  {
    cstr_clear_free(v14);
  }

  free(a1);
  return 0;
}

uint64_t SRP_set_username(uint64_t a1, char *a2)
{
  cstr_set(*(a1 + 8), a2);
  result = *(a1 + 136);
  if (result)
  {
    v4 = *(*result + 24);

    return v4();
  }

  return result;
}

uint64_t SRP_set_user_raw(uint64_t a1, const void *a2, int a3)
{
  cstr_setn(*(a1 + 8), a2, a3);
  result = *(a1 + 136);
  if (result)
  {
    v5 = *(*result + 24);

    return v5();
  }

  return result;
}

uint64_t SRP_set_params(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const void *a6, uint64_t a7)
{
  result = 0xFFFFFFFFLL;
  if (a2 && a4 && a6)
  {
    *(a1 + 16) = BigIntegerFromBytes(a2, a3);
    if (*(a1 + 4))
    {
      *(a1 + 120) = BigIntegerCtxNew();
    }

    *(a1 + 24) = BigIntegerFromBytes(a4, a5);
    v15 = *(a1 + 32);
    if (!v15)
    {
      v15 = cstr_new();
      *(a1 + 32) = v15;
    }

    cstr_setn(v15, a6, a7);
    if (BigIntegerBitLen(*(a1 + 16)) >= srp_modulus_min_bits)
    {
      v16 = *(a1 + 128);
      if (!v16 || (result = v16(a1, a2, a3, a4, a5), !result))
      {
        v17 = *(*(a1 + 96) + 24);

        return v17(a1, a2, a3, a4, a5, a6, a7);
      }
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t SRP_set_auth_password(uint64_t a1, char *__s)
{
  v6 = *(*(a1 + 96) + 40);
  v4 = strlen(__s);

  return v6(a1, __s, v4);
}

uint64_t SRP_use_engine()
{
  if (BigIntegerUseEngine())
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t srp6a_client_init(void *a1)
{
  *a1 = 0x30000000CLL;
  v2 = malloc_type_malloc(0xE8uLL, 0x10000403E2B8178uLL);
  a1[13] = v2;
  CC_SHA1_Init(v2);
  CC_SHA1_Init((a1[13] + 96));
  return 0;
}

uint64_t srp6_client_finish(uint64_t a1)
{
  v1 = *(a1 + 104);
  if (v1)
  {
    *(v1 + 224) = 0;
    *(v1 + 192) = 0u;
    *(v1 + 208) = 0u;
    *(v1 + 160) = 0u;
    *(v1 + 176) = 0u;
    *(v1 + 128) = 0u;
    *(v1 + 144) = 0u;
    *(v1 + 96) = 0u;
    *(v1 + 112) = 0u;
    *(v1 + 64) = 0u;
    *(v1 + 80) = 0u;
    *(v1 + 32) = 0u;
    *(v1 + 48) = 0u;
    *v1 = 0u;
    *(v1 + 16) = 0u;
    free(*(a1 + 104));
  }

  return 0;
}

uint64_t srp6_client_params(uint64_t a1, const void *a2, CC_LONG a3, const void *a4, CC_LONG a5, const void *a6, CC_LONG a7)
{
  v19 = *MEMORY[0x277D85DE8];
  memset(&v16, 0, sizeof(v16));
  CC_SHA1_Init(&v16);
  CC_SHA1_Update(&v16, a2, a3);
  CC_SHA1_Final(md, &v16);
  CC_SHA1_Init(&v16);
  CC_SHA1_Update(&v16, a4, a5);
  CC_SHA1_Final(v17, &v16);
  for (i = 0; i != 20; ++i)
  {
    md[i] ^= v17[i];
  }

  CC_SHA1_Update(*(a1 + 104), md, 0x14u);
  CC_SHA1_Init(&v16);
  CC_SHA1_Update(&v16, **(a1 + 8), *(*(a1 + 8) + 8));
  CC_SHA1_Final(md, &v16);
  CC_SHA1_Update(*(a1 + 104), md, 0x14u);
  CC_SHA1_Update(*(a1 + 104), a6, a7);
  return 0;
}

uint64_t srp6_client_auth(void *a1, uint64_t a2, uint64_t a3)
{
  a1[6] = BigIntegerFromBytes(a2, a3);
  a1[5] = BigIntegerFromInt(0);
  BigIntegerModExp();
  return 0;
}

uint64_t srp6_client_passwd(uint64_t a1, const void *a2, CC_LONG a3)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(&v7, 0, sizeof(v7));
  CC_SHA1_Init(&v7);
  CC_SHA1_Update(&v7, **(a1 + 8), *(*(a1 + 8) + 8));
  CC_SHA1_Update(&v7, ":", 1u);
  CC_SHA1_Update(&v7, a2, a3);
  CC_SHA1_Final(md, &v7);
  CC_SHA1_Init(&v7);
  CC_SHA1_Update(&v7, **(a1 + 32), *(*(a1 + 32) + 8));
  CC_SHA1_Update(&v7, md, 0x14u);
  CC_SHA1_Final(md, &v7);
  memset(&v7, 0, sizeof(v7));
  return SRP_set_authenticator(a1);
}

uint64_t srp6_client_genpub(uint64_t a1, void **a2)
{
  BigIntegerBitLen(*(a1 + 16));
  SRP_get_secret_bits();
  v5 = v4 + 7;
  if (v4 < -7)
  {
    v5 = v4 + 14;
  }

  v6 = v5 >> 3;
  if (a2)
  {
    v7 = *a2;
    if (!*a2)
    {
      v7 = cstr_new();
      *a2 = v7;
    }
  }

  else
  {
    v7 = cstr_new();
  }

  v8 = BigIntegerBitLen(*(a1 + 16));
  v9 = v8 + 7;
  if (v8 < -7)
  {
    v9 = v8 + 14;
  }

  if (v6 > v9 >> 3)
  {
    v10 = BigIntegerBitLen(*(a1 + 16));
    v11 = v10 + 7;
    if (v10 < -7)
    {
      v11 = v10 + 14;
    }

    v6 = v11 >> 3;
  }

  v12 = BigIntegerBitLen(*(a1 + 16));
  v13 = v12 + 7;
  if (v12 < -7)
  {
    v13 = v12 + 14;
  }

  cstr_set_length(v7, v13 >> 3);
  t_random(*v7, v6);
  *(a1 + 64) = BigIntegerFromBytes(*v7, v6);
  BigIntegerBitLen(*(a1 + 16));
  BigIntegerAddInt();
  *(a1 + 56) = BigIntegerFromInt(0);
  BigIntegerModExp();
  BigIntegerToCstr(*(a1 + 56), v7);
  CC_SHA1_Update(*(a1 + 104), *v7, *(v7 + 2));
  CC_SHA1_Update((*(a1 + 104) + 96), *v7, *(v7 + 2));
  if (!a2)
  {
    cstr_clear_free(v7);
  }

  return 0;
}

void srp6a_client_key(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  memset(v4, 0, 96);
  CC_SHA1_Init(v4);
  v2 = cstr_new();
  BigIntegerToCstr(*(a1 + 16), v2);
  CC_SHA1_Update(v4, *v2, *(v2 + 2));
  v3 = *(a1 + 24);
  if ((*(a1 + 4) & 2) != 0)
  {
    BigIntegerToCstrEx(v3, v2, v2[1]);
  }

  else
  {
    BigIntegerToCstr(v3, v2);
  }

  CC_SHA1_Update(v4, *v2, *(v2 + 2));
  CC_SHA1_Final(md, v4);
  cstr_free(v2);
  BigIntegerFromBytes(md, 20);
  BigIntegerCmpInt();
}

uint64_t sub_240F13FA4(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, CC_SHA1_CTX *c, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t ca, uint64_t c_8, uint64_t c_16, uint64_t c_24, uint64_t c_32, uint64_t c_40, uint64_t c_48, uint64_t c_56, uint64_t c_64, uint64_t c_72, uint64_t c_80)
{
  if (a1)
  {
    v36 = BigIntegerBitLen(*(v31 + 16));
    v37 = v36 + 7;
    if (v36 < -7)
    {
      v37 = v36 + 14;
    }

    v38 = v37 >> 3;
    if (v37 >> 3 >= v33)
    {
      memset(v46, 0, 96);
      CC_SHA1_Init(v46);
      v39 = cstr_new();
      v40 = *(v31 + 56);
      if ((*(v31 + 4) & 2) != 0)
      {
        BigIntegerToCstrEx(v40, v39, v38);
        CC_SHA1_Update(v46, *v39, *(v39 + 2));
        v41 = v38 - v33;
        if (v38 > v33)
        {
          v42 = v41;
          memcpy((*v39 + v41), v34, v33);
          bzero(*v39, v42);
          v43 = *v39;
          v44 = v38;
          goto LABEL_10;
        }
      }

      else
      {
        BigIntegerToCstr(v40, v39);
        CC_SHA1_Update(v46, *v39, *(v39 + 2));
      }

      v43 = v34;
      v44 = v33;
LABEL_10:
      CC_SHA1_Update(v46, v43, v44);
      CC_SHA1_Final((v35 - 108), v46);
      *(v31 + 72) = BigIntegerFromBytes(v35 - 108, 20);
      CC_SHA1_Update(*(v31 + 104), v34, v33);
      BigIntegerFromBytes(v34, v33);
      BigIntegerCmp();
    }
  }

  BigIntegerClearFree(v32);
  return 0xFFFFFFFFLL;
}

uint64_t srp6_client_verify(uint64_t a1, uint64_t a2, int a3)
{
  v11 = *MEMORY[0x277D85DE8];
  CC_SHA1_Final(md, (*(a1 + 104) + 96));
  if (a3 == 20 && (*md == *a2 ? (v5 = v9 == *(a2 + 8)) : (v5 = 0), v5 ? (v6 = v10 == *(a2 + 16)) : (v6 = 0), v6))
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t srp6_client_respond(uint64_t a1, unsigned __int8 ***a2)
{
  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = *a2;
  if (!*a2)
  {
    v4 = cstr_new();
    *a2 = v4;
  }

  cstr_set_length(v4, 20);
  CC_SHA1_Final(**a2, *(a1 + 104));
  CC_SHA1_Update((*(a1 + 104) + 96), **a2, *(*a2 + 2));
  CC_SHA1_Update((*(a1 + 104) + 96), (*(a1 + 104) + 192), 0x28u);
  return 0;
}

uint64_t srp6_server_init(void *a1)
{
  *a1 = 0x10000001CLL;
  v2 = malloc_type_malloc(0x1BCuLL, 0x1000040E79818FDuLL);
  a1[13] = v2;
  CC_SHA1_Init(v2);
  CC_SHA1_Init((a1[13] + 96));
  CC_SHA1_Init((a1[13] + 192));
  CC_SHA1_Init((a1[13] + 288));
  return 0;
}

uint64_t srp6_server_finish(uint64_t a1)
{
  v1 = *(a1 + 104);
  if (v1)
  {
    v1[25] = 0u;
    v1[26] = 0u;
    v1[23] = 0u;
    v1[24] = 0u;
    v1[21] = 0u;
    v1[22] = 0u;
    v1[19] = 0u;
    v1[20] = 0u;
    v1[17] = 0u;
    v1[18] = 0u;
    v1[15] = 0u;
    v1[16] = 0u;
    v1[13] = 0u;
    v1[14] = 0u;
    v1[11] = 0u;
    v1[12] = 0u;
    v1[9] = 0u;
    v1[10] = 0u;
    v1[7] = 0u;
    v1[8] = 0u;
    v1[5] = 0u;
    v1[6] = 0u;
    v1[3] = 0u;
    v1[4] = 0u;
    v1[1] = 0u;
    v1[2] = 0u;
    *v1 = 0u;
    *(v1 + 428) = 0u;
    free(*(a1 + 104));
  }

  return 0;
}

uint64_t srp6_server_params(uint64_t a1, const void *a2, CC_LONG a3, const void *a4, CC_LONG a5, const void *a6, CC_LONG a7)
{
  v19 = *MEMORY[0x277D85DE8];
  memset(&v16, 0, sizeof(v16));
  CC_SHA1_Init(&v16);
  CC_SHA1_Update(&v16, a2, a3);
  CC_SHA1_Final(md, &v16);
  CC_SHA1_Init(&v16);
  CC_SHA1_Update(&v16, a4, a5);
  CC_SHA1_Final(v17, &v16);
  for (i = 0; i != 20; ++i)
  {
    md[i] ^= v17[i];
  }

  CC_SHA1_Update((*(a1 + 104) + 96), md, 0x14u);
  CC_SHA1_Init(&v16);
  CC_SHA1_Update(&v16, **(a1 + 8), *(*(a1 + 8) + 8));
  CC_SHA1_Final(md, &v16);
  CC_SHA1_Update((*(a1 + 104) + 96), md, 0x14u);
  CC_SHA1_Update((*(a1 + 104) + 96), a6, a7);
  return 0;
}

uint64_t srp6_server_passwd(uint64_t a1, const void *a2, CC_LONG a3)
{
  v11 = *MEMORY[0x277D85DE8];
  memset(&v7, 0, sizeof(v7));
  CC_SHA1_Init(&v7);
  CC_SHA1_Update(&v7, **(a1 + 8), *(*(a1 + 8) + 8));
  CC_SHA1_Update(&v7, ":", 1u);
  CC_SHA1_Update(&v7, a2, a3);
  CC_SHA1_Final(md, &v7);
  CC_SHA1_Init(&v7);
  CC_SHA1_Update(&v7, **(a1 + 32), *(*(a1 + 32) + 8));
  CC_SHA1_Update(&v7, md, 0x14u);
  CC_SHA1_Final(md, &v7);
  memset(&v7, 0, sizeof(v7));
  *(a1 + 48) = BigIntegerFromBytes(md, 20);
  *md = 0;
  v9 = 0;
  v10 = 0;
  *(a1 + 40) = BigIntegerFromInt(0);
  BigIntegerModExp();
  return 0;
}

uint64_t srp6_server_genpub(void *a1, void **a2)
{
  v4 = BigIntegerFromInt(3u);
  srp6_server_genpub_ex(a1, a2, v4);
  BigIntegerClearFree(v4);
  return 0;
}

uint64_t srp6_server_key(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4)
{
  v4 = a4;
  v18 = *MEMORY[0x277D85DE8];
  v7 = BigIntegerBitLen(*(a1 + 16));
  v8 = v7 + 7;
  if (v7 < -7)
  {
    v8 = v7 + 14;
  }

  v9 = v8 >> 3;
  if (v8 >> 3 >= v4)
  {
    memset(&v16, 0, sizeof(v16));
    CC_SHA1_Update((*(a1 + 104) + 96), a3, v4);
    v10 = cstr_new();
    BigIntegerToCstr(*(a1 + 56), v10);
    CC_SHA1_Update((*(a1 + 104) + 96), *v10, *(v10 + 2));
    CC_SHA1_Update(*(a1 + 104), a3, v4);
    CC_SHA1_Update((*(a1 + 104) + 192), a3, v4);
    CC_SHA1_Init(&v16);
    if ((*(a1 + 4) & 2) == 0)
    {
      CC_SHA1_Update(&v16, a3, v4);
      goto LABEL_11;
    }

    v11 = v9 - v4;
    if (v9 <= v4)
    {
      CC_SHA1_Update(&v16, a3, v4);
      if (v10[1] >= v9)
      {
        goto LABEL_11;
      }

      v13 = v9;
      v12 = *(a1 + 56);
    }

    else
    {
      cstr_set_length(v10, v9);
      memcpy((*v10 + v11), a3, v4);
      bzero(*v10, v11);
      CC_SHA1_Update(&v16, *v10, v9);
      v12 = *(a1 + 56);
      v13 = v9;
    }

    BigIntegerToCstrEx(v12, v10, v13);
LABEL_11:
    CC_SHA1_Update(&v16, *v10, *(v10 + 2));
    CC_SHA1_Final(md, &v16);
    *(a1 + 72) = BigIntegerFromBytes(md, 20);
    BigIntegerFromInt(0);
    BigIntegerModExp();
    v14 = BigIntegerFromBytes(a3, v4);
    BigIntegerFromInt(0);
    BigIntegerModMul();
    BigIntegerFree(v14);
    BigIntegerCmpInt();
  }

  return 0xFFFFFFFFLL;
}

uint64_t srp6_server_verify(uint64_t a1, uint64_t a2, int a3)
{
  v17 = *MEMORY[0x277D85DE8];
  CC_SHA1_Final(md, (*(a1 + 104) + 288));
  if (a3 != 20)
  {
    CC_SHA1_Final(md, (*(a1 + 104) + 96));
    return 0xFFFFFFFFLL;
  }

  v7 = *md == *a2 && v15 == *(a2 + 8) && v16 == *(a2 + 16);
  v8 = *(a1 + 104);
  if (v7)
  {
    v12 = &v8[4].data[3];
    v11 = v8 + 2;
  }

  else
  {
    CC_SHA1_Final(md, v8 + 1);
    if (*md != *a2 || v15 != *(a2 + 8) || v16 != *(a2 + 16))
    {
      return 0xFFFFFFFFLL;
    }

    CC_SHA1_Update(*(a1 + 104), md, 0x14u);
    CC_SHA1_Update(*(a1 + 104), (*(a1 + 104) + 384), 0x28u);
    v11 = *(a1 + 104);
    v12 = &v11[4].data[3];
  }

  CC_SHA1_Final(v12, v11);
  return 0;
}

uint64_t srp6_server_respond(uint64_t a1, uint64_t **a2)
{
  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = *a2;
  if (!*a2)
  {
    v4 = cstr_new();
    *a2 = v4;
  }

  cstr_set_length(v4, 20);
  result = 0;
  v6 = **a2;
  v7 = *(a1 + 104);
  v8 = (v7 + 424);
  LODWORD(v7) = *(v7 + 440);
  *v6 = *v8;
  *(v6 + 16) = v7;
  return result;
}

void srp6_server_genpub_ex(void *a1, void **a2, uint64_t a3)
{
  BigIntegerBitLen(a1[2]);
  SRP_get_secret_bits();
  v6 = v5 + 7;
  if (v5 < -7)
  {
    v6 = v5 + 14;
  }

  v7 = v6 >> 3;
  if (a2)
  {
    v8 = *a2;
    if (!*a2)
    {
      v8 = cstr_new();
      *a2 = v8;
    }
  }

  else
  {
    v8 = cstr_new();
  }

  v9 = BigIntegerBitLen(a1[2]);
  v10 = v9 + 7;
  if (v9 < -7)
  {
    v10 = v9 + 14;
  }

  if (v7 > v10 >> 3)
  {
    v11 = BigIntegerBitLen(a1[2]);
    v12 = v11 + 7;
    if (v11 < -7)
    {
      v12 = v11 + 14;
    }

    v7 = v12 >> 3;
  }

  v13 = BigIntegerBitLen(a1[2]);
  v14 = v13 + 7;
  if (v13 < -7)
  {
    v14 = v13 + 14;
  }

  cstr_set_length(v8, v14 >> 3);
  t_random(*v8, v7);
  a1[8] = BigIntegerFromBytes(*v8, v7);
  a1[7] = BigIntegerFromInt(0);
  BigIntegerMul();
  BigIntegerModExp();
  BigIntegerAdd();
  BigIntegerMod();
  BigIntegerToCstr(a1[7], v8);
  CC_SHA1_Update((a1[13] + 288), *v8, *(v8 + 2));
  if (!a2)
  {

    cstr_clear_free(v8);
  }
}

uint64_t srp6a_server_init(void *a1)
{
  *a1 = 0x30000001CLL;
  v2 = malloc_type_malloc(0x1BCuLL, 0x1000040E79818FDuLL);
  a1[13] = v2;
  CC_SHA1_Init(v2);
  CC_SHA1_Init((a1[13] + 96));
  CC_SHA1_Init((a1[13] + 192));
  CC_SHA1_Init((a1[13] + 288));
  return 0;
}

void srp6a_server_genpub(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  memset(&v4, 0, sizeof(v4));
  CC_SHA1_Init(&v4);
  v2 = cstr_new();
  BigIntegerToCstr(*(a1 + 16), v2);
  CC_SHA1_Update(&v4, *v2, *(v2 + 2));
  v3 = *(a1 + 24);
  if ((*(a1 + 4) & 2) != 0)
  {
    BigIntegerToCstrEx(v3, v2, v2[1]);
  }

  else
  {
    BigIntegerToCstr(v3, v2);
  }

  CC_SHA1_Update(&v4, *v2, *(v2 + 2));
  CC_SHA1_Final(md, &v4);
  cstr_free(v2);
  BigIntegerFromBytes(md, 20);
  BigIntegerCmpInt();
}

uint64_t sub_240F14F70(int a1)
{
  if (a1)
  {
    srp6_server_genpub_ex(v2, v1, v3);
    v4 = 0;
  }

  else
  {
    v4 = 0xFFFFFFFFLL;
  }

  BigIntegerClearFree(v3);
  return v4;
}

uint64_t BigIntegerFromInt(unsigned int a1)
{
  v1 = CCCreateBigNum();
  if (v1)
  {
    CCBigNumSetI();
  }

  return v1;
}

uint64_t BigIntegerToCstr(uint64_t a1, uint64_t *a2)
{
  v3 = CCBigNumBitCount();
  v4 = v3 + 7;
  if (v3 < -7)
  {
    v4 = v3 + 14;
  }

  if ((cstr_set_length(a2, v4 >> 3) & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = CCBigNumToData();
  return (cstr_set_length(a2, v5) >> 31);
}

uint64_t BigIntegerToCstrEx(uint64_t a1, const void **a2, unint64_t a3)
{
  if ((cstr_set_length(a2, a3) & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = CCBigNumToData();
  result = 0;
  if (a3 > v5)
  {
    v7 = a3 - v5;
    memmove(*a2 + v7, *a2, v5);
    bzero(*a2, v7);
    return 0;
  }

  return result;
}

uint64_t BigIntegerToHex(uint64_t a1, char *a2, int a3)
{
  v5 = CCBigNumToHexString();
  strlcpy(a2, v5, a3);
  free(v5);
  return 0;
}

uint64_t BigIntegerToString(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v6 = BigIntegerFromInt(0);
  CCBigNumModI();
  *a2 = b64table[0];
  v7 = a2 + 1;
  BigIntegerFromInt(v4);
  CCBigNumDiv();
  CCBigNumFree();
  v8 = a2 + 1;
  if (MEMORY[0x245CD4380](v6, 0) >= 1)
  {
    v8 = a2 + 1;
    do
    {
      CCBigNumModI();
      *v8++ = b64table[0];
      BigIntegerFromInt(v4);
      CCBigNumDiv();
      CCBigNumFree();
    }

    while (MEMORY[0x245CD4380](v6, 0) > 0);
  }

  CCBigNumFree();
  *v8 = 0;
  v9 = v8 - 1;
  if (v9 > a2)
  {
    do
    {
      v10 = *v9;
      *v9-- = *(v7 - 1);
      *(v7 - 1) = v10;
    }

    while (v9 > v7++);
  }

  return 0;
}

uint64_t BigIntegerDivInt(uint64_t a1, uint64_t a2, unsigned int a3)
{
  BigIntegerFromInt(a3);
  CCBigNumDiv();
  CCBigNumFree();
  return 0;
}

void t_random(uint64_t result, unsigned int a2)
{
  if (a2)
  {
    if (CCRandomCopyBytes())
    {
      abort();
    }
  }
}

_BYTE *t_sessionkey(_BYTE *a1, _BYTE *a2, unint64_t a3)
{
  v24 = *MEMORY[0x277D85DE8];
  if (a3 > 0xFA0)
  {
    return 0;
  }

  v3 = a3;
  v4 = a2;
  if (a3)
  {
    while (!*v4)
    {
      ++v4;
      if (!--v3)
      {
        v4 = &a2[a3];
        break;
      }
    }
  }

  v6 = v3 >> 1;
  v7 = malloc_type_malloc(v3 >> 1, 0x100004077774924uLL);
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  memset(&v22, 0, sizeof(v22));
  if (v3 >= 2)
  {
    v9 = 0;
    v10 = 1;
    v11 = v7;
    do
    {
      *v11++ = v4[v3 + ~v9];
      v12 = v6 > v10++;
      v9 += 2;
    }

    while (v12);
  }

  CC_SHA1_Init(&v22);
  CC_SHA1_Update(&v22, v8, v3 >> 1);
  CC_SHA1_Final(md, &v22);
  v13 = 0;
  v14 = a1;
  do
  {
    *v14 = md[v13];
    v14 += 2;
    ++v13;
  }

  while (v13 != 20);
  if (v3 >= 2)
  {
    v15 = 0;
    v16 = 1;
    v17 = v8;
    do
    {
      *v17++ = v4[v3 - 2 - v15];
      v12 = v6 > v16++;
      v15 += 2;
    }

    while (v12);
  }

  CC_SHA1_Init(&v22);
  CC_SHA1_Update(&v22, v8, v3 >> 1);
  v18 = md;
  CC_SHA1_Final(md, &v22);
  for (i = 1; i != 41; i += 2)
  {
    v20 = *v18++;
    a1[i] = v20;
  }

  bzero(v8, v3 >> 1);
  free(v8);
  return a1;
}

unsigned __int8 *t_mgf1(unsigned __int8 *result, unsigned int a2, const void *a3, CC_LONG a4)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v7 = result;
    v8 = 0;
    v9 = 0;
    memset(&c, 0, sizeof(c));
    while (1)
    {
      data = bswap32(v9);
      CC_SHA1_Init(&c);
      CC_SHA1_Update(&c, a3, a4);
      CC_SHA1_Update(&c, &data, 4u);
      v10 = v8 + 20;
      if (v8 + 20 > a2)
      {
        break;
      }

      result = CC_SHA1_Final(&v7[v8], &c);
      ++v9;
      v8 += 20;
      if (v10 >= a2)
      {
        return result;
      }
    }

    CC_SHA1_Final(md, &c);
    return memcpy(&v7[v8], md, a2 - v8);
  }

  return result;
}

uint64_t t_fromhex(_BYTE *a1, char *__s)
{
  v2 = __s;
  v4 = strlen(__s);
  if ((v4 & 1) == 0)
  {
    v5 = a1;
    if (!v4)
    {
      return (v5 - a1);
    }

    goto LABEL_12;
  }

  v7 = *v2++;
  v6 = v7;
  v8 = v7 - 48;
  v9 = v7 - 97;
  v10 = v7 - 55;
  if ((v7 - 65) >= 6)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10;
  }

  v12 = v6 - 87;
  if (v9 > 5)
  {
    v12 = v11;
  }

  if (v8 >= 0xA)
  {
    LOBYTE(v8) = v12;
  }

  *a1 = v8;
  v5 = a1 + 1;
  if (--v4)
  {
    do
    {
LABEL_12:
      v13 = *v2;
      v14 = v13 - 48;
      v15 = v13 - 97;
      if ((v13 - 65) >= 6)
      {
        v16 = 0;
      }

      else
      {
        v16 = v13 - 55;
      }

      v17 = v13 - 87;
      if (v15 > 5)
      {
        v17 = v16;
      }

      if (v14 < 0xA)
      {
        v17 = v14;
      }

      v18 = 16 * v17;
      v19 = v2[1];
      v20 = v19 - 48;
      v21 = v19 - 97;
      if ((v19 - 65) >= 6)
      {
        v22 = 0;
      }

      else
      {
        v22 = v19 - 55;
      }

      v23 = v19 - 87;
      if (v21 > 5)
      {
        v23 = v22;
      }

      if (v20 < 0xA)
      {
        v23 = v20;
      }

      *v5++ = v23 + v18;
      v2 += 2;
      v4 -= 2;
    }

    while (v4);
  }

  return (v5 - a1);
}

char *t_tohex(char *a1, _BYTE *a2, int a3)
{
  *a1 = 0;
  if (a3)
  {
    v4 = a3;
    v6 = 0;
    v7 = a1;
    do
    {
      if (v6)
      {
        goto LABEL_4;
      }

      if (!*a2)
      {
        v6 = 0;
        goto LABEL_6;
      }

      if (*a2 >= 0x10u)
      {
LABEL_4:
        v8 = 2;
        sprintf(v7, "%.2X");
      }

      else
      {
        v8 = 1;
        sprintf(v7, "%.1X");
      }

      v7 += v8;
      v6 = 1;
LABEL_6:
      ++a2;
      --v4;
    }

    while (v4);
  }

  return a1;
}

char *t_tohexcstr(char **a1, _BYTE *a2, int a3)
{
  cstr_set_length(a1, (2 * a3) | 1);
  v6 = *a1;

  return t_tohex(v6, a2, a3);
}

size_t t_fromb64(void *a1, char *__s)
{
  while (1)
  {
    v4 = *__s;
    v5 = v4 > 0x20;
    v6 = (1 << v4) & 0x100000600;
    if (v5 || v6 == 0)
    {
      break;
    }

    ++__s;
  }

  v8 = strlen(__s);
  v9 = malloc_type_malloc(v8 + 1, 0x100004077774924uLL);
  if (!v9)
  {
    return 0xFFFFFFFFLL;
  }

  v10 = v9;
  if (v8)
  {
    v11 = 0;
    while (1)
    {
      v12 = strchr(b64table_0, __s[v11]);
      if (!v12)
      {
        break;
      }

      v10[v11++] = v12 - b64table_0;
      if (v8 == v11)
      {
        goto LABEL_14;
      }
    }

    v8 = v11;
  }

LABEL_14:
  v14 = v10 - 3;
  v15 = (v8 - 1) + 1;
  v16 = v8;
  while (1)
  {
    v17 = &v14[v15];
    v18 = v14[v15 + 2];
    v19 = &v14[v16];
    v10[v16] = v18;
    if (v15 - 1 < 1)
    {
      v22 = v16;
      goto LABEL_23;
    }

    v19[3] = v18 | (v17[1] << 6);
    v20 = (v17[1] >> 2) & 0xF;
    v19[2] = v20;
    if (v15 == 2)
    {
      v22 = v16 - 1;
      goto LABEL_23;
    }

    v19[2] = v20 | (16 * v14[v15]);
    v21 = (v14[v15] >> 4) & 3;
    v14[v16 + 1] = (v14[v15] >> 4) & 3;
    if ((v15 - 1) < 3)
    {
      break;
    }

    v14[v16 + 1] = v21 | (4 * v14[v15 - 1]);
    v22 = v16 - 3;
    v14[v16] = 0;
    v16 -= 3;
    v15 -= 4;
    if (!v15)
    {
      goto LABEL_23;
    }
  }

  v22 = v16 - 2;
LABEL_23:
  v23 = &v10[v22];
  do
  {
    v25 = *v23++;
    v24 = v25;
    v26 = v22 + 1;
    if (v8 < v22)
    {
      break;
    }

    ++v22;
  }

  while (!v24);
  v13 = v8 - v26 + 2;
  memcpy(a1, v23 - 1, v13);
  free(v10);
  return v13;
}

size_t t_cstrfromb64(void **a1, char *__s)
{
  v4 = strlen(__s);
  cstr_set_length(a1, (6 * v4 + 7) >> 3);
  v5 = t_fromb64(*a1, __s);
  cstr_set_length(a1, v5);
  return v5;
}

_BYTE *t_tob64(_BYTE *result, unsigned __int8 *a2, unsigned int a3)
{
  v3 = 0;
  if (a3 % 3 == 1)
  {
    v5 = a2;
    goto LABEL_5;
  }

  v4 = 0;
  if (a3 % 3 == 2)
  {
    v5 = a2 + 1;
    v3 = *a2;
LABEL_5:
    v4 = *v5;
  }

  v6 = 0;
  v7 = 0;
  v8 = a3 - 3 * ((a3 * 0x5555555555555556uLL) >> 64);
  v9 = v8 + 1;
  v10 = &a2[v8 + 2];
  v11 = result;
  while (1)
  {
    if (v7)
    {
      v12 = 1;
    }

    else
    {
      v12 = v6 > 3;
    }

    v13 = v12;
    if (v13 == 1)
    {
      *v11++ = b64table_0[v6 >> 2];
    }

    v14 = (16 * (v6 & 3)) | (v3 >> 4);
    if (v14)
    {
      v15 = 1;
    }

    else
    {
      v15 = v13;
    }

    if (v15 == 1)
    {
      *v11++ = b64table_0[v14];
    }

    v16 = (4 * (v3 & 0xF)) | (v4 >> 6);
    if (v16)
    {
      v15 = 1;
    }

    if (v15 == 1)
    {
      *v11++ = b64table_0[v16];
      v17 = v4 & 0x3F;
LABEL_25:
      *v11++ = b64table_0[v17];
      v7 = 1;
      goto LABEL_26;
    }

    v17 = v4 & 0x3F;
    if ((v4 & 0x3F) != 0)
    {
      goto LABEL_25;
    }

    v7 = 0;
LABEL_26:
    if (v9 - 1 >= a3)
    {
      break;
    }

    v6 = *(v10 - 2);
    v3 = *(v10 - 1);
    v9 += 3;
    v18 = *v10;
    v10 += 3;
    v4 = v18;
  }

  *v11 = 0;
  return result;
}

_BYTE *t_tob64cstr(void *a1, unsigned __int8 *a2, unsigned int a3)
{
  cstr_set_length(a1, ((8 * a3) | 4) / 6 + 1);
  v6 = *a1;

  return t_tob64(v6, a2, a3);
}

uint64_t srp2945_client_init(uint64_t a1)
{
  *a1 = 12;
  *(a1 + 128) = SRP_CLIENT_default_param_verify_cb;
  v2 = malloc_type_malloc(0xE8uLL, 0x10000403E2B8178uLL);
  *(a1 + 104) = v2;
  CC_SHA1_Init(v2);
  CC_SHA1_Init((*(a1 + 104) + 96));
  return 0;
}

uint64_t srp2945_client_finish(uint64_t a1)
{
  v1 = *(a1 + 104);
  if (v1)
  {
    *(v1 + 224) = 0;
    *(v1 + 192) = 0u;
    *(v1 + 208) = 0u;
    *(v1 + 160) = 0u;
    *(v1 + 176) = 0u;
    *(v1 + 128) = 0u;
    *(v1 + 144) = 0u;
    *(v1 + 96) = 0u;
    *(v1 + 112) = 0u;
    *(v1 + 64) = 0u;
    *(v1 + 80) = 0u;
    *(v1 + 32) = 0u;
    *(v1 + 48) = 0u;
    *v1 = 0u;
    *(v1 + 16) = 0u;
    free(*(a1 + 104));
  }

  return 0;
}

uint64_t srp2945_client_params(uint64_t a1, const void *a2, CC_LONG a3, const void *a4, CC_LONG a5, const void *a6, CC_LONG a7)
{
  v19 = *MEMORY[0x277D85DE8];
  memset(&v16, 0, sizeof(v16));
  CC_SHA1_Init(&v16);
  CC_SHA1_Update(&v16, a2, a3);
  CC_SHA1_Final(md, &v16);
  CC_SHA1_Init(&v16);
  CC_SHA1_Update(&v16, a4, a5);
  CC_SHA1_Final(v17, &v16);
  for (i = 0; i != 20; ++i)
  {
    md[i] ^= v17[i];
  }

  CC_SHA1_Update(*(a1 + 104), md, 0x14u);
  CC_SHA1_Init(&v16);
  CC_SHA1_Update(&v16, **(a1 + 8), *(*(a1 + 8) + 8));
  CC_SHA1_Final(md, &v16);
  CC_SHA1_Update(*(a1 + 104), md, 0x14u);
  CC_SHA1_Update(*(a1 + 104), a6, a7);
  return 0;
}

uint64_t srp2945_client_auth(uint64_t a1, uint64_t a2, int a3)
{
  *(a1 + 48) = BigIntegerFromBytes(a2, a3);
  *(a1 + 40) = BigIntegerFromInt(0);
  BigIntegerModExp();
  return 0;
}

uint64_t srp2945_client_passwd(uint64_t a1, const void *a2, CC_LONG a3)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(&v7, 0, sizeof(v7));
  CC_SHA1_Init(&v7);
  CC_SHA1_Update(&v7, **(a1 + 8), *(*(a1 + 8) + 8));
  CC_SHA1_Update(&v7, ":", 1u);
  CC_SHA1_Update(&v7, a2, a3);
  CC_SHA1_Final(md, &v7);
  CC_SHA1_Init(&v7);
  CC_SHA1_Update(&v7, **(a1 + 32), *(*(a1 + 32) + 8));
  CC_SHA1_Update(&v7, md, 0x14u);
  CC_SHA1_Final(md, &v7);
  memset(&v7, 0, sizeof(v7));
  return SRP_set_authenticator(a1);
}

uint64_t srp2945_client_genpub(uint64_t a1, void **a2)
{
  BigIntegerBitLen(*(a1 + 16));
  SRP_get_secret_bits();
  v5 = v4 + 7;
  if (v4 < -7)
  {
    v5 = v4 + 14;
  }

  v6 = v5 >> 3;
  if (a2)
  {
    v7 = *a2;
    if (!*a2)
    {
      v7 = cstr_new();
      *a2 = v7;
    }
  }

  else
  {
    v7 = cstr_new();
  }

  v8 = BigIntegerBitLen(*(a1 + 16));
  v9 = v8 + 7;
  if (v8 < -7)
  {
    v9 = v8 + 14;
  }

  if (v6 > v9 >> 3)
  {
    v10 = BigIntegerBitLen(*(a1 + 16));
    v11 = v10 + 7;
    if (v10 < -7)
    {
      v11 = v10 + 14;
    }

    v6 = v11 >> 3;
  }

  v12 = BigIntegerBitLen(*(a1 + 16));
  v13 = v12 + 7;
  if (v12 < -7)
  {
    v13 = v12 + 14;
  }

  cstr_set_length(v7, v13 >> 3);
  t_random(*v7, v6);
  *(a1 + 64) = BigIntegerFromBytes(*v7, v6);
  BigIntegerBitLen(*(a1 + 16));
  BigIntegerAddInt();
  *(a1 + 56) = BigIntegerFromInt(0);
  BigIntegerModExp();
  BigIntegerToCstr(*(a1 + 56), v7);
  CC_SHA1_Update(*(a1 + 104), *v7, *(v7 + 2));
  CC_SHA1_Update((*(a1 + 104) + 96), *v7, *(v7 + 2));
  if (!a2)
  {
    cstr_clear_free(v7);
  }

  return 0;
}

void srp2945_client_key(uint64_t a1, uint64_t a2, const void *a3, CC_LONG a4)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(&v7, 0, sizeof(v7));
  CC_SHA1_Init(&v7);
  CC_SHA1_Update(&v7, a3, a4);
  CC_SHA1_Final(md, &v7);
  *(a1 + 72) = BigIntegerFromBytes(md, 4);
  BigIntegerCmpInt();
}

uint64_t sub_240F163D0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  if (a1)
  {
    CC_SHA1_Update(*(v30 + 104), v32, v31);
    BigIntegerFromBytes(v32, v31);
    BigIntegerCmp();
  }

  return 0xFFFFFFFFLL;
}

uint64_t srp2945_client_verify(uint64_t a1, uint64_t a2, int a3)
{
  v11 = *MEMORY[0x277D85DE8];
  CC_SHA1_Final(md, (*(a1 + 104) + 96));
  if (a3 == 20 && (*md == *a2 ? (v5 = v9 == *(a2 + 8)) : (v5 = 0), v5 ? (v6 = v10 == *(a2 + 16)) : (v6 = 0), v6))
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t srp2945_client_respond(uint64_t a1, unsigned __int8 ***a2)
{
  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = *a2;
  if (!*a2)
  {
    v4 = cstr_new();
    *a2 = v4;
  }

  cstr_set_length(v4, 20);
  CC_SHA1_Final(**a2, *(a1 + 104));
  CC_SHA1_Update((*(a1 + 104) + 96), **a2, *(*a2 + 2));
  CC_SHA1_Update((*(a1 + 104) + 96), (*(a1 + 104) + 192), 0x28u);
  return 0;
}

uint64_t srp2945_server_init(uint64_t a1)
{
  *a1 = 28;
  v2 = malloc_type_malloc(0x1BCuLL, 0x1000040E79818FDuLL);
  *(a1 + 104) = v2;
  CC_SHA1_Init(v2);
  CC_SHA1_Init((*(a1 + 104) + 96));
  CC_SHA1_Init((*(a1 + 104) + 192));
  CC_SHA1_Init((*(a1 + 104) + 288));
  return 0;
}

uint64_t srp2945_server_finish(uint64_t a1)
{
  v1 = *(a1 + 104);
  if (v1)
  {
    v1[25] = 0u;
    v1[26] = 0u;
    v1[23] = 0u;
    v1[24] = 0u;
    v1[21] = 0u;
    v1[22] = 0u;
    v1[19] = 0u;
    v1[20] = 0u;
    v1[17] = 0u;
    v1[18] = 0u;
    v1[15] = 0u;
    v1[16] = 0u;
    v1[13] = 0u;
    v1[14] = 0u;
    v1[11] = 0u;
    v1[12] = 0u;
    v1[9] = 0u;
    v1[10] = 0u;
    v1[7] = 0u;
    v1[8] = 0u;
    v1[5] = 0u;
    v1[6] = 0u;
    v1[3] = 0u;
    v1[4] = 0u;
    v1[1] = 0u;
    v1[2] = 0u;
    *v1 = 0u;
    *(v1 + 428) = 0u;
    free(*(a1 + 104));
  }

  return 0;
}

uint64_t srp2945_server_params(uint64_t a1, const void *a2, CC_LONG a3, const void *a4, CC_LONG a5, const void *a6, CC_LONG a7)
{
  v19 = *MEMORY[0x277D85DE8];
  memset(&v16, 0, sizeof(v16));
  CC_SHA1_Init(&v16);
  CC_SHA1_Update(&v16, a2, a3);
  CC_SHA1_Final(md, &v16);
  CC_SHA1_Init(&v16);
  CC_SHA1_Update(&v16, a4, a5);
  CC_SHA1_Final(v17, &v16);
  for (i = 0; i != 20; ++i)
  {
    md[i] ^= v17[i];
  }

  CC_SHA1_Update((*(a1 + 104) + 96), md, 0x14u);
  CC_SHA1_Init(&v16);
  CC_SHA1_Update(&v16, **(a1 + 8), *(*(a1 + 8) + 8));
  CC_SHA1_Final(md, &v16);
  CC_SHA1_Update((*(a1 + 104) + 96), md, 0x14u);
  CC_SHA1_Update((*(a1 + 104) + 96), a6, a7);
  return 0;
}

uint64_t srp2945_server_passwd(uint64_t a1, const void *a2, CC_LONG a3)
{
  v11 = *MEMORY[0x277D85DE8];
  memset(&v7, 0, sizeof(v7));
  CC_SHA1_Init(&v7);
  CC_SHA1_Update(&v7, **(a1 + 8), *(*(a1 + 8) + 8));
  CC_SHA1_Update(&v7, ":", 1u);
  CC_SHA1_Update(&v7, a2, a3);
  CC_SHA1_Final(md, &v7);
  CC_SHA1_Init(&v7);
  CC_SHA1_Update(&v7, **(a1 + 32), *(*(a1 + 32) + 8));
  CC_SHA1_Update(&v7, md, 0x14u);
  CC_SHA1_Final(md, &v7);
  memset(&v7, 0, sizeof(v7));
  *(a1 + 48) = BigIntegerFromBytes(md, 20);
  *md = 0;
  v9 = 0;
  v10 = 0;
  *(a1 + 40) = BigIntegerFromInt(0);
  BigIntegerModExp();
  return 0;
}

void srp2945_server_genpub(uint64_t *a1, void **a2)
{
  BigIntegerBitLen(a1[2]);
  SRP_get_secret_bits();
  v5 = v4 + 7;
  if (v4 < -7)
  {
    v5 = v4 + 14;
  }

  v6 = v5 >> 3;
  if (a2)
  {
    v7 = *a2;
    if (!*a2)
    {
      v7 = cstr_new();
      *a2 = v7;
    }
  }

  else
  {
    v7 = cstr_new();
  }

  v8 = BigIntegerBitLen(a1[2]);
  v9 = v8 + 7;
  if (v8 < -7)
  {
    v9 = v8 + 14;
  }

  if (v6 > v9 >> 3)
  {
    v10 = BigIntegerBitLen(a1[2]);
    v11 = v10 + 7;
    if (v10 < -7)
    {
      v11 = v10 + 14;
    }

    v6 = v11 >> 3;
  }

  v12 = BigIntegerBitLen(a1[2]);
  v13 = v12 + 7;
  if (v12 < -7)
  {
    v13 = v12 + 14;
  }

  cstr_set_length(v7, v13 >> 3);
  t_random(*v7, v6);
  a1[8] = BigIntegerFromBytes(*v7, v6);
  a1[7] = BigIntegerFromInt(0);
  BigIntegerModExp();
  BigIntegerAdd();
  BigIntegerCmp();
}

void srp2945_server_key(uint64_t a1, int a2, void *data, CC_LONG len)
{
  CC_SHA1_Update((*(a1 + 104) + 96), data, len);
  v7 = cstr_new();
  BigIntegerToCstr(*(a1 + 56), v7);
  CC_SHA1_Update((*(a1 + 104) + 96), *v7, *(v7 + 2));
  CC_SHA1_Update(*(a1 + 104), data, len);
  CC_SHA1_Update((*(a1 + 104) + 192), data, len);
  BigIntegerFromInt(0);
  BigIntegerModExp();
  BigIntegerFromBytes(data, len);
  BigIntegerFromInt(0);
  BigIntegerModMul();
  BigIntegerCmpInt();
}

uint64_t srp2945_server_verify(uint64_t a1, uint64_t a2, int a3)
{
  v17 = *MEMORY[0x277D85DE8];
  CC_SHA1_Final(md, (*(a1 + 104) + 288));
  if (a3 != 20)
  {
    CC_SHA1_Final(md, (*(a1 + 104) + 96));
    return 0xFFFFFFFFLL;
  }

  v7 = *md == *a2 && v15 == *(a2 + 8) && v16 == *(a2 + 16);
  v8 = *(a1 + 104);
  if (v7)
  {
    v12 = &v8[4].data[3];
    v11 = v8 + 2;
  }

  else
  {
    CC_SHA1_Final(md, v8 + 1);
    if (*md != *a2 || v15 != *(a2 + 8) || v16 != *(a2 + 16))
    {
      return 0xFFFFFFFFLL;
    }

    CC_SHA1_Update(*(a1 + 104), md, 0x14u);
    CC_SHA1_Update(*(a1 + 104), (*(a1 + 104) + 384), 0x28u);
    v11 = *(a1 + 104);
    v12 = &v11[4].data[3];
  }

  CC_SHA1_Final(v12, v11);
  return 0;
}

uint64_t srp2945_server_respond(uint64_t a1, uint64_t **a2)
{
  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = *a2;
  if (!*a2)
  {
    v4 = cstr_new();
    *a2 = v4;
  }

  cstr_set_length(v4, 20);
  result = 0;
  v6 = **a2;
  v7 = *(a1 + 104);
  v8 = (v7 + 424);
  LODWORD(v7) = *(v7 + 440);
  *v6 = *v8;
  *(v6 + 16) = v7;
  return result;
}